set pagination off
set confirm off
source set_shf_breakpoint.py

python
set_breakpoints_at_instructions(
    function_name="gru_forward",
    instruction_pattern=r"\sSHF\.L",  # Regex pattern for SHF instructions
    sanity_offset=4528  # Optional offset for sanity check
)
end
r

x/i $pc

# -- Test SHF.L.U64.HI R29, R30, 0x2, R7 
# Assumptions: 
# mode == clamp, i.e. shift = min(Sb, maxshift), maxshift (due to .U64) is probably 64 bits
# shift = min(Sb, 64)
# val = (Rc << 32 | Ra)
# Rd = ((Signed) val << shift) >> 32
# Rd = R29, Ra= R30, Rc = R7

# (((100000 << 32) | 64) << 0x2) >> 32 == 400000

p $R29
p $R30
set $R7=100000
p $R7

ni 

# R29 should be 400000
p $R29
p $R30
p $R7



# Test again

delete

python
set_breakpoints_at_instructions(
    function_name="gru_forward",
    instruction_pattern=r"\sSHF\.L",  # Regex pattern for SHF instructions
    sanity_offset=4528  # Optional offset for sanity check
)
end
r

# (((129123 << 32) | 64) << 0x2) >> 32 == 516492

p $R29
p $R30
set $R7=129123
p $R7

ni 

# R29 should be 516492
p $R29
p $R30
p $R7


# Test again but changing R30


delete

python
set_breakpoints_at_instructions(
    function_name="gru_forward",
    instruction_pattern=r"\sSHF\.L",  # Regex pattern for SHF instructions
    sanity_offset=4528  # Optional offset for sanity check
)
end
r

# (((129123 << 32) | 1200000499) << 0x2) >> 32 == 516493

p $R29
set $R7=129123
set $R30=1200000499
p $R30
p $R7

ni 

# R29 should be 516493
p $R29
p $R30
p $R7


delete







python
set_breakpoints_at_instructions(
    function_name="gru_forward",
    instruction_pattern=r"\sSHF\.R",  # Regex pattern for SHF instructions
    sanity_offset=8816  # Optional offset for sanity check
)
end

# --- Test SHF.R.S32.HI R7, RZ, 0x1f, R7 
# Assumptions: 
# mode == clamp, i.e. shift = min(Sb, maxshift), maxshift (due to .S32) is probably 32 bits
# shift = min(Sb, 32)
# val = (Rc << 32 | Ra)
# Rd = (((Signed) val >> shift)) >> 32
# the last 32 right shift is for HI (probably)
# not entirely sure about the sign extended behavior

r
x/i $pc
p $R7
ni
x/i $pc
p $R7


# retest with RZ set to 0xf0000000
# R7 set to 0xf0000000
# final result is -1
# arithmetic_shift_right((arithmetic_shift_right((arithmetic_shift_left(0xf0000000, 32, 64) | 0xf0000000), 0x1f, 64)), 32, 64)
delete

python
set_breakpoints_at_instructions(
    function_name="gru_forward",
    instruction_pattern=r"\sSHF\.R",  # Regex pattern for SHF instructions
    sanity_offset=8816  # Optional offset for sanity check
)
end



r
set $R7 = 0xf0000000
set $RZ = 0xf0000000
x/i $pc
p $R7
p $RZ
ni
x/i $pc
p $R7
p $RZ


# retest with RZ set to 0x0
# R7 set to 0xf0000000
# final result is -1
delete

python
set_breakpoints_at_instructions(
    function_name="gru_forward",
    instruction_pattern=r"\sSHF\.R",  # Regex pattern for SHF instructions
    sanity_offset=8816  # Optional offset for sanity check
)
end



r
set $R7 = 0xf0000000
set $RZ = 0x0
x/i $pc
p $R7
p $RZ
ni
x/i $pc
p $R7
p $RZ
delete




python
set_breakpoints_at_instructions(
    function_name="gru_forward",
    instruction_pattern=r"\sSHF\.L\.U32",  # Regex pattern for SHF instructions
    sanity_offset=14368  # Optional offset for sanity check
)
end

# --- Test SHF.L.U32 R12, R12, 0x17, RZ 

# Assumptions: 

# mode == clamp, i.e. shift = min(Sb, maxshift), maxshift (due to .U32) is probably 32 bits
# shift = min(Sb, 32)
# val = (Rc << 32 | Ra)
# Rd = ((Signed) val << shift) & 0x00000000ffffffff
# based on observation, seems like on U32 if you don't have .HI, then by default you take the lower 32 bits, 

# R12 = 1262485631
# ((0 << 32  | 1262485631 ) << 0x17) & 0x00000000ffffffff == 1065353216


r
x/i $pc
p $R12
ni
x/i $pc
p $R12

delete

python
set_breakpoints_at_instructions(
    function_name="gru_forward",
    instruction_pattern=r"\sSHF\.L\.U32",  # Regex pattern for SHF instructions
    sanity_offset=14368  # Optional offset for sanity check
)
end

# --- retest with $R12 = 1234

# ((0 << 32  | 1234 ) << 0x17) & 0xffffffff == 1761607680

r
x/i $pc
set $R12 = 1234
p $R12
ni
x/i $pc
p $R12



delete

python
set_breakpoints_at_instructions(
    function_name="gru_forward",
    instruction_pattern=r"\sSHF\.L\.U32",  # Regex pattern for SHF instructions
    sanity_offset=14368  # Optional offset for sanity check
)
end

# --- retest with $RZ = 1262485631

# ((1262485631 << 32  | 1262485631 ) << 0x17) & 0xffffffff == 1065353216
# same answer as a case above because we're just extracting the lower part and so RZ's contribution have always been filtered out

r
x/i $pc
set $R12 = 1262485631
set $RZ = 1262485631
p $R12
ni
x/i $pc
p $R12
q