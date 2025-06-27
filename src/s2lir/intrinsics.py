from llvmlite import ir

def llvm_exp2_f32(module):
    # https://llvm.org/docs/LangRef.html#llvm-exp2-intrinsic
    
    # Check if the function already exists
    existing_fn = module.globals.get("llvm.exp2.f32", None)
    if existing_fn is not None:
        return existing_fn
    
    return ir.Function(
                module,
                ir.FunctionType(ir.FloatType(), [ir.FloatType()]),
                name="llvm.exp2.f32"
            )