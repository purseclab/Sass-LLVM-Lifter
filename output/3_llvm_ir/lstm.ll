; ModuleID = '/app/launch/../output/3_llvm_ir/lstm_raw.ll'
source_filename = "/app/launch/../output/3_llvm_ir/lstm_raw.ll"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x() #0

define i32 @custom_lop3(i32 %.1, i32 %.2, i32 %.3, i32 %.4) {
entry:
  switch i32 %.1, label %exit [
    i32 128, label %block_0x80
    i32 0, label %block_0x0
    i32 64, label %block_0x40
    i32 254, label %block_0xfe
    i32 255, label %block_0xff
    i32 26, label %block_0x1a
    i32 51, label %block_0x33
    i32 192, label %block_0xc0
    i32 8, label %block_0x8
    i32 60, label %block_0x3c
    i32 15, label %block_0xf
    i32 85, label %block_0x55
    i32 252, label %block_0xfc
    i32 248, label %block_0xf8
  ]

exit:                                             ; preds = %entry, %block_0xf8, %block_0xfc, %block_0x55, %block_0xf, %block_0x3c, %block_0x8, %block_0xc0, %block_0x33, %block_0x1a, %block_0xff, %block_0xfe, %block_0x40, %block_0x0, %block_0x80
  %tmp = phi i32 [ %.8, %block_0x80 ], [ 0, %block_0x0 ], [ %.13, %block_0x40 ], [ %.16, %block_0xfe ], [ 1, %block_0xff ], [ %.21, %block_0x1a ], [ %.23, %block_0x33 ], [ %.25, %block_0xc0 ], [ %.29, %block_0x8 ], [ %.31, %block_0x3c ], [ %.33, %block_0xf ], [ %.35, %block_0x55 ], [ %.37, %block_0xfc ], [ %.41, %block_0xf8 ], [ -1, %entry ]
  ret i32 %tmp

block_0x80:                                       ; preds = %entry
  %.7 = and i32 %.2, %.3
  %.8 = and i32 %.7, %.4
  br label %exit

block_0x0:                                        ; preds = %entry
  br label %exit

block_0x40:                                       ; preds = %entry
  %.11 = and i32 %.2, %.3
  %.12 = xor i32 %.4, -1
  %.13 = and i32 %.11, %.12
  br label %exit

block_0xfe:                                       ; preds = %entry
  %.15 = or i32 %.2, %.3
  %.16 = or i32 %.15, %.4
  br label %exit

block_0xff:                                       ; preds = %entry
  br label %exit

block_0x1a:                                       ; preds = %entry
  %.19 = and i32 %.2, %.3
  %.20 = or i32 %.19, %.4
  %.21 = xor i32 %.20, %.2
  br label %exit

block_0x33:                                       ; preds = %entry
  %.23 = xor i32 %.3, -1
  br label %exit

block_0xc0:                                       ; preds = %entry
  %.25 = and i32 %.2, %.3
  br label %exit

block_0x8:                                        ; preds = %entry
  %.27 = xor i32 %.2, -1
  %.28 = and i32 %.27, %.3
  %.29 = and i32 %.28, %.4
  br label %exit

block_0x3c:                                       ; preds = %entry
  %.31 = xor i32 %.2, %.3
  br label %exit

block_0xf:                                        ; preds = %entry
  %.33 = xor i32 %.2, -1
  br label %exit

block_0x55:                                       ; preds = %entry
  %.35 = xor i32 %.4, -1
  br label %exit

block_0xfc:                                       ; preds = %entry
  %.37 = or i32 %.2, %.3
  br label %exit

block_0xf8:                                       ; preds = %entry
  %.39 = or i32 %.2, %.3
  %.40 = or i32 %.2, %.4
  %.41 = and i32 %.39, %.40
  br label %exit
}

define i32 @custom_plop3(i32 %.1, i32 %.2, i32 %.3, i32 %.4) {
entry:
  switch i32 %.1, label %exit [
    i32 128, label %block_0x80
    i32 0, label %block_0x0
    i32 64, label %block_0x40
    i32 254, label %block_0xfe
    i32 255, label %block_0xff
    i32 26, label %block_0x1a
    i32 51, label %block_0x33
    i32 192, label %block_0xc0
    i32 8, label %block_0x8
    i32 60, label %block_0x3c
    i32 15, label %block_0xf
    i32 85, label %block_0x55
    i32 252, label %block_0xfc
    i32 248, label %block_0xf8
  ]

exit:                                             ; preds = %entry, %block_0xf8, %block_0xfc, %block_0x55, %block_0xf, %block_0x3c, %block_0x8, %block_0xc0, %block_0x33, %block_0x1a, %block_0xff, %block_0xfe, %block_0x40, %block_0x0, %block_0x80
  %tmp = phi i32 [ %.8, %block_0x80 ], [ 0, %block_0x0 ], [ %.13, %block_0x40 ], [ %.16, %block_0xfe ], [ 1, %block_0xff ], [ %.21, %block_0x1a ], [ %.23, %block_0x33 ], [ %.25, %block_0xc0 ], [ %.29, %block_0x8 ], [ %.31, %block_0x3c ], [ %.33, %block_0xf ], [ %.35, %block_0x55 ], [ %.37, %block_0xfc ], [ %.41, %block_0xf8 ], [ -1, %entry ]
  ret i32 %tmp

block_0x80:                                       ; preds = %entry
  %.7 = and i32 %.2, %.3
  %.8 = and i32 %.7, %.4
  br label %exit

block_0x0:                                        ; preds = %entry
  br label %exit

block_0x40:                                       ; preds = %entry
  %.11 = and i32 %.2, %.3
  %.12 = xor i32 %.4, 1
  %.13 = and i32 %.11, %.12
  br label %exit

block_0xfe:                                       ; preds = %entry
  %.15 = or i32 %.2, %.3
  %.16 = or i32 %.15, %.4
  br label %exit

block_0xff:                                       ; preds = %entry
  br label %exit

block_0x1a:                                       ; preds = %entry
  %.19 = and i32 %.2, %.3
  %.20 = or i32 %.19, %.4
  %.21 = xor i32 %.20, %.2
  br label %exit

block_0x33:                                       ; preds = %entry
  %.23 = xor i32 %.3, 1
  br label %exit

block_0xc0:                                       ; preds = %entry
  %.25 = and i32 %.2, %.3
  br label %exit

block_0x8:                                        ; preds = %entry
  %.27 = xor i32 %.2, 1
  %.28 = and i32 %.27, %.3
  %.29 = and i32 %.28, %.4
  br label %exit

block_0x3c:                                       ; preds = %entry
  %.31 = xor i32 %.2, %.3
  br label %exit

block_0xf:                                        ; preds = %entry
  %.33 = xor i32 %.2, 1
  br label %exit

block_0x55:                                       ; preds = %entry
  %.35 = xor i32 %.4, 1
  br label %exit

block_0xfc:                                       ; preds = %entry
  %.37 = or i32 %.2, %.3
  br label %exit

block_0xf8:                                       ; preds = %entry
  %.39 = or i32 %.2, %.3
  %.40 = or i32 %.2, %.4
  %.41 = and i32 %.39, %.40
  br label %exit
}

define i32 @custom_ulop3(i32 %.1, i32 %.2, i32 %.3, i32 %.4) {
entry:
  switch i32 %.1, label %exit [
    i32 128, label %block_0x80
    i32 0, label %block_0x0
    i32 64, label %block_0x40
    i32 254, label %block_0xfe
    i32 255, label %block_0xff
    i32 26, label %block_0x1a
    i32 51, label %block_0x33
    i32 192, label %block_0xc0
    i32 8, label %block_0x8
    i32 60, label %block_0x3c
    i32 15, label %block_0xf
    i32 85, label %block_0x55
    i32 252, label %block_0xfc
    i32 248, label %block_0xf8
  ]

exit:                                             ; preds = %entry, %block_0xf8, %block_0xfc, %block_0x55, %block_0xf, %block_0x3c, %block_0x8, %block_0xc0, %block_0x33, %block_0x1a, %block_0xff, %block_0xfe, %block_0x40, %block_0x0, %block_0x80
  %tmp = phi i32 [ %.8, %block_0x80 ], [ 0, %block_0x0 ], [ %.13, %block_0x40 ], [ %.16, %block_0xfe ], [ 1, %block_0xff ], [ %.21, %block_0x1a ], [ %.23, %block_0x33 ], [ %.25, %block_0xc0 ], [ %.29, %block_0x8 ], [ %.31, %block_0x3c ], [ %.33, %block_0xf ], [ %.35, %block_0x55 ], [ %.37, %block_0xfc ], [ %.41, %block_0xf8 ], [ -1, %entry ]
  ret i32 %tmp

block_0x80:                                       ; preds = %entry
  %.7 = and i32 %.2, %.3
  %.8 = and i32 %.7, %.4
  br label %exit

block_0x0:                                        ; preds = %entry
  br label %exit

block_0x40:                                       ; preds = %entry
  %.11 = and i32 %.2, %.3
  %.12 = xor i32 %.4, -1
  %.13 = and i32 %.11, %.12
  br label %exit

block_0xfe:                                       ; preds = %entry
  %.15 = or i32 %.2, %.3
  %.16 = or i32 %.15, %.4
  br label %exit

block_0xff:                                       ; preds = %entry
  br label %exit

block_0x1a:                                       ; preds = %entry
  %.19 = and i32 %.2, %.3
  %.20 = or i32 %.19, %.4
  %.21 = xor i32 %.20, %.2
  br label %exit

block_0x33:                                       ; preds = %entry
  %.23 = xor i32 %.3, -1
  br label %exit

block_0xc0:                                       ; preds = %entry
  %.25 = and i32 %.2, %.3
  br label %exit

block_0x8:                                        ; preds = %entry
  %.27 = xor i32 %.2, -1
  %.28 = and i32 %.27, %.3
  %.29 = and i32 %.28, %.4
  br label %exit

block_0x3c:                                       ; preds = %entry
  %.31 = xor i32 %.2, %.3
  br label %exit

block_0xf:                                        ; preds = %entry
  %.33 = xor i32 %.2, -1
  br label %exit

block_0x55:                                       ; preds = %entry
  %.35 = xor i32 %.4, -1
  br label %exit

block_0xfc:                                       ; preds = %entry
  %.37 = or i32 %.2, %.3
  br label %exit

block_0xf8:                                       ; preds = %entry
  %.39 = or i32 %.2, %.3
  %.40 = or i32 %.2, %.4
  %.41 = and i32 %.39, %.40
  br label %exit
}

