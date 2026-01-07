; ModuleID = '/app/launch/../output/3_llvm_ir/test_raw.ll'
source_filename = "/app/launch/../output/3_llvm_ir/test_raw.ll"
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

define ptx_kernel void @_Z15fc_layer_simplePfS_S_S_ii(ptr %Arg_0, ptr %Arg_1, ptr %Arg_2, ptr %Arg_3, i32 %Arg_4, i32 %Arg_5) {
Entry_.text._Z15fc_layer_simplePfS_S_S_ii:
  %R7 = alloca i32, align 4
  %RZ = alloca i32, align 4
  %R2 = alloca i32, align 4
  %R5 = alloca i32, align 4
  %R8 = alloca i32, align 4
  %R9 = alloca i32, align 4
  %R11 = alloca i32, align 4
  %R10 = alloca i32, align 4
  %R13 = alloca i32, align 4
  %R12 = alloca i32, align 4
  %R15 = alloca i32, align 4
  %R14 = alloca i32, align 4
  %R17 = alloca i32, align 4
  %R16 = alloca i32, align 4
  %R19 = alloca i32, align 4
  %R18 = alloca i32, align 4
  %R21 = alloca i32, align 4
  %R20 = alloca i32, align 4
  %R23 = alloca i32, align 4
  %R22 = alloca i32, align 4
  %R25 = alloca i32, align 4
  %R24 = alloca i32, align 4
  %R27 = alloca i32, align 4
  %R26 = alloca i32, align 4
  %R29 = alloca i32, align 4
  %R28 = alloca i32, align 4
  %R31 = alloca i32, align 4
  %R30 = alloca i32, align 4
  %R33 = alloca i32, align 4
  %R32 = alloca i32, align 4
  %R35 = alloca i32, align 4
  %R34 = alloca i32, align 4
  %R37 = alloca i32, align 4
  %R36 = alloca i32, align 4
  %R39 = alloca i32, align 4
  %R38 = alloca i32, align 4
  store i32 0, ptr %RZ, align 4
  %nvvm_ctaid_x = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %add = add i32 %mul, %nvvm_threadidx_x
  %cmp = icmp sge i32 %add, %Arg_5
  %.28 = and i1 %cmp, true
  %.33 = icmp eq i1 %.28, true
  br i1 %.33, label %ExitFunction, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060: ; preds = %Entry_.text._Z15fc_layer_simplePfS_S_S_ii
  %mul.1 = mul i32 0, 0
  %add.1 = add i32 %mul.1, 0
  store i32 %add.1, ptr %R7, align 4
  %cmp.1 = icmp sge i32 %Arg_4, 2
  %.46 = and i1 %cmp.1, true
  %.51 = icmp ne i1 %.46, true
  br i1 %.51, label %.L_x_0, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060
  %.55 = add i32 %Arg_4, -2
  %.56 = add i32 %.55, 0
  store i32 %.56, ptr %R2, align 4
  %mul.2 = mul i32 0, 0
  %add.2 = add i32 %mul.2, 0
  store i32 %add.2, ptr %R5, align 4
  %.62 = add i32 %Arg_4, -1
  %.63 = add i32 %.62, 0
  %.66 = load i32, ptr %R2, align 4
  %cmp.2 = icmp sge i32 %.66, 3
  %.70 = and i1 %cmp.2, true
  %.74 = load float, ptr %RZ, align 4
  %.75 = bitcast ptr %R7 to ptr
  store float %.74, ptr %.75, align 4
  %.80 = and i32 %.63, 3
  %.84 = icmp ne i1 %.70, true
  br i1 %.84, label %.L_x_1, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0
  %.88 = sub i32 0, %.80
  %.89 = add i32 %.88, %Arg_4
  %.90 = add i32 %.89, 0
  %mul.3 = mul i32 %add, %Arg_4
  %add.3 = add i32 %mul.3, 0
  store i32 %add.3, ptr %R2, align 4
  %.98 = ptrtoint ptr %Arg_0 to i64
  %.99 = and i64 %.98, -4294967296
  %.100 = lshr i64 %.99, 32
  %trunc32 = trunc i64 %.100 to i32
  %trunc32.1 = trunc i64 %.98 to i32
  %cmp.3 = icmp sgt i32 %.90, 1
  %.108 = and i1 %cmp.3, true
  %mul.4 = mul i32 0, 0
  %add.4 = add i32 %mul.4, 0
  store i32 %add.4, ptr %R5, align 4
  %.114 = load float, ptr %RZ, align 4
  %.115 = bitcast ptr %R7 to ptr
  store float %.114, ptr %.115, align 4
  %.118 = load i32, ptr %R2, align 4
  %zext = zext i32 %.118 to i64
  %zext.1 = zext i32 4 to i64
  %mul.5 = mul i64 %zext, %zext.1
  %.120 = ptrtoint ptr %Arg_1 to i64
  %add.5 = add i64 %mul.5, %.120
  %.121 = and i64 %add.5, -4294967296
  %.122 = lshr i64 %.121, 32
  %trunc32.2 = trunc i64 %.122 to i32
  %trunc32.3 = trunc i64 %add.5 to i32
  store i32 %trunc32.3, ptr %R2, align 4
  %.127 = icmp ne i1 %.108, true
  br i1 %.127, label %.L_x_2.preheader, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110
  %.131 = add i32 %.90, -1
  %.132 = add i32 %.131, 0
  store i32 %.132, ptr %R8, align 4
  %.138 = load i32, ptr %R8, align 4
  %cmp.4 = icmp sgt i32 %.138, 12
  %.142 = and i1 %cmp.4, true
  %.147 = icmp ne i1 %.142, true
  br i1 %.147, label %.L_x_3, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0
  br label %.L_x_4

.L_x_4:                                           ; preds = %.L_x_4, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0
  %UR4.2 = phi i32 [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %.357, %.L_x_4 ]
  %R6.2 = phi i32 [ %.90, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %.349, %.L_x_4 ]
  %UR5.2 = phi i32 [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %add.9, %.L_x_4 ]
  %R3.2 = phi i32 [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %add.13, %.L_x_4 ]
  %.155 = load i32, ptr %R2, align 4
  %zext.2 = zext i32 %.155 to i64
  %zext.3 = zext i32 %R3.2 to i64
  %shl = shl i64 %zext.3, 32
  %or = or i64 %shl, %zext.2
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.157 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.158 = bitcast ptr %R8 to ptr
  store float %.157, ptr %.158, align 4
  %zext.4 = zext i32 %UR4.2 to i64
  %zext.5 = zext i32 %UR5.2 to i64
  %shl.1 = shl i64 %zext.5, 32
  %or.1 = or i64 %shl.1, %zext.4
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.163 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.164 = bitcast ptr %R9 to ptr
  store float %.163, ptr %.164, align 4
  %.167 = load i32, ptr %R2, align 4
  %zext.6 = zext i32 %.167 to i64
  %zext.7 = zext i32 %R3.2 to i64
  %shl.2 = shl i64 %zext.7, 32
  %or.2 = or i64 %shl.2, %zext.6
  %ptr_plus_imm = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.169 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.170 = bitcast ptr %R11 to ptr
  store float %.169, ptr %.170, align 4
  %zext.8 = zext i32 %UR4.2 to i64
  %zext.9 = zext i32 %UR5.2 to i64
  %shl.3 = shl i64 %zext.9, 32
  %or.3 = or i64 %shl.3, %zext.8
  %ptr_plus_imm.1 = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.175 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.176 = bitcast ptr %R10 to ptr
  store float %.175, ptr %.176, align 4
  %.179 = load i32, ptr %R2, align 4
  %zext.10 = zext i32 %.179 to i64
  %zext.11 = zext i32 %R3.2 to i64
  %shl.4 = shl i64 %zext.11, 32
  %or.4 = or i64 %shl.4, %zext.10
  %ptr_plus_imm.2 = add i64 %or.4, 8
  %inttoptr_bytes.4 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.181 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.182 = bitcast ptr %R13 to ptr
  store float %.181, ptr %.182, align 4
  %zext.12 = zext i32 %UR4.2 to i64
  %zext.13 = zext i32 %UR5.2 to i64
  %shl.5 = shl i64 %zext.13, 32
  %or.5 = or i64 %shl.5, %zext.12
  %ptr_plus_imm.3 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.187 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.188 = bitcast ptr %R12 to ptr
  store float %.187, ptr %.188, align 4
  %.191 = load i32, ptr %R2, align 4
  %zext.14 = zext i32 %.191 to i64
  %zext.15 = zext i32 %R3.2 to i64
  %shl.6 = shl i64 %zext.15, 32
  %or.6 = or i64 %shl.6, %zext.14
  %ptr_plus_imm.4 = add i64 %or.6, 12
  %inttoptr_bytes.6 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.193 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.194 = bitcast ptr %R15 to ptr
  store float %.193, ptr %.194, align 4
  %zext.16 = zext i32 %UR4.2 to i64
  %zext.17 = zext i32 %UR5.2 to i64
  %shl.7 = shl i64 %zext.17, 32
  %or.7 = or i64 %shl.7, %zext.16
  %ptr_plus_imm.5 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.199 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.200 = bitcast ptr %R14 to ptr
  store float %.199, ptr %.200, align 4
  %.203 = load i32, ptr %R2, align 4
  %zext.18 = zext i32 %.203 to i64
  %zext.19 = zext i32 %R3.2 to i64
  %shl.8 = shl i64 %zext.19, 32
  %or.8 = or i64 %shl.8, %zext.18
  %ptr_plus_imm.6 = add i64 %or.8, 16
  %inttoptr_bytes.8 = inttoptr i64 %ptr_plus_imm.6 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.205 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.206 = bitcast ptr %R17 to ptr
  store float %.205, ptr %.206, align 4
  %zext.20 = zext i32 %UR4.2 to i64
  %zext.21 = zext i32 %UR5.2 to i64
  %shl.9 = shl i64 %zext.21, 32
  %or.9 = or i64 %shl.9, %zext.20
  %ptr_plus_imm.7 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm.7 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.211 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.212 = bitcast ptr %R16 to ptr
  store float %.211, ptr %.212, align 4
  %.215 = load i32, ptr %R2, align 4
  %zext.22 = zext i32 %.215 to i64
  %zext.23 = zext i32 %R3.2 to i64
  %shl.10 = shl i64 %zext.23, 32
  %or.10 = or i64 %shl.10, %zext.22
  %ptr_plus_imm.8 = add i64 %or.10, 20
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.8 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.217 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.218 = bitcast ptr %R19 to ptr
  store float %.217, ptr %.218, align 4
  %zext.24 = zext i32 %UR4.2 to i64
  %zext.25 = zext i32 %UR5.2 to i64
  %shl.11 = shl i64 %zext.25, 32
  %or.11 = or i64 %shl.11, %zext.24
  %ptr_plus_imm.9 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.9 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.223 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.224 = bitcast ptr %R18 to ptr
  store float %.223, ptr %.224, align 4
  %.227 = load i32, ptr %R2, align 4
  %zext.26 = zext i32 %.227 to i64
  %zext.27 = zext i32 %R3.2 to i64
  %shl.12 = shl i64 %zext.27, 32
  %or.12 = or i64 %shl.12, %zext.26
  %ptr_plus_imm.10 = add i64 %or.12, 24
  %inttoptr_bytes.12 = inttoptr i64 %ptr_plus_imm.10 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.229 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.230 = bitcast ptr %R21 to ptr
  store float %.229, ptr %.230, align 4
  %zext.28 = zext i32 %UR4.2 to i64
  %zext.29 = zext i32 %UR5.2 to i64
  %shl.13 = shl i64 %zext.29, 32
  %or.13 = or i64 %shl.13, %zext.28
  %ptr_plus_imm.11 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %ptr_plus_imm.11 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.235 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.236 = bitcast ptr %R20 to ptr
  store float %.235, ptr %.236, align 4
  %.239 = load i32, ptr %R2, align 4
  %zext.30 = zext i32 %.239 to i64
  %zext.31 = zext i32 %R3.2 to i64
  %shl.14 = shl i64 %zext.31, 32
  %or.14 = or i64 %shl.14, %zext.30
  %ptr_plus_imm.12 = add i64 %or.14, 28
  %inttoptr_bytes.14 = inttoptr i64 %ptr_plus_imm.12 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.241 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.242 = bitcast ptr %R23 to ptr
  store float %.241, ptr %.242, align 4
  %zext.32 = zext i32 %UR4.2 to i64
  %zext.33 = zext i32 %UR5.2 to i64
  %shl.15 = shl i64 %zext.33, 32
  %or.15 = or i64 %shl.15, %zext.32
  %ptr_plus_imm.13 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %ptr_plus_imm.13 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.247 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.248 = bitcast ptr %R22 to ptr
  store float %.247, ptr %.248, align 4
  %.251 = load i32, ptr %R2, align 4
  %zext.34 = zext i32 %.251 to i64
  %zext.35 = zext i32 %R3.2 to i64
  %shl.16 = shl i64 %zext.35, 32
  %or.16 = or i64 %shl.16, %zext.34
  %ptr_plus_imm.14 = add i64 %or.16, 32
  %inttoptr_bytes.16 = inttoptr i64 %ptr_plus_imm.14 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.253 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.254 = bitcast ptr %R25 to ptr
  store float %.253, ptr %.254, align 4
  %zext.36 = zext i32 %UR4.2 to i64
  %zext.37 = zext i32 %UR5.2 to i64
  %shl.17 = shl i64 %zext.37, 32
  %or.17 = or i64 %shl.17, %zext.36
  %ptr_plus_imm.15 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %ptr_plus_imm.15 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.259 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.260 = bitcast ptr %R24 to ptr
  store float %.259, ptr %.260, align 4
  %.263 = load i32, ptr %R2, align 4
  %zext.38 = zext i32 %.263 to i64
  %zext.39 = zext i32 %R3.2 to i64
  %shl.18 = shl i64 %zext.39, 32
  %or.18 = or i64 %shl.18, %zext.38
  %ptr_plus_imm.16 = add i64 %or.18, 36
  %inttoptr_bytes.18 = inttoptr i64 %ptr_plus_imm.16 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.265 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.266 = bitcast ptr %R27 to ptr
  store float %.265, ptr %.266, align 4
  %zext.40 = zext i32 %UR4.2 to i64
  %zext.41 = zext i32 %UR5.2 to i64
  %shl.19 = shl i64 %zext.41, 32
  %or.19 = or i64 %shl.19, %zext.40
  %ptr_plus_imm.17 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %ptr_plus_imm.17 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.271 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.272 = bitcast ptr %R26 to ptr
  store float %.271, ptr %.272, align 4
  %.275 = load i32, ptr %R2, align 4
  %zext.42 = zext i32 %.275 to i64
  %zext.43 = zext i32 %R3.2 to i64
  %shl.20 = shl i64 %zext.43, 32
  %or.20 = or i64 %shl.20, %zext.42
  %ptr_plus_imm.18 = add i64 %or.20, 40
  %inttoptr_bytes.20 = inttoptr i64 %ptr_plus_imm.18 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.277 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.278 = bitcast ptr %R29 to ptr
  store float %.277, ptr %.278, align 4
  %zext.44 = zext i32 %UR4.2 to i64
  %zext.45 = zext i32 %UR5.2 to i64
  %shl.21 = shl i64 %zext.45, 32
  %or.21 = or i64 %shl.21, %zext.44
  %ptr_plus_imm.19 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %ptr_plus_imm.19 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.283 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.284 = bitcast ptr %R28 to ptr
  store float %.283, ptr %.284, align 4
  %.287 = load i32, ptr %R2, align 4
  %zext.46 = zext i32 %.287 to i64
  %zext.47 = zext i32 %R3.2 to i64
  %shl.22 = shl i64 %zext.47, 32
  %or.22 = or i64 %shl.22, %zext.46
  %ptr_plus_imm.20 = add i64 %or.22, 44
  %inttoptr_bytes.22 = inttoptr i64 %ptr_plus_imm.20 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.289 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.290 = bitcast ptr %R31 to ptr
  store float %.289, ptr %.290, align 4
  %zext.48 = zext i32 %UR4.2 to i64
  %zext.49 = zext i32 %UR5.2 to i64
  %shl.23 = shl i64 %zext.49, 32
  %or.23 = or i64 %shl.23, %zext.48
  %ptr_plus_imm.21 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %ptr_plus_imm.21 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.295 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.296 = bitcast ptr %R30 to ptr
  store float %.295, ptr %.296, align 4
  %.299 = load i32, ptr %R2, align 4
  %zext.50 = zext i32 %.299 to i64
  %zext.51 = zext i32 %R3.2 to i64
  %shl.24 = shl i64 %zext.51, 32
  %or.24 = or i64 %shl.24, %zext.50
  %ptr_plus_imm.22 = add i64 %or.24, 48
  %inttoptr_bytes.24 = inttoptr i64 %ptr_plus_imm.22 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.301 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.302 = bitcast ptr %R33 to ptr
  store float %.301, ptr %.302, align 4
  %zext.52 = zext i32 %UR4.2 to i64
  %zext.53 = zext i32 %UR5.2 to i64
  %shl.25 = shl i64 %zext.53, 32
  %or.25 = or i64 %shl.25, %zext.52
  %ptr_plus_imm.23 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %ptr_plus_imm.23 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.307 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.308 = bitcast ptr %R32 to ptr
  store float %.307, ptr %.308, align 4
  %.311 = load i32, ptr %R2, align 4
  %zext.54 = zext i32 %.311 to i64
  %zext.55 = zext i32 %R3.2 to i64
  %shl.26 = shl i64 %zext.55, 32
  %or.26 = or i64 %shl.26, %zext.54
  %ptr_plus_imm.24 = add i64 %or.26, 52
  %inttoptr_bytes.26 = inttoptr i64 %ptr_plus_imm.24 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.313 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.314 = bitcast ptr %R35 to ptr
  store float %.313, ptr %.314, align 4
  %zext.56 = zext i32 %UR4.2 to i64
  %zext.57 = zext i32 %UR5.2 to i64
  %shl.27 = shl i64 %zext.57, 32
  %or.27 = or i64 %shl.27, %zext.56
  %ptr_plus_imm.25 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %ptr_plus_imm.25 to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.319 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.320 = bitcast ptr %R34 to ptr
  store float %.319, ptr %.320, align 4
  %.323 = load i32, ptr %R2, align 4
  %zext.58 = zext i32 %.323 to i64
  %zext.59 = zext i32 %R3.2 to i64
  %shl.28 = shl i64 %zext.59, 32
  %or.28 = or i64 %shl.28, %zext.58
  %ptr_plus_imm.26 = add i64 %or.28, 56
  %inttoptr_bytes.28 = inttoptr i64 %ptr_plus_imm.26 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.325 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.326 = bitcast ptr %R37 to ptr
  store float %.325, ptr %.326, align 4
  %zext.60 = zext i32 %UR4.2 to i64
  %zext.61 = zext i32 %UR5.2 to i64
  %shl.29 = shl i64 %zext.61, 32
  %or.29 = or i64 %shl.29, %zext.60
  %ptr_plus_imm.27 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %ptr_plus_imm.27 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.331 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.332 = bitcast ptr %R36 to ptr
  store float %.331, ptr %.332, align 4
  %.335 = load i32, ptr %R2, align 4
  %zext.62 = zext i32 %.335 to i64
  %zext.63 = zext i32 %R3.2 to i64
  %shl.30 = shl i64 %zext.63, 32
  %or.30 = or i64 %shl.30, %zext.62
  %ptr_plus_imm.28 = add i64 %or.30, 60
  %inttoptr_bytes.30 = inttoptr i64 %ptr_plus_imm.28 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.337 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.338 = bitcast ptr %R39 to ptr
  store float %.337, ptr %.338, align 4
  %zext.64 = zext i32 %UR4.2 to i64
  %zext.65 = zext i32 %UR5.2 to i64
  %shl.31 = shl i64 %zext.65, 32
  %or.31 = or i64 %shl.31, %zext.64
  %ptr_plus_imm.29 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %ptr_plus_imm.29 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.343 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.344 = bitcast ptr %R38 to ptr
  store float %.343, ptr %.344, align 4
  %.348 = add i32 %R6.2, -16
  %.349 = add i32 %.348, 0
  %.353 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.354 = extractvalue { i32, i1 } %.353, 0
  %.355 = extractvalue { i32, i1 } %.353, 1
  %.356 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.354, i32 0)
  %.357 = extractvalue { i32, i1 } %.356, 0
  %.358 = extractvalue { i32, i1 } %.356, 1
  %.359 = or i1 %.355, %.358
  %.363 = load i32, ptr %R5, align 4
  %.364 = add i32 %.363, 16
  %.365 = add i32 %.364, 0
  store i32 %.365, ptr %R5, align 4
  %cmp.5 = icmp sgt i32 %.349, 13
  %.372 = and i1 %cmp.5, true
  %.378 = xor i1 true, true
  %.379 = zext i1 %.359 to i32
  %.380 = zext i1 %.378 to i32
  %add.6 = add i32 0, %UR5.2
  %add.7 = add i32 %add.6, 0
  %add.8 = add i32 %add.7, %.379
  %add.9 = add i32 %add.8, %.380
  %.383 = load i32, ptr %R2, align 4
  %.384 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.383, i32 64)
  %.385 = extractvalue { i32, i1 } %.384, 0
  %.386 = extractvalue { i32, i1 } %.384, 1
  %.387 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.385, i32 0)
  %.388 = extractvalue { i32, i1 } %.387, 0
  %.389 = extractvalue { i32, i1 } %.387, 1
  %.390 = or i1 %.386, %.389
  store i32 %.388, ptr %R2, align 4
  %.396 = xor i1 true, true
  %.397 = zext i1 %.390 to i32
  %.398 = zext i1 %.396 to i32
  %add.10 = add i32 0, %R3.2
  %add.11 = add i32 %add.10, 0
  %add.12 = add i32 %add.11, %.397
  %add.13 = add i32 %add.12, %.398
  %.401 = load float, ptr %R8, align 4
  %.402 = load float, ptr %R9, align 4
  %.403 = load float, ptr %R7, align 4
  %fmul = fmul float %.401, %.402
  %fadd = fadd float %fmul, %.403
  %.404 = bitcast ptr %R8 to ptr
  store float %fadd, ptr %.404, align 4
  %.407 = load float, ptr %R11, align 4
  %.408 = load float, ptr %R10, align 4
  %.409 = load float, ptr %R8, align 4
  %fmul.1 = fmul float %.407, %.408
  %fadd.1 = fadd float %fmul.1, %.409
  %.410 = bitcast ptr %R8 to ptr
  store float %fadd.1, ptr %.410, align 4
  %.413 = load float, ptr %R13, align 4
  %.414 = load float, ptr %R12, align 4
  %.415 = load float, ptr %R8, align 4
  %fmul.2 = fmul float %.413, %.414
  %fadd.2 = fadd float %fmul.2, %.415
  %.416 = bitcast ptr %R8 to ptr
  store float %fadd.2, ptr %.416, align 4
  %.419 = load float, ptr %R15, align 4
  %.420 = load float, ptr %R14, align 4
  %.421 = load float, ptr %R8, align 4
  %fmul.3 = fmul float %.419, %.420
  %fadd.3 = fadd float %fmul.3, %.421
  %.422 = bitcast ptr %R8 to ptr
  store float %fadd.3, ptr %.422, align 4
  %.425 = load float, ptr %R17, align 4
  %.426 = load float, ptr %R16, align 4
  %.427 = load float, ptr %R8, align 4
  %fmul.4 = fmul float %.425, %.426
  %fadd.4 = fadd float %fmul.4, %.427
  %.428 = bitcast ptr %R8 to ptr
  store float %fadd.4, ptr %.428, align 4
  %.431 = load float, ptr %R19, align 4
  %.432 = load float, ptr %R18, align 4
  %.433 = load float, ptr %R8, align 4
  %fmul.5 = fmul float %.431, %.432
  %fadd.5 = fadd float %fmul.5, %.433
  %.434 = bitcast ptr %R8 to ptr
  store float %fadd.5, ptr %.434, align 4
  %.437 = load float, ptr %R21, align 4
  %.438 = load float, ptr %R20, align 4
  %.439 = load float, ptr %R8, align 4
  %fmul.6 = fmul float %.437, %.438
  %fadd.6 = fadd float %fmul.6, %.439
  %.440 = bitcast ptr %R8 to ptr
  store float %fadd.6, ptr %.440, align 4
  %.443 = load float, ptr %R23, align 4
  %.444 = load float, ptr %R22, align 4
  %.445 = load float, ptr %R8, align 4
  %fmul.7 = fmul float %.443, %.444
  %fadd.7 = fadd float %fmul.7, %.445
  %.446 = bitcast ptr %R8 to ptr
  store float %fadd.7, ptr %.446, align 4
  %.449 = load float, ptr %R25, align 4
  %.450 = load float, ptr %R24, align 4
  %.451 = load float, ptr %R8, align 4
  %fmul.8 = fmul float %.449, %.450
  %fadd.8 = fadd float %fmul.8, %.451
  %.452 = bitcast ptr %R8 to ptr
  store float %fadd.8, ptr %.452, align 4
  %.455 = load float, ptr %R27, align 4
  %.456 = load float, ptr %R26, align 4
  %.457 = load float, ptr %R8, align 4
  %fmul.9 = fmul float %.455, %.456
  %fadd.9 = fadd float %fmul.9, %.457
  %.458 = bitcast ptr %R8 to ptr
  store float %fadd.9, ptr %.458, align 4
  %.461 = load float, ptr %R29, align 4
  %.462 = load float, ptr %R28, align 4
  %.463 = load float, ptr %R8, align 4
  %fmul.10 = fmul float %.461, %.462
  %fadd.10 = fadd float %fmul.10, %.463
  %.464 = bitcast ptr %R8 to ptr
  store float %fadd.10, ptr %.464, align 4
  %.467 = load float, ptr %R31, align 4
  %.468 = load float, ptr %R30, align 4
  %.469 = load float, ptr %R8, align 4
  %fmul.11 = fmul float %.467, %.468
  %fadd.11 = fadd float %fmul.11, %.469
  %.470 = bitcast ptr %R8 to ptr
  store float %fadd.11, ptr %.470, align 4
  %.473 = load float, ptr %R33, align 4
  %.474 = load float, ptr %R32, align 4
  %.475 = load float, ptr %R8, align 4
  %fmul.12 = fmul float %.473, %.474
  %fadd.12 = fadd float %fmul.12, %.475
  %.476 = bitcast ptr %R8 to ptr
  store float %fadd.12, ptr %.476, align 4
  %.479 = load float, ptr %R35, align 4
  %.480 = load float, ptr %R34, align 4
  %.481 = load float, ptr %R8, align 4
  %fmul.13 = fmul float %.479, %.480
  %fadd.13 = fadd float %fmul.13, %.481
  %.482 = bitcast ptr %R8 to ptr
  store float %fadd.13, ptr %.482, align 4
  %.485 = load float, ptr %R37, align 4
  %.486 = load float, ptr %R36, align 4
  %.487 = load float, ptr %R8, align 4
  %fmul.14 = fmul float %.485, %.486
  %fadd.14 = fadd float %fmul.14, %.487
  %.488 = bitcast ptr %R8 to ptr
  store float %fadd.14, ptr %.488, align 4
  %.491 = load float, ptr %R39, align 4
  %.492 = load float, ptr %R38, align 4
  %.493 = load float, ptr %R8, align 4
  %fmul.15 = fmul float %.491, %.492
  %fadd.15 = fadd float %fmul.15, %.493
  %.494 = bitcast ptr %R7 to ptr
  store float %fadd.15, ptr %.494, align 4
  %.498 = icmp eq i1 %.372, true
  br i1 %.498, label %.L_x_4, label %.L_x_3.loopexit

