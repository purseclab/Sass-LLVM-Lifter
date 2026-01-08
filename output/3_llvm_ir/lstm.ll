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
  %.37 = and i1 %cmp, true
  %.41 = load i32, ptr %R7, align 4
  %nvvm_blockdim_y = call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %.42 = load i32, ptr %R0, align 4
  %imad_mul.2 = mul i32 %.41, %nvvm_blockdim_y
  %imad_add.2 = add i32 %imad_mul.2, %.42
  store i32 %imad_add.2, ptr %R7, align 4
  %.45 = load i32, ptr %R7, align 4
  %cmp.1 = icmp sge i32 %.45, %Arg_9
  %.48 = or i1 %cmp.1, %.37
  %.53 = icmp eq i1 %.48, true
  br i1 %.53, label %ExitFunction, label %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0

.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0: ; preds = %Entry_.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii
  %imad_mul.3 = mul i32 0, 0
  %imad_add.3 = add i32 %imad_mul.3, %Arg_11
  store i32 %imad_add.3, ptr %R3, align 4
  store i32 4, ptr %R9, align 4
  %.62 = load i32, ptr %R3, align 4
  %shl = shl i32 %.62, 1
  %add = add i32 %shl, %imad_add.1
  store i32 %add, ptr %R18, align 4
  %.67 = load i32, ptr %R9, align 4
  %imad_ext1 = zext i32 %imad_add.1 to i64
  %imad_ext2 = zext i32 %.67 to i64
  %imad_mul.4 = mul i64 %imad_ext1, %imad_ext2
  %.68 = ptrtoint ptr %Arg_6 to i64
  %imad_add.4 = add i64 %imad_mul.4, %.68
  %.69 = and i64 %imad_add.4, -4294967296
  %.70 = lshr i64 %.69, 32
  %trunc32 = trunc i64 %.70 to i32
  %trunc32.1 = trunc i64 %imad_add.4 to i32
  store i32 %trunc32.1, ptr %R12, align 4
  store i32 %trunc32, ptr %R13, align 4
  %.74 = load i32, ptr %R18, align 4
  %.75 = add i32 %.74, %Arg_11
  %.76 = add i32 %.75, 0
  store i32 %.76, ptr %R24, align 4
  %.80 = load i32, ptr %R9, align 4
  %imad_ext1.1 = zext i32 %imad_add.1 to i64
  %imad_ext2.1 = zext i32 %.80 to i64
  %imad_mul.5 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.81 = ptrtoint ptr %Arg_5 to i64
  %imad_add.5 = add i64 %imad_mul.5, %.81
  %.82 = and i64 %imad_add.5, -4294967296
  %.83 = lshr i64 %.82, 32
  %trunc32.2 = trunc i64 %.83 to i32
  %trunc32.3 = trunc i64 %imad_add.5 to i32
  store i32 %trunc32.3, ptr %R10, align 4
  store i32 %trunc32.2, ptr %R11, align 4
  %.87 = load i32, ptr %R18, align 4
  %.88 = load i32, ptr %R9, align 4
  %imad_ext1.2 = zext i32 %.87 to i64
  %imad_ext2.2 = zext i32 %.88 to i64
  %imad_mul.6 = mul i64 %imad_ext1.2, %imad_ext2.2
  %.89 = ptrtoint ptr %Arg_6 to i64
  %imad_add.6 = add i64 %imad_mul.6, %.89
  %.90 = and i64 %imad_add.6, -4294967296
  %.91 = lshr i64 %.90, 32
  %trunc32.4 = trunc i64 %.91 to i32
  %trunc32.5 = trunc i64 %imad_add.6 to i32
  store i32 %trunc32.5, ptr %R20, align 4
  store i32 %trunc32.4, ptr %R21, align 4
  %.95 = load i32, ptr %R12, align 4
  %zext = zext i32 %.95 to i64
  %.96 = load i32, ptr %R13, align 4
  %zext.1 = zext i32 %.96 to i64
  %shl.1 = shl i64 %zext.1, 32
  %or = or i64 %shl.1, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.97 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.98 = bitcast ptr %R3 to ptr
  store float %.97, ptr %.98, align 4
  %.101 = load i32, ptr %R24, align 4
  %.102 = load i32, ptr %R9, align 4
  %imad_ext1.3 = zext i32 %.101 to i64
  %imad_ext2.3 = zext i32 %.102 to i64
  %imad_mul.7 = mul i64 %imad_ext1.3, %imad_ext2.3
  %.103 = ptrtoint ptr %Arg_5 to i64
  %imad_add.7 = add i64 %imad_mul.7, %.103
  %.104 = and i64 %imad_add.7, -4294967296
  %.105 = lshr i64 %.104, 32
  %trunc32.6 = trunc i64 %.105 to i32
  %trunc32.7 = trunc i64 %imad_add.7 to i32
  store i32 %trunc32.7, ptr %R22, align 4
  store i32 %trunc32.6, ptr %R23, align 4
  %.109 = load i32, ptr %R9, align 4
  %.110 = load i32, ptr %R12, align 4
  %imad_ext1.4 = zext i32 %.109 to i64
  %imad_ext2.4 = zext i32 %Arg_11 to i64
  %imad_mul.8 = mul i64 %imad_ext1.4, %imad_ext2.4
  %imad_ext3 = zext i32 %.110 to i64
  %imad_add.8 = add i64 %imad_mul.8, %imad_ext3
  %.111 = and i64 %imad_add.8, -4294967296
  %.112 = lshr i64 %.111, 32
  %trunc32.8 = trunc i64 %.112 to i32
  %trunc32.9 = trunc i64 %imad_add.8 to i32
  store i32 %trunc32.9, ptr %R16, align 4
  store i32 %trunc32.8, ptr %R17, align 4
  %.116 = load i32, ptr %R20, align 4
  %zext.2 = zext i32 %.116 to i64
  %.117 = load i32, ptr %R21, align 4
  %zext.3 = zext i32 %.117 to i64
  %shl.2 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.2, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.118 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.119 = bitcast ptr %R20 to ptr
  store float %.118, ptr %.119, align 4
  %.122 = load i32, ptr %R9, align 4
  %.123 = load i32, ptr %R10, align 4
  %imad_ext1.5 = zext i32 %.122 to i64
  %imad_ext2.5 = zext i32 %Arg_11 to i64
  %imad_mul.9 = mul i64 %imad_ext1.5, %imad_ext2.5
  %imad_ext3.1 = zext i32 %.123 to i64
  %imad_add.9 = add i64 %imad_mul.9, %imad_ext3.1
  %.124 = and i64 %imad_add.9, -4294967296
  %.125 = lshr i64 %.124, 32
  %trunc32.10 = trunc i64 %.125 to i32
  %trunc32.11 = trunc i64 %imad_add.9 to i32
  store i32 %trunc32.11, ptr %R14, align 4
  store i32 %trunc32.10, ptr %R15, align 4
  %.129 = load i32, ptr %R22, align 4
  %zext.4 = zext i32 %.129 to i64
  %.130 = load i32, ptr %R23, align 4
  %zext.5 = zext i32 %.130 to i64
  %shl.3 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.3, %zext.4
  %inttoptr_bytes.2 = inttoptr i64 %or.2 to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.131 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.132 = bitcast ptr %R23 to ptr
  store float %.131, ptr %.132, align 4
  %.135 = load i32, ptr %R18, align 4
  %.136 = load i32, ptr %R9, align 4
  %imad_ext1.6 = zext i32 %.135 to i64
  %imad_ext2.6 = zext i32 %.136 to i64
  %imad_mul.10 = mul i64 %imad_ext1.6, %imad_ext2.6
  %.137 = ptrtoint ptr %Arg_5 to i64
  %imad_add.10 = add i64 %imad_mul.10, %.137
  %.138 = and i64 %imad_add.10, -4294967296
  %.139 = lshr i64 %.138, 32
  %trunc32.12 = trunc i64 %.139 to i32
  %trunc32.13 = trunc i64 %imad_add.10 to i32
  store i32 %trunc32.13, ptr %R18, align 4
  store i32 %trunc32.12, ptr %R19, align 4
  %.143 = load i32, ptr %R10, align 4
  %zext.6 = zext i32 %.143 to i64
  %.144 = load i32, ptr %R11, align 4
  %zext.7 = zext i32 %.144 to i64
  %shl.4 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.4, %zext.6
  %inttoptr_bytes.3 = inttoptr i64 %or.3 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.145 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.146 = bitcast ptr %R10 to ptr
  store float %.145, ptr %.146, align 4
  %.149 = load i32, ptr %R24, align 4
  %.150 = load i32, ptr %R9, align 4
  %imad_ext1.7 = zext i32 %.149 to i64
  %imad_ext2.7 = zext i32 %.150 to i64
  %imad_mul.11 = mul i64 %imad_ext1.7, %imad_ext2.7
  %.151 = ptrtoint ptr %Arg_6 to i64
  %imad_add.11 = add i64 %imad_mul.11, %.151
  %.152 = and i64 %imad_add.11, -4294967296
  %.153 = lshr i64 %.152, 32
  %trunc32.14 = trunc i64 %.153 to i32
  %trunc32.15 = trunc i64 %imad_add.11 to i32
  store i32 %trunc32.15, ptr %R24, align 4
  %.157 = load i32, ptr %R16, align 4
  %zext.8 = zext i32 %.157 to i64
  %.158 = load i32, ptr %R17, align 4
  %zext.9 = zext i32 %.158 to i64
  %shl.5 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.5, %zext.8
  %inttoptr_bytes.4 = inttoptr i64 %or.4 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.159 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.160 = bitcast ptr %R16 to ptr
  store float %.159, ptr %.160, align 4
  %.163 = load i32, ptr %R14, align 4
  %zext.10 = zext i32 %.163 to i64
  %.164 = load i32, ptr %R15, align 4
  %zext.11 = zext i32 %.164 to i64
  %shl.6 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.6, %zext.10
  %inttoptr_bytes.5 = inttoptr i64 %or.5 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.165 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.166 = bitcast ptr %R15 to ptr
  store float %.165, ptr %.166, align 4
  %.169 = load i32, ptr %R18, align 4
  %zext.12 = zext i32 %.169 to i64
  %.170 = load i32, ptr %R19, align 4
  %zext.13 = zext i32 %.170 to i64
  %shl.7 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.7, %zext.12
  %inttoptr_bytes.6 = inttoptr i64 %or.6 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.171 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.172 = bitcast ptr %R19 to ptr
  store float %.171, ptr %.172, align 4
  %.175 = load i32, ptr %R24, align 4
  %zext.14 = zext i32 %.175 to i64
  %zext.15 = zext i32 %trunc32.14 to i64
  %shl.8 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.8, %zext.14
  %inttoptr_bytes.7 = inttoptr i64 %or.7 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.177 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.178 = bitcast ptr %R24 to ptr
  store float %.177, ptr %.178, align 4
  %imad_mul.12 = mul i32 0, 0
  %imad_add.12 = add i32 %imad_mul.12, %Arg_10
  store i32 %imad_add.12, ptr %R26, align 4
  %.183 = load i32, ptr %R26, align 4
  %cmp.2 = icmp sge i32 %.183, 1
  %.186 = and i1 %cmp.2, true
  %.190 = load float, ptr %R3, align 4
  %.191 = load float, ptr %R10, align 4
  %fadd = fadd float %.190, %.191
  %.192 = bitcast ptr %R3 to ptr
  store float %fadd, ptr %.192, align 4
  %.195 = load float, ptr %R16, align 4
  %.196 = load float, ptr %R15, align 4
  %fadd.1 = fadd float %.195, %.196
  %.197 = bitcast ptr %R2 to ptr
  store float %fadd.1, ptr %.197, align 4
  %.200 = load float, ptr %R20, align 4
  %.201 = load float, ptr %R19, align 4
  %fadd.2 = fadd float %.200, %.201
  %.202 = bitcast ptr %R0 to ptr
  store float %fadd.2, ptr %.202, align 4
  %.205 = load float, ptr %R24, align 4
  %.206 = load float, ptr %R23, align 4
  %fadd.3 = fadd float %.205, %.206
  %.207 = bitcast ptr %R8 to ptr
  store float %fadd.3, ptr %.207, align 4
  %.211 = icmp ne i1 %.186, true
  br i1 %.211, label %.L_x_0, label %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250

.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250: ; preds = %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0
  %.214 = load i32, ptr %R26, align 4
  %.215 = add i32 %.214, -1
  %.216 = add i32 %.215, 0
  store i32 %.216, ptr %R10, align 4
  %.221 = load i32, ptr %R26, align 4
  %.223 = and i32 %.221, 3
  %.225 = icmp ne i32 %.223, 0
  %zext.16 = zext i32 %Arg_11 to i64
  %zext.17 = zext i32 0 to i64
  %zext.18 = zext i32 31 to i64
  %shl.9 = shl i64 %zext.16, 32
  %or.8 = or i64 %shl.9, %zext.17
  %ashr = ashr i64 %or.8, %zext.18
  %ashr.1 = ashr i64 %ashr, 32
  %trunc32.16 = trunc i64 %ashr.1 to i32
  %.232 = load i32, ptr %R10, align 4
  %cmp.3 = icmp sge i32 %.232, 3
  %.235 = and i1 %cmp.3, true
  %.239 = load i32, ptr %R26, align 4
  %.241 = and i32 %.239, 3
  store i32 %.241, ptr %R20, align 4
  store i32 %.223, ptr %R28, align 4
  %.248 = icmp ne i1 %.235, true
  br i1 %.248, label %.L_x_1, label %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0

