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
  %.71 = bitcast ptr %R7 to ptr
  store float 0.000000e+00, ptr %.71, align 4
  %.76 = and i32 %.61, 3
  %.80 = icmp ne i1 %.67, true
  br i1 %.80, label %.L_x_1, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0
  %.84 = sub i32 0, %.76
  %.85 = add i32 %.84, %Arg_4
  %.86 = add i32 %.85, 0
  %imad_mul.3 = mul i32 %imad_add, %Arg_4
  %imad_add.3 = add i32 %imad_mul.3, 0
  store i32 %imad_add.3, ptr %R2, align 4
  %.94 = ptrtoint ptr %Arg_0 to i64
  %.95 = and i64 %.94, -4294967296
  %.96 = lshr i64 %.95, 32
  %trunc32 = trunc i64 %.96 to i32
  %trunc32.1 = trunc i64 %.94 to i32
  %cmp.3 = icmp sgt i32 %.86, 1
  %.103 = and i1 %cmp.3, true
  %imad_mul.4 = mul i32 0, 0
  %imad_add.4 = add i32 %imad_mul.4, 0
  store i32 %imad_add.4, ptr %R5, align 4
  %.109 = bitcast ptr %R7 to ptr
  store float 0.000000e+00, ptr %.109, align 4
  %.112 = load i32, ptr %R2, align 4
  %imad_ext1 = zext i32 %.112 to i64
  %imad_ext2 = zext i32 4 to i64
  %imad_mul.5 = mul i64 %imad_ext1, %imad_ext2
  %.114 = ptrtoint ptr %Arg_1 to i64
  %imad_add.5 = add i64 %imad_mul.5, %.114
  %.115 = and i64 %imad_add.5, -4294967296
  %.116 = lshr i64 %.115, 32
  %trunc32.2 = trunc i64 %.116 to i32
  %trunc32.3 = trunc i64 %imad_add.5 to i32
  store i32 %trunc32.3, ptr %R2, align 4
  %.121 = icmp ne i1 %.103, true
  br i1 %.121, label %.L_x_2.preheader, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110
  %.125 = add i32 %.86, -1
  %.126 = add i32 %.125, 0
  store i32 %.126, ptr %R8, align 4
  %.132 = load i32, ptr %R8, align 4
  %cmp.4 = icmp sgt i32 %.132, 12
  %.135 = and i1 %cmp.4, true
  %.140 = icmp ne i1 %.135, true
  br i1 %.140, label %.L_x_3, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0
  br label %.L_x_4

.L_x_4:                                           ; preds = %.L_x_4, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0
  %UR4.2 = phi i32 [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %.350, %.L_x_4 ]
  %R6.2 = phi i32 [ %.86, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %.342, %.L_x_4 ]
  %UR5.2 = phi i32 [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %add.3, %.L_x_4 ]
  %R3.2 = phi i32 [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %add.7, %.L_x_4 ]
  %.148 = load i32, ptr %R2, align 4
  %zext = zext i32 %.148 to i64
  %zext.1 = zext i32 %R3.2 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.150 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.151 = bitcast ptr %R8 to ptr
  store float %.150, ptr %.151, align 4
  %zext.2 = zext i32 %UR4.2 to i64
  %zext.3 = zext i32 %UR5.2 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.156 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.157 = bitcast ptr %R9 to ptr
  store float %.156, ptr %.157, align 4
  %.160 = load i32, ptr %R2, align 4
  %zext.4 = zext i32 %.160 to i64
  %zext.5 = zext i32 %R3.2 to i64
  %shl.2 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.2, %zext.4
  %ptr_plus_imm = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.162 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.163 = bitcast ptr %R11 to ptr
  store float %.162, ptr %.163, align 4
  %zext.6 = zext i32 %UR4.2 to i64
  %zext.7 = zext i32 %UR5.2 to i64
  %shl.3 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.3, %zext.6
  %ptr_plus_imm.1 = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.168 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.169 = bitcast ptr %R10 to ptr
  store float %.168, ptr %.169, align 4
  %.172 = load i32, ptr %R2, align 4
  %zext.8 = zext i32 %.172 to i64
  %zext.9 = zext i32 %R3.2 to i64
  %shl.4 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.4, %zext.8
  %ptr_plus_imm.2 = add i64 %or.4, 8
  %inttoptr_bytes.4 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.174 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.175 = bitcast ptr %R13 to ptr
  store float %.174, ptr %.175, align 4
  %zext.10 = zext i32 %UR4.2 to i64
  %zext.11 = zext i32 %UR5.2 to i64
  %shl.5 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.5, %zext.10
  %ptr_plus_imm.3 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.180 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.181 = bitcast ptr %R12 to ptr
  store float %.180, ptr %.181, align 4
  %.184 = load i32, ptr %R2, align 4
  %zext.12 = zext i32 %.184 to i64
  %zext.13 = zext i32 %R3.2 to i64
  %shl.6 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.6, %zext.12
  %ptr_plus_imm.4 = add i64 %or.6, 12
  %inttoptr_bytes.6 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.186 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.187 = bitcast ptr %R15 to ptr
  store float %.186, ptr %.187, align 4
  %zext.14 = zext i32 %UR4.2 to i64
  %zext.15 = zext i32 %UR5.2 to i64
  %shl.7 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.7, %zext.14
  %ptr_plus_imm.5 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.192 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.193 = bitcast ptr %R14 to ptr
  store float %.192, ptr %.193, align 4
  %.196 = load i32, ptr %R2, align 4
  %zext.16 = zext i32 %.196 to i64
  %zext.17 = zext i32 %R3.2 to i64
  %shl.8 = shl i64 %zext.17, 32
  %or.8 = or i64 %shl.8, %zext.16
  %ptr_plus_imm.6 = add i64 %or.8, 16
  %inttoptr_bytes.8 = inttoptr i64 %ptr_plus_imm.6 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.198 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.199 = bitcast ptr %R17 to ptr
  store float %.198, ptr %.199, align 4
  %zext.18 = zext i32 %UR4.2 to i64
  %zext.19 = zext i32 %UR5.2 to i64
  %shl.9 = shl i64 %zext.19, 32
  %or.9 = or i64 %shl.9, %zext.18
  %ptr_plus_imm.7 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm.7 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.204 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.205 = bitcast ptr %R16 to ptr
  store float %.204, ptr %.205, align 4
  %.208 = load i32, ptr %R2, align 4
  %zext.20 = zext i32 %.208 to i64
  %zext.21 = zext i32 %R3.2 to i64
  %shl.10 = shl i64 %zext.21, 32
  %or.10 = or i64 %shl.10, %zext.20
  %ptr_plus_imm.8 = add i64 %or.10, 20
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.8 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.210 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.211 = bitcast ptr %R19 to ptr
  store float %.210, ptr %.211, align 4
  %zext.22 = zext i32 %UR4.2 to i64
  %zext.23 = zext i32 %UR5.2 to i64
  %shl.11 = shl i64 %zext.23, 32
  %or.11 = or i64 %shl.11, %zext.22
  %ptr_plus_imm.9 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.9 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.216 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.217 = bitcast ptr %R18 to ptr
  store float %.216, ptr %.217, align 4
  %.220 = load i32, ptr %R2, align 4
  %zext.24 = zext i32 %.220 to i64
  %zext.25 = zext i32 %R3.2 to i64
  %shl.12 = shl i64 %zext.25, 32
  %or.12 = or i64 %shl.12, %zext.24
  %ptr_plus_imm.10 = add i64 %or.12, 24
  %inttoptr_bytes.12 = inttoptr i64 %ptr_plus_imm.10 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.222 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.223 = bitcast ptr %R21 to ptr
  store float %.222, ptr %.223, align 4
  %zext.26 = zext i32 %UR4.2 to i64
  %zext.27 = zext i32 %UR5.2 to i64
  %shl.13 = shl i64 %zext.27, 32
  %or.13 = or i64 %shl.13, %zext.26
  %ptr_plus_imm.11 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %ptr_plus_imm.11 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.228 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.229 = bitcast ptr %R20 to ptr
  store float %.228, ptr %.229, align 4
  %.232 = load i32, ptr %R2, align 4
  %zext.28 = zext i32 %.232 to i64
  %zext.29 = zext i32 %R3.2 to i64
  %shl.14 = shl i64 %zext.29, 32
  %or.14 = or i64 %shl.14, %zext.28
  %ptr_plus_imm.12 = add i64 %or.14, 28
  %inttoptr_bytes.14 = inttoptr i64 %ptr_plus_imm.12 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.234 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.235 = bitcast ptr %R23 to ptr
  store float %.234, ptr %.235, align 4
  %zext.30 = zext i32 %UR4.2 to i64
  %zext.31 = zext i32 %UR5.2 to i64
  %shl.15 = shl i64 %zext.31, 32
  %or.15 = or i64 %shl.15, %zext.30
  %ptr_plus_imm.13 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %ptr_plus_imm.13 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.240 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.241 = bitcast ptr %R22 to ptr
  store float %.240, ptr %.241, align 4
  %.244 = load i32, ptr %R2, align 4
  %zext.32 = zext i32 %.244 to i64
  %zext.33 = zext i32 %R3.2 to i64
  %shl.16 = shl i64 %zext.33, 32
  %or.16 = or i64 %shl.16, %zext.32
  %ptr_plus_imm.14 = add i64 %or.16, 32
  %inttoptr_bytes.16 = inttoptr i64 %ptr_plus_imm.14 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.246 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.247 = bitcast ptr %R25 to ptr
  store float %.246, ptr %.247, align 4
  %zext.34 = zext i32 %UR4.2 to i64
  %zext.35 = zext i32 %UR5.2 to i64
  %shl.17 = shl i64 %zext.35, 32
  %or.17 = or i64 %shl.17, %zext.34
  %ptr_plus_imm.15 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %ptr_plus_imm.15 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.252 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.253 = bitcast ptr %R24 to ptr
  store float %.252, ptr %.253, align 4
  %.256 = load i32, ptr %R2, align 4
  %zext.36 = zext i32 %.256 to i64
  %zext.37 = zext i32 %R3.2 to i64
  %shl.18 = shl i64 %zext.37, 32
  %or.18 = or i64 %shl.18, %zext.36
  %ptr_plus_imm.16 = add i64 %or.18, 36
  %inttoptr_bytes.18 = inttoptr i64 %ptr_plus_imm.16 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.258 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.259 = bitcast ptr %R27 to ptr
  store float %.258, ptr %.259, align 4
  %zext.38 = zext i32 %UR4.2 to i64
  %zext.39 = zext i32 %UR5.2 to i64
  %shl.19 = shl i64 %zext.39, 32
  %or.19 = or i64 %shl.19, %zext.38
  %ptr_plus_imm.17 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %ptr_plus_imm.17 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.264 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.265 = bitcast ptr %R26 to ptr
  store float %.264, ptr %.265, align 4
  %.268 = load i32, ptr %R2, align 4
  %zext.40 = zext i32 %.268 to i64
  %zext.41 = zext i32 %R3.2 to i64
  %shl.20 = shl i64 %zext.41, 32
  %or.20 = or i64 %shl.20, %zext.40
  %ptr_plus_imm.18 = add i64 %or.20, 40
  %inttoptr_bytes.20 = inttoptr i64 %ptr_plus_imm.18 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.270 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.271 = bitcast ptr %R29 to ptr
  store float %.270, ptr %.271, align 4
  %zext.42 = zext i32 %UR4.2 to i64
  %zext.43 = zext i32 %UR5.2 to i64
  %shl.21 = shl i64 %zext.43, 32
  %or.21 = or i64 %shl.21, %zext.42
  %ptr_plus_imm.19 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %ptr_plus_imm.19 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.276 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.277 = bitcast ptr %R28 to ptr
  store float %.276, ptr %.277, align 4
  %.280 = load i32, ptr %R2, align 4
  %zext.44 = zext i32 %.280 to i64
  %zext.45 = zext i32 %R3.2 to i64
  %shl.22 = shl i64 %zext.45, 32
  %or.22 = or i64 %shl.22, %zext.44
  %ptr_plus_imm.20 = add i64 %or.22, 44
  %inttoptr_bytes.22 = inttoptr i64 %ptr_plus_imm.20 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.282 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.283 = bitcast ptr %R31 to ptr
  store float %.282, ptr %.283, align 4
  %zext.46 = zext i32 %UR4.2 to i64
  %zext.47 = zext i32 %UR5.2 to i64
  %shl.23 = shl i64 %zext.47, 32
  %or.23 = or i64 %shl.23, %zext.46
  %ptr_plus_imm.21 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %ptr_plus_imm.21 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.288 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.289 = bitcast ptr %R30 to ptr
  store float %.288, ptr %.289, align 4
  %.292 = load i32, ptr %R2, align 4
  %zext.48 = zext i32 %.292 to i64
  %zext.49 = zext i32 %R3.2 to i64
  %shl.24 = shl i64 %zext.49, 32
  %or.24 = or i64 %shl.24, %zext.48
  %ptr_plus_imm.22 = add i64 %or.24, 48
  %inttoptr_bytes.24 = inttoptr i64 %ptr_plus_imm.22 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.294 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.295 = bitcast ptr %R33 to ptr
  store float %.294, ptr %.295, align 4
  %zext.50 = zext i32 %UR4.2 to i64
  %zext.51 = zext i32 %UR5.2 to i64
  %shl.25 = shl i64 %zext.51, 32
  %or.25 = or i64 %shl.25, %zext.50
  %ptr_plus_imm.23 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %ptr_plus_imm.23 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.300 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.301 = bitcast ptr %R32 to ptr
  store float %.300, ptr %.301, align 4
  %.304 = load i32, ptr %R2, align 4
  %zext.52 = zext i32 %.304 to i64
  %zext.53 = zext i32 %R3.2 to i64
  %shl.26 = shl i64 %zext.53, 32
  %or.26 = or i64 %shl.26, %zext.52
  %ptr_plus_imm.24 = add i64 %or.26, 52
  %inttoptr_bytes.26 = inttoptr i64 %ptr_plus_imm.24 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.306 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.307 = bitcast ptr %R35 to ptr
  store float %.306, ptr %.307, align 4
  %zext.54 = zext i32 %UR4.2 to i64
  %zext.55 = zext i32 %UR5.2 to i64
  %shl.27 = shl i64 %zext.55, 32
  %or.27 = or i64 %shl.27, %zext.54
  %ptr_plus_imm.25 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %ptr_plus_imm.25 to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.312 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.313 = bitcast ptr %R34 to ptr
  store float %.312, ptr %.313, align 4
  %.316 = load i32, ptr %R2, align 4
  %zext.56 = zext i32 %.316 to i64
  %zext.57 = zext i32 %R3.2 to i64
  %shl.28 = shl i64 %zext.57, 32
  %or.28 = or i64 %shl.28, %zext.56
  %ptr_plus_imm.26 = add i64 %or.28, 56
  %inttoptr_bytes.28 = inttoptr i64 %ptr_plus_imm.26 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.318 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.319 = bitcast ptr %R37 to ptr
  store float %.318, ptr %.319, align 4
  %zext.58 = zext i32 %UR4.2 to i64
  %zext.59 = zext i32 %UR5.2 to i64
  %shl.29 = shl i64 %zext.59, 32
  %or.29 = or i64 %shl.29, %zext.58
  %ptr_plus_imm.27 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %ptr_plus_imm.27 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.324 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.325 = bitcast ptr %R36 to ptr
  store float %.324, ptr %.325, align 4
  %.328 = load i32, ptr %R2, align 4
  %zext.60 = zext i32 %.328 to i64
  %zext.61 = zext i32 %R3.2 to i64
  %shl.30 = shl i64 %zext.61, 32
  %or.30 = or i64 %shl.30, %zext.60
  %ptr_plus_imm.28 = add i64 %or.30, 60
  %inttoptr_bytes.30 = inttoptr i64 %ptr_plus_imm.28 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.330 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.331 = bitcast ptr %R39 to ptr
  store float %.330, ptr %.331, align 4
  %zext.62 = zext i32 %UR4.2 to i64
  %zext.63 = zext i32 %UR5.2 to i64
  %shl.31 = shl i64 %zext.63, 32
  %or.31 = or i64 %shl.31, %zext.62
  %ptr_plus_imm.29 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %ptr_plus_imm.29 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.336 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.337 = bitcast ptr %R38 to ptr
  store float %.336, ptr %.337, align 4
  %.341 = add i32 %R6.2, -16
  %.342 = add i32 %.341, 0
  %.346 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.347 = extractvalue { i32, i1 } %.346, 0
  %.348 = extractvalue { i32, i1 } %.346, 1
  %.349 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.347, i32 0)
  %.350 = extractvalue { i32, i1 } %.349, 0
  %.351 = extractvalue { i32, i1 } %.349, 1
  %.352 = or i1 %.348, %.351
  %.356 = load i32, ptr %R5, align 4
  %.357 = add i32 %.356, 16
  %.358 = add i32 %.357, 0
  store i32 %.358, ptr %R5, align 4
  %cmp.5 = icmp sgt i32 %.342, 13
  %.364 = and i1 %cmp.5, true
  %.370 = xor i1 true, true
  %.371 = zext i1 %.352 to i32
  %.372 = zext i1 %.370 to i32
  %add = add i32 0, %UR5.2
  %add.1 = add i32 %add, 0
  %add.2 = add i32 %add.1, %.371
  %add.3 = add i32 %add.2, %.372
  %.375 = load i32, ptr %R2, align 4
  %.376 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.375, i32 64)
  %.377 = extractvalue { i32, i1 } %.376, 0
  %.378 = extractvalue { i32, i1 } %.376, 1
  %.379 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.377, i32 0)
  %.380 = extractvalue { i32, i1 } %.379, 0
  %.381 = extractvalue { i32, i1 } %.379, 1
  %.382 = or i1 %.378, %.381
  store i32 %.380, ptr %R2, align 4
  %.388 = xor i1 true, true
  %.389 = zext i1 %.382 to i32
  %.390 = zext i1 %.388 to i32
  %add.4 = add i32 0, %R3.2
  %add.5 = add i32 %add.4, 0
  %add.6 = add i32 %add.5, %.389
  %add.7 = add i32 %add.6, %.390
  %cast_ptr = bitcast ptr %R8 to ptr
  %.393 = load float, ptr %cast_ptr, align 4
  %cast_ptr.1 = bitcast ptr %R9 to ptr
  %.394 = load float, ptr %cast_ptr.1, align 4
  %cast_ptr.2 = bitcast ptr %R7 to ptr
  %.395 = load float, ptr %cast_ptr.2, align 4
  %fmul = fmul float %.393, %.394
  %fadd = fadd float %fmul, %.395
  %.396 = bitcast ptr %R8 to ptr
  store float %fadd, ptr %.396, align 4
  %cast_ptr.3 = bitcast ptr %R11 to ptr
  %.399 = load float, ptr %cast_ptr.3, align 4
  %cast_ptr.4 = bitcast ptr %R10 to ptr
  %.400 = load float, ptr %cast_ptr.4, align 4
  %cast_ptr.5 = bitcast ptr %R8 to ptr
  %.401 = load float, ptr %cast_ptr.5, align 4
  %fmul.1 = fmul float %.399, %.400
  %fadd.1 = fadd float %fmul.1, %.401
  %.402 = bitcast ptr %R8 to ptr
  store float %fadd.1, ptr %.402, align 4
  %cast_ptr.6 = bitcast ptr %R13 to ptr
  %.405 = load float, ptr %cast_ptr.6, align 4
  %cast_ptr.7 = bitcast ptr %R12 to ptr
  %.406 = load float, ptr %cast_ptr.7, align 4
  %cast_ptr.8 = bitcast ptr %R8 to ptr
  %.407 = load float, ptr %cast_ptr.8, align 4
  %fmul.2 = fmul float %.405, %.406
  %fadd.2 = fadd float %fmul.2, %.407
  %.408 = bitcast ptr %R8 to ptr
  store float %fadd.2, ptr %.408, align 4
  %cast_ptr.9 = bitcast ptr %R15 to ptr
  %.411 = load float, ptr %cast_ptr.9, align 4
  %cast_ptr.10 = bitcast ptr %R14 to ptr
  %.412 = load float, ptr %cast_ptr.10, align 4
  %cast_ptr.11 = bitcast ptr %R8 to ptr
  %.413 = load float, ptr %cast_ptr.11, align 4
  %fmul.3 = fmul float %.411, %.412
  %fadd.3 = fadd float %fmul.3, %.413
  %.414 = bitcast ptr %R8 to ptr
  store float %fadd.3, ptr %.414, align 4
  %cast_ptr.12 = bitcast ptr %R17 to ptr
  %.417 = load float, ptr %cast_ptr.12, align 4
  %cast_ptr.13 = bitcast ptr %R16 to ptr
  %.418 = load float, ptr %cast_ptr.13, align 4
  %cast_ptr.14 = bitcast ptr %R8 to ptr
  %.419 = load float, ptr %cast_ptr.14, align 4
  %fmul.4 = fmul float %.417, %.418
  %fadd.4 = fadd float %fmul.4, %.419
  %.420 = bitcast ptr %R8 to ptr
  store float %fadd.4, ptr %.420, align 4
  %cast_ptr.15 = bitcast ptr %R19 to ptr
  %.423 = load float, ptr %cast_ptr.15, align 4
  %cast_ptr.16 = bitcast ptr %R18 to ptr
  %.424 = load float, ptr %cast_ptr.16, align 4
  %cast_ptr.17 = bitcast ptr %R8 to ptr
  %.425 = load float, ptr %cast_ptr.17, align 4
  %fmul.5 = fmul float %.423, %.424
  %fadd.5 = fadd float %fmul.5, %.425
  %.426 = bitcast ptr %R8 to ptr
  store float %fadd.5, ptr %.426, align 4
  %cast_ptr.18 = bitcast ptr %R21 to ptr
  %.429 = load float, ptr %cast_ptr.18, align 4
  %cast_ptr.19 = bitcast ptr %R20 to ptr
  %.430 = load float, ptr %cast_ptr.19, align 4
  %cast_ptr.20 = bitcast ptr %R8 to ptr
  %.431 = load float, ptr %cast_ptr.20, align 4
  %fmul.6 = fmul float %.429, %.430
  %fadd.6 = fadd float %fmul.6, %.431
  %.432 = bitcast ptr %R8 to ptr
  store float %fadd.6, ptr %.432, align 4
  %cast_ptr.21 = bitcast ptr %R23 to ptr
  %.435 = load float, ptr %cast_ptr.21, align 4
  %cast_ptr.22 = bitcast ptr %R22 to ptr
  %.436 = load float, ptr %cast_ptr.22, align 4
  %cast_ptr.23 = bitcast ptr %R8 to ptr
  %.437 = load float, ptr %cast_ptr.23, align 4
  %fmul.7 = fmul float %.435, %.436
  %fadd.7 = fadd float %fmul.7, %.437
  %.438 = bitcast ptr %R8 to ptr
  store float %fadd.7, ptr %.438, align 4
  %cast_ptr.24 = bitcast ptr %R25 to ptr
  %.441 = load float, ptr %cast_ptr.24, align 4
  %cast_ptr.25 = bitcast ptr %R24 to ptr
  %.442 = load float, ptr %cast_ptr.25, align 4
  %cast_ptr.26 = bitcast ptr %R8 to ptr
  %.443 = load float, ptr %cast_ptr.26, align 4
  %fmul.8 = fmul float %.441, %.442
  %fadd.8 = fadd float %fmul.8, %.443
  %.444 = bitcast ptr %R8 to ptr
  store float %fadd.8, ptr %.444, align 4
  %cast_ptr.27 = bitcast ptr %R27 to ptr
  %.447 = load float, ptr %cast_ptr.27, align 4
  %cast_ptr.28 = bitcast ptr %R26 to ptr
  %.448 = load float, ptr %cast_ptr.28, align 4
  %cast_ptr.29 = bitcast ptr %R8 to ptr
  %.449 = load float, ptr %cast_ptr.29, align 4
  %fmul.9 = fmul float %.447, %.448
  %fadd.9 = fadd float %fmul.9, %.449
  %.450 = bitcast ptr %R8 to ptr
  store float %fadd.9, ptr %.450, align 4
  %cast_ptr.30 = bitcast ptr %R29 to ptr
  %.453 = load float, ptr %cast_ptr.30, align 4
  %cast_ptr.31 = bitcast ptr %R28 to ptr
  %.454 = load float, ptr %cast_ptr.31, align 4
  %cast_ptr.32 = bitcast ptr %R8 to ptr
  %.455 = load float, ptr %cast_ptr.32, align 4
  %fmul.10 = fmul float %.453, %.454
  %fadd.10 = fadd float %fmul.10, %.455
  %.456 = bitcast ptr %R8 to ptr
  store float %fadd.10, ptr %.456, align 4
  %cast_ptr.33 = bitcast ptr %R31 to ptr
  %.459 = load float, ptr %cast_ptr.33, align 4
  %cast_ptr.34 = bitcast ptr %R30 to ptr
  %.460 = load float, ptr %cast_ptr.34, align 4
  %cast_ptr.35 = bitcast ptr %R8 to ptr
  %.461 = load float, ptr %cast_ptr.35, align 4
  %fmul.11 = fmul float %.459, %.460
  %fadd.11 = fadd float %fmul.11, %.461
  %.462 = bitcast ptr %R8 to ptr
  store float %fadd.11, ptr %.462, align 4
  %cast_ptr.36 = bitcast ptr %R33 to ptr
  %.465 = load float, ptr %cast_ptr.36, align 4
  %cast_ptr.37 = bitcast ptr %R32 to ptr
  %.466 = load float, ptr %cast_ptr.37, align 4
  %cast_ptr.38 = bitcast ptr %R8 to ptr
  %.467 = load float, ptr %cast_ptr.38, align 4
  %fmul.12 = fmul float %.465, %.466
  %fadd.12 = fadd float %fmul.12, %.467
  %.468 = bitcast ptr %R8 to ptr
  store float %fadd.12, ptr %.468, align 4
  %cast_ptr.39 = bitcast ptr %R35 to ptr
  %.471 = load float, ptr %cast_ptr.39, align 4
  %cast_ptr.40 = bitcast ptr %R34 to ptr
  %.472 = load float, ptr %cast_ptr.40, align 4
  %cast_ptr.41 = bitcast ptr %R8 to ptr
  %.473 = load float, ptr %cast_ptr.41, align 4
  %fmul.13 = fmul float %.471, %.472
  %fadd.13 = fadd float %fmul.13, %.473
  %.474 = bitcast ptr %R8 to ptr
  store float %fadd.13, ptr %.474, align 4
  %cast_ptr.42 = bitcast ptr %R37 to ptr
  %.477 = load float, ptr %cast_ptr.42, align 4
  %cast_ptr.43 = bitcast ptr %R36 to ptr
  %.478 = load float, ptr %cast_ptr.43, align 4
  %cast_ptr.44 = bitcast ptr %R8 to ptr
  %.479 = load float, ptr %cast_ptr.44, align 4
  %fmul.14 = fmul float %.477, %.478
  %fadd.14 = fadd float %fmul.14, %.479
  %.480 = bitcast ptr %R8 to ptr
  store float %fadd.14, ptr %.480, align 4
  %cast_ptr.45 = bitcast ptr %R39 to ptr
  %.483 = load float, ptr %cast_ptr.45, align 4
  %cast_ptr.46 = bitcast ptr %R38 to ptr
  %.484 = load float, ptr %cast_ptr.46, align 4
  %cast_ptr.47 = bitcast ptr %R8 to ptr
  %.485 = load float, ptr %cast_ptr.47, align 4
  %fmul.15 = fmul float %.483, %.484
  %fadd.15 = fadd float %fmul.15, %.485
  %.486 = bitcast ptr %R7 to ptr
  store float %fadd.15, ptr %.486, align 4
  %.490 = icmp eq i1 %.364, true
  br i1 %.490, label %.L_x_4, label %.L_x_3.loopexit

