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
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_x
  %cmp = icmp sge i32 %imad_add, %Arg_5
  %.27 = and i1 %cmp, true
  %.32 = icmp eq i1 %.27, true
  br i1 %.32, label %ExitFunction, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060: ; preds = %Entry_.text._Z15fc_layer_simplePfS_S_S_ii
  %imad_mul.1 = mul i32 0, 0
  %imad_add.1 = add i32 %imad_mul.1, 0
  store i32 %imad_add.1, ptr %R7, align 4
  %cmp.1 = icmp sge i32 %Arg_4, 2
  %.44 = and i1 %cmp.1, true
  %.49 = icmp ne i1 %.44, true
  br i1 %.49, label %.L_x_0, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060
  %.53 = add i32 %Arg_4, -2
  %.54 = add i32 %.53, 0
  store i32 %.54, ptr %R2, align 4
  %imad_mul.2 = mul i32 0, 0
  %imad_add.2 = add i32 %imad_mul.2, 0
  store i32 %imad_add.2, ptr %R5, align 4
  %.60 = add i32 %Arg_4, -1
  %.61 = add i32 %.60, 0
  %.64 = load i32, ptr %R2, align 4
  %cmp.2 = icmp sge i32 %.64, 3
  %.67 = and i1 %cmp.2, true
  %.71 = load float, ptr %RZ, align 4
  %.72 = bitcast ptr %R7 to ptr
  store float %.71, ptr %.72, align 4
  %.77 = and i32 %.61, 3
  %.81 = icmp ne i1 %.67, true
  br i1 %.81, label %.L_x_1, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0
  %.85 = sub i32 0, %.77
  %.86 = add i32 %.85, %Arg_4
  %.87 = add i32 %.86, 0
  %imad_mul.3 = mul i32 %imad_add, %Arg_4
  %imad_add.3 = add i32 %imad_mul.3, 0
  store i32 %imad_add.3, ptr %R2, align 4
  %.95 = ptrtoint ptr %Arg_0 to i64
  %.96 = and i64 %.95, -4294967296
  %.97 = lshr i64 %.96, 32
  %trunc32 = trunc i64 %.97 to i32
  %trunc32.1 = trunc i64 %.95 to i32
  %cmp.3 = icmp sgt i32 %.87, 1
  %.104 = and i1 %cmp.3, true
  %imad_mul.4 = mul i32 0, 0
  %imad_add.4 = add i32 %imad_mul.4, 0
  store i32 %imad_add.4, ptr %R5, align 4
  %.110 = load float, ptr %RZ, align 4
  %.111 = bitcast ptr %R7 to ptr
  store float %.110, ptr %.111, align 4
  %.114 = load i32, ptr %R2, align 4
  %imad_ext1 = zext i32 %.114 to i64
  %imad_ext2 = zext i32 4 to i64
  %imad_mul.5 = mul i64 %imad_ext1, %imad_ext2
  %.116 = ptrtoint ptr %Arg_1 to i64
  %imad_add.5 = add i64 %imad_mul.5, %.116
  %.117 = and i64 %imad_add.5, -4294967296
  %.118 = lshr i64 %.117, 32
  %trunc32.2 = trunc i64 %.118 to i32
  %trunc32.3 = trunc i64 %imad_add.5 to i32
  store i32 %trunc32.3, ptr %R2, align 4
  %.123 = icmp ne i1 %.104, true
  br i1 %.123, label %.L_x_2.preheader, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110
  %.127 = add i32 %.87, -1
  %.128 = add i32 %.127, 0
  store i32 %.128, ptr %R8, align 4
  %.134 = load i32, ptr %R8, align 4
  %cmp.4 = icmp sgt i32 %.134, 12
  %.137 = and i1 %cmp.4, true
  %.142 = icmp ne i1 %.137, true
  br i1 %.142, label %.L_x_3, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0
  br label %.L_x_4

.L_x_4:                                           ; preds = %.L_x_4, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0
  %UR4.2 = phi i32 [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %.352, %.L_x_4 ]
  %R6.2 = phi i32 [ %.87, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %.344, %.L_x_4 ]
  %UR5.2 = phi i32 [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %add.3, %.L_x_4 ]
  %R3.2 = phi i32 [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %add.7, %.L_x_4 ]
  %.150 = load i32, ptr %R2, align 4
  %zext = zext i32 %.150 to i64
  %zext.1 = zext i32 %R3.2 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.152 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.153 = bitcast ptr %R8 to ptr
  store float %.152, ptr %.153, align 4
  %zext.2 = zext i32 %UR4.2 to i64
  %zext.3 = zext i32 %UR5.2 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.158 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.159 = bitcast ptr %R9 to ptr
  store float %.158, ptr %.159, align 4
  %.162 = load i32, ptr %R2, align 4
  %zext.4 = zext i32 %.162 to i64
  %zext.5 = zext i32 %R3.2 to i64
  %shl.2 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.2, %zext.4
  %ptr_plus_imm = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.164 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.165 = bitcast ptr %R11 to ptr
  store float %.164, ptr %.165, align 4
  %zext.6 = zext i32 %UR4.2 to i64
  %zext.7 = zext i32 %UR5.2 to i64
  %shl.3 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.3, %zext.6
  %ptr_plus_imm.1 = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.170 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.171 = bitcast ptr %R10 to ptr
  store float %.170, ptr %.171, align 4
  %.174 = load i32, ptr %R2, align 4
  %zext.8 = zext i32 %.174 to i64
  %zext.9 = zext i32 %R3.2 to i64
  %shl.4 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.4, %zext.8
  %ptr_plus_imm.2 = add i64 %or.4, 8
  %inttoptr_bytes.4 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.176 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.177 = bitcast ptr %R13 to ptr
  store float %.176, ptr %.177, align 4
  %zext.10 = zext i32 %UR4.2 to i64
  %zext.11 = zext i32 %UR5.2 to i64
  %shl.5 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.5, %zext.10
  %ptr_plus_imm.3 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.182 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.183 = bitcast ptr %R12 to ptr
  store float %.182, ptr %.183, align 4
  %.186 = load i32, ptr %R2, align 4
  %zext.12 = zext i32 %.186 to i64
  %zext.13 = zext i32 %R3.2 to i64
  %shl.6 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.6, %zext.12
  %ptr_plus_imm.4 = add i64 %or.6, 12
  %inttoptr_bytes.6 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.188 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.189 = bitcast ptr %R15 to ptr
  store float %.188, ptr %.189, align 4
  %zext.14 = zext i32 %UR4.2 to i64
  %zext.15 = zext i32 %UR5.2 to i64
  %shl.7 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.7, %zext.14
  %ptr_plus_imm.5 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.194 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.195 = bitcast ptr %R14 to ptr
  store float %.194, ptr %.195, align 4
  %.198 = load i32, ptr %R2, align 4
  %zext.16 = zext i32 %.198 to i64
  %zext.17 = zext i32 %R3.2 to i64
  %shl.8 = shl i64 %zext.17, 32
  %or.8 = or i64 %shl.8, %zext.16
  %ptr_plus_imm.6 = add i64 %or.8, 16
  %inttoptr_bytes.8 = inttoptr i64 %ptr_plus_imm.6 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.200 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.201 = bitcast ptr %R17 to ptr
  store float %.200, ptr %.201, align 4
  %zext.18 = zext i32 %UR4.2 to i64
  %zext.19 = zext i32 %UR5.2 to i64
  %shl.9 = shl i64 %zext.19, 32
  %or.9 = or i64 %shl.9, %zext.18
  %ptr_plus_imm.7 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm.7 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.206 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.207 = bitcast ptr %R16 to ptr
  store float %.206, ptr %.207, align 4
  %.210 = load i32, ptr %R2, align 4
  %zext.20 = zext i32 %.210 to i64
  %zext.21 = zext i32 %R3.2 to i64
  %shl.10 = shl i64 %zext.21, 32
  %or.10 = or i64 %shl.10, %zext.20
  %ptr_plus_imm.8 = add i64 %or.10, 20
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.8 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.212 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.213 = bitcast ptr %R19 to ptr
  store float %.212, ptr %.213, align 4
  %zext.22 = zext i32 %UR4.2 to i64
  %zext.23 = zext i32 %UR5.2 to i64
  %shl.11 = shl i64 %zext.23, 32
  %or.11 = or i64 %shl.11, %zext.22
  %ptr_plus_imm.9 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.9 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.218 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.219 = bitcast ptr %R18 to ptr
  store float %.218, ptr %.219, align 4
  %.222 = load i32, ptr %R2, align 4
  %zext.24 = zext i32 %.222 to i64
  %zext.25 = zext i32 %R3.2 to i64
  %shl.12 = shl i64 %zext.25, 32
  %or.12 = or i64 %shl.12, %zext.24
  %ptr_plus_imm.10 = add i64 %or.12, 24
  %inttoptr_bytes.12 = inttoptr i64 %ptr_plus_imm.10 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.224 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.225 = bitcast ptr %R21 to ptr
  store float %.224, ptr %.225, align 4
  %zext.26 = zext i32 %UR4.2 to i64
  %zext.27 = zext i32 %UR5.2 to i64
  %shl.13 = shl i64 %zext.27, 32
  %or.13 = or i64 %shl.13, %zext.26
  %ptr_plus_imm.11 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %ptr_plus_imm.11 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.230 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.231 = bitcast ptr %R20 to ptr
  store float %.230, ptr %.231, align 4
  %.234 = load i32, ptr %R2, align 4
  %zext.28 = zext i32 %.234 to i64
  %zext.29 = zext i32 %R3.2 to i64
  %shl.14 = shl i64 %zext.29, 32
  %or.14 = or i64 %shl.14, %zext.28
  %ptr_plus_imm.12 = add i64 %or.14, 28
  %inttoptr_bytes.14 = inttoptr i64 %ptr_plus_imm.12 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.236 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.237 = bitcast ptr %R23 to ptr
  store float %.236, ptr %.237, align 4
  %zext.30 = zext i32 %UR4.2 to i64
  %zext.31 = zext i32 %UR5.2 to i64
  %shl.15 = shl i64 %zext.31, 32
  %or.15 = or i64 %shl.15, %zext.30
  %ptr_plus_imm.13 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %ptr_plus_imm.13 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.242 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.243 = bitcast ptr %R22 to ptr
  store float %.242, ptr %.243, align 4
  %.246 = load i32, ptr %R2, align 4
  %zext.32 = zext i32 %.246 to i64
  %zext.33 = zext i32 %R3.2 to i64
  %shl.16 = shl i64 %zext.33, 32
  %or.16 = or i64 %shl.16, %zext.32
  %ptr_plus_imm.14 = add i64 %or.16, 32
  %inttoptr_bytes.16 = inttoptr i64 %ptr_plus_imm.14 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.248 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.249 = bitcast ptr %R25 to ptr
  store float %.248, ptr %.249, align 4
  %zext.34 = zext i32 %UR4.2 to i64
  %zext.35 = zext i32 %UR5.2 to i64
  %shl.17 = shl i64 %zext.35, 32
  %or.17 = or i64 %shl.17, %zext.34
  %ptr_plus_imm.15 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %ptr_plus_imm.15 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.254 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.255 = bitcast ptr %R24 to ptr
  store float %.254, ptr %.255, align 4
  %.258 = load i32, ptr %R2, align 4
  %zext.36 = zext i32 %.258 to i64
  %zext.37 = zext i32 %R3.2 to i64
  %shl.18 = shl i64 %zext.37, 32
  %or.18 = or i64 %shl.18, %zext.36
  %ptr_plus_imm.16 = add i64 %or.18, 36
  %inttoptr_bytes.18 = inttoptr i64 %ptr_plus_imm.16 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.260 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.261 = bitcast ptr %R27 to ptr
  store float %.260, ptr %.261, align 4
  %zext.38 = zext i32 %UR4.2 to i64
  %zext.39 = zext i32 %UR5.2 to i64
  %shl.19 = shl i64 %zext.39, 32
  %or.19 = or i64 %shl.19, %zext.38
  %ptr_plus_imm.17 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %ptr_plus_imm.17 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.266 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.267 = bitcast ptr %R26 to ptr
  store float %.266, ptr %.267, align 4
  %.270 = load i32, ptr %R2, align 4
  %zext.40 = zext i32 %.270 to i64
  %zext.41 = zext i32 %R3.2 to i64
  %shl.20 = shl i64 %zext.41, 32
  %or.20 = or i64 %shl.20, %zext.40
  %ptr_plus_imm.18 = add i64 %or.20, 40
  %inttoptr_bytes.20 = inttoptr i64 %ptr_plus_imm.18 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.272 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.273 = bitcast ptr %R29 to ptr
  store float %.272, ptr %.273, align 4
  %zext.42 = zext i32 %UR4.2 to i64
  %zext.43 = zext i32 %UR5.2 to i64
  %shl.21 = shl i64 %zext.43, 32
  %or.21 = or i64 %shl.21, %zext.42
  %ptr_plus_imm.19 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %ptr_plus_imm.19 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.278 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.279 = bitcast ptr %R28 to ptr
  store float %.278, ptr %.279, align 4
  %.282 = load i32, ptr %R2, align 4
  %zext.44 = zext i32 %.282 to i64
  %zext.45 = zext i32 %R3.2 to i64
  %shl.22 = shl i64 %zext.45, 32
  %or.22 = or i64 %shl.22, %zext.44
  %ptr_plus_imm.20 = add i64 %or.22, 44
  %inttoptr_bytes.22 = inttoptr i64 %ptr_plus_imm.20 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.284 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.285 = bitcast ptr %R31 to ptr
  store float %.284, ptr %.285, align 4
  %zext.46 = zext i32 %UR4.2 to i64
  %zext.47 = zext i32 %UR5.2 to i64
  %shl.23 = shl i64 %zext.47, 32
  %or.23 = or i64 %shl.23, %zext.46
  %ptr_plus_imm.21 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %ptr_plus_imm.21 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.290 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.291 = bitcast ptr %R30 to ptr
  store float %.290, ptr %.291, align 4
  %.294 = load i32, ptr %R2, align 4
  %zext.48 = zext i32 %.294 to i64
  %zext.49 = zext i32 %R3.2 to i64
  %shl.24 = shl i64 %zext.49, 32
  %or.24 = or i64 %shl.24, %zext.48
  %ptr_plus_imm.22 = add i64 %or.24, 48
  %inttoptr_bytes.24 = inttoptr i64 %ptr_plus_imm.22 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.296 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.297 = bitcast ptr %R33 to ptr
  store float %.296, ptr %.297, align 4
  %zext.50 = zext i32 %UR4.2 to i64
  %zext.51 = zext i32 %UR5.2 to i64
  %shl.25 = shl i64 %zext.51, 32
  %or.25 = or i64 %shl.25, %zext.50
  %ptr_plus_imm.23 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %ptr_plus_imm.23 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.302 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.303 = bitcast ptr %R32 to ptr
  store float %.302, ptr %.303, align 4
  %.306 = load i32, ptr %R2, align 4
  %zext.52 = zext i32 %.306 to i64
  %zext.53 = zext i32 %R3.2 to i64
  %shl.26 = shl i64 %zext.53, 32
  %or.26 = or i64 %shl.26, %zext.52
  %ptr_plus_imm.24 = add i64 %or.26, 52
  %inttoptr_bytes.26 = inttoptr i64 %ptr_plus_imm.24 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.308 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.309 = bitcast ptr %R35 to ptr
  store float %.308, ptr %.309, align 4
  %zext.54 = zext i32 %UR4.2 to i64
  %zext.55 = zext i32 %UR5.2 to i64
  %shl.27 = shl i64 %zext.55, 32
  %or.27 = or i64 %shl.27, %zext.54
  %ptr_plus_imm.25 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %ptr_plus_imm.25 to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.314 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.315 = bitcast ptr %R34 to ptr
  store float %.314, ptr %.315, align 4
  %.318 = load i32, ptr %R2, align 4
  %zext.56 = zext i32 %.318 to i64
  %zext.57 = zext i32 %R3.2 to i64
  %shl.28 = shl i64 %zext.57, 32
  %or.28 = or i64 %shl.28, %zext.56
  %ptr_plus_imm.26 = add i64 %or.28, 56
  %inttoptr_bytes.28 = inttoptr i64 %ptr_plus_imm.26 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.320 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.321 = bitcast ptr %R37 to ptr
  store float %.320, ptr %.321, align 4
  %zext.58 = zext i32 %UR4.2 to i64
  %zext.59 = zext i32 %UR5.2 to i64
  %shl.29 = shl i64 %zext.59, 32
  %or.29 = or i64 %shl.29, %zext.58
  %ptr_plus_imm.27 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %ptr_plus_imm.27 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.326 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.327 = bitcast ptr %R36 to ptr
  store float %.326, ptr %.327, align 4
  %.330 = load i32, ptr %R2, align 4
  %zext.60 = zext i32 %.330 to i64
  %zext.61 = zext i32 %R3.2 to i64
  %shl.30 = shl i64 %zext.61, 32
  %or.30 = or i64 %shl.30, %zext.60
  %ptr_plus_imm.28 = add i64 %or.30, 60
  %inttoptr_bytes.30 = inttoptr i64 %ptr_plus_imm.28 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.332 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.333 = bitcast ptr %R39 to ptr
  store float %.332, ptr %.333, align 4
  %zext.62 = zext i32 %UR4.2 to i64
  %zext.63 = zext i32 %UR5.2 to i64
  %shl.31 = shl i64 %zext.63, 32
  %or.31 = or i64 %shl.31, %zext.62
  %ptr_plus_imm.29 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %ptr_plus_imm.29 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.338 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.339 = bitcast ptr %R38 to ptr
  store float %.338, ptr %.339, align 4
  %.343 = add i32 %R6.2, -16
  %.344 = add i32 %.343, 0
  %.348 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.349 = extractvalue { i32, i1 } %.348, 0
  %.350 = extractvalue { i32, i1 } %.348, 1
  %.351 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.349, i32 0)
  %.352 = extractvalue { i32, i1 } %.351, 0
  %.353 = extractvalue { i32, i1 } %.351, 1
  %.354 = or i1 %.350, %.353
  %.358 = load i32, ptr %R5, align 4
  %.359 = add i32 %.358, 16
  %.360 = add i32 %.359, 0
  store i32 %.360, ptr %R5, align 4
  %cmp.5 = icmp sgt i32 %.344, 13
  %.366 = and i1 %cmp.5, true
  %.372 = xor i1 true, true
  %.373 = zext i1 %.354 to i32
  %.374 = zext i1 %.372 to i32
  %add = add i32 0, %UR5.2
  %add.1 = add i32 %add, 0
  %add.2 = add i32 %add.1, %.373
  %add.3 = add i32 %add.2, %.374
  %.377 = load i32, ptr %R2, align 4
  %.378 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.377, i32 64)
  %.379 = extractvalue { i32, i1 } %.378, 0
  %.380 = extractvalue { i32, i1 } %.378, 1
  %.381 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.379, i32 0)
  %.382 = extractvalue { i32, i1 } %.381, 0
  %.383 = extractvalue { i32, i1 } %.381, 1
  %.384 = or i1 %.380, %.383
  store i32 %.382, ptr %R2, align 4
  %.390 = xor i1 true, true
  %.391 = zext i1 %.384 to i32
  %.392 = zext i1 %.390 to i32
  %add.4 = add i32 0, %R3.2
  %add.5 = add i32 %add.4, 0
  %add.6 = add i32 %add.5, %.391
  %add.7 = add i32 %add.6, %.392
  %.395 = load float, ptr %R8, align 4
  %.396 = load float, ptr %R9, align 4
  %.397 = load float, ptr %R7, align 4
  %fmul = fmul float %.395, %.396
  %fadd = fadd float %fmul, %.397
  %.398 = bitcast ptr %R8 to ptr
  store float %fadd, ptr %.398, align 4
  %.401 = load float, ptr %R11, align 4
  %.402 = load float, ptr %R10, align 4
  %.403 = load float, ptr %R8, align 4
  %fmul.1 = fmul float %.401, %.402
  %fadd.1 = fadd float %fmul.1, %.403
  %.404 = bitcast ptr %R8 to ptr
  store float %fadd.1, ptr %.404, align 4
  %.407 = load float, ptr %R13, align 4
  %.408 = load float, ptr %R12, align 4
  %.409 = load float, ptr %R8, align 4
  %fmul.2 = fmul float %.407, %.408
  %fadd.2 = fadd float %fmul.2, %.409
  %.410 = bitcast ptr %R8 to ptr
  store float %fadd.2, ptr %.410, align 4
  %.413 = load float, ptr %R15, align 4
  %.414 = load float, ptr %R14, align 4
  %.415 = load float, ptr %R8, align 4
  %fmul.3 = fmul float %.413, %.414
  %fadd.3 = fadd float %fmul.3, %.415
  %.416 = bitcast ptr %R8 to ptr
  store float %fadd.3, ptr %.416, align 4
  %.419 = load float, ptr %R17, align 4
  %.420 = load float, ptr %R16, align 4
  %.421 = load float, ptr %R8, align 4
  %fmul.4 = fmul float %.419, %.420
  %fadd.4 = fadd float %fmul.4, %.421
  %.422 = bitcast ptr %R8 to ptr
  store float %fadd.4, ptr %.422, align 4
  %.425 = load float, ptr %R19, align 4
  %.426 = load float, ptr %R18, align 4
  %.427 = load float, ptr %R8, align 4
  %fmul.5 = fmul float %.425, %.426
  %fadd.5 = fadd float %fmul.5, %.427
  %.428 = bitcast ptr %R8 to ptr
  store float %fadd.5, ptr %.428, align 4
  %.431 = load float, ptr %R21, align 4
  %.432 = load float, ptr %R20, align 4
  %.433 = load float, ptr %R8, align 4
  %fmul.6 = fmul float %.431, %.432
  %fadd.6 = fadd float %fmul.6, %.433
  %.434 = bitcast ptr %R8 to ptr
  store float %fadd.6, ptr %.434, align 4
  %.437 = load float, ptr %R23, align 4
  %.438 = load float, ptr %R22, align 4
  %.439 = load float, ptr %R8, align 4
  %fmul.7 = fmul float %.437, %.438
  %fadd.7 = fadd float %fmul.7, %.439
  %.440 = bitcast ptr %R8 to ptr
  store float %fadd.7, ptr %.440, align 4
  %.443 = load float, ptr %R25, align 4
  %.444 = load float, ptr %R24, align 4
  %.445 = load float, ptr %R8, align 4
  %fmul.8 = fmul float %.443, %.444
  %fadd.8 = fadd float %fmul.8, %.445
  %.446 = bitcast ptr %R8 to ptr
  store float %fadd.8, ptr %.446, align 4
  %.449 = load float, ptr %R27, align 4
  %.450 = load float, ptr %R26, align 4
  %.451 = load float, ptr %R8, align 4
  %fmul.9 = fmul float %.449, %.450
  %fadd.9 = fadd float %fmul.9, %.451
  %.452 = bitcast ptr %R8 to ptr
  store float %fadd.9, ptr %.452, align 4
  %.455 = load float, ptr %R29, align 4
  %.456 = load float, ptr %R28, align 4
  %.457 = load float, ptr %R8, align 4
  %fmul.10 = fmul float %.455, %.456
  %fadd.10 = fadd float %fmul.10, %.457
  %.458 = bitcast ptr %R8 to ptr
  store float %fadd.10, ptr %.458, align 4
  %.461 = load float, ptr %R31, align 4
  %.462 = load float, ptr %R30, align 4
  %.463 = load float, ptr %R8, align 4
  %fmul.11 = fmul float %.461, %.462
  %fadd.11 = fadd float %fmul.11, %.463
  %.464 = bitcast ptr %R8 to ptr
  store float %fadd.11, ptr %.464, align 4
  %.467 = load float, ptr %R33, align 4
  %.468 = load float, ptr %R32, align 4
  %.469 = load float, ptr %R8, align 4
  %fmul.12 = fmul float %.467, %.468
  %fadd.12 = fadd float %fmul.12, %.469
  %.470 = bitcast ptr %R8 to ptr
  store float %fadd.12, ptr %.470, align 4
  %.473 = load float, ptr %R35, align 4
  %.474 = load float, ptr %R34, align 4
  %.475 = load float, ptr %R8, align 4
  %fmul.13 = fmul float %.473, %.474
  %fadd.13 = fadd float %fmul.13, %.475
  %.476 = bitcast ptr %R8 to ptr
  store float %fadd.13, ptr %.476, align 4
  %.479 = load float, ptr %R37, align 4
  %.480 = load float, ptr %R36, align 4
  %.481 = load float, ptr %R8, align 4
  %fmul.14 = fmul float %.479, %.480
  %fadd.14 = fadd float %fmul.14, %.481
  %.482 = bitcast ptr %R8 to ptr
  store float %fadd.14, ptr %.482, align 4
  %.485 = load float, ptr %R39, align 4
  %.486 = load float, ptr %R38, align 4
  %.487 = load float, ptr %R8, align 4
  %fmul.15 = fmul float %.485, %.486
  %fadd.15 = fadd float %fmul.15, %.487
  %.488 = bitcast ptr %R7 to ptr
  store float %fadd.15, ptr %.488, align 4
  %.492 = icmp eq i1 %.366, true
  br i1 %.492, label %.L_x_4, label %.L_x_3.loopexit

