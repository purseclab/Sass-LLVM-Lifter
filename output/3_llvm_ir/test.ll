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
  %nvvm_ctaid_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_blockdim_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_x
  %cmp.not = icmp slt i32 %imad_add, %Arg_5
  br i1 %cmp.not, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060, label %ExitFunction

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060: ; preds = %Entry_.text._Z15fc_layer_simplePfS_S_S_ii
  store i32 0, ptr %R7, align 4
  %cmp.1 = icmp slt i32 %Arg_4, 2
  br i1 %cmp.1, label %.L_x_0, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060
  %.53 = add nsw i32 %Arg_4, -2
  store i32 %.53, ptr %R2, align 4
  store i32 0, ptr %R5, align 4
  %.60 = add nuw i32 %Arg_4, 3
  %cmp.2 = icmp slt i32 %Arg_4, 5
  store float 0.000000e+00, ptr %R7, align 4
  %.76 = and i32 %.60, 3
  br i1 %cmp.2, label %.L_x_1, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0
  %.85 = sub nuw nsw i32 %Arg_4, %.76
  %imad_mul.3 = mul i32 %imad_add, %Arg_4
  store i32 %imad_mul.3, ptr %R2, align 4
  %.94 = ptrtoint ptr %Arg_0 to i64
  %.96 = lshr i64 %.94, 32
  %trunc32 = trunc nuw i64 %.96 to i32
  %trunc32.1 = trunc i64 %.94 to i32
  %cmp.3 = icmp sgt i32 %.85, 1
  store i32 0, ptr %R5, align 4
  store float 0.000000e+00, ptr %R7, align 4
  %.112 = load i32, ptr %R2, align 4
  %imad_ext1 = zext i32 %.112 to i64
  %imad_mul.5 = shl nuw nsw i64 %imad_ext1, 2
  %.114 = ptrtoint ptr %Arg_1 to i64
  %imad_add.5 = add i64 %imad_mul.5, %.114
  %.116 = lshr i64 %imad_add.5, 32
  %trunc32.2 = trunc nuw i64 %.116 to i32
  %trunc32.3 = trunc i64 %imad_add.5 to i32
  store i32 %trunc32.3, ptr %R2, align 4
  br i1 %cmp.3, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0, label %.L_x_2.preheader

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110
  %.125 = add nsw i32 %.85, -1
  store i32 %.125, ptr %R8, align 4
  %cmp.4 = icmp slt i32 %.85, 14
  br i1 %cmp.4, label %.L_x_3, label %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0

.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0: ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0
  br label %.L_x_4

.L_x_4:                                           ; preds = %.L_x_4, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0
  %UR4.2 = phi i32 [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %.347, %.L_x_4 ]
  %R6.2 = phi i32 [ %.85, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %.341, %.L_x_4 ]
  %UR5.2 = phi i32 [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %add.2, %.L_x_4 ]
  %R3.2 = phi i32 [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0 ], [ %add.6, %.L_x_4 ]
  %.148 = load i32, ptr %R2, align 4
  %zext = zext i32 %.148 to i64
  %zext.1 = zext i32 %R3.2 to i64
  %shl = shl nuw i64 %zext.1, 32
  %or = or disjoint i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %.150 = load float, ptr addrspace(1) %inttoptr_bytes, align 4
  store float %.150, ptr %R8, align 4
  %zext.2 = zext i32 %UR4.2 to i64
  %zext.3 = zext i32 %UR5.2 to i64
  %shl.1 = shl nuw i64 %zext.3, 32
  %or.1 = or disjoint i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %.156 = load float, ptr addrspace(1) %inttoptr_bytes.1, align 4
  store float %.156, ptr %R9, align 4
  %.160 = load i32, ptr %R2, align 4
  %zext.4 = zext i32 %.160 to i64
  %zext.5 = zext i32 %R3.2 to i64
  %shl.2 = shl nuw i64 %zext.5, 32
  %or.2 = or disjoint i64 %shl.2, %zext.4
  %ptr_plus_imm = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %.162 = load float, ptr addrspace(1) %inttoptr_bytes.2, align 4
  store float %.162, ptr %R11, align 4
  %zext.6 = zext i32 %UR4.2 to i64
  %zext.7 = zext i32 %UR5.2 to i64
  %shl.3 = shl nuw i64 %zext.7, 32
  %or.3 = or disjoint i64 %shl.3, %zext.6
  %ptr_plus_imm.1 = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %.168 = load float, ptr addrspace(1) %inttoptr_bytes.3, align 4
  store float %.168, ptr %R10, align 4
  %.172 = load i32, ptr %R2, align 4
  %zext.8 = zext i32 %.172 to i64
  %zext.9 = zext i32 %R3.2 to i64
  %shl.4 = shl nuw i64 %zext.9, 32
  %or.4 = or disjoint i64 %shl.4, %zext.8
  %ptr_plus_imm.2 = add i64 %or.4, 8
  %inttoptr_bytes.4 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %.174 = load float, ptr addrspace(1) %inttoptr_bytes.4, align 4
  store float %.174, ptr %R13, align 4
  %zext.10 = zext i32 %UR4.2 to i64
  %zext.11 = zext i32 %UR5.2 to i64
  %shl.5 = shl nuw i64 %zext.11, 32
  %or.5 = or disjoint i64 %shl.5, %zext.10
  %ptr_plus_imm.3 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %.180 = load float, ptr addrspace(1) %inttoptr_bytes.5, align 4
  store float %.180, ptr %R12, align 4
  %.184 = load i32, ptr %R2, align 4
  %zext.12 = zext i32 %.184 to i64
  %zext.13 = zext i32 %R3.2 to i64
  %shl.6 = shl nuw i64 %zext.13, 32
  %or.6 = or disjoint i64 %shl.6, %zext.12
  %ptr_plus_imm.4 = add i64 %or.6, 12
  %inttoptr_bytes.6 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %.186 = load float, ptr addrspace(1) %inttoptr_bytes.6, align 4
  store float %.186, ptr %R15, align 4
  %zext.14 = zext i32 %UR4.2 to i64
  %zext.15 = zext i32 %UR5.2 to i64
  %shl.7 = shl nuw i64 %zext.15, 32
  %or.7 = or disjoint i64 %shl.7, %zext.14
  %ptr_plus_imm.5 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %.192 = load float, ptr addrspace(1) %inttoptr_bytes.7, align 4
  store float %.192, ptr %R14, align 4
  %.196 = load i32, ptr %R2, align 4
  %zext.16 = zext i32 %.196 to i64
  %zext.17 = zext i32 %R3.2 to i64
  %shl.8 = shl nuw i64 %zext.17, 32
  %or.8 = or disjoint i64 %shl.8, %zext.16
  %ptr_plus_imm.6 = add i64 %or.8, 16
  %inttoptr_bytes.8 = inttoptr i64 %ptr_plus_imm.6 to ptr addrspace(1)
  %.198 = load float, ptr addrspace(1) %inttoptr_bytes.8, align 4
  store float %.198, ptr %R17, align 4
  %zext.18 = zext i32 %UR4.2 to i64
  %zext.19 = zext i32 %UR5.2 to i64
  %shl.9 = shl nuw i64 %zext.19, 32
  %or.9 = or disjoint i64 %shl.9, %zext.18
  %ptr_plus_imm.7 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm.7 to ptr addrspace(1)
  %.204 = load float, ptr addrspace(1) %inttoptr_bytes.9, align 4
  store float %.204, ptr %R16, align 4
  %.208 = load i32, ptr %R2, align 4
  %zext.20 = zext i32 %.208 to i64
  %zext.21 = zext i32 %R3.2 to i64
  %shl.10 = shl nuw i64 %zext.21, 32
  %or.10 = or disjoint i64 %shl.10, %zext.20
  %ptr_plus_imm.8 = add i64 %or.10, 20
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.8 to ptr addrspace(1)
  %.210 = load float, ptr addrspace(1) %inttoptr_bytes.10, align 4
  store float %.210, ptr %R19, align 4
  %zext.22 = zext i32 %UR4.2 to i64
  %zext.23 = zext i32 %UR5.2 to i64
  %shl.11 = shl nuw i64 %zext.23, 32
  %or.11 = or disjoint i64 %shl.11, %zext.22
  %ptr_plus_imm.9 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.9 to ptr addrspace(1)
  %.216 = load float, ptr addrspace(1) %inttoptr_bytes.11, align 4
  store float %.216, ptr %R18, align 4
  %.220 = load i32, ptr %R2, align 4
  %zext.24 = zext i32 %.220 to i64
  %zext.25 = zext i32 %R3.2 to i64
  %shl.12 = shl nuw i64 %zext.25, 32
  %or.12 = or disjoint i64 %shl.12, %zext.24
  %ptr_plus_imm.10 = add i64 %or.12, 24
  %inttoptr_bytes.12 = inttoptr i64 %ptr_plus_imm.10 to ptr addrspace(1)
  %.222 = load float, ptr addrspace(1) %inttoptr_bytes.12, align 4
  store float %.222, ptr %R21, align 4
  %zext.26 = zext i32 %UR4.2 to i64
  %zext.27 = zext i32 %UR5.2 to i64
  %shl.13 = shl nuw i64 %zext.27, 32
  %or.13 = or disjoint i64 %shl.13, %zext.26
  %ptr_plus_imm.11 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %ptr_plus_imm.11 to ptr addrspace(1)
  %.228 = load float, ptr addrspace(1) %inttoptr_bytes.13, align 4
  store float %.228, ptr %R20, align 4
  %.232 = load i32, ptr %R2, align 4
  %zext.28 = zext i32 %.232 to i64
  %zext.29 = zext i32 %R3.2 to i64
  %shl.14 = shl nuw i64 %zext.29, 32
  %or.14 = or disjoint i64 %shl.14, %zext.28
  %ptr_plus_imm.12 = add i64 %or.14, 28
  %inttoptr_bytes.14 = inttoptr i64 %ptr_plus_imm.12 to ptr addrspace(1)
  %.234 = load float, ptr addrspace(1) %inttoptr_bytes.14, align 4
  store float %.234, ptr %R23, align 4
  %zext.30 = zext i32 %UR4.2 to i64
  %zext.31 = zext i32 %UR5.2 to i64
  %shl.15 = shl nuw i64 %zext.31, 32
  %or.15 = or disjoint i64 %shl.15, %zext.30
  %ptr_plus_imm.13 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %ptr_plus_imm.13 to ptr addrspace(1)
  %.240 = load float, ptr addrspace(1) %inttoptr_bytes.15, align 4
  store float %.240, ptr %R22, align 4
  %.244 = load i32, ptr %R2, align 4
  %zext.32 = zext i32 %.244 to i64
  %zext.33 = zext i32 %R3.2 to i64
  %shl.16 = shl nuw i64 %zext.33, 32
  %or.16 = or disjoint i64 %shl.16, %zext.32
  %ptr_plus_imm.14 = add i64 %or.16, 32
  %inttoptr_bytes.16 = inttoptr i64 %ptr_plus_imm.14 to ptr addrspace(1)
  %.246 = load float, ptr addrspace(1) %inttoptr_bytes.16, align 4
  store float %.246, ptr %R25, align 4
  %zext.34 = zext i32 %UR4.2 to i64
  %zext.35 = zext i32 %UR5.2 to i64
  %shl.17 = shl nuw i64 %zext.35, 32
  %or.17 = or disjoint i64 %shl.17, %zext.34
  %ptr_plus_imm.15 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %ptr_plus_imm.15 to ptr addrspace(1)
  %.252 = load float, ptr addrspace(1) %inttoptr_bytes.17, align 4
  store float %.252, ptr %R24, align 4
  %.256 = load i32, ptr %R2, align 4
  %zext.36 = zext i32 %.256 to i64
  %zext.37 = zext i32 %R3.2 to i64
  %shl.18 = shl nuw i64 %zext.37, 32
  %or.18 = or disjoint i64 %shl.18, %zext.36
  %ptr_plus_imm.16 = add i64 %or.18, 36
  %inttoptr_bytes.18 = inttoptr i64 %ptr_plus_imm.16 to ptr addrspace(1)
  %.258 = load float, ptr addrspace(1) %inttoptr_bytes.18, align 4
  store float %.258, ptr %R27, align 4
  %zext.38 = zext i32 %UR4.2 to i64
  %zext.39 = zext i32 %UR5.2 to i64
  %shl.19 = shl nuw i64 %zext.39, 32
  %or.19 = or disjoint i64 %shl.19, %zext.38
  %ptr_plus_imm.17 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %ptr_plus_imm.17 to ptr addrspace(1)
  %.264 = load float, ptr addrspace(1) %inttoptr_bytes.19, align 4
  store float %.264, ptr %R26, align 4
  %.268 = load i32, ptr %R2, align 4
  %zext.40 = zext i32 %.268 to i64
  %zext.41 = zext i32 %R3.2 to i64
  %shl.20 = shl nuw i64 %zext.41, 32
  %or.20 = or disjoint i64 %shl.20, %zext.40
  %ptr_plus_imm.18 = add i64 %or.20, 40
  %inttoptr_bytes.20 = inttoptr i64 %ptr_plus_imm.18 to ptr addrspace(1)
  %.270 = load float, ptr addrspace(1) %inttoptr_bytes.20, align 4
  store float %.270, ptr %R29, align 4
  %zext.42 = zext i32 %UR4.2 to i64
  %zext.43 = zext i32 %UR5.2 to i64
  %shl.21 = shl nuw i64 %zext.43, 32
  %or.21 = or disjoint i64 %shl.21, %zext.42
  %ptr_plus_imm.19 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %ptr_plus_imm.19 to ptr addrspace(1)
  %.276 = load float, ptr addrspace(1) %inttoptr_bytes.21, align 4
  store float %.276, ptr %R28, align 4
  %.280 = load i32, ptr %R2, align 4
  %zext.44 = zext i32 %.280 to i64
  %zext.45 = zext i32 %R3.2 to i64
  %shl.22 = shl nuw i64 %zext.45, 32
  %or.22 = or disjoint i64 %shl.22, %zext.44
  %ptr_plus_imm.20 = add i64 %or.22, 44
  %inttoptr_bytes.22 = inttoptr i64 %ptr_plus_imm.20 to ptr addrspace(1)
  %.282 = load float, ptr addrspace(1) %inttoptr_bytes.22, align 4
  store float %.282, ptr %R31, align 4
  %zext.46 = zext i32 %UR4.2 to i64
  %zext.47 = zext i32 %UR5.2 to i64
  %shl.23 = shl nuw i64 %zext.47, 32
  %or.23 = or disjoint i64 %shl.23, %zext.46
  %ptr_plus_imm.21 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %ptr_plus_imm.21 to ptr addrspace(1)
  %.288 = load float, ptr addrspace(1) %inttoptr_bytes.23, align 4
  store float %.288, ptr %R30, align 4
  %.292 = load i32, ptr %R2, align 4
  %zext.48 = zext i32 %.292 to i64
  %zext.49 = zext i32 %R3.2 to i64
  %shl.24 = shl nuw i64 %zext.49, 32
  %or.24 = or disjoint i64 %shl.24, %zext.48
  %ptr_plus_imm.22 = add i64 %or.24, 48
  %inttoptr_bytes.24 = inttoptr i64 %ptr_plus_imm.22 to ptr addrspace(1)
  %.294 = load float, ptr addrspace(1) %inttoptr_bytes.24, align 4
  store float %.294, ptr %R33, align 4
  %zext.50 = zext i32 %UR4.2 to i64
  %zext.51 = zext i32 %UR5.2 to i64
  %shl.25 = shl nuw i64 %zext.51, 32
  %or.25 = or disjoint i64 %shl.25, %zext.50
  %ptr_plus_imm.23 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %ptr_plus_imm.23 to ptr addrspace(1)
  %.300 = load float, ptr addrspace(1) %inttoptr_bytes.25, align 4
  store float %.300, ptr %R32, align 4
  %.304 = load i32, ptr %R2, align 4
  %zext.52 = zext i32 %.304 to i64
  %zext.53 = zext i32 %R3.2 to i64
  %shl.26 = shl nuw i64 %zext.53, 32
  %or.26 = or disjoint i64 %shl.26, %zext.52
  %ptr_plus_imm.24 = add i64 %or.26, 52
  %inttoptr_bytes.26 = inttoptr i64 %ptr_plus_imm.24 to ptr addrspace(1)
  %.306 = load float, ptr addrspace(1) %inttoptr_bytes.26, align 4
  store float %.306, ptr %R35, align 4
  %zext.54 = zext i32 %UR4.2 to i64
  %zext.55 = zext i32 %UR5.2 to i64
  %shl.27 = shl nuw i64 %zext.55, 32
  %or.27 = or disjoint i64 %shl.27, %zext.54
  %ptr_plus_imm.25 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %ptr_plus_imm.25 to ptr addrspace(1)
  %.312 = load float, ptr addrspace(1) %inttoptr_bytes.27, align 4
  store float %.312, ptr %R34, align 4
  %.316 = load i32, ptr %R2, align 4
  %zext.56 = zext i32 %.316 to i64
  %zext.57 = zext i32 %R3.2 to i64
  %shl.28 = shl nuw i64 %zext.57, 32
  %or.28 = or disjoint i64 %shl.28, %zext.56
  %ptr_plus_imm.26 = add i64 %or.28, 56
  %inttoptr_bytes.28 = inttoptr i64 %ptr_plus_imm.26 to ptr addrspace(1)
  %.318 = load float, ptr addrspace(1) %inttoptr_bytes.28, align 4
  store float %.318, ptr %R37, align 4
  %zext.58 = zext i32 %UR4.2 to i64
  %zext.59 = zext i32 %UR5.2 to i64
  %shl.29 = shl nuw i64 %zext.59, 32
  %or.29 = or disjoint i64 %shl.29, %zext.58
  %ptr_plus_imm.27 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %ptr_plus_imm.27 to ptr addrspace(1)
  %.324 = load float, ptr addrspace(1) %inttoptr_bytes.29, align 4
  store float %.324, ptr %R36, align 4
  %.328 = load i32, ptr %R2, align 4
  %zext.60 = zext i32 %.328 to i64
  %zext.61 = zext i32 %R3.2 to i64
  %shl.30 = shl nuw i64 %zext.61, 32
  %or.30 = or disjoint i64 %shl.30, %zext.60
  %ptr_plus_imm.28 = add i64 %or.30, 60
  %inttoptr_bytes.30 = inttoptr i64 %ptr_plus_imm.28 to ptr addrspace(1)
  %.330 = load float, ptr addrspace(1) %inttoptr_bytes.30, align 4
  store float %.330, ptr %R39, align 4
  %zext.62 = zext i32 %UR4.2 to i64
  %zext.63 = zext i32 %UR5.2 to i64
  %shl.31 = shl nuw i64 %zext.63, 32
  %or.31 = or disjoint i64 %shl.31, %zext.62
  %ptr_plus_imm.29 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %ptr_plus_imm.29 to ptr addrspace(1)
  %.336 = load float, ptr addrspace(1) %inttoptr_bytes.31, align 4
  store float %.336, ptr %R38, align 4
  %.341 = add i32 %R6.2, -16
  %.346 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.347 = extractvalue { i32, i1 } %.346, 0
  %.348 = extractvalue { i32, i1 } %.346, 1
  %.356 = load i32, ptr %R5, align 4
  %.357 = add i32 %.356, 16
  store i32 %.357, ptr %R5, align 4
  %cmp.5 = icmp sgt i32 %.341, 13
  %.371 = zext i1 %.348 to i32
  %add.2 = add i32 %UR5.2, %.371
  %.375 = load i32, ptr %R2, align 4
  %.376 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.375, i32 64)
  %.377 = extractvalue { i32, i1 } %.376, 0
  %.378 = extractvalue { i32, i1 } %.376, 1
  store i32 %.377, ptr %R2, align 4
  %.389 = zext i1 %.378 to i32
  %add.6 = add i32 %R3.2, %.389
  %.393 = load float, ptr %R8, align 4
  %.394 = load float, ptr %R9, align 4
  %.395 = load float, ptr %R7, align 4
  %fmul = fmul float %.393, %.394
  %fadd = fadd float %fmul, %.395
  store float %fadd, ptr %R8, align 4
  %.399 = load float, ptr %R11, align 4
  %.400 = load float, ptr %R10, align 4
  %fmul.1 = fmul float %.399, %.400
  %fadd.1 = fadd float %fmul.1, %fadd
  store float %fadd.1, ptr %R8, align 4
  %.405 = load float, ptr %R13, align 4
  %.406 = load float, ptr %R12, align 4
  %fmul.2 = fmul float %.405, %.406
  %fadd.2 = fadd float %fmul.2, %fadd.1
  store float %fadd.2, ptr %R8, align 4
  %.411 = load float, ptr %R15, align 4
  %.412 = load float, ptr %R14, align 4
  %fmul.3 = fmul float %.411, %.412
  %fadd.3 = fadd float %fmul.3, %fadd.2
  store float %fadd.3, ptr %R8, align 4
  %.417 = load float, ptr %R17, align 4
  %.418 = load float, ptr %R16, align 4
  %fmul.4 = fmul float %.417, %.418
  %fadd.4 = fadd float %fmul.4, %fadd.3
  store float %fadd.4, ptr %R8, align 4
  %.423 = load float, ptr %R19, align 4
  %.424 = load float, ptr %R18, align 4
  %fmul.5 = fmul float %.423, %.424
  %fadd.5 = fadd float %fmul.5, %fadd.4
  store float %fadd.5, ptr %R8, align 4
  %.429 = load float, ptr %R21, align 4
  %.430 = load float, ptr %R20, align 4
  %fmul.6 = fmul float %.429, %.430
  %fadd.6 = fadd float %fmul.6, %fadd.5
  store float %fadd.6, ptr %R8, align 4
  %.435 = load float, ptr %R23, align 4
  %.436 = load float, ptr %R22, align 4
  %fmul.7 = fmul float %.435, %.436
  %fadd.7 = fadd float %fmul.7, %fadd.6
  store float %fadd.7, ptr %R8, align 4
  %.441 = load float, ptr %R25, align 4
  %.442 = load float, ptr %R24, align 4
  %fmul.8 = fmul float %.441, %.442
  %fadd.8 = fadd float %fmul.8, %fadd.7
  store float %fadd.8, ptr %R8, align 4
  %.447 = load float, ptr %R27, align 4
  %.448 = load float, ptr %R26, align 4
  %fmul.9 = fmul float %.447, %.448
  %fadd.9 = fadd float %fmul.9, %fadd.8
  store float %fadd.9, ptr %R8, align 4
  %.453 = load float, ptr %R29, align 4
  %.454 = load float, ptr %R28, align 4
  %fmul.10 = fmul float %.453, %.454
  %fadd.10 = fadd float %fmul.10, %fadd.9
  store float %fadd.10, ptr %R8, align 4
  %.459 = load float, ptr %R31, align 4
  %.460 = load float, ptr %R30, align 4
  %fmul.11 = fmul float %.459, %.460
  %fadd.11 = fadd float %fmul.11, %fadd.10
  store float %fadd.11, ptr %R8, align 4
  %.465 = load float, ptr %R33, align 4
  %.466 = load float, ptr %R32, align 4
  %fmul.12 = fmul float %.465, %.466
  %fadd.12 = fadd float %fmul.12, %fadd.11
  store float %fadd.12, ptr %R8, align 4
  %.471 = load float, ptr %R35, align 4
  %.472 = load float, ptr %R34, align 4
  %fmul.13 = fmul float %.471, %.472
  %fadd.13 = fadd float %fmul.13, %fadd.12
  store float %fadd.13, ptr %R8, align 4
  %.477 = load float, ptr %R37, align 4
  %.478 = load float, ptr %R36, align 4
  %fmul.14 = fmul float %.477, %.478
  %fadd.14 = fadd float %fmul.14, %fadd.13
  store float %fadd.14, ptr %R8, align 4
  %.483 = load float, ptr %R39, align 4
  %.484 = load float, ptr %R38, align 4
  %fmul.15 = fmul float %.483, %.484
  %fadd.15 = fadd float %fmul.15, %fadd.14
  store float %fadd.15, ptr %R7, align 4
  br i1 %cmp.5, label %.L_x_4, label %.L_x_3.loopexit

