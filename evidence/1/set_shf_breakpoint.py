import gdb
import re

def set_breakpoints_at_instructions(function_name, instruction_pattern, sanity_offset=None):
    """
    Sets breakpoints at all occurrences of an instruction pattern in a function.
    
    Args:
        function_name (str): Name of the target function.
        instruction_pattern (str): Regex pattern for the target instruction (e.g., r'SHF').
        sanity_offset (int, optional): Offset for sanity check. Defaults to None.
    """
    class FunctionEntryBreakpoint(gdb.Breakpoint):
        def __init__(self, function_name):
            super().__init__(function_name) # Sets the initial breakpoint
            self.function_name = function_name
            self.instruction_pattern = instruction_pattern
            self.sanity_offset = sanity_offset
            self.breakpoints_set = False

        def stop(self):
            # stop is invoked whenever a breakpoint is hit
            if not self.breakpoints_set:
                # Get function start address
                frame = gdb.selected_frame()
                start_pc = frame.pc()
                
                # Disassemble the function
                # disassembly = gdb.execute(f"disassemble {self.function_name}", to_string=True)
                disassembly = gdb.execute(f"disassemble", to_string=True)
                lines = disassembly.split('\n')
                # gdb.write(disassembly)
                
                # Find all target instruction addresses
                target_addresses = []
                for line in lines:
                    if re.search(self.instruction_pattern, line):
                        parts = line.split()
                        # gdb.write(str(parts))
                        addr_str = parts[0]
                        try:
                            addr = int(addr_str, 16)
                            target_addresses.append(addr)
                        except ValueError:
                            gdb.write(f"Failed to add breakpoint for {str(parts)}")
                            continue
                
                # Set breakpoints
                for addr in target_addresses:
                    gdb.Breakpoint(f"*{hex(addr)}")
                
                gdb.write(f"Set {len(target_addresses)} breakpoints for '{self.instruction_pattern}' instructions.\n")
                
                # Sanity check at specified offset
                if self.sanity_offset is not None:
                    check_addr = start_pc + self.sanity_offset
                    try:
                        instr = gdb.execute(f"x/i {hex(check_addr)}", to_string=True)
                        # gdb.write(instr)
                        if re.search(self.instruction_pattern, instr):
                            gdb.write(f"Sanity check PASSED: Found '{self.instruction_pattern}' at offset {self.sanity_offset}")
                        else:
                            gdb.write(f"Sanity check FAILED: No '{self.instruction_pattern}' at offset {self.sanity_offset}")
                    except gdb.error:
                        gdb.write(f"Sanity check ERROR: Invalid address {hex(check_addr)}")
                
                self.breakpoints_set = True
                
            return False  # Continue execution

    # Set the initial breakpoint on the function
    FunctionEntryBreakpoint(function_name)


# set_breakpoints_at_instructions(
#     function_name="gru_forward",
#     instruction_pattern=r"SHF",  # Regex pattern for SHF instructions
#     sanity_offset=4528  # Optional offset for sanity check
# )