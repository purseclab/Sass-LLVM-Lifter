
import parser.sass2json as s2j
import parser.json2ir as j2ir
from s2lir import Function
from utils import *
from llvmlite import ir as llvmir

class LLVMModule:
    # def __init__(self, name, parser):
    def __init__(self, name, functions):
        self.name = name
        self.functions = functions

        for func in self.functions:
            func.module = self

    def addPseudoFunctions(self, llvm_module):
        # Create thread idx function
        FuncTy = llvmir.FunctionType(llvmir.IntType(32), [])
        IRFunc = llvmir.Function(llvm_module, FuncTy, "thread_idx")
        self.GetThreadIdx = IRFunc
    
    def parse(self):
        for func in self.functions:
            func.parse()
    
    def transform(self):
        for func in self.functions:
            func.transform()

    def lift(self):
        # Generate module level information
        llvm_module = llvmir.Module(self.name)

        # e.g. create thread idx function
        self.addPseudoFunctions(llvm_module)
        
        for func in self.functions:
            func.lift(llvm_module)

        return llvm_module


if __name__=="__main__":
    # input_file = 'test_code.sass'
    input_file = "test_relu.sass"
    output_file = "test.ll"

    s2j.sass_to_json(input_file, 'output.json') 
    functions = j2ir.json_to_ir('output.json')
    dprint(functions)

    myModule = LLVMModule("PerSecModule", functions)
    myModule.parse()

    myModule.transform()

    llvm_module = myModule.lift()
    print(llvm_module)
    with open(output_file, 'w') as f:
        print(llvm_module, file=f)



