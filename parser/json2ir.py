

import json
from s2lir import Function

def json_to_ir(filename = 'output.josn'):
    
    with open(filename, "r") as f:
        functions = json.load(f)
        # print(functions)

    function_ir = []
    for function in functions:
        func = Function.Function(functions[function])
        function_ir.append(func)

    return function_ir

    #  with open(json_file, 'w') as f:
        # json.dump(functions, f, indent=4)


if __name__=="__main__":
    # Read and load file from json
    functions = json_to_ir('output.josn')