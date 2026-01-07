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
  %.33 = and i1 %cmp, true
  %.37 = load i32, ptr %R7, align 4
  %nvvm_blockdim_y = call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %imad_mul.1 = mul i32 %.37, %nvvm_blockdim_y
  %imad_add.1 = add i32 %imad_mul.1, %nvvm_threadidx_y
  store i32 %imad_add.1, ptr %R7, align 4
  %.41 = load i32, ptr %R7, align 4
  %cmp.1 = icmp sge i32 %.41, %Arg_4
  %.45 = or i1 %cmp.1, %.33
  %.50 = icmp eq i1 %.45, true
  br i1 %.50, label %ExitFunction, label %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x00a0

.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x00a0: ; preds = %Entry_.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii
  %imad_ext1 = zext i32 %imad_add to i64
  %imad_ext2 = zext i32 4 to i64
  %imad_mul.2 = mul i64 %imad_ext1, %imad_ext2
  %.59 = ptrtoint ptr %Arg_2 to i64
  %imad_add.2 = add i64 %imad_mul.2, %.59
  %.60 = and i64 %imad_add.2, -4294967296
  %.61 = lshr i64 %.60, 32
  %trunc32 = trunc i64 %.61 to i32
  %trunc32.1 = trunc i64 %imad_add.2 to i32
  store i32 %trunc32.1, ptr %R10, align 4
  %.65 = load i32, ptr %R10, align 4
  %zext = zext i32 %.65 to i64
  %zext.1 = zext i32 %trunc32 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.67 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.68 = bitcast ptr %R10 to ptr
  store float %.67, ptr %.68, align 4
  %cmp.2 = icmp sge i32 %Arg_5, 1
  %.77 = and i1 %cmp.2, true
  %.82 = icmp ne i1 %.77, true
  br i1 %.82, label %.L_x_0, label %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0100

.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0100: ; preds = %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x00a0
  %.86 = add i32 %Arg_5, -1
  %.87 = add i32 %.86, 0
  %.92 = and i32 %Arg_5, 3
  %cmp.3 = icmp sge i32 %.87, 3
  %.99 = and i1 %cmp.3, true
  store i32 0, ptr %R6, align 4
  %.107 = icmp ne i1 %.99, true
  br i1 %.107, label %.L_x_1, label %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150

.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150: ; preds = %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0100
  %.111 = sub i32 0, %.92
  %.112 = add i32 %.111, %Arg_5
  %.113 = add i32 %.112, 0
  %.116 = load i32, ptr %R7, align 4
  %imad_mul.3 = mul i32 %.116, %Arg_5
  %imad_add.3 = add i32 %imad_mul.3, 0
  %.119 = ptrtoint ptr %Arg_1 to i64
  %.120 = and i64 %.119, -4294967296
  %.121 = lshr i64 %.120, 32
  %trunc32.2 = trunc i64 %.121 to i32
  %trunc32.3 = trunc i64 %.119 to i32
  %imad_mul.4 = mul i32 %imad_add, %Arg_5
  %imad_add.4 = add i32 %imad_mul.4, 0
  %cmp.4 = icmp sgt i32 %.113, 0
  %.132 = and i1 %cmp.4, true
  %imad_mul.5 = mul i32 0, 0
  %imad_add.5 = add i32 %imad_mul.5, 0
  store i32 %imad_add.5, ptr %R6, align 4
  %imad_ext1.1 = zext i32 %imad_add.3 to i64
  %imad_ext2.1 = zext i32 4 to i64
  %imad_mul.6 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.140 = ptrtoint ptr %Arg_0 to i64
  %imad_add.6 = add i64 %imad_mul.6, %.140
  %.141 = and i64 %imad_add.6, -4294967296
  %.142 = lshr i64 %.141, 32
  %trunc32.4 = trunc i64 %.142 to i32
  %trunc32.5 = trunc i64 %imad_add.6 to i32
  store i32 %trunc32.4, ptr %R3, align 4
  %.147 = icmp ne i1 %.132, true
  br i1 %.147, label %.L_x_2.preheader, label %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0

.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0: ; preds = %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150
  %cmp.5 = icmp sgt i32 %.113, 12
  %.154 = and i1 %cmp.5, true
  %.162 = icmp ne i1 %.154, true
  br i1 %.162, label %.L_x_3, label %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200

.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200: ; preds = %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0
  br label %.L_x_4