.L_x_3.loopexit:                                  ; preds = %.L_x_4
  br label %.L_x_3

.L_x_3:                                           ; preds = %.L_x_3.loopexit, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0
  %UR4.1 = phi i32 [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %.350, %.L_x_3.loopexit ]
  %R6.1 = phi i32 [ %.86, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %.342, %.L_x_3.loopexit ]
  %UR5.1 = phi i32 [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %add.3, %.L_x_3.loopexit ]
  %R3.1 = phi i32 [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %add.7, %.L_x_3.loopexit ]
  %.494 = add i32 %R6.1, -1
  %.495 = add i32 %.494, 0
  store i32 %.495, ptr %R8, align 4
  %.498 = load i32, ptr %R8, align 4
  %cmp.6 = icmp sgt i32 %.498, 4
  %.501 = and i1 %cmp.6, true
  %.506 = icmp ne i1 %.501, true
  br i1 %.506, label %.L_x_5, label %.L_x_3_split_0x05a0

.L_x_3_split_0x05a0:                              ; preds = %.L_x_3
  %.509 = load i32, ptr %R2, align 4
  %zext.64 = zext i32 %.509 to i64
  %zext.65 = zext i32 %R3.1 to i64
  %shl.32 = shl i64 %zext.65, 32
  %or.32 = or i64 %shl.32, %zext.64
  %inttoptr_bytes.32 = inttoptr i64 %or.32 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.511 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.512 = bitcast ptr %R8 to ptr
  store float %.511, ptr %.512, align 4
  %zext.66 = zext i32 %UR4.1 to i64
  %zext.67 = zext i32 %UR5.1 to i64
  %shl.33 = shl i64 %zext.67, 32
  %or.33 = or i64 %shl.33, %zext.66
  %inttoptr_bytes.33 = inttoptr i64 %or.33 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.517 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.518 = bitcast ptr %R9 to ptr
  store float %.517, ptr %.518, align 4
  %.521 = load i32, ptr %R2, align 4
  %zext.68 = zext i32 %.521 to i64
  %zext.69 = zext i32 %R3.1 to i64
  %shl.34 = shl i64 %zext.69, 32
  %or.34 = or i64 %shl.34, %zext.68
  %ptr_plus_imm.30 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.30 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.523 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.524 = bitcast ptr %R11 to ptr
  store float %.523, ptr %.524, align 4
  %zext.70 = zext i32 %UR4.1 to i64
  %zext.71 = zext i32 %UR5.1 to i64
  %shl.35 = shl i64 %zext.71, 32
  %or.35 = or i64 %shl.35, %zext.70
  %ptr_plus_imm.31 = add i64 %or.35, 4
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.31 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.529 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.530 = bitcast ptr %R10 to ptr
  store float %.529, ptr %.530, align 4
  %.533 = load i32, ptr %R2, align 4
  %zext.72 = zext i32 %.533 to i64
  %zext.73 = zext i32 %R3.1 to i64
  %shl.36 = shl i64 %zext.73, 32
  %or.36 = or i64 %shl.36, %zext.72
  %ptr_plus_imm.32 = add i64 %or.36, 8
  %inttoptr_bytes.36 = inttoptr i64 %ptr_plus_imm.32 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.535 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.536 = bitcast ptr %R13 to ptr
  store float %.535, ptr %.536, align 4
  %zext.74 = zext i32 %UR4.1 to i64
  %zext.75 = zext i32 %UR5.1 to i64
  %shl.37 = shl i64 %zext.75, 32
  %or.37 = or i64 %shl.37, %zext.74
  %ptr_plus_imm.33 = add i64 %or.37, 8
  %inttoptr_bytes.37 = inttoptr i64 %ptr_plus_imm.33 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.541 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.542 = bitcast ptr %R12 to ptr
  store float %.541, ptr %.542, align 4
  %.545 = load i32, ptr %R2, align 4
  %zext.76 = zext i32 %.545 to i64
  %zext.77 = zext i32 %R3.1 to i64
  %shl.38 = shl i64 %zext.77, 32
  %or.38 = or i64 %shl.38, %zext.76
  %ptr_plus_imm.34 = add i64 %or.38, 12
  %inttoptr_bytes.38 = inttoptr i64 %ptr_plus_imm.34 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.547 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.548 = bitcast ptr %R15 to ptr
  store float %.547, ptr %.548, align 4
  %zext.78 = zext i32 %UR4.1 to i64
  %zext.79 = zext i32 %UR5.1 to i64
  %shl.39 = shl i64 %zext.79, 32
  %or.39 = or i64 %shl.39, %zext.78
  %ptr_plus_imm.35 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %ptr_plus_imm.35 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.553 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.554 = bitcast ptr %R14 to ptr
  store float %.553, ptr %.554, align 4
  %.557 = load i32, ptr %R2, align 4
  %zext.80 = zext i32 %.557 to i64
  %zext.81 = zext i32 %R3.1 to i64
  %shl.40 = shl i64 %zext.81, 32
  %or.40 = or i64 %shl.40, %zext.80
  %ptr_plus_imm.36 = add i64 %or.40, 16
  %inttoptr_bytes.40 = inttoptr i64 %ptr_plus_imm.36 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.559 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.560 = bitcast ptr %R17 to ptr
  store float %.559, ptr %.560, align 4
  %zext.82 = zext i32 %UR4.1 to i64
  %zext.83 = zext i32 %UR5.1 to i64
  %shl.41 = shl i64 %zext.83, 32
  %or.41 = or i64 %shl.41, %zext.82
  %ptr_plus_imm.37 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %ptr_plus_imm.37 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.565 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.566 = bitcast ptr %R16 to ptr
  store float %.565, ptr %.566, align 4
  %.569 = load i32, ptr %R2, align 4
  %zext.84 = zext i32 %.569 to i64
  %zext.85 = zext i32 %R3.1 to i64
  %shl.42 = shl i64 %zext.85, 32
  %or.42 = or i64 %shl.42, %zext.84
  %ptr_plus_imm.38 = add i64 %or.42, 20
  %inttoptr_bytes.42 = inttoptr i64 %ptr_plus_imm.38 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.571 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.572 = bitcast ptr %R19 to ptr
  store float %.571, ptr %.572, align 4
  %zext.86 = zext i32 %UR4.1 to i64
  %zext.87 = zext i32 %UR5.1 to i64
  %shl.43 = shl i64 %zext.87, 32
  %or.43 = or i64 %shl.43, %zext.86
  %ptr_plus_imm.39 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %ptr_plus_imm.39 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.577 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.578 = bitcast ptr %R18 to ptr
  store float %.577, ptr %.578, align 4
  %.581 = load i32, ptr %R2, align 4
  %zext.88 = zext i32 %.581 to i64
  %zext.89 = zext i32 %R3.1 to i64
  %shl.44 = shl i64 %zext.89, 32
  %or.44 = or i64 %shl.44, %zext.88
  %ptr_plus_imm.40 = add i64 %or.44, 24
  %inttoptr_bytes.44 = inttoptr i64 %ptr_plus_imm.40 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.583 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.584 = bitcast ptr %R21 to ptr
  store float %.583, ptr %.584, align 4
  %zext.90 = zext i32 %UR4.1 to i64
  %zext.91 = zext i32 %UR5.1 to i64
  %shl.45 = shl i64 %zext.91, 32
  %or.45 = or i64 %shl.45, %zext.90
  %ptr_plus_imm.41 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %ptr_plus_imm.41 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.589 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.590 = bitcast ptr %R20 to ptr
  store float %.589, ptr %.590, align 4
  %.593 = load i32, ptr %R2, align 4
  %zext.92 = zext i32 %.593 to i64
  %zext.93 = zext i32 %R3.1 to i64
  %shl.46 = shl i64 %zext.93, 32
  %or.46 = or i64 %shl.46, %zext.92
  %ptr_plus_imm.42 = add i64 %or.46, 28
  %inttoptr_bytes.46 = inttoptr i64 %ptr_plus_imm.42 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.595 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.596 = bitcast ptr %R23 to ptr
  store float %.595, ptr %.596, align 4
  %zext.94 = zext i32 %UR4.1 to i64
  %zext.95 = zext i32 %UR5.1 to i64
  %shl.47 = shl i64 %zext.95, 32
  %or.47 = or i64 %shl.47, %zext.94
  %ptr_plus_imm.43 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %ptr_plus_imm.43 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.601 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.602 = bitcast ptr %R22 to ptr
  store float %.601, ptr %.602, align 4
  %.606 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.607 = extractvalue { i32, i1 } %.606, 0
  %.608 = extractvalue { i32, i1 } %.606, 1
  %.609 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.607, i32 0)
  %.610 = extractvalue { i32, i1 } %.609, 0
  %.611 = extractvalue { i32, i1 } %.609, 1
  %.612 = or i1 %.608, %.611
  %.620 = load i32, ptr %R5, align 4
  %.621 = add i32 %.620, 8
  %.622 = add i32 %.621, 0
  store i32 %.622, ptr %R5, align 4
  %.627 = xor i1 true, true
  %.628 = zext i1 %.612 to i32
  %.629 = zext i1 %.627 to i32
  %add.8 = add i32 0, %UR5.1
  %add.9 = add i32 %add.8, 0
  %add.10 = add i32 %add.9, %.628
  %add.11 = add i32 %add.10, %.629
  %.632 = load i32, ptr %R2, align 4
  %.633 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.632, i32 32)
  %.634 = extractvalue { i32, i1 } %.633, 0
  %.635 = extractvalue { i32, i1 } %.633, 1
  %.636 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.634, i32 0)
  %.637 = extractvalue { i32, i1 } %.636, 0
  %.638 = extractvalue { i32, i1 } %.636, 1
  %.639 = or i1 %.635, %.638
  store i32 %.637, ptr %R2, align 4
  %.644 = add i32 %R6.1, -8
  %.645 = add i32 %.644, 0
  %.650 = xor i1 true, true
  %.651 = zext i1 %.639 to i32
  %.652 = zext i1 %.650 to i32
  %add.12 = add i32 0, %R3.1
  %add.13 = add i32 %add.12, 0
  %add.14 = add i32 %add.13, %.651
  %add.15 = add i32 %add.14, %.652
  %cast_ptr.48 = bitcast ptr %R8 to ptr
  %.655 = load float, ptr %cast_ptr.48, align 4
  %cast_ptr.49 = bitcast ptr %R9 to ptr
  %.656 = load float, ptr %cast_ptr.49, align 4
  %cast_ptr.50 = bitcast ptr %R7 to ptr
  %.657 = load float, ptr %cast_ptr.50, align 4
  %fmul.16 = fmul float %.655, %.656
  %fadd.16 = fadd float %fmul.16, %.657
  %.658 = bitcast ptr %R8 to ptr
  store float %fadd.16, ptr %.658, align 4
  %cast_ptr.51 = bitcast ptr %R11 to ptr
  %.661 = load float, ptr %cast_ptr.51, align 4
  %cast_ptr.52 = bitcast ptr %R10 to ptr
  %.662 = load float, ptr %cast_ptr.52, align 4
  %cast_ptr.53 = bitcast ptr %R8 to ptr
  %.663 = load float, ptr %cast_ptr.53, align 4
  %fmul.17 = fmul float %.661, %.662
  %fadd.17 = fadd float %fmul.17, %.663
  %.664 = bitcast ptr %R8 to ptr
  store float %fadd.17, ptr %.664, align 4
  %cast_ptr.54 = bitcast ptr %R13 to ptr
  %.667 = load float, ptr %cast_ptr.54, align 4
  %cast_ptr.55 = bitcast ptr %R12 to ptr
  %.668 = load float, ptr %cast_ptr.55, align 4
  %cast_ptr.56 = bitcast ptr %R8 to ptr
  %.669 = load float, ptr %cast_ptr.56, align 4
  %fmul.18 = fmul float %.667, %.668
  %fadd.18 = fadd float %fmul.18, %.669
  %.670 = bitcast ptr %R8 to ptr
  store float %fadd.18, ptr %.670, align 4
  %cast_ptr.57 = bitcast ptr %R15 to ptr
  %.673 = load float, ptr %cast_ptr.57, align 4
  %cast_ptr.58 = bitcast ptr %R14 to ptr
  %.674 = load float, ptr %cast_ptr.58, align 4
  %cast_ptr.59 = bitcast ptr %R8 to ptr
  %.675 = load float, ptr %cast_ptr.59, align 4
  %fmul.19 = fmul float %.673, %.674
  %fadd.19 = fadd float %fmul.19, %.675
  %.676 = bitcast ptr %R8 to ptr
  store float %fadd.19, ptr %.676, align 4
  %cast_ptr.60 = bitcast ptr %R17 to ptr
  %.679 = load float, ptr %cast_ptr.60, align 4
  %cast_ptr.61 = bitcast ptr %R16 to ptr
  %.680 = load float, ptr %cast_ptr.61, align 4
  %cast_ptr.62 = bitcast ptr %R8 to ptr
  %.681 = load float, ptr %cast_ptr.62, align 4
  %fmul.20 = fmul float %.679, %.680
  %fadd.20 = fadd float %fmul.20, %.681
  %.682 = bitcast ptr %R8 to ptr
  store float %fadd.20, ptr %.682, align 4
  %cast_ptr.63 = bitcast ptr %R19 to ptr
  %.685 = load float, ptr %cast_ptr.63, align 4
  %cast_ptr.64 = bitcast ptr %R18 to ptr
  %.686 = load float, ptr %cast_ptr.64, align 4
  %cast_ptr.65 = bitcast ptr %R8 to ptr
  %.687 = load float, ptr %cast_ptr.65, align 4
  %fmul.21 = fmul float %.685, %.686
  %fadd.21 = fadd float %fmul.21, %.687
  %.688 = bitcast ptr %R8 to ptr
  store float %fadd.21, ptr %.688, align 4
  %cast_ptr.66 = bitcast ptr %R21 to ptr
  %.691 = load float, ptr %cast_ptr.66, align 4
  %cast_ptr.67 = bitcast ptr %R20 to ptr
  %.692 = load float, ptr %cast_ptr.67, align 4
  %cast_ptr.68 = bitcast ptr %R8 to ptr
  %.693 = load float, ptr %cast_ptr.68, align 4
  %fmul.22 = fmul float %.691, %.692
  %fadd.22 = fadd float %fmul.22, %.693
  %.694 = bitcast ptr %R8 to ptr
  store float %fadd.22, ptr %.694, align 4
  %cast_ptr.69 = bitcast ptr %R23 to ptr
  %.697 = load float, ptr %cast_ptr.69, align 4
  %cast_ptr.70 = bitcast ptr %R22 to ptr
  %.698 = load float, ptr %cast_ptr.70, align 4
  %cast_ptr.71 = bitcast ptr %R8 to ptr
  %.699 = load float, ptr %cast_ptr.71, align 4
  %fmul.23 = fmul float %.697, %.698
  %fadd.23 = fadd float %fmul.23, %.699
  %.700 = bitcast ptr %R7 to ptr
  store float %fadd.23, ptr %.700, align 4
  br label %.L_x_5

.L_x_5:                                           ; preds = %.L_x_3_split_0x05a0, %.L_x_3
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_3 ], [ %.610, %.L_x_3_split_0x05a0 ]
  %R6.3 = phi i32 [ %R6.1, %.L_x_3 ], [ %.645, %.L_x_3_split_0x05a0 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_3 ], [ %add.11, %.L_x_3_split_0x05a0 ]
  %R3.3 = phi i32 [ %R3.1, %.L_x_3 ], [ %add.15, %.L_x_3_split_0x05a0 ]
  %cmp.7 = icmp ne i32 %R6.3, 1
  %.707 = or i1 %cmp.7, %.103
  %.712 = icmp ne i1 %.707, true
  br i1 %.712, label %.L_x_1, label %.L_x_2.preheader

.L_x_2.preheader:                                 ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110, %.L_x_5
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_5 ], [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %R6.0.ph = phi i32 [ %R6.3, %.L_x_5 ], [ %.86, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_5 ], [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %R3.0.ph = phi i32 [ %R3.3, %.L_x_5 ], [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  br label %.L_x_2

.L_x_2:                                           ; preds = %.L_x_2.preheader, %.L_x_2
  %UR4.0 = phi i32 [ %.773, %.L_x_2 ], [ %UR4.0.ph, %.L_x_2.preheader ]
  %R6.0 = phi i32 [ %.765, %.L_x_2 ], [ %R6.0.ph, %.L_x_2.preheader ]
  %UR5.0 = phi i32 [ %add.19, %.L_x_2 ], [ %UR5.0.ph, %.L_x_2.preheader ]
  %R3.0 = phi i32 [ %.828, %.L_x_2 ], [ %R3.0.ph, %.L_x_2.preheader ]
  %.715 = load i32, ptr %R2, align 4
  %zext.96 = zext i32 %.715 to i64
  %zext.97 = zext i32 %R3.0 to i64
  %shl.48 = shl i64 %zext.97, 32
  %or.48 = or i64 %shl.48, %zext.96
  %inttoptr_bytes.48 = inttoptr i64 %or.48 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.717 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.718 = bitcast ptr %R8 to ptr
  store float %.717, ptr %.718, align 4
  %zext.98 = zext i32 %UR4.0 to i64
  %zext.99 = zext i32 %UR5.0 to i64
  %shl.49 = shl i64 %zext.99, 32
  %or.49 = or i64 %shl.49, %zext.98
  %inttoptr_bytes.49 = inttoptr i64 %or.49 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.723 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.724 = bitcast ptr %R9 to ptr
  store float %.723, ptr %.724, align 4
  %.727 = load i32, ptr %R2, align 4
  %zext.100 = zext i32 %.727 to i64
  %zext.101 = zext i32 %R3.0 to i64
  %shl.50 = shl i64 %zext.101, 32
  %or.50 = or i64 %shl.50, %zext.100
  %ptr_plus_imm.44 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %ptr_plus_imm.44 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.729 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.730 = bitcast ptr %R11 to ptr
  store float %.729, ptr %.730, align 4
  %zext.102 = zext i32 %UR4.0 to i64
  %zext.103 = zext i32 %UR5.0 to i64
  %shl.51 = shl i64 %zext.103, 32
  %or.51 = or i64 %shl.51, %zext.102
  %ptr_plus_imm.45 = add i64 %or.51, 4
  %inttoptr_bytes.51 = inttoptr i64 %ptr_plus_imm.45 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.735 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.736 = bitcast ptr %R10 to ptr
  store float %.735, ptr %.736, align 4
  %.739 = load i32, ptr %R2, align 4
  %zext.104 = zext i32 %.739 to i64
  %zext.105 = zext i32 %R3.0 to i64
  %shl.52 = shl i64 %zext.105, 32
  %or.52 = or i64 %shl.52, %zext.104
  %ptr_plus_imm.46 = add i64 %or.52, 8
  %inttoptr_bytes.52 = inttoptr i64 %ptr_plus_imm.46 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.741 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.742 = bitcast ptr %R13 to ptr
  store float %.741, ptr %.742, align 4
  %zext.106 = zext i32 %UR4.0 to i64
  %zext.107 = zext i32 %UR5.0 to i64
  %shl.53 = shl i64 %zext.107, 32
  %or.53 = or i64 %shl.53, %zext.106
  %ptr_plus_imm.47 = add i64 %or.53, 8
  %inttoptr_bytes.53 = inttoptr i64 %ptr_plus_imm.47 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.747 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.748 = bitcast ptr %R12 to ptr
  store float %.747, ptr %.748, align 4
  %.751 = load i32, ptr %R2, align 4
  %zext.108 = zext i32 %.751 to i64
  %zext.109 = zext i32 %R3.0 to i64
  %shl.54 = shl i64 %zext.109, 32
  %or.54 = or i64 %shl.54, %zext.108
  %ptr_plus_imm.48 = add i64 %or.54, 12
  %inttoptr_bytes.54 = inttoptr i64 %ptr_plus_imm.48 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.753 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.754 = bitcast ptr %R15 to ptr
  store float %.753, ptr %.754, align 4
  %zext.110 = zext i32 %UR4.0 to i64
  %zext.111 = zext i32 %UR5.0 to i64
  %shl.55 = shl i64 %zext.111, 32
  %or.55 = or i64 %shl.55, %zext.110
  %ptr_plus_imm.49 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %ptr_plus_imm.49 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.759 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.760 = bitcast ptr %R14 to ptr
  store float %.759, ptr %.760, align 4
  %.764 = add i32 %R6.0, -4
  %.765 = add i32 %.764, 0
  %.769 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.770 = extractvalue { i32, i1 } %.769, 0
  %.771 = extractvalue { i32, i1 } %.769, 1
  %.772 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.770, i32 0)
  %.773 = extractvalue { i32, i1 } %.772, 0
  %.774 = extractvalue { i32, i1 } %.772, 1
  %.775 = or i1 %.771, %.774
  %.779 = load i32, ptr %R5, align 4
  %.780 = add i32 %.779, 4
  %.781 = add i32 %.780, 0
  store i32 %.781, ptr %R5, align 4
  %cmp.8 = icmp ne i32 %.765, 1
  %.787 = and i1 %cmp.8, true
  %.793 = xor i1 true, true
  %.794 = zext i1 %.775 to i32
  %.795 = zext i1 %.793 to i32
  %add.16 = add i32 0, %UR5.0
  %add.17 = add i32 %add.16, 0
  %add.18 = add i32 %add.17, %.794
  %add.19 = add i32 %add.18, %.795
  %cast_ptr.72 = bitcast ptr %R8 to ptr
  %.798 = load float, ptr %cast_ptr.72, align 4
  %cast_ptr.73 = bitcast ptr %R9 to ptr
  %.799 = load float, ptr %cast_ptr.73, align 4
  %cast_ptr.74 = bitcast ptr %R7 to ptr
  %.800 = load float, ptr %cast_ptr.74, align 4
  %fmul.24 = fmul float %.798, %.799
  %fadd.24 = fadd float %fmul.24, %.800
  %.801 = bitcast ptr %R8 to ptr
  store float %fadd.24, ptr %.801, align 4
  %.804 = load i32, ptr %R2, align 4
  %.805 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.804, i32 16)
  %.806 = extractvalue { i32, i1 } %.805, 0
  %.807 = extractvalue { i32, i1 } %.805, 1
  %.808 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.806, i32 0)
  %.809 = extractvalue { i32, i1 } %.808, 0
  %.810 = extractvalue { i32, i1 } %.808, 1
  %.811 = or i1 %.807, %.810
  store i32 %.809, ptr %R9, align 4
  %.815 = load i32, ptr %R9, align 4
  store i32 %.815, ptr %R2, align 4
  %cast_ptr.75 = bitcast ptr %R11 to ptr
  %.818 = load float, ptr %cast_ptr.75, align 4
  %cast_ptr.76 = bitcast ptr %R10 to ptr
  %.819 = load float, ptr %cast_ptr.76, align 4
  %cast_ptr.77 = bitcast ptr %R8 to ptr
  %.820 = load float, ptr %cast_ptr.77, align 4
  %fmul.25 = fmul float %.818, %.819
  %fadd.25 = fadd float %fmul.25, %.820
  %.821 = bitcast ptr %R8 to ptr
  store float %fadd.25, ptr %.821, align 4
  %imad_mul.6 = mul i32 0, 0
  %imad_add.6 = add i32 %imad_mul.6, %R3.0
  %imad_ext4 = zext i1 %.811 to i32
  %imad_add_x = add i32 %imad_add.6, %imad_ext4
  store i32 %imad_add_x, ptr %R10, align 4
  %.828 = load i32, ptr %R10, align 4
  %cast_ptr.78 = bitcast ptr %R13 to ptr
  %.831 = load float, ptr %cast_ptr.78, align 4
  %cast_ptr.79 = bitcast ptr %R12 to ptr
  %.832 = load float, ptr %cast_ptr.79, align 4
  %cast_ptr.80 = bitcast ptr %R8 to ptr
  %.833 = load float, ptr %cast_ptr.80, align 4
  %fmul.26 = fmul float %.831, %.832
  %fadd.26 = fadd float %fmul.26, %.833
  %.834 = bitcast ptr %R8 to ptr
  store float %fadd.26, ptr %.834, align 4
  %cast_ptr.81 = bitcast ptr %R15 to ptr
  %.837 = load float, ptr %cast_ptr.81, align 4
  %cast_ptr.82 = bitcast ptr %R14 to ptr
  %.838 = load float, ptr %cast_ptr.82, align 4
  %cast_ptr.83 = bitcast ptr %R8 to ptr
  %.839 = load float, ptr %cast_ptr.83, align 4
  %fmul.27 = fmul float %.837, %.838
  %fadd.27 = fadd float %fmul.27, %.839
  %.840 = bitcast ptr %R7 to ptr
  store float %fadd.27, ptr %.840, align 4
  %.844 = icmp eq i1 %.787, true
  br i1 %.844, label %.L_x_2, label %.L_x_1.loopexit

