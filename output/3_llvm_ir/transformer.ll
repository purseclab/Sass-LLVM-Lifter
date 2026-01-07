; ModuleID = '/app/launch/../output/3_llvm_ir/transformer_raw.ll'
source_filename = "/app/launch/../output/3_llvm_ir/transformer_raw.ll"
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

define ptx_kernel void @_Z15ffn_relu_kernelPKfS0_S0_Pfiii(ptr %Arg_0, ptr %Arg_1, ptr %Arg_2, ptr %Arg_3, i32 %Arg_4, i32 %Arg_5, i32 %Arg_6) {
Entry_.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii:
  %R3 = alloca i32, align 4
  %R7 = alloca i32, align 4
  %R10 = alloca i32, align 4
  %R6 = alloca i32, align 4
  %R14 = alloca i32, align 4
  %R15 = alloca i32, align 4
  %R17 = alloca i32, align 4
  %R19 = alloca i32, align 4
  %R13 = alloca i32, align 4
  %R16 = alloca i32, align 4
  %R18 = alloca i32, align 4
  %R20 = alloca i32, align 4
  %R21 = alloca i32, align 4
  %R22 = alloca i32, align 4
  %R23 = alloca i32, align 4
  %R24 = alloca i32, align 4
  %R25 = alloca i32, align 4
  %R26 = alloca i32, align 4
  %R27 = alloca i32, align 4
  %R28 = alloca i32, align 4
  %R29 = alloca i32, align 4
  %R30 = alloca i32, align 4
  %R31 = alloca i32, align 4
  %R32 = alloca i32, align 4
  %R33 = alloca i32, align 4
  %R34 = alloca i32, align 4
  %R35 = alloca i32, align 4
  %R36 = alloca i32, align 4
  %R37 = alloca i32, align 4
  %R38 = alloca i32, align 4
  %R39 = alloca i32, align 4
  %R40 = alloca i32, align 4
  %R41 = alloca i32, align 4
  %R42 = alloca i32, align 4
  %R44 = alloca i32, align 4
  %R43 = alloca i32, align 4
  %nvvm_ctaid_x = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  store i32 %nvvm_threadidx_x, ptr %R3, align 4
  %nvvm_ctaid_y = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  store i32 %nvvm_ctaid_y, ptr %R7, align 4
  %nvvm_threadidx_y = call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %.26 = load i32, ptr %R3, align 4
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %.26
  %cmp = icmp sge i32 %imad_add, %Arg_6
  %.32 = and i1 %cmp, true
  %.36 = load i32, ptr %R7, align 4
  %nvvm_blockdim_y = call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %imad_mul.1 = mul i32 %.36, %nvvm_blockdim_y
  %imad_add.1 = add i32 %imad_mul.1, %nvvm_threadidx_y
  store i32 %imad_add.1, ptr %R7, align 4
  %.40 = load i32, ptr %R7, align 4
  %cmp.1 = icmp sge i32 %.40, %Arg_4
  %.43 = or i1 %cmp.1, %.32
  %.48 = icmp eq i1 %.43, true
  br i1 %.48, label %ExitFunction, label %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x00a0

.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x00a0: ; preds = %Entry_.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii
  %imad_ext1 = zext i32 %imad_add to i64
  %imad_ext2 = zext i32 4 to i64
  %imad_mul.2 = mul i64 %imad_ext1, %imad_ext2
  %.57 = ptrtoint ptr %Arg_2 to i64
  %imad_add.2 = add i64 %imad_mul.2, %.57
  %.58 = and i64 %imad_add.2, -4294967296
  %.59 = lshr i64 %.58, 32
  %trunc32 = trunc i64 %.59 to i32
  %trunc32.1 = trunc i64 %imad_add.2 to i32
  store i32 %trunc32.1, ptr %R10, align 4
  %.63 = load i32, ptr %R10, align 4
  %zext = zext i32 %.63 to i64
  %zext.1 = zext i32 %trunc32 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.65 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.66 = bitcast ptr %R10 to ptr
  store float %.65, ptr %.66, align 4
  %cmp.2 = icmp sge i32 %Arg_5, 1
  %.74 = and i1 %cmp.2, true
  %.79 = icmp ne i1 %.74, true
  br i1 %.79, label %.L_x_0, label %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0100

.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0100: ; preds = %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x00a0
  %.83 = add i32 %Arg_5, -1
  %.84 = add i32 %.83, 0
  %.89 = and i32 %Arg_5, 3
  %cmp.3 = icmp sge i32 %.84, 3
  %.95 = and i1 %cmp.3, true
  store i32 0, ptr %R6, align 4
  %.103 = icmp ne i1 %.95, true
  br i1 %.103, label %.L_x_1, label %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150

.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150: ; preds = %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0100
  %.107 = sub i32 0, %.89
  %.108 = add i32 %.107, %Arg_5
  %.109 = add i32 %.108, 0
  %.112 = load i32, ptr %R7, align 4
  %imad_mul.3 = mul i32 %.112, %Arg_5
  %imad_add.3 = add i32 %imad_mul.3, 0
  %.115 = ptrtoint ptr %Arg_1 to i64
  %.116 = and i64 %.115, -4294967296
  %.117 = lshr i64 %.116, 32
  %trunc32.2 = trunc i64 %.117 to i32
  %trunc32.3 = trunc i64 %.115 to i32
  %imad_mul.4 = mul i32 %imad_add, %Arg_5
  %imad_add.4 = add i32 %imad_mul.4, 0
  %cmp.4 = icmp sgt i32 %.109, 0
  %.127 = and i1 %cmp.4, true
  %imad_mul.5 = mul i32 0, 0
  %imad_add.5 = add i32 %imad_mul.5, 0
  store i32 %imad_add.5, ptr %R6, align 4
  %imad_ext1.1 = zext i32 %imad_add.3 to i64
  %imad_ext2.1 = zext i32 4 to i64
  %imad_mul.6 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.135 = ptrtoint ptr %Arg_0 to i64
  %imad_add.6 = add i64 %imad_mul.6, %.135
  %.136 = and i64 %imad_add.6, -4294967296
  %.137 = lshr i64 %.136, 32
  %trunc32.4 = trunc i64 %.137 to i32
  %trunc32.5 = trunc i64 %imad_add.6 to i32
  store i32 %trunc32.4, ptr %R3, align 4
  %.142 = icmp ne i1 %.127, true
  br i1 %.142, label %.L_x_2.preheader, label %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0

.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0: ; preds = %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150
  %cmp.5 = icmp sgt i32 %.109, 12
  %.148 = and i1 %cmp.5, true
  %.156 = icmp ne i1 %.148, true
  br i1 %.156, label %.L_x_3, label %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200

.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200: ; preds = %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0
  br label %.L_x_4

.L_x_4:                                           ; preds = %.L_x_4, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200
  %UR4.2 = phi i32 [ %trunc32.3, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.386, %.L_x_4 ]
  %R11.2 = phi i32 [ %.109, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.371, %.L_x_4 ]
  %UR5.2 = phi i32 [ %trunc32.2, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %add.3, %.L_x_4 ]
  %R2.2 = phi i32 [ %trunc32.5, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.397, %.L_x_4 ]
  %zext.2 = zext i32 %R2.2 to i64
  %.168 = load i32, ptr %R3, align 4
  %zext.3 = zext i32 %.168 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.169 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.170 = bitcast ptr %R14 to ptr
  store float %.169, ptr %.170, align 4
  %zext.4 = zext i32 %R2.2 to i64
  %.177 = load i32, ptr %R3, align 4
  %zext.5 = zext i32 %.177 to i64
  %shl.2 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.2, %zext.4
  %ptr_plus_imm = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.178 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.179 = bitcast ptr %R15 to ptr
  store float %.178, ptr %.179, align 4
  %imad_ext1.2 = zext i32 %imad_add.4 to i64
  %imad_ext2.2 = zext i32 4 to i64
  %imad_mul.7 = mul i64 %imad_ext1.2, %imad_ext2.2
  %imad_ext3 = zext i32 %UR4.2 to i64
  %imad_add.7 = add i64 %imad_mul.7, %imad_ext3
  %.184 = and i64 %imad_add.7, -4294967296
  %.185 = lshr i64 %.184, 32
  %trunc32.6 = trunc i64 %.185 to i32
  %trunc32.7 = trunc i64 %imad_add.7 to i32
  %zext.6 = zext i32 %R2.2 to i64
  %.190 = load i32, ptr %R3, align 4
  %zext.7 = zext i32 %.190 to i64
  %shl.3 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.3, %zext.6
  %ptr_plus_imm.1 = add i64 %or.3, 8
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.191 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.192 = bitcast ptr %R17 to ptr
  store float %.191, ptr %.192, align 4
  %zext.8 = zext i32 %R2.2 to i64
  %.196 = load i32, ptr %R3, align 4
  %zext.9 = zext i32 %.196 to i64
  %shl.4 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.4, %zext.8
  %ptr_plus_imm.2 = add i64 %or.4, 12
  %inttoptr_bytes.4 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.197 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.198 = bitcast ptr %R19 to ptr
  store float %.197, ptr %.198, align 4
  %zext.10 = zext i32 %trunc32.7 to i64
  %zext.11 = zext i32 %trunc32.6 to i64
  %shl.5 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.5, %zext.10
  %inttoptr_bytes.5 = inttoptr i64 %or.5 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.203 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.204 = bitcast ptr %R13 to ptr
  store float %.203, ptr %.204, align 4
  %zext.12 = zext i32 %trunc32.7 to i64
  %zext.13 = zext i32 %trunc32.6 to i64
  %shl.6 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.6, %zext.12
  %ptr_plus_imm.3 = add i64 %or.6, 4
  %inttoptr_bytes.6 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.209 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.210 = bitcast ptr %R16 to ptr
  store float %.209, ptr %.210, align 4
  %zext.14 = zext i32 %trunc32.7 to i64
  %zext.15 = zext i32 %trunc32.6 to i64
  %shl.7 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.7, %zext.14
  %ptr_plus_imm.4 = add i64 %or.7, 8
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.215 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.216 = bitcast ptr %R18 to ptr
  store float %.215, ptr %.216, align 4
  %zext.16 = zext i32 %trunc32.7 to i64
  %zext.17 = zext i32 %trunc32.6 to i64
  %shl.8 = shl i64 %zext.17, 32
  %or.8 = or i64 %shl.8, %zext.16
  %ptr_plus_imm.5 = add i64 %or.8, 12
  %inttoptr_bytes.8 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.221 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.222 = bitcast ptr %R20 to ptr
  store float %.221, ptr %.222, align 4
  %zext.18 = zext i32 %R2.2 to i64
  %.226 = load i32, ptr %R3, align 4
  %zext.19 = zext i32 %.226 to i64
  %shl.9 = shl i64 %zext.19, 32
  %or.9 = or i64 %shl.9, %zext.18
  %ptr_plus_imm.6 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm.6 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.227 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.228 = bitcast ptr %R21 to ptr
  store float %.227, ptr %.228, align 4
  %zext.20 = zext i32 %trunc32.7 to i64
  %zext.21 = zext i32 %trunc32.6 to i64
  %shl.10 = shl i64 %zext.21, 32
  %or.10 = or i64 %shl.10, %zext.20
  %ptr_plus_imm.7 = add i64 %or.10, 16
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.7 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.233 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.234 = bitcast ptr %R22 to ptr
  store float %.233, ptr %.234, align 4
  %zext.22 = zext i32 %R2.2 to i64
  %.238 = load i32, ptr %R3, align 4
  %zext.23 = zext i32 %.238 to i64
  %shl.11 = shl i64 %zext.23, 32
  %or.11 = or i64 %shl.11, %zext.22
  %ptr_plus_imm.8 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.8 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.239 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.240 = bitcast ptr %R23 to ptr
  store float %.239, ptr %.240, align 4
  %zext.24 = zext i32 %trunc32.7 to i64
  %zext.25 = zext i32 %trunc32.6 to i64
  %shl.12 = shl i64 %zext.25, 32
  %or.12 = or i64 %shl.12, %zext.24
  %ptr_plus_imm.9 = add i64 %or.12, 20
  %inttoptr_bytes.12 = inttoptr i64 %ptr_plus_imm.9 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.245 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.246 = bitcast ptr %R24 to ptr
  store float %.245, ptr %.246, align 4
  %zext.26 = zext i32 %R2.2 to i64
  %.250 = load i32, ptr %R3, align 4
  %zext.27 = zext i32 %.250 to i64
  %shl.13 = shl i64 %zext.27, 32
  %or.13 = or i64 %shl.13, %zext.26
  %ptr_plus_imm.10 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %ptr_plus_imm.10 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.251 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.252 = bitcast ptr %R25 to ptr
  store float %.251, ptr %.252, align 4
  %zext.28 = zext i32 %trunc32.7 to i64
  %zext.29 = zext i32 %trunc32.6 to i64
  %shl.14 = shl i64 %zext.29, 32
  %or.14 = or i64 %shl.14, %zext.28
  %ptr_plus_imm.11 = add i64 %or.14, 24
  %inttoptr_bytes.14 = inttoptr i64 %ptr_plus_imm.11 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.257 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.258 = bitcast ptr %R26 to ptr
  store float %.257, ptr %.258, align 4
  %zext.30 = zext i32 %R2.2 to i64
  %.262 = load i32, ptr %R3, align 4
  %zext.31 = zext i32 %.262 to i64
  %shl.15 = shl i64 %zext.31, 32
  %or.15 = or i64 %shl.15, %zext.30
  %ptr_plus_imm.12 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %ptr_plus_imm.12 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.263 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.264 = bitcast ptr %R27 to ptr
  store float %.263, ptr %.264, align 4
  %zext.32 = zext i32 %trunc32.7 to i64
  %zext.33 = zext i32 %trunc32.6 to i64
  %shl.16 = shl i64 %zext.33, 32
  %or.16 = or i64 %shl.16, %zext.32
  %ptr_plus_imm.13 = add i64 %or.16, 28
  %inttoptr_bytes.16 = inttoptr i64 %ptr_plus_imm.13 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.269 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.270 = bitcast ptr %R28 to ptr
  store float %.269, ptr %.270, align 4
  %zext.34 = zext i32 %R2.2 to i64
  %.274 = load i32, ptr %R3, align 4
  %zext.35 = zext i32 %.274 to i64
  %shl.17 = shl i64 %zext.35, 32
  %or.17 = or i64 %shl.17, %zext.34
  %ptr_plus_imm.14 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %ptr_plus_imm.14 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.275 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.276 = bitcast ptr %R29 to ptr
  store float %.275, ptr %.276, align 4
  %zext.36 = zext i32 %trunc32.7 to i64
  %zext.37 = zext i32 %trunc32.6 to i64
  %shl.18 = shl i64 %zext.37, 32
  %or.18 = or i64 %shl.18, %zext.36
  %ptr_plus_imm.15 = add i64 %or.18, 32
  %inttoptr_bytes.18 = inttoptr i64 %ptr_plus_imm.15 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.281 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.282 = bitcast ptr %R30 to ptr
  store float %.281, ptr %.282, align 4
  %zext.38 = zext i32 %R2.2 to i64
  %.286 = load i32, ptr %R3, align 4
  %zext.39 = zext i32 %.286 to i64
  %shl.19 = shl i64 %zext.39, 32
  %or.19 = or i64 %shl.19, %zext.38
  %ptr_plus_imm.16 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %ptr_plus_imm.16 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.287 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.288 = bitcast ptr %R31 to ptr
  store float %.287, ptr %.288, align 4
  %zext.40 = zext i32 %trunc32.7 to i64
  %zext.41 = zext i32 %trunc32.6 to i64
  %shl.20 = shl i64 %zext.41, 32
  %or.20 = or i64 %shl.20, %zext.40
  %ptr_plus_imm.17 = add i64 %or.20, 36
  %inttoptr_bytes.20 = inttoptr i64 %ptr_plus_imm.17 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.293 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.294 = bitcast ptr %R32 to ptr
  store float %.293, ptr %.294, align 4
  %zext.42 = zext i32 %R2.2 to i64
  %.298 = load i32, ptr %R3, align 4
  %zext.43 = zext i32 %.298 to i64
  %shl.21 = shl i64 %zext.43, 32
  %or.21 = or i64 %shl.21, %zext.42
  %ptr_plus_imm.18 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %ptr_plus_imm.18 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.299 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.300 = bitcast ptr %R33 to ptr
  store float %.299, ptr %.300, align 4
  %zext.44 = zext i32 %trunc32.7 to i64
  %zext.45 = zext i32 %trunc32.6 to i64
  %shl.22 = shl i64 %zext.45, 32
  %or.22 = or i64 %shl.22, %zext.44
  %ptr_plus_imm.19 = add i64 %or.22, 40
  %inttoptr_bytes.22 = inttoptr i64 %ptr_plus_imm.19 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.305 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.306 = bitcast ptr %R34 to ptr
  store float %.305, ptr %.306, align 4
  %zext.46 = zext i32 %R2.2 to i64
  %.310 = load i32, ptr %R3, align 4
  %zext.47 = zext i32 %.310 to i64
  %shl.23 = shl i64 %zext.47, 32
  %or.23 = or i64 %shl.23, %zext.46
  %ptr_plus_imm.20 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %ptr_plus_imm.20 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.311 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.312 = bitcast ptr %R35 to ptr
  store float %.311, ptr %.312, align 4
  %zext.48 = zext i32 %trunc32.7 to i64
  %zext.49 = zext i32 %trunc32.6 to i64
  %shl.24 = shl i64 %zext.49, 32
  %or.24 = or i64 %shl.24, %zext.48
  %ptr_plus_imm.21 = add i64 %or.24, 44
  %inttoptr_bytes.24 = inttoptr i64 %ptr_plus_imm.21 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.317 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.318 = bitcast ptr %R36 to ptr
  store float %.317, ptr %.318, align 4
  %zext.50 = zext i32 %R2.2 to i64
  %.322 = load i32, ptr %R3, align 4
  %zext.51 = zext i32 %.322 to i64
  %shl.25 = shl i64 %zext.51, 32
  %or.25 = or i64 %shl.25, %zext.50
  %ptr_plus_imm.22 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %ptr_plus_imm.22 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.323 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.324 = bitcast ptr %R37 to ptr
  store float %.323, ptr %.324, align 4
  %zext.52 = zext i32 %trunc32.7 to i64
  %zext.53 = zext i32 %trunc32.6 to i64
  %shl.26 = shl i64 %zext.53, 32
  %or.26 = or i64 %shl.26, %zext.52
  %ptr_plus_imm.23 = add i64 %or.26, 48
  %inttoptr_bytes.26 = inttoptr i64 %ptr_plus_imm.23 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.329 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.330 = bitcast ptr %R38 to ptr
  store float %.329, ptr %.330, align 4
  %zext.54 = zext i32 %R2.2 to i64
  %.334 = load i32, ptr %R3, align 4
  %zext.55 = zext i32 %.334 to i64
  %shl.27 = shl i64 %zext.55, 32
  %or.27 = or i64 %shl.27, %zext.54
  %ptr_plus_imm.24 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %ptr_plus_imm.24 to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.335 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.336 = bitcast ptr %R39 to ptr
  store float %.335, ptr %.336, align 4
  %zext.56 = zext i32 %trunc32.7 to i64
  %zext.57 = zext i32 %trunc32.6 to i64
  %shl.28 = shl i64 %zext.57, 32
  %or.28 = or i64 %shl.28, %zext.56
  %ptr_plus_imm.25 = add i64 %or.28, 52
  %inttoptr_bytes.28 = inttoptr i64 %ptr_plus_imm.25 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.341 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.342 = bitcast ptr %R40 to ptr
  store float %.341, ptr %.342, align 4
  %zext.58 = zext i32 %R2.2 to i64
  %.346 = load i32, ptr %R3, align 4
  %zext.59 = zext i32 %.346 to i64
  %shl.29 = shl i64 %zext.59, 32
  %or.29 = or i64 %shl.29, %zext.58
  %ptr_plus_imm.26 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %ptr_plus_imm.26 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.347 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.348 = bitcast ptr %R41 to ptr
  store float %.347, ptr %.348, align 4
  %zext.60 = zext i32 %trunc32.7 to i64
  %zext.61 = zext i32 %trunc32.6 to i64
  %shl.30 = shl i64 %zext.61, 32
  %or.30 = or i64 %shl.30, %zext.60
  %ptr_plus_imm.27 = add i64 %or.30, 56
  %inttoptr_bytes.30 = inttoptr i64 %ptr_plus_imm.27 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.353 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.354 = bitcast ptr %R42 to ptr
  store float %.353, ptr %.354, align 4
  %zext.62 = zext i32 %trunc32.7 to i64
  %zext.63 = zext i32 %trunc32.6 to i64
  %shl.31 = shl i64 %zext.63, 32
  %or.31 = or i64 %shl.31, %zext.62
  %ptr_plus_imm.28 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %ptr_plus_imm.28 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.359 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.360 = bitcast ptr %R44 to ptr
  store float %.359, ptr %.360, align 4
  %zext.64 = zext i32 %R2.2 to i64
  %.364 = load i32, ptr %R3, align 4
  %zext.65 = zext i32 %.364 to i64
  %shl.32 = shl i64 %zext.65, 32
  %or.32 = or i64 %shl.32, %zext.64
  %ptr_plus_imm.29 = add i64 %or.32, 60
  %inttoptr_bytes.32 = inttoptr i64 %ptr_plus_imm.29 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.365 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.366 = bitcast ptr %R43 to ptr
  store float %.365, ptr %.366, align 4
  %.370 = add i32 %R11.2, -16
  %.371 = add i32 %.370, 0
  %cmp.6 = icmp sgt i32 %.371, 12
  %.377 = and i1 %cmp.6, true
  %.382 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.383 = extractvalue { i32, i1 } %.382, 0
  %.384 = extractvalue { i32, i1 } %.382, 1
  %.385 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.383, i32 0)
  %.386 = extractvalue { i32, i1 } %.385, 0
  %.387 = extractvalue { i32, i1 } %.385, 1
  %.388 = or i1 %.384, %.387
  %.393 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.2, i32 64)
  %.394 = extractvalue { i32, i1 } %.393, 0
  %.395 = extractvalue { i32, i1 } %.393, 1
  %.396 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.394, i32 0)
  %.397 = extractvalue { i32, i1 } %.396, 0
  %.398 = extractvalue { i32, i1 } %.396, 1
  %.399 = or i1 %.395, %.398
  %.405 = xor i1 true, true
  %.406 = zext i1 %.388 to i32
  %.407 = zext i1 %.405 to i32
  %add = add i32 0, %UR5.2
  %add.1 = add i32 %add, 0
  %add.2 = add i32 %add.1, %.406
  %add.3 = add i32 %add.2, %.407
  %.410 = load i32, ptr %R6, align 4
  %.411 = add i32 %.410, 16
  %.412 = add i32 %.411, 0
  store i32 %.412, ptr %R6, align 4
  %.415 = load i32, ptr %R3, align 4
  %.417 = xor i1 true, true
  %.418 = zext i1 %.399 to i32
  %.419 = zext i1 %.417 to i32
  %add.4 = add i32 0, %.415
  %add.5 = add i32 %add.4, 0
  %add.6 = add i32 %add.5, %.418
  %add.7 = add i32 %add.6, %.419
  store i32 %add.7, ptr %R3, align 4
  %.422 = load float, ptr %R13, align 4
  %.423 = load float, ptr %R14, align 4
  %.424 = load float, ptr %R10, align 4
  %fmul = fmul float %.422, %.423
  %fadd = fadd float %fmul, %.424
  %.425 = bitcast ptr %R13 to ptr
  store float %fadd, ptr %.425, align 4
  %.428 = load float, ptr %R16, align 4
  %.429 = load float, ptr %R15, align 4
  %.430 = load float, ptr %R13, align 4
  %fmul.1 = fmul float %.428, %.429
  %fadd.1 = fadd float %fmul.1, %.430
  %.431 = bitcast ptr %R13 to ptr
  store float %fadd.1, ptr %.431, align 4
  %.434 = load float, ptr %R18, align 4
  %.435 = load float, ptr %R17, align 4
  %.436 = load float, ptr %R13, align 4
  %fmul.2 = fmul float %.434, %.435
  %fadd.2 = fadd float %fmul.2, %.436
  %.437 = bitcast ptr %R13 to ptr
  store float %fadd.2, ptr %.437, align 4
  %.440 = load float, ptr %R20, align 4
  %.441 = load float, ptr %R19, align 4
  %.442 = load float, ptr %R13, align 4
  %fmul.3 = fmul float %.440, %.441
  %fadd.3 = fadd float %fmul.3, %.442
  %.443 = bitcast ptr %R13 to ptr
  store float %fadd.3, ptr %.443, align 4
  %.446 = load float, ptr %R22, align 4
  %.447 = load float, ptr %R21, align 4
  %.448 = load float, ptr %R13, align 4
  %fmul.4 = fmul float %.446, %.447
  %fadd.4 = fadd float %fmul.4, %.448
  %.449 = bitcast ptr %R13 to ptr
  store float %fadd.4, ptr %.449, align 4
  %.452 = load float, ptr %R24, align 4
  %.453 = load float, ptr %R23, align 4
  %.454 = load float, ptr %R13, align 4
  %fmul.5 = fmul float %.452, %.453
  %fadd.5 = fadd float %fmul.5, %.454
  %.455 = bitcast ptr %R13 to ptr
  store float %fadd.5, ptr %.455, align 4
  %.458 = load float, ptr %R26, align 4
  %.459 = load float, ptr %R25, align 4
  %.460 = load float, ptr %R13, align 4
  %fmul.6 = fmul float %.458, %.459
  %fadd.6 = fadd float %fmul.6, %.460
  %.461 = bitcast ptr %R13 to ptr
  store float %fadd.6, ptr %.461, align 4
  %.464 = load float, ptr %R28, align 4
  %.465 = load float, ptr %R27, align 4
  %.466 = load float, ptr %R13, align 4
  %fmul.7 = fmul float %.464, %.465
  %fadd.7 = fadd float %fmul.7, %.466
  %.467 = bitcast ptr %R13 to ptr
  store float %fadd.7, ptr %.467, align 4
  %.470 = load float, ptr %R30, align 4
  %.471 = load float, ptr %R29, align 4
  %.472 = load float, ptr %R13, align 4
  %fmul.8 = fmul float %.470, %.471
  %fadd.8 = fadd float %fmul.8, %.472
  %.473 = bitcast ptr %R13 to ptr
  store float %fadd.8, ptr %.473, align 4
  %.476 = load float, ptr %R32, align 4
  %.477 = load float, ptr %R31, align 4
  %.478 = load float, ptr %R13, align 4
  %fmul.9 = fmul float %.476, %.477
  %fadd.9 = fadd float %fmul.9, %.478
  %.479 = bitcast ptr %R13 to ptr
  store float %fadd.9, ptr %.479, align 4
  %.482 = load float, ptr %R34, align 4
  %.483 = load float, ptr %R33, align 4
  %.484 = load float, ptr %R13, align 4
  %fmul.10 = fmul float %.482, %.483
  %fadd.10 = fadd float %fmul.10, %.484
  %.485 = bitcast ptr %R13 to ptr
  store float %fadd.10, ptr %.485, align 4
  %.488 = load float, ptr %R36, align 4
  %.489 = load float, ptr %R35, align 4
  %.490 = load float, ptr %R13, align 4
  %fmul.11 = fmul float %.488, %.489
  %fadd.11 = fadd float %fmul.11, %.490
  %.491 = bitcast ptr %R13 to ptr
  store float %fadd.11, ptr %.491, align 4
  %.494 = load float, ptr %R38, align 4
  %.495 = load float, ptr %R37, align 4
  %.496 = load float, ptr %R13, align 4
  %fmul.12 = fmul float %.494, %.495
  %fadd.12 = fadd float %fmul.12, %.496
  %.497 = bitcast ptr %R13 to ptr
  store float %fadd.12, ptr %.497, align 4
  %.500 = load float, ptr %R40, align 4
  %.501 = load float, ptr %R39, align 4
  %.502 = load float, ptr %R13, align 4
  %fmul.13 = fmul float %.500, %.501
  %fadd.13 = fadd float %fmul.13, %.502
  %.503 = bitcast ptr %R13 to ptr
  store float %fadd.13, ptr %.503, align 4
  %.506 = load float, ptr %R42, align 4
  %.507 = load float, ptr %R41, align 4
  %.508 = load float, ptr %R13, align 4
  %fmul.14 = fmul float %.506, %.507
  %fadd.14 = fadd float %fmul.14, %.508
  %.509 = bitcast ptr %R13 to ptr
  store float %fadd.14, ptr %.509, align 4
  %.512 = load float, ptr %R44, align 4
  %.513 = load float, ptr %R43, align 4
  %.514 = load float, ptr %R13, align 4
  %fmul.15 = fmul float %.512, %.513
  %fadd.15 = fadd float %fmul.15, %.514
  %.515 = bitcast ptr %R10 to ptr
  store float %fadd.15, ptr %.515, align 4
  %.519 = icmp eq i1 %.377, true
  br i1 %.519, label %.L_x_4, label %.L_x_3.loopexit

