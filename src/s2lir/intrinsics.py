from llvmlite import ir

def llvm_exp2_f32(module):
    # https://llvm.org/docs/LangRef.html#llvm-exp2-intrinsic
    return ir.Function(
                module,
                ir.FunctionType(ir.FloatType(), [ir.FloatType()]),
                name="llvm.exp2.f32"
            )