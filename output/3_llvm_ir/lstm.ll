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
  %cast_ptr = bitcast ptr %R3 to ptr
  %.190 = load float, ptr %cast_ptr, align 4
  %cast_ptr.1 = bitcast ptr %R10 to ptr
  %.191 = load float, ptr %cast_ptr.1, align 4
  %fadd = fadd float %.190, %.191
  %.192 = bitcast ptr %R3 to ptr
  store float %fadd, ptr %.192, align 4
  %cast_ptr.2 = bitcast ptr %R16 to ptr
  %.195 = load float, ptr %cast_ptr.2, align 4
  %cast_ptr.3 = bitcast ptr %R15 to ptr
  %.196 = load float, ptr %cast_ptr.3, align 4
  %fadd.1 = fadd float %.195, %.196
  %.197 = bitcast ptr %R2 to ptr
  store float %fadd.1, ptr %.197, align 4
  %cast_ptr.4 = bitcast ptr %R20 to ptr
  %.200 = load float, ptr %cast_ptr.4, align 4
  %cast_ptr.5 = bitcast ptr %R19 to ptr
  %.201 = load float, ptr %cast_ptr.5, align 4
  %fadd.2 = fadd float %.200, %.201
  %.202 = bitcast ptr %R0 to ptr
  store float %fadd.2, ptr %.202, align 4
  %cast_ptr.6 = bitcast ptr %R24 to ptr
  %.205 = load float, ptr %cast_ptr.6, align 4
  %cast_ptr.7 = bitcast ptr %R23 to ptr
  %.206 = load float, ptr %cast_ptr.7, align 4
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
  store i32 0, ptr %R28, align 4
  %.247 = icmp ne i1 %.235, true
  br i1 %.247, label %.L_x_1, label %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0

.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0: ; preds = %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250
  %.250 = load i32, ptr %R20, align 4
  %.251 = sub i32 0, %.250
  %.252 = add i32 %.251, %Arg_10
  %.253 = add i32 %.252, 0
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
  %R42.0 = phi i32 [ %.253, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0 ], [ %.698, %.L_x_2 ]
  %.269 = load i32, ptr %R28, align 4
  %zext.25 = zext i32 0 to i64
  %zext.26 = zext i32 %.269 to i64
  %zext.27 = zext i32 2 to i64
  %shl.14 = shl i64 %zext.25, 32
  %or.11 = or i64 %shl.14, %zext.26
  %shl.15 = shl i64 %or.11, %zext.27
  %and.1 = and i64 %shl.15, 4294967295
  %trunc32.19 = trunc i64 %and.1 to i32
  store i32 %trunc32.19, ptr %R11, align 4
  %.272 = load i32, ptr %R7, align 4
  %.273 = load i32, ptr %R28, align 4
  %imad_mul.14 = mul i32 %.272, %Arg_10
  %imad_add.14 = add i32 %imad_mul.14, %.273
  store i32 %imad_add.14, ptr %R30, align 4
  %.276 = load i32, ptr %R11, align 4
  %imad_mul.15 = mul i32 %.276, %Arg_11
  %imad_add.15 = add i32 %imad_mul.15, %imad_add.1
  store i32 %imad_add.15, ptr %R36, align 4
  %.280 = load i32, ptr %R30, align 4
  %.281 = load i32, ptr %R9, align 4
  %imad_ext1.8 = zext i32 %.280 to i64
  %imad_ext2.8 = zext i32 %.281 to i64
  %imad_mul.16 = mul i64 %imad_ext1.8, %imad_ext2.8
  %.282 = ptrtoint ptr %Arg_0 to i64
  %imad_add.16 = add i64 %imad_mul.16, %.282
  %.283 = and i64 %imad_add.16, -4294967296
  %.284 = lshr i64 %.283, 32
  %trunc32.20 = trunc i64 %.284 to i32
  %trunc32.21 = trunc i64 %imad_add.16 to i32
  store i32 %trunc32.21, ptr %R30, align 4
  %.288 = load i32, ptr %R36, align 4
  %.289 = load i32, ptr %R9, align 4
  %imad_ext1.9 = zext i32 %.288 to i64
  %imad_ext2.9 = zext i32 %.289 to i64
  %imad_mul.17 = mul i64 %imad_ext1.9, %imad_ext2.9
  %.290 = ptrtoint ptr %Arg_3 to i64
  %imad_add.17 = add i64 %imad_mul.17, %.290
  %.291 = and i64 %imad_add.17, -4294967296
  %.292 = lshr i64 %.291, 32
  %trunc32.22 = trunc i64 %.292 to i32
  %trunc32.23 = trunc i64 %imad_add.17 to i32
  store i32 %trunc32.23, ptr %R36, align 4
  %.296 = load i32, ptr %R30, align 4
  %zext.28 = zext i32 %.296 to i64
  %zext.29 = zext i32 %trunc32.20 to i64
  %shl.16 = shl i64 %zext.29, 32
  %or.12 = or i64 %shl.16, %zext.28
  %inttoptr_bytes.8 = inttoptr i64 %or.12 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.298 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.299 = bitcast ptr %R35 to ptr
  store float %.298, ptr %.299, align 4
  %.302 = load i32, ptr %R36, align 4
  %.304 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.302, i32 %trunc32.18)
  %.305 = extractvalue { i32, i1 } %.304, 0
  %.306 = extractvalue { i32, i1 } %.304, 1
  %.307 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.305, i32 0)
  %.308 = extractvalue { i32, i1 } %.307, 0
  %.309 = extractvalue { i32, i1 } %.307, 1
  %.310 = or i1 %.306, %.309
  store i32 %.308, ptr %R32, align 4
  %.314 = load i32, ptr %R30, align 4
  %zext.30 = zext i32 %.314 to i64
  %zext.31 = zext i32 %trunc32.20 to i64
  %shl.17 = shl i64 %zext.31, 32
  %or.13 = or i64 %shl.17, %zext.30
  %ptr_plus_imm = add i64 %or.13, 4
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.316 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.317 = bitcast ptr %R29 to ptr
  store float %.316, ptr %.317, align 4
  %.323 = xor i1 true, true
  %.324 = zext i1 %.310 to i32
  %.325 = zext i1 %.323 to i32
  %add.1 = add i32 %trunc32.22, %trunc32.17
  %add.2 = add i32 %add.1, 0
  %add.3 = add i32 %add.2, %.324
  %add.4 = add i32 %add.3, %.325
  %.328 = load i32, ptr %R32, align 4
  %.330 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.328, i32 %trunc32.18)
  %.331 = extractvalue { i32, i1 } %.330, 0
  %.332 = extractvalue { i32, i1 } %.330, 1
  %.333 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.331, i32 0)
  %.334 = extractvalue { i32, i1 } %.333, 0
  %.335 = extractvalue { i32, i1 } %.333, 1
  %.336 = or i1 %.332, %.335
  store i32 %.334, ptr %R38, align 4
  %.340 = load i32, ptr %R30, align 4
  %zext.32 = zext i32 %.340 to i64
  %zext.33 = zext i32 %trunc32.20 to i64
  %shl.18 = shl i64 %zext.33, 32
  %or.14 = or i64 %shl.18, %zext.32
  %ptr_plus_imm.1 = add i64 %or.14, 8
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.342 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.343 = bitcast ptr %R21 to ptr
  store float %.342, ptr %.343, align 4
  %.349 = xor i1 true, true
  %.350 = zext i1 %.336 to i32
  %.351 = zext i1 %.349 to i32
  %add.5 = add i32 %add.4, %trunc32.17
  %add.6 = add i32 %add.5, 0
  %add.7 = add i32 %add.6, %.350
  %add.8 = add i32 %add.7, %.351
  %.354 = load i32, ptr %R30, align 4
  %zext.34 = zext i32 %.354 to i64
  %zext.35 = zext i32 %trunc32.20 to i64
  %shl.19 = shl i64 %zext.35, 32
  %or.15 = or i64 %shl.19, %zext.34
  %ptr_plus_imm.2 = add i64 %or.15, 12
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.356 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.357 = bitcast ptr %R34 to ptr
  store float %.356, ptr %.357, align 4
  %.360 = load i32, ptr %R38, align 4
  %.362 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.360, i32 %trunc32.18)
  %.363 = extractvalue { i32, i1 } %.362, 0
  %.364 = extractvalue { i32, i1 } %.362, 1
  %.365 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.363, i32 0)
  %.366 = extractvalue { i32, i1 } %.365, 0
  %.367 = extractvalue { i32, i1 } %.365, 1
  %.368 = or i1 %.364, %.367
  store i32 %.366, ptr %R22, align 4
  %.372 = load i32, ptr %R32, align 4
  %zext.36 = zext i32 %.372 to i64
  %zext.37 = zext i32 %add.4 to i64
  %shl.20 = shl i64 %zext.37, 32
  %or.16 = or i64 %shl.20, %zext.36
  %inttoptr_bytes.12 = inttoptr i64 %or.16 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.374 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.375 = bitcast ptr %R40 to ptr
  store float %.374, ptr %.375, align 4
  %.381 = xor i1 true, true
  %.382 = zext i1 %.368 to i32
  %.383 = zext i1 %.381 to i32
  %add.9 = add i32 %add.8, %trunc32.17
  %add.10 = add i32 %add.9, 0
  %add.11 = add i32 %add.10, %.382
  %add.12 = add i32 %add.11, %.383
  store i32 %add.12, ptr %R23, align 4
  %.386 = load i32, ptr %R22, align 4
  %.388 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.386, i32 %trunc32.18)
  %.389 = extractvalue { i32, i1 } %.388, 0
  %.390 = extractvalue { i32, i1 } %.388, 1
  %.391 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.389, i32 0)
  %.392 = extractvalue { i32, i1 } %.391, 0
  %.393 = extractvalue { i32, i1 } %.391, 1
  %.394 = or i1 %.390, %.393
  store i32 %.392, ptr %R12, align 4
  %.398 = load i32, ptr %R36, align 4
  %zext.38 = zext i32 %.398 to i64
  %zext.39 = zext i32 %trunc32.22 to i64
  %shl.21 = shl i64 %zext.39, 32
  %or.17 = or i64 %shl.21, %zext.38
  %inttoptr_bytes.13 = inttoptr i64 %or.17 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.400 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.401 = bitcast ptr %R36 to ptr
  store float %.400, ptr %.401, align 4
  %.404 = load i32, ptr %R23, align 4
  %.407 = xor i1 true, true
  %.408 = zext i1 %.394 to i32
  %.409 = zext i1 %.407 to i32
  %add.13 = add i32 %.404, %trunc32.17
  %add.14 = add i32 %add.13, 0
  %add.15 = add i32 %add.14, %.408
  %add.16 = add i32 %add.15, %.409
  store i32 %add.16, ptr %R13, align 4
  %.412 = load i32, ptr %R38, align 4
  %zext.40 = zext i32 %.412 to i64
  %zext.41 = zext i32 %add.8 to i64
  %shl.22 = shl i64 %zext.41, 32
  %or.18 = or i64 %shl.22, %zext.40
  %inttoptr_bytes.14 = inttoptr i64 %or.18 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.414 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.415 = bitcast ptr %R38 to ptr
  store float %.414, ptr %.415, align 4
  %.418 = load i32, ptr %R12, align 4
  %.420 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.418, i32 %trunc32.18)
  %.421 = extractvalue { i32, i1 } %.420, 0
  %.422 = extractvalue { i32, i1 } %.420, 1
  %.423 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.421, i32 0)
  %.424 = extractvalue { i32, i1 } %.423, 0
  %.425 = extractvalue { i32, i1 } %.423, 1
  %.426 = or i1 %.422, %.425
  store i32 %.424, ptr %R18, align 4
  %.430 = load i32, ptr %R22, align 4
  %zext.42 = zext i32 %.430 to i64
  %.431 = load i32, ptr %R23, align 4
  %zext.43 = zext i32 %.431 to i64
  %shl.23 = shl i64 %zext.43, 32
  %or.19 = or i64 %shl.23, %zext.42
  %inttoptr_bytes.15 = inttoptr i64 %or.19 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.432 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.433 = bitcast ptr %R41 to ptr
  store float %.432, ptr %.433, align 4
  %.436 = load i32, ptr %R13, align 4
  %.439 = xor i1 true, true
  %.440 = zext i1 %.426 to i32
  %.441 = zext i1 %.439 to i32
  %add.17 = add i32 %.436, %trunc32.17
  %add.18 = add i32 %add.17, 0
  %add.19 = add i32 %add.18, %.440
  %add.20 = add i32 %add.19, %.441
  store i32 %add.20, ptr %R19, align 4
  %.444 = load i32, ptr %R18, align 4
  %.446 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.444, i32 %trunc32.18)
  %.447 = extractvalue { i32, i1 } %.446, 0
  %.448 = extractvalue { i32, i1 } %.446, 1
  %.449 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.447, i32 0)
  %.450 = extractvalue { i32, i1 } %.449, 0
  %.451 = extractvalue { i32, i1 } %.449, 1
  %.452 = or i1 %.448, %.451
  store i32 %.450, ptr %R14, align 4
  %.456 = load i32, ptr %R12, align 4
  %zext.44 = zext i32 %.456 to i64
  %.457 = load i32, ptr %R13, align 4
  %zext.45 = zext i32 %.457 to i64
  %shl.24 = shl i64 %zext.45, 32
  %or.20 = or i64 %shl.24, %zext.44
  %inttoptr_bytes.16 = inttoptr i64 %or.20 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.458 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.459 = bitcast ptr %R43 to ptr
  store float %.458, ptr %.459, align 4
  %.462 = load i32, ptr %R19, align 4
  %.465 = xor i1 true, true
  %.466 = zext i1 %.452 to i32
  %.467 = zext i1 %.465 to i32
  %add.21 = add i32 %.462, %trunc32.17
  %add.22 = add i32 %add.21, 0
  %add.23 = add i32 %add.22, %.466
  %add.24 = add i32 %add.23, %.467
  store i32 %add.24, ptr %R15, align 4
  %.470 = load i32, ptr %R14, align 4
  %.472 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.470, i32 %trunc32.18)
  %.473 = extractvalue { i32, i1 } %.472, 0
  %.474 = extractvalue { i32, i1 } %.472, 1
  %.475 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.473, i32 0)
  %.476 = extractvalue { i32, i1 } %.475, 0
  %.477 = extractvalue { i32, i1 } %.475, 1
  %.478 = or i1 %.474, %.477
  store i32 %.476, ptr %R10, align 4
  %.482 = load i32, ptr %R18, align 4
  %zext.46 = zext i32 %.482 to i64
  %.483 = load i32, ptr %R19, align 4
  %zext.47 = zext i32 %.483 to i64
  %shl.25 = shl i64 %zext.47, 32
  %or.21 = or i64 %shl.25, %zext.46
  %inttoptr_bytes.17 = inttoptr i64 %or.21 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.484 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.485 = bitcast ptr %R18 to ptr
  store float %.484, ptr %.485, align 4
  %.488 = load i32, ptr %R15, align 4
  %.491 = xor i1 true, true
  %.492 = zext i1 %.478 to i32
  %.493 = zext i1 %.491 to i32
  %add.25 = add i32 %.488, %trunc32.17
  %add.26 = add i32 %add.25, 0
  %add.27 = add i32 %add.26, %.492
  %add.28 = add i32 %add.27, %.493
  store i32 %add.28, ptr %R11, align 4
  %.496 = load i32, ptr %R10, align 4
  %.498 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.496, i32 %trunc32.18)
  %.499 = extractvalue { i32, i1 } %.498, 0
  %.500 = extractvalue { i32, i1 } %.498, 1
  %.501 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.499, i32 0)
  %.502 = extractvalue { i32, i1 } %.501, 0
  %.503 = extractvalue { i32, i1 } %.501, 1
  %.504 = or i1 %.500, %.503
  store i32 %.502, ptr %R16, align 4
  %.508 = load i32, ptr %R14, align 4
  %zext.48 = zext i32 %.508 to i64
  %.509 = load i32, ptr %R15, align 4
  %zext.49 = zext i32 %.509 to i64
  %shl.26 = shl i64 %zext.49, 32
  %or.22 = or i64 %shl.26, %zext.48
  %inttoptr_bytes.18 = inttoptr i64 %or.22 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.510 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.511 = bitcast ptr %R14 to ptr
  store float %.510, ptr %.511, align 4
  %.514 = load i32, ptr %R11, align 4
  %.517 = xor i1 true, true
  %.518 = zext i1 %.504 to i32
  %.519 = zext i1 %.517 to i32
  %add.29 = add i32 %.514, %trunc32.17
  %add.30 = add i32 %add.29, 0
  %add.31 = add i32 %add.30, %.518
  %add.32 = add i32 %add.31, %.519
  store i32 %add.32, ptr %R17, align 4
  %.522 = load i32, ptr %R16, align 4
  %.524 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.522, i32 %trunc32.18)
  %.525 = extractvalue { i32, i1 } %.524, 0
  %.526 = extractvalue { i32, i1 } %.524, 1
  %.527 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.525, i32 0)
  %.528 = extractvalue { i32, i1 } %.527, 0
  %.529 = extractvalue { i32, i1 } %.527, 1
  %.530 = or i1 %.526, %.529
  store i32 %.528, ptr %R24, align 4
  %.534 = load i32, ptr %R10, align 4
  %zext.50 = zext i32 %.534 to i64
  %.535 = load i32, ptr %R11, align 4
  %zext.51 = zext i32 %.535 to i64
  %shl.27 = shl i64 %zext.51, 32
  %or.23 = or i64 %shl.27, %zext.50
  %inttoptr_bytes.19 = inttoptr i64 %or.23 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.536 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.537 = bitcast ptr %R10 to ptr
  store float %.536, ptr %.537, align 4
  %.540 = load i32, ptr %R17, align 4
  %.543 = xor i1 true, true
  %.544 = zext i1 %.530 to i32
  %.545 = zext i1 %.543 to i32
  %add.33 = add i32 %.540, %trunc32.17
  %add.34 = add i32 %add.33, 0
  %add.35 = add i32 %add.34, %.544
  %add.36 = add i32 %add.35, %.545
  %.548 = load i32, ptr %R24, align 4
  %.550 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.548, i32 %trunc32.18)
  %.551 = extractvalue { i32, i1 } %.550, 0
  %.552 = extractvalue { i32, i1 } %.550, 1
  %.553 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.551, i32 0)
  %.554 = extractvalue { i32, i1 } %.553, 0
  %.555 = extractvalue { i32, i1 } %.553, 1
  %.556 = or i1 %.552, %.555
  store i32 %.554, ptr %R26, align 4
  %.560 = load i32, ptr %R16, align 4
  %zext.52 = zext i32 %.560 to i64
  %.561 = load i32, ptr %R17, align 4
  %zext.53 = zext i32 %.561 to i64
  %shl.28 = shl i64 %zext.53, 32
  %or.24 = or i64 %shl.28, %zext.52
  %inttoptr_bytes.20 = inttoptr i64 %or.24 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.562 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.563 = bitcast ptr %R16 to ptr
  store float %.562, ptr %.563, align 4
  %.569 = xor i1 true, true
  %.570 = zext i1 %.556 to i32
  %.571 = zext i1 %.569 to i32
  %add.37 = add i32 %add.36, %trunc32.17
  %add.38 = add i32 %add.37, 0
  %add.39 = add i32 %add.38, %.570
  %add.40 = add i32 %add.39, %.571
  store i32 %add.40, ptr %R27, align 4
  %.574 = load i32, ptr %R26, align 4
  %.576 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.574, i32 %trunc32.18)
  %.577 = extractvalue { i32, i1 } %.576, 0
  %.578 = extractvalue { i32, i1 } %.576, 1
  %.579 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.577, i32 0)
  %.580 = extractvalue { i32, i1 } %.579, 0
  %.581 = extractvalue { i32, i1 } %.579, 1
  %.582 = or i1 %.578, %.581
  store i32 %.580, ptr %R30, align 4
  %.586 = load i32, ptr %R24, align 4
  %zext.54 = zext i32 %.586 to i64
  %zext.55 = zext i32 %add.36 to i64
  %shl.29 = shl i64 %zext.55, 32
  %or.25 = or i64 %shl.29, %zext.54
  %inttoptr_bytes.21 = inttoptr i64 %or.25 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.588 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.589 = bitcast ptr %R24 to ptr
  store float %.588, ptr %.589, align 4
  %.592 = load i32, ptr %R27, align 4
  %.595 = xor i1 true, true
  %.596 = zext i1 %.582 to i32
  %.597 = zext i1 %.595 to i32
  %add.41 = add i32 %.592, %trunc32.17
  %add.42 = add i32 %add.41, 0
  %add.43 = add i32 %add.42, %.596
  %add.44 = add i32 %add.43, %.597
  %.600 = load i32, ptr %R30, align 4
  %.602 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.600, i32 %trunc32.18)
  %.603 = extractvalue { i32, i1 } %.602, 0
  %.604 = extractvalue { i32, i1 } %.602, 1
  %.605 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.603, i32 0)
  %.606 = extractvalue { i32, i1 } %.605, 0
  %.607 = extractvalue { i32, i1 } %.605, 1
  %.608 = or i1 %.604, %.607
  store i32 %.606, ptr %R32, align 4
  %.612 = load i32, ptr %R26, align 4
  %zext.56 = zext i32 %.612 to i64
  %.613 = load i32, ptr %R27, align 4
  %zext.57 = zext i32 %.613 to i64
  %shl.30 = shl i64 %zext.57, 32
  %or.26 = or i64 %shl.30, %zext.56
  %inttoptr_bytes.22 = inttoptr i64 %or.26 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.614 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.615 = bitcast ptr %R26 to ptr
  store float %.614, ptr %.615, align 4
  %.621 = xor i1 true, true
  %.622 = zext i1 %.608 to i32
  %.623 = zext i1 %.621 to i32
  %add.45 = add i32 %add.44, %trunc32.17
  %add.46 = add i32 %add.45, 0
  %add.47 = add i32 %add.46, %.622
  %add.48 = add i32 %add.47, %.623
  %.626 = load i32, ptr %R32, align 4
  %.628 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.626, i32 %trunc32.18)
  %.629 = extractvalue { i32, i1 } %.628, 0
  %.630 = extractvalue { i32, i1 } %.628, 1
  %.631 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.629, i32 0)
  %.632 = extractvalue { i32, i1 } %.631, 0
  %.633 = extractvalue { i32, i1 } %.631, 1
  %.634 = or i1 %.630, %.633
  store i32 %.632, ptr %R22, align 4
  %.638 = load i32, ptr %R30, align 4
  %zext.58 = zext i32 %.638 to i64
  %zext.59 = zext i32 %add.44 to i64
  %shl.31 = shl i64 %zext.59, 32
  %or.27 = or i64 %shl.31, %zext.58
  %inttoptr_bytes.23 = inttoptr i64 %or.27 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.640 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.641 = bitcast ptr %R30 to ptr
  store float %.640, ptr %.641, align 4
  %.647 = xor i1 true, true
  %.648 = zext i1 %.634 to i32
  %.649 = zext i1 %.647 to i32
  %add.49 = add i32 %add.48, %trunc32.17
  %add.50 = add i32 %add.49, 0
  %add.51 = add i32 %add.50, %.648
  %add.52 = add i32 %add.51, %.649
  store i32 %add.52, ptr %R23, align 4
  %.652 = load i32, ptr %R22, align 4
  %.654 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.652, i32 %trunc32.18)
  %.655 = extractvalue { i32, i1 } %.654, 0
  %.656 = extractvalue { i32, i1 } %.654, 1
  %.657 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.655, i32 0)
  %.658 = extractvalue { i32, i1 } %.657, 0
  %.659 = extractvalue { i32, i1 } %.657, 1
  %.660 = or i1 %.656, %.659
  store i32 %.658, ptr %R12, align 4
  %.664 = load i32, ptr %R32, align 4
  %zext.60 = zext i32 %.664 to i64
  %zext.61 = zext i32 %add.48 to i64
  %shl.32 = shl i64 %zext.61, 32
  %or.28 = or i64 %shl.32, %zext.60
  %inttoptr_bytes.24 = inttoptr i64 %or.28 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.666 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.667 = bitcast ptr %R32 to ptr
  store float %.666, ptr %.667, align 4
  %.670 = load i32, ptr %R23, align 4
  %.673 = xor i1 true, true
  %.674 = zext i1 %.660 to i32
  %.675 = zext i1 %.673 to i32
  %add.53 = add i32 %.670, %trunc32.17
  %add.54 = add i32 %add.53, 0
  %add.55 = add i32 %add.54, %.674
  %add.56 = add i32 %add.55, %.675
  store i32 %add.56, ptr %R13, align 4
  %.678 = load i32, ptr %R22, align 4
  %zext.62 = zext i32 %.678 to i64
  %.679 = load i32, ptr %R23, align 4
  %zext.63 = zext i32 %.679 to i64
  %shl.33 = shl i64 %zext.63, 32
  %or.29 = or i64 %shl.33, %zext.62
  %inttoptr_bytes.25 = inttoptr i64 %or.29 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.680 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.681 = bitcast ptr %R22 to ptr
  store float %.680, ptr %.681, align 4
  %.684 = load i32, ptr %R12, align 4
  %zext.64 = zext i32 %.684 to i64
  %.685 = load i32, ptr %R13, align 4
  %zext.65 = zext i32 %.685 to i64
  %shl.34 = shl i64 %zext.65, 32
  %or.30 = or i64 %shl.34, %zext.64
  %inttoptr_bytes.26 = inttoptr i64 %or.30 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.686 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.687 = bitcast ptr %R15 to ptr
  store float %.686, ptr %.687, align 4
  %.690 = load i32, ptr %R12, align 4
  %zext.66 = zext i32 %.690 to i64
  %.691 = load i32, ptr %R13, align 4
  %zext.67 = zext i32 %.691 to i64
  %shl.35 = shl i64 %zext.67, 32
  %or.31 = or i64 %shl.35, %zext.66
  %sext_UR4 = sext i32 %trunc32.18 to i64
  %base_plus_reg_offset = add i64 %or.31, %sext_UR4
  %inttoptr_bytes.27 = inttoptr i64 %base_plus_reg_offset to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.692 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.693 = bitcast ptr %R17 to ptr
  store float %.692, ptr %.693, align 4
  %.697 = add i32 %R42.0, -4
  %.698 = add i32 %.697, 0
  %cmp.4 = icmp ne i32 %.698, 0
  %.704 = and i1 %cmp.4, true
  %.708 = load i32, ptr %R28, align 4
  %.709 = add i32 %.708, 4
  %.710 = add i32 %.709, 0
  store i32 %.710, ptr %R28, align 4
  %cast_ptr.8 = bitcast ptr %R35 to ptr
  %.713 = load float, ptr %cast_ptr.8, align 4
  %cast_ptr.9 = bitcast ptr %R40 to ptr
  %.714 = load float, ptr %cast_ptr.9, align 4
  %cast_ptr.10 = bitcast ptr %R2 to ptr
  %.715 = load float, ptr %cast_ptr.10, align 4
  %fmul = fmul float %.713, %.714
  %fadd.4 = fadd float %fmul, %.715
  %.716 = bitcast ptr %R40 to ptr
  store float %fadd.4, ptr %.716, align 4
  %cast_ptr.11 = bitcast ptr %R36 to ptr
  %.719 = load float, ptr %cast_ptr.11, align 4
  %cast_ptr.12 = bitcast ptr %R35 to ptr
  %.720 = load float, ptr %cast_ptr.12, align 4
  %cast_ptr.13 = bitcast ptr %R3 to ptr
  %.721 = load float, ptr %cast_ptr.13, align 4
  %fmul.1 = fmul float %.719, %.720
  %fadd.5 = fadd float %fmul.1, %.721
  %.722 = bitcast ptr %R36 to ptr
  store float %fadd.5, ptr %.722, align 4
  %cast_ptr.14 = bitcast ptr %R35 to ptr
  %.725 = load float, ptr %cast_ptr.14, align 4
  %cast_ptr.15 = bitcast ptr %R38 to ptr
  %.726 = load float, ptr %cast_ptr.15, align 4
  %cast_ptr.16 = bitcast ptr %R0 to ptr
  %.727 = load float, ptr %cast_ptr.16, align 4
  %fmul.2 = fmul float %.725, %.726
  %fadd.6 = fadd float %fmul.2, %.727
  %.728 = bitcast ptr %R38 to ptr
  store float %fadd.6, ptr %.728, align 4
  %cast_ptr.17 = bitcast ptr %R35 to ptr
  %.731 = load float, ptr %cast_ptr.17, align 4
  %cast_ptr.18 = bitcast ptr %R41 to ptr
  %.732 = load float, ptr %cast_ptr.18, align 4
  %cast_ptr.19 = bitcast ptr %R8 to ptr
  %.733 = load float, ptr %cast_ptr.19, align 4
  %fmul.3 = fmul float %.731, %.732
  %fadd.7 = fadd float %fmul.3, %.733
  %.734 = bitcast ptr %R8 to ptr
  store float %fadd.7, ptr %.734, align 4
  %cast_ptr.20 = bitcast ptr %R43 to ptr
  %.737 = load float, ptr %cast_ptr.20, align 4
  %cast_ptr.21 = bitcast ptr %R29 to ptr
  %.738 = load float, ptr %cast_ptr.21, align 4
  %cast_ptr.22 = bitcast ptr %R36 to ptr
  %.739 = load float, ptr %cast_ptr.22, align 4
  %fmul.4 = fmul float %.737, %.738
  %fadd.8 = fadd float %fmul.4, %.739
  %.740 = bitcast ptr %R36 to ptr
  store float %fadd.8, ptr %.740, align 4
  %cast_ptr.23 = bitcast ptr %R29 to ptr
  %.743 = load float, ptr %cast_ptr.23, align 4
  %cast_ptr.24 = bitcast ptr %R18 to ptr
  %.744 = load float, ptr %cast_ptr.24, align 4
  %cast_ptr.25 = bitcast ptr %R40 to ptr
  %.745 = load float, ptr %cast_ptr.25, align 4
  %fmul.5 = fmul float %.743, %.744
  %fadd.9 = fadd float %fmul.5, %.745
  %.746 = bitcast ptr %R18 to ptr
  store float %fadd.9, ptr %.746, align 4
  %cast_ptr.26 = bitcast ptr %R29 to ptr
  %.749 = load float, ptr %cast_ptr.26, align 4
  %cast_ptr.27 = bitcast ptr %R14 to ptr
  %.750 = load float, ptr %cast_ptr.27, align 4
  %cast_ptr.28 = bitcast ptr %R38 to ptr
  %.751 = load float, ptr %cast_ptr.28, align 4
  %fmul.6 = fmul float %.749, %.750
  %fadd.10 = fadd float %fmul.6, %.751
  %.752 = bitcast ptr %R14 to ptr
  store float %fadd.10, ptr %.752, align 4
  %cast_ptr.29 = bitcast ptr %R29 to ptr
  %.755 = load float, ptr %cast_ptr.29, align 4
  %cast_ptr.30 = bitcast ptr %R10 to ptr
  %.756 = load float, ptr %cast_ptr.30, align 4
  %cast_ptr.31 = bitcast ptr %R8 to ptr
  %.757 = load float, ptr %cast_ptr.31, align 4
  %fmul.7 = fmul float %.755, %.756
  %fadd.11 = fadd float %fmul.7, %.757
  %.758 = bitcast ptr %R8 to ptr
  store float %fadd.11, ptr %.758, align 4
  %cast_ptr.32 = bitcast ptr %R16 to ptr
  %.761 = load float, ptr %cast_ptr.32, align 4
  %cast_ptr.33 = bitcast ptr %R21 to ptr
  %.762 = load float, ptr %cast_ptr.33, align 4
  %cast_ptr.34 = bitcast ptr %R36 to ptr
  %.763 = load float, ptr %cast_ptr.34, align 4
  %fmul.8 = fmul float %.761, %.762
  %fadd.12 = fadd float %fmul.8, %.763
  %.764 = bitcast ptr %R3 to ptr
  store float %fadd.12, ptr %.764, align 4
  %cast_ptr.35 = bitcast ptr %R21 to ptr
  %.767 = load float, ptr %cast_ptr.35, align 4
  %cast_ptr.36 = bitcast ptr %R24 to ptr
  %.768 = load float, ptr %cast_ptr.36, align 4
  %cast_ptr.37 = bitcast ptr %R18 to ptr
  %.769 = load float, ptr %cast_ptr.37, align 4
  %fmul.9 = fmul float %.767, %.768
  %fadd.13 = fadd float %fmul.9, %.769
  %.770 = bitcast ptr %R11 to ptr
  store float %fadd.13, ptr %.770, align 4
  %cast_ptr.38 = bitcast ptr %R21 to ptr
  %.773 = load float, ptr %cast_ptr.38, align 4
  %cast_ptr.39 = bitcast ptr %R26 to ptr
  %.774 = load float, ptr %cast_ptr.39, align 4
  %cast_ptr.40 = bitcast ptr %R14 to ptr
  %.775 = load float, ptr %cast_ptr.40, align 4
  %fmul.10 = fmul float %.773, %.774
  %fadd.14 = fadd float %fmul.10, %.775
  %.776 = bitcast ptr %R13 to ptr
  store float %fadd.14, ptr %.776, align 4
  %cast_ptr.41 = bitcast ptr %R21 to ptr
  %.779 = load float, ptr %cast_ptr.41, align 4
  %cast_ptr.42 = bitcast ptr %R30 to ptr
  %.780 = load float, ptr %cast_ptr.42, align 4
  %cast_ptr.43 = bitcast ptr %R8 to ptr
  %.781 = load float, ptr %cast_ptr.43, align 4
  %fmul.11 = fmul float %.779, %.780
  %fadd.15 = fadd float %fmul.11, %.781
  %.782 = bitcast ptr %R21 to ptr
  store float %fadd.15, ptr %.782, align 4
  %cast_ptr.44 = bitcast ptr %R32 to ptr
  %.785 = load float, ptr %cast_ptr.44, align 4
  %cast_ptr.45 = bitcast ptr %R34 to ptr
  %.786 = load float, ptr %cast_ptr.45, align 4
  %cast_ptr.46 = bitcast ptr %R3 to ptr
  %.787 = load float, ptr %cast_ptr.46, align 4
  %fmul.12 = fmul float %.785, %.786
  %fadd.16 = fadd float %fmul.12, %.787
  %.788 = bitcast ptr %R3 to ptr
  store float %fadd.16, ptr %.788, align 4
  %cast_ptr.47 = bitcast ptr %R34 to ptr
  %.791 = load float, ptr %cast_ptr.47, align 4
  %cast_ptr.48 = bitcast ptr %R22 to ptr
  %.792 = load float, ptr %cast_ptr.48, align 4
  %cast_ptr.49 = bitcast ptr %R11 to ptr
  %.793 = load float, ptr %cast_ptr.49, align 4
  %fmul.13 = fmul float %.791, %.792
  %fadd.17 = fadd float %fmul.13, %.793
  %.794 = bitcast ptr %R2 to ptr
  store float %fadd.17, ptr %.794, align 4
  %cast_ptr.50 = bitcast ptr %R34 to ptr
  %.797 = load float, ptr %cast_ptr.50, align 4
  %cast_ptr.51 = bitcast ptr %R15 to ptr
  %.798 = load float, ptr %cast_ptr.51, align 4
  %cast_ptr.52 = bitcast ptr %R13 to ptr
  %.799 = load float, ptr %cast_ptr.52, align 4
  %fmul.14 = fmul float %.797, %.798
  %fadd.18 = fadd float %fmul.14, %.799
  %.800 = bitcast ptr %R0 to ptr
  store float %fadd.18, ptr %.800, align 4
  %cast_ptr.53 = bitcast ptr %R34 to ptr
  %.803 = load float, ptr %cast_ptr.53, align 4
  %cast_ptr.54 = bitcast ptr %R17 to ptr
  %.804 = load float, ptr %cast_ptr.54, align 4
  %cast_ptr.55 = bitcast ptr %R21 to ptr
  %.805 = load float, ptr %cast_ptr.55, align 4
  %fmul.15 = fmul float %.803, %.804
  %fadd.19 = fadd float %fmul.15, %.805
  %.806 = bitcast ptr %R8 to ptr
  store float %fadd.19, ptr %.806, align 4
  %.810 = icmp eq i1 %.704, true
  br i1 %.810, label %.L_x_2, label %.L_x_1.loopexit

