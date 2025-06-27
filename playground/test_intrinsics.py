from llvmlite import ir, binding

binding.initialize()
binding.initialize_native_target()
binding.initialize_native_asmprinter()

# Build LLVM IR Module
module = ir.Module()
func_type = ir.FunctionType(ir.FloatType(), [ir.FloatType()])
func = ir.Function(module, func_type, name="compute_exp2")

block = func.append_basic_block("entry")
builder = ir.IRBuilder(block)




# https://llvm.org/docs/LangRef.html#llvm-exp2-intrinsic
exp2 = ir.Function(
    module,
    ir.FunctionType(ir.FloatType(), [ir.FloatType()]),
    name="llvm.exp2.f32"
)

x = func.args[0]
result = builder.call(exp2, [x], name="result")
builder.ret(result)

print("Generated LLVM IR:")
print(module)

# Compile with JIT
llvm_ir = str(module)
mod = binding.parse_assembly(llvm_ir)
mod.verify()

# Get host target and create target machine
target = binding.Target.from_default_triple()
target_machine = target.create_target_machine()

engine = binding.create_mcjit_compiler(mod, target_machine)

# Get function pointer
func_ptr = engine.get_function_address("compute_exp2")
import ctypes

functype = ctypes.CFUNCTYPE(ctypes.c_float, ctypes.c_float)
exp2_func = functype(func_ptr)

# Test
x = 3.4
result = exp2_func(ctypes.c_float(x))
print(f"\ncompute_exp2({x}) = {result}")