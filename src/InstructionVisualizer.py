from pyvis.network import Network
import networkx as nx
import uuid

from s2lir.Basicblock import BasicBlock
from s2lir.Instruction import Instruction
from s2lir.Operand import Operand
from passes.TypeAnalysis import TypeAnalysis

import typing

class InstructionVisualizer:
    def __init__(self, type_analyzer: TypeAnalysis):
        self.type_analyzer: TypeAnalysis = type_analyzer
        self.net: Network = Network(directed=True, notebook=False, height="800px", width="100%")
        self.graph: nx.DiGraph = nx.DiGraph()
        self.node_map: dict[Instruction|BasicBlock, str] = {}  # Instruction/BasicBlock -> node ID
        self.edge_map: dict[tuple[str, str], str] = {}  # (src, dst) -> edge ID

    def _add_basic_block_node(self, bb: BasicBlock):
        """Create node for basic block"""
        bb_id = f"bb_{id(bb)}"
        label = f"BB: {bb.label}\n" if hasattr(bb, 'label') else f"BB: {id(bb)}\n"
        label += f"Instructions: {len(bb.instructions)}"
        
        self.graph.add_node(bb_id, 
                          label=label,
                          title=f"Basic Block: {bb.label}",
                          shape="box",
                          color="#FFCCCC",
                          level=0)  # Top level
        self.node_map[bb] = bb_id
        return bb_id

    def _add_instruction_node(self, inst: Instruction, bb_id):
        """Create node for instruction with metadata"""
        inst_id = f"inst_{id(inst)}"
        tooltip = f"<b>Instruction:</b> {inst}<br><b>Type:</b> {type(inst).__name__}<br>"
        tooltip += "<b>Operands:</b><ul>"
        
        # Store operand info for edge creation
        operand_info = {}
        
        for idx, op in enumerate(inst.operands):
            try:
                info = self.type_analyzer.get_use_def_info(inst, op)
                operand_info[idx] = info
                
                # Add to tooltip
                tooltip += f"<li>Op{idx}: {op}<br>"
                tooltip += f"USE: {info['is_use']}, DEF: {info['is_def']}<br>"
                tooltip += f"Reaches next: {info['reaches_next']}<br>"
                tooltip += f"Kill set: {len(info['kill_set'])} registers<br>"
                tooltip += f"Reaching defs: {len(info['defs_reaching'])}</li>"
            except Exception as e:
                tooltip += f"<li>Op{idx}: {op}<br>Error: {str(e)}</li>"
                continue
        
        tooltip += "</ul>"
        
        self.graph.add_node(inst_id, 
                          label=str(inst)[:50] + ("..." if len(str(inst)) > 50 else ""),
                          title=tooltip,
                          shape="box",
                          color="#CCEECC",
                          level=1,  # Below BB level
                          parent=bb_id)
        
        # Add BB -> Instruction edge
        self.graph.add_edge(bb_id, inst_id, title="contains", color="#AAAAAA")
        self.node_map[inst] = inst_id
        
        return inst_id, operand_info

    def _add_data_flow_edges(self, inst, inst_id, operand_info):
        """Add edges for data dependencies"""
        for op_idx, info in operand_info.items():
            if not info['is_use']:
                continue
                
            for def_inst, reg in info['defs_reaching']:
                # Handle external definitions
                if def_inst not in self.node_map:
                    if def_inst is None:
                        ext_id = f"ext_{reg}_{uuid.uuid4().hex[:8]}"
                        self.graph.add_node(ext_id, 
                                          label=f"External: {reg}",
                                          title=f"External definition of {reg}",
                                          shape="circle",
                                          color="#CCCCFF",
                                          level=2)
                        self.node_map[def_inst] = ext_id
                    else:
                        # Create missing instruction node
                        bb_id = self._find_basic_block(def_inst)
                        def_inst_id, _ = self._add_instruction_node(def_inst, bb_id)
                        self.node_map[def_inst] = def_inst_id
                
                src = self.node_map[def_inst]
                edge_key = (src, inst_id)
                
                # Add edge with register info
                if edge_key not in self.edge_map:
                    self.graph.add_edge(src, inst_id, 
                                      title=f"{reg} def → use",
                                      label=reg,
                                      color="#2288FF",
                                      dashes=True,
                                      arrows="to")
                    self.edge_map[edge_key] = True

    def _find_basic_block(self, inst):
        """Find which basic block an instruction belongs to"""
        for bb in self.type_analyzer.func.blocks:
            if inst in bb.instructions:
                if bb not in self.node_map:
                    self._add_basic_block_node(bb)
                return self.node_map[bb]
        return None

    def visualize(self, filename="instruction_flow.html"):
        # Create BB nodes first
        for bb in self.type_analyzer.func.blocks:
            if bb not in self.node_map:
                self._add_basic_block_node(bb)
        
        # Create instruction nodes and data flow edges
        for bb in self.type_analyzer.func.blocks:
            bb_id = self.node_map[bb]
            for inst in bb.instructions:
                inst_id, operand_info = self._add_instruction_node(inst, bb_id)
                self._add_data_flow_edges(inst, inst_id, operand_info)
        
        # Configure visualization
        self.net.from_nx(self.graph)
        self.net.set_options("""
        {
          "physics": {
            "hierarchicalRepulsion": {
              "centralGravity": 0,
              "springLength": 150
            },
            "minVelocity": 0.75,
            "solver": "hierarchicalRepulsion"
          },
          "layout": {
            "hierarchical": {
              "enabled": true,
              "levelSeparation": 200,
              "nodeSpacing": 150,
              "treeSpacing": 200
            }
          },
          "nodes": {
            "font": {
              "face": "monospace",
              "size": 12
            }
          },
          "edges": {
            "font": {
              "size": 10,
              "align": "middle"
            },
            "smooth": false
          },
          "interaction": {
            "hover": true,
            "tooltipDelay": 200
          }
        }
        """)
        self.net.show(filename, notebook=False)

# Usage
# visualizer = InstructionVisualizer(your_data_flow_analyzer_instance)
# visualizer.visualize("instruction_flow.html")