from s2lir import *
from utils import *
from llvmlite import ir as llvmir
from s2lir.intrinsics import *
import re
import typing

if typing.TYPE_CHECKING:
    from s2lir.Instruction import Instruction

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


from pathlib import Path
import json
current_dir = Path(__file__).parent

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
        self.ins: Instruction = ins
        
        
        self.llvm_module = None
        
        config_path = current_dir / "../.." / "launch" / "config.json"
    
        with open(config_path.resolve(), 'r') as file:
            self.config = json.load(file)
            
            
        ############ Type/Liveness Analysis ############
        
        self.is_use = None
        self.is_def = None

    def IR_ValueFromPointer(self, IRBuilder, IRRegs, PinterType):

        # Fetch Value from IRPtrOp
        # PtrAddr = IRBuilder.load(IRPtrOp)
        PtrAddr = self.IRReg_Load(IRRegs, IRBuilder)
        
        PtrAddr = IRBuilder.ptrtoint(PtrAddr, llvmir.IntType(64))
        PtrAddr = IRBuilder.add(PtrAddr, llvmir.Constant(llvmir.IntType(64), self.ptr_offset))

        # Fetch value from PtrAddr e.g.,[R2]
        PtrAddr = IRBuilder.inttoptr(PtrAddr, llvmir.PointerType(PinterType), "for_LDG")
        IRVal = IRBuilder.load(PtrAddr)

        # Change it to Absolute value
        if self.ptr_abs:
            raise NotImplementedError

        if self.ptr_neg:
            IRVal  = IRBuilder.neg(IRVal)

        return IRVal
    
    def IR_ValueToPointer(self, IRBuilder, IRRegs, PtrOp, IRVal):
        # Fetch address from IRPtrOp
        # PtrAddr = IRBuilder.load(IRPtrOp)
        PtrAddr = PtrOp.IRReg_Load(IRRegs, IRBuilder)
        
        PtrAddr = IRBuilder.ptrtoint(PtrAddr, llvmir.IntType(64))
        PtrAddr = IRBuilder.add(PtrAddr, llvmir.Constant(llvmir.IntType(64), self.ptr_offset))

        # Convert address to pointer type
        PtrAddr = IRBuilder.inttoptr(PtrAddr, llvmir.PointerType(), "for_STG")

        # Handle absolute or negative value
        if self.ptr_abs or self.ptr_neg:
            raise InvalidSyntaxException

        # Store value to PtrAddr
        IRBuilder.store(IRVal, PtrAddr)
    
    def IR_FetchValue(self, IRBuilder, IRRegs, IRArgs):
        if self.llvm_module is None:
            self.llvm_module = self.ins.llvm_module
            assert self.llvm_module is not None
        
        # TODO: assume that normal operand other than LDG and STG is not pointers. Check it later.
        if self.isReg:
            if self.reg in ("RZ", "URZ"):
                if self.getTypeDesc() == "Float32":
                    return llvmir.Constant(llvmir.FloatType(), 0)
                elif self.getTypeDesc() == "Int32":
                    return llvmir.Constant(llvmir.IntType(32), 0)
                elif self.getTypeDesc() == "NOTYPE":
                    return llvmir.Constant(llvmir.IntType(32), 0)
                raise Exception(f"Invalid TypeDesc: {self.getTypeDesc()}")

            # IRVal = IRRegs[self.getIRRegName()]
            # IRVal = IRBuilder.load(IRVal)
            
            IRVal = self.IRReg_Load(IRRegs, IRBuilder)
            
            if self.reg_abs:
                if isinstance(self.getIRType(), llvmir.FloatType):
                    IRVal = IRBuilder.call(llvm_fabs(self.llvm_module), [IRVal], name="llvm_fabs_result")
                elif isinstance(self.getIRType(), llvmir.IntType):
                    # TODO setting 2nd parameter to be false arbitrarily, only affects result if INT_MIN is passed
                    IRVal = IRBuilder.call(llvm_abs(self.llvm_module), [IRVal, llvmir.Constant(llvmir.IntType(1), 0)], name="llvm_abs_result")
                else:
                    raise InvalidSyntaxException
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

    def IRReg_Load(self, IRRegs, IRBuilder):
        IRVal = None
        if self.isReg or self.isPtr:
            # note: [R38] isPtr, but not isReg.
            curRegName = self.getCurRegName()
            # assert curRegName != ""
            if curRegName == "":
                curRegName = self.getIRRegName()
            
            copylen = llvmir.Constant(llvmir.IntType(32), 4) # in bytes
            isvolatile = llvmir.Constant(llvmir.IntType(1), 0)
            IRRegNew = IRRegs[self.getIRRegName()]
            IRReg = IRRegs[curRegName] # AllocaInst is also a ptr
            
            # we cant just use IRBuilder.load because there might be type difference
            if curRegName != self.getIRRegName():
                # note: it seems like allocainstr is a pointertype since we previously are able to call builder.load on it, to be confirmed later
                IRBuilder.call(llvm_memcpy_i32(self.ins.llvm_module), [IRRegNew, IRReg, copylen, isvolatile], name="llvm_memcpy_i32")
                # print(IRRegNew.type)
                # print(IRReg.type)
                # print(type(IRRegNew.type)) # llvmlite.ir.types._TypedPointerType
                # print(type(IRReg.type)) # llvmlite.ir.types._TypedPointerType
                # # memcpy wont allow it if one of the type(.type) is PointerType and the other is _TypedPointerType, which means one is opaque pointer and the other isnt; dont know if it allows two opaque pointer; besides, IRBuilder.load wont allow opaque pointer and will complain "Load lacks type"
                # print(IRRegNew.type.pointee)
                # print(IRReg.type.pointee)
                # print(curRegName, self.getIRRegName())
                # if "NOTYPE" not in curRegName and "NOTYPE" not in self.getIRRegName():
                #     exit(1)
                IRReg = IRRegNew
            
            if self.isPtr:
                # we need to load the adjacent register, then r6.Val << 32 | r5.Val
                match = re.search(r"^(U?R)(\d+)$", self.getRegName())
                if match:
                    adjRegName = match.group(1)
                    adjRegNumber = int(match.group(2)) + 1
                    adjRegName = adjRegName + str(adjRegNumber)
                    adjIRRegName = self._getCurIRRegName(adjRegName)
                    
                    if adjIRRegName == "":
                        zero_IRReg = IRBuilder.alloca(llvmir.IntType(32), 1, "tmp_0") # i64* instead of ptr
                        IRBuilder.store(llvmir.Constant(llvmir.IntType(32), 0), zero_IRReg)
                        zero_IRReg = IRBuilder.bitcast(zero_IRReg, llvmir.PointerType()) # cast from i32* to ptr
                        # TODO store 0x0 into adj register
                        
                        adjIRReg = zero_IRReg
                    else:
                        adjIRReg = IRRegs[adjIRRegName]
                        print(adjRegName, adjIRRegName, str(adjIRReg.type))
                        if str(adjIRReg.type) == "ptr":
                            print("BRUH")
                        assert str(adjIRReg.type) != "ptr"
                        tmpPtr_IRReg = IRBuilder.alloca(llvmir.PointerType(), 1, "tmpPtr")
                        IRBuilder.call(llvm_memcpy_i32(self.ins.llvm_module), [tmpPtr_IRReg, adjIRReg, copylen, isvolatile], name="llvm_memcpy_i32")
                        adjIRReg = IRBuilder.bitcast(tmpPtr_IRReg, llvmir.PointerType()) # cast from ptr* to ptr
                    
                    PtrAddr = IRBuilder.ptrtoint(IRReg, llvmir.IntType(64))
                    PtrAddr = IRBuilder.add(PtrAddr, llvmir.Constant(llvmir.IntType(64), 0x4))
                    PtrAddr = IRBuilder.inttoptr(PtrAddr, llvmir.PointerType(), "for_STG")
                    IRReg = PtrAddr
            
                    print("1", adjIRReg.type is IRReg.type) # could be false even if str of the .type is the same, because there's also .type.pointee (which tells you what the pointer points under the hood), mainly is actually because TypedPointer vs Pointer
                    print("2", adjIRReg.type is IRBuilder.bitcast(IRReg, llvmir.IntType(32).as_pointer()).type)
                    print("3", adjIRReg.type)
                    print("4", IRReg.type)
                    print("5", adjIRReg.type.pointee)
                    print("6", type(adjIRReg.type))
                    print("7", type(IRReg.type))
                    print("cast from typed pointer to opaque pointer attempt. doesnt work.", type(IRBuilder.bitcast(adjIRReg, llvmir.PointerType()).type))
                    print("cast from opqaue pointer to typed pointer attempt. doesnt work.", type(IRBuilder.bitcast(IRReg, llvmir.IntType(32).as_pointer()).type))
                    print(type(IRBuilder.bitcast(IRBuilder.load(IRReg, typ=llvmir.IntType(32)), llvmir.PointerType()).type))
                    print(IRReg.type.pointee)
                    IRBuilder.call(llvm_memcpy_i32(self.ins.llvm_module), [IRReg, adjIRReg, copylen, isvolatile], name="llvm_memcpy_i32")
                else:
                    raise InvalidSyntaxException
            
            IRVal = IRBuilder.load(IRReg) # TODO: Confirm if this changes data layout
        return IRVal
    
    def IRReg_Store(self, IRRegs, IRBuilder, storeVal):
        if self.isReg:
            storeValTypeDesc = None
            if storeVal.type == llvmir.IntType(32):
                storeValTypeDesc = "Int32"
            elif storeVal.type == llvmir.FloatType():
                storeValTypeDesc = "Float32"
            curRegName = self.getOtherIRRegName(storeValTypeDesc)
            if curRegName not in IRRegs:
                IRRegs[curRegName] = IRBuilder.alloca(storeVal.type, 1, curRegName)
            IRReg = IRRegs[curRegName]
            # prevRegName = self.getCurRegName()
            IRBuilder.store(storeVal, IRReg) # TODO: Confirm if this changes data layout
            
            if curRegName != self.getIRRegName():
                curRegName = self.getIRRegName()
                IRRegNew = IRRegs[curRegName]
                copylen = llvmir.Constant(llvmir.IntType(32), 4) # in bytes
                isvolatile = llvmir.Constant(llvmir.IntType(1), 0)
                IRBuilder.call(llvm_memcpy_i32(self.ins.llvm_module), [IRRegNew, IRReg, copylen, isvolatile], name="llvm_memcpy_i32")
            
            # if curRegName != self.getCurRegName() and self.getCurRegName() != "":
            #     print(curRegName, self.getCurRegName(), "---")
            #     self.setCurRegName(curRegName)
            #     print(self.ins.BB.func.IRRegs_cur_status)
            #     exit(1)
            
            self.setCurRegName(curRegName)
            return self.getCurRegName() == curRegName
        return False
    
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
            
            if not self.config["allow_temp_behavior"]:
                self.IRType = llvmir.FloatType() # needed otherwise IRFetchValue wont create the correct type of constant
            # TODO: differentiate between float32 and 64 (doubletype)
            # self.typeDesc = "Float32"
            return
        
        # Decimal Constant, 123 or -123
        pattern = r"^(-?\d+)$"
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
        if self.IRRegName != None:
            # Reset the name to incorporate the new type
            self.IRRegName = None
            self.getIRRegName()

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
            elif self.typeDesc == "Void":
                self.IRType = llvmir.VoidType()
            elif "_PTR" in self.typeDesc:
                self.IRType = llvmir.PointerType()
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
    
    def getOtherIRRegName(self, targetType):
        assert targetType in ("Float32", "Int32")
        return self.reg + "_" + targetType
    
    def getRegName(self):
        return self.reg
    
    def getCurRegName(self):
        return self._getCurIRRegName(self.getRegName())
    
    def _getCurIRRegName(self, reg):
        return self.ins.BB.func.IRRegs_cur_status[reg]
    
    def setCurRegName(self, curRegName):
        self._setCurIRRegName(self.getRegName(), curRegName)

    def _setCurIRRegName(self, reg, curRegName):
        self.ins.BB.func.IRRegs_cur_status[reg] = curRegName
    
    def is_use_disqualifier(self):
        if self.isConst:
            return False
        if not self.isReg and not self.isPReg:
            return False
        return True
    
    def is_def_disqualifier(self):
        if self.isConst:
            return False
        if not self.isReg and not self.isPReg:
            return False
        return True