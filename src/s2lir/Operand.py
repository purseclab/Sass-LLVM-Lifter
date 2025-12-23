from s2lir import *
from utils import *
from llvmlite import ir as llvmir
from s2lir.intrinsics import *
import re
import math
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
SM_75_SpecialReg = ["SR_TID.X", "SR_TID.Y", "SR_TID.Z", "SR_CTAID.X", "SR_CTAID.Y", "SR_CTAID.Z"]

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
        self.ArgID = None
        self.isConstMem = False
        self.const_mem_pre_offset = 0 # c[self.const_mem_pre_offset][self.offset_in_const_mem]
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
        self.typeDesc_confirmed: bool = False
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
        # Swizzle modifier, e.g. .X4
        self.swizzle: int | None = None

    def safe_addrspace_cast(self, IRBuilder, val, dest_ptr_ty):
        """Cast pointer-valued `val` to `dest_ptr_ty` using a NVPTX-safe
        sequence. If the source and destination address spaces are the same
        return a bitcast when necessary. If either side is generic (addrspace
        0) perform a single addrspacecast. If both are non-generic and
        different, cast via a generic intermediate to avoid direct
        non-generic->non-generic addrspacecast which can crash NVPTX lowering.
        """
        src_ty = val.type
    
        # ensure we are actually working with pointers
        if not isinstance(src_ty, llvmir.PointerType) or not isinstance(dest_ptr_ty, llvmir.PointerType):
            raise TypeError(f"safe_addrspace_cast expects pointers, got {src_ty} and {dest_ptr_ty}")

        src_as = src_ty.addrspace
        dest_as = dest_ptr_ty.addrspace

        # Case 1: Same Address Space
        if src_as == dest_as:
            if src_ty == dest_ptr_ty:
                return val
            # different pointee type but same AS. perform bitcast
            return IRBuilder.bitcast(val, dest_ptr_ty)

        # Case 2: Casting to/from Generic (Address Space 0)
        # cvta (convert address) in PTX
        if src_as == 0 or dest_as == 0:
            return IRBuilder.addrspacecast(val, dest_ptr_ty)

        # Case 3: Casting between two different non-generic spaces (e.g., 3 to 5)
        # Most backends (including NVPTX) cannot do this in one step.
        # We MUST bridge through the generic address space (0).
        
        # Bridge to Generic (AS 0)
        generic_ptr_ty = llvmir.PointerType(src_ty.pointee, addr_space=0)
        bridge_val = IRBuilder.addrspacecast(val, generic_ptr_ty)
        
        # Bridge from Generic to Destination
        # If the pointee types also differ, we might need an extra bitcast
        if bridge_val.type.pointee != dest_ptr_ty.pointee:
            final_generic_ty = llvmir.PointerType(dest_ptr_ty.pointee, addr_space=0)
            bridge_val = IRBuilder.bitcast(bridge_val, final_generic_ty) # perform bitcast in generic addrspace
            
        return IRBuilder.addrspacecast(bridge_val, dest_ptr_ty)

    def IR_ValueFromPointer(self, IRBuilder, IRRegs, PinterType, addr_space: int | None = None):

        # Fetch Value from IRPtrOp
        # PtrAddr = IRBuilder.load(IRPtrOp)
        PtrAddr = self.IRReg_Load(IRRegs, IRBuilder)
        # Ensure we have module reference for shared/global lookup
        if self.llvm_module is None:
            self.llvm_module = self.ins.llvm_module
            assert self.llvm_module is not None
        
        PtrAddr = IRBuilder.ptrtoint(PtrAddr, llvmir.IntType(64))
        PtrAddr = IRBuilder.add(PtrAddr, llvmir.Constant(llvmir.IntType(64), self.ptr_offset))

        # Prefer GEP-based lowering for shared/local windows when a kernel
        # shared/global symbol exists in the module. This maps the computed
        # byte address into an element index into the shared array instead of
        # materializing an absolute addrspace pointer via `inttoptr`.
        try:
            from s2lir.Instruction import ADDRSPACE_SHARED, ADDRSPACE_LOCAL
        except Exception:
            ADDRSPACE_SHARED = 3
            ADDRSPACE_LOCAL = 5

        IRVal = None
        if addr_space in (ADDRSPACE_SHARED, ):
            shared_global = None
            for gname, g in self.llvm_module.globals.items():
                if gname.endswith("sdata") or "sdata" in gname:
                    shared_global = g
                    break

            if shared_global is not None:
                # Cast shared global to an i8 pointer in the target address
                # space. Prefer `addrspacecast` when addrspaces differ; fall
                # back to `bitcast` if addrspacecast is unavailable.
                byte_ptr_ty = llvmir.PointerType(llvmir.IntType(8), addr_space)
                shared_as_i8 = self.safe_addrspace_cast(IRBuilder, shared_global, byte_ptr_ty)
                base_int = IRBuilder.ptrtoint(shared_as_i8, llvmir.IntType(64))

                # offset in bytes from base
                offset_bytes = IRBuilder.sub(PtrAddr, base_int, name="shared_offset_bytes")

                # element size in bytes for the requested pointer element type
                if isinstance(PinterType, llvmir.IntType):
                    elem_size = max(1, PinterType.width // 8)
                elif isinstance(PinterType, llvmir.PointerType):
                    elem_size = 8
                elif isinstance(PinterType, llvmir.VectorType):
                    # Vector size = element size * number of elements
                    # e.g., <4 x float> is 4 * 4 = 16 bytes
                    elem_width = PinterType.element.width // 8
                    elem_size = elem_width * PinterType.count
                else:
                    elem_size = 4
                
                # element index = offset_bytes / elem_size
                if (elem_size & (elem_size - 1)) == 0:
                    # Power of two: use fast shift
                    shift_bits = int(math.log2(elem_size))
                    elem_index = IRBuilder.lshr(offset_bytes, llvmir.Constant(llvmir.IntType(64), shift_bits))
                else:
                    # Non-power of two: fallback to the slow sdiv
                    elem_index = IRBuilder.sdiv(offset_bytes, llvmir.Constant(llvmir.IntType(64), elem_size))

                # Perform GEP on a generic (non-addrspace) pointer to avoid
                # addrspace-to-addrspace casts later. Cast the module global
                # into a generic pointer, GEP, then cast the result into the
                # desired addrspace for loads.
                # Build GEP via a generic intermediate to avoid problematic
                # addrspace-to-addrspace casts in the NVPTX backend.
                arr_ty = shared_global.type.pointee
                generic_ptr_ty = llvmir.PointerType(arr_ty)
                try:
                    shared_generic = self.safe_addrspace_cast(IRBuilder, shared_global, generic_ptr_ty)
                except Exception:
                    shared_generic = shared_global

                gep_generic = IRBuilder.gep(shared_generic, [llvmir.Constant(llvmir.IntType(64), 0), elem_index], inbounds=False, name="for_LDG_gep_generic")
                gep_ptr_ty = llvmir.PointerType(PinterType, addr_space)
                gep_in_addr = self.safe_addrspace_cast(IRBuilder, gep_generic, gep_ptr_ty)
                IRVal = IRBuilder.load(gep_in_addr)
                IRVal.align = min(16, elem_size)

        if IRVal is None:
            # Fallback: Fetch value from PtrAddr e.g.,[R2]
            if addr_space is None:
                ptr_ty = llvmir.PointerType(PinterType)
            else:
                ptr_ty = llvmir.PointerType(PinterType, addr_space)
            PtrAddr = IRBuilder.inttoptr(PtrAddr, ptr_ty, "for_LDG")
            IRVal = IRBuilder.load(PtrAddr)

        # Change it to Absolute value
        if self.ptr_abs:
            raise NotImplementedError

        if self.ptr_neg:
            IRVal  = IRBuilder.neg(IRVal)

        return IRVal
    
    def IR_ValueToPointer(self, IRBuilder, IRRegs, PtrOp, IRVal, addr_space: int | None = None, elem_type=None):
        # Fetch address from IRPtrOp
        # PtrAddr = IRBuilder.load(IRPtrOp)
        # Ensure module reference is available for GEP lowering
        if self.llvm_module is None:
            self.llvm_module = self.ins.llvm_module
            assert self.llvm_module is not None

        PtrAddr = PtrOp.IRReg_Load(IRRegs, IRBuilder)
        
        PtrAddr = IRBuilder.ptrtoint(PtrAddr, llvmir.IntType(64))
        PtrAddr = IRBuilder.add(PtrAddr, llvmir.Constant(llvmir.IntType(64), self.ptr_offset))

        # Determine element type for the pointer. If an explicit `elem_type`
        # was provided use it; otherwise derive from `IRVal`.
        if elem_type is None:
            elem_type = IRVal.type

        # Convert address to pointer type with optional address space
        if addr_space is None:
            ptr_ty = llvmir.PointerType(elem_type)
            byte_ptr_ty = llvmir.PointerType(llvmir.IntType(8))
        else:
            ptr_ty = llvmir.PointerType(elem_type, addr_space)
            byte_ptr_ty = llvmir.PointerType(llvmir.IntType(8), addr_space)

        # Prefer GEP-based lowering for shared/local windows when possible.
        try:
            from s2lir.Instruction import ADDRSPACE_SHARED, ADDRSPACE_LOCAL
        except Exception:
            ADDRSPACE_SHARED = 3
            ADDRSPACE_LOCAL = 5

        if addr_space in (ADDRSPACE_SHARED,):
            shared_global = None
            for gname, g in self.llvm_module.globals.items():
                if gname.endswith("sdata") or "sdata" in gname:
                    shared_global = g
                    break

            if shared_global is not None:
                # compute base pointer integer
                shared_as_i8 = self.safe_addrspace_cast(IRBuilder, shared_global, byte_ptr_ty)
                base_int = IRBuilder.ptrtoint(shared_as_i8, llvmir.IntType(64))
                offset_bytes = IRBuilder.sub(PtrAddr, base_int, name="shared_offset_bytes")

                # determine element size in bytes
                if isinstance(elem_type, llvmir.IntType):
                    elem_size = max(1, elem_type.width // 8)
                elif isinstance(elem_type, llvmir.PointerType):
                    elem_size = 8
                elif isinstance(elem_type, llvmir.VectorType):
                    # Vector size = element size * number of elements
                    # e.g., <4 x float> is 4 * 4 = 16 bytes
                    elem_width = elem_type.element.width // 8
                    elem_size = elem_width * elem_type.count
                else:
                    elem_size = 4
                
                # element index = offset_bytes / elem_size
                if (elem_size & (elem_size - 1)) == 0:
                    # Power of two: use fast shift
                    shift_bits = int(math.log2(elem_size))
                    elem_index = IRBuilder.lshr(offset_bytes, llvmir.Constant(llvmir.IntType(64), shift_bits))
                else:
                    # Non-power of two: fallback to the slow sdiv
                    elem_index = IRBuilder.sdiv(offset_bytes, llvmir.Constant(llvmir.IntType(64), elem_size))

                # Perform GEP via a generic intermediate then cast into the
                # destination addrspace. This avoids addrspace-to-addrspace
                # casting which NVPTX backend rejects.
                arr_ty = shared_global.type.pointee
                generic_ptr_ty = llvmir.PointerType(arr_ty)
                try:
                    shared_generic = self.safe_addrspace_cast(IRBuilder, shared_global, generic_ptr_ty)
                except Exception:
                    shared_generic = shared_global

                gep_generic = IRBuilder.gep(shared_generic, [llvmir.Constant(llvmir.IntType(64), 0), elem_index], inbounds=True, name="for_store_gep_generic")
                dest_ptr = self.safe_addrspace_cast(IRBuilder, gep_generic, ptr_ty)

                # Handle absolute or negative value
                if self.ptr_abs or self.ptr_neg:
                    raise InvalidSyntaxException

                # If storing a pointer value into a pointer-typed memory location, ensure
                # the stored pointer has the correct addrspace/pointee via addrspacecast
                # or bitcast as necessary.
                store_val = IRVal
                if isinstance(store_val.type, llvmir.PointerType):
                    if isinstance(ptr_ty.pointee, llvmir.PointerType):
                        dest_ptr_pointee = ptr_ty.pointee
                        if store_val.type != dest_ptr_pointee:
                            # Avoid addrspacecast directly between two non-generic
                            # address spaces. First cast the source to a generic
                            # pointer (addrspace 0), then cast to the desired
                            # destination addrspace. This produces a pattern
                            # generic->non-generic which the NVPTX backend accepts.
                            generic_src = llvmir.PointerType(store_val.type.pointee)
                            v_generic = self.safe_addrspace_cast(IRBuilder, store_val, generic_src)
                            store_val = self.safe_addrspace_cast(IRBuilder, v_generic, dest_ptr_pointee)

                store_inst = IRBuilder.store(store_val, dest_ptr)
                store_inst.align = min(16, elem_size)
                return

        # Fallback to inttoptr + bitcast store
        byte_ptr = IRBuilder.inttoptr(PtrAddr, byte_ptr_ty, "inttoptr_bytes")
        PtrAddr = IRBuilder.bitcast(byte_ptr, ptr_ty, "ptr_cast_for_store")

        # Handle absolute or negative value
        if self.ptr_abs or self.ptr_neg:
            raise InvalidSyntaxException

        IRBuilder.store(IRVal, PtrAddr)
    
    def IR_FetchValue(self, IRBuilder: llvmir.IRBuilder, IRRegs: dict[str, llvmir.instructions.AllocaInstr], IRArgs: dict[int, llvmir.values.Argument]):
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
                if isinstance(self.getIRType(), llvmir.FloatType):
                    IRVal = IRBuilder.fneg(IRVal)
                elif isinstance(self.getIRType(), llvmir.IntType):
                    IRVal = IRBuilder.neg(IRVal)
                else:
                    raise InvalidSyntaxException

            # Apply swizzle modifier if present (e.g., .X4 == multiply by 4)
            if self.swizzle is not None:
                # only support integer swizzle application for now
                if isinstance(self.getIRType(), llvmir.IntType):
                    # swizzle is a power of two (X2, X4, ...)
                    if self.swizzle <= 0 or (self.swizzle & (self.swizzle - 1)) != 0: # second cond checks if its power of two
                        raise InvalidSyntaxException
                    shift_amt = int(math.log2(self.swizzle))
                    IRVal = IRBuilder.shl(IRVal, llvmir.Constant(llvmir.IntType(32), shift_amt), name="swzl_shl")
                else:
                    raise NotImplementedError("Swizzle on non-integer IR type not supported")
            return IRVal
        
        elif self.isConstMem:
            if self.isArg:
                IRVal = self.IRReg_Load(IRRegs, IRBuilder)
            else:
                assert self.offset_in_const_mem not in IRArgs
                assert self.const_mem_pre_offset == 0
                if self.offset_in_const_mem == 0:
                    # c[0x0][0x0]
                    # https://llvm.org/docs/NVPTXUsage.html#overview
                    # based on table here + reading SASS generated and comparing to src code
                    
                    # c[0x0][0x0] is blockdim.x
                    IRVal = IRBuilder.call(nvvm_blockdim_x(self.llvm_module), [], name="nvvm_blockdim_x")
                elif self.offset_in_const_mem == 0x28:
                    # https://stackoverflow.com/questions/77889199/why-there-is-an-unused-data-move-in-the-beginning-of-cuda-kernel
                    # TODO this is subject to change across different SM version
                    # ignore processing
                    IRVal = llvmir.Constant(llvmir.IntType(32), 0)
                elif self.offset_in_const_mem == 0x4:
                    # c[0x0][0x4] shld be blockDim.y
                    IRVal = IRBuilder.call(nvvm_blockdim_y(self.llvm_module), [], name="nvvm_blockdim_y")
                else:
                    print(self.offset_in_const_mem)
                    raise InvalidSyntaxException
            if self.arg_abs:
                raise NotImplementedError
            if self.arg_neg:
                IRVal = IRBuilder.neg(IRVal)
            return IRVal

        elif self.isPReg:
            if self.reg == "PT":
                # NOTE: it could be !PT
                IRVal = llvmir.Constant(llvmir.IntType(1), 1)
            elif self.reg == "UPT":
                IRVal = llvmir.Constant(llvmir.IntType(1), 1)
            else:
                IRVal = IRRegs[self.getRegName()]
                IRVal = IRBuilder.load(IRVal)

            if self.preg_not:
                IRVal = IRBuilder.not_(IRVal)
            return IRVal
        
        elif self.isConst:
            return llvmir.Constant(self.getIRType(), self.Value)

        print(f"Unknown Operand {self}")
        raise NotImplementedError

    def IRReg_Load(self, IRRegs, IRBuilder):
        IRVal = None
        if self.isReg or self.isArg or self.isPtr:
            if self.isReg:
                assert self.reg
            if self.reg:
                IRVal = IRBuilder.load(IRRegs[self.reg], typ=llvmir.IntType(32) if self.isPtr else self.getIRType()) # TODO: Confirm if this changes data layout

                # Apply swizzle modifier for pointer/index operands (e.g., R5.X4)
                if self.swizzle is not None:
                    if isinstance(IRVal.type, llvmir.IntType):
                        if self.swizzle <= 0 or (self.swizzle & (self.swizzle - 1)) != 0:
                            raise InvalidSyntaxException
                        shift_amt = int(math.log2(self.swizzle))
                        IRVal = IRBuilder.shl(IRVal, llvmir.Constant(llvmir.IntType(32), shift_amt), name="swzl_shl")
                    else:
                        raise NotImplementedError("Swizzle on non-integer IR type not supported in IRReg_Load")
                
                
                # TODO: test - place barriers to prevent load reordering
                # asm_ty = llvmir.FunctionType(llvmir.VoidType(), [])
                # inline_asm = llvmir.InlineAsm(asm_ty, "", "~{memory}", side_effect=True)
                # IRBuilder.call(inline_asm, [])
                
            elif self.isArg and self.isConstMem:
                # we need to dynamically get their value and treat it as a pointer, then need to handle how to retrieve the values
                # IRArgs[self.ArgIdxes[ArgID]] = IRFunc.args[ArgID] this gives us a ptr, we can probaby just get the value from here, but that might also mean we need to associate all mentions of the constant value e.g. c[0x0][0x160] to this ptr
                
                # NOTE: isPtr means that the target is a pointer themselves. Const memory from arg is pointer by a pointer, but they might not be isPtr == True
                
                IRVal = self.getArgVal()
                # but then here we dont need to load the adjacent register since the whole thing is already a ptr, so need to opt out of the process below
                return IRVal
            else:
                print(self.ins, self)
                raise InvalidSyntaxException
            if self.isPtr:
                # we need to load the adjacent register, then r6.Val << 32 | r5.Val
                match = re.search(r"^(U?R)(\d+)$", self.getRegName())
                if match:
                    adjRegName = match.group(1)
                    adjRegNumber = int(match.group(2)) + 1
                    adjRegName = adjRegName + str(adjRegNumber)
                    
                    IRVal = IRBuilder.zext(IRVal, llvmir.IntType(64), name="zext")
                    if adjRegName in IRRegs:
                        adjIRReg = IRRegs[adjRegName]
                        adjIRVal = IRBuilder.load(adjIRReg, typ=llvmir.IntType(32) if self.isPtr else self.getIRType())
                    else:
                        adjIRVal = llvmir.Constant(llvmir.IntType(32), 0)
                    adjIRVal = IRBuilder.zext(adjIRVal, llvmir.IntType(64), name="zext") # TODO might not work as expected for ptr or float
                    adjIRVal = IRBuilder.shl(adjIRVal, llvmir.Constant(llvmir.IntType(64), 32), "shl")
                    IRVal = IRBuilder.or_(adjIRVal, IRVal, "or")
                    IRVal = IRBuilder.inttoptr(IRVal, llvmir.PointerType())
                else:
                    raise InvalidSyntaxException
        else:
            raise InvalidSyntaxException
        return IRVal
    
    def IRReg_Store(self, IRRegs, IRBuilder:llvmir.IRBuilder, storeVal, wide_mode=False):
        if not isinstance(storeVal.type, llvmir.FloatType):
            if isinstance(storeVal.type, llvmir.PointerType) or storeVal.type.width == 64:
                assert self.isReg
                wide_mode = True
        if wide_mode:
            assert not self.isPReg
            # we need to split the storeVal into high and lower 32 bits
            if isinstance(storeVal.type, llvmir.PointerType):
                storeVal = IRBuilder.ptrtoint(storeVal, llvmir.IntType(64))
            low_mask = (1 << 32) - 1
            high_mask = low_mask << 32
            IR_high_mask = llvmir.Constant(llvmir.IntType(64), high_mask)
            storeVal_high = IRBuilder.and_(storeVal, IR_high_mask)
            storeVal_high = IRBuilder.lshr(storeVal_high, llvmir.Constant(llvmir.IntType(64), 32))
            storeVal_high = IRBuilder.trunc(storeVal_high, llvmir.IntType(32), "trunc32")
            storeVal_low = IRBuilder.trunc(storeVal, llvmir.IntType(32), "trunc32")
            storeVal = storeVal_low

        if self.isReg or self.isPReg:
            IRReg = IRRegs[self.getRegName()]
            if self.isReg:
                if storeVal.type != llvmir.IntType(32):
                    if storeVal.type == llvmir.FloatType():
                        IRReg = IRBuilder.bitcast(IRReg, llvmir.FloatType().as_pointer())
                    else:
                        raise Exception
            elif self.isPReg:
                if storeVal.type != llvmir.IntType(1):
                    if storeVal.type == llvmir.IntType(32):
                        storeVal = IRBuilder.trunc(storeVal, llvmir.IntType(1))
                    else:
                        raise Exception
            # prevRegName = self.getCurRegName()
            IRBuilder.store(storeVal, IRReg) # TODO: Confirm if this changes data layout
            
            if wide_mode:
                # store high 32 at adjacent register
                adjRegName = self.getAdjRegName()
                IRReg = IRRegs[adjRegName]
                IRBuilder.store(storeVal_high, IRReg)
            return True
        return False
    
    def parse(self):
        content = self.OriginalContent # an element from ["Basicblocks"]["instructions"][.]["content"][1], e.g. an element from ["Basicblocks"]["instructions"][.]["content"][1][0] == "R1" for test_code.json
        # dprint("Operand Content", content)

        # Don't handle .reuse optimization
        content =  content.replace(".reuse", "")

        # Extract swizzle modifier like .X4 and remove from content for further parsing
        swz_match = re.search(r"\.X(\d+)", content)
        if swz_match:
            self.swizzle = int(swz_match.group(1))
            # strip the swizzle token from the content so later parsing is simpler
            content = content.replace(f".X{self.swizzle}", "")

        # Branch Label:  @!P1 BRA `(.L_x_12) ;
        if content.startswith("`"):
            self.isLabel = True
            self.branch_label = content[2:-1] # .L_x_12
            return


        # c[0x][]: Here we need to parse the content between []
        if content.find("c[0x0]") != -1: 
            self.isConstMem = True
            self.offset_in_const_mem = int(content.split("c[0x0][0x")[1].split("]")[0], 16)
            if content.startswith("-"):
                self.arg_neg = True
                content = content[:1]
            if content.startswith("|"):
                assert content.endswith("|")
                self.arg_abs = True
            
            if self.offset_in_const_mem >= 0x160:
                self.isArg = True
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
        if content in SM_75_SpecialReg:
            self.SReg = True
            self.reg = content
            return

        # Predicate Registers
        if (content.startswith("!") and content[1:] in SM_75_Predicate_Reg_Set) or content in SM_75_Predicate_Reg_Set:
            self.isPReg = True
            self.reg = content[1:] if content.startswith("!") else content
            self.preg_not = True if content.startswith("!") else False
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
        if Offset not in self.ins.BB.func.ArgMap:
            self.ins.BB.func.ArgMap[Offset] = {arg}
        else:
            self.ins.BB.func.ArgMap[Offset].add(arg)
        
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
    
    def getRegPrefix(self):
        pattern = r"^(U?R)\d+$"
        match = re.match(pattern, self.reg)
        if match:
            return match.group(1)
        return None

    def getRegNum(self):
        assert self.reg
        # TODO there's other types of reg, like UR
        pattern = r"^U?R(\d+)$"
        match = re.match(pattern, self.reg)
        if match:
            return int(match.group(1))
        return None
    
    def getAdjRegName(self):
        # TODO there's other types of reg, like UR
        return self.getRegPrefix() + str(self.getRegNum() + 1)
    
    def getCurRegName(self):
        return self._getCurIRRegName(self.getRegName())
    
    def _getCurIRRegName(self, reg):
        if reg in self.ins.BB.func.IRRegs_cur_status:
            return self.ins.BB.func.IRRegs_cur_status[reg]
        else:
            return ""
    
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
    
    def get_bit_width(self):
        IRType = self.getIRType()
        if IRType in (llvmir.IntType(32), llvmir.FloatType()):
            return 32
        elif IRType in [llvmir.IntType(1)]:
            return 1
        else:
            raise InvalidSyntaxException
        
    def get_call_func_name_type(self):
        if self.ins.opcode == "CALL" and str(self)[0] == "`":
            pattern = r'^`\((.*?_(f\d+)[^)]*)\)$'
            match = re.match(pattern, str(self))
            if not match:
                raise InvalidSyntaxException
            function_name = match.group(1)
            return_type = match.group(2)
            
            return function_name, return_type

    def getArgVal(self):
        # could prob use IRArgs[self.offset_in_const_mem]
        if self.isArg:
            assert self.ArgID is not None
            # returns the Arg Value
            return self.ins.BB.func.IRArgs[self.ins.BB.func.ArgIdxes[self.ArgID]]
        else:
            raise InvalidSyntaxException