.L_x_3.loopexit:                                  ; preds = %.L_x_4
  br label %.L_x_3

.L_x_3:                                           ; preds = %.L_x_3.loopexit, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0
  %UR4.1 = phi i32 [ %trunc32.3, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.386, %.L_x_3.loopexit ]
  %R11.1 = phi i32 [ %.109, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.371, %.L_x_3.loopexit ]
  %UR5.1 = phi i32 [ %trunc32.2, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %add.3, %.L_x_3.loopexit ]
  %R2.1 = phi i32 [ %trunc32.5, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.397, %.L_x_3.loopexit ]
  %cmp.7 = icmp sgt i32 %R11.1, 4
  %.525 = and i1 %cmp.7, true
  %.530 = icmp ne i1 %.525, true
  br i1 %.530, label %.L_x_5, label %.L_x_3_split_0x05e0

.L_x_3_split_0x05e0:                              ; preds = %.L_x_3
  %imad_mul.8 = mul i32 0, 0
  %imad_add.8 = add i32 %imad_mul.8, %UR4.1
  %zext.66 = zext i32 %R2.1 to i64
  %.540 = load i32, ptr %R3, align 4
  %zext.67 = zext i32 %.540 to i64
  %shl.33 = shl i64 %zext.67, 32
  %or.33 = or i64 %shl.33, %zext.66
  %inttoptr_bytes.33 = inttoptr i64 %or.33 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.541 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.542 = bitcast ptr %R14 to ptr
  store float %.541, ptr %.542, align 4
  %imad_ext1.3 = zext i32 %imad_add.4 to i64
  %imad_ext2.3 = zext i32 4 to i64
  %imad_mul.9 = mul i64 %imad_ext1.3, %imad_ext2.3
  %imad_ext3.1 = zext i32 %imad_add.8 to i64
  %imad_add.9 = add i64 %imad_mul.9, %imad_ext3.1
  %.547 = and i64 %imad_add.9, -4294967296
  %.548 = lshr i64 %.547, 32
  %trunc32.8 = trunc i64 %.548 to i32
  %trunc32.9 = trunc i64 %imad_add.9 to i32
  %zext.68 = zext i32 %R2.1 to i64
  %.553 = load i32, ptr %R3, align 4
  %zext.69 = zext i32 %.553 to i64
  %shl.34 = shl i64 %zext.69, 32
  %or.34 = or i64 %shl.34, %zext.68
  %ptr_plus_imm.30 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.30 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.554 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.555 = bitcast ptr %R15 to ptr
  store float %.554, ptr %.555, align 4
  %zext.70 = zext i32 %R2.1 to i64
  %.559 = load i32, ptr %R3, align 4
  %zext.71 = zext i32 %.559 to i64
  %shl.35 = shl i64 %zext.71, 32
  %or.35 = or i64 %shl.35, %zext.70
  %ptr_plus_imm.31 = add i64 %or.35, 8
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.31 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.560 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.561 = bitcast ptr %R17 to ptr
  store float %.560, ptr %.561, align 4
  %zext.72 = zext i32 %trunc32.9 to i64
  %zext.73 = zext i32 %trunc32.8 to i64
  %shl.36 = shl i64 %zext.73, 32
  %or.36 = or i64 %shl.36, %zext.72
  %inttoptr_bytes.36 = inttoptr i64 %or.36 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.566 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.567 = bitcast ptr %R13 to ptr
  store float %.566, ptr %.567, align 4
  %zext.74 = zext i32 %trunc32.9 to i64
  %zext.75 = zext i32 %trunc32.8 to i64
  %shl.37 = shl i64 %zext.75, 32
  %or.37 = or i64 %shl.37, %zext.74
  %ptr_plus_imm.32 = add i64 %or.37, 4
  %inttoptr_bytes.37 = inttoptr i64 %ptr_plus_imm.32 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.572 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.573 = bitcast ptr %R16 to ptr
  store float %.572, ptr %.573, align 4
  %zext.76 = zext i32 %trunc32.9 to i64
  %zext.77 = zext i32 %trunc32.8 to i64
  %shl.38 = shl i64 %zext.77, 32
  %or.38 = or i64 %shl.38, %zext.76
  %ptr_plus_imm.33 = add i64 %or.38, 8
  %inttoptr_bytes.38 = inttoptr i64 %ptr_plus_imm.33 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.578 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.579 = bitcast ptr %R18 to ptr
  store float %.578, ptr %.579, align 4
  %zext.78 = zext i32 %R2.1 to i64
  %.583 = load i32, ptr %R3, align 4
  %zext.79 = zext i32 %.583 to i64
  %shl.39 = shl i64 %zext.79, 32
  %or.39 = or i64 %shl.39, %zext.78
  %ptr_plus_imm.34 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %ptr_plus_imm.34 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.584 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.585 = bitcast ptr %R19 to ptr
  store float %.584, ptr %.585, align 4
  %zext.80 = zext i32 %trunc32.9 to i64
  %zext.81 = zext i32 %trunc32.8 to i64
  %shl.40 = shl i64 %zext.81, 32
  %or.40 = or i64 %shl.40, %zext.80
  %ptr_plus_imm.35 = add i64 %or.40, 12
  %inttoptr_bytes.40 = inttoptr i64 %ptr_plus_imm.35 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.590 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.591 = bitcast ptr %R20 to ptr
  store float %.590, ptr %.591, align 4
  %zext.82 = zext i32 %R2.1 to i64
  %.595 = load i32, ptr %R3, align 4
  %zext.83 = zext i32 %.595 to i64
  %shl.41 = shl i64 %zext.83, 32
  %or.41 = or i64 %shl.41, %zext.82
  %ptr_plus_imm.36 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %ptr_plus_imm.36 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.596 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.597 = bitcast ptr %R21 to ptr
  store float %.596, ptr %.597, align 4
  %zext.84 = zext i32 %trunc32.9 to i64
  %zext.85 = zext i32 %trunc32.8 to i64
  %shl.42 = shl i64 %zext.85, 32
  %or.42 = or i64 %shl.42, %zext.84
  %ptr_plus_imm.37 = add i64 %or.42, 16
  %inttoptr_bytes.42 = inttoptr i64 %ptr_plus_imm.37 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.602 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.603 = bitcast ptr %R22 to ptr
  store float %.602, ptr %.603, align 4
  %zext.86 = zext i32 %R2.1 to i64
  %.607 = load i32, ptr %R3, align 4
  %zext.87 = zext i32 %.607 to i64
  %shl.43 = shl i64 %zext.87, 32
  %or.43 = or i64 %shl.43, %zext.86
  %ptr_plus_imm.38 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %ptr_plus_imm.38 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.608 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.609 = bitcast ptr %R23 to ptr
  store float %.608, ptr %.609, align 4
  %zext.88 = zext i32 %trunc32.9 to i64
  %zext.89 = zext i32 %trunc32.8 to i64
  %shl.44 = shl i64 %zext.89, 32
  %or.44 = or i64 %shl.44, %zext.88
  %ptr_plus_imm.39 = add i64 %or.44, 20
  %inttoptr_bytes.44 = inttoptr i64 %ptr_plus_imm.39 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.614 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.615 = bitcast ptr %R24 to ptr
  store float %.614, ptr %.615, align 4
  %zext.90 = zext i32 %R2.1 to i64
  %.619 = load i32, ptr %R3, align 4
  %zext.91 = zext i32 %.619 to i64
  %shl.45 = shl i64 %zext.91, 32
  %or.45 = or i64 %shl.45, %zext.90
  %ptr_plus_imm.40 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %ptr_plus_imm.40 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.620 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.621 = bitcast ptr %R25 to ptr
  store float %.620, ptr %.621, align 4
  %zext.92 = zext i32 %trunc32.9 to i64
  %zext.93 = zext i32 %trunc32.8 to i64
  %shl.46 = shl i64 %zext.93, 32
  %or.46 = or i64 %shl.46, %zext.92
  %ptr_plus_imm.41 = add i64 %or.46, 24
  %inttoptr_bytes.46 = inttoptr i64 %ptr_plus_imm.41 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.626 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.627 = bitcast ptr %R26 to ptr
  store float %.626, ptr %.627, align 4
  %zext.94 = zext i32 %trunc32.9 to i64
  %zext.95 = zext i32 %trunc32.8 to i64
  %shl.47 = shl i64 %zext.95, 32
  %or.47 = or i64 %shl.47, %zext.94
  %ptr_plus_imm.42 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %ptr_plus_imm.42 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.632 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.633 = bitcast ptr %R28 to ptr
  store float %.632, ptr %.633, align 4
  %zext.96 = zext i32 %R2.1 to i64
  %.637 = load i32, ptr %R3, align 4
  %zext.97 = zext i32 %.637 to i64
  %shl.48 = shl i64 %zext.97, 32
  %or.48 = or i64 %shl.48, %zext.96
  %ptr_plus_imm.43 = add i64 %or.48, 28
  %inttoptr_bytes.48 = inttoptr i64 %ptr_plus_imm.43 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.638 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.639 = bitcast ptr %R27 to ptr
  store float %.638, ptr %.639, align 4
  %.643 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.644 = extractvalue { i32, i1 } %.643, 0
  %.645 = extractvalue { i32, i1 } %.643, 1
  %.646 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.644, i32 0)
  %.647 = extractvalue { i32, i1 } %.646, 0
  %.648 = extractvalue { i32, i1 } %.646, 1
  %.649 = or i1 %.645, %.648
  %.657 = load i32, ptr %R6, align 4
  %.658 = add i32 %.657, 8
  %.659 = add i32 %.658, 0
  store i32 %.659, ptr %R6, align 4
  %.663 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.1, i32 32)
  %.664 = extractvalue { i32, i1 } %.663, 0
  %.665 = extractvalue { i32, i1 } %.663, 1
  %.666 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.664, i32 0)
  %.667 = extractvalue { i32, i1 } %.666, 0
  %.668 = extractvalue { i32, i1 } %.666, 1
  %.669 = or i1 %.665, %.668
  %.674 = add i32 %R11.1, -8
  %.675 = add i32 %.674, 0
  %.678 = load i32, ptr %R3, align 4
  %.680 = xor i1 true, true
  %.681 = zext i1 %.669 to i32
  %.682 = zext i1 %.680 to i32
  %add.8 = add i32 0, %.678
  %add.9 = add i32 %add.8, 0
  %add.10 = add i32 %add.9, %.681
  %add.11 = add i32 %add.10, %.682
  store i32 %add.11, ptr %R3, align 4
  %.687 = xor i1 true, true
  %.688 = zext i1 %.649 to i32
  %.689 = zext i1 %.687 to i32
  %add.12 = add i32 0, %UR5.1
  %add.13 = add i32 %add.12, 0
  %add.14 = add i32 %add.13, %.688
  %add.15 = add i32 %add.14, %.689
  %.692 = load float, ptr %R13, align 4
  %.693 = load float, ptr %R14, align 4
  %.694 = load float, ptr %R10, align 4
  %fmul.16 = fmul float %.692, %.693
  %fadd.16 = fadd float %fmul.16, %.694
  %.695 = bitcast ptr %R13 to ptr
  store float %fadd.16, ptr %.695, align 4
  %.698 = load float, ptr %R16, align 4
  %.699 = load float, ptr %R15, align 4
  %.700 = load float, ptr %R13, align 4
  %fmul.17 = fmul float %.698, %.699
  %fadd.17 = fadd float %fmul.17, %.700
  %.701 = bitcast ptr %R13 to ptr
  store float %fadd.17, ptr %.701, align 4
  %.704 = load float, ptr %R18, align 4
  %.705 = load float, ptr %R17, align 4
  %.706 = load float, ptr %R13, align 4
  %fmul.18 = fmul float %.704, %.705
  %fadd.18 = fadd float %fmul.18, %.706
  %.707 = bitcast ptr %R13 to ptr
  store float %fadd.18, ptr %.707, align 4
  %.710 = load float, ptr %R20, align 4
  %.711 = load float, ptr %R19, align 4
  %.712 = load float, ptr %R13, align 4
  %fmul.19 = fmul float %.710, %.711
  %fadd.19 = fadd float %fmul.19, %.712
  %.713 = bitcast ptr %R13 to ptr
  store float %fadd.19, ptr %.713, align 4
  %.716 = load float, ptr %R22, align 4
  %.717 = load float, ptr %R21, align 4
  %.718 = load float, ptr %R13, align 4
  %fmul.20 = fmul float %.716, %.717
  %fadd.20 = fadd float %fmul.20, %.718
  %.719 = bitcast ptr %R13 to ptr
  store float %fadd.20, ptr %.719, align 4
  %.722 = load float, ptr %R24, align 4
  %.723 = load float, ptr %R23, align 4
  %.724 = load float, ptr %R13, align 4
  %fmul.21 = fmul float %.722, %.723
  %fadd.21 = fadd float %fmul.21, %.724
  %.725 = bitcast ptr %R13 to ptr
  store float %fadd.21, ptr %.725, align 4
  %.728 = load float, ptr %R26, align 4
  %.729 = load float, ptr %R25, align 4
  %.730 = load float, ptr %R13, align 4
  %fmul.22 = fmul float %.728, %.729
  %fadd.22 = fadd float %fmul.22, %.730
  %.731 = bitcast ptr %R13 to ptr
  store float %fadd.22, ptr %.731, align 4
  %.734 = load float, ptr %R28, align 4
  %.735 = load float, ptr %R27, align 4
  %.736 = load float, ptr %R13, align 4
  %fmul.23 = fmul float %.734, %.735
  %fadd.23 = fadd float %fmul.23, %.736
  %.737 = bitcast ptr %R10 to ptr
  store float %fadd.23, ptr %.737, align 4
  br label %.L_x_5