.L_x_3.loopexit:                                  ; preds = %.L_x_4
  br label %.L_x_3

.L_x_3:                                           ; preds = %.L_x_3.loopexit, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0
  %UR4.1 = phi i32 [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %.357, %.L_x_3.loopexit ]
  %R6.1 = phi i32 [ %.90, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %.349, %.L_x_3.loopexit ]
  %UR5.1 = phi i32 [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %add.9, %.L_x_3.loopexit ]
  %R3.1 = phi i32 [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %add.13, %.L_x_3.loopexit ]
  %.502 = add i32 %R6.1, -1
  %.503 = add i32 %.502, 0
  store i32 %.503, ptr %R8, align 4
  %.506 = load i32, ptr %R8, align 4
  %cmp.6 = icmp sgt i32 %.506, 4
  %.510 = and i1 %cmp.6, true
  %.515 = icmp ne i1 %.510, true
  br i1 %.515, label %.L_x_5, label %.L_x_3_split_0x05a0

.L_x_3_split_0x05a0:                              ; preds = %.L_x_3
  %.518 = load i32, ptr %R2, align 4
  %zext.66 = zext i32 %.518 to i64
  %zext.67 = zext i32 %R3.1 to i64
  %shl.32 = shl i64 %zext.67, 32
  %or.32 = or i64 %shl.32, %zext.66
  %inttoptr_bytes.32 = inttoptr i64 %or.32 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.520 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.521 = bitcast ptr %R8 to ptr
  store float %.520, ptr %.521, align 4
  %zext.68 = zext i32 %UR4.1 to i64
  %zext.69 = zext i32 %UR5.1 to i64
  %shl.33 = shl i64 %zext.69, 32
  %or.33 = or i64 %shl.33, %zext.68
  %inttoptr_bytes.33 = inttoptr i64 %or.33 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.526 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.527 = bitcast ptr %R9 to ptr
  store float %.526, ptr %.527, align 4
  %.530 = load i32, ptr %R2, align 4
  %zext.70 = zext i32 %.530 to i64
  %zext.71 = zext i32 %R3.1 to i64
  %shl.34 = shl i64 %zext.71, 32
  %or.34 = or i64 %shl.34, %zext.70
  %ptr_plus_imm.30 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.30 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.532 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.533 = bitcast ptr %R11 to ptr
  store float %.532, ptr %.533, align 4
  %zext.72 = zext i32 %UR4.1 to i64
  %zext.73 = zext i32 %UR5.1 to i64
  %shl.35 = shl i64 %zext.73, 32
  %or.35 = or i64 %shl.35, %zext.72
  %ptr_plus_imm.31 = add i64 %or.35, 4
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.31 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.538 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.539 = bitcast ptr %R10 to ptr
  store float %.538, ptr %.539, align 4
  %.542 = load i32, ptr %R2, align 4
  %zext.74 = zext i32 %.542 to i64
  %zext.75 = zext i32 %R3.1 to i64
  %shl.36 = shl i64 %zext.75, 32
  %or.36 = or i64 %shl.36, %zext.74
  %ptr_plus_imm.32 = add i64 %or.36, 8
  %inttoptr_bytes.36 = inttoptr i64 %ptr_plus_imm.32 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.544 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.545 = bitcast ptr %R13 to ptr
  store float %.544, ptr %.545, align 4
  %zext.76 = zext i32 %UR4.1 to i64
  %zext.77 = zext i32 %UR5.1 to i64
  %shl.37 = shl i64 %zext.77, 32
  %or.37 = or i64 %shl.37, %zext.76
  %ptr_plus_imm.33 = add i64 %or.37, 8
  %inttoptr_bytes.37 = inttoptr i64 %ptr_plus_imm.33 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.550 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.551 = bitcast ptr %R12 to ptr
  store float %.550, ptr %.551, align 4
  %.554 = load i32, ptr %R2, align 4
  %zext.78 = zext i32 %.554 to i64
  %zext.79 = zext i32 %R3.1 to i64
  %shl.38 = shl i64 %zext.79, 32
  %or.38 = or i64 %shl.38, %zext.78
  %ptr_plus_imm.34 = add i64 %or.38, 12
  %inttoptr_bytes.38 = inttoptr i64 %ptr_plus_imm.34 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.556 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.557 = bitcast ptr %R15 to ptr
  store float %.556, ptr %.557, align 4
  %zext.80 = zext i32 %UR4.1 to i64
  %zext.81 = zext i32 %UR5.1 to i64
  %shl.39 = shl i64 %zext.81, 32
  %or.39 = or i64 %shl.39, %zext.80
  %ptr_plus_imm.35 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %ptr_plus_imm.35 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.562 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.563 = bitcast ptr %R14 to ptr
  store float %.562, ptr %.563, align 4
  %.566 = load i32, ptr %R2, align 4
  %zext.82 = zext i32 %.566 to i64
  %zext.83 = zext i32 %R3.1 to i64
  %shl.40 = shl i64 %zext.83, 32
  %or.40 = or i64 %shl.40, %zext.82
  %ptr_plus_imm.36 = add i64 %or.40, 16
  %inttoptr_bytes.40 = inttoptr i64 %ptr_plus_imm.36 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.568 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.569 = bitcast ptr %R17 to ptr
  store float %.568, ptr %.569, align 4
  %zext.84 = zext i32 %UR4.1 to i64
  %zext.85 = zext i32 %UR5.1 to i64
  %shl.41 = shl i64 %zext.85, 32
  %or.41 = or i64 %shl.41, %zext.84
  %ptr_plus_imm.37 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %ptr_plus_imm.37 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.574 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.575 = bitcast ptr %R16 to ptr
  store float %.574, ptr %.575, align 4
  %.578 = load i32, ptr %R2, align 4
  %zext.86 = zext i32 %.578 to i64
  %zext.87 = zext i32 %R3.1 to i64
  %shl.42 = shl i64 %zext.87, 32
  %or.42 = or i64 %shl.42, %zext.86
  %ptr_plus_imm.38 = add i64 %or.42, 20
  %inttoptr_bytes.42 = inttoptr i64 %ptr_plus_imm.38 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.580 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.581 = bitcast ptr %R19 to ptr
  store float %.580, ptr %.581, align 4
  %zext.88 = zext i32 %UR4.1 to i64
  %zext.89 = zext i32 %UR5.1 to i64
  %shl.43 = shl i64 %zext.89, 32
  %or.43 = or i64 %shl.43, %zext.88
  %ptr_plus_imm.39 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %ptr_plus_imm.39 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.586 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.587 = bitcast ptr %R18 to ptr
  store float %.586, ptr %.587, align 4
  %.590 = load i32, ptr %R2, align 4
  %zext.90 = zext i32 %.590 to i64
  %zext.91 = zext i32 %R3.1 to i64
  %shl.44 = shl i64 %zext.91, 32
  %or.44 = or i64 %shl.44, %zext.90
  %ptr_plus_imm.40 = add i64 %or.44, 24
  %inttoptr_bytes.44 = inttoptr i64 %ptr_plus_imm.40 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.592 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.593 = bitcast ptr %R21 to ptr
  store float %.592, ptr %.593, align 4
  %zext.92 = zext i32 %UR4.1 to i64
  %zext.93 = zext i32 %UR5.1 to i64
  %shl.45 = shl i64 %zext.93, 32
  %or.45 = or i64 %shl.45, %zext.92
  %ptr_plus_imm.41 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %ptr_plus_imm.41 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.598 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.599 = bitcast ptr %R20 to ptr
  store float %.598, ptr %.599, align 4
  %.602 = load i32, ptr %R2, align 4
  %zext.94 = zext i32 %.602 to i64
  %zext.95 = zext i32 %R3.1 to i64
  %shl.46 = shl i64 %zext.95, 32
  %or.46 = or i64 %shl.46, %zext.94
  %ptr_plus_imm.42 = add i64 %or.46, 28
  %inttoptr_bytes.46 = inttoptr i64 %ptr_plus_imm.42 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.604 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.605 = bitcast ptr %R23 to ptr
  store float %.604, ptr %.605, align 4
  %zext.96 = zext i32 %UR4.1 to i64
  %zext.97 = zext i32 %UR5.1 to i64
  %shl.47 = shl i64 %zext.97, 32
  %or.47 = or i64 %shl.47, %zext.96
  %ptr_plus_imm.43 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %ptr_plus_imm.43 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.610 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.611 = bitcast ptr %R22 to ptr
  store float %.610, ptr %.611, align 4
  %.615 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.616 = extractvalue { i32, i1 } %.615, 0
  %.617 = extractvalue { i32, i1 } %.615, 1
  %.618 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.616, i32 0)
  %.619 = extractvalue { i32, i1 } %.618, 0
  %.620 = extractvalue { i32, i1 } %.618, 1
  %.621 = or i1 %.617, %.620
  %.629 = load i32, ptr %R5, align 4
  %.630 = add i32 %.629, 8
  %.631 = add i32 %.630, 0
  store i32 %.631, ptr %R5, align 4
  %.636 = xor i1 true, true
  %.637 = zext i1 %.621 to i32
  %.638 = zext i1 %.636 to i32
  %add.14 = add i32 0, %UR5.1
  %add.15 = add i32 %add.14, 0
  %add.16 = add i32 %add.15, %.637
  %add.17 = add i32 %add.16, %.638
  %.641 = load i32, ptr %R2, align 4
  %.642 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.641, i32 32)
  %.643 = extractvalue { i32, i1 } %.642, 0
  %.644 = extractvalue { i32, i1 } %.642, 1
  %.645 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.643, i32 0)
  %.646 = extractvalue { i32, i1 } %.645, 0
  %.647 = extractvalue { i32, i1 } %.645, 1
  %.648 = or i1 %.644, %.647
  store i32 %.646, ptr %R2, align 4
  %.653 = add i32 %R6.1, -8
  %.654 = add i32 %.653, 0
  %.659 = xor i1 true, true
  %.660 = zext i1 %.648 to i32
  %.661 = zext i1 %.659 to i32
  %add.18 = add i32 0, %R3.1
  %add.19 = add i32 %add.18, 0
  %add.20 = add i32 %add.19, %.660
  %add.21 = add i32 %add.20, %.661
  %.664 = load float, ptr %R8, align 4
  %.665 = load float, ptr %R9, align 4
  %.666 = load float, ptr %R7, align 4
  %fmul.16 = fmul float %.664, %.665
  %fadd.16 = fadd float %fmul.16, %.666
  %.667 = bitcast ptr %R8 to ptr
  store float %fadd.16, ptr %.667, align 4
  %.670 = load float, ptr %R11, align 4
  %.671 = load float, ptr %R10, align 4
  %.672 = load float, ptr %R8, align 4
  %fmul.17 = fmul float %.670, %.671
  %fadd.17 = fadd float %fmul.17, %.672
  %.673 = bitcast ptr %R8 to ptr
  store float %fadd.17, ptr %.673, align 4
  %.676 = load float, ptr %R13, align 4
  %.677 = load float, ptr %R12, align 4
  %.678 = load float, ptr %R8, align 4
  %fmul.18 = fmul float %.676, %.677
  %fadd.18 = fadd float %fmul.18, %.678
  %.679 = bitcast ptr %R8 to ptr
  store float %fadd.18, ptr %.679, align 4
  %.682 = load float, ptr %R15, align 4
  %.683 = load float, ptr %R14, align 4
  %.684 = load float, ptr %R8, align 4
  %fmul.19 = fmul float %.682, %.683
  %fadd.19 = fadd float %fmul.19, %.684
  %.685 = bitcast ptr %R8 to ptr
  store float %fadd.19, ptr %.685, align 4
  %.688 = load float, ptr %R17, align 4
  %.689 = load float, ptr %R16, align 4
  %.690 = load float, ptr %R8, align 4
  %fmul.20 = fmul float %.688, %.689
  %fadd.20 = fadd float %fmul.20, %.690
  %.691 = bitcast ptr %R8 to ptr
  store float %fadd.20, ptr %.691, align 4
  %.694 = load float, ptr %R19, align 4
  %.695 = load float, ptr %R18, align 4
  %.696 = load float, ptr %R8, align 4
  %fmul.21 = fmul float %.694, %.695
  %fadd.21 = fadd float %fmul.21, %.696
  %.697 = bitcast ptr %R8 to ptr
  store float %fadd.21, ptr %.697, align 4
  %.700 = load float, ptr %R21, align 4
  %.701 = load float, ptr %R20, align 4
  %.702 = load float, ptr %R8, align 4
  %fmul.22 = fmul float %.700, %.701
  %fadd.22 = fadd float %fmul.22, %.702
  %.703 = bitcast ptr %R8 to ptr
  store float %fadd.22, ptr %.703, align 4
  %.706 = load float, ptr %R23, align 4
  %.707 = load float, ptr %R22, align 4
  %.708 = load float, ptr %R8, align 4
  %fmul.23 = fmul float %.706, %.707
  %fadd.23 = fadd float %fmul.23, %.708
  %.709 = bitcast ptr %R7 to ptr
  store float %fadd.23, ptr %.709, align 4
  br label %.L_x_5

.L_x_5:                                           ; preds = %.L_x_3_split_0x05a0, %.L_x_3
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_3 ], [ %.619, %.L_x_3_split_0x05a0 ]
  %R6.3 = phi i32 [ %R6.1, %.L_x_3 ], [ %.654, %.L_x_3_split_0x05a0 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_3 ], [ %add.17, %.L_x_3_split_0x05a0 ]
  %R3.3 = phi i32 [ %R3.1, %.L_x_3 ], [ %add.21, %.L_x_3_split_0x05a0 ]
  %cmp.7 = icmp ne i32 %R6.3, 1
  %.717 = or i1 %cmp.7, %.108
  %.722 = icmp ne i1 %.717, true
  br i1 %.722, label %.L_x_1, label %.L_x_2.preheader

