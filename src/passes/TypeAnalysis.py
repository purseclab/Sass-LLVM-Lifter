from collections import Counter
from s2lir import Function, Basicblock, Instruction, Operand
from utils import *
import typing
from passes.ReachingDefinitionsAnalysis import ReachingDefinitionsAnalysis
from pathlib import Path
import json
from llvmlite import ir as llvmir
import os

from enum import Enum

class DataType(str, Enum):
    NOTYPE      = "NOTYPE"
    BOOL        = "Bool"
    INT32       = "Int32"
    FLOAT32     = "Float32"
    VOID        = "Void"
    
    # Pointers
    INT32_PTR   = "Int32_PTR"
    FLOAT32_PTR = "Float32_PTR"
    VOID_PTR    = "Void_PTR"
    NOTYPE_PTR  = "NOTYPE_PTR"
    
    # No nested pointers!

    @classmethod
    def from_str(cls, label):
        """Safe converter that handles raw strings from legacy code."""
        if not isinstance(label, str):
            return cls.NOTYPE
        try:
            return cls(label)
        except ValueError:
            pass
        # Handle nested pointers (e.g., "Int32_PTR_PTR" -> "Int32_PTR")
        if "_PTR" in label:
            # TODO, tmp behavior
            # Find the base type (everything before the first _PTR)
            # and append a single _PTR suffix.
            base_part = label.split("_PTR")[0]
            normalized_ptr = f"{base_part}_PTR"
            
            try:
                return cls(normalized_ptr)
            except ValueError:
                return cls.NOTYPE
        return cls.NOTYPE

        

    @property
    def is_ptr(self):
        return self in (DataType.INT32_PTR, DataType.FLOAT32_PTR, DataType.VOID_PTR, DataType.NOTYPE_PTR)

    def as_ptr(self):
        """Returns the pointer version of this type, or None if not allowed."""
        mapping = {
            DataType.INT32: DataType.INT32_PTR,
            DataType.FLOAT32: DataType.FLOAT32_PTR,
            DataType.VOID: DataType.VOID_PTR,
            DataType.NOTYPE: DataType.NOTYPE_PTR,
        }
        # If I am already a pointer, I cannot become a double pointer
        return mapping.get(self, None)

    def dereference(self):
        """Returns the value version of this pointer, or None if not a pointer."""
        mapping = {
            DataType.INT32_PTR: DataType.INT32,
            DataType.FLOAT32_PTR: DataType.FLOAT32,
            DataType.VOID_PTR: DataType.VOID,
            DataType.NOTYPE_PTR: DataType.NOTYPE,
        }
        return mapping.get(self, None)

