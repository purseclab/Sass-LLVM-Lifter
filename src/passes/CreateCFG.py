"""
Control Flow Graph (CFG) construction.

This module provides the `CFG` class, which connects adjacent basic blocks and
resolves SASS branch instructions to build a complete control flow graph for a
function.
"""
from s2lir.Instruction import Instruction
from s2lir.Basicblock import BasicBlock
import copy
from utils import *

import typing

if typing.TYPE_CHECKING:
    from s2lir.Function import Function


class CFG:
    """
    Construct the control flow graph for a SASS function.
    """

    def __init__(self, func):
        """
        Initialize the CFG builder and construct the graph.

        Args:
            func (Function.Function): Function IR object.
        """
        self.func: Function = func

        # Synthetic exit block used to unify RET targets for internal functions.
        self.return_point: BasicBlock = BasicBlock(
            {"label": f"ExitBlock_{self.func.name}", "instructions": []},
            self.func,
        )

        self.__apply()

    def __apply(self):
        """
        Connect adjacent basic blocks and resolve branch edges.

        The final instruction of each basic block is examined and handled as one
        of the following cases:

            1. Unconditional branch, for example: BRA `(.L_x_10)`
            2. Conditional branch, for example: @P2 BRA `(.L_x_10)`
            3. Predicated non-branch instruction (Conditional Execution), for example:
               @P1 FMNMX R11, R11, R4, !PT
            4. Ordinary instruction, for example: MOV R2, 0x4
        """

        # Note: predecessor/successor links between the original
        # function and internal function may affect later analyses such
        # as reaching definitions or type analysis. That is not addressed here.
        BBs = self.func.blocks
        BB_i_end = len(BBs)
        BB_i = 0
        while BB_i < BB_i_end:
            BB = BBs[BB_i]
            assert len(BB.instructions) > 0
            final_inst = BB.instructions[-1]

            # Case 1: unconditional branch.
            if final_inst.isBranch() and not final_inst.isConditionExpr():
                targetBB = final_inst.branch_target
                BB.succs.append(targetBB)
                targetBB.preds.append(BB)

            # Case 2: conditional branch.
            if final_inst.isBranch() and final_inst.isConditionExpr():
                targetBB = final_inst.branch_target
                BB.succs.append(targetBB)
                targetBB.preds.append(BB)

                if BB_i < len(BBs) - 1:
                    nextBB = BBs[BB_i + 1]
                    BB.succs.append(nextBB)
                    nextBB.preds.append(BB)

            # Case 4: ordinary instruction.
            if not final_inst.isBranch() and not final_inst.isConditionExpr():
                if BB_i < len(BBs) - 1:
                    nextBB = BBs[BB_i + 1]
                    BB.succs.append(nextBB)
                    nextBB.preds.append(BB)

            for i, ins in enumerate(BB.instructions):

                if ins.opcode == "RET":
                    if self.func.internal_func:
                        assert ins.branch_target is None
                        assert ins == BB.instructions[-1]
                        # Redirect all RET instructions to the synthetic exit block.
                        ins.branch_target = self.return_point
                        BB.succs.append(self.return_point)
                        self.return_point.preds.append(BB)
                        if self.func.returnBB is None:
                            self.func.returnBB = self.return_point
                        else:
                            assert self.func.returnBB == self.return_point
                        continue

                if ins.opcode == "CALL":
                    assert not ins.disabled
                    # Resolve the internal function referenced by the CALL.
                    internal_func_name = ins.operands[0].get_call_func_name_type()[0]
                    internal_func = self.func.module.internal_functions[internal_func_name]

                    # Duplicate blocks, instructions, and operands so later
                    # analyses can operate on an isolated copy.
                    # Note: Duplicated instructions retain their original
                    # addresses, which may not reflect real offsets.
                    internal_func_new: Function = internal_func.duplicate()
                    returnBlock = internal_func_new.returnBB
                    entryBlock = internal_func_new.blocks[0]
                    BBs_new = internal_func_new.blocks + [returnBlock]

                    # Step 1: Split the current block if needed, then splice in
                    # the cloned internal function blocks.
                    if len(BB.instructions) == 1 or ins == final_inst:
                        # No block split is required.
                        for succ in BB.succs:
                            succ_preds_len = succ.preds
                            succ.preds = [p for p in succ.preds if p != BB] + [returnBlock]
                            assert succ_preds_len == len(succ.preds)

                        returnBlock.succs = BB.succs
                        BB.succs = [entryBlock]
                        entryBlock.preds = [BB]

                    else:
                        # Split the current block.
                        #
                        # Possible scenarios:
                        # - CALL is the first instruction
                        # - CALL is in the middle
                        #
                        # It cannot be the last or only instruction here.

                        CALL_BB_name = BB.label + "_CALL_" + str(final_inst.addr)
                        CALL_BB = BasicBlock(
                            {"label": CALL_BB_name, "instructions": []},
                            self.func,
                        )
                        # Block containing the CALL instruction; after splitting,
                        # the CALL becomes its final instruction.
                        CALL_BB.addr = final_inst.addr

                        postCALL_BB_name = BB.label + "_postCALL_" + str(final_inst.addr)
                        postCALL_BB = BasicBlock(
                            {"label": postCALL_BB_name, "instructions": []},
                            self.func,
                        )
                        # Block containing the instructions that originally
                        # followed the CALL.
                        postCALL_BB.addr = final_inst.addr

                        CALL_BB.instructions = BB.instructions[:i+1]
                        postCALL_BB.instructions = BB.instructions[i+1:]

                        for call_inst in CALL_BB.instructions:
                            call_inst.BB = CALL_BB

                        for post_call_inst in postCALL_BB.instructions:
                            post_call_inst.BB = postCALL_BB

                        # Re-parsing the newly created blocks is currently
                        # skipped because it is not required here.
                        self.func.labels2block[postCALL_BB.label] = postCALL_BB
                        self.func.labels2block[CALL_BB.label] = CALL_BB
                        self.func.labels2block[BB.label] = None

                        postCALL_BB.preds = [returnBlock]
                        postCALL_BB.succs = BB.succs

                        for succ in BB.succs:
                            succ_preds_len = len(succ.preds)
                            succ.preds = [p for p in succ.preds if p != BB] + [postCALL_BB]
                            assert succ_preds_len == len(succ.preds)

                        CALL_BB.preds = BB.preds
                        CALL_BB.succs = [entryBlock]
                        entryBlock.preds = [CALL_BB]
                        returnBlock.succs = [postCALL_BB]
                        BBs[BB_i] = CALL_BB
                        BBs[BB_i+1:BB_i+1] = [postCALL_BB]

                    for b in BBs_new:
                        b.func = self.func
                        self.func.labels2block[b.label] = b

                    BBs[BB_i + 1:BB_i + 1] = BBs_new
                    self.func.blocks = BBs

                    # Step 2: Establish predecessor/successor links across the
                    # call boundary.
                    # Step 3: Disable the original CALL instruction.
                    ins.disabled = True

                    BB_i_end = len(BBs)
                    BB_i += len(BBs_new) + 1

                    # Note: Verify that inserted blocks are placed correctly in
                    # all cases, and that RET edges remain accurate for internal
                    # function invocations.
                    continue
            BB_i += 1

        print("=" * 100)

        """
        Handle case 3 by creating a dedicated conditional block.

        Example:
            Original BB:    [inst1, inst2, inst3, @inst4]
            Conditional BB: [@inst4, BRA `(nextBB)]
            Next BB:        [inst5, inst6, inst7]
        """
        new_BBs = []
        for BB_i in range(len(BBs)):
            BB = BBs[BB_i]

            new_BBs.append(BB)

            if len(BB.instructions) == 0:
                continue

            final_inst = BB.instructions[-1]

            if not final_inst.isBranch() and final_inst.isConditionExpr():
                # Create the conditional block.
                conditionalBB_name = BB.label + "_conditionalExpr_" + str(final_inst.addr)
                conditionalBB = BasicBlock(
                    {"label": conditionalBB_name, "instructions": []},
                    self.func,
                )
                conditionalBB.addr = final_inst.addr

                # Clone the instruction and remove the predicate marker.
                dprint(final_inst.addr, final_inst.content_dict)
                dprint("&" * 100)
                inst = Instruction(final_inst.content_dict, conditionalBB)
                inst.condition_expr = ""
                inst.operands = inst.operands[:-1]

                assert inst.isConditionExpr() == False

                conditionalBB.instructions.append(inst)

                BB.succs.append(conditionalBB)
                conditionalBB.preds.append(BB)

                # If subsequent block exists and this is not an EXIT,
                # connect the conditional block to the block.
                if BB_i < len(BBs) - 1 and not final_inst.isExit():
                    nextBB = BBs[BB_i + 1]

                    conditionalBB_to_next_BB = Instruction(
                        {
                            "addr": final_inst.addr,
                            "content": [["BRA"], ["`(%s)" % nextBB.label], ""],
                        },
                        conditionalBB,
                    )
                    conditionalBB.instructions.append(conditionalBB_to_next_BB)

                    conditionalBB.succs.append(nextBB)
                    nextBB.preds.append(conditionalBB)

                BB.func.labels2block[conditionalBB.label] = conditionalBB
                conditionalBB.parse()
                new_BBs.append(conditionalBB)

        # Apply the updated block layout.
        self.func.blocks = new_BBs