define ptx_kernel void @_Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii(ptr %Arg_0, ptr %Arg_1, ptr %Arg_2, ptr %Arg_3, ptr %Arg_4, ptr %Arg_5, ptr %Arg_6, ptr %Arg_7, ptr %Arg_8, i32 %Arg_9, i32 %Arg_10, i32 %Arg_11) {
Entry_.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii:
  %R4 = alloca i32, align 4
  %R5 = alloca i32, align 4
  %R7 = alloca i32, align 4
  %R0 = alloca i32, align 4
  %R3 = alloca i32, align 4
  %R9 = alloca i32, align 4
  %R18 = alloca i32, align 4
  %R12 = alloca i32, align 4
  %R24 = alloca i32, align 4
  %R10 = alloca i32, align 4
  %R20 = alloca i32, align 4
  %R22 = alloca i32, align 4
  %R16 = alloca i32, align 4
  %R14 = alloca i32, align 4
  %R23 = alloca i32, align 4
  %R15 = alloca i32, align 4
  %R19 = alloca i32, align 4
  %R26 = alloca i32, align 4
  %R2 = alloca i32, align 4
  %R8 = alloca i32, align 4
  %R28 = alloca i32, align 4
  %R11 = alloca i32, align 4
  %R30 = alloca i32, align 4
  %R36 = alloca i32, align 4
  %R35 = alloca i32, align 4
  %R32 = alloca i32, align 4
  %R29 = alloca i32, align 4
  %R38 = alloca i32, align 4
  %R21 = alloca i32, align 4
  %R34 = alloca i32, align 4
  %R40 = alloca i32, align 4
  %R13 = alloca i32, align 4
  %R41 = alloca i32, align 4
  %R43 = alloca i32, align 4
  %R17 = alloca i32, align 4
  %R27 = alloca i32, align 4
  %nvvm_ctaid_x = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  store i32 %nvvm_ctaid_x, ptr %R4, align 4
  %nvvm_threadidx_x = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  store i32 %nvvm_threadidx_x, ptr %R5, align 4
  %nvvm_ctaid_y = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  store i32 %nvvm_ctaid_y, ptr %R7, align 4
  %nvvm_threadidx_y = call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  store i32 %nvvm_threadidx_y, ptr %R0, align 4
  %.30 = load i32, ptr %R4, align 4
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %.31 = load i32, ptr %R5, align 4
  %imad_mul.1 = mul i32 %.30, %nvvm_blockdim_x
  %imad_add.1 = add i32 %imad_mul.1, %.31
  %cmp = icmp sge i32 %imad_add.1, %Arg_11
  %.38 = and i1 %cmp, true
  %.42 = load i32, ptr %R7, align 4
  %nvvm_blockdim_y = call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %.43 = load i32, ptr %R0, align 4
  %imad_mul.2 = mul i32 %.42, %nvvm_blockdim_y
  %imad_add.2 = add i32 %imad_mul.2, %.43
  store i32 %imad_add.2, ptr %R7, align 4
  %.46 = load i32, ptr %R7, align 4
  %cmp.1 = icmp sge i32 %.46, %Arg_9
  %.50 = or i1 %cmp.1, %.38
  %.55 = icmp eq i1 %.50, true
  br i1 %.55, label %ExitFunction, label %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0

.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0: ; preds = %Entry_.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii
  %imad_mul.3 = mul i32 0, 0
  %imad_add.3 = add i32 %imad_mul.3, %Arg_11
  store i32 %imad_add.3, ptr %R3, align 4
  store i32 4, ptr %R9, align 4
  %.64 = load i32, ptr %R3, align 4
  %shl = shl i32 %.64, 1
  %add = add i32 %shl, %imad_add.1
  store i32 %add, ptr %R18, align 4
  %.69 = load i32, ptr %R9, align 4
  %imad_ext1 = zext i32 %imad_add.1 to i64
  %imad_ext2 = zext i32 %.69 to i64
  %imad_mul.4 = mul i64 %imad_ext1, %imad_ext2
  %.70 = ptrtoint ptr %Arg_6 to i64
  %imad_add.4 = add i64 %imad_mul.4, %.70
  %.71 = and i64 %imad_add.4, -4294967296
  %.72 = lshr i64 %.71, 32
  %trunc32 = trunc i64 %.72 to i32
  %trunc32.1 = trunc i64 %imad_add.4 to i32
  store i32 %trunc32.1, ptr %R12, align 4
  store i32 %trunc32, ptr %R13, align 4
  %.76 = load i32, ptr %R18, align 4
  %.77 = add i32 %.76, %Arg_11
  %.78 = add i32 %.77, 0
  store i32 %.78, ptr %R24, align 4
  %.82 = load i32, ptr %R9, align 4
  %imad_ext1.1 = zext i32 %imad_add.1 to i64
  %imad_ext2.1 = zext i32 %.82 to i64
  %imad_mul.5 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.83 = ptrtoint ptr %Arg_5 to i64
  %imad_add.5 = add i64 %imad_mul.5, %.83
  %.84 = and i64 %imad_add.5, -4294967296
  %.85 = lshr i64 %.84, 32
  %trunc32.2 = trunc i64 %.85 to i32
  %trunc32.3 = trunc i64 %imad_add.5 to i32
  store i32 %trunc32.3, ptr %R10, align 4
  store i32 %trunc32.2, ptr %R11, align 4
  %.89 = load i32, ptr %R18, align 4
  %.90 = load i32, ptr %R9, align 4
  %imad_ext1.2 = zext i32 %.89 to i64
  %imad_ext2.2 = zext i32 %.90 to i64
  %imad_mul.6 = mul i64 %imad_ext1.2, %imad_ext2.2
  %.91 = ptrtoint ptr %Arg_6 to i64
  %imad_add.6 = add i64 %imad_mul.6, %.91
  %.92 = and i64 %imad_add.6, -4294967296
  %.93 = lshr i64 %.92, 32
  %trunc32.4 = trunc i64 %.93 to i32
  %trunc32.5 = trunc i64 %imad_add.6 to i32
  store i32 %trunc32.5, ptr %R20, align 4
  store i32 %trunc32.4, ptr %R21, align 4
  %.97 = load i32, ptr %R12, align 4
  %zext = zext i32 %.97 to i64
  %.98 = load i32, ptr %R13, align 4
  %zext.1 = zext i32 %.98 to i64
  %shl.1 = shl i64 %zext.1, 32
  %or = or i64 %shl.1, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.99 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.100 = bitcast ptr %R3 to ptr
  store float %.99, ptr %.100, align 4
  %.103 = load i32, ptr %R24, align 4
  %.104 = load i32, ptr %R9, align 4
  %imad_ext1.3 = zext i32 %.103 to i64
  %imad_ext2.3 = zext i32 %.104 to i64
  %imad_mul.7 = mul i64 %imad_ext1.3, %imad_ext2.3
  %.105 = ptrtoint ptr %Arg_5 to i64
  %imad_add.7 = add i64 %imad_mul.7, %.105
  %.106 = and i64 %imad_add.7, -4294967296
  %.107 = lshr i64 %.106, 32
  %trunc32.6 = trunc i64 %.107 to i32
  %trunc32.7 = trunc i64 %imad_add.7 to i32
  store i32 %trunc32.7, ptr %R22, align 4
  store i32 %trunc32.6, ptr %R23, align 4
  %.111 = load i32, ptr %R9, align 4
  %.112 = load i32, ptr %R12, align 4
  %imad_ext1.4 = zext i32 %.111 to i64
  %imad_ext2.4 = zext i32 %Arg_11 to i64
  %imad_mul.8 = mul i64 %imad_ext1.4, %imad_ext2.4
  %imad_ext3 = zext i32 %.112 to i64
  %imad_add.8 = add i64 %imad_mul.8, %imad_ext3
  %.113 = and i64 %imad_add.8, -4294967296
  %.114 = lshr i64 %.113, 32
  %trunc32.8 = trunc i64 %.114 to i32
  %trunc32.9 = trunc i64 %imad_add.8 to i32
  store i32 %trunc32.9, ptr %R16, align 4
  store i32 %trunc32.8, ptr %R17, align 4
  %.118 = load i32, ptr %R20, align 4
  %zext.2 = zext i32 %.118 to i64
  %.119 = load i32, ptr %R21, align 4
  %zext.3 = zext i32 %.119 to i64
  %shl.2 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.2, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.120 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.121 = bitcast ptr %R20 to ptr
  store float %.120, ptr %.121, align 4
  %.124 = load i32, ptr %R9, align 4
  %.125 = load i32, ptr %R10, align 4
  %imad_ext1.5 = zext i32 %.124 to i64
  %imad_ext2.5 = zext i32 %Arg_11 to i64
  %imad_mul.9 = mul i64 %imad_ext1.5, %imad_ext2.5
  %imad_ext3.1 = zext i32 %.125 to i64
  %imad_add.9 = add i64 %imad_mul.9, %imad_ext3.1
  %.126 = and i64 %imad_add.9, -4294967296
  %.127 = lshr i64 %.126, 32
  %trunc32.10 = trunc i64 %.127 to i32
  %trunc32.11 = trunc i64 %imad_add.9 to i32
  store i32 %trunc32.11, ptr %R14, align 4
  store i32 %trunc32.10, ptr %R15, align 4
  %.131 = load i32, ptr %R22, align 4
  %zext.4 = zext i32 %.131 to i64
  %.132 = load i32, ptr %R23, align 4
  %zext.5 = zext i32 %.132 to i64
  %shl.3 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.3, %zext.4
  %inttoptr_bytes.2 = inttoptr i64 %or.2 to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.133 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.134 = bitcast ptr %R23 to ptr
  store float %.133, ptr %.134, align 4
  %.137 = load i32, ptr %R18, align 4
  %.138 = load i32, ptr %R9, align 4
  %imad_ext1.6 = zext i32 %.137 to i64
  %imad_ext2.6 = zext i32 %.138 to i64
  %imad_mul.10 = mul i64 %imad_ext1.6, %imad_ext2.6
  %.139 = ptrtoint ptr %Arg_5 to i64
  %imad_add.10 = add i64 %imad_mul.10, %.139
  %.140 = and i64 %imad_add.10, -4294967296
  %.141 = lshr i64 %.140, 32
  %trunc32.12 = trunc i64 %.141 to i32
  %trunc32.13 = trunc i64 %imad_add.10 to i32
  store i32 %trunc32.13, ptr %R18, align 4
  store i32 %trunc32.12, ptr %R19, align 4
  %.145 = load i32, ptr %R10, align 4
  %zext.6 = zext i32 %.145 to i64
  %.146 = load i32, ptr %R11, align 4
  %zext.7 = zext i32 %.146 to i64
  %shl.4 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.4, %zext.6
  %inttoptr_bytes.3 = inttoptr i64 %or.3 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.147 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.148 = bitcast ptr %R10 to ptr
  store float %.147, ptr %.148, align 4
  %.151 = load i32, ptr %R24, align 4
  %.152 = load i32, ptr %R9, align 4
  %imad_ext1.7 = zext i32 %.151 to i64
  %imad_ext2.7 = zext i32 %.152 to i64
  %imad_mul.11 = mul i64 %imad_ext1.7, %imad_ext2.7
  %.153 = ptrtoint ptr %Arg_6 to i64
  %imad_add.11 = add i64 %imad_mul.11, %.153
  %.154 = and i64 %imad_add.11, -4294967296
  %.155 = lshr i64 %.154, 32
  %trunc32.14 = trunc i64 %.155 to i32
  %trunc32.15 = trunc i64 %imad_add.11 to i32
  store i32 %trunc32.15, ptr %R24, align 4
  %.159 = load i32, ptr %R16, align 4
  %zext.8 = zext i32 %.159 to i64
  %.160 = load i32, ptr %R17, align 4
  %zext.9 = zext i32 %.160 to i64
  %shl.5 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.5, %zext.8
  %inttoptr_bytes.4 = inttoptr i64 %or.4 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.161 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.162 = bitcast ptr %R16 to ptr
  store float %.161, ptr %.162, align 4
  %.165 = load i32, ptr %R14, align 4
  %zext.10 = zext i32 %.165 to i64
  %.166 = load i32, ptr %R15, align 4
  %zext.11 = zext i32 %.166 to i64
  %shl.6 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.6, %zext.10
  %inttoptr_bytes.5 = inttoptr i64 %or.5 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.167 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.168 = bitcast ptr %R15 to ptr
  store float %.167, ptr %.168, align 4
  %.171 = load i32, ptr %R18, align 4
  %zext.12 = zext i32 %.171 to i64
  %.172 = load i32, ptr %R19, align 4
  %zext.13 = zext i32 %.172 to i64
  %shl.7 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.7, %zext.12
  %inttoptr_bytes.6 = inttoptr i64 %or.6 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.173 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.174 = bitcast ptr %R19 to ptr
  store float %.173, ptr %.174, align 4
  %.177 = load i32, ptr %R24, align 4
  %zext.14 = zext i32 %.177 to i64
  %zext.15 = zext i32 %trunc32.14 to i64
  %shl.8 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.8, %zext.14
  %inttoptr_bytes.7 = inttoptr i64 %or.7 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.179 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.180 = bitcast ptr %R24 to ptr
  store float %.179, ptr %.180, align 4
  %imad_mul.12 = mul i32 0, 0
  %imad_add.12 = add i32 %imad_mul.12, %Arg_10
  store i32 %imad_add.12, ptr %R26, align 4
  %.185 = load i32, ptr %R26, align 4
  %cmp.2 = icmp sge i32 %.185, 1
  %.189 = and i1 %cmp.2, true
  %.193 = load float, ptr %R3, align 4
  %.194 = load float, ptr %R10, align 4
  %fadd = fadd float %.193, %.194
  %.195 = bitcast ptr %R3 to ptr
  store float %fadd, ptr %.195, align 4
  %.198 = load float, ptr %R16, align 4
  %.199 = load float, ptr %R15, align 4
  %fadd.1 = fadd float %.198, %.199
  %.200 = bitcast ptr %R2 to ptr
  store float %fadd.1, ptr %.200, align 4
  %.203 = load float, ptr %R20, align 4
  %.204 = load float, ptr %R19, align 4
  %fadd.2 = fadd float %.203, %.204
  %.205 = bitcast ptr %R0 to ptr
  store float %fadd.2, ptr %.205, align 4
  %.208 = load float, ptr %R24, align 4
  %.209 = load float, ptr %R23, align 4
  %fadd.3 = fadd float %.208, %.209
  %.210 = bitcast ptr %R8 to ptr
  store float %fadd.3, ptr %.210, align 4
  %.214 = icmp ne i1 %.189, true
  br i1 %.214, label %.L_x_0, label %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250

.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250: ; preds = %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0
  %.217 = load i32, ptr %R26, align 4
  %.218 = add i32 %.217, -1
  %.219 = add i32 %.218, 0
  store i32 %.219, ptr %R10, align 4
  %.224 = load i32, ptr %R26, align 4
  %.226 = and i32 %.224, 3
  %.228 = icmp ne i32 %.226, 0
  %zext.16 = zext i32 %Arg_11 to i64
  %zext.17 = zext i32 0 to i64
  %zext.18 = zext i32 31 to i64
  %shl.9 = shl i64 %zext.16, 32
  %or.8 = or i64 %shl.9, %zext.17
  %ashr = ashr i64 %or.8, %zext.18
  %ashr.1 = ashr i64 %ashr, 32
  %trunc32.16 = trunc i64 %ashr.1 to i32
  %.235 = load i32, ptr %R10, align 4
  %cmp.3 = icmp sge i32 %.235, 3
  %.239 = and i1 %cmp.3, true
  %.243 = load i32, ptr %R26, align 4
  %.245 = and i32 %.243, 3
  store i32 %.245, ptr %R20, align 4
  store i32 %.226, ptr %R28, align 4
  %.252 = icmp ne i1 %.239, true
  br i1 %.252, label %.L_x_1, label %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0

.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0: ; preds = %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250
  %.255 = load i32, ptr %R20, align 4
  %.256 = sub i32 0, %.255
  %.257 = add i32 %.256, %Arg_10
  %.258 = add i32 %.257, 0
  %imad_mul.13 = mul i32 0, 0
  %imad_add.13 = add i32 %imad_mul.13, 0
  store i32 %imad_add.13, ptr %R28, align 4
  %zext.19 = zext i32 %trunc32.16 to i64
  %zext.20 = zext i32 %Arg_11 to i64
  %zext.21 = zext i32 2 to i64
  %shl.10 = shl i64 %zext.19, 32
  %or.9 = or i64 %shl.10, %zext.20
  %shl.11 = shl i64 %or.9, %zext.21
  %lshr = lshr i64 %shl.11, 32
  %trunc32.17 = trunc i64 %lshr to i32
  %zext.22 = zext i32 0 to i64
  %zext.23 = zext i32 %Arg_11 to i64
  %zext.24 = zext i32 2 to i64
  %shl.12 = shl i64 %zext.22, 32
  %or.10 = or i64 %shl.12, %zext.23
  %shl.13 = shl i64 %or.10, %zext.24
  %and = and i64 %shl.13, 4294967295
  %trunc32.18 = trunc i64 %and to i32
  br label %.L_x_2

.L_x_2:                                           ; preds = %.L_x_2, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0
  %R42.0 = phi i32 [ %.258, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0 ], [ %.703, %.L_x_2 ]
  %.274 = load i32, ptr %R28, align 4
  %zext.25 = zext i32 0 to i64
  %zext.26 = zext i32 %.274 to i64
  %zext.27 = zext i32 2 to i64
  %shl.14 = shl i64 %zext.25, 32
  %or.11 = or i64 %shl.14, %zext.26
  %shl.15 = shl i64 %or.11, %zext.27
  %and.1 = and i64 %shl.15, 4294967295
  %trunc32.19 = trunc i64 %and.1 to i32
  store i32 %trunc32.19, ptr %R11, align 4
  %.277 = load i32, ptr %R7, align 4
  %.278 = load i32, ptr %R28, align 4
  %imad_mul.14 = mul i32 %.277, %Arg_10
  %imad_add.14 = add i32 %imad_mul.14, %.278
  store i32 %imad_add.14, ptr %R30, align 4
  %.281 = load i32, ptr %R11, align 4
  %imad_mul.15 = mul i32 %.281, %Arg_11
  %imad_add.15 = add i32 %imad_mul.15, %imad_add.1
  store i32 %imad_add.15, ptr %R36, align 4
  %.285 = load i32, ptr %R30, align 4
  %.286 = load i32, ptr %R9, align 4
  %imad_ext1.8 = zext i32 %.285 to i64
  %imad_ext2.8 = zext i32 %.286 to i64
  %imad_mul.16 = mul i64 %imad_ext1.8, %imad_ext2.8
  %.287 = ptrtoint ptr %Arg_0 to i64
  %imad_add.16 = add i64 %imad_mul.16, %.287
  %.288 = and i64 %imad_add.16, -4294967296
  %.289 = lshr i64 %.288, 32
  %trunc32.20 = trunc i64 %.289 to i32
  %trunc32.21 = trunc i64 %imad_add.16 to i32
  store i32 %trunc32.21, ptr %R30, align 4
  %.293 = load i32, ptr %R36, align 4
  %.294 = load i32, ptr %R9, align 4
  %imad_ext1.9 = zext i32 %.293 to i64
  %imad_ext2.9 = zext i32 %.294 to i64
  %imad_mul.17 = mul i64 %imad_ext1.9, %imad_ext2.9
  %.295 = ptrtoint ptr %Arg_3 to i64
  %imad_add.17 = add i64 %imad_mul.17, %.295
  %.296 = and i64 %imad_add.17, -4294967296
  %.297 = lshr i64 %.296, 32
  %trunc32.22 = trunc i64 %.297 to i32
  %trunc32.23 = trunc i64 %imad_add.17 to i32
  store i32 %trunc32.23, ptr %R36, align 4
  %.301 = load i32, ptr %R30, align 4
  %zext.28 = zext i32 %.301 to i64
  %zext.29 = zext i32 %trunc32.20 to i64
  %shl.16 = shl i64 %zext.29, 32
  %or.12 = or i64 %shl.16, %zext.28
  %inttoptr_bytes.8 = inttoptr i64 %or.12 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.303 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.304 = bitcast ptr %R35 to ptr
  store float %.303, ptr %.304, align 4
  %.307 = load i32, ptr %R36, align 4
  %.309 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.307, i32 %trunc32.18)
  %.310 = extractvalue { i32, i1 } %.309, 0
  %.311 = extractvalue { i32, i1 } %.309, 1
  %.312 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.310, i32 0)
  %.313 = extractvalue { i32, i1 } %.312, 0
  %.314 = extractvalue { i32, i1 } %.312, 1
  %.315 = or i1 %.311, %.314
  store i32 %.313, ptr %R32, align 4
  %.319 = load i32, ptr %R30, align 4
  %zext.30 = zext i32 %.319 to i64
  %zext.31 = zext i32 %trunc32.20 to i64
  %shl.17 = shl i64 %zext.31, 32
  %or.13 = or i64 %shl.17, %zext.30
  %ptr_plus_imm = add i64 %or.13, 4
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.321 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.322 = bitcast ptr %R29 to ptr
  store float %.321, ptr %.322, align 4
  %.328 = xor i1 true, true
  %.329 = zext i1 %.315 to i32
  %.330 = zext i1 %.328 to i32
  %add.1 = add i32 %trunc32.22, %trunc32.17
  %add.2 = add i32 %add.1, 0
  %add.3 = add i32 %add.2, %.329
  %add.4 = add i32 %add.3, %.330
  %.333 = load i32, ptr %R32, align 4
  %.335 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.333, i32 %trunc32.18)
  %.336 = extractvalue { i32, i1 } %.335, 0
  %.337 = extractvalue { i32, i1 } %.335, 1
  %.338 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.336, i32 0)
  %.339 = extractvalue { i32, i1 } %.338, 0
  %.340 = extractvalue { i32, i1 } %.338, 1
  %.341 = or i1 %.337, %.340
  store i32 %.339, ptr %R38, align 4
  %.345 = load i32, ptr %R30, align 4
  %zext.32 = zext i32 %.345 to i64
  %zext.33 = zext i32 %trunc32.20 to i64
  %shl.18 = shl i64 %zext.33, 32
  %or.14 = or i64 %shl.18, %zext.32
  %ptr_plus_imm.1 = add i64 %or.14, 8
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.347 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.348 = bitcast ptr %R21 to ptr
  store float %.347, ptr %.348, align 4
  %.354 = xor i1 true, true
  %.355 = zext i1 %.341 to i32
  %.356 = zext i1 %.354 to i32
  %add.5 = add i32 %add.4, %trunc32.17
  %add.6 = add i32 %add.5, 0
  %add.7 = add i32 %add.6, %.355
  %add.8 = add i32 %add.7, %.356
  %.359 = load i32, ptr %R30, align 4
  %zext.34 = zext i32 %.359 to i64
  %zext.35 = zext i32 %trunc32.20 to i64
  %shl.19 = shl i64 %zext.35, 32
  %or.15 = or i64 %shl.19, %zext.34
  %ptr_plus_imm.2 = add i64 %or.15, 12
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.361 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.362 = bitcast ptr %R34 to ptr
  store float %.361, ptr %.362, align 4
  %.365 = load i32, ptr %R38, align 4
  %.367 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.365, i32 %trunc32.18)
  %.368 = extractvalue { i32, i1 } %.367, 0
  %.369 = extractvalue { i32, i1 } %.367, 1
  %.370 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.368, i32 0)
  %.371 = extractvalue { i32, i1 } %.370, 0
  %.372 = extractvalue { i32, i1 } %.370, 1
  %.373 = or i1 %.369, %.372
  store i32 %.371, ptr %R22, align 4
  %.377 = load i32, ptr %R32, align 4
  %zext.36 = zext i32 %.377 to i64
  %zext.37 = zext i32 %add.4 to i64
  %shl.20 = shl i64 %zext.37, 32
  %or.16 = or i64 %shl.20, %zext.36
  %inttoptr_bytes.12 = inttoptr i64 %or.16 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.379 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.380 = bitcast ptr %R40 to ptr
  store float %.379, ptr %.380, align 4
  %.386 = xor i1 true, true
  %.387 = zext i1 %.373 to i32
  %.388 = zext i1 %.386 to i32
  %add.9 = add i32 %add.8, %trunc32.17
  %add.10 = add i32 %add.9, 0
  %add.11 = add i32 %add.10, %.387
  %add.12 = add i32 %add.11, %.388
  store i32 %add.12, ptr %R23, align 4
  %.391 = load i32, ptr %R22, align 4
  %.393 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.391, i32 %trunc32.18)
  %.394 = extractvalue { i32, i1 } %.393, 0
  %.395 = extractvalue { i32, i1 } %.393, 1
  %.396 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.394, i32 0)
  %.397 = extractvalue { i32, i1 } %.396, 0
  %.398 = extractvalue { i32, i1 } %.396, 1
  %.399 = or i1 %.395, %.398
  store i32 %.397, ptr %R12, align 4
  %.403 = load i32, ptr %R36, align 4
  %zext.38 = zext i32 %.403 to i64
  %zext.39 = zext i32 %trunc32.22 to i64
  %shl.21 = shl i64 %zext.39, 32
  %or.17 = or i64 %shl.21, %zext.38
  %inttoptr_bytes.13 = inttoptr i64 %or.17 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.405 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.406 = bitcast ptr %R36 to ptr
  store float %.405, ptr %.406, align 4
  %.409 = load i32, ptr %R23, align 4
  %.412 = xor i1 true, true
  %.413 = zext i1 %.399 to i32
  %.414 = zext i1 %.412 to i32
  %add.13 = add i32 %.409, %trunc32.17
  %add.14 = add i32 %add.13, 0
  %add.15 = add i32 %add.14, %.413
  %add.16 = add i32 %add.15, %.414
  store i32 %add.16, ptr %R13, align 4
  %.417 = load i32, ptr %R38, align 4
  %zext.40 = zext i32 %.417 to i64
  %zext.41 = zext i32 %add.8 to i64
  %shl.22 = shl i64 %zext.41, 32
  %or.18 = or i64 %shl.22, %zext.40
  %inttoptr_bytes.14 = inttoptr i64 %or.18 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.419 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.420 = bitcast ptr %R38 to ptr
  store float %.419, ptr %.420, align 4
  %.423 = load i32, ptr %R12, align 4
  %.425 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.423, i32 %trunc32.18)
  %.426 = extractvalue { i32, i1 } %.425, 0
  %.427 = extractvalue { i32, i1 } %.425, 1
  %.428 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.426, i32 0)
  %.429 = extractvalue { i32, i1 } %.428, 0
  %.430 = extractvalue { i32, i1 } %.428, 1
  %.431 = or i1 %.427, %.430
  store i32 %.429, ptr %R18, align 4
  %.435 = load i32, ptr %R22, align 4
  %zext.42 = zext i32 %.435 to i64
  %.436 = load i32, ptr %R23, align 4
  %zext.43 = zext i32 %.436 to i64
  %shl.23 = shl i64 %zext.43, 32
  %or.19 = or i64 %shl.23, %zext.42
  %inttoptr_bytes.15 = inttoptr i64 %or.19 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.437 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.438 = bitcast ptr %R41 to ptr
  store float %.437, ptr %.438, align 4
  %.441 = load i32, ptr %R13, align 4
  %.444 = xor i1 true, true
  %.445 = zext i1 %.431 to i32
  %.446 = zext i1 %.444 to i32
  %add.17 = add i32 %.441, %trunc32.17
  %add.18 = add i32 %add.17, 0
  %add.19 = add i32 %add.18, %.445
  %add.20 = add i32 %add.19, %.446
  store i32 %add.20, ptr %R19, align 4
  %.449 = load i32, ptr %R18, align 4
  %.451 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.449, i32 %trunc32.18)
  %.452 = extractvalue { i32, i1 } %.451, 0
  %.453 = extractvalue { i32, i1 } %.451, 1
  %.454 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.452, i32 0)
  %.455 = extractvalue { i32, i1 } %.454, 0
  %.456 = extractvalue { i32, i1 } %.454, 1
  %.457 = or i1 %.453, %.456
  store i32 %.455, ptr %R14, align 4
  %.461 = load i32, ptr %R12, align 4
  %zext.44 = zext i32 %.461 to i64
  %.462 = load i32, ptr %R13, align 4
  %zext.45 = zext i32 %.462 to i64
  %shl.24 = shl i64 %zext.45, 32
  %or.20 = or i64 %shl.24, %zext.44
  %inttoptr_bytes.16 = inttoptr i64 %or.20 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.463 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.464 = bitcast ptr %R43 to ptr
  store float %.463, ptr %.464, align 4
  %.467 = load i32, ptr %R19, align 4
  %.470 = xor i1 true, true
  %.471 = zext i1 %.457 to i32
  %.472 = zext i1 %.470 to i32
  %add.21 = add i32 %.467, %trunc32.17
  %add.22 = add i32 %add.21, 0
  %add.23 = add i32 %add.22, %.471
  %add.24 = add i32 %add.23, %.472
  store i32 %add.24, ptr %R15, align 4
  %.475 = load i32, ptr %R14, align 4
  %.477 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.475, i32 %trunc32.18)
  %.478 = extractvalue { i32, i1 } %.477, 0
  %.479 = extractvalue { i32, i1 } %.477, 1
  %.480 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.478, i32 0)
  %.481 = extractvalue { i32, i1 } %.480, 0
  %.482 = extractvalue { i32, i1 } %.480, 1
  %.483 = or i1 %.479, %.482
  store i32 %.481, ptr %R10, align 4
  %.487 = load i32, ptr %R18, align 4
  %zext.46 = zext i32 %.487 to i64
  %.488 = load i32, ptr %R19, align 4
  %zext.47 = zext i32 %.488 to i64
  %shl.25 = shl i64 %zext.47, 32
  %or.21 = or i64 %shl.25, %zext.46
  %inttoptr_bytes.17 = inttoptr i64 %or.21 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.489 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.490 = bitcast ptr %R18 to ptr
  store float %.489, ptr %.490, align 4
  %.493 = load i32, ptr %R15, align 4
  %.496 = xor i1 true, true
  %.497 = zext i1 %.483 to i32
  %.498 = zext i1 %.496 to i32
  %add.25 = add i32 %.493, %trunc32.17
  %add.26 = add i32 %add.25, 0
  %add.27 = add i32 %add.26, %.497
  %add.28 = add i32 %add.27, %.498
  store i32 %add.28, ptr %R11, align 4
  %.501 = load i32, ptr %R10, align 4
  %.503 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.501, i32 %trunc32.18)
  %.504 = extractvalue { i32, i1 } %.503, 0
  %.505 = extractvalue { i32, i1 } %.503, 1
  %.506 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.504, i32 0)
  %.507 = extractvalue { i32, i1 } %.506, 0
  %.508 = extractvalue { i32, i1 } %.506, 1
  %.509 = or i1 %.505, %.508
  store i32 %.507, ptr %R16, align 4
  %.513 = load i32, ptr %R14, align 4
  %zext.48 = zext i32 %.513 to i64
  %.514 = load i32, ptr %R15, align 4
  %zext.49 = zext i32 %.514 to i64
  %shl.26 = shl i64 %zext.49, 32
  %or.22 = or i64 %shl.26, %zext.48
  %inttoptr_bytes.18 = inttoptr i64 %or.22 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.515 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.516 = bitcast ptr %R14 to ptr
  store float %.515, ptr %.516, align 4
  %.519 = load i32, ptr %R11, align 4
  %.522 = xor i1 true, true
  %.523 = zext i1 %.509 to i32
  %.524 = zext i1 %.522 to i32
  %add.29 = add i32 %.519, %trunc32.17
  %add.30 = add i32 %add.29, 0
  %add.31 = add i32 %add.30, %.523
  %add.32 = add i32 %add.31, %.524
  store i32 %add.32, ptr %R17, align 4
  %.527 = load i32, ptr %R16, align 4
  %.529 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.527, i32 %trunc32.18)
  %.530 = extractvalue { i32, i1 } %.529, 0
  %.531 = extractvalue { i32, i1 } %.529, 1
  %.532 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.530, i32 0)
  %.533 = extractvalue { i32, i1 } %.532, 0
  %.534 = extractvalue { i32, i1 } %.532, 1
  %.535 = or i1 %.531, %.534
  store i32 %.533, ptr %R24, align 4
  %.539 = load i32, ptr %R10, align 4
  %zext.50 = zext i32 %.539 to i64
  %.540 = load i32, ptr %R11, align 4
  %zext.51 = zext i32 %.540 to i64
  %shl.27 = shl i64 %zext.51, 32
  %or.23 = or i64 %shl.27, %zext.50
  %inttoptr_bytes.19 = inttoptr i64 %or.23 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.541 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.542 = bitcast ptr %R10 to ptr
  store float %.541, ptr %.542, align 4
  %.545 = load i32, ptr %R17, align 4
  %.548 = xor i1 true, true
  %.549 = zext i1 %.535 to i32
  %.550 = zext i1 %.548 to i32
  %add.33 = add i32 %.545, %trunc32.17
  %add.34 = add i32 %add.33, 0
  %add.35 = add i32 %add.34, %.549
  %add.36 = add i32 %add.35, %.550
  %.553 = load i32, ptr %R24, align 4
  %.555 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.553, i32 %trunc32.18)
  %.556 = extractvalue { i32, i1 } %.555, 0
  %.557 = extractvalue { i32, i1 } %.555, 1
  %.558 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.556, i32 0)
  %.559 = extractvalue { i32, i1 } %.558, 0
  %.560 = extractvalue { i32, i1 } %.558, 1
  %.561 = or i1 %.557, %.560
  store i32 %.559, ptr %R26, align 4
  %.565 = load i32, ptr %R16, align 4
  %zext.52 = zext i32 %.565 to i64
  %.566 = load i32, ptr %R17, align 4
  %zext.53 = zext i32 %.566 to i64
  %shl.28 = shl i64 %zext.53, 32
  %or.24 = or i64 %shl.28, %zext.52
  %inttoptr_bytes.20 = inttoptr i64 %or.24 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.567 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.568 = bitcast ptr %R16 to ptr
  store float %.567, ptr %.568, align 4
  %.574 = xor i1 true, true
  %.575 = zext i1 %.561 to i32
  %.576 = zext i1 %.574 to i32
  %add.37 = add i32 %add.36, %trunc32.17
  %add.38 = add i32 %add.37, 0
  %add.39 = add i32 %add.38, %.575
  %add.40 = add i32 %add.39, %.576
  store i32 %add.40, ptr %R27, align 4
  %.579 = load i32, ptr %R26, align 4
  %.581 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.579, i32 %trunc32.18)
  %.582 = extractvalue { i32, i1 } %.581, 0
  %.583 = extractvalue { i32, i1 } %.581, 1
  %.584 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.582, i32 0)
  %.585 = extractvalue { i32, i1 } %.584, 0
  %.586 = extractvalue { i32, i1 } %.584, 1
  %.587 = or i1 %.583, %.586
  store i32 %.585, ptr %R30, align 4
  %.591 = load i32, ptr %R24, align 4
  %zext.54 = zext i32 %.591 to i64
  %zext.55 = zext i32 %add.36 to i64
  %shl.29 = shl i64 %zext.55, 32
  %or.25 = or i64 %shl.29, %zext.54
  %inttoptr_bytes.21 = inttoptr i64 %or.25 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.593 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.594 = bitcast ptr %R24 to ptr
  store float %.593, ptr %.594, align 4
  %.597 = load i32, ptr %R27, align 4
  %.600 = xor i1 true, true
  %.601 = zext i1 %.587 to i32
  %.602 = zext i1 %.600 to i32
  %add.41 = add i32 %.597, %trunc32.17
  %add.42 = add i32 %add.41, 0
  %add.43 = add i32 %add.42, %.601
  %add.44 = add i32 %add.43, %.602
  %.605 = load i32, ptr %R30, align 4
  %.607 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.605, i32 %trunc32.18)
  %.608 = extractvalue { i32, i1 } %.607, 0
  %.609 = extractvalue { i32, i1 } %.607, 1
  %.610 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.608, i32 0)
  %.611 = extractvalue { i32, i1 } %.610, 0
  %.612 = extractvalue { i32, i1 } %.610, 1
  %.613 = or i1 %.609, %.612
  store i32 %.611, ptr %R32, align 4
  %.617 = load i32, ptr %R26, align 4
  %zext.56 = zext i32 %.617 to i64
  %.618 = load i32, ptr %R27, align 4
  %zext.57 = zext i32 %.618 to i64
  %shl.30 = shl i64 %zext.57, 32
  %or.26 = or i64 %shl.30, %zext.56
  %inttoptr_bytes.22 = inttoptr i64 %or.26 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.619 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.620 = bitcast ptr %R26 to ptr
  store float %.619, ptr %.620, align 4
  %.626 = xor i1 true, true
  %.627 = zext i1 %.613 to i32
  %.628 = zext i1 %.626 to i32
  %add.45 = add i32 %add.44, %trunc32.17
  %add.46 = add i32 %add.45, 0
  %add.47 = add i32 %add.46, %.627
  %add.48 = add i32 %add.47, %.628
  %.631 = load i32, ptr %R32, align 4
  %.633 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.631, i32 %trunc32.18)
  %.634 = extractvalue { i32, i1 } %.633, 0
  %.635 = extractvalue { i32, i1 } %.633, 1
  %.636 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.634, i32 0)
  %.637 = extractvalue { i32, i1 } %.636, 0
  %.638 = extractvalue { i32, i1 } %.636, 1
  %.639 = or i1 %.635, %.638
  store i32 %.637, ptr %R22, align 4
  %.643 = load i32, ptr %R30, align 4
  %zext.58 = zext i32 %.643 to i64
  %zext.59 = zext i32 %add.44 to i64
  %shl.31 = shl i64 %zext.59, 32
  %or.27 = or i64 %shl.31, %zext.58
  %inttoptr_bytes.23 = inttoptr i64 %or.27 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.645 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.646 = bitcast ptr %R30 to ptr
  store float %.645, ptr %.646, align 4
  %.652 = xor i1 true, true
  %.653 = zext i1 %.639 to i32
  %.654 = zext i1 %.652 to i32
  %add.49 = add i32 %add.48, %trunc32.17
  %add.50 = add i32 %add.49, 0
  %add.51 = add i32 %add.50, %.653
  %add.52 = add i32 %add.51, %.654
  store i32 %add.52, ptr %R23, align 4
  %.657 = load i32, ptr %R22, align 4
  %.659 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.657, i32 %trunc32.18)
  %.660 = extractvalue { i32, i1 } %.659, 0
  %.661 = extractvalue { i32, i1 } %.659, 1
  %.662 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.660, i32 0)
  %.663 = extractvalue { i32, i1 } %.662, 0
  %.664 = extractvalue { i32, i1 } %.662, 1
  %.665 = or i1 %.661, %.664
  store i32 %.663, ptr %R12, align 4
  %.669 = load i32, ptr %R32, align 4
  %zext.60 = zext i32 %.669 to i64
  %zext.61 = zext i32 %add.48 to i64
  %shl.32 = shl i64 %zext.61, 32
  %or.28 = or i64 %shl.32, %zext.60
  %inttoptr_bytes.24 = inttoptr i64 %or.28 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.671 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.672 = bitcast ptr %R32 to ptr
  store float %.671, ptr %.672, align 4
  %.675 = load i32, ptr %R23, align 4
  %.678 = xor i1 true, true
  %.679 = zext i1 %.665 to i32
  %.680 = zext i1 %.678 to i32
  %add.53 = add i32 %.675, %trunc32.17
  %add.54 = add i32 %add.53, 0
  %add.55 = add i32 %add.54, %.679
  %add.56 = add i32 %add.55, %.680
  store i32 %add.56, ptr %R13, align 4
  %.683 = load i32, ptr %R22, align 4
  %zext.62 = zext i32 %.683 to i64
  %.684 = load i32, ptr %R23, align 4
  %zext.63 = zext i32 %.684 to i64
  %shl.33 = shl i64 %zext.63, 32
  %or.29 = or i64 %shl.33, %zext.62
  %inttoptr_bytes.25 = inttoptr i64 %or.29 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.685 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.686 = bitcast ptr %R22 to ptr
  store float %.685, ptr %.686, align 4
  %.689 = load i32, ptr %R12, align 4
  %zext.64 = zext i32 %.689 to i64
  %.690 = load i32, ptr %R13, align 4
  %zext.65 = zext i32 %.690 to i64
  %shl.34 = shl i64 %zext.65, 32
  %or.30 = or i64 %shl.34, %zext.64
  %inttoptr_bytes.26 = inttoptr i64 %or.30 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.691 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.692 = bitcast ptr %R15 to ptr
  store float %.691, ptr %.692, align 4
  %.695 = load i32, ptr %R12, align 4
  %zext.66 = zext i32 %.695 to i64
  %.696 = load i32, ptr %R13, align 4
  %zext.67 = zext i32 %.696 to i64
  %shl.35 = shl i64 %zext.67, 32
  %or.31 = or i64 %shl.35, %zext.66
  %inttoptr_bytes.27 = inttoptr i64 %or.31 to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.697 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.698 = bitcast ptr %R17 to ptr
  store float %.697, ptr %.698, align 4
  %.702 = add i32 %R42.0, -4
  %.703 = add i32 %.702, 0
  %cmp.4 = icmp ne i32 %.703, 0
  %.710 = and i1 %cmp.4, true
  %.714 = load i32, ptr %R28, align 4
  %.715 = add i32 %.714, 4
  %.716 = add i32 %.715, 0
  store i32 %.716, ptr %R28, align 4
  %.719 = load float, ptr %R35, align 4
  %.720 = load float, ptr %R40, align 4
  %.721 = load float, ptr %R2, align 4
  %fmul = fmul float %.719, %.720
  %fadd.4 = fadd float %fmul, %.721
  %.722 = bitcast ptr %R40 to ptr
  store float %fadd.4, ptr %.722, align 4
  %.725 = load float, ptr %R36, align 4
  %.726 = load float, ptr %R35, align 4
  %.727 = load float, ptr %R3, align 4
  %fmul.1 = fmul float %.725, %.726
  %fadd.5 = fadd float %fmul.1, %.727
  %.728 = bitcast ptr %R36 to ptr
  store float %fadd.5, ptr %.728, align 4
  %.731 = load float, ptr %R35, align 4
  %.732 = load float, ptr %R38, align 4
  %.733 = load float, ptr %R0, align 4
  %fmul.2 = fmul float %.731, %.732
  %fadd.6 = fadd float %fmul.2, %.733
  %.734 = bitcast ptr %R38 to ptr
  store float %fadd.6, ptr %.734, align 4
  %.737 = load float, ptr %R35, align 4
  %.738 = load float, ptr %R41, align 4
  %.739 = load float, ptr %R8, align 4
  %fmul.3 = fmul float %.737, %.738
  %fadd.7 = fadd float %fmul.3, %.739
  %.740 = bitcast ptr %R8 to ptr
  store float %fadd.7, ptr %.740, align 4
  %.743 = load float, ptr %R43, align 4
  %.744 = load float, ptr %R29, align 4
  %.745 = load float, ptr %R36, align 4
  %fmul.4 = fmul float %.743, %.744
  %fadd.8 = fadd float %fmul.4, %.745
  %.746 = bitcast ptr %R36 to ptr
  store float %fadd.8, ptr %.746, align 4
  %.749 = load float, ptr %R29, align 4
  %.750 = load float, ptr %R18, align 4
  %.751 = load float, ptr %R40, align 4
  %fmul.5 = fmul float %.749, %.750
  %fadd.9 = fadd float %fmul.5, %.751
  %.752 = bitcast ptr %R18 to ptr
  store float %fadd.9, ptr %.752, align 4
  %.755 = load float, ptr %R29, align 4
  %.756 = load float, ptr %R14, align 4
  %.757 = load float, ptr %R38, align 4
  %fmul.6 = fmul float %.755, %.756
  %fadd.10 = fadd float %fmul.6, %.757
  %.758 = bitcast ptr %R14 to ptr
  store float %fadd.10, ptr %.758, align 4
  %.761 = load float, ptr %R29, align 4
  %.762 = load float, ptr %R10, align 4
  %.763 = load float, ptr %R8, align 4
  %fmul.7 = fmul float %.761, %.762
  %fadd.11 = fadd float %fmul.7, %.763
  %.764 = bitcast ptr %R8 to ptr
  store float %fadd.11, ptr %.764, align 4
  %.767 = load float, ptr %R16, align 4
  %.768 = load float, ptr %R21, align 4
  %.769 = load float, ptr %R36, align 4
  %fmul.8 = fmul float %.767, %.768
  %fadd.12 = fadd float %fmul.8, %.769
  %.770 = bitcast ptr %R3 to ptr
  store float %fadd.12, ptr %.770, align 4
  %.773 = load float, ptr %R21, align 4
  %.774 = load float, ptr %R24, align 4
  %.775 = load float, ptr %R18, align 4
  %fmul.9 = fmul float %.773, %.774
  %fadd.13 = fadd float %fmul.9, %.775
  %.776 = bitcast ptr %R11 to ptr
  store float %fadd.13, ptr %.776, align 4
  %.779 = load float, ptr %R21, align 4
  %.780 = load float, ptr %R26, align 4
  %.781 = load float, ptr %R14, align 4
  %fmul.10 = fmul float %.779, %.780
  %fadd.14 = fadd float %fmul.10, %.781
  %.782 = bitcast ptr %R13 to ptr
  store float %fadd.14, ptr %.782, align 4
  %.785 = load float, ptr %R21, align 4
  %.786 = load float, ptr %R30, align 4
  %.787 = load float, ptr %R8, align 4
  %fmul.11 = fmul float %.785, %.786
  %fadd.15 = fadd float %fmul.11, %.787
  %.788 = bitcast ptr %R21 to ptr
  store float %fadd.15, ptr %.788, align 4
  %.791 = load float, ptr %R32, align 4
  %.792 = load float, ptr %R34, align 4
  %.793 = load float, ptr %R3, align 4
  %fmul.12 = fmul float %.791, %.792
  %fadd.16 = fadd float %fmul.12, %.793
  %.794 = bitcast ptr %R3 to ptr
  store float %fadd.16, ptr %.794, align 4
  %.797 = load float, ptr %R34, align 4
  %.798 = load float, ptr %R22, align 4
  %.799 = load float, ptr %R11, align 4
  %fmul.13 = fmul float %.797, %.798
  %fadd.17 = fadd float %fmul.13, %.799
  %.800 = bitcast ptr %R2 to ptr
  store float %fadd.17, ptr %.800, align 4
  %.803 = load float, ptr %R34, align 4
  %.804 = load float, ptr %R15, align 4
  %.805 = load float, ptr %R13, align 4
  %fmul.14 = fmul float %.803, %.804
  %fadd.18 = fadd float %fmul.14, %.805
  %.806 = bitcast ptr %R0 to ptr
  store float %fadd.18, ptr %.806, align 4
  %.809 = load float, ptr %R34, align 4
  %.810 = load float, ptr %R17, align 4
  %.811 = load float, ptr %R21, align 4
  %fmul.15 = fmul float %.809, %.810
  %fadd.19 = fadd float %fmul.15, %.811
  %.812 = bitcast ptr %R8 to ptr
  store float %fadd.19, ptr %.812, align 4
  %.816 = icmp eq i1 %.710, true
  br i1 %.816, label %.L_x_2, label %.L_x_1.loopexit

