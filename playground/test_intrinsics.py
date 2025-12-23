from llvmlite import ir, binding
import ctypes

def init_llvm():
    binding.initialize()
    binding.initialize_native_target()
    binding.initialize_native_asmprinter()

def test_intrinsic(intrinsic_name, arg_types, return_type, test_values, immarg_indices=[]):
    """Test LLVM intrinsics with support for immarg parameters"""
    module = ir.Module()
    
    # Create wrapper function (only takes non-immarg args)
    wrapper_name = f"test_{intrinsic_name.replace('.', '_')}"
    non_immarg_types = [t for i, t in enumerate(arg_types) if i not in immarg_indices]
    func_type = ir.FunctionType(return_type, non_immarg_types)
    func = ir.Function(module, func_type, name=wrapper_name)
    
    # Build IR
    block = func.append_basic_block("entry")
    builder = ir.IRBuilder(block)
    
    # Prepare arguments: use constants for immarg, variables for others
    call_args = []
    arg_idx = 0
    for i in range(len(arg_types)):
        if i in immarg_indices:
            # Use constant value from test_values
            call_args.append(ir.Constant(arg_types[i], test_values[i]))
        else:
            # Use function argument
            call_args.append(func.args[arg_idx])
            arg_idx += 1
    
    # Declare intrinsic
    intrinsic = ir.Function(
        module,
        ir.FunctionType(return_type, arg_types),
        name=intrinsic_name
    )
    
    # Call intrinsic
    result = builder.call(intrinsic, call_args, name="result")
    builder.ret(result)
    
    print("\n" + "="*80)
    print(f"Testing intrinsic: {intrinsic_name}")
    print("Generated LLVM IR:")
    print(module)
    
    # JIT Compile
    llvm_ir = str(module)
    mod = binding.parse_assembly(llvm_ir)
    mod.verify()
    
    target = binding.Target.from_default_triple()
    target_machine = target.create_target_machine()
    engine = binding.create_mcjit_compiler(mod, target_machine)
    
    func_ptr = engine.get_function_address(wrapper_name)
    
    # Map LLVM types to ctypes
    type_map = {
        ir.FloatType(): ctypes.c_float,
        ir.DoubleType(): ctypes.c_double,
        ir.IntType(32): ctypes.c_int32,
        ir.IntType(64): ctypes.c_int64,
        ir.IntType(1): ctypes.c_bool,
    }
    
    # Create ctypes function signature (only non-immargs)
    return_ctype = type_map[return_type]
    arg_ctypes = [type_map[t] for t in non_immarg_types]
    functype = ctypes.CFUNCTYPE(return_ctype, *arg_ctypes)
    test_func = functype(func_ptr)
    
    # Convert test values for non-immargs
    non_immarg_values = [test_values[i] for i in range(len(test_values)) if i not in immarg_indices]
    c_values = [arg_ctypes[i](val) for i, val in enumerate(non_immarg_values)]
    
    # Execute test
    result = test_func(*c_values)
    print(f"\nResult for {test_values}: {result}")
    return result

if __name__ == "__main__":
    init_llvm()
    
    # Test cases with immarg handling
    test_cases = [
        # llvm.abs: second param (i1) is immarg
        ("llvm.abs.i32", [ir.IntType(32), ir.IntType(1)], ir.IntType(32), 
         [-132342, True], [1]),
        ("llvm.abs", [ir.IntType(32), ir.IntType(1)], ir.IntType(32), 
         [-132342, True], [1]),
        ("llvm.abs.i32", [ir.IntType(32), ir.IntType(1)], ir.IntType(32), 
         [-2147483648, False], [1]),
        
        # Floating-point intrinsics
        ("llvm.exp2.f32", [ir.FloatType()], ir.FloatType(), [3.220], []),
        ("llvm.fabs.f32", [ir.FloatType()], ir.FloatType(), [-2.235], []),
        
        # Other intrinsics
        ("llvm.ctpop.i32", [ir.IntType(32)], ir.IntType(32), [0b10101], []),
    ]
    
    for intrinsic, arg_types, ret_type, test_values, immarg_indices in test_cases:
        test_intrinsic(intrinsic, arg_types, ret_type, test_values, immarg_indices)