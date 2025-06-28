from llvmlite import ir, binding
import ctypes

# Initialize LLVM once
def init_llvm():
    binding.initialize()
    binding.initialize_native_target()
    binding.initialize_native_asmprinter()

# Test any intrinsic function
def test_intrinsic(intrinsic_name, arg_types, return_type, test_value):
    # Create LLVM module
    module = ir.Module()
    
    # Create wrapper function
    wrapper_name = f"test_{intrinsic_name.replace('.', '_')}"
    func_type = ir.FunctionType(return_type, arg_types)
    func = ir.Function(module, func_type, name=wrapper_name)
    
    # Build IR
    block = func.append_basic_block("entry")
    builder = ir.IRBuilder(block)
    
    # Declare intrinsic
    intrinsic = ir.Function(
        module,
        ir.FunctionType(return_type, arg_types),
        name=intrinsic_name
    )
    
    # Call intrinsic with arguments
    result = builder.call(intrinsic, func.args, name="result")
    builder.ret(result)
    
    # Print generated IR
    print("\n" + "="*80)
    print(f"Testing intrinsic: {intrinsic_name}")
    print("Generated LLVM IR:")
    print(module)
    
    # JIT Compile
    llvm_ir = str(module)
    mod = binding.parse_assembly(llvm_ir)
    mod.verify()
    
    # Create execution engine
    target = binding.Target.from_default_triple()
    target_machine = target.create_target_machine()
    engine = binding.create_mcjit_compiler(mod, target_machine)
    
    # Get function pointer
    func_ptr = engine.get_function_address(wrapper_name)
    
    # Create callable function
    ctypes_type = {
        ir.FloatType(): ctypes.c_float,
        ir.DoubleType(): ctypes.c_double,
        ir.IntType(32): ctypes.c_int32,
        # Add more types as needed
    }[return_type]
    
    arg_ctypes = [ctypes_type for _ in arg_types]
    functype = ctypes.CFUNCTYPE(ctypes_type, *arg_ctypes)
    test_func = functype(func_ptr)
    
    # Execute test
    c_value = ctypes_type(test_value)
    result = test_func(c_value)
    print(f"\nResult for {test_value}: {result}")
    return result

if __name__ == "__main__":
    init_llvm()
    
    # Test various intrinsics
    test_cases = [
        # Floating-point intrinsics
        ("llvm.exp2.f32", [ir.FloatType()], ir.FloatType(), 3.5),
        ("llvm.fabs.f32", [ir.FloatType()], ir.FloatType(), -2.3445),
        ("llvm.fabs", [ir.FloatType()], ir.FloatType(), -2.3445),
        ("llvm.sqrt.f32", [ir.FloatType()], ir.FloatType(), 25.0),
        
        # Integer intrinsics
        ("llvm.ctpop.i32", [ir.IntType(32)], ir.IntType(32), 15),  # Population count
        ("llvm.bswap.i32", [ir.IntType(32)], ir.IntType(32), 0x12345678),  # Byte swap
        
        # Vector intrinsics (example)
        # ("llvm.sqrt.v4f32", [vector_type], vector_type, [1.0, 4.0, 9.0, 16.0])
    ]
    
    for intrinsic, arg_types, ret_type, test_value in test_cases:
        test_intrinsic(intrinsic, arg_types, ret_type, test_value)