.L_x_1.loopexit:                                  ; preds = %.L_x_2
  br label %.L_x_1

.L_x_1:                                           ; preds = %.L_x_1.loopexit, %.L_x_5, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0
  %cmp.9 = icmp ne i32 %.76, 0
  %.850 = and i1 %cmp.9, true
  %.855 = icmp ne i1 %.850, true
  br i1 %.855, label %.L_x_0, label %.L_x_1_split_0x0930

.L_x_1_split_0x0930:                              ; preds = %.L_x_1
  %imad_mul.7 = mul i32 0, 0
  %imad_add.7 = add i32 %imad_mul.7, 4
  store i32 %imad_add.7, ptr %R8, align 4
  %.861 = load i32, ptr %R5, align 4
  %imad_mul.8 = mul i32 %imad_add, %Arg_4
  %imad_add.8 = add i32 %imad_mul.8, %.861
  store i32 %imad_add.8, ptr %R2, align 4
  %.864 = load i32, ptr %R2, align 4
  %.865 = load i32, ptr %R8, align 4
  %imad_ext1.1 = zext i32 %.864 to i64
  %imad_ext2.1 = zext i32 %.865 to i64
  %imad_mul.9 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.866 = ptrtoint ptr %Arg_1 to i64
  %imad_add.9 = add i64 %imad_mul.9, %.866
  %.867 = and i64 %imad_add.9, -4294967296
  %.868 = lshr i64 %.867, 32
  %trunc32.4 = trunc i64 %.868 to i32
  %trunc32.5 = trunc i64 %imad_add.9 to i32
  store i32 %trunc32.5, ptr %R2, align 4
  %.872 = load i32, ptr %R5, align 4
  %.873 = load i32, ptr %R8, align 4
  %imad_ext1.2 = zext i32 %.872 to i64
  %imad_ext2.2 = zext i32 %.873 to i64
  %imad_mul.10 = mul i64 %imad_ext1.2, %imad_ext2.2
  %.874 = ptrtoint ptr %Arg_0 to i64
  %imad_add.10 = add i64 %imad_mul.10, %.874
  %.875 = and i64 %imad_add.10, -4294967296
  %.876 = lshr i64 %.875, 32
  %trunc32.6 = trunc i64 %.876 to i32
  %trunc32.7 = trunc i64 %imad_add.10 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  store i32 %trunc32.6, ptr %R9, align 4
  %.880 = load i32, ptr %R2, align 4
  br label %.L_x_6

.L_x_6:                                           ; preds = %.L_x_6, %.L_x_1_split_0x0930
  %R6.4 = phi i32 [ %.880, %.L_x_1_split_0x0930 ], [ %.916, %.L_x_6 ]
  %R4.0 = phi i32 [ %.76, %.L_x_1_split_0x0930 ], [ %.901, %.L_x_6 ]
  %R3.4 = phi i32 [ %trunc32.4, %.L_x_1_split_0x0930 ], [ %imad_add_x.1, %.L_x_6 ]
  store i32 %R6.4, ptr %R2, align 4
  %.887 = load i32, ptr %R8, align 4
  %zext.112 = zext i32 %.887 to i64
  %.888 = load i32, ptr %R9, align 4
  %zext.113 = zext i32 %.888 to i64
  %shl.56 = shl i64 %zext.113, 32
  %or.56 = or i64 %shl.56, %zext.112
  %inttoptr_bytes.56 = inttoptr i64 %or.56 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.889 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.890 = bitcast ptr %R5 to ptr
  store float %.889, ptr %.890, align 4
  %.893 = load i32, ptr %R2, align 4
  %zext.114 = zext i32 %.893 to i64
  %zext.115 = zext i32 %R3.4 to i64
  %shl.57 = shl i64 %zext.115, 32
  %or.57 = or i64 %shl.57, %zext.114
  %inttoptr_bytes.57 = inttoptr i64 %or.57 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.895 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.896 = bitcast ptr %R2 to ptr
  store float %.895, ptr %.896, align 4
  %.900 = add i32 %R4.0, -1
  %.901 = add i32 %.900, 0
  %cmp.10 = icmp ne i32 %.901, 0
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
  %imad_mul.11 = mul i32 0, 0
  %imad_add.11 = add i32 %imad_mul.11, %R3.4
  %imad_ext4.1 = zext i1 %.918 to i32
  %imad_add_x.1 = add i32 %imad_add.11, %imad_ext4.1
  %.937 = load i32, ptr %R9, align 4
  %.939 = xor i1 true, true
  %.940 = zext i1 %.929 to i32
  %.941 = zext i1 %.939 to i32
  %add.20 = add i32 0, %.937
  %add.21 = add i32 %add.20, 0
  %add.22 = add i32 %add.21, %.940
  %add.23 = add i32 %add.22, %.941
  store i32 %add.23, ptr %R9, align 4
  %cast_ptr.84 = bitcast ptr %R2 to ptr
  %.944 = load float, ptr %cast_ptr.84, align 4
  %cast_ptr.85 = bitcast ptr %R5 to ptr
  %.945 = load float, ptr %cast_ptr.85, align 4
  %cast_ptr.86 = bitcast ptr %R7 to ptr
  %.946 = load float, ptr %cast_ptr.86, align 4
  %fmul.28 = fmul float %.944, %.945
  %fadd.28 = fadd float %fmul.28, %.946
  %.947 = bitcast ptr %R7 to ptr
  store float %fadd.28, ptr %.947, align 4
  %.951 = icmp eq i1 %.907, true
  br i1 %.951, label %.L_x_6, label %.L_x_0.loopexit

.L_x_0.loopexit:                                  ; preds = %.L_x_6
  br label %.L_x_0

.L_x_0:                                           ; preds = %.L_x_0.loopexit, %.L_x_1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060
  store i32 4, ptr %R5, align 4
  %.957 = load i32, ptr %R5, align 4
  %imad_ext1.3 = zext i32 %imad_add to i64
  %imad_ext2.3 = zext i32 %.957 to i64
  %imad_mul.12 = mul i64 %imad_ext1.3, %imad_ext2.3
  %.958 = ptrtoint ptr %Arg_2 to i64
  %imad_add.12 = add i64 %imad_mul.12, %.958
  %.959 = and i64 %imad_add.12, -4294967296
  %.960 = lshr i64 %.959, 32
  %trunc32.8 = trunc i64 %.960 to i32
  %trunc32.9 = trunc i64 %imad_add.12 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  %.964 = load i32, ptr %R2, align 4
  %zext.116 = zext i32 %.964 to i64
  %zext.117 = zext i32 %trunc32.8 to i64
  %shl.58 = shl i64 %zext.117, 32
  %or.58 = or i64 %shl.58, %zext.116
  %inttoptr_bytes.58 = inttoptr i64 %or.58 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.966 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.967 = bitcast ptr %R2 to ptr
  store float %.966, ptr %.967, align 4
  %.971 = load i32, ptr %R5, align 4
  %imad_ext1.4 = zext i32 %imad_add to i64
  %imad_ext2.4 = zext i32 %.971 to i64
  %imad_mul.13 = mul i64 %imad_ext1.4, %imad_ext2.4
  %.972 = ptrtoint ptr %Arg_3 to i64
  %imad_add.13 = add i64 %imad_mul.13, %.972
  %.973 = and i64 %imad_add.13, -4294967296
  %.974 = lshr i64 %.973, 32
  %trunc32.10 = trunc i64 %.974 to i32
  %trunc32.11 = trunc i64 %imad_add.13 to i32
  store i32 %trunc32.10, ptr %R5, align 4
  %cast_ptr.87 = bitcast ptr %R2 to ptr
  %.978 = load float, ptr %cast_ptr.87, align 4
  %cast_ptr.88 = bitcast ptr %R7 to ptr
  %.979 = load float, ptr %cast_ptr.88, align 4
  %fadd.29 = fadd float %.978, %.979
  %.980 = bitcast ptr %R7 to ptr
  store float %fadd.29, ptr %.980, align 4
  %cast_ptr.89 = bitcast ptr %R7 to ptr
  %.983 = load float, ptr %cast_ptr.89, align 4
  %zext.118 = zext i32 %trunc32.11 to i64
  %.985 = load i32, ptr %R5, align 4
  %zext.119 = zext i32 %.985 to i64
  %shl.59 = shl i64 %zext.119, 32
  %or.59 = or i64 %shl.59, %zext.118
  %inttoptr_bytes.59 = inttoptr i64 %or.59 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.983, ptr addrspace(1) %ptr_cast_for_access.59, align 4
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
  %.69 = bitcast ptr %R7 to ptr
  store float 0.000000e+00, ptr %.69, align 4
  store i32 0, ptr %R5, align 4
  %.75 = icmp ne i1 %.65, true
  br i1 %.75, label %.L_x_9, label %.text._Z8fc_layerPfS_S_S_ii_split_0x0100

.text._Z8fc_layerPfS_S_S_ii_split_0x0100:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x00a0
  %.79 = sub i32 0, %.59
  %.80 = add i32 %.79, %Arg_4
  %.81 = add i32 %.80, 0
  %imad_mul.2 = mul i32 %imad_add, %Arg_4
  %imad_add.2 = add i32 %imad_mul.2, 0
  store i32 %imad_add.2, ptr %R2, align 4
  %.87 = ptrtoint ptr %Arg_0 to i64
  %.88 = and i64 %.87, -4294967296
  %.89 = lshr i64 %.88, 32
  %trunc32 = trunc i64 %.89 to i32
  %trunc32.1 = trunc i64 %.87 to i32
  %imad_mul.3 = mul i32 0, 0
  %imad_add.3 = add i32 %imad_mul.3, 4
  %cmp.3 = icmp sgt i32 %.81, 0
  %.98 = and i1 %cmp.3, true
  %.102 = bitcast ptr %R7 to ptr
  store float 0.000000e+00, ptr %.102, align 4
  %.105 = load i32, ptr %R2, align 4
  %imad_ext1 = zext i32 %.105 to i64
  %imad_ext2 = zext i32 %imad_add.3 to i64
  %imad_mul.4 = mul i64 %imad_ext1, %imad_ext2
  %.107 = ptrtoint ptr %Arg_1 to i64
  %imad_add.4 = add i64 %imad_mul.4, %.107
  %.108 = and i64 %imad_add.4, -4294967296
  %.109 = lshr i64 %.108, 32
  %trunc32.2 = trunc i64 %.109 to i32
  %trunc32.3 = trunc i64 %imad_add.4 to i32
  store i32 %trunc32.3, ptr %R2, align 4
  store i32 0, ptr %R5, align 4
  %.116 = icmp ne i1 %.98, true
  br i1 %.116, label %.L_x_10.preheader, label %.text._Z8fc_layerPfS_S_S_ii_split_0x0190

.text._Z8fc_layerPfS_S_S_ii_split_0x0190:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0100
  %cmp.4 = icmp sgt i32 %.81, 12
  %.122 = and i1 %cmp.4, true
  %.130 = icmp ne i1 %.122, true
  br i1 %.130, label %.L_x_11, label %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0

.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0190
  br label %.L_x_12

