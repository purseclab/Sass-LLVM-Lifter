
import parser.sass2json as s2j
import parser.json2ir as j2ir
from s2lir import Function
from utils import *
from llvmlite import ir as llvmir
from passes import TypeAnalysis, CreateCFG
import json
from colorprint import *


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
    
    def analysisAndTransform(self):
        for func in self.functions:
            TypeAnalysis.TypeAnalysis(func)
            CreateCFG.CFG(func)


    def lift(self):
        # Generate module level information
        llvm_module = llvmir.Module(self.name)

        # e.g. create thread idx function
        self.addPseudoFunctions(llvm_module)
        
        for func in self.functions:
            func.lift(llvm_module)

        return llvm_module


if __name__=="__main__":
    with open('../launch/config.json', 'r') as file:
        data = json.load(file)
    
    input_file = "../output/1_sass/" + data['lifter']['input_file']
    output_file = "../output/3_llvm_ir/" + data['lifter']['output_file']
    
    if not input_file.endswith(".sass"):
        error(f"Input file must end with \".sass\". Currently listed input file: {input_file}")

    intermediate_json_file = "../output/2_json/" + input_file.split("/")[-1].replace(".sass", "") + ".json"
    
    s2j.sass_to_json(input_file, intermediate_json_file)
    functions = j2ir.json_to_ir(intermediate_json_file)
    dprint(functions)

    myModule = LLVMModule("PerSecModule", functions)
    myModule.parse()
    myModule.analysisAndTransform()

    llvm_module = myModule.lift()
    print(llvm_module)
    with open(output_file, 'w') as f:
        print(llvm_module, file=f)