.L_x_3.loopexit:                                  ; preds = %.L_x_4
  br label %.L_x_3

.L_x_3:                                           ; preds = %.L_x_3.loopexit, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0
  %UR4.1 = phi i32 [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %.352, %.L_x_3.loopexit ]
  %R6.1 = phi i32 [ %.87, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %.344, %.L_x_3.loopexit ]
  %UR5.1 = phi i32 [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %add.3, %.L_x_3.loopexit ]
  %R3.1 = phi i32 [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %add.7, %.L_x_3.loopexit ]
  %.496 = add i32 %R6.1, -1
  %.497 = add i32 %.496, 0
  store i32 %.497, ptr %R8, align 4
  %.500 = load i32, ptr %R8, align 4
  %cmp.6 = icmp sgt i32 %.500, 4
  %.503 = and i1 %cmp.6, true
  %.508 = icmp ne i1 %.503, true
  br i1 %.508, label %.L_x_5, label %.L_x_3_split_0x05a0

.L_x_3_split_0x05a0:                              ; preds = %.L_x_3
  %.511 = load i32, ptr %R2, align 4
  %zext.64 = zext i32 %.511 to i64
  %zext.65 = zext i32 %R3.1 to i64
  %shl.32 = shl i64 %zext.65, 32
  %or.32 = or i64 %shl.32, %zext.64
  %inttoptr_bytes.32 = inttoptr i64 %or.32 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.513 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.514 = bitcast ptr %R8 to ptr
  store float %.513, ptr %.514, align 4
  %zext.66 = zext i32 %UR4.1 to i64
  %zext.67 = zext i32 %UR5.1 to i64
  %shl.33 = shl i64 %zext.67, 32
  %or.33 = or i64 %shl.33, %zext.66
  %inttoptr_bytes.33 = inttoptr i64 %or.33 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.519 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.520 = bitcast ptr %R9 to ptr
  store float %.519, ptr %.520, align 4
  %.523 = load i32, ptr %R2, align 4
  %zext.68 = zext i32 %.523 to i64
  %zext.69 = zext i32 %R3.1 to i64
  %shl.34 = shl i64 %zext.69, 32
  %or.34 = or i64 %shl.34, %zext.68
  %ptr_plus_imm.30 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.30 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.525 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.526 = bitcast ptr %R11 to ptr
  store float %.525, ptr %.526, align 4
  %zext.70 = zext i32 %UR4.1 to i64
  %zext.71 = zext i32 %UR5.1 to i64
  %shl.35 = shl i64 %zext.71, 32
  %or.35 = or i64 %shl.35, %zext.70
  %ptr_plus_imm.31 = add i64 %or.35, 4
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.31 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.531 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.532 = bitcast ptr %R10 to ptr
  store float %.531, ptr %.532, align 4
  %.535 = load i32, ptr %R2, align 4
  %zext.72 = zext i32 %.535 to i64
  %zext.73 = zext i32 %R3.1 to i64
  %shl.36 = shl i64 %zext.73, 32
  %or.36 = or i64 %shl.36, %zext.72
  %ptr_plus_imm.32 = add i64 %or.36, 8
  %inttoptr_bytes.36 = inttoptr i64 %ptr_plus_imm.32 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.537 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.538 = bitcast ptr %R13 to ptr
  store float %.537, ptr %.538, align 4
  %zext.74 = zext i32 %UR4.1 to i64
  %zext.75 = zext i32 %UR5.1 to i64
  %shl.37 = shl i64 %zext.75, 32
  %or.37 = or i64 %shl.37, %zext.74
  %ptr_plus_imm.33 = add i64 %or.37, 8
  %inttoptr_bytes.37 = inttoptr i64 %ptr_plus_imm.33 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.543 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.544 = bitcast ptr %R12 to ptr
  store float %.543, ptr %.544, align 4
  %.547 = load i32, ptr %R2, align 4
  %zext.76 = zext i32 %.547 to i64
  %zext.77 = zext i32 %R3.1 to i64
  %shl.38 = shl i64 %zext.77, 32
  %or.38 = or i64 %shl.38, %zext.76
  %ptr_plus_imm.34 = add i64 %or.38, 12
  %inttoptr_bytes.38 = inttoptr i64 %ptr_plus_imm.34 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.549 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.550 = bitcast ptr %R15 to ptr
  store float %.549, ptr %.550, align 4
  %zext.78 = zext i32 %UR4.1 to i64
  %zext.79 = zext i32 %UR5.1 to i64
  %shl.39 = shl i64 %zext.79, 32
  %or.39 = or i64 %shl.39, %zext.78
  %ptr_plus_imm.35 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %ptr_plus_imm.35 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.555 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.556 = bitcast ptr %R14 to ptr
  store float %.555, ptr %.556, align 4
  %.559 = load i32, ptr %R2, align 4
  %zext.80 = zext i32 %.559 to i64
  %zext.81 = zext i32 %R3.1 to i64
  %shl.40 = shl i64 %zext.81, 32
  %or.40 = or i64 %shl.40, %zext.80
  %ptr_plus_imm.36 = add i64 %or.40, 16
  %inttoptr_bytes.40 = inttoptr i64 %ptr_plus_imm.36 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.561 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.562 = bitcast ptr %R17 to ptr
  store float %.561, ptr %.562, align 4
  %zext.82 = zext i32 %UR4.1 to i64
  %zext.83 = zext i32 %UR5.1 to i64
  %shl.41 = shl i64 %zext.83, 32
  %or.41 = or i64 %shl.41, %zext.82
  %ptr_plus_imm.37 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %ptr_plus_imm.37 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.567 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.568 = bitcast ptr %R16 to ptr
  store float %.567, ptr %.568, align 4
  %.571 = load i32, ptr %R2, align 4
  %zext.84 = zext i32 %.571 to i64
  %zext.85 = zext i32 %R3.1 to i64
  %shl.42 = shl i64 %zext.85, 32
  %or.42 = or i64 %shl.42, %zext.84
  %ptr_plus_imm.38 = add i64 %or.42, 20
  %inttoptr_bytes.42 = inttoptr i64 %ptr_plus_imm.38 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.573 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.574 = bitcast ptr %R19 to ptr
  store float %.573, ptr %.574, align 4
  %zext.86 = zext i32 %UR4.1 to i64
  %zext.87 = zext i32 %UR5.1 to i64
  %shl.43 = shl i64 %zext.87, 32
  %or.43 = or i64 %shl.43, %zext.86
  %ptr_plus_imm.39 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %ptr_plus_imm.39 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.579 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.580 = bitcast ptr %R18 to ptr
  store float %.579, ptr %.580, align 4
  %.583 = load i32, ptr %R2, align 4
  %zext.88 = zext i32 %.583 to i64
  %zext.89 = zext i32 %R3.1 to i64
  %shl.44 = shl i64 %zext.89, 32
  %or.44 = or i64 %shl.44, %zext.88
  %ptr_plus_imm.40 = add i64 %or.44, 24
  %inttoptr_bytes.44 = inttoptr i64 %ptr_plus_imm.40 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.585 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.586 = bitcast ptr %R21 to ptr
  store float %.585, ptr %.586, align 4
  %zext.90 = zext i32 %UR4.1 to i64
  %zext.91 = zext i32 %UR5.1 to i64
  %shl.45 = shl i64 %zext.91, 32
  %or.45 = or i64 %shl.45, %zext.90
  %ptr_plus_imm.41 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %ptr_plus_imm.41 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.591 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.592 = bitcast ptr %R20 to ptr
  store float %.591, ptr %.592, align 4
  %.595 = load i32, ptr %R2, align 4
  %zext.92 = zext i32 %.595 to i64
  %zext.93 = zext i32 %R3.1 to i64
  %shl.46 = shl i64 %zext.93, 32
  %or.46 = or i64 %shl.46, %zext.92
  %ptr_plus_imm.42 = add i64 %or.46, 28
  %inttoptr_bytes.46 = inttoptr i64 %ptr_plus_imm.42 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.597 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.598 = bitcast ptr %R23 to ptr
  store float %.597, ptr %.598, align 4
  %zext.94 = zext i32 %UR4.1 to i64
  %zext.95 = zext i32 %UR5.1 to i64
  %shl.47 = shl i64 %zext.95, 32
  %or.47 = or i64 %shl.47, %zext.94
  %ptr_plus_imm.43 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %ptr_plus_imm.43 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.603 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.604 = bitcast ptr %R22 to ptr
  store float %.603, ptr %.604, align 4
  %.608 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.609 = extractvalue { i32, i1 } %.608, 0
  %.610 = extractvalue { i32, i1 } %.608, 1
  %.611 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.609, i32 0)
  %.612 = extractvalue { i32, i1 } %.611, 0
  %.613 = extractvalue { i32, i1 } %.611, 1
  %.614 = or i1 %.610, %.613
  %.622 = load i32, ptr %R5, align 4
  %.623 = add i32 %.622, 8
  %.624 = add i32 %.623, 0
  store i32 %.624, ptr %R5, align 4
  %.629 = xor i1 true, true
  %.630 = zext i1 %.614 to i32
  %.631 = zext i1 %.629 to i32
  %add.8 = add i32 0, %UR5.1
  %add.9 = add i32 %add.8, 0
  %add.10 = add i32 %add.9, %.630
  %add.11 = add i32 %add.10, %.631
  %.634 = load i32, ptr %R2, align 4
  %.635 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.634, i32 32)
  %.636 = extractvalue { i32, i1 } %.635, 0
  %.637 = extractvalue { i32, i1 } %.635, 1
  %.638 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.636, i32 0)
  %.639 = extractvalue { i32, i1 } %.638, 0
  %.640 = extractvalue { i32, i1 } %.638, 1
  %.641 = or i1 %.637, %.640
  store i32 %.639, ptr %R2, align 4
  %.646 = add i32 %R6.1, -8
  %.647 = add i32 %.646, 0
  %.652 = xor i1 true, true
  %.653 = zext i1 %.641 to i32
  %.654 = zext i1 %.652 to i32
  %add.12 = add i32 0, %R3.1
  %add.13 = add i32 %add.12, 0
  %add.14 = add i32 %add.13, %.653
  %add.15 = add i32 %add.14, %.654
  %.657 = load float, ptr %R8, align 4
  %.658 = load float, ptr %R9, align 4
  %.659 = load float, ptr %R7, align 4
  %fmul.16 = fmul float %.657, %.658
  %fadd.16 = fadd float %fmul.16, %.659
  %.660 = bitcast ptr %R8 to ptr
  store float %fadd.16, ptr %.660, align 4
  %.663 = load float, ptr %R11, align 4
  %.664 = load float, ptr %R10, align 4
  %.665 = load float, ptr %R8, align 4
  %fmul.17 = fmul float %.663, %.664
  %fadd.17 = fadd float %fmul.17, %.665
  %.666 = bitcast ptr %R8 to ptr
  store float %fadd.17, ptr %.666, align 4
  %.669 = load float, ptr %R13, align 4
  %.670 = load float, ptr %R12, align 4
  %.671 = load float, ptr %R8, align 4
  %fmul.18 = fmul float %.669, %.670
  %fadd.18 = fadd float %fmul.18, %.671
  %.672 = bitcast ptr %R8 to ptr
  store float %fadd.18, ptr %.672, align 4
  %.675 = load float, ptr %R15, align 4
  %.676 = load float, ptr %R14, align 4
  %.677 = load float, ptr %R8, align 4
  %fmul.19 = fmul float %.675, %.676
  %fadd.19 = fadd float %fmul.19, %.677
  %.678 = bitcast ptr %R8 to ptr
  store float %fadd.19, ptr %.678, align 4
  %.681 = load float, ptr %R17, align 4
  %.682 = load float, ptr %R16, align 4
  %.683 = load float, ptr %R8, align 4
  %fmul.20 = fmul float %.681, %.682
  %fadd.20 = fadd float %fmul.20, %.683
  %.684 = bitcast ptr %R8 to ptr
  store float %fadd.20, ptr %.684, align 4
  %.687 = load float, ptr %R19, align 4
  %.688 = load float, ptr %R18, align 4
  %.689 = load float, ptr %R8, align 4
  %fmul.21 = fmul float %.687, %.688
  %fadd.21 = fadd float %fmul.21, %.689
  %.690 = bitcast ptr %R8 to ptr
  store float %fadd.21, ptr %.690, align 4
  %.693 = load float, ptr %R21, align 4
  %.694 = load float, ptr %R20, align 4
  %.695 = load float, ptr %R8, align 4
  %fmul.22 = fmul float %.693, %.694
  %fadd.22 = fadd float %fmul.22, %.695
  %.696 = bitcast ptr %R8 to ptr
  store float %fadd.22, ptr %.696, align 4
  %.699 = load float, ptr %R23, align 4
  %.700 = load float, ptr %R22, align 4
  %.701 = load float, ptr %R8, align 4
  %fmul.23 = fmul float %.699, %.700
  %fadd.23 = fadd float %fmul.23, %.701
  %.702 = bitcast ptr %R7 to ptr
  store float %fadd.23, ptr %.702, align 4
  br label %.L_x_5

.L_x_5:                                           ; preds = %.L_x_3_split_0x05a0, %.L_x_3
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_3 ], [ %.612, %.L_x_3_split_0x05a0 ]
  %R6.3 = phi i32 [ %R6.1, %.L_x_3 ], [ %.647, %.L_x_3_split_0x05a0 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_3 ], [ %add.11, %.L_x_3_split_0x05a0 ]
  %R3.3 = phi i32 [ %R3.1, %.L_x_3 ], [ %add.15, %.L_x_3_split_0x05a0 ]
  %cmp.7 = icmp ne i32 %R6.3, 1
  %.709 = or i1 %cmp.7, %.104
  %.714 = icmp ne i1 %.709, true
  br i1 %.714, label %.L_x_1, label %.L_x_2.preheader

.L_x_2.preheader:                                 ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110, %.L_x_5
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_5 ], [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %R6.0.ph = phi i32 [ %R6.3, %.L_x_5 ], [ %.87, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_5 ], [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %R3.0.ph = phi i32 [ %R3.3, %.L_x_5 ], [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  br label %.L_x_2

.L_x_2:                                           ; preds = %.L_x_2.preheader, %.L_x_2
  %UR4.0 = phi i32 [ %.775, %.L_x_2 ], [ %UR4.0.ph, %.L_x_2.preheader ]
  %R6.0 = phi i32 [ %.767, %.L_x_2 ], [ %R6.0.ph, %.L_x_2.preheader ]
  %UR5.0 = phi i32 [ %add.19, %.L_x_2 ], [ %UR5.0.ph, %.L_x_2.preheader ]
  %R3.0 = phi i32 [ %.830, %.L_x_2 ], [ %R3.0.ph, %.L_x_2.preheader ]
  %.717 = load i32, ptr %R2, align 4
  %zext.96 = zext i32 %.717 to i64
  %zext.97 = zext i32 %R3.0 to i64
  %shl.48 = shl i64 %zext.97, 32
  %or.48 = or i64 %shl.48, %zext.96
  %inttoptr_bytes.48 = inttoptr i64 %or.48 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.719 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.720 = bitcast ptr %R8 to ptr
  store float %.719, ptr %.720, align 4
  %zext.98 = zext i32 %UR4.0 to i64
  %zext.99 = zext i32 %UR5.0 to i64
  %shl.49 = shl i64 %zext.99, 32
  %or.49 = or i64 %shl.49, %zext.98
  %inttoptr_bytes.49 = inttoptr i64 %or.49 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.725 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.726 = bitcast ptr %R9 to ptr
  store float %.725, ptr %.726, align 4
  %.729 = load i32, ptr %R2, align 4
  %zext.100 = zext i32 %.729 to i64
  %zext.101 = zext i32 %R3.0 to i64
  %shl.50 = shl i64 %zext.101, 32
  %or.50 = or i64 %shl.50, %zext.100
  %ptr_plus_imm.44 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %ptr_plus_imm.44 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.731 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.732 = bitcast ptr %R11 to ptr
  store float %.731, ptr %.732, align 4
  %zext.102 = zext i32 %UR4.0 to i64
  %zext.103 = zext i32 %UR5.0 to i64
  %shl.51 = shl i64 %zext.103, 32
  %or.51 = or i64 %shl.51, %zext.102
  %ptr_plus_imm.45 = add i64 %or.51, 4
  %inttoptr_bytes.51 = inttoptr i64 %ptr_plus_imm.45 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.737 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.738 = bitcast ptr %R10 to ptr
  store float %.737, ptr %.738, align 4
  %.741 = load i32, ptr %R2, align 4
  %zext.104 = zext i32 %.741 to i64
  %zext.105 = zext i32 %R3.0 to i64
  %shl.52 = shl i64 %zext.105, 32
  %or.52 = or i64 %shl.52, %zext.104
  %ptr_plus_imm.46 = add i64 %or.52, 8
  %inttoptr_bytes.52 = inttoptr i64 %ptr_plus_imm.46 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.743 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.744 = bitcast ptr %R13 to ptr
  store float %.743, ptr %.744, align 4
  %zext.106 = zext i32 %UR4.0 to i64
  %zext.107 = zext i32 %UR5.0 to i64
  %shl.53 = shl i64 %zext.107, 32
  %or.53 = or i64 %shl.53, %zext.106
  %ptr_plus_imm.47 = add i64 %or.53, 8
  %inttoptr_bytes.53 = inttoptr i64 %ptr_plus_imm.47 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.749 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.750 = bitcast ptr %R12 to ptr
  store float %.749, ptr %.750, align 4
  %.753 = load i32, ptr %R2, align 4
  %zext.108 = zext i32 %.753 to i64
  %zext.109 = zext i32 %R3.0 to i64
  %shl.54 = shl i64 %zext.109, 32
  %or.54 = or i64 %shl.54, %zext.108
  %ptr_plus_imm.48 = add i64 %or.54, 12
  %inttoptr_bytes.54 = inttoptr i64 %ptr_plus_imm.48 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.755 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.756 = bitcast ptr %R15 to ptr
  store float %.755, ptr %.756, align 4
  %zext.110 = zext i32 %UR4.0 to i64
  %zext.111 = zext i32 %UR5.0 to i64
  %shl.55 = shl i64 %zext.111, 32
  %or.55 = or i64 %shl.55, %zext.110
  %ptr_plus_imm.49 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %ptr_plus_imm.49 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.761 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.762 = bitcast ptr %R14 to ptr
  store float %.761, ptr %.762, align 4
  %.766 = add i32 %R6.0, -4
  %.767 = add i32 %.766, 0
  %.771 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.772 = extractvalue { i32, i1 } %.771, 0
  %.773 = extractvalue { i32, i1 } %.771, 1
  %.774 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.772, i32 0)
  %.775 = extractvalue { i32, i1 } %.774, 0
  %.776 = extractvalue { i32, i1 } %.774, 1
  %.777 = or i1 %.773, %.776
  %.781 = load i32, ptr %R5, align 4
  %.782 = add i32 %.781, 4
  %.783 = add i32 %.782, 0
  store i32 %.783, ptr %R5, align 4
  %cmp.8 = icmp ne i32 %.767, 1
  %.789 = and i1 %cmp.8, true
  %.795 = xor i1 true, true
  %.796 = zext i1 %.777 to i32
  %.797 = zext i1 %.795 to i32
  %add.16 = add i32 0, %UR5.0
  %add.17 = add i32 %add.16, 0
  %add.18 = add i32 %add.17, %.796
  %add.19 = add i32 %add.18, %.797
  %.800 = load float, ptr %R8, align 4
  %.801 = load float, ptr %R9, align 4
  %.802 = load float, ptr %R7, align 4
  %fmul.24 = fmul float %.800, %.801
  %fadd.24 = fadd float %fmul.24, %.802
  %.803 = bitcast ptr %R8 to ptr
  store float %fadd.24, ptr %.803, align 4
  %.806 = load i32, ptr %R2, align 4
  %.807 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.806, i32 16)
  %.808 = extractvalue { i32, i1 } %.807, 0
  %.809 = extractvalue { i32, i1 } %.807, 1
  %.810 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.808, i32 0)
  %.811 = extractvalue { i32, i1 } %.810, 0
  %.812 = extractvalue { i32, i1 } %.810, 1
  %.813 = or i1 %.809, %.812
  store i32 %.811, ptr %R9, align 4
  %.817 = load i32, ptr %R9, align 4
  store i32 %.817, ptr %R2, align 4
  %.820 = load float, ptr %R11, align 4
  %.821 = load float, ptr %R10, align 4
  %.822 = load float, ptr %R8, align 4
  %fmul.25 = fmul float %.820, %.821
  %fadd.25 = fadd float %fmul.25, %.822
  %.823 = bitcast ptr %R8 to ptr
  store float %fadd.25, ptr %.823, align 4
  %imad_mul.6 = mul i32 0, 0
  %imad_add.6 = add i32 %imad_mul.6, %R3.0
  %imad_ext4 = zext i1 %.813 to i32
  %imad_add_x = add i32 %imad_add.6, %imad_ext4
  store i32 %imad_add_x, ptr %R10, align 4
  %.830 = load i32, ptr %R10, align 4
  %.833 = load float, ptr %R13, align 4
  %.834 = load float, ptr %R12, align 4
  %.835 = load float, ptr %R8, align 4
  %fmul.26 = fmul float %.833, %.834
  %fadd.26 = fadd float %fmul.26, %.835
  %.836 = bitcast ptr %R8 to ptr
  store float %fadd.26, ptr %.836, align 4
  %.839 = load float, ptr %R15, align 4
  %.840 = load float, ptr %R14, align 4
  %.841 = load float, ptr %R8, align 4
  %fmul.27 = fmul float %.839, %.840
  %fadd.27 = fadd float %fmul.27, %.841
  %.842 = bitcast ptr %R7 to ptr
  store float %fadd.27, ptr %.842, align 4
  %.846 = icmp eq i1 %.789, true
  br i1 %.846, label %.L_x_2, label %.L_x_1.loopexit

