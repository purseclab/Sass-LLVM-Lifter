from s2lir.Operand import Operand
from utils import *
from llvmlite import ir as llvmir
class Instruction:
    def __init__(self, inst_dict, BB):
        self.addr = inst_dict["addr"]
        self.opcode = inst_dict["content"][0][0]
        self.modifiers = inst_dict["content"][0][1:]
        self.operands = [Operand(Ope, self) for Ope in inst_dict["content"][1]]
        self.condition_exe = inst_dict["content"][2]
        
        # Put Predicate part into Operand to parse it
        if self.condition_exe:
            self.operands.append(Operand(self.condition_exe[1:], self))

        # Initialized via parsing
        self.branch_target = None

        self.BB = BB

    def parse(self):
        for ope in self.operands:
            ope.parse()
        
        if self.opcode == "BRA":
            assert len(self.operands) <= 2
            self.branch_target = self.operands[0].branch_label

        # self.dump()

    def GetCmpOp(self, op):
        if (op == "EQ"):
            return "=="
        if (op == "NE"):
            return "!="
        if (op == "LT"):
            return "<"
        if (op == "LE"):
            return "<="
        if (op == "GT"):
            return ">"
        if (op == "GE"):
            return ">="

        return None
    
    def getRegs(self, Regs):
        # Collect registers used in instructions (In Reg, PReg and Ptr)
        for Operand in self.operands:
            if Operand.isReg or Operand.isPReg or Operand.isPtr:
                Regs[Operand.getIRRegName()] = Operand
        
    
    # Get def operand
    def GetDef(self):
        return self.operands[0]

    # Get use operand
    def GetUses(self):
        Uses = []
        for i in range(1, len(self.operands)):
            Uses.append(self.operands[i])

        return Uses

    # JP: Now, only update Reg Type
    # Check and update the use operand's type from the givenn operand
    def CheckAndUpdateUseType(self, Def):
        for i in range(1, len(self.operands)):
            CurrOperand = self.operands[i]
            if  CurrOperand.isReg and Def.isReg and CurrOperand.reg == Def.reg:
                CurrOperand.setTypeDesc(Def.typeDesc)
                return True

        return False
    
    # Check and update the def operand's type from the given operands
    def CheckAndUpdateDefType(self, Uses):
        Def = self.operands[0]
        for i in range(len(Uses)):
            CurrUse = Uses[i]
            if CurrUse.isReg and Def.isReg and CurrUse.reg == Def.reg: # CurrUse.Name == Def.Name:
                Def.setTypeDesc(CurrUse.typeDesc)
                return True

        return False

    # Directly resolve the type description, this is mainly working for binary operation
    def DirectlySolveType(self):
        TypeDesc = None

        #### Batch 1
        if self.opcode in ["FFMA", "FADD"]:
            TypeDesc = "Float32"
        
        elif self.opcode in ["IMAD", "SHL",  "SHR", "S2R"] :
            TypeDesc = "Int32"


        if TypeDesc != None:
            for operand in self.operands:
                operand.setTypeDesc(TypeDesc)
            return
        
        #### Batch 2
        if self.opcode == "FMNMX":
            TypeDesc = "Float32"


        if TypeDesc != None:
            for i in range(3):
                operand = self.operands[i]
                operand.setTypeDesc(TypeDesc)
            self.operands[3].setTypeDesc("Bool")
            return

        #### Batch 3
        if self.opcode == "ISETP":
            TypeDesc = "Float32"

        if TypeDesc != None:
            self.operands[0].setTypeDesc("Bool")
            self.operands[1].setTypeDesc("Bool")
            self.operands[2].setTypeDesc("Int32")
            self.operands[3].setTypeDesc("Int32")
            self.operands[4].setTypeDesc("Bool")

            return

        return
        # elif self.opcode == "MOV": # TODO: are you sure? 
        #     TypeDesc = "INT"
        # elif self.opcode == "LDG": # TODO: are you sure?
        #     TypeDesc = "INT"
        
        # for operand in self.operands:
        #     operand.setTypeDesc(TypeDesc)
        # return

        return True

    def PartialSolveType(self):
        if self.opcode == "LDG":
            TypeDesc = self.operands[0].getTypeDesc()
            if TypeDesc != None:
                self.operands[1].setTypeDesc(TypeDesc + "_PTR")
            else:
                TypeDesc = self.operands[1].getTypeDesc()
                if TypeDesc != None:
                    self.operands[0].setTypeDesc(TypeDesc.replace('_PTR', ""))
                else:
                    raise InvalidTypeException

        elif self.opcode == "STG":
            TypeDesc = self.operands[1].getTypeDesc()
            if TypeDesc != None:
                self.operands[0].setTypeDesc(TypeDesc + "_PTR")
            else:
                TypeDesc = self.operands[0].getTypeDesc()
                if TypeDesc != None:
                    self.operands[0].setTypeDesc(TypeDesc.replace('_PTR', ""))
                else:
                    raise InvalidTypeException
        elif self.opcode == 'IADD':
            TypeDesc = self.operands[0].getTypeDesc()
            if TypeDesc != None:
                self.operands[1].setTypeDesc("Int32") # The integer offset
                self.operands[2].setTypeDesc(TypeDesc)
        else:
            return False

        return True
    
    def isConditionExe(self):
        if self.condition_exe:
            return True
        else:
            return False

    def dump(self):
        print("Instruction: ", self.addr, self.opcode, self.modifiers, self.condition_exe)
        for ope in self.operands:
            ope.dump()
        if self.branch_target:
            print("Branch Target: ", self.branch_target)
        print("")

    def lift(self, IRBuilder, IRRegs, IRArgs, BlockMap, ExitBlock):

        if self.opcode == "EXIT":
            # Cmp = IRBuilder.icmp_signed(lifter.GetCmpOp(self.opcodes[1]), Val1, Val2, "cmp")
            if not IRBuilder.block.is_terminated:
                IRBuilder.branch(ExitBlock)
            return
        # IRBuilder.ret_void()

        if self.opcode == "NOP":
            return


        if self.opcode == "BRA":
            # Branch to the target
            dprint(BlockMap.keys())
            dprint(self.BB.func.labels2block)
            target_BB = self.BB.func.labels2block[self.branch_target]
            dprint(target_BB)
            IRBuilder.branch(BlockMap[target_BB])
            return 

        if self.opcode == "S2R":
            ResOp = self.operands[0]
            ValOp = self.operands[1]
            if ResOp.isReg and ValOp.SReg:
                # TODO: Fix it later;
                IRResOp = IRRegs[ResOp.getIRRegName()]
                # Call thread idx operation
                IRVal = IRBuilder.call(self.BB.func.module.GetThreadIdx, [], "ThreadIdx")
                # Store the result
                IRBuilder.store(IRVal, IRResOp)
            else:
                raise InvalidSyntaxException
            return

        if self.opcode == "MOV":
            ResOp = self.operands[0]
            ValOp = self.operands[1]
            if ResOp.isReg and ValOp.isReg:
                IRResOp = IRRegs[ResOp.getIRRegName()]
                IRValOp = IRRegs[ValOp.getIRRegName()]
                IRBuilder.store(IRValOp, IRResOp)
            elif ResOp.isReg and ValOp.isConst:
                IRResOp = IRRegs[ResOp.getIRRegName()]
                tmp = llvmir.Constant(IRResOp.type.pointee, ValOp.Value)
                IRBuilder.store(tmp, IRResOp)
            elif ResOp.isReg and ValOp.isArg:
                IRResOp = IRRegs[ResOp.getIRRegName()]
                # Find IR from IRArgs
                IRValOp = IRArgs[ValOp.offset_in_const_mem]
                tmp = IRBuilder.load(IRValOp)

                IRBuilder.store(tmp, IRResOp)
                # IRBuilder.store(IRArgs[ValOp.offset_in_const_mem], IRResOp)
            else:
                raise InvalidSyntaxException
            return

        if self.opcode == "LDG":
            ResOp = self.operands[0]
            PtrOp = self.operands[1]
            if ResOp.isReg and PtrOp.isPtr:
                IRResOp = IRRegs[ResOp.getIRRegName()]
                IRPtrOp = IRRegs[PtrOp.getIRRegName()]
                
                IRVal = PtrOp.IR_ValueFromPointer(IRBuilder, IRPtrOp, IRResOp.type.pointee)

                # IRVal = IRBuilder.load(IRPtrOp)
                IRBuilder.store(IRVal, IRResOp)
            else:
                raise InvalidSyntaxException
            return

        if self.opcode == "STG":
            ResOp = self.operands[1]
            PtrOp = self.operands[0]
            if ResOp.isReg and PtrOp.isPtr:
                IRResOp = IRRegs[ResOp.getIRRegName()]
                IRPtrOp = IRRegs[PtrOp.getIRRegName()]
                IRVal = IRBuilder.load(IRResOp)

                PtrOp.IR_ValueToPointer(IRBuilder, IRPtrOp, IRVal)
            else:
                raise InvalidSyntaxException
            return
        
        if self.opcode == "IMAD":
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]
            ValOp3 = self.operands[3]
            # IRBuilder.comment("IMAD Instruction")

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp3 = ValOp3.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ValOp1.isReg
            IRResOp = IRRegs[ResOp.getIRRegName()]

            tmp = IRBuilder.mul(IRValOp1, IRValOp2, "mul")
            tmp = IRBuilder.add(tmp, IRValOp3, "add")
            IRBuilder.store(tmp, IRResOp)

            return
        
        if self.opcode == "ISETP":
            # https://stackoverflow.com/questions/19357452/cuda-assembly-instructions
            ResOp = self.operands[0]
            PReg1 = self.operands[1]
            ValOp1 = self.operands[2]
            ValOp2 = self.operands[3]
            PReg2 = self.operands[4]

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            

            assert ResOp.isPReg and PReg1.isPReg and PReg2.isPReg
        

            IRResOp = IRRegs[ResOp.getIRRegName()]
            IRPReg1 = IRRegs[PReg1.getIRRegName()]
            # IRPReg2 = IRRegs[PReg2.getIRRegName()]

            IRPreg1Val = IRBuilder.load(IRPReg1)
            # IRPreg2Val = IRBuilder.load(IRPReg2)

            cmp_op = self.GetCmpOp(self.modifiers[0])
            if cmp_op is None:
                raise InvalidSyntaxException

            tmp = IRBuilder.icmp_signed(cmp_op, IRValOp1, IRValOp2, "cmp")

            if self.modifiers[1] == "AND":
                tmp = IRBuilder.and_(tmp, IRPreg1Val)
            else:
                raise NotImplementedError
        
            IRBuilder.store(tmp, IRResOp)

            return
        
        if self.opcode == "FMNMX":
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]
            PReg = self.operands[3]

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRPreg = PReg.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg and PReg.isPReg
            IRResOp = IRRegs[ResOp.getIRRegName()]

            # TODO: use _ordered or unordered?
            min = IRBuilder.select(
                IRBuilder.fcmp_ordered('<', IRValOp1, IRValOp2),
                IRValOp1,
                IRValOp2,
                "fmnmx_min"
            )
            max = IRBuilder.select(
                IRBuilder.fcmp_ordered('>', IRValOp1, IRValOp2),
                IRValOp1,
                IRValOp2,
                "fmnmx_max"
            )

            # https://forums.developer.nvidia.com/t/ampere-sass-annotation/176758
            tmp = IRBuilder.select(IRPreg, min, max, "fmnmx_final")
            IRBuilder.store(tmp, IRResOp)

            return
            
    
