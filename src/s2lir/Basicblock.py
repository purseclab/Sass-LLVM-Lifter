"""
BasicBlock Module.

Represents a basic block of SASS instructions, providing methods for
parsing, tracking predecessors/successors, and lifting instructions to LLVM IR.
"""
import re
from s2lir.Instruction import Instruction, Operand
from utils import *
from llvmlite import ir as llvmir
import typing
if typing.TYPE_CHECKING:
    from s2lir.Function import Function

class BasicBlock:
    """
    Constructs and manages a fundamental block of linearly executed SASS instructions.
    Contains logic for iterating through its instructions during the lifting process.
    """
    def __init__(self, BB_dict, func):
        """
        Args:
            BB_dict (dict): Dictionary specifying label and instructions.
            func (Function.Function): The function IR object this block belongs to.
        """
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

    def updateName(self, rev):
        pattern = r"^(.*?)(\.\.\.\d+)?$"
        if match := re.search(pattern, self.label):
            name = match.group(1)
            num = match.group(2)
            if num:
                assert rev is None
                self.label = name
                return self.label
            
            self.label = name + "..." + str(rev)
            return self.label
            
        else:
            print(self.label)
            print(match)
            raise InvalidSyntaxException
            
        return None
        

    def lift(self, IRBuilder: llvmir.IRBuilder, IRRegs: dict[str, llvmir.instructions.AllocaInstr], IRArgs: dict[int, llvmir.values.Argument], BlockMap: dict ['BasicBlock', llvmir.values.Block], IRFunc: llvmir.values.Function, ExitBlock: llvmir.values.Block, nextBlock: "BasicBlock"):
        """
        Lifts the basic block and its instructions into LLVM IR by branching to
        successors or conditionally executing instructions.
        """
        dprint("^"*100)
        dprint(self.addr)
        dprint(self.label)
        dprint("BB Len",len(self.instructions))
        dprint([ x.addr for x in self.instructions])
        dprint([ x.opcode for x in self.instructions])
        dprint([ [str(op) for op in x.operands] for x in self.instructions])
        dprint([ x.isConditionExpr() for x in self.instructions])
        dprint("^"*100)

        if len(self.instructions) == 0:
            if not IRBuilder.block.is_terminated:
                assert nextBlock is not None
                nextIRBlock: llvmir.values.Block = BlockMap[nextBlock]
                IRBuilder.branch(nextIRBlock)
        
        for i in range(len(self.instructions)):
            # After creating CFG, all the branches or conditional branches will only be the final one
            Inst = self.instructions[i]
            IRBuilder.comment(str(Inst))
            if i == len(self.instructions) -1 and (Inst.isBranch() or Inst.isConditionExpr()):
                if Inst.isBranch() and not Inst.isConditionExpr():
                    # Unconditional Branch, e.g. BRA `(.L_x_4_split_0x1200) 
                    assert len(Inst.operands) == 1 # we might encounter case like "BRA P0, `branch_target" in the future, where the branch target is conditioned on the first operand being true
                    targetBB = Inst.branch_target
                    dprint(Inst.addr)
                    dprint(targetBB.label)
                    IRBuilder.branch(BlockMap[targetBB])
                elif Inst.isConditionExpr():
                    # e.g. @P0 BRA `(.L_x_4_split_0x1200); or it could also be just conditional execution, doesn't have to just be BRA
                    P = Inst.operands[-1]
                    PredReg = IRRegs[P.getRegName()]
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
                        if len(Inst.operands) == 3:
                            # e.g. @P0 BRA P1, `(.L_x_4_split_0x1200)
                            # we'll AND the two PredRegVal together before deciding whether to take the branch
                            P2 = Inst.operands[0]
                            PredRegVal2 = P2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
                            PredRegVal = IRBuilder.and_(PredRegVal, PredRegVal2)
                            
                        
                        targetBB = Inst.branch_target

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



            else:
                if len(self.instructions) > 1  and  i < len(self.instructions) -1 and (Inst.isBranch() or Inst.isConditionExpr()):
                    dprint([ x.addr for x in self.instructions])
                    dprint(self.label)
                    dprint("%"*100)
                    assert False, "Branch should be the last instruction in the block"
                else:
                    Inst.lift(IRBuilder, IRRegs, IRArgs, BlockMap, ExitBlock)
                    if i == len(self.instructions) - 1:
                        assert not (Inst.isBranch() or Inst.isConditionExpr())
                        # LLVM IR is okay with fallthrough from one label to the next label, but llc would require you to have a "br label %.L_x_..." instruction, otherwise it'd complain that "error: expected instruction opcode"
                        if not IRBuilder.block.is_terminated:
                            assert nextBlock is not None
                            nextIRBlock: llvmir.values.Block = BlockMap[nextBlock]
                            IRBuilder.branch(nextIRBlock)