.L_x_1.loopexit:                                  ; preds = %.L_x_2
  br label %.L_x_1

.L_x_1:                                           ; preds = %.L_x_1.loopexit, %.L_x_5, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0
  %cmp.9 = icmp ne i32 %.77, 0
  %.852 = and i1 %cmp.9, true
  %.857 = icmp ne i1 %.852, true
  br i1 %.857, label %.L_x_0, label %.L_x_1_split_0x0930

.L_x_1_split_0x0930:                              ; preds = %.L_x_1
  %imad_mul.7 = mul i32 0, 0
  %imad_add.7 = add i32 %imad_mul.7, 4
  store i32 %imad_add.7, ptr %R8, align 4
  %.863 = load i32, ptr %R5, align 4
  %imad_mul.8 = mul i32 %imad_add, %Arg_4
  %imad_add.8 = add i32 %imad_mul.8, %.863
  store i32 %imad_add.8, ptr %R2, align 4
  %.866 = load i32, ptr %R2, align 4
  %.867 = load i32, ptr %R8, align 4
  %imad_ext1.1 = zext i32 %.866 to i64
  %imad_ext2.1 = zext i32 %.867 to i64
  %imad_mul.9 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.868 = ptrtoint ptr %Arg_1 to i64
  %imad_add.9 = add i64 %imad_mul.9, %.868
  %.869 = and i64 %imad_add.9, -4294967296
  %.870 = lshr i64 %.869, 32
  %trunc32.4 = trunc i64 %.870 to i32
  %trunc32.5 = trunc i64 %imad_add.9 to i32
  store i32 %trunc32.5, ptr %R2, align 4
  %.874 = load i32, ptr %R5, align 4
  %.875 = load i32, ptr %R8, align 4
  %imad_ext1.2 = zext i32 %.874 to i64
  %imad_ext2.2 = zext i32 %.875 to i64
  %imad_mul.10 = mul i64 %imad_ext1.2, %imad_ext2.2
  %.876 = ptrtoint ptr %Arg_0 to i64
  %imad_add.10 = add i64 %imad_mul.10, %.876
  %.877 = and i64 %imad_add.10, -4294967296
  %.878 = lshr i64 %.877, 32
  %trunc32.6 = trunc i64 %.878 to i32
  %trunc32.7 = trunc i64 %imad_add.10 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  store i32 %trunc32.6, ptr %R9, align 4
  %.882 = load i32, ptr %R2, align 4
  br label %.L_x_6

.L_x_6:                                           ; preds = %.L_x_6, %.L_x_1_split_0x0930
  %R6.4 = phi i32 [ %.882, %.L_x_1_split_0x0930 ], [ %.918, %.L_x_6 ]
  %R4.0 = phi i32 [ %.77, %.L_x_1_split_0x0930 ], [ %.903, %.L_x_6 ]
  %R3.4 = phi i32 [ %trunc32.4, %.L_x_1_split_0x0930 ], [ %imad_add_x.1, %.L_x_6 ]
  store i32 %R6.4, ptr %R2, align 4
  %.889 = load i32, ptr %R8, align 4
  %zext.112 = zext i32 %.889 to i64
  %.890 = load i32, ptr %R9, align 4
  %zext.113 = zext i32 %.890 to i64
  %shl.56 = shl i64 %zext.113, 32
  %or.56 = or i64 %shl.56, %zext.112
  %inttoptr_bytes.56 = inttoptr i64 %or.56 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.891 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.892 = bitcast ptr %R5 to ptr
  store float %.891, ptr %.892, align 4
  %.895 = load i32, ptr %R2, align 4
  %zext.114 = zext i32 %.895 to i64
  %zext.115 = zext i32 %R3.4 to i64
  %shl.57 = shl i64 %zext.115, 32
  %or.57 = or i64 %shl.57, %zext.114
  %inttoptr_bytes.57 = inttoptr i64 %or.57 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.897 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.898 = bitcast ptr %R2 to ptr
  store float %.897, ptr %.898, align 4
  %.902 = add i32 %R4.0, -1
  %.903 = add i32 %.902, 0
  %cmp.10 = icmp ne i32 %.903, 0
  %.909 = and i1 %cmp.10, true
  %.914 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R6.4, i32 4)
  %.915 = extractvalue { i32, i1 } %.914, 0
  %.916 = extractvalue { i32, i1 } %.914, 1
  %.917 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.915, i32 0)
  %.918 = extractvalue { i32, i1 } %.917, 0
  %.919 = extractvalue { i32, i1 } %.917, 1
  %.920 = or i1 %.916, %.919
  %.924 = load i32, ptr %R8, align 4
  %.925 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.924, i32 4)
  %.926 = extractvalue { i32, i1 } %.925, 0
  %.927 = extractvalue { i32, i1 } %.925, 1
  %.928 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.926, i32 0)
  %.929 = extractvalue { i32, i1 } %.928, 0
  %.930 = extractvalue { i32, i1 } %.928, 1
  %.931 = or i1 %.927, %.930
  store i32 %.929, ptr %R8, align 4
  %imad_mul.11 = mul i32 0, 0
  %imad_add.11 = add i32 %imad_mul.11, %R3.4
  %imad_ext4.1 = zext i1 %.920 to i32
  %imad_add_x.1 = add i32 %imad_add.11, %imad_ext4.1
  %.939 = load i32, ptr %R9, align 4
  %.941 = xor i1 true, true
  %.942 = zext i1 %.931 to i32
  %.943 = zext i1 %.941 to i32
  %add.20 = add i32 0, %.939
  %add.21 = add i32 %add.20, 0
  %add.22 = add i32 %add.21, %.942
  %add.23 = add i32 %add.22, %.943
  store i32 %add.23, ptr %R9, align 4
  %.946 = load float, ptr %R2, align 4
  %.947 = load float, ptr %R5, align 4
  %.948 = load float, ptr %R7, align 4
  %fmul.28 = fmul float %.946, %.947
  %fadd.28 = fadd float %fmul.28, %.948
  %.949 = bitcast ptr %R7 to ptr
  store float %fadd.28, ptr %.949, align 4
  %.953 = icmp eq i1 %.909, true
  br i1 %.953, label %.L_x_6, label %.L_x_0.loopexit

.L_x_0.loopexit:                                  ; preds = %.L_x_6
  br label %.L_x_0

.L_x_0:                                           ; preds = %.L_x_0.loopexit, %.L_x_1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060
  store i32 4, ptr %R5, align 4
  %.959 = load i32, ptr %R5, align 4
  %imad_ext1.3 = zext i32 %imad_add to i64
  %imad_ext2.3 = zext i32 %.959 to i64
  %imad_mul.12 = mul i64 %imad_ext1.3, %imad_ext2.3
  %.960 = ptrtoint ptr %Arg_2 to i64
  %imad_add.12 = add i64 %imad_mul.12, %.960
  %.961 = and i64 %imad_add.12, -4294967296
  %.962 = lshr i64 %.961, 32
  %trunc32.8 = trunc i64 %.962 to i32
  %trunc32.9 = trunc i64 %imad_add.12 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  %.966 = load i32, ptr %R2, align 4
  %zext.116 = zext i32 %.966 to i64
  %zext.117 = zext i32 %trunc32.8 to i64
  %shl.58 = shl i64 %zext.117, 32
  %or.58 = or i64 %shl.58, %zext.116
  %inttoptr_bytes.58 = inttoptr i64 %or.58 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.968 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.969 = bitcast ptr %R2 to ptr
  store float %.968, ptr %.969, align 4
  %.973 = load i32, ptr %R5, align 4
  %imad_ext1.4 = zext i32 %imad_add to i64
  %imad_ext2.4 = zext i32 %.973 to i64
  %imad_mul.13 = mul i64 %imad_ext1.4, %imad_ext2.4
  %.974 = ptrtoint ptr %Arg_3 to i64
  %imad_add.13 = add i64 %imad_mul.13, %.974
  %.975 = and i64 %imad_add.13, -4294967296
  %.976 = lshr i64 %.975, 32
  %trunc32.10 = trunc i64 %.976 to i32
  %trunc32.11 = trunc i64 %imad_add.13 to i32
  store i32 %trunc32.10, ptr %R5, align 4
  %.980 = load float, ptr %R2, align 4
  %.981 = load float, ptr %R7, align 4
  %fadd.29 = fadd float %.980, %.981
  %.982 = bitcast ptr %R7 to ptr
  store float %fadd.29, ptr %.982, align 4
  %.985 = load float, ptr %R7, align 4
  %zext.118 = zext i32 %trunc32.11 to i64
  %.987 = load i32, ptr %R5, align 4
  %zext.119 = zext i32 %.987 to i64
  %shl.59 = shl i64 %zext.119, 32
  %or.59 = or i64 %shl.59, %zext.118
  %inttoptr_bytes.59 = inttoptr i64 %or.59 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.985, ptr addrspace(1) %ptr_cast_for_access.59, align 4
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
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_x
  %cmp = icmp sge i32 %imad_add, %Arg_5
  %.27 = and i1 %cmp, true
  %.32 = icmp eq i1 %.27, true
  br i1 %.32, label %ExitFunction, label %.text._Z8fc_layerPfS_S_S_ii_split_0x0060

.text._Z8fc_layerPfS_S_S_ii_split_0x0060:         ; preds = %Entry_.text._Z8fc_layerPfS_S_S_ii
  %imad_mul.1 = mul i32 0, 0
  %imad_add.1 = add i32 %imad_mul.1, 0
  store i32 %imad_add.1, ptr %R7, align 4
  %cmp.1 = icmp sge i32 %Arg_4, 1
  %.44 = and i1 %cmp.1, true
  %.49 = icmp ne i1 %.44, true
  br i1 %.49, label %.L_x_8, label %.text._Z8fc_layerPfS_S_S_ii_split_0x00a0

.text._Z8fc_layerPfS_S_S_ii_split_0x00a0:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0060
  %.53 = add i32 %Arg_4, -1
  %.54 = add i32 %.53, 0
  store i32 %.54, ptr %R2, align 4
  %.59 = and i32 %Arg_4, 3
  %.62 = load i32, ptr %R2, align 4
  %cmp.2 = icmp sge i32 %.62, 3
  %.65 = and i1 %cmp.2, true
  %.69 = load float, ptr %RZ, align 4
  %.70 = bitcast ptr %R7 to ptr
  store float %.69, ptr %.70, align 4
  %.73 = load i32, ptr %RZ, align 4
  store i32 %.73, ptr %R5, align 4
  %.77 = icmp ne i1 %.65, true
  br i1 %.77, label %.L_x_9, label %.text._Z8fc_layerPfS_S_S_ii_split_0x0100

.text._Z8fc_layerPfS_S_S_ii_split_0x0100:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x00a0
  %.81 = sub i32 0, %.59
  %.82 = add i32 %.81, %Arg_4
  %.83 = add i32 %.82, 0
  %imad_mul.2 = mul i32 %imad_add, %Arg_4
  %imad_add.2 = add i32 %imad_mul.2, 0
  store i32 %imad_add.2, ptr %R2, align 4
  %.89 = ptrtoint ptr %Arg_0 to i64
  %.90 = and i64 %.89, -4294967296
  %.91 = lshr i64 %.90, 32
  %trunc32 = trunc i64 %.91 to i32
  %trunc32.1 = trunc i64 %.89 to i32
  %imad_mul.3 = mul i32 0, 0
  %imad_add.3 = add i32 %imad_mul.3, 4
  %cmp.3 = icmp sgt i32 %.83, 0
  %.100 = and i1 %cmp.3, true
  %.104 = load float, ptr %RZ, align 4
  %.105 = bitcast ptr %R7 to ptr
  store float %.104, ptr %.105, align 4
  %.108 = load i32, ptr %R2, align 4
  %imad_ext1 = zext i32 %.108 to i64
  %imad_ext2 = zext i32 %imad_add.3 to i64
  %imad_mul.4 = mul i64 %imad_ext1, %imad_ext2
  %.110 = ptrtoint ptr %Arg_1 to i64
  %imad_add.4 = add i64 %imad_mul.4, %.110
  %.111 = and i64 %imad_add.4, -4294967296
  %.112 = lshr i64 %.111, 32
  %trunc32.2 = trunc i64 %.112 to i32
  %trunc32.3 = trunc i64 %imad_add.4 to i32
  store i32 %trunc32.3, ptr %R2, align 4
  %.116 = load i32, ptr %RZ, align 4
  store i32 %.116, ptr %R5, align 4
  %.120 = icmp ne i1 %.100, true
  br i1 %.120, label %.L_x_10.preheader, label %.text._Z8fc_layerPfS_S_S_ii_split_0x0190

.text._Z8fc_layerPfS_S_S_ii_split_0x0190:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0100
  %cmp.4 = icmp sgt i32 %.83, 12
  %.126 = and i1 %cmp.4, true
  %.134 = icmp ne i1 %.126, true
  br i1 %.134, label %.L_x_11, label %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0

.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0190
  br label %.L_x_12

