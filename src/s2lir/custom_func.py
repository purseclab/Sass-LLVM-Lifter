from llvmlite import ir

def lop3(IRModule):
    
    func_names = ["lop3", "plop3", "ulop3"]
    
    for func_name in func_names:
        func_op = func_name 
        func_name = "custom_" + func_name
        existing_func = IRModule.globals.get(func_name, None)
        if existing_func is not None:
            exit(1)
        
        # TODO: Determine the types
        # Takes in (immLut value, A, B, C)
        func = ir.Function(
                    IRModule,
                    ir.FunctionType(ir.IntType(), [ir.IntType(), ir.IntType(), ir.IntType(), ir.IntType()]),
                    name=func_name
                )
        
        block_entry = func.append_basic_block(name="entry")
        # assuming that BB name only need to be unique within function, not across the module
        builder = ir.IRBuilder(block_entry)
        
        immLut, A, B, C = func.args # TODO verify later
        
        # 3rd entry is just additional parameters for the function
        cases = {
            "lop3" : [
                (0x80, func_80, []),
                (0x0, func_0, []),
                (0x40, func_40, []),
                (0xfe, func_fe, []),
                (0xff, func_ff, []),
                (0x1a, func_1a, []),
                (0x33, func_33, []),
                (0xc0, func_c0, []),
                (0x08, func_08, []),
                (0x3c, func_3c, []),
                (0x0f, func_0f, []),
                (0x55, func_55, []),
                (0xfc, func_fc, []),
                (0xf8, func_f8, [])
            ],
            "plop3" : [
                (0x80, func_80, []),
                (0x0, func_0, []),
                (0x40, func_40, []),
                (0xfe, func_fe, []),
                (0xff, func_ff, []),
                (0x1a, func_1a, []),
                (0x33, func_33, []),
                (0xc0, func_c0, []),
                (0x08, func_08, []),
                (0x3c, func_3c, []),
                (0x0f, func_0f, []),
                (0x55, func_55, []),
                (0xfc, func_fc, []),
                (0xf8, func_f8, [])
            ],
            "ulop3": [
                (0x80, func_80, []),
                (0x0, func_0, []),
                (0x40, func_40, []),
                (0xfe, func_fe, []),
                (0xff, func_ff, []),
                (0x1a, func_1a, []),
                (0x33, func_33, []),
                (0xc0, func_c0, []),
                (0x08, func_08, []),
                (0x3c, func_3c, []),
                (0x0f, func_0f, []),
                (0x55, func_55, []),
                (0xfc, func_fc, []),
                (0xf8, func_f8, [])
            ]
        }
        exit_block = func.append_basic_block("exit")
        
        # Create default block (hit when a constant not implemented)
        default_block = func.append_basic_block("default")
        builder.position_at_end(default_block) # position_at_end points to after the last instruction of the BB
        tmp_default = ir.Constant(ir.IntType(32), 0xffffffff)  # Default computation
        builder.branch(exit_block)
        
        IRBuilder.icmp_signed("==", immLut, ir.Constant(ir.IntType(32), ))
        
        # Create case blocks and compute tmp for each case
        case_blocks = []
        for val, compute_func, additional_args in cases[func_op]:
            block = func.append_basic_block(f"block_{hex(val)}")
            builder.position_at_end(block)
            tmp = compute_func(builder, A, B, C, func_op, additional_args)
            builder.branch(exit_block)
            case_blocks.append((val, block, tmp))
        
        # Back to entry block, create switch statement
        builder.position_at_end(block_entry)
        switch = builder.switch(immLut, default_block)
        for val, block, _ in case_blocks:
            switch.add_case(ir.Constant(ir.IntType(32), val), block)
            
        # In exit block, use phi to select the result to be returned
        builder.position_at_end(exit_block)
        phi = builder.phi(ir.IntType(32), name="tmp")
        phi.add_incoming(tmp_default, default_block)
        for _, block, tmp in case_blocks:
            phi.add_incoming(tmp, block)
        builder.ret(phi)
        
        
        
        
        # please refer back to Instruction.py's for the original
        def func_80(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # A & B & C
            tmp = IRBuilder.and_(IRValOp1, IRValOp2) 
            tmp = IRBuilder.or_(tmp, IRValOp3)
            return tmp
        def func_0(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # 0
            if func_op == "plop3":
                int_type = ir.IntType(1)
            elif func_op in ("lop3", "ulop3"):
                int_type = ir.IntType(32)
            else:
                raise Exception
            tmp = ir.Constant(int_type, 0)
            return tmp
        def func_40(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # A & B & ~C
            
            if func_op == "plop3":
                int_type = ir.IntType(1)
                second_param = 1
            elif func_op in ("lop3", "ulop3"):
                int_type = ir.IntType(32)
                second_param = -1
            else:
                raise Exception
            
            tmp = ir.Constant(int_type, 0)
            
            tmp = IRBuilder.and_(IRValOp1, IRValOp2)
            tmp2 = IRBuilder.xor(IRValOp3, ir.Constant(int_type, second_param)) # ~C
            tmp = IRBuilder.and_(tmp, tmp2)
            return tmp
        def func_fe(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # A | B | C
            tmp = IRBuilder.or_(IRValOp1, IRValOp2)
            tmp = IRBuilder.or_(tmp, IRValOp3)
            return tmp
        def func_ff(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # 1
            if func_op == "plop3":
                int_type = ir.IntType(1)
            elif func_op in ("lop3", "ulop3"):
                int_type = ir.IntType(32)
            else:
                raise Exception
            tmp = ir.Constant(int_type, 1)
            return tmp
        def func_1a(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # (A & B | C ) ^ A
            tmp = IRBuilder.and_(IRValOp1, IRValOp2)
            tmp = IRBuilder.or_(tmp, IRValOp3)
            tmp = IRBuilder.xor(tmp,IRValOp1)
            return tmp
        def func_33(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # ~B
            if func_op == "plop3":
                int_type = ir.IntType(1)
                second_param = 1
            elif func_op in ("lop3", "ulop3"):
                int_type = ir.IntType(32)
                second_param = -1
            else:
                raise Exception
            
            tmp = IRBuilder.xor(IRValOp2, ir.Constant(int_type, second_param)) # ~B
            return tmp
        def func_c0(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # A & B            
            tmp = IRBuilder.and_(IRValOp1, IRValOp2) 
            return tmp
        def func_08(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # (~A) & B & C
            
            if func_op == "plop3":
                int_type = ir.IntType(1)
                second_param = 1
            elif func_op in ("lop3", "ulop3"):
                int_type = ir.IntType(32)
                second_param = -1
            else:
                raise Exception
            
            tmp = IRBuilder.xor(IRValOp1, ir.Constant(int_type, second_param)) # ~A
            tmp = IRBuilder.and_(tmp, IRValOp2)
            tmp = IRBuilder.and_(tmp, IRValOp3)
            return tmp
        def func_3c(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # A ^ B
            tmp = IRBuilder.xor(IRValOp1, IRValOp2)
            return tmp
        def func_0f(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # ~A
            
            if func_op == "plop3":
                int_type = ir.IntType(1)
                second_param = 1
            elif func_op in ("lop3", "ulop3"):
                int_type = ir.IntType(32)
                second_param = -1
            else:
                raise Exception
            
            tmp = IRBuilder.xor(IRValOp1, ir.Constant(int_type, second_param)) # ~A
            return tmp
        def func_55(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # ~C
            if func_op == "plop3":
                int_type = ir.IntType(1)
                second_param = 1
            elif func_op in ("lop3", "ulop3"):
                int_type = ir.IntType(32)
                second_param = -1
            else:
                raise Exception
            tmp = IRBuilder.xor(IRValOp3, ir.Constant(int_type, second_param)) # ~C
            return tmp
        def func_fc(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # A | B
            tmp = IRBuilder.or_(IRValOp1, IRValOp2)
            return tmp
        def func_f8(IRBuilder, IRValOp1, IRValOp2, IRValOp3, func_op, additional_args):
            # (A | B) & (A | C)
            tmp = IRBuilder.or_(IRValOp1, IRValOp2)
            tmp2 = IRBuilder.or_(IRValOp1, IRValOp3)
            tmp = IRBuilder.and_(tmp, tmp2)
            return tmp