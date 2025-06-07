
from s2lir import *
from utils import *

class TypeAnalysis:

    def __init__(self, func):
        self.func = func
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
            return
        
        #### Batch 2
        if inst.opcode == "FMNMX":
            TypeDesc = "Float32"


        if TypeDesc != None:
            for i in range(3):
                operand = inst.operands[i]
                operand.setTypeDesc(TypeDesc)
            inst.operands[3].setTypeDesc("Bool")
            return

        #### Batch 3
        if inst.opcode == "ISETP":
            TypeDesc = "Float32"

        if TypeDesc != None:
            inst.operands[0].setTypeDesc("Bool")
            inst.operands[1].setTypeDesc("Bool")
            inst.operands[2].setTypeDesc("Int32")
            inst.operands[3].setTypeDesc("Int32")
            inst.operands[4].setTypeDesc("Bool")

            return

        return
        
    def PartialSolveType(self, inst):
        if inst.opcode == "LDG":
            TypeDesc = inst.operands[0].getTypeDesc()
            if TypeDesc != None:
                inst.operands[1].setTypeDesc(TypeDesc + "_PTR")
            else:
                TypeDesc = inst.operands[1].getTypeDesc()
                if TypeDesc != None:
                    inst.operands[0].setTypeDesc(TypeDesc.replace('_PTR', ""))
                else:
                    raise InvalidTypeException

        elif inst.opcode == "STG":
            TypeDesc = inst.operands[1].getTypeDesc()
            if TypeDesc != None:
                inst.operands[0].setTypeDesc(TypeDesc + "_PTR")
            else:
                TypeDesc = inst.operands[0].getTypeDesc()
                if TypeDesc != None:
                    inst.operands[0].setTypeDesc(TypeDesc.replace('_PTR', ""))
                else:
                    raise InvalidTypeException
        elif inst.opcode == 'IADD':
            TypeDesc = inst.operands[0].getTypeDesc()
            if TypeDesc != None:
                inst.operands[1].setTypeDesc("Int32") # The integer offset
                inst.operands[2].setTypeDesc(TypeDesc)
        else:
            return False

        return True