.L_x_4:                                           ; preds = %.L_x_4, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200
  %UR4.2 = phi i32 [ %trunc32.3, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.393, %.L_x_4 ]
  %R11.2 = phi i32 [ %.113, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.377, %.L_x_4 ]
  %UR5.2 = phi i32 [ %trunc32.2, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %add.3, %.L_x_4 ]
  %R2.2 = phi i32 [ %trunc32.5, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.404, %.L_x_4 ]
  %zext.2 = zext i32 %R2.2 to i64
  %.174 = load i32, ptr %R3, align 4
  %zext.3 = zext i32 %.174 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.175 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.176 = bitcast ptr %R14 to ptr
  store float %.175, ptr %.176, align 4
  %zext.4 = zext i32 %R2.2 to i64
  %.183 = load i32, ptr %R3, align 4
  %zext.5 = zext i32 %.183 to i64
  %shl.2 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.2, %zext.4
  %ptr_plus_imm = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.184 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.185 = bitcast ptr %R15 to ptr
  store float %.184, ptr %.185, align 4
  %imad_ext1.2 = zext i32 %imad_add.4 to i64
  %imad_ext2.2 = zext i32 4 to i64
  %imad_mul.7 = mul i64 %imad_ext1.2, %imad_ext2.2
  %imad_ext3 = zext i32 %UR4.2 to i64
  %imad_add.7 = add i64 %imad_mul.7, %imad_ext3
  %.190 = and i64 %imad_add.7, -4294967296
  %.191 = lshr i64 %.190, 32
  %trunc32.6 = trunc i64 %.191 to i32
  %trunc32.7 = trunc i64 %imad_add.7 to i32
  %zext.6 = zext i32 %R2.2 to i64
  %.196 = load i32, ptr %R3, align 4
  %zext.7 = zext i32 %.196 to i64
  %shl.3 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.3, %zext.6
  %ptr_plus_imm.1 = add i64 %or.3, 8
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.197 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.198 = bitcast ptr %R17 to ptr
  store float %.197, ptr %.198, align 4
  %zext.8 = zext i32 %R2.2 to i64
  %.202 = load i32, ptr %R3, align 4
  %zext.9 = zext i32 %.202 to i64
  %shl.4 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.4, %zext.8
  %ptr_plus_imm.2 = add i64 %or.4, 12
  %inttoptr_bytes.4 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.203 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.204 = bitcast ptr %R19 to ptr
  store float %.203, ptr %.204, align 4
  %zext.10 = zext i32 %trunc32.7 to i64
  %zext.11 = zext i32 %trunc32.6 to i64
  %shl.5 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.5, %zext.10
  %inttoptr_bytes.5 = inttoptr i64 %or.5 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.209 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.210 = bitcast ptr %R13 to ptr
  store float %.209, ptr %.210, align 4
  %zext.12 = zext i32 %trunc32.7 to i64
  %zext.13 = zext i32 %trunc32.6 to i64
  %shl.6 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.6, %zext.12
  %ptr_plus_imm.3 = add i64 %or.6, 4
  %inttoptr_bytes.6 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.215 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.216 = bitcast ptr %R16 to ptr
  store float %.215, ptr %.216, align 4
  %zext.14 = zext i32 %trunc32.7 to i64
  %zext.15 = zext i32 %trunc32.6 to i64
  %shl.7 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.7, %zext.14
  %ptr_plus_imm.4 = add i64 %or.7, 8
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.221 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.222 = bitcast ptr %R18 to ptr
  store float %.221, ptr %.222, align 4
  %zext.16 = zext i32 %trunc32.7 to i64
  %zext.17 = zext i32 %trunc32.6 to i64
  %shl.8 = shl i64 %zext.17, 32
  %or.8 = or i64 %shl.8, %zext.16
  %ptr_plus_imm.5 = add i64 %or.8, 12
  %inttoptr_bytes.8 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.227 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.228 = bitcast ptr %R20 to ptr
  store float %.227, ptr %.228, align 4
  %zext.18 = zext i32 %R2.2 to i64
  %.232 = load i32, ptr %R3, align 4
  %zext.19 = zext i32 %.232 to i64
  %shl.9 = shl i64 %zext.19, 32
  %or.9 = or i64 %shl.9, %zext.18
  %ptr_plus_imm.6 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm.6 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.233 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.234 = bitcast ptr %R21 to ptr
  store float %.233, ptr %.234, align 4
  %zext.20 = zext i32 %trunc32.7 to i64
  %zext.21 = zext i32 %trunc32.6 to i64
  %shl.10 = shl i64 %zext.21, 32
  %or.10 = or i64 %shl.10, %zext.20
  %ptr_plus_imm.7 = add i64 %or.10, 16
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.7 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.239 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.240 = bitcast ptr %R22 to ptr
  store float %.239, ptr %.240, align 4
  %zext.22 = zext i32 %R2.2 to i64
  %.244 = load i32, ptr %R3, align 4
  %zext.23 = zext i32 %.244 to i64
  %shl.11 = shl i64 %zext.23, 32
  %or.11 = or i64 %shl.11, %zext.22
  %ptr_plus_imm.8 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.8 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.245 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.246 = bitcast ptr %R23 to ptr
  store float %.245, ptr %.246, align 4
  %zext.24 = zext i32 %trunc32.7 to i64
  %zext.25 = zext i32 %trunc32.6 to i64
  %shl.12 = shl i64 %zext.25, 32
  %or.12 = or i64 %shl.12, %zext.24
  %ptr_plus_imm.9 = add i64 %or.12, 20
  %inttoptr_bytes.12 = inttoptr i64 %ptr_plus_imm.9 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.251 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.252 = bitcast ptr %R24 to ptr
  store float %.251, ptr %.252, align 4
  %zext.26 = zext i32 %R2.2 to i64
  %.256 = load i32, ptr %R3, align 4
  %zext.27 = zext i32 %.256 to i64
  %shl.13 = shl i64 %zext.27, 32
  %or.13 = or i64 %shl.13, %zext.26
  %ptr_plus_imm.10 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %ptr_plus_imm.10 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.257 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.258 = bitcast ptr %R25 to ptr
  store float %.257, ptr %.258, align 4
  %zext.28 = zext i32 %trunc32.7 to i64
  %zext.29 = zext i32 %trunc32.6 to i64
  %shl.14 = shl i64 %zext.29, 32
  %or.14 = or i64 %shl.14, %zext.28
  %ptr_plus_imm.11 = add i64 %or.14, 24
  %inttoptr_bytes.14 = inttoptr i64 %ptr_plus_imm.11 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.263 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.264 = bitcast ptr %R26 to ptr
  store float %.263, ptr %.264, align 4
  %zext.30 = zext i32 %R2.2 to i64
  %.268 = load i32, ptr %R3, align 4
  %zext.31 = zext i32 %.268 to i64
  %shl.15 = shl i64 %zext.31, 32
  %or.15 = or i64 %shl.15, %zext.30
  %ptr_plus_imm.12 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %ptr_plus_imm.12 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.269 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.270 = bitcast ptr %R27 to ptr
  store float %.269, ptr %.270, align 4
  %zext.32 = zext i32 %trunc32.7 to i64
  %zext.33 = zext i32 %trunc32.6 to i64
  %shl.16 = shl i64 %zext.33, 32
  %or.16 = or i64 %shl.16, %zext.32
  %ptr_plus_imm.13 = add i64 %or.16, 28
  %inttoptr_bytes.16 = inttoptr i64 %ptr_plus_imm.13 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.275 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.276 = bitcast ptr %R28 to ptr
  store float %.275, ptr %.276, align 4
  %zext.34 = zext i32 %R2.2 to i64
  %.280 = load i32, ptr %R3, align 4
  %zext.35 = zext i32 %.280 to i64
  %shl.17 = shl i64 %zext.35, 32
  %or.17 = or i64 %shl.17, %zext.34
  %ptr_plus_imm.14 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %ptr_plus_imm.14 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.281 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.282 = bitcast ptr %R29 to ptr
  store float %.281, ptr %.282, align 4
  %zext.36 = zext i32 %trunc32.7 to i64
  %zext.37 = zext i32 %trunc32.6 to i64
  %shl.18 = shl i64 %zext.37, 32
  %or.18 = or i64 %shl.18, %zext.36
  %ptr_plus_imm.15 = add i64 %or.18, 32
  %inttoptr_bytes.18 = inttoptr i64 %ptr_plus_imm.15 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.287 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.288 = bitcast ptr %R30 to ptr
  store float %.287, ptr %.288, align 4
  %zext.38 = zext i32 %R2.2 to i64
  %.292 = load i32, ptr %R3, align 4
  %zext.39 = zext i32 %.292 to i64
  %shl.19 = shl i64 %zext.39, 32
  %or.19 = or i64 %shl.19, %zext.38
  %ptr_plus_imm.16 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %ptr_plus_imm.16 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.293 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.294 = bitcast ptr %R31 to ptr
  store float %.293, ptr %.294, align 4
  %zext.40 = zext i32 %trunc32.7 to i64
  %zext.41 = zext i32 %trunc32.6 to i64
  %shl.20 = shl i64 %zext.41, 32
  %or.20 = or i64 %shl.20, %zext.40
  %ptr_plus_imm.17 = add i64 %or.20, 36
  %inttoptr_bytes.20 = inttoptr i64 %ptr_plus_imm.17 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.299 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.300 = bitcast ptr %R32 to ptr
  store float %.299, ptr %.300, align 4
  %zext.42 = zext i32 %R2.2 to i64
  %.304 = load i32, ptr %R3, align 4
  %zext.43 = zext i32 %.304 to i64
  %shl.21 = shl i64 %zext.43, 32
  %or.21 = or i64 %shl.21, %zext.42
  %ptr_plus_imm.18 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %ptr_plus_imm.18 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.305 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.306 = bitcast ptr %R33 to ptr
  store float %.305, ptr %.306, align 4
  %zext.44 = zext i32 %trunc32.7 to i64
  %zext.45 = zext i32 %trunc32.6 to i64
  %shl.22 = shl i64 %zext.45, 32
  %or.22 = or i64 %shl.22, %zext.44
  %ptr_plus_imm.19 = add i64 %or.22, 40
  %inttoptr_bytes.22 = inttoptr i64 %ptr_plus_imm.19 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.311 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.312 = bitcast ptr %R34 to ptr
  store float %.311, ptr %.312, align 4
  %zext.46 = zext i32 %R2.2 to i64
  %.316 = load i32, ptr %R3, align 4
  %zext.47 = zext i32 %.316 to i64
  %shl.23 = shl i64 %zext.47, 32
  %or.23 = or i64 %shl.23, %zext.46
  %ptr_plus_imm.20 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %ptr_plus_imm.20 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.317 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.318 = bitcast ptr %R35 to ptr
  store float %.317, ptr %.318, align 4
  %zext.48 = zext i32 %trunc32.7 to i64
  %zext.49 = zext i32 %trunc32.6 to i64
  %shl.24 = shl i64 %zext.49, 32
  %or.24 = or i64 %shl.24, %zext.48
  %ptr_plus_imm.21 = add i64 %or.24, 44
  %inttoptr_bytes.24 = inttoptr i64 %ptr_plus_imm.21 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.323 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.324 = bitcast ptr %R36 to ptr
  store float %.323, ptr %.324, align 4
  %zext.50 = zext i32 %R2.2 to i64
  %.328 = load i32, ptr %R3, align 4
  %zext.51 = zext i32 %.328 to i64
  %shl.25 = shl i64 %zext.51, 32
  %or.25 = or i64 %shl.25, %zext.50
  %ptr_plus_imm.22 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %ptr_plus_imm.22 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.329 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.330 = bitcast ptr %R37 to ptr
  store float %.329, ptr %.330, align 4
  %zext.52 = zext i32 %trunc32.7 to i64
  %zext.53 = zext i32 %trunc32.6 to i64
  %shl.26 = shl i64 %zext.53, 32
  %or.26 = or i64 %shl.26, %zext.52
  %ptr_plus_imm.23 = add i64 %or.26, 48
  %inttoptr_bytes.26 = inttoptr i64 %ptr_plus_imm.23 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.335 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.336 = bitcast ptr %R38 to ptr
  store float %.335, ptr %.336, align 4
  %zext.54 = zext i32 %R2.2 to i64
  %.340 = load i32, ptr %R3, align 4
  %zext.55 = zext i32 %.340 to i64
  %shl.27 = shl i64 %zext.55, 32
  %or.27 = or i64 %shl.27, %zext.54
  %ptr_plus_imm.24 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %ptr_plus_imm.24 to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.341 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.342 = bitcast ptr %R39 to ptr
  store float %.341, ptr %.342, align 4
  %zext.56 = zext i32 %trunc32.7 to i64
  %zext.57 = zext i32 %trunc32.6 to i64
  %shl.28 = shl i64 %zext.57, 32
  %or.28 = or i64 %shl.28, %zext.56
  %ptr_plus_imm.25 = add i64 %or.28, 52
  %inttoptr_bytes.28 = inttoptr i64 %ptr_plus_imm.25 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.347 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.348 = bitcast ptr %R40 to ptr
  store float %.347, ptr %.348, align 4
  %zext.58 = zext i32 %R2.2 to i64
  %.352 = load i32, ptr %R3, align 4
  %zext.59 = zext i32 %.352 to i64
  %shl.29 = shl i64 %zext.59, 32
  %or.29 = or i64 %shl.29, %zext.58
  %ptr_plus_imm.26 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %ptr_plus_imm.26 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.353 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.354 = bitcast ptr %R41 to ptr
  store float %.353, ptr %.354, align 4
  %zext.60 = zext i32 %trunc32.7 to i64
  %zext.61 = zext i32 %trunc32.6 to i64
  %shl.30 = shl i64 %zext.61, 32
  %or.30 = or i64 %shl.30, %zext.60
  %ptr_plus_imm.27 = add i64 %or.30, 56
  %inttoptr_bytes.30 = inttoptr i64 %ptr_plus_imm.27 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.359 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.360 = bitcast ptr %R42 to ptr
  store float %.359, ptr %.360, align 4
  %zext.62 = zext i32 %trunc32.7 to i64
  %zext.63 = zext i32 %trunc32.6 to i64
  %shl.31 = shl i64 %zext.63, 32
  %or.31 = or i64 %shl.31, %zext.62
  %ptr_plus_imm.28 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %ptr_plus_imm.28 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.365 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.366 = bitcast ptr %R44 to ptr
  store float %.365, ptr %.366, align 4
  %zext.64 = zext i32 %R2.2 to i64
  %.370 = load i32, ptr %R3, align 4
  %zext.65 = zext i32 %.370 to i64
  %shl.32 = shl i64 %zext.65, 32
  %or.32 = or i64 %shl.32, %zext.64
  %ptr_plus_imm.29 = add i64 %or.32, 60
  %inttoptr_bytes.32 = inttoptr i64 %ptr_plus_imm.29 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.371 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.372 = bitcast ptr %R43 to ptr
  store float %.371, ptr %.372, align 4
  %.376 = add i32 %R11.2, -16
  %.377 = add i32 %.376, 0
  %cmp.6 = icmp sgt i32 %.377, 12
  %.384 = and i1 %cmp.6, true
  %.389 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.390 = extractvalue { i32, i1 } %.389, 0
  %.391 = extractvalue { i32, i1 } %.389, 1
  %.392 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.390, i32 0)
  %.393 = extractvalue { i32, i1 } %.392, 0
  %.394 = extractvalue { i32, i1 } %.392, 1
  %.395 = or i1 %.391, %.394
  %.400 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.2, i32 64)
  %.401 = extractvalue { i32, i1 } %.400, 0
  %.402 = extractvalue { i32, i1 } %.400, 1
  %.403 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.401, i32 0)
  %.404 = extractvalue { i32, i1 } %.403, 0
  %.405 = extractvalue { i32, i1 } %.403, 1
  %.406 = or i1 %.402, %.405
  %.412 = xor i1 true, true
  %.413 = zext i1 %.395 to i32
  %.414 = zext i1 %.412 to i32
  %add = add i32 0, %UR5.2
  %add.1 = add i32 %add, 0
  %add.2 = add i32 %add.1, %.413
  %add.3 = add i32 %add.2, %.414
  %.417 = load i32, ptr %R6, align 4
  %.418 = add i32 %.417, 16
  %.419 = add i32 %.418, 0
  store i32 %.419, ptr %R6, align 4
  %.422 = load i32, ptr %R3, align 4
  %.424 = xor i1 true, true
  %.425 = zext i1 %.406 to i32
  %.426 = zext i1 %.424 to i32
  %add.4 = add i32 0, %.422
  %add.5 = add i32 %add.4, 0
  %add.6 = add i32 %add.5, %.425
  %add.7 = add i32 %add.6, %.426
  store i32 %add.7, ptr %R3, align 4
  %.429 = load float, ptr %R13, align 4
  %.430 = load float, ptr %R14, align 4
  %.431 = load float, ptr %R10, align 4
  %fmul = fmul float %.429, %.430
  %fadd = fadd float %fmul, %.431
  %.432 = bitcast ptr %R13 to ptr
  store float %fadd, ptr %.432, align 4
  %.435 = load float, ptr %R16, align 4
  %.436 = load float, ptr %R15, align 4
  %.437 = load float, ptr %R13, align 4
  %fmul.1 = fmul float %.435, %.436
  %fadd.1 = fadd float %fmul.1, %.437
  %.438 = bitcast ptr %R13 to ptr
  store float %fadd.1, ptr %.438, align 4
  %.441 = load float, ptr %R18, align 4
  %.442 = load float, ptr %R17, align 4
  %.443 = load float, ptr %R13, align 4
  %fmul.2 = fmul float %.441, %.442
  %fadd.2 = fadd float %fmul.2, %.443
  %.444 = bitcast ptr %R13 to ptr
  store float %fadd.2, ptr %.444, align 4
  %.447 = load float, ptr %R20, align 4
  %.448 = load float, ptr %R19, align 4
  %.449 = load float, ptr %R13, align 4
  %fmul.3 = fmul float %.447, %.448
  %fadd.3 = fadd float %fmul.3, %.449
  %.450 = bitcast ptr %R13 to ptr
  store float %fadd.3, ptr %.450, align 4
  %.453 = load float, ptr %R22, align 4
  %.454 = load float, ptr %R21, align 4
  %.455 = load float, ptr %R13, align 4
  %fmul.4 = fmul float %.453, %.454
  %fadd.4 = fadd float %fmul.4, %.455
  %.456 = bitcast ptr %R13 to ptr
  store float %fadd.4, ptr %.456, align 4
  %.459 = load float, ptr %R24, align 4
  %.460 = load float, ptr %R23, align 4
  %.461 = load float, ptr %R13, align 4
  %fmul.5 = fmul float %.459, %.460
  %fadd.5 = fadd float %fmul.5, %.461
  %.462 = bitcast ptr %R13 to ptr
  store float %fadd.5, ptr %.462, align 4
  %.465 = load float, ptr %R26, align 4
  %.466 = load float, ptr %R25, align 4
  %.467 = load float, ptr %R13, align 4
  %fmul.6 = fmul float %.465, %.466
  %fadd.6 = fadd float %fmul.6, %.467
  %.468 = bitcast ptr %R13 to ptr
  store float %fadd.6, ptr %.468, align 4
  %.471 = load float, ptr %R28, align 4
  %.472 = load float, ptr %R27, align 4
  %.473 = load float, ptr %R13, align 4
  %fmul.7 = fmul float %.471, %.472
  %fadd.7 = fadd float %fmul.7, %.473
  %.474 = bitcast ptr %R13 to ptr
  store float %fadd.7, ptr %.474, align 4
  %.477 = load float, ptr %R30, align 4
  %.478 = load float, ptr %R29, align 4
  %.479 = load float, ptr %R13, align 4
  %fmul.8 = fmul float %.477, %.478
  %fadd.8 = fadd float %fmul.8, %.479
  %.480 = bitcast ptr %R13 to ptr
  store float %fadd.8, ptr %.480, align 4
  %.483 = load float, ptr %R32, align 4
  %.484 = load float, ptr %R31, align 4
  %.485 = load float, ptr %R13, align 4
  %fmul.9 = fmul float %.483, %.484
  %fadd.9 = fadd float %fmul.9, %.485
  %.486 = bitcast ptr %R13 to ptr
  store float %fadd.9, ptr %.486, align 4
  %.489 = load float, ptr %R34, align 4
  %.490 = load float, ptr %R33, align 4
  %.491 = load float, ptr %R13, align 4
  %fmul.10 = fmul float %.489, %.490
  %fadd.10 = fadd float %fmul.10, %.491
  %.492 = bitcast ptr %R13 to ptr
  store float %fadd.10, ptr %.492, align 4
  %.495 = load float, ptr %R36, align 4
  %.496 = load float, ptr %R35, align 4
  %.497 = load float, ptr %R13, align 4
  %fmul.11 = fmul float %.495, %.496
  %fadd.11 = fadd float %fmul.11, %.497
  %.498 = bitcast ptr %R13 to ptr
  store float %fadd.11, ptr %.498, align 4
  %.501 = load float, ptr %R38, align 4
  %.502 = load float, ptr %R37, align 4
  %.503 = load float, ptr %R13, align 4
  %fmul.12 = fmul float %.501, %.502
  %fadd.12 = fadd float %fmul.12, %.503
  %.504 = bitcast ptr %R13 to ptr
  store float %fadd.12, ptr %.504, align 4
  %.507 = load float, ptr %R40, align 4
  %.508 = load float, ptr %R39, align 4
  %.509 = load float, ptr %R13, align 4
  %fmul.13 = fmul float %.507, %.508
  %fadd.13 = fadd float %fmul.13, %.509
  %.510 = bitcast ptr %R13 to ptr
  store float %fadd.13, ptr %.510, align 4
  %.513 = load float, ptr %R42, align 4
  %.514 = load float, ptr %R41, align 4
  %.515 = load float, ptr %R13, align 4
  %fmul.14 = fmul float %.513, %.514
  %fadd.14 = fadd float %fmul.14, %.515
  %.516 = bitcast ptr %R13 to ptr
  store float %fadd.14, ptr %.516, align 4
  %.519 = load float, ptr %R44, align 4
  %.520 = load float, ptr %R43, align 4
  %.521 = load float, ptr %R13, align 4
  %fmul.15 = fmul float %.519, %.520
  %fadd.15 = fadd float %fmul.15, %.521
  %.522 = bitcast ptr %R10 to ptr
  store float %fadd.15, ptr %.522, align 4
  %.526 = icmp eq i1 %.384, true
  br i1 %.526, label %.L_x_4, label %.L_x_3.loopexit

.L_x_3.loopexit:                                  ; preds = %.L_x_4
  br label %.L_x_3

.L_x_3:                                           ; preds = %.L_x_3.loopexit, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0
  %UR4.1 = phi i32 [ %trunc32.3, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.393, %.L_x_3.loopexit ]
  %R11.1 = phi i32 [ %.113, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.377, %.L_x_3.loopexit ]
  %UR5.1 = phi i32 [ %trunc32.2, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %add.3, %.L_x_3.loopexit ]
  %R2.1 = phi i32 [ %trunc32.5, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.404, %.L_x_3.loopexit ]
  %cmp.7 = icmp sgt i32 %R11.1, 4
  %.533 = and i1 %cmp.7, true
  %.538 = icmp ne i1 %.533, true
  br i1 %.538, label %.L_x_5, label %.L_x_3_split_0x05e0

