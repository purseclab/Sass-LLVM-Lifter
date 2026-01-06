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
  %UR4.2 = phi i32 [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %.389, %.L_x_4 ]
  %R6.2 = phi i32 [ %.90, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %.381, %.L_x_4 ]
  %UR5.2 = phi i32 [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %add.9, %.L_x_4 ]
  %R3.2 = phi i32 [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %add.13, %.L_x_4 ]
  %.155 = load i32, ptr %R2, align 4
  %zext.2 = zext i32 %.155 to i64
  %zext.3 = zext i32 %R3.2 to i64
  %shl = shl i64 %zext.3, 32
  %or = or i64 %shl, %zext.2
  %.157 = add i64 %or, 0
  %inttoptr_bytes = inttoptr i64 %.157 to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.158 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.159 = bitcast ptr %R8 to ptr
  store float %.158, ptr %.159, align 4
  %zext.4 = zext i32 %UR4.2 to i64
  %zext.5 = zext i32 %UR5.2 to i64
  %shl.1 = shl i64 %zext.5, 32
  %or.1 = or i64 %shl.1, %zext.4
  %.164 = add i64 %or.1, 0
  %inttoptr_bytes.1 = inttoptr i64 %.164 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.165 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.166 = bitcast ptr %R9 to ptr
  store float %.165, ptr %.166, align 4
  %.169 = load i32, ptr %R2, align 4
  %zext.6 = zext i32 %.169 to i64
  %zext.7 = zext i32 %R3.2 to i64
  %shl.2 = shl i64 %zext.7, 32
  %or.2 = or i64 %shl.2, %zext.6
  %.171 = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %.171 to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.172 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.173 = bitcast ptr %R11 to ptr
  store float %.172, ptr %.173, align 4
  %zext.8 = zext i32 %UR4.2 to i64
  %zext.9 = zext i32 %UR5.2 to i64
  %shl.3 = shl i64 %zext.9, 32
  %or.3 = or i64 %shl.3, %zext.8
  %.178 = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %.178 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.179 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.180 = bitcast ptr %R10 to ptr
  store float %.179, ptr %.180, align 4
  %.183 = load i32, ptr %R2, align 4
  %zext.10 = zext i32 %.183 to i64
  %zext.11 = zext i32 %R3.2 to i64
  %shl.4 = shl i64 %zext.11, 32
  %or.4 = or i64 %shl.4, %zext.10
  %.185 = add i64 %or.4, 8
  %inttoptr_bytes.4 = inttoptr i64 %.185 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.186 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.187 = bitcast ptr %R13 to ptr
  store float %.186, ptr %.187, align 4
  %zext.12 = zext i32 %UR4.2 to i64
  %zext.13 = zext i32 %UR5.2 to i64
  %shl.5 = shl i64 %zext.13, 32
  %or.5 = or i64 %shl.5, %zext.12
  %.192 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %.192 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.193 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.194 = bitcast ptr %R12 to ptr
  store float %.193, ptr %.194, align 4
  %.197 = load i32, ptr %R2, align 4
  %zext.14 = zext i32 %.197 to i64
  %zext.15 = zext i32 %R3.2 to i64
  %shl.6 = shl i64 %zext.15, 32
  %or.6 = or i64 %shl.6, %zext.14
  %.199 = add i64 %or.6, 12
  %inttoptr_bytes.6 = inttoptr i64 %.199 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.200 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.201 = bitcast ptr %R15 to ptr
  store float %.200, ptr %.201, align 4
  %zext.16 = zext i32 %UR4.2 to i64
  %zext.17 = zext i32 %UR5.2 to i64
  %shl.7 = shl i64 %zext.17, 32
  %or.7 = or i64 %shl.7, %zext.16
  %.206 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %.206 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.207 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.208 = bitcast ptr %R14 to ptr
  store float %.207, ptr %.208, align 4
  %.211 = load i32, ptr %R2, align 4
  %zext.18 = zext i32 %.211 to i64
  %zext.19 = zext i32 %R3.2 to i64
  %shl.8 = shl i64 %zext.19, 32
  %or.8 = or i64 %shl.8, %zext.18
  %.213 = add i64 %or.8, 16
  %inttoptr_bytes.8 = inttoptr i64 %.213 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.214 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.215 = bitcast ptr %R17 to ptr
  store float %.214, ptr %.215, align 4
  %zext.20 = zext i32 %UR4.2 to i64
  %zext.21 = zext i32 %UR5.2 to i64
  %shl.9 = shl i64 %zext.21, 32
  %or.9 = or i64 %shl.9, %zext.20
  %.220 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %.220 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.221 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.222 = bitcast ptr %R16 to ptr
  store float %.221, ptr %.222, align 4
  %.225 = load i32, ptr %R2, align 4
  %zext.22 = zext i32 %.225 to i64
  %zext.23 = zext i32 %R3.2 to i64
  %shl.10 = shl i64 %zext.23, 32
  %or.10 = or i64 %shl.10, %zext.22
  %.227 = add i64 %or.10, 20
  %inttoptr_bytes.10 = inttoptr i64 %.227 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.228 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.229 = bitcast ptr %R19 to ptr
  store float %.228, ptr %.229, align 4
  %zext.24 = zext i32 %UR4.2 to i64
  %zext.25 = zext i32 %UR5.2 to i64
  %shl.11 = shl i64 %zext.25, 32
  %or.11 = or i64 %shl.11, %zext.24
  %.234 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %.234 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.235 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.236 = bitcast ptr %R18 to ptr
  store float %.235, ptr %.236, align 4
  %.239 = load i32, ptr %R2, align 4
  %zext.26 = zext i32 %.239 to i64
  %zext.27 = zext i32 %R3.2 to i64
  %shl.12 = shl i64 %zext.27, 32
  %or.12 = or i64 %shl.12, %zext.26
  %.241 = add i64 %or.12, 24
  %inttoptr_bytes.12 = inttoptr i64 %.241 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.242 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.243 = bitcast ptr %R21 to ptr
  store float %.242, ptr %.243, align 4
  %zext.28 = zext i32 %UR4.2 to i64
  %zext.29 = zext i32 %UR5.2 to i64
  %shl.13 = shl i64 %zext.29, 32
  %or.13 = or i64 %shl.13, %zext.28
  %.248 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %.248 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.249 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.250 = bitcast ptr %R20 to ptr
  store float %.249, ptr %.250, align 4
  %.253 = load i32, ptr %R2, align 4
  %zext.30 = zext i32 %.253 to i64
  %zext.31 = zext i32 %R3.2 to i64
  %shl.14 = shl i64 %zext.31, 32
  %or.14 = or i64 %shl.14, %zext.30
  %.255 = add i64 %or.14, 28
  %inttoptr_bytes.14 = inttoptr i64 %.255 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.256 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.257 = bitcast ptr %R23 to ptr
  store float %.256, ptr %.257, align 4
  %zext.32 = zext i32 %UR4.2 to i64
  %zext.33 = zext i32 %UR5.2 to i64
  %shl.15 = shl i64 %zext.33, 32
  %or.15 = or i64 %shl.15, %zext.32
  %.262 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %.262 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.263 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.264 = bitcast ptr %R22 to ptr
  store float %.263, ptr %.264, align 4
  %.267 = load i32, ptr %R2, align 4
  %zext.34 = zext i32 %.267 to i64
  %zext.35 = zext i32 %R3.2 to i64
  %shl.16 = shl i64 %zext.35, 32
  %or.16 = or i64 %shl.16, %zext.34
  %.269 = add i64 %or.16, 32
  %inttoptr_bytes.16 = inttoptr i64 %.269 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.270 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.271 = bitcast ptr %R25 to ptr
  store float %.270, ptr %.271, align 4
  %zext.36 = zext i32 %UR4.2 to i64
  %zext.37 = zext i32 %UR5.2 to i64
  %shl.17 = shl i64 %zext.37, 32
  %or.17 = or i64 %shl.17, %zext.36
  %.276 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %.276 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.277 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.278 = bitcast ptr %R24 to ptr
  store float %.277, ptr %.278, align 4
  %.281 = load i32, ptr %R2, align 4
  %zext.38 = zext i32 %.281 to i64
  %zext.39 = zext i32 %R3.2 to i64
  %shl.18 = shl i64 %zext.39, 32
  %or.18 = or i64 %shl.18, %zext.38
  %.283 = add i64 %or.18, 36
  %inttoptr_bytes.18 = inttoptr i64 %.283 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.284 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.285 = bitcast ptr %R27 to ptr
  store float %.284, ptr %.285, align 4
  %zext.40 = zext i32 %UR4.2 to i64
  %zext.41 = zext i32 %UR5.2 to i64
  %shl.19 = shl i64 %zext.41, 32
  %or.19 = or i64 %shl.19, %zext.40
  %.290 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %.290 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.291 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.292 = bitcast ptr %R26 to ptr
  store float %.291, ptr %.292, align 4
  %.295 = load i32, ptr %R2, align 4
  %zext.42 = zext i32 %.295 to i64
  %zext.43 = zext i32 %R3.2 to i64
  %shl.20 = shl i64 %zext.43, 32
  %or.20 = or i64 %shl.20, %zext.42
  %.297 = add i64 %or.20, 40
  %inttoptr_bytes.20 = inttoptr i64 %.297 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.298 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.299 = bitcast ptr %R29 to ptr
  store float %.298, ptr %.299, align 4
  %zext.44 = zext i32 %UR4.2 to i64
  %zext.45 = zext i32 %UR5.2 to i64
  %shl.21 = shl i64 %zext.45, 32
  %or.21 = or i64 %shl.21, %zext.44
  %.304 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %.304 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.305 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.306 = bitcast ptr %R28 to ptr
  store float %.305, ptr %.306, align 4
  %.309 = load i32, ptr %R2, align 4
  %zext.46 = zext i32 %.309 to i64
  %zext.47 = zext i32 %R3.2 to i64
  %shl.22 = shl i64 %zext.47, 32
  %or.22 = or i64 %shl.22, %zext.46
  %.311 = add i64 %or.22, 44
  %inttoptr_bytes.22 = inttoptr i64 %.311 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.312 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.313 = bitcast ptr %R31 to ptr
  store float %.312, ptr %.313, align 4
  %zext.48 = zext i32 %UR4.2 to i64
  %zext.49 = zext i32 %UR5.2 to i64
  %shl.23 = shl i64 %zext.49, 32
  %or.23 = or i64 %shl.23, %zext.48
  %.318 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %.318 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.319 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.320 = bitcast ptr %R30 to ptr
  store float %.319, ptr %.320, align 4
  %.323 = load i32, ptr %R2, align 4
  %zext.50 = zext i32 %.323 to i64
  %zext.51 = zext i32 %R3.2 to i64
  %shl.24 = shl i64 %zext.51, 32
  %or.24 = or i64 %shl.24, %zext.50
  %.325 = add i64 %or.24, 48
  %inttoptr_bytes.24 = inttoptr i64 %.325 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.326 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.327 = bitcast ptr %R33 to ptr
  store float %.326, ptr %.327, align 4
  %zext.52 = zext i32 %UR4.2 to i64
  %zext.53 = zext i32 %UR5.2 to i64
  %shl.25 = shl i64 %zext.53, 32
  %or.25 = or i64 %shl.25, %zext.52
  %.332 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %.332 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.333 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.334 = bitcast ptr %R32 to ptr
  store float %.333, ptr %.334, align 4
  %.337 = load i32, ptr %R2, align 4
  %zext.54 = zext i32 %.337 to i64
  %zext.55 = zext i32 %R3.2 to i64
  %shl.26 = shl i64 %zext.55, 32
  %or.26 = or i64 %shl.26, %zext.54
  %.339 = add i64 %or.26, 52
  %inttoptr_bytes.26 = inttoptr i64 %.339 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.340 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.341 = bitcast ptr %R35 to ptr
  store float %.340, ptr %.341, align 4
  %zext.56 = zext i32 %UR4.2 to i64
  %zext.57 = zext i32 %UR5.2 to i64
  %shl.27 = shl i64 %zext.57, 32
  %or.27 = or i64 %shl.27, %zext.56
  %.346 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %.346 to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.347 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.348 = bitcast ptr %R34 to ptr
  store float %.347, ptr %.348, align 4
  %.351 = load i32, ptr %R2, align 4
  %zext.58 = zext i32 %.351 to i64
  %zext.59 = zext i32 %R3.2 to i64
  %shl.28 = shl i64 %zext.59, 32
  %or.28 = or i64 %shl.28, %zext.58
  %.353 = add i64 %or.28, 56
  %inttoptr_bytes.28 = inttoptr i64 %.353 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.354 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.355 = bitcast ptr %R37 to ptr
  store float %.354, ptr %.355, align 4
  %zext.60 = zext i32 %UR4.2 to i64
  %zext.61 = zext i32 %UR5.2 to i64
  %shl.29 = shl i64 %zext.61, 32
  %or.29 = or i64 %shl.29, %zext.60
  %.360 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %.360 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.361 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.362 = bitcast ptr %R36 to ptr
  store float %.361, ptr %.362, align 4
  %.365 = load i32, ptr %R2, align 4
  %zext.62 = zext i32 %.365 to i64
  %zext.63 = zext i32 %R3.2 to i64
  %shl.30 = shl i64 %zext.63, 32
  %or.30 = or i64 %shl.30, %zext.62
  %.367 = add i64 %or.30, 60
  %inttoptr_bytes.30 = inttoptr i64 %.367 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.368 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.369 = bitcast ptr %R39 to ptr
  store float %.368, ptr %.369, align 4
  %zext.64 = zext i32 %UR4.2 to i64
  %zext.65 = zext i32 %UR5.2 to i64
  %shl.31 = shl i64 %zext.65, 32
  %or.31 = or i64 %shl.31, %zext.64
  %.374 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %.374 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.375 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.376 = bitcast ptr %R38 to ptr
  store float %.375, ptr %.376, align 4
  %.380 = add i32 %R6.2, -16
  %.381 = add i32 %.380, 0
  %.385 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.386 = extractvalue { i32, i1 } %.385, 0
  %.387 = extractvalue { i32, i1 } %.385, 1
  %.388 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.386, i32 0)
  %.389 = extractvalue { i32, i1 } %.388, 0
  %.390 = extractvalue { i32, i1 } %.388, 1
  %.391 = or i1 %.387, %.390
  %.395 = load i32, ptr %R5, align 4
  %.396 = add i32 %.395, 16
  %.397 = add i32 %.396, 0
  store i32 %.397, ptr %R5, align 4
  %cmp.5 = icmp sgt i32 %.381, 13
  %.404 = and i1 %cmp.5, true
  %.410 = xor i1 true, true
  %.411 = zext i1 %.391 to i32
  %.412 = zext i1 %.410 to i32
  %add.6 = add i32 0, %UR5.2
  %add.7 = add i32 %add.6, 0
  %add.8 = add i32 %add.7, %.411
  %add.9 = add i32 %add.8, %.412
  %.415 = load i32, ptr %R2, align 4
  %.416 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.415, i32 64)
  %.417 = extractvalue { i32, i1 } %.416, 0
  %.418 = extractvalue { i32, i1 } %.416, 1
  %.419 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.417, i32 0)
  %.420 = extractvalue { i32, i1 } %.419, 0
  %.421 = extractvalue { i32, i1 } %.419, 1
  %.422 = or i1 %.418, %.421
  store i32 %.420, ptr %R2, align 4
  %.428 = xor i1 true, true
  %.429 = zext i1 %.422 to i32
  %.430 = zext i1 %.428 to i32
  %add.10 = add i32 0, %R3.2
  %add.11 = add i32 %add.10, 0
  %add.12 = add i32 %add.11, %.429
  %add.13 = add i32 %add.12, %.430
  %.433 = load float, ptr %R8, align 4
  %.434 = load float, ptr %R9, align 4
  %.435 = load float, ptr %R7, align 4
  %fmul = fmul float %.433, %.434
  %fadd = fadd float %fmul, %.435
  %.436 = bitcast ptr %R8 to ptr
  store float %fadd, ptr %.436, align 4
  %.439 = load float, ptr %R11, align 4
  %.440 = load float, ptr %R10, align 4
  %.441 = load float, ptr %R8, align 4
  %fmul.1 = fmul float %.439, %.440
  %fadd.1 = fadd float %fmul.1, %.441
  %.442 = bitcast ptr %R8 to ptr
  store float %fadd.1, ptr %.442, align 4
  %.445 = load float, ptr %R13, align 4
  %.446 = load float, ptr %R12, align 4
  %.447 = load float, ptr %R8, align 4
  %fmul.2 = fmul float %.445, %.446
  %fadd.2 = fadd float %fmul.2, %.447
  %.448 = bitcast ptr %R8 to ptr
  store float %fadd.2, ptr %.448, align 4
  %.451 = load float, ptr %R15, align 4
  %.452 = load float, ptr %R14, align 4
  %.453 = load float, ptr %R8, align 4
  %fmul.3 = fmul float %.451, %.452
  %fadd.3 = fadd float %fmul.3, %.453
  %.454 = bitcast ptr %R8 to ptr
  store float %fadd.3, ptr %.454, align 4
  %.457 = load float, ptr %R17, align 4
  %.458 = load float, ptr %R16, align 4
  %.459 = load float, ptr %R8, align 4
  %fmul.4 = fmul float %.457, %.458
  %fadd.4 = fadd float %fmul.4, %.459
  %.460 = bitcast ptr %R8 to ptr
  store float %fadd.4, ptr %.460, align 4
  %.463 = load float, ptr %R19, align 4
  %.464 = load float, ptr %R18, align 4
  %.465 = load float, ptr %R8, align 4
  %fmul.5 = fmul float %.463, %.464
  %fadd.5 = fadd float %fmul.5, %.465
  %.466 = bitcast ptr %R8 to ptr
  store float %fadd.5, ptr %.466, align 4
  %.469 = load float, ptr %R21, align 4
  %.470 = load float, ptr %R20, align 4
  %.471 = load float, ptr %R8, align 4
  %fmul.6 = fmul float %.469, %.470
  %fadd.6 = fadd float %fmul.6, %.471
  %.472 = bitcast ptr %R8 to ptr
  store float %fadd.6, ptr %.472, align 4
  %.475 = load float, ptr %R23, align 4
  %.476 = load float, ptr %R22, align 4
  %.477 = load float, ptr %R8, align 4
  %fmul.7 = fmul float %.475, %.476
  %fadd.7 = fadd float %fmul.7, %.477
  %.478 = bitcast ptr %R8 to ptr
  store float %fadd.7, ptr %.478, align 4
  %.481 = load float, ptr %R25, align 4
  %.482 = load float, ptr %R24, align 4
  %.483 = load float, ptr %R8, align 4
  %fmul.8 = fmul float %.481, %.482
  %fadd.8 = fadd float %fmul.8, %.483
  %.484 = bitcast ptr %R8 to ptr
  store float %fadd.8, ptr %.484, align 4
  %.487 = load float, ptr %R27, align 4
  %.488 = load float, ptr %R26, align 4
  %.489 = load float, ptr %R8, align 4
  %fmul.9 = fmul float %.487, %.488
  %fadd.9 = fadd float %fmul.9, %.489
  %.490 = bitcast ptr %R8 to ptr
  store float %fadd.9, ptr %.490, align 4
  %.493 = load float, ptr %R29, align 4
  %.494 = load float, ptr %R28, align 4
  %.495 = load float, ptr %R8, align 4
  %fmul.10 = fmul float %.493, %.494
  %fadd.10 = fadd float %fmul.10, %.495
  %.496 = bitcast ptr %R8 to ptr
  store float %fadd.10, ptr %.496, align 4
  %.499 = load float, ptr %R31, align 4
  %.500 = load float, ptr %R30, align 4
  %.501 = load float, ptr %R8, align 4
  %fmul.11 = fmul float %.499, %.500
  %fadd.11 = fadd float %fmul.11, %.501
  %.502 = bitcast ptr %R8 to ptr
  store float %fadd.11, ptr %.502, align 4
  %.505 = load float, ptr %R33, align 4
  %.506 = load float, ptr %R32, align 4
  %.507 = load float, ptr %R8, align 4
  %fmul.12 = fmul float %.505, %.506
  %fadd.12 = fadd float %fmul.12, %.507
  %.508 = bitcast ptr %R8 to ptr
  store float %fadd.12, ptr %.508, align 4
  %.511 = load float, ptr %R35, align 4
  %.512 = load float, ptr %R34, align 4
  %.513 = load float, ptr %R8, align 4
  %fmul.13 = fmul float %.511, %.512
  %fadd.13 = fadd float %fmul.13, %.513
  %.514 = bitcast ptr %R8 to ptr
  store float %fadd.13, ptr %.514, align 4
  %.517 = load float, ptr %R37, align 4
  %.518 = load float, ptr %R36, align 4
  %.519 = load float, ptr %R8, align 4
  %fmul.14 = fmul float %.517, %.518
  %fadd.14 = fadd float %fmul.14, %.519
  %.520 = bitcast ptr %R8 to ptr
  store float %fadd.14, ptr %.520, align 4
  %.523 = load float, ptr %R39, align 4
  %.524 = load float, ptr %R38, align 4
  %.525 = load float, ptr %R8, align 4
  %fmul.15 = fmul float %.523, %.524
  %fadd.15 = fadd float %fmul.15, %.525
  %.526 = bitcast ptr %R7 to ptr
  store float %fadd.15, ptr %.526, align 4
  %.530 = icmp eq i1 %.404, true
  br i1 %.530, label %.L_x_4, label %.L_x_3.loopexit

