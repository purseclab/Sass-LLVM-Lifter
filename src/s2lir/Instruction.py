import typing
from s2lir.Operand import Operand
# from s2lir.Basicblock import BasicBlock
if typing.TYPE_CHECKING:
    from s2lir.Basicblock import BasicBlock
from utils import *
from llvmlite import ir as llvmir
from pathlib import Path
import json
from s2lir.intrinsics import *
from s2lir.helper import *
import typing
import re
import os

current_dir = Path(__file__).parent

SM_75_UReg_Set = [f"UR{i}" for i in range(128)]
SM_75_UReg_Set.append(f"URZ")

# LLVM address space map used by the lifter (adjust if necessary)
ADDRSPACE_GLOBAL = 1
ADDRSPACE_SHARED = 3
ADDRSPACE_LOCAL = 5

class Instruction:
    def __init__(self, inst_dict, BB):
        self.addr = inst_dict["addr"]
        self.opcode = inst_dict["content"][0][0]
        self.modifiers = inst_dict["content"][0][1:]
        self.operands: typing.List[Operand] = [Operand(Ope, self) for Ope in inst_dict["content"][1]]
        self.condition_expr = inst_dict["content"][2]
        self.content_dict = inst_dict
        
        # Put Predicate part into Operand to parse it
        if self.condition_expr:
            self.operands.append(Operand(self.condition_expr[1:], self))

        # Initialized via parsing
        self.branch_target : BasicBlock = None

        self.BB: 'BasicBlock' = BB
        config_folder_name = os.environ.get('PARENT_FOLDER_NAME', 'launch')
        config_path = current_dir / "../.." / config_folder_name / "config.json"
    
        with open(config_path.resolve(), 'r') as file:
            self.config = json.load(file)
        
        self.llvm_module = None
        
        self.disabled = False
        

    def parse(self):
        for ope in self.operands:
            ope.parse()
        
        if self.opcode == "BRA":
            assert len(self.operands) <= 2
            self.branch_target = self.BB.func.labels2block[self.operands[0].branch_label]

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

        raise InvalidSyntaxException
    
    def getRegs(self, Regs : dict[str, Operand]):
        # Collect registers used in instructions (In Reg, PReg and Ptr)
        for Operand in self.operands:
            if (Operand.isReg or Operand.isPReg or Operand.isPtr) and not Operand.isConstMem:
                Regs[Operand.getIRRegName()] = Operand # this naming with getIRRegName is obsolete, but rn i dont think it serves an important role other than the Regs[Reg]

    # JP: Now, only update Reg Type
    # Check and update the use operand's type from the givenn operand
    def CheckAndUpdateUseType(self, Def: Operand):
        for i in range(1, len(self.operands)):
            CurrOperand = self.operands[i]
            if  CurrOperand.isReg and Def.isReg and CurrOperand.reg == Def.reg:
                CurrOperand.setTypeDesc(Def.typeDesc)
                return True

        return False
    
    # Check and update the def operand's type from the given operands
    def CheckAndUpdateDefType(self, Uses: typing.List[Operand]):
        Def = self.operands[0]
        for i in range(len(Uses)):
            CurrUse = Uses[i]
            if CurrUse.isReg and Def.isReg and CurrUse.reg == Def.reg: # CurrUse.Name == Def.Name:
                Def.setTypeDesc(CurrUse.typeDesc)
                return True

        return False
    
    def isConditionExpr(self):
        if self.condition_expr:
            # e.g. self.condition_expr = '@P0', related to inst_dict['content'][2]
            return True
        else:
            # e.g. self.condition_expr = ''
            return False
        
    def isBranch(self):
        if self.opcode == "BRA":
            return True
        return False
    
    def isExit(self):
        if self.opcode == "EXIT":
            return True
        return False

    def dump_text(self):
        text = f"Instruction: {self.addr} {self.opcode} {self.modifiers} {self.condition_expr}\n"
        
        for ope in self.operands:
            text += ope.dump_text()
        if self.branch_target:
            text += f"Branch Target:  {self.branch_target.label}"
        text += "\n"
        
        return text
        
    def dump(self):
        print(self.dump_text())
        
    def __str__(self):
        operands = [str(ope) for ope in self.operands]
        
        if len(self.modifiers) > 0:
            # modifiers list not empty
            new_opcode = '.'.join(([self.opcode] + self.modifiers))
        else:
            new_opcode = self.opcode
        
        if self.condition_expr:
            assert operands[-1] in self.condition_expr
            return f"{self.condition_expr} {new_opcode} {', '.join(operands[:-1])}" # the last operand always seems to be the self.condition_expr
        else:
            return f"{new_opcode} {', '.join(operands)}"

    def lift(self, IRBuilder: llvmir.IRBuilder, IRRegs: dict[str, llvmir.instructions.AllocaInstr], IRArgs: dict[int, llvmir.values.Argument], BlockMap: dict ['BasicBlock', llvmir.values.Block], ExitBlock: llvmir.values.Block):
        if self.llvm_module is None:
            # note we cannot setup self.llvm_module in init because llvmir.module is not created until the lift() in main.py
            self.llvm_module = self.BB.func.module.llvm_module
            assert self.llvm_module is not None
        
        # BB already undergo splitting inside Function.py before lifting process
        
        # changed to int so that we dont have to deal with differences such as 0x1 vs 0x001
        self.BB.func.sassAddr2Inst[int(self.addr, 16)] = self
        
        # generate_ir_comment(IRBuilder, self.dump_text())
        
        if self.disabled:
            return
        
        if self.opcode == "EXIT":
            if not IRBuilder.block.is_terminated:
                IRBuilder.branch(ExitBlock)
            return

        if self.opcode == "NOP":
            return

        # BRA is Handled in the BasicBlock.py
        if self.opcode == "BRA":
            raise InvalidSyntaxException
        
        if self.opcode == "BAR":
            assert len(self.modifiers) == 1
            if self.modifiers[0] == "SYNC":
                IRBuilder.call(nvvm_barrier0(self.llvm_module), [], name="nvvm_barrier0")
            else:
                raise NotImplementedError
            return

        if self.opcode == "S2R":
            ResOp = self.operands[0]
            ValOp = self.operands[1]
            
            assert len(self.operands) == 2
            
            if ResOp.isReg and ValOp.SReg:
                # TODO: Fix it later;
                # IRResOp = IRRegs[ResOp.getIRRegName()]
                
                if str(ValOp) == "SR_CTAID.X":
                    IRVal = IRBuilder.call(nvvm_ctaid_x(self.llvm_module), [], name="nvvm_ctaid_x")
                elif str(ValOp) == "SR_CTAID.Y":
                    IRVal = IRBuilder.call(nvvm_ctaid_y(self.llvm_module), [], name="nvvm_ctaid_y")
                elif str(ValOp) == "SR_CTAID.Z":
                    IRVal = IRBuilder.call(nvvm_ctaid_z(self.llvm_module), [], name="nvvm_ctaid_z")
                elif str(ValOp) == "SR_TID.X":
                    IRVal = IRBuilder.call(nvvm_threadidx_x(self.llvm_module), [], name="nvvm_threadidx_x")
                elif str(ValOp) == "SR_TID.Y":
                    IRVal = IRBuilder.call(nvvm_threadidx_y(self.llvm_module), [], name="nvvm_threadidx_y")
                elif str(ValOp) == "SR_TID.X":
                    IRVal = IRBuilder.call(nvvm_threadidx_z(self.llvm_module), [], name="nvvm_threadidx_z")
                else:
                    assert False
                    
                # Store the result
                # IRBuilder.store(IRVal, IRResOp)
                ResOp.IRReg_Store(IRRegs, IRBuilder, IRVal)
            else:
                raise InvalidSyntaxException
            return

        if self.opcode == "MOV" or self.opcode == "UMOV":
            ResOp = self.operands[0]
            ValOp = self.operands[1]
            
            assert len(self.operands) == 2
            
            if ResOp.isReg and ValOp.isReg:
                # IRResOp = IRRegs[ResOp.getIRRegName()]
                # IRValOp = IRRegs[ValOp.getIRRegName()]
                # IRVal = IRBuilder.load(IRValOp)
                IRVal = ValOp.IRReg_Load(IRRegs, IRBuilder)
                # IRBuilder.store(IRVal, IRResOp)
                ResOp.IRReg_Store(IRRegs, IRBuilder, IRVal)
                # old: # IRBuilder.store(IRValOp, IRResOp)
            elif ResOp.isReg and ValOp.isConst:
                # IRResOp = IRRegs[ResOp.getIRRegName()]
                tmp = llvmir.Constant(ResOp.getIRType(), ValOp.Value)
                # IRBuilder.store(tmp, IRResOp)
                ResOp.IRReg_Store(IRRegs, IRBuilder, tmp)
            elif ResOp.isReg and ValOp.isConstMem:
                # IRResOp = IRRegs[ResOp.getIRRegName()]
                # Find IR from IRArgs
                if ValOp.offset_in_const_mem not in IRArgs:
                    IRArgs[ValOp.offset_in_const_mem] = llvmir.Constant(llvmir.IntType(32), 0)
                IRValOp = IRArgs[ValOp.offset_in_const_mem]

                # IRBuilder.store(IRValOp, IRResOp)
                ResOp.IRReg_Store(IRRegs, IRBuilder, IRValOp)
                # IRBuilder.store(IRArgs[ValOp.offset_in_const_mem], IRResOp)
            else:
                raise InvalidSyntaxException
            return

        if self.opcode == "LDG" or self.opcode == "LDS" or self.opcode == "LDL":
            # Load from Global Memory
            # e.g.: LDG.E.SYS R57, [R38]
            ResOp = self.operands[0]
            PtrOp = self.operands[1]
            
            assert len(self.operands) == 2
            
            if ResOp.isReg and PtrOp.isPtr:
                # IRResOp = IRRegs[ResOp.getIRRegName()]
                IRResOp = IRRegs[ResOp.getRegName()]
                # IRPtrOp = IRRegs[PtrOp.getIRRegName()]
                
                if self.opcode == "LDG":
                    addr_space = ADDRSPACE_GLOBAL
                elif self.opcode == "LDS":
                    addr_space = ADDRSPACE_SHARED
                elif self.opcode == "LDL":
                    addr_space = ADDRSPACE_LOCAL
                
                IRVal = PtrOp.IR_ValueFromPointer(IRBuilder, IRRegs, ResOp.getIRType(), addr_space=addr_space)

                # IRVal = IRBuilder.load(IRPtrOp)
                # IRBuilder.store(IRVal, IRResOp)
                ResOp.IRReg_Store(IRRegs, IRBuilder, IRVal)
            else:
                raise InvalidSyntaxException
            return

        if self.opcode == "STG" or self.opcode == "STL" or self.opcode == "STS":
            # Store to global, local, or shared Memory
            # e.g.: STG.E.SYS [R28], R7
            ResOp = self.operands[0]
            ValOp = self.operands[1]
            
            assert len(self.operands) == 2
            # assert len(self.modifiers) == 0
            
            if ValOp.isReg and ResOp.isPtr:
                # IRResOp = IRRegs[ResOp.getIRRegName()]
                # IRValOp = IRRegs[ValOp.getIRRegName()]
                # IRVal = IRBuilder.load(IRValOp)
                LoadDataType = None
                if isinstance(ValOp.getIRType(), llvmir.PointerType):
                    # TODO: tmp
                    if len(self.modifiers) > 0 and self.modifiers[0] == "E":
                        LoadDataType = llvmir.IntType(32)
                        IRVal = ValOp.IRReg_Load(IRRegs, IRBuilder, LoadDataType=LoadDataType)
                else:
                    IRVal = ValOp.IRReg_Load(IRRegs, IRBuilder)
                
                # select address space based on opcode
                if self.opcode == "STL":
                    addr_space = ADDRSPACE_LOCAL
                elif self.opcode == "STG":
                    addr_space = ADDRSPACE_GLOBAL
                elif self.opcode == "STS":
                    addr_space = ADDRSPACE_SHARED
                else:
                    raise InvalidSyntaxException
                if LoadDataType is not None:
                    ResOp.IR_ValueToPointer(IRBuilder, IRRegs, ResOp, IRVal, addr_space=addr_space, elem_type=LoadDataType)
                else:
                    ResOp.IR_ValueToPointer(IRBuilder, IRRegs, ResOp, IRVal, addr_space=addr_space)
            else:
                raise InvalidSyntaxException
            return
        
        if self.opcode == "IMAD":
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]
            ValOp3 = self.operands[3]
            # IRBuilder.comment("IMAD Instruction")
            
            # print(self)
            
            settings = {
                "wide": False,
                "mov": False,
                "iadd": False,
                "x": False,
                "shl": False,
                "hi": False
            }
            
            for mod in self.modifiers:
                if mod == "WIDE":
                    # implemented according to https://cbr.stanford.edu/seminarTalks/slides_20230526_niall_emmart.pptx
                    settings["wide"] = True
                    continue
                elif mod == "MOV" or mod == "IADD":
                    # just compiler informing the reader that IMAD is essentially performing MOV/IADD
                    # https://stackoverflow.com/questions/59777333/combined-format-of-sass-instructions
                    settings[mod.lower()] = True
                    continue
                elif mod == "SHL":
                    settings["shl"] = True
                    continue
                elif mod == "HI":
                    settings["hi"] = True
                    continue
                elif mod == "X":
                    settings["x"] = True
                    continue
                elif mod == "U32" or mod == "S32":
                    # U32 is the standard width for IMAD; usually safe to skip 
                    continue
                else:
                    print(self)
                    print("Not implemented Mod:", mod)
                    raise NotImplementedError
                    

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp3 = ValOp3.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            
            if settings["x"]:
                # Fetch carry operand if .X is present
                assert len(self.operands) == 5
                ValOp4 = self.operands[4]
                IRValOp4 = ValOp4.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            else:
                assert len(self.operands) == 4

            
            is_64bit_calc = settings["hi"] or settings["wide"]
            calc_type = llvmir.IntType(64) if is_64bit_calc else llvmir.IntType(32)
            
            assert ValOp1.isReg
            # IRResOp = IRRegs[ResOp.getIRRegName()]
            
            
            # MULTIPLICATION/SHIFT STAGE
            
            if settings["shl"]:
                # IMAD.SHL: (Op1 << Op2) + Op3
                # need further verification
                tmp = IRBuilder.shl(IRValOp1, IRValOp2, name="imad_shl")
                if is_64bit_calc:
                    tmp = IRBuilder.zext(tmp, calc_type, name="shl_ext")
            else:
                # (Op1 * Op2)
                
                if is_64bit_calc:
                    ext1 = IRBuilder.zext(IRValOp1, calc_type, name="imad_ext1")
                    ext2 = IRBuilder.zext(IRValOp2, calc_type, name="imad_ext2")
                else:
                    ext1 = IRValOp1
                    ext2 = IRValOp2
                tmp = IRBuilder.mul(ext1, ext2, name="imad_mul")
            
            
            # ADDITION/ACCUMULATION
            if isinstance(IRValOp3.type, llvmir.PointerType):
                IRValOp3_ready = IRBuilder.ptrtoint(IRValOp3, calc_type)
            elif IRValOp3.type.width < calc_type.width:
                IRValOp3_ready = IRBuilder.zext(IRValOp3, calc_type, name="imad_ext3")
            else:
                IRValOp3_ready = IRValOp3
            
            # tmp = (Product/Shift) + Op3
            tmp = IRBuilder.add(tmp, IRValOp3_ready, name="imad_add")
            
            # Handle carry-in (.X)
            if settings["x"]:
                IRValOp4_ext = IRBuilder.zext(IRValOp4, calc_type, name="imad_ext4")
                tmp = IRBuilder.add(tmp, IRValOp4_ext, name="imad_add_x")
            
            # FINAL TRUNCATION / SELECTION STAGE
            
            if settings["hi"]:
                # Extract the high 32 bits: (Result >> 32)
                hi_bits = IRBuilder.lshr(tmp, llvmir.Constant(calc_type, 32), name="imad_hi_shift")
                final_res = IRBuilder.trunc(hi_bits, llvmir.IntType(32), name="imad_hi_trunc")
            elif settings["wide"]:
                # Keep full 64 bits
                final_res = tmp
            else:
                # Standard 32-bit result (should already be 32-bit unless widened by logic)
                if tmp.type.width > 32:
                    final_res = IRBuilder.trunc(tmp, llvmir.IntType(32), name="imad_trunc")
                else:
                    final_res = tmp

            ResOp.IRReg_Store(IRRegs, IRBuilder, final_res)

            return
        
        if self.opcode == "ISETP" or self.opcode == "UISETP" or self.opcode == "FSETP":
            # https://stackoverflow.com/questions/19357452/cuda-assembly-instructions
            ResOp = self.operands[0]
            PReg1 = self.operands[1] # result 2 (Pv): https://nintyconservation9619.github.io/Switch%20SDK/Docs-JAP/Documents/Package/contents/SASS/opcodes/opISETP.htm
            ValOp1 = self.operands[2]
            ValOp2 = self.operands[3]
            PReg2 = self.operands[4]
            
            assert len(self.operands) == 5

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            
            if not self.config["allow_temp_behavior"]:
                if self.opcode == "FSETP":
                    assert isinstance(IRValOp1.type, (llvmir.FloatType, llvmir.DoubleType)) 
                    assert isinstance(IRValOp2.type, (llvmir.FloatType, llvmir.DoubleType)) 
                elif self.opcode in ("ISETP", "UISETP"):
                    assert isinstance(IRValOp1.type, (llvmir.IntType)) 
                    assert isinstance(IRValOp2.type, (llvmir.IntType)) 

            assert ResOp.isPReg and PReg1.isPReg and PReg2.isPReg
        

            # IRResOp = IRRegs[ResOp.getIRRegName()]
            # IRPReg1 = IRRegs[PReg1.getIRRegName()]
            IRPReg1 = IRRegs[PReg1.getRegName()]
            IRPReg2 = IRRegs[PReg2.getRegName()]

            # IRPreg1Val = IRBuilder.load(IRPReg1)
            IRPreg2Val = IRBuilder.load(IRPReg2)
            
            
            
            settings = {
                "ordered": True,
                "cmp_op": None,
                "ftz": False,
                "boolean_op": None,
                "type": {
                    "signage": None,
                    "bits": None
                },
                "unsigned": False
            }
            
            for mod in self.modifiers:
                if mod in ("AND", "OR"):
                    settings["boolean_op"] = mod
                    continue
                
                pattern = r"^((EQ|NE|LT|LE|GT|GE))(U?)$"
                match = re.match(pattern, mod)
                if match:
                    settings["cmp_op"] = match.group(1)
                    # If modifier includes U (unsigned), mark unsigned semantics.
                    if match.group(3) == "U":
                        settings["unsigned"] = True
                        settings["ordered"] = False
                    continue
                
                if mod == "FTZ":
                    settings["ftz"] = True # TODO handle this. Probably means subnormal/very small numbers are just zeroed out
                    continue
                
                pattern = r"^([US]{0,1})((32|64))$"
                match = re.match(pattern, mod)
                if match:
                    settings["type"] = {
                        "signage" : match.group(1), # None if not present
                        "bits" : match.group(2)
                    }
                    # TODO handle this
                    continue
                
                raise InvalidSyntaxException
            
            cmp_op = self.GetCmpOp(settings["cmp_op"])
            if cmp_op is None:
                raise InvalidSyntaxException

            if self.opcode in ('ISETP', 'UISETP') or self.config["allow_temp_behavior"]:
                # Use unsigned compare if explicitly requested or opcode is UISETP
                if self.opcode == 'UISETP' or settings.get("unsigned", False):
                    tmp = IRBuilder.icmp_unsigned(cmp_op, IRValOp1, IRValOp2, "unsigned_cmp")
                else:
                    tmp = IRBuilder.icmp_signed(cmp_op, IRValOp1, IRValOp2, "cmp")
                tmp2 = IRBuilder.add(tmp, llvmir.Constant(llvmir.IntType(1), 0)) # creating a new copy for Preg1
            elif self.opcode == 'FSETP':
                if not settings["ordered"]:
                    # https://llvm.org/docs/LangRef.html#fcmp-instruction
                    # une, ult, etc
                    # meaning of unordered vs ordered: https://docs.factorcode.org/content/article-math.floats.compare.html
                    # TODO: determine the true behavior when one of the operand is NaN
                    tmp = IRBuilder.fcmp_unordered(cmp_op, IRValOp1, IRValOp2, "fcmp_ordered")
                else:
                    tmp = IRBuilder.fcmp_ordered(cmp_op, IRValOp1, IRValOp2, "fcmp_unordered")
                tmp2 = IRBuilder.add(tmp, llvmir.Constant(llvmir.IntType(1), 0)) # creating a new copy for Preg1
            else:
                raise InvalidSyntaxException
            tmp2 = IRBuilder.not_(tmp2)
            if settings["boolean_op"] == "AND":
                tmp = IRBuilder.and_(tmp, IRPreg2Val)
                tmp2 = IRBuilder.and_(tmp2, IRPreg2Val)
            elif settings["boolean_op"] == "OR":
                tmp = IRBuilder.or_(tmp, IRPreg2Val)
                tmp2 = IRBuilder.or_(tmp2, IRPreg2Val)
            else:
                raise NotImplementedError
        
            # IRBuilder.store(tmp, IRResOp)
            ResOp.IRReg_Store(IRRegs, IRBuilder, tmp)
            
            if PReg1.reg != "PT":
                PReg1.IRReg_Store(IRRegs, IRBuilder, tmp2)
            return

        
        
        if self.opcode in ("SHF", "USHF"):
            # SHF - Funnel shift
            # https://nintyconservation9619.github.io/Switch%20SDK/Docs-JAP/Documents/Package/contents/SASS/opcodes/opSHF.htm
            
            if len(self.operands) != 4:
                print(f"SHF len(self.operands) != 4, len={len(self.operands)}")
                raise InvalidSyntaxException
            
            R_dest = self.operands[0]
            R_a = self.operands[1]
            R_b = self.operands[2] # shift amt
            R_c = self.operands[3]
            
            # pattern = (
            #     r'^SHF'
            #     r'(?:\.(?P<dir>[LR]))'
            #     r'(?:\.(?P<mode>[WC]))?'
            #     r'(?:\.(?P<maxshift>[US]{0,1}(32|64|64)))?'
            #     r'(?:\.(?P<xmode>(HI|X|XHI)))?'
            #     r'$'
            # )
            # match = re.match(pattern, ".".join([self.opcode]+ self.modifiers))
            # print({k: v for k, v in match.groupdict().items() if v is not None})
            
            settings = {
                "dir": None,
                "mode": "C",
                "maxshift": None,
                "xmode": None
            }
            
            for mod in self.modifiers:
                if mod in ("L", "R"):
                    settings["dir"] = mod
                    continue
                elif mod in ("W", "C"):
                    settings["mode"] = mod
                    continue
                pattern = r"^([US]{0,1})((32|64|64))$"
                match = re.match(pattern, mod)
                if match:
                    settings["maxshift"] = {
                        "signage" : match.group(1), # None if not present
                        "bits" : match.group(2)
                    }
                    continue
                if mod in ("HI", "X", "XHI"):
                    settings["xmode"] = mod
                    continue
                raise InvalidSyntaxException
            
            if settings["mode"] == "C":
                IRValOp1 = R_b.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
                # seems like LLVM doesn't have unsigned integer type, there's also no UintType in the llvmlite source code, so we're just using inttype below. https://stackoverflow.com/questions/30519005/how-to-distinguish-signed-and-unsigned-integer-in-llvm
                # https://nondot.org/~sabre/LLVMNotes/TypeSystemChanges.txt
                IRValOp2 = llvmir.Constant(llvmir.IntType(32), settings["maxshift"]["bits"])
                shift = IRBuilder.select(
                    IRBuilder.icmp_unsigned('<', IRValOp1, IRValOp2),
                    IRValOp1,
                    IRValOp2,
                    "SHF_min"
                )
            else:
                raise NotImplementedError
            
            # IRResOp_Rd = IRRegs[R_dest.getIRRegName()]
            IRValOp_Rc = R_c.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp_Ra = R_a.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp_Rb = R_b.IR_FetchValue(IRBuilder, IRRegs, IRArgs)    
            
            # zero extend to be 64 bit
            if IRValOp_Rc.type == llvmir.IntType(32):
                IRValOp_Rc_64 = IRBuilder.zext(IRValOp_Rc, llvmir.IntType(64), name="zext")
            elif IRValOp_Rc.type == llvmir.IntType(64):
                IRValOp_Rc_64 = IRValOp_Rc
                
            if IRValOp_Ra.type == llvmir.IntType(32):
                IRValOp_Ra_64 = IRBuilder.zext(IRValOp_Ra, llvmir.IntType(64), name="zext")
            elif IRValOp_Ra.type == llvmir.IntType(64):
                IRValOp_Ra_64 = IRValOp_Ra
                
            if IRValOp_Rb.type == llvmir.IntType(32):
                IRValOp_Rb_64 = IRBuilder.zext(IRValOp_Rb, llvmir.IntType(64), name="zext")
            elif IRValOp_Rb.type == llvmir.IntType(64):
                IRValOp_Rb_64 = IRValOp_Rb
            
            
            if settings["dir"] == "L":
                # left shift
                # Treat `USHF` as the unsigned variant even if the .U modifier
                # is not present in `settings["maxshift"]`.
                if (settings["maxshift"] and settings["maxshift"]["signage"] == "U") or self.opcode == "USHF":
                    # Assumptions: 
                    # mode == clamp, i.e. shift = min(Sb, maxshift), maxshift (due to .U64) is probably 64 bits
                    # shift = min(Sb, 64)
                    # val = (Rc << 32 | Ra)
                    # WITH .HI
                    ### Rd = ((Signed) val << shift) >> 32
                    # WITHOUT .HI: assumed to be taking the lower 32 bits
                    ### Rd = ((Signed) val << shift) & 0x00000000ffffffff
                    
                    tmp = IRBuilder.shl(IRValOp_Rc_64, llvmir.Constant(llvmir.IntType(64), 32), "shl")
                    
                    tmp = IRBuilder.or_(tmp, IRValOp_Ra_64, "or")
                    tmp = IRBuilder.shl(tmp, IRValOp_Rb_64, "shl")
                    if settings["xmode"] is None:
                        tmp = IRBuilder.and_(tmp, llvmir.Constant(llvmir.IntType(64), 0xffffffff), "and")
                    elif settings["xmode"] == "HI":
                        # TODO: not sure if shld use lshr or ashr, i assume lshr since we're in U mode
                        tmp = IRBuilder.lshr(tmp, llvmir.Constant(llvmir.IntType(64), 32), "lshr")
                    else:
                        raise NotImplementedError
                    
                    tmp = IRBuilder.trunc(tmp, llvmir.IntType(32), "trunc32")
                        
                else:
                    raise NotImplementedError
                
            elif settings["dir"] == "R":
                # right shift
                
                # Assumptions:
                # mode == clamp, i.e. shift = min(Sb, maxshift), maxshift (due to .S32) is probably 32 bits
                # shift = min(Sb, 32)
                # val = (Rc << 32 | Ra)
                # Rd = (((Signed) val >> shift)) >> 32
                # the last 32 right shift is for HI (probably)
                # not entirely sure about the sign extended behavior
                
                tmp = IRBuilder.shl(IRValOp_Rc_64, llvmir.Constant(llvmir.IntType(64), 32), "shl")
                tmp = IRBuilder.or_(tmp, IRValOp_Ra_64, "or")
                
                if settings["maxshift"] and settings["maxshift"]["signage"] == "S":
                    tmp = IRBuilder.ashr(tmp, IRValOp_Rb_64, "ashr")
                    # TODO not entirely sure if shld use ashr, need further testing
                    if settings["xmode"] == "HI":
                        tmp = IRBuilder.ashr(tmp, llvmir.Constant(llvmir.IntType(64), 32), "ashr")
                        tmp = IRBuilder.trunc(tmp, llvmir.IntType(32), "trunc32")
                    else:
                        raise NotImplementedError
                elif (settings["maxshift"] and settings["maxshift"]["signage"] == "U") or self.opcode == "USHF":
                    tmp = IRBuilder.lshr(tmp, IRValOp_Rb_64, "lshr")
                    if settings["xmode"] == "HI":
                        tmp = IRBuilder.lshr(tmp, llvmir.Constant(llvmir.IntType(64), 32), "lshr")
                        tmp = IRBuilder.trunc(tmp, llvmir.IntType(32), "trunc32")
                    else:
                        raise NotImplementedError
                else:
                    raise NotImplementedError
                
            else:
                print(f"settings[\"dir\"] = {settings['dir']}")
                raise InvalidSyntaxException
            
            # IRBuilder.store(tmp, IRResOp_Rd)
            R_dest.IRReg_Store(IRRegs, IRBuilder, tmp)
            return

        if self.opcode == "IMNMX" or self.opcode == "FMNMX":
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]
            PReg = self.operands[3]
            
            assert len(self.operands) == 4
            assert len(self.modifiers) == 0

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRPreg = PReg.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg and PReg.isPReg
            # IRResOp = IRRegs[ResOp.getIRRegName()]

            # TODO: use _ordered or unordered?
            
            lt_cmp = None
            gt_cmp = None
            
            if self.opcode == "FMNMX":
                lt_cmp = IRBuilder.fcmp_ordered('<', IRValOp1, IRValOp2)
                gt_cmp = IRBuilder.fcmp_ordered('>', IRValOp1, IRValOp2)
            elif self.opcode == "IMNMX":
                # TODO: assumed to be signed
                lt_cmp = IRBuilder.icmp_signed("<", IRValOp1, IRValOp2)
                gt_cmp = IRBuilder.icmp_signed(">", IRValOp1, IRValOp2)
            
            min = IRBuilder.select(
                lt_cmp,
                IRValOp1,
                IRValOp2,
                "mnmx_min"
            )
            max = IRBuilder.select(
                gt_cmp,
                IRValOp1,
                IRValOp2,
                "mnmx_max"
            )

            # https://forums.developer.nvidia.com/t/ampere-sass-annotation/176758
            tmp = IRBuilder.select(IRPreg, min, max, "mnmx_final")
            # IRBuilder.store(tmp, IRResOp)
            ResOp.IRReg_Store(IRRegs, IRBuilder, tmp)

            return
        
        if self.opcode == "FFMA":
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]
            ValOp3 = self.operands[3]
            
            assert len(self.operands) == 4

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp3 = ValOp3.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            # IRResOp = IRRegs[ResOp.getIRRegName()]
            
            if not self.config["allow_temp_behavior"]:
                assert isinstance(IRValOp1.type, (llvmir.FloatType, llvmir.DoubleType)) 
                assert isinstance(IRValOp2.type, (llvmir.FloatType, llvmir.DoubleType)) 
                assert isinstance(IRValOp3.type, (llvmir.FloatType, llvmir.DoubleType))
                IRValOp_list = [IRValOp1, IRValOp2, IRValOp3]
                if any(isinstance(IRVal.type, llvmir.DoubleType) for IRVal in IRValOp_list):
                    # Promote all float operands to double
                    IRValOp_list = [IRBuilder.fpext(IRVal, llvmir.DoubleType()) if IRVal.type == llvmir.FloatType() else IRVal for IRVal in IRValOp_list]
                    IRValOp1, IRValOp2, IRValOp3 = IRValOp_list
                
            else:
                assert isinstance(IRValOp1.type, (llvmir.FloatType, llvmir.DoubleType, llvmir.IntType)) 
                assert isinstance(IRValOp2.type, (llvmir.FloatType, llvmir.DoubleType, llvmir.IntType)) 
                assert isinstance(IRValOp3.type, (llvmir.FloatType, llvmir.DoubleType, llvmir.IntType)) 
            
            if self.config["allow_temp_behavior"]:
                # TODO: https://sys-sec-purdue.slack.com/archives/D08RM389XEZ/p1750971276767179
                if isinstance(IRValOp3.type, (llvmir.DoubleType,llvmir.FloatType)):
                    IRValOp3 = IRBuilder.fptosi(IRValOp3, llvmir.IntType(32), name="fp_to_sint32")
                if isinstance(IRValOp1.type, (llvmir.DoubleType,llvmir.FloatType)):
                    IRValOp1 = IRBuilder.fptosi(IRValOp1, llvmir.IntType(32), name="fp_to_sint32")
                if isinstance(IRValOp2.type, (llvmir.DoubleType,llvmir.FloatType)):
                    IRValOp2 = IRBuilder.fptosi(IRValOp2, llvmir.IntType(32), name="fp_to_sint32")
            
            tmp = IRBuilder.fmul(IRValOp1, IRValOp2, "fmul")
            # if IRValOp1 and IRValOp2 were i32, tmp would be i32
            # but if one of the operandsto fadd, i.e. IRValOp3 is not i32, then this would throw exception
            

            tmp = IRBuilder.fadd(tmp, IRValOp3, "fadd")
            # IRBuilder.store(tmp, IRResOp)
            ResOp.IRReg_Store(IRRegs, IRBuilder, tmp)

            return
        
        if self.opcode == "IADD" or self.opcode == "FADD":
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]
            
            assert len(self.operands) == 3

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            # IRResOp = IRRegs[ResOp.getIRRegName()]
            
            if self.opcode == "IADD":
                tmp = IRBuilder.add(IRValOp1, IRValOp2, "add")
            elif self.opcode == "FADD":
                tmp = IRBuilder.fadd(IRValOp1, IRValOp2, "fadd")
            # IRBuilder.store(tmp, IRResOp)
            ResOp.IRReg_Store(IRRegs, IRBuilder, tmp)

            return
        
        if self.opcode == "LEA":
            #  LEA R13, R31, R13, 0x2 ;
            #  LEA dst, a, b, shift; ==> dst = (a << shift) + b
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]
            shift = self.operands[3]
            
            assert len(self.operands) == 4

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRShift = shift.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            # IRResOp = IRRegs[ResOp.getIRRegName()]

            # using promote_integer_list to prevent issue with "LEA R8, P0, R25, R4, 0x2", P0 is i1, need to extend them otherwise there'd be issue mixing different inttype
            
            [IRValOp1, IRValOp2, IRShift], _ = promote_integer_list(IRBuilder, [IRValOp1, IRValOp2, IRShift])
            
            tmp = IRBuilder.shl(IRValOp1, IRShift, "shl")
            tmp = IRBuilder.add(tmp, IRValOp2, "add")
            # IRBuilder.store(tmp, IRResOp)
            ResOp.IRReg_Store(IRRegs, IRBuilder, tmp)

            return
        
        
        if self.opcode == "IABS":
            ResOp = self.operands[0]
            ValOp = self.operands[1]
            
            assert len(self.operands) == 2

            IRValOp = ValOp.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            # IRResOp = IRRegs[ResOp.getIRRegName()]

            tmp = IRBuilder.select(
                IRBuilder.icmp_signed('>=', IRValOp, llvmir.Constant(IRValOp.type, 0)),
                IRValOp,
                IRBuilder.neg(IRValOp),
                "iabs"
            )
            # IRBuilder.store(tmp, IRResOp)
            ResOp.IRReg_Store(IRRegs, IRBuilder, tmp)

            return
        
        if self.opcode == "ULDC":
            # TODO: 64 bit not implemented
            ResOp = self.operands[0]
            ValOp = self.operands[1]
            
            assert len(self.operands) == 2

            # IRVal = PtrOp.IR_ValueFromPointer(IRBuilder, IRRegs, ResOp.getIRType())
            IRVal = ValOp.IRReg_Load(IRRegs, IRBuilder) # note that the constant might be any length, usually depending on the type of the arg, e.g. i1 for bool, 64 bit for pointer etc
            assert ResOp.isReg
            assert ResOp.reg in SM_75_UReg_Set
            # IRResOp = IRRegs[ResOp.getIRRegName()]

            # IRBuilder.store(IRValOp, IRResOp)
            ResOp.IRReg_Store(IRRegs, IRBuilder, IRVal)
            return
        

        if self.opcode == "ULOP3" or self.opcode == "LOP3":
            # https://forums.developer.nvidia.com/t/reverse-lut-for-lop3-lut/110651
            # https://zhuanlan.zhihu.com/p/659741469
            # https://forums.developer.nvidia.com/t/what-does-lop3-lut-mean-how-is-it-executed/227472/18
            # https://zhuanlan.zhihu.com/p/712356884

            
            '''
            /* emulate GPU's LOP3.LUT (three-input logic op with 8-bit truth table) */
                uint32_t lop3_fast (uint32_t a, uint32_t b, uint32_t c, uint8_t ttbl)
                {
                    uint32_t r = 0;
                    if (ttbl & 0x01) r |= ~a & ~b & ~c;
                    if (ttbl & 0x02) r |= ~a & ~b &  c;
                    if (ttbl & 0x04) r |= ~a &  b & ~c;
                    if (ttbl & 0x08) r |= ~a &  b &  c;
                    if (ttbl & 0x10) r |=  a & ~b & ~c;
                    if (ttbl & 0x20) r |=  a & ~b &  c;
                    if (ttbl & 0x40) r |=  a &  b & ~c;
                    if (ttbl & 0x80) r |=  a &  b &  c;
                    return r;
                }
            '''
            
            # LOP3 has two main formats:
            # A) With Predicate Dest: LOP3.LUT Pu, Rd, Ra, Sb, Rc, Imm
            # B) No Predicate Dest:   LOP3.LUT Rd, Ra, Sb, Rc, Imm
            
            firstOp = self.operands[0]
            
            assert len(self.operands) == 6 or len(self.operands) == 7 # TODO investigate what the last operand does for "LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT"
            
            if firstOp.isPReg:
                # Format A
                PuOp   = self.operands[0]  # Predicate Destination
                ResOp   = self.operands[1]  # Register Destination
                ValOp1   = self.operands[2]
                ValOp2   = self.operands[3]
                ValOp3   = self.operands[4]
                immLut  = self.operands[5]
                PReg = self.operands[6]
            else:
                # Format B
                PuOp = None
                ResOp = self.operands[0]
                ValOp1 = self.operands[1]
                ValOp2 = self.operands[2]
                ValOp3 = self.operands[3]
                immLut = self.operands[4]
                # TODO: GUESS: ALL I met for the final one is 0, what's the meaning of the final one?
                PReg = self.operands[5]
            

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp3 = ValOp3.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            
            
            valOps = [ValOp1, ValOp2, ValOp3]
            if not all(isinstance(v.getIRType(), llvmir.IntType) for v in valOps):
                if not all(w == 32 for w in [valOp.get_bit_width() for valOp in valOps]):
                    print(self)
                    raise Exception
                else:
                    if any(v.getIRType() != llvmir.IntType(32) for v in valOps):
                        IRValOp1, IRValOp2, IRValOp3 = bitcast_all_to_type(IRBuilder, llvmir.IntType(32), IRValOp1, IRValOp2, IRValOp3)

            # if not all(w == 32 for w in [IRValOp1.type.width, IRValOp2.type.width, IRValOp3.type.width]):
            
            # IRImmLut = llvmir.Constant(llvmir.IntType(32), immLut.Value)
            IRPreg = PReg.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            
            
            if not immLut.isConst:
                assert immLut.isReg
                # we'll need to create a new basic block and perform dynamic comparison to determine and select the correct operation (done with IRFunc.append_basic_block), but that means everytime we encounter this instruction we will have to create this basicblock with unique name.  Instead we're just going to create a function
                IRImmLut = immLut.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
                
                # get the custom function's handle
                lop_func = self.llvm_module.globals.get("custom_" + self.opcode.lower(), None)
                if lop_func is None:
                    raise Exception
                tmp = IRBuilder.call(lop_func, [IRImmLut, IRValOp1, IRValOp2, IRValOp3], name=f"{self.opcode}_result")
            else:
                # https://zhuanlan.zhihu.com/p/712356884
                if immLut.Value == 0x80: # A & B & C
                    tmp = IRBuilder.and_(IRValOp1, IRValOp2) 
                    tmp = IRBuilder.and_(tmp, IRValOp3)
                elif immLut.Value == 0x0: # 0
                    tmp = llvmir.Constant(llvmir.IntType(32), 0)
                elif immLut.Value == 0x40: # A & B & ~C
                    tmp = IRBuilder.and_(IRValOp1, IRValOp2)
                    tmp2 = IRBuilder.xor(IRValOp3, llvmir.Constant(llvmir.IntType(32), -1)) # ~C
                    tmp = IRBuilder.and_(tmp, tmp2)
                elif immLut.Value == 0xFE: # A | B | C
                    tmp = IRBuilder.or_(IRValOp1, IRValOp2)
                    tmp = IRBuilder.or_(tmp, IRValOp3)
                elif immLut.Value == 0xFF: # 1
                    tmp = llvmir.Constant(llvmir.IntType(32), 1)
                elif immLut.Value == 0x1A: # (A & B | C ) ^ A
                    tmp = IRBuilder.and_(IRValOp1, IRValOp2)
                    tmp = IRBuilder.or_(tmp, IRValOp3)
                    tmp = IRBuilder.xor(tmp,IRValOp1)
                elif immLut.Value == 0x33: # ~B
                    tmp = IRBuilder.xor(IRValOp2, llvmir.Constant(llvmir.IntType(32), -1)) # ~B
                elif immLut.Value == 0xC0:  # A & B
                    tmp = IRBuilder.and_(IRValOp1, IRValOp2) 
                elif immLut.Value == 0x8: # (~A) & B & C
                    tmp = IRBuilder.xor(IRValOp1, llvmir.Constant(llvmir.IntType(32), -1)) # ~A
                    tmp = IRBuilder.and_(tmp, IRValOp2)
                    tmp = IRBuilder.and_(tmp, IRValOp3)
                elif immLut.Value == 0x3c: # A ^ B
                    tmp = IRBuilder.xor(IRValOp1, IRValOp2)
                elif immLut.Value == 0x0f: # ~A
                    tmp = IRBuilder.xor(IRValOp1, llvmir.Constant(llvmir.IntType(32), -1)) # ~A
                elif immLut.Value == 0x55: # ~C
                    tmp = IRBuilder.xor(IRValOp3, llvmir.Constant(llvmir.IntType(32), -1)) # ~C
                elif immLut.Value == 0xFC: # A | B
                    tmp = IRBuilder.or_(IRValOp1, IRValOp2)
                elif immLut.Value == 0xF8: # (A | B) & (A | C)
                    tmp = IRBuilder.or_(IRValOp1, IRValOp2)
                    tmp2 = IRBuilder.or_(IRValOp1, IRValOp3)
                    tmp = IRBuilder.and_(tmp, tmp2)
                else:
                    print(self)
                    raise NotImplementedError
            
            if self.config["allow_temp_behavior"]:
                # if str(IRRegs[ResOp.getIRRegName()].type) == "i1*":
                if str(IRRegs[ResOp.getRegName()].type) == "i1*":
                    tmp = IRBuilder.trunc(tmp, llvmir.IntType(1), "trunc1")
            
            # IRBuilder.store(tmp, IRRegs[ResOp.getIRRegName()])
            ResOp.IRReg_Store(IRRegs, IRBuilder, tmp)
            
            if PuOp:
                # LOP3 sets predicate based on Non-Zero result
                is_nonzero = IRBuilder.icmp_unsigned('!=', tmp, llvmir.Constant(llvmir.IntType(32), 0))
                PuOp.IRReg_Store(IRRegs, IRBuilder, is_nonzero)
            return


        if self.opcode == "PLOP3":
            #  PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ; # What does the last PT mean?
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]
            ValOp3 = self.operands[3]
            immLut = self.operands[5]
            assert immLut.isConst
            # todo figure out op[4] and op[6]. op[4] is prob a negation of the result, or a negation of each inputs
            assert len(self.operands) == 7

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp3 = ValOp3.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            
            # ---- Copied from LOP3
            valOps = [ValOp1, ValOp2, ValOp3]
            if not all(isinstance(v.getIRType(), llvmir.IntType) for v in valOps):
                if not all(w == 32 for w in [valOp.get_bit_width() for valOp in valOps]):
                    print(self)
                    raise Exception
                else:
                    if any(v.getIRType() != llvmir.IntType(32) for v in valOps):
                        IRValOp1, IRValOp2, IRValOp3 = bitcast_all_to_type(IRBuilder, llvmir.IntType(32), IRValOp1, IRValOp2, IRValOp3)
            # ---- Copied from LOP3
            
            
            # IRImmLut = llvmir.Constant(llvmir.IntType(32), immLut.Value)
            # IRPreg = PReg.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            # https://zhuanlan.zhihu.com/p/712356884
            if immLut.Value == 0x80: # A & B & C
                tmp = IRBuilder.and_(IRValOp1, IRValOp2) 
                tmp = IRBuilder.and_(tmp, IRValOp3)
            elif immLut.Value == 0x0: # 0
                tmp = llvmir.Constant(llvmir.IntType(1), 0)
            elif immLut.Value == 0x40: # A & B & ~C
                tmp = IRBuilder.and_(IRValOp1, IRValOp2)
                tmp2 = IRBuilder.xor(IRValOp3, llvmir.Constant(llvmir.IntType(1), 1)) # ~C
                tmp = IRBuilder.and_(tmp, tmp2)
            elif immLut.Value == 0xFE: # A | B | C
                tmp = IRBuilder.or_(IRValOp1, IRValOp2)
                tmp = IRBuilder.or_(tmp, IRValOp3)
            elif immLut.Value == 0xFF: # 1
                tmp = llvmir.Constant(llvmir.IntType(1), 1)
            elif immLut.Value == 0x1A: # (A & B | C ) ^ A
                tmp = IRBuilder.and_(IRValOp1, IRValOp2)
                tmp = IRBuilder.or_(tmp, IRValOp3)
                tmp = IRBuilder.xor(tmp,IRValOp1)
            elif immLut.Value == 0x33: # ~B
                tmp = IRBuilder.xor(IRValOp2, llvmir.Constant(llvmir.IntType(1), 1)) # ~B
            elif immLut.Value == 0xC0:  # A & B
                tmp = IRBuilder.and_(IRValOp1, IRValOp2) 
            elif immLut.Value == 0x8: # (~A) & B & C
                tmp = IRBuilder.xor(IRValOp1, llvmir.Constant(llvmir.IntType(1), 1)) # ~A
                tmp = IRBuilder.and_(tmp, IRValOp2)
                tmp = IRBuilder.and_(tmp, IRValOp3)
            elif immLut.Value == 0x3c: # A ^ B
                tmp = IRBuilder.xor(IRValOp1, IRValOp2)
            elif immLut.Value == 0x0f: # ~A
                tmp = IRBuilder.xor(IRValOp1, llvmir.Constant(llvmir.IntType(1), 1)) # ~A
            elif immLut.Value == 0x55: # ~C
                tmp = IRBuilder.xor(IRValOp3, llvmir.Constant(llvmir.IntType(1), 1)) # ~C
            elif immLut.Value == 0xFC: # A | B
                tmp = IRBuilder.or_(IRValOp1, IRValOp2)
            elif immLut.Value == 0xE0: # A & (B|C)
                tmp = IRBuilder.or_(IRValOp2, IRValOp3)
                tmp = IRBuilder.and_(tmp, IRValOp1)
            else:
                raise NotImplementedError
            return

        if self.opcode == "I2F":
            ResOp = self.operands[0]
            ValOp = self.operands[1]
            
            assert len(self.operands) == 2

            IRValOp = ValOp.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            # IRResOp = IRRegs[ResOp.getIRRegName()]

            # tmp = IRBuilder.sitofp(IRValOp, IRResOp.type.pointee)
            # IRBuilder.store(tmp, IRResOp)
            ResOp.IRReg_Store(IRRegs, IRBuilder, IRValOp)

            return
        
        if self.opcode == "I2I":
            assert len(self.modifiers) == 0
            return

        if self.opcode == "F2F":
            assert len(self.modifiers) == 0
            return
        
        if self.opcode == "F2I":
            ResOp = self.operands[0]
            ValOp = self.operands[1]
            
            assert len(self.operands) == 2

            IRValOp = ValOp.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            # IRResOp = IRRegs[ResOp.getIRRegName()]

            # tmp = IRBuilder.fptosi(IRValOp, IRResOp.type.pointee)
            # IRBuilder.store(tmp, IRResOp)
            ResOp.IRReg_Store(IRRegs, IRBuilder, IRValOp)

            return

        if self.opcode == "MUFU": # Multi-Function Unit
            ResOp = self.operands[0]
            ValOp = self.operands[1]
            
            assert len(self.operands) == 2
            
            if ValOp.getTypeDesc() == "NOTYPE": # TODO tmp solution
                ValOp.setTypeDesc(ResOp.getTypeDesc())
            
            IRValOp = ValOp.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            assert ResOp.isReg
            # IRResOp = IRRegs[ResOp.getIRRegName()]
            float_to_int_needed = False
            if self.modifiers[0] == "RCP": # Reciprocal
                if ValOp.getIRType() == llvmir.IntType(32):
                    IRValOp = IRBuilder.sitofp(IRValOp, llvmir.FloatType(), name="sint_to_f32")
                    float_to_int_needed = True
                tmp = IRBuilder.fdiv(llvmir.Constant(llvmir.FloatType(), 1), IRValOp)
            elif self.modifiers[0] == "EX2": # Exponent base-2
                # https://nintyconservation9619.github.io/Switch%20SDK/Docs-JAP/Documents/Package/contents/SASS/opcodes/opMUFU.htm
                # TODO: there's some small precision issue, as noted here: https://sys-sec-purdue.slack.com/archives/D08RM389XEZ/p1750988222773009
                
                llvm_module = self.llvm_module
                
                if not self.config["allow_temp_behavior"]:
                    assert isinstance(IRValOp.type, (llvmir.FloatType)) 
                    assert ResOp.getIRType() == llvmir.FloatType()
                else:
                    if isinstance(IRValOp.type, llvmir.IntType):
                        IRValOp = IRBuilder.sitofp(IRValOp, llvmir.FloatType(), name="sint_to_f32")
                    else:
                        raise NotImplementedError
                
                tmp = IRBuilder.call(llvm_exp2_f32(llvm_module), [IRValOp], name="llvm_exp2_f32_result")
                
                if self.config["allow_temp_behavior"]:
                    if str(IRResOp.type) == "i32*": # int pointer, not the same as inttype
                        # cast tmp back to input("Please enter: ")
                        tmp = IRBuilder.fptosi(tmp, llvmir.IntType(32), name="fp_to_sint32")
            else:
                print(self.modifiers[0])
                raise NotImplementedError

            # IRBuilder.store(tmp, IRResOp)
            if float_to_int_needed:
                tmp = IRBuilder.fptosi(tmp, llvmir.IntType(32))
            ResOp.IRReg_Store(IRRegs, IRBuilder, tmp)
            return
        
        if self.opcode == "IADD3" or self.opcode == "UIADD3" :
            ResOp = self.operands[0]
            assert len(self.operands) in (4,5,6)
            
            if len(self.operands) == 4:
                assert len(self.modifiers) == 0
                assert not self.operands[1].isPReg
                ValOp1 = self.operands[1]
                ValOp2 = self.operands[2]
                ValOp3 = self.operands[3]
            elif len(self.operands) == 5:
                assert len(self.modifiers) == 0
                assert self.operands[1].isPReg
                
                ValOp1 = self.operands[2]
                ValOp2 = self.operands[3]
                ValOp3 = self.operands[4]
                OverflowPreg = self.operands[1]
            elif len(self.operands) == 6:
                assert len(self.modifiers) > 0 and self.modifiers[0] == "X"
                ValOp1 = self.operands[1]
                ValOp2 = self.operands[2]
                ValOp3 = self.operands[3]
                # TODO not entirely sure what these pred are, but they're probably either carry or overflow bits
                PregOp1 = self.operands[4]
                PregOp2 = self.operands[5]
                assert PregOp1.isPReg
                assert PregOp2.isPReg

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)  
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp3 = ValOp3.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            # IRResOp = IRRegs[ResOp.getIRRegName()]
            if len(self.operands) == 4:
                sum = IRBuilder.add(IRValOp1, IRValOp2)
                sum = IRBuilder.add(sum, IRValOp3)
                ResOp.IRReg_Store(IRRegs, IRBuilder, sum)
            elif len(self.operands) == 5:
                # NOTE: we're using uadd overflow because based on emphirical experiment, iadd's overflowpred is only set when it's during unsigned overflow and not signed overflow
                # the fundamental binary addition process itself is the same for both signed and unsigned numbers
                llvm_module = self.llvm_module
                tmp1 = IRBuilder.call(llvm_uadd_with_overflow(llvm_module), [IRValOp1, IRValOp2])
                sum1 = IRBuilder.extract_value(tmp1, 0)
                overflow_1 = IRBuilder.extract_value(tmp1, 1)
                
                tmp2 = IRBuilder.call(llvm_uadd_with_overflow(llvm_module), [sum1, IRValOp3])
                sum = IRBuilder.extract_value(tmp2, 0)
                overflow = IRBuilder.extract_value(tmp2, 1)
                overflow = IRBuilder.or_(overflow_1, overflow)
                
                # IRBuilder.store(sum, IRResOp)
                ResOp.IRReg_Store(IRRegs, IRBuilder, sum)
                OverflowPreg.IRReg_Store(IRRegs, IRBuilder, overflow)

            elif len(self.operands) == 6:
                IRPreg1 = PregOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
                IRPreg2 = PregOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
                
                # cast IRPreg to 32 bit
                IRPreg1 = IRBuilder.zext(IRPreg1, llvmir.IntType(32))
                IRPreg2 = IRBuilder.zext(IRPreg2, llvmir.IntType(32))

                sum = IRBuilder.add(IRValOp1, IRValOp2, "add")
                sum = IRBuilder.add(sum, IRValOp3, "add")
                sum = IRBuilder.add(sum, IRPreg1, "add")
                # TODO not entirely sure the role of this last preg
                sum = IRBuilder.add(sum, IRPreg2, "add")

                # IRResOp = IRRegs[ResOp.getIRRegName()]
                # IRBuilder.store(sum, IRResOp)
                ResOp.IRReg_Store(IRRegs, IRBuilder, sum)
            
            return
        
        if self.opcode in ("BMOV", "BSYNC", "BSSY"):
            # these instructions managed the warp divergence when the cuda program is executing. In detail, bssy will start the divergence and mark when all the threads in a warp will merge. BSYNC is the merging point. BMOV will clear the registers, i.e., b0, b1, to track the thread execution.
            
            # print(f"Skipping opcode {self.opcode}")
            return
        
        if self.opcode == "CALL":
            settings = {
                "rel": None,
                "noinc": None
            }
            
            assert len(self.operands) == 1
            
            for mod in self.modifiers:
                if mod == "REL":
                    settings["rel"] = True
                    continue
                elif mod == "NOINC":
                    settings["noinc"] = True
                    continue
                raise InvalidSyntaxException
            
            if settings["rel"]:
                assert len(self.operands) == 1
                
                if str(self.operands[0])[0] == "`":
                    # e.g. CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
                    # TODO not entirely sure but I believe that `() means that "$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath" is an unresolved target that might be resolved at runtime. definition of $__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath can be found within the SASS file
                    # TODO i think the f32 is just refering to the return type, im also assuming that the instructions prior to CALL would set up the arguments, so Function() call will just say that there's no args being passed as input
                    # TODO not handling NOINC yet
                    
                    pattern = r'^`\((.*?_(f\d+)[^)]*)\)$'
                    match = re.match(pattern, str(self.operands[0]))
                    if not match:
                        raise InvalidSyntaxException
                    function_name = match.group(1)
                    return_type = match.group(2)
                    
                    # syntax inspired from llvm_exp2_f32, not necessarily correct
                    # if return_type == "f32":
                    #     function_type = llvmir.FunctionType(llvmir.FloatType(), [])
                    # else:
                    #     raise NotImplementedError
                    function_type = llvmir.FunctionType(llvmir.VoidType(), [])
                    
                    existing_fn = self.llvm_module.globals.get(function_name, None)
                    
                    # Check if the function already exists
                    if existing_fn is not None:
                        assert existing_fn.function_type == function_type
                        function = existing_fn
                    else:
                        function = llvmir.Function(self.llvm_module, function_type, name=function_name)
                    
                    if function_name in self.BB.func.module.functions:
                        functionObj = self.BB.func.module.functions[function_name]
                        assert functionObj.parent_func is None or functionObj.parent_func == self.BB.func
                        assert False # NOTE: .parent_func is irrelevant now
                        functionObj.parent_func = self.BB.func
                    
                    IRBuilder.call(function, [], name="call_rel")
                else:
                    raise NotImplementedError
                
            else:
                raise NotImplementedError
            
            return
        
        if self.opcode == "IMUL" or self.opcode == "FMUL":
            assert len(self.modifiers) == 0
            assert len(self.operands) == 3
            
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]
            
            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            # IRResOp = IRRegs[ResOp.getIRRegName()]
            
            
            if not self.config["allow_temp_behavior"]:
                assert isinstance(IRValOp1.type, (llvmir.FloatType, llvmir.DoubleType)) 
                assert isinstance(IRValOp2.type, (llvmir.FloatType, llvmir.DoubleType)) 
                
            else:
                assert isinstance(IRValOp1.type, (llvmir.FloatType, llvmir.DoubleType, llvmir.IntType)) 
                assert isinstance(IRValOp2.type, (llvmir.FloatType, llvmir.DoubleType, llvmir.IntType)) 
            
            if self.opcode == "IMUL":
                tmp = IRBuilder.mul(IRValOp1, IRValOp2, "mul")
            elif self.opcode == "FMUL":
                tmp = IRBuilder.fmul(IRValOp1, IRValOp2, "fmul") # TODO need further verfication
            # IRBuilder.store(tmp, IRResOp)
            ResOp.IRReg_Store(IRRegs, IRBuilder, tmp)
                

            return
        
        if self.opcode == "SEL" or self.opcode == "FSEL" or self.opcode == "USEL":
            R_dest = self.operands[0]
            R_a = self.operands[1] # select wheb True
            S_b = self.operands[2] # select wheb False
            P_reg = self.operands[3] # predicate
            
            assert len(self.operands) == 4
            
            IRValOp1 = R_a.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = S_b.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRPreg = P_reg.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            
            assert R_dest.isReg and P_reg.isPReg
            assert str(IRPreg.type) == 'i1'
            # IRResOp = IRRegs[R_dest.getIRRegName()]
            
            tmp = IRBuilder.select(
                IRBuilder.icmp_signed('==', IRPreg, llvmir.Constant(IRPreg.type, 1)), # predicate register are stricly i1, even when doing FSEL. FSEL just means that IRValOp1 and IRValOp2 are floats (bytes will be interpreted as float)
                IRValOp1,
                IRValOp2,
                self.opcode.lower()
            )

            # IRBuilder.store(tmp, IRResOp)
            R_dest.IRReg_Store(IRRegs, IRBuilder, tmp)
            return

        if self.opcode == "RET":
            # TODO ret doesnt need to be handled for now. See https://sys-sec-purdue.slack.com/archives/D08RM389XEZ/p1753385146834629
            # TODO right now we're assuming that it's only being used to return to the address below a CALL instruction
            # therefore, the instruction we're returning to would be the first instruction in a BB
            # we'll use info from reaching def analysis to determine the addr to jump to, the address shld be at the beginning of a basic block
            assert len(self.operands) == 2
            assert self.operands[0].isReg or self.operands[0].isConst
            # we're currently assuming that self.operands[0] contains constants that we can read at the lifter stage, but if the reaching def of the register is not a constant, then we will need to dynamically jump to the correct position
            
            if self.branch_target is not None:
                targetBB = self.branch_target
                IRBuilder.branch(BlockMap[targetBB])
                return
            
            
            retAddrOp = self.operands[0]
            return
            
            if retAddrOp.isConst:
                retAddr = retAddrOp.Value
            elif retAddrOp.isReg:
                assert retAddrOp in self.BB.func.typeAnalysis.ud_chain
                assert len(self.BB.func.typeAnalysis.ud_chain[retAddrOp]) == 1
                retAddrValOp = list(self.BB.func.typeAnalysis.ud_chain[retAddrOp])[0]
                assert retAddrValOp.isConst
                
                # Now we need to get the adjacent register
                # retAddrValOp.
                
                retAddrValOp
                pass
            retAddr = 0x0000
            ret_to_inst: Instruction = self.BB.func.sassAddr2Inst[retAddr]
            assert ret_to_inst.BB.instructions[0] == ret_to_inst
            IRBuilder.branch(ret_to_inst.BB)
            
            return
        
        print("\nInstruction: ", self)
        raise NotImplementedError


    ############ Type/Liveness Analysis ############
    
    def get_defs(self):
        """Return list of operands defined by this instruction."""
        return [op for op in self.operands if op.is_def]

    def get_uses(self):
        """Return list of operands used by this instruction."""
        return [op for op in self.operands if op.is_use]
    
    def get_kill_set(self):
        """Return set of registers defined (killed) by this instruction."""
        # TODO handle 64 bit (need to add both registers [there'd be one implicit register] into kill set)
        return {op.reg for op in self._get_kill_set()}
    
    def _get_kill_set(self):
        return {op for op in self.get_defs() if op.isReg or op.isPReg}