class TypeAnalysis:
    
    def __init__(self, func):
        self.func : Function.Function  = func
        self.func_args = []
        self._set_func_args()
        self.type_map: dict[Operand.Operand, str] = {} # we previously tracked based on (instr, str), but the same instruction can have the same register name for both source and dest and they will prob have different types
        
        current_dir = Path(__file__).parent
        self.project_root = (current_dir / "../..").resolve()

        config_folder_name = os.environ.get('PARENT_FOLDER_NAME', 'launch')
        config_path = self.project_root / config_folder_name / "config.json"
        
        with open(config_path.resolve(), 'r') as file:
            self.config = json.load(file)
        
        self.conflicting_types = {"def_to_use": {}, "use_to_def": {}}
        
        self.confident_types: set[Operand.Operand] = set() # operands whose types are finalized
    
    def op_freeze_type(self, op: Operand.Operand):
        self.confident_types.add(op)
        op.typeDesc_confirmed = True

    def op_add_type(self, op: Operand.Operand, type_input: str | DataType, inst=None, forced=False):
        if isinstance(type_input, DataType):
            new_type = type_input
        else:
            new_type = DataType.from_str(type_input)
        
        if new_type == DataType.NOTYPE:
            return False
        
        current_type_str = op.getTypeDesc()
        if op.typeDesc_confirmed and not forced:
            return False
        
        if current_type_str == "NOTYPE" or (current_type_str != new_type.value):
            op.setTypeDesc(new_type.value)
            self.type_map[op] = new_type.value
            if inst is not None:
                assert inst == op.ins
            return True

        return False
    
    def begin(self):
        for BB in self.func.blocks:
            for inst in BB.instructions:
                # is_use and is_def need to be set before ReachingDefinitionsAnalysis
                self.assign_use_def(inst)

        self.reaching_defs = ReachingDefinitionsAnalysis(self.func)
        
        self.ud_chain = self.get_UD_chain()
        
        self.func.getArgs()
        self.set_func_args_type()
        
        self.__apply()
        
    def _set_func_args(self):
        if self.func.internal_func:
            return
        
        func_name, args = parse_function_signature(demangle_symbol(self.func.name))
        assert func_name != self.func.name and func_name in self.func.name
        assert self.func_args == []
        for arg in args:
            isPtr = False
            if arg[-1] == "*":
                isPtr = True
                arg = arg[:-1]
            if "const" in arg:
                arg = arg.replace("const", "")
            arg = arg.strip()
            if arg == "float":
                if isPtr:
                    self.func_args.append(llvmir.FloatType().as_pointer())
                else:
                    self.func_args.append(llvmir.FloatType())
            elif arg == "int":
                if isPtr:
                    self.func_args.append(llvmir.IntType(32).as_pointer())
                else:
                    self.func_args.append(llvmir.IntType(32))
            else:
                raise InvalidSyntaxException
    
    def set_func_args_type(self):
        if self.func.internal_func:
            return
        assert len(self.func.Args) == len(self.func_args)
        for i, arg_Ops in enumerate(self.func.Args):
            for arg_Op in arg_Ops:
                argCurType = arg_Op.getTypeDesc()
                
                if argCurType == "NOTYPE":
                    TypeDesc = self.func_args[i]
                    if TypeDesc == llvmir.IntType(32):
                        TypeDesc = "Int32"
                    elif TypeDesc == llvmir.FloatType():
                        TypeDesc = "Float32"
                    elif TypeDesc == llvmir.FloatType().as_pointer():
                        # TODO confirm, has isPtr already been set, is this the right way..
                        TypeDesc = "Float32_PTR" # should it be Float32* ?
                        # implication: a constant ptr?
                        arg_Op.isPtr = True
                    elif TypeDesc == llvmir.IntType(32).as_pointer():
                        # TODO confirm, has isPtr already been set, is this the right way..
                        TypeDesc = "Int32_PTR" # should it be Float32* ?
                        # implication: a constant ptr?
                        arg_Op.isPtr = True
                    else:
                        raise InvalidSyntaxException
                    assert arg_Op.isConstMem and arg_Op.isArg
                    self.op_add_type(arg_Op, TypeDesc)
                    self.op_freeze_type(arg_Op)
                else:
                    raise InvalidSyntaxException
    
    def __apply(self):

        # Set RZ, URZ, PZ to 0
        # for BB in self.func.blocks:
        #     for inst in BB.instructions:
        #         # Set Predicate TypeDesc
        #         for Op in inst.operands:
        #             if Op.isReg and ( Op.reg == "RZ" or Op.reg == "URZ" ):
        #                 Op.isReg = False
        #                 Op.isConst = True
        #                 Op.Value = 0
                    # if Op.isPReg and (Op.reg == "PT" or Op.reg == "UPT"):
                    #     Op.isPReg = False
                    #     Op.isConst = True
                    #     Op.Value = 1
                    # Op.setTypeDesc("Int")
                    # if Op.isRZ or Op.isURZ or Op.isPRZ:
                    #     Op.setTypeDesc("Int")

        # Set the Type of PReg to 0
        for BB in self.func.blocks:
            for inst in BB.instructions:
                # Set Predicate TypeDesc
                for Op in inst.operands:
                    if Op.isPReg:
                        self.op_add_type(Op, "Bool")
                        self.op_freeze_type(Op)
                        continue
                if self.DirectlySolveType(inst) is None:
                    self.PartialSolveType(inst)
        
        
        # Iterative solving until convergence
        changed = True
        while changed:
            changed = False
            for i, BB in enumerate(self.func.blocks):
                for inst in BB.instructions:
                    # Partial solving
                    if self.PartialSolveType(inst):
                        changed = True
                    # Propagate types
                    if self.propagate_types(inst):
                        changed = True

        # Report unsolvable types
        
        if not self.config["allow_incomplete_type_analysis"]:
            for BB in self.func.blocks:
                for inst in BB.instructions:
                    for Op in inst.operands:
                        if Op.getTypeDesc() == "NOTYPE" and inst.opcode not in ["BMOV", "MOV", "MUFU", "LOP3", "PLOP3", "ULOP3", "LDG", "LDS", "BSSY", "CALL", "BSYNC", "RET", "ULDC", "STG", "STS", "BAR"] + ["BRA"]:
                            print(f"Unsolvable type for operand {Op} in instruction {inst}")
                            raise InvalidTypeException("Type analysis incomplete")


        typeAnalysisInfo = ""
        for BB in self.func.blocks:
            typeAnalysisInfo += f"########################## {BB.label} ##########################\n"
            for inst in BB.instructions:
                typeAnalysisInfo += f"############# {inst} #############\n"
                for op in inst.operands:
                    typeAnalysisInfo += f"####### {op} #######\n"
                    if (op.isReg or op.isPReg or op.isPtr or op.isConstMem):
                        info = self.get_use_def_info(inst, op)
                        for key, val  in  info.items():
                            if key in ("defs_reaching", "kill_set"):
                                val = sorted(list(val), key=lambda x: int(x[0].addr, 16))
                                typeAnalysisInfo += f"{key}: {[f'({inst.addr}, {reg})' for inst, reg in val]}\n"
                            else:
                                typeAnalysisInfo += f"{key}: {val}\n"
                        typeAnalysisInfo += f"Typedesc: {op.getTypeDesc()}\n"
                    typeAnalysisInfo += "\n"
                        
        typeAnalysisInfo += "\n\n\n======================= Conflicting Types Report =======================\n\n"
        typeAnalysisInfo += "There are two sections: 'def_to_use' and 'use_to_def'. The asterisks seperates different instances of conflict\n\n"
        typeAnalysisInfo += self.stringify_conflicting_types()
        typeAnalysisInfo_path = (self.project_root / "output/debug" / f"typeAnalysisInfo/{self.func.name}.txt").resolve()
        with open(typeAnalysisInfo_path, "w") as f:
            f.write(typeAnalysisInfo)
    
    def assign_use_def(self, inst: Instruction):
        if inst.opcode == "BAR":
            # BAR is a synchronization, does not define or use general registers
            for operand in inst.operands:
                operand.is_def = False
                operand.is_use = False
            return

        if inst.opcode in ["FFMA", "FADD", "FMUL", "IMAD", "SHL",  "SHR", "S2R", "FMNMX", "ISETP", "UISETP", "FSETP", "MOV", "UMOV", "LDG", "LDS", "STG", "STS", "IADD", "IADD3", "UIADD3", "LEA", "SHF", "USHF", "SEL", "FSEL", "MUFU", "ULOP3", "LOP3", "PLOP3", "ULDC", "IABS", "F2I", "I2F"]:
            for i, operand in enumerate(inst.operands):
                if i == 0:
                    # first operand of this instruction is a def
                    operand.is_def = operand.is_def_disqualifier()
                    operand.is_use = False
                else:
                    # all other operands are a use
                    operand.is_use = operand.is_use_disqualifier()
                    operand.is_def = False
                    
    def stringify_conflicting_types(self) -> str:
        output = []

        def section_to_str(section_name: str, hashes_major: int, hashes_minor: int) -> str:
            result = [f"{'=' * hashes_major} {section_name} {'=' * hashes_major}"]
            for Op in self.conflicting_types.get(section_name, {}):
                type_dict = self.conflicting_types[section_name][Op]
                for typ in sorted(list(type_dict.keys())):
                    entries = type_dict[typ]
                    result.append(f"\n{'#' * hashes_minor} Type: {typ} {'#' * hashes_minor}")
                    for _, reg_str, addr_str in sorted(list(entries), key=lambda x: int(x[2], 16)):
                        result.append(f"Operand: {reg_str}; Instruction Addr: {addr_str}")
                result.append("\n"+"*" * 40)
            return "\n".join(result)

        output.append(section_to_str("def_to_use", 20, 5))
        output.append("")  # empty line between sections
        output.append(section_to_str("use_to_def", 20, 5))

        return "\n".join(output)

    
    # Directly resolve the type description, this is mainly working for binary operation
    def DirectlySolveType(self, inst: Instruction):
        TypeDesc = None
        
        if len([op for op in inst.operands if op.getTypeDesc() == "NOTYPE"]) == 0:
            return None

        #### Batch 1
        if inst.opcode in ["FFMA", "FADD", "FMUL"]:
            TypeDesc = "Float32"
        elif inst.opcode in ["IMAD", "SHL",  "SHR", "S2R", "IADD3", "UIADD3", "LEA", "SHF", "USHF", "IABS"] :
            TypeDesc = "Int32"

        if TypeDesc is not None:
            for i, operand in enumerate(inst.operands):
                if not operand.isPReg: # PReg for @P0 would be the last operand
                    self.op_add_type(operand, TypeDesc, inst)

            return TypeDesc
        
        #### Batch 2
        if inst.opcode == "FMNMX":
            for i in range(3):
                self.op_add_type(inst.operands[i], "Float32", inst)
            self.op_add_type(inst.operands[3], "Bool", inst)
            
            return "Float32"

        #### Batch 3
        if inst.opcode == "ISETP" or inst.opcode == "UISETP" or inst.opcode == "FSETP":
            if inst.opcode == "ISETP":
                TypeDesc = "Int32"
            elif inst.opcode == "FSETP":
                TypeDesc = "Float32"
            self.op_add_type(inst.operands[0], "Bool", inst)
            self.op_add_type(inst.operands[1], "Bool", inst)
            self.op_add_type(inst.operands[2], TypeDesc, inst)
            self.op_add_type(inst.operands[3], TypeDesc, inst)
            self.op_add_type(inst.operands[4], "Bool", inst)
            
            return TypeDesc

        if inst.opcode == "SEL" or inst.opcode == "FSEL":
            if inst.opcode == "SEL":
                TypeDesc = "Int32"
            elif inst.opcode == "FSEL":
                TypeDesc = "Float32"
            
            self.op_add_type(inst.operands[0], TypeDesc, inst)
            self.op_add_type(inst.operands[1], TypeDesc, inst)
            self.op_add_type(inst.operands[2], TypeDesc, inst)
            self.op_add_type(inst.operands[3], "Bool", inst)
            
            return TypeDesc
        
        if inst.opcode == "I2F":
            self.op_add_type(inst.operands[0], "Float32", inst)
            self.op_add_type(inst.operands[1], "Int32", inst)
            return "Float32"
        
        if inst.opcode == "F2I":
            self.op_add_type(inst.operands[0], "Int32", inst)
            self.op_add_type(inst.operands[1], "Float32", inst)
            
            return "Int32"
        
        return TypeDesc
        
    def PartialSolveType(self, inst):
        """
        Iteratively solves types for instructions where the type is not immediately obvious
        but can be inferred from neighbors (e.g., MOV, Load/Store, Bitwise logic).
        """
        
        # Quick check: If all operands already have types, nothing to solve.
        # We use DataType.from_str to safely check even if types are currently strings.
        if all(DataType.from_str(op.getTypeDesc()) not in (DataType.NOTYPE, DataType.NOTYPE_PTR) for op in inst.operands):
            return False

        # =========================================================
        # Case 1: MOV / UMOV (Type Propagation)
        # Logic: If A = B, then Type(A) == Type(B).
        # =========================================================
        if inst.opcode in ("MOV", "UMOV"):
            op0 = inst.operands[0] # Dest
            op1 = inst.operands[1] # Src
            
            type0 = DataType.from_str(op0.getTypeDesc())
            type1 = DataType.from_str(op1.getTypeDesc())

            # If we know Dest but not Src -> Propagate to Src
            if type0 != DataType.NOTYPE and type1 == DataType.NOTYPE:
                return self.op_add_type(op1, type0, inst)
            
            # If we know Src but not Dest -> Propagate to Dest
            elif type1 != DataType.NOTYPE and type0 == DataType.NOTYPE:
                return self.op_add_type(op0, type1, inst)
                
            # Both known: Consistency check (optional)
            if type0 != DataType.NOTYPE and type1 != DataType.NOTYPE:
                if type0 != type1:
                    # TODO: conflict
                    pass
                return False

        # =========================================================
        # Case 2: ULOP3 / LOP3 (Bitwise Logic)
        # Corrected: Op 0 is the Destination (Output). Ops 1, 2, 3 are Sources.
        # =========================================================
        elif inst.opcode in ("ULOP3", "LOP3"):
            changed = False

            # LOP3 has two formats:
            # A) With Predicate Dest: LOP3.LUT Pu, Rd, Ra, Sb, Rc, Imm, Pcond
            # B) No Predicate Dest:   LOP3.LUT Rd, Ra, Sb, Rc, Imm, Pcond
            # Detect format A vs B by checking if the first operand is a predicate reg.
            firstOp = inst.operands[0]
            if firstOp.isPReg:
                # Format A: predicate destination present
                pu_op = inst.operands[0]
                res_op = inst.operands[1]
                val_ops = [inst.operands[2], inst.operands[3], inst.operands[4]]
            else:
                pu_op = None
                res_op = inst.operands[0]
                val_ops = [inst.operands[1], inst.operands[2], inst.operands[3]]

            # Ensure predicate dest is Bool
            if pu_op is not None:
                changed |= self.op_add_type(pu_op, DataType.BOOL, inst)

            # Collect current types for the result and sources
            relevant_ops = [res_op] + val_ops
            current_types = [DataType.from_str(op.getTypeDesc()) for op in relevant_ops]
            known_types = [t for t in current_types if t != DataType.NOTYPE]
            
            # 3. Logic: LOP3 is inherently a bitwise integer operation.
            # Heuristic A: If any operand is already confirmed as Int32, use that.
            target_type = DataType.NOTYPE
            if DataType.INT32 in known_types:
                target_type = DataType.INT32
            # Heuristic B: Voting - if mixed known types appear, take the most common.
            elif known_types:
                from collections import Counter
                most_common, count = Counter(known_types).most_common(1)[0]
                if count >= 1:
                    target_type = most_common
            
            # Heuristic C: Strong Default - LOP3 is almost always Int32; assume Int32 when unknown.
            else:
                target_type = DataType.INT32

            # Apply the resolved type to destination and sources (registers only)
            if target_type != DataType.NOTYPE:
                for op in relevant_ops:
                    if not op.isPReg and DataType.from_str(op.getTypeDesc()) == DataType.NOTYPE:
                        changed |= self.op_add_type(op, target_type, inst)

            return changed

        # =========================================================
        # Case 3: Memory Access (LDG, LDS, STG, STS)
        # Logic: Enforce strict Ptr <-> Value relationships.
        # =========================================================
        elif inst.opcode in ("LDG", "LDS", "STG", "STS"):
            changed = False
            
            # Identify roles based on opcode
            if inst.opcode in ("LDG", "LDS"):
                # Load: Val = MEM[Addr]
                val_op, addr_op = inst.operands[0], inst.operands[1]
            else: # STG, STS
                # Store: MEM[Addr] = Val
                addr_op, val_op = inst.operands[0], inst.operands[1]

            type_val = DataType.from_str(val_op.getTypeDesc())
            type_addr = DataType.from_str(addr_op.getTypeDesc())

            # 3A: Infer Address from Value
            # We know we are loading/storing an Int32 -> Address must be Int32_PTR
            if type_val != DataType.NOTYPE and (type_addr == DataType.NOTYPE or type_addr == DataType.NOTYPE_PTR):
                required_ptr = type_val.as_ptr()
                if required_ptr:
                    changed |= self.op_add_type(addr_op, required_ptr, inst)
                else:
                    # Edge case: Trying to load a type that cannot be pointed to?
                    pass

            # 3B: Infer Value from Address
            # We know address is Int32_PTR -> Value must be Int32
            elif type_addr != DataType.NOTYPE and type_addr != DataType.NOTYPE_PTR and type_val == DataType.NOTYPE:
                deref_type = type_addr.dereference()
                if deref_type:
                    changed |= self.op_add_type(val_op, deref_type, inst)
                else:
                    # Edge case: Address is not a valid pointer type?
                    pass

            # 3C: Address Propagation (Ptr -> Ptr)
            # If the address is NOTYPE, but we treat it as a generic pointer temporarily
            # This handles cases where we don't know the data type yet, but we know it's a pointer.
            if type_addr == DataType.NOTYPE:
                type_addr = DataType.NOTYPE_PTR
                changed |= self.op_add_type(addr_op, type_addr, inst)

            return changed

        # =========================================================
        # Case 4: Integer Arithmetic (IADD)
        # Logic: Integer Add implies Int32
        # =========================================================
        elif inst.opcode == "IADD":
            # IADD Dest, Src1, Src2
            # If any operand is known, we might enforce others.
            # Usually IADD is strictly Int32.
            
            changed = False
            # Check if any operand suggests this is valid
            types = [DataType.from_str(op.getTypeDesc()) for op in inst.operands]
            
            # If we know at least one is Int32, or if we strictly enforce IADD = Int32:
            if any(t == DataType.INT32 for t in types) or True: # Assuming IADD is always Int32
                for op in inst.operands[:3]: # Usually 3 operands
                     if DataType.from_str(op.getTypeDesc()) == DataType.NOTYPE:
                         changed |= self.op_add_type(op, DataType.INT32, inst)
            
            return changed

        return False

    def propagate_types(self, inst: Instruction):
        # we need to propagate both from use->def  and def->use. E.g. if we discovered R4 is used as type int, we'd want to set R3 to be int as well for "MOV R4, R3". Similarly, If we figured out R9 is of type int from "IMUL R9, R10, R11", then we'd want to propagate type int to all the use
        
        changed = False
        for Op in inst.operands:
            if (Op.isReg or Op.isPReg) and Op.reg:
                # def->use
                if Op.is_use:
                    reaching_defs = self.reaching_defs._get_reaching_definitions_before(inst)
                    type_dict = {}
                    for d_inst, regOp in reaching_defs:
                        if regOp.reg == Op.reg and regOp in self.type_map:
                            cur_type = self.type_map[regOp]
                            type_dict[cur_type] = type_dict.get(cur_type, set()) | {(regOp, str(regOp), str(d_inst.addr))}
                    if Op.getTypeDesc() != "NOTYPE":
                        cur_type = Op.getTypeDesc()
                        type_dict[cur_type] = type_dict.get(cur_type, set()) | {(Op, str(Op), str(Op.ins.addr))}
                    
                    if len(type_dict) > 1:
                        # if str(inst) not in ("SHF.L.U32 R10, R10, 0x17, RZ", "FFMA R24, R10, R9, 1", "IADD3 R9, R24, 0x1800000, RZ", "FFMA R10, R24, R9, -1", "FFMA R9, R9, R10, R9"):
                        
                        # merge type_dict if this specific Operand has been here before so that we dont get a bunch of duplicates
                        if Op in self.conflicting_types["def_to_use"]:
                            for typ, values in self.conflicting_types["def_to_use"][Op].items():
                                self.conflicting_types["def_to_use"][Op][typ] = values | (type_dict[typ] if typ in type_dict else set())
                        else:
                            self.conflicting_types["def_to_use"][Op] = type_dict
                    elif len(type_dict) == 1 and Op.getTypeDesc() == "NOTYPE":
                        new_type = list(type_dict)[0]
                        changed = self.op_add_type(Op, new_type, inst)
                
                    # use->def
                    if Op.is_use:
                        useOp = Op
                        
                        useOpType = self.type_map.get(useOp, DataType.NOTYPE.value)
                        
                        # only propagate if the Use actually has a type
                        if useOpType != DataType.NOTYPE.value:
                            
                            if useOp in self.ud_chain:
                                # (Your original dictionary structure)
                                type_dict = {} 
                                conflict = False
                                
                                # Add the 'Use' itself to the history
                                type_dict[useOpType] = type_dict.get(useOpType, set()) | {(useOp, str(useOp), str(useOp.ins.addr))}
                                
                                for defOp in self.ud_chain[useOp]: # # note that useOp is type Operand, which is necessary or we'd be mapping the same register at different instruction to the same entry, which would be wrong
                                    defOpType = self.type_map.get(defOp, DataType.NOTYPE.value)

                                    # CASE A: Definition already has a type
                                    if defOpType != DataType.NOTYPE.value:
                                        
                                        # Check for conflict
                                        if defOpType != useOpType:
                                            conflict = True
                                        
                                        # Add to history
                                        type_dict[defOpType] = type_dict.get(defOpType, set()) | {(defOp, str(defOp), str(defOp.ins.addr))}
                                    
                                    # CASE B: Definition is empty (NOTYPE)
                                    else:
                                        # Propagate backward! 
                                        changed |= self.op_add_type(defOp, useOpType)

                                # Handle Conflicts (reporting logic)
                                if conflict:
                                    if useOp in self.conflicting_types["use_to_def"]:
                                        for typ, values in self.conflicting_types["use_to_def"][useOp].items():
                                            # Merge sets
                                            current_set = self.conflicting_types["use_to_def"][useOp].get(typ, set())
                                            new_set = type_dict.get(typ, set())
                                            self.conflicting_types["use_to_def"][useOp][typ] = current_set | new_set
                                    else:
                                        self.conflicting_types["use_to_def"][useOp] = type_dict
                
        return changed


    def get_kill_set_for_instruction(self, inst):
        """Return the kill set for a given instruction as (inst, reg) pairs."""
        return {(inst, reg) for reg in inst.get_kill_set()}

    def get_use_def_info(self, inst: Instruction, operand: Operand):
        """
        Return use-def information for a specific operand.
        Returns a dict with 'is_use', 'is_def', 'defs_reaching', and 'kill_set'.
        Note: UD Chain (Use-Def Chain): For each use, list the definitions that could have provided its value.
        """
        info = {
            "is_def": operand.is_def,
            "is_use": operand.is_use,
            "kill_set": self.get_kill_set_for_instruction(inst),
            "defs_reaching": [],
            "reaches_next": False # Check if this operand's definition reaches the next instruction
        }
        
        # if self.config["allow_temp_behavior"]:
        #     pass
        #     # if operand.is_def is None:
        #     #     assert operand.is_use is not None
        #     #     assert operand.is_use == True
        #     # elif operand.is_use is None:
        #     #     assert operand.is_def is not None
        #     #     assert operand.is_def == True
        #     # else:
        #     #     assert operand.is_def ^ operand.is_use
        # else:
        #     assert operand.is_def ^ operand.is_use # cannot both be true/false

        if (operand.isReg or operand.isPReg or operand.isPtr) and operand.reg:
            # Get definitions reaching this instruction
            reaching_defs = self.reaching_defs.get_reaching_definitions_before(inst)
            # Filter for this operand's register
            info["defs_reaching"] = [(d_inst, reg) for d_inst, reg in reaching_defs if reg == operand.reg]
            # Check if this operand's definition reaches the next instruction
            if operand.is_def:
                defs_after = self.reaching_defs.get_reaching_definitions_after(inst)
                info["reaches_next"] = (inst, operand.reg) in defs_after
        elif operand.isConstMem:
            pass
        else:
            raise Exception
        
        return info
    
    def get_DU_chain(self) -> dict[Operand.Operand, typing.Set[Operand.Operand]]:
        du_chain: dict[Operand.Operand, typing.Set[Operand.Operand]] = {}
        
        ud_chain: dict[Operand.Operand, typing.Set[Operand.Operand]] = self.get_UD_chain()
        
        for use, defs in ud_chain.items():
            for definition in defs:
                du_chain_def_tmp = du_chain.get(definition, set())
                du_chain[definition] = du_chain_def_tmp | {use}
                assert len(du_chain_def_tmp) + 1 == len(du_chain[definition])
        
        return du_chain
    
    def get_UD_chain(self) -> dict[Operand.Operand, typing.Set[Operand.Operand]]:
        ud_chain: dict[Operand.Operand, typing.Set[Operand.Operand]] = {}
        
        for BB in self.func.blocks:
            for inst in BB.instructions:
                instReachingUse = self.reaching_defs._get_reaching_definitions_before(inst)
                
                reg_to_DefOp: dict[str, set[Operand.Operand]] = dict() # Register name (type str) to Defintion operands
                
                
                for reachingInst, registerOp in instReachingUse:
                    reg_to_DefOp_tmp = reg_to_DefOp.get(registerOp.reg, set())
                    reg_to_DefOp[registerOp.reg] = reg_to_DefOp_tmp | {registerOp}
                    assert len(reg_to_DefOp_tmp) + 1 == len(reg_to_DefOp[registerOp.reg])
                
                for op in inst.operands:
                    if op.is_use:
                        assert op not in ud_chain
                        ud_chain[op] = reg_to_DefOp.get(op.reg, set())
        
        return ud_chain