.L_x_3.loopexit:                                  ; preds = %.L_x_4
  br label %.L_x_3

.L_x_3:                                           ; preds = %.L_x_3.loopexit, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0
  %UR4.1 = phi i32 [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %.389, %.L_x_3.loopexit ]
  %R6.1 = phi i32 [ %.90, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %.381, %.L_x_3.loopexit ]
  %UR5.1 = phi i32 [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %add.9, %.L_x_3.loopexit ]
  %R3.1 = phi i32 [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %add.13, %.L_x_3.loopexit ]
  %.534 = add i32 %R6.1, -1
  %.535 = add i32 %.534, 0
  store i32 %.535, ptr %R8, align 4
  %.538 = load i32, ptr %R8, align 4
  %cmp.6 = icmp sgt i32 %.538, 4
  %.542 = and i1 %cmp.6, true
  %.547 = icmp ne i1 %.542, true
  br i1 %.547, label %.L_x_5, label %.L_x_3_split_0x05a0

.L_x_3_split_0x05a0:                              ; preds = %.L_x_3
  %.550 = load i32, ptr %R2, align 4
  %zext.66 = zext i32 %.550 to i64
  %zext.67 = zext i32 %R3.1 to i64
  %shl.32 = shl i64 %zext.67, 32
  %or.32 = or i64 %shl.32, %zext.66
  %.552 = add i64 %or.32, 0
  %inttoptr_bytes.32 = inttoptr i64 %.552 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.553 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.554 = bitcast ptr %R8 to ptr
  store float %.553, ptr %.554, align 4
  %zext.68 = zext i32 %UR4.1 to i64
  %zext.69 = zext i32 %UR5.1 to i64
  %shl.33 = shl i64 %zext.69, 32
  %or.33 = or i64 %shl.33, %zext.68
  %.559 = add i64 %or.33, 0
  %inttoptr_bytes.33 = inttoptr i64 %.559 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.560 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.561 = bitcast ptr %R9 to ptr
  store float %.560, ptr %.561, align 4
  %.564 = load i32, ptr %R2, align 4
  %zext.70 = zext i32 %.564 to i64
  %zext.71 = zext i32 %R3.1 to i64
  %shl.34 = shl i64 %zext.71, 32
  %or.34 = or i64 %shl.34, %zext.70
  %.566 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %.566 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.567 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.568 = bitcast ptr %R11 to ptr
  store float %.567, ptr %.568, align 4
  %zext.72 = zext i32 %UR4.1 to i64
  %zext.73 = zext i32 %UR5.1 to i64
  %shl.35 = shl i64 %zext.73, 32
  %or.35 = or i64 %shl.35, %zext.72
  %.573 = add i64 %or.35, 4
  %inttoptr_bytes.35 = inttoptr i64 %.573 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.574 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.575 = bitcast ptr %R10 to ptr
  store float %.574, ptr %.575, align 4
  %.578 = load i32, ptr %R2, align 4
  %zext.74 = zext i32 %.578 to i64
  %zext.75 = zext i32 %R3.1 to i64
  %shl.36 = shl i64 %zext.75, 32
  %or.36 = or i64 %shl.36, %zext.74
  %.580 = add i64 %or.36, 8
  %inttoptr_bytes.36 = inttoptr i64 %.580 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.581 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.582 = bitcast ptr %R13 to ptr
  store float %.581, ptr %.582, align 4
  %zext.76 = zext i32 %UR4.1 to i64
  %zext.77 = zext i32 %UR5.1 to i64
  %shl.37 = shl i64 %zext.77, 32
  %or.37 = or i64 %shl.37, %zext.76
  %.587 = add i64 %or.37, 8
  %inttoptr_bytes.37 = inttoptr i64 %.587 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.588 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.589 = bitcast ptr %R12 to ptr
  store float %.588, ptr %.589, align 4
  %.592 = load i32, ptr %R2, align 4
  %zext.78 = zext i32 %.592 to i64
  %zext.79 = zext i32 %R3.1 to i64
  %shl.38 = shl i64 %zext.79, 32
  %or.38 = or i64 %shl.38, %zext.78
  %.594 = add i64 %or.38, 12
  %inttoptr_bytes.38 = inttoptr i64 %.594 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.595 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.596 = bitcast ptr %R15 to ptr
  store float %.595, ptr %.596, align 4
  %zext.80 = zext i32 %UR4.1 to i64
  %zext.81 = zext i32 %UR5.1 to i64
  %shl.39 = shl i64 %zext.81, 32
  %or.39 = or i64 %shl.39, %zext.80
  %.601 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %.601 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.602 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.603 = bitcast ptr %R14 to ptr
  store float %.602, ptr %.603, align 4
  %.606 = load i32, ptr %R2, align 4
  %zext.82 = zext i32 %.606 to i64
  %zext.83 = zext i32 %R3.1 to i64
  %shl.40 = shl i64 %zext.83, 32
  %or.40 = or i64 %shl.40, %zext.82
  %.608 = add i64 %or.40, 16
  %inttoptr_bytes.40 = inttoptr i64 %.608 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.609 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.610 = bitcast ptr %R17 to ptr
  store float %.609, ptr %.610, align 4
  %zext.84 = zext i32 %UR4.1 to i64
  %zext.85 = zext i32 %UR5.1 to i64
  %shl.41 = shl i64 %zext.85, 32
  %or.41 = or i64 %shl.41, %zext.84
  %.615 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %.615 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.616 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.617 = bitcast ptr %R16 to ptr
  store float %.616, ptr %.617, align 4
  %.620 = load i32, ptr %R2, align 4
  %zext.86 = zext i32 %.620 to i64
  %zext.87 = zext i32 %R3.1 to i64
  %shl.42 = shl i64 %zext.87, 32
  %or.42 = or i64 %shl.42, %zext.86
  %.622 = add i64 %or.42, 20
  %inttoptr_bytes.42 = inttoptr i64 %.622 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.623 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.624 = bitcast ptr %R19 to ptr
  store float %.623, ptr %.624, align 4
  %zext.88 = zext i32 %UR4.1 to i64
  %zext.89 = zext i32 %UR5.1 to i64
  %shl.43 = shl i64 %zext.89, 32
  %or.43 = or i64 %shl.43, %zext.88
  %.629 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %.629 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.630 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.631 = bitcast ptr %R18 to ptr
  store float %.630, ptr %.631, align 4
  %.634 = load i32, ptr %R2, align 4
  %zext.90 = zext i32 %.634 to i64
  %zext.91 = zext i32 %R3.1 to i64
  %shl.44 = shl i64 %zext.91, 32
  %or.44 = or i64 %shl.44, %zext.90
  %.636 = add i64 %or.44, 24
  %inttoptr_bytes.44 = inttoptr i64 %.636 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.637 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.638 = bitcast ptr %R21 to ptr
  store float %.637, ptr %.638, align 4
  %zext.92 = zext i32 %UR4.1 to i64
  %zext.93 = zext i32 %UR5.1 to i64
  %shl.45 = shl i64 %zext.93, 32
  %or.45 = or i64 %shl.45, %zext.92
  %.643 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %.643 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.644 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.645 = bitcast ptr %R20 to ptr
  store float %.644, ptr %.645, align 4
  %.648 = load i32, ptr %R2, align 4
  %zext.94 = zext i32 %.648 to i64
  %zext.95 = zext i32 %R3.1 to i64
  %shl.46 = shl i64 %zext.95, 32
  %or.46 = or i64 %shl.46, %zext.94
  %.650 = add i64 %or.46, 28
  %inttoptr_bytes.46 = inttoptr i64 %.650 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.651 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.652 = bitcast ptr %R23 to ptr
  store float %.651, ptr %.652, align 4
  %zext.96 = zext i32 %UR4.1 to i64
  %zext.97 = zext i32 %UR5.1 to i64
  %shl.47 = shl i64 %zext.97, 32
  %or.47 = or i64 %shl.47, %zext.96
  %.657 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %.657 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.658 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.659 = bitcast ptr %R22 to ptr
  store float %.658, ptr %.659, align 4
  %.663 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.664 = extractvalue { i32, i1 } %.663, 0
  %.665 = extractvalue { i32, i1 } %.663, 1
  %.666 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.664, i32 0)
  %.667 = extractvalue { i32, i1 } %.666, 0
  %.668 = extractvalue { i32, i1 } %.666, 1
  %.669 = or i1 %.665, %.668
  %.677 = load i32, ptr %R5, align 4
  %.678 = add i32 %.677, 8
  %.679 = add i32 %.678, 0
  store i32 %.679, ptr %R5, align 4
  %.684 = xor i1 true, true
  %.685 = zext i1 %.669 to i32
  %.686 = zext i1 %.684 to i32
  %add.14 = add i32 0, %UR5.1
  %add.15 = add i32 %add.14, 0
  %add.16 = add i32 %add.15, %.685
  %add.17 = add i32 %add.16, %.686
  %.689 = load i32, ptr %R2, align 4
  %.690 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.689, i32 32)
  %.691 = extractvalue { i32, i1 } %.690, 0
  %.692 = extractvalue { i32, i1 } %.690, 1
  %.693 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.691, i32 0)
  %.694 = extractvalue { i32, i1 } %.693, 0
  %.695 = extractvalue { i32, i1 } %.693, 1
  %.696 = or i1 %.692, %.695
  store i32 %.694, ptr %R2, align 4
  %.701 = add i32 %R6.1, -8
  %.702 = add i32 %.701, 0
  %.707 = xor i1 true, true
  %.708 = zext i1 %.696 to i32
  %.709 = zext i1 %.707 to i32
  %add.18 = add i32 0, %R3.1
  %add.19 = add i32 %add.18, 0
  %add.20 = add i32 %add.19, %.708
  %add.21 = add i32 %add.20, %.709
  %.712 = load float, ptr %R8, align 4
  %.713 = load float, ptr %R9, align 4
  %.714 = load float, ptr %R7, align 4
  %fmul.16 = fmul float %.712, %.713
  %fadd.16 = fadd float %fmul.16, %.714
  %.715 = bitcast ptr %R8 to ptr
  store float %fadd.16, ptr %.715, align 4
  %.718 = load float, ptr %R11, align 4
  %.719 = load float, ptr %R10, align 4
  %.720 = load float, ptr %R8, align 4
  %fmul.17 = fmul float %.718, %.719
  %fadd.17 = fadd float %fmul.17, %.720
  %.721 = bitcast ptr %R8 to ptr
  store float %fadd.17, ptr %.721, align 4
  %.724 = load float, ptr %R13, align 4
  %.725 = load float, ptr %R12, align 4
  %.726 = load float, ptr %R8, align 4
  %fmul.18 = fmul float %.724, %.725
  %fadd.18 = fadd float %fmul.18, %.726
  %.727 = bitcast ptr %R8 to ptr
  store float %fadd.18, ptr %.727, align 4
  %.730 = load float, ptr %R15, align 4
  %.731 = load float, ptr %R14, align 4
  %.732 = load float, ptr %R8, align 4
  %fmul.19 = fmul float %.730, %.731
  %fadd.19 = fadd float %fmul.19, %.732
  %.733 = bitcast ptr %R8 to ptr
  store float %fadd.19, ptr %.733, align 4
  %.736 = load float, ptr %R17, align 4
  %.737 = load float, ptr %R16, align 4
  %.738 = load float, ptr %R8, align 4
  %fmul.20 = fmul float %.736, %.737
  %fadd.20 = fadd float %fmul.20, %.738
  %.739 = bitcast ptr %R8 to ptr
  store float %fadd.20, ptr %.739, align 4
  %.742 = load float, ptr %R19, align 4
  %.743 = load float, ptr %R18, align 4
  %.744 = load float, ptr %R8, align 4
  %fmul.21 = fmul float %.742, %.743
  %fadd.21 = fadd float %fmul.21, %.744
  %.745 = bitcast ptr %R8 to ptr
  store float %fadd.21, ptr %.745, align 4
  %.748 = load float, ptr %R21, align 4
  %.749 = load float, ptr %R20, align 4
  %.750 = load float, ptr %R8, align 4
  %fmul.22 = fmul float %.748, %.749
  %fadd.22 = fadd float %fmul.22, %.750
  %.751 = bitcast ptr %R8 to ptr
  store float %fadd.22, ptr %.751, align 4
  %.754 = load float, ptr %R23, align 4
  %.755 = load float, ptr %R22, align 4
  %.756 = load float, ptr %R8, align 4
  %fmul.23 = fmul float %.754, %.755
  %fadd.23 = fadd float %fmul.23, %.756
  %.757 = bitcast ptr %R7 to ptr
  store float %fadd.23, ptr %.757, align 4
  br label %.L_x_5

.L_x_5:                                           ; preds = %.L_x_3_split_0x05a0, %.L_x_3
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_3 ], [ %.667, %.L_x_3_split_0x05a0 ]
  %R6.3 = phi i32 [ %R6.1, %.L_x_3 ], [ %.702, %.L_x_3_split_0x05a0 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_3 ], [ %add.17, %.L_x_3_split_0x05a0 ]
  %R3.3 = phi i32 [ %R3.1, %.L_x_3 ], [ %add.21, %.L_x_3_split_0x05a0 ]
  %cmp.7 = icmp ne i32 %R6.3, 1
  %.765 = or i1 %cmp.7, %.108
  %.770 = icmp ne i1 %.765, true
  br i1 %.770, label %.L_x_1, label %.L_x_2.preheader

