from s2lir.Instruction import Instruction
from s2lir.Basicblock import BasicBlock
import copy
from utils import *

class CFG:
    def __init__(self, func):
        self.func = func
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
        # Handle (1), (2) and (4)
        BBs = self.func.blocks
        for BB_i in range(len(BBs)):
            BB = BBs[BB_i]
            assert len(BB.instructions) > 0
            final_inst = BB.instructions[-1]

            # Case (1)
            if final_inst.isBranch() and not final_inst.isConditionExpr():
                # Unconditional Branch
                targetBB = self.func.labels2block[final_inst.branch_target]
                BB.succs.append(targetBB)
                targetBB.preds.append(BB)
            
            # Case (2)
            if final_inst.isBranch() and final_inst.isConditionExpr():
                # Conditional Branch
                targetBB = self.func.labels2block[final_inst.branch_target]
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
            assert len(BB.instructions) > 0
            final_inst = BB.instructions[-1]

            new_BBs.append(BB)

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