.L_x_2.preheader:                                 ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110, %.L_x_5
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_5 ], [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %R6.0.ph = phi i32 [ %R6.3, %.L_x_5 ], [ %.90, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_5 ], [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %R3.0.ph = phi i32 [ %R3.3, %.L_x_5 ], [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  br label %.L_x_2

.L_x_2:                                           ; preds = %.L_x_2.preheader, %.L_x_2
  %UR4.0 = phi i32 [ %.783, %.L_x_2 ], [ %UR4.0.ph, %.L_x_2.preheader ]
  %R6.0 = phi i32 [ %.775, %.L_x_2 ], [ %R6.0.ph, %.L_x_2.preheader ]
  %UR5.0 = phi i32 [ %add.25, %.L_x_2 ], [ %UR5.0.ph, %.L_x_2.preheader ]
  %R3.0 = phi i32 [ %.839, %.L_x_2 ], [ %R3.0.ph, %.L_x_2.preheader ]
  %.725 = load i32, ptr %R2, align 4
  %zext.98 = zext i32 %.725 to i64
  %zext.99 = zext i32 %R3.0 to i64
  %shl.48 = shl i64 %zext.99, 32
  %or.48 = or i64 %shl.48, %zext.98
  %inttoptr_bytes.48 = inttoptr i64 %or.48 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.727 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.728 = bitcast ptr %R8 to ptr
  store float %.727, ptr %.728, align 4
  %zext.100 = zext i32 %UR4.0 to i64
  %zext.101 = zext i32 %UR5.0 to i64
  %shl.49 = shl i64 %zext.101, 32
  %or.49 = or i64 %shl.49, %zext.100
  %inttoptr_bytes.49 = inttoptr i64 %or.49 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.733 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.734 = bitcast ptr %R9 to ptr
  store float %.733, ptr %.734, align 4
  %.737 = load i32, ptr %R2, align 4
  %zext.102 = zext i32 %.737 to i64
  %zext.103 = zext i32 %R3.0 to i64
  %shl.50 = shl i64 %zext.103, 32
  %or.50 = or i64 %shl.50, %zext.102
  %ptr_plus_imm.44 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %ptr_plus_imm.44 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.739 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.740 = bitcast ptr %R11 to ptr
  store float %.739, ptr %.740, align 4
  %zext.104 = zext i32 %UR4.0 to i64
  %zext.105 = zext i32 %UR5.0 to i64
  %shl.51 = shl i64 %zext.105, 32
  %or.51 = or i64 %shl.51, %zext.104
  %ptr_plus_imm.45 = add i64 %or.51, 4
  %inttoptr_bytes.51 = inttoptr i64 %ptr_plus_imm.45 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.745 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.746 = bitcast ptr %R10 to ptr
  store float %.745, ptr %.746, align 4
  %.749 = load i32, ptr %R2, align 4
  %zext.106 = zext i32 %.749 to i64
  %zext.107 = zext i32 %R3.0 to i64
  %shl.52 = shl i64 %zext.107, 32
  %or.52 = or i64 %shl.52, %zext.106
  %ptr_plus_imm.46 = add i64 %or.52, 8
  %inttoptr_bytes.52 = inttoptr i64 %ptr_plus_imm.46 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.751 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.752 = bitcast ptr %R13 to ptr
  store float %.751, ptr %.752, align 4
  %zext.108 = zext i32 %UR4.0 to i64
  %zext.109 = zext i32 %UR5.0 to i64
  %shl.53 = shl i64 %zext.109, 32
  %or.53 = or i64 %shl.53, %zext.108
  %ptr_plus_imm.47 = add i64 %or.53, 8
  %inttoptr_bytes.53 = inttoptr i64 %ptr_plus_imm.47 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.757 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.758 = bitcast ptr %R12 to ptr
  store float %.757, ptr %.758, align 4
  %.761 = load i32, ptr %R2, align 4
  %zext.110 = zext i32 %.761 to i64
  %zext.111 = zext i32 %R3.0 to i64
  %shl.54 = shl i64 %zext.111, 32
  %or.54 = or i64 %shl.54, %zext.110
  %ptr_plus_imm.48 = add i64 %or.54, 12
  %inttoptr_bytes.54 = inttoptr i64 %ptr_plus_imm.48 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.763 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.764 = bitcast ptr %R15 to ptr
  store float %.763, ptr %.764, align 4
  %zext.112 = zext i32 %UR4.0 to i64
  %zext.113 = zext i32 %UR5.0 to i64
  %shl.55 = shl i64 %zext.113, 32
  %or.55 = or i64 %shl.55, %zext.112
  %ptr_plus_imm.49 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %ptr_plus_imm.49 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.769 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.770 = bitcast ptr %R14 to ptr
  store float %.769, ptr %.770, align 4
  %.774 = add i32 %R6.0, -4
  %.775 = add i32 %.774, 0
  %.779 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.780 = extractvalue { i32, i1 } %.779, 0
  %.781 = extractvalue { i32, i1 } %.779, 1
  %.782 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.780, i32 0)
  %.783 = extractvalue { i32, i1 } %.782, 0
  %.784 = extractvalue { i32, i1 } %.782, 1
  %.785 = or i1 %.781, %.784
  %.789 = load i32, ptr %R5, align 4
  %.790 = add i32 %.789, 4
  %.791 = add i32 %.790, 0
  store i32 %.791, ptr %R5, align 4
  %cmp.8 = icmp ne i32 %.775, 1
  %.798 = and i1 %cmp.8, true
  %.804 = xor i1 true, true
  %.805 = zext i1 %.785 to i32
  %.806 = zext i1 %.804 to i32
  %add.22 = add i32 0, %UR5.0
  %add.23 = add i32 %add.22, 0
  %add.24 = add i32 %add.23, %.805
  %add.25 = add i32 %add.24, %.806
  %.809 = load float, ptr %R8, align 4
  %.810 = load float, ptr %R9, align 4
  %.811 = load float, ptr %R7, align 4
  %fmul.24 = fmul float %.809, %.810
  %fadd.24 = fadd float %fmul.24, %.811
  %.812 = bitcast ptr %R8 to ptr
  store float %fadd.24, ptr %.812, align 4
  %.815 = load i32, ptr %R2, align 4
  %.816 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.815, i32 16)
  %.817 = extractvalue { i32, i1 } %.816, 0
  %.818 = extractvalue { i32, i1 } %.816, 1
  %.819 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.817, i32 0)
  %.820 = extractvalue { i32, i1 } %.819, 0
  %.821 = extractvalue { i32, i1 } %.819, 1
  %.822 = or i1 %.818, %.821
  store i32 %.820, ptr %R9, align 4
  %.826 = load i32, ptr %R9, align 4
  store i32 %.826, ptr %R2, align 4
  %.829 = load float, ptr %R11, align 4
  %.830 = load float, ptr %R10, align 4
  %.831 = load float, ptr %R8, align 4
  %fmul.25 = fmul float %.829, %.830
  %fadd.25 = fadd float %fmul.25, %.831
  %.832 = bitcast ptr %R8 to ptr
  store float %fadd.25, ptr %.832, align 4
  %mul.6 = mul i32 0, 0
  %add.26 = add i32 %mul.6, %R3.0
  %zext.114 = zext i1 %.822 to i32
  %add.27 = add i32 %add.26, %zext.114
  store i32 %add.27, ptr %R10, align 4
  %.839 = load i32, ptr %R10, align 4
  %.842 = load float, ptr %R13, align 4
  %.843 = load float, ptr %R12, align 4
  %.844 = load float, ptr %R8, align 4
  %fmul.26 = fmul float %.842, %.843
  %fadd.26 = fadd float %fmul.26, %.844
  %.845 = bitcast ptr %R8 to ptr
  store float %fadd.26, ptr %.845, align 4
  %.848 = load float, ptr %R15, align 4
  %.849 = load float, ptr %R14, align 4
  %.850 = load float, ptr %R8, align 4
  %fmul.27 = fmul float %.848, %.849
  %fadd.27 = fadd float %fmul.27, %.850
  %.851 = bitcast ptr %R7 to ptr
  store float %fadd.27, ptr %.851, align 4
  %.855 = icmp eq i1 %.798, true
  br i1 %.855, label %.L_x_2, label %.L_x_1.loopexit

.L_x_1.loopexit:                                  ; preds = %.L_x_2
  br label %.L_x_1

.L_x_1:                                           ; preds = %.L_x_1.loopexit, %.L_x_5, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0
  %cmp.9 = icmp ne i32 %.80, 0
  %.862 = and i1 %cmp.9, true
  %.867 = icmp ne i1 %.862, true
  br i1 %.867, label %.L_x_0, label %.L_x_1_split_0x0930

.L_x_1_split_0x0930:                              ; preds = %.L_x_1
  %mul.7 = mul i32 0, 0
  %add.28 = add i32 %mul.7, 4
  store i32 %add.28, ptr %R8, align 4
  %.873 = load i32, ptr %R5, align 4
  %mul.8 = mul i32 %add, %Arg_4
  %add.29 = add i32 %mul.8, %.873
  store i32 %add.29, ptr %R2, align 4
  %.876 = load i32, ptr %R2, align 4
  %.877 = load i32, ptr %R8, align 4
  %zext.115 = zext i32 %.876 to i64
  %zext.116 = zext i32 %.877 to i64
  %mul.9 = mul i64 %zext.115, %zext.116
  %.878 = ptrtoint ptr %Arg_1 to i64
  %add.30 = add i64 %mul.9, %.878
  %.879 = and i64 %add.30, -4294967296
  %.880 = lshr i64 %.879, 32
  %trunc32.4 = trunc i64 %.880 to i32
  %trunc32.5 = trunc i64 %add.30 to i32
  store i32 %trunc32.5, ptr %R2, align 4
  %.884 = load i32, ptr %R5, align 4
  %.885 = load i32, ptr %R8, align 4
  %zext.117 = zext i32 %.884 to i64
  %zext.118 = zext i32 %.885 to i64
  %mul.10 = mul i64 %zext.117, %zext.118
  %.886 = ptrtoint ptr %Arg_0 to i64
  %add.31 = add i64 %mul.10, %.886
  %.887 = and i64 %add.31, -4294967296
  %.888 = lshr i64 %.887, 32
  %trunc32.6 = trunc i64 %.888 to i32
  %trunc32.7 = trunc i64 %add.31 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  store i32 %trunc32.6, ptr %R9, align 4
  %.892 = load i32, ptr %R2, align 4
  br label %.L_x_6

.L_x_6:                                           ; preds = %.L_x_6, %.L_x_1_split_0x0930
  %R6.4 = phi i32 [ %.892, %.L_x_1_split_0x0930 ], [ %.929, %.L_x_6 ]
  %R4.0 = phi i32 [ %.80, %.L_x_1_split_0x0930 ], [ %.913, %.L_x_6 ]
  %R3.4 = phi i32 [ %trunc32.4, %.L_x_1_split_0x0930 ], [ %add.33, %.L_x_6 ]
  store i32 %R6.4, ptr %R2, align 4
  %.899 = load i32, ptr %R8, align 4
  %zext.119 = zext i32 %.899 to i64
  %.900 = load i32, ptr %R9, align 4
  %zext.120 = zext i32 %.900 to i64
  %shl.56 = shl i64 %zext.120, 32
  %or.56 = or i64 %shl.56, %zext.119
  %inttoptr_bytes.56 = inttoptr i64 %or.56 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.901 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.902 = bitcast ptr %R5 to ptr
  store float %.901, ptr %.902, align 4
  %.905 = load i32, ptr %R2, align 4
  %zext.121 = zext i32 %.905 to i64
  %zext.122 = zext i32 %R3.4 to i64
  %shl.57 = shl i64 %zext.122, 32
  %or.57 = or i64 %shl.57, %zext.121
  %inttoptr_bytes.57 = inttoptr i64 %or.57 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.907 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.908 = bitcast ptr %R2 to ptr
  store float %.907, ptr %.908, align 4
  %.912 = add i32 %R4.0, -1
  %.913 = add i32 %.912, 0
  %cmp.10 = icmp ne i32 %.913, 0
  %.920 = and i1 %cmp.10, true
  %.925 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R6.4, i32 4)
  %.926 = extractvalue { i32, i1 } %.925, 0
  %.927 = extractvalue { i32, i1 } %.925, 1
  %.928 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.926, i32 0)
  %.929 = extractvalue { i32, i1 } %.928, 0
  %.930 = extractvalue { i32, i1 } %.928, 1
  %.931 = or i1 %.927, %.930
  %.935 = load i32, ptr %R8, align 4
  %.936 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.935, i32 4)
  %.937 = extractvalue { i32, i1 } %.936, 0
  %.938 = extractvalue { i32, i1 } %.936, 1
  %.939 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.937, i32 0)
  %.940 = extractvalue { i32, i1 } %.939, 0
  %.941 = extractvalue { i32, i1 } %.939, 1
  %.942 = or i1 %.938, %.941
  store i32 %.940, ptr %R8, align 4
  %mul.11 = mul i32 0, 0
  %add.32 = add i32 %mul.11, %R3.4
  %zext.123 = zext i1 %.931 to i32
  %add.33 = add i32 %add.32, %zext.123
  %.950 = load i32, ptr %R9, align 4
  %.952 = xor i1 true, true
  %.953 = zext i1 %.942 to i32
  %.954 = zext i1 %.952 to i32
  %add.34 = add i32 0, %.950
  %add.35 = add i32 %add.34, 0
  %add.36 = add i32 %add.35, %.953
  %add.37 = add i32 %add.36, %.954
  store i32 %add.37, ptr %R9, align 4
  %.957 = load float, ptr %R2, align 4
  %.958 = load float, ptr %R5, align 4
  %.959 = load float, ptr %R7, align 4
  %fmul.28 = fmul float %.957, %.958
  %fadd.28 = fadd float %fmul.28, %.959
  %.960 = bitcast ptr %R7 to ptr
  store float %fadd.28, ptr %.960, align 4
  %.964 = icmp eq i1 %.920, true
  br i1 %.964, label %.L_x_6, label %.L_x_0.loopexit

.L_x_0.loopexit:                                  ; preds = %.L_x_6
  br label %.L_x_0

.L_x_0:                                           ; preds = %.L_x_0.loopexit, %.L_x_1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060
  store i32 4, ptr %R5, align 4
  %.970 = load i32, ptr %R5, align 4
  %zext.124 = zext i32 %add to i64
  %zext.125 = zext i32 %.970 to i64
  %mul.12 = mul i64 %zext.124, %zext.125
  %.971 = ptrtoint ptr %Arg_2 to i64
  %add.38 = add i64 %mul.12, %.971
  %.972 = and i64 %add.38, -4294967296
  %.973 = lshr i64 %.972, 32
  %trunc32.8 = trunc i64 %.973 to i32
  %trunc32.9 = trunc i64 %add.38 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  %.977 = load i32, ptr %R2, align 4
  %zext.126 = zext i32 %.977 to i64
  %zext.127 = zext i32 %trunc32.8 to i64
  %shl.58 = shl i64 %zext.127, 32
  %or.58 = or i64 %shl.58, %zext.126
  %inttoptr_bytes.58 = inttoptr i64 %or.58 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.979 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.980 = bitcast ptr %R2 to ptr
  store float %.979, ptr %.980, align 4
  %.984 = load i32, ptr %R5, align 4
  %zext.128 = zext i32 %add to i64
  %zext.129 = zext i32 %.984 to i64
  %mul.13 = mul i64 %zext.128, %zext.129
  %.985 = ptrtoint ptr %Arg_3 to i64
  %add.39 = add i64 %mul.13, %.985
  %.986 = and i64 %add.39, -4294967296
  %.987 = lshr i64 %.986, 32
  %trunc32.10 = trunc i64 %.987 to i32
  %trunc32.11 = trunc i64 %add.39 to i32
  store i32 %trunc32.10, ptr %R5, align 4
  %.991 = load float, ptr %R2, align 4
  %.992 = load float, ptr %R7, align 4
  %fadd.29 = fadd float %.991, %.992
  %.993 = bitcast ptr %R7 to ptr
  store float %fadd.29, ptr %.993, align 4
  %.996 = load float, ptr %R7, align 4
  %zext.130 = zext i32 %trunc32.11 to i64
  %.998 = load i32, ptr %R5, align 4
  %zext.131 = zext i32 %.998 to i64
  %shl.59 = shl i64 %zext.131, 32
  %or.59 = or i64 %shl.59, %zext.130
  %inttoptr_bytes.59 = inttoptr i64 %or.59 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.996, ptr addrspace(1) %ptr_cast_for_access.59, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z15fc_layer_simplePfS_S_S_ii, %.L_x_0
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