.L_x_2.preheader:                                 ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110, %.L_x_5
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_5 ], [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %R6.0.ph = phi i32 [ %R6.3, %.L_x_5 ], [ %.90, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_5 ], [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %R3.0.ph = phi i32 [ %R3.3, %.L_x_5 ], [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  br label %.L_x_2

.L_x_2:                                           ; preds = %.L_x_2.preheader, %.L_x_2
  %UR4.0 = phi i32 [ %.839, %.L_x_2 ], [ %UR4.0.ph, %.L_x_2.preheader ]
  %R6.0 = phi i32 [ %.831, %.L_x_2 ], [ %R6.0.ph, %.L_x_2.preheader ]
  %UR5.0 = phi i32 [ %add.25, %.L_x_2 ], [ %UR5.0.ph, %.L_x_2.preheader ]
  %R3.0 = phi i32 [ %.895, %.L_x_2 ], [ %R3.0.ph, %.L_x_2.preheader ]
  %.773 = load i32, ptr %R2, align 4
  %zext.98 = zext i32 %.773 to i64
  %zext.99 = zext i32 %R3.0 to i64
  %shl.48 = shl i64 %zext.99, 32
  %or.48 = or i64 %shl.48, %zext.98
  %.775 = add i64 %or.48, 0
  %inttoptr_bytes.48 = inttoptr i64 %.775 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.776 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.777 = bitcast ptr %R8 to ptr
  store float %.776, ptr %.777, align 4
  %zext.100 = zext i32 %UR4.0 to i64
  %zext.101 = zext i32 %UR5.0 to i64
  %shl.49 = shl i64 %zext.101, 32
  %or.49 = or i64 %shl.49, %zext.100
  %.782 = add i64 %or.49, 0
  %inttoptr_bytes.49 = inttoptr i64 %.782 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.783 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.784 = bitcast ptr %R9 to ptr
  store float %.783, ptr %.784, align 4
  %.787 = load i32, ptr %R2, align 4
  %zext.102 = zext i32 %.787 to i64
  %zext.103 = zext i32 %R3.0 to i64
  %shl.50 = shl i64 %zext.103, 32
  %or.50 = or i64 %shl.50, %zext.102
  %.789 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %.789 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.790 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.791 = bitcast ptr %R11 to ptr
  store float %.790, ptr %.791, align 4
  %zext.104 = zext i32 %UR4.0 to i64
  %zext.105 = zext i32 %UR5.0 to i64
  %shl.51 = shl i64 %zext.105, 32
  %or.51 = or i64 %shl.51, %zext.104
  %.796 = add i64 %or.51, 4
  %inttoptr_bytes.51 = inttoptr i64 %.796 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.797 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.798 = bitcast ptr %R10 to ptr
  store float %.797, ptr %.798, align 4
  %.801 = load i32, ptr %R2, align 4
  %zext.106 = zext i32 %.801 to i64
  %zext.107 = zext i32 %R3.0 to i64
  %shl.52 = shl i64 %zext.107, 32
  %or.52 = or i64 %shl.52, %zext.106
  %.803 = add i64 %or.52, 8
  %inttoptr_bytes.52 = inttoptr i64 %.803 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.804 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.805 = bitcast ptr %R13 to ptr
  store float %.804, ptr %.805, align 4
  %zext.108 = zext i32 %UR4.0 to i64
  %zext.109 = zext i32 %UR5.0 to i64
  %shl.53 = shl i64 %zext.109, 32
  %or.53 = or i64 %shl.53, %zext.108
  %.810 = add i64 %or.53, 8
  %inttoptr_bytes.53 = inttoptr i64 %.810 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.811 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.812 = bitcast ptr %R12 to ptr
  store float %.811, ptr %.812, align 4
  %.815 = load i32, ptr %R2, align 4
  %zext.110 = zext i32 %.815 to i64
  %zext.111 = zext i32 %R3.0 to i64
  %shl.54 = shl i64 %zext.111, 32
  %or.54 = or i64 %shl.54, %zext.110
  %.817 = add i64 %or.54, 12
  %inttoptr_bytes.54 = inttoptr i64 %.817 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.818 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.819 = bitcast ptr %R15 to ptr
  store float %.818, ptr %.819, align 4
  %zext.112 = zext i32 %UR4.0 to i64
  %zext.113 = zext i32 %UR5.0 to i64
  %shl.55 = shl i64 %zext.113, 32
  %or.55 = or i64 %shl.55, %zext.112
  %.824 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %.824 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.825 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.826 = bitcast ptr %R14 to ptr
  store float %.825, ptr %.826, align 4
  %.830 = add i32 %R6.0, -4
  %.831 = add i32 %.830, 0
  %.835 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.836 = extractvalue { i32, i1 } %.835, 0
  %.837 = extractvalue { i32, i1 } %.835, 1
  %.838 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.836, i32 0)
  %.839 = extractvalue { i32, i1 } %.838, 0
  %.840 = extractvalue { i32, i1 } %.838, 1
  %.841 = or i1 %.837, %.840
  %.845 = load i32, ptr %R5, align 4
  %.846 = add i32 %.845, 4
  %.847 = add i32 %.846, 0
  store i32 %.847, ptr %R5, align 4
  %cmp.8 = icmp ne i32 %.831, 1
  %.854 = and i1 %cmp.8, true
  %.860 = xor i1 true, true
  %.861 = zext i1 %.841 to i32
  %.862 = zext i1 %.860 to i32
  %add.22 = add i32 0, %UR5.0
  %add.23 = add i32 %add.22, 0
  %add.24 = add i32 %add.23, %.861
  %add.25 = add i32 %add.24, %.862
  %.865 = load float, ptr %R8, align 4
  %.866 = load float, ptr %R9, align 4
  %.867 = load float, ptr %R7, align 4
  %fmul.24 = fmul float %.865, %.866
  %fadd.24 = fadd float %fmul.24, %.867
  %.868 = bitcast ptr %R8 to ptr
  store float %fadd.24, ptr %.868, align 4
  %.871 = load i32, ptr %R2, align 4
  %.872 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.871, i32 16)
  %.873 = extractvalue { i32, i1 } %.872, 0
  %.874 = extractvalue { i32, i1 } %.872, 1
  %.875 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.873, i32 0)
  %.876 = extractvalue { i32, i1 } %.875, 0
  %.877 = extractvalue { i32, i1 } %.875, 1
  %.878 = or i1 %.874, %.877
  store i32 %.876, ptr %R9, align 4
  %.882 = load i32, ptr %R9, align 4
  store i32 %.882, ptr %R2, align 4
  %.885 = load float, ptr %R11, align 4
  %.886 = load float, ptr %R10, align 4
  %.887 = load float, ptr %R8, align 4
  %fmul.25 = fmul float %.885, %.886
  %fadd.25 = fadd float %fmul.25, %.887
  %.888 = bitcast ptr %R8 to ptr
  store float %fadd.25, ptr %.888, align 4
  %mul.6 = mul i32 0, 0
  %add.26 = add i32 %mul.6, %R3.0
  %zext.114 = zext i1 %.878 to i32
  %add.27 = add i32 %add.26, %zext.114
  store i32 %add.27, ptr %R10, align 4
  %.895 = load i32, ptr %R10, align 4
  %.898 = load float, ptr %R13, align 4
  %.899 = load float, ptr %R12, align 4
  %.900 = load float, ptr %R8, align 4
  %fmul.26 = fmul float %.898, %.899
  %fadd.26 = fadd float %fmul.26, %.900
  %.901 = bitcast ptr %R8 to ptr
  store float %fadd.26, ptr %.901, align 4
  %.904 = load float, ptr %R15, align 4
  %.905 = load float, ptr %R14, align 4
  %.906 = load float, ptr %R8, align 4
  %fmul.27 = fmul float %.904, %.905
  %fadd.27 = fadd float %fmul.27, %.906
  %.907 = bitcast ptr %R7 to ptr
  store float %fadd.27, ptr %.907, align 4
  %.911 = icmp eq i1 %.854, true
  br i1 %.911, label %.L_x_2, label %.L_x_1.loopexit

.L_x_1.loopexit:                                  ; preds = %.L_x_2
  br label %.L_x_1

.L_x_1:                                           ; preds = %.L_x_1.loopexit, %.L_x_5, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0
  %cmp.9 = icmp ne i32 %.80, 0
  %.918 = and i1 %cmp.9, true
  %.923 = icmp ne i1 %.918, true
  br i1 %.923, label %.L_x_0, label %.L_x_1_split_0x0930

.L_x_1_split_0x0930:                              ; preds = %.L_x_1
  %mul.7 = mul i32 0, 0
  %add.28 = add i32 %mul.7, 4
  store i32 %add.28, ptr %R8, align 4
  %.929 = load i32, ptr %R5, align 4
  %mul.8 = mul i32 %add, %Arg_4
  %add.29 = add i32 %mul.8, %.929
  store i32 %add.29, ptr %R2, align 4
  %.932 = load i32, ptr %R2, align 4
  %.933 = load i32, ptr %R8, align 4
  %zext.115 = zext i32 %.932 to i64
  %zext.116 = zext i32 %.933 to i64
  %mul.9 = mul i64 %zext.115, %zext.116
  %.934 = ptrtoint ptr %Arg_1 to i64
  %add.30 = add i64 %mul.9, %.934
  %.935 = and i64 %add.30, -4294967296
  %.936 = lshr i64 %.935, 32
  %trunc32.4 = trunc i64 %.936 to i32
  %trunc32.5 = trunc i64 %add.30 to i32
  store i32 %trunc32.5, ptr %R2, align 4
  %.940 = load i32, ptr %R5, align 4
  %.941 = load i32, ptr %R8, align 4
  %zext.117 = zext i32 %.940 to i64
  %zext.118 = zext i32 %.941 to i64
  %mul.10 = mul i64 %zext.117, %zext.118
  %.942 = ptrtoint ptr %Arg_0 to i64
  %add.31 = add i64 %mul.10, %.942
  %.943 = and i64 %add.31, -4294967296
  %.944 = lshr i64 %.943, 32
  %trunc32.6 = trunc i64 %.944 to i32
  %trunc32.7 = trunc i64 %add.31 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  store i32 %trunc32.6, ptr %R9, align 4
  %.948 = load i32, ptr %R2, align 4
  br label %.L_x_6

.L_x_6:                                           ; preds = %.L_x_6, %.L_x_1_split_0x0930
  %R6.4 = phi i32 [ %.948, %.L_x_1_split_0x0930 ], [ %.987, %.L_x_6 ]
  %R4.0 = phi i32 [ %.80, %.L_x_1_split_0x0930 ], [ %.971, %.L_x_6 ]
  %R3.4 = phi i32 [ %trunc32.4, %.L_x_1_split_0x0930 ], [ %add.33, %.L_x_6 ]
  store i32 %R6.4, ptr %R2, align 4
  %.955 = load i32, ptr %R8, align 4
  %zext.119 = zext i32 %.955 to i64
  %.956 = load i32, ptr %R9, align 4
  %zext.120 = zext i32 %.956 to i64
  %shl.56 = shl i64 %zext.120, 32
  %or.56 = or i64 %shl.56, %zext.119
  %.957 = add i64 %or.56, 0
  %inttoptr_bytes.56 = inttoptr i64 %.957 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.958 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.959 = bitcast ptr %R5 to ptr
  store float %.958, ptr %.959, align 4
  %.962 = load i32, ptr %R2, align 4
  %zext.121 = zext i32 %.962 to i64
  %zext.122 = zext i32 %R3.4 to i64
  %shl.57 = shl i64 %zext.122, 32
  %or.57 = or i64 %shl.57, %zext.121
  %.964 = add i64 %or.57, 0
  %inttoptr_bytes.57 = inttoptr i64 %.964 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.965 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.966 = bitcast ptr %R2 to ptr
  store float %.965, ptr %.966, align 4
  %.970 = add i32 %R4.0, -1
  %.971 = add i32 %.970, 0
  %cmp.10 = icmp ne i32 %.971, 0
  %.978 = and i1 %cmp.10, true
  %.983 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R6.4, i32 4)
  %.984 = extractvalue { i32, i1 } %.983, 0
  %.985 = extractvalue { i32, i1 } %.983, 1
  %.986 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.984, i32 0)
  %.987 = extractvalue { i32, i1 } %.986, 0
  %.988 = extractvalue { i32, i1 } %.986, 1
  %.989 = or i1 %.985, %.988
  %.993 = load i32, ptr %R8, align 4
  %.994 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.993, i32 4)
  %.995 = extractvalue { i32, i1 } %.994, 0
  %.996 = extractvalue { i32, i1 } %.994, 1
  %.997 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.995, i32 0)
  %.998 = extractvalue { i32, i1 } %.997, 0
  %.999 = extractvalue { i32, i1 } %.997, 1
  %.1000 = or i1 %.996, %.999
  store i32 %.998, ptr %R8, align 4
  %mul.11 = mul i32 0, 0
  %add.32 = add i32 %mul.11, %R3.4
  %zext.123 = zext i1 %.989 to i32
  %add.33 = add i32 %add.32, %zext.123
  %.1008 = load i32, ptr %R9, align 4
  %.1010 = xor i1 true, true
  %.1011 = zext i1 %.1000 to i32
  %.1012 = zext i1 %.1010 to i32
  %add.34 = add i32 0, %.1008
  %add.35 = add i32 %add.34, 0
  %add.36 = add i32 %add.35, %.1011
  %add.37 = add i32 %add.36, %.1012
  store i32 %add.37, ptr %R9, align 4
  %.1015 = load float, ptr %R2, align 4
  %.1016 = load float, ptr %R5, align 4
  %.1017 = load float, ptr %R7, align 4
  %fmul.28 = fmul float %.1015, %.1016
  %fadd.28 = fadd float %fmul.28, %.1017
  %.1018 = bitcast ptr %R7 to ptr
  store float %fadd.28, ptr %.1018, align 4
  %.1022 = icmp eq i1 %.978, true
  br i1 %.1022, label %.L_x_6, label %.L_x_0.loopexit

.L_x_0.loopexit:                                  ; preds = %.L_x_6
  br label %.L_x_0

