source set_shf_breakpoint.py
python
set_breakpoints_at_instructions(
    function_name="gru_forward",
    instruction_pattern=r"SHF",  # Regex pattern for SHF instructions
    sanity_offset=4528  # Optional offset for sanity check
)
end
r
x/i $pc