define ptx_kernel void @_Z8fc_layerPfS_S_S_ii(ptr %Arg_0, ptr %Arg_1, ptr %Arg_2, ptr %Arg_3, i32 %Arg_4, i32 %Arg_5) {
Entry_.text._Z8fc_layerPfS_S_S_ii:
  %R7 = alloca i32, align 4
  %RZ = alloca i32, align 4
  %R2 = alloca i32, align 4
  %R5 = alloca i32, align 4
  %R8 = alloca i32, align 4
  %R9 = alloca i32, align 4
  %R11 = alloca i32, align 4
  %R10 = alloca i32, align 4
  %R13 = alloca i32, align 4
  %R12 = alloca i32, align 4
  %R15 = alloca i32, align 4
  %R14 = alloca i32, align 4
  %R17 = alloca i32, align 4
  %R16 = alloca i32, align 4
  %R19 = alloca i32, align 4
  %R18 = alloca i32, align 4
  %R21 = alloca i32, align 4
  %R20 = alloca i32, align 4
  %R23 = alloca i32, align 4
  %R22 = alloca i32, align 4
  %R25 = alloca i32, align 4
  %R24 = alloca i32, align 4
  %R27 = alloca i32, align 4
  %R26 = alloca i32, align 4
  %R29 = alloca i32, align 4
  %R28 = alloca i32, align 4
  %R31 = alloca i32, align 4
  %R30 = alloca i32, align 4
  %R33 = alloca i32, align 4
  %R32 = alloca i32, align 4
  %R35 = alloca i32, align 4
  %R34 = alloca i32, align 4
  %R37 = alloca i32, align 4
  %R36 = alloca i32, align 4
  %R39 = alloca i32, align 4
  %R38 = alloca i32, align 4
  store i32 0, ptr %RZ, align 4
  %nvvm_ctaid_x = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %add = add i32 %mul, %nvvm_threadidx_x
  %cmp = icmp sge i32 %add, %Arg_5
  %.28 = and i1 %cmp, true
  %.33 = icmp eq i1 %.28, true
  br i1 %.33, label %ExitFunction, label %.text._Z8fc_layerPfS_S_S_ii_split_0x0060

.text._Z8fc_layerPfS_S_S_ii_split_0x0060:         ; preds = %Entry_.text._Z8fc_layerPfS_S_S_ii
  %mul.1 = mul i32 0, 0
  %add.1 = add i32 %mul.1, 0
  store i32 %add.1, ptr %R7, align 4
  %cmp.1 = icmp sge i32 %Arg_4, 1
  %.46 = and i1 %cmp.1, true
  %.51 = icmp ne i1 %.46, true
  br i1 %.51, label %.L_x_8, label %.text._Z8fc_layerPfS_S_S_ii_split_0x00a0

.text._Z8fc_layerPfS_S_S_ii_split_0x00a0:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0060
  %.55 = add i32 %Arg_4, -1
  %.56 = add i32 %.55, 0
  store i32 %.56, ptr %R2, align 4
  %.61 = and i32 %Arg_4, 3
  %.64 = load i32, ptr %R2, align 4
  %cmp.2 = icmp sge i32 %.64, 3
  %.68 = and i1 %cmp.2, true
  %.72 = load float, ptr %RZ, align 4
  %.73 = bitcast ptr %R7 to ptr
  store float %.72, ptr %.73, align 4
  %.76 = load i32, ptr %RZ, align 4
  store i32 %.76, ptr %R5, align 4
  %.80 = icmp ne i1 %.68, true
  br i1 %.80, label %.L_x_9, label %.text._Z8fc_layerPfS_S_S_ii_split_0x0100

.text._Z8fc_layerPfS_S_S_ii_split_0x0100:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x00a0
  %.84 = sub i32 0, %.61
  %.85 = add i32 %.84, %Arg_4
  %.86 = add i32 %.85, 0
  %mul.2 = mul i32 %add, %Arg_4
  %add.2 = add i32 %mul.2, 0
  store i32 %add.2, ptr %R2, align 4
  %.92 = ptrtoint ptr %Arg_0 to i64
  %.93 = and i64 %.92, -4294967296
  %.94 = lshr i64 %.93, 32
  %trunc32 = trunc i64 %.94 to i32
  %trunc32.1 = trunc i64 %.92 to i32
  %mul.3 = mul i32 0, 0
  %add.3 = add i32 %mul.3, 4
  %cmp.3 = icmp sgt i32 %.86, 0
  %.104 = and i1 %cmp.3, true
  %.108 = load float, ptr %RZ, align 4
  %.109 = bitcast ptr %R7 to ptr
  store float %.108, ptr %.109, align 4
  %.112 = load i32, ptr %R2, align 4
  %zext = zext i32 %.112 to i64
  %zext.1 = zext i32 %add.3 to i64
  %mul.4 = mul i64 %zext, %zext.1
  %.114 = ptrtoint ptr %Arg_1 to i64
  %add.4 = add i64 %mul.4, %.114
  %.115 = and i64 %add.4, -4294967296
  %.116 = lshr i64 %.115, 32
  %trunc32.2 = trunc i64 %.116 to i32
  %trunc32.3 = trunc i64 %add.4 to i32
  store i32 %trunc32.3, ptr %R2, align 4
  %.120 = load i32, ptr %RZ, align 4
  store i32 %.120, ptr %R5, align 4
  %.124 = icmp ne i1 %.104, true
  br i1 %.124, label %.L_x_10.preheader, label %.text._Z8fc_layerPfS_S_S_ii_split_0x0190

.text._Z8fc_layerPfS_S_S_ii_split_0x0190:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0100
  %cmp.4 = icmp sgt i32 %.86, 12
  %.131 = and i1 %cmp.4, true
  %.139 = icmp ne i1 %.131, true
  br i1 %.139, label %.L_x_11, label %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0

.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0190
  br label %.L_x_12

.L_x_12:                                          ; preds = %.L_x_12, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0
  %UR4.2 = phi i32 [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %.349, %.L_x_12 ]
  %R6.2 = phi i32 [ %.86, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %.341, %.L_x_12 ]
  %UR5.2 = phi i32 [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %add.8, %.L_x_12 ]
  %R3.2 = phi i32 [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %add.10, %.L_x_12 ]
  %.147 = load i32, ptr %R2, align 4
  %zext.2 = zext i32 %.147 to i64
  %zext.3 = zext i32 %R3.2 to i64
  %shl = shl i64 %zext.3, 32
  %or = or i64 %shl, %zext.2
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.149 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.150 = bitcast ptr %R8 to ptr
  store float %.149, ptr %.150, align 4
  %zext.4 = zext i32 %UR4.2 to i64
  %zext.5 = zext i32 %UR5.2 to i64
  %shl.1 = shl i64 %zext.5, 32
  %or.1 = or i64 %shl.1, %zext.4
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.155 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.156 = bitcast ptr %R9 to ptr
  store float %.155, ptr %.156, align 4
  %.159 = load i32, ptr %R2, align 4
  %zext.6 = zext i32 %.159 to i64
  %zext.7 = zext i32 %R3.2 to i64
  %shl.2 = shl i64 %zext.7, 32
  %or.2 = or i64 %shl.2, %zext.6
  %ptr_plus_imm = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.161 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.162 = bitcast ptr %R11 to ptr
  store float %.161, ptr %.162, align 4
  %zext.8 = zext i32 %UR4.2 to i64
  %zext.9 = zext i32 %UR5.2 to i64
  %shl.3 = shl i64 %zext.9, 32
  %or.3 = or i64 %shl.3, %zext.8
  %ptr_plus_imm.1 = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.167 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.168 = bitcast ptr %R10 to ptr
  store float %.167, ptr %.168, align 4
  %.171 = load i32, ptr %R2, align 4
  %zext.10 = zext i32 %.171 to i64
  %zext.11 = zext i32 %R3.2 to i64
  %shl.4 = shl i64 %zext.11, 32
  %or.4 = or i64 %shl.4, %zext.10
  %ptr_plus_imm.2 = add i64 %or.4, 8
  %inttoptr_bytes.4 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.173 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.174 = bitcast ptr %R13 to ptr
  store float %.173, ptr %.174, align 4
  %zext.12 = zext i32 %UR4.2 to i64
  %zext.13 = zext i32 %UR5.2 to i64
  %shl.5 = shl i64 %zext.13, 32
  %or.5 = or i64 %shl.5, %zext.12
  %ptr_plus_imm.3 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.179 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.180 = bitcast ptr %R12 to ptr
  store float %.179, ptr %.180, align 4
  %.183 = load i32, ptr %R2, align 4
  %zext.14 = zext i32 %.183 to i64
  %zext.15 = zext i32 %R3.2 to i64
  %shl.6 = shl i64 %zext.15, 32
  %or.6 = or i64 %shl.6, %zext.14
  %ptr_plus_imm.4 = add i64 %or.6, 12
  %inttoptr_bytes.6 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.185 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.186 = bitcast ptr %R15 to ptr
  store float %.185, ptr %.186, align 4
  %zext.16 = zext i32 %UR4.2 to i64
  %zext.17 = zext i32 %UR5.2 to i64
  %shl.7 = shl i64 %zext.17, 32
  %or.7 = or i64 %shl.7, %zext.16
  %ptr_plus_imm.5 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.191 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.192 = bitcast ptr %R14 to ptr
  store float %.191, ptr %.192, align 4
  %.195 = load i32, ptr %R2, align 4
  %zext.18 = zext i32 %.195 to i64
  %zext.19 = zext i32 %R3.2 to i64
  %shl.8 = shl i64 %zext.19, 32
  %or.8 = or i64 %shl.8, %zext.18
  %ptr_plus_imm.6 = add i64 %or.8, 16
  %inttoptr_bytes.8 = inttoptr i64 %ptr_plus_imm.6 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.197 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.198 = bitcast ptr %R17 to ptr
  store float %.197, ptr %.198, align 4
  %zext.20 = zext i32 %UR4.2 to i64
  %zext.21 = zext i32 %UR5.2 to i64
  %shl.9 = shl i64 %zext.21, 32
  %or.9 = or i64 %shl.9, %zext.20
  %ptr_plus_imm.7 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm.7 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.203 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.204 = bitcast ptr %R16 to ptr
  store float %.203, ptr %.204, align 4
  %.207 = load i32, ptr %R2, align 4
  %zext.22 = zext i32 %.207 to i64
  %zext.23 = zext i32 %R3.2 to i64
  %shl.10 = shl i64 %zext.23, 32
  %or.10 = or i64 %shl.10, %zext.22
  %ptr_plus_imm.8 = add i64 %or.10, 20
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.8 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.209 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.210 = bitcast ptr %R19 to ptr
  store float %.209, ptr %.210, align 4
  %zext.24 = zext i32 %UR4.2 to i64
  %zext.25 = zext i32 %UR5.2 to i64
  %shl.11 = shl i64 %zext.25, 32
  %or.11 = or i64 %shl.11, %zext.24
  %ptr_plus_imm.9 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.9 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.215 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.216 = bitcast ptr %R18 to ptr
  store float %.215, ptr %.216, align 4
  %.219 = load i32, ptr %R2, align 4
  %zext.26 = zext i32 %.219 to i64
  %zext.27 = zext i32 %R3.2 to i64
  %shl.12 = shl i64 %zext.27, 32
  %or.12 = or i64 %shl.12, %zext.26
  %ptr_plus_imm.10 = add i64 %or.12, 24
  %inttoptr_bytes.12 = inttoptr i64 %ptr_plus_imm.10 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.221 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.222 = bitcast ptr %R21 to ptr
  store float %.221, ptr %.222, align 4
  %zext.28 = zext i32 %UR4.2 to i64
  %zext.29 = zext i32 %UR5.2 to i64
  %shl.13 = shl i64 %zext.29, 32
  %or.13 = or i64 %shl.13, %zext.28
  %ptr_plus_imm.11 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %ptr_plus_imm.11 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.227 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.228 = bitcast ptr %R20 to ptr
  store float %.227, ptr %.228, align 4
  %.231 = load i32, ptr %R2, align 4
  %zext.30 = zext i32 %.231 to i64
  %zext.31 = zext i32 %R3.2 to i64
  %shl.14 = shl i64 %zext.31, 32
  %or.14 = or i64 %shl.14, %zext.30
  %ptr_plus_imm.12 = add i64 %or.14, 28
  %inttoptr_bytes.14 = inttoptr i64 %ptr_plus_imm.12 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.233 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.234 = bitcast ptr %R23 to ptr
  store float %.233, ptr %.234, align 4
  %zext.32 = zext i32 %UR4.2 to i64
  %zext.33 = zext i32 %UR5.2 to i64
  %shl.15 = shl i64 %zext.33, 32
  %or.15 = or i64 %shl.15, %zext.32
  %ptr_plus_imm.13 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %ptr_plus_imm.13 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.239 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.240 = bitcast ptr %R22 to ptr
  store float %.239, ptr %.240, align 4
  %.243 = load i32, ptr %R2, align 4
  %zext.34 = zext i32 %.243 to i64
  %zext.35 = zext i32 %R3.2 to i64
  %shl.16 = shl i64 %zext.35, 32
  %or.16 = or i64 %shl.16, %zext.34
  %ptr_plus_imm.14 = add i64 %or.16, 32
  %inttoptr_bytes.16 = inttoptr i64 %ptr_plus_imm.14 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.245 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.246 = bitcast ptr %R25 to ptr
  store float %.245, ptr %.246, align 4
  %zext.36 = zext i32 %UR4.2 to i64
  %zext.37 = zext i32 %UR5.2 to i64
  %shl.17 = shl i64 %zext.37, 32
  %or.17 = or i64 %shl.17, %zext.36
  %ptr_plus_imm.15 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %ptr_plus_imm.15 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.251 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.252 = bitcast ptr %R24 to ptr
  store float %.251, ptr %.252, align 4
  %.255 = load i32, ptr %R2, align 4
  %zext.38 = zext i32 %.255 to i64
  %zext.39 = zext i32 %R3.2 to i64
  %shl.18 = shl i64 %zext.39, 32
  %or.18 = or i64 %shl.18, %zext.38
  %ptr_plus_imm.16 = add i64 %or.18, 36
  %inttoptr_bytes.18 = inttoptr i64 %ptr_plus_imm.16 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.257 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.258 = bitcast ptr %R27 to ptr
  store float %.257, ptr %.258, align 4
  %zext.40 = zext i32 %UR4.2 to i64
  %zext.41 = zext i32 %UR5.2 to i64
  %shl.19 = shl i64 %zext.41, 32
  %or.19 = or i64 %shl.19, %zext.40
  %ptr_plus_imm.17 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %ptr_plus_imm.17 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.263 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.264 = bitcast ptr %R26 to ptr
  store float %.263, ptr %.264, align 4
  %.267 = load i32, ptr %R2, align 4
  %zext.42 = zext i32 %.267 to i64
  %zext.43 = zext i32 %R3.2 to i64
  %shl.20 = shl i64 %zext.43, 32
  %or.20 = or i64 %shl.20, %zext.42
  %ptr_plus_imm.18 = add i64 %or.20, 40
  %inttoptr_bytes.20 = inttoptr i64 %ptr_plus_imm.18 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.269 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.270 = bitcast ptr %R29 to ptr
  store float %.269, ptr %.270, align 4
  %zext.44 = zext i32 %UR4.2 to i64
  %zext.45 = zext i32 %UR5.2 to i64
  %shl.21 = shl i64 %zext.45, 32
  %or.21 = or i64 %shl.21, %zext.44
  %ptr_plus_imm.19 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %ptr_plus_imm.19 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.275 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.276 = bitcast ptr %R28 to ptr
  store float %.275, ptr %.276, align 4
  %.279 = load i32, ptr %R2, align 4
  %zext.46 = zext i32 %.279 to i64
  %zext.47 = zext i32 %R3.2 to i64
  %shl.22 = shl i64 %zext.47, 32
  %or.22 = or i64 %shl.22, %zext.46
  %ptr_plus_imm.20 = add i64 %or.22, 44
  %inttoptr_bytes.22 = inttoptr i64 %ptr_plus_imm.20 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.281 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.282 = bitcast ptr %R31 to ptr
  store float %.281, ptr %.282, align 4
  %zext.48 = zext i32 %UR4.2 to i64
  %zext.49 = zext i32 %UR5.2 to i64
  %shl.23 = shl i64 %zext.49, 32
  %or.23 = or i64 %shl.23, %zext.48
  %ptr_plus_imm.21 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %ptr_plus_imm.21 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.287 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.288 = bitcast ptr %R30 to ptr
  store float %.287, ptr %.288, align 4
  %.291 = load i32, ptr %R2, align 4
  %zext.50 = zext i32 %.291 to i64
  %zext.51 = zext i32 %R3.2 to i64
  %shl.24 = shl i64 %zext.51, 32
  %or.24 = or i64 %shl.24, %zext.50
  %ptr_plus_imm.22 = add i64 %or.24, 48
  %inttoptr_bytes.24 = inttoptr i64 %ptr_plus_imm.22 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.293 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.294 = bitcast ptr %R33 to ptr
  store float %.293, ptr %.294, align 4
  %zext.52 = zext i32 %UR4.2 to i64
  %zext.53 = zext i32 %UR5.2 to i64
  %shl.25 = shl i64 %zext.53, 32
  %or.25 = or i64 %shl.25, %zext.52
  %ptr_plus_imm.23 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %ptr_plus_imm.23 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.299 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.300 = bitcast ptr %R32 to ptr
  store float %.299, ptr %.300, align 4
  %.303 = load i32, ptr %R2, align 4
  %zext.54 = zext i32 %.303 to i64
  %zext.55 = zext i32 %R3.2 to i64
  %shl.26 = shl i64 %zext.55, 32
  %or.26 = or i64 %shl.26, %zext.54
  %ptr_plus_imm.24 = add i64 %or.26, 52
  %inttoptr_bytes.26 = inttoptr i64 %ptr_plus_imm.24 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.305 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.306 = bitcast ptr %R35 to ptr
  store float %.305, ptr %.306, align 4
  %zext.56 = zext i32 %UR4.2 to i64
  %zext.57 = zext i32 %UR5.2 to i64
  %shl.27 = shl i64 %zext.57, 32
  %or.27 = or i64 %shl.27, %zext.56
  %ptr_plus_imm.25 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %ptr_plus_imm.25 to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.311 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.312 = bitcast ptr %R34 to ptr
  store float %.311, ptr %.312, align 4
  %.315 = load i32, ptr %R2, align 4
  %zext.58 = zext i32 %.315 to i64
  %zext.59 = zext i32 %R3.2 to i64
  %shl.28 = shl i64 %zext.59, 32
  %or.28 = or i64 %shl.28, %zext.58
  %ptr_plus_imm.26 = add i64 %or.28, 56
  %inttoptr_bytes.28 = inttoptr i64 %ptr_plus_imm.26 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.317 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.318 = bitcast ptr %R37 to ptr
  store float %.317, ptr %.318, align 4
  %zext.60 = zext i32 %UR4.2 to i64
  %zext.61 = zext i32 %UR5.2 to i64
  %shl.29 = shl i64 %zext.61, 32
  %or.29 = or i64 %shl.29, %zext.60
  %ptr_plus_imm.27 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %ptr_plus_imm.27 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.323 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.324 = bitcast ptr %R36 to ptr
  store float %.323, ptr %.324, align 4
  %.327 = load i32, ptr %R2, align 4
  %zext.62 = zext i32 %.327 to i64
  %zext.63 = zext i32 %R3.2 to i64
  %shl.30 = shl i64 %zext.63, 32
  %or.30 = or i64 %shl.30, %zext.62
  %ptr_plus_imm.28 = add i64 %or.30, 60
  %inttoptr_bytes.30 = inttoptr i64 %ptr_plus_imm.28 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.329 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.330 = bitcast ptr %R39 to ptr
  store float %.329, ptr %.330, align 4
  %zext.64 = zext i32 %UR4.2 to i64
  %zext.65 = zext i32 %UR5.2 to i64
  %shl.31 = shl i64 %zext.65, 32
  %or.31 = or i64 %shl.31, %zext.64
  %ptr_plus_imm.29 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %ptr_plus_imm.29 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.335 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.336 = bitcast ptr %R38 to ptr
  store float %.335, ptr %.336, align 4
  %.340 = add i32 %R6.2, -16
  %.341 = add i32 %.340, 0
  %.345 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.346 = extractvalue { i32, i1 } %.345, 0
  %.347 = extractvalue { i32, i1 } %.345, 1
  %.348 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.346, i32 0)
  %.349 = extractvalue { i32, i1 } %.348, 0
  %.350 = extractvalue { i32, i1 } %.348, 1
  %.351 = or i1 %.347, %.350
  %.355 = load i32, ptr %R5, align 4
  %.356 = add i32 %.355, 16
  %.357 = add i32 %.356, 0
  store i32 %.357, ptr %R5, align 4
  %cmp.5 = icmp sgt i32 %.341, 12
  %.364 = and i1 %cmp.5, true
  %.370 = xor i1 true, true
  %.371 = zext i1 %.351 to i32
  %.372 = zext i1 %.370 to i32
  %add.5 = add i32 0, %UR5.2
  %add.6 = add i32 %add.5, 0
  %add.7 = add i32 %add.6, %.371
  %add.8 = add i32 %add.7, %.372
  %.375 = load i32, ptr %R2, align 4
  %.376 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.375, i32 64)
  %.377 = extractvalue { i32, i1 } %.376, 0
  %.378 = extractvalue { i32, i1 } %.376, 1
  %.379 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.377, i32 0)
  %.380 = extractvalue { i32, i1 } %.379, 0
  %.381 = extractvalue { i32, i1 } %.379, 1
  %.382 = or i1 %.378, %.381
  store i32 %.380, ptr %R2, align 4
  %mul.5 = mul i32 0, 0
  %add.9 = add i32 %mul.5, %R3.2
  %zext.66 = zext i1 %.382 to i32
  %add.10 = add i32 %add.9, %zext.66
  %.390 = load float, ptr %R8, align 4
  %.391 = load float, ptr %R9, align 4
  %.392 = load float, ptr %R7, align 4
  %fmul = fmul float %.390, %.391
  %fadd = fadd float %fmul, %.392
  %.393 = bitcast ptr %R8 to ptr
  store float %fadd, ptr %.393, align 4
  %.396 = load float, ptr %R11, align 4
  %.397 = load float, ptr %R10, align 4
  %.398 = load float, ptr %R8, align 4
  %fmul.1 = fmul float %.396, %.397
  %fadd.1 = fadd float %fmul.1, %.398
  %.399 = bitcast ptr %R8 to ptr
  store float %fadd.1, ptr %.399, align 4
  %.402 = load float, ptr %R13, align 4
  %.403 = load float, ptr %R12, align 4
  %.404 = load float, ptr %R8, align 4
  %fmul.2 = fmul float %.402, %.403
  %fadd.2 = fadd float %fmul.2, %.404
  %.405 = bitcast ptr %R8 to ptr
  store float %fadd.2, ptr %.405, align 4
  %.408 = load float, ptr %R15, align 4
  %.409 = load float, ptr %R14, align 4
  %.410 = load float, ptr %R8, align 4
  %fmul.3 = fmul float %.408, %.409
  %fadd.3 = fadd float %fmul.3, %.410
  %.411 = bitcast ptr %R8 to ptr
  store float %fadd.3, ptr %.411, align 4
  %.414 = load float, ptr %R17, align 4
  %.415 = load float, ptr %R16, align 4
  %.416 = load float, ptr %R8, align 4
  %fmul.4 = fmul float %.414, %.415
  %fadd.4 = fadd float %fmul.4, %.416
  %.417 = bitcast ptr %R8 to ptr
  store float %fadd.4, ptr %.417, align 4
  %.420 = load float, ptr %R19, align 4
  %.421 = load float, ptr %R18, align 4
  %.422 = load float, ptr %R8, align 4
  %fmul.5 = fmul float %.420, %.421
  %fadd.5 = fadd float %fmul.5, %.422
  %.423 = bitcast ptr %R8 to ptr
  store float %fadd.5, ptr %.423, align 4
  %.426 = load float, ptr %R21, align 4
  %.427 = load float, ptr %R20, align 4
  %.428 = load float, ptr %R8, align 4
  %fmul.6 = fmul float %.426, %.427
  %fadd.6 = fadd float %fmul.6, %.428
  %.429 = bitcast ptr %R8 to ptr
  store float %fadd.6, ptr %.429, align 4
  %.432 = load float, ptr %R23, align 4
  %.433 = load float, ptr %R22, align 4
  %.434 = load float, ptr %R8, align 4
  %fmul.7 = fmul float %.432, %.433
  %fadd.7 = fadd float %fmul.7, %.434
  %.435 = bitcast ptr %R8 to ptr
  store float %fadd.7, ptr %.435, align 4
  %.438 = load float, ptr %R25, align 4
  %.439 = load float, ptr %R24, align 4
  %.440 = load float, ptr %R8, align 4
  %fmul.8 = fmul float %.438, %.439
  %fadd.8 = fadd float %fmul.8, %.440
  %.441 = bitcast ptr %R8 to ptr
  store float %fadd.8, ptr %.441, align 4
  %.444 = load float, ptr %R27, align 4
  %.445 = load float, ptr %R26, align 4
  %.446 = load float, ptr %R8, align 4
  %fmul.9 = fmul float %.444, %.445
  %fadd.9 = fadd float %fmul.9, %.446
  %.447 = bitcast ptr %R8 to ptr
  store float %fadd.9, ptr %.447, align 4
  %.450 = load float, ptr %R29, align 4
  %.451 = load float, ptr %R28, align 4
  %.452 = load float, ptr %R8, align 4
  %fmul.10 = fmul float %.450, %.451
  %fadd.10 = fadd float %fmul.10, %.452
  %.453 = bitcast ptr %R8 to ptr
  store float %fadd.10, ptr %.453, align 4
  %.456 = load float, ptr %R31, align 4
  %.457 = load float, ptr %R30, align 4
  %.458 = load float, ptr %R8, align 4
  %fmul.11 = fmul float %.456, %.457
  %fadd.11 = fadd float %fmul.11, %.458
  %.459 = bitcast ptr %R8 to ptr
  store float %fadd.11, ptr %.459, align 4
  %.462 = load float, ptr %R33, align 4
  %.463 = load float, ptr %R32, align 4
  %.464 = load float, ptr %R8, align 4
  %fmul.12 = fmul float %.462, %.463
  %fadd.12 = fadd float %fmul.12, %.464
  %.465 = bitcast ptr %R8 to ptr
  store float %fadd.12, ptr %.465, align 4
  %.468 = load float, ptr %R35, align 4
  %.469 = load float, ptr %R34, align 4
  %.470 = load float, ptr %R8, align 4
  %fmul.13 = fmul float %.468, %.469
  %fadd.13 = fadd float %fmul.13, %.470
  %.471 = bitcast ptr %R8 to ptr
  store float %fadd.13, ptr %.471, align 4
  %.474 = load float, ptr %R37, align 4
  %.475 = load float, ptr %R36, align 4
  %.476 = load float, ptr %R8, align 4
  %fmul.14 = fmul float %.474, %.475
  %fadd.14 = fadd float %fmul.14, %.476
  %.477 = bitcast ptr %R8 to ptr
  store float %fadd.14, ptr %.477, align 4
  %.480 = load float, ptr %R39, align 4
  %.481 = load float, ptr %R38, align 4
  %.482 = load float, ptr %R8, align 4
  %fmul.15 = fmul float %.480, %.481
  %fadd.15 = fadd float %fmul.15, %.482
  %.483 = bitcast ptr %R7 to ptr
  store float %fadd.15, ptr %.483, align 4
  %.487 = icmp eq i1 %.364, true
  br i1 %.487, label %.L_x_12, label %.L_x_11.loopexit

.L_x_11.loopexit:                                 ; preds = %.L_x_12
  br label %.L_x_11

.L_x_11:                                          ; preds = %.L_x_11.loopexit, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190
  %UR4.1 = phi i32 [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %.349, %.L_x_11.loopexit ]
  %R6.1 = phi i32 [ %.86, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %.341, %.L_x_11.loopexit ]
  %UR5.1 = phi i32 [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %add.8, %.L_x_11.loopexit ]
  %R3.1 = phi i32 [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %add.10, %.L_x_11.loopexit ]
  %cmp.6 = icmp sgt i32 %R6.1, 4
  %.494 = and i1 %cmp.6, true
  %.499 = icmp ne i1 %.494, true
  br i1 %.499, label %.L_x_13, label %.L_x_11_split_0x0570

