import typing
if typing.TYPE_CHECKING:
    from s2lir.Function import Function
    from s2lir.Basicblock import BasicBlock
    from s2lir.Operand import Operand
    from s2lir.Instruction import Instruction
    
class ReachingDefinitionsAnalysis:
    def __init__(self, func):
        self.func : Function = func
        self.all_defs : dict[str, tuple[Instruction, str]] = {}  # {reg: set of (inst, reg) pairs defining reg}
        self.gen : dict[BasicBlock, set[tuple[Instruction, str]]] = {}  # {bb: set of (inst, reg) pairs}
        self.kill : dict[BasicBlock, set[tuple[Instruction, str]]] = {}  # {bb: set of (inst, reg) pairs}
        self.in_defs : dict[BasicBlock, set[tuple[Instruction, str]]] = {}  # {bb: set of (inst, reg) pairs}
        self.out_defs : dict[BasicBlock, set[tuple[Instruction, str]]] = {}  # {bb: set of (inst, reg) pairs}
        self._collect_all_definitions()
        self.compute_reaching_definitions()

    def _collect_all_definitions(self):
        """Collect all definitions of each register across the program."""
        for bb in self.func.blocks:
            for inst in bb.ins:
                for reg in inst.get_kill_set():
                    if reg not in self.all_defs:
                        self.all_defs[reg] = set()
                    assert (inst, reg) not in self.all_defs[reg]
                    self.all_defs[reg].add((inst, reg))

    def compute_reaching_definitions(self):
        """Perform forward dataflow analysis for reaching definitions."""
        
        for bb in self.func.blocks:
            self.gen[bb] = set()
            self.kill[bb] = set()
            self.in_defs[bb] = set()
            self.out_defs[bb] = set()

        # Compute GEN and KILL per block
        for bb in self.func.blocks:
            for inst in bb.ins:
                for reg in inst.get_kill_set():  # Each destination operand
                    G = {(inst, reg)}  # Current definition
                    K = self.all_defs.get(reg, set()) - G  # All other defs of reg
                    self.gen[bb] = G | (self.gen[bb] - K)
                    self.kill[bb] = K | (self.kill[bb] - G)

        # Fixed-point iteration for IN and OUT
        changed = True
        while changed:
            changed = False
            for bb in self.func.blocks:  # Forward order
                old_in = self.in_defs[bb].copy()
                old_out = self.out_defs[bb].copy()

                # IN = union of OUT of predecessors
                self.in_defs[bb] = set()
                for pred in bb.preds:
                    self.in_defs[bb].update(self.out_defs[pred])

                # OUT = GEN ∪ (IN - KILL)
                self.out_defs[bb] = self.gen[bb] | (self.in_defs[bb] - self.kill[bb])

                if self.in_defs[bb] != old_in or self.out_defs[bb] != old_out:
                    changed = True

    def get_reaching_definitions_before(self, inst: Instruction):
        """Get definitions reaching the instruction. compute_reaching_definitions's info is BB-level info."""
        bb = inst.BB
        defs = self.in_defs[bb].copy() # get definitions that reaches this BB at the start
        # Process instructions before 'inst' in program order
        for i in bb.ins[:bb.instructions.index(inst)]:
            for reg in i.get_kill_set():
                # Remove prior definitions of this register, since it's now killed by the current definition
                defs.difference_update({(d_inst, r) for d_inst, r in defs if r == reg})
                # Add this new definition
                defs.add((i, reg))
        return defs

    def get_reaching_definitions_after(self, inst: Instruction):
        """Get definitions reaching just after the instruction."""
        defs = self.get_reaching_definitions_before(inst).copy()
        for reg in inst.get_kill_set():
            defs.difference_update({(d_inst, r) for d_inst, r in defs if r == reg})
            defs.add((inst, reg))
        return defs