.L_x_3.loopexit:                                  ; preds = %.L_x_4
  br label %.L_x_3

.L_x_3:                                           ; preds = %.L_x_3.loopexit, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0
  %UR4.1 = phi i32 [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %.347, %.L_x_3.loopexit ]
  %R6.1 = phi i32 [ %.85, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %.341, %.L_x_3.loopexit ]
  %UR5.1 = phi i32 [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %add.2, %.L_x_3.loopexit ]
  %R3.1 = phi i32 [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0 ], [ %add.6, %.L_x_3.loopexit ]
  %.494 = add i32 %R6.1, -1
  store i32 %.494, ptr %R8, align 4
  %cmp.6 = icmp slt i32 %.494, 5
  br i1 %cmp.6, label %.L_x_5, label %.L_x_3_split_0x05a0

.L_x_3_split_0x05a0:                              ; preds = %.L_x_3
  %.509 = load i32, ptr %R2, align 4
  %zext.64 = zext i32 %.509 to i64
  %zext.65 = zext i32 %R3.1 to i64
  %shl.32 = shl nuw i64 %zext.65, 32
  %or.32 = or disjoint i64 %shl.32, %zext.64
  %inttoptr_bytes.32 = inttoptr i64 %or.32 to ptr addrspace(1)
  %.511 = load float, ptr addrspace(1) %inttoptr_bytes.32, align 4
  store float %.511, ptr %R8, align 4
  %zext.66 = zext i32 %UR4.1 to i64
  %zext.67 = zext i32 %UR5.1 to i64
  %shl.33 = shl nuw i64 %zext.67, 32
  %or.33 = or disjoint i64 %shl.33, %zext.66
  %inttoptr_bytes.33 = inttoptr i64 %or.33 to ptr addrspace(1)
  %.517 = load float, ptr addrspace(1) %inttoptr_bytes.33, align 4
  store float %.517, ptr %R9, align 4
  %.521 = load i32, ptr %R2, align 4
  %zext.68 = zext i32 %.521 to i64
  %zext.69 = zext i32 %R3.1 to i64
  %shl.34 = shl nuw i64 %zext.69, 32
  %or.34 = or disjoint i64 %shl.34, %zext.68
  %ptr_plus_imm.30 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.30 to ptr addrspace(1)
  %.523 = load float, ptr addrspace(1) %inttoptr_bytes.34, align 4
  store float %.523, ptr %R11, align 4
  %zext.70 = zext i32 %UR4.1 to i64
  %zext.71 = zext i32 %UR5.1 to i64
  %shl.35 = shl nuw i64 %zext.71, 32
  %or.35 = or disjoint i64 %shl.35, %zext.70
  %ptr_plus_imm.31 = add i64 %or.35, 4
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.31 to ptr addrspace(1)
  %.529 = load float, ptr addrspace(1) %inttoptr_bytes.35, align 4
  store float %.529, ptr %R10, align 4
  %.533 = load i32, ptr %R2, align 4
  %zext.72 = zext i32 %.533 to i64
  %zext.73 = zext i32 %R3.1 to i64
  %shl.36 = shl nuw i64 %zext.73, 32
  %or.36 = or disjoint i64 %shl.36, %zext.72
  %ptr_plus_imm.32 = add i64 %or.36, 8
  %inttoptr_bytes.36 = inttoptr i64 %ptr_plus_imm.32 to ptr addrspace(1)
  %.535 = load float, ptr addrspace(1) %inttoptr_bytes.36, align 4
  store float %.535, ptr %R13, align 4
  %zext.74 = zext i32 %UR4.1 to i64
  %zext.75 = zext i32 %UR5.1 to i64
  %shl.37 = shl nuw i64 %zext.75, 32
  %or.37 = or disjoint i64 %shl.37, %zext.74
  %ptr_plus_imm.33 = add i64 %or.37, 8
  %inttoptr_bytes.37 = inttoptr i64 %ptr_plus_imm.33 to ptr addrspace(1)
  %.541 = load float, ptr addrspace(1) %inttoptr_bytes.37, align 4
  store float %.541, ptr %R12, align 4
  %.545 = load i32, ptr %R2, align 4
  %zext.76 = zext i32 %.545 to i64
  %zext.77 = zext i32 %R3.1 to i64
  %shl.38 = shl nuw i64 %zext.77, 32
  %or.38 = or disjoint i64 %shl.38, %zext.76
  %ptr_plus_imm.34 = add i64 %or.38, 12
  %inttoptr_bytes.38 = inttoptr i64 %ptr_plus_imm.34 to ptr addrspace(1)
  %.547 = load float, ptr addrspace(1) %inttoptr_bytes.38, align 4
  store float %.547, ptr %R15, align 4
  %zext.78 = zext i32 %UR4.1 to i64
  %zext.79 = zext i32 %UR5.1 to i64
  %shl.39 = shl nuw i64 %zext.79, 32
  %or.39 = or disjoint i64 %shl.39, %zext.78
  %ptr_plus_imm.35 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %ptr_plus_imm.35 to ptr addrspace(1)
  %.553 = load float, ptr addrspace(1) %inttoptr_bytes.39, align 4
  store float %.553, ptr %R14, align 4
  %.557 = load i32, ptr %R2, align 4
  %zext.80 = zext i32 %.557 to i64
  %zext.81 = zext i32 %R3.1 to i64
  %shl.40 = shl nuw i64 %zext.81, 32
  %or.40 = or disjoint i64 %shl.40, %zext.80
  %ptr_plus_imm.36 = add i64 %or.40, 16
  %inttoptr_bytes.40 = inttoptr i64 %ptr_plus_imm.36 to ptr addrspace(1)
  %.559 = load float, ptr addrspace(1) %inttoptr_bytes.40, align 4
  store float %.559, ptr %R17, align 4
  %zext.82 = zext i32 %UR4.1 to i64
  %zext.83 = zext i32 %UR5.1 to i64
  %shl.41 = shl nuw i64 %zext.83, 32
  %or.41 = or disjoint i64 %shl.41, %zext.82
  %ptr_plus_imm.37 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %ptr_plus_imm.37 to ptr addrspace(1)
  %.565 = load float, ptr addrspace(1) %inttoptr_bytes.41, align 4
  store float %.565, ptr %R16, align 4
  %.569 = load i32, ptr %R2, align 4
  %zext.84 = zext i32 %.569 to i64
  %zext.85 = zext i32 %R3.1 to i64
  %shl.42 = shl nuw i64 %zext.85, 32
  %or.42 = or disjoint i64 %shl.42, %zext.84
  %ptr_plus_imm.38 = add i64 %or.42, 20
  %inttoptr_bytes.42 = inttoptr i64 %ptr_plus_imm.38 to ptr addrspace(1)
  %.571 = load float, ptr addrspace(1) %inttoptr_bytes.42, align 4
  store float %.571, ptr %R19, align 4
  %zext.86 = zext i32 %UR4.1 to i64
  %zext.87 = zext i32 %UR5.1 to i64
  %shl.43 = shl nuw i64 %zext.87, 32
  %or.43 = or disjoint i64 %shl.43, %zext.86
  %ptr_plus_imm.39 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %ptr_plus_imm.39 to ptr addrspace(1)
  %.577 = load float, ptr addrspace(1) %inttoptr_bytes.43, align 4
  store float %.577, ptr %R18, align 4
  %.581 = load i32, ptr %R2, align 4
  %zext.88 = zext i32 %.581 to i64
  %zext.89 = zext i32 %R3.1 to i64
  %shl.44 = shl nuw i64 %zext.89, 32
  %or.44 = or disjoint i64 %shl.44, %zext.88
  %ptr_plus_imm.40 = add i64 %or.44, 24
  %inttoptr_bytes.44 = inttoptr i64 %ptr_plus_imm.40 to ptr addrspace(1)
  %.583 = load float, ptr addrspace(1) %inttoptr_bytes.44, align 4
  store float %.583, ptr %R21, align 4
  %zext.90 = zext i32 %UR4.1 to i64
  %zext.91 = zext i32 %UR5.1 to i64
  %shl.45 = shl nuw i64 %zext.91, 32
  %or.45 = or disjoint i64 %shl.45, %zext.90
  %ptr_plus_imm.41 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %ptr_plus_imm.41 to ptr addrspace(1)
  %.589 = load float, ptr addrspace(1) %inttoptr_bytes.45, align 4
  store float %.589, ptr %R20, align 4
  %.593 = load i32, ptr %R2, align 4
  %zext.92 = zext i32 %.593 to i64
  %zext.93 = zext i32 %R3.1 to i64
  %shl.46 = shl nuw i64 %zext.93, 32
  %or.46 = or disjoint i64 %shl.46, %zext.92
  %ptr_plus_imm.42 = add i64 %or.46, 28
  %inttoptr_bytes.46 = inttoptr i64 %ptr_plus_imm.42 to ptr addrspace(1)
  %.595 = load float, ptr addrspace(1) %inttoptr_bytes.46, align 4
  store float %.595, ptr %R23, align 4
  %zext.94 = zext i32 %UR4.1 to i64
  %zext.95 = zext i32 %UR5.1 to i64
  %shl.47 = shl nuw i64 %zext.95, 32
  %or.47 = or disjoint i64 %shl.47, %zext.94
  %ptr_plus_imm.43 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %ptr_plus_imm.43 to ptr addrspace(1)
  %.601 = load float, ptr addrspace(1) %inttoptr_bytes.47, align 4
  store float %.601, ptr %R22, align 4
  %.606 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.607 = extractvalue { i32, i1 } %.606, 0
  %.608 = extractvalue { i32, i1 } %.606, 1
  %.620 = load i32, ptr %R5, align 4
  %.621 = add i32 %.620, 8
  store i32 %.621, ptr %R5, align 4
  %.628 = zext i1 %.608 to i32
  %add.10 = add i32 %UR5.1, %.628
  %.632 = load i32, ptr %R2, align 4
  %.633 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.632, i32 32)
  %.634 = extractvalue { i32, i1 } %.633, 0
  %.635 = extractvalue { i32, i1 } %.633, 1
  store i32 %.634, ptr %R2, align 4
  %.644 = add i32 %R6.1, -8
  %.651 = zext i1 %.635 to i32
  %add.14 = add i32 %R3.1, %.651
  %.655 = load float, ptr %R8, align 4
  %.656 = load float, ptr %R9, align 4
  %.657 = load float, ptr %R7, align 4
  %fmul.16 = fmul float %.655, %.656
  %fadd.16 = fadd float %fmul.16, %.657
  store float %fadd.16, ptr %R8, align 4
  %.661 = load float, ptr %R11, align 4
  %.662 = load float, ptr %R10, align 4
  %fmul.17 = fmul float %.661, %.662
  %fadd.17 = fadd float %fmul.17, %fadd.16
  store float %fadd.17, ptr %R8, align 4
  %.667 = load float, ptr %R13, align 4
  %.668 = load float, ptr %R12, align 4
  %fmul.18 = fmul float %.667, %.668
  %fadd.18 = fadd float %fmul.18, %fadd.17
  store float %fadd.18, ptr %R8, align 4
  %.673 = load float, ptr %R15, align 4
  %.674 = load float, ptr %R14, align 4
  %fmul.19 = fmul float %.673, %.674
  %fadd.19 = fadd float %fmul.19, %fadd.18
  store float %fadd.19, ptr %R8, align 4
  %.679 = load float, ptr %R17, align 4
  %.680 = load float, ptr %R16, align 4
  %fmul.20 = fmul float %.679, %.680
  %fadd.20 = fadd float %fmul.20, %fadd.19
  store float %fadd.20, ptr %R8, align 4
  %.685 = load float, ptr %R19, align 4
  %.686 = load float, ptr %R18, align 4
  %fmul.21 = fmul float %.685, %.686
  %fadd.21 = fadd float %fmul.21, %fadd.20
  store float %fadd.21, ptr %R8, align 4
  %.691 = load float, ptr %R21, align 4
  %.692 = load float, ptr %R20, align 4
  %fmul.22 = fmul float %.691, %.692
  %fadd.22 = fadd float %fmul.22, %fadd.21
  store float %fadd.22, ptr %R8, align 4
  %.697 = load float, ptr %R23, align 4
  %.698 = load float, ptr %R22, align 4
  %fmul.23 = fmul float %.697, %.698
  %fadd.23 = fadd float %fmul.23, %fadd.22
  store float %fadd.23, ptr %R7, align 4
  br label %.L_x_5

.L_x_5:                                           ; preds = %.L_x_3_split_0x05a0, %.L_x_3
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_3 ], [ %.607, %.L_x_3_split_0x05a0 ]
  %R6.3 = phi i32 [ %R6.1, %.L_x_3 ], [ %.644, %.L_x_3_split_0x05a0 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_3 ], [ %add.10, %.L_x_3_split_0x05a0 ]
  %R3.3 = phi i32 [ %R3.1, %.L_x_3 ], [ %add.14, %.L_x_3_split_0x05a0 ]
  br i1 false, label %.L_x_1, label %.L_x_2.preheader