.L_x_1.loopexit:                                  ; preds = %.L_x_2
  br label %.L_x_1

.L_x_1:                                           ; preds = %.L_x_1.loopexit, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250
  %P1.1 = phi i1 [ %.235, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250 ], [ %.704, %.L_x_1.loopexit ]
  %.814 = icmp ne i1 %.225, true
  br i1 %.814, label %.L_x_0, label %.L_x_1_split_0x07b0

.L_x_1_split_0x07b0:                              ; preds = %.L_x_1
  %.817 = load i32, ptr %R7, align 4
  %.818 = load i32, ptr %R28, align 4
  %imad_mul.18 = mul i32 %.817, %Arg_10
  %imad_add.18 = add i32 %imad_mul.18, %.818
  store i32 %imad_add.18, ptr %R10, align 4
  %.821 = load i32, ptr %R20, align 4
  %.822 = sub i32 0, %.821
  %.823 = add i32 %.822, 0
  %.824 = add i32 %.823, 0
  store i32 %.824, ptr %R20, align 4
  %.827 = load i32, ptr %R28, align 4
  %imad_mul.19 = mul i32 %.827, %Arg_11
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
  %.835 = load i32, ptr %R10, align 4
  %.836 = load i32, ptr %R9, align 4
  %imad_ext1.10 = zext i32 %.835 to i64
  %imad_ext2.10 = zext i32 %.836 to i64
  %imad_mul.20 = mul i64 %imad_ext1.10, %imad_ext2.10
  %.837 = ptrtoint ptr %Arg_0 to i64
  %imad_add.20 = add i64 %imad_mul.20, %.837
  %.838 = and i64 %imad_add.20, -4294967296
  %.839 = lshr i64 %.838, 32
  %trunc32.25 = trunc i64 %.839 to i32
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
  %.847 = load i32, ptr %R28, align 4
  %.848 = load i32, ptr %R5, align 4
  %imad_mul.21 = mul i32 %.847, 4
  %imad_add.21 = add i32 %imad_mul.21, %.848
  store i32 %imad_add.21, ptr %R13, align 4
  %.851 = load i32, ptr %R10, align 4
  store i32 %.851, ptr %R12, align 4
  %.854 = load i32, ptr %R11, align 4
  %imad_mul.22 = mul i32 0, 0
  %imad_add.22 = add i32 %imad_mul.22, %.854
  store i32 %imad_add.22, ptr %R23, align 4
  %.857 = load i32, ptr %R4, align 4
  %nvvm_blockdim_x.1 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %.858 = load i32, ptr %R13, align 4
  %imad_mul.23 = mul i32 %.857, %nvvm_blockdim_x.1
  %imad_add.23 = add i32 %imad_mul.23, %.858
  store i32 %imad_add.23, ptr %R18, align 4
  br label %.L_x_3

.L_x_3:                                           ; preds = %.L_x_3, %.L_x_1_split_0x07b0
  %.862 = load i32, ptr %R18, align 4
  %.863 = load i32, ptr %R9, align 4
  %imad_ext1.11 = zext i32 %.862 to i64
  %imad_ext2.11 = zext i32 %.863 to i64
  %imad_mul.24 = mul i64 %imad_ext1.11, %imad_ext2.11
  %.864 = ptrtoint ptr %Arg_3 to i64
  %imad_add.24 = add i64 %imad_mul.24, %.864
  %.865 = and i64 %imad_add.24, -4294967296
  %.866 = lshr i64 %.865, 32
  %trunc32.28 = trunc i64 %.866 to i32
  %trunc32.29 = trunc i64 %imad_add.24 to i32
  store i32 %trunc32.29, ptr %R10, align 4
  store i32 %trunc32.28, ptr %R11, align 4
  %.870 = load i32, ptr %R23, align 4
  %imad_mul.25 = mul i32 0, 0
  %imad_add.25 = add i32 %imad_mul.25, %.870
  store i32 %imad_add.25, ptr %R13, align 4
  %.873 = load i32, ptr %R10, align 4
  %.875 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.873, i32 %trunc32.27)
  %.876 = extractvalue { i32, i1 } %.875, 0
  %.877 = extractvalue { i32, i1 } %.875, 1
  %.878 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.876, i32 0)
  %.879 = extractvalue { i32, i1 } %.878, 0
  %.880 = extractvalue { i32, i1 } %.878, 1
  %.881 = or i1 %.877, %.880
  store i32 %.879, ptr %R14, align 4
  %.885 = load i32, ptr %R10, align 4
  %zext.74 = zext i32 %.885 to i64
  %.886 = load i32, ptr %R11, align 4
  %zext.75 = zext i32 %.886 to i64
  %shl.40 = shl i64 %zext.75, 32
  %or.34 = or i64 %shl.40, %zext.74
  %inttoptr_bytes.28 = inttoptr i64 %or.34 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.887 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.888 = bitcast ptr %R10 to ptr
  store float %.887, ptr %.888, align 4
  %.891 = load i32, ptr %R11, align 4
  %.894 = xor i1 true, true
  %.895 = zext i1 %.881 to i32
  %.896 = zext i1 %.894 to i32
  %add.57 = add i32 %.891, %trunc32.24
  %add.58 = add i32 %add.57, 0
  %add.59 = add i32 %add.58, %.895
  %add.60 = add i32 %add.59, %.896
  store i32 %add.60, ptr %R15, align 4
  %.899 = load i32, ptr %R14, align 4
  %.901 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.899, i32 %trunc32.27)
  %.902 = extractvalue { i32, i1 } %.901, 0
  %.903 = extractvalue { i32, i1 } %.901, 1
  %.904 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.902, i32 0)
  %.905 = extractvalue { i32, i1 } %.904, 0
  %.906 = extractvalue { i32, i1 } %.904, 1
  %.907 = or i1 %.903, %.906
  store i32 %.905, ptr %R16, align 4
  %.911 = load i32, ptr %R12, align 4
  %zext.76 = zext i32 %.911 to i64
  %.912 = load i32, ptr %R13, align 4
  %zext.77 = zext i32 %.912 to i64
  %shl.41 = shl i64 %zext.77, 32
  %or.35 = or i64 %shl.41, %zext.76
  %inttoptr_bytes.29 = inttoptr i64 %or.35 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.913 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.914 = bitcast ptr %R13 to ptr
  store float %.913, ptr %.914, align 4
  %.917 = load i32, ptr %R15, align 4
  %.920 = xor i1 true, true
  %.921 = zext i1 %.907 to i32
  %.922 = zext i1 %.920 to i32
  %add.61 = add i32 %.917, %trunc32.24
  %add.62 = add i32 %add.61, 0
  %add.63 = add i32 %add.62, %.921
  %add.64 = add i32 %add.63, %.922
  store i32 %add.64, ptr %R17, align 4
  %.925 = load i32, ptr %R14, align 4
  %zext.78 = zext i32 %.925 to i64
  %.926 = load i32, ptr %R15, align 4
  %zext.79 = zext i32 %.926 to i64
  %shl.42 = shl i64 %zext.79, 32
  %or.36 = or i64 %shl.42, %zext.78
  %inttoptr_bytes.30 = inttoptr i64 %or.36 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.927 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.928 = bitcast ptr %R14 to ptr
  store float %.927, ptr %.928, align 4
  %.931 = load i32, ptr %R16, align 4
  %zext.80 = zext i32 %.931 to i64
  %.932 = load i32, ptr %R17, align 4
  %zext.81 = zext i32 %.932 to i64
  %shl.43 = shl i64 %zext.81, 32
  %or.37 = or i64 %shl.43, %zext.80
  %inttoptr_bytes.31 = inttoptr i64 %or.37 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.933 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.934 = bitcast ptr %R19 to ptr
  store float %.933, ptr %.934, align 4
  %.937 = load i32, ptr %R16, align 4
  %zext.82 = zext i32 %.937 to i64
  %.938 = load i32, ptr %R17, align 4
  %zext.83 = zext i32 %.938 to i64
  %shl.44 = shl i64 %zext.83, 32
  %or.38 = or i64 %shl.44, %zext.82
  %sext_UR4.1 = sext i32 %trunc32.27 to i64
  %base_plus_reg_offset.1 = add i64 %or.38, %sext_UR4.1
  %inttoptr_bytes.32 = inttoptr i64 %base_plus_reg_offset.1 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.939 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.940 = bitcast ptr %R21 to ptr
  store float %.939, ptr %.940, align 4
  %.943 = load i32, ptr %R20, align 4
  %.944 = add i32 %.943, 1
  %.945 = add i32 %.944, 0
  store i32 %.945, ptr %R20, align 4
  %.948 = load i32, ptr %R20, align 4
  %cmp.5 = icmp ne i32 %.948, 0
  %.951 = and i1 %cmp.5, true
  %.957 = load i32, ptr %R12, align 4
  %.958 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.957, i32 4)
  %.959 = extractvalue { i32, i1 } %.958, 0
  %.960 = extractvalue { i32, i1 } %.958, 1
  %.961 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.959, i32 0)
  %.962 = extractvalue { i32, i1 } %.961, 0
  %.963 = extractvalue { i32, i1 } %.961, 1
  %.964 = or i1 %.960, %.963
  store i32 %.962, ptr %R12, align 4
  %.969 = load i32, ptr %R18, align 4
  %imad_mul.26 = mul i32 %Arg_11, 4
  %imad_add.26 = add i32 %imad_mul.26, %.969
  store i32 %imad_add.26, ptr %R18, align 4
  %.972 = load i32, ptr %R23, align 4
  %.974 = xor i1 true, true
  %.975 = zext i1 %.964 to i32
  %.976 = zext i1 %.974 to i32
  %add.65 = add i32 0, %.972
  %add.66 = add i32 %add.65, 0
  %add.67 = add i32 %add.66, %.975
  %add.68 = add i32 %add.67, %.976
  store i32 %add.68, ptr %R23, align 4
  %cast_ptr.56 = bitcast ptr %R10 to ptr
  %.979 = load float, ptr %cast_ptr.56, align 4
  %cast_ptr.57 = bitcast ptr %R13 to ptr
  %.980 = load float, ptr %cast_ptr.57, align 4
  %cast_ptr.58 = bitcast ptr %R3 to ptr
  %.981 = load float, ptr %cast_ptr.58, align 4
  %fmul.16 = fmul float %.979, %.980
  %fadd.20 = fadd float %fmul.16, %.981
  %.982 = bitcast ptr %R3 to ptr
  store float %fadd.20, ptr %.982, align 4
  %cast_ptr.59 = bitcast ptr %R13 to ptr
  %.985 = load float, ptr %cast_ptr.59, align 4
  %cast_ptr.60 = bitcast ptr %R14 to ptr
  %.986 = load float, ptr %cast_ptr.60, align 4
  %cast_ptr.61 = bitcast ptr %R2 to ptr
  %.987 = load float, ptr %cast_ptr.61, align 4
  %fmul.17 = fmul float %.985, %.986
  %fadd.21 = fadd float %fmul.17, %.987
  %.988 = bitcast ptr %R2 to ptr
  store float %fadd.21, ptr %.988, align 4
  %cast_ptr.62 = bitcast ptr %R13 to ptr
  %.991 = load float, ptr %cast_ptr.62, align 4
  %cast_ptr.63 = bitcast ptr %R19 to ptr
  %.992 = load float, ptr %cast_ptr.63, align 4
  %cast_ptr.64 = bitcast ptr %R0 to ptr
  %.993 = load float, ptr %cast_ptr.64, align 4
  %fmul.18 = fmul float %.991, %.992
  %fadd.22 = fadd float %fmul.18, %.993
  %.994 = bitcast ptr %R0 to ptr
  store float %fadd.22, ptr %.994, align 4
  %cast_ptr.65 = bitcast ptr %R13 to ptr
  %.997 = load float, ptr %cast_ptr.65, align 4
  %cast_ptr.66 = bitcast ptr %R21 to ptr
  %.998 = load float, ptr %cast_ptr.66, align 4
  %cast_ptr.67 = bitcast ptr %R8 to ptr
  %.999 = load float, ptr %cast_ptr.67, align 4
  %fmul.19 = fmul float %.997, %.998
  %fadd.23 = fadd float %fmul.19, %.999
  %.1000 = bitcast ptr %R8 to ptr
  store float %fadd.23, ptr %.1000, align 4
  %.1004 = icmp eq i1 %.951, true
  br i1 %.1004, label %.L_x_3, label %.L_x_0.loopexit

.L_x_0.loopexit:                                  ; preds = %.L_x_3
  br label %.L_x_0

.L_x_0:                                           ; preds = %.L_x_0.loopexit, %.L_x_1, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0
  %P1.0 = phi i1 [ undef, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0 ], [ %P1.1, %.L_x_1 ], [ %.964, %.L_x_0.loopexit ]
  %P0.0 = phi i1 [ %.186, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0 ], [ %.225, %.L_x_1 ], [ %.951, %.L_x_0.loopexit ]
  %.1021 = icmp ne i1 %P0.0, true
  br i1 %.1021, label %.L_x_4, label %.L_x_0_split_0x09f0

.L_x_0_split_0x09f0:                              ; preds = %.L_x_0
  %imad_mul.27 = mul i32 0, 0
  %imad_add.27 = add i32 %imad_mul.27, 0
  store i32 %imad_add.27, ptr %R22, align 4
  %.1048 = and i32 %Arg_11, 3
  %.1058 = icmp ne i1 %P1.0, true
  br i1 %.1058, label %.L_x_5, label %.L_x_0_split_0x0a70

