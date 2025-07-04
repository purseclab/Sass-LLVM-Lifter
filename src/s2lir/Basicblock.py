from s2lir.Instruction import Instruction, Operand
from utils import *
from llvmlite import ir as llvmir
import typing
if typing.TYPE_CHECKING:
    from s2lir.Function import Function

class BasicBlock:
    def __init__(self, BB_dict, func):
        # The address of the start of this basic block
        self.label = BB_dict['label']
        # Instruction list
        self.instructions : typing.List[Instruction] = [Instruction(inst, self) for inst in BB_dict['instructions']]
        # Predecessor
        self.preds : typing.List[BasicBlock] = []
        # Successors
        self.succs : typing.List[BasicBlock] = []
        # Addr
        self.addr = 0

        # To parent function
        self.func : 'Function' = func

    def __str__(self):
        return f"BasicBlock {self.label}\n"+ '\n'.join([str(i) for i in self.instructions])
    
    def parse(self):
        for inst in self.instructions:
            inst.parse()

    # Collect registers with type
    def GetRegs(self, Regs : dict[str, Operand]):
        # e.g. in Regs: 'R1_NOTYPE': <s2lir.Operand.Operand object at 0x73718d1b4df0>
        for Inst in self.instructions:
            Inst.getRegs(Regs)


    def lift(self, IRBuilder, IRRegs, IRArgs, BlockMap, IRFunc, ExitBlock):
        dprint("^"*100)
        dprint(self.addr)
        dprint(self.label)
        dprint("BB Len",len(self.instructions))
        dprint([ x.addr for x in self.instructions])
        dprint([ x.opcode for x in self.instructions])
        dprint([ [str(op) for op in x.operands] for x in self.instructions])
        dprint([ x.isConditionExpr() for x in self.instructions])
        dprint("^"*100)

        for i in range(len(self.instructions)):
            # After creating CFG, all the branches or conditional branches will only be the final one
            Inst = self.instructions[i]
            IRBuilder.comment(str(Inst))
            if i == len(self.instructions) -1 and (Inst.isBranch() or Inst.isConditionExpr()):
                if Inst.isBranch() and not Inst.isConditionExpr():
                    # Unconditional Branch
                    targetBB = self.func.labels2block[Inst.branch_target]
                    dprint(Inst.addr)
                    dprint(targetBB.label)
                    IRBuilder.branch(BlockMap[targetBB])
                elif Inst.isConditionExpr():

                    P = Inst.operands[-1]
                    PredReg = IRRegs[P.getIRRegName()] # predicate registers, e.g. P0
                    # Fetch the content from PredReg
                    PredReg = IRBuilder.inttoptr(PredReg, llvmir.PointerType(llvmir.IntType(1)))
                    PredReg = IRBuilder.load(PredReg)

                    if P.preg_not:
                        # In IR, compare the value in PredReg with 0
                        PredRegVal = IRBuilder.icmp_signed("!=", PredReg, llvmir.Constant(llvmir.IntType(1), 1))
                    else:
                        PredRegVal = IRBuilder.icmp_signed("==", PredReg, llvmir.Constant(llvmir.IntType(1), 1))

                    # Conditional Branch
                    if Inst.isBranch():
                        targetBB = self.func.labels2block[Inst.branch_target]

                        # If self BB is the last one, jump to ExitBlock, else jump to NextBB
                        if self == self.func.blocks[-1]:
                            IRBuilder.cbranch(PredRegVal, BlockMap[targetBB], ExitBlock)
                        else:
                            nextBB = self.func.blocks[self.func.blocks.index(self)+1]
                            IRBuilder.cbranch(PredRegVal, BlockMap[targetBB], BlockMap[nextBB])
                    else:  # Conditional Execution
                        ConditionalBB = self.func.blocks[self.func.blocks.index(self)+1]

                        # If the conditional BB is the last one, then jump to ExitBlock, else jump to the next BB
                        if ConditionalBB == self.func.blocks[-1]:
                            IRBuilder.cbranch(PredRegVal, BlockMap[ConditionalBB], ExitBlock)
                        else:
                            nextBB = self.func.blocks[self.func.blocks.index(ConditionalBB)+1]
                            IRBuilder.cbranch(PredRegVal, BlockMap[ConditionalBB], BlockMap[nextBB])

                        # # if PredRegVal then Add Inst, else skip this instruction
                        # with IRBuilder.if_then(PredRegVal):
                        #     Inst.lift(IRBuilder, IRRegs, IRArgs, BlockMap, ExitBlock)

            else:
                if len(self.instructions) > 1  and  i < len(self.instructions) -1 and (Inst.isBranch() or Inst.isConditionExpr()):
                    dprint([ x.addr for x in self.instructions])
                    dprint(self.label)
                    dprint("%"*100)
                    assert False, "Branch should be the last instruction in the block"
                else:
                    Inst.lift(IRBuilder, IRRegs, IRArgs, BlockMap, ExitBlock)