.L_x_5:                                           ; preds = %.L_x_3_split_0x05e0, %.L_x_3
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_3 ], [ %.647, %.L_x_3_split_0x05e0 ]
  %R11.3 = phi i32 [ %R11.1, %.L_x_3 ], [ %.675, %.L_x_3_split_0x05e0 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_3 ], [ %add.15, %.L_x_3_split_0x05e0 ]
  %R2.3 = phi i32 [ %R2.1, %.L_x_3 ], [ %.667, %.L_x_3_split_0x05e0 ]
  %cmp.8 = icmp ne i32 %R11.3, 0
  %.744 = or i1 %cmp.8, %.127
  %.749 = icmp ne i1 %.744, true
  br i1 %.749, label %.L_x_1, label %.L_x_2.preheader

.L_x_2.preheader:                                 ; preds = %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150, %.L_x_5
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_5 ], [ %trunc32.3, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %R11.0.ph = phi i32 [ %R11.3, %.L_x_5 ], [ %.109, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_5 ], [ %trunc32.2, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %R2.0.ph = phi i32 [ %R2.3, %.L_x_5 ], [ %trunc32.5, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  br label %.L_x_2

.L_x_2:                                           ; preds = %.L_x_2.preheader, %.L_x_2
  %UR4.0 = phi i32 [ %.830, %.L_x_2 ], [ %UR4.0.ph, %.L_x_2.preheader ]
  %R11.0 = phi i32 [ %.815, %.L_x_2 ], [ %R11.0.ph, %.L_x_2.preheader ]
  %UR5.0 = phi i32 [ %add.19, %.L_x_2 ], [ %UR5.0.ph, %.L_x_2.preheader ]
  %R2.0 = phi i32 [ %.884, %.L_x_2 ], [ %R2.0.ph, %.L_x_2.preheader ]
  %zext.98 = zext i32 %R2.0 to i64
  %.759 = load i32, ptr %R3, align 4
  %zext.99 = zext i32 %.759 to i64
  %shl.49 = shl i64 %zext.99, 32
  %or.49 = or i64 %shl.49, %zext.98
  %inttoptr_bytes.49 = inttoptr i64 %or.49 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.760 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.761 = bitcast ptr %R14 to ptr
  store float %.760, ptr %.761, align 4
  %imad_ext1.4 = zext i32 %imad_add.4 to i64
  %imad_ext2.4 = zext i32 4 to i64
  %imad_mul.11 = mul i64 %imad_ext1.4, %imad_ext2.4
  %imad_ext3.2 = zext i32 %UR4.0 to i64
  %imad_add.11 = add i64 %imad_mul.11, %imad_ext3.2
  %.766 = and i64 %imad_add.11, -4294967296
  %.767 = lshr i64 %.766, 32
  %trunc32.10 = trunc i64 %.767 to i32
  %trunc32.11 = trunc i64 %imad_add.11 to i32
  %zext.100 = zext i32 %R2.0 to i64
  %.772 = load i32, ptr %R3, align 4
  %zext.101 = zext i32 %.772 to i64
  %shl.50 = shl i64 %zext.101, 32
  %or.50 = or i64 %shl.50, %zext.100
  %ptr_plus_imm.44 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %ptr_plus_imm.44 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.773 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.774 = bitcast ptr %R15 to ptr
  store float %.773, ptr %.774, align 4
  %zext.102 = zext i32 %R2.0 to i64
  %.778 = load i32, ptr %R3, align 4
  %zext.103 = zext i32 %.778 to i64
  %shl.51 = shl i64 %zext.103, 32
  %or.51 = or i64 %shl.51, %zext.102
  %ptr_plus_imm.45 = add i64 %or.51, 8
  %inttoptr_bytes.51 = inttoptr i64 %ptr_plus_imm.45 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.779 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.780 = bitcast ptr %R17 to ptr
  store float %.779, ptr %.780, align 4
  %zext.104 = zext i32 %trunc32.11 to i64
  %zext.105 = zext i32 %trunc32.10 to i64
  %shl.52 = shl i64 %zext.105, 32
  %or.52 = or i64 %shl.52, %zext.104
  %inttoptr_bytes.52 = inttoptr i64 %or.52 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.785 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.786 = bitcast ptr %R13 to ptr
  store float %.785, ptr %.786, align 4
  %zext.106 = zext i32 %trunc32.11 to i64
  %zext.107 = zext i32 %trunc32.10 to i64
  %shl.53 = shl i64 %zext.107, 32
  %or.53 = or i64 %shl.53, %zext.106
  %ptr_plus_imm.46 = add i64 %or.53, 4
  %inttoptr_bytes.53 = inttoptr i64 %ptr_plus_imm.46 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.791 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.792 = bitcast ptr %R16 to ptr
  store float %.791, ptr %.792, align 4
  %zext.108 = zext i32 %trunc32.11 to i64
  %zext.109 = zext i32 %trunc32.10 to i64
  %shl.54 = shl i64 %zext.109, 32
  %or.54 = or i64 %shl.54, %zext.108
  %ptr_plus_imm.47 = add i64 %or.54, 8
  %inttoptr_bytes.54 = inttoptr i64 %ptr_plus_imm.47 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.797 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.798 = bitcast ptr %R18 to ptr
  store float %.797, ptr %.798, align 4
  %zext.110 = zext i32 %trunc32.11 to i64
  %zext.111 = zext i32 %trunc32.10 to i64
  %shl.55 = shl i64 %zext.111, 32
  %or.55 = or i64 %shl.55, %zext.110
  %ptr_plus_imm.48 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %ptr_plus_imm.48 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.803 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.804 = bitcast ptr %R20 to ptr
  store float %.803, ptr %.804, align 4
  %zext.112 = zext i32 %R2.0 to i64
  %.808 = load i32, ptr %R3, align 4
  %zext.113 = zext i32 %.808 to i64
  %shl.56 = shl i64 %zext.113, 32
  %or.56 = or i64 %shl.56, %zext.112
  %ptr_plus_imm.49 = add i64 %or.56, 12
  %inttoptr_bytes.56 = inttoptr i64 %ptr_plus_imm.49 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.809 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.810 = bitcast ptr %R19 to ptr
  store float %.809, ptr %.810, align 4
  %.814 = add i32 %R11.0, -4
  %.815 = add i32 %.814, 0
  %cmp.9 = icmp ne i32 %.815, 0
  %.821 = and i1 %cmp.9, true
  %.826 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.827 = extractvalue { i32, i1 } %.826, 0
  %.828 = extractvalue { i32, i1 } %.826, 1
  %.829 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.827, i32 0)
  %.830 = extractvalue { i32, i1 } %.829, 0
  %.831 = extractvalue { i32, i1 } %.829, 1
  %.832 = or i1 %.828, %.831
  %.836 = load i32, ptr %R6, align 4
  %.837 = add i32 %.836, 4
  %.838 = add i32 %.837, 0
  store i32 %.838, ptr %R6, align 4
  %.843 = xor i1 true, true
  %.844 = zext i1 %.832 to i32
  %.845 = zext i1 %.843 to i32
  %add.16 = add i32 0, %UR5.0
  %add.17 = add i32 %add.16, 0
  %add.18 = add i32 %add.17, %.844
  %add.19 = add i32 %add.18, %.845
  %.848 = load float, ptr %R13, align 4
  %.849 = load float, ptr %R14, align 4
  %.850 = load float, ptr %R10, align 4
  %fmul.24 = fmul float %.848, %.849
  %fadd.24 = fadd float %fmul.24, %.850
  %.851 = bitcast ptr %R13 to ptr
  store float %fadd.24, ptr %.851, align 4
  %.854 = load float, ptr %R16, align 4
  %.855 = load float, ptr %R15, align 4
  %.856 = load float, ptr %R13, align 4
  %fmul.25 = fmul float %.854, %.855
  %fadd.25 = fadd float %fmul.25, %.856
  %.857 = bitcast ptr %R13 to ptr
  store float %fadd.25, ptr %.857, align 4
  %.860 = load float, ptr %R18, align 4
  %.861 = load float, ptr %R17, align 4
  %.862 = load float, ptr %R13, align 4
  %fmul.26 = fmul float %.860, %.861
  %fadd.26 = fadd float %fmul.26, %.862
  %.863 = bitcast ptr %R17 to ptr
  store float %fadd.26, ptr %.863, align 4
  %.867 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.0, i32 16)
  %.868 = extractvalue { i32, i1 } %.867, 0
  %.869 = extractvalue { i32, i1 } %.867, 1
  %.870 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.868, i32 0)
  %.871 = extractvalue { i32, i1 } %.870, 0
  %.872 = extractvalue { i32, i1 } %.870, 1
  %.873 = or i1 %.869, %.872
  store i32 %.871, ptr %R13, align 4
  %.877 = load i32, ptr %R3, align 4
  %.879 = xor i1 true, true
  %.880 = zext i1 %.873 to i32
  %.881 = zext i1 %.879 to i32
  %add.20 = add i32 0, %.877
  %add.21 = add i32 %add.20, 0
  %add.22 = add i32 %add.21, %.880
  %add.23 = add i32 %add.22, %.881
  store i32 %add.23, ptr %R14, align 4
  %.884 = load i32, ptr %R13, align 4
  %.887 = load float, ptr %R20, align 4
  %.888 = load float, ptr %R19, align 4
  %.889 = load float, ptr %R17, align 4
  %fmul.27 = fmul float %.887, %.888
  %fadd.27 = fadd float %fmul.27, %.889
  %.890 = bitcast ptr %R10 to ptr
  store float %fadd.27, ptr %.890, align 4
  %.893 = load i32, ptr %R14, align 4
  store i32 %.893, ptr %R3, align 4
  %.897 = icmp eq i1 %.821, true
  br i1 %.897, label %.L_x_2, label %.L_x_1.loopexit

