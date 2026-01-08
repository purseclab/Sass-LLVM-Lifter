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
  %.12 = xor i32 %.4, -1
  %0 = and i32 %.3, %.12
  %.13 = and i32 %0, %.2
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
  %.28 = and i32 %.3, %.27
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
  %.401 = and i32 %.3, %.4
  %.41 = or i32 %.2, %.401
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
  %.12 = xor i32 %.4, 1
  %0 = and i32 %.3, %.12
  %.13 = and i32 %0, %.2
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
  %.401 = and i32 %.3, %.4
  %.41 = or i32 %.2, %.401
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
  %.12 = xor i32 %.4, -1
  %0 = and i32 %.3, %.12
  %.13 = and i32 %0, %.2
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
  %.28 = and i32 %.3, %.27
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
  %.401 = and i32 %.3, %.4
  %.41 = or i32 %.2, %.401
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
  %nvvm_ctaid_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  store i32 %nvvm_ctaid_x, ptr %R4, align 4
  %nvvm_threadidx_x = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  store i32 %nvvm_threadidx_x, ptr %R5, align 4
  %nvvm_ctaid_y = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  store i32 %nvvm_ctaid_y, ptr %R7, align 4
  %nvvm_threadidx_y = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  store i32 %nvvm_threadidx_y, ptr %R0, align 4
  %.30 = load i32, ptr %R4, align 4
  %nvvm_blockdim_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %.31 = load i32, ptr %R5, align 4
  %imad_mul.1 = mul i32 %.30, %nvvm_blockdim_x
  %imad_add.1 = add i32 %imad_mul.1, %.31
  %cmp = icmp sge i32 %imad_add.1, %Arg_11
  %.41 = load i32, ptr %R7, align 4
  %nvvm_blockdim_y = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %.42 = load i32, ptr %R0, align 4
  %imad_mul.2 = mul i32 %.41, %nvvm_blockdim_y
  %imad_add.2 = add i32 %imad_mul.2, %.42
  store i32 %imad_add.2, ptr %R7, align 4
  %cmp.1 = icmp sge i32 %imad_add.2, %Arg_9
  %.48 = or i1 %cmp.1, %cmp
  br i1 %.48, label %ExitFunction, label %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0

.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0: ; preds = %Entry_.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii
  store i32 %Arg_11, ptr %R3, align 4
  store i32 4, ptr %R9, align 4
  %shl = shl i32 %Arg_11, 1
  %add = add i32 %shl, %imad_add.1
  store i32 %add, ptr %R18, align 4
  %imad_ext1 = zext i32 %imad_add.1 to i64
  %imad_mul.4 = shl nuw nsw i64 %imad_ext1, 2
  %.68 = ptrtoint ptr %Arg_6 to i64
  %imad_add.4 = add i64 %imad_mul.4, %.68
  %.70 = lshr i64 %imad_add.4, 32
  %trunc32 = trunc nuw i64 %.70 to i32
  %trunc32.1 = trunc i64 %imad_add.4 to i32
  store i32 %trunc32.1, ptr %R12, align 4
  store i32 %trunc32, ptr %R13, align 4
  %.74 = load i32, ptr %R18, align 4
  %.75 = add i32 %.74, %Arg_11
  store i32 %.75, ptr %R24, align 4
  %.80 = load i32, ptr %R9, align 4
  %imad_ext1.1 = zext i32 %imad_add.1 to i64
  %imad_ext2.1 = zext i32 %.80 to i64
  %imad_mul.5 = mul nuw i64 %imad_ext1.1, %imad_ext2.1
  %.81 = ptrtoint ptr %Arg_5 to i64
  %imad_add.5 = add i64 %imad_mul.5, %.81
  %.83 = lshr i64 %imad_add.5, 32
  %trunc32.2 = trunc nuw i64 %.83 to i32
  %trunc32.3 = trunc i64 %imad_add.5 to i32
  store i32 %trunc32.3, ptr %R10, align 4
  store i32 %trunc32.2, ptr %R11, align 4
  %.87 = load i32, ptr %R18, align 4
  %.88 = load i32, ptr %R9, align 4
  %imad_ext1.2 = zext i32 %.87 to i64
  %imad_ext2.2 = zext i32 %.88 to i64
  %imad_mul.6 = mul nuw i64 %imad_ext1.2, %imad_ext2.2
  %.89 = ptrtoint ptr %Arg_6 to i64
  %imad_add.6 = add i64 %imad_mul.6, %.89
  %.91 = lshr i64 %imad_add.6, 32
  %trunc32.4 = trunc nuw i64 %.91 to i32
  %trunc32.5 = trunc i64 %imad_add.6 to i32
  store i32 %trunc32.5, ptr %R20, align 4
  store i32 %trunc32.4, ptr %R21, align 4
  %.95 = load i32, ptr %R12, align 4
  %zext = zext i32 %.95 to i64
  %.96 = load i32, ptr %R13, align 4
  %zext.1 = zext i32 %.96 to i64
  %shl.1 = shl nuw i64 %zext.1, 32
  %or = or disjoint i64 %shl.1, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %.97 = load float, ptr addrspace(1) %inttoptr_bytes, align 4
  store float %.97, ptr %R3, align 4
  %.101 = load i32, ptr %R24, align 4
  %.102 = load i32, ptr %R9, align 4
  %imad_ext1.3 = zext i32 %.101 to i64
  %imad_ext2.3 = zext i32 %.102 to i64
  %imad_mul.7 = mul nuw i64 %imad_ext1.3, %imad_ext2.3
  %.103 = ptrtoint ptr %Arg_5 to i64
  %imad_add.7 = add i64 %imad_mul.7, %.103
  %.105 = lshr i64 %imad_add.7, 32
  %trunc32.6 = trunc nuw i64 %.105 to i32
  %trunc32.7 = trunc i64 %imad_add.7 to i32
  store i32 %trunc32.7, ptr %R22, align 4
  store i32 %trunc32.6, ptr %R23, align 4
  %.109 = load i32, ptr %R9, align 4
  %.110 = load i32, ptr %R12, align 4
  %imad_ext1.4 = zext i32 %.109 to i64
  %imad_ext2.4 = zext i32 %Arg_11 to i64
  %imad_mul.8 = mul nuw i64 %imad_ext1.4, %imad_ext2.4
  %imad_ext3 = zext i32 %.110 to i64
  %imad_add.8 = add i64 %imad_mul.8, %imad_ext3
  %.112 = lshr i64 %imad_add.8, 32
  %trunc32.8 = trunc nuw i64 %.112 to i32
  %trunc32.9 = trunc i64 %imad_add.8 to i32
  store i32 %trunc32.9, ptr %R16, align 4
  store i32 %trunc32.8, ptr %R17, align 4
  %.116 = load i32, ptr %R20, align 4
  %zext.2 = zext i32 %.116 to i64
  %.117 = load i32, ptr %R21, align 4
  %zext.3 = zext i32 %.117 to i64
  %shl.2 = shl nuw i64 %zext.3, 32
  %or.1 = or disjoint i64 %shl.2, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %.118 = load float, ptr addrspace(1) %inttoptr_bytes.1, align 4
  store float %.118, ptr %R20, align 4
  %.122 = load i32, ptr %R9, align 4
  %.123 = load i32, ptr %R10, align 4
  %imad_ext1.5 = zext i32 %.122 to i64
  %imad_ext2.5 = zext i32 %Arg_11 to i64
  %imad_mul.9 = mul nuw i64 %imad_ext1.5, %imad_ext2.5
  %imad_ext3.1 = zext i32 %.123 to i64
  %imad_add.9 = add i64 %imad_mul.9, %imad_ext3.1
  %.125 = lshr i64 %imad_add.9, 32
  %trunc32.10 = trunc nuw i64 %.125 to i32
  %trunc32.11 = trunc i64 %imad_add.9 to i32
  store i32 %trunc32.11, ptr %R14, align 4
  store i32 %trunc32.10, ptr %R15, align 4
  %.129 = load i32, ptr %R22, align 4
  %zext.4 = zext i32 %.129 to i64
  %.130 = load i32, ptr %R23, align 4
  %zext.5 = zext i32 %.130 to i64
  %shl.3 = shl nuw i64 %zext.5, 32
  %or.2 = or disjoint i64 %shl.3, %zext.4
  %inttoptr_bytes.2 = inttoptr i64 %or.2 to ptr addrspace(1)
  %.131 = load float, ptr addrspace(1) %inttoptr_bytes.2, align 4
  store float %.131, ptr %R23, align 4
  %.135 = load i32, ptr %R18, align 4
  %.136 = load i32, ptr %R9, align 4
  %imad_ext1.6 = zext i32 %.135 to i64
  %imad_ext2.6 = zext i32 %.136 to i64
  %imad_mul.10 = mul nuw i64 %imad_ext1.6, %imad_ext2.6
  %.137 = ptrtoint ptr %Arg_5 to i64
  %imad_add.10 = add i64 %imad_mul.10, %.137
  %.139 = lshr i64 %imad_add.10, 32
  %trunc32.12 = trunc nuw i64 %.139 to i32
  %trunc32.13 = trunc i64 %imad_add.10 to i32
  store i32 %trunc32.13, ptr %R18, align 4
  store i32 %trunc32.12, ptr %R19, align 4
  %.143 = load i32, ptr %R10, align 4
  %zext.6 = zext i32 %.143 to i64
  %.144 = load i32, ptr %R11, align 4
  %zext.7 = zext i32 %.144 to i64
  %shl.4 = shl nuw i64 %zext.7, 32
  %or.3 = or disjoint i64 %shl.4, %zext.6
  %inttoptr_bytes.3 = inttoptr i64 %or.3 to ptr addrspace(1)
  %.145 = load float, ptr addrspace(1) %inttoptr_bytes.3, align 4
  store float %.145, ptr %R10, align 4
  %.149 = load i32, ptr %R24, align 4
  %.150 = load i32, ptr %R9, align 4
  %imad_ext1.7 = zext i32 %.149 to i64
  %imad_ext2.7 = zext i32 %.150 to i64
  %imad_mul.11 = mul nuw i64 %imad_ext1.7, %imad_ext2.7
  %.151 = ptrtoint ptr %Arg_6 to i64
  %imad_add.11 = add i64 %imad_mul.11, %.151
  %.153 = and i64 %imad_add.11, -4294967296
  %trunc32.15 = trunc i64 %imad_add.11 to i32
  store i32 %trunc32.15, ptr %R24, align 4
  %.157 = load i32, ptr %R16, align 4
  %zext.8 = zext i32 %.157 to i64
  %.158 = load i32, ptr %R17, align 4
  %zext.9 = zext i32 %.158 to i64
  %shl.5 = shl nuw i64 %zext.9, 32
  %or.4 = or disjoint i64 %shl.5, %zext.8
  %inttoptr_bytes.4 = inttoptr i64 %or.4 to ptr addrspace(1)
  %.159 = load float, ptr addrspace(1) %inttoptr_bytes.4, align 4
  store float %.159, ptr %R16, align 4
  %.163 = load i32, ptr %R14, align 4
  %zext.10 = zext i32 %.163 to i64
  %.164 = load i32, ptr %R15, align 4
  %zext.11 = zext i32 %.164 to i64
  %shl.6 = shl nuw i64 %zext.11, 32
  %or.5 = or disjoint i64 %shl.6, %zext.10
  %inttoptr_bytes.5 = inttoptr i64 %or.5 to ptr addrspace(1)
  %.165 = load float, ptr addrspace(1) %inttoptr_bytes.5, align 4
  store float %.165, ptr %R15, align 4
  %.169 = load i32, ptr %R18, align 4
  %zext.12 = zext i32 %.169 to i64
  %.170 = load i32, ptr %R19, align 4
  %zext.13 = zext i32 %.170 to i64
  %shl.7 = shl nuw i64 %zext.13, 32
  %or.6 = or disjoint i64 %shl.7, %zext.12
  %inttoptr_bytes.6 = inttoptr i64 %or.6 to ptr addrspace(1)
  %.171 = load float, ptr addrspace(1) %inttoptr_bytes.6, align 4
  store float %.171, ptr %R19, align 4
  %.175 = load i32, ptr %R24, align 4
  %zext.14 = zext i32 %.175 to i64
  %or.7 = or disjoint i64 %.153, %zext.14
  %inttoptr_bytes.7 = inttoptr i64 %or.7 to ptr addrspace(1)
  %.177 = load float, ptr addrspace(1) %inttoptr_bytes.7, align 4
  store float %.177, ptr %R24, align 4
  store i32 %Arg_10, ptr %R26, align 4
  %cmp.2 = icmp sgt i32 %Arg_10, 0
  %.190 = load float, ptr %R3, align 4
  %.191 = load float, ptr %R10, align 4
  %fadd = fadd float %.190, %.191
  store float %fadd, ptr %R3, align 4
  %.195 = load float, ptr %R16, align 4
  %.196 = load float, ptr %R15, align 4
  %fadd.1 = fadd float %.195, %.196
  store float %fadd.1, ptr %R2, align 4
  %.200 = load float, ptr %R20, align 4
  %.201 = load float, ptr %R19, align 4
  %fadd.2 = fadd float %.200, %.201
  store float %fadd.2, ptr %R0, align 4
  %.205 = load float, ptr %R24, align 4
  %.206 = load float, ptr %R23, align 4
  %fadd.3 = fadd float %.205, %.206
  store float %fadd.3, ptr %R8, align 4
  br i1 %cmp.2, label %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250, label %.L_x_0

.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250: ; preds = %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0
  %.214 = load i32, ptr %R26, align 4
  %.215 = add i32 %.214, -1
  store i32 %.215, ptr %R10, align 4
  %.223 = and i32 %.214, 3
  %.225.not = icmp eq i32 %.223, 0
  %zext.16 = zext i32 %Arg_11 to i64
  %shl.9 = shl nuw i64 %zext.16, 32
  %ashr.1 = ashr i64 %shl.9, 63
  %.232 = load i32, ptr %R10, align 4
  %cmp.3 = icmp sgt i32 %.232, 2
  %.239 = load i32, ptr %R26, align 4
  %.241 = and i32 %.239, 3
  store i32 %.241, ptr %R20, align 4
  store i32 0, ptr %R28, align 4
  br i1 %cmp.3, label %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0, label %.L_x_1