.L_x_0_split_0x0a70:                              ; preds = %.L_x_0_split_0x09f0
  %zext.84 = zext i32 %Arg_11 to i64
  %zext.85 = zext i32 0 to i64
  %zext.86 = zext i32 31 to i64
  %shl.45 = shl i64 %zext.84, 32
  %or.39 = or i64 %shl.45, %zext.85
  %ashr.2 = ashr i64 %or.39, %zext.86
  %ashr.3 = ashr i64 %ashr.2, 32
  %trunc32.30 = trunc i64 %ashr.3 to i32
  store i32 0, ptr %R22, align 4
  %zext.87 = zext i32 0 to i64
  %zext.88 = zext i32 %Arg_11 to i64
  %zext.89 = zext i32 2 to i64
  %shl.46 = shl i64 %zext.87, 32
  %or.40 = or i64 %shl.46, %zext.88
  %shl.47 = shl i64 %or.40, %zext.89
  %and.3 = and i64 %shl.47, 4294967295
  %trunc32.31 = trunc i64 %and.3 to i32
  %.1074 = sub i32 0, %.1048
  %.1076 = add i32 %.1074, %Arg_11
  %.1077 = add i32 %.1076, 0
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
  %UR7.0 = phi i32 [ %.1077, %.L_x_0_split_0x0a70 ], [ %.1518, %.L_x_6 ]
  %.1086 = load i32, ptr %R22, align 4
  %imad_shl = shl i32 %.1086, 4
  %imad_add.28 = add i32 %imad_shl, 0
  store i32 %imad_add.28, ptr %R11, align 4
  %.1089 = load i32, ptr %R7, align 4
  %.1090 = load i32, ptr %R22, align 4
  %imad_mul.28 = mul i32 %.1089, %Arg_11
  %imad_add.29 = add i32 %imad_mul.28, %.1090
  store i32 %imad_add.29, ptr %R28, align 4
  %.1093 = load i32, ptr %R11, align 4
  %imad_mul.29 = mul i32 %.1093, %Arg_11
  %imad_add.30 = add i32 %imad_mul.29, %imad_add.1
  store i32 %imad_add.30, ptr %R30, align 4
  %.1097 = load i32, ptr %R28, align 4
  %.1098 = load i32, ptr %R9, align 4
  %imad_ext1.12 = zext i32 %.1097 to i64
  %imad_ext2.12 = zext i32 %.1098 to i64
  %imad_mul.30 = mul i64 %imad_ext1.12, %imad_ext2.12
  %.1099 = ptrtoint ptr %Arg_1 to i64
  %imad_add.31 = add i64 %imad_mul.30, %.1099
  %.1100 = and i64 %imad_add.31, -4294967296
  %.1101 = lshr i64 %.1100, 32
  %trunc32.33 = trunc i64 %.1101 to i32
  %trunc32.34 = trunc i64 %imad_add.31 to i32
  store i32 %trunc32.34, ptr %R28, align 4
  store i32 %trunc32.33, ptr %R29, align 4
  %.1105 = load i32, ptr %R30, align 4
  %.1106 = load i32, ptr %R9, align 4
  %imad_ext1.13 = zext i32 %.1105 to i64
  %imad_ext2.13 = zext i32 %.1106 to i64
  %imad_mul.31 = mul i64 %imad_ext1.13, %imad_ext2.13
  %.1107 = ptrtoint ptr %Arg_4 to i64
  %imad_add.32 = add i64 %imad_mul.31, %.1107
  %.1108 = and i64 %imad_add.32, -4294967296
  %.1109 = lshr i64 %.1108, 32
  %trunc32.35 = trunc i64 %.1109 to i32
  %trunc32.36 = trunc i64 %imad_add.32 to i32
  store i32 %trunc32.36, ptr %R30, align 4
  %.1113 = load i32, ptr %R28, align 4
  %zext.93 = zext i32 %.1113 to i64
  %.1114 = load i32, ptr %R29, align 4
  %zext.94 = zext i32 %.1114 to i64
  %shl.50 = shl i64 %zext.94, 32
  %or.42 = or i64 %shl.50, %zext.93
  %inttoptr_bytes.33 = inttoptr i64 %or.42 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.1115 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.1116 = bitcast ptr %R35 to ptr
  store float %.1115, ptr %.1116, align 4
  %.1119 = load i32, ptr %R30, align 4
  %.1121 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1119, i32 %trunc32.31)
  %.1122 = extractvalue { i32, i1 } %.1121, 0
  %.1123 = extractvalue { i32, i1 } %.1121, 1
  %.1124 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1122, i32 0)
  %.1125 = extractvalue { i32, i1 } %.1124, 0
  %.1126 = extractvalue { i32, i1 } %.1124, 1
  %.1127 = or i1 %.1123, %.1126
  store i32 %.1125, ptr %R32, align 4
  %.1131 = load i32, ptr %R28, align 4
  %zext.95 = zext i32 %.1131 to i64
  %.1132 = load i32, ptr %R29, align 4
  %zext.96 = zext i32 %.1132 to i64
  %shl.51 = shl i64 %zext.96, 32
  %or.43 = or i64 %shl.51, %zext.95
  %ptr_plus_imm.3 = add i64 %or.43, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.1133 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.1134 = bitcast ptr %R26 to ptr
  store float %.1133, ptr %.1134, align 4
  %.1140 = xor i1 true, true
  %.1141 = zext i1 %.1127 to i32
  %.1142 = zext i1 %.1140 to i32
  %add.69 = add i32 %trunc32.35, %trunc32.32
  %add.70 = add i32 %add.69, 0
  %add.71 = add i32 %add.70, %.1141
  %add.72 = add i32 %add.71, %.1142
  %.1145 = load i32, ptr %R32, align 4
  %.1147 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1145, i32 %trunc32.31)
  %.1148 = extractvalue { i32, i1 } %.1147, 0
  %.1149 = extractvalue { i32, i1 } %.1147, 1
  %.1150 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1148, i32 0)
  %.1151 = extractvalue { i32, i1 } %.1150, 0
  %.1152 = extractvalue { i32, i1 } %.1150, 1
  %.1153 = or i1 %.1149, %.1152
  store i32 %.1151, ptr %R36, align 4
  %.1157 = load i32, ptr %R28, align 4
  %zext.97 = zext i32 %.1157 to i64
  %.1158 = load i32, ptr %R29, align 4
  %zext.98 = zext i32 %.1158 to i64
  %shl.52 = shl i64 %zext.98, 32
  %or.44 = or i64 %shl.52, %zext.97
  %ptr_plus_imm.4 = add i64 %or.44, 8
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.1159 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.1160 = bitcast ptr %R23 to ptr
  store float %.1159, ptr %.1160, align 4
  %.1166 = xor i1 true, true
  %.1167 = zext i1 %.1153 to i32
  %.1168 = zext i1 %.1166 to i32
  %add.73 = add i32 %add.72, %trunc32.32
  %add.74 = add i32 %add.73, 0
  %add.75 = add i32 %add.74, %.1167
  %add.76 = add i32 %add.75, %.1168
  %.1171 = load i32, ptr %R28, align 4
  %zext.99 = zext i32 %.1171 to i64
  %.1172 = load i32, ptr %R29, align 4
  %zext.100 = zext i32 %.1172 to i64
  %shl.53 = shl i64 %zext.100, 32
  %or.45 = or i64 %shl.53, %zext.99
  %ptr_plus_imm.5 = add i64 %or.45, 12
  %inttoptr_bytes.36 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.1173 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.1174 = bitcast ptr %R27 to ptr
  store float %.1173, ptr %.1174, align 4
  %.1177 = load i32, ptr %R36, align 4
  %.1179 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1177, i32 %trunc32.31)
  %.1180 = extractvalue { i32, i1 } %.1179, 0
  %.1181 = extractvalue { i32, i1 } %.1179, 1
  %.1182 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1180, i32 0)
  %.1183 = extractvalue { i32, i1 } %.1182, 0
  %.1184 = extractvalue { i32, i1 } %.1182, 1
  %.1185 = or i1 %.1181, %.1184
  store i32 %.1183, ptr %R38, align 4
  %.1189 = load i32, ptr %R30, align 4
  %zext.101 = zext i32 %.1189 to i64
  %zext.102 = zext i32 %trunc32.35 to i64
  %shl.54 = shl i64 %zext.102, 32
  %or.46 = or i64 %shl.54, %zext.101
  %inttoptr_bytes.37 = inttoptr i64 %or.46 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.1191 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.1192 = bitcast ptr %R34 to ptr
  store float %.1191, ptr %.1192, align 4
  %.1198 = xor i1 true, true
  %.1199 = zext i1 %.1185 to i32
  %.1200 = zext i1 %.1198 to i32
  %add.77 = add i32 %add.76, %trunc32.32
  %add.78 = add i32 %add.77, 0
  %add.79 = add i32 %add.78, %.1199
  %add.80 = add i32 %add.79, %.1200
  %.1203 = load i32, ptr %R38, align 4
  %.1205 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1203, i32 %trunc32.31)
  %.1206 = extractvalue { i32, i1 } %.1205, 0
  %.1207 = extractvalue { i32, i1 } %.1205, 1
  %.1208 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1206, i32 0)
  %.1209 = extractvalue { i32, i1 } %.1208, 0
  %.1210 = extractvalue { i32, i1 } %.1208, 1
  %.1211 = or i1 %.1207, %.1210
  store i32 %.1209, ptr %R12, align 4
  %.1215 = load i32, ptr %R32, align 4
  %zext.103 = zext i32 %.1215 to i64
  %zext.104 = zext i32 %add.72 to i64
  %shl.55 = shl i64 %zext.104, 32
  %or.47 = or i64 %shl.55, %zext.103
  %inttoptr_bytes.38 = inttoptr i64 %or.47 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.1217 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.1218 = bitcast ptr %R40 to ptr
  store float %.1217, ptr %.1218, align 4
  %.1224 = xor i1 true, true
  %.1225 = zext i1 %.1211 to i32
  %.1226 = zext i1 %.1224 to i32
  %add.81 = add i32 %add.80, %trunc32.32
  %add.82 = add i32 %add.81, 0
  %add.83 = add i32 %add.82, %.1225
  %add.84 = add i32 %add.83, %.1226
  store i32 %add.84, ptr %R13, align 4
  %.1229 = load i32, ptr %R36, align 4
  %zext.105 = zext i32 %.1229 to i64
  %zext.106 = zext i32 %add.76 to i64
  %shl.56 = shl i64 %zext.106, 32
  %or.48 = or i64 %shl.56, %zext.105
  %inttoptr_bytes.39 = inttoptr i64 %or.48 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.1231 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.1232 = bitcast ptr %R36 to ptr
  store float %.1231, ptr %.1232, align 4
  %.1235 = load i32, ptr %R12, align 4
  %.1237 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1235, i32 %trunc32.31)
  %.1238 = extractvalue { i32, i1 } %.1237, 0
  %.1239 = extractvalue { i32, i1 } %.1237, 1
  %.1240 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1238, i32 0)
  %.1241 = extractvalue { i32, i1 } %.1240, 0
  %.1242 = extractvalue { i32, i1 } %.1240, 1
  %.1243 = or i1 %.1239, %.1242
  store i32 %.1241, ptr %R18, align 4
  %.1247 = load i32, ptr %R38, align 4
  %zext.107 = zext i32 %.1247 to i64
  %zext.108 = zext i32 %add.80 to i64
  %shl.57 = shl i64 %zext.108, 32
  %or.49 = or i64 %shl.57, %zext.107
  %inttoptr_bytes.40 = inttoptr i64 %or.49 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.1249 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.1250 = bitcast ptr %R38 to ptr
  store float %.1249, ptr %.1250, align 4
  %.1253 = load i32, ptr %R13, align 4
  %.1256 = xor i1 true, true
  %.1257 = zext i1 %.1243 to i32
  %.1258 = zext i1 %.1256 to i32
  %add.85 = add i32 %.1253, %trunc32.32
  %add.86 = add i32 %add.85, 0
  %add.87 = add i32 %add.86, %.1257
  %add.88 = add i32 %add.87, %.1258
  store i32 %add.88, ptr %R19, align 4
  %.1261 = load i32, ptr %R18, align 4
  %.1263 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1261, i32 %trunc32.31)
  %.1264 = extractvalue { i32, i1 } %.1263, 0
  %.1265 = extractvalue { i32, i1 } %.1263, 1
  %.1266 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1264, i32 0)
  %.1267 = extractvalue { i32, i1 } %.1266, 0
  %.1268 = extractvalue { i32, i1 } %.1266, 1
  %.1269 = or i1 %.1265, %.1268
  store i32 %.1267, ptr %R14, align 4
  %.1273 = load i32, ptr %R12, align 4
  %zext.109 = zext i32 %.1273 to i64
  %.1274 = load i32, ptr %R13, align 4
  %zext.110 = zext i32 %.1274 to i64
  %shl.58 = shl i64 %zext.110, 32
  %or.50 = or i64 %shl.58, %zext.109
  %inttoptr_bytes.41 = inttoptr i64 %or.50 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.1275 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.1276 = bitcast ptr %R41 to ptr
  store float %.1275, ptr %.1276, align 4
  %.1279 = load i32, ptr %R19, align 4
  %.1282 = xor i1 true, true
  %.1283 = zext i1 %.1269 to i32
  %.1284 = zext i1 %.1282 to i32
  %add.89 = add i32 %.1279, %trunc32.32
  %add.90 = add i32 %add.89, 0
  %add.91 = add i32 %add.90, %.1283
  %add.92 = add i32 %add.91, %.1284
  store i32 %add.92, ptr %R15, align 4
  %.1287 = load i32, ptr %R14, align 4
  %.1289 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1287, i32 %trunc32.31)
  %.1290 = extractvalue { i32, i1 } %.1289, 0
  %.1291 = extractvalue { i32, i1 } %.1289, 1
  %.1292 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1290, i32 0)
  %.1293 = extractvalue { i32, i1 } %.1292, 0
  %.1294 = extractvalue { i32, i1 } %.1292, 1
  %.1295 = or i1 %.1291, %.1294
  store i32 %.1293, ptr %R10, align 4
  %.1299 = load i32, ptr %R18, align 4
  %zext.111 = zext i32 %.1299 to i64
  %.1300 = load i32, ptr %R19, align 4
  %zext.112 = zext i32 %.1300 to i64
  %shl.59 = shl i64 %zext.112, 32
  %or.51 = or i64 %shl.59, %zext.111
  %inttoptr_bytes.42 = inttoptr i64 %or.51 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.1301 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.1302 = bitcast ptr %R18 to ptr
  store float %.1301, ptr %.1302, align 4
  %.1305 = load i32, ptr %R15, align 4
  %.1308 = xor i1 true, true
  %.1309 = zext i1 %.1295 to i32
  %.1310 = zext i1 %.1308 to i32
  %add.93 = add i32 %.1305, %trunc32.32
  %add.94 = add i32 %add.93, 0
  %add.95 = add i32 %add.94, %.1309
  %add.96 = add i32 %add.95, %.1310
  store i32 %add.96, ptr %R11, align 4
  %.1313 = load i32, ptr %R10, align 4
  %.1315 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1313, i32 %trunc32.31)
  %.1316 = extractvalue { i32, i1 } %.1315, 0
  %.1317 = extractvalue { i32, i1 } %.1315, 1
  %.1318 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1316, i32 0)
  %.1319 = extractvalue { i32, i1 } %.1318, 0
  %.1320 = extractvalue { i32, i1 } %.1318, 1
  %.1321 = or i1 %.1317, %.1320
  store i32 %.1319, ptr %R16, align 4
  %.1325 = load i32, ptr %R14, align 4
  %zext.113 = zext i32 %.1325 to i64
  %.1326 = load i32, ptr %R15, align 4
  %zext.114 = zext i32 %.1326 to i64
  %shl.60 = shl i64 %zext.114, 32
  %or.52 = or i64 %shl.60, %zext.113
  %inttoptr_bytes.43 = inttoptr i64 %or.52 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.1327 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.1328 = bitcast ptr %R14 to ptr
  store float %.1327, ptr %.1328, align 4
  %.1331 = load i32, ptr %R11, align 4
  %.1334 = xor i1 true, true
  %.1335 = zext i1 %.1321 to i32
  %.1336 = zext i1 %.1334 to i32
  %add.97 = add i32 %.1331, %trunc32.32
  %add.98 = add i32 %add.97, 0
  %add.99 = add i32 %add.98, %.1335
  %add.100 = add i32 %add.99, %.1336
  store i32 %add.100, ptr %R17, align 4
  %.1339 = load i32, ptr %R16, align 4
  %.1341 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1339, i32 %trunc32.31)
  %.1342 = extractvalue { i32, i1 } %.1341, 0
  %.1343 = extractvalue { i32, i1 } %.1341, 1
  %.1344 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1342, i32 0)
  %.1345 = extractvalue { i32, i1 } %.1344, 0
  %.1346 = extractvalue { i32, i1 } %.1344, 1
  %.1347 = or i1 %.1343, %.1346
  store i32 %.1345, ptr %R24, align 4
  %.1351 = load i32, ptr %R10, align 4
  %zext.115 = zext i32 %.1351 to i64
  %.1352 = load i32, ptr %R11, align 4
  %zext.116 = zext i32 %.1352 to i64
  %shl.61 = shl i64 %zext.116, 32
  %or.53 = or i64 %shl.61, %zext.115
  %inttoptr_bytes.44 = inttoptr i64 %or.53 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.1353 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.1354 = bitcast ptr %R10 to ptr
  store float %.1353, ptr %.1354, align 4
  %.1357 = load i32, ptr %R17, align 4
  %.1360 = xor i1 true, true
  %.1361 = zext i1 %.1347 to i32
  %.1362 = zext i1 %.1360 to i32
  %add.101 = add i32 %.1357, %trunc32.32
  %add.102 = add i32 %add.101, 0
  %add.103 = add i32 %add.102, %.1361
  %add.104 = add i32 %add.103, %.1362
  %.1365 = load i32, ptr %R24, align 4
  %.1367 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1365, i32 %trunc32.31)
  %.1368 = extractvalue { i32, i1 } %.1367, 0
  %.1369 = extractvalue { i32, i1 } %.1367, 1
  %.1370 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1368, i32 0)
  %.1371 = extractvalue { i32, i1 } %.1370, 0
  %.1372 = extractvalue { i32, i1 } %.1370, 1
  %.1373 = or i1 %.1369, %.1372
  store i32 %.1371, ptr %R20, align 4
  %.1377 = load i32, ptr %R16, align 4
  %zext.117 = zext i32 %.1377 to i64
  %.1378 = load i32, ptr %R17, align 4
  %zext.118 = zext i32 %.1378 to i64
  %shl.62 = shl i64 %zext.118, 32
  %or.54 = or i64 %shl.62, %zext.117
  %inttoptr_bytes.45 = inttoptr i64 %or.54 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.1379 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.1380 = bitcast ptr %R16 to ptr
  store float %.1379, ptr %.1380, align 4
  %.1386 = xor i1 true, true
  %.1387 = zext i1 %.1373 to i32
  %.1388 = zext i1 %.1386 to i32
  %add.105 = add i32 %add.104, %trunc32.32
  %add.106 = add i32 %add.105, 0
  %add.107 = add i32 %add.106, %.1387
  %add.108 = add i32 %add.107, %.1388
  store i32 %add.108, ptr %R21, align 4
  %.1391 = load i32, ptr %R20, align 4
  %.1393 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1391, i32 %trunc32.31)
  %.1394 = extractvalue { i32, i1 } %.1393, 0
  %.1395 = extractvalue { i32, i1 } %.1393, 1
  %.1396 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1394, i32 0)
  %.1397 = extractvalue { i32, i1 } %.1396, 0
  %.1398 = extractvalue { i32, i1 } %.1396, 1
  %.1399 = or i1 %.1395, %.1398
  store i32 %.1397, ptr %R28, align 4
  %.1403 = load i32, ptr %R24, align 4
  %zext.119 = zext i32 %.1403 to i64
  %zext.120 = zext i32 %add.104 to i64
  %shl.63 = shl i64 %zext.120, 32
  %or.55 = or i64 %shl.63, %zext.119
  %inttoptr_bytes.46 = inttoptr i64 %or.55 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.1405 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.1406 = bitcast ptr %R24 to ptr
  store float %.1405, ptr %.1406, align 4
  %.1409 = load i32, ptr %R21, align 4
  %.1412 = xor i1 true, true
  %.1413 = zext i1 %.1399 to i32
  %.1414 = zext i1 %.1412 to i32
  %add.109 = add i32 %.1409, %trunc32.32
  %add.110 = add i32 %add.109, 0
  %add.111 = add i32 %add.110, %.1413
  %add.112 = add i32 %add.111, %.1414
  store i32 %add.112, ptr %R29, align 4
  %.1417 = load i32, ptr %R28, align 4
  %.1419 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1417, i32 %trunc32.31)
  %.1420 = extractvalue { i32, i1 } %.1419, 0
  %.1421 = extractvalue { i32, i1 } %.1419, 1
  %.1422 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1420, i32 0)
  %.1423 = extractvalue { i32, i1 } %.1422, 0
  %.1424 = extractvalue { i32, i1 } %.1422, 1
  %.1425 = or i1 %.1421, %.1424
  store i32 %.1423, ptr %R30, align 4
  %.1429 = load i32, ptr %R20, align 4
  %zext.121 = zext i32 %.1429 to i64
  %.1430 = load i32, ptr %R21, align 4
  %zext.122 = zext i32 %.1430 to i64
  %shl.64 = shl i64 %zext.122, 32
  %or.56 = or i64 %shl.64, %zext.121
  %inttoptr_bytes.47 = inttoptr i64 %or.56 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.1431 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.1432 = bitcast ptr %R20 to ptr
  store float %.1431, ptr %.1432, align 4
  %.1435 = load i32, ptr %R29, align 4
  %.1438 = xor i1 true, true
  %.1439 = zext i1 %.1425 to i32
  %.1440 = zext i1 %.1438 to i32
  %add.113 = add i32 %.1435, %trunc32.32
  %add.114 = add i32 %add.113, 0
  %add.115 = add i32 %add.114, %.1439
  %add.116 = add i32 %add.115, %.1440
  %.1443 = load i32, ptr %R30, align 4
  %.1445 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1443, i32 %trunc32.31)
  %.1446 = extractvalue { i32, i1 } %.1445, 0
  %.1447 = extractvalue { i32, i1 } %.1445, 1
  %.1448 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1446, i32 0)
  %.1449 = extractvalue { i32, i1 } %.1448, 0
  %.1450 = extractvalue { i32, i1 } %.1448, 1
  %.1451 = or i1 %.1447, %.1450
  store i32 %.1449, ptr %R32, align 4
  %.1455 = load i32, ptr %R28, align 4
  %zext.123 = zext i32 %.1455 to i64
  %.1456 = load i32, ptr %R29, align 4
  %zext.124 = zext i32 %.1456 to i64
  %shl.65 = shl i64 %zext.124, 32
  %or.57 = or i64 %shl.65, %zext.123
  %inttoptr_bytes.48 = inttoptr i64 %or.57 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.1457 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.1458 = bitcast ptr %R28 to ptr
  store float %.1457, ptr %.1458, align 4
  %.1464 = xor i1 true, true
  %.1465 = zext i1 %.1451 to i32
  %.1466 = zext i1 %.1464 to i32
  %add.117 = add i32 %add.116, %trunc32.32
  %add.118 = add i32 %add.117, 0
  %add.119 = add i32 %add.118, %.1465
  %add.120 = add i32 %add.119, %.1466
  %.1469 = load i32, ptr %R32, align 4
  %.1471 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1469, i32 %trunc32.31)
  %.1472 = extractvalue { i32, i1 } %.1471, 0
  %.1473 = extractvalue { i32, i1 } %.1471, 1
  %.1474 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1472, i32 0)
  %.1475 = extractvalue { i32, i1 } %.1474, 0
  %.1476 = extractvalue { i32, i1 } %.1474, 1
  %.1477 = or i1 %.1473, %.1476
  store i32 %.1475, ptr %R12, align 4
  %.1484 = load i32, ptr %R30, align 4
  %zext.125 = zext i32 %.1484 to i64
  %zext.126 = zext i32 %add.116 to i64
  %shl.66 = shl i64 %zext.126, 32
  %or.58 = or i64 %shl.66, %zext.125
  %inttoptr_bytes.49 = inttoptr i64 %or.58 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.1486 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.1487 = bitcast ptr %R30 to ptr
  store float %.1486, ptr %.1487, align 4
  %.1493 = xor i1 true, true
  %.1494 = zext i1 %.1477 to i32
  %.1495 = zext i1 %.1493 to i32
  %add.121 = add i32 %add.120, %trunc32.32
  %add.122 = add i32 %add.121, 0
  %add.123 = add i32 %add.122, %.1494
  %add.124 = add i32 %add.123, %.1495
  store i32 %add.124, ptr %R13, align 4
  %.1498 = load i32, ptr %R32, align 4
  %zext.127 = zext i32 %.1498 to i64
  %zext.128 = zext i32 %add.120 to i64
  %shl.67 = shl i64 %zext.128, 32
  %or.59 = or i64 %shl.67, %zext.127
  %inttoptr_bytes.50 = inttoptr i64 %or.59 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.1500 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.1501 = bitcast ptr %R32 to ptr
  store float %.1500, ptr %.1501, align 4
  %.1504 = load i32, ptr %R12, align 4
  %zext.129 = zext i32 %.1504 to i64
  %.1505 = load i32, ptr %R13, align 4
  %zext.130 = zext i32 %.1505 to i64
  %shl.68 = shl i64 %zext.130, 32
  %or.60 = or i64 %shl.68, %zext.129
  %inttoptr_bytes.51 = inttoptr i64 %or.60 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.1506 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.1507 = bitcast ptr %R17 to ptr
  store float %.1506, ptr %.1507, align 4
  %.1510 = load i32, ptr %R12, align 4
  %zext.131 = zext i32 %.1510 to i64
  %.1511 = load i32, ptr %R13, align 4
  %zext.132 = zext i32 %.1511 to i64
  %shl.69 = shl i64 %zext.132, 32
  %or.61 = or i64 %shl.69, %zext.131
  %sext_UR4.2 = sext i32 %trunc32.31 to i64
  %base_plus_reg_offset.2 = add i64 %or.61, %sext_UR4.2
  %inttoptr_bytes.52 = inttoptr i64 %base_plus_reg_offset.2 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.1512 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.1513 = bitcast ptr %R19 to ptr
  store float %.1512, ptr %.1513, align 4
  %.1517 = add i32 %UR7.0, -4
  %.1518 = add i32 %.1517, 0
  %cmp.6 = icmp ne i32 0, %.1518
  %.1524 = and i1 %cmp.6, true
  %.1528 = load i32, ptr %R22, align 4
  %.1529 = add i32 %.1528, 4
  %.1530 = add i32 %.1529, 0
  store i32 %.1530, ptr %R22, align 4
  %cast_ptr.68 = bitcast ptr %R34 to ptr
  %.1533 = load float, ptr %cast_ptr.68, align 4
  %cast_ptr.69 = bitcast ptr %R35 to ptr
  %.1534 = load float, ptr %cast_ptr.69, align 4
  %cast_ptr.70 = bitcast ptr %R3 to ptr
  %.1535 = load float, ptr %cast_ptr.70, align 4
  %fmul.20 = fmul float %.1533, %.1534
  %fadd.24 = fadd float %fmul.20, %.1535
  %.1536 = bitcast ptr %R3 to ptr
  store float %fadd.24, ptr %.1536, align 4
  %cast_ptr.71 = bitcast ptr %R35 to ptr
  %.1539 = load float, ptr %cast_ptr.71, align 4
  %cast_ptr.72 = bitcast ptr %R40 to ptr
  %.1540 = load float, ptr %cast_ptr.72, align 4
  %cast_ptr.73 = bitcast ptr %R2 to ptr
  %.1541 = load float, ptr %cast_ptr.73, align 4
  %fmul.21 = fmul float %.1539, %.1540
  %fadd.25 = fadd float %fmul.21, %.1541
  %.1542 = bitcast ptr %R11 to ptr
  store float %fadd.25, ptr %.1542, align 4
  %cast_ptr.74 = bitcast ptr %R35 to ptr
  %.1545 = load float, ptr %cast_ptr.74, align 4
  %cast_ptr.75 = bitcast ptr %R36 to ptr
  %.1546 = load float, ptr %cast_ptr.75, align 4
  %cast_ptr.76 = bitcast ptr %R0 to ptr
  %.1547 = load float, ptr %cast_ptr.76, align 4
  %fmul.22 = fmul float %.1545, %.1546
  %fadd.26 = fadd float %fmul.22, %.1547
  %.1548 = bitcast ptr %R15 to ptr
  store float %fadd.26, ptr %.1548, align 4
  %cast_ptr.77 = bitcast ptr %R35 to ptr
  %.1551 = load float, ptr %cast_ptr.77, align 4
  %cast_ptr.78 = bitcast ptr %R38 to ptr
  %.1552 = load float, ptr %cast_ptr.78, align 4
  %cast_ptr.79 = bitcast ptr %R8 to ptr
  %.1553 = load float, ptr %cast_ptr.79, align 4
  %fmul.23 = fmul float %.1551, %.1552
  %fadd.27 = fadd float %fmul.23, %.1553
  %.1554 = bitcast ptr %R35 to ptr
  store float %fadd.27, ptr %.1554, align 4
  %cast_ptr.80 = bitcast ptr %R41 to ptr
  %.1557 = load float, ptr %cast_ptr.80, align 4
  %cast_ptr.81 = bitcast ptr %R26 to ptr
  %.1558 = load float, ptr %cast_ptr.81, align 4
  %cast_ptr.82 = bitcast ptr %R3 to ptr
  %.1559 = load float, ptr %cast_ptr.82, align 4
  %fmul.24 = fmul float %.1557, %.1558
  %fadd.28 = fadd float %fmul.24, %.1559
  %.1560 = bitcast ptr %R0 to ptr
  store float %fadd.28, ptr %.1560, align 4
  %cast_ptr.83 = bitcast ptr %R26 to ptr
  %.1563 = load float, ptr %cast_ptr.83, align 4
  %cast_ptr.84 = bitcast ptr %R18 to ptr
  %.1564 = load float, ptr %cast_ptr.84, align 4
  %cast_ptr.85 = bitcast ptr %R11 to ptr
  %.1565 = load float, ptr %cast_ptr.85, align 4
  %fmul.25 = fmul float %.1563, %.1564
  %fadd.29 = fadd float %fmul.25, %.1565
  %.1566 = bitcast ptr %R18 to ptr
  store float %fadd.29, ptr %.1566, align 4
  %cast_ptr.86 = bitcast ptr %R26 to ptr
  %.1569 = load float, ptr %cast_ptr.86, align 4
  %cast_ptr.87 = bitcast ptr %R14 to ptr
  %.1570 = load float, ptr %cast_ptr.87, align 4
  %cast_ptr.88 = bitcast ptr %R15 to ptr
  %.1571 = load float, ptr %cast_ptr.88, align 4
  %fmul.26 = fmul float %.1569, %.1570
  %fadd.30 = fadd float %fmul.26, %.1571
  %.1572 = bitcast ptr %R14 to ptr
  store float %fadd.30, ptr %.1572, align 4
  %cast_ptr.89 = bitcast ptr %R26 to ptr
  %.1575 = load float, ptr %cast_ptr.89, align 4
  %cast_ptr.90 = bitcast ptr %R10 to ptr
  %.1576 = load float, ptr %cast_ptr.90, align 4
  %cast_ptr.91 = bitcast ptr %R35 to ptr
  %.1577 = load float, ptr %cast_ptr.91, align 4
  %fmul.27 = fmul float %.1575, %.1576
  %fadd.31 = fadd float %fmul.27, %.1577
  %.1578 = bitcast ptr %R10 to ptr
  store float %fadd.31, ptr %.1578, align 4
  %cast_ptr.92 = bitcast ptr %R16 to ptr
  %.1581 = load float, ptr %cast_ptr.92, align 4
  %cast_ptr.93 = bitcast ptr %R23 to ptr
  %.1582 = load float, ptr %cast_ptr.93, align 4
  %cast_ptr.94 = bitcast ptr %R0 to ptr
  %.1583 = load float, ptr %cast_ptr.94, align 4
  %fmul.28 = fmul float %.1581, %.1582
  %fadd.32 = fadd float %fmul.28, %.1583
  %.1584 = bitcast ptr %R0 to ptr
  store float %fadd.32, ptr %.1584, align 4
  %cast_ptr.95 = bitcast ptr %R23 to ptr
  %.1587 = load float, ptr %cast_ptr.95, align 4
  %cast_ptr.96 = bitcast ptr %R24 to ptr
  %.1588 = load float, ptr %cast_ptr.96, align 4
  %cast_ptr.97 = bitcast ptr %R18 to ptr
  %.1589 = load float, ptr %cast_ptr.97, align 4
  %fmul.29 = fmul float %.1587, %.1588
  %fadd.33 = fadd float %fmul.29, %.1589
  %.1590 = bitcast ptr %R18 to ptr
  store float %fadd.33, ptr %.1590, align 4
  %cast_ptr.98 = bitcast ptr %R23 to ptr
  %.1593 = load float, ptr %cast_ptr.98, align 4
  %cast_ptr.99 = bitcast ptr %R20 to ptr
  %.1594 = load float, ptr %cast_ptr.99, align 4
  %cast_ptr.100 = bitcast ptr %R14 to ptr
  %.1595 = load float, ptr %cast_ptr.100, align 4
  %fmul.30 = fmul float %.1593, %.1594
  %fadd.34 = fadd float %fmul.30, %.1595
  %.1596 = bitcast ptr %R14 to ptr
  store float %fadd.34, ptr %.1596, align 4
  %cast_ptr.101 = bitcast ptr %R23 to ptr
  %.1599 = load float, ptr %cast_ptr.101, align 4
  %cast_ptr.102 = bitcast ptr %R28 to ptr
  %.1600 = load float, ptr %cast_ptr.102, align 4
  %cast_ptr.103 = bitcast ptr %R10 to ptr
  %.1601 = load float, ptr %cast_ptr.103, align 4
  %fmul.31 = fmul float %.1599, %.1600
  %fadd.35 = fadd float %fmul.31, %.1601
  %.1602 = bitcast ptr %R10 to ptr
  store float %fadd.35, ptr %.1602, align 4
  %cast_ptr.104 = bitcast ptr %R30 to ptr
  %.1605 = load float, ptr %cast_ptr.104, align 4
  %cast_ptr.105 = bitcast ptr %R27 to ptr
  %.1606 = load float, ptr %cast_ptr.105, align 4
  %cast_ptr.106 = bitcast ptr %R0 to ptr
  %.1607 = load float, ptr %cast_ptr.106, align 4
  %fmul.32 = fmul float %.1605, %.1606
  %fadd.36 = fadd float %fmul.32, %.1607
  %.1608 = bitcast ptr %R3 to ptr
  store float %fadd.36, ptr %.1608, align 4
  %cast_ptr.107 = bitcast ptr %R27 to ptr
  %.1611 = load float, ptr %cast_ptr.107, align 4
  %cast_ptr.108 = bitcast ptr %R32 to ptr
  %.1612 = load float, ptr %cast_ptr.108, align 4
  %cast_ptr.109 = bitcast ptr %R18 to ptr
  %.1613 = load float, ptr %cast_ptr.109, align 4
  %fmul.33 = fmul float %.1611, %.1612
  %fadd.37 = fadd float %fmul.33, %.1613
  %.1614 = bitcast ptr %R2 to ptr
  store float %fadd.37, ptr %.1614, align 4
  %cast_ptr.110 = bitcast ptr %R27 to ptr
  %.1617 = load float, ptr %cast_ptr.110, align 4
  %cast_ptr.111 = bitcast ptr %R17 to ptr
  %.1618 = load float, ptr %cast_ptr.111, align 4
  %cast_ptr.112 = bitcast ptr %R14 to ptr
  %.1619 = load float, ptr %cast_ptr.112, align 4
  %fmul.34 = fmul float %.1617, %.1618
  %fadd.38 = fadd float %fmul.34, %.1619
  %.1620 = bitcast ptr %R0 to ptr
  store float %fadd.38, ptr %.1620, align 4
  %cast_ptr.113 = bitcast ptr %R27 to ptr
  %.1623 = load float, ptr %cast_ptr.113, align 4
  %cast_ptr.114 = bitcast ptr %R19 to ptr
  %.1624 = load float, ptr %cast_ptr.114, align 4
  %cast_ptr.115 = bitcast ptr %R10 to ptr
  %.1625 = load float, ptr %cast_ptr.115, align 4
  %fmul.35 = fmul float %.1623, %.1624
  %fadd.39 = fadd float %fmul.35, %.1625
  %.1626 = bitcast ptr %R8 to ptr
  store float %fadd.39, ptr %.1626, align 4
  %.1630 = icmp eq i1 %.1524, true
  br i1 %.1630, label %.L_x_6, label %.L_x_5.loopexit