.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0: ; preds = %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250
  %.251 = load i32, ptr %R20, align 4
  %.252 = sub i32 0, %.251
  %.253 = add i32 %.252, %Arg_10
  %.254 = add i32 %.253, 0
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
  %R42.0 = phi i32 [ %.254, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0 ], [ %.699, %.L_x_2 ]
  %.270 = load i32, ptr %R28, align 4
  %zext.25 = zext i32 0 to i64
  %zext.26 = zext i32 %.270 to i64
  %zext.27 = zext i32 2 to i64
  %shl.14 = shl i64 %zext.25, 32
  %or.11 = or i64 %shl.14, %zext.26
  %shl.15 = shl i64 %or.11, %zext.27
  %and.1 = and i64 %shl.15, 4294967295
  %trunc32.19 = trunc i64 %and.1 to i32
  store i32 %trunc32.19, ptr %R11, align 4
  %.273 = load i32, ptr %R7, align 4
  %.274 = load i32, ptr %R28, align 4
  %imad_mul.14 = mul i32 %.273, %Arg_10
  %imad_add.14 = add i32 %imad_mul.14, %.274
  store i32 %imad_add.14, ptr %R30, align 4
  %.277 = load i32, ptr %R11, align 4
  %imad_mul.15 = mul i32 %.277, %Arg_11
  %imad_add.15 = add i32 %imad_mul.15, %imad_add.1
  store i32 %imad_add.15, ptr %R36, align 4
  %.281 = load i32, ptr %R30, align 4
  %.282 = load i32, ptr %R9, align 4
  %imad_ext1.8 = zext i32 %.281 to i64
  %imad_ext2.8 = zext i32 %.282 to i64
  %imad_mul.16 = mul i64 %imad_ext1.8, %imad_ext2.8
  %.283 = ptrtoint ptr %Arg_0 to i64
  %imad_add.16 = add i64 %imad_mul.16, %.283
  %.284 = and i64 %imad_add.16, -4294967296
  %.285 = lshr i64 %.284, 32
  %trunc32.20 = trunc i64 %.285 to i32
  %trunc32.21 = trunc i64 %imad_add.16 to i32
  store i32 %trunc32.21, ptr %R30, align 4
  %.289 = load i32, ptr %R36, align 4
  %.290 = load i32, ptr %R9, align 4
  %imad_ext1.9 = zext i32 %.289 to i64
  %imad_ext2.9 = zext i32 %.290 to i64
  %imad_mul.17 = mul i64 %imad_ext1.9, %imad_ext2.9
  %.291 = ptrtoint ptr %Arg_3 to i64
  %imad_add.17 = add i64 %imad_mul.17, %.291
  %.292 = and i64 %imad_add.17, -4294967296
  %.293 = lshr i64 %.292, 32
  %trunc32.22 = trunc i64 %.293 to i32
  %trunc32.23 = trunc i64 %imad_add.17 to i32
  store i32 %trunc32.23, ptr %R36, align 4
  %.297 = load i32, ptr %R30, align 4
  %zext.28 = zext i32 %.297 to i64
  %zext.29 = zext i32 %trunc32.20 to i64
  %shl.16 = shl i64 %zext.29, 32
  %or.12 = or i64 %shl.16, %zext.28
  %inttoptr_bytes.8 = inttoptr i64 %or.12 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.299 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.300 = bitcast ptr %R35 to ptr
  store float %.299, ptr %.300, align 4
  %.303 = load i32, ptr %R36, align 4
  %.305 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.303, i32 %trunc32.18)
  %.306 = extractvalue { i32, i1 } %.305, 0
  %.307 = extractvalue { i32, i1 } %.305, 1
  %.308 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.306, i32 0)
  %.309 = extractvalue { i32, i1 } %.308, 0
  %.310 = extractvalue { i32, i1 } %.308, 1
  %.311 = or i1 %.307, %.310
  store i32 %.309, ptr %R32, align 4
  %.315 = load i32, ptr %R30, align 4
  %zext.30 = zext i32 %.315 to i64
  %zext.31 = zext i32 %trunc32.20 to i64
  %shl.17 = shl i64 %zext.31, 32
  %or.13 = or i64 %shl.17, %zext.30
  %ptr_plus_imm = add i64 %or.13, 4
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.317 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.318 = bitcast ptr %R29 to ptr
  store float %.317, ptr %.318, align 4
  %.324 = xor i1 true, true
  %.325 = zext i1 %.311 to i32
  %.326 = zext i1 %.324 to i32
  %add.1 = add i32 %trunc32.22, %trunc32.17
  %add.2 = add i32 %add.1, 0
  %add.3 = add i32 %add.2, %.325
  %add.4 = add i32 %add.3, %.326
  %.329 = load i32, ptr %R32, align 4
  %.331 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.329, i32 %trunc32.18)
  %.332 = extractvalue { i32, i1 } %.331, 0
  %.333 = extractvalue { i32, i1 } %.331, 1
  %.334 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.332, i32 0)
  %.335 = extractvalue { i32, i1 } %.334, 0
  %.336 = extractvalue { i32, i1 } %.334, 1
  %.337 = or i1 %.333, %.336
  store i32 %.335, ptr %R38, align 4
  %.341 = load i32, ptr %R30, align 4
  %zext.32 = zext i32 %.341 to i64
  %zext.33 = zext i32 %trunc32.20 to i64
  %shl.18 = shl i64 %zext.33, 32
  %or.14 = or i64 %shl.18, %zext.32
  %ptr_plus_imm.1 = add i64 %or.14, 8
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.343 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.344 = bitcast ptr %R21 to ptr
  store float %.343, ptr %.344, align 4
  %.350 = xor i1 true, true
  %.351 = zext i1 %.337 to i32
  %.352 = zext i1 %.350 to i32
  %add.5 = add i32 %add.4, %trunc32.17
  %add.6 = add i32 %add.5, 0
  %add.7 = add i32 %add.6, %.351
  %add.8 = add i32 %add.7, %.352
  %.355 = load i32, ptr %R30, align 4
  %zext.34 = zext i32 %.355 to i64
  %zext.35 = zext i32 %trunc32.20 to i64
  %shl.19 = shl i64 %zext.35, 32
  %or.15 = or i64 %shl.19, %zext.34
  %ptr_plus_imm.2 = add i64 %or.15, 12
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.357 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.358 = bitcast ptr %R34 to ptr
  store float %.357, ptr %.358, align 4
  %.361 = load i32, ptr %R38, align 4
  %.363 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.361, i32 %trunc32.18)
  %.364 = extractvalue { i32, i1 } %.363, 0
  %.365 = extractvalue { i32, i1 } %.363, 1
  %.366 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.364, i32 0)
  %.367 = extractvalue { i32, i1 } %.366, 0
  %.368 = extractvalue { i32, i1 } %.366, 1
  %.369 = or i1 %.365, %.368
  store i32 %.367, ptr %R22, align 4
  %.373 = load i32, ptr %R32, align 4
  %zext.36 = zext i32 %.373 to i64
  %zext.37 = zext i32 %add.4 to i64
  %shl.20 = shl i64 %zext.37, 32
  %or.16 = or i64 %shl.20, %zext.36
  %inttoptr_bytes.12 = inttoptr i64 %or.16 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.375 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.376 = bitcast ptr %R40 to ptr
  store float %.375, ptr %.376, align 4
  %.382 = xor i1 true, true
  %.383 = zext i1 %.369 to i32
  %.384 = zext i1 %.382 to i32
  %add.9 = add i32 %add.8, %trunc32.17
  %add.10 = add i32 %add.9, 0
  %add.11 = add i32 %add.10, %.383
  %add.12 = add i32 %add.11, %.384
  store i32 %add.12, ptr %R23, align 4
  %.387 = load i32, ptr %R22, align 4
  %.389 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.387, i32 %trunc32.18)
  %.390 = extractvalue { i32, i1 } %.389, 0
  %.391 = extractvalue { i32, i1 } %.389, 1
  %.392 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.390, i32 0)
  %.393 = extractvalue { i32, i1 } %.392, 0
  %.394 = extractvalue { i32, i1 } %.392, 1
  %.395 = or i1 %.391, %.394
  store i32 %.393, ptr %R12, align 4
  %.399 = load i32, ptr %R36, align 4
  %zext.38 = zext i32 %.399 to i64
  %zext.39 = zext i32 %trunc32.22 to i64
  %shl.21 = shl i64 %zext.39, 32
  %or.17 = or i64 %shl.21, %zext.38
  %inttoptr_bytes.13 = inttoptr i64 %or.17 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.401 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.402 = bitcast ptr %R36 to ptr
  store float %.401, ptr %.402, align 4
  %.405 = load i32, ptr %R23, align 4
  %.408 = xor i1 true, true
  %.409 = zext i1 %.395 to i32
  %.410 = zext i1 %.408 to i32
  %add.13 = add i32 %.405, %trunc32.17
  %add.14 = add i32 %add.13, 0
  %add.15 = add i32 %add.14, %.409
  %add.16 = add i32 %add.15, %.410
  store i32 %add.16, ptr %R13, align 4
  %.413 = load i32, ptr %R38, align 4
  %zext.40 = zext i32 %.413 to i64
  %zext.41 = zext i32 %add.8 to i64
  %shl.22 = shl i64 %zext.41, 32
  %or.18 = or i64 %shl.22, %zext.40
  %inttoptr_bytes.14 = inttoptr i64 %or.18 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.415 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.416 = bitcast ptr %R38 to ptr
  store float %.415, ptr %.416, align 4
  %.419 = load i32, ptr %R12, align 4
  %.421 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.419, i32 %trunc32.18)
  %.422 = extractvalue { i32, i1 } %.421, 0
  %.423 = extractvalue { i32, i1 } %.421, 1
  %.424 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.422, i32 0)
  %.425 = extractvalue { i32, i1 } %.424, 0
  %.426 = extractvalue { i32, i1 } %.424, 1
  %.427 = or i1 %.423, %.426
  store i32 %.425, ptr %R18, align 4
  %.431 = load i32, ptr %R22, align 4
  %zext.42 = zext i32 %.431 to i64
  %.432 = load i32, ptr %R23, align 4
  %zext.43 = zext i32 %.432 to i64
  %shl.23 = shl i64 %zext.43, 32
  %or.19 = or i64 %shl.23, %zext.42
  %inttoptr_bytes.15 = inttoptr i64 %or.19 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.433 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.434 = bitcast ptr %R41 to ptr
  store float %.433, ptr %.434, align 4
  %.437 = load i32, ptr %R13, align 4
  %.440 = xor i1 true, true
  %.441 = zext i1 %.427 to i32
  %.442 = zext i1 %.440 to i32
  %add.17 = add i32 %.437, %trunc32.17
  %add.18 = add i32 %add.17, 0
  %add.19 = add i32 %add.18, %.441
  %add.20 = add i32 %add.19, %.442
  store i32 %add.20, ptr %R19, align 4
  %.445 = load i32, ptr %R18, align 4
  %.447 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.445, i32 %trunc32.18)
  %.448 = extractvalue { i32, i1 } %.447, 0
  %.449 = extractvalue { i32, i1 } %.447, 1
  %.450 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.448, i32 0)
  %.451 = extractvalue { i32, i1 } %.450, 0
  %.452 = extractvalue { i32, i1 } %.450, 1
  %.453 = or i1 %.449, %.452
  store i32 %.451, ptr %R14, align 4
  %.457 = load i32, ptr %R12, align 4
  %zext.44 = zext i32 %.457 to i64
  %.458 = load i32, ptr %R13, align 4
  %zext.45 = zext i32 %.458 to i64
  %shl.24 = shl i64 %zext.45, 32
  %or.20 = or i64 %shl.24, %zext.44
  %inttoptr_bytes.16 = inttoptr i64 %or.20 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.459 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.460 = bitcast ptr %R43 to ptr
  store float %.459, ptr %.460, align 4
  %.463 = load i32, ptr %R19, align 4
  %.466 = xor i1 true, true
  %.467 = zext i1 %.453 to i32
  %.468 = zext i1 %.466 to i32
  %add.21 = add i32 %.463, %trunc32.17
  %add.22 = add i32 %add.21, 0
  %add.23 = add i32 %add.22, %.467
  %add.24 = add i32 %add.23, %.468
  store i32 %add.24, ptr %R15, align 4
  %.471 = load i32, ptr %R14, align 4
  %.473 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.471, i32 %trunc32.18)
  %.474 = extractvalue { i32, i1 } %.473, 0
  %.475 = extractvalue { i32, i1 } %.473, 1
  %.476 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.474, i32 0)
  %.477 = extractvalue { i32, i1 } %.476, 0
  %.478 = extractvalue { i32, i1 } %.476, 1
  %.479 = or i1 %.475, %.478
  store i32 %.477, ptr %R10, align 4
  %.483 = load i32, ptr %R18, align 4
  %zext.46 = zext i32 %.483 to i64
  %.484 = load i32, ptr %R19, align 4
  %zext.47 = zext i32 %.484 to i64
  %shl.25 = shl i64 %zext.47, 32
  %or.21 = or i64 %shl.25, %zext.46
  %inttoptr_bytes.17 = inttoptr i64 %or.21 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.485 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.486 = bitcast ptr %R18 to ptr
  store float %.485, ptr %.486, align 4
  %.489 = load i32, ptr %R15, align 4
  %.492 = xor i1 true, true
  %.493 = zext i1 %.479 to i32
  %.494 = zext i1 %.492 to i32
  %add.25 = add i32 %.489, %trunc32.17
  %add.26 = add i32 %add.25, 0
  %add.27 = add i32 %add.26, %.493
  %add.28 = add i32 %add.27, %.494
  store i32 %add.28, ptr %R11, align 4
  %.497 = load i32, ptr %R10, align 4
  %.499 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.497, i32 %trunc32.18)
  %.500 = extractvalue { i32, i1 } %.499, 0
  %.501 = extractvalue { i32, i1 } %.499, 1
  %.502 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.500, i32 0)
  %.503 = extractvalue { i32, i1 } %.502, 0
  %.504 = extractvalue { i32, i1 } %.502, 1
  %.505 = or i1 %.501, %.504
  store i32 %.503, ptr %R16, align 4
  %.509 = load i32, ptr %R14, align 4
  %zext.48 = zext i32 %.509 to i64
  %.510 = load i32, ptr %R15, align 4
  %zext.49 = zext i32 %.510 to i64
  %shl.26 = shl i64 %zext.49, 32
  %or.22 = or i64 %shl.26, %zext.48
  %inttoptr_bytes.18 = inttoptr i64 %or.22 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.511 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.512 = bitcast ptr %R14 to ptr
  store float %.511, ptr %.512, align 4
  %.515 = load i32, ptr %R11, align 4
  %.518 = xor i1 true, true
  %.519 = zext i1 %.505 to i32
  %.520 = zext i1 %.518 to i32
  %add.29 = add i32 %.515, %trunc32.17
  %add.30 = add i32 %add.29, 0
  %add.31 = add i32 %add.30, %.519
  %add.32 = add i32 %add.31, %.520
  store i32 %add.32, ptr %R17, align 4
  %.523 = load i32, ptr %R16, align 4
  %.525 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.523, i32 %trunc32.18)
  %.526 = extractvalue { i32, i1 } %.525, 0
  %.527 = extractvalue { i32, i1 } %.525, 1
  %.528 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.526, i32 0)
  %.529 = extractvalue { i32, i1 } %.528, 0
  %.530 = extractvalue { i32, i1 } %.528, 1
  %.531 = or i1 %.527, %.530
  store i32 %.529, ptr %R24, align 4
  %.535 = load i32, ptr %R10, align 4
  %zext.50 = zext i32 %.535 to i64
  %.536 = load i32, ptr %R11, align 4
  %zext.51 = zext i32 %.536 to i64
  %shl.27 = shl i64 %zext.51, 32
  %or.23 = or i64 %shl.27, %zext.50
  %inttoptr_bytes.19 = inttoptr i64 %or.23 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.537 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.538 = bitcast ptr %R10 to ptr
  store float %.537, ptr %.538, align 4
  %.541 = load i32, ptr %R17, align 4
  %.544 = xor i1 true, true
  %.545 = zext i1 %.531 to i32
  %.546 = zext i1 %.544 to i32
  %add.33 = add i32 %.541, %trunc32.17
  %add.34 = add i32 %add.33, 0
  %add.35 = add i32 %add.34, %.545
  %add.36 = add i32 %add.35, %.546
  %.549 = load i32, ptr %R24, align 4
  %.551 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.549, i32 %trunc32.18)
  %.552 = extractvalue { i32, i1 } %.551, 0
  %.553 = extractvalue { i32, i1 } %.551, 1
  %.554 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.552, i32 0)
  %.555 = extractvalue { i32, i1 } %.554, 0
  %.556 = extractvalue { i32, i1 } %.554, 1
  %.557 = or i1 %.553, %.556
  store i32 %.555, ptr %R26, align 4
  %.561 = load i32, ptr %R16, align 4
  %zext.52 = zext i32 %.561 to i64
  %.562 = load i32, ptr %R17, align 4
  %zext.53 = zext i32 %.562 to i64
  %shl.28 = shl i64 %zext.53, 32
  %or.24 = or i64 %shl.28, %zext.52
  %inttoptr_bytes.20 = inttoptr i64 %or.24 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.563 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.564 = bitcast ptr %R16 to ptr
  store float %.563, ptr %.564, align 4
  %.570 = xor i1 true, true
  %.571 = zext i1 %.557 to i32
  %.572 = zext i1 %.570 to i32
  %add.37 = add i32 %add.36, %trunc32.17
  %add.38 = add i32 %add.37, 0
  %add.39 = add i32 %add.38, %.571
  %add.40 = add i32 %add.39, %.572
  store i32 %add.40, ptr %R27, align 4
  %.575 = load i32, ptr %R26, align 4
  %.577 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.575, i32 %trunc32.18)
  %.578 = extractvalue { i32, i1 } %.577, 0
  %.579 = extractvalue { i32, i1 } %.577, 1
  %.580 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.578, i32 0)
  %.581 = extractvalue { i32, i1 } %.580, 0
  %.582 = extractvalue { i32, i1 } %.580, 1
  %.583 = or i1 %.579, %.582
  store i32 %.581, ptr %R30, align 4
  %.587 = load i32, ptr %R24, align 4
  %zext.54 = zext i32 %.587 to i64
  %zext.55 = zext i32 %add.36 to i64
  %shl.29 = shl i64 %zext.55, 32
  %or.25 = or i64 %shl.29, %zext.54
  %inttoptr_bytes.21 = inttoptr i64 %or.25 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.589 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.590 = bitcast ptr %R24 to ptr
  store float %.589, ptr %.590, align 4
  %.593 = load i32, ptr %R27, align 4
  %.596 = xor i1 true, true
  %.597 = zext i1 %.583 to i32
  %.598 = zext i1 %.596 to i32
  %add.41 = add i32 %.593, %trunc32.17
  %add.42 = add i32 %add.41, 0
  %add.43 = add i32 %add.42, %.597
  %add.44 = add i32 %add.43, %.598
  %.601 = load i32, ptr %R30, align 4
  %.603 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.601, i32 %trunc32.18)
  %.604 = extractvalue { i32, i1 } %.603, 0
  %.605 = extractvalue { i32, i1 } %.603, 1
  %.606 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.604, i32 0)
  %.607 = extractvalue { i32, i1 } %.606, 0
  %.608 = extractvalue { i32, i1 } %.606, 1
  %.609 = or i1 %.605, %.608
  store i32 %.607, ptr %R32, align 4
  %.613 = load i32, ptr %R26, align 4
  %zext.56 = zext i32 %.613 to i64
  %.614 = load i32, ptr %R27, align 4
  %zext.57 = zext i32 %.614 to i64
  %shl.30 = shl i64 %zext.57, 32
  %or.26 = or i64 %shl.30, %zext.56
  %inttoptr_bytes.22 = inttoptr i64 %or.26 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.615 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.616 = bitcast ptr %R26 to ptr
  store float %.615, ptr %.616, align 4
  %.622 = xor i1 true, true
  %.623 = zext i1 %.609 to i32
  %.624 = zext i1 %.622 to i32
  %add.45 = add i32 %add.44, %trunc32.17
  %add.46 = add i32 %add.45, 0
  %add.47 = add i32 %add.46, %.623
  %add.48 = add i32 %add.47, %.624
  %.627 = load i32, ptr %R32, align 4
  %.629 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.627, i32 %trunc32.18)
  %.630 = extractvalue { i32, i1 } %.629, 0
  %.631 = extractvalue { i32, i1 } %.629, 1
  %.632 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.630, i32 0)
  %.633 = extractvalue { i32, i1 } %.632, 0
  %.634 = extractvalue { i32, i1 } %.632, 1
  %.635 = or i1 %.631, %.634
  store i32 %.633, ptr %R22, align 4
  %.639 = load i32, ptr %R30, align 4
  %zext.58 = zext i32 %.639 to i64
  %zext.59 = zext i32 %add.44 to i64
  %shl.31 = shl i64 %zext.59, 32
  %or.27 = or i64 %shl.31, %zext.58
  %inttoptr_bytes.23 = inttoptr i64 %or.27 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.641 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.642 = bitcast ptr %R30 to ptr
  store float %.641, ptr %.642, align 4
  %.648 = xor i1 true, true
  %.649 = zext i1 %.635 to i32
  %.650 = zext i1 %.648 to i32
  %add.49 = add i32 %add.48, %trunc32.17
  %add.50 = add i32 %add.49, 0
  %add.51 = add i32 %add.50, %.649
  %add.52 = add i32 %add.51, %.650
  store i32 %add.52, ptr %R23, align 4
  %.653 = load i32, ptr %R22, align 4
  %.655 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.653, i32 %trunc32.18)
  %.656 = extractvalue { i32, i1 } %.655, 0
  %.657 = extractvalue { i32, i1 } %.655, 1
  %.658 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.656, i32 0)
  %.659 = extractvalue { i32, i1 } %.658, 0
  %.660 = extractvalue { i32, i1 } %.658, 1
  %.661 = or i1 %.657, %.660
  store i32 %.659, ptr %R12, align 4
  %.665 = load i32, ptr %R32, align 4
  %zext.60 = zext i32 %.665 to i64
  %zext.61 = zext i32 %add.48 to i64
  %shl.32 = shl i64 %zext.61, 32
  %or.28 = or i64 %shl.32, %zext.60
  %inttoptr_bytes.24 = inttoptr i64 %or.28 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.667 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.668 = bitcast ptr %R32 to ptr
  store float %.667, ptr %.668, align 4
  %.671 = load i32, ptr %R23, align 4
  %.674 = xor i1 true, true
  %.675 = zext i1 %.661 to i32
  %.676 = zext i1 %.674 to i32
  %add.53 = add i32 %.671, %trunc32.17
  %add.54 = add i32 %add.53, 0
  %add.55 = add i32 %add.54, %.675
  %add.56 = add i32 %add.55, %.676
  store i32 %add.56, ptr %R13, align 4
  %.679 = load i32, ptr %R22, align 4
  %zext.62 = zext i32 %.679 to i64
  %.680 = load i32, ptr %R23, align 4
  %zext.63 = zext i32 %.680 to i64
  %shl.33 = shl i64 %zext.63, 32
  %or.29 = or i64 %shl.33, %zext.62
  %inttoptr_bytes.25 = inttoptr i64 %or.29 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.681 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.682 = bitcast ptr %R22 to ptr
  store float %.681, ptr %.682, align 4
  %.685 = load i32, ptr %R12, align 4
  %zext.64 = zext i32 %.685 to i64
  %.686 = load i32, ptr %R13, align 4
  %zext.65 = zext i32 %.686 to i64
  %shl.34 = shl i64 %zext.65, 32
  %or.30 = or i64 %shl.34, %zext.64
  %inttoptr_bytes.26 = inttoptr i64 %or.30 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.687 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.688 = bitcast ptr %R15 to ptr
  store float %.687, ptr %.688, align 4
  %.691 = load i32, ptr %R12, align 4
  %zext.66 = zext i32 %.691 to i64
  %.692 = load i32, ptr %R13, align 4
  %zext.67 = zext i32 %.692 to i64
  %shl.35 = shl i64 %zext.67, 32
  %or.31 = or i64 %shl.35, %zext.66
  %sext_UR4 = sext i32 %trunc32.18 to i64
  %base_plus_reg_offset = add i64 %or.31, %sext_UR4
  %inttoptr_bytes.27 = inttoptr i64 %base_plus_reg_offset to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.693 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.694 = bitcast ptr %R17 to ptr
  store float %.693, ptr %.694, align 4
  %.698 = add i32 %R42.0, -4
  %.699 = add i32 %.698, 0
  %cmp.4 = icmp ne i32 %.699, 0
  %.705 = and i1 %cmp.4, true
  %.709 = load i32, ptr %R28, align 4
  %.710 = add i32 %.709, 4
  %.711 = add i32 %.710, 0
  store i32 %.711, ptr %R28, align 4
  %.714 = load float, ptr %R35, align 4
  %.715 = load float, ptr %R40, align 4
  %.716 = load float, ptr %R2, align 4
  %fmul = fmul float %.714, %.715
  %fadd.4 = fadd float %fmul, %.716
  %.717 = bitcast ptr %R40 to ptr
  store float %fadd.4, ptr %.717, align 4
  %.720 = load float, ptr %R36, align 4
  %.721 = load float, ptr %R35, align 4
  %.722 = load float, ptr %R3, align 4
  %fmul.1 = fmul float %.720, %.721
  %fadd.5 = fadd float %fmul.1, %.722
  %.723 = bitcast ptr %R36 to ptr
  store float %fadd.5, ptr %.723, align 4
  %.726 = load float, ptr %R35, align 4
  %.727 = load float, ptr %R38, align 4
  %.728 = load float, ptr %R0, align 4
  %fmul.2 = fmul float %.726, %.727
  %fadd.6 = fadd float %fmul.2, %.728
  %.729 = bitcast ptr %R38 to ptr
  store float %fadd.6, ptr %.729, align 4
  %.732 = load float, ptr %R35, align 4
  %.733 = load float, ptr %R41, align 4
  %.734 = load float, ptr %R8, align 4
  %fmul.3 = fmul float %.732, %.733
  %fadd.7 = fadd float %fmul.3, %.734
  %.735 = bitcast ptr %R8 to ptr
  store float %fadd.7, ptr %.735, align 4
  %.738 = load float, ptr %R43, align 4
  %.739 = load float, ptr %R29, align 4
  %.740 = load float, ptr %R36, align 4
  %fmul.4 = fmul float %.738, %.739
  %fadd.8 = fadd float %fmul.4, %.740
  %.741 = bitcast ptr %R36 to ptr
  store float %fadd.8, ptr %.741, align 4
  %.744 = load float, ptr %R29, align 4
  %.745 = load float, ptr %R18, align 4
  %.746 = load float, ptr %R40, align 4
  %fmul.5 = fmul float %.744, %.745
  %fadd.9 = fadd float %fmul.5, %.746
  %.747 = bitcast ptr %R18 to ptr
  store float %fadd.9, ptr %.747, align 4
  %.750 = load float, ptr %R29, align 4
  %.751 = load float, ptr %R14, align 4
  %.752 = load float, ptr %R38, align 4
  %fmul.6 = fmul float %.750, %.751
  %fadd.10 = fadd float %fmul.6, %.752
  %.753 = bitcast ptr %R14 to ptr
  store float %fadd.10, ptr %.753, align 4
  %.756 = load float, ptr %R29, align 4
  %.757 = load float, ptr %R10, align 4
  %.758 = load float, ptr %R8, align 4
  %fmul.7 = fmul float %.756, %.757
  %fadd.11 = fadd float %fmul.7, %.758
  %.759 = bitcast ptr %R8 to ptr
  store float %fadd.11, ptr %.759, align 4
  %.762 = load float, ptr %R16, align 4
  %.763 = load float, ptr %R21, align 4
  %.764 = load float, ptr %R36, align 4
  %fmul.8 = fmul float %.762, %.763
  %fadd.12 = fadd float %fmul.8, %.764
  %.765 = bitcast ptr %R3 to ptr
  store float %fadd.12, ptr %.765, align 4
  %.768 = load float, ptr %R21, align 4
  %.769 = load float, ptr %R24, align 4
  %.770 = load float, ptr %R18, align 4
  %fmul.9 = fmul float %.768, %.769
  %fadd.13 = fadd float %fmul.9, %.770
  %.771 = bitcast ptr %R11 to ptr
  store float %fadd.13, ptr %.771, align 4
  %.774 = load float, ptr %R21, align 4
  %.775 = load float, ptr %R26, align 4
  %.776 = load float, ptr %R14, align 4
  %fmul.10 = fmul float %.774, %.775
  %fadd.14 = fadd float %fmul.10, %.776
  %.777 = bitcast ptr %R13 to ptr
  store float %fadd.14, ptr %.777, align 4
  %.780 = load float, ptr %R21, align 4
  %.781 = load float, ptr %R30, align 4
  %.782 = load float, ptr %R8, align 4
  %fmul.11 = fmul float %.780, %.781
  %fadd.15 = fadd float %fmul.11, %.782
  %.783 = bitcast ptr %R21 to ptr
  store float %fadd.15, ptr %.783, align 4
  %.786 = load float, ptr %R32, align 4
  %.787 = load float, ptr %R34, align 4
  %.788 = load float, ptr %R3, align 4
  %fmul.12 = fmul float %.786, %.787
  %fadd.16 = fadd float %fmul.12, %.788
  %.789 = bitcast ptr %R3 to ptr
  store float %fadd.16, ptr %.789, align 4
  %.792 = load float, ptr %R34, align 4
  %.793 = load float, ptr %R22, align 4
  %.794 = load float, ptr %R11, align 4
  %fmul.13 = fmul float %.792, %.793
  %fadd.17 = fadd float %fmul.13, %.794
  %.795 = bitcast ptr %R2 to ptr
  store float %fadd.17, ptr %.795, align 4
  %.798 = load float, ptr %R34, align 4
  %.799 = load float, ptr %R15, align 4
  %.800 = load float, ptr %R13, align 4
  %fmul.14 = fmul float %.798, %.799
  %fadd.18 = fadd float %fmul.14, %.800
  %.801 = bitcast ptr %R0 to ptr
  store float %fadd.18, ptr %.801, align 4
  %.804 = load float, ptr %R34, align 4
  %.805 = load float, ptr %R17, align 4
  %.806 = load float, ptr %R21, align 4
  %fmul.15 = fmul float %.804, %.805
  %fadd.19 = fadd float %fmul.15, %.806
  %.807 = bitcast ptr %R8 to ptr
  store float %fadd.19, ptr %.807, align 4
  %.811 = icmp eq i1 %.705, true
  br i1 %.811, label %.L_x_2, label %.L_x_1.loopexit

.L_x_1.loopexit:                                  ; preds = %.L_x_2
  br label %.L_x_1

.L_x_1:                                           ; preds = %.L_x_1.loopexit, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250
  %P1.1 = phi i1 [ %.235, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250 ], [ %.705, %.L_x_1.loopexit ]
  %.815 = icmp ne i1 %.225, true
  br i1 %.815, label %.L_x_0, label %.L_x_1_split_0x07b0

.L_x_1_split_0x07b0:                              ; preds = %.L_x_1
  %.818 = load i32, ptr %R7, align 4
  %.819 = load i32, ptr %R28, align 4
  %imad_mul.18 = mul i32 %.818, %Arg_10
  %imad_add.18 = add i32 %imad_mul.18, %.819
  store i32 %imad_add.18, ptr %R10, align 4
  %.822 = load i32, ptr %R20, align 4
  %.823 = sub i32 0, %.822
  %.824 = add i32 %.823, 0
  %.825 = add i32 %.824, 0
  store i32 %.825, ptr %R20, align 4
  %.828 = load i32, ptr %R28, align 4
  %imad_mul.19 = mul i32 %.828, %Arg_11
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
  %.836 = load i32, ptr %R10, align 4
  %.837 = load i32, ptr %R9, align 4
  %imad_ext1.10 = zext i32 %.836 to i64
  %imad_ext2.10 = zext i32 %.837 to i64
  %imad_mul.20 = mul i64 %imad_ext1.10, %imad_ext2.10
  %.838 = ptrtoint ptr %Arg_0 to i64
  %imad_add.20 = add i64 %imad_mul.20, %.838
  %.839 = and i64 %imad_add.20, -4294967296
  %.840 = lshr i64 %.839, 32
  %trunc32.25 = trunc i64 %.840 to i32
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
  %.848 = load i32, ptr %R28, align 4
  %.849 = load i32, ptr %R5, align 4
  %imad_mul.21 = mul i32 %.848, 4
  %imad_add.21 = add i32 %imad_mul.21, %.849
  store i32 %imad_add.21, ptr %R13, align 4
  %.852 = load i32, ptr %R10, align 4
  store i32 %.852, ptr %R12, align 4
  %.855 = load i32, ptr %R11, align 4
  %imad_mul.22 = mul i32 0, 0
  %imad_add.22 = add i32 %imad_mul.22, %.855
  store i32 %imad_add.22, ptr %R23, align 4
  %.858 = load i32, ptr %R4, align 4
  %nvvm_blockdim_x.1 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %.859 = load i32, ptr %R13, align 4
  %imad_mul.23 = mul i32 %.858, %nvvm_blockdim_x.1
  %imad_add.23 = add i32 %imad_mul.23, %.859
  store i32 %imad_add.23, ptr %R18, align 4
  br label %.L_x_3