.L_x_1.loopexit:                                  ; preds = %.L_x_2
  br label %.L_x_1

.L_x_1:                                           ; preds = %.L_x_1.loopexit, %.L_x_5, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0100
  %cmp.10 = icmp ne i32 %.89, 0
  %.903 = and i1 %cmp.10, true
  %.908 = icmp ne i1 %.903, true
  br i1 %.908, label %.L_x_0, label %.L_x_1_split_0x09d0

.L_x_1_split_0x09d0:                              ; preds = %.L_x_1
  %.912 = load i32, ptr %R6, align 4
  %imad_mul.12 = mul i32 %imad_add, %Arg_5
  %imad_add.12 = add i32 %imad_mul.12, %.912
  %.915 = load i32, ptr %R7, align 4
  %.916 = load i32, ptr %R6, align 4
  %imad_mul.13 = mul i32 %.915, %Arg_5
  %imad_add.13 = add i32 %imad_mul.13, %.916
  %imad_ext1.5 = zext i32 %imad_add.12 to i64
  %imad_ext2.5 = zext i32 4 to i64
  %imad_mul.14 = mul i64 %imad_ext1.5, %imad_ext2.5
  %.921 = ptrtoint ptr %Arg_1 to i64
  %imad_add.14 = add i64 %imad_mul.14, %.921
  %.922 = and i64 %imad_add.14, -4294967296
  %.923 = lshr i64 %.922, 32
  %trunc32.12 = trunc i64 %.923 to i32
  %trunc32.13 = trunc i64 %imad_add.14 to i32
  store i32 %trunc32.12, ptr %R3, align 4
  %imad_ext1.6 = zext i32 %imad_add.13 to i64
  %imad_ext2.6 = zext i32 4 to i64
  %imad_mul.15 = mul i64 %imad_ext1.6, %imad_ext2.6
  %.929 = ptrtoint ptr %Arg_0 to i64
  %imad_add.15 = add i64 %imad_mul.15, %.929
  %.930 = and i64 %imad_add.15, -4294967296
  %.931 = lshr i64 %.930, 32
  %trunc32.14 = trunc i64 %.931 to i32
  %trunc32.15 = trunc i64 %imad_add.15 to i32
  %.935 = load i32, ptr %R3, align 4
  %imad_mul.16 = mul i32 0, 0
  %imad_add.16 = add i32 %imad_mul.16, %.935
  br label %.L_x_6

.L_x_6:                                           ; preds = %.L_x_6, %.L_x_1_split_0x09d0
  %R8.0 = phi i32 [ %trunc32.15, %.L_x_1_split_0x09d0 ], [ %.971, %.L_x_6 ]
  %R11.4 = phi i32 [ %imad_add.16, %.L_x_1_split_0x09d0 ], [ %add.31, %.L_x_6 ]
  %R9.0 = phi i32 [ %trunc32.14, %.L_x_1_split_0x09d0 ], [ %add.27, %.L_x_6 ]
  %R4.0 = phi i32 [ %.89, %.L_x_1_split_0x09d0 ], [ %.956, %.L_x_6 ]
  %R2.4 = phi i32 [ %trunc32.13, %.L_x_1_split_0x09d0 ], [ %.982, %.L_x_6 ]
  store i32 %R11.4, ptr %R3, align 4
  %zext.114 = zext i32 %R8.0 to i64
  %zext.115 = zext i32 %R9.0 to i64
  %shl.57 = shl i64 %zext.115, 32
  %or.57 = or i64 %shl.57, %zext.114
  %inttoptr_bytes.57 = inttoptr i64 %or.57 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.944 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.945 = bitcast ptr %R6 to ptr
  store float %.944, ptr %.945, align 4
  %zext.116 = zext i32 %R2.4 to i64
  %.949 = load i32, ptr %R3, align 4
  %zext.117 = zext i32 %.949 to i64
  %shl.58 = shl i64 %zext.117, 32
  %or.58 = or i64 %shl.58, %zext.116
  %inttoptr_bytes.58 = inttoptr i64 %or.58 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.950 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.951 = bitcast ptr %R3 to ptr
  store float %.950, ptr %.951, align 4
  %.955 = add i32 %R4.0, -1
  %.956 = add i32 %.955, 0
  %cmp.11 = icmp ne i32 %.956, 0
  %.962 = and i1 %cmp.11, true
  %.967 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R8.0, i32 4)
  %.968 = extractvalue { i32, i1 } %.967, 0
  %.969 = extractvalue { i32, i1 } %.967, 1
  %.970 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.968, i32 0)
  %.971 = extractvalue { i32, i1 } %.970, 0
  %.972 = extractvalue { i32, i1 } %.970, 1
  %.973 = or i1 %.969, %.972
  %.978 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.4, i32 4)
  %.979 = extractvalue { i32, i1 } %.978, 0
  %.980 = extractvalue { i32, i1 } %.978, 1
  %.981 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.979, i32 0)
  %.982 = extractvalue { i32, i1 } %.981, 0
  %.983 = extractvalue { i32, i1 } %.981, 1
  %.984 = or i1 %.980, %.983
  %.990 = xor i1 true, true
  %.991 = zext i1 %.973 to i32
  %.992 = zext i1 %.990 to i32
  %add.24 = add i32 0, %R9.0
  %add.25 = add i32 %add.24, 0
  %add.26 = add i32 %add.25, %.991
  %add.27 = add i32 %add.26, %.992
  %.997 = xor i1 true, true
  %.998 = zext i1 %.984 to i32
  %.999 = zext i1 %.997 to i32
  %add.28 = add i32 0, %R11.4
  %add.29 = add i32 %add.28, 0
  %add.30 = add i32 %add.29, %.998
  %add.31 = add i32 %add.30, %.999
  %.1002 = load float, ptr %R3, align 4
  %.1003 = load float, ptr %R6, align 4
  %.1004 = load float, ptr %R10, align 4
  %fmul.28 = fmul float %.1002, %.1003
  %fadd.28 = fadd float %fmul.28, %.1004
  %.1005 = bitcast ptr %R10 to ptr
  store float %fadd.28, ptr %.1005, align 4
  %.1009 = icmp eq i1 %.962, true
  br i1 %.1009, label %.L_x_6, label %.L_x_0.loopexit

.L_x_0.loopexit:                                  ; preds = %.L_x_6
  br label %.L_x_0

.L_x_0:                                           ; preds = %.L_x_0.loopexit, %.L_x_1, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x00a0
  %.1012 = load float, ptr %R10, align 4
  %fcmp_ordered = fcmp uge float %.1012, 0.000000e+00
  %.1015 = and i1 %fcmp_ordered, true
  %.1019 = load i32, ptr %R7, align 4
  %imad_mul.17 = mul i32 %.1019, %Arg_6
  %imad_add.17 = add i32 %imad_mul.17, %imad_add
  %.1023 = load float, ptr %R10, align 4
  %.1025 = icmp eq i1 %.1015, true
  %fsel = select i1 %.1025, float %.1023, float 0.000000e+00
  %.1026 = bitcast ptr %R7 to ptr
  store float %fsel, ptr %.1026, align 4
  %imad_ext1.7 = zext i32 %imad_add.17 to i64
  %imad_ext2.7 = zext i32 4 to i64
  %imad_mul.18 = mul i64 %imad_ext1.7, %imad_ext2.7
  %.1031 = ptrtoint ptr %Arg_3 to i64
  %imad_add.18 = add i64 %imad_mul.18, %.1031
  %.1032 = and i64 %imad_add.18, -4294967296
  %.1033 = lshr i64 %.1032, 32
  %trunc32.16 = trunc i64 %.1033 to i32
  %trunc32.17 = trunc i64 %imad_add.18 to i32
  store i32 %trunc32.16, ptr %R3, align 4
  %.1037 = load float, ptr %R7, align 4
  %zext.118 = zext i32 %trunc32.17 to i64
  %.1039 = load i32, ptr %R3, align 4
  %zext.119 = zext i32 %.1039 to i64
  %shl.59 = shl i64 %zext.119, 32
  %or.59 = or i64 %shl.59, %zext.118
  %inttoptr_bytes.59 = inttoptr i64 %or.59 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.1037, ptr addrspace(1) %ptr_cast_for_access.59, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii, %.L_x_0
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