.L_x_5.loopexit:                                  ; preds = %.L_x_6
  br label %.L_x_5

.L_x_5:                                           ; preds = %.L_x_5.loopexit, %.L_x_0_split_0x09f0
  %.1634 = icmp ne i1 %P0.0, true
  br i1 %.1634, label %.L_x_4, label %.L_x_5_split_0x0f80

.L_x_5_split_0x0f80:                              ; preds = %.L_x_5
  %.1637 = load i32, ptr %R22, align 4
  %imad_mul.32 = mul i32 %.1637, %Arg_11
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
  %.1644 = load i32, ptr %R7, align 4
  %.1645 = load i32, ptr %R22, align 4
  %imad_mul.33 = mul i32 %.1644, %Arg_11
  %imad_add.34 = add i32 %imad_mul.33, %.1645
  store i32 %imad_add.34, ptr %R22, align 4
  %zext.136 = zext i32 0 to i64
  %zext.137 = zext i32 %Arg_11 to i64
  %zext.138 = zext i32 2 to i64
  %shl.71 = shl i64 %zext.136, 32
  %or.63 = or i64 %shl.71, %zext.137
  %shl.72 = shl i64 %or.63, %zext.138
  %and.4 = and i64 %shl.72, 4294967295
  %trunc32.38 = trunc i64 %and.4 to i32
  %.1652 = load i32, ptr %R10, align 4
  %.1653 = load i32, ptr %R5, align 4
  %shl.73 = shl i32 %.1652, 2
  %add.125 = add i32 %shl.73, %.1653
  store i32 %add.125, ptr %R5, align 4
  %.1656 = load i32, ptr %R22, align 4
  %.1657 = load i32, ptr %R9, align 4
  %imad_ext1.14 = zext i32 %.1656 to i64
  %imad_ext2.14 = zext i32 %.1657 to i64
  %imad_mul.34 = mul i64 %imad_ext1.14, %imad_ext2.14
  %.1658 = ptrtoint ptr %Arg_1 to i64
  %imad_add.35 = add i64 %imad_mul.34, %.1658
  %.1659 = and i64 %imad_add.35, -4294967296
  %.1660 = lshr i64 %.1659, 32
  %trunc32.39 = trunc i64 %.1660 to i32
  %trunc32.40 = trunc i64 %imad_add.35 to i32
  store i32 %trunc32.40, ptr %R10, align 4
  store i32 %trunc32.39, ptr %R11, align 4
  %.1665 = sub i32 0, %.1048
  %.1666 = add i32 %.1665, 0
  %.1667 = add i32 %.1666, 0
  %zext.139 = zext i32 %trunc32.37 to i64
  %zext.140 = zext i32 %Arg_11 to i64
  %zext.141 = zext i32 2 to i64
  %shl.74 = shl i64 %zext.139, 32
  %or.64 = or i64 %shl.74, %zext.140
  %shl.75 = shl i64 %or.64, %zext.141
  %lshr.3 = lshr i64 %shl.75, 32
  %trunc32.41 = trunc i64 %lshr.3 to i32
  %.1675 = load i32, ptr %R4, align 4
  %nvvm_blockdim_x.2 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %.1676 = load i32, ptr %R5, align 4
  %imad_mul.35 = mul i32 %.1675, %nvvm_blockdim_x.2
  %imad_add.36 = add i32 %imad_mul.35, %.1676
  store i32 %imad_add.36, ptr %R16, align 4
  %.1679 = load i32, ptr %R11, align 4
  %imad_mul.36 = mul i32 0, 0
  %imad_add.37 = add i32 %imad_mul.36, %.1679
  store i32 %imad_add.37, ptr %R19, align 4
  br label %.L_x_7

.L_x_7:                                           ; preds = %.L_x_7, %.L_x_5_split_0x0f80
  %UR6.0 = phi i32 [ %.1667, %.L_x_5_split_0x0f80 ], [ %.1769, %.L_x_7 ]
  %.1683 = load i32, ptr %R16, align 4
  %.1684 = load i32, ptr %R9, align 4
  %imad_ext1.15 = zext i32 %.1683 to i64
  %imad_ext2.15 = zext i32 %.1684 to i64
  %imad_mul.37 = mul i64 %imad_ext1.15, %imad_ext2.15
  %.1685 = ptrtoint ptr %Arg_4 to i64
  %imad_add.38 = add i64 %imad_mul.37, %.1685
  %.1686 = and i64 %imad_add.38, -4294967296
  %.1687 = lshr i64 %.1686, 32
  %trunc32.42 = trunc i64 %.1687 to i32
  %trunc32.43 = trunc i64 %imad_add.38 to i32
  store i32 %trunc32.43, ptr %R4, align 4
  store i32 %trunc32.42, ptr %R5, align 4
  %.1691 = load i32, ptr %R19, align 4
  store i32 %.1691, ptr %R11, align 4
  %.1694 = load i32, ptr %R4, align 4
  %.1696 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1694, i32 %trunc32.38)
  %.1697 = extractvalue { i32, i1 } %.1696, 0
  %.1698 = extractvalue { i32, i1 } %.1696, 1
  %.1699 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1697, i32 0)
  %.1700 = extractvalue { i32, i1 } %.1699, 0
  %.1701 = extractvalue { i32, i1 } %.1699, 1
  %.1702 = or i1 %.1698, %.1701
  store i32 %.1700, ptr %R12, align 4
  %.1709 = load i32, ptr %R4, align 4
  %zext.142 = zext i32 %.1709 to i64
  %.1710 = load i32, ptr %R5, align 4
  %zext.143 = zext i32 %.1710 to i64
  %shl.76 = shl i64 %zext.143, 32
  %or.65 = or i64 %shl.76, %zext.142
  %inttoptr_bytes.53 = inttoptr i64 %or.65 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.1711 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.1712 = bitcast ptr %R4 to ptr
  store float %.1711, ptr %.1712, align 4
  %.1715 = load i32, ptr %R5, align 4
  %.1718 = xor i1 true, true
  %.1719 = zext i1 %.1702 to i32
  %.1720 = zext i1 %.1718 to i32
  %add.126 = add i32 %.1715, %trunc32.41
  %add.127 = add i32 %add.126, 0
  %add.128 = add i32 %add.127, %.1719
  %add.129 = add i32 %add.128, %.1720
  store i32 %add.129, ptr %R13, align 4
  %.1723 = load i32, ptr %R12, align 4
  %.1725 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1723, i32 %trunc32.38)
  %.1726 = extractvalue { i32, i1 } %.1725, 0
  %.1727 = extractvalue { i32, i1 } %.1725, 1
  %.1728 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1726, i32 0)
  %.1729 = extractvalue { i32, i1 } %.1728, 0
  %.1730 = extractvalue { i32, i1 } %.1728, 1
  %.1731 = or i1 %.1727, %.1730
  store i32 %.1729, ptr %R14, align 4
  %.1735 = load i32, ptr %R10, align 4
  %zext.144 = zext i32 %.1735 to i64
  %.1736 = load i32, ptr %R11, align 4
  %zext.145 = zext i32 %.1736 to i64
  %shl.77 = shl i64 %zext.145, 32
  %or.66 = or i64 %shl.77, %zext.144
  %inttoptr_bytes.54 = inttoptr i64 %or.66 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.1737 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.1738 = bitcast ptr %R11 to ptr
  store float %.1737, ptr %.1738, align 4
  %.1741 = load i32, ptr %R13, align 4
  %.1744 = xor i1 true, true
  %.1745 = zext i1 %.1731 to i32
  %.1746 = zext i1 %.1744 to i32
  %add.130 = add i32 %.1741, %trunc32.41
  %add.131 = add i32 %add.130, 0
  %add.132 = add i32 %add.131, %.1745
  %add.133 = add i32 %add.132, %.1746
  store i32 %add.133, ptr %R15, align 4
  %.1749 = load i32, ptr %R12, align 4
  %zext.146 = zext i32 %.1749 to i64
  %.1750 = load i32, ptr %R13, align 4
  %zext.147 = zext i32 %.1750 to i64
  %shl.78 = shl i64 %zext.147, 32
  %or.67 = or i64 %shl.78, %zext.146
  %inttoptr_bytes.55 = inttoptr i64 %or.67 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.1751 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.1752 = bitcast ptr %R12 to ptr
  store float %.1751, ptr %.1752, align 4
  %.1755 = load i32, ptr %R14, align 4
  %zext.148 = zext i32 %.1755 to i64
  %.1756 = load i32, ptr %R15, align 4
  %zext.149 = zext i32 %.1756 to i64
  %shl.79 = shl i64 %zext.149, 32
  %or.68 = or i64 %shl.79, %zext.148
  %inttoptr_bytes.56 = inttoptr i64 %or.68 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.1757 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.1758 = bitcast ptr %R17 to ptr
  store float %.1757, ptr %.1758, align 4
  %.1761 = load i32, ptr %R14, align 4
  %zext.150 = zext i32 %.1761 to i64
  %.1762 = load i32, ptr %R15, align 4
  %zext.151 = zext i32 %.1762 to i64
  %shl.80 = shl i64 %zext.151, 32
  %or.69 = or i64 %shl.80, %zext.150
  %sext_UR4.3 = sext i32 %trunc32.38 to i64
  %base_plus_reg_offset.3 = add i64 %or.69, %sext_UR4.3
  %inttoptr_bytes.57 = inttoptr i64 %base_plus_reg_offset.3 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.1763 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.1764 = bitcast ptr %R18 to ptr
  store float %.1763, ptr %.1764, align 4
  %.1768 = add i32 %UR6.0, 1
  %.1769 = add i32 %.1768, 0
  %cmp.7 = icmp ne i32 0, %.1769
  %.1775 = and i1 %cmp.7, true
  %imad_mul.38 = mul i32 0, 0
  %imad_add.39 = add i32 %imad_mul.38, %Arg_11
  store i32 %imad_add.39, ptr %R21, align 4
  %.1781 = load i32, ptr %R10, align 4
  %.1782 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1781, i32 4)
  %.1783 = extractvalue { i32, i1 } %.1782, 0
  %.1784 = extractvalue { i32, i1 } %.1782, 1
  %.1785 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.1783, i32 0)
  %.1786 = extractvalue { i32, i1 } %.1785, 0
  %.1787 = extractvalue { i32, i1 } %.1785, 1
  %.1788 = or i1 %.1784, %.1787
  store i32 %.1786, ptr %R10, align 4
  %.1792 = load i32, ptr %R21, align 4
  %.1793 = load i32, ptr %R16, align 4
  %shl.81 = shl i32 %.1792, 2
  %add.134 = add i32 %shl.81, %.1793
  store i32 %add.134, ptr %R16, align 4
  %.1796 = load i32, ptr %R19, align 4
  %imad_mul.39 = mul i32 0, 0
  %imad_add.40 = add i32 %imad_mul.39, %.1796
  %imad_ext4 = zext i1 %.1788 to i32
  %imad_add_x = add i32 %imad_add.40, %imad_ext4
  store i32 %imad_add_x, ptr %R19, align 4
  %cast_ptr.116 = bitcast ptr %R4 to ptr
  %.1800 = load float, ptr %cast_ptr.116, align 4
  %cast_ptr.117 = bitcast ptr %R11 to ptr
  %.1801 = load float, ptr %cast_ptr.117, align 4
  %cast_ptr.118 = bitcast ptr %R3 to ptr
  %.1802 = load float, ptr %cast_ptr.118, align 4
  %fmul.36 = fmul float %.1800, %.1801
  %fadd.40 = fadd float %fmul.36, %.1802
  %.1803 = bitcast ptr %R3 to ptr
  store float %fadd.40, ptr %.1803, align 4
  %cast_ptr.119 = bitcast ptr %R11 to ptr
  %.1806 = load float, ptr %cast_ptr.119, align 4
  %cast_ptr.120 = bitcast ptr %R12 to ptr
  %.1807 = load float, ptr %cast_ptr.120, align 4
  %cast_ptr.121 = bitcast ptr %R2 to ptr
  %.1808 = load float, ptr %cast_ptr.121, align 4
  %fmul.37 = fmul float %.1806, %.1807
  %fadd.41 = fadd float %fmul.37, %.1808
  %.1809 = bitcast ptr %R2 to ptr
  store float %fadd.41, ptr %.1809, align 4
  %cast_ptr.122 = bitcast ptr %R11 to ptr
  %.1812 = load float, ptr %cast_ptr.122, align 4
  %cast_ptr.123 = bitcast ptr %R17 to ptr
  %.1813 = load float, ptr %cast_ptr.123, align 4
  %cast_ptr.124 = bitcast ptr %R0 to ptr
  %.1814 = load float, ptr %cast_ptr.124, align 4
  %fmul.38 = fmul float %.1812, %.1813
  %fadd.42 = fadd float %fmul.38, %.1814
  %.1815 = bitcast ptr %R0 to ptr
  store float %fadd.42, ptr %.1815, align 4
  %cast_ptr.125 = bitcast ptr %R11 to ptr
  %.1818 = load float, ptr %cast_ptr.125, align 4
  %cast_ptr.126 = bitcast ptr %R18 to ptr
  %.1819 = load float, ptr %cast_ptr.126, align 4
  %cast_ptr.127 = bitcast ptr %R8 to ptr
  %.1820 = load float, ptr %cast_ptr.127, align 4
  %fmul.39 = fmul float %.1818, %.1819
  %fadd.43 = fadd float %fmul.39, %.1820
  %.1821 = bitcast ptr %R8 to ptr
  store float %fadd.43, ptr %.1821, align 4
  %.1825 = icmp eq i1 %.1775, true
  br i1 %.1825, label %.L_x_7, label %.L_x_4.loopexit

.L_x_4.loopexit:                                  ; preds = %.L_x_7
  br label %.L_x_4

.L_x_4:                                           ; preds = %.L_x_4.loopexit, %.L_x_5, %.L_x_0
  %P0.1 = phi i1 [ %P0.0, %.L_x_0 ], [ %P0.0, %.L_x_5 ], [ %.1775, %.L_x_4.loopexit ]
  %cast_ptr.128 = bitcast ptr %R0 to ptr
  %.1828 = load float, ptr %cast_ptr.128, align 4
  %llvm_fabs_result = call float @llvm.fabs.f32(float %.1828)
  %fcmp_unordered = fcmp oge float %llvm_fabs_result, 0x3FE3333340000000
  %.1831 = and i1 %fcmp_unordered, true
  %.1835 = load i32, ptr %R7, align 4
  %imad_mul.40 = mul i32 %.1835, %Arg_11
  %imad_add.41 = add i32 %imad_mul.40, %imad_add.1
  %.1839 = bitcast ptr %R13 to ptr
  store float 0x41CDDDCC40000000, ptr %.1839, align 4
  %imad_mul.41 = mul i32 0, 0
  %imad_add.42 = add i32 %imad_mul.41, 1132199936
  store i32 %imad_add.42, ptr %R14, align 4
  %.1845 = load i32, ptr %R9, align 4
  %imad_ext1.16 = zext i32 %imad_add.41 to i64
  %imad_ext2.16 = zext i32 %.1845 to i64
  %imad_mul.42 = mul i64 %imad_ext1.16, %imad_ext2.16
  %.1846 = ptrtoint ptr %Arg_2 to i64
  %imad_add.43 = add i64 %imad_mul.42, %.1846
  %.1847 = and i64 %imad_add.43, -4294967296
  %.1848 = lshr i64 %.1847, 32
  %trunc32.44 = trunc i64 %.1848 to i32
  %trunc32.45 = trunc i64 %imad_add.43 to i32
  store i32 %trunc32.45, ptr %R4, align 4
  store i32 %trunc32.44, ptr %R5, align 4
  %cast_ptr.129 = bitcast ptr %R2 to ptr
  %.1852 = load float, ptr %cast_ptr.129, align 4
  %.1853 = fneg float %.1852
  %cast_ptr.130 = bitcast ptr %R13 to ptr
  %.1854 = load float, ptr %cast_ptr.130, align 4
  %fmul.40 = fmul float %.1853, %.1854
  %fadd.44 = fadd float %fmul.40, 5.000000e-01
  %.1855 = bitcast ptr %R7 to ptr
  store float %fadd.44, ptr %.1855, align 4
  %.1859 = icmp eq i1 %.1831, true
  br i1 %.1859, label %.L_x_4_conditionalExpr_0x11f0, label %.L_x_4_split_0x1200

.L_x_4_conditionalExpr_0x11f0:                    ; preds = %.L_x_4
  %cast_ptr.131 = bitcast ptr %R0 to ptr
  %.1862 = load float, ptr %cast_ptr.131, align 4
  %llvm_fabs_result.1 = call float @llvm.fabs.f32(float %.1862)
  %fmul.41 = fmul float %llvm_fabs_result.1, 0x4007154760000000
  %.1863 = bitcast ptr %R11 to ptr
  store float %fmul.41, ptr %.1863, align 4
  br label %.L_x_4_split_0x1200

.L_x_4_split_0x1200:                              ; preds = %.L_x_4_conditionalExpr_0x11f0, %.L_x_4
  %.1868 = load i32, ptr %R4, align 4
  %zext.152 = zext i32 %.1868 to i64
  %.1869 = load i32, ptr %R5, align 4
  %zext.153 = zext i32 %.1869 to i64
  %shl.82 = shl i64 %zext.153, 32
  %or.70 = or i64 %shl.82, %zext.152
  %inttoptr_bytes.58 = inttoptr i64 %or.70 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.1870 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.1871 = bitcast ptr %R4 to ptr
  store float %.1870, ptr %.1871, align 4
  %cast_ptr.132 = bitcast ptr %R7 to ptr
  %.1874 = load float, ptr %cast_ptr.132, align 4
  %cast_ptr.133 = bitcast ptr %R14 to ptr
  %.1875 = load float, ptr %cast_ptr.133, align 4
  %fmul.42 = fmul float %.1874, %.1875
  %fadd.45 = fadd float %fmul.42, 0x4168000020000000
  %.1876 = bitcast ptr %R7 to ptr
  store float %fadd.45, ptr %.1876, align 4
  %.1880 = icmp eq i1 %.1831, true
  br i1 %.1880, label %.L_x_4_split_0x1200_conditionalExpr_0x1220, label %.L_x_4_split_0x1230

.L_x_4_split_0x1200_conditionalExpr_0x1220:       ; preds = %.L_x_4_split_0x1200
  %cast_ptr.134 = bitcast ptr %R0 to ptr
  %.1883 = load float, ptr %cast_ptr.134, align 4
  %llvm_fabs_result.2 = call float @llvm.fabs.f32(float %.1883)
  %fcmp_unordered.1 = fcmp oge float %llvm_fabs_result.2, 0x4022059680000000
  %.1886 = and i1 %fcmp_unordered.1, true
  br label %.L_x_4_split_0x1230

.L_x_4_split_0x1230:                              ; preds = %.L_x_4_split_0x1200_conditionalExpr_0x1220, %.L_x_4_split_0x1200
  %P0.2 = phi i1 [ %.1886, %.L_x_4_split_0x1200_conditionalExpr_0x1220 ], [ %P0.1, %.L_x_4_split_0x1200 ]
  %.1894 = icmp eq i1 %.1831, true
  br i1 %.1894, label %.L_x_4_split_0x1230_conditionalExpr_0x1240, label %.L_x_4_split_0x1250

.L_x_4_split_0x1230_conditionalExpr_0x1240:       ; preds = %.L_x_4_split_0x1230
  %.1897 = bitcast ptr %R16 to ptr
  store float 0x41CFC00000000000, ptr %.1897, align 4
  br label %.L_x_4_split_0x1250

.L_x_4_split_0x1250:                              ; preds = %.L_x_4_split_0x1230_conditionalExpr_0x1240, %.L_x_4_split_0x1230
  %.1903 = icmp eq i1 %.1831, true
  br i1 %.1903, label %.L_x_4_split_0x1250_conditionalExpr_0x1250, label %.L_x_4_split_0x1260

.L_x_4_split_0x1250_conditionalExpr_0x1250:       ; preds = %.L_x_4_split_0x1250
  %cast_ptr.135 = bitcast ptr %R11 to ptr
  %.1906 = load float, ptr %cast_ptr.135, align 4
  %llvm_exp2_f32_result = call float @llvm.exp2.f32(float %.1906)
  %.1907 = bitcast ptr %R11 to ptr
  store float %llvm_exp2_f32_result, ptr %.1907, align 4
  br label %.L_x_4_split_0x1260

.L_x_4_split_0x1260:                              ; preds = %.L_x_4_split_0x1250_conditionalExpr_0x1250, %.L_x_4_split_0x1250
  %cast_ptr.136 = bitcast ptr %R7 to ptr
  %.1912 = load float, ptr %cast_ptr.136, align 4
  %fadd.46 = fadd float %.1912, 0xC168000FE0000000
  %.1913 = bitcast ptr %R9 to ptr
  store float %fadd.46, ptr %.1913, align 4
  %.1917 = load i32, ptr %R7, align 4
  %zext.154 = zext i32 0 to i64
  %zext.155 = zext i32 %.1917 to i64
  %zext.156 = zext i32 23 to i64
  %shl.83 = shl i64 %zext.154, 32
  %or.71 = or i64 %shl.83, %zext.155
  %shl.84 = shl i64 %or.71, %zext.156
  %and.5 = and i64 %shl.84, 4294967295
  %trunc32.46 = trunc i64 %and.5 to i32
  store i32 %trunc32.46, ptr %R7, align 4
  %cast_ptr.137 = bitcast ptr %R8 to ptr
  %.1921 = load float, ptr %cast_ptr.137, align 4
  %.1922 = fneg float %.1921
  %cast_ptr.138 = bitcast ptr %R13 to ptr
  %.1923 = load float, ptr %cast_ptr.138, align 4
  %fmul.43 = fmul float %.1922, %.1923
  %fadd.47 = fadd float %fmul.43, 5.000000e-01
  %.1924 = bitcast ptr %R5 to ptr
  store float %fadd.47, ptr %.1924, align 4
  %cast_ptr.139 = bitcast ptr %R2 to ptr
  %.1927 = load float, ptr %cast_ptr.139, align 4
  %.1928 = fneg float %.1927
  %cast_ptr.140 = bitcast ptr %R9 to ptr
  %.1929 = load float, ptr %cast_ptr.140, align 4
  %.1930 = fneg float %.1929
  %fmul.44 = fmul float %.1928, 0x3FF7154760000000
  %fadd.48 = fadd float %fmul.44, %.1930
  %.1931 = bitcast ptr %R9 to ptr
  store float %fadd.48, ptr %.1931, align 4
  %cast_ptr.141 = bitcast ptr %R2 to ptr
  %.1934 = load float, ptr %cast_ptr.141, align 4
  %.1935 = fneg float %.1934
  %cast_ptr.142 = bitcast ptr %R9 to ptr
  %.1936 = load float, ptr %cast_ptr.142, align 4
  %fmul.45 = fmul float %.1935, 0x3E54AE0C00000000
  %fadd.49 = fadd float %fmul.45, %.1936
  %.1937 = bitcast ptr %R9 to ptr
  store float %fadd.49, ptr %.1937, align 4
  %cast_ptr.143 = bitcast ptr %R3 to ptr
  %.1940 = load float, ptr %cast_ptr.143, align 4
  %.1941 = fneg float %.1940
  %cast_ptr.144 = bitcast ptr %R13 to ptr
  %.1942 = load float, ptr %cast_ptr.144, align 4
  %fmul.46 = fmul float %.1941, %.1942
  %fadd.50 = fadd float %fmul.46, 5.000000e-01
  %.1943 = bitcast ptr %R2 to ptr
  store float %fadd.50, ptr %.1943, align 4
  %cast_ptr.145 = bitcast ptr %R9 to ptr
  %.1946 = load float, ptr %cast_ptr.145, align 4
  %llvm_exp2_f32_result.1 = call float @llvm.exp2.f32(float %.1946)
  %.1947 = bitcast ptr %R12 to ptr
  store float %llvm_exp2_f32_result.1, ptr %.1947, align 4
  %.1951 = icmp eq i1 %.1831, true
  br i1 %.1951, label %.L_x_4_split_0x1260_conditionalExpr_0x12e0, label %.L_x_4_split_0x12f0