.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0: ; preds = %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250
  %.250 = load i32, ptr %R20, align 4
  %.252 = sub i32 %Arg_10, %.250
  store i32 0, ptr %R28, align 4
  %zext.20 = zext i32 %Arg_11 to i64
  %0 = shl nsw i64 %ashr.1, 34
  %1 = shl nuw nsw i64 %zext.20, 2
  %shl.11 = or disjoint i64 %0, %1
  %lshr = lshr i64 %shl.11, 32
  %trunc32.17 = trunc nuw i64 %lshr to i32
  %shl.13 = shl i32 %Arg_11, 2
  br label %.L_x_2

.L_x_2:                                           ; preds = %.L_x_2, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0
  %R42.0 = phi i32 [ %.252, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0 ], [ %.697, %.L_x_2 ]
  %.269 = load i32, ptr %R28, align 4
  %shl.15 = shl i32 %.269, 2
  store i32 %shl.15, ptr %R11, align 4
  %.272 = load i32, ptr %R7, align 4
  %imad_mul.14 = mul i32 %.272, %Arg_10
  %imad_add.14 = add i32 %imad_mul.14, %.269
  store i32 %imad_add.14, ptr %R30, align 4
  %imad_mul.15 = mul i32 %shl.15, %Arg_11
  %imad_add.15 = add i32 %imad_mul.15, %imad_add.1
  store i32 %imad_add.15, ptr %R36, align 4
  %.281 = load i32, ptr %R9, align 4
  %imad_ext1.8 = zext i32 %imad_add.14 to i64
  %imad_ext2.8 = zext i32 %.281 to i64
  %imad_mul.16 = mul nuw i64 %imad_ext1.8, %imad_ext2.8
  %.282 = ptrtoint ptr %Arg_0 to i64
  %imad_add.16 = add i64 %imad_mul.16, %.282
  %.284 = and i64 %imad_add.16, -4294967296
  %trunc32.21 = trunc i64 %imad_add.16 to i32
  store i32 %trunc32.21, ptr %R30, align 4
  %.288 = load i32, ptr %R36, align 4
  %.289 = load i32, ptr %R9, align 4
  %imad_ext1.9 = zext i32 %.288 to i64
  %imad_ext2.9 = zext i32 %.289 to i64
  %imad_mul.17 = mul nuw i64 %imad_ext1.9, %imad_ext2.9
  %.290 = ptrtoint ptr %Arg_3 to i64
  %imad_add.17 = add i64 %imad_mul.17, %.290
  %.292 = lshr i64 %imad_add.17, 32
  %trunc32.22 = trunc nuw i64 %.292 to i32
  %trunc32.23 = trunc i64 %imad_add.17 to i32
  store i32 %trunc32.23, ptr %R36, align 4
  %.296 = load i32, ptr %R30, align 4
  %zext.28 = zext i32 %.296 to i64
  %shl.16 = and i64 %imad_add.16, -4294967296
  %or.12 = or disjoint i64 %shl.16, %zext.28
  %inttoptr_bytes.8 = inttoptr i64 %or.12 to ptr addrspace(1)
  %.298 = load float, ptr addrspace(1) %inttoptr_bytes.8, align 4
  store float %.298, ptr %R35, align 4
  %.302 = load i32, ptr %R36, align 4
  %.304 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.302, i32 %shl.13)
  %.305 = extractvalue { i32, i1 } %.304, 0
  %.306 = extractvalue { i32, i1 } %.304, 1
  store i32 %.305, ptr %R32, align 4
  %.314 = load i32, ptr %R30, align 4
  %zext.30 = zext i32 %.314 to i64
  %shl.17 = and i64 %imad_add.16, -4294967296
  %or.13 = or disjoint i64 %shl.17, %zext.30
  %ptr_plus_imm = add i64 %or.13, 4
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %.316 = load float, ptr addrspace(1) %inttoptr_bytes.9, align 4
  store float %.316, ptr %R29, align 4
  %.324 = zext i1 %.306 to i32
  %add.1 = add i32 %trunc32.22, %trunc32.17
  %add.3 = add i32 %add.1, %.324
  %.328 = load i32, ptr %R32, align 4
  %.330 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.328, i32 %shl.13)
  %.331 = extractvalue { i32, i1 } %.330, 0
  %.332 = extractvalue { i32, i1 } %.330, 1
  store i32 %.331, ptr %R38, align 4
  %.340 = load i32, ptr %R30, align 4
  %zext.32 = zext i32 %.340 to i64
  %shl.18 = and i64 %imad_add.16, -4294967296
  %or.14 = or disjoint i64 %shl.18, %zext.32
  %ptr_plus_imm.1 = add i64 %or.14, 8
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %.342 = load float, ptr addrspace(1) %inttoptr_bytes.10, align 4
  store float %.342, ptr %R21, align 4
  %.350 = zext i1 %.332 to i32
  %add.5 = add i32 %add.3, %trunc32.17
  %add.7 = add i32 %add.5, %.350
  %.354 = load i32, ptr %R30, align 4
  %zext.34 = zext i32 %.354 to i64
  %or.15 = or disjoint i64 %.284, %zext.34
  %ptr_plus_imm.2 = add i64 %or.15, 12
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %.356 = load float, ptr addrspace(1) %inttoptr_bytes.11, align 4
  store float %.356, ptr %R34, align 4
  %.360 = load i32, ptr %R38, align 4
  %.362 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.360, i32 %shl.13)
  %.363 = extractvalue { i32, i1 } %.362, 0
  %.364 = extractvalue { i32, i1 } %.362, 1
  store i32 %.363, ptr %R22, align 4
  %.372 = load i32, ptr %R32, align 4
  %zext.36 = zext i32 %.372 to i64
  %zext.37 = zext i32 %add.3 to i64
  %shl.20 = shl nuw i64 %zext.37, 32
  %or.16 = or disjoint i64 %shl.20, %zext.36
  %inttoptr_bytes.12 = inttoptr i64 %or.16 to ptr addrspace(1)
  %.374 = load float, ptr addrspace(1) %inttoptr_bytes.12, align 4
  store float %.374, ptr %R40, align 4
  %.382 = zext i1 %.364 to i32
  %add.9 = add i32 %add.7, %trunc32.17
  %add.11 = add i32 %add.9, %.382
  store i32 %add.11, ptr %R23, align 4
  %.386 = load i32, ptr %R22, align 4
  %.388 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.386, i32 %shl.13)
  %.389 = extractvalue { i32, i1 } %.388, 0
  %.390 = extractvalue { i32, i1 } %.388, 1
  store i32 %.389, ptr %R12, align 4
  %.398 = load i32, ptr %R36, align 4
  %zext.38 = zext i32 %.398 to i64
  %shl.21 = and i64 %imad_add.17, -4294967296
  %or.17 = or disjoint i64 %shl.21, %zext.38
  %inttoptr_bytes.13 = inttoptr i64 %or.17 to ptr addrspace(1)
  %.400 = load float, ptr addrspace(1) %inttoptr_bytes.13, align 4
  store float %.400, ptr %R36, align 4
  %.404 = load i32, ptr %R23, align 4
  %.408 = zext i1 %.390 to i32
  %add.13 = add i32 %.404, %trunc32.17
  %add.15 = add i32 %add.13, %.408
  store i32 %add.15, ptr %R13, align 4
  %.412 = load i32, ptr %R38, align 4
  %zext.40 = zext i32 %.412 to i64
  %zext.41 = zext i32 %add.7 to i64
  %shl.22 = shl nuw i64 %zext.41, 32
  %or.18 = or disjoint i64 %shl.22, %zext.40
  %inttoptr_bytes.14 = inttoptr i64 %or.18 to ptr addrspace(1)
  %.414 = load float, ptr addrspace(1) %inttoptr_bytes.14, align 4
  store float %.414, ptr %R38, align 4
  %.418 = load i32, ptr %R12, align 4
  %.420 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.418, i32 %shl.13)
  %.421 = extractvalue { i32, i1 } %.420, 0
  %.422 = extractvalue { i32, i1 } %.420, 1
  store i32 %.421, ptr %R18, align 4
  %.430 = load i32, ptr %R22, align 4
  %zext.42 = zext i32 %.430 to i64
  %.431 = load i32, ptr %R23, align 4
  %zext.43 = zext i32 %.431 to i64
  %shl.23 = shl nuw i64 %zext.43, 32
  %or.19 = or disjoint i64 %shl.23, %zext.42
  %inttoptr_bytes.15 = inttoptr i64 %or.19 to ptr addrspace(1)
  %.432 = load float, ptr addrspace(1) %inttoptr_bytes.15, align 4
  store float %.432, ptr %R41, align 4
  %.436 = load i32, ptr %R13, align 4
  %.440 = zext i1 %.422 to i32
  %add.17 = add i32 %.436, %trunc32.17
  %add.19 = add i32 %add.17, %.440
  store i32 %add.19, ptr %R19, align 4
  %.444 = load i32, ptr %R18, align 4
  %.446 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.444, i32 %shl.13)
  %.447 = extractvalue { i32, i1 } %.446, 0
  %.448 = extractvalue { i32, i1 } %.446, 1
  store i32 %.447, ptr %R14, align 4
  %.456 = load i32, ptr %R12, align 4
  %zext.44 = zext i32 %.456 to i64
  %.457 = load i32, ptr %R13, align 4
  %zext.45 = zext i32 %.457 to i64
  %shl.24 = shl nuw i64 %zext.45, 32
  %or.20 = or disjoint i64 %shl.24, %zext.44
  %inttoptr_bytes.16 = inttoptr i64 %or.20 to ptr addrspace(1)
  %.458 = load float, ptr addrspace(1) %inttoptr_bytes.16, align 4
  store float %.458, ptr %R43, align 4
  %.462 = load i32, ptr %R19, align 4
  %.466 = zext i1 %.448 to i32
  %add.21 = add i32 %.462, %trunc32.17
  %add.23 = add i32 %add.21, %.466
  store i32 %add.23, ptr %R15, align 4
  %.470 = load i32, ptr %R14, align 4
  %.472 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.470, i32 %shl.13)
  %.473 = extractvalue { i32, i1 } %.472, 0
  %.474 = extractvalue { i32, i1 } %.472, 1
  store i32 %.473, ptr %R10, align 4
  %.482 = load i32, ptr %R18, align 4
  %zext.46 = zext i32 %.482 to i64
  %.483 = load i32, ptr %R19, align 4
  %zext.47 = zext i32 %.483 to i64
  %shl.25 = shl nuw i64 %zext.47, 32
  %or.21 = or disjoint i64 %shl.25, %zext.46
  %inttoptr_bytes.17 = inttoptr i64 %or.21 to ptr addrspace(1)
  %.484 = load float, ptr addrspace(1) %inttoptr_bytes.17, align 4
  store float %.484, ptr %R18, align 4
  %.488 = load i32, ptr %R15, align 4
  %.492 = zext i1 %.474 to i32
  %add.25 = add i32 %.488, %trunc32.17
  %add.27 = add i32 %add.25, %.492
  store i32 %add.27, ptr %R11, align 4
  %.496 = load i32, ptr %R10, align 4
  %.498 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.496, i32 %shl.13)
  %.499 = extractvalue { i32, i1 } %.498, 0
  %.500 = extractvalue { i32, i1 } %.498, 1
  store i32 %.499, ptr %R16, align 4
  %.508 = load i32, ptr %R14, align 4
  %zext.48 = zext i32 %.508 to i64
  %.509 = load i32, ptr %R15, align 4
  %zext.49 = zext i32 %.509 to i64
  %shl.26 = shl nuw i64 %zext.49, 32
  %or.22 = or disjoint i64 %shl.26, %zext.48
  %inttoptr_bytes.18 = inttoptr i64 %or.22 to ptr addrspace(1)
  %.510 = load float, ptr addrspace(1) %inttoptr_bytes.18, align 4
  store float %.510, ptr %R14, align 4
  %.514 = load i32, ptr %R11, align 4
  %.518 = zext i1 %.500 to i32
  %add.29 = add i32 %.514, %trunc32.17
  %add.31 = add i32 %add.29, %.518
  store i32 %add.31, ptr %R17, align 4
  %.522 = load i32, ptr %R16, align 4
  %.524 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.522, i32 %shl.13)
  %.525 = extractvalue { i32, i1 } %.524, 0
  %.526 = extractvalue { i32, i1 } %.524, 1
  store i32 %.525, ptr %R24, align 4
  %.534 = load i32, ptr %R10, align 4
  %zext.50 = zext i32 %.534 to i64
  %.535 = load i32, ptr %R11, align 4
  %zext.51 = zext i32 %.535 to i64
  %shl.27 = shl nuw i64 %zext.51, 32
  %or.23 = or disjoint i64 %shl.27, %zext.50
  %inttoptr_bytes.19 = inttoptr i64 %or.23 to ptr addrspace(1)
  %.536 = load float, ptr addrspace(1) %inttoptr_bytes.19, align 4
  store float %.536, ptr %R10, align 4
  %.540 = load i32, ptr %R17, align 4
  %.544 = zext i1 %.526 to i32
  %add.33 = add i32 %.540, %trunc32.17
  %add.35 = add i32 %add.33, %.544
  %.548 = load i32, ptr %R24, align 4
  %.550 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.548, i32 %shl.13)
  %.551 = extractvalue { i32, i1 } %.550, 0
  %.552 = extractvalue { i32, i1 } %.550, 1
  store i32 %.551, ptr %R26, align 4
  %.560 = load i32, ptr %R16, align 4
  %zext.52 = zext i32 %.560 to i64
  %.561 = load i32, ptr %R17, align 4
  %zext.53 = zext i32 %.561 to i64
  %shl.28 = shl nuw i64 %zext.53, 32
  %or.24 = or disjoint i64 %shl.28, %zext.52
  %inttoptr_bytes.20 = inttoptr i64 %or.24 to ptr addrspace(1)
  %.562 = load float, ptr addrspace(1) %inttoptr_bytes.20, align 4
  store float %.562, ptr %R16, align 4
  %.570 = zext i1 %.552 to i32
  %add.37 = add i32 %add.35, %trunc32.17
  %add.39 = add i32 %add.37, %.570
  store i32 %add.39, ptr %R27, align 4
  %.574 = load i32, ptr %R26, align 4
  %.576 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.574, i32 %shl.13)
  %.577 = extractvalue { i32, i1 } %.576, 0
  %.578 = extractvalue { i32, i1 } %.576, 1
  store i32 %.577, ptr %R30, align 4
  %.586 = load i32, ptr %R24, align 4
  %zext.54 = zext i32 %.586 to i64
  %zext.55 = zext i32 %add.35 to i64
  %shl.29 = shl nuw i64 %zext.55, 32
  %or.25 = or disjoint i64 %shl.29, %zext.54
  %inttoptr_bytes.21 = inttoptr i64 %or.25 to ptr addrspace(1)
  %.588 = load float, ptr addrspace(1) %inttoptr_bytes.21, align 4
  store float %.588, ptr %R24, align 4
  %.592 = load i32, ptr %R27, align 4
  %.596 = zext i1 %.578 to i32
  %add.41 = add i32 %.592, %trunc32.17
  %add.43 = add i32 %add.41, %.596
  %.600 = load i32, ptr %R30, align 4
  %.602 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.600, i32 %shl.13)
  %.603 = extractvalue { i32, i1 } %.602, 0
  %.604 = extractvalue { i32, i1 } %.602, 1
  store i32 %.603, ptr %R32, align 4
  %.612 = load i32, ptr %R26, align 4
  %zext.56 = zext i32 %.612 to i64
  %.613 = load i32, ptr %R27, align 4
  %zext.57 = zext i32 %.613 to i64
  %shl.30 = shl nuw i64 %zext.57, 32
  %or.26 = or disjoint i64 %shl.30, %zext.56
  %inttoptr_bytes.22 = inttoptr i64 %or.26 to ptr addrspace(1)
  %.614 = load float, ptr addrspace(1) %inttoptr_bytes.22, align 4
  store float %.614, ptr %R26, align 4
  %.622 = zext i1 %.604 to i32
  %add.45 = add i32 %add.43, %trunc32.17
  %add.47 = add i32 %add.45, %.622
  %.626 = load i32, ptr %R32, align 4
  %.628 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.626, i32 %shl.13)
  %.629 = extractvalue { i32, i1 } %.628, 0
  %.630 = extractvalue { i32, i1 } %.628, 1
  store i32 %.629, ptr %R22, align 4
  %.638 = load i32, ptr %R30, align 4
  %zext.58 = zext i32 %.638 to i64
  %zext.59 = zext i32 %add.43 to i64
  %shl.31 = shl nuw i64 %zext.59, 32
  %or.27 = or disjoint i64 %shl.31, %zext.58
  %inttoptr_bytes.23 = inttoptr i64 %or.27 to ptr addrspace(1)
  %.640 = load float, ptr addrspace(1) %inttoptr_bytes.23, align 4
  store float %.640, ptr %R30, align 4
  %.648 = zext i1 %.630 to i32
  %add.49 = add i32 %add.47, %trunc32.17
  %add.51 = add i32 %add.49, %.648
  store i32 %add.51, ptr %R23, align 4
  %.652 = load i32, ptr %R22, align 4
  %.654 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.652, i32 %shl.13)
  %.655 = extractvalue { i32, i1 } %.654, 0
  %.656 = extractvalue { i32, i1 } %.654, 1
  store i32 %.655, ptr %R12, align 4
  %.664 = load i32, ptr %R32, align 4
  %zext.60 = zext i32 %.664 to i64
  %zext.61 = zext i32 %add.47 to i64
  %shl.32 = shl nuw i64 %zext.61, 32
  %or.28 = or disjoint i64 %shl.32, %zext.60
  %inttoptr_bytes.24 = inttoptr i64 %or.28 to ptr addrspace(1)
  %.666 = load float, ptr addrspace(1) %inttoptr_bytes.24, align 4
  store float %.666, ptr %R32, align 4
  %.670 = load i32, ptr %R23, align 4
  %.674 = zext i1 %.656 to i32
  %add.53 = add i32 %.670, %trunc32.17
  %add.55 = add i32 %add.53, %.674
  store i32 %add.55, ptr %R13, align 4
  %.678 = load i32, ptr %R22, align 4
  %zext.62 = zext i32 %.678 to i64
  %.679 = load i32, ptr %R23, align 4
  %zext.63 = zext i32 %.679 to i64
  %shl.33 = shl nuw i64 %zext.63, 32
  %or.29 = or disjoint i64 %shl.33, %zext.62
  %inttoptr_bytes.25 = inttoptr i64 %or.29 to ptr addrspace(1)
  %.680 = load float, ptr addrspace(1) %inttoptr_bytes.25, align 4
  store float %.680, ptr %R22, align 4
  %.684 = load i32, ptr %R12, align 4
  %zext.64 = zext i32 %.684 to i64
  %.685 = load i32, ptr %R13, align 4
  %zext.65 = zext i32 %.685 to i64
  %shl.34 = shl nuw i64 %zext.65, 32
  %or.30 = or disjoint i64 %shl.34, %zext.64
  %inttoptr_bytes.26 = inttoptr i64 %or.30 to ptr addrspace(1)
  %.686 = load float, ptr addrspace(1) %inttoptr_bytes.26, align 4
  store float %.686, ptr %R15, align 4
  %.690 = load i32, ptr %R12, align 4
  %zext.66 = zext i32 %.690 to i64
  %.691 = load i32, ptr %R13, align 4
  %zext.67 = zext i32 %.691 to i64
  %shl.35 = shl nuw i64 %zext.67, 32
  %or.31 = or disjoint i64 %shl.35, %zext.66
  %sext_UR4 = sext i32 %shl.13 to i64
  %base_plus_reg_offset = add i64 %or.31, %sext_UR4
  %inttoptr_bytes.27 = inttoptr i64 %base_plus_reg_offset to ptr addrspace(1)
  %.692 = load float, ptr addrspace(1) %inttoptr_bytes.27, align 4
  store float %.692, ptr %R17, align 4
  %.697 = add i32 %R42.0, -4
  %cmp.4.not = icmp eq i32 %.697, 0
  %.708 = load i32, ptr %R28, align 4
  %.709 = add i32 %.708, 4
  store i32 %.709, ptr %R28, align 4
  %.713 = load float, ptr %R35, align 4
  %.714 = load float, ptr %R40, align 4
  %.715 = load float, ptr %R2, align 4
  %fmul = fmul float %.713, %.714
  %fadd.4 = fadd float %fmul, %.715
  store float %fadd.4, ptr %R40, align 4
  %.719 = load float, ptr %R36, align 4
  %.720 = load float, ptr %R35, align 4
  %.721 = load float, ptr %R3, align 4
  %fmul.1 = fmul float %.719, %.720
  %fadd.5 = fadd float %fmul.1, %.721
  store float %fadd.5, ptr %R36, align 4
  %.726 = load float, ptr %R38, align 4
  %.727 = load float, ptr %R0, align 4
  %fmul.2 = fmul float %.720, %.726
  %fadd.6 = fadd float %fmul.2, %.727
  store float %fadd.6, ptr %R38, align 4
  %.731 = load float, ptr %R35, align 4
  %.732 = load float, ptr %R41, align 4
  %.733 = load float, ptr %R8, align 4
  %fmul.3 = fmul float %.731, %.732
  %fadd.7 = fadd float %fmul.3, %.733
  store float %fadd.7, ptr %R8, align 4
  %.737 = load float, ptr %R43, align 4
  %.738 = load float, ptr %R29, align 4
  %.739 = load float, ptr %R36, align 4
  %fmul.4 = fmul float %.737, %.738
  %fadd.8 = fadd float %fmul.4, %.739
  store float %fadd.8, ptr %R36, align 4
  %.744 = load float, ptr %R18, align 4
  %.745 = load float, ptr %R40, align 4
  %fmul.5 = fmul float %.738, %.744
  %fadd.9 = fadd float %fmul.5, %.745
  store float %fadd.9, ptr %R18, align 4
  %.749 = load float, ptr %R29, align 4
  %.750 = load float, ptr %R14, align 4
  %.751 = load float, ptr %R38, align 4
  %fmul.6 = fmul float %.749, %.750
  %fadd.10 = fadd float %fmul.6, %.751
  store float %fadd.10, ptr %R14, align 4
  %.756 = load float, ptr %R10, align 4
  %.757 = load float, ptr %R8, align 4
  %fmul.7 = fmul float %.749, %.756
  %fadd.11 = fadd float %fmul.7, %.757
  store float %fadd.11, ptr %R8, align 4
  %.761 = load float, ptr %R16, align 4
  %.762 = load float, ptr %R21, align 4
  %.763 = load float, ptr %R36, align 4
  %fmul.8 = fmul float %.761, %.762
  %fadd.12 = fadd float %fmul.8, %.763
  store float %fadd.12, ptr %R3, align 4
  %.768 = load float, ptr %R24, align 4
  %.769 = load float, ptr %R18, align 4
  %fmul.9 = fmul float %.762, %.768
  %fadd.13 = fadd float %fmul.9, %.769
  store float %fadd.13, ptr %R11, align 4
  %.773 = load float, ptr %R21, align 4
  %.774 = load float, ptr %R26, align 4
  %.775 = load float, ptr %R14, align 4
  %fmul.10 = fmul float %.773, %.774
  %fadd.14 = fadd float %fmul.10, %.775
  store float %fadd.14, ptr %R13, align 4
  %.780 = load float, ptr %R30, align 4
  %.781 = load float, ptr %R8, align 4
  %fmul.11 = fmul float %.773, %.780
  %fadd.15 = fadd float %fmul.11, %.781
  store float %fadd.15, ptr %R21, align 4
  %.785 = load float, ptr %R32, align 4
  %.786 = load float, ptr %R34, align 4
  %.787 = load float, ptr %R3, align 4
  %fmul.12 = fmul float %.785, %.786
  %fadd.16 = fadd float %fmul.12, %.787
  store float %fadd.16, ptr %R3, align 4
  %.792 = load float, ptr %R22, align 4
  %.793 = load float, ptr %R11, align 4
  %fmul.13 = fmul float %.786, %.792
  %fadd.17 = fadd float %fmul.13, %.793
  store float %fadd.17, ptr %R2, align 4
  %.797 = load float, ptr %R34, align 4
  %.798 = load float, ptr %R15, align 4
  %.799 = load float, ptr %R13, align 4
  %fmul.14 = fmul float %.797, %.798
  %fadd.18 = fadd float %fmul.14, %.799
  store float %fadd.18, ptr %R0, align 4
  %.804 = load float, ptr %R17, align 4
  %.805 = load float, ptr %R21, align 4
  %fmul.15 = fmul float %.797, %.804
  %fadd.19 = fadd float %fmul.15, %.805
  store float %fadd.19, ptr %R8, align 4
  br i1 %cmp.4.not, label %.L_x_1.loopexit, label %.L_x_2

