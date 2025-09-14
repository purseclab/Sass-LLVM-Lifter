python
import gdb

# Read configuration from GDB convenience variables
addr_str = gdb.convenience_variable("break_addr")
reg_lo = gdb.convenience_variable("reg_lo")
reg_hi = gdb.convenience_variable("reg_hi")

if addr_str is None:
    raise ValueError("Set $break_addr as hex string, e.g.: set $break_addr = \"0x1234\"")
if reg_lo is None:
    raise ValueError("Set $reg_lo, e.g.: set $reg_lo = \"r4\"")
if reg_hi is None:
    raise ValueError("Set $reg_hi, e.g.: set $reg_hi = \"r5\"")

# Parse address
addr = int(addr_str, 16)

class AutoPrintBreakpoint(gdb.Breakpoint):
    def __init__(self):
        super().__init__(f"*{addr:#x}")
        self.silent = True

    def stop(self):
        try:
            # r_lo = int(gdb.parse_and_eval(f"${reg_lo}"))
            # r_hi = int(gdb.parse_and_eval(f"${reg_hi}"))
            # merged = ((r_hi & 0xFFFFFFFF) << 32) | (r_lo & 0xFFFFFFFF)
            # print(f"{reg_hi}:{reg_lo} = {merged:#018x}")
            gdb.execute(f"print/x ((unsigned long)${reg_hi} << 32) | ${reg_lo}")
        except Exception as e:
            print(f"Error: {e}")
        gdb.execute("continue")
        return False

AutoPrintBreakpoint()
end