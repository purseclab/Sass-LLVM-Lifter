"""
Function Module.

Defines the `Function` class that represents a single SASS function metadata and body.
Handles building the layout of Basic Blocks and orchestrates their LLVM lifting.
"""
from s2lir.Basicblock import BasicBlock
from utils import *
from llvmlite import ir as llvmir
import copy
import typing
if typing.TYPE_CHECKING:
    from main import LLVMModule
    from s2lir.Operand import Operand
    from s2lir.Instruction import Instruction
    from passes import TypeAnalysis
from s2lir.constants import *


class Function:
    """
    Represents a full SASS function, tracking basic blocks, arguments, registers, 
    and performing high-level lifting initialization.
    """
    def __init__(self, function_dict):
        """
        Args:
            function_dict (dict): Parsed function metadata and basic block info.
        """
        self.module : LLVMModule = None
        self.name = function_dict[".function_name"] 
        self.section = function_dict[".section"]
        self.sectioninfo = function_dict[".sectioninfo"]
        self.align = function_dict[".align"]
        self.global_name = function_dict[".global"]
        self.type = function_dict[".type"]
        self.size = function_dict[".size"]
        self.weak = function_dict[".weak"]
        self.other = function_dict[".other"]
        self.internal_func: bool = function_dict["internal_func"]
        self.parent_func: Function | None =  None  # Maintains reference to parent for internal functions
        # self.name = name
        self.blocks : typing.List[BasicBlock] = [BasicBlock(BB, self) for BB in function_dict["Basicblocks"]]
        
        self.returnBB : None | BasicBlock = None
        
        self.IRRegs_cur_status: dict[str, str] = {} # Tracks the most recently loaded register type (e.g., R24 -> R24_Float32) for consistency

        
        self.labels2block: dict[str, BasicBlock] = {BB.label: BB for BB in self.blocks}

        # SASS addr (such as 0x47f0) to Instruction Object
        # Note: Handle cases where Instruction Object is redefined; uniqueness is needed after deepcopy
        self.sassAddr2Inst: dict[int, Instruction] = {}

        ################################################################
        self.ArgMap : dict[int, set[Operand]]= {} # Maps offsets to operands, built via parse() (e.g., {0x10: <Operand>})
        self.BlockMap = {} # Mapping from LLVMModule BasicBlock to llvmlite IRBlock
        self.ArgIdxes = []
        
        self.Args : list[set[Operand]] = [] # Args[0] contains operands for the first parameter
        
        self.typeAnalysis: TypeAnalysis = None
        
        self.IRRegs: dict[str, llvmir.AllocaInstr] = {}
        
        self.rev = 0
        
        self.IRArgs = None
    
    def parse(self):
        # Parse all the BasicBlocks
        for block in self.blocks:
            block.parse()
            block.addr = block.instructions[0].addr

        dprint([x.label for x in self.blocks])
        dprint([len(x.instructions) for x in self.blocks])
        dprint("+"*100)
        '''
        Break Basic Blocks if it contains conditional branch, e.g., @P0 BRA `(.L_x_15); or negated conditional branch, e.g.,  @!P3 BRA `(.L_x_18);
        '''
        blocks = self.blocks
        split_blocks = []
        for BB in blocks:
            conditional_ins_index = []
            # find internal branches, except the last one
            for inst_i in range(len(BB.instructions)-1):
                inst = BB.instructions[inst_i]

                if inst.isBranch() and not inst.isConditionExpr(): 
                    # Unconditional branch; Truncate block; assumes no BRX or indirect branches.
                    BB.instructions = BB.instructions[:inst_i+1]
                    break
            
                if inst.isBranch() or inst.isConditionExpr():
                    conditional_ins_index.append(inst_i)

            
            # Split instructions into sublists
            start = 0
            sublists = []
            # dprint(conditional_ins_index)
            # dprint("Length of instructions: ", len(BB.instructions))
            # dprint("*"*100)
            
            for index in conditional_ins_index:
                sublists.append(BB.instructions[start:index+1])
                start = index+1
            
            if start < len(BB.instructions):
                sublists.append(BB.instructions[start:])

            # Create new basic blocks
            BB.instructions = sublists[0]
            split_blocks.append(BB)
            for sublist in sublists[1:]:
                # new_BB = copy.deepcopy(BB)
                new_BB = BasicBlock({"label": BB.label, "instructions": []}, self)
                new_BB.instructions = sublist
                
                for inst in new_BB.instructions:
                    inst.BB = new_BB
                
                new_BB.addr = sublist[0].addr
                new_BB.label = new_BB.label + "_split_" + str(sublist[0].addr)
                split_blocks.append(new_BB)
                self.labels2block[new_BB.label] = new_BB
                
                # dprint(len(sublist))
                # dprint(new_BB.label)
                # dprint(new_BB.addr)
                # dprint("----")
            dprint([[ y.addr for y in x] for x in sublists])
            
        self.blocks = split_blocks
        dprint([x.label for x in self.blocks])
        dprint([len(x.instructions) for x in self.blocks])
        dprint("+"*100)
        dprint("Parse Done")



    # Get the arguments for current function
    def getArgs(self):
        # Sort the map
        SortedArgs = {key: val for key, val in
                    sorted(self.ArgMap.items(), key = lambda ele: ele[0])}

        # Note: Currently treating everything in c[0x] as an argument, including blockDim.
        # Collect the keys
        for Offset, Operands in SortedArgs.items():
            self.ArgIdxes.append(Offset)
            self.Args.append(Operands)

    # Get the registers used in this function
    def getRegs(self):
        Regs = {} # K: R2_INT -> Operand()
        for BB in self.blocks:
            BB.GetRegs(Regs)
        return Regs


    # Build the map between basic block and its IR version
    def BuildBBToIRMap(self, IRFunc: llvmir.Function):
        # IRFunc is LLVM Function
        IsEntry = True
        for BB in self.blocks:
            if IsEntry:
                BBName = "Entry_" + BB.label
            else:
                BBName = BB.label

            # Create the basic block
            IRBlock = IRFunc.append_basic_block(BBName)
            # Register IR block
            self.BlockMap[BB] = IRBlock
            
            IsEntry = False

    def duplicate(self):
        # Ensure duplicate() is only called on the original Function to maintain accurate revision counts (self.rev).
        
        original_names = [b.label for b in self.blocks]
        original_labels2block = self.labels2block
        self.labels2block = {}
        self.rev += 1
        
        for b in self.blocks:
            original_names.append(b.label)
            self.labels2block[b.updateName(self.rev)] = b
        
        # Deepcopy preserves relative references, ensuring labels2block maps to the newly copied BasicBlocks.
        newFunc = copy.deepcopy(self)
        
        # Reconfigure labels2block mapping post-deepcopy.
        self.labels2block = original_labels2block
        # Restore BB names
        for b in self.blocks:
            b.updateName(None)
        
        return newFunc
            
        
            
    def lift(self, llvm_module : llvmir.Module, shared_mem_elements=4096):
        """
        Constructs the LLVM Function signature, populates LLVM Basic Blocks,
        and commands individual BasicBlocks to lift their SASS instructions into IR.
        """
        # If this function contains shared/local memory ops, ensure the module contains a shared-data global so lowering can GEP into it.
        # We create a default i32[4096] shared global named with 'sdata'
        # so Operand.IR_ValueFromPointer can find it.
        needs_shared = False
        
        for BB in self.blocks:
            for inst in BB.instructions:
                if inst.opcode in ("LDS", "STS", "STL"):
                    needs_shared = True
                    break
            if needs_shared:
                break
            

        if needs_shared:
            gname = f"_{self.name}_sdata"
            existing = llvm_module.globals.get(gname, None)
            
            if existing is None:
                arr_ty = llvmir.ArrayType(llvmir.IntType(32), shared_mem_elements) # i32[4096] array
                gv = llvmir.GlobalVariable(llvm_module, arr_ty, name=gname, addrspace=3)
                gv.align = 16
                gv.linkage = 'internal'
                gv.initializer = llvmir.Constant(arr_ty, None) # leave uninitialized
                gv.global_constant = False

        IRArgs = {}
        self.IRArgs = IRArgs
        ArgTypes = []
        # Get the types of the Arguments
        for Arg in self.Args:
            ArgTypes.append(list(Arg)[0].getIRType())

        # Requires further refactoring of Arg-related methods in the future.
        FuncTy = llvmir.FunctionType(llvmir.VoidType(), ArgTypes)
        
        
        existing_fn = llvm_module.globals.get(self.name, None)
        if existing_fn is not None:
            # This fixes llvmlite.ir._utils.DuplicatedNameError: $__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath
            # Note: Investigate whether it's optimal to use llvmir.Function in CALL parsing, or declare for linking
            # test_intrinsics.py does show that llvmir.Function appears to be the correct way
            IRFunc = existing_fn
        else:
            IRFunc = llvmir.Function(llvm_module, FuncTy, self.name)
            IRFunc.calling_convention = "ptx_kernel"
            # Note: Study LLVM IR generated by clang to determine necessary attributes (e.g. dso_local, align)

        # Set name for each argument
        for i in range(len(ArgTypes)):
            IRFunc.args[i].name="Arg_" + str(i)

        
        ArgID = 0
        for Arg in self.Args:
            # Store the Argument into ArgIdxes
            IRArgs[self.ArgIdxes[ArgID]] = IRFunc.args[ArgID]
            for a in Arg:
                a.ArgID = ArgID
            # Increment argument ID
            ArgID = ArgID + 1

        # Construct the map based on IR basic block
        self.BuildBBToIRMap(IRFunc)
        # Register mapping initialized during entry block code generation.
        

        # Append termination block
        ExitBlock = IRFunc.append_basic_block("ExitFunction")
        ExitIRBuilder = llvmir.IRBuilder(ExitBlock)
        ExitIRBuilder.ret_void()

        # Gather registers required for allocation
        IRRegs = self.IRRegs # e.g. IRRegs["R39_NOTYPE"]
        Regs = self.getRegs() # => self.Regs
        dprint(Regs)

        # EntryBlock = self.BlockMap[self.blocks[0]]
        # EntryBuilder = llvmir.IRBuilder(EntryBlock)

        IsEntry = True
        for i, BB in enumerate(self.blocks):
            # Get basic block
            IRBlock = self.BlockMap[BB]

            # if IRBlock == EntryBlock:
            #     Builder = EntryBuilder
            # else:
            Builder: llvmir.IRBuilder = llvmir.IRBuilder(IRBlock)

            if IsEntry:
                if self.internal_func:
                    assert False # NOTE: irrelevant now
                    
                    assert self.parent_func is not None
                    assert isinstance(self.parent_func, Function)
                    # Internal functions reuse the parent's IRRegs to enable bidirectional register access without passing explicit arguments.
                    self.IRRegs = self.parent_func.IRRegs
                    IRRegs = self.IRRegs
                    
                # Allocate local variables for registers
                for Reg in Regs:
                    Operand = Regs[Reg]
                    RegName = Operand.getRegName()
                    assert RegName in Reg
                    if RegName not in IRRegs:
                        IRReg = Builder.alloca(llvmir.IntType(1) if "P" in RegName else llvmir.IntType(32), 1, RegName)
                        # Register the IR registers
                        IRRegs[RegName] = IRReg
                
                for Reg in SM_75_Reg_Set + SM_75_UReg_Set:
                    # Preallocate all standard registers to prevent dominance errors from instructions writing to unallocated adjacent registers (e.g., IMAD.WIDE).
                    
                    if Reg not in IRRegs:
                        IRReg = Builder.alloca(llvmir.IntType(1) if "P" in Reg else llvmir.IntType(32), 1, Reg)
                        # Register the IR registers
                        IRRegs[Reg] = IRReg
                
                # Initialize values to constant registers (PT, RZ, etc.)
                if "PT" in IRRegs:
                    Builder.store(llvmir.Constant(llvmir.IntType(1), 1), IRRegs["PT"])
                if "UPT" in IRRegs:
                    Builder.store(llvmir.Constant(llvmir.IntType(1), 1), IRRegs["UPT"])
                if "RZ" in IRRegs:
                    Builder.store(llvmir.Constant(llvmir.IntType(32), 0), IRRegs["RZ"])
                if "URZ" in IRRegs:
                    Builder.store(llvmir.Constant(llvmir.IntType(32), 0), IRRegs["URZ"])
                    
                
                
            nextBlock = None if i == len(self.blocks) - 1 else self.blocks[i+1]
            BB.lift(Builder, IRRegs, IRArgs, self.BlockMap, IRFunc, ExitBlock, nextBlock)

            IsEntry = False