.L_x_0:                                           ; preds = %.L_x_0.loopexit, %.L_x_1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060
  store i32 4, ptr %R5, align 4
  %.1028 = load i32, ptr %R5, align 4
  %zext.124 = zext i32 %add to i64
  %zext.125 = zext i32 %.1028 to i64
  %mul.12 = mul i64 %zext.124, %zext.125
  %.1029 = ptrtoint ptr %Arg_2 to i64
  %add.38 = add i64 %mul.12, %.1029
  %.1030 = and i64 %add.38, -4294967296
  %.1031 = lshr i64 %.1030, 32
  %trunc32.8 = trunc i64 %.1031 to i32
  %trunc32.9 = trunc i64 %add.38 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  %.1035 = load i32, ptr %R2, align 4
  %zext.126 = zext i32 %.1035 to i64
  %zext.127 = zext i32 %trunc32.8 to i64
  %shl.58 = shl i64 %zext.127, 32
  %or.58 = or i64 %shl.58, %zext.126
  %.1037 = add i64 %or.58, 0
  %inttoptr_bytes.58 = inttoptr i64 %.1037 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.1038 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.1039 = bitcast ptr %R2 to ptr
  store float %.1038, ptr %.1039, align 4
  %.1043 = load i32, ptr %R5, align 4
  %zext.128 = zext i32 %add to i64
  %zext.129 = zext i32 %.1043 to i64
  %mul.13 = mul i64 %zext.128, %zext.129
  %.1044 = ptrtoint ptr %Arg_3 to i64
  %add.39 = add i64 %mul.13, %.1044
  %.1045 = and i64 %add.39, -4294967296
  %.1046 = lshr i64 %.1045, 32
  %trunc32.10 = trunc i64 %.1046 to i32
  %trunc32.11 = trunc i64 %add.39 to i32
  store i32 %trunc32.10, ptr %R5, align 4
  %.1050 = load float, ptr %R2, align 4
  %.1051 = load float, ptr %R7, align 4
  %fadd.29 = fadd float %.1050, %.1051
  %.1052 = bitcast ptr %R7 to ptr
  store float %fadd.29, ptr %.1052, align 4
  %.1055 = load float, ptr %R7, align 4
  %zext.130 = zext i32 %trunc32.11 to i64
  %.1057 = load i32, ptr %R5, align 4
  %zext.131 = zext i32 %.1057 to i64
  %shl.59 = shl i64 %zext.131, 32
  %or.59 = or i64 %shl.59, %zext.130
  %.1058 = add i64 %or.59, 0
  %inttoptr_bytes.59 = inttoptr i64 %.1058 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.1055, ptr addrspace(1) %ptr_cast_for_access.59, align 4
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
  %UR4.2 = phi i32 [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %.381, %.L_x_12 ]
  %R6.2 = phi i32 [ %.86, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %.373, %.L_x_12 ]
  %UR5.2 = phi i32 [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %add.8, %.L_x_12 ]
  %R3.2 = phi i32 [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %add.10, %.L_x_12 ]
  %.147 = load i32, ptr %R2, align 4
  %zext.2 = zext i32 %.147 to i64
  %zext.3 = zext i32 %R3.2 to i64
  %shl = shl i64 %zext.3, 32
  %or = or i64 %shl, %zext.2
  %.149 = add i64 %or, 0
  %inttoptr_bytes = inttoptr i64 %.149 to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.150 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.151 = bitcast ptr %R8 to ptr
  store float %.150, ptr %.151, align 4
  %zext.4 = zext i32 %UR4.2 to i64
  %zext.5 = zext i32 %UR5.2 to i64
  %shl.1 = shl i64 %zext.5, 32
  %or.1 = or i64 %shl.1, %zext.4
  %.156 = add i64 %or.1, 0
  %inttoptr_bytes.1 = inttoptr i64 %.156 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.157 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.158 = bitcast ptr %R9 to ptr
  store float %.157, ptr %.158, align 4
  %.161 = load i32, ptr %R2, align 4
  %zext.6 = zext i32 %.161 to i64
  %zext.7 = zext i32 %R3.2 to i64
  %shl.2 = shl i64 %zext.7, 32
  %or.2 = or i64 %shl.2, %zext.6
  %.163 = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %.163 to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.164 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.165 = bitcast ptr %R11 to ptr
  store float %.164, ptr %.165, align 4
  %zext.8 = zext i32 %UR4.2 to i64
  %zext.9 = zext i32 %UR5.2 to i64
  %shl.3 = shl i64 %zext.9, 32
  %or.3 = or i64 %shl.3, %zext.8
  %.170 = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %.170 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.171 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.172 = bitcast ptr %R10 to ptr
  store float %.171, ptr %.172, align 4
  %.175 = load i32, ptr %R2, align 4
  %zext.10 = zext i32 %.175 to i64
  %zext.11 = zext i32 %R3.2 to i64
  %shl.4 = shl i64 %zext.11, 32
  %or.4 = or i64 %shl.4, %zext.10
  %.177 = add i64 %or.4, 8
  %inttoptr_bytes.4 = inttoptr i64 %.177 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.178 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.179 = bitcast ptr %R13 to ptr
  store float %.178, ptr %.179, align 4
  %zext.12 = zext i32 %UR4.2 to i64
  %zext.13 = zext i32 %UR5.2 to i64
  %shl.5 = shl i64 %zext.13, 32
  %or.5 = or i64 %shl.5, %zext.12
  %.184 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %.184 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.185 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.186 = bitcast ptr %R12 to ptr
  store float %.185, ptr %.186, align 4
  %.189 = load i32, ptr %R2, align 4
  %zext.14 = zext i32 %.189 to i64
  %zext.15 = zext i32 %R3.2 to i64
  %shl.6 = shl i64 %zext.15, 32
  %or.6 = or i64 %shl.6, %zext.14
  %.191 = add i64 %or.6, 12
  %inttoptr_bytes.6 = inttoptr i64 %.191 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.192 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.193 = bitcast ptr %R15 to ptr
  store float %.192, ptr %.193, align 4
  %zext.16 = zext i32 %UR4.2 to i64
  %zext.17 = zext i32 %UR5.2 to i64
  %shl.7 = shl i64 %zext.17, 32
  %or.7 = or i64 %shl.7, %zext.16
  %.198 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %.198 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.199 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.200 = bitcast ptr %R14 to ptr
  store float %.199, ptr %.200, align 4
  %.203 = load i32, ptr %R2, align 4
  %zext.18 = zext i32 %.203 to i64
  %zext.19 = zext i32 %R3.2 to i64
  %shl.8 = shl i64 %zext.19, 32
  %or.8 = or i64 %shl.8, %zext.18
  %.205 = add i64 %or.8, 16
  %inttoptr_bytes.8 = inttoptr i64 %.205 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.206 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.207 = bitcast ptr %R17 to ptr
  store float %.206, ptr %.207, align 4
  %zext.20 = zext i32 %UR4.2 to i64
  %zext.21 = zext i32 %UR5.2 to i64
  %shl.9 = shl i64 %zext.21, 32
  %or.9 = or i64 %shl.9, %zext.20
  %.212 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %.212 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.213 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.214 = bitcast ptr %R16 to ptr
  store float %.213, ptr %.214, align 4
  %.217 = load i32, ptr %R2, align 4
  %zext.22 = zext i32 %.217 to i64
  %zext.23 = zext i32 %R3.2 to i64
  %shl.10 = shl i64 %zext.23, 32
  %or.10 = or i64 %shl.10, %zext.22
  %.219 = add i64 %or.10, 20
  %inttoptr_bytes.10 = inttoptr i64 %.219 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.220 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.221 = bitcast ptr %R19 to ptr
  store float %.220, ptr %.221, align 4
  %zext.24 = zext i32 %UR4.2 to i64
  %zext.25 = zext i32 %UR5.2 to i64
  %shl.11 = shl i64 %zext.25, 32
  %or.11 = or i64 %shl.11, %zext.24
  %.226 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %.226 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.227 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.228 = bitcast ptr %R18 to ptr
  store float %.227, ptr %.228, align 4
  %.231 = load i32, ptr %R2, align 4
  %zext.26 = zext i32 %.231 to i64
  %zext.27 = zext i32 %R3.2 to i64
  %shl.12 = shl i64 %zext.27, 32
  %or.12 = or i64 %shl.12, %zext.26
  %.233 = add i64 %or.12, 24
  %inttoptr_bytes.12 = inttoptr i64 %.233 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.234 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.235 = bitcast ptr %R21 to ptr
  store float %.234, ptr %.235, align 4
  %zext.28 = zext i32 %UR4.2 to i64
  %zext.29 = zext i32 %UR5.2 to i64
  %shl.13 = shl i64 %zext.29, 32
  %or.13 = or i64 %shl.13, %zext.28
  %.240 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %.240 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.241 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.242 = bitcast ptr %R20 to ptr
  store float %.241, ptr %.242, align 4
  %.245 = load i32, ptr %R2, align 4
  %zext.30 = zext i32 %.245 to i64
  %zext.31 = zext i32 %R3.2 to i64
  %shl.14 = shl i64 %zext.31, 32
  %or.14 = or i64 %shl.14, %zext.30
  %.247 = add i64 %or.14, 28
  %inttoptr_bytes.14 = inttoptr i64 %.247 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.248 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.249 = bitcast ptr %R23 to ptr
  store float %.248, ptr %.249, align 4
  %zext.32 = zext i32 %UR4.2 to i64
  %zext.33 = zext i32 %UR5.2 to i64
  %shl.15 = shl i64 %zext.33, 32
  %or.15 = or i64 %shl.15, %zext.32
  %.254 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %.254 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.255 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.256 = bitcast ptr %R22 to ptr
  store float %.255, ptr %.256, align 4
  %.259 = load i32, ptr %R2, align 4
  %zext.34 = zext i32 %.259 to i64
  %zext.35 = zext i32 %R3.2 to i64
  %shl.16 = shl i64 %zext.35, 32
  %or.16 = or i64 %shl.16, %zext.34
  %.261 = add i64 %or.16, 32
  %inttoptr_bytes.16 = inttoptr i64 %.261 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.262 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.263 = bitcast ptr %R25 to ptr
  store float %.262, ptr %.263, align 4
  %zext.36 = zext i32 %UR4.2 to i64
  %zext.37 = zext i32 %UR5.2 to i64
  %shl.17 = shl i64 %zext.37, 32
  %or.17 = or i64 %shl.17, %zext.36
  %.268 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %.268 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.269 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.270 = bitcast ptr %R24 to ptr
  store float %.269, ptr %.270, align 4
  %.273 = load i32, ptr %R2, align 4
  %zext.38 = zext i32 %.273 to i64
  %zext.39 = zext i32 %R3.2 to i64
  %shl.18 = shl i64 %zext.39, 32
  %or.18 = or i64 %shl.18, %zext.38
  %.275 = add i64 %or.18, 36
  %inttoptr_bytes.18 = inttoptr i64 %.275 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.276 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.277 = bitcast ptr %R27 to ptr
  store float %.276, ptr %.277, align 4
  %zext.40 = zext i32 %UR4.2 to i64
  %zext.41 = zext i32 %UR5.2 to i64
  %shl.19 = shl i64 %zext.41, 32
  %or.19 = or i64 %shl.19, %zext.40
  %.282 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %.282 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.283 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.284 = bitcast ptr %R26 to ptr
  store float %.283, ptr %.284, align 4
  %.287 = load i32, ptr %R2, align 4
  %zext.42 = zext i32 %.287 to i64
  %zext.43 = zext i32 %R3.2 to i64
  %shl.20 = shl i64 %zext.43, 32
  %or.20 = or i64 %shl.20, %zext.42
  %.289 = add i64 %or.20, 40
  %inttoptr_bytes.20 = inttoptr i64 %.289 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.290 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.291 = bitcast ptr %R29 to ptr
  store float %.290, ptr %.291, align 4
  %zext.44 = zext i32 %UR4.2 to i64
  %zext.45 = zext i32 %UR5.2 to i64
  %shl.21 = shl i64 %zext.45, 32
  %or.21 = or i64 %shl.21, %zext.44
  %.296 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %.296 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.297 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.298 = bitcast ptr %R28 to ptr
  store float %.297, ptr %.298, align 4
  %.301 = load i32, ptr %R2, align 4
  %zext.46 = zext i32 %.301 to i64
  %zext.47 = zext i32 %R3.2 to i64
  %shl.22 = shl i64 %zext.47, 32
  %or.22 = or i64 %shl.22, %zext.46
  %.303 = add i64 %or.22, 44
  %inttoptr_bytes.22 = inttoptr i64 %.303 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.304 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.305 = bitcast ptr %R31 to ptr
  store float %.304, ptr %.305, align 4
  %zext.48 = zext i32 %UR4.2 to i64
  %zext.49 = zext i32 %UR5.2 to i64
  %shl.23 = shl i64 %zext.49, 32
  %or.23 = or i64 %shl.23, %zext.48
  %.310 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %.310 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.311 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.312 = bitcast ptr %R30 to ptr
  store float %.311, ptr %.312, align 4
  %.315 = load i32, ptr %R2, align 4
  %zext.50 = zext i32 %.315 to i64
  %zext.51 = zext i32 %R3.2 to i64
  %shl.24 = shl i64 %zext.51, 32
  %or.24 = or i64 %shl.24, %zext.50
  %.317 = add i64 %or.24, 48
  %inttoptr_bytes.24 = inttoptr i64 %.317 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.318 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.319 = bitcast ptr %R33 to ptr
  store float %.318, ptr %.319, align 4
  %zext.52 = zext i32 %UR4.2 to i64
  %zext.53 = zext i32 %UR5.2 to i64
  %shl.25 = shl i64 %zext.53, 32
  %or.25 = or i64 %shl.25, %zext.52
  %.324 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %.324 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.325 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.326 = bitcast ptr %R32 to ptr
  store float %.325, ptr %.326, align 4
  %.329 = load i32, ptr %R2, align 4
  %zext.54 = zext i32 %.329 to i64
  %zext.55 = zext i32 %R3.2 to i64
  %shl.26 = shl i64 %zext.55, 32
  %or.26 = or i64 %shl.26, %zext.54
  %.331 = add i64 %or.26, 52
  %inttoptr_bytes.26 = inttoptr i64 %.331 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.332 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.333 = bitcast ptr %R35 to ptr
  store float %.332, ptr %.333, align 4
  %zext.56 = zext i32 %UR4.2 to i64
  %zext.57 = zext i32 %UR5.2 to i64
  %shl.27 = shl i64 %zext.57, 32
  %or.27 = or i64 %shl.27, %zext.56
  %.338 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %.338 to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.339 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.340 = bitcast ptr %R34 to ptr
  store float %.339, ptr %.340, align 4
  %.343 = load i32, ptr %R2, align 4
  %zext.58 = zext i32 %.343 to i64
  %zext.59 = zext i32 %R3.2 to i64
  %shl.28 = shl i64 %zext.59, 32
  %or.28 = or i64 %shl.28, %zext.58
  %.345 = add i64 %or.28, 56
  %inttoptr_bytes.28 = inttoptr i64 %.345 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.346 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.347 = bitcast ptr %R37 to ptr
  store float %.346, ptr %.347, align 4
  %zext.60 = zext i32 %UR4.2 to i64
  %zext.61 = zext i32 %UR5.2 to i64
  %shl.29 = shl i64 %zext.61, 32
  %or.29 = or i64 %shl.29, %zext.60
  %.352 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %.352 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.353 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.354 = bitcast ptr %R36 to ptr
  store float %.353, ptr %.354, align 4
  %.357 = load i32, ptr %R2, align 4
  %zext.62 = zext i32 %.357 to i64
  %zext.63 = zext i32 %R3.2 to i64
  %shl.30 = shl i64 %zext.63, 32
  %or.30 = or i64 %shl.30, %zext.62
  %.359 = add i64 %or.30, 60
  %inttoptr_bytes.30 = inttoptr i64 %.359 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.360 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.361 = bitcast ptr %R39 to ptr
  store float %.360, ptr %.361, align 4
  %zext.64 = zext i32 %UR4.2 to i64
  %zext.65 = zext i32 %UR5.2 to i64
  %shl.31 = shl i64 %zext.65, 32
  %or.31 = or i64 %shl.31, %zext.64
  %.366 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %.366 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.367 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.368 = bitcast ptr %R38 to ptr
  store float %.367, ptr %.368, align 4
  %.372 = add i32 %R6.2, -16
  %.373 = add i32 %.372, 0
  %.377 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.378 = extractvalue { i32, i1 } %.377, 0
  %.379 = extractvalue { i32, i1 } %.377, 1
  %.380 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.378, i32 0)
  %.381 = extractvalue { i32, i1 } %.380, 0
  %.382 = extractvalue { i32, i1 } %.380, 1
  %.383 = or i1 %.379, %.382
  %.387 = load i32, ptr %R5, align 4
  %.388 = add i32 %.387, 16
  %.389 = add i32 %.388, 0
  store i32 %.389, ptr %R5, align 4
  %cmp.5 = icmp sgt i32 %.373, 12
  %.396 = and i1 %cmp.5, true
  %.402 = xor i1 true, true
  %.403 = zext i1 %.383 to i32
  %.404 = zext i1 %.402 to i32
  %add.5 = add i32 0, %UR5.2
  %add.6 = add i32 %add.5, 0
  %add.7 = add i32 %add.6, %.403
  %add.8 = add i32 %add.7, %.404
  %.407 = load i32, ptr %R2, align 4
  %.408 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.407, i32 64)
  %.409 = extractvalue { i32, i1 } %.408, 0
  %.410 = extractvalue { i32, i1 } %.408, 1
  %.411 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.409, i32 0)
  %.412 = extractvalue { i32, i1 } %.411, 0
  %.413 = extractvalue { i32, i1 } %.411, 1
  %.414 = or i1 %.410, %.413
  store i32 %.412, ptr %R2, align 4
  %mul.5 = mul i32 0, 0
  %add.9 = add i32 %mul.5, %R3.2
  %zext.66 = zext i1 %.414 to i32
  %add.10 = add i32 %add.9, %zext.66
  %.422 = load float, ptr %R8, align 4
  %.423 = load float, ptr %R9, align 4
  %.424 = load float, ptr %R7, align 4
  %fmul = fmul float %.422, %.423
  %fadd = fadd float %fmul, %.424
  %.425 = bitcast ptr %R8 to ptr
  store float %fadd, ptr %.425, align 4
  %.428 = load float, ptr %R11, align 4
  %.429 = load float, ptr %R10, align 4
  %.430 = load float, ptr %R8, align 4
  %fmul.1 = fmul float %.428, %.429
  %fadd.1 = fadd float %fmul.1, %.430
  %.431 = bitcast ptr %R8 to ptr
  store float %fadd.1, ptr %.431, align 4
  %.434 = load float, ptr %R13, align 4
  %.435 = load float, ptr %R12, align 4
  %.436 = load float, ptr %R8, align 4
  %fmul.2 = fmul float %.434, %.435
  %fadd.2 = fadd float %fmul.2, %.436
  %.437 = bitcast ptr %R8 to ptr
  store float %fadd.2, ptr %.437, align 4
  %.440 = load float, ptr %R15, align 4
  %.441 = load float, ptr %R14, align 4
  %.442 = load float, ptr %R8, align 4
  %fmul.3 = fmul float %.440, %.441
  %fadd.3 = fadd float %fmul.3, %.442
  %.443 = bitcast ptr %R8 to ptr
  store float %fadd.3, ptr %.443, align 4
  %.446 = load float, ptr %R17, align 4
  %.447 = load float, ptr %R16, align 4
  %.448 = load float, ptr %R8, align 4
  %fmul.4 = fmul float %.446, %.447
  %fadd.4 = fadd float %fmul.4, %.448
  %.449 = bitcast ptr %R8 to ptr
  store float %fadd.4, ptr %.449, align 4
  %.452 = load float, ptr %R19, align 4
  %.453 = load float, ptr %R18, align 4
  %.454 = load float, ptr %R8, align 4
  %fmul.5 = fmul float %.452, %.453
  %fadd.5 = fadd float %fmul.5, %.454
  %.455 = bitcast ptr %R8 to ptr
  store float %fadd.5, ptr %.455, align 4
  %.458 = load float, ptr %R21, align 4
  %.459 = load float, ptr %R20, align 4
  %.460 = load float, ptr %R8, align 4
  %fmul.6 = fmul float %.458, %.459
  %fadd.6 = fadd float %fmul.6, %.460
  %.461 = bitcast ptr %R8 to ptr
  store float %fadd.6, ptr %.461, align 4
  %.464 = load float, ptr %R23, align 4
  %.465 = load float, ptr %R22, align 4
  %.466 = load float, ptr %R8, align 4
  %fmul.7 = fmul float %.464, %.465
  %fadd.7 = fadd float %fmul.7, %.466
  %.467 = bitcast ptr %R8 to ptr
  store float %fadd.7, ptr %.467, align 4
  %.470 = load float, ptr %R25, align 4
  %.471 = load float, ptr %R24, align 4
  %.472 = load float, ptr %R8, align 4
  %fmul.8 = fmul float %.470, %.471
  %fadd.8 = fadd float %fmul.8, %.472
  %.473 = bitcast ptr %R8 to ptr
  store float %fadd.8, ptr %.473, align 4
  %.476 = load float, ptr %R27, align 4
  %.477 = load float, ptr %R26, align 4
  %.478 = load float, ptr %R8, align 4
  %fmul.9 = fmul float %.476, %.477
  %fadd.9 = fadd float %fmul.9, %.478
  %.479 = bitcast ptr %R8 to ptr
  store float %fadd.9, ptr %.479, align 4
  %.482 = load float, ptr %R29, align 4
  %.483 = load float, ptr %R28, align 4
  %.484 = load float, ptr %R8, align 4
  %fmul.10 = fmul float %.482, %.483
  %fadd.10 = fadd float %fmul.10, %.484
  %.485 = bitcast ptr %R8 to ptr
  store float %fadd.10, ptr %.485, align 4
  %.488 = load float, ptr %R31, align 4
  %.489 = load float, ptr %R30, align 4
  %.490 = load float, ptr %R8, align 4
  %fmul.11 = fmul float %.488, %.489
  %fadd.11 = fadd float %fmul.11, %.490
  %.491 = bitcast ptr %R8 to ptr
  store float %fadd.11, ptr %.491, align 4
  %.494 = load float, ptr %R33, align 4
  %.495 = load float, ptr %R32, align 4
  %.496 = load float, ptr %R8, align 4
  %fmul.12 = fmul float %.494, %.495
  %fadd.12 = fadd float %fmul.12, %.496
  %.497 = bitcast ptr %R8 to ptr
  store float %fadd.12, ptr %.497, align 4
  %.500 = load float, ptr %R35, align 4
  %.501 = load float, ptr %R34, align 4
  %.502 = load float, ptr %R8, align 4
  %fmul.13 = fmul float %.500, %.501
  %fadd.13 = fadd float %fmul.13, %.502
  %.503 = bitcast ptr %R8 to ptr
  store float %fadd.13, ptr %.503, align 4
  %.506 = load float, ptr %R37, align 4
  %.507 = load float, ptr %R36, align 4
  %.508 = load float, ptr %R8, align 4
  %fmul.14 = fmul float %.506, %.507
  %fadd.14 = fadd float %fmul.14, %.508
  %.509 = bitcast ptr %R8 to ptr
  store float %fadd.14, ptr %.509, align 4
  %.512 = load float, ptr %R39, align 4
  %.513 = load float, ptr %R38, align 4
  %.514 = load float, ptr %R8, align 4
  %fmul.15 = fmul float %.512, %.513
  %fadd.15 = fadd float %fmul.15, %.514
  %.515 = bitcast ptr %R7 to ptr
  store float %fadd.15, ptr %.515, align 4
  %.519 = icmp eq i1 %.396, true
  br i1 %.519, label %.L_x_12, label %.L_x_11.loopexit

.L_x_11.loopexit:                                 ; preds = %.L_x_12
  br label %.L_x_11

