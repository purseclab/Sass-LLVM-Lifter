
from s2lir import *

class TypeAnalysis:

    def __init__(self, func):
        self.func = func
        self.__apply()
    def __apply(self):
        
        for BB in self.func.blocks:
            for inst in BB.instructions:
                # Set Predicate TypeDesc
                for Op in inst.operands:
                    if Op.isPReg:
                        Op.setTypeDesc("Bool")