.L_x_3_split_0x05e0:                              ; preds = %.L_x_3
  %imad_mul.8 = mul i32 0, 0
  %imad_add.8 = add i32 %imad_mul.8, %UR4.1
  %zext.66 = zext i32 %R2.1 to i64
  %.548 = load i32, ptr %R3, align 4
  %zext.67 = zext i32 %.548 to i64
  %shl.33 = shl i64 %zext.67, 32
  %or.33 = or i64 %shl.33, %zext.66
  %inttoptr_bytes.33 = inttoptr i64 %or.33 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.549 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.550 = bitcast ptr %R14 to ptr
  store float %.549, ptr %.550, align 4
  %imad_ext1.3 = zext i32 %imad_add.4 to i64
  %imad_ext2.3 = zext i32 4 to i64
  %imad_mul.9 = mul i64 %imad_ext1.3, %imad_ext2.3
  %imad_ext3.1 = zext i32 %imad_add.8 to i64
  %imad_add.9 = add i64 %imad_mul.9, %imad_ext3.1
  %.555 = and i64 %imad_add.9, -4294967296
  %.556 = lshr i64 %.555, 32
  %trunc32.8 = trunc i64 %.556 to i32
  %trunc32.9 = trunc i64 %imad_add.9 to i32
  %zext.68 = zext i32 %R2.1 to i64
  %.561 = load i32, ptr %R3, align 4
  %zext.69 = zext i32 %.561 to i64
  %shl.34 = shl i64 %zext.69, 32
  %or.34 = or i64 %shl.34, %zext.68
  %ptr_plus_imm.30 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.30 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.562 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.563 = bitcast ptr %R15 to ptr
  store float %.562, ptr %.563, align 4
  %zext.70 = zext i32 %R2.1 to i64
  %.567 = load i32, ptr %R3, align 4
  %zext.71 = zext i32 %.567 to i64
  %shl.35 = shl i64 %zext.71, 32
  %or.35 = or i64 %shl.35, %zext.70
  %ptr_plus_imm.31 = add i64 %or.35, 8
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.31 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.568 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.569 = bitcast ptr %R17 to ptr
  store float %.568, ptr %.569, align 4
  %zext.72 = zext i32 %trunc32.9 to i64
  %zext.73 = zext i32 %trunc32.8 to i64
  %shl.36 = shl i64 %zext.73, 32
  %or.36 = or i64 %shl.36, %zext.72
  %inttoptr_bytes.36 = inttoptr i64 %or.36 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.574 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.575 = bitcast ptr %R13 to ptr
  store float %.574, ptr %.575, align 4
  %zext.74 = zext i32 %trunc32.9 to i64
  %zext.75 = zext i32 %trunc32.8 to i64
  %shl.37 = shl i64 %zext.75, 32
  %or.37 = or i64 %shl.37, %zext.74
  %ptr_plus_imm.32 = add i64 %or.37, 4
  %inttoptr_bytes.37 = inttoptr i64 %ptr_plus_imm.32 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.580 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.581 = bitcast ptr %R16 to ptr
  store float %.580, ptr %.581, align 4
  %zext.76 = zext i32 %trunc32.9 to i64
  %zext.77 = zext i32 %trunc32.8 to i64
  %shl.38 = shl i64 %zext.77, 32
  %or.38 = or i64 %shl.38, %zext.76
  %ptr_plus_imm.33 = add i64 %or.38, 8
  %inttoptr_bytes.38 = inttoptr i64 %ptr_plus_imm.33 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.586 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.587 = bitcast ptr %R18 to ptr
  store float %.586, ptr %.587, align 4
  %zext.78 = zext i32 %R2.1 to i64
  %.591 = load i32, ptr %R3, align 4
  %zext.79 = zext i32 %.591 to i64
  %shl.39 = shl i64 %zext.79, 32
  %or.39 = or i64 %shl.39, %zext.78
  %ptr_plus_imm.34 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %ptr_plus_imm.34 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.592 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.593 = bitcast ptr %R19 to ptr
  store float %.592, ptr %.593, align 4
  %zext.80 = zext i32 %trunc32.9 to i64
  %zext.81 = zext i32 %trunc32.8 to i64
  %shl.40 = shl i64 %zext.81, 32
  %or.40 = or i64 %shl.40, %zext.80
  %ptr_plus_imm.35 = add i64 %or.40, 12
  %inttoptr_bytes.40 = inttoptr i64 %ptr_plus_imm.35 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.598 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.599 = bitcast ptr %R20 to ptr
  store float %.598, ptr %.599, align 4
  %zext.82 = zext i32 %R2.1 to i64
  %.603 = load i32, ptr %R3, align 4
  %zext.83 = zext i32 %.603 to i64
  %shl.41 = shl i64 %zext.83, 32
  %or.41 = or i64 %shl.41, %zext.82
  %ptr_plus_imm.36 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %ptr_plus_imm.36 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.604 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.605 = bitcast ptr %R21 to ptr
  store float %.604, ptr %.605, align 4
  %zext.84 = zext i32 %trunc32.9 to i64
  %zext.85 = zext i32 %trunc32.8 to i64
  %shl.42 = shl i64 %zext.85, 32
  %or.42 = or i64 %shl.42, %zext.84
  %ptr_plus_imm.37 = add i64 %or.42, 16
  %inttoptr_bytes.42 = inttoptr i64 %ptr_plus_imm.37 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.610 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.611 = bitcast ptr %R22 to ptr
  store float %.610, ptr %.611, align 4
  %zext.86 = zext i32 %R2.1 to i64
  %.615 = load i32, ptr %R3, align 4
  %zext.87 = zext i32 %.615 to i64
  %shl.43 = shl i64 %zext.87, 32
  %or.43 = or i64 %shl.43, %zext.86
  %ptr_plus_imm.38 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %ptr_plus_imm.38 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.616 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.617 = bitcast ptr %R23 to ptr
  store float %.616, ptr %.617, align 4
  %zext.88 = zext i32 %trunc32.9 to i64
  %zext.89 = zext i32 %trunc32.8 to i64
  %shl.44 = shl i64 %zext.89, 32
  %or.44 = or i64 %shl.44, %zext.88
  %ptr_plus_imm.39 = add i64 %or.44, 20
  %inttoptr_bytes.44 = inttoptr i64 %ptr_plus_imm.39 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.622 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.623 = bitcast ptr %R24 to ptr
  store float %.622, ptr %.623, align 4
  %zext.90 = zext i32 %R2.1 to i64
  %.627 = load i32, ptr %R3, align 4
  %zext.91 = zext i32 %.627 to i64
  %shl.45 = shl i64 %zext.91, 32
  %or.45 = or i64 %shl.45, %zext.90
  %ptr_plus_imm.40 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %ptr_plus_imm.40 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.628 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.629 = bitcast ptr %R25 to ptr
  store float %.628, ptr %.629, align 4
  %zext.92 = zext i32 %trunc32.9 to i64
  %zext.93 = zext i32 %trunc32.8 to i64
  %shl.46 = shl i64 %zext.93, 32
  %or.46 = or i64 %shl.46, %zext.92
  %ptr_plus_imm.41 = add i64 %or.46, 24
  %inttoptr_bytes.46 = inttoptr i64 %ptr_plus_imm.41 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.634 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.635 = bitcast ptr %R26 to ptr
  store float %.634, ptr %.635, align 4
  %zext.94 = zext i32 %trunc32.9 to i64
  %zext.95 = zext i32 %trunc32.8 to i64
  %shl.47 = shl i64 %zext.95, 32
  %or.47 = or i64 %shl.47, %zext.94
  %ptr_plus_imm.42 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %ptr_plus_imm.42 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.640 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.641 = bitcast ptr %R28 to ptr
  store float %.640, ptr %.641, align 4
  %zext.96 = zext i32 %R2.1 to i64
  %.645 = load i32, ptr %R3, align 4
  %zext.97 = zext i32 %.645 to i64
  %shl.48 = shl i64 %zext.97, 32
  %or.48 = or i64 %shl.48, %zext.96
  %ptr_plus_imm.43 = add i64 %or.48, 28
  %inttoptr_bytes.48 = inttoptr i64 %ptr_plus_imm.43 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.646 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.647 = bitcast ptr %R27 to ptr
  store float %.646, ptr %.647, align 4
  %.651 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.652 = extractvalue { i32, i1 } %.651, 0
  %.653 = extractvalue { i32, i1 } %.651, 1
  %.654 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.652, i32 0)
  %.655 = extractvalue { i32, i1 } %.654, 0
  %.656 = extractvalue { i32, i1 } %.654, 1
  %.657 = or i1 %.653, %.656
  %.665 = load i32, ptr %R6, align 4
  %.666 = add i32 %.665, 8
  %.667 = add i32 %.666, 0
  store i32 %.667, ptr %R6, align 4
  %.671 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.1, i32 32)
  %.672 = extractvalue { i32, i1 } %.671, 0
  %.673 = extractvalue { i32, i1 } %.671, 1
  %.674 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.672, i32 0)
  %.675 = extractvalue { i32, i1 } %.674, 0
  %.676 = extractvalue { i32, i1 } %.674, 1
  %.677 = or i1 %.673, %.676
  %.682 = add i32 %R11.1, -8
  %.683 = add i32 %.682, 0
  %.686 = load i32, ptr %R3, align 4
  %.688 = xor i1 true, true
  %.689 = zext i1 %.677 to i32
  %.690 = zext i1 %.688 to i32
  %add.8 = add i32 0, %.686
  %add.9 = add i32 %add.8, 0
  %add.10 = add i32 %add.9, %.689
  %add.11 = add i32 %add.10, %.690
  store i32 %add.11, ptr %R3, align 4
  %.695 = xor i1 true, true
  %.696 = zext i1 %.657 to i32
  %.697 = zext i1 %.695 to i32
  %add.12 = add i32 0, %UR5.1
  %add.13 = add i32 %add.12, 0
  %add.14 = add i32 %add.13, %.696
  %add.15 = add i32 %add.14, %.697
  %.700 = load float, ptr %R13, align 4
  %.701 = load float, ptr %R14, align 4
  %.702 = load float, ptr %R10, align 4
  %fmul.16 = fmul float %.700, %.701
  %fadd.16 = fadd float %fmul.16, %.702
  %.703 = bitcast ptr %R13 to ptr
  store float %fadd.16, ptr %.703, align 4
  %.706 = load float, ptr %R16, align 4
  %.707 = load float, ptr %R15, align 4
  %.708 = load float, ptr %R13, align 4
  %fmul.17 = fmul float %.706, %.707
  %fadd.17 = fadd float %fmul.17, %.708
  %.709 = bitcast ptr %R13 to ptr
  store float %fadd.17, ptr %.709, align 4
  %.712 = load float, ptr %R18, align 4
  %.713 = load float, ptr %R17, align 4
  %.714 = load float, ptr %R13, align 4
  %fmul.18 = fmul float %.712, %.713
  %fadd.18 = fadd float %fmul.18, %.714
  %.715 = bitcast ptr %R13 to ptr
  store float %fadd.18, ptr %.715, align 4
  %.718 = load float, ptr %R20, align 4
  %.719 = load float, ptr %R19, align 4
  %.720 = load float, ptr %R13, align 4
  %fmul.19 = fmul float %.718, %.719
  %fadd.19 = fadd float %fmul.19, %.720
  %.721 = bitcast ptr %R13 to ptr
  store float %fadd.19, ptr %.721, align 4
  %.724 = load float, ptr %R22, align 4
  %.725 = load float, ptr %R21, align 4
  %.726 = load float, ptr %R13, align 4
  %fmul.20 = fmul float %.724, %.725
  %fadd.20 = fadd float %fmul.20, %.726
  %.727 = bitcast ptr %R13 to ptr
  store float %fadd.20, ptr %.727, align 4
  %.730 = load float, ptr %R24, align 4
  %.731 = load float, ptr %R23, align 4
  %.732 = load float, ptr %R13, align 4
  %fmul.21 = fmul float %.730, %.731
  %fadd.21 = fadd float %fmul.21, %.732
  %.733 = bitcast ptr %R13 to ptr
  store float %fadd.21, ptr %.733, align 4
  %.736 = load float, ptr %R26, align 4
  %.737 = load float, ptr %R25, align 4
  %.738 = load float, ptr %R13, align 4
  %fmul.22 = fmul float %.736, %.737
  %fadd.22 = fadd float %fmul.22, %.738
  %.739 = bitcast ptr %R13 to ptr
  store float %fadd.22, ptr %.739, align 4
  %.742 = load float, ptr %R28, align 4
  %.743 = load float, ptr %R27, align 4
  %.744 = load float, ptr %R13, align 4
  %fmul.23 = fmul float %.742, %.743
  %fadd.23 = fadd float %fmul.23, %.744
  %.745 = bitcast ptr %R10 to ptr
  store float %fadd.23, ptr %.745, align 4
  br label %.L_x_5

.L_x_5:                                           ; preds = %.L_x_3_split_0x05e0, %.L_x_3
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_3 ], [ %.655, %.L_x_3_split_0x05e0 ]
  %R11.3 = phi i32 [ %R11.1, %.L_x_3 ], [ %.683, %.L_x_3_split_0x05e0 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_3 ], [ %add.15, %.L_x_3_split_0x05e0 ]
  %R2.3 = phi i32 [ %R2.1, %.L_x_3 ], [ %.675, %.L_x_3_split_0x05e0 ]
  %cmp.8 = icmp ne i32 %R11.3, 0
  %.753 = or i1 %cmp.8, %.132
  %.758 = icmp ne i1 %.753, true
  br i1 %.758, label %.L_x_1, label %.L_x_2.preheader