.L_x_11_split_0x0570:                             ; preds = %.L_x_11
  %.502 = load i32, ptr %R2, align 4
  %zext.67 = zext i32 %.502 to i64
  %zext.68 = zext i32 %R3.1 to i64
  %shl.32 = shl i64 %zext.68, 32
  %or.32 = or i64 %shl.32, %zext.67
  %inttoptr_bytes.32 = inttoptr i64 %or.32 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.504 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.505 = bitcast ptr %R8 to ptr
  store float %.504, ptr %.505, align 4
  %zext.69 = zext i32 %UR4.1 to i64
  %zext.70 = zext i32 %UR5.1 to i64
  %shl.33 = shl i64 %zext.70, 32
  %or.33 = or i64 %shl.33, %zext.69
  %inttoptr_bytes.33 = inttoptr i64 %or.33 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.510 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.511 = bitcast ptr %R9 to ptr
  store float %.510, ptr %.511, align 4
  %.514 = load i32, ptr %R2, align 4
  %zext.71 = zext i32 %.514 to i64
  %zext.72 = zext i32 %R3.1 to i64
  %shl.34 = shl i64 %zext.72, 32
  %or.34 = or i64 %shl.34, %zext.71
  %ptr_plus_imm.30 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.30 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.516 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.517 = bitcast ptr %R11 to ptr
  store float %.516, ptr %.517, align 4
  %zext.73 = zext i32 %UR4.1 to i64
  %zext.74 = zext i32 %UR5.1 to i64
  %shl.35 = shl i64 %zext.74, 32
  %or.35 = or i64 %shl.35, %zext.73
  %ptr_plus_imm.31 = add i64 %or.35, 4
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.31 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.522 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.523 = bitcast ptr %R10 to ptr
  store float %.522, ptr %.523, align 4
  %.526 = load i32, ptr %R2, align 4
  %zext.75 = zext i32 %.526 to i64
  %zext.76 = zext i32 %R3.1 to i64
  %shl.36 = shl i64 %zext.76, 32
  %or.36 = or i64 %shl.36, %zext.75
  %ptr_plus_imm.32 = add i64 %or.36, 8
  %inttoptr_bytes.36 = inttoptr i64 %ptr_plus_imm.32 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.528 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.529 = bitcast ptr %R13 to ptr
  store float %.528, ptr %.529, align 4
  %zext.77 = zext i32 %UR4.1 to i64
  %zext.78 = zext i32 %UR5.1 to i64
  %shl.37 = shl i64 %zext.78, 32
  %or.37 = or i64 %shl.37, %zext.77
  %ptr_plus_imm.33 = add i64 %or.37, 8
  %inttoptr_bytes.37 = inttoptr i64 %ptr_plus_imm.33 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.534 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.535 = bitcast ptr %R12 to ptr
  store float %.534, ptr %.535, align 4
  %.538 = load i32, ptr %R2, align 4
  %zext.79 = zext i32 %.538 to i64
  %zext.80 = zext i32 %R3.1 to i64
  %shl.38 = shl i64 %zext.80, 32
  %or.38 = or i64 %shl.38, %zext.79
  %ptr_plus_imm.34 = add i64 %or.38, 12
  %inttoptr_bytes.38 = inttoptr i64 %ptr_plus_imm.34 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.540 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.541 = bitcast ptr %R15 to ptr
  store float %.540, ptr %.541, align 4
  %zext.81 = zext i32 %UR4.1 to i64
  %zext.82 = zext i32 %UR5.1 to i64
  %shl.39 = shl i64 %zext.82, 32
  %or.39 = or i64 %shl.39, %zext.81
  %ptr_plus_imm.35 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %ptr_plus_imm.35 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.546 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.547 = bitcast ptr %R14 to ptr
  store float %.546, ptr %.547, align 4
  %.550 = load i32, ptr %R2, align 4
  %zext.83 = zext i32 %.550 to i64
  %zext.84 = zext i32 %R3.1 to i64
  %shl.40 = shl i64 %zext.84, 32
  %or.40 = or i64 %shl.40, %zext.83
  %ptr_plus_imm.36 = add i64 %or.40, 16
  %inttoptr_bytes.40 = inttoptr i64 %ptr_plus_imm.36 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.552 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.553 = bitcast ptr %R17 to ptr
  store float %.552, ptr %.553, align 4
  %zext.85 = zext i32 %UR4.1 to i64
  %zext.86 = zext i32 %UR5.1 to i64
  %shl.41 = shl i64 %zext.86, 32
  %or.41 = or i64 %shl.41, %zext.85
  %ptr_plus_imm.37 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %ptr_plus_imm.37 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.558 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.559 = bitcast ptr %R16 to ptr
  store float %.558, ptr %.559, align 4
  %.562 = load i32, ptr %R2, align 4
  %zext.87 = zext i32 %.562 to i64
  %zext.88 = zext i32 %R3.1 to i64
  %shl.42 = shl i64 %zext.88, 32
  %or.42 = or i64 %shl.42, %zext.87
  %ptr_plus_imm.38 = add i64 %or.42, 20
  %inttoptr_bytes.42 = inttoptr i64 %ptr_plus_imm.38 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.564 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.565 = bitcast ptr %R19 to ptr
  store float %.564, ptr %.565, align 4
  %zext.89 = zext i32 %UR4.1 to i64
  %zext.90 = zext i32 %UR5.1 to i64
  %shl.43 = shl i64 %zext.90, 32
  %or.43 = or i64 %shl.43, %zext.89
  %ptr_plus_imm.39 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %ptr_plus_imm.39 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.570 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.571 = bitcast ptr %R18 to ptr
  store float %.570, ptr %.571, align 4
  %.574 = load i32, ptr %R2, align 4
  %zext.91 = zext i32 %.574 to i64
  %zext.92 = zext i32 %R3.1 to i64
  %shl.44 = shl i64 %zext.92, 32
  %or.44 = or i64 %shl.44, %zext.91
  %ptr_plus_imm.40 = add i64 %or.44, 24
  %inttoptr_bytes.44 = inttoptr i64 %ptr_plus_imm.40 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.576 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.577 = bitcast ptr %R21 to ptr
  store float %.576, ptr %.577, align 4
  %zext.93 = zext i32 %UR4.1 to i64
  %zext.94 = zext i32 %UR5.1 to i64
  %shl.45 = shl i64 %zext.94, 32
  %or.45 = or i64 %shl.45, %zext.93
  %ptr_plus_imm.41 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %ptr_plus_imm.41 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.582 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.583 = bitcast ptr %R20 to ptr
  store float %.582, ptr %.583, align 4
  %.586 = load i32, ptr %R2, align 4
  %zext.95 = zext i32 %.586 to i64
  %zext.96 = zext i32 %R3.1 to i64
  %shl.46 = shl i64 %zext.96, 32
  %or.46 = or i64 %shl.46, %zext.95
  %ptr_plus_imm.42 = add i64 %or.46, 28
  %inttoptr_bytes.46 = inttoptr i64 %ptr_plus_imm.42 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.588 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.589 = bitcast ptr %R23 to ptr
  store float %.588, ptr %.589, align 4
  %zext.97 = zext i32 %UR4.1 to i64
  %zext.98 = zext i32 %UR5.1 to i64
  %shl.47 = shl i64 %zext.98, 32
  %or.47 = or i64 %shl.47, %zext.97
  %ptr_plus_imm.43 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %ptr_plus_imm.43 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.594 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.595 = bitcast ptr %R22 to ptr
  store float %.594, ptr %.595, align 4
  %.599 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.600 = extractvalue { i32, i1 } %.599, 0
  %.601 = extractvalue { i32, i1 } %.599, 1
  %.602 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.600, i32 0)
  %.603 = extractvalue { i32, i1 } %.602, 0
  %.604 = extractvalue { i32, i1 } %.602, 1
  %.605 = or i1 %.601, %.604
  %.613 = load i32, ptr %R5, align 4
  %.614 = add i32 %.613, 8
  %.615 = add i32 %.614, 0
  store i32 %.615, ptr %R5, align 4
  %.620 = xor i1 true, true
  %.621 = zext i1 %.605 to i32
  %.622 = zext i1 %.620 to i32
  %add.11 = add i32 0, %UR5.1
  %add.12 = add i32 %add.11, 0
  %add.13 = add i32 %add.12, %.621
  %add.14 = add i32 %add.13, %.622
  %.625 = load i32, ptr %R2, align 4
  %.626 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.625, i32 32)
  %.627 = extractvalue { i32, i1 } %.626, 0
  %.628 = extractvalue { i32, i1 } %.626, 1
  %.629 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.627, i32 0)
  %.630 = extractvalue { i32, i1 } %.629, 0
  %.631 = extractvalue { i32, i1 } %.629, 1
  %.632 = or i1 %.628, %.631
  store i32 %.630, ptr %R2, align 4
  %.637 = add i32 %R6.1, -8
  %.638 = add i32 %.637, 0
  %.643 = xor i1 true, true
  %.644 = zext i1 %.632 to i32
  %.645 = zext i1 %.643 to i32
  %add.15 = add i32 0, %R3.1
  %add.16 = add i32 %add.15, 0
  %add.17 = add i32 %add.16, %.644
  %add.18 = add i32 %add.17, %.645
  %.648 = load float, ptr %R8, align 4
  %.649 = load float, ptr %R9, align 4
  %.650 = load float, ptr %R7, align 4
  %fmul.16 = fmul float %.648, %.649
  %fadd.16 = fadd float %fmul.16, %.650
  %.651 = bitcast ptr %R8 to ptr
  store float %fadd.16, ptr %.651, align 4
  %.654 = load float, ptr %R11, align 4
  %.655 = load float, ptr %R10, align 4
  %.656 = load float, ptr %R8, align 4
  %fmul.17 = fmul float %.654, %.655
  %fadd.17 = fadd float %fmul.17, %.656
  %.657 = bitcast ptr %R8 to ptr
  store float %fadd.17, ptr %.657, align 4
  %.660 = load float, ptr %R13, align 4
  %.661 = load float, ptr %R12, align 4
  %.662 = load float, ptr %R8, align 4
  %fmul.18 = fmul float %.660, %.661
  %fadd.18 = fadd float %fmul.18, %.662
  %.663 = bitcast ptr %R8 to ptr
  store float %fadd.18, ptr %.663, align 4
  %.666 = load float, ptr %R15, align 4
  %.667 = load float, ptr %R14, align 4
  %.668 = load float, ptr %R8, align 4
  %fmul.19 = fmul float %.666, %.667
  %fadd.19 = fadd float %fmul.19, %.668
  %.669 = bitcast ptr %R8 to ptr
  store float %fadd.19, ptr %.669, align 4
  %.672 = load float, ptr %R17, align 4
  %.673 = load float, ptr %R16, align 4
  %.674 = load float, ptr %R8, align 4
  %fmul.20 = fmul float %.672, %.673
  %fadd.20 = fadd float %fmul.20, %.674
  %.675 = bitcast ptr %R8 to ptr
  store float %fadd.20, ptr %.675, align 4
  %.678 = load float, ptr %R19, align 4
  %.679 = load float, ptr %R18, align 4
  %.680 = load float, ptr %R8, align 4
  %fmul.21 = fmul float %.678, %.679
  %fadd.21 = fadd float %fmul.21, %.680
  %.681 = bitcast ptr %R8 to ptr
  store float %fadd.21, ptr %.681, align 4
  %.684 = load float, ptr %R21, align 4
  %.685 = load float, ptr %R20, align 4
  %.686 = load float, ptr %R8, align 4
  %fmul.22 = fmul float %.684, %.685
  %fadd.22 = fadd float %fmul.22, %.686
  %.687 = bitcast ptr %R8 to ptr
  store float %fadd.22, ptr %.687, align 4
  %.690 = load float, ptr %R23, align 4
  %.691 = load float, ptr %R22, align 4
  %.692 = load float, ptr %R8, align 4
  %fmul.23 = fmul float %.690, %.691
  %fadd.23 = fadd float %fmul.23, %.692
  %.693 = bitcast ptr %R7 to ptr
  store float %fadd.23, ptr %.693, align 4
  br label %.L_x_13

.L_x_13:                                          ; preds = %.L_x_11_split_0x0570, %.L_x_11
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_11 ], [ %.603, %.L_x_11_split_0x0570 ]
  %R6.3 = phi i32 [ %R6.1, %.L_x_11 ], [ %.638, %.L_x_11_split_0x0570 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_11 ], [ %add.14, %.L_x_11_split_0x0570 ]
  %R3.3 = phi i32 [ %R3.1, %.L_x_11 ], [ %add.18, %.L_x_11_split_0x0570 ]
  %cmp.7 = icmp ne i32 %R6.3, 0
  %.701 = or i1 %cmp.7, %.104
  %.706 = icmp ne i1 %.701, true
  br i1 %.706, label %.L_x_9, label %.L_x_10.preheader

.L_x_10.preheader:                                ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0100, %.L_x_13
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_13 ], [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %R6.0.ph = phi i32 [ %R6.3, %.L_x_13 ], [ %.86, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_13 ], [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %R3.0.ph = phi i32 [ %R3.3, %.L_x_13 ], [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  br label %.L_x_10

.L_x_10:                                          ; preds = %.L_x_10.preheader, %.L_x_10
  %UR4.0 = phi i32 [ %.767, %.L_x_10 ], [ %UR4.0.ph, %.L_x_10.preheader ]
  %R6.0 = phi i32 [ %.759, %.L_x_10 ], [ %R6.0.ph, %.L_x_10.preheader ]
  %UR5.0 = phi i32 [ %add.22, %.L_x_10 ], [ %UR5.0.ph, %.L_x_10.preheader ]
  %R3.0 = phi i32 [ %.826, %.L_x_10 ], [ %R3.0.ph, %.L_x_10.preheader ]
  %.709 = load i32, ptr %R2, align 4
  %zext.99 = zext i32 %.709 to i64
  %zext.100 = zext i32 %R3.0 to i64
  %shl.48 = shl i64 %zext.100, 32
  %or.48 = or i64 %shl.48, %zext.99
  %inttoptr_bytes.48 = inttoptr i64 %or.48 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.711 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.712 = bitcast ptr %R8 to ptr
  store float %.711, ptr %.712, align 4
  %zext.101 = zext i32 %UR4.0 to i64
  %zext.102 = zext i32 %UR5.0 to i64
  %shl.49 = shl i64 %zext.102, 32
  %or.49 = or i64 %shl.49, %zext.101
  %inttoptr_bytes.49 = inttoptr i64 %or.49 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.717 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.718 = bitcast ptr %R9 to ptr
  store float %.717, ptr %.718, align 4
  %.721 = load i32, ptr %R2, align 4
  %zext.103 = zext i32 %.721 to i64
  %zext.104 = zext i32 %R3.0 to i64
  %shl.50 = shl i64 %zext.104, 32
  %or.50 = or i64 %shl.50, %zext.103
  %ptr_plus_imm.44 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %ptr_plus_imm.44 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.723 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.724 = bitcast ptr %R11 to ptr
  store float %.723, ptr %.724, align 4
  %zext.105 = zext i32 %UR4.0 to i64
  %zext.106 = zext i32 %UR5.0 to i64
  %shl.51 = shl i64 %zext.106, 32
  %or.51 = or i64 %shl.51, %zext.105
  %ptr_plus_imm.45 = add i64 %or.51, 4
  %inttoptr_bytes.51 = inttoptr i64 %ptr_plus_imm.45 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.729 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.730 = bitcast ptr %R10 to ptr
  store float %.729, ptr %.730, align 4
  %.733 = load i32, ptr %R2, align 4
  %zext.107 = zext i32 %.733 to i64
  %zext.108 = zext i32 %R3.0 to i64
  %shl.52 = shl i64 %zext.108, 32
  %or.52 = or i64 %shl.52, %zext.107
  %ptr_plus_imm.46 = add i64 %or.52, 8
  %inttoptr_bytes.52 = inttoptr i64 %ptr_plus_imm.46 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.735 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.736 = bitcast ptr %R13 to ptr
  store float %.735, ptr %.736, align 4
  %zext.109 = zext i32 %UR4.0 to i64
  %zext.110 = zext i32 %UR5.0 to i64
  %shl.53 = shl i64 %zext.110, 32
  %or.53 = or i64 %shl.53, %zext.109
  %ptr_plus_imm.47 = add i64 %or.53, 8
  %inttoptr_bytes.53 = inttoptr i64 %ptr_plus_imm.47 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.741 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.742 = bitcast ptr %R12 to ptr
  store float %.741, ptr %.742, align 4
  %.745 = load i32, ptr %R2, align 4
  %zext.111 = zext i32 %.745 to i64
  %zext.112 = zext i32 %R3.0 to i64
  %shl.54 = shl i64 %zext.112, 32
  %or.54 = or i64 %shl.54, %zext.111
  %ptr_plus_imm.48 = add i64 %or.54, 12
  %inttoptr_bytes.54 = inttoptr i64 %ptr_plus_imm.48 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.747 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.748 = bitcast ptr %R15 to ptr
  store float %.747, ptr %.748, align 4
  %zext.113 = zext i32 %UR4.0 to i64
  %zext.114 = zext i32 %UR5.0 to i64
  %shl.55 = shl i64 %zext.114, 32
  %or.55 = or i64 %shl.55, %zext.113
  %ptr_plus_imm.49 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %ptr_plus_imm.49 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.753 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.754 = bitcast ptr %R14 to ptr
  store float %.753, ptr %.754, align 4
  %.758 = add i32 %R6.0, -4
  %.759 = add i32 %.758, 0
  %.763 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.764 = extractvalue { i32, i1 } %.763, 0
  %.765 = extractvalue { i32, i1 } %.763, 1
  %.766 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.764, i32 0)
  %.767 = extractvalue { i32, i1 } %.766, 0
  %.768 = extractvalue { i32, i1 } %.766, 1
  %.769 = or i1 %.765, %.768
  %.773 = load i32, ptr %R5, align 4
  %.774 = add i32 %.773, 4
  %.775 = add i32 %.774, 0
  store i32 %.775, ptr %R5, align 4
  %cmp.8 = icmp ne i32 %.759, 0
  %.782 = and i1 %cmp.8, true
  %.788 = xor i1 true, true
  %.789 = zext i1 %.769 to i32
  %.790 = zext i1 %.788 to i32
  %add.19 = add i32 0, %UR5.0
  %add.20 = add i32 %add.19, 0
  %add.21 = add i32 %add.20, %.789
  %add.22 = add i32 %add.21, %.790
  %.793 = load float, ptr %R8, align 4
  %.794 = load float, ptr %R9, align 4
  %.795 = load float, ptr %R7, align 4
  %fmul.24 = fmul float %.793, %.794
  %fadd.24 = fadd float %fmul.24, %.795
  %.796 = bitcast ptr %R8 to ptr
  store float %fadd.24, ptr %.796, align 4
  %.799 = load i32, ptr %R2, align 4
  %.800 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.799, i32 16)
  %.801 = extractvalue { i32, i1 } %.800, 0
  %.802 = extractvalue { i32, i1 } %.800, 1
  %.803 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.801, i32 0)
  %.804 = extractvalue { i32, i1 } %.803, 0
  %.805 = extractvalue { i32, i1 } %.803, 1
  %.806 = or i1 %.802, %.805
  store i32 %.804, ptr %R9, align 4
  %.810 = load i32, ptr %R9, align 4
  %mul.6 = mul i32 0, 0
  %add.23 = add i32 %mul.6, %.810
  store i32 %add.23, ptr %R2, align 4
  %.813 = load float, ptr %R11, align 4
  %.814 = load float, ptr %R10, align 4
  %.815 = load float, ptr %R8, align 4
  %fmul.25 = fmul float %.813, %.814
  %fadd.25 = fadd float %fmul.25, %.815
  %.816 = bitcast ptr %R8 to ptr
  store float %fadd.25, ptr %.816, align 4
  %.821 = xor i1 true, true
  %.822 = zext i1 %.806 to i32
  %.823 = zext i1 %.821 to i32
  %add.24 = add i32 0, %R3.0
  %add.25 = add i32 %add.24, 0
  %add.26 = add i32 %add.25, %.822
  %add.27 = add i32 %add.26, %.823
  store i32 %add.27, ptr %R10, align 4
  %.826 = load i32, ptr %R10, align 4
  %.829 = load float, ptr %R13, align 4
  %.830 = load float, ptr %R12, align 4
  %.831 = load float, ptr %R8, align 4
  %fmul.26 = fmul float %.829, %.830
  %fadd.26 = fadd float %fmul.26, %.831
  %.832 = bitcast ptr %R8 to ptr
  store float %fadd.26, ptr %.832, align 4
  %.835 = load float, ptr %R15, align 4
  %.836 = load float, ptr %R14, align 4
  %.837 = load float, ptr %R8, align 4
  %fmul.27 = fmul float %.835, %.836
  %fadd.27 = fadd float %fmul.27, %.837
  %.838 = bitcast ptr %R7 to ptr
  store float %fadd.27, ptr %.838, align 4
  %.842 = icmp eq i1 %.782, true
  br i1 %.842, label %.L_x_10, label %.L_x_9.loopexit

.L_x_9.loopexit:                                  ; preds = %.L_x_10
  br label %.L_x_9

.L_x_9:                                           ; preds = %.L_x_9.loopexit, %.L_x_13, %.text._Z8fc_layerPfS_S_S_ii_split_0x00a0
  %cmp.9 = icmp ne i32 %.61, 0
  %.849 = and i1 %cmp.9, true
  %.854 = icmp ne i1 %.849, true
  br i1 %.854, label %.L_x_8, label %.L_x_9_split_0x0900

.L_x_9_split_0x0900:                              ; preds = %.L_x_9
  store i32 4, ptr %R8, align 4
  %.860 = load i32, ptr %R5, align 4
  %mul.7 = mul i32 %add, %Arg_4
  %add.28 = add i32 %mul.7, %.860
  store i32 %add.28, ptr %R2, align 4
  %.863 = load i32, ptr %R2, align 4
  %.864 = load i32, ptr %R8, align 4
  %zext.115 = zext i32 %.863 to i64
  %zext.116 = zext i32 %.864 to i64
  %mul.8 = mul i64 %zext.115, %zext.116
  %.865 = ptrtoint ptr %Arg_1 to i64
  %add.29 = add i64 %mul.8, %.865
  %.866 = and i64 %add.29, -4294967296
  %.867 = lshr i64 %.866, 32
  %trunc32.4 = trunc i64 %.867 to i32
  %trunc32.5 = trunc i64 %add.29 to i32
  store i32 %trunc32.5, ptr %R2, align 4
  %.871 = load i32, ptr %R5, align 4
  %.872 = load i32, ptr %R8, align 4
  %zext.117 = zext i32 %.871 to i64
  %zext.118 = zext i32 %.872 to i64
  %mul.9 = mul i64 %zext.117, %zext.118
  %.873 = ptrtoint ptr %Arg_0 to i64
  %add.30 = add i64 %mul.9, %.873
  %.874 = and i64 %add.30, -4294967296
  %.875 = lshr i64 %.874, 32
  %trunc32.6 = trunc i64 %.875 to i32
  %trunc32.7 = trunc i64 %add.30 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  store i32 %trunc32.6, ptr %R9, align 4
  %.879 = load i32, ptr %R2, align 4
  br label %.L_x_14

.L_x_14:                                          ; preds = %.L_x_14, %.L_x_9_split_0x0900
  %R6.4 = phi i32 [ %.879, %.L_x_9_split_0x0900 ], [ %.916, %.L_x_14 ]
  %R4.0 = phi i32 [ %.61, %.L_x_9_split_0x0900 ], [ %.900, %.L_x_14 ]
  %R3.4 = phi i32 [ %trunc32.4, %.L_x_9_split_0x0900 ], [ %add.35, %.L_x_14 ]
  %mul.10 = mul i32 0, 0
  %add.31 = add i32 %mul.10, %R6.4
  store i32 %add.31, ptr %R2, align 4
  %.886 = load i32, ptr %R8, align 4
  %zext.119 = zext i32 %.886 to i64
  %.887 = load i32, ptr %R9, align 4
  %zext.120 = zext i32 %.887 to i64
  %shl.56 = shl i64 %zext.120, 32
  %or.56 = or i64 %shl.56, %zext.119
  %inttoptr_bytes.56 = inttoptr i64 %or.56 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.888 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.889 = bitcast ptr %R5 to ptr
  store float %.888, ptr %.889, align 4
  %.892 = load i32, ptr %R2, align 4
  %zext.121 = zext i32 %.892 to i64
  %zext.122 = zext i32 %R3.4 to i64
  %shl.57 = shl i64 %zext.122, 32
  %or.57 = or i64 %shl.57, %zext.121
  %inttoptr_bytes.57 = inttoptr i64 %or.57 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.894 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.895 = bitcast ptr %R2 to ptr
  store float %.894, ptr %.895, align 4
  %.899 = add i32 %R4.0, -1
  %.900 = add i32 %.899, 0
  %cmp.10 = icmp ne i32 %.900, 0
  %.907 = and i1 %cmp.10, true
  %.912 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R6.4, i32 4)
  %.913 = extractvalue { i32, i1 } %.912, 0
  %.914 = extractvalue { i32, i1 } %.912, 1
  %.915 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.913, i32 0)
  %.916 = extractvalue { i32, i1 } %.915, 0
  %.917 = extractvalue { i32, i1 } %.915, 1
  %.918 = or i1 %.914, %.917
  %.922 = load i32, ptr %R8, align 4
  %.923 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.922, i32 4)
  %.924 = extractvalue { i32, i1 } %.923, 0
  %.925 = extractvalue { i32, i1 } %.923, 1
  %.926 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.924, i32 0)
  %.927 = extractvalue { i32, i1 } %.926, 0
  %.928 = extractvalue { i32, i1 } %.926, 1
  %.929 = or i1 %.925, %.928
  store i32 %.927, ptr %R8, align 4
  %.935 = xor i1 true, true
  %.936 = zext i1 %.918 to i32
  %.937 = zext i1 %.935 to i32
  %add.32 = add i32 0, %R3.4
  %add.33 = add i32 %add.32, 0
  %add.34 = add i32 %add.33, %.936
  %add.35 = add i32 %add.34, %.937
  %.940 = load i32, ptr %R9, align 4
  %.942 = xor i1 true, true
  %.943 = zext i1 %.929 to i32
  %.944 = zext i1 %.942 to i32
  %add.36 = add i32 0, %.940
  %add.37 = add i32 %add.36, 0
  %add.38 = add i32 %add.37, %.943
  %add.39 = add i32 %add.38, %.944
  store i32 %add.39, ptr %R9, align 4
  %.947 = load float, ptr %R2, align 4
  %.948 = load float, ptr %R5, align 4
  %.949 = load float, ptr %R7, align 4
  %fmul.28 = fmul float %.947, %.948
  %fadd.28 = fadd float %fmul.28, %.949
  %.950 = bitcast ptr %R7 to ptr
  store float %fadd.28, ptr %.950, align 4
  %.954 = icmp eq i1 %.907, true
  br i1 %.954, label %.L_x_14, label %.L_x_8.loopexit

