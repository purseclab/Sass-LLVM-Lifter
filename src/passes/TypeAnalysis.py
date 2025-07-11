
from s2lir import Function, Basicblock, Instruction, Operand
from utils import *
import typing
from passes.ReachingDefinitionsAnalysis import ReachingDefinitionsAnalysis

class TypeAnalysis:

    def __init__(self, func):
        self.func : Function.Function  = func
        self.reaching_defs = ReachingDefinitionsAnalysis(func)
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

    # Directly resolve the type description, this is mainly working for binary operation
    def DirectlySolveType(self, inst):
        TypeDesc = None

        #### Batch 1
        if inst.opcode in ["FFMA", "FADD"]:
            TypeDesc = "Float32"
        
        elif inst.opcode in ["IMAD", "SHL",  "SHR", "S2R"] :
            TypeDesc = "Int32"


        if TypeDesc != None:
            for operand in inst.operands:
                operand.setTypeDesc(TypeDesc)
            return TypeDesc
        
        #### Batch 2
        if inst.opcode == "FMNMX":
            TypeDesc = "Float32"

        if TypeDesc != None:
            for i in range(3):
                operand = inst.operands[i]
                operand.setTypeDesc(TypeDesc)
            inst.operands[3].setTypeDesc("Bool")
            return TypeDesc

        #### Batch 3
        if inst.opcode == "ISETP":
            TypeDesc = "Float32"

        if TypeDesc != None:
            inst.operands[0].setTypeDesc("Bool")
            inst.operands[1].setTypeDesc("Bool")
            inst.operands[2].setTypeDesc("Int32")
            inst.operands[3].setTypeDesc("Int32")
            inst.operands[4].setTypeDesc("Bool")

            return TypeDesc

        return TypeDesc
        
    def PartialSolveType(self, inst):
        if inst.opcode == "LDG":
            TypeDesc = inst.operands[0].getTypeDesc()
            if TypeDesc != None and TypeDesc != "NOTYPE":
                inst.operands[1].setTypeDesc(TypeDesc + "_PTR")
            else:
                TypeDesc = inst.operands[1].getTypeDesc()
                if TypeDesc != None and TypeDesc != "NOTYPE":
                    assert '_PTR' in TypeDesc
                    inst.operands[0].setTypeDesc(TypeDesc.replace('_PTR', ""))
                else:
                    print(TypeDesc, inst)
                    raise InvalidTypeException

        elif inst.opcode == "STG":
            TypeDesc = inst.operands[1].getTypeDesc()
            if TypeDesc != None and TypeDesc != "NOTYPE":
                inst.operands[0].setTypeDesc(TypeDesc + "_PTR")
            else:
                TypeDesc = inst.operands[0].getTypeDesc()
                if TypeDesc != None and TypeDesc != "NOTYPE":
                    assert '_PTR' in TypeDesc
                    inst.operands[0].setTypeDesc(TypeDesc.replace('_PTR', ""))
                else:
                    raise InvalidTypeException
        elif inst.opcode == 'IADD':
            TypeDesc = inst.operands[0].getTypeDesc()
            if TypeDesc != None and TypeDesc != "NOTYPE":
                inst.operands[1].setTypeDesc("Int32") # The integer offset
                inst.operands[2].setTypeDesc(TypeDesc)
        else:
            return False

        return True

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
            "is_use": operand.is_use(),
            "is_def": operand.is_def(),
            "kill_set": self.get_kill_set_for_instruction(inst),
            "defs_reaching": [],
            "reaches_next": False # Check if this operand's definition reaches the next instruction
        }

        if (operand.isReg or operand.isPReg) and operand.reg:
            # Get definitions reaching this instruction
            reaching_defs = self.reaching_defs.get_reaching_definitions_before(inst)
            # Filter for this operand's register
            info["defs_reaching"] = [(d_inst, reg) for d_inst, reg in reaching_defs if reg == operand.reg]
            # Check if this operand's definition reaches the next instruction
            if operand.is_def():
                defs_after = self.reaching_defs.get_reaching_definitions_after(inst)
                info["reaches_next"] = (inst, operand.reg) in defs_after
        else:
            raise Exception
        
        return info