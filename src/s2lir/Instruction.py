import typing
from s2lir.Operand import *
from utils import *
from llvmlite import ir as llvmir
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
            text += f"Branch Target:  {self.branch_target}"
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

    def lift(self, IRBuilder: llvmir.IRBuilder, IRRegs, IRArgs, BlockMap, ExitBlock):
        # generate_ir_comment(IRBuilder, self.dump_text())
        
        if self.opcode == "EXIT":
            if not IRBuilder.block.is_terminated:
                IRBuilder.branch(ExitBlock)
            return

        if self.opcode == "NOP":
            return

        # BRA is Handled in the BasicBlock.py
        if self.opcode == "BRA":
            raise NotImplementedError

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

        if self.opcode == "MOV" or self.opcode == "UMOV":
            ResOp = self.operands[0]
            ValOp = self.operands[1]
            if ResOp.isReg and ValOp.isReg:
                IRResOp = IRRegs[ResOp.getIRRegName()]
                IRValOp = IRRegs[ValOp.getIRRegName()]
                IRVal = IRBuilder.load(IRValOp)
                IRBuilder.store(IRVal, IRResOp)
                # IRBuilder.store(IRValOp, IRResOp)
            elif ResOp.isReg and ValOp.isConst:
                IRResOp = IRRegs[ResOp.getIRRegName()]
                tmp = llvmir.Constant(IRResOp.type.pointee, ValOp.Value)
                IRBuilder.store(tmp, IRResOp)
            elif ResOp.isReg and ValOp.isArg:
                IRResOp = IRRegs[ResOp.getIRRegName()]
                # Find IR from IRArgs
                IRValOp = IRArgs[ValOp.offset_in_const_mem]

                IRBuilder.store(IRValOp, IRResOp)
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

            if self.modifiers[-1] == "AND":
                tmp = IRBuilder.and_(tmp, IRPreg1Val)
            elif self.modifiers[-1] == "OR":
                tmp = IRBuilder.or_(tmp, IRPreg1Val)
            else:
                raise NotImplementedError
        
            IRBuilder.store(tmp, IRResOp)

            return
        
        if self.opcode == "SHF":
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
                IRValOp2 = llvmir.Constant(llvmir.IntType(32), settings["maxshift"]["bits"])
                shift = IRBuilder.select(
                    IRBuilder.icmp_unsigned('<', IRValOp1, IRValOp2),
                    IRValOp1,
                    IRValOp2,
                    "SHF_min"
                )
            else:
                raise NotImplementedError
                
            if settings["dir"] == "L":
                # left shift
                if settings["maxshift"] and settings["maxshift"]["signage"] == "U":
                    if settings["xmode"] is None:
                        # assumed to be taking the lower 32 bits
                        # val = (Rc << 32 | Ra)
                        # Rd = ((Signed) val << shift) & 0x00000000ffffffff
                        
                        IRResOp_Rd = IRRegs[R_dest.getIRRegName()]
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
                            
                        
                        
                        tmp = IRBuilder.shl(IRValOp_Rc_64, llvmir.Constant(llvmir.IntType(64), 32), "shl")
                        
                        tmp = IRBuilder.or_(tmp, IRValOp_Ra_64, "or")
                        tmp = IRBuilder.shl(tmp, IRValOp_Rb_64, "shl")
                        tmp = IRBuilder.and_(tmp, llvmir.Constant(llvmir.IntType(64), 0xffffffff), "and")
                        
                        tmp = IRBuilder.trunc(tmp, llvmir.IntType(32), "trunc32")
                        
                        IRBuilder.store(tmp, IRResOp_Rd)
                    else:
                        raise NotImplementedError
                else:
                    raise NotImplementedError
                
            elif settings["dir"] == "R":
                # right shift
                pass
            else:
                print(f"settings[\"dir\"] = {settings['dir']}")
                raise InvalidSyntaxException
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
        
        if self.opcode == "FFMA":
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]
            ValOp3 = self.operands[3]

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp3 = ValOp3.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            IRResOp = IRRegs[ResOp.getIRRegName()]

            tmp = IRBuilder.fmul(IRValOp1, IRValOp2, "fmul")
            tmp = IRBuilder.fadd(tmp, IRValOp3, "fadd")
            IRBuilder.store(tmp, IRResOp)

            return
        
        if self.opcode == "FADD":
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            IRResOp = IRRegs[ResOp.getIRRegName()]

            tmp = IRBuilder.fadd(IRValOp1, IRValOp2, "fadd")
            IRBuilder.store(tmp, IRResOp)

            return
        
        if self.opcode == "LEA":
            #  LEA R13, R31, R13, 0x2 ;
            #  LEA dst, a, b, shift; ==> dst = (a << shift) + b
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]
            shift = self.operands[3]

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRShift = shift.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            IRResOp = IRRegs[ResOp.getIRRegName()]

            tmp = IRBuilder.shl(IRValOp1, IRShift, "shl")
            tmp = IRBuilder.add(tmp, IRValOp2, "add")
            IRBuilder.store(tmp, IRResOp)

            return
        
        
        if self.opcode == "IABS":
            ResOp = self.operands[0]
            ValOp = self.operands[1]

            IRValOp = ValOp.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            IRResOp = IRRegs[ResOp.getIRRegName()]

            tmp = IRBuilder.select(
                IRBuilder.icmp_signed('>=', IRValOp, llvmir.Constant(IRValOp.type, 0)),
                IRValOp,
                IRBuilder.neg(IRValOp),
                "iabs"
            )
            IRBuilder.store(tmp, IRResOp)

            return
        
        if self.opcode == "ULDC":
            # TODO: 64 bit not implemented
            ResOp = self.operands[0]
            ValOp = self.operands[1]

            IRValOp = ValOp.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            assert ResOp.reg in SM_75_UReg_Set
            IRResOp = IRRegs[ResOp.getIRRegName()]

            IRBuilder.store(IRValOp, IRResOp)
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
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]
            ValOp3 = self.operands[3]
            immLut = self.operands[4]
            assert immLut.isConst

            # TODO: GUESS: ALL I met for the final one is 0, what's the meaning of the final one?
            PReg = self.operands[5]

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp3 = ValOp3.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            # IRImmLut = llvmir.Constant(llvmir.IntType(32), immLut.Value)
            IRPreg = PReg.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            # https://zhuanlan.zhihu.com/p/712356884
            if immLut.Value == 0x80: # A & B & C
                tmp = IRBuilder.and_(IRValOp1, IRValOp2) 
                tmp = IRBuilder.or_(tmp, IRValOp3)
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
            else:
                raise NotImplementedError
            
            
            IRBuilder.store(tmp, IRRegs[ResOp.getIRRegName()])
            return


        if self.opcode == "PLOP3":
            #  PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ; # What does the last PT mean?
            ResOp = self.operands[0]
            ValOp1 = self.operands[1]
            ValOp2 = self.operands[2]
            ValOp3 = self.operands[3]
            immLut = self.operands[5]
            assert immLut.isConst

            IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            IRValOp3 = ValOp3.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            # IRImmLut = llvmir.Constant(llvmir.IntType(32), immLut.Value)
            # IRPreg = PReg.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            # https://zhuanlan.zhihu.com/p/712356884
            if immLut.Value == 0x80: # A & B & C
                tmp = IRBuilder.and_(IRValOp1, IRValOp2) 
                tmp = IRBuilder.or_(tmp, IRValOp3)
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
            else:
                raise NotImplementedError
            return

        if self.opcode == "I2F":
            ResOp = self.operands[0]
            ValOp = self.operands[1]

            IRValOp = ValOp.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            IRResOp = IRRegs[ResOp.getIRRegName()]

            tmp = IRBuilder.sitofp(IRValOp, IRResOp.type.pointee)
            IRBuilder.store(tmp, IRResOp)

            return
        
        if self.opcode == "F2I":
            ResOp = self.operands[0]
            ValOp = self.operands[1]

            IRValOp = ValOp.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

            assert ResOp.isReg
            IRResOp = IRRegs[ResOp.getIRRegName()]

            tmp = IRBuilder.fptosi(IRValOp, IRResOp.type.pointee)
            IRBuilder.store(tmp, IRResOp)

            return

        if self.opcode == "MUFU": # Multi-Function Unit
            ResOp = self.operands[0]
            ValOp = self.operands[1]
            IRValOp = ValOp.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
            assert ResOp.isReg

            if self.modifiers[0] == "RCP": # Reciprocal
                IRResOp = IRRegs[ResOp.getIRRegName()]
                tmp = IRBuilder.fdiv(llvmir.Constant(IRResOp.type.pointee, 1), IRValOp)
            else:
                raise NotImplementedError

            IRBuilder.store(tmp, IRResOp)
            return
        
        if self.opcode == "IADD3" or self.opcode == "UIADD3" :
            ResOp = self.operands[0]

            if len(self.modifiers) > 0 and self.modifiers[0] == "X":         
                ValOp1 = self.operands[1]
                ValOp2 = self.operands[2]
                ValOp3 = self.operands[3]

                Preg = self.operands[4]

                IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
                IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
                IRValOp3 = ValOp3.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
                IRPreg = Preg.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
                # cast IRPreg to 32 bit
                IRPreg = IRBuilder.zext(IRPreg, llvmir.IntType(32))

                sum = IRBuilder.add(IRValOp1, IRValOp2, "add")
                sum = IRBuilder.add(sum, IRValOp3, "add")
                sum = IRBuilder.add(sum, IRPreg, "add")

                assert ResOp.isReg
                IRResOp = IRRegs[ResOp.getIRRegName()]
                IRBuilder.store(sum, IRResOp)

            else:
                # Currrently, just drop the Carry;
                if self.operands[1].isReg:
                    ValOp1 = self.operands[1]
                    ValOp2 = self.operands[2]
                    ValOp3 = self.operands[3]
                elif self.operands[1].isPReg:
                    ValOp1 = self.operands[2]
                    ValOp2 = self.operands[3]
                    ValOp3 = self.operands[4]


                IRValOp1 = ValOp1.IR_FetchValue(IRBuilder, IRRegs, IRArgs)  
                IRValOp2 = ValOp2.IR_FetchValue(IRBuilder, IRRegs, IRArgs)
                IRValOp3 = ValOp3.IR_FetchValue(IRBuilder, IRRegs, IRArgs)

                assert ResOp.isReg
                IRResOp = IRRegs[ResOp.getIRRegName()]

                sum = IRBuilder.add(IRValOp1, IRValOp2, "add")
                sum = IRBuilder.add(sum, IRValOp3, "add")
                IRBuilder.store(sum, IRResOp)

                if self.operands[1].isPReg:
                    # TODO: Make sure Using comparation is correct; 
                    carry = IRBuilder.icmp_unsigned('<', sum, IRValOp1, name="carry")
                    Preg = self.operands[1]
                    IRPreg = IRRegs[Preg.getIRRegName()]
                    IRBuilder.store(carry, IRPreg)
            
            return
        
        if self.opcode in ("BMOV", "BSYNC", "BSSY"):
            # these instructions managed the warp divergence when the cuda program is executing. In detail, bssy will start the divergence and mark when all the threads in a warp will merge. BSYNC is the merging point. BMOV will clear the registers, i.e., b0, b1, to track the thread execution.
            
            # print(f"Skipping opcode {self.opcode}")
            return
        
        print("Instruction: ", self.opcode)
        raise NotImplementedError