.L_x_4_split_0x1260_conditionalExpr_0x12e0:       ; preds = %.L_x_4_split_0x1260
  %cast_ptr.146 = bitcast ptr %R11 to ptr
  %.1954 = load float, ptr %cast_ptr.146, align 4
  %fadd.51 = fadd float %.1954, 1.000000e+00
  %.1955 = bitcast ptr %R13 to ptr
  store float %fadd.51, ptr %.1955, align 4
  br label %.L_x_4_split_0x12f0

.L_x_4_split_0x12f0:                              ; preds = %.L_x_4_split_0x1260_conditionalExpr_0x12e0, %.L_x_4_split_0x1260
  %cast_ptr.147 = bitcast ptr %R2 to ptr
  %.1960 = load float, ptr %cast_ptr.147, align 4
  %cast_ptr.148 = bitcast ptr %R14 to ptr
  %.1961 = load float, ptr %cast_ptr.148, align 4
  %fmul.47 = fmul float %.1960, %.1961
  %fadd.52 = fadd float %fmul.47, 0x4168000020000000
  %.1962 = bitcast ptr %R2 to ptr
  store float %fadd.52, ptr %.1962, align 4
  %cast_ptr.149 = bitcast ptr %R5 to ptr
  %.1965 = load float, ptr %cast_ptr.149, align 4
  %cast_ptr.150 = bitcast ptr %R14 to ptr
  %.1966 = load float, ptr %cast_ptr.150, align 4
  %fmul.48 = fmul float %.1965, %.1966
  %fadd.53 = fadd float %fmul.48, 0x4168000020000000
  %.1967 = bitcast ptr %R14 to ptr
  store float %fadd.53, ptr %.1967, align 4
  %cast_ptr.151 = bitcast ptr %R2 to ptr
  %.1970 = load float, ptr %cast_ptr.151, align 4
  %fadd.54 = fadd float %.1970, 0xC168000FE0000000
  %.1971 = bitcast ptr %R10 to ptr
  store float %fadd.54, ptr %.1971, align 4
  %.1975 = icmp eq i1 %.1831, true
  br i1 %.1975, label %.L_x_4_split_0x12f0_conditionalExpr_0x1320, label %.L_x_4_split_0x1330

.L_x_4_split_0x12f0_conditionalExpr_0x1320:       ; preds = %.L_x_4_split_0x12f0
  %cast_ptr.152 = bitcast ptr %R13 to ptr
  %.1978 = load float, ptr %cast_ptr.152, align 4
  %.1979 = fdiv float 1.000000e+00, %.1978
  %.1980 = bitcast ptr %R13 to ptr
  store float %.1979, ptr %.1980, align 4
  br label %.L_x_4_split_0x1330

.L_x_4_split_0x1330:                              ; preds = %.L_x_4_split_0x12f0_conditionalExpr_0x1320, %.L_x_4_split_0x12f0
  %cast_ptr.153 = bitcast ptr %R14 to ptr
  %.1985 = load float, ptr %cast_ptr.153, align 4
  %fadd.55 = fadd float %.1985, 0xC168000FE0000000
  %.1986 = bitcast ptr %R5 to ptr
  store float %fadd.55, ptr %.1986, align 4
  %.1990 = load i32, ptr %R14, align 4
  %zext.157 = zext i32 0 to i64
  %zext.158 = zext i32 %.1990 to i64
  %zext.159 = zext i32 23 to i64
  %shl.85 = shl i64 %zext.157, 32
  %or.72 = or i64 %shl.85, %zext.158
  %shl.86 = shl i64 %or.72, %zext.159
  %and.6 = and i64 %shl.86, 4294967295
  %trunc32.47 = trunc i64 %and.6 to i32
  store i32 %trunc32.47, ptr %R14, align 4
  %cast_ptr.154 = bitcast ptr %R3 to ptr
  %.1993 = load float, ptr %cast_ptr.154, align 4
  %.1994 = fneg float %.1993
  %cast_ptr.155 = bitcast ptr %R10 to ptr
  %.1995 = load float, ptr %cast_ptr.155, align 4
  %.1996 = fneg float %.1995
  %fmul.49 = fmul float %.1994, 0x3FF7154760000000
  %fadd.56 = fadd float %fmul.49, %.1996
  %.1997 = bitcast ptr %R10 to ptr
  store float %fadd.56, ptr %.1997, align 4
  %cast_ptr.156 = bitcast ptr %R8 to ptr
  %.2000 = load float, ptr %cast_ptr.156, align 4
  %.2001 = fneg float %.2000
  %cast_ptr.157 = bitcast ptr %R5 to ptr
  %.2002 = load float, ptr %cast_ptr.157, align 4
  %.2003 = fneg float %.2002
  %fmul.50 = fmul float %.2001, 0x3FF7154760000000
  %fadd.57 = fadd float %fmul.50, %.2003
  %.2004 = bitcast ptr %R5 to ptr
  store float %fadd.57, ptr %.2004, align 4
  %cast_ptr.158 = bitcast ptr %R3 to ptr
  %.2007 = load float, ptr %cast_ptr.158, align 4
  %.2008 = fneg float %.2007
  %cast_ptr.159 = bitcast ptr %R10 to ptr
  %.2009 = load float, ptr %cast_ptr.159, align 4
  %fmul.51 = fmul float %.2008, 0x3E54AE0C00000000
  %fadd.58 = fadd float %fmul.51, %.2009
  %.2010 = bitcast ptr %R10 to ptr
  store float %fadd.58, ptr %.2010, align 4
  %cast_ptr.160 = bitcast ptr %R7 to ptr
  %.2013 = load float, ptr %cast_ptr.160, align 4
  %cast_ptr.161 = bitcast ptr %R12 to ptr
  %.2014 = load float, ptr %cast_ptr.161, align 4
  %fmul.52 = fmul float %.2013, %.2014
  %fadd.59 = fadd float %fmul.52, 1.000000e+00
  %.2015 = bitcast ptr %R15 to ptr
  store float %fadd.59, ptr %.2015, align 4
  %cast_ptr.162 = bitcast ptr %R8 to ptr
  %.2018 = load float, ptr %cast_ptr.162, align 4
  %.2019 = fneg float %.2018
  %cast_ptr.163 = bitcast ptr %R5 to ptr
  %.2020 = load float, ptr %cast_ptr.163, align 4
  %fmul.53 = fmul float %.2019, 0x3E54AE0C00000000
  %fadd.60 = fadd float %fmul.53, %.2020
  %.2021 = bitcast ptr %R11 to ptr
  store float %fadd.60, ptr %.2021, align 4
  %.2025 = icmp ne i1 %.1831, true
  br i1 %.2025, label %.L_x_4_split_0x1330_conditionalExpr_0x13a0, label %.L_x_4_split_0x13b0

.L_x_4_split_0x1330_conditionalExpr_0x13a0:       ; preds = %.L_x_4_split_0x1330
  %imad_mul.43 = mul i32 0, 0
  %imad_add.44 = add i32 %imad_mul.43, 1015083138
  store i32 %imad_add.44, ptr %R8, align 4
  br label %.L_x_4_split_0x13b0

.L_x_4_split_0x13b0:                              ; preds = %.L_x_4_split_0x1330_conditionalExpr_0x13a0, %.L_x_4_split_0x1330
  %.2032 = load i32, ptr %R15, align 4
  %.2033 = add i32 %.2032, 25165824
  %.2034 = add i32 %.2033, 0
  store i32 %.2034, ptr %R7, align 4
  %.2038 = icmp ne i1 %.1831, true
  br i1 %.2038, label %.L_x_4_split_0x13b0_conditionalExpr_0x13c0, label %.L_x_4_split_0x13d0

.L_x_4_split_0x13b0_conditionalExpr_0x13c0:       ; preds = %.L_x_4_split_0x13b0
  %cast_ptr.164 = bitcast ptr %R0 to ptr
  %.2041 = load float, ptr %cast_ptr.164, align 4
  %cast_ptr.165 = bitcast ptr %R0 to ptr
  %.2042 = load float, ptr %cast_ptr.165, align 4
  %fmul.54 = fmul float %.2041, %.2042
  %.2043 = bitcast ptr %R5 to ptr
  store float %fmul.54, ptr %.2043, align 4
  br label %.L_x_4_split_0x13d0

.L_x_4_split_0x13d0:                              ; preds = %.L_x_4_split_0x13b0_conditionalExpr_0x13c0, %.L_x_4_split_0x13b0
  %cast_ptr.166 = bitcast ptr %R10 to ptr
  %.2048 = load float, ptr %cast_ptr.166, align 4
  %llvm_exp2_f32_result.2 = call float @llvm.exp2.f32(float %.2048)
  %.2049 = bitcast ptr %R3 to ptr
  store float %llvm_exp2_f32_result.2, ptr %.2049, align 4
  %.2053 = icmp eq i1 %.1831, true
  br i1 %.2053, label %.L_x_4_split_0x13d0_conditionalExpr_0x13e0, label %.L_x_4_split_0x13f0

.L_x_4_split_0x13d0_conditionalExpr_0x13e0:       ; preds = %.L_x_4_split_0x13d0
  %cast_ptr.167 = bitcast ptr %R13 to ptr
  %.2056 = load float, ptr %cast_ptr.167, align 4
  %cast_ptr.168 = bitcast ptr %R16 to ptr
  %.2057 = load float, ptr %cast_ptr.168, align 4
  %fmul.55 = fmul float %.2056, -2.000000e+00
  %fadd.61 = fadd float %fmul.55, %.2057
  %.2058 = bitcast ptr %R13 to ptr
  store float %fadd.61, ptr %.2058, align 4
  br label %.L_x_4_split_0x13f0

.L_x_4_split_0x13f0:                              ; preds = %.L_x_4_split_0x13d0_conditionalExpr_0x13e0, %.L_x_4_split_0x13d0
  %.2063 = load i32, ptr %R7, align 4
  %.2065 = and i32 %.2063, 2139095040
  store i32 %.2065, ptr %R9, align 4
  %.2069 = icmp ne i1 %.1831, true
  br i1 %.2069, label %.L_x_4_split_0x13f0_conditionalExpr_0x1400, label %.L_x_4_split_0x1410

.L_x_4_split_0x13f0_conditionalExpr_0x1400:       ; preds = %.L_x_4_split_0x13f0
  %cast_ptr.169 = bitcast ptr %R5 to ptr
  %.2072 = load float, ptr %cast_ptr.169, align 4
  %cast_ptr.170 = bitcast ptr %R8 to ptr
  %.2073 = load float, ptr %cast_ptr.170, align 4
  %fmul.56 = fmul float %.2072, %.2073
  %fadd.62 = fadd float %fmul.56, 0xBFAAC795C0000000
  %.2074 = bitcast ptr %R8 to ptr
  store float %fadd.62, ptr %.2074, align 4
  br label %.L_x_4_split_0x1410

.L_x_4_split_0x1410:                              ; preds = %.L_x_4_split_0x13f0_conditionalExpr_0x1400, %.L_x_4_split_0x13f0
  %.2079 = load i32, ptr %R2, align 4
  %imad_shl.1 = shl i32 %.2079, 8388608
  %imad_add.45 = add i32 %imad_shl.1, 0
  store i32 %imad_add.45, ptr %R2, align 4
  %.2083 = icmp eq i1 %.1831, true
  br i1 %.2083, label %.L_x_4_split_0x1410_conditionalExpr_0x1420, label %.L_x_4_split_0x1430

.L_x_4_split_0x1410_conditionalExpr_0x1420:       ; preds = %.L_x_4_split_0x1410
  %cast_ptr.171 = bitcast ptr %R13 to ptr
  %.2086 = load float, ptr %cast_ptr.171, align 4
  %.2088 = xor i1 %P0.2, true
  %.2089 = icmp eq i1 %.2088, true
  %fsel = select i1 %.2089, float %.2086, float 1.000000e+00
  %.2090 = bitcast ptr %R13 to ptr
  store float %fsel, ptr %.2090, align 4
  br label %.L_x_4_split_0x1430

.L_x_4_split_0x1430:                              ; preds = %.L_x_4_split_0x1410_conditionalExpr_0x1420, %.L_x_4_split_0x1410
  %.2096 = icmp ne i1 %.1831, true
  br i1 %.2096, label %.L_x_4_split_0x1430_conditionalExpr_0x1430, label %.L_x_4_split_0x1440

.L_x_4_split_0x1430_conditionalExpr_0x1430:       ; preds = %.L_x_4_split_0x1430
  %cast_ptr.172 = bitcast ptr %R5 to ptr
  %.2099 = load float, ptr %cast_ptr.172, align 4
  %cast_ptr.173 = bitcast ptr %R8 to ptr
  %.2100 = load float, ptr %cast_ptr.173, align 4
  %fmul.57 = fmul float %.2099, %.2100
  %fadd.63 = fadd float %fmul.57, 0x3FC10B2820000000
  %.2101 = bitcast ptr %R8 to ptr
  store float %fadd.63, ptr %.2101, align 4
  br label %.L_x_4_split_0x1440

.L_x_4_split_0x1440:                              ; preds = %.L_x_4_split_0x1430_conditionalExpr_0x1430, %.L_x_4_split_0x1430
  %cast_ptr.174 = bitcast ptr %R11 to ptr
  %.2106 = load float, ptr %cast_ptr.174, align 4
  %llvm_exp2_f32_result.3 = call float @llvm.exp2.f32(float %.2106)
  %.2107 = bitcast ptr %R11 to ptr
  store float %llvm_exp2_f32_result.3, ptr %.2107, align 4
  %.2110 = load i32, ptr %R9, align 4
  %cmp.8 = icmp sgt i32 %.2110, 33554431
  %.2113 = and i1 %cmp.8, true
  %.2118 = icmp ne i1 %.1831, true
  br i1 %.2118, label %.L_x_4_split_0x1440_conditionalExpr_0x1460, label %.L_x_4_split_0x1470

.L_x_4_split_0x1440_conditionalExpr_0x1460:       ; preds = %.L_x_4_split_0x1440
  %cast_ptr.175 = bitcast ptr %R5 to ptr
  %.2121 = load float, ptr %cast_ptr.175, align 4
  %cast_ptr.176 = bitcast ptr %R8 to ptr
  %.2122 = load float, ptr %cast_ptr.176, align 4
  %fmul.58 = fmul float %.2121, %.2122
  %fadd.64 = fadd float %fmul.58, 0xBFD5553DA0000000
  %.2123 = bitcast ptr %R8 to ptr
  store float %fadd.64, ptr %.2123, align 4
  br label %.L_x_4_split_0x1470

.L_x_4_split_0x1470:                              ; preds = %.L_x_4_split_0x1440_conditionalExpr_0x1460, %.L_x_4_split_0x1440
  %.2129 = icmp eq i1 %.1831, true
  br i1 %.2129, label %.L_x_4_split_0x1470_conditionalExpr_0x1470, label %.L_x_4_split_0x1480

.L_x_4_split_0x1470_conditionalExpr_0x1470:       ; preds = %.L_x_4_split_0x1470
  %.2132 = load i32, ptr %R13, align 4
  %.2133 = load i32, ptr %R0, align 4
  %.2135 = or i32 %.2132, -2147483648
  %.2136 = or i32 %.2132, %.2133
  %.2137 = and i32 %.2135, %.2136
  store i32 %.2137, ptr %R10, align 4
  br label %.L_x_4_split_0x1480

.L_x_4_split_0x1480:                              ; preds = %.L_x_4_split_0x1470_conditionalExpr_0x1470, %.L_x_4_split_0x1470
  %.2143 = icmp ne i1 %.1831, true
  br i1 %.2143, label %.L_x_4_split_0x1480_conditionalExpr_0x1480, label %.L_x_4_split_0x1490

.L_x_4_split_0x1480_conditionalExpr_0x1480:       ; preds = %.L_x_4_split_0x1480
  %cast_ptr.177 = bitcast ptr %R5 to ptr
  %.2146 = load float, ptr %cast_ptr.177, align 4
  %cast_ptr.178 = bitcast ptr %R8 to ptr
  %.2147 = load float, ptr %cast_ptr.178, align 4
  %fmul.59 = fmul float %.2146, %.2147
  %fadd.65 = fadd float %fmul.59, 0.000000e+00
  %.2148 = bitcast ptr %R7 to ptr
  store float %fadd.65, ptr %.2148, align 4
  br label %.L_x_4_split_0x1490

.L_x_4_split_0x1490:                              ; preds = %.L_x_4_split_0x1480_conditionalExpr_0x1480, %.L_x_4_split_0x1480
  %cast_ptr.179 = bitcast ptr %R2 to ptr
  %.2153 = load float, ptr %cast_ptr.179, align 4
  %cast_ptr.180 = bitcast ptr %R3 to ptr
  %.2154 = load float, ptr %cast_ptr.180, align 4
  %fmul.60 = fmul float %.2153, %.2154
  %fadd.66 = fadd float %fmul.60, 1.000000e+00
  %.2155 = bitcast ptr %R2 to ptr
  store float %fadd.66, ptr %.2155, align 4
  %zext.160 = zext i32 %imad_add.41 to i64
  %zext.161 = zext i32 0 to i64
  %zext.162 = zext i32 31 to i64
  %shl.87 = shl i64 %zext.160, 32
  %or.73 = or i64 %shl.87, %zext.161
  %ashr.6 = ashr i64 %or.73, %zext.162
  %ashr.7 = ashr i64 %ashr.6, 32
  %trunc32.48 = trunc i64 %ashr.7 to i32
  store i32 %trunc32.48, ptr %R3, align 4
  %.2163 = icmp ne i1 %.1831, true
  br i1 %.2163, label %.L_x_4_split_0x1490_conditionalExpr_0x14b0, label %.L_x_4_split_0x14c0

.L_x_4_split_0x1490_conditionalExpr_0x14b0:       ; preds = %.L_x_4_split_0x1490
  %cast_ptr.181 = bitcast ptr %R7 to ptr
  %.2166 = load float, ptr %cast_ptr.181, align 4
  %cast_ptr.182 = bitcast ptr %R0 to ptr
  %.2167 = load float, ptr %cast_ptr.182, align 4
  %cast_ptr.183 = bitcast ptr %R0 to ptr
  %.2168 = load float, ptr %cast_ptr.183, align 4
  %fmul.61 = fmul float %.2166, %.2167
  %fadd.67 = fadd float %fmul.61, %.2168
  %.2169 = bitcast ptr %R10 to ptr
  store float %fadd.67, ptr %.2169, align 4
  br label %.L_x_4_split_0x14c0

.L_x_4_split_0x14c0:                              ; preds = %.L_x_4_split_0x1490_conditionalExpr_0x14b0, %.L_x_4_split_0x1490
  %cast_ptr.184 = bitcast ptr %R14 to ptr
  %.2174 = load float, ptr %cast_ptr.184, align 4
  %cast_ptr.185 = bitcast ptr %R11 to ptr
  %.2175 = load float, ptr %cast_ptr.185, align 4
  %fmul.62 = fmul float %.2174, %.2175
  %fadd.68 = fadd float %fmul.62, 1.000000e+00
  %.2176 = bitcast ptr %R5 to ptr
  store float %fadd.68, ptr %.2176, align 4
  %.2180 = icmp eq i1 %.2113, true
  br i1 %.2180, label %.L_x_9, label %.L_x_4_split_0x14e0_CALL_0x1510

.L_x_4_split_0x14e0_CALL_0x1510:                  ; preds = %.L_x_4_split_0x14c0
  store i32 5376, ptr %R14, align 4
  %.2188 = load i32, ptr %R15, align 4
  %zext.163 = zext i32 0 to i64
  %zext.164 = zext i32 %.2188 to i64
  %zext.165 = zext i32 1 to i64
  %shl.88 = shl i64 %zext.163, 32
  %or.74 = or i64 %shl.88, %zext.164
  %shl.89 = shl i64 %or.74, %zext.165
  %and.7 = and i64 %shl.89, 4294967295
  %trunc32.49 = trunc i64 %and.7 to i32
  store i32 %trunc32.49, ptr %R0, align 4
  %.2194 = load i32, ptr %R0, align 4
  %zext.166 = zext i32 %.2194 to i64
  %zext.167 = zext i32 0 to i64
  %zext.168 = zext i32 24 to i64
  %shl.90 = shl i64 %zext.166, 32
  %or.75 = or i64 %shl.90, %zext.167
  %lshr.4 = lshr i64 %or.75, %zext.168
  %lshr.5 = lshr i64 %lshr.4, 32
  %trunc32.50 = trunc i64 %lshr.5 to i32
  store i32 %trunc32.50, ptr %R16, align 4
  %.2197 = load i32, ptr %R16, align 4
  %cmp.9 = icmp ne i32 %.2197, 0
  %.2200 = and i1 %cmp.9, true
  %.2205 = icmp eq i1 %.2200, true
  br i1 %.2205, label %.L_x_21...1, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1": ; preds = %.L_x_4_split_0x14e0_CALL_0x1510
  %.2208 = load i32, ptr %R15, align 4
  %imad_shl.2 = shl i32 %.2208, 2
  %imad_add.46 = add i32 %imad_shl.2, 0
  store i32 %imad_add.46, ptr %R0, align 4
  %.2211 = load i32, ptr %R0, align 4
  %cmp.10 = icmp ne i32 %.2211, 0
  %.2214 = and i1 %cmp.10, true
  %.2219 = icmp eq i1 %.2214, true
  br i1 %.2219, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"
  %cast_ptr.186 = bitcast ptr %R15 to ptr
  %.2222 = load float, ptr %cast_ptr.186, align 4
  %fmul.63 = fmul float %.2222, 0x43F0000000000000
  %fadd.69 = fadd float %fmul.63, 0.000000e+00
  %.2223 = bitcast ptr %R8 to ptr
  store float %fadd.69, ptr %.2223, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"
  %cast_ptr.187 = bitcast ptr %R15 to ptr
  %.2228 = load float, ptr %cast_ptr.187, align 4
  %fmul.64 = fmul float %.2228, 0x43F0000000000000
  %fadd.70 = fadd float %fmul.64, 0.000000e+00
  %.2229 = bitcast ptr %R8 to ptr
  store float %fadd.70, ptr %.2229, align 4
  %.2235 = icmp ne i1 %.2214, true
  br i1 %.2235, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
  %cast_ptr.188 = bitcast ptr %R15 to ptr
  %.2238 = load float, ptr %cast_ptr.188, align 4
  %.2239 = fdiv float 1.000000e+00, %.2238
  %.2240 = bitcast ptr %R0 to ptr
  store float %.2239, ptr %.2240, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
  %cast_ptr.189 = bitcast ptr %R15 to ptr
  %.2245 = load float, ptr %cast_ptr.189, align 4
  %.2246 = fdiv float 1.000000e+00, %.2245
  %.2247 = bitcast ptr %R0 to ptr
  store float %.2246, ptr %.2247, align 4
  %.2253 = icmp eq i1 %.2214, true
  br i1 %.2253, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
  %cast_ptr.190 = bitcast ptr %R8 to ptr
  %.2256 = load float, ptr %cast_ptr.190, align 4
  %.2257 = fdiv float 1.000000e+00, %.2256
  %.2258 = bitcast ptr %R9 to ptr
  store float %.2257, ptr %.2258, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
  %cast_ptr.191 = bitcast ptr %R8 to ptr
  %.2263 = load float, ptr %cast_ptr.191, align 4
  %.2264 = fdiv float 1.000000e+00, %.2263
  %.2265 = bitcast ptr %R9 to ptr
  store float %.2264, ptr %.2265, align 4
  %.2271 = icmp eq i1 %.2214, true
  br i1 %.2271, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
  %cast_ptr.192 = bitcast ptr %R8 to ptr
  %.2274 = load float, ptr %cast_ptr.192, align 4
  %cast_ptr.193 = bitcast ptr %R9 to ptr
  %.2275 = load float, ptr %cast_ptr.193, align 4
  %fmul.65 = fmul float %.2274, %.2275
  %fadd.71 = fadd float %fmul.65, -1.000000e+00
  %.2276 = bitcast ptr %R11 to ptr
  store float %fadd.71, ptr %.2276, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
  %cast_ptr.194 = bitcast ptr %R8 to ptr
  %.2281 = load float, ptr %cast_ptr.194, align 4
  %cast_ptr.195 = bitcast ptr %R9 to ptr
  %.2282 = load float, ptr %cast_ptr.195, align 4
  %fmul.66 = fmul float %.2281, %.2282
  %fadd.72 = fadd float %fmul.66, -1.000000e+00
  %.2283 = bitcast ptr %R11 to ptr
  store float %fadd.72, ptr %.2283, align 4
  %.2289 = icmp eq i1 %.2214, true
  br i1 %.2289, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
  %cast_ptr.196 = bitcast ptr %R11 to ptr
  %.2292 = load float, ptr %cast_ptr.196, align 4
  %.2293 = fneg float %.2292
  %.2294 = call float @llvm.fabs.f32(float %.2293)
  %.2295 = fcmp ogt float %.2294, 0.000000e+00
  %.2296 = fcmp olt float %.2294, 0x3810000000000000
  %.2297 = and i1 %.2295, %.2296
  %.2298 = select i1 %.2297, float 0.000000e+00, float %.2293
  %.2299 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2300 = fcmp ogt float %.2299, 0.000000e+00
  %.2301 = fcmp olt float %.2299, 0x3810000000000000
  %.2302 = and i1 %.2300, %.2301
  %.2303 = select i1 %.2302, float 0.000000e+00, float 0.000000e+00
  %fadd.73 = fadd float %.2298, %.2303
  %.2304 = call float @llvm.fabs.f32(float %fadd.73)
  %.2305 = fcmp ogt float %.2304, 0.000000e+00
  %.2306 = fcmp olt float %.2304, 0x3810000000000000
  %.2307 = and i1 %.2305, %.2306
  %.2308 = select i1 %.2307, float 0.000000e+00, float %fadd.73
  %.2309 = bitcast ptr %R12 to ptr
  store float %.2308, ptr %.2309, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
  %cast_ptr.197 = bitcast ptr %R11 to ptr
  %.2314 = load float, ptr %cast_ptr.197, align 4
  %.2315 = fneg float %.2314
  %.2316 = call float @llvm.fabs.f32(float %.2315)
  %.2317 = fcmp ogt float %.2316, 0.000000e+00
  %.2318 = fcmp olt float %.2316, 0x3810000000000000
  %.2319 = and i1 %.2317, %.2318
  %.2320 = select i1 %.2319, float 0.000000e+00, float %.2315
  %.2321 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2322 = fcmp ogt float %.2321, 0.000000e+00
  %.2323 = fcmp olt float %.2321, 0x3810000000000000
  %.2324 = and i1 %.2322, %.2323
  %.2325 = select i1 %.2324, float 0.000000e+00, float 0.000000e+00
  %fadd.74 = fadd float %.2320, %.2325
  %.2326 = call float @llvm.fabs.f32(float %fadd.74)
  %.2327 = fcmp ogt float %.2326, 0.000000e+00
  %.2328 = fcmp olt float %.2326, 0x3810000000000000
  %.2329 = and i1 %.2327, %.2328
  %.2330 = select i1 %.2329, float 0.000000e+00, float %fadd.74
  %.2331 = bitcast ptr %R12 to ptr
  store float %.2330, ptr %.2331, align 4
  %.2337 = icmp eq i1 %.2214, true
  br i1 %.2337, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
  %cast_ptr.198 = bitcast ptr %R9 to ptr
  %.2340 = load float, ptr %cast_ptr.198, align 4
  %cast_ptr.199 = bitcast ptr %R12 to ptr
  %.2341 = load float, ptr %cast_ptr.199, align 4
  %cast_ptr.200 = bitcast ptr %R9 to ptr
  %.2342 = load float, ptr %cast_ptr.200, align 4
  %fmul.67 = fmul float %.2340, %.2341
  %fadd.75 = fadd float %fmul.67, %.2342
  %.2343 = bitcast ptr %R12 to ptr
  store float %fadd.75, ptr %.2343, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
  %cast_ptr.201 = bitcast ptr %R9 to ptr
  %.2348 = load float, ptr %cast_ptr.201, align 4
  %cast_ptr.202 = bitcast ptr %R12 to ptr
  %.2349 = load float, ptr %cast_ptr.202, align 4
  %cast_ptr.203 = bitcast ptr %R9 to ptr
  %.2350 = load float, ptr %cast_ptr.203, align 4
  %fmul.68 = fmul float %.2348, %.2349
  %fadd.76 = fadd float %fmul.68, %.2350
  %.2351 = bitcast ptr %R12 to ptr
  store float %fadd.76, ptr %.2351, align 4
  %.2357 = icmp eq i1 %.2214, true
  br i1 %.2357, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
  %cast_ptr.204 = bitcast ptr %R12 to ptr
  %.2360 = load float, ptr %cast_ptr.204, align 4
  %fmul.69 = fmul float %.2360, 0x43F0000000000000
  %fadd.77 = fadd float %fmul.69, 0.000000e+00
  %.2361 = bitcast ptr %R0 to ptr
  store float %fadd.77, ptr %.2361, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
  %cast_ptr.205 = bitcast ptr %R12 to ptr
  %.2366 = load float, ptr %cast_ptr.205, align 4
  %fmul.70 = fmul float %.2366, 0x43F0000000000000
  %fadd.78 = fadd float %fmul.70, 0.000000e+00
  %.2367 = bitcast ptr %R0 to ptr
  store float %fadd.78, ptr %.2367, align 4
  br label %.L_x_20...1

