from s2lir.Instruction import Instruction
from s2lir.Basicblock import BasicBlock

class CFG:
    def __init__(self, func):
        self.func = func
        self.__apply()

    def __apply(self):
        '''
        Step 1: Connect ajacent BBs or Branches.
            Here we only parse the final instruction of a Basic Block, it has three possibilities:
                (1) Unconditional Branch, e.g., BRA `(.L_x_10)`
                (2) Conditional Branch, e.g., @P2 BRA `(.L_x_10)`
                (3) Conditional Execution, e.g., @P1 FMNMX R11, R11, R4, !PT
                (4) Normal instructions, e.g. MOV R2, 0x4
            Here, we only handle (1), (2) and (4), we put the handling of case (3) in later steps.
        '''
        return
        BBs = self.func.blocks
        for BB_i in range(len(BBs)):
            BB = BBs[BB_i]
            for inst in BB.instructions:
                # Find the successors
                if inst.isBranch(): # Currently only BRA
                    targetBB = self.func.labels2block[inst.branch_target]
                    BB.succs.append(targetBB)
                    targetBB.preds.append(BB)
                else:
                    # Find the next BB
                    nextBB = self.func.blocks[BB_i+1]
                    BB.succs.append(nextBB)
                    nextBB.preds.append(BB)
                # Find the predecessors
                # for
        print("="*100)
        return

        # Break every conditional execution
        BBs = self.func.blocks
        for BB in BBs:
            # Find the conditional execution
            for inst in BB.instructions: # TODO: change it to while loop
                # TODO: if it is the final instuction in the BB;
                if inst.isConditionExe():
                    conditionalBB_name = str(inst.addr)+"conditionalBB"
                    nextBB_name = str(inst.addr)+"nextBB"

                    # Create conditional BB
                    conditionalBB = BasicBlock({"label": conditionalBB_name, "instructions": []}, self.func)

                    Branch_to_next_BB = Instruction({"addr": inst.addr, "content": [["BRA"], ["`(%s)"%nextBB_name], "0x0"]}, conditionalBB)
                    Branch_to_next_BB.parse()

                    conditionalBB.instructions.append(inst)
                    conditionalBB.instructions.append(Branch_to_next_BB)

                    # Create Next BB
                    inst_index = BB.instructions.index(inst)
                    nextBB = BasicBlock({"label":  nextBB_name, "instructions": []}, self.func)
                    nextBB.instructions = BB.instructions[inst_index+1:]

                    BB_index = self.func.blocks.index(BB)
                    # Insert conditional BB & next BB
                    self.func.blocks.insert(BB_index+1, conditionalBB)
                    self.func.blocks.insert(BB_index+2, nextBB)

                    # Keep the instructions before the condition_exe ( also keep the condition_exe; but when lift it, only lift the conditonal part)
                    BB.instructions = BB.instructions[:inst_index+1]
                    # Should also add an conditional branch => when lift, just jump to the conditionalBB and the nextBB? ====> can put the target into BB.instructions.

                    # TODO: next round; 