.L_x_2.preheader:                                 ; preds = %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110, %.L_x_5
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_5 ], [ %trunc32.1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %R6.0.ph = phi i32 [ %R6.3, %.L_x_5 ], [ %.85, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_5 ], [ %trunc32, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  %R3.0.ph = phi i32 [ %R3.3, %.L_x_5 ], [ %trunc32.2, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110 ]
  br label %.L_x_2

.L_x_2:                                           ; preds = %.L_x_2.preheader, %.L_x_2
  %UR4.0 = phi i32 [ %.770, %.L_x_2 ], [ %UR4.0.ph, %.L_x_2.preheader ]
  %R6.0 = phi i32 [ %.764, %.L_x_2 ], [ %R6.0.ph, %.L_x_2.preheader ]
  %UR5.0 = phi i32 [ %add.18, %.L_x_2 ], [ %UR5.0.ph, %.L_x_2.preheader ]
  %R3.0 = phi i32 [ %imad_add_x, %.L_x_2 ], [ %R3.0.ph, %.L_x_2.preheader ]
  %.715 = load i32, ptr %R2, align 4
  %zext.96 = zext i32 %.715 to i64
  %zext.97 = zext i32 %R3.0 to i64
  %shl.48 = shl nuw i64 %zext.97, 32
  %or.48 = or disjoint i64 %shl.48, %zext.96
  %inttoptr_bytes.48 = inttoptr i64 %or.48 to ptr addrspace(1)
  %.717 = load float, ptr addrspace(1) %inttoptr_bytes.48, align 4
  store float %.717, ptr %R8, align 4
  %zext.98 = zext i32 %UR4.0 to i64
  %zext.99 = zext i32 %UR5.0 to i64
  %shl.49 = shl nuw i64 %zext.99, 32
  %or.49 = or disjoint i64 %shl.49, %zext.98
  %inttoptr_bytes.49 = inttoptr i64 %or.49 to ptr addrspace(1)
  %.723 = load float, ptr addrspace(1) %inttoptr_bytes.49, align 4
  store float %.723, ptr %R9, align 4
  %.727 = load i32, ptr %R2, align 4
  %zext.100 = zext i32 %.727 to i64
  %zext.101 = zext i32 %R3.0 to i64
  %shl.50 = shl nuw i64 %zext.101, 32
  %or.50 = or disjoint i64 %shl.50, %zext.100
  %ptr_plus_imm.44 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %ptr_plus_imm.44 to ptr addrspace(1)
  %.729 = load float, ptr addrspace(1) %inttoptr_bytes.50, align 4
  store float %.729, ptr %R11, align 4
  %zext.102 = zext i32 %UR4.0 to i64
  %zext.103 = zext i32 %UR5.0 to i64
  %shl.51 = shl nuw i64 %zext.103, 32
  %or.51 = or disjoint i64 %shl.51, %zext.102
  %ptr_plus_imm.45 = add i64 %or.51, 4
  %inttoptr_bytes.51 = inttoptr i64 %ptr_plus_imm.45 to ptr addrspace(1)
  %.735 = load float, ptr addrspace(1) %inttoptr_bytes.51, align 4
  store float %.735, ptr %R10, align 4
  %.739 = load i32, ptr %R2, align 4
  %zext.104 = zext i32 %.739 to i64
  %zext.105 = zext i32 %R3.0 to i64
  %shl.52 = shl nuw i64 %zext.105, 32
  %or.52 = or disjoint i64 %shl.52, %zext.104
  %ptr_plus_imm.46 = add i64 %or.52, 8
  %inttoptr_bytes.52 = inttoptr i64 %ptr_plus_imm.46 to ptr addrspace(1)
  %.741 = load float, ptr addrspace(1) %inttoptr_bytes.52, align 4
  store float %.741, ptr %R13, align 4
  %zext.106 = zext i32 %UR4.0 to i64
  %zext.107 = zext i32 %UR5.0 to i64
  %shl.53 = shl nuw i64 %zext.107, 32
  %or.53 = or disjoint i64 %shl.53, %zext.106
  %ptr_plus_imm.47 = add i64 %or.53, 8
  %inttoptr_bytes.53 = inttoptr i64 %ptr_plus_imm.47 to ptr addrspace(1)
  %.747 = load float, ptr addrspace(1) %inttoptr_bytes.53, align 4
  store float %.747, ptr %R12, align 4
  %.751 = load i32, ptr %R2, align 4
  %zext.108 = zext i32 %.751 to i64
  %zext.109 = zext i32 %R3.0 to i64
  %shl.54 = shl nuw i64 %zext.109, 32
  %or.54 = or disjoint i64 %shl.54, %zext.108
  %ptr_plus_imm.48 = add i64 %or.54, 12
  %inttoptr_bytes.54 = inttoptr i64 %ptr_plus_imm.48 to ptr addrspace(1)
  %.753 = load float, ptr addrspace(1) %inttoptr_bytes.54, align 4
  store float %.753, ptr %R15, align 4
  %zext.110 = zext i32 %UR4.0 to i64
  %zext.111 = zext i32 %UR5.0 to i64
  %shl.55 = shl nuw i64 %zext.111, 32
  %or.55 = or disjoint i64 %shl.55, %zext.110
  %ptr_plus_imm.49 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %ptr_plus_imm.49 to ptr addrspace(1)
  %.759 = load float, ptr addrspace(1) %inttoptr_bytes.55, align 4
  store float %.759, ptr %R14, align 4
  %.764 = add i32 %R6.0, -4
  %.769 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.770 = extractvalue { i32, i1 } %.769, 0
  %.771 = extractvalue { i32, i1 } %.769, 1
  %.779 = load i32, ptr %R5, align 4
  %.780 = add i32 %.779, 4
  store i32 %.780, ptr %R5, align 4
  %cmp.8.not = icmp eq i32 %.764, 1
  %.794 = zext i1 %.771 to i32
  %add.18 = add i32 %UR5.0, %.794
  %.798 = load float, ptr %R8, align 4
  %.799 = load float, ptr %R9, align 4
  %.800 = load float, ptr %R7, align 4
  %fmul.24 = fmul float %.798, %.799
  %fadd.24 = fadd float %fmul.24, %.800
  store float %fadd.24, ptr %R8, align 4
  %.804 = load i32, ptr %R2, align 4
  %.805 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.804, i32 16)
  %.806 = extractvalue { i32, i1 } %.805, 0
  %.807 = extractvalue { i32, i1 } %.805, 1
  store i32 %.806, ptr %R9, align 4
  store i32 %.806, ptr %R2, align 4
  %.818 = load float, ptr %R11, align 4
  %.819 = load float, ptr %R10, align 4
  %.820 = load float, ptr %R8, align 4
  %fmul.25 = fmul float %.818, %.819
  %fadd.25 = fadd float %fmul.25, %.820
  store float %fadd.25, ptr %R8, align 4
  %imad_ext4 = zext i1 %.807 to i32
  %imad_add_x = add i32 %R3.0, %imad_ext4
  store i32 %imad_add_x, ptr %R10, align 4
  %.831 = load float, ptr %R13, align 4
  %.832 = load float, ptr %R12, align 4
  %fmul.26 = fmul float %.831, %.832
  %fadd.26 = fadd float %fmul.26, %fadd.25
  store float %fadd.26, ptr %R8, align 4
  %.837 = load float, ptr %R15, align 4
  %.838 = load float, ptr %R14, align 4
  %fmul.27 = fmul float %.837, %.838
  %fadd.27 = fadd float %fmul.27, %fadd.26
  store float %fadd.27, ptr %R7, align 4
  br i1 %cmp.8.not, label %.L_x_1.loopexit, label %.L_x_2

.L_x_1.loopexit:                                  ; preds = %.L_x_2
  br label %.L_x_1

.L_x_1:                                           ; preds = %.L_x_1.loopexit, %.L_x_5, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0
  %0 = and i32 %Arg_4, 3
  %cmp.9.not = icmp eq i32 %0, 1
  br i1 %cmp.9.not, label %.L_x_0, label %.L_x_1_split_0x0930

.L_x_1_split_0x0930:                              ; preds = %.L_x_1
  store i32 4, ptr %R8, align 4
  %.861 = load i32, ptr %R5, align 4
  %imad_mul.8 = mul i32 %imad_add, %Arg_4
  %imad_add.8 = add i32 %imad_mul.8, %.861
  store i32 %imad_add.8, ptr %R2, align 4
  %imad_ext1.1 = zext i32 %imad_add.8 to i64
  %imad_mul.9 = shl nuw nsw i64 %imad_ext1.1, 2
  %.866 = ptrtoint ptr %Arg_1 to i64
  %imad_add.9 = add i64 %imad_mul.9, %.866
  %.868 = lshr i64 %imad_add.9, 32
  %trunc32.4 = trunc nuw i64 %.868 to i32
  %trunc32.5 = trunc i64 %imad_add.9 to i32
  store i32 %trunc32.5, ptr %R2, align 4
  %.872 = load i32, ptr %R5, align 4
  %.873 = load i32, ptr %R8, align 4
  %imad_ext1.2 = zext i32 %.872 to i64
  %imad_ext2.2 = zext i32 %.873 to i64
  %imad_mul.10 = mul nuw i64 %imad_ext1.2, %imad_ext2.2
  %.874 = ptrtoint ptr %Arg_0 to i64
  %imad_add.10 = add i64 %imad_mul.10, %.874
  %.876 = lshr i64 %imad_add.10, 32
  %trunc32.6 = trunc nuw i64 %.876 to i32
  %trunc32.7 = trunc i64 %imad_add.10 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  store i32 %trunc32.6, ptr %R9, align 4
  %.880 = load i32, ptr %R2, align 4
  br label %.L_x_6

.L_x_6:                                           ; preds = %.L_x_6, %.L_x_1_split_0x0930
  %R6.4 = phi i32 [ %.880, %.L_x_1_split_0x0930 ], [ %.913, %.L_x_6 ]
  %R4.0 = phi i32 [ %.76, %.L_x_1_split_0x0930 ], [ %.900, %.L_x_6 ]
  %R3.4 = phi i32 [ %trunc32.4, %.L_x_1_split_0x0930 ], [ %imad_add_x.1, %.L_x_6 ]
  store i32 %R6.4, ptr %R2, align 4
  %.887 = load i32, ptr %R8, align 4
  %zext.112 = zext i32 %.887 to i64
  %.888 = load i32, ptr %R9, align 4
  %zext.113 = zext i32 %.888 to i64
  %shl.56 = shl nuw i64 %zext.113, 32
  %or.56 = or disjoint i64 %shl.56, %zext.112
  %inttoptr_bytes.56 = inttoptr i64 %or.56 to ptr addrspace(1)
  %.889 = load float, ptr addrspace(1) %inttoptr_bytes.56, align 4
  store float %.889, ptr %R5, align 4
  %.893 = load i32, ptr %R2, align 4
  %zext.114 = zext i32 %.893 to i64
  %zext.115 = zext i32 %R3.4 to i64
  %shl.57 = shl nuw i64 %zext.115, 32
  %or.57 = or disjoint i64 %shl.57, %zext.114
  %inttoptr_bytes.57 = inttoptr i64 %or.57 to ptr addrspace(1)
  %.895 = load float, ptr addrspace(1) %inttoptr_bytes.57, align 4
  store float %.895, ptr %R2, align 4
  %.900 = add i32 %R4.0, -1
  %cmp.10.not = icmp eq i32 %.900, 0
  %.912 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R6.4, i32 4)
  %.913 = extractvalue { i32, i1 } %.912, 0
  %.914 = extractvalue { i32, i1 } %.912, 1
  %.922 = load i32, ptr %R8, align 4
  %.923 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.922, i32 4)
  %.924 = extractvalue { i32, i1 } %.923, 0
  %.925 = extractvalue { i32, i1 } %.923, 1
  store i32 %.924, ptr %R8, align 4
  %imad_ext4.1 = zext i1 %.914 to i32
  %imad_add_x.1 = add i32 %R3.4, %imad_ext4.1
  %.937 = load i32, ptr %R9, align 4
  %.940 = zext i1 %.925 to i32
  %add.22 = add i32 %.937, %.940
  store i32 %add.22, ptr %R9, align 4
  %.944 = load float, ptr %R2, align 4
  %.945 = load float, ptr %R5, align 4
  %.946 = load float, ptr %R7, align 4
  %fmul.28 = fmul float %.944, %.945
  %fadd.28 = fadd float %fmul.28, %.946
  store float %fadd.28, ptr %R7, align 4
  br i1 %cmp.10.not, label %.L_x_0.loopexit, label %.L_x_6

.L_x_0.loopexit:                                  ; preds = %.L_x_6
  br label %.L_x_0

.L_x_0:                                           ; preds = %.L_x_0.loopexit, %.L_x_1, %.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060
  store i32 4, ptr %R5, align 4
  %imad_ext1.3 = zext i32 %imad_add to i64
  %imad_mul.12 = shl nuw nsw i64 %imad_ext1.3, 2
  %.958 = ptrtoint ptr %Arg_2 to i64
  %imad_add.12 = add i64 %imad_mul.12, %.958
  %trunc32.9 = trunc i64 %imad_add.12 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  %inttoptr_bytes.58 = inttoptr i64 %imad_add.12 to ptr addrspace(1)
  %.966 = load float, ptr addrspace(1) %inttoptr_bytes.58, align 4
  store float %.966, ptr %R2, align 4
  %.971 = load i32, ptr %R5, align 4
  %imad_ext1.4 = zext i32 %imad_add to i64
  %imad_ext2.4 = zext i32 %.971 to i64
  %imad_mul.13 = mul nuw i64 %imad_ext1.4, %imad_ext2.4
  %.972 = ptrtoint ptr %Arg_3 to i64
  %imad_add.13 = add i64 %imad_mul.13, %.972
  %.974 = lshr i64 %imad_add.13, 32
  %trunc32.10 = trunc nuw i64 %.974 to i32
  store i32 %trunc32.10, ptr %R5, align 4
  %.978 = load float, ptr %R2, align 4
  %.979 = load float, ptr %R7, align 4
  %fadd.29 = fadd float %.978, %.979
  store float %fadd.29, ptr %R7, align 4
  %inttoptr_bytes.59 = inttoptr i64 %imad_add.13 to ptr addrspace(1)
  store float %fadd.29, ptr addrspace(1) %inttoptr_bytes.59, align 4
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
  %nvvm_ctaid_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_blockdim_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_x
  %cmp.not = icmp slt i32 %imad_add, %Arg_5
  br i1 %cmp.not, label %.text._Z8fc_layerPfS_S_S_ii_split_0x0060, label %ExitFunction

.text._Z8fc_layerPfS_S_S_ii_split_0x0060:         ; preds = %Entry_.text._Z8fc_layerPfS_S_S_ii
  store i32 0, ptr %R7, align 4
  %cmp.1 = icmp slt i32 %Arg_4, 1
  br i1 %cmp.1, label %.L_x_8, label %.text._Z8fc_layerPfS_S_S_ii_split_0x00a0

.text._Z8fc_layerPfS_S_S_ii_split_0x00a0:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0060
  %.53 = add nsw i32 %Arg_4, -1
  store i32 %.53, ptr %R2, align 4
  %.59 = and i32 %Arg_4, 3
  %cmp.2 = icmp slt i32 %Arg_4, 4
  store float 0.000000e+00, ptr %R7, align 4
  store i32 0, ptr %R5, align 4
  br i1 %cmp.2, label %.L_x_9, label %.text._Z8fc_layerPfS_S_S_ii_split_0x0100

.text._Z8fc_layerPfS_S_S_ii_split_0x0100:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x00a0
  %.80 = and i32 %Arg_4, 2147483644
  %imad_mul.2 = mul i32 %imad_add, %Arg_4
  store i32 %imad_mul.2, ptr %R2, align 4
  %.87 = ptrtoint ptr %Arg_0 to i64
  %.89 = lshr i64 %.87, 32
  %trunc32 = trunc nuw i64 %.89 to i32
  %trunc32.1 = trunc i64 %.87 to i32
  %cmp.3.not = icmp eq i32 %.80, 0
  store float 0.000000e+00, ptr %R7, align 4
  %.105 = load i32, ptr %R2, align 4
  %imad_ext1 = zext i32 %.105 to i64
  %imad_mul.4 = shl nuw nsw i64 %imad_ext1, 2
  %.107 = ptrtoint ptr %Arg_1 to i64
  %imad_add.4 = add i64 %imad_mul.4, %.107
  %.109 = lshr i64 %imad_add.4, 32
  %trunc32.2 = trunc nuw i64 %.109 to i32
  %trunc32.3 = trunc i64 %imad_add.4 to i32
  store i32 %trunc32.3, ptr %R2, align 4
  store i32 0, ptr %R5, align 4
  br i1 %cmp.3.not, label %.L_x_10.preheader, label %.text._Z8fc_layerPfS_S_S_ii_split_0x0190

.text._Z8fc_layerPfS_S_S_ii_split_0x0190:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0100
  %cmp.4 = icmp samesign ult i32 %.80, 13
  br i1 %cmp.4, label %.L_x_11, label %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0

.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:         ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0190
  br label %.L_x_12

