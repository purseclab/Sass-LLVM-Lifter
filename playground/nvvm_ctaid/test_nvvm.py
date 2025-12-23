from llvmlite import ir

module = ir.Module()
# TODO doesnt seem to be needed, confirm ltr
# module.triple = "nvptx64-nvidia-cuda"
# module.data_layout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-i128:128:128-f16:16:16-f32:32:32-f64:64:64-f128:128:128-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"

# Create a global variable to store the CTA ID
cta_id_x = ir.GlobalVariable(module, ir.IntType(32), "cta_id_x")
cta_id_x.linkage = "common"
cta_id_x.global_constant = False
cta_id_x.initializer = ir.Constant(ir.IntType(32), 0)

intrinsic_type = ir.FunctionType(ir.IntType(32), [])
ctaid_x = ir.Function(module, intrinsic_type, name="llvm.nvvm.read.ptx.sreg.ctaid.x")

kernel_type = ir.FunctionType(ir.VoidType(), [])
kernel = ir.Function(module, kernel_type, name="my_kernel")

block = kernel.append_basic_block(name="entry")
builder = ir.IRBuilder(block)

ctaid_x_val = builder.call(ctaid_x, [])
builder.store(ctaid_x_val, cta_id_x)
builder.ret_void()

with open("kernel.ll", "w") as f:
    f.write(str(module))