.L_x_11:                                          ; preds = %.L_x_11.loopexit, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190
  %UR4.1 = phi i32 [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %.381, %.L_x_11.loopexit ]
  %R6.1 = phi i32 [ %.86, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %.373, %.L_x_11.loopexit ]
  %UR5.1 = phi i32 [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %add.8, %.L_x_11.loopexit ]
  %R3.1 = phi i32 [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %add.10, %.L_x_11.loopexit ]
  %cmp.6 = icmp sgt i32 %R6.1, 4
  %.526 = and i1 %cmp.6, true
  %.531 = icmp ne i1 %.526, true
  br i1 %.531, label %.L_x_13, label %.L_x_11_split_0x0570

.L_x_11_split_0x0570:                             ; preds = %.L_x_11
  %.534 = load i32, ptr %R2, align 4
  %zext.67 = zext i32 %.534 to i64
  %zext.68 = zext i32 %R3.1 to i64
  %shl.32 = shl i64 %zext.68, 32
  %or.32 = or i64 %shl.32, %zext.67
  %.536 = add i64 %or.32, 0
  %inttoptr_bytes.32 = inttoptr i64 %.536 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.537 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.538 = bitcast ptr %R8 to ptr
  store float %.537, ptr %.538, align 4
  %zext.69 = zext i32 %UR4.1 to i64
  %zext.70 = zext i32 %UR5.1 to i64
  %shl.33 = shl i64 %zext.70, 32
  %or.33 = or i64 %shl.33, %zext.69
  %.543 = add i64 %or.33, 0
  %inttoptr_bytes.33 = inttoptr i64 %.543 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.544 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.545 = bitcast ptr %R9 to ptr
  store float %.544, ptr %.545, align 4
  %.548 = load i32, ptr %R2, align 4
  %zext.71 = zext i32 %.548 to i64
  %zext.72 = zext i32 %R3.1 to i64
  %shl.34 = shl i64 %zext.72, 32
  %or.34 = or i64 %shl.34, %zext.71
  %.550 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %.550 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.551 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.552 = bitcast ptr %R11 to ptr
  store float %.551, ptr %.552, align 4
  %zext.73 = zext i32 %UR4.1 to i64
  %zext.74 = zext i32 %UR5.1 to i64
  %shl.35 = shl i64 %zext.74, 32
  %or.35 = or i64 %shl.35, %zext.73
  %.557 = add i64 %or.35, 4
  %inttoptr_bytes.35 = inttoptr i64 %.557 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.558 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.559 = bitcast ptr %R10 to ptr
  store float %.558, ptr %.559, align 4
  %.562 = load i32, ptr %R2, align 4
  %zext.75 = zext i32 %.562 to i64
  %zext.76 = zext i32 %R3.1 to i64
  %shl.36 = shl i64 %zext.76, 32
  %or.36 = or i64 %shl.36, %zext.75
  %.564 = add i64 %or.36, 8
  %inttoptr_bytes.36 = inttoptr i64 %.564 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.565 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.566 = bitcast ptr %R13 to ptr
  store float %.565, ptr %.566, align 4
  %zext.77 = zext i32 %UR4.1 to i64
  %zext.78 = zext i32 %UR5.1 to i64
  %shl.37 = shl i64 %zext.78, 32
  %or.37 = or i64 %shl.37, %zext.77
  %.571 = add i64 %or.37, 8
  %inttoptr_bytes.37 = inttoptr i64 %.571 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.572 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.573 = bitcast ptr %R12 to ptr
  store float %.572, ptr %.573, align 4
  %.576 = load i32, ptr %R2, align 4
  %zext.79 = zext i32 %.576 to i64
  %zext.80 = zext i32 %R3.1 to i64
  %shl.38 = shl i64 %zext.80, 32
  %or.38 = or i64 %shl.38, %zext.79
  %.578 = add i64 %or.38, 12
  %inttoptr_bytes.38 = inttoptr i64 %.578 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.579 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.580 = bitcast ptr %R15 to ptr
  store float %.579, ptr %.580, align 4
  %zext.81 = zext i32 %UR4.1 to i64
  %zext.82 = zext i32 %UR5.1 to i64
  %shl.39 = shl i64 %zext.82, 32
  %or.39 = or i64 %shl.39, %zext.81
  %.585 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %.585 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.586 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.587 = bitcast ptr %R14 to ptr
  store float %.586, ptr %.587, align 4
  %.590 = load i32, ptr %R2, align 4
  %zext.83 = zext i32 %.590 to i64
  %zext.84 = zext i32 %R3.1 to i64
  %shl.40 = shl i64 %zext.84, 32
  %or.40 = or i64 %shl.40, %zext.83
  %.592 = add i64 %or.40, 16
  %inttoptr_bytes.40 = inttoptr i64 %.592 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.593 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.594 = bitcast ptr %R17 to ptr
  store float %.593, ptr %.594, align 4
  %zext.85 = zext i32 %UR4.1 to i64
  %zext.86 = zext i32 %UR5.1 to i64
  %shl.41 = shl i64 %zext.86, 32
  %or.41 = or i64 %shl.41, %zext.85
  %.599 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %.599 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.600 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.601 = bitcast ptr %R16 to ptr
  store float %.600, ptr %.601, align 4
  %.604 = load i32, ptr %R2, align 4
  %zext.87 = zext i32 %.604 to i64
  %zext.88 = zext i32 %R3.1 to i64
  %shl.42 = shl i64 %zext.88, 32
  %or.42 = or i64 %shl.42, %zext.87
  %.606 = add i64 %or.42, 20
  %inttoptr_bytes.42 = inttoptr i64 %.606 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.607 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.608 = bitcast ptr %R19 to ptr
  store float %.607, ptr %.608, align 4
  %zext.89 = zext i32 %UR4.1 to i64
  %zext.90 = zext i32 %UR5.1 to i64
  %shl.43 = shl i64 %zext.90, 32
  %or.43 = or i64 %shl.43, %zext.89
  %.613 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %.613 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.614 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.615 = bitcast ptr %R18 to ptr
  store float %.614, ptr %.615, align 4
  %.618 = load i32, ptr %R2, align 4
  %zext.91 = zext i32 %.618 to i64
  %zext.92 = zext i32 %R3.1 to i64
  %shl.44 = shl i64 %zext.92, 32
  %or.44 = or i64 %shl.44, %zext.91
  %.620 = add i64 %or.44, 24
  %inttoptr_bytes.44 = inttoptr i64 %.620 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.621 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.622 = bitcast ptr %R21 to ptr
  store float %.621, ptr %.622, align 4
  %zext.93 = zext i32 %UR4.1 to i64
  %zext.94 = zext i32 %UR5.1 to i64
  %shl.45 = shl i64 %zext.94, 32
  %or.45 = or i64 %shl.45, %zext.93
  %.627 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %.627 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.628 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.629 = bitcast ptr %R20 to ptr
  store float %.628, ptr %.629, align 4
  %.632 = load i32, ptr %R2, align 4
  %zext.95 = zext i32 %.632 to i64
  %zext.96 = zext i32 %R3.1 to i64
  %shl.46 = shl i64 %zext.96, 32
  %or.46 = or i64 %shl.46, %zext.95
  %.634 = add i64 %or.46, 28
  %inttoptr_bytes.46 = inttoptr i64 %.634 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.635 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.636 = bitcast ptr %R23 to ptr
  store float %.635, ptr %.636, align 4
  %zext.97 = zext i32 %UR4.1 to i64
  %zext.98 = zext i32 %UR5.1 to i64
  %shl.47 = shl i64 %zext.98, 32
  %or.47 = or i64 %shl.47, %zext.97
  %.641 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %.641 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.642 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.643 = bitcast ptr %R22 to ptr
  store float %.642, ptr %.643, align 4
  %.647 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.648 = extractvalue { i32, i1 } %.647, 0
  %.649 = extractvalue { i32, i1 } %.647, 1
  %.650 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.648, i32 0)
  %.651 = extractvalue { i32, i1 } %.650, 0
  %.652 = extractvalue { i32, i1 } %.650, 1
  %.653 = or i1 %.649, %.652
  %.661 = load i32, ptr %R5, align 4
  %.662 = add i32 %.661, 8
  %.663 = add i32 %.662, 0
  store i32 %.663, ptr %R5, align 4
  %.668 = xor i1 true, true
  %.669 = zext i1 %.653 to i32
  %.670 = zext i1 %.668 to i32
  %add.11 = add i32 0, %UR5.1
  %add.12 = add i32 %add.11, 0
  %add.13 = add i32 %add.12, %.669
  %add.14 = add i32 %add.13, %.670
  %.673 = load i32, ptr %R2, align 4
  %.674 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.673, i32 32)
  %.675 = extractvalue { i32, i1 } %.674, 0
  %.676 = extractvalue { i32, i1 } %.674, 1
  %.677 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.675, i32 0)
  %.678 = extractvalue { i32, i1 } %.677, 0
  %.679 = extractvalue { i32, i1 } %.677, 1
  %.680 = or i1 %.676, %.679
  store i32 %.678, ptr %R2, align 4
  %.685 = add i32 %R6.1, -8
  %.686 = add i32 %.685, 0
  %.691 = xor i1 true, true
  %.692 = zext i1 %.680 to i32
  %.693 = zext i1 %.691 to i32
  %add.15 = add i32 0, %R3.1
  %add.16 = add i32 %add.15, 0
  %add.17 = add i32 %add.16, %.692
  %add.18 = add i32 %add.17, %.693
  %.696 = load float, ptr %R8, align 4
  %.697 = load float, ptr %R9, align 4
  %.698 = load float, ptr %R7, align 4
  %fmul.16 = fmul float %.696, %.697
  %fadd.16 = fadd float %fmul.16, %.698
  %.699 = bitcast ptr %R8 to ptr
  store float %fadd.16, ptr %.699, align 4
  %.702 = load float, ptr %R11, align 4
  %.703 = load float, ptr %R10, align 4
  %.704 = load float, ptr %R8, align 4
  %fmul.17 = fmul float %.702, %.703
  %fadd.17 = fadd float %fmul.17, %.704
  %.705 = bitcast ptr %R8 to ptr
  store float %fadd.17, ptr %.705, align 4
  %.708 = load float, ptr %R13, align 4
  %.709 = load float, ptr %R12, align 4
  %.710 = load float, ptr %R8, align 4
  %fmul.18 = fmul float %.708, %.709
  %fadd.18 = fadd float %fmul.18, %.710
  %.711 = bitcast ptr %R8 to ptr
  store float %fadd.18, ptr %.711, align 4
  %.714 = load float, ptr %R15, align 4
  %.715 = load float, ptr %R14, align 4
  %.716 = load float, ptr %R8, align 4
  %fmul.19 = fmul float %.714, %.715
  %fadd.19 = fadd float %fmul.19, %.716
  %.717 = bitcast ptr %R8 to ptr
  store float %fadd.19, ptr %.717, align 4
  %.720 = load float, ptr %R17, align 4
  %.721 = load float, ptr %R16, align 4
  %.722 = load float, ptr %R8, align 4
  %fmul.20 = fmul float %.720, %.721
  %fadd.20 = fadd float %fmul.20, %.722
  %.723 = bitcast ptr %R8 to ptr
  store float %fadd.20, ptr %.723, align 4
  %.726 = load float, ptr %R19, align 4
  %.727 = load float, ptr %R18, align 4
  %.728 = load float, ptr %R8, align 4
  %fmul.21 = fmul float %.726, %.727
  %fadd.21 = fadd float %fmul.21, %.728
  %.729 = bitcast ptr %R8 to ptr
  store float %fadd.21, ptr %.729, align 4
  %.732 = load float, ptr %R21, align 4
  %.733 = load float, ptr %R20, align 4
  %.734 = load float, ptr %R8, align 4
  %fmul.22 = fmul float %.732, %.733
  %fadd.22 = fadd float %fmul.22, %.734
  %.735 = bitcast ptr %R8 to ptr
  store float %fadd.22, ptr %.735, align 4
  %.738 = load float, ptr %R23, align 4
  %.739 = load float, ptr %R22, align 4
  %.740 = load float, ptr %R8, align 4
  %fmul.23 = fmul float %.738, %.739
  %fadd.23 = fadd float %fmul.23, %.740
  %.741 = bitcast ptr %R7 to ptr
  store float %fadd.23, ptr %.741, align 4
  br label %.L_x_13

.L_x_13:                                          ; preds = %.L_x_11_split_0x0570, %.L_x_11
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_11 ], [ %.651, %.L_x_11_split_0x0570 ]
  %R6.3 = phi i32 [ %R6.1, %.L_x_11 ], [ %.686, %.L_x_11_split_0x0570 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_11 ], [ %add.14, %.L_x_11_split_0x0570 ]
  %R3.3 = phi i32 [ %R3.1, %.L_x_11 ], [ %add.18, %.L_x_11_split_0x0570 ]
  %cmp.7 = icmp ne i32 %R6.3, 0
  %.749 = or i1 %cmp.7, %.104
  %.754 = icmp ne i1 %.749, true
  br i1 %.754, label %.L_x_9, label %.L_x_10.preheader

.L_x_10.preheader:                                ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0100, %.L_x_13
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_13 ], [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %R6.0.ph = phi i32 [ %R6.3, %.L_x_13 ], [ %.86, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_13 ], [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %R3.0.ph = phi i32 [ %R3.3, %.L_x_13 ], [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  br label %.L_x_10

.L_x_10:                                          ; preds = %.L_x_10.preheader, %.L_x_10
  %UR4.0 = phi i32 [ %.823, %.L_x_10 ], [ %UR4.0.ph, %.L_x_10.preheader ]
  %R6.0 = phi i32 [ %.815, %.L_x_10 ], [ %R6.0.ph, %.L_x_10.preheader ]
  %UR5.0 = phi i32 [ %add.22, %.L_x_10 ], [ %UR5.0.ph, %.L_x_10.preheader ]
  %R3.0 = phi i32 [ %.882, %.L_x_10 ], [ %R3.0.ph, %.L_x_10.preheader ]
  %.757 = load i32, ptr %R2, align 4
  %zext.99 = zext i32 %.757 to i64
  %zext.100 = zext i32 %R3.0 to i64
  %shl.48 = shl i64 %zext.100, 32
  %or.48 = or i64 %shl.48, %zext.99
  %.759 = add i64 %or.48, 0
  %inttoptr_bytes.48 = inttoptr i64 %.759 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.760 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.761 = bitcast ptr %R8 to ptr
  store float %.760, ptr %.761, align 4
  %zext.101 = zext i32 %UR4.0 to i64
  %zext.102 = zext i32 %UR5.0 to i64
  %shl.49 = shl i64 %zext.102, 32
  %or.49 = or i64 %shl.49, %zext.101
  %.766 = add i64 %or.49, 0
  %inttoptr_bytes.49 = inttoptr i64 %.766 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.767 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.768 = bitcast ptr %R9 to ptr
  store float %.767, ptr %.768, align 4
  %.771 = load i32, ptr %R2, align 4
  %zext.103 = zext i32 %.771 to i64
  %zext.104 = zext i32 %R3.0 to i64
  %shl.50 = shl i64 %zext.104, 32
  %or.50 = or i64 %shl.50, %zext.103
  %.773 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %.773 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.774 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.775 = bitcast ptr %R11 to ptr
  store float %.774, ptr %.775, align 4
  %zext.105 = zext i32 %UR4.0 to i64
  %zext.106 = zext i32 %UR5.0 to i64
  %shl.51 = shl i64 %zext.106, 32
  %or.51 = or i64 %shl.51, %zext.105
  %.780 = add i64 %or.51, 4
  %inttoptr_bytes.51 = inttoptr i64 %.780 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.781 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.782 = bitcast ptr %R10 to ptr
  store float %.781, ptr %.782, align 4
  %.785 = load i32, ptr %R2, align 4
  %zext.107 = zext i32 %.785 to i64
  %zext.108 = zext i32 %R3.0 to i64
  %shl.52 = shl i64 %zext.108, 32
  %or.52 = or i64 %shl.52, %zext.107
  %.787 = add i64 %or.52, 8
  %inttoptr_bytes.52 = inttoptr i64 %.787 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.788 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.789 = bitcast ptr %R13 to ptr
  store float %.788, ptr %.789, align 4
  %zext.109 = zext i32 %UR4.0 to i64
  %zext.110 = zext i32 %UR5.0 to i64
  %shl.53 = shl i64 %zext.110, 32
  %or.53 = or i64 %shl.53, %zext.109
  %.794 = add i64 %or.53, 8
  %inttoptr_bytes.53 = inttoptr i64 %.794 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.795 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.796 = bitcast ptr %R12 to ptr
  store float %.795, ptr %.796, align 4
  %.799 = load i32, ptr %R2, align 4
  %zext.111 = zext i32 %.799 to i64
  %zext.112 = zext i32 %R3.0 to i64
  %shl.54 = shl i64 %zext.112, 32
  %or.54 = or i64 %shl.54, %zext.111
  %.801 = add i64 %or.54, 12
  %inttoptr_bytes.54 = inttoptr i64 %.801 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.802 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.803 = bitcast ptr %R15 to ptr
  store float %.802, ptr %.803, align 4
  %zext.113 = zext i32 %UR4.0 to i64
  %zext.114 = zext i32 %UR5.0 to i64
  %shl.55 = shl i64 %zext.114, 32
  %or.55 = or i64 %shl.55, %zext.113
  %.808 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %.808 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.809 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.810 = bitcast ptr %R14 to ptr
  store float %.809, ptr %.810, align 4
  %.814 = add i32 %R6.0, -4
  %.815 = add i32 %.814, 0
  %.819 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.820 = extractvalue { i32, i1 } %.819, 0
  %.821 = extractvalue { i32, i1 } %.819, 1
  %.822 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.820, i32 0)
  %.823 = extractvalue { i32, i1 } %.822, 0
  %.824 = extractvalue { i32, i1 } %.822, 1
  %.825 = or i1 %.821, %.824
  %.829 = load i32, ptr %R5, align 4
  %.830 = add i32 %.829, 4
  %.831 = add i32 %.830, 0
  store i32 %.831, ptr %R5, align 4
  %cmp.8 = icmp ne i32 %.815, 0
  %.838 = and i1 %cmp.8, true
  %.844 = xor i1 true, true
  %.845 = zext i1 %.825 to i32
  %.846 = zext i1 %.844 to i32
  %add.19 = add i32 0, %UR5.0
  %add.20 = add i32 %add.19, 0
  %add.21 = add i32 %add.20, %.845
  %add.22 = add i32 %add.21, %.846
  %.849 = load float, ptr %R8, align 4
  %.850 = load float, ptr %R9, align 4
  %.851 = load float, ptr %R7, align 4
  %fmul.24 = fmul float %.849, %.850
  %fadd.24 = fadd float %fmul.24, %.851
  %.852 = bitcast ptr %R8 to ptr
  store float %fadd.24, ptr %.852, align 4
  %.855 = load i32, ptr %R2, align 4
  %.856 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.855, i32 16)
  %.857 = extractvalue { i32, i1 } %.856, 0
  %.858 = extractvalue { i32, i1 } %.856, 1
  %.859 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.857, i32 0)
  %.860 = extractvalue { i32, i1 } %.859, 0
  %.861 = extractvalue { i32, i1 } %.859, 1
  %.862 = or i1 %.858, %.861
  store i32 %.860, ptr %R9, align 4
  %.866 = load i32, ptr %R9, align 4
  %mul.6 = mul i32 0, 0
  %add.23 = add i32 %mul.6, %.866
  store i32 %add.23, ptr %R2, align 4
  %.869 = load float, ptr %R11, align 4
  %.870 = load float, ptr %R10, align 4
  %.871 = load float, ptr %R8, align 4
  %fmul.25 = fmul float %.869, %.870
  %fadd.25 = fadd float %fmul.25, %.871
  %.872 = bitcast ptr %R8 to ptr
  store float %fadd.25, ptr %.872, align 4
  %.877 = xor i1 true, true
  %.878 = zext i1 %.862 to i32
  %.879 = zext i1 %.877 to i32
  %add.24 = add i32 0, %R3.0
  %add.25 = add i32 %add.24, 0
  %add.26 = add i32 %add.25, %.878
  %add.27 = add i32 %add.26, %.879
  store i32 %add.27, ptr %R10, align 4
  %.882 = load i32, ptr %R10, align 4
  %.885 = load float, ptr %R13, align 4
  %.886 = load float, ptr %R12, align 4
  %.887 = load float, ptr %R8, align 4
  %fmul.26 = fmul float %.885, %.886
  %fadd.26 = fadd float %fmul.26, %.887
  %.888 = bitcast ptr %R8 to ptr
  store float %fadd.26, ptr %.888, align 4
  %.891 = load float, ptr %R15, align 4
  %.892 = load float, ptr %R14, align 4
  %.893 = load float, ptr %R8, align 4
  %fmul.27 = fmul float %.891, %.892
  %fadd.27 = fadd float %fmul.27, %.893
  %.894 = bitcast ptr %R7 to ptr
  store float %fadd.27, ptr %.894, align 4
  %.898 = icmp eq i1 %.838, true
  br i1 %.898, label %.L_x_10, label %.L_x_9.loopexit

