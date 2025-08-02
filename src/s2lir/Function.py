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


class Function:
    def __init__(self, function_dict):
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
        self.parent_func: Function | None =  None  # for internal func
        # self.name = name
        self.blocks : typing.List[BasicBlock] = [BasicBlock(BB, self) for BB in function_dict["Basicblocks"]]
        
        self.returnBB : None | BasicBlock = None
        
        self.IRRegs_cur_status: dict[str, str] = {} # tells us which register_type was last loaded value, e.g. R24: R24_Float32 means that the last store operation is done to R24_Float32 and it therefore holds the most up-to-date content for register R24

        # All the Labels
        # self.labels = [BB.label for BB in self.blocks]
        # BB.label such as .L_x_3; creates a mapping to the block itself
        self.labels2block : dict[str, BasicBlock] = {BB.label: BB for BB in self.blocks} # e.g. '.text._Z11gru_forwardPfS_S_S_iii': <s2lir.Basicblock.BasicBlock object at 0x79115787c8e0>
        
        
        # self.sassAddr2block: dict[str, BasicBlock] = {BB.instructions[0].addr: BB for BB in self.blocks} # first instruction's addr to BB, e.g. "0x0000" to <s2lir.Basicblock.BasicBlock object>
        
        # SASS addr (such as 0x47f0) to the first LLVM instruction inside a BB that implements that specific SASS instruction (there's usually more than one line of LLVM instruction for a given SASS instruction)
        # dont confuse Instruction.py with LLVM instruction (generated via IRBuilder)
        # IGNORE ABOVE
        
        # SASS addr (such as 0x47f0) to Instruction Object
        # TODO handle cases where Instruction Object is redefined, and also it might not be unique, esp after deepcopy
        self.sassAddr2Inst: dict[int, Instruction] = {}

        ################################################################
        self.ArgMap : dict[int, set[Operand]]= {} # ArgMap will be built via parse(), e.g. {0x10: <Operand>, 0x30: <Operand>}
        self.BlockMap = {} # key: LLVMModule's BB, value: llvmlite's BB
        self.ArgIdxes = []
        # All the Arguments
        self.Args : list[set[Operand]] = [] # self.Args[0] refers to all the operands corresponding to the 1st parameter
        
        self.typeAnalysis: TypeAnalysis = None
        
        self.IRRegs: dict[str, llvmir.AllocaInstr] = {}
        
        self.rev = 0
    
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
                    # Unconditional Branch; Just Remove all the instructions after this one (Now we assume that no BRX or indirect branch is supported)
                    BB.instructions = BB.instructions[:inst_i+1]
                    # print("==="*100)
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

        # TODO: Now we treat everything in the c[0x] as argument, including blockDim, JP Wan 2025-02-24
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
        # must only call duplicate on the original Function, not a duplicated one, or the self.rev would be inaccurate
        
        original_names = [b.label for b in self.blocks]
        original_labels2block = self.labels2block
        self.labels2block = {}
        self.rev += 1
        
        for b in self.blocks:
            original_names.append(b.label)
            self.labels2block[b.updateName(self.rev)] = b
        
        # note: deepcopy will preserve the relative references, so even though each BB are duplicated, the mapping in labels2block should still be valid in the new function, i.e. it would map to the new sets of BasicBlocks instead of creating yet another set of basicblocks just within the labels2block
        newFunc = copy.deepcopy(self)
        
        # setup label2block again (we cannot set this up before the deepcopy or the mapping would be wrong)
        self.labels2block = original_labels2block
        # restore BB names
        for b in self.blocks:
            b.updateName(None)
        
        return newFunc
            
        
            
    def lift(self, llvm_module : llvmir.Module):

        IRArgs = {}
        ArgTypes = []
        # Get the types of the Arguments
        for Arg in self.Args:
            ArgTypes.append(list(Arg)[0].getIRType())

        # need to fix self.getArgs/self.Args/.ArgMap/registerarg
        FuncTy = llvmir.FunctionType(llvmir.VoidType(), ArgTypes)
        
        
        existing_fn = llvm_module.globals.get(self.name, None)
        if existing_fn is not None:
            # This fixes llvmlite.ir._utils.DuplicatedNameError: $__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath
            # TODO but we still need to investigate whether it's right to use llvmir.Function in the CALL instruction's parsing, or if there's other ways to maybe declare the function (for linking later on)
            # test_intrinsics.py does show that llvmir.Function appears to be the correct way
            IRFunc = existing_fn
        else:
            IRFunc = llvmir.Function(llvm_module, FuncTy, self.name)

        # Set name for each argument
        for i in range(len(ArgTypes)):
            IRFunc.args[i].name="Arg_" + str(i)

        
        ArgID = 0
        for Arg in self.Args:
            # Store the Argument into ArgIdxes
            IRArgs[self.ArgIdxes[ArgID]] = IRFunc.args[ArgID]

            # Increment argument ID
            ArgID = ArgID + 1

        # Construct the map based on IR basic block
        self.BuildBBToIRMap(IRFunc)
        # The register name to IR register map, that is created at the entry block code generation
        

        # Add exit instruction
        ExitBlock = IRFunc.append_basic_block("ExitFunction")
        ExitIRBuilder = llvmir.IRBuilder(ExitBlock)
        ExitIRBuilder.ret_void()

        # Collect registers' name with type information
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
                    # we're only entering here after IRRegs for the parent function has been establish
                    # this way we can perform a shallow copy of the registers, meaning that the values of the registers will be shared between the two functions (bidirectional - if you write in internal func to R14, R14 will have the same value in parent func when you return to it). This way we also dont need to perform analysis to determine which registers are the arguments and return value, and based on emphirical observation, it doesnt seem like Nvidia would reset the registers when entering an internal function
                    self.IRRegs = self.parent_func.IRRegs
                    IRRegs = self.IRRegs
                    
                # Alloc the variable for registers
                for Reg in Regs:
                    Operand = Regs[Reg]
                    RegName = Operand.getRegName()
                    assert RegName in Reg
                    if RegName not in IRRegs:
                        IRReg = Builder.alloca(llvmir.IntType(1) if "P" in RegName else llvmir.IntType(32), 1, RegName)
                        # Register the IR registers
                        IRRegs[RegName] = IRReg

            nextBlock = None if i == len(self.blocks) - 1 else self.blocks[i+1]
            BB.lift(Builder, IRRegs, IRArgs, self.BlockMap, IRFunc, ExitBlock, nextBlock)

            IsEntry = False