.L_x_12:                                          ; preds = %.L_x_12, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0
  %UR4.2 = phi i32 [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %.340, %.L_x_12 ]
  %R6.2 = phi i32 [ %.81, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %.332, %.L_x_12 ]
  %UR5.2 = phi i32 [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %add.3, %.L_x_12 ]
  %R3.2 = phi i32 [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %imad_add_x, %.L_x_12 ]
  %.138 = load i32, ptr %R2, align 4
  %zext = zext i32 %.138 to i64
  %zext.1 = zext i32 %R3.2 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.140 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.141 = bitcast ptr %R8 to ptr
  store float %.140, ptr %.141, align 4
  %zext.2 = zext i32 %UR4.2 to i64
  %zext.3 = zext i32 %UR5.2 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.146 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.147 = bitcast ptr %R9 to ptr
  store float %.146, ptr %.147, align 4
  %.150 = load i32, ptr %R2, align 4
  %zext.4 = zext i32 %.150 to i64
  %zext.5 = zext i32 %R3.2 to i64
  %shl.2 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.2, %zext.4
  %ptr_plus_imm = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.152 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.153 = bitcast ptr %R11 to ptr
  store float %.152, ptr %.153, align 4
  %zext.6 = zext i32 %UR4.2 to i64
  %zext.7 = zext i32 %UR5.2 to i64
  %shl.3 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.3, %zext.6
  %ptr_plus_imm.1 = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.158 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.159 = bitcast ptr %R10 to ptr
  store float %.158, ptr %.159, align 4
  %.162 = load i32, ptr %R2, align 4
  %zext.8 = zext i32 %.162 to i64
  %zext.9 = zext i32 %R3.2 to i64
  %shl.4 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.4, %zext.8
  %ptr_plus_imm.2 = add i64 %or.4, 8
  %inttoptr_bytes.4 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.164 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.165 = bitcast ptr %R13 to ptr
  store float %.164, ptr %.165, align 4
  %zext.10 = zext i32 %UR4.2 to i64
  %zext.11 = zext i32 %UR5.2 to i64
  %shl.5 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.5, %zext.10
  %ptr_plus_imm.3 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.170 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.171 = bitcast ptr %R12 to ptr
  store float %.170, ptr %.171, align 4
  %.174 = load i32, ptr %R2, align 4
  %zext.12 = zext i32 %.174 to i64
  %zext.13 = zext i32 %R3.2 to i64
  %shl.6 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.6, %zext.12
  %ptr_plus_imm.4 = add i64 %or.6, 12
  %inttoptr_bytes.6 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.176 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.177 = bitcast ptr %R15 to ptr
  store float %.176, ptr %.177, align 4
  %zext.14 = zext i32 %UR4.2 to i64
  %zext.15 = zext i32 %UR5.2 to i64
  %shl.7 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.7, %zext.14
  %ptr_plus_imm.5 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.182 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.183 = bitcast ptr %R14 to ptr
  store float %.182, ptr %.183, align 4
  %.186 = load i32, ptr %R2, align 4
  %zext.16 = zext i32 %.186 to i64
  %zext.17 = zext i32 %R3.2 to i64
  %shl.8 = shl i64 %zext.17, 32
  %or.8 = or i64 %shl.8, %zext.16
  %ptr_plus_imm.6 = add i64 %or.8, 16
  %inttoptr_bytes.8 = inttoptr i64 %ptr_plus_imm.6 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.188 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.189 = bitcast ptr %R17 to ptr
  store float %.188, ptr %.189, align 4
  %zext.18 = zext i32 %UR4.2 to i64
  %zext.19 = zext i32 %UR5.2 to i64
  %shl.9 = shl i64 %zext.19, 32
  %or.9 = or i64 %shl.9, %zext.18
  %ptr_plus_imm.7 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm.7 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.194 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.195 = bitcast ptr %R16 to ptr
  store float %.194, ptr %.195, align 4
  %.198 = load i32, ptr %R2, align 4
  %zext.20 = zext i32 %.198 to i64
  %zext.21 = zext i32 %R3.2 to i64
  %shl.10 = shl i64 %zext.21, 32
  %or.10 = or i64 %shl.10, %zext.20
  %ptr_plus_imm.8 = add i64 %or.10, 20
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.8 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.200 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.201 = bitcast ptr %R19 to ptr
  store float %.200, ptr %.201, align 4
  %zext.22 = zext i32 %UR4.2 to i64
  %zext.23 = zext i32 %UR5.2 to i64
  %shl.11 = shl i64 %zext.23, 32
  %or.11 = or i64 %shl.11, %zext.22
  %ptr_plus_imm.9 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.9 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.206 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.207 = bitcast ptr %R18 to ptr
  store float %.206, ptr %.207, align 4
  %.210 = load i32, ptr %R2, align 4
  %zext.24 = zext i32 %.210 to i64
  %zext.25 = zext i32 %R3.2 to i64
  %shl.12 = shl i64 %zext.25, 32
  %or.12 = or i64 %shl.12, %zext.24
  %ptr_plus_imm.10 = add i64 %or.12, 24
  %inttoptr_bytes.12 = inttoptr i64 %ptr_plus_imm.10 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.212 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.213 = bitcast ptr %R21 to ptr
  store float %.212, ptr %.213, align 4
  %zext.26 = zext i32 %UR4.2 to i64
  %zext.27 = zext i32 %UR5.2 to i64
  %shl.13 = shl i64 %zext.27, 32
  %or.13 = or i64 %shl.13, %zext.26
  %ptr_plus_imm.11 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %ptr_plus_imm.11 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.218 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.219 = bitcast ptr %R20 to ptr
  store float %.218, ptr %.219, align 4
  %.222 = load i32, ptr %R2, align 4
  %zext.28 = zext i32 %.222 to i64
  %zext.29 = zext i32 %R3.2 to i64
  %shl.14 = shl i64 %zext.29, 32
  %or.14 = or i64 %shl.14, %zext.28
  %ptr_plus_imm.12 = add i64 %or.14, 28
  %inttoptr_bytes.14 = inttoptr i64 %ptr_plus_imm.12 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  %.224 = load float, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  %.225 = bitcast ptr %R23 to ptr
  store float %.224, ptr %.225, align 4
  %zext.30 = zext i32 %UR4.2 to i64
  %zext.31 = zext i32 %UR5.2 to i64
  %shl.15 = shl i64 %zext.31, 32
  %or.15 = or i64 %shl.15, %zext.30
  %ptr_plus_imm.13 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %ptr_plus_imm.13 to ptr addrspace(1)
  %ptr_cast_for_access.15 = bitcast ptr addrspace(1) %inttoptr_bytes.15 to ptr addrspace(1)
  %.230 = load float, ptr addrspace(1) %ptr_cast_for_access.15, align 4
  %.231 = bitcast ptr %R22 to ptr
  store float %.230, ptr %.231, align 4
  %.234 = load i32, ptr %R2, align 4
  %zext.32 = zext i32 %.234 to i64
  %zext.33 = zext i32 %R3.2 to i64
  %shl.16 = shl i64 %zext.33, 32
  %or.16 = or i64 %shl.16, %zext.32
  %ptr_plus_imm.14 = add i64 %or.16, 32
  %inttoptr_bytes.16 = inttoptr i64 %ptr_plus_imm.14 to ptr addrspace(1)
  %ptr_cast_for_access.16 = bitcast ptr addrspace(1) %inttoptr_bytes.16 to ptr addrspace(1)
  %.236 = load float, ptr addrspace(1) %ptr_cast_for_access.16, align 4
  %.237 = bitcast ptr %R25 to ptr
  store float %.236, ptr %.237, align 4
  %zext.34 = zext i32 %UR4.2 to i64
  %zext.35 = zext i32 %UR5.2 to i64
  %shl.17 = shl i64 %zext.35, 32
  %or.17 = or i64 %shl.17, %zext.34
  %ptr_plus_imm.15 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %ptr_plus_imm.15 to ptr addrspace(1)
  %ptr_cast_for_access.17 = bitcast ptr addrspace(1) %inttoptr_bytes.17 to ptr addrspace(1)
  %.242 = load float, ptr addrspace(1) %ptr_cast_for_access.17, align 4
  %.243 = bitcast ptr %R24 to ptr
  store float %.242, ptr %.243, align 4
  %.246 = load i32, ptr %R2, align 4
  %zext.36 = zext i32 %.246 to i64
  %zext.37 = zext i32 %R3.2 to i64
  %shl.18 = shl i64 %zext.37, 32
  %or.18 = or i64 %shl.18, %zext.36
  %ptr_plus_imm.16 = add i64 %or.18, 36
  %inttoptr_bytes.18 = inttoptr i64 %ptr_plus_imm.16 to ptr addrspace(1)
  %ptr_cast_for_access.18 = bitcast ptr addrspace(1) %inttoptr_bytes.18 to ptr addrspace(1)
  %.248 = load float, ptr addrspace(1) %ptr_cast_for_access.18, align 4
  %.249 = bitcast ptr %R27 to ptr
  store float %.248, ptr %.249, align 4
  %zext.38 = zext i32 %UR4.2 to i64
  %zext.39 = zext i32 %UR5.2 to i64
  %shl.19 = shl i64 %zext.39, 32
  %or.19 = or i64 %shl.19, %zext.38
  %ptr_plus_imm.17 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %ptr_plus_imm.17 to ptr addrspace(1)
  %ptr_cast_for_access.19 = bitcast ptr addrspace(1) %inttoptr_bytes.19 to ptr addrspace(1)
  %.254 = load float, ptr addrspace(1) %ptr_cast_for_access.19, align 4
  %.255 = bitcast ptr %R26 to ptr
  store float %.254, ptr %.255, align 4
  %.258 = load i32, ptr %R2, align 4
  %zext.40 = zext i32 %.258 to i64
  %zext.41 = zext i32 %R3.2 to i64
  %shl.20 = shl i64 %zext.41, 32
  %or.20 = or i64 %shl.20, %zext.40
  %ptr_plus_imm.18 = add i64 %or.20, 40
  %inttoptr_bytes.20 = inttoptr i64 %ptr_plus_imm.18 to ptr addrspace(1)
  %ptr_cast_for_access.20 = bitcast ptr addrspace(1) %inttoptr_bytes.20 to ptr addrspace(1)
  %.260 = load float, ptr addrspace(1) %ptr_cast_for_access.20, align 4
  %.261 = bitcast ptr %R29 to ptr
  store float %.260, ptr %.261, align 4
  %zext.42 = zext i32 %UR4.2 to i64
  %zext.43 = zext i32 %UR5.2 to i64
  %shl.21 = shl i64 %zext.43, 32
  %or.21 = or i64 %shl.21, %zext.42
  %ptr_plus_imm.19 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %ptr_plus_imm.19 to ptr addrspace(1)
  %ptr_cast_for_access.21 = bitcast ptr addrspace(1) %inttoptr_bytes.21 to ptr addrspace(1)
  %.266 = load float, ptr addrspace(1) %ptr_cast_for_access.21, align 4
  %.267 = bitcast ptr %R28 to ptr
  store float %.266, ptr %.267, align 4
  %.270 = load i32, ptr %R2, align 4
  %zext.44 = zext i32 %.270 to i64
  %zext.45 = zext i32 %R3.2 to i64
  %shl.22 = shl i64 %zext.45, 32
  %or.22 = or i64 %shl.22, %zext.44
  %ptr_plus_imm.20 = add i64 %or.22, 44
  %inttoptr_bytes.22 = inttoptr i64 %ptr_plus_imm.20 to ptr addrspace(1)
  %ptr_cast_for_access.22 = bitcast ptr addrspace(1) %inttoptr_bytes.22 to ptr addrspace(1)
  %.272 = load float, ptr addrspace(1) %ptr_cast_for_access.22, align 4
  %.273 = bitcast ptr %R31 to ptr
  store float %.272, ptr %.273, align 4
  %zext.46 = zext i32 %UR4.2 to i64
  %zext.47 = zext i32 %UR5.2 to i64
  %shl.23 = shl i64 %zext.47, 32
  %or.23 = or i64 %shl.23, %zext.46
  %ptr_plus_imm.21 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %ptr_plus_imm.21 to ptr addrspace(1)
  %ptr_cast_for_access.23 = bitcast ptr addrspace(1) %inttoptr_bytes.23 to ptr addrspace(1)
  %.278 = load float, ptr addrspace(1) %ptr_cast_for_access.23, align 4
  %.279 = bitcast ptr %R30 to ptr
  store float %.278, ptr %.279, align 4
  %.282 = load i32, ptr %R2, align 4
  %zext.48 = zext i32 %.282 to i64
  %zext.49 = zext i32 %R3.2 to i64
  %shl.24 = shl i64 %zext.49, 32
  %or.24 = or i64 %shl.24, %zext.48
  %ptr_plus_imm.22 = add i64 %or.24, 48
  %inttoptr_bytes.24 = inttoptr i64 %ptr_plus_imm.22 to ptr addrspace(1)
  %ptr_cast_for_access.24 = bitcast ptr addrspace(1) %inttoptr_bytes.24 to ptr addrspace(1)
  %.284 = load float, ptr addrspace(1) %ptr_cast_for_access.24, align 4
  %.285 = bitcast ptr %R33 to ptr
  store float %.284, ptr %.285, align 4
  %zext.50 = zext i32 %UR4.2 to i64
  %zext.51 = zext i32 %UR5.2 to i64
  %shl.25 = shl i64 %zext.51, 32
  %or.25 = or i64 %shl.25, %zext.50
  %ptr_plus_imm.23 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %ptr_plus_imm.23 to ptr addrspace(1)
  %ptr_cast_for_access.25 = bitcast ptr addrspace(1) %inttoptr_bytes.25 to ptr addrspace(1)
  %.290 = load float, ptr addrspace(1) %ptr_cast_for_access.25, align 4
  %.291 = bitcast ptr %R32 to ptr
  store float %.290, ptr %.291, align 4
  %.294 = load i32, ptr %R2, align 4
  %zext.52 = zext i32 %.294 to i64
  %zext.53 = zext i32 %R3.2 to i64
  %shl.26 = shl i64 %zext.53, 32
  %or.26 = or i64 %shl.26, %zext.52
  %ptr_plus_imm.24 = add i64 %or.26, 52
  %inttoptr_bytes.26 = inttoptr i64 %ptr_plus_imm.24 to ptr addrspace(1)
  %ptr_cast_for_access.26 = bitcast ptr addrspace(1) %inttoptr_bytes.26 to ptr addrspace(1)
  %.296 = load float, ptr addrspace(1) %ptr_cast_for_access.26, align 4
  %.297 = bitcast ptr %R35 to ptr
  store float %.296, ptr %.297, align 4
  %zext.54 = zext i32 %UR4.2 to i64
  %zext.55 = zext i32 %UR5.2 to i64
  %shl.27 = shl i64 %zext.55, 32
  %or.27 = or i64 %shl.27, %zext.54
  %ptr_plus_imm.25 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %ptr_plus_imm.25 to ptr addrspace(1)
  %ptr_cast_for_access.27 = bitcast ptr addrspace(1) %inttoptr_bytes.27 to ptr addrspace(1)
  %.302 = load float, ptr addrspace(1) %ptr_cast_for_access.27, align 4
  %.303 = bitcast ptr %R34 to ptr
  store float %.302, ptr %.303, align 4
  %.306 = load i32, ptr %R2, align 4
  %zext.56 = zext i32 %.306 to i64
  %zext.57 = zext i32 %R3.2 to i64
  %shl.28 = shl i64 %zext.57, 32
  %or.28 = or i64 %shl.28, %zext.56
  %ptr_plus_imm.26 = add i64 %or.28, 56
  %inttoptr_bytes.28 = inttoptr i64 %ptr_plus_imm.26 to ptr addrspace(1)
  %ptr_cast_for_access.28 = bitcast ptr addrspace(1) %inttoptr_bytes.28 to ptr addrspace(1)
  %.308 = load float, ptr addrspace(1) %ptr_cast_for_access.28, align 4
  %.309 = bitcast ptr %R37 to ptr
  store float %.308, ptr %.309, align 4
  %zext.58 = zext i32 %UR4.2 to i64
  %zext.59 = zext i32 %UR5.2 to i64
  %shl.29 = shl i64 %zext.59, 32
  %or.29 = or i64 %shl.29, %zext.58
  %ptr_plus_imm.27 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %ptr_plus_imm.27 to ptr addrspace(1)
  %ptr_cast_for_access.29 = bitcast ptr addrspace(1) %inttoptr_bytes.29 to ptr addrspace(1)
  %.314 = load float, ptr addrspace(1) %ptr_cast_for_access.29, align 4
  %.315 = bitcast ptr %R36 to ptr
  store float %.314, ptr %.315, align 4
  %.318 = load i32, ptr %R2, align 4
  %zext.60 = zext i32 %.318 to i64
  %zext.61 = zext i32 %R3.2 to i64
  %shl.30 = shl i64 %zext.61, 32
  %or.30 = or i64 %shl.30, %zext.60
  %ptr_plus_imm.28 = add i64 %or.30, 60
  %inttoptr_bytes.30 = inttoptr i64 %ptr_plus_imm.28 to ptr addrspace(1)
  %ptr_cast_for_access.30 = bitcast ptr addrspace(1) %inttoptr_bytes.30 to ptr addrspace(1)
  %.320 = load float, ptr addrspace(1) %ptr_cast_for_access.30, align 4
  %.321 = bitcast ptr %R39 to ptr
  store float %.320, ptr %.321, align 4
  %zext.62 = zext i32 %UR4.2 to i64
  %zext.63 = zext i32 %UR5.2 to i64
  %shl.31 = shl i64 %zext.63, 32
  %or.31 = or i64 %shl.31, %zext.62
  %ptr_plus_imm.29 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %ptr_plus_imm.29 to ptr addrspace(1)
  %ptr_cast_for_access.31 = bitcast ptr addrspace(1) %inttoptr_bytes.31 to ptr addrspace(1)
  %.326 = load float, ptr addrspace(1) %ptr_cast_for_access.31, align 4
  %.327 = bitcast ptr %R38 to ptr
  store float %.326, ptr %.327, align 4
  %.331 = add i32 %R6.2, -16
  %.332 = add i32 %.331, 0
  %.336 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.337 = extractvalue { i32, i1 } %.336, 0
  %.338 = extractvalue { i32, i1 } %.336, 1
  %.339 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.337, i32 0)
  %.340 = extractvalue { i32, i1 } %.339, 0
  %.341 = extractvalue { i32, i1 } %.339, 1
  %.342 = or i1 %.338, %.341
  %.346 = load i32, ptr %R5, align 4
  %.347 = add i32 %.346, 16
  %.348 = add i32 %.347, 0
  store i32 %.348, ptr %R5, align 4
  %cmp.5 = icmp sgt i32 %.332, 12
  %.354 = and i1 %cmp.5, true
  %.360 = xor i1 true, true
  %.361 = zext i1 %.342 to i32
  %.362 = zext i1 %.360 to i32
  %add = add i32 0, %UR5.2
  %add.1 = add i32 %add, 0
  %add.2 = add i32 %add.1, %.361
  %add.3 = add i32 %add.2, %.362
  %.365 = load i32, ptr %R2, align 4
  %.366 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.365, i32 64)
  %.367 = extractvalue { i32, i1 } %.366, 0
  %.368 = extractvalue { i32, i1 } %.366, 1
  %.369 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.367, i32 0)
  %.370 = extractvalue { i32, i1 } %.369, 0
  %.371 = extractvalue { i32, i1 } %.369, 1
  %.372 = or i1 %.368, %.371
  store i32 %.370, ptr %R2, align 4
  %imad_mul.5 = mul i32 0, 0
  %imad_add.5 = add i32 %imad_mul.5, %R3.2
  %imad_ext4 = zext i1 %.372 to i32
  %imad_add_x = add i32 %imad_add.5, %imad_ext4
  %cast_ptr = bitcast ptr %R8 to ptr
  %.380 = load float, ptr %cast_ptr, align 4
  %cast_ptr.1 = bitcast ptr %R9 to ptr
  %.381 = load float, ptr %cast_ptr.1, align 4
  %cast_ptr.2 = bitcast ptr %R7 to ptr
  %.382 = load float, ptr %cast_ptr.2, align 4
  %fmul = fmul float %.380, %.381
  %fadd = fadd float %fmul, %.382
  %.383 = bitcast ptr %R8 to ptr
  store float %fadd, ptr %.383, align 4
  %cast_ptr.3 = bitcast ptr %R11 to ptr
  %.386 = load float, ptr %cast_ptr.3, align 4
  %cast_ptr.4 = bitcast ptr %R10 to ptr
  %.387 = load float, ptr %cast_ptr.4, align 4
  %cast_ptr.5 = bitcast ptr %R8 to ptr
  %.388 = load float, ptr %cast_ptr.5, align 4
  %fmul.1 = fmul float %.386, %.387
  %fadd.1 = fadd float %fmul.1, %.388
  %.389 = bitcast ptr %R8 to ptr
  store float %fadd.1, ptr %.389, align 4
  %cast_ptr.6 = bitcast ptr %R13 to ptr
  %.392 = load float, ptr %cast_ptr.6, align 4
  %cast_ptr.7 = bitcast ptr %R12 to ptr
  %.393 = load float, ptr %cast_ptr.7, align 4
  %cast_ptr.8 = bitcast ptr %R8 to ptr
  %.394 = load float, ptr %cast_ptr.8, align 4
  %fmul.2 = fmul float %.392, %.393
  %fadd.2 = fadd float %fmul.2, %.394
  %.395 = bitcast ptr %R8 to ptr
  store float %fadd.2, ptr %.395, align 4
  %cast_ptr.9 = bitcast ptr %R15 to ptr
  %.398 = load float, ptr %cast_ptr.9, align 4
  %cast_ptr.10 = bitcast ptr %R14 to ptr
  %.399 = load float, ptr %cast_ptr.10, align 4
  %cast_ptr.11 = bitcast ptr %R8 to ptr
  %.400 = load float, ptr %cast_ptr.11, align 4
  %fmul.3 = fmul float %.398, %.399
  %fadd.3 = fadd float %fmul.3, %.400
  %.401 = bitcast ptr %R8 to ptr
  store float %fadd.3, ptr %.401, align 4
  %cast_ptr.12 = bitcast ptr %R17 to ptr
  %.404 = load float, ptr %cast_ptr.12, align 4
  %cast_ptr.13 = bitcast ptr %R16 to ptr
  %.405 = load float, ptr %cast_ptr.13, align 4
  %cast_ptr.14 = bitcast ptr %R8 to ptr
  %.406 = load float, ptr %cast_ptr.14, align 4
  %fmul.4 = fmul float %.404, %.405
  %fadd.4 = fadd float %fmul.4, %.406
  %.407 = bitcast ptr %R8 to ptr
  store float %fadd.4, ptr %.407, align 4
  %cast_ptr.15 = bitcast ptr %R19 to ptr
  %.410 = load float, ptr %cast_ptr.15, align 4
  %cast_ptr.16 = bitcast ptr %R18 to ptr
  %.411 = load float, ptr %cast_ptr.16, align 4
  %cast_ptr.17 = bitcast ptr %R8 to ptr
  %.412 = load float, ptr %cast_ptr.17, align 4
  %fmul.5 = fmul float %.410, %.411
  %fadd.5 = fadd float %fmul.5, %.412
  %.413 = bitcast ptr %R8 to ptr
  store float %fadd.5, ptr %.413, align 4
  %cast_ptr.18 = bitcast ptr %R21 to ptr
  %.416 = load float, ptr %cast_ptr.18, align 4
  %cast_ptr.19 = bitcast ptr %R20 to ptr
  %.417 = load float, ptr %cast_ptr.19, align 4
  %cast_ptr.20 = bitcast ptr %R8 to ptr
  %.418 = load float, ptr %cast_ptr.20, align 4
  %fmul.6 = fmul float %.416, %.417
  %fadd.6 = fadd float %fmul.6, %.418
  %.419 = bitcast ptr %R8 to ptr
  store float %fadd.6, ptr %.419, align 4
  %cast_ptr.21 = bitcast ptr %R23 to ptr
  %.422 = load float, ptr %cast_ptr.21, align 4
  %cast_ptr.22 = bitcast ptr %R22 to ptr
  %.423 = load float, ptr %cast_ptr.22, align 4
  %cast_ptr.23 = bitcast ptr %R8 to ptr
  %.424 = load float, ptr %cast_ptr.23, align 4
  %fmul.7 = fmul float %.422, %.423
  %fadd.7 = fadd float %fmul.7, %.424
  %.425 = bitcast ptr %R8 to ptr
  store float %fadd.7, ptr %.425, align 4
  %cast_ptr.24 = bitcast ptr %R25 to ptr
  %.428 = load float, ptr %cast_ptr.24, align 4
  %cast_ptr.25 = bitcast ptr %R24 to ptr
  %.429 = load float, ptr %cast_ptr.25, align 4
  %cast_ptr.26 = bitcast ptr %R8 to ptr
  %.430 = load float, ptr %cast_ptr.26, align 4
  %fmul.8 = fmul float %.428, %.429
  %fadd.8 = fadd float %fmul.8, %.430
  %.431 = bitcast ptr %R8 to ptr
  store float %fadd.8, ptr %.431, align 4
  %cast_ptr.27 = bitcast ptr %R27 to ptr
  %.434 = load float, ptr %cast_ptr.27, align 4
  %cast_ptr.28 = bitcast ptr %R26 to ptr
  %.435 = load float, ptr %cast_ptr.28, align 4
  %cast_ptr.29 = bitcast ptr %R8 to ptr
  %.436 = load float, ptr %cast_ptr.29, align 4
  %fmul.9 = fmul float %.434, %.435
  %fadd.9 = fadd float %fmul.9, %.436
  %.437 = bitcast ptr %R8 to ptr
  store float %fadd.9, ptr %.437, align 4
  %cast_ptr.30 = bitcast ptr %R29 to ptr
  %.440 = load float, ptr %cast_ptr.30, align 4
  %cast_ptr.31 = bitcast ptr %R28 to ptr
  %.441 = load float, ptr %cast_ptr.31, align 4
  %cast_ptr.32 = bitcast ptr %R8 to ptr
  %.442 = load float, ptr %cast_ptr.32, align 4
  %fmul.10 = fmul float %.440, %.441
  %fadd.10 = fadd float %fmul.10, %.442
  %.443 = bitcast ptr %R8 to ptr
  store float %fadd.10, ptr %.443, align 4
  %cast_ptr.33 = bitcast ptr %R31 to ptr
  %.446 = load float, ptr %cast_ptr.33, align 4
  %cast_ptr.34 = bitcast ptr %R30 to ptr
  %.447 = load float, ptr %cast_ptr.34, align 4
  %cast_ptr.35 = bitcast ptr %R8 to ptr
  %.448 = load float, ptr %cast_ptr.35, align 4
  %fmul.11 = fmul float %.446, %.447
  %fadd.11 = fadd float %fmul.11, %.448
  %.449 = bitcast ptr %R8 to ptr
  store float %fadd.11, ptr %.449, align 4
  %cast_ptr.36 = bitcast ptr %R33 to ptr
  %.452 = load float, ptr %cast_ptr.36, align 4
  %cast_ptr.37 = bitcast ptr %R32 to ptr
  %.453 = load float, ptr %cast_ptr.37, align 4
  %cast_ptr.38 = bitcast ptr %R8 to ptr
  %.454 = load float, ptr %cast_ptr.38, align 4
  %fmul.12 = fmul float %.452, %.453
  %fadd.12 = fadd float %fmul.12, %.454
  %.455 = bitcast ptr %R8 to ptr
  store float %fadd.12, ptr %.455, align 4
  %cast_ptr.39 = bitcast ptr %R35 to ptr
  %.458 = load float, ptr %cast_ptr.39, align 4
  %cast_ptr.40 = bitcast ptr %R34 to ptr
  %.459 = load float, ptr %cast_ptr.40, align 4
  %cast_ptr.41 = bitcast ptr %R8 to ptr
  %.460 = load float, ptr %cast_ptr.41, align 4
  %fmul.13 = fmul float %.458, %.459
  %fadd.13 = fadd float %fmul.13, %.460
  %.461 = bitcast ptr %R8 to ptr
  store float %fadd.13, ptr %.461, align 4
  %cast_ptr.42 = bitcast ptr %R37 to ptr
  %.464 = load float, ptr %cast_ptr.42, align 4
  %cast_ptr.43 = bitcast ptr %R36 to ptr
  %.465 = load float, ptr %cast_ptr.43, align 4
  %cast_ptr.44 = bitcast ptr %R8 to ptr
  %.466 = load float, ptr %cast_ptr.44, align 4
  %fmul.14 = fmul float %.464, %.465
  %fadd.14 = fadd float %fmul.14, %.466
  %.467 = bitcast ptr %R8 to ptr
  store float %fadd.14, ptr %.467, align 4
  %cast_ptr.45 = bitcast ptr %R39 to ptr
  %.470 = load float, ptr %cast_ptr.45, align 4
  %cast_ptr.46 = bitcast ptr %R38 to ptr
  %.471 = load float, ptr %cast_ptr.46, align 4
  %cast_ptr.47 = bitcast ptr %R8 to ptr
  %.472 = load float, ptr %cast_ptr.47, align 4
  %fmul.15 = fmul float %.470, %.471
  %fadd.15 = fadd float %fmul.15, %.472
  %.473 = bitcast ptr %R7 to ptr
  store float %fadd.15, ptr %.473, align 4
  %.477 = icmp eq i1 %.354, true
  br i1 %.477, label %.L_x_12, label %.L_x_11.loopexit

.L_x_11.loopexit:                                 ; preds = %.L_x_12
  br label %.L_x_11

.L_x_11:                                          ; preds = %.L_x_11.loopexit, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190
  %UR4.1 = phi i32 [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %.340, %.L_x_11.loopexit ]
  %R6.1 = phi i32 [ %.81, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %.332, %.L_x_11.loopexit ]
  %UR5.1 = phi i32 [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %add.3, %.L_x_11.loopexit ]
  %R3.1 = phi i32 [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %imad_add_x, %.L_x_11.loopexit ]
  %cmp.6 = icmp sgt i32 %R6.1, 4
  %.483 = and i1 %cmp.6, true
  %.488 = icmp ne i1 %.483, true
  br i1 %.488, label %.L_x_13, label %.L_x_11_split_0x0570