.L_x_1.loopexit:                                  ; preds = %.L_x_2
  br label %.L_x_1

.L_x_1:                                           ; preds = %.L_x_1.loopexit, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250
  br i1 %.225.not, label %.L_x_0, label %.L_x_1_split_0x07b0

.L_x_1_split_0x07b0:                              ; preds = %.L_x_1
  %.817 = load i32, ptr %R7, align 4
  %.818 = load i32, ptr %R28, align 4
  %imad_mul.18 = mul i32 %.817, %Arg_10
  %imad_add.18 = add i32 %imad_mul.18, %.818
  store i32 %imad_add.18, ptr %R10, align 4
  %.821 = load i32, ptr %R20, align 4
  %.822 = sub i32 0, %.821
  store i32 %.822, ptr %R20, align 4
  %.827 = load i32, ptr %R28, align 4
  %imad_mul.19 = mul i32 %.827, %Arg_11
  store i32 %imad_mul.19, ptr %R28, align 4
  %zext.69 = zext i32 %Arg_11 to i64
  %2 = shl nsw i64 %ashr.1, 34
  %3 = shl nuw nsw i64 %zext.69, 2
  %shl.37 = or disjoint i64 %2, %3
  %lshr.1 = lshr i64 %shl.37, 32
  %trunc32.24 = trunc nuw i64 %lshr.1 to i32
  %.835 = load i32, ptr %R10, align 4
  %.836 = load i32, ptr %R9, align 4
  %imad_ext1.10 = zext i32 %.835 to i64
  %imad_ext2.10 = zext i32 %.836 to i64
  %imad_mul.20 = mul nuw i64 %imad_ext1.10, %imad_ext2.10
  %.837 = ptrtoint ptr %Arg_0 to i64
  %imad_add.20 = add i64 %imad_mul.20, %.837
  %.839 = lshr i64 %imad_add.20, 32
  %trunc32.25 = trunc nuw i64 %.839 to i32
  %trunc32.26 = trunc i64 %imad_add.20 to i32
  store i32 %trunc32.26, ptr %R10, align 4
  store i32 %trunc32.25, ptr %R11, align 4
  %shl.39 = shl i32 %Arg_11, 2
  %.847 = load i32, ptr %R28, align 4
  %.848 = load i32, ptr %R5, align 4
  %imad_mul.21 = shl i32 %.847, 2
  %imad_add.21 = add i32 %imad_mul.21, %.848
  store i32 %imad_add.21, ptr %R13, align 4
  %.851 = load i32, ptr %R10, align 4
  store i32 %.851, ptr %R12, align 4
  %.854 = load i32, ptr %R11, align 4
  store i32 %.854, ptr %R23, align 4
  %.857 = load i32, ptr %R4, align 4
  %nvvm_blockdim_x.1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
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
  %imad_mul.24 = mul nuw i64 %imad_ext1.11, %imad_ext2.11
  %.864 = ptrtoint ptr %Arg_3 to i64
  %imad_add.24 = add i64 %imad_mul.24, %.864
  %.866 = lshr i64 %imad_add.24, 32
  %trunc32.28 = trunc nuw i64 %.866 to i32
  %trunc32.29 = trunc i64 %imad_add.24 to i32
  store i32 %trunc32.29, ptr %R10, align 4
  store i32 %trunc32.28, ptr %R11, align 4
  %.870 = load i32, ptr %R23, align 4
  store i32 %.870, ptr %R13, align 4
  %.875 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %trunc32.29, i32 %shl.39)
  %.876 = extractvalue { i32, i1 } %.875, 0
  %.877 = extractvalue { i32, i1 } %.875, 1
  store i32 %.876, ptr %R14, align 4
  %.885 = load i32, ptr %R10, align 4
  %zext.74 = zext i32 %.885 to i64
  %.886 = load i32, ptr %R11, align 4
  %zext.75 = zext i32 %.886 to i64
  %shl.40 = shl nuw i64 %zext.75, 32
  %or.34 = or disjoint i64 %shl.40, %zext.74
  %inttoptr_bytes.28 = inttoptr i64 %or.34 to ptr addrspace(1)
  %.887 = load float, ptr addrspace(1) %inttoptr_bytes.28, align 4
  store float %.887, ptr %R10, align 4
  %.891 = load i32, ptr %R11, align 4
  %.895 = zext i1 %.877 to i32
  %add.57 = add i32 %.891, %trunc32.24
  %add.59 = add i32 %add.57, %.895
  store i32 %add.59, ptr %R15, align 4
  %.899 = load i32, ptr %R14, align 4
  %.901 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.899, i32 %shl.39)
  %.902 = extractvalue { i32, i1 } %.901, 0
  %.903 = extractvalue { i32, i1 } %.901, 1
  store i32 %.902, ptr %R16, align 4
  %.911 = load i32, ptr %R12, align 4
  %zext.76 = zext i32 %.911 to i64
  %.912 = load i32, ptr %R13, align 4
  %zext.77 = zext i32 %.912 to i64
  %shl.41 = shl nuw i64 %zext.77, 32
  %or.35 = or disjoint i64 %shl.41, %zext.76
  %inttoptr_bytes.29 = inttoptr i64 %or.35 to ptr addrspace(1)
  %.913 = load float, ptr addrspace(1) %inttoptr_bytes.29, align 4
  store float %.913, ptr %R13, align 4
  %.917 = load i32, ptr %R15, align 4
  %.921 = zext i1 %.903 to i32
  %add.61 = add i32 %.917, %trunc32.24
  %add.63 = add i32 %add.61, %.921
  store i32 %add.63, ptr %R17, align 4
  %.925 = load i32, ptr %R14, align 4
  %zext.78 = zext i32 %.925 to i64
  %.926 = load i32, ptr %R15, align 4
  %zext.79 = zext i32 %.926 to i64
  %shl.42 = shl nuw i64 %zext.79, 32
  %or.36 = or disjoint i64 %shl.42, %zext.78
  %inttoptr_bytes.30 = inttoptr i64 %or.36 to ptr addrspace(1)
  %.927 = load float, ptr addrspace(1) %inttoptr_bytes.30, align 4
  store float %.927, ptr %R14, align 4
  %.931 = load i32, ptr %R16, align 4
  %zext.80 = zext i32 %.931 to i64
  %.932 = load i32, ptr %R17, align 4
  %zext.81 = zext i32 %.932 to i64
  %shl.43 = shl nuw i64 %zext.81, 32
  %or.37 = or disjoint i64 %shl.43, %zext.80
  %inttoptr_bytes.31 = inttoptr i64 %or.37 to ptr addrspace(1)
  %.933 = load float, ptr addrspace(1) %inttoptr_bytes.31, align 4
  store float %.933, ptr %R19, align 4
  %.937 = load i32, ptr %R16, align 4
  %zext.82 = zext i32 %.937 to i64
  %.938 = load i32, ptr %R17, align 4
  %zext.83 = zext i32 %.938 to i64
  %shl.44 = shl nuw i64 %zext.83, 32
  %or.38 = or disjoint i64 %shl.44, %zext.82
  %sext_UR4.1 = sext i32 %shl.39 to i64
  %base_plus_reg_offset.1 = add i64 %or.38, %sext_UR4.1
  %inttoptr_bytes.32 = inttoptr i64 %base_plus_reg_offset.1 to ptr addrspace(1)
  %.939 = load float, ptr addrspace(1) %inttoptr_bytes.32, align 4
  store float %.939, ptr %R21, align 4
  %.943 = load i32, ptr %R20, align 4
  %.944 = add i32 %.943, 1
  store i32 %.944, ptr %R20, align 4
  %cmp.5.not = icmp eq i32 %.944, 0
  %.957 = load i32, ptr %R12, align 4
  %.958 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.957, i32 4)
  %.959 = extractvalue { i32, i1 } %.958, 0
  %.960 = extractvalue { i32, i1 } %.958, 1
  store i32 %.959, ptr %R12, align 4
  %.969 = load i32, ptr %R18, align 4
  %imad_mul.26 = shl i32 %Arg_11, 2
  %imad_add.26 = add i32 %imad_mul.26, %.969
  store i32 %imad_add.26, ptr %R18, align 4
  %.972 = load i32, ptr %R23, align 4
  %.975 = zext i1 %.960 to i32
  %add.67 = add i32 %.972, %.975
  store i32 %add.67, ptr %R23, align 4
  %.979 = load float, ptr %R10, align 4
  %.980 = load float, ptr %R13, align 4
  %.981 = load float, ptr %R3, align 4
  %fmul.16 = fmul float %.979, %.980
  %fadd.20 = fadd float %fmul.16, %.981
  store float %fadd.20, ptr %R3, align 4
  %.986 = load float, ptr %R14, align 4
  %.987 = load float, ptr %R2, align 4
  %fmul.17 = fmul float %.980, %.986
  %fadd.21 = fadd float %fmul.17, %.987
  store float %fadd.21, ptr %R2, align 4
  %.991 = load float, ptr %R13, align 4
  %.992 = load float, ptr %R19, align 4
  %.993 = load float, ptr %R0, align 4
  %fmul.18 = fmul float %.991, %.992
  %fadd.22 = fadd float %fmul.18, %.993
  store float %fadd.22, ptr %R0, align 4
  %.998 = load float, ptr %R21, align 4
  %.999 = load float, ptr %R8, align 4
  %fmul.19 = fmul float %.991, %.998
  %fadd.23 = fadd float %fmul.19, %.999
  store float %fadd.23, ptr %R8, align 4
  br i1 %cmp.5.not, label %.L_x_0.loopexit, label %.L_x_3