.L_x_12:                                          ; preds = %.L_x_12, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0
  %UR4.2 = phi i32 [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %.337, %.L_x_12 ]
  %R6.2 = phi i32 [ %.80, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %.331, %.L_x_12 ]
  %UR5.2 = phi i32 [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %add.2, %.L_x_12 ]
  %R3.2 = phi i32 [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x01c0 ], [ %imad_add_x, %.L_x_12 ]
  %.138 = load i32, ptr %R2, align 4
  %zext = zext i32 %.138 to i64
  %zext.1 = zext i32 %R3.2 to i64
  %shl = shl nuw i64 %zext.1, 32
  %or = or disjoint i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %.140 = load float, ptr addrspace(1) %inttoptr_bytes, align 4
  store float %.140, ptr %R8, align 4
  %zext.2 = zext i32 %UR4.2 to i64
  %zext.3 = zext i32 %UR5.2 to i64
  %shl.1 = shl nuw i64 %zext.3, 32
  %or.1 = or disjoint i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %.146 = load float, ptr addrspace(1) %inttoptr_bytes.1, align 4
  store float %.146, ptr %R9, align 4
  %.150 = load i32, ptr %R2, align 4
  %zext.4 = zext i32 %.150 to i64
  %zext.5 = zext i32 %R3.2 to i64
  %shl.2 = shl nuw i64 %zext.5, 32
  %or.2 = or disjoint i64 %shl.2, %zext.4
  %ptr_plus_imm = add i64 %or.2, 4
  %inttoptr_bytes.2 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %.152 = load float, ptr addrspace(1) %inttoptr_bytes.2, align 4
  store float %.152, ptr %R11, align 4
  %zext.6 = zext i32 %UR4.2 to i64
  %zext.7 = zext i32 %UR5.2 to i64
  %shl.3 = shl nuw i64 %zext.7, 32
  %or.3 = or disjoint i64 %shl.3, %zext.6
  %ptr_plus_imm.1 = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %.158 = load float, ptr addrspace(1) %inttoptr_bytes.3, align 4
  store float %.158, ptr %R10, align 4
  %.162 = load i32, ptr %R2, align 4
  %zext.8 = zext i32 %.162 to i64
  %zext.9 = zext i32 %R3.2 to i64
  %shl.4 = shl nuw i64 %zext.9, 32
  %or.4 = or disjoint i64 %shl.4, %zext.8
  %ptr_plus_imm.2 = add i64 %or.4, 8
  %inttoptr_bytes.4 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %.164 = load float, ptr addrspace(1) %inttoptr_bytes.4, align 4
  store float %.164, ptr %R13, align 4
  %zext.10 = zext i32 %UR4.2 to i64
  %zext.11 = zext i32 %UR5.2 to i64
  %shl.5 = shl nuw i64 %zext.11, 32
  %or.5 = or disjoint i64 %shl.5, %zext.10
  %ptr_plus_imm.3 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %.170 = load float, ptr addrspace(1) %inttoptr_bytes.5, align 4
  store float %.170, ptr %R12, align 4
  %.174 = load i32, ptr %R2, align 4
  %zext.12 = zext i32 %.174 to i64
  %zext.13 = zext i32 %R3.2 to i64
  %shl.6 = shl nuw i64 %zext.13, 32
  %or.6 = or disjoint i64 %shl.6, %zext.12
  %ptr_plus_imm.4 = add i64 %or.6, 12
  %inttoptr_bytes.6 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %.176 = load float, ptr addrspace(1) %inttoptr_bytes.6, align 4
  store float %.176, ptr %R15, align 4
  %zext.14 = zext i32 %UR4.2 to i64
  %zext.15 = zext i32 %UR5.2 to i64
  %shl.7 = shl nuw i64 %zext.15, 32
  %or.7 = or disjoint i64 %shl.7, %zext.14
  %ptr_plus_imm.5 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %.182 = load float, ptr addrspace(1) %inttoptr_bytes.7, align 4
  store float %.182, ptr %R14, align 4
  %.186 = load i32, ptr %R2, align 4
  %zext.16 = zext i32 %.186 to i64
  %zext.17 = zext i32 %R3.2 to i64
  %shl.8 = shl nuw i64 %zext.17, 32
  %or.8 = or disjoint i64 %shl.8, %zext.16
  %ptr_plus_imm.6 = add i64 %or.8, 16
  %inttoptr_bytes.8 = inttoptr i64 %ptr_plus_imm.6 to ptr addrspace(1)
  %.188 = load float, ptr addrspace(1) %inttoptr_bytes.8, align 4
  store float %.188, ptr %R17, align 4
  %zext.18 = zext i32 %UR4.2 to i64
  %zext.19 = zext i32 %UR5.2 to i64
  %shl.9 = shl nuw i64 %zext.19, 32
  %or.9 = or disjoint i64 %shl.9, %zext.18
  %ptr_plus_imm.7 = add i64 %or.9, 16
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm.7 to ptr addrspace(1)
  %.194 = load float, ptr addrspace(1) %inttoptr_bytes.9, align 4
  store float %.194, ptr %R16, align 4
  %.198 = load i32, ptr %R2, align 4
  %zext.20 = zext i32 %.198 to i64
  %zext.21 = zext i32 %R3.2 to i64
  %shl.10 = shl nuw i64 %zext.21, 32
  %or.10 = or disjoint i64 %shl.10, %zext.20
  %ptr_plus_imm.8 = add i64 %or.10, 20
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.8 to ptr addrspace(1)
  %.200 = load float, ptr addrspace(1) %inttoptr_bytes.10, align 4
  store float %.200, ptr %R19, align 4
  %zext.22 = zext i32 %UR4.2 to i64
  %zext.23 = zext i32 %UR5.2 to i64
  %shl.11 = shl nuw i64 %zext.23, 32
  %or.11 = or disjoint i64 %shl.11, %zext.22
  %ptr_plus_imm.9 = add i64 %or.11, 20
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.9 to ptr addrspace(1)
  %.206 = load float, ptr addrspace(1) %inttoptr_bytes.11, align 4
  store float %.206, ptr %R18, align 4
  %.210 = load i32, ptr %R2, align 4
  %zext.24 = zext i32 %.210 to i64
  %zext.25 = zext i32 %R3.2 to i64
  %shl.12 = shl nuw i64 %zext.25, 32
  %or.12 = or disjoint i64 %shl.12, %zext.24
  %ptr_plus_imm.10 = add i64 %or.12, 24
  %inttoptr_bytes.12 = inttoptr i64 %ptr_plus_imm.10 to ptr addrspace(1)
  %.212 = load float, ptr addrspace(1) %inttoptr_bytes.12, align 4
  store float %.212, ptr %R21, align 4
  %zext.26 = zext i32 %UR4.2 to i64
  %zext.27 = zext i32 %UR5.2 to i64
  %shl.13 = shl nuw i64 %zext.27, 32
  %or.13 = or disjoint i64 %shl.13, %zext.26
  %ptr_plus_imm.11 = add i64 %or.13, 24
  %inttoptr_bytes.13 = inttoptr i64 %ptr_plus_imm.11 to ptr addrspace(1)
  %.218 = load float, ptr addrspace(1) %inttoptr_bytes.13, align 4
  store float %.218, ptr %R20, align 4
  %.222 = load i32, ptr %R2, align 4
  %zext.28 = zext i32 %.222 to i64
  %zext.29 = zext i32 %R3.2 to i64
  %shl.14 = shl nuw i64 %zext.29, 32
  %or.14 = or disjoint i64 %shl.14, %zext.28
  %ptr_plus_imm.12 = add i64 %or.14, 28
  %inttoptr_bytes.14 = inttoptr i64 %ptr_plus_imm.12 to ptr addrspace(1)
  %.224 = load float, ptr addrspace(1) %inttoptr_bytes.14, align 4
  store float %.224, ptr %R23, align 4
  %zext.30 = zext i32 %UR4.2 to i64
  %zext.31 = zext i32 %UR5.2 to i64
  %shl.15 = shl nuw i64 %zext.31, 32
  %or.15 = or disjoint i64 %shl.15, %zext.30
  %ptr_plus_imm.13 = add i64 %or.15, 28
  %inttoptr_bytes.15 = inttoptr i64 %ptr_plus_imm.13 to ptr addrspace(1)
  %.230 = load float, ptr addrspace(1) %inttoptr_bytes.15, align 4
  store float %.230, ptr %R22, align 4
  %.234 = load i32, ptr %R2, align 4
  %zext.32 = zext i32 %.234 to i64
  %zext.33 = zext i32 %R3.2 to i64
  %shl.16 = shl nuw i64 %zext.33, 32
  %or.16 = or disjoint i64 %shl.16, %zext.32
  %ptr_plus_imm.14 = add i64 %or.16, 32
  %inttoptr_bytes.16 = inttoptr i64 %ptr_plus_imm.14 to ptr addrspace(1)
  %.236 = load float, ptr addrspace(1) %inttoptr_bytes.16, align 4
  store float %.236, ptr %R25, align 4
  %zext.34 = zext i32 %UR4.2 to i64
  %zext.35 = zext i32 %UR5.2 to i64
  %shl.17 = shl nuw i64 %zext.35, 32
  %or.17 = or disjoint i64 %shl.17, %zext.34
  %ptr_plus_imm.15 = add i64 %or.17, 32
  %inttoptr_bytes.17 = inttoptr i64 %ptr_plus_imm.15 to ptr addrspace(1)
  %.242 = load float, ptr addrspace(1) %inttoptr_bytes.17, align 4
  store float %.242, ptr %R24, align 4
  %.246 = load i32, ptr %R2, align 4
  %zext.36 = zext i32 %.246 to i64
  %zext.37 = zext i32 %R3.2 to i64
  %shl.18 = shl nuw i64 %zext.37, 32
  %or.18 = or disjoint i64 %shl.18, %zext.36
  %ptr_plus_imm.16 = add i64 %or.18, 36
  %inttoptr_bytes.18 = inttoptr i64 %ptr_plus_imm.16 to ptr addrspace(1)
  %.248 = load float, ptr addrspace(1) %inttoptr_bytes.18, align 4
  store float %.248, ptr %R27, align 4
  %zext.38 = zext i32 %UR4.2 to i64
  %zext.39 = zext i32 %UR5.2 to i64
  %shl.19 = shl nuw i64 %zext.39, 32
  %or.19 = or disjoint i64 %shl.19, %zext.38
  %ptr_plus_imm.17 = add i64 %or.19, 36
  %inttoptr_bytes.19 = inttoptr i64 %ptr_plus_imm.17 to ptr addrspace(1)
  %.254 = load float, ptr addrspace(1) %inttoptr_bytes.19, align 4
  store float %.254, ptr %R26, align 4
  %.258 = load i32, ptr %R2, align 4
  %zext.40 = zext i32 %.258 to i64
  %zext.41 = zext i32 %R3.2 to i64
  %shl.20 = shl nuw i64 %zext.41, 32
  %or.20 = or disjoint i64 %shl.20, %zext.40
  %ptr_plus_imm.18 = add i64 %or.20, 40
  %inttoptr_bytes.20 = inttoptr i64 %ptr_plus_imm.18 to ptr addrspace(1)
  %.260 = load float, ptr addrspace(1) %inttoptr_bytes.20, align 4
  store float %.260, ptr %R29, align 4
  %zext.42 = zext i32 %UR4.2 to i64
  %zext.43 = zext i32 %UR5.2 to i64
  %shl.21 = shl nuw i64 %zext.43, 32
  %or.21 = or disjoint i64 %shl.21, %zext.42
  %ptr_plus_imm.19 = add i64 %or.21, 40
  %inttoptr_bytes.21 = inttoptr i64 %ptr_plus_imm.19 to ptr addrspace(1)
  %.266 = load float, ptr addrspace(1) %inttoptr_bytes.21, align 4
  store float %.266, ptr %R28, align 4
  %.270 = load i32, ptr %R2, align 4
  %zext.44 = zext i32 %.270 to i64
  %zext.45 = zext i32 %R3.2 to i64
  %shl.22 = shl nuw i64 %zext.45, 32
  %or.22 = or disjoint i64 %shl.22, %zext.44
  %ptr_plus_imm.20 = add i64 %or.22, 44
  %inttoptr_bytes.22 = inttoptr i64 %ptr_plus_imm.20 to ptr addrspace(1)
  %.272 = load float, ptr addrspace(1) %inttoptr_bytes.22, align 4
  store float %.272, ptr %R31, align 4
  %zext.46 = zext i32 %UR4.2 to i64
  %zext.47 = zext i32 %UR5.2 to i64
  %shl.23 = shl nuw i64 %zext.47, 32
  %or.23 = or disjoint i64 %shl.23, %zext.46
  %ptr_plus_imm.21 = add i64 %or.23, 44
  %inttoptr_bytes.23 = inttoptr i64 %ptr_plus_imm.21 to ptr addrspace(1)
  %.278 = load float, ptr addrspace(1) %inttoptr_bytes.23, align 4
  store float %.278, ptr %R30, align 4
  %.282 = load i32, ptr %R2, align 4
  %zext.48 = zext i32 %.282 to i64
  %zext.49 = zext i32 %R3.2 to i64
  %shl.24 = shl nuw i64 %zext.49, 32
  %or.24 = or disjoint i64 %shl.24, %zext.48
  %ptr_plus_imm.22 = add i64 %or.24, 48
  %inttoptr_bytes.24 = inttoptr i64 %ptr_plus_imm.22 to ptr addrspace(1)
  %.284 = load float, ptr addrspace(1) %inttoptr_bytes.24, align 4
  store float %.284, ptr %R33, align 4
  %zext.50 = zext i32 %UR4.2 to i64
  %zext.51 = zext i32 %UR5.2 to i64
  %shl.25 = shl nuw i64 %zext.51, 32
  %or.25 = or disjoint i64 %shl.25, %zext.50
  %ptr_plus_imm.23 = add i64 %or.25, 48
  %inttoptr_bytes.25 = inttoptr i64 %ptr_plus_imm.23 to ptr addrspace(1)
  %.290 = load float, ptr addrspace(1) %inttoptr_bytes.25, align 4
  store float %.290, ptr %R32, align 4
  %.294 = load i32, ptr %R2, align 4
  %zext.52 = zext i32 %.294 to i64
  %zext.53 = zext i32 %R3.2 to i64
  %shl.26 = shl nuw i64 %zext.53, 32
  %or.26 = or disjoint i64 %shl.26, %zext.52
  %ptr_plus_imm.24 = add i64 %or.26, 52
  %inttoptr_bytes.26 = inttoptr i64 %ptr_plus_imm.24 to ptr addrspace(1)
  %.296 = load float, ptr addrspace(1) %inttoptr_bytes.26, align 4
  store float %.296, ptr %R35, align 4
  %zext.54 = zext i32 %UR4.2 to i64
  %zext.55 = zext i32 %UR5.2 to i64
  %shl.27 = shl nuw i64 %zext.55, 32
  %or.27 = or disjoint i64 %shl.27, %zext.54
  %ptr_plus_imm.25 = add i64 %or.27, 52
  %inttoptr_bytes.27 = inttoptr i64 %ptr_plus_imm.25 to ptr addrspace(1)
  %.302 = load float, ptr addrspace(1) %inttoptr_bytes.27, align 4
  store float %.302, ptr %R34, align 4
  %.306 = load i32, ptr %R2, align 4
  %zext.56 = zext i32 %.306 to i64
  %zext.57 = zext i32 %R3.2 to i64
  %shl.28 = shl nuw i64 %zext.57, 32
  %or.28 = or disjoint i64 %shl.28, %zext.56
  %ptr_plus_imm.26 = add i64 %or.28, 56
  %inttoptr_bytes.28 = inttoptr i64 %ptr_plus_imm.26 to ptr addrspace(1)
  %.308 = load float, ptr addrspace(1) %inttoptr_bytes.28, align 4
  store float %.308, ptr %R37, align 4
  %zext.58 = zext i32 %UR4.2 to i64
  %zext.59 = zext i32 %UR5.2 to i64
  %shl.29 = shl nuw i64 %zext.59, 32
  %or.29 = or disjoint i64 %shl.29, %zext.58
  %ptr_plus_imm.27 = add i64 %or.29, 56
  %inttoptr_bytes.29 = inttoptr i64 %ptr_plus_imm.27 to ptr addrspace(1)
  %.314 = load float, ptr addrspace(1) %inttoptr_bytes.29, align 4
  store float %.314, ptr %R36, align 4
  %.318 = load i32, ptr %R2, align 4
  %zext.60 = zext i32 %.318 to i64
  %zext.61 = zext i32 %R3.2 to i64
  %shl.30 = shl nuw i64 %zext.61, 32
  %or.30 = or disjoint i64 %shl.30, %zext.60
  %ptr_plus_imm.28 = add i64 %or.30, 60
  %inttoptr_bytes.30 = inttoptr i64 %ptr_plus_imm.28 to ptr addrspace(1)
  %.320 = load float, ptr addrspace(1) %inttoptr_bytes.30, align 4
  store float %.320, ptr %R39, align 4
  %zext.62 = zext i32 %UR4.2 to i64
  %zext.63 = zext i32 %UR5.2 to i64
  %shl.31 = shl nuw i64 %zext.63, 32
  %or.31 = or disjoint i64 %shl.31, %zext.62
  %ptr_plus_imm.29 = add i64 %or.31, 60
  %inttoptr_bytes.31 = inttoptr i64 %ptr_plus_imm.29 to ptr addrspace(1)
  %.326 = load float, ptr addrspace(1) %inttoptr_bytes.31, align 4
  store float %.326, ptr %R38, align 4
  %.331 = add i32 %R6.2, -16
  %.336 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.2, i32 64)
  %.337 = extractvalue { i32, i1 } %.336, 0
  %.338 = extractvalue { i32, i1 } %.336, 1
  %.346 = load i32, ptr %R5, align 4
  %.347 = add i32 %.346, 16
  store i32 %.347, ptr %R5, align 4
  %cmp.5 = icmp sgt i32 %.331, 12
  %.361 = zext i1 %.338 to i32
  %add.2 = add i32 %UR5.2, %.361
  %.365 = load i32, ptr %R2, align 4
  %.366 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.365, i32 64)
  %.367 = extractvalue { i32, i1 } %.366, 0
  %.368 = extractvalue { i32, i1 } %.366, 1
  store i32 %.367, ptr %R2, align 4
  %imad_ext4 = zext i1 %.368 to i32
  %imad_add_x = add i32 %R3.2, %imad_ext4
  %.380 = load float, ptr %R8, align 4
  %.381 = load float, ptr %R9, align 4
  %.382 = load float, ptr %R7, align 4
  %fmul = fmul float %.380, %.381
  %fadd = fadd float %fmul, %.382
  store float %fadd, ptr %R8, align 4
  %.386 = load float, ptr %R11, align 4
  %.387 = load float, ptr %R10, align 4
  %fmul.1 = fmul float %.386, %.387
  %fadd.1 = fadd float %fmul.1, %fadd
  store float %fadd.1, ptr %R8, align 4
  %.392 = load float, ptr %R13, align 4
  %.393 = load float, ptr %R12, align 4
  %fmul.2 = fmul float %.392, %.393
  %fadd.2 = fadd float %fmul.2, %fadd.1
  store float %fadd.2, ptr %R8, align 4
  %.398 = load float, ptr %R15, align 4
  %.399 = load float, ptr %R14, align 4
  %fmul.3 = fmul float %.398, %.399
  %fadd.3 = fadd float %fmul.3, %fadd.2
  store float %fadd.3, ptr %R8, align 4
  %.404 = load float, ptr %R17, align 4
  %.405 = load float, ptr %R16, align 4
  %fmul.4 = fmul float %.404, %.405
  %fadd.4 = fadd float %fmul.4, %fadd.3
  store float %fadd.4, ptr %R8, align 4
  %.410 = load float, ptr %R19, align 4
  %.411 = load float, ptr %R18, align 4
  %fmul.5 = fmul float %.410, %.411
  %fadd.5 = fadd float %fmul.5, %fadd.4
  store float %fadd.5, ptr %R8, align 4
  %.416 = load float, ptr %R21, align 4
  %.417 = load float, ptr %R20, align 4
  %fmul.6 = fmul float %.416, %.417
  %fadd.6 = fadd float %fmul.6, %fadd.5
  store float %fadd.6, ptr %R8, align 4
  %.422 = load float, ptr %R23, align 4
  %.423 = load float, ptr %R22, align 4
  %fmul.7 = fmul float %.422, %.423
  %fadd.7 = fadd float %fmul.7, %fadd.6
  store float %fadd.7, ptr %R8, align 4
  %.428 = load float, ptr %R25, align 4
  %.429 = load float, ptr %R24, align 4
  %fmul.8 = fmul float %.428, %.429
  %fadd.8 = fadd float %fmul.8, %fadd.7
  store float %fadd.8, ptr %R8, align 4
  %.434 = load float, ptr %R27, align 4
  %.435 = load float, ptr %R26, align 4
  %fmul.9 = fmul float %.434, %.435
  %fadd.9 = fadd float %fmul.9, %fadd.8
  store float %fadd.9, ptr %R8, align 4
  %.440 = load float, ptr %R29, align 4
  %.441 = load float, ptr %R28, align 4
  %fmul.10 = fmul float %.440, %.441
  %fadd.10 = fadd float %fmul.10, %fadd.9
  store float %fadd.10, ptr %R8, align 4
  %.446 = load float, ptr %R31, align 4
  %.447 = load float, ptr %R30, align 4
  %fmul.11 = fmul float %.446, %.447
  %fadd.11 = fadd float %fmul.11, %fadd.10
  store float %fadd.11, ptr %R8, align 4
  %.452 = load float, ptr %R33, align 4
  %.453 = load float, ptr %R32, align 4
  %fmul.12 = fmul float %.452, %.453
  %fadd.12 = fadd float %fmul.12, %fadd.11
  store float %fadd.12, ptr %R8, align 4
  %.458 = load float, ptr %R35, align 4
  %.459 = load float, ptr %R34, align 4
  %fmul.13 = fmul float %.458, %.459
  %fadd.13 = fadd float %fmul.13, %fadd.12
  store float %fadd.13, ptr %R8, align 4
  %.464 = load float, ptr %R37, align 4
  %.465 = load float, ptr %R36, align 4
  %fmul.14 = fmul float %.464, %.465
  %fadd.14 = fadd float %fmul.14, %fadd.13
  store float %fadd.14, ptr %R8, align 4
  %.470 = load float, ptr %R39, align 4
  %.471 = load float, ptr %R38, align 4
  %fmul.15 = fmul float %.470, %.471
  %fadd.15 = fadd float %fmul.15, %fadd.14
  store float %fadd.15, ptr %R7, align 4
  br i1 %cmp.5, label %.L_x_12, label %.L_x_11.loopexit

