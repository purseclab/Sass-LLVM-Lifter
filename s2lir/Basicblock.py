from s2lir.Instruction import Instruction, Operand
from utils import *
from llvmlite import ir as llvmir
class BasicBlock:
    def __init__(self, BB_dict, func):
        # The address of the start of this basic block
        self.label = BB_dict['label']
        # Instruction list
        self.instructions = [Instruction(inst, self) for inst in BB_dict['instructions']]
        # Predecessor
        self.preds = []
        # Successors
        self.succs = []
        # Addr
        self.addr = 0

        # To parent function
        self.func = func

    def parse(self):
        for inst in self.instructions:
            inst.parse()

    # Collect registers with type
    def GetRegs(self, Regs):
        for Inst in self.instructions:
            Inst.getRegs(Regs)


    def lift(self, IRBuilder, IRRegs, IRArgs, BlockMap, IRFunc, ExitBlock):

        for i in range(len(self.instructions)):
            # TODO: Lift Branch Later
            Inst = self.instructions[i]

            if Inst.isConditionExe():
                P = Inst.operands[-1]

                PredReg = IRRegs[P.getIRRegName()]
                # Fetch the content from PredReg
                PredReg = IRBuilder.inttoptr(PredReg, llvmir.PointerType(llvmir.IntType(1)))
                PredReg = IRBuilder.load(PredReg)

                if P.preg_not:
                    # In IR, compare the value in PredReg with 0
                    PredRegVal = IRBuilder.icmp_signed("!=", PredReg, llvmir.Constant(llvmir.IntType(1), 1))
                else: # TODO: WJP: Check correctness
                    PredRegVal = IRBuilder.icmp_signed("==", PredReg, llvmir.Constant(llvmir.IntType(1), 1))

                # if PredRegVal then Add Inst, else skip this instruction
                with IRBuilder.if_then(PredRegVal):
                    Inst.lift(IRBuilder, IRRegs, IRArgs, BlockMap, ExitBlock)

            else:
                Inst.lift(IRBuilder, IRRegs, IRArgs, BlockMap, ExitBlock)