.L_x_3:                                           ; preds = %.L_x_3, %.L_x_1_split_0x07b0
  %.863 = load i32, ptr %R18, align 4
  %.864 = load i32, ptr %R9, align 4
  %imad_ext1.11 = zext i32 %.863 to i64
  %imad_ext2.11 = zext i32 %.864 to i64
  %imad_mul.24 = mul i64 %imad_ext1.11, %imad_ext2.11
  %.865 = ptrtoint ptr %Arg_3 to i64
  %imad_add.24 = add i64 %imad_mul.24, %.865
  %.866 = and i64 %imad_add.24, -4294967296
  %.867 = lshr i64 %.866, 32
  %trunc32.28 = trunc i64 %.867 to i32
  %trunc32.29 = trunc i64 %imad_add.24 to i32
  store i32 %trunc32.29, ptr %R10, align 4
  store i32 %trunc32.28, ptr %R11, align 4
  %.871 = load i32, ptr %R23, align 4
  %imad_mul.25 = mul i32 0, 0
  %imad_add.25 = add i32 %imad_mul.25, %.871
  store i32 %imad_add.25, ptr %R13, align 4
  %.874 = load i32, ptr %R10, align 4
  %.876 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.874, i32 %trunc32.27)
  %.877 = extractvalue { i32, i1 } %.876, 0
  %.878 = extractvalue { i32, i1 } %.876, 1
  %.879 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.877, i32 0)
  %.880 = extractvalue { i32, i1 } %.879, 0
  %.881 = extractvalue { i32, i1 } %.879, 1
  %.882 = or i1 %.878, %.881
  store i32 %.880, ptr %R14, align 4
  %.886 = load i32, ptr %R10, align 4
  %zext.74 = zext i32 %.886 to i64
  %.887 = load i32, ptr %R11, align 4
  %zext.75 = zext i32 %.887 to i64
  %shl.40 = shl i64 %zext.75, 32
  %or.34 = or i64 %shl.40, %zext.74
  %inttoptr_bytes.28 = inttoptr i64 %or.34 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.888 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.889 = bitcast ptr %R10 to ptr
  store float %.888, ptr %.889, align 4
  %.892 = load i32, ptr %R11, align 4
  %.895 = xor i1 true, true
  %.896 = zext i1 %.882 to i32
  %.897 = zext i1 %.895 to i32
  %add.57 = add i32 %.892, %trunc32.24
  %add.58 = add i32 %add.57, 0
  %add.59 = add i32 %add.58, %.896
  %add.60 = add i32 %add.59, %.897
  store i32 %add.60, ptr %R15, align 4
  %.900 = load i32, ptr %R14, align 4
  %.902 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.900, i32 %trunc32.27)
  %.903 = extractvalue { i32, i1 } %.902, 0
  %.904 = extractvalue { i32, i1 } %.902, 1
  %.905 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.903, i32 0)
  %.906 = extractvalue { i32, i1 } %.905, 0
  %.907 = extractvalue { i32, i1 } %.905, 1
  %.908 = or i1 %.904, %.907
  store i32 %.906, ptr %R16, align 4
  %.912 = load i32, ptr %R12, align 4
  %zext.76 = zext i32 %.912 to i64
  %.913 = load i32, ptr %R13, align 4
  %zext.77 = zext i32 %.913 to i64
  %shl.41 = shl i64 %zext.77, 32
  %or.35 = or i64 %shl.41, %zext.76
  %inttoptr_bytes.29 = inttoptr i64 %or.35 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.914 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.915 = bitcast ptr %R13 to ptr
  store float %.914, ptr %.915, align 4
  %.918 = load i32, ptr %R15, align 4
  %.921 = xor i1 true, true
  %.922 = zext i1 %.908 to i32
  %.923 = zext i1 %.921 to i32
  %add.61 = add i32 %.918, %trunc32.24
  %add.62 = add i32 %add.61, 0
  %add.63 = add i32 %add.62, %.922
  %add.64 = add i32 %add.63, %.923
  store i32 %add.64, ptr %R17, align 4
  %.926 = load i32, ptr %R14, align 4
  %zext.78 = zext i32 %.926 to i64
  %.927 = load i32, ptr %R15, align 4
  %zext.79 = zext i32 %.927 to i64
  %shl.42 = shl i64 %zext.79, 32
  %or.36 = or i64 %shl.42, %zext.78
  %inttoptr_bytes.30 = inttoptr i64 %or.36 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.928 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.929 = bitcast ptr %R14 to ptr
  store float %.928, ptr %.929, align 4
  %.932 = load i32, ptr %R16, align 4
  %zext.80 = zext i32 %.932 to i64
  %.933 = load i32, ptr %R17, align 4
  %zext.81 = zext i32 %.933 to i64
  %shl.43 = shl i64 %zext.81, 32
  %or.37 = or i64 %shl.43, %zext.80
  %inttoptr_bytes.31 = inttoptr i64 %or.37 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.934 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.935 = bitcast ptr %R19 to ptr
  store float %.934, ptr %.935, align 4
  %.938 = load i32, ptr %R16, align 4
  %zext.82 = zext i32 %.938 to i64
  %.939 = load i32, ptr %R17, align 4
  %zext.83 = zext i32 %.939 to i64
  %shl.44 = shl i64 %zext.83, 32
  %or.38 = or i64 %shl.44, %zext.82
  %sext_UR4.1 = sext i32 %trunc32.27 to i64
  %base_plus_reg_offset.1 = add i64 %or.38, %sext_UR4.1
  %inttoptr_bytes.32 = inttoptr i64 %base_plus_reg_offset.1 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.940 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.941 = bitcast ptr %R21 to ptr
  store float %.940, ptr %.941, align 4
  %.944 = load i32, ptr %R20, align 4
  %.945 = add i32 %.944, 1
  %.946 = add i32 %.945, 0
  store i32 %.946, ptr %R20, align 4
  %.949 = load i32, ptr %R20, align 4
  %cmp.5 = icmp ne i32 %.949, 0
  %.952 = and i1 %cmp.5, true
  %.958 = load i32, ptr %R12, align 4
  %.959 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.958, i32 4)
  %.960 = extractvalue { i32, i1 } %.959, 0
  %.961 = extractvalue { i32, i1 } %.959, 1
  %.962 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.960, i32 0)
  %.963 = extractvalue { i32, i1 } %.962, 0
  %.964 = extractvalue { i32, i1 } %.962, 1
  %.965 = or i1 %.961, %.964
  store i32 %.963, ptr %R12, align 4
  %.970 = load i32, ptr %R18, align 4
  %imad_mul.26 = mul i32 %Arg_11, 4
  %imad_add.26 = add i32 %imad_mul.26, %.970
  store i32 %imad_add.26, ptr %R18, align 4
  %.973 = load i32, ptr %R23, align 4
  %.975 = xor i1 true, true
  %.976 = zext i1 %.965 to i32
  %.977 = zext i1 %.975 to i32
  %add.65 = add i32 0, %.973
  %add.66 = add i32 %add.65, 0
  %add.67 = add i32 %add.66, %.976
  %add.68 = add i32 %add.67, %.977
  store i32 %add.68, ptr %R23, align 4
  %.980 = load float, ptr %R10, align 4
  %.981 = load float, ptr %R13, align 4
  %.982 = load float, ptr %R3, align 4
  %fmul.16 = fmul float %.980, %.981
  %fadd.20 = fadd float %fmul.16, %.982
  %.983 = bitcast ptr %R3 to ptr
  store float %fadd.20, ptr %.983, align 4
  %.986 = load float, ptr %R13, align 4
  %.987 = load float, ptr %R14, align 4
  %.988 = load float, ptr %R2, align 4
  %fmul.17 = fmul float %.986, %.987
  %fadd.21 = fadd float %fmul.17, %.988
  %.989 = bitcast ptr %R2 to ptr
  store float %fadd.21, ptr %.989, align 4
  %.992 = load float, ptr %R13, align 4
  %.993 = load float, ptr %R19, align 4
  %.994 = load float, ptr %R0, align 4
  %fmul.18 = fmul float %.992, %.993
  %fadd.22 = fadd float %fmul.18, %.994
  %.995 = bitcast ptr %R0 to ptr
  store float %fadd.22, ptr %.995, align 4
  %.998 = load float, ptr %R13, align 4
  %.999 = load float, ptr %R21, align 4
  %.1000 = load float, ptr %R8, align 4
  %fmul.19 = fmul float %.998, %.999
  %fadd.23 = fadd float %fmul.19, %.1000
  %.1001 = bitcast ptr %R8 to ptr
  store float %fadd.23, ptr %.1001, align 4
  %.1005 = icmp eq i1 %.952, true
  br i1 %.1005, label %.L_x_3, label %.L_x_0.loopexit

.L_x_0.loopexit:                                  ; preds = %.L_x_3
  br label %.L_x_0

.L_x_0:                                           ; preds = %.L_x_0.loopexit, %.L_x_1, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0
  %P1.0 = phi i1 [ undef, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0 ], [ %P1.1, %.L_x_1 ], [ %.965, %.L_x_0.loopexit ]
  %P0.0 = phi i1 [ %.186, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0 ], [ %.225, %.L_x_1 ], [ %.952, %.L_x_0.loopexit ]
  %RZ.0 = phi i32 [ 0, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0 ], [ %.223, %.L_x_1 ], [ %.223, %.L_x_0.loopexit ]
  %.1022 = icmp ne i1 %P0.0, true
  br i1 %.1022, label %.L_x_4, label %.L_x_0_split_0x09f0

.L_x_0_split_0x09f0:                              ; preds = %.L_x_0
  %imad_mul.27 = mul i32 0, 0
  %imad_add.27 = add i32 %imad_mul.27, 0
  store i32 %imad_add.27, ptr %R22, align 4
  %.1049 = and i32 %Arg_11, 3
  %.1059 = icmp ne i1 %P1.0, true
  br i1 %.1059, label %.L_x_5, label %.L_x_0_split_0x0a70

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
  %.1076 = sub i32 0, %.1049
  %.1078 = add i32 %.1076, %Arg_11
  %.1079 = add i32 %.1078, 0
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
  %UR7.0 = phi i32 [ %.1079, %.L_x_0_split_0x0a70 ], [ %.1520, %.L_x_6 ]
  %.1088 = load i32, ptr %R22, align 4
  %imad_shl = shl i32 %.1088, 4
  %imad_add.28 = add i32 %imad_shl, 0
  store i32 %imad_add.28, ptr %R11, align 4
  %.1091 = load i32, ptr %R7, align 4
  %.1092 = load i32, ptr %R22, align 4
  %imad_mul.28 = mul i32 %.1091, %Arg_11
  %imad_add.29 = add i32 %imad_mul.28, %.1092
  store i32 %imad_add.29, ptr %R28, align 4
  %.1095 = load i32, ptr %R11, align 4
  %imad_mul.29 = mul i32 %.1095, %Arg_11
  %imad_add.30 = add i32 %imad_mul.29, %imad_add.1
  store i32 %imad_add.30, ptr %R30, align 4
  %.1099 = load i32, ptr %R28, align 4
  %.1100 = load i32, ptr %R9, align 4
  %imad_ext1.12 = zext i32 %.1099 to i64
  %imad_ext2.12 = zext i32 %.1100 to i64
  %imad_mul.30 = mul i64 %imad_ext1.12, %imad_ext2.12
  %.1101 = ptrtoint ptr %Arg_1 to i64
  %imad_add.31 = add i64 %imad_mul.30, %.1101
  %.1102 = and i64 %imad_add.31, -4294967296
  %.1103 = lshr i64 %.1102, 32
  %trunc32.33 = trunc i64 %.1103 to i32
  %trunc32.34 = trunc i64 %imad_add.31 to i32
  store i32 %trunc32.34, ptr %R28, align 4
  store i32 %trunc32.33, ptr %R29, align 4
  %.1107 = load i32, ptr %R30, align 4
  %.1108 = load i32, ptr %R9, align 4
  %imad_ext1.13 = zext i32 %.1107 to i64
  %imad_ext2.13 = zext i32 %.1108 to i64
  %imad_mul.31 = mul i64 %imad_ext1.13, %imad_ext2.13
  %.1109 = ptrtoint ptr %Arg_4 to i64
  %imad_add.32 = add i64 %imad_mul.31, %.1109
  %.1110 = and i64 %imad_add.32, -4294967296
  %.1111 = lshr i64 %.1110, 32
  %trunc32.35 = trunc i64 %.1111 to i32
  %trunc32.36 = trunc i64 %imad_add.32 to i32
  store i32 %trunc32.36, ptr %R30, align 4
  %.1115 = load i32, ptr %R28, align 4
  %zext.93 = zext i32 %.1115 to i64
  %.1116 = load i32, ptr %R29, align 4
  %zext.94 = zext i32 %.1116 to i64
  %shl.50 = shl i64 %zext.94, 32
  %or.42 = or i64 %shl.50, %zext.93
  %inttoptr_bytes.33 = inttoptr i64 %or.42 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.1117 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.1118 = bitcast ptr %R35 to ptr
  store float %.1117, ptr %.1118, align 4
  %.1121 = load i32, ptr %R30, align 4
  %.1123 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1121, i32 %trunc32.31)
  %.1124 = extractvalue { i32, i1 } %.1123, 0
  %.1125 = extractvalue { i32, i1 } %.1123, 1
  %.1126 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1124, i32 0)
  %.1127 = extractvalue { i32, i1 } %.1126, 0
  %.1128 = extractvalue { i32, i1 } %.1126, 1
  %.1129 = or i1 %.1125, %.1128
  store i32 %.1127, ptr %R32, align 4
  %.1133 = load i32, ptr %R28, align 4
  %zext.95 = zext i32 %.1133 to i64
  %.1134 = load i32, ptr %R29, align 4
  %zext.96 = zext i32 %.1134 to i64
  %shl.51 = shl i64 %zext.96, 32
  %or.43 = or i64 %shl.51, %zext.95
  %ptr_plus_imm.3 = add i64 %or.43, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.1135 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.1136 = bitcast ptr %R26 to ptr
  store float %.1135, ptr %.1136, align 4
  %.1142 = xor i1 true, true
  %.1143 = zext i1 %.1129 to i32
  %.1144 = zext i1 %.1142 to i32
  %add.69 = add i32 %trunc32.35, %trunc32.32
  %add.70 = add i32 %add.69, 0
  %add.71 = add i32 %add.70, %.1143
  %add.72 = add i32 %add.71, %.1144
  %.1147 = load i32, ptr %R32, align 4
  %.1149 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1147, i32 %trunc32.31)
  %.1150 = extractvalue { i32, i1 } %.1149, 0
  %.1151 = extractvalue { i32, i1 } %.1149, 1
  %.1152 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1150, i32 0)
  %.1153 = extractvalue { i32, i1 } %.1152, 0
  %.1154 = extractvalue { i32, i1 } %.1152, 1
  %.1155 = or i1 %.1151, %.1154
  store i32 %.1153, ptr %R36, align 4
  %.1159 = load i32, ptr %R28, align 4
  %zext.97 = zext i32 %.1159 to i64
  %.1160 = load i32, ptr %R29, align 4
  %zext.98 = zext i32 %.1160 to i64
  %shl.52 = shl i64 %zext.98, 32
  %or.44 = or i64 %shl.52, %zext.97
  %ptr_plus_imm.4 = add i64 %or.44, 8
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.1161 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.1162 = bitcast ptr %R23 to ptr
  store float %.1161, ptr %.1162, align 4
  %.1168 = xor i1 true, true
  %.1169 = zext i1 %.1155 to i32
  %.1170 = zext i1 %.1168 to i32
  %add.73 = add i32 %add.72, %trunc32.32
  %add.74 = add i32 %add.73, 0
  %add.75 = add i32 %add.74, %.1169
  %add.76 = add i32 %add.75, %.1170
  %.1173 = load i32, ptr %R28, align 4
  %zext.99 = zext i32 %.1173 to i64
  %.1174 = load i32, ptr %R29, align 4
  %zext.100 = zext i32 %.1174 to i64
  %shl.53 = shl i64 %zext.100, 32
  %or.45 = or i64 %shl.53, %zext.99
  %ptr_plus_imm.5 = add i64 %or.45, 12
  %inttoptr_bytes.36 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.1175 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.1176 = bitcast ptr %R27 to ptr
  store float %.1175, ptr %.1176, align 4
  %.1179 = load i32, ptr %R36, align 4
  %.1181 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1179, i32 %trunc32.31)
  %.1182 = extractvalue { i32, i1 } %.1181, 0
  %.1183 = extractvalue { i32, i1 } %.1181, 1
  %.1184 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1182, i32 0)
  %.1185 = extractvalue { i32, i1 } %.1184, 0
  %.1186 = extractvalue { i32, i1 } %.1184, 1
  %.1187 = or i1 %.1183, %.1186
  store i32 %.1185, ptr %R38, align 4
  %.1191 = load i32, ptr %R30, align 4
  %zext.101 = zext i32 %.1191 to i64
  %zext.102 = zext i32 %trunc32.35 to i64
  %shl.54 = shl i64 %zext.102, 32
  %or.46 = or i64 %shl.54, %zext.101
  %inttoptr_bytes.37 = inttoptr i64 %or.46 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.1193 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.1194 = bitcast ptr %R34 to ptr
  store float %.1193, ptr %.1194, align 4
  %.1200 = xor i1 true, true
  %.1201 = zext i1 %.1187 to i32
  %.1202 = zext i1 %.1200 to i32
  %add.77 = add i32 %add.76, %trunc32.32
  %add.78 = add i32 %add.77, 0
  %add.79 = add i32 %add.78, %.1201
  %add.80 = add i32 %add.79, %.1202
  %.1205 = load i32, ptr %R38, align 4
  %.1207 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1205, i32 %trunc32.31)
  %.1208 = extractvalue { i32, i1 } %.1207, 0
  %.1209 = extractvalue { i32, i1 } %.1207, 1
  %.1210 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1208, i32 0)
  %.1211 = extractvalue { i32, i1 } %.1210, 0
  %.1212 = extractvalue { i32, i1 } %.1210, 1
  %.1213 = or i1 %.1209, %.1212
  store i32 %.1211, ptr %R12, align 4
  %.1217 = load i32, ptr %R32, align 4
  %zext.103 = zext i32 %.1217 to i64
  %zext.104 = zext i32 %add.72 to i64
  %shl.55 = shl i64 %zext.104, 32
  %or.47 = or i64 %shl.55, %zext.103
  %inttoptr_bytes.38 = inttoptr i64 %or.47 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.1219 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.1220 = bitcast ptr %R40 to ptr
  store float %.1219, ptr %.1220, align 4
  %.1226 = xor i1 true, true
  %.1227 = zext i1 %.1213 to i32
  %.1228 = zext i1 %.1226 to i32
  %add.81 = add i32 %add.80, %trunc32.32
  %add.82 = add i32 %add.81, 0
  %add.83 = add i32 %add.82, %.1227
  %add.84 = add i32 %add.83, %.1228
  store i32 %add.84, ptr %R13, align 4
  %.1231 = load i32, ptr %R36, align 4
  %zext.105 = zext i32 %.1231 to i64
  %zext.106 = zext i32 %add.76 to i64
  %shl.56 = shl i64 %zext.106, 32
  %or.48 = or i64 %shl.56, %zext.105
  %inttoptr_bytes.39 = inttoptr i64 %or.48 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.1233 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.1234 = bitcast ptr %R36 to ptr
  store float %.1233, ptr %.1234, align 4
  %.1237 = load i32, ptr %R12, align 4
  %.1239 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1237, i32 %trunc32.31)
  %.1240 = extractvalue { i32, i1 } %.1239, 0
  %.1241 = extractvalue { i32, i1 } %.1239, 1
  %.1242 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1240, i32 0)
  %.1243 = extractvalue { i32, i1 } %.1242, 0
  %.1244 = extractvalue { i32, i1 } %.1242, 1
  %.1245 = or i1 %.1241, %.1244
  store i32 %.1243, ptr %R18, align 4
  %.1249 = load i32, ptr %R38, align 4
  %zext.107 = zext i32 %.1249 to i64
  %zext.108 = zext i32 %add.80 to i64
  %shl.57 = shl i64 %zext.108, 32
  %or.49 = or i64 %shl.57, %zext.107
  %inttoptr_bytes.40 = inttoptr i64 %or.49 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.1251 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.1252 = bitcast ptr %R38 to ptr
  store float %.1251, ptr %.1252, align 4
  %.1255 = load i32, ptr %R13, align 4
  %.1258 = xor i1 true, true
  %.1259 = zext i1 %.1245 to i32
  %.1260 = zext i1 %.1258 to i32
  %add.85 = add i32 %.1255, %trunc32.32
  %add.86 = add i32 %add.85, 0
  %add.87 = add i32 %add.86, %.1259
  %add.88 = add i32 %add.87, %.1260
  store i32 %add.88, ptr %R19, align 4
  %.1263 = load i32, ptr %R18, align 4
  %.1265 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1263, i32 %trunc32.31)
  %.1266 = extractvalue { i32, i1 } %.1265, 0
  %.1267 = extractvalue { i32, i1 } %.1265, 1
  %.1268 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1266, i32 0)
  %.1269 = extractvalue { i32, i1 } %.1268, 0
  %.1270 = extractvalue { i32, i1 } %.1268, 1
  %.1271 = or i1 %.1267, %.1270
  store i32 %.1269, ptr %R14, align 4
  %.1275 = load i32, ptr %R12, align 4
  %zext.109 = zext i32 %.1275 to i64
  %.1276 = load i32, ptr %R13, align 4
  %zext.110 = zext i32 %.1276 to i64
  %shl.58 = shl i64 %zext.110, 32
  %or.50 = or i64 %shl.58, %zext.109
  %inttoptr_bytes.41 = inttoptr i64 %or.50 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.1277 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.1278 = bitcast ptr %R41 to ptr
  store float %.1277, ptr %.1278, align 4
  %.1281 = load i32, ptr %R19, align 4
  %.1284 = xor i1 true, true
  %.1285 = zext i1 %.1271 to i32
  %.1286 = zext i1 %.1284 to i32
  %add.89 = add i32 %.1281, %trunc32.32
  %add.90 = add i32 %add.89, 0
  %add.91 = add i32 %add.90, %.1285
  %add.92 = add i32 %add.91, %.1286
  store i32 %add.92, ptr %R15, align 4
  %.1289 = load i32, ptr %R14, align 4
  %.1291 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1289, i32 %trunc32.31)
  %.1292 = extractvalue { i32, i1 } %.1291, 0
  %.1293 = extractvalue { i32, i1 } %.1291, 1
  %.1294 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1292, i32 0)
  %.1295 = extractvalue { i32, i1 } %.1294, 0
  %.1296 = extractvalue { i32, i1 } %.1294, 1
  %.1297 = or i1 %.1293, %.1296
  store i32 %.1295, ptr %R10, align 4
  %.1301 = load i32, ptr %R18, align 4
  %zext.111 = zext i32 %.1301 to i64
  %.1302 = load i32, ptr %R19, align 4
  %zext.112 = zext i32 %.1302 to i64
  %shl.59 = shl i64 %zext.112, 32
  %or.51 = or i64 %shl.59, %zext.111
  %inttoptr_bytes.42 = inttoptr i64 %or.51 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.1303 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.1304 = bitcast ptr %R18 to ptr
  store float %.1303, ptr %.1304, align 4
  %.1307 = load i32, ptr %R15, align 4
  %.1310 = xor i1 true, true
  %.1311 = zext i1 %.1297 to i32
  %.1312 = zext i1 %.1310 to i32
  %add.93 = add i32 %.1307, %trunc32.32
  %add.94 = add i32 %add.93, 0
  %add.95 = add i32 %add.94, %.1311
  %add.96 = add i32 %add.95, %.1312
  store i32 %add.96, ptr %R11, align 4
  %.1315 = load i32, ptr %R10, align 4
  %.1317 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1315, i32 %trunc32.31)
  %.1318 = extractvalue { i32, i1 } %.1317, 0
  %.1319 = extractvalue { i32, i1 } %.1317, 1
  %.1320 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1318, i32 0)
  %.1321 = extractvalue { i32, i1 } %.1320, 0
  %.1322 = extractvalue { i32, i1 } %.1320, 1
  %.1323 = or i1 %.1319, %.1322
  store i32 %.1321, ptr %R16, align 4
  %.1327 = load i32, ptr %R14, align 4
  %zext.113 = zext i32 %.1327 to i64
  %.1328 = load i32, ptr %R15, align 4
  %zext.114 = zext i32 %.1328 to i64
  %shl.60 = shl i64 %zext.114, 32
  %or.52 = or i64 %shl.60, %zext.113
  %inttoptr_bytes.43 = inttoptr i64 %or.52 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.1329 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.1330 = bitcast ptr %R14 to ptr
  store float %.1329, ptr %.1330, align 4
  %.1333 = load i32, ptr %R11, align 4
  %.1336 = xor i1 true, true
  %.1337 = zext i1 %.1323 to i32
  %.1338 = zext i1 %.1336 to i32
  %add.97 = add i32 %.1333, %trunc32.32
  %add.98 = add i32 %add.97, 0
  %add.99 = add i32 %add.98, %.1337
  %add.100 = add i32 %add.99, %.1338
  store i32 %add.100, ptr %R17, align 4
  %.1341 = load i32, ptr %R16, align 4
  %.1343 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1341, i32 %trunc32.31)
  %.1344 = extractvalue { i32, i1 } %.1343, 0
  %.1345 = extractvalue { i32, i1 } %.1343, 1
  %.1346 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1344, i32 0)
  %.1347 = extractvalue { i32, i1 } %.1346, 0
  %.1348 = extractvalue { i32, i1 } %.1346, 1
  %.1349 = or i1 %.1345, %.1348
  store i32 %.1347, ptr %R24, align 4
  %.1353 = load i32, ptr %R10, align 4
  %zext.115 = zext i32 %.1353 to i64
  %.1354 = load i32, ptr %R11, align 4
  %zext.116 = zext i32 %.1354 to i64
  %shl.61 = shl i64 %zext.116, 32
  %or.53 = or i64 %shl.61, %zext.115
  %inttoptr_bytes.44 = inttoptr i64 %or.53 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.1355 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.1356 = bitcast ptr %R10 to ptr
  store float %.1355, ptr %.1356, align 4
  %.1359 = load i32, ptr %R17, align 4
  %.1362 = xor i1 true, true
  %.1363 = zext i1 %.1349 to i32
  %.1364 = zext i1 %.1362 to i32
  %add.101 = add i32 %.1359, %trunc32.32
  %add.102 = add i32 %add.101, 0
  %add.103 = add i32 %add.102, %.1363
  %add.104 = add i32 %add.103, %.1364
  %.1367 = load i32, ptr %R24, align 4
  %.1369 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1367, i32 %trunc32.31)
  %.1370 = extractvalue { i32, i1 } %.1369, 0
  %.1371 = extractvalue { i32, i1 } %.1369, 1
  %.1372 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1370, i32 0)
  %.1373 = extractvalue { i32, i1 } %.1372, 0
  %.1374 = extractvalue { i32, i1 } %.1372, 1
  %.1375 = or i1 %.1371, %.1374
  store i32 %.1373, ptr %R20, align 4
  %.1379 = load i32, ptr %R16, align 4
  %zext.117 = zext i32 %.1379 to i64
  %.1380 = load i32, ptr %R17, align 4
  %zext.118 = zext i32 %.1380 to i64
  %shl.62 = shl i64 %zext.118, 32
  %or.54 = or i64 %shl.62, %zext.117
  %inttoptr_bytes.45 = inttoptr i64 %or.54 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.1381 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.1382 = bitcast ptr %R16 to ptr
  store float %.1381, ptr %.1382, align 4
  %.1388 = xor i1 true, true
  %.1389 = zext i1 %.1375 to i32
  %.1390 = zext i1 %.1388 to i32
  %add.105 = add i32 %add.104, %trunc32.32
  %add.106 = add i32 %add.105, 0
  %add.107 = add i32 %add.106, %.1389
  %add.108 = add i32 %add.107, %.1390
  store i32 %add.108, ptr %R21, align 4
  %.1393 = load i32, ptr %R20, align 4
  %.1395 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1393, i32 %trunc32.31)
  %.1396 = extractvalue { i32, i1 } %.1395, 0
  %.1397 = extractvalue { i32, i1 } %.1395, 1
  %.1398 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1396, i32 0)
  %.1399 = extractvalue { i32, i1 } %.1398, 0
  %.1400 = extractvalue { i32, i1 } %.1398, 1
  %.1401 = or i1 %.1397, %.1400
  store i32 %.1399, ptr %R28, align 4
  %.1405 = load i32, ptr %R24, align 4
  %zext.119 = zext i32 %.1405 to i64
  %zext.120 = zext i32 %add.104 to i64
  %shl.63 = shl i64 %zext.120, 32
  %or.55 = or i64 %shl.63, %zext.119
  %inttoptr_bytes.46 = inttoptr i64 %or.55 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.1407 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.1408 = bitcast ptr %R24 to ptr
  store float %.1407, ptr %.1408, align 4
  %.1411 = load i32, ptr %R21, align 4
  %.1414 = xor i1 true, true
  %.1415 = zext i1 %.1401 to i32
  %.1416 = zext i1 %.1414 to i32
  %add.109 = add i32 %.1411, %trunc32.32
  %add.110 = add i32 %add.109, 0
  %add.111 = add i32 %add.110, %.1415
  %add.112 = add i32 %add.111, %.1416
  store i32 %add.112, ptr %R29, align 4
  %.1419 = load i32, ptr %R28, align 4
  %.1421 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1419, i32 %trunc32.31)
  %.1422 = extractvalue { i32, i1 } %.1421, 0
  %.1423 = extractvalue { i32, i1 } %.1421, 1
  %.1424 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1422, i32 0)
  %.1425 = extractvalue { i32, i1 } %.1424, 0
  %.1426 = extractvalue { i32, i1 } %.1424, 1
  %.1427 = or i1 %.1423, %.1426
  store i32 %.1425, ptr %R30, align 4
  %.1431 = load i32, ptr %R20, align 4
  %zext.121 = zext i32 %.1431 to i64
  %.1432 = load i32, ptr %R21, align 4
  %zext.122 = zext i32 %.1432 to i64
  %shl.64 = shl i64 %zext.122, 32
  %or.56 = or i64 %shl.64, %zext.121
  %inttoptr_bytes.47 = inttoptr i64 %or.56 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.1433 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.1434 = bitcast ptr %R20 to ptr
  store float %.1433, ptr %.1434, align 4
  %.1437 = load i32, ptr %R29, align 4
  %.1440 = xor i1 true, true
  %.1441 = zext i1 %.1427 to i32
  %.1442 = zext i1 %.1440 to i32
  %add.113 = add i32 %.1437, %trunc32.32
  %add.114 = add i32 %add.113, 0
  %add.115 = add i32 %add.114, %.1441
  %add.116 = add i32 %add.115, %.1442
  %.1445 = load i32, ptr %R30, align 4
  %.1447 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1445, i32 %trunc32.31)
  %.1448 = extractvalue { i32, i1 } %.1447, 0
  %.1449 = extractvalue { i32, i1 } %.1447, 1
  %.1450 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1448, i32 0)
  %.1451 = extractvalue { i32, i1 } %.1450, 0
  %.1452 = extractvalue { i32, i1 } %.1450, 1
  %.1453 = or i1 %.1449, %.1452
  store i32 %.1451, ptr %R32, align 4
  %.1457 = load i32, ptr %R28, align 4
  %zext.123 = zext i32 %.1457 to i64
  %.1458 = load i32, ptr %R29, align 4
  %zext.124 = zext i32 %.1458 to i64
  %shl.65 = shl i64 %zext.124, 32
  %or.57 = or i64 %shl.65, %zext.123
  %inttoptr_bytes.48 = inttoptr i64 %or.57 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.1459 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.1460 = bitcast ptr %R28 to ptr
  store float %.1459, ptr %.1460, align 4
  %.1466 = xor i1 true, true
  %.1467 = zext i1 %.1453 to i32
  %.1468 = zext i1 %.1466 to i32
  %add.117 = add i32 %add.116, %trunc32.32
  %add.118 = add i32 %add.117, 0
  %add.119 = add i32 %add.118, %.1467
  %add.120 = add i32 %add.119, %.1468
  %.1471 = load i32, ptr %R32, align 4
  %.1473 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1471, i32 %trunc32.31)
  %.1474 = extractvalue { i32, i1 } %.1473, 0
  %.1475 = extractvalue { i32, i1 } %.1473, 1
  %.1476 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1474, i32 0)
  %.1477 = extractvalue { i32, i1 } %.1476, 0
  %.1478 = extractvalue { i32, i1 } %.1476, 1
  %.1479 = or i1 %.1475, %.1478
  store i32 %.1477, ptr %R12, align 4
  %.1486 = load i32, ptr %R30, align 4
  %zext.125 = zext i32 %.1486 to i64
  %zext.126 = zext i32 %add.116 to i64
  %shl.66 = shl i64 %zext.126, 32
  %or.58 = or i64 %shl.66, %zext.125
  %inttoptr_bytes.49 = inttoptr i64 %or.58 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.1488 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.1489 = bitcast ptr %R30 to ptr
  store float %.1488, ptr %.1489, align 4
  %.1495 = xor i1 true, true
  %.1496 = zext i1 %.1479 to i32
  %.1497 = zext i1 %.1495 to i32
  %add.121 = add i32 %add.120, %trunc32.32
  %add.122 = add i32 %add.121, 0
  %add.123 = add i32 %add.122, %.1496
  %add.124 = add i32 %add.123, %.1497
  store i32 %add.124, ptr %R13, align 4
  %.1500 = load i32, ptr %R32, align 4
  %zext.127 = zext i32 %.1500 to i64
  %zext.128 = zext i32 %add.120 to i64
  %shl.67 = shl i64 %zext.128, 32
  %or.59 = or i64 %shl.67, %zext.127
  %inttoptr_bytes.50 = inttoptr i64 %or.59 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.1502 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.1503 = bitcast ptr %R32 to ptr
  store float %.1502, ptr %.1503, align 4
  %.1506 = load i32, ptr %R12, align 4
  %zext.129 = zext i32 %.1506 to i64
  %.1507 = load i32, ptr %R13, align 4
  %zext.130 = zext i32 %.1507 to i64
  %shl.68 = shl i64 %zext.130, 32
  %or.60 = or i64 %shl.68, %zext.129
  %inttoptr_bytes.51 = inttoptr i64 %or.60 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.1508 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.1509 = bitcast ptr %R17 to ptr
  store float %.1508, ptr %.1509, align 4
  %.1512 = load i32, ptr %R12, align 4
  %zext.131 = zext i32 %.1512 to i64
  %.1513 = load i32, ptr %R13, align 4
  %zext.132 = zext i32 %.1513 to i64
  %shl.69 = shl i64 %zext.132, 32
  %or.61 = or i64 %shl.69, %zext.131
  %sext_UR4.2 = sext i32 %trunc32.31 to i64
  %base_plus_reg_offset.2 = add i64 %or.61, %sext_UR4.2
  %inttoptr_bytes.52 = inttoptr i64 %base_plus_reg_offset.2 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.1514 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.1515 = bitcast ptr %R19 to ptr
  store float %.1514, ptr %.1515, align 4
  %.1519 = add i32 %UR7.0, -4
  %.1520 = add i32 %.1519, 0
  %cmp.6 = icmp ne i32 0, %.1520
  %.1526 = and i1 %cmp.6, true
  %.1530 = load i32, ptr %R22, align 4
  %.1531 = add i32 %.1530, 4
  %.1532 = add i32 %.1531, 0
  store i32 %.1532, ptr %R22, align 4
  %.1535 = load float, ptr %R34, align 4
  %.1536 = load float, ptr %R35, align 4
  %.1537 = load float, ptr %R3, align 4
  %fmul.20 = fmul float %.1535, %.1536
  %fadd.24 = fadd float %fmul.20, %.1537
  %.1538 = bitcast ptr %R3 to ptr
  store float %fadd.24, ptr %.1538, align 4
  %.1541 = load float, ptr %R35, align 4
  %.1542 = load float, ptr %R40, align 4
  %.1543 = load float, ptr %R2, align 4
  %fmul.21 = fmul float %.1541, %.1542
  %fadd.25 = fadd float %fmul.21, %.1543
  %.1544 = bitcast ptr %R11 to ptr
  store float %fadd.25, ptr %.1544, align 4
  %.1547 = load float, ptr %R35, align 4
  %.1548 = load float, ptr %R36, align 4
  %.1549 = load float, ptr %R0, align 4
  %fmul.22 = fmul float %.1547, %.1548
  %fadd.26 = fadd float %fmul.22, %.1549
  %.1550 = bitcast ptr %R15 to ptr
  store float %fadd.26, ptr %.1550, align 4
  %.1553 = load float, ptr %R35, align 4
  %.1554 = load float, ptr %R38, align 4
  %.1555 = load float, ptr %R8, align 4
  %fmul.23 = fmul float %.1553, %.1554
  %fadd.27 = fadd float %fmul.23, %.1555
  %.1556 = bitcast ptr %R35 to ptr
  store float %fadd.27, ptr %.1556, align 4
  %.1559 = load float, ptr %R41, align 4
  %.1560 = load float, ptr %R26, align 4
  %.1561 = load float, ptr %R3, align 4
  %fmul.24 = fmul float %.1559, %.1560
  %fadd.28 = fadd float %fmul.24, %.1561
  %.1562 = bitcast ptr %R0 to ptr
  store float %fadd.28, ptr %.1562, align 4
  %.1565 = load float, ptr %R26, align 4
  %.1566 = load float, ptr %R18, align 4
  %.1567 = load float, ptr %R11, align 4
  %fmul.25 = fmul float %.1565, %.1566
  %fadd.29 = fadd float %fmul.25, %.1567
  %.1568 = bitcast ptr %R18 to ptr
  store float %fadd.29, ptr %.1568, align 4
  %.1571 = load float, ptr %R26, align 4
  %.1572 = load float, ptr %R14, align 4
  %.1573 = load float, ptr %R15, align 4
  %fmul.26 = fmul float %.1571, %.1572
  %fadd.30 = fadd float %fmul.26, %.1573
  %.1574 = bitcast ptr %R14 to ptr
  store float %fadd.30, ptr %.1574, align 4
  %.1577 = load float, ptr %R26, align 4
  %.1578 = load float, ptr %R10, align 4
  %.1579 = load float, ptr %R35, align 4
  %fmul.27 = fmul float %.1577, %.1578
  %fadd.31 = fadd float %fmul.27, %.1579
  %.1580 = bitcast ptr %R10 to ptr
  store float %fadd.31, ptr %.1580, align 4
  %.1583 = load float, ptr %R16, align 4
  %.1584 = load float, ptr %R23, align 4
  %.1585 = load float, ptr %R0, align 4
  %fmul.28 = fmul float %.1583, %.1584
  %fadd.32 = fadd float %fmul.28, %.1585
  %.1586 = bitcast ptr %R0 to ptr
  store float %fadd.32, ptr %.1586, align 4
  %.1589 = load float, ptr %R23, align 4
  %.1590 = load float, ptr %R24, align 4
  %.1591 = load float, ptr %R18, align 4
  %fmul.29 = fmul float %.1589, %.1590
  %fadd.33 = fadd float %fmul.29, %.1591
  %.1592 = bitcast ptr %R18 to ptr
  store float %fadd.33, ptr %.1592, align 4
  %.1595 = load float, ptr %R23, align 4
  %.1596 = load float, ptr %R20, align 4
  %.1597 = load float, ptr %R14, align 4
  %fmul.30 = fmul float %.1595, %.1596
  %fadd.34 = fadd float %fmul.30, %.1597
  %.1598 = bitcast ptr %R14 to ptr
  store float %fadd.34, ptr %.1598, align 4
  %.1601 = load float, ptr %R23, align 4
  %.1602 = load float, ptr %R28, align 4
  %.1603 = load float, ptr %R10, align 4
  %fmul.31 = fmul float %.1601, %.1602
  %fadd.35 = fadd float %fmul.31, %.1603
  %.1604 = bitcast ptr %R10 to ptr
  store float %fadd.35, ptr %.1604, align 4
  %.1607 = load float, ptr %R30, align 4
  %.1608 = load float, ptr %R27, align 4
  %.1609 = load float, ptr %R0, align 4
  %fmul.32 = fmul float %.1607, %.1608
  %fadd.36 = fadd float %fmul.32, %.1609
  %.1610 = bitcast ptr %R3 to ptr
  store float %fadd.36, ptr %.1610, align 4
  %.1613 = load float, ptr %R27, align 4
  %.1614 = load float, ptr %R32, align 4
  %.1615 = load float, ptr %R18, align 4
  %fmul.33 = fmul float %.1613, %.1614
  %fadd.37 = fadd float %fmul.33, %.1615
  %.1616 = bitcast ptr %R2 to ptr
  store float %fadd.37, ptr %.1616, align 4
  %.1619 = load float, ptr %R27, align 4
  %.1620 = load float, ptr %R17, align 4
  %.1621 = load float, ptr %R14, align 4
  %fmul.34 = fmul float %.1619, %.1620
  %fadd.38 = fadd float %fmul.34, %.1621
  %.1622 = bitcast ptr %R0 to ptr
  store float %fadd.38, ptr %.1622, align 4
  %.1625 = load float, ptr %R27, align 4
  %.1626 = load float, ptr %R19, align 4
  %.1627 = load float, ptr %R10, align 4
  %fmul.35 = fmul float %.1625, %.1626
  %fadd.39 = fadd float %fmul.35, %.1627
  %.1628 = bitcast ptr %R8 to ptr
  store float %fadd.39, ptr %.1628, align 4
  %.1632 = icmp eq i1 %.1526, true
  br i1 %.1632, label %.L_x_6, label %.L_x_5.loopexit