.L_x_21...1:                                      ; preds = %.L_x_4_split_0x14e0_CALL_0x1510
  %.2374 = load i32, ptr %R16, align 4
  %.2375 = add i32 %.2374, -253
  %.2376 = add i32 %.2375, 0
  store i32 %.2376, ptr %R18, align 4
  %.2379 = load i32, ptr %R18, align 4
  %cmp.11 = icmp sgt i32 %.2379, 1
  %.2382 = and i1 %cmp.11, true
  %.2387 = icmp eq i1 %.2382, true
  br i1 %.2387, label %.L_x_23...1, label %.L_x_21_split_0x1a90...1

.L_x_21_split_0x1a90...1:                         ; preds = %.L_x_21...1
  %.2390 = load i32, ptr %R15, align 4
  %.2392 = and i32 %.2390, 8388607
  store i32 %.2392, ptr %R0, align 4
  store i32 3, ptr %R13, align 4
  %.2397 = load i32, ptr %R0, align 4
  %.2399 = or i32 %.2397, 1065353216
  store i32 %.2399, ptr %R0, align 4
  %.2404 = load i32, ptr %R13, align 4
  %.2405 = load i32, ptr %R18, align 4
  %zext.169 = zext i32 0 to i64
  %zext.170 = zext i32 %.2404 to i64
  %zext.171 = zext i32 %.2405 to i64
  %shl.91 = shl i64 %zext.169, 32
  %or.76 = or i64 %shl.91, %zext.170
  %shl.92 = shl i64 %or.76, %zext.171
  %and.8 = and i64 %shl.92, 4294967295
  %trunc32.51 = trunc i64 %and.8 to i32
  store i32 %trunc32.51, ptr %R13, align 4
  %.2408 = load i32, ptr %R0, align 4
  %sint_to_f32 = sitofp i32 %.2408 to float
  %.2409 = fdiv float 1.000000e+00, %sint_to_f32
  %.2410 = fptosi float %.2409 to i32
  store i32 %.2410, ptr %R9, align 4
  %cast_ptr.206 = bitcast ptr %R0 to ptr
  %.2413 = load float, ptr %cast_ptr.206, align 4
  %cast_ptr.207 = bitcast ptr %R9 to ptr
  %.2414 = load float, ptr %cast_ptr.207, align 4
  %fmul.71 = fmul float %.2413, %.2414
  %fadd.79 = fadd float %fmul.71, -1.000000e+00
  %.2415 = bitcast ptr %R8 to ptr
  store float %fadd.79, ptr %.2415, align 4
  %cast_ptr.208 = bitcast ptr %R8 to ptr
  %.2418 = load float, ptr %cast_ptr.208, align 4
  %.2419 = fneg float %.2418
  %.2420 = call float @llvm.fabs.f32(float %.2419)
  %.2421 = fcmp ogt float %.2420, 0.000000e+00
  %.2422 = fcmp olt float %.2420, 0x3810000000000000
  %.2423 = and i1 %.2421, %.2422
  %.2424 = select i1 %.2423, float 0.000000e+00, float %.2419
  %.2425 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2426 = fcmp ogt float %.2425, 0.000000e+00
  %.2427 = fcmp olt float %.2425, 0x3810000000000000
  %.2428 = and i1 %.2426, %.2427
  %.2429 = select i1 %.2428, float 0.000000e+00, float 0.000000e+00
  %fadd.80 = fadd float %.2424, %.2429
  %.2430 = call float @llvm.fabs.f32(float %fadd.80)
  %.2431 = fcmp ogt float %.2430, 0.000000e+00
  %.2432 = fcmp olt float %.2430, 0x3810000000000000
  %.2433 = and i1 %.2431, %.2432
  %.2434 = select i1 %.2433, float 0.000000e+00, float %fadd.80
  %.2435 = bitcast ptr %R8 to ptr
  store float %.2434, ptr %.2435, align 4
  %cast_ptr.209 = bitcast ptr %R9 to ptr
  %.2438 = load float, ptr %cast_ptr.209, align 4
  %cast_ptr.210 = bitcast ptr %R8 to ptr
  %.2439 = load float, ptr %cast_ptr.210, align 4
  %cast_ptr.211 = bitcast ptr %R9 to ptr
  %.2440 = load float, ptr %cast_ptr.211, align 4
  %fmul.72 = fmul float %.2438, %.2439
  %fadd.81 = fadd float %fmul.72, %.2440
  %.2441 = bitcast ptr %R11 to ptr
  store float %fadd.81, ptr %.2441, align 4
  %cast_ptr.212 = bitcast ptr %R9 to ptr
  %.2444 = load float, ptr %cast_ptr.212, align 4
  %cast_ptr.213 = bitcast ptr %R8 to ptr
  %.2445 = load float, ptr %cast_ptr.213, align 4
  %cast_ptr.214 = bitcast ptr %R9 to ptr
  %.2446 = load float, ptr %cast_ptr.214, align 4
  %fmul.73 = fmul float %.2444, %.2445
  %fadd.82 = fadd float %fmul.73, %.2446
  %.2447 = bitcast ptr %R12 to ptr
  store float %fadd.82, ptr %.2447, align 4
  %.2450 = load i32, ptr %R11, align 4
  %.2452 = and i32 %.2450, 8388607
  store i32 %.2452, ptr %R8, align 4
  %cast_ptr.215 = bitcast ptr %R11 to ptr
  %.2455 = load float, ptr %cast_ptr.215, align 4
  %cast_ptr.216 = bitcast ptr %R12 to ptr
  %.2456 = load float, ptr %cast_ptr.216, align 4
  %.2458 = call float @llvm.fabs.f32(float %.2455)
  %.2459 = fcmp ogt float %.2458, 0.000000e+00
  %.2460 = fcmp olt float %.2458, 0x3810000000000000
  %.2461 = and i1 %.2459, %.2460
  %.2462 = select i1 %.2461, float 0.000000e+00, float %.2455
  %.2463 = call float @llvm.fabs.f32(float %.2456)
  %.2464 = fcmp ogt float %.2463, 0.000000e+00
  %.2465 = fcmp olt float %.2463, 0x3810000000000000
  %.2466 = and i1 %.2464, %.2465
  %.2467 = select i1 %.2466, float 0.000000e+00, float %.2456
  %fcmp_ordered = fcmp une float %.2462, %.2467
  %.2469 = and i1 %fcmp_ordered, true
  %.2473 = load i32, ptr %R8, align 4
  %.2475 = or i32 %.2473, 8388608
  store i32 %.2475, ptr %R8, align 4
  %.2479 = xor i1 %.2469, true
  %.2480 = icmp eq i1 %.2479, true
  %sel = select i1 %.2480, i32 0, i32 -1
  store i32 %sel, ptr %R9, align 4
  %.2483 = load i32, ptr %R13, align 4
  %.2484 = load i32, ptr %R8, align 4
  %.2486 = and i32 %.2483, %.2484
  store i32 %.2486, ptr %R13, align 4
  %.2489 = load i32, ptr %R9, align 4
  %.2490 = sub i32 0, %.2489
  %imad_mul.44 = mul i32 0, 0
  %imad_add.47 = add i32 %imad_mul.44, %.2490
  store i32 %imad_add.47, ptr %R9, align 4
  %.2495 = load i32, ptr %R13, align 4
  %.2496 = load i32, ptr %R18, align 4
  %zext.172 = zext i32 %.2495 to i64
  %zext.173 = zext i32 0 to i64
  %zext.174 = zext i32 %.2496 to i64
  %shl.93 = shl i64 %zext.172, 32
  %or.77 = or i64 %shl.93, %zext.173
  %lshr.6 = lshr i64 %or.77, %zext.174
  %lshr.7 = lshr i64 %lshr.6, 32
  %trunc32.52 = trunc i64 %lshr.7 to i32
  store i32 %trunc32.52, ptr %R13, align 4
  %.2510 = load i32, ptr %R13, align 4
  %.2512 = and i32 %.2510, 1
  %.2514 = icmp ne i32 %.2512, 0
  %.2524 = load i32, ptr %R16, align 4
  %.2525 = add i32 %.2524, -252
  %.2526 = add i32 %.2525, 0
  store i32 %.2526, ptr %R9, align 4
  %.2534 = load i32, ptr %R15, align 4
  %.2536 = and i32 %.2534, 8388607
  %.2538 = icmp ne i32 %.2536, 0
  %.2542 = xor i1 %.2514, true
  %.2543 = icmp eq i1 %.2542, true
  %sel.1 = select i1 %.2543, i32 0, i32 1
  store i32 %sel.1, ptr %R0, align 4
  %.2546 = load i32, ptr %R0, align 4
  %.2547 = sub i32 0, %.2546
  %.2548 = add i32 %.2547, 0
  %.2549 = add i32 %.2548, 0
  store i32 %.2549, ptr %R0, align 4
  %.2552 = load i32, ptr %R0, align 4
  %cmp.12 = icmp sge i32 %.2552, 0
  %.2555 = and i1 %cmp.12, true
  %.2561 = load i32, ptr %R8, align 4
  %.2562 = load i32, ptr %R9, align 4
  %zext.175 = zext i32 %.2561 to i64
  %zext.176 = zext i32 0 to i64
  %zext.177 = zext i32 %.2562 to i64
  %shl.94 = shl i64 %zext.175, 32
  %or.78 = or i64 %shl.94, %zext.176
  %lshr.8 = lshr i64 %or.78, %zext.177
  %lshr.9 = lshr i64 %lshr.8, 32
  %trunc32.53 = trunc i64 %lshr.9 to i32
  store i32 %trunc32.53, ptr %R0, align 4
  %.2566 = icmp ne i1 %.2555, true
  br i1 %.2566, label %.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30, label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1

.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30:  ; preds = %.L_x_21_split_0x1a90...1
  %.2569 = load i32, ptr %R0, align 4
  %.2570 = add i32 %.2569, 1
  %.2571 = add i32 %.2570, 0
  store i32 %.2571, ptr %R0, align 4
  br label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1

.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1:  ; preds = %.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30, %.L_x_21_split_0x1a90...1
  %.2576 = load i32, ptr %R0, align 4
  %.2577 = add i32 %.2576, 1
  %.2578 = add i32 %.2577, 0
  store i32 %.2578, ptr %R0, align 4
  %.2584 = icmp ne i1 %.2538, true
  br i1 %.2584, label %.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40, label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1

.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40:  ; preds = %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1
  %.2587 = load i32, ptr %R0, align 4
  %imad_shl.3 = shl i32 %.2587, 2
  %imad_add.48 = add i32 %imad_shl.3, 0
  store i32 %imad_add.48, ptr %R0, align 4
  br label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1

.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1:  ; preds = %.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40, %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1
  %.2592 = load i32, ptr %R0, align 4
  %imad_shl.4 = shl i32 %.2592, 2
  %imad_add.49 = add i32 %imad_shl.4, 0
  store i32 %imad_add.49, ptr %R0, align 4
  %.2597 = load i32, ptr %R0, align 4
  %.2598 = load i32, ptr %R15, align 4
  %.2600 = or i32 %.2597, -2147483648
  %.2601 = or i32 %.2597, %.2598
  %.2602 = and i32 %.2600, %.2601
  store i32 %.2602, ptr %R0, align 4
  br label %.L_x_20...1

.L_x_23...1:                                      ; preds = %.L_x_21...1
  %cast_ptr.217 = bitcast ptr %R15 to ptr
  %.2607 = load float, ptr %cast_ptr.217, align 4
  %.2608 = fdiv float 1.000000e+00, %.2607
  %.2609 = bitcast ptr %R0 to ptr
  store float %.2608, ptr %.2609, align 4
  br label %.L_x_20...1

.L_x_20...1:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1", %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1, %.L_x_23...1
  %.2615 = load i32, ptr %R14, align 4
  store i32 %.2615, ptr %R8, align 4
  %imad_mul.45 = mul i32 0, 0
  %imad_add.50 = add i32 %imad_mul.45, 0
  store i32 %imad_add.50, ptr %R9, align 4
  %.2625 = load i32, ptr %R0, align 4
  %imad_mul.46 = mul i32 0, 0
  %imad_add.51 = add i32 %imad_mul.46, %.2625
  store i32 %imad_add.51, ptr %R7, align 4
  br label %.L_x_8

.L_x_9:                                           ; preds = %.L_x_4_split_0x14c0
  %cast_ptr.218 = bitcast ptr %R15 to ptr
  %.2630 = load float, ptr %cast_ptr.218, align 4
  %.2631 = fdiv float 1.000000e+00, %.2630
  %.2632 = bitcast ptr %R7 to ptr
  store float %.2631, ptr %.2632, align 4
  %cast_ptr.219 = bitcast ptr %R15 to ptr
  %.2635 = load float, ptr %cast_ptr.219, align 4
  %cast_ptr.220 = bitcast ptr %R7 to ptr
  %.2636 = load float, ptr %cast_ptr.220, align 4
  %fmul.74 = fmul float %.2635, %.2636
  %fadd.83 = fadd float %fmul.74, -1.000000e+00
  %.2637 = bitcast ptr %R0 to ptr
  store float %fadd.83, ptr %.2637, align 4
  %cast_ptr.221 = bitcast ptr %R0 to ptr
  %.2640 = load float, ptr %cast_ptr.221, align 4
  %.2641 = fneg float %.2640
  %.2642 = call float @llvm.fabs.f32(float %.2641)
  %.2643 = fcmp ogt float %.2642, 0.000000e+00
  %.2644 = fcmp olt float %.2642, 0x3810000000000000
  %.2645 = and i1 %.2643, %.2644
  %.2646 = select i1 %.2645, float 0.000000e+00, float %.2641
  %.2647 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2648 = fcmp ogt float %.2647, 0.000000e+00
  %.2649 = fcmp olt float %.2647, 0x3810000000000000
  %.2650 = and i1 %.2648, %.2649
  %.2651 = select i1 %.2650, float 0.000000e+00, float 0.000000e+00
  %fadd.84 = fadd float %.2646, %.2651
  %.2652 = call float @llvm.fabs.f32(float %fadd.84)
  %.2653 = fcmp ogt float %.2652, 0.000000e+00
  %.2654 = fcmp olt float %.2652, 0x3810000000000000
  %.2655 = and i1 %.2653, %.2654
  %.2656 = select i1 %.2655, float 0.000000e+00, float %fadd.84
  %.2657 = bitcast ptr %R0 to ptr
  store float %.2656, ptr %.2657, align 4
  %cast_ptr.222 = bitcast ptr %R7 to ptr
  %.2660 = load float, ptr %cast_ptr.222, align 4
  %cast_ptr.223 = bitcast ptr %R0 to ptr
  %.2661 = load float, ptr %cast_ptr.223, align 4
  %cast_ptr.224 = bitcast ptr %R7 to ptr
  %.2662 = load float, ptr %cast_ptr.224, align 4
  %fmul.75 = fmul float %.2660, %.2661
  %fadd.85 = fadd float %fmul.75, %.2662
  %.2663 = bitcast ptr %R7 to ptr
  store float %fadd.85, ptr %.2663, align 4
  br label %.L_x_8

.L_x_8:                                           ; preds = %.L_x_20...1, %.L_x_9
  %.2669 = load i32, ptr %R2, align 4
  %.2670 = add i32 %.2669, 25165824
  %.2671 = add i32 %.2670, 0
  store i32 %.2671, ptr %R0, align 4
  %cast_ptr.225 = bitcast ptr %R4 to ptr
  %.2676 = load float, ptr %cast_ptr.225, align 4
  %cast_ptr.226 = bitcast ptr %R7 to ptr
  %.2677 = load float, ptr %cast_ptr.226, align 4
  %fmul.76 = fmul float %.2676, %.2677
  %.2678 = bitcast ptr %R4 to ptr
  store float %fmul.76, ptr %.2678, align 4
  %.2681 = load i32, ptr %R0, align 4
  %.2683 = and i32 %.2681, 2139095040
  store i32 %.2683, ptr %R0, align 4
  %.2686 = load i32, ptr %R0, align 4
  %cmp.13 = icmp sgt i32 %.2686, 33554431
  %.2689 = and i1 %cmp.13, true
  %.2694 = icmp eq i1 %.2689, true
  br i1 %.2694, label %.L_x_12, label %.L_x_8_split_0x15e0_CALL_0x1620

.L_x_8_split_0x15e0_CALL_0x1620:                  ; preds = %.L_x_8
  %cast_ptr.227 = bitcast ptr %R2 to ptr
  %.2697 = load float, ptr %cast_ptr.227, align 4
  %.2698 = bitcast ptr %R15 to ptr
  store float %.2697, ptr %.2698, align 4
  store i32 5648, ptr %R14, align 4
  %.2706 = load i32, ptr %R15, align 4
  %zext.178 = zext i32 0 to i64
  %zext.179 = zext i32 %.2706 to i64
  %zext.180 = zext i32 1 to i64
  %shl.95 = shl i64 %zext.178, 32
  %or.79 = or i64 %shl.95, %zext.179
  %shl.96 = shl i64 %or.79, %zext.180
  %and.9 = and i64 %shl.96, 4294967295
  %trunc32.54 = trunc i64 %and.9 to i32
  store i32 %trunc32.54, ptr %R0, align 4
  %.2712 = load i32, ptr %R0, align 4
  %zext.181 = zext i32 %.2712 to i64
  %zext.182 = zext i32 0 to i64
  %zext.183 = zext i32 24 to i64
  %shl.97 = shl i64 %zext.181, 32
  %or.80 = or i64 %shl.97, %zext.182
  %lshr.10 = lshr i64 %or.80, %zext.183
  %lshr.11 = lshr i64 %lshr.10, 32
  %trunc32.55 = trunc i64 %lshr.11 to i32
  store i32 %trunc32.55, ptr %R16, align 4
  %.2715 = load i32, ptr %R16, align 4
  %cmp.14 = icmp ne i32 %.2715, 0
  %.2718 = and i1 %cmp.14, true
  %.2723 = icmp eq i1 %.2718, true
  br i1 %.2723, label %.L_x_21...2, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2": ; preds = %.L_x_8_split_0x15e0_CALL_0x1620
  %.2726 = load i32, ptr %R15, align 4
  %imad_shl.5 = shl i32 %.2726, 2
  %imad_add.52 = add i32 %imad_shl.5, 0
  store i32 %imad_add.52, ptr %R0, align 4
  %.2729 = load i32, ptr %R0, align 4
  %cmp.15 = icmp ne i32 %.2729, 0
  %.2732 = and i1 %cmp.15, true
  %.2737 = icmp eq i1 %.2732, true
  br i1 %.2737, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"
  %cast_ptr.228 = bitcast ptr %R15 to ptr
  %.2740 = load float, ptr %cast_ptr.228, align 4
  %fmul.77 = fmul float %.2740, 0x43F0000000000000
  %fadd.86 = fadd float %fmul.77, 0.000000e+00
  %.2741 = bitcast ptr %R8 to ptr
  store float %fadd.86, ptr %.2741, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"
  %cast_ptr.229 = bitcast ptr %R15 to ptr
  %.2746 = load float, ptr %cast_ptr.229, align 4
  %fmul.78 = fmul float %.2746, 0x43F0000000000000
  %fadd.87 = fadd float %fmul.78, 0.000000e+00
  %.2747 = bitcast ptr %R8 to ptr
  store float %fadd.87, ptr %.2747, align 4
  %.2753 = icmp ne i1 %.2732, true
  br i1 %.2753, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"
  %.2756 = load i32, ptr %R15, align 4
  %sint_to_f32.1 = sitofp i32 %.2756 to float
  %.2757 = fdiv float 1.000000e+00, %sint_to_f32.1
  %.2758 = fptosi float %.2757 to i32
  store i32 %.2758, ptr %R0, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"
  %.2763 = load i32, ptr %R15, align 4
  %sint_to_f32.2 = sitofp i32 %.2763 to float
  %.2764 = fdiv float 1.000000e+00, %sint_to_f32.2
  %.2765 = fptosi float %.2764 to i32
  store i32 %.2765, ptr %R0, align 4
  %.2771 = icmp eq i1 %.2732, true
  br i1 %.2771, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
  %cast_ptr.230 = bitcast ptr %R8 to ptr
  %.2774 = load float, ptr %cast_ptr.230, align 4
  %.2775 = fdiv float 1.000000e+00, %.2774
  %.2776 = bitcast ptr %R9 to ptr
  store float %.2775, ptr %.2776, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
  %cast_ptr.231 = bitcast ptr %R8 to ptr
  %.2781 = load float, ptr %cast_ptr.231, align 4
  %.2782 = fdiv float 1.000000e+00, %.2781
  %.2783 = bitcast ptr %R9 to ptr
  store float %.2782, ptr %.2783, align 4
  %.2789 = icmp eq i1 %.2732, true
  br i1 %.2789, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
  %cast_ptr.232 = bitcast ptr %R8 to ptr
  %.2792 = load float, ptr %cast_ptr.232, align 4
  %cast_ptr.233 = bitcast ptr %R9 to ptr
  %.2793 = load float, ptr %cast_ptr.233, align 4
  %fmul.79 = fmul float %.2792, %.2793
  %fadd.88 = fadd float %fmul.79, -1.000000e+00
  %.2794 = bitcast ptr %R11 to ptr
  store float %fadd.88, ptr %.2794, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
  %cast_ptr.234 = bitcast ptr %R8 to ptr
  %.2799 = load float, ptr %cast_ptr.234, align 4
  %cast_ptr.235 = bitcast ptr %R9 to ptr
  %.2800 = load float, ptr %cast_ptr.235, align 4
  %fmul.80 = fmul float %.2799, %.2800
  %fadd.89 = fadd float %fmul.80, -1.000000e+00
  %.2801 = bitcast ptr %R11 to ptr
  store float %fadd.89, ptr %.2801, align 4
  %.2807 = icmp eq i1 %.2732, true
  br i1 %.2807, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
  %cast_ptr.236 = bitcast ptr %R11 to ptr
  %.2810 = load float, ptr %cast_ptr.236, align 4
  %.2811 = fneg float %.2810
  %.2812 = call float @llvm.fabs.f32(float %.2811)
  %.2813 = fcmp ogt float %.2812, 0.000000e+00
  %.2814 = fcmp olt float %.2812, 0x3810000000000000
  %.2815 = and i1 %.2813, %.2814
  %.2816 = select i1 %.2815, float 0.000000e+00, float %.2811
  %.2817 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2818 = fcmp ogt float %.2817, 0.000000e+00
  %.2819 = fcmp olt float %.2817, 0x3810000000000000
  %.2820 = and i1 %.2818, %.2819
  %.2821 = select i1 %.2820, float 0.000000e+00, float 0.000000e+00
  %fadd.90 = fadd float %.2816, %.2821
  %.2822 = call float @llvm.fabs.f32(float %fadd.90)
  %.2823 = fcmp ogt float %.2822, 0.000000e+00
  %.2824 = fcmp olt float %.2822, 0x3810000000000000
  %.2825 = and i1 %.2823, %.2824
  %.2826 = select i1 %.2825, float 0.000000e+00, float %fadd.90
  %.2827 = bitcast ptr %R12 to ptr
  store float %.2826, ptr %.2827, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
  %cast_ptr.237 = bitcast ptr %R11 to ptr
  %.2832 = load float, ptr %cast_ptr.237, align 4
  %.2833 = fneg float %.2832
  %.2834 = call float @llvm.fabs.f32(float %.2833)
  %.2835 = fcmp ogt float %.2834, 0.000000e+00
  %.2836 = fcmp olt float %.2834, 0x3810000000000000
  %.2837 = and i1 %.2835, %.2836
  %.2838 = select i1 %.2837, float 0.000000e+00, float %.2833
  %.2839 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2840 = fcmp ogt float %.2839, 0.000000e+00
  %.2841 = fcmp olt float %.2839, 0x3810000000000000
  %.2842 = and i1 %.2840, %.2841
  %.2843 = select i1 %.2842, float 0.000000e+00, float 0.000000e+00
  %fadd.91 = fadd float %.2838, %.2843
  %.2844 = call float @llvm.fabs.f32(float %fadd.91)
  %.2845 = fcmp ogt float %.2844, 0.000000e+00
  %.2846 = fcmp olt float %.2844, 0x3810000000000000
  %.2847 = and i1 %.2845, %.2846
  %.2848 = select i1 %.2847, float 0.000000e+00, float %fadd.91
  %.2849 = bitcast ptr %R12 to ptr
  store float %.2848, ptr %.2849, align 4
  %.2855 = icmp eq i1 %.2732, true
  br i1 %.2855, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
  %cast_ptr.238 = bitcast ptr %R9 to ptr
  %.2858 = load float, ptr %cast_ptr.238, align 4
  %cast_ptr.239 = bitcast ptr %R12 to ptr
  %.2859 = load float, ptr %cast_ptr.239, align 4
  %cast_ptr.240 = bitcast ptr %R9 to ptr
  %.2860 = load float, ptr %cast_ptr.240, align 4
  %fmul.81 = fmul float %.2858, %.2859
  %fadd.92 = fadd float %fmul.81, %.2860
  %.2861 = bitcast ptr %R12 to ptr
  store float %fadd.92, ptr %.2861, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
  %cast_ptr.241 = bitcast ptr %R9 to ptr
  %.2866 = load float, ptr %cast_ptr.241, align 4
  %cast_ptr.242 = bitcast ptr %R12 to ptr
  %.2867 = load float, ptr %cast_ptr.242, align 4
  %cast_ptr.243 = bitcast ptr %R9 to ptr
  %.2868 = load float, ptr %cast_ptr.243, align 4
  %fmul.82 = fmul float %.2866, %.2867
  %fadd.93 = fadd float %fmul.82, %.2868
  %.2869 = bitcast ptr %R12 to ptr
  store float %fadd.93, ptr %.2869, align 4
  %.2875 = icmp eq i1 %.2732, true
  br i1 %.2875, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
  %cast_ptr.244 = bitcast ptr %R12 to ptr
  %.2878 = load float, ptr %cast_ptr.244, align 4
  %fmul.83 = fmul float %.2878, 0x43F0000000000000
  %fadd.94 = fadd float %fmul.83, 0.000000e+00
  %.2879 = bitcast ptr %R0 to ptr
  store float %fadd.94, ptr %.2879, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
  %cast_ptr.245 = bitcast ptr %R12 to ptr
  %.2884 = load float, ptr %cast_ptr.245, align 4
  %fmul.84 = fmul float %.2884, 0x43F0000000000000
  %fadd.95 = fadd float %fmul.84, 0.000000e+00
  %.2885 = bitcast ptr %R0 to ptr
  store float %fadd.95, ptr %.2885, align 4
  br label %.L_x_20...2

