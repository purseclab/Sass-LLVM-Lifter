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