.L_x_11_split_0x0570:                             ; preds = %.L_x_11
  %.491 = load i32, ptr %R2, align 4
  %zext.64 = zext i32 %.491 to i64
  %zext.65 = zext i32 %R3.1 to i64
  %shl.32 = shl i64 %zext.65, 32
  %or.32 = or i64 %shl.32, %zext.64
  %inttoptr_bytes.32 = inttoptr i64 %or.32 to ptr addrspace(1)
  %ptr_cast_for_access.32 = bitcast ptr addrspace(1) %inttoptr_bytes.32 to ptr addrspace(1)
  %.493 = load float, ptr addrspace(1) %ptr_cast_for_access.32, align 4
  %.494 = bitcast ptr %R8 to ptr
  store float %.493, ptr %.494, align 4
  %zext.66 = zext i32 %UR4.1 to i64
  %zext.67 = zext i32 %UR5.1 to i64
  %shl.33 = shl i64 %zext.67, 32
  %or.33 = or i64 %shl.33, %zext.66
  %inttoptr_bytes.33 = inttoptr i64 %or.33 to ptr addrspace(1)
  %ptr_cast_for_access.33 = bitcast ptr addrspace(1) %inttoptr_bytes.33 to ptr addrspace(1)
  %.499 = load float, ptr addrspace(1) %ptr_cast_for_access.33, align 4
  %.500 = bitcast ptr %R9 to ptr
  store float %.499, ptr %.500, align 4
  %.503 = load i32, ptr %R2, align 4
  %zext.68 = zext i32 %.503 to i64
  %zext.69 = zext i32 %R3.1 to i64
  %shl.34 = shl i64 %zext.69, 32
  %or.34 = or i64 %shl.34, %zext.68
  %ptr_plus_imm.30 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.30 to ptr addrspace(1)
  %ptr_cast_for_access.34 = bitcast ptr addrspace(1) %inttoptr_bytes.34 to ptr addrspace(1)
  %.505 = load float, ptr addrspace(1) %ptr_cast_for_access.34, align 4
  %.506 = bitcast ptr %R11 to ptr
  store float %.505, ptr %.506, align 4
  %zext.70 = zext i32 %UR4.1 to i64
  %zext.71 = zext i32 %UR5.1 to i64
  %shl.35 = shl i64 %zext.71, 32
  %or.35 = or i64 %shl.35, %zext.70
  %ptr_plus_imm.31 = add i64 %or.35, 4
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.31 to ptr addrspace(1)
  %ptr_cast_for_access.35 = bitcast ptr addrspace(1) %inttoptr_bytes.35 to ptr addrspace(1)
  %.511 = load float, ptr addrspace(1) %ptr_cast_for_access.35, align 4
  %.512 = bitcast ptr %R10 to ptr
  store float %.511, ptr %.512, align 4
  %.515 = load i32, ptr %R2, align 4
  %zext.72 = zext i32 %.515 to i64
  %zext.73 = zext i32 %R3.1 to i64
  %shl.36 = shl i64 %zext.73, 32
  %or.36 = or i64 %shl.36, %zext.72
  %ptr_plus_imm.32 = add i64 %or.36, 8
  %inttoptr_bytes.36 = inttoptr i64 %ptr_plus_imm.32 to ptr addrspace(1)
  %ptr_cast_for_access.36 = bitcast ptr addrspace(1) %inttoptr_bytes.36 to ptr addrspace(1)
  %.517 = load float, ptr addrspace(1) %ptr_cast_for_access.36, align 4
  %.518 = bitcast ptr %R13 to ptr
  store float %.517, ptr %.518, align 4
  %zext.74 = zext i32 %UR4.1 to i64
  %zext.75 = zext i32 %UR5.1 to i64
  %shl.37 = shl i64 %zext.75, 32
  %or.37 = or i64 %shl.37, %zext.74
  %ptr_plus_imm.33 = add i64 %or.37, 8
  %inttoptr_bytes.37 = inttoptr i64 %ptr_plus_imm.33 to ptr addrspace(1)
  %ptr_cast_for_access.37 = bitcast ptr addrspace(1) %inttoptr_bytes.37 to ptr addrspace(1)
  %.523 = load float, ptr addrspace(1) %ptr_cast_for_access.37, align 4
  %.524 = bitcast ptr %R12 to ptr
  store float %.523, ptr %.524, align 4
  %.527 = load i32, ptr %R2, align 4
  %zext.76 = zext i32 %.527 to i64
  %zext.77 = zext i32 %R3.1 to i64
  %shl.38 = shl i64 %zext.77, 32
  %or.38 = or i64 %shl.38, %zext.76
  %ptr_plus_imm.34 = add i64 %or.38, 12
  %inttoptr_bytes.38 = inttoptr i64 %ptr_plus_imm.34 to ptr addrspace(1)
  %ptr_cast_for_access.38 = bitcast ptr addrspace(1) %inttoptr_bytes.38 to ptr addrspace(1)
  %.529 = load float, ptr addrspace(1) %ptr_cast_for_access.38, align 4
  %.530 = bitcast ptr %R15 to ptr
  store float %.529, ptr %.530, align 4
  %zext.78 = zext i32 %UR4.1 to i64
  %zext.79 = zext i32 %UR5.1 to i64
  %shl.39 = shl i64 %zext.79, 32
  %or.39 = or i64 %shl.39, %zext.78
  %ptr_plus_imm.35 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %ptr_plus_imm.35 to ptr addrspace(1)
  %ptr_cast_for_access.39 = bitcast ptr addrspace(1) %inttoptr_bytes.39 to ptr addrspace(1)
  %.535 = load float, ptr addrspace(1) %ptr_cast_for_access.39, align 4
  %.536 = bitcast ptr %R14 to ptr
  store float %.535, ptr %.536, align 4
  %.539 = load i32, ptr %R2, align 4
  %zext.80 = zext i32 %.539 to i64
  %zext.81 = zext i32 %R3.1 to i64
  %shl.40 = shl i64 %zext.81, 32
  %or.40 = or i64 %shl.40, %zext.80
  %ptr_plus_imm.36 = add i64 %or.40, 16
  %inttoptr_bytes.40 = inttoptr i64 %ptr_plus_imm.36 to ptr addrspace(1)
  %ptr_cast_for_access.40 = bitcast ptr addrspace(1) %inttoptr_bytes.40 to ptr addrspace(1)
  %.541 = load float, ptr addrspace(1) %ptr_cast_for_access.40, align 4
  %.542 = bitcast ptr %R17 to ptr
  store float %.541, ptr %.542, align 4
  %zext.82 = zext i32 %UR4.1 to i64
  %zext.83 = zext i32 %UR5.1 to i64
  %shl.41 = shl i64 %zext.83, 32
  %or.41 = or i64 %shl.41, %zext.82
  %ptr_plus_imm.37 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %ptr_plus_imm.37 to ptr addrspace(1)
  %ptr_cast_for_access.41 = bitcast ptr addrspace(1) %inttoptr_bytes.41 to ptr addrspace(1)
  %.547 = load float, ptr addrspace(1) %ptr_cast_for_access.41, align 4
  %.548 = bitcast ptr %R16 to ptr
  store float %.547, ptr %.548, align 4
  %.551 = load i32, ptr %R2, align 4
  %zext.84 = zext i32 %.551 to i64
  %zext.85 = zext i32 %R3.1 to i64
  %shl.42 = shl i64 %zext.85, 32
  %or.42 = or i64 %shl.42, %zext.84
  %ptr_plus_imm.38 = add i64 %or.42, 20
  %inttoptr_bytes.42 = inttoptr i64 %ptr_plus_imm.38 to ptr addrspace(1)
  %ptr_cast_for_access.42 = bitcast ptr addrspace(1) %inttoptr_bytes.42 to ptr addrspace(1)
  %.553 = load float, ptr addrspace(1) %ptr_cast_for_access.42, align 4
  %.554 = bitcast ptr %R19 to ptr
  store float %.553, ptr %.554, align 4
  %zext.86 = zext i32 %UR4.1 to i64
  %zext.87 = zext i32 %UR5.1 to i64
  %shl.43 = shl i64 %zext.87, 32
  %or.43 = or i64 %shl.43, %zext.86
  %ptr_plus_imm.39 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %ptr_plus_imm.39 to ptr addrspace(1)
  %ptr_cast_for_access.43 = bitcast ptr addrspace(1) %inttoptr_bytes.43 to ptr addrspace(1)
  %.559 = load float, ptr addrspace(1) %ptr_cast_for_access.43, align 4
  %.560 = bitcast ptr %R18 to ptr
  store float %.559, ptr %.560, align 4
  %.563 = load i32, ptr %R2, align 4
  %zext.88 = zext i32 %.563 to i64
  %zext.89 = zext i32 %R3.1 to i64
  %shl.44 = shl i64 %zext.89, 32
  %or.44 = or i64 %shl.44, %zext.88
  %ptr_plus_imm.40 = add i64 %or.44, 24
  %inttoptr_bytes.44 = inttoptr i64 %ptr_plus_imm.40 to ptr addrspace(1)
  %ptr_cast_for_access.44 = bitcast ptr addrspace(1) %inttoptr_bytes.44 to ptr addrspace(1)
  %.565 = load float, ptr addrspace(1) %ptr_cast_for_access.44, align 4
  %.566 = bitcast ptr %R21 to ptr
  store float %.565, ptr %.566, align 4
  %zext.90 = zext i32 %UR4.1 to i64
  %zext.91 = zext i32 %UR5.1 to i64
  %shl.45 = shl i64 %zext.91, 32
  %or.45 = or i64 %shl.45, %zext.90
  %ptr_plus_imm.41 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %ptr_plus_imm.41 to ptr addrspace(1)
  %ptr_cast_for_access.45 = bitcast ptr addrspace(1) %inttoptr_bytes.45 to ptr addrspace(1)
  %.571 = load float, ptr addrspace(1) %ptr_cast_for_access.45, align 4
  %.572 = bitcast ptr %R20 to ptr
  store float %.571, ptr %.572, align 4
  %.575 = load i32, ptr %R2, align 4
  %zext.92 = zext i32 %.575 to i64
  %zext.93 = zext i32 %R3.1 to i64
  %shl.46 = shl i64 %zext.93, 32
  %or.46 = or i64 %shl.46, %zext.92
  %ptr_plus_imm.42 = add i64 %or.46, 28
  %inttoptr_bytes.46 = inttoptr i64 %ptr_plus_imm.42 to ptr addrspace(1)
  %ptr_cast_for_access.46 = bitcast ptr addrspace(1) %inttoptr_bytes.46 to ptr addrspace(1)
  %.577 = load float, ptr addrspace(1) %ptr_cast_for_access.46, align 4
  %.578 = bitcast ptr %R23 to ptr
  store float %.577, ptr %.578, align 4
  %zext.94 = zext i32 %UR4.1 to i64
  %zext.95 = zext i32 %UR5.1 to i64
  %shl.47 = shl i64 %zext.95, 32
  %or.47 = or i64 %shl.47, %zext.94
  %ptr_plus_imm.43 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %ptr_plus_imm.43 to ptr addrspace(1)
  %ptr_cast_for_access.47 = bitcast ptr addrspace(1) %inttoptr_bytes.47 to ptr addrspace(1)
  %.583 = load float, ptr addrspace(1) %ptr_cast_for_access.47, align 4
  %.584 = bitcast ptr %R22 to ptr
  store float %.583, ptr %.584, align 4
  %.588 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.589 = extractvalue { i32, i1 } %.588, 0
  %.590 = extractvalue { i32, i1 } %.588, 1
  %.591 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.589, i32 0)
  %.592 = extractvalue { i32, i1 } %.591, 0
  %.593 = extractvalue { i32, i1 } %.591, 1
  %.594 = or i1 %.590, %.593
  %.602 = load i32, ptr %R5, align 4
  %.603 = add i32 %.602, 8
  %.604 = add i32 %.603, 0
  store i32 %.604, ptr %R5, align 4
  %.609 = xor i1 true, true
  %.610 = zext i1 %.594 to i32
  %.611 = zext i1 %.609 to i32
  %add.4 = add i32 0, %UR5.1
  %add.5 = add i32 %add.4, 0
  %add.6 = add i32 %add.5, %.610
  %add.7 = add i32 %add.6, %.611
  %.614 = load i32, ptr %R2, align 4
  %.615 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.614, i32 32)
  %.616 = extractvalue { i32, i1 } %.615, 0
  %.617 = extractvalue { i32, i1 } %.615, 1
  %.618 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.616, i32 0)
  %.619 = extractvalue { i32, i1 } %.618, 0
  %.620 = extractvalue { i32, i1 } %.618, 1
  %.621 = or i1 %.617, %.620
  store i32 %.619, ptr %R2, align 4
  %.626 = add i32 %R6.1, -8
  %.627 = add i32 %.626, 0
  %.632 = xor i1 true, true
  %.633 = zext i1 %.621 to i32
  %.634 = zext i1 %.632 to i32
  %add.8 = add i32 0, %R3.1
  %add.9 = add i32 %add.8, 0
  %add.10 = add i32 %add.9, %.633
  %add.11 = add i32 %add.10, %.634
  %cast_ptr.48 = bitcast ptr %R8 to ptr
  %.637 = load float, ptr %cast_ptr.48, align 4
  %cast_ptr.49 = bitcast ptr %R9 to ptr
  %.638 = load float, ptr %cast_ptr.49, align 4
  %cast_ptr.50 = bitcast ptr %R7 to ptr
  %.639 = load float, ptr %cast_ptr.50, align 4
  %fmul.16 = fmul float %.637, %.638
  %fadd.16 = fadd float %fmul.16, %.639
  %.640 = bitcast ptr %R8 to ptr
  store float %fadd.16, ptr %.640, align 4
  %cast_ptr.51 = bitcast ptr %R11 to ptr
  %.643 = load float, ptr %cast_ptr.51, align 4
  %cast_ptr.52 = bitcast ptr %R10 to ptr
  %.644 = load float, ptr %cast_ptr.52, align 4
  %cast_ptr.53 = bitcast ptr %R8 to ptr
  %.645 = load float, ptr %cast_ptr.53, align 4
  %fmul.17 = fmul float %.643, %.644
  %fadd.17 = fadd float %fmul.17, %.645
  %.646 = bitcast ptr %R8 to ptr
  store float %fadd.17, ptr %.646, align 4
  %cast_ptr.54 = bitcast ptr %R13 to ptr
  %.649 = load float, ptr %cast_ptr.54, align 4
  %cast_ptr.55 = bitcast ptr %R12 to ptr
  %.650 = load float, ptr %cast_ptr.55, align 4
  %cast_ptr.56 = bitcast ptr %R8 to ptr
  %.651 = load float, ptr %cast_ptr.56, align 4
  %fmul.18 = fmul float %.649, %.650
  %fadd.18 = fadd float %fmul.18, %.651
  %.652 = bitcast ptr %R8 to ptr
  store float %fadd.18, ptr %.652, align 4
  %cast_ptr.57 = bitcast ptr %R15 to ptr
  %.655 = load float, ptr %cast_ptr.57, align 4
  %cast_ptr.58 = bitcast ptr %R14 to ptr
  %.656 = load float, ptr %cast_ptr.58, align 4
  %cast_ptr.59 = bitcast ptr %R8 to ptr
  %.657 = load float, ptr %cast_ptr.59, align 4
  %fmul.19 = fmul float %.655, %.656
  %fadd.19 = fadd float %fmul.19, %.657
  %.658 = bitcast ptr %R8 to ptr
  store float %fadd.19, ptr %.658, align 4
  %cast_ptr.60 = bitcast ptr %R17 to ptr
  %.661 = load float, ptr %cast_ptr.60, align 4
  %cast_ptr.61 = bitcast ptr %R16 to ptr
  %.662 = load float, ptr %cast_ptr.61, align 4
  %cast_ptr.62 = bitcast ptr %R8 to ptr
  %.663 = load float, ptr %cast_ptr.62, align 4
  %fmul.20 = fmul float %.661, %.662
  %fadd.20 = fadd float %fmul.20, %.663
  %.664 = bitcast ptr %R8 to ptr
  store float %fadd.20, ptr %.664, align 4
  %cast_ptr.63 = bitcast ptr %R19 to ptr
  %.667 = load float, ptr %cast_ptr.63, align 4
  %cast_ptr.64 = bitcast ptr %R18 to ptr
  %.668 = load float, ptr %cast_ptr.64, align 4
  %cast_ptr.65 = bitcast ptr %R8 to ptr
  %.669 = load float, ptr %cast_ptr.65, align 4
  %fmul.21 = fmul float %.667, %.668
  %fadd.21 = fadd float %fmul.21, %.669
  %.670 = bitcast ptr %R8 to ptr
  store float %fadd.21, ptr %.670, align 4
  %cast_ptr.66 = bitcast ptr %R21 to ptr
  %.673 = load float, ptr %cast_ptr.66, align 4
  %cast_ptr.67 = bitcast ptr %R20 to ptr
  %.674 = load float, ptr %cast_ptr.67, align 4
  %cast_ptr.68 = bitcast ptr %R8 to ptr
  %.675 = load float, ptr %cast_ptr.68, align 4
  %fmul.22 = fmul float %.673, %.674
  %fadd.22 = fadd float %fmul.22, %.675
  %.676 = bitcast ptr %R8 to ptr
  store float %fadd.22, ptr %.676, align 4
  %cast_ptr.69 = bitcast ptr %R23 to ptr
  %.679 = load float, ptr %cast_ptr.69, align 4
  %cast_ptr.70 = bitcast ptr %R22 to ptr
  %.680 = load float, ptr %cast_ptr.70, align 4
  %cast_ptr.71 = bitcast ptr %R8 to ptr
  %.681 = load float, ptr %cast_ptr.71, align 4
  %fmul.23 = fmul float %.679, %.680
  %fadd.23 = fadd float %fmul.23, %.681
  %.682 = bitcast ptr %R7 to ptr
  store float %fadd.23, ptr %.682, align 4
  br label %.L_x_13

.L_x_13:                                          ; preds = %.L_x_11_split_0x0570, %.L_x_11
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_11 ], [ %.592, %.L_x_11_split_0x0570 ]
  %R6.3 = phi i32 [ %R6.1, %.L_x_11 ], [ %.627, %.L_x_11_split_0x0570 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_11 ], [ %add.7, %.L_x_11_split_0x0570 ]
  %R3.3 = phi i32 [ %R3.1, %.L_x_11 ], [ %add.11, %.L_x_11_split_0x0570 ]
  %cmp.7 = icmp ne i32 %R6.3, 0
  %.689 = or i1 %cmp.7, %.98
  %.694 = icmp ne i1 %.689, true
  br i1 %.694, label %.L_x_9, label %.L_x_10.preheader

.L_x_10.preheader:                                ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0100, %.L_x_13
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_13 ], [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %R6.0.ph = phi i32 [ %R6.3, %.L_x_13 ], [ %.81, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_13 ], [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %R3.0.ph = phi i32 [ %R3.3, %.L_x_13 ], [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  br label %.L_x_10

.L_x_10:                                          ; preds = %.L_x_10.preheader, %.L_x_10
  %UR4.0 = phi i32 [ %.755, %.L_x_10 ], [ %UR4.0.ph, %.L_x_10.preheader ]
  %R6.0 = phi i32 [ %.747, %.L_x_10 ], [ %R6.0.ph, %.L_x_10.preheader ]
  %UR5.0 = phi i32 [ %add.15, %.L_x_10 ], [ %UR5.0.ph, %.L_x_10.preheader ]
  %R3.0 = phi i32 [ %.813, %.L_x_10 ], [ %R3.0.ph, %.L_x_10.preheader ]
  %.697 = load i32, ptr %R2, align 4
  %zext.96 = zext i32 %.697 to i64
  %zext.97 = zext i32 %R3.0 to i64
  %shl.48 = shl i64 %zext.97, 32
  %or.48 = or i64 %shl.48, %zext.96
  %inttoptr_bytes.48 = inttoptr i64 %or.48 to ptr addrspace(1)
  %ptr_cast_for_access.48 = bitcast ptr addrspace(1) %inttoptr_bytes.48 to ptr addrspace(1)
  %.699 = load float, ptr addrspace(1) %ptr_cast_for_access.48, align 4
  %.700 = bitcast ptr %R8 to ptr
  store float %.699, ptr %.700, align 4
  %zext.98 = zext i32 %UR4.0 to i64
  %zext.99 = zext i32 %UR5.0 to i64
  %shl.49 = shl i64 %zext.99, 32
  %or.49 = or i64 %shl.49, %zext.98
  %inttoptr_bytes.49 = inttoptr i64 %or.49 to ptr addrspace(1)
  %ptr_cast_for_access.49 = bitcast ptr addrspace(1) %inttoptr_bytes.49 to ptr addrspace(1)
  %.705 = load float, ptr addrspace(1) %ptr_cast_for_access.49, align 4
  %.706 = bitcast ptr %R9 to ptr
  store float %.705, ptr %.706, align 4
  %.709 = load i32, ptr %R2, align 4
  %zext.100 = zext i32 %.709 to i64
  %zext.101 = zext i32 %R3.0 to i64
  %shl.50 = shl i64 %zext.101, 32
  %or.50 = or i64 %shl.50, %zext.100
  %ptr_plus_imm.44 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %ptr_plus_imm.44 to ptr addrspace(1)
  %ptr_cast_for_access.50 = bitcast ptr addrspace(1) %inttoptr_bytes.50 to ptr addrspace(1)
  %.711 = load float, ptr addrspace(1) %ptr_cast_for_access.50, align 4
  %.712 = bitcast ptr %R11 to ptr
  store float %.711, ptr %.712, align 4
  %zext.102 = zext i32 %UR4.0 to i64
  %zext.103 = zext i32 %UR5.0 to i64
  %shl.51 = shl i64 %zext.103, 32
  %or.51 = or i64 %shl.51, %zext.102
  %ptr_plus_imm.45 = add i64 %or.51, 4
  %inttoptr_bytes.51 = inttoptr i64 %ptr_plus_imm.45 to ptr addrspace(1)
  %ptr_cast_for_access.51 = bitcast ptr addrspace(1) %inttoptr_bytes.51 to ptr addrspace(1)
  %.717 = load float, ptr addrspace(1) %ptr_cast_for_access.51, align 4
  %.718 = bitcast ptr %R10 to ptr
  store float %.717, ptr %.718, align 4
  %.721 = load i32, ptr %R2, align 4
  %zext.104 = zext i32 %.721 to i64
  %zext.105 = zext i32 %R3.0 to i64
  %shl.52 = shl i64 %zext.105, 32
  %or.52 = or i64 %shl.52, %zext.104
  %ptr_plus_imm.46 = add i64 %or.52, 8
  %inttoptr_bytes.52 = inttoptr i64 %ptr_plus_imm.46 to ptr addrspace(1)
  %ptr_cast_for_access.52 = bitcast ptr addrspace(1) %inttoptr_bytes.52 to ptr addrspace(1)
  %.723 = load float, ptr addrspace(1) %ptr_cast_for_access.52, align 4
  %.724 = bitcast ptr %R13 to ptr
  store float %.723, ptr %.724, align 4
  %zext.106 = zext i32 %UR4.0 to i64
  %zext.107 = zext i32 %UR5.0 to i64
  %shl.53 = shl i64 %zext.107, 32
  %or.53 = or i64 %shl.53, %zext.106
  %ptr_plus_imm.47 = add i64 %or.53, 8
  %inttoptr_bytes.53 = inttoptr i64 %ptr_plus_imm.47 to ptr addrspace(1)
  %ptr_cast_for_access.53 = bitcast ptr addrspace(1) %inttoptr_bytes.53 to ptr addrspace(1)
  %.729 = load float, ptr addrspace(1) %ptr_cast_for_access.53, align 4
  %.730 = bitcast ptr %R12 to ptr
  store float %.729, ptr %.730, align 4
  %.733 = load i32, ptr %R2, align 4
  %zext.108 = zext i32 %.733 to i64
  %zext.109 = zext i32 %R3.0 to i64
  %shl.54 = shl i64 %zext.109, 32
  %or.54 = or i64 %shl.54, %zext.108
  %ptr_plus_imm.48 = add i64 %or.54, 12
  %inttoptr_bytes.54 = inttoptr i64 %ptr_plus_imm.48 to ptr addrspace(1)
  %ptr_cast_for_access.54 = bitcast ptr addrspace(1) %inttoptr_bytes.54 to ptr addrspace(1)
  %.735 = load float, ptr addrspace(1) %ptr_cast_for_access.54, align 4
  %.736 = bitcast ptr %R15 to ptr
  store float %.735, ptr %.736, align 4
  %zext.110 = zext i32 %UR4.0 to i64
  %zext.111 = zext i32 %UR5.0 to i64
  %shl.55 = shl i64 %zext.111, 32
  %or.55 = or i64 %shl.55, %zext.110
  %ptr_plus_imm.49 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %ptr_plus_imm.49 to ptr addrspace(1)
  %ptr_cast_for_access.55 = bitcast ptr addrspace(1) %inttoptr_bytes.55 to ptr addrspace(1)
  %.741 = load float, ptr addrspace(1) %ptr_cast_for_access.55, align 4
  %.742 = bitcast ptr %R14 to ptr
  store float %.741, ptr %.742, align 4
  %.746 = add i32 %R6.0, -4
  %.747 = add i32 %.746, 0
  %.751 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.752 = extractvalue { i32, i1 } %.751, 0
  %.753 = extractvalue { i32, i1 } %.751, 1
  %.754 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.752, i32 0)
  %.755 = extractvalue { i32, i1 } %.754, 0
  %.756 = extractvalue { i32, i1 } %.754, 1
  %.757 = or i1 %.753, %.756
  %.761 = load i32, ptr %R5, align 4
  %.762 = add i32 %.761, 4
  %.763 = add i32 %.762, 0
  store i32 %.763, ptr %R5, align 4
  %cmp.8 = icmp ne i32 %.747, 0
  %.769 = and i1 %cmp.8, true
  %.775 = xor i1 true, true
  %.776 = zext i1 %.757 to i32
  %.777 = zext i1 %.775 to i32
  %add.12 = add i32 0, %UR5.0
  %add.13 = add i32 %add.12, 0
  %add.14 = add i32 %add.13, %.776
  %add.15 = add i32 %add.14, %.777
  %cast_ptr.72 = bitcast ptr %R8 to ptr
  %.780 = load float, ptr %cast_ptr.72, align 4
  %cast_ptr.73 = bitcast ptr %R9 to ptr
  %.781 = load float, ptr %cast_ptr.73, align 4
  %cast_ptr.74 = bitcast ptr %R7 to ptr
  %.782 = load float, ptr %cast_ptr.74, align 4
  %fmul.24 = fmul float %.780, %.781
  %fadd.24 = fadd float %fmul.24, %.782
  %.783 = bitcast ptr %R8 to ptr
  store float %fadd.24, ptr %.783, align 4
  %.786 = load i32, ptr %R2, align 4
  %.787 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.786, i32 16)
  %.788 = extractvalue { i32, i1 } %.787, 0
  %.789 = extractvalue { i32, i1 } %.787, 1
  %.790 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.788, i32 0)
  %.791 = extractvalue { i32, i1 } %.790, 0
  %.792 = extractvalue { i32, i1 } %.790, 1
  %.793 = or i1 %.789, %.792
  store i32 %.791, ptr %R9, align 4
  %.797 = load i32, ptr %R9, align 4
  %imad_mul.6 = mul i32 0, 0
  %imad_add.6 = add i32 %imad_mul.6, %.797
  store i32 %imad_add.6, ptr %R2, align 4
  %cast_ptr.75 = bitcast ptr %R11 to ptr
  %.800 = load float, ptr %cast_ptr.75, align 4
  %cast_ptr.76 = bitcast ptr %R10 to ptr
  %.801 = load float, ptr %cast_ptr.76, align 4
  %cast_ptr.77 = bitcast ptr %R8 to ptr
  %.802 = load float, ptr %cast_ptr.77, align 4
  %fmul.25 = fmul float %.800, %.801
  %fadd.25 = fadd float %fmul.25, %.802
  %.803 = bitcast ptr %R8 to ptr
  store float %fadd.25, ptr %.803, align 4
  %.808 = xor i1 true, true
  %.809 = zext i1 %.793 to i32
  %.810 = zext i1 %.808 to i32
  %add.16 = add i32 0, %R3.0
  %add.17 = add i32 %add.16, 0
  %add.18 = add i32 %add.17, %.809
  %add.19 = add i32 %add.18, %.810
  store i32 %add.19, ptr %R10, align 4
  %.813 = load i32, ptr %R10, align 4
  %cast_ptr.78 = bitcast ptr %R13 to ptr
  %.816 = load float, ptr %cast_ptr.78, align 4
  %cast_ptr.79 = bitcast ptr %R12 to ptr
  %.817 = load float, ptr %cast_ptr.79, align 4
  %cast_ptr.80 = bitcast ptr %R8 to ptr
  %.818 = load float, ptr %cast_ptr.80, align 4
  %fmul.26 = fmul float %.816, %.817
  %fadd.26 = fadd float %fmul.26, %.818
  %.819 = bitcast ptr %R8 to ptr
  store float %fadd.26, ptr %.819, align 4
  %cast_ptr.81 = bitcast ptr %R15 to ptr
  %.822 = load float, ptr %cast_ptr.81, align 4
  %cast_ptr.82 = bitcast ptr %R14 to ptr
  %.823 = load float, ptr %cast_ptr.82, align 4
  %cast_ptr.83 = bitcast ptr %R8 to ptr
  %.824 = load float, ptr %cast_ptr.83, align 4
  %fmul.27 = fmul float %.822, %.823
  %fadd.27 = fadd float %fmul.27, %.824
  %.825 = bitcast ptr %R7 to ptr
  store float %fadd.27, ptr %.825, align 4
  %.829 = icmp eq i1 %.769, true
  br i1 %.829, label %.L_x_10, label %.L_x_9.loopexit

.L_x_9.loopexit:                                  ; preds = %.L_x_10
  br label %.L_x_9

.L_x_9:                                           ; preds = %.L_x_9.loopexit, %.L_x_13, %.text._Z8fc_layerPfS_S_S_ii_split_0x00a0
  %cmp.9 = icmp ne i32 %.59, 0
  %.835 = and i1 %cmp.9, true
  %.840 = icmp ne i1 %.835, true
  br i1 %.840, label %.L_x_8, label %.L_x_9_split_0x0900