.L_x_1.loopexit:                                  ; preds = %.L_x_2
  br label %.L_x_1

.L_x_1:                                           ; preds = %.L_x_1.loopexit, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250
  %P1.1 = phi i1 [ %.239, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250 ], [ %.710, %.L_x_1.loopexit ]
  %.820 = icmp ne i1 %.228, true
  br i1 %.820, label %.L_x_0, label %.L_x_1_split_0x07b0

.L_x_1_split_0x07b0:                              ; preds = %.L_x_1
  %.823 = load i32, ptr %R7, align 4
  %.824 = load i32, ptr %R28, align 4
  %imad_mul.18 = mul i32 %.823, %Arg_10
  %imad_add.18 = add i32 %imad_mul.18, %.824
  store i32 %imad_add.18, ptr %R10, align 4
  %.827 = load i32, ptr %R20, align 4
  %.828 = sub i32 0, %.827
  %.829 = add i32 %.828, 0
  %.830 = add i32 %.829, 0
  store i32 %.830, ptr %R20, align 4
  %.833 = load i32, ptr %R28, align 4
  %imad_mul.19 = mul i32 %.833, %Arg_11
  %imad_add.19 = add i32 %imad_mul.19, 0
  store i32 %imad_add.19, ptr %R28, align 4
  %zext.68 = zext i32 %trunc32.16 to i64
  %zext.69 = zext i32 %Arg_11 to i64
  %zext.70 = zext i32 2 to i64
  %shl.36 = shl i64 %zext.68, 32
  %or.32 = or i64 %shl.36, %zext.69
  %shl.37 = shl i64 %or.32, %zext.70
  %lshr.1 = lshr i64 %shl.37, 32
  %trunc32.24 = trunc i64 %lshr.1 to i32
  %.841 = load i32, ptr %R10, align 4
  %.842 = load i32, ptr %R9, align 4
  %imad_ext1.10 = zext i32 %.841 to i64
  %imad_ext2.10 = zext i32 %.842 to i64
  %imad_mul.20 = mul i64 %imad_ext1.10, %imad_ext2.10
  %.843 = ptrtoint ptr %Arg_0 to i64
  %imad_add.20 = add i64 %imad_mul.20, %.843
  %.844 = and i64 %imad_add.20, -4294967296
  %.845 = lshr i64 %.844, 32
  %trunc32.25 = trunc i64 %.845 to i32
  %trunc32.26 = trunc i64 %imad_add.20 to i32
  store i32 %trunc32.26, ptr %R10, align 4
  store i32 %trunc32.25, ptr %R11, align 4
  %zext.71 = zext i32 0 to i64
  %zext.72 = zext i32 %Arg_11 to i64
  %zext.73 = zext i32 2 to i64
  %shl.38 = shl i64 %zext.71, 32
  %or.33 = or i64 %shl.38, %zext.72
  %shl.39 = shl i64 %or.33, %zext.73
  %and.2 = and i64 %shl.39, 4294967295
  %trunc32.27 = trunc i64 %and.2 to i32
  %.853 = load i32, ptr %R28, align 4
  %.854 = load i32, ptr %R5, align 4
  %imad_mul.21 = mul i32 %.853, 4
  %imad_add.21 = add i32 %imad_mul.21, %.854
  store i32 %imad_add.21, ptr %R13, align 4
  %.857 = load i32, ptr %R10, align 4
  store i32 %.857, ptr %R12, align 4
  %.860 = load i32, ptr %R11, align 4
  %imad_mul.22 = mul i32 0, 0
  %imad_add.22 = add i32 %imad_mul.22, %.860
  store i32 %imad_add.22, ptr %R23, align 4
  %.863 = load i32, ptr %R4, align 4
  %nvvm_blockdim_x.1 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %.864 = load i32, ptr %R13, align 4
  %imad_mul.23 = mul i32 %.863, %nvvm_blockdim_x.1
  %imad_add.23 = add i32 %imad_mul.23, %.864
  store i32 %imad_add.23, ptr %R18, align 4
  br label %.L_x_3

.L_x_3:                                           ; preds = %.L_x_3, %.L_x_1_split_0x07b0
  %.868 = load i32, ptr %R18, align 4
  %.869 = load i32, ptr %R9, align 4
  %imad_ext1.11 = zext i32 %.868 to i64
  %imad_ext2.11 = zext i32 %.869 to i64
  %imad_mul.24 = mul i64 %imad_ext1.11, %imad_ext2.11
  %.870 = ptrtoint ptr %Arg_3 to i64
  %imad_add.24 = add i64 %imad_mul.24, %.870
  %.871 = and i64 %imad_add.24, -4294967296
  %.872 = lshr i64 %.871, 32
  %trunc32.28 = trunc i64 %.872 to i32
  %trunc32.29 = trunc i64 %imad_add.24 to i32
  store i32 %trunc32.29, ptr %R10, align 4
  store i32 %trunc32.28, ptr %R11, align 4
  %.876 = load i32, ptr %R23, align 4
  %imad_mul.25 = mul i32 0, 0
  %imad_add.25 = add i32 %imad_mul.25, %.876
  store i32 %imad_add.25, ptr %R13, align 4
  %.879 = load i32, ptr %R10, align 4
  %.881 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.879, i32 %trunc32.27)
  %.882 = extractvalue { i32, i1 } %.881, 0
  %.883 = extractvalue { i32, i1 } %.881, 1
  %.884 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.882, i32 0)
  %.885 = extractvalue { i32, i1 } %.884, 0
  %.886 = extractvalue { i32, i1 } %.884, 1
  %.887 = or i1 %.883, %.886
  store i32 %.885, ptr %R14, align 4
  %.891 = load i32, ptr %R10, align 4
  %zext.74 = zext i32 %.891 to i64
  %.892 = load i32, ptr %R11, align 4
  %zext.75 = zext i32 %.892 to i64
  %shl.40 = shl i64 %zext.75, 32
  %or.34 = or i64 %shl.40, %zext.74
  %inttoptr_bytes.28 = inttoptr i64 %or.34 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.893 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.894 = bitcast ptr %R10 to ptr
  store float %.893, ptr %.894, align 4
  %.897 = load i32, ptr %R11, align 4
  %.900 = xor i1 true, true
  %.901 = zext i1 %.887 to i32
  %.902 = zext i1 %.900 to i32
  %add.57 = add i32 %.897, %trunc32.24
  %add.58 = add i32 %add.57, 0
  %add.59 = add i32 %add.58, %.901
  %add.60 = add i32 %add.59, %.902
  store i32 %add.60, ptr %R15, align 4
  %.905 = load i32, ptr %R14, align 4
  %.907 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.905, i32 %trunc32.27)
  %.908 = extractvalue { i32, i1 } %.907, 0
  %.909 = extractvalue { i32, i1 } %.907, 1
  %.910 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.908, i32 0)
  %.911 = extractvalue { i32, i1 } %.910, 0
  %.912 = extractvalue { i32, i1 } %.910, 1
  %.913 = or i1 %.909, %.912
  store i32 %.911, ptr %R16, align 4
  %.917 = load i32, ptr %R12, align 4
  %zext.76 = zext i32 %.917 to i64
  %.918 = load i32, ptr %R13, align 4
  %zext.77 = zext i32 %.918 to i64
  %shl.41 = shl i64 %zext.77, 32
  %or.35 = or i64 %shl.41, %zext.76
  %inttoptr_bytes.29 = inttoptr i64 %or.35 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.919 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.920 = bitcast ptr %R13 to ptr
  store float %.919, ptr %.920, align 4
  %.923 = load i32, ptr %R15, align 4
  %.926 = xor i1 true, true
  %.927 = zext i1 %.913 to i32
  %.928 = zext i1 %.926 to i32
  %add.61 = add i32 %.923, %trunc32.24
  %add.62 = add i32 %add.61, 0
  %add.63 = add i32 %add.62, %.927
  %add.64 = add i32 %add.63, %.928
  store i32 %add.64, ptr %R17, align 4
  %.931 = load i32, ptr %R14, align 4
  %zext.78 = zext i32 %.931 to i64
  %.932 = load i32, ptr %R15, align 4
  %zext.79 = zext i32 %.932 to i64
  %shl.42 = shl i64 %zext.79, 32
  %or.36 = or i64 %shl.42, %zext.78
  %inttoptr_bytes.30 = inttoptr i64 %or.36 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.933 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.934 = bitcast ptr %R14 to ptr
  store float %.933, ptr %.934, align 4
  %.937 = load i32, ptr %R16, align 4
  %zext.80 = zext i32 %.937 to i64
  %.938 = load i32, ptr %R17, align 4
  %zext.81 = zext i32 %.938 to i64
  %shl.43 = shl i64 %zext.81, 32
  %or.37 = or i64 %shl.43, %zext.80
  %inttoptr_bytes.31 = inttoptr i64 %or.37 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.939 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.940 = bitcast ptr %R19 to ptr
  store float %.939, ptr %.940, align 4
  %.943 = load i32, ptr %R16, align 4
  %zext.82 = zext i32 %.943 to i64
  %.944 = load i32, ptr %R17, align 4
  %zext.83 = zext i32 %.944 to i64
  %shl.44 = shl i64 %zext.83, 32
  %or.38 = or i64 %shl.44, %zext.82
  %inttoptr_bytes.32 = inttoptr i64 %or.38 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.945 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.946 = bitcast ptr %R21 to ptr
  store float %.945, ptr %.946, align 4
  %.949 = load i32, ptr %R20, align 4
  %.950 = add i32 %.949, 1
  %.951 = add i32 %.950, 0
  store i32 %.951, ptr %R20, align 4
  %.954 = load i32, ptr %R20, align 4
  %cmp.5 = icmp ne i32 %.954, 0
  %.958 = and i1 %cmp.5, true
  %.964 = load i32, ptr %R12, align 4
  %.965 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.964, i32 4)
  %.966 = extractvalue { i32, i1 } %.965, 0
  %.967 = extractvalue { i32, i1 } %.965, 1
  %.968 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.966, i32 0)
  %.969 = extractvalue { i32, i1 } %.968, 0
  %.970 = extractvalue { i32, i1 } %.968, 1
  %.971 = or i1 %.967, %.970
  store i32 %.969, ptr %R12, align 4
  %.976 = load i32, ptr %R18, align 4
  %imad_mul.26 = mul i32 %Arg_11, 4
  %imad_add.26 = add i32 %imad_mul.26, %.976
  store i32 %imad_add.26, ptr %R18, align 4
  %.979 = load i32, ptr %R23, align 4
  %.981 = xor i1 true, true
  %.982 = zext i1 %.971 to i32
  %.983 = zext i1 %.981 to i32
  %add.65 = add i32 0, %.979
  %add.66 = add i32 %add.65, 0
  %add.67 = add i32 %add.66, %.982
  %add.68 = add i32 %add.67, %.983
  store i32 %add.68, ptr %R23, align 4
  %.986 = load float, ptr %R10, align 4
  %.987 = load float, ptr %R13, align 4
  %.988 = load float, ptr %R3, align 4
  %fmul.16 = fmul float %.986, %.987
  %fadd.20 = fadd float %fmul.16, %.988
  %.989 = bitcast ptr %R3 to ptr
  store float %fadd.20, ptr %.989, align 4
  %.992 = load float, ptr %R13, align 4
  %.993 = load float, ptr %R14, align 4
  %.994 = load float, ptr %R2, align 4
  %fmul.17 = fmul float %.992, %.993
  %fadd.21 = fadd float %fmul.17, %.994
  %.995 = bitcast ptr %R2 to ptr
  store float %fadd.21, ptr %.995, align 4
  %.998 = load float, ptr %R13, align 4
  %.999 = load float, ptr %R19, align 4
  %.1000 = load float, ptr %R0, align 4
  %fmul.18 = fmul float %.998, %.999
  %fadd.22 = fadd float %fmul.18, %.1000
  %.1001 = bitcast ptr %R0 to ptr
  store float %fadd.22, ptr %.1001, align 4
  %.1004 = load float, ptr %R13, align 4
  %.1005 = load float, ptr %R21, align 4
  %.1006 = load float, ptr %R8, align 4
  %fmul.19 = fmul float %.1004, %.1005
  %fadd.23 = fadd float %fmul.19, %.1006
  %.1007 = bitcast ptr %R8 to ptr
  store float %fadd.23, ptr %.1007, align 4
  %.1011 = icmp eq i1 %.958, true
  br i1 %.1011, label %.L_x_3, label %.L_x_0.loopexit

.L_x_0.loopexit:                                  ; preds = %.L_x_3
  br label %.L_x_0

.L_x_0:                                           ; preds = %.L_x_0.loopexit, %.L_x_1, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0
  %P1.0 = phi i1 [ undef, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0 ], [ %P1.1, %.L_x_1 ], [ %.971, %.L_x_0.loopexit ]
  %P0.0 = phi i1 [ %.189, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0 ], [ %.228, %.L_x_1 ], [ %.958, %.L_x_0.loopexit ]
  %RZ.0 = phi i32 [ 0, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0 ], [ %.226, %.L_x_1 ], [ %.226, %.L_x_0.loopexit ]
  %.1029 = icmp ne i1 %P0.0, true
  br i1 %.1029, label %.L_x_4, label %.L_x_0_split_0x09f0

.L_x_0_split_0x09f0:                              ; preds = %.L_x_0
  %imad_mul.27 = mul i32 0, 0
  %imad_add.27 = add i32 %imad_mul.27, 0
  store i32 %imad_add.27, ptr %R22, align 4
  %.1057 = and i32 %Arg_11, 3
  %.1067 = icmp ne i1 %P1.0, true
  br i1 %.1067, label %.L_x_5, label %.L_x_0_split_0x0a70

.L_x_0_split_0x0a70:                              ; preds = %.L_x_0_split_0x09f0
  %zext.84 = zext i32 %Arg_11 to i64
  %zext.85 = zext i32 0 to i64
  %zext.86 = zext i32 31 to i64
  %shl.45 = shl i64 %zext.84, 32
  %or.39 = or i64 %shl.45, %zext.85
  %ashr.2 = ashr i64 %or.39, %zext.86
  %ashr.3 = ashr i64 %ashr.2, 32
  %trunc32.30 = trunc i64 %ashr.3 to i32
  store i32 %RZ.0, ptr %R22, align 4
  %zext.87 = zext i32 0 to i64
  %zext.88 = zext i32 %Arg_11 to i64
  %zext.89 = zext i32 2 to i64
  %shl.46 = shl i64 %zext.87, 32
  %or.40 = or i64 %shl.46, %zext.88
  %shl.47 = shl i64 %or.40, %zext.89
  %and.3 = and i64 %shl.47, 4294967295
  %trunc32.31 = trunc i64 %and.3 to i32
  %.1084 = sub i32 0, %.1057
  %.1086 = add i32 %.1084, %Arg_11
  %.1087 = add i32 %.1086, 0
  %zext.90 = zext i32 %trunc32.30 to i64
  %zext.91 = zext i32 %Arg_11 to i64
  %zext.92 = zext i32 2 to i64
  %shl.48 = shl i64 %zext.90, 32
  %or.41 = or i64 %shl.48, %zext.91
  %shl.49 = shl i64 %or.41, %zext.92
  %lshr.2 = lshr i64 %shl.49, 32
  %trunc32.32 = trunc i64 %lshr.2 to i32
  br label %.L_x_6

