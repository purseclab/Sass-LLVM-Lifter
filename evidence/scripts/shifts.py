def logical_shift_left(x: int, shift: int, bits: int = 32) -> int:
    """
    Unsigned (logical) left shift.
    Fills vacated bits with 0 and wraps overflow within 'bits' width.
    """
    mask = (1 << bits) - 1
    return (x << shift) & mask

def logical_shift_right(x: int, shift: int, bits: int = 32) -> int:
    """
    Unsigned (logical) right shift.
    Fills vacated bits with 0.
    """
    mask = (1 << bits) - 1
    return (x & mask) >> shift

def sign_extend(x: int, bits: int) -> int:
    """
    Sign-extend the integer `x` assuming it is a two's complement value of `bits` bits.
    Converts fixed-width unsigned interpretation to signed Python int.
    """
    sign_bit = 1 << (bits - 1)           # e.g., for 32 bits, sign_bit = 0x80000000
    return (x & (sign_bit - 1)) - (x & sign_bit)
    # If MSB is 1: subtract sign_bit to make it negative (e.g., 0xFFFFFFF6 becomes -10)
    # If MSB is 0: no change, value stays positive


def arithmetic_shift_right(x: int, shift: int, bits: int = 32) -> int:
    """
    Perform arithmetic (sign-extended) right shift on `x`, simulating `bits`-bit signed behavior.
    """
    x = sign_extend(x, bits)            # Convert input to signed value based on bit width
    return x >> shift                   # Arithmetic right shift (preserves sign bit)


def arithmetic_shift_left(x: int, shift: int, bits: int = 32) -> int:
    """
    Perform left shift on `x`, emulating `bits`-bit signed overflow behavior.
    """
    x = sign_extend(x, bits)            # Convert input to signed value based on bit width
    x <<= shift                         # Perform left shift (could overflow the bit width)
    mask = (1 << bits) - 1              # e.g., for 32 bits: 0xFFFFFFFF
    x &= mask                           # Truncate to `bits` bits, emulating wraparound
    return sign_extend(x, bits)         # Re-sign-extend to interpret the result correctly

# --- Testing ---
if __name__ == "__main__":
    # Test cases
    test_num = -16  # 0xFFFFFFF0 (32-bit)
    bits = 32

    print(f"Original: {test_num} (0x{test_num & 0xFFFFFFFF:X})")
    print(f"Unsigned Left Shift  by 2: {logical_shift_left(test_num, 2, bits)} (0x{logical_shift_left(test_num, 2, bits) & 0xFFFFFFFF:X})")
    print(f"Unsigned Right Shift by 2: {logical_shift_right(test_num, 2, bits)} (0x{logical_shift_right(test_num, 2, bits) & 0xFFFFFFFF:X})")
    print(f"Signed Left Shift    by 2: {arithmetic_shift_left(test_num, 2, bits)} (0x{arithmetic_shift_left(test_num, 2, bits) & 0xFFFFFFFF:X})")
    print(f"Signed Right Shift   by 2: {arithmetic_shift_right(test_num, 2, bits)} (0x{arithmetic_shift_right(test_num, 2, bits) & 0xFFFFFFFF:X})")