.L_x_21...2:                                      ; preds = %.L_x_8_split_0x15e0_CALL_0x1620
  %.2892 = load i32, ptr %R16, align 4
  %.2893 = add i32 %.2892, -253
  %.2894 = add i32 %.2893, 0
  store i32 %.2894, ptr %R18, align 4
  %.2897 = load i32, ptr %R18, align 4
  %cmp.16 = icmp sgt i32 %.2897, 1
  %.2900 = and i1 %cmp.16, true
  %.2905 = icmp eq i1 %.2900, true
  br i1 %.2905, label %.L_x_23...2, label %.L_x_21_split_0x1a90...2

.L_x_21_split_0x1a90...2:                         ; preds = %.L_x_21...2
  %.2908 = load i32, ptr %R15, align 4
  %.2910 = and i32 %.2908, 8388607
  store i32 %.2910, ptr %R0, align 4
  store i32 3, ptr %R13, align 4
  %.2915 = load i32, ptr %R0, align 4
  %.2917 = or i32 %.2915, 1065353216
  store i32 %.2917, ptr %R0, align 4
  %.2922 = load i32, ptr %R13, align 4
  %.2923 = load i32, ptr %R18, align 4
  %zext.184 = zext i32 0 to i64
  %zext.185 = zext i32 %.2922 to i64
  %zext.186 = zext i32 %.2923 to i64
  %shl.98 = shl i64 %zext.184, 32
  %or.81 = or i64 %shl.98, %zext.185
  %shl.99 = shl i64 %or.81, %zext.186
  %and.10 = and i64 %shl.99, 4294967295
  %trunc32.56 = trunc i64 %and.10 to i32
  store i32 %trunc32.56, ptr %R13, align 4
  %.2926 = load i32, ptr %R0, align 4
  %sint_to_f32.3 = sitofp i32 %.2926 to float
  %.2927 = fdiv float 1.000000e+00, %sint_to_f32.3
  %.2928 = fptosi float %.2927 to i32
  store i32 %.2928, ptr %R9, align 4
  %cast_ptr.246 = bitcast ptr %R0 to ptr
  %.2931 = load float, ptr %cast_ptr.246, align 4
  %cast_ptr.247 = bitcast ptr %R9 to ptr
  %.2932 = load float, ptr %cast_ptr.247, align 4
  %fmul.85 = fmul float %.2931, %.2932
  %fadd.96 = fadd float %fmul.85, -1.000000e+00
  %.2933 = bitcast ptr %R8 to ptr
  store float %fadd.96, ptr %.2933, align 4
  %cast_ptr.248 = bitcast ptr %R8 to ptr
  %.2936 = load float, ptr %cast_ptr.248, align 4
  %.2937 = fneg float %.2936
  %.2938 = call float @llvm.fabs.f32(float %.2937)
  %.2939 = fcmp ogt float %.2938, 0.000000e+00
  %.2940 = fcmp olt float %.2938, 0x3810000000000000
  %.2941 = and i1 %.2939, %.2940
  %.2942 = select i1 %.2941, float 0.000000e+00, float %.2937
  %.2943 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.2944 = fcmp ogt float %.2943, 0.000000e+00
  %.2945 = fcmp olt float %.2943, 0x3810000000000000
  %.2946 = and i1 %.2944, %.2945
  %.2947 = select i1 %.2946, float 0.000000e+00, float 0.000000e+00
  %fadd.97 = fadd float %.2942, %.2947
  %.2948 = call float @llvm.fabs.f32(float %fadd.97)
  %.2949 = fcmp ogt float %.2948, 0.000000e+00
  %.2950 = fcmp olt float %.2948, 0x3810000000000000
  %.2951 = and i1 %.2949, %.2950
  %.2952 = select i1 %.2951, float 0.000000e+00, float %fadd.97
  %.2953 = bitcast ptr %R8 to ptr
  store float %.2952, ptr %.2953, align 4
  %cast_ptr.249 = bitcast ptr %R9 to ptr
  %.2956 = load float, ptr %cast_ptr.249, align 4
  %cast_ptr.250 = bitcast ptr %R8 to ptr
  %.2957 = load float, ptr %cast_ptr.250, align 4
  %cast_ptr.251 = bitcast ptr %R9 to ptr
  %.2958 = load float, ptr %cast_ptr.251, align 4
  %fmul.86 = fmul float %.2956, %.2957
  %fadd.98 = fadd float %fmul.86, %.2958
  %.2959 = bitcast ptr %R11 to ptr
  store float %fadd.98, ptr %.2959, align 4
  %cast_ptr.252 = bitcast ptr %R9 to ptr
  %.2962 = load float, ptr %cast_ptr.252, align 4
  %cast_ptr.253 = bitcast ptr %R8 to ptr
  %.2963 = load float, ptr %cast_ptr.253, align 4
  %cast_ptr.254 = bitcast ptr %R9 to ptr
  %.2964 = load float, ptr %cast_ptr.254, align 4
  %fmul.87 = fmul float %.2962, %.2963
  %fadd.99 = fadd float %fmul.87, %.2964
  %.2965 = bitcast ptr %R12 to ptr
  store float %fadd.99, ptr %.2965, align 4
  %.2968 = load i32, ptr %R11, align 4
  %.2970 = and i32 %.2968, 8388607
  store i32 %.2970, ptr %R8, align 4
  %cast_ptr.255 = bitcast ptr %R11 to ptr
  %.2973 = load float, ptr %cast_ptr.255, align 4
  %cast_ptr.256 = bitcast ptr %R12 to ptr
  %.2974 = load float, ptr %cast_ptr.256, align 4
  %.2976 = call float @llvm.fabs.f32(float %.2973)
  %.2977 = fcmp ogt float %.2976, 0.000000e+00
  %.2978 = fcmp olt float %.2976, 0x3810000000000000
  %.2979 = and i1 %.2977, %.2978
  %.2980 = select i1 %.2979, float 0.000000e+00, float %.2973
  %.2981 = call float @llvm.fabs.f32(float %.2974)
  %.2982 = fcmp ogt float %.2981, 0.000000e+00
  %.2983 = fcmp olt float %.2981, 0x3810000000000000
  %.2984 = and i1 %.2982, %.2983
  %.2985 = select i1 %.2984, float 0.000000e+00, float %.2974
  %fcmp_ordered.1 = fcmp une float %.2980, %.2985
  %.2987 = and i1 %fcmp_ordered.1, true
  %.2991 = load i32, ptr %R8, align 4
  %.2993 = or i32 %.2991, 8388608
  store i32 %.2993, ptr %R8, align 4
  %.2997 = xor i1 %.2987, true
  %.2998 = icmp eq i1 %.2997, true
  %sel.2 = select i1 %.2998, i32 0, i32 -1
  store i32 %sel.2, ptr %R9, align 4
  %.3001 = load i32, ptr %R13, align 4
  %.3002 = load i32, ptr %R8, align 4
  %.3004 = and i32 %.3001, %.3002
  store i32 %.3004, ptr %R13, align 4
  %.3007 = load i32, ptr %R9, align 4
  %.3008 = sub i32 0, %.3007
  %imad_mul.47 = mul i32 0, 0
  %imad_add.53 = add i32 %imad_mul.47, %.3008
  store i32 %imad_add.53, ptr %R9, align 4
  %.3013 = load i32, ptr %R13, align 4
  %.3014 = load i32, ptr %R18, align 4
  %zext.187 = zext i32 %.3013 to i64
  %zext.188 = zext i32 0 to i64
  %zext.189 = zext i32 %.3014 to i64
  %shl.100 = shl i64 %zext.187, 32
  %or.82 = or i64 %shl.100, %zext.188
  %lshr.12 = lshr i64 %or.82, %zext.189
  %lshr.13 = lshr i64 %lshr.12, 32
  %trunc32.57 = trunc i64 %lshr.13 to i32
  store i32 %trunc32.57, ptr %R13, align 4
  %.3028 = load i32, ptr %R13, align 4
  %.3030 = and i32 %.3028, 1
  %.3032 = icmp ne i32 %.3030, 0
  %.3042 = load i32, ptr %R16, align 4
  %.3043 = add i32 %.3042, -252
  %.3044 = add i32 %.3043, 0
  store i32 %.3044, ptr %R9, align 4
  %.3052 = load i32, ptr %R15, align 4
  %.3054 = and i32 %.3052, 8388607
  %.3056 = icmp ne i32 %.3054, 0
  %.3060 = xor i1 %.3032, true
  %.3061 = icmp eq i1 %.3060, true
  %sel.3 = select i1 %.3061, i32 0, i32 1
  store i32 %sel.3, ptr %R0, align 4
  %.3064 = load i32, ptr %R0, align 4
  %.3065 = sub i32 0, %.3064
  %.3066 = add i32 %.3065, 0
  %.3067 = add i32 %.3066, 0
  store i32 %.3067, ptr %R0, align 4
  %.3070 = load i32, ptr %R0, align 4
  %cmp.17 = icmp sge i32 %.3070, 0
  %.3073 = and i1 %cmp.17, true
  %.3079 = load i32, ptr %R8, align 4
  %.3080 = load i32, ptr %R9, align 4
  %zext.190 = zext i32 %.3079 to i64
  %zext.191 = zext i32 0 to i64
  %zext.192 = zext i32 %.3080 to i64
  %shl.101 = shl i64 %zext.190, 32
  %or.83 = or i64 %shl.101, %zext.191
  %lshr.14 = lshr i64 %or.83, %zext.192
  %lshr.15 = lshr i64 %lshr.14, 32
  %trunc32.58 = trunc i64 %lshr.15 to i32
  store i32 %trunc32.58, ptr %R0, align 4
  %.3084 = icmp ne i1 %.3073, true
  br i1 %.3084, label %.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30, label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2

.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30:  ; preds = %.L_x_21_split_0x1a90...2
  %.3087 = load i32, ptr %R0, align 4
  %.3088 = add i32 %.3087, 1
  %.3089 = add i32 %.3088, 0
  store i32 %.3089, ptr %R0, align 4
  br label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2

.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2:  ; preds = %.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30, %.L_x_21_split_0x1a90...2
  %.3094 = load i32, ptr %R0, align 4
  %.3095 = add i32 %.3094, 1
  %.3096 = add i32 %.3095, 0
  store i32 %.3096, ptr %R0, align 4
  %.3102 = icmp ne i1 %.3056, true
  br i1 %.3102, label %.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40, label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2

.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40:  ; preds = %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2
  %.3105 = load i32, ptr %R0, align 4
  %imad_shl.6 = shl i32 %.3105, 2
  %imad_add.54 = add i32 %imad_shl.6, 0
  store i32 %imad_add.54, ptr %R0, align 4
  br label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2

.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2:  ; preds = %.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40, %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2
  %.3110 = load i32, ptr %R0, align 4
  %imad_shl.7 = shl i32 %.3110, 2
  %imad_add.55 = add i32 %imad_shl.7, 0
  store i32 %imad_add.55, ptr %R0, align 4
  %.3115 = load i32, ptr %R0, align 4
  %.3116 = load i32, ptr %R15, align 4
  %.3118 = or i32 %.3115, -2147483648
  %.3119 = or i32 %.3115, %.3116
  %.3120 = and i32 %.3118, %.3119
  store i32 %.3120, ptr %R0, align 4
  br label %.L_x_20...2

.L_x_23...2:                                      ; preds = %.L_x_21...2
  %.3125 = load i32, ptr %R15, align 4
  %sint_to_f32.4 = sitofp i32 %.3125 to float
  %.3126 = fdiv float 1.000000e+00, %sint_to_f32.4
  %.3127 = fptosi float %.3126 to i32
  store i32 %.3127, ptr %R0, align 4
  br label %.L_x_20...2

.L_x_20...2:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2", %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2, %.L_x_23...2
  %.3133 = load i32, ptr %R14, align 4
  store i32 %.3133, ptr %R8, align 4
  %imad_mul.48 = mul i32 0, 0
  %imad_add.56 = add i32 %imad_mul.48, 0
  store i32 %imad_add.56, ptr %R9, align 4
  %.3143 = load i32, ptr %R0, align 4
  %imad_mul.49 = mul i32 0, 0
  %imad_add.57 = add i32 %imad_mul.49, %.3143
  store i32 %imad_add.57, ptr %R7, align 4
  br label %.L_x_11

.L_x_12:                                          ; preds = %.L_x_8
  %cast_ptr.257 = bitcast ptr %R2 to ptr
  %.3148 = load float, ptr %cast_ptr.257, align 4
  %.3149 = fdiv float 1.000000e+00, %.3148
  %.3150 = bitcast ptr %R7 to ptr
  store float %.3149, ptr %.3150, align 4
  %cast_ptr.258 = bitcast ptr %R2 to ptr
  %.3153 = load float, ptr %cast_ptr.258, align 4
  %cast_ptr.259 = bitcast ptr %R7 to ptr
  %.3154 = load float, ptr %cast_ptr.259, align 4
  %fmul.88 = fmul float %.3153, %.3154
  %fadd.100 = fadd float %fmul.88, -1.000000e+00
  %.3155 = bitcast ptr %R0 to ptr
  store float %fadd.100, ptr %.3155, align 4
  %cast_ptr.260 = bitcast ptr %R0 to ptr
  %.3158 = load float, ptr %cast_ptr.260, align 4
  %.3159 = fneg float %.3158
  %.3160 = call float @llvm.fabs.f32(float %.3159)
  %.3161 = fcmp ogt float %.3160, 0.000000e+00
  %.3162 = fcmp olt float %.3160, 0x3810000000000000
  %.3163 = and i1 %.3161, %.3162
  %.3164 = select i1 %.3163, float 0.000000e+00, float %.3159
  %.3165 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.3166 = fcmp ogt float %.3165, 0.000000e+00
  %.3167 = fcmp olt float %.3165, 0x3810000000000000
  %.3168 = and i1 %.3166, %.3167
  %.3169 = select i1 %.3168, float 0.000000e+00, float 0.000000e+00
  %fadd.101 = fadd float %.3164, %.3169
  %.3170 = call float @llvm.fabs.f32(float %fadd.101)
  %.3171 = fcmp ogt float %.3170, 0.000000e+00
  %.3172 = fcmp olt float %.3170, 0x3810000000000000
  %.3173 = and i1 %.3171, %.3172
  %.3174 = select i1 %.3173, float 0.000000e+00, float %fadd.101
  %.3175 = bitcast ptr %R0 to ptr
  store float %.3174, ptr %.3175, align 4
  %cast_ptr.261 = bitcast ptr %R7 to ptr
  %.3178 = load float, ptr %cast_ptr.261, align 4
  %cast_ptr.262 = bitcast ptr %R0 to ptr
  %.3179 = load float, ptr %cast_ptr.262, align 4
  %cast_ptr.263 = bitcast ptr %R7 to ptr
  %.3180 = load float, ptr %cast_ptr.263, align 4
  %fmul.89 = fmul float %.3178, %.3179
  %fadd.102 = fadd float %fmul.89, %.3180
  %.3181 = bitcast ptr %R7 to ptr
  store float %fadd.102, ptr %.3181, align 4
  br label %.L_x_11

.L_x_11:                                          ; preds = %.L_x_20...2, %.L_x_12
  %cast_ptr.264 = bitcast ptr %R7 to ptr
  %.3187 = load float, ptr %cast_ptr.264, align 4
  %cast_ptr.265 = bitcast ptr %R10 to ptr
  %.3188 = load float, ptr %cast_ptr.265, align 4
  %cast_ptr.266 = bitcast ptr %R4 to ptr
  %.3189 = load float, ptr %cast_ptr.266, align 4
  %fmul.90 = fmul float %.3187, %.3188
  %fadd.103 = fadd float %fmul.90, %.3189
  %.3190 = bitcast ptr %R9 to ptr
  store float %fadd.103, ptr %.3190, align 4
  %cast_ptr.267 = bitcast ptr %R9 to ptr
  %.3195 = load float, ptr %cast_ptr.267, align 4
  %llvm_fabs_result.3 = call float @llvm.fabs.f32(float %.3195)
  %fcmp_unordered.2 = fcmp oge float %llvm_fabs_result.3, 0x3FE3333340000000
  %.3198 = and i1 %fcmp_unordered.2, true
  %.3203 = icmp ne i1 %.3198, true
  br i1 %.3203, label %.L_x_15, label %.L_x_11_split_0x16d0

.L_x_11_split_0x16d0:                             ; preds = %.L_x_11
  %cast_ptr.268 = bitcast ptr %R9 to ptr
  %.3206 = load float, ptr %cast_ptr.268, align 4
  %llvm_fabs_result.4 = call float @llvm.fabs.f32(float %.3206)
  %fmul.91 = fmul float %llvm_fabs_result.4, 0x4007154760000000
  %.3207 = bitcast ptr %R0 to ptr
  store float %fmul.91, ptr %.3207, align 4
  %.3210 = bitcast ptr %R7 to ptr
  store float 0x41CFC00000000000, ptr %.3210, align 4
  %cast_ptr.269 = bitcast ptr %R9 to ptr
  %.3213 = load float, ptr %cast_ptr.269, align 4
  %llvm_fabs_result.5 = call float @llvm.fabs.f32(float %.3213)
  %fcmp_unordered.3 = fcmp oge float %llvm_fabs_result.5, 0x4022059680000000
  %.3216 = and i1 %fcmp_unordered.3, true
  %cast_ptr.270 = bitcast ptr %R0 to ptr
  %.3220 = load float, ptr %cast_ptr.270, align 4
  %llvm_exp2_f32_result.4 = call float @llvm.exp2.f32(float %.3220)
  %.3221 = bitcast ptr %R0 to ptr
  store float %llvm_exp2_f32_result.4, ptr %.3221, align 4
  %cast_ptr.271 = bitcast ptr %R0 to ptr
  %.3224 = load float, ptr %cast_ptr.271, align 4
  %fadd.104 = fadd float %.3224, 1.000000e+00
  %.3225 = bitcast ptr %R2 to ptr
  store float %fadd.104, ptr %.3225, align 4
  %cast_ptr.272 = bitcast ptr %R2 to ptr
  %.3228 = load float, ptr %cast_ptr.272, align 4
  %.3229 = fdiv float 1.000000e+00, %.3228
  %.3230 = bitcast ptr %R2 to ptr
  store float %.3229, ptr %.3230, align 4
  %cast_ptr.273 = bitcast ptr %R2 to ptr
  %.3233 = load float, ptr %cast_ptr.273, align 4
  %cast_ptr.274 = bitcast ptr %R7 to ptr
  %.3234 = load float, ptr %cast_ptr.274, align 4
  %fmul.92 = fmul float %.3233, -2.000000e+00
  %fadd.105 = fadd float %fmul.92, %.3234
  %.3235 = bitcast ptr %R4 to ptr
  store float %fadd.105, ptr %.3235, align 4
  %cast_ptr.275 = bitcast ptr %R4 to ptr
  %.3238 = load float, ptr %cast_ptr.275, align 4
  %.3240 = xor i1 %.3216, true
  %.3241 = icmp eq i1 %.3240, true
  %fsel.1 = select i1 %.3241, float %.3238, float 1.000000e+00
  %.3242 = bitcast ptr %R4 to ptr
  store float %fsel.1, ptr %.3242, align 4
  %.3245 = load i32, ptr %R4, align 4
  %.3246 = load i32, ptr %R9, align 4
  %.3248 = or i32 %.3245, -2147483648
  %.3249 = or i32 %.3245, %.3246
  %.3250 = and i32 %.3248, %.3249
  store i32 %.3250, ptr %R7, align 4
  br label %.L_x_14

.L_x_15:                                          ; preds = %.L_x_11
  %imad_mul.50 = mul i32 0, 0
  %imad_add.58 = add i32 %imad_mul.50, 1015083138
  store i32 %imad_add.58, ptr %R7, align 4
  %cast_ptr.276 = bitcast ptr %R9 to ptr
  %.3257 = load float, ptr %cast_ptr.276, align 4
  %cast_ptr.277 = bitcast ptr %R9 to ptr
  %.3258 = load float, ptr %cast_ptr.277, align 4
  %fmul.93 = fmul float %.3257, %.3258
  %.3259 = bitcast ptr %R0 to ptr
  store float %fmul.93, ptr %.3259, align 4
  %cast_ptr.278 = bitcast ptr %R0 to ptr
  %.3262 = load float, ptr %cast_ptr.278, align 4
  %cast_ptr.279 = bitcast ptr %R7 to ptr
  %.3263 = load float, ptr %cast_ptr.279, align 4
  %fmul.94 = fmul float %.3262, %.3263
  %fadd.106 = fadd float %fmul.94, 0xBFAAC795C0000000
  %.3264 = bitcast ptr %R7 to ptr
  store float %fadd.106, ptr %.3264, align 4
  %cast_ptr.280 = bitcast ptr %R0 to ptr
  %.3267 = load float, ptr %cast_ptr.280, align 4
  %cast_ptr.281 = bitcast ptr %R7 to ptr
  %.3268 = load float, ptr %cast_ptr.281, align 4
  %fmul.95 = fmul float %.3267, %.3268
  %fadd.107 = fadd float %fmul.95, 0x3FC10B2820000000
  %.3269 = bitcast ptr %R7 to ptr
  store float %fadd.107, ptr %.3269, align 4
  %cast_ptr.282 = bitcast ptr %R0 to ptr
  %.3272 = load float, ptr %cast_ptr.282, align 4
  %cast_ptr.283 = bitcast ptr %R7 to ptr
  %.3273 = load float, ptr %cast_ptr.283, align 4
  %fmul.96 = fmul float %.3272, %.3273
  %fadd.108 = fadd float %fmul.96, 0xBFD5553DA0000000
  %.3274 = bitcast ptr %R7 to ptr
  store float %fadd.108, ptr %.3274, align 4
  %cast_ptr.284 = bitcast ptr %R0 to ptr
  %.3277 = load float, ptr %cast_ptr.284, align 4
  %cast_ptr.285 = bitcast ptr %R7 to ptr
  %.3278 = load float, ptr %cast_ptr.285, align 4
  %fmul.97 = fmul float %.3277, %.3278
  %fadd.109 = fadd float %fmul.97, 0.000000e+00
  %.3279 = bitcast ptr %R7 to ptr
  store float %fadd.109, ptr %.3279, align 4
  %cast_ptr.286 = bitcast ptr %R9 to ptr
  %.3282 = load float, ptr %cast_ptr.286, align 4
  %cast_ptr.287 = bitcast ptr %R7 to ptr
  %.3283 = load float, ptr %cast_ptr.287, align 4
  %cast_ptr.288 = bitcast ptr %R9 to ptr
  %.3284 = load float, ptr %cast_ptr.288, align 4
  %fmul.98 = fmul float %.3282, %.3283
  %fadd.110 = fadd float %fmul.98, %.3284
  %.3285 = bitcast ptr %R7 to ptr
  store float %fadd.110, ptr %.3285, align 4
  br label %.L_x_14

.L_x_14:                                          ; preds = %.L_x_11_split_0x16d0, %.L_x_15
  %.3291 = load i32, ptr %R5, align 4
  %.3292 = add i32 %.3291, 25165824
  %.3293 = add i32 %.3292, 0
  store i32 %.3293, ptr %R0, align 4
  %.3296 = ptrtoint ptr %Arg_8 to i64
  %trunc32.60 = trunc i64 %.3296 to i32
  %.3303 = load i32, ptr %R3, align 4
  %zext.193 = zext i32 %.3303 to i64
  %zext.194 = zext i32 %imad_add.41 to i64
  %zext.195 = zext i32 2 to i64
  %shl.102 = shl i64 %zext.193, 32
  %or.84 = or i64 %shl.102, %zext.194
  %shl.103 = shl i64 %or.84, %zext.195
  %lshr.16 = lshr i64 %shl.103, 32
  %trunc32.61 = trunc i64 %lshr.16 to i32
  store i32 %trunc32.61, ptr %R3, align 4
  %.3308 = load i32, ptr %R0, align 4
  %.3310 = and i32 %.3308, 2139095040
  store i32 %.3310, ptr %R0, align 4
  %zext.196 = zext i32 0 to i64
  %zext.197 = zext i32 %imad_add.41 to i64
  %zext.198 = zext i32 2 to i64
  %shl.104 = shl i64 %zext.196, 32
  %or.85 = or i64 %shl.104, %zext.197
  %shl.105 = shl i64 %or.85, %zext.198
  %and.11 = and i64 %shl.105, 4294967295
  %trunc32.62 = trunc i64 %and.11 to i32
  store i32 %trunc32.62, ptr %R2, align 4
  %.3318 = load i32, ptr %R0, align 4
  %cmp.18 = icmp sgt i32 %.3318, 33554431
  %.3321 = and i1 %cmp.18, true
  %cast_ptr.289 = bitcast ptr %R9 to ptr
  %.3325 = load float, ptr %cast_ptr.289, align 4
  %.3326 = load i32, ptr %R2, align 4
  %zext.199 = zext i32 %.3326 to i64
  %.3327 = load i32, ptr %R3, align 4
  %zext.200 = zext i32 %.3327 to i64
  %shl.106 = shl i64 %zext.200, 32
  %or.86 = or i64 %shl.106, %zext.199
  %sext_UR4.4 = sext i32 %trunc32.60 to i64
  %base_plus_reg_offset.4 = add i64 %or.86, %sext_UR4.4
  %inttoptr_bytes.59 = inttoptr i64 %base_plus_reg_offset.4 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.3325, ptr addrspace(1) %ptr_cast_for_access.59, align 4
  %.3331 = icmp eq i1 %.3321, true
  br i1 %.3331, label %.L_x_18, label %.L_x_14_split_0x1890_CALL_0x18c0

