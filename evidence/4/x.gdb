set pagination off
set confirm off
source set_shf_breakpoint.py

python
set_breakpoints_at_instructions(
    function_name="fc_layer",
    instruction_pattern=r"\sIADD3",  # Regex pattern for MUFU instructions
    sanity_offset=1200  # Optional offset for sanity check
)
end
r




c
c

# -- Test  IADD3 R9, R9, -0x10, RZ

# Assumptions: 
x/i $pc

p $R9
ni

p $R9

# $1 = 676
# $2 = 660
# this makes sense, R9 + -0x10 + RZ = 676 - 16 = 660

# restart now

delete

python
set_breakpoints_at_instructions(
    function_name="fc_layer",
    instruction_pattern=r"\sIADD3",  # Regex pattern for MUFU instructions
    sanity_offset=1200  # Optional offset for sanity check
)
end
r
c
c

# -- Test  IADD3 R9, R9, -0x10, RZ
# set RZ to 0x12
p $R9
p $RZ
set $RZ = 0x12
p $R9
p $RZ
ni
p $R9
p $RZ

# $3 = 676
# $4 = void
# $5 = 676
# $6 = 18
# $7 = 660
# $8 = 18

# Interesting. Although RZ is set to 18, the IADD result did not change, seems like RZ is still hardwired to 0

c
c
c

x/i $pc

delete

python
set_breakpoints_at_instructions(
    function_name="fc_layer",
    instruction_pattern=r"\sIADD3.X",  # Regex pattern for MUFU instructions
    sanity_offset=1200  # Optional offset for sanity check
)
end
r
c

# -- Test IADD3.X R5, RZ, R5, RZ, P2, !PT
x/i $pc
p $PT
p $P2
p $R5
ni
p $R5

# $9 = void
# $10 = 0
# $11 = 32767
# $12 = 32767
# this is sort of expected. !PT should be 0, so RZ (0) + R5 + RZ (0) + P2 (0) + !PT = R5
c

# -- Test IADD3.X R5, RZ, R5, RZ, P2, !PT
p $PT
p $P2
p $R5
set $P2 = 1
p $P2
x/i $pc
ni
p $R5

# $13 = void
# $14 = 0
# $15 = 32767
# $16 = 1
# $17 = 32768

# Confirms that setting P2 to 1 will add the calculation result by 1
# TODO: at this moment, still cant find instructions that's not !PT at the end, so can't confirm if we should just add its value to the sum


delete

python
set_breakpoints_at_instructions(
    function_name="fc_layer",
    instruction_pattern=r"\sIADD3.*P.*, R.*",  # Regex pattern for MUFU instructions
)
end
r

# -- Test IADD3 R4, P2, R4, 0x40, RZ
x/i $pc
p $P2
p $R4
ni
p $R4
p $P2

# $18 = 1
# $19 = -819956736

# $20 = -819956672
# $21 = 0

# P2 is reseted to 0 after the operation. R4 = R4 + 0x40 + RZ


q