.L_x_6:                                           ; preds = %.L_x_6, %.L_x_0_split_0x0a70
  %UR7.0 = phi i32 [ %.1087, %.L_x_0_split_0x0a70 ], [ %.1528, %.L_x_6 ]
  %.1096 = load i32, ptr %R22, align 4
  %imad_shl = shl i32 %.1096, 4
  %imad_add.28 = add i32 %imad_shl, 0
  store i32 %imad_add.28, ptr %R11, align 4
  %.1099 = load i32, ptr %R7, align 4
  %.1100 = load i32, ptr %R22, align 4
  %imad_mul.28 = mul i32 %.1099, %Arg_11
  %imad_add.29 = add i32 %imad_mul.28, %.1100
  store i32 %imad_add.29, ptr %R28, align 4
  %.1103 = load i32, ptr %R11, align 4
  %imad_mul.29 = mul i32 %.1103, %Arg_11
  %imad_add.30 = add i32 %imad_mul.29, %imad_add.1
  store i32 %imad_add.30, ptr %R30, align 4
  %.1107 = load i32, ptr %R28, align 4
  %.1108 = load i32, ptr %R9, align 4
  %imad_ext1.12 = zext i32 %.1107 to i64
  %imad_ext2.12 = zext i32 %.1108 to i64
  %imad_mul.30 = mul i64 %imad_ext1.12, %imad_ext2.12
  %.1109 = ptrtoint ptr %Arg_1 to i64
  %imad_add.31 = add i64 %imad_mul.30, %.1109
  %.1110 = and i64 %imad_add.31, -4294967296
  %.1111 = lshr i64 %.1110, 32
  %trunc32.33 = trunc i64 %.1111 to i32
  %trunc32.34 = trunc i64 %imad_add.31 to i32
  store i32 %trunc32.34, ptr %R28, align 4
  store i32 %trunc32.33, ptr %R29, align 4
  %.1115 = load i32, ptr %R30, align 4
  %.1116 = load i32, ptr %R9, align 4
  %imad_ext1.13 = zext i32 %.1115 to i64
  %imad_ext2.13 = zext i32 %.1116 to i64
  %imad_mul.31 = mul i64 %imad_ext1.13, %imad_ext2.13
  %.1117 = ptrtoint ptr %Arg_4 to i64
  %imad_add.32 = add i64 %imad_mul.31, %.1117
  %.1118 = and i64 %imad_add.32, -4294967296
  %.1119 = lshr i64 %.1118, 32
  %trunc32.35 = trunc i64 %.1119 to i32
  %trunc32.36 = trunc i64 %imad_add.32 to i32
  store i32 %trunc32.36, ptr %R30, align 4
  %.1123 = load i32, ptr %R28, align 4
  %zext.93 = zext i32 %.1123 to i64
  %.1124 = load i32, ptr %R29, align 4
  %zext.94 = zext i32 %.1124 to i64
  %shl.50 = shl i64 %zext.94, 32
  %or.42 = or i64 %shl.50, %zext.93
  %inttoptr_bytes.33 = inttoptr i64 %or.42 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.1125 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.1126 = bitcast ptr %R35 to ptr
  store float %.1125, ptr %.1126, align 4
  %.1129 = load i32, ptr %R30, align 4
  %.1131 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1129, i32 %trunc32.31)
  %.1132 = extractvalue { i32, i1 } %.1131, 0
  %.1133 = extractvalue { i32, i1 } %.1131, 1
  %.1134 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1132, i32 0)
  %.1135 = extractvalue { i32, i1 } %.1134, 0
  %.1136 = extractvalue { i32, i1 } %.1134, 1
  %.1137 = or i1 %.1133, %.1136
  store i32 %.1135, ptr %R32, align 4
  %.1141 = load i32, ptr %R28, align 4
  %zext.95 = zext i32 %.1141 to i64
  %.1142 = load i32, ptr %R29, align 4
  %zext.96 = zext i32 %.1142 to i64
  %shl.51 = shl i64 %zext.96, 32
  %or.43 = or i64 %shl.51, %zext.95
  %ptr_plus_imm.3 = add i64 %or.43, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.1143 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.1144 = bitcast ptr %R26 to ptr
  store float %.1143, ptr %.1144, align 4
  %.1150 = xor i1 true, true
  %.1151 = zext i1 %.1137 to i32
  %.1152 = zext i1 %.1150 to i32
  %add.69 = add i32 %trunc32.35, %trunc32.32
  %add.70 = add i32 %add.69, 0
  %add.71 = add i32 %add.70, %.1151
  %add.72 = add i32 %add.71, %.1152
  %.1155 = load i32, ptr %R32, align 4
  %.1157 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1155, i32 %trunc32.31)
  %.1158 = extractvalue { i32, i1 } %.1157, 0
  %.1159 = extractvalue { i32, i1 } %.1157, 1
  %.1160 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1158, i32 0)
  %.1161 = extractvalue { i32, i1 } %.1160, 0
  %.1162 = extractvalue { i32, i1 } %.1160, 1
  %.1163 = or i1 %.1159, %.1162
  store i32 %.1161, ptr %R36, align 4
  %.1167 = load i32, ptr %R28, align 4
  %zext.97 = zext i32 %.1167 to i64
  %.1168 = load i32, ptr %R29, align 4
  %zext.98 = zext i32 %.1168 to i64
  %shl.52 = shl i64 %zext.98, 32
  %or.44 = or i64 %shl.52, %zext.97
  %ptr_plus_imm.4 = add i64 %or.44, 8
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.1169 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.1170 = bitcast ptr %R23 to ptr
  store float %.1169, ptr %.1170, align 4
  %.1176 = xor i1 true, true
  %.1177 = zext i1 %.1163 to i32
  %.1178 = zext i1 %.1176 to i32
  %add.73 = add i32 %add.72, %trunc32.32
  %add.74 = add i32 %add.73, 0
  %add.75 = add i32 %add.74, %.1177
  %add.76 = add i32 %add.75, %.1178
  %.1181 = load i32, ptr %R28, align 4
  %zext.99 = zext i32 %.1181 to i64
  %.1182 = load i32, ptr %R29, align 4
  %zext.100 = zext i32 %.1182 to i64
  %shl.53 = shl i64 %zext.100, 32
  %or.45 = or i64 %shl.53, %zext.99
  %ptr_plus_imm.5 = add i64 %or.45, 12
  %inttoptr_bytes.36 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.1183 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.1184 = bitcast ptr %R27 to ptr
  store float %.1183, ptr %.1184, align 4
  %.1187 = load i32, ptr %R36, align 4
  %.1189 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1187, i32 %trunc32.31)
  %.1190 = extractvalue { i32, i1 } %.1189, 0
  %.1191 = extractvalue { i32, i1 } %.1189, 1
  %.1192 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1190, i32 0)
  %.1193 = extractvalue { i32, i1 } %.1192, 0
  %.1194 = extractvalue { i32, i1 } %.1192, 1
  %.1195 = or i1 %.1191, %.1194
  store i32 %.1193, ptr %R38, align 4
  %.1199 = load i32, ptr %R30, align 4
  %zext.101 = zext i32 %.1199 to i64
  %zext.102 = zext i32 %trunc32.35 to i64
  %shl.54 = shl i64 %zext.102, 32
  %or.46 = or i64 %shl.54, %zext.101
  %inttoptr_bytes.37 = inttoptr i64 %or.46 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.1201 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.1202 = bitcast ptr %R34 to ptr
  store float %.1201, ptr %.1202, align 4
  %.1208 = xor i1 true, true
  %.1209 = zext i1 %.1195 to i32
  %.1210 = zext i1 %.1208 to i32
  %add.77 = add i32 %add.76, %trunc32.32
  %add.78 = add i32 %add.77, 0
  %add.79 = add i32 %add.78, %.1209
  %add.80 = add i32 %add.79, %.1210
  %.1213 = load i32, ptr %R38, align 4
  %.1215 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1213, i32 %trunc32.31)
  %.1216 = extractvalue { i32, i1 } %.1215, 0
  %.1217 = extractvalue { i32, i1 } %.1215, 1
  %.1218 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1216, i32 0)
  %.1219 = extractvalue { i32, i1 } %.1218, 0
  %.1220 = extractvalue { i32, i1 } %.1218, 1
  %.1221 = or i1 %.1217, %.1220
  store i32 %.1219, ptr %R12, align 4
  %.1225 = load i32, ptr %R32, align 4
  %zext.103 = zext i32 %.1225 to i64
  %zext.104 = zext i32 %add.72 to i64
  %shl.55 = shl i64 %zext.104, 32
  %or.47 = or i64 %shl.55, %zext.103
  %inttoptr_bytes.38 = inttoptr i64 %or.47 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.1227 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.1228 = bitcast ptr %R40 to ptr
  store float %.1227, ptr %.1228, align 4
  %.1234 = xor i1 true, true
  %.1235 = zext i1 %.1221 to i32
  %.1236 = zext i1 %.1234 to i32
  %add.81 = add i32 %add.80, %trunc32.32
  %add.82 = add i32 %add.81, 0
  %add.83 = add i32 %add.82, %.1235
  %add.84 = add i32 %add.83, %.1236
  store i32 %add.84, ptr %R13, align 4
  %.1239 = load i32, ptr %R36, align 4
  %zext.105 = zext i32 %.1239 to i64
  %zext.106 = zext i32 %add.76 to i64
  %shl.56 = shl i64 %zext.106, 32
  %or.48 = or i64 %shl.56, %zext.105
  %inttoptr_bytes.39 = inttoptr i64 %or.48 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.1241 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.1242 = bitcast ptr %R36 to ptr
  store float %.1241, ptr %.1242, align 4
  %.1245 = load i32, ptr %R12, align 4
  %.1247 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1245, i32 %trunc32.31)
  %.1248 = extractvalue { i32, i1 } %.1247, 0
  %.1249 = extractvalue { i32, i1 } %.1247, 1
  %.1250 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1248, i32 0)
  %.1251 = extractvalue { i32, i1 } %.1250, 0
  %.1252 = extractvalue { i32, i1 } %.1250, 1
  %.1253 = or i1 %.1249, %.1252
  store i32 %.1251, ptr %R18, align 4
  %.1257 = load i32, ptr %R38, align 4
  %zext.107 = zext i32 %.1257 to i64
  %zext.108 = zext i32 %add.80 to i64
  %shl.57 = shl i64 %zext.108, 32
  %or.49 = or i64 %shl.57, %zext.107
  %inttoptr_bytes.40 = inttoptr i64 %or.49 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.1259 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.1260 = bitcast ptr %R38 to ptr
  store float %.1259, ptr %.1260, align 4
  %.1263 = load i32, ptr %R13, align 4
  %.1266 = xor i1 true, true
  %.1267 = zext i1 %.1253 to i32
  %.1268 = zext i1 %.1266 to i32
  %add.85 = add i32 %.1263, %trunc32.32
  %add.86 = add i32 %add.85, 0
  %add.87 = add i32 %add.86, %.1267
  %add.88 = add i32 %add.87, %.1268
  store i32 %add.88, ptr %R19, align 4
  %.1271 = load i32, ptr %R18, align 4
  %.1273 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1271, i32 %trunc32.31)
  %.1274 = extractvalue { i32, i1 } %.1273, 0
  %.1275 = extractvalue { i32, i1 } %.1273, 1
  %.1276 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1274, i32 0)
  %.1277 = extractvalue { i32, i1 } %.1276, 0
  %.1278 = extractvalue { i32, i1 } %.1276, 1
  %.1279 = or i1 %.1275, %.1278
  store i32 %.1277, ptr %R14, align 4
  %.1283 = load i32, ptr %R12, align 4
  %zext.109 = zext i32 %.1283 to i64
  %.1284 = load i32, ptr %R13, align 4
  %zext.110 = zext i32 %.1284 to i64
  %shl.58 = shl i64 %zext.110, 32
  %or.50 = or i64 %shl.58, %zext.109
  %inttoptr_bytes.41 = inttoptr i64 %or.50 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.1285 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.1286 = bitcast ptr %R41 to ptr
  store float %.1285, ptr %.1286, align 4
  %.1289 = load i32, ptr %R19, align 4
  %.1292 = xor i1 true, true
  %.1293 = zext i1 %.1279 to i32
  %.1294 = zext i1 %.1292 to i32
  %add.89 = add i32 %.1289, %trunc32.32
  %add.90 = add i32 %add.89, 0
  %add.91 = add i32 %add.90, %.1293
  %add.92 = add i32 %add.91, %.1294
  store i32 %add.92, ptr %R15, align 4
  %.1297 = load i32, ptr %R14, align 4
  %.1299 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1297, i32 %trunc32.31)
  %.1300 = extractvalue { i32, i1 } %.1299, 0
  %.1301 = extractvalue { i32, i1 } %.1299, 1
  %.1302 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1300, i32 0)
  %.1303 = extractvalue { i32, i1 } %.1302, 0
  %.1304 = extractvalue { i32, i1 } %.1302, 1
  %.1305 = or i1 %.1301, %.1304
  store i32 %.1303, ptr %R10, align 4
  %.1309 = load i32, ptr %R18, align 4
  %zext.111 = zext i32 %.1309 to i64
  %.1310 = load i32, ptr %R19, align 4
  %zext.112 = zext i32 %.1310 to i64
  %shl.59 = shl i64 %zext.112, 32
  %or.51 = or i64 %shl.59, %zext.111
  %inttoptr_bytes.42 = inttoptr i64 %or.51 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.1311 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.1312 = bitcast ptr %R18 to ptr
  store float %.1311, ptr %.1312, align 4
  %.1315 = load i32, ptr %R15, align 4
  %.1318 = xor i1 true, true
  %.1319 = zext i1 %.1305 to i32
  %.1320 = zext i1 %.1318 to i32
  %add.93 = add i32 %.1315, %trunc32.32
  %add.94 = add i32 %add.93, 0
  %add.95 = add i32 %add.94, %.1319
  %add.96 = add i32 %add.95, %.1320
  store i32 %add.96, ptr %R11, align 4
  %.1323 = load i32, ptr %R10, align 4
  %.1325 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1323, i32 %trunc32.31)
  %.1326 = extractvalue { i32, i1 } %.1325, 0
  %.1327 = extractvalue { i32, i1 } %.1325, 1
  %.1328 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1326, i32 0)
  %.1329 = extractvalue { i32, i1 } %.1328, 0
  %.1330 = extractvalue { i32, i1 } %.1328, 1
  %.1331 = or i1 %.1327, %.1330
  store i32 %.1329, ptr %R16, align 4
  %.1335 = load i32, ptr %R14, align 4
  %zext.113 = zext i32 %.1335 to i64
  %.1336 = load i32, ptr %R15, align 4
  %zext.114 = zext i32 %.1336 to i64
  %shl.60 = shl i64 %zext.114, 32
  %or.52 = or i64 %shl.60, %zext.113
  %inttoptr_bytes.43 = inttoptr i64 %or.52 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.1337 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.1338 = bitcast ptr %R14 to ptr
  store float %.1337, ptr %.1338, align 4
  %.1341 = load i32, ptr %R11, align 4
  %.1344 = xor i1 true, true
  %.1345 = zext i1 %.1331 to i32
  %.1346 = zext i1 %.1344 to i32
  %add.97 = add i32 %.1341, %trunc32.32
  %add.98 = add i32 %add.97, 0
  %add.99 = add i32 %add.98, %.1345
  %add.100 = add i32 %add.99, %.1346
  store i32 %add.100, ptr %R17, align 4
  %.1349 = load i32, ptr %R16, align 4
  %.1351 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1349, i32 %trunc32.31)
  %.1352 = extractvalue { i32, i1 } %.1351, 0
  %.1353 = extractvalue { i32, i1 } %.1351, 1
  %.1354 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1352, i32 0)
  %.1355 = extractvalue { i32, i1 } %.1354, 0
  %.1356 = extractvalue { i32, i1 } %.1354, 1
  %.1357 = or i1 %.1353, %.1356
  store i32 %.1355, ptr %R24, align 4
  %.1361 = load i32, ptr %R10, align 4
  %zext.115 = zext i32 %.1361 to i64
  %.1362 = load i32, ptr %R11, align 4
  %zext.116 = zext i32 %.1362 to i64
  %shl.61 = shl i64 %zext.116, 32
  %or.53 = or i64 %shl.61, %zext.115
  %inttoptr_bytes.44 = inttoptr i64 %or.53 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.1363 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.1364 = bitcast ptr %R10 to ptr
  store float %.1363, ptr %.1364, align 4
  %.1367 = load i32, ptr %R17, align 4
  %.1370 = xor i1 true, true
  %.1371 = zext i1 %.1357 to i32
  %.1372 = zext i1 %.1370 to i32
  %add.101 = add i32 %.1367, %trunc32.32
  %add.102 = add i32 %add.101, 0
  %add.103 = add i32 %add.102, %.1371
  %add.104 = add i32 %add.103, %.1372
  %.1375 = load i32, ptr %R24, align 4
  %.1377 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1375, i32 %trunc32.31)
  %.1378 = extractvalue { i32, i1 } %.1377, 0
  %.1379 = extractvalue { i32, i1 } %.1377, 1
  %.1380 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1378, i32 0)
  %.1381 = extractvalue { i32, i1 } %.1380, 0
  %.1382 = extractvalue { i32, i1 } %.1380, 1
  %.1383 = or i1 %.1379, %.1382
  store i32 %.1381, ptr %R20, align 4
  %.1387 = load i32, ptr %R16, align 4
  %zext.117 = zext i32 %.1387 to i64
  %.1388 = load i32, ptr %R17, align 4
  %zext.118 = zext i32 %.1388 to i64
  %shl.62 = shl i64 %zext.118, 32
  %or.54 = or i64 %shl.62, %zext.117
  %inttoptr_bytes.45 = inttoptr i64 %or.54 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.1389 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.1390 = bitcast ptr %R16 to ptr
  store float %.1389, ptr %.1390, align 4
  %.1396 = xor i1 true, true
  %.1397 = zext i1 %.1383 to i32
  %.1398 = zext i1 %.1396 to i32
  %add.105 = add i32 %add.104, %trunc32.32
  %add.106 = add i32 %add.105, 0
  %add.107 = add i32 %add.106, %.1397
  %add.108 = add i32 %add.107, %.1398
  store i32 %add.108, ptr %R21, align 4
  %.1401 = load i32, ptr %R20, align 4
  %.1403 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1401, i32 %trunc32.31)
  %.1404 = extractvalue { i32, i1 } %.1403, 0
  %.1405 = extractvalue { i32, i1 } %.1403, 1
  %.1406 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1404, i32 0)
  %.1407 = extractvalue { i32, i1 } %.1406, 0
  %.1408 = extractvalue { i32, i1 } %.1406, 1
  %.1409 = or i1 %.1405, %.1408
  store i32 %.1407, ptr %R28, align 4
  %.1413 = load i32, ptr %R24, align 4
  %zext.119 = zext i32 %.1413 to i64
  %zext.120 = zext i32 %add.104 to i64
  %shl.63 = shl i64 %zext.120, 32
  %or.55 = or i64 %shl.63, %zext.119
  %inttoptr_bytes.46 = inttoptr i64 %or.55 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.1415 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.1416 = bitcast ptr %R24 to ptr
  store float %.1415, ptr %.1416, align 4
  %.1419 = load i32, ptr %R21, align 4
  %.1422 = xor i1 true, true
  %.1423 = zext i1 %.1409 to i32
  %.1424 = zext i1 %.1422 to i32
  %add.109 = add i32 %.1419, %trunc32.32
  %add.110 = add i32 %add.109, 0
  %add.111 = add i32 %add.110, %.1423
  %add.112 = add i32 %add.111, %.1424
  store i32 %add.112, ptr %R29, align 4
  %.1427 = load i32, ptr %R28, align 4
  %.1429 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1427, i32 %trunc32.31)
  %.1430 = extractvalue { i32, i1 } %.1429, 0
  %.1431 = extractvalue { i32, i1 } %.1429, 1
  %.1432 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1430, i32 0)
  %.1433 = extractvalue { i32, i1 } %.1432, 0
  %.1434 = extractvalue { i32, i1 } %.1432, 1
  %.1435 = or i1 %.1431, %.1434
  store i32 %.1433, ptr %R30, align 4
  %.1439 = load i32, ptr %R20, align 4
  %zext.121 = zext i32 %.1439 to i64
  %.1440 = load i32, ptr %R21, align 4
  %zext.122 = zext i32 %.1440 to i64
  %shl.64 = shl i64 %zext.122, 32
  %or.56 = or i64 %shl.64, %zext.121
  %inttoptr_bytes.47 = inttoptr i64 %or.56 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.1441 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.1442 = bitcast ptr %R20 to ptr
  store float %.1441, ptr %.1442, align 4
  %.1445 = load i32, ptr %R29, align 4
  %.1448 = xor i1 true, true
  %.1449 = zext i1 %.1435 to i32
  %.1450 = zext i1 %.1448 to i32
  %add.113 = add i32 %.1445, %trunc32.32
  %add.114 = add i32 %add.113, 0
  %add.115 = add i32 %add.114, %.1449
  %add.116 = add i32 %add.115, %.1450
  %.1453 = load i32, ptr %R30, align 4
  %.1455 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1453, i32 %trunc32.31)
  %.1456 = extractvalue { i32, i1 } %.1455, 0
  %.1457 = extractvalue { i32, i1 } %.1455, 1
  %.1458 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1456, i32 0)
  %.1459 = extractvalue { i32, i1 } %.1458, 0
  %.1460 = extractvalue { i32, i1 } %.1458, 1
  %.1461 = or i1 %.1457, %.1460
  store i32 %.1459, ptr %R32, align 4
  %.1465 = load i32, ptr %R28, align 4
  %zext.123 = zext i32 %.1465 to i64
  %.1466 = load i32, ptr %R29, align 4
  %zext.124 = zext i32 %.1466 to i64
  %shl.65 = shl i64 %zext.124, 32
  %or.57 = or i64 %shl.65, %zext.123
  %inttoptr_bytes.48 = inttoptr i64 %or.57 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.1467 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.1468 = bitcast ptr %R28 to ptr
  store float %.1467, ptr %.1468, align 4
  %.1474 = xor i1 true, true
  %.1475 = zext i1 %.1461 to i32
  %.1476 = zext i1 %.1474 to i32
  %add.117 = add i32 %add.116, %trunc32.32
  %add.118 = add i32 %add.117, 0
  %add.119 = add i32 %add.118, %.1475
  %add.120 = add i32 %add.119, %.1476
  %.1479 = load i32, ptr %R32, align 4
  %.1481 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1479, i32 %trunc32.31)
  %.1482 = extractvalue { i32, i1 } %.1481, 0
  %.1483 = extractvalue { i32, i1 } %.1481, 1
  %.1484 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1482, i32 0)
  %.1485 = extractvalue { i32, i1 } %.1484, 0
  %.1486 = extractvalue { i32, i1 } %.1484, 1
  %.1487 = or i1 %.1483, %.1486
  store i32 %.1485, ptr %R12, align 4
  %.1494 = load i32, ptr %R30, align 4
  %zext.125 = zext i32 %.1494 to i64
  %zext.126 = zext i32 %add.116 to i64
  %shl.66 = shl i64 %zext.126, 32
  %or.58 = or i64 %shl.66, %zext.125
  %inttoptr_bytes.49 = inttoptr i64 %or.58 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.1496 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.1497 = bitcast ptr %R30 to ptr
  store float %.1496, ptr %.1497, align 4
  %.1503 = xor i1 true, true
  %.1504 = zext i1 %.1487 to i32
  %.1505 = zext i1 %.1503 to i32
  %add.121 = add i32 %add.120, %trunc32.32
  %add.122 = add i32 %add.121, 0
  %add.123 = add i32 %add.122, %.1504
  %add.124 = add i32 %add.123, %.1505
  store i32 %add.124, ptr %R13, align 4
  %.1508 = load i32, ptr %R32, align 4
  %zext.127 = zext i32 %.1508 to i64
  %zext.128 = zext i32 %add.120 to i64
  %shl.67 = shl i64 %zext.128, 32
  %or.59 = or i64 %shl.67, %zext.127
  %inttoptr_bytes.50 = inttoptr i64 %or.59 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.1510 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.1511 = bitcast ptr %R32 to ptr
  store float %.1510, ptr %.1511, align 4
  %.1514 = load i32, ptr %R12, align 4
  %zext.129 = zext i32 %.1514 to i64
  %.1515 = load i32, ptr %R13, align 4
  %zext.130 = zext i32 %.1515 to i64
  %shl.68 = shl i64 %zext.130, 32
  %or.60 = or i64 %shl.68, %zext.129
  %inttoptr_bytes.51 = inttoptr i64 %or.60 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.1516 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.1517 = bitcast ptr %R17 to ptr
  store float %.1516, ptr %.1517, align 4
  %.1520 = load i32, ptr %R12, align 4
  %zext.131 = zext i32 %.1520 to i64
  %.1521 = load i32, ptr %R13, align 4
  %zext.132 = zext i32 %.1521 to i64
  %shl.69 = shl i64 %zext.132, 32
  %or.61 = or i64 %shl.69, %zext.131
  %inttoptr_bytes.52 = inttoptr i64 %or.61 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.1522 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.1523 = bitcast ptr %R19 to ptr
  store float %.1522, ptr %.1523, align 4
  %.1527 = add i32 %UR7.0, -4
  %.1528 = add i32 %.1527, 0
  %cmp.6 = icmp ne i32 0, %.1528
  %.1535 = and i1 %cmp.6, true
  %.1539 = load i32, ptr %R22, align 4
  %.1540 = add i32 %.1539, 4
  %.1541 = add i32 %.1540, 0
  store i32 %.1541, ptr %R22, align 4
  %.1544 = load float, ptr %R34, align 4
  %.1545 = load float, ptr %R35, align 4
  %.1546 = load float, ptr %R3, align 4
  %fmul.20 = fmul float %.1544, %.1545
  %fadd.24 = fadd float %fmul.20, %.1546
  %.1547 = bitcast ptr %R3 to ptr
  store float %fadd.24, ptr %.1547, align 4
  %.1550 = load float, ptr %R35, align 4
  %.1551 = load float, ptr %R40, align 4
  %.1552 = load float, ptr %R2, align 4
  %fmul.21 = fmul float %.1550, %.1551
  %fadd.25 = fadd float %fmul.21, %.1552
  %.1553 = bitcast ptr %R11 to ptr
  store float %fadd.25, ptr %.1553, align 4
  %.1556 = load float, ptr %R35, align 4
  %.1557 = load float, ptr %R36, align 4
  %.1558 = load float, ptr %R0, align 4
  %fmul.22 = fmul float %.1556, %.1557
  %fadd.26 = fadd float %fmul.22, %.1558
  %.1559 = bitcast ptr %R15 to ptr
  store float %fadd.26, ptr %.1559, align 4
  %.1562 = load float, ptr %R35, align 4
  %.1563 = load float, ptr %R38, align 4
  %.1564 = load float, ptr %R8, align 4
  %fmul.23 = fmul float %.1562, %.1563
  %fadd.27 = fadd float %fmul.23, %.1564
  %.1565 = bitcast ptr %R35 to ptr
  store float %fadd.27, ptr %.1565, align 4
  %.1568 = load float, ptr %R41, align 4
  %.1569 = load float, ptr %R26, align 4
  %.1570 = load float, ptr %R3, align 4
  %fmul.24 = fmul float %.1568, %.1569
  %fadd.28 = fadd float %fmul.24, %.1570
  %.1571 = bitcast ptr %R0 to ptr
  store float %fadd.28, ptr %.1571, align 4
  %.1574 = load float, ptr %R26, align 4
  %.1575 = load float, ptr %R18, align 4
  %.1576 = load float, ptr %R11, align 4
  %fmul.25 = fmul float %.1574, %.1575
  %fadd.29 = fadd float %fmul.25, %.1576
  %.1577 = bitcast ptr %R18 to ptr
  store float %fadd.29, ptr %.1577, align 4
  %.1580 = load float, ptr %R26, align 4
  %.1581 = load float, ptr %R14, align 4
  %.1582 = load float, ptr %R15, align 4
  %fmul.26 = fmul float %.1580, %.1581
  %fadd.30 = fadd float %fmul.26, %.1582
  %.1583 = bitcast ptr %R14 to ptr
  store float %fadd.30, ptr %.1583, align 4
  %.1586 = load float, ptr %R26, align 4
  %.1587 = load float, ptr %R10, align 4
  %.1588 = load float, ptr %R35, align 4
  %fmul.27 = fmul float %.1586, %.1587
  %fadd.31 = fadd float %fmul.27, %.1588
  %.1589 = bitcast ptr %R10 to ptr
  store float %fadd.31, ptr %.1589, align 4
  %.1592 = load float, ptr %R16, align 4
  %.1593 = load float, ptr %R23, align 4
  %.1594 = load float, ptr %R0, align 4
  %fmul.28 = fmul float %.1592, %.1593
  %fadd.32 = fadd float %fmul.28, %.1594
  %.1595 = bitcast ptr %R0 to ptr
  store float %fadd.32, ptr %.1595, align 4
  %.1598 = load float, ptr %R23, align 4
  %.1599 = load float, ptr %R24, align 4
  %.1600 = load float, ptr %R18, align 4
  %fmul.29 = fmul float %.1598, %.1599
  %fadd.33 = fadd float %fmul.29, %.1600
  %.1601 = bitcast ptr %R18 to ptr
  store float %fadd.33, ptr %.1601, align 4
  %.1604 = load float, ptr %R23, align 4
  %.1605 = load float, ptr %R20, align 4
  %.1606 = load float, ptr %R14, align 4
  %fmul.30 = fmul float %.1604, %.1605
  %fadd.34 = fadd float %fmul.30, %.1606
  %.1607 = bitcast ptr %R14 to ptr
  store float %fadd.34, ptr %.1607, align 4
  %.1610 = load float, ptr %R23, align 4
  %.1611 = load float, ptr %R28, align 4
  %.1612 = load float, ptr %R10, align 4
  %fmul.31 = fmul float %.1610, %.1611
  %fadd.35 = fadd float %fmul.31, %.1612
  %.1613 = bitcast ptr %R10 to ptr
  store float %fadd.35, ptr %.1613, align 4
  %.1616 = load float, ptr %R30, align 4
  %.1617 = load float, ptr %R27, align 4
  %.1618 = load float, ptr %R0, align 4
  %fmul.32 = fmul float %.1616, %.1617
  %fadd.36 = fadd float %fmul.32, %.1618
  %.1619 = bitcast ptr %R3 to ptr
  store float %fadd.36, ptr %.1619, align 4
  %.1622 = load float, ptr %R27, align 4
  %.1623 = load float, ptr %R32, align 4
  %.1624 = load float, ptr %R18, align 4
  %fmul.33 = fmul float %.1622, %.1623
  %fadd.37 = fadd float %fmul.33, %.1624
  %.1625 = bitcast ptr %R2 to ptr
  store float %fadd.37, ptr %.1625, align 4
  %.1628 = load float, ptr %R27, align 4
  %.1629 = load float, ptr %R17, align 4
  %.1630 = load float, ptr %R14, align 4
  %fmul.34 = fmul float %.1628, %.1629
  %fadd.38 = fadd float %fmul.34, %.1630
  %.1631 = bitcast ptr %R0 to ptr
  store float %fadd.38, ptr %.1631, align 4
  %.1634 = load float, ptr %R27, align 4
  %.1635 = load float, ptr %R19, align 4
  %.1636 = load float, ptr %R10, align 4
  %fmul.35 = fmul float %.1634, %.1635
  %fadd.39 = fadd float %fmul.35, %.1636
  %.1637 = bitcast ptr %R8 to ptr
  store float %fadd.39, ptr %.1637, align 4
  %.1641 = icmp eq i1 %.1535, true
  br i1 %.1641, label %.L_x_6, label %.L_x_5.loopexit

