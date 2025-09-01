set pagination off
set confirm off
source set_shf_breakpoint.py

python
set_breakpoints_at_instructions(
    function_name="fc_layer",
    instruction_pattern=r"\sUIADD3",  # Regex pattern for MUFU instructions
    sanity_offset=1200  # Optional offset for sanity check
)
end
r


q