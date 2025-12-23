from llvmlite import ir
from typing import List, Tuple

def promote_integer_list(builder: ir.IRBuilder, values: List[ir.Value]) -> Tuple[List[ir.Value], ir.IntType]:
    """
    Sign-extends all integer values to the largest type in the list.
    Returns (promoted_values, common_type).
    """
    # Filter and validate integer types
    int_values = []
    for val in values:
        if not isinstance(val.type, ir.IntType):
            raise TypeError(f"Expected integer type, got {val.type}")
        int_values.append(val)

    if not int_values:
        raise ValueError("Empty value list")

    # Find maximum bit width
    max_bits = max(val.type.width for val in int_values)
    common_type = ir.IntType(max_bits)

    # Sign-extend all values to the common type
    promoted = []
    for val in int_values:
        if val.type.width < max_bits:
            # TODO: not entirely sure if i shld use sext or zext, i think it depends on whether its signed or unsigned
            val = builder.sext(val, common_type)
        promoted.append(val)

    return promoted, common_type