.L_x_8.loopexit:                                  ; preds = %.L_x_14
  br label %.L_x_8

.L_x_8:                                           ; preds = %.L_x_8.loopexit, %.L_x_9, %.text._Z8fc_layerPfS_S_S_ii_split_0x0060
  store i32 4, ptr %R5, align 4
  %.960 = load i32, ptr %R5, align 4
  %zext.123 = zext i32 %add to i64
  %zext.124 = zext i32 %.960 to i64
  %mul.11 = mul i64 %zext.123, %zext.124
  %.961 = ptrtoint ptr %Arg_2 to i64
  %add.40 = add i64 %mul.11, %.961
  %.962 = and i64 %add.40, -4294967296
  %.963 = lshr i64 %.962, 32
  %trunc32.8 = trunc i64 %.963 to i32
  %trunc32.9 = trunc i64 %add.40 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  %.967 = load i32, ptr %R2, align 4
  %zext.125 = zext i32 %.967 to i64
  %zext.126 = zext i32 %trunc32.8 to i64
  %shl.58 = shl i64 %zext.126, 32
  %or.58 = or i64 %shl.58, %zext.125
  %inttoptr_bytes.58 = inttoptr i64 %or.58 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.969 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.970 = bitcast ptr %R2 to ptr
  store float %.969, ptr %.970, align 4
  %.974 = load i32, ptr %R5, align 4
  %zext.127 = zext i32 %add to i64
  %zext.128 = zext i32 %.974 to i64
  %mul.12 = mul i64 %zext.127, %zext.128
  %.975 = ptrtoint ptr %Arg_3 to i64
  %add.41 = add i64 %mul.12, %.975
  %.976 = and i64 %add.41, -4294967296
  %.977 = lshr i64 %.976, 32
  %trunc32.10 = trunc i64 %.977 to i32
  %trunc32.11 = trunc i64 %add.41 to i32
  store i32 %trunc32.10, ptr %R5, align 4
  %.981 = load float, ptr %R2, align 4
  %.982 = load float, ptr %R7, align 4
  %fadd.29 = fadd float %.981, %.982
  %.983 = bitcast ptr %R7 to ptr
  store float %fadd.29, ptr %.983, align 4
  %.986 = load float, ptr %R7, align 4
  %zext.129 = zext i32 %trunc32.11 to i64
  %.988 = load i32, ptr %R5, align 4
  %zext.130 = zext i32 %.988 to i64
  %shl.59 = shl i64 %zext.130, 32
  %or.59 = or i64 %shl.59, %zext.129
  %inttoptr_bytes.59 = inttoptr i64 %or.59 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.986, ptr addrspace(1) %ptr_cast_for_access.59, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z8fc_layerPfS_S_S_ii, %.L_x_8
  ret void
}