.L_x_11.loopexit:                                 ; preds = %.L_x_12
  br label %.L_x_11

.L_x_11:                                          ; preds = %.L_x_11.loopexit, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190
  %UR4.1 = phi i32 [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %.337, %.L_x_11.loopexit ]
  %R6.1 = phi i32 [ %.80, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %.331, %.L_x_11.loopexit ]
  %UR5.1 = phi i32 [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %add.2, %.L_x_11.loopexit ]
  %R3.1 = phi i32 [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x0190 ], [ %imad_add_x, %.L_x_11.loopexit ]
  %cmp.6 = icmp slt i32 %R6.1, 5
  br i1 %cmp.6, label %.L_x_13, label %.L_x_11_split_0x0570

.L_x_11_split_0x0570:                             ; preds = %.L_x_11
  %.491 = load i32, ptr %R2, align 4
  %zext.64 = zext i32 %.491 to i64
  %zext.65 = zext i32 %R3.1 to i64
  %shl.32 = shl nuw i64 %zext.65, 32
  %or.32 = or disjoint i64 %shl.32, %zext.64
  %inttoptr_bytes.32 = inttoptr i64 %or.32 to ptr addrspace(1)
  %.493 = load float, ptr addrspace(1) %inttoptr_bytes.32, align 4
  store float %.493, ptr %R8, align 4
  %zext.66 = zext i32 %UR4.1 to i64
  %zext.67 = zext i32 %UR5.1 to i64
  %shl.33 = shl nuw i64 %zext.67, 32
  %or.33 = or disjoint i64 %shl.33, %zext.66
  %inttoptr_bytes.33 = inttoptr i64 %or.33 to ptr addrspace(1)
  %.499 = load float, ptr addrspace(1) %inttoptr_bytes.33, align 4
  store float %.499, ptr %R9, align 4
  %.503 = load i32, ptr %R2, align 4
  %zext.68 = zext i32 %.503 to i64
  %zext.69 = zext i32 %R3.1 to i64
  %shl.34 = shl nuw i64 %zext.69, 32
  %or.34 = or disjoint i64 %shl.34, %zext.68
  %ptr_plus_imm.30 = add i64 %or.34, 4
  %inttoptr_bytes.34 = inttoptr i64 %ptr_plus_imm.30 to ptr addrspace(1)
  %.505 = load float, ptr addrspace(1) %inttoptr_bytes.34, align 4
  store float %.505, ptr %R11, align 4
  %zext.70 = zext i32 %UR4.1 to i64
  %zext.71 = zext i32 %UR5.1 to i64
  %shl.35 = shl nuw i64 %zext.71, 32
  %or.35 = or disjoint i64 %shl.35, %zext.70
  %ptr_plus_imm.31 = add i64 %or.35, 4
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.31 to ptr addrspace(1)
  %.511 = load float, ptr addrspace(1) %inttoptr_bytes.35, align 4
  store float %.511, ptr %R10, align 4
  %.515 = load i32, ptr %R2, align 4
  %zext.72 = zext i32 %.515 to i64
  %zext.73 = zext i32 %R3.1 to i64
  %shl.36 = shl nuw i64 %zext.73, 32
  %or.36 = or disjoint i64 %shl.36, %zext.72
  %ptr_plus_imm.32 = add i64 %or.36, 8
  %inttoptr_bytes.36 = inttoptr i64 %ptr_plus_imm.32 to ptr addrspace(1)
  %.517 = load float, ptr addrspace(1) %inttoptr_bytes.36, align 4
  store float %.517, ptr %R13, align 4
  %zext.74 = zext i32 %UR4.1 to i64
  %zext.75 = zext i32 %UR5.1 to i64
  %shl.37 = shl nuw i64 %zext.75, 32
  %or.37 = or disjoint i64 %shl.37, %zext.74
  %ptr_plus_imm.33 = add i64 %or.37, 8
  %inttoptr_bytes.37 = inttoptr i64 %ptr_plus_imm.33 to ptr addrspace(1)
  %.523 = load float, ptr addrspace(1) %inttoptr_bytes.37, align 4
  store float %.523, ptr %R12, align 4
  %.527 = load i32, ptr %R2, align 4
  %zext.76 = zext i32 %.527 to i64
  %zext.77 = zext i32 %R3.1 to i64
  %shl.38 = shl nuw i64 %zext.77, 32
  %or.38 = or disjoint i64 %shl.38, %zext.76
  %ptr_plus_imm.34 = add i64 %or.38, 12
  %inttoptr_bytes.38 = inttoptr i64 %ptr_plus_imm.34 to ptr addrspace(1)
  %.529 = load float, ptr addrspace(1) %inttoptr_bytes.38, align 4
  store float %.529, ptr %R15, align 4
  %zext.78 = zext i32 %UR4.1 to i64
  %zext.79 = zext i32 %UR5.1 to i64
  %shl.39 = shl nuw i64 %zext.79, 32
  %or.39 = or disjoint i64 %shl.39, %zext.78
  %ptr_plus_imm.35 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %ptr_plus_imm.35 to ptr addrspace(1)
  %.535 = load float, ptr addrspace(1) %inttoptr_bytes.39, align 4
  store float %.535, ptr %R14, align 4
  %.539 = load i32, ptr %R2, align 4
  %zext.80 = zext i32 %.539 to i64
  %zext.81 = zext i32 %R3.1 to i64
  %shl.40 = shl nuw i64 %zext.81, 32
  %or.40 = or disjoint i64 %shl.40, %zext.80
  %ptr_plus_imm.36 = add i64 %or.40, 16
  %inttoptr_bytes.40 = inttoptr i64 %ptr_plus_imm.36 to ptr addrspace(1)
  %.541 = load float, ptr addrspace(1) %inttoptr_bytes.40, align 4
  store float %.541, ptr %R17, align 4
  %zext.82 = zext i32 %UR4.1 to i64
  %zext.83 = zext i32 %UR5.1 to i64
  %shl.41 = shl nuw i64 %zext.83, 32
  %or.41 = or disjoint i64 %shl.41, %zext.82
  %ptr_plus_imm.37 = add i64 %or.41, 16
  %inttoptr_bytes.41 = inttoptr i64 %ptr_plus_imm.37 to ptr addrspace(1)
  %.547 = load float, ptr addrspace(1) %inttoptr_bytes.41, align 4
  store float %.547, ptr %R16, align 4
  %.551 = load i32, ptr %R2, align 4
  %zext.84 = zext i32 %.551 to i64
  %zext.85 = zext i32 %R3.1 to i64
  %shl.42 = shl nuw i64 %zext.85, 32
  %or.42 = or disjoint i64 %shl.42, %zext.84
  %ptr_plus_imm.38 = add i64 %or.42, 20
  %inttoptr_bytes.42 = inttoptr i64 %ptr_plus_imm.38 to ptr addrspace(1)
  %.553 = load float, ptr addrspace(1) %inttoptr_bytes.42, align 4
  store float %.553, ptr %R19, align 4
  %zext.86 = zext i32 %UR4.1 to i64
  %zext.87 = zext i32 %UR5.1 to i64
  %shl.43 = shl nuw i64 %zext.87, 32
  %or.43 = or disjoint i64 %shl.43, %zext.86
  %ptr_plus_imm.39 = add i64 %or.43, 20
  %inttoptr_bytes.43 = inttoptr i64 %ptr_plus_imm.39 to ptr addrspace(1)
  %.559 = load float, ptr addrspace(1) %inttoptr_bytes.43, align 4
  store float %.559, ptr %R18, align 4
  %.563 = load i32, ptr %R2, align 4
  %zext.88 = zext i32 %.563 to i64
  %zext.89 = zext i32 %R3.1 to i64
  %shl.44 = shl nuw i64 %zext.89, 32
  %or.44 = or disjoint i64 %shl.44, %zext.88
  %ptr_plus_imm.40 = add i64 %or.44, 24
  %inttoptr_bytes.44 = inttoptr i64 %ptr_plus_imm.40 to ptr addrspace(1)
  %.565 = load float, ptr addrspace(1) %inttoptr_bytes.44, align 4
  store float %.565, ptr %R21, align 4
  %zext.90 = zext i32 %UR4.1 to i64
  %zext.91 = zext i32 %UR5.1 to i64
  %shl.45 = shl nuw i64 %zext.91, 32
  %or.45 = or disjoint i64 %shl.45, %zext.90
  %ptr_plus_imm.41 = add i64 %or.45, 24
  %inttoptr_bytes.45 = inttoptr i64 %ptr_plus_imm.41 to ptr addrspace(1)
  %.571 = load float, ptr addrspace(1) %inttoptr_bytes.45, align 4
  store float %.571, ptr %R20, align 4
  %.575 = load i32, ptr %R2, align 4
  %zext.92 = zext i32 %.575 to i64
  %zext.93 = zext i32 %R3.1 to i64
  %shl.46 = shl nuw i64 %zext.93, 32
  %or.46 = or disjoint i64 %shl.46, %zext.92
  %ptr_plus_imm.42 = add i64 %or.46, 28
  %inttoptr_bytes.46 = inttoptr i64 %ptr_plus_imm.42 to ptr addrspace(1)
  %.577 = load float, ptr addrspace(1) %inttoptr_bytes.46, align 4
  store float %.577, ptr %R23, align 4
  %zext.94 = zext i32 %UR4.1 to i64
  %zext.95 = zext i32 %UR5.1 to i64
  %shl.47 = shl nuw i64 %zext.95, 32
  %or.47 = or disjoint i64 %shl.47, %zext.94
  %ptr_plus_imm.43 = add i64 %or.47, 28
  %inttoptr_bytes.47 = inttoptr i64 %ptr_plus_imm.43 to ptr addrspace(1)
  %.583 = load float, ptr addrspace(1) %inttoptr_bytes.47, align 4
  store float %.583, ptr %R22, align 4
  %.588 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.1, i32 32)
  %.589 = extractvalue { i32, i1 } %.588, 0
  %.590 = extractvalue { i32, i1 } %.588, 1
  %.602 = load i32, ptr %R5, align 4
  %.603 = add i32 %.602, 8
  store i32 %.603, ptr %R5, align 4
  %.610 = zext i1 %.590 to i32
  %add.6 = add i32 %UR5.1, %.610
  %.614 = load i32, ptr %R2, align 4
  %.615 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.614, i32 32)
  %.616 = extractvalue { i32, i1 } %.615, 0
  %.617 = extractvalue { i32, i1 } %.615, 1
  store i32 %.616, ptr %R2, align 4
  %.626 = add nsw i32 %R6.1, -8
  %.633 = zext i1 %.617 to i32
  %add.10 = add i32 %R3.1, %.633
  %.637 = load float, ptr %R8, align 4
  %.638 = load float, ptr %R9, align 4
  %.639 = load float, ptr %R7, align 4
  %fmul.16 = fmul float %.637, %.638
  %fadd.16 = fadd float %fmul.16, %.639
  store float %fadd.16, ptr %R8, align 4
  %.643 = load float, ptr %R11, align 4
  %.644 = load float, ptr %R10, align 4
  %fmul.17 = fmul float %.643, %.644
  %fadd.17 = fadd float %fmul.17, %fadd.16
  store float %fadd.17, ptr %R8, align 4
  %.649 = load float, ptr %R13, align 4
  %.650 = load float, ptr %R12, align 4
  %fmul.18 = fmul float %.649, %.650
  %fadd.18 = fadd float %fmul.18, %fadd.17
  store float %fadd.18, ptr %R8, align 4
  %.655 = load float, ptr %R15, align 4
  %.656 = load float, ptr %R14, align 4
  %fmul.19 = fmul float %.655, %.656
  %fadd.19 = fadd float %fmul.19, %fadd.18
  store float %fadd.19, ptr %R8, align 4
  %.661 = load float, ptr %R17, align 4
  %.662 = load float, ptr %R16, align 4
  %fmul.20 = fmul float %.661, %.662
  %fadd.20 = fadd float %fmul.20, %fadd.19
  store float %fadd.20, ptr %R8, align 4
  %.667 = load float, ptr %R19, align 4
  %.668 = load float, ptr %R18, align 4
  %fmul.21 = fmul float %.667, %.668
  %fadd.21 = fadd float %fmul.21, %fadd.20
  store float %fadd.21, ptr %R8, align 4
  %.673 = load float, ptr %R21, align 4
  %.674 = load float, ptr %R20, align 4
  %fmul.22 = fmul float %.673, %.674
  %fadd.22 = fadd float %fmul.22, %fadd.21
  store float %fadd.22, ptr %R8, align 4
  %.679 = load float, ptr %R23, align 4
  %.680 = load float, ptr %R22, align 4
  %fmul.23 = fmul float %.679, %.680
  %fadd.23 = fadd float %fmul.23, %fadd.22
  store float %fadd.23, ptr %R7, align 4
  br label %.L_x_13

.L_x_13:                                          ; preds = %.L_x_11_split_0x0570, %.L_x_11
  %UR4.3 = phi i32 [ %UR4.1, %.L_x_11 ], [ %.589, %.L_x_11_split_0x0570 ]
  %R6.3 = phi i32 [ %R6.1, %.L_x_11 ], [ %.626, %.L_x_11_split_0x0570 ]
  %UR5.3 = phi i32 [ %UR5.1, %.L_x_11 ], [ %add.6, %.L_x_11_split_0x0570 ]
  %R3.3 = phi i32 [ %R3.1, %.L_x_11 ], [ %add.10, %.L_x_11_split_0x0570 ]
  br i1 false, label %.L_x_9, label %.L_x_10.preheader

