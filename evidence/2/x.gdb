set pagination off
set confirm off
source set_shf_breakpoint.py

python
set_breakpoints_at_instructions(
    function_name="gru_forward",
    instruction_pattern=r"\sMUFU\.EX2",  # Regex pattern for MUFU instructions
    sanity_offset=14416  # Optional offset for sanity check
)
end
r

x/i $pc


# -- Test  MUFU.EX2 R13, R20 
# Assumptions: 
# R20 and R13 are treated as floating point registers
# R13 = 2^R20



# $1 = -1103838548
# $2 = 1048732703

# $3 = 1066972745
# $4 = 1048732703

# 2**struct.unpack('f', struct.pack('I', 1048732703))[0] == 1.1930629060531697
# struct.unpack('f', struct.pack('I', 1066972745))[0] == 1.1930629014968872
# quite close

p $R13
p $R20
ni
p $R13
p $R20


c
c


# -- Test MUFU.EX2 R22, R22 

# $5 = 1060286713
# $6 = 1070573185

# 2**struct.unpack('f', struct.pack('I', 1060286713))[0] == 1.6222688037574737
# struct.unpack('f', struct.pack('I', 1070573185))[0] == 1.622268795967102

x/i $pc
p $R22
ni
p $R22

c


# -- Test MUFU.EX2 R22, R22

# $7 = 23
# $8 = 1065353216

# 2**struct.unpack('f', struct.pack('I', 23))[0] == 1.0
# struct.unpack('f', struct.pack('I', 1065353216))[0] == 1.0
# perfect, also shows that R22 is def not treated as an integer register

x/i $pc
set $R22 = 23
p $R22
ni
p $R22


c
c
c
c
c

# -- Test MUFU.EX2 R13, R20

# $9 = 233232323
# $10 = -1070730223

# $11 = 233232323
# $12 = 1065353216

# 2**struct.unpack('f', struct.pack('I', 233232323))[0] == 1.0
# 1065353216 is 1.0


x/i $pc
set $R20=233232323
p $R20
p $R13
ni
p $R20
p $R13
q

