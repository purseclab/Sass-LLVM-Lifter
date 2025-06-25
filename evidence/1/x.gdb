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
# mode == clamp, i.e. shift = min(Sb, maxshift), maxshift (due to .S32) is probably 32 bits
# shift = min(Sb, 32)
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
q