.L_x_12:                                          ; preds = %.L_x_12, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0
  %UR4.2 = phi i32 [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %.344, %.L_x_12 ]
  %R6.2 = phi i32 [ %.83, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %.336, %.L_x_12 ]
  %UR5.2 = phi i32 [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %add.3, %.L_x_12 ]
  %R3.2 = phi i32 [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %imad_add_x, %.L_x_12 ]
  %.142 = load i32, ptr %R2, align 4
  %zext = zext i32 %.142 to i64
  %zext.1 = zext i32 %R3.2 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.144 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.145 = bitcast ptr %R8 to ptr
  store float %.144, ptr %.145, align 4
  %zext.2 = zext i32 %UR4.2 to i64
  %zext.3 = zext i32 %UR5.2 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.150 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.151 = bitcast ptr %R9 to ptr
  store float %.150, ptr %.151, align 4
  %.154 = load i32, ptr %R2, align 4
  %zext.4 = zext i32 %.154 to i64
  %zext.5 = zext i32 %R3.2 to i64
  %shl.2 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.2, %zext.4
  %ptr_plus_imm = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.156 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.157 = bitcast ptr %R11 to ptr
  store float %.156, ptr %.157, align 4
  %zext.6 = zext i32 %UR4.2 to i64
  %zext.7 = zext i32 %UR5.2 to i64
  %shl.3 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.3, %zext.6
  %ptr_plus_imm.1 = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.162 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.163 = bitcast ptr %R10 to ptr
  store float %.162, ptr %.163, align 4
  %.166 = load i32, ptr %R2, align 4
  %zext.8 = zext i32 %.166 to i64
  %zext.9 = zext i32 %R3.2 to i64
  %shl.4 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.4, %zext.8
  %ptr_plus_imm.2 = add i64 %or.4, 8
  %inttoptr_bytes.4 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.168 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.169 = bitcast ptr %R13 to ptr
  store float %.168, ptr %.169, align 4
  %zext.10 = zext i32 %UR4.2 to i64
  %zext.11 = zext i32 %UR5.2 to i64
  %shl.5 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.5, %zext.10
  %ptr_plus_imm.3 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.174 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.175 = bitcast ptr %R12 to ptr
  store float %.174, ptr %.175, align 4
  %.178 = load i32, ptr %R2, align 4
  %zext.12 = zext i32 %.178 to i64
  %zext.13 = zext i32 %R3.2 to i64
  %shl.6 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.6, %zext.12
  %ptr_plus_imm.4 = add i64 %or.6, 12
  %inttoptr_bytes.6 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.180 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.181 = bitcast ptr %R15 to ptr
  store float %.180, ptr %.181, align 4
  %zext.14 = zext i32 %UR4.2 to i64
  %zext.15 = zext i32 %UR5.2 to i64
  %shl.7 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.7, %zext.14
  %ptr_plus_imm.5 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.186 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.187 = bitcast ptr %R14 to ptr
  store float %.186, ptr %.187, align 4
  %.190 = load i32, ptr %R2, align 4
  %zext.16 = zext i32 %.190 to i64
  %zext.17 = zext i32 %R3.2 to i64
  %shl.8 = shl i64 %zext.17, 32
  %or.8 = or i64 %shl.8, %zext.16
  %ptr_plus_imm.6 = add i64 %or.8, 16
  %inttoptr_bytes.8 = inttoptr i64 %ptr_plus_imm.6 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.192 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.193 = bitcast ptr %R17 to ptr
  store float %.192, ptr %.193, align 4
  %zext.18 = zext i32 %UR4.2 to i64
  %zext.19 = zext i32 %UR5.2 to i64
  %shl.9 = shl i64 %zext.19, 32
  %or.9 = or i64 %shl.9, %zext.18
  %ptr_plus_imm.7 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm.7 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.198 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.199 = bitcast ptr %R16 to ptr
  store float %.198, ptr %.199, align 4
  %.202 = load i32, ptr %R2, align 4
  %zext.20 = zext i32 %.202 to i64
  %zext.21 = zext i32 %R3.2 to i64
  %shl.10 = shl i64 %zext.21, 32
  %or.10 = or i64 %shl.10, %zext.20
  %ptr_plus_imm.8 = add i64 %or.10, 20
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.8 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.204 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.205 = bitcast ptr %R19 to ptr
  store float %.204, ptr %.205, align 4
  %zext.22 = zext i32 %UR4.2 to i64
  %zext.23 = zext i32 %UR5.2 to i64
  %shl.11 = shl i64 %zext.23, 32
  %or.11 = or i64 %shl.11, %zext.22
  %ptr_plus_imm.9 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.9 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.210 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.211 = bitcast ptr %R18 to ptr
  store float %.210, ptr %.211, align 4
  %.214 = load i32, ptr %R2, align 4
  %zext.24 = zext i32 %.214 to i64
  %zext.25 = zext i32 %R3.2 to i64
  %shl.12 = shl i64 %zext.25, 32
  %or.12 = or i64 %shl.12, %zext.24
  %ptr_plus_imm.10 = add i64 %or.12, 24
  %inttoptr_bytes.12 = inttoptr i64 %ptr_plus_imm.10 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.216 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.217 = bitcast ptr %R21 to ptr
  store float %.216, ptr %.217, align 4
  %zext.26 = zext i32 %UR4.2 to i64
  %zext.27 = zext i32 %UR5.2 to i64
  %shl.13 = shl i64 %zext.27, 32
  %or.13 = or i64 %shl.13, %zext.26
  %ptr_plus_imm.11 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %ptr_plus_imm.11 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.222 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.223 = bitcast ptr %R20 to ptr
  store float %.222, ptr %.223, align 4
  %.226 = load i32, ptr %R2, align 4
  %zext.28 = zext i32 %.226 to i64
  %zext.29 = zext i32 %R3.2 to i64
  %shl.14 = shl i64 %zext.29, 32
  %or.14 = or i64 %shl.14, %zext.28
  %ptr_plus_imm.12 = add i64 %or.14, 28
  %inttoptr_bytes.14 = inttoptr i64 %ptr_plus_imm.12 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.228 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.229 = bitcast ptr %R23 to ptr
  store float %.228, ptr %.229, align 4
  %zext.30 = zext i32 %UR4.2 to i64
  %zext.31 = zext i32 %UR5.2 to i64
  %shl.15 = shl i64 %zext.31, 32
  %or.15 = or i64 %shl.15, %zext.30
  %ptr_plus_imm.13 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %ptr_plus_imm.13 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.234 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.235 = bitcast ptr %R22 to ptr
  store float %.234, ptr %.235, align 4
  %.238 = load i32, ptr %R2, align 4
  %zext.32 = zext i32 %.238 to i64
  %zext.33 = zext i32 %R3.2 to i64
  %shl.16 = shl i64 %zext.33, 32
  %or.16 = or i64 %shl.16, %zext.32
  %ptr_plus_imm.14 = add i64 %or.16, 32
  %inttoptr_bytes.16 = inttoptr i64 %ptr_plus_imm.14 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.240 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.241 = bitcast ptr %R25 to ptr
  store float %.240, ptr %.241, align 4
  %zext.34 = zext i32 %UR4.2 to i64
  %zext.35 = zext i32 %UR5.2 to i64
  %shl.17 = shl i64 %zext.35, 32
  %or.17 = or i64 %shl.17, %zext.34
  %ptr_plus_imm.15 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %ptr_plus_imm.15 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.246 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.247 = bitcast ptr %R24 to ptr
  store float %.246, ptr %.247, align 4
  %.250 = load i32, ptr %R2, align 4
  %zext.36 = zext i32 %.250 to i64
  %zext.37 = zext i32 %R3.2 to i64
  %shl.18 = shl i64 %zext.37, 32
  %or.18 = or i64 %shl.18, %zext.36
  %ptr_plus_imm.16 = add i64 %or.18, 36
  %inttoptr_bytes.18 = inttoptr i64 %ptr_plus_imm.16 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.252 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.253 = bitcast ptr %R27 to ptr
  store float %.252, ptr %.253, align 4
  %zext.38 = zext i32 %UR4.2 to i64
  %zext.39 = zext i32 %UR5.2 to i64
  %shl.19 = shl i64 %zext.39, 32
  %or.19 = or i64 %shl.19, %zext.38
  %ptr_plus_imm.17 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %ptr_plus_imm.17 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.258 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.259 = bitcast ptr %R26 to ptr
  store float %.258, ptr %.259, align 4
  %.262 = load i32, ptr %R2, align 4
  %zext.40 = zext i32 %.262 to i64
  %zext.41 = zext i32 %R3.2 to i64
  %shl.20 = shl i64 %zext.41, 32
  %or.20 = or i64 %shl.20, %zext.40
  %ptr_plus_imm.18 = add i64 %or.20, 40
  %inttoptr_bytes.20 = inttoptr i64 %ptr_plus_imm.18 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.264 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.265 = bitcast ptr %R29 to ptr
  store float %.264, ptr %.265, align 4
  %zext.42 = zext i32 %UR4.2 to i64
  %zext.43 = zext i32 %UR5.2 to i64
  %shl.21 = shl i64 %zext.43, 32
  %or.21 = or i64 %shl.21, %zext.42
  %ptr_plus_imm.19 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %ptr_plus_imm.19 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.270 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.271 = bitcast ptr %R28 to ptr
  store float %.270, ptr %.271, align 4
  %.274 = load i32, ptr %R2, align 4
  %zext.44 = zext i32 %.274 to i64
  %zext.45 = zext i32 %R3.2 to i64
  %shl.22 = shl i64 %zext.45, 32
  %or.22 = or i64 %shl.22, %zext.44
  %ptr_plus_imm.20 = add i64 %or.22, 44
  %inttoptr_bytes.22 = inttoptr i64 %ptr_plus_imm.20 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.276 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.277 = bitcast ptr %R31 to ptr
  store float %.276, ptr %.277, align 4
  %zext.46 = zext i32 %UR4.2 to i64
  %zext.47 = zext i32 %UR5.2 to i64
  %shl.23 = shl i64 %zext.47, 32
  %or.23 = or i64 %shl.23, %zext.46
  %ptr_plus_imm.21 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %ptr_plus_imm.21 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.282 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.283 = bitcast ptr %R30 to ptr
  store float %.282, ptr %.283, align 4
  %.286 = load i32, ptr %R2, align 4
  %zext.48 = zext i32 %.286 to i64
  %zext.49 = zext i32 %R3.2 to i64
  %shl.24 = shl i64 %zext.49, 32
  %or.24 = or i64 %shl.24, %zext.48
  %ptr_plus_imm.22 = add i64 %or.24, 48
  %inttoptr_bytes.24 = inttoptr i64 %ptr_plus_imm.22 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.288 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.289 = bitcast ptr %R33 to ptr
  store float %.288, ptr %.289, align 4
  %zext.50 = zext i32 %UR4.2 to i64
  %zext.51 = zext i32 %UR5.2 to i64
  %shl.25 = shl i64 %zext.51, 32
  %or.25 = or i64 %shl.25, %zext.50
  %ptr_plus_imm.23 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %ptr_plus_imm.23 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.294 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.295 = bitcast ptr %R32 to ptr
  store float %.294, ptr %.295, align 4
  %.298 = load i32, ptr %R2, align 4
  %zext.52 = zext i32 %.298 to i64
  %zext.53 = zext i32 %R3.2 to i64
  %shl.26 = shl i64 %zext.53, 32
  %or.26 = or i64 %shl.26, %zext.52
  %ptr_plus_imm.24 = add i64 %or.26, 52
  %inttoptr_bytes.26 = inttoptr i64 %ptr_plus_imm.24 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.300 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.301 = bitcast ptr %R35 to ptr
  store float %.300, ptr %.301, align 4
  %zext.54 = zext i32 %UR4.2 to i64
  %zext.55 = zext i32 %UR5.2 to i64
  %shl.27 = shl i64 %zext.55, 32
  %or.27 = or i64 %shl.27, %zext.54
  %ptr_plus_imm.25 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %ptr_plus_imm.25 to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.306 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.307 = bitcast ptr %R34 to ptr
  store float %.306, ptr %.307, align 4
  %.310 = load i32, ptr %R2, align 4
  %zext.56 = zext i32 %.310 to i64
  %zext.57 = zext i32 %R3.2 to i64
  %shl.28 = shl i64 %zext.57, 32
  %or.28 = or i64 %shl.28, %zext.56
  %ptr_plus_imm.26 = add i64 %or.28, 56
  %inttoptr_bytes.28 = inttoptr i64 %ptr_plus_imm.26 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.312 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.313 = bitcast ptr %R37 to ptr
  store float %.312, ptr %.313, align 4
  %zext.58 = zext i32 %UR4.2 to i64
  %zext.59 = zext i32 %UR5.2 to i64
  %shl.29 = shl i64 %zext.59, 32
  %or.29 = or i64 %shl.29, %zext.58
  %ptr_plus_imm.27 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %ptr_plus_imm.27 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.318 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.319 = bitcast ptr %R36 to ptr
  store float %.318, ptr %.319, align 4
  %.322 = load i32, ptr %R2, align 4
  %zext.60 = zext i32 %.322 to i64
  %zext.61 = zext i32 %R3.2 to i64
  %shl.30 = shl i64 %zext.61, 32
  %or.30 = or i64 %shl.30, %zext.60
  %ptr_plus_imm.28 = add i64 %or.30, 60
  %inttoptr_bytes.30 = inttoptr i64 %ptr_plus_imm.28 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.324 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.325 = bitcast ptr %R39 to ptr
  store float %.324, ptr %.325, align 4
  %zext.62 = zext i32 %UR4.2 to i64
  %zext.63 = zext i32 %UR5.2 to i64
  %shl.31 = shl i64 %zext.63, 32
  %or.31 = or i64 %shl.31, %zext.62
  %ptr_plus_imm.29 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %ptr_plus_imm.29 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.330 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.331 = bitcast ptr %R38 to ptr
  store float %.330, ptr %.331, align 4
  %.335 = add i32 %R6.2, -16
  %.336 = add i32 %.335, 0
  %.340 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.341 = extractvalue { i32, i1 } %.340, 0
  %.342 = extractvalue { i32, i1 } %.340, 1
  %.343 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.341, i32 0)
  %.344 = extractvalue { i32, i1 } %.343, 0
  %.345 = extractvalue { i32, i1 } %.343, 1
  %.346 = or i1 %.342, %.345
  %.350 = load i32, ptr %R5, align 4
  %.351 = add i32 %.350, 16
  %.352 = add i32 %.351, 0
  store i32 %.352, ptr %R5, align 4
  %cmp.5 = icmp sgt i32 %.336, 12
  %.358 = and i1 %cmp.5, true
  %.364 = xor i1 true, true
  %.365 = zext i1 %.346 to i32
  %.366 = zext i1 %.364 to i32
  %add = add i32 0, %UR5.2
  %add.1 = add i32 %add, 0
  %add.2 = add i32 %add.1, %.365
  %add.3 = add i32 %add.2, %.366
  %.369 = load i32, ptr %R2, align 4
  %.370 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.369, i32 64)
  %.371 = extractvalue { i32, i1 } %.370, 0
  %.372 = extractvalue { i32, i1 } %.370, 1
  %.373 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.371, i32 0)
  %.374 = extractvalue { i32, i1 } %.373, 0
  %.375 = extractvalue { i32, i1 } %.373, 1
  %.376 = or i1 %.372, %.375
  store i32 %.374, ptr %R2, align 4
  %imad_mul.5 = mul i32 0, 0
  %imad_add.5 = add i32 %imad_mul.5, %R3.2
  %imad_ext4 = zext i1 %.376 to i32
  %imad_add_x = add i32 %imad_add.5, %imad_ext4
  %.384 = load float, ptr %R8, align 4
  %.385 = load float, ptr %R9, align 4
  %.386 = load float, ptr %R7, align 4
  %fmul = fmul float %.384, %.385
  %fadd = fadd float %fmul, %.386
  %.387 = bitcast ptr %R8 to ptr
  store float %fadd, ptr %.387, align 4
  %.390 = load float, ptr %R11, align 4
  %.391 = load float, ptr %R10, align 4
  %.392 = load float, ptr %R8, align 4
  %fmul.1 = fmul float %.390, %.391
  %fadd.1 = fadd float %fmul.1, %.392
  %.393 = bitcast ptr %R8 to ptr
  store float %fadd.1, ptr %.393, align 4
  %.396 = load float, ptr %R13, align 4
  %.397 = load float, ptr %R12, align 4
  %.398 = load float, ptr %R8, align 4
  %fmul.2 = fmul float %.396, %.397
  %fadd.2 = fadd float %fmul.2, %.398
  %.399 = bitcast ptr %R8 to ptr
  store float %fadd.2, ptr %.399, align 4
  %.402 = load float, ptr %R15, align 4
  %.403 = load float, ptr %R14, align 4
  %.404 = load float, ptr %R8, align 4
  %fmul.3 = fmul float %.402, %.403
  %fadd.3 = fadd float %fmul.3, %.404
  %.405 = bitcast ptr %R8 to ptr
  store float %fadd.3, ptr %.405, align 4
  %.408 = load float, ptr %R17, align 4
  %.409 = load float, ptr %R16, align 4
  %.410 = load float, ptr %R8, align 4
  %fmul.4 = fmul float %.408, %.409
  %fadd.4 = fadd float %fmul.4, %.410
  %.411 = bitcast ptr %R8 to ptr
  store float %fadd.4, ptr %.411, align 4
  %.414 = load float, ptr %R19, align 4
  %.415 = load float, ptr %R18, align 4
  %.416 = load float, ptr %R8, align 4
  %fmul.5 = fmul float %.414, %.415
  %fadd.5 = fadd float %fmul.5, %.416
  %.417 = bitcast ptr %R8 to ptr
  store float %fadd.5, ptr %.417, align 4
  %.420 = load float, ptr %R21, align 4
  %.421 = load float, ptr %R20, align 4
  %.422 = load float, ptr %R8, align 4
  %fmul.6 = fmul float %.420, %.421
  %fadd.6 = fadd float %fmul.6, %.422
  %.423 = bitcast ptr %R8 to ptr
  store float %fadd.6, ptr %.423, align 4
  %.426 = load float, ptr %R23, align 4
  %.427 = load float, ptr %R22, align 4
  %.428 = load float, ptr %R8, align 4
  %fmul.7 = fmul float %.426, %.427
  %fadd.7 = fadd float %fmul.7, %.428
  %.429 = bitcast ptr %R8 to ptr
  store float %fadd.7, ptr %.429, align 4
  %.432 = load float, ptr %R25, align 4
  %.433 = load float, ptr %R24, align 4
  %.434 = load float, ptr %R8, align 4
  %fmul.8 = fmul float %.432, %.433
  %fadd.8 = fadd float %fmul.8, %.434
  %.435 = bitcast ptr %R8 to ptr
  store float %fadd.8, ptr %.435, align 4
  %.438 = load float, ptr %R27, align 4
  %.439 = load float, ptr %R26, align 4
  %.440 = load float, ptr %R8, align 4
  %fmul.9 = fmul float %.438, %.439
  %fadd.9 = fadd float %fmul.9, %.440
  %.441 = bitcast ptr %R8 to ptr
  store float %fadd.9, ptr %.441, align 4
  %.444 = load float, ptr %R29, align 4
  %.445 = load float, ptr %R28, align 4
  %.446 = load float, ptr %R8, align 4
  %fmul.10 = fmul float %.444, %.445
  %fadd.10 = fadd float %fmul.10, %.446
  %.447 = bitcast ptr %R8 to ptr
  store float %fadd.10, ptr %.447, align 4
  %.450 = load float, ptr %R31, align 4
  %.451 = load float, ptr %R30, align 4
  %.452 = load float, ptr %R8, align 4
  %fmul.11 = fmul float %.450, %.451
  %fadd.11 = fadd float %fmul.11, %.452
  %.453 = bitcast ptr %R8 to ptr
  store float %fadd.11, ptr %.453, align 4
  %.456 = load float, ptr %R33, align 4
  %.457 = load float, ptr %R32, align 4
  %.458 = load float, ptr %R8, align 4
  %fmul.12 = fmul float %.456, %.457
  %fadd.12 = fadd float %fmul.12, %.458
  %.459 = bitcast ptr %R8 to ptr
  store float %fadd.12, ptr %.459, align 4
  %.462 = load float, ptr %R35, align 4
  %.463 = load float, ptr %R34, align 4
  %.464 = load float, ptr %R8, align 4
  %fmul.13 = fmul float %.462, %.463
  %fadd.13 = fadd float %fmul.13, %.464
  %.465 = bitcast ptr %R8 to ptr
  store float %fadd.13, ptr %.465, align 4
  %.468 = load float, ptr %R37, align 4
  %.469 = load float, ptr %R36, align 4
  %.470 = load float, ptr %R8, align 4
  %fmul.14 = fmul float %.468, %.469
  %fadd.14 = fadd float %fmul.14, %.470
  %.471 = bitcast ptr %R8 to ptr
  store float %fadd.14, ptr %.471, align 4
  %.474 = load float, ptr %R39, align 4
  %.475 = load float, ptr %R38, align 4
  %.476 = load float, ptr %R8, align 4
  %fmul.15 = fmul float %.474, %.475
  %fadd.15 = fadd float %fmul.15, %.476
  %.477 = bitcast ptr %R7 to ptr
  store float %fadd.15, ptr %.477, align 4
  %.481 = icmp eq i1 %.358, true
  br i1 %.481, label %.L_x_12, label %.L_x_11.loopexit

.L_x_11.loopexit:                                 ; preds = %.L_x_12
  br label %.L_x_11

.L_x_11:                                          ; preds = %.L_x_11.loopexit, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190
  %UR4.1 = phi i32 [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %.344, %.L_x_11.loopexit ]
  %R6.1 = phi i32 [ %.83, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %.336, %.L_x_11.loopexit ]
  %UR5.1 = phi i32 [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %add.3, %.L_x_11.loopexit ]
  %R3.1 = phi i32 [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %imad_add_x, %.L_x_11.loopexit ]
  %cmp.6 = icmp sgt i32 %R6.1, 4
  %.487 = and i1 %cmp.6, true
  %.492 = icmp ne i1 %.487, true
  br i1 %.492, label %.L_x_13, label %.L_x_11_split_0x0570