.L_x_5.loopexit:                                  ; preds = %.L_x_6
  br label %.L_x_5

.L_x_5:                                           ; preds = %.L_x_5.loopexit, %.L_x_0_split_0x09f0
  %.1645 = icmp ne i1 %P0.0, true
  br i1 %.1645, label %.L_x_4, label %.L_x_5_split_0x0f80

.L_x_5_split_0x0f80:                              ; preds = %.L_x_5
  %.1648 = load i32, ptr %R22, align 4
  %imad_mul.32 = mul i32 %.1648, %Arg_11
  %imad_add.33 = add i32 %imad_mul.32, 0
  store i32 %imad_add.33, ptr %R10, align 4
  %zext.133 = zext i32 %Arg_11 to i64
  %zext.134 = zext i32 0 to i64
  %zext.135 = zext i32 31 to i64
  %shl.70 = shl i64 %zext.133, 32
  %or.62 = or i64 %shl.70, %zext.134
  %ashr.4 = ashr i64 %or.62, %zext.135
  %ashr.5 = ashr i64 %ashr.4, 32
  %trunc32.37 = trunc i64 %ashr.5 to i32
  %.1655 = load i32, ptr %R7, align 4
  %.1656 = load i32, ptr %R22, align 4
  %imad_mul.33 = mul i32 %.1655, %Arg_11
  %imad_add.34 = add i32 %imad_mul.33, %.1656
  store i32 %imad_add.34, ptr %R22, align 4
  %zext.136 = zext i32 0 to i64
  %zext.137 = zext i32 %Arg_11 to i64
  %zext.138 = zext i32 2 to i64
  %shl.71 = shl i64 %zext.136, 32
  %or.63 = or i64 %shl.71, %zext.137
  %shl.72 = shl i64 %or.63, %zext.138
  %and.4 = and i64 %shl.72, 4294967295
  %trunc32.38 = trunc i64 %and.4 to i32
  %.1663 = load i32, ptr %R10, align 4
  %.1664 = load i32, ptr %R5, align 4
  %shl.73 = shl i32 %.1663, 2
  %add.125 = add i32 %shl.73, %.1664
  store i32 %add.125, ptr %R5, align 4
  %.1667 = load i32, ptr %R22, align 4
  %.1668 = load i32, ptr %R9, align 4
  %imad_ext1.14 = zext i32 %.1667 to i64
  %imad_ext2.14 = zext i32 %.1668 to i64
  %imad_mul.34 = mul i64 %imad_ext1.14, %imad_ext2.14
  %.1669 = ptrtoint ptr %Arg_1 to i64
  %imad_add.35 = add i64 %imad_mul.34, %.1669
  %.1670 = and i64 %imad_add.35, -4294967296
  %.1671 = lshr i64 %.1670, 32
  %trunc32.39 = trunc i64 %.1671 to i32
  %trunc32.40 = trunc i64 %imad_add.35 to i32
  store i32 %trunc32.40, ptr %R10, align 4
  store i32 %trunc32.39, ptr %R11, align 4
  %.1676 = sub i32 0, %.1057
  %.1677 = add i32 %.1676, 0
  %.1678 = add i32 %.1677, 0
  %zext.139 = zext i32 %trunc32.37 to i64
  %zext.140 = zext i32 %Arg_11 to i64
  %zext.141 = zext i32 2 to i64
  %shl.74 = shl i64 %zext.139, 32
  %or.64 = or i64 %shl.74, %zext.140
  %shl.75 = shl i64 %or.64, %zext.141
  %lshr.3 = lshr i64 %shl.75, 32
  %trunc32.41 = trunc i64 %lshr.3 to i32
  %.1686 = load i32, ptr %R4, align 4
  %nvvm_blockdim_x.2 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %.1687 = load i32, ptr %R5, align 4
  %imad_mul.35 = mul i32 %.1686, %nvvm_blockdim_x.2
  %imad_add.36 = add i32 %imad_mul.35, %.1687
  store i32 %imad_add.36, ptr %R16, align 4
  %.1690 = load i32, ptr %R11, align 4
  %imad_mul.36 = mul i32 0, 0
  %imad_add.37 = add i32 %imad_mul.36, %.1690
  store i32 %imad_add.37, ptr %R19, align 4
  br label %.L_x_7

.L_x_7:                                           ; preds = %.L_x_7, %.L_x_5_split_0x0f80
  %UR6.0 = phi i32 [ %.1678, %.L_x_5_split_0x0f80 ], [ %.1780, %.L_x_7 ]
  %.1694 = load i32, ptr %R16, align 4
  %.1695 = load i32, ptr %R9, align 4
  %imad_ext1.15 = zext i32 %.1694 to i64
  %imad_ext2.15 = zext i32 %.1695 to i64
  %imad_mul.37 = mul i64 %imad_ext1.15, %imad_ext2.15
  %.1696 = ptrtoint ptr %Arg_4 to i64
  %imad_add.38 = add i64 %imad_mul.37, %.1696
  %.1697 = and i64 %imad_add.38, -4294967296
  %.1698 = lshr i64 %.1697, 32
  %trunc32.42 = trunc i64 %.1698 to i32
  %trunc32.43 = trunc i64 %imad_add.38 to i32
  store i32 %trunc32.43, ptr %R4, align 4
  store i32 %trunc32.42, ptr %R5, align 4
  %.1702 = load i32, ptr %R19, align 4
  store i32 %.1702, ptr %R11, align 4
  %.1705 = load i32, ptr %R4, align 4
  %.1707 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1705, i32 %trunc32.38)
  %.1708 = extractvalue { i32, i1 } %.1707, 0
  %.1709 = extractvalue { i32, i1 } %.1707, 1
  %.1710 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1708, i32 0)
  %.1711 = extractvalue { i32, i1 } %.1710, 0
  %.1712 = extractvalue { i32, i1 } %.1710, 1
  %.1713 = or i1 %.1709, %.1712
  store i32 %.1711, ptr %R12, align 4
  %.1720 = load i32, ptr %R4, align 4
  %zext.142 = zext i32 %.1720 to i64
  %.1721 = load i32, ptr %R5, align 4
  %zext.143 = zext i32 %.1721 to i64
  %shl.76 = shl i64 %zext.143, 32
  %or.65 = or i64 %shl.76, %zext.142
  %inttoptr_bytes.53 = inttoptr i64 %or.65 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.1722 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.1723 = bitcast ptr %R4 to ptr
  store float %.1722, ptr %.1723, align 4
  %.1726 = load i32, ptr %R5, align 4
  %.1729 = xor i1 true, true
  %.1730 = zext i1 %.1713 to i32
  %.1731 = zext i1 %.1729 to i32
  %add.126 = add i32 %.1726, %trunc32.41
  %add.127 = add i32 %add.126, 0
  %add.128 = add i32 %add.127, %.1730
  %add.129 = add i32 %add.128, %.1731
  store i32 %add.129, ptr %R13, align 4
  %.1734 = load i32, ptr %R12, align 4
  %.1736 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1734, i32 %trunc32.38)
  %.1737 = extractvalue { i32, i1 } %.1736, 0
  %.1738 = extractvalue { i32, i1 } %.1736, 1
  %.1739 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1737, i32 0)
  %.1740 = extractvalue { i32, i1 } %.1739, 0
  %.1741 = extractvalue { i32, i1 } %.1739, 1
  %.1742 = or i1 %.1738, %.1741
  store i32 %.1740, ptr %R14, align 4
  %.1746 = load i32, ptr %R10, align 4
  %zext.144 = zext i32 %.1746 to i64
  %.1747 = load i32, ptr %R11, align 4
  %zext.145 = zext i32 %.1747 to i64
  %shl.77 = shl i64 %zext.145, 32
  %or.66 = or i64 %shl.77, %zext.144
  %inttoptr_bytes.54 = inttoptr i64 %or.66 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.1748 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.1749 = bitcast ptr %R11 to ptr
  store float %.1748, ptr %.1749, align 4
  %.1752 = load i32, ptr %R13, align 4
  %.1755 = xor i1 true, true
  %.1756 = zext i1 %.1742 to i32
  %.1757 = zext i1 %.1755 to i32
  %add.130 = add i32 %.1752, %trunc32.41
  %add.131 = add i32 %add.130, 0
  %add.132 = add i32 %add.131, %.1756
  %add.133 = add i32 %add.132, %.1757
  store i32 %add.133, ptr %R15, align 4
  %.1760 = load i32, ptr %R12, align 4
  %zext.146 = zext i32 %.1760 to i64
  %.1761 = load i32, ptr %R13, align 4
  %zext.147 = zext i32 %.1761 to i64
  %shl.78 = shl i64 %zext.147, 32
  %or.67 = or i64 %shl.78, %zext.146
  %inttoptr_bytes.55 = inttoptr i64 %or.67 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.1762 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.1763 = bitcast ptr %R12 to ptr
  store float %.1762, ptr %.1763, align 4
  %.1766 = load i32, ptr %R14, align 4
  %zext.148 = zext i32 %.1766 to i64
  %.1767 = load i32, ptr %R15, align 4
  %zext.149 = zext i32 %.1767 to i64
  %shl.79 = shl i64 %zext.149, 32
  %or.68 = or i64 %shl.79, %zext.148
  %inttoptr_bytes.56 = inttoptr i64 %or.68 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.1768 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.1769 = bitcast ptr %R17 to ptr
  store float %.1768, ptr %.1769, align 4
  %.1772 = load i32, ptr %R14, align 4
  %zext.150 = zext i32 %.1772 to i64
  %.1773 = load i32, ptr %R15, align 4
  %zext.151 = zext i32 %.1773 to i64
  %shl.80 = shl i64 %zext.151, 32
  %or.69 = or i64 %shl.80, %zext.150
  %inttoptr_bytes.57 = inttoptr i64 %or.69 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.1774 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.1775 = bitcast ptr %R18 to ptr
  store float %.1774, ptr %.1775, align 4
  %.1779 = add i32 %UR6.0, 1
  %.1780 = add i32 %.1779, 0
  %cmp.7 = icmp ne i32 0, %.1780
  %.1787 = and i1 %cmp.7, true
  %imad_mul.38 = mul i32 0, 0
  %imad_add.39 = add i32 %imad_mul.38, %Arg_11
  store i32 %imad_add.39, ptr %R21, align 4
  %.1793 = load i32, ptr %R10, align 4
  %.1794 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1793, i32 4)
  %.1795 = extractvalue { i32, i1 } %.1794, 0
  %.1796 = extractvalue { i32, i1 } %.1794, 1
  %.1797 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1795, i32 0)
  %.1798 = extractvalue { i32, i1 } %.1797, 0
  %.1799 = extractvalue { i32, i1 } %.1797, 1
  %.1800 = or i1 %.1796, %.1799
  store i32 %.1798, ptr %R10, align 4
  %.1804 = load i32, ptr %R21, align 4
  %.1805 = load i32, ptr %R16, align 4
  %shl.81 = shl i32 %.1804, 2
  %add.134 = add i32 %shl.81, %.1805
  store i32 %add.134, ptr %R16, align 4
  %.1808 = load i32, ptr %R19, align 4
  %imad_mul.39 = mul i32 0, 0
  %imad_add.40 = add i32 %imad_mul.39, %.1808
  %imad_ext4 = zext i1 %.1800 to i32
  %imad_add_x = add i32 %imad_add.40, %imad_ext4
  store i32 %imad_add_x, ptr %R19, align 4
  %.1812 = load float, ptr %R4, align 4
  %.1813 = load float, ptr %R11, align 4
  %.1814 = load float, ptr %R3, align 4
  %fmul.36 = fmul float %.1812, %.1813
  %fadd.40 = fadd float %fmul.36, %.1814
  %.1815 = bitcast ptr %R3 to ptr
  store float %fadd.40, ptr %.1815, align 4
  %.1818 = load float, ptr %R11, align 4
  %.1819 = load float, ptr %R12, align 4
  %.1820 = load float, ptr %R2, align 4
  %fmul.37 = fmul float %.1818, %.1819
  %fadd.41 = fadd float %fmul.37, %.1820
  %.1821 = bitcast ptr %R2 to ptr
  store float %fadd.41, ptr %.1821, align 4
  %.1824 = load float, ptr %R11, align 4
  %.1825 = load float, ptr %R17, align 4
  %.1826 = load float, ptr %R0, align 4
  %fmul.38 = fmul float %.1824, %.1825
  %fadd.42 = fadd float %fmul.38, %.1826
  %.1827 = bitcast ptr %R0 to ptr
  store float %fadd.42, ptr %.1827, align 4
  %.1830 = load float, ptr %R11, align 4
  %.1831 = load float, ptr %R18, align 4
  %.1832 = load float, ptr %R8, align 4
  %fmul.39 = fmul float %.1830, %.1831
  %fadd.43 = fadd float %fmul.39, %.1832
  %.1833 = bitcast ptr %R8 to ptr
  store float %fadd.43, ptr %.1833, align 4
  %.1837 = icmp eq i1 %.1787, true
  br i1 %.1837, label %.L_x_7, label %.L_x_4.loopexit

.L_x_4.loopexit:                                  ; preds = %.L_x_7
  br label %.L_x_4

.L_x_4:                                           ; preds = %.L_x_4.loopexit, %.L_x_5, %.L_x_0
  %P0.1 = phi i1 [ %P0.0, %.L_x_0 ], [ %P0.0, %.L_x_5 ], [ %.1787, %.L_x_4.loopexit ]
  %.1840 = load float, ptr %R0, align 4
  %llvm_fabs_result = call float @llvm.fabs.f32(float %.1840)
  %fcmp_unordered = fcmp oge float %llvm_fabs_result, 0x3FE3333340000000
  %.1844 = and i1 %fcmp_unordered, true
  %.1848 = load i32, ptr %R7, align 4
  %imad_mul.40 = mul i32 %.1848, %Arg_11
  %imad_add.41 = add i32 %imad_mul.40, %imad_add.1
  %.1852 = bitcast ptr %R13 to ptr
  store float 0x41CDDDCC40000000, ptr %.1852, align 4
  %imad_mul.41 = mul i32 0, 0
  %imad_add.42 = add i32 %imad_mul.41, 1132199936
  store i32 %imad_add.42, ptr %R14, align 4
  %.1858 = load i32, ptr %R9, align 4
  %imad_ext1.16 = zext i32 %imad_add.41 to i64
  %imad_ext2.16 = zext i32 %.1858 to i64
  %imad_mul.42 = mul i64 %imad_ext1.16, %imad_ext2.16
  %.1859 = ptrtoint ptr %Arg_2 to i64
  %imad_add.43 = add i64 %imad_mul.42, %.1859
  %.1860 = and i64 %imad_add.43, -4294967296
  %.1861 = lshr i64 %.1860, 32
  %trunc32.44 = trunc i64 %.1861 to i32
  %trunc32.45 = trunc i64 %imad_add.43 to i32
  store i32 %trunc32.45, ptr %R4, align 4
  store i32 %trunc32.44, ptr %R5, align 4
  %.1865 = load float, ptr %R2, align 4
  %.1866 = fneg float %.1865
  %.1867 = load float, ptr %R13, align 4
  %fmul.40 = fmul float %.1866, %.1867
  %fadd.44 = fadd float %fmul.40, 5.000000e-01
  %.1868 = bitcast ptr %R7 to ptr
  store float %fadd.44, ptr %.1868, align 4
  %.1872 = icmp eq i1 %.1844, true
  br i1 %.1872, label %.L_x_4_conditionalExpr_0x11f0, label %.L_x_4_split_0x1200

.L_x_4_conditionalExpr_0x11f0:                    ; preds = %.L_x_4
  %.1875 = load float, ptr %R0, align 4
  %llvm_fabs_result.1 = call float @llvm.fabs.f32(float %.1875)
  %fmul.41 = fmul float %llvm_fabs_result.1, 0x4007154760000000
  %.1876 = bitcast ptr %R11 to ptr
  store float %fmul.41, ptr %.1876, align 4
  br label %.L_x_4_split_0x1200

.L_x_4_split_0x1200:                              ; preds = %.L_x_4_conditionalExpr_0x11f0, %.L_x_4
  %.1881 = load i32, ptr %R4, align 4
  %zext.152 = zext i32 %.1881 to i64
  %.1882 = load i32, ptr %R5, align 4
  %zext.153 = zext i32 %.1882 to i64
  %shl.82 = shl i64 %zext.153, 32
  %or.70 = or i64 %shl.82, %zext.152
  %inttoptr_bytes.58 = inttoptr i64 %or.70 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.1883 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.1884 = bitcast ptr %R4 to ptr
  store float %.1883, ptr %.1884, align 4
  %.1887 = load float, ptr %R7, align 4
  %.1888 = load float, ptr %R14, align 4
  %fmul.42 = fmul float %.1887, %.1888
  %fadd.45 = fadd float %fmul.42, 0x4168000020000000
  %.1889 = bitcast ptr %R7 to ptr
  store float %fadd.45, ptr %.1889, align 4
  %.1893 = icmp eq i1 %.1844, true
  br i1 %.1893, label %.L_x_4_split_0x1200_conditionalExpr_0x1220, label %.L_x_4_split_0x1230

.L_x_4_split_0x1200_conditionalExpr_0x1220:       ; preds = %.L_x_4_split_0x1200
  %.1896 = load float, ptr %R0, align 4
  %llvm_fabs_result.2 = call float @llvm.fabs.f32(float %.1896)
  %fcmp_unordered.1 = fcmp oge float %llvm_fabs_result.2, 0x4022059680000000
  %.1900 = and i1 %fcmp_unordered.1, true
  br label %.L_x_4_split_0x1230

.L_x_4_split_0x1230:                              ; preds = %.L_x_4_split_0x1200_conditionalExpr_0x1220, %.L_x_4_split_0x1200
  %P0.2 = phi i1 [ %.1900, %.L_x_4_split_0x1200_conditionalExpr_0x1220 ], [ %P0.1, %.L_x_4_split_0x1200 ]
  %.1908 = icmp eq i1 %.1844, true
  br i1 %.1908, label %.L_x_4_split_0x1230_conditionalExpr_0x1240, label %.L_x_4_split_0x1250

.L_x_4_split_0x1230_conditionalExpr_0x1240:       ; preds = %.L_x_4_split_0x1230
  %.1911 = bitcast ptr %R16 to ptr
  store float 0x41CFC00000000000, ptr %.1911, align 4
  br label %.L_x_4_split_0x1250

.L_x_4_split_0x1250:                              ; preds = %.L_x_4_split_0x1230_conditionalExpr_0x1240, %.L_x_4_split_0x1230
  %.1917 = icmp eq i1 %.1844, true
  br i1 %.1917, label %.L_x_4_split_0x1250_conditionalExpr_0x1250, label %.L_x_4_split_0x1260

.L_x_4_split_0x1250_conditionalExpr_0x1250:       ; preds = %.L_x_4_split_0x1250
  %.1920 = load float, ptr %R11, align 4
  %llvm_exp2_f32_result = call float @llvm.exp2.f32(float %.1920)
  %.1921 = bitcast ptr %R11 to ptr
  store float %llvm_exp2_f32_result, ptr %.1921, align 4
  br label %.L_x_4_split_0x1260

.L_x_4_split_0x1260:                              ; preds = %.L_x_4_split_0x1250_conditionalExpr_0x1250, %.L_x_4_split_0x1250
  %.1926 = load float, ptr %R7, align 4
  %fadd.46 = fadd float %.1926, 0xC168000FE0000000
  %.1927 = bitcast ptr %R9 to ptr
  store float %fadd.46, ptr %.1927, align 4
  %.1931 = load i32, ptr %R7, align 4
  %zext.154 = zext i32 0 to i64
  %zext.155 = zext i32 %.1931 to i64
  %zext.156 = zext i32 23 to i64
  %shl.83 = shl i64 %zext.154, 32
  %or.71 = or i64 %shl.83, %zext.155
  %shl.84 = shl i64 %or.71, %zext.156
  %and.5 = and i64 %shl.84, 4294967295
  %trunc32.46 = trunc i64 %and.5 to i32
  store i32 %trunc32.46, ptr %R7, align 4
  %.1935 = load float, ptr %R8, align 4
  %.1936 = fneg float %.1935
  %.1937 = load float, ptr %R13, align 4
  %fmul.43 = fmul float %.1936, %.1937
  %fadd.47 = fadd float %fmul.43, 5.000000e-01
  %.1938 = bitcast ptr %R5 to ptr
  store float %fadd.47, ptr %.1938, align 4
  %.1941 = load float, ptr %R2, align 4
  %.1942 = fneg float %.1941
  %.1943 = load float, ptr %R9, align 4
  %.1944 = fneg float %.1943
  %fmul.44 = fmul float %.1942, 0x3FF7154760000000
  %fadd.48 = fadd float %fmul.44, %.1944
  %.1945 = bitcast ptr %R9 to ptr
  store float %fadd.48, ptr %.1945, align 4
  %.1948 = load float, ptr %R2, align 4
  %.1949 = fneg float %.1948
  %.1950 = load float, ptr %R9, align 4
  %fmul.45 = fmul float %.1949, 0x3E54AE0C00000000
  %fadd.49 = fadd float %fmul.45, %.1950
  %.1951 = bitcast ptr %R9 to ptr
  store float %fadd.49, ptr %.1951, align 4
  %.1954 = load float, ptr %R3, align 4
  %.1955 = fneg float %.1954
  %.1956 = load float, ptr %R13, align 4
  %fmul.46 = fmul float %.1955, %.1956
  %fadd.50 = fadd float %fmul.46, 5.000000e-01
  %.1957 = bitcast ptr %R2 to ptr
  store float %fadd.50, ptr %.1957, align 4
  %.1960 = load float, ptr %R9, align 4
  %llvm_exp2_f32_result.1 = call float @llvm.exp2.f32(float %.1960)
  %.1961 = bitcast ptr %R12 to ptr
  store float %llvm_exp2_f32_result.1, ptr %.1961, align 4
  %.1965 = icmp eq i1 %.1844, true
  br i1 %.1965, label %.L_x_4_split_0x1260_conditionalExpr_0x12e0, label %.L_x_4_split_0x12f0

.L_x_4_split_0x1260_conditionalExpr_0x12e0:       ; preds = %.L_x_4_split_0x1260
  %.1968 = load float, ptr %R11, align 4
  %fadd.51 = fadd float %.1968, 1.000000e+00
  %.1969 = bitcast ptr %R13 to ptr
  store float %fadd.51, ptr %.1969, align 4
  br label %.L_x_4_split_0x12f0

.L_x_4_split_0x12f0:                              ; preds = %.L_x_4_split_0x1260_conditionalExpr_0x12e0, %.L_x_4_split_0x1260
  %.1974 = load float, ptr %R2, align 4
  %.1975 = load float, ptr %R14, align 4
  %fmul.47 = fmul float %.1974, %.1975
  %fadd.52 = fadd float %fmul.47, 0x4168000020000000
  %.1976 = bitcast ptr %R2 to ptr
  store float %fadd.52, ptr %.1976, align 4
  %.1979 = load float, ptr %R5, align 4
  %.1980 = load float, ptr %R14, align 4
  %fmul.48 = fmul float %.1979, %.1980
  %fadd.53 = fadd float %fmul.48, 0x4168000020000000
  %.1981 = bitcast ptr %R14 to ptr
  store float %fadd.53, ptr %.1981, align 4
  %.1984 = load float, ptr %R2, align 4
  %fadd.54 = fadd float %.1984, 0xC168000FE0000000
  %.1985 = bitcast ptr %R10 to ptr
  store float %fadd.54, ptr %.1985, align 4
  %.1989 = icmp eq i1 %.1844, true
  br i1 %.1989, label %.L_x_4_split_0x12f0_conditionalExpr_0x1320, label %.L_x_4_split_0x1330

