
import parser.sass2json as s2j
import parser.json2ir as j2ir
from s2lir import Function
from s2lir import custom_func
from utils import *
from llvmlite import ir as llvmir
from passes import TypeAnalysis, CreateCFG
from InstructionVisualizer import InstructionVisualizer
import json
from colorprint import *
import os
from pathlib import Path
import typing

current_dir = Path(__file__).parent

class LLVMModule:
    # def __init__(self, name, parser):
    def __init__(self, name, functions):
        self.name = name
        self.functions : typing.List[Function.Function] = functions
        self.llvm_module = None

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
            CreateCFG.CFG(func)
            # CreateCFG might split blocks too, so typeanalysis cannot happen before it
            func.typeAnalysis = TypeAnalysis.TypeAnalysis(func)
            # visualizer: InstructionVisualizer = InstructionVisualizer(typeAnalysis)
            # visualizer.visualize(f"{func.name}.html")
            


    def lift(self):
        # Generate module level information
        llvm_module = llvmir.Module(self.name)
        self.llvm_module = llvm_module
        # e.g. create thread idx function
        self.addPseudoFunctions(llvm_module)
        
        # create custom functions (that might be referenced by the lifter)
        custom_func.lop3(llvm_module)
        
        for func in self.functions:
            func.lift(llvm_module)

        return llvm_module




if __name__=="__main__":
    config_path = current_dir / ".." / "launch" / "config.json"
    
    with open(config_path.resolve(), 'r') as file:
        data = json.load(file)
    
    output_dir = current_dir / ".." / "output"
    
    input_file = (output_dir / "1_sass" / data['lifter']['input_file']).resolve()
    
    output_file = (output_dir / "3_llvm_ir" / data['lifter']['output_file']).resolve()
    
    
    if input_file.suffix != ".sass":
        error(f"Input file must end with \".sass\". Currently listed input file: {input_file}")
        exit(1)

    # intermediate_json_file = "../output/2_json/" + input_file.split("/")[-1].replace(".sass", "") + ".json"
    
    intermediate_json_file = (output_dir / "2_json" / input_file.name.replace(".sass", ".json")).resolve()
    
    if not os.path.exists(input_file):
        error(f"Input file ({input_file}) does not exist.")
        exit(1)
    
    s2j.sass_to_json(input_file, intermediate_json_file)
    functions = j2ir.json_to_ir(intermediate_json_file)
    dprint(functions)

    myModule = LLVMModule("PerSecModule", functions)
    myModule.parse()
    myModule.analysisAndTransform()

    llvm_module = myModule.lift()
    # print(llvm_module)
    with open(output_file, 'w') as f:
        print(llvm_module, file=f)