.L_x_11_split_0x0570:                             ; preds = %.L_x_11
  %.495 = load i32, ptr %R2, align 4
  %zext.64 = zext i32 %.495 to i64
  %zext.65 = zext i32 %R3.1 to i64
  %shl.32 = shl i64 %zext.65, 32
  %or.32 = or i64 %shl.32, %zext.64
  %inttoptr_bytes.32 = inttoptr i64 %or.32 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.497 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.498 = bitcast ptr %R8 to ptr
  store float %.497, ptr %.498, align 4
  %zext.66 = zext i32 %UR4.1 to i64
  %zext.67 = zext i32 %UR5.1 to i64
  %shl.33 = shl i64 %zext.67, 32
  %or.33 = or i64 %shl.33, %zext.66
  %inttoptr_bytes.33 = inttoptr i64 %or.33 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.503 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.504 = bitcast ptr %R9 to ptr
  store float %.503, ptr %.504, align 4
  %.507 = load i32, ptr %R2, align 4
  %zext.68 = zext i32 %.507 to i64
  %zext.69 = zext i32 %R3.1 to i64
  %shl.34 = shl i64 %zext.69, 32
  %or.34 = or i64 %shl.34, %zext.68
  %ptr_plus_imm.30 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.30 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.509 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.510 = bitcast ptr %R11 to ptr
  store float %.509, ptr %.510, align 4
  %zext.70 = zext i32 %UR4.1 to i64
  %zext.71 = zext i32 %UR5.1 to i64
  %shl.35 = shl i64 %zext.71, 32
  %or.35 = or i64 %shl.35, %zext.70
  %ptr_plus_imm.31 = add i64 %or.35, 4
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.31 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.515 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.516 = bitcast ptr %R10 to ptr
  store float %.515, ptr %.516, align 4
  %.519 = load i32, ptr %R2, align 4
  %zext.72 = zext i32 %.519 to i64
  %zext.73 = zext i32 %R3.1 to i64
  %shl.36 = shl i64 %zext.73, 32
  %or.36 = or i64 %shl.36, %zext.72
  %ptr_plus_imm.32 = add i64 %or.36, 8
  %inttoptr_bytes.36 = inttoptr i64 %ptr_plus_imm.32 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.521 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.522 = bitcast ptr %R13 to ptr
  store float %.521, ptr %.522, align 4
  %zext.74 = zext i32 %UR4.1 to i64
  %zext.75 = zext i32 %UR5.1 to i64
  %shl.37 = shl i64 %zext.75, 32
  %or.37 = or i64 %shl.37, %zext.74
  %ptr_plus_imm.33 = add i64 %or.37, 8
  %inttoptr_bytes.37 = inttoptr i64 %ptr_plus_imm.33 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.527 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.528 = bitcast ptr %R12 to ptr
  store float %.527, ptr %.528, align 4
  %.531 = load i32, ptr %R2, align 4
  %zext.76 = zext i32 %.531 to i64
  %zext.77 = zext i32 %R3.1 to i64
  %shl.38 = shl i64 %zext.77, 32
  %or.38 = or i64 %shl.38, %zext.76
  %ptr_plus_imm.34 = add i64 %or.38, 12
  %inttoptr_bytes.38 = inttoptr i64 %ptr_plus_imm.34 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.533 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.534 = bitcast ptr %R15 to ptr
  store float %.533, ptr %.534, align 4
  %zext.78 = zext i32 %UR4.1 to i64
  %zext.79 = zext i32 %UR5.1 to i64
  %shl.39 = shl i64 %zext.79, 32
  %or.39 = or i64 %shl.39, %zext.78
  %ptr_plus_imm.35 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %ptr_plus_imm.35 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.539 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.540 = bitcast ptr %R14 to ptr
  store float %.539, ptr %.540, align 4
  %.543 = load i32, ptr %R2, align 4
  %zext.80 = zext i32 %.543 to i64
  %zext.81 = zext i32 %R3.1 to i64
  %shl.40 = shl i64 %zext.81, 32
  %or.40 = or i64 %shl.40, %zext.80
  %ptr_plus_imm.36 = add i64 %or.40, 16
  %inttoptr_bytes.40 = inttoptr i64 %ptr_plus_imm.36 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.545 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.546 = bitcast ptr %R17 to ptr
  store float %.545, ptr %.546, align 4
  %zext.82 = zext i32 %UR4.1 to i64
  %zext.83 = zext i32 %UR5.1 to i64
  %shl.41 = shl i64 %zext.83, 32
  %or.41 = or i64 %shl.41, %zext.82
  %ptr_plus_imm.37 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %ptr_plus_imm.37 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.551 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.552 = bitcast ptr %R16 to ptr
  store float %.551, ptr %.552, align 4
  %.555 = load i32, ptr %R2, align 4
  %zext.84 = zext i32 %.555 to i64
  %zext.85 = zext i32 %R3.1 to i64
  %shl.42 = shl i64 %zext.85, 32
  %or.42 = or i64 %shl.42, %zext.84
  %ptr_plus_imm.38 = add i64 %or.42, 20
  %inttoptr_bytes.42 = inttoptr i64 %ptr_plus_imm.38 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.557 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.558 = bitcast ptr %R19 to ptr
  store float %.557, ptr %.558, align 4
  %zext.86 = zext i32 %UR4.1 to i64
  %zext.87 = zext i32 %UR5.1 to i64
  %shl.43 = shl i64 %zext.87, 32
  %or.43 = or i64 %shl.43, %zext.86
  %ptr_plus_imm.39 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %ptr_plus_imm.39 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.563 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.564 = bitcast ptr %R18 to ptr
  store float %.563, ptr %.564, align 4
  %.567 = load i32, ptr %R2, align 4
  %zext.88 = zext i32 %.567 to i64
  %zext.89 = zext i32 %R3.1 to i64
  %shl.44 = shl i64 %zext.89, 32
  %or.44 = or i64 %shl.44, %zext.88
  %ptr_plus_imm.40 = add i64 %or.44, 24
  %inttoptr_bytes.44 = inttoptr i64 %ptr_plus_imm.40 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.569 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.570 = bitcast ptr %R21 to ptr
  store float %.569, ptr %.570, align 4
  %zext.90 = zext i32 %UR4.1 to i64
  %zext.91 = zext i32 %UR5.1 to i64
  %shl.45 = shl i64 %zext.91, 32
  %or.45 = or i64 %shl.45, %zext.90
  %ptr_plus_imm.41 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %ptr_plus_imm.41 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.575 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.576 = bitcast ptr %R20 to ptr
  store float %.575, ptr %.576, align 4
  %.579 = load i32, ptr %R2, align 4
  %zext.92 = zext i32 %.579 to i64
  %zext.93 = zext i32 %R3.1 to i64
  %shl.46 = shl i64 %zext.93, 32
  %or.46 = or i64 %shl.46, %zext.92
  %ptr_plus_imm.42 = add i64 %or.46, 28
  %inttoptr_bytes.46 = inttoptr i64 %ptr_plus_imm.42 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.581 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.582 = bitcast ptr %R23 to ptr
  store float %.581, ptr %.582, align 4
  %zext.94 = zext i32 %UR4.1 to i64
  %zext.95 = zext i32 %UR5.1 to i64
  %shl.47 = shl i64 %zext.95, 32
  %or.47 = or i64 %shl.47, %zext.94
  %ptr_plus_imm.43 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %ptr_plus_imm.43 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.587 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.588 = bitcast ptr %R22 to ptr
  store float %.587, ptr %.588, align 4
  %.592 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.593 = extractvalue { i32, i1 } %.592, 0
  %.594 = extractvalue { i32, i1 } %.592, 1
  %.595 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.593, i32 0)
  %.596 = extractvalue { i32, i1 } %.595, 0
  %.597 = extractvalue { i32, i1 } %.595, 1
  %.598 = or i1 %.594, %.597
  %.606 = load i32, ptr %R5, align 4
  %.607 = add i32 %.606, 8
  %.608 = add i32 %.607, 0
  store i32 %.608, ptr %R5, align 4
  %.613 = xor i1 true, true
  %.614 = zext i1 %.598 to i32
  %.615 = zext i1 %.613 to i32
  %add.4 = add i32 0, %UR5.1
  %add.5 = add i32 %add.4, 0
  %add.6 = add i32 %add.5, %.614
  %add.7 = add i32 %add.6, %.615
  %.618 = load i32, ptr %R2, align 4
  %.619 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.618, i32 32)
  %.620 = extractvalue { i32, i1 } %.619, 0
  %.621 = extractvalue { i32, i1 } %.619, 1
  %.622 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.620, i32 0)
  %.623 = extractvalue { i32, i1 } %.622, 0
  %.624 = extractvalue { i32, i1 } %.622, 1
  %.625 = or i1 %.621, %.624
  store i32 %.623, ptr %R2, align 4
  %.630 = add i32 %R6.1, -8
  %.631 = add i32 %.630, 0
  %.636 = xor i1 true, true
  %.637 = zext i1 %.625 to i32
  %.638 = zext i1 %.636 to i32
  %add.8 = add i32 0, %R3.1
  %add.9 = add i32 %add.8, 0
  %add.10 = add i32 %add.9, %.637
  %add.11 = add i32 %add.10, %.638
  %.641 = load float, ptr %R8, align 4
  %.642 = load float, ptr %R9, align 4
  %.643 = load float, ptr %R7, align 4
  %fmul.16 = fmul float %.641, %.642
  %fadd.16 = fadd float %fmul.16, %.643
  %.644 = bitcast ptr %R8 to ptr
  store float %fadd.16, ptr %.644, align 4
  %.647 = load float, ptr %R11, align 4
  %.648 = load float, ptr %R10, align 4
  %.649 = load float, ptr %R8, align 4
  %fmul.17 = fmul float %.647, %.648
  %fadd.17 = fadd float %fmul.17, %.649
  %.650 = bitcast ptr %R8 to ptr
  store float %fadd.17, ptr %.650, align 4
  %.653 = load float, ptr %R13, align 4
  %.654 = load float, ptr %R12, align 4
  %.655 = load float, ptr %R8, align 4
  %fmul.18 = fmul float %.653, %.654
  %fadd.18 = fadd float %fmul.18, %.655
  %.656 = bitcast ptr %R8 to ptr
  store float %fadd.18, ptr %.656, align 4
  %.659 = load float, ptr %R15, align 4
  %.660 = load float, ptr %R14, align 4
  %.661 = load float, ptr %R8, align 4
  %fmul.19 = fmul float %.659, %.660
  %fadd.19 = fadd float %fmul.19, %.661
  %.662 = bitcast ptr %R8 to ptr
  store float %fadd.19, ptr %.662, align 4
  %.665 = load float, ptr %R17, align 4
  %.666 = load float, ptr %R16, align 4
  %.667 = load float, ptr %R8, align 4
  %fmul.20 = fmul float %.665, %.666
  %fadd.20 = fadd float %fmul.20, %.667
  %.668 = bitcast ptr %R8 to ptr
  store float %fadd.20, ptr %.668, align 4
  %.671 = load float, ptr %R19, align 4
  %.672 = load float, ptr %R18, align 4
  %.673 = load float, ptr %R8, align 4
  %fmul.21 = fmul float %.671, %.672
  %fadd.21 = fadd float %fmul.21, %.673
  %.674 = bitcast ptr %R8 to ptr
  store float %fadd.21, ptr %.674, align 4
  %.677 = load float, ptr %R21, align 4
  %.678 = load float, ptr %R20, align 4
  %.679 = load float, ptr %R8, align 4
  %fmul.22 = fmul float %.677, %.678
  %fadd.22 = fadd float %fmul.22, %.679
  %.680 = bitcast ptr %R8 to ptr
  store float %fadd.22, ptr %.680, align 4
  %.683 = load float, ptr %R23, align 4
  %.684 = load float, ptr %R22, align 4
  %.685 = load float, ptr %R8, align 4
  %fmul.23 = fmul float %.683, %.684
  %fadd.23 = fadd float %fmul.23, %.685
  %.686 = bitcast ptr %R7 to ptr
  store float %fadd.23, ptr %.686, align 4
  br label %.L_x_13

.L_x_13:                                          ; preds = %.L_x_11_split_0x0570, %.L_x_11
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_11 ], [ %.596, %.L_x_11_split_0x0570 ]
  %R6.3 = phi i32 [ %R6.1, %.L_x_11 ], [ %.631, %.L_x_11_split_0x0570 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_11 ], [ %add.7, %.L_x_11_split_0x0570 ]
  %R3.3 = phi i32 [ %R3.1, %.L_x_11 ], [ %add.11, %.L_x_11_split_0x0570 ]
  %cmp.7 = icmp ne i32 %R6.3, 0
  %.693 = or i1 %cmp.7, %.100
  %.698 = icmp ne i1 %.693, true
  br i1 %.698, label %.L_x_9, label %.L_x_10.preheader

.L_x_10.preheader:                                ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0100, %.L_x_13
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_13 ], [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %R6.0.ph = phi i32 [ %R6.3, %.L_x_13 ], [ %.83, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_13 ], [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %R3.0.ph = phi i32 [ %R3.3, %.L_x_13 ], [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  br label %.L_x_10

.L_x_10:                                          ; preds = %.L_x_10.preheader, %.L_x_10
  %UR4.0 = phi i32 [ %.759, %.L_x_10 ], [ %UR4.0.ph, %.L_x_10.preheader ]
  %R6.0 = phi i32 [ %.751, %.L_x_10 ], [ %R6.0.ph, %.L_x_10.preheader ]
  %UR5.0 = phi i32 [ %add.15, %.L_x_10 ], [ %UR5.0.ph, %.L_x_10.preheader ]
  %R3.0 = phi i32 [ %.817, %.L_x_10 ], [ %R3.0.ph, %.L_x_10.preheader ]
  %.701 = load i32, ptr %R2, align 4
  %zext.96 = zext i32 %.701 to i64
  %zext.97 = zext i32 %R3.0 to i64
  %shl.48 = shl i64 %zext.97, 32
  %or.48 = or i64 %shl.48, %zext.96
  %inttoptr_bytes.48 = inttoptr i64 %or.48 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.703 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.704 = bitcast ptr %R8 to ptr
  store float %.703, ptr %.704, align 4
  %zext.98 = zext i32 %UR4.0 to i64
  %zext.99 = zext i32 %UR5.0 to i64
  %shl.49 = shl i64 %zext.99, 32
  %or.49 = or i64 %shl.49, %zext.98
  %inttoptr_bytes.49 = inttoptr i64 %or.49 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.709 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.710 = bitcast ptr %R9 to ptr
  store float %.709, ptr %.710, align 4
  %.713 = load i32, ptr %R2, align 4
  %zext.100 = zext i32 %.713 to i64
  %zext.101 = zext i32 %R3.0 to i64
  %shl.50 = shl i64 %zext.101, 32
  %or.50 = or i64 %shl.50, %zext.100
  %ptr_plus_imm.44 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %ptr_plus_imm.44 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.715 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.716 = bitcast ptr %R11 to ptr
  store float %.715, ptr %.716, align 4
  %zext.102 = zext i32 %UR4.0 to i64
  %zext.103 = zext i32 %UR5.0 to i64
  %shl.51 = shl i64 %zext.103, 32
  %or.51 = or i64 %shl.51, %zext.102
  %ptr_plus_imm.45 = add i64 %or.51, 4
  %inttoptr_bytes.51 = inttoptr i64 %ptr_plus_imm.45 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.721 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.722 = bitcast ptr %R10 to ptr
  store float %.721, ptr %.722, align 4
  %.725 = load i32, ptr %R2, align 4
  %zext.104 = zext i32 %.725 to i64
  %zext.105 = zext i32 %R3.0 to i64
  %shl.52 = shl i64 %zext.105, 32
  %or.52 = or i64 %shl.52, %zext.104
  %ptr_plus_imm.46 = add i64 %or.52, 8
  %inttoptr_bytes.52 = inttoptr i64 %ptr_plus_imm.46 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.727 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.728 = bitcast ptr %R13 to ptr
  store float %.727, ptr %.728, align 4
  %zext.106 = zext i32 %UR4.0 to i64
  %zext.107 = zext i32 %UR5.0 to i64
  %shl.53 = shl i64 %zext.107, 32
  %or.53 = or i64 %shl.53, %zext.106
  %ptr_plus_imm.47 = add i64 %or.53, 8
  %inttoptr_bytes.53 = inttoptr i64 %ptr_plus_imm.47 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.733 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.734 = bitcast ptr %R12 to ptr
  store float %.733, ptr %.734, align 4
  %.737 = load i32, ptr %R2, align 4
  %zext.108 = zext i32 %.737 to i64
  %zext.109 = zext i32 %R3.0 to i64
  %shl.54 = shl i64 %zext.109, 32
  %or.54 = or i64 %shl.54, %zext.108
  %ptr_plus_imm.48 = add i64 %or.54, 12
  %inttoptr_bytes.54 = inttoptr i64 %ptr_plus_imm.48 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.739 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.740 = bitcast ptr %R15 to ptr
  store float %.739, ptr %.740, align 4
  %zext.110 = zext i32 %UR4.0 to i64
  %zext.111 = zext i32 %UR5.0 to i64
  %shl.55 = shl i64 %zext.111, 32
  %or.55 = or i64 %shl.55, %zext.110
  %ptr_plus_imm.49 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %ptr_plus_imm.49 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.745 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.746 = bitcast ptr %R14 to ptr
  store float %.745, ptr %.746, align 4
  %.750 = add i32 %R6.0, -4
  %.751 = add i32 %.750, 0
  %.755 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.756 = extractvalue { i32, i1 } %.755, 0
  %.757 = extractvalue { i32, i1 } %.755, 1
  %.758 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.756, i32 0)
  %.759 = extractvalue { i32, i1 } %.758, 0
  %.760 = extractvalue { i32, i1 } %.758, 1
  %.761 = or i1 %.757, %.760
  %.765 = load i32, ptr %R5, align 4
  %.766 = add i32 %.765, 4
  %.767 = add i32 %.766, 0
  store i32 %.767, ptr %R5, align 4
  %cmp.8 = icmp ne i32 %.751, 0
  %.773 = and i1 %cmp.8, true
  %.779 = xor i1 true, true
  %.780 = zext i1 %.761 to i32
  %.781 = zext i1 %.779 to i32
  %add.12 = add i32 0, %UR5.0
  %add.13 = add i32 %add.12, 0
  %add.14 = add i32 %add.13, %.780
  %add.15 = add i32 %add.14, %.781
  %.784 = load float, ptr %R8, align 4
  %.785 = load float, ptr %R9, align 4
  %.786 = load float, ptr %R7, align 4
  %fmul.24 = fmul float %.784, %.785
  %fadd.24 = fadd float %fmul.24, %.786
  %.787 = bitcast ptr %R8 to ptr
  store float %fadd.24, ptr %.787, align 4
  %.790 = load i32, ptr %R2, align 4
  %.791 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.790, i32 16)
  %.792 = extractvalue { i32, i1 } %.791, 0
  %.793 = extractvalue { i32, i1 } %.791, 1
  %.794 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.792, i32 0)
  %.795 = extractvalue { i32, i1 } %.794, 0
  %.796 = extractvalue { i32, i1 } %.794, 1
  %.797 = or i1 %.793, %.796
  store i32 %.795, ptr %R9, align 4
  %.801 = load i32, ptr %R9, align 4
  %imad_mul.6 = mul i32 0, 0
  %imad_add.6 = add i32 %imad_mul.6, %.801
  store i32 %imad_add.6, ptr %R2, align 4
  %.804 = load float, ptr %R11, align 4
  %.805 = load float, ptr %R10, align 4
  %.806 = load float, ptr %R8, align 4
  %fmul.25 = fmul float %.804, %.805
  %fadd.25 = fadd float %fmul.25, %.806
  %.807 = bitcast ptr %R8 to ptr
  store float %fadd.25, ptr %.807, align 4
  %.812 = xor i1 true, true
  %.813 = zext i1 %.797 to i32
  %.814 = zext i1 %.812 to i32
  %add.16 = add i32 0, %R3.0
  %add.17 = add i32 %add.16, 0
  %add.18 = add i32 %add.17, %.813
  %add.19 = add i32 %add.18, %.814
  store i32 %add.19, ptr %R10, align 4
  %.817 = load i32, ptr %R10, align 4
  %.820 = load float, ptr %R13, align 4
  %.821 = load float, ptr %R12, align 4
  %.822 = load float, ptr %R8, align 4
  %fmul.26 = fmul float %.820, %.821
  %fadd.26 = fadd float %fmul.26, %.822
  %.823 = bitcast ptr %R8 to ptr
  store float %fadd.26, ptr %.823, align 4
  %.826 = load float, ptr %R15, align 4
  %.827 = load float, ptr %R14, align 4
  %.828 = load float, ptr %R8, align 4
  %fmul.27 = fmul float %.826, %.827
  %fadd.27 = fadd float %fmul.27, %.828
  %.829 = bitcast ptr %R7 to ptr
  store float %fadd.27, ptr %.829, align 4
  %.833 = icmp eq i1 %.773, true
  br i1 %.833, label %.L_x_10, label %.L_x_9.loopexit

.L_x_9.loopexit:                                  ; preds = %.L_x_10
  br label %.L_x_9

.L_x_9:                                           ; preds = %.L_x_9.loopexit, %.L_x_13, %.text._Z8fc_layerPfS_S_S_ii_split_0x00a0
  %cmp.9 = icmp ne i32 %.59, 0
  %.839 = and i1 %cmp.9, true
  %.844 = icmp ne i1 %.839, true
  br i1 %.844, label %.L_x_8, label %.L_x_9_split_0x0900

.L_x_9_split_0x0900:                              ; preds = %.L_x_9
  store i32 4, ptr %R8, align 4
  %.850 = load i32, ptr %R5, align 4
  %imad_mul.7 = mul i32 %imad_add, %Arg_4
  %imad_add.7 = add i32 %imad_mul.7, %.850
  store i32 %imad_add.7, ptr %R2, align 4
  %.853 = load i32, ptr %R2, align 4
  %.854 = load i32, ptr %R8, align 4
  %imad_ext1.1 = zext i32 %.853 to i64
  %imad_ext2.1 = zext i32 %.854 to i64
  %imad_mul.8 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.855 = ptrtoint ptr %Arg_1 to i64
  %imad_add.8 = add i64 %imad_mul.8, %.855
  %.856 = and i64 %imad_add.8, -4294967296
  %.857 = lshr i64 %.856, 32
  %trunc32.4 = trunc i64 %.857 to i32
  %trunc32.5 = trunc i64 %imad_add.8 to i32
  store i32 %trunc32.5, ptr %R2, align 4
  %.861 = load i32, ptr %R5, align 4
  %.862 = load i32, ptr %R8, align 4
  %imad_ext1.2 = zext i32 %.861 to i64
  %imad_ext2.2 = zext i32 %.862 to i64
  %imad_mul.9 = mul i64 %imad_ext1.2, %imad_ext2.2
  %.863 = ptrtoint ptr %Arg_0 to i64
  %imad_add.9 = add i64 %imad_mul.9, %.863
  %.864 = and i64 %imad_add.9, -4294967296
  %.865 = lshr i64 %.864, 32
  %trunc32.6 = trunc i64 %.865 to i32
  %trunc32.7 = trunc i64 %imad_add.9 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  store i32 %trunc32.6, ptr %R9, align 4
  %.869 = load i32, ptr %R2, align 4
  br label %.L_x_14

.L_x_14:                                          ; preds = %.L_x_14, %.L_x_9_split_0x0900
  %R6.4 = phi i32 [ %.869, %.L_x_9_split_0x0900 ], [ %.905, %.L_x_14 ]
  %R4.0 = phi i32 [ %.59, %.L_x_9_split_0x0900 ], [ %.890, %.L_x_14 ]
  %R3.4 = phi i32 [ %trunc32.4, %.L_x_9_split_0x0900 ], [ %add.23, %.L_x_14 ]
  %imad_mul.10 = mul i32 0, 0
  %imad_add.10 = add i32 %imad_mul.10, %R6.4
  store i32 %imad_add.10, ptr %R2, align 4
  %.876 = load i32, ptr %R8, align 4
  %zext.112 = zext i32 %.876 to i64
  %.877 = load i32, ptr %R9, align 4
  %zext.113 = zext i32 %.877 to i64
  %shl.56 = shl i64 %zext.113, 32
  %or.56 = or i64 %shl.56, %zext.112
  %inttoptr_bytes.56 = inttoptr i64 %or.56 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.878 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.879 = bitcast ptr %R5 to ptr
  store float %.878, ptr %.879, align 4
  %.882 = load i32, ptr %R2, align 4
  %zext.114 = zext i32 %.882 to i64
  %zext.115 = zext i32 %R3.4 to i64
  %shl.57 = shl i64 %zext.115, 32
  %or.57 = or i64 %shl.57, %zext.114
  %inttoptr_bytes.57 = inttoptr i64 %or.57 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.884 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.885 = bitcast ptr %R2 to ptr
  store float %.884, ptr %.885, align 4
  %.889 = add i32 %R4.0, -1
  %.890 = add i32 %.889, 0
  %cmp.10 = icmp ne i32 %.890, 0
  %.896 = and i1 %cmp.10, true
  %.901 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R6.4, i32 4)
  %.902 = extractvalue { i32, i1 } %.901, 0
  %.903 = extractvalue { i32, i1 } %.901, 1
  %.904 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.902, i32 0)
  %.905 = extractvalue { i32, i1 } %.904, 0
  %.906 = extractvalue { i32, i1 } %.904, 1
  %.907 = or i1 %.903, %.906
  %.911 = load i32, ptr %R8, align 4
  %.912 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.911, i32 4)
  %.913 = extractvalue { i32, i1 } %.912, 0
  %.914 = extractvalue { i32, i1 } %.912, 1
  %.915 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.913, i32 0)
  %.916 = extractvalue { i32, i1 } %.915, 0
  %.917 = extractvalue { i32, i1 } %.915, 1
  %.918 = or i1 %.914, %.917
  store i32 %.916, ptr %R8, align 4
  %.924 = xor i1 true, true
  %.925 = zext i1 %.907 to i32
  %.926 = zext i1 %.924 to i32
  %add.20 = add i32 0, %R3.4
  %add.21 = add i32 %add.20, 0
  %add.22 = add i32 %add.21, %.925
  %add.23 = add i32 %add.22, %.926
  %.929 = load i32, ptr %R9, align 4
  %.931 = xor i1 true, true
  %.932 = zext i1 %.918 to i32
  %.933 = zext i1 %.931 to i32
  %add.24 = add i32 0, %.929
  %add.25 = add i32 %add.24, 0
  %add.26 = add i32 %add.25, %.932
  %add.27 = add i32 %add.26, %.933
  store i32 %add.27, ptr %R9, align 4
  %.936 = load float, ptr %R2, align 4
  %.937 = load float, ptr %R5, align 4
  %.938 = load float, ptr %R7, align 4
  %fmul.28 = fmul float %.936, %.937
  %fadd.28 = fadd float %fmul.28, %.938
  %.939 = bitcast ptr %R7 to ptr
  store float %fadd.28, ptr %.939, align 4
  %.943 = icmp eq i1 %.896, true
  br i1 %.943, label %.L_x_14, label %.L_x_8.loopexit