.L_x_14_split_0x1890_CALL_0x18c0:                 ; preds = %.L_x_14
  %.3334 = load i32, ptr %R5, align 4
  %imad_mul.51 = mul i32 0, 0
  %imad_add.59 = add i32 %imad_mul.51, %.3334
  store i32 %imad_add.59, ptr %R15, align 4
  store i32 6336, ptr %R14, align 4
  %.3342 = load i32, ptr %R15, align 4
  %zext.201 = zext i32 0 to i64
  %zext.202 = zext i32 %.3342 to i64
  %zext.203 = zext i32 1 to i64
  %shl.107 = shl i64 %zext.201, 32
  %or.87 = or i64 %shl.107, %zext.202
  %shl.108 = shl i64 %or.87, %zext.203
  %and.12 = and i64 %shl.108, 4294967295
  %trunc32.63 = trunc i64 %and.12 to i32
  store i32 %trunc32.63, ptr %R0, align 4
  %.3348 = load i32, ptr %R0, align 4
  %zext.204 = zext i32 %.3348 to i64
  %zext.205 = zext i32 0 to i64
  %zext.206 = zext i32 24 to i64
  %shl.109 = shl i64 %zext.204, 32
  %or.88 = or i64 %shl.109, %zext.205
  %lshr.17 = lshr i64 %or.88, %zext.206
  %lshr.18 = lshr i64 %lshr.17, 32
  %trunc32.64 = trunc i64 %lshr.18 to i32
  store i32 %trunc32.64, ptr %R16, align 4
  %.3351 = load i32, ptr %R16, align 4
  %cmp.19 = icmp ne i32 %.3351, 0
  %.3354 = and i1 %cmp.19, true
  %.3359 = icmp eq i1 %.3354, true
  br i1 %.3359, label %.L_x_21...3, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3": ; preds = %.L_x_14_split_0x1890_CALL_0x18c0
  %.3362 = load i32, ptr %R15, align 4
  %imad_shl.8 = shl i32 %.3362, 2
  %imad_add.60 = add i32 %imad_shl.8, 0
  store i32 %imad_add.60, ptr %R0, align 4
  %.3365 = load i32, ptr %R0, align 4
  %cmp.20 = icmp ne i32 %.3365, 0
  %.3368 = and i1 %cmp.20, true
  %.3373 = icmp eq i1 %.3368, true
  br i1 %.3373, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"
  %cast_ptr.290 = bitcast ptr %R15 to ptr
  %.3376 = load float, ptr %cast_ptr.290, align 4
  %fmul.99 = fmul float %.3376, 0x43F0000000000000
  %fadd.111 = fadd float %fmul.99, 0.000000e+00
  %.3377 = bitcast ptr %R8 to ptr
  store float %fadd.111, ptr %.3377, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"
  %cast_ptr.291 = bitcast ptr %R15 to ptr
  %.3382 = load float, ptr %cast_ptr.291, align 4
  %fmul.100 = fmul float %.3382, 0x43F0000000000000
  %fadd.112 = fadd float %fmul.100, 0.000000e+00
  %.3383 = bitcast ptr %R8 to ptr
  store float %fadd.112, ptr %.3383, align 4
  %.3389 = icmp ne i1 %.3368, true
  br i1 %.3389, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"
  %.3392 = load i32, ptr %R15, align 4
  %sint_to_f32.5 = sitofp i32 %.3392 to float
  %.3393 = fdiv float 1.000000e+00, %sint_to_f32.5
  %.3394 = fptosi float %.3393 to i32
  store i32 %.3394, ptr %R0, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"
  %.3399 = load i32, ptr %R15, align 4
  %sint_to_f32.6 = sitofp i32 %.3399 to float
  %.3400 = fdiv float 1.000000e+00, %sint_to_f32.6
  %.3401 = fptosi float %.3400 to i32
  store i32 %.3401, ptr %R0, align 4
  %.3407 = icmp eq i1 %.3368, true
  br i1 %.3407, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
  %cast_ptr.292 = bitcast ptr %R8 to ptr
  %.3410 = load float, ptr %cast_ptr.292, align 4
  %.3411 = fdiv float 1.000000e+00, %.3410
  %.3412 = bitcast ptr %R9 to ptr
  store float %.3411, ptr %.3412, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
  %cast_ptr.293 = bitcast ptr %R8 to ptr
  %.3417 = load float, ptr %cast_ptr.293, align 4
  %.3418 = fdiv float 1.000000e+00, %.3417
  %.3419 = bitcast ptr %R9 to ptr
  store float %.3418, ptr %.3419, align 4
  %.3425 = icmp eq i1 %.3368, true
  br i1 %.3425, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
  %cast_ptr.294 = bitcast ptr %R8 to ptr
  %.3428 = load float, ptr %cast_ptr.294, align 4
  %cast_ptr.295 = bitcast ptr %R9 to ptr
  %.3429 = load float, ptr %cast_ptr.295, align 4
  %fmul.101 = fmul float %.3428, %.3429
  %fadd.113 = fadd float %fmul.101, -1.000000e+00
  %.3430 = bitcast ptr %R11 to ptr
  store float %fadd.113, ptr %.3430, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
  %cast_ptr.296 = bitcast ptr %R8 to ptr
  %.3435 = load float, ptr %cast_ptr.296, align 4
  %cast_ptr.297 = bitcast ptr %R9 to ptr
  %.3436 = load float, ptr %cast_ptr.297, align 4
  %fmul.102 = fmul float %.3435, %.3436
  %fadd.114 = fadd float %fmul.102, -1.000000e+00
  %.3437 = bitcast ptr %R11 to ptr
  store float %fadd.114, ptr %.3437, align 4
  %.3443 = icmp eq i1 %.3368, true
  br i1 %.3443, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
  %cast_ptr.298 = bitcast ptr %R11 to ptr
  %.3446 = load float, ptr %cast_ptr.298, align 4
  %.3447 = fneg float %.3446
  %.3448 = call float @llvm.fabs.f32(float %.3447)
  %.3449 = fcmp ogt float %.3448, 0.000000e+00
  %.3450 = fcmp olt float %.3448, 0x3810000000000000
  %.3451 = and i1 %.3449, %.3450
  %.3452 = select i1 %.3451, float 0.000000e+00, float %.3447
  %.3453 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.3454 = fcmp ogt float %.3453, 0.000000e+00
  %.3455 = fcmp olt float %.3453, 0x3810000000000000
  %.3456 = and i1 %.3454, %.3455
  %.3457 = select i1 %.3456, float 0.000000e+00, float 0.000000e+00
  %fadd.115 = fadd float %.3452, %.3457
  %.3458 = call float @llvm.fabs.f32(float %fadd.115)
  %.3459 = fcmp ogt float %.3458, 0.000000e+00
  %.3460 = fcmp olt float %.3458, 0x3810000000000000
  %.3461 = and i1 %.3459, %.3460
  %.3462 = select i1 %.3461, float 0.000000e+00, float %fadd.115
  %.3463 = bitcast ptr %R12 to ptr
  store float %.3462, ptr %.3463, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
  %cast_ptr.299 = bitcast ptr %R11 to ptr
  %.3468 = load float, ptr %cast_ptr.299, align 4
  %.3469 = fneg float %.3468
  %.3470 = call float @llvm.fabs.f32(float %.3469)
  %.3471 = fcmp ogt float %.3470, 0.000000e+00
  %.3472 = fcmp olt float %.3470, 0x3810000000000000
  %.3473 = and i1 %.3471, %.3472
  %.3474 = select i1 %.3473, float 0.000000e+00, float %.3469
  %.3475 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.3476 = fcmp ogt float %.3475, 0.000000e+00
  %.3477 = fcmp olt float %.3475, 0x3810000000000000
  %.3478 = and i1 %.3476, %.3477
  %.3479 = select i1 %.3478, float 0.000000e+00, float 0.000000e+00
  %fadd.116 = fadd float %.3474, %.3479
  %.3480 = call float @llvm.fabs.f32(float %fadd.116)
  %.3481 = fcmp ogt float %.3480, 0.000000e+00
  %.3482 = fcmp olt float %.3480, 0x3810000000000000
  %.3483 = and i1 %.3481, %.3482
  %.3484 = select i1 %.3483, float 0.000000e+00, float %fadd.116
  %.3485 = bitcast ptr %R12 to ptr
  store float %.3484, ptr %.3485, align 4
  %.3491 = icmp eq i1 %.3368, true
  br i1 %.3491, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
  %cast_ptr.300 = bitcast ptr %R9 to ptr
  %.3494 = load float, ptr %cast_ptr.300, align 4
  %cast_ptr.301 = bitcast ptr %R12 to ptr
  %.3495 = load float, ptr %cast_ptr.301, align 4
  %cast_ptr.302 = bitcast ptr %R9 to ptr
  %.3496 = load float, ptr %cast_ptr.302, align 4
  %fmul.103 = fmul float %.3494, %.3495
  %fadd.117 = fadd float %fmul.103, %.3496
  %.3497 = bitcast ptr %R12 to ptr
  store float %fadd.117, ptr %.3497, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
  %cast_ptr.303 = bitcast ptr %R9 to ptr
  %.3502 = load float, ptr %cast_ptr.303, align 4
  %cast_ptr.304 = bitcast ptr %R12 to ptr
  %.3503 = load float, ptr %cast_ptr.304, align 4
  %cast_ptr.305 = bitcast ptr %R9 to ptr
  %.3504 = load float, ptr %cast_ptr.305, align 4
  %fmul.104 = fmul float %.3502, %.3503
  %fadd.118 = fadd float %fmul.104, %.3504
  %.3505 = bitcast ptr %R12 to ptr
  store float %fadd.118, ptr %.3505, align 4
  %.3511 = icmp eq i1 %.3368, true
  br i1 %.3511, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
  %cast_ptr.306 = bitcast ptr %R12 to ptr
  %.3514 = load float, ptr %cast_ptr.306, align 4
  %fmul.105 = fmul float %.3514, 0x43F0000000000000
  %fadd.119 = fadd float %fmul.105, 0.000000e+00
  %.3515 = bitcast ptr %R0 to ptr
  store float %fadd.119, ptr %.3515, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
  %cast_ptr.307 = bitcast ptr %R12 to ptr
  %.3520 = load float, ptr %cast_ptr.307, align 4
  %fmul.106 = fmul float %.3520, 0x43F0000000000000
  %fadd.120 = fadd float %fmul.106, 0.000000e+00
  %.3521 = bitcast ptr %R0 to ptr
  store float %fadd.120, ptr %.3521, align 4
  br label %.L_x_20...3

.L_x_21...3:                                      ; preds = %.L_x_14_split_0x1890_CALL_0x18c0
  %.3528 = load i32, ptr %R16, align 4
  %.3529 = add i32 %.3528, -253
  %.3530 = add i32 %.3529, 0
  store i32 %.3530, ptr %R18, align 4
  %.3533 = load i32, ptr %R18, align 4
  %cmp.21 = icmp sgt i32 %.3533, 1
  %.3536 = and i1 %cmp.21, true
  %.3541 = icmp eq i1 %.3536, true
  br i1 %.3541, label %.L_x_23...3, label %.L_x_21_split_0x1a90...3

.L_x_21_split_0x1a90...3:                         ; preds = %.L_x_21...3
  %.3544 = load i32, ptr %R15, align 4
  %.3546 = and i32 %.3544, 8388607
  store i32 %.3546, ptr %R0, align 4
  store i32 3, ptr %R13, align 4
  %.3551 = load i32, ptr %R0, align 4
  %.3553 = or i32 %.3551, 1065353216
  store i32 %.3553, ptr %R0, align 4
  %.3558 = load i32, ptr %R13, align 4
  %.3559 = load i32, ptr %R18, align 4
  %zext.207 = zext i32 0 to i64
  %zext.208 = zext i32 %.3558 to i64
  %zext.209 = zext i32 %.3559 to i64
  %shl.110 = shl i64 %zext.207, 32
  %or.89 = or i64 %shl.110, %zext.208
  %shl.111 = shl i64 %or.89, %zext.209
  %and.13 = and i64 %shl.111, 4294967295
  %trunc32.65 = trunc i64 %and.13 to i32
  store i32 %trunc32.65, ptr %R13, align 4
  %.3562 = load i32, ptr %R0, align 4
  %sint_to_f32.7 = sitofp i32 %.3562 to float
  %.3563 = fdiv float 1.000000e+00, %sint_to_f32.7
  %.3564 = fptosi float %.3563 to i32
  store i32 %.3564, ptr %R9, align 4
  %cast_ptr.308 = bitcast ptr %R0 to ptr
  %.3567 = load float, ptr %cast_ptr.308, align 4
  %cast_ptr.309 = bitcast ptr %R9 to ptr
  %.3568 = load float, ptr %cast_ptr.309, align 4
  %fmul.107 = fmul float %.3567, %.3568
  %fadd.121 = fadd float %fmul.107, -1.000000e+00
  %.3569 = bitcast ptr %R8 to ptr
  store float %fadd.121, ptr %.3569, align 4
  %cast_ptr.310 = bitcast ptr %R8 to ptr
  %.3572 = load float, ptr %cast_ptr.310, align 4
  %.3573 = fneg float %.3572
  %.3574 = call float @llvm.fabs.f32(float %.3573)
  %.3575 = fcmp ogt float %.3574, 0.000000e+00
  %.3576 = fcmp olt float %.3574, 0x3810000000000000
  %.3577 = and i1 %.3575, %.3576
  %.3578 = select i1 %.3577, float 0.000000e+00, float %.3573
  %.3579 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.3580 = fcmp ogt float %.3579, 0.000000e+00
  %.3581 = fcmp olt float %.3579, 0x3810000000000000
  %.3582 = and i1 %.3580, %.3581
  %.3583 = select i1 %.3582, float 0.000000e+00, float 0.000000e+00
  %fadd.122 = fadd float %.3578, %.3583
  %.3584 = call float @llvm.fabs.f32(float %fadd.122)
  %.3585 = fcmp ogt float %.3584, 0.000000e+00
  %.3586 = fcmp olt float %.3584, 0x3810000000000000
  %.3587 = and i1 %.3585, %.3586
  %.3588 = select i1 %.3587, float 0.000000e+00, float %fadd.122
  %.3589 = bitcast ptr %R8 to ptr
  store float %.3588, ptr %.3589, align 4
  %cast_ptr.311 = bitcast ptr %R9 to ptr
  %.3592 = load float, ptr %cast_ptr.311, align 4
  %cast_ptr.312 = bitcast ptr %R8 to ptr
  %.3593 = load float, ptr %cast_ptr.312, align 4
  %cast_ptr.313 = bitcast ptr %R9 to ptr
  %.3594 = load float, ptr %cast_ptr.313, align 4
  %fmul.108 = fmul float %.3592, %.3593
  %fadd.123 = fadd float %fmul.108, %.3594
  %.3595 = bitcast ptr %R11 to ptr
  store float %fadd.123, ptr %.3595, align 4
  %cast_ptr.314 = bitcast ptr %R9 to ptr
  %.3598 = load float, ptr %cast_ptr.314, align 4
  %cast_ptr.315 = bitcast ptr %R8 to ptr
  %.3599 = load float, ptr %cast_ptr.315, align 4
  %cast_ptr.316 = bitcast ptr %R9 to ptr
  %.3600 = load float, ptr %cast_ptr.316, align 4
  %fmul.109 = fmul float %.3598, %.3599
  %fadd.124 = fadd float %fmul.109, %.3600
  %.3601 = bitcast ptr %R12 to ptr
  store float %fadd.124, ptr %.3601, align 4
  %.3604 = load i32, ptr %R11, align 4
  %.3606 = and i32 %.3604, 8388607
  store i32 %.3606, ptr %R8, align 4
  %cast_ptr.317 = bitcast ptr %R11 to ptr
  %.3609 = load float, ptr %cast_ptr.317, align 4
  %cast_ptr.318 = bitcast ptr %R12 to ptr
  %.3610 = load float, ptr %cast_ptr.318, align 4
  %.3612 = call float @llvm.fabs.f32(float %.3609)
  %.3613 = fcmp ogt float %.3612, 0.000000e+00
  %.3614 = fcmp olt float %.3612, 0x3810000000000000
  %.3615 = and i1 %.3613, %.3614
  %.3616 = select i1 %.3615, float 0.000000e+00, float %.3609
  %.3617 = call float @llvm.fabs.f32(float %.3610)
  %.3618 = fcmp ogt float %.3617, 0.000000e+00
  %.3619 = fcmp olt float %.3617, 0x3810000000000000
  %.3620 = and i1 %.3618, %.3619
  %.3621 = select i1 %.3620, float 0.000000e+00, float %.3610
  %fcmp_ordered.2 = fcmp une float %.3616, %.3621
  %.3623 = and i1 %fcmp_ordered.2, true
  %.3627 = load i32, ptr %R8, align 4
  %.3629 = or i32 %.3627, 8388608
  store i32 %.3629, ptr %R8, align 4
  %.3633 = xor i1 %.3623, true
  %.3634 = icmp eq i1 %.3633, true
  %sel.4 = select i1 %.3634, i32 0, i32 -1
  store i32 %sel.4, ptr %R9, align 4
  %.3637 = load i32, ptr %R13, align 4
  %.3638 = load i32, ptr %R8, align 4
  %.3640 = and i32 %.3637, %.3638
  store i32 %.3640, ptr %R13, align 4
  %.3643 = load i32, ptr %R9, align 4
  %.3644 = sub i32 0, %.3643
  %imad_mul.52 = mul i32 0, 0
  %imad_add.61 = add i32 %imad_mul.52, %.3644
  store i32 %imad_add.61, ptr %R9, align 4
  %.3649 = load i32, ptr %R13, align 4
  %.3650 = load i32, ptr %R18, align 4
  %zext.210 = zext i32 %.3649 to i64
  %zext.211 = zext i32 0 to i64
  %zext.212 = zext i32 %.3650 to i64
  %shl.112 = shl i64 %zext.210, 32
  %or.90 = or i64 %shl.112, %zext.211
  %lshr.19 = lshr i64 %or.90, %zext.212
  %lshr.20 = lshr i64 %lshr.19, 32
  %trunc32.66 = trunc i64 %lshr.20 to i32
  store i32 %trunc32.66, ptr %R13, align 4
  %.3664 = load i32, ptr %R13, align 4
  %.3666 = and i32 %.3664, 1
  %.3668 = icmp ne i32 %.3666, 0
  %.3678 = load i32, ptr %R16, align 4
  %.3679 = add i32 %.3678, -252
  %.3680 = add i32 %.3679, 0
  store i32 %.3680, ptr %R9, align 4
  %.3688 = load i32, ptr %R15, align 4
  %.3690 = and i32 %.3688, 8388607
  %.3692 = icmp ne i32 %.3690, 0
  %.3696 = xor i1 %.3668, true
  %.3697 = icmp eq i1 %.3696, true
  %sel.5 = select i1 %.3697, i32 0, i32 1
  store i32 %sel.5, ptr %R0, align 4
  %.3700 = load i32, ptr %R0, align 4
  %.3701 = sub i32 0, %.3700
  %.3702 = add i32 %.3701, 0
  %.3703 = add i32 %.3702, 0
  store i32 %.3703, ptr %R0, align 4
  %.3706 = load i32, ptr %R0, align 4
  %cmp.22 = icmp sge i32 %.3706, 0
  %.3709 = and i1 %cmp.22, true
  %.3715 = load i32, ptr %R8, align 4
  %.3716 = load i32, ptr %R9, align 4
  %zext.213 = zext i32 %.3715 to i64
  %zext.214 = zext i32 0 to i64
  %zext.215 = zext i32 %.3716 to i64
  %shl.113 = shl i64 %zext.213, 32
  %or.91 = or i64 %shl.113, %zext.214
  %lshr.21 = lshr i64 %or.91, %zext.215
  %lshr.22 = lshr i64 %lshr.21, 32
  %trunc32.67 = trunc i64 %lshr.22 to i32
  store i32 %trunc32.67, ptr %R0, align 4
  %.3720 = icmp ne i1 %.3709, true
  br i1 %.3720, label %.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30, label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3

.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30:  ; preds = %.L_x_21_split_0x1a90...3
  %.3723 = load i32, ptr %R0, align 4
  %.3724 = add i32 %.3723, 1
  %.3725 = add i32 %.3724, 0
  store i32 %.3725, ptr %R0, align 4
  br label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3

.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3:  ; preds = %.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30, %.L_x_21_split_0x1a90...3
  %.3730 = load i32, ptr %R0, align 4
  %.3731 = add i32 %.3730, 1
  %.3732 = add i32 %.3731, 0
  store i32 %.3732, ptr %R0, align 4
  %.3738 = icmp ne i1 %.3692, true
  br i1 %.3738, label %.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40, label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3

.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40:  ; preds = %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3
  %.3741 = load i32, ptr %R0, align 4
  %imad_shl.9 = shl i32 %.3741, 2
  %imad_add.62 = add i32 %imad_shl.9, 0
  store i32 %imad_add.62, ptr %R0, align 4
  br label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3

.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3:  ; preds = %.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40, %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3
  %.3746 = load i32, ptr %R0, align 4
  %imad_shl.10 = shl i32 %.3746, 2
  %imad_add.63 = add i32 %imad_shl.10, 0
  store i32 %imad_add.63, ptr %R0, align 4
  %.3751 = load i32, ptr %R0, align 4
  %.3752 = load i32, ptr %R15, align 4
  %.3754 = or i32 %.3751, -2147483648
  %.3755 = or i32 %.3751, %.3752
  %.3756 = and i32 %.3754, %.3755
  store i32 %.3756, ptr %R0, align 4
  br label %.L_x_20...3

.L_x_23...3:                                      ; preds = %.L_x_21...3
  %.3761 = load i32, ptr %R15, align 4
  %sint_to_f32.8 = sitofp i32 %.3761 to float
  %.3762 = fdiv float 1.000000e+00, %sint_to_f32.8
  %.3763 = fptosi float %.3762 to i32
  store i32 %.3763, ptr %R0, align 4
  br label %.L_x_20...3

.L_x_20...3:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3", %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3, %.L_x_23...3
  %.3769 = load i32, ptr %R14, align 4
  store i32 %.3769, ptr %R8, align 4
  %imad_mul.53 = mul i32 0, 0
  %imad_add.64 = add i32 %imad_mul.53, 0
  store i32 %imad_add.64, ptr %R9, align 4
  br label %.L_x_17

.L_x_18:                                          ; preds = %.L_x_14
  %cast_ptr.319 = bitcast ptr %R5 to ptr
  %.3781 = load float, ptr %cast_ptr.319, align 4
  %.3782 = fdiv float 1.000000e+00, %.3781
  %.3783 = bitcast ptr %R0 to ptr
  store float %.3782, ptr %.3783, align 4
  %cast_ptr.320 = bitcast ptr %R5 to ptr
  %.3786 = load float, ptr %cast_ptr.320, align 4
  %cast_ptr.321 = bitcast ptr %R0 to ptr
  %.3787 = load float, ptr %cast_ptr.321, align 4
  %fmul.110 = fmul float %.3786, %.3787
  %fadd.125 = fadd float %fmul.110, -1.000000e+00
  %.3788 = bitcast ptr %R4 to ptr
  store float %fadd.125, ptr %.3788, align 4
  %cast_ptr.322 = bitcast ptr %R4 to ptr
  %.3791 = load float, ptr %cast_ptr.322, align 4
  %.3792 = fneg float %.3791
  %.3793 = call float @llvm.fabs.f32(float %.3792)
  %.3794 = fcmp ogt float %.3793, 0.000000e+00
  %.3795 = fcmp olt float %.3793, 0x3810000000000000
  %.3796 = and i1 %.3794, %.3795
  %.3797 = select i1 %.3796, float 0.000000e+00, float %.3792
  %.3798 = call float @llvm.fabs.f32(float 0.000000e+00)
  %.3799 = fcmp ogt float %.3798, 0.000000e+00
  %.3800 = fcmp olt float %.3798, 0x3810000000000000
  %.3801 = and i1 %.3799, %.3800
  %.3802 = select i1 %.3801, float 0.000000e+00, float 0.000000e+00
  %fadd.126 = fadd float %.3797, %.3802
  %.3803 = call float @llvm.fabs.f32(float %fadd.126)
  %.3804 = fcmp ogt float %.3803, 0.000000e+00
  %.3805 = fcmp olt float %.3803, 0x3810000000000000
  %.3806 = and i1 %.3804, %.3805
  %.3807 = select i1 %.3806, float 0.000000e+00, float %fadd.126
  %.3808 = bitcast ptr %R9 to ptr
  store float %.3807, ptr %.3808, align 4
  %cast_ptr.323 = bitcast ptr %R0 to ptr
  %.3811 = load float, ptr %cast_ptr.323, align 4
  %cast_ptr.324 = bitcast ptr %R9 to ptr
  %.3812 = load float, ptr %cast_ptr.324, align 4
  %cast_ptr.325 = bitcast ptr %R0 to ptr
  %.3813 = load float, ptr %cast_ptr.325, align 4
  %fmul.111 = fmul float %.3811, %.3812
  %fadd.127 = fadd float %fmul.111, %.3813
  %.3814 = bitcast ptr %R0 to ptr
  store float %fadd.127, ptr %.3814, align 4
  br label %.L_x_17

.L_x_17:                                          ; preds = %.L_x_20...3, %.L_x_18
  %cast_ptr.326 = bitcast ptr %R0 to ptr
  %.3820 = load float, ptr %cast_ptr.326, align 4
  %cast_ptr.327 = bitcast ptr %R7 to ptr
  %.3821 = load float, ptr %cast_ptr.327, align 4
  %fmul.112 = fmul float %.3820, %.3821
  %.3822 = bitcast ptr %R7 to ptr
  store float %fmul.112, ptr %.3822, align 4
  %.3825 = ptrtoint ptr %Arg_7 to i64
  %trunc32.69 = trunc i64 %.3825 to i32
  %cast_ptr.328 = bitcast ptr %R7 to ptr
  %.3831 = load float, ptr %cast_ptr.328, align 4
  %.3832 = load i32, ptr %R2, align 4
  %zext.216 = zext i32 %.3832 to i64
  %.3833 = load i32, ptr %R3, align 4
  %zext.217 = zext i32 %.3833 to i64
  %shl.114 = shl i64 %zext.217, 32
  %or.92 = or i64 %shl.114, %zext.216
  %sext_UR4.5 = sext i32 %trunc32.69 to i64
  %base_plus_reg_offset.5 = add i64 %or.92, %sext_UR4.5
  %inttoptr_bytes.60 = inttoptr i64 %base_plus_reg_offset.5 to ptr addrspace(1)
  %ptr_cast_for_access.60 = bitcast ptr addrspace(1) %inttoptr_bytes.60 to ptr addrspace(1)
  store float %.3831, ptr addrspace(1) %ptr_cast_for_access.60, align 4
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