.L_x_10.preheader:                                ; preds = %.text._Z8fc_layerPfS_S_S_ii_split_0x0100, %.L_x_13
  %UR4.0.ph = phi i32 [ %UR4.3, %.L_x_13 ], [ %trunc32.1, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %R6.0.ph = phi i32 [ %R6.3, %.L_x_13 ], [ %.80, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %UR5.0.ph = phi i32 [ %UR5.3, %.L_x_13 ], [ %trunc32, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  %R3.0.ph = phi i32 [ %R3.3, %.L_x_13 ], [ %trunc32.2, %.text._Z8fc_layerPfS_S_S_ii_split_0x0100 ]
  br label %.L_x_10

.L_x_10:                                          ; preds = %.L_x_10.preheader, %.L_x_10
  %UR4.0 = phi i32 [ %.752, %.L_x_10 ], [ %UR4.0.ph, %.L_x_10.preheader ]
  %R6.0 = phi i32 [ %.746, %.L_x_10 ], [ %R6.0.ph, %.L_x_10.preheader ]
  %UR5.0 = phi i32 [ %add.14, %.L_x_10 ], [ %UR5.0.ph, %.L_x_10.preheader ]
  %R3.0 = phi i32 [ %add.18, %.L_x_10 ], [ %R3.0.ph, %.L_x_10.preheader ]
  %.697 = load i32, ptr %R2, align 4
  %zext.96 = zext i32 %.697 to i64
  %zext.97 = zext i32 %R3.0 to i64
  %shl.48 = shl nuw i64 %zext.97, 32
  %or.48 = or disjoint i64 %shl.48, %zext.96
  %inttoptr_bytes.48 = inttoptr i64 %or.48 to ptr addrspace(1)
  %.699 = load float, ptr addrspace(1) %inttoptr_bytes.48, align 4
  store float %.699, ptr %R8, align 4
  %zext.98 = zext i32 %UR4.0 to i64
  %zext.99 = zext i32 %UR5.0 to i64
  %shl.49 = shl nuw i64 %zext.99, 32
  %or.49 = or disjoint i64 %shl.49, %zext.98
  %inttoptr_bytes.49 = inttoptr i64 %or.49 to ptr addrspace(1)
  %.705 = load float, ptr addrspace(1) %inttoptr_bytes.49, align 4
  store float %.705, ptr %R9, align 4
  %.709 = load i32, ptr %R2, align 4
  %zext.100 = zext i32 %.709 to i64
  %zext.101 = zext i32 %R3.0 to i64
  %shl.50 = shl nuw i64 %zext.101, 32
  %or.50 = or disjoint i64 %shl.50, %zext.100
  %ptr_plus_imm.44 = add i64 %or.50, 4
  %inttoptr_bytes.50 = inttoptr i64 %ptr_plus_imm.44 to ptr addrspace(1)
  %.711 = load float, ptr addrspace(1) %inttoptr_bytes.50, align 4
  store float %.711, ptr %R11, align 4
  %zext.102 = zext i32 %UR4.0 to i64
  %zext.103 = zext i32 %UR5.0 to i64
  %shl.51 = shl nuw i64 %zext.103, 32
  %or.51 = or disjoint i64 %shl.51, %zext.102
  %ptr_plus_imm.45 = add i64 %or.51, 4
  %inttoptr_bytes.51 = inttoptr i64 %ptr_plus_imm.45 to ptr addrspace(1)
  %.717 = load float, ptr addrspace(1) %inttoptr_bytes.51, align 4
  store float %.717, ptr %R10, align 4
  %.721 = load i32, ptr %R2, align 4
  %zext.104 = zext i32 %.721 to i64
  %zext.105 = zext i32 %R3.0 to i64
  %shl.52 = shl nuw i64 %zext.105, 32
  %or.52 = or disjoint i64 %shl.52, %zext.104
  %ptr_plus_imm.46 = add i64 %or.52, 8
  %inttoptr_bytes.52 = inttoptr i64 %ptr_plus_imm.46 to ptr addrspace(1)
  %.723 = load float, ptr addrspace(1) %inttoptr_bytes.52, align 4
  store float %.723, ptr %R13, align 4
  %zext.106 = zext i32 %UR4.0 to i64
  %zext.107 = zext i32 %UR5.0 to i64
  %shl.53 = shl nuw i64 %zext.107, 32
  %or.53 = or disjoint i64 %shl.53, %zext.106
  %ptr_plus_imm.47 = add i64 %or.53, 8
  %inttoptr_bytes.53 = inttoptr i64 %ptr_plus_imm.47 to ptr addrspace(1)
  %.729 = load float, ptr addrspace(1) %inttoptr_bytes.53, align 4
  store float %.729, ptr %R12, align 4
  %.733 = load i32, ptr %R2, align 4
  %zext.108 = zext i32 %.733 to i64
  %zext.109 = zext i32 %R3.0 to i64
  %shl.54 = shl nuw i64 %zext.109, 32
  %or.54 = or disjoint i64 %shl.54, %zext.108
  %ptr_plus_imm.48 = add i64 %or.54, 12
  %inttoptr_bytes.54 = inttoptr i64 %ptr_plus_imm.48 to ptr addrspace(1)
  %.735 = load float, ptr addrspace(1) %inttoptr_bytes.54, align 4
  store float %.735, ptr %R15, align 4
  %zext.110 = zext i32 %UR4.0 to i64
  %zext.111 = zext i32 %UR5.0 to i64
  %shl.55 = shl nuw i64 %zext.111, 32
  %or.55 = or disjoint i64 %shl.55, %zext.110
  %ptr_plus_imm.49 = add i64 %or.55, 12
  %inttoptr_bytes.55 = inttoptr i64 %ptr_plus_imm.49 to ptr addrspace(1)
  %.741 = load float, ptr addrspace(1) %inttoptr_bytes.55, align 4
  store float %.741, ptr %R14, align 4
  %.746 = add i32 %R6.0, -4
  %.751 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %UR4.0, i32 16)
  %.752 = extractvalue { i32, i1 } %.751, 0
  %.753 = extractvalue { i32, i1 } %.751, 1
  %.761 = load i32, ptr %R5, align 4
  %.762 = add i32 %.761, 4
  store i32 %.762, ptr %R5, align 4
  %cmp.8.not = icmp eq i32 %.746, 0
  %.776 = zext i1 %.753 to i32
  %add.14 = add i32 %UR5.0, %.776
  %.780 = load float, ptr %R8, align 4
  %.781 = load float, ptr %R9, align 4
  %.782 = load float, ptr %R7, align 4
  %fmul.24 = fmul float %.780, %.781
  %fadd.24 = fadd float %fmul.24, %.782
  store float %fadd.24, ptr %R8, align 4
  %.786 = load i32, ptr %R2, align 4
  %.787 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.786, i32 16)
  %.788 = extractvalue { i32, i1 } %.787, 0
  %.789 = extractvalue { i32, i1 } %.787, 1
  store i32 %.788, ptr %R9, align 4
  store i32 %.788, ptr %R2, align 4
  %.800 = load float, ptr %R11, align 4
  %.801 = load float, ptr %R10, align 4
  %.802 = load float, ptr %R8, align 4
  %fmul.25 = fmul float %.800, %.801
  %fadd.25 = fadd float %fmul.25, %.802
  store float %fadd.25, ptr %R8, align 4
  %.809 = zext i1 %.789 to i32
  %add.18 = add i32 %R3.0, %.809
  store i32 %add.18, ptr %R10, align 4
  %.816 = load float, ptr %R13, align 4
  %.817 = load float, ptr %R12, align 4
  %fmul.26 = fmul float %.816, %.817
  %fadd.26 = fadd float %fmul.26, %fadd.25
  store float %fadd.26, ptr %R8, align 4
  %.822 = load float, ptr %R15, align 4
  %.823 = load float, ptr %R14, align 4
  %fmul.27 = fmul float %.822, %.823
  %fadd.27 = fadd float %fmul.27, %fadd.26
  store float %fadd.27, ptr %R7, align 4
  br i1 %cmp.8.not, label %.L_x_9.loopexit, label %.L_x_10

.L_x_9.loopexit:                                  ; preds = %.L_x_10
  br label %.L_x_9

.L_x_9:                                           ; preds = %.L_x_9.loopexit, %.L_x_13, %.text._Z8fc_layerPfS_S_S_ii_split_0x00a0
  %cmp.9.not = icmp eq i32 %.59, 0
  br i1 %cmp.9.not, label %.L_x_8, label %.L_x_9_split_0x0900

.L_x_9_split_0x0900:                              ; preds = %.L_x_9
  store i32 4, ptr %R8, align 4
  %.846 = load i32, ptr %R5, align 4
  %imad_mul.7 = mul i32 %imad_add, %Arg_4
  %imad_add.7 = add i32 %imad_mul.7, %.846
  store i32 %imad_add.7, ptr %R2, align 4
  %imad_ext1.1 = zext i32 %imad_add.7 to i64
  %imad_mul.8 = shl nuw nsw i64 %imad_ext1.1, 2
  %.851 = ptrtoint ptr %Arg_1 to i64
  %imad_add.8 = add i64 %imad_mul.8, %.851
  %.853 = lshr i64 %imad_add.8, 32
  %trunc32.4 = trunc nuw i64 %.853 to i32
  %trunc32.5 = trunc i64 %imad_add.8 to i32
  store i32 %trunc32.5, ptr %R2, align 4
  %.857 = load i32, ptr %R5, align 4
  %.858 = load i32, ptr %R8, align 4
  %imad_ext1.2 = zext i32 %.857 to i64
  %imad_ext2.2 = zext i32 %.858 to i64
  %imad_mul.9 = mul nuw i64 %imad_ext1.2, %imad_ext2.2
  %.859 = ptrtoint ptr %Arg_0 to i64
  %imad_add.9 = add i64 %imad_mul.9, %.859
  %.861 = lshr i64 %imad_add.9, 32
  %trunc32.6 = trunc nuw i64 %.861 to i32
  %trunc32.7 = trunc i64 %imad_add.9 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  store i32 %trunc32.6, ptr %R9, align 4
  %.865 = load i32, ptr %R2, align 4
  br label %.L_x_14

.L_x_14:                                          ; preds = %.L_x_14, %.L_x_9_split_0x0900
  %R6.4 = phi i32 [ %.865, %.L_x_9_split_0x0900 ], [ %.898, %.L_x_14 ]
  %R4.0 = phi i32 [ %.59, %.L_x_9_split_0x0900 ], [ %.885, %.L_x_14 ]
  %R3.4 = phi i32 [ %trunc32.4, %.L_x_9_split_0x0900 ], [ %add.22, %.L_x_14 ]
  store i32 %R6.4, ptr %R2, align 4
  %.872 = load i32, ptr %R8, align 4
  %zext.112 = zext i32 %.872 to i64
  %.873 = load i32, ptr %R9, align 4
  %zext.113 = zext i32 %.873 to i64
  %shl.56 = shl nuw i64 %zext.113, 32
  %or.56 = or disjoint i64 %shl.56, %zext.112
  %inttoptr_bytes.56 = inttoptr i64 %or.56 to ptr addrspace(1)
  %.874 = load float, ptr addrspace(1) %inttoptr_bytes.56, align 4
  store float %.874, ptr %R5, align 4
  %.878 = load i32, ptr %R2, align 4
  %zext.114 = zext i32 %.878 to i64
  %zext.115 = zext i32 %R3.4 to i64
  %shl.57 = shl nuw i64 %zext.115, 32
  %or.57 = or disjoint i64 %shl.57, %zext.114
  %inttoptr_bytes.57 = inttoptr i64 %or.57 to ptr addrspace(1)
  %.880 = load float, ptr addrspace(1) %inttoptr_bytes.57, align 4
  store float %.880, ptr %R2, align 4
  %.885 = add i32 %R4.0, -1
  %cmp.10.not = icmp eq i32 %.885, 0
  %.897 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %R6.4, i32 4)
  %.898 = extractvalue { i32, i1 } %.897, 0
  %.899 = extractvalue { i32, i1 } %.897, 1
  %.907 = load i32, ptr %R8, align 4
  %.908 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.907, i32 4)
  %.909 = extractvalue { i32, i1 } %.908, 0
  %.910 = extractvalue { i32, i1 } %.908, 1
  store i32 %.909, ptr %R8, align 4
  %.921 = zext i1 %.899 to i32
  %add.22 = add i32 %R3.4, %.921
  %.925 = load i32, ptr %R9, align 4
  %.928 = zext i1 %.910 to i32
  %add.26 = add i32 %.925, %.928
  store i32 %add.26, ptr %R9, align 4
  %.932 = load float, ptr %R2, align 4
  %.933 = load float, ptr %R5, align 4
  %.934 = load float, ptr %R7, align 4
  %fmul.28 = fmul float %.932, %.933
  %fadd.28 = fadd float %fmul.28, %.934
  store float %fadd.28, ptr %R7, align 4
  br i1 %cmp.10.not, label %.L_x_8.loopexit, label %.L_x_14

.L_x_8.loopexit:                                  ; preds = %.L_x_14
  br label %.L_x_8

.L_x_8:                                           ; preds = %.L_x_8.loopexit, %.L_x_9, %.text._Z8fc_layerPfS_S_S_ii_split_0x0060
  store i32 4, ptr %R5, align 4
  %imad_ext1.3 = zext i32 %imad_add to i64
  %imad_mul.11 = shl nuw nsw i64 %imad_ext1.3, 2
  %.946 = ptrtoint ptr %Arg_2 to i64
  %imad_add.11 = add i64 %imad_mul.11, %.946
  %trunc32.9 = trunc i64 %imad_add.11 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  %inttoptr_bytes.58 = inttoptr i64 %imad_add.11 to ptr addrspace(1)
  %.954 = load float, ptr addrspace(1) %inttoptr_bytes.58, align 4
  store float %.954, ptr %R2, align 4
  %.959 = load i32, ptr %R5, align 4
  %imad_ext1.4 = zext i32 %imad_add to i64
  %imad_ext2.4 = zext i32 %.959 to i64
  %imad_mul.12 = mul nuw i64 %imad_ext1.4, %imad_ext2.4
  %.960 = ptrtoint ptr %Arg_3 to i64
  %imad_add.12 = add i64 %imad_mul.12, %.960
  %.962 = lshr i64 %imad_add.12, 32
  %trunc32.10 = trunc nuw i64 %.962 to i32
  store i32 %trunc32.10, ptr %R5, align 4
  %.966 = load float, ptr %R2, align 4
  %.967 = load float, ptr %R7, align 4
  %fadd.29 = fadd float %.966, %.967
  store float %fadd.29, ptr %R7, align 4
  %inttoptr_bytes.59 = inttoptr i64 %imad_add.12 to ptr addrspace(1)
  store float %fadd.29, ptr addrspace(1) %inttoptr_bytes.59, align 4
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
  %iabs = tail call i32 @llvm.abs.i32(i32 %Arg_3, i1 false)
  %nvvm_ctaid_y = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  store i32 %iabs, ptr %R0, align 4
  %nvvm_ctaid_z = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.z()
  %.41.cast = bitcast i32 %iabs to float
  %.42 = fdiv float 1.000000e+00, %.41.cast
  store float %.42, ptr %R0, align 4
  %.46.cast = bitcast float %.42 to i32
  %.47 = add i32 %.46.cast, 268435454
  %.51.cast = bitcast i32 %.47 to float
  %.55 = tail call i1 @llvm.is.fpclass.f32(float %.51.cast, i32 144)
  %0 = fptoui float %.51.cast to i32
  %.57 = select i1 %.55, i32 0, i32 %0
  store i32 0, ptr %R2, align 4
  %1 = mul i32 %.57, %iabs
  %imad_mul.3 = sub i32 0, %1
  %iabs.1 = tail call i32 @llvm.abs.i32(i32 %Arg_2, i1 false)
  store i32 %iabs.1, ptr %R4, align 4
  %imad_ext1 = zext i32 %.57 to i64
  %imad_ext2 = zext i32 %imad_mul.3 to i64
  %imad_mul.4 = mul nuw i64 %imad_ext1, %imad_ext2
  %imad_hi_shift = lshr i64 %imad_mul.4, 32
  %nvvm_ctaid_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  store i32 %nvvm_ctaid_x, ptr %R2, align 4
  %.82 = load i32, ptr %R4, align 4
  %imad_ext2.1 = zext i32 %.82 to i64
  %imad_mul.5 = mul nuw i64 %imad_hi_shift, %imad_ext2.1
  %imad_hi_shift.1 = lshr i64 %imad_mul.5, 32
  %imad_hi_trunc.1 = trunc nuw i64 %imad_hi_shift.1 to i32
  %nvvm_threadidx_x = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %.88 = sub i32 0, %imad_hi_trunc.1
  store i32 %.88, ptr %R0, align 4
  %.93 = load i32, ptr %R4, align 4
  %imad_mul.7 = mul i32 %iabs, %.88
  %imad_add.7 = add i32 %imad_mul.7, %.93
  store i32 %imad_add.7, ptr %R0, align 4
  %cmp.1 = icmp sgt i32 %iabs, %imad_add.7
  br i1 %cmp.1, label %.text._Z10max_pool2dPfS_iii_split_0x0180, label %.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160

.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160: ; preds = %Entry_.text._Z10max_pool2dPfS_iii
  %.108 = load i32, ptr %R0, align 4
  %.111 = sub i32 %.108, %iabs
  store i32 %.111, ptr %R0, align 4
  %.122 = add i32 %imad_hi_trunc.1, 1
  br label %.text._Z10max_pool2dPfS_iii_split_0x0180

.text._Z10max_pool2dPfS_iii_split_0x0180:         ; preds = %Entry_.text._Z10max_pool2dPfS_iii, %.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160
  %R3.0 = phi i32 [ %.122, %.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160 ], [ %imad_hi_trunc.1, %Entry_.text._Z10max_pool2dPfS_iii ]
  %.128 = load i32, ptr %R0, align 4
  %cmp.2.not = icmp sge i32 %.128, %iabs
  %.136 = load i32, ptr %R2, align 4
  %nvvm_blockdim_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul.8 = mul i32 %.136, %nvvm_blockdim_x
  %imad_add.8 = add i32 %imad_mul.8, %nvvm_threadidx_x
  store i32 %imad_add.8, ptr %R0, align 4
  %nvvm_threadidx_y = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %cmp.3.not = icmp eq i32 %Arg_3, 0
  %.153 = zext i1 %cmp.2.not to i32
  %R3.1 = add i32 %R3.0, %.153
  %spec.select = select i1 %cmp.3.not, i32 -1, i32 %R3.1
  %nvvm_blockdim_y = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %imad_mul.11 = mul i32 %nvvm_ctaid_y, %nvvm_blockdim_y
  %imad_add.11 = add i32 %imad_mul.11, %nvvm_threadidx_y
  %.186 = load i32, ptr %R0, align 4
  %cmp.4 = icmp sge i32 %.186, %spec.select
  %cmp.5 = icmp sge i32 %imad_add.11, %spec.select
  %.198 = or i1 %cmp.5, %cmp.4
  %cmp.6 = icmp sge i32 %nvvm_ctaid_z, %Arg_4
  %.205 = or i1 %cmp.6, %.198
  br i1 %.205, label %ExitFunction, label %.text._Z10max_pool2dPfS_iii_split_0x0250

.text._Z10max_pool2dPfS_iii_split_0x0250:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0180
  store i32 -8388608, ptr %R11, align 4
  %cmp.7 = icmp slt i32 %Arg_3, 1
  br i1 %cmp.7, label %.L_x_16, label %.text._Z10max_pool2dPfS_iii_split_0x0290

.text._Z10max_pool2dPfS_iii_split_0x0290:         ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0250
  %imad_mul.13 = mul i32 %nvvm_ctaid_z, %Arg_2
  %.234 = add nsw i32 %Arg_3, -1
  store i32 %.234, ptr %R2, align 4
  %.238 = load i32, ptr %R0, align 4
  %imad_mul.14 = mul i32 %.238, %Arg_3
  %.243 = and i32 %Arg_3, 3
  %imad_mul.15 = mul i32 %imad_add.11, %Arg_3
  %imad_add.15 = add i32 %imad_mul.15, %imad_mul.13
  %cmp.8 = icmp slt i32 %Arg_3, 4
  store i32 -8388608, ptr %R11, align 4
  %.261 = sub nsw i32 %.243, %Arg_3
  %imad_mul.18 = mul i32 %imad_add.15, %Arg_2
  %imad_add.18 = add i32 %imad_mul.18, %imad_mul.14
  br label %.L_x_20

.L_x_20:                                          ; preds = %.L_x_19, %.text._Z10max_pool2dPfS_iii_split_0x0290
  %R16.0 = phi i32 [ 0, %.text._Z10max_pool2dPfS_iii_split_0x0290 ], [ %.560, %.L_x_19 ]
  %cmp.9.not = icmp eq i32 %.243, 0
  br i1 %cmp.8, label %.L_x_17, label %.L_x_20_split_0x0360

.L_x_20_split_0x0360:                             ; preds = %.L_x_20
  %imad_add.19 = add i32 %imad_add.18, %R16.0
  br label %.L_x_18

