import subprocess
import re
import shutil

DEBUG=True
# DEBUG=False

def dprint(*args, **kwargs):
    if DEBUG:
        print("DEBUG: ", *args, **kwargs)

def generate_ir_comment(IRBuilder, text):
    # IRBuilder.comment cannot have new lines
    for t in text.splitlines():
        if t.strip() != "":
            IRBuilder.comment(t)

def bitcast_all_to_type(IRBuilder, target_type, *args):
    """
    Bitcasts all input values to the specified `target_type` if not already of that type.

    Parameters:
        builder (IRBuilder): the current IRBuilder object
        target_type (ir.Type): the desired target type to bitcast to
        *args (Value...): a variadic number of LLVM IR values

    Returns:
        List[Value]: A list of values, all of type `target_type`
    """
    casted = []
    for val in args:
        if val.type == target_type:
            casted.append(val)
        else:
            casted.append(IRBuilder.bitcast(val, target_type))
    return casted

class UnsupportedOperatorException(Exception):
    pass

class InvalidTypeException(Exception):
    pass

class InvalidSyntaxException(Exception):
    pass

def demangle_symbol(symbol: str, tool: str = None) -> str:
    if tool is None: 
        tool = "llvm-cxxfilt-20"
        if not shutil.which(tool):
            tool = "llvm-cxxfilt"
    result = subprocess.run([tool, symbol], capture_output=True, text=True)
    if result.returncode != 0 or symbol == result.stdout.strip():
        raise RuntimeError(f"Demangler failed: {result.stderr}")
    return result.stdout.strip()

def parse_function_signature(demangled: str) -> tuple[str, list[str]]:
    """
    Extract function name and argument types from a demangled signature.
    Example: 'gru_forward(float*, float*, float*, float*, int, int, int)'
    """
    pattern = r'^(?P<name>[\w]+)\((?P<args>.*)\)$'
    match = re.match(pattern, demangled)
    if not match:
        raise ValueError(f"Could not parse function signature for demanged name {demangled}")

    func_name = match.group("name")
    args_str = match.group("args")

    # Handle empty argument list
    if not args_str.strip():
        args = []
    else:
        # Split by commas, respecting potential template commas or nested parens
        args = split_arguments(args_str)

    return func_name, args

def split_arguments(arg_str: str):
    args = []
    depth = 0
    current = []

    for ch in arg_str:
        if ch == ',' and depth == 0:
            args.append(''.join(current).strip())
            current = []
        else:
            if ch in '<({[':
                depth += 1
            elif ch in '>)}]':
                depth -= 1
            current.append(ch)

    if current:
        args.append(''.join(current).strip())

    return args