.L_x_0.loopexit:                                  ; preds = %.L_x_3
  br label %.L_x_0

.L_x_0:                                           ; preds = %.L_x_0.loopexit, %.L_x_1, %.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0
  br i1 true, label %.L_x_4, label %.L_x_0_split_0x09f0

.L_x_0_split_0x09f0:                              ; preds = %.L_x_0
  br i1 poison, label %.L_x_5, label %.L_x_0_split_0x0a70

.L_x_0_split_0x0a70:                              ; preds = %.L_x_0_split_0x09f0
  br label %.L_x_6

.L_x_6:                                           ; preds = %.L_x_6, %.L_x_0_split_0x0a70
  br i1 poison, label %.L_x_6, label %.L_x_5.loopexit

.L_x_5.loopexit:                                  ; preds = %.L_x_6
  br label %.L_x_5

.L_x_5:                                           ; preds = %.L_x_5.loopexit, %.L_x_0_split_0x09f0
  br i1 poison, label %.L_x_4, label %.L_x_5_split_0x0f80

.L_x_5_split_0x0f80:                              ; preds = %.L_x_5
  br label %.L_x_7

.L_x_7:                                           ; preds = %.L_x_7, %.L_x_5_split_0x0f80
  br i1 poison, label %.L_x_7, label %.L_x_4.loopexit

.L_x_4.loopexit:                                  ; preds = %.L_x_7
  br label %.L_x_4

.L_x_4:                                           ; preds = %.L_x_4.loopexit, %.L_x_5, %.L_x_0
  %.1828 = load float, ptr %R0, align 4
  %llvm_fabs_result = tail call float @llvm.fabs.f32(float %.1828)
  %fcmp_unordered = fcmp ult float %llvm_fabs_result, 0x3FE3333340000000
  %.1835 = load i32, ptr %R7, align 4
  %imad_mul.40 = mul i32 %.1835, %Arg_11
  %imad_add.41 = add i32 %imad_mul.40, %imad_add.1
  store float 0x41CDDDCC40000000, ptr %R13, align 4
  store i32 1132199936, ptr %R14, align 4
  %.1845 = load i32, ptr %R9, align 4
  %imad_ext1.16 = zext i32 %imad_add.41 to i64
  %imad_ext2.16 = zext i32 %.1845 to i64
  %imad_mul.42 = mul nuw i64 %imad_ext1.16, %imad_ext2.16
  %.1846 = ptrtoint ptr %Arg_2 to i64
  %imad_add.43 = add i64 %imad_mul.42, %.1846
  %.1848 = lshr i64 %imad_add.43, 32
  %trunc32.44 = trunc nuw i64 %.1848 to i32
  %trunc32.45 = trunc i64 %imad_add.43 to i32
  store i32 %trunc32.45, ptr %R4, align 4
  store i32 %trunc32.44, ptr %R5, align 4
  %.1852 = load float, ptr %R2, align 4
  %.1854 = load float, ptr %R13, align 4
  %4 = fmul float %.1852, %.1854
  %fadd.44 = fsub float 5.000000e-01, %4
  store float %fadd.44, ptr %R7, align 4
  br i1 %fcmp_unordered, label %.L_x_4_split_0x1200, label %.L_x_4_conditionalExpr_0x11f0

.L_x_4_conditionalExpr_0x11f0:                    ; preds = %.L_x_4
  %.1862 = load float, ptr %R0, align 4
  %llvm_fabs_result.1 = tail call float @llvm.fabs.f32(float %.1862)
  %fmul.41 = fmul float %llvm_fabs_result.1, 0x4007154760000000
  store float %fmul.41, ptr %R11, align 4
  br label %.L_x_4_split_0x1200

.L_x_4_split_0x1200:                              ; preds = %.L_x_4_conditionalExpr_0x11f0, %.L_x_4
  %.1868 = load i32, ptr %R4, align 4
  %zext.152 = zext i32 %.1868 to i64
  %.1869 = load i32, ptr %R5, align 4
  %zext.153 = zext i32 %.1869 to i64
  %shl.82 = shl nuw i64 %zext.153, 32
  %or.70 = or disjoint i64 %shl.82, %zext.152
  %inttoptr_bytes.58 = inttoptr i64 %or.70 to ptr addrspace(1)
  %.1870 = load float, ptr addrspace(1) %inttoptr_bytes.58, align 4
  store float %.1870, ptr %R4, align 4
  %.1874 = load float, ptr %R7, align 4
  %.1875 = load float, ptr %R14, align 4
  %fmul.42 = fmul float %.1874, %.1875
  %fadd.45 = fadd float %fmul.42, 0x4168000020000000
  store float %fadd.45, ptr %R7, align 4
  br i1 %fcmp_unordered, label %.L_x_4_split_0x1230, label %.L_x_4_split_0x1200_conditionalExpr_0x1220

.L_x_4_split_0x1200_conditionalExpr_0x1220:       ; preds = %.L_x_4_split_0x1200
  %.1883 = load float, ptr %R0, align 4
  %llvm_fabs_result.2 = tail call float @llvm.fabs.f32(float %.1883)
  %fcmp_unordered.1 = fcmp ult float %llvm_fabs_result.2, 0x4022059680000000
  br label %.L_x_4_split_0x1230

.L_x_4_split_0x1230:                              ; preds = %.L_x_4_split_0x1200_conditionalExpr_0x1220, %.L_x_4_split_0x1200
  %P0.2 = phi i1 [ %fcmp_unordered.1, %.L_x_4_split_0x1200_conditionalExpr_0x1220 ], [ true, %.L_x_4_split_0x1200 ]
  br i1 %fcmp_unordered, label %.L_x_4_split_0x1260, label %.L_x_4_split_0x1230_conditionalExpr_0x1240

.L_x_4_split_0x1230_conditionalExpr_0x1240:       ; preds = %.L_x_4_split_0x1230
  store float 0x41CFC00000000000, ptr %R16, align 4
  %.1906 = load float, ptr %R11, align 4
  %llvm_exp2_f32_result = tail call float @llvm.exp2.f32(float %.1906)
  store float %llvm_exp2_f32_result, ptr %R11, align 4
  br label %.L_x_4_split_0x1260

.L_x_4_split_0x1260:                              ; preds = %.L_x_4_split_0x1230, %.L_x_4_split_0x1230_conditionalExpr_0x1240
  %.1912 = load float, ptr %R7, align 4
  %fadd.46 = fadd float %.1912, 0xC168000FE0000000
  store float %fadd.46, ptr %R9, align 4
  %.1917.cast = bitcast float %.1912 to i32
  %shl.84 = shl i32 %.1917.cast, 23
  store i32 %shl.84, ptr %R7, align 4
  %.1921 = load float, ptr %R8, align 4
  %.1923 = load float, ptr %R13, align 4
  %5 = fmul float %.1921, %.1923
  %fadd.47 = fsub float 5.000000e-01, %5
  store float %fadd.47, ptr %R5, align 4
  %.1927 = load float, ptr %R2, align 4
  %.1929 = load float, ptr %R9, align 4
  %fmul.44 = fmul float %.1927, 0xBFF7154760000000
  %fadd.48 = fsub float %fmul.44, %.1929
  %fmul.45 = fmul float %.1927, 0xBE54AE0C00000000
  %fadd.49 = fadd float %fmul.45, %fadd.48
  store float %fadd.49, ptr %R9, align 4
  %.1940 = load float, ptr %R3, align 4
  %.1942 = load float, ptr %R13, align 4
  %6 = fmul float %.1940, %.1942
  %fadd.50 = fsub float 5.000000e-01, %6
  store float %fadd.50, ptr %R2, align 4
  %llvm_exp2_f32_result.1 = tail call float @llvm.exp2.f32(float %fadd.49)
  store float %llvm_exp2_f32_result.1, ptr %R12, align 4
  br i1 %fcmp_unordered, label %.L_x_4_split_0x12f0, label %.L_x_4_split_0x1260_conditionalExpr_0x12e0