.L_x_2.preheader:                                 ; preds = %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150, %.L_x_5
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_5 ], [ %trunc32.3, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %R11.0.ph = phi i32 [ %R11.3, %.L_x_5 ], [ %.113, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_5 ], [ %trunc32.2, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %R2.0.ph = phi i32 [ %R2.3, %.L_x_5 ], [ %trunc32.5, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  br label %.L_x_2

.L_x_2:                                           ; preds = %.L_x_2.preheader, %.L_x_2
  %UR4.0 = phi i32 [ %.840, %.L_x_2 ], [ %UR4.0.ph, %.L_x_2.preheader ]
  %R11.0 = phi i32 [ %.824, %.L_x_2 ], [ %R11.0.ph, %.L_x_2.preheader ]
  %UR5.0 = phi i32 [ %add.19, %.L_x_2 ], [ %UR5.0.ph, %.L_x_2.preheader ]
  %R2.0 = phi i32 [ %.894, %.L_x_2 ], [ %R2.0.ph, %.L_x_2.preheader ]
  %zext.98 = zext i32 %R2.0 to i64
  %.768 = load i32, ptr %R3, align 4
  %zext.99 = zext i32 %.768 to i64
  %shl.49 = shl i64 %zext.99, 32
  %or.49 = or i64 %shl.49, %zext.98
  %inttoptr_bytes.49 = inttoptr i64 %or.49 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.769 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.770 = bitcast ptr %R14 to ptr
  store float %.769, ptr %.770, align 4
  %imad_ext1.4 = zext i32 %imad_add.4 to i64
  %imad_ext2.4 = zext i32 4 to i64
  %imad_mul.11 = mul i64 %imad_ext1.4, %imad_ext2.4
  %imad_ext3.2 = zext i32 %UR4.0 to i64
  %imad_add.11 = add i64 %imad_mul.11, %imad_ext3.2
  %.775 = and i64 %imad_add.11, -4294967296
  %.776 = lshr i64 %.775, 32
  %trunc32.10 = trunc i64 %.776 to i32
  %trunc32.11 = trunc i64 %imad_add.11 to i32
  %zext.100 = zext i32 %R2.0 to i64
  %.781 = load i32, ptr %R3, align 4
  %zext.101 = zext i32 %.781 to i64
  %shl.50 = shl i64 %zext.101, 32
  %or.50 = or i64 %shl.50, %zext.100
  %ptr_plus_imm.44 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %ptr_plus_imm.44 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.782 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.783 = bitcast ptr %R15 to ptr
  store float %.782, ptr %.783, align 4
  %zext.102 = zext i32 %R2.0 to i64
  %.787 = load i32, ptr %R3, align 4
  %zext.103 = zext i32 %.787 to i64
  %shl.51 = shl i64 %zext.103, 32
  %or.51 = or i64 %shl.51, %zext.102
  %ptr_plus_imm.45 = add i64 %or.51, 8
  %inttoptr_bytes.51 = inttoptr i64 %ptr_plus_imm.45 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.788 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.789 = bitcast ptr %R17 to ptr
  store float %.788, ptr %.789, align 4
  %zext.104 = zext i32 %trunc32.11 to i64
  %zext.105 = zext i32 %trunc32.10 to i64
  %shl.52 = shl i64 %zext.105, 32
  %or.52 = or i64 %shl.52, %zext.104
  %inttoptr_bytes.52 = inttoptr i64 %or.52 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.794 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.795 = bitcast ptr %R13 to ptr
  store float %.794, ptr %.795, align 4
  %zext.106 = zext i32 %trunc32.11 to i64
  %zext.107 = zext i32 %trunc32.10 to i64
  %shl.53 = shl i64 %zext.107, 32
  %or.53 = or i64 %shl.53, %zext.106
  %ptr_plus_imm.46 = add i64 %or.53, 4
  %inttoptr_bytes.53 = inttoptr i64 %ptr_plus_imm.46 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.800 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.801 = bitcast ptr %R16 to ptr
  store float %.800, ptr %.801, align 4
  %zext.108 = zext i32 %trunc32.11 to i64
  %zext.109 = zext i32 %trunc32.10 to i64
  %shl.54 = shl i64 %zext.109, 32
  %or.54 = or i64 %shl.54, %zext.108
  %ptr_plus_imm.47 = add i64 %or.54, 8
  %inttoptr_bytes.54 = inttoptr i64 %ptr_plus_imm.47 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.806 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.807 = bitcast ptr %R18 to ptr
  store float %.806, ptr %.807, align 4
  %zext.110 = zext i32 %trunc32.11 to i64
  %zext.111 = zext i32 %trunc32.10 to i64
  %shl.55 = shl i64 %zext.111, 32
  %or.55 = or i64 %shl.55, %zext.110
  %ptr_plus_imm.48 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %ptr_plus_imm.48 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.812 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.813 = bitcast ptr %R20 to ptr
  store float %.812, ptr %.813, align 4
  %zext.112 = zext i32 %R2.0 to i64
  %.817 = load i32, ptr %R3, align 4
  %zext.113 = zext i32 %.817 to i64
  %shl.56 = shl i64 %zext.113, 32
  %or.56 = or i64 %shl.56, %zext.112
  %ptr_plus_imm.49 = add i64 %or.56, 12
  %inttoptr_bytes.56 = inttoptr i64 %ptr_plus_imm.49 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.818 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.819 = bitcast ptr %R19 to ptr
  store float %.818, ptr %.819, align 4
  %.823 = add i32 %R11.0, -4
  %.824 = add i32 %.823, 0
  %cmp.9 = icmp ne i32 %.824, 0
  %.831 = and i1 %cmp.9, true
  %.836 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.837 = extractvalue { i32, i1 } %.836, 0
  %.838 = extractvalue { i32, i1 } %.836, 1
  %.839 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.837, i32 0)
  %.840 = extractvalue { i32, i1 } %.839, 0
  %.841 = extractvalue { i32, i1 } %.839, 1
  %.842 = or i1 %.838, %.841
  %.846 = load i32, ptr %R6, align 4
  %.847 = add i32 %.846, 4
  %.848 = add i32 %.847, 0
  store i32 %.848, ptr %R6, align 4
  %.853 = xor i1 true, true
  %.854 = zext i1 %.842 to i32
  %.855 = zext i1 %.853 to i32
  %add.16 = add i32 0, %UR5.0
  %add.17 = add i32 %add.16, 0
  %add.18 = add i32 %add.17, %.854
  %add.19 = add i32 %add.18, %.855
  %.858 = load float, ptr %R13, align 4
  %.859 = load float, ptr %R14, align 4
  %.860 = load float, ptr %R10, align 4
  %fmul.24 = fmul float %.858, %.859
  %fadd.24 = fadd float %fmul.24, %.860
  %.861 = bitcast ptr %R13 to ptr
  store float %fadd.24, ptr %.861, align 4
  %.864 = load float, ptr %R16, align 4
  %.865 = load float, ptr %R15, align 4
  %.866 = load float, ptr %R13, align 4
  %fmul.25 = fmul float %.864, %.865
  %fadd.25 = fadd float %fmul.25, %.866
  %.867 = bitcast ptr %R13 to ptr
  store float %fadd.25, ptr %.867, align 4
  %.870 = load float, ptr %R18, align 4
  %.871 = load float, ptr %R17, align 4
  %.872 = load float, ptr %R13, align 4
  %fmul.26 = fmul float %.870, %.871
  %fadd.26 = fadd float %fmul.26, %.872
  %.873 = bitcast ptr %R17 to ptr
  store float %fadd.26, ptr %.873, align 4
  %.877 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.0, i32 16)
  %.878 = extractvalue { i32, i1 } %.877, 0
  %.879 = extractvalue { i32, i1 } %.877, 1
  %.880 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.878, i32 0)
  %.881 = extractvalue { i32, i1 } %.880, 0
  %.882 = extractvalue { i32, i1 } %.880, 1
  %.883 = or i1 %.879, %.882
  store i32 %.881, ptr %R13, align 4
  %.887 = load i32, ptr %R3, align 4
  %.889 = xor i1 true, true
  %.890 = zext i1 %.883 to i32
  %.891 = zext i1 %.889 to i32
  %add.20 = add i32 0, %.887
  %add.21 = add i32 %add.20, 0
  %add.22 = add i32 %add.21, %.890
  %add.23 = add i32 %add.22, %.891
  store i32 %add.23, ptr %R14, align 4
  %.894 = load i32, ptr %R13, align 4
  %.897 = load float, ptr %R20, align 4
  %.898 = load float, ptr %R19, align 4
  %.899 = load float, ptr %R17, align 4
  %fmul.27 = fmul float %.897, %.898
  %fadd.27 = fadd float %fmul.27, %.899
  %.900 = bitcast ptr %R10 to ptr
  store float %fadd.27, ptr %.900, align 4
  %.903 = load i32, ptr %R14, align 4
  store i32 %.903, ptr %R3, align 4
  %.907 = icmp eq i1 %.831, true
  br i1 %.907, label %.L_x_2, label %.L_x_1.loopexit

.L_x_1.loopexit:                                  ; preds = %.L_x_2
  br label %.L_x_1

.L_x_1:                                           ; preds = %.L_x_1.loopexit, %.L_x_5, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0100
  %cmp.10 = icmp ne i32 %.92, 0
  %.914 = and i1 %cmp.10, true
  %.919 = icmp ne i1 %.914, true
  br i1 %.919, label %.L_x_0, label %.L_x_1_split_0x09d0

.L_x_1_split_0x09d0:                              ; preds = %.L_x_1
  %.923 = load i32, ptr %R6, align 4
  %imad_mul.12 = mul i32 %imad_add, %Arg_5
  %imad_add.12 = add i32 %imad_mul.12, %.923
  %.926 = load i32, ptr %R7, align 4
  %.927 = load i32, ptr %R6, align 4
  %imad_mul.13 = mul i32 %.926, %Arg_5
  %imad_add.13 = add i32 %imad_mul.13, %.927
  %imad_ext1.5 = zext i32 %imad_add.12 to i64
  %imad_ext2.5 = zext i32 4 to i64
  %imad_mul.14 = mul i64 %imad_ext1.5, %imad_ext2.5
  %.932 = ptrtoint ptr %Arg_1 to i64
  %imad_add.14 = add i64 %imad_mul.14, %.932
  %.933 = and i64 %imad_add.14, -4294967296
  %.934 = lshr i64 %.933, 32
  %trunc32.12 = trunc i64 %.934 to i32
  %trunc32.13 = trunc i64 %imad_add.14 to i32
  store i32 %trunc32.12, ptr %R3, align 4
  %imad_ext1.6 = zext i32 %imad_add.13 to i64
  %imad_ext2.6 = zext i32 4 to i64
  %imad_mul.15 = mul i64 %imad_ext1.6, %imad_ext2.6
  %.940 = ptrtoint ptr %Arg_0 to i64
  %imad_add.15 = add i64 %imad_mul.15, %.940
  %.941 = and i64 %imad_add.15, -4294967296
  %.942 = lshr i64 %.941, 32
  %trunc32.14 = trunc i64 %.942 to i32
  %trunc32.15 = trunc i64 %imad_add.15 to i32
  %.946 = load i32, ptr %R3, align 4
  %imad_mul.16 = mul i32 0, 0
  %imad_add.16 = add i32 %imad_mul.16, %.946
  br label %.L_x_6

.L_x_6:                                           ; preds = %.L_x_6, %.L_x_1_split_0x09d0
  %R8.0 = phi i32 [ %trunc32.15, %.L_x_1_split_0x09d0 ], [ %.983, %.L_x_6 ]
  %R11.4 = phi i32 [ %imad_add.16, %.L_x_1_split_0x09d0 ], [ %add.31, %.L_x_6 ]
  %R9.0 = phi i32 [ %trunc32.14, %.L_x_1_split_0x09d0 ], [ %add.27, %.L_x_6 ]
  %R4.0 = phi i32 [ %.92, %.L_x_1_split_0x09d0 ], [ %.967, %.L_x_6 ]
  %R2.4 = phi i32 [ %trunc32.13, %.L_x_1_split_0x09d0 ], [ %.994, %.L_x_6 ]
  store i32 %R11.4, ptr %R3, align 4
  %zext.114 = zext i32 %R8.0 to i64
  %zext.115 = zext i32 %R9.0 to i64
  %shl.57 = shl i64 %zext.115, 32
  %or.57 = or i64 %shl.57, %zext.114
  %inttoptr_bytes.57 = inttoptr i64 %or.57 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.955 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.956 = bitcast ptr %R6 to ptr
  store float %.955, ptr %.956, align 4
  %zext.116 = zext i32 %R2.4 to i64
  %.960 = load i32, ptr %R3, align 4
  %zext.117 = zext i32 %.960 to i64
  %shl.58 = shl i64 %zext.117, 32
  %or.58 = or i64 %shl.58, %zext.116
  %inttoptr_bytes.58 = inttoptr i64 %or.58 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.961 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.962 = bitcast ptr %R3 to ptr
  store float %.961, ptr %.962, align 4
  %.966 = add i32 %R4.0, -1
  %.967 = add i32 %.966, 0
  %cmp.11 = icmp ne i32 %.967, 0
  %.974 = and i1 %cmp.11, true
  %.979 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R8.0, i32 4)
  %.980 = extractvalue { i32, i1 } %.979, 0
  %.981 = extractvalue { i32, i1 } %.979, 1
  %.982 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.980, i32 0)
  %.983 = extractvalue { i32, i1 } %.982, 0
  %.984 = extractvalue { i32, i1 } %.982, 1
  %.985 = or i1 %.981, %.984
  %.990 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.4, i32 4)
  %.991 = extractvalue { i32, i1 } %.990, 0
  %.992 = extractvalue { i32, i1 } %.990, 1
  %.993 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.991, i32 0)
  %.994 = extractvalue { i32, i1 } %.993, 0
  %.995 = extractvalue { i32, i1 } %.993, 1
  %.996 = or i1 %.992, %.995
  %.1002 = xor i1 true, true
  %.1003 = zext i1 %.985 to i32
  %.1004 = zext i1 %.1002 to i32
  %add.24 = add i32 0, %R9.0
  %add.25 = add i32 %add.24, 0
  %add.26 = add i32 %add.25, %.1003
  %add.27 = add i32 %add.26, %.1004
  %.1009 = xor i1 true, true
  %.1010 = zext i1 %.996 to i32
  %.1011 = zext i1 %.1009 to i32
  %add.28 = add i32 0, %R11.4
  %add.29 = add i32 %add.28, 0
  %add.30 = add i32 %add.29, %.1010
  %add.31 = add i32 %add.30, %.1011
  %.1014 = load float, ptr %R3, align 4
  %.1015 = load float, ptr %R6, align 4
  %.1016 = load float, ptr %R10, align 4
  %fmul.28 = fmul float %.1014, %.1015
  %fadd.28 = fadd float %fmul.28, %.1016
  %.1017 = bitcast ptr %R10 to ptr
  store float %fadd.28, ptr %.1017, align 4
  %.1021 = icmp eq i1 %.974, true
  br i1 %.1021, label %.L_x_6, label %.L_x_0.loopexit

.L_x_0.loopexit:                                  ; preds = %.L_x_6
  br label %.L_x_0

.L_x_0:                                           ; preds = %.L_x_0.loopexit, %.L_x_1, %.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x00a0
  %.1024 = load float, ptr %R10, align 4
  %fcmp_ordered = fcmp uge float %.1024, 0.000000e+00
  %.1028 = and i1 %fcmp_ordered, true
  %.1032 = load i32, ptr %R7, align 4
  %imad_mul.17 = mul i32 %.1032, %Arg_6
  %imad_add.17 = add i32 %imad_mul.17, %imad_add
  %.1036 = load float, ptr %R10, align 4
  %.1038 = icmp eq i1 %.1028, true
  %fsel = select i1 %.1038, float %.1036, float 0.000000e+00
  %.1039 = bitcast ptr %R7 to ptr
  store float %fsel, ptr %.1039, align 4
  %imad_ext1.7 = zext i32 %imad_add.17 to i64
  %imad_ext2.7 = zext i32 4 to i64
  %imad_mul.18 = mul i64 %imad_ext1.7, %imad_ext2.7
  %.1044 = ptrtoint ptr %Arg_3 to i64
  %imad_add.18 = add i64 %imad_mul.18, %.1044
  %.1045 = and i64 %imad_add.18, -4294967296
  %.1046 = lshr i64 %.1045, 32
  %trunc32.16 = trunc i64 %.1046 to i32
  %trunc32.17 = trunc i64 %imad_add.18 to i32
  store i32 %trunc32.16, ptr %R3, align 4
  %.1050 = load float, ptr %R7, align 4
  %zext.118 = zext i32 %trunc32.17 to i64
  %.1052 = load i32, ptr %R3, align 4
  %zext.119 = zext i32 %.1052 to i64
  %shl.59 = shl i64 %zext.119, 32
  %or.59 = or i64 %shl.59, %zext.118
  %inttoptr_bytes.59 = inttoptr i64 %or.59 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.1050, ptr addrspace(1) %ptr_cast_for_access.59, align 4
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
  %.33 = and i1 %cmp, true
  %nvvm_blockdim_y = call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %imad_mul.1 = mul i32 %nvvm_ctaid_y, %nvvm_blockdim_y
  %imad_add.1 = add i32 %imad_mul.1, %nvvm_threadidx_y
  %cmp.1 = icmp sge i32 %imad_add.1, %Arg_4
  %.45 = or i1 %cmp.1, %.33
  %.50 = icmp eq i1 %.45, true
  br i1 %.50, label %ExitFunction, label %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x00a0

