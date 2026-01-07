import re
import json
from utils import *


def parse_ins(ins_content):
    # Opcodes, Operands, Condition
    ins_res = [[], [], ""]
    # split() will handle multiple spaces, tabs, etc.
    ins_list = ins_content.strip().split()
    if not ins_list:
        return None
    # print(opcode, oprands)
    dprint(ins_list)


    if ins_list[0].startswith("@"):
        ins_res[2] = ins_list[0]
        ins_list = ins_list[1:]
    
    # print(ins_list)
    assert len(ins_list) >= 1
    
    # Handle Opcode and its modifiers (e.g., FSETP.GTU.FTZ.AND)
    ins_res[0] = ins_list[0].split(".")
    base_opcode = ins_res[0][0]
    if base_opcode == "RET":
        assert len(ins_list[1:]) == 2 # e.g. R8 `(_Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii)
        operand_raw = " ".join(ins_list[1:])
        operands = [op.strip() for op in operand_raw.split(None, 1) if op.strip()]
    else:
        operand_raw = " ".join(ins_list[1:])
        operands = [op.strip() for op in operand_raw.split(",") if op.strip()]
        # Operands = [  for x in Operands]
    ins_res[1] = operands


    return ins_res

def parse_sass(file_content):
    functions = {}
    current_function = None
    intializing_func = False # parse_sass is in the process of collecting function metadata
    current_block = None

    for line in file_content.splitlines():

        func_start_pattern = re.compile(r'//-+\s+\.text\.(\w+)\s+-+')

        if func_start_match := func_start_pattern.match(line):
            intializing_func = True
            func_name = func_start_match.group(1)
            dprint(func_name)
            current_function = {
                ".function_name": None,
                ".section": None,
                ".sectionflags": None,
                ".sectioninfo": None,
                ".align": None,
                ".global": None,
                ".type": None,
                ".size": None,
                ".other": None,
                "Basicblocks": [],
                ".weak" : None,
                "internal_func": False
            }
            functions[func_name] = current_function
            continue
            # is_parsing_function = True
        
        # Match the function info with .
        func_info_pattern = re.compile(r'\s+\.(section|sectioninfo|sectionflags|align|global|type|size|weak|other)\s+(.*)')
        func_info_match = func_info_pattern.match(line)
        if func_info_match:
            if not intializing_func and current_function is None:
                raise InvalidSyntaxException
            
            if not intializing_func:
                # probably an internal function
                current_function = {
                    ".function_name": None,
                    ".section": None,
                    ".sectionflags": None,
                    ".sectioninfo": None,
                    ".align": None,
                    ".global": None,
                    ".type": None,
                    ".size": None,
                    ".other": None,
                    "Basicblocks": [],
                    ".weak" : None,
                    "internal_func": False
                }
                intializing_func = True
            
            key = func_info_match.group(1)
            value = func_info_match.group(2)
            dprint(key, " ", value)
            if key == "section":
                current_function[".section"] = value
            elif key == "sectioninfo":
                current_function[".sectioninfo"] = value
            elif key == "sectionflags":
                current_function[".sectionflags"] = value
            elif key == "align":
                current_function[".align"] = value
            elif key == "global":
                current_function[".global"] = value
            elif key == "type":
                current_function[".type"] = value
            elif key == "size":
                current_function[".size"] = value
            elif key == "other":
                current_function[".other"] = value
            elif key == "weak":
                current_function[".weak"] = value
            continue
        
        # Match Funcname
        func_label_pattern = re.compile(r'^([^:]+):$')
        func_label_match = func_label_pattern.match(line)
        if func_label_match and current_function[".function_name"] is None:
            func_label = func_label_match.group(1)
            if "__internal" not in func_label:
                # if current_function[".function_name"] is None: # Match the first label as function name
                # assert block_label == functions[func_name]
                current_function[".function_name"] = func_label
                intializing_func = False
                continue
        
        # Match Internal func_name
        internal_func_label_pattern = re.compile(r'^(\$__internal[^:]+):$')
        internal_func_label_match = internal_func_label_pattern.match(line)
        if internal_func_label_match and intializing_func:
            assert current_function[".function_name"] is None
            func_label = func_label_match.group(1)
            # if current_function[".function_name"] is None: # Match the first label as function name
            # assert block_label == functions[func_name]
            current_function[".function_name"] = func_label
            current_function["internal_func"] = True
            functions[current_function[".function_name"]] = current_function
            intializing_func = False
            
            # internal function doesnt seem to have a duplicate label prepended with .text at the start, so we need to set the block here
            
            current_block = {
                "label": func_label,
                "instructions": []
            }
            current_function["Basicblocks"].append(current_block)
            
            continue
        
        assert not intializing_func,  "Check if there are keys in the function metadata not parsed"
        # note that .headerflags and .elftype will fall through the assertion above and thats fine, doesn't affect
        
        
        # Match Labels
        black_label_pattern = re.compile(r'^(\.[^:]+):$')
        block_label_match = black_label_pattern.match(line)
        if block_label_match:
            if current_function["internal_func"]:
                assert len(current_function["Basicblocks"]) > 0 # since we have already manually set up the block above
                
            block_label = block_label_match.group(1)
            dprint(block_label)
            current_block = {
                "label": block_label,
                "instructions": []
            }
            current_function["Basicblocks"].append(current_block)

        # Match Instructions
        instr_pattern = re.compile(r'\s*\/\*([0-9a-f]+)\*\/\s*([^;]+);')
        instr_match = instr_pattern.match(line)
        if instr_match:
            instr_addr = instr_match.group(1)
            instr_content = instr_match.group(2)
            instr_content = parse_ins(instr_content)
            instruction = {
                "addr": "0x"+instr_addr,
                "content": instr_content
            }
            current_block["instructions"].append(instruction)
            continue

    return functions

def sass_to_json(sass_file, json_file):
    with open(sass_file, 'r') as f:
        sass_content = f.read()

    functions = parse_sass(sass_content)

    # filter out empty labels
    for func in functions:
        blocks = functions[func]["Basicblocks"]
        functions[func]["Basicblocks"] = [block for block in blocks if block["instructions"]]

    with open(json_file, 'w') as f:
        json.dump(functions, f, indent=4)


if __name__=="__main__":
    # Example usage
    sass_to_json('test_code.sass', 'output.json') 