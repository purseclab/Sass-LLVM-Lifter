"""
Control Flow Graph (CFG) Construction Module.

This module provides the `CFG` class, which connects adjacent basic blocks and
resolves SASS branch instructions to build a complete control flow graph for a function.
"""
from s2lir.Instruction import Instruction
from s2lir.Basicblock import BasicBlock
import copy
from utils import *

import typing

if typing.TYPE_CHECKING:
    from s2lir.Function import Function

class CFG:
    """
    Constructs the Control Flow Graph for a given SASS function.
    """
    def __init__(self, func):
        """
        Initializes the CFG constructor and triggers the graph building process.
        
        Args:
            func (Function.Function): The function IR object.
        """
        self.func: Function = func
        
        # self.entry_point: BasicBlock = self.func.blocks[0]
        self.return_point: BasicBlock = BasicBlock({"label": f"ExitBlock_{self.func.name}", "instructions": []}, self.func) # note, rn it's just properly set up for internal function
        
        self.__apply()

    def __apply(self):
        """
        Connects adjacent Basic Blocks or Branches.
        
        Parses the final instruction of a Basic Block, handling:
            (1) Unconditional Branch, e.g., BRA `(.L_x_10)`
            (2) Conditional Branch, e.g., @P2 BRA `(.L_x_10)`
            (3) Conditional Execution, e.g., @P1 FMNMX R11, R11, R4, !PT
            (4) Normal instructions, e.g. MOV R2, 0x4
        """
        
        # Note: Check if there's pred/succ connection between gru's func and the internal func. This would probably just affect the reachingdefinition analysis and type analysis, so not fixing atm
        
        BBs = self.func.blocks
        BB_i_end = len(BBs)
        BB_i = 0
        while BB_i < BB_i_end:
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
                        # Direct all RET instructions to the target Exit BB
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
                    # Fetch the internal function object for the CALL
                    
                    internal_func_name = ins.operands[0].get_call_func_name_type()[0]
                    
                    internal_func = self.func.module.internal_functions[internal_func_name]
                    
                    
                    # Deep clone blocks, instructions, and operands to isolate reaching def analysis.
                    # Note: Cloned instructions retain old addresses which may not reflect real offsets.
                    internal_func_new : Function = internal_func.duplicate()
                    returnBlock = internal_func_new.returnBB
                    entryBlock = internal_func_new.blocks[0]
                    BBs_new = internal_func_new.blocks + [returnBlock]

                    # Step 1: Split the basic block and splice the internal function's BBs
                    
                    
                    if len(BB.instructions) == 1 or ins == final_inst:
                        # No BB splitting required
                        for succ in BB.succs:
                            succ_preds_len = succ.preds
                            succ.preds = [p for p in succ.preds if p != BB] + [returnBlock]
                            assert succ_preds_len == len(succ.preds)
                        
                        returnBlock.succs = BB.succs
                        BB.succs = [entryBlock]
                        entryBlock.preds = [BB]
                        
                    else:
                        # Split the current BB.
                        
                        # Possible scenarios: CALL is first or in the middle.
                        # It will not be the last or only instruction here.
                        
                        
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
                        
                        # Re-parsing newly generated blocks is currently bypassed as unnecessary
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
                    
                    # Step 2: Establish preds/succs across function boundaries.
                    # Step 3: Disable the original CALL instruction.
                    ins.disabled = True
                    
                    BB_i_end = len(BBs)
                    BB_i += len(BBs_new) + 1
                    
                    # Note: Make sure that the BBs are added to the correct position for each cases, and they're splitted correctly with correct preds and succs?
                    # Ensure accurate branch linkages for RET instances across internal function invocations.
                
                    continue
            BB_i += 1
                    
                    
                    
        
        # Note: need to add Exit block for internal function
        

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
                

                # Given subsequent BBs (and no existing Exit), link the conditional BB to the block
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
            
            

        # Apply updated block layout
        self.func.blocks = new_BBs