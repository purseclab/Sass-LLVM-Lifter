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
        self.ArgMap = {}
        self.BlockMap = {}
        self.ArgIdxes = []
        self.Args = []
    
    def parse(self):
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



    def typeAnalysis(self):
        # TODO: Now we parse the type in each instruction. In the next step, we can parse it accross instructions

        
        for BB in self.blocks:
            for inst in BB.instructions:
                # Set Predicate TypeDesc
                for Op in inst.operands:
                    if Op.isPReg:
                        Op.setTypeDesc("Bool")
                # DirectSolve
                # if len(inst.operands) > 0:
                #     inst.DirectlySolveType()
        
        # Direct solve
    
    def transform(self):
        # PASS 1:  Type Analysis
        self.typeAnalysis()

        # PASS 2: Collect all Regs
        # TODO: what if a Reg is used multiple times? First R2, then [R2], JP Wan 2025-02-24
        # self.getRegs()
        # for k, v in self.Regs.items():
        #     dprint(f"{k}: {v.OriginalContent}")

        # PASS 3: Collect all Args
        # self.getArgs()
        print("Args: ",self.Args)
        print("ArgIdxes: ", self.ArgIdxes)


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
        ArgTypes = []
        # Get the types of the Arguments
        for Arg in self.Args:
            ArgTypes.append(Arg.getIRType())

        FuncTy = llvmir.FunctionType(llvmir.VoidType(), ArgTypes)
        IRFunc = llvmir.Function(llvm_module, FuncTy, self.name)

        # Construct the map based on IR basic block
        self.BuildBBToIRMap(IRFunc)

        IsEntry = True
        # The argument offset to IR argument map, that is created at the entry block code generation
        IRArgs = {}
        # The register name to IR register map, that is created at the entry block code generation
        IRRegs = {}

        ExitBlock = IRFunc.append_basic_block("Internal_Exit")
        ExitIRBuilder = llvmir.IRBuilder(ExitBlock)
        # Add exit instruction
        ExitIRBuilder.ret_void()

        for BB in self.blocks:
            # Get basic block
            IRBlock = self.BlockMap[BB]
            # Create IR builder
            Builder = llvmir.IRBuilder(IRBlock)

            if IsEntry:
                ArgID = 0
                # Alloc the variable for arguments and update argument map
                # TODO: Can we remove the store later? 
                for Arg in self.Args:
                    ArgName = "Arg" + str(ArgID)
                    IRArg = Builder.alloca(ArgTypes[ArgID], 8, ArgName)

                    # Register the IR argument
                    IRArgs[self.ArgIdxes[ArgID]] = IRArg
                    
                    # Store the argument values
                    Builder.store(IRFunc.args[ArgID], IRArg)

                    # Increment argument ID
                    ArgID = ArgID + 1
                # Collect registers' name with type information
                Regs = self.getRegs() # => self.Regs
                dprint(Regs)

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

        