.L_x_9_split_0x0900:                              ; preds = %.L_x_9
  store i32 4, ptr %R8, align 4
  %.846 = load i32, ptr %R5, align 4
  %imad_mul.7 = mul i32 %imad_add, %Arg_4
  %imad_add.7 = add i32 %imad_mul.7, %.846
  store i32 %imad_add.7, ptr %R2, align 4
  %.849 = load i32, ptr %R2, align 4
  %.850 = load i32, ptr %R8, align 4
  %imad_ext1.1 = zext i32 %.849 to i64
  %imad_ext2.1 = zext i32 %.850 to i64
  %imad_mul.8 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.851 = ptrtoint ptr %Arg_1 to i64
  %imad_add.8 = add i64 %imad_mul.8, %.851
  %.852 = and i64 %imad_add.8, -4294967296
  %.853 = lshr i64 %.852, 32
  %trunc32.4 = trunc i64 %.853 to i32
  %trunc32.5 = trunc i64 %imad_add.8 to i32
  store i32 %trunc32.5, ptr %R2, align 4
  %.857 = load i32, ptr %R5, align 4
  %.858 = load i32, ptr %R8, align 4
  %imad_ext1.2 = zext i32 %.857 to i64
  %imad_ext2.2 = zext i32 %.858 to i64
  %imad_mul.9 = mul i64 %imad_ext1.2, %imad_ext2.2
  %.859 = ptrtoint ptr %Arg_0 to i64
  %imad_add.9 = add i64 %imad_mul.9, %.859
  %.860 = and i64 %imad_add.9, -4294967296
  %.861 = lshr i64 %.860, 32
  %trunc32.6 = trunc i64 %.861 to i32
  %trunc32.7 = trunc i64 %imad_add.9 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  store i32 %trunc32.6, ptr %R9, align 4
  %.865 = load i32, ptr %R2, align 4
  br label %.L_x_14

.L_x_14:                                          ; preds = %.L_x_14, %.L_x_9_split_0x0900
  %R6.4 = phi i32 [ %.865, %.L_x_9_split_0x0900 ], [ %.901, %.L_x_14 ]
  %R4.0 = phi i32 [ %.59, %.L_x_9_split_0x0900 ], [ %.886, %.L_x_14 ]
  %R3.4 = phi i32 [ %trunc32.4, %.L_x_9_split_0x0900 ], [ %add.23, %.L_x_14 ]
  %imad_mul.10 = mul i32 0, 0
  %imad_add.10 = add i32 %imad_mul.10, %R6.4
  store i32 %imad_add.10, ptr %R2, align 4
  %.872 = load i32, ptr %R8, align 4
  %zext.112 = zext i32 %.872 to i64
  %.873 = load i32, ptr %R9, align 4
  %zext.113 = zext i32 %.873 to i64
  %shl.56 = shl i64 %zext.113, 32
  %or.56 = or i64 %shl.56, %zext.112
  %inttoptr_bytes.56 = inttoptr i64 %or.56 to ptr addrspace(1)
  %ptr_cast_for_access.56 = bitcast ptr addrspace(1) %inttoptr_bytes.56 to ptr addrspace(1)
  %.874 = load float, ptr addrspace(1) %ptr_cast_for_access.56, align 4
  %.875 = bitcast ptr %R5 to ptr
  store float %.874, ptr %.875, align 4
  %.878 = load i32, ptr %R2, align 4
  %zext.114 = zext i32 %.878 to i64
  %zext.115 = zext i32 %R3.4 to i64
  %shl.57 = shl i64 %zext.115, 32
  %or.57 = or i64 %shl.57, %zext.114
  %inttoptr_bytes.57 = inttoptr i64 %or.57 to ptr addrspace(1)
  %ptr_cast_for_access.57 = bitcast ptr addrspace(1) %inttoptr_bytes.57 to ptr addrspace(1)
  %.880 = load float, ptr addrspace(1) %ptr_cast_for_access.57, align 4
  %.881 = bitcast ptr %R2 to ptr
  store float %.880, ptr %.881, align 4
  %.885 = add i32 %R4.0, -1
  %.886 = add i32 %.885, 0
  %cmp.10 = icmp ne i32 %.886, 0
  %.892 = and i1 %cmp.10, true
  %.897 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R6.4, i32 4)
  %.898 = extractvalue { i32, i1 } %.897, 0
  %.899 = extractvalue { i32, i1 } %.897, 1
  %.900 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.898, i32 0)
  %.901 = extractvalue { i32, i1 } %.900, 0
  %.902 = extractvalue { i32, i1 } %.900, 1
  %.903 = or i1 %.899, %.902
  %.907 = load i32, ptr %R8, align 4
  %.908 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.907, i32 4)
  %.909 = extractvalue { i32, i1 } %.908, 0
  %.910 = extractvalue { i32, i1 } %.908, 1
  %.911 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.909, i32 0)
  %.912 = extractvalue { i32, i1 } %.911, 0
  %.913 = extractvalue { i32, i1 } %.911, 1
  %.914 = or i1 %.910, %.913
  store i32 %.912, ptr %R8, align 4
  %.920 = xor i1 true, true
  %.921 = zext i1 %.903 to i32
  %.922 = zext i1 %.920 to i32
  %add.20 = add i32 0, %R3.4
  %add.21 = add i32 %add.20, 0
  %add.22 = add i32 %add.21, %.921
  %add.23 = add i32 %add.22, %.922
  %.925 = load i32, ptr %R9, align 4
  %.927 = xor i1 true, true
  %.928 = zext i1 %.914 to i32
  %.929 = zext i1 %.927 to i32
  %add.24 = add i32 0, %.925
  %add.25 = add i32 %add.24, 0
  %add.26 = add i32 %add.25, %.928
  %add.27 = add i32 %add.26, %.929
  store i32 %add.27, ptr %R9, align 4
  %cast_ptr.84 = bitcast ptr %R2 to ptr
  %.932 = load float, ptr %cast_ptr.84, align 4
  %cast_ptr.85 = bitcast ptr %R5 to ptr
  %.933 = load float, ptr %cast_ptr.85, align 4
  %cast_ptr.86 = bitcast ptr %R7 to ptr
  %.934 = load float, ptr %cast_ptr.86, align 4
  %fmul.28 = fmul float %.932, %.933
  %fadd.28 = fadd float %fmul.28, %.934
  %.935 = bitcast ptr %R7 to ptr
  store float %fadd.28, ptr %.935, align 4
  %.939 = icmp eq i1 %.892, true
  br i1 %.939, label %.L_x_14, label %.L_x_8.loopexit

.L_x_8.loopexit:                                  ; preds = %.L_x_14
  br label %.L_x_8

.L_x_8:                                           ; preds = %.L_x_8.loopexit, %.L_x_9, %.text._Z8fc_layerPfS_S_S_ii_split_0x0060
  store i32 4, ptr %R5, align 4
  %.945 = load i32, ptr %R5, align 4
  %imad_ext1.3 = zext i32 %imad_add to i64
  %imad_ext2.3 = zext i32 %.945 to i64
  %imad_mul.11 = mul i64 %imad_ext1.3, %imad_ext2.3
  %.946 = ptrtoint ptr %Arg_2 to i64
  %imad_add.11 = add i64 %imad_mul.11, %.946
  %.947 = and i64 %imad_add.11, -4294967296
  %.948 = lshr i64 %.947, 32
  %trunc32.8 = trunc i64 %.948 to i32
  %trunc32.9 = trunc i64 %imad_add.11 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  %.952 = load i32, ptr %R2, align 4
  %zext.116 = zext i32 %.952 to i64
  %zext.117 = zext i32 %trunc32.8 to i64
  %shl.58 = shl i64 %zext.117, 32
  %or.58 = or i64 %shl.58, %zext.116
  %inttoptr_bytes.58 = inttoptr i64 %or.58 to ptr addrspace(1)
  %ptr_cast_for_access.58 = bitcast ptr addrspace(1) %inttoptr_bytes.58 to ptr addrspace(1)
  %.954 = load float, ptr addrspace(1) %ptr_cast_for_access.58, align 4
  %.955 = bitcast ptr %R2 to ptr
  store float %.954, ptr %.955, align 4
  %.959 = load i32, ptr %R5, align 4
  %imad_ext1.4 = zext i32 %imad_add to i64
  %imad_ext2.4 = zext i32 %.959 to i64
  %imad_mul.12 = mul i64 %imad_ext1.4, %imad_ext2.4
  %.960 = ptrtoint ptr %Arg_3 to i64
  %imad_add.12 = add i64 %imad_mul.12, %.960
  %.961 = and i64 %imad_add.12, -4294967296
  %.962 = lshr i64 %.961, 32
  %trunc32.10 = trunc i64 %.962 to i32
  %trunc32.11 = trunc i64 %imad_add.12 to i32
  store i32 %trunc32.10, ptr %R5, align 4
  %cast_ptr.87 = bitcast ptr %R2 to ptr
  %.966 = load float, ptr %cast_ptr.87, align 4
  %cast_ptr.88 = bitcast ptr %R7 to ptr
  %.967 = load float, ptr %cast_ptr.88, align 4
  %fadd.29 = fadd float %.966, %.967
  %.968 = bitcast ptr %R7 to ptr
  store float %fadd.29, ptr %.968, align 4
  %cast_ptr.89 = bitcast ptr %R7 to ptr
  %.971 = load float, ptr %cast_ptr.89, align 4
  %zext.118 = zext i32 %trunc32.11 to i64
  %.973 = load i32, ptr %R5, align 4
  %zext.119 = zext i32 %.973 to i64
  %shl.59 = shl i64 %zext.119, 32
  %or.59 = or i64 %shl.59, %zext.118
  %inttoptr_bytes.59 = inttoptr i64 %or.59 to ptr addrspace(1)
  %ptr_cast_for_access.59 = bitcast ptr addrspace(1) %inttoptr_bytes.59 to ptr addrspace(1)
  store float %.971, ptr addrspace(1) %ptr_cast_for_access.59, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z8fc_layerPfS_S_S_ii, %.L_x_8
  ret void
}