.L_x_4_split_0x12f0_conditionalExpr_0x1320:       ; preds = %.L_x_4_split_0x12f0
  %.1992 = load float, ptr %R13, align 4
  %.1993 = fdiv float 1.000000e+00, %.1992
  %.1994 = bitcast ptr %R13 to ptr
  store float %.1993, ptr %.1994, align 4
  br label %.L_x_4_split_0x1330

.L_x_4_split_0x1330:                              ; preds = %.L_x_4_split_0x12f0_conditionalExpr_0x1320, %.L_x_4_split_0x12f0
  %.1999 = load float, ptr %R14, align 4
  %fadd.55 = fadd float %.1999, 0xC168000FE0000000
  %.2000 = bitcast ptr %R5 to ptr
  store float %fadd.55, ptr %.2000, align 4
  %.2004 = load i32, ptr %R14, align 4
  %zext.157 = zext i32 0 to i64
  %zext.158 = zext i32 %.2004 to i64
  %zext.159 = zext i32 23 to i64
  %shl.85 = shl i64 %zext.157, 32
  %or.72 = or i64 %shl.85, %zext.158
  %shl.86 = shl i64 %or.72, %zext.159
  %and.6 = and i64 %shl.86, 4294967295
  %trunc32.47 = trunc i64 %and.6 to i32
  store i32 %trunc32.47, ptr %R14, align 4
  %.2007 = load float, ptr %R3, align 4
  %.2008 = fneg float %.2007
  %.2009 = load float, ptr %R10, align 4
  %.2010 = fneg float %.2009
  %fmul.49 = fmul float %.2008, 0x3FF7154760000000
  %fadd.56 = fadd float %fmul.49, %.2010
  %.2011 = bitcast ptr %R10 to ptr
  store float %fadd.56, ptr %.2011, align 4
  %.2014 = load float, ptr %R8, align 4
  %.2015 = fneg float %.2014
  %.2016 = load float, ptr %R5, align 4
  %.2017 = fneg float %.2016
  %fmul.50 = fmul float %.2015, 0x3FF7154760000000
  %fadd.57 = fadd float %fmul.50, %.2017
  %.2018 = bitcast ptr %R5 to ptr
  store float %fadd.57, ptr %.2018, align 4
  %.2021 = load float, ptr %R3, align 4
  %.2022 = fneg float %.2021
  %.2023 = load float, ptr %R10, align 4
  %fmul.51 = fmul float %.2022, 0x3E54AE0C00000000
  %fadd.58 = fadd float %fmul.51, %.2023
  %.2024 = bitcast ptr %R10 to ptr
  store float %fadd.58, ptr %.2024, align 4
  %.2027 = load float, ptr %R7, align 4
  %.2028 = load float, ptr %R12, align 4
  %fmul.52 = fmul float %.2027, %.2028
  %fadd.59 = fadd float %fmul.52, 1.000000e+00
  %.2029 = bitcast ptr %R15 to ptr
  store float %fadd.59, ptr %.2029, align 4
  %.2032 = load float, ptr %R8, align 4
  %.2033 = fneg float %.2032
  %.2034 = load float, ptr %R5, align 4
  %fmul.53 = fmul float %.2033, 0x3E54AE0C00000000
  %fadd.60 = fadd float %fmul.53, %.2034
  %.2035 = bitcast ptr %R11 to ptr
  store float %fadd.60, ptr %.2035, align 4
  %.2039 = icmp ne i1 %.1844, true
  br i1 %.2039, label %.L_x_4_split_0x1330_conditionalExpr_0x13a0, label %.L_x_4_split_0x13b0

.L_x_4_split_0x1330_conditionalExpr_0x13a0:       ; preds = %.L_x_4_split_0x1330
  %imad_mul.43 = mul i32 0, 0
  %imad_add.44 = add i32 %imad_mul.43, 1015083138
  store i32 %imad_add.44, ptr %R8, align 4
  br label %.L_x_4_split_0x13b0

.L_x_4_split_0x13b0:                              ; preds = %.L_x_4_split_0x1330_conditionalExpr_0x13a0, %.L_x_4_split_0x1330
  %.2046 = load i32, ptr %R15, align 4
  %.2047 = add i32 %.2046, 25165824
  %.2048 = add i32 %.2047, 0
  store i32 %.2048, ptr %R7, align 4
  %.2052 = icmp ne i1 %.1844, true
  br i1 %.2052, label %.L_x_4_split_0x13b0_conditionalExpr_0x13c0, label %.L_x_4_split_0x13d0

.L_x_4_split_0x13b0_conditionalExpr_0x13c0:       ; preds = %.L_x_4_split_0x13b0
  %.2055 = load float, ptr %R0, align 4
  %.2056 = load float, ptr %R0, align 4
  %fmul.54 = fmul float %.2055, %.2056
  %.2057 = bitcast ptr %R5 to ptr
  store float %fmul.54, ptr %.2057, align 4
  br label %.L_x_4_split_0x13d0

.L_x_4_split_0x13d0:                              ; preds = %.L_x_4_split_0x13b0_conditionalExpr_0x13c0, %.L_x_4_split_0x13b0
  %.2062 = load float, ptr %R10, align 4
  %llvm_exp2_f32_result.2 = call float @llvm.exp2.f32(float %.2062)
  %.2063 = bitcast ptr %R3 to ptr
  store float %llvm_exp2_f32_result.2, ptr %.2063, align 4
  %.2067 = icmp eq i1 %.1844, true
  br i1 %.2067, label %.L_x_4_split_0x13d0_conditionalExpr_0x13e0, label %.L_x_4_split_0x13f0

.L_x_4_split_0x13d0_conditionalExpr_0x13e0:       ; preds = %.L_x_4_split_0x13d0
  %.2070 = load float, ptr %R13, align 4
  %.2071 = load float, ptr %R16, align 4
  %fmul.55 = fmul float %.2070, -2.000000e+00
  %fadd.61 = fadd float %fmul.55, %.2071
  %.2072 = bitcast ptr %R13 to ptr
  store float %fadd.61, ptr %.2072, align 4
  br label %.L_x_4_split_0x13f0

.L_x_4_split_0x13f0:                              ; preds = %.L_x_4_split_0x13d0_conditionalExpr_0x13e0, %.L_x_4_split_0x13d0
  %.2077 = load i32, ptr %R7, align 4
  %.2079 = and i32 %.2077, 2139095040
  store i32 %.2079, ptr %R9, align 4
  %.2083 = icmp ne i1 %.1844, true
  br i1 %.2083, label %.L_x_4_split_0x13f0_conditionalExpr_0x1400, label %.L_x_4_split_0x1410

.L_x_4_split_0x13f0_conditionalExpr_0x1400:       ; preds = %.L_x_4_split_0x13f0
  %.2086 = load float, ptr %R5, align 4
  %.2087 = load float, ptr %R8, align 4
  %fmul.56 = fmul float %.2086, %.2087
  %fadd.62 = fadd float %fmul.56, 0xBFAAC795C0000000
  %.2088 = bitcast ptr %R8 to ptr
  store float %fadd.62, ptr %.2088, align 4
  br label %.L_x_4_split_0x1410

.L_x_4_split_0x1410:                              ; preds = %.L_x_4_split_0x13f0_conditionalExpr_0x1400, %.L_x_4_split_0x13f0
  %.2093 = load i32, ptr %R2, align 4
  %imad_shl.1 = shl i32 %.2093, 8388608
  %imad_add.45 = add i32 %imad_shl.1, 0
  store i32 %imad_add.45, ptr %R2, align 4
  %.2097 = icmp eq i1 %.1844, true
  br i1 %.2097, label %.L_x_4_split_0x1410_conditionalExpr_0x1420, label %.L_x_4_split_0x1430

.L_x_4_split_0x1410_conditionalExpr_0x1420:       ; preds = %.L_x_4_split_0x1410
  %.2100 = load float, ptr %R13, align 4
  %.2102 = xor i1 %P0.2, true
  %.2103 = icmp eq i1 %.2102, true
  %fsel = select i1 %.2103, float %.2100, float 1.000000e+00
  %.2104 = bitcast ptr %R13 to ptr
  store float %fsel, ptr %.2104, align 4
  br label %.L_x_4_split_0x1430

.L_x_4_split_0x1430:                              ; preds = %.L_x_4_split_0x1410_conditionalExpr_0x1420, %.L_x_4_split_0x1410
  %.2110 = icmp ne i1 %.1844, true
  br i1 %.2110, label %.L_x_4_split_0x1430_conditionalExpr_0x1430, label %.L_x_4_split_0x1440

.L_x_4_split_0x1430_conditionalExpr_0x1430:       ; preds = %.L_x_4_split_0x1430
  %.2113 = load float, ptr %R5, align 4
  %.2114 = load float, ptr %R8, align 4
  %fmul.57 = fmul float %.2113, %.2114
  %fadd.63 = fadd float %fmul.57, 0x3FC10B2820000000
  %.2115 = bitcast ptr %R8 to ptr
  store float %fadd.63, ptr %.2115, align 4
  br label %.L_x_4_split_0x1440

.L_x_4_split_0x1440:                              ; preds = %.L_x_4_split_0x1430_conditionalExpr_0x1430, %.L_x_4_split_0x1430
  %.2120 = load float, ptr %R11, align 4
  %llvm_exp2_f32_result.3 = call float @llvm.exp2.f32(float %.2120)
  %.2121 = bitcast ptr %R11 to ptr
  store float %llvm_exp2_f32_result.3, ptr %.2121, align 4
  %.2124 = load i32, ptr %R9, align 4
  %cmp.8 = icmp sgt i32 %.2124, 33554431
  %.2128 = and i1 %cmp.8, true
  %.2133 = icmp ne i1 %.1844, true
  br i1 %.2133, label %.L_x_4_split_0x1440_conditionalExpr_0x1460, label %.L_x_4_split_0x1470

.L_x_4_split_0x1440_conditionalExpr_0x1460:       ; preds = %.L_x_4_split_0x1440
  %.2136 = load float, ptr %R5, align 4
  %.2137 = load float, ptr %R8, align 4
  %fmul.58 = fmul float %.2136, %.2137
  %fadd.64 = fadd float %fmul.58, 0xBFD5553DA0000000
  %.2138 = bitcast ptr %R8 to ptr
  store float %fadd.64, ptr %.2138, align 4
  br label %.L_x_4_split_0x1470

.L_x_4_split_0x1470:                              ; preds = %.L_x_4_split_0x1440_conditionalExpr_0x1460, %.L_x_4_split_0x1440
  %.2144 = icmp eq i1 %.1844, true
  br i1 %.2144, label %.L_x_4_split_0x1470_conditionalExpr_0x1470, label %.L_x_4_split_0x1480

.L_x_4_split_0x1470_conditionalExpr_0x1470:       ; preds = %.L_x_4_split_0x1470
  %.2147 = load i32, ptr %R13, align 4
  %.2148 = load i32, ptr %R0, align 4
  %.2150 = or i32 %.2147, -2147483648
  %.2151 = or i32 %.2147, %.2148
  %.2152 = and i32 %.2150, %.2151
  store i32 %.2152, ptr %R10, align 4
  br label %.L_x_4_split_0x1480

.L_x_4_split_0x1480:                              ; preds = %.L_x_4_split_0x1470_conditionalExpr_0x1470, %.L_x_4_split_0x1470
  %.2158 = icmp ne i1 %.1844, true
  br i1 %.2158, label %.L_x_4_split_0x1480_conditionalExpr_0x1480, label %.L_x_4_split_0x1490

.L_x_4_split_0x1480_conditionalExpr_0x1480:       ; preds = %.L_x_4_split_0x1480
  %.2161 = load float, ptr %R5, align 4
  %.2162 = load float, ptr %R8, align 4
  %fmul.59 = fmul float %.2161, %.2162
  %fadd.65 = fadd float %fmul.59, 0.000000e+00
  %.2163 = bitcast ptr %R7 to ptr
  store float %fadd.65, ptr %.2163, align 4
  br label %.L_x_4_split_0x1490

.L_x_4_split_0x1490:                              ; preds = %.L_x_4_split_0x1480_conditionalExpr_0x1480, %.L_x_4_split_0x1480
  %.2168 = load float, ptr %R2, align 4
  %.2169 = load float, ptr %R3, align 4
  %fmul.60 = fmul float %.2168, %.2169
  %fadd.66 = fadd float %fmul.60, 1.000000e+00
  %.2170 = bitcast ptr %R2 to ptr
  store float %fadd.66, ptr %.2170, align 4
  %zext.160 = zext i32 %imad_add.41 to i64
  %zext.161 = zext i32 0 to i64
  %zext.162 = zext i32 31 to i64
  %shl.87 = shl i64 %zext.160, 32
  %or.73 = or i64 %shl.87, %zext.161
  %ashr.6 = ashr i64 %or.73, %zext.162
  %ashr.7 = ashr i64 %ashr.6, 32
  %trunc32.48 = trunc i64 %ashr.7 to i32
  store i32 %trunc32.48, ptr %R3, align 4
  %.2178 = icmp ne i1 %.1844, true
  br i1 %.2178, label %.L_x_4_split_0x1490_conditionalExpr_0x14b0, label %.L_x_4_split_0x14c0

.L_x_4_split_0x1490_conditionalExpr_0x14b0:       ; preds = %.L_x_4_split_0x1490
  %.2181 = load float, ptr %R7, align 4
  %.2182 = load float, ptr %R0, align 4
  %.2183 = load float, ptr %R0, align 4
  %fmul.61 = fmul float %.2181, %.2182
  %fadd.67 = fadd float %fmul.61, %.2183
  %.2184 = bitcast ptr %R10 to ptr
  store float %fadd.67, ptr %.2184, align 4
  br label %.L_x_4_split_0x14c0

.L_x_4_split_0x14c0:                              ; preds = %.L_x_4_split_0x1490_conditionalExpr_0x14b0, %.L_x_4_split_0x1490
  %.2189 = load float, ptr %R14, align 4
  %.2190 = load float, ptr %R11, align 4
  %fmul.62 = fmul float %.2189, %.2190
  %fadd.68 = fadd float %fmul.62, 1.000000e+00
  %.2191 = bitcast ptr %R5 to ptr
  store float %fadd.68, ptr %.2191, align 4
  %.2195 = icmp eq i1 %.2128, true
  br i1 %.2195, label %.L_x_9, label %.L_x_4_split_0x14e0_CALL_0x1510

.L_x_4_split_0x14e0_CALL_0x1510:                  ; preds = %.L_x_4_split_0x14c0
  store i32 5376, ptr %R14, align 4
  %.2203 = load i32, ptr %R15, align 4
  %zext.163 = zext i32 0 to i64
  %zext.164 = zext i32 %.2203 to i64
  %zext.165 = zext i32 1 to i64
  %shl.88 = shl i64 %zext.163, 32
  %or.74 = or i64 %shl.88, %zext.164
  %shl.89 = shl i64 %or.74, %zext.165
  %and.7 = and i64 %shl.89, 4294967295
  %trunc32.49 = trunc i64 %and.7 to i32
  store i32 %trunc32.49, ptr %R0, align 4
  %.2209 = load i32, ptr %R0, align 4
  %zext.166 = zext i32 %.2209 to i64
  %zext.167 = zext i32 0 to i64
  %zext.168 = zext i32 24 to i64
  %shl.90 = shl i64 %zext.166, 32
  %or.75 = or i64 %shl.90, %zext.167
  %lshr.4 = lshr i64 %or.75, %zext.168
  %lshr.5 = lshr i64 %lshr.4, 32
  %trunc32.50 = trunc i64 %lshr.5 to i32
  store i32 %trunc32.50, ptr %R16, align 4
  %.2212 = load i32, ptr %R16, align 4
  %cmp.9 = icmp ne i32 %.2212, 0
  %.2216 = and i1 %cmp.9, true
  %.2221 = icmp eq i1 %.2216, true
  br i1 %.2221, label %.L_x_21...1, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1": ; preds = %.L_x_4_split_0x14e0_CALL_0x1510
  %.2224 = load i32, ptr %R15, align 4
  %imad_shl.2 = shl i32 %.2224, 2
  %imad_add.46 = add i32 %imad_shl.2, 0
  store i32 %imad_add.46, ptr %R0, align 4
  %.2227 = load i32, ptr %R0, align 4
  %cmp.10 = icmp ne i32 %.2227, 0
  %.2231 = and i1 %cmp.10, true
  %.2236 = icmp eq i1 %.2231, true
  br i1 %.2236, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"
  %.2239 = load float, ptr %R15, align 4
  %fmul.63 = fmul float %.2239, 0x43F0000000000000
  %fadd.69 = fadd float %fmul.63, 0.000000e+00
  %.2240 = bitcast ptr %R8 to ptr
  store float %fadd.69, ptr %.2240, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"
  %.2245 = load float, ptr %R15, align 4
  %fmul.64 = fmul float %.2245, 0x43F0000000000000
  %fadd.70 = fadd float %fmul.64, 0.000000e+00
  %.2246 = bitcast ptr %R8 to ptr
  store float %fadd.70, ptr %.2246, align 4
  %.2252 = icmp ne i1 %.2231, true
  br i1 %.2252, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
  %.2255 = load float, ptr %R15, align 4
  %.2256 = fdiv float 1.000000e+00, %.2255
  %.2257 = bitcast ptr %R0 to ptr
  store float %.2256, ptr %.2257, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
  %.2262 = load float, ptr %R15, align 4
  %.2263 = fdiv float 1.000000e+00, %.2262
  %.2264 = bitcast ptr %R0 to ptr
  store float %.2263, ptr %.2264, align 4
  %.2270 = icmp eq i1 %.2231, true
  br i1 %.2270, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
  %.2273 = load float, ptr %R8, align 4
  %.2274 = fdiv float 1.000000e+00, %.2273
  %.2275 = bitcast ptr %R9 to ptr
  store float %.2274, ptr %.2275, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
  %.2280 = load float, ptr %R8, align 4
  %.2281 = fdiv float 1.000000e+00, %.2280
  %.2282 = bitcast ptr %R9 to ptr
  store float %.2281, ptr %.2282, align 4
  %.2288 = icmp eq i1 %.2231, true
  br i1 %.2288, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
  %.2291 = load float, ptr %R8, align 4
  %.2292 = load float, ptr %R9, align 4
  %fmul.65 = fmul float %.2291, %.2292
  %fadd.71 = fadd float %fmul.65, -1.000000e+00
  %.2293 = bitcast ptr %R11 to ptr
  store float %fadd.71, ptr %.2293, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
  %.2298 = load float, ptr %R8, align 4
  %.2299 = load float, ptr %R9, align 4
  %fmul.66 = fmul float %.2298, %.2299
  %fadd.72 = fadd float %fmul.66, -1.000000e+00
  %.2300 = bitcast ptr %R11 to ptr
  store float %fadd.72, ptr %.2300, align 4
  %.2306 = icmp eq i1 %.2231, true
  br i1 %.2306, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
  %.2309 = load float, ptr %R11, align 4
  %.2310 = fneg float %.2309
  %fadd.73 = fadd float %.2310, 0.000000e+00
  %.2311 = bitcast ptr %R12 to ptr
  store float %fadd.73, ptr %.2311, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
  %.2316 = load float, ptr %R11, align 4
  %.2317 = fneg float %.2316
  %fadd.74 = fadd float %.2317, 0.000000e+00
  %.2318 = bitcast ptr %R12 to ptr
  store float %fadd.74, ptr %.2318, align 4
  %.2324 = icmp eq i1 %.2231, true
  br i1 %.2324, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
  %.2327 = load float, ptr %R9, align 4
  %.2328 = load float, ptr %R12, align 4
  %.2329 = load float, ptr %R9, align 4
  %fmul.67 = fmul float %.2327, %.2328
  %fadd.75 = fadd float %fmul.67, %.2329
  %.2330 = bitcast ptr %R12 to ptr
  store float %fadd.75, ptr %.2330, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
  %.2335 = load float, ptr %R9, align 4
  %.2336 = load float, ptr %R12, align 4
  %.2337 = load float, ptr %R9, align 4
  %fmul.68 = fmul float %.2335, %.2336
  %fadd.76 = fadd float %fmul.68, %.2337
  %.2338 = bitcast ptr %R12 to ptr
  store float %fadd.76, ptr %.2338, align 4
  %.2344 = icmp eq i1 %.2231, true
  br i1 %.2344, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
  %.2347 = load float, ptr %R12, align 4
  %fmul.69 = fmul float %.2347, 0x43F0000000000000
  %fadd.77 = fadd float %fmul.69, 0.000000e+00
  %.2348 = bitcast ptr %R0 to ptr
  store float %fadd.77, ptr %.2348, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
  %.2353 = load float, ptr %R12, align 4
  %fmul.70 = fmul float %.2353, 0x43F0000000000000
  %fadd.78 = fadd float %fmul.70, 0.000000e+00
  %.2354 = bitcast ptr %R0 to ptr
  store float %fadd.78, ptr %.2354, align 4
  br label %.L_x_20...1

.L_x_21...1:                                      ; preds = %.L_x_4_split_0x14e0_CALL_0x1510
  %.2361 = load i32, ptr %R16, align 4
  %.2362 = add i32 %.2361, -253
  %.2363 = add i32 %.2362, 0
  store i32 %.2363, ptr %R18, align 4
  %.2366 = load i32, ptr %R18, align 4
  %cmp.11 = icmp sgt i32 %.2366, 1
  %.2370 = and i1 %cmp.11, true
  %.2375 = icmp eq i1 %.2370, true
  br i1 %.2375, label %.L_x_23...1, label %.L_x_21_split_0x1a90...1

.L_x_21_split_0x1a90...1:                         ; preds = %.L_x_21...1
  %.2378 = load i32, ptr %R15, align 4
  %.2380 = and i32 %.2378, 8388607
  store i32 %.2380, ptr %R0, align 4
  store i32 3, ptr %R13, align 4
  %.2385 = load i32, ptr %R0, align 4
  %.2387 = or i32 %.2385, 1065353216
  store i32 %.2387, ptr %R0, align 4
  %.2392 = load i32, ptr %R13, align 4
  %.2393 = load i32, ptr %R18, align 4
  %zext.169 = zext i32 0 to i64
  %zext.170 = zext i32 %.2392 to i64
  %zext.171 = zext i32 %.2393 to i64
  %shl.91 = shl i64 %zext.169, 32
  %or.76 = or i64 %shl.91, %zext.170
  %shl.92 = shl i64 %or.76, %zext.171
  %and.8 = and i64 %shl.92, 4294967295
  %trunc32.51 = trunc i64 %and.8 to i32
  store i32 %trunc32.51, ptr %R13, align 4
  %.2396 = load i32, ptr %R0, align 4
  %sint_to_f32 = sitofp i32 %.2396 to float
  %.2397 = fdiv float 1.000000e+00, %sint_to_f32
  %.2398 = fptosi float %.2397 to i32
  store i32 %.2398, ptr %R9, align 4
  %.2401 = load float, ptr %R0, align 4
  %.2402 = load float, ptr %R9, align 4
  %fmul.71 = fmul float %.2401, %.2402
  %fadd.79 = fadd float %fmul.71, -1.000000e+00
  %.2403 = bitcast ptr %R8 to ptr
  store float %fadd.79, ptr %.2403, align 4
  %.2406 = load float, ptr %R8, align 4
  %.2407 = fneg float %.2406
  %fadd.80 = fadd float %.2407, 0.000000e+00
  %.2408 = bitcast ptr %R8 to ptr
  store float %fadd.80, ptr %.2408, align 4
  %.2411 = load float, ptr %R9, align 4
  %.2412 = load float, ptr %R8, align 4
  %.2413 = load float, ptr %R9, align 4
  %fmul.72 = fmul float %.2411, %.2412
  %fadd.81 = fadd float %fmul.72, %.2413
  %.2414 = bitcast ptr %R11 to ptr
  store float %fadd.81, ptr %.2414, align 4
  %.2417 = load float, ptr %R9, align 4
  %.2418 = load float, ptr %R8, align 4
  %.2419 = load float, ptr %R9, align 4
  %fmul.73 = fmul float %.2417, %.2418
  %fadd.82 = fadd float %fmul.73, %.2419
  %.2420 = bitcast ptr %R12 to ptr
  store float %fadd.82, ptr %.2420, align 4
  %.2423 = load i32, ptr %R11, align 4
  %.2425 = and i32 %.2423, 8388607
  store i32 %.2425, ptr %R8, align 4
  %.2428 = load float, ptr %R11, align 4
  %.2429 = load float, ptr %R12, align 4
  %fcmp_ordered = fcmp une float %.2428, %.2429
  %.2433 = and i1 %fcmp_ordered, true
  %.2437 = load i32, ptr %R8, align 4
  %.2439 = or i32 %.2437, 8388608
  store i32 %.2439, ptr %R8, align 4
  %.2443 = xor i1 %.2433, true
  %.2444 = icmp eq i1 %.2443, true
  %sel = select i1 %.2444, i32 0, i32 -1
  store i32 %sel, ptr %R9, align 4
  %.2447 = load i32, ptr %R13, align 4
  %.2448 = load i32, ptr %R8, align 4
  %.2450 = and i32 %.2447, %.2448
  store i32 %.2450, ptr %R13, align 4
  %.2453 = load i32, ptr %R9, align 4
  %.2454 = sub i32 0, %.2453
  %imad_mul.44 = mul i32 0, 0
  %imad_add.47 = add i32 %imad_mul.44, %.2454
  store i32 %imad_add.47, ptr %R9, align 4
  %.2459 = load i32, ptr %R13, align 4
  %.2460 = load i32, ptr %R18, align 4
  %zext.172 = zext i32 %.2459 to i64
  %zext.173 = zext i32 0 to i64
  %zext.174 = zext i32 %.2460 to i64
  %shl.93 = shl i64 %zext.172, 32
  %or.77 = or i64 %shl.93, %zext.173
  %lshr.6 = lshr i64 %or.77, %zext.174
  %lshr.7 = lshr i64 %lshr.6, 32
  %trunc32.52 = trunc i64 %lshr.7 to i32
  store i32 %trunc32.52, ptr %R13, align 4
  %.2474 = load i32, ptr %R13, align 4
  %.2476 = and i32 %.2474, 1
  %.2478 = icmp ne i32 %.2476, 0
  %.2488 = load i32, ptr %R16, align 4
  %.2489 = add i32 %.2488, -252
  %.2490 = add i32 %.2489, 0
  store i32 %.2490, ptr %R9, align 4
  %.2498 = load i32, ptr %R15, align 4
  %.2500 = and i32 %.2498, 8388607
  %.2502 = icmp ne i32 %.2500, 0
  %.2506 = xor i1 %.2478, true
  %.2507 = icmp eq i1 %.2506, true
  %sel.1 = select i1 %.2507, i32 0, i32 1
  store i32 %sel.1, ptr %R0, align 4
  %.2510 = load i32, ptr %R0, align 4
  %.2511 = sub i32 0, %.2510
  %.2512 = add i32 %.2511, 0
  %.2513 = add i32 %.2512, 0
  store i32 %.2513, ptr %R0, align 4
  %.2516 = load i32, ptr %R0, align 4
  %cmp.12 = icmp sge i32 %.2516, 0
  %.2520 = and i1 %cmp.12, true
  %.2526 = load i32, ptr %R8, align 4
  %.2527 = load i32, ptr %R9, align 4
  %zext.175 = zext i32 %.2526 to i64
  %zext.176 = zext i32 0 to i64
  %zext.177 = zext i32 %.2527 to i64
  %shl.94 = shl i64 %zext.175, 32
  %or.78 = or i64 %shl.94, %zext.176
  %lshr.8 = lshr i64 %or.78, %zext.177
  %lshr.9 = lshr i64 %lshr.8, 32
  %trunc32.53 = trunc i64 %lshr.9 to i32
  store i32 %trunc32.53, ptr %R0, align 4
  %.2531 = icmp ne i1 %.2520, true
  br i1 %.2531, label %.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30, label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1

