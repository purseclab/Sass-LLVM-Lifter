"""
Module to convert parsed JSON representation of SASS into our custom IR objects.
"""
import json
from s2lir import Function

def json_to_ir(filename='output.json'):
    """
    Loads JSON data representing parsed SASS and creates Function IR objects.
    
    Args:
        filename (str|Path): The path to the JSON input file.
        
    Returns:
        list[Function.Function]: A list of SASS function intermediate representations.
    """
    with open(filename, "r") as f:
        functions = json.load(f)

    functions_ir = []
    for function in functions:
        func = Function.Function(functions[function])
        functions_ir.append(func)

    return functions_ir


if __name__=="__main__":
    # Read and load file from json
    functions = json_to_ir('output.json')