define ptx_kernel void @_Z18linear_proj_kernelPKfS0_S0_Pfiii(ptr %Arg_0, ptr %Arg_1, ptr %Arg_2, ptr %Arg_3, i32 %Arg_4, i32 %Arg_5, i32 %Arg_6) {
Entry_.text._Z18linear_proj_kernelPKfS0_S0_Pfiii:
  %R3 = alloca i32, align 4
  %R6 = alloca i32, align 4
  %R8 = alloca i32, align 4
  %R14 = alloca i32, align 4
  %R15 = alloca i32, align 4
  %R17 = alloca i32, align 4
  %R19 = alloca i32, align 4
  %R13 = alloca i32, align 4
  %R16 = alloca i32, align 4
  %R18 = alloca i32, align 4
  %R20 = alloca i32, align 4
  %R21 = alloca i32, align 4
  %R22 = alloca i32, align 4
  %R23 = alloca i32, align 4
  %R24 = alloca i32, align 4
  %R25 = alloca i32, align 4
  %R26 = alloca i32, align 4
  %R27 = alloca i32, align 4
  %R28 = alloca i32, align 4
  %R29 = alloca i32, align 4
  %R30 = alloca i32, align 4
  %R31 = alloca i32, align 4
  %R32 = alloca i32, align 4
  %R33 = alloca i32, align 4
  %R34 = alloca i32, align 4
  %R35 = alloca i32, align 4
  %R36 = alloca i32, align 4
  %R37 = alloca i32, align 4
  %R38 = alloca i32, align 4
  %R39 = alloca i32, align 4
  %R40 = alloca i32, align 4
  %R41 = alloca i32, align 4
  %R42 = alloca i32, align 4
  %R44 = alloca i32, align 4
  %R43 = alloca i32, align 4
  %nvvm_ctaid_x = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  store i32 %nvvm_threadidx_x, ptr %R3, align 4
  %nvvm_ctaid_y = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  %nvvm_threadidx_y = call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %.26 = load i32, ptr %R3, align 4
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %.26
  %cmp = icmp sge i32 %imad_add, %Arg_6
  %.32 = and i1 %cmp, true
  %nvvm_blockdim_y = call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %imad_mul.1 = mul i32 %nvvm_ctaid_y, %nvvm_blockdim_y
  %imad_add.1 = add i32 %imad_mul.1, %nvvm_threadidx_y
  %cmp.1 = icmp sge i32 %imad_add.1, %Arg_4
  %.43 = or i1 %cmp.1, %.32
  %.48 = icmp eq i1 %.43, true
  br i1 %.48, label %ExitFunction, label %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x00a0

.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x00a0: ; preds = %Entry_.text._Z18linear_proj_kernelPKfS0_S0_Pfiii
  %imad_ext1 = zext i32 %imad_add to i64
  %imad_ext2 = zext i32 4 to i64
  %imad_mul.2 = mul i64 %imad_ext1, %imad_ext2
  %.57 = ptrtoint ptr %Arg_2 to i64
  %imad_add.2 = add i64 %imad_mul.2, %.57
  %.58 = and i64 %imad_add.2, -4294967296
  %.59 = lshr i64 %.58, 32
  %trunc32 = trunc i64 %.59 to i32
  %trunc32.1 = trunc i64 %imad_add.2 to i32
  store i32 %trunc32, ptr %R3, align 4
  %zext = zext i32 %trunc32.1 to i64
  %.64 = load i32, ptr %R3, align 4
  %zext.1 = zext i32 %.64 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.65 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.66 = bitcast ptr %R6 to ptr
  store float %.65, ptr %.66, align 4
  %cmp.2 = icmp sge i32 %Arg_5, 1
  %.74 = and i1 %cmp.2, true
  %.79 = icmp ne i1 %.74, true
  br i1 %.79, label %.L_x_8, label %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100

.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100: ; preds = %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x00a0
  %.83 = add i32 %Arg_5, -1
  %.84 = add i32 %.83, 0
  %.89 = and i32 %Arg_5, 3
  %cmp.3 = icmp sge i32 %.84, 3
  %.95 = and i1 %cmp.3, true
  %.103 = icmp ne i1 %.95, true
  br i1 %.103, label %.L_x_9, label %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150

.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150: ; preds = %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100
  %.107 = sub i32 0, %.89
  %.108 = add i32 %.107, %Arg_5
  %.109 = add i32 %.108, 0
  %imad_mul.3 = mul i32 %imad_add.1, %Arg_5
  %imad_add.3 = add i32 %imad_mul.3, 0
  %.115 = ptrtoint ptr %Arg_1 to i64
  %.116 = and i64 %.115, -4294967296
  %.117 = lshr i64 %.116, 32
  %trunc32.2 = trunc i64 %.117 to i32
  %trunc32.3 = trunc i64 %.115 to i32
  %imad_mul.4 = mul i32 %imad_add, %Arg_5
  %imad_add.4 = add i32 %imad_mul.4, 0
  %cmp.4 = icmp sgt i32 %.109, 0
  %.127 = and i1 %cmp.4, true
  %imad_mul.5 = mul i32 0, 0
  %imad_add.5 = add i32 %imad_mul.5, 0
  %imad_ext1.1 = zext i32 %imad_add.3 to i64
  %imad_ext2.1 = zext i32 4 to i64
  %imad_mul.6 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.135 = ptrtoint ptr %Arg_0 to i64
  %imad_add.6 = add i64 %imad_mul.6, %.135
  %.136 = and i64 %imad_add.6, -4294967296
  %.137 = lshr i64 %.136, 32
  %trunc32.4 = trunc i64 %.137 to i32
  %trunc32.5 = trunc i64 %imad_add.6 to i32
  store i32 %trunc32.4, ptr %R3, align 4
  %.142 = icmp ne i1 %.127, true
  br i1 %.142, label %.L_x_10.preheader, label %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0

.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0: ; preds = %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150
  %cmp.5 = icmp sgt i32 %.109, 12
  %.148 = and i1 %cmp.5, true
  %.156 = icmp ne i1 %.148, true
  br i1 %.156, label %.L_x_11, label %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200

.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200: ; preds = %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0
  br label %.L_x_12

.L_x_12:                                          ; preds = %.L_x_12, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200
  %UR4.2 = phi i32 [ %trunc32.3, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.386, %.L_x_12 ]
  %R11.2 = phi i32 [ %.109, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.371, %.L_x_12 ]
  %R10.3 = phi i32 [ %imad_add.5, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.412, %.L_x_12 ]
  %UR5.2 = phi i32 [ %trunc32.2, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %add.3, %.L_x_12 ]
  %R2.2 = phi i32 [ %trunc32.5, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.397, %.L_x_12 ]
  store i32 %UR4.2, ptr %R8, align 4
  %zext.2 = zext i32 %R2.2 to i64
  %.168 = load i32, ptr %R3, align 4
  %zext.3 = zext i32 %.168 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.169 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.170 = bitcast ptr %R14 to ptr
  store float %.169, ptr %.170, align 4
  %zext.4 = zext i32 %R2.2 to i64
  %.177 = load i32, ptr %R3, align 4
  %zext.5 = zext i32 %.177 to i64
  %shl.2 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.2, %zext.4
  %ptr_plus_imm = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.178 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.179 = bitcast ptr %R15 to ptr
  store float %.178, ptr %.179, align 4
  %.183 = load i32, ptr %R8, align 4
  %imad_ext1.2 = zext i32 %imad_add.4 to i64
  %imad_ext2.2 = zext i32 4 to i64
  %imad_mul.7 = mul i64 %imad_ext1.2, %imad_ext2.2
  %imad_ext3 = zext i32 %.183 to i64
  %imad_add.7 = add i64 %imad_mul.7, %imad_ext3
  %.184 = and i64 %imad_add.7, -4294967296
  %.185 = lshr i64 %.184, 32
  %trunc32.6 = trunc i64 %.185 to i32
  %trunc32.7 = trunc i64 %imad_add.7 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  %zext.6 = zext i32 %R2.2 to i64
  %.190 = load i32, ptr %R3, align 4
  %zext.7 = zext i32 %.190 to i64
  %shl.3 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.3, %zext.6
  %ptr_plus_imm.1 = add i64 %or.3, 8
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.191 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.192 = bitcast ptr %R17 to ptr
  store float %.191, ptr %.192, align 4
  %zext.8 = zext i32 %R2.2 to i64
  %.196 = load i32, ptr %R3, align 4
  %zext.9 = zext i32 %.196 to i64
  %shl.4 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.4, %zext.8
  %ptr_plus_imm.2 = add i64 %or.4, 12
  %inttoptr_bytes.4 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.197 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.198 = bitcast ptr %R19 to ptr
  store float %.197, ptr %.198, align 4
  %.201 = load i32, ptr %R8, align 4
  %zext.10 = zext i32 %.201 to i64
  %zext.11 = zext i32 %trunc32.6 to i64
  %shl.5 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.5, %zext.10
  %inttoptr_bytes.5 = inttoptr i64 %or.5 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.203 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.204 = bitcast ptr %R13 to ptr
  store float %.203, ptr %.204, align 4
  %.207 = load i32, ptr %R8, align 4
  %zext.12 = zext i32 %.207 to i64
  %zext.13 = zext i32 %trunc32.6 to i64
  %shl.6 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.6, %zext.12
  %ptr_plus_imm.3 = add i64 %or.6, 4
  %inttoptr_bytes.6 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.209 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.210 = bitcast ptr %R16 to ptr
  store float %.209, ptr %.210, align 4
  %.213 = load i32, ptr %R8, align 4
  %zext.14 = zext i32 %.213 to i64
  %zext.15 = zext i32 %trunc32.6 to i64
  %shl.7 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.7, %zext.14
  %ptr_plus_imm.4 = add i64 %or.7, 8
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.215 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.216 = bitcast ptr %R18 to ptr
  store float %.215, ptr %.216, align 4
  %.219 = load i32, ptr %R8, align 4
  %zext.16 = zext i32 %.219 to i64
  %zext.17 = zext i32 %trunc32.6 to i64
  %shl.8 = shl i64 %zext.17, 32
  %or.8 = or i64 %shl.8, %zext.16
  %ptr_plus_imm.5 = add i64 %or.8, 12
  %inttoptr_bytes.8 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.221 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.222 = bitcast ptr %R20 to ptr
  store float %.221, ptr %.222, align 4
  %zext.18 = zext i32 %R2.2 to i64
  %.226 = load i32, ptr %R3, align 4
  %zext.19 = zext i32 %.226 to i64
  %shl.9 = shl i64 %zext.19, 32
  %or.9 = or i64 %shl.9, %zext.18
  %ptr_plus_imm.6 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm.6 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.227 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.228 = bitcast ptr %R21 to ptr
  store float %.227, ptr %.228, align 4
  %.231 = load i32, ptr %R8, align 4
  %zext.20 = zext i32 %.231 to i64
  %zext.21 = zext i32 %trunc32.6 to i64
  %shl.10 = shl i64 %zext.21, 32
  %or.10 = or i64 %shl.10, %zext.20
  %ptr_plus_imm.7 = add i64 %or.10, 16
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.7 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.233 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.234 = bitcast ptr %R22 to ptr
  store float %.233, ptr %.234, align 4
  %zext.22 = zext i32 %R2.2 to i64
  %.238 = load i32, ptr %R3, align 4
  %zext.23 = zext i32 %.238 to i64
  %shl.11 = shl i64 %zext.23, 32
  %or.11 = or i64 %shl.11, %zext.22
  %ptr_plus_imm.8 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.8 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.239 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.240 = bitcast ptr %R23 to ptr
  store float %.239, ptr %.240, align 4
  %.243 = load i32, ptr %R8, align 4
  %zext.24 = zext i32 %.243 to i64
  %zext.25 = zext i32 %trunc32.6 to i64
  %shl.12 = shl i64 %zext.25, 32
  %or.12 = or i64 %shl.12, %zext.24
  %ptr_plus_imm.9 = add i64 %or.12, 20
  %inttoptr_bytes.12 = inttoptr i64 %ptr_plus_imm.9 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.245 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.246 = bitcast ptr %R24 to ptr
  store float %.245, ptr %.246, align 4
  %zext.26 = zext i32 %R2.2 to i64
  %.250 = load i32, ptr %R3, align 4
  %zext.27 = zext i32 %.250 to i64
  %shl.13 = shl i64 %zext.27, 32
  %or.13 = or i64 %shl.13, %zext.26
  %ptr_plus_imm.10 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %ptr_plus_imm.10 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.251 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.252 = bitcast ptr %R25 to ptr
  store float %.251, ptr %.252, align 4
  %.255 = load i32, ptr %R8, align 4
  %zext.28 = zext i32 %.255 to i64
  %zext.29 = zext i32 %trunc32.6 to i64
  %shl.14 = shl i64 %zext.29, 32
  %or.14 = or i64 %shl.14, %zext.28
  %ptr_plus_imm.11 = add i64 %or.14, 24
  %inttoptr_bytes.14 = inttoptr i64 %ptr_plus_imm.11 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.257 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.258 = bitcast ptr %R26 to ptr
  store float %.257, ptr %.258, align 4
  %zext.30 = zext i32 %R2.2 to i64
  %.262 = load i32, ptr %R3, align 4
  %zext.31 = zext i32 %.262 to i64
  %shl.15 = shl i64 %zext.31, 32
  %or.15 = or i64 %shl.15, %zext.30
  %ptr_plus_imm.12 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %ptr_plus_imm.12 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.263 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.264 = bitcast ptr %R27 to ptr
  store float %.263, ptr %.264, align 4
  %.267 = load i32, ptr %R8, align 4
  %zext.32 = zext i32 %.267 to i64
  %zext.33 = zext i32 %trunc32.6 to i64
  %shl.16 = shl i64 %zext.33, 32
  %or.16 = or i64 %shl.16, %zext.32
  %ptr_plus_imm.13 = add i64 %or.16, 28
  %inttoptr_bytes.16 = inttoptr i64 %ptr_plus_imm.13 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.269 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.270 = bitcast ptr %R28 to ptr
  store float %.269, ptr %.270, align 4
  %zext.34 = zext i32 %R2.2 to i64
  %.274 = load i32, ptr %R3, align 4
  %zext.35 = zext i32 %.274 to i64
  %shl.17 = shl i64 %zext.35, 32
  %or.17 = or i64 %shl.17, %zext.34
  %ptr_plus_imm.14 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %ptr_plus_imm.14 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.275 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.276 = bitcast ptr %R29 to ptr
  store float %.275, ptr %.276, align 4
  %.279 = load i32, ptr %R8, align 4
  %zext.36 = zext i32 %.279 to i64
  %zext.37 = zext i32 %trunc32.6 to i64
  %shl.18 = shl i64 %zext.37, 32
  %or.18 = or i64 %shl.18, %zext.36
  %ptr_plus_imm.15 = add i64 %or.18, 32
  %inttoptr_bytes.18 = inttoptr i64 %ptr_plus_imm.15 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.281 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.282 = bitcast ptr %R30 to ptr
  store float %.281, ptr %.282, align 4
  %zext.38 = zext i32 %R2.2 to i64
  %.286 = load i32, ptr %R3, align 4
  %zext.39 = zext i32 %.286 to i64
  %shl.19 = shl i64 %zext.39, 32
  %or.19 = or i64 %shl.19, %zext.38
  %ptr_plus_imm.16 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %ptr_plus_imm.16 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.287 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.288 = bitcast ptr %R31 to ptr
  store float %.287, ptr %.288, align 4
  %.291 = load i32, ptr %R8, align 4
  %zext.40 = zext i32 %.291 to i64
  %zext.41 = zext i32 %trunc32.6 to i64
  %shl.20 = shl i64 %zext.41, 32
  %or.20 = or i64 %shl.20, %zext.40
  %ptr_plus_imm.17 = add i64 %or.20, 36
  %inttoptr_bytes.20 = inttoptr i64 %ptr_plus_imm.17 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.293 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.294 = bitcast ptr %R32 to ptr
  store float %.293, ptr %.294, align 4
  %zext.42 = zext i32 %R2.2 to i64
  %.298 = load i32, ptr %R3, align 4
  %zext.43 = zext i32 %.298 to i64
  %shl.21 = shl i64 %zext.43, 32
  %or.21 = or i64 %shl.21, %zext.42
  %ptr_plus_imm.18 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %ptr_plus_imm.18 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.299 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.300 = bitcast ptr %R33 to ptr
  store float %.299, ptr %.300, align 4
  %.303 = load i32, ptr %R8, align 4
  %zext.44 = zext i32 %.303 to i64
  %zext.45 = zext i32 %trunc32.6 to i64
  %shl.22 = shl i64 %zext.45, 32
  %or.22 = or i64 %shl.22, %zext.44
  %ptr_plus_imm.19 = add i64 %or.22, 40
  %inttoptr_bytes.22 = inttoptr i64 %ptr_plus_imm.19 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.305 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.306 = bitcast ptr %R34 to ptr
  store float %.305, ptr %.306, align 4
  %zext.46 = zext i32 %R2.2 to i64
  %.310 = load i32, ptr %R3, align 4
  %zext.47 = zext i32 %.310 to i64
  %shl.23 = shl i64 %zext.47, 32
  %or.23 = or i64 %shl.23, %zext.46
  %ptr_plus_imm.20 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %ptr_plus_imm.20 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.311 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.312 = bitcast ptr %R35 to ptr
  store float %.311, ptr %.312, align 4
  %.315 = load i32, ptr %R8, align 4
  %zext.48 = zext i32 %.315 to i64
  %zext.49 = zext i32 %trunc32.6 to i64
  %shl.24 = shl i64 %zext.49, 32
  %or.24 = or i64 %shl.24, %zext.48
  %ptr_plus_imm.21 = add i64 %or.24, 44
  %inttoptr_bytes.24 = inttoptr i64 %ptr_plus_imm.21 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.317 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.318 = bitcast ptr %R36 to ptr
  store float %.317, ptr %.318, align 4
  %zext.50 = zext i32 %R2.2 to i64
  %.322 = load i32, ptr %R3, align 4
  %zext.51 = zext i32 %.322 to i64
  %shl.25 = shl i64 %zext.51, 32
  %or.25 = or i64 %shl.25, %zext.50
  %ptr_plus_imm.22 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %ptr_plus_imm.22 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.323 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.324 = bitcast ptr %R37 to ptr
  store float %.323, ptr %.324, align 4
  %.327 = load i32, ptr %R8, align 4
  %zext.52 = zext i32 %.327 to i64
  %zext.53 = zext i32 %trunc32.6 to i64
  %shl.26 = shl i64 %zext.53, 32
  %or.26 = or i64 %shl.26, %zext.52
  %ptr_plus_imm.23 = add i64 %or.26, 48
  %inttoptr_bytes.26 = inttoptr i64 %ptr_plus_imm.23 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.329 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.330 = bitcast ptr %R38 to ptr
  store float %.329, ptr %.330, align 4
  %zext.54 = zext i32 %R2.2 to i64
  %.334 = load i32, ptr %R3, align 4
  %zext.55 = zext i32 %.334 to i64
  %shl.27 = shl i64 %zext.55, 32
  %or.27 = or i64 %shl.27, %zext.54
  %ptr_plus_imm.24 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %ptr_plus_imm.24 to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.335 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.336 = bitcast ptr %R39 to ptr
  store float %.335, ptr %.336, align 4
  %.339 = load i32, ptr %R8, align 4
  %zext.56 = zext i32 %.339 to i64
  %zext.57 = zext i32 %trunc32.6 to i64
  %shl.28 = shl i64 %zext.57, 32
  %or.28 = or i64 %shl.28, %zext.56
  %ptr_plus_imm.25 = add i64 %or.28, 52
  %inttoptr_bytes.28 = inttoptr i64 %ptr_plus_imm.25 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.341 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.342 = bitcast ptr %R40 to ptr
  store float %.341, ptr %.342, align 4
  %zext.58 = zext i32 %R2.2 to i64
  %.346 = load i32, ptr %R3, align 4
  %zext.59 = zext i32 %.346 to i64
  %shl.29 = shl i64 %zext.59, 32
  %or.29 = or i64 %shl.29, %zext.58
  %ptr_plus_imm.26 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %ptr_plus_imm.26 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.347 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.348 = bitcast ptr %R41 to ptr
  store float %.347, ptr %.348, align 4
  %.351 = load i32, ptr %R8, align 4
  %zext.60 = zext i32 %.351 to i64
  %zext.61 = zext i32 %trunc32.6 to i64
  %shl.30 = shl i64 %zext.61, 32
  %or.30 = or i64 %shl.30, %zext.60
  %ptr_plus_imm.27 = add i64 %or.30, 56
  %inttoptr_bytes.30 = inttoptr i64 %ptr_plus_imm.27 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.353 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.354 = bitcast ptr %R42 to ptr
  store float %.353, ptr %.354, align 4
  %.357 = load i32, ptr %R8, align 4
  %zext.62 = zext i32 %.357 to i64
  %zext.63 = zext i32 %trunc32.6 to i64
  %shl.31 = shl i64 %zext.63, 32
  %or.31 = or i64 %shl.31, %zext.62
  %ptr_plus_imm.28 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %ptr_plus_imm.28 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.359 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.360 = bitcast ptr %R44 to ptr
  store float %.359, ptr %.360, align 4
  %zext.64 = zext i32 %R2.2 to i64
  %.364 = load i32, ptr %R3, align 4
  %zext.65 = zext i32 %.364 to i64
  %shl.32 = shl i64 %zext.65, 32
  %or.32 = or i64 %shl.32, %zext.64
  %ptr_plus_imm.29 = add i64 %or.32, 60
  %inttoptr_bytes.32 = inttoptr i64 %ptr_plus_imm.29 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.365 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.366 = bitcast ptr %R43 to ptr
  store float %.365, ptr %.366, align 4
  %.370 = add i32 %R11.2, -16
  %.371 = add i32 %.370, 0
  %cmp.6 = icmp sgt i32 %.371, 12
  %.377 = and i1 %cmp.6, true
  %.382 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.383 = extractvalue { i32, i1 } %.382, 0
  %.384 = extractvalue { i32, i1 } %.382, 1
  %.385 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.383, i32 0)
  %.386 = extractvalue { i32, i1 } %.385, 0
  %.387 = extractvalue { i32, i1 } %.385, 1
  %.388 = or i1 %.384, %.387
  %.393 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.2, i32 64)
  %.394 = extractvalue { i32, i1 } %.393, 0
  %.395 = extractvalue { i32, i1 } %.393, 1
  %.396 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.394, i32 0)
  %.397 = extractvalue { i32, i1 } %.396, 0
  %.398 = extractvalue { i32, i1 } %.396, 1
  %.399 = or i1 %.395, %.398
  %.405 = xor i1 true, true
  %.406 = zext i1 %.388 to i32
  %.407 = zext i1 %.405 to i32
  %add = add i32 0, %UR5.2
  %add.1 = add i32 %add, 0
  %add.2 = add i32 %add.1, %.406
  %add.3 = add i32 %add.2, %.407
  %.411 = add i32 %R10.3, 16
  %.412 = add i32 %.411, 0
  %.415 = load i32, ptr %R3, align 4
  %.417 = xor i1 true, true
  %.418 = zext i1 %.399 to i32
  %.419 = zext i1 %.417 to i32
  %add.4 = add i32 0, %.415
  %add.5 = add i32 %add.4, 0
  %add.6 = add i32 %add.5, %.418
  %add.7 = add i32 %add.6, %.419
  store i32 %add.7, ptr %R3, align 4
  %.422 = load float, ptr %R13, align 4
  %.423 = load float, ptr %R14, align 4
  %.424 = load float, ptr %R6, align 4
  %fmul = fmul float %.422, %.423
  %fadd = fadd float %fmul, %.424
  %.425 = bitcast ptr %R13 to ptr
  store float %fadd, ptr %.425, align 4
  %.428 = load float, ptr %R16, align 4
  %.429 = load float, ptr %R15, align 4
  %.430 = load float, ptr %R13, align 4
  %fmul.1 = fmul float %.428, %.429
  %fadd.1 = fadd float %fmul.1, %.430
  %.431 = bitcast ptr %R13 to ptr
  store float %fadd.1, ptr %.431, align 4
  %.434 = load float, ptr %R18, align 4
  %.435 = load float, ptr %R17, align 4
  %.436 = load float, ptr %R13, align 4
  %fmul.2 = fmul float %.434, %.435
  %fadd.2 = fadd float %fmul.2, %.436
  %.437 = bitcast ptr %R13 to ptr
  store float %fadd.2, ptr %.437, align 4
  %.440 = load float, ptr %R20, align 4
  %.441 = load float, ptr %R19, align 4
  %.442 = load float, ptr %R13, align 4
  %fmul.3 = fmul float %.440, %.441
  %fadd.3 = fadd float %fmul.3, %.442
  %.443 = bitcast ptr %R13 to ptr
  store float %fadd.3, ptr %.443, align 4
  %.446 = load float, ptr %R22, align 4
  %.447 = load float, ptr %R21, align 4
  %.448 = load float, ptr %R13, align 4
  %fmul.4 = fmul float %.446, %.447
  %fadd.4 = fadd float %fmul.4, %.448
  %.449 = bitcast ptr %R13 to ptr
  store float %fadd.4, ptr %.449, align 4
  %.452 = load float, ptr %R24, align 4
  %.453 = load float, ptr %R23, align 4
  %.454 = load float, ptr %R13, align 4
  %fmul.5 = fmul float %.452, %.453
  %fadd.5 = fadd float %fmul.5, %.454
  %.455 = bitcast ptr %R13 to ptr
  store float %fadd.5, ptr %.455, align 4
  %.458 = load float, ptr %R26, align 4
  %.459 = load float, ptr %R25, align 4
  %.460 = load float, ptr %R13, align 4
  %fmul.6 = fmul float %.458, %.459
  %fadd.6 = fadd float %fmul.6, %.460
  %.461 = bitcast ptr %R13 to ptr
  store float %fadd.6, ptr %.461, align 4
  %.464 = load float, ptr %R28, align 4
  %.465 = load float, ptr %R27, align 4
  %.466 = load float, ptr %R13, align 4
  %fmul.7 = fmul float %.464, %.465
  %fadd.7 = fadd float %fmul.7, %.466
  %.467 = bitcast ptr %R13 to ptr
  store float %fadd.7, ptr %.467, align 4
  %.470 = load float, ptr %R30, align 4
  %.471 = load float, ptr %R29, align 4
  %.472 = load float, ptr %R13, align 4
  %fmul.8 = fmul float %.470, %.471
  %fadd.8 = fadd float %fmul.8, %.472
  %.473 = bitcast ptr %R13 to ptr
  store float %fadd.8, ptr %.473, align 4
  %.476 = load float, ptr %R32, align 4
  %.477 = load float, ptr %R31, align 4
  %.478 = load float, ptr %R13, align 4
  %fmul.9 = fmul float %.476, %.477
  %fadd.9 = fadd float %fmul.9, %.478
  %.479 = bitcast ptr %R13 to ptr
  store float %fadd.9, ptr %.479, align 4
  %.482 = load float, ptr %R34, align 4
  %.483 = load float, ptr %R33, align 4
  %.484 = load float, ptr %R13, align 4
  %fmul.10 = fmul float %.482, %.483
  %fadd.10 = fadd float %fmul.10, %.484
  %.485 = bitcast ptr %R13 to ptr
  store float %fadd.10, ptr %.485, align 4
  %.488 = load float, ptr %R36, align 4
  %.489 = load float, ptr %R35, align 4
  %.490 = load float, ptr %R13, align 4
  %fmul.11 = fmul float %.488, %.489
  %fadd.11 = fadd float %fmul.11, %.490
  %.491 = bitcast ptr %R13 to ptr
  store float %fadd.11, ptr %.491, align 4
  %.494 = load float, ptr %R38, align 4
  %.495 = load float, ptr %R37, align 4
  %.496 = load float, ptr %R13, align 4
  %fmul.12 = fmul float %.494, %.495
  %fadd.12 = fadd float %fmul.12, %.496
  %.497 = bitcast ptr %R13 to ptr
  store float %fadd.12, ptr %.497, align 4
  %.500 = load float, ptr %R40, align 4
  %.501 = load float, ptr %R39, align 4
  %.502 = load float, ptr %R13, align 4
  %fmul.13 = fmul float %.500, %.501
  %fadd.13 = fadd float %fmul.13, %.502
  %.503 = bitcast ptr %R13 to ptr
  store float %fadd.13, ptr %.503, align 4
  %.506 = load float, ptr %R42, align 4
  %.507 = load float, ptr %R41, align 4
  %.508 = load float, ptr %R13, align 4
  %fmul.14 = fmul float %.506, %.507
  %fadd.14 = fadd float %fmul.14, %.508
  %.509 = bitcast ptr %R13 to ptr
  store float %fadd.14, ptr %.509, align 4
  %.512 = load float, ptr %R44, align 4
  %.513 = load float, ptr %R43, align 4
  %.514 = load float, ptr %R13, align 4
  %fmul.15 = fmul float %.512, %.513
  %fadd.15 = fadd float %fmul.15, %.514
  %.515 = bitcast ptr %R6 to ptr
  store float %fadd.15, ptr %.515, align 4
  %.519 = icmp eq i1 %.377, true
  br i1 %.519, label %.L_x_12, label %.L_x_11.loopexit

