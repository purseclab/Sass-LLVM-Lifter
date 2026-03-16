from llvmlite import ir

def intrinsic_construct(module, intrinsic_type, intrinsic_name):
    existing_fn = module.globals.get(intrinsic_name, None)
    if existing_fn is not None:
        return existing_fn
    
    return ir.Function(
                module,
                intrinsic_type,
                name=intrinsic_name
            )


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
    
    
def llvm_abs(module):
    # integer absolute value
    # https://llvm.org/docs/LangRef.html#id2283
    
    existing_fn = module.globals.get("llvm.abs", None)
    if existing_fn is not None:
        return existing_fn
    
    return ir.Function(
                module,
                ir.FunctionType(ir.IntType(32), [ir.IntType(32), ir.IntType(1)]),
                name="llvm.abs"
            )

def llvm_fabs(module):
    # https://llvm.org/docs/LangRef.html#id2283
    
    # float absolute value
    intrinsic_name = "llvm.fabs"
    
    # Check if the function already exists
    existing_fn = module.globals.get(intrinsic_name, None)
    if existing_fn is not None:
        return existing_fn
    
    return ir.Function(
                module,
                ir.FunctionType(ir.FloatType(), [ir.FloatType()]),
                name=intrinsic_name
            )
    
def nvvm_ctaid_x(module):

    intrinsic_name = "llvm.nvvm.read.ptx.sreg.ctaid.x"
    
    intrinsic_type = ir.FunctionType(ir.IntType(32), [])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)


def nvvm_ctaid_y(module):

    intrinsic_name = "llvm.nvvm.read.ptx.sreg.ctaid.y"
    
    intrinsic_type = ir.FunctionType(ir.IntType(32), [])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def nvvm_ctaid_z(module):

    intrinsic_name = "llvm.nvvm.read.ptx.sreg.ctaid.z"
    
    intrinsic_type = ir.FunctionType(ir.IntType(32), [])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def nvvm_threadidx_x(module):
    
    intrinsic_name = "llvm.nvvm.read.ptx.sreg.tid.x"
    
    intrinsic_type = ir.FunctionType(ir.IntType(32), [])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def nvvm_threadidx_y(module):
    
    intrinsic_name = "llvm.nvvm.read.ptx.sreg.tid.y"
    
    intrinsic_type = ir.FunctionType(ir.IntType(32), [])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def nvvm_threadidx_z(module):
    
    intrinsic_name = "llvm.nvvm.read.ptx.sreg.tid.z"
    
    intrinsic_type = ir.FunctionType(ir.IntType(32), [])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def nvvm_blockdim_x(module):
    
    intrinsic_name = "llvm.nvvm.read.ptx.sreg.ntid.x"
    
    intrinsic_type = ir.FunctionType(ir.IntType(32), [])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def nvvm_blockdim_y(module):
    
    intrinsic_name = "llvm.nvvm.read.ptx.sreg.ntid.y"
    
    intrinsic_type = ir.FunctionType(ir.IntType(32), [])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def nvvm_blockdim_z(module):
    
    intrinsic_name = "llvm.nvvm.read.ptx.sreg.ntid.z"
    
    intrinsic_type = ir.FunctionType(ir.IntType(32), [])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def llvm_memcpy_i32(module):
    # https://llvm.org/docs/LangRef.html#id2252
    
    intrinsic_name = "llvm.memcpy.p0.p0.i32"
    
    intrinsic_type = ir.FunctionType(ir.VoidType(), [ir.PointerType(), ir.PointerType(), ir.IntType(32), ir.IntType(1)])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def llvm_uadd_with_overflow(module, size=32):
    intrinsic_name = f"llvm.uadd.with.overflow.i{size}"
    
    intrinsic_type = ir.FunctionType(ir.LiteralStructType([ir.IntType(size), ir.IntType(1)]), [ir.IntType(size), ir.IntType(size)])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def nvvm_barrier0(module):
    intrinsic_name = f"llvm.nvvm.barrier0"
    
    intrinsic_type = ir.FunctionType(ir.VoidType(), [])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def llvm_rint_f32(module):
    intrinsic_name = f"llvm.rint.f32"
    
    intrinsic_type = ir.FunctionType(ir.FloatType(), [ir.FloatType()])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def llvm_rint_f64(module):
    intrinsic_name = f"llvm.rint.f64"
    
    intrinsic_type = ir.FunctionType(ir.DoubleType(), [ir.DoubleType()])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def llvm_floor_f32(module):
    intrinsic_name = f"llvm.floor.f32"
    
    intrinsic_type = ir.FunctionType(ir.FloatType(), [ir.FloatType()])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def llvm_floor_f64(module):
    intrinsic_name = f"llvm.floor.f64"
    
    intrinsic_type = ir.FunctionType(ir.DoubleType(), [ir.DoubleType()])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def llvm_ceil_f32(module):
    intrinsic_name = f"llvm.ceil.f32"
    
    intrinsic_type = ir.FunctionType(ir.FloatType(), [ir.FloatType()])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)

def llvm_ceil_f64(module):
    intrinsic_name = f"llvm.ceil.f64"
    
    intrinsic_type = ir.FunctionType(ir.DoubleType(), [ir.DoubleType()])
    
    return intrinsic_construct(module, intrinsic_type, intrinsic_name)