.L_x_9.loopexit:                                  ; preds = %.L_x_10
  br label %.L_x_9

.L_x_9:                                           ; preds = %.L_x_9.loopexit, %.L_x_13, %.text._Z8fc_layerPfS_S_S_ii_split_0x00a0
  %cmp.9 = icmp ne i32 %.61, 0
  %.905 = and i1 %cmp.9, true
  %.910 = icmp ne i1 %.905, true
  br i1 %.910, label %.L_x_8, label %.L_x_9_split_0x0900

.L_x_9_split_0x0900:                              ; preds = %.L_x_9
  store i32 4, ptr %R8, align 4
  %.916 = load i32, ptr %R5, align 4
  %mul.7 = mul i32 %add, %Arg_4
  %add.28 = add i32 %mul.7, %.916
  store i32 %add.28, ptr %R2, align 4
  %.919 = load i32, ptr %R2, align 4
  %.920 = load i32, ptr %R8, align 4
  %zext.115 = zext i32 %.919 to i64
  %zext.116 = zext i32 %.920 to i64
  %mul.8 = mul i64 %zext.115, %zext.116
  %.921 = ptrtoint ptr %Arg_1 to i64
  %add.29 = add i64 %mul.8, %.921
  %.922 = and i64 %add.29, -4294967296
  %.923 = lshr i64 %.922, 32
  %trunc32.4 = trunc i64 %.923 to i32
  %trunc32.5 = trunc i64 %add.29 to i32
  store i32 %trunc32.5, ptr %R2, align 4
  %.927 = load i32, ptr %R5, align 4
  %.928 = load i32, ptr %R8, align 4
  %zext.117 = zext i32 %.927 to i64
  %zext.118 = zext i32 %.928 to i64
  %mul.9 = mul i64 %zext.117, %zext.118
  %.929 = ptrtoint ptr %Arg_0 to i64
  %add.30 = add i64 %mul.9, %.929
  %.930 = and i64 %add.30, -4294967296
  %.931 = lshr i64 %.930, 32
  %trunc32.6 = trunc i64 %.931 to i32
  %trunc32.7 = trunc i64 %add.30 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  store i32 %trunc32.6, ptr %R9, align 4
  %.935 = load i32, ptr %R2, align 4
  br label %.L_x_14

.L_x_14:                                          ; preds = %.L_x_14, %.L_x_9_split_0x0900
  %R6.4 = phi i32 [ %.935, %.L_x_9_split_0x0900 ], [ %.974, %.L_x_14 ]
  %R4.0 = phi i32 [ %.61, %.L_x_9_split_0x0900 ], [ %.958, %.L_x_14 ]
  %R3.4 = phi i32 [ %trunc32.4, %.L_x_9_split_0x0900 ], [ %add.35, %.L_x_14 ]
  %mul.10 = mul i32 0, 0
  %add.31 = add i32 %mul.10, %R6.4
  store i32 %add.31, ptr %R2, align 4
  %.942 = load i32, ptr %R8, align 4
  %zext.119 = zext i32 %.942 to i64
  %.943 = load i32, ptr %R9, align 4
  %zext.120 = zext i32 %.943 to i64
  %shl.56 = shl i64 %zext.120, 32
  %or.56 = or i64 %shl.56, %zext.119
  %.944 = add i64 %or.56, 0
  %inttoptr_bytes.56 = inttoptr i64 %.944 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.945 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.946 = bitcast ptr %R5 to ptr
  store float %.945, ptr %.946, align 4
  %.949 = load i32, ptr %R2, align 4
  %zext.121 = zext i32 %.949 to i64
  %zext.122 = zext i32 %R3.4 to i64
  %shl.57 = shl i64 %zext.122, 32
  %or.57 = or i64 %shl.57, %zext.121
  %.951 = add i64 %or.57, 0
  %inttoptr_bytes.57 = inttoptr i64 %.951 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.952 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.953 = bitcast ptr %R2 to ptr
  store float %.952, ptr %.953, align 4
  %.957 = add i32 %R4.0, -1
  %.958 = add i32 %.957, 0
  %cmp.10 = icmp ne i32 %.958, 0
  %.965 = and i1 %cmp.10, true
  %.970 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R6.4, i32 4)
  %.971 = extractvalue { i32, i1 } %.970, 0
  %.972 = extractvalue { i32, i1 } %.970, 1
  %.973 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.971, i32 0)
  %.974 = extractvalue { i32, i1 } %.973, 0
  %.975 = extractvalue { i32, i1 } %.973, 1
  %.976 = or i1 %.972, %.975
  %.980 = load i32, ptr %R8, align 4
  %.981 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.980, i32 4)
  %.982 = extractvalue { i32, i1 } %.981, 0
  %.983 = extractvalue { i32, i1 } %.981, 1
  %.984 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.982, i32 0)
  %.985 = extractvalue { i32, i1 } %.984, 0
  %.986 = extractvalue { i32, i1 } %.984, 1
  %.987 = or i1 %.983, %.986
  store i32 %.985, ptr %R8, align 4
  %.993 = xor i1 true, true
  %.994 = zext i1 %.976 to i32
  %.995 = zext i1 %.993 to i32
  %add.32 = add i32 0, %R3.4
  %add.33 = add i32 %add.32, 0
  %add.34 = add i32 %add.33, %.994
  %add.35 = add i32 %add.34, %.995
  %.998 = load i32, ptr %R9, align 4
  %.1000 = xor i1 true, true
  %.1001 = zext i1 %.987 to i32
  %.1002 = zext i1 %.1000 to i32
  %add.36 = add i32 0, %.998
  %add.37 = add i32 %add.36, 0
  %add.38 = add i32 %add.37, %.1001
  %add.39 = add i32 %add.38, %.1002
  store i32 %add.39, ptr %R9, align 4
  %.1005 = load float, ptr %R2, align 4
  %.1006 = load float, ptr %R5, align 4
  %.1007 = load float, ptr %R7, align 4
  %fmul.28 = fmul float %.1005, %.1006
  %fadd.28 = fadd float %fmul.28, %.1007
  %.1008 = bitcast ptr %R7 to ptr
  store float %fadd.28, ptr %.1008, align 4
  %.1012 = icmp eq i1 %.965, true
  br i1 %.1012, label %.L_x_14, label %.L_x_8.loopexit

.L_x_8.loopexit:                                  ; preds = %.L_x_14
  br label %.L_x_8

.L_x_8:                                           ; preds = %.L_x_8.loopexit, %.L_x_9, %.text._Z8fc_layerPfS_S_S_ii_split_0x0060
  store i32 4, ptr %R5, align 4
  %.1018 = load i32, ptr %R5, align 4
  %zext.123 = zext i32 %add to i64
  %zext.124 = zext i32 %.1018 to i64
  %mul.11 = mul i64 %zext.123, %zext.124
  %.1019 = ptrtoint ptr %Arg_2 to i64
  %add.40 = add i64 %mul.11, %.1019
  %.1020 = and i64 %add.40, -4294967296
  %.1021 = lshr i64 %.1020, 32
  %trunc32.8 = trunc i64 %.1021 to i32
  %trunc32.9 = trunc i64 %add.40 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  %.1025 = load i32, ptr %R2, align 4
  %zext.125 = zext i32 %.1025 to i64
  %zext.126 = zext i32 %trunc32.8 to i64
  %shl.58 = shl i64 %zext.126, 32
  %or.58 = or i64 %shl.58, %zext.125
  %.1027 = add i64 %or.58, 0
  %inttoptr_bytes.58 = inttoptr i64 %.1027 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.1028 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.1029 = bitcast ptr %R2 to ptr
  store float %.1028, ptr %.1029, align 4
  %.1033 = load i32, ptr %R5, align 4
  %zext.127 = zext i32 %add to i64
  %zext.128 = zext i32 %.1033 to i64
  %mul.12 = mul i64 %zext.127, %zext.128
  %.1034 = ptrtoint ptr %Arg_3 to i64
  %add.41 = add i64 %mul.12, %.1034
  %.1035 = and i64 %add.41, -4294967296
  %.1036 = lshr i64 %.1035, 32
  %trunc32.10 = trunc i64 %.1036 to i32
  %trunc32.11 = trunc i64 %add.41 to i32
  store i32 %trunc32.10, ptr %R5, align 4
  %.1040 = load float, ptr %R2, align 4
  %.1041 = load float, ptr %R7, align 4
  %fadd.29 = fadd float %.1040, %.1041
  %.1042 = bitcast ptr %R7 to ptr
  store float %fadd.29, ptr %.1042, align 4
  %.1045 = load float, ptr %R7, align 4
  %zext.129 = zext i32 %trunc32.11 to i64
  %.1047 = load i32, ptr %R5, align 4
  %zext.130 = zext i32 %.1047 to i64
  %shl.59 = shl i64 %zext.130, 32
  %or.59 = or i64 %shl.59, %zext.129
  %.1048 = add i64 %or.59, 0
  %inttoptr_bytes.59 = inttoptr i64 %.1048 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.1045, ptr addrspace(1) %ptr_cast_for_access.59, align 4
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
  %R16.0 = phi i32 [ %add.17, %.text._Z10max_pool2dPfS_iii_split_0x0290 ], [ %.578, %.L_x_19 ]
  %cmp.9 = icmp ne i32 %.246, 0
  %.283 = and i1 %cmp.9, true
  %.288 = icmp ne i1 %.257, true
  br i1 %.288, label %.L_x_17, label %.L_x_20_split_0x0360

.L_x_20_split_0x0360:                             ; preds = %.L_x_20
  %mul.19 = mul i32 %add.18, 1
  %add.19 = add i32 %mul.19, %R16.0
  br label %.L_x_18

.L_x_18:                                          ; preds = %.L_x_18, %.L_x_20_split_0x0360
  %UR4.1 = phi i32 [ 0, %.L_x_20_split_0x0360 ], [ %.362, %.L_x_18 ]
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
  %.320 = add i64 %or, 0
  %inttoptr_bytes = inttoptr i64 %.320 to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.321 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.322 = bitcast ptr %R2 to ptr
  store float %.321, ptr %.322, align 4
  %.326 = load i32, ptr %R4, align 4
  %zext.7 = zext i32 %add.20 to i64
  %zext.8 = zext i32 4 to i64
  %mul.23 = mul i64 %zext.7, %zext.8
  %zext.9 = zext i32 %.326 to i64
  %add.23 = add i64 %mul.23, %zext.9
  %.327 = and i64 %add.23, -4294967296
  %.328 = lshr i64 %.327, 32
  %trunc32.4 = trunc i64 %.328 to i32
  %trunc32.5 = trunc i64 %add.23 to i32
  store i32 %trunc32.5, ptr %R6, align 4
  %.332 = load i32, ptr %R4, align 4
  %zext.10 = zext i32 %.332 to i64
  %zext.11 = zext i32 %trunc32.2 to i64
  %shl.1 = shl i64 %zext.11, 32
  %or.1 = or i64 %shl.1, %zext.10
  %.334 = add i64 %or.1, 0
  %inttoptr_bytes.1 = inttoptr i64 %.334 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.335 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.336 = bitcast ptr %R4 to ptr
  store float %.335, ptr %.336, align 4
  %.340 = load i32, ptr %R6, align 4
  %zext.12 = zext i32 %add.20 to i64
  %zext.13 = zext i32 4 to i64
  %mul.24 = mul i64 %zext.12, %zext.13
  %zext.14 = zext i32 %.340 to i64
  %add.24 = add i64 %mul.24, %zext.14
  %.341 = and i64 %add.24, -4294967296
  %.342 = lshr i64 %.341, 32
  %trunc32.6 = trunc i64 %.342 to i32
  %trunc32.7 = trunc i64 %add.24 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  %.346 = load i32, ptr %R6, align 4
  %zext.15 = zext i32 %.346 to i64
  %zext.16 = zext i32 %trunc32.4 to i64
  %shl.2 = shl i64 %zext.16, 32
  %or.2 = or i64 %shl.2, %zext.15
  %.348 = add i64 %or.2, 0
  %inttoptr_bytes.2 = inttoptr i64 %.348 to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.349 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.350 = bitcast ptr %R6 to ptr
  store float %.349, ptr %.350, align 4
  %.353 = load i32, ptr %R8, align 4
  %zext.17 = zext i32 %.353 to i64
  %zext.18 = zext i32 %trunc32.6 to i64
  %shl.3 = shl i64 %zext.18, 32
  %or.3 = or i64 %shl.3, %zext.17
  %.355 = add i64 %or.3, 0
  %inttoptr_bytes.3 = inttoptr i64 %.355 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.356 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.357 = bitcast ptr %R8 to ptr
  store float %.356, ptr %.357, align 4
  %.361 = add i32 %UR4.1, 4
  %.362 = add i32 %.361, 0
  %.367 = add i32 %.266, %.362
  %.368 = add i32 %.367, 0
  %cmp.10 = icmp ne i32 %.368, 0
  %.375 = and i1 %cmp.10, true
  %mul.25 = mul i32 %add.20, 4
  %add.25 = add i32 %mul.25, %R17.0
  %.383 = load float, ptr %R2, align 4
  %.384 = load float, ptr %R11, align 4
  %.385 = xor i1 true, true
  %.386 = fcmp olt float %.383, %.384
  %.387 = fcmp ogt float %.383, %.384
  %mnmx_min = select i1 %.386, float %.383, float %.384
  %mnmx_max = select i1 %.387, float %.383, float %.384
  %mnmx_final = select i1 %.385, float %mnmx_min, float %mnmx_max
  %.388 = bitcast ptr %R11 to ptr
  store float %mnmx_final, ptr %.388, align 4
  %.391 = load float, ptr %R11, align 4
  %.392 = load float, ptr %R4, align 4
  %.393 = xor i1 true, true
  %.394 = fcmp olt float %.391, %.392
  %.395 = fcmp ogt float %.391, %.392
  %mnmx_min.1 = select i1 %.394, float %.391, float %.392
  %mnmx_max.1 = select i1 %.395, float %.391, float %.392
  %mnmx_final.1 = select i1 %.393, float %mnmx_min.1, float %mnmx_max.1
  %.396 = bitcast ptr %R11 to ptr
  store float %mnmx_final.1, ptr %.396, align 4
  %.399 = load float, ptr %R11, align 4
  %.400 = load float, ptr %R6, align 4
  %.401 = xor i1 true, true
  %.402 = fcmp olt float %.399, %.400
  %.403 = fcmp ogt float %.399, %.400
  %mnmx_min.2 = select i1 %.402, float %.399, float %.400
  %mnmx_max.2 = select i1 %.403, float %.399, float %.400
  %mnmx_final.2 = select i1 %.401, float %mnmx_min.2, float %mnmx_max.2
  %.404 = bitcast ptr %R11 to ptr
  store float %mnmx_final.2, ptr %.404, align 4
  %.407 = load float, ptr %R11, align 4
  %.408 = load float, ptr %R8, align 4
  %.409 = xor i1 true, true
  %.410 = fcmp olt float %.407, %.408
  %.411 = fcmp ogt float %.407, %.408
  %mnmx_min.3 = select i1 %.410, float %.407, float %.408
  %mnmx_max.3 = select i1 %.411, float %.407, float %.408
  %mnmx_final.3 = select i1 %.409, float %mnmx_min.3, float %mnmx_max.3
  %.412 = bitcast ptr %R11 to ptr
  store float %mnmx_final.3, ptr %.412, align 4
  %.416 = icmp eq i1 %.375, true
  br i1 %.416, label %.L_x_18, label %.L_x_17.loopexit

.L_x_17.loopexit:                                 ; preds = %.L_x_18
  br label %.L_x_17