.L_x_8.loopexit:                                  ; preds = %.L_x_14
  br label %.L_x_8

.L_x_8:                                           ; preds = %.L_x_8.loopexit, %.L_x_9, %.text._Z8fc_layerPfS_S_S_ii_split_0x0060
  store i32 4, ptr %R5, align 4
  %.949 = load i32, ptr %R5, align 4
  %imad_ext1.3 = zext i32 %imad_add to i64
  %imad_ext2.3 = zext i32 %.949 to i64
  %imad_mul.11 = mul i64 %imad_ext1.3, %imad_ext2.3
  %.950 = ptrtoint ptr %Arg_2 to i64
  %imad_add.11 = add i64 %imad_mul.11, %.950
  %.951 = and i64 %imad_add.11, -4294967296
  %.952 = lshr i64 %.951, 32
  %trunc32.8 = trunc i64 %.952 to i32
  %trunc32.9 = trunc i64 %imad_add.11 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  %.956 = load i32, ptr %R2, align 4
  %zext.116 = zext i32 %.956 to i64
  %zext.117 = zext i32 %trunc32.8 to i64
  %shl.58 = shl i64 %zext.117, 32
  %or.58 = or i64 %shl.58, %zext.116
  %inttoptr_bytes.58 = inttoptr i64 %or.58 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.958 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.959 = bitcast ptr %R2 to ptr
  store float %.958, ptr %.959, align 4
  %.963 = load i32, ptr %R5, align 4
  %imad_ext1.4 = zext i32 %imad_add to i64
  %imad_ext2.4 = zext i32 %.963 to i64
  %imad_mul.12 = mul i64 %imad_ext1.4, %imad_ext2.4
  %.964 = ptrtoint ptr %Arg_3 to i64
  %imad_add.12 = add i64 %imad_mul.12, %.964
  %.965 = and i64 %imad_add.12, -4294967296
  %.966 = lshr i64 %.965, 32
  %trunc32.10 = trunc i64 %.966 to i32
  %trunc32.11 = trunc i64 %imad_add.12 to i32
  store i32 %trunc32.10, ptr %R5, align 4
  %.970 = load float, ptr %R2, align 4
  %.971 = load float, ptr %R7, align 4
  %fadd.29 = fadd float %.970, %.971
  %.972 = bitcast ptr %R7 to ptr
  store float %fadd.29, ptr %.972, align 4
  %.975 = load float, ptr %R7, align 4
  %zext.118 = zext i32 %trunc32.11 to i64
  %.977 = load i32, ptr %R5, align 4
  %zext.119 = zext i32 %.977 to i64
  %shl.59 = shl i64 %zext.119, 32
  %or.59 = or i64 %shl.59, %zext.118
  %inttoptr_bytes.59 = inttoptr i64 %or.59 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.975, ptr addrspace(1) %ptr_cast_for_access.59, align 4
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
  %.37 = and i1 %cmp, true
  %.41 = load float, ptr %R0, align 4
  %.42 = fdiv float 1.000000e+00, %.41
  %.43 = bitcast ptr %R0 to ptr
  store float %.42, ptr %.43, align 4
  %.46 = load i32, ptr %R0, align 4
  %.47 = add i32 %.46, 268435454
  %.48 = add i32 %.47, 0
  store i32 %.48, ptr %R2, align 4
  %.51 = load float, ptr %R2, align 4
  %.52 = bitcast ptr %R3 to ptr
  store float %.51, ptr %.52, align 4
  %imad_mul.1 = mul i32 0, 0
  %imad_add.1 = add i32 %imad_mul.1, 0
  store i32 %imad_add.1, ptr %R2, align 4
  %.57 = load i32, ptr %R3, align 4
  %.58 = sub i32 0, %.57
  %imad_mul.2 = mul i32 0, 0
  %imad_add.2 = add i32 %imad_mul.2, %.58
  store i32 %imad_add.2, ptr %R4, align 4
  %.61 = load i32, ptr %R4, align 4
  %imad_mul.3 = mul i32 %.61, %iabs
  %imad_add.3 = add i32 %imad_mul.3, 0
  %.65 = icmp sge i32 %Arg_2, 0
  %.66 = sub i32 0, %Arg_2
  %iabs.1 = select i1 %.65, i32 %Arg_2, i32 %.66
  store i32 %iabs.1, ptr %R4, align 4
  %.69 = load i32, ptr %R3, align 4
  %.71 = load i32, ptr %R2, align 4
  %imad_ext1 = zext i32 %.69 to i64
  %imad_ext2 = zext i32 %imad_add.3 to i64
  %imad_mul.4 = mul i64 %imad_ext1, %imad_ext2
  %imad_ext3 = zext i32 %.71 to i64
  %imad_add.4 = add i64 %imad_mul.4, %imad_ext3
  %imad_hi_shift = lshr i64 %imad_add.4, 32
  %imad_hi_trunc = trunc i64 %imad_hi_shift to i32
  store i32 %imad_hi_trunc, ptr %R3, align 4
  %nvvm_ctaid_x = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  store i32 %nvvm_ctaid_x, ptr %R2, align 4
  %.76 = load i32, ptr %R3, align 4
  %.77 = load i32, ptr %R4, align 4
  %imad_ext1.1 = zext i32 %.76 to i64
  %imad_ext2.1 = zext i32 %.77 to i64
  %imad_mul.5 = mul i64 %imad_ext1.1, %imad_ext2.1
  %imad_ext3.1 = zext i32 0 to i64
  %imad_add.5 = add i64 %imad_mul.5, %imad_ext3.1
  %imad_hi_shift.1 = lshr i64 %imad_add.5, 32
  %imad_hi_trunc.1 = trunc i64 %imad_hi_shift.1 to i32
  store i32 %imad_hi_trunc.1, ptr %R3, align 4
  %nvvm_threadidx_x = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %.82 = load i32, ptr %R3, align 4
  %.83 = sub i32 0, %.82
  %imad_mul.6 = mul i32 0, 0
  %imad_add.6 = add i32 %imad_mul.6, %.83
  store i32 %imad_add.6, ptr %R0, align 4
  %.87 = load i32, ptr %R0, align 4
  %.88 = load i32, ptr %R4, align 4
  %imad_mul.7 = mul i32 %iabs, %.87
  %imad_add.7 = add i32 %imad_mul.7, %.88
  store i32 %imad_add.7, ptr %R0, align 4
  %.92 = load i32, ptr %R0, align 4
  %cmp.1 = icmp sgt i32 %iabs, %.92
  %.95 = and i1 %cmp.1, true
  %.100 = icmp ne i1 %.95, true
  br i1 %.100, label %.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160, label %.text._Z10max_pool2dPfS_iii_split_0x0170

.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160: ; preds = %Entry_.text._Z10max_pool2dPfS_iii
  %.103 = load i32, ptr %R0, align 4
  %.105 = sub i32 0, %iabs
  %.106 = add i32 %.103, %.105
  %.107 = add i32 %.106, 0
  store i32 %.107, ptr %R0, align 4
  br label %.text._Z10max_pool2dPfS_iii_split_0x0170

.text._Z10max_pool2dPfS_iii_split_0x0170:         ; preds = %.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160, %Entry_.text._Z10max_pool2dPfS_iii
  %.113 = icmp ne i1 %.95, true
  br i1 %.113, label %.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170, label %.text._Z10max_pool2dPfS_iii_split_0x0180

.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170: ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0170
  %.116 = load i32, ptr %R3, align 4
  %.117 = add i32 %.116, 1
  %.118 = add i32 %.117, 0
  store i32 %.118, ptr %R3, align 4
  br label %.text._Z10max_pool2dPfS_iii_split_0x0180

.text._Z10max_pool2dPfS_iii_split_0x0180:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170, %.text._Z10max_pool2dPfS_iii_split_0x0170
  %.123 = load i32, ptr %R0, align 4
  %cmp.2 = icmp sge i32 %.123, %iabs
  %.127 = and i1 %cmp.2, true
  %.131 = load i32, ptr %R2, align 4
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul.8 = mul i32 %.131, %nvvm_blockdim_x
  %imad_add.8 = add i32 %imad_mul.8, %nvvm_threadidx_x
  store i32 %imad_add.8, ptr %R0, align 4
  %nvvm_threadidx_y = call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %cmp.3 = icmp ne i32 0, %Arg_3
  %.139 = and i1 %cmp.3, true
  %.144 = icmp eq i1 %.127, true
  br i1 %.144, label %.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0, label %.text._Z10max_pool2dPfS_iii_split_0x01d0

.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0: ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0180
  %.147 = load i32, ptr %R3, align 4
  %.148 = add i32 %.147, 1
  %.149 = add i32 %.148, 0
  store i32 %.149, ptr %R3, align 4
  br label %.text._Z10max_pool2dPfS_iii_split_0x01d0

.text._Z10max_pool2dPfS_iii_split_0x01d0:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0, %.text._Z10max_pool2dPfS_iii_split_0x0180
  %.154 = load i32, ptr %R3, align 4
  %imad_mul.9 = mul i32 0, 0
  %imad_add.9 = add i32 %imad_mul.9, %.154
  %.158 = icmp ne i1 %.37, true
  br i1 %.158, label %.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0, label %.text._Z10max_pool2dPfS_iii_split_0x01f0

.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0: ; preds = %.text._Z10max_pool2dPfS_iii_split_0x01d0
  %.162 = sub i32 0, %imad_add.9
  %imad_mul.10 = mul i32 0, 0
  %imad_add.10 = add i32 %imad_mul.10, %.162
  br label %.text._Z10max_pool2dPfS_iii_split_0x01f0

.text._Z10max_pool2dPfS_iii_split_0x01f0:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0, %.text._Z10max_pool2dPfS_iii_split_0x01d0
  %R21.0 = phi i32 [ %imad_add.10, %.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0 ], [ %imad_add.9, %.text._Z10max_pool2dPfS_iii_split_0x01d0 ]
  %.168 = icmp ne i1 %.139, true
  br i1 %.168, label %.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0, label %.text._Z10max_pool2dPfS_iii_split_0x0200

.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0: ; preds = %.text._Z10max_pool2dPfS_iii_split_0x01f0
  %.172 = xor i32 %Arg_3, -1
  br label %.text._Z10max_pool2dPfS_iii_split_0x0200

.text._Z10max_pool2dPfS_iii_split_0x0200:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0, %.text._Z10max_pool2dPfS_iii_split_0x01f0
  %R21.1 = phi i32 [ %.172, %.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0 ], [ %R21.0, %.text._Z10max_pool2dPfS_iii_split_0x01f0 ]
  %nvvm_blockdim_y = call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %imad_mul.11 = mul i32 %nvvm_ctaid_y, %nvvm_blockdim_y
  %imad_add.11 = add i32 %imad_mul.11, %nvvm_threadidx_y
  %.181 = load i32, ptr %R0, align 4
  %cmp.4 = icmp sge i32 %.181, %R21.1
  %.185 = and i1 %cmp.4, true
  %cmp.5 = icmp sge i32 %imad_add.11, %R21.1
  %.193 = or i1 %cmp.5, %.185
  %cmp.6 = icmp sge i32 %nvvm_ctaid_z, %Arg_4
  %.200 = or i1 %cmp.6, %.193
  %.205 = icmp eq i1 %.200, true
  br i1 %.205, label %ExitFunction, label %.text._Z10max_pool2dPfS_iii_split_0x0250

.text._Z10max_pool2dPfS_iii_split_0x0250:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0200
  %imad_mul.12 = mul i32 0, 0
  %imad_add.12 = add i32 %imad_mul.12, %Arg_3
  store i32 -8388608, ptr %R11, align 4
  %cmp.7 = icmp sge i32 %imad_add.12, 1
  %.217 = and i1 %cmp.7, true
  %.222 = icmp ne i1 %.217, true
  br i1 %.222, label %.L_x_16, label %.text._Z10max_pool2dPfS_iii_split_0x0290

.text._Z10max_pool2dPfS_iii_split_0x0290:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0250
  %imad_mul.13 = mul i32 %nvvm_ctaid_z, %Arg_2
  %imad_add.13 = add i32 %imad_mul.13, 0
  store i32 %imad_add.13, ptr %R3, align 4
  %.229 = add i32 %imad_add.12, -1
  %.230 = add i32 %.229, 0
  store i32 %.230, ptr %R2, align 4
  %.233 = load i32, ptr %R0, align 4
  %imad_mul.14 = mul i32 %.233, %Arg_3
  %imad_add.14 = add i32 %imad_mul.14, 0
  %.238 = and i32 %imad_add.12, 3
  %.242 = load i32, ptr %R3, align 4
  %imad_mul.15 = mul i32 %imad_add.11, %Arg_3
  %imad_add.15 = add i32 %imad_mul.15, %.242
  %.245 = load i32, ptr %R2, align 4
  %cmp.8 = icmp sge i32 %.245, 3
  %.248 = and i1 %cmp.8, true
  %imad_mul.16 = mul i32 0, 0
  %imad_add.16 = add i32 %imad_mul.16, -8388608
  store i32 %imad_add.16, ptr %R11, align 4
  %.255 = sub i32 0, %Arg_3
  %.256 = add i32 %.238, %.255
  %.257 = add i32 %.256, 0
  %imad_mul.17 = mul i32 0, 0
  %imad_add.17 = add i32 %imad_mul.17, 0
  %imad_mul.18 = mul i32 %imad_add.15, %Arg_2
  %imad_add.18 = add i32 %imad_mul.18, %imad_add.14
  br label %.L_x_20

.L_x_20:                                          ; preds = %.L_x_19, %.text._Z10max_pool2dPfS_iii_split_0x0290
  %R16.0 = phi i32 [ %imad_add.17, %.text._Z10max_pool2dPfS_iii_split_0x0290 ], [ %.558, %.L_x_19 ]
  %cmp.9 = icmp ne i32 %.238, 0
  %.273 = and i1 %cmp.9, true
  %.278 = icmp ne i1 %.248, true
  br i1 %.278, label %.L_x_17, label %.L_x_20_split_0x0360

.L_x_20_split_0x0360:                             ; preds = %.L_x_20
  %imad_mul.19 = mul i32 %imad_add.18, 1
  %imad_add.19 = add i32 %imad_mul.19, %R16.0
  br label %.L_x_18

.L_x_18:                                          ; preds = %.L_x_18, %.L_x_20_split_0x0360
  %UR4.1 = phi i32 [ 0, %.L_x_20_split_0x0360 ], [ %.348, %.L_x_18 ]
  %R17.0 = phi i32 [ %imad_add.19, %.L_x_20_split_0x0360 ], [ %imad_add.25, %.L_x_18 ]
  store i32 4, ptr %R2, align 4
  %imad_mul.20 = mul i32 0, 0
  %imad_add.20 = add i32 %imad_mul.20, %Arg_2
  %.294 = load i32, ptr %R2, align 4
  %imad_ext1.2 = zext i32 %R17.0 to i64
  %imad_ext2.2 = zext i32 %.294 to i64
  %imad_mul.21 = mul i64 %imad_ext1.2, %imad_ext2.2
  %.295 = ptrtoint ptr %Arg_0 to i64
  %imad_add.21 = add i64 %imad_mul.21, %.295
  %.296 = and i64 %imad_add.21, -4294967296
  %.297 = lshr i64 %.296, 32
  %trunc32 = trunc i64 %.297 to i32
  %trunc32.1 = trunc i64 %imad_add.21 to i32
  store i32 %trunc32.1, ptr %R2, align 4
  store i32 %trunc32, ptr %R3, align 4
  %.302 = load i32, ptr %R2, align 4
  %imad_ext1.3 = zext i32 %imad_add.20 to i64
  %imad_ext2.3 = zext i32 4 to i64
  %imad_mul.22 = mul i64 %imad_ext1.3, %imad_ext2.3
  %imad_ext3.2 = zext i32 %.302 to i64
  %imad_add.22 = add i64 %imad_mul.22, %imad_ext3.2
  %.303 = and i64 %imad_add.22, -4294967296
  %.304 = lshr i64 %.303, 32
  %trunc32.2 = trunc i64 %.304 to i32
  %trunc32.3 = trunc i64 %imad_add.22 to i32
  store i32 %trunc32.3, ptr %R4, align 4
  %.308 = load i32, ptr %R2, align 4
  %zext = zext i32 %.308 to i64
  %.309 = load i32, ptr %R3, align 4
  %zext.1 = zext i32 %.309 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.310 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.311 = bitcast ptr %R2 to ptr
  store float %.310, ptr %.311, align 4
  %.315 = load i32, ptr %R4, align 4
  %imad_ext1.4 = zext i32 %imad_add.20 to i64
  %imad_ext2.4 = zext i32 4 to i64
  %imad_mul.23 = mul i64 %imad_ext1.4, %imad_ext2.4
  %imad_ext3.3 = zext i32 %.315 to i64
  %imad_add.23 = add i64 %imad_mul.23, %imad_ext3.3
  %.316 = and i64 %imad_add.23, -4294967296
  %.317 = lshr i64 %.316, 32
  %trunc32.4 = trunc i64 %.317 to i32
  %trunc32.5 = trunc i64 %imad_add.23 to i32
  store i32 %trunc32.5, ptr %R6, align 4
  %.321 = load i32, ptr %R4, align 4
  %zext.2 = zext i32 %.321 to i64
  %zext.3 = zext i32 %trunc32.2 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.323 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.324 = bitcast ptr %R4 to ptr
  store float %.323, ptr %.324, align 4
  %.328 = load i32, ptr %R6, align 4
  %imad_ext1.5 = zext i32 %imad_add.20 to i64
  %imad_ext2.5 = zext i32 4 to i64
  %imad_mul.24 = mul i64 %imad_ext1.5, %imad_ext2.5
  %imad_ext3.4 = zext i32 %.328 to i64
  %imad_add.24 = add i64 %imad_mul.24, %imad_ext3.4
  %.329 = and i64 %imad_add.24, -4294967296
  %.330 = lshr i64 %.329, 32
  %trunc32.6 = trunc i64 %.330 to i32
  %trunc32.7 = trunc i64 %imad_add.24 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  %.334 = load i32, ptr %R6, align 4
  %zext.4 = zext i32 %.334 to i64
  %zext.5 = zext i32 %trunc32.4 to i64
  %shl.2 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.2, %zext.4
  %inttoptr_bytes.2 = inttoptr i64 %or.2 to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.336 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.337 = bitcast ptr %R6 to ptr
  store float %.336, ptr %.337, align 4
  %.340 = load i32, ptr %R8, align 4
  %zext.6 = zext i32 %.340 to i64
  %zext.7 = zext i32 %trunc32.6 to i64
  %shl.3 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.3, %zext.6
  %inttoptr_bytes.3 = inttoptr i64 %or.3 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.342 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.343 = bitcast ptr %R8 to ptr
  store float %.342, ptr %.343, align 4
  %.347 = add i32 %UR4.1, 4
  %.348 = add i32 %.347, 0
  %.353 = add i32 %.257, %.348
  %.354 = add i32 %.353, 0
  %cmp.10 = icmp ne i32 %.354, 0
  %.360 = and i1 %cmp.10, true
  %imad_mul.25 = mul i32 %imad_add.20, 4
  %imad_add.25 = add i32 %imad_mul.25, %R17.0
  %.368 = load float, ptr %R2, align 4
  %.369 = load float, ptr %R11, align 4
  %.370 = xor i1 true, true
  %.371 = fcmp olt float %.368, %.369
  %.372 = fcmp ogt float %.368, %.369
  %mnmx_min = select i1 %.371, float %.368, float %.369
  %mnmx_max = select i1 %.372, float %.368, float %.369
  %mnmx_final = select i1 %.370, float %mnmx_min, float %mnmx_max
  %.373 = bitcast ptr %R11 to ptr
  store float %mnmx_final, ptr %.373, align 4
  %.376 = load float, ptr %R11, align 4
  %.377 = load float, ptr %R4, align 4
  %.378 = xor i1 true, true
  %.379 = fcmp olt float %.376, %.377
  %.380 = fcmp ogt float %.376, %.377
  %mnmx_min.1 = select i1 %.379, float %.376, float %.377
  %mnmx_max.1 = select i1 %.380, float %.376, float %.377
  %mnmx_final.1 = select i1 %.378, float %mnmx_min.1, float %mnmx_max.1
  %.381 = bitcast ptr %R11 to ptr
  store float %mnmx_final.1, ptr %.381, align 4
  %.384 = load float, ptr %R11, align 4
  %.385 = load float, ptr %R6, align 4
  %.386 = xor i1 true, true
  %.387 = fcmp olt float %.384, %.385
  %.388 = fcmp ogt float %.384, %.385
  %mnmx_min.2 = select i1 %.387, float %.384, float %.385
  %mnmx_max.2 = select i1 %.388, float %.384, float %.385
  %mnmx_final.2 = select i1 %.386, float %mnmx_min.2, float %mnmx_max.2
  %.389 = bitcast ptr %R11 to ptr
  store float %mnmx_final.2, ptr %.389, align 4
  %.392 = load float, ptr %R11, align 4
  %.393 = load float, ptr %R8, align 4
  %.394 = xor i1 true, true
  %.395 = fcmp olt float %.392, %.393
  %.396 = fcmp ogt float %.392, %.393
  %mnmx_min.3 = select i1 %.395, float %.392, float %.393
  %mnmx_max.3 = select i1 %.396, float %.392, float %.393
  %mnmx_final.3 = select i1 %.394, float %mnmx_min.3, float %mnmx_max.3
  %.397 = bitcast ptr %R11 to ptr
  store float %mnmx_final.3, ptr %.397, align 4
  %.401 = icmp eq i1 %.360, true
  br i1 %.401, label %.L_x_18, label %.L_x_17.loopexit

.L_x_17.loopexit:                                 ; preds = %.L_x_18
  br label %.L_x_17