.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x00a0: ; preds = %Entry_.text._Z18linear_proj_kernelPKfS0_S0_Pfiii
  %imad_ext1 = zext i32 %imad_add to i64
  %imad_ext2 = zext i32 4 to i64
  %imad_mul.2 = mul i64 %imad_ext1, %imad_ext2
  %.59 = ptrtoint ptr %Arg_2 to i64
  %imad_add.2 = add i64 %imad_mul.2, %.59
  %.60 = and i64 %imad_add.2, -4294967296
  %.61 = lshr i64 %.60, 32
  %trunc32 = trunc i64 %.61 to i32
  %trunc32.1 = trunc i64 %imad_add.2 to i32
  store i32 %trunc32, ptr %R3, align 4
  %zext = zext i32 %trunc32.1 to i64
  %.66 = load i32, ptr %R3, align 4
  %zext.1 = zext i32 %.66 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.67 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.68 = bitcast ptr %R6 to ptr
  store float %.67, ptr %.68, align 4
  %cmp.2 = icmp sge i32 %Arg_5, 1
  %.77 = and i1 %cmp.2, true
  %.82 = icmp ne i1 %.77, true
  br i1 %.82, label %.L_x_8, label %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100

.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100: ; preds = %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x00a0
  %.86 = add i32 %Arg_5, -1
  %.87 = add i32 %.86, 0
  %.92 = and i32 %Arg_5, 3
  %cmp.3 = icmp sge i32 %.87, 3
  %.99 = and i1 %cmp.3, true
  %.107 = icmp ne i1 %.99, true
  br i1 %.107, label %.L_x_9, label %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150

.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150: ; preds = %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100
  %.111 = sub i32 0, %.92
  %.112 = add i32 %.111, %Arg_5
  %.113 = add i32 %.112, 0
  %imad_mul.3 = mul i32 %imad_add.1, %Arg_5
  %imad_add.3 = add i32 %imad_mul.3, 0
  %.119 = ptrtoint ptr %Arg_1 to i64
  %.120 = and i64 %.119, -4294967296
  %.121 = lshr i64 %.120, 32
  %trunc32.2 = trunc i64 %.121 to i32
  %trunc32.3 = trunc i64 %.119 to i32
  %imad_mul.4 = mul i32 %imad_add, %Arg_5
  %imad_add.4 = add i32 %imad_mul.4, 0
  %cmp.4 = icmp sgt i32 %.113, 0
  %.132 = and i1 %cmp.4, true
  %imad_mul.5 = mul i32 0, 0
  %imad_add.5 = add i32 %imad_mul.5, 0
  %imad_ext1.1 = zext i32 %imad_add.3 to i64
  %imad_ext2.1 = zext i32 4 to i64
  %imad_mul.6 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.140 = ptrtoint ptr %Arg_0 to i64
  %imad_add.6 = add i64 %imad_mul.6, %.140
  %.141 = and i64 %imad_add.6, -4294967296
  %.142 = lshr i64 %.141, 32
  %trunc32.4 = trunc i64 %.142 to i32
  %trunc32.5 = trunc i64 %imad_add.6 to i32
  store i32 %trunc32.4, ptr %R3, align 4
  %.147 = icmp ne i1 %.132, true
  br i1 %.147, label %.L_x_10.preheader, label %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0

.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0: ; preds = %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150
  %cmp.5 = icmp sgt i32 %.113, 12
  %.154 = and i1 %cmp.5, true
  %.162 = icmp ne i1 %.154, true
  br i1 %.162, label %.L_x_11, label %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200

.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200: ; preds = %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0
  br label %.L_x_12