define ptx_kernel void @_Z10max_pool2dPfS_iii(ptr %Arg_0, ptr %Arg_1, i32 %Arg_2, i32 %Arg_3, i32 %Arg_4) {
Entry_.text._Z10max_pool2dPfS_iii:
  %R0 = alloca i32, align 4
  %R2 = alloca i32, align 4
  %R3 = alloca i32, align 4
  %R4 = alloca i32, align 4
  %R11 = alloca i32, align 4
  %R6 = alloca i32, align 4
  %R8 = alloca i32, align 4
  %.15 = icmp sge i32 %Arg_3, 0
  %.16 = sub i32 0, %Arg_3
  %iabs = select i1 %.15, i32 %Arg_3, i32 %.16
  %nvvm_ctaid_y = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  %.26 = xor i32 %Arg_2, undef
  store i32 %iabs, ptr %R0, align 4
  %nvvm_ctaid_z = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.z()
  %cmp = icmp sle i32 0, %.26
  %.38 = and i1 %cmp, true
  %.42 = load float, ptr %R0, align 4
  %.43 = fdiv float 1.000000e+00, %.42
  %.44 = bitcast ptr %R0 to ptr
  store float %.43, ptr %.44, align 4
  %.47 = load i32, ptr %R0, align 4
  %.48 = add i32 %.47, 268435454
  %.49 = add i32 %.48, 0
  store i32 %.49, ptr %R2, align 4
  %.52 = load float, ptr %R2, align 4
  %.53 = bitcast ptr %R3 to ptr
  store float %.52, ptr %.53, align 4
  %mul.1 = mul i32 0, 0
  %add.1 = add i32 %mul.1, 0
  store i32 %add.1, ptr %R2, align 4
  %.58 = load i32, ptr %R3, align 4
  %.59 = sub i32 0, %.58
  %mul.2 = mul i32 0, 0
  %add.2 = add i32 %mul.2, %.59
  store i32 %add.2, ptr %R4, align 4
  %.62 = load i32, ptr %R4, align 4
  %mul.3 = mul i32 %.62, %iabs
  %add.3 = add i32 %mul.3, 0
  %.66 = icmp sge i32 %Arg_2, 0
  %.67 = sub i32 0, %Arg_2
  %iabs.1 = select i1 %.66, i32 %Arg_2, i32 %.67
  store i32 %iabs.1, ptr %R4, align 4
  %.70 = load i32, ptr %R3, align 4
  %.72 = load i32, ptr %R2, align 4
  %mul.4 = mul i32 %.70, %add.3
  %add.4 = add i32 %mul.4, %.72
  store i32 %add.4, ptr %R3, align 4
  %nvvm_ctaid_x = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  store i32 %nvvm_ctaid_x, ptr %R2, align 4
  %.77 = load i32, ptr %R3, align 4
  %.78 = load i32, ptr %R4, align 4
  %mul.5 = mul i32 %.77, %.78
  %add.5 = add i32 %mul.5, 0
  store i32 %add.5, ptr %R3, align 4
  %nvvm_threadidx_x = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %.83 = load i32, ptr %R3, align 4
  %.84 = sub i32 0, %.83
  %mul.6 = mul i32 0, 0
  %add.6 = add i32 %mul.6, %.84
  store i32 %add.6, ptr %R0, align 4
  %.88 = load i32, ptr %R0, align 4
  %.89 = load i32, ptr %R4, align 4
  %mul.7 = mul i32 %iabs, %.88
  %add.7 = add i32 %mul.7, %.89
  store i32 %add.7, ptr %R0, align 4
  %.93 = load i32, ptr %R0, align 4
  %cmp.1 = icmp sgt i32 %iabs, %.93
  %.97 = and i1 %cmp.1, true
  %.102 = icmp ne i1 %.97, true
  br i1 %.102, label %.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160, label %.text._Z10max_pool2dPfS_iii_split_0x0170

.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160: ; preds = %Entry_.text._Z10max_pool2dPfS_iii
  %.105 = load i32, ptr %R0, align 4
  %.107 = sub i32 0, %iabs
  %.108 = add i32 %.105, %.107
  %.109 = add i32 %.108, 0
  store i32 %.109, ptr %R0, align 4
  br label %.text._Z10max_pool2dPfS_iii_split_0x0170

.text._Z10max_pool2dPfS_iii_split_0x0170:         ; preds = %.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160, %Entry_.text._Z10max_pool2dPfS_iii
  %.115 = icmp ne i1 %.97, true
  br i1 %.115, label %.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170, label %.text._Z10max_pool2dPfS_iii_split_0x0180

.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170: ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0170
  %.118 = load i32, ptr %R3, align 4
  %.119 = add i32 %.118, 1
  %.120 = add i32 %.119, 0
  store i32 %.120, ptr %R3, align 4
  br label %.text._Z10max_pool2dPfS_iii_split_0x0180

.text._Z10max_pool2dPfS_iii_split_0x0180:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170, %.text._Z10max_pool2dPfS_iii_split_0x0170
  %.125 = load i32, ptr %R0, align 4
  %cmp.2 = icmp sge i32 %.125, %iabs
  %.130 = and i1 %cmp.2, true
  %.134 = load i32, ptr %R2, align 4
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %mul.8 = mul i32 %.134, %nvvm_blockdim_x
  %add.8 = add i32 %mul.8, %nvvm_threadidx_x
  store i32 %add.8, ptr %R0, align 4
  %nvvm_threadidx_y = call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %cmp.3 = icmp ne i32 0, %Arg_3
  %.143 = and i1 %cmp.3, true
  %.148 = icmp eq i1 %.130, true
  br i1 %.148, label %.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0, label %.text._Z10max_pool2dPfS_iii_split_0x01d0

.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0: ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0180
  %.151 = load i32, ptr %R3, align 4
  %.152 = add i32 %.151, 1
  %.153 = add i32 %.152, 0
  store i32 %.153, ptr %R3, align 4
  br label %.text._Z10max_pool2dPfS_iii_split_0x01d0

.text._Z10max_pool2dPfS_iii_split_0x01d0:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0, %.text._Z10max_pool2dPfS_iii_split_0x0180
  %.158 = load i32, ptr %R3, align 4
  %mul.9 = mul i32 0, 0
  %add.9 = add i32 %mul.9, %.158
  %.162 = icmp ne i1 %.38, true
  br i1 %.162, label %.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0, label %.text._Z10max_pool2dPfS_iii_split_0x01f0

.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0: ; preds = %.text._Z10max_pool2dPfS_iii_split_0x01d0
  %.166 = sub i32 0, %add.9
  %mul.10 = mul i32 0, 0
  %add.10 = add i32 %mul.10, %.166
  br label %.text._Z10max_pool2dPfS_iii_split_0x01f0

.text._Z10max_pool2dPfS_iii_split_0x01f0:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0, %.text._Z10max_pool2dPfS_iii_split_0x01d0
  %R21.0 = phi i32 [ %add.10, %.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0 ], [ %add.9, %.text._Z10max_pool2dPfS_iii_split_0x01d0 ]
  %.172 = icmp ne i1 %.143, true
  br i1 %.172, label %.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0, label %.text._Z10max_pool2dPfS_iii_split_0x0200

.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0: ; preds = %.text._Z10max_pool2dPfS_iii_split_0x01f0
  %.176 = xor i32 %Arg_3, -1
  br label %.text._Z10max_pool2dPfS_iii_split_0x0200

.text._Z10max_pool2dPfS_iii_split_0x0200:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0, %.text._Z10max_pool2dPfS_iii_split_0x01f0
  %R21.1 = phi i32 [ %.176, %.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0 ], [ %R21.0, %.text._Z10max_pool2dPfS_iii_split_0x01f0 ]
  %nvvm_blockdim_y = call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %mul.11 = mul i32 %nvvm_ctaid_y, %nvvm_blockdim_y
  %add.11 = add i32 %mul.11, %nvvm_threadidx_y
  %.185 = load i32, ptr %R0, align 4
  %cmp.4 = icmp sge i32 %.185, %R21.1
  %.190 = and i1 %cmp.4, true
  %cmp.5 = icmp sge i32 %add.11, %R21.1
  %.199 = or i1 %cmp.5, %.190
  %cmp.6 = icmp sge i32 %nvvm_ctaid_z, %Arg_4
  %.207 = or i1 %cmp.6, %.199
  %.212 = icmp eq i1 %.207, true
  br i1 %.212, label %ExitFunction, label %.text._Z10max_pool2dPfS_iii_split_0x0250

.text._Z10max_pool2dPfS_iii_split_0x0250:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0200
  %mul.12 = mul i32 0, 0
  %add.12 = add i32 %mul.12, %Arg_3
  store i32 -8388608, ptr %R11, align 4
  %cmp.7 = icmp sge i32 %add.12, 1
  %.225 = and i1 %cmp.7, true
  %.230 = icmp ne i1 %.225, true
  br i1 %.230, label %.L_x_16, label %.text._Z10max_pool2dPfS_iii_split_0x0290

.text._Z10max_pool2dPfS_iii_split_0x0290:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0250
  %mul.13 = mul i32 %nvvm_ctaid_z, %Arg_2
  %add.13 = add i32 %mul.13, 0
  store i32 %add.13, ptr %R3, align 4
  %.237 = add i32 %add.12, -1
  %.238 = add i32 %.237, 0
  store i32 %.238, ptr %R2, align 4
  %.241 = load i32, ptr %R0, align 4
  %mul.14 = mul i32 %.241, %Arg_3
  %add.14 = add i32 %mul.14, 0
  %.246 = and i32 %add.12, 3
  %.250 = load i32, ptr %R3, align 4
  %mul.15 = mul i32 %add.11, %Arg_3
  %add.15 = add i32 %mul.15, %.250
  %.253 = load i32, ptr %R2, align 4
  %cmp.8 = icmp sge i32 %.253, 3
  %.257 = and i1 %cmp.8, true
  %mul.16 = mul i32 0, 0
  %add.16 = add i32 %mul.16, -8388608
  store i32 %add.16, ptr %R11, align 4
  %.264 = sub i32 0, %Arg_3
  %.265 = add i32 %.246, %.264
  %.266 = add i32 %.265, 0
  %mul.17 = mul i32 0, 0
  %add.17 = add i32 %mul.17, 0
  %mul.18 = mul i32 %add.15, %Arg_2
  %add.18 = add i32 %mul.18, %add.14
  br label %.L_x_20

.L_x_20:                                          ; preds = %.L_x_19, %.text._Z10max_pool2dPfS_iii_split_0x0290
  %R16.0 = phi i32 [ %add.17, %.text._Z10max_pool2dPfS_iii_split_0x0290 ], [ %.571, %.L_x_19 ]
  %cmp.9 = icmp ne i32 %.246, 0
  %.283 = and i1 %cmp.9, true
  %.288 = icmp ne i1 %.257, true
  br i1 %.288, label %.L_x_17, label %.L_x_20_split_0x0360

.L_x_20_split_0x0360:                             ; preds = %.L_x_20
  %mul.19 = mul i32 %add.18, 1
  %add.19 = add i32 %mul.19, %R16.0
  br label %.L_x_18

.L_x_18:                                          ; preds = %.L_x_18, %.L_x_20_split_0x0360
  %UR4.1 = phi i32 [ 0, %.L_x_20_split_0x0360 ], [ %.358, %.L_x_18 ]
  %R17.0 = phi i32 [ %add.19, %.L_x_20_split_0x0360 ], [ %add.25, %.L_x_18 ]
  store i32 4, ptr %R2, align 4
  %mul.20 = mul i32 0, 0
  %add.20 = add i32 %mul.20, %Arg_2
  %.304 = load i32, ptr %R2, align 4
  %zext = zext i32 %R17.0 to i64
  %zext.1 = zext i32 %.304 to i64
  %mul.21 = mul i64 %zext, %zext.1
  %.305 = ptrtoint ptr %Arg_0 to i64
  %add.21 = add i64 %mul.21, %.305
  %.306 = and i64 %add.21, -4294967296
  %.307 = lshr i64 %.306, 32
  %trunc32 = trunc i64 %.307 to i32
  %trunc32.1 = trunc i64 %add.21 to i32
  store i32 %trunc32.1, ptr %R2, align 4
  store i32 %trunc32, ptr %R3, align 4
  %.312 = load i32, ptr %R2, align 4
  %zext.2 = zext i32 %add.20 to i64
  %zext.3 = zext i32 4 to i64
  %mul.22 = mul i64 %zext.2, %zext.3
  %zext.4 = zext i32 %.312 to i64
  %add.22 = add i64 %mul.22, %zext.4
  %.313 = and i64 %add.22, -4294967296
  %.314 = lshr i64 %.313, 32
  %trunc32.2 = trunc i64 %.314 to i32
  %trunc32.3 = trunc i64 %add.22 to i32
  store i32 %trunc32.3, ptr %R4, align 4
  %.318 = load i32, ptr %R2, align 4
  %zext.5 = zext i32 %.318 to i64
  %.319 = load i32, ptr %R3, align 4
  %zext.6 = zext i32 %.319 to i64
  %shl = shl i64 %zext.6, 32
  %or = or i64 %shl, %zext.5
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.320 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.321 = bitcast ptr %R2 to ptr
  store float %.320, ptr %.321, align 4
  %.325 = load i32, ptr %R4, align 4
  %zext.7 = zext i32 %add.20 to i64
  %zext.8 = zext i32 4 to i64
  %mul.23 = mul i64 %zext.7, %zext.8
  %zext.9 = zext i32 %.325 to i64
  %add.23 = add i64 %mul.23, %zext.9
  %.326 = and i64 %add.23, -4294967296
  %.327 = lshr i64 %.326, 32
  %trunc32.4 = trunc i64 %.327 to i32
  %trunc32.5 = trunc i64 %add.23 to i32
  store i32 %trunc32.5, ptr %R6, align 4
  %.331 = load i32, ptr %R4, align 4
  %zext.10 = zext i32 %.331 to i64
  %zext.11 = zext i32 %trunc32.2 to i64
  %shl.1 = shl i64 %zext.11, 32
  %or.1 = or i64 %shl.1, %zext.10
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.333 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.334 = bitcast ptr %R4 to ptr
  store float %.333, ptr %.334, align 4
  %.338 = load i32, ptr %R6, align 4
  %zext.12 = zext i32 %add.20 to i64
  %zext.13 = zext i32 4 to i64
  %mul.24 = mul i64 %zext.12, %zext.13
  %zext.14 = zext i32 %.338 to i64
  %add.24 = add i64 %mul.24, %zext.14
  %.339 = and i64 %add.24, -4294967296
  %.340 = lshr i64 %.339, 32
  %trunc32.6 = trunc i64 %.340 to i32
  %trunc32.7 = trunc i64 %add.24 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  %.344 = load i32, ptr %R6, align 4
  %zext.15 = zext i32 %.344 to i64
  %zext.16 = zext i32 %trunc32.4 to i64
  %shl.2 = shl i64 %zext.16, 32
  %or.2 = or i64 %shl.2, %zext.15
  %inttoptr_bytes.2 = inttoptr i64 %or.2 to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.346 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.347 = bitcast ptr %R6 to ptr
  store float %.346, ptr %.347, align 4
  %.350 = load i32, ptr %R8, align 4
  %zext.17 = zext i32 %.350 to i64
  %zext.18 = zext i32 %trunc32.6 to i64
  %shl.3 = shl i64 %zext.18, 32
  %or.3 = or i64 %shl.3, %zext.17
  %inttoptr_bytes.3 = inttoptr i64 %or.3 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.352 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.353 = bitcast ptr %R8 to ptr
  store float %.352, ptr %.353, align 4
  %.357 = add i32 %UR4.1, 4
  %.358 = add i32 %.357, 0
  %.363 = add i32 %.266, %.358
  %.364 = add i32 %.363, 0
  %cmp.10 = icmp ne i32 %.364, 0
  %.371 = and i1 %cmp.10, true
  %mul.25 = mul i32 %add.20, 4
  %add.25 = add i32 %mul.25, %R17.0
  %.379 = load float, ptr %R2, align 4
  %.380 = load float, ptr %R11, align 4
  %.381 = xor i1 true, true
  %.382 = fcmp olt float %.379, %.380
  %.383 = fcmp ogt float %.379, %.380
  %mnmx_min = select i1 %.382, float %.379, float %.380
  %mnmx_max = select i1 %.383, float %.379, float %.380
  %mnmx_final = select i1 %.381, float %mnmx_min, float %mnmx_max
  %.384 = bitcast ptr %R11 to ptr
  store float %mnmx_final, ptr %.384, align 4
  %.387 = load float, ptr %R11, align 4
  %.388 = load float, ptr %R4, align 4
  %.389 = xor i1 true, true
  %.390 = fcmp olt float %.387, %.388
  %.391 = fcmp ogt float %.387, %.388
  %mnmx_min.1 = select i1 %.390, float %.387, float %.388
  %mnmx_max.1 = select i1 %.391, float %.387, float %.388
  %mnmx_final.1 = select i1 %.389, float %mnmx_min.1, float %mnmx_max.1
  %.392 = bitcast ptr %R11 to ptr
  store float %mnmx_final.1, ptr %.392, align 4
  %.395 = load float, ptr %R11, align 4
  %.396 = load float, ptr %R6, align 4
  %.397 = xor i1 true, true
  %.398 = fcmp olt float %.395, %.396
  %.399 = fcmp ogt float %.395, %.396
  %mnmx_min.2 = select i1 %.398, float %.395, float %.396
  %mnmx_max.2 = select i1 %.399, float %.395, float %.396
  %mnmx_final.2 = select i1 %.397, float %mnmx_min.2, float %mnmx_max.2
  %.400 = bitcast ptr %R11 to ptr
  store float %mnmx_final.2, ptr %.400, align 4
  %.403 = load float, ptr %R11, align 4
  %.404 = load float, ptr %R8, align 4
  %.405 = xor i1 true, true
  %.406 = fcmp olt float %.403, %.404
  %.407 = fcmp ogt float %.403, %.404
  %mnmx_min.3 = select i1 %.406, float %.403, float %.404
  %mnmx_max.3 = select i1 %.407, float %.403, float %.404
  %mnmx_final.3 = select i1 %.405, float %mnmx_min.3, float %mnmx_max.3
  %.408 = bitcast ptr %R11 to ptr
  store float %mnmx_final.3, ptr %.408, align 4
  %.412 = icmp eq i1 %.371, true
  br i1 %.412, label %.L_x_18, label %.L_x_17.loopexit

.L_x_17.loopexit:                                 ; preds = %.L_x_18
  br label %.L_x_17

.L_x_17:                                          ; preds = %.L_x_17.loopexit, %.L_x_20
  %UR4.0 = phi i32 [ 0, %.L_x_20 ], [ %.358, %.L_x_17.loopexit ]
  %mul.26 = mul i32 %add.14, 1
  %add.26 = add i32 %mul.26, %R16.0
  store i32 %add.26, ptr %R4, align 4
  %.420 = icmp ne i1 %.283, true
  br i1 %.420, label %.L_x_19, label %.L_x_17_split_0x04d0

.L_x_17_split_0x04d0:                             ; preds = %.L_x_17
  %.425 = add i32 %add.15, %UR4.0
  %.426 = add i32 %.425, 0
  %.432 = load i32, ptr %R4, align 4
  %mul.27 = mul i32 %.426, %Arg_2
  %add.27 = add i32 %mul.27, %.432
  store i32 %add.27, ptr %R2, align 4
  %.435 = load i32, ptr %R2, align 4
  %zext.19 = zext i32 %.435 to i64
  %zext.20 = zext i32 4 to i64
  %mul.28 = mul i64 %zext.19, %zext.20
  %.437 = ptrtoint ptr %Arg_0 to i64
  %add.28 = add i64 %mul.28, %.437
  %.438 = and i64 %add.28, -4294967296
  %.439 = lshr i64 %.438, 32
  %trunc32.8 = trunc i64 %.439 to i32
  %trunc32.9 = trunc i64 %add.28 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  store i32 %trunc32.8, ptr %R3, align 4
  %.443 = load i32, ptr %R2, align 4
  %zext.21 = zext i32 %.443 to i64
  %.444 = load i32, ptr %R3, align 4
  %zext.22 = zext i32 %.444 to i64
  %shl.4 = shl i64 %zext.22, 32
  %or.4 = or i64 %shl.4, %zext.21
  %inttoptr_bytes.4 = inttoptr i64 %or.4 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.445 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.446 = bitcast ptr %R2 to ptr
  store float %.445, ptr %.446, align 4
  %cmp.11 = icmp ne i32 %.246, 1
  %.453 = and i1 %cmp.11, true
  %.457 = load float, ptr %R11, align 4
  %.458 = load float, ptr %R2, align 4
  %.459 = xor i1 true, true
  %.460 = fcmp olt float %.457, %.458
  %.461 = fcmp ogt float %.457, %.458
  %mnmx_min.4 = select i1 %.460, float %.457, float %.458
  %mnmx_max.4 = select i1 %.461, float %.457, float %.458
  %mnmx_final.4 = select i1 %.459, float %mnmx_min.4, float %mnmx_max.4
  %.462 = bitcast ptr %R11 to ptr
  store float %mnmx_final.4, ptr %.462, align 4
  %.466 = icmp ne i1 %.453, true
  br i1 %.466, label %.L_x_19, label %.L_x_17_split_0x0550

.L_x_17_split_0x0550:                             ; preds = %.L_x_17_split_0x04d0
  %cmp.12 = icmp ne i32 %.246, 2
  %.473 = and i1 %cmp.12, true
  %.478 = add i32 %.426, 1
  %.479 = add i32 %.478, 0
  store i32 %.479, ptr %R2, align 4
  %.482 = load i32, ptr %R2, align 4
  %.483 = load i32, ptr %R4, align 4
  %mul.29 = mul i32 %.482, %Arg_2
  %add.29 = add i32 %mul.29, %.483
  store i32 %add.29, ptr %R2, align 4
  %.487 = icmp eq i1 %.473, true
  br i1 %.487, label %.L_x_17_split_0x0550_conditionalExpr_0x0580, label %.L_x_17_split_0x0590

.L_x_17_split_0x0550_conditionalExpr_0x0580:      ; preds = %.L_x_17_split_0x0550
  %.491 = add i32 %.426, 2
  %.492 = add i32 %.491, 0
  store i32 %.492, ptr %R3, align 4
  br label %.L_x_17_split_0x0590

.L_x_17_split_0x0590:                             ; preds = %.L_x_17_split_0x0550_conditionalExpr_0x0580, %.L_x_17_split_0x0550
  %.498 = icmp eq i1 %.473, true
  br i1 %.498, label %.L_x_17_split_0x0590_conditionalExpr_0x0590, label %.L_x_17_split_0x05a0

.L_x_17_split_0x0590_conditionalExpr_0x0590:      ; preds = %.L_x_17_split_0x0590
  %.501 = load i32, ptr %R3, align 4
  %.502 = load i32, ptr %R4, align 4
  %mul.30 = mul i32 %.501, %Arg_2
  %add.30 = add i32 %mul.30, %.502
  store i32 %add.30, ptr %R4, align 4
  br label %.L_x_17_split_0x05a0

.L_x_17_split_0x05a0:                             ; preds = %.L_x_17_split_0x0590_conditionalExpr_0x0590, %.L_x_17_split_0x0590
  %.507 = load i32, ptr %R2, align 4
  %zext.23 = zext i32 %.507 to i64
  %zext.24 = zext i32 4 to i64
  %mul.31 = mul i64 %zext.23, %zext.24
  %.509 = ptrtoint ptr %Arg_0 to i64
  %add.31 = add i64 %mul.31, %.509
  %.510 = and i64 %add.31, -4294967296
  %.511 = lshr i64 %.510, 32
  %trunc32.10 = trunc i64 %.511 to i32
  %trunc32.11 = trunc i64 %add.31 to i32
  store i32 %trunc32.11, ptr %R2, align 4
  store i32 %trunc32.10, ptr %R3, align 4
  %.516 = icmp eq i1 %.473, true
  br i1 %.516, label %.L_x_17_split_0x05a0_conditionalExpr_0x05b0, label %.L_x_17_split_0x05c0

.L_x_17_split_0x05a0_conditionalExpr_0x05b0:      ; preds = %.L_x_17_split_0x05a0
  %.519 = load i32, ptr %R4, align 4
  %zext.25 = zext i32 %.519 to i64
  %zext.26 = zext i32 4 to i64
  %mul.32 = mul i64 %zext.25, %zext.26
  %.521 = ptrtoint ptr %Arg_0 to i64
  %add.32 = add i64 %mul.32, %.521
  %.522 = and i64 %add.32, -4294967296
  %.523 = lshr i64 %.522, 32
  %trunc32.12 = trunc i64 %.523 to i32
  %trunc32.13 = trunc i64 %add.32 to i32
  store i32 %trunc32.13, ptr %R4, align 4
  br label %.L_x_17_split_0x05c0

.L_x_17_split_0x05c0:                             ; preds = %.L_x_17_split_0x05a0_conditionalExpr_0x05b0, %.L_x_17_split_0x05a0
  %R5.0 = phi i32 [ %trunc32.12, %.L_x_17_split_0x05a0_conditionalExpr_0x05b0 ], [ %.426, %.L_x_17_split_0x05a0 ]
  %.529 = load i32, ptr %R2, align 4
  %zext.27 = zext i32 %.529 to i64
  %.530 = load i32, ptr %R3, align 4
  %zext.28 = zext i32 %.530 to i64
  %shl.5 = shl i64 %zext.28, 32
  %or.5 = or i64 %shl.5, %zext.27
  %inttoptr_bytes.5 = inttoptr i64 %or.5 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.531 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.532 = bitcast ptr %R2 to ptr
  store float %.531, ptr %.532, align 4
  %.536 = icmp eq i1 %.473, true
  br i1 %.536, label %.L_x_17_split_0x05c0_conditionalExpr_0x05d0, label %.L_x_17_split_0x05e0

.L_x_17_split_0x05c0_conditionalExpr_0x05d0:      ; preds = %.L_x_17_split_0x05c0
  %.539 = load i32, ptr %R4, align 4
  %zext.29 = zext i32 %.539 to i64
  %zext.30 = zext i32 %R5.0 to i64
  %shl.6 = shl i64 %zext.30, 32
  %or.6 = or i64 %shl.6, %zext.29
  %inttoptr_bytes.6 = inttoptr i64 %or.6 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.541 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.542 = bitcast ptr %R4 to ptr
  store float %.541, ptr %.542, align 4
  br label %.L_x_17_split_0x05e0

.L_x_17_split_0x05e0:                             ; preds = %.L_x_17_split_0x05c0_conditionalExpr_0x05d0, %.L_x_17_split_0x05c0
  %.547 = load float, ptr %R11, align 4
  %.548 = load float, ptr %R2, align 4
  %.549 = xor i1 true, true
  %.550 = fcmp olt float %.547, %.548
  %.551 = fcmp ogt float %.547, %.548
  %mnmx_min.5 = select i1 %.550, float %.547, float %.548
  %mnmx_max.5 = select i1 %.551, float %.547, float %.548
  %mnmx_final.5 = select i1 %.549, float %mnmx_min.5, float %mnmx_max.5
  %.552 = bitcast ptr %R11 to ptr
  store float %mnmx_final.5, ptr %.552, align 4
  %.556 = icmp eq i1 %.473, true
  br i1 %.556, label %.L_x_17_split_0x05e0_conditionalExpr_0x05f0, label %.L_x_19

.L_x_17_split_0x05e0_conditionalExpr_0x05f0:      ; preds = %.L_x_17_split_0x05e0
  %.559 = load float, ptr %R11, align 4
  %.560 = load float, ptr %R4, align 4
  %.561 = xor i1 true, true
  %.562 = fcmp olt float %.559, %.560
  %.563 = fcmp ogt float %.559, %.560
  %mnmx_min.6 = select i1 %.562, float %.559, float %.560
  %mnmx_max.6 = select i1 %.563, float %.559, float %.560
  %mnmx_final.6 = select i1 %.561, float %mnmx_min.6, float %mnmx_max.6
  %.564 = bitcast ptr %R11 to ptr
  store float %mnmx_final.6, ptr %.564, align 4
  br label %.L_x_19

.L_x_19:                                          ; preds = %.L_x_17_split_0x05e0_conditionalExpr_0x05f0, %.L_x_17_split_0x05e0, %.L_x_17_split_0x04d0, %.L_x_17
  %.570 = add i32 %R16.0, 1
  %.571 = add i32 %.570, 0
  %cmp.13 = icmp sge i32 %.571, %Arg_3
  %.578 = and i1 %cmp.13, true
  %.583 = icmp ne i1 %.578, true
  br i1 %.583, label %.L_x_20, label %.L_x_16.loopexit

.L_x_16.loopexit:                                 ; preds = %.L_x_19
  br label %.L_x_16

.L_x_16:                                          ; preds = %.L_x_16.loopexit, %.text._Z10max_pool2dPfS_iii_split_0x0250
  %mul.33 = mul i32 %R21.1, %nvvm_ctaid_z
  %add.33 = add i32 %mul.33, %add.11
  store i32 %add.33, ptr %R3, align 4
  %mul.34 = mul i32 0, 0
  %add.34 = add i32 %mul.34, 4
  store i32 %add.34, ptr %R2, align 4
  %.594 = load i32, ptr %R3, align 4
  %.595 = load i32, ptr %R0, align 4
  %mul.35 = mul i32 %R21.1, %.594
  %add.35 = add i32 %mul.35, %.595
  store i32 %add.35, ptr %R3, align 4
  %.598 = load i32, ptr %R3, align 4
  %.599 = load i32, ptr %R2, align 4
  %zext.31 = zext i32 %.598 to i64
  %zext.32 = zext i32 %.599 to i64
  %mul.36 = mul i64 %zext.31, %zext.32
  %.600 = ptrtoint ptr %Arg_1 to i64
  %add.36 = add i64 %mul.36, %.600
  %.601 = and i64 %add.36, -4294967296
  %.602 = lshr i64 %.601, 32
  %trunc32.14 = trunc i64 %.602 to i32
  %trunc32.15 = trunc i64 %add.36 to i32
  store i32 %trunc32.15, ptr %R2, align 4
  store i32 %trunc32.14, ptr %R3, align 4
  %.606 = load i32, ptr %R11, align 4
  %.607 = load i32, ptr %R2, align 4
  %zext.33 = zext i32 %.607 to i64
  %.608 = load i32, ptr %R3, align 4
  %zext.34 = zext i32 %.608 to i64
  %shl.7 = shl i64 %zext.34, 32
  %or.7 = or i64 %shl.7, %zext.33
  %inttoptr_bytes.7 = inttoptr i64 %or.7 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  store i32 %.606, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0200, %.L_x_16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.y() #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.z() #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.y() #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.y() #0

define ptx_kernel void @_Z4reluPfS_i(ptr %Arg_0, ptr %Arg_1, i32 %Arg_2) {
Entry_.text._Z4reluPfS_i:
  %R2 = alloca i32, align 4
  %R7 = alloca i32, align 4
  %nvvm_ctaid_x = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %add = add i32 %mul, %nvvm_threadidx_x
  %cmp = icmp sge i32 %add, %Arg_2
  %.24 = and i1 %cmp, true
  %.29 = icmp eq i1 %.24, true
  br i1 %.29, label %ExitFunction, label %.text._Z4reluPfS_i_split_0x0060

.text._Z4reluPfS_i_split_0x0060:                  ; preds = %Entry_.text._Z4reluPfS_i
  %zext = zext i32 %add to i64
  %zext.1 = zext i32 4 to i64
  %mul.1 = mul i64 %zext, %zext.1
  %.38 = ptrtoint ptr %Arg_0 to i64
  %add.1 = add i64 %mul.1, %.38
  %.39 = and i64 %add.1, -4294967296
  %.40 = lshr i64 %.39, 32
  %trunc32 = trunc i64 %.40 to i32
  %trunc32.1 = trunc i64 %add.1 to i32
  store i32 %trunc32.1, ptr %R2, align 4
  %.44 = load i32, ptr %R2, align 4
  %zext.2 = zext i32 %.44 to i64
  %zext.3 = zext i32 %trunc32 to i64
  %shl = shl i64 %zext.3, 32
  %or = or i64 %shl, %zext.2
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.46 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.47 = bitcast ptr %R2 to ptr
  store float %.46, ptr %.47, align 4
  %zext.4 = zext i32 %add to i64
  %zext.5 = zext i32 4 to i64
  %mul.2 = mul i64 %zext.4, %zext.5
  %.52 = ptrtoint ptr %Arg_1 to i64
  %add.2 = add i64 %mul.2, %.52
  %.53 = and i64 %add.2, -4294967296
  %.54 = lshr i64 %.53, 32
  %trunc32.2 = trunc i64 %.54 to i32
  %trunc32.3 = trunc i64 %add.2 to i32
  %.58 = load float, ptr %R2, align 4
  %.59 = xor i1 true, true
  %.60 = fcmp olt float 0.000000e+00, %.58
  %.61 = fcmp ogt float 0.000000e+00, %.58
  %mnmx_min = select i1 %.60, float 0.000000e+00, float %.58
  %mnmx_max = select i1 %.61, float 0.000000e+00, float %.58
  %mnmx_final = select i1 %.59, float %mnmx_min, float %mnmx_max
  %.62 = bitcast ptr %R7 to ptr
  store float %mnmx_final, ptr %.62, align 4
  %.65 = load float, ptr %R7, align 4
  %zext.6 = zext i32 %trunc32.3 to i64
  %zext.7 = zext i32 %trunc32.2 to i64
  %shl.1 = shl i64 %zext.7, 32
  %or.1 = or i64 %shl.1, %zext.6
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  store float %.65, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z4reluPfS_i, %.text._Z4reluPfS_i_split_0x0060
  ret void
}

define ptx_kernel void @_Z6conv2dPfS_S_iiii(ptr %Arg_0, ptr %Arg_1, ptr %Arg_2, i32 %Arg_3, i32 %Arg_4, i32 %Arg_5, i32 %Arg_6) {
Entry_.text._Z6conv2dPfS_S_iiii:
  %R12 = alloca i32, align 4
  %RZ = alloca i32, align 4
  %R6 = alloca i32, align 4
  %R13 = alloca i32, align 4
  %R23 = alloca i32, align 4
  %R14 = alloca i32, align 4
  %R16 = alloca i32, align 4
  %R18 = alloca i32, align 4
  %R20 = alloca i32, align 4
  %R22 = alloca i32, align 4
  %R25 = alloca i32, align 4
  %R27 = alloca i32, align 4
  %R19 = alloca i32, align 4
  store i32 0, ptr %RZ, align 4
  %nvvm_ctaid_y = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  %.22 = sub i32 0, undef
  %.23 = add i32 %Arg_3, %.22
  %.24 = add i32 %.23, 0
  %nvvm_threadidx_y = call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %nvvm_ctaid_x = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_ctaid_z = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.z()
  %nvvm_blockdim_y = call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %mul = mul i32 %nvvm_ctaid_y, %nvvm_blockdim_y
  %add = add i32 %mul, %nvvm_threadidx_y
  %cmp = icmp sgt i32 %add, %.24
  %.44 = and i1 %cmp, true
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %mul.1 = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %add.1 = add i32 %mul.1, %nvvm_threadidx_x
  %cmp.1 = icmp sgt i32 %add.1, %.24
  %.57 = or i1 %cmp.1, %.44
  %cmp.2 = icmp sge i32 %nvvm_ctaid_z, %Arg_6
  %.65 = or i1 %cmp.2, %.57
  %.70 = icmp eq i1 %.65, true
  br i1 %.70, label %ExitFunction, label %.text._Z6conv2dPfS_S_iiii_split_0x00e0

.text._Z6conv2dPfS_S_iiii_split_0x00e0:           ; preds = %Entry_.text._Z6conv2dPfS_S_iiii
  %mul.2 = mul i32 0, 0
  %add.2 = add i32 %mul.2, 0
  store i32 %add.2, ptr %R12, align 4
  %cmp.3 = icmp sle i32 1, %Arg_4
  %.83 = and i1 %cmp.3, true
  %cmp.4 = icmp sgt i32 1, %Arg_5
  %.91 = or i1 %cmp.4, %.83
  %.96 = icmp eq i1 %.91, true
  br i1 %.96, label %.L_x_23, label %.text._Z6conv2dPfS_S_iiii_split_0x0130

.text._Z6conv2dPfS_S_iiii_split_0x0130:           ; preds = %.text._Z6conv2dPfS_S_iiii_split_0x00e0
  %mul.3 = mul i32 0, 0
  %add.3 = add i32 %mul.3, %Arg_4
  %mul.4 = mul i32 0, 0
  %add.4 = add i32 %mul.4, 0
  %.105 = load float, ptr %RZ, align 4
  %.106 = bitcast ptr %R12 to ptr
  store float %.105, ptr %.106, align 4
  %.110 = sub i32 0, 1
  %.111 = add i32 %.110, %Arg_4
  %.112 = add i32 %.111, 0
  %.117 = and i32 %add.3, 3
  %cmp.5 = icmp sge i32 %.112, 3
  %.124 = and i1 %cmp.5, true
  %.129 = sub i32 0, %Arg_4
  %.130 = add i32 %.117, %.129
  %.131 = add i32 %.130, 0
  br label %.L_x_28

.L_x_28:                                          ; preds = %.L_x_26_split_0x0610, %.text._Z6conv2dPfS_S_iiii_split_0x0130
  %R10.0 = phi i32 [ %add.4, %.text._Z6conv2dPfS_S_iiii_split_0x0130 ], [ %.148, %.L_x_26_split_0x0610 ]
  %mul.5 = mul i32 %R10.0, %Arg_3
  %add.5 = add i32 %mul.5, %add
  %.139 = load i32, ptr %RZ, align 4
  %mul.6 = mul i32 %nvvm_ctaid_z, %Arg_5
  %add.6 = add i32 %mul.6, %R10.0
  %.147 = add i32 %R10.0, 1
  %.148 = add i32 %.147, 0
  %mul.7 = mul i32 %add.5, %Arg_3
  %add.7 = add i32 %mul.7, %add.1
  %cmp.6 = icmp sge i32 %.148, %Arg_5
  %.159 = and i1 %cmp.6, true
  br label %.L_x_27

.L_x_27:                                          ; preds = %.L_x_26, %.L_x_28
  %R8.0 = phi i32 [ %.139, %.L_x_28 ], [ %.546, %.L_x_26 ]
  %mul.8 = mul i32 %add.6, %Arg_4
  %add.8 = add i32 %mul.8, %R8.0
  store i32 %add.8, ptr %R6, align 4
  %cmp.7 = icmp ne i32 %.117, 0
  %.175 = and i1 %cmp.7, true
  %.179 = load i32, ptr %R6, align 4
  %mul.9 = mul i32 %.179, %Arg_4
  %add.9 = add i32 %mul.9, 0
  %.183 = icmp ne i1 %.124, true
  br i1 %.183, label %.L_x_24, label %.L_x_27_split_0x0260

.L_x_27_split_0x0260:                             ; preds = %.L_x_27
  %mul.10 = mul i32 %add.7, 1
  %add.10 = add i32 %mul.10, %R8.0
  store i32 %add.10, ptr %R13, align 4
  %zext = zext i32 %add.9 to i64
  %zext.1 = zext i32 4 to i64
  %mul.11 = mul i64 %zext, %zext.1
  %.197 = ptrtoint ptr %Arg_1 to i64
  %add.11 = add i64 %mul.11, %.197
  %.198 = and i64 %add.11, -4294967296
  %.199 = lshr i64 %.198, 32
  %trunc32 = trunc i64 %.199 to i32
  %trunc32.1 = trunc i64 %add.11 to i32
  store i32 %trunc32.1, ptr %R6, align 4
  %.203 = load i32, ptr %R6, align 4
  store i32 %.203, ptr %R23, align 4
  br label %.L_x_25

.L_x_25:                                          ; preds = %.L_x_25, %.L_x_27_split_0x0260
  %R7.0 = phi i32 [ %trunc32, %.L_x_27_split_0x0260 ], [ %add.21, %.L_x_25 ]
  %UR4.1 = phi i32 [ 0, %.L_x_27_split_0x0260 ], [ %.291, %.L_x_25 ]
  %.207 = load i32, ptr %R13, align 4
  %zext.2 = zext i32 %.207 to i64
  %zext.3 = zext i32 4 to i64
  %mul.12 = mul i64 %zext.2, %zext.3
  %.209 = ptrtoint ptr %Arg_0 to i64
  %add.12 = add i64 %mul.12, %.209
  %.210 = and i64 %add.12, -4294967296
  %.211 = lshr i64 %.210, 32
  %trunc32.2 = trunc i64 %.211 to i32
  %trunc32.3 = trunc i64 %add.12 to i32
  store i32 %trunc32.3, ptr %R14, align 4
  %.217 = load i32, ptr %R23, align 4
  %mul.13 = mul i32 0, 0
  %add.13 = add i32 %mul.13, %.217
  store i32 %add.13, ptr %R6, align 4
  %.221 = load i32, ptr %R14, align 4
  %zext.4 = zext i32 %Arg_3 to i64
  %zext.5 = zext i32 4 to i64
  %mul.14 = mul i64 %zext.4, %zext.5
  %zext.6 = zext i32 %.221 to i64
  %add.14 = add i64 %mul.14, %zext.6
  %.222 = and i64 %add.14, -4294967296
  %.223 = lshr i64 %.222, 32
  %trunc32.4 = trunc i64 %.223 to i32
  %trunc32.5 = trunc i64 %add.14 to i32
  store i32 %trunc32.5, ptr %R16, align 4
  %.227 = load i32, ptr %R14, align 4
  %zext.7 = zext i32 %.227 to i64
  %zext.8 = zext i32 %trunc32.2 to i64
  %shl = shl i64 %zext.8, 32
  %or = or i64 %shl, %zext.7
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.229 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.230 = bitcast ptr %R14 to ptr
  store float %.229, ptr %.230, align 4
  %.233 = load i32, ptr %R6, align 4
  %zext.9 = zext i32 %.233 to i64
  %zext.10 = zext i32 %R7.0 to i64
  %shl.1 = shl i64 %zext.10, 32
  %or.1 = or i64 %shl.1, %zext.9
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.235 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.236 = bitcast ptr %R23 to ptr
  store float %.235, ptr %.236, align 4
  %.240 = load i32, ptr %R16, align 4
  %zext.11 = zext i32 %Arg_3 to i64
  %zext.12 = zext i32 4 to i64
  %mul.15 = mul i64 %zext.11, %zext.12
  %zext.13 = zext i32 %.240 to i64
  %add.15 = add i64 %mul.15, %zext.13
  %.241 = and i64 %add.15, -4294967296
  %.242 = lshr i64 %.241, 32
  %trunc32.6 = trunc i64 %.242 to i32
  %trunc32.7 = trunc i64 %add.15 to i32
  store i32 %trunc32.7, ptr %R18, align 4
  store i32 %trunc32.6, ptr %R19, align 4
  %.246 = load i32, ptr %R16, align 4
  %zext.14 = zext i32 %.246 to i64
  %zext.15 = zext i32 %trunc32.4 to i64
  %shl.2 = shl i64 %zext.15, 32
  %or.2 = or i64 %shl.2, %zext.14
  %inttoptr_bytes.2 = inttoptr i64 %or.2 to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.248 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.249 = bitcast ptr %R16 to ptr
  store float %.248, ptr %.249, align 4
  %.253 = load i32, ptr %R18, align 4
  %zext.16 = zext i32 %Arg_3 to i64
  %zext.17 = zext i32 4 to i64
  %mul.16 = mul i64 %zext.16, %zext.17
  %zext.18 = zext i32 %.253 to i64
  %add.16 = add i64 %mul.16, %zext.18
  %.254 = and i64 %add.16, -4294967296
  %.255 = lshr i64 %.254, 32
  %trunc32.8 = trunc i64 %.255 to i32
  %trunc32.9 = trunc i64 %add.16 to i32
  store i32 %trunc32.9, ptr %R20, align 4
  %.259 = load i32, ptr %R6, align 4
  %zext.19 = zext i32 %.259 to i64
  %zext.20 = zext i32 %R7.0 to i64
  %shl.3 = shl i64 %zext.20, 32
  %or.3 = or i64 %shl.3, %zext.19
  %ptr_plus_imm = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.261 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.262 = bitcast ptr %R22 to ptr
  store float %.261, ptr %.262, align 4
  %.265 = load i32, ptr %R18, align 4
  %zext.21 = zext i32 %.265 to i64
  %.266 = load i32, ptr %R19, align 4
  %zext.22 = zext i32 %.266 to i64
  %shl.4 = shl i64 %zext.22, 32
  %or.4 = or i64 %shl.4, %zext.21
  %inttoptr_bytes.4 = inttoptr i64 %or.4 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.267 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.268 = bitcast ptr %R18 to ptr
  store float %.267, ptr %.268, align 4
  %.271 = load i32, ptr %R6, align 4
  %zext.23 = zext i32 %.271 to i64
  %zext.24 = zext i32 %R7.0 to i64
  %shl.5 = shl i64 %zext.24, 32
  %or.5 = or i64 %shl.5, %zext.23
  %ptr_plus_imm.1 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.273 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.274 = bitcast ptr %R25 to ptr
  store float %.273, ptr %.274, align 4
  %.277 = load i32, ptr %R20, align 4
  %zext.25 = zext i32 %.277 to i64
  %zext.26 = zext i32 %trunc32.8 to i64
  %shl.6 = shl i64 %zext.26, 32
  %or.6 = or i64 %shl.6, %zext.25
  %inttoptr_bytes.6 = inttoptr i64 %or.6 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.279 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.280 = bitcast ptr %R20 to ptr
  store float %.279, ptr %.280, align 4
  %.283 = load i32, ptr %R6, align 4
  %zext.27 = zext i32 %.283 to i64
  %zext.28 = zext i32 %R7.0 to i64
  %shl.7 = shl i64 %zext.28, 32
  %or.7 = or i64 %shl.7, %zext.27
  %ptr_plus_imm.2 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.285 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.286 = bitcast ptr %R27 to ptr
  store float %.285, ptr %.286, align 4
  %.290 = add i32 %UR4.1, 4
  %.291 = add i32 %.290, 0
  %.295 = load i32, ptr %R13, align 4
  %shl.8 = shl i32 %Arg_3, 2
  %add.17 = add i32 %shl.8, %.295
  store i32 %add.17, ptr %R13, align 4
  %.298 = load float, ptr %R23, align 4
  %.299 = load float, ptr %R14, align 4
  %.300 = load float, ptr %R12, align 4
  %fmul = fmul float %.298, %.299
  %fadd = fadd float %fmul, %.300
  %.301 = bitcast ptr %R23 to ptr
  store float %fadd, ptr %.301, align 4
  %.306 = add i32 %.131, %.291
  %.307 = add i32 %.306, 0
  store i32 %.307, ptr %R12, align 4
  %.310 = load i32, ptr %R12, align 4
  %cmp.8 = icmp ne i32 %.310, 0
  %.314 = and i1 %cmp.8, true
  %.318 = load float, ptr %R22, align 4
  %.319 = load float, ptr %R16, align 4
  %.320 = load float, ptr %R23, align 4
  %fmul.1 = fmul float %.318, %.319
  %fadd.1 = fadd float %fmul.1, %.320
  %.321 = bitcast ptr %R22 to ptr
  store float %fadd.1, ptr %.321, align 4
  %.324 = load i32, ptr %R6, align 4
  %.325 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.324, i32 16)
  %.326 = extractvalue { i32, i1 } %.325, 0
  %.327 = extractvalue { i32, i1 } %.325, 1
  %.328 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.326, i32 0)
  %.329 = extractvalue { i32, i1 } %.328, 0
  %.330 = extractvalue { i32, i1 } %.328, 1
  %.331 = or i1 %.327, %.330
  store i32 %.329, ptr %R23, align 4
  %.335 = load float, ptr %R25, align 4
  %.336 = load float, ptr %R18, align 4
  %.337 = load float, ptr %R22, align 4
  %fmul.2 = fmul float %.335, %.336
  %fadd.2 = fadd float %fmul.2, %.337
  %.338 = bitcast ptr %R22 to ptr
  store float %fadd.2, ptr %.338, align 4
  %.343 = xor i1 true, true
  %.344 = zext i1 %.331 to i32
  %.345 = zext i1 %.343 to i32
  %add.18 = add i32 0, %R7.0
  %add.19 = add i32 %add.18, 0
  %add.20 = add i32 %add.19, %.344
  %add.21 = add i32 %add.20, %.345
  %.348 = load float, ptr %R27, align 4
  %.349 = load float, ptr %R20, align 4
  %.350 = load float, ptr %R22, align 4
  %fmul.3 = fmul float %.348, %.349
  %fadd.3 = fadd float %fmul.3, %.350
  %.351 = bitcast ptr %R12 to ptr
  store float %fadd.3, ptr %.351, align 4
  %.355 = icmp eq i1 %.314, true
  br i1 %.355, label %.L_x_25, label %.L_x_24.loopexit