.L_x_18:                                          ; preds = %.L_x_18, %.L_x_20_split_0x0360
  %UR4.1 = phi i32 [ 0, %.L_x_20_split_0x0360 ], [ %.350, %.L_x_18 ]
  %R17.0 = phi i32 [ %imad_add.19, %.L_x_20_split_0x0360 ], [ %imad_add.25, %.L_x_18 ]
  store i32 4, ptr %R2, align 4
  %imad_ext1.2 = zext i32 %R17.0 to i64
  %imad_mul.21 = shl nuw nsw i64 %imad_ext1.2, 2
  %.298 = ptrtoint ptr %Arg_0 to i64
  %imad_add.21 = add i64 %imad_mul.21, %.298
  %.300 = and i64 %imad_add.21, -4294967296
  %trunc32.1 = trunc i64 %imad_add.21 to i32
  store i32 %trunc32.1, ptr %R2, align 4
  %imad_ext1.3 = zext i32 %Arg_2 to i64
  %imad_mul.22 = shl nuw nsw i64 %imad_ext1.3, 2
  %imad_ext3.2 = and i64 %imad_add.21, 4294967295
  %imad_add.22 = add nuw nsw i64 %imad_mul.22, %imad_ext3.2
  %.307 = and i64 %imad_add.22, 30064771072
  %trunc32.3 = trunc i64 %imad_add.22 to i32
  store i32 %trunc32.3, ptr %R4, align 4
  %.311 = load i32, ptr %R2, align 4
  %zext = zext i32 %.311 to i64
  %or = or disjoint i64 %.300, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %.313 = load float, ptr addrspace(1) %inttoptr_bytes, align 4
  store float %.313, ptr %R2, align 4
  %.318 = load i32, ptr %R4, align 4
  %imad_ext1.4 = zext i32 %Arg_2 to i64
  %imad_mul.23 = shl nuw nsw i64 %imad_ext1.4, 2
  %imad_ext3.3 = zext i32 %.318 to i64
  %imad_add.23 = add nuw nsw i64 %imad_mul.23, %imad_ext3.3
  %.320 = and i64 %imad_add.23, 30064771072
  %trunc32.5 = trunc i64 %imad_add.23 to i32
  store i32 %trunc32.5, ptr %R6, align 4
  %.324 = load i32, ptr %R4, align 4
  %zext.2 = zext i32 %.324 to i64
  %or.1 = or disjoint i64 %.307, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %.326 = load float, ptr addrspace(1) %inttoptr_bytes.1, align 4
  store float %.326, ptr %R4, align 4
  %.331 = load i32, ptr %R6, align 4
  %imad_ext1.5 = zext i32 %Arg_2 to i64
  %imad_mul.24 = shl nuw nsw i64 %imad_ext1.5, 2
  %imad_ext3.4 = zext i32 %.331 to i64
  %imad_add.24 = add nuw nsw i64 %imad_mul.24, %imad_ext3.4
  %.333 = and i64 %imad_add.24, 30064771072
  %trunc32.7 = trunc i64 %imad_add.24 to i32
  store i32 %trunc32.7, ptr %R8, align 4
  %.337 = load i32, ptr %R6, align 4
  %zext.4 = zext i32 %.337 to i64
  %or.2 = or disjoint i64 %.320, %zext.4
  %inttoptr_bytes.2 = inttoptr i64 %or.2 to ptr addrspace(1)
  %.339 = load float, ptr addrspace(1) %inttoptr_bytes.2, align 4
  store float %.339, ptr %R6, align 4
  %.343 = load i32, ptr %R8, align 4
  %zext.6 = zext i32 %.343 to i64
  %or.3 = or disjoint i64 %.333, %zext.6
  %inttoptr_bytes.3 = inttoptr i64 %or.3 to ptr addrspace(1)
  %.345 = load float, ptr addrspace(1) %inttoptr_bytes.3, align 4
  store float %.345, ptr %R8, align 4
  %.350 = add i32 %UR4.1, 4
  %.356 = sub nuw nsw i32 -4, %UR4.1
  %cmp.10.not = icmp eq i32 %.261, %.356
  %imad_mul.25 = shl i32 %Arg_2, 2
  %imad_add.25 = add i32 %imad_mul.25, %R17.0
  %.371 = load float, ptr %R2, align 4
  %.372 = load float, ptr %R11, align 4
  %.375 = fcmp ogt float %.371, %.372
  %mnmx_max = select i1 %.375, float %.371, float %.372
  store float %mnmx_max, ptr %R11, align 4
  %.380 = load float, ptr %R4, align 4
  %.383 = fcmp ogt float %mnmx_max, %.380
  %mnmx_max.1 = select i1 %.383, float %mnmx_max, float %.380
  store float %mnmx_max.1, ptr %R11, align 4
  %.388 = load float, ptr %R6, align 4
  %.391 = fcmp ogt float %mnmx_max.1, %.388
  %mnmx_max.2 = select i1 %.391, float %mnmx_max.1, float %.388
  store float %mnmx_max.2, ptr %R11, align 4
  %.396 = load float, ptr %R8, align 4
  %.399 = fcmp ogt float %mnmx_max.2, %.396
  %mnmx_max.3 = select i1 %.399, float %mnmx_max.2, float %.396
  store float %mnmx_max.3, ptr %R11, align 4
  br i1 %cmp.10.not, label %.L_x_17.loopexit, label %.L_x_18

.L_x_17.loopexit:                                 ; preds = %.L_x_18
  br label %.L_x_17

.L_x_17:                                          ; preds = %.L_x_17.loopexit, %.L_x_20
  %UR4.0 = phi i32 [ 0, %.L_x_20 ], [ %.350, %.L_x_17.loopexit ]
  %imad_add.26 = add i32 %imad_mul.14, %R16.0
  store i32 %imad_add.26, ptr %R4, align 4
  br i1 %cmp.9.not, label %.L_x_19, label %.L_x_17_split_0x04d0

.L_x_17_split_0x04d0:                             ; preds = %.L_x_17
  %.417 = add i32 %imad_add.15, %UR4.0
  %.424 = load i32, ptr %R4, align 4
  %imad_mul.27 = mul i32 %.417, %Arg_2
  %imad_add.27 = add i32 %imad_mul.27, %.424
  store i32 %imad_add.27, ptr %R2, align 4
  %imad_ext1.6 = zext i32 %imad_add.27 to i64
  %imad_mul.28 = shl nuw nsw i64 %imad_ext1.6, 2
  %.429 = ptrtoint ptr %Arg_0 to i64
  %imad_add.28 = add i64 %imad_mul.28, %.429
  %trunc32.9 = trunc i64 %imad_add.28 to i32
  store i32 %trunc32.9, ptr %R2, align 4
  %inttoptr_bytes.4 = inttoptr i64 %imad_add.28 to ptr addrspace(1)
  %.437 = load float, ptr addrspace(1) %inttoptr_bytes.4, align 4
  store float %.437, ptr %R2, align 4
  %cmp.11.not = icmp eq i32 %.243, 1
  %.448 = load float, ptr %R11, align 4
  %.452 = fcmp ogt float %.448, %.437
  %mnmx_max.4 = select i1 %.452, float %.448, float %.437
  store float %mnmx_max.4, ptr %R11, align 4
  br i1 %cmp.11.not, label %.L_x_19, label %.L_x_17_split_0x0550

.L_x_17_split_0x0550:                             ; preds = %.L_x_17_split_0x04d0
  %cmp.12.not = icmp eq i32 %.243, 2
  %.468 = add i32 %.417, 1
  store i32 %.468, ptr %R2, align 4
  %.473 = load i32, ptr %R4, align 4
  %imad_mul.29 = mul i32 %.468, %Arg_2
  %imad_add.29 = add i32 %imad_mul.29, %.473
  store i32 %imad_add.29, ptr %R2, align 4
  br i1 %cmp.12.not, label %.L_x_17_split_0x05a0, label %.L_x_17_split_0x0590_conditionalExpr_0x0590

.L_x_17_split_0x0590_conditionalExpr_0x0590:      ; preds = %.L_x_17_split_0x0550
  %.481 = add i32 %.417, 2
  %.492 = load i32, ptr %R4, align 4
  %imad_mul.30 = mul i32 %.481, %Arg_2
  %imad_add.30 = add i32 %imad_mul.30, %.492
  store i32 %imad_add.30, ptr %R4, align 4
  br label %.L_x_17_split_0x05a0

.L_x_17_split_0x05a0:                             ; preds = %.L_x_17_split_0x0590_conditionalExpr_0x0590, %.L_x_17_split_0x0550
  %.497 = load i32, ptr %R2, align 4
  %imad_ext1.7 = zext i32 %.497 to i64
  %imad_mul.31 = shl nuw nsw i64 %imad_ext1.7, 2
  %.499 = ptrtoint ptr %Arg_0 to i64
  %imad_add.31 = add i64 %imad_mul.31, %.499
  %.501 = and i64 %imad_add.31, -4294967296
  %trunc32.11 = trunc i64 %imad_add.31 to i32
  store i32 %trunc32.11, ptr %R2, align 4
  br i1 %cmp.12.not, label %.L_x_17_split_0x05c0, label %.L_x_17_split_0x05a0_conditionalExpr_0x05b0

.L_x_17_split_0x05a0_conditionalExpr_0x05b0:      ; preds = %.L_x_17_split_0x05a0
  %.509 = load i32, ptr %R4, align 4
  %imad_ext1.8 = zext i32 %.509 to i64
  %imad_mul.32 = shl nuw nsw i64 %imad_ext1.8, 2
  %.511 = ptrtoint ptr %Arg_0 to i64
  %imad_add.32 = add i64 %imad_mul.32, %.511
  %.513 = lshr i64 %imad_add.32, 32
  %trunc32.12 = trunc nuw i64 %.513 to i32
  %trunc32.13 = trunc i64 %imad_add.32 to i32
  store i32 %trunc32.13, ptr %R4, align 4
  br label %.L_x_17_split_0x05c0

.L_x_17_split_0x05c0:                             ; preds = %.L_x_17_split_0x05a0_conditionalExpr_0x05b0, %.L_x_17_split_0x05a0
  %R5.0 = phi i32 [ %trunc32.12, %.L_x_17_split_0x05a0_conditionalExpr_0x05b0 ], [ %.417, %.L_x_17_split_0x05a0 ]
  %.519 = load i32, ptr %R2, align 4
  %zext.10 = zext i32 %.519 to i64
  %or.5 = or disjoint i64 %.501, %zext.10
  %inttoptr_bytes.5 = inttoptr i64 %or.5 to ptr addrspace(1)
  %.521 = load float, ptr addrspace(1) %inttoptr_bytes.5, align 4
  store float %.521, ptr %R2, align 4
  br i1 %cmp.12.not, label %.L_x_17_split_0x05e0, label %.L_x_17_split_0x05c0_conditionalExpr_0x05d0

.L_x_17_split_0x05c0_conditionalExpr_0x05d0:      ; preds = %.L_x_17_split_0x05c0
  %.529 = load i32, ptr %R4, align 4
  %zext.12 = zext i32 %.529 to i64
  %zext.13 = zext i32 %R5.0 to i64
  %shl.6 = shl nuw i64 %zext.13, 32
  %or.6 = or disjoint i64 %shl.6, %zext.12
  %inttoptr_bytes.6 = inttoptr i64 %or.6 to ptr addrspace(1)
  %.531 = load float, ptr addrspace(1) %inttoptr_bytes.6, align 4
  store float %.531, ptr %R4, align 4
  br label %.L_x_17_split_0x05e0

.L_x_17_split_0x05e0:                             ; preds = %.L_x_17_split_0x05c0_conditionalExpr_0x05d0, %.L_x_17_split_0x05c0
  %.537 = load float, ptr %R11, align 4
  %.538 = load float, ptr %R2, align 4
  %.541 = fcmp ogt float %.537, %.538
  %mnmx_max.5 = select i1 %.541, float %.537, float %.538
  store float %mnmx_max.5, ptr %R11, align 4
  br i1 %cmp.12.not, label %.L_x_19, label %.L_x_17_split_0x05e0_conditionalExpr_0x05f0

.L_x_17_split_0x05e0_conditionalExpr_0x05f0:      ; preds = %.L_x_17_split_0x05e0
  %.549 = load float, ptr %R11, align 4
  %.550 = load float, ptr %R4, align 4
  %.553 = fcmp ogt float %.549, %.550
  %mnmx_max.6 = select i1 %.553, float %.549, float %.550
  store float %mnmx_max.6, ptr %R11, align 4
  br label %.L_x_19

.L_x_19:                                          ; preds = %.L_x_17_split_0x05e0_conditionalExpr_0x05f0, %.L_x_17_split_0x05e0, %.L_x_17_split_0x04d0, %.L_x_17
  %.560 = add i32 %R16.0, 1
  %cmp.13.not = icmp slt i32 %.560, %Arg_3
  br i1 %cmp.13.not, label %.L_x_20, label %.L_x_16.loopexit

.L_x_16.loopexit:                                 ; preds = %.L_x_19
  br label %.L_x_16

.L_x_16:                                          ; preds = %.L_x_16.loopexit, %.text._Z10max_pool2dPfS_iii_split_0x0250
  %imad_mul.33 = mul i32 %spec.select, %nvvm_ctaid_z
  %imad_add.33 = add i32 %imad_mul.33, %imad_add.11
  store i32 4, ptr %R2, align 4
  %.584 = load i32, ptr %R0, align 4
  %imad_mul.35 = mul i32 %spec.select, %imad_add.33
  %imad_add.35 = add i32 %imad_mul.35, %.584
  %imad_ext1.9 = zext i32 %imad_add.35 to i64
  %imad_mul.36 = shl nuw nsw i64 %imad_ext1.9, 2
  %.589 = ptrtoint ptr %Arg_1 to i64
  %imad_add.36 = add i64 %imad_mul.36, %.589
  %trunc32.15 = trunc i64 %imad_add.36 to i32
  store i32 %trunc32.15, ptr %R2, align 4
  %.595 = load i32, ptr %R11, align 4
  %inttoptr_bytes.7 = inttoptr i64 %imad_add.36 to ptr addrspace(1)
  store i32 %.595, ptr addrspace(1) %inttoptr_bytes.7, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %.text._Z10max_pool2dPfS_iii_split_0x0180, %.L_x_16
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
  %nvvm_ctaid_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_blockdim_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_x
  %cmp.not = icmp slt i32 %imad_add, %Arg_2
  br i1 %cmp.not, label %.text._Z4reluPfS_i_split_0x0060, label %ExitFunction

.text._Z4reluPfS_i_split_0x0060:                  ; preds = %Entry_.text._Z4reluPfS_i
  %imad_ext1 = zext i32 %imad_add to i64
  %imad_mul.1 = shl nuw nsw i64 %imad_ext1, 2
  %.37 = ptrtoint ptr %Arg_0 to i64
  %imad_add.1 = add i64 %imad_mul.1, %.37
  %trunc32.1 = trunc i64 %imad_add.1 to i32
  store i32 %trunc32.1, ptr %R2, align 4
  %inttoptr_bytes = inttoptr i64 %imad_add.1 to ptr addrspace(1)
  %.45 = load float, ptr addrspace(1) %inttoptr_bytes, align 4
  store float %.45, ptr %R2, align 4
  %imad_ext1.1 = zext i32 %imad_add to i64
  %imad_mul.2 = shl nuw nsw i64 %imad_ext1.1, 2
  %.51 = ptrtoint ptr %Arg_1 to i64
  %imad_add.2 = add i64 %imad_mul.2, %.51
  %.57 = load float, ptr %R2, align 4
  %.60 = fcmp olt float %.57, 0.000000e+00
  %mnmx_max = select i1 %.60, float 0.000000e+00, float %.57
  %inttoptr_bytes.1 = inttoptr i64 %imad_add.2 to ptr addrspace(1)
  store float %mnmx_max, ptr addrspace(1) %inttoptr_bytes.1, align 4
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
  %nvvm_ctaid_y = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  %nvvm_threadidx_y = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %nvvm_ctaid_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_ctaid_z = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.z()
  %nvvm_blockdim_y = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %imad_mul = mul i32 %nvvm_ctaid_y, %nvvm_blockdim_y
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_y
  %nvvm_blockdim_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul.1 = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add.1 = add i32 %imad_mul.1, %nvvm_threadidx_x
  %cmp.2.not = icmp slt i32 %nvvm_ctaid_z, %Arg_6
  br i1 %cmp.2.not, label %.text._Z6conv2dPfS_S_iiii_split_0x00e0, label %ExitFunction

.text._Z6conv2dPfS_S_iiii_split_0x00e0:           ; preds = %Entry_.text._Z6conv2dPfS_S_iiii
  store i32 0, ptr %R12, align 4
  %cmp.3 = icmp sgt i32 %Arg_4, 0
  %cmp.4 = icmp slt i32 %Arg_5, 1
  %.86 = or i1 %cmp.4, %cmp.3
  br i1 %.86, label %.L_x_23, label %.text._Z6conv2dPfS_S_iiii_split_0x0130

.text._Z6conv2dPfS_S_iiii_split_0x0130:           ; preds = %.text._Z6conv2dPfS_S_iiii_split_0x00e0
  store float 0.000000e+00, ptr %R12, align 4
  %.105 = add i32 %Arg_4, -1
  %.111 = and i32 %Arg_4, 3
  %cmp.5 = icmp slt i32 %.105, 3
  %.123 = sub i32 %.111, %Arg_4
  br label %.L_x_28

.L_x_28:                                          ; preds = %.L_x_26_split_0x0610, %.text._Z6conv2dPfS_S_iiii_split_0x0130
  %R10.0 = phi i32 [ 0, %.text._Z6conv2dPfS_S_iiii_split_0x0130 ], [ %.139, %.L_x_26_split_0x0610 ]
  %imad_mul.5 = mul i32 %R10.0, %Arg_3
  %imad_add.5 = add i32 %imad_mul.5, %imad_add
  %imad_mul.6 = mul i32 %nvvm_ctaid_z, %Arg_5
  %imad_add.6 = add i32 %imad_mul.6, %R10.0
  %.139 = add i32 %R10.0, 1
  %imad_mul.7 = mul i32 %imad_add.5, %Arg_3
  %imad_add.7 = add i32 %imad_mul.7, %imad_add.1
  %cmp.6.not = icmp slt i32 %.139, %Arg_5
  br label %.L_x_27

.L_x_27:                                          ; preds = %.L_x_26, %.L_x_28
  %R8.0 = phi i32 [ 0, %.L_x_28 ], [ %.530, %.L_x_26 ]
  %imad_mul.8 = mul i32 %imad_add.6, %Arg_4
  %imad_add.8 = add i32 %imad_mul.8, %R8.0
  store i32 %imad_add.8, ptr %R6, align 4
  %cmp.7.not = icmp eq i32 %.111, 0
  %imad_mul.9 = mul i32 %imad_add.8, %Arg_4
  br i1 %cmp.5, label %.L_x_24, label %.L_x_27_split_0x0260

.L_x_27_split_0x0260:                             ; preds = %.L_x_27
  %imad_add.10 = add i32 %imad_add.7, %R8.0
  store i32 %imad_add.10, ptr %R13, align 4
  %imad_ext1 = zext i32 %imad_mul.9 to i64
  %imad_mul.11 = shl nuw nsw i64 %imad_ext1, 2
  %.185 = ptrtoint ptr %Arg_1 to i64
  %imad_add.11 = add i64 %imad_mul.11, %.185
  %.187 = lshr i64 %imad_add.11, 32
  %trunc32 = trunc nuw i64 %.187 to i32
  %trunc32.1 = trunc i64 %imad_add.11 to i32
  store i32 %trunc32.1, ptr %R6, align 4
  store i32 %trunc32.1, ptr %R23, align 4
  br label %.L_x_25