.L_x_12:                                          ; preds = %.L_x_12, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200
  %UR4.2 = phi i32 [ %trunc32.3, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.393, %.L_x_12 ]
  %R11.2 = phi i32 [ %.113, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.377, %.L_x_12 ]
  %R10.3 = phi i32 [ %imad_add.5, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.419, %.L_x_12 ]
  %UR5.2 = phi i32 [ %trunc32.2, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %add.3, %.L_x_12 ]
  %R2.2 = phi i32 [ %trunc32.5, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200 ], [ %.404, %.L_x_12 ]
  store i32 %UR4.2, ptr %R8, align 4
  %zext.2 = zext i32 %R2.2 to i64
  %.174 = load i32, ptr %R3, align 4
  %zext.3 = zext i32 %.174 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.175 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.176 = bitcast ptr %R14 to ptr
  store float %.175, ptr %.176, align 4
  %zext.4 = zext i32 %R2.2 to i64
  %.183 = load i32, ptr %R3, align 4
  %zext.5 = zext i32 %.183 to i64
  %shl.2 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.2, %zext.4
  %ptr_plus_imm = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.184 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.185 = bitcast ptr %R15 to ptr
  store float %.184, ptr %.185, align 4
  %.189 = load i32, ptr %R8, align 4
  %imad_ext1.2 = zext i32 %imad_add.4 to i64
  %imad_ext2.2 = zext i32 4 to i64
  %imad_mul.7 = mul i64 %imad_ext1.2, %imad_ext2.2
  %imad_ext3 = zext i32 %.189 to i64
  %imad_add.7 = add i64 %imad_mul.7, %imad_ext3
  %.190 = and i64 %imad_add.7, -4294967296
  %.191 = lshr i64 %.190, 32
  %trunc32.6 = trunc i64 %.191 to i32
  %trunc32.7 = trunc i64 %imad_add.7 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  %zext.6 = zext i32 %R2.2 to i64
  %.196 = load i32, ptr %R3, align 4
  %zext.7 = zext i32 %.196 to i64
  %shl.3 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.3, %zext.6
  %ptr_plus_imm.1 = add i64 %or.3, 8
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.197 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.198 = bitcast ptr %R17 to ptr
  store float %.197, ptr %.198, align 4
  %zext.8 = zext i32 %R2.2 to i64
  %.202 = load i32, ptr %R3, align 4
  %zext.9 = zext i32 %.202 to i64
  %shl.4 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.4, %zext.8
  %ptr_plus_imm.2 = add i64 %or.4, 12
  %inttoptr_bytes.4 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.203 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.204 = bitcast ptr %R19 to ptr
  store float %.203, ptr %.204, align 4
  %.207 = load i32, ptr %R8, align 4
  %zext.10 = zext i32 %.207 to i64
  %zext.11 = zext i32 %trunc32.6 to i64
  %shl.5 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.5, %zext.10
  %inttoptr_bytes.5 = inttoptr i64 %or.5 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.209 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.210 = bitcast ptr %R13 to ptr
  store float %.209, ptr %.210, align 4
  %.213 = load i32, ptr %R8, align 4
  %zext.12 = zext i32 %.213 to i64
  %zext.13 = zext i32 %trunc32.6 to i64
  %shl.6 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.6, %zext.12
  %ptr_plus_imm.3 = add i64 %or.6, 4
  %inttoptr_bytes.6 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.215 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.216 = bitcast ptr %R16 to ptr
  store float %.215, ptr %.216, align 4
  %.219 = load i32, ptr %R8, align 4
  %zext.14 = zext i32 %.219 to i64
  %zext.15 = zext i32 %trunc32.6 to i64
  %shl.7 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.7, %zext.14
  %ptr_plus_imm.4 = add i64 %or.7, 8
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.221 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.222 = bitcast ptr %R18 to ptr
  store float %.221, ptr %.222, align 4
  %.225 = load i32, ptr %R8, align 4
  %zext.16 = zext i32 %.225 to i64
  %zext.17 = zext i32 %trunc32.6 to i64
  %shl.8 = shl i64 %zext.17, 32
  %or.8 = or i64 %shl.8, %zext.16
  %ptr_plus_imm.5 = add i64 %or.8, 12
  %inttoptr_bytes.8 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.227 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.228 = bitcast ptr %R20 to ptr
  store float %.227, ptr %.228, align 4
  %zext.18 = zext i32 %R2.2 to i64
  %.232 = load i32, ptr %R3, align 4
  %zext.19 = zext i32 %.232 to i64
  %shl.9 = shl i64 %zext.19, 32
  %or.9 = or i64 %shl.9, %zext.18
  %ptr_plus_imm.6 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm.6 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.233 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.234 = bitcast ptr %R21 to ptr
  store float %.233, ptr %.234, align 4
  %.237 = load i32, ptr %R8, align 4
  %zext.20 = zext i32 %.237 to i64
  %zext.21 = zext i32 %trunc32.6 to i64
  %shl.10 = shl i64 %zext.21, 32
  %or.10 = or i64 %shl.10, %zext.20
  %ptr_plus_imm.7 = add i64 %or.10, 16
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.7 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.239 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.240 = bitcast ptr %R22 to ptr
  store float %.239, ptr %.240, align 4
  %zext.22 = zext i32 %R2.2 to i64
  %.244 = load i32, ptr %R3, align 4
  %zext.23 = zext i32 %.244 to i64
  %shl.11 = shl i64 %zext.23, 32
  %or.11 = or i64 %shl.11, %zext.22
  %ptr_plus_imm.8 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.8 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.245 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.246 = bitcast ptr %R23 to ptr
  store float %.245, ptr %.246, align 4
  %.249 = load i32, ptr %R8, align 4
  %zext.24 = zext i32 %.249 to i64
  %zext.25 = zext i32 %trunc32.6 to i64
  %shl.12 = shl i64 %zext.25, 32
  %or.12 = or i64 %shl.12, %zext.24
  %ptr_plus_imm.9 = add i64 %or.12, 20
  %inttoptr_bytes.12 = inttoptr i64 %ptr_plus_imm.9 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.251 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.252 = bitcast ptr %R24 to ptr
  store float %.251, ptr %.252, align 4
  %zext.26 = zext i32 %R2.2 to i64
  %.256 = load i32, ptr %R3, align 4
  %zext.27 = zext i32 %.256 to i64
  %shl.13 = shl i64 %zext.27, 32
  %or.13 = or i64 %shl.13, %zext.26
  %ptr_plus_imm.10 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %ptr_plus_imm.10 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.257 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.258 = bitcast ptr %R25 to ptr
  store float %.257, ptr %.258, align 4
  %.261 = load i32, ptr %R8, align 4
  %zext.28 = zext i32 %.261 to i64
  %zext.29 = zext i32 %trunc32.6 to i64
  %shl.14 = shl i64 %zext.29, 32
  %or.14 = or i64 %shl.14, %zext.28
  %ptr_plus_imm.11 = add i64 %or.14, 24
  %inttoptr_bytes.14 = inttoptr i64 %ptr_plus_imm.11 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.263 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.264 = bitcast ptr %R26 to ptr
  store float %.263, ptr %.264, align 4
  %zext.30 = zext i32 %R2.2 to i64
  %.268 = load i32, ptr %R3, align 4
  %zext.31 = zext i32 %.268 to i64
  %shl.15 = shl i64 %zext.31, 32
  %or.15 = or i64 %shl.15, %zext.30
  %ptr_plus_imm.12 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %ptr_plus_imm.12 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.269 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.270 = bitcast ptr %R27 to ptr
  store float %.269, ptr %.270, align 4
  %.273 = load i32, ptr %R8, align 4
  %zext.32 = zext i32 %.273 to i64
  %zext.33 = zext i32 %trunc32.6 to i64
  %shl.16 = shl i64 %zext.33, 32
  %or.16 = or i64 %shl.16, %zext.32
  %ptr_plus_imm.13 = add i64 %or.16, 28
  %inttoptr_bytes.16 = inttoptr i64 %ptr_plus_imm.13 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.275 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.276 = bitcast ptr %R28 to ptr
  store float %.275, ptr %.276, align 4
  %zext.34 = zext i32 %R2.2 to i64
  %.280 = load i32, ptr %R3, align 4
  %zext.35 = zext i32 %.280 to i64
  %shl.17 = shl i64 %zext.35, 32
  %or.17 = or i64 %shl.17, %zext.34
  %ptr_plus_imm.14 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %ptr_plus_imm.14 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.281 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.282 = bitcast ptr %R29 to ptr
  store float %.281, ptr %.282, align 4
  %.285 = load i32, ptr %R8, align 4
  %zext.36 = zext i32 %.285 to i64
  %zext.37 = zext i32 %trunc32.6 to i64
  %shl.18 = shl i64 %zext.37, 32
  %or.18 = or i64 %shl.18, %zext.36
  %ptr_plus_imm.15 = add i64 %or.18, 32
  %inttoptr_bytes.18 = inttoptr i64 %ptr_plus_imm.15 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.287 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.288 = bitcast ptr %R30 to ptr
  store float %.287, ptr %.288, align 4
  %zext.38 = zext i32 %R2.2 to i64
  %.292 = load i32, ptr %R3, align 4
  %zext.39 = zext i32 %.292 to i64
  %shl.19 = shl i64 %zext.39, 32
  %or.19 = or i64 %shl.19, %zext.38
  %ptr_plus_imm.16 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %ptr_plus_imm.16 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.293 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.294 = bitcast ptr %R31 to ptr
  store float %.293, ptr %.294, align 4
  %.297 = load i32, ptr %R8, align 4
  %zext.40 = zext i32 %.297 to i64
  %zext.41 = zext i32 %trunc32.6 to i64
  %shl.20 = shl i64 %zext.41, 32
  %or.20 = or i64 %shl.20, %zext.40
  %ptr_plus_imm.17 = add i64 %or.20, 36
  %inttoptr_bytes.20 = inttoptr i64 %ptr_plus_imm.17 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.299 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.300 = bitcast ptr %R32 to ptr
  store float %.299, ptr %.300, align 4
  %zext.42 = zext i32 %R2.2 to i64
  %.304 = load i32, ptr %R3, align 4
  %zext.43 = zext i32 %.304 to i64
  %shl.21 = shl i64 %zext.43, 32
  %or.21 = or i64 %shl.21, %zext.42
  %ptr_plus_imm.18 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %ptr_plus_imm.18 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.305 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.306 = bitcast ptr %R33 to ptr
  store float %.305, ptr %.306, align 4
  %.309 = load i32, ptr %R8, align 4
  %zext.44 = zext i32 %.309 to i64
  %zext.45 = zext i32 %trunc32.6 to i64
  %shl.22 = shl i64 %zext.45, 32
  %or.22 = or i64 %shl.22, %zext.44
  %ptr_plus_imm.19 = add i64 %or.22, 40
  %inttoptr_bytes.22 = inttoptr i64 %ptr_plus_imm.19 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.311 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.312 = bitcast ptr %R34 to ptr
  store float %.311, ptr %.312, align 4
  %zext.46 = zext i32 %R2.2 to i64
  %.316 = load i32, ptr %R3, align 4
  %zext.47 = zext i32 %.316 to i64
  %shl.23 = shl i64 %zext.47, 32
  %or.23 = or i64 %shl.23, %zext.46
  %ptr_plus_imm.20 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %ptr_plus_imm.20 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.317 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.318 = bitcast ptr %R35 to ptr
  store float %.317, ptr %.318, align 4
  %.321 = load i32, ptr %R8, align 4
  %zext.48 = zext i32 %.321 to i64
  %zext.49 = zext i32 %trunc32.6 to i64
  %shl.24 = shl i64 %zext.49, 32
  %or.24 = or i64 %shl.24, %zext.48
  %ptr_plus_imm.21 = add i64 %or.24, 44
  %inttoptr_bytes.24 = inttoptr i64 %ptr_plus_imm.21 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.323 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.324 = bitcast ptr %R36 to ptr
  store float %.323, ptr %.324, align 4
  %zext.50 = zext i32 %R2.2 to i64
  %.328 = load i32, ptr %R3, align 4
  %zext.51 = zext i32 %.328 to i64
  %shl.25 = shl i64 %zext.51, 32
  %or.25 = or i64 %shl.25, %zext.50
  %ptr_plus_imm.22 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %ptr_plus_imm.22 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.329 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.330 = bitcast ptr %R37 to ptr
  store float %.329, ptr %.330, align 4
  %.333 = load i32, ptr %R8, align 4
  %zext.52 = zext i32 %.333 to i64
  %zext.53 = zext i32 %trunc32.6 to i64
  %shl.26 = shl i64 %zext.53, 32
  %or.26 = or i64 %shl.26, %zext.52
  %ptr_plus_imm.23 = add i64 %or.26, 48
  %inttoptr_bytes.26 = inttoptr i64 %ptr_plus_imm.23 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.335 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.336 = bitcast ptr %R38 to ptr
  store float %.335, ptr %.336, align 4
  %zext.54 = zext i32 %R2.2 to i64
  %.340 = load i32, ptr %R3, align 4
  %zext.55 = zext i32 %.340 to i64
  %shl.27 = shl i64 %zext.55, 32
  %or.27 = or i64 %shl.27, %zext.54
  %ptr_plus_imm.24 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %ptr_plus_imm.24 to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.341 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.342 = bitcast ptr %R39 to ptr
  store float %.341, ptr %.342, align 4
  %.345 = load i32, ptr %R8, align 4
  %zext.56 = zext i32 %.345 to i64
  %zext.57 = zext i32 %trunc32.6 to i64
  %shl.28 = shl i64 %zext.57, 32
  %or.28 = or i64 %shl.28, %zext.56
  %ptr_plus_imm.25 = add i64 %or.28, 52
  %inttoptr_bytes.28 = inttoptr i64 %ptr_plus_imm.25 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.347 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.348 = bitcast ptr %R40 to ptr
  store float %.347, ptr %.348, align 4
  %zext.58 = zext i32 %R2.2 to i64
  %.352 = load i32, ptr %R3, align 4
  %zext.59 = zext i32 %.352 to i64
  %shl.29 = shl i64 %zext.59, 32
  %or.29 = or i64 %shl.29, %zext.58
  %ptr_plus_imm.26 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %ptr_plus_imm.26 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.353 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.354 = bitcast ptr %R41 to ptr
  store float %.353, ptr %.354, align 4
  %.357 = load i32, ptr %R8, align 4
  %zext.60 = zext i32 %.357 to i64
  %zext.61 = zext i32 %trunc32.6 to i64
  %shl.30 = shl i64 %zext.61, 32
  %or.30 = or i64 %shl.30, %zext.60
  %ptr_plus_imm.27 = add i64 %or.30, 56
  %inttoptr_bytes.30 = inttoptr i64 %ptr_plus_imm.27 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.359 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.360 = bitcast ptr %R42 to ptr
  store float %.359, ptr %.360, align 4
  %.363 = load i32, ptr %R8, align 4
  %zext.62 = zext i32 %.363 to i64
  %zext.63 = zext i32 %trunc32.6 to i64
  %shl.31 = shl i64 %zext.63, 32
  %or.31 = or i64 %shl.31, %zext.62
  %ptr_plus_imm.28 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %ptr_plus_imm.28 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.365 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.366 = bitcast ptr %R44 to ptr
  store float %.365, ptr %.366, align 4
  %zext.64 = zext i32 %R2.2 to i64
  %.370 = load i32, ptr %R3, align 4
  %zext.65 = zext i32 %.370 to i64
  %shl.32 = shl i64 %zext.65, 32
  %or.32 = or i64 %shl.32, %zext.64
  %ptr_plus_imm.29 = add i64 %or.32, 60
  %inttoptr_bytes.32 = inttoptr i64 %ptr_plus_imm.29 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.371 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.372 = bitcast ptr %R43 to ptr
  store float %.371, ptr %.372, align 4
  %.376 = add i32 %R11.2, -16
  %.377 = add i32 %.376, 0
  %cmp.6 = icmp sgt i32 %.377, 12
  %.384 = and i1 %cmp.6, true
  %.389 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.390 = extractvalue { i32, i1 } %.389, 0
  %.391 = extractvalue { i32, i1 } %.389, 1
  %.392 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.390, i32 0)
  %.393 = extractvalue { i32, i1 } %.392, 0
  %.394 = extractvalue { i32, i1 } %.392, 1
  %.395 = or i1 %.391, %.394
  %.400 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.2, i32 64)
  %.401 = extractvalue { i32, i1 } %.400, 0
  %.402 = extractvalue { i32, i1 } %.400, 1
  %.403 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.401, i32 0)
  %.404 = extractvalue { i32, i1 } %.403, 0
  %.405 = extractvalue { i32, i1 } %.403, 1
  %.406 = or i1 %.402, %.405
  %.412 = xor i1 true, true
  %.413 = zext i1 %.395 to i32
  %.414 = zext i1 %.412 to i32
  %add = add i32 0, %UR5.2
  %add.1 = add i32 %add, 0
  %add.2 = add i32 %add.1, %.413
  %add.3 = add i32 %add.2, %.414
  %.418 = add i32 %R10.3, 16
  %.419 = add i32 %.418, 0
  %.422 = load i32, ptr %R3, align 4
  %.424 = xor i1 true, true
  %.425 = zext i1 %.406 to i32
  %.426 = zext i1 %.424 to i32
  %add.4 = add i32 0, %.422
  %add.5 = add i32 %add.4, 0
  %add.6 = add i32 %add.5, %.425
  %add.7 = add i32 %add.6, %.426
  store i32 %add.7, ptr %R3, align 4
  %.429 = load float, ptr %R13, align 4
  %.430 = load float, ptr %R14, align 4
  %.431 = load float, ptr %R6, align 4
  %fmul = fmul float %.429, %.430
  %fadd = fadd float %fmul, %.431
  %.432 = bitcast ptr %R13 to ptr
  store float %fadd, ptr %.432, align 4
  %.435 = load float, ptr %R16, align 4
  %.436 = load float, ptr %R15, align 4
  %.437 = load float, ptr %R13, align 4
  %fmul.1 = fmul float %.435, %.436
  %fadd.1 = fadd float %fmul.1, %.437
  %.438 = bitcast ptr %R13 to ptr
  store float %fadd.1, ptr %.438, align 4
  %.441 = load float, ptr %R18, align 4
  %.442 = load float, ptr %R17, align 4
  %.443 = load float, ptr %R13, align 4
  %fmul.2 = fmul float %.441, %.442
  %fadd.2 = fadd float %fmul.2, %.443
  %.444 = bitcast ptr %R13 to ptr
  store float %fadd.2, ptr %.444, align 4
  %.447 = load float, ptr %R20, align 4
  %.448 = load float, ptr %R19, align 4
  %.449 = load float, ptr %R13, align 4
  %fmul.3 = fmul float %.447, %.448
  %fadd.3 = fadd float %fmul.3, %.449
  %.450 = bitcast ptr %R13 to ptr
  store float %fadd.3, ptr %.450, align 4
  %.453 = load float, ptr %R22, align 4
  %.454 = load float, ptr %R21, align 4
  %.455 = load float, ptr %R13, align 4
  %fmul.4 = fmul float %.453, %.454
  %fadd.4 = fadd float %fmul.4, %.455
  %.456 = bitcast ptr %R13 to ptr
  store float %fadd.4, ptr %.456, align 4
  %.459 = load float, ptr %R24, align 4
  %.460 = load float, ptr %R23, align 4
  %.461 = load float, ptr %R13, align 4
  %fmul.5 = fmul float %.459, %.460
  %fadd.5 = fadd float %fmul.5, %.461
  %.462 = bitcast ptr %R13 to ptr
  store float %fadd.5, ptr %.462, align 4
  %.465 = load float, ptr %R26, align 4
  %.466 = load float, ptr %R25, align 4
  %.467 = load float, ptr %R13, align 4
  %fmul.6 = fmul float %.465, %.466
  %fadd.6 = fadd float %fmul.6, %.467
  %.468 = bitcast ptr %R13 to ptr
  store float %fadd.6, ptr %.468, align 4
  %.471 = load float, ptr %R28, align 4
  %.472 = load float, ptr %R27, align 4
  %.473 = load float, ptr %R13, align 4
  %fmul.7 = fmul float %.471, %.472
  %fadd.7 = fadd float %fmul.7, %.473
  %.474 = bitcast ptr %R13 to ptr
  store float %fadd.7, ptr %.474, align 4
  %.477 = load float, ptr %R30, align 4
  %.478 = load float, ptr %R29, align 4
  %.479 = load float, ptr %R13, align 4
  %fmul.8 = fmul float %.477, %.478
  %fadd.8 = fadd float %fmul.8, %.479
  %.480 = bitcast ptr %R13 to ptr
  store float %fadd.8, ptr %.480, align 4
  %.483 = load float, ptr %R32, align 4
  %.484 = load float, ptr %R31, align 4
  %.485 = load float, ptr %R13, align 4
  %fmul.9 = fmul float %.483, %.484
  %fadd.9 = fadd float %fmul.9, %.485
  %.486 = bitcast ptr %R13 to ptr
  store float %fadd.9, ptr %.486, align 4
  %.489 = load float, ptr %R34, align 4
  %.490 = load float, ptr %R33, align 4
  %.491 = load float, ptr %R13, align 4
  %fmul.10 = fmul float %.489, %.490
  %fadd.10 = fadd float %fmul.10, %.491
  %.492 = bitcast ptr %R13 to ptr
  store float %fadd.10, ptr %.492, align 4
  %.495 = load float, ptr %R36, align 4
  %.496 = load float, ptr %R35, align 4
  %.497 = load float, ptr %R13, align 4
  %fmul.11 = fmul float %.495, %.496
  %fadd.11 = fadd float %fmul.11, %.497
  %.498 = bitcast ptr %R13 to ptr
  store float %fadd.11, ptr %.498, align 4
  %.501 = load float, ptr %R38, align 4
  %.502 = load float, ptr %R37, align 4
  %.503 = load float, ptr %R13, align 4
  %fmul.12 = fmul float %.501, %.502
  %fadd.12 = fadd float %fmul.12, %.503
  %.504 = bitcast ptr %R13 to ptr
  store float %fadd.12, ptr %.504, align 4
  %.507 = load float, ptr %R40, align 4
  %.508 = load float, ptr %R39, align 4
  %.509 = load float, ptr %R13, align 4
  %fmul.13 = fmul float %.507, %.508
  %fadd.13 = fadd float %fmul.13, %.509
  %.510 = bitcast ptr %R13 to ptr
  store float %fadd.13, ptr %.510, align 4
  %.513 = load float, ptr %R42, align 4
  %.514 = load float, ptr %R41, align 4
  %.515 = load float, ptr %R13, align 4
  %fmul.14 = fmul float %.513, %.514
  %fadd.14 = fadd float %fmul.14, %.515
  %.516 = bitcast ptr %R13 to ptr
  store float %fadd.14, ptr %.516, align 4
  %.519 = load float, ptr %R44, align 4
  %.520 = load float, ptr %R43, align 4
  %.521 = load float, ptr %R13, align 4
  %fmul.15 = fmul float %.519, %.520
  %fadd.15 = fadd float %fmul.15, %.521
  %.522 = bitcast ptr %R6 to ptr
  store float %fadd.15, ptr %.522, align 4
  %.526 = icmp eq i1 %.384, true
  br i1 %.526, label %.L_x_12, label %.L_x_11.loopexit

.L_x_11.loopexit:                                 ; preds = %.L_x_12
  br label %.L_x_11

.L_x_11:                                          ; preds = %.L_x_11.loopexit, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0
  %UR4.1 = phi i32 [ %trunc32.3, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.393, %.L_x_11.loopexit ]
  %R11.1 = phi i32 [ %.113, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.377, %.L_x_11.loopexit ]
  %R10.2 = phi i32 [ %imad_add.5, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.419, %.L_x_11.loopexit ]
  %UR5.1 = phi i32 [ %trunc32.2, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %add.3, %.L_x_11.loopexit ]
  %R2.1 = phi i32 [ %trunc32.5, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0 ], [ %.404, %.L_x_11.loopexit ]
  %cmp.7 = icmp sgt i32 %R11.1, 4
  %.533 = and i1 %cmp.7, true
  %.538 = icmp ne i1 %.533, true
  br i1 %.538, label %.L_x_13, label %.L_x_11_split_0x05e0