.L_x_24.loopexit:                                 ; preds = %.L_x_25
  br label %.L_x_24

.L_x_24:                                          ; preds = %.L_x_24.loopexit, %.L_x_27
  %UR4.0 = phi i32 [ 0, %.L_x_27 ], [ %.291, %.L_x_24.loopexit ]
  %mul.17 = mul i32 %add.1, 1
  %add.22 = add i32 %mul.17, %R8.0
  store i32 %add.22, ptr %R14, align 4
  %.363 = icmp ne i1 %.175, true
  br i1 %.363, label %.L_x_26, label %.L_x_24_split_0x0460

.L_x_24_split_0x0460:                             ; preds = %.L_x_24
  %.368 = add i32 %add.5, %UR4.0
  %.369 = add i32 %.368, 0
  %.374 = add i32 %add.9, %UR4.0
  %.375 = add i32 %.374, 0
  store i32 %.375, ptr %R16, align 4
  store i32 4, ptr %R19, align 4
  %.381 = load i32, ptr %R14, align 4
  %mul.18 = mul i32 %.369, %Arg_3
  %add.23 = add i32 %mul.18, %.381
  store i32 %add.23, ptr %R6, align 4
  %.384 = load i32, ptr %R16, align 4
  %.385 = load i32, ptr %R19, align 4
  %zext.29 = zext i32 %.384 to i64
  %zext.30 = zext i32 %.385 to i64
  %mul.19 = mul i64 %zext.29, %zext.30
  %.386 = ptrtoint ptr %Arg_1 to i64
  %add.24 = add i64 %mul.19, %.386
  %.387 = and i64 %add.24, -4294967296
  %.388 = lshr i64 %.387, 32
  %trunc32.10 = trunc i64 %.388 to i32
  %trunc32.11 = trunc i64 %add.24 to i32
  store i32 %trunc32.11, ptr %R16, align 4
  %.392 = load i32, ptr %R6, align 4
  %.393 = load i32, ptr %R19, align 4
  %zext.31 = zext i32 %.392 to i64
  %zext.32 = zext i32 %.393 to i64
  %mul.20 = mul i64 %zext.31, %zext.32
  %.394 = ptrtoint ptr %Arg_0 to i64
  %add.25 = add i64 %mul.20, %.394
  %.395 = and i64 %add.25, -4294967296
  %.396 = lshr i64 %.395, 32
  %trunc32.12 = trunc i64 %.396 to i32
  %trunc32.13 = trunc i64 %add.25 to i32
  store i32 %trunc32.13, ptr %R6, align 4
  %.400 = load i32, ptr %R16, align 4
  %zext.33 = zext i32 %.400 to i64
  %zext.34 = zext i32 %trunc32.10 to i64
  %shl.9 = shl i64 %zext.34, 32
  %or.8 = or i64 %shl.9, %zext.33
  %inttoptr_bytes.8 = inttoptr i64 %or.8 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.402 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.403 = bitcast ptr %R13 to ptr
  store float %.402, ptr %.403, align 4
  %.406 = load i32, ptr %R6, align 4
  %zext.35 = zext i32 %.406 to i64
  %zext.36 = zext i32 %trunc32.12 to i64
  %shl.10 = shl i64 %zext.36, 32
  %or.9 = or i64 %shl.10, %zext.35
  %inttoptr_bytes.9 = inttoptr i64 %or.9 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.408 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.409 = bitcast ptr %R6 to ptr
  store float %.408, ptr %.409, align 4
  %cmp.9 = icmp ne i32 %.117, 1
  %.416 = and i1 %cmp.9, true
  %.420 = load float, ptr %R13, align 4
  %.421 = load float, ptr %R6, align 4
  %.422 = load float, ptr %R12, align 4
  %fmul.4 = fmul float %.420, %.421
  %fadd.4 = fadd float %fmul.4, %.422
  %.423 = bitcast ptr %R12 to ptr
  store float %fadd.4, ptr %.423, align 4
  %.427 = icmp ne i1 %.416, true
  br i1 %.427, label %.L_x_26, label %.L_x_24_split_0x0510

.L_x_24_split_0x0510:                             ; preds = %.L_x_24_split_0x0460
  %cmp.10 = icmp ne i32 %.117, 2
  %.434 = and i1 %cmp.10, true
  %.438 = load i32, ptr %R16, align 4
  %zext.37 = zext i32 %.438 to i64
  %zext.38 = zext i32 %trunc32.10 to i64
  %shl.11 = shl i64 %zext.38, 32
  %or.10 = or i64 %shl.11, %zext.37
  %ptr_plus_imm.3 = add i64 %or.10, 4
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.440 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.441 = bitcast ptr %R13 to ptr
  store float %.440, ptr %.441, align 4
  %.445 = add i32 %.369, 1
  %.446 = add i32 %.445, 0
  store i32 %.446, ptr %R6, align 4
  %.449 = load i32, ptr %R6, align 4
  %.450 = load i32, ptr %R14, align 4
  %mul.21 = mul i32 %.449, %Arg_3
  %add.26 = add i32 %mul.21, %.450
  store i32 %add.26, ptr %R6, align 4
  %.454 = icmp eq i1 %.434, true
  br i1 %.454, label %.L_x_24_split_0x0510_conditionalExpr_0x0550, label %.L_x_24_split_0x0560

.L_x_24_split_0x0510_conditionalExpr_0x0550:      ; preds = %.L_x_24_split_0x0510
  %.458 = add i32 %.369, 2
  %.459 = add i32 %.458, 0
  br label %.L_x_24_split_0x0560

.L_x_24_split_0x0560:                             ; preds = %.L_x_24_split_0x0510_conditionalExpr_0x0550, %.L_x_24_split_0x0510
  %R7.1 = phi i32 [ %.459, %.L_x_24_split_0x0510_conditionalExpr_0x0550 ], [ %trunc32.12, %.L_x_24_split_0x0510 ]
  %.465 = icmp eq i1 %.434, true
  br i1 %.465, label %.L_x_24_split_0x0560_conditionalExpr_0x0560, label %.L_x_24_split_0x0570

.L_x_24_split_0x0560_conditionalExpr_0x0560:      ; preds = %.L_x_24_split_0x0560
  %.469 = load i32, ptr %R14, align 4
  %mul.22 = mul i32 %R7.1, %Arg_3
  %add.27 = add i32 %mul.22, %.469
  store i32 %add.27, ptr %R14, align 4
  br label %.L_x_24_split_0x0570

.L_x_24_split_0x0570:                             ; preds = %.L_x_24_split_0x0560_conditionalExpr_0x0560, %.L_x_24_split_0x0560
  %.474 = load i32, ptr %R6, align 4
  %.475 = load i32, ptr %R19, align 4
  %zext.39 = zext i32 %.474 to i64
  %zext.40 = zext i32 %.475 to i64
  %mul.23 = mul i64 %zext.39, %zext.40
  %.476 = ptrtoint ptr %Arg_0 to i64
  %add.28 = add i64 %mul.23, %.476
  %.477 = and i64 %add.28, -4294967296
  %.478 = lshr i64 %.477, 32
  %trunc32.14 = trunc i64 %.478 to i32
  %trunc32.15 = trunc i64 %add.28 to i32
  store i32 %trunc32.15, ptr %R6, align 4
  %.483 = icmp eq i1 %.434, true
  br i1 %.483, label %.L_x_24_split_0x0570_conditionalExpr_0x0580, label %.L_x_24_split_0x0590

.L_x_24_split_0x0570_conditionalExpr_0x0580:      ; preds = %.L_x_24_split_0x0570
  %.486 = load i32, ptr %R14, align 4
  %.487 = load i32, ptr %R19, align 4
  %zext.41 = zext i32 %.486 to i64
  %zext.42 = zext i32 %.487 to i64
  %mul.24 = mul i64 %zext.41, %zext.42
  %.488 = ptrtoint ptr %Arg_0 to i64
  %add.29 = add i64 %mul.24, %.488
  %.489 = and i64 %add.29, -4294967296
  %.490 = lshr i64 %.489, 32
  %trunc32.16 = trunc i64 %.490 to i32
  %trunc32.17 = trunc i64 %add.29 to i32
  store i32 %trunc32.17, ptr %R14, align 4
  br label %.L_x_24_split_0x0590

.L_x_24_split_0x0590:                             ; preds = %.L_x_24_split_0x0570_conditionalExpr_0x0580, %.L_x_24_split_0x0570
  %R15.0 = phi i32 [ %trunc32.16, %.L_x_24_split_0x0570_conditionalExpr_0x0580 ], [ %.369, %.L_x_24_split_0x0570 ]
  %.497 = icmp eq i1 %.434, true
  br i1 %.497, label %.L_x_24_split_0x0590_conditionalExpr_0x0590, label %.L_x_24_split_0x05a0

.L_x_24_split_0x0590_conditionalExpr_0x0590:      ; preds = %.L_x_24_split_0x0590
  %.500 = load i32, ptr %R16, align 4
  %zext.43 = zext i32 %.500 to i64
  %zext.44 = zext i32 %trunc32.10 to i64
  %shl.12 = shl i64 %zext.44, 32
  %or.11 = or i64 %shl.12, %zext.43
  %ptr_plus_imm.4 = add i64 %or.11, 8
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.502 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.503 = bitcast ptr %R19 to ptr
  store float %.502, ptr %.503, align 4
  br label %.L_x_24_split_0x05a0

.L_x_24_split_0x05a0:                             ; preds = %.L_x_24_split_0x0590_conditionalExpr_0x0590, %.L_x_24_split_0x0590
  %.508 = load i32, ptr %R6, align 4
  %zext.45 = zext i32 %.508 to i64
  %zext.46 = zext i32 %trunc32.14 to i64
  %shl.13 = shl i64 %zext.46, 32
  %or.12 = or i64 %shl.13, %zext.45
  %inttoptr_bytes.12 = inttoptr i64 %or.12 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.510 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.511 = bitcast ptr %R6 to ptr
  store float %.510, ptr %.511, align 4
  %.515 = icmp eq i1 %.434, true
  br i1 %.515, label %.L_x_24_split_0x05a0_conditionalExpr_0x05b0, label %.L_x_24_split_0x05c0

.L_x_24_split_0x05a0_conditionalExpr_0x05b0:      ; preds = %.L_x_24_split_0x05a0
  %.518 = load i32, ptr %R14, align 4
  %zext.47 = zext i32 %.518 to i64
  %zext.48 = zext i32 %R15.0 to i64
  %shl.14 = shl i64 %zext.48, 32
  %or.13 = or i64 %shl.14, %zext.47
  %inttoptr_bytes.13 = inttoptr i64 %or.13 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.520 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.521 = bitcast ptr %R14 to ptr
  store float %.520, ptr %.521, align 4
  br label %.L_x_24_split_0x05c0

.L_x_24_split_0x05c0:                             ; preds = %.L_x_24_split_0x05a0_conditionalExpr_0x05b0, %.L_x_24_split_0x05a0
  %.526 = load float, ptr %R13, align 4
  %.527 = load float, ptr %R6, align 4
  %.528 = load float, ptr %R12, align 4
  %fmul.5 = fmul float %.526, %.527
  %fadd.5 = fadd float %fmul.5, %.528
  %.529 = bitcast ptr %R12 to ptr
  store float %fadd.5, ptr %.529, align 4
  %.533 = icmp eq i1 %.434, true
  br i1 %.533, label %.L_x_24_split_0x05c0_conditionalExpr_0x05d0, label %.L_x_26

.L_x_24_split_0x05c0_conditionalExpr_0x05d0:      ; preds = %.L_x_24_split_0x05c0
  %.536 = load float, ptr %R19, align 4
  %.537 = load float, ptr %R14, align 4
  %.538 = load float, ptr %R12, align 4
  %fmul.6 = fmul float %.536, %.537
  %fadd.6 = fadd float %fmul.6, %.538
  %.539 = bitcast ptr %R12 to ptr
  store float %fadd.6, ptr %.539, align 4
  br label %.L_x_26

.L_x_26:                                          ; preds = %.L_x_24_split_0x05c0_conditionalExpr_0x05d0, %.L_x_24_split_0x05c0, %.L_x_24_split_0x0460, %.L_x_24
  %.545 = add i32 %R8.0, 1
  %.546 = add i32 %.545, 0
  %cmp.11 = icmp sge i32 %.546, %Arg_4
  %.553 = and i1 %cmp.11, true
  %.558 = icmp ne i1 %.553, true
  br i1 %.558, label %.L_x_27, label %.L_x_26_split_0x0610

.L_x_26_split_0x0610:                             ; preds = %.L_x_26
  %.562 = icmp ne i1 %.159, true
  br i1 %.562, label %.L_x_28, label %.L_x_23.loopexit

.L_x_23.loopexit:                                 ; preds = %.L_x_26_split_0x0610
  br label %.L_x_23

.L_x_23:                                          ; preds = %.L_x_23.loopexit, %.text._Z6conv2dPfS_S_iiii_split_0x00e0
  %.566 = add i32 %.24, 1
  %.567 = add i32 %.566, 0
  %mul.25 = mul i32 %nvvm_ctaid_z, %.567
  %add.30 = add i32 %mul.25, %add
  %mul.26 = mul i32 %add.30, %.567
  %add.31 = add i32 %mul.26, %add.1
  %zext.49 = zext i32 %add.31 to i64
  %zext.50 = zext i32 4 to i64
  %mul.27 = mul i64 %zext.49, %zext.50
  %.584 = ptrtoint ptr %Arg_2 to i64
  %add.32 = add i64 %mul.27, %.584
  %.585 = and i64 %add.32, -4294967296
  %.586 = lshr i64 %.585, 32
  %trunc32.18 = trunc i64 %.586 to i32
  %trunc32.19 = trunc i64 %add.32 to i32
  %.590 = load i32, ptr %R12, align 4
  %zext.51 = zext i32 %trunc32.19 to i64
  %zext.52 = zext i32 %trunc32.18 to i64
  %shl.15 = shl i64 %zext.52, 32
  %or.14 = or i64 %shl.15, %zext.51
  %inttoptr_bytes.14 = inttoptr i64 %or.14 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  store i32 %.590, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z6conv2dPfS_S_iiii, %.L_x_23
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
