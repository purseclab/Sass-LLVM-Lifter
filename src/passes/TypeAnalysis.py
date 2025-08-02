from collections import Counter
from s2lir import Function, Basicblock, Instruction, Operand
from utils import *
import typing
from passes.ReachingDefinitionsAnalysis import ReachingDefinitionsAnalysis
from pathlib import Path
import json
from llvmlite import ir as llvmir

class TypeAnalysis:
    
    def __init__(self, func):
        self.func : Function.Function  = func
        self.func_args = []
        self._set_func_args()
        self.type_map: dict[tuple[Instruction.Instruction, str], str] = {}  # Map (inst, reg) to type for tracking
        
        current_dir = Path(__file__).parent
        self.project_root = (current_dir / "../..").resolve()
    
        config_path = self.project_root / "launch" / "config.json"
        
        with open(config_path.resolve(), 'r') as file:
            self.config = json.load(file)
        
        self.conflicting_types = {"def_to_use": {}, "use_to_def": {}}
    
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
        func_name, args = parse_function_signature(demangle_symbol(self.func.name))
        assert func_name != self.func.name and func_name in self.func.name
        assert self.func_args == []
        for arg in args:
            isPtr = False
            if arg[-1] == "*":
                isPtr = True
                arg = arg[:-1]
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
                        TypeDesc = "Float32" # should it be Float32* ?
                        
                        # implication: a constant ptr?
                        arg_Op.isPtr = True
                    else:
                        raise InvalidSyntaxException
                    assert arg_Op.isConstMem and arg_Op.isArg
                    arg_Op.setTypeDesc(TypeDesc)
                    self.type_map[(arg_Op.ins, arg_Op.reg)] = TypeDesc
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
                        Op.setTypeDesc("Bool")
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
                        if Op.getTypeDesc() == "NOTYPE" and inst.opcode not in ["BMOV", "MOV", "MUFU", "LOP3", "PLOP3", "ULOP3", "LDG", "BSSY", "CALL", "BSYNC", "RET", "ULDC", "STG"] + ["BRA"]:
                            print(f"Unsolvable type for operand {Op} in instruction {inst}")
                            raise InvalidTypeException("Type analysis incomplete")


        typeAnalysisInfo = ""
        for BB in self.func.blocks:
            typeAnalysisInfo += f"########################## {BB.label} ##########################\n"
            for inst in BB.instructions:
                typeAnalysisInfo += f"############# {inst} #############\n"
                for op in inst.operands:
                    typeAnalysisInfo += f"####### {op} #######\n"
                    if (op.isReg or op.isPReg or op.isPtr) and op.reg:
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
        if inst.opcode in ["FFMA", "FADD", "FMUL", "IMAD", "SHL",  "SHR", "S2R", "FMNMX", "ISETP", "FSETP", "MOV", "UMOV", "LDG", "STG", "IADD", "IADD3", "UIADD3", "LEA", "SHF", "SEL", "FSEL", "MUFU", "ULOP3", "LOP3", "PLOP3", "ULDC", "IABS", "F2I", "I2F"]:
            for i, operand in enumerate(inst.operands):
                if i == 0:
                    operand.is_def = operand.is_def_disqualifier()
                    operand.is_use = False
                else:
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
        elif inst.opcode in ["IMAD", "SHL",  "SHR", "S2R", "IADD3", "UIADD3", "LEA", "SHF", "IABS"] :
            TypeDesc = "Int32"

        if TypeDesc is not None:
            for i, operand in enumerate(inst.operands):
                if not operand.isPReg: # PReg for @P0 would be the last operand
                    operand.setTypeDesc(TypeDesc)
                    self.type_map[(inst, operand.reg)] = TypeDesc

            return TypeDesc
        
        #### Batch 2
        if inst.opcode == "FMNMX":
            for i in range(3):
                inst.operands[i].setTypeDesc("Float32")
                self.type_map[(inst, inst.operands[i].reg)] = "Float32"
            inst.operands[3].setTypeDesc("Bool")
            self.type_map[(inst, inst.operands[3].reg)] = "Bool"
            
            return "Float32"

        #### Batch 3
        if inst.opcode == "ISETP" or inst.opcode == "FSETP":
            if inst.opcode == "ISETP":
                TypeDesc = "Int32"
            elif inst.opcode == "FSETP":
                TypeDesc = "Float32"
            inst.operands[0].setTypeDesc("Bool")
            self.type_map[(inst, inst.operands[0].reg)] = "Bool"
            inst.operands[1].setTypeDesc("Bool")
            self.type_map[(inst, inst.operands[1].reg)] = "Bool"
            inst.operands[2].setTypeDesc(TypeDesc)
            self.type_map[(inst, inst.operands[2].reg)] = TypeDesc
            inst.operands[3].setTypeDesc(TypeDesc)
            self.type_map[(inst, inst.operands[3].reg)] = TypeDesc
            inst.operands[4].setTypeDesc("Bool")
            self.type_map[(inst, inst.operands[4].reg)] = "Bool"
            
            return TypeDesc

        if inst.opcode == "SEL" or inst.opcode == "FSEL":
            if inst.opcode == "SEL":
                TypeDesc = "Int32"
            elif inst.opcode == "FSEL":
                TypeDesc = "Float32"
            inst.operands[0].setTypeDesc(TypeDesc)
            self.type_map[(inst, inst.operands[0].reg)] = TypeDesc
            inst.operands[1].setTypeDesc(TypeDesc)
            self.type_map[(inst, inst.operands[1].reg)] = TypeDesc
            inst.operands[2].setTypeDesc(TypeDesc)
            self.type_map[(inst, inst.operands[2].reg)] = TypeDesc
            inst.operands[3].setTypeDesc("Bool")
            self.type_map[(inst, inst.operands[3].reg)] = "Bool"
            
            return TypeDesc
        
        if inst.opcode == "I2F":
            inst.operands[0].setTypeDesc("Float32")
            self.type_map[(inst, inst.operands[0].reg)] = "Float32"
            inst.operands[1].setTypeDesc("Int32")
            self.type_map[(inst, inst.operands[1].reg)] = "Int32"
            
            return "Float32"
        
        if inst.opcode == "F2I":
            inst.operands[0].setTypeDesc("Int32")
            self.type_map[(inst, inst.operands[0].reg)] = "Int32"
            inst.operands[1].setTypeDesc("Float32")
            self.type_map[(inst, inst.operands[1].reg)] = "Float32"
            
            return "Int32"
        
        return TypeDesc
        
    def PartialSolveType(self, inst):
        if len([op for op in inst.operands if op.getTypeDesc() in ("NOTYPE", "NOTYPE_PTR")]) == 0:
            return False
        
        if inst.opcode in ("MOV", "UMOV"):
            op0 = inst.operands[0]
            op1 = inst.operands[1]
            op0TypeDesc = op0.getTypeDesc()
            op1TypeDesc = op1.getTypeDesc()
            if op0TypeDesc != "NOTYPE" and op1TypeDesc != "NOTYPE":
                assert op0TypeDesc == op1TypeDesc
                return False
            elif op0TypeDesc != "NOTYPE" or op1TypeDesc != "NOTYPE":
                if op0TypeDesc != "NOTYPE":
                    op1.setTypeDesc(op0TypeDesc)
                    self.type_map[(inst, op1.reg)] = op0TypeDesc
                elif op1TypeDesc != "NOTYPE":
                    op0.setTypeDesc(op1TypeDesc)
                    self.type_map[(inst, op0.reg)] = op1TypeDesc
                return True
        
        if inst.opcode in ("ULOP3", "LOP3"):
            changed = False
            op4 = inst.operands[4]
            op4TypeDesc = op4.getTypeDesc()
            if op4TypeDesc != "NOTYPE":
                assert op4TypeDesc == "Int32"
            else:
                op4.setTypeDesc("Int32")
                self.type_map[(inst, op4.reg)] = "Int32"
                changed = True
            
            operands = [inst.operands[0], inst.operands[1], inst.operands[2], inst.operands[3]]

            # Get type descriptions for all 4 operands
            type_descs = [op.getTypeDesc() for op in operands]

            # Count all defined types (i.e., not "NOTYPE")
            defined_types = [t for t in type_descs if t != "NOTYPE"]
            type_counter = Counter(defined_types)

            # Find the most common defined type, and how often it appears
            if type_counter:
                most_common_type, count = type_counter.most_common(1)[0]

                # Only act if 3 or more operands have the same non-NOTYPE type
                if count >= 3:
                    for i, (op, t) in enumerate(zip(operands, type_descs)):
                        if t == "NOTYPE":
                            # Set the missing type to the majority type
                            op.setTypeDesc(most_common_type)
            
            
            return changed
                    
        if inst.opcode == "LDG":
            changes = False
            TypeDescOp1 = inst.operands[1].getTypeDesc()
            
            if TypeDescOp1 is None or TypeDescOp1 == "NOTYPE":
                # at least designate this operand as a PTR so that we can treat it as a PTR later on
                TypeDescOp1 = "NOTYPE_PTR" # 64 bit
                inst.operands[1].setTypeDesc(TypeDescOp1)
                self.type_map[(inst, inst.operands[1].reg)] = TypeDescOp1
                changes = True
                
            TypeDescOp0 = inst.operands[0].getTypeDesc()
            
            if TypeDescOp0 != None and TypeDescOp0 != "NOTYPE":
                if TypeDescOp1 != "NOTYPE_PTR":
                    assert TypeDescOp0 + "_PTR" == TypeDescOp1
                    return changes
                
                # propagate type from op0 to op1
                inst.operands[1].setTypeDesc(TypeDescOp0 + "_PTR")
                self.type_map[(inst, inst.operands[1].reg)] = TypeDescOp0 + "_PTR"
                changes = True
                return changes
            
            if TypeDescOp1 != "NOTYPE" and TypeDescOp1 != "NOTYPE_PTR":
                # propagate type from op1 to op0
                assert '_PTR' in TypeDescOp1
                TypeDescOp0 = TypeDescOp1.replace('_PTR', "")
                inst.operands[0].setTypeDesc(TypeDescOp0)
                self.type_map[(inst, inst.operands[0].reg)] = TypeDescOp0
                changes = True
                return changes
            else:
                return changes
        
        # TODO propagate for ULDG
        
        elif inst.opcode == "STG":
            
            changes = False
            TypeDescOp0 = inst.operands[0].getTypeDesc()
            
            if TypeDescOp0 is None or TypeDescOp0 == "NOTYPE":
                # at least designate this operand as a PTR so that we can treat it as a PTR later on
                TypeDescOp0 = "NOTYPE_PTR" # 64 bit
                inst.operands[0].setTypeDesc(TypeDescOp0)
                self.type_map[(inst, inst.operands[0].reg)] = TypeDescOp0
                changes = True
            
            TypeDescOp1 = inst.operands[1].getTypeDesc()
            
            if TypeDescOp1 != None and TypeDescOp1 != "NOTYPE":
                if TypeDescOp0 != "NOTYPE_PTR":
                    assert TypeDescOp1 + "_PTR" == TypeDescOp0
                    return changes
                
                # propagate type from op1 to op0
                TypeDescOp0 = TypeDescOp1 + "_PTR"
                inst.operands[0].setTypeDesc(TypeDescOp0)
                self.type_map[(inst, inst.operands[0].reg)] = TypeDescOp0
                changes = True
                return changes
            
            if TypeDescOp0 != "NOTYPE" and TypeDescOp0 != "NOTYPE_PTR":
                # propagate type from op0 to op1
                assert '_PTR' in TypeDescOp0
                TypeDescOp1 = TypeDescOp0.replace('_PTR', "")
                inst.operands[1].setTypeDesc(TypeDescOp1)
                self.type_map[(inst, inst.operands[1].reg)] = TypeDescOp1
                changes = True
                return changes
            else:
                return changes    

        elif inst.opcode == "IADD":
            TypeDesc = inst.operands[0].getTypeDesc()
            if TypeDesc != None and TypeDesc != "NOTYPE":
                inst.operands[1].setTypeDesc("Int32")
                self.type_map[(inst, inst.operands[1].reg)] = "Int32"
                inst.operands[2].setTypeDesc(TypeDesc)
                self.type_map[(inst, inst.operands[2].reg)] = TypeDesc
                return True
            else:
                return False
        return False

    def propagate_types(self, inst: Instruction):
        # we need to propagate both from use->def  and def->use. E.g. if we discovered R4 is used as type int, we'd want to set R3 to be int as well for "MOV R4, R3". Similarly, If we figured out R9 is of type int from "IMUL R9, R10, R11", then we'd want to propagate type int to all the use
        
        changed = False
        for Op in inst.operands:
            if (Op.isReg or Op.isPReg) and Op.reg:
                # def->use
                if Op.is_use:
                    reaching_defs = self.reaching_defs._get_reaching_definitions_before(inst)
                    type_dict: dict[str, set[tuple[Operand.Operand, str, str]]] = {} # maps between the type and (Operands [with the type], str(Operand), address of instruction containing the operand)
                    for d_inst, regOp in reaching_defs:
                        if regOp.reg == Op.reg and (d_inst, regOp.reg) in self.type_map:
                            cur_type = self.type_map[(d_inst, regOp.reg)]
                            type_dict[cur_type] = type_dict.get(cur_type, set()) | {(regOp, str(regOp), str(regOp.ins.addr))}
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
                        Op.setTypeDesc(new_type)
                        self.type_map[(inst, Op.reg)] = new_type
                        changed = True
                
                    # use->def
                    useOp = Op
                    useOpType = useOp.getTypeDesc()
                    if useOpType != "NOTYPE":
                        if useOp in self.ud_chain:
                            type_dict: dict[str, set[tuple[Operand.Operand, str, str]]] = {} # maps between the type and (Operands [with the type], str(Operand), address of instruction containing the operand)
                            conflict = False
                            type_dict[useOpType] = type_dict.get(useOpType, set()) | {(useOp, str(useOp), str(useOp.ins.addr))}
                            for defOp in self.ud_chain[useOp]:
                                # note that useOp is type Operand, which is necessary or we'd be mapping the same register at different instruction to the same entry, which would be wrong
                                if defOp.getTypeDesc() != "NOTYPE":
                                    # if str(inst) not in ("SHF.L.U32 R10, R10, 0x17, RZ", "FFMA R24, R10, R9, 1", "IADD3 R9, R24, 0x1800000, RZ", "MOV R9, R22", "FFMA R10, R24, R9, -1", "FFMA R9, R9, R10, R9"):
                                    defOpType = defOp.getTypeDesc()
                                    if defOpType != useOpType:
                                        conflict = True
                                    type_dict[defOpType] = type_dict.get(defOpType, set()) | {(defOp, str(defOp), str(defOp.ins.addr))}
                                else:
                                    defOp.setTypeDesc(useOpType)
                                    changed = True
                            if conflict:
                                
                                # merge type_dict if this specific Operand has been here before so that we dont get a bunch of duplicates
                                if useOp in self.conflicting_types["use_to_def"]:
                                    for typ, values in self.conflicting_types["use_to_def"][useOp].items():
                                        self.conflicting_types["use_to_def"][useOp][typ] = values | (type_dict[typ] if typ in type_dict else set())
                                else:
                                    self.conflicting_types["use_to_def"][useOp] = type_dict
                        else:
                            pass # TODO
                
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