.L_x_5.loopexit:                                  ; preds = %.L_x_6
  br label %.L_x_5

.L_x_5:                                           ; preds = %.L_x_5.loopexit, %.L_x_0_split_0x09f0
  %.1636 = icmp ne i1 %P0.0, true
  br i1 %.1636, label %.L_x_4, label %.L_x_5_split_0x0f80

.L_x_5_split_0x0f80:                              ; preds = %.L_x_5
  %.1639 = load i32, ptr %R22, align 4
  %imad_mul.32 = mul i32 %.1639, %Arg_11
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
  %.1646 = load i32, ptr %R7, align 4
  %.1647 = load i32, ptr %R22, align 4
  %imad_mul.33 = mul i32 %.1646, %Arg_11
  %imad_add.34 = add i32 %imad_mul.33, %.1647
  store i32 %imad_add.34, ptr %R22, align 4
  %zext.136 = zext i32 0 to i64
  %zext.137 = zext i32 %Arg_11 to i64
  %zext.138 = zext i32 2 to i64
  %shl.71 = shl i64 %zext.136, 32
  %or.63 = or i64 %shl.71, %zext.137
  %shl.72 = shl i64 %or.63, %zext.138
  %and.4 = and i64 %shl.72, 4294967295
  %trunc32.38 = trunc i64 %and.4 to i32
  %.1654 = load i32, ptr %R10, align 4
  %.1655 = load i32, ptr %R5, align 4
  %shl.73 = shl i32 %.1654, 2
  %add.125 = add i32 %shl.73, %.1655
  store i32 %add.125, ptr %R5, align 4
  %.1658 = load i32, ptr %R22, align 4
  %.1659 = load i32, ptr %R9, align 4
  %imad_ext1.14 = zext i32 %.1658 to i64
  %imad_ext2.14 = zext i32 %.1659 to i64
  %imad_mul.34 = mul i64 %imad_ext1.14, %imad_ext2.14
  %.1660 = ptrtoint ptr %Arg_1 to i64
  %imad_add.35 = add i64 %imad_mul.34, %.1660
  %.1661 = and i64 %imad_add.35, -4294967296
  %.1662 = lshr i64 %.1661, 32
  %trunc32.39 = trunc i64 %.1662 to i32
  %trunc32.40 = trunc i64 %imad_add.35 to i32
  store i32 %trunc32.40, ptr %R10, align 4
  store i32 %trunc32.39, ptr %R11, align 4
  %.1667 = sub i32 0, %.1049
  %.1668 = add i32 %.1667, 0
  %.1669 = add i32 %.1668, 0
  %zext.139 = zext i32 %trunc32.37 to i64
  %zext.140 = zext i32 %Arg_11 to i64
  %zext.141 = zext i32 2 to i64
  %shl.74 = shl i64 %zext.139, 32
  %or.64 = or i64 %shl.74, %zext.140
  %shl.75 = shl i64 %or.64, %zext.141
  %lshr.3 = lshr i64 %shl.75, 32
  %trunc32.41 = trunc i64 %lshr.3 to i32
  %.1677 = load i32, ptr %R4, align 4
  %nvvm_blockdim_x.2 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %.1678 = load i32, ptr %R5, align 4
  %imad_mul.35 = mul i32 %.1677, %nvvm_blockdim_x.2
  %imad_add.36 = add i32 %imad_mul.35, %.1678
  store i32 %imad_add.36, ptr %R16, align 4
  %.1681 = load i32, ptr %R11, align 4
  %imad_mul.36 = mul i32 0, 0
  %imad_add.37 = add i32 %imad_mul.36, %.1681
  store i32 %imad_add.37, ptr %R19, align 4
  br label %.L_x_7

.L_x_7:                                           ; preds = %.L_x_7, %.L_x_5_split_0x0f80
  %UR6.0 = phi i32 [ %.1669, %.L_x_5_split_0x0f80 ], [ %.1771, %.L_x_7 ]
  %.1685 = load i32, ptr %R16, align 4
  %.1686 = load i32, ptr %R9, align 4
  %imad_ext1.15 = zext i32 %.1685 to i64
  %imad_ext2.15 = zext i32 %.1686 to i64
  %imad_mul.37 = mul i64 %imad_ext1.15, %imad_ext2.15
  %.1687 = ptrtoint ptr %Arg_4 to i64
  %imad_add.38 = add i64 %imad_mul.37, %.1687
  %.1688 = and i64 %imad_add.38, -4294967296
  %.1689 = lshr i64 %.1688, 32
  %trunc32.42 = trunc i64 %.1689 to i32
  %trunc32.43 = trunc i64 %imad_add.38 to i32
  store i32 %trunc32.43, ptr %R4, align 4
  store i32 %trunc32.42, ptr %R5, align 4
  %.1693 = load i32, ptr %R19, align 4
  store i32 %.1693, ptr %R11, align 4
  %.1696 = load i32, ptr %R4, align 4
  %.1698 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1696, i32 %trunc32.38)
  %.1699 = extractvalue { i32, i1 } %.1698, 0
  %.1700 = extractvalue { i32, i1 } %.1698, 1
  %.1701 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1699, i32 0)
  %.1702 = extractvalue { i32, i1 } %.1701, 0
  %.1703 = extractvalue { i32, i1 } %.1701, 1
  %.1704 = or i1 %.1700, %.1703
  store i32 %.1702, ptr %R12, align 4
  %.1711 = load i32, ptr %R4, align 4
  %zext.142 = zext i32 %.1711 to i64
  %.1712 = load i32, ptr %R5, align 4
  %zext.143 = zext i32 %.1712 to i64
  %shl.76 = shl i64 %zext.143, 32
  %or.65 = or i64 %shl.76, %zext.142
  %inttoptr_bytes.53 = inttoptr i64 %or.65 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.1713 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.1714 = bitcast ptr %R4 to ptr
  store float %.1713, ptr %.1714, align 4
  %.1717 = load i32, ptr %R5, align 4
  %.1720 = xor i1 true, true
  %.1721 = zext i1 %.1704 to i32
  %.1722 = zext i1 %.1720 to i32
  %add.126 = add i32 %.1717, %trunc32.41
  %add.127 = add i32 %add.126, 0
  %add.128 = add i32 %add.127, %.1721
  %add.129 = add i32 %add.128, %.1722
  store i32 %add.129, ptr %R13, align 4
  %.1725 = load i32, ptr %R12, align 4
  %.1727 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1725, i32 %trunc32.38)
  %.1728 = extractvalue { i32, i1 } %.1727, 0
  %.1729 = extractvalue { i32, i1 } %.1727, 1
  %.1730 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1728, i32 0)
  %.1731 = extractvalue { i32, i1 } %.1730, 0
  %.1732 = extractvalue { i32, i1 } %.1730, 1
  %.1733 = or i1 %.1729, %.1732
  store i32 %.1731, ptr %R14, align 4
  %.1737 = load i32, ptr %R10, align 4
  %zext.144 = zext i32 %.1737 to i64
  %.1738 = load i32, ptr %R11, align 4
  %zext.145 = zext i32 %.1738 to i64
  %shl.77 = shl i64 %zext.145, 32
  %or.66 = or i64 %shl.77, %zext.144
  %inttoptr_bytes.54 = inttoptr i64 %or.66 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.1739 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.1740 = bitcast ptr %R11 to ptr
  store float %.1739, ptr %.1740, align 4
  %.1743 = load i32, ptr %R13, align 4
  %.1746 = xor i1 true, true
  %.1747 = zext i1 %.1733 to i32
  %.1748 = zext i1 %.1746 to i32
  %add.130 = add i32 %.1743, %trunc32.41
  %add.131 = add i32 %add.130, 0
  %add.132 = add i32 %add.131, %.1747
  %add.133 = add i32 %add.132, %.1748
  store i32 %add.133, ptr %R15, align 4
  %.1751 = load i32, ptr %R12, align 4
  %zext.146 = zext i32 %.1751 to i64
  %.1752 = load i32, ptr %R13, align 4
  %zext.147 = zext i32 %.1752 to i64
  %shl.78 = shl i64 %zext.147, 32
  %or.67 = or i64 %shl.78, %zext.146
  %inttoptr_bytes.55 = inttoptr i64 %or.67 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.1753 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.1754 = bitcast ptr %R12 to ptr
  store float %.1753, ptr %.1754, align 4
  %.1757 = load i32, ptr %R14, align 4
  %zext.148 = zext i32 %.1757 to i64
  %.1758 = load i32, ptr %R15, align 4
  %zext.149 = zext i32 %.1758 to i64
  %shl.79 = shl i64 %zext.149, 32
  %or.68 = or i64 %shl.79, %zext.148
  %inttoptr_bytes.56 = inttoptr i64 %or.68 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.1759 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.1760 = bitcast ptr %R17 to ptr
  store float %.1759, ptr %.1760, align 4
  %.1763 = load i32, ptr %R14, align 4
  %zext.150 = zext i32 %.1763 to i64
  %.1764 = load i32, ptr %R15, align 4
  %zext.151 = zext i32 %.1764 to i64
  %shl.80 = shl i64 %zext.151, 32
  %or.69 = or i64 %shl.80, %zext.150
  %sext_UR4.3 = sext i32 %trunc32.38 to i64
  %base_plus_reg_offset.3 = add i64 %or.69, %sext_UR4.3
  %inttoptr_bytes.57 = inttoptr i64 %base_plus_reg_offset.3 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.1765 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.1766 = bitcast ptr %R18 to ptr
  store float %.1765, ptr %.1766, align 4
  %.1770 = add i32 %UR6.0, 1
  %.1771 = add i32 %.1770, 0
  %cmp.7 = icmp ne i32 0, %.1771
  %.1777 = and i1 %cmp.7, true
  %imad_mul.38 = mul i32 0, 0
  %imad_add.39 = add i32 %imad_mul.38, %Arg_11
  store i32 %imad_add.39, ptr %R21, align 4
  %.1783 = load i32, ptr %R10, align 4
  %.1784 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1783, i32 4)
  %.1785 = extractvalue { i32, i1 } %.1784, 0
  %.1786 = extractvalue { i32, i1 } %.1784, 1
  %.1787 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1785, i32 0)
  %.1788 = extractvalue { i32, i1 } %.1787, 0
  %.1789 = extractvalue { i32, i1 } %.1787, 1
  %.1790 = or i1 %.1786, %.1789
  store i32 %.1788, ptr %R10, align 4
  %.1794 = load i32, ptr %R21, align 4
  %.1795 = load i32, ptr %R16, align 4
  %shl.81 = shl i32 %.1794, 2
  %add.134 = add i32 %shl.81, %.1795
  store i32 %add.134, ptr %R16, align 4
  %.1798 = load i32, ptr %R19, align 4
  %imad_mul.39 = mul i32 0, 0
  %imad_add.40 = add i32 %imad_mul.39, %.1798
  %imad_ext4 = zext i1 %.1790 to i32
  %imad_add_x = add i32 %imad_add.40, %imad_ext4
  store i32 %imad_add_x, ptr %R19, align 4
  %.1802 = load float, ptr %R4, align 4
  %.1803 = load float, ptr %R11, align 4
  %.1804 = load float, ptr %R3, align 4
  %fmul.36 = fmul float %.1802, %.1803
  %fadd.40 = fadd float %fmul.36, %.1804
  %.1805 = bitcast ptr %R3 to ptr
  store float %fadd.40, ptr %.1805, align 4
  %.1808 = load float, ptr %R11, align 4
  %.1809 = load float, ptr %R12, align 4
  %.1810 = load float, ptr %R2, align 4
  %fmul.37 = fmul float %.1808, %.1809
  %fadd.41 = fadd float %fmul.37, %.1810
  %.1811 = bitcast ptr %R2 to ptr
  store float %fadd.41, ptr %.1811, align 4
  %.1814 = load float, ptr %R11, align 4
  %.1815 = load float, ptr %R17, align 4
  %.1816 = load float, ptr %R0, align 4
  %fmul.38 = fmul float %.1814, %.1815
  %fadd.42 = fadd float %fmul.38, %.1816
  %.1817 = bitcast ptr %R0 to ptr
  store float %fadd.42, ptr %.1817, align 4
  %.1820 = load float, ptr %R11, align 4
  %.1821 = load float, ptr %R18, align 4
  %.1822 = load float, ptr %R8, align 4
  %fmul.39 = fmul float %.1820, %.1821
  %fadd.43 = fadd float %fmul.39, %.1822
  %.1823 = bitcast ptr %R8 to ptr
  store float %fadd.43, ptr %.1823, align 4
  %.1827 = icmp eq i1 %.1777, true
  br i1 %.1827, label %.L_x_7, label %.L_x_4.loopexit

.L_x_4.loopexit:                                  ; preds = %.L_x_7
  br label %.L_x_4