.L_x_11_split_0x05e0:                             ; preds = %.L_x_11
  %imad_mul.8 = mul i32 0, 0
  %imad_add.8 = add i32 %imad_mul.8, %UR4.1
  store i32 %imad_add.8, ptr %R8, align 4
  %zext.66 = zext i32 %R2.1 to i64
  %.548 = load i32, ptr %R3, align 4
  %zext.67 = zext i32 %.548 to i64
  %shl.33 = shl i64 %zext.67, 32
  %or.33 = or i64 %shl.33, %zext.66
  %inttoptr_bytes.33 = inttoptr i64 %or.33 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.549 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.550 = bitcast ptr %R14 to ptr
  store float %.549, ptr %.550, align 4
  %.554 = load i32, ptr %R8, align 4
  %imad_ext1.3 = zext i32 %imad_add.4 to i64
  %imad_ext2.3 = zext i32 4 to i64
  %imad_mul.9 = mul i64 %imad_ext1.3, %imad_ext2.3
  %imad_ext3.1 = zext i32 %.554 to i64
  %imad_add.9 = add i64 %imad_mul.9, %imad_ext3.1
  %.555 = and i64 %imad_add.9, -4294967296
  %.556 = lshr i64 %.555, 32
  %trunc32.8 = trunc i64 %.556 to i32
  %trunc32.9 = trunc i64 %imad_add.9 to i32
  store i32 %trunc32.9, ptr %R8, align 4
  %zext.68 = zext i32 %R2.1 to i64
  %.561 = load i32, ptr %R3, align 4
  %zext.69 = zext i32 %.561 to i64
  %shl.34 = shl i64 %zext.69, 32
  %or.34 = or i64 %shl.34, %zext.68
  %ptr_plus_imm.30 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.30 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.562 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.563 = bitcast ptr %R15 to ptr
  store float %.562, ptr %.563, align 4
  %zext.70 = zext i32 %R2.1 to i64
  %.567 = load i32, ptr %R3, align 4
  %zext.71 = zext i32 %.567 to i64
  %shl.35 = shl i64 %zext.71, 32
  %or.35 = or i64 %shl.35, %zext.70
  %ptr_plus_imm.31 = add i64 %or.35, 8
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.31 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.568 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.569 = bitcast ptr %R17 to ptr
  store float %.568, ptr %.569, align 4
  %.572 = load i32, ptr %R8, align 4
  %zext.72 = zext i32 %.572 to i64
  %zext.73 = zext i32 %trunc32.8 to i64
  %shl.36 = shl i64 %zext.73, 32
  %or.36 = or i64 %shl.36, %zext.72
  %inttoptr_bytes.36 = inttoptr i64 %or.36 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.574 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.575 = bitcast ptr %R13 to ptr
  store float %.574, ptr %.575, align 4
  %.578 = load i32, ptr %R8, align 4
  %zext.74 = zext i32 %.578 to i64
  %zext.75 = zext i32 %trunc32.8 to i64
  %shl.37 = shl i64 %zext.75, 32
  %or.37 = or i64 %shl.37, %zext.74
  %ptr_plus_imm.32 = add i64 %or.37, 4
  %inttoptr_bytes.37 = inttoptr i64 %ptr_plus_imm.32 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.580 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.581 = bitcast ptr %R16 to ptr
  store float %.580, ptr %.581, align 4
  %.584 = load i32, ptr %R8, align 4
  %zext.76 = zext i32 %.584 to i64
  %zext.77 = zext i32 %trunc32.8 to i64
  %shl.38 = shl i64 %zext.77, 32
  %or.38 = or i64 %shl.38, %zext.76
  %ptr_plus_imm.33 = add i64 %or.38, 8
  %inttoptr_bytes.38 = inttoptr i64 %ptr_plus_imm.33 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.586 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.587 = bitcast ptr %R18 to ptr
  store float %.586, ptr %.587, align 4
  %zext.78 = zext i32 %R2.1 to i64
  %.591 = load i32, ptr %R3, align 4
  %zext.79 = zext i32 %.591 to i64
  %shl.39 = shl i64 %zext.79, 32
  %or.39 = or i64 %shl.39, %zext.78
  %ptr_plus_imm.34 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %ptr_plus_imm.34 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.592 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.593 = bitcast ptr %R19 to ptr
  store float %.592, ptr %.593, align 4
  %.596 = load i32, ptr %R8, align 4
  %zext.80 = zext i32 %.596 to i64
  %zext.81 = zext i32 %trunc32.8 to i64
  %shl.40 = shl i64 %zext.81, 32
  %or.40 = or i64 %shl.40, %zext.80
  %ptr_plus_imm.35 = add i64 %or.40, 12
  %inttoptr_bytes.40 = inttoptr i64 %ptr_plus_imm.35 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.598 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.599 = bitcast ptr %R20 to ptr
  store float %.598, ptr %.599, align 4
  %zext.82 = zext i32 %R2.1 to i64
  %.603 = load i32, ptr %R3, align 4
  %zext.83 = zext i32 %.603 to i64
  %shl.41 = shl i64 %zext.83, 32
  %or.41 = or i64 %shl.41, %zext.82
  %ptr_plus_imm.36 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %ptr_plus_imm.36 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.604 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.605 = bitcast ptr %R21 to ptr
  store float %.604, ptr %.605, align 4
  %.608 = load i32, ptr %R8, align 4
  %zext.84 = zext i32 %.608 to i64
  %zext.85 = zext i32 %trunc32.8 to i64
  %shl.42 = shl i64 %zext.85, 32
  %or.42 = or i64 %shl.42, %zext.84
  %ptr_plus_imm.37 = add i64 %or.42, 16
  %inttoptr_bytes.42 = inttoptr i64 %ptr_plus_imm.37 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.610 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.611 = bitcast ptr %R22 to ptr
  store float %.610, ptr %.611, align 4
  %zext.86 = zext i32 %R2.1 to i64
  %.615 = load i32, ptr %R3, align 4
  %zext.87 = zext i32 %.615 to i64
  %shl.43 = shl i64 %zext.87, 32
  %or.43 = or i64 %shl.43, %zext.86
  %ptr_plus_imm.38 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %ptr_plus_imm.38 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.616 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.617 = bitcast ptr %R23 to ptr
  store float %.616, ptr %.617, align 4
  %.620 = load i32, ptr %R8, align 4
  %zext.88 = zext i32 %.620 to i64
  %zext.89 = zext i32 %trunc32.8 to i64
  %shl.44 = shl i64 %zext.89, 32
  %or.44 = or i64 %shl.44, %zext.88
  %ptr_plus_imm.39 = add i64 %or.44, 20
  %inttoptr_bytes.44 = inttoptr i64 %ptr_plus_imm.39 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.622 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.623 = bitcast ptr %R24 to ptr
  store float %.622, ptr %.623, align 4
  %zext.90 = zext i32 %R2.1 to i64
  %.627 = load i32, ptr %R3, align 4
  %zext.91 = zext i32 %.627 to i64
  %shl.45 = shl i64 %zext.91, 32
  %or.45 = or i64 %shl.45, %zext.90
  %ptr_plus_imm.40 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %ptr_plus_imm.40 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.628 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.629 = bitcast ptr %R25 to ptr
  store float %.628, ptr %.629, align 4
  %.632 = load i32, ptr %R8, align 4
  %zext.92 = zext i32 %.632 to i64
  %zext.93 = zext i32 %trunc32.8 to i64
  %shl.46 = shl i64 %zext.93, 32
  %or.46 = or i64 %shl.46, %zext.92
  %ptr_plus_imm.41 = add i64 %or.46, 24
  %inttoptr_bytes.46 = inttoptr i64 %ptr_plus_imm.41 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.634 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.635 = bitcast ptr %R26 to ptr
  store float %.634, ptr %.635, align 4
  %.638 = load i32, ptr %R8, align 4
  %zext.94 = zext i32 %.638 to i64
  %zext.95 = zext i32 %trunc32.8 to i64
  %shl.47 = shl i64 %zext.95, 32
  %or.47 = or i64 %shl.47, %zext.94
  %ptr_plus_imm.42 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %ptr_plus_imm.42 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.640 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.641 = bitcast ptr %R28 to ptr
  store float %.640, ptr %.641, align 4
  %zext.96 = zext i32 %R2.1 to i64
  %.645 = load i32, ptr %R3, align 4
  %zext.97 = zext i32 %.645 to i64
  %shl.48 = shl i64 %zext.97, 32
  %or.48 = or i64 %shl.48, %zext.96
  %ptr_plus_imm.43 = add i64 %or.48, 28
  %inttoptr_bytes.48 = inttoptr i64 %ptr_plus_imm.43 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.646 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.647 = bitcast ptr %R27 to ptr
  store float %.646, ptr %.647, align 4
  %.651 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.652 = extractvalue { i32, i1 } %.651, 0
  %.653 = extractvalue { i32, i1 } %.651, 1
  %.654 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.652, i32 0)
  %.655 = extractvalue { i32, i1 } %.654, 0
  %.656 = extractvalue { i32, i1 } %.654, 1
  %.657 = or i1 %.653, %.656
  %.666 = add i32 %R10.2, 8
  %.667 = add i32 %.666, 0
  %.671 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.1, i32 32)
  %.672 = extractvalue { i32, i1 } %.671, 0
  %.673 = extractvalue { i32, i1 } %.671, 1
  %.674 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.672, i32 0)
  %.675 = extractvalue { i32, i1 } %.674, 0
  %.676 = extractvalue { i32, i1 } %.674, 1
  %.677 = or i1 %.673, %.676
  %.682 = add i32 %R11.1, -8
  %.683 = add i32 %.682, 0
  %.686 = load i32, ptr %R3, align 4
  %.688 = xor i1 true, true
  %.689 = zext i1 %.677 to i32
  %.690 = zext i1 %.688 to i32
  %add.8 = add i32 0, %.686
  %add.9 = add i32 %add.8, 0
  %add.10 = add i32 %add.9, %.689
  %add.11 = add i32 %add.10, %.690
  store i32 %add.11, ptr %R3, align 4
  %.695 = xor i1 true, true
  %.696 = zext i1 %.657 to i32
  %.697 = zext i1 %.695 to i32
  %add.12 = add i32 0, %UR5.1
  %add.13 = add i32 %add.12, 0
  %add.14 = add i32 %add.13, %.696
  %add.15 = add i32 %add.14, %.697
  %.700 = load float, ptr %R13, align 4
  %.701 = load float, ptr %R14, align 4
  %.702 = load float, ptr %R6, align 4
  %fmul.16 = fmul float %.700, %.701
  %fadd.16 = fadd float %fmul.16, %.702
  %.703 = bitcast ptr %R13 to ptr
  store float %fadd.16, ptr %.703, align 4
  %.706 = load float, ptr %R16, align 4
  %.707 = load float, ptr %R15, align 4
  %.708 = load float, ptr %R13, align 4
  %fmul.17 = fmul float %.706, %.707
  %fadd.17 = fadd float %fmul.17, %.708
  %.709 = bitcast ptr %R13 to ptr
  store float %fadd.17, ptr %.709, align 4
  %.712 = load float, ptr %R18, align 4
  %.713 = load float, ptr %R17, align 4
  %.714 = load float, ptr %R13, align 4
  %fmul.18 = fmul float %.712, %.713
  %fadd.18 = fadd float %fmul.18, %.714
  %.715 = bitcast ptr %R13 to ptr
  store float %fadd.18, ptr %.715, align 4
  %.718 = load float, ptr %R20, align 4
  %.719 = load float, ptr %R19, align 4
  %.720 = load float, ptr %R13, align 4
  %fmul.19 = fmul float %.718, %.719
  %fadd.19 = fadd float %fmul.19, %.720
  %.721 = bitcast ptr %R13 to ptr
  store float %fadd.19, ptr %.721, align 4
  %.724 = load float, ptr %R22, align 4
  %.725 = load float, ptr %R21, align 4
  %.726 = load float, ptr %R13, align 4
  %fmul.20 = fmul float %.724, %.725
  %fadd.20 = fadd float %fmul.20, %.726
  %.727 = bitcast ptr %R13 to ptr
  store float %fadd.20, ptr %.727, align 4
  %.730 = load float, ptr %R24, align 4
  %.731 = load float, ptr %R23, align 4
  %.732 = load float, ptr %R13, align 4
  %fmul.21 = fmul float %.730, %.731
  %fadd.21 = fadd float %fmul.21, %.732
  %.733 = bitcast ptr %R13 to ptr
  store float %fadd.21, ptr %.733, align 4
  %.736 = load float, ptr %R26, align 4
  %.737 = load float, ptr %R25, align 4
  %.738 = load float, ptr %R13, align 4
  %fmul.22 = fmul float %.736, %.737
  %fadd.22 = fadd float %fmul.22, %.738
  %.739 = bitcast ptr %R13 to ptr
  store float %fadd.22, ptr %.739, align 4
  %.742 = load float, ptr %R28, align 4
  %.743 = load float, ptr %R27, align 4
  %.744 = load float, ptr %R13, align 4
  %fmul.23 = fmul float %.742, %.743
  %fadd.23 = fadd float %fmul.23, %.744
  %.745 = bitcast ptr %R6 to ptr
  store float %fadd.23, ptr %.745, align 4
  br label %.L_x_13

.L_x_13:                                          ; preds = %.L_x_11_split_0x05e0, %.L_x_11
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_11 ], [ %.655, %.L_x_11_split_0x05e0 ]
  %R11.3 = phi i32 [ %R11.1, %.L_x_11 ], [ %.683, %.L_x_11_split_0x05e0 ]
  %R10.4 = phi i32 [ %R10.2, %.L_x_11 ], [ %.667, %.L_x_11_split_0x05e0 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_11 ], [ %add.15, %.L_x_11_split_0x05e0 ]
  %R2.3 = phi i32 [ %R2.1, %.L_x_11 ], [ %.675, %.L_x_11_split_0x05e0 ]
  %cmp.8 = icmp ne i32 %R11.3, 0
  %.753 = or i1 %cmp.8, %.132
  %.758 = icmp ne i1 %.753, true
  br i1 %.758, label %.L_x_9, label %.L_x_10.preheader

