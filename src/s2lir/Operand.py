from s2lir import *
from utils import *
from llvmlite import ir as llvmir
import re

# Append R0 to R255
SM_75_Reg_Set =  [f"R{i}" for i in range(256)]
SM_75_Reg_Set.append(f"RZ")

# Append UR0 to U127
SM_75_UReg_Set = [f"UR{i}" for i in range(128)]
SM_75_UReg_Set.append(f"URZ")

# Note: RZ and URZ will be replaced to 0

# P0-P7, UP0-UP7, PT, UPT
SM_75_Predicate_Reg_Set = [f"P{i}" for i in range(8)]
SM_75_Predicate_Reg_Set.append(f"PT")
SM_75_Predicate_Reg_Set.extend([f"UP{i}" for i in range(8)])
SM_75_Predicate_Reg_Set.append(f"UPT")


# Thread Indexing
SM_75_SepcialReg = ["SR_TID.X", "SR_TID.Y", "SR_TID.Z", "SR_CTAID.X", "SR_CTAID.Y", "SR_CTAID.Z"]

COnSTANT_MEMORY="c[0x0]"

tmp_cnt = 0

class Operand:

    def __init__(self, OriginalContent, ins):
        self.OriginalContent = OriginalContent

        # Register
        self.isReg = False
        self.reg = None
        self.reg_abs = False
        self.reg_neg = False

        # Predicate Reg
        self.isPReg = False
        # self.preg = None
        self.preg_not = False

        # Special Registers
        self.SReg = False
        # self.sreg = None

        # Const
        self.isConst = False
        self.Value = 0

        # Argument from Constant Memory
        self.isArg = False
        self.offset_in_const_mem  = 0
        self.arg_neg = False
        self.arg_abs = False

        # Pointer
        self.isPtr = False
        self.ptr_offset = 0
        # self.ptr_reg = None
        self.ptr_neg = False
        self.ptr_abs = False

        # Branch Label
        self.isLabel = False
        self.branch_label = ""

        # Type Description
        self.typeDesc = "NOTYPE"
        self.IRType = None
        self.IRRegName = None

        # Father Pointer
        self.ins = ins

    def IR_ValueFromPointer(self, IRBuilder, IRPtrOp, PinterType):

        # Fetch Value from IRPtrOp
        PtrAddr = IRBuilder.load(IRPtrOp)
        PtrAddr = IRBuilder.add(PtrAddr, llvmir.Constant(llvmir.IntType(32), self.ptr_offset))

        # Fetch value from PtrAddr e.g.,[R2]
        PtrAddr = IRBuilder.inttoptr(PtrAddr, llvmir.PointerType(PinterType), "for_LDG")
        IRVal = IRBuilder.load(PtrAddr)

        # Change it to Absolute value
        if self.ptr_abs:
            raise NotImplementedError

        if self.ptr_neg:
            IRVal  = IRBuilder.neg(IRVal)

        return IRVal
    
    def IR_ValueToPointer(self, IRBuilder, IRPtrOp, IRVal):
        # Fetch address from IRPtrOp
        PtrAddr = IRBuilder.load(IRPtrOp)
        PtrAddr = IRBuilder.add(PtrAddr, llvmir.Constant(llvmir.IntType(32), self.ptr_offset))

        # Convert address to pointer type
        PtrAddr = IRBuilder.inttoptr(PtrAddr, llvmir.PointerType(IRVal.type), "for_STG")

        # Handle absolute or negative value
        if self.ptr_abs or self.ptr_neg:
            raise InvalidSyntaxException

        # Store value to PtrAddr
        IRBuilder.store(IRVal, PtrAddr)
    
    def IR_FetchValue(self, IRBuilder, IRRegs, IRArgs):
        # TODO: assume that normal operand other than LDG and STG is not pointers. Check it later.
        if self.isReg:
            if self.reg == "RZ":
                return llvmir.Constant(llvmir.IntType(32), 0)
            if self.reg == "URZ":
                return llvmir.Constant(llvmir.IntType(32), 0)
            IRVal = IRRegs[self.getIRRegName()]
            IRVal = IRBuilder.load(IRVal)
            
            if self.reg_abs:
                raise NotImplementedError
            if self.reg_neg:
                IRVal = IRBuilder.neg(IRVal)

            return IRVal
        
        elif self.isArg:
            IRVal = IRArgs[self.offset_in_const_mem]
            if self.arg_abs:
                raise NotImplementedError
            if self.arg_neg:
                IRVal = IRBuilder.neg(IRVal)
            return IRVal

        elif self.isPReg:
            if self.reg == "PT":
                return llvmir.Constant(llvmir.IntType(1), 1)
            if self.reg == "UPT":
                return llvmir.Constant(llvmir.IntType(1), 1)
            IRVal = IRRegs[self.getIRRegName()]
            IRVal = IRBuilder.load(IRVal)

            if self.preg_not:
                IRVal = IRBuilder.neg(IRVal)    
            return IRVal
        
        elif self.isConst:
            return llvmir.Constant(self.getIRType(), self.Value)

        print(f"Unknown Operand {self}")
        raise NotImplementedError

    def parse(self):
        content = self.OriginalContent # an element from ["Basicblocks"]["instructions"][.]["content"][1], e.g. an element from ["Basicblocks"]["instructions"][.]["content"][1][0] == "R1" for test_code.json
        # dprint("Operand Content", content)

        # Don't handle .reuse optimization
        content =  content.replace(".reuse", "")

        # Branch Label:  @!P1 BRA `(.L_x_12) ;
        if content.startswith("`"):
            self.isLabel = True
            self.branch_label = content[2:-1] # .L_x_12
            return


        # c[0x][]: Here we need to parse the content between []
        if content.find("c[0x0]") != -1: 
            self.isArg = True
            self.offset_in_const_mem = int(content.split("c[0x0][0x")[1].split("]")[0], 16)
            if content.startswith("-"):
                self.arg_neg = True
                content = content[:1]
            if content.startswith("|"):
                assert content.endswith("|")
                self.arg_abs = True
            self.RegisterArg(self.offset_in_const_mem, self)
            return
        
        # [R1 + 0x2] = > R1 + 0x2
        if content.find("[") != -1 and content.find("]") != -1:
            self.isPtr = True
            content = content[1:-1]
            dprint(content)
            if content.find("+") != -1:
                self.ptr_offset = int(content.split("+")[1], 16)
                self.reg = content.split("+")[0]
                
            else:
                self.reg = content
            # assume there is no !R1 or -R1 case
            assert self.reg in SM_75_Reg_Set or self.reg in SM_75_UReg_Set
            return

        # Constant, -0x100 or 0x100
        if content.find("0x") != -1:
            self.isConst = True
            if content.startswith("-"):
                self.Value = -1 * int(content[1:], 16)
            else:
                self.Value = int(content, 16)
            return

        # Float Constant, 0.4 or -0.4
        pattern = r"^(-?\d+\.\d+(e[-+]\d+)?)$"
        match = re.match(pattern, content.strip())
        if match:
            result = match.group(1)
            self.isConst = True
            self.Value = float(content)
            self.IRType = llvmir.DoubleType() # needed otherwise IRFetchValue wont create the correct type of constant
            # self.typeDesc = "Float32"
            return
        
        # Decimal Constant, 123 or -123
        pattern = r"^(-*\d+)$"
        match = re.match(pattern, content.strip())
        if match:
            result = match.group(1)
            self.isConst = True
            self.Value = int(content)
            return
        
        # Special Registers
        if content in SM_75_SepcialReg:
            self.SReg = True
            self.reg = content
            return

        # Predicate Registers
        if (content.startswith("!") and content[1:] in SM_75_Predicate_Reg_Set) or content in SM_75_Predicate_Reg_Set:
            self.isPReg = True
            self.reg = content[1:] if content.startswith("!") else content
            self.preg_not = False if content.startswith("!") else True
            return

        # Common Registers R2 
        if content in SM_75_Reg_Set or content in SM_75_UReg_Set:
            self.isReg = True
            self.reg = content
            return

        # Common Registers |R2|
        if content[0] == "|" and content[-1]=="|":
            assert content[1:-1] in SM_75_Reg_Set or content[1:-1] in SM_75_UReg_Set
            self.isReg = True
            self.reg = content[1:-1]
            self.reg_abs = True
            return

        # Common Registers -R2, -UR2
        pattern = r"^-(U*R(\d+|Z))$" # sidenote: match.group(2) will get the inner bracket
        match = re.match(pattern, content)
        if match:
            result = match.group(1)
            dprint(result)
            # print(SM_75_UReg_Set)
            # print(SM_75_Reg_Set)
            assert result in SM_75_Reg_Set or result in SM_75_UReg_Set
            self.isReg = True
            self.reg = result
            self.reg_neg = True
            return

        assert "Unknown Operand: " + content

    def dump_text(self):
        return "Operand OriginalContent:  " + self.OriginalContent + "\n"
    
    def dump(self):
        # Dump Original Connent
        print(self.dump_text())
        
    def __str__(self):
        return f"{self.OriginalContent}"
    
    
    # Register argument with offset
    def RegisterArg(self, Offset, arg):
        self.ins.BB.func.ArgMap[Offset] = arg
        # self.ArgMap[Offset] = Arg
    
    # Set the type description for operand
    def setTypeDesc(self, Type):
        self.typeDesc = Type

    # Get the type description
    def getTypeDesc(self):
        return self.typeDesc
    
    def getIRType(self):
        if self.IRType == None:
            if (self.typeDesc == "Int32"):
                self.IRType = llvmir.IntType(32)
            elif (self.typeDesc == "Float32"):
                self.IRType = llvmir.FloatType()
            elif self.typeDesc == "Bool":
                self.IRType = llvmir.IntType(1)
            else:
                return llvmir.IntType(32)

        return self.IRType
    

    def getIRRegName(self):
        if self.IRRegName == None:
            if self.isReg or self.isPReg or self.isPtr:
                self.IRRegName = self.reg + "_" + self.typeDesc
            # elif self.isPReg:
            #     self.IRRegName = self.reg + "_" + self.typeDesc
            # elif self.isPtr:
            #     self.IRRegName = self.reg + "_" + self.typeDesc
            else:
                raise NameError("Unknown Operand Type")

        return self.IRRegName
    