.L_x_4:                                           ; preds = %.L_x_4.loopexit, %.L_x_5, %.L_x_0
  %P0.1 = phi i1 [ %P0.0, %.L_x_0 ], [ %P0.0, %.L_x_5 ], [ %.1777, %.L_x_4.loopexit ]
  %.1830 = load float, ptr %R0, align 4
  %llvm_fabs_result = call float @llvm.fabs.f32(float %.1830)
  %fcmp_unordered = fcmp oge float %llvm_fabs_result, 0x3FE3333340000000
  %.1833 = and i1 %fcmp_unordered, true
  %.1837 = load i32, ptr %R7, align 4
  %imad_mul.40 = mul i32 %.1837, %Arg_11
  %imad_add.41 = add i32 %imad_mul.40, %imad_add.1
  %.1841 = bitcast ptr %R13 to ptr
  store float 0x41CDDDCC40000000, ptr %.1841, align 4
  %imad_mul.41 = mul i32 0, 0
  %imad_add.42 = add i32 %imad_mul.41, 1132199936
  store i32 %imad_add.42, ptr %R14, align 4
  %.1847 = load i32, ptr %R9, align 4
  %imad_ext1.16 = zext i32 %imad_add.41 to i64
  %imad_ext2.16 = zext i32 %.1847 to i64
  %imad_mul.42 = mul i64 %imad_ext1.16, %imad_ext2.16
  %.1848 = ptrtoint ptr %Arg_2 to i64
  %imad_add.43 = add i64 %imad_mul.42, %.1848
  %.1849 = and i64 %imad_add.43, -4294967296
  %.1850 = lshr i64 %.1849, 32
  %trunc32.44 = trunc i64 %.1850 to i32
  %trunc32.45 = trunc i64 %imad_add.43 to i32
  store i32 %trunc32.45, ptr %R4, align 4
  store i32 %trunc32.44, ptr %R5, align 4
  %.1854 = load float, ptr %R2, align 4
  %.1855 = fneg float %.1854
  %.1856 = load float, ptr %R13, align 4
  %fmul.40 = fmul float %.1855, %.1856
  %fadd.44 = fadd float %fmul.40, 5.000000e-01
  %.1857 = bitcast ptr %R7 to ptr
  store float %fadd.44, ptr %.1857, align 4
  %.1861 = icmp eq i1 %.1833, true
  br i1 %.1861, label %.L_x_4_conditionalExpr_0x11f0, label %.L_x_4_split_0x1200

.L_x_4_conditionalExpr_0x11f0:                    ; preds = %.L_x_4
  %.1864 = load float, ptr %R0, align 4
  %llvm_fabs_result.1 = call float @llvm.fabs.f32(float %.1864)
  %fmul.41 = fmul float %llvm_fabs_result.1, 0x4007154760000000
  %.1865 = bitcast ptr %R11 to ptr
  store float %fmul.41, ptr %.1865, align 4
  br label %.L_x_4_split_0x1200

.L_x_4_split_0x1200:                              ; preds = %.L_x_4_conditionalExpr_0x11f0, %.L_x_4
  %.1870 = load i32, ptr %R4, align 4
  %zext.152 = zext i32 %.1870 to i64
  %.1871 = load i32, ptr %R5, align 4
  %zext.153 = zext i32 %.1871 to i64
  %shl.82 = shl i64 %zext.153, 32
  %or.70 = or i64 %shl.82, %zext.152
  %inttoptr_bytes.58 = inttoptr i64 %or.70 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.1872 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.1873 = bitcast ptr %R4 to ptr
  store float %.1872, ptr %.1873, align 4
  %.1876 = load float, ptr %R7, align 4
  %.1877 = load float, ptr %R14, align 4
  %fmul.42 = fmul float %.1876, %.1877
  %fadd.45 = fadd float %fmul.42, 0x4168000020000000
  %.1878 = bitcast ptr %R7 to ptr
  store float %fadd.45, ptr %.1878, align 4
  %.1882 = icmp eq i1 %.1833, true
  br i1 %.1882, label %.L_x_4_split_0x1200_conditionalExpr_0x1220, label %.L_x_4_split_0x1230

.L_x_4_split_0x1200_conditionalExpr_0x1220:       ; preds = %.L_x_4_split_0x1200
  %.1885 = load float, ptr %R0, align 4
  %llvm_fabs_result.2 = call float @llvm.fabs.f32(float %.1885)
  %fcmp_unordered.1 = fcmp oge float %llvm_fabs_result.2, 0x4022059680000000
  %.1888 = and i1 %fcmp_unordered.1, true
  br label %.L_x_4_split_0x1230

.L_x_4_split_0x1230:                              ; preds = %.L_x_4_split_0x1200_conditionalExpr_0x1220, %.L_x_4_split_0x1200
  %P0.2 = phi i1 [ %.1888, %.L_x_4_split_0x1200_conditionalExpr_0x1220 ], [ %P0.1, %.L_x_4_split_0x1200 ]
  %.1896 = icmp eq i1 %.1833, true
  br i1 %.1896, label %.L_x_4_split_0x1230_conditionalExpr_0x1240, label %.L_x_4_split_0x1250

.L_x_4_split_0x1230_conditionalExpr_0x1240:       ; preds = %.L_x_4_split_0x1230
  %.1899 = bitcast ptr %R16 to ptr
  store float 0x41CFC00000000000, ptr %.1899, align 4
  br label %.L_x_4_split_0x1250

.L_x_4_split_0x1250:                              ; preds = %.L_x_4_split_0x1230_conditionalExpr_0x1240, %.L_x_4_split_0x1230
  %.1905 = icmp eq i1 %.1833, true
  br i1 %.1905, label %.L_x_4_split_0x1250_conditionalExpr_0x1250, label %.L_x_4_split_0x1260

.L_x_4_split_0x1250_conditionalExpr_0x1250:       ; preds = %.L_x_4_split_0x1250
  %.1908 = load float, ptr %R11, align 4
  %llvm_exp2_f32_result = call float @llvm.exp2.f32(float %.1908)
  %.1909 = bitcast ptr %R11 to ptr
  store float %llvm_exp2_f32_result, ptr %.1909, align 4
  br label %.L_x_4_split_0x1260

.L_x_4_split_0x1260:                              ; preds = %.L_x_4_split_0x1250_conditionalExpr_0x1250, %.L_x_4_split_0x1250
  %.1914 = load float, ptr %R7, align 4
  %fadd.46 = fadd float %.1914, 0xC168000FE0000000
  %.1915 = bitcast ptr %R9 to ptr
  store float %fadd.46, ptr %.1915, align 4
  %.1919 = load i32, ptr %R7, align 4
  %zext.154 = zext i32 0 to i64
  %zext.155 = zext i32 %.1919 to i64
  %zext.156 = zext i32 23 to i64
  %shl.83 = shl i64 %zext.154, 32
  %or.71 = or i64 %shl.83, %zext.155
  %shl.84 = shl i64 %or.71, %zext.156
  %and.5 = and i64 %shl.84, 4294967295
  %trunc32.46 = trunc i64 %and.5 to i32
  store i32 %trunc32.46, ptr %R7, align 4
  %.1923 = load float, ptr %R8, align 4
  %.1924 = fneg float %.1923
  %.1925 = load float, ptr %R13, align 4
  %fmul.43 = fmul float %.1924, %.1925
  %fadd.47 = fadd float %fmul.43, 5.000000e-01
  %.1926 = bitcast ptr %R5 to ptr
  store float %fadd.47, ptr %.1926, align 4
  %.1929 = load float, ptr %R2, align 4
  %.1930 = fneg float %.1929
  %.1931 = load float, ptr %R9, align 4
  %.1932 = fneg float %.1931
  %fmul.44 = fmul float %.1930, 0x3FF7154760000000
  %fadd.48 = fadd float %fmul.44, %.1932
  %.1933 = bitcast ptr %R9 to ptr
  store float %fadd.48, ptr %.1933, align 4
  %.1936 = load float, ptr %R2, align 4
  %.1937 = fneg float %.1936
  %.1938 = load float, ptr %R9, align 4
  %fmul.45 = fmul float %.1937, 0x3E54AE0C00000000
  %fadd.49 = fadd float %fmul.45, %.1938
  %.1939 = bitcast ptr %R9 to ptr
  store float %fadd.49, ptr %.1939, align 4
  %.1942 = load float, ptr %R3, align 4
  %.1943 = fneg float %.1942
  %.1944 = load float, ptr %R13, align 4
  %fmul.46 = fmul float %.1943, %.1944
  %fadd.50 = fadd float %fmul.46, 5.000000e-01
  %.1945 = bitcast ptr %R2 to ptr
  store float %fadd.50, ptr %.1945, align 4
  %.1948 = load float, ptr %R9, align 4
  %llvm_exp2_f32_result.1 = call float @llvm.exp2.f32(float %.1948)
  %.1949 = bitcast ptr %R12 to ptr
  store float %llvm_exp2_f32_result.1, ptr %.1949, align 4
  %.1953 = icmp eq i1 %.1833, true
  br i1 %.1953, label %.L_x_4_split_0x1260_conditionalExpr_0x12e0, label %.L_x_4_split_0x12f0

.L_x_4_split_0x1260_conditionalExpr_0x12e0:       ; preds = %.L_x_4_split_0x1260
  %.1956 = load float, ptr %R11, align 4
  %fadd.51 = fadd float %.1956, 1.000000e+00
  %.1957 = bitcast ptr %R13 to ptr
  store float %fadd.51, ptr %.1957, align 4
  br label %.L_x_4_split_0x12f0

.L_x_4_split_0x12f0:                              ; preds = %.L_x_4_split_0x1260_conditionalExpr_0x12e0, %.L_x_4_split_0x1260
  %.1962 = load float, ptr %R2, align 4
  %.1963 = load float, ptr %R14, align 4
  %fmul.47 = fmul float %.1962, %.1963
  %fadd.52 = fadd float %fmul.47, 0x4168000020000000
  %.1964 = bitcast ptr %R2 to ptr
  store float %fadd.52, ptr %.1964, align 4
  %.1967 = load float, ptr %R5, align 4
  %.1968 = load float, ptr %R14, align 4
  %fmul.48 = fmul float %.1967, %.1968
  %fadd.53 = fadd float %fmul.48, 0x4168000020000000
  %.1969 = bitcast ptr %R14 to ptr
  store float %fadd.53, ptr %.1969, align 4
  %.1972 = load float, ptr %R2, align 4
  %fadd.54 = fadd float %.1972, 0xC168000FE0000000
  %.1973 = bitcast ptr %R10 to ptr
  store float %fadd.54, ptr %.1973, align 4
  %.1977 = icmp eq i1 %.1833, true
  br i1 %.1977, label %.L_x_4_split_0x12f0_conditionalExpr_0x1320, label %.L_x_4_split_0x1330

.L_x_4_split_0x12f0_conditionalExpr_0x1320:       ; preds = %.L_x_4_split_0x12f0
  %.1980 = load float, ptr %R13, align 4
  %.1981 = fdiv float 1.000000e+00, %.1980
  %.1982 = bitcast ptr %R13 to ptr
  store float %.1981, ptr %.1982, align 4
  br label %.L_x_4_split_0x1330

.L_x_4_split_0x1330:                              ; preds = %.L_x_4_split_0x12f0_conditionalExpr_0x1320, %.L_x_4_split_0x12f0
  %.1987 = load float, ptr %R14, align 4
  %fadd.55 = fadd float %.1987, 0xC168000FE0000000
  %.1988 = bitcast ptr %R5 to ptr
  store float %fadd.55, ptr %.1988, align 4
  %.1992 = load i32, ptr %R14, align 4
  %zext.157 = zext i32 0 to i64
  %zext.158 = zext i32 %.1992 to i64
  %zext.159 = zext i32 23 to i64
  %shl.85 = shl i64 %zext.157, 32
  %or.72 = or i64 %shl.85, %zext.158
  %shl.86 = shl i64 %or.72, %zext.159
  %and.6 = and i64 %shl.86, 4294967295
  %trunc32.47 = trunc i64 %and.6 to i32
  store i32 %trunc32.47, ptr %R14, align 4
  %.1995 = load float, ptr %R3, align 4
  %.1996 = fneg float %.1995
  %.1997 = load float, ptr %R10, align 4
  %.1998 = fneg float %.1997
  %fmul.49 = fmul float %.1996, 0x3FF7154760000000
  %fadd.56 = fadd float %fmul.49, %.1998
  %.1999 = bitcast ptr %R10 to ptr
  store float %fadd.56, ptr %.1999, align 4
  %.2002 = load float, ptr %R8, align 4
  %.2003 = fneg float %.2002
  %.2004 = load float, ptr %R5, align 4
  %.2005 = fneg float %.2004
  %fmul.50 = fmul float %.2003, 0x3FF7154760000000
  %fadd.57 = fadd float %fmul.50, %.2005
  %.2006 = bitcast ptr %R5 to ptr
  store float %fadd.57, ptr %.2006, align 4
  %.2009 = load float, ptr %R3, align 4
  %.2010 = fneg float %.2009
  %.2011 = load float, ptr %R10, align 4
  %fmul.51 = fmul float %.2010, 0x3E54AE0C00000000
  %fadd.58 = fadd float %fmul.51, %.2011
  %.2012 = bitcast ptr %R10 to ptr
  store float %fadd.58, ptr %.2012, align 4
  %.2015 = load float, ptr %R7, align 4
  %.2016 = load float, ptr %R12, align 4
  %fmul.52 = fmul float %.2015, %.2016
  %fadd.59 = fadd float %fmul.52, 1.000000e+00
  %.2017 = bitcast ptr %R15 to ptr
  store float %fadd.59, ptr %.2017, align 4
  %.2020 = load float, ptr %R8, align 4
  %.2021 = fneg float %.2020
  %.2022 = load float, ptr %R5, align 4
  %fmul.53 = fmul float %.2021, 0x3E54AE0C00000000
  %fadd.60 = fadd float %fmul.53, %.2022
  %.2023 = bitcast ptr %R11 to ptr
  store float %fadd.60, ptr %.2023, align 4
  %.2027 = icmp ne i1 %.1833, true
  br i1 %.2027, label %.L_x_4_split_0x1330_conditionalExpr_0x13a0, label %.L_x_4_split_0x13b0

.L_x_4_split_0x1330_conditionalExpr_0x13a0:       ; preds = %.L_x_4_split_0x1330
  %imad_mul.43 = mul i32 0, 0
  %imad_add.44 = add i32 %imad_mul.43, 1015083138
  store i32 %imad_add.44, ptr %R8, align 4
  br label %.L_x_4_split_0x13b0

.L_x_4_split_0x13b0:                              ; preds = %.L_x_4_split_0x1330_conditionalExpr_0x13a0, %.L_x_4_split_0x1330
  %.2034 = load i32, ptr %R15, align 4
  %.2035 = add i32 %.2034, 25165824
  %.2036 = add i32 %.2035, 0
  store i32 %.2036, ptr %R7, align 4
  %.2040 = icmp ne i1 %.1833, true
  br i1 %.2040, label %.L_x_4_split_0x13b0_conditionalExpr_0x13c0, label %.L_x_4_split_0x13d0

.L_x_4_split_0x13b0_conditionalExpr_0x13c0:       ; preds = %.L_x_4_split_0x13b0
  %.2043 = load float, ptr %R0, align 4
  %.2044 = load float, ptr %R0, align 4
  %fmul.54 = fmul float %.2043, %.2044
  %.2045 = bitcast ptr %R5 to ptr
  store float %fmul.54, ptr %.2045, align 4
  br label %.L_x_4_split_0x13d0

.L_x_4_split_0x13d0:                              ; preds = %.L_x_4_split_0x13b0_conditionalExpr_0x13c0, %.L_x_4_split_0x13b0
  %.2050 = load float, ptr %R10, align 4
  %llvm_exp2_f32_result.2 = call float @llvm.exp2.f32(float %.2050)
  %.2051 = bitcast ptr %R3 to ptr
  store float %llvm_exp2_f32_result.2, ptr %.2051, align 4
  %.2055 = icmp eq i1 %.1833, true
  br i1 %.2055, label %.L_x_4_split_0x13d0_conditionalExpr_0x13e0, label %.L_x_4_split_0x13f0

.L_x_4_split_0x13d0_conditionalExpr_0x13e0:       ; preds = %.L_x_4_split_0x13d0
  %.2058 = load float, ptr %R13, align 4
  %.2059 = load float, ptr %R16, align 4
  %fmul.55 = fmul float %.2058, -2.000000e+00
  %fadd.61 = fadd float %fmul.55, %.2059
  %.2060 = bitcast ptr %R13 to ptr
  store float %fadd.61, ptr %.2060, align 4
  br label %.L_x_4_split_0x13f0

.L_x_4_split_0x13f0:                              ; preds = %.L_x_4_split_0x13d0_conditionalExpr_0x13e0, %.L_x_4_split_0x13d0
  %.2065 = load i32, ptr %R7, align 4
  %.2067 = and i32 %.2065, 2139095040
  store i32 %.2067, ptr %R9, align 4
  %.2071 = icmp ne i1 %.1833, true
  br i1 %.2071, label %.L_x_4_split_0x13f0_conditionalExpr_0x1400, label %.L_x_4_split_0x1410

.L_x_4_split_0x13f0_conditionalExpr_0x1400:       ; preds = %.L_x_4_split_0x13f0
  %.2074 = load float, ptr %R5, align 4
  %.2075 = load float, ptr %R8, align 4
  %fmul.56 = fmul float %.2074, %.2075
  %fadd.62 = fadd float %fmul.56, 0xBFAAC795C0000000
  %.2076 = bitcast ptr %R8 to ptr
  store float %fadd.62, ptr %.2076, align 4
  br label %.L_x_4_split_0x1410

.L_x_4_split_0x1410:                              ; preds = %.L_x_4_split_0x13f0_conditionalExpr_0x1400, %.L_x_4_split_0x13f0
  %.2081 = load i32, ptr %R2, align 4
  %imad_shl.1 = shl i32 %.2081, 8388608
  %imad_add.45 = add i32 %imad_shl.1, 0
  store i32 %imad_add.45, ptr %R2, align 4
  %.2085 = icmp eq i1 %.1833, true
  br i1 %.2085, label %.L_x_4_split_0x1410_conditionalExpr_0x1420, label %.L_x_4_split_0x1430

.L_x_4_split_0x1410_conditionalExpr_0x1420:       ; preds = %.L_x_4_split_0x1410
  %.2088 = load float, ptr %R13, align 4
  %.2090 = xor i1 %P0.2, true
  %.2091 = icmp eq i1 %.2090, true
  %fsel = select i1 %.2091, float %.2088, float 1.000000e+00
  %.2092 = bitcast ptr %R13 to ptr
  store float %fsel, ptr %.2092, align 4
  br label %.L_x_4_split_0x1430

.L_x_4_split_0x1430:                              ; preds = %.L_x_4_split_0x1410_conditionalExpr_0x1420, %.L_x_4_split_0x1410
  %.2098 = icmp ne i1 %.1833, true
  br i1 %.2098, label %.L_x_4_split_0x1430_conditionalExpr_0x1430, label %.L_x_4_split_0x1440

.L_x_4_split_0x1430_conditionalExpr_0x1430:       ; preds = %.L_x_4_split_0x1430
  %.2101 = load float, ptr %R5, align 4
  %.2102 = load float, ptr %R8, align 4
  %fmul.57 = fmul float %.2101, %.2102
  %fadd.63 = fadd float %fmul.57, 0x3FC10B2820000000
  %.2103 = bitcast ptr %R8 to ptr
  store float %fadd.63, ptr %.2103, align 4
  br label %.L_x_4_split_0x1440

.L_x_4_split_0x1440:                              ; preds = %.L_x_4_split_0x1430_conditionalExpr_0x1430, %.L_x_4_split_0x1430
  %.2108 = load float, ptr %R11, align 4
  %llvm_exp2_f32_result.3 = call float @llvm.exp2.f32(float %.2108)
  %.2109 = bitcast ptr %R11 to ptr
  store float %llvm_exp2_f32_result.3, ptr %.2109, align 4
  %.2112 = load i32, ptr %R9, align 4
  %cmp.8 = icmp sgt i32 %.2112, 33554431
  %.2115 = and i1 %cmp.8, true
  %.2120 = icmp ne i1 %.1833, true
  br i1 %.2120, label %.L_x_4_split_0x1440_conditionalExpr_0x1460, label %.L_x_4_split_0x1470

.L_x_4_split_0x1440_conditionalExpr_0x1460:       ; preds = %.L_x_4_split_0x1440
  %.2123 = load float, ptr %R5, align 4
  %.2124 = load float, ptr %R8, align 4
  %fmul.58 = fmul float %.2123, %.2124
  %fadd.64 = fadd float %fmul.58, 0xBFD5553DA0000000
  %.2125 = bitcast ptr %R8 to ptr
  store float %fadd.64, ptr %.2125, align 4
  br label %.L_x_4_split_0x1470

.L_x_4_split_0x1470:                              ; preds = %.L_x_4_split_0x1440_conditionalExpr_0x1460, %.L_x_4_split_0x1440
  %.2131 = icmp eq i1 %.1833, true
  br i1 %.2131, label %.L_x_4_split_0x1470_conditionalExpr_0x1470, label %.L_x_4_split_0x1480

.L_x_4_split_0x1470_conditionalExpr_0x1470:       ; preds = %.L_x_4_split_0x1470
  %.2134 = load i32, ptr %R13, align 4
  %.2135 = load i32, ptr %R0, align 4
  %.2137 = or i32 %.2134, -2147483648
  %.2138 = or i32 %.2134, %.2135
  %.2139 = and i32 %.2137, %.2138
  store i32 %.2139, ptr %R10, align 4
  br label %.L_x_4_split_0x1480

.L_x_4_split_0x1480:                              ; preds = %.L_x_4_split_0x1470_conditionalExpr_0x1470, %.L_x_4_split_0x1470
  %.2145 = icmp ne i1 %.1833, true
  br i1 %.2145, label %.L_x_4_split_0x1480_conditionalExpr_0x1480, label %.L_x_4_split_0x1490

.L_x_4_split_0x1480_conditionalExpr_0x1480:       ; preds = %.L_x_4_split_0x1480
  %.2148 = load float, ptr %R5, align 4
  %.2149 = load float, ptr %R8, align 4
  %fmul.59 = fmul float %.2148, %.2149
  %fadd.65 = fadd float %fmul.59, 0.000000e+00
  %.2150 = bitcast ptr %R7 to ptr
  store float %fadd.65, ptr %.2150, align 4
  br label %.L_x_4_split_0x1490

.L_x_4_split_0x1490:                              ; preds = %.L_x_4_split_0x1480_conditionalExpr_0x1480, %.L_x_4_split_0x1480
  %.2155 = load float, ptr %R2, align 4
  %.2156 = load float, ptr %R3, align 4
  %fmul.60 = fmul float %.2155, %.2156
  %fadd.66 = fadd float %fmul.60, 1.000000e+00
  %.2157 = bitcast ptr %R2 to ptr
  store float %fadd.66, ptr %.2157, align 4
  %zext.160 = zext i32 %imad_add.41 to i64
  %zext.161 = zext i32 0 to i64
  %zext.162 = zext i32 31 to i64
  %shl.87 = shl i64 %zext.160, 32
  %or.73 = or i64 %shl.87, %zext.161
  %ashr.6 = ashr i64 %or.73, %zext.162
  %ashr.7 = ashr i64 %ashr.6, 32
  %trunc32.48 = trunc i64 %ashr.7 to i32
  store i32 %trunc32.48, ptr %R3, align 4
  %.2165 = icmp ne i1 %.1833, true
  br i1 %.2165, label %.L_x_4_split_0x1490_conditionalExpr_0x14b0, label %.L_x_4_split_0x14c0

.L_x_4_split_0x1490_conditionalExpr_0x14b0:       ; preds = %.L_x_4_split_0x1490
  %.2168 = load float, ptr %R7, align 4
  %.2169 = load float, ptr %R0, align 4
  %.2170 = load float, ptr %R0, align 4
  %fmul.61 = fmul float %.2168, %.2169
  %fadd.67 = fadd float %fmul.61, %.2170
  %.2171 = bitcast ptr %R10 to ptr
  store float %fadd.67, ptr %.2171, align 4
  br label %.L_x_4_split_0x14c0

.L_x_4_split_0x14c0:                              ; preds = %.L_x_4_split_0x1490_conditionalExpr_0x14b0, %.L_x_4_split_0x1490
  %.2176 = load float, ptr %R14, align 4
  %.2177 = load float, ptr %R11, align 4
  %fmul.62 = fmul float %.2176, %.2177
  %fadd.68 = fadd float %fmul.62, 1.000000e+00
  %.2178 = bitcast ptr %R5 to ptr
  store float %fadd.68, ptr %.2178, align 4
  %.2182 = icmp eq i1 %.2115, true
  br i1 %.2182, label %.L_x_9, label %.L_x_4_split_0x14e0_CALL_0x1510