define ptx_kernel void @_Z10max_pool2dPfS_iii(ptr %Arg_0, ptr %Arg_1, i32 %Arg_2, i32 %Arg_3, i32 %Arg_4) {
Entry_.text._Z10max_pool2dPfS_iii:
  %R0 = alloca i32, align 4
  %R2 = alloca i32, align 4
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
  %cast_ptr = bitcast ptr %R0 to ptr
  %.41 = load float, ptr %cast_ptr, align 4
  %.42 = fdiv float 1.000000e+00, %.41
  %.43 = bitcast ptr %R0 to ptr
  store float %.42, ptr %.43, align 4
  %.46 = load i32, ptr %R0, align 4
  %.47 = add i32 %.46, 268435454
  %.48 = add i32 %.47, 0
  store i32 %.48, ptr %R2, align 4
  %cast_ptr.1 = bitcast ptr %R2 to ptr
  %.51 = load float, ptr %cast_ptr.1, align 4
  %.52 = call float @llvm.fabs.f32(float %.51)
  %.53 = fcmp ogt float %.52, 0.000000e+00
  %.54 = fcmp olt float %.52, 0x3810000000000000
  %.55 = and i1 %.53, %.54
  %.56 = select i1 %.55, float 0.000000e+00, float %.51
  %.57 = fptoui float %.56 to i32
  %imad_mul.1 = mul i32 0, 0
  %imad_add.1 = add i32 %imad_mul.1, 0
  store i32 %imad_add.1, ptr %R2, align 4
  %.63 = sub i32 0, %.57
  %imad_mul.2 = mul i32 0, 0
  %imad_add.2 = add i32 %imad_mul.2, %.63
  store i32 %imad_add.2, ptr %R4, align 4
  %.66 = load i32, ptr %R4, align 4
  %imad_mul.3 = mul i32 %.66, %iabs
  %imad_add.3 = add i32 %imad_mul.3, 0
  %.70 = icmp sge i32 %Arg_2, 0
  %.71 = sub i32 0, %Arg_2
  %iabs.1 = select i1 %.70, i32 %Arg_2, i32 %.71
  store i32 %iabs.1, ptr %R4, align 4
  %.76 = load i32, ptr %R2, align 4
  %imad_ext1 = zext i32 %.57 to i64
  %imad_ext2 = zext i32 %imad_add.3 to i64
  %imad_mul.4 = mul i64 %imad_ext1, %imad_ext2
  %imad_ext3 = zext i32 %.76 to i64
  %imad_add.4 = add i64 %imad_mul.4, %imad_ext3
  %imad_hi_shift = lshr i64 %imad_add.4, 32
  %imad_hi_trunc = trunc i64 %imad_hi_shift to i32
  %nvvm_ctaid_x = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  store i32 %nvvm_ctaid_x, ptr %R2, align 4
  %.82 = load i32, ptr %R4, align 4
  %imad_ext1.1 = zext i32 %imad_hi_trunc to i64
  %imad_ext2.1 = zext i32 %.82 to i64
  %imad_mul.5 = mul i64 %imad_ext1.1, %imad_ext2.1
  %imad_ext3.1 = zext i32 0 to i64
  %imad_add.5 = add i64 %imad_mul.5, %imad_ext3.1
  %imad_hi_shift.1 = lshr i64 %imad_add.5, 32
  %imad_hi_trunc.1 = trunc i64 %imad_hi_shift.1 to i32
  %nvvm_threadidx_x = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %.88 = sub i32 0, %imad_hi_trunc.1
  %imad_mul.6 = mul i32 0, 0
  %imad_add.6 = add i32 %imad_mul.6, %.88
  store i32 %imad_add.6, ptr %R0, align 4
  %.92 = load i32, ptr %R0, align 4
  %.93 = load i32, ptr %R4, align 4
  %imad_mul.7 = mul i32 %iabs, %.92
  %imad_add.7 = add i32 %imad_mul.7, %.93
  store i32 %imad_add.7, ptr %R0, align 4
  %.97 = load i32, ptr %R0, align 4
  %cmp.1 = icmp sgt i32 %iabs, %.97
  %.100 = and i1 %cmp.1, true
  %.105 = icmp ne i1 %.100, true
  br i1 %.105, label %.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160, label %.text._Z10max_pool2dPfS_iii_split_0x0170

.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160: ; preds = %Entry_.text._Z10max_pool2dPfS_iii
  %.108 = load i32, ptr %R0, align 4
  %.110 = sub i32 0, %iabs
  %.111 = add i32 %.108, %.110
  %.112 = add i32 %.111, 0
  store i32 %.112, ptr %R0, align 4
  br label %.text._Z10max_pool2dPfS_iii_split_0x0170

.text._Z10max_pool2dPfS_iii_split_0x0170:         ; preds = %.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160, %Entry_.text._Z10max_pool2dPfS_iii
  %.118 = icmp ne i1 %.100, true
  br i1 %.118, label %.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170, label %.text._Z10max_pool2dPfS_iii_split_0x0180

.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170: ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0170
  %.122 = add i32 %imad_hi_trunc.1, 1
  %.123 = add i32 %.122, 0
  br label %.text._Z10max_pool2dPfS_iii_split_0x0180

.text._Z10max_pool2dPfS_iii_split_0x0180:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170, %.text._Z10max_pool2dPfS_iii_split_0x0170
  %R3.0 = phi i32 [ %.123, %.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170 ], [ %imad_hi_trunc.1, %.text._Z10max_pool2dPfS_iii_split_0x0170 ]
  %.128 = load i32, ptr %R0, align 4
  %cmp.2 = icmp sge i32 %.128, %iabs
  %.132 = and i1 %cmp.2, true
  %.136 = load i32, ptr %R2, align 4
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul.8 = mul i32 %.136, %nvvm_blockdim_x
  %imad_add.8 = add i32 %imad_mul.8, %nvvm_threadidx_x
  store i32 %imad_add.8, ptr %R0, align 4
  %nvvm_threadidx_y = call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %cmp.3 = icmp ne i32 0, %Arg_3
  %.144 = and i1 %cmp.3, true
  %.149 = icmp eq i1 %.132, true
  br i1 %.149, label %.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0, label %.text._Z10max_pool2dPfS_iii_split_0x01d0

.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0: ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0180
  %.153 = add i32 %R3.0, 1
  %.154 = add i32 %.153, 0
  br label %.text._Z10max_pool2dPfS_iii_split_0x01d0

.text._Z10max_pool2dPfS_iii_split_0x01d0:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0, %.text._Z10max_pool2dPfS_iii_split_0x0180
  %R3.1 = phi i32 [ %.154, %.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0 ], [ %R3.0, %.text._Z10max_pool2dPfS_iii_split_0x0180 ]
  %imad_mul.9 = mul i32 0, 0
  %imad_add.9 = add i32 %imad_mul.9, %R3.1
  %.163 = icmp ne i1 %.37, true
  br i1 %.163, label %.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0, label %.text._Z10max_pool2dPfS_iii_split_0x01f0

.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0: ; preds = %.text._Z10max_pool2dPfS_iii_split_0x01d0
  %.167 = sub i32 0, %imad_add.9
  %imad_mul.10 = mul i32 0, 0
  %imad_add.10 = add i32 %imad_mul.10, %.167
  br label %.text._Z10max_pool2dPfS_iii_split_0x01f0

.text._Z10max_pool2dPfS_iii_split_0x01f0:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0, %.text._Z10max_pool2dPfS_iii_split_0x01d0
  %R21.0 = phi i32 [ %imad_add.10, %.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0 ], [ %imad_add.9, %.text._Z10max_pool2dPfS_iii_split_0x01d0 ]
  %.173 = icmp ne i1 %.144, true
  br i1 %.173, label %.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0, label %.text._Z10max_pool2dPfS_iii_split_0x0200

.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0: ; preds = %.text._Z10max_pool2dPfS_iii_split_0x01f0
  %.177 = xor i32 %Arg_3, -1
  br label %.text._Z10max_pool2dPfS_iii_split_0x0200

.text._Z10max_pool2dPfS_iii_split_0x0200:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0, %.text._Z10max_pool2dPfS_iii_split_0x01f0
  %R21.1 = phi i32 [ %.177, %.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0 ], [ %R21.0, %.text._Z10max_pool2dPfS_iii_split_0x01f0 ]
  %nvvm_blockdim_y = call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %imad_mul.11 = mul i32 %nvvm_ctaid_y, %nvvm_blockdim_y
  %imad_add.11 = add i32 %imad_mul.11, %nvvm_threadidx_y
  %.186 = load i32, ptr %R0, align 4
  %cmp.4 = icmp sge i32 %.186, %R21.1
  %.190 = and i1 %cmp.4, true
  %cmp.5 = icmp sge i32 %imad_add.11, %R21.1
  %.198 = or i1 %cmp.5, %.190
  %cmp.6 = icmp sge i32 %nvvm_ctaid_z, %Arg_4
  %.205 = or i1 %cmp.6, %.198
  %.210 = icmp eq i1 %.205, true
  br i1 %.210, label %ExitFunction, label %.text._Z10max_pool2dPfS_iii_split_0x0250

.text._Z10max_pool2dPfS_iii_split_0x0250:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0200
  %imad_mul.12 = mul i32 0, 0
  %imad_add.12 = add i32 %imad_mul.12, %Arg_3
  store i32 -8388608, ptr %R11, align 4
  %cmp.7 = icmp sge i32 %imad_add.12, 1
  %.222 = and i1 %cmp.7, true
  %.227 = icmp ne i1 %.222, true
  br i1 %.227, label %.L_x_16, label %.text._Z10max_pool2dPfS_iii_split_0x0290

.text._Z10max_pool2dPfS_iii_split_0x0290:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0250
  %imad_mul.13 = mul i32 %nvvm_ctaid_z, %Arg_2
  %imad_add.13 = add i32 %imad_mul.13, 0
  %.234 = add i32 %imad_add.12, -1
  %.235 = add i32 %.234, 0
  store i32 %.235, ptr %R2, align 4
  %.238 = load i32, ptr %R0, align 4
  %imad_mul.14 = mul i32 %.238, %Arg_3
  %imad_add.14 = add i32 %imad_mul.14, 0
  %.243 = and i32 %imad_add.12, 3
  %imad_mul.15 = mul i32 %imad_add.11, %Arg_3
  %imad_add.15 = add i32 %imad_mul.15, %imad_add.13
  %.250 = load i32, ptr %R2, align 4
  %cmp.8 = icmp sge i32 %.250, 3
  %.253 = and i1 %cmp.8, true
  %imad_mul.16 = mul i32 0, 0
  %imad_add.16 = add i32 %imad_mul.16, -8388608
  store i32 %imad_add.16, ptr %R11, align 4
  %.260 = sub i32 0, %Arg_3
  %.261 = add i32 %.243, %.260
  %.262 = add i32 %.261, 0
  %imad_mul.17 = mul i32 0, 0
  %imad_add.17 = add i32 %imad_mul.17, 0
  %imad_mul.18 = mul i32 %imad_add.15, %Arg_2
  %imad_add.18 = add i32 %imad_mul.18, %imad_add.14
  br label %.L_x_20

.L_x_20:                                          ; preds = %.L_x_19, %.text._Z10max_pool2dPfS_iii_split_0x0290
  %R16.0 = phi i32 [ %imad_add.17, %.text._Z10max_pool2dPfS_iii_split_0x0290 ], [ %.561, %.L_x_19 ]
  %cmp.9 = icmp ne i32 %.243, 0
  %.277 = and i1 %cmp.9, true
  %.282 = icmp ne i1 %.253, true
  br i1 %.282, label %.L_x_17, label %.L_x_20_split_0x0360

.L_x_20_split_0x0360:                             ; preds = %.L_x_20
  %imad_mul.19 = mul i32 %imad_add.18, 1
  %imad_add.19 = add i32 %imad_mul.19, %R16.0
  br label %.L_x_18

.L_x_18:                                          ; preds = %.L_x_18, %.L_x_20_split_0x0360
  %UR4.1 = phi i32 [ 0, %.L_x_20_split_0x0360 ], [ %.351, %.L_x_18 ]
  %R17.0 = phi i32 [ %imad_add.19, %.L_x_20_split_0x0360 ], [ %imad_add.25, %.L_x_18 ]
  store i32 4, ptr %R2, align 4
  %imad_mul.20 = mul i32 0, 0
  %imad_add.20 = add i32 %imad_mul.20, %Arg_2
  %.297 = load i32, ptr %R2, align 4
  %imad_ext1.2 = zext i32 %R17.0 to i64
  %imad_ext2.2 = zext i32 %.297 to i64
  %imad_mul.21 = mul i64 %imad_ext1.2, %imad_ext2.2
  %.298 = ptrtoint ptr %Arg_0 to i64
  %imad_add.21 = add i64 %imad_mul.21, %.298
  %.299 = and i64 %imad_add.21, -4294967296
  %.300 = lshr i64 %.299, 32
  %trunc32 = trunc i64 %.300 to i32
  %trunc32.1 = trunc i64 %imad_add.21 to i32
  store i32 %trunc32.1, ptr %R2, align 4
  %.305 = load i32, ptr %R2, align 4
  %imad_ext1.3 = zext i32 %imad_add.20 to i64
  %imad_ext2.3 = zext i32 4 to i64
  %imad_mul.22 = mul i64 %imad_ext1.3, %imad_ext2.3
  %imad_ext3.2 = zext i32 %.305 to i64
  %imad_add.22 = add i64 %imad_mul.22, %imad_ext3.2
  %.306 = and i64 %imad_add.22, -4294967296
  %.307 = lshr i64 %.306, 32
  %trunc32.2 = trunc i64 %.307 to i32
  %trunc32.3 = trunc i64 %imad_add.22 to i32
  store i32 %trunc32.3, ptr %R4, align 4
  %.311 = load i32, ptr %R2, align 4
  %zext = zext i32 %.311 to i64
  %zext.1 = zext i32 %trunc32 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.313 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.314 = bitcast ptr %R2 to ptr
  store float %.313, ptr %.314, align 4
  %.318 = load i32, ptr %R4, align 4
  %imad_ext1.4 = zext i32 %imad_add.20 to i64
  %imad_ext2.4 = zext i32 4 to i64
  %imad_mul.23 = mul i64 %imad_ext1.4, %imad_ext2.4
  %imad_ext3.3 = zext i32 %.318 to i64
  %imad_add.23 = add i64 %imad_mul.23, %imad_ext3.3
  %.319 = and i64 %imad_add.23, -4294967296
  %.320 = lshr i64 %.319, 32
  %trunc32.4 = trunc i64 %.320 to i32
  %trunc32.5 = trunc i64 %imad_add.23 to i32
  store i32 %trunc32.5, ptr %R6, align 4
  %.324 = load i32, ptr %R4, align 4
  %zext.2 = zext i32 %.324 to i64
  %zext.3 = zext i32 %trunc32.2 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.326 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.327 = bitcast ptr %R4 to ptr
  store float %.326, ptr %.327, align 4
  %.331 = load i32, ptr %R6, align 4
  %imad_ext1.5 = zext i32 %imad_add.20 to i64
  %imad_ext2.5 = zext i32 4 to i64
  %imad_mul.24 = mul i64 %imad_ext1.5, %imad_ext2.5
  %imad_ext3.4 = zext i32 %.331 to i64
  %imad_add.24 = add i64 %imad_mul.24, %imad_ext3.4
  %.332 = and i64 %imad_add.24, -4294967296
  %.333 = lshr i64 %.332, 32
  %trunc32.6 = trunc i64 %.333 to i32
  %trunc32.7 = trunc i64 %imad_add.24 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  %.337 = load i32, ptr %R6, align 4
  %zext.4 = zext i32 %.337 to i64
  %zext.5 = zext i32 %trunc32.4 to i64
  %shl.2 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.2, %zext.4
  %inttoptr_bytes.2 = inttoptr i64 %or.2 to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.339 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.340 = bitcast ptr %R6 to ptr
  store float %.339, ptr %.340, align 4
  %.343 = load i32, ptr %R8, align 4
  %zext.6 = zext i32 %.343 to i64
  %zext.7 = zext i32 %trunc32.6 to i64
  %shl.3 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.3, %zext.6
  %inttoptr_bytes.3 = inttoptr i64 %or.3 to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.345 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.346 = bitcast ptr %R8 to ptr
  store float %.345, ptr %.346, align 4
  %.350 = add i32 %UR4.1, 4
  %.351 = add i32 %.350, 0
  %.356 = add i32 %.262, %.351
  %.357 = add i32 %.356, 0
  %cmp.10 = icmp ne i32 %.357, 0
  %.363 = and i1 %cmp.10, true
  %imad_mul.25 = mul i32 %imad_add.20, 4
  %imad_add.25 = add i32 %imad_mul.25, %R17.0
  %cast_ptr.2 = bitcast ptr %R2 to ptr
  %.371 = load float, ptr %cast_ptr.2, align 4
  %cast_ptr.3 = bitcast ptr %R11 to ptr
  %.372 = load float, ptr %cast_ptr.3, align 4
  %.373 = xor i1 true, true
  %.374 = fcmp olt float %.371, %.372
  %.375 = fcmp ogt float %.371, %.372
  %mnmx_min = select i1 %.374, float %.371, float %.372
  %mnmx_max = select i1 %.375, float %.371, float %.372
  %mnmx_final = select i1 %.373, float %mnmx_min, float %mnmx_max
  %.376 = bitcast ptr %R11 to ptr
  store float %mnmx_final, ptr %.376, align 4
  %cast_ptr.4 = bitcast ptr %R11 to ptr
  %.379 = load float, ptr %cast_ptr.4, align 4
  %cast_ptr.5 = bitcast ptr %R4 to ptr
  %.380 = load float, ptr %cast_ptr.5, align 4
  %.381 = xor i1 true, true
  %.382 = fcmp olt float %.379, %.380
  %.383 = fcmp ogt float %.379, %.380
  %mnmx_min.1 = select i1 %.382, float %.379, float %.380
  %mnmx_max.1 = select i1 %.383, float %.379, float %.380
  %mnmx_final.1 = select i1 %.381, float %mnmx_min.1, float %mnmx_max.1
  %.384 = bitcast ptr %R11 to ptr
  store float %mnmx_final.1, ptr %.384, align 4
  %cast_ptr.6 = bitcast ptr %R11 to ptr
  %.387 = load float, ptr %cast_ptr.6, align 4
  %cast_ptr.7 = bitcast ptr %R6 to ptr
  %.388 = load float, ptr %cast_ptr.7, align 4
  %.389 = xor i1 true, true
  %.390 = fcmp olt float %.387, %.388
  %.391 = fcmp ogt float %.387, %.388
  %mnmx_min.2 = select i1 %.390, float %.387, float %.388
  %mnmx_max.2 = select i1 %.391, float %.387, float %.388
  %mnmx_final.2 = select i1 %.389, float %mnmx_min.2, float %mnmx_max.2
  %.392 = bitcast ptr %R11 to ptr
  store float %mnmx_final.2, ptr %.392, align 4
  %cast_ptr.8 = bitcast ptr %R11 to ptr
  %.395 = load float, ptr %cast_ptr.8, align 4
  %cast_ptr.9 = bitcast ptr %R8 to ptr
  %.396 = load float, ptr %cast_ptr.9, align 4
  %.397 = xor i1 true, true
  %.398 = fcmp olt float %.395, %.396
  %.399 = fcmp ogt float %.395, %.396
  %mnmx_min.3 = select i1 %.398, float %.395, float %.396
  %mnmx_max.3 = select i1 %.399, float %.395, float %.396
  %mnmx_final.3 = select i1 %.397, float %mnmx_min.3, float %mnmx_max.3
  %.400 = bitcast ptr %R11 to ptr
  store float %mnmx_final.3, ptr %.400, align 4
  %.404 = icmp eq i1 %.363, true
  br i1 %.404, label %.L_x_18, label %.L_x_17.loopexit

.L_x_17.loopexit:                                 ; preds = %.L_x_18
  br label %.L_x_17

.L_x_17:                                          ; preds = %.L_x_17.loopexit, %.L_x_20
  %UR4.0 = phi i32 [ 0, %.L_x_20 ], [ %.351, %.L_x_17.loopexit ]
  %imad_mul.26 = mul i32 %imad_add.14, 1
  %imad_add.26 = add i32 %imad_mul.26, %R16.0
  store i32 %imad_add.26, ptr %R4, align 4
  %.412 = icmp ne i1 %.277, true
  br i1 %.412, label %.L_x_19, label %.L_x_17_split_0x04d0

.L_x_17_split_0x04d0:                             ; preds = %.L_x_17
  %.417 = add i32 %imad_add.15, %UR4.0
  %.418 = add i32 %.417, 0
  %.424 = load i32, ptr %R4, align 4
  %imad_mul.27 = mul i32 %.418, %Arg_2
  %imad_add.27 = add i32 %imad_mul.27, %.424
  store i32 %imad_add.27, ptr %R2, align 4
  %.427 = load i32, ptr %R2, align 4
  %imad_ext1.6 = zext i32 %.427 to i64
  %imad_ext2.6 = zext i32 4 to i64
  %imad_mul.28 = mul i64 %imad_ext1.6, %imad_ext2.6
  %.429 = ptrtoint ptr %Arg_0 to i64
  %imad_add.28 = add i64 %imad_mul.28, %.429
  %.430 = and i64 %imad_add.28, -4294967296
  %.431 = lshr i64 %.430, 32
  %trunc32.8 = trunc i64 %.431 to i32
  %trunc32.9 = trunc i64 %imad_add.28 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  %.435 = load i32, ptr %R2, align 4
  %zext.8 = zext i32 %.435 to i64
  %zext.9 = zext i32 %trunc32.8 to i64
  %shl.4 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.4, %zext.8
  %inttoptr_bytes.4 = inttoptr i64 %or.4 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.437 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.438 = bitcast ptr %R2 to ptr
  store float %.437, ptr %.438, align 4
  %cmp.11 = icmp ne i32 %.243, 1
  %.444 = and i1 %cmp.11, true
  %cast_ptr.10 = bitcast ptr %R11 to ptr
  %.448 = load float, ptr %cast_ptr.10, align 4
  %cast_ptr.11 = bitcast ptr %R2 to ptr
  %.449 = load float, ptr %cast_ptr.11, align 4
  %.450 = xor i1 true, true
  %.451 = fcmp olt float %.448, %.449
  %.452 = fcmp ogt float %.448, %.449
  %mnmx_min.4 = select i1 %.451, float %.448, float %.449
  %mnmx_max.4 = select i1 %.452, float %.448, float %.449
  %mnmx_final.4 = select i1 %.450, float %mnmx_min.4, float %mnmx_max.4
  %.453 = bitcast ptr %R11 to ptr
  store float %mnmx_final.4, ptr %.453, align 4
  %.457 = icmp ne i1 %.444, true
  br i1 %.457, label %.L_x_19, label %.L_x_17_split_0x0550

.L_x_17_split_0x0550:                             ; preds = %.L_x_17_split_0x04d0
  %cmp.12 = icmp ne i32 %.243, 2
  %.463 = and i1 %cmp.12, true
  %.468 = add i32 %.418, 1
  %.469 = add i32 %.468, 0
  store i32 %.469, ptr %R2, align 4
  %.472 = load i32, ptr %R2, align 4
  %.473 = load i32, ptr %R4, align 4
  %imad_mul.29 = mul i32 %.472, %Arg_2
  %imad_add.29 = add i32 %imad_mul.29, %.473
  store i32 %imad_add.29, ptr %R2, align 4
  %.477 = icmp eq i1 %.463, true
  br i1 %.477, label %.L_x_17_split_0x0550_conditionalExpr_0x0580, label %.L_x_17_split_0x0590

.L_x_17_split_0x0550_conditionalExpr_0x0580:      ; preds = %.L_x_17_split_0x0550
  %.481 = add i32 %.418, 2
  %.482 = add i32 %.481, 0
  br label %.L_x_17_split_0x0590

.L_x_17_split_0x0590:                             ; preds = %.L_x_17_split_0x0550_conditionalExpr_0x0580, %.L_x_17_split_0x0550
  %R3.2 = phi i32 [ %.482, %.L_x_17_split_0x0550_conditionalExpr_0x0580 ], [ %trunc32.8, %.L_x_17_split_0x0550 ]
  %.488 = icmp eq i1 %.463, true
  br i1 %.488, label %.L_x_17_split_0x0590_conditionalExpr_0x0590, label %.L_x_17_split_0x05a0

.L_x_17_split_0x0590_conditionalExpr_0x0590:      ; preds = %.L_x_17_split_0x0590
  %.492 = load i32, ptr %R4, align 4
  %imad_mul.30 = mul i32 %R3.2, %Arg_2
  %imad_add.30 = add i32 %imad_mul.30, %.492
  store i32 %imad_add.30, ptr %R4, align 4
  br label %.L_x_17_split_0x05a0

.L_x_17_split_0x05a0:                             ; preds = %.L_x_17_split_0x0590_conditionalExpr_0x0590, %.L_x_17_split_0x0590
  %.497 = load i32, ptr %R2, align 4
  %imad_ext1.7 = zext i32 %.497 to i64
  %imad_ext2.7 = zext i32 4 to i64
  %imad_mul.31 = mul i64 %imad_ext1.7, %imad_ext2.7
  %.499 = ptrtoint ptr %Arg_0 to i64
  %imad_add.31 = add i64 %imad_mul.31, %.499
  %.500 = and i64 %imad_add.31, -4294967296
  %.501 = lshr i64 %.500, 32
  %trunc32.10 = trunc i64 %.501 to i32
  %trunc32.11 = trunc i64 %imad_add.31 to i32
  store i32 %trunc32.11, ptr %R2, align 4
  %.506 = icmp eq i1 %.463, true
  br i1 %.506, label %.L_x_17_split_0x05a0_conditionalExpr_0x05b0, label %.L_x_17_split_0x05c0

.L_x_17_split_0x05a0_conditionalExpr_0x05b0:      ; preds = %.L_x_17_split_0x05a0
  %.509 = load i32, ptr %R4, align 4
  %imad_ext1.8 = zext i32 %.509 to i64
  %imad_ext2.8 = zext i32 4 to i64
  %imad_mul.32 = mul i64 %imad_ext1.8, %imad_ext2.8
  %.511 = ptrtoint ptr %Arg_0 to i64
  %imad_add.32 = add i64 %imad_mul.32, %.511
  %.512 = and i64 %imad_add.32, -4294967296
  %.513 = lshr i64 %.512, 32
  %trunc32.12 = trunc i64 %.513 to i32
  %trunc32.13 = trunc i64 %imad_add.32 to i32
  store i32 %trunc32.13, ptr %R4, align 4
  br label %.L_x_17_split_0x05c0

.L_x_17_split_0x05c0:                             ; preds = %.L_x_17_split_0x05a0_conditionalExpr_0x05b0, %.L_x_17_split_0x05a0
  %R5.0 = phi i32 [ %trunc32.12, %.L_x_17_split_0x05a0_conditionalExpr_0x05b0 ], [ %.418, %.L_x_17_split_0x05a0 ]
  %.519 = load i32, ptr %R2, align 4
  %zext.10 = zext i32 %.519 to i64
  %zext.11 = zext i32 %trunc32.10 to i64
  %shl.5 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.5, %zext.10
  %inttoptr_bytes.5 = inttoptr i64 %or.5 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.521 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.522 = bitcast ptr %R2 to ptr
  store float %.521, ptr %.522, align 4
  %.526 = icmp eq i1 %.463, true
  br i1 %.526, label %.L_x_17_split_0x05c0_conditionalExpr_0x05d0, label %.L_x_17_split_0x05e0

.L_x_17_split_0x05c0_conditionalExpr_0x05d0:      ; preds = %.L_x_17_split_0x05c0
  %.529 = load i32, ptr %R4, align 4
  %zext.12 = zext i32 %.529 to i64
  %zext.13 = zext i32 %R5.0 to i64
  %shl.6 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.6, %zext.12
  %inttoptr_bytes.6 = inttoptr i64 %or.6 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.531 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.532 = bitcast ptr %R4 to ptr
  store float %.531, ptr %.532, align 4
  br label %.L_x_17_split_0x05e0

.L_x_17_split_0x05e0:                             ; preds = %.L_x_17_split_0x05c0_conditionalExpr_0x05d0, %.L_x_17_split_0x05c0
  %cast_ptr.12 = bitcast ptr %R11 to ptr
  %.537 = load float, ptr %cast_ptr.12, align 4
  %cast_ptr.13 = bitcast ptr %R2 to ptr
  %.538 = load float, ptr %cast_ptr.13, align 4
  %.539 = xor i1 true, true
  %.540 = fcmp olt float %.537, %.538
  %.541 = fcmp ogt float %.537, %.538
  %mnmx_min.5 = select i1 %.540, float %.537, float %.538
  %mnmx_max.5 = select i1 %.541, float %.537, float %.538
  %mnmx_final.5 = select i1 %.539, float %mnmx_min.5, float %mnmx_max.5
  %.542 = bitcast ptr %R11 to ptr
  store float %mnmx_final.5, ptr %.542, align 4
  %.546 = icmp eq i1 %.463, true
  br i1 %.546, label %.L_x_17_split_0x05e0_conditionalExpr_0x05f0, label %.L_x_19

.L_x_17_split_0x05e0_conditionalExpr_0x05f0:      ; preds = %.L_x_17_split_0x05e0
  %cast_ptr.14 = bitcast ptr %R11 to ptr
  %.549 = load float, ptr %cast_ptr.14, align 4
  %cast_ptr.15 = bitcast ptr %R4 to ptr
  %.550 = load float, ptr %cast_ptr.15, align 4
  %.551 = xor i1 true, true
  %.552 = fcmp olt float %.549, %.550
  %.553 = fcmp ogt float %.549, %.550
  %mnmx_min.6 = select i1 %.552, float %.549, float %.550
  %mnmx_max.6 = select i1 %.553, float %.549, float %.550
  %mnmx_final.6 = select i1 %.551, float %mnmx_min.6, float %mnmx_max.6
  %.554 = bitcast ptr %R11 to ptr
  store float %mnmx_final.6, ptr %.554, align 4
  br label %.L_x_19

.L_x_19:                                          ; preds = %.L_x_17_split_0x05e0_conditionalExpr_0x05f0, %.L_x_17_split_0x05e0, %.L_x_17_split_0x04d0, %.L_x_17
  %.560 = add i32 %R16.0, 1
  %.561 = add i32 %.560, 0
  %cmp.13 = icmp sge i32 %.561, %Arg_3
  %.567 = and i1 %cmp.13, true
  %.572 = icmp ne i1 %.567, true
  br i1 %.572, label %.L_x_20, label %.L_x_16.loopexit

.L_x_16.loopexit:                                 ; preds = %.L_x_19
  br label %.L_x_16

.L_x_16:                                          ; preds = %.L_x_16.loopexit, %.text._Z10max_pool2dPfS_iii_split_0x0250
  %imad_mul.33 = mul i32 %R21.1, %nvvm_ctaid_z
  %imad_add.33 = add i32 %imad_mul.33, %imad_add.11
  %imad_mul.34 = mul i32 0, 0
  %imad_add.34 = add i32 %imad_mul.34, 4
  store i32 %imad_add.34, ptr %R2, align 4
  %.584 = load i32, ptr %R0, align 4
  %imad_mul.35 = mul i32 %R21.1, %imad_add.33
  %imad_add.35 = add i32 %imad_mul.35, %.584
  %.588 = load i32, ptr %R2, align 4
  %imad_ext1.9 = zext i32 %imad_add.35 to i64
  %imad_ext2.9 = zext i32 %.588 to i64
  %imad_mul.36 = mul i64 %imad_ext1.9, %imad_ext2.9
  %.589 = ptrtoint ptr %Arg_1 to i64
  %imad_add.36 = add i64 %imad_mul.36, %.589
  %.590 = and i64 %imad_add.36, -4294967296
  %.591 = lshr i64 %.590, 32
  %trunc32.14 = trunc i64 %.591 to i32
  %trunc32.15 = trunc i64 %imad_add.36 to i32
  store i32 %trunc32.15, ptr %R2, align 4
  %.595 = load i32, ptr %R11, align 4
  %.596 = load i32, ptr %R2, align 4
  %zext.14 = zext i32 %.596 to i64
  %zext.15 = zext i32 %trunc32.14 to i64
  %shl.7 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.7, %zext.14
  %inttoptr_bytes.7 = inttoptr i64 %or.7 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  store i32 %.595, ptr addrspace(1) %ptr_cast_for_access.7, align 4
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
  %cast_ptr = bitcast ptr %R2 to ptr
  %.57 = load float, ptr %cast_ptr, align 4
  %.58 = xor i1 true, true
  %.59 = fcmp olt float 0.000000e+00, %.57
  %.60 = fcmp ogt float 0.000000e+00, %.57
  %mnmx_min = select i1 %.59, float 0.000000e+00, float %.57
  %mnmx_max = select i1 %.60, float 0.000000e+00, float %.57
  %mnmx_final = select i1 %.58, float %mnmx_min, float %mnmx_max
  %.61 = bitcast ptr %R7 to ptr
  store float %mnmx_final, ptr %.61, align 4
  %cast_ptr.1 = bitcast ptr %R7 to ptr
  %.64 = load float, ptr %cast_ptr.1, align 4
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
  %.100 = bitcast ptr %R12 to ptr
  store float 0.000000e+00, ptr %.100, align 4
  %.104 = sub i32 0, 1
  %.105 = add i32 %.104, %Arg_4
  %.106 = add i32 %.105, 0
  %.111 = and i32 %imad_add.3, 3
  %cmp.5 = icmp sge i32 %.106, 3
  %.117 = and i1 %cmp.5, true
  %.122 = sub i32 0, %Arg_4
  %.123 = add i32 %.111, %.122
  %.124 = add i32 %.123, 0
  br label %.L_x_28

.L_x_28:                                          ; preds = %.L_x_26_split_0x0610, %.text._Z6conv2dPfS_S_iiii_split_0x0130
  %R10.0 = phi i32 [ %imad_add.4, %.text._Z6conv2dPfS_S_iiii_split_0x0130 ], [ %.140, %.L_x_26_split_0x0610 ]
  %imad_mul.5 = mul i32 %R10.0, %Arg_3
  %imad_add.5 = add i32 %imad_mul.5, %imad_add
  %imad_mul.6 = mul i32 %nvvm_ctaid_z, %Arg_5
  %imad_add.6 = add i32 %imad_mul.6, %R10.0
  %.139 = add i32 %R10.0, 1
  %.140 = add i32 %.139, 0
  %imad_mul.7 = mul i32 %imad_add.5, %Arg_3
  %imad_add.7 = add i32 %imad_mul.7, %imad_add.1
  %cmp.6 = icmp sge i32 %.140, %Arg_5
  %.150 = and i1 %cmp.6, true
  br label %.L_x_27

.L_x_27:                                          ; preds = %.L_x_26, %.L_x_28
  %R8.0 = phi i32 [ 0, %.L_x_28 ], [ %.531, %.L_x_26 ]
  %imad_mul.8 = mul i32 %imad_add.6, %Arg_4
  %imad_add.8 = add i32 %imad_mul.8, %R8.0
  store i32 %imad_add.8, ptr %R6, align 4
  %cmp.7 = icmp ne i32 %.111, 0
  %.164 = and i1 %cmp.7, true
  %.168 = load i32, ptr %R6, align 4
  %imad_mul.9 = mul i32 %.168, %Arg_4
  %imad_add.9 = add i32 %imad_mul.9, 0
  %.172 = icmp ne i1 %.117, true
  br i1 %.172, label %.L_x_24, label %.L_x_27_split_0x0260

.L_x_27_split_0x0260:                             ; preds = %.L_x_27
  %imad_mul.10 = mul i32 %imad_add.7, 1
  %imad_add.10 = add i32 %imad_mul.10, %R8.0
  store i32 %imad_add.10, ptr %R13, align 4
  %imad_ext1 = zext i32 %imad_add.9 to i64
  %imad_ext2 = zext i32 4 to i64
  %imad_mul.11 = mul i64 %imad_ext1, %imad_ext2
  %.185 = ptrtoint ptr %Arg_1 to i64
  %imad_add.11 = add i64 %imad_mul.11, %.185
  %.186 = and i64 %imad_add.11, -4294967296
  %.187 = lshr i64 %.186, 32
  %trunc32 = trunc i64 %.187 to i32
  %trunc32.1 = trunc i64 %imad_add.11 to i32
  store i32 %trunc32.1, ptr %R6, align 4
  %.191 = load i32, ptr %R6, align 4
  store i32 %.191, ptr %R23, align 4
  br label %.L_x_25

.L_x_25:                                          ; preds = %.L_x_25, %.L_x_27_split_0x0260
  %R7.0 = phi i32 [ %trunc32, %.L_x_27_split_0x0260 ], [ %add.4, %.L_x_25 ]
  %UR4.1 = phi i32 [ 0, %.L_x_27_split_0x0260 ], [ %.279, %.L_x_25 ]
  %.195 = load i32, ptr %R13, align 4
  %imad_ext1.1 = zext i32 %.195 to i64
  %imad_ext2.1 = zext i32 4 to i64
  %imad_mul.12 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.197 = ptrtoint ptr %Arg_0 to i64
  %imad_add.12 = add i64 %imad_mul.12, %.197
  %.198 = and i64 %imad_add.12, -4294967296
  %.199 = lshr i64 %.198, 32
  %trunc32.2 = trunc i64 %.199 to i32
  %trunc32.3 = trunc i64 %imad_add.12 to i32
  store i32 %trunc32.3, ptr %R14, align 4
  %.205 = load i32, ptr %R23, align 4
  %imad_mul.13 = mul i32 0, 0
  %imad_add.13 = add i32 %imad_mul.13, %.205
  store i32 %imad_add.13, ptr %R6, align 4
  %.209 = load i32, ptr %R14, align 4
  %imad_ext1.2 = zext i32 %Arg_3 to i64
  %imad_ext2.2 = zext i32 4 to i64
  %imad_mul.14 = mul i64 %imad_ext1.2, %imad_ext2.2
  %imad_ext3 = zext i32 %.209 to i64
  %imad_add.14 = add i64 %imad_mul.14, %imad_ext3
  %.210 = and i64 %imad_add.14, -4294967296
  %.211 = lshr i64 %.210, 32
  %trunc32.4 = trunc i64 %.211 to i32
  %trunc32.5 = trunc i64 %imad_add.14 to i32
  store i32 %trunc32.5, ptr %R16, align 4
  %.215 = load i32, ptr %R14, align 4
  %zext = zext i32 %.215 to i64
  %zext.1 = zext i32 %trunc32.2 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.217 = load float, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.218 = bitcast ptr %R14 to ptr
  store float %.217, ptr %.218, align 4
  %.221 = load i32, ptr %R6, align 4
  %zext.2 = zext i32 %.221 to i64
  %zext.3 = zext i32 %R7.0 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  %.223 = load float, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  %.224 = bitcast ptr %R23 to ptr
  store float %.223, ptr %.224, align 4
  %.228 = load i32, ptr %R16, align 4
  %imad_ext1.3 = zext i32 %Arg_3 to i64
  %imad_ext2.3 = zext i32 4 to i64
  %imad_mul.15 = mul i64 %imad_ext1.3, %imad_ext2.3
  %imad_ext3.1 = zext i32 %.228 to i64
  %imad_add.15 = add i64 %imad_mul.15, %imad_ext3.1
  %.229 = and i64 %imad_add.15, -4294967296
  %.230 = lshr i64 %.229, 32
  %trunc32.6 = trunc i64 %.230 to i32
  %trunc32.7 = trunc i64 %imad_add.15 to i32
  store i32 %trunc32.7, ptr %R18, align 4
  store i32 %trunc32.6, ptr %R19, align 4
  %.234 = load i32, ptr %R16, align 4
  %zext.4 = zext i32 %.234 to i64
  %zext.5 = zext i32 %trunc32.4 to i64
  %shl.2 = shl i64 %zext.5, 32
  %or.2 = or i64 %shl.2, %zext.4
  %inttoptr_bytes.2 = inttoptr i64 %or.2 to ptr addrspace(1)
  %ptr_cast_for_access.2 = bitcast ptr addrspace(1) %inttoptr_bytes.2 to ptr addrspace(1)
  %.236 = load float, ptr addrspace(1) %ptr_cast_for_access.2, align 4
  %.237 = bitcast ptr %R16 to ptr
  store float %.236, ptr %.237, align 4
  %.241 = load i32, ptr %R18, align 4
  %imad_ext1.4 = zext i32 %Arg_3 to i64
  %imad_ext2.4 = zext i32 4 to i64
  %imad_mul.16 = mul i64 %imad_ext1.4, %imad_ext2.4
  %imad_ext3.2 = zext i32 %.241 to i64
  %imad_add.16 = add i64 %imad_mul.16, %imad_ext3.2
  %.242 = and i64 %imad_add.16, -4294967296
  %.243 = lshr i64 %.242, 32
  %trunc32.8 = trunc i64 %.243 to i32
  %trunc32.9 = trunc i64 %imad_add.16 to i32
  store i32 %trunc32.9, ptr %R20, align 4
  %.247 = load i32, ptr %R6, align 4
  %zext.6 = zext i32 %.247 to i64
  %zext.7 = zext i32 %R7.0 to i64
  %shl.3 = shl i64 %zext.7, 32
  %or.3 = or i64 %shl.3, %zext.6
  %ptr_plus_imm = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %ptr_cast_for_access.3 = bitcast ptr addrspace(1) %inttoptr_bytes.3 to ptr addrspace(1)
  %.249 = load float, ptr addrspace(1) %ptr_cast_for_access.3, align 4
  %.250 = bitcast ptr %R22 to ptr
  store float %.249, ptr %.250, align 4
  %.253 = load i32, ptr %R18, align 4
  %zext.8 = zext i32 %.253 to i64
  %.254 = load i32, ptr %R19, align 4
  %zext.9 = zext i32 %.254 to i64
  %shl.4 = shl i64 %zext.9, 32
  %or.4 = or i64 %shl.4, %zext.8
  %inttoptr_bytes.4 = inttoptr i64 %or.4 to ptr addrspace(1)
  %ptr_cast_for_access.4 = bitcast ptr addrspace(1) %inttoptr_bytes.4 to ptr addrspace(1)
  %.255 = load float, ptr addrspace(1) %ptr_cast_for_access.4, align 4
  %.256 = bitcast ptr %R18 to ptr
  store float %.255, ptr %.256, align 4
  %.259 = load i32, ptr %R6, align 4
  %zext.10 = zext i32 %.259 to i64
  %zext.11 = zext i32 %R7.0 to i64
  %shl.5 = shl i64 %zext.11, 32
  %or.5 = or i64 %shl.5, %zext.10
  %ptr_plus_imm.1 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %ptr_cast_for_access.5 = bitcast ptr addrspace(1) %inttoptr_bytes.5 to ptr addrspace(1)
  %.261 = load float, ptr addrspace(1) %ptr_cast_for_access.5, align 4
  %.262 = bitcast ptr %R25 to ptr
  store float %.261, ptr %.262, align 4
  %.265 = load i32, ptr %R20, align 4
  %zext.12 = zext i32 %.265 to i64
  %zext.13 = zext i32 %trunc32.8 to i64
  %shl.6 = shl i64 %zext.13, 32
  %or.6 = or i64 %shl.6, %zext.12
  %inttoptr_bytes.6 = inttoptr i64 %or.6 to ptr addrspace(1)
  %ptr_cast_for_access.6 = bitcast ptr addrspace(1) %inttoptr_bytes.6 to ptr addrspace(1)
  %.267 = load float, ptr addrspace(1) %ptr_cast_for_access.6, align 4
  %.268 = bitcast ptr %R20 to ptr
  store float %.267, ptr %.268, align 4
  %.271 = load i32, ptr %R6, align 4
  %zext.14 = zext i32 %.271 to i64
  %zext.15 = zext i32 %R7.0 to i64
  %shl.7 = shl i64 %zext.15, 32
  %or.7 = or i64 %shl.7, %zext.14
  %ptr_plus_imm.2 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %ptr_cast_for_access.7 = bitcast ptr addrspace(1) %inttoptr_bytes.7 to ptr addrspace(1)
  %.273 = load float, ptr addrspace(1) %ptr_cast_for_access.7, align 4
  %.274 = bitcast ptr %R27 to ptr
  store float %.273, ptr %.274, align 4
  %.278 = add i32 %UR4.1, 4
  %.279 = add i32 %.278, 0
  %.283 = load i32, ptr %R13, align 4
  %shl.8 = shl i32 %Arg_3, 2
  %add = add i32 %shl.8, %.283
  store i32 %add, ptr %R13, align 4
  %cast_ptr = bitcast ptr %R23 to ptr
  %.286 = load float, ptr %cast_ptr, align 4
  %cast_ptr.1 = bitcast ptr %R14 to ptr
  %.287 = load float, ptr %cast_ptr.1, align 4
  %cast_ptr.2 = bitcast ptr %R12 to ptr
  %.288 = load float, ptr %cast_ptr.2, align 4
  %fmul = fmul float %.286, %.287
  %fadd = fadd float %fmul, %.288
  %.289 = bitcast ptr %R23 to ptr
  store float %fadd, ptr %.289, align 4
  %.294 = add i32 %.124, %.279
  %.295 = add i32 %.294, 0
  store i32 %.295, ptr %R12, align 4
  %.298 = load i32, ptr %R12, align 4
  %cmp.8 = icmp ne i32 %.298, 0
  %.301 = and i1 %cmp.8, true
  %cast_ptr.3 = bitcast ptr %R22 to ptr
  %.305 = load float, ptr %cast_ptr.3, align 4
  %cast_ptr.4 = bitcast ptr %R16 to ptr
  %.306 = load float, ptr %cast_ptr.4, align 4
  %cast_ptr.5 = bitcast ptr %R23 to ptr
  %.307 = load float, ptr %cast_ptr.5, align 4
  %fmul.1 = fmul float %.305, %.306
  %fadd.1 = fadd float %fmul.1, %.307
  %.308 = bitcast ptr %R22 to ptr
  store float %fadd.1, ptr %.308, align 4
  %.311 = load i32, ptr %R6, align 4
  %.312 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.311, i32 16)
  %.313 = extractvalue { i32, i1 } %.312, 0
  %.314 = extractvalue { i32, i1 } %.312, 1
  %.315 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.313, i32 0)
  %.316 = extractvalue { i32, i1 } %.315, 0
  %.317 = extractvalue { i32, i1 } %.315, 1
  %.318 = or i1 %.314, %.317
  store i32 %.316, ptr %R23, align 4
  %cast_ptr.6 = bitcast ptr %R25 to ptr
  %.322 = load float, ptr %cast_ptr.6, align 4
  %cast_ptr.7 = bitcast ptr %R18 to ptr
  %.323 = load float, ptr %cast_ptr.7, align 4
  %cast_ptr.8 = bitcast ptr %R22 to ptr
  %.324 = load float, ptr %cast_ptr.8, align 4
  %fmul.2 = fmul float %.322, %.323
  %fadd.2 = fadd float %fmul.2, %.324
  %.325 = bitcast ptr %R22 to ptr
  store float %fadd.2, ptr %.325, align 4
  %.330 = xor i1 true, true
  %.331 = zext i1 %.318 to i32
  %.332 = zext i1 %.330 to i32
  %add.1 = add i32 0, %R7.0
  %add.2 = add i32 %add.1, 0
  %add.3 = add i32 %add.2, %.331
  %add.4 = add i32 %add.3, %.332
  %cast_ptr.9 = bitcast ptr %R27 to ptr
  %.335 = load float, ptr %cast_ptr.9, align 4
  %cast_ptr.10 = bitcast ptr %R20 to ptr
  %.336 = load float, ptr %cast_ptr.10, align 4
  %cast_ptr.11 = bitcast ptr %R22 to ptr
  %.337 = load float, ptr %cast_ptr.11, align 4
  %fmul.3 = fmul float %.335, %.336
  %fadd.3 = fadd float %fmul.3, %.337
  %.338 = bitcast ptr %R12 to ptr
  store float %fadd.3, ptr %.338, align 4
  %.342 = icmp eq i1 %.301, true
  br i1 %.342, label %.L_x_25, label %.L_x_24.loopexit