.L_x_10.preheader:                                ; preds = %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150, %.L_x_13
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_13 ], [ %trunc32.3, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %R11.0.ph = phi i32 [ %R11.3, %.L_x_13 ], [ %.113, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %R10.1.ph = phi i32 [ %R10.4, %.L_x_13 ], [ %imad_add.5, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_13 ], [ %trunc32.2, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  %R2.0.ph = phi i32 [ %R2.3, %.L_x_13 ], [ %trunc32.5, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150 ]
  br label %.L_x_10

.L_x_10:                                          ; preds = %.L_x_10.preheader, %.L_x_10
  %UR4.0 = phi i32 [ %.840, %.L_x_10 ], [ %UR4.0.ph, %.L_x_10.preheader ]
  %R11.0 = phi i32 [ %.824, %.L_x_10 ], [ %R11.0.ph, %.L_x_10.preheader ]
  %R10.1 = phi i32 [ %.848, %.L_x_10 ], [ %R10.1.ph, %.L_x_10.preheader ]
  %UR5.0 = phi i32 [ %add.19, %.L_x_10 ], [ %UR5.0.ph, %.L_x_10.preheader ]
  %R2.0 = phi i32 [ %.894, %.L_x_10 ], [ %R2.0.ph, %.L_x_10.preheader ]
  store i32 %UR4.0, ptr %R8, align 4
  %zext.98 = zext i32 %R2.0 to i64
  %.768 = load i32, ptr %R3, align 4
  %zext.99 = zext i32 %.768 to i64
  %shl.49 = shl i64 %zext.99, 32
  %or.49 = or i64 %shl.49, %zext.98
  %inttoptr_bytes.49 = inttoptr i64 %or.49 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.769 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.770 = bitcast ptr %R14 to ptr
  store float %.769, ptr %.770, align 4
  %.774 = load i32, ptr %R8, align 4
  %imad_ext1.4 = zext i32 %imad_add.4 to i64
  %imad_ext2.4 = zext i32 4 to i64
  %imad_mul.11 = mul i64 %imad_ext1.4, %imad_ext2.4
  %imad_ext3.2 = zext i32 %.774 to i64
  %imad_add.11 = add i64 %imad_mul.11, %imad_ext3.2
  %.775 = and i64 %imad_add.11, -4294967296
  %.776 = lshr i64 %.775, 32
  %trunc32.10 = trunc i64 %.776 to i32
  %trunc32.11 = trunc i64 %imad_add.11 to i32
  store i32 %trunc32.11, ptr %R8, align 4
  %zext.100 = zext i32 %R2.0 to i64
  %.781 = load i32, ptr %R3, align 4
  %zext.101 = zext i32 %.781 to i64
  %shl.50 = shl i64 %zext.101, 32
  %or.50 = or i64 %shl.50, %zext.100
  %ptr_plus_imm.44 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %ptr_plus_imm.44 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.782 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.783 = bitcast ptr %R15 to ptr
  store float %.782, ptr %.783, align 4
  %zext.102 = zext i32 %R2.0 to i64
  %.787 = load i32, ptr %R3, align 4
  %zext.103 = zext i32 %.787 to i64
  %shl.51 = shl i64 %zext.103, 32
  %or.51 = or i64 %shl.51, %zext.102
  %ptr_plus_imm.45 = add i64 %or.51, 8
  %inttoptr_bytes.51 = inttoptr i64 %ptr_plus_imm.45 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.788 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.789 = bitcast ptr %R17 to ptr
  store float %.788, ptr %.789, align 4
  %.792 = load i32, ptr %R8, align 4
  %zext.104 = zext i32 %.792 to i64
  %zext.105 = zext i32 %trunc32.10 to i64
  %shl.52 = shl i64 %zext.105, 32
  %or.52 = or i64 %shl.52, %zext.104
  %inttoptr_bytes.52 = inttoptr i64 %or.52 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.794 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.795 = bitcast ptr %R13 to ptr
  store float %.794, ptr %.795, align 4
  %.798 = load i32, ptr %R8, align 4
  %zext.106 = zext i32 %.798 to i64
  %zext.107 = zext i32 %trunc32.10 to i64
  %shl.53 = shl i64 %zext.107, 32
  %or.53 = or i64 %shl.53, %zext.106
  %ptr_plus_imm.46 = add i64 %or.53, 4
  %inttoptr_bytes.53 = inttoptr i64 %ptr_plus_imm.46 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.800 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.801 = bitcast ptr %R16 to ptr
  store float %.800, ptr %.801, align 4
  %.804 = load i32, ptr %R8, align 4
  %zext.108 = zext i32 %.804 to i64
  %zext.109 = zext i32 %trunc32.10 to i64
  %shl.54 = shl i64 %zext.109, 32
  %or.54 = or i64 %shl.54, %zext.108
  %ptr_plus_imm.47 = add i64 %or.54, 8
  %inttoptr_bytes.54 = inttoptr i64 %ptr_plus_imm.47 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.806 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.807 = bitcast ptr %R18 to ptr
  store float %.806, ptr %.807, align 4
  %.810 = load i32, ptr %R8, align 4
  %zext.110 = zext i32 %.810 to i64
  %zext.111 = zext i32 %trunc32.10 to i64
  %shl.55 = shl i64 %zext.111, 32
  %or.55 = or i64 %shl.55, %zext.110
  %ptr_plus_imm.48 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %ptr_plus_imm.48 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.812 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.813 = bitcast ptr %R20 to ptr
  store float %.812, ptr %.813, align 4
  %zext.112 = zext i32 %R2.0 to i64
  %.817 = load i32, ptr %R3, align 4
  %zext.113 = zext i32 %.817 to i64
  %shl.56 = shl i64 %zext.113, 32
  %or.56 = or i64 %shl.56, %zext.112
  %ptr_plus_imm.49 = add i64 %or.56, 12
  %inttoptr_bytes.56 = inttoptr i64 %ptr_plus_imm.49 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.818 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.819 = bitcast ptr %R19 to ptr
  store float %.818, ptr %.819, align 4
  %.823 = add i32 %R11.0, -4
  %.824 = add i32 %.823, 0
  %cmp.9 = icmp ne i32 %.824, 0
  %.831 = and i1 %cmp.9, true
  %.836 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.837 = extractvalue { i32, i1 } %.836, 0
  %.838 = extractvalue { i32, i1 } %.836, 1
  %.839 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.837, i32 0)
  %.840 = extractvalue { i32, i1 } %.839, 0
  %.841 = extractvalue { i32, i1 } %.839, 1
  %.842 = or i1 %.838, %.841
  %.847 = add i32 %R10.1, 4
  %.848 = add i32 %.847, 0
  %.853 = xor i1 true, true
  %.854 = zext i1 %.842 to i32
  %.855 = zext i1 %.853 to i32
  %add.16 = add i32 0, %UR5.0
  %add.17 = add i32 %add.16, 0
  %add.18 = add i32 %add.17, %.854
  %add.19 = add i32 %add.18, %.855
  %.858 = load float, ptr %R13, align 4
  %.859 = load float, ptr %R14, align 4
  %.860 = load float, ptr %R6, align 4
  %fmul.24 = fmul float %.858, %.859
  %fadd.24 = fadd float %fmul.24, %.860
  %.861 = bitcast ptr %R13 to ptr
  store float %fadd.24, ptr %.861, align 4
  %.864 = load float, ptr %R16, align 4
  %.865 = load float, ptr %R15, align 4
  %.866 = load float, ptr %R13, align 4
  %fmul.25 = fmul float %.864, %.865
  %fadd.25 = fadd float %fmul.25, %.866
  %.867 = bitcast ptr %R13 to ptr
  store float %fadd.25, ptr %.867, align 4
  %.870 = load float, ptr %R18, align 4
  %.871 = load float, ptr %R17, align 4
  %.872 = load float, ptr %R13, align 4
  %fmul.26 = fmul float %.870, %.871
  %fadd.26 = fadd float %fmul.26, %.872
  %.873 = bitcast ptr %R17 to ptr
  store float %fadd.26, ptr %.873, align 4
  %.877 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.0, i32 16)
  %.878 = extractvalue { i32, i1 } %.877, 0
  %.879 = extractvalue { i32, i1 } %.877, 1
  %.880 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.878, i32 0)
  %.881 = extractvalue { i32, i1 } %.880, 0
  %.882 = extractvalue { i32, i1 } %.880, 1
  %.883 = or i1 %.879, %.882
  store i32 %.881, ptr %R13, align 4
  %.887 = load i32, ptr %R3, align 4
  %.889 = xor i1 true, true
  %.890 = zext i1 %.883 to i32
  %.891 = zext i1 %.889 to i32
  %add.20 = add i32 0, %.887
  %add.21 = add i32 %add.20, 0
  %add.22 = add i32 %add.21, %.890
  %add.23 = add i32 %add.22, %.891
  store i32 %add.23, ptr %R14, align 4
  %.894 = load i32, ptr %R13, align 4
  %.897 = load float, ptr %R20, align 4
  %.898 = load float, ptr %R19, align 4
  %.899 = load float, ptr %R17, align 4
  %fmul.27 = fmul float %.897, %.898
  %fadd.27 = fadd float %fmul.27, %.899
  %.900 = bitcast ptr %R6 to ptr
  store float %fadd.27, ptr %.900, align 4
  %.903 = load i32, ptr %R14, align 4
  store i32 %.903, ptr %R3, align 4
  %.907 = icmp eq i1 %.831, true
  br i1 %.907, label %.L_x_10, label %.L_x_9.loopexit

.L_x_9.loopexit:                                  ; preds = %.L_x_10
  br label %.L_x_9

.L_x_9:                                           ; preds = %.L_x_9.loopexit, %.L_x_13, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100
  %R10.0 = phi i32 [ 0, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100 ], [ %R10.4, %.L_x_13 ], [ %.848, %.L_x_9.loopexit ]
  %cmp.10 = icmp ne i32 %.92, 0
  %.914 = and i1 %cmp.10, true
  %.919 = icmp ne i1 %.914, true
  br i1 %.919, label %.L_x_8, label %.L_x_9_split_0x09d0

.L_x_9_split_0x09d0:                              ; preds = %.L_x_9
  %imad_mul.12 = mul i32 %imad_add, %Arg_5
  %imad_add.12 = add i32 %imad_mul.12, %R10.0
  %imad_mul.13 = mul i32 %imad_add.1, %Arg_5
  %imad_add.13 = add i32 %imad_mul.13, %R10.0
  store i32 %imad_add.13, ptr %R8, align 4
  %imad_ext1.5 = zext i32 %imad_add.12 to i64
  %imad_ext2.5 = zext i32 4 to i64
  %imad_mul.14 = mul i64 %imad_ext1.5, %imad_ext2.5
  %.932 = ptrtoint ptr %Arg_1 to i64
  %imad_add.14 = add i64 %imad_mul.14, %.932
  %.933 = and i64 %imad_add.14, -4294967296
  %.934 = lshr i64 %.933, 32
  %trunc32.12 = trunc i64 %.934 to i32
  %trunc32.13 = trunc i64 %imad_add.14 to i32
  store i32 %trunc32.12, ptr %R3, align 4
  %.938 = load i32, ptr %R8, align 4
  %imad_ext1.6 = zext i32 %.938 to i64
  %imad_ext2.6 = zext i32 4 to i64
  %imad_mul.15 = mul i64 %imad_ext1.6, %imad_ext2.6
  %.940 = ptrtoint ptr %Arg_0 to i64
  %imad_add.15 = add i64 %imad_mul.15, %.940
  %.941 = and i64 %imad_add.15, -4294967296
  %.942 = lshr i64 %.941, 32
  %trunc32.14 = trunc i64 %.942 to i32
  %trunc32.15 = trunc i64 %imad_add.15 to i32
  store i32 %trunc32.15, ptr %R8, align 4
  %.946 = load i32, ptr %R3, align 4
  %.949 = load i32, ptr %R8, align 4
  %imad_mul.16 = mul i32 0, 0
  %imad_add.16 = add i32 %imad_mul.16, %.949
  br label %.L_x_14

.L_x_14:                                          ; preds = %.L_x_14, %.L_x_9_split_0x09d0
  %R11.4 = phi i32 [ %.946, %.L_x_9_split_0x09d0 ], [ %add.31, %.L_x_14 ]
  %R10.5 = phi i32 [ %imad_add.16, %.L_x_9_split_0x09d0 ], [ %.981, %.L_x_14 ]
  %R9.0 = phi i32 [ %trunc32.14, %.L_x_9_split_0x09d0 ], [ %add.27, %.L_x_14 ]
  %R4.0 = phi i32 [ %.92, %.L_x_9_split_0x09d0 ], [ %.973, %.L_x_14 ]
  %R2.4 = phi i32 [ %trunc32.13, %.L_x_9_split_0x09d0 ], [ %.1000, %.L_x_14 ]
  store i32 %R11.4, ptr %R3, align 4
  store i32 %R10.5, ptr %R8, align 4
  %zext.114 = zext i32 %R2.4 to i64
  %.960 = load i32, ptr %R3, align 4
  %zext.115 = zext i32 %.960 to i64
  %shl.57 = shl i64 %zext.115, 32
  %or.57 = or i64 %shl.57, %zext.114
  %inttoptr_bytes.57 = inttoptr i64 %or.57 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.961 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.962 = bitcast ptr %R3 to ptr
  store float %.961, ptr %.962, align 4
  %.965 = load i32, ptr %R8, align 4
  %zext.116 = zext i32 %.965 to i64
  %zext.117 = zext i32 %R9.0 to i64
  %shl.58 = shl i64 %zext.117, 32
  %or.58 = or i64 %shl.58, %zext.116
  %inttoptr_bytes.58 = inttoptr i64 %or.58 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.967 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.968 = bitcast ptr %R8 to ptr
  store float %.967, ptr %.968, align 4
  %.972 = add i32 %R4.0, -1
  %.973 = add i32 %.972, 0
  %.977 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R10.5, i32 4)
  %.978 = extractvalue { i32, i1 } %.977, 0
  %.979 = extractvalue { i32, i1 } %.977, 1
  %.980 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.978, i32 0)
  %.981 = extractvalue { i32, i1 } %.980, 0
  %.982 = extractvalue { i32, i1 } %.980, 1
  %.983 = or i1 %.979, %.982
  %cmp.11 = icmp ne i32 %.973, 0
  %.991 = and i1 %cmp.11, true
  %.996 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R2.4, i32 4)
  %.997 = extractvalue { i32, i1 } %.996, 0
  %.998 = extractvalue { i32, i1 } %.996, 1
  %.999 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.997, i32 0)
  %.1000 = extractvalue { i32, i1 } %.999, 0
  %.1001 = extractvalue { i32, i1 } %.999, 1
  %.1002 = or i1 %.998, %.1001
  %.1008 = xor i1 true, true
  %.1009 = zext i1 %.983 to i32
  %.1010 = zext i1 %.1008 to i32
  %add.24 = add i32 0, %R9.0
  %add.25 = add i32 %add.24, 0
  %add.26 = add i32 %add.25, %.1009
  %add.27 = add i32 %add.26, %.1010
  %.1015 = xor i1 true, true
  %.1016 = zext i1 %.1002 to i32
  %.1017 = zext i1 %.1015 to i32
  %add.28 = add i32 0, %R11.4
  %add.29 = add i32 %add.28, 0
  %add.30 = add i32 %add.29, %.1016
  %add.31 = add i32 %add.30, %.1017
  %.1020 = load float, ptr %R3, align 4
  %.1021 = load float, ptr %R8, align 4
  %.1022 = load float, ptr %R6, align 4
  %fmul.28 = fmul float %.1020, %.1021
  %fadd.28 = fadd float %fmul.28, %.1022
  %.1023 = bitcast ptr %R6 to ptr
  store float %fadd.28, ptr %.1023, align 4
  %.1027 = icmp eq i1 %.991, true
  br i1 %.1027, label %.L_x_14, label %.L_x_8.loopexit

.L_x_8.loopexit:                                  ; preds = %.L_x_14
  br label %.L_x_8

.L_x_8:                                           ; preds = %.L_x_8.loopexit, %.L_x_9, %.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x00a0
  %imad_mul.17 = mul i32 %imad_add.1, %Arg_6
  %imad_add.17 = add i32 %imad_mul.17, %imad_add
  %imad_ext1.7 = zext i32 %imad_add.17 to i64
  %imad_ext2.7 = zext i32 4 to i64
  %imad_mul.18 = mul i64 %imad_ext1.7, %imad_ext2.7
  %.1036 = ptrtoint ptr %Arg_3 to i64
  %imad_add.18 = add i64 %imad_mul.18, %.1036
  %.1037 = and i64 %imad_add.18, -4294967296
  %.1038 = lshr i64 %.1037, 32
  %trunc32.16 = trunc i64 %.1038 to i32
  %trunc32.17 = trunc i64 %imad_add.18 to i32
  store i32 %trunc32.16, ptr %R3, align 4
  %.1042 = load float, ptr %R6, align 4
  %zext.118 = zext i32 %trunc32.17 to i64
  %.1044 = load i32, ptr %R3, align 4
  %zext.119 = zext i32 %.1044 to i64
  %shl.59 = shl i64 %zext.119, 32
  %or.59 = or i64 %shl.59, %zext.118
  %inttoptr_bytes.59 = inttoptr i64 %or.59 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.1042, ptr addrspace(1) %ptr_cast_for_access.59, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z18linear_proj_kernelPKfS0_S0_Pfiii, %.L_x_8
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