.L_x_4_split_0x1260_conditionalExpr_0x12e0:       ; preds = %.L_x_4_split_0x1260
  %.1954 = load float, ptr %R11, align 4
  %fadd.51 = fadd float %.1954, 1.000000e+00
  store float %fadd.51, ptr %R13, align 4
  br label %.L_x_4_split_0x12f0

.L_x_4_split_0x12f0:                              ; preds = %.L_x_4_split_0x1260_conditionalExpr_0x12e0, %.L_x_4_split_0x1260
  %.1960 = load float, ptr %R2, align 4
  %.1961 = load float, ptr %R14, align 4
  %fmul.47 = fmul float %.1960, %.1961
  %fadd.52 = fadd float %fmul.47, 0x4168000020000000
  store float %fadd.52, ptr %R2, align 4
  %.1965 = load float, ptr %R5, align 4
  %fmul.48 = fmul float %.1965, %.1961
  %fadd.53 = fadd float %fmul.48, 0x4168000020000000
  store float %fadd.53, ptr %R14, align 4
  %fadd.54 = fadd float %fadd.52, 0xC168000FE0000000
  store float %fadd.54, ptr %R10, align 4
  br i1 %fcmp_unordered, label %.L_x_4_split_0x1330, label %.L_x_4_split_0x12f0_conditionalExpr_0x1320

.L_x_4_split_0x12f0_conditionalExpr_0x1320:       ; preds = %.L_x_4_split_0x12f0
  %.1978 = load float, ptr %R13, align 4
  %.1979 = fdiv float 1.000000e+00, %.1978
  store float %.1979, ptr %R13, align 4
  br label %.L_x_4_split_0x1330

.L_x_4_split_0x1330:                              ; preds = %.L_x_4_split_0x12f0_conditionalExpr_0x1320, %.L_x_4_split_0x12f0
  %.1985 = load float, ptr %R14, align 4
  %fadd.55 = fadd float %.1985, 0xC168000FE0000000
  store float %fadd.55, ptr %R5, align 4
  %.1990.cast = bitcast float %.1985 to i32
  %shl.86 = shl i32 %.1990.cast, 23
  store i32 %shl.86, ptr %R14, align 4
  %.1993 = load float, ptr %R3, align 4
  %.1995 = load float, ptr %R10, align 4
  %fmul.49 = fmul float %.1993, 0xBFF7154760000000
  %fadd.56 = fsub float %fmul.49, %.1995
  store float %fadd.56, ptr %R10, align 4
  %.2000 = load float, ptr %R8, align 4
  %.2002 = load float, ptr %R5, align 4
  %fmul.50 = fmul float %.2000, 0xBFF7154760000000
  %fadd.57 = fsub float %fmul.50, %.2002
  store float %fadd.57, ptr %R5, align 4
  %.2007 = load float, ptr %R3, align 4
  %.2009 = load float, ptr %R10, align 4
  %fmul.51 = fmul float %.2007, 0xBE54AE0C00000000
  %fadd.58 = fadd float %fmul.51, %.2009
  store float %fadd.58, ptr %R10, align 4
  %.2013 = load float, ptr %R7, align 4
  %.2014 = load float, ptr %R12, align 4
  %fmul.52 = fmul float %.2013, %.2014
  %fadd.59 = fadd float %fmul.52, 1.000000e+00
  store float %fadd.59, ptr %R15, align 4
  %.2018 = load float, ptr %R8, align 4
  %.2020 = load float, ptr %R5, align 4
  %fmul.53 = fmul float %.2018, 0xBE54AE0C00000000
  %fadd.60 = fadd float %fmul.53, %.2020
  store float %fadd.60, ptr %R11, align 4
  br i1 %fcmp_unordered, label %.L_x_4_split_0x1330_conditionalExpr_0x13a0, label %.L_x_4_split_0x13b0

.L_x_4_split_0x1330_conditionalExpr_0x13a0:       ; preds = %.L_x_4_split_0x1330
  store i32 1015083138, ptr %R8, align 4
  br label %.L_x_4_split_0x13b0

.L_x_4_split_0x13b0:                              ; preds = %.L_x_4_split_0x1330_conditionalExpr_0x13a0, %.L_x_4_split_0x1330
  %.2032 = load i32, ptr %R15, align 4
  %.2033 = add i32 %.2032, 25165824
  store i32 %.2033, ptr %R7, align 4
  br i1 %fcmp_unordered, label %.L_x_4_split_0x13b0_conditionalExpr_0x13c0, label %.L_x_4_split_0x13d0

.L_x_4_split_0x13b0_conditionalExpr_0x13c0:       ; preds = %.L_x_4_split_0x13b0
  %.2041 = load float, ptr %R0, align 4
  %fmul.54 = fmul float %.2041, %.2041
  store float %fmul.54, ptr %R5, align 4
  br label %.L_x_4_split_0x13d0

.L_x_4_split_0x13d0:                              ; preds = %.L_x_4_split_0x13b0_conditionalExpr_0x13c0, %.L_x_4_split_0x13b0
  %.2048 = load float, ptr %R10, align 4
  %llvm_exp2_f32_result.2 = tail call float @llvm.exp2.f32(float %.2048)
  store float %llvm_exp2_f32_result.2, ptr %R3, align 4
  br i1 %fcmp_unordered, label %.L_x_4_split_0x13f0, label %.L_x_4_split_0x13d0_conditionalExpr_0x13e0

.L_x_4_split_0x13d0_conditionalExpr_0x13e0:       ; preds = %.L_x_4_split_0x13d0
  %.2056 = load float, ptr %R13, align 4
  %.2057 = load float, ptr %R16, align 4
  %fmul.55 = fmul float %.2056, -2.000000e+00
  %fadd.61 = fadd float %fmul.55, %.2057
  store float %fadd.61, ptr %R13, align 4
  br label %.L_x_4_split_0x13f0

.L_x_4_split_0x13f0:                              ; preds = %.L_x_4_split_0x13d0_conditionalExpr_0x13e0, %.L_x_4_split_0x13d0
  %.2063 = load i32, ptr %R7, align 4
  %.2065 = and i32 %.2063, 2139095040
  store i32 %.2065, ptr %R9, align 4
  br i1 %fcmp_unordered, label %.L_x_4_split_0x13f0_conditionalExpr_0x1400, label %.L_x_4_split_0x1410

.L_x_4_split_0x13f0_conditionalExpr_0x1400:       ; preds = %.L_x_4_split_0x13f0
  %.2072 = load float, ptr %R5, align 4
  %.2073 = load float, ptr %R8, align 4
  %fmul.56 = fmul float %.2072, %.2073
  %fadd.62 = fadd float %fmul.56, 0xBFAAC795C0000000
  store float %fadd.62, ptr %R8, align 4
  br label %.L_x_4_split_0x1410

.L_x_4_split_0x1410:                              ; preds = %.L_x_4_split_0x13f0_conditionalExpr_0x1400, %.L_x_4_split_0x13f0
  br i1 %fcmp_unordered, label %.L_x_4_split_0x1430_conditionalExpr_0x1430, label %.L_x_4_split_0x1410_conditionalExpr_0x1420

.L_x_4_split_0x1410_conditionalExpr_0x1420:       ; preds = %.L_x_4_split_0x1410
  %.2086 = load float, ptr %R13, align 4
  %fsel = select i1 %P0.2, float %.2086, float 1.000000e+00
  store float %fsel, ptr %R13, align 4
  br label %.L_x_4_split_0x1440

.L_x_4_split_0x1430_conditionalExpr_0x1430:       ; preds = %.L_x_4_split_0x1410
  %.2099 = load float, ptr %R5, align 4
  %.2100 = load float, ptr %R8, align 4
  %fmul.57 = fmul float %.2099, %.2100
  %fadd.63 = fadd float %fmul.57, 0x3FC10B2820000000
  store float %fadd.63, ptr %R8, align 4
  br label %.L_x_4_split_0x1440

.L_x_4_split_0x1440:                              ; preds = %.L_x_4_split_0x1410_conditionalExpr_0x1420, %.L_x_4_split_0x1430_conditionalExpr_0x1430
  %.2106 = load float, ptr %R11, align 4
  %llvm_exp2_f32_result.3 = tail call float @llvm.exp2.f32(float %.2106)
  store float %llvm_exp2_f32_result.3, ptr %R11, align 4
  %.2110 = load i32, ptr %R9, align 4
  %cmp.8 = icmp sgt i32 %.2110, 33554431
  br i1 %fcmp_unordered, label %.L_x_4_split_0x1440_conditionalExpr_0x1460, label %.L_x_4_split_0x1470_conditionalExpr_0x1470

.L_x_4_split_0x1440_conditionalExpr_0x1460:       ; preds = %.L_x_4_split_0x1440
  %.2121 = load float, ptr %R5, align 4
  %.2122 = load float, ptr %R8, align 4
  %fmul.58 = fmul float %.2121, %.2122
  %fadd.64 = fadd float %fmul.58, 0xBFD5553DA0000000
  store float %fadd.64, ptr %R8, align 4
  %fmul.59 = fmul float %.2121, %fadd.64
  %fadd.65 = fadd float %fmul.59, 0.000000e+00
  store float %fadd.65, ptr %R7, align 4
  br label %.L_x_4_split_0x1490

.L_x_4_split_0x1470_conditionalExpr_0x1470:       ; preds = %.L_x_4_split_0x1440
  %.2132 = load i32, ptr %R13, align 4
  %.2133 = load i32, ptr %R0, align 4
  %.21364 = and i32 %.2133, -2147483648
  %.2137 = or i32 %.2132, %.21364
  store i32 %.2137, ptr %R10, align 4
  br label %.L_x_4_split_0x1490

.L_x_4_split_0x1490:                              ; preds = %.L_x_4_split_0x1470_conditionalExpr_0x1470, %.L_x_4_split_0x1440_conditionalExpr_0x1460
  %.2153 = load float, ptr %R2, align 4
  %.2154 = load float, ptr %R3, align 4
  %fmul.60 = fmul float %.2153, %.2154
  %fadd.66 = fadd float %fmul.60, 1.000000e+00
  store float %fadd.66, ptr %R2, align 4
  %zext.160 = zext i32 %imad_add.41 to i64
  %shl.87 = shl nuw i64 %zext.160, 32
  %ashr.7 = ashr i64 %shl.87, 63
  %trunc32.48 = trunc nsw i64 %ashr.7 to i32
  store i32 %trunc32.48, ptr %R3, align 4
  br i1 %fcmp_unordered, label %.L_x_4_split_0x1490_conditionalExpr_0x14b0, label %.L_x_4_split_0x14c0

.L_x_4_split_0x1490_conditionalExpr_0x14b0:       ; preds = %.L_x_4_split_0x1490
  %.2166 = load float, ptr %R7, align 4
  %.2167 = load float, ptr %R0, align 4
  %fmul.61 = fmul float %.2166, %.2167
  %fadd.67 = fadd float %fmul.61, %.2167
  store float %fadd.67, ptr %R10, align 4
  br label %.L_x_4_split_0x14c0

.L_x_4_split_0x14c0:                              ; preds = %.L_x_4_split_0x1490_conditionalExpr_0x14b0, %.L_x_4_split_0x1490
  %.2174 = load float, ptr %R14, align 4
  %.2175 = load float, ptr %R11, align 4
  %fmul.62 = fmul float %.2174, %.2175
  %fadd.68 = fadd float %fmul.62, 1.000000e+00
  store float %fadd.68, ptr %R5, align 4
  br i1 %cmp.8, label %.L_x_9, label %.L_x_4_split_0x14e0_CALL_0x1510

.L_x_4_split_0x14e0_CALL_0x1510:                  ; preds = %.L_x_4_split_0x14c0
  store i32 5376, ptr %R14, align 4
  %.2188 = load i32, ptr %R15, align 4
  %shl.89 = shl i32 %.2188, 1
  store i32 %shl.89, ptr %R0, align 4
  %7 = lshr i32 %shl.89, 24
  store i32 %7, ptr %R16, align 4
  %cmp.9 = icmp ugt i32 %shl.89, 16777215
  br i1 %cmp.9, label %.L_x_21...1, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1": ; preds = %.L_x_4_split_0x14e0_CALL_0x1510
  %.2208 = load i32, ptr %R15, align 4
  %imad_shl.2 = shl i32 %.2208, 2
  store i32 %imad_shl.2, ptr %R0, align 4
  %cmp.10.not = icmp eq i32 %imad_shl.2, 0
  br i1 %cmp.10.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"
  %.2222 = load float, ptr %R15, align 4
  %fmul.63 = fmul float %.2222, 0x43F0000000000000
  %fadd.69 = fadd float %fmul.63, 0.000000e+00
  store float %fadd.69, ptr %R8, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"
  %.2228 = load float, ptr %R15, align 4
  %fmul.64 = fmul float %.2228, 0x43F0000000000000
  %fadd.70 = fadd float %fmul.64, 0.000000e+00
  store float %fadd.70, ptr %R8, align 4
  br i1 %cmp.10.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
  %.2238 = load float, ptr %R15, align 4
  %.2239 = fdiv float 1.000000e+00, %.2238
  store float %.2239, ptr %R0, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
  %.2245 = load float, ptr %R15, align 4
  %.2246 = fdiv float 1.000000e+00, %.2245
  store float %.2246, ptr %R0, align 4
  br i1 %cmp.10.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
  %.2256 = load float, ptr %R8, align 4
  %.2257 = fdiv float 1.000000e+00, %.2256
  store float %.2257, ptr %R9, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
  %.2263 = load float, ptr %R8, align 4
  %.2264 = fdiv float 1.000000e+00, %.2263
  store float %.2264, ptr %R9, align 4
  br i1 %cmp.10.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
  %.2274 = load float, ptr %R8, align 4
  %.2275 = load float, ptr %R9, align 4
  %fmul.65 = fmul float %.2274, %.2275
  %fadd.71 = fadd float %fmul.65, -1.000000e+00
  store float %fadd.71, ptr %R11, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
  %.2281 = load float, ptr %R8, align 4
  %.2282 = load float, ptr %R9, align 4
  %fmul.66 = fmul float %.2281, %.2282
  %fadd.72 = fadd float %fmul.66, -1.000000e+00
  store float %fadd.72, ptr %R11, align 4
  br i1 %cmp.10.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
  %.2292 = load float, ptr %R11, align 4
  %.2297 = tail call i1 @llvm.is.fpclass.f32(float %.2292, i32 144)
  %8 = fsub float 0.000000e+00, %.2292
  %9 = tail call i1 @llvm.is.fpclass.f32(float %8, i32 144)
  %10 = select i1 %.2297, i1 true, i1 %9
  %.2308 = select i1 %10, float 0.000000e+00, float %8
  store float %.2308, ptr %R12, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
  %.2314 = load float, ptr %R11, align 4
  %.2319 = tail call i1 @llvm.is.fpclass.f32(float %.2314, i32 144)
  %11 = fsub float 0.000000e+00, %.2314
  %12 = tail call i1 @llvm.is.fpclass.f32(float %11, i32 144)
  %13 = select i1 %.2319, i1 true, i1 %12
  %.2330 = select i1 %13, float 0.000000e+00, float %11
  store float %.2330, ptr %R12, align 4
  br i1 %cmp.10.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
  %.2340 = load float, ptr %R9, align 4
  %.2341 = load float, ptr %R12, align 4
  %fmul.67 = fmul float %.2340, %.2341
  %fadd.75 = fadd float %fmul.67, %.2340
  store float %fadd.75, ptr %R12, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
  %.2348 = load float, ptr %R9, align 4
  %.2349 = load float, ptr %R12, align 4
  %fmul.68 = fmul float %.2348, %.2349
  %fadd.76 = fadd float %fmul.68, %.2348
  store float %fadd.76, ptr %R12, align 4
  br i1 %cmp.10.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
  %.2360 = load float, ptr %R12, align 4
  %fmul.69 = fmul float %.2360, 0x43F0000000000000
  %fadd.77 = fadd float %fmul.69, 0.000000e+00
  store float %fadd.77, ptr %R0, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
  %.2366 = load float, ptr %R12, align 4
  %fmul.70 = fmul float %.2366, 0x43F0000000000000
  %fadd.78 = fadd float %fmul.70, 0.000000e+00
  store float %fadd.78, ptr %R0, align 4
  br label %.L_x_20...1