.L_x_4_split_0x14e0_CALL_0x1510:                  ; preds = %.L_x_4_split_0x14c0
  store i32 5376, ptr %R14, align 4
  %.2190 = load i32, ptr %R15, align 4
  %zext.163 = zext i32 0 to i64
  %zext.164 = zext i32 %.2190 to i64
  %zext.165 = zext i32 1 to i64
  %shl.88 = shl i64 %zext.163, 32
  %or.74 = or i64 %shl.88, %zext.164
  %shl.89 = shl i64 %or.74, %zext.165
  %and.7 = and i64 %shl.89, 4294967295
  %trunc32.49 = trunc i64 %and.7 to i32
  store i32 %trunc32.49, ptr %R0, align 4
  %.2196 = load i32, ptr %R0, align 4
  %zext.166 = zext i32 %.2196 to i64
  %zext.167 = zext i32 0 to i64
  %zext.168 = zext i32 24 to i64
  %shl.90 = shl i64 %zext.166, 32
  %or.75 = or i64 %shl.90, %zext.167
  %lshr.4 = lshr i64 %or.75, %zext.168
  %lshr.5 = lshr i64 %lshr.4, 32
  %trunc32.50 = trunc i64 %lshr.5 to i32
  store i32 %trunc32.50, ptr %R16, align 4
  %.2199 = load i32, ptr %R16, align 4
  %cmp.9 = icmp ne i32 %.2199, 0
  %.2202 = and i1 %cmp.9, true
  %.2207 = icmp eq i1 %.2202, true
  br i1 %.2207, label %.L_x_21...1, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1": ; preds = %.L_x_4_split_0x14e0_CALL_0x1510
  %.2210 = load i32, ptr %R15, align 4
  %imad_shl.2 = shl i32 %.2210, 2
  %imad_add.46 = add i32 %imad_shl.2, 0
  store i32 %imad_add.46, ptr %R0, align 4
  %.2213 = load i32, ptr %R0, align 4
  %cmp.10 = icmp ne i32 %.2213, 0
  %.2216 = and i1 %cmp.10, true
  %.2221 = icmp eq i1 %.2216, true
  br i1 %.2221, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"
  %.2224 = load float, ptr %R15, align 4
  %fmul.63 = fmul float %.2224, 0x43F0000000000000
  %fadd.69 = fadd float %fmul.63, 0.000000e+00
  %.2225 = bitcast ptr %R8 to ptr
  store float %fadd.69, ptr %.2225, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"
  %.2230 = load float, ptr %R15, align 4
  %fmul.64 = fmul float %.2230, 0x43F0000000000000
  %fadd.70 = fadd float %fmul.64, 0.000000e+00
  %.2231 = bitcast ptr %R8 to ptr
  store float %fadd.70, ptr %.2231, align 4
  %.2237 = icmp ne i1 %.2216, true
  br i1 %.2237, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
  %.2240 = load float, ptr %R15, align 4
  %.2241 = fdiv float 1.000000e+00, %.2240
  %.2242 = bitcast ptr %R0 to ptr
  store float %.2241, ptr %.2242, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
  %.2247 = load float, ptr %R15, align 4
  %.2248 = fdiv float 1.000000e+00, %.2247
  %.2249 = bitcast ptr %R0 to ptr
  store float %.2248, ptr %.2249, align 4
  %.2255 = icmp eq i1 %.2216, true
  br i1 %.2255, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
  %.2258 = load float, ptr %R8, align 4
  %.2259 = fdiv float 1.000000e+00, %.2258
  %.2260 = bitcast ptr %R9 to ptr
  store float %.2259, ptr %.2260, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
  %.2265 = load float, ptr %R8, align 4
  %.2266 = fdiv float 1.000000e+00, %.2265
  %.2267 = bitcast ptr %R9 to ptr
  store float %.2266, ptr %.2267, align 4
  %.2273 = icmp eq i1 %.2216, true
  br i1 %.2273, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
  %.2276 = load float, ptr %R8, align 4
  %.2277 = load float, ptr %R9, align 4
  %fmul.65 = fmul float %.2276, %.2277
  %fadd.71 = fadd float %fmul.65, -1.000000e+00
  %.2278 = bitcast ptr %R11 to ptr
  store float %fadd.71, ptr %.2278, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
  %.2283 = load float, ptr %R8, align 4
  %.2284 = load float, ptr %R9, align 4
  %fmul.66 = fmul float %.2283, %.2284
  %fadd.72 = fadd float %fmul.66, -1.000000e+00
  %.2285 = bitcast ptr %R11 to ptr
  store float %fadd.72, ptr %.2285, align 4
  %.2291 = icmp eq i1 %.2216, true
  br i1 %.2291, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
  %.2294 = load float, ptr %R11, align 4
  %.2295 = fneg float %.2294
  %.2296 = call float @llvm.fabs.f32(float %.2295)
  %.2297 = fcmp ogt float %.2296, 0.000000e+00
  %.2298 = fcmp olt float %.2296, 0x3810000000000000
  %.2299 = and i1 %.2297, %.2298
  %.2300 = select i1 %.2299, float 0.000000e+00, float %.2295
  %.2301 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2302 = fcmp ogt float %.2301, 0.000000e+00
  %.2303 = fcmp olt float %.2301, 0x3810000000000000
  %.2304 = and i1 %.2302, %.2303
  %.2305 = select i1 %.2304, float 0.000000e+00, float 0.000000e+00
  %fadd.73 = fadd float %.2300, %.2305
  %.2306 = call float @llvm.fabs.f32(float %fadd.73)
  %.2307 = fcmp ogt float %.2306, 0.000000e+00
  %.2308 = fcmp olt float %.2306, 0x3810000000000000
  %.2309 = and i1 %.2307, %.2308
  %.2310 = select i1 %.2309, float 0.000000e+00, float %fadd.73
  %.2311 = bitcast ptr %R12 to ptr
  store float %.2310, ptr %.2311, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
  %.2316 = load float, ptr %R11, align 4
  %.2317 = fneg float %.2316
  %.2318 = call float @llvm.fabs.f32(float %.2317)
  %.2319 = fcmp ogt float %.2318, 0.000000e+00
  %.2320 = fcmp olt float %.2318, 0x3810000000000000
  %.2321 = and i1 %.2319, %.2320
  %.2322 = select i1 %.2321, float 0.000000e+00, float %.2317
  %.2323 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2324 = fcmp ogt float %.2323, 0.000000e+00
  %.2325 = fcmp olt float %.2323, 0x3810000000000000
  %.2326 = and i1 %.2324, %.2325
  %.2327 = select i1 %.2326, float 0.000000e+00, float 0.000000e+00
  %fadd.74 = fadd float %.2322, %.2327
  %.2328 = call float @llvm.fabs.f32(float %fadd.74)
  %.2329 = fcmp ogt float %.2328, 0.000000e+00
  %.2330 = fcmp olt float %.2328, 0x3810000000000000
  %.2331 = and i1 %.2329, %.2330
  %.2332 = select i1 %.2331, float 0.000000e+00, float %fadd.74
  %.2333 = bitcast ptr %R12 to ptr
  store float %.2332, ptr %.2333, align 4
  %.2339 = icmp eq i1 %.2216, true
  br i1 %.2339, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
  %.2342 = load float, ptr %R9, align 4
  %.2343 = load float, ptr %R12, align 4
  %.2344 = load float, ptr %R9, align 4
  %fmul.67 = fmul float %.2342, %.2343
  %fadd.75 = fadd float %fmul.67, %.2344
  %.2345 = bitcast ptr %R12 to ptr
  store float %fadd.75, ptr %.2345, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
  %.2350 = load float, ptr %R9, align 4
  %.2351 = load float, ptr %R12, align 4
  %.2352 = load float, ptr %R9, align 4
  %fmul.68 = fmul float %.2350, %.2351
  %fadd.76 = fadd float %fmul.68, %.2352
  %.2353 = bitcast ptr %R12 to ptr
  store float %fadd.76, ptr %.2353, align 4
  %.2359 = icmp eq i1 %.2216, true
  br i1 %.2359, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
  %.2362 = load float, ptr %R12, align 4
  %fmul.69 = fmul float %.2362, 0x43F0000000000000
  %fadd.77 = fadd float %fmul.69, 0.000000e+00
  %.2363 = bitcast ptr %R0 to ptr
  store float %fadd.77, ptr %.2363, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
  %.2368 = load float, ptr %R12, align 4
  %fmul.70 = fmul float %.2368, 0x43F0000000000000
  %fadd.78 = fadd float %fmul.70, 0.000000e+00
  %.2369 = bitcast ptr %R0 to ptr
  store float %fadd.78, ptr %.2369, align 4
  br label %.L_x_20...1

.L_x_21...1:                                      ; preds = %.L_x_4_split_0x14e0_CALL_0x1510
  %.2376 = load i32, ptr %R16, align 4
  %.2377 = add i32 %.2376, -253
  %.2378 = add i32 %.2377, 0
  store i32 %.2378, ptr %R18, align 4
  %.2381 = load i32, ptr %R18, align 4
  %cmp.11 = icmp sgt i32 %.2381, 1
  %.2384 = and i1 %cmp.11, true
  %.2389 = icmp eq i1 %.2384, true
  br i1 %.2389, label %.L_x_23...1, label %.L_x_21_split_0x1a90...1

.L_x_21_split_0x1a90...1:                         ; preds = %.L_x_21...1
  %.2392 = load i32, ptr %R15, align 4
  %.2394 = and i32 %.2392, 8388607
  store i32 %.2394, ptr %R0, align 4
  store i32 3, ptr %R13, align 4
  %.2399 = load i32, ptr %R0, align 4
  %.2401 = or i32 %.2399, 1065353216
  store i32 %.2401, ptr %R0, align 4
  %.2406 = load i32, ptr %R13, align 4
  %.2407 = load i32, ptr %R18, align 4
  %zext.169 = zext i32 0 to i64
  %zext.170 = zext i32 %.2406 to i64
  %zext.171 = zext i32 %.2407 to i64
  %shl.91 = shl i64 %zext.169, 32
  %or.76 = or i64 %shl.91, %zext.170
  %shl.92 = shl i64 %or.76, %zext.171
  %and.8 = and i64 %shl.92, 4294967295
  %trunc32.51 = trunc i64 %and.8 to i32
  store i32 %trunc32.51, ptr %R13, align 4
  %.2410 = load i32, ptr %R0, align 4
  %sint_to_f32 = sitofp i32 %.2410 to float
  %.2411 = fdiv float 1.000000e+00, %sint_to_f32
  %.2412 = fptosi float %.2411 to i32
  store i32 %.2412, ptr %R9, align 4
  %.2415 = load float, ptr %R0, align 4
  %.2416 = load float, ptr %R9, align 4
  %fmul.71 = fmul float %.2415, %.2416
  %fadd.79 = fadd float %fmul.71, -1.000000e+00
  %.2417 = bitcast ptr %R8 to ptr
  store float %fadd.79, ptr %.2417, align 4
  %.2420 = load float, ptr %R8, align 4
  %.2421 = fneg float %.2420
  %.2422 = call float @llvm.fabs.f32(float %.2421)
  %.2423 = fcmp ogt float %.2422, 0.000000e+00
  %.2424 = fcmp olt float %.2422, 0x3810000000000000
  %.2425 = and i1 %.2423, %.2424
  %.2426 = select i1 %.2425, float 0.000000e+00, float %.2421
  %.2427 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2428 = fcmp ogt float %.2427, 0.000000e+00
  %.2429 = fcmp olt float %.2427, 0x3810000000000000
  %.2430 = and i1 %.2428, %.2429
  %.2431 = select i1 %.2430, float 0.000000e+00, float 0.000000e+00
  %fadd.80 = fadd float %.2426, %.2431
  %.2432 = call float @llvm.fabs.f32(float %fadd.80)
  %.2433 = fcmp ogt float %.2432, 0.000000e+00
  %.2434 = fcmp olt float %.2432, 0x3810000000000000
  %.2435 = and i1 %.2433, %.2434
  %.2436 = select i1 %.2435, float 0.000000e+00, float %fadd.80
  %.2437 = bitcast ptr %R8 to ptr
  store float %.2436, ptr %.2437, align 4
  %.2440 = load float, ptr %R9, align 4
  %.2441 = load float, ptr %R8, align 4
  %.2442 = load float, ptr %R9, align 4
  %fmul.72 = fmul float %.2440, %.2441
  %fadd.81 = fadd float %fmul.72, %.2442
  %.2443 = bitcast ptr %R11 to ptr
  store float %fadd.81, ptr %.2443, align 4
  %.2446 = load float, ptr %R9, align 4
  %.2447 = load float, ptr %R8, align 4
  %.2448 = load float, ptr %R9, align 4
  %fmul.73 = fmul float %.2446, %.2447
  %fadd.82 = fadd float %fmul.73, %.2448
  %.2449 = bitcast ptr %R12 to ptr
  store float %fadd.82, ptr %.2449, align 4
  %.2452 = load i32, ptr %R11, align 4
  %.2454 = and i32 %.2452, 8388607
  store i32 %.2454, ptr %R8, align 4
  %.2457 = load float, ptr %R11, align 4
  %.2458 = load float, ptr %R12, align 4
  %.2460 = call float @llvm.fabs.f32(float %.2457)
  %.2461 = fcmp ogt float %.2460, 0.000000e+00
  %.2462 = fcmp olt float %.2460, 0x3810000000000000
  %.2463 = and i1 %.2461, %.2462
  %.2464 = select i1 %.2463, float 0.000000e+00, float %.2457
  %.2465 = call float @llvm.fabs.f32(float %.2458)
  %.2466 = fcmp ogt float %.2465, 0.000000e+00
  %.2467 = fcmp olt float %.2465, 0x3810000000000000
  %.2468 = and i1 %.2466, %.2467
  %.2469 = select i1 %.2468, float 0.000000e+00, float %.2458
  %fcmp_ordered = fcmp une float %.2464, %.2469
  %.2471 = and i1 %fcmp_ordered, true
  %.2475 = load i32, ptr %R8, align 4
  %.2477 = or i32 %.2475, 8388608
  store i32 %.2477, ptr %R8, align 4
  %.2481 = xor i1 %.2471, true
  %.2482 = icmp eq i1 %.2481, true
  %sel = select i1 %.2482, i32 0, i32 -1
  store i32 %sel, ptr %R9, align 4
  %.2485 = load i32, ptr %R13, align 4
  %.2486 = load i32, ptr %R8, align 4
  %.2488 = and i32 %.2485, %.2486
  store i32 %.2488, ptr %R13, align 4
  %.2491 = load i32, ptr %R9, align 4
  %.2492 = sub i32 0, %.2491
  %imad_mul.44 = mul i32 0, 0
  %imad_add.47 = add i32 %imad_mul.44, %.2492
  store i32 %imad_add.47, ptr %R9, align 4
  %.2497 = load i32, ptr %R13, align 4
  %.2498 = load i32, ptr %R18, align 4
  %zext.172 = zext i32 %.2497 to i64
  %zext.173 = zext i32 0 to i64
  %zext.174 = zext i32 %.2498 to i64
  %shl.93 = shl i64 %zext.172, 32
  %or.77 = or i64 %shl.93, %zext.173
  %lshr.6 = lshr i64 %or.77, %zext.174
  %lshr.7 = lshr i64 %lshr.6, 32
  %trunc32.52 = trunc i64 %lshr.7 to i32
  store i32 %trunc32.52, ptr %R13, align 4
  %.2512 = load i32, ptr %R13, align 4
  %.2514 = and i32 %.2512, 1
  %.2516 = icmp ne i32 %.2514, 0
  %.2526 = load i32, ptr %R16, align 4
  %.2527 = add i32 %.2526, -252
  %.2528 = add i32 %.2527, 0
  store i32 %.2528, ptr %R9, align 4
  %.2536 = load i32, ptr %R15, align 4
  %.2538 = and i32 %.2536, 8388607
  %.2540 = icmp ne i32 %.2538, 0
  %.2544 = xor i1 %.2516, true
  %.2545 = icmp eq i1 %.2544, true
  %sel.1 = select i1 %.2545, i32 0, i32 1
  store i32 %sel.1, ptr %R0, align 4
  %.2548 = load i32, ptr %R0, align 4
  %.2549 = sub i32 0, %.2548
  %.2550 = add i32 %.2549, 0
  %.2551 = add i32 %.2550, 0
  store i32 %.2551, ptr %R0, align 4
  %.2554 = load i32, ptr %R0, align 4
  %cmp.12 = icmp sge i32 %.2554, 0
  %.2557 = and i1 %cmp.12, true
  %.2563 = load i32, ptr %R8, align 4
  %.2564 = load i32, ptr %R9, align 4
  %zext.175 = zext i32 %.2563 to i64
  %zext.176 = zext i32 0 to i64
  %zext.177 = zext i32 %.2564 to i64
  %shl.94 = shl i64 %zext.175, 32
  %or.78 = or i64 %shl.94, %zext.176
  %lshr.8 = lshr i64 %or.78, %zext.177
  %lshr.9 = lshr i64 %lshr.8, 32
  %trunc32.53 = trunc i64 %lshr.9 to i32
  store i32 %trunc32.53, ptr %R0, align 4
  %.2568 = icmp ne i1 %.2557, true
  br i1 %.2568, label %.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30, label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1

.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30:  ; preds = %.L_x_21_split_0x1a90...1
  %.2571 = load i32, ptr %R0, align 4
  %.2572 = add i32 %.2571, 1
  %.2573 = add i32 %.2572, 0
  store i32 %.2573, ptr %R0, align 4
  br label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1

.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1:  ; preds = %.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30, %.L_x_21_split_0x1a90...1
  %.2578 = load i32, ptr %R0, align 4
  %.2579 = add i32 %.2578, 1
  %.2580 = add i32 %.2579, 0
  store i32 %.2580, ptr %R0, align 4
  %.2586 = icmp ne i1 %.2540, true
  br i1 %.2586, label %.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40, label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1

.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40:  ; preds = %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1
  %.2589 = load i32, ptr %R0, align 4
  %imad_shl.3 = shl i32 %.2589, 2
  %imad_add.48 = add i32 %imad_shl.3, 0
  store i32 %imad_add.48, ptr %R0, align 4
  br label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1

.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1:  ; preds = %.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40, %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1
  %.2594 = load i32, ptr %R0, align 4
  %imad_shl.4 = shl i32 %.2594, 2
  %imad_add.49 = add i32 %imad_shl.4, 0
  store i32 %imad_add.49, ptr %R0, align 4
  %.2599 = load i32, ptr %R0, align 4
  %.2600 = load i32, ptr %R15, align 4
  %.2602 = or i32 %.2599, -2147483648
  %.2603 = or i32 %.2599, %.2600
  %.2604 = and i32 %.2602, %.2603
  store i32 %.2604, ptr %R0, align 4
  br label %.L_x_20...1

.L_x_23...1:                                      ; preds = %.L_x_21...1
  %.2609 = load float, ptr %R15, align 4
  %.2610 = fdiv float 1.000000e+00, %.2609
  %.2611 = bitcast ptr %R0 to ptr
  store float %.2610, ptr %.2611, align 4
  br label %.L_x_20...1

.L_x_20...1:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1", %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1, %.L_x_23...1
  %.2617 = load i32, ptr %R14, align 4
  store i32 %.2617, ptr %R8, align 4
  %imad_mul.45 = mul i32 0, 0
  %imad_add.50 = add i32 %imad_mul.45, 0
  store i32 %imad_add.50, ptr %R9, align 4
  %.2627 = load i32, ptr %R0, align 4
  %imad_mul.46 = mul i32 0, 0
  %imad_add.51 = add i32 %imad_mul.46, %.2627
  store i32 %imad_add.51, ptr %R7, align 4
  br label %.L_x_8

.L_x_9:                                           ; preds = %.L_x_4_split_0x14c0
  %.2632 = load float, ptr %R15, align 4
  %.2633 = fdiv float 1.000000e+00, %.2632
  %.2634 = bitcast ptr %R7 to ptr
  store float %.2633, ptr %.2634, align 4
  %.2637 = load float, ptr %R15, align 4
  %.2638 = load float, ptr %R7, align 4
  %fmul.74 = fmul float %.2637, %.2638
  %fadd.83 = fadd float %fmul.74, -1.000000e+00
  %.2639 = bitcast ptr %R0 to ptr
  store float %fadd.83, ptr %.2639, align 4
  %.2642 = load float, ptr %R0, align 4
  %.2643 = fneg float %.2642
  %.2644 = call float @llvm.fabs.f32(float %.2643)
  %.2645 = fcmp ogt float %.2644, 0.000000e+00
  %.2646 = fcmp olt float %.2644, 0x3810000000000000
  %.2647 = and i1 %.2645, %.2646
  %.2648 = select i1 %.2647, float 0.000000e+00, float %.2643
  %.2649 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2650 = fcmp ogt float %.2649, 0.000000e+00
  %.2651 = fcmp olt float %.2649, 0x3810000000000000
  %.2652 = and i1 %.2650, %.2651
  %.2653 = select i1 %.2652, float 0.000000e+00, float 0.000000e+00
  %fadd.84 = fadd float %.2648, %.2653
  %.2654 = call float @llvm.fabs.f32(float %fadd.84)
  %.2655 = fcmp ogt float %.2654, 0.000000e+00
  %.2656 = fcmp olt float %.2654, 0x3810000000000000
  %.2657 = and i1 %.2655, %.2656
  %.2658 = select i1 %.2657, float 0.000000e+00, float %fadd.84
  %.2659 = bitcast ptr %R0 to ptr
  store float %.2658, ptr %.2659, align 4
  %.2662 = load float, ptr %R7, align 4
  %.2663 = load float, ptr %R0, align 4
  %.2664 = load float, ptr %R7, align 4
  %fmul.75 = fmul float %.2662, %.2663
  %fadd.85 = fadd float %fmul.75, %.2664
  %.2665 = bitcast ptr %R7 to ptr
  store float %fadd.85, ptr %.2665, align 4
  br label %.L_x_8

.L_x_8:                                           ; preds = %.L_x_20...1, %.L_x_9
  %.2671 = load i32, ptr %R2, align 4
  %.2672 = add i32 %.2671, 25165824
  %.2673 = add i32 %.2672, 0
  store i32 %.2673, ptr %R0, align 4
  %.2678 = load float, ptr %R4, align 4
  %.2679 = load float, ptr %R7, align 4
  %fmul.76 = fmul float %.2678, %.2679
  %.2680 = bitcast ptr %R4 to ptr
  store float %fmul.76, ptr %.2680, align 4
  %.2683 = load i32, ptr %R0, align 4
  %.2685 = and i32 %.2683, 2139095040
  store i32 %.2685, ptr %R0, align 4
  %.2688 = load i32, ptr %R0, align 4
  %cmp.13 = icmp sgt i32 %.2688, 33554431
  %.2691 = and i1 %cmp.13, true
  %.2696 = icmp eq i1 %.2691, true
  br i1 %.2696, label %.L_x_12, label %.L_x_8_split_0x15e0_CALL_0x1620