.L_x_17:                                          ; preds = %.L_x_17.loopexit, %.L_x_20
  %UR4.0 = phi i32 [ 0, %.L_x_20 ], [ %.348, %.L_x_17.loopexit ]
  %imad_mul.26 = mul i32 %imad_add.14, 1
  %imad_add.26 = add i32 %imad_mul.26, %R16.0
  store i32 %imad_add.26, ptr %R4, align 4
  %.409 = icmp ne i1 %.273, true
  br i1 %.409, label %.L_x_19, label %.L_x_17_split_0x04d0

.L_x_17_split_0x04d0:                             ; preds = %.L_x_17
  %.414 = add i32 %imad_add.15, %UR4.0
  %.415 = add i32 %.414, 0
  %.421 = load i32, ptr %R4, align 4
  %imad_mul.27 = mul i32 %.415, %Arg_2
  %imad_add.27 = add i32 %imad_mul.27, %.421
  store i32 %imad_add.27, ptr %R2, align 4
  %.424 = load i32, ptr %R2, align 4
  %imad_ext1.6 = zext i32 %.424 to i64
  %imad_ext2.6 = zext i32 4 to i64
  %imad_mul.28 = mul i64 %imad_ext1.6, %imad_ext2.6
  %.426 = ptrtoint ptr %Arg_0 to i64
  %imad_add.28 = add i64 %imad_mul.28, %.426
  %.427 = and i64 %imad_add.28, -4294967296
  %.428 = lshr i64 %.427, 32
  %trunc32.8 = trunc i64 %.428 to i32
  %trunc32.9 = trunc i64 %imad_add.28 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  store i32 %trunc32.8, ptr %R3, align 4
  %.432 = load i32, ptr %R2, align 4
  %zext.8 = zext i32 %.432 to i64
  %.433 = load i32, ptr %R3, align 4
  %zext.9 = zext i32 %.433 to i64
  %shl.4 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.4, %zext.8
  %inttoptr_bytes.4 = inttoptr i64 %or.4 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.434 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.435 = bitcast ptr %R2 to ptr
  store float %.434, ptr %.435, align 4
  %cmp.11 = icmp ne i32 %.238, 1
  %.441 = and i1 %cmp.11, true
  %.445 = load float, ptr %R11, align 4
  %.446 = load float, ptr %R2, align 4
  %.447 = xor i1 true, true
  %.448 = fcmp olt float %.445, %.446
  %.449 = fcmp ogt float %.445, %.446
  %mnmx_min.4 = select i1 %.448, float %.445, float %.446
  %mnmx_max.4 = select i1 %.449, float %.445, float %.446
  %mnmx_final.4 = select i1 %.447, float %mnmx_min.4, float %mnmx_max.4
  %.450 = bitcast ptr %R11 to ptr
  store float %mnmx_final.4, ptr %.450, align 4
  %.454 = icmp ne i1 %.441, true
  br i1 %.454, label %.L_x_19, label %.L_x_17_split_0x0550

.L_x_17_split_0x0550:                             ; preds = %.L_x_17_split_0x04d0
  %cmp.12 = icmp ne i32 %.238, 2
  %.460 = and i1 %cmp.12, true
  %.465 = add i32 %.415, 1
  %.466 = add i32 %.465, 0
  store i32 %.466, ptr %R2, align 4
  %.469 = load i32, ptr %R2, align 4
  %.470 = load i32, ptr %R4, align 4
  %imad_mul.29 = mul i32 %.469, %Arg_2
  %imad_add.29 = add i32 %imad_mul.29, %.470
  store i32 %imad_add.29, ptr %R2, align 4
  %.474 = icmp eq i1 %.460, true
  br i1 %.474, label %.L_x_17_split_0x0550_conditionalExpr_0x0580, label %.L_x_17_split_0x0590

.L_x_17_split_0x0550_conditionalExpr_0x0580:      ; preds = %.L_x_17_split_0x0550
  %.478 = add i32 %.415, 2
  %.479 = add i32 %.478, 0
  store i32 %.479, ptr %R3, align 4
  br label %.L_x_17_split_0x0590

.L_x_17_split_0x0590:                             ; preds = %.L_x_17_split_0x0550_conditionalExpr_0x0580, %.L_x_17_split_0x0550
  %.485 = icmp eq i1 %.460, true
  br i1 %.485, label %.L_x_17_split_0x0590_conditionalExpr_0x0590, label %.L_x_17_split_0x05a0

.L_x_17_split_0x0590_conditionalExpr_0x0590:      ; preds = %.L_x_17_split_0x0590
  %.488 = load i32, ptr %R3, align 4
  %.489 = load i32, ptr %R4, align 4
  %imad_mul.30 = mul i32 %.488, %Arg_2
  %imad_add.30 = add i32 %imad_mul.30, %.489
  store i32 %imad_add.30, ptr %R4, align 4
  br label %.L_x_17_split_0x05a0

.L_x_17_split_0x05a0:                             ; preds = %.L_x_17_split_0x0590_conditionalExpr_0x0590, %.L_x_17_split_0x0590
  %.494 = load i32, ptr %R2, align 4
  %imad_ext1.7 = zext i32 %.494 to i64
  %imad_ext2.7 = zext i32 4 to i64
  %imad_mul.31 = mul i64 %imad_ext1.7, %imad_ext2.7
  %.496 = ptrtoint ptr %Arg_0 to i64
  %imad_add.31 = add i64 %imad_mul.31, %.496
  %.497 = and i64 %imad_add.31, -4294967296
  %.498 = lshr i64 %.497, 32
  %trunc32.10 = trunc i64 %.498 to i32
  %trunc32.11 = trunc i64 %imad_add.31 to i32
  store i32 %trunc32.11, ptr %R2, align 4
  store i32 %trunc32.10, ptr %R3, align 4
  %.503 = icmp eq i1 %.460, true
  br i1 %.503, label %.L_x_17_split_0x05a0_conditionalExpr_0x05b0, label %.L_x_17_split_0x05c0

.L_x_17_split_0x05a0_conditionalExpr_0x05b0:      ; preds = %.L_x_17_split_0x05a0
  %.506 = load i32, ptr %R4, align 4
  %imad_ext1.8 = zext i32 %.506 to i64
  %imad_ext2.8 = zext i32 4 to i64
  %imad_mul.32 = mul i64 %imad_ext1.8, %imad_ext2.8
  %.508 = ptrtoint ptr %Arg_0 to i64
  %imad_add.32 = add i64 %imad_mul.32, %.508
  %.509 = and i64 %imad_add.32, -4294967296
  %.510 = lshr i64 %.509, 32
  %trunc32.12 = trunc i64 %.510 to i32
  %trunc32.13 = trunc i64 %imad_add.32 to i32
  store i32 %trunc32.13, ptr %R4, align 4
  br label %.L_x_17_split_0x05c0

.L_x_17_split_0x05c0:                             ; preds = %.L_x_17_split_0x05a0_conditionalExpr_0x05b0, %.L_x_17_split_0x05a0
  %R5.0 = phi i32 [ %trunc32.12, %.L_x_17_split_0x05a0_conditionalExpr_0x05b0 ], [ %.415, %.L_x_17_split_0x05a0 ]
  %.516 = load i32, ptr %R2, align 4
  %zext.10 = zext i32 %.516 to i64
  %.517 = load i32, ptr %R3, align 4
  %zext.11 = zext i32 %.517 to i64
  %shl.5 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.5, %zext.10
  %inttoptr_bytes.5 = inttoptr i64 %or.5 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.518 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.519 = bitcast ptr %R2 to ptr
  store float %.518, ptr %.519, align 4
  %.523 = icmp eq i1 %.460, true
  br i1 %.523, label %.L_x_17_split_0x05c0_conditionalExpr_0x05d0, label %.L_x_17_split_0x05e0

.L_x_17_split_0x05c0_conditionalExpr_0x05d0:      ; preds = %.L_x_17_split_0x05c0
  %.526 = load i32, ptr %R4, align 4
  %zext.12 = zext i32 %.526 to i64
  %zext.13 = zext i32 %R5.0 to i64
  %shl.6 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.6, %zext.12
  %inttoptr_bytes.6 = inttoptr i64 %or.6 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.528 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.529 = bitcast ptr %R4 to ptr
  store float %.528, ptr %.529, align 4
  br label %.L_x_17_split_0x05e0

.L_x_17_split_0x05e0:                             ; preds = %.L_x_17_split_0x05c0_conditionalExpr_0x05d0, %.L_x_17_split_0x05c0
  %.534 = load float, ptr %R11, align 4
  %.535 = load float, ptr %R2, align 4
  %.536 = xor i1 true, true
  %.537 = fcmp olt float %.534, %.535
  %.538 = fcmp ogt float %.534, %.535
  %mnmx_min.5 = select i1 %.537, float %.534, float %.535
  %mnmx_max.5 = select i1 %.538, float %.534, float %.535
  %mnmx_final.5 = select i1 %.536, float %mnmx_min.5, float %mnmx_max.5
  %.539 = bitcast ptr %R11 to ptr
  store float %mnmx_final.5, ptr %.539, align 4
  %.543 = icmp eq i1 %.460, true
  br i1 %.543, label %.L_x_17_split_0x05e0_conditionalExpr_0x05f0, label %.L_x_19

.L_x_17_split_0x05e0_conditionalExpr_0x05f0:      ; preds = %.L_x_17_split_0x05e0
  %.546 = load float, ptr %R11, align 4
  %.547 = load float, ptr %R4, align 4
  %.548 = xor i1 true, true
  %.549 = fcmp olt float %.546, %.547
  %.550 = fcmp ogt float %.546, %.547
  %mnmx_min.6 = select i1 %.549, float %.546, float %.547
  %mnmx_max.6 = select i1 %.550, float %.546, float %.547
  %mnmx_final.6 = select i1 %.548, float %mnmx_min.6, float %mnmx_max.6
  %.551 = bitcast ptr %R11 to ptr
  store float %mnmx_final.6, ptr %.551, align 4
  br label %.L_x_19

.L_x_19:                                          ; preds = %.L_x_17_split_0x05e0_conditionalExpr_0x05f0, %.L_x_17_split_0x05e0, %.L_x_17_split_0x04d0, %.L_x_17
  %.557 = add i32 %R16.0, 1
  %.558 = add i32 %.557, 0
  %cmp.13 = icmp sge i32 %.558, %Arg_3
  %.564 = and i1 %cmp.13, true
  %.569 = icmp ne i1 %.564, true
  br i1 %.569, label %.L_x_20, label %.L_x_16.loopexit

.L_x_16.loopexit:                                 ; preds = %.L_x_19
  br label %.L_x_16

.L_x_16:                                          ; preds = %.L_x_16.loopexit, %.text._Z10max_pool2dPfS_iii_split_0x0250
  %imad_mul.33 = mul i32 %R21.1, %nvvm_ctaid_z
  %imad_add.33 = add i32 %imad_mul.33, %imad_add.11
  store i32 %imad_add.33, ptr %R3, align 4
  %imad_mul.34 = mul i32 0, 0
  %imad_add.34 = add i32 %imad_mul.34, 4
  store i32 %imad_add.34, ptr %R2, align 4
  %.580 = load i32, ptr %R3, align 4
  %.581 = load i32, ptr %R0, align 4
  %imad_mul.35 = mul i32 %R21.1, %.580
  %imad_add.35 = add i32 %imad_mul.35, %.581
  store i32 %imad_add.35, ptr %R3, align 4
  %.584 = load i32, ptr %R3, align 4
  %.585 = load i32, ptr %R2, align 4
  %imad_ext1.9 = zext i32 %.584 to i64
  %imad_ext2.9 = zext i32 %.585 to i64
  %imad_mul.36 = mul i64 %imad_ext1.9, %imad_ext2.9
  %.586 = ptrtoint ptr %Arg_1 to i64
  %imad_add.36 = add i64 %imad_mul.36, %.586
  %.587 = and i64 %imad_add.36, -4294967296
  %.588 = lshr i64 %.587, 32
  %trunc32.14 = trunc i64 %.588 to i32
  %trunc32.15 = trunc i64 %imad_add.36 to i32
  store i32 %trunc32.15, ptr %R2, align 4
  store i32 %trunc32.14, ptr %R3, align 4
  %.592 = load i32, ptr %R11, align 4
  %.593 = load i32, ptr %R2, align 4
  %zext.14 = zext i32 %.593 to i64
  %.594 = load i32, ptr %R3, align 4
  %zext.15 = zext i32 %.594 to i64
  %shl.7 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.7, %zext.14
  %inttoptr_bytes.7 = inttoptr i64 %or.7 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  store i32 %.592, ptr addrspace(1) %ptr_cast_for_access.7, align 4
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
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_x
  %cmp = icmp sge i32 %imad_add, %Arg_2
  %.23 = and i1 %cmp, true
  %.28 = icmp eq i1 %.23, true
  br i1 %.28, label %ExitFunction, label %.text._Z4reluPfS_i_split_0x0060

.text._Z4reluPfS_i_split_0x0060:                  ; preds = %Entry_.text._Z4reluPfS_i
  %imad_ext1 = zext i32 %imad_add to i64
  %imad_ext2 = zext i32 4 to i64
  %imad_mul.1 = mul i64 %imad_ext1, %imad_ext2
  %.37 = ptrtoint ptr %Arg_0 to i64
  %imad_add.1 = add i64 %imad_mul.1, %.37
  %.38 = and i64 %imad_add.1, -4294967296
  %.39 = lshr i64 %.38, 32
  %trunc32 = trunc i64 %.39 to i32
  %trunc32.1 = trunc i64 %imad_add.1 to i32
  store i32 %trunc32.1, ptr %R2, align 4
  %.43 = load i32, ptr %R2, align 4
  %zext = zext i32 %.43 to i64
  %zext.1 = zext i32 %trunc32 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.45 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.46 = bitcast ptr %R2 to ptr
  store float %.45, ptr %.46, align 4
  %imad_ext1.1 = zext i32 %imad_add to i64
  %imad_ext2.1 = zext i32 4 to i64
  %imad_mul.2 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.51 = ptrtoint ptr %Arg_1 to i64
  %imad_add.2 = add i64 %imad_mul.2, %.51
  %.52 = and i64 %imad_add.2, -4294967296
  %.53 = lshr i64 %.52, 32
  %trunc32.2 = trunc i64 %.53 to i32
  %trunc32.3 = trunc i64 %imad_add.2 to i32
  %.57 = load float, ptr %R2, align 4
  %.58 = xor i1 true, true
  %.59 = fcmp olt float 0.000000e+00, %.57
  %.60 = fcmp ogt float 0.000000e+00, %.57
  %mnmx_min = select i1 %.59, float 0.000000e+00, float %.57
  %mnmx_max = select i1 %.60, float 0.000000e+00, float %.57
  %mnmx_final = select i1 %.58, float %mnmx_min, float %mnmx_max
  %.61 = bitcast ptr %R7 to ptr
  store float %mnmx_final, ptr %.61, align 4
  %.64 = load float, ptr %R7, align 4
  %zext.2 = zext i32 %trunc32.3 to i64
  %zext.3 = zext i32 %trunc32.2 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  store float %.64, ptr addrspace(1) %ptr_cast_for_access.1, align 4
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
  %imad_mul = mul i32 %nvvm_ctaid_y, %nvvm_blockdim_y
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_y
  %cmp = icmp sgt i32 %imad_add, %.24
  %.43 = and i1 %cmp, true
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul.1 = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add.1 = add i32 %imad_mul.1, %nvvm_threadidx_x
  %cmp.1 = icmp sgt i32 %imad_add.1, %.24
  %.55 = or i1 %cmp.1, %.43
  %cmp.2 = icmp sge i32 %nvvm_ctaid_z, %Arg_6
  %.62 = or i1 %cmp.2, %.55
  %.67 = icmp eq i1 %.62, true
  br i1 %.67, label %ExitFunction, label %.text._Z6conv2dPfS_S_iiii_split_0x00e0

.text._Z6conv2dPfS_S_iiii_split_0x00e0:           ; preds = %Entry_.text._Z6conv2dPfS_S_iiii
  %imad_mul.2 = mul i32 0, 0
  %imad_add.2 = add i32 %imad_mul.2, 0
  store i32 %imad_add.2, ptr %R12, align 4
  %cmp.3 = icmp sle i32 1, %Arg_4
  %.79 = and i1 %cmp.3, true
  %cmp.4 = icmp sgt i32 1, %Arg_5
  %.86 = or i1 %cmp.4, %.79
  %.91 = icmp eq i1 %.86, true
  br i1 %.91, label %.L_x_23, label %.text._Z6conv2dPfS_S_iiii_split_0x0130

.text._Z6conv2dPfS_S_iiii_split_0x0130:           ; preds = %.text._Z6conv2dPfS_S_iiii_split_0x00e0
  %imad_mul.3 = mul i32 0, 0
  %imad_add.3 = add i32 %imad_mul.3, %Arg_4
  %imad_mul.4 = mul i32 0, 0
  %imad_add.4 = add i32 %imad_mul.4, 0
  %.100 = load float, ptr %RZ, align 4
  %.101 = bitcast ptr %R12 to ptr
  store float %.100, ptr %.101, align 4
  %.105 = sub i32 0, 1
  %.106 = add i32 %.105, %Arg_4
  %.107 = add i32 %.106, 0
  %.112 = and i32 %imad_add.3, 3
  %cmp.5 = icmp sge i32 %.107, 3
  %.118 = and i1 %cmp.5, true
  %.123 = sub i32 0, %Arg_4
  %.124 = add i32 %.112, %.123
  %.125 = add i32 %.124, 0
  br label %.L_x_28

.L_x_28:                                          ; preds = %.L_x_26_split_0x0610, %.text._Z6conv2dPfS_S_iiii_split_0x0130
  %R10.0 = phi i32 [ %imad_add.4, %.text._Z6conv2dPfS_S_iiii_split_0x0130 ], [ %.142, %.L_x_26_split_0x0610 ]
  %imad_mul.5 = mul i32 %R10.0, %Arg_3
  %imad_add.5 = add i32 %imad_mul.5, %imad_add
  %.133 = load i32, ptr %RZ, align 4
  %imad_mul.6 = mul i32 %nvvm_ctaid_z, %Arg_5
  %imad_add.6 = add i32 %imad_mul.6, %R10.0
  %.141 = add i32 %R10.0, 1
  %.142 = add i32 %.141, 0
  %imad_mul.7 = mul i32 %imad_add.5, %Arg_3
  %imad_add.7 = add i32 %imad_mul.7, %imad_add.1
  %cmp.6 = icmp sge i32 %.142, %Arg_5
  %.152 = and i1 %cmp.6, true
  br label %.L_x_27

.L_x_27:                                          ; preds = %.L_x_26, %.L_x_28
  %R8.0 = phi i32 [ %.133, %.L_x_28 ], [ %.535, %.L_x_26 ]
  %imad_mul.8 = mul i32 %imad_add.6, %Arg_4
  %imad_add.8 = add i32 %imad_mul.8, %R8.0
  store i32 %imad_add.8, ptr %R6, align 4
  %cmp.7 = icmp ne i32 %.112, 0
  %.167 = and i1 %cmp.7, true
  %.171 = load i32, ptr %R6, align 4
  %imad_mul.9 = mul i32 %.171, %Arg_4
  %imad_add.9 = add i32 %imad_mul.9, 0
  %.175 = icmp ne i1 %.118, true
  br i1 %.175, label %.L_x_24, label %.L_x_27_split_0x0260

.L_x_27_split_0x0260:                             ; preds = %.L_x_27
  %imad_mul.10 = mul i32 %imad_add.7, 1
  %imad_add.10 = add i32 %imad_mul.10, %R8.0
  store i32 %imad_add.10, ptr %R13, align 4
  %imad_ext1 = zext i32 %imad_add.9 to i64
  %imad_ext2 = zext i32 4 to i64
  %imad_mul.11 = mul i64 %imad_ext1, %imad_ext2
  %.189 = ptrtoint ptr %Arg_1 to i64
  %imad_add.11 = add i64 %imad_mul.11, %.189
  %.190 = and i64 %imad_add.11, -4294967296
  %.191 = lshr i64 %.190, 32
  %trunc32 = trunc i64 %.191 to i32
  %trunc32.1 = trunc i64 %imad_add.11 to i32
  store i32 %trunc32.1, ptr %R6, align 4
  %.195 = load i32, ptr %R6, align 4
  store i32 %.195, ptr %R23, align 4
  br label %.L_x_25