.L_x_24.loopexit:                                 ; preds = %.L_x_25
  br label %.L_x_24

.L_x_24:                                          ; preds = %.L_x_24.loopexit, %.L_x_27
  %UR4.0 = phi i32 [ 0, %.L_x_27 ], [ %.279, %.L_x_24.loopexit ]
  %imad_mul.17 = mul i32 %imad_add.1, 1
  %imad_add.17 = add i32 %imad_mul.17, %R8.0
  store i32 %imad_add.17, ptr %R14, align 4
  %.350 = icmp ne i1 %.164, true
  br i1 %.350, label %.L_x_26, label %.L_x_24_split_0x0460

.L_x_24_split_0x0460:                             ; preds = %.L_x_24
  %.355 = add i32 %imad_add.5, %UR4.0
  %.356 = add i32 %.355, 0
  %.361 = add i32 %imad_add.9, %UR4.0
  %.362 = add i32 %.361, 0
  store i32 %.362, ptr %R16, align 4
  store i32 4, ptr %R19, align 4
  %.368 = load i32, ptr %R14, align 4
  %imad_mul.18 = mul i32 %.356, %Arg_3
  %imad_add.18 = add i32 %imad_mul.18, %.368
  store i32 %imad_add.18, ptr %R6, align 4
  %.371 = load i32, ptr %R16, align 4
  %.372 = load i32, ptr %R19, align 4
  %imad_ext1.5 = zext i32 %.371 to i64
  %imad_ext2.5 = zext i32 %.372 to i64
  %imad_mul.19 = mul i64 %imad_ext1.5, %imad_ext2.5
  %.373 = ptrtoint ptr %Arg_1 to i64
  %imad_add.19 = add i64 %imad_mul.19, %.373
  %.374 = and i64 %imad_add.19, -4294967296
  %.375 = lshr i64 %.374, 32
  %trunc32.10 = trunc i64 %.375 to i32
  %trunc32.11 = trunc i64 %imad_add.19 to i32
  store i32 %trunc32.11, ptr %R16, align 4
  %.379 = load i32, ptr %R6, align 4
  %.380 = load i32, ptr %R19, align 4
  %imad_ext1.6 = zext i32 %.379 to i64
  %imad_ext2.6 = zext i32 %.380 to i64
  %imad_mul.20 = mul i64 %imad_ext1.6, %imad_ext2.6
  %.381 = ptrtoint ptr %Arg_0 to i64
  %imad_add.20 = add i64 %imad_mul.20, %.381
  %.382 = and i64 %imad_add.20, -4294967296
  %.383 = lshr i64 %.382, 32
  %trunc32.12 = trunc i64 %.383 to i32
  %trunc32.13 = trunc i64 %imad_add.20 to i32
  store i32 %trunc32.13, ptr %R6, align 4
  %.387 = load i32, ptr %R16, align 4
  %zext.16 = zext i32 %.387 to i64
  %zext.17 = zext i32 %trunc32.10 to i64
  %shl.9 = shl i64 %zext.17, 32
  %or.8 = or i64 %shl.9, %zext.16
  %inttoptr_bytes.8 = inttoptr i64 %or.8 to ptr addrspace(1)
  %ptr_cast_for_access.8 = bitcast ptr addrspace(1) %inttoptr_bytes.8 to ptr addrspace(1)
  %.389 = load float, ptr addrspace(1) %ptr_cast_for_access.8, align 4
  %.390 = bitcast ptr %R13 to ptr
  store float %.389, ptr %.390, align 4
  %.393 = load i32, ptr %R6, align 4
  %zext.18 = zext i32 %.393 to i64
  %zext.19 = zext i32 %trunc32.12 to i64
  %shl.10 = shl i64 %zext.19, 32
  %or.9 = or i64 %shl.10, %zext.18
  %inttoptr_bytes.9 = inttoptr i64 %or.9 to ptr addrspace(1)
  %ptr_cast_for_access.9 = bitcast ptr addrspace(1) %inttoptr_bytes.9 to ptr addrspace(1)
  %.395 = load float, ptr addrspace(1) %ptr_cast_for_access.9, align 4
  %.396 = bitcast ptr %R6 to ptr
  store float %.395, ptr %.396, align 4
  %cmp.9 = icmp ne i32 %.111, 1
  %.402 = and i1 %cmp.9, true
  %cast_ptr.12 = bitcast ptr %R13 to ptr
  %.406 = load float, ptr %cast_ptr.12, align 4
  %cast_ptr.13 = bitcast ptr %R6 to ptr
  %.407 = load float, ptr %cast_ptr.13, align 4
  %cast_ptr.14 = bitcast ptr %R12 to ptr
  %.408 = load float, ptr %cast_ptr.14, align 4
  %fmul.4 = fmul float %.406, %.407
  %fadd.4 = fadd float %fmul.4, %.408
  %.409 = bitcast ptr %R12 to ptr
  store float %fadd.4, ptr %.409, align 4
  %.413 = icmp ne i1 %.402, true
  br i1 %.413, label %.L_x_26, label %.L_x_24_split_0x0510

.L_x_24_split_0x0510:                             ; preds = %.L_x_24_split_0x0460
  %cmp.10 = icmp ne i32 %.111, 2
  %.419 = and i1 %cmp.10, true
  %.423 = load i32, ptr %R16, align 4
  %zext.20 = zext i32 %.423 to i64
  %zext.21 = zext i32 %trunc32.10 to i64
  %shl.11 = shl i64 %zext.21, 32
  %or.10 = or i64 %shl.11, %zext.20
  %ptr_plus_imm.3 = add i64 %or.10, 4
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %ptr_cast_for_access.10 = bitcast ptr addrspace(1) %inttoptr_bytes.10 to ptr addrspace(1)
  %.425 = load float, ptr addrspace(1) %ptr_cast_for_access.10, align 4
  %.426 = bitcast ptr %R13 to ptr
  store float %.425, ptr %.426, align 4
  %.430 = add i32 %.356, 1
  %.431 = add i32 %.430, 0
  store i32 %.431, ptr %R6, align 4
  %.434 = load i32, ptr %R6, align 4
  %.435 = load i32, ptr %R14, align 4
  %imad_mul.21 = mul i32 %.434, %Arg_3
  %imad_add.21 = add i32 %imad_mul.21, %.435
  store i32 %imad_add.21, ptr %R6, align 4
  %.439 = icmp eq i1 %.419, true
  br i1 %.439, label %.L_x_24_split_0x0510_conditionalExpr_0x0550, label %.L_x_24_split_0x0560

.L_x_24_split_0x0510_conditionalExpr_0x0550:      ; preds = %.L_x_24_split_0x0510
  %.443 = add i32 %.356, 2
  %.444 = add i32 %.443, 0
  br label %.L_x_24_split_0x0560

.L_x_24_split_0x0560:                             ; preds = %.L_x_24_split_0x0510_conditionalExpr_0x0550, %.L_x_24_split_0x0510
  %R7.1 = phi i32 [ %.444, %.L_x_24_split_0x0510_conditionalExpr_0x0550 ], [ %trunc32.12, %.L_x_24_split_0x0510 ]
  %.450 = icmp eq i1 %.419, true
  br i1 %.450, label %.L_x_24_split_0x0560_conditionalExpr_0x0560, label %.L_x_24_split_0x0570

.L_x_24_split_0x0560_conditionalExpr_0x0560:      ; preds = %.L_x_24_split_0x0560
  %.454 = load i32, ptr %R14, align 4
  %imad_mul.22 = mul i32 %R7.1, %Arg_3
  %imad_add.22 = add i32 %imad_mul.22, %.454
  store i32 %imad_add.22, ptr %R14, align 4
  br label %.L_x_24_split_0x0570

.L_x_24_split_0x0570:                             ; preds = %.L_x_24_split_0x0560_conditionalExpr_0x0560, %.L_x_24_split_0x0560
  %.459 = load i32, ptr %R6, align 4
  %.460 = load i32, ptr %R19, align 4
  %imad_ext1.7 = zext i32 %.459 to i64
  %imad_ext2.7 = zext i32 %.460 to i64
  %imad_mul.23 = mul i64 %imad_ext1.7, %imad_ext2.7
  %.461 = ptrtoint ptr %Arg_0 to i64
  %imad_add.23 = add i64 %imad_mul.23, %.461
  %.462 = and i64 %imad_add.23, -4294967296
  %.463 = lshr i64 %.462, 32
  %trunc32.14 = trunc i64 %.463 to i32
  %trunc32.15 = trunc i64 %imad_add.23 to i32
  store i32 %trunc32.15, ptr %R6, align 4
  %.468 = icmp eq i1 %.419, true
  br i1 %.468, label %.L_x_24_split_0x0570_conditionalExpr_0x0580, label %.L_x_24_split_0x0590

.L_x_24_split_0x0570_conditionalExpr_0x0580:      ; preds = %.L_x_24_split_0x0570
  %.471 = load i32, ptr %R14, align 4
  %.472 = load i32, ptr %R19, align 4
  %imad_ext1.8 = zext i32 %.471 to i64
  %imad_ext2.8 = zext i32 %.472 to i64
  %imad_mul.24 = mul i64 %imad_ext1.8, %imad_ext2.8
  %.473 = ptrtoint ptr %Arg_0 to i64
  %imad_add.24 = add i64 %imad_mul.24, %.473
  %.474 = and i64 %imad_add.24, -4294967296
  %.475 = lshr i64 %.474, 32
  %trunc32.16 = trunc i64 %.475 to i32
  %trunc32.17 = trunc i64 %imad_add.24 to i32
  store i32 %trunc32.17, ptr %R14, align 4
  br label %.L_x_24_split_0x0590

.L_x_24_split_0x0590:                             ; preds = %.L_x_24_split_0x0570_conditionalExpr_0x0580, %.L_x_24_split_0x0570
  %R15.0 = phi i32 [ %trunc32.16, %.L_x_24_split_0x0570_conditionalExpr_0x0580 ], [ %.356, %.L_x_24_split_0x0570 ]
  %.482 = icmp eq i1 %.419, true
  br i1 %.482, label %.L_x_24_split_0x0590_conditionalExpr_0x0590, label %.L_x_24_split_0x05a0

.L_x_24_split_0x0590_conditionalExpr_0x0590:      ; preds = %.L_x_24_split_0x0590
  %.485 = load i32, ptr %R16, align 4
  %zext.22 = zext i32 %.485 to i64
  %zext.23 = zext i32 %trunc32.10 to i64
  %shl.12 = shl i64 %zext.23, 32
  %or.11 = or i64 %shl.12, %zext.22
  %ptr_plus_imm.4 = add i64 %or.11, 8
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %ptr_cast_for_access.11 = bitcast ptr addrspace(1) %inttoptr_bytes.11 to ptr addrspace(1)
  %.487 = load float, ptr addrspace(1) %ptr_cast_for_access.11, align 4
  %.488 = bitcast ptr %R19 to ptr
  store float %.487, ptr %.488, align 4
  br label %.L_x_24_split_0x05a0

.L_x_24_split_0x05a0:                             ; preds = %.L_x_24_split_0x0590_conditionalExpr_0x0590, %.L_x_24_split_0x0590
  %.493 = load i32, ptr %R6, align 4
  %zext.24 = zext i32 %.493 to i64
  %zext.25 = zext i32 %trunc32.14 to i64
  %shl.13 = shl i64 %zext.25, 32
  %or.12 = or i64 %shl.13, %zext.24
  %inttoptr_bytes.12 = inttoptr i64 %or.12 to ptr addrspace(1)
  %ptr_cast_for_access.12 = bitcast ptr addrspace(1) %inttoptr_bytes.12 to ptr addrspace(1)
  %.495 = load float, ptr addrspace(1) %ptr_cast_for_access.12, align 4
  %.496 = bitcast ptr %R6 to ptr
  store float %.495, ptr %.496, align 4
  %.500 = icmp eq i1 %.419, true
  br i1 %.500, label %.L_x_24_split_0x05a0_conditionalExpr_0x05b0, label %.L_x_24_split_0x05c0

.L_x_24_split_0x05a0_conditionalExpr_0x05b0:      ; preds = %.L_x_24_split_0x05a0
  %.503 = load i32, ptr %R14, align 4
  %zext.26 = zext i32 %.503 to i64
  %zext.27 = zext i32 %R15.0 to i64
  %shl.14 = shl i64 %zext.27, 32
  %or.13 = or i64 %shl.14, %zext.26
  %inttoptr_bytes.13 = inttoptr i64 %or.13 to ptr addrspace(1)
  %ptr_cast_for_access.13 = bitcast ptr addrspace(1) %inttoptr_bytes.13 to ptr addrspace(1)
  %.505 = load float, ptr addrspace(1) %ptr_cast_for_access.13, align 4
  %.506 = bitcast ptr %R14 to ptr
  store float %.505, ptr %.506, align 4
  br label %.L_x_24_split_0x05c0

.L_x_24_split_0x05c0:                             ; preds = %.L_x_24_split_0x05a0_conditionalExpr_0x05b0, %.L_x_24_split_0x05a0
  %cast_ptr.15 = bitcast ptr %R13 to ptr
  %.511 = load float, ptr %cast_ptr.15, align 4
  %cast_ptr.16 = bitcast ptr %R6 to ptr
  %.512 = load float, ptr %cast_ptr.16, align 4
  %cast_ptr.17 = bitcast ptr %R12 to ptr
  %.513 = load float, ptr %cast_ptr.17, align 4
  %fmul.5 = fmul float %.511, %.512
  %fadd.5 = fadd float %fmul.5, %.513
  %.514 = bitcast ptr %R12 to ptr
  store float %fadd.5, ptr %.514, align 4
  %.518 = icmp eq i1 %.419, true
  br i1 %.518, label %.L_x_24_split_0x05c0_conditionalExpr_0x05d0, label %.L_x_26

.L_x_24_split_0x05c0_conditionalExpr_0x05d0:      ; preds = %.L_x_24_split_0x05c0
  %cast_ptr.18 = bitcast ptr %R19 to ptr
  %.521 = load float, ptr %cast_ptr.18, align 4
  %cast_ptr.19 = bitcast ptr %R14 to ptr
  %.522 = load float, ptr %cast_ptr.19, align 4
  %cast_ptr.20 = bitcast ptr %R12 to ptr
  %.523 = load float, ptr %cast_ptr.20, align 4
  %fmul.6 = fmul float %.521, %.522
  %fadd.6 = fadd float %fmul.6, %.523
  %.524 = bitcast ptr %R12 to ptr
  store float %fadd.6, ptr %.524, align 4
  br label %.L_x_26

.L_x_26:                                          ; preds = %.L_x_24_split_0x05c0_conditionalExpr_0x05d0, %.L_x_24_split_0x05c0, %.L_x_24_split_0x0460, %.L_x_24
  %.530 = add i32 %R8.0, 1
  %.531 = add i32 %.530, 0
  %cmp.11 = icmp sge i32 %.531, %Arg_4
  %.537 = and i1 %cmp.11, true
  %.542 = icmp ne i1 %.537, true
  br i1 %.542, label %.L_x_27, label %.L_x_26_split_0x0610

.L_x_26_split_0x0610:                             ; preds = %.L_x_26
  %.546 = icmp ne i1 %.150, true
  br i1 %.546, label %.L_x_28, label %.L_x_23.loopexit

.L_x_23.loopexit:                                 ; preds = %.L_x_26_split_0x0610
  br label %.L_x_23

.L_x_23:                                          ; preds = %.L_x_23.loopexit, %.text._Z6conv2dPfS_S_iiii_split_0x00e0
  %.550 = add i32 %.24, 1
  %.551 = add i32 %.550, 0
  %imad_mul.25 = mul i32 %nvvm_ctaid_z, %.551
  %imad_add.25 = add i32 %imad_mul.25, %imad_add
  %imad_mul.26 = mul i32 %imad_add.25, %.551
  %imad_add.26 = add i32 %imad_mul.26, %imad_add.1
  %imad_ext1.9 = zext i32 %imad_add.26 to i64
  %imad_ext2.9 = zext i32 4 to i64
  %imad_mul.27 = mul i64 %imad_ext1.9, %imad_ext2.9
  %.568 = ptrtoint ptr %Arg_2 to i64
  %imad_add.27 = add i64 %imad_mul.27, %.568
  %.569 = and i64 %imad_add.27, -4294967296
  %.570 = lshr i64 %.569, 32
  %trunc32.18 = trunc i64 %.570 to i32
  %trunc32.19 = trunc i64 %imad_add.27 to i32
  %.574 = load i32, ptr %R12, align 4
  %zext.28 = zext i32 %trunc32.19 to i64
  %zext.29 = zext i32 %trunc32.18 to i64
  %shl.15 = shl i64 %zext.29, 32
  %or.14 = or i64 %shl.15, %zext.28
  %inttoptr_bytes.14 = inttoptr i64 %or.14 to ptr addrspace(1)
  %ptr_cast_for_access.14 = bitcast ptr addrspace(1) %inttoptr_bytes.14 to ptr addrspace(1)
  store i32 %.574, ptr addrspace(1) %ptr_cast_for_access.14, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z6conv2dPfS_S_iiii, %.L_x_23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