.L_x_8_split_0x15e0_CALL_0x1620:                  ; preds = %.L_x_8
  %.2699 = load float, ptr %R2, align 4
  %.2700 = bitcast ptr %R15 to ptr
  store float %.2699, ptr %.2700, align 4
  store i32 5648, ptr %R14, align 4
  %.2708 = load i32, ptr %R15, align 4
  %zext.178 = zext i32 0 to i64
  %zext.179 = zext i32 %.2708 to i64
  %zext.180 = zext i32 1 to i64
  %shl.95 = shl i64 %zext.178, 32
  %or.79 = or i64 %shl.95, %zext.179
  %shl.96 = shl i64 %or.79, %zext.180
  %and.9 = and i64 %shl.96, 4294967295
  %trunc32.54 = trunc i64 %and.9 to i32
  store i32 %trunc32.54, ptr %R0, align 4
  %.2714 = load i32, ptr %R0, align 4
  %zext.181 = zext i32 %.2714 to i64
  %zext.182 = zext i32 0 to i64
  %zext.183 = zext i32 24 to i64
  %shl.97 = shl i64 %zext.181, 32
  %or.80 = or i64 %shl.97, %zext.182
  %lshr.10 = lshr i64 %or.80, %zext.183
  %lshr.11 = lshr i64 %lshr.10, 32
  %trunc32.55 = trunc i64 %lshr.11 to i32
  store i32 %trunc32.55, ptr %R16, align 4
  %.2717 = load i32, ptr %R16, align 4
  %cmp.14 = icmp ne i32 %.2717, 0
  %.2720 = and i1 %cmp.14, true
  %.2725 = icmp eq i1 %.2720, true
  br i1 %.2725, label %.L_x_21...2, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2": ; preds = %.L_x_8_split_0x15e0_CALL_0x1620
  %.2728 = load i32, ptr %R15, align 4
  %imad_shl.5 = shl i32 %.2728, 2
  %imad_add.52 = add i32 %imad_shl.5, 0
  store i32 %imad_add.52, ptr %R0, align 4
  %.2731 = load i32, ptr %R0, align 4
  %cmp.15 = icmp ne i32 %.2731, 0
  %.2734 = and i1 %cmp.15, true
  %.2739 = icmp eq i1 %.2734, true
  br i1 %.2739, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"
  %.2742 = load float, ptr %R15, align 4
  %fmul.77 = fmul float %.2742, 0x43F0000000000000
  %fadd.86 = fadd float %fmul.77, 0.000000e+00
  %.2743 = bitcast ptr %R8 to ptr
  store float %fadd.86, ptr %.2743, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"
  %.2748 = load float, ptr %R15, align 4
  %fmul.78 = fmul float %.2748, 0x43F0000000000000
  %fadd.87 = fadd float %fmul.78, 0.000000e+00
  %.2749 = bitcast ptr %R8 to ptr
  store float %fadd.87, ptr %.2749, align 4
  %.2755 = icmp ne i1 %.2734, true
  br i1 %.2755, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"
  %.2758 = load i32, ptr %R15, align 4
  %sint_to_f32.1 = sitofp i32 %.2758 to float
  %.2759 = fdiv float 1.000000e+00, %sint_to_f32.1
  %.2760 = fptosi float %.2759 to i32
  store i32 %.2760, ptr %R0, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"
  %.2765 = load i32, ptr %R15, align 4
  %sint_to_f32.2 = sitofp i32 %.2765 to float
  %.2766 = fdiv float 1.000000e+00, %sint_to_f32.2
  %.2767 = fptosi float %.2766 to i32
  store i32 %.2767, ptr %R0, align 4
  %.2773 = icmp eq i1 %.2734, true
  br i1 %.2773, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
  %.2776 = load float, ptr %R8, align 4
  %.2777 = fdiv float 1.000000e+00, %.2776
  %.2778 = bitcast ptr %R9 to ptr
  store float %.2777, ptr %.2778, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
  %.2783 = load float, ptr %R8, align 4
  %.2784 = fdiv float 1.000000e+00, %.2783
  %.2785 = bitcast ptr %R9 to ptr
  store float %.2784, ptr %.2785, align 4
  %.2791 = icmp eq i1 %.2734, true
  br i1 %.2791, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
  %.2794 = load float, ptr %R8, align 4
  %.2795 = load float, ptr %R9, align 4
  %fmul.79 = fmul float %.2794, %.2795
  %fadd.88 = fadd float %fmul.79, -1.000000e+00
  %.2796 = bitcast ptr %R11 to ptr
  store float %fadd.88, ptr %.2796, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
  %.2801 = load float, ptr %R8, align 4
  %.2802 = load float, ptr %R9, align 4
  %fmul.80 = fmul float %.2801, %.2802
  %fadd.89 = fadd float %fmul.80, -1.000000e+00
  %.2803 = bitcast ptr %R11 to ptr
  store float %fadd.89, ptr %.2803, align 4
  %.2809 = icmp eq i1 %.2734, true
  br i1 %.2809, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
  %.2812 = load float, ptr %R11, align 4
  %.2813 = fneg float %.2812
  %.2814 = call float @llvm.fabs.f32(float %.2813)
  %.2815 = fcmp ogt float %.2814, 0.000000e+00
  %.2816 = fcmp olt float %.2814, 0x3810000000000000
  %.2817 = and i1 %.2815, %.2816
  %.2818 = select i1 %.2817, float 0.000000e+00, float %.2813
  %.2819 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2820 = fcmp ogt float %.2819, 0.000000e+00
  %.2821 = fcmp olt float %.2819, 0x3810000000000000
  %.2822 = and i1 %.2820, %.2821
  %.2823 = select i1 %.2822, float 0.000000e+00, float 0.000000e+00
  %fadd.90 = fadd float %.2818, %.2823
  %.2824 = call float @llvm.fabs.f32(float %fadd.90)
  %.2825 = fcmp ogt float %.2824, 0.000000e+00
  %.2826 = fcmp olt float %.2824, 0x3810000000000000
  %.2827 = and i1 %.2825, %.2826
  %.2828 = select i1 %.2827, float 0.000000e+00, float %fadd.90
  %.2829 = bitcast ptr %R12 to ptr
  store float %.2828, ptr %.2829, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
  %.2834 = load float, ptr %R11, align 4
  %.2835 = fneg float %.2834
  %.2836 = call float @llvm.fabs.f32(float %.2835)
  %.2837 = fcmp ogt float %.2836, 0.000000e+00
  %.2838 = fcmp olt float %.2836, 0x3810000000000000
  %.2839 = and i1 %.2837, %.2838
  %.2840 = select i1 %.2839, float 0.000000e+00, float %.2835
  %.2841 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2842 = fcmp ogt float %.2841, 0.000000e+00
  %.2843 = fcmp olt float %.2841, 0x3810000000000000
  %.2844 = and i1 %.2842, %.2843
  %.2845 = select i1 %.2844, float 0.000000e+00, float 0.000000e+00
  %fadd.91 = fadd float %.2840, %.2845
  %.2846 = call float @llvm.fabs.f32(float %fadd.91)
  %.2847 = fcmp ogt float %.2846, 0.000000e+00
  %.2848 = fcmp olt float %.2846, 0x3810000000000000
  %.2849 = and i1 %.2847, %.2848
  %.2850 = select i1 %.2849, float 0.000000e+00, float %fadd.91
  %.2851 = bitcast ptr %R12 to ptr
  store float %.2850, ptr %.2851, align 4
  %.2857 = icmp eq i1 %.2734, true
  br i1 %.2857, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
  %.2860 = load float, ptr %R9, align 4
  %.2861 = load float, ptr %R12, align 4
  %.2862 = load float, ptr %R9, align 4
  %fmul.81 = fmul float %.2860, %.2861
  %fadd.92 = fadd float %fmul.81, %.2862
  %.2863 = bitcast ptr %R12 to ptr
  store float %fadd.92, ptr %.2863, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
  %.2868 = load float, ptr %R9, align 4
  %.2869 = load float, ptr %R12, align 4
  %.2870 = load float, ptr %R9, align 4
  %fmul.82 = fmul float %.2868, %.2869
  %fadd.93 = fadd float %fmul.82, %.2870
  %.2871 = bitcast ptr %R12 to ptr
  store float %fadd.93, ptr %.2871, align 4
  %.2877 = icmp eq i1 %.2734, true
  br i1 %.2877, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
  %.2880 = load float, ptr %R12, align 4
  %fmul.83 = fmul float %.2880, 0x43F0000000000000
  %fadd.94 = fadd float %fmul.83, 0.000000e+00
  %.2881 = bitcast ptr %R0 to ptr
  store float %fadd.94, ptr %.2881, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
  %.2886 = load float, ptr %R12, align 4
  %fmul.84 = fmul float %.2886, 0x43F0000000000000
  %fadd.95 = fadd float %fmul.84, 0.000000e+00
  %.2887 = bitcast ptr %R0 to ptr
  store float %fadd.95, ptr %.2887, align 4
  br label %.L_x_20...2

.L_x_21...2:                                      ; preds = %.L_x_8_split_0x15e0_CALL_0x1620
  %.2894 = load i32, ptr %R16, align 4
  %.2895 = add i32 %.2894, -253
  %.2896 = add i32 %.2895, 0
  store i32 %.2896, ptr %R18, align 4
  %.2899 = load i32, ptr %R18, align 4
  %cmp.16 = icmp sgt i32 %.2899, 1
  %.2902 = and i1 %cmp.16, true
  %.2907 = icmp eq i1 %.2902, true
  br i1 %.2907, label %.L_x_23...2, label %.L_x_21_split_0x1a90...2

.L_x_21_split_0x1a90...2:                         ; preds = %.L_x_21...2
  %.2910 = load i32, ptr %R15, align 4
  %.2912 = and i32 %.2910, 8388607
  store i32 %.2912, ptr %R0, align 4
  store i32 3, ptr %R13, align 4
  %.2917 = load i32, ptr %R0, align 4
  %.2919 = or i32 %.2917, 1065353216
  store i32 %.2919, ptr %R0, align 4
  %.2924 = load i32, ptr %R13, align 4
  %.2925 = load i32, ptr %R18, align 4
  %zext.184 = zext i32 0 to i64
  %zext.185 = zext i32 %.2924 to i64
  %zext.186 = zext i32 %.2925 to i64
  %shl.98 = shl i64 %zext.184, 32
  %or.81 = or i64 %shl.98, %zext.185
  %shl.99 = shl i64 %or.81, %zext.186
  %and.10 = and i64 %shl.99, 4294967295
  %trunc32.56 = trunc i64 %and.10 to i32
  store i32 %trunc32.56, ptr %R13, align 4
  %.2928 = load i32, ptr %R0, align 4
  %sint_to_f32.3 = sitofp i32 %.2928 to float
  %.2929 = fdiv float 1.000000e+00, %sint_to_f32.3
  %.2930 = fptosi float %.2929 to i32
  store i32 %.2930, ptr %R9, align 4
  %.2933 = load float, ptr %R0, align 4
  %.2934 = load float, ptr %R9, align 4
  %fmul.85 = fmul float %.2933, %.2934
  %fadd.96 = fadd float %fmul.85, -1.000000e+00
  %.2935 = bitcast ptr %R8 to ptr
  store float %fadd.96, ptr %.2935, align 4
  %.2938 = load float, ptr %R8, align 4
  %.2939 = fneg float %.2938
  %.2940 = call float @llvm.fabs.f32(float %.2939)
  %.2941 = fcmp ogt float %.2940, 0.000000e+00
  %.2942 = fcmp olt float %.2940, 0x3810000000000000
  %.2943 = and i1 %.2941, %.2942
  %.2944 = select i1 %.2943, float 0.000000e+00, float %.2939
  %.2945 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2946 = fcmp ogt float %.2945, 0.000000e+00
  %.2947 = fcmp olt float %.2945, 0x3810000000000000
  %.2948 = and i1 %.2946, %.2947
  %.2949 = select i1 %.2948, float 0.000000e+00, float 0.000000e+00
  %fadd.97 = fadd float %.2944, %.2949
  %.2950 = call float @llvm.fabs.f32(float %fadd.97)
  %.2951 = fcmp ogt float %.2950, 0.000000e+00
  %.2952 = fcmp olt float %.2950, 0x3810000000000000
  %.2953 = and i1 %.2951, %.2952
  %.2954 = select i1 %.2953, float 0.000000e+00, float %fadd.97
  %.2955 = bitcast ptr %R8 to ptr
  store float %.2954, ptr %.2955, align 4
  %.2958 = load float, ptr %R9, align 4
  %.2959 = load float, ptr %R8, align 4
  %.2960 = load float, ptr %R9, align 4
  %fmul.86 = fmul float %.2958, %.2959
  %fadd.98 = fadd float %fmul.86, %.2960
  %.2961 = bitcast ptr %R11 to ptr
  store float %fadd.98, ptr %.2961, align 4
  %.2964 = load float, ptr %R9, align 4
  %.2965 = load float, ptr %R8, align 4
  %.2966 = load float, ptr %R9, align 4
  %fmul.87 = fmul float %.2964, %.2965
  %fadd.99 = fadd float %fmul.87, %.2966
  %.2967 = bitcast ptr %R12 to ptr
  store float %fadd.99, ptr %.2967, align 4
  %.2970 = load i32, ptr %R11, align 4
  %.2972 = and i32 %.2970, 8388607
  store i32 %.2972, ptr %R8, align 4
  %.2975 = load float, ptr %R11, align 4
  %.2976 = load float, ptr %R12, align 4
  %.2978 = call float @llvm.fabs.f32(float %.2975)
  %.2979 = fcmp ogt float %.2978, 0.000000e+00
  %.2980 = fcmp olt float %.2978, 0x3810000000000000
  %.2981 = and i1 %.2979, %.2980
  %.2982 = select i1 %.2981, float 0.000000e+00, float %.2975
  %.2983 = call float @llvm.fabs.f32(float %.2976)
  %.2984 = fcmp ogt float %.2983, 0.000000e+00
  %.2985 = fcmp olt float %.2983, 0x3810000000000000
  %.2986 = and i1 %.2984, %.2985
  %.2987 = select i1 %.2986, float 0.000000e+00, float %.2976
  %fcmp_ordered.1 = fcmp une float %.2982, %.2987
  %.2989 = and i1 %fcmp_ordered.1, true
  %.2993 = load i32, ptr %R8, align 4
  %.2995 = or i32 %.2993, 8388608
  store i32 %.2995, ptr %R8, align 4
  %.2999 = xor i1 %.2989, true
  %.3000 = icmp eq i1 %.2999, true
  %sel.2 = select i1 %.3000, i32 0, i32 -1
  store i32 %sel.2, ptr %R9, align 4
  %.3003 = load i32, ptr %R13, align 4
  %.3004 = load i32, ptr %R8, align 4
  %.3006 = and i32 %.3003, %.3004
  store i32 %.3006, ptr %R13, align 4
  %.3009 = load i32, ptr %R9, align 4
  %.3010 = sub i32 0, %.3009
  %imad_mul.47 = mul i32 0, 0
  %imad_add.53 = add i32 %imad_mul.47, %.3010
  store i32 %imad_add.53, ptr %R9, align 4
  %.3015 = load i32, ptr %R13, align 4
  %.3016 = load i32, ptr %R18, align 4
  %zext.187 = zext i32 %.3015 to i64
  %zext.188 = zext i32 0 to i64
  %zext.189 = zext i32 %.3016 to i64
  %shl.100 = shl i64 %zext.187, 32
  %or.82 = or i64 %shl.100, %zext.188
  %lshr.12 = lshr i64 %or.82, %zext.189
  %lshr.13 = lshr i64 %lshr.12, 32
  %trunc32.57 = trunc i64 %lshr.13 to i32
  store i32 %trunc32.57, ptr %R13, align 4
  %.3030 = load i32, ptr %R13, align 4
  %.3032 = and i32 %.3030, 1
  %.3034 = icmp ne i32 %.3032, 0
  %.3044 = load i32, ptr %R16, align 4
  %.3045 = add i32 %.3044, -252
  %.3046 = add i32 %.3045, 0
  store i32 %.3046, ptr %R9, align 4
  %.3054 = load i32, ptr %R15, align 4
  %.3056 = and i32 %.3054, 8388607
  %.3058 = icmp ne i32 %.3056, 0
  %.3062 = xor i1 %.3034, true
  %.3063 = icmp eq i1 %.3062, true
  %sel.3 = select i1 %.3063, i32 0, i32 1
  store i32 %sel.3, ptr %R0, align 4
  %.3066 = load i32, ptr %R0, align 4
  %.3067 = sub i32 0, %.3066
  %.3068 = add i32 %.3067, 0
  %.3069 = add i32 %.3068, 0
  store i32 %.3069, ptr %R0, align 4
  %.3072 = load i32, ptr %R0, align 4
  %cmp.17 = icmp sge i32 %.3072, 0
  %.3075 = and i1 %cmp.17, true
  %.3081 = load i32, ptr %R8, align 4
  %.3082 = load i32, ptr %R9, align 4
  %zext.190 = zext i32 %.3081 to i64
  %zext.191 = zext i32 0 to i64
  %zext.192 = zext i32 %.3082 to i64
  %shl.101 = shl i64 %zext.190, 32
  %or.83 = or i64 %shl.101, %zext.191
  %lshr.14 = lshr i64 %or.83, %zext.192
  %lshr.15 = lshr i64 %lshr.14, 32
  %trunc32.58 = trunc i64 %lshr.15 to i32
  store i32 %trunc32.58, ptr %R0, align 4
  %.3086 = icmp ne i1 %.3075, true
  br i1 %.3086, label %.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30, label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2

.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30:  ; preds = %.L_x_21_split_0x1a90...2
  %.3089 = load i32, ptr %R0, align 4
  %.3090 = add i32 %.3089, 1
  %.3091 = add i32 %.3090, 0
  store i32 %.3091, ptr %R0, align 4
  br label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2

.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2:  ; preds = %.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30, %.L_x_21_split_0x1a90...2
  %.3096 = load i32, ptr %R0, align 4
  %.3097 = add i32 %.3096, 1
  %.3098 = add i32 %.3097, 0
  store i32 %.3098, ptr %R0, align 4
  %.3104 = icmp ne i1 %.3058, true
  br i1 %.3104, label %.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40, label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2

.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40:  ; preds = %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2
  %.3107 = load i32, ptr %R0, align 4
  %imad_shl.6 = shl i32 %.3107, 2
  %imad_add.54 = add i32 %imad_shl.6, 0
  store i32 %imad_add.54, ptr %R0, align 4
  br label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2

.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2:  ; preds = %.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40, %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2
  %.3112 = load i32, ptr %R0, align 4
  %imad_shl.7 = shl i32 %.3112, 2
  %imad_add.55 = add i32 %imad_shl.7, 0
  store i32 %imad_add.55, ptr %R0, align 4
  %.3117 = load i32, ptr %R0, align 4
  %.3118 = load i32, ptr %R15, align 4
  %.3120 = or i32 %.3117, -2147483648
  %.3121 = or i32 %.3117, %.3118
  %.3122 = and i32 %.3120, %.3121
  store i32 %.3122, ptr %R0, align 4
  br label %.L_x_20...2

.L_x_23...2:                                      ; preds = %.L_x_21...2
  %.3127 = load i32, ptr %R15, align 4
  %sint_to_f32.4 = sitofp i32 %.3127 to float
  %.3128 = fdiv float 1.000000e+00, %sint_to_f32.4
  %.3129 = fptosi float %.3128 to i32
  store i32 %.3129, ptr %R0, align 4
  br label %.L_x_20...2

.L_x_20...2:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2", %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2, %.L_x_23...2
  %.3135 = load i32, ptr %R14, align 4
  store i32 %.3135, ptr %R8, align 4
  %imad_mul.48 = mul i32 0, 0
  %imad_add.56 = add i32 %imad_mul.48, 0
  store i32 %imad_add.56, ptr %R9, align 4
  %.3145 = load i32, ptr %R0, align 4
  %imad_mul.49 = mul i32 0, 0
  %imad_add.57 = add i32 %imad_mul.49, %.3145
  store i32 %imad_add.57, ptr %R7, align 4
  br label %.L_x_11

.L_x_12:                                          ; preds = %.L_x_8
  %.3150 = load float, ptr %R2, align 4
  %.3151 = fdiv float 1.000000e+00, %.3150
  %.3152 = bitcast ptr %R7 to ptr
  store float %.3151, ptr %.3152, align 4
  %.3155 = load float, ptr %R2, align 4
  %.3156 = load float, ptr %R7, align 4
  %fmul.88 = fmul float %.3155, %.3156
  %fadd.100 = fadd float %fmul.88, -1.000000e+00
  %.3157 = bitcast ptr %R0 to ptr
  store float %fadd.100, ptr %.3157, align 4
  %.3160 = load float, ptr %R0, align 4
  %.3161 = fneg float %.3160
  %.3162 = call float @llvm.fabs.f32(float %.3161)
  %.3163 = fcmp ogt float %.3162, 0.000000e+00
  %.3164 = fcmp olt float %.3162, 0x3810000000000000
  %.3165 = and i1 %.3163, %.3164
  %.3166 = select i1 %.3165, float 0.000000e+00, float %.3161
  %.3167 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.3168 = fcmp ogt float %.3167, 0.000000e+00
  %.3169 = fcmp olt float %.3167, 0x3810000000000000
  %.3170 = and i1 %.3168, %.3169
  %.3171 = select i1 %.3170, float 0.000000e+00, float 0.000000e+00
  %fadd.101 = fadd float %.3166, %.3171
  %.3172 = call float @llvm.fabs.f32(float %fadd.101)
  %.3173 = fcmp ogt float %.3172, 0.000000e+00
  %.3174 = fcmp olt float %.3172, 0x3810000000000000
  %.3175 = and i1 %.3173, %.3174
  %.3176 = select i1 %.3175, float 0.000000e+00, float %fadd.101
  %.3177 = bitcast ptr %R0 to ptr
  store float %.3176, ptr %.3177, align 4
  %.3180 = load float, ptr %R7, align 4
  %.3181 = load float, ptr %R0, align 4
  %.3182 = load float, ptr %R7, align 4
  %fmul.89 = fmul float %.3180, %.3181
  %fadd.102 = fadd float %fmul.89, %.3182
  %.3183 = bitcast ptr %R7 to ptr
  store float %fadd.102, ptr %.3183, align 4
  br label %.L_x_11

.L_x_11:                                          ; preds = %.L_x_20...2, %.L_x_12
  %.3189 = load float, ptr %R7, align 4
  %.3190 = load float, ptr %R10, align 4
  %.3191 = load float, ptr %R4, align 4
  %fmul.90 = fmul float %.3189, %.3190
  %fadd.103 = fadd float %fmul.90, %.3191
  %.3192 = bitcast ptr %R9 to ptr
  store float %fadd.103, ptr %.3192, align 4
  %.3197 = load float, ptr %R9, align 4
  %llvm_fabs_result.3 = call float @llvm.fabs.f32(float %.3197)
  %fcmp_unordered.2 = fcmp oge float %llvm_fabs_result.3, 0x3FE3333340000000
  %.3200 = and i1 %fcmp_unordered.2, true
  %.3205 = icmp ne i1 %.3200, true
  br i1 %.3205, label %.L_x_15, label %.L_x_11_split_0x16d0

.L_x_11_split_0x16d0:                             ; preds = %.L_x_11
  %.3208 = load float, ptr %R9, align 4
  %llvm_fabs_result.4 = call float @llvm.fabs.f32(float %.3208)
  %fmul.91 = fmul float %llvm_fabs_result.4, 0x4007154760000000
  %.3209 = bitcast ptr %R0 to ptr
  store float %fmul.91, ptr %.3209, align 4
  %.3212 = bitcast ptr %R7 to ptr
  store float 0x41CFC00000000000, ptr %.3212, align 4
  %.3215 = load float, ptr %R9, align 4
  %llvm_fabs_result.5 = call float @llvm.fabs.f32(float %.3215)
  %fcmp_unordered.3 = fcmp oge float %llvm_fabs_result.5, 0x4022059680000000
  %.3218 = and i1 %fcmp_unordered.3, true
  %.3222 = load float, ptr %R0, align 4
  %llvm_exp2_f32_result.4 = call float @llvm.exp2.f32(float %.3222)
  %.3223 = bitcast ptr %R0 to ptr
  store float %llvm_exp2_f32_result.4, ptr %.3223, align 4
  %.3226 = load float, ptr %R0, align 4
  %fadd.104 = fadd float %.3226, 1.000000e+00
  %.3227 = bitcast ptr %R2 to ptr
  store float %fadd.104, ptr %.3227, align 4
  %.3230 = load float, ptr %R2, align 4
  %.3231 = fdiv float 1.000000e+00, %.3230
  %.3232 = bitcast ptr %R2 to ptr
  store float %.3231, ptr %.3232, align 4
  %.3235 = load float, ptr %R2, align 4
  %.3236 = load float, ptr %R7, align 4
  %fmul.92 = fmul float %.3235, -2.000000e+00
  %fadd.105 = fadd float %fmul.92, %.3236
  %.3237 = bitcast ptr %R4 to ptr
  store float %fadd.105, ptr %.3237, align 4
  %.3240 = load float, ptr %R4, align 4
  %.3242 = xor i1 %.3218, true
  %.3243 = icmp eq i1 %.3242, true
  %fsel.1 = select i1 %.3243, float %.3240, float 1.000000e+00
  %.3244 = bitcast ptr %R4 to ptr
  store float %fsel.1, ptr %.3244, align 4
  %.3247 = load i32, ptr %R4, align 4
  %.3248 = load i32, ptr %R9, align 4
  %.3250 = or i32 %.3247, -2147483648
  %.3251 = or i32 %.3247, %.3248
  %.3252 = and i32 %.3250, %.3251
  store i32 %.3252, ptr %R7, align 4
  br label %.L_x_14

.L_x_15:                                          ; preds = %.L_x_11
  %imad_mul.50 = mul i32 0, 0
  %imad_add.58 = add i32 %imad_mul.50, 1015083138
  store i32 %imad_add.58, ptr %R7, align 4
  %.3259 = load float, ptr %R9, align 4
  %.3260 = load float, ptr %R9, align 4
  %fmul.93 = fmul float %.3259, %.3260
  %.3261 = bitcast ptr %R0 to ptr
  store float %fmul.93, ptr %.3261, align 4
  %.3264 = load float, ptr %R0, align 4
  %.3265 = load float, ptr %R7, align 4
  %fmul.94 = fmul float %.3264, %.3265
  %fadd.106 = fadd float %fmul.94, 0xBFAAC795C0000000
  %.3266 = bitcast ptr %R7 to ptr
  store float %fadd.106, ptr %.3266, align 4
  %.3269 = load float, ptr %R0, align 4
  %.3270 = load float, ptr %R7, align 4
  %fmul.95 = fmul float %.3269, %.3270
  %fadd.107 = fadd float %fmul.95, 0x3FC10B2820000000
  %.3271 = bitcast ptr %R7 to ptr
  store float %fadd.107, ptr %.3271, align 4
  %.3274 = load float, ptr %R0, align 4
  %.3275 = load float, ptr %R7, align 4
  %fmul.96 = fmul float %.3274, %.3275
  %fadd.108 = fadd float %fmul.96, 0xBFD5553DA0000000
  %.3276 = bitcast ptr %R7 to ptr
  store float %fadd.108, ptr %.3276, align 4
  %.3279 = load float, ptr %R0, align 4
  %.3280 = load float, ptr %R7, align 4
  %fmul.97 = fmul float %.3279, %.3280
  %fadd.109 = fadd float %fmul.97, 0.000000e+00
  %.3281 = bitcast ptr %R7 to ptr
  store float %fadd.109, ptr %.3281, align 4
  %.3284 = load float, ptr %R9, align 4
  %.3285 = load float, ptr %R7, align 4
  %.3286 = load float, ptr %R9, align 4
  %fmul.98 = fmul float %.3284, %.3285
  %fadd.110 = fadd float %fmul.98, %.3286
  %.3287 = bitcast ptr %R7 to ptr
  store float %fadd.110, ptr %.3287, align 4
  br label %.L_x_14

