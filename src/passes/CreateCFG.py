from s2lir.Instruction import Instruction
from s2lir.Basicblock import BasicBlock
import copy
from utils import *

import typing

if typing.TYPE_CHECKING:
    from s2lir.Function import Function

class CFG:
    def __init__(self, func):
        self.func: Function = func
        
        # self.entry_point: BasicBlock = self.func.blocks[0]
        self.return_point: BasicBlock = BasicBlock({"label": f"ExitBlock_{self.func.name}", "instructions": []}, self.func) # note, rn it's just properly set up for internal function
        
        self.__apply()

    def __apply(self):
        '''
        Connect ajacent BBs or Branches.
            Here we only parse the final instruction of a Basic Block, it has three possibilities:
                (1) Unconditional Branch, e.g., BRA `(.L_x_10)`
                (2) Conditional Branch, e.g., @P2 BRA `(.L_x_10)`
                (3) Conditional Execution, e.g., @P1 FMNMX R11, R11, R4, !PT
                (4) Normal instructions, e.g. MOV R2, 0x4
        '''
        
        # TODO check if there's pred/succ connection between gru's func and the internal func. This would probably just affect the reachingdefinition analysis and type analysis, so not fixing atm
        
        # Handle (1), (2) and (4)
        BBs = self.func.blocks
        BB_i_end = len(BBs)
        BB_i = 0
        while BB_i < BB_i_end: # so that we can manipulate BBs and self.func.blocks during iteration
            BB = BBs[BB_i]
            assert len(BB.instructions) > 0
            final_inst = BB.instructions[-1]

            # Case (1)
            if final_inst.isBranch() and not final_inst.isConditionExpr():
                # Unconditional Branch
                targetBB = final_inst.branch_target
                BB.succs.append(targetBB)
                targetBB.preds.append(BB)
            
            # Case (2)
            if final_inst.isBranch() and final_inst.isConditionExpr():
                # Conditional Branch
                targetBB = final_inst.branch_target
                BB.succs.append(targetBB)
                targetBB.preds.append(BB)

                if BB_i < len(BBs)-1:
                    nextBB = BBs[BB_i+1]
                    BB.succs.append(nextBB)
                    nextBB.preds.append(BB)

            # case (4)
            if not final_inst.isBranch() and not final_inst.isConditionExpr():
                # Normal instructions
                if BB_i < len(BBs)-1:
                    nextBB = BBs[BB_i+1]
                    BB.succs.append(nextBB)
                    nextBB.preds.append(BB)
                    
            for i, ins in enumerate(BB.instructions):
                
                if ins.opcode == "RET":
                    if self.func.internal_func:
                        assert ins.branch_target is None
                        assert ins == BB.instructions[-1]
                        # point all the RET instructions to the next Exit BB
                        ins.branch_target = self.return_point
                        BB.succs.append(self.return_point)
                        self.return_point.preds.append(BB)
                        if self.func.returnBB is None:
                            self.func.returnBB = self.return_point
                        else:
                            assert self.func.returnBB == self.return_point
                        continue
                
                if ins.opcode == "CALL":
                    assert not ins.disabled
                    # if it's calling an internal function, we'll grab the internal function object
                    
                    internal_func_name = ins.operands[0].get_call_func_name_type()[0]
                    
                    internal_func = self.func.module.internal_functions[internal_func_name]
                    
                    
                    # we'll need to completely clone the BB blocks, instructions, and operands so that it doesnt affect reaching def analysis later (as well as other quirks)
                    # one of the implication is that we'll have ins.addr that doesnt make sense
                    internal_func_new : Function = internal_func.duplicate()
                    returnBlock = internal_func_new.returnBB
                    entryBlock = internal_func_new.blocks[0]
                    BBs_new = internal_func_new.blocks + [returnBlock]

                    # step 1: we need to split the basic block and insert the BBs of the internal function
                    
                    
                    if len(BB.instructions) == 1 or ins == final_inst:
                        # no splitting of BB required
                        for succ in BB.succs:
                            succ_preds_len = succ.preds
                            succ.preds = [p for p in succ.preds if p != BB] + [returnBlock]
                            assert succ_preds_len == len(succ.preds)
                        
                        returnBlock.succs = BB.succs
                        BB.succs = [entryBlock]
                        entryBlock.preds = [BB]
                        
                    else:
                        # split the current BB
                        
                        # case possible: CALL is the first instruction, CALL is the middle instruction
                        # but CALL will not be the last instruction or the only instruction
                        
                        
                        CALL_BB_name = BB.label + "_CALL_" + str(final_inst.addr)
                        CALL_BB = BasicBlock({"label": CALL_BB_name, "instructions": []}, self.func) # BB that contains the CALL instruction (after splitting, so CALL is the last instruction now)
                        CALL_BB.addr = final_inst.addr
                        
                        postCALL_BB_name = BB.label + "_postCALL_" +str(final_inst.addr)
                        postCALL_BB = BasicBlock({"label": postCALL_BB_name, "instructions": []}, self.func) # the remaining instruction after the CALL instruction from the original BB
                        postCALL_BB.addr = final_inst.addr
                        
                        
                        CALL_BB.instructions = BB.instructions[:i+1]
                        postCALL_BB.instructions = BB.instructions[i+1:]
                        
                        for call_inst in CALL_BB.instructions:
                            call_inst.BB = CALL_BB
                        
                        for post_call_inst in postCALL_BB.instructions:
                            post_call_inst.BB = postCALL_BB
                        
                        # I dont believe we need to call parse on these new BB but maybe thats not true
                        self.func.labels2block[postCALL_BB.label] = postCALL_BB
                        self.func.labels2block[CALL_BB.label] = CALL_BB
                        self.func.labels2block[BB.label] = None
                            
                        postCALL_BB.preds = [returnBlock]
                        postCALL_BB.succs = BB.succs
                        
                        for succ in BB.succs:
                            succ_preds_len = len(succ.preds)
                            succ.preds = [p for p in succ.preds if p != BB] + [postCALL_BB]
                            assert succ_preds_len == len(succ.preds)
                        
                        
                        CALL_BB.preds = BB.preds
                        CALL_BB.succs = [entryBlock]
                        entryBlock.preds = [CALL_BB]
                        returnBlock.succs = [postCALL_BB]
                        BBs[BB_i] = CALL_BB
                        BBs[BB_i+1:BB_i+1] = [postCALL_BB]
                    
                    for b in BBs_new:
                        b.func = self.func
                        self.func.labels2block[b.label] = b
                    
                    BBs[BB_i + 1:BB_i + 1] = BBs_new
                    self.func.blocks = BBs
                    
                    # step 2: add preds and succs to the entry and exit block of the internal function, as well as the surrounding BBs of the current function
                    # step 3: disable the CALL instruction
                    ins.disabled = True
                    
                    BB_i_end = len(BBs)
                    BB_i += len(BBs_new) + 1
                    
                    # TODO make sure that the BBs are added to the correct position for each cases, and they're splitted correctly with correct preds and succs?
                    # also need to make sure things like the RET branching are correct for each instance of the interal func invocation?
                
                    continue
            BB_i += 1
                    
                    
                    
        
        # TODO: need to add Exit block for internal function
        

        print("="*100)

        '''
        Handle Case (3).  We create a conditional BB, which looks like this:
            Original BB: [inst1, inst2, inst3, @inst4]
            Conditional BB: [@inst4, BRA ``(nextBB)]
            Next BB: [inst5, inst6, inst7]
        '''
        new_BBs = []
        for BB_i in range(len(BBs)):
            BB = BBs[BB_i]
            

            new_BBs.append(BB)
            
            if len(BB.instructions) == 0:
                continue
            
            final_inst = BB.instructions[-1]

            if not final_inst.isBranch() and final_inst.isConditionExpr():
                # Create conditional BB
                conditionalBB_name = BB.label + "_conditionalExpr_"+str(final_inst.addr)
                conditionalBB = BasicBlock({"label": conditionalBB_name, "instructions": []}, self.func)
                conditionalBB.addr = final_inst.addr

                # Create new inst without conditional_exe
                dprint(final_inst.addr, final_inst.content_dict)
                dprint("&"*100)
                inst = Instruction(final_inst.content_dict, conditionalBB)
                inst.condition_expr = ""
                inst.operands = inst.operands[:-1]
                
                assert inst.isConditionExpr()==False

                conditionalBB.instructions.append(inst)

                BB.succs.append(conditionalBB)
                conditionalBB.preds.append(BB)
                

                # If it has the following BB (and final_inst is not Exit Instruction), then connect the conditional BB and BB
                if BB_i < len(BBs)-1 and not final_inst.isExit():
                    nextBB = BBs[BB_i+1]

                    conditionalBB_to_next_BB = Instruction({"addr": final_inst.addr, "content": [["BRA"], ["`(%s)"%nextBB.label], ""]}, conditionalBB)
                    conditionalBB.instructions.append(conditionalBB_to_next_BB)

                    conditionalBB.succs.append(nextBB)
                    nextBB.preds.append(conditionalBB)
                
                # if final_inst.isExit():
                #     conditionalBB.instructions = conditionalBB.instructions[:1]

                BB.func.labels2block[conditionalBB.label] = conditionalBB
                conditionalBB.parse()
                new_BBs.append(conditionalBB)
            
            

        # keep the New Basic Block List
        self.func.blocks = new_BBs