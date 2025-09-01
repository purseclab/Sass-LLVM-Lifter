set pagination off
set confirm off
source ../lib/set_shf_breakpoint.py

python
set_breakpoints_at_instructions(
    function_name="fc_layer",
    instruction_pattern=r"\sUIADD3",  # Regex pattern for MUFU instructions
    sanity_offset=992  # Optional offset for sanity check
)
end
r

# -- Test UIADD3 UR4, UP0, UR4, 0x40, URZ
x/i $pc
p (unsigned int) $UR4
p $UP0
ni
p (unsigned int) $UR4
p $UP0

# $1 = 669018112
# $2 = 0
#
# $3 = 669018176
# $4 = 0

# UR4 + 0x40 = 669,018,176

delete

python
set_breakpoints_at_instructions(
    function_name="fc_layer",
    instruction_pattern=r"\sUIADD3",  # Regex pattern for MUFU instructions
    sanity_offset=992  # Optional offset for sanity check
)
end
r

# -- Test UIADD3 UR4, UP0, UR4, 0x40, URZ
x/i $pc

p $UR4
p $UP0
set $UP0 = 1
p $UP0
ni
p $UR4
p $UP0

# $5 = 1709205504
# $6 = 0
# $7 = 1

# $8 = 1709205568
# $9 = 0
# proves that UP0 is being wiped after the instruction


delete

python
set_breakpoints_at_instructions(
    function_name="fc_layer",
    instruction_pattern=r"\sUIADD3",  # Regex pattern for MUFU instructions
    sanity_offset=992  # Optional offset for sanity check
)
end
r

# -- Test UIADD3 UR4, UP0, UR4, 0x40, URZ
x/i $pc


# 4294967295-4*16 == 4294967231 , should not cause an overflow (UR4 just big enough)

p (unsigned int) $UR4
p $UP0
set $UR4 = 4294967231
p (unsigned int) $UR4
ni
p (unsigned int) $UR4
p $UP0

# $10 = 669018112
# $11 = 0
# $12 = 4294967231

# $13 = 4294967295
# $14 = 0

# indeed, P0 is not set to 1, and UR4 is summed to the max 32 bit unsigned int

delete

python
set_breakpoints_at_instructions(
    function_name="fc_layer",
    instruction_pattern=r"\sUIADD3",  # Regex pattern for MUFU instructions
    sanity_offset=992  # Optional offset for sanity check
)
end
r

# -- Test UIADD3 UR4, UP0, UR4, 0x40, URZ
x/i $pc


# 4294967295-4*16 + 1 == 4294967232 , should cause an overflow

p (unsigned int) $UR4
p $UP0
set $UR4 = 4294967232
p (unsigned int) $UR4
ni
p (unsigned int) $UR4
p $UP0

# $15 = 2682284032
# $16 = 0
# $17 = 4294967232

# $18 = 0
# $19 = 1

# Indeed, UP0 is now set to 1


delete

python
set_breakpoints_at_instructions(
    function_name="fc_layer",
    instruction_pattern=r"\sUIADD3",  # Regex pattern for MUFU instructions
    sanity_offset=992  # Optional offset for sanity check
)
end
r

# -- Test UIADD3 UR4, UP0, UR4, 0x40, URZ
x/i $pc


# 4294967295-4*16 + 2 == 4294967233 , should cause an overflow

p (unsigned int) $UR4
p $UP0
set $UR4 = 4294967233
p (unsigned int) $UR4
ni
p (unsigned int) $UR4
p $UP0

# $20 = 2648729600
# $21 = 0
# $22 = 4294967233

# $23 = 1
# $24 = 1


delete

python
set_breakpoints_at_instructions(
    function_name="fc_layer",
    instruction_pattern=r"\sUIADD3",  # Regex pattern for MUFU instructions
    sanity_offset=992  # Optional offset for sanity check
)
end
r

# -- Test UIADD3 UR4, UP0, UR4, 0x40, URZ
x/i $pc


# 4294967295-4*16 + 20 == 4294967251 , should cause an overflow

p (unsigned int) $UR4
p $UP0
set $UR4 = 4294967251
p (unsigned int) $UR4
ni
p (unsigned int) $UR4
p $UP0

# $25 = 1709205504
# $26 = 0
# $27 = 4294967251

# $28 = 19
# $29 = 1


c

x/i $pc

# -- Test 	UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT

p (unsigned int) $UR5
p $UP0
ni
p (unsigned int) $UR5
p $UP0

# $30 = 30983
# $31 = 1

# $32 = 30984
# $33 = 1

# Interestingly, if we do "c" here, it'll throw "CUDA Exception: Warp Misaligned Address; The exception was triggered at PC 0x718ef5a423e0; Thread 1 "test" received signal CUDA_EXCEPTION_6, Warp Misaligned Address."

delete

python
set_breakpoints_at_instructions(
    function_name="fc_layer",
    instruction_pattern=r"\sUIADD3",  # Regex pattern for MUFU instructions
    sanity_offset=992  # Optional offset for sanity check
)
end
r
c

x/i $pc

# -- Test 	UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT

p (unsigned int) $UR5
p $UP0
set $UP0 = 0
p $UP0
ni
p (unsigned int) $UR5
p $UP0

# $34 = 32184
# $35 = 0
# $36 = 0

# $37 = 32184
# $38 = 0

q