.L_x_25:                                          ; preds = %.L_x_25, %.L_x_27_split_0x0260
  %R7.0 = phi i32 [ %trunc32, %.L_x_27_split_0x0260 ], [ %add.4, %.L_x_25 ]
  %UR4.1 = phi i32 [ 0, %.L_x_27_split_0x0260 ], [ %.283, %.L_x_25 ]
  %.199 = load i32, ptr %R13, align 4
  %imad_ext1.1 = zext i32 %.199 to i64
  %imad_ext2.1 = zext i32 4 to i64
  %imad_mul.12 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.201 = ptrtoint ptr %Arg_0 to i64
  %imad_add.12 = add i64 %imad_mul.12, %.201
  %.202 = and i64 %imad_add.12, -4294967296
  %.203 = lshr i64 %.202, 32
  %trunc32.2 = trunc i64 %.203 to i32
  %trunc32.3 = trunc i64 %imad_add.12 to i32
  store i32 %trunc32.3, ptr %R14, align 4
  %.209 = load i32, ptr %R23, align 4
  %imad_mul.13 = mul i32 0, 0
  %imad_add.13 = add i32 %imad_mul.13, %.209
  store i32 %imad_add.13, ptr %R6, align 4
  %.213 = load i32, ptr %R14, align 4
  %imad_ext1.2 = zext i32 %Arg_3 to i64
  %imad_ext2.2 = zext i32 4 to i64
  %imad_mul.14 = mul i64 %imad_ext1.2, %imad_ext2.2
  %imad_ext3 = zext i32 %.213 to i64
  %imad_add.14 = add i64 %imad_mul.14, %imad_ext3
  %.214 = and i64 %imad_add.14, -4294967296
  %.215 = lshr i64 %.214, 32
  %trunc32.4 = trunc i64 %.215 to i32
  %trunc32.5 = trunc i64 %imad_add.14 to i32
  store i32 %trunc32.5, ptr %R16, align 4
  %.219 = load i32, ptr %R14, align 4
  %zext = zext i32 %.219 to i64
  %zext.1 = zext i32 %trunc32.2 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.221 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.222 = bitcast ptr %R14 to ptr
  store float %.221, ptr %.222, align 4
  %.225 = load i32, ptr %R6, align 4
  %zext.2 = zext i32 %.225 to i64
  %zext.3 = zext i32 %R7.0 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.227 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.228 = bitcast ptr %R23 to ptr
  store float %.227, ptr %.228, align 4
  %.232 = load i32, ptr %R16, align 4
  %imad_ext1.3 = zext i32 %Arg_3 to i64
  %imad_ext2.3 = zext i32 4 to i64
  %imad_mul.15 = mul i64 %imad_ext1.3, %imad_ext2.3
  %imad_ext3.1 = zext i32 %.232 to i64
  %imad_add.15 = add i64 %imad_mul.15, %imad_ext3.1
  %.233 = and i64 %imad_add.15, -4294967296
  %.234 = lshr i64 %.233, 32
  %trunc32.6 = trunc i64 %.234 to i32
  %trunc32.7 = trunc i64 %imad_add.15 to i32
  store i32 %trunc32.7, ptr %R18, align 4
  store i32 %trunc32.6, ptr %R19, align 4
  %.238 = load i32, ptr %R16, align 4
  %zext.4 = zext i32 %.238 to i64
  %zext.5 = zext i32 %trunc32.4 to i64
  %shl.2 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.2, %zext.4
  %inttoptr_bytes.2 = inttoptr i64 %or.2 to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.240 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.241 = bitcast ptr %R16 to ptr
  store float %.240, ptr %.241, align 4
  %.245 = load i32, ptr %R18, align 4
  %imad_ext1.4 = zext i32 %Arg_3 to i64
  %imad_ext2.4 = zext i32 4 to i64
  %imad_mul.16 = mul i64 %imad_ext1.4, %imad_ext2.4
  %imad_ext3.2 = zext i32 %.245 to i64
  %imad_add.16 = add i64 %imad_mul.16, %imad_ext3.2
  %.246 = and i64 %imad_add.16, -4294967296
  %.247 = lshr i64 %.246, 32
  %trunc32.8 = trunc i64 %.247 to i32
  %trunc32.9 = trunc i64 %imad_add.16 to i32
  store i32 %trunc32.9, ptr %R20, align 4
  %.251 = load i32, ptr %R6, align 4
  %zext.6 = zext i32 %.251 to i64
  %zext.7 = zext i32 %R7.0 to i64
  %shl.3 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.3, %zext.6
  %ptr_plus_imm = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.253 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.254 = bitcast ptr %R22 to ptr
  store float %.253, ptr %.254, align 4
  %.257 = load i32, ptr %R18, align 4
  %zext.8 = zext i32 %.257 to i64
  %.258 = load i32, ptr %R19, align 4
  %zext.9 = zext i32 %.258 to i64
  %shl.4 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.4, %zext.8
  %inttoptr_bytes.4 = inttoptr i64 %or.4 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.259 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.260 = bitcast ptr %R18 to ptr
  store float %.259, ptr %.260, align 4
  %.263 = load i32, ptr %R6, align 4
  %zext.10 = zext i32 %.263 to i64
  %zext.11 = zext i32 %R7.0 to i64
  %shl.5 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.5, %zext.10
  %ptr_plus_imm.1 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.265 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.266 = bitcast ptr %R25 to ptr
  store float %.265, ptr %.266, align 4
  %.269 = load i32, ptr %R20, align 4
  %zext.12 = zext i32 %.269 to i64
  %zext.13 = zext i32 %trunc32.8 to i64
  %shl.6 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.6, %zext.12
  %inttoptr_bytes.6 = inttoptr i64 %or.6 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.271 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.272 = bitcast ptr %R20 to ptr
  store float %.271, ptr %.272, align 4
  %.275 = load i32, ptr %R6, align 4
  %zext.14 = zext i32 %.275 to i64
  %zext.15 = zext i32 %R7.0 to i64
  %shl.7 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.7, %zext.14
  %ptr_plus_imm.2 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.277 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.278 = bitcast ptr %R27 to ptr
  store float %.277, ptr %.278, align 4
  %.282 = add i32 %UR4.1, 4
  %.283 = add i32 %.282, 0
  %.287 = load i32, ptr %R13, align 4
  %shl.8 = shl i32 %Arg_3, 2
  %add = add i32 %shl.8, %.287
  store i32 %add, ptr %R13, align 4
  %.290 = load float, ptr %R23, align 4
  %.291 = load float, ptr %R14, align 4
  %.292 = load float, ptr %R12, align 4
  %fmul = fmul float %.290, %.291
  %fadd = fadd float %fmul, %.292
  %.293 = bitcast ptr %R23 to ptr
  store float %fadd, ptr %.293, align 4
  %.298 = add i32 %.125, %.283
  %.299 = add i32 %.298, 0
  store i32 %.299, ptr %R12, align 4
  %.302 = load i32, ptr %R12, align 4
  %cmp.8 = icmp ne i32 %.302, 0
  %.305 = and i1 %cmp.8, true
  %.309 = load float, ptr %R22, align 4
  %.310 = load float, ptr %R16, align 4
  %.311 = load float, ptr %R23, align 4
  %fmul.1 = fmul float %.309, %.310
  %fadd.1 = fadd float %fmul.1, %.311
  %.312 = bitcast ptr %R22 to ptr
  store float %fadd.1, ptr %.312, align 4
  %.315 = load i32, ptr %R6, align 4
  %.316 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.315, i32 16)
  %.317 = extractvalue { i32, i1 } %.316, 0
  %.318 = extractvalue { i32, i1 } %.316, 1
  %.319 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.317, i32 0)
  %.320 = extractvalue { i32, i1 } %.319, 0
  %.321 = extractvalue { i32, i1 } %.319, 1
  %.322 = or i1 %.318, %.321
  store i32 %.320, ptr %R23, align 4
  %.326 = load float, ptr %R25, align 4
  %.327 = load float, ptr %R18, align 4
  %.328 = load float, ptr %R22, align 4
  %fmul.2 = fmul float %.326, %.327
  %fadd.2 = fadd float %fmul.2, %.328
  %.329 = bitcast ptr %R22 to ptr
  store float %fadd.2, ptr %.329, align 4
  %.334 = xor i1 true, true
  %.335 = zext i1 %.322 to i32
  %.336 = zext i1 %.334 to i32
  %add.1 = add i32 0, %R7.0
  %add.2 = add i32 %add.1, 0
  %add.3 = add i32 %add.2, %.335
  %add.4 = add i32 %add.3, %.336
  %.339 = load float, ptr %R27, align 4
  %.340 = load float, ptr %R20, align 4
  %.341 = load float, ptr %R22, align 4
  %fmul.3 = fmul float %.339, %.340
  %fadd.3 = fadd float %fmul.3, %.341
  %.342 = bitcast ptr %R12 to ptr
  store float %fadd.3, ptr %.342, align 4
  %.346 = icmp eq i1 %.305, true
  br i1 %.346, label %.L_x_25, label %.L_x_24.loopexit

.L_x_24.loopexit:                                 ; preds = %.L_x_25
  br label %.L_x_24

.L_x_24:                                          ; preds = %.L_x_24.loopexit, %.L_x_27
  %UR4.0 = phi i32 [ 0, %.L_x_27 ], [ %.283, %.L_x_24.loopexit ]
  %imad_mul.17 = mul i32 %imad_add.1, 1
  %imad_add.17 = add i32 %imad_mul.17, %R8.0
  store i32 %imad_add.17, ptr %R14, align 4
  %.354 = icmp ne i1 %.167, true
  br i1 %.354, label %.L_x_26, label %.L_x_24_split_0x0460

.L_x_24_split_0x0460:                             ; preds = %.L_x_24
  %.359 = add i32 %imad_add.5, %UR4.0
  %.360 = add i32 %.359, 0
  %.365 = add i32 %imad_add.9, %UR4.0
  %.366 = add i32 %.365, 0
  store i32 %.366, ptr %R16, align 4
  store i32 4, ptr %R19, align 4
  %.372 = load i32, ptr %R14, align 4
  %imad_mul.18 = mul i32 %.360, %Arg_3
  %imad_add.18 = add i32 %imad_mul.18, %.372
  store i32 %imad_add.18, ptr %R6, align 4
  %.375 = load i32, ptr %R16, align 4
  %.376 = load i32, ptr %R19, align 4
  %imad_ext1.5 = zext i32 %.375 to i64
  %imad_ext2.5 = zext i32 %.376 to i64
  %imad_mul.19 = mul i64 %imad_ext1.5, %imad_ext2.5
  %.377 = ptrtoint ptr %Arg_1 to i64
  %imad_add.19 = add i64 %imad_mul.19, %.377
  %.378 = and i64 %imad_add.19, -4294967296
  %.379 = lshr i64 %.378, 32
  %trunc32.10 = trunc i64 %.379 to i32
  %trunc32.11 = trunc i64 %imad_add.19 to i32
  store i32 %trunc32.11, ptr %R16, align 4
  %.383 = load i32, ptr %R6, align 4
  %.384 = load i32, ptr %R19, align 4
  %imad_ext1.6 = zext i32 %.383 to i64
  %imad_ext2.6 = zext i32 %.384 to i64
  %imad_mul.20 = mul i64 %imad_ext1.6, %imad_ext2.6
  %.385 = ptrtoint ptr %Arg_0 to i64
  %imad_add.20 = add i64 %imad_mul.20, %.385
  %.386 = and i64 %imad_add.20, -4294967296
  %.387 = lshr i64 %.386, 32
  %trunc32.12 = trunc i64 %.387 to i32
  %trunc32.13 = trunc i64 %imad_add.20 to i32
  store i32 %trunc32.13, ptr %R6, align 4
  %.391 = load i32, ptr %R16, align 4
  %zext.16 = zext i32 %.391 to i64
  %zext.17 = zext i32 %trunc32.10 to i64
  %shl.9 = shl i64 %zext.17, 32
  %or.8 = or i64 %shl.9, %zext.16
  %inttoptr_bytes.8 = inttoptr i64 %or.8 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.393 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.394 = bitcast ptr %R13 to ptr
  store float %.393, ptr %.394, align 4
  %.397 = load i32, ptr %R6, align 4
  %zext.18 = zext i32 %.397 to i64
  %zext.19 = zext i32 %trunc32.12 to i64
  %shl.10 = shl i64 %zext.19, 32
  %or.9 = or i64 %shl.10, %zext.18
  %inttoptr_bytes.9 = inttoptr i64 %or.9 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.399 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.400 = bitcast ptr %R6 to ptr
  store float %.399, ptr %.400, align 4
  %cmp.9 = icmp ne i32 %.112, 1
  %.406 = and i1 %cmp.9, true
  %.410 = load float, ptr %R13, align 4
  %.411 = load float, ptr %R6, align 4
  %.412 = load float, ptr %R12, align 4
  %fmul.4 = fmul float %.410, %.411
  %fadd.4 = fadd float %fmul.4, %.412
  %.413 = bitcast ptr %R12 to ptr
  store float %fadd.4, ptr %.413, align 4
  %.417 = icmp ne i1 %.406, true
  br i1 %.417, label %.L_x_26, label %.L_x_24_split_0x0510

.L_x_24_split_0x0510:                             ; preds = %.L_x_24_split_0x0460
  %cmp.10 = icmp ne i32 %.112, 2
  %.423 = and i1 %cmp.10, true
  %.427 = load i32, ptr %R16, align 4
  %zext.20 = zext i32 %.427 to i64
  %zext.21 = zext i32 %trunc32.10 to i64
  %shl.11 = shl i64 %zext.21, 32
  %or.10 = or i64 %shl.11, %zext.20
  %ptr_plus_imm.3 = add i64 %or.10, 4
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.429 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.430 = bitcast ptr %R13 to ptr
  store float %.429, ptr %.430, align 4
  %.434 = add i32 %.360, 1
  %.435 = add i32 %.434, 0
  store i32 %.435, ptr %R6, align 4
  %.438 = load i32, ptr %R6, align 4
  %.439 = load i32, ptr %R14, align 4
  %imad_mul.21 = mul i32 %.438, %Arg_3
  %imad_add.21 = add i32 %imad_mul.21, %.439
  store i32 %imad_add.21, ptr %R6, align 4
  %.443 = icmp eq i1 %.423, true
  br i1 %.443, label %.L_x_24_split_0x0510_conditionalExpr_0x0550, label %.L_x_24_split_0x0560

.L_x_24_split_0x0510_conditionalExpr_0x0550:      ; preds = %.L_x_24_split_0x0510
  %.447 = add i32 %.360, 2
  %.448 = add i32 %.447, 0
  br label %.L_x_24_split_0x0560

.L_x_24_split_0x0560:                             ; preds = %.L_x_24_split_0x0510_conditionalExpr_0x0550, %.L_x_24_split_0x0510
  %R7.1 = phi i32 [ %.448, %.L_x_24_split_0x0510_conditionalExpr_0x0550 ], [ %trunc32.12, %.L_x_24_split_0x0510 ]
  %.454 = icmp eq i1 %.423, true
  br i1 %.454, label %.L_x_24_split_0x0560_conditionalExpr_0x0560, label %.L_x_24_split_0x0570

.L_x_24_split_0x0560_conditionalExpr_0x0560:      ; preds = %.L_x_24_split_0x0560
  %.458 = load i32, ptr %R14, align 4
  %imad_mul.22 = mul i32 %R7.1, %Arg_3
  %imad_add.22 = add i32 %imad_mul.22, %.458
  store i32 %imad_add.22, ptr %R14, align 4
  br label %.L_x_24_split_0x0570

.L_x_24_split_0x0570:                             ; preds = %.L_x_24_split_0x0560_conditionalExpr_0x0560, %.L_x_24_split_0x0560
  %.463 = load i32, ptr %R6, align 4
  %.464 = load i32, ptr %R19, align 4
  %imad_ext1.7 = zext i32 %.463 to i64
  %imad_ext2.7 = zext i32 %.464 to i64
  %imad_mul.23 = mul i64 %imad_ext1.7, %imad_ext2.7
  %.465 = ptrtoint ptr %Arg_0 to i64
  %imad_add.23 = add i64 %imad_mul.23, %.465
  %.466 = and i64 %imad_add.23, -4294967296
  %.467 = lshr i64 %.466, 32
  %trunc32.14 = trunc i64 %.467 to i32
  %trunc32.15 = trunc i64 %imad_add.23 to i32
  store i32 %trunc32.15, ptr %R6, align 4
  %.472 = icmp eq i1 %.423, true
  br i1 %.472, label %.L_x_24_split_0x0570_conditionalExpr_0x0580, label %.L_x_24_split_0x0590

.L_x_24_split_0x0570_conditionalExpr_0x0580:      ; preds = %.L_x_24_split_0x0570
  %.475 = load i32, ptr %R14, align 4
  %.476 = load i32, ptr %R19, align 4
  %imad_ext1.8 = zext i32 %.475 to i64
  %imad_ext2.8 = zext i32 %.476 to i64
  %imad_mul.24 = mul i64 %imad_ext1.8, %imad_ext2.8
  %.477 = ptrtoint ptr %Arg_0 to i64
  %imad_add.24 = add i64 %imad_mul.24, %.477
  %.478 = and i64 %imad_add.24, -4294967296
  %.479 = lshr i64 %.478, 32
  %trunc32.16 = trunc i64 %.479 to i32
  %trunc32.17 = trunc i64 %imad_add.24 to i32
  store i32 %trunc32.17, ptr %R14, align 4
  br label %.L_x_24_split_0x0590

.L_x_24_split_0x0590:                             ; preds = %.L_x_24_split_0x0570_conditionalExpr_0x0580, %.L_x_24_split_0x0570
  %R15.0 = phi i32 [ %trunc32.16, %.L_x_24_split_0x0570_conditionalExpr_0x0580 ], [ %.360, %.L_x_24_split_0x0570 ]
  %.486 = icmp eq i1 %.423, true
  br i1 %.486, label %.L_x_24_split_0x0590_conditionalExpr_0x0590, label %.L_x_24_split_0x05a0

.L_x_24_split_0x0590_conditionalExpr_0x0590:      ; preds = %.L_x_24_split_0x0590
  %.489 = load i32, ptr %R16, align 4
  %zext.22 = zext i32 %.489 to i64
  %zext.23 = zext i32 %trunc32.10 to i64
  %shl.12 = shl i64 %zext.23, 32
  %or.11 = or i64 %shl.12, %zext.22
  %ptr_plus_imm.4 = add i64 %or.11, 8
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.491 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.492 = bitcast ptr %R19 to ptr
  store float %.491, ptr %.492, align 4
  br label %.L_x_24_split_0x05a0

.L_x_24_split_0x05a0:                             ; preds = %.L_x_24_split_0x0590_conditionalExpr_0x0590, %.L_x_24_split_0x0590
  %.497 = load i32, ptr %R6, align 4
  %zext.24 = zext i32 %.497 to i64
  %zext.25 = zext i32 %trunc32.14 to i64
  %shl.13 = shl i64 %zext.25, 32
  %or.12 = or i64 %shl.13, %zext.24
  %inttoptr_bytes.12 = inttoptr i64 %or.12 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.499 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.500 = bitcast ptr %R6 to ptr
  store float %.499, ptr %.500, align 4
  %.504 = icmp eq i1 %.423, true
  br i1 %.504, label %.L_x_24_split_0x05a0_conditionalExpr_0x05b0, label %.L_x_24_split_0x05c0

.L_x_24_split_0x05a0_conditionalExpr_0x05b0:      ; preds = %.L_x_24_split_0x05a0
  %.507 = load i32, ptr %R14, align 4
  %zext.26 = zext i32 %.507 to i64
  %zext.27 = zext i32 %R15.0 to i64
  %shl.14 = shl i64 %zext.27, 32
  %or.13 = or i64 %shl.14, %zext.26
  %inttoptr_bytes.13 = inttoptr i64 %or.13 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.509 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.510 = bitcast ptr %R14 to ptr
  store float %.509, ptr %.510, align 4
  br label %.L_x_24_split_0x05c0

.L_x_24_split_0x05c0:                             ; preds = %.L_x_24_split_0x05a0_conditionalExpr_0x05b0, %.L_x_24_split_0x05a0
  %.515 = load float, ptr %R13, align 4
  %.516 = load float, ptr %R6, align 4
  %.517 = load float, ptr %R12, align 4
  %fmul.5 = fmul float %.515, %.516
  %fadd.5 = fadd float %fmul.5, %.517
  %.518 = bitcast ptr %R12 to ptr
  store float %fadd.5, ptr %.518, align 4
  %.522 = icmp eq i1 %.423, true
  br i1 %.522, label %.L_x_24_split_0x05c0_conditionalExpr_0x05d0, label %.L_x_26

.L_x_24_split_0x05c0_conditionalExpr_0x05d0:      ; preds = %.L_x_24_split_0x05c0
  %.525 = load float, ptr %R19, align 4
  %.526 = load float, ptr %R14, align 4
  %.527 = load float, ptr %R12, align 4
  %fmul.6 = fmul float %.525, %.526
  %fadd.6 = fadd float %fmul.6, %.527
  %.528 = bitcast ptr %R12 to ptr
  store float %fadd.6, ptr %.528, align 4
  br label %.L_x_26

.L_x_26:                                          ; preds = %.L_x_24_split_0x05c0_conditionalExpr_0x05d0, %.L_x_24_split_0x05c0, %.L_x_24_split_0x0460, %.L_x_24
  %.534 = add i32 %R8.0, 1
  %.535 = add i32 %.534, 0
  %cmp.11 = icmp sge i32 %.535, %Arg_4
  %.541 = and i1 %cmp.11, true
  %.546 = icmp ne i1 %.541, true
  br i1 %.546, label %.L_x_27, label %.L_x_26_split_0x0610

.L_x_26_split_0x0610:                             ; preds = %.L_x_26
  %.550 = icmp ne i1 %.152, true
  br i1 %.550, label %.L_x_28, label %.L_x_23.loopexit

.L_x_23.loopexit:                                 ; preds = %.L_x_26_split_0x0610
  br label %.L_x_23

.L_x_23:                                          ; preds = %.L_x_23.loopexit, %.text._Z6conv2dPfS_S_iiii_split_0x00e0
  %.554 = add i32 %.24, 1
  %.555 = add i32 %.554, 0
  %imad_mul.25 = mul i32 %nvvm_ctaid_z, %.555
  %imad_add.25 = add i32 %imad_mul.25, %imad_add
  %imad_mul.26 = mul i32 %imad_add.25, %.555
  %imad_add.26 = add i32 %imad_mul.26, %imad_add.1
  %imad_ext1.9 = zext i32 %imad_add.26 to i64
  %imad_ext2.9 = zext i32 4 to i64
  %imad_mul.27 = mul i64 %imad_ext1.9, %imad_ext2.9
  %.572 = ptrtoint ptr %Arg_2 to i64
  %imad_add.27 = add i64 %imad_mul.27, %.572
  %.573 = and i64 %imad_add.27, -4294967296
  %.574 = lshr i64 %.573, 32
  %trunc32.18 = trunc i64 %.574 to i32
  %trunc32.19 = trunc i64 %imad_add.27 to i32
  %.578 = load i32, ptr %R12, align 4
  %zext.28 = zext i32 %trunc32.19 to i64
  %zext.29 = zext i32 %trunc32.18 to i64
  %shl.15 = shl i64 %zext.29, 32
  %or.14 = or i64 %shl.15, %zext.28
  %inttoptr_bytes.14 = inttoptr i64 %or.14 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  store i32 %.578, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z6conv2dPfS_S_iiii, %.L_x_23
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