.L_x_11.loopexit:                                 ; preds = %.L_x_12
  br label %.L_x_11

.L_x_11:                                          ; preds = %.L_x_11.loopexit, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0
  %UR4.1 = phi i32 [ %trunc32.3, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.386, %.L_x_11.loopexit ]
  %R11.1 = phi i32 [ %.109, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.371, %.L_x_11.loopexit ]
  %R10.2 = phi i32 [ %imad_add.5, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.412, %.L_x_11.loopexit ]
  %UR5.1 = phi i32 [ %trunc32.2, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %add.3, %.L_x_11.loopexit ]
  %R2.1 = phi i32 [ %trunc32.5, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.397, %.L_x_11.loopexit ]
  %cmp.7 = icmp sgt i32 %R11.1, 4
  %.525 = and i1 %cmp.7, true
  %.530 = icmp ne i1 %.525, true
  br i1 %.530, label %.L_x_13, label %.L_x_11_split_0x05e0

.L_x_11_split_0x05e0:                             ; preds = %.L_x_11
  %imad_mul.8 = mul i32 0, 0
  %imad_add.8 = add i32 %imad_mul.8, %UR4.1
  store i32 %imad_add.8, ptr %R8, align 4
  %zext.66 = zext i32 %R2.1 to i64
  %.540 = load i32, ptr %R3, align 4
  %zext.67 = zext i32 %.540 to i64
  %shl.33 = shl i64 %zext.67, 32
  %or.33 = or i64 %shl.33, %zext.66
  %inttoptr_bytes.33 = inttoptr i64 %or.33 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.541 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.542 = bitcast ptr %R14 to ptr
  store float %.541, ptr %.542, align 4
  %.546 = load i32, ptr %R8, align 4
  %imad_ext1.3 = zext i32 %imad_add.4 to i64
  %imad_ext2.3 = zext i32 4 to i64
  %imad_mul.9 = mul i64 %imad_ext1.3, %imad_ext2.3
  %imad_ext3.1 = zext i32 %.546 to i64
  %imad_add.9 = add i64 %imad_mul.9, %imad_ext3.1
  %.547 = and i64 %imad_add.9, -4294967296
  %.548 = lshr i64 %.547, 32
  %trunc32.8 = trunc i64 %.548 to i32
  %trunc32.9 = trunc i64 %imad_add.9 to i32
  store i32 %trunc32.9, ptr %R8, align 4
  %zext.68 = zext i32 %R2.1 to i64
  %.553 = load i32, ptr %R3, align 4
  %zext.69 = zext i32 %.553 to i64
  %shl.34 = shl i64 %zext.69, 32
  %or.34 = or i64 %shl.34, %zext.68
  %ptr_plus_imm.30 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.30 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.554 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.555 = bitcast ptr %R15 to ptr
  store float %.554, ptr %.555, align 4
  %zext.70 = zext i32 %R2.1 to i64
  %.559 = load i32, ptr %R3, align 4
  %zext.71 = zext i32 %.559 to i64
  %shl.35 = shl i64 %zext.71, 32
  %or.35 = or i64 %shl.35, %zext.70
  %ptr_plus_imm.31 = add i64 %or.35, 8
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.31 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.560 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.561 = bitcast ptr %R17 to ptr
  store float %.560, ptr %.561, align 4
  %.564 = load i32, ptr %R8, align 4
  %zext.72 = zext i32 %.564 to i64
  %zext.73 = zext i32 %trunc32.8 to i64
  %shl.36 = shl i64 %zext.73, 32
  %or.36 = or i64 %shl.36, %zext.72
  %inttoptr_bytes.36 = inttoptr i64 %or.36 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.566 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.567 = bitcast ptr %R13 to ptr
  store float %.566, ptr %.567, align 4
  %.570 = load i32, ptr %R8, align 4
  %zext.74 = zext i32 %.570 to i64
  %zext.75 = zext i32 %trunc32.8 to i64
  %shl.37 = shl i64 %zext.75, 32
  %or.37 = or i64 %shl.37, %zext.74
  %ptr_plus_imm.32 = add i64 %or.37, 4
  %inttoptr_bytes.37 = inttoptr i64 %ptr_plus_imm.32 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.572 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.573 = bitcast ptr %R16 to ptr
  store float %.572, ptr %.573, align 4
  %.576 = load i32, ptr %R8, align 4
  %zext.76 = zext i32 %.576 to i64
  %zext.77 = zext i32 %trunc32.8 to i64
  %shl.38 = shl i64 %zext.77, 32
  %or.38 = or i64 %shl.38, %zext.76
  %ptr_plus_imm.33 = add i64 %or.38, 8
  %inttoptr_bytes.38 = inttoptr i64 %ptr_plus_imm.33 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.578 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.579 = bitcast ptr %R18 to ptr
  store float %.578, ptr %.579, align 4
  %zext.78 = zext i32 %R2.1 to i64
  %.583 = load i32, ptr %R3, align 4
  %zext.79 = zext i32 %.583 to i64
  %shl.39 = shl i64 %zext.79, 32
  %or.39 = or i64 %shl.39, %zext.78
  %ptr_plus_imm.34 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %ptr_plus_imm.34 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.584 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.585 = bitcast ptr %R19 to ptr
  store float %.584, ptr %.585, align 4
  %.588 = load i32, ptr %R8, align 4
  %zext.80 = zext i32 %.588 to i64
  %zext.81 = zext i32 %trunc32.8 to i64
  %shl.40 = shl i64 %zext.81, 32
  %or.40 = or i64 %shl.40, %zext.80
  %ptr_plus_imm.35 = add i64 %or.40, 12
  %inttoptr_bytes.40 = inttoptr i64 %ptr_plus_imm.35 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.590 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.591 = bitcast ptr %R20 to ptr
  store float %.590, ptr %.591, align 4
  %zext.82 = zext i32 %R2.1 to i64
  %.595 = load i32, ptr %R3, align 4
  %zext.83 = zext i32 %.595 to i64
  %shl.41 = shl i64 %zext.83, 32
  %or.41 = or i64 %shl.41, %zext.82
  %ptr_plus_imm.36 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %ptr_plus_imm.36 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.596 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.597 = bitcast ptr %R21 to ptr
  store float %.596, ptr %.597, align 4
  %.600 = load i32, ptr %R8, align 4
  %zext.84 = zext i32 %.600 to i64
  %zext.85 = zext i32 %trunc32.8 to i64
  %shl.42 = shl i64 %zext.85, 32
  %or.42 = or i64 %shl.42, %zext.84
  %ptr_plus_imm.37 = add i64 %or.42, 16
  %inttoptr_bytes.42 = inttoptr i64 %ptr_plus_imm.37 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.602 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.603 = bitcast ptr %R22 to ptr
  store float %.602, ptr %.603, align 4
  %zext.86 = zext i32 %R2.1 to i64
  %.607 = load i32, ptr %R3, align 4
  %zext.87 = zext i32 %.607 to i64
  %shl.43 = shl i64 %zext.87, 32
  %or.43 = or i64 %shl.43, %zext.86
  %ptr_plus_imm.38 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %ptr_plus_imm.38 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.608 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.609 = bitcast ptr %R23 to ptr
  store float %.608, ptr %.609, align 4
  %.612 = load i32, ptr %R8, align 4
  %zext.88 = zext i32 %.612 to i64
  %zext.89 = zext i32 %trunc32.8 to i64
  %shl.44 = shl i64 %zext.89, 32
  %or.44 = or i64 %shl.44, %zext.88
  %ptr_plus_imm.39 = add i64 %or.44, 20
  %inttoptr_bytes.44 = inttoptr i64 %ptr_plus_imm.39 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.614 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.615 = bitcast ptr %R24 to ptr
  store float %.614, ptr %.615, align 4
  %zext.90 = zext i32 %R2.1 to i64
  %.619 = load i32, ptr %R3, align 4
  %zext.91 = zext i32 %.619 to i64
  %shl.45 = shl i64 %zext.91, 32
  %or.45 = or i64 %shl.45, %zext.90
  %ptr_plus_imm.40 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %ptr_plus_imm.40 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.620 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.621 = bitcast ptr %R25 to ptr
  store float %.620, ptr %.621, align 4
  %.624 = load i32, ptr %R8, align 4
  %zext.92 = zext i32 %.624 to i64
  %zext.93 = zext i32 %trunc32.8 to i64
  %shl.46 = shl i64 %zext.93, 32
  %or.46 = or i64 %shl.46, %zext.92
  %ptr_plus_imm.41 = add i64 %or.46, 24
  %inttoptr_bytes.46 = inttoptr i64 %ptr_plus_imm.41 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.626 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.627 = bitcast ptr %R26 to ptr
  store float %.626, ptr %.627, align 4
  %.630 = load i32, ptr %R8, align 4
  %zext.94 = zext i32 %.630 to i64
  %zext.95 = zext i32 %trunc32.8 to i64
  %shl.47 = shl i64 %zext.95, 32
  %or.47 = or i64 %shl.47, %zext.94
  %ptr_plus_imm.42 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %ptr_plus_imm.42 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.632 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.633 = bitcast ptr %R28 to ptr
  store float %.632, ptr %.633, align 4
  %zext.96 = zext i32 %R2.1 to i64
  %.637 = load i32, ptr %R3, align 4
  %zext.97 = zext i32 %.637 to i64
  %shl.48 = shl i64 %zext.97, 32
  %or.48 = or i64 %shl.48, %zext.96
  %ptr_plus_imm.43 = add i64 %or.48, 28
  %inttoptr_bytes.48 = inttoptr i64 %ptr_plus_imm.43 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.638 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.639 = bitcast ptr %R27 to ptr
  store float %.638, ptr %.639, align 4
  %.643 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.644 = extractvalue { i32, i1 } %.643, 0
  %.645 = extractvalue { i32, i1 } %.643, 1
  %.646 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.644, i32 0)
  %.647 = extractvalue { i32, i1 } %.646, 0
  %.648 = extractvalue { i32, i1 } %.646, 1
  %.649 = or i1 %.645, %.648
  %.658 = add i32 %R10.2, 8
  %.659 = add i32 %.658, 0
  %.663 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.1, i32 32)
  %.664 = extractvalue { i32, i1 } %.663, 0
  %.665 = extractvalue { i32, i1 } %.663, 1
  %.666 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.664, i32 0)
  %.667 = extractvalue { i32, i1 } %.666, 0
  %.668 = extractvalue { i32, i1 } %.666, 1
  %.669 = or i1 %.665, %.668
  %.674 = add i32 %R11.1, -8
  %.675 = add i32 %.674, 0
  %.678 = load i32, ptr %R3, align 4
  %.680 = xor i1 true, true
  %.681 = zext i1 %.669 to i32
  %.682 = zext i1 %.680 to i32
  %add.8 = add i32 0, %.678
  %add.9 = add i32 %add.8, 0
  %add.10 = add i32 %add.9, %.681
  %add.11 = add i32 %add.10, %.682
  store i32 %add.11, ptr %R3, align 4
  %.687 = xor i1 true, true
  %.688 = zext i1 %.649 to i32
  %.689 = zext i1 %.687 to i32
  %add.12 = add i32 0, %UR5.1
  %add.13 = add i32 %add.12, 0
  %add.14 = add i32 %add.13, %.688
  %add.15 = add i32 %add.14, %.689
  %.692 = load float, ptr %R13, align 4
  %.693 = load float, ptr %R14, align 4
  %.694 = load float, ptr %R6, align 4
  %fmul.16 = fmul float %.692, %.693
  %fadd.16 = fadd float %fmul.16, %.694
  %.695 = bitcast ptr %R13 to ptr
  store float %fadd.16, ptr %.695, align 4
  %.698 = load float, ptr %R16, align 4
  %.699 = load float, ptr %R15, align 4
  %.700 = load float, ptr %R13, align 4
  %fmul.17 = fmul float %.698, %.699
  %fadd.17 = fadd float %fmul.17, %.700
  %.701 = bitcast ptr %R13 to ptr
  store float %fadd.17, ptr %.701, align 4
  %.704 = load float, ptr %R18, align 4
  %.705 = load float, ptr %R17, align 4
  %.706 = load float, ptr %R13, align 4
  %fmul.18 = fmul float %.704, %.705
  %fadd.18 = fadd float %fmul.18, %.706
  %.707 = bitcast ptr %R13 to ptr
  store float %fadd.18, ptr %.707, align 4
  %.710 = load float, ptr %R20, align 4
  %.711 = load float, ptr %R19, align 4
  %.712 = load float, ptr %R13, align 4
  %fmul.19 = fmul float %.710, %.711
  %fadd.19 = fadd float %fmul.19, %.712
  %.713 = bitcast ptr %R13 to ptr
  store float %fadd.19, ptr %.713, align 4
  %.716 = load float, ptr %R22, align 4
  %.717 = load float, ptr %R21, align 4
  %.718 = load float, ptr %R13, align 4
  %fmul.20 = fmul float %.716, %.717
  %fadd.20 = fadd float %fmul.20, %.718
  %.719 = bitcast ptr %R13 to ptr
  store float %fadd.20, ptr %.719, align 4
  %.722 = load float, ptr %R24, align 4
  %.723 = load float, ptr %R23, align 4
  %.724 = load float, ptr %R13, align 4
  %fmul.21 = fmul float %.722, %.723
  %fadd.21 = fadd float %fmul.21, %.724
  %.725 = bitcast ptr %R13 to ptr
  store float %fadd.21, ptr %.725, align 4
  %.728 = load float, ptr %R26, align 4
  %.729 = load float, ptr %R25, align 4
  %.730 = load float, ptr %R13, align 4
  %fmul.22 = fmul float %.728, %.729
  %fadd.22 = fadd float %fmul.22, %.730
  %.731 = bitcast ptr %R13 to ptr
  store float %fadd.22, ptr %.731, align 4
  %.734 = load float, ptr %R28, align 4
  %.735 = load float, ptr %R27, align 4
  %.736 = load float, ptr %R13, align 4
  %fmul.23 = fmul float %.734, %.735
  %fadd.23 = fadd float %fmul.23, %.736
  %.737 = bitcast ptr %R6 to ptr
  store float %fadd.23, ptr %.737, align 4
  br label %.L_x_13

