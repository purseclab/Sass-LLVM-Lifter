from pyvis.network import Network
import networkx as nx
import uuid

from s2lir.Basicblock import BasicBlock
from s2lir.Instruction import Instruction
from s2lir.Operand import Operand
from passes.TypeAnalysis import TypeAnalysis

class InstructionVisualizer:
    def __init__(self, type_analyzer: TypeAnalysis):
        self.type_analyzer = type_analyzer
        self.net = Network(directed=True, notebook=False, height="800px", width="100%")
        self.graph = nx.DiGraph()
        self.node_map: dict[object, str] = {}  # map for BB, inst, operand nodes

    def _add_basic_block_node(self, bb: BasicBlock):
        bb_id = f"bb_{id(bb)}"
        label = f"BB: {bb.label}\nInstr: {len(bb.instructions)}"
        self.graph.add_node(
            bb_id,
            label=label,
            title=f"Basic Block {bb.label}",
            shape="box",
            color="#FFCCCC",
            level=0
        )
        self.node_map[bb] = bb_id
        return bb_id

    def _add_control_flow_edges(self):
        for bb in self.type_analyzer.func.blocks:
            src = self.node_map.get(bb)
            for succ in getattr(bb, 'succs', []):
                dst = self.node_map.get(succ)
                if src and dst:
                    self.graph.add_edge(src, dst, title="cf", color="#FF0000", arrows="to")

    def _add_instruction_node(self, inst: Instruction, bb_id: str):
        inst_id = f"inst_{id(inst)}"
        self.graph.add_node(
            inst_id,
            label=str(inst),
            title=f"{type(inst).__name__}: {inst}",
            shape="box",
            color="#CCEECC",
            level=1,
            parent=bb_id
        )
        self.graph.add_edge(bb_id, inst_id, title="contains", color="#AAAAAA")
        self.node_map[inst] = inst_id
        return inst_id

    def _add_operand_nodes(self, inst: Instruction, operand_info: dict):
        inst_id = self.node_map[inst]
        for idx, op in operand_info.items():
            op_node_id = f"op_{id(inst)}_{idx}"
            info = op
            title = (
                f"Operand: {info['operand']}<br>USE: {info['is_use']} DEF: {info['is_def']}" 
                f"<br><a href=\"#{inst_id}\">Back to Instruction</a>"
            )
            self.graph.add_node(
                op_node_id,
                label=str(info['operand']),
                title=title,
                shape="ellipse",
                color="#EEEEFF",
                level=2,
                parent=inst_id
            )
            self.graph.add_edge(inst_id, op_node_id, title="has operand", dashes=True)
            self.node_map[(inst, idx)] = op_node_id

    def _add_data_flow_edges(self, inst: Instruction, operand_info: dict):
        for idx, info in operand_info.items():
            if not info['is_use']:
                continue
            use_node = self.node_map.get((inst, idx))
            for def_inst, reg in info['defs_reaching']:
                for key, op_node in list(self.node_map.items()):
                    if isinstance(key, tuple) and key[0] is def_inst:
                        self.graph.add_edge(
                            op_node,
                            use_node,
                            title=f"{reg}",
                            label=reg,
                            color="#2288FF",
                            arrows="to"
                        )

    def visualize(self, filename="instruction_flow.html"):
        # Add BB nodes
        for bb in self.type_analyzer.func.blocks:
            self._add_basic_block_node(bb)
        # Control-flow edges
        self._add_control_flow_edges()

        # Instructions and operand nodes
        for bb in self.type_analyzer.func.blocks:
            bb_id = self.node_map[bb]
            for inst in bb.instructions:
                self._add_instruction_node(inst, bb_id)
                # Collect only register operands
                operand_info = {}
                for idx, op in enumerate(inst.operands):
                    if (op.isReg or op.isPReg) and op.reg:
                        info = self.type_analyzer.get_use_def_info(inst, op)
                        info['operand'] = op
                        operand_info[idx] = info
                # Add only register operand nodes
                if operand_info:
                    self._add_operand_nodes(inst, operand_info)
                    self._add_data_flow_edges(inst, operand_info)


        self.net.from_nx(self.graph)
        self.net.set_options(self._default_options())
        self.net.show(filename, notebook=False)

    def _default_options(self) -> str:
        return '''{
          "layout": {"hierarchical": {"enabled": true}},
          "physics": {"hierarchicalRepulsion": {"centralGravity":0}},
          "interaction": {"hover":true}
        }'''