.L_x_25:                                          ; preds = %.L_x_25, %.L_x_27_split_0x0260
  %R7.0 = phi i32 [ %trunc32, %.L_x_27_split_0x0260 ], [ %add.3, %.L_x_25 ]
  %UR4.1 = phi i32 [ 0, %.L_x_27_split_0x0260 ], [ %.278, %.L_x_25 ]
  %.195 = load i32, ptr %R13, align 4
  %imad_ext1.1 = zext i32 %.195 to i64
  %imad_mul.12 = shl nuw nsw i64 %imad_ext1.1, 2
  %.197 = ptrtoint ptr %Arg_0 to i64
  %imad_add.12 = add i64 %imad_mul.12, %.197
  %.199 = and i64 %imad_add.12, -4294967296
  %trunc32.3 = trunc i64 %imad_add.12 to i32
  store i32 %trunc32.3, ptr %R14, align 4
  %.205 = load i32, ptr %R23, align 4
  store i32 %.205, ptr %R6, align 4
  %imad_ext1.2 = zext i32 %Arg_3 to i64
  %imad_mul.14 = shl nuw nsw i64 %imad_ext1.2, 2
  %imad_ext3 = and i64 %imad_add.12, 4294967295
  %imad_add.14 = add nuw nsw i64 %imad_mul.14, %imad_ext3
  %.211 = and i64 %imad_add.14, 30064771072
  %trunc32.5 = trunc i64 %imad_add.14 to i32
  store i32 %trunc32.5, ptr %R16, align 4
  %.215 = load i32, ptr %R14, align 4
  %zext = zext i32 %.215 to i64
  %or = or disjoint i64 %.199, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %.217 = load float, ptr addrspace(1) %inttoptr_bytes, align 4
  store float %.217, ptr %R14, align 4
  %.221 = load i32, ptr %R6, align 4
  %zext.2 = zext i32 %.221 to i64
  %zext.3 = zext i32 %R7.0 to i64
  %shl.1 = shl nuw i64 %zext.3, 32
  %or.1 = or disjoint i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %.223 = load float, ptr addrspace(1) %inttoptr_bytes.1, align 4
  store float %.223, ptr %R23, align 4
  %.228 = load i32, ptr %R16, align 4
  %imad_ext1.3 = zext i32 %Arg_3 to i64
  %imad_mul.15 = shl nuw nsw i64 %imad_ext1.3, 2
  %imad_ext3.1 = zext i32 %.228 to i64
  %imad_add.15 = add nuw nsw i64 %imad_mul.15, %imad_ext3.1
  %.230 = lshr i64 %imad_add.15, 32
  %trunc32.6 = trunc nuw nsw i64 %.230 to i32
  %trunc32.7 = trunc i64 %imad_add.15 to i32
  store i32 %trunc32.7, ptr %R18, align 4
  store i32 %trunc32.6, ptr %R19, align 4
  %.234 = load i32, ptr %R16, align 4
  %zext.4 = zext i32 %.234 to i64
  %or.2 = or disjoint i64 %.211, %zext.4
  %inttoptr_bytes.2 = inttoptr i64 %or.2 to ptr addrspace(1)
  %.236 = load float, ptr addrspace(1) %inttoptr_bytes.2, align 4
  store float %.236, ptr %R16, align 4
  %.241 = load i32, ptr %R18, align 4
  %imad_ext1.4 = zext i32 %Arg_3 to i64
  %imad_mul.16 = shl nuw nsw i64 %imad_ext1.4, 2
  %imad_ext3.2 = zext i32 %.241 to i64
  %imad_add.16 = add nuw nsw i64 %imad_mul.16, %imad_ext3.2
  %.243 = and i64 %imad_add.16, 30064771072
  %trunc32.9 = trunc i64 %imad_add.16 to i32
  store i32 %trunc32.9, ptr %R20, align 4
  %.247 = load i32, ptr %R6, align 4
  %zext.6 = zext i32 %.247 to i64
  %zext.7 = zext i32 %R7.0 to i64
  %shl.3 = shl nuw i64 %zext.7, 32
  %or.3 = or disjoint i64 %shl.3, %zext.6
  %ptr_plus_imm = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %.249 = load float, ptr addrspace(1) %inttoptr_bytes.3, align 4
  store float %.249, ptr %R22, align 4
  %.253 = load i32, ptr %R18, align 4
  %zext.8 = zext i32 %.253 to i64
  %.254 = load i32, ptr %R19, align 4
  %zext.9 = zext i32 %.254 to i64
  %shl.4 = shl nuw i64 %zext.9, 32
  %or.4 = or disjoint i64 %shl.4, %zext.8
  %inttoptr_bytes.4 = inttoptr i64 %or.4 to ptr addrspace(1)
  %.255 = load float, ptr addrspace(1) %inttoptr_bytes.4, align 4
  store float %.255, ptr %R18, align 4
  %.259 = load i32, ptr %R6, align 4
  %zext.10 = zext i32 %.259 to i64
  %zext.11 = zext i32 %R7.0 to i64
  %shl.5 = shl nuw i64 %zext.11, 32
  %or.5 = or disjoint i64 %shl.5, %zext.10
  %ptr_plus_imm.1 = add i64 %or.5, 8
  %inttoptr_bytes.5 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %.261 = load float, ptr addrspace(1) %inttoptr_bytes.5, align 4
  store float %.261, ptr %R25, align 4
  %.265 = load i32, ptr %R20, align 4
  %zext.12 = zext i32 %.265 to i64
  %or.6 = or disjoint i64 %.243, %zext.12
  %inttoptr_bytes.6 = inttoptr i64 %or.6 to ptr addrspace(1)
  %.267 = load float, ptr addrspace(1) %inttoptr_bytes.6, align 4
  store float %.267, ptr %R20, align 4
  %.271 = load i32, ptr %R6, align 4
  %zext.14 = zext i32 %.271 to i64
  %zext.15 = zext i32 %R7.0 to i64
  %shl.7 = shl nuw i64 %zext.15, 32
  %or.7 = or disjoint i64 %shl.7, %zext.14
  %ptr_plus_imm.2 = add i64 %or.7, 12
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %.273 = load float, ptr addrspace(1) %inttoptr_bytes.7, align 4
  store float %.273, ptr %R27, align 4
  %.278 = add i32 %UR4.1, 4
  %.283 = load i32, ptr %R13, align 4
  %shl.8 = shl i32 %Arg_3, 2
  %add = add i32 %shl.8, %.283
  store i32 %add, ptr %R13, align 4
  %.286 = load float, ptr %R23, align 4
  %.287 = load float, ptr %R14, align 4
  %.288 = load float, ptr %R12, align 4
  %fmul = fmul float %.286, %.287
  %fadd = fadd float %fmul, %.288
  store float %fadd, ptr %R23, align 4
  %.294 = add i32 %.123, %.278
  store i32 %.294, ptr %R12, align 4
  %cmp.8.not = icmp eq i32 %.294, 0
  %.305 = load float, ptr %R22, align 4
  %.306 = load float, ptr %R16, align 4
  %fmul.1 = fmul float %.305, %.306
  %fadd.1 = fadd float %fmul.1, %fadd
  store float %fadd.1, ptr %R22, align 4
  %.311 = load i32, ptr %R6, align 4
  %.312 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.311, i32 16)
  %.313 = extractvalue { i32, i1 } %.312, 0
  %.314 = extractvalue { i32, i1 } %.312, 1
  store i32 %.313, ptr %R23, align 4
  %.322 = load float, ptr %R25, align 4
  %.323 = load float, ptr %R18, align 4
  %.324 = load float, ptr %R22, align 4
  %fmul.2 = fmul float %.322, %.323
  %fadd.2 = fadd float %fmul.2, %.324
  store float %fadd.2, ptr %R22, align 4
  %.331 = zext i1 %.314 to i32
  %add.3 = add i32 %R7.0, %.331
  %.335 = load float, ptr %R27, align 4
  %.336 = load float, ptr %R20, align 4
  %fmul.3 = fmul float %.335, %.336
  %fadd.3 = fadd float %fmul.3, %fadd.2
  store float %fadd.3, ptr %R12, align 4
  br i1 %cmp.8.not, label %.L_x_24.loopexit, label %.L_x_25

.L_x_24.loopexit:                                 ; preds = %.L_x_25
  br label %.L_x_24

.L_x_24:                                          ; preds = %.L_x_24.loopexit, %.L_x_27
  %UR4.0 = phi i32 [ 0, %.L_x_27 ], [ %.278, %.L_x_24.loopexit ]
  %imad_add.17 = add i32 %imad_add.1, %R8.0
  store i32 %imad_add.17, ptr %R14, align 4
  br i1 %cmp.7.not, label %.L_x_26, label %.L_x_24_split_0x0460

.L_x_24_split_0x0460:                             ; preds = %.L_x_24
  %.355 = add i32 %imad_add.5, %UR4.0
  %.361 = add i32 %imad_mul.9, %UR4.0
  store i32 %.361, ptr %R16, align 4
  store i32 4, ptr %R19, align 4
  %.368 = load i32, ptr %R14, align 4
  %imad_mul.18 = mul i32 %.355, %Arg_3
  %imad_add.18 = add i32 %imad_mul.18, %.368
  store i32 %imad_add.18, ptr %R6, align 4
  %imad_ext1.5 = zext i32 %.361 to i64
  %imad_mul.19 = shl nuw nsw i64 %imad_ext1.5, 2
  %.373 = ptrtoint ptr %Arg_1 to i64
  %imad_add.19 = add i64 %imad_mul.19, %.373
  %.375 = and i64 %imad_add.19, -4294967296
  %trunc32.11 = trunc i64 %imad_add.19 to i32
  store i32 %trunc32.11, ptr %R16, align 4
  %.379 = load i32, ptr %R6, align 4
  %.380 = load i32, ptr %R19, align 4
  %imad_ext1.6 = zext i32 %.379 to i64
  %imad_ext2.6 = zext i32 %.380 to i64
  %imad_mul.20 = mul nuw i64 %imad_ext1.6, %imad_ext2.6
  %.381 = ptrtoint ptr %Arg_0 to i64
  %imad_add.20 = add i64 %imad_mul.20, %.381
  %trunc32.13 = trunc i64 %imad_add.20 to i32
  store i32 %trunc32.13, ptr %R6, align 4
  %.387 = load i32, ptr %R16, align 4
  %zext.16 = zext i32 %.387 to i64
  %shl.9 = and i64 %imad_add.19, -4294967296
  %or.8 = or disjoint i64 %shl.9, %zext.16
  %inttoptr_bytes.8 = inttoptr i64 %or.8 to ptr addrspace(1)
  %.389 = load float, ptr addrspace(1) %inttoptr_bytes.8, align 4
  store float %.389, ptr %R13, align 4
  %.393 = load i32, ptr %R6, align 4
  %zext.18 = zext i32 %.393 to i64
  %shl.10 = and i64 %imad_add.20, -4294967296
  %or.9 = or disjoint i64 %shl.10, %zext.18
  %inttoptr_bytes.9 = inttoptr i64 %or.9 to ptr addrspace(1)
  %.395 = load float, ptr addrspace(1) %inttoptr_bytes.9, align 4
  store float %.395, ptr %R6, align 4
  %cmp.9.not = icmp eq i32 %.111, 1
  %.406 = load float, ptr %R13, align 4
  %.408 = load float, ptr %R12, align 4
  %fmul.4 = fmul float %.406, %.395
  %fadd.4 = fadd float %fmul.4, %.408
  store float %fadd.4, ptr %R12, align 4
  br i1 %cmp.9.not, label %.L_x_26, label %.L_x_24_split_0x0510

.L_x_24_split_0x0510:                             ; preds = %.L_x_24_split_0x0460
  %cmp.10.not = icmp eq i32 %.111, 2
  %.423 = load i32, ptr %R16, align 4
  %zext.20 = zext i32 %.423 to i64
  %shl.11 = and i64 %imad_add.19, -4294967296
  %or.10 = or disjoint i64 %shl.11, %zext.20
  %ptr_plus_imm.3 = add i64 %or.10, 4
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %.425 = load float, ptr addrspace(1) %inttoptr_bytes.10, align 4
  store float %.425, ptr %R13, align 4
  %.430 = add i32 %.355, 1
  store i32 %.430, ptr %R6, align 4
  %.435 = load i32, ptr %R14, align 4
  %imad_mul.21 = mul i32 %.430, %Arg_3
  %imad_add.21 = add i32 %imad_mul.21, %.435
  store i32 %imad_add.21, ptr %R6, align 4
  br i1 %cmp.10.not, label %.L_x_24_split_0x0570, label %.L_x_24_split_0x0560_conditionalExpr_0x0560

.L_x_24_split_0x0560_conditionalExpr_0x0560:      ; preds = %.L_x_24_split_0x0510
  %.443 = add i32 %.355, 2
  %.454 = load i32, ptr %R14, align 4
  %imad_mul.22 = mul i32 %.443, %Arg_3
  %imad_add.22 = add i32 %imad_mul.22, %.454
  store i32 %imad_add.22, ptr %R14, align 4
  br label %.L_x_24_split_0x0570

.L_x_24_split_0x0570:                             ; preds = %.L_x_24_split_0x0560_conditionalExpr_0x0560, %.L_x_24_split_0x0510
  %.459 = load i32, ptr %R6, align 4
  %.460 = load i32, ptr %R19, align 4
  %imad_ext1.7 = zext i32 %.459 to i64
  %imad_ext2.7 = zext i32 %.460 to i64
  %imad_mul.23 = mul nuw i64 %imad_ext1.7, %imad_ext2.7
  %.461 = ptrtoint ptr %Arg_0 to i64
  %imad_add.23 = add i64 %imad_mul.23, %.461
  %.463 = and i64 %imad_add.23, -4294967296
  %trunc32.15 = trunc i64 %imad_add.23 to i32
  store i32 %trunc32.15, ptr %R6, align 4
  br i1 %cmp.10.not, label %.L_x_24_split_0x0590, label %.L_x_24_split_0x0570_conditionalExpr_0x0580

.L_x_24_split_0x0570_conditionalExpr_0x0580:      ; preds = %.L_x_24_split_0x0570
  %.471 = load i32, ptr %R14, align 4
  %.472 = load i32, ptr %R19, align 4
  %imad_ext1.8 = zext i32 %.471 to i64
  %imad_ext2.8 = zext i32 %.472 to i64
  %imad_mul.24 = mul nuw i64 %imad_ext1.8, %imad_ext2.8
  %.473 = ptrtoint ptr %Arg_0 to i64
  %imad_add.24 = add i64 %imad_mul.24, %.473
  %.475 = lshr i64 %imad_add.24, 32
  %trunc32.16 = trunc nuw i64 %.475 to i32
  %trunc32.17 = trunc i64 %imad_add.24 to i32
  store i32 %trunc32.17, ptr %R14, align 4
  br label %.L_x_24_split_0x0590

.L_x_24_split_0x0590:                             ; preds = %.L_x_24_split_0x0570_conditionalExpr_0x0580, %.L_x_24_split_0x0570
  %R15.0 = phi i32 [ %trunc32.16, %.L_x_24_split_0x0570_conditionalExpr_0x0580 ], [ %.355, %.L_x_24_split_0x0570 ]
  br i1 %cmp.10.not, label %.L_x_24_split_0x05a0, label %.L_x_24_split_0x0590_conditionalExpr_0x0590

.L_x_24_split_0x0590_conditionalExpr_0x0590:      ; preds = %.L_x_24_split_0x0590
  %.485 = load i32, ptr %R16, align 4
  %zext.22 = zext i32 %.485 to i64
  %or.11 = or disjoint i64 %.375, %zext.22
  %ptr_plus_imm.4 = add i64 %or.11, 8
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %.487 = load float, ptr addrspace(1) %inttoptr_bytes.11, align 4
  store float %.487, ptr %R19, align 4
  br label %.L_x_24_split_0x05a0

.L_x_24_split_0x05a0:                             ; preds = %.L_x_24_split_0x0590_conditionalExpr_0x0590, %.L_x_24_split_0x0590
  %.493 = load i32, ptr %R6, align 4
  %zext.24 = zext i32 %.493 to i64
  %or.12 = or disjoint i64 %.463, %zext.24
  %inttoptr_bytes.12 = inttoptr i64 %or.12 to ptr addrspace(1)
  %.495 = load float, ptr addrspace(1) %inttoptr_bytes.12, align 4
  store float %.495, ptr %R6, align 4
  br i1 %cmp.10.not, label %.L_x_24_split_0x05c0, label %.L_x_24_split_0x05a0_conditionalExpr_0x05b0

.L_x_24_split_0x05a0_conditionalExpr_0x05b0:      ; preds = %.L_x_24_split_0x05a0
  %.503 = load i32, ptr %R14, align 4
  %zext.26 = zext i32 %.503 to i64
  %zext.27 = zext i32 %R15.0 to i64
  %shl.14 = shl nuw i64 %zext.27, 32
  %or.13 = or disjoint i64 %shl.14, %zext.26
  %inttoptr_bytes.13 = inttoptr i64 %or.13 to ptr addrspace(1)
  %.505 = load float, ptr addrspace(1) %inttoptr_bytes.13, align 4
  store float %.505, ptr %R14, align 4
  br label %.L_x_24_split_0x05c0

.L_x_24_split_0x05c0:                             ; preds = %.L_x_24_split_0x05a0_conditionalExpr_0x05b0, %.L_x_24_split_0x05a0
  %.511 = load float, ptr %R13, align 4
  %.512 = load float, ptr %R6, align 4
  %.513 = load float, ptr %R12, align 4
  %fmul.5 = fmul float %.511, %.512
  %fadd.5 = fadd float %fmul.5, %.513
  store float %fadd.5, ptr %R12, align 4
  br i1 %cmp.10.not, label %.L_x_26, label %.L_x_24_split_0x05c0_conditionalExpr_0x05d0

.L_x_24_split_0x05c0_conditionalExpr_0x05d0:      ; preds = %.L_x_24_split_0x05c0
  %.521 = load float, ptr %R19, align 4
  %.522 = load float, ptr %R14, align 4
  %.523 = load float, ptr %R12, align 4
  %fmul.6 = fmul float %.521, %.522
  %fadd.6 = fadd float %fmul.6, %.523
  store float %fadd.6, ptr %R12, align 4
  br label %.L_x_26

.L_x_26:                                          ; preds = %.L_x_24_split_0x05c0_conditionalExpr_0x05d0, %.L_x_24_split_0x05c0, %.L_x_24_split_0x0460, %.L_x_24
  %.530 = add i32 %R8.0, 1
  %cmp.11.not = icmp slt i32 %.530, %Arg_4
  br i1 %cmp.11.not, label %.L_x_27, label %.L_x_26_split_0x0610

.L_x_26_split_0x0610:                             ; preds = %.L_x_26
  br i1 %cmp.6.not, label %.L_x_28, label %.L_x_23.loopexit

.L_x_23.loopexit:                                 ; preds = %.L_x_26_split_0x0610
  br label %.L_x_23

.L_x_23:                                          ; preds = %.L_x_23.loopexit, %.text._Z6conv2dPfS_S_iiii_split_0x00e0
  %imad_ext1.9 = zext i32 %imad_add.1 to i64
  %imad_mul.27 = shl nuw nsw i64 %imad_ext1.9, 2
  %.568 = ptrtoint ptr %Arg_2 to i64
  %imad_add.27 = add i64 %imad_mul.27, %.568
  %.574 = load i32, ptr %R12, align 4
  %inttoptr_bytes.14 = inttoptr i64 %imad_add.27 to ptr addrspace(1)
  store i32 %.574, ptr addrspace(1) %inttoptr_bytes.14, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z6conv2dPfS_S_iiii, %.L_x_23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