.L_x_13:                                          ; preds = %.L_x_11_split_0x05e0, %.L_x_11
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_11 ], [ %.647, %.L_x_11_split_0x05e0 ]
  %R11.3 = phi i32 [ %R11.1, %.L_x_11 ], [ %.675, %.L_x_11_split_0x05e0 ]
  %R10.4 = phi i32 [ %R10.2, %.L_x_11 ], [ %.659, %.L_x_11_split_0x05e0 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_11 ], [ %add.15, %.L_x_11_split_0x05e0 ]
  %R2.3 = phi i32 [ %R2.1, %.L_x_11 ], [ %.667, %.L_x_11_split_0x05e0 ]
  %cmp.8 = icmp ne i32 %R11.3, 0
  %.744 = or i1 %cmp.8, %.127
  %.749 = icmp ne i1 %.744, true
  br i1 %.749, label %.L_x_9, label %.L_x_10.preheader

.L_x_10.preheader:                                ; preds = %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150, %.L_x_13
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_13 ], [ %trunc32.3, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %R11.0.ph = phi i32 [ %R11.3, %.L_x_13 ], [ %.109, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %R10.1.ph = phi i32 [ %R10.4, %.L_x_13 ], [ %imad_add.5, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_13 ], [ %trunc32.2, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %R2.0.ph = phi i32 [ %R2.3, %.L_x_13 ], [ %trunc32.5, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  br label %.L_x_10

.L_x_10:                                          ; preds = %.L_x_10.preheader, %.L_x_10
  %UR4.0 = phi i32 [ %.830, %.L_x_10 ], [ %UR4.0.ph, %.L_x_10.preheader ]
  %R11.0 = phi i32 [ %.815, %.L_x_10 ], [ %R11.0.ph, %.L_x_10.preheader ]
  %R10.1 = phi i32 [ %.838, %.L_x_10 ], [ %R10.1.ph, %.L_x_10.preheader ]
  %UR5.0 = phi i32 [ %add.19, %.L_x_10 ], [ %UR5.0.ph, %.L_x_10.preheader ]
  %R2.0 = phi i32 [ %.884, %.L_x_10 ], [ %R2.0.ph, %.L_x_10.preheader ]
  store i32 %UR4.0, ptr %R8, align 4
  %zext.98 = zext i32 %R2.0 to i64
  %.759 = load i32, ptr %R3, align 4
  %zext.99 = zext i32 %.759 to i64
  %shl.49 = shl i64 %zext.99, 32
  %or.49 = or i64 %shl.49, %zext.98
  %inttoptr_bytes.49 = inttoptr i64 %or.49 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.760 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.761 = bitcast ptr %R14 to ptr
  store float %.760, ptr %.761, align 4
  %.765 = load i32, ptr %R8, align 4
  %imad_ext1.4 = zext i32 %imad_add.4 to i64
  %imad_ext2.4 = zext i32 4 to i64
  %imad_mul.11 = mul i64 %imad_ext1.4, %imad_ext2.4
  %imad_ext3.2 = zext i32 %.765 to i64
  %imad_add.11 = add i64 %imad_mul.11, %imad_ext3.2
  %.766 = and i64 %imad_add.11, -4294967296
  %.767 = lshr i64 %.766, 32
  %trunc32.10 = trunc i64 %.767 to i32
  %trunc32.11 = trunc i64 %imad_add.11 to i32
  store i32 %trunc32.11, ptr %R8, align 4
  %zext.100 = zext i32 %R2.0 to i64
  %.772 = load i32, ptr %R3, align 4
  %zext.101 = zext i32 %.772 to i64
  %shl.50 = shl i64 %zext.101, 32
  %or.50 = or i64 %shl.50, %zext.100
  %ptr_plus_imm.44 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %ptr_plus_imm.44 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.773 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.774 = bitcast ptr %R15 to ptr
  store float %.773, ptr %.774, align 4
  %zext.102 = zext i32 %R2.0 to i64
  %.778 = load i32, ptr %R3, align 4
  %zext.103 = zext i32 %.778 to i64
  %shl.51 = shl i64 %zext.103, 32
  %or.51 = or i64 %shl.51, %zext.102
  %ptr_plus_imm.45 = add i64 %or.51, 8
  %inttoptr_bytes.51 = inttoptr i64 %ptr_plus_imm.45 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.779 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.780 = bitcast ptr %R17 to ptr
  store float %.779, ptr %.780, align 4
  %.783 = load i32, ptr %R8, align 4
  %zext.104 = zext i32 %.783 to i64
  %zext.105 = zext i32 %trunc32.10 to i64
  %shl.52 = shl i64 %zext.105, 32
  %or.52 = or i64 %shl.52, %zext.104
  %inttoptr_bytes.52 = inttoptr i64 %or.52 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.785 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.786 = bitcast ptr %R13 to ptr
  store float %.785, ptr %.786, align 4
  %.789 = load i32, ptr %R8, align 4
  %zext.106 = zext i32 %.789 to i64
  %zext.107 = zext i32 %trunc32.10 to i64
  %shl.53 = shl i64 %zext.107, 32
  %or.53 = or i64 %shl.53, %zext.106
  %ptr_plus_imm.46 = add i64 %or.53, 4
  %inttoptr_bytes.53 = inttoptr i64 %ptr_plus_imm.46 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.791 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.792 = bitcast ptr %R16 to ptr
  store float %.791, ptr %.792, align 4
  %.795 = load i32, ptr %R8, align 4
  %zext.108 = zext i32 %.795 to i64
  %zext.109 = zext i32 %trunc32.10 to i64
  %shl.54 = shl i64 %zext.109, 32
  %or.54 = or i64 %shl.54, %zext.108
  %ptr_plus_imm.47 = add i64 %or.54, 8
  %inttoptr_bytes.54 = inttoptr i64 %ptr_plus_imm.47 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.797 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.798 = bitcast ptr %R18 to ptr
  store float %.797, ptr %.798, align 4
  %.801 = load i32, ptr %R8, align 4
  %zext.110 = zext i32 %.801 to i64
  %zext.111 = zext i32 %trunc32.10 to i64
  %shl.55 = shl i64 %zext.111, 32
  %or.55 = or i64 %shl.55, %zext.110
  %ptr_plus_imm.48 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %ptr_plus_imm.48 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.803 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.804 = bitcast ptr %R20 to ptr
  store float %.803, ptr %.804, align 4
  %zext.112 = zext i32 %R2.0 to i64
  %.808 = load i32, ptr %R3, align 4
  %zext.113 = zext i32 %.808 to i64
  %shl.56 = shl i64 %zext.113, 32
  %or.56 = or i64 %shl.56, %zext.112
  %ptr_plus_imm.49 = add i64 %or.56, 12
  %inttoptr_bytes.56 = inttoptr i64 %ptr_plus_imm.49 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.809 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.810 = bitcast ptr %R19 to ptr
  store float %.809, ptr %.810, align 4
  %.814 = add i32 %R11.0, -4
  %.815 = add i32 %.814, 0
  %cmp.9 = icmp ne i32 %.815, 0
  %.821 = and i1 %cmp.9, true
  %.826 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.827 = extractvalue { i32, i1 } %.826, 0
  %.828 = extractvalue { i32, i1 } %.826, 1
  %.829 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.827, i32 0)
  %.830 = extractvalue { i32, i1 } %.829, 0
  %.831 = extractvalue { i32, i1 } %.829, 1
  %.832 = or i1 %.828, %.831
  %.837 = add i32 %R10.1, 4
  %.838 = add i32 %.837, 0
  %.843 = xor i1 true, true
  %.844 = zext i1 %.832 to i32
  %.845 = zext i1 %.843 to i32
  %add.16 = add i32 0, %UR5.0
  %add.17 = add i32 %add.16, 0
  %add.18 = add i32 %add.17, %.844
  %add.19 = add i32 %add.18, %.845
  %.848 = load float, ptr %R13, align 4
  %.849 = load float, ptr %R14, align 4
  %.850 = load float, ptr %R6, align 4
  %fmul.24 = fmul float %.848, %.849
  %fadd.24 = fadd float %fmul.24, %.850
  %.851 = bitcast ptr %R13 to ptr
  store float %fadd.24, ptr %.851, align 4
  %.854 = load float, ptr %R16, align 4
  %.855 = load float, ptr %R15, align 4
  %.856 = load float, ptr %R13, align 4
  %fmul.25 = fmul float %.854, %.855
  %fadd.25 = fadd float %fmul.25, %.856
  %.857 = bitcast ptr %R13 to ptr
  store float %fadd.25, ptr %.857, align 4
  %.860 = load float, ptr %R18, align 4
  %.861 = load float, ptr %R17, align 4
  %.862 = load float, ptr %R13, align 4
  %fmul.26 = fmul float %.860, %.861
  %fadd.26 = fadd float %fmul.26, %.862
  %.863 = bitcast ptr %R17 to ptr
  store float %fadd.26, ptr %.863, align 4
  %.867 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.0, i32 16)
  %.868 = extractvalue { i32, i1 } %.867, 0
  %.869 = extractvalue { i32, i1 } %.867, 1
  %.870 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.868, i32 0)
  %.871 = extractvalue { i32, i1 } %.870, 0
  %.872 = extractvalue { i32, i1 } %.870, 1
  %.873 = or i1 %.869, %.872
  store i32 %.871, ptr %R13, align 4
  %.877 = load i32, ptr %R3, align 4
  %.879 = xor i1 true, true
  %.880 = zext i1 %.873 to i32
  %.881 = zext i1 %.879 to i32
  %add.20 = add i32 0, %.877
  %add.21 = add i32 %add.20, 0
  %add.22 = add i32 %add.21, %.880
  %add.23 = add i32 %add.22, %.881
  store i32 %add.23, ptr %R14, align 4
  %.884 = load i32, ptr %R13, align 4
  %.887 = load float, ptr %R20, align 4
  %.888 = load float, ptr %R19, align 4
  %.889 = load float, ptr %R17, align 4
  %fmul.27 = fmul float %.887, %.888
  %fadd.27 = fadd float %fmul.27, %.889
  %.890 = bitcast ptr %R6 to ptr
  store float %fadd.27, ptr %.890, align 4
  %.893 = load i32, ptr %R14, align 4
  store i32 %.893, ptr %R3, align 4
  %.897 = icmp eq i1 %.821, true
  br i1 %.897, label %.L_x_10, label %.L_x_9.loopexit

.L_x_9.loopexit:                                  ; preds = %.L_x_10
  br label %.L_x_9

.L_x_9:                                           ; preds = %.L_x_9.loopexit, %.L_x_13, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100
  %R10.0 = phi i32 [ 0, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100 ], [ %R10.4, %.L_x_13 ], [ %.838, %.L_x_9.loopexit ]
  %cmp.10 = icmp ne i32 %.89, 0
  %.903 = and i1 %cmp.10, true
  %.908 = icmp ne i1 %.903, true
  br i1 %.908, label %.L_x_8, label %.L_x_9_split_0x09d0

.L_x_9_split_0x09d0:                              ; preds = %.L_x_9
  %imad_mul.12 = mul i32 %imad_add, %Arg_5
  %imad_add.12 = add i32 %imad_mul.12, %R10.0
  %imad_mul.13 = mul i32 %imad_add.1, %Arg_5
  %imad_add.13 = add i32 %imad_mul.13, %R10.0
  store i32 %imad_add.13, ptr %R8, align 4
  %imad_ext1.5 = zext i32 %imad_add.12 to i64
  %imad_ext2.5 = zext i32 4 to i64
  %imad_mul.14 = mul i64 %imad_ext1.5, %imad_ext2.5
  %.921 = ptrtoint ptr %Arg_1 to i64
  %imad_add.14 = add i64 %imad_mul.14, %.921
  %.922 = and i64 %imad_add.14, -4294967296
  %.923 = lshr i64 %.922, 32
  %trunc32.12 = trunc i64 %.923 to i32
  %trunc32.13 = trunc i64 %imad_add.14 to i32
  store i32 %trunc32.12, ptr %R3, align 4
  %.927 = load i32, ptr %R8, align 4
  %imad_ext1.6 = zext i32 %.927 to i64
  %imad_ext2.6 = zext i32 4 to i64
  %imad_mul.15 = mul i64 %imad_ext1.6, %imad_ext2.6
  %.929 = ptrtoint ptr %Arg_0 to i64
  %imad_add.15 = add i64 %imad_mul.15, %.929
  %.930 = and i64 %imad_add.15, -4294967296
  %.931 = lshr i64 %.930, 32
  %trunc32.14 = trunc i64 %.931 to i32
  %trunc32.15 = trunc i64 %imad_add.15 to i32
  store i32 %trunc32.15, ptr %R8, align 4
  %.935 = load i32, ptr %R3, align 4
  %.938 = load i32, ptr %R8, align 4
  %imad_mul.16 = mul i32 0, 0
  %imad_add.16 = add i32 %imad_mul.16, %.938
  br label %.L_x_14

.L_x_14:                                          ; preds = %.L_x_14, %.L_x_9_split_0x09d0
  %R11.4 = phi i32 [ %.935, %.L_x_9_split_0x09d0 ], [ %add.31, %.L_x_14 ]
  %R10.5 = phi i32 [ %imad_add.16, %.L_x_9_split_0x09d0 ], [ %.970, %.L_x_14 ]
  %R9.0 = phi i32 [ %trunc32.14, %.L_x_9_split_0x09d0 ], [ %add.27, %.L_x_14 ]
  %R4.0 = phi i32 [ %.89, %.L_x_9_split_0x09d0 ], [ %.962, %.L_x_14 ]
  %R2.4 = phi i32 [ %trunc32.13, %.L_x_9_split_0x09d0 ], [ %.988, %.L_x_14 ]
  store i32 %R11.4, ptr %R3, align 4
  store i32 %R10.5, ptr %R8, align 4
  %zext.114 = zext i32 %R2.4 to i64
  %.949 = load i32, ptr %R3, align 4
  %zext.115 = zext i32 %.949 to i64
  %shl.57 = shl i64 %zext.115, 32
  %or.57 = or i64 %shl.57, %zext.114
  %inttoptr_bytes.57 = inttoptr i64 %or.57 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.950 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.951 = bitcast ptr %R3 to ptr
  store float %.950, ptr %.951, align 4
  %.954 = load i32, ptr %R8, align 4
  %zext.116 = zext i32 %.954 to i64
  %zext.117 = zext i32 %R9.0 to i64
  %shl.58 = shl i64 %zext.117, 32
  %or.58 = or i64 %shl.58, %zext.116
  %inttoptr_bytes.58 = inttoptr i64 %or.58 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.956 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.957 = bitcast ptr %R8 to ptr
  store float %.956, ptr %.957, align 4
  %.961 = add i32 %R4.0, -1
  %.962 = add i32 %.961, 0
  %.966 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R10.5, i32 4)
  %.967 = extractvalue { i32, i1 } %.966, 0
  %.968 = extractvalue { i32, i1 } %.966, 1
  %.969 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.967, i32 0)
  %.970 = extractvalue { i32, i1 } %.969, 0
  %.971 = extractvalue { i32, i1 } %.969, 1
  %.972 = or i1 %.968, %.971
  %cmp.11 = icmp ne i32 %.962, 0
  %.979 = and i1 %cmp.11, true
  %.984 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.4, i32 4)
  %.985 = extractvalue { i32, i1 } %.984, 0
  %.986 = extractvalue { i32, i1 } %.984, 1
  %.987 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.985, i32 0)
  %.988 = extractvalue { i32, i1 } %.987, 0
  %.989 = extractvalue { i32, i1 } %.987, 1
  %.990 = or i1 %.986, %.989
  %.996 = xor i1 true, true
  %.997 = zext i1 %.972 to i32
  %.998 = zext i1 %.996 to i32
  %add.24 = add i32 0, %R9.0
  %add.25 = add i32 %add.24, 0
  %add.26 = add i32 %add.25, %.997
  %add.27 = add i32 %add.26, %.998
  %.1003 = xor i1 true, true
  %.1004 = zext i1 %.990 to i32
  %.1005 = zext i1 %.1003 to i32
  %add.28 = add i32 0, %R11.4
  %add.29 = add i32 %add.28, 0
  %add.30 = add i32 %add.29, %.1004
  %add.31 = add i32 %add.30, %.1005
  %.1008 = load float, ptr %R3, align 4
  %.1009 = load float, ptr %R8, align 4
  %.1010 = load float, ptr %R6, align 4
  %fmul.28 = fmul float %.1008, %.1009
  %fadd.28 = fadd float %fmul.28, %.1010
  %.1011 = bitcast ptr %R6 to ptr
  store float %fadd.28, ptr %.1011, align 4
  %.1015 = icmp eq i1 %.979, true
  br i1 %.1015, label %.L_x_14, label %.L_x_8.loopexit