.L_x_17:                                          ; preds = %.L_x_17.loopexit, %.L_x_20
  %UR4.0 = phi i32 [ 0, %.L_x_20 ], [ %.362, %.L_x_17.loopexit ]
  %mul.26 = mul i32 %add.14, 1
  %add.26 = add i32 %mul.26, %R16.0
  store i32 %add.26, ptr %R4, align 4
  %.424 = icmp ne i1 %.283, true
  br i1 %.424, label %.L_x_19, label %.L_x_17_split_0x04d0

.L_x_17_split_0x04d0:                             ; preds = %.L_x_17
  %.429 = add i32 %add.15, %UR4.0
  %.430 = add i32 %.429, 0
  %.436 = load i32, ptr %R4, align 4
  %mul.27 = mul i32 %.430, %Arg_2
  %add.27 = add i32 %mul.27, %.436
  store i32 %add.27, ptr %R2, align 4
  %.439 = load i32, ptr %R2, align 4
  %zext.19 = zext i32 %.439 to i64
  %zext.20 = zext i32 4 to i64
  %mul.28 = mul i64 %zext.19, %zext.20
  %.441 = ptrtoint ptr %Arg_0 to i64
  %add.28 = add i64 %mul.28, %.441
  %.442 = and i64 %add.28, -4294967296
  %.443 = lshr i64 %.442, 32
  %trunc32.8 = trunc i64 %.443 to i32
  %trunc32.9 = trunc i64 %add.28 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  store i32 %trunc32.8, ptr %R3, align 4
  %.447 = load i32, ptr %R2, align 4
  %zext.21 = zext i32 %.447 to i64
  %.448 = load i32, ptr %R3, align 4
  %zext.22 = zext i32 %.448 to i64
  %shl.4 = shl i64 %zext.22, 32
  %or.4 = or i64 %shl.4, %zext.21
  %.449 = add i64 %or.4, 0
  %inttoptr_bytes.4 = inttoptr i64 %.449 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.450 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.451 = bitcast ptr %R2 to ptr
  store float %.450, ptr %.451, align 4
  %cmp.11 = icmp ne i32 %.246, 1
  %.458 = and i1 %cmp.11, true
  %.462 = load float, ptr %R11, align 4
  %.463 = load float, ptr %R2, align 4
  %.464 = xor i1 true, true
  %.465 = fcmp olt float %.462, %.463
  %.466 = fcmp ogt float %.462, %.463
  %mnmx_min.4 = select i1 %.465, float %.462, float %.463
  %mnmx_max.4 = select i1 %.466, float %.462, float %.463
  %mnmx_final.4 = select i1 %.464, float %mnmx_min.4, float %mnmx_max.4
  %.467 = bitcast ptr %R11 to ptr
  store float %mnmx_final.4, ptr %.467, align 4
  %.471 = icmp ne i1 %.458, true
  br i1 %.471, label %.L_x_19, label %.L_x_17_split_0x0550

.L_x_17_split_0x0550:                             ; preds = %.L_x_17_split_0x04d0
  %cmp.12 = icmp ne i32 %.246, 2
  %.478 = and i1 %cmp.12, true
  %.483 = add i32 %.430, 1
  %.484 = add i32 %.483, 0
  store i32 %.484, ptr %R2, align 4
  %.487 = load i32, ptr %R2, align 4
  %.488 = load i32, ptr %R4, align 4
  %mul.29 = mul i32 %.487, %Arg_2
  %add.29 = add i32 %mul.29, %.488
  store i32 %add.29, ptr %R2, align 4
  %.492 = icmp eq i1 %.478, true
  br i1 %.492, label %.L_x_17_split_0x0550_conditionalExpr_0x0580, label %.L_x_17_split_0x0590

.L_x_17_split_0x0550_conditionalExpr_0x0580:      ; preds = %.L_x_17_split_0x0550
  %.496 = add i32 %.430, 2
  %.497 = add i32 %.496, 0
  store i32 %.497, ptr %R3, align 4
  br label %.L_x_17_split_0x0590

.L_x_17_split_0x0590:                             ; preds = %.L_x_17_split_0x0550_conditionalExpr_0x0580, %.L_x_17_split_0x0550
  %.503 = icmp eq i1 %.478, true
  br i1 %.503, label %.L_x_17_split_0x0590_conditionalExpr_0x0590, label %.L_x_17_split_0x05a0

.L_x_17_split_0x0590_conditionalExpr_0x0590:      ; preds = %.L_x_17_split_0x0590
  %.506 = load i32, ptr %R3, align 4
  %.507 = load i32, ptr %R4, align 4
  %mul.30 = mul i32 %.506, %Arg_2
  %add.30 = add i32 %mul.30, %.507
  store i32 %add.30, ptr %R4, align 4
  br label %.L_x_17_split_0x05a0

.L_x_17_split_0x05a0:                             ; preds = %.L_x_17_split_0x0590_conditionalExpr_0x0590, %.L_x_17_split_0x0590
  %.512 = load i32, ptr %R2, align 4
  %zext.23 = zext i32 %.512 to i64
  %zext.24 = zext i32 4 to i64
  %mul.31 = mul i64 %zext.23, %zext.24
  %.514 = ptrtoint ptr %Arg_0 to i64
  %add.31 = add i64 %mul.31, %.514
  %.515 = and i64 %add.31, -4294967296
  %.516 = lshr i64 %.515, 32
  %trunc32.10 = trunc i64 %.516 to i32
  %trunc32.11 = trunc i64 %add.31 to i32
  store i32 %trunc32.11, ptr %R2, align 4
  store i32 %trunc32.10, ptr %R3, align 4
  %.521 = icmp eq i1 %.478, true
  br i1 %.521, label %.L_x_17_split_0x05a0_conditionalExpr_0x05b0, label %.L_x_17_split_0x05c0

.L_x_17_split_0x05a0_conditionalExpr_0x05b0:      ; preds = %.L_x_17_split_0x05a0
  %.524 = load i32, ptr %R4, align 4
  %zext.25 = zext i32 %.524 to i64
  %zext.26 = zext i32 4 to i64
  %mul.32 = mul i64 %zext.25, %zext.26
  %.526 = ptrtoint ptr %Arg_0 to i64
  %add.32 = add i64 %mul.32, %.526
  %.527 = and i64 %add.32, -4294967296
  %.528 = lshr i64 %.527, 32
  %trunc32.12 = trunc i64 %.528 to i32
  %trunc32.13 = trunc i64 %add.32 to i32
  store i32 %trunc32.13, ptr %R4, align 4
  br label %.L_x_17_split_0x05c0

.L_x_17_split_0x05c0:                             ; preds = %.L_x_17_split_0x05a0_conditionalExpr_0x05b0, %.L_x_17_split_0x05a0
  %R5.0 = phi i32 [ %trunc32.12, %.L_x_17_split_0x05a0_conditionalExpr_0x05b0 ], [ %.430, %.L_x_17_split_0x05a0 ]
  %.534 = load i32, ptr %R2, align 4
  %zext.27 = zext i32 %.534 to i64
  %.535 = load i32, ptr %R3, align 4
  %zext.28 = zext i32 %.535 to i64
  %shl.5 = shl i64 %zext.28, 32
  %or.5 = or i64 %shl.5, %zext.27
  %.536 = add i64 %or.5, 0
  %inttoptr_bytes.5 = inttoptr i64 %.536 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.537 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.538 = bitcast ptr %R2 to ptr
  store float %.537, ptr %.538, align 4
  %.542 = icmp eq i1 %.478, true
  br i1 %.542, label %.L_x_17_split_0x05c0_conditionalExpr_0x05d0, label %.L_x_17_split_0x05e0

.L_x_17_split_0x05c0_conditionalExpr_0x05d0:      ; preds = %.L_x_17_split_0x05c0
  %.545 = load i32, ptr %R4, align 4
  %zext.29 = zext i32 %.545 to i64
  %zext.30 = zext i32 %R5.0 to i64
  %shl.6 = shl i64 %zext.30, 32
  %or.6 = or i64 %shl.6, %zext.29
  %.547 = add i64 %or.6, 0
  %inttoptr_bytes.6 = inttoptr i64 %.547 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.548 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.549 = bitcast ptr %R4 to ptr
  store float %.548, ptr %.549, align 4
  br label %.L_x_17_split_0x05e0

.L_x_17_split_0x05e0:                             ; preds = %.L_x_17_split_0x05c0_conditionalExpr_0x05d0, %.L_x_17_split_0x05c0
  %.554 = load float, ptr %R11, align 4
  %.555 = load float, ptr %R2, align 4
  %.556 = xor i1 true, true
  %.557 = fcmp olt float %.554, %.555
  %.558 = fcmp ogt float %.554, %.555
  %mnmx_min.5 = select i1 %.557, float %.554, float %.555
  %mnmx_max.5 = select i1 %.558, float %.554, float %.555
  %mnmx_final.5 = select i1 %.556, float %mnmx_min.5, float %mnmx_max.5
  %.559 = bitcast ptr %R11 to ptr
  store float %mnmx_final.5, ptr %.559, align 4
  %.563 = icmp eq i1 %.478, true
  br i1 %.563, label %.L_x_17_split_0x05e0_conditionalExpr_0x05f0, label %.L_x_19

.L_x_17_split_0x05e0_conditionalExpr_0x05f0:      ; preds = %.L_x_17_split_0x05e0
  %.566 = load float, ptr %R11, align 4
  %.567 = load float, ptr %R4, align 4
  %.568 = xor i1 true, true
  %.569 = fcmp olt float %.566, %.567
  %.570 = fcmp ogt float %.566, %.567
  %mnmx_min.6 = select i1 %.569, float %.566, float %.567
  %mnmx_max.6 = select i1 %.570, float %.566, float %.567
  %mnmx_final.6 = select i1 %.568, float %mnmx_min.6, float %mnmx_max.6
  %.571 = bitcast ptr %R11 to ptr
  store float %mnmx_final.6, ptr %.571, align 4
  br label %.L_x_19

.L_x_19:                                          ; preds = %.L_x_17_split_0x05e0_conditionalExpr_0x05f0, %.L_x_17_split_0x05e0, %.L_x_17_split_0x04d0, %.L_x_17
  %.577 = add i32 %R16.0, 1
  %.578 = add i32 %.577, 0
  %cmp.13 = icmp sge i32 %.578, %Arg_3
  %.585 = and i1 %cmp.13, true
  %.590 = icmp ne i1 %.585, true
  br i1 %.590, label %.L_x_20, label %.L_x_16.loopexit

.L_x_16.loopexit:                                 ; preds = %.L_x_19
  br label %.L_x_16

.L_x_16:                                          ; preds = %.L_x_16.loopexit, %.text._Z10max_pool2dPfS_iii_split_0x0250
  %mul.33 = mul i32 %R21.1, %nvvm_ctaid_z
  %add.33 = add i32 %mul.33, %add.11
  store i32 %add.33, ptr %R3, align 4
  %mul.34 = mul i32 0, 0
  %add.34 = add i32 %mul.34, 4
  store i32 %add.34, ptr %R2, align 4
  %.601 = load i32, ptr %R3, align 4
  %.602 = load i32, ptr %R0, align 4
  %mul.35 = mul i32 %R21.1, %.601
  %add.35 = add i32 %mul.35, %.602
  store i32 %add.35, ptr %R3, align 4
  %.605 = load i32, ptr %R3, align 4
  %.606 = load i32, ptr %R2, align 4
  %zext.31 = zext i32 %.605 to i64
  %zext.32 = zext i32 %.606 to i64
  %mul.36 = mul i64 %zext.31, %zext.32
  %.607 = ptrtoint ptr %Arg_1 to i64
  %add.36 = add i64 %mul.36, %.607
  %.608 = and i64 %add.36, -4294967296
  %.609 = lshr i64 %.608, 32
  %trunc32.14 = trunc i64 %.609 to i32
  %trunc32.15 = trunc i64 %add.36 to i32
  store i32 %trunc32.15, ptr %R2, align 4
  store i32 %trunc32.14, ptr %R3, align 4
  %.613 = load i32, ptr %R11, align 4
  %.614 = load i32, ptr %R2, align 4
  %zext.33 = zext i32 %.614 to i64
  %.615 = load i32, ptr %R3, align 4
  %zext.34 = zext i32 %.615 to i64
  %shl.7 = shl i64 %zext.34, 32
  %or.7 = or i64 %shl.7, %zext.33
  %.616 = add i64 %or.7, 0
  %inttoptr_bytes.7 = inttoptr i64 %.616 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  store i32 %.613, ptr addrspace(1) %ptr_cast_for_access.7, align 4
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
  %.46 = add i64 %or, 0
  %inttoptr_bytes = inttoptr i64 %.46 to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.47 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.48 = bitcast ptr %R2 to ptr
  store float %.47, ptr %.48, align 4
  %zext.4 = zext i32 %add to i64
  %zext.5 = zext i32 4 to i64
  %mul.2 = mul i64 %zext.4, %zext.5
  %.53 = ptrtoint ptr %Arg_1 to i64
  %add.2 = add i64 %mul.2, %.53
  %.54 = and i64 %add.2, -4294967296
  %.55 = lshr i64 %.54, 32
  %trunc32.2 = trunc i64 %.55 to i32
  %trunc32.3 = trunc i64 %add.2 to i32
  %.59 = load float, ptr %R2, align 4
  %.60 = xor i1 true, true
  %.61 = fcmp olt float 0.000000e+00, %.59
  %.62 = fcmp ogt float 0.000000e+00, %.59
  %mnmx_min = select i1 %.61, float 0.000000e+00, float %.59
  %mnmx_max = select i1 %.62, float 0.000000e+00, float %.59
  %mnmx_final = select i1 %.60, float %mnmx_min, float %mnmx_max
  %.63 = bitcast ptr %R7 to ptr
  store float %mnmx_final, ptr %.63, align 4
  %.66 = load float, ptr %R7, align 4
  %zext.6 = zext i32 %trunc32.3 to i64
  %zext.7 = zext i32 %trunc32.2 to i64
  %shl.1 = shl i64 %zext.7, 32
  %or.1 = or i64 %shl.1, %zext.6
  %.69 = add i64 %or.1, 0
  %inttoptr_bytes.1 = inttoptr i64 %.69 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  store float %.66, ptr addrspace(1) %ptr_cast_for_access.1, align 4
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
  %R8.0 = phi i32 [ %.139, %.L_x_28 ], [ %.560, %.L_x_26 ]
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
  %UR4.1 = phi i32 [ 0, %.L_x_27_split_0x0260 ], [ %.299, %.L_x_25 ]
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
  %.229 = add i64 %or, 0
  %inttoptr_bytes = inttoptr i64 %.229 to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.230 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.231 = bitcast ptr %R14 to ptr
  store float %.230, ptr %.231, align 4
  %.234 = load i32, ptr %R6, align 4
  %zext.9 = zext i32 %.234 to i64
  %zext.10 = zext i32 %R7.0 to i64
  %shl.1 = shl i64 %zext.10, 32
  %or.1 = or i64 %shl.1, %zext.9
  %.236 = add i64 %or.1, 0
  %inttoptr_bytes.1 = inttoptr i64 %.236 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.237 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.238 = bitcast ptr %R23 to ptr
  store float %.237, ptr %.238, align 4
  %.242 = load i32, ptr %R16, align 4
  %zext.11 = zext i32 %Arg_3 to i64
  %zext.12 = zext i32 4 to i64
  %mul.15 = mul i64 %zext.11, %zext.12
  %zext.13 = zext i32 %.242 to i64
  %add.15 = add i64 %mul.15, %zext.13
  %.243 = and i64 %add.15, -4294967296
  %.244 = lshr i64 %.243, 32
  %trunc32.6 = trunc i64 %.244 to i32
  %trunc32.7 = trunc i64 %add.15 to i32
  store i32 %trunc32.7, ptr %R18, align 4
  store i32 %trunc32.6, ptr %R19, align 4
  %.248 = load i32, ptr %R16, align 4
  %zext.14 = zext i32 %.248 to i64
  %zext.15 = zext i32 %trunc32.4 to i64
  %shl.2 = shl i64 %zext.15, 32
  %or.2 = or i64 %shl.2, %zext.14
  %.250 = add i64 %or.2, 0
  %inttoptr_bytes.2 = inttoptr i64 %.250 to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.251 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.252 = bitcast ptr %R16 to ptr
  store float %.251, ptr %.252, align 4
  %.256 = load i32, ptr %R18, align 4
  %zext.16 = zext i32 %Arg_3 to i64
  %zext.17 = zext i32 4 to i64
  %mul.16 = mul i64 %zext.16, %zext.17
  %zext.18 = zext i32 %.256 to i64
  %add.16 = add i64 %mul.16, %zext.18
  %.257 = and i64 %add.16, -4294967296
  %.258 = lshr i64 %.257, 32
  %trunc32.8 = trunc i64 %.258 to i32
  %trunc32.9 = trunc i64 %add.16 to i32
  store i32 %trunc32.9, ptr %R20, align 4
  %.262 = load i32, ptr %R6, align 4
  %zext.19 = zext i32 %.262 to i64
  %zext.20 = zext i32 %R7.0 to i64
  %shl.3 = shl i64 %zext.20, 32
  %or.3 = or i64 %shl.3, %zext.19
  %.264 = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %.264 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.265 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.266 = bitcast ptr %R22 to ptr
  store float %.265, ptr %.266, align 4
  %.269 = load i32, ptr %R18, align 4
  %zext.21 = zext i32 %.269 to i64
  %.270 = load i32, ptr %R19, align 4
  %zext.22 = zext i32 %.270 to i64
  %shl.4 = shl i64 %zext.22, 32
  %or.4 = or i64 %shl.4, %zext.21
  %.271 = add i64 %or.4, 0
  %inttoptr_bytes.4 = inttoptr i64 %.271 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.272 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.273 = bitcast ptr %R18 to ptr
  store float %.272, ptr %.273, align 4
  %.276 = load i32, ptr %R6, align 4
  %zext.23 = zext i32 %.276 to i64
  %zext.24 = zext i32 %R7.0 to i64
  %shl.5 = shl i64 %zext.24, 32
  %or.5 = or i64 %shl.5, %zext.23
  %.278 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %.278 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.279 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.280 = bitcast ptr %R25 to ptr
  store float %.279, ptr %.280, align 4
  %.283 = load i32, ptr %R20, align 4
  %zext.25 = zext i32 %.283 to i64
  %zext.26 = zext i32 %trunc32.8 to i64
  %shl.6 = shl i64 %zext.26, 32
  %or.6 = or i64 %shl.6, %zext.25
  %.285 = add i64 %or.6, 0
  %inttoptr_bytes.6 = inttoptr i64 %.285 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.286 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.287 = bitcast ptr %R20 to ptr
  store float %.286, ptr %.287, align 4
  %.290 = load i32, ptr %R6, align 4
  %zext.27 = zext i32 %.290 to i64
  %zext.28 = zext i32 %R7.0 to i64
  %shl.7 = shl i64 %zext.28, 32
  %or.7 = or i64 %shl.7, %zext.27
  %.292 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %.292 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.293 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.294 = bitcast ptr %R27 to ptr
  store float %.293, ptr %.294, align 4
  %.298 = add i32 %UR4.1, 4
  %.299 = add i32 %.298, 0
  %.303 = load i32, ptr %R13, align 4
  %shl.8 = shl i32 %Arg_3, 2
  %add.17 = add i32 %shl.8, %.303
  store i32 %add.17, ptr %R13, align 4
  %.306 = load float, ptr %R23, align 4
  %.307 = load float, ptr %R14, align 4
  %.308 = load float, ptr %R12, align 4
  %fmul = fmul float %.306, %.307
  %fadd = fadd float %fmul, %.308
  %.309 = bitcast ptr %R23 to ptr
  store float %fadd, ptr %.309, align 4
  %.314 = add i32 %.131, %.299
  %.315 = add i32 %.314, 0
  store i32 %.315, ptr %R12, align 4
  %.318 = load i32, ptr %R12, align 4
  %cmp.8 = icmp ne i32 %.318, 0
  %.322 = and i1 %cmp.8, true
  %.326 = load float, ptr %R22, align 4
  %.327 = load float, ptr %R16, align 4
  %.328 = load float, ptr %R23, align 4
  %fmul.1 = fmul float %.326, %.327
  %fadd.1 = fadd float %fmul.1, %.328
  %.329 = bitcast ptr %R22 to ptr
  store float %fadd.1, ptr %.329, align 4
  %.332 = load i32, ptr %R6, align 4
  %.333 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.332, i32 16)
  %.334 = extractvalue { i32, i1 } %.333, 0
  %.335 = extractvalue { i32, i1 } %.333, 1
  %.336 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.334, i32 0)
  %.337 = extractvalue { i32, i1 } %.336, 0
  %.338 = extractvalue { i32, i1 } %.336, 1
  %.339 = or i1 %.335, %.338
  store i32 %.337, ptr %R23, align 4
  %.343 = load float, ptr %R25, align 4
  %.344 = load float, ptr %R18, align 4
  %.345 = load float, ptr %R22, align 4
  %fmul.2 = fmul float %.343, %.344
  %fadd.2 = fadd float %fmul.2, %.345
  %.346 = bitcast ptr %R22 to ptr
  store float %fadd.2, ptr %.346, align 4
  %.351 = xor i1 true, true
  %.352 = zext i1 %.339 to i32
  %.353 = zext i1 %.351 to i32
  %add.18 = add i32 0, %R7.0
  %add.19 = add i32 %add.18, 0
  %add.20 = add i32 %add.19, %.352
  %add.21 = add i32 %add.20, %.353
  %.356 = load float, ptr %R27, align 4
  %.357 = load float, ptr %R20, align 4
  %.358 = load float, ptr %R22, align 4
  %fmul.3 = fmul float %.356, %.357
  %fadd.3 = fadd float %fmul.3, %.358
  %.359 = bitcast ptr %R12 to ptr
  store float %fadd.3, ptr %.359, align 4
  %.363 = icmp eq i1 %.322, true
  br i1 %.363, label %.L_x_25, label %.L_x_24.loopexit

