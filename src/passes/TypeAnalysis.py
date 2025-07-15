
from s2lir import Function, Basicblock, Instruction, Operand
from utils import *
import typing
from passes.ReachingDefinitionsAnalysis import ReachingDefinitionsAnalysis
from pathlib import Path
import json

class TypeAnalysis:
    
    def __init__(self, func):
        self.func : Function.Function  = func
        
        for BB in self.func.blocks:
            for inst in BB.instructions:
                # is_use and is_def need to be set before ReachingDefinitionsAnalysis
                self.assign_use_def(inst)

        self.reaching_defs = ReachingDefinitionsAnalysis(func)
        self.type_map: dict[tuple[Instruction.Instruction, str], str] = {}  # Map (inst, reg) to type for tracking
        
        current_dir = Path(__file__).parent
        self.project_root = (current_dir / "../..").resolve()
    
        config_path = self.project_root / "launch" / "config.json"
        
        with open(config_path.resolve(), 'r') as file:
            self.config = json.load(file)
        
        self.__apply()
        
        
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
            for BB in self.func.blocks:
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
                        if Op.getTypeDesc() == "NOTYPE":
                            print(f"Unsolvable type for operand {Op} in instruction {inst}")
                            raise InvalidTypeException("Type analysis incomplete")


        typeAnalysisInfo = ""
        for BB in self.func.blocks:
            typeAnalysisInfo += f"########################## {BB.label} ##########################\n"
            for inst in BB.instructions:
                typeAnalysisInfo += f"############# {inst} #############\n"
                for op in inst.operands:
                    typeAnalysisInfo += f"####### {op} #######\n"
                    if (op.isReg or op.isPReg) and op.reg:
                        info = self.get_use_def_info(inst, op)
                        for key, val  in  info.items():
                            if key in ("defs_reaching", "kill_set"):
                                typeAnalysisInfo += f"{key}: {[f'({inst.addr}, {reg})' for inst, reg in val]}\n"
                            else:
                                typeAnalysisInfo += f"{key}: {val}\n"
                        typeAnalysisInfo += f"Typedesc: {op.getTypeDesc()}\n"
                    typeAnalysisInfo += "\n"
                        
        typeAnalysisInfo_path = (self.project_root / "output/debug" / f"typeAnalysisInfo/{self.func.name}.txt").resolve()
        with open(typeAnalysisInfo_path, "w") as f:
            f.write(typeAnalysisInfo)
    
    def assign_use_def(self, inst: Instruction):
        if inst.opcode in ["FFMA", "FADD", "IMAD", "SHL",  "SHR", "S2R", "FMNMX", "ISETP", "MOV", "LDG", "STG", "IADD"]:
            for i, operand in enumerate(inst.operands):
                if i == 0:
                    operand.is_def = operand.is_def_disqualifier()
                    operand.is_use = False
                else:
                    operand.is_use = operand.is_use_disqualifier()
                    operand.is_def = False
                    
    # Directly resolve the type description, this is mainly working for binary operation
    def DirectlySolveType(self, inst: Instruction):
        TypeDesc = None
        
        if len([op for op in inst.operands if op.getTypeDesc() == "NOTYPE"]) == 0:
            return None

        #### Batch 1
        if inst.opcode in ["FFMA", "FADD"]:
            TypeDesc = "Float32"
        elif inst.opcode in ["IMAD", "SHL",  "SHR", "S2R"] :
            TypeDesc = "Int32"

        if TypeDesc is not None:
            for i, operand in enumerate(inst.operands):
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
        if inst.opcode == "ISETP":
            TypeDesc = "Float32"
            inst.operands[0].setTypeDesc("Bool")
            self.type_map[(inst, inst.operands[0].reg)] = "Bool"
            inst.operands[1].setTypeDesc("Bool")
            self.type_map[(inst, inst.operands[1].reg)] = "Bool"
            inst.operands[2].setTypeDesc("Int32")
            self.type_map[(inst, inst.operands[2].reg)] = "Int32"
            inst.operands[3].setTypeDesc("Int32")
            self.type_map[(inst, inst.operands[3].reg)] = "Int32"
            inst.operands[4].setTypeDesc("Bool")
            self.type_map[(inst, inst.operands[4].reg)] = "Bool"
            
            return TypeDesc # TODO ????

        return TypeDesc
        
    def PartialSolveType(self, inst):
        if len([op for op in inst.operands if op.getTypeDesc() == "NOTYPE"]) == 0:
            return False
        
        if inst.opcode == "MOV":
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
                elif op1TypeDesc != "NOTYPE":
                    op0.setTypeDesc(op1TypeDesc)
                return True
            
                    
        if inst.opcode == "LDG":
            TypeDesc = inst.operands[0].getTypeDesc()

            
            if TypeDesc != None and TypeDesc != "NOTYPE":
                inst.operands[1].setTypeDesc(TypeDesc + "_PTR")
                self.type_map[(inst, inst.operands[1].reg)] = TypeDesc + "_PTR"
                return True
            
            TypeDesc = inst.operands[1].getTypeDesc()
            if TypeDesc != None and TypeDesc != "NOTYPE":
                assert '_PTR' in TypeDesc
                inst.operands[0].setTypeDesc(TypeDesc.replace('_PTR', ""))
                self.type_map[(inst, inst.operands[0].reg)] = TypeDesc.replace("_PTR", "")
            else:
                return False
        
        elif inst.opcode == "STG":
            
            TypeDesc = inst.operands[1].getTypeDesc()
            if TypeDesc != None and TypeDesc != "NOTYPE":
                inst.operands[0].setTypeDesc(TypeDesc + "_PTR") # TODO: make sure it shld be inst.operands[0] instead of inst.operands[1], and the type map below as well
                self.type_map[(inst, inst.operands[0].reg)] = TypeDesc + "_PTR"
                return True
            TypeDesc = inst.operands[0].getTypeDesc()
            if TypeDesc != None and TypeDesc != "NOTYPE":
                assert '_PTR' in TypeDesc
                inst.operands[0].setTypeDesc(TypeDesc.replace('_PTR', ""))
                self.type_map[(inst, inst.operands[0].reg)] = TypeDesc.replace("_PTR", "")
                return True
            else:
                return False

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
            if (Op.isReg or Op.isPReg) and Op.reg and Op.getTypeDesc() == "NOTYPE":
                # def->use
                reaching_defs = self.reaching_defs.get_reaching_definitions_before(inst)
                types = set()
                for d_inst, reg in reaching_defs:
                    if reg == Op.reg and (d_inst, reg) in self.type_map:
                        types.add(self.type_map[(d_inst, reg)])
                if len(types) == 1:
                    new_type = list(types)[0]
                    Op.setTypeDesc(new_type)
                    self.type_map[(inst, Op.reg)] = new_type
                    changed = True
                elif len(types) > 1:
                    raise InvalidTypeException(f"Conflicting types {types} for operand {Op} in {inst}")
                
                # use->def
                useOp = Op
                useOpType = useOp.getTypeDesc()
                if useOpType != "NOTYPE":
                    self.ud_chain = self.get_UD_chain()
                    if useOp in self.ud_chain:
                        for defOp in self.ud_chain[useOp]:
                            if defOp.getTypeDesc() != "NOTYPE":
                                assert useOpType == defOp.getTypeDesc()
                            else:
                                defOp.setTypeDesc(useOpType)
                                changed = True
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
        
        if self.config["allow_temp_behavior"]:
            pass
            # if operand.is_def is None:
            #     assert operand.is_use is not None
            #     assert operand.is_use == True
            # elif operand.is_use is None:
            #     assert operand.is_def is not None
            #     assert operand.is_def == True
            # else:
            #     assert operand.is_def ^ operand.is_use
        else:
            assert operand.is_def ^ operand.is_use # cannot both be true/false

        if (operand.isReg or operand.isPReg) and operand.reg:
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
                    assert len(reg_to_DefOp_tmp) + 1 == reg_to_DefOp[registerOp.reg]
                
                for op in inst.operands:
                    if op.is_use:
                        assert op not in ud_chain
                        ud_chain[op] = reg_to_DefOp.get(op.reg, set())
        
        return ud_chain