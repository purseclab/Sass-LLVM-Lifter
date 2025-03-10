from s2lir.Basicblock import BasicBlock
from utils import *
from llvmlite import ir as llvmir

class Function:
    def __init__(self, function_dict):
        self.module = None
        self.name = function_dict[".function_name"] 
        self.section = function_dict[".section"]
        self.sectioninfo = function_dict[".sectioninfo"]
        self.align = function_dict[".align"]
        self.global_name = function_dict[".global"]
        self.type = function_dict[".type"]
        self.size = function_dict[".size"]
        self.other = function_dict[".other"]
        # self.name = name
        self.blocks = [BasicBlock(BB, self) for BB in function_dict["Basicblocks"]]


        # All the Arguments
        self.Args = []

        # All the Labels
        # self.labels = [BB.label for BB in self.blocks]
        self.labels2block = {BB.label: BB for BB in self.blocks}

        ################################################################
        self.ArgMap = {} # ArgMap will be built via parse(), e.g. {0x10: <Operand>, 0x30: <Operand>}
        self.BlockMap = {}
        self.ArgIdxes = []
        self.Args = []
    
    def parse(self):
        # Break Basic Blocks if it contains unconditional branch, e.g., @P0 BRA `(.L_x_15); or unconditional execution, e.g.,  @!P3 BRA `(.L_x_18) ;

        # Parse all the BasicBlocks
        for block in self.blocks:
            block.parse()

    # Get the arguments for current function
    def getArgs(self):
        # Sort the map
        SortedArgs = {key: val for key, val in
                    sorted(self.ArgMap.items(), key = lambda ele: ele[0])}

        # TODO: Now we treat everything in the c[0x] as argument, including blockDim, JP Wan 2025-02-24
        # Collect the keys
        for Offset, Operand in SortedArgs.items():
            self.ArgIdxes.append(Offset)
            self.Args.append(Operand)

    # Get the registers used in this function
    def getRegs(self):
        Regs = {} # K: R2_INT -> Operand()
        for BB in self.blocks:
            BB.GetRegs(Regs)
        return Regs


    # Build the map between basic block and its IR version
    def BuildBBToIRMap(self, IRFunc):
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


    def lift(self, llvm_module):

        # Collect all Args
        self.getArgs()
        IRArgs = {}
        ArgTypes = []
        # Get the types of the Arguments
        for Arg in self.Args:
            ArgTypes.append(Arg.getIRType())

        FuncTy = llvmir.FunctionType(llvmir.VoidType(), ArgTypes)
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
        ExitBlock = IRFunc.append_basic_block("Internal_Exit")
        ExitIRBuilder = llvmir.IRBuilder(ExitBlock)
        ExitIRBuilder.ret_void()

        # Collect registers' name with type information
        IRRegs = {}
        Regs = self.getRegs() # => self.Regs
        dprint(Regs)

        # EntryBlock = self.BlockMap[self.blocks[0]]
        # EntryBuilder = llvmir.IRBuilder(EntryBlock)

        IsEntry = True
        for BB in self.blocks:
            # Get basic block
            IRBlock = self.BlockMap[BB]

            # if IRBlock == EntryBlock:
            #     Builder = EntryBuilder
            # else:
            Builder = llvmir.IRBuilder(IRBlock)

            if IsEntry:
                # Alloc the variable for registers
                for Reg in Regs:
                    Operand = Regs[Reg]
                    RegName = Operand.getIRRegName()
                    assert RegName == Reg
                    IRReg = Builder.alloca(Operand.getIRType(), 8, RegName)
                    # Register the IR registers
                    IRRegs[RegName] = IRReg


            BB.lift(Builder, IRRegs, IRArgs, self.BlockMap, IRFunc, ExitBlock)

            IsEntry = False