.L_x_14:                                          ; preds = %.L_x_11_split_0x16d0, %.L_x_15
  %.3293 = load i32, ptr %R5, align 4
  %.3294 = add i32 %.3293, 25165824
  %.3295 = add i32 %.3294, 0
  store i32 %.3295, ptr %R0, align 4
  %.3298 = ptrtoint ptr %Arg_8 to i64
  %trunc32.60 = trunc i64 %.3298 to i32
  %.3305 = load i32, ptr %R3, align 4
  %zext.193 = zext i32 %.3305 to i64
  %zext.194 = zext i32 %imad_add.41 to i64
  %zext.195 = zext i32 2 to i64
  %shl.102 = shl i64 %zext.193, 32
  %or.84 = or i64 %shl.102, %zext.194
  %shl.103 = shl i64 %or.84, %zext.195
  %lshr.16 = lshr i64 %shl.103, 32
  %trunc32.61 = trunc i64 %lshr.16 to i32
  store i32 %trunc32.61, ptr %R3, align 4
  %.3310 = load i32, ptr %R0, align 4
  %.3312 = and i32 %.3310, 2139095040
  store i32 %.3312, ptr %R0, align 4
  %zext.196 = zext i32 0 to i64
  %zext.197 = zext i32 %imad_add.41 to i64
  %zext.198 = zext i32 2 to i64
  %shl.104 = shl i64 %zext.196, 32
  %or.85 = or i64 %shl.104, %zext.197
  %shl.105 = shl i64 %or.85, %zext.198
  %and.11 = and i64 %shl.105, 4294967295
  %trunc32.62 = trunc i64 %and.11 to i32
  store i32 %trunc32.62, ptr %R2, align 4
  %.3320 = load i32, ptr %R0, align 4
  %cmp.18 = icmp sgt i32 %.3320, 33554431
  %.3323 = and i1 %cmp.18, true
  %.3327 = load float, ptr %R9, align 4
  %.3328 = load i32, ptr %R2, align 4
  %zext.199 = zext i32 %.3328 to i64
  %.3329 = load i32, ptr %R3, align 4
  %zext.200 = zext i32 %.3329 to i64
  %shl.106 = shl i64 %zext.200, 32
  %or.86 = or i64 %shl.106, %zext.199
  %sext_UR4.4 = sext i32 %trunc32.60 to i64
  %base_plus_reg_offset.4 = add i64 %or.86, %sext_UR4.4
  %inttoptr_bytes.59 = inttoptr i64 %base_plus_reg_offset.4 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.3327, ptr addrspace(1) %ptr_cast_for_access.59, align 4
  %.3333 = icmp eq i1 %.3323, true
  br i1 %.3333, label %.L_x_18, label %.L_x_14_split_0x1890_CALL_0x18c0

.L_x_14_split_0x1890_CALL_0x18c0:                 ; preds = %.L_x_14
  %.3336 = load i32, ptr %R5, align 4
  %imad_mul.51 = mul i32 0, 0
  %imad_add.59 = add i32 %imad_mul.51, %.3336
  store i32 %imad_add.59, ptr %R15, align 4
  store i32 6336, ptr %R14, align 4
  %.3344 = load i32, ptr %R15, align 4
  %zext.201 = zext i32 0 to i64
  %zext.202 = zext i32 %.3344 to i64
  %zext.203 = zext i32 1 to i64
  %shl.107 = shl i64 %zext.201, 32
  %or.87 = or i64 %shl.107, %zext.202
  %shl.108 = shl i64 %or.87, %zext.203
  %and.12 = and i64 %shl.108, 4294967295
  %trunc32.63 = trunc i64 %and.12 to i32
  store i32 %trunc32.63, ptr %R0, align 4
  %.3350 = load i32, ptr %R0, align 4
  %zext.204 = zext i32 %.3350 to i64
  %zext.205 = zext i32 0 to i64
  %zext.206 = zext i32 24 to i64
  %shl.109 = shl i64 %zext.204, 32
  %or.88 = or i64 %shl.109, %zext.205
  %lshr.17 = lshr i64 %or.88, %zext.206
  %lshr.18 = lshr i64 %lshr.17, 32
  %trunc32.64 = trunc i64 %lshr.18 to i32
  store i32 %trunc32.64, ptr %R16, align 4
  %.3353 = load i32, ptr %R16, align 4
  %cmp.19 = icmp ne i32 %.3353, 0
  %.3356 = and i1 %cmp.19, true
  %.3361 = icmp eq i1 %.3356, true
  br i1 %.3361, label %.L_x_21...3, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3": ; preds = %.L_x_14_split_0x1890_CALL_0x18c0
  %.3364 = load i32, ptr %R15, align 4
  %imad_shl.8 = shl i32 %.3364, 2
  %imad_add.60 = add i32 %imad_shl.8, 0
  store i32 %imad_add.60, ptr %R0, align 4
  %.3367 = load i32, ptr %R0, align 4
  %cmp.20 = icmp ne i32 %.3367, 0
  %.3370 = and i1 %cmp.20, true
  %.3375 = icmp eq i1 %.3370, true
  br i1 %.3375, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"
  %.3378 = load float, ptr %R15, align 4
  %fmul.99 = fmul float %.3378, 0x43F0000000000000
  %fadd.111 = fadd float %fmul.99, 0.000000e+00
  %.3379 = bitcast ptr %R8 to ptr
  store float %fadd.111, ptr %.3379, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"
  %.3384 = load float, ptr %R15, align 4
  %fmul.100 = fmul float %.3384, 0x43F0000000000000
  %fadd.112 = fadd float %fmul.100, 0.000000e+00
  %.3385 = bitcast ptr %R8 to ptr
  store float %fadd.112, ptr %.3385, align 4
  %.3391 = icmp ne i1 %.3370, true
  br i1 %.3391, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"
  %.3394 = load i32, ptr %R15, align 4
  %sint_to_f32.5 = sitofp i32 %.3394 to float
  %.3395 = fdiv float 1.000000e+00, %sint_to_f32.5
  %.3396 = fptosi float %.3395 to i32
  store i32 %.3396, ptr %R0, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"
  %.3401 = load i32, ptr %R15, align 4
  %sint_to_f32.6 = sitofp i32 %.3401 to float
  %.3402 = fdiv float 1.000000e+00, %sint_to_f32.6
  %.3403 = fptosi float %.3402 to i32
  store i32 %.3403, ptr %R0, align 4
  %.3409 = icmp eq i1 %.3370, true
  br i1 %.3409, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
  %.3412 = load float, ptr %R8, align 4
  %.3413 = fdiv float 1.000000e+00, %.3412
  %.3414 = bitcast ptr %R9 to ptr
  store float %.3413, ptr %.3414, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
  %.3419 = load float, ptr %R8, align 4
  %.3420 = fdiv float 1.000000e+00, %.3419
  %.3421 = bitcast ptr %R9 to ptr
  store float %.3420, ptr %.3421, align 4
  %.3427 = icmp eq i1 %.3370, true
  br i1 %.3427, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
  %.3430 = load float, ptr %R8, align 4
  %.3431 = load float, ptr %R9, align 4
  %fmul.101 = fmul float %.3430, %.3431
  %fadd.113 = fadd float %fmul.101, -1.000000e+00
  %.3432 = bitcast ptr %R11 to ptr
  store float %fadd.113, ptr %.3432, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
  %.3437 = load float, ptr %R8, align 4
  %.3438 = load float, ptr %R9, align 4
  %fmul.102 = fmul float %.3437, %.3438
  %fadd.114 = fadd float %fmul.102, -1.000000e+00
  %.3439 = bitcast ptr %R11 to ptr
  store float %fadd.114, ptr %.3439, align 4
  %.3445 = icmp eq i1 %.3370, true
  br i1 %.3445, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
  %.3448 = load float, ptr %R11, align 4
  %.3449 = fneg float %.3448
  %.3450 = call float @llvm.fabs.f32(float %.3449)
  %.3451 = fcmp ogt float %.3450, 0.000000e+00
  %.3452 = fcmp olt float %.3450, 0x3810000000000000
  %.3453 = and i1 %.3451, %.3452
  %.3454 = select i1 %.3453, float 0.000000e+00, float %.3449
  %.3455 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.3456 = fcmp ogt float %.3455, 0.000000e+00
  %.3457 = fcmp olt float %.3455, 0x3810000000000000
  %.3458 = and i1 %.3456, %.3457
  %.3459 = select i1 %.3458, float 0.000000e+00, float 0.000000e+00
  %fadd.115 = fadd float %.3454, %.3459
  %.3460 = call float @llvm.fabs.f32(float %fadd.115)
  %.3461 = fcmp ogt float %.3460, 0.000000e+00
  %.3462 = fcmp olt float %.3460, 0x3810000000000000
  %.3463 = and i1 %.3461, %.3462
  %.3464 = select i1 %.3463, float 0.000000e+00, float %fadd.115
  %.3465 = bitcast ptr %R12 to ptr
  store float %.3464, ptr %.3465, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
  %.3470 = load float, ptr %R11, align 4
  %.3471 = fneg float %.3470
  %.3472 = call float @llvm.fabs.f32(float %.3471)
  %.3473 = fcmp ogt float %.3472, 0.000000e+00
  %.3474 = fcmp olt float %.3472, 0x3810000000000000
  %.3475 = and i1 %.3473, %.3474
  %.3476 = select i1 %.3475, float 0.000000e+00, float %.3471
  %.3477 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.3478 = fcmp ogt float %.3477, 0.000000e+00
  %.3479 = fcmp olt float %.3477, 0x3810000000000000
  %.3480 = and i1 %.3478, %.3479
  %.3481 = select i1 %.3480, float 0.000000e+00, float 0.000000e+00
  %fadd.116 = fadd float %.3476, %.3481
  %.3482 = call float @llvm.fabs.f32(float %fadd.116)
  %.3483 = fcmp ogt float %.3482, 0.000000e+00
  %.3484 = fcmp olt float %.3482, 0x3810000000000000
  %.3485 = and i1 %.3483, %.3484
  %.3486 = select i1 %.3485, float 0.000000e+00, float %fadd.116
  %.3487 = bitcast ptr %R12 to ptr
  store float %.3486, ptr %.3487, align 4
  %.3493 = icmp eq i1 %.3370, true
  br i1 %.3493, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
  %.3496 = load float, ptr %R9, align 4
  %.3497 = load float, ptr %R12, align 4
  %.3498 = load float, ptr %R9, align 4
  %fmul.103 = fmul float %.3496, %.3497
  %fadd.117 = fadd float %fmul.103, %.3498
  %.3499 = bitcast ptr %R12 to ptr
  store float %fadd.117, ptr %.3499, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
  %.3504 = load float, ptr %R9, align 4
  %.3505 = load float, ptr %R12, align 4
  %.3506 = load float, ptr %R9, align 4
  %fmul.104 = fmul float %.3504, %.3505
  %fadd.118 = fadd float %fmul.104, %.3506
  %.3507 = bitcast ptr %R12 to ptr
  store float %fadd.118, ptr %.3507, align 4
  %.3513 = icmp eq i1 %.3370, true
  br i1 %.3513, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
  %.3516 = load float, ptr %R12, align 4
  %fmul.105 = fmul float %.3516, 0x43F0000000000000
  %fadd.119 = fadd float %fmul.105, 0.000000e+00
  %.3517 = bitcast ptr %R0 to ptr
  store float %fadd.119, ptr %.3517, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
  %.3522 = load float, ptr %R12, align 4
  %fmul.106 = fmul float %.3522, 0x43F0000000000000
  %fadd.120 = fadd float %fmul.106, 0.000000e+00
  %.3523 = bitcast ptr %R0 to ptr
  store float %fadd.120, ptr %.3523, align 4
  br label %.L_x_20...3

.L_x_21...3:                                      ; preds = %.L_x_14_split_0x1890_CALL_0x18c0
  %.3530 = load i32, ptr %R16, align 4
  %.3531 = add i32 %.3530, -253
  %.3532 = add i32 %.3531, 0
  store i32 %.3532, ptr %R18, align 4
  %.3535 = load i32, ptr %R18, align 4
  %cmp.21 = icmp sgt i32 %.3535, 1
  %.3538 = and i1 %cmp.21, true
  %.3543 = icmp eq i1 %.3538, true
  br i1 %.3543, label %.L_x_23...3, label %.L_x_21_split_0x1a90...3

.L_x_21_split_0x1a90...3:                         ; preds = %.L_x_21...3
  %.3546 = load i32, ptr %R15, align 4
  %.3548 = and i32 %.3546, 8388607
  store i32 %.3548, ptr %R0, align 4
  store i32 3, ptr %R13, align 4
  %.3553 = load i32, ptr %R0, align 4
  %.3555 = or i32 %.3553, 1065353216
  store i32 %.3555, ptr %R0, align 4
  %.3560 = load i32, ptr %R13, align 4
  %.3561 = load i32, ptr %R18, align 4
  %zext.207 = zext i32 0 to i64
  %zext.208 = zext i32 %.3560 to i64
  %zext.209 = zext i32 %.3561 to i64
  %shl.110 = shl i64 %zext.207, 32
  %or.89 = or i64 %shl.110, %zext.208
  %shl.111 = shl i64 %or.89, %zext.209
  %and.13 = and i64 %shl.111, 4294967295
  %trunc32.65 = trunc i64 %and.13 to i32
  store i32 %trunc32.65, ptr %R13, align 4
  %.3564 = load i32, ptr %R0, align 4
  %sint_to_f32.7 = sitofp i32 %.3564 to float
  %.3565 = fdiv float 1.000000e+00, %sint_to_f32.7
  %.3566 = fptosi float %.3565 to i32
  store i32 %.3566, ptr %R9, align 4
  %.3569 = load float, ptr %R0, align 4
  %.3570 = load float, ptr %R9, align 4
  %fmul.107 = fmul float %.3569, %.3570
  %fadd.121 = fadd float %fmul.107, -1.000000e+00
  %.3571 = bitcast ptr %R8 to ptr
  store float %fadd.121, ptr %.3571, align 4
  %.3574 = load float, ptr %R8, align 4
  %.3575 = fneg float %.3574
  %.3576 = call float @llvm.fabs.f32(float %.3575)
  %.3577 = fcmp ogt float %.3576, 0.000000e+00
  %.3578 = fcmp olt float %.3576, 0x3810000000000000
  %.3579 = and i1 %.3577, %.3578
  %.3580 = select i1 %.3579, float 0.000000e+00, float %.3575
  %.3581 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.3582 = fcmp ogt float %.3581, 0.000000e+00
  %.3583 = fcmp olt float %.3581, 0x3810000000000000
  %.3584 = and i1 %.3582, %.3583
  %.3585 = select i1 %.3584, float 0.000000e+00, float 0.000000e+00
  %fadd.122 = fadd float %.3580, %.3585
  %.3586 = call float @llvm.fabs.f32(float %fadd.122)
  %.3587 = fcmp ogt float %.3586, 0.000000e+00
  %.3588 = fcmp olt float %.3586, 0x3810000000000000
  %.3589 = and i1 %.3587, %.3588
  %.3590 = select i1 %.3589, float 0.000000e+00, float %fadd.122
  %.3591 = bitcast ptr %R8 to ptr
  store float %.3590, ptr %.3591, align 4
  %.3594 = load float, ptr %R9, align 4
  %.3595 = load float, ptr %R8, align 4
  %.3596 = load float, ptr %R9, align 4
  %fmul.108 = fmul float %.3594, %.3595
  %fadd.123 = fadd float %fmul.108, %.3596
  %.3597 = bitcast ptr %R11 to ptr
  store float %fadd.123, ptr %.3597, align 4
  %.3600 = load float, ptr %R9, align 4
  %.3601 = load float, ptr %R8, align 4
  %.3602 = load float, ptr %R9, align 4
  %fmul.109 = fmul float %.3600, %.3601
  %fadd.124 = fadd float %fmul.109, %.3602
  %.3603 = bitcast ptr %R12 to ptr
  store float %fadd.124, ptr %.3603, align 4
  %.3606 = load i32, ptr %R11, align 4
  %.3608 = and i32 %.3606, 8388607
  store i32 %.3608, ptr %R8, align 4
  %.3611 = load float, ptr %R11, align 4
  %.3612 = load float, ptr %R12, align 4
  %.3614 = call float @llvm.fabs.f32(float %.3611)
  %.3615 = fcmp ogt float %.3614, 0.000000e+00
  %.3616 = fcmp olt float %.3614, 0x3810000000000000
  %.3617 = and i1 %.3615, %.3616
  %.3618 = select i1 %.3617, float 0.000000e+00, float %.3611
  %.3619 = call float @llvm.fabs.f32(float %.3612)
  %.3620 = fcmp ogt float %.3619, 0.000000e+00
  %.3621 = fcmp olt float %.3619, 0x3810000000000000
  %.3622 = and i1 %.3620, %.3621
  %.3623 = select i1 %.3622, float 0.000000e+00, float %.3612
  %fcmp_ordered.2 = fcmp une float %.3618, %.3623
  %.3625 = and i1 %fcmp_ordered.2, true
  %.3629 = load i32, ptr %R8, align 4
  %.3631 = or i32 %.3629, 8388608
  store i32 %.3631, ptr %R8, align 4
  %.3635 = xor i1 %.3625, true
  %.3636 = icmp eq i1 %.3635, true
  %sel.4 = select i1 %.3636, i32 0, i32 -1
  store i32 %sel.4, ptr %R9, align 4
  %.3639 = load i32, ptr %R13, align 4
  %.3640 = load i32, ptr %R8, align 4
  %.3642 = and i32 %.3639, %.3640
  store i32 %.3642, ptr %R13, align 4
  %.3645 = load i32, ptr %R9, align 4
  %.3646 = sub i32 0, %.3645
  %imad_mul.52 = mul i32 0, 0
  %imad_add.61 = add i32 %imad_mul.52, %.3646
  store i32 %imad_add.61, ptr %R9, align 4
  %.3651 = load i32, ptr %R13, align 4
  %.3652 = load i32, ptr %R18, align 4
  %zext.210 = zext i32 %.3651 to i64
  %zext.211 = zext i32 0 to i64
  %zext.212 = zext i32 %.3652 to i64
  %shl.112 = shl i64 %zext.210, 32
  %or.90 = or i64 %shl.112, %zext.211
  %lshr.19 = lshr i64 %or.90, %zext.212
  %lshr.20 = lshr i64 %lshr.19, 32
  %trunc32.66 = trunc i64 %lshr.20 to i32
  store i32 %trunc32.66, ptr %R13, align 4
  %.3666 = load i32, ptr %R13, align 4
  %.3668 = and i32 %.3666, 1
  %.3670 = icmp ne i32 %.3668, 0
  %.3680 = load i32, ptr %R16, align 4
  %.3681 = add i32 %.3680, -252
  %.3682 = add i32 %.3681, 0
  store i32 %.3682, ptr %R9, align 4
  %.3690 = load i32, ptr %R15, align 4
  %.3692 = and i32 %.3690, 8388607
  %.3694 = icmp ne i32 %.3692, 0
  %.3698 = xor i1 %.3670, true
  %.3699 = icmp eq i1 %.3698, true
  %sel.5 = select i1 %.3699, i32 0, i32 1
  store i32 %sel.5, ptr %R0, align 4
  %.3702 = load i32, ptr %R0, align 4
  %.3703 = sub i32 0, %.3702
  %.3704 = add i32 %.3703, 0
  %.3705 = add i32 %.3704, 0
  store i32 %.3705, ptr %R0, align 4
  %.3708 = load i32, ptr %R0, align 4
  %cmp.22 = icmp sge i32 %.3708, 0
  %.3711 = and i1 %cmp.22, true
  %.3717 = load i32, ptr %R8, align 4
  %.3718 = load i32, ptr %R9, align 4
  %zext.213 = zext i32 %.3717 to i64
  %zext.214 = zext i32 0 to i64
  %zext.215 = zext i32 %.3718 to i64
  %shl.113 = shl i64 %zext.213, 32
  %or.91 = or i64 %shl.113, %zext.214
  %lshr.21 = lshr i64 %or.91, %zext.215
  %lshr.22 = lshr i64 %lshr.21, 32
  %trunc32.67 = trunc i64 %lshr.22 to i32
  store i32 %trunc32.67, ptr %R0, align 4
  %.3722 = icmp ne i1 %.3711, true
  br i1 %.3722, label %.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30, label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3

.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30:  ; preds = %.L_x_21_split_0x1a90...3
  %.3725 = load i32, ptr %R0, align 4
  %.3726 = add i32 %.3725, 1
  %.3727 = add i32 %.3726, 0
  store i32 %.3727, ptr %R0, align 4
  br label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3

.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3:  ; preds = %.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30, %.L_x_21_split_0x1a90...3
  %.3732 = load i32, ptr %R0, align 4
  %.3733 = add i32 %.3732, 1
  %.3734 = add i32 %.3733, 0
  store i32 %.3734, ptr %R0, align 4
  %.3740 = icmp ne i1 %.3694, true
  br i1 %.3740, label %.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40, label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3

.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40:  ; preds = %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3
  %.3743 = load i32, ptr %R0, align 4
  %imad_shl.9 = shl i32 %.3743, 2
  %imad_add.62 = add i32 %imad_shl.9, 0
  store i32 %imad_add.62, ptr %R0, align 4
  br label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3

.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3:  ; preds = %.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40, %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3
  %.3748 = load i32, ptr %R0, align 4
  %imad_shl.10 = shl i32 %.3748, 2
  %imad_add.63 = add i32 %imad_shl.10, 0
  store i32 %imad_add.63, ptr %R0, align 4
  %.3753 = load i32, ptr %R0, align 4
  %.3754 = load i32, ptr %R15, align 4
  %.3756 = or i32 %.3753, -2147483648
  %.3757 = or i32 %.3753, %.3754
  %.3758 = and i32 %.3756, %.3757
  store i32 %.3758, ptr %R0, align 4
  br label %.L_x_20...3

.L_x_23...3:                                      ; preds = %.L_x_21...3
  %.3763 = load i32, ptr %R15, align 4
  %sint_to_f32.8 = sitofp i32 %.3763 to float
  %.3764 = fdiv float 1.000000e+00, %sint_to_f32.8
  %.3765 = fptosi float %.3764 to i32
  store i32 %.3765, ptr %R0, align 4
  br label %.L_x_20...3

.L_x_20...3:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3", %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3, %.L_x_23...3
  %.3771 = load i32, ptr %R14, align 4
  store i32 %.3771, ptr %R8, align 4
  %imad_mul.53 = mul i32 0, 0
  %imad_add.64 = add i32 %imad_mul.53, 0
  store i32 %imad_add.64, ptr %R9, align 4
  br label %.L_x_17

.L_x_18:                                          ; preds = %.L_x_14
  %.3783 = load float, ptr %R5, align 4
  %.3784 = fdiv float 1.000000e+00, %.3783
  %.3785 = bitcast ptr %R0 to ptr
  store float %.3784, ptr %.3785, align 4
  %.3788 = load float, ptr %R5, align 4
  %.3789 = load float, ptr %R0, align 4
  %fmul.110 = fmul float %.3788, %.3789
  %fadd.125 = fadd float %fmul.110, -1.000000e+00
  %.3790 = bitcast ptr %R4 to ptr
  store float %fadd.125, ptr %.3790, align 4
  %.3793 = load float, ptr %R4, align 4
  %.3794 = fneg float %.3793
  %.3795 = call float @llvm.fabs.f32(float %.3794)
  %.3796 = fcmp ogt float %.3795, 0.000000e+00
  %.3797 = fcmp olt float %.3795, 0x3810000000000000
  %.3798 = and i1 %.3796, %.3797
  %.3799 = select i1 %.3798, float 0.000000e+00, float %.3794
  %.3800 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.3801 = fcmp ogt float %.3800, 0.000000e+00
  %.3802 = fcmp olt float %.3800, 0x3810000000000000
  %.3803 = and i1 %.3801, %.3802
  %.3804 = select i1 %.3803, float 0.000000e+00, float 0.000000e+00
  %fadd.126 = fadd float %.3799, %.3804
  %.3805 = call float @llvm.fabs.f32(float %fadd.126)
  %.3806 = fcmp ogt float %.3805, 0.000000e+00
  %.3807 = fcmp olt float %.3805, 0x3810000000000000
  %.3808 = and i1 %.3806, %.3807
  %.3809 = select i1 %.3808, float 0.000000e+00, float %fadd.126
  %.3810 = bitcast ptr %R9 to ptr
  store float %.3809, ptr %.3810, align 4
  %.3813 = load float, ptr %R0, align 4
  %.3814 = load float, ptr %R9, align 4
  %.3815 = load float, ptr %R0, align 4
  %fmul.111 = fmul float %.3813, %.3814
  %fadd.127 = fadd float %fmul.111, %.3815
  %.3816 = bitcast ptr %R0 to ptr
  store float %fadd.127, ptr %.3816, align 4
  br label %.L_x_17

.L_x_17:                                          ; preds = %.L_x_20...3, %.L_x_18
  %.3822 = load float, ptr %R0, align 4
  %.3823 = load float, ptr %R7, align 4
  %fmul.112 = fmul float %.3822, %.3823
  %.3824 = bitcast ptr %R7 to ptr
  store float %fmul.112, ptr %.3824, align 4
  %.3827 = ptrtoint ptr %Arg_7 to i64
  %trunc32.69 = trunc i64 %.3827 to i32
  %.3833 = load float, ptr %R7, align 4
  %.3834 = load i32, ptr %R2, align 4
  %zext.216 = zext i32 %.3834 to i64
  %.3835 = load i32, ptr %R3, align 4
  %zext.217 = zext i32 %.3835 to i64
  %shl.114 = shl i64 %zext.217, 32
  %or.92 = or i64 %shl.114, %zext.216
  %sext_UR4.5 = sext i32 %trunc32.69 to i64
  %base_plus_reg_offset.5 = add i64 %or.92, %sext_UR4.5
  %inttoptr_bytes.60 = inttoptr i64 %base_plus_reg_offset.5 to ptr addrspace(1)
  %ptr_cast_for_access.60 = bitcast ptr addrspace(1) %inttoptr_bytes.60 to ptr addrspace(1)
  store float %.3833, ptr addrspace(1) %ptr_cast_for_access.60, align 4
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