.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30:  ; preds = %.L_x_21_split_0x1a90...1
  %.2534 = load i32, ptr %R0, align 4
  %.2535 = add i32 %.2534, 1
  %.2536 = add i32 %.2535, 0
  store i32 %.2536, ptr %R0, align 4
  br label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1

.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1:  ; preds = %.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30, %.L_x_21_split_0x1a90...1
  %.2541 = load i32, ptr %R0, align 4
  %.2542 = add i32 %.2541, 1
  %.2543 = add i32 %.2542, 0
  store i32 %.2543, ptr %R0, align 4
  %.2549 = icmp ne i1 %.2502, true
  br i1 %.2549, label %.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40, label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1

.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40:  ; preds = %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1
  %.2552 = load i32, ptr %R0, align 4
  %imad_shl.3 = shl i32 %.2552, 2
  %imad_add.48 = add i32 %imad_shl.3, 0
  store i32 %imad_add.48, ptr %R0, align 4
  br label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1

.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1:  ; preds = %.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40, %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1
  %.2557 = load i32, ptr %R0, align 4
  %imad_shl.4 = shl i32 %.2557, 2
  %imad_add.49 = add i32 %imad_shl.4, 0
  store i32 %imad_add.49, ptr %R0, align 4
  %.2562 = load i32, ptr %R0, align 4
  %.2563 = load i32, ptr %R15, align 4
  %.2565 = or i32 %.2562, -2147483648
  %.2566 = or i32 %.2562, %.2563
  %.2567 = and i32 %.2565, %.2566
  store i32 %.2567, ptr %R0, align 4
  br label %.L_x_20...1

.L_x_23...1:                                      ; preds = %.L_x_21...1
  %.2572 = load float, ptr %R15, align 4
  %.2573 = fdiv float 1.000000e+00, %.2572
  %.2574 = bitcast ptr %R0 to ptr
  store float %.2573, ptr %.2574, align 4
  br label %.L_x_20...1

.L_x_20...1:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1", %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1, %.L_x_23...1
  %.2580 = load i32, ptr %R14, align 4
  store i32 %.2580, ptr %R8, align 4
  %imad_mul.45 = mul i32 0, 0
  %imad_add.50 = add i32 %imad_mul.45, 0
  store i32 %imad_add.50, ptr %R9, align 4
  %.2590 = load i32, ptr %R0, align 4
  %imad_mul.46 = mul i32 0, 0
  %imad_add.51 = add i32 %imad_mul.46, %.2590
  store i32 %imad_add.51, ptr %R7, align 4
  br label %.L_x_8

.L_x_9:                                           ; preds = %.L_x_4_split_0x14c0
  %.2595 = load float, ptr %R15, align 4
  %.2596 = fdiv float 1.000000e+00, %.2595
  %.2597 = bitcast ptr %R7 to ptr
  store float %.2596, ptr %.2597, align 4
  %.2600 = load float, ptr %R15, align 4
  %.2601 = load float, ptr %R7, align 4
  %fmul.74 = fmul float %.2600, %.2601
  %fadd.83 = fadd float %fmul.74, -1.000000e+00
  %.2602 = bitcast ptr %R0 to ptr
  store float %fadd.83, ptr %.2602, align 4
  %.2605 = load float, ptr %R0, align 4
  %.2606 = fneg float %.2605
  %fadd.84 = fadd float %.2606, 0.000000e+00
  %.2607 = bitcast ptr %R0 to ptr
  store float %fadd.84, ptr %.2607, align 4
  %.2610 = load float, ptr %R7, align 4
  %.2611 = load float, ptr %R0, align 4
  %.2612 = load float, ptr %R7, align 4
  %fmul.75 = fmul float %.2610, %.2611
  %fadd.85 = fadd float %fmul.75, %.2612
  %.2613 = bitcast ptr %R7 to ptr
  store float %fadd.85, ptr %.2613, align 4
  br label %.L_x_8

.L_x_8:                                           ; preds = %.L_x_20...1, %.L_x_9
  %.2619 = load i32, ptr %R2, align 4
  %.2620 = add i32 %.2619, 25165824
  %.2621 = add i32 %.2620, 0
  store i32 %.2621, ptr %R0, align 4
  %.2626 = load float, ptr %R4, align 4
  %.2627 = load float, ptr %R7, align 4
  %fmul.76 = fmul float %.2626, %.2627
  %.2628 = bitcast ptr %R4 to ptr
  store float %fmul.76, ptr %.2628, align 4
  %.2631 = load i32, ptr %R0, align 4
  %.2633 = and i32 %.2631, 2139095040
  store i32 %.2633, ptr %R0, align 4
  %.2636 = load i32, ptr %R0, align 4
  %cmp.13 = icmp sgt i32 %.2636, 33554431
  %.2640 = and i1 %cmp.13, true
  %.2645 = icmp eq i1 %.2640, true
  br i1 %.2645, label %.L_x_12, label %.L_x_8_split_0x15e0_CALL_0x1620

.L_x_8_split_0x15e0_CALL_0x1620:                  ; preds = %.L_x_8
  %.2648 = load float, ptr %R2, align 4
  %.2649 = bitcast ptr %R15 to ptr
  store float %.2648, ptr %.2649, align 4
  store i32 5648, ptr %R14, align 4
  %.2657 = load i32, ptr %R15, align 4
  %zext.178 = zext i32 0 to i64
  %zext.179 = zext i32 %.2657 to i64
  %zext.180 = zext i32 1 to i64
  %shl.95 = shl i64 %zext.178, 32
  %or.79 = or i64 %shl.95, %zext.179
  %shl.96 = shl i64 %or.79, %zext.180
  %and.9 = and i64 %shl.96, 4294967295
  %trunc32.54 = trunc i64 %and.9 to i32
  store i32 %trunc32.54, ptr %R0, align 4
  %.2663 = load i32, ptr %R0, align 4
  %zext.181 = zext i32 %.2663 to i64
  %zext.182 = zext i32 0 to i64
  %zext.183 = zext i32 24 to i64
  %shl.97 = shl i64 %zext.181, 32
  %or.80 = or i64 %shl.97, %zext.182
  %lshr.10 = lshr i64 %or.80, %zext.183
  %lshr.11 = lshr i64 %lshr.10, 32
  %trunc32.55 = trunc i64 %lshr.11 to i32
  store i32 %trunc32.55, ptr %R16, align 4
  %.2666 = load i32, ptr %R16, align 4
  %cmp.14 = icmp ne i32 %.2666, 0
  %.2670 = and i1 %cmp.14, true
  %.2675 = icmp eq i1 %.2670, true
  br i1 %.2675, label %.L_x_21...2, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2": ; preds = %.L_x_8_split_0x15e0_CALL_0x1620
  %.2678 = load i32, ptr %R15, align 4
  %imad_shl.5 = shl i32 %.2678, 2
  %imad_add.52 = add i32 %imad_shl.5, 0
  store i32 %imad_add.52, ptr %R0, align 4
  %.2681 = load i32, ptr %R0, align 4
  %cmp.15 = icmp ne i32 %.2681, 0
  %.2685 = and i1 %cmp.15, true
  %.2690 = icmp eq i1 %.2685, true
  br i1 %.2690, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"
  %.2693 = load float, ptr %R15, align 4
  %fmul.77 = fmul float %.2693, 0x43F0000000000000
  %fadd.86 = fadd float %fmul.77, 0.000000e+00
  %.2694 = bitcast ptr %R8 to ptr
  store float %fadd.86, ptr %.2694, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"
  %.2699 = load float, ptr %R15, align 4
  %fmul.78 = fmul float %.2699, 0x43F0000000000000
  %fadd.87 = fadd float %fmul.78, 0.000000e+00
  %.2700 = bitcast ptr %R8 to ptr
  store float %fadd.87, ptr %.2700, align 4
  %.2706 = icmp ne i1 %.2685, true
  br i1 %.2706, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"
  %.2709 = load i32, ptr %R15, align 4
  %sint_to_f32.1 = sitofp i32 %.2709 to float
  %.2710 = fdiv float 1.000000e+00, %sint_to_f32.1
  %.2711 = fptosi float %.2710 to i32
  store i32 %.2711, ptr %R0, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"
  %.2716 = load i32, ptr %R15, align 4
  %sint_to_f32.2 = sitofp i32 %.2716 to float
  %.2717 = fdiv float 1.000000e+00, %sint_to_f32.2
  %.2718 = fptosi float %.2717 to i32
  store i32 %.2718, ptr %R0, align 4
  %.2724 = icmp eq i1 %.2685, true
  br i1 %.2724, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
  %.2727 = load float, ptr %R8, align 4
  %.2728 = fdiv float 1.000000e+00, %.2727
  %.2729 = bitcast ptr %R9 to ptr
  store float %.2728, ptr %.2729, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
  %.2734 = load float, ptr %R8, align 4
  %.2735 = fdiv float 1.000000e+00, %.2734
  %.2736 = bitcast ptr %R9 to ptr
  store float %.2735, ptr %.2736, align 4
  %.2742 = icmp eq i1 %.2685, true
  br i1 %.2742, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
  %.2745 = load float, ptr %R8, align 4
  %.2746 = load float, ptr %R9, align 4
  %fmul.79 = fmul float %.2745, %.2746
  %fadd.88 = fadd float %fmul.79, -1.000000e+00
  %.2747 = bitcast ptr %R11 to ptr
  store float %fadd.88, ptr %.2747, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
  %.2752 = load float, ptr %R8, align 4
  %.2753 = load float, ptr %R9, align 4
  %fmul.80 = fmul float %.2752, %.2753
  %fadd.89 = fadd float %fmul.80, -1.000000e+00
  %.2754 = bitcast ptr %R11 to ptr
  store float %fadd.89, ptr %.2754, align 4
  %.2760 = icmp eq i1 %.2685, true
  br i1 %.2760, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
  %.2763 = load float, ptr %R11, align 4
  %.2764 = fneg float %.2763
  %fadd.90 = fadd float %.2764, 0.000000e+00
  %.2765 = bitcast ptr %R12 to ptr
  store float %fadd.90, ptr %.2765, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
  %.2770 = load float, ptr %R11, align 4
  %.2771 = fneg float %.2770
  %fadd.91 = fadd float %.2771, 0.000000e+00
  %.2772 = bitcast ptr %R12 to ptr
  store float %fadd.91, ptr %.2772, align 4
  %.2778 = icmp eq i1 %.2685, true
  br i1 %.2778, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
  %.2781 = load float, ptr %R9, align 4
  %.2782 = load float, ptr %R12, align 4
  %.2783 = load float, ptr %R9, align 4
  %fmul.81 = fmul float %.2781, %.2782
  %fadd.92 = fadd float %fmul.81, %.2783
  %.2784 = bitcast ptr %R12 to ptr
  store float %fadd.92, ptr %.2784, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
  %.2789 = load float, ptr %R9, align 4
  %.2790 = load float, ptr %R12, align 4
  %.2791 = load float, ptr %R9, align 4
  %fmul.82 = fmul float %.2789, %.2790
  %fadd.93 = fadd float %fmul.82, %.2791
  %.2792 = bitcast ptr %R12 to ptr
  store float %fadd.93, ptr %.2792, align 4
  %.2798 = icmp eq i1 %.2685, true
  br i1 %.2798, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
  %.2801 = load float, ptr %R12, align 4
  %fmul.83 = fmul float %.2801, 0x43F0000000000000
  %fadd.94 = fadd float %fmul.83, 0.000000e+00
  %.2802 = bitcast ptr %R0 to ptr
  store float %fadd.94, ptr %.2802, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
  %.2807 = load float, ptr %R12, align 4
  %fmul.84 = fmul float %.2807, 0x43F0000000000000
  %fadd.95 = fadd float %fmul.84, 0.000000e+00
  %.2808 = bitcast ptr %R0 to ptr
  store float %fadd.95, ptr %.2808, align 4
  br label %.L_x_20...2

.L_x_21...2:                                      ; preds = %.L_x_8_split_0x15e0_CALL_0x1620
  %.2815 = load i32, ptr %R16, align 4
  %.2816 = add i32 %.2815, -253
  %.2817 = add i32 %.2816, 0
  store i32 %.2817, ptr %R18, align 4
  %.2820 = load i32, ptr %R18, align 4
  %cmp.16 = icmp sgt i32 %.2820, 1
  %.2824 = and i1 %cmp.16, true
  %.2829 = icmp eq i1 %.2824, true
  br i1 %.2829, label %.L_x_23...2, label %.L_x_21_split_0x1a90...2

.L_x_21_split_0x1a90...2:                         ; preds = %.L_x_21...2
  %.2832 = load i32, ptr %R15, align 4
  %.2834 = and i32 %.2832, 8388607
  store i32 %.2834, ptr %R0, align 4
  store i32 3, ptr %R13, align 4
  %.2839 = load i32, ptr %R0, align 4
  %.2841 = or i32 %.2839, 1065353216
  store i32 %.2841, ptr %R0, align 4
  %.2846 = load i32, ptr %R13, align 4
  %.2847 = load i32, ptr %R18, align 4
  %zext.184 = zext i32 0 to i64
  %zext.185 = zext i32 %.2846 to i64
  %zext.186 = zext i32 %.2847 to i64
  %shl.98 = shl i64 %zext.184, 32
  %or.81 = or i64 %shl.98, %zext.185
  %shl.99 = shl i64 %or.81, %zext.186
  %and.10 = and i64 %shl.99, 4294967295
  %trunc32.56 = trunc i64 %and.10 to i32
  store i32 %trunc32.56, ptr %R13, align 4
  %.2850 = load i32, ptr %R0, align 4
  %sint_to_f32.3 = sitofp i32 %.2850 to float
  %.2851 = fdiv float 1.000000e+00, %sint_to_f32.3
  %.2852 = fptosi float %.2851 to i32
  store i32 %.2852, ptr %R9, align 4
  %.2855 = load float, ptr %R0, align 4
  %.2856 = load float, ptr %R9, align 4
  %fmul.85 = fmul float %.2855, %.2856
  %fadd.96 = fadd float %fmul.85, -1.000000e+00
  %.2857 = bitcast ptr %R8 to ptr
  store float %fadd.96, ptr %.2857, align 4
  %.2860 = load float, ptr %R8, align 4
  %.2861 = fneg float %.2860
  %fadd.97 = fadd float %.2861, 0.000000e+00
  %.2862 = bitcast ptr %R8 to ptr
  store float %fadd.97, ptr %.2862, align 4
  %.2865 = load float, ptr %R9, align 4
  %.2866 = load float, ptr %R8, align 4
  %.2867 = load float, ptr %R9, align 4
  %fmul.86 = fmul float %.2865, %.2866
  %fadd.98 = fadd float %fmul.86, %.2867
  %.2868 = bitcast ptr %R11 to ptr
  store float %fadd.98, ptr %.2868, align 4
  %.2871 = load float, ptr %R9, align 4
  %.2872 = load float, ptr %R8, align 4
  %.2873 = load float, ptr %R9, align 4
  %fmul.87 = fmul float %.2871, %.2872
  %fadd.99 = fadd float %fmul.87, %.2873
  %.2874 = bitcast ptr %R12 to ptr
  store float %fadd.99, ptr %.2874, align 4
  %.2877 = load i32, ptr %R11, align 4
  %.2879 = and i32 %.2877, 8388607
  store i32 %.2879, ptr %R8, align 4
  %.2882 = load float, ptr %R11, align 4
  %.2883 = load float, ptr %R12, align 4
  %fcmp_ordered.1 = fcmp une float %.2882, %.2883
  %.2887 = and i1 %fcmp_ordered.1, true
  %.2891 = load i32, ptr %R8, align 4
  %.2893 = or i32 %.2891, 8388608
  store i32 %.2893, ptr %R8, align 4
  %.2897 = xor i1 %.2887, true
  %.2898 = icmp eq i1 %.2897, true
  %sel.2 = select i1 %.2898, i32 0, i32 -1
  store i32 %sel.2, ptr %R9, align 4
  %.2901 = load i32, ptr %R13, align 4
  %.2902 = load i32, ptr %R8, align 4
  %.2904 = and i32 %.2901, %.2902
  store i32 %.2904, ptr %R13, align 4
  %.2907 = load i32, ptr %R9, align 4
  %.2908 = sub i32 0, %.2907
  %imad_mul.47 = mul i32 0, 0
  %imad_add.53 = add i32 %imad_mul.47, %.2908
  store i32 %imad_add.53, ptr %R9, align 4
  %.2913 = load i32, ptr %R13, align 4
  %.2914 = load i32, ptr %R18, align 4
  %zext.187 = zext i32 %.2913 to i64
  %zext.188 = zext i32 0 to i64
  %zext.189 = zext i32 %.2914 to i64
  %shl.100 = shl i64 %zext.187, 32
  %or.82 = or i64 %shl.100, %zext.188
  %lshr.12 = lshr i64 %or.82, %zext.189
  %lshr.13 = lshr i64 %lshr.12, 32
  %trunc32.57 = trunc i64 %lshr.13 to i32
  store i32 %trunc32.57, ptr %R13, align 4
  %.2928 = load i32, ptr %R13, align 4
  %.2930 = and i32 %.2928, 1
  %.2932 = icmp ne i32 %.2930, 0
  %.2942 = load i32, ptr %R16, align 4
  %.2943 = add i32 %.2942, -252
  %.2944 = add i32 %.2943, 0
  store i32 %.2944, ptr %R9, align 4
  %.2952 = load i32, ptr %R15, align 4
  %.2954 = and i32 %.2952, 8388607
  %.2956 = icmp ne i32 %.2954, 0
  %.2960 = xor i1 %.2932, true
  %.2961 = icmp eq i1 %.2960, true
  %sel.3 = select i1 %.2961, i32 0, i32 1
  store i32 %sel.3, ptr %R0, align 4
  %.2964 = load i32, ptr %R0, align 4
  %.2965 = sub i32 0, %.2964
  %.2966 = add i32 %.2965, 0
  %.2967 = add i32 %.2966, 0
  store i32 %.2967, ptr %R0, align 4
  %.2970 = load i32, ptr %R0, align 4
  %cmp.17 = icmp sge i32 %.2970, 0
  %.2974 = and i1 %cmp.17, true
  %.2980 = load i32, ptr %R8, align 4
  %.2981 = load i32, ptr %R9, align 4
  %zext.190 = zext i32 %.2980 to i64
  %zext.191 = zext i32 0 to i64
  %zext.192 = zext i32 %.2981 to i64
  %shl.101 = shl i64 %zext.190, 32
  %or.83 = or i64 %shl.101, %zext.191
  %lshr.14 = lshr i64 %or.83, %zext.192
  %lshr.15 = lshr i64 %lshr.14, 32
  %trunc32.58 = trunc i64 %lshr.15 to i32
  store i32 %trunc32.58, ptr %R0, align 4
  %.2985 = icmp ne i1 %.2974, true
  br i1 %.2985, label %.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30, label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2

.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30:  ; preds = %.L_x_21_split_0x1a90...2
  %.2988 = load i32, ptr %R0, align 4
  %.2989 = add i32 %.2988, 1
  %.2990 = add i32 %.2989, 0
  store i32 %.2990, ptr %R0, align 4
  br label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2

.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2:  ; preds = %.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30, %.L_x_21_split_0x1a90...2
  %.2995 = load i32, ptr %R0, align 4
  %.2996 = add i32 %.2995, 1
  %.2997 = add i32 %.2996, 0
  store i32 %.2997, ptr %R0, align 4
  %.3003 = icmp ne i1 %.2956, true
  br i1 %.3003, label %.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40, label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2

.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40:  ; preds = %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2
  %.3006 = load i32, ptr %R0, align 4
  %imad_shl.6 = shl i32 %.3006, 2
  %imad_add.54 = add i32 %imad_shl.6, 0
  store i32 %imad_add.54, ptr %R0, align 4
  br label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2

.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2:  ; preds = %.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40, %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2
  %.3011 = load i32, ptr %R0, align 4
  %imad_shl.7 = shl i32 %.3011, 2
  %imad_add.55 = add i32 %imad_shl.7, 0
  store i32 %imad_add.55, ptr %R0, align 4
  %.3016 = load i32, ptr %R0, align 4
  %.3017 = load i32, ptr %R15, align 4
  %.3019 = or i32 %.3016, -2147483648
  %.3020 = or i32 %.3016, %.3017
  %.3021 = and i32 %.3019, %.3020
  store i32 %.3021, ptr %R0, align 4
  br label %.L_x_20...2

.L_x_23...2:                                      ; preds = %.L_x_21...2
  %.3026 = load i32, ptr %R15, align 4
  %sint_to_f32.4 = sitofp i32 %.3026 to float
  %.3027 = fdiv float 1.000000e+00, %sint_to_f32.4
  %.3028 = fptosi float %.3027 to i32
  store i32 %.3028, ptr %R0, align 4
  br label %.L_x_20...2

.L_x_20...2:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2", %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2, %.L_x_23...2
  %.3034 = load i32, ptr %R14, align 4
  store i32 %.3034, ptr %R8, align 4
  %imad_mul.48 = mul i32 0, 0
  %imad_add.56 = add i32 %imad_mul.48, 0
  store i32 %imad_add.56, ptr %R9, align 4
  %.3044 = load i32, ptr %R0, align 4
  %imad_mul.49 = mul i32 0, 0
  %imad_add.57 = add i32 %imad_mul.49, %.3044
  store i32 %imad_add.57, ptr %R7, align 4
  br label %.L_x_11

.L_x_12:                                          ; preds = %.L_x_8
  %.3049 = load float, ptr %R2, align 4
  %.3050 = fdiv float 1.000000e+00, %.3049
  %.3051 = bitcast ptr %R7 to ptr
  store float %.3050, ptr %.3051, align 4
  %.3054 = load float, ptr %R2, align 4
  %.3055 = load float, ptr %R7, align 4
  %fmul.88 = fmul float %.3054, %.3055
  %fadd.100 = fadd float %fmul.88, -1.000000e+00
  %.3056 = bitcast ptr %R0 to ptr
  store float %fadd.100, ptr %.3056, align 4
  %.3059 = load float, ptr %R0, align 4
  %.3060 = fneg float %.3059
  %fadd.101 = fadd float %.3060, 0.000000e+00
  %.3061 = bitcast ptr %R0 to ptr
  store float %fadd.101, ptr %.3061, align 4
  %.3064 = load float, ptr %R7, align 4
  %.3065 = load float, ptr %R0, align 4
  %.3066 = load float, ptr %R7, align 4
  %fmul.89 = fmul float %.3064, %.3065
  %fadd.102 = fadd float %fmul.89, %.3066
  %.3067 = bitcast ptr %R7 to ptr
  store float %fadd.102, ptr %.3067, align 4
  br label %.L_x_11

.L_x_11:                                          ; preds = %.L_x_20...2, %.L_x_12
  %.3073 = load float, ptr %R7, align 4
  %.3074 = load float, ptr %R10, align 4
  %.3075 = load float, ptr %R4, align 4
  %fmul.90 = fmul float %.3073, %.3074
  %fadd.103 = fadd float %fmul.90, %.3075
  %.3076 = bitcast ptr %R9 to ptr
  store float %fadd.103, ptr %.3076, align 4
  %.3081 = load float, ptr %R9, align 4
  %llvm_fabs_result.3 = call float @llvm.fabs.f32(float %.3081)
  %fcmp_unordered.2 = fcmp oge float %llvm_fabs_result.3, 0x3FE3333340000000
  %.3085 = and i1 %fcmp_unordered.2, true
  %.3090 = icmp ne i1 %.3085, true
  br i1 %.3090, label %.L_x_15, label %.L_x_11_split_0x16d0