.L_x_24.loopexit:                                 ; preds = %.L_x_25
  br label %.L_x_24

.L_x_24:                                          ; preds = %.L_x_24.loopexit, %.L_x_27
  %UR4.0 = phi i32 [ 0, %.L_x_27 ], [ %.299, %.L_x_24.loopexit ]
  %mul.17 = mul i32 %add.1, 1
  %add.22 = add i32 %mul.17, %R8.0
  store i32 %add.22, ptr %R14, align 4
  %.371 = icmp ne i1 %.175, true
  br i1 %.371, label %.L_x_26, label %.L_x_24_split_0x0460

.L_x_24_split_0x0460:                             ; preds = %.L_x_24
  %.376 = add i32 %add.5, %UR4.0
  %.377 = add i32 %.376, 0
  %.382 = add i32 %add.9, %UR4.0
  %.383 = add i32 %.382, 0
  store i32 %.383, ptr %R16, align 4
  store i32 4, ptr %R19, align 4
  %.389 = load i32, ptr %R14, align 4
  %mul.18 = mul i32 %.377, %Arg_3
  %add.23 = add i32 %mul.18, %.389
  store i32 %add.23, ptr %R6, align 4
  %.392 = load i32, ptr %R16, align 4
  %.393 = load i32, ptr %R19, align 4
  %zext.29 = zext i32 %.392 to i64
  %zext.30 = zext i32 %.393 to i64
  %mul.19 = mul i64 %zext.29, %zext.30
  %.394 = ptrtoint ptr %Arg_1 to i64
  %add.24 = add i64 %mul.19, %.394
  %.395 = and i64 %add.24, -4294967296
  %.396 = lshr i64 %.395, 32
  %trunc32.10 = trunc i64 %.396 to i32
  %trunc32.11 = trunc i64 %add.24 to i32
  store i32 %trunc32.11, ptr %R16, align 4
  %.400 = load i32, ptr %R6, align 4
  %.401 = load i32, ptr %R19, align 4
  %zext.31 = zext i32 %.400 to i64
  %zext.32 = zext i32 %.401 to i64
  %mul.20 = mul i64 %zext.31, %zext.32
  %.402 = ptrtoint ptr %Arg_0 to i64
  %add.25 = add i64 %mul.20, %.402
  %.403 = and i64 %add.25, -4294967296
  %.404 = lshr i64 %.403, 32
  %trunc32.12 = trunc i64 %.404 to i32
  %trunc32.13 = trunc i64 %add.25 to i32
  store i32 %trunc32.13, ptr %R6, align 4
  %.408 = load i32, ptr %R16, align 4
  %zext.33 = zext i32 %.408 to i64
  %zext.34 = zext i32 %trunc32.10 to i64
  %shl.9 = shl i64 %zext.34, 32
  %or.8 = or i64 %shl.9, %zext.33
  %.410 = add i64 %or.8, 0
  %inttoptr_bytes.8 = inttoptr i64 %.410 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.411 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.412 = bitcast ptr %R13 to ptr
  store float %.411, ptr %.412, align 4
  %.415 = load i32, ptr %R6, align 4
  %zext.35 = zext i32 %.415 to i64
  %zext.36 = zext i32 %trunc32.12 to i64
  %shl.10 = shl i64 %zext.36, 32
  %or.9 = or i64 %shl.10, %zext.35
  %.417 = add i64 %or.9, 0
  %inttoptr_bytes.9 = inttoptr i64 %.417 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.418 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.419 = bitcast ptr %R6 to ptr
  store float %.418, ptr %.419, align 4
  %cmp.9 = icmp ne i32 %.117, 1
  %.426 = and i1 %cmp.9, true
  %.430 = load float, ptr %R13, align 4
  %.431 = load float, ptr %R6, align 4
  %.432 = load float, ptr %R12, align 4
  %fmul.4 = fmul float %.430, %.431
  %fadd.4 = fadd float %fmul.4, %.432
  %.433 = bitcast ptr %R12 to ptr
  store float %fadd.4, ptr %.433, align 4
  %.437 = icmp ne i1 %.426, true
  br i1 %.437, label %.L_x_26, label %.L_x_24_split_0x0510

.L_x_24_split_0x0510:                             ; preds = %.L_x_24_split_0x0460
  %cmp.10 = icmp ne i32 %.117, 2
  %.444 = and i1 %cmp.10, true
  %.448 = load i32, ptr %R16, align 4
  %zext.37 = zext i32 %.448 to i64
  %zext.38 = zext i32 %trunc32.10 to i64
  %shl.11 = shl i64 %zext.38, 32
  %or.10 = or i64 %shl.11, %zext.37
  %.450 = add i64 %or.10, 4
  %inttoptr_bytes.10 = inttoptr i64 %.450 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.451 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.452 = bitcast ptr %R13 to ptr
  store float %.451, ptr %.452, align 4
  %.456 = add i32 %.377, 1
  %.457 = add i32 %.456, 0
  store i32 %.457, ptr %R6, align 4
  %.460 = load i32, ptr %R6, align 4
  %.461 = load i32, ptr %R14, align 4
  %mul.21 = mul i32 %.460, %Arg_3
  %add.26 = add i32 %mul.21, %.461
  store i32 %add.26, ptr %R6, align 4
  %.465 = icmp eq i1 %.444, true
  br i1 %.465, label %.L_x_24_split_0x0510_conditionalExpr_0x0550, label %.L_x_24_split_0x0560

.L_x_24_split_0x0510_conditionalExpr_0x0550:      ; preds = %.L_x_24_split_0x0510
  %.469 = add i32 %.377, 2
  %.470 = add i32 %.469, 0
  br label %.L_x_24_split_0x0560

.L_x_24_split_0x0560:                             ; preds = %.L_x_24_split_0x0510_conditionalExpr_0x0550, %.L_x_24_split_0x0510
  %R7.1 = phi i32 [ %.470, %.L_x_24_split_0x0510_conditionalExpr_0x0550 ], [ %trunc32.12, %.L_x_24_split_0x0510 ]
  %.476 = icmp eq i1 %.444, true
  br i1 %.476, label %.L_x_24_split_0x0560_conditionalExpr_0x0560, label %.L_x_24_split_0x0570

.L_x_24_split_0x0560_conditionalExpr_0x0560:      ; preds = %.L_x_24_split_0x0560
  %.480 = load i32, ptr %R14, align 4
  %mul.22 = mul i32 %R7.1, %Arg_3
  %add.27 = add i32 %mul.22, %.480
  store i32 %add.27, ptr %R14, align 4
  br label %.L_x_24_split_0x0570

.L_x_24_split_0x0570:                             ; preds = %.L_x_24_split_0x0560_conditionalExpr_0x0560, %.L_x_24_split_0x0560
  %.485 = load i32, ptr %R6, align 4
  %.486 = load i32, ptr %R19, align 4
  %zext.39 = zext i32 %.485 to i64
  %zext.40 = zext i32 %.486 to i64
  %mul.23 = mul i64 %zext.39, %zext.40
  %.487 = ptrtoint ptr %Arg_0 to i64
  %add.28 = add i64 %mul.23, %.487
  %.488 = and i64 %add.28, -4294967296
  %.489 = lshr i64 %.488, 32
  %trunc32.14 = trunc i64 %.489 to i32
  %trunc32.15 = trunc i64 %add.28 to i32
  store i32 %trunc32.15, ptr %R6, align 4
  %.494 = icmp eq i1 %.444, true
  br i1 %.494, label %.L_x_24_split_0x0570_conditionalExpr_0x0580, label %.L_x_24_split_0x0590

.L_x_24_split_0x0570_conditionalExpr_0x0580:      ; preds = %.L_x_24_split_0x0570
  %.497 = load i32, ptr %R14, align 4
  %.498 = load i32, ptr %R19, align 4
  %zext.41 = zext i32 %.497 to i64
  %zext.42 = zext i32 %.498 to i64
  %mul.24 = mul i64 %zext.41, %zext.42
  %.499 = ptrtoint ptr %Arg_0 to i64
  %add.29 = add i64 %mul.24, %.499
  %.500 = and i64 %add.29, -4294967296
  %.501 = lshr i64 %.500, 32
  %trunc32.16 = trunc i64 %.501 to i32
  %trunc32.17 = trunc i64 %add.29 to i32
  store i32 %trunc32.17, ptr %R14, align 4
  br label %.L_x_24_split_0x0590

.L_x_24_split_0x0590:                             ; preds = %.L_x_24_split_0x0570_conditionalExpr_0x0580, %.L_x_24_split_0x0570
  %R15.0 = phi i32 [ %trunc32.16, %.L_x_24_split_0x0570_conditionalExpr_0x0580 ], [ %.377, %.L_x_24_split_0x0570 ]
  %.508 = icmp eq i1 %.444, true
  br i1 %.508, label %.L_x_24_split_0x0590_conditionalExpr_0x0590, label %.L_x_24_split_0x05a0

.L_x_24_split_0x0590_conditionalExpr_0x0590:      ; preds = %.L_x_24_split_0x0590
  %.511 = load i32, ptr %R16, align 4
  %zext.43 = zext i32 %.511 to i64
  %zext.44 = zext i32 %trunc32.10 to i64
  %shl.12 = shl i64 %zext.44, 32
  %or.11 = or i64 %shl.12, %zext.43
  %.513 = add i64 %or.11, 8
  %inttoptr_bytes.11 = inttoptr i64 %.513 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.514 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.515 = bitcast ptr %R19 to ptr
  store float %.514, ptr %.515, align 4
  br label %.L_x_24_split_0x05a0

.L_x_24_split_0x05a0:                             ; preds = %.L_x_24_split_0x0590_conditionalExpr_0x0590, %.L_x_24_split_0x0590
  %.520 = load i32, ptr %R6, align 4
  %zext.45 = zext i32 %.520 to i64
  %zext.46 = zext i32 %trunc32.14 to i64
  %shl.13 = shl i64 %zext.46, 32
  %or.12 = or i64 %shl.13, %zext.45
  %.522 = add i64 %or.12, 0
  %inttoptr_bytes.12 = inttoptr i64 %.522 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.523 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.524 = bitcast ptr %R6 to ptr
  store float %.523, ptr %.524, align 4
  %.528 = icmp eq i1 %.444, true
  br i1 %.528, label %.L_x_24_split_0x05a0_conditionalExpr_0x05b0, label %.L_x_24_split_0x05c0

.L_x_24_split_0x05a0_conditionalExpr_0x05b0:      ; preds = %.L_x_24_split_0x05a0
  %.531 = load i32, ptr %R14, align 4
  %zext.47 = zext i32 %.531 to i64
  %zext.48 = zext i32 %R15.0 to i64
  %shl.14 = shl i64 %zext.48, 32
  %or.13 = or i64 %shl.14, %zext.47
  %.533 = add i64 %or.13, 0
  %inttoptr_bytes.13 = inttoptr i64 %.533 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.534 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.535 = bitcast ptr %R14 to ptr
  store float %.534, ptr %.535, align 4
  br label %.L_x_24_split_0x05c0

.L_x_24_split_0x05c0:                             ; preds = %.L_x_24_split_0x05a0_conditionalExpr_0x05b0, %.L_x_24_split_0x05a0
  %.540 = load float, ptr %R13, align 4
  %.541 = load float, ptr %R6, align 4
  %.542 = load float, ptr %R12, align 4
  %fmul.5 = fmul float %.540, %.541
  %fadd.5 = fadd float %fmul.5, %.542
  %.543 = bitcast ptr %R12 to ptr
  store float %fadd.5, ptr %.543, align 4
  %.547 = icmp eq i1 %.444, true
  br i1 %.547, label %.L_x_24_split_0x05c0_conditionalExpr_0x05d0, label %.L_x_26

.L_x_24_split_0x05c0_conditionalExpr_0x05d0:      ; preds = %.L_x_24_split_0x05c0
  %.550 = load float, ptr %R19, align 4
  %.551 = load float, ptr %R14, align 4
  %.552 = load float, ptr %R12, align 4
  %fmul.6 = fmul float %.550, %.551
  %fadd.6 = fadd float %fmul.6, %.552
  %.553 = bitcast ptr %R12 to ptr
  store float %fadd.6, ptr %.553, align 4
  br label %.L_x_26

.L_x_26:                                          ; preds = %.L_x_24_split_0x05c0_conditionalExpr_0x05d0, %.L_x_24_split_0x05c0, %.L_x_24_split_0x0460, %.L_x_24
  %.559 = add i32 %R8.0, 1
  %.560 = add i32 %.559, 0
  %cmp.11 = icmp sge i32 %.560, %Arg_4
  %.567 = and i1 %cmp.11, true
  %.572 = icmp ne i1 %.567, true
  br i1 %.572, label %.L_x_27, label %.L_x_26_split_0x0610

.L_x_26_split_0x0610:                             ; preds = %.L_x_26
  %.576 = icmp ne i1 %.159, true
  br i1 %.576, label %.L_x_28, label %.L_x_23.loopexit

.L_x_23.loopexit:                                 ; preds = %.L_x_26_split_0x0610
  br label %.L_x_23

.L_x_23:                                          ; preds = %.L_x_23.loopexit, %.text._Z6conv2dPfS_S_iiii_split_0x00e0
  %.580 = add i32 %.24, 1
  %.581 = add i32 %.580, 0
  %mul.25 = mul i32 %nvvm_ctaid_z, %.581
  %add.30 = add i32 %mul.25, %add
  %mul.26 = mul i32 %add.30, %.581
  %add.31 = add i32 %mul.26, %add.1
  %zext.49 = zext i32 %add.31 to i64
  %zext.50 = zext i32 4 to i64
  %mul.27 = mul i64 %zext.49, %zext.50
  %.598 = ptrtoint ptr %Arg_2 to i64
  %add.32 = add i64 %mul.27, %.598
  %.599 = and i64 %add.32, -4294967296
  %.600 = lshr i64 %.599, 32
  %trunc32.18 = trunc i64 %.600 to i32
  %trunc32.19 = trunc i64 %add.32 to i32
  %.604 = load i32, ptr %R12, align 4
  %zext.51 = zext i32 %trunc32.19 to i64
  %zext.52 = zext i32 %trunc32.18 to i64
  %shl.15 = shl i64 %zext.52, 32
  %or.14 = or i64 %shl.15, %zext.51
  %.607 = add i64 %or.14, 0
  %inttoptr_bytes.14 = inttoptr i64 %.607 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  store i32 %.604, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z6conv2dPfS_S_iiii, %.L_x_23
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