.L_x_21...1:                                      ; preds = %.L_x_4_split_0x14e0_CALL_0x1510
  %.2374 = load i32, ptr %R16, align 4
  %.2375 = add i32 %.2374, -253
  store i32 %.2375, ptr %R18, align 4
  %cmp.11 = icmp sgt i32 %.2375, 1
  br i1 %cmp.11, label %.L_x_23...1, label %.L_x_21_split_0x1a90...1

.L_x_21_split_0x1a90...1:                         ; preds = %.L_x_21...1
  %.2390 = load i32, ptr %R15, align 4
  %.2392 = and i32 %.2390, 8388607
  store i32 %.2392, ptr %R0, align 4
  store i32 3, ptr %R13, align 4
  %.2399 = or disjoint i32 %.2392, 1065353216
  store i32 %.2399, ptr %R0, align 4
  %.2405 = load i32, ptr %R18, align 4
  %zext.171 = zext nneg i32 %.2405 to i64
  %shl.92 = shl i64 3, %zext.171
  %trunc32.51 = trunc i64 %shl.92 to i32
  store i32 %trunc32.51, ptr %R13, align 4
  %sint_to_f32 = uitofp nneg i32 %.2399 to float
  %.2409 = fdiv float 1.000000e+00, %sint_to_f32
  %.2410 = fptosi float %.2409 to i32
  store i32 %.2410, ptr %R9, align 4
  %.2413 = load float, ptr %R0, align 4
  %.2414.cast = bitcast i32 %.2410 to float
  %fmul.71 = fmul float %.2413, %.2414.cast
  %fadd.79 = fadd float %fmul.71, -1.000000e+00
  %.2423 = tail call i1 @llvm.is.fpclass.f32(float %fadd.79, i32 144)
  %14 = fsub float 0.000000e+00, %fadd.79
  %15 = tail call i1 @llvm.is.fpclass.f32(float %14, i32 144)
  %16 = select i1 %.2423, i1 true, i1 %15
  %.2434 = select i1 %16, float 0.000000e+00, float %14
  store float %.2434, ptr %R8, align 4
  %.2438 = load float, ptr %R9, align 4
  %fmul.72 = fmul float %.2438, %.2434
  %fadd.81 = fadd float %fmul.72, %.2438
  store float %fadd.81, ptr %R11, align 4
  %fmul.73 = fmul float %.2438, %.2434
  %fadd.82 = fadd float %fmul.73, %.2438
  store float %fadd.82, ptr %R12, align 4
  %.2450.cast = bitcast float %fadd.81 to i32
  %.2452 = and i32 %.2450.cast, 8388607
  store i32 %.2452, ptr %R8, align 4
  %.2455 = load float, ptr %R11, align 4
  %.2461 = tail call i1 @llvm.is.fpclass.f32(float %.2455, i32 144)
  %.2462 = select i1 %.2461, float 0.000000e+00, float %.2455
  %.2466 = tail call i1 @llvm.is.fpclass.f32(float %fadd.82, i32 144)
  %.2467 = select i1 %.2466, float 0.000000e+00, float %fadd.82
  %fcmp_ordered = fcmp une float %.2462, %.2467
  %.2473 = load i32, ptr %R8, align 4
  %.2475 = or i32 %.2473, 8388608
  store i32 %.2475, ptr %R8, align 4
  %sel.neg = zext i1 %fcmp_ordered to i32
  %sel = sext i1 %fcmp_ordered to i32
  store i32 %sel, ptr %R9, align 4
  %.2483 = load i32, ptr %R13, align 4
  %.2486 = and i32 %.2483, %.2475
  store i32 %.2486, ptr %R13, align 4
  store i32 %sel.neg, ptr %R9, align 4
  %.2496 = load i32, ptr %R18, align 4
  %zext.172 = zext i32 %.2486 to i64
  %zext.174 = zext nneg i32 %.2496 to i64
  %shl.93 = shl nuw i64 %zext.172, 32
  %lshr.6 = lshr i64 %shl.93, %zext.174
  %lshr.7 = lshr i64 %lshr.6, 32
  %trunc32.52 = trunc nuw i64 %lshr.7 to i32
  store i32 %trunc32.52, ptr %R13, align 4
  %.2512 = and i32 %trunc32.52, 1
  %.2524 = load i32, ptr %R16, align 4
  %.2525 = add i32 %.2524, -252
  store i32 %.2525, ptr %R9, align 4
  %.2534 = load i32, ptr %R15, align 4
  %.2536 = and i32 %.2534, 8388607
  %.2538.not = icmp eq i32 %.2536, 0
  %.2547 = sub nsw i32 0, %.2512
  store i32 %.2547, ptr %R0, align 4
  %cmp.12.not = icmp eq i32 %.2512, 0
  %.2561 = load i32, ptr %R8, align 4
  %.2562 = load i32, ptr %R9, align 4
  %zext.175 = zext i32 %.2561 to i64
  %zext.177 = zext nneg i32 %.2562 to i64
  %shl.94 = shl nuw i64 %zext.175, 32
  %lshr.8 = lshr i64 %shl.94, %zext.177
  %lshr.9 = lshr i64 %lshr.8, 32
  %trunc32.53 = trunc nuw i64 %lshr.9 to i32
  store i32 %trunc32.53, ptr %R0, align 4
  br i1 %cmp.12.not, label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1, label %.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30

.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30:  ; preds = %.L_x_21_split_0x1a90...1
  %.2569 = load i32, ptr %R0, align 4
  %.2570 = add i32 %.2569, 1
  store i32 %.2570, ptr %R0, align 4
  br label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1

.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1:  ; preds = %.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30, %.L_x_21_split_0x1a90...1
  %.2576 = load i32, ptr %R0, align 4
  %.2577 = add i32 %.2576, 1
  store i32 %.2577, ptr %R0, align 4
  br i1 %.2538.not, label %.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40, label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1

.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40:  ; preds = %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1
  %.2587 = load i32, ptr %R0, align 4
  %imad_shl.3 = shl i32 %.2587, 2
  store i32 %imad_shl.3, ptr %R0, align 4
  br label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1

.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1:  ; preds = %.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40, %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1
  %.2592 = load i32, ptr %R0, align 4
  %imad_shl.4 = shl i32 %.2592, 2
  store i32 %imad_shl.4, ptr %R0, align 4
  %.2598 = load i32, ptr %R15, align 4
  %.26015 = and i32 %.2598, -2147483648
  %.2602 = or i32 %imad_shl.4, %.26015
  store i32 %.2602, ptr %R0, align 4
  br label %.L_x_20...1

.L_x_23...1:                                      ; preds = %.L_x_21...1
  %.2607 = load float, ptr %R15, align 4
  %.2608 = fdiv float 1.000000e+00, %.2607
  store float %.2608, ptr %R0, align 4
  br label %.L_x_20...1

.L_x_20...1:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1", %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1, %.L_x_23...1
  %.2615 = load i32, ptr %R14, align 4
  store i32 %.2615, ptr %R8, align 4
  store i32 0, ptr %R9, align 4
  %.26256 = load float, ptr %R0, align 4
  br label %.L_x_8

.L_x_9:                                           ; preds = %.L_x_4_split_0x14c0
  %.2630 = load float, ptr %R15, align 4
  %.2631 = fdiv float 1.000000e+00, %.2630
  store float %.2631, ptr %R7, align 4
  %fmul.74 = fmul float %.2630, %.2631
  %fadd.83 = fadd float %fmul.74, -1.000000e+00
  %.2645 = tail call i1 @llvm.is.fpclass.f32(float %fadd.83, i32 144)
  %17 = fsub float 0.000000e+00, %fadd.83
  %18 = tail call i1 @llvm.is.fpclass.f32(float %17, i32 144)
  %19 = select i1 %.2645, i1 true, i1 %18
  %.2656 = select i1 %19, float 0.000000e+00, float %17
  store float %.2656, ptr %R0, align 4
  %.2660 = load float, ptr %R7, align 4
  %fmul.75 = fmul float %.2660, %.2656
  %fadd.85 = fadd float %fmul.75, %.2660
  br label %.L_x_8

.L_x_8:                                           ; preds = %.L_x_20...1, %.L_x_9
  %storemerge = phi float [ %fadd.85, %.L_x_9 ], [ %.26256, %.L_x_20...1 ]
  store float %storemerge, ptr %R7, align 4
  %.2669 = load i32, ptr %R2, align 4
  %.2670 = add i32 %.2669, 25165824
  store i32 %.2670, ptr %R0, align 4
  %.2676 = load float, ptr %R4, align 4
  %fmul.76 = fmul float %.2676, %storemerge
  store float %fmul.76, ptr %R4, align 4
  %.2683 = and i32 %.2670, 2139095040
  store i32 %.2683, ptr %R0, align 4
  %cmp.13 = icmp samesign ugt i32 %.2683, 33554431
  br i1 %cmp.13, label %.L_x_12, label %.L_x_8_split_0x15e0_CALL_0x1620

.L_x_8_split_0x15e0_CALL_0x1620:                  ; preds = %.L_x_8
  %.2697 = load float, ptr %R2, align 4
  store float %.2697, ptr %R15, align 4
  store i32 5648, ptr %R14, align 4
  %.2706.cast = bitcast float %.2697 to i32
  %shl.96 = shl i32 %.2706.cast, 1
  store i32 %shl.96, ptr %R0, align 4
  %20 = lshr i32 %shl.96, 24
  store i32 %20, ptr %R16, align 4
  %cmp.14 = icmp ugt i32 %shl.96, 16777215
  br i1 %cmp.14, label %.L_x_21...2, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2": ; preds = %.L_x_8_split_0x15e0_CALL_0x1620
  %.2726 = load i32, ptr %R15, align 4
  %imad_shl.5 = shl i32 %.2726, 2
  store i32 %imad_shl.5, ptr %R0, align 4
  %cmp.15.not = icmp eq i32 %imad_shl.5, 0
  br i1 %cmp.15.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"
  %.2740 = load float, ptr %R15, align 4
  %fmul.77 = fmul float %.2740, 0x43F0000000000000
  %fadd.86 = fadd float %fmul.77, 0.000000e+00
  store float %fadd.86, ptr %R8, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"
  %.2746 = load float, ptr %R15, align 4
  %fmul.78 = fmul float %.2746, 0x43F0000000000000
  %fadd.87 = fadd float %fmul.78, 0.000000e+00
  store float %fadd.87, ptr %R8, align 4
  br i1 %cmp.15.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"

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
  br i1 %cmp.15.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
  %.2774 = load float, ptr %R8, align 4
  %.2775 = fdiv float 1.000000e+00, %.2774
  store float %.2775, ptr %R9, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
  %.2781 = load float, ptr %R8, align 4
  %.2782 = fdiv float 1.000000e+00, %.2781
  store float %.2782, ptr %R9, align 4
  br i1 %cmp.15.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
  %.2792 = load float, ptr %R8, align 4
  %.2793 = load float, ptr %R9, align 4
  %fmul.79 = fmul float %.2792, %.2793
  %fadd.88 = fadd float %fmul.79, -1.000000e+00
  store float %fadd.88, ptr %R11, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
  %.2799 = load float, ptr %R8, align 4
  %.2800 = load float, ptr %R9, align 4
  %fmul.80 = fmul float %.2799, %.2800
  %fadd.89 = fadd float %fmul.80, -1.000000e+00
  store float %fadd.89, ptr %R11, align 4
  br i1 %cmp.15.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
  %.2810 = load float, ptr %R11, align 4
  %.2815 = tail call i1 @llvm.is.fpclass.f32(float %.2810, i32 144)
  %21 = fsub float 0.000000e+00, %.2810
  %22 = tail call i1 @llvm.is.fpclass.f32(float %21, i32 144)
  %23 = select i1 %.2815, i1 true, i1 %22
  %.2826 = select i1 %23, float 0.000000e+00, float %21
  store float %.2826, ptr %R12, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
  %.2832 = load float, ptr %R11, align 4
  %.2837 = tail call i1 @llvm.is.fpclass.f32(float %.2832, i32 144)
  %24 = fsub float 0.000000e+00, %.2832
  %25 = tail call i1 @llvm.is.fpclass.f32(float %24, i32 144)
  %26 = select i1 %.2837, i1 true, i1 %25
  %.2848 = select i1 %26, float 0.000000e+00, float %24
  store float %.2848, ptr %R12, align 4
  br i1 %cmp.15.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
  %.2858 = load float, ptr %R9, align 4
  %.2859 = load float, ptr %R12, align 4
  %fmul.81 = fmul float %.2858, %.2859
  %fadd.92 = fadd float %fmul.81, %.2858
  store float %fadd.92, ptr %R12, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
  %.2866 = load float, ptr %R9, align 4
  %.2867 = load float, ptr %R12, align 4
  %fmul.82 = fmul float %.2866, %.2867
  %fadd.93 = fadd float %fmul.82, %.2866
  store float %fadd.93, ptr %R12, align 4
  br i1 %cmp.15.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
  %.2878 = load float, ptr %R12, align 4
  %fmul.83 = fmul float %.2878, 0x43F0000000000000
  %fadd.94 = fadd float %fmul.83, 0.000000e+00
  store float %fadd.94, ptr %R0, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
  %.2884 = load float, ptr %R12, align 4
  %fmul.84 = fmul float %.2884, 0x43F0000000000000
  %fadd.95 = fadd float %fmul.84, 0.000000e+00
  store float %fadd.95, ptr %R0, align 4
  br label %.L_x_20...2