.L_x_8.loopexit:                                  ; preds = %.L_x_14
  br label %.L_x_8

.L_x_8:                                           ; preds = %.L_x_8.loopexit, %.L_x_9, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x00a0
  %imad_mul.17 = mul i32 %imad_add.1, %Arg_6
  %imad_add.17 = add i32 %imad_mul.17, %imad_add
  %imad_ext1.7 = zext i32 %imad_add.17 to i64
  %imad_ext2.7 = zext i32 4 to i64
  %imad_mul.18 = mul i64 %imad_ext1.7, %imad_ext2.7
  %.1024 = ptrtoint ptr %Arg_3 to i64
  %imad_add.18 = add i64 %imad_mul.18, %.1024
  %.1025 = and i64 %imad_add.18, -4294967296
  %.1026 = lshr i64 %.1025, 32
  %trunc32.16 = trunc i64 %.1026 to i32
  %trunc32.17 = trunc i64 %imad_add.18 to i32
  store i32 %trunc32.16, ptr %R3, align 4
  %.1030 = load float, ptr %R6, align 4
  %zext.118 = zext i32 %trunc32.17 to i64
  %.1032 = load i32, ptr %R3, align 4
  %zext.119 = zext i32 %.1032 to i64
  %shl.59 = shl i64 %zext.119, 32
  %or.59 = or i64 %shl.59, %zext.118
  %inttoptr_bytes.59 = inttoptr i64 %or.59 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.1030, ptr addrspace(1) %ptr_cast_for_access.59, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z18linear_proj_kernelPKfS0_S0_Pfiii, %.L_x_8
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