.L_x_11_split_0x16d0:                             ; preds = %.L_x_11
  %.3093 = load float, ptr %R9, align 4
  %llvm_fabs_result.4 = call float @llvm.fabs.f32(float %.3093)
  %fmul.91 = fmul float %llvm_fabs_result.4, 0x4007154760000000
  %.3094 = bitcast ptr %R0 to ptr
  store float %fmul.91, ptr %.3094, align 4
  %.3097 = bitcast ptr %R7 to ptr
  store float 0x41CFC00000000000, ptr %.3097, align 4
  %.3100 = load float, ptr %R9, align 4
  %llvm_fabs_result.5 = call float @llvm.fabs.f32(float %.3100)
  %fcmp_unordered.3 = fcmp oge float %llvm_fabs_result.5, 0x4022059680000000
  %.3104 = and i1 %fcmp_unordered.3, true
  %.3108 = load float, ptr %R0, align 4
  %llvm_exp2_f32_result.4 = call float @llvm.exp2.f32(float %.3108)
  %.3109 = bitcast ptr %R0 to ptr
  store float %llvm_exp2_f32_result.4, ptr %.3109, align 4
  %.3112 = load float, ptr %R0, align 4
  %fadd.104 = fadd float %.3112, 1.000000e+00
  %.3113 = bitcast ptr %R2 to ptr
  store float %fadd.104, ptr %.3113, align 4
  %.3116 = load float, ptr %R2, align 4
  %.3117 = fdiv float 1.000000e+00, %.3116
  %.3118 = bitcast ptr %R2 to ptr
  store float %.3117, ptr %.3118, align 4
  %.3121 = load float, ptr %R2, align 4
  %.3122 = load float, ptr %R7, align 4
  %fmul.92 = fmul float %.3121, -2.000000e+00
  %fadd.105 = fadd float %fmul.92, %.3122
  %.3123 = bitcast ptr %R4 to ptr
  store float %fadd.105, ptr %.3123, align 4
  %.3126 = load float, ptr %R4, align 4
  %.3128 = xor i1 %.3104, true
  %.3129 = icmp eq i1 %.3128, true
  %fsel.1 = select i1 %.3129, float %.3126, float 1.000000e+00
  %.3130 = bitcast ptr %R4 to ptr
  store float %fsel.1, ptr %.3130, align 4
  %.3133 = load i32, ptr %R4, align 4
  %.3134 = load i32, ptr %R9, align 4
  %.3136 = or i32 %.3133, -2147483648
  %.3137 = or i32 %.3133, %.3134
  %.3138 = and i32 %.3136, %.3137
  store i32 %.3138, ptr %R7, align 4
  br label %.L_x_14

.L_x_15:                                          ; preds = %.L_x_11
  %imad_mul.50 = mul i32 0, 0
  %imad_add.58 = add i32 %imad_mul.50, 1015083138
  store i32 %imad_add.58, ptr %R7, align 4
  %.3145 = load float, ptr %R9, align 4
  %.3146 = load float, ptr %R9, align 4
  %fmul.93 = fmul float %.3145, %.3146
  %.3147 = bitcast ptr %R0 to ptr
  store float %fmul.93, ptr %.3147, align 4
  %.3150 = load float, ptr %R0, align 4
  %.3151 = load float, ptr %R7, align 4
  %fmul.94 = fmul float %.3150, %.3151
  %fadd.106 = fadd float %fmul.94, 0xBFAAC795C0000000
  %.3152 = bitcast ptr %R7 to ptr
  store float %fadd.106, ptr %.3152, align 4
  %.3155 = load float, ptr %R0, align 4
  %.3156 = load float, ptr %R7, align 4
  %fmul.95 = fmul float %.3155, %.3156
  %fadd.107 = fadd float %fmul.95, 0x3FC10B2820000000
  %.3157 = bitcast ptr %R7 to ptr
  store float %fadd.107, ptr %.3157, align 4
  %.3160 = load float, ptr %R0, align 4
  %.3161 = load float, ptr %R7, align 4
  %fmul.96 = fmul float %.3160, %.3161
  %fadd.108 = fadd float %fmul.96, 0xBFD5553DA0000000
  %.3162 = bitcast ptr %R7 to ptr
  store float %fadd.108, ptr %.3162, align 4
  %.3165 = load float, ptr %R0, align 4
  %.3166 = load float, ptr %R7, align 4
  %fmul.97 = fmul float %.3165, %.3166
  %fadd.109 = fadd float %fmul.97, 0.000000e+00
  %.3167 = bitcast ptr %R7 to ptr
  store float %fadd.109, ptr %.3167, align 4
  %.3170 = load float, ptr %R9, align 4
  %.3171 = load float, ptr %R7, align 4
  %.3172 = load float, ptr %R9, align 4
  %fmul.98 = fmul float %.3170, %.3171
  %fadd.110 = fadd float %fmul.98, %.3172
  %.3173 = bitcast ptr %R7 to ptr
  store float %fadd.110, ptr %.3173, align 4
  br label %.L_x_14

.L_x_14:                                          ; preds = %.L_x_11_split_0x16d0, %.L_x_15
  %.3179 = load i32, ptr %R5, align 4
  %.3180 = add i32 %.3179, 25165824
  %.3181 = add i32 %.3180, 0
  store i32 %.3181, ptr %R0, align 4
  %.3191 = load i32, ptr %R3, align 4
  %zext.193 = zext i32 %.3191 to i64
  %zext.194 = zext i32 %imad_add.41 to i64
  %zext.195 = zext i32 2 to i64
  %shl.102 = shl i64 %zext.193, 32
  %or.84 = or i64 %shl.102, %zext.194
  %shl.103 = shl i64 %or.84, %zext.195
  %lshr.16 = lshr i64 %shl.103, 32
  %trunc32.61 = trunc i64 %lshr.16 to i32
  store i32 %trunc32.61, ptr %R3, align 4
  %.3196 = load i32, ptr %R0, align 4
  %.3198 = and i32 %.3196, 2139095040
  store i32 %.3198, ptr %R0, align 4
  %zext.196 = zext i32 0 to i64
  %zext.197 = zext i32 %imad_add.41 to i64
  %zext.198 = zext i32 2 to i64
  %shl.104 = shl i64 %zext.196, 32
  %or.85 = or i64 %shl.104, %zext.197
  %shl.105 = shl i64 %or.85, %zext.198
  %and.11 = and i64 %shl.105, 4294967295
  %trunc32.62 = trunc i64 %and.11 to i32
  store i32 %trunc32.62, ptr %R2, align 4
  %.3206 = load i32, ptr %R0, align 4
  %cmp.18 = icmp sgt i32 %.3206, 33554431
  %.3210 = and i1 %cmp.18, true
  %.3214 = load float, ptr %R9, align 4
  %.3215 = load i32, ptr %R2, align 4
  %zext.199 = zext i32 %.3215 to i64
  %.3216 = load i32, ptr %R3, align 4
  %zext.200 = zext i32 %.3216 to i64
  %shl.106 = shl i64 %zext.200, 32
  %or.86 = or i64 %shl.106, %zext.199
  %inttoptr_bytes.59 = inttoptr i64 %or.86 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.3214, ptr addrspace(1) %ptr_cast_for_access.59, align 4
  %.3220 = icmp eq i1 %.3210, true
  br i1 %.3220, label %.L_x_18, label %.L_x_14_split_0x1890_CALL_0x18c0

.L_x_14_split_0x1890_CALL_0x18c0:                 ; preds = %.L_x_14
  %.3223 = load i32, ptr %R5, align 4
  %imad_mul.51 = mul i32 0, 0
  %imad_add.59 = add i32 %imad_mul.51, %.3223
  store i32 %imad_add.59, ptr %R15, align 4
  store i32 6336, ptr %R14, align 4
  %.3231 = load i32, ptr %R15, align 4
  %zext.201 = zext i32 0 to i64
  %zext.202 = zext i32 %.3231 to i64
  %zext.203 = zext i32 1 to i64
  %shl.107 = shl i64 %zext.201, 32
  %or.87 = or i64 %shl.107, %zext.202
  %shl.108 = shl i64 %or.87, %zext.203
  %and.12 = and i64 %shl.108, 4294967295
  %trunc32.63 = trunc i64 %and.12 to i32
  store i32 %trunc32.63, ptr %R0, align 4
  %.3237 = load i32, ptr %R0, align 4
  %zext.204 = zext i32 %.3237 to i64
  %zext.205 = zext i32 0 to i64
  %zext.206 = zext i32 24 to i64
  %shl.109 = shl i64 %zext.204, 32
  %or.88 = or i64 %shl.109, %zext.205
  %lshr.17 = lshr i64 %or.88, %zext.206
  %lshr.18 = lshr i64 %lshr.17, 32
  %trunc32.64 = trunc i64 %lshr.18 to i32
  store i32 %trunc32.64, ptr %R16, align 4
  %.3240 = load i32, ptr %R16, align 4
  %cmp.19 = icmp ne i32 %.3240, 0
  %.3244 = and i1 %cmp.19, true
  %.3249 = icmp eq i1 %.3244, true
  br i1 %.3249, label %.L_x_21...3, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3": ; preds = %.L_x_14_split_0x1890_CALL_0x18c0
  %.3252 = load i32, ptr %R15, align 4
  %imad_shl.8 = shl i32 %.3252, 2
  %imad_add.60 = add i32 %imad_shl.8, 0
  store i32 %imad_add.60, ptr %R0, align 4
  %.3255 = load i32, ptr %R0, align 4
  %cmp.20 = icmp ne i32 %.3255, 0
  %.3259 = and i1 %cmp.20, true
  %.3264 = icmp eq i1 %.3259, true
  br i1 %.3264, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"
  %.3267 = load float, ptr %R15, align 4
  %fmul.99 = fmul float %.3267, 0x43F0000000000000
  %fadd.111 = fadd float %fmul.99, 0.000000e+00
  %.3268 = bitcast ptr %R8 to ptr
  store float %fadd.111, ptr %.3268, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"
  %.3273 = load float, ptr %R15, align 4
  %fmul.100 = fmul float %.3273, 0x43F0000000000000
  %fadd.112 = fadd float %fmul.100, 0.000000e+00
  %.3274 = bitcast ptr %R8 to ptr
  store float %fadd.112, ptr %.3274, align 4
  %.3280 = icmp ne i1 %.3259, true
  br i1 %.3280, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"
  %.3283 = load i32, ptr %R15, align 4
  %sint_to_f32.5 = sitofp i32 %.3283 to float
  %.3284 = fdiv float 1.000000e+00, %sint_to_f32.5
  %.3285 = fptosi float %.3284 to i32
  store i32 %.3285, ptr %R0, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"
  %.3290 = load i32, ptr %R15, align 4
  %sint_to_f32.6 = sitofp i32 %.3290 to float
  %.3291 = fdiv float 1.000000e+00, %sint_to_f32.6
  %.3292 = fptosi float %.3291 to i32
  store i32 %.3292, ptr %R0, align 4
  %.3298 = icmp eq i1 %.3259, true
  br i1 %.3298, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
  %.3301 = load float, ptr %R8, align 4
  %.3302 = fdiv float 1.000000e+00, %.3301
  %.3303 = bitcast ptr %R9 to ptr
  store float %.3302, ptr %.3303, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
  %.3308 = load float, ptr %R8, align 4
  %.3309 = fdiv float 1.000000e+00, %.3308
  %.3310 = bitcast ptr %R9 to ptr
  store float %.3309, ptr %.3310, align 4
  %.3316 = icmp eq i1 %.3259, true
  br i1 %.3316, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
  %.3319 = load float, ptr %R8, align 4
  %.3320 = load float, ptr %R9, align 4
  %fmul.101 = fmul float %.3319, %.3320
  %fadd.113 = fadd float %fmul.101, -1.000000e+00
  %.3321 = bitcast ptr %R11 to ptr
  store float %fadd.113, ptr %.3321, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
  %.3326 = load float, ptr %R8, align 4
  %.3327 = load float, ptr %R9, align 4
  %fmul.102 = fmul float %.3326, %.3327
  %fadd.114 = fadd float %fmul.102, -1.000000e+00
  %.3328 = bitcast ptr %R11 to ptr
  store float %fadd.114, ptr %.3328, align 4
  %.3334 = icmp eq i1 %.3259, true
  br i1 %.3334, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
  %.3337 = load float, ptr %R11, align 4
  %.3338 = fneg float %.3337
  %fadd.115 = fadd float %.3338, 0.000000e+00
  %.3339 = bitcast ptr %R12 to ptr
  store float %fadd.115, ptr %.3339, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
  %.3344 = load float, ptr %R11, align 4
  %.3345 = fneg float %.3344
  %fadd.116 = fadd float %.3345, 0.000000e+00
  %.3346 = bitcast ptr %R12 to ptr
  store float %fadd.116, ptr %.3346, align 4
  %.3352 = icmp eq i1 %.3259, true
  br i1 %.3352, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
  %.3355 = load float, ptr %R9, align 4
  %.3356 = load float, ptr %R12, align 4
  %.3357 = load float, ptr %R9, align 4
  %fmul.103 = fmul float %.3355, %.3356
  %fadd.117 = fadd float %fmul.103, %.3357
  %.3358 = bitcast ptr %R12 to ptr
  store float %fadd.117, ptr %.3358, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
  %.3363 = load float, ptr %R9, align 4
  %.3364 = load float, ptr %R12, align 4
  %.3365 = load float, ptr %R9, align 4
  %fmul.104 = fmul float %.3363, %.3364
  %fadd.118 = fadd float %fmul.104, %.3365
  %.3366 = bitcast ptr %R12 to ptr
  store float %fadd.118, ptr %.3366, align 4
  %.3372 = icmp eq i1 %.3259, true
  br i1 %.3372, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
  %.3375 = load float, ptr %R12, align 4
  %fmul.105 = fmul float %.3375, 0x43F0000000000000
  %fadd.119 = fadd float %fmul.105, 0.000000e+00
  %.3376 = bitcast ptr %R0 to ptr
  store float %fadd.119, ptr %.3376, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
  %.3381 = load float, ptr %R12, align 4
  %fmul.106 = fmul float %.3381, 0x43F0000000000000
  %fadd.120 = fadd float %fmul.106, 0.000000e+00
  %.3382 = bitcast ptr %R0 to ptr
  store float %fadd.120, ptr %.3382, align 4
  br label %.L_x_20...3

.L_x_21...3:                                      ; preds = %.L_x_14_split_0x1890_CALL_0x18c0
  %.3389 = load i32, ptr %R16, align 4
  %.3390 = add i32 %.3389, -253
  %.3391 = add i32 %.3390, 0
  store i32 %.3391, ptr %R18, align 4
  %.3394 = load i32, ptr %R18, align 4
  %cmp.21 = icmp sgt i32 %.3394, 1
  %.3398 = and i1 %cmp.21, true
  %.3403 = icmp eq i1 %.3398, true
  br i1 %.3403, label %.L_x_23...3, label %.L_x_21_split_0x1a90...3

.L_x_21_split_0x1a90...3:                         ; preds = %.L_x_21...3
  %.3406 = load i32, ptr %R15, align 4
  %.3408 = and i32 %.3406, 8388607
  store i32 %.3408, ptr %R0, align 4
  store i32 3, ptr %R13, align 4
  %.3413 = load i32, ptr %R0, align 4
  %.3415 = or i32 %.3413, 1065353216
  store i32 %.3415, ptr %R0, align 4
  %.3420 = load i32, ptr %R13, align 4
  %.3421 = load i32, ptr %R18, align 4
  %zext.207 = zext i32 0 to i64
  %zext.208 = zext i32 %.3420 to i64
  %zext.209 = zext i32 %.3421 to i64
  %shl.110 = shl i64 %zext.207, 32
  %or.89 = or i64 %shl.110, %zext.208
  %shl.111 = shl i64 %or.89, %zext.209
  %and.13 = and i64 %shl.111, 4294967295
  %trunc32.65 = trunc i64 %and.13 to i32
  store i32 %trunc32.65, ptr %R13, align 4
  %.3424 = load i32, ptr %R0, align 4
  %sint_to_f32.7 = sitofp i32 %.3424 to float
  %.3425 = fdiv float 1.000000e+00, %sint_to_f32.7
  %.3426 = fptosi float %.3425 to i32
  store i32 %.3426, ptr %R9, align 4
  %.3429 = load float, ptr %R0, align 4
  %.3430 = load float, ptr %R9, align 4
  %fmul.107 = fmul float %.3429, %.3430
  %fadd.121 = fadd float %fmul.107, -1.000000e+00
  %.3431 = bitcast ptr %R8 to ptr
  store float %fadd.121, ptr %.3431, align 4
  %.3434 = load float, ptr %R8, align 4
  %.3435 = fneg float %.3434
  %fadd.122 = fadd float %.3435, 0.000000e+00
  %.3436 = bitcast ptr %R8 to ptr
  store float %fadd.122, ptr %.3436, align 4
  %.3439 = load float, ptr %R9, align 4
  %.3440 = load float, ptr %R8, align 4
  %.3441 = load float, ptr %R9, align 4
  %fmul.108 = fmul float %.3439, %.3440
  %fadd.123 = fadd float %fmul.108, %.3441
  %.3442 = bitcast ptr %R11 to ptr
  store float %fadd.123, ptr %.3442, align 4
  %.3445 = load float, ptr %R9, align 4
  %.3446 = load float, ptr %R8, align 4
  %.3447 = load float, ptr %R9, align 4
  %fmul.109 = fmul float %.3445, %.3446
  %fadd.124 = fadd float %fmul.109, %.3447
  %.3448 = bitcast ptr %R12 to ptr
  store float %fadd.124, ptr %.3448, align 4
  %.3451 = load i32, ptr %R11, align 4
  %.3453 = and i32 %.3451, 8388607
  store i32 %.3453, ptr %R8, align 4
  %.3456 = load float, ptr %R11, align 4
  %.3457 = load float, ptr %R12, align 4
  %fcmp_ordered.2 = fcmp une float %.3456, %.3457
  %.3461 = and i1 %fcmp_ordered.2, true
  %.3465 = load i32, ptr %R8, align 4
  %.3467 = or i32 %.3465, 8388608
  store i32 %.3467, ptr %R8, align 4
  %.3471 = xor i1 %.3461, true
  %.3472 = icmp eq i1 %.3471, true
  %sel.4 = select i1 %.3472, i32 0, i32 -1
  store i32 %sel.4, ptr %R9, align 4
  %.3475 = load i32, ptr %R13, align 4
  %.3476 = load i32, ptr %R8, align 4
  %.3478 = and i32 %.3475, %.3476
  store i32 %.3478, ptr %R13, align 4
  %.3481 = load i32, ptr %R9, align 4
  %.3482 = sub i32 0, %.3481
  %imad_mul.52 = mul i32 0, 0
  %imad_add.61 = add i32 %imad_mul.52, %.3482
  store i32 %imad_add.61, ptr %R9, align 4
  %.3487 = load i32, ptr %R13, align 4
  %.3488 = load i32, ptr %R18, align 4
  %zext.210 = zext i32 %.3487 to i64
  %zext.211 = zext i32 0 to i64
  %zext.212 = zext i32 %.3488 to i64
  %shl.112 = shl i64 %zext.210, 32
  %or.90 = or i64 %shl.112, %zext.211
  %lshr.19 = lshr i64 %or.90, %zext.212
  %lshr.20 = lshr i64 %lshr.19, 32
  %trunc32.66 = trunc i64 %lshr.20 to i32
  store i32 %trunc32.66, ptr %R13, align 4
  %.3502 = load i32, ptr %R13, align 4
  %.3504 = and i32 %.3502, 1
  %.3506 = icmp ne i32 %.3504, 0
  %.3516 = load i32, ptr %R16, align 4
  %.3517 = add i32 %.3516, -252
  %.3518 = add i32 %.3517, 0
  store i32 %.3518, ptr %R9, align 4
  %.3526 = load i32, ptr %R15, align 4
  %.3528 = and i32 %.3526, 8388607
  %.3530 = icmp ne i32 %.3528, 0
  %.3534 = xor i1 %.3506, true
  %.3535 = icmp eq i1 %.3534, true
  %sel.5 = select i1 %.3535, i32 0, i32 1
  store i32 %sel.5, ptr %R0, align 4
  %.3538 = load i32, ptr %R0, align 4
  %.3539 = sub i32 0, %.3538
  %.3540 = add i32 %.3539, 0
  %.3541 = add i32 %.3540, 0
  store i32 %.3541, ptr %R0, align 4
  %.3544 = load i32, ptr %R0, align 4
  %cmp.22 = icmp sge i32 %.3544, 0
  %.3548 = and i1 %cmp.22, true
  %.3554 = load i32, ptr %R8, align 4
  %.3555 = load i32, ptr %R9, align 4
  %zext.213 = zext i32 %.3554 to i64
  %zext.214 = zext i32 0 to i64
  %zext.215 = zext i32 %.3555 to i64
  %shl.113 = shl i64 %zext.213, 32
  %or.91 = or i64 %shl.113, %zext.214
  %lshr.21 = lshr i64 %or.91, %zext.215
  %lshr.22 = lshr i64 %lshr.21, 32
  %trunc32.67 = trunc i64 %lshr.22 to i32
  store i32 %trunc32.67, ptr %R0, align 4
  %.3559 = icmp ne i1 %.3548, true
  br i1 %.3559, label %.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30, label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3

.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30:  ; preds = %.L_x_21_split_0x1a90...3
  %.3562 = load i32, ptr %R0, align 4
  %.3563 = add i32 %.3562, 1
  %.3564 = add i32 %.3563, 0
  store i32 %.3564, ptr %R0, align 4
  br label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3

.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3:  ; preds = %.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30, %.L_x_21_split_0x1a90...3
  %.3569 = load i32, ptr %R0, align 4
  %.3570 = add i32 %.3569, 1
  %.3571 = add i32 %.3570, 0
  store i32 %.3571, ptr %R0, align 4
  %.3577 = icmp ne i1 %.3530, true
  br i1 %.3577, label %.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40, label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3

.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40:  ; preds = %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3
  %.3580 = load i32, ptr %R0, align 4
  %imad_shl.9 = shl i32 %.3580, 2
  %imad_add.62 = add i32 %imad_shl.9, 0
  store i32 %imad_add.62, ptr %R0, align 4
  br label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3

.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3:  ; preds = %.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40, %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3
  %.3585 = load i32, ptr %R0, align 4
  %imad_shl.10 = shl i32 %.3585, 2
  %imad_add.63 = add i32 %imad_shl.10, 0
  store i32 %imad_add.63, ptr %R0, align 4
  %.3590 = load i32, ptr %R0, align 4
  %.3591 = load i32, ptr %R15, align 4
  %.3593 = or i32 %.3590, -2147483648
  %.3594 = or i32 %.3590, %.3591
  %.3595 = and i32 %.3593, %.3594
  store i32 %.3595, ptr %R0, align 4
  br label %.L_x_20...3

.L_x_23...3:                                      ; preds = %.L_x_21...3
  %.3600 = load i32, ptr %R15, align 4
  %sint_to_f32.8 = sitofp i32 %.3600 to float
  %.3601 = fdiv float 1.000000e+00, %sint_to_f32.8
  %.3602 = fptosi float %.3601 to i32
  store i32 %.3602, ptr %R0, align 4
  br label %.L_x_20...3

.L_x_20...3:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3", %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3, %.L_x_23...3
  %.3608 = load i32, ptr %R14, align 4
  store i32 %.3608, ptr %R8, align 4
  %imad_mul.53 = mul i32 0, 0
  %imad_add.64 = add i32 %imad_mul.53, 0
  store i32 %imad_add.64, ptr %R9, align 4
  br label %.L_x_17

.L_x_18:                                          ; preds = %.L_x_14
  %.3620 = load float, ptr %R5, align 4
  %.3621 = fdiv float 1.000000e+00, %.3620
  %.3622 = bitcast ptr %R0 to ptr
  store float %.3621, ptr %.3622, align 4
  %.3625 = load float, ptr %R5, align 4
  %.3626 = load float, ptr %R0, align 4
  %fmul.110 = fmul float %.3625, %.3626
  %fadd.125 = fadd float %fmul.110, -1.000000e+00
  %.3627 = bitcast ptr %R4 to ptr
  store float %fadd.125, ptr %.3627, align 4
  %.3630 = load float, ptr %R4, align 4
  %.3631 = fneg float %.3630
  %fadd.126 = fadd float %.3631, 0.000000e+00
  %.3632 = bitcast ptr %R9 to ptr
  store float %fadd.126, ptr %.3632, align 4
  %.3635 = load float, ptr %R0, align 4
  %.3636 = load float, ptr %R9, align 4
  %.3637 = load float, ptr %R0, align 4
  %fmul.111 = fmul float %.3635, %.3636
  %fadd.127 = fadd float %fmul.111, %.3637
  %.3638 = bitcast ptr %R0 to ptr
  store float %fadd.127, ptr %.3638, align 4
  br label %.L_x_17

.L_x_17:                                          ; preds = %.L_x_20...3, %.L_x_18
  %.3644 = load float, ptr %R0, align 4
  %.3645 = load float, ptr %R7, align 4
  %fmul.112 = fmul float %.3644, %.3645
  %.3646 = bitcast ptr %R7 to ptr
  store float %fmul.112, ptr %.3646, align 4
  %.3655 = load float, ptr %R7, align 4
  %.3656 = load i32, ptr %R2, align 4
  %zext.216 = zext i32 %.3656 to i64
  %.3657 = load i32, ptr %R3, align 4
  %zext.217 = zext i32 %.3657 to i64
  %shl.114 = shl i64 %zext.217, 32
  %or.92 = or i64 %shl.114, %zext.216
  %inttoptr_bytes.60 = inttoptr i64 %or.92 to ptr addrspace(1)
  %ptr_cast_for_access.60 = bitcast ptr addrspace(1) %inttoptr_bytes.60 to ptr addrspace(1)
  store float %.3655, ptr addrspace(1) %ptr_cast_for_access.60, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii, %.L_x_17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.y() #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.y() #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.y() #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