.L_x_21...2:                                      ; preds = %.L_x_8_split_0x15e0_CALL_0x1620
  %.2892 = load i32, ptr %R16, align 4
  %.2893 = add i32 %.2892, -253
  store i32 %.2893, ptr %R18, align 4
  %cmp.16 = icmp sgt i32 %.2893, 1
  br i1 %cmp.16, label %.L_x_23...2, label %.L_x_21_split_0x1a90...2

.L_x_21_split_0x1a90...2:                         ; preds = %.L_x_21...2
  %.2908 = load i32, ptr %R15, align 4
  %.2910 = and i32 %.2908, 8388607
  store i32 %.2910, ptr %R0, align 4
  store i32 3, ptr %R13, align 4
  %.2917 = or disjoint i32 %.2910, 1065353216
  store i32 %.2917, ptr %R0, align 4
  %.2923 = load i32, ptr %R18, align 4
  %zext.186 = zext nneg i32 %.2923 to i64
  %shl.99 = shl i64 3, %zext.186
  %trunc32.56 = trunc i64 %shl.99 to i32
  store i32 %trunc32.56, ptr %R13, align 4
  %sint_to_f32.3 = uitofp nneg i32 %.2917 to float
  %.2927 = fdiv float 1.000000e+00, %sint_to_f32.3
  %.2928 = fptosi float %.2927 to i32
  store i32 %.2928, ptr %R9, align 4
  %.2931 = load float, ptr %R0, align 4
  %.2932.cast = bitcast i32 %.2928 to float
  %fmul.85 = fmul float %.2931, %.2932.cast
  %fadd.96 = fadd float %fmul.85, -1.000000e+00
  %.2941 = tail call i1 @llvm.is.fpclass.f32(float %fadd.96, i32 144)
  %27 = fsub float 0.000000e+00, %fadd.96
  %28 = tail call i1 @llvm.is.fpclass.f32(float %27, i32 144)
  %29 = select i1 %.2941, i1 true, i1 %28
  %.2952 = select i1 %29, float 0.000000e+00, float %27
  store float %.2952, ptr %R8, align 4
  %.2956 = load float, ptr %R9, align 4
  %fmul.86 = fmul float %.2956, %.2952
  %fadd.98 = fadd float %fmul.86, %.2956
  store float %fadd.98, ptr %R11, align 4
  %fmul.87 = fmul float %.2956, %.2952
  %fadd.99 = fadd float %fmul.87, %.2956
  store float %fadd.99, ptr %R12, align 4
  %.2968.cast = bitcast float %fadd.98 to i32
  %.2970 = and i32 %.2968.cast, 8388607
  store i32 %.2970, ptr %R8, align 4
  %.2973 = load float, ptr %R11, align 4
  %.2979 = tail call i1 @llvm.is.fpclass.f32(float %.2973, i32 144)
  %.2980 = select i1 %.2979, float 0.000000e+00, float %.2973
  %.2984 = tail call i1 @llvm.is.fpclass.f32(float %fadd.99, i32 144)
  %.2985 = select i1 %.2984, float 0.000000e+00, float %fadd.99
  %fcmp_ordered.1 = fcmp une float %.2980, %.2985
  %.2991 = load i32, ptr %R8, align 4
  %.2993 = or i32 %.2991, 8388608
  store i32 %.2993, ptr %R8, align 4
  %sel.2.neg = zext i1 %fcmp_ordered.1 to i32
  %sel.2 = sext i1 %fcmp_ordered.1 to i32
  store i32 %sel.2, ptr %R9, align 4
  %.3001 = load i32, ptr %R13, align 4
  %.3004 = and i32 %.3001, %.2993
  store i32 %.3004, ptr %R13, align 4
  store i32 %sel.2.neg, ptr %R9, align 4
  %.3014 = load i32, ptr %R18, align 4
  %zext.187 = zext i32 %.3004 to i64
  %zext.189 = zext nneg i32 %.3014 to i64
  %shl.100 = shl nuw i64 %zext.187, 32
  %lshr.12 = lshr i64 %shl.100, %zext.189
  %lshr.13 = lshr i64 %lshr.12, 32
  %trunc32.57 = trunc nuw i64 %lshr.13 to i32
  store i32 %trunc32.57, ptr %R13, align 4
  %.3030 = and i32 %trunc32.57, 1
  %.3042 = load i32, ptr %R16, align 4
  %.3043 = add i32 %.3042, -252
  store i32 %.3043, ptr %R9, align 4
  %.3052 = load i32, ptr %R15, align 4
  %.3054 = and i32 %.3052, 8388607
  %.3056.not = icmp eq i32 %.3054, 0
  %.3065 = sub nsw i32 0, %.3030
  store i32 %.3065, ptr %R0, align 4
  %cmp.17.not = icmp eq i32 %.3030, 0
  %.3079 = load i32, ptr %R8, align 4
  %.3080 = load i32, ptr %R9, align 4
  %zext.190 = zext i32 %.3079 to i64
  %zext.192 = zext nneg i32 %.3080 to i64
  %shl.101 = shl nuw i64 %zext.190, 32
  %lshr.14 = lshr i64 %shl.101, %zext.192
  %lshr.15 = lshr i64 %lshr.14, 32
  %trunc32.58 = trunc nuw i64 %lshr.15 to i32
  store i32 %trunc32.58, ptr %R0, align 4
  br i1 %cmp.17.not, label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2, label %.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30

.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30:  ; preds = %.L_x_21_split_0x1a90...2
  %.3087 = load i32, ptr %R0, align 4
  %.3088 = add i32 %.3087, 1
  store i32 %.3088, ptr %R0, align 4
  br label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2

.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2:  ; preds = %.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30, %.L_x_21_split_0x1a90...2
  %.3094 = load i32, ptr %R0, align 4
  %.3095 = add i32 %.3094, 1
  store i32 %.3095, ptr %R0, align 4
  br i1 %.3056.not, label %.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40, label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2

.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40:  ; preds = %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2
  %.3105 = load i32, ptr %R0, align 4
  %imad_shl.6 = shl i32 %.3105, 2
  store i32 %imad_shl.6, ptr %R0, align 4
  br label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2

.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2:  ; preds = %.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40, %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2
  %.3110 = load i32, ptr %R0, align 4
  %imad_shl.7 = shl i32 %.3110, 2
  store i32 %imad_shl.7, ptr %R0, align 4
  %.3116 = load i32, ptr %R15, align 4
  %.31197 = and i32 %.3116, -2147483648
  %.3120 = or i32 %imad_shl.7, %.31197
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
  store i32 0, ptr %R9, align 4
  %.31439 = load float, ptr %R0, align 4
  br label %.L_x_11

.L_x_12:                                          ; preds = %.L_x_8
  %.3148 = load float, ptr %R2, align 4
  %.3149 = fdiv float 1.000000e+00, %.3148
  store float %.3149, ptr %R7, align 4
  %fmul.88 = fmul float %.3148, %.3149
  %fadd.100 = fadd float %fmul.88, -1.000000e+00
  %.3163 = tail call i1 @llvm.is.fpclass.f32(float %fadd.100, i32 144)
  %30 = fsub float 0.000000e+00, %fadd.100
  %31 = tail call i1 @llvm.is.fpclass.f32(float %30, i32 144)
  %32 = select i1 %.3163, i1 true, i1 %31
  %.3174 = select i1 %32, float 0.000000e+00, float %30
  store float %.3174, ptr %R0, align 4
  %.3178 = load float, ptr %R7, align 4
  %fmul.89 = fmul float %.3178, %.3174
  %fadd.102 = fadd float %fmul.89, %.3178
  br label %.L_x_11

.L_x_11:                                          ; preds = %.L_x_20...2, %.L_x_12
  %storemerge8 = phi float [ %fadd.102, %.L_x_12 ], [ %.31439, %.L_x_20...2 ]
  store float %storemerge8, ptr %R7, align 4
  %.3188 = load float, ptr %R10, align 4
  %.3189 = load float, ptr %R4, align 4
  %fmul.90 = fmul float %storemerge8, %.3188
  %fadd.103 = fadd float %fmul.90, %.3189
  store float %fadd.103, ptr %R9, align 4
  %llvm_fabs_result.3 = tail call float @llvm.fabs.f32(float %fadd.103)
  %fcmp_unordered.2 = fcmp ult float %llvm_fabs_result.3, 0x3FE3333340000000
  br i1 %fcmp_unordered.2, label %.L_x_15, label %.L_x_11_split_0x16d0

.L_x_11_split_0x16d0:                             ; preds = %.L_x_11
  %.3206 = load float, ptr %R9, align 4
  %llvm_fabs_result.4 = tail call float @llvm.fabs.f32(float %.3206)
  %fmul.91 = fmul float %llvm_fabs_result.4, 0x4007154760000000
  store float %fmul.91, ptr %R0, align 4
  store float 0x41CFC00000000000, ptr %R7, align 4
  %llvm_fabs_result.5 = tail call float @llvm.fabs.f32(float %.3206)
  %fcmp_unordered.3 = fcmp ult float %llvm_fabs_result.5, 0x4022059680000000
  %llvm_exp2_f32_result.4 = tail call float @llvm.exp2.f32(float %fmul.91)
  store float %llvm_exp2_f32_result.4, ptr %R0, align 4
  %fadd.104 = fadd float %llvm_exp2_f32_result.4, 1.000000e+00
  %.3229 = fdiv float 1.000000e+00, %fadd.104
  store float %.3229, ptr %R2, align 4
  %.3234 = load float, ptr %R7, align 4
  %fmul.92 = fmul float %.3229, -2.000000e+00
  %fadd.105 = fadd float %fmul.92, %.3234
  %fsel.1 = select i1 %fcmp_unordered.3, float %fadd.105, float 1.000000e+00
  store float %fsel.1, ptr %R4, align 4
  %.3245.cast = bitcast float %fsel.1 to i32
  %.3246 = load i32, ptr %R9, align 4
  %33 = tail call float @llvm.fabs.f32(float %fadd.105)
  %.neg = fneg float %33
  %34 = select i1 %fcmp_unordered.3, float %.neg, float -1.000000e+00
  %.3248 = bitcast float %34 to i32
  %.3249 = or i32 %.3246, %.3245.cast
  %.3250 = and i32 %.3249, %.3248
  %35 = bitcast i32 %.3250 to float
  br label %.L_x_14

.L_x_15:                                          ; preds = %.L_x_11
  store i32 1015083138, ptr %R7, align 4
  %.3257 = load float, ptr %R9, align 4
  %fmul.93 = fmul float %.3257, %.3257
  store float %fmul.93, ptr %R0, align 4
  %fmul.94 = fmul float %fmul.93, 0x3F901E1040000000
  %fadd.106 = fadd float %fmul.94, 0xBFAAC795C0000000
  %fmul.95 = fmul float %fmul.93, %fadd.106
  %fadd.107 = fadd float %fmul.95, 0x3FC10B2820000000
  %fmul.96 = fmul float %fmul.93, %fadd.107
  %fadd.108 = fadd float %fmul.96, 0xBFD5553DA0000000
  store float %fadd.108, ptr %R7, align 4
  %.3277 = load float, ptr %R0, align 4
  %fmul.97 = fmul float %.3277, %fadd.108
  %fadd.109 = fadd float %fmul.97, 0.000000e+00
  store float %fadd.109, ptr %R7, align 4
  %.3282 = load float, ptr %R9, align 4
  %fmul.98 = fmul float %.3282, %fadd.109
  %fadd.110 = fadd float %fmul.98, %.3282
  br label %.L_x_14

.L_x_14:                                          ; preds = %.L_x_11_split_0x16d0, %.L_x_15
  %storemerge10 = phi float [ %fadd.110, %.L_x_15 ], [ %35, %.L_x_11_split_0x16d0 ]
  store float %storemerge10, ptr %R7, align 4
  %.3291 = load i32, ptr %R5, align 4
  %.3292 = add i32 %.3291, 25165824
  store i32 %.3292, ptr %R0, align 4
  %.3296 = ptrtoint ptr %Arg_8 to i64
  %.3303 = load i32, ptr %R3, align 4
  %zext.193 = zext i32 %.3303 to i64
  %zext.194 = zext i32 %imad_add.41 to i64
  %36 = shl i64 %zext.193, 34
  %37 = shl nuw nsw i64 %zext.194, 2
  %shl.103 = or disjoint i64 %36, %37
  %lshr.16 = lshr i64 %shl.103, 32
  %trunc32.61 = trunc nuw i64 %lshr.16 to i32
  store i32 %trunc32.61, ptr %R3, align 4
  %.3308 = load i32, ptr %R0, align 4
  %.3310 = and i32 %.3308, 2139095040
  store i32 %.3310, ptr %R0, align 4
  %shl.105 = shl i32 %imad_add.41, 2
  store i32 %shl.105, ptr %R2, align 4
  %cmp.18 = icmp samesign ugt i32 %.3310, 33554431
  %.3325 = load float, ptr %R9, align 4
  %zext.199 = zext i32 %shl.105 to i64
  %.3327 = load i32, ptr %R3, align 4
  %zext.200 = zext i32 %.3327 to i64
  %shl.106 = shl nuw i64 %zext.200, 32
  %or.86 = or disjoint i64 %shl.106, %zext.199
  %sext = shl i64 %.3296, 32
  %sext_UR4.4 = ashr exact i64 %sext, 32
  %base_plus_reg_offset.4 = add i64 %or.86, %sext_UR4.4
  %inttoptr_bytes.59 = inttoptr i64 %base_plus_reg_offset.4 to ptr addrspace(1)
  store float %.3325, ptr addrspace(1) %inttoptr_bytes.59, align 4
  br i1 %cmp.18, label %.L_x_18, label %.L_x_14_split_0x1890_CALL_0x18c0

