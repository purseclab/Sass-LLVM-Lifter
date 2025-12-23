set pagination off
set confirm off
source set_shf_breakpoint.py

python
set_breakpoints_at_instructions(
    function_name="gru_forward",
    instruction_pattern=r"\sFSEL",  # Regex pattern for MUFU instructions
    sanity_offset=18096  # Optional offset for sanity check
)
end
r



# -- Test  FSEL R11, R11, 1, !P0 

# Assumptions: 
# FSEL Rd Ra, Sb, Pp
# Rd = Pp ? Ra : Sb

x/i $pc

# $1 = 1058464352
# $2 = 0

# $3 = 1058464352
# $4 = 0

# Since P0 is 0, !P0 is 1, so it selects Ra, i.e. R11 and put it into Rd (still R11)

p $R11
p $P0
ni
p $R11
p $P0

c

# FSEL R11, R11, 1, !P0 

x/i $pc

# $5 = 1063101156
# $6 = 1

# $7 = 1065353216
# $8 = 1

# Since P0 = 1, !P0 = 0, so Sb is selected, and R11 should be equal to 1.
# 1065353216 == 1.0, as shown here: struct.unpack('f', struct.pack('I', 1065353216))[0] == 1
# Original R11 (prior to FSEL) == 1063101156 == struct.unpack('f', struct.pack('I', 1063101156))[0] == 0.8657667636871338

p $R11
set $P0 = 1
p $P0

ni
p $R11
p $P0

q