.L_x_14_split_0x1890_CALL_0x18c0:                 ; preds = %.L_x_14
  %.3334 = load i32, ptr %R5, align 4
  store i32 %.3334, ptr %R15, align 4
  store i32 6336, ptr %R14, align 4
  %shl.108 = shl i32 %.3334, 1
  store i32 %shl.108, ptr %R0, align 4
  %38 = lshr i32 %shl.108, 24
  store i32 %38, ptr %R16, align 4
  %cmp.19 = icmp ugt i32 %shl.108, 16777215
  br i1 %cmp.19, label %.L_x_21...3, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3": ; preds = %.L_x_14_split_0x1890_CALL_0x18c0
  %.3362 = load i32, ptr %R15, align 4
  %imad_shl.8 = shl i32 %.3362, 2
  store i32 %imad_shl.8, ptr %R0, align 4
  %cmp.20.not = icmp eq i32 %imad_shl.8, 0
  br i1 %cmp.20.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"
  %.3376 = load float, ptr %R15, align 4
  %fmul.99 = fmul float %.3376, 0x43F0000000000000
  %fadd.111 = fadd float %fmul.99, 0.000000e+00
  store float %fadd.111, ptr %R8, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"
  %.3382 = load float, ptr %R15, align 4
  %fmul.100 = fmul float %.3382, 0x43F0000000000000
  %fadd.112 = fadd float %fmul.100, 0.000000e+00
  store float %fadd.112, ptr %R8, align 4
  br i1 %cmp.20.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"

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
  br i1 %cmp.20.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
  %.3410 = load float, ptr %R8, align 4
  %.3411 = fdiv float 1.000000e+00, %.3410
  store float %.3411, ptr %R9, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
  %.3417 = load float, ptr %R8, align 4
  %.3418 = fdiv float 1.000000e+00, %.3417
  store float %.3418, ptr %R9, align 4
  br i1 %cmp.20.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
  %.3428 = load float, ptr %R8, align 4
  %.3429 = load float, ptr %R9, align 4
  %fmul.101 = fmul float %.3428, %.3429
  %fadd.113 = fadd float %fmul.101, -1.000000e+00
  store float %fadd.113, ptr %R11, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
  %.3435 = load float, ptr %R8, align 4
  %.3436 = load float, ptr %R9, align 4
  %fmul.102 = fmul float %.3435, %.3436
  %fadd.114 = fadd float %fmul.102, -1.000000e+00
  store float %fadd.114, ptr %R11, align 4
  br i1 %cmp.20.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
  %.3446 = load float, ptr %R11, align 4
  %.3451 = tail call i1 @llvm.is.fpclass.f32(float %.3446, i32 144)
  %39 = fsub float 0.000000e+00, %.3446
  %40 = tail call i1 @llvm.is.fpclass.f32(float %39, i32 144)
  %41 = select i1 %.3451, i1 true, i1 %40
  %.3462 = select i1 %41, float 0.000000e+00, float %39
  store float %.3462, ptr %R12, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
  %.3468 = load float, ptr %R11, align 4
  %.3473 = tail call i1 @llvm.is.fpclass.f32(float %.3468, i32 144)
  %42 = fsub float 0.000000e+00, %.3468
  %43 = tail call i1 @llvm.is.fpclass.f32(float %42, i32 144)
  %44 = select i1 %.3473, i1 true, i1 %43
  %.3484 = select i1 %44, float 0.000000e+00, float %42
  store float %.3484, ptr %R12, align 4
  br i1 %cmp.20.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
  %.3494 = load float, ptr %R9, align 4
  %.3495 = load float, ptr %R12, align 4
  %fmul.103 = fmul float %.3494, %.3495
  %fadd.117 = fadd float %fmul.103, %.3494
  store float %fadd.117, ptr %R12, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
  %.3502 = load float, ptr %R9, align 4
  %.3503 = load float, ptr %R12, align 4
  %fmul.104 = fmul float %.3502, %.3503
  %fadd.118 = fadd float %fmul.104, %.3502
  store float %fadd.118, ptr %R12, align 4
  br i1 %cmp.20.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
  %.3514 = load float, ptr %R12, align 4
  %fmul.105 = fmul float %.3514, 0x43F0000000000000
  %fadd.119 = fadd float %fmul.105, 0.000000e+00
  store float %fadd.119, ptr %R0, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
  %.3520 = load float, ptr %R12, align 4
  %fmul.106 = fmul float %.3520, 0x43F0000000000000
  %fadd.120 = fadd float %fmul.106, 0.000000e+00
  store float %fadd.120, ptr %R0, align 4
  br label %.L_x_20...3

.L_x_21...3:                                      ; preds = %.L_x_14_split_0x1890_CALL_0x18c0
  %.3528 = load i32, ptr %R16, align 4
  %.3529 = add i32 %.3528, -253
  store i32 %.3529, ptr %R18, align 4
  %cmp.21 = icmp sgt i32 %.3529, 1
  br i1 %cmp.21, label %.L_x_23...3, label %.L_x_21_split_0x1a90...3

.L_x_21_split_0x1a90...3:                         ; preds = %.L_x_21...3
  %.3544 = load i32, ptr %R15, align 4
  %.3546 = and i32 %.3544, 8388607
  store i32 %.3546, ptr %R0, align 4
  store i32 3, ptr %R13, align 4
  %.3553 = or disjoint i32 %.3546, 1065353216
  store i32 %.3553, ptr %R0, align 4
  %.3559 = load i32, ptr %R18, align 4
  %zext.209 = zext nneg i32 %.3559 to i64
  %shl.111 = shl i64 3, %zext.209
  %trunc32.65 = trunc i64 %shl.111 to i32
  store i32 %trunc32.65, ptr %R13, align 4
  %sint_to_f32.7 = uitofp nneg i32 %.3553 to float
  %.3563 = fdiv float 1.000000e+00, %sint_to_f32.7
  %.3564 = fptosi float %.3563 to i32
  store i32 %.3564, ptr %R9, align 4
  %.3567 = load float, ptr %R0, align 4
  %.3568.cast = bitcast i32 %.3564 to float
  %fmul.107 = fmul float %.3567, %.3568.cast
  %fadd.121 = fadd float %fmul.107, -1.000000e+00
  %.3577 = tail call i1 @llvm.is.fpclass.f32(float %fadd.121, i32 144)
  %45 = fsub float 0.000000e+00, %fadd.121
  %46 = tail call i1 @llvm.is.fpclass.f32(float %45, i32 144)
  %47 = select i1 %.3577, i1 true, i1 %46
  %.3588 = select i1 %47, float 0.000000e+00, float %45
  store float %.3588, ptr %R8, align 4
  %.3592 = load float, ptr %R9, align 4
  %fmul.108 = fmul float %.3592, %.3588
  %fadd.123 = fadd float %fmul.108, %.3592
  store float %fadd.123, ptr %R11, align 4
  %fmul.109 = fmul float %.3592, %.3588
  %fadd.124 = fadd float %fmul.109, %.3592
  store float %fadd.124, ptr %R12, align 4
  %.3604.cast = bitcast float %fadd.123 to i32
  %.3606 = and i32 %.3604.cast, 8388607
  store i32 %.3606, ptr %R8, align 4
  %.3609 = load float, ptr %R11, align 4
  %.3615 = tail call i1 @llvm.is.fpclass.f32(float %.3609, i32 144)
  %.3616 = select i1 %.3615, float 0.000000e+00, float %.3609
  %.3620 = tail call i1 @llvm.is.fpclass.f32(float %fadd.124, i32 144)
  %.3621 = select i1 %.3620, float 0.000000e+00, float %fadd.124
  %fcmp_ordered.2 = fcmp une float %.3616, %.3621
  %.3627 = load i32, ptr %R8, align 4
  %.3629 = or i32 %.3627, 8388608
  store i32 %.3629, ptr %R8, align 4
  %sel.4.neg = zext i1 %fcmp_ordered.2 to i32
  %sel.4 = sext i1 %fcmp_ordered.2 to i32
  store i32 %sel.4, ptr %R9, align 4
  %.3637 = load i32, ptr %R13, align 4
  %.3640 = and i32 %.3637, %.3629
  store i32 %.3640, ptr %R13, align 4
  store i32 %sel.4.neg, ptr %R9, align 4
  %.3650 = load i32, ptr %R18, align 4
  %zext.210 = zext i32 %.3640 to i64
  %zext.212 = zext nneg i32 %.3650 to i64
  %shl.112 = shl nuw i64 %zext.210, 32
  %lshr.19 = lshr i64 %shl.112, %zext.212
  %lshr.20 = lshr i64 %lshr.19, 32
  %trunc32.66 = trunc nuw i64 %lshr.20 to i32
  store i32 %trunc32.66, ptr %R13, align 4
  %.3666 = and i32 %trunc32.66, 1
  %.3678 = load i32, ptr %R16, align 4
  %.3679 = add i32 %.3678, -252
  store i32 %.3679, ptr %R9, align 4
  %.3688 = load i32, ptr %R15, align 4
  %.3690 = and i32 %.3688, 8388607
  %.3692.not = icmp eq i32 %.3690, 0
  %.3701 = sub nsw i32 0, %.3666
  store i32 %.3701, ptr %R0, align 4
  %cmp.22.not = icmp eq i32 %.3666, 0
  %.3715 = load i32, ptr %R8, align 4
  %.3716 = load i32, ptr %R9, align 4
  %zext.213 = zext i32 %.3715 to i64
  %zext.215 = zext nneg i32 %.3716 to i64
  %shl.113 = shl nuw i64 %zext.213, 32
  %lshr.21 = lshr i64 %shl.113, %zext.215
  %lshr.22 = lshr i64 %lshr.21, 32
  %trunc32.67 = trunc nuw i64 %lshr.22 to i32
  store i32 %trunc32.67, ptr %R0, align 4
  br i1 %cmp.22.not, label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3, label %.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30

.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30:  ; preds = %.L_x_21_split_0x1a90...3
  %.3723 = load i32, ptr %R0, align 4
  %.3724 = add i32 %.3723, 1
  store i32 %.3724, ptr %R0, align 4
  br label %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3

.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3:  ; preds = %.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30, %.L_x_21_split_0x1a90...3
  %.3730 = load i32, ptr %R0, align 4
  %.3731 = add i32 %.3730, 1
  store i32 %.3731, ptr %R0, align 4
  br i1 %.3692.not, label %.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40, label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3

.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40:  ; preds = %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3
  %.3741 = load i32, ptr %R0, align 4
  %imad_shl.9 = shl i32 %.3741, 2
  store i32 %imad_shl.9, ptr %R0, align 4
  br label %.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3

.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3:  ; preds = %.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40, %.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3
  %.3746 = load i32, ptr %R0, align 4
  %imad_shl.10 = shl i32 %.3746, 2
  store i32 %imad_shl.10, ptr %R0, align 4
  %.3752 = load i32, ptr %R15, align 4
  %.375511 = and i32 %.3752, -2147483648
  %.3756 = or i32 %imad_shl.10, %.375511
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
  store i32 0, ptr %R9, align 4
  br label %.L_x_17

.L_x_18:                                          ; preds = %.L_x_14
  %.3781 = load float, ptr %R5, align 4
  %.3782 = fdiv float 1.000000e+00, %.3781
  store float %.3782, ptr %R0, align 4
  %fmul.110 = fmul float %.3781, %.3782
  %fadd.125 = fadd float %fmul.110, -1.000000e+00
  store float %fadd.125, ptr %R4, align 4
  %.3796 = tail call i1 @llvm.is.fpclass.f32(float %fadd.125, i32 144)
  %48 = fsub float 0.000000e+00, %fadd.125
  %49 = tail call i1 @llvm.is.fpclass.f32(float %48, i32 144)
  %50 = select i1 %.3796, i1 true, i1 %49
  %.3807 = select i1 %50, float 0.000000e+00, float %48
  store float %.3807, ptr %R9, align 4
  %.3811 = load float, ptr %R0, align 4
  %fmul.111 = fmul float %.3811, %.3807
  %fadd.127 = fadd float %fmul.111, %.3811
  store float %fadd.127, ptr %R0, align 4
  br label %.L_x_17

.L_x_17:                                          ; preds = %.L_x_20...3, %.L_x_18
  %.3820 = load float, ptr %R0, align 4
  %.3821 = load float, ptr %R7, align 4
  %fmul.112 = fmul float %.3820, %.3821
  store float %fmul.112, ptr %R7, align 4
  %.3825 = ptrtoint ptr %Arg_7 to i64
  %.3832 = load i32, ptr %R2, align 4
  %zext.216 = zext i32 %.3832 to i64
  %.3833 = load i32, ptr %R3, align 4
  %zext.217 = zext i32 %.3833 to i64
  %shl.114 = shl nuw i64 %zext.217, 32
  %or.92 = or disjoint i64 %shl.114, %zext.216
  %sext12 = shl i64 %.3825, 32
  %sext_UR4.5 = ashr exact i64 %sext12, 32
  %base_plus_reg_offset.5 = add i64 %or.92, %sext_UR4.5
  %inttoptr_bytes.60 = inttoptr i64 %base_plus_reg_offset.5 to ptr addrspace(1)
  store float %fmul.112, ptr addrspace(1) %inttoptr_bytes.60, align 4
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
