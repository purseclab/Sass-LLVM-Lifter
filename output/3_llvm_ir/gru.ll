; ModuleID = '/app/launch/../output/3_llvm_ir/gru_raw.ll'
source_filename = "/app/launch/../output/3_llvm_ir/gru_raw.ll"
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

define ptx_kernel void @_Z11gru_forwardPfS_S_S_iii(ptr %Arg_0, ptr %Arg_1, ptr %Arg_2, ptr %Arg_3, i32 %Arg_4, i32 %Arg_5, i32 %Arg_6) {
Entry_.text._Z11gru_forwardPfS_S_S_iii:
  %R14 = alloca i32, align 4
  %R15 = alloca i32, align 4
  %R5 = alloca i32, align 4
  %R4 = alloca i32, align 4
  %R6 = alloca i32, align 4
  %R7 = alloca i32, align 4
  %R8 = alloca i32, align 4
  %R52 = alloca i32, align 4
  %R54 = alloca i32, align 4
  %R11 = alloca i32, align 4
  %R9 = alloca i32, align 4
  %R25 = alloca i32, align 4
  %R18 = alloca i32, align 4
  %R23 = alloca i32, align 4
  %R38 = alloca i32, align 4
  %R16 = alloca i32, align 4
  %R20 = alloca i32, align 4
  %R57 = alloca i32, align 4
  %R56 = alloca i32, align 4
  %R58 = alloca i32, align 4
  %R24 = alloca i32, align 4
  %R47 = alloca i32, align 4
  %R49 = alloca i32, align 4
  %R22 = alloca i32, align 4
  %R43 = alloca i32, align 4
  %R45 = alloca i32, align 4
  %R13 = alloca i32, align 4
  %R41 = alloca i32, align 4
  %R51 = alloca i32, align 4
  %R35 = alloca i32, align 4
  %R40 = alloca i32, align 4
  %R37 = alloca i32, align 4
  %R12 = alloca i32, align 4
  %R34 = alloca i32, align 4
  %R10 = alloca i32, align 4
  %R36 = alloca i32, align 4
  %R17 = alloca i32, align 4
  %R19 = alloca i32, align 4
  %R21 = alloca i32, align 4
  %R42 = alloca i32, align 4
  %R44 = alloca i32, align 4
  %R46 = alloca i32, align 4
  %R48 = alloca i32, align 4
  %R50 = alloca i32, align 4
  %R53 = alloca i32, align 4
  %R59 = alloca i32, align 4
  %R55 = alloca i32, align 4
  %R61 = alloca i32, align 4
  %R60 = alloca i32, align 4
  %R39 = alloca i32, align 4
  %nvvm_ctaid_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %cmp = icmp sgt i32 %Arg_6, 0
  %nvvm_blockdim_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_x
  store i32 %imad_add, ptr %R14, align 4
  %cmp.1 = icmp sge i32 %imad_add, %Arg_5
  %.36 = or i1 %cmp.1, %cmp
  br i1 %.36, label %ExitFunction, label %.text._Z11gru_forwardPfS_S_S_iii_split_0x0080

.text._Z11gru_forwardPfS_S_S_iii_split_0x0080:    ; preds = %Entry_.text._Z11gru_forwardPfS_S_S_iii
  %cmp.2 = icmp sgt i32 %Arg_4, 0
  %.52 = load i32, ptr %R14, align 4
  %imad_mul.1 = mul i32 %.52, %Arg_5
  store i32 %Arg_4, ptr %R15, align 4
  %imad_ext1 = zext i32 %.52 to i64
  %imad_mul.2 = shl nuw nsw i64 %imad_ext1, 2
  %.63 = ptrtoint ptr %Arg_3 to i64
  %imad_add.2 = add i64 %imad_mul.2, %.63
  %.70 = load i32, ptr %R14, align 4
  %shl = shl i32 %Arg_5, 1
  %add = add i32 %shl, %.70
  store i32 %Arg_5, ptr %R5, align 4
  %imad_ext1.1 = zext i32 %.70 to i64
  %imad_mul.3 = shl nuw nsw i64 %imad_ext1.1, 2
  %.77 = ptrtoint ptr %Arg_1 to i64
  %imad_add.3 = add i64 %imad_mul.3, %.77
  %.83 = load i32, ptr %R15, align 4
  %add.1 = mul i32 %.83, 5
  %imad_ext1.2 = zext i32 %add to i64
  %imad_mul.4 = shl nuw nsw i64 %imad_ext1.2, 2
  %.89 = ptrtoint ptr %Arg_3 to i64
  %imad_add.4 = add i64 %imad_mul.4, %.89
  %.95 = load i32, ptr %R5, align 4
  %imad_mul.5 = mul i32 %.95, %Arg_4
  %imad_mul.616 = add i32 %add.1, %.52
  %imad_add.6 = mul i32 %imad_mul.616, %Arg_5
  %imad_ext2.3 = zext i32 %Arg_5 to i64
  %imad_mul.7 = shl nuw nsw i64 %imad_ext2.3, 2
  %imad_ext3 = and i64 %imad_add.2, 4294967295
  %imad_add.7 = add nuw nsw i64 %imad_mul.7, %imad_ext3
  br i1 %cmp.2, label %.L_x_0, label %.text._Z11gru_forwardPfS_S_S_iii_split_0x0170

.text._Z11gru_forwardPfS_S_S_iii_split_0x0170:    ; preds = %.text._Z11gru_forwardPfS_S_S_iii_split_0x0080
  %.113 = load i32, ptr %R5, align 4
  %.115 = and i32 %.113, 3
  store i32 %.115, ptr %R4, align 4
  %.119 = add i32 %.113, -1
  store i32 %.119, ptr %R5, align 4
  store i32 0, ptr %R6, align 4
  %.127 = sub i32 %Arg_5, %.115
  store i32 %.127, ptr %R7, align 4
  br label %.L_x_22

.L_x_22:                                          ; preds = %.L_x_19, %.text._Z11gru_forwardPfS_S_S_iii_split_0x0170
  store i32 %Arg_5, ptr %R8, align 4
  %.134 = load i32, ptr %R6, align 4
  %.135 = add i32 %.134, 1
  store i32 %.135, ptr %R6, align 4
  %cmp.3 = icmp slt i32 %Arg_5, 1
  %cmp.4.not = icmp slt i32 %.135, %Arg_6
  store float 0.000000e+00, ptr %R8, align 4
  store float 0.000000e+00, ptr %R52, align 4
  store float 0.000000e+00, ptr %R54, align 4
  br i1 %cmp.3, label %.L_x_1, label %.L_x_22_split_0x0230

.L_x_22_split_0x0230:                             ; preds = %.L_x_22
  %.166 = load i32, ptr %R5, align 4
  %cmp.5 = icmp slt i32 %.166, 3
  store float 0.000000e+00, ptr %R54, align 4
  store i32 0, ptr %R11, align 4
  store float 0.000000e+00, ptr %R52, align 4
  br i1 %cmp.5, label %.L_x_2, label %.L_x_22_split_0x0280

.L_x_22_split_0x0280:                             ; preds = %.L_x_22_split_0x0230
  %.185 = load i32, ptr %R7, align 4
  %cmp.6 = icmp sgt i32 %.185, 0
  store float 0.000000e+00, ptr %R54, align 4
  store i32 0, ptr %R11, align 4
  store i32 %.185, ptr %R9, align 4
  br i1 %cmp.6, label %.L_x_22_split_0x02d0, label %.L_x_3.preheader

.L_x_22_split_0x02d0:                             ; preds = %.L_x_22_split_0x0280
  %.204 = load i32, ptr %R9, align 4
  %cmp.7 = icmp slt i32 %.204, 13
  br i1 %cmp.7, label %.L_x_4, label %.L_x_22_split_0x0300

.L_x_22_split_0x0300:                             ; preds = %.L_x_22_split_0x02d0
  br label %.L_x_5

.L_x_5:                                           ; preds = %.L_x_5, %.L_x_22_split_0x0300
  %.224 = load i32, ptr %R11, align 4
  %.225 = add i32 %imad_mul.1, %.224
  store i32 %.225, ptr %R25, align 4
  store i32 4, ptr %R18, align 4
  %imad_mul.8 = mul i32 %imad_mul.5, 3
  %imad_add.8 = add i32 %imad_mul.8, %.225
  store i32 %imad_add.8, ptr %R23, align 4
  %shl.2 = shl i32 %imad_mul.5, 2
  %add.2 = add i32 %shl.2, %.225
  store i32 %add.2, ptr %R25, align 4
  %.239 = load i32, ptr %R11, align 4
  %.240 = load i32, ptr %R18, align 4
  %imad_ext1.4 = zext i32 %.239 to i64
  %imad_ext2.4 = zext i32 %.240 to i64
  %imad_mul.9 = mul nuw i64 %imad_ext1.4, %imad_ext2.4
  %.241 = ptrtoint ptr %Arg_1 to i64
  %imad_add.9 = add i64 %imad_mul.9, %.241
  %.243 = lshr i64 %imad_add.9, 32
  %trunc32.8 = trunc nuw i64 %.243 to i32
  %trunc32.9 = trunc i64 %imad_add.9 to i32
  store i32 %trunc32.9, ptr %R38, align 4
  store i32 %trunc32.8, ptr %R39, align 4
  %.247 = load i32, ptr %R23, align 4
  %.248 = load i32, ptr %R18, align 4
  %imad_ext1.5 = zext i32 %.247 to i64
  %imad_ext2.5 = zext i32 %.248 to i64
  %imad_mul.10 = mul nuw i64 %imad_ext1.5, %imad_ext2.5
  %.249 = ptrtoint ptr %Arg_2 to i64
  %imad_add.10 = add i64 %imad_mul.10, %.249
  %.251 = lshr i64 %imad_add.10, 32
  %trunc32.10 = trunc nuw i64 %.251 to i32
  %trunc32.11 = trunc i64 %imad_add.10 to i32
  store i32 %trunc32.11, ptr %R16, align 4
  store i32 %trunc32.10, ptr %R17, align 4
  %.255 = load i32, ptr %R25, align 4
  %.256 = load i32, ptr %R18, align 4
  %imad_ext1.6 = zext i32 %.255 to i64
  %imad_ext2.6 = zext i32 %.256 to i64
  %imad_mul.11 = mul nuw i64 %imad_ext1.6, %imad_ext2.6
  %.257 = ptrtoint ptr %Arg_2 to i64
  %imad_add.11 = add i64 %imad_mul.11, %.257
  %.259 = lshr i64 %imad_add.11, 32
  %trunc32.12 = trunc nuw i64 %.259 to i32
  %trunc32.13 = trunc i64 %imad_add.11 to i32
  store i32 %trunc32.13, ptr %R20, align 4
  store i32 %trunc32.12, ptr %R21, align 4
  %.263 = load i32, ptr %R38, align 4
  %zext = zext i32 %.263 to i64
  %.264 = load i32, ptr %R39, align 4
  %zext.1 = zext i32 %.264 to i64
  %shl.3 = shl nuw i64 %zext.1, 32
  %or = or disjoint i64 %shl.3, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %.265 = load float, ptr addrspace(1) %inttoptr_bytes, align 4
  store float %.265, ptr %R57, align 4
  %.269 = load i32, ptr %R16, align 4
  %zext.2 = zext i32 %.269 to i64
  %.270 = load i32, ptr %R17, align 4
  %zext.3 = zext i32 %.270 to i64
  %shl.4 = shl nuw i64 %zext.3, 32
  %or.1 = or disjoint i64 %shl.4, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %.271 = load float, ptr addrspace(1) %inttoptr_bytes.1, align 4
  store float %.271, ptr %R56, align 4
  %.275 = load i32, ptr %R20, align 4
  %zext.4 = zext i32 %.275 to i64
  %.276 = load i32, ptr %R21, align 4
  %zext.5 = zext i32 %.276 to i64
  %shl.5 = shl nuw i64 %zext.5, 32
  %or.2 = or disjoint i64 %shl.5, %zext.4
  %inttoptr_bytes.2 = inttoptr i64 %or.2 to ptr addrspace(1)
  %.277 = load float, ptr addrspace(1) %inttoptr_bytes.2, align 4
  store float %.277, ptr %R58, align 4
  %.281 = load i32, ptr %R38, align 4
  %zext.6 = zext i32 %.281 to i64
  %.282 = load i32, ptr %R39, align 4
  %zext.7 = zext i32 %.282 to i64
  %shl.6 = shl nuw i64 %zext.7, 32
  %or.3 = or disjoint i64 %shl.6, %zext.6
  %ptr_plus_imm = add i64 %or.3, 4
  %inttoptr_bytes.3 = inttoptr i64 %ptr_plus_imm to ptr addrspace(1)
  %.283 = load float, ptr addrspace(1) %inttoptr_bytes.3, align 4
  store float %.283, ptr %R24, align 4
  %.287 = load i32, ptr %R16, align 4
  %zext.8 = zext i32 %.287 to i64
  %.288 = load i32, ptr %R17, align 4
  %zext.9 = zext i32 %.288 to i64
  %shl.7 = shl nuw i64 %zext.9, 32
  %or.4 = or disjoint i64 %shl.7, %zext.8
  %ptr_plus_imm.1 = add i64 %or.4, 4
  %inttoptr_bytes.4 = inttoptr i64 %ptr_plus_imm.1 to ptr addrspace(1)
  %.289 = load float, ptr addrspace(1) %inttoptr_bytes.4, align 4
  store float %.289, ptr %R47, align 4
  %.293 = load i32, ptr %R20, align 4
  %zext.10 = zext i32 %.293 to i64
  %.294 = load i32, ptr %R21, align 4
  %zext.11 = zext i32 %.294 to i64
  %shl.8 = shl nuw i64 %zext.11, 32
  %or.5 = or disjoint i64 %shl.8, %zext.10
  %ptr_plus_imm.2 = add i64 %or.5, 4
  %inttoptr_bytes.5 = inttoptr i64 %ptr_plus_imm.2 to ptr addrspace(1)
  %.295 = load float, ptr addrspace(1) %inttoptr_bytes.5, align 4
  store float %.295, ptr %R49, align 4
  %.299 = load i32, ptr %R38, align 4
  %zext.12 = zext i32 %.299 to i64
  %.300 = load i32, ptr %R39, align 4
  %zext.13 = zext i32 %.300 to i64
  %shl.9 = shl nuw i64 %zext.13, 32
  %or.6 = or disjoint i64 %shl.9, %zext.12
  %ptr_plus_imm.3 = add i64 %or.6, 8
  %inttoptr_bytes.6 = inttoptr i64 %ptr_plus_imm.3 to ptr addrspace(1)
  %.301 = load float, ptr addrspace(1) %inttoptr_bytes.6, align 4
  store float %.301, ptr %R22, align 4
  %.305 = load i32, ptr %R16, align 4
  %zext.14 = zext i32 %.305 to i64
  %.306 = load i32, ptr %R17, align 4
  %zext.15 = zext i32 %.306 to i64
  %shl.10 = shl nuw i64 %zext.15, 32
  %or.7 = or disjoint i64 %shl.10, %zext.14
  %ptr_plus_imm.4 = add i64 %or.7, 8
  %inttoptr_bytes.7 = inttoptr i64 %ptr_plus_imm.4 to ptr addrspace(1)
  %.307 = load float, ptr addrspace(1) %inttoptr_bytes.7, align 4
  store float %.307, ptr %R43, align 4
  %.311 = load i32, ptr %R20, align 4
  %zext.16 = zext i32 %.311 to i64
  %.312 = load i32, ptr %R21, align 4
  %zext.17 = zext i32 %.312 to i64
  %shl.11 = shl nuw i64 %zext.17, 32
  %or.8 = or disjoint i64 %shl.11, %zext.16
  %ptr_plus_imm.5 = add i64 %or.8, 8
  %inttoptr_bytes.8 = inttoptr i64 %ptr_plus_imm.5 to ptr addrspace(1)
  %.313 = load float, ptr addrspace(1) %inttoptr_bytes.8, align 4
  store float %.313, ptr %R45, align 4
  %.317 = load i32, ptr %R38, align 4
  %zext.18 = zext i32 %.317 to i64
  %.318 = load i32, ptr %R39, align 4
  %zext.19 = zext i32 %.318 to i64
  %shl.12 = shl nuw i64 %zext.19, 32
  %or.9 = or disjoint i64 %shl.12, %zext.18
  %ptr_plus_imm.6 = add i64 %or.9, 12
  %inttoptr_bytes.9 = inttoptr i64 %ptr_plus_imm.6 to ptr addrspace(1)
  %.319 = load float, ptr addrspace(1) %inttoptr_bytes.9, align 4
  store float %.319, ptr %R15, align 4
  %.323 = load i32, ptr %R16, align 4
  %zext.20 = zext i32 %.323 to i64
  %.324 = load i32, ptr %R17, align 4
  %zext.21 = zext i32 %.324 to i64
  %shl.13 = shl nuw i64 %zext.21, 32
  %or.10 = or disjoint i64 %shl.13, %zext.20
  %ptr_plus_imm.7 = add i64 %or.10, 12
  %inttoptr_bytes.10 = inttoptr i64 %ptr_plus_imm.7 to ptr addrspace(1)
  %.325 = load float, ptr addrspace(1) %inttoptr_bytes.10, align 4
  store float %.325, ptr %R14, align 4
  %.329 = load i32, ptr %R20, align 4
  %zext.22 = zext i32 %.329 to i64
  %.330 = load i32, ptr %R21, align 4
  %zext.23 = zext i32 %.330 to i64
  %shl.14 = shl nuw i64 %zext.23, 32
  %or.11 = or disjoint i64 %shl.14, %zext.22
  %ptr_plus_imm.8 = add i64 %or.11, 12
  %inttoptr_bytes.11 = inttoptr i64 %ptr_plus_imm.8 to ptr addrspace(1)
  %.331 = load float, ptr addrspace(1) %inttoptr_bytes.11, align 4
  store float %.331, ptr %R13, align 4
  %.335 = load i32, ptr %R11, align 4
  %.336 = add i32 %.335, 4
  store i32 %.336, ptr %R41, align 4
  %.340 = load i32, ptr %R23, align 4
  %.341 = add i32 %.340, 4
  store i32 %.341, ptr %R51, align 4
  %.346 = add i32 %.335, 8
  store i32 %.346, ptr %R35, align 4
  %.351 = load i32, ptr %R18, align 4
  %imad_ext1.7 = zext i32 %.336 to i64
  %imad_ext2.7 = zext i32 %.351 to i64
  %imad_mul.12 = mul nuw i64 %imad_ext1.7, %imad_ext2.7
  %.352 = ptrtoint ptr %Arg_1 to i64
  %imad_add.12 = add i64 %imad_mul.12, %.352
  %.354 = lshr i64 %imad_add.12, 32
  %trunc32.14 = trunc nuw i64 %.354 to i32
  %trunc32.15 = trunc i64 %imad_add.12 to i32
  store i32 %trunc32.15, ptr %R40, align 4
  store i32 %trunc32.14, ptr %R41, align 4
  %.358 = load i32, ptr %R11, align 4
  %.359 = add i32 %.358, 12
  store i32 %.359, ptr %R37, align 4
  %.363 = load i32, ptr %R51, align 4
  %.364 = load i32, ptr %R18, align 4
  %imad_ext1.8 = zext i32 %.363 to i64
  %imad_ext2.8 = zext i32 %.364 to i64
  %imad_mul.13 = mul nuw i64 %imad_ext1.8, %imad_ext2.8
  %.365 = ptrtoint ptr %Arg_2 to i64
  %imad_add.13 = add i64 %imad_mul.13, %.365
  %.367 = lshr i64 %imad_add.13, 32
  %trunc32.16 = trunc nuw i64 %.367 to i32
  %trunc32.17 = trunc i64 %imad_add.13 to i32
  store i32 %trunc32.17, ptr %R38, align 4
  store i32 %trunc32.16, ptr %R39, align 4
  %.371 = load i32, ptr %R25, align 4
  %.372 = add i32 %.371, 4
  store i32 %.372, ptr %R51, align 4
  %.376 = load i32, ptr %R40, align 4
  %zext.24 = zext i32 %.376 to i64
  %.377 = load i32, ptr %R41, align 4
  %zext.25 = zext i32 %.377 to i64
  %shl.15 = shl nuw i64 %zext.25, 32
  %or.12 = or disjoint i64 %shl.15, %zext.24
  %inttoptr_bytes.12 = inttoptr i64 %or.12 to ptr addrspace(1)
  %.378 = load float, ptr addrspace(1) %inttoptr_bytes.12, align 4
  store float %.378, ptr %R12, align 4
  %.382 = load i32, ptr %R35, align 4
  %.383 = load i32, ptr %R18, align 4
  %imad_ext1.9 = zext i32 %.382 to i64
  %imad_ext2.9 = zext i32 %.383 to i64
  %imad_mul.14 = mul nuw i64 %imad_ext1.9, %imad_ext2.9
  %.384 = ptrtoint ptr %Arg_1 to i64
  %imad_add.14 = add i64 %imad_mul.14, %.384
  %.386 = lshr i64 %imad_add.14, 32
  %trunc32.18 = trunc nuw i64 %.386 to i32
  %trunc32.19 = trunc i64 %imad_add.14 to i32
  store i32 %trunc32.19, ptr %R34, align 4
  store i32 %trunc32.18, ptr %R35, align 4
  %.390 = load i32, ptr %R40, align 4
  %zext.26 = zext i32 %.390 to i64
  %.391 = load i32, ptr %R41, align 4
  %zext.27 = zext i32 %.391 to i64
  %shl.16 = shl nuw i64 %zext.27, 32
  %or.13 = or disjoint i64 %shl.16, %zext.26
  %ptr_plus_imm.9 = add i64 %or.13, 4
  %inttoptr_bytes.13 = inttoptr i64 %ptr_plus_imm.9 to ptr addrspace(1)
  %.392 = load float, ptr addrspace(1) %inttoptr_bytes.13, align 4
  store float %.392, ptr %R10, align 4
  %.396 = load i32, ptr %R37, align 4
  %.397 = load i32, ptr %R18, align 4
  %imad_ext1.10 = zext i32 %.396 to i64
  %imad_ext2.10 = zext i32 %.397 to i64
  %imad_mul.15 = mul nuw i64 %imad_ext1.10, %imad_ext2.10
  %.398 = ptrtoint ptr %Arg_1 to i64
  %imad_add.15 = add i64 %imad_mul.15, %.398
  %.400 = lshr i64 %imad_add.15, 32
  %trunc32.20 = trunc nuw i64 %.400 to i32
  %trunc32.21 = trunc i64 %imad_add.15 to i32
  store i32 %trunc32.21, ptr %R36, align 4
  store i32 %trunc32.20, ptr %R37, align 4
  %.404 = load i32, ptr %R40, align 4
  %zext.28 = zext i32 %.404 to i64
  %.405 = load i32, ptr %R41, align 4
  %zext.29 = zext i32 %.405 to i64
  %shl.17 = shl nuw i64 %zext.29, 32
  %or.14 = or disjoint i64 %shl.17, %zext.28
  %ptr_plus_imm.10 = add i64 %or.14, 8
  %inttoptr_bytes.14 = inttoptr i64 %ptr_plus_imm.10 to ptr addrspace(1)
  %.406 = load float, ptr addrspace(1) %inttoptr_bytes.14, align 4
  store float %.406, ptr %R16, align 4
  %.410 = load i32, ptr %R40, align 4
  %zext.30 = zext i32 %.410 to i64
  %.411 = load i32, ptr %R41, align 4
  %zext.31 = zext i32 %.411 to i64
  %shl.18 = shl nuw i64 %zext.31, 32
  %or.15 = or disjoint i64 %shl.18, %zext.30
  %ptr_plus_imm.11 = add i64 %or.15, 12
  %inttoptr_bytes.15 = inttoptr i64 %ptr_plus_imm.11 to ptr addrspace(1)
  %.412 = load float, ptr addrspace(1) %inttoptr_bytes.15, align 4
  store float %.412, ptr %R17, align 4
  %.416 = load i32, ptr %R34, align 4
  %zext.32 = zext i32 %.416 to i64
  %.417 = load i32, ptr %R35, align 4
  %zext.33 = zext i32 %.417 to i64
  %shl.19 = shl nuw i64 %zext.33, 32
  %or.16 = or disjoint i64 %shl.19, %zext.32
  %inttoptr_bytes.16 = inttoptr i64 %or.16 to ptr addrspace(1)
  %.418 = load float, ptr addrspace(1) %inttoptr_bytes.16, align 4
  store float %.418, ptr %R19, align 4
  %.422 = load i32, ptr %R34, align 4
  %zext.34 = zext i32 %.422 to i64
  %.423 = load i32, ptr %R35, align 4
  %zext.35 = zext i32 %.423 to i64
  %shl.20 = shl nuw i64 %zext.35, 32
  %or.17 = or disjoint i64 %shl.20, %zext.34
  %ptr_plus_imm.12 = add i64 %or.17, 4
  %inttoptr_bytes.17 = inttoptr i64 %ptr_plus_imm.12 to ptr addrspace(1)
  %.424 = load float, ptr addrspace(1) %inttoptr_bytes.17, align 4
  store float %.424, ptr %R20, align 4
  %.428 = load i32, ptr %R51, align 4
  %.429 = load i32, ptr %R18, align 4
  %imad_ext1.11 = zext i32 %.428 to i64
  %imad_ext2.11 = zext i32 %.429 to i64
  %imad_mul.16 = mul nuw i64 %imad_ext1.11, %imad_ext2.11
  %.430 = ptrtoint ptr %Arg_2 to i64
  %imad_add.16 = add i64 %imad_mul.16, %.430
  %.432 = lshr i64 %imad_add.16, 32
  %trunc32.22 = trunc nuw i64 %.432 to i32
  %trunc32.23 = trunc i64 %imad_add.16 to i32
  store i32 %trunc32.23, ptr %R40, align 4
  store i32 %trunc32.22, ptr %R41, align 4
  %.436 = load i32, ptr %R38, align 4
  %zext.36 = zext i32 %.436 to i64
  %.437 = load i32, ptr %R39, align 4
  %zext.37 = zext i32 %.437 to i64
  %shl.21 = shl nuw i64 %zext.37, 32
  %or.18 = or disjoint i64 %shl.21, %zext.36
  %inttoptr_bytes.18 = inttoptr i64 %or.18 to ptr addrspace(1)
  %.438 = load float, ptr addrspace(1) %inttoptr_bytes.18, align 4
  store float %.438, ptr %R51, align 4
  %.442 = load i32, ptr %R34, align 4
  %zext.38 = zext i32 %.442 to i64
  %.443 = load i32, ptr %R35, align 4
  %zext.39 = zext i32 %.443 to i64
  %shl.22 = shl nuw i64 %zext.39, 32
  %or.19 = or disjoint i64 %shl.22, %zext.38
  %ptr_plus_imm.13 = add i64 %or.19, 8
  %inttoptr_bytes.19 = inttoptr i64 %ptr_plus_imm.13 to ptr addrspace(1)
  %.444 = load float, ptr addrspace(1) %inttoptr_bytes.19, align 4
  store float %.444, ptr %R21, align 4
  %.448 = load i32, ptr %R34, align 4
  %zext.40 = zext i32 %.448 to i64
  %.449 = load i32, ptr %R35, align 4
  %zext.41 = zext i32 %.449 to i64
  %shl.23 = shl nuw i64 %zext.41, 32
  %or.20 = or disjoint i64 %shl.23, %zext.40
  %ptr_plus_imm.14 = add i64 %or.20, 12
  %inttoptr_bytes.20 = inttoptr i64 %ptr_plus_imm.14 to ptr addrspace(1)
  %.450 = load float, ptr addrspace(1) %inttoptr_bytes.20, align 4
  store float %.450, ptr %R42, align 4
  %.454 = load i32, ptr %R36, align 4
  %zext.42 = zext i32 %.454 to i64
  %.455 = load i32, ptr %R37, align 4
  %zext.43 = zext i32 %.455 to i64
  %shl.24 = shl nuw i64 %zext.43, 32
  %or.21 = or disjoint i64 %shl.24, %zext.42
  %inttoptr_bytes.21 = inttoptr i64 %or.21 to ptr addrspace(1)
  %.456 = load float, ptr addrspace(1) %inttoptr_bytes.21, align 4
  store float %.456, ptr %R44, align 4
  %.460 = load i32, ptr %R36, align 4
  %zext.44 = zext i32 %.460 to i64
  %.461 = load i32, ptr %R37, align 4
  %zext.45 = zext i32 %.461 to i64
  %shl.25 = shl nuw i64 %zext.45, 32
  %or.22 = or disjoint i64 %shl.25, %zext.44
  %ptr_plus_imm.15 = add i64 %or.22, 4
  %inttoptr_bytes.22 = inttoptr i64 %ptr_plus_imm.15 to ptr addrspace(1)
  %.462 = load float, ptr addrspace(1) %inttoptr_bytes.22, align 4
  store float %.462, ptr %R46, align 4
  %.466 = load i32, ptr %R23, align 4
  %.467 = add i32 %.466, 8
  store i32 %.467, ptr %R35, align 4
  %.471 = load i32, ptr %R36, align 4
  %zext.46 = zext i32 %.471 to i64
  %.472 = load i32, ptr %R37, align 4
  %zext.47 = zext i32 %.472 to i64
  %shl.26 = shl nuw i64 %zext.47, 32
  %or.23 = or disjoint i64 %shl.26, %zext.46
  %ptr_plus_imm.16 = add i64 %or.23, 8
  %inttoptr_bytes.23 = inttoptr i64 %ptr_plus_imm.16 to ptr addrspace(1)
  %.473 = load float, ptr addrspace(1) %inttoptr_bytes.23, align 4
  store float %.473, ptr %R48, align 4
  %.477 = load i32, ptr %R36, align 4
  %zext.48 = zext i32 %.477 to i64
  %.478 = load i32, ptr %R37, align 4
  %zext.49 = zext i32 %.478 to i64
  %shl.27 = shl nuw i64 %zext.49, 32
  %or.24 = or disjoint i64 %shl.27, %zext.48
  %ptr_plus_imm.17 = add i64 %or.24, 12
  %inttoptr_bytes.24 = inttoptr i64 %ptr_plus_imm.17 to ptr addrspace(1)
  %.479 = load float, ptr addrspace(1) %inttoptr_bytes.24, align 4
  store float %.479, ptr %R50, align 4
  %.483 = load i32, ptr %R38, align 4
  %zext.50 = zext i32 %.483 to i64
  %.484 = load i32, ptr %R39, align 4
  %zext.51 = zext i32 %.484 to i64
  %shl.28 = shl nuw i64 %zext.51, 32
  %or.25 = or disjoint i64 %shl.28, %zext.50
  %ptr_plus_imm.18 = add i64 %or.25, 4
  %inttoptr_bytes.25 = inttoptr i64 %ptr_plus_imm.18 to ptr addrspace(1)
  %.485 = load float, ptr addrspace(1) %inttoptr_bytes.25, align 4
  store float %.485, ptr %R53, align 4
  %.489 = load i32, ptr %R40, align 4
  %zext.52 = zext i32 %.489 to i64
  %.490 = load i32, ptr %R41, align 4
  %zext.53 = zext i32 %.490 to i64
  %shl.29 = shl nuw i64 %zext.53, 32
  %or.26 = or disjoint i64 %shl.29, %zext.52
  %ptr_plus_imm.19 = add i64 %or.26, 4
  %inttoptr_bytes.26 = inttoptr i64 %ptr_plus_imm.19 to ptr addrspace(1)
  %.491 = load float, ptr addrspace(1) %inttoptr_bytes.26, align 4
  store float %.491, ptr %R59, align 4
  %.495 = load i32, ptr %R25, align 4
  %.496 = add i32 %.495, 8
  store i32 %.496, ptr %R37, align 4
  %.500 = load i32, ptr %R35, align 4
  %.501 = load i32, ptr %R18, align 4
  %imad_ext1.12 = zext i32 %.500 to i64
  %imad_ext2.12 = zext i32 %.501 to i64
  %imad_mul.17 = mul nuw i64 %imad_ext1.12, %imad_ext2.12
  %.502 = ptrtoint ptr %Arg_2 to i64
  %imad_add.17 = add i64 %imad_mul.17, %.502
  %.504 = lshr i64 %imad_add.17, 32
  %trunc32.24 = trunc nuw i64 %.504 to i32
  %trunc32.25 = trunc i64 %imad_add.17 to i32
  store i32 %trunc32.25, ptr %R34, align 4
  store i32 %trunc32.24, ptr %R35, align 4
  %.508 = load i32, ptr %R38, align 4
  %zext.54 = zext i32 %.508 to i64
  %.509 = load i32, ptr %R39, align 4
  %zext.55 = zext i32 %.509 to i64
  %shl.30 = shl nuw i64 %zext.55, 32
  %or.27 = or disjoint i64 %shl.30, %zext.54
  %ptr_plus_imm.20 = add i64 %or.27, 8
  %inttoptr_bytes.27 = inttoptr i64 %ptr_plus_imm.20 to ptr addrspace(1)
  %.510 = load float, ptr addrspace(1) %inttoptr_bytes.27, align 4
  store float %.510, ptr %R55, align 4
  %.514 = load i32, ptr %R37, align 4
  %.515 = load i32, ptr %R18, align 4
  %imad_ext1.13 = zext i32 %.514 to i64
  %imad_ext2.13 = zext i32 %.515 to i64
  %imad_mul.18 = mul nuw i64 %imad_ext1.13, %imad_ext2.13
  %.516 = ptrtoint ptr %Arg_2 to i64
  %imad_add.18 = add i64 %imad_mul.18, %.516
  %.518 = lshr i64 %imad_add.18, 32
  %trunc32.26 = trunc nuw i64 %.518 to i32
  %trunc32.27 = trunc i64 %imad_add.18 to i32
  store i32 %trunc32.27, ptr %R36, align 4
  store i32 %trunc32.26, ptr %R37, align 4
  %.522 = load i32, ptr %R40, align 4
  %zext.56 = zext i32 %.522 to i64
  %.523 = load i32, ptr %R41, align 4
  %zext.57 = zext i32 %.523 to i64
  %shl.31 = shl nuw i64 %zext.57, 32
  %or.28 = or disjoint i64 %shl.31, %zext.56
  %ptr_plus_imm.21 = add i64 %or.28, 8
  %inttoptr_bytes.28 = inttoptr i64 %ptr_plus_imm.21 to ptr addrspace(1)
  %.524 = load float, ptr addrspace(1) %inttoptr_bytes.28, align 4
  store float %.524, ptr %R61, align 4
  %.528 = load i32, ptr %R38, align 4
  %zext.58 = zext i32 %.528 to i64
  %.529 = load i32, ptr %R39, align 4
  %zext.59 = zext i32 %.529 to i64
  %shl.32 = shl nuw i64 %zext.59, 32
  %or.29 = or disjoint i64 %shl.32, %zext.58
  %ptr_plus_imm.22 = add i64 %or.29, 12
  %inttoptr_bytes.29 = inttoptr i64 %ptr_plus_imm.22 to ptr addrspace(1)
  %.530 = load float, ptr addrspace(1) %inttoptr_bytes.29, align 4
  store float %.530, ptr %R60, align 4
  %.534 = load i32, ptr %R23, align 4
  %.535 = add i32 %.534, 12
  store i32 %.535, ptr %R23, align 4
  %.539 = load i32, ptr %R25, align 4
  %.540 = add i32 %.539, 12
  store i32 %.540, ptr %R25, align 4
  %.544 = load i32, ptr %R34, align 4
  %zext.60 = zext i32 %.544 to i64
  %.545 = load i32, ptr %R35, align 4
  %zext.61 = zext i32 %.545 to i64
  %shl.33 = shl nuw i64 %zext.61, 32
  %or.30 = or disjoint i64 %shl.33, %zext.60
  %ptr_plus_imm.23 = add i64 %or.30, 4
  %inttoptr_bytes.30 = inttoptr i64 %ptr_plus_imm.23 to ptr addrspace(1)
  %.546 = load float, ptr addrspace(1) %inttoptr_bytes.30, align 4
  store float %.546, ptr %R39, align 4
  %.550 = load i32, ptr %R34, align 4
  %zext.62 = zext i32 %.550 to i64
  %.551 = load i32, ptr %R35, align 4
  %zext.63 = zext i32 %.551 to i64
  %shl.34 = shl nuw i64 %zext.63, 32
  %or.31 = or disjoint i64 %shl.34, %zext.62
  %ptr_plus_imm.24 = add i64 %or.31, 8
  %inttoptr_bytes.31 = inttoptr i64 %ptr_plus_imm.24 to ptr addrspace(1)
  %.552 = load float, ptr addrspace(1) %inttoptr_bytes.31, align 4
  store float %.552, ptr %R38, align 4
  %.556 = load float, ptr %R56, align 4
  %.557 = load float, ptr %R57, align 4
  %.558 = load float, ptr %R52, align 4
  %fmul = fmul float %.556, %.557
  %fadd = fadd float %fmul, %.558
  store float %fadd, ptr %R56, align 4
  %.562 = load i32, ptr %R40, align 4
  %zext.64 = zext i32 %.562 to i64
  %.563 = load i32, ptr %R41, align 4
  %zext.65 = zext i32 %.563 to i64
  %shl.35 = shl nuw i64 %zext.65, 32
  %or.32 = or disjoint i64 %shl.35, %zext.64
  %ptr_plus_imm.25 = add i64 %or.32, 12
  %inttoptr_bytes.32 = inttoptr i64 %ptr_plus_imm.25 to ptr addrspace(1)
  %.564 = load float, ptr addrspace(1) %inttoptr_bytes.32, align 4
  store float %.564, ptr %R52, align 4
  %.568 = load float, ptr %R57, align 4
  %.569 = load float, ptr %R58, align 4
  %.570 = load float, ptr %R54, align 4
  %fmul.1 = fmul float %.568, %.569
  %fadd.1 = fadd float %fmul.1, %.570
  store float %fadd.1, ptr %R58, align 4
  %.574 = load i32, ptr %R40, align 4
  %zext.66 = zext i32 %.574 to i64
  %.575 = load i32, ptr %R41, align 4
  %zext.67 = zext i32 %.575 to i64
  %shl.36 = shl nuw i64 %zext.67, 32
  %or.33 = or disjoint i64 %shl.36, %zext.66
  %inttoptr_bytes.33 = inttoptr i64 %or.33 to ptr addrspace(1)
  %.576 = load float, ptr addrspace(1) %inttoptr_bytes.33, align 4
  store float %.576, ptr %R57, align 4
  %.580 = load i32, ptr %R34, align 4
  %zext.68 = zext i32 %.580 to i64
  %.581 = load i32, ptr %R35, align 4
  %zext.69 = zext i32 %.581 to i64
  %shl.37 = shl nuw i64 %zext.69, 32
  %or.34 = or disjoint i64 %shl.37, %zext.68
  %inttoptr_bytes.34 = inttoptr i64 %or.34 to ptr addrspace(1)
  %.582 = load float, ptr addrspace(1) %inttoptr_bytes.34, align 4
  store float %.582, ptr %R54, align 4
  %.586 = load float, ptr %R47, align 4
  %.587 = load float, ptr %R24, align 4
  %.588 = load float, ptr %R56, align 4
  %fmul.2 = fmul float %.586, %.587
  %fadd.2 = fadd float %fmul.2, %.588
  store float %fadd.2, ptr %R56, align 4
  %.592 = load i32, ptr %R34, align 4
  %zext.70 = zext i32 %.592 to i64
  %.593 = load i32, ptr %R35, align 4
  %zext.71 = zext i32 %.593 to i64
  %shl.38 = shl nuw i64 %zext.71, 32
  %or.35 = or disjoint i64 %shl.38, %zext.70
  %ptr_plus_imm.26 = add i64 %or.35, 12
  %inttoptr_bytes.35 = inttoptr i64 %ptr_plus_imm.26 to ptr addrspace(1)
  %.594 = load float, ptr addrspace(1) %inttoptr_bytes.35, align 4
  store float %.594, ptr %R47, align 4
  %.598 = load float, ptr %R24, align 4
  %.599 = load float, ptr %R49, align 4
  %.600 = load float, ptr %R58, align 4
  %fmul.3 = fmul float %.598, %.599
  %fadd.3 = fadd float %fmul.3, %.600
  store float %fadd.3, ptr %R58, align 4
  %.604 = load i32, ptr %R36, align 4
  %zext.72 = zext i32 %.604 to i64
  %.605 = load i32, ptr %R37, align 4
  %zext.73 = zext i32 %.605 to i64
  %shl.39 = shl nuw i64 %zext.73, 32
  %or.36 = or disjoint i64 %shl.39, %zext.72
  %ptr_plus_imm.27 = add i64 %or.36, 4
  %inttoptr_bytes.36 = inttoptr i64 %ptr_plus_imm.27 to ptr addrspace(1)
  %.606 = load float, ptr addrspace(1) %inttoptr_bytes.36, align 4
  store float %.606, ptr %R41, align 4
  %.610 = load i32, ptr %R36, align 4
  %zext.74 = zext i32 %.610 to i64
  %.611 = load i32, ptr %R37, align 4
  %zext.75 = zext i32 %.611 to i64
  %shl.40 = shl nuw i64 %zext.75, 32
  %or.37 = or disjoint i64 %shl.40, %zext.74
  %ptr_plus_imm.28 = add i64 %or.37, 8
  %inttoptr_bytes.37 = inttoptr i64 %ptr_plus_imm.28 to ptr addrspace(1)
  %.612 = load float, ptr addrspace(1) %inttoptr_bytes.37, align 4
  store float %.612, ptr %R40, align 4
  %.616 = load float, ptr %R43, align 4
  %.617 = load float, ptr %R22, align 4
  %.618 = load float, ptr %R56, align 4
  %fmul.4 = fmul float %.616, %.617
  %fadd.4 = fadd float %fmul.4, %.618
  store float %fadd.4, ptr %R49, align 4
  %.622 = load i32, ptr %R36, align 4
  %zext.76 = zext i32 %.622 to i64
  %.623 = load i32, ptr %R37, align 4
  %zext.77 = zext i32 %.623 to i64
  %shl.41 = shl nuw i64 %zext.77, 32
  %or.38 = or disjoint i64 %shl.41, %zext.76
  %inttoptr_bytes.38 = inttoptr i64 %or.38 to ptr addrspace(1)
  %.624 = load float, ptr addrspace(1) %inttoptr_bytes.38, align 4
  store float %.624, ptr %R56, align 4
  %.628 = load i32, ptr %R25, align 4
  %.629 = load i32, ptr %R18, align 4
  %imad_ext1.14 = zext i32 %.628 to i64
  %imad_ext2.14 = zext i32 %.629 to i64
  %imad_mul.19 = mul nuw i64 %imad_ext1.14, %imad_ext2.14
  %.630 = ptrtoint ptr %Arg_2 to i64
  %imad_add.19 = add i64 %imad_mul.19, %.630
  %.632 = lshr i64 %imad_add.19, 32
  %trunc32.28 = trunc nuw i64 %.632 to i32
  %trunc32.29 = trunc i64 %imad_add.19 to i32
  store i32 %trunc32.29, ptr %R24, align 4
  store i32 %trunc32.28, ptr %R25, align 4
  %.636 = load i32, ptr %R36, align 4
  %zext.78 = zext i32 %.636 to i64
  %.637 = load i32, ptr %R37, align 4
  %zext.79 = zext i32 %.637 to i64
  %shl.42 = shl nuw i64 %zext.79, 32
  %or.39 = or disjoint i64 %shl.42, %zext.78
  %ptr_plus_imm.29 = add i64 %or.39, 12
  %inttoptr_bytes.39 = inttoptr i64 %ptr_plus_imm.29 to ptr addrspace(1)
  %.638 = load float, ptr addrspace(1) %inttoptr_bytes.39, align 4
  store float %.638, ptr %R43, align 4
  %.642 = load float, ptr %R22, align 4
  %.643 = load float, ptr %R45, align 4
  %.644 = load float, ptr %R58, align 4
  %fmul.5 = fmul float %.642, %.643
  %fadd.5 = fadd float %fmul.5, %.644
  store float %fadd.5, ptr %R58, align 4
  %.648 = load i32, ptr %R23, align 4
  %.649 = load i32, ptr %R18, align 4
  %imad_ext1.15 = zext i32 %.648 to i64
  %imad_ext2.15 = zext i32 %.649 to i64
  %imad_mul.20 = mul nuw i64 %imad_ext1.15, %imad_ext2.15
  %.650 = ptrtoint ptr %Arg_2 to i64
  %imad_add.20 = add i64 %imad_mul.20, %.650
  %.652 = lshr i64 %imad_add.20, 32
  %trunc32.30 = trunc nuw i64 %.652 to i32
  %trunc32.31 = trunc i64 %imad_add.20 to i32
  store i32 %trunc32.31, ptr %R22, align 4
  store i32 %trunc32.30, ptr %R23, align 4
  %.656 = load i32, ptr %R24, align 4
  %zext.80 = zext i32 %.656 to i64
  %.657 = load i32, ptr %R25, align 4
  %zext.81 = zext i32 %.657 to i64
  %shl.43 = shl nuw i64 %zext.81, 32
  %or.40 = or disjoint i64 %shl.43, %zext.80
  %inttoptr_bytes.40 = inttoptr i64 %or.40 to ptr addrspace(1)
  %.658 = load float, ptr addrspace(1) %inttoptr_bytes.40, align 4
  store float %.658, ptr %R18, align 4
  %.662 = load float, ptr %R14, align 4
  %.663 = load float, ptr %R15, align 4
  %.664 = load float, ptr %R49, align 4
  %fmul.6 = fmul float %.662, %.663
  %fadd.6 = fadd float %fmul.6, %.664
  store float %fadd.6, ptr %R14, align 4
  %.668 = load i32, ptr %R24, align 4
  %zext.82 = zext i32 %.668 to i64
  %.669 = load i32, ptr %R25, align 4
  %zext.83 = zext i32 %.669 to i64
  %shl.44 = shl nuw i64 %zext.83, 32
  %or.41 = or disjoint i64 %shl.44, %zext.82
  %ptr_plus_imm.30 = add i64 %or.41, 4
  %inttoptr_bytes.41 = inttoptr i64 %ptr_plus_imm.30 to ptr addrspace(1)
  %.670 = load float, ptr addrspace(1) %inttoptr_bytes.41, align 4
  store float %.670, ptr %R49, align 4
  %.674 = load float, ptr %R15, align 4
  %.675 = load float, ptr %R13, align 4
  %.676 = load float, ptr %R58, align 4
  %fmul.7 = fmul float %.674, %.675
  %fadd.7 = fadd float %fmul.7, %.676
  store float %fadd.7, ptr %R58, align 4
  %.680 = load i32, ptr %R22, align 4
  %zext.84 = zext i32 %.680 to i64
  %.681 = load i32, ptr %R23, align 4
  %zext.85 = zext i32 %.681 to i64
  %shl.45 = shl nuw i64 %zext.85, 32
  %or.42 = or disjoint i64 %shl.45, %zext.84
  %inttoptr_bytes.42 = inttoptr i64 %or.42 to ptr addrspace(1)
  %.682 = load float, ptr addrspace(1) %inttoptr_bytes.42, align 4
  store float %.682, ptr %R35, align 4
  %.686 = load i32, ptr %R22, align 4
  %zext.86 = zext i32 %.686 to i64
  %.687 = load i32, ptr %R23, align 4
  %zext.87 = zext i32 %.687 to i64
  %shl.46 = shl nuw i64 %zext.87, 32
  %or.43 = or disjoint i64 %shl.46, %zext.86
  %ptr_plus_imm.31 = add i64 %or.43, 4
  %inttoptr_bytes.43 = inttoptr i64 %ptr_plus_imm.31 to ptr addrspace(1)
  %.688 = load float, ptr addrspace(1) %inttoptr_bytes.43, align 4
  store float %.688, ptr %R15, align 4
  %.692 = load i32, ptr %R22, align 4
  %zext.88 = zext i32 %.692 to i64
  %.693 = load i32, ptr %R23, align 4
  %zext.89 = zext i32 %.693 to i64
  %shl.47 = shl nuw i64 %zext.89, 32
  %or.44 = or disjoint i64 %shl.47, %zext.88
  %ptr_plus_imm.32 = add i64 %or.44, 8
  %inttoptr_bytes.44 = inttoptr i64 %ptr_plus_imm.32 to ptr addrspace(1)
  %.694 = load float, ptr addrspace(1) %inttoptr_bytes.44, align 4
  store float %.694, ptr %R13, align 4
  %.698 = load i32, ptr %R24, align 4
  %zext.90 = zext i32 %.698 to i64
  %.699 = load i32, ptr %R25, align 4
  %zext.91 = zext i32 %.699 to i64
  %shl.48 = shl nuw i64 %zext.91, 32
  %or.45 = or disjoint i64 %shl.48, %zext.90
  %ptr_plus_imm.33 = add i64 %or.45, 8
  %inttoptr_bytes.45 = inttoptr i64 %ptr_plus_imm.33 to ptr addrspace(1)
  %.700 = load float, ptr addrspace(1) %inttoptr_bytes.45, align 4
  store float %.700, ptr %R37, align 4
  %.704 = load i32, ptr %R22, align 4
  %zext.92 = zext i32 %.704 to i64
  %.705 = load i32, ptr %R23, align 4
  %zext.93 = zext i32 %.705 to i64
  %shl.49 = shl nuw i64 %zext.93, 32
  %or.46 = or disjoint i64 %shl.49, %zext.92
  %ptr_plus_imm.34 = add i64 %or.46, 12
  %inttoptr_bytes.46 = inttoptr i64 %ptr_plus_imm.34 to ptr addrspace(1)
  %.706 = load float, ptr addrspace(1) %inttoptr_bytes.46, align 4
  store float %.706, ptr %R45, align 4
  %.710 = load i32, ptr %R24, align 4
  %zext.94 = zext i32 %.710 to i64
  %.711 = load i32, ptr %R25, align 4
  %zext.95 = zext i32 %.711 to i64
  %shl.50 = shl nuw i64 %zext.95, 32
  %or.47 = or disjoint i64 %shl.50, %zext.94
  %ptr_plus_imm.35 = add i64 %or.47, 12
  %inttoptr_bytes.47 = inttoptr i64 %ptr_plus_imm.35 to ptr addrspace(1)
  %.712 = load float, ptr addrspace(1) %inttoptr_bytes.47, align 4
  store float %.712, ptr %R34, align 4
  %.716 = load float, ptr %R51, align 4
  %.717 = load float, ptr %R12, align 4
  %.718 = load float, ptr %R14, align 4
  %fmul.8 = fmul float %.716, %.717
  %fadd.8 = fadd float %fmul.8, %.718
  store float %fadd.8, ptr %R14, align 4
  %.722 = load i32, ptr %R9, align 4
  %.723 = add i32 %.722, -16
  store i32 %.723, ptr %R9, align 4
  %.727 = load float, ptr %R53, align 4
  %.728 = load float, ptr %R10, align 4
  %fmul.9 = fmul float %.727, %.728
  %fadd.9 = fadd float %fmul.9, %fadd.8
  store float %fadd.9, ptr %R14, align 4
  %.733 = load float, ptr %R55, align 4
  %.734 = load float, ptr %R16, align 4
  %fmul.10 = fmul float %.733, %.734
  %fadd.10 = fadd float %fmul.10, %fadd.9
  store float %fadd.10, ptr %R14, align 4
  %.739 = load float, ptr %R60, align 4
  %.740 = load float, ptr %R17, align 4
  %fmul.11 = fmul float %.739, %.740
  %fadd.11 = fadd float %fmul.11, %fadd.10
  store float %fadd.11, ptr %R14, align 4
  %.745 = load i32, ptr %R9, align 4
  %cmp.8 = icmp sgt i32 %.745, 12
  %.752 = load i32, ptr %R11, align 4
  %.753 = add i32 %.752, 16
  store i32 %.753, ptr %R11, align 4
  %.757 = load float, ptr %R12, align 4
  %.758 = load float, ptr %R57, align 4
  %.759 = load float, ptr %R58, align 4
  %fmul.12 = fmul float %.757, %.758
  %fadd.12 = fadd float %fmul.12, %.759
  store float %fadd.12, ptr %R57, align 4
  %.763 = load float, ptr %R10, align 4
  %.764 = load float, ptr %R59, align 4
  %fmul.13 = fmul float %.763, %.764
  %fadd.13 = fadd float %fmul.13, %fadd.12
  store float %fadd.13, ptr %R57, align 4
  %.769 = load float, ptr %R16, align 4
  %.770 = load float, ptr %R61, align 4
  %fmul.14 = fmul float %.769, %.770
  %fadd.14 = fadd float %fmul.14, %fadd.13
  store float %fadd.14, ptr %R57, align 4
  %.775 = load float, ptr %R17, align 4
  %.776 = load float, ptr %R52, align 4
  %fmul.15 = fmul float %.775, %.776
  %fadd.15 = fadd float %fmul.15, %fadd.14
  store float %fadd.15, ptr %R52, align 4
  %.781 = load float, ptr %R54, align 4
  %.782 = load float, ptr %R19, align 4
  %.783 = load float, ptr %R14, align 4
  %fmul.16 = fmul float %.781, %.782
  %fadd.16 = fadd float %fmul.16, %.783
  store float %fadd.16, ptr %R14, align 4
  %.788 = load float, ptr %R56, align 4
  %.789 = load float, ptr %R52, align 4
  %fmul.17 = fmul float %.782, %.788
  %fadd.17 = fadd float %fmul.17, %.789
  store float %fadd.17, ptr %R52, align 4
  %.793 = load float, ptr %R39, align 4
  %.794 = load float, ptr %R20, align 4
  %.795 = load float, ptr %R14, align 4
  %fmul.18 = fmul float %.793, %.794
  %fadd.18 = fadd float %fmul.18, %.795
  store float %fadd.18, ptr %R14, align 4
  %.800 = load float, ptr %R41, align 4
  %.801 = load float, ptr %R52, align 4
  %fmul.19 = fmul float %.794, %.800
  %fadd.19 = fadd float %fmul.19, %.801
  store float %fadd.19, ptr %R41, align 4
  %.805 = load float, ptr %R38, align 4
  %.806 = load float, ptr %R21, align 4
  %.807 = load float, ptr %R14, align 4
  %fmul.20 = fmul float %.805, %.806
  %fadd.20 = fadd float %fmul.20, %.807
  store float %fadd.20, ptr %R14, align 4
  %.812 = load float, ptr %R40, align 4
  %.813 = load float, ptr %R41, align 4
  %fmul.21 = fmul float %.806, %.812
  %fadd.21 = fadd float %fmul.21, %.813
  store float %fadd.21, ptr %R40, align 4
  %.817 = load float, ptr %R47, align 4
  %.818 = load float, ptr %R42, align 4
  %.819 = load float, ptr %R14, align 4
  %fmul.22 = fmul float %.817, %.818
  %fadd.22 = fadd float %fmul.22, %.819
  store float %fadd.22, ptr %R14, align 4
  %.824 = load float, ptr %R43, align 4
  %.825 = load float, ptr %R40, align 4
  %fmul.23 = fmul float %.818, %.824
  %fadd.23 = fadd float %fmul.23, %.825
  store float %fadd.23, ptr %R43, align 4
  %.829 = load float, ptr %R44, align 4
  %.830 = load float, ptr %R18, align 4
  %fmul.24 = fmul float %.829, %.830
  %fadd.24 = fadd float %fmul.24, %fadd.23
  store float %fadd.24, ptr %R18, align 4
  %.835 = load float, ptr %R35, align 4
  %.837 = load float, ptr %R14, align 4
  %fmul.25 = fmul float %.835, %.829
  %fadd.25 = fadd float %fmul.25, %.837
  store float %fadd.25, ptr %R14, align 4
  %.841 = load float, ptr %R46, align 4
  %.842 = load float, ptr %R49, align 4
  %.843 = load float, ptr %R18, align 4
  %fmul.26 = fmul float %.841, %.842
  %fadd.26 = fadd float %fmul.26, %.843
  store float %fadd.26, ptr %R18, align 4
  %.847 = load float, ptr %R15, align 4
  %.848 = load float, ptr %R46, align 4
  %.849 = load float, ptr %R14, align 4
  %fmul.27 = fmul float %.847, %.848
  %fadd.27 = fadd float %fmul.27, %.849
  store float %fadd.27, ptr %R14, align 4
  %.853 = load float, ptr %R13, align 4
  %.854 = load float, ptr %R48, align 4
  %fmul.28 = fmul float %.853, %.854
  %fadd.28 = fadd float %fmul.28, %fadd.27
  store float %fadd.28, ptr %R13, align 4
  %.860 = load float, ptr %R37, align 4
  %.861 = load float, ptr %R18, align 4
  %fmul.29 = fmul float %.854, %.860
  %fadd.29 = fadd float %fmul.29, %.861
  store float %fadd.29, ptr %R37, align 4
  %.865 = load float, ptr %R45, align 4
  %.866 = load float, ptr %R50, align 4
  %.867 = load float, ptr %R13, align 4
  %fmul.30 = fmul float %.865, %.866
  %fadd.30 = fadd float %fmul.30, %.867
  store float %fadd.30, ptr %R52, align 4
  %.872 = load float, ptr %R34, align 4
  %.873 = load float, ptr %R37, align 4
  %fmul.31 = fmul float %.866, %.872
  %fadd.31 = fadd float %fmul.31, %.873
  store float %fadd.31, ptr %R54, align 4
  br i1 %cmp.8, label %.L_x_5, label %.L_x_4.loopexit

.L_x_4.loopexit:                                  ; preds = %.L_x_5
  br label %.L_x_4

.L_x_4:                                           ; preds = %.L_x_4.loopexit, %.L_x_22_split_0x02d0
  %.881 = load i32, ptr %R9, align 4
  %cmp.9 = icmp slt i32 %.881, 5
  br i1 %cmp.9, label %.L_x_6, label %.L_x_4_split_0x0a00

.L_x_4_split_0x0a00:                              ; preds = %.L_x_4
  %.893 = load i32, ptr %R11, align 4
  %.894 = add i32 %imad_mul.1, %.893
  store i32 %.894, ptr %R13, align 4
  store i32 4, ptr %R17, align 4
  %shl.51 = shl i32 %imad_mul.5, 2
  %add.3 = add i32 %shl.51, %.894
  store i32 %add.3, ptr %R14, align 4
  %imad_mul.21 = mul i32 %imad_mul.5, 3
  %imad_add.21 = add i32 %imad_mul.21, %.894
  store i32 %imad_add.21, ptr %R10, align 4
  %.908 = load i32, ptr %R11, align 4
  %.909 = add i32 %.908, 4
  store i32 %.909, ptr %R12, align 4
  %.914 = load i32, ptr %R17, align 4
  %imad_ext1.16 = zext i32 %.908 to i64
  %imad_ext2.16 = zext i32 %.914 to i64
  %imad_mul.22 = mul nuw i64 %imad_ext1.16, %imad_ext2.16
  %.915 = ptrtoint ptr %Arg_1 to i64
  %imad_add.22 = add i64 %imad_mul.22, %.915
  %.917 = lshr i64 %imad_add.22, 32
  %trunc32.32 = trunc nuw i64 %.917 to i32
  %trunc32.33 = trunc i64 %imad_add.22 to i32
  store i32 %trunc32.33, ptr %R18, align 4
  store i32 %trunc32.32, ptr %R19, align 4
  %.921 = load i32, ptr %R14, align 4
  %.922 = add i32 %.921, 4
  store i32 %.922, ptr %R16, align 4
  %.926 = load i32, ptr %R10, align 4
  %.927 = add i32 %.926, 4
  store i32 %.927, ptr %R15, align 4
  %.932 = load i32, ptr %R17, align 4
  %imad_ext1.17 = zext i32 %.926 to i64
  %imad_ext2.17 = zext i32 %.932 to i64
  %imad_mul.23 = mul nuw i64 %imad_ext1.17, %imad_ext2.17
  %.933 = ptrtoint ptr %Arg_2 to i64
  %imad_add.23 = add i64 %imad_mul.23, %.933
  %.935 = lshr i64 %imad_add.23, 32
  %trunc32.34 = trunc nuw i64 %.935 to i32
  %trunc32.35 = trunc i64 %imad_add.23 to i32
  store i32 %trunc32.35, ptr %R22, align 4
  store i32 %trunc32.34, ptr %R23, align 4
  %.939 = load i32, ptr %R14, align 4
  %.940 = load i32, ptr %R17, align 4
  %imad_ext1.18 = zext i32 %.939 to i64
  %imad_ext2.18 = zext i32 %.940 to i64
  %imad_mul.24 = mul nuw i64 %imad_ext1.18, %imad_ext2.18
  %.941 = ptrtoint ptr %Arg_2 to i64
  %imad_add.24 = add i64 %imad_mul.24, %.941
  %.943 = lshr i64 %imad_add.24, 32
  %trunc32.36 = trunc nuw i64 %.943 to i32
  %trunc32.37 = trunc i64 %imad_add.24 to i32
  store i32 %trunc32.37, ptr %R20, align 4
  store i32 %trunc32.36, ptr %R21, align 4
  %.947 = load i32, ptr %R18, align 4
  %zext.96 = zext i32 %.947 to i64
  %.948 = load i32, ptr %R19, align 4
  %zext.97 = zext i32 %.948 to i64
  %shl.52 = shl nuw i64 %zext.97, 32
  %or.48 = or disjoint i64 %shl.52, %zext.96
  %inttoptr_bytes.48 = inttoptr i64 %or.48 to ptr addrspace(1)
  %.949 = load float, ptr addrspace(1) %inttoptr_bytes.48, align 4
  store float %.949, ptr %R39, align 4
  %.953 = load i32, ptr %R12, align 4
  %.954 = load i32, ptr %R17, align 4
  %imad_ext1.19 = zext i32 %.953 to i64
  %imad_ext2.19 = zext i32 %.954 to i64
  %imad_mul.25 = mul nuw i64 %imad_ext1.19, %imad_ext2.19
  %.955 = ptrtoint ptr %Arg_1 to i64
  %imad_add.25 = add i64 %imad_mul.25, %.955
  %.957 = lshr i64 %imad_add.25, 32
  %trunc32.38 = trunc nuw i64 %.957 to i32
  %trunc32.39 = trunc i64 %imad_add.25 to i32
  store i32 %trunc32.39, ptr %R12, align 4
  store i32 %trunc32.38, ptr %R13, align 4
  %.961 = load i32, ptr %R22, align 4
  %zext.98 = zext i32 %.961 to i64
  %.962 = load i32, ptr %R23, align 4
  %zext.99 = zext i32 %.962 to i64
  %shl.53 = shl nuw i64 %zext.99, 32
  %or.49 = or disjoint i64 %shl.53, %zext.98
  %inttoptr_bytes.49 = inttoptr i64 %or.49 to ptr addrspace(1)
  %.963 = load float, ptr addrspace(1) %inttoptr_bytes.49, align 4
  store float %.963, ptr %R37, align 4
  %.967 = load i32, ptr %R20, align 4
  %zext.100 = zext i32 %.967 to i64
  %.968 = load i32, ptr %R21, align 4
  %zext.101 = zext i32 %.968 to i64
  %shl.54 = shl nuw i64 %zext.101, 32
  %or.50 = or disjoint i64 %shl.54, %zext.100
  %inttoptr_bytes.50 = inttoptr i64 %or.50 to ptr addrspace(1)
  %.969 = load float, ptr addrspace(1) %inttoptr_bytes.50, align 4
  store float %.969, ptr %R36, align 4
  %.973 = load i32, ptr %R15, align 4
  %.974 = load i32, ptr %R17, align 4
  %imad_ext1.20 = zext i32 %.973 to i64
  %imad_ext2.20 = zext i32 %.974 to i64
  %imad_mul.26 = mul nuw i64 %imad_ext1.20, %imad_ext2.20
  %.975 = ptrtoint ptr %Arg_2 to i64
  %imad_add.26 = add i64 %imad_mul.26, %.975
  %.977 = lshr i64 %imad_add.26, 32
  %trunc32.40 = trunc nuw i64 %.977 to i32
  %trunc32.41 = trunc i64 %imad_add.26 to i32
  store i32 %trunc32.41, ptr %R14, align 4
  store i32 %trunc32.40, ptr %R15, align 4
  %.981 = load i32, ptr %R18, align 4
  %zext.102 = zext i32 %.981 to i64
  %.982 = load i32, ptr %R19, align 4
  %zext.103 = zext i32 %.982 to i64
  %shl.55 = shl nuw i64 %zext.103, 32
  %or.51 = or disjoint i64 %shl.55, %zext.102
  %ptr_plus_imm.36 = add i64 %or.51, 4
  %inttoptr_bytes.51 = inttoptr i64 %ptr_plus_imm.36 to ptr addrspace(1)
  %.983 = load float, ptr addrspace(1) %inttoptr_bytes.51, align 4
  store float %.983, ptr %R34, align 4
  %.987 = load i32, ptr %R22, align 4
  %zext.104 = zext i32 %.987 to i64
  %.988 = load i32, ptr %R23, align 4
  %zext.105 = zext i32 %.988 to i64
  %shl.56 = shl nuw i64 %zext.105, 32
  %or.52 = or disjoint i64 %shl.56, %zext.104
  %ptr_plus_imm.37 = add i64 %or.52, 4
  %inttoptr_bytes.52 = inttoptr i64 %ptr_plus_imm.37 to ptr addrspace(1)
  %.989 = load float, ptr addrspace(1) %inttoptr_bytes.52, align 4
  store float %.989, ptr %R38, align 4
  %.993 = load i32, ptr %R20, align 4
  %zext.106 = zext i32 %.993 to i64
  %.994 = load i32, ptr %R21, align 4
  %zext.107 = zext i32 %.994 to i64
  %shl.57 = shl nuw i64 %zext.107, 32
  %or.53 = or disjoint i64 %shl.57, %zext.106
  %ptr_plus_imm.38 = add i64 %or.53, 4
  %inttoptr_bytes.53 = inttoptr i64 %ptr_plus_imm.38 to ptr addrspace(1)
  %.995 = load float, ptr addrspace(1) %inttoptr_bytes.53, align 4
  store float %.995, ptr %R35, align 4
  %.999 = load i32, ptr %R16, align 4
  %.1000 = load i32, ptr %R17, align 4
  %imad_ext1.21 = zext i32 %.999 to i64
  %imad_ext2.21 = zext i32 %.1000 to i64
  %imad_mul.27 = mul nuw i64 %imad_ext1.21, %imad_ext2.21
  %.1001 = ptrtoint ptr %Arg_2 to i64
  %imad_add.27 = add i64 %imad_mul.27, %.1001
  %.1003 = lshr i64 %imad_add.27, 32
  %trunc32.42 = trunc nuw i64 %.1003 to i32
  %trunc32.43 = trunc i64 %imad_add.27 to i32
  store i32 %trunc32.43, ptr %R16, align 4
  store i32 %trunc32.42, ptr %R17, align 4
  %.1007 = load i32, ptr %R18, align 4
  %zext.108 = zext i32 %.1007 to i64
  %.1008 = load i32, ptr %R19, align 4
  %zext.109 = zext i32 %.1008 to i64
  %shl.58 = shl nuw i64 %zext.109, 32
  %or.54 = or disjoint i64 %shl.58, %zext.108
  %ptr_plus_imm.39 = add i64 %or.54, 8
  %inttoptr_bytes.54 = inttoptr i64 %ptr_plus_imm.39 to ptr addrspace(1)
  %.1009 = load float, ptr addrspace(1) %inttoptr_bytes.54, align 4
  store float %.1009, ptr %R24, align 4
  %.1013 = load i32, ptr %R22, align 4
  %zext.110 = zext i32 %.1013 to i64
  %.1014 = load i32, ptr %R23, align 4
  %zext.111 = zext i32 %.1014 to i64
  %shl.59 = shl nuw i64 %zext.111, 32
  %or.55 = or disjoint i64 %shl.59, %zext.110
  %ptr_plus_imm.40 = add i64 %or.55, 8
  %inttoptr_bytes.55 = inttoptr i64 %ptr_plus_imm.40 to ptr addrspace(1)
  %.1015 = load float, ptr addrspace(1) %inttoptr_bytes.55, align 4
  store float %.1015, ptr %R40, align 4
  %.1019 = load i32, ptr %R20, align 4
  %zext.112 = zext i32 %.1019 to i64
  %.1020 = load i32, ptr %R21, align 4
  %zext.113 = zext i32 %.1020 to i64
  %shl.60 = shl nuw i64 %zext.113, 32
  %or.56 = or disjoint i64 %shl.60, %zext.112
  %ptr_plus_imm.41 = add i64 %or.56, 8
  %inttoptr_bytes.56 = inttoptr i64 %ptr_plus_imm.41 to ptr addrspace(1)
  %.1021 = load float, ptr addrspace(1) %inttoptr_bytes.56, align 4
  store float %.1021, ptr %R41, align 4
  %.1025 = load i32, ptr %R18, align 4
  %zext.114 = zext i32 %.1025 to i64
  %.1026 = load i32, ptr %R19, align 4
  %zext.115 = zext i32 %.1026 to i64
  %shl.61 = shl nuw i64 %zext.115, 32
  %or.57 = or disjoint i64 %shl.61, %zext.114
  %ptr_plus_imm.42 = add i64 %or.57, 12
  %inttoptr_bytes.57 = inttoptr i64 %ptr_plus_imm.42 to ptr addrspace(1)
  %.1027 = load float, ptr addrspace(1) %inttoptr_bytes.57, align 4
  store float %.1027, ptr %R44, align 4
  %.1031 = load i32, ptr %R22, align 4
  %zext.116 = zext i32 %.1031 to i64
  %.1032 = load i32, ptr %R23, align 4
  %zext.117 = zext i32 %.1032 to i64
  %shl.62 = shl nuw i64 %zext.117, 32
  %or.58 = or disjoint i64 %shl.62, %zext.116
  %ptr_plus_imm.43 = add i64 %or.58, 12
  %inttoptr_bytes.58 = inttoptr i64 %ptr_plus_imm.43 to ptr addrspace(1)
  %.1033 = load float, ptr addrspace(1) %inttoptr_bytes.58, align 4
  store float %.1033, ptr %R42, align 4
  %.1037 = load i32, ptr %R20, align 4
  %zext.118 = zext i32 %.1037 to i64
  %.1038 = load i32, ptr %R21, align 4
  %zext.119 = zext i32 %.1038 to i64
  %shl.63 = shl nuw i64 %zext.119, 32
  %or.59 = or disjoint i64 %shl.63, %zext.118
  %ptr_plus_imm.44 = add i64 %or.59, 12
  %inttoptr_bytes.59 = inttoptr i64 %ptr_plus_imm.44 to ptr addrspace(1)
  %.1039 = load float, ptr addrspace(1) %inttoptr_bytes.59, align 4
  store float %.1039, ptr %R43, align 4
  %.1043 = load i32, ptr %R12, align 4
  %zext.120 = zext i32 %.1043 to i64
  %.1044 = load i32, ptr %R13, align 4
  %zext.121 = zext i32 %.1044 to i64
  %shl.64 = shl nuw i64 %zext.121, 32
  %or.60 = or disjoint i64 %shl.64, %zext.120
  %inttoptr_bytes.60 = inttoptr i64 %or.60 to ptr addrspace(1)
  %.1045 = load float, ptr addrspace(1) %inttoptr_bytes.60, align 4
  store float %.1045, ptr %R48, align 4
  %.1049 = load i32, ptr %R14, align 4
  %zext.122 = zext i32 %.1049 to i64
  %.1050 = load i32, ptr %R15, align 4
  %zext.123 = zext i32 %.1050 to i64
  %shl.65 = shl nuw i64 %zext.123, 32
  %or.61 = or disjoint i64 %shl.65, %zext.122
  %inttoptr_bytes.61 = inttoptr i64 %or.61 to ptr addrspace(1)
  %.1051 = load float, ptr addrspace(1) %inttoptr_bytes.61, align 4
  store float %.1051, ptr %R46, align 4
  %.1055 = load i32, ptr %R16, align 4
  %zext.124 = zext i32 %.1055 to i64
  %.1056 = load i32, ptr %R17, align 4
  %zext.125 = zext i32 %.1056 to i64
  %shl.66 = shl nuw i64 %zext.125, 32
  %or.62 = or disjoint i64 %shl.66, %zext.124
  %inttoptr_bytes.62 = inttoptr i64 %or.62 to ptr addrspace(1)
  %.1057 = load float, ptr addrspace(1) %inttoptr_bytes.62, align 4
  store float %.1057, ptr %R45, align 4
  %.1061 = load i32, ptr %R12, align 4
  %zext.126 = zext i32 %.1061 to i64
  %.1062 = load i32, ptr %R13, align 4
  %zext.127 = zext i32 %.1062 to i64
  %shl.67 = shl nuw i64 %zext.127, 32
  %or.63 = or disjoint i64 %shl.67, %zext.126
  %ptr_plus_imm.45 = add i64 %or.63, 4
  %inttoptr_bytes.63 = inttoptr i64 %ptr_plus_imm.45 to ptr addrspace(1)
  %.1063 = load float, ptr addrspace(1) %inttoptr_bytes.63, align 4
  store float %.1063, ptr %R56, align 4
  %.1067 = load i32, ptr %R14, align 4
  %zext.128 = zext i32 %.1067 to i64
  %.1068 = load i32, ptr %R15, align 4
  %zext.129 = zext i32 %.1068 to i64
  %shl.68 = shl nuw i64 %zext.129, 32
  %or.64 = or disjoint i64 %shl.68, %zext.128
  %ptr_plus_imm.46 = add i64 %or.64, 4
  %inttoptr_bytes.64 = inttoptr i64 %ptr_plus_imm.46 to ptr addrspace(1)
  %.1069 = load float, ptr addrspace(1) %inttoptr_bytes.64, align 4
  store float %.1069, ptr %R50, align 4
  %.1073 = load i32, ptr %R16, align 4
  %zext.130 = zext i32 %.1073 to i64
  %.1074 = load i32, ptr %R17, align 4
  %zext.131 = zext i32 %.1074 to i64
  %shl.69 = shl nuw i64 %zext.131, 32
  %or.65 = or disjoint i64 %shl.69, %zext.130
  %ptr_plus_imm.47 = add i64 %or.65, 4
  %inttoptr_bytes.65 = inttoptr i64 %ptr_plus_imm.47 to ptr addrspace(1)
  %.1075 = load float, ptr addrspace(1) %inttoptr_bytes.65, align 4
  store float %.1075, ptr %R47, align 4
  %.1079 = load i32, ptr %R12, align 4
  %zext.132 = zext i32 %.1079 to i64
  %.1080 = load i32, ptr %R13, align 4
  %zext.133 = zext i32 %.1080 to i64
  %shl.70 = shl nuw i64 %zext.133, 32
  %or.66 = or disjoint i64 %shl.70, %zext.132
  %ptr_plus_imm.48 = add i64 %or.66, 8
  %inttoptr_bytes.66 = inttoptr i64 %ptr_plus_imm.48 to ptr addrspace(1)
  %.1081 = load float, ptr addrspace(1) %inttoptr_bytes.66, align 4
  store float %.1081, ptr %R10, align 4
  %.1085 = load i32, ptr %R14, align 4
  %zext.134 = zext i32 %.1085 to i64
  %.1086 = load i32, ptr %R15, align 4
  %zext.135 = zext i32 %.1086 to i64
  %shl.71 = shl nuw i64 %zext.135, 32
  %or.67 = or disjoint i64 %shl.71, %zext.134
  %ptr_plus_imm.49 = add i64 %or.67, 8
  %inttoptr_bytes.67 = inttoptr i64 %ptr_plus_imm.49 to ptr addrspace(1)
  %.1087 = load float, ptr addrspace(1) %inttoptr_bytes.67, align 4
  store float %.1087, ptr %R25, align 4
  %.1091 = load i32, ptr %R16, align 4
  %zext.136 = zext i32 %.1091 to i64
  %.1092 = load i32, ptr %R17, align 4
  %zext.137 = zext i32 %.1092 to i64
  %shl.72 = shl nuw i64 %zext.137, 32
  %or.68 = or disjoint i64 %shl.72, %zext.136
  %ptr_plus_imm.50 = add i64 %or.68, 8
  %inttoptr_bytes.68 = inttoptr i64 %ptr_plus_imm.50 to ptr addrspace(1)
  %.1093 = load float, ptr addrspace(1) %inttoptr_bytes.68, align 4
  store float %.1093, ptr %R19, align 4
  %.1097 = load i32, ptr %R12, align 4
  %zext.138 = zext i32 %.1097 to i64
  %.1098 = load i32, ptr %R13, align 4
  %zext.139 = zext i32 %.1098 to i64
  %shl.73 = shl nuw i64 %zext.139, 32
  %or.69 = or disjoint i64 %shl.73, %zext.138
  %ptr_plus_imm.51 = add i64 %or.69, 12
  %inttoptr_bytes.69 = inttoptr i64 %ptr_plus_imm.51 to ptr addrspace(1)
  %.1099 = load float, ptr addrspace(1) %inttoptr_bytes.69, align 4
  store float %.1099, ptr %R18, align 4
  %.1103 = load i32, ptr %R14, align 4
  %zext.140 = zext i32 %.1103 to i64
  %.1104 = load i32, ptr %R15, align 4
  %zext.141 = zext i32 %.1104 to i64
  %shl.74 = shl nuw i64 %zext.141, 32
  %or.70 = or disjoint i64 %shl.74, %zext.140
  %ptr_plus_imm.52 = add i64 %or.70, 12
  %inttoptr_bytes.70 = inttoptr i64 %ptr_plus_imm.52 to ptr addrspace(1)
  %.1105 = load float, ptr addrspace(1) %inttoptr_bytes.70, align 4
  store float %.1105, ptr %R20, align 4
  %.1109 = load i32, ptr %R16, align 4
  %zext.142 = zext i32 %.1109 to i64
  %.1110 = load i32, ptr %R17, align 4
  %zext.143 = zext i32 %.1110 to i64
  %shl.75 = shl nuw i64 %zext.143, 32
  %or.71 = or disjoint i64 %shl.75, %zext.142
  %ptr_plus_imm.53 = add i64 %or.71, 12
  %inttoptr_bytes.71 = inttoptr i64 %ptr_plus_imm.53 to ptr addrspace(1)
  %.1111 = load float, ptr addrspace(1) %inttoptr_bytes.71, align 4
  store float %.1111, ptr %R21, align 4
  %.1119 = load i32, ptr %R9, align 4
  %.1120 = add i32 %.1119, -8
  store i32 %.1120, ptr %R9, align 4
  %.1124 = load i32, ptr %R11, align 4
  %.1125 = add i32 %.1124, 8
  store i32 %.1125, ptr %R11, align 4
  %.1129 = load float, ptr %R37, align 4
  %.1130 = load float, ptr %R39, align 4
  %.1131 = load float, ptr %R52, align 4
  %fmul.32 = fmul float %.1129, %.1130
  %fadd.32 = fadd float %fmul.32, %.1131
  store float %fadd.32, ptr %R37, align 4
  %.1136 = load float, ptr %R36, align 4
  %.1137 = load float, ptr %R54, align 4
  %fmul.33 = fmul float %.1130, %.1136
  %fadd.33 = fadd float %fmul.33, %.1137
  store float %fadd.33, ptr %R36, align 4
  %.1141 = load float, ptr %R38, align 4
  %.1142 = load float, ptr %R34, align 4
  %.1143 = load float, ptr %R37, align 4
  %fmul.34 = fmul float %.1141, %.1142
  %fadd.34 = fadd float %fmul.34, %.1143
  store float %fadd.34, ptr %R37, align 4
  %.1148 = load float, ptr %R35, align 4
  %.1149 = load float, ptr %R36, align 4
  %fmul.35 = fmul float %.1142, %.1148
  %fadd.35 = fadd float %fmul.35, %.1149
  store float %fadd.35, ptr %R35, align 4
  %.1153 = load float, ptr %R40, align 4
  %.1154 = load float, ptr %R24, align 4
  %.1155 = load float, ptr %R37, align 4
  %fmul.36 = fmul float %.1153, %.1154
  %fadd.36 = fadd float %fmul.36, %.1155
  store float %fadd.36, ptr %R37, align 4
  %.1160 = load float, ptr %R41, align 4
  %.1161 = load float, ptr %R35, align 4
  %fmul.37 = fmul float %.1154, %.1160
  %fadd.37 = fadd float %fmul.37, %.1161
  store float %fadd.37, ptr %R35, align 4
  %.1165 = load float, ptr %R42, align 4
  %.1166 = load float, ptr %R44, align 4
  %.1167 = load float, ptr %R37, align 4
  %fmul.38 = fmul float %.1165, %.1166
  %fadd.38 = fadd float %fmul.38, %.1167
  store float %fadd.38, ptr %R37, align 4
  %.1172 = load float, ptr %R43, align 4
  %.1173 = load float, ptr %R35, align 4
  %fmul.39 = fmul float %.1166, %.1172
  %fadd.39 = fadd float %fmul.39, %.1173
  store float %fadd.39, ptr %R35, align 4
  %.1177 = load float, ptr %R46, align 4
  %.1178 = load float, ptr %R48, align 4
  %.1179 = load float, ptr %R37, align 4
  %fmul.40 = fmul float %.1177, %.1178
  %fadd.40 = fadd float %fmul.40, %.1179
  store float %fadd.40, ptr %R37, align 4
  %.1184 = load float, ptr %R45, align 4
  %.1185 = load float, ptr %R35, align 4
  %fmul.41 = fmul float %.1178, %.1184
  %fadd.41 = fadd float %fmul.41, %.1185
  store float %fadd.41, ptr %R35, align 4
  %.1189 = load float, ptr %R50, align 4
  %.1190 = load float, ptr %R56, align 4
  %.1191 = load float, ptr %R37, align 4
  %fmul.42 = fmul float %.1189, %.1190
  %fadd.42 = fadd float %fmul.42, %.1191
  store float %fadd.42, ptr %R37, align 4
  %.1196 = load float, ptr %R47, align 4
  %.1197 = load float, ptr %R35, align 4
  %fmul.43 = fmul float %.1190, %.1196
  %fadd.43 = fadd float %fmul.43, %.1197
  store float %fadd.43, ptr %R35, align 4
  %.1201 = load float, ptr %R25, align 4
  %.1202 = load float, ptr %R10, align 4
  %.1203 = load float, ptr %R37, align 4
  %fmul.44 = fmul float %.1201, %.1202
  %fadd.44 = fadd float %fmul.44, %.1203
  store float %fadd.44, ptr %R25, align 4
  %.1208 = load float, ptr %R19, align 4
  %.1209 = load float, ptr %R35, align 4
  %fmul.45 = fmul float %.1202, %.1208
  %fadd.45 = fadd float %fmul.45, %.1209
  store float %fadd.45, ptr %R19, align 4
  %.1213 = load float, ptr %R20, align 4
  %.1214 = load float, ptr %R18, align 4
  %.1215 = load float, ptr %R25, align 4
  %fmul.46 = fmul float %.1213, %.1214
  %fadd.46 = fadd float %fmul.46, %.1215
  store float %fadd.46, ptr %R52, align 4
  %.1220 = load float, ptr %R21, align 4
  %.1221 = load float, ptr %R19, align 4
  %fmul.47 = fmul float %.1214, %.1220
  %fadd.47 = fadd float %fmul.47, %.1221
  store float %fadd.47, ptr %R54, align 4
  br label %.L_x_6

.L_x_6:                                           ; preds = %.L_x_4_split_0x0a00, %.L_x_4
  br i1 false, label %.L_x_2, label %.L_x_3.preheader

.L_x_3.preheader:                                 ; preds = %.L_x_22_split_0x0280, %.L_x_6
  br label %.L_x_3

.L_x_3:                                           ; preds = %.L_x_3.preheader, %.L_x_3
  %.1238 = load i32, ptr %R11, align 4
  %.1239 = add i32 %imad_mul.1, %.1238
  store i32 %.1239, ptr %R13, align 4
  store i32 4, ptr %R16, align 4
  %shl.76 = shl i32 %imad_mul.5, 2
  %add.4 = add i32 %shl.76, %.1239
  store i32 %add.4, ptr %R17, align 4
  %imad_mul.28 = mul i32 %imad_mul.5, 3
  %imad_add.28 = add i32 %imad_mul.28, %.1239
  store i32 %imad_add.28, ptr %R15, align 4
  %.1253 = load i32, ptr %R11, align 4
  %.1254 = load i32, ptr %R16, align 4
  %imad_ext1.22 = zext i32 %.1253 to i64
  %imad_ext2.22 = zext i32 %.1254 to i64
  %imad_mul.29 = mul nuw i64 %imad_ext1.22, %imad_ext2.22
  %.1255 = ptrtoint ptr %Arg_1 to i64
  %imad_add.29 = add i64 %imad_mul.29, %.1255
  %.1257 = lshr i64 %imad_add.29, 32
  %trunc32.44 = trunc nuw i64 %.1257 to i32
  %trunc32.45 = trunc i64 %imad_add.29 to i32
  store i32 %trunc32.45, ptr %R12, align 4
  store i32 %trunc32.44, ptr %R13, align 4
  %.1261 = load i32, ptr %R15, align 4
  %.1262 = load i32, ptr %R16, align 4
  %imad_ext1.23 = zext i32 %.1261 to i64
  %imad_ext2.23 = zext i32 %.1262 to i64
  %imad_mul.30 = mul nuw i64 %imad_ext1.23, %imad_ext2.23
  %.1263 = ptrtoint ptr %Arg_2 to i64
  %imad_add.30 = add i64 %imad_mul.30, %.1263
  %.1265 = lshr i64 %imad_add.30, 32
  %trunc32.46 = trunc nuw i64 %.1265 to i32
  %trunc32.47 = trunc i64 %imad_add.30 to i32
  store i32 %trunc32.47, ptr %R14, align 4
  store i32 %trunc32.46, ptr %R15, align 4
  %.1269 = load i32, ptr %R17, align 4
  %.1270 = load i32, ptr %R16, align 4
  %imad_ext1.24 = zext i32 %.1269 to i64
  %imad_ext2.24 = zext i32 %.1270 to i64
  %imad_mul.31 = mul nuw i64 %imad_ext1.24, %imad_ext2.24
  %.1271 = ptrtoint ptr %Arg_2 to i64
  %imad_add.31 = add i64 %imad_mul.31, %.1271
  %.1273 = lshr i64 %imad_add.31, 32
  %trunc32.48 = trunc nuw i64 %.1273 to i32
  %trunc32.49 = trunc i64 %imad_add.31 to i32
  store i32 %trunc32.49, ptr %R16, align 4
  store i32 %trunc32.48, ptr %R17, align 4
  %.1277 = load i32, ptr %R12, align 4
  %zext.144 = zext i32 %.1277 to i64
  %.1278 = load i32, ptr %R13, align 4
  %zext.145 = zext i32 %.1278 to i64
  %shl.77 = shl nuw i64 %zext.145, 32
  %or.72 = or disjoint i64 %shl.77, %zext.144
  %inttoptr_bytes.72 = inttoptr i64 %or.72 to ptr addrspace(1)
  %.1279 = load float, ptr addrspace(1) %inttoptr_bytes.72, align 4
  store float %.1279, ptr %R21, align 4
  %.1283 = load i32, ptr %R14, align 4
  %zext.146 = zext i32 %.1283 to i64
  %.1284 = load i32, ptr %R15, align 4
  %zext.147 = zext i32 %.1284 to i64
  %shl.78 = shl nuw i64 %zext.147, 32
  %or.73 = or disjoint i64 %shl.78, %zext.146
  %inttoptr_bytes.73 = inttoptr i64 %or.73 to ptr addrspace(1)
  %.1285 = load float, ptr addrspace(1) %inttoptr_bytes.73, align 4
  store float %.1285, ptr %R19, align 4
  %.1289 = load i32, ptr %R16, align 4
  %zext.148 = zext i32 %.1289 to i64
  %.1290 = load i32, ptr %R17, align 4
  %zext.149 = zext i32 %.1290 to i64
  %shl.79 = shl nuw i64 %zext.149, 32
  %or.74 = or disjoint i64 %shl.79, %zext.148
  %inttoptr_bytes.74 = inttoptr i64 %or.74 to ptr addrspace(1)
  %.1291 = load float, ptr addrspace(1) %inttoptr_bytes.74, align 4
  store float %.1291, ptr %R10, align 4
  %.1295 = load i32, ptr %R12, align 4
  %zext.150 = zext i32 %.1295 to i64
  %.1296 = load i32, ptr %R13, align 4
  %zext.151 = zext i32 %.1296 to i64
  %shl.80 = shl nuw i64 %zext.151, 32
  %or.75 = or disjoint i64 %shl.80, %zext.150
  %ptr_plus_imm.54 = add i64 %or.75, 4
  %inttoptr_bytes.75 = inttoptr i64 %ptr_plus_imm.54 to ptr addrspace(1)
  %.1297 = load float, ptr addrspace(1) %inttoptr_bytes.75, align 4
  store float %.1297, ptr %R23, align 4
  %.1301 = load i32, ptr %R14, align 4
  %zext.152 = zext i32 %.1301 to i64
  %.1302 = load i32, ptr %R15, align 4
  %zext.153 = zext i32 %.1302 to i64
  %shl.81 = shl nuw i64 %zext.153, 32
  %or.76 = or disjoint i64 %shl.81, %zext.152
  %ptr_plus_imm.55 = add i64 %or.76, 4
  %inttoptr_bytes.76 = inttoptr i64 %ptr_plus_imm.55 to ptr addrspace(1)
  %.1303 = load float, ptr addrspace(1) %inttoptr_bytes.76, align 4
  store float %.1303, ptr %R18, align 4
  %.1307 = load i32, ptr %R16, align 4
  %zext.154 = zext i32 %.1307 to i64
  %.1308 = load i32, ptr %R17, align 4
  %zext.155 = zext i32 %.1308 to i64
  %shl.82 = shl nuw i64 %zext.155, 32
  %or.77 = or disjoint i64 %shl.82, %zext.154
  %ptr_plus_imm.56 = add i64 %or.77, 4
  %inttoptr_bytes.77 = inttoptr i64 %ptr_plus_imm.56 to ptr addrspace(1)
  %.1309 = load float, ptr addrspace(1) %inttoptr_bytes.77, align 4
  store float %.1309, ptr %R20, align 4
  %.1313 = load i32, ptr %R12, align 4
  %zext.156 = zext i32 %.1313 to i64
  %.1314 = load i32, ptr %R13, align 4
  %zext.157 = zext i32 %.1314 to i64
  %shl.83 = shl nuw i64 %zext.157, 32
  %or.78 = or disjoint i64 %shl.83, %zext.156
  %ptr_plus_imm.57 = add i64 %or.78, 8
  %inttoptr_bytes.78 = inttoptr i64 %ptr_plus_imm.57 to ptr addrspace(1)
  %.1315 = load float, ptr addrspace(1) %inttoptr_bytes.78, align 4
  store float %.1315, ptr %R35, align 4
  %.1319 = load i32, ptr %R14, align 4
  %zext.158 = zext i32 %.1319 to i64
  %.1320 = load i32, ptr %R15, align 4
  %zext.159 = zext i32 %.1320 to i64
  %shl.84 = shl nuw i64 %zext.159, 32
  %or.79 = or disjoint i64 %shl.84, %zext.158
  %ptr_plus_imm.58 = add i64 %or.79, 8
  %inttoptr_bytes.79 = inttoptr i64 %ptr_plus_imm.58 to ptr addrspace(1)
  %.1321 = load float, ptr addrspace(1) %inttoptr_bytes.79, align 4
  store float %.1321, ptr %R25, align 4
  %.1325 = load i32, ptr %R16, align 4
  %zext.160 = zext i32 %.1325 to i64
  %.1326 = load i32, ptr %R17, align 4
  %zext.161 = zext i32 %.1326 to i64
  %shl.85 = shl nuw i64 %zext.161, 32
  %or.80 = or disjoint i64 %shl.85, %zext.160
  %ptr_plus_imm.59 = add i64 %or.80, 8
  %inttoptr_bytes.80 = inttoptr i64 %ptr_plus_imm.59 to ptr addrspace(1)
  %.1327 = load float, ptr addrspace(1) %inttoptr_bytes.80, align 4
  store float %.1327, ptr %R22, align 4
  %.1331 = load i32, ptr %R12, align 4
  %zext.162 = zext i32 %.1331 to i64
  %.1332 = load i32, ptr %R13, align 4
  %zext.163 = zext i32 %.1332 to i64
  %shl.86 = shl nuw i64 %zext.163, 32
  %or.81 = or disjoint i64 %shl.86, %zext.162
  %ptr_plus_imm.60 = add i64 %or.81, 12
  %inttoptr_bytes.81 = inttoptr i64 %ptr_plus_imm.60 to ptr addrspace(1)
  %.1333 = load float, ptr addrspace(1) %inttoptr_bytes.81, align 4
  store float %.1333, ptr %R39, align 4
  %.1337 = load i32, ptr %R14, align 4
  %zext.164 = zext i32 %.1337 to i64
  %.1338 = load i32, ptr %R15, align 4
  %zext.165 = zext i32 %.1338 to i64
  %shl.87 = shl nuw i64 %zext.165, 32
  %or.82 = or disjoint i64 %shl.87, %zext.164
  %ptr_plus_imm.61 = add i64 %or.82, 12
  %inttoptr_bytes.82 = inttoptr i64 %ptr_plus_imm.61 to ptr addrspace(1)
  %.1339 = load float, ptr addrspace(1) %inttoptr_bytes.82, align 4
  store float %.1339, ptr %R37, align 4
  %.1343 = load i32, ptr %R16, align 4
  %zext.166 = zext i32 %.1343 to i64
  %.1344 = load i32, ptr %R17, align 4
  %zext.167 = zext i32 %.1344 to i64
  %shl.88 = shl nuw i64 %zext.167, 32
  %or.83 = or disjoint i64 %shl.88, %zext.166
  %ptr_plus_imm.62 = add i64 %or.83, 12
  %inttoptr_bytes.83 = inttoptr i64 %ptr_plus_imm.62 to ptr addrspace(1)
  %.1345 = load float, ptr addrspace(1) %inttoptr_bytes.83, align 4
  store float %.1345, ptr %R24, align 4
  %.1349 = load i32, ptr %R9, align 4
  %.1350 = add i32 %.1349, -4
  store i32 %.1350, ptr %R9, align 4
  %.1354 = load i32, ptr %R11, align 4
  %.1355 = add i32 %.1354, 4
  store i32 %.1355, ptr %R11, align 4
  %cmp.11.not = icmp eq i32 %.1350, 0
  %.1366 = load float, ptr %R19, align 4
  %.1367 = load float, ptr %R21, align 4
  %.1368 = load float, ptr %R52, align 4
  %fmul.48 = fmul float %.1366, %.1367
  %fadd.48 = fadd float %fmul.48, %.1368
  store float %fadd.48, ptr %R19, align 4
  %.1373 = load float, ptr %R10, align 4
  %.1374 = load float, ptr %R54, align 4
  %fmul.49 = fmul float %.1367, %.1373
  %fadd.49 = fadd float %fmul.49, %.1374
  store float %fadd.49, ptr %R10, align 4
  %.1378 = load float, ptr %R18, align 4
  %.1379 = load float, ptr %R23, align 4
  %.1380 = load float, ptr %R19, align 4
  %fmul.50 = fmul float %.1378, %.1379
  %fadd.50 = fadd float %fmul.50, %.1380
  store float %fadd.50, ptr %R18, align 4
  %.1385 = load float, ptr %R20, align 4
  %.1386 = load float, ptr %R10, align 4
  %fmul.51 = fmul float %.1379, %.1385
  %fadd.51 = fadd float %fmul.51, %.1386
  store float %fadd.51, ptr %R10, align 4
  %.1390 = load float, ptr %R25, align 4
  %.1391 = load float, ptr %R35, align 4
  %.1392 = load float, ptr %R18, align 4
  %fmul.52 = fmul float %.1390, %.1391
  %fadd.52 = fadd float %fmul.52, %.1392
  store float %fadd.52, ptr %R18, align 4
  %.1397 = load float, ptr %R22, align 4
  %.1398 = load float, ptr %R10, align 4
  %fmul.53 = fmul float %.1391, %.1397
  %fadd.53 = fadd float %fmul.53, %.1398
  store float %fadd.53, ptr %R10, align 4
  %.1402 = load float, ptr %R37, align 4
  %.1403 = load float, ptr %R39, align 4
  %.1404 = load float, ptr %R18, align 4
  %fmul.54 = fmul float %.1402, %.1403
  %fadd.54 = fadd float %fmul.54, %.1404
  store float %fadd.54, ptr %R52, align 4
  %.1409 = load float, ptr %R24, align 4
  %.1410 = load float, ptr %R10, align 4
  %fmul.55 = fmul float %.1403, %.1409
  %fadd.55 = fadd float %fmul.55, %.1410
  store float %fadd.55, ptr %R54, align 4
  br i1 %cmp.11.not, label %.L_x_2.loopexit, label %.L_x_3

.L_x_2.loopexit:                                  ; preds = %.L_x_3
  br label %.L_x_2

.L_x_2:                                           ; preds = %.L_x_2.loopexit, %.L_x_6, %.L_x_22_split_0x0230
  %.1418 = load i32, ptr %R4, align 4
  %cmp.12.not = icmp eq i32 %.1418, 0
  br i1 %cmp.12.not, label %.L_x_1, label %.L_x_2_split_0x0fb0

.L_x_2_split_0x0fb0:                              ; preds = %.L_x_2
  %.1430 = load i32, ptr %R11, align 4
  %.1431 = add i32 %imad_mul.1, %.1430
  store i32 %.1431, ptr %R9, align 4
  store i32 4, ptr %R15, align 4
  %shl.89 = shl i32 %imad_mul.5, 2
  %add.5 = add i32 %shl.89, %.1431
  store i32 %add.5, ptr %R14, align 4
  %imad_mul.32 = mul i32 %imad_mul.5, 3
  %imad_add.32 = add i32 %imad_mul.32, %.1431
  store i32 %imad_add.32, ptr %R12, align 4
  %.1445 = load i32, ptr %R11, align 4
  %.1446 = load i32, ptr %R15, align 4
  %imad_ext1.25 = zext i32 %.1445 to i64
  %imad_ext2.25 = zext i32 %.1446 to i64
  %imad_mul.33 = mul nuw i64 %imad_ext1.25, %imad_ext2.25
  %.1447 = ptrtoint ptr %Arg_1 to i64
  %imad_add.33 = add i64 %imad_mul.33, %.1447
  %.1449 = lshr i64 %imad_add.33, 32
  %trunc32.50 = trunc nuw i64 %.1449 to i32
  %trunc32.51 = trunc i64 %imad_add.33 to i32
  store i32 %trunc32.51, ptr %R10, align 4
  store i32 %trunc32.50, ptr %R11, align 4
  %.1453 = load i32, ptr %R12, align 4
  %.1454 = load i32, ptr %R15, align 4
  %imad_ext1.26 = zext i32 %.1453 to i64
  %imad_ext2.26 = zext i32 %.1454 to i64
  %imad_mul.34 = mul nuw i64 %imad_ext1.26, %imad_ext2.26
  %.1455 = ptrtoint ptr %Arg_2 to i64
  %imad_add.34 = add i64 %imad_mul.34, %.1455
  %.1457 = lshr i64 %imad_add.34, 32
  %trunc32.52 = trunc nuw i64 %.1457 to i32
  %trunc32.53 = trunc i64 %imad_add.34 to i32
  store i32 %trunc32.53, ptr %R12, align 4
  store i32 %trunc32.52, ptr %R13, align 4
  %.1461 = load i32, ptr %R14, align 4
  %.1462 = load i32, ptr %R15, align 4
  %imad_ext1.27 = zext i32 %.1461 to i64
  %imad_ext2.27 = zext i32 %.1462 to i64
  %imad_mul.35 = mul nuw i64 %imad_ext1.27, %imad_ext2.27
  %.1463 = ptrtoint ptr %Arg_2 to i64
  %imad_add.35 = add i64 %imad_mul.35, %.1463
  %.1465 = lshr i64 %imad_add.35, 32
  %trunc32.54 = trunc nuw i64 %.1465 to i32
  %trunc32.55 = trunc i64 %imad_add.35 to i32
  store i32 %trunc32.55, ptr %R14, align 4
  store i32 %trunc32.54, ptr %R15, align 4
  %.1469 = load i32, ptr %R10, align 4
  %zext.168 = zext i32 %.1469 to i64
  %.1470 = load i32, ptr %R11, align 4
  %zext.169 = zext i32 %.1470 to i64
  %shl.90 = shl nuw i64 %zext.169, 32
  %or.84 = or disjoint i64 %shl.90, %zext.168
  %inttoptr_bytes.84 = inttoptr i64 %or.84 to ptr addrspace(1)
  %.1471 = load float, ptr addrspace(1) %inttoptr_bytes.84, align 4
  store float %.1471, ptr %R17, align 4
  %.1475 = load i32, ptr %R12, align 4
  %zext.170 = zext i32 %.1475 to i64
  %.1476 = load i32, ptr %R13, align 4
  %zext.171 = zext i32 %.1476 to i64
  %shl.91 = shl nuw i64 %zext.171, 32
  %or.85 = or disjoint i64 %shl.91, %zext.170
  %inttoptr_bytes.85 = inttoptr i64 %or.85 to ptr addrspace(1)
  %.1477 = load float, ptr addrspace(1) %inttoptr_bytes.85, align 4
  store float %.1477, ptr %R9, align 4
  %.1481 = load i32, ptr %R14, align 4
  %zext.172 = zext i32 %.1481 to i64
  %.1482 = load i32, ptr %R15, align 4
  %zext.173 = zext i32 %.1482 to i64
  %shl.92 = shl nuw i64 %zext.173, 32
  %or.86 = or disjoint i64 %shl.92, %zext.172
  %inttoptr_bytes.86 = inttoptr i64 %or.86 to ptr addrspace(1)
  %.1483 = load float, ptr addrspace(1) %inttoptr_bytes.86, align 4
  store float %.1483, ptr %R16, align 4
  %.1487 = load i32, ptr %R4, align 4
  %cmp.13.not = icmp eq i32 %.1487, 1
  %.1494 = load float, ptr %R9, align 4
  %.1495 = load float, ptr %R17, align 4
  %.1496 = load float, ptr %R52, align 4
  %fmul.56 = fmul float %.1494, %.1495
  %fadd.56 = fadd float %fmul.56, %.1496
  store float %fadd.56, ptr %R52, align 4
  %.1501 = load float, ptr %R16, align 4
  %.1502 = load float, ptr %R54, align 4
  %fmul.57 = fmul float %.1495, %.1501
  %fadd.57 = fadd float %fmul.57, %.1502
  store float %fadd.57, ptr %R54, align 4
  br i1 %cmp.13.not, label %.L_x_1, label %.L_x_2_split_0x1090

.L_x_2_split_0x1090:                              ; preds = %.L_x_2_split_0x0fb0
  %.1510 = load i32, ptr %R4, align 4
  %cmp.14.not = icmp eq i32 %.1510, 2
  %.1517 = load i32, ptr %R12, align 4
  %zext.174 = zext i32 %.1517 to i64
  %.1518 = load i32, ptr %R13, align 4
  %zext.175 = zext i32 %.1518 to i64
  %shl.93 = shl nuw i64 %zext.175, 32
  %or.87 = or disjoint i64 %shl.93, %zext.174
  %ptr_plus_imm.63 = add i64 %or.87, 4
  %inttoptr_bytes.87 = inttoptr i64 %ptr_plus_imm.63 to ptr addrspace(1)
  %.1519 = load float, ptr addrspace(1) %inttoptr_bytes.87, align 4
  store float %.1519, ptr %R9, align 4
  %.1523 = load i32, ptr %R10, align 4
  %zext.176 = zext i32 %.1523 to i64
  %.1524 = load i32, ptr %R11, align 4
  %zext.177 = zext i32 %.1524 to i64
  %shl.94 = shl nuw i64 %zext.177, 32
  %or.88 = or disjoint i64 %shl.94, %zext.176
  %ptr_plus_imm.64 = add i64 %or.88, 4
  %inttoptr_bytes.88 = inttoptr i64 %ptr_plus_imm.64 to ptr addrspace(1)
  %.1525 = load float, ptr addrspace(1) %inttoptr_bytes.88, align 4
  store float %.1525, ptr %R17, align 4
  %.1529 = load i32, ptr %R14, align 4
  %zext.178 = zext i32 %.1529 to i64
  %.1530 = load i32, ptr %R15, align 4
  %zext.179 = zext i32 %.1530 to i64
  %shl.95 = shl nuw i64 %zext.179, 32
  %or.89 = or disjoint i64 %shl.95, %zext.178
  %ptr_plus_imm.65 = add i64 %or.89, 4
  %inttoptr_bytes.89 = inttoptr i64 %ptr_plus_imm.65 to ptr addrspace(1)
  %.1531 = load float, ptr addrspace(1) %inttoptr_bytes.89, align 4
  store float %.1531, ptr %R16, align 4
  br i1 %cmp.14.not, label %.L_x_2_split_0x1100, label %.L_x_2_split_0x1090_conditionalExpr_0x10d0

.L_x_2_split_0x1090_conditionalExpr_0x10d0:       ; preds = %.L_x_2_split_0x1090
  %.1539 = load i32, ptr %R12, align 4
  %zext.180 = zext i32 %.1539 to i64
  %.1540 = load i32, ptr %R13, align 4
  %zext.181 = zext i32 %.1540 to i64
  %shl.96 = shl nuw i64 %zext.181, 32
  %or.90 = or disjoint i64 %shl.96, %zext.180
  %ptr_plus_imm.66 = add i64 %or.90, 8
  %inttoptr_bytes.90 = inttoptr i64 %ptr_plus_imm.66 to ptr addrspace(1)
  %.1541 = load float, ptr addrspace(1) %inttoptr_bytes.90, align 4
  store float %.1541, ptr %R19, align 4
  %.1551 = load i32, ptr %R10, align 4
  %zext.182 = zext i32 %.1551 to i64
  %.1552 = load i32, ptr %R11, align 4
  %zext.183 = zext i32 %.1552 to i64
  %shl.97 = shl nuw i64 %zext.183, 32
  %or.91 = or disjoint i64 %shl.97, %zext.182
  %ptr_plus_imm.67 = add i64 %or.91, 8
  %inttoptr_bytes.91 = inttoptr i64 %ptr_plus_imm.67 to ptr addrspace(1)
  %.1553 = load float, ptr addrspace(1) %inttoptr_bytes.91, align 4
  store float %.1553, ptr %R21, align 4
  %.1563 = load i32, ptr %R14, align 4
  %zext.184 = zext i32 %.1563 to i64
  %.1564 = load i32, ptr %R15, align 4
  %zext.185 = zext i32 %.1564 to i64
  %shl.98 = shl nuw i64 %zext.185, 32
  %or.92 = or disjoint i64 %shl.98, %zext.184
  %ptr_plus_imm.68 = add i64 %or.92, 8
  %inttoptr_bytes.92 = inttoptr i64 %ptr_plus_imm.68 to ptr addrspace(1)
  %.1565 = load float, ptr addrspace(1) %inttoptr_bytes.92, align 4
  store float %.1565, ptr %R18, align 4
  br label %.L_x_2_split_0x1100

.L_x_2_split_0x1100:                              ; preds = %.L_x_2_split_0x1090, %.L_x_2_split_0x1090_conditionalExpr_0x10d0
  %.1571 = load float, ptr %R9, align 4
  %.1572 = load float, ptr %R17, align 4
  %.1573 = load float, ptr %R52, align 4
  %fmul.58 = fmul float %.1571, %.1572
  %fadd.58 = fadd float %fmul.58, %.1573
  store float %fadd.58, ptr %R52, align 4
  %.1578 = load float, ptr %R16, align 4
  %.1579 = load float, ptr %R54, align 4
  %fmul.59 = fmul float %.1572, %.1578
  %fadd.59 = fadd float %fmul.59, %.1579
  store float %fadd.59, ptr %R54, align 4
  br i1 %cmp.14.not, label %.L_x_1, label %.L_x_2_split_0x1100_conditionalExpr_0x1120

.L_x_2_split_0x1100_conditionalExpr_0x1120:       ; preds = %.L_x_2_split_0x1100
  %.1587 = load float, ptr %R19, align 4
  %.1588 = load float, ptr %R21, align 4
  %.1589 = load float, ptr %R52, align 4
  %fmul.60 = fmul float %.1587, %.1588
  %fadd.60 = fadd float %fmul.60, %.1589
  store float %fadd.60, ptr %R52, align 4
  %.1600 = load float, ptr %R18, align 4
  %.1601 = load float, ptr %R54, align 4
  %fmul.61 = fmul float %.1588, %.1600
  %fadd.61 = fadd float %fmul.61, %.1601
  store float %fadd.61, ptr %R54, align 4
  br label %.L_x_1

.L_x_1:                                           ; preds = %.L_x_2_split_0x1100, %.L_x_2_split_0x1100_conditionalExpr_0x1120, %.L_x_2_split_0x0fb0, %.L_x_2, %.L_x_22
  %inttoptr_bytes.93 = inttoptr i64 %imad_add.2 to ptr addrspace(1)
  %.1609 = load float, ptr addrspace(1) %inttoptr_bytes.93, align 4
  store float %.1609, ptr %R9, align 4
  store float 0x41CDDDCC40000000, ptr %R10, align 4
  store float 0x41D0DF0000000000, ptr %R11, align 4
  %.1622 = load float, ptr %R52, align 4
  %fadd.62 = fadd float %.1609, %.1622
  store float %fadd.62, ptr %R9, align 4
  %fmul.62 = fmul float %fadd.62, 0xC1CDDDCC40000000
  %fadd.63 = fadd float %fmul.62, 5.000000e-01
  store float %fadd.63, ptr %R10, align 4
  %.1633 = load float, ptr %R11, align 4
  %fmul.63 = fmul float %fadd.63, %.1633
  %fadd.64 = fadd float %fmul.63, 0x4168000020000000
  store float %fadd.64, ptr %R10, align 4
  %fadd.65 = fadd float %fadd.64, 0xC168000FE0000000
  store float %fadd.65, ptr %R12, align 4
  %.1642.cast = bitcast float %fadd.64 to i32
  %shl.101 = shl i32 %.1642.cast, 23
  store i32 %shl.101, ptr %R10, align 4
  %.1645 = load float, ptr %R9, align 4
  %fmul.64 = fmul float %.1645, 0xBFF7154760000000
  %fadd.66 = fsub float %fmul.64, %fadd.65
  %fmul.65 = fmul float %.1645, 0xBE54AE0C00000000
  %fadd.67 = fadd float %fmul.65, %fadd.66
  store float %fadd.67, ptr %R12, align 4
  %llvm_exp2_f32_result = tail call float @llvm.exp2.f32(float %fadd.67)
  store float %llvm_exp2_f32_result, ptr %R9, align 4
  %.1662 = load float, ptr %R10, align 4
  %fmul.66 = fmul float %.1662, %llvm_exp2_f32_result
  %fadd.68 = fadd float %fmul.66, 1.000000e+00
  store float %fadd.68, ptr %R24, align 4
  %.1667.cast = bitcast float %fadd.68 to i32
  %.1668 = add i32 %.1667.cast, 25165824
  %.1674 = and i32 %.1668, 2139095040
  store i32 %.1674, ptr %R9, align 4
  %cmp.15 = icmp samesign ugt i32 %.1674, 33554431
  br i1 %cmp.15, label %.L_x_8, label %.L_x_1_split_0x1260_CALL_0x1290

.L_x_1_split_0x1260_CALL_0x1290:                  ; preds = %.L_x_1
  store i32 4736, ptr %R10, align 4
  %.1693 = load i32, ptr %R24, align 4
  %shl.103 = shl i32 %.1693, 1
  store i32 %shl.103, ptr %R11, align 4
  %0 = lshr i32 %shl.103, 24
  store i32 %0, ptr %R25, align 4
  %cmp.16 = icmp ugt i32 %shl.103, 16777215
  br i1 %cmp.16, label %.L_x_49...1, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1": ; preds = %.L_x_1_split_0x1260_CALL_0x1290
  %.1714 = load i32, ptr %R24, align 4
  %shl.106 = shl i32 %.1714, 1
  store i32 %shl.106, ptr %R11, align 4
  %cmp.17.not = icmp eq i32 %shl.106, 0
  br i1 %cmp.17.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1_conditionalExpr_0x4980"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1_conditionalExpr_0x4980": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1"
  %.1728 = load float, ptr %R24, align 4
  %fmul.67 = fmul float %.1728, 0x43F0000000000000
  %fadd.69 = fadd float %fmul.67, 0.000000e+00
  store float %fadd.69, ptr %R12, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1_conditionalExpr_0x4980", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1"
  %.1734 = load float, ptr %R24, align 4
  %fmul.68 = fmul float %.1734, 0x43F0000000000000
  %fadd.70 = fadd float %fmul.68, 0.000000e+00
  store float %fadd.70, ptr %R12, align 4
  br i1 %cmp.17.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1_conditionalExpr_0x4990": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1"
  %.1744 = load float, ptr %R24, align 4
  %.1745 = fdiv float 1.000000e+00, %.1744
  store float %.1745, ptr %R11, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1_conditionalExpr_0x4990", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1"
  %.1751 = load float, ptr %R24, align 4
  %.1752 = fdiv float 1.000000e+00, %.1751
  store float %.1752, ptr %R11, align 4
  br i1 %cmp.17.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1_conditionalExpr_0x49a0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1_conditionalExpr_0x49a0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"
  %.1762 = load float, ptr %R12, align 4
  %.1763 = fdiv float 1.000000e+00, %.1762
  store float %.1763, ptr %R13, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1_conditionalExpr_0x49a0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"
  %.1769 = load float, ptr %R12, align 4
  %.1770 = fdiv float 1.000000e+00, %.1769
  store float %.1770, ptr %R13, align 4
  br i1 %cmp.17.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1_conditionalExpr_0x49b0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1_conditionalExpr_0x49b0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1"
  %.1780 = load float, ptr %R12, align 4
  %.1781 = load float, ptr %R13, align 4
  %fmul.69 = fmul float %.1780, %.1781
  %fadd.71 = fadd float %fmul.69, -1.000000e+00
  store float %fadd.71, ptr %R22, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1_conditionalExpr_0x49b0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1"
  %.1787 = load float, ptr %R12, align 4
  %.1788 = load float, ptr %R13, align 4
  %fmul.70 = fmul float %.1787, %.1788
  %fadd.72 = fadd float %fmul.70, -1.000000e+00
  store float %fadd.72, ptr %R22, align 4
  br i1 %cmp.17.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1_conditionalExpr_0x49c0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1_conditionalExpr_0x49c0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1"
  %.1798 = load float, ptr %R22, align 4
  %.1803 = tail call i1 @llvm.is.fpclass.f32(float %.1798, i32 144)
  %1 = fsub float 0.000000e+00, %.1798
  %2 = tail call i1 @llvm.is.fpclass.f32(float %1, i32 144)
  %3 = select i1 %.1803, i1 true, i1 %2
  %.1814 = select i1 %3, float 0.000000e+00, float %1
  store float %.1814, ptr %R22, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1_conditionalExpr_0x49c0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1"
  %.1820 = load float, ptr %R22, align 4
  %.1825 = tail call i1 @llvm.is.fpclass.f32(float %.1820, i32 144)
  %4 = fsub float 0.000000e+00, %.1820
  %5 = tail call i1 @llvm.is.fpclass.f32(float %4, i32 144)
  %6 = select i1 %.1825, i1 true, i1 %5
  %.1836 = select i1 %6, float 0.000000e+00, float %4
  store float %.1836, ptr %R22, align 4
  br i1 %cmp.17.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1_conditionalExpr_0x49d0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1_conditionalExpr_0x49d0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1"
  %.1846 = load float, ptr %R13, align 4
  %.1847 = load float, ptr %R22, align 4
  %fmul.71 = fmul float %.1846, %.1847
  %fadd.75 = fadd float %fmul.71, %.1846
  store float %fadd.75, ptr %R22, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1_conditionalExpr_0x49d0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1"
  %.1854 = load float, ptr %R13, align 4
  %.1855 = load float, ptr %R22, align 4
  %fmul.72 = fmul float %.1854, %.1855
  %fadd.76 = fadd float %fmul.72, %.1854
  store float %fadd.76, ptr %R22, align 4
  br i1 %cmp.17.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1_conditionalExpr_0x49e0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1_conditionalExpr_0x49e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1"
  %.1866 = load float, ptr %R22, align 4
  %fmul.73 = fmul float %.1866, 0x43F0000000000000
  %fadd.77 = fadd float %fmul.73, 0.000000e+00
  store float %fadd.77, ptr %R11, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1_conditionalExpr_0x49e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1"
  %.1872 = load float, ptr %R22, align 4
  %fmul.74 = fmul float %.1872, 0x43F0000000000000
  %fadd.78 = fadd float %fmul.74, 0.000000e+00
  store float %fadd.78, ptr %R11, align 4
  br label %.L_x_48...1

.L_x_49...1:                                      ; preds = %.L_x_1_split_0x1260_CALL_0x1290
  %.1880 = load i32, ptr %R25, align 4
  %.1881 = add i32 %.1880, -253
  store i32 %.1881, ptr %R34, align 4
  %cmp.18 = icmp sgt i32 %.1881, 1
  br i1 %cmp.18, label %.L_x_51...1, label %.L_x_49_split_0x4a30...1

.L_x_49_split_0x4a30...1:                         ; preds = %.L_x_49...1
  %.1896 = load i32, ptr %R24, align 4
  %.1898 = and i32 %.1896, 8388607
  store i32 %.1898, ptr %R11, align 4
  store i32 3, ptr %R23, align 4
  %.1905 = or disjoint i32 %.1898, 1065353216
  store i32 %.1905, ptr %R11, align 4
  %.1911 = load i32, ptr %R34, align 4
  %zext.202 = zext nneg i32 %.1911 to i64
  %shl.108 = shl i64 3, %zext.202
  %trunc32.60 = trunc i64 %shl.108 to i32
  store i32 %trunc32.60, ptr %R23, align 4
  %sint_to_f32 = uitofp nneg i32 %.1905 to float
  %.1915 = fdiv float 1.000000e+00, %sint_to_f32
  %.1916 = fptosi float %.1915 to i32
  store i32 %.1916, ptr %R12, align 4
  %.1919 = load float, ptr %R11, align 4
  %.1920.cast = bitcast i32 %.1916 to float
  %fmul.75 = fmul float %.1919, %.1920.cast
  %fadd.79 = fadd float %fmul.75, -1.000000e+00
  %.1929 = tail call i1 @llvm.is.fpclass.f32(float %fadd.79, i32 144)
  %7 = fsub float 0.000000e+00, %fadd.79
  %8 = tail call i1 @llvm.is.fpclass.f32(float %7, i32 144)
  %9 = select i1 %.1929, i1 true, i1 %8
  %.1940 = select i1 %9, float 0.000000e+00, float %7
  store float %.1940, ptr %R13, align 4
  %.1944 = load float, ptr %R12, align 4
  %fmul.76 = fmul float %.1944, %.1940
  %fadd.81 = fadd float %fmul.76, %.1944
  store float %fadd.81, ptr %R22, align 4
  %fmul.77 = fmul float %.1944, %.1940
  %fadd.82 = fadd float %fmul.77, %.1944
  store float %fadd.82, ptr %R13, align 4
  %.1956.cast = bitcast float %fadd.81 to i32
  %.1958 = and i32 %.1956.cast, 8388607
  store i32 %.1958, ptr %R12, align 4
  %.1961 = load float, ptr %R22, align 4
  %.1967 = tail call i1 @llvm.is.fpclass.f32(float %.1961, i32 144)
  %.1968 = select i1 %.1967, float 0.000000e+00, float %.1961
  %.1972 = tail call i1 @llvm.is.fpclass.f32(float %fadd.82, i32 144)
  %.1973 = select i1 %.1972, float 0.000000e+00, float %fadd.82
  %fcmp_ordered = fcmp une float %.1968, %.1973
  %.1979 = load i32, ptr %R12, align 4
  %.1981 = or i32 %.1979, 8388608
  store i32 %.1981, ptr %R12, align 4
  %sel.neg = zext i1 %fcmp_ordered to i32
  %sel = sext i1 %fcmp_ordered to i32
  store i32 %sel, ptr %R13, align 4
  %.1989 = load i32, ptr %R23, align 4
  %.1992 = and i32 %.1989, %.1981
  store i32 %.1992, ptr %R23, align 4
  store i32 %sel.neg, ptr %R13, align 4
  %.2004 = load i32, ptr %R34, align 4
  %zext.203 = zext i32 %.1992 to i64
  %zext.205 = zext nneg i32 %.2004 to i64
  %shl.109 = shl nuw i64 %zext.203, 32
  %lshr.2 = lshr i64 %shl.109, %zext.205
  %lshr.3 = lshr i64 %lshr.2, 32
  %trunc32.61 = trunc nuw i64 %lshr.3 to i32
  store i32 %trunc32.61, ptr %R23, align 4
  %.2020 = and i32 %trunc32.61, 1
  %.2037 = load i32, ptr %R24, align 4
  %.2039 = and i32 %.2037, 8388607
  %.2041.not = icmp eq i32 %.2039, 0
  %.2050 = sub nsw i32 0, %.2020
  store i32 %.2050, ptr %R11, align 4
  %cmp.19.not = icmp eq i32 %.2020, 0
  %.2062 = load i32, ptr %R25, align 4
  %.2063 = add i32 %.2062, -252
  store i32 %.2063, ptr %R11, align 4
  %.2069 = load i32, ptr %R12, align 4
  %zext.206 = zext i32 %.2069 to i64
  %zext.208 = zext nneg i32 %.2063 to i64
  %shl.110 = shl nuw i64 %zext.206, 32
  %lshr.4 = lshr i64 %shl.110, %zext.208
  %lshr.5 = lshr i64 %lshr.4, 32
  %trunc32.62 = trunc nuw i64 %lshr.5 to i32
  store i32 %trunc32.62, ptr %R11, align 4
  br i1 %cmp.19.not, label %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1, label %.L_x_49_split_0x4a30...1_conditionalExpr_0x4bd0

.L_x_49_split_0x4a30...1_conditionalExpr_0x4bd0:  ; preds = %.L_x_49_split_0x4a30...1
  %.2077 = load i32, ptr %R11, align 4
  %.2078 = add i32 %.2077, 1
  store i32 %.2078, ptr %R11, align 4
  br label %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1

.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1:  ; preds = %.L_x_49_split_0x4a30...1_conditionalExpr_0x4bd0, %.L_x_49_split_0x4a30...1
  %.2084 = load i32, ptr %R11, align 4
  %.2085 = add i32 %.2084, 1
  store i32 %.2085, ptr %R11, align 4
  br i1 %.2041.not, label %.L_x_49_split_0x4be0...1_conditionalExpr_0x4be0, label %.L_x_49_split_0x4be0_conditionalExpr_0x4be0...1

.L_x_49_split_0x4be0...1_conditionalExpr_0x4be0:  ; preds = %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1
  %.2096 = load i32, ptr %R11, align 4
  %shl.112 = shl i32 %.2096, 1
  store i32 %shl.112, ptr %R11, align 4
  br label %.L_x_49_split_0x4be0_conditionalExpr_0x4be0...1

.L_x_49_split_0x4be0_conditionalExpr_0x4be0...1:  ; preds = %.L_x_49_split_0x4be0...1_conditionalExpr_0x4be0, %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1
  %.2102 = load i32, ptr %R11, align 4
  %shl.114 = shl i32 %.2102, 1
  store i32 %shl.114, ptr %R11, align 4
  %.2108 = load i32, ptr %R24, align 4
  %.211117 = and i32 %.2108, -2147483648
  %.2112 = or i32 %shl.114, %.211117
  store i32 %.2112, ptr %R11, align 4
  br label %.L_x_48...1

.L_x_51...1:                                      ; preds = %.L_x_49...1
  %.2117 = load float, ptr %R24, align 4
  %.2118 = fdiv float 1.000000e+00, %.2117
  store float %.2118, ptr %R11, align 4
  br label %.L_x_48...1

.L_x_48...1:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1", %.L_x_49_split_0x4be0_conditionalExpr_0x4be0...1, %.L_x_51...1
  %.2125 = load float, ptr %R11, align 4
  store float %.2125, ptr %R22, align 4
  store i32 0, ptr %R11, align 4
  br label %.L_x_7

.L_x_8:                                           ; preds = %.L_x_1
  %.2142 = load float, ptr %R24, align 4
  %.2143 = fdiv float 1.000000e+00, %.2142
  store float %.2143, ptr %R9, align 4
  %fmul.78 = fmul float %.2142, %.2143
  %fadd.83 = fadd float %fmul.78, -1.000000e+00
  %.2157 = tail call i1 @llvm.is.fpclass.f32(float %fadd.83, i32 144)
  %10 = fsub float 0.000000e+00, %fadd.83
  %11 = tail call i1 @llvm.is.fpclass.f32(float %10, i32 144)
  %12 = select i1 %.2157, i1 true, i1 %11
  %.2168 = select i1 %12, float 0.000000e+00, float %10
  store float %.2168, ptr %R10, align 4
  %.2172 = load float, ptr %R9, align 4
  %fmul.79 = fmul float %.2172, %.2168
  %fadd.85 = fadd float %fmul.79, %.2172
  br label %.L_x_7

.L_x_7:                                           ; preds = %.L_x_48...1, %.L_x_8
  %storemerge = phi float [ %fadd.85, %.L_x_8 ], [ %.2125, %.L_x_48...1 ]
  store float %storemerge, ptr %R9, align 4
  %inttoptr_bytes.94 = inttoptr i64 %imad_add.7 to ptr addrspace(1)
  %.2183 = load float, ptr addrspace(1) %inttoptr_bytes.94, align 4
  store float %.2183, ptr %R11, align 4
  store float 0x41CDDDCC40000000, ptr %R10, align 4
  store float 0x41D0DF0000000000, ptr %R13, align 4
  %.2194 = load float, ptr %R54, align 4
  %fadd.86 = fadd float %.2183, %.2194
  store float %fadd.86, ptr %R11, align 4
  %fmul.80 = fmul float %fadd.86, 0xC1CDDDCC40000000
  %fadd.87 = fadd float %fmul.80, 5.000000e-01
  store float %fadd.87, ptr %R10, align 4
  %.2205 = load float, ptr %R13, align 4
  %fmul.81 = fmul float %fadd.87, %.2205
  %fadd.88 = fadd float %fmul.81, 0x4168000020000000
  store float %fadd.88, ptr %R10, align 4
  %fadd.89 = fadd float %fadd.88, 0xC168000FE0000000
  store float %fadd.89, ptr %R12, align 4
  %.2214.cast = bitcast float %fadd.88 to i32
  %shl.117 = shl i32 %.2214.cast, 23
  store i32 %shl.117, ptr %R20, align 4
  %.2217 = load float, ptr %R11, align 4
  %fmul.82 = fmul float %.2217, 0xBFF7154760000000
  %fadd.90 = fsub float %fmul.82, %fadd.89
  %fmul.83 = fmul float %.2217, 0xBE54AE0C00000000
  %fadd.91 = fadd float %fmul.83, %fadd.90
  store float %fadd.91, ptr %R12, align 4
  %llvm_exp2_f32_result.1 = tail call float @llvm.exp2.f32(float %fadd.91)
  store float %llvm_exp2_f32_result.1, ptr %R11, align 4
  %.2234 = load float, ptr %R20, align 4
  %fmul.84 = fmul float %.2234, %llvm_exp2_f32_result.1
  %fadd.92 = fadd float %fmul.84, 1.000000e+00
  store float %fadd.92, ptr %R20, align 4
  br i1 %cmp.3, label %.L_x_10, label %.L_x_7_split_0x13c0

.L_x_7_split_0x13c0:                              ; preds = %.L_x_7
  %.2243 = load i32, ptr %R5, align 4
  %cmp.20 = icmp slt i32 %.2243, 3
  store float 0.000000e+00, ptr %R8, align 4
  store i32 0, ptr %R22, align 4
  br i1 %cmp.20, label %.L_x_11, label %.L_x_7_split_0x1400

.L_x_7_split_0x1400:                              ; preds = %.L_x_7_split_0x13c0
  %.2259 = load i32, ptr %R7, align 4
  %cmp.21 = icmp sgt i32 %.2259, 0
  store float 0.000000e+00, ptr %R8, align 4
  store i32 0, ptr %R22, align 4
  store i32 %.2259, ptr %R23, align 4
  br i1 %cmp.21, label %.L_x_7_split_0x1450, label %.L_x_12.preheader

.L_x_7_split_0x1450:                              ; preds = %.L_x_7_split_0x1400
  %.2278 = load i32, ptr %R23, align 4
  %cmp.22 = icmp slt i32 %.2278, 13
  br i1 %cmp.22, label %.L_x_13, label %.L_x_7_split_0x1480

.L_x_7_split_0x1480:                              ; preds = %.L_x_7_split_0x1450
  br label %.L_x_14

.L_x_14:                                          ; preds = %.L_x_14, %.L_x_7_split_0x1480
  store i32 4, ptr %R49, align 4
  %.2300 = load i32, ptr %R22, align 4
  %.2301 = add i32 %imad_add.6, %.2300
  store i32 %.2301, ptr %R16, align 4
  %imad_ext1.28 = zext i32 %.2300 to i64
  %imad_mul.36 = shl nuw nsw i64 %imad_ext1.28, 2
  %.2307 = ptrtoint ptr %Arg_1 to i64
  %imad_add.36 = add i64 %imad_mul.36, %.2307
  %.2309 = lshr i64 %imad_add.36, 32
  %trunc32.66 = trunc nuw i64 %.2309 to i32
  %trunc32.67 = trunc i64 %imad_add.36 to i32
  store i32 %trunc32.67, ptr %R12, align 4
  store i32 %trunc32.66, ptr %R13, align 4
  %.2313 = load i32, ptr %R16, align 4
  %.2314 = load i32, ptr %R49, align 4
  %imad_ext1.29 = zext i32 %.2313 to i64
  %imad_ext2.29 = zext i32 %.2314 to i64
  %imad_mul.37 = mul nuw i64 %imad_ext1.29, %imad_ext2.29
  %.2315 = ptrtoint ptr %Arg_2 to i64
  %imad_add.37 = add i64 %imad_mul.37, %.2315
  %.2317 = lshr i64 %imad_add.37, 32
  %trunc32.68 = trunc nuw i64 %.2317 to i32
  %trunc32.69 = trunc i64 %imad_add.37 to i32
  store i32 %trunc32.69, ptr %R16, align 4
  store i32 %trunc32.68, ptr %R17, align 4
  %.2321 = load i32, ptr %R22, align 4
  %.2322 = add i32 %.2321, 4
  store i32 %.2322, ptr %R18, align 4
  %.2326 = load i32, ptr %R12, align 4
  %zext.220 = zext i32 %.2326 to i64
  %.2327 = load i32, ptr %R13, align 4
  %zext.221 = zext i32 %.2327 to i64
  %shl.118 = shl nuw i64 %zext.221, 32
  %or.105 = or disjoint i64 %shl.118, %zext.220
  %inttoptr_bytes.95 = inttoptr i64 %or.105 to ptr addrspace(1)
  %.2328 = load float, ptr addrspace(1) %inttoptr_bytes.95, align 4
  store float %.2328, ptr %R24, align 4
  %.2333 = load i32, ptr %R18, align 4
  %.2334 = add i32 %imad_add.6, %.2333
  store i32 %.2334, ptr %R14, align 4
  %.2338 = load i32, ptr %R16, align 4
  %zext.222 = zext i32 %.2338 to i64
  %.2339 = load i32, ptr %R17, align 4
  %zext.223 = zext i32 %.2339 to i64
  %shl.119 = shl nuw i64 %zext.223, 32
  %or.106 = or disjoint i64 %shl.119, %zext.222
  %inttoptr_bytes.96 = inttoptr i64 %or.106 to ptr addrspace(1)
  %.2340 = load float, ptr addrspace(1) %inttoptr_bytes.96, align 4
  store float %.2340, ptr %R21, align 4
  %.2344 = load i32, ptr %R12, align 4
  %zext.224 = zext i32 %.2344 to i64
  %.2345 = load i32, ptr %R13, align 4
  %zext.225 = zext i32 %.2345 to i64
  %shl.120 = shl nuw i64 %zext.225, 32
  %or.107 = or disjoint i64 %shl.120, %zext.224
  %ptr_plus_imm.69 = add i64 %or.107, 4
  %inttoptr_bytes.97 = inttoptr i64 %ptr_plus_imm.69 to ptr addrspace(1)
  %.2346 = load float, ptr addrspace(1) %inttoptr_bytes.97, align 4
  store float %.2346, ptr %R36, align 4
  %.2350 = load i32, ptr %R18, align 4
  %.2351 = load i32, ptr %R49, align 4
  %imad_ext1.30 = zext i32 %.2350 to i64
  %imad_ext2.30 = zext i32 %.2351 to i64
  %imad_mul.38 = mul nuw i64 %imad_ext1.30, %imad_ext2.30
  %.2352 = ptrtoint ptr %Arg_1 to i64
  %imad_add.38 = add i64 %imad_mul.38, %.2352
  %.2354 = lshr i64 %imad_add.38, 32
  %trunc32.70 = trunc nuw i64 %.2354 to i32
  %trunc32.71 = trunc i64 %imad_add.38 to i32
  store i32 %trunc32.71, ptr %R18, align 4
  store i32 %trunc32.70, ptr %R19, align 4
  %.2358 = load i32, ptr %R16, align 4
  %zext.226 = zext i32 %.2358 to i64
  %.2359 = load i32, ptr %R17, align 4
  %zext.227 = zext i32 %.2359 to i64
  %shl.121 = shl nuw i64 %zext.227, 32
  %or.108 = or disjoint i64 %shl.121, %zext.226
  %ptr_plus_imm.70 = add i64 %or.108, 4
  %inttoptr_bytes.98 = inttoptr i64 %ptr_plus_imm.70 to ptr addrspace(1)
  %.2360 = load float, ptr addrspace(1) %inttoptr_bytes.98, align 4
  store float %.2360, ptr %R25, align 4
  %.2364 = load i32, ptr %R12, align 4
  %zext.228 = zext i32 %.2364 to i64
  %.2365 = load i32, ptr %R13, align 4
  %zext.229 = zext i32 %.2365 to i64
  %shl.122 = shl nuw i64 %zext.229, 32
  %or.109 = or disjoint i64 %shl.122, %zext.228
  %ptr_plus_imm.71 = add i64 %or.109, 8
  %inttoptr_bytes.99 = inttoptr i64 %ptr_plus_imm.71 to ptr addrspace(1)
  %.2366 = load float, ptr addrspace(1) %inttoptr_bytes.99, align 4
  store float %.2366, ptr %R46, align 4
  %.2370 = load i32, ptr %R14, align 4
  %.2371 = load i32, ptr %R49, align 4
  %imad_ext1.31 = zext i32 %.2370 to i64
  %imad_ext2.31 = zext i32 %.2371 to i64
  %imad_mul.39 = mul nuw i64 %imad_ext1.31, %imad_ext2.31
  %.2372 = ptrtoint ptr %Arg_2 to i64
  %imad_add.39 = add i64 %imad_mul.39, %.2372
  %.2374 = lshr i64 %imad_add.39, 32
  %trunc32.72 = trunc nuw i64 %.2374 to i32
  %trunc32.73 = trunc i64 %imad_add.39 to i32
  store i32 %trunc32.73, ptr %R14, align 4
  store i32 %trunc32.72, ptr %R15, align 4
  %.2378 = load i32, ptr %R16, align 4
  %zext.230 = zext i32 %.2378 to i64
  %.2379 = load i32, ptr %R17, align 4
  %zext.231 = zext i32 %.2379 to i64
  %shl.123 = shl nuw i64 %zext.231, 32
  %or.110 = or disjoint i64 %shl.123, %zext.230
  %ptr_plus_imm.72 = add i64 %or.110, 8
  %inttoptr_bytes.100 = inttoptr i64 %ptr_plus_imm.72 to ptr addrspace(1)
  %.2380 = load float, ptr addrspace(1) %inttoptr_bytes.100, align 4
  store float %.2380, ptr %R34, align 4
  %.2384 = load i32, ptr %R12, align 4
  %zext.232 = zext i32 %.2384 to i64
  %.2385 = load i32, ptr %R13, align 4
  %zext.233 = zext i32 %.2385 to i64
  %shl.124 = shl nuw i64 %zext.233, 32
  %or.111 = or disjoint i64 %shl.124, %zext.232
  %ptr_plus_imm.73 = add i64 %or.111, 12
  %inttoptr_bytes.101 = inttoptr i64 %ptr_plus_imm.73 to ptr addrspace(1)
  %.2386 = load float, ptr addrspace(1) %inttoptr_bytes.101, align 4
  store float %.2386, ptr %R44, align 4
  %.2390 = load i32, ptr %R22, align 4
  %.2391 = add i32 %.2390, 8
  store i32 %.2391, ptr %R10, align 4
  %.2395 = load i32, ptr %R16, align 4
  %zext.234 = zext i32 %.2395 to i64
  %.2396 = load i32, ptr %R17, align 4
  %zext.235 = zext i32 %.2396 to i64
  %shl.125 = shl nuw i64 %zext.235, 32
  %or.112 = or disjoint i64 %shl.125, %zext.234
  %ptr_plus_imm.74 = add i64 %or.112, 12
  %inttoptr_bytes.102 = inttoptr i64 %ptr_plus_imm.74 to ptr addrspace(1)
  %.2397 = load float, ptr addrspace(1) %inttoptr_bytes.102, align 4
  store float %.2397, ptr %R41, align 4
  %.2401 = load i32, ptr %R18, align 4
  %zext.236 = zext i32 %.2401 to i64
  %.2402 = load i32, ptr %R19, align 4
  %zext.237 = zext i32 %.2402 to i64
  %shl.126 = shl nuw i64 %zext.237, 32
  %or.113 = or disjoint i64 %shl.126, %zext.236
  %inttoptr_bytes.103 = inttoptr i64 %or.113 to ptr addrspace(1)
  %.2403 = load float, ptr addrspace(1) %inttoptr_bytes.103, align 4
  store float %.2403, ptr %R42, align 4
  %.2408 = load i32, ptr %R10, align 4
  %.2409 = add i32 %imad_add.6, %.2408
  store i32 %.2409, ptr %R50, align 4
  %.2413 = load i32, ptr %R14, align 4
  %zext.238 = zext i32 %.2413 to i64
  %.2414 = load i32, ptr %R15, align 4
  %zext.239 = zext i32 %.2414 to i64
  %shl.127 = shl nuw i64 %zext.239, 32
  %or.114 = or disjoint i64 %shl.127, %zext.238
  %inttoptr_bytes.104 = inttoptr i64 %or.114 to ptr addrspace(1)
  %.2415 = load float, ptr addrspace(1) %inttoptr_bytes.104, align 4
  store float %.2415, ptr %R39, align 4
  %.2419 = load i32, ptr %R18, align 4
  %zext.240 = zext i32 %.2419 to i64
  %.2420 = load i32, ptr %R19, align 4
  %zext.241 = zext i32 %.2420 to i64
  %shl.128 = shl nuw i64 %zext.241, 32
  %or.115 = or disjoint i64 %shl.128, %zext.240
  %ptr_plus_imm.75 = add i64 %or.115, 4
  %inttoptr_bytes.105 = inttoptr i64 %ptr_plus_imm.75 to ptr addrspace(1)
  %.2421 = load float, ptr addrspace(1) %inttoptr_bytes.105, align 4
  store float %.2421, ptr %R40, align 4
  %.2425 = load i32, ptr %R10, align 4
  %.2426 = load i32, ptr %R49, align 4
  %imad_ext1.32 = zext i32 %.2425 to i64
  %imad_ext2.32 = zext i32 %.2426 to i64
  %imad_mul.40 = mul nuw i64 %imad_ext1.32, %imad_ext2.32
  %.2427 = ptrtoint ptr %Arg_1 to i64
  %imad_add.40 = add i64 %imad_mul.40, %.2427
  %.2429 = lshr i64 %imad_add.40, 32
  %trunc32.74 = trunc nuw i64 %.2429 to i32
  %trunc32.75 = trunc i64 %imad_add.40 to i32
  store i32 %trunc32.75, ptr %R10, align 4
  store i32 %trunc32.74, ptr %R11, align 4
  %.2433 = load i32, ptr %R14, align 4
  %zext.242 = zext i32 %.2433 to i64
  %.2434 = load i32, ptr %R15, align 4
  %zext.243 = zext i32 %.2434 to i64
  %shl.129 = shl nuw i64 %zext.243, 32
  %or.116 = or disjoint i64 %shl.129, %zext.242
  %ptr_plus_imm.76 = add i64 %or.116, 4
  %inttoptr_bytes.106 = inttoptr i64 %ptr_plus_imm.76 to ptr addrspace(1)
  %.2435 = load float, ptr addrspace(1) %inttoptr_bytes.106, align 4
  store float %.2435, ptr %R37, align 4
  %.2439 = load i32, ptr %R18, align 4
  %zext.244 = zext i32 %.2439 to i64
  %.2440 = load i32, ptr %R19, align 4
  %zext.245 = zext i32 %.2440 to i64
  %shl.130 = shl nuw i64 %zext.245, 32
  %or.117 = or disjoint i64 %shl.130, %zext.244
  %ptr_plus_imm.77 = add i64 %or.117, 8
  %inttoptr_bytes.107 = inttoptr i64 %ptr_plus_imm.77 to ptr addrspace(1)
  %.2441 = load float, ptr addrspace(1) %inttoptr_bytes.107, align 4
  store float %.2441, ptr %R38, align 4
  %.2445 = load i32, ptr %R50, align 4
  %.2446 = load i32, ptr %R49, align 4
  %imad_ext1.33 = zext i32 %.2445 to i64
  %imad_ext2.33 = zext i32 %.2446 to i64
  %imad_mul.41 = mul nuw i64 %imad_ext1.33, %imad_ext2.33
  %.2447 = ptrtoint ptr %Arg_2 to i64
  %imad_add.41 = add i64 %imad_mul.41, %.2447
  %.2449 = lshr i64 %imad_add.41, 32
  %trunc32.76 = trunc nuw i64 %.2449 to i32
  %trunc32.77 = trunc i64 %imad_add.41 to i32
  store i32 %trunc32.77, ptr %R12, align 4
  store i32 %trunc32.76, ptr %R13, align 4
  %.2453 = load i32, ptr %R14, align 4
  %zext.246 = zext i32 %.2453 to i64
  %.2454 = load i32, ptr %R15, align 4
  %zext.247 = zext i32 %.2454 to i64
  %shl.131 = shl nuw i64 %zext.247, 32
  %or.118 = or disjoint i64 %shl.131, %zext.246
  %ptr_plus_imm.78 = add i64 %or.118, 8
  %inttoptr_bytes.108 = inttoptr i64 %ptr_plus_imm.78 to ptr addrspace(1)
  %.2455 = load float, ptr addrspace(1) %inttoptr_bytes.108, align 4
  store float %.2455, ptr %R35, align 4
  %.2459 = load i32, ptr %R18, align 4
  %zext.248 = zext i32 %.2459 to i64
  %.2460 = load i32, ptr %R19, align 4
  %zext.249 = zext i32 %.2460 to i64
  %shl.132 = shl nuw i64 %zext.249, 32
  %or.119 = or disjoint i64 %shl.132, %zext.248
  %ptr_plus_imm.79 = add i64 %or.119, 12
  %inttoptr_bytes.109 = inttoptr i64 %ptr_plus_imm.79 to ptr addrspace(1)
  %.2461 = load float, ptr addrspace(1) %inttoptr_bytes.109, align 4
  store float %.2461, ptr %R48, align 4
  %.2465 = load i32, ptr %R22, align 4
  %.2466 = add i32 %.2465, 12
  store i32 %.2466, ptr %R16, align 4
  %.2470 = load i32, ptr %R14, align 4
  %zext.250 = zext i32 %.2470 to i64
  %.2471 = load i32, ptr %R15, align 4
  %zext.251 = zext i32 %.2471 to i64
  %shl.133 = shl nuw i64 %zext.251, 32
  %or.120 = or disjoint i64 %shl.133, %zext.250
  %ptr_plus_imm.80 = add i64 %or.120, 12
  %inttoptr_bytes.110 = inttoptr i64 %ptr_plus_imm.80 to ptr addrspace(1)
  %.2472 = load float, ptr addrspace(1) %inttoptr_bytes.110, align 4
  store float %.2472, ptr %R47, align 4
  %.2476 = load i32, ptr %R10, align 4
  %zext.252 = zext i32 %.2476 to i64
  %.2477 = load i32, ptr %R11, align 4
  %zext.253 = zext i32 %.2477 to i64
  %shl.134 = shl nuw i64 %zext.253, 32
  %or.121 = or disjoint i64 %shl.134, %zext.252
  %inttoptr_bytes.111 = inttoptr i64 %or.121 to ptr addrspace(1)
  %.2478 = load float, ptr addrspace(1) %inttoptr_bytes.111, align 4
  store float %.2478, ptr %R54, align 4
  %.2483 = load i32, ptr %R16, align 4
  %.2484 = add i32 %imad_add.6, %.2483
  store i32 %.2484, ptr %R58, align 4
  %.2488 = load i32, ptr %R12, align 4
  %zext.254 = zext i32 %.2488 to i64
  %.2489 = load i32, ptr %R13, align 4
  %zext.255 = zext i32 %.2489 to i64
  %shl.135 = shl nuw i64 %zext.255, 32
  %or.122 = or disjoint i64 %shl.135, %zext.254
  %inttoptr_bytes.112 = inttoptr i64 %or.122 to ptr addrspace(1)
  %.2490 = load float, ptr addrspace(1) %inttoptr_bytes.112, align 4
  store float %.2490, ptr %R45, align 4
  %.2494 = load i32, ptr %R10, align 4
  %zext.256 = zext i32 %.2494 to i64
  %.2495 = load i32, ptr %R11, align 4
  %zext.257 = zext i32 %.2495 to i64
  %shl.136 = shl nuw i64 %zext.257, 32
  %or.123 = or disjoint i64 %shl.136, %zext.256
  %ptr_plus_imm.81 = add i64 %or.123, 4
  %inttoptr_bytes.113 = inttoptr i64 %ptr_plus_imm.81 to ptr addrspace(1)
  %.2496 = load float, ptr addrspace(1) %inttoptr_bytes.113, align 4
  store float %.2496, ptr %R52, align 4
  %.2500 = load i32, ptr %R16, align 4
  %.2501 = load i32, ptr %R49, align 4
  %imad_ext1.34 = zext i32 %.2500 to i64
  %imad_ext2.34 = zext i32 %.2501 to i64
  %imad_mul.42 = mul nuw i64 %imad_ext1.34, %imad_ext2.34
  %.2502 = ptrtoint ptr %Arg_1 to i64
  %imad_add.42 = add i64 %imad_mul.42, %.2502
  %.2504 = lshr i64 %imad_add.42, 32
  %trunc32.78 = trunc nuw i64 %.2504 to i32
  %trunc32.79 = trunc i64 %imad_add.42 to i32
  store i32 %trunc32.79, ptr %R16, align 4
  store i32 %trunc32.78, ptr %R17, align 4
  %.2508 = load i32, ptr %R12, align 4
  %zext.258 = zext i32 %.2508 to i64
  %.2509 = load i32, ptr %R13, align 4
  %zext.259 = zext i32 %.2509 to i64
  %shl.137 = shl nuw i64 %zext.259, 32
  %or.124 = or disjoint i64 %shl.137, %zext.258
  %ptr_plus_imm.82 = add i64 %or.124, 4
  %inttoptr_bytes.114 = inttoptr i64 %ptr_plus_imm.82 to ptr addrspace(1)
  %.2510 = load float, ptr addrspace(1) %inttoptr_bytes.114, align 4
  store float %.2510, ptr %R43, align 4
  %.2514 = load i32, ptr %R10, align 4
  %zext.260 = zext i32 %.2514 to i64
  %.2515 = load i32, ptr %R11, align 4
  %zext.261 = zext i32 %.2515 to i64
  %shl.138 = shl nuw i64 %zext.261, 32
  %or.125 = or disjoint i64 %shl.138, %zext.260
  %ptr_plus_imm.83 = add i64 %or.125, 8
  %inttoptr_bytes.115 = inttoptr i64 %ptr_plus_imm.83 to ptr addrspace(1)
  %.2516 = load float, ptr addrspace(1) %inttoptr_bytes.115, align 4
  store float %.2516, ptr %R50, align 4
  %.2520 = load i32, ptr %R58, align 4
  %.2521 = load i32, ptr %R49, align 4
  %imad_ext1.35 = zext i32 %.2520 to i64
  %imad_ext2.35 = zext i32 %.2521 to i64
  %imad_mul.43 = mul nuw i64 %imad_ext1.35, %imad_ext2.35
  %.2522 = ptrtoint ptr %Arg_2 to i64
  %imad_add.43 = add i64 %imad_mul.43, %.2522
  %.2524 = lshr i64 %imad_add.43, 32
  %trunc32.80 = trunc nuw i64 %.2524 to i32
  %trunc32.81 = trunc i64 %imad_add.43 to i32
  store i32 %trunc32.81, ptr %R14, align 4
  store i32 %trunc32.80, ptr %R15, align 4
  %.2528 = load i32, ptr %R12, align 4
  %zext.262 = zext i32 %.2528 to i64
  %.2529 = load i32, ptr %R13, align 4
  %zext.263 = zext i32 %.2529 to i64
  %shl.139 = shl nuw i64 %zext.263, 32
  %or.126 = or disjoint i64 %shl.139, %zext.262
  %ptr_plus_imm.84 = add i64 %or.126, 8
  %inttoptr_bytes.116 = inttoptr i64 %ptr_plus_imm.84 to ptr addrspace(1)
  %.2530 = load float, ptr addrspace(1) %inttoptr_bytes.116, align 4
  store float %.2530, ptr %R18, align 4
  %.2534 = load i32, ptr %R10, align 4
  %zext.264 = zext i32 %.2534 to i64
  %.2535 = load i32, ptr %R11, align 4
  %zext.265 = zext i32 %.2535 to i64
  %shl.140 = shl nuw i64 %zext.265, 32
  %or.127 = or disjoint i64 %shl.140, %zext.264
  %ptr_plus_imm.85 = add i64 %or.127, 12
  %inttoptr_bytes.117 = inttoptr i64 %ptr_plus_imm.85 to ptr addrspace(1)
  %.2536 = load float, ptr addrspace(1) %inttoptr_bytes.117, align 4
  store float %.2536, ptr %R56, align 4
  %.2540 = load i32, ptr %R12, align 4
  %zext.266 = zext i32 %.2540 to i64
  %.2541 = load i32, ptr %R13, align 4
  %zext.267 = zext i32 %.2541 to i64
  %shl.141 = shl nuw i64 %zext.267, 32
  %or.128 = or disjoint i64 %shl.141, %zext.266
  %ptr_plus_imm.86 = add i64 %or.128, 12
  %inttoptr_bytes.118 = inttoptr i64 %ptr_plus_imm.86 to ptr addrspace(1)
  %.2542 = load float, ptr addrspace(1) %inttoptr_bytes.118, align 4
  store float %.2542, ptr %R55, align 4
  %.2546 = load i32, ptr %R16, align 4
  %zext.268 = zext i32 %.2546 to i64
  %.2547 = load i32, ptr %R17, align 4
  %zext.269 = zext i32 %.2547 to i64
  %shl.142 = shl nuw i64 %zext.269, 32
  %or.129 = or disjoint i64 %shl.142, %zext.268
  %inttoptr_bytes.119 = inttoptr i64 %or.129 to ptr addrspace(1)
  %.2548 = load float, ptr addrspace(1) %inttoptr_bytes.119, align 4
  store float %.2548, ptr %R51, align 4
  %.2552 = load i32, ptr %R14, align 4
  %zext.270 = zext i32 %.2552 to i64
  %.2553 = load i32, ptr %R15, align 4
  %zext.271 = zext i32 %.2553 to i64
  %shl.143 = shl nuw i64 %zext.271, 32
  %or.130 = or disjoint i64 %shl.143, %zext.270
  %inttoptr_bytes.120 = inttoptr i64 %or.130 to ptr addrspace(1)
  %.2554 = load float, ptr addrspace(1) %inttoptr_bytes.120, align 4
  store float %.2554, ptr %R53, align 4
  %.2558 = load i32, ptr %R16, align 4
  %zext.272 = zext i32 %.2558 to i64
  %.2559 = load i32, ptr %R17, align 4
  %zext.273 = zext i32 %.2559 to i64
  %shl.144 = shl nuw i64 %zext.273, 32
  %or.131 = or disjoint i64 %shl.144, %zext.272
  %ptr_plus_imm.87 = add i64 %or.131, 4
  %inttoptr_bytes.121 = inttoptr i64 %ptr_plus_imm.87 to ptr addrspace(1)
  %.2560 = load float, ptr addrspace(1) %inttoptr_bytes.121, align 4
  store float %.2560, ptr %R60, align 4
  %.2564 = load i32, ptr %R14, align 4
  %zext.274 = zext i32 %.2564 to i64
  %.2565 = load i32, ptr %R15, align 4
  %zext.275 = zext i32 %.2565 to i64
  %shl.145 = shl nuw i64 %zext.275, 32
  %or.132 = or disjoint i64 %shl.145, %zext.274
  %ptr_plus_imm.88 = add i64 %or.132, 4
  %inttoptr_bytes.122 = inttoptr i64 %ptr_plus_imm.88 to ptr addrspace(1)
  %.2566 = load float, ptr addrspace(1) %inttoptr_bytes.122, align 4
  store float %.2566, ptr %R49, align 4
  %.2570 = load i32, ptr %R16, align 4
  %zext.276 = zext i32 %.2570 to i64
  %.2571 = load i32, ptr %R17, align 4
  %zext.277 = zext i32 %.2571 to i64
  %shl.146 = shl nuw i64 %zext.277, 32
  %or.133 = or disjoint i64 %shl.146, %zext.276
  %ptr_plus_imm.89 = add i64 %or.133, 8
  %inttoptr_bytes.123 = inttoptr i64 %ptr_plus_imm.89 to ptr addrspace(1)
  %.2572 = load float, ptr addrspace(1) %inttoptr_bytes.123, align 4
  store float %.2572, ptr %R58, align 4
  %.2576 = load i32, ptr %R14, align 4
  %zext.278 = zext i32 %.2576 to i64
  %.2577 = load i32, ptr %R15, align 4
  %zext.279 = zext i32 %.2577 to i64
  %shl.147 = shl nuw i64 %zext.279, 32
  %or.134 = or disjoint i64 %shl.147, %zext.278
  %ptr_plus_imm.90 = add i64 %or.134, 8
  %inttoptr_bytes.124 = inttoptr i64 %ptr_plus_imm.90 to ptr addrspace(1)
  %.2578 = load float, ptr addrspace(1) %inttoptr_bytes.124, align 4
  store float %.2578, ptr %R19, align 4
  %.2582 = load i32, ptr %R16, align 4
  %zext.280 = zext i32 %.2582 to i64
  %.2583 = load i32, ptr %R17, align 4
  %zext.281 = zext i32 %.2583 to i64
  %shl.148 = shl nuw i64 %zext.281, 32
  %or.135 = or disjoint i64 %shl.148, %zext.280
  %ptr_plus_imm.91 = add i64 %or.135, 12
  %inttoptr_bytes.125 = inttoptr i64 %ptr_plus_imm.91 to ptr addrspace(1)
  %.2584 = load float, ptr addrspace(1) %inttoptr_bytes.125, align 4
  store float %.2584, ptr %R57, align 4
  %.2588 = load i32, ptr %R14, align 4
  %zext.282 = zext i32 %.2588 to i64
  %.2589 = load i32, ptr %R15, align 4
  %zext.283 = zext i32 %.2589 to i64
  %shl.149 = shl nuw i64 %zext.283, 32
  %or.136 = or disjoint i64 %shl.149, %zext.282
  %ptr_plus_imm.92 = add i64 %or.136, 12
  %inttoptr_bytes.126 = inttoptr i64 %ptr_plus_imm.92 to ptr addrspace(1)
  %.2590 = load float, ptr addrspace(1) %inttoptr_bytes.126, align 4
  store float %.2590, ptr %R59, align 4
  %.2594 = load i32, ptr %R23, align 4
  %.2595 = add i32 %.2594, -16
  store i32 %.2595, ptr %R23, align 4
  %.2599 = load i32, ptr %R22, align 4
  %.2600 = add i32 %.2599, 16
  store i32 %.2600, ptr %R22, align 4
  %cmp.23 = icmp sgt i32 %.2595, 12
  %.2611 = load float, ptr %R24, align 4
  %.2612 = load float, ptr %R9, align 4
  %fmul.85 = fmul float %.2611, %.2612
  store float %fmul.85, ptr %R24, align 4
  %.2617 = load float, ptr %R21, align 4
  %.2618 = load float, ptr %R8, align 4
  %fmul.86 = fmul float %fmul.85, %.2617
  %fadd.93 = fadd float %fmul.86, %.2618
  store float %fadd.93, ptr %R24, align 4
  %.2622 = load float, ptr %R36, align 4
  %.2623 = load float, ptr %R9, align 4
  %fmul.87 = fmul float %.2622, %.2623
  store float %fmul.87, ptr %R36, align 4
  %.2628 = load float, ptr %R25, align 4
  %fmul.88 = fmul float %fmul.87, %.2628
  %fadd.94 = fadd float %fmul.88, %fadd.93
  store float %fadd.94, ptr %R25, align 4
  %.2633 = load float, ptr %R46, align 4
  %.2634 = load float, ptr %R9, align 4
  %fmul.89 = fmul float %.2633, %.2634
  store float %fmul.89, ptr %R46, align 4
  %.2639 = load float, ptr %R34, align 4
  %fmul.90 = fmul float %fmul.89, %.2639
  %fadd.95 = fadd float %fmul.90, %fadd.94
  store float %fadd.95, ptr %R34, align 4
  %.2644 = load float, ptr %R44, align 4
  %.2645 = load float, ptr %R9, align 4
  %fmul.91 = fmul float %.2644, %.2645
  store float %fmul.91, ptr %R44, align 4
  %.2650 = load float, ptr %R41, align 4
  %fmul.92 = fmul float %fmul.91, %.2650
  %fadd.96 = fadd float %fmul.92, %fadd.95
  store float %fadd.96, ptr %R34, align 4
  %.2655 = load float, ptr %R42, align 4
  %.2656 = load float, ptr %R9, align 4
  %fmul.93 = fmul float %.2655, %.2656
  store float %fmul.93, ptr %R42, align 4
  %.2661 = load float, ptr %R39, align 4
  %fmul.94 = fmul float %fmul.93, %.2661
  %fadd.97 = fadd float %fmul.94, %fadd.96
  store float %fadd.97, ptr %R34, align 4
  %.2666 = load float, ptr %R40, align 4
  %.2667 = load float, ptr %R9, align 4
  %fmul.95 = fmul float %.2666, %.2667
  store float %fmul.95, ptr %R40, align 4
  %.2672 = load float, ptr %R37, align 4
  %fmul.96 = fmul float %fmul.95, %.2672
  %fadd.98 = fadd float %fmul.96, %fadd.97
  store float %fadd.98, ptr %R34, align 4
  %.2677 = load float, ptr %R38, align 4
  %.2678 = load float, ptr %R9, align 4
  %fmul.97 = fmul float %.2677, %.2678
  store float %fmul.97, ptr %R38, align 4
  %.2683 = load float, ptr %R35, align 4
  %fmul.98 = fmul float %fmul.97, %.2683
  %fadd.99 = fadd float %fmul.98, %fadd.98
  store float %fadd.99, ptr %R34, align 4
  %.2688 = load float, ptr %R48, align 4
  %.2689 = load float, ptr %R9, align 4
  %fmul.99 = fmul float %.2688, %.2689
  store float %fmul.99, ptr %R48, align 4
  %.2694 = load float, ptr %R47, align 4
  %fmul.100 = fmul float %fmul.99, %.2694
  %fadd.100 = fadd float %fmul.100, %fadd.99
  store float %fadd.100, ptr %R34, align 4
  %.2699 = load float, ptr %R54, align 4
  %.2700 = load float, ptr %R9, align 4
  %fmul.101 = fmul float %.2699, %.2700
  store float %fmul.101, ptr %R54, align 4
  %.2705 = load float, ptr %R45, align 4
  %fmul.102 = fmul float %fmul.101, %.2705
  %fadd.101 = fadd float %fmul.102, %fadd.100
  store float %fadd.101, ptr %R34, align 4
  %.2710 = load float, ptr %R52, align 4
  %.2711 = load float, ptr %R9, align 4
  %fmul.103 = fmul float %.2710, %.2711
  store float %fmul.103, ptr %R52, align 4
  %.2716 = load float, ptr %R43, align 4
  %fmul.104 = fmul float %fmul.103, %.2716
  %fadd.102 = fadd float %fmul.104, %fadd.101
  store float %fadd.102, ptr %R43, align 4
  %.2721 = load float, ptr %R50, align 4
  %.2722 = load float, ptr %R9, align 4
  %fmul.105 = fmul float %.2721, %.2722
  store float %fmul.105, ptr %R50, align 4
  %.2727 = load float, ptr %R18, align 4
  %fmul.106 = fmul float %fmul.105, %.2727
  %fadd.103 = fadd float %fmul.106, %fadd.102
  store float %fadd.103, ptr %R18, align 4
  %.2732 = load float, ptr %R56, align 4
  %.2733 = load float, ptr %R9, align 4
  %fmul.107 = fmul float %.2732, %.2733
  store float %fmul.107, ptr %R56, align 4
  %.2738 = load float, ptr %R55, align 4
  %fmul.108 = fmul float %fmul.107, %.2738
  %fadd.104 = fadd float %fmul.108, %fadd.103
  store float %fadd.104, ptr %R18, align 4
  %.2743 = load float, ptr %R51, align 4
  %.2744 = load float, ptr %R9, align 4
  %fmul.109 = fmul float %.2743, %.2744
  store float %fmul.109, ptr %R51, align 4
  %.2749 = load float, ptr %R53, align 4
  %fmul.110 = fmul float %fmul.109, %.2749
  %fadd.105 = fadd float %fmul.110, %fadd.104
  store float %fadd.105, ptr %R18, align 4
  %.2754 = load float, ptr %R60, align 4
  %.2755 = load float, ptr %R9, align 4
  %fmul.111 = fmul float %.2754, %.2755
  store float %fmul.111, ptr %R60, align 4
  %.2760 = load float, ptr %R49, align 4
  %fmul.112 = fmul float %fmul.111, %.2760
  %fadd.106 = fadd float %fmul.112, %fadd.105
  store float %fadd.106, ptr %R18, align 4
  %.2765 = load float, ptr %R58, align 4
  %.2766 = load float, ptr %R9, align 4
  %fmul.113 = fmul float %.2765, %.2766
  store float %fmul.113, ptr %R58, align 4
  %.2771 = load float, ptr %R19, align 4
  %fmul.114 = fmul float %fmul.113, %.2771
  %fadd.107 = fadd float %fmul.114, %fadd.106
  store float %fadd.107, ptr %R18, align 4
  %.2776 = load float, ptr %R57, align 4
  %.2777 = load float, ptr %R9, align 4
  %fmul.115 = fmul float %.2776, %.2777
  store float %fmul.115, ptr %R57, align 4
  %.2782 = load float, ptr %R59, align 4
  %fmul.116 = fmul float %fmul.115, %.2782
  %fadd.108 = fadd float %fmul.116, %fadd.107
  store float %fadd.108, ptr %R8, align 4
  br i1 %cmp.23, label %.L_x_14, label %.L_x_13.loopexit

.L_x_13.loopexit:                                 ; preds = %.L_x_14
  br label %.L_x_13

.L_x_13:                                          ; preds = %.L_x_13.loopexit, %.L_x_7_split_0x1450
  %.2791 = load i32, ptr %R23, align 4
  %cmp.24 = icmp slt i32 %.2791, 5
  br i1 %cmp.24, label %.L_x_15, label %.L_x_13_split_0x19f0

.L_x_13_split_0x19f0:                             ; preds = %.L_x_13
  store i32 4, ptr %R13, align 4
  %.2805 = load i32, ptr %R22, align 4
  %.2806 = add i32 %imad_add.6, %.2805
  store i32 %.2806, ptr %R16, align 4
  %imad_ext1.36 = zext i32 %.2805 to i64
  %imad_mul.44 = shl nuw nsw i64 %imad_ext1.36, 2
  %.2812 = ptrtoint ptr %Arg_1 to i64
  %imad_add.44 = add i64 %imad_mul.44, %.2812
  %.2814 = lshr i64 %imad_add.44, 32
  %trunc32.82 = trunc nuw i64 %.2814 to i32
  %trunc32.83 = trunc i64 %imad_add.44 to i32
  store i32 %trunc32.83, ptr %R14, align 4
  store i32 %trunc32.82, ptr %R15, align 4
  %.2818 = load i32, ptr %R16, align 4
  %.2819 = load i32, ptr %R13, align 4
  %imad_ext1.37 = zext i32 %.2818 to i64
  %imad_ext2.37 = zext i32 %.2819 to i64
  %imad_mul.45 = mul nuw i64 %imad_ext1.37, %imad_ext2.37
  %.2820 = ptrtoint ptr %Arg_2 to i64
  %imad_add.45 = add i64 %imad_mul.45, %.2820
  %.2822 = lshr i64 %imad_add.45, 32
  %trunc32.84 = trunc nuw i64 %.2822 to i32
  %trunc32.85 = trunc i64 %imad_add.45 to i32
  store i32 %trunc32.85, ptr %R16, align 4
  store i32 %trunc32.84, ptr %R17, align 4
  %.2826 = load i32, ptr %R22, align 4
  %.2827 = add i32 %.2826, 4
  store i32 %.2827, ptr %R10, align 4
  %.2831 = load i32, ptr %R14, align 4
  %zext.284 = zext i32 %.2831 to i64
  %.2832 = load i32, ptr %R15, align 4
  %zext.285 = zext i32 %.2832 to i64
  %shl.150 = shl nuw i64 %zext.285, 32
  %or.137 = or disjoint i64 %shl.150, %zext.284
  %inttoptr_bytes.127 = inttoptr i64 %or.137 to ptr addrspace(1)
  %.2833 = load float, ptr addrspace(1) %inttoptr_bytes.127, align 4
  store float %.2833, ptr %R18, align 4
  %.2838 = load i32, ptr %R10, align 4
  %.2839 = add i32 %imad_add.6, %.2838
  store i32 %.2839, ptr %R12, align 4
  %.2843 = load i32, ptr %R16, align 4
  %zext.286 = zext i32 %.2843 to i64
  %.2844 = load i32, ptr %R17, align 4
  %zext.287 = zext i32 %.2844 to i64
  %shl.151 = shl nuw i64 %zext.287, 32
  %or.138 = or disjoint i64 %shl.151, %zext.286
  %inttoptr_bytes.128 = inttoptr i64 %or.138 to ptr addrspace(1)
  %.2845 = load float, ptr addrspace(1) %inttoptr_bytes.128, align 4
  store float %.2845, ptr %R19, align 4
  %.2849 = load i32, ptr %R14, align 4
  %zext.288 = zext i32 %.2849 to i64
  %.2850 = load i32, ptr %R15, align 4
  %zext.289 = zext i32 %.2850 to i64
  %shl.152 = shl nuw i64 %zext.289, 32
  %or.139 = or disjoint i64 %shl.152, %zext.288
  %ptr_plus_imm.93 = add i64 %or.139, 4
  %inttoptr_bytes.129 = inttoptr i64 %ptr_plus_imm.93 to ptr addrspace(1)
  %.2851 = load float, ptr addrspace(1) %inttoptr_bytes.129, align 4
  store float %.2851, ptr %R24, align 4
  %.2855 = load i32, ptr %R10, align 4
  %.2856 = load i32, ptr %R13, align 4
  %imad_ext1.38 = zext i32 %.2855 to i64
  %imad_ext2.38 = zext i32 %.2856 to i64
  %imad_mul.46 = mul nuw i64 %imad_ext1.38, %imad_ext2.38
  %.2857 = ptrtoint ptr %Arg_1 to i64
  %imad_add.46 = add i64 %imad_mul.46, %.2857
  %.2859 = lshr i64 %imad_add.46, 32
  %trunc32.86 = trunc nuw i64 %.2859 to i32
  %trunc32.87 = trunc i64 %imad_add.46 to i32
  store i32 %trunc32.87, ptr %R10, align 4
  store i32 %trunc32.86, ptr %R11, align 4
  %.2863 = load i32, ptr %R16, align 4
  %zext.290 = zext i32 %.2863 to i64
  %.2864 = load i32, ptr %R17, align 4
  %zext.291 = zext i32 %.2864 to i64
  %shl.153 = shl nuw i64 %zext.291, 32
  %or.140 = or disjoint i64 %shl.153, %zext.290
  %ptr_plus_imm.94 = add i64 %or.140, 4
  %inttoptr_bytes.130 = inttoptr i64 %ptr_plus_imm.94 to ptr addrspace(1)
  %.2865 = load float, ptr addrspace(1) %inttoptr_bytes.130, align 4
  store float %.2865, ptr %R21, align 4
  %.2869 = load i32, ptr %R14, align 4
  %zext.292 = zext i32 %.2869 to i64
  %.2870 = load i32, ptr %R15, align 4
  %zext.293 = zext i32 %.2870 to i64
  %shl.154 = shl nuw i64 %zext.293, 32
  %or.141 = or disjoint i64 %shl.154, %zext.292
  %ptr_plus_imm.95 = add i64 %or.141, 8
  %inttoptr_bytes.131 = inttoptr i64 %ptr_plus_imm.95 to ptr addrspace(1)
  %.2871 = load float, ptr addrspace(1) %inttoptr_bytes.131, align 4
  store float %.2871, ptr %R34, align 4
  %.2875 = load i32, ptr %R12, align 4
  %.2876 = load i32, ptr %R13, align 4
  %imad_ext1.39 = zext i32 %.2875 to i64
  %imad_ext2.39 = zext i32 %.2876 to i64
  %imad_mul.47 = mul nuw i64 %imad_ext1.39, %imad_ext2.39
  %.2877 = ptrtoint ptr %Arg_2 to i64
  %imad_add.47 = add i64 %imad_mul.47, %.2877
  %.2879 = lshr i64 %imad_add.47, 32
  %trunc32.88 = trunc nuw i64 %.2879 to i32
  %trunc32.89 = trunc i64 %imad_add.47 to i32
  store i32 %trunc32.89, ptr %R12, align 4
  store i32 %trunc32.88, ptr %R13, align 4
  %.2883 = load i32, ptr %R16, align 4
  %zext.294 = zext i32 %.2883 to i64
  %.2884 = load i32, ptr %R17, align 4
  %zext.295 = zext i32 %.2884 to i64
  %shl.155 = shl nuw i64 %zext.295, 32
  %or.142 = or disjoint i64 %shl.155, %zext.294
  %ptr_plus_imm.96 = add i64 %or.142, 8
  %inttoptr_bytes.132 = inttoptr i64 %ptr_plus_imm.96 to ptr addrspace(1)
  %.2885 = load float, ptr addrspace(1) %inttoptr_bytes.132, align 4
  store float %.2885, ptr %R25, align 4
  %.2889 = load i32, ptr %R14, align 4
  %zext.296 = zext i32 %.2889 to i64
  %.2890 = load i32, ptr %R15, align 4
  %zext.297 = zext i32 %.2890 to i64
  %shl.156 = shl nuw i64 %zext.297, 32
  %or.143 = or disjoint i64 %shl.156, %zext.296
  %ptr_plus_imm.97 = add i64 %or.143, 12
  %inttoptr_bytes.133 = inttoptr i64 %ptr_plus_imm.97 to ptr addrspace(1)
  %.2891 = load float, ptr addrspace(1) %inttoptr_bytes.133, align 4
  store float %.2891, ptr %R36, align 4
  %.2895 = load i32, ptr %R16, align 4
  %zext.298 = zext i32 %.2895 to i64
  %.2896 = load i32, ptr %R17, align 4
  %zext.299 = zext i32 %.2896 to i64
  %shl.157 = shl nuw i64 %zext.299, 32
  %or.144 = or disjoint i64 %shl.157, %zext.298
  %ptr_plus_imm.98 = add i64 %or.144, 12
  %inttoptr_bytes.134 = inttoptr i64 %ptr_plus_imm.98 to ptr addrspace(1)
  %.2897 = load float, ptr addrspace(1) %inttoptr_bytes.134, align 4
  store float %.2897, ptr %R35, align 4
  %.2901 = load i32, ptr %R10, align 4
  %zext.300 = zext i32 %.2901 to i64
  %.2902 = load i32, ptr %R11, align 4
  %zext.301 = zext i32 %.2902 to i64
  %shl.158 = shl nuw i64 %zext.301, 32
  %or.145 = or disjoint i64 %shl.158, %zext.300
  %inttoptr_bytes.135 = inttoptr i64 %or.145 to ptr addrspace(1)
  %.2903 = load float, ptr addrspace(1) %inttoptr_bytes.135, align 4
  store float %.2903, ptr %R38, align 4
  %.2907 = load i32, ptr %R12, align 4
  %zext.302 = zext i32 %.2907 to i64
  %.2908 = load i32, ptr %R13, align 4
  %zext.303 = zext i32 %.2908 to i64
  %shl.159 = shl nuw i64 %zext.303, 32
  %or.146 = or disjoint i64 %shl.159, %zext.302
  %inttoptr_bytes.136 = inttoptr i64 %or.146 to ptr addrspace(1)
  %.2909 = load float, ptr addrspace(1) %inttoptr_bytes.136, align 4
  store float %.2909, ptr %R37, align 4
  %.2913 = load i32, ptr %R10, align 4
  %zext.304 = zext i32 %.2913 to i64
  %.2914 = load i32, ptr %R11, align 4
  %zext.305 = zext i32 %.2914 to i64
  %shl.160 = shl nuw i64 %zext.305, 32
  %or.147 = or disjoint i64 %shl.160, %zext.304
  %ptr_plus_imm.99 = add i64 %or.147, 4
  %inttoptr_bytes.137 = inttoptr i64 %ptr_plus_imm.99 to ptr addrspace(1)
  %.2915 = load float, ptr addrspace(1) %inttoptr_bytes.137, align 4
  store float %.2915, ptr %R40, align 4
  %.2919 = load i32, ptr %R12, align 4
  %zext.306 = zext i32 %.2919 to i64
  %.2920 = load i32, ptr %R13, align 4
  %zext.307 = zext i32 %.2920 to i64
  %shl.161 = shl nuw i64 %zext.307, 32
  %or.148 = or disjoint i64 %shl.161, %zext.306
  %ptr_plus_imm.100 = add i64 %or.148, 4
  %inttoptr_bytes.138 = inttoptr i64 %ptr_plus_imm.100 to ptr addrspace(1)
  %.2921 = load float, ptr addrspace(1) %inttoptr_bytes.138, align 4
  store float %.2921, ptr %R39, align 4
  %.2925 = load i32, ptr %R10, align 4
  %zext.308 = zext i32 %.2925 to i64
  %.2926 = load i32, ptr %R11, align 4
  %zext.309 = zext i32 %.2926 to i64
  %shl.162 = shl nuw i64 %zext.309, 32
  %or.149 = or disjoint i64 %shl.162, %zext.308
  %ptr_plus_imm.101 = add i64 %or.149, 8
  %inttoptr_bytes.139 = inttoptr i64 %ptr_plus_imm.101 to ptr addrspace(1)
  %.2927 = load float, ptr addrspace(1) %inttoptr_bytes.139, align 4
  store float %.2927, ptr %R42, align 4
  %.2931 = load i32, ptr %R10, align 4
  %zext.310 = zext i32 %.2931 to i64
  %.2932 = load i32, ptr %R11, align 4
  %zext.311 = zext i32 %.2932 to i64
  %shl.163 = shl nuw i64 %zext.311, 32
  %or.150 = or disjoint i64 %shl.163, %zext.310
  %ptr_plus_imm.102 = add i64 %or.150, 12
  %inttoptr_bytes.140 = inttoptr i64 %ptr_plus_imm.102 to ptr addrspace(1)
  %.2933 = load float, ptr addrspace(1) %inttoptr_bytes.140, align 4
  store float %.2933, ptr %R44, align 4
  %.2937 = load i32, ptr %R12, align 4
  %zext.312 = zext i32 %.2937 to i64
  %.2938 = load i32, ptr %R13, align 4
  %zext.313 = zext i32 %.2938 to i64
  %shl.164 = shl nuw i64 %zext.313, 32
  %or.151 = or disjoint i64 %shl.164, %zext.312
  %ptr_plus_imm.103 = add i64 %or.151, 8
  %inttoptr_bytes.141 = inttoptr i64 %ptr_plus_imm.103 to ptr addrspace(1)
  %.2939 = load float, ptr addrspace(1) %inttoptr_bytes.141, align 4
  store float %.2939, ptr %R41, align 4
  %.2943 = load i32, ptr %R12, align 4
  %zext.314 = zext i32 %.2943 to i64
  %.2944 = load i32, ptr %R13, align 4
  %zext.315 = zext i32 %.2944 to i64
  %shl.165 = shl nuw i64 %zext.315, 32
  %or.152 = or disjoint i64 %shl.165, %zext.314
  %ptr_plus_imm.104 = add i64 %or.152, 12
  %inttoptr_bytes.142 = inttoptr i64 %ptr_plus_imm.104 to ptr addrspace(1)
  %.2945 = load float, ptr addrspace(1) %inttoptr_bytes.142, align 4
  store float %.2945, ptr %R43, align 4
  %.2953 = load i32, ptr %R23, align 4
  %.2954 = add i32 %.2953, -8
  store i32 %.2954, ptr %R23, align 4
  %.2958 = load i32, ptr %R22, align 4
  %.2959 = add i32 %.2958, 8
  store i32 %.2959, ptr %R22, align 4
  %.2963 = load float, ptr %R18, align 4
  %.2964 = load float, ptr %R9, align 4
  %fmul.117 = fmul float %.2963, %.2964
  store float %fmul.117, ptr %R15, align 4
  %.2969 = load float, ptr %R19, align 4
  %.2970 = load float, ptr %R8, align 4
  %fmul.118 = fmul float %fmul.117, %.2969
  %fadd.109 = fadd float %fmul.118, %.2970
  store float %fadd.109, ptr %R15, align 4
  %.2974 = load float, ptr %R24, align 4
  %.2975 = load float, ptr %R9, align 4
  %fmul.119 = fmul float %.2974, %.2975
  store float %fmul.119, ptr %R24, align 4
  %.2980 = load float, ptr %R21, align 4
  %fmul.120 = fmul float %fmul.119, %.2980
  %fadd.110 = fadd float %fmul.120, %fadd.109
  store float %fadd.110, ptr %R15, align 4
  %.2985 = load float, ptr %R34, align 4
  %.2986 = load float, ptr %R9, align 4
  %fmul.121 = fmul float %.2985, %.2986
  store float %fmul.121, ptr %R34, align 4
  %.2991 = load float, ptr %R25, align 4
  %fmul.122 = fmul float %fmul.121, %.2991
  %fadd.111 = fadd float %fmul.122, %fadd.110
  store float %fadd.111, ptr %R15, align 4
  %.2996 = load float, ptr %R36, align 4
  %.2997 = load float, ptr %R9, align 4
  %fmul.123 = fmul float %.2996, %.2997
  store float %fmul.123, ptr %R36, align 4
  %.3002 = load float, ptr %R35, align 4
  %fmul.124 = fmul float %fmul.123, %.3002
  %fadd.112 = fadd float %fmul.124, %fadd.111
  store float %fadd.112, ptr %R15, align 4
  %.3007 = load float, ptr %R38, align 4
  %.3008 = load float, ptr %R9, align 4
  %fmul.125 = fmul float %.3007, %.3008
  store float %fmul.125, ptr %R38, align 4
  %.3013 = load float, ptr %R37, align 4
  %fmul.126 = fmul float %fmul.125, %.3013
  %fadd.113 = fadd float %fmul.126, %fadd.112
  store float %fadd.113, ptr %R15, align 4
  %.3018 = load float, ptr %R40, align 4
  %.3019 = load float, ptr %R9, align 4
  %fmul.127 = fmul float %.3018, %.3019
  store float %fmul.127, ptr %R40, align 4
  %.3024 = load float, ptr %R39, align 4
  %fmul.128 = fmul float %fmul.127, %.3024
  %fadd.114 = fadd float %fmul.128, %fadd.113
  store float %fadd.114, ptr %R15, align 4
  %.3029 = load float, ptr %R42, align 4
  %.3030 = load float, ptr %R9, align 4
  %fmul.129 = fmul float %.3029, %.3030
  store float %fmul.129, ptr %R42, align 4
  %.3034 = load float, ptr %R44, align 4
  %fmul.130 = fmul float %.3034, %.3030
  store float %fmul.130, ptr %R44, align 4
  %.3040 = load float, ptr %R41, align 4
  %.3041 = load float, ptr %R15, align 4
  %fmul.131 = fmul float %fmul.129, %.3040
  %fadd.115 = fadd float %fmul.131, %.3041
  store float %fadd.115, ptr %R15, align 4
  %.3046 = load float, ptr %R43, align 4
  %fmul.132 = fmul float %fmul.130, %.3046
  %fadd.116 = fadd float %fmul.132, %fadd.115
  store float %fadd.116, ptr %R8, align 4
  br label %.L_x_15

.L_x_15:                                          ; preds = %.L_x_13_split_0x19f0, %.L_x_13
  br i1 false, label %.L_x_11, label %.L_x_12.preheader

.L_x_12.preheader:                                ; preds = %.L_x_7_split_0x1400, %.L_x_15
  br label %.L_x_12

.L_x_12:                                          ; preds = %.L_x_12.preheader, %.L_x_12
  store i32 4, ptr %R13, align 4
  %.3066 = load i32, ptr %R22, align 4
  %.3067 = add i32 %imad_add.6, %.3066
  store i32 %.3067, ptr %R12, align 4
  %imad_ext1.40 = zext i32 %.3066 to i64
  %imad_mul.48 = shl nuw nsw i64 %imad_ext1.40, 2
  %.3073 = ptrtoint ptr %Arg_1 to i64
  %imad_add.48 = add i64 %imad_mul.48, %.3073
  %.3075 = lshr i64 %imad_add.48, 32
  %trunc32.90 = trunc nuw i64 %.3075 to i32
  %trunc32.91 = trunc i64 %imad_add.48 to i32
  store i32 %trunc32.91, ptr %R10, align 4
  store i32 %trunc32.90, ptr %R11, align 4
  %.3079 = load i32, ptr %R12, align 4
  %.3080 = load i32, ptr %R13, align 4
  %imad_ext1.41 = zext i32 %.3079 to i64
  %imad_ext2.41 = zext i32 %.3080 to i64
  %imad_mul.49 = mul nuw i64 %imad_ext1.41, %imad_ext2.41
  %.3081 = ptrtoint ptr %Arg_2 to i64
  %imad_add.49 = add i64 %imad_mul.49, %.3081
  %.3083 = lshr i64 %imad_add.49, 32
  %trunc32.92 = trunc nuw i64 %.3083 to i32
  %trunc32.93 = trunc i64 %imad_add.49 to i32
  store i32 %trunc32.93, ptr %R12, align 4
  store i32 %trunc32.92, ptr %R13, align 4
  %.3087 = load i32, ptr %R10, align 4
  %zext.316 = zext i32 %.3087 to i64
  %.3088 = load i32, ptr %R11, align 4
  %zext.317 = zext i32 %.3088 to i64
  %shl.166 = shl nuw i64 %zext.317, 32
  %or.153 = or disjoint i64 %shl.166, %zext.316
  %inttoptr_bytes.143 = inttoptr i64 %or.153 to ptr addrspace(1)
  %.3089 = load float, ptr addrspace(1) %inttoptr_bytes.143, align 4
  store float %.3089, ptr %R14, align 4
  %.3093 = load i32, ptr %R12, align 4
  %zext.318 = zext i32 %.3093 to i64
  %.3094 = load i32, ptr %R13, align 4
  %zext.319 = zext i32 %.3094 to i64
  %shl.167 = shl nuw i64 %zext.319, 32
  %or.154 = or disjoint i64 %shl.167, %zext.318
  %inttoptr_bytes.144 = inttoptr i64 %or.154 to ptr addrspace(1)
  %.3095 = load float, ptr addrspace(1) %inttoptr_bytes.144, align 4
  store float %.3095, ptr %R16, align 4
  %.3099 = load i32, ptr %R10, align 4
  %zext.320 = zext i32 %.3099 to i64
  %.3100 = load i32, ptr %R11, align 4
  %zext.321 = zext i32 %.3100 to i64
  %shl.168 = shl nuw i64 %zext.321, 32
  %or.155 = or disjoint i64 %shl.168, %zext.320
  %ptr_plus_imm.105 = add i64 %or.155, 4
  %inttoptr_bytes.145 = inttoptr i64 %ptr_plus_imm.105 to ptr addrspace(1)
  %.3101 = load float, ptr addrspace(1) %inttoptr_bytes.145, align 4
  store float %.3101, ptr %R18, align 4
  %.3105 = load i32, ptr %R12, align 4
  %zext.322 = zext i32 %.3105 to i64
  %.3106 = load i32, ptr %R13, align 4
  %zext.323 = zext i32 %.3106 to i64
  %shl.169 = shl nuw i64 %zext.323, 32
  %or.156 = or disjoint i64 %shl.169, %zext.322
  %ptr_plus_imm.106 = add i64 %or.156, 4
  %inttoptr_bytes.146 = inttoptr i64 %ptr_plus_imm.106 to ptr addrspace(1)
  %.3107 = load float, ptr addrspace(1) %inttoptr_bytes.146, align 4
  store float %.3107, ptr %R17, align 4
  %.3111 = load i32, ptr %R10, align 4
  %zext.324 = zext i32 %.3111 to i64
  %.3112 = load i32, ptr %R11, align 4
  %zext.325 = zext i32 %.3112 to i64
  %shl.170 = shl nuw i64 %zext.325, 32
  %or.157 = or disjoint i64 %shl.170, %zext.324
  %ptr_plus_imm.107 = add i64 %or.157, 8
  %inttoptr_bytes.147 = inttoptr i64 %ptr_plus_imm.107 to ptr addrspace(1)
  %.3113 = load float, ptr addrspace(1) %inttoptr_bytes.147, align 4
  store float %.3113, ptr %R24, align 4
  %.3117 = load i32, ptr %R12, align 4
  %zext.326 = zext i32 %.3117 to i64
  %.3118 = load i32, ptr %R13, align 4
  %zext.327 = zext i32 %.3118 to i64
  %shl.171 = shl nuw i64 %zext.327, 32
  %or.158 = or disjoint i64 %shl.171, %zext.326
  %ptr_plus_imm.108 = add i64 %or.158, 8
  %inttoptr_bytes.148 = inttoptr i64 %ptr_plus_imm.108 to ptr addrspace(1)
  %.3119 = load float, ptr addrspace(1) %inttoptr_bytes.148, align 4
  store float %.3119, ptr %R19, align 4
  %.3123 = load i32, ptr %R10, align 4
  %zext.328 = zext i32 %.3123 to i64
  %.3124 = load i32, ptr %R11, align 4
  %zext.329 = zext i32 %.3124 to i64
  %shl.172 = shl nuw i64 %zext.329, 32
  %or.159 = or disjoint i64 %shl.172, %zext.328
  %ptr_plus_imm.109 = add i64 %or.159, 12
  %inttoptr_bytes.149 = inttoptr i64 %ptr_plus_imm.109 to ptr addrspace(1)
  %.3125 = load float, ptr addrspace(1) %inttoptr_bytes.149, align 4
  store float %.3125, ptr %R34, align 4
  %.3129 = load i32, ptr %R12, align 4
  %zext.330 = zext i32 %.3129 to i64
  %.3130 = load i32, ptr %R13, align 4
  %zext.331 = zext i32 %.3130 to i64
  %shl.173 = shl nuw i64 %zext.331, 32
  %or.160 = or disjoint i64 %shl.173, %zext.330
  %ptr_plus_imm.110 = add i64 %or.160, 12
  %inttoptr_bytes.150 = inttoptr i64 %ptr_plus_imm.110 to ptr addrspace(1)
  %.3131 = load float, ptr addrspace(1) %inttoptr_bytes.150, align 4
  store float %.3131, ptr %R21, align 4
  %.3135 = load i32, ptr %R23, align 4
  %.3136 = add i32 %.3135, -4
  store i32 %.3136, ptr %R23, align 4
  %.3140 = load i32, ptr %R22, align 4
  %.3141 = add i32 %.3140, 4
  store i32 %.3141, ptr %R22, align 4
  %cmp.26.not = icmp eq i32 %.3136, 0
  %.3152 = load float, ptr %R14, align 4
  %.3153 = load float, ptr %R9, align 4
  %fmul.133 = fmul float %.3152, %.3153
  store float %fmul.133, ptr %R15, align 4
  %.3158 = load float, ptr %R16, align 4
  %.3159 = load float, ptr %R8, align 4
  %fmul.134 = fmul float %fmul.133, %.3158
  %fadd.117 = fadd float %fmul.134, %.3159
  store float %fadd.117, ptr %R15, align 4
  %.3163 = load float, ptr %R18, align 4
  %.3164 = load float, ptr %R9, align 4
  %fmul.135 = fmul float %.3163, %.3164
  store float %fmul.135, ptr %R18, align 4
  %.3169 = load float, ptr %R17, align 4
  %fmul.136 = fmul float %fmul.135, %.3169
  %fadd.118 = fadd float %fmul.136, %fadd.117
  store float %fadd.118, ptr %R15, align 4
  %.3174 = load float, ptr %R24, align 4
  %.3175 = load float, ptr %R9, align 4
  %fmul.137 = fmul float %.3174, %.3175
  store float %fmul.137, ptr %R24, align 4
  %.3180 = load float, ptr %R19, align 4
  %fmul.138 = fmul float %fmul.137, %.3180
  %fadd.119 = fadd float %fmul.138, %fadd.118
  store float %fadd.119, ptr %R15, align 4
  %.3185 = load float, ptr %R34, align 4
  %.3186 = load float, ptr %R9, align 4
  %fmul.139 = fmul float %.3185, %.3186
  store float %fmul.139, ptr %R34, align 4
  %.3191 = load float, ptr %R21, align 4
  %fmul.140 = fmul float %fmul.139, %.3191
  %fadd.120 = fadd float %fmul.140, %fadd.119
  store float %fadd.120, ptr %R8, align 4
  br i1 %cmp.26.not, label %.L_x_11.loopexit, label %.L_x_12

.L_x_11.loopexit:                                 ; preds = %.L_x_12
  br label %.L_x_11

.L_x_11:                                          ; preds = %.L_x_11.loopexit, %.L_x_15, %.L_x_7_split_0x13c0
  %.3200 = load i32, ptr %R4, align 4
  %cmp.27.not = icmp eq i32 %.3200, 0
  br i1 %cmp.27.not, label %.L_x_10, label %.L_x_11_split_0x1e60

.L_x_11_split_0x1e60:                             ; preds = %.L_x_11
  store i32 4, ptr %R11, align 4
  %.3214 = load i32, ptr %R22, align 4
  %.3215 = add i32 %imad_add.6, %.3214
  store i32 %.3215, ptr %R10, align 4
  %imad_ext1.42 = zext i32 %.3214 to i64
  %imad_mul.50 = shl nuw nsw i64 %imad_ext1.42, 2
  %.3221 = ptrtoint ptr %Arg_1 to i64
  %imad_add.50 = add i64 %imad_mul.50, %.3221
  %.3223 = lshr i64 %imad_add.50, 32
  %trunc32.94 = trunc nuw i64 %.3223 to i32
  %trunc32.95 = trunc i64 %imad_add.50 to i32
  store i32 %trunc32.95, ptr %R22, align 4
  store i32 %trunc32.94, ptr %R23, align 4
  %.3227 = load i32, ptr %R10, align 4
  %.3228 = load i32, ptr %R11, align 4
  %imad_ext1.43 = zext i32 %.3227 to i64
  %imad_ext2.43 = zext i32 %.3228 to i64
  %imad_mul.51 = mul nuw i64 %imad_ext1.43, %imad_ext2.43
  %.3229 = ptrtoint ptr %Arg_2 to i64
  %imad_add.51 = add i64 %imad_mul.51, %.3229
  %.3231 = lshr i64 %imad_add.51, 32
  %trunc32.96 = trunc nuw i64 %.3231 to i32
  %trunc32.97 = trunc i64 %imad_add.51 to i32
  store i32 %trunc32.97, ptr %R10, align 4
  store i32 %trunc32.96, ptr %R11, align 4
  %.3235 = load i32, ptr %R22, align 4
  %zext.332 = zext i32 %.3235 to i64
  %.3236 = load i32, ptr %R23, align 4
  %zext.333 = zext i32 %.3236 to i64
  %shl.174 = shl nuw i64 %zext.333, 32
  %or.161 = or disjoint i64 %shl.174, %zext.332
  %inttoptr_bytes.151 = inttoptr i64 %or.161 to ptr addrspace(1)
  %.3237 = load float, ptr addrspace(1) %inttoptr_bytes.151, align 4
  store float %.3237, ptr %R12, align 4
  %.3241 = load i32, ptr %R10, align 4
  %zext.334 = zext i32 %.3241 to i64
  %.3242 = load i32, ptr %R11, align 4
  %zext.335 = zext i32 %.3242 to i64
  %shl.175 = shl nuw i64 %zext.335, 32
  %or.162 = or disjoint i64 %shl.175, %zext.334
  %inttoptr_bytes.152 = inttoptr i64 %or.162 to ptr addrspace(1)
  %.3243 = load float, ptr addrspace(1) %inttoptr_bytes.152, align 4
  store float %.3243, ptr %R14, align 4
  %.3247 = load i32, ptr %R4, align 4
  %cmp.28.not = icmp eq i32 %.3247, 1
  %.3254 = load float, ptr %R12, align 4
  %.3255 = load float, ptr %R9, align 4
  %fmul.141 = fmul float %.3254, %.3255
  store float %fmul.141, ptr %R13, align 4
  %.3260 = load float, ptr %R14, align 4
  %.3261 = load float, ptr %R8, align 4
  %fmul.142 = fmul float %fmul.141, %.3260
  %fadd.121 = fadd float %fmul.142, %.3261
  store float %fadd.121, ptr %R8, align 4
  br i1 %cmp.28.not, label %.L_x_10, label %.L_x_11_split_0x1f00

.L_x_11_split_0x1f00:                             ; preds = %.L_x_11_split_0x1e60
  %.3269 = load i32, ptr %R4, align 4
  %cmp.29.not = icmp eq i32 %.3269, 2
  %.3276 = load i32, ptr %R22, align 4
  %zext.336 = zext i32 %.3276 to i64
  %.3277 = load i32, ptr %R23, align 4
  %zext.337 = zext i32 %.3277 to i64
  %shl.176 = shl nuw i64 %zext.337, 32
  %or.163 = or disjoint i64 %shl.176, %zext.336
  %ptr_plus_imm.111 = add i64 %or.163, 4
  %inttoptr_bytes.153 = inttoptr i64 %ptr_plus_imm.111 to ptr addrspace(1)
  %.3278 = load float, ptr addrspace(1) %inttoptr_bytes.153, align 4
  store float %.3278, ptr %R12, align 4
  %.3282 = load i32, ptr %R10, align 4
  %zext.338 = zext i32 %.3282 to i64
  %.3283 = load i32, ptr %R11, align 4
  %zext.339 = zext i32 %.3283 to i64
  %shl.177 = shl nuw i64 %zext.339, 32
  %or.164 = or disjoint i64 %shl.177, %zext.338
  %ptr_plus_imm.112 = add i64 %or.164, 4
  %inttoptr_bytes.154 = inttoptr i64 %ptr_plus_imm.112 to ptr addrspace(1)
  %.3284 = load float, ptr addrspace(1) %inttoptr_bytes.154, align 4
  store float %.3284, ptr %R14, align 4
  br i1 %cmp.29.not, label %.L_x_11_split_0x1f50, label %.L_x_11_split_0x1f00_conditionalExpr_0x1f30

.L_x_11_split_0x1f00_conditionalExpr_0x1f30:      ; preds = %.L_x_11_split_0x1f00
  %.3292 = load i32, ptr %R22, align 4
  %zext.340 = zext i32 %.3292 to i64
  %.3293 = load i32, ptr %R23, align 4
  %zext.341 = zext i32 %.3293 to i64
  %shl.178 = shl nuw i64 %zext.341, 32
  %or.165 = or disjoint i64 %shl.178, %zext.340
  %ptr_plus_imm.113 = add i64 %or.165, 8
  %inttoptr_bytes.155 = inttoptr i64 %ptr_plus_imm.113 to ptr addrspace(1)
  %.3294 = load float, ptr addrspace(1) %inttoptr_bytes.155, align 4
  store float %.3294, ptr %R16, align 4
  %.3304 = load i32, ptr %R10, align 4
  %zext.342 = zext i32 %.3304 to i64
  %.3305 = load i32, ptr %R11, align 4
  %zext.343 = zext i32 %.3305 to i64
  %shl.179 = shl nuw i64 %zext.343, 32
  %or.166 = or disjoint i64 %shl.179, %zext.342
  %ptr_plus_imm.114 = add i64 %or.166, 8
  %inttoptr_bytes.156 = inttoptr i64 %ptr_plus_imm.114 to ptr addrspace(1)
  %.3306 = load float, ptr addrspace(1) %inttoptr_bytes.156, align 4
  store float %.3306, ptr %R15, align 4
  br label %.L_x_11_split_0x1f50

.L_x_11_split_0x1f50:                             ; preds = %.L_x_11_split_0x1f00, %.L_x_11_split_0x1f00_conditionalExpr_0x1f30
  %.3312 = load float, ptr %R12, align 4
  %.3313 = load float, ptr %R9, align 4
  %fmul.143 = fmul float %.3312, %.3313
  store float %fmul.143, ptr %R13, align 4
  %.3318 = load float, ptr %R14, align 4
  %.3319 = load float, ptr %R8, align 4
  %fmul.144 = fmul float %fmul.143, %.3318
  %fadd.122 = fadd float %fmul.144, %.3319
  store float %fadd.122, ptr %R8, align 4
  br i1 %cmp.29.not, label %.L_x_10, label %.L_x_11_split_0x1f50_conditionalExpr_0x1f70

.L_x_11_split_0x1f50_conditionalExpr_0x1f70:      ; preds = %.L_x_11_split_0x1f50
  %.3327 = load float, ptr %R16, align 4
  %.3328 = load float, ptr %R9, align 4
  %fmul.145 = fmul float %.3327, %.3328
  store float %fmul.145, ptr %R9, align 4
  %.3339 = load float, ptr %R15, align 4
  %.3340 = load float, ptr %R8, align 4
  %fmul.146 = fmul float %fmul.145, %.3339
  %fadd.123 = fadd float %fmul.146, %.3340
  store float %fadd.123, ptr %R8, align 4
  br label %.L_x_10

.L_x_10:                                          ; preds = %.L_x_11_split_0x1f50, %.L_x_11_split_0x1f50_conditionalExpr_0x1f70, %.L_x_11_split_0x1e60, %.L_x_11, %.L_x_7
  %inttoptr_bytes.157 = inttoptr i64 %imad_add.4 to ptr addrspace(1)
  %.3348 = load float, ptr addrspace(1) %inttoptr_bytes.157, align 4
  store float %.3348, ptr %R9, align 4
  %.3355 = load float, ptr %R8, align 4
  %fadd.124 = fadd float %.3348, %.3355
  store float %fadd.124, ptr %R12, align 4
  %llvm_fabs_result = tail call float @llvm.fabs.f32(float %fadd.124)
  %fcmp_unordered = fcmp ult float %llvm_fabs_result, 0x3FE3333340000000
  br i1 %fcmp_unordered, label %.L_x_17, label %.L_x_10_split_0x1ff0

.L_x_10_split_0x1ff0:                             ; preds = %.L_x_10
  %.3370 = load float, ptr %R12, align 4
  %llvm_fabs_result.1 = tail call float @llvm.fabs.f32(float %.3370)
  %fmul.147 = fmul float %llvm_fabs_result.1, 0x4007154760000000
  store float %fmul.147, ptr %R8, align 4
  store float 0x41CFC00000000000, ptr %R9, align 4
  %llvm_fabs_result.2 = tail call float @llvm.fabs.f32(float %.3370)
  %fcmp_unordered.1 = fcmp ult float %llvm_fabs_result.2, 0x4022059680000000
  %llvm_exp2_f32_result.2 = tail call float @llvm.exp2.f32(float %fmul.147)
  store float %llvm_exp2_f32_result.2, ptr %R8, align 4
  %fadd.125 = fadd float %llvm_exp2_f32_result.2, 1.000000e+00
  %.3393 = fdiv float 1.000000e+00, %fadd.125
  store float %.3393, ptr %R10, align 4
  %.3398 = load float, ptr %R9, align 4
  %fmul.148 = fmul float %.3393, -2.000000e+00
  %fadd.126 = fadd float %fmul.148, %.3398
  %fsel = select i1 %fcmp_unordered.1, float %fadd.126, float 1.000000e+00
  store float %fsel, ptr %R9, align 4
  %.3409.cast = bitcast float %fsel to i32
  %.3410 = load i32, ptr %R12, align 4
  %13 = tail call float @llvm.fabs.f32(float %fadd.126)
  %.neg = fneg float %13
  %14 = select i1 %fcmp_unordered.1, float %.neg, float -1.000000e+00
  %.3412 = bitcast float %14 to i32
  %.3413 = or i32 %.3410, %.3409.cast
  %.3414 = and i32 %.3413, %.3412
  %15 = bitcast i32 %.3414 to float
  br label %.L_x_16

.L_x_17:                                          ; preds = %.L_x_10
  store float 0x41CE407840000000, ptr %R9, align 4
  %.3422 = load float, ptr %R12, align 4
  %fmul.149 = fmul float %.3422, %.3422
  store float %fmul.149, ptr %R8, align 4
  %fmul.150 = fmul float %fmul.149, 0x41CE407840000000
  %fadd.127 = fadd float %fmul.150, 0xBFAAC795C0000000
  %fmul.151 = fmul float %fmul.149, %fadd.127
  %fadd.128 = fadd float %fmul.151, 0x3FC10B2820000000
  %fmul.152 = fmul float %fmul.149, %fadd.128
  %fadd.129 = fadd float %fmul.152, 0xBFD5553DA0000000
  store float %fadd.129, ptr %R9, align 4
  %.3442 = load float, ptr %R8, align 4
  %fmul.153 = fmul float %.3442, %fadd.129
  %fadd.130 = fadd float %fmul.153, 0.000000e+00
  store float %fadd.130, ptr %R9, align 4
  %.3447 = load float, ptr %R12, align 4
  %fmul.154 = fmul float %.3447, %fadd.130
  %fadd.131 = fadd float %fmul.154, %.3447
  br label %.L_x_16

.L_x_16:                                          ; preds = %.L_x_10_split_0x1ff0, %.L_x_17
  %storemerge18 = phi float [ %fadd.131, %.L_x_17 ], [ %15, %.L_x_10_split_0x1ff0 ]
  store float %storemerge18, ptr %R9, align 4
  %.3456 = load i32, ptr %R20, align 4
  %.3457 = add i32 %.3456, 25165824
  %.3465 = and i32 %.3457, 2139095040
  store i32 %.3465, ptr %R8, align 4
  %cmp.30 = icmp samesign ugt i32 %.3465, 33554431
  br i1 %cmp.30, label %.L_x_20, label %.L_x_16_split_0x2170_CALL_0x21b0

.L_x_16_split_0x2170_CALL_0x21b0:                 ; preds = %.L_x_16
  %.3479 = load float, ptr %R20, align 4
  store float %.3479, ptr %R24, align 4
  store i32 8608, ptr %R10, align 4
  %.3488.cast = bitcast float %.3479 to i32
  %shl.182 = shl i32 %.3488.cast, 1
  store i32 %shl.182, ptr %R11, align 4
  %16 = lshr i32 %shl.182, 24
  store i32 %16, ptr %R25, align 4
  %cmp.31 = icmp ugt i32 %shl.182, 16777215
  br i1 %cmp.31, label %.L_x_49...2, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2": ; preds = %.L_x_16_split_0x2170_CALL_0x21b0
  %.3509 = load i32, ptr %R24, align 4
  %shl.185 = shl i32 %.3509, 1
  store i32 %shl.185, ptr %R11, align 4
  %cmp.32.not = icmp eq i32 %shl.185, 0
  br i1 %cmp.32.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2"
  %.3523 = load float, ptr %R24, align 4
  %fmul.155 = fmul float %.3523, 0x43F0000000000000
  %fadd.132 = fadd float %fmul.155, 0.000000e+00
  store float %fadd.132, ptr %R12, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2"
  %.3529 = load float, ptr %R24, align 4
  %fmul.156 = fmul float %.3529, 0x43F0000000000000
  %fadd.133 = fadd float %fmul.156, 0.000000e+00
  store float %fadd.133, ptr %R12, align 4
  br i1 %cmp.32.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
  %.3539 = load i32, ptr %R24, align 4
  %sint_to_f32.1 = sitofp i32 %.3539 to float
  %.3540 = fdiv float 1.000000e+00, %sint_to_f32.1
  %.3541 = fptosi float %.3540 to i32
  store i32 %.3541, ptr %R11, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
  %.3546 = load i32, ptr %R24, align 4
  %sint_to_f32.2 = sitofp i32 %.3546 to float
  %.3547 = fdiv float 1.000000e+00, %sint_to_f32.2
  %.3548 = fptosi float %.3547 to i32
  store i32 %.3548, ptr %R11, align 4
  br i1 %cmp.32.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
  %.3557 = load float, ptr %R12, align 4
  %.3558 = fdiv float 1.000000e+00, %.3557
  store float %.3558, ptr %R13, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
  %.3564 = load float, ptr %R12, align 4
  %.3565 = fdiv float 1.000000e+00, %.3564
  store float %.3565, ptr %R13, align 4
  br i1 %cmp.32.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
  %.3575 = load float, ptr %R12, align 4
  %.3576 = load float, ptr %R13, align 4
  %fmul.157 = fmul float %.3575, %.3576
  %fadd.134 = fadd float %fmul.157, -1.000000e+00
  store float %fadd.134, ptr %R22, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
  %.3582 = load float, ptr %R12, align 4
  %.3583 = load float, ptr %R13, align 4
  %fmul.158 = fmul float %.3582, %.3583
  %fadd.135 = fadd float %fmul.158, -1.000000e+00
  store float %fadd.135, ptr %R22, align 4
  br i1 %cmp.32.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
  %.3593 = load float, ptr %R22, align 4
  %.3598 = tail call i1 @llvm.is.fpclass.f32(float %.3593, i32 144)
  %17 = fsub float 0.000000e+00, %.3593
  %18 = tail call i1 @llvm.is.fpclass.f32(float %17, i32 144)
  %19 = select i1 %.3598, i1 true, i1 %18
  %.3609 = select i1 %19, float 0.000000e+00, float %17
  store float %.3609, ptr %R22, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
  %.3615 = load float, ptr %R22, align 4
  %.3620 = tail call i1 @llvm.is.fpclass.f32(float %.3615, i32 144)
  %20 = fsub float 0.000000e+00, %.3615
  %21 = tail call i1 @llvm.is.fpclass.f32(float %20, i32 144)
  %22 = select i1 %.3620, i1 true, i1 %21
  %.3631 = select i1 %22, float 0.000000e+00, float %20
  store float %.3631, ptr %R22, align 4
  br i1 %cmp.32.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
  %.3641 = load float, ptr %R13, align 4
  %.3642 = load float, ptr %R22, align 4
  %fmul.159 = fmul float %.3641, %.3642
  %fadd.138 = fadd float %fmul.159, %.3641
  store float %fadd.138, ptr %R22, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
  %.3649 = load float, ptr %R13, align 4
  %.3650 = load float, ptr %R22, align 4
  %fmul.160 = fmul float %.3649, %.3650
  %fadd.139 = fadd float %fmul.160, %.3649
  store float %fadd.139, ptr %R22, align 4
  br i1 %cmp.32.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
  %.3661 = load float, ptr %R22, align 4
  %fmul.161 = fmul float %.3661, 0x43F0000000000000
  %fadd.140 = fadd float %fmul.161, 0.000000e+00
  store float %fadd.140, ptr %R11, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
  %.3667 = load float, ptr %R22, align 4
  %fmul.162 = fmul float %.3667, 0x43F0000000000000
  %fadd.141 = fadd float %fmul.162, 0.000000e+00
  store float %fadd.141, ptr %R11, align 4
  br label %.L_x_48...2

.L_x_49...2:                                      ; preds = %.L_x_16_split_0x2170_CALL_0x21b0
  %.3675 = load i32, ptr %R25, align 4
  %.3676 = add i32 %.3675, -253
  store i32 %.3676, ptr %R34, align 4
  %cmp.33 = icmp sgt i32 %.3676, 1
  br i1 %cmp.33, label %.L_x_51...2, label %.L_x_49_split_0x4a30...2

.L_x_49_split_0x4a30...2:                         ; preds = %.L_x_49...2
  %.3691 = load i32, ptr %R24, align 4
  %.3693 = and i32 %.3691, 8388607
  store i32 %.3693, ptr %R11, align 4
  store i32 3, ptr %R23, align 4
  %.3700 = or disjoint i32 %.3693, 1065353216
  store i32 %.3700, ptr %R11, align 4
  %.3706 = load i32, ptr %R34, align 4
  %zext.357 = zext nneg i32 %.3706 to i64
  %shl.187 = shl i64 3, %zext.357
  %trunc32.101 = trunc i64 %shl.187 to i32
  store i32 %trunc32.101, ptr %R23, align 4
  %sint_to_f32.3 = uitofp nneg i32 %.3700 to float
  %.3710 = fdiv float 1.000000e+00, %sint_to_f32.3
  %.3711 = fptosi float %.3710 to i32
  store i32 %.3711, ptr %R12, align 4
  %.3714 = load float, ptr %R11, align 4
  %.3715.cast = bitcast i32 %.3711 to float
  %fmul.163 = fmul float %.3714, %.3715.cast
  %fadd.142 = fadd float %fmul.163, -1.000000e+00
  %.3724 = tail call i1 @llvm.is.fpclass.f32(float %fadd.142, i32 144)
  %23 = fsub float 0.000000e+00, %fadd.142
  %24 = tail call i1 @llvm.is.fpclass.f32(float %23, i32 144)
  %25 = select i1 %.3724, i1 true, i1 %24
  %.3735 = select i1 %25, float 0.000000e+00, float %23
  store float %.3735, ptr %R13, align 4
  %.3739 = load float, ptr %R12, align 4
  %fmul.164 = fmul float %.3739, %.3735
  %fadd.144 = fadd float %fmul.164, %.3739
  store float %fadd.144, ptr %R22, align 4
  %fmul.165 = fmul float %.3739, %.3735
  %fadd.145 = fadd float %fmul.165, %.3739
  store float %fadd.145, ptr %R13, align 4
  %.3751.cast = bitcast float %fadd.144 to i32
  %.3753 = and i32 %.3751.cast, 8388607
  store i32 %.3753, ptr %R12, align 4
  %.3756 = load float, ptr %R22, align 4
  %.3762 = tail call i1 @llvm.is.fpclass.f32(float %.3756, i32 144)
  %.3763 = select i1 %.3762, float 0.000000e+00, float %.3756
  %.3767 = tail call i1 @llvm.is.fpclass.f32(float %fadd.145, i32 144)
  %.3768 = select i1 %.3767, float 0.000000e+00, float %fadd.145
  %fcmp_ordered.1 = fcmp une float %.3763, %.3768
  %.3774 = load i32, ptr %R12, align 4
  %.3776 = or i32 %.3774, 8388608
  store i32 %.3776, ptr %R12, align 4
  %sel.2.neg = zext i1 %fcmp_ordered.1 to i32
  %sel.2 = sext i1 %fcmp_ordered.1 to i32
  store i32 %sel.2, ptr %R13, align 4
  %.3784 = load i32, ptr %R23, align 4
  %.3787 = and i32 %.3784, %.3776
  store i32 %.3787, ptr %R23, align 4
  store i32 %sel.2.neg, ptr %R13, align 4
  %.3799 = load i32, ptr %R34, align 4
  %zext.358 = zext i32 %.3787 to i64
  %zext.360 = zext nneg i32 %.3799 to i64
  %shl.188 = shl nuw i64 %zext.358, 32
  %lshr.8 = lshr i64 %shl.188, %zext.360
  %lshr.9 = lshr i64 %lshr.8, 32
  %trunc32.102 = trunc nuw i64 %lshr.9 to i32
  store i32 %trunc32.102, ptr %R23, align 4
  %.3815 = and i32 %trunc32.102, 1
  %.3832 = load i32, ptr %R24, align 4
  %.3834 = and i32 %.3832, 8388607
  %.3836.not = icmp eq i32 %.3834, 0
  %.3845 = sub nsw i32 0, %.3815
  store i32 %.3845, ptr %R11, align 4
  %cmp.34.not = icmp eq i32 %.3815, 0
  %.3857 = load i32, ptr %R25, align 4
  %.3858 = add i32 %.3857, -252
  store i32 %.3858, ptr %R11, align 4
  %.3864 = load i32, ptr %R12, align 4
  %zext.361 = zext i32 %.3864 to i64
  %zext.363 = zext nneg i32 %.3858 to i64
  %shl.189 = shl nuw i64 %zext.361, 32
  %lshr.10 = lshr i64 %shl.189, %zext.363
  %lshr.11 = lshr i64 %lshr.10, 32
  %trunc32.103 = trunc nuw i64 %lshr.11 to i32
  store i32 %trunc32.103, ptr %R11, align 4
  br i1 %cmp.34.not, label %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2, label %.L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0

.L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0:  ; preds = %.L_x_49_split_0x4a30...2
  %.3872 = load i32, ptr %R11, align 4
  %.3873 = add i32 %.3872, 1
  store i32 %.3873, ptr %R11, align 4
  br label %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2

.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2:  ; preds = %.L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0, %.L_x_49_split_0x4a30...2
  %.3879 = load i32, ptr %R11, align 4
  %.3880 = add i32 %.3879, 1
  store i32 %.3880, ptr %R11, align 4
  br i1 %.3836.not, label %.L_x_49_split_0x4be0...2_conditionalExpr_0x4be0, label %.L_x_49_split_0x4be0_conditionalExpr_0x4be0...2

.L_x_49_split_0x4be0...2_conditionalExpr_0x4be0:  ; preds = %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2
  %.3891 = load i32, ptr %R11, align 4
  %shl.191 = shl i32 %.3891, 1
  store i32 %shl.191, ptr %R11, align 4
  br label %.L_x_49_split_0x4be0_conditionalExpr_0x4be0...2

.L_x_49_split_0x4be0_conditionalExpr_0x4be0...2:  ; preds = %.L_x_49_split_0x4be0...2_conditionalExpr_0x4be0, %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2
  %.3897 = load i32, ptr %R11, align 4
  %shl.193 = shl i32 %.3897, 1
  store i32 %shl.193, ptr %R11, align 4
  %.3903 = load i32, ptr %R24, align 4
  %.390619 = and i32 %.3903, -2147483648
  %.3907 = or i32 %shl.193, %.390619
  store i32 %.3907, ptr %R11, align 4
  br label %.L_x_48...2

.L_x_51...2:                                      ; preds = %.L_x_49...2
  %.3912 = load i32, ptr %R24, align 4
  %sint_to_f32.4 = sitofp i32 %.3912 to float
  %.3913 = fdiv float 1.000000e+00, %sint_to_f32.4
  %.3914 = fptosi float %.3913 to i32
  store i32 %.3914, ptr %R11, align 4
  br label %.L_x_48...2

.L_x_48...2:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2", %.L_x_49_split_0x4be0_conditionalExpr_0x4be0...2, %.L_x_51...2
  %.3920 = load float, ptr %R11, align 4
  store float %.3920, ptr %R22, align 4
  store i32 0, ptr %R11, align 4
  br label %.L_x_19

.L_x_20:                                          ; preds = %.L_x_16
  %.3937 = load float, ptr %R20, align 4
  %.3938 = fdiv float 1.000000e+00, %.3937
  store float %.3938, ptr %R11, align 4
  %fmul.166 = fmul float %.3937, %.3938
  %fadd.146 = fadd float %fmul.166, -1.000000e+00
  %.3952 = tail call i1 @llvm.is.fpclass.f32(float %fadd.146, i32 144)
  %26 = fsub float 0.000000e+00, %fadd.146
  %27 = tail call i1 @llvm.is.fpclass.f32(float %26, i32 144)
  %28 = select i1 %.3952, i1 true, i1 %27
  %.3963 = select i1 %28, float 0.000000e+00, float %26
  store float %.3963, ptr %R8, align 4
  %.3967 = load float, ptr %R11, align 4
  %fmul.167 = fmul float %.3967, %.3963
  %fadd.148 = fadd float %fmul.167, %.3967
  br label %.L_x_19

.L_x_19:                                          ; preds = %.L_x_48...2, %.L_x_20
  %storemerge20 = phi float [ %fadd.148, %.L_x_20 ], [ %.3920, %.L_x_48...2 ]
  store float %storemerge20, ptr %R8, align 4
  %inttoptr_bytes.158 = inttoptr i64 %imad_add.3 to ptr addrspace(1)
  %.3978 = load float, ptr addrspace(1) %inttoptr_bytes.158, align 4
  store float %.3978, ptr %R11, align 4
  %fadd.149 = fsub float 1.000000e+00, %storemerge20
  store float %fadd.149, ptr %R10, align 4
  %fmul.168 = fmul float %.3978, %storemerge20
  store float %fmul.168, ptr %R11, align 4
  %.3993 = load float, ptr %R9, align 4
  %fmul.169 = fmul float %fadd.149, %.3993
  %fadd.150 = fadd float %fmul.169, %fmul.168
  store float %fadd.150, ptr %R9, align 4
  %inttoptr_bytes.159 = inttoptr i64 %imad_add.3 to ptr addrspace(1)
  store float %fadd.150, ptr addrspace(1) %inttoptr_bytes.159, align 4
  br i1 %cmp.4.not, label %.L_x_22, label %ExitFunction.loopexit15

.L_x_0:                                           ; preds = %.text._Z11gru_forwardPfS_S_S_iii_split_0x0080
  store i32 1, ptr %R18, align 4
  %.4011 = load i32, ptr %R15, align 4
  %.4013 = and i32 %.4011, 3
  store i32 %.4013, ptr %R15, align 4
  %.4016 = load i32, ptr %R5, align 4
  %.4018 = and i32 %.4016, 3
  store i32 %.4018, ptr %R48, align 4
  %.4021 = load i32, ptr %R18, align 4
  %.4023 = sub i32 %Arg_4, %.4021
  store i32 %.4023, ptr %R49, align 4
  %zext.374 = zext i32 %.4016 to i64
  %shl.196 = shl nuw i64 %zext.374, 32
  %ashr.1 = ashr i64 %shl.196, 63
  %trunc32.106 = trunc nsw i64 %ashr.1 to i32
  store i32 %trunc32.106, ptr %R16, align 4
  store i32 0, ptr %R17, align 4
  %.4033 = load i32, ptr %R18, align 4
  %.4035 = sub i32 %Arg_5, %.4033
  store i32 %.4035, ptr %R18, align 4
  %.4039 = load i32, ptr %R15, align 4
  %.4041 = sub i32 %Arg_4, %.4039
  store i32 %.4041, ptr %R19, align 4
  %.4045 = load i32, ptr %R48, align 4
  %.4047 = sub i32 %Arg_5, %.4045
  store i32 %.4047, ptr %R20, align 4
  br label %.L_x_47

.L_x_47:                                          ; preds = %.L_x_44, %.L_x_0
  %.4052 = load i32, ptr %R49, align 4
  %cmp.35 = icmp sgt i32 %.4052, 2
  %.4059 = load i32, ptr %R17, align 4
  store i32 %.4059, ptr %R13, align 4
  store i32 %Arg_5, ptr %R4, align 4
  %.4065 = add i32 %.4059, 1
  store i32 %.4065, ptr %R17, align 4
  %cmp.36 = icmp slt i32 %Arg_5, 1
  %.4076 = load i32, ptr %R15, align 4
  %cmp.37.not = icmp eq i32 %.4076, 0
  %cmp.38.not = icmp slt i32 %.4065, %Arg_6
  store float 0.000000e+00, ptr %R21, align 4
  store i32 0, ptr %R22, align 4
  store float 0.000000e+00, ptr %R56, align 4
  store float 0.000000e+00, ptr %R44, align 4
  br i1 %cmp.35, label %.L_x_47_split_0x23d0, label %.L_x_23

.L_x_47_split_0x23d0:                             ; preds = %.L_x_47
  store i32 %Arg_5, ptr %R25, align 4
  store float 0.000000e+00, ptr %R21, align 4
  store i32 0, ptr %R22, align 4
  %.4112 = load i32, ptr %R19, align 4
  store i32 %.4112, ptr %R12, align 4
  %.4116 = load i32, ptr %R16, align 4
  %zext.377 = zext i32 %.4116 to i64
  %zext.378 = zext i32 %Arg_5 to i64
  %29 = shl i64 %zext.377, 34
  %30 = shl nuw nsw i64 %zext.378, 2
  %shl.198 = or disjoint i64 %29, %30
  %lshr.12 = lshr i64 %shl.198, 32
  %trunc32.107 = trunc nuw i64 %lshr.12 to i32
  store i32 %trunc32.107, ptr %R23, align 4
  br label %.L_x_24

.L_x_24:                                          ; preds = %.L_x_24, %.L_x_47_split_0x23d0
  store i32 4, ptr %R7, align 4
  %.4123 = load i32, ptr %R14, align 4
  %.4124 = load i32, ptr %R22, align 4
  %imad_mul.52 = mul i32 %.4123, %Arg_4
  %imad_add.52 = add i32 %imad_mul.52, %.4124
  store i32 %imad_add.52, ptr %R6, align 4
  store i32 %Arg_5, ptr %R9, align 4
  %.4129 = load i32, ptr %R13, align 4
  %imad_mul.53 = mul i32 %.4129, %Arg_4
  %imad_add.53 = add i32 %imad_mul.53, %.4124
  store i32 %imad_add.53, ptr %R10, align 4
  %.4134 = load i32, ptr %R7, align 4
  %imad_ext1.44 = zext i32 %imad_add.52 to i64
  %imad_ext2.44 = zext i32 %.4134 to i64
  %imad_mul.54 = mul nuw i64 %imad_ext1.44, %imad_ext2.44
  %.4135 = ptrtoint ptr %Arg_2 to i64
  %imad_add.54 = add i64 %imad_mul.54, %.4135
  %.4137 = lshr i64 %imad_add.54, 32
  %trunc32.108 = trunc nuw i64 %.4137 to i32
  %trunc32.109 = trunc i64 %imad_add.54 to i32
  store i32 %trunc32.109, ptr %R4, align 4
  store i32 %trunc32.108, ptr %R5, align 4
  %.4141 = load i32, ptr %R9, align 4
  %.4142 = load i32, ptr %R6, align 4
  %shl.199 = shl i32 %.4141, 1
  %add.6 = add i32 %shl.199, %.4142
  store i32 %add.6, ptr %R6, align 4
  %.4145 = load i32, ptr %R10, align 4
  %.4146 = load i32, ptr %R7, align 4
  %imad_ext1.45 = zext i32 %.4145 to i64
  %imad_ext2.45 = zext i32 %.4146 to i64
  %imad_mul.55 = mul nuw i64 %imad_ext1.45, %imad_ext2.45
  %.4147 = ptrtoint ptr %Arg_0 to i64
  %imad_add.55 = add i64 %imad_mul.55, %.4147
  %.4149 = lshr i64 %imad_add.55, 32
  %trunc32.110 = trunc nuw i64 %.4149 to i32
  %trunc32.111 = trunc i64 %imad_add.55 to i32
  store i32 %trunc32.111, ptr %R10, align 4
  store i32 %trunc32.110, ptr %R11, align 4
  %.4153 = load i32, ptr %R25, align 4
  %.4154 = load i32, ptr %R4, align 4
  %shl.200 = shl i32 %.4153, 2
  %add.7 = add i32 %shl.200, %.4154
  store i32 %add.7, ptr %R8, align 4
  %.4157 = load i32, ptr %R6, align 4
  %.4158 = load i32, ptr %R7, align 4
  %imad_ext1.46 = zext i32 %.4157 to i64
  %imad_ext2.46 = zext i32 %.4158 to i64
  %imad_mul.56 = mul nuw i64 %imad_ext1.46, %imad_ext2.46
  %.4159 = ptrtoint ptr %Arg_2 to i64
  %imad_add.56 = add i64 %imad_mul.56, %.4159
  %.4161 = lshr i64 %imad_add.56, 32
  %trunc32.112 = trunc nuw i64 %.4161 to i32
  %trunc32.113 = trunc i64 %imad_add.56 to i32
  store i32 %trunc32.113, ptr %R6, align 4
  store i32 %trunc32.112, ptr %R7, align 4
  %.4165 = load i32, ptr %R5, align 4
  %.4166 = load i32, ptr %R23, align 4
  %add.8 = add i32 %.4165, %.4166
  %add.10 = add i32 %add.8, 1
  store i32 %add.10, ptr %R9, align 4
  %.4173 = load i32, ptr %R4, align 4
  %zext.380 = zext i32 %.4173 to i64
  %.4174 = load i32, ptr %R5, align 4
  %zext.381 = zext i32 %.4174 to i64
  %shl.201 = shl nuw i64 %zext.381, 32
  %or.180 = or disjoint i64 %shl.201, %zext.380
  %inttoptr_bytes.160 = inttoptr i64 %or.180 to ptr addrspace(1)
  %.4175 = load float, ptr addrspace(1) %inttoptr_bytes.160, align 4
  store float %.4175, ptr %R35, align 4
  %.4179 = load i32, ptr %R10, align 4
  %zext.382 = zext i32 %.4179 to i64
  %.4180 = load i32, ptr %R11, align 4
  %zext.383 = zext i32 %.4180 to i64
  %shl.202 = shl nuw i64 %zext.383, 32
  %or.181 = or disjoint i64 %shl.202, %zext.382
  %inttoptr_bytes.161 = inttoptr i64 %or.181 to ptr addrspace(1)
  %.4181 = load float, ptr addrspace(1) %inttoptr_bytes.161, align 4
  store float %.4181, ptr %R24, align 4
  %.4185 = load i32, ptr %R8, align 4
  %zext.384 = zext i32 %.4185 to i64
  %.4186 = load i32, ptr %R9, align 4
  %zext.385 = zext i32 %.4186 to i64
  %shl.203 = shl nuw i64 %zext.385, 32
  %or.182 = or disjoint i64 %shl.203, %zext.384
  %inttoptr_bytes.162 = inttoptr i64 %or.182 to ptr addrspace(1)
  %.4187 = load float, ptr addrspace(1) %inttoptr_bytes.162, align 4
  store float %.4187, ptr %R37, align 4
  %.4191 = load i32, ptr %R6, align 4
  %zext.386 = zext i32 %.4191 to i64
  %.4192 = load i32, ptr %R7, align 4
  %zext.387 = zext i32 %.4192 to i64
  %shl.204 = shl nuw i64 %zext.387, 32
  %or.183 = or disjoint i64 %shl.204, %zext.386
  %inttoptr_bytes.163 = inttoptr i64 %or.183 to ptr addrspace(1)
  %.4193 = load float, ptr addrspace(1) %inttoptr_bytes.163, align 4
  store float %.4193, ptr %R34, align 4
  %.4197 = load i32, ptr %R4, align 4
  %zext.388 = zext i32 %.4197 to i64
  %.4198 = load i32, ptr %R5, align 4
  %zext.389 = zext i32 %.4198 to i64
  %shl.205 = shl nuw i64 %zext.389, 32
  %or.184 = or disjoint i64 %shl.205, %zext.388
  %ptr_plus_imm.115 = add i64 %or.184, 4
  %inttoptr_bytes.164 = inttoptr i64 %ptr_plus_imm.115 to ptr addrspace(1)
  %.4199 = load float, ptr addrspace(1) %inttoptr_bytes.164, align 4
  store float %.4199, ptr %R36, align 4
  %.4203 = load i32, ptr %R10, align 4
  %zext.390 = zext i32 %.4203 to i64
  %.4204 = load i32, ptr %R11, align 4
  %zext.391 = zext i32 %.4204 to i64
  %shl.206 = shl nuw i64 %zext.391, 32
  %or.185 = or disjoint i64 %shl.206, %zext.390
  %ptr_plus_imm.116 = add i64 %or.185, 4
  %inttoptr_bytes.165 = inttoptr i64 %ptr_plus_imm.116 to ptr addrspace(1)
  %.4205 = load float, ptr addrspace(1) %inttoptr_bytes.165, align 4
  store float %.4205, ptr %R38, align 4
  %.4209 = load i32, ptr %R8, align 4
  %zext.392 = zext i32 %.4209 to i64
  %.4210 = load i32, ptr %R9, align 4
  %zext.393 = zext i32 %.4210 to i64
  %shl.207 = shl nuw i64 %zext.393, 32
  %or.186 = or disjoint i64 %shl.207, %zext.392
  %ptr_plus_imm.117 = add i64 %or.186, 4
  %inttoptr_bytes.166 = inttoptr i64 %ptr_plus_imm.117 to ptr addrspace(1)
  %.4211 = load float, ptr addrspace(1) %inttoptr_bytes.166, align 4
  store float %.4211, ptr %R39, align 4
  %.4215 = load i32, ptr %R6, align 4
  %zext.394 = zext i32 %.4215 to i64
  %.4216 = load i32, ptr %R7, align 4
  %zext.395 = zext i32 %.4216 to i64
  %shl.208 = shl nuw i64 %zext.395, 32
  %or.187 = or disjoint i64 %shl.208, %zext.394
  %ptr_plus_imm.118 = add i64 %or.187, 4
  %inttoptr_bytes.167 = inttoptr i64 %ptr_plus_imm.118 to ptr addrspace(1)
  %.4217 = load float, ptr addrspace(1) %inttoptr_bytes.167, align 4
  store float %.4217, ptr %R41, align 4
  %.4221 = load i32, ptr %R10, align 4
  %zext.396 = zext i32 %.4221 to i64
  %.4222 = load i32, ptr %R11, align 4
  %zext.397 = zext i32 %.4222 to i64
  %shl.209 = shl nuw i64 %zext.397, 32
  %or.188 = or disjoint i64 %shl.209, %zext.396
  %ptr_plus_imm.119 = add i64 %or.188, 8
  %inttoptr_bytes.168 = inttoptr i64 %ptr_plus_imm.119 to ptr addrspace(1)
  %.4223 = load float, ptr addrspace(1) %inttoptr_bytes.168, align 4
  store float %.4223, ptr %R42, align 4
  %.4227 = load i32, ptr %R4, align 4
  %zext.398 = zext i32 %.4227 to i64
  %.4228 = load i32, ptr %R5, align 4
  %zext.399 = zext i32 %.4228 to i64
  %shl.210 = shl nuw i64 %zext.399, 32
  %or.189 = or disjoint i64 %shl.210, %zext.398
  %ptr_plus_imm.120 = add i64 %or.189, 8
  %inttoptr_bytes.169 = inttoptr i64 %ptr_plus_imm.120 to ptr addrspace(1)
  %.4229 = load float, ptr addrspace(1) %inttoptr_bytes.169, align 4
  store float %.4229, ptr %R40, align 4
  %.4233 = load i32, ptr %R8, align 4
  %zext.400 = zext i32 %.4233 to i64
  %.4234 = load i32, ptr %R9, align 4
  %zext.401 = zext i32 %.4234 to i64
  %shl.211 = shl nuw i64 %zext.401, 32
  %or.190 = or disjoint i64 %shl.211, %zext.400
  %ptr_plus_imm.121 = add i64 %or.190, 8
  %inttoptr_bytes.170 = inttoptr i64 %ptr_plus_imm.121 to ptr addrspace(1)
  %.4235 = load float, ptr addrspace(1) %inttoptr_bytes.170, align 4
  store float %.4235, ptr %R43, align 4
  %.4239 = load i32, ptr %R6, align 4
  %zext.402 = zext i32 %.4239 to i64
  %.4240 = load i32, ptr %R7, align 4
  %zext.403 = zext i32 %.4240 to i64
  %shl.212 = shl nuw i64 %zext.403, 32
  %or.191 = or disjoint i64 %shl.212, %zext.402
  %ptr_plus_imm.122 = add i64 %or.191, 8
  %inttoptr_bytes.171 = inttoptr i64 %ptr_plus_imm.122 to ptr addrspace(1)
  %.4241 = load float, ptr addrspace(1) %inttoptr_bytes.171, align 4
  store float %.4241, ptr %R45, align 4
  %.4245 = load i32, ptr %R10, align 4
  %zext.404 = zext i32 %.4245 to i64
  %.4246 = load i32, ptr %R11, align 4
  %zext.405 = zext i32 %.4246 to i64
  %shl.213 = shl nuw i64 %zext.405, 32
  %or.192 = or disjoint i64 %shl.213, %zext.404
  %ptr_plus_imm.123 = add i64 %or.192, 12
  %inttoptr_bytes.172 = inttoptr i64 %ptr_plus_imm.123 to ptr addrspace(1)
  %.4247 = load float, ptr addrspace(1) %inttoptr_bytes.172, align 4
  store float %.4247, ptr %R47, align 4
  %.4251 = load i32, ptr %R4, align 4
  %zext.406 = zext i32 %.4251 to i64
  %.4252 = load i32, ptr %R5, align 4
  %zext.407 = zext i32 %.4252 to i64
  %shl.214 = shl nuw i64 %zext.407, 32
  %or.193 = or disjoint i64 %shl.214, %zext.406
  %ptr_plus_imm.124 = add i64 %or.193, 12
  %inttoptr_bytes.173 = inttoptr i64 %ptr_plus_imm.124 to ptr addrspace(1)
  %.4253 = load float, ptr addrspace(1) %inttoptr_bytes.173, align 4
  store float %.4253, ptr %R46, align 4
  %.4257 = load i32, ptr %R8, align 4
  %zext.408 = zext i32 %.4257 to i64
  %.4258 = load i32, ptr %R9, align 4
  %zext.409 = zext i32 %.4258 to i64
  %shl.215 = shl nuw i64 %zext.409, 32
  %or.194 = or disjoint i64 %shl.215, %zext.408
  %ptr_plus_imm.125 = add i64 %or.194, 12
  %inttoptr_bytes.174 = inttoptr i64 %ptr_plus_imm.125 to ptr addrspace(1)
  %.4259 = load float, ptr addrspace(1) %inttoptr_bytes.174, align 4
  store float %.4259, ptr %R50, align 4
  %.4263 = load i32, ptr %R6, align 4
  %zext.410 = zext i32 %.4263 to i64
  %.4264 = load i32, ptr %R7, align 4
  %zext.411 = zext i32 %.4264 to i64
  %shl.216 = shl nuw i64 %zext.411, 32
  %or.195 = or disjoint i64 %shl.216, %zext.410
  %ptr_plus_imm.126 = add i64 %or.195, 12
  %inttoptr_bytes.175 = inttoptr i64 %ptr_plus_imm.126 to ptr addrspace(1)
  %.4265 = load float, ptr addrspace(1) %inttoptr_bytes.175, align 4
  store float %.4265, ptr %R51, align 4
  %.4269 = load i32, ptr %R12, align 4
  %.4270 = add i32 %.4269, -4
  store i32 %.4270, ptr %R12, align 4
  %.4274 = load i32, ptr %R22, align 4
  %.4275 = add i32 %.4274, 4
  store i32 %.4275, ptr %R22, align 4
  %cmp.39.not = icmp eq i32 %.4270, 0
  %.4286 = load float, ptr %R35, align 4
  %.4287 = load float, ptr %R24, align 4
  %.4288 = load float, ptr %R44, align 4
  %fmul.170 = fmul float %.4286, %.4287
  %fadd.151 = fadd float %fmul.170, %.4288
  store float %fadd.151, ptr %R35, align 4
  %.4293 = load float, ptr %R37, align 4
  %.4294 = load float, ptr %R56, align 4
  %fmul.171 = fmul float %.4287, %.4293
  %fadd.152 = fadd float %fmul.171, %.4294
  store float %fadd.152, ptr %R37, align 4
  %.4298 = load float, ptr %R24, align 4
  %.4299 = load float, ptr %R34, align 4
  %.4300 = load float, ptr %R21, align 4
  %fmul.172 = fmul float %.4298, %.4299
  %fadd.153 = fadd float %fmul.172, %.4300
  store float %fadd.153, ptr %R34, align 4
  %.4304 = load float, ptr %R36, align 4
  %.4305 = load float, ptr %R38, align 4
  %.4306 = load float, ptr %R35, align 4
  %fmul.173 = fmul float %.4304, %.4305
  %fadd.154 = fadd float %fmul.173, %.4306
  store float %fadd.154, ptr %R35, align 4
  %.4311 = load float, ptr %R39, align 4
  %.4312 = load float, ptr %R37, align 4
  %fmul.174 = fmul float %.4305, %.4311
  %fadd.155 = fadd float %fmul.174, %.4312
  store float %fadd.155, ptr %R37, align 4
  %.4316 = load float, ptr %R38, align 4
  %.4317 = load float, ptr %R41, align 4
  %.4318 = load float, ptr %R34, align 4
  %fmul.175 = fmul float %.4316, %.4317
  %fadd.156 = fadd float %fmul.175, %.4318
  store float %fadd.156, ptr %R34, align 4
  %.4322 = load float, ptr %R40, align 4
  %.4323 = load float, ptr %R42, align 4
  %.4324 = load float, ptr %R35, align 4
  %fmul.176 = fmul float %.4322, %.4323
  %fadd.157 = fadd float %fmul.176, %.4324
  store float %fadd.157, ptr %R35, align 4
  %.4329 = load float, ptr %R43, align 4
  %.4330 = load float, ptr %R37, align 4
  %fmul.177 = fmul float %.4323, %.4329
  %fadd.158 = fadd float %fmul.177, %.4330
  store float %fadd.158, ptr %R37, align 4
  %.4334 = load float, ptr %R42, align 4
  %.4335 = load float, ptr %R45, align 4
  %.4336 = load float, ptr %R34, align 4
  %fmul.178 = fmul float %.4334, %.4335
  %fadd.159 = fadd float %fmul.178, %.4336
  store float %fadd.159, ptr %R34, align 4
  %.4340 = load float, ptr %R46, align 4
  %.4341 = load float, ptr %R47, align 4
  %.4342 = load float, ptr %R35, align 4
  %fmul.179 = fmul float %.4340, %.4341
  %fadd.160 = fadd float %fmul.179, %.4342
  store float %fadd.160, ptr %R44, align 4
  %.4347 = load float, ptr %R50, align 4
  %.4348 = load float, ptr %R37, align 4
  %fmul.180 = fmul float %.4341, %.4347
  %fadd.161 = fadd float %fmul.180, %.4348
  store float %fadd.161, ptr %R56, align 4
  %.4352 = load float, ptr %R47, align 4
  %.4353 = load float, ptr %R51, align 4
  %.4354 = load float, ptr %R34, align 4
  %fmul.181 = fmul float %.4352, %.4353
  %fadd.162 = fadd float %fmul.181, %.4354
  store float %fadd.162, ptr %R21, align 4
  br i1 %cmp.39.not, label %.L_x_23.loopexit, label %.L_x_24

.L_x_23.loopexit:                                 ; preds = %.L_x_24
  br label %.L_x_23

.L_x_23:                                          ; preds = %.L_x_23.loopexit, %.L_x_47
  br i1 %cmp.37.not, label %.L_x_25, label %.L_x_23_split_0x26d0

.L_x_23_split_0x26d0:                             ; preds = %.L_x_23
  store i32 4, ptr %R11, align 4
  %.4368 = load i32, ptr %R14, align 4
  %.4369 = load i32, ptr %R22, align 4
  %imad_mul.57 = mul i32 %.4368, %Arg_4
  %imad_add.57 = add i32 %imad_mul.57, %.4369
  store i32 %imad_add.57, ptr %R7, align 4
  store i32 %Arg_5, ptr %R10, align 4
  %.4374 = load i32, ptr %R13, align 4
  %imad_mul.58 = mul i32 %.4374, %Arg_4
  %imad_add.58 = add i32 %imad_mul.58, %.4369
  store i32 %imad_add.58, ptr %R6, align 4
  store i32 %Arg_5, ptr %R9, align 4
  %.4380 = load i32, ptr %R7, align 4
  %.4381 = load i32, ptr %R11, align 4
  %imad_ext1.47 = zext i32 %.4380 to i64
  %imad_ext2.47 = zext i32 %.4381 to i64
  %imad_mul.59 = mul nuw i64 %imad_ext1.47, %imad_ext2.47
  %.4382 = ptrtoint ptr %Arg_2 to i64
  %imad_add.59 = add i64 %imad_mul.59, %.4382
  %.4384 = lshr i64 %imad_add.59, 32
  %trunc32.114 = trunc nuw i64 %.4384 to i32
  %trunc32.115 = trunc i64 %imad_add.59 to i32
  store i32 %trunc32.115, ptr %R4, align 4
  store i32 %trunc32.114, ptr %R5, align 4
  %.4388 = load i32, ptr %R10, align 4
  %.4389 = load i32, ptr %R7, align 4
  %shl.217 = shl i32 %.4388, 1
  %add.12 = add i32 %shl.217, %.4389
  store i32 %add.12, ptr %R10, align 4
  %.4392 = load i32, ptr %R6, align 4
  %.4393 = load i32, ptr %R11, align 4
  %imad_ext1.48 = zext i32 %.4392 to i64
  %imad_ext2.48 = zext i32 %.4393 to i64
  %imad_mul.60 = mul nuw i64 %imad_ext1.48, %imad_ext2.48
  %.4394 = ptrtoint ptr %Arg_0 to i64
  %imad_add.60 = add i64 %imad_mul.60, %.4394
  %.4396 = lshr i64 %imad_add.60, 32
  %trunc32.116 = trunc nuw i64 %.4396 to i32
  %trunc32.117 = trunc i64 %imad_add.60 to i32
  store i32 %trunc32.117, ptr %R6, align 4
  store i32 %trunc32.116, ptr %R7, align 4
  %.4400 = load i32, ptr %R9, align 4
  %.4401 = load i32, ptr %R4, align 4
  %shl.218 = shl i32 %.4400, 2
  %add.13 = add i32 %shl.218, %.4401
  store i32 %add.13, ptr %R8, align 4
  %.4404 = load i32, ptr %R10, align 4
  %.4405 = load i32, ptr %R11, align 4
  %imad_ext1.49 = zext i32 %.4404 to i64
  %imad_ext2.49 = zext i32 %.4405 to i64
  %imad_mul.61 = mul nuw i64 %imad_ext1.49, %imad_ext2.49
  %.4406 = ptrtoint ptr %Arg_2 to i64
  %imad_add.61 = add i64 %imad_mul.61, %.4406
  %.4408 = lshr i64 %imad_add.61, 32
  %trunc32.118 = trunc nuw i64 %.4408 to i32
  %trunc32.119 = trunc i64 %imad_add.61 to i32
  store i32 %trunc32.119, ptr %R10, align 4
  store i32 %trunc32.118, ptr %R11, align 4
  %.4412 = load i32, ptr %R5, align 4
  %.4413 = load i32, ptr %R16, align 4
  %shl.219 = shl i32 %.4412, 2
  %add.14 = add i32 %shl.219, %.4413
  store i32 %add.14, ptr %R9, align 4
  %.4416 = load i32, ptr %R4, align 4
  %zext.412 = zext i32 %.4416 to i64
  %.4417 = load i32, ptr %R5, align 4
  %zext.413 = zext i32 %.4417 to i64
  %shl.220 = shl nuw i64 %zext.413, 32
  %or.196 = or disjoint i64 %shl.220, %zext.412
  %inttoptr_bytes.176 = inttoptr i64 %or.196 to ptr addrspace(1)
  %.4418 = load float, ptr addrspace(1) %inttoptr_bytes.176, align 4
  store float %.4418, ptr %R13, align 4
  %.4422 = load i32, ptr %R6, align 4
  %zext.414 = zext i32 %.4422 to i64
  %.4423 = load i32, ptr %R7, align 4
  %zext.415 = zext i32 %.4423 to i64
  %shl.221 = shl nuw i64 %zext.415, 32
  %or.197 = or disjoint i64 %shl.221, %zext.414
  %inttoptr_bytes.177 = inttoptr i64 %or.197 to ptr addrspace(1)
  %.4424 = load float, ptr addrspace(1) %inttoptr_bytes.177, align 4
  store float %.4424, ptr %R12, align 4
  %.4428 = load i32, ptr %R8, align 4
  %zext.416 = zext i32 %.4428 to i64
  %.4429 = load i32, ptr %R9, align 4
  %zext.417 = zext i32 %.4429 to i64
  %shl.222 = shl nuw i64 %zext.417, 32
  %or.198 = or disjoint i64 %shl.222, %zext.416
  %inttoptr_bytes.178 = inttoptr i64 %or.198 to ptr addrspace(1)
  %.4430 = load float, ptr addrspace(1) %inttoptr_bytes.178, align 4
  store float %.4430, ptr %R23, align 4
  %.4434 = load i32, ptr %R10, align 4
  %zext.418 = zext i32 %.4434 to i64
  %.4435 = load i32, ptr %R11, align 4
  %zext.419 = zext i32 %.4435 to i64
  %shl.223 = shl nuw i64 %zext.419, 32
  %or.199 = or disjoint i64 %shl.223, %zext.418
  %inttoptr_bytes.179 = inttoptr i64 %or.199 to ptr addrspace(1)
  %.4436 = load float, ptr addrspace(1) %inttoptr_bytes.179, align 4
  store float %.4436, ptr %R22, align 4
  %.4440 = load i32, ptr %R15, align 4
  %cmp.40.not = icmp eq i32 %.4440, 1
  %.4447 = load float, ptr %R13, align 4
  %.4448 = load float, ptr %R12, align 4
  %.4449 = load float, ptr %R44, align 4
  %fmul.182 = fmul float %.4447, %.4448
  %fadd.163 = fadd float %fmul.182, %.4449
  store float %fadd.163, ptr %R44, align 4
  %.4454 = load float, ptr %R23, align 4
  %.4455 = load float, ptr %R56, align 4
  %fmul.183 = fmul float %.4448, %.4454
  %fadd.164 = fadd float %fmul.183, %.4455
  store float %fadd.164, ptr %R56, align 4
  %.4459 = load float, ptr %R12, align 4
  %.4460 = load float, ptr %R22, align 4
  %.4461 = load float, ptr %R21, align 4
  %fmul.184 = fmul float %.4459, %.4460
  %fadd.165 = fadd float %fmul.184, %.4461
  store float %fadd.165, ptr %R21, align 4
  br i1 %cmp.40.not, label %.L_x_25, label %.L_x_23_split_0x2810

.L_x_23_split_0x2810:                             ; preds = %.L_x_23_split_0x26d0
  %.4469 = load i32, ptr %R15, align 4
  %cmp.41.not = icmp eq i32 %.4469, 2
  %.4476 = load i32, ptr %R4, align 4
  %zext.420 = zext i32 %.4476 to i64
  %.4477 = load i32, ptr %R5, align 4
  %zext.421 = zext i32 %.4477 to i64
  %shl.224 = shl nuw i64 %zext.421, 32
  %or.200 = or disjoint i64 %shl.224, %zext.420
  %ptr_plus_imm.127 = add i64 %or.200, 4
  %inttoptr_bytes.180 = inttoptr i64 %ptr_plus_imm.127 to ptr addrspace(1)
  %.4478 = load float, ptr addrspace(1) %inttoptr_bytes.180, align 4
  store float %.4478, ptr %R13, align 4
  %.4482 = load i32, ptr %R6, align 4
  %zext.422 = zext i32 %.4482 to i64
  %.4483 = load i32, ptr %R7, align 4
  %zext.423 = zext i32 %.4483 to i64
  %shl.225 = shl nuw i64 %zext.423, 32
  %or.201 = or disjoint i64 %shl.225, %zext.422
  %ptr_plus_imm.128 = add i64 %or.201, 4
  %inttoptr_bytes.181 = inttoptr i64 %ptr_plus_imm.128 to ptr addrspace(1)
  %.4484 = load float, ptr addrspace(1) %inttoptr_bytes.181, align 4
  store float %.4484, ptr %R12, align 4
  %.4488 = load i32, ptr %R8, align 4
  %zext.424 = zext i32 %.4488 to i64
  %.4489 = load i32, ptr %R9, align 4
  %zext.425 = zext i32 %.4489 to i64
  %shl.226 = shl nuw i64 %zext.425, 32
  %or.202 = or disjoint i64 %shl.226, %zext.424
  %ptr_plus_imm.129 = add i64 %or.202, 4
  %inttoptr_bytes.182 = inttoptr i64 %ptr_plus_imm.129 to ptr addrspace(1)
  %.4490 = load float, ptr addrspace(1) %inttoptr_bytes.182, align 4
  store float %.4490, ptr %R23, align 4
  %.4494 = load i32, ptr %R10, align 4
  %zext.426 = zext i32 %.4494 to i64
  %.4495 = load i32, ptr %R11, align 4
  %zext.427 = zext i32 %.4495 to i64
  %shl.227 = shl nuw i64 %zext.427, 32
  %or.203 = or disjoint i64 %shl.227, %zext.426
  %ptr_plus_imm.130 = add i64 %or.203, 4
  %inttoptr_bytes.183 = inttoptr i64 %ptr_plus_imm.130 to ptr addrspace(1)
  %.4496 = load float, ptr addrspace(1) %inttoptr_bytes.183, align 4
  store float %.4496, ptr %R22, align 4
  br i1 %cmp.41.not, label %.L_x_23_split_0x28a0, label %.L_x_23_split_0x2810_conditionalExpr_0x2860

.L_x_23_split_0x2810_conditionalExpr_0x2860:      ; preds = %.L_x_23_split_0x2810
  %.4504 = load i32, ptr %R4, align 4
  %zext.428 = zext i32 %.4504 to i64
  %.4505 = load i32, ptr %R5, align 4
  %zext.429 = zext i32 %.4505 to i64
  %shl.228 = shl nuw i64 %zext.429, 32
  %or.204 = or disjoint i64 %shl.228, %zext.428
  %ptr_plus_imm.131 = add i64 %or.204, 8
  %inttoptr_bytes.184 = inttoptr i64 %ptr_plus_imm.131 to ptr addrspace(1)
  %.4506 = load float, ptr addrspace(1) %inttoptr_bytes.184, align 4
  store float %.4506, ptr %R25, align 4
  %.4516 = load i32, ptr %R6, align 4
  %zext.430 = zext i32 %.4516 to i64
  %.4517 = load i32, ptr %R7, align 4
  %zext.431 = zext i32 %.4517 to i64
  %shl.229 = shl nuw i64 %zext.431, 32
  %or.205 = or disjoint i64 %shl.229, %zext.430
  %ptr_plus_imm.132 = add i64 %or.205, 8
  %inttoptr_bytes.185 = inttoptr i64 %ptr_plus_imm.132 to ptr addrspace(1)
  %.4518 = load float, ptr addrspace(1) %inttoptr_bytes.185, align 4
  store float %.4518, ptr %R24, align 4
  %.4528 = load i32, ptr %R8, align 4
  %zext.432 = zext i32 %.4528 to i64
  %.4529 = load i32, ptr %R9, align 4
  %zext.433 = zext i32 %.4529 to i64
  %shl.230 = shl nuw i64 %zext.433, 32
  %or.206 = or disjoint i64 %shl.230, %zext.432
  %ptr_plus_imm.133 = add i64 %or.206, 8
  %inttoptr_bytes.186 = inttoptr i64 %ptr_plus_imm.133 to ptr addrspace(1)
  %.4530 = load float, ptr addrspace(1) %inttoptr_bytes.186, align 4
  store float %.4530, ptr %R35, align 4
  %.4540 = load i32, ptr %R10, align 4
  %zext.434 = zext i32 %.4540 to i64
  %.4541 = load i32, ptr %R11, align 4
  %zext.435 = zext i32 %.4541 to i64
  %shl.231 = shl nuw i64 %zext.435, 32
  %or.207 = or disjoint i64 %shl.231, %zext.434
  %ptr_plus_imm.134 = add i64 %or.207, 8
  %inttoptr_bytes.187 = inttoptr i64 %ptr_plus_imm.134 to ptr addrspace(1)
  %.4542 = load float, ptr addrspace(1) %inttoptr_bytes.187, align 4
  store float %.4542, ptr %R34, align 4
  br label %.L_x_23_split_0x28a0

.L_x_23_split_0x28a0:                             ; preds = %.L_x_23_split_0x2810, %.L_x_23_split_0x2810_conditionalExpr_0x2860
  %.4548 = load float, ptr %R13, align 4
  %.4549 = load float, ptr %R12, align 4
  %.4550 = load float, ptr %R44, align 4
  %fmul.185 = fmul float %.4548, %.4549
  %fadd.166 = fadd float %fmul.185, %.4550
  store float %fadd.166, ptr %R44, align 4
  %.4555 = load float, ptr %R23, align 4
  %.4556 = load float, ptr %R56, align 4
  %fmul.186 = fmul float %.4549, %.4555
  %fadd.167 = fadd float %fmul.186, %.4556
  store float %fadd.167, ptr %R56, align 4
  %.4560 = load float, ptr %R12, align 4
  %.4561 = load float, ptr %R22, align 4
  %.4562 = load float, ptr %R21, align 4
  %fmul.187 = fmul float %.4560, %.4561
  %fadd.168 = fadd float %fmul.187, %.4562
  store float %fadd.168, ptr %R21, align 4
  br i1 %cmp.41.not, label %.L_x_25, label %.L_x_23_split_0x28a0_conditionalExpr_0x28d0

.L_x_23_split_0x28a0_conditionalExpr_0x28d0:      ; preds = %.L_x_23_split_0x28a0
  %.4570 = load float, ptr %R25, align 4
  %.4571 = load float, ptr %R24, align 4
  %.4572 = load float, ptr %R44, align 4
  %fmul.188 = fmul float %.4570, %.4571
  %fadd.169 = fadd float %fmul.188, %.4572
  store float %fadd.169, ptr %R44, align 4
  %.4583 = load float, ptr %R35, align 4
  %.4584 = load float, ptr %R56, align 4
  %fmul.189 = fmul float %.4571, %.4583
  %fadd.170 = fadd float %fmul.189, %.4584
  store float %fadd.170, ptr %R56, align 4
  %.4594 = load float, ptr %R24, align 4
  %.4595 = load float, ptr %R34, align 4
  %.4596 = load float, ptr %R21, align 4
  %fmul.190 = fmul float %.4594, %.4595
  %fadd.171 = fadd float %fmul.190, %.4596
  store float %fadd.171, ptr %R21, align 4
  br label %.L_x_25

.L_x_25:                                          ; preds = %.L_x_23_split_0x28a0, %.L_x_23_split_0x28a0_conditionalExpr_0x28d0, %.L_x_23_split_0x26d0, %.L_x_23
  br i1 %cmp.36, label %.L_x_26, label %.L_x_25_split_0x2910

.L_x_25_split_0x2910:                             ; preds = %.L_x_25
  %.4606 = load i32, ptr %R18, align 4
  %cmp.42 = icmp slt i32 %.4606, 3
  store i32 0, ptr %R23, align 4
  br i1 %cmp.42, label %.L_x_27, label %.L_x_25_split_0x2940

.L_x_25_split_0x2940:                             ; preds = %.L_x_25_split_0x2910
  %.4619 = load i32, ptr %R20, align 4
  %cmp.43 = icmp sgt i32 %.4619, 0
  store i32 0, ptr %R23, align 4
  store i32 %.4619, ptr %R22, align 4
  br i1 %cmp.43, label %.L_x_25_split_0x2980, label %.L_x_28.preheader

.L_x_25_split_0x2980:                             ; preds = %.L_x_25_split_0x2940
  %.4635 = load i32, ptr %R22, align 4
  %cmp.44 = icmp slt i32 %.4635, 13
  br i1 %cmp.44, label %.L_x_29, label %.L_x_25_split_0x29b0

.L_x_25_split_0x29b0:                             ; preds = %.L_x_25_split_0x2980
  br label %.L_x_30

.L_x_30:                                          ; preds = %.L_x_30, %.L_x_25_split_0x29b0
  %.4655 = load i32, ptr %R23, align 4
  %.4656 = add i32 %imad_mul.1, %.4655
  store i32 %.4656, ptr %R25, align 4
  store i32 4, ptr %R24, align 4
  %imad_mul.62 = mul i32 %imad_mul.5, 3
  %imad_add.62 = add i32 %imad_mul.62, %.4656
  store i32 %imad_add.62, ptr %R35, align 4
  %shl.232 = shl i32 %imad_mul.5, 2
  %add.15 = add i32 %shl.232, %.4656
  store i32 %add.15, ptr %R25, align 4
  %.4670 = load i32, ptr %R23, align 4
  %.4671 = load i32, ptr %R24, align 4
  %imad_ext1.50 = zext i32 %.4670 to i64
  %imad_ext2.50 = zext i32 %.4671 to i64
  %imad_mul.63 = mul nuw i64 %imad_ext1.50, %imad_ext2.50
  %.4672 = ptrtoint ptr %Arg_1 to i64
  %imad_add.63 = add i64 %imad_mul.63, %.4672
  %.4674 = lshr i64 %imad_add.63, 32
  %trunc32.120 = trunc nuw i64 %.4674 to i32
  %trunc32.121 = trunc i64 %imad_add.63 to i32
  store i32 %trunc32.121, ptr %R36, align 4
  store i32 %trunc32.120, ptr %R37, align 4
  %.4678 = load i32, ptr %R35, align 4
  %.4679 = load i32, ptr %R24, align 4
  %imad_ext1.51 = zext i32 %.4678 to i64
  %imad_ext2.51 = zext i32 %.4679 to i64
  %imad_mul.64 = mul nuw i64 %imad_ext1.51, %imad_ext2.51
  %.4680 = ptrtoint ptr %Arg_2 to i64
  %imad_add.64 = add i64 %imad_mul.64, %.4680
  %.4682 = lshr i64 %imad_add.64, 32
  %trunc32.122 = trunc nuw i64 %.4682 to i32
  %trunc32.123 = trunc i64 %imad_add.64 to i32
  store i32 %trunc32.123, ptr %R8, align 4
  store i32 %trunc32.122, ptr %R9, align 4
  %.4686 = load i32, ptr %R25, align 4
  %.4687 = load i32, ptr %R24, align 4
  %imad_ext1.52 = zext i32 %.4686 to i64
  %imad_ext2.52 = zext i32 %.4687 to i64
  %imad_mul.65 = mul nuw i64 %imad_ext1.52, %imad_ext2.52
  %.4688 = ptrtoint ptr %Arg_2 to i64
  %imad_add.65 = add i64 %imad_mul.65, %.4688
  %.4690 = lshr i64 %imad_add.65, 32
  %trunc32.124 = trunc nuw i64 %.4690 to i32
  %trunc32.125 = trunc i64 %imad_add.65 to i32
  store i32 %trunc32.125, ptr %R12, align 4
  store i32 %trunc32.124, ptr %R13, align 4
  %.4694 = load i32, ptr %R36, align 4
  %zext.436 = zext i32 %.4694 to i64
  %.4695 = load i32, ptr %R37, align 4
  %zext.437 = zext i32 %.4695 to i64
  %shl.233 = shl nuw i64 %zext.437, 32
  %or.208 = or disjoint i64 %shl.233, %zext.436
  %inttoptr_bytes.188 = inttoptr i64 %or.208 to ptr addrspace(1)
  %.4696 = load float, ptr addrspace(1) %inttoptr_bytes.188, align 4
  store float %.4696, ptr %R39, align 4
  %.4700 = load i32, ptr %R8, align 4
  %zext.438 = zext i32 %.4700 to i64
  %.4701 = load i32, ptr %R9, align 4
  %zext.439 = zext i32 %.4701 to i64
  %shl.234 = shl nuw i64 %zext.439, 32
  %or.209 = or disjoint i64 %shl.234, %zext.438
  %inttoptr_bytes.189 = inttoptr i64 %or.209 to ptr addrspace(1)
  %.4702 = load float, ptr addrspace(1) %inttoptr_bytes.189, align 4
  store float %.4702, ptr %R41, align 4
  %.4706 = load i32, ptr %R12, align 4
  %zext.440 = zext i32 %.4706 to i64
  %.4707 = load i32, ptr %R13, align 4
  %zext.441 = zext i32 %.4707 to i64
  %shl.235 = shl nuw i64 %zext.441, 32
  %or.210 = or disjoint i64 %shl.235, %zext.440
  %inttoptr_bytes.190 = inttoptr i64 %or.210 to ptr addrspace(1)
  %.4708 = load float, ptr addrspace(1) %inttoptr_bytes.190, align 4
  store float %.4708, ptr %R40, align 4
  %.4712 = load i32, ptr %R36, align 4
  %zext.442 = zext i32 %.4712 to i64
  %.4713 = load i32, ptr %R37, align 4
  %zext.443 = zext i32 %.4713 to i64
  %shl.236 = shl nuw i64 %zext.443, 32
  %or.211 = or disjoint i64 %shl.236, %zext.442
  %ptr_plus_imm.135 = add i64 %or.211, 4
  %inttoptr_bytes.191 = inttoptr i64 %ptr_plus_imm.135 to ptr addrspace(1)
  %.4714 = load float, ptr addrspace(1) %inttoptr_bytes.191, align 4
  store float %.4714, ptr %R52, align 4
  %.4718 = load i32, ptr %R8, align 4
  %zext.444 = zext i32 %.4718 to i64
  %.4719 = load i32, ptr %R9, align 4
  %zext.445 = zext i32 %.4719 to i64
  %shl.237 = shl nuw i64 %zext.445, 32
  %or.212 = or disjoint i64 %shl.237, %zext.444
  %ptr_plus_imm.136 = add i64 %or.212, 4
  %inttoptr_bytes.192 = inttoptr i64 %ptr_plus_imm.136 to ptr addrspace(1)
  %.4720 = load float, ptr addrspace(1) %inttoptr_bytes.192, align 4
  store float %.4720, ptr %R53, align 4
  %.4724 = load i32, ptr %R12, align 4
  %zext.446 = zext i32 %.4724 to i64
  %.4725 = load i32, ptr %R13, align 4
  %zext.447 = zext i32 %.4725 to i64
  %shl.238 = shl nuw i64 %zext.447, 32
  %or.213 = or disjoint i64 %shl.238, %zext.446
  %ptr_plus_imm.137 = add i64 %or.213, 4
  %inttoptr_bytes.193 = inttoptr i64 %ptr_plus_imm.137 to ptr addrspace(1)
  %.4726 = load float, ptr addrspace(1) %inttoptr_bytes.193, align 4
  store float %.4726, ptr %R55, align 4
  %.4730 = load i32, ptr %R23, align 4
  %.4731 = add i32 %.4730, 4
  store i32 %.4731, ptr %R11, align 4
  %.4735 = load i32, ptr %R36, align 4
  %zext.448 = zext i32 %.4735 to i64
  %.4736 = load i32, ptr %R37, align 4
  %zext.449 = zext i32 %.4736 to i64
  %shl.239 = shl nuw i64 %zext.449, 32
  %or.214 = or disjoint i64 %shl.239, %zext.448
  %ptr_plus_imm.138 = add i64 %or.214, 8
  %inttoptr_bytes.194 = inttoptr i64 %ptr_plus_imm.138 to ptr addrspace(1)
  %.4737 = load float, ptr addrspace(1) %inttoptr_bytes.194, align 4
  store float %.4737, ptr %R50, align 4
  %.4741 = load i32, ptr %R35, align 4
  %.4742 = add i32 %.4741, 4
  store i32 %.4742, ptr %R7, align 4
  %.4746 = load i32, ptr %R8, align 4
  %zext.450 = zext i32 %.4746 to i64
  %.4747 = load i32, ptr %R9, align 4
  %zext.451 = zext i32 %.4747 to i64
  %shl.240 = shl nuw i64 %zext.451, 32
  %or.215 = or disjoint i64 %shl.240, %zext.450
  %ptr_plus_imm.139 = add i64 %or.215, 8
  %inttoptr_bytes.195 = inttoptr i64 %ptr_plus_imm.139 to ptr addrspace(1)
  %.4748 = load float, ptr addrspace(1) %inttoptr_bytes.195, align 4
  store float %.4748, ptr %R43, align 4
  %.4752 = load i32, ptr %R25, align 4
  %.4753 = add i32 %.4752, 4
  store i32 %.4753, ptr %R5, align 4
  %.4757 = load i32, ptr %R12, align 4
  %zext.452 = zext i32 %.4757 to i64
  %.4758 = load i32, ptr %R13, align 4
  %zext.453 = zext i32 %.4758 to i64
  %shl.241 = shl nuw i64 %zext.453, 32
  %or.216 = or disjoint i64 %shl.241, %zext.452
  %ptr_plus_imm.140 = add i64 %or.216, 8
  %inttoptr_bytes.196 = inttoptr i64 %ptr_plus_imm.140 to ptr addrspace(1)
  %.4759 = load float, ptr addrspace(1) %inttoptr_bytes.196, align 4
  store float %.4759, ptr %R51, align 4
  %.4763 = load i32, ptr %R36, align 4
  %zext.454 = zext i32 %.4763 to i64
  %.4764 = load i32, ptr %R37, align 4
  %zext.455 = zext i32 %.4764 to i64
  %shl.242 = shl nuw i64 %zext.455, 32
  %or.217 = or disjoint i64 %shl.242, %zext.454
  %ptr_plus_imm.141 = add i64 %or.217, 12
  %inttoptr_bytes.197 = inttoptr i64 %ptr_plus_imm.141 to ptr addrspace(1)
  %.4765 = load float, ptr addrspace(1) %inttoptr_bytes.197, align 4
  store float %.4765, ptr %R47, align 4
  %.4769 = load i32, ptr %R8, align 4
  %zext.456 = zext i32 %.4769 to i64
  %.4770 = load i32, ptr %R9, align 4
  %zext.457 = zext i32 %.4770 to i64
  %shl.243 = shl nuw i64 %zext.457, 32
  %or.218 = or disjoint i64 %shl.243, %zext.456
  %ptr_plus_imm.142 = add i64 %or.218, 12
  %inttoptr_bytes.198 = inttoptr i64 %ptr_plus_imm.142 to ptr addrspace(1)
  %.4771 = load float, ptr addrspace(1) %inttoptr_bytes.198, align 4
  store float %.4771, ptr %R54, align 4
  %.4775 = load i32, ptr %R12, align 4
  %zext.458 = zext i32 %.4775 to i64
  %.4776 = load i32, ptr %R13, align 4
  %zext.459 = zext i32 %.4776 to i64
  %shl.244 = shl nuw i64 %zext.459, 32
  %or.219 = or disjoint i64 %shl.244, %zext.458
  %ptr_plus_imm.143 = add i64 %or.219, 12
  %inttoptr_bytes.199 = inttoptr i64 %ptr_plus_imm.143 to ptr addrspace(1)
  %.4777 = load float, ptr addrspace(1) %inttoptr_bytes.199, align 4
  store float %.4777, ptr %R58, align 4
  %.4781 = load i32, ptr %R11, align 4
  %.4782 = load i32, ptr %R24, align 4
  %imad_ext1.53 = zext i32 %.4781 to i64
  %imad_ext2.53 = zext i32 %.4782 to i64
  %imad_mul.66 = mul nuw i64 %imad_ext1.53, %imad_ext2.53
  %.4783 = ptrtoint ptr %Arg_1 to i64
  %imad_add.66 = add i64 %imad_mul.66, %.4783
  %.4785 = lshr i64 %imad_add.66, 32
  %trunc32.126 = trunc nuw i64 %.4785 to i32
  %trunc32.127 = trunc i64 %imad_add.66 to i32
  store i32 %trunc32.127, ptr %R10, align 4
  store i32 %trunc32.126, ptr %R11, align 4
  %.4789 = load i32, ptr %R7, align 4
  %.4790 = load i32, ptr %R24, align 4
  %imad_ext1.54 = zext i32 %.4789 to i64
  %imad_ext2.54 = zext i32 %.4790 to i64
  %imad_mul.67 = mul nuw i64 %imad_ext1.54, %imad_ext2.54
  %.4791 = ptrtoint ptr %Arg_2 to i64
  %imad_add.67 = add i64 %imad_mul.67, %.4791
  %.4793 = lshr i64 %imad_add.67, 32
  %trunc32.128 = trunc nuw i64 %.4793 to i32
  %trunc32.129 = trunc i64 %imad_add.67 to i32
  store i32 %trunc32.129, ptr %R6, align 4
  store i32 %trunc32.128, ptr %R7, align 4
  %.4797 = load i32, ptr %R5, align 4
  %.4798 = load i32, ptr %R24, align 4
  %imad_ext1.55 = zext i32 %.4797 to i64
  %imad_ext2.55 = zext i32 %.4798 to i64
  %imad_mul.68 = mul nuw i64 %imad_ext1.55, %imad_ext2.55
  %.4799 = ptrtoint ptr %Arg_2 to i64
  %imad_add.68 = add i64 %imad_mul.68, %.4799
  %.4801 = lshr i64 %imad_add.68, 32
  %trunc32.130 = trunc nuw i64 %.4801 to i32
  %trunc32.131 = trunc i64 %imad_add.68 to i32
  store i32 %trunc32.131, ptr %R4, align 4
  store i32 %trunc32.130, ptr %R5, align 4
  %.4805 = load i32, ptr %R10, align 4
  %zext.460 = zext i32 %.4805 to i64
  %.4806 = load i32, ptr %R11, align 4
  %zext.461 = zext i32 %.4806 to i64
  %shl.245 = shl nuw i64 %zext.461, 32
  %or.220 = or disjoint i64 %shl.245, %zext.460
  %inttoptr_bytes.200 = inttoptr i64 %or.220 to ptr addrspace(1)
  %.4807 = load float, ptr addrspace(1) %inttoptr_bytes.200, align 4
  store float %.4807, ptr %R46, align 4
  %.4811 = load i32, ptr %R6, align 4
  %zext.462 = zext i32 %.4811 to i64
  %.4812 = load i32, ptr %R7, align 4
  %zext.463 = zext i32 %.4812 to i64
  %shl.246 = shl nuw i64 %zext.463, 32
  %or.221 = or disjoint i64 %shl.246, %zext.462
  %inttoptr_bytes.201 = inttoptr i64 %or.221 to ptr addrspace(1)
  %.4813 = load float, ptr addrspace(1) %inttoptr_bytes.201, align 4
  store float %.4813, ptr %R42, align 4
  %.4817 = load i32, ptr %R4, align 4
  %zext.464 = zext i32 %.4817 to i64
  %.4818 = load i32, ptr %R5, align 4
  %zext.465 = zext i32 %.4818 to i64
  %shl.247 = shl nuw i64 %zext.465, 32
  %or.222 = or disjoint i64 %shl.247, %zext.464
  %inttoptr_bytes.202 = inttoptr i64 %or.222 to ptr addrspace(1)
  %.4819 = load float, ptr addrspace(1) %inttoptr_bytes.202, align 4
  store float %.4819, ptr %R45, align 4
  %.4823 = load i32, ptr %R10, align 4
  %zext.466 = zext i32 %.4823 to i64
  %.4824 = load i32, ptr %R11, align 4
  %zext.467 = zext i32 %.4824 to i64
  %shl.248 = shl nuw i64 %zext.467, 32
  %or.223 = or disjoint i64 %shl.248, %zext.466
  %ptr_plus_imm.144 = add i64 %or.223, 4
  %inttoptr_bytes.203 = inttoptr i64 %ptr_plus_imm.144 to ptr addrspace(1)
  %.4825 = load float, ptr addrspace(1) %inttoptr_bytes.203, align 4
  store float %.4825, ptr %R34, align 4
  %.4829 = load i32, ptr %R6, align 4
  %zext.468 = zext i32 %.4829 to i64
  %.4830 = load i32, ptr %R7, align 4
  %zext.469 = zext i32 %.4830 to i64
  %shl.249 = shl nuw i64 %zext.469, 32
  %or.224 = or disjoint i64 %shl.249, %zext.468
  %ptr_plus_imm.145 = add i64 %or.224, 4
  %inttoptr_bytes.204 = inttoptr i64 %ptr_plus_imm.145 to ptr addrspace(1)
  %.4831 = load float, ptr addrspace(1) %inttoptr_bytes.204, align 4
  store float %.4831, ptr %R37, align 4
  %.4835 = load i32, ptr %R23, align 4
  %.4836 = add i32 %.4835, 8
  store i32 %.4836, ptr %R9, align 4
  %.4840 = load i32, ptr %R10, align 4
  %zext.470 = zext i32 %.4840 to i64
  %.4841 = load i32, ptr %R11, align 4
  %zext.471 = zext i32 %.4841 to i64
  %shl.250 = shl nuw i64 %zext.471, 32
  %or.225 = or disjoint i64 %shl.250, %zext.470
  %ptr_plus_imm.146 = add i64 %or.225, 8
  %inttoptr_bytes.205 = inttoptr i64 %ptr_plus_imm.146 to ptr addrspace(1)
  %.4842 = load float, ptr addrspace(1) %inttoptr_bytes.205, align 4
  store float %.4842, ptr %R36, align 4
  %.4846 = load i32, ptr %R9, align 4
  %.4847 = load i32, ptr %R24, align 4
  %imad_ext1.56 = zext i32 %.4846 to i64
  %imad_ext2.56 = zext i32 %.4847 to i64
  %imad_mul.69 = mul nuw i64 %imad_ext1.56, %imad_ext2.56
  %.4848 = ptrtoint ptr %Arg_1 to i64
  %imad_add.69 = add i64 %imad_mul.69, %.4848
  %.4850 = lshr i64 %imad_add.69, 32
  %trunc32.132 = trunc nuw i64 %.4850 to i32
  %trunc32.133 = trunc i64 %imad_add.69 to i32
  store i32 %trunc32.133, ptr %R8, align 4
  store i32 %trunc32.132, ptr %R9, align 4
  %.4854 = load i32, ptr %R10, align 4
  %zext.472 = zext i32 %.4854 to i64
  %.4855 = load i32, ptr %R11, align 4
  %zext.473 = zext i32 %.4855 to i64
  %shl.251 = shl nuw i64 %zext.473, 32
  %or.226 = or disjoint i64 %shl.251, %zext.472
  %ptr_plus_imm.147 = add i64 %or.226, 12
  %inttoptr_bytes.206 = inttoptr i64 %ptr_plus_imm.147 to ptr addrspace(1)
  %.4856 = load float, ptr addrspace(1) %inttoptr_bytes.206, align 4
  store float %.4856, ptr %R38, align 4
  %.4860 = load i32, ptr %R23, align 4
  %.4861 = add i32 %.4860, 12
  store i32 %.4861, ptr %R13, align 4
  %.4865 = load i32, ptr %R35, align 4
  %.4866 = add i32 %.4865, 8
  store i32 %.4866, ptr %R11, align 4
  %.4871 = load i32, ptr %R24, align 4
  %imad_ext1.57 = zext i32 %.4861 to i64
  %imad_ext2.57 = zext i32 %.4871 to i64
  %imad_mul.70 = mul nuw i64 %imad_ext1.57, %imad_ext2.57
  %.4872 = ptrtoint ptr %Arg_1 to i64
  %imad_add.70 = add i64 %imad_mul.70, %.4872
  %.4874 = lshr i64 %imad_add.70, 32
  %trunc32.134 = trunc nuw i64 %.4874 to i32
  %trunc32.135 = trunc i64 %imad_add.70 to i32
  store i32 %trunc32.135, ptr %R12, align 4
  store i32 %trunc32.134, ptr %R13, align 4
  %.4878 = load float, ptr %R41, align 4
  %.4879 = load float, ptr %R39, align 4
  %.4880 = load float, ptr %R44, align 4
  %fmul.191 = fmul float %.4878, %.4879
  %fadd.172 = fadd float %fmul.191, %.4880
  store float %fadd.172, ptr %R57, align 4
  %.4884 = load i32, ptr %R8, align 4
  %zext.474 = zext i32 %.4884 to i64
  %.4885 = load i32, ptr %R9, align 4
  %zext.475 = zext i32 %.4885 to i64
  %shl.252 = shl nuw i64 %zext.475, 32
  %or.227 = or disjoint i64 %shl.252, %zext.474
  %inttoptr_bytes.207 = inttoptr i64 %or.227 to ptr addrspace(1)
  %.4886 = load float, ptr addrspace(1) %inttoptr_bytes.207, align 4
  store float %.4886, ptr %R41, align 4
  %.4890 = load float, ptr %R39, align 4
  %.4891 = load float, ptr %R40, align 4
  %.4892 = load float, ptr %R56, align 4
  %fmul.192 = fmul float %.4890, %.4891
  %fadd.173 = fadd float %fmul.192, %.4892
  store float %fadd.173, ptr %R56, align 4
  %.4896 = load i32, ptr %R8, align 4
  %zext.476 = zext i32 %.4896 to i64
  %.4897 = load i32, ptr %R9, align 4
  %zext.477 = zext i32 %.4897 to i64
  %shl.253 = shl nuw i64 %zext.477, 32
  %or.228 = or disjoint i64 %shl.253, %zext.476
  %ptr_plus_imm.148 = add i64 %or.228, 4
  %inttoptr_bytes.208 = inttoptr i64 %ptr_plus_imm.148 to ptr addrspace(1)
  %.4898 = load float, ptr addrspace(1) %inttoptr_bytes.208, align 4
  store float %.4898, ptr %R40, align 4
  %.4902 = load i32, ptr %R8, align 4
  %zext.478 = zext i32 %.4902 to i64
  %.4903 = load i32, ptr %R9, align 4
  %zext.479 = zext i32 %.4903 to i64
  %shl.254 = shl nuw i64 %zext.479, 32
  %or.229 = or disjoint i64 %shl.254, %zext.478
  %ptr_plus_imm.149 = add i64 %or.229, 8
  %inttoptr_bytes.209 = inttoptr i64 %ptr_plus_imm.149 to ptr addrspace(1)
  %.4904 = load float, ptr addrspace(1) %inttoptr_bytes.209, align 4
  store float %.4904, ptr %R39, align 4
  %.4908 = load float, ptr %R53, align 4
  %.4909 = load float, ptr %R52, align 4
  %.4910 = load float, ptr %R57, align 4
  %fmul.193 = fmul float %.4908, %.4909
  %fadd.174 = fadd float %fmul.193, %.4910
  store float %fadd.174, ptr %R57, align 4
  %.4914 = load i32, ptr %R8, align 4
  %zext.480 = zext i32 %.4914 to i64
  %.4915 = load i32, ptr %R9, align 4
  %zext.481 = zext i32 %.4915 to i64
  %shl.255 = shl nuw i64 %zext.481, 32
  %or.230 = or disjoint i64 %shl.255, %zext.480
  %ptr_plus_imm.150 = add i64 %or.230, 12
  %inttoptr_bytes.210 = inttoptr i64 %ptr_plus_imm.150 to ptr addrspace(1)
  %.4916 = load float, ptr addrspace(1) %inttoptr_bytes.210, align 4
  store float %.4916, ptr %R44, align 4
  %.4920 = load float, ptr %R52, align 4
  %.4921 = load float, ptr %R55, align 4
  %.4922 = load float, ptr %R56, align 4
  %fmul.194 = fmul float %.4920, %.4921
  %fadd.175 = fadd float %fmul.194, %.4922
  store float %fadd.175, ptr %R59, align 4
  %.4926 = load i32, ptr %R12, align 4
  %zext.482 = zext i32 %.4926 to i64
  %.4927 = load i32, ptr %R13, align 4
  %zext.483 = zext i32 %.4927 to i64
  %shl.256 = shl nuw i64 %zext.483, 32
  %or.231 = or disjoint i64 %shl.256, %zext.482
  %inttoptr_bytes.211 = inttoptr i64 %or.231 to ptr addrspace(1)
  %.4928 = load float, ptr addrspace(1) %inttoptr_bytes.211, align 4
  store float %.4928, ptr %R55, align 4
  %.4932 = load i32, ptr %R12, align 4
  %zext.484 = zext i32 %.4932 to i64
  %.4933 = load i32, ptr %R13, align 4
  %zext.485 = zext i32 %.4933 to i64
  %shl.257 = shl nuw i64 %zext.485, 32
  %or.232 = or disjoint i64 %shl.257, %zext.484
  %ptr_plus_imm.151 = add i64 %or.232, 4
  %inttoptr_bytes.212 = inttoptr i64 %ptr_plus_imm.151 to ptr addrspace(1)
  %.4934 = load float, ptr addrspace(1) %inttoptr_bytes.212, align 4
  store float %.4934, ptr %R53, align 4
  %.4938 = load float, ptr %R43, align 4
  %.4939 = load float, ptr %R50, align 4
  %.4940 = load float, ptr %R57, align 4
  %fmul.195 = fmul float %.4938, %.4939
  %fadd.176 = fadd float %fmul.195, %.4940
  store float %fadd.176, ptr %R43, align 4
  %.4944 = load i32, ptr %R11, align 4
  %.4945 = load i32, ptr %R24, align 4
  %imad_ext1.58 = zext i32 %.4944 to i64
  %imad_ext2.58 = zext i32 %.4945 to i64
  %imad_mul.71 = mul nuw i64 %imad_ext1.58, %imad_ext2.58
  %.4946 = ptrtoint ptr %Arg_2 to i64
  %imad_add.71 = add i64 %imad_mul.71, %.4946
  %.4948 = lshr i64 %imad_add.71, 32
  %trunc32.136 = trunc nuw i64 %.4948 to i32
  %trunc32.137 = trunc i64 %imad_add.71 to i32
  store i32 %trunc32.137, ptr %R8, align 4
  store i32 %trunc32.136, ptr %R9, align 4
  %.4952 = load i32, ptr %R12, align 4
  %zext.486 = zext i32 %.4952 to i64
  %.4953 = load i32, ptr %R13, align 4
  %zext.487 = zext i32 %.4953 to i64
  %shl.258 = shl nuw i64 %zext.487, 32
  %or.233 = or disjoint i64 %shl.258, %zext.486
  %ptr_plus_imm.152 = add i64 %or.233, 8
  %inttoptr_bytes.213 = inttoptr i64 %ptr_plus_imm.152 to ptr addrspace(1)
  %.4954 = load float, ptr addrspace(1) %inttoptr_bytes.213, align 4
  store float %.4954, ptr %R52, align 4
  %.4958 = load float, ptr %R50, align 4
  %.4959 = load float, ptr %R51, align 4
  %.4960 = load float, ptr %R59, align 4
  %fmul.196 = fmul float %.4958, %.4959
  %fadd.177 = fadd float %fmul.196, %.4960
  store float %fadd.177, ptr %R51, align 4
  %.4964 = load i32, ptr %R25, align 4
  %.4965 = add i32 %.4964, 8
  store i32 %.4965, ptr %R57, align 4
  %.4969 = load i32, ptr %R4, align 4
  %zext.488 = zext i32 %.4969 to i64
  %.4970 = load i32, ptr %R5, align 4
  %zext.489 = zext i32 %.4970 to i64
  %shl.259 = shl nuw i64 %zext.489, 32
  %or.234 = or disjoint i64 %shl.259, %zext.488
  %ptr_plus_imm.153 = add i64 %or.234, 12
  %inttoptr_bytes.214 = inttoptr i64 %ptr_plus_imm.153 to ptr addrspace(1)
  %.4971 = load float, ptr addrspace(1) %inttoptr_bytes.214, align 4
  store float %.4971, ptr %R59, align 4
  %.4975 = load float, ptr %R54, align 4
  %.4976 = load float, ptr %R47, align 4
  %.4977 = load float, ptr %R43, align 4
  %fmul.197 = fmul float %.4975, %.4976
  %fadd.178 = fadd float %fmul.197, %.4977
  store float %fadd.178, ptr %R61, align 4
  %.4981 = load i32, ptr %R8, align 4
  %zext.490 = zext i32 %.4981 to i64
  %.4982 = load i32, ptr %R9, align 4
  %zext.491 = zext i32 %.4982 to i64
  %shl.260 = shl nuw i64 %zext.491, 32
  %or.235 = or disjoint i64 %shl.260, %zext.490
  %inttoptr_bytes.215 = inttoptr i64 %or.235 to ptr addrspace(1)
  %.4983 = load float, ptr addrspace(1) %inttoptr_bytes.215, align 4
  store float %.4983, ptr %R50, align 4
  %.4987 = load float, ptr %R47, align 4
  %.4988 = load float, ptr %R58, align 4
  %.4989 = load float, ptr %R51, align 4
  %fmul.198 = fmul float %.4987, %.4988
  %fadd.179 = fadd float %fmul.198, %.4989
  store float %fadd.179, ptr %R58, align 4
  %.4993 = load i32, ptr %R6, align 4
  %zext.492 = zext i32 %.4993 to i64
  %.4994 = load i32, ptr %R7, align 4
  %zext.493 = zext i32 %.4994 to i64
  %shl.261 = shl nuw i64 %zext.493, 32
  %or.236 = or disjoint i64 %shl.261, %zext.492
  %ptr_plus_imm.154 = add i64 %or.236, 8
  %inttoptr_bytes.216 = inttoptr i64 %ptr_plus_imm.154 to ptr addrspace(1)
  %.4995 = load float, ptr addrspace(1) %inttoptr_bytes.216, align 4
  store float %.4995, ptr %R43, align 4
  %.4999 = load i32, ptr %R4, align 4
  %zext.494 = zext i32 %.4999 to i64
  %.5000 = load i32, ptr %R5, align 4
  %zext.495 = zext i32 %.5000 to i64
  %shl.262 = shl nuw i64 %zext.495, 32
  %or.237 = or disjoint i64 %shl.262, %zext.494
  %ptr_plus_imm.155 = add i64 %or.237, 4
  %inttoptr_bytes.217 = inttoptr i64 %ptr_plus_imm.155 to ptr addrspace(1)
  %.5001 = load float, ptr addrspace(1) %inttoptr_bytes.217, align 4
  store float %.5001, ptr %R47, align 4
  %.5005 = load i32, ptr %R57, align 4
  %.5006 = load i32, ptr %R24, align 4
  %imad_ext1.59 = zext i32 %.5005 to i64
  %imad_ext2.59 = zext i32 %.5006 to i64
  %imad_mul.72 = mul nuw i64 %imad_ext1.59, %imad_ext2.59
  %.5007 = ptrtoint ptr %Arg_2 to i64
  %imad_add.72 = add i64 %imad_mul.72, %.5007
  %.5009 = lshr i64 %imad_add.72, 32
  %trunc32.138 = trunc nuw i64 %.5009 to i32
  %trunc32.139 = trunc i64 %imad_add.72 to i32
  store i32 %trunc32.139, ptr %R10, align 4
  store i32 %trunc32.138, ptr %R11, align 4
  %.5013 = load i32, ptr %R4, align 4
  %zext.496 = zext i32 %.5013 to i64
  %.5014 = load i32, ptr %R5, align 4
  %zext.497 = zext i32 %.5014 to i64
  %shl.263 = shl nuw i64 %zext.497, 32
  %or.238 = or disjoint i64 %shl.263, %zext.496
  %ptr_plus_imm.156 = add i64 %or.238, 8
  %inttoptr_bytes.218 = inttoptr i64 %ptr_plus_imm.156 to ptr addrspace(1)
  %.5015 = load float, ptr addrspace(1) %inttoptr_bytes.218, align 4
  store float %.5015, ptr %R51, align 4
  %.5019 = load i32, ptr %R6, align 4
  %zext.498 = zext i32 %.5019 to i64
  %.5020 = load i32, ptr %R7, align 4
  %zext.499 = zext i32 %.5020 to i64
  %shl.264 = shl nuw i64 %zext.499, 32
  %or.239 = or disjoint i64 %shl.264, %zext.498
  %ptr_plus_imm.157 = add i64 %or.239, 12
  %inttoptr_bytes.219 = inttoptr i64 %ptr_plus_imm.157 to ptr addrspace(1)
  %.5021 = load float, ptr addrspace(1) %inttoptr_bytes.219, align 4
  store float %.5021, ptr %R57, align 4
  %.5025 = load float, ptr %R42, align 4
  %.5026 = load float, ptr %R46, align 4
  %.5027 = load float, ptr %R61, align 4
  %fmul.199 = fmul float %.5025, %.5026
  %fadd.180 = fadd float %fmul.199, %.5027
  store float %fadd.180, ptr %R42, align 4
  %.5031 = load i32, ptr %R25, align 4
  %.5032 = add i32 %.5031, 12
  store i32 %.5032, ptr %R25, align 4
  %.5036 = load i32, ptr %R12, align 4
  %zext.500 = zext i32 %.5036 to i64
  %.5037 = load i32, ptr %R13, align 4
  %zext.501 = zext i32 %.5037 to i64
  %shl.265 = shl nuw i64 %zext.501, 32
  %or.240 = or disjoint i64 %shl.265, %zext.500
  %ptr_plus_imm.158 = add i64 %or.240, 12
  %inttoptr_bytes.220 = inttoptr i64 %ptr_plus_imm.158 to ptr addrspace(1)
  %.5038 = load float, ptr addrspace(1) %inttoptr_bytes.220, align 4
  store float %.5038, ptr %R56, align 4
  %.5042 = load float, ptr %R46, align 4
  %.5043 = load float, ptr %R45, align 4
  %.5044 = load float, ptr %R58, align 4
  %fmul.200 = fmul float %.5042, %.5043
  %fadd.181 = fadd float %fmul.200, %.5044
  store float %fadd.181, ptr %R45, align 4
  %.5048 = load i32, ptr %R10, align 4
  %zext.502 = zext i32 %.5048 to i64
  %.5049 = load i32, ptr %R11, align 4
  %zext.503 = zext i32 %.5049 to i64
  %shl.266 = shl nuw i64 %zext.503, 32
  %or.241 = or disjoint i64 %shl.266, %zext.502
  %inttoptr_bytes.221 = inttoptr i64 %or.241 to ptr addrspace(1)
  %.5050 = load float, ptr addrspace(1) %inttoptr_bytes.221, align 4
  store float %.5050, ptr %R46, align 4
  %.5054 = load i32, ptr %R8, align 4
  %zext.504 = zext i32 %.5054 to i64
  %.5055 = load i32, ptr %R9, align 4
  %zext.505 = zext i32 %.5055 to i64
  %shl.267 = shl nuw i64 %zext.505, 32
  %or.242 = or disjoint i64 %shl.267, %zext.504
  %ptr_plus_imm.159 = add i64 %or.242, 4
  %inttoptr_bytes.222 = inttoptr i64 %ptr_plus_imm.159 to ptr addrspace(1)
  %.5056 = load float, ptr addrspace(1) %inttoptr_bytes.222, align 4
  store float %.5056, ptr %R61, align 4
  %.5060 = load i32, ptr %R35, align 4
  %.5061 = add i32 %.5060, 12
  store i32 %.5061, ptr %R13, align 4
  %.5065 = load i32, ptr %R10, align 4
  %zext.506 = zext i32 %.5065 to i64
  %.5066 = load i32, ptr %R11, align 4
  %zext.507 = zext i32 %.5066 to i64
  %shl.268 = shl nuw i64 %zext.507, 32
  %or.243 = or disjoint i64 %shl.268, %zext.506
  %ptr_plus_imm.160 = add i64 %or.243, 4
  %inttoptr_bytes.223 = inttoptr i64 %ptr_plus_imm.160 to ptr addrspace(1)
  %.5067 = load float, ptr addrspace(1) %inttoptr_bytes.223, align 4
  store float %.5067, ptr %R35, align 4
  %.5071 = load i32, ptr %R13, align 4
  %.5072 = load i32, ptr %R24, align 4
  %imad_ext1.60 = zext i32 %.5071 to i64
  %imad_ext2.60 = zext i32 %.5072 to i64
  %imad_mul.73 = mul nuw i64 %imad_ext1.60, %imad_ext2.60
  %.5073 = ptrtoint ptr %Arg_2 to i64
  %imad_add.73 = add i64 %imad_mul.73, %.5073
  %.5075 = lshr i64 %imad_add.73, 32
  %trunc32.140 = trunc nuw i64 %.5075 to i32
  %trunc32.141 = trunc i64 %imad_add.73 to i32
  store i32 %trunc32.141, ptr %R12, align 4
  store i32 %trunc32.140, ptr %R13, align 4
  %.5079 = load i32, ptr %R8, align 4
  %zext.508 = zext i32 %.5079 to i64
  %.5080 = load i32, ptr %R9, align 4
  %zext.509 = zext i32 %.5080 to i64
  %shl.269 = shl nuw i64 %zext.509, 32
  %or.244 = or disjoint i64 %shl.269, %zext.508
  %ptr_plus_imm.161 = add i64 %or.244, 8
  %inttoptr_bytes.224 = inttoptr i64 %ptr_plus_imm.161 to ptr addrspace(1)
  %.5081 = load float, ptr addrspace(1) %inttoptr_bytes.224, align 4
  store float %.5081, ptr %R6, align 4
  %.5085 = load i32, ptr %R25, align 4
  %.5086 = load i32, ptr %R24, align 4
  %imad_ext1.61 = zext i32 %.5085 to i64
  %imad_ext2.61 = zext i32 %.5086 to i64
  %imad_mul.74 = mul nuw i64 %imad_ext1.61, %imad_ext2.61
  %.5087 = ptrtoint ptr %Arg_2 to i64
  %imad_add.74 = add i64 %imad_mul.74, %.5087
  %.5089 = lshr i64 %imad_add.74, 32
  %trunc32.142 = trunc nuw i64 %.5089 to i32
  %trunc32.143 = trunc i64 %imad_add.74 to i32
  store i32 %trunc32.143, ptr %R24, align 4
  store i32 %trunc32.142, ptr %R25, align 4
  %.5093 = load i32, ptr %R10, align 4
  %zext.510 = zext i32 %.5093 to i64
  %.5094 = load i32, ptr %R11, align 4
  %zext.511 = zext i32 %.5094 to i64
  %shl.270 = shl nuw i64 %zext.511, 32
  %or.245 = or disjoint i64 %shl.270, %zext.510
  %ptr_plus_imm.162 = add i64 %or.245, 8
  %inttoptr_bytes.225 = inttoptr i64 %ptr_plus_imm.162 to ptr addrspace(1)
  %.5095 = load float, ptr addrspace(1) %inttoptr_bytes.225, align 4
  store float %.5095, ptr %R4, align 4
  %.5099 = load i32, ptr %R8, align 4
  %zext.512 = zext i32 %.5099 to i64
  %.5100 = load i32, ptr %R9, align 4
  %zext.513 = zext i32 %.5100 to i64
  %shl.271 = shl nuw i64 %zext.513, 32
  %or.246 = or disjoint i64 %shl.271, %zext.512
  %ptr_plus_imm.163 = add i64 %or.246, 12
  %inttoptr_bytes.226 = inttoptr i64 %ptr_plus_imm.163 to ptr addrspace(1)
  %.5101 = load float, ptr addrspace(1) %inttoptr_bytes.226, align 4
  store float %.5101, ptr %R5, align 4
  %.5105 = load i32, ptr %R10, align 4
  %zext.514 = zext i32 %.5105 to i64
  %.5106 = load i32, ptr %R11, align 4
  %zext.515 = zext i32 %.5106 to i64
  %shl.272 = shl nuw i64 %zext.515, 32
  %or.247 = or disjoint i64 %shl.272, %zext.514
  %ptr_plus_imm.164 = add i64 %or.247, 12
  %inttoptr_bytes.227 = inttoptr i64 %ptr_plus_imm.164 to ptr addrspace(1)
  %.5107 = load float, ptr addrspace(1) %inttoptr_bytes.227, align 4
  store float %.5107, ptr %R60, align 4
  %.5111 = load i32, ptr %R12, align 4
  %zext.516 = zext i32 %.5111 to i64
  %.5112 = load i32, ptr %R13, align 4
  %zext.517 = zext i32 %.5112 to i64
  %shl.273 = shl nuw i64 %zext.517, 32
  %or.248 = or disjoint i64 %shl.273, %zext.516
  %inttoptr_bytes.228 = inttoptr i64 %or.248 to ptr addrspace(1)
  %.5113 = load float, ptr addrspace(1) %inttoptr_bytes.228, align 4
  store float %.5113, ptr %R58, align 4
  %.5117 = load i32, ptr %R12, align 4
  %zext.518 = zext i32 %.5117 to i64
  %.5118 = load i32, ptr %R13, align 4
  %zext.519 = zext i32 %.5118 to i64
  %shl.274 = shl nuw i64 %zext.519, 32
  %or.249 = or disjoint i64 %shl.274, %zext.518
  %ptr_plus_imm.165 = add i64 %or.249, 4
  %inttoptr_bytes.229 = inttoptr i64 %ptr_plus_imm.165 to ptr addrspace(1)
  %.5119 = load float, ptr addrspace(1) %inttoptr_bytes.229, align 4
  store float %.5119, ptr %R54, align 4
  %.5123 = load float, ptr %R37, align 4
  %.5124 = load float, ptr %R34, align 4
  %.5125 = load float, ptr %R42, align 4
  %fmul.201 = fmul float %.5123, %.5124
  %fadd.182 = fadd float %fmul.201, %.5125
  store float %fadd.182, ptr %R10, align 4
  %.5129 = load i32, ptr %R24, align 4
  %zext.520 = zext i32 %.5129 to i64
  %.5130 = load i32, ptr %R25, align 4
  %zext.521 = zext i32 %.5130 to i64
  %shl.275 = shl nuw i64 %zext.521, 32
  %or.250 = or disjoint i64 %shl.275, %zext.520
  %inttoptr_bytes.230 = inttoptr i64 %or.250 to ptr addrspace(1)
  %.5131 = load float, ptr addrspace(1) %inttoptr_bytes.230, align 4
  store float %.5131, ptr %R37, align 4
  %.5135 = load i32, ptr %R24, align 4
  %zext.522 = zext i32 %.5135 to i64
  %.5136 = load i32, ptr %R25, align 4
  %zext.523 = zext i32 %.5136 to i64
  %shl.276 = shl nuw i64 %zext.523, 32
  %or.251 = or disjoint i64 %shl.276, %zext.522
  %ptr_plus_imm.166 = add i64 %or.251, 4
  %inttoptr_bytes.231 = inttoptr i64 %ptr_plus_imm.166 to ptr addrspace(1)
  %.5137 = load float, ptr addrspace(1) %inttoptr_bytes.231, align 4
  store float %.5137, ptr %R42, align 4
  %.5141 = load i32, ptr %R12, align 4
  %zext.524 = zext i32 %.5141 to i64
  %.5142 = load i32, ptr %R13, align 4
  %zext.525 = zext i32 %.5142 to i64
  %shl.277 = shl nuw i64 %zext.525, 32
  %or.252 = or disjoint i64 %shl.277, %zext.524
  %ptr_plus_imm.167 = add i64 %or.252, 8
  %inttoptr_bytes.232 = inttoptr i64 %ptr_plus_imm.167 to ptr addrspace(1)
  %.5143 = load float, ptr addrspace(1) %inttoptr_bytes.232, align 4
  store float %.5143, ptr %R7, align 4
  %.5147 = load i32, ptr %R24, align 4
  %zext.526 = zext i32 %.5147 to i64
  %.5148 = load i32, ptr %R25, align 4
  %zext.527 = zext i32 %.5148 to i64
  %shl.278 = shl nuw i64 %zext.527, 32
  %or.253 = or disjoint i64 %shl.278, %zext.526
  %ptr_plus_imm.168 = add i64 %or.253, 8
  %inttoptr_bytes.233 = inttoptr i64 %ptr_plus_imm.168 to ptr addrspace(1)
  %.5149 = load float, ptr addrspace(1) %inttoptr_bytes.233, align 4
  store float %.5149, ptr %R9, align 4
  %.5153 = load i32, ptr %R24, align 4
  %zext.528 = zext i32 %.5153 to i64
  %.5154 = load i32, ptr %R25, align 4
  %zext.529 = zext i32 %.5154 to i64
  %shl.279 = shl nuw i64 %zext.529, 32
  %or.254 = or disjoint i64 %shl.279, %zext.528
  %ptr_plus_imm.169 = add i64 %or.254, 12
  %inttoptr_bytes.234 = inttoptr i64 %ptr_plus_imm.169 to ptr addrspace(1)
  %.5155 = load float, ptr addrspace(1) %inttoptr_bytes.234, align 4
  store float %.5155, ptr %R8, align 4
  %.5159 = load i32, ptr %R12, align 4
  %zext.530 = zext i32 %.5159 to i64
  %.5160 = load i32, ptr %R13, align 4
  %zext.531 = zext i32 %.5160 to i64
  %shl.280 = shl nuw i64 %zext.531, 32
  %or.255 = or disjoint i64 %shl.280, %zext.530
  %ptr_plus_imm.170 = add i64 %or.255, 12
  %inttoptr_bytes.235 = inttoptr i64 %ptr_plus_imm.170 to ptr addrspace(1)
  %.5161 = load float, ptr addrspace(1) %inttoptr_bytes.235, align 4
  store float %.5161, ptr %R13, align 4
  %.5165 = load i32, ptr %R22, align 4
  %.5166 = add i32 %.5165, -16
  store i32 %.5166, ptr %R22, align 4
  %cmp.45 = icmp sgt i32 %.5166, 12
  %.5177 = load i32, ptr %R23, align 4
  %.5178 = add i32 %.5177, 16
  store i32 %.5178, ptr %R23, align 4
  %.5182 = load float, ptr %R43, align 4
  %.5183 = load float, ptr %R36, align 4
  %.5184 = load float, ptr %R10, align 4
  %fmul.202 = fmul float %.5182, %.5183
  %fadd.183 = fadd float %fmul.202, %.5184
  store float %fadd.183, ptr %R10, align 4
  %.5188 = load float, ptr %R34, align 4
  %.5189 = load float, ptr %R47, align 4
  %.5190 = load float, ptr %R45, align 4
  %fmul.203 = fmul float %.5188, %.5189
  %fadd.184 = fadd float %fmul.203, %.5190
  store float %fadd.184, ptr %R45, align 4
  %.5194 = load float, ptr %R36, align 4
  %.5195 = load float, ptr %R51, align 4
  %fmul.204 = fmul float %.5194, %.5195
  %fadd.185 = fadd float %fmul.204, %fadd.184
  store float %fadd.185, ptr %R45, align 4
  %.5200 = load float, ptr %R57, align 4
  %.5201 = load float, ptr %R38, align 4
  %.5202 = load float, ptr %R10, align 4
  %fmul.205 = fmul float %.5200, %.5201
  %fadd.186 = fadd float %fmul.205, %.5202
  store float %fadd.186, ptr %R10, align 4
  %.5207 = load float, ptr %R59, align 4
  %.5208 = load float, ptr %R45, align 4
  %fmul.206 = fmul float %.5201, %.5207
  %fadd.187 = fadd float %fmul.206, %.5208
  store float %fadd.187, ptr %R45, align 4
  %.5212 = load float, ptr %R50, align 4
  %.5213 = load float, ptr %R41, align 4
  %.5214 = load float, ptr %R10, align 4
  %fmul.207 = fmul float %.5212, %.5213
  %fadd.188 = fadd float %fmul.207, %.5214
  store float %fadd.188, ptr %R10, align 4
  %.5219 = load float, ptr %R46, align 4
  %.5220 = load float, ptr %R45, align 4
  %fmul.208 = fmul float %.5213, %.5219
  %fadd.189 = fadd float %fmul.208, %.5220
  store float %fadd.189, ptr %R45, align 4
  %.5224 = load float, ptr %R61, align 4
  %.5225 = load float, ptr %R40, align 4
  %.5226 = load float, ptr %R10, align 4
  %fmul.209 = fmul float %.5224, %.5225
  %fadd.190 = fadd float %fmul.209, %.5226
  store float %fadd.190, ptr %R10, align 4
  %.5231 = load float, ptr %R35, align 4
  %.5232 = load float, ptr %R45, align 4
  %fmul.210 = fmul float %.5225, %.5231
  %fadd.191 = fadd float %fmul.210, %.5232
  store float %fadd.191, ptr %R35, align 4
  %.5236 = load float, ptr %R6, align 4
  %.5237 = load float, ptr %R39, align 4
  %.5238 = load float, ptr %R10, align 4
  %fmul.211 = fmul float %.5236, %.5237
  %fadd.192 = fadd float %fmul.211, %.5238
  store float %fadd.192, ptr %R6, align 4
  %.5243 = load float, ptr %R4, align 4
  %.5244 = load float, ptr %R35, align 4
  %fmul.212 = fmul float %.5237, %.5243
  %fadd.193 = fadd float %fmul.212, %.5244
  store float %fadd.193, ptr %R35, align 4
  %.5248 = load float, ptr %R5, align 4
  %.5249 = load float, ptr %R44, align 4
  %.5250 = load float, ptr %R6, align 4
  %fmul.213 = fmul float %.5248, %.5249
  %fadd.194 = fadd float %fmul.213, %.5250
  store float %fadd.194, ptr %R5, align 4
  %.5255 = load float, ptr %R60, align 4
  %.5256 = load float, ptr %R35, align 4
  %fmul.214 = fmul float %.5249, %.5255
  %fadd.195 = fadd float %fmul.214, %.5256
  store float %fadd.195, ptr %R60, align 4
  %.5260 = load float, ptr %R58, align 4
  %.5261 = load float, ptr %R55, align 4
  %.5262 = load float, ptr %R5, align 4
  %fmul.215 = fmul float %.5260, %.5261
  %fadd.196 = fadd float %fmul.215, %.5262
  store float %fadd.196, ptr %R5, align 4
  %.5266 = load float, ptr %R54, align 4
  %.5267 = load float, ptr %R53, align 4
  %fmul.216 = fmul float %.5266, %.5267
  %fadd.197 = fadd float %fmul.216, %fadd.196
  store float %fadd.197, ptr %R5, align 4
  %.5272 = load float, ptr %R55, align 4
  %.5273 = load float, ptr %R37, align 4
  %.5274 = load float, ptr %R60, align 4
  %fmul.217 = fmul float %.5272, %.5273
  %fadd.198 = fadd float %fmul.217, %.5274
  store float %fadd.198, ptr %R37, align 4
  %.5278 = load float, ptr %R53, align 4
  %.5279 = load float, ptr %R42, align 4
  %fmul.218 = fmul float %.5278, %.5279
  %fadd.199 = fadd float %fmul.218, %fadd.198
  store float %fadd.199, ptr %R37, align 4
  %.5284 = load float, ptr %R7, align 4
  %.5285 = load float, ptr %R52, align 4
  %.5286 = load float, ptr %R5, align 4
  %fmul.219 = fmul float %.5284, %.5285
  %fadd.200 = fadd float %fmul.219, %.5286
  store float %fadd.200, ptr %R5, align 4
  %.5291 = load float, ptr %R9, align 4
  %.5292 = load float, ptr %R37, align 4
  %fmul.220 = fmul float %.5285, %.5291
  %fadd.201 = fadd float %fmul.220, %.5292
  store float %fadd.201, ptr %R9, align 4
  %.5296 = load float, ptr %R13, align 4
  %.5297 = load float, ptr %R56, align 4
  %.5298 = load float, ptr %R5, align 4
  %fmul.221 = fmul float %.5296, %.5297
  %fadd.202 = fadd float %fmul.221, %.5298
  store float %fadd.202, ptr %R44, align 4
  %.5303 = load float, ptr %R8, align 4
  %.5304 = load float, ptr %R9, align 4
  %fmul.222 = fmul float %.5297, %.5303
  %fadd.203 = fadd float %fmul.222, %.5304
  store float %fadd.203, ptr %R56, align 4
  br i1 %cmp.45, label %.L_x_30, label %.L_x_29.loopexit

.L_x_29.loopexit:                                 ; preds = %.L_x_30
  br label %.L_x_29

.L_x_29:                                          ; preds = %.L_x_29.loopexit, %.L_x_25_split_0x2980
  %.5312 = load i32, ptr %R22, align 4
  %cmp.46 = icmp slt i32 %.5312, 5
  br i1 %cmp.46, label %.L_x_31, label %.L_x_29_split_0x30b0

.L_x_29_split_0x30b0:                             ; preds = %.L_x_29
  %.5324 = load i32, ptr %R23, align 4
  %.5325 = add i32 %imad_mul.1, %.5324
  store i32 %.5325, ptr %R5, align 4
  store i32 4, ptr %R25, align 4
  %shl.281 = shl i32 %imad_mul.5, 2
  %add.16 = add i32 %shl.281, %.5325
  store i32 %add.16, ptr %R13, align 4
  %imad_mul.75 = mul i32 %imad_mul.5, 3
  %imad_add.75 = add i32 %imad_mul.75, %.5325
  store i32 %imad_add.75, ptr %R12, align 4
  %.5339 = load i32, ptr %R23, align 4
  %.5340 = add i32 %.5339, 4
  store i32 %.5340, ptr %R6, align 4
  %.5345 = load i32, ptr %R25, align 4
  %imad_ext1.62 = zext i32 %.5339 to i64
  %imad_ext2.62 = zext i32 %.5345 to i64
  %imad_mul.76 = mul nuw i64 %imad_ext1.62, %imad_ext2.62
  %.5346 = ptrtoint ptr %Arg_1 to i64
  %imad_add.76 = add i64 %imad_mul.76, %.5346
  %.5348 = lshr i64 %imad_add.76, 32
  %trunc32.144 = trunc nuw i64 %.5348 to i32
  %trunc32.145 = trunc i64 %imad_add.76 to i32
  store i32 %trunc32.145, ptr %R8, align 4
  store i32 %trunc32.144, ptr %R9, align 4
  %.5352 = load i32, ptr %R13, align 4
  %.5353 = add i32 %.5352, 4
  store i32 %.5353, ptr %R24, align 4
  %.5357 = load i32, ptr %R12, align 4
  %.5358 = load i32, ptr %R25, align 4
  %imad_ext1.63 = zext i32 %.5357 to i64
  %imad_ext2.63 = zext i32 %.5358 to i64
  %imad_mul.77 = mul nuw i64 %imad_ext1.63, %imad_ext2.63
  %.5359 = ptrtoint ptr %Arg_2 to i64
  %imad_add.77 = add i64 %imad_mul.77, %.5359
  %.5361 = lshr i64 %imad_add.77, 32
  %trunc32.146 = trunc nuw i64 %.5361 to i32
  %trunc32.147 = trunc i64 %imad_add.77 to i32
  store i32 %trunc32.147, ptr %R4, align 4
  store i32 %trunc32.146, ptr %R5, align 4
  %.5365 = load i32, ptr %R12, align 4
  %.5366 = add i32 %.5365, 4
  store i32 %.5366, ptr %R12, align 4
  %.5370 = load i32, ptr %R13, align 4
  %.5371 = load i32, ptr %R25, align 4
  %imad_ext1.64 = zext i32 %.5370 to i64
  %imad_ext2.64 = zext i32 %.5371 to i64
  %imad_mul.78 = mul nuw i64 %imad_ext1.64, %imad_ext2.64
  %.5372 = ptrtoint ptr %Arg_2 to i64
  %imad_add.78 = add i64 %imad_mul.78, %.5372
  %.5374 = lshr i64 %imad_add.78, 32
  %trunc32.148 = trunc nuw i64 %.5374 to i32
  %trunc32.149 = trunc i64 %imad_add.78 to i32
  store i32 %trunc32.149, ptr %R10, align 4
  store i32 %trunc32.148, ptr %R11, align 4
  %.5378 = load i32, ptr %R8, align 4
  %zext.532 = zext i32 %.5378 to i64
  %.5379 = load i32, ptr %R9, align 4
  %zext.533 = zext i32 %.5379 to i64
  %shl.282 = shl nuw i64 %zext.533, 32
  %or.256 = or disjoint i64 %shl.282, %zext.532
  %inttoptr_bytes.236 = inttoptr i64 %or.256 to ptr addrspace(1)
  %.5380 = load float, ptr addrspace(1) %inttoptr_bytes.236, align 4
  store float %.5380, ptr %R43, align 4
  %.5384 = load i32, ptr %R6, align 4
  %.5385 = load i32, ptr %R25, align 4
  %imad_ext1.65 = zext i32 %.5384 to i64
  %imad_ext2.65 = zext i32 %.5385 to i64
  %imad_mul.79 = mul nuw i64 %imad_ext1.65, %imad_ext2.65
  %.5386 = ptrtoint ptr %Arg_1 to i64
  %imad_add.79 = add i64 %imad_mul.79, %.5386
  %.5388 = lshr i64 %imad_add.79, 32
  %trunc32.150 = trunc nuw i64 %.5388 to i32
  %trunc32.151 = trunc i64 %imad_add.79 to i32
  store i32 %trunc32.151, ptr %R6, align 4
  store i32 %trunc32.150, ptr %R7, align 4
  %.5392 = load i32, ptr %R4, align 4
  %zext.534 = zext i32 %.5392 to i64
  %.5393 = load i32, ptr %R5, align 4
  %zext.535 = zext i32 %.5393 to i64
  %shl.283 = shl nuw i64 %zext.535, 32
  %or.257 = or disjoint i64 %shl.283, %zext.534
  %inttoptr_bytes.237 = inttoptr i64 %or.257 to ptr addrspace(1)
  %.5394 = load float, ptr addrspace(1) %inttoptr_bytes.237, align 4
  store float %.5394, ptr %R52, align 4
  %.5398 = load i32, ptr %R10, align 4
  %zext.536 = zext i32 %.5398 to i64
  %.5399 = load i32, ptr %R11, align 4
  %zext.537 = zext i32 %.5399 to i64
  %shl.284 = shl nuw i64 %zext.537, 32
  %or.258 = or disjoint i64 %shl.284, %zext.536
  %inttoptr_bytes.238 = inttoptr i64 %or.258 to ptr addrspace(1)
  %.5400 = load float, ptr addrspace(1) %inttoptr_bytes.238, align 4
  store float %.5400, ptr %R38, align 4
  %.5404 = load i32, ptr %R12, align 4
  %.5405 = load i32, ptr %R25, align 4
  %imad_ext1.66 = zext i32 %.5404 to i64
  %imad_ext2.66 = zext i32 %.5405 to i64
  %imad_mul.80 = mul nuw i64 %imad_ext1.66, %imad_ext2.66
  %.5406 = ptrtoint ptr %Arg_2 to i64
  %imad_add.80 = add i64 %imad_mul.80, %.5406
  %.5408 = lshr i64 %imad_add.80, 32
  %trunc32.152 = trunc nuw i64 %.5408 to i32
  %trunc32.153 = trunc i64 %imad_add.80 to i32
  store i32 %trunc32.153, ptr %R12, align 4
  store i32 %trunc32.152, ptr %R13, align 4
  %.5412 = load i32, ptr %R8, align 4
  %zext.538 = zext i32 %.5412 to i64
  %.5413 = load i32, ptr %R9, align 4
  %zext.539 = zext i32 %.5413 to i64
  %shl.285 = shl nuw i64 %zext.539, 32
  %or.259 = or disjoint i64 %shl.285, %zext.538
  %ptr_plus_imm.171 = add i64 %or.259, 4
  %inttoptr_bytes.239 = inttoptr i64 %ptr_plus_imm.171 to ptr addrspace(1)
  %.5414 = load float, ptr addrspace(1) %inttoptr_bytes.239, align 4
  store float %.5414, ptr %R36, align 4
  %.5418 = load i32, ptr %R4, align 4
  %zext.540 = zext i32 %.5418 to i64
  %.5419 = load i32, ptr %R5, align 4
  %zext.541 = zext i32 %.5419 to i64
  %shl.286 = shl nuw i64 %zext.541, 32
  %or.260 = or disjoint i64 %shl.286, %zext.540
  %ptr_plus_imm.172 = add i64 %or.260, 4
  %inttoptr_bytes.240 = inttoptr i64 %ptr_plus_imm.172 to ptr addrspace(1)
  %.5420 = load float, ptr addrspace(1) %inttoptr_bytes.240, align 4
  store float %.5420, ptr %R41, align 4
  %.5424 = load i32, ptr %R10, align 4
  %zext.542 = zext i32 %.5424 to i64
  %.5425 = load i32, ptr %R11, align 4
  %zext.543 = zext i32 %.5425 to i64
  %shl.287 = shl nuw i64 %zext.543, 32
  %or.261 = or disjoint i64 %shl.287, %zext.542
  %ptr_plus_imm.173 = add i64 %or.261, 4
  %inttoptr_bytes.241 = inttoptr i64 %ptr_plus_imm.173 to ptr addrspace(1)
  %.5426 = load float, ptr addrspace(1) %inttoptr_bytes.241, align 4
  store float %.5426, ptr %R39, align 4
  %.5430 = load i32, ptr %R24, align 4
  %.5431 = load i32, ptr %R25, align 4
  %imad_ext1.67 = zext i32 %.5430 to i64
  %imad_ext2.67 = zext i32 %.5431 to i64
  %imad_mul.81 = mul nuw i64 %imad_ext1.67, %imad_ext2.67
  %.5432 = ptrtoint ptr %Arg_2 to i64
  %imad_add.81 = add i64 %imad_mul.81, %.5432
  %.5434 = lshr i64 %imad_add.81, 32
  %trunc32.154 = trunc nuw i64 %.5434 to i32
  %trunc32.155 = trunc i64 %imad_add.81 to i32
  store i32 %trunc32.155, ptr %R24, align 4
  store i32 %trunc32.154, ptr %R25, align 4
  %.5438 = load i32, ptr %R8, align 4
  %zext.544 = zext i32 %.5438 to i64
  %.5439 = load i32, ptr %R9, align 4
  %zext.545 = zext i32 %.5439 to i64
  %shl.288 = shl nuw i64 %zext.545, 32
  %or.262 = or disjoint i64 %shl.288, %zext.544
  %ptr_plus_imm.174 = add i64 %or.262, 8
  %inttoptr_bytes.242 = inttoptr i64 %ptr_plus_imm.174 to ptr addrspace(1)
  %.5440 = load float, ptr addrspace(1) %inttoptr_bytes.242, align 4
  store float %.5440, ptr %R34, align 4
  %.5444 = load i32, ptr %R4, align 4
  %zext.546 = zext i32 %.5444 to i64
  %.5445 = load i32, ptr %R5, align 4
  %zext.547 = zext i32 %.5445 to i64
  %shl.289 = shl nuw i64 %zext.547, 32
  %or.263 = or disjoint i64 %shl.289, %zext.546
  %ptr_plus_imm.175 = add i64 %or.263, 8
  %inttoptr_bytes.243 = inttoptr i64 %ptr_plus_imm.175 to ptr addrspace(1)
  %.5446 = load float, ptr addrspace(1) %inttoptr_bytes.243, align 4
  store float %.5446, ptr %R37, align 4
  %.5450 = load i32, ptr %R10, align 4
  %zext.548 = zext i32 %.5450 to i64
  %.5451 = load i32, ptr %R11, align 4
  %zext.549 = zext i32 %.5451 to i64
  %shl.290 = shl nuw i64 %zext.549, 32
  %or.264 = or disjoint i64 %shl.290, %zext.548
  %ptr_plus_imm.176 = add i64 %or.264, 8
  %inttoptr_bytes.244 = inttoptr i64 %ptr_plus_imm.176 to ptr addrspace(1)
  %.5452 = load float, ptr addrspace(1) %inttoptr_bytes.244, align 4
  store float %.5452, ptr %R35, align 4
  %.5456 = load i32, ptr %R8, align 4
  %zext.550 = zext i32 %.5456 to i64
  %.5457 = load i32, ptr %R9, align 4
  %zext.551 = zext i32 %.5457 to i64
  %shl.291 = shl nuw i64 %zext.551, 32
  %or.265 = or disjoint i64 %shl.291, %zext.550
  %ptr_plus_imm.177 = add i64 %or.265, 12
  %inttoptr_bytes.245 = inttoptr i64 %ptr_plus_imm.177 to ptr addrspace(1)
  %.5458 = load float, ptr addrspace(1) %inttoptr_bytes.245, align 4
  store float %.5458, ptr %R40, align 4
  %.5462 = load i32, ptr %R4, align 4
  %zext.552 = zext i32 %.5462 to i64
  %.5463 = load i32, ptr %R5, align 4
  %zext.553 = zext i32 %.5463 to i64
  %shl.292 = shl nuw i64 %zext.553, 32
  %or.266 = or disjoint i64 %shl.292, %zext.552
  %ptr_plus_imm.178 = add i64 %or.266, 12
  %inttoptr_bytes.246 = inttoptr i64 %ptr_plus_imm.178 to ptr addrspace(1)
  %.5464 = load float, ptr addrspace(1) %inttoptr_bytes.246, align 4
  store float %.5464, ptr %R45, align 4
  %.5468 = load i32, ptr %R10, align 4
  %zext.554 = zext i32 %.5468 to i64
  %.5469 = load i32, ptr %R11, align 4
  %zext.555 = zext i32 %.5469 to i64
  %shl.293 = shl nuw i64 %zext.555, 32
  %or.267 = or disjoint i64 %shl.293, %zext.554
  %ptr_plus_imm.179 = add i64 %or.267, 12
  %inttoptr_bytes.247 = inttoptr i64 %ptr_plus_imm.179 to ptr addrspace(1)
  %.5470 = load float, ptr addrspace(1) %inttoptr_bytes.247, align 4
  store float %.5470, ptr %R59, align 4
  %.5474 = load i32, ptr %R6, align 4
  %zext.556 = zext i32 %.5474 to i64
  %.5475 = load i32, ptr %R7, align 4
  %zext.557 = zext i32 %.5475 to i64
  %shl.294 = shl nuw i64 %zext.557, 32
  %or.268 = or disjoint i64 %shl.294, %zext.556
  %inttoptr_bytes.248 = inttoptr i64 %or.268 to ptr addrspace(1)
  %.5476 = load float, ptr addrspace(1) %inttoptr_bytes.248, align 4
  store float %.5476, ptr %R50, align 4
  %.5480 = load i32, ptr %R12, align 4
  %zext.558 = zext i32 %.5480 to i64
  %.5481 = load i32, ptr %R13, align 4
  %zext.559 = zext i32 %.5481 to i64
  %shl.295 = shl nuw i64 %zext.559, 32
  %or.269 = or disjoint i64 %shl.295, %zext.558
  %inttoptr_bytes.249 = inttoptr i64 %or.269 to ptr addrspace(1)
  %.5482 = load float, ptr addrspace(1) %inttoptr_bytes.249, align 4
  store float %.5482, ptr %R57, align 4
  %.5486 = load i32, ptr %R24, align 4
  %zext.560 = zext i32 %.5486 to i64
  %.5487 = load i32, ptr %R25, align 4
  %zext.561 = zext i32 %.5487 to i64
  %shl.296 = shl nuw i64 %zext.561, 32
  %or.270 = or disjoint i64 %shl.296, %zext.560
  %inttoptr_bytes.250 = inttoptr i64 %or.270 to ptr addrspace(1)
  %.5488 = load float, ptr addrspace(1) %inttoptr_bytes.250, align 4
  store float %.5488, ptr %R55, align 4
  %.5492 = load i32, ptr %R6, align 4
  %zext.562 = zext i32 %.5492 to i64
  %.5493 = load i32, ptr %R7, align 4
  %zext.563 = zext i32 %.5493 to i64
  %shl.297 = shl nuw i64 %zext.563, 32
  %or.271 = or disjoint i64 %shl.297, %zext.562
  %ptr_plus_imm.180 = add i64 %or.271, 4
  %inttoptr_bytes.251 = inttoptr i64 %ptr_plus_imm.180 to ptr addrspace(1)
  %.5494 = load float, ptr addrspace(1) %inttoptr_bytes.251, align 4
  store float %.5494, ptr %R46, align 4
  %.5498 = load i32, ptr %R12, align 4
  %zext.564 = zext i32 %.5498 to i64
  %.5499 = load i32, ptr %R13, align 4
  %zext.565 = zext i32 %.5499 to i64
  %shl.298 = shl nuw i64 %zext.565, 32
  %or.272 = or disjoint i64 %shl.298, %zext.564
  %ptr_plus_imm.181 = add i64 %or.272, 4
  %inttoptr_bytes.252 = inttoptr i64 %ptr_plus_imm.181 to ptr addrspace(1)
  %.5500 = load float, ptr addrspace(1) %inttoptr_bytes.252, align 4
  store float %.5500, ptr %R53, align 4
  %.5504 = load i32, ptr %R24, align 4
  %zext.566 = zext i32 %.5504 to i64
  %.5505 = load i32, ptr %R25, align 4
  %zext.567 = zext i32 %.5505 to i64
  %shl.299 = shl nuw i64 %zext.567, 32
  %or.273 = or disjoint i64 %shl.299, %zext.566
  %ptr_plus_imm.182 = add i64 %or.273, 4
  %inttoptr_bytes.253 = inttoptr i64 %ptr_plus_imm.182 to ptr addrspace(1)
  %.5506 = load float, ptr addrspace(1) %inttoptr_bytes.253, align 4
  store float %.5506, ptr %R51, align 4
  %.5510 = load i32, ptr %R6, align 4
  %zext.568 = zext i32 %.5510 to i64
  %.5511 = load i32, ptr %R7, align 4
  %zext.569 = zext i32 %.5511 to i64
  %shl.300 = shl nuw i64 %zext.569, 32
  %or.274 = or disjoint i64 %shl.300, %zext.568
  %ptr_plus_imm.183 = add i64 %or.274, 8
  %inttoptr_bytes.254 = inttoptr i64 %ptr_plus_imm.183 to ptr addrspace(1)
  %.5512 = load float, ptr addrspace(1) %inttoptr_bytes.254, align 4
  store float %.5512, ptr %R42, align 4
  %.5516 = load i32, ptr %R12, align 4
  %zext.570 = zext i32 %.5516 to i64
  %.5517 = load i32, ptr %R13, align 4
  %zext.571 = zext i32 %.5517 to i64
  %shl.301 = shl nuw i64 %zext.571, 32
  %or.275 = or disjoint i64 %shl.301, %zext.570
  %ptr_plus_imm.184 = add i64 %or.275, 8
  %inttoptr_bytes.255 = inttoptr i64 %ptr_plus_imm.184 to ptr addrspace(1)
  %.5518 = load float, ptr addrspace(1) %inttoptr_bytes.255, align 4
  store float %.5518, ptr %R47, align 4
  %.5522 = load i32, ptr %R24, align 4
  %zext.572 = zext i32 %.5522 to i64
  %.5523 = load i32, ptr %R25, align 4
  %zext.573 = zext i32 %.5523 to i64
  %shl.302 = shl nuw i64 %zext.573, 32
  %or.276 = or disjoint i64 %shl.302, %zext.572
  %ptr_plus_imm.185 = add i64 %or.276, 8
  %inttoptr_bytes.256 = inttoptr i64 %ptr_plus_imm.185 to ptr addrspace(1)
  %.5524 = load float, ptr addrspace(1) %inttoptr_bytes.256, align 4
  store float %.5524, ptr %R9, align 4
  %.5528 = load i32, ptr %R6, align 4
  %zext.574 = zext i32 %.5528 to i64
  %.5529 = load i32, ptr %R7, align 4
  %zext.575 = zext i32 %.5529 to i64
  %shl.303 = shl nuw i64 %zext.575, 32
  %or.277 = or disjoint i64 %shl.303, %zext.574
  %ptr_plus_imm.186 = add i64 %or.277, 12
  %inttoptr_bytes.257 = inttoptr i64 %ptr_plus_imm.186 to ptr addrspace(1)
  %.5530 = load float, ptr addrspace(1) %inttoptr_bytes.257, align 4
  store float %.5530, ptr %R4, align 4
  %.5534 = load i32, ptr %R12, align 4
  %zext.576 = zext i32 %.5534 to i64
  %.5535 = load i32, ptr %R13, align 4
  %zext.577 = zext i32 %.5535 to i64
  %shl.304 = shl nuw i64 %zext.577, 32
  %or.278 = or disjoint i64 %shl.304, %zext.576
  %ptr_plus_imm.187 = add i64 %or.278, 12
  %inttoptr_bytes.258 = inttoptr i64 %ptr_plus_imm.187 to ptr addrspace(1)
  %.5536 = load float, ptr addrspace(1) %inttoptr_bytes.258, align 4
  store float %.5536, ptr %R5, align 4
  %.5540 = load i32, ptr %R24, align 4
  %zext.578 = zext i32 %.5540 to i64
  %.5541 = load i32, ptr %R25, align 4
  %zext.579 = zext i32 %.5541 to i64
  %shl.305 = shl nuw i64 %zext.579, 32
  %or.279 = or disjoint i64 %shl.305, %zext.578
  %ptr_plus_imm.188 = add i64 %or.279, 12
  %inttoptr_bytes.259 = inttoptr i64 %ptr_plus_imm.188 to ptr addrspace(1)
  %.5542 = load float, ptr addrspace(1) %inttoptr_bytes.259, align 4
  store float %.5542, ptr %R11, align 4
  %.5550 = load i32, ptr %R22, align 4
  %.5551 = add i32 %.5550, -8
  store i32 %.5551, ptr %R22, align 4
  %.5555 = load i32, ptr %R23, align 4
  %.5556 = add i32 %.5555, 8
  store i32 %.5556, ptr %R23, align 4
  %.5560 = load float, ptr %R52, align 4
  %.5561 = load float, ptr %R43, align 4
  %.5562 = load float, ptr %R44, align 4
  %fmul.223 = fmul float %.5560, %.5561
  %fadd.204 = fadd float %fmul.223, %.5562
  store float %fadd.204, ptr %R52, align 4
  %.5567 = load float, ptr %R38, align 4
  %.5568 = load float, ptr %R56, align 4
  %fmul.224 = fmul float %.5561, %.5567
  %fadd.205 = fadd float %fmul.224, %.5568
  store float %fadd.205, ptr %R38, align 4
  %.5572 = load float, ptr %R41, align 4
  %.5573 = load float, ptr %R36, align 4
  %.5574 = load float, ptr %R52, align 4
  %fmul.225 = fmul float %.5572, %.5573
  %fadd.206 = fadd float %fmul.225, %.5574
  store float %fadd.206, ptr %R41, align 4
  %.5579 = load float, ptr %R39, align 4
  %.5580 = load float, ptr %R38, align 4
  %fmul.226 = fmul float %.5573, %.5579
  %fadd.207 = fadd float %fmul.226, %.5580
  store float %fadd.207, ptr %R38, align 4
  %.5584 = load float, ptr %R37, align 4
  %.5585 = load float, ptr %R34, align 4
  %.5586 = load float, ptr %R41, align 4
  %fmul.227 = fmul float %.5584, %.5585
  %fadd.208 = fadd float %fmul.227, %.5586
  store float %fadd.208, ptr %R37, align 4
  %.5591 = load float, ptr %R35, align 4
  %.5592 = load float, ptr %R38, align 4
  %fmul.228 = fmul float %.5585, %.5591
  %fadd.209 = fadd float %fmul.228, %.5592
  store float %fadd.209, ptr %R35, align 4
  %.5596 = load float, ptr %R45, align 4
  %.5597 = load float, ptr %R40, align 4
  %.5598 = load float, ptr %R37, align 4
  %fmul.229 = fmul float %.5596, %.5597
  %fadd.210 = fadd float %fmul.229, %.5598
  store float %fadd.210, ptr %R37, align 4
  %.5603 = load float, ptr %R59, align 4
  %.5604 = load float, ptr %R35, align 4
  %fmul.230 = fmul float %.5597, %.5603
  %fadd.211 = fadd float %fmul.230, %.5604
  store float %fadd.211, ptr %R35, align 4
  %.5608 = load float, ptr %R57, align 4
  %.5609 = load float, ptr %R50, align 4
  %.5610 = load float, ptr %R37, align 4
  %fmul.231 = fmul float %.5608, %.5609
  %fadd.212 = fadd float %fmul.231, %.5610
  store float %fadd.212, ptr %R37, align 4
  %.5615 = load float, ptr %R55, align 4
  %.5616 = load float, ptr %R35, align 4
  %fmul.232 = fmul float %.5609, %.5615
  %fadd.213 = fadd float %fmul.232, %.5616
  store float %fadd.213, ptr %R35, align 4
  %.5620 = load float, ptr %R53, align 4
  %.5621 = load float, ptr %R46, align 4
  %.5622 = load float, ptr %R37, align 4
  %fmul.233 = fmul float %.5620, %.5621
  %fadd.214 = fadd float %fmul.233, %.5622
  store float %fadd.214, ptr %R37, align 4
  %.5627 = load float, ptr %R51, align 4
  %.5628 = load float, ptr %R35, align 4
  %fmul.234 = fmul float %.5621, %.5627
  %fadd.215 = fadd float %fmul.234, %.5628
  store float %fadd.215, ptr %R35, align 4
  %.5632 = load float, ptr %R47, align 4
  %.5633 = load float, ptr %R42, align 4
  %.5634 = load float, ptr %R37, align 4
  %fmul.235 = fmul float %.5632, %.5633
  %fadd.216 = fadd float %fmul.235, %.5634
  store float %fadd.216, ptr %R37, align 4
  %.5639 = load float, ptr %R9, align 4
  %.5640 = load float, ptr %R35, align 4
  %fmul.236 = fmul float %.5633, %.5639
  %fadd.217 = fadd float %fmul.236, %.5640
  store float %fadd.217, ptr %R9, align 4
  %.5644 = load float, ptr %R5, align 4
  %.5645 = load float, ptr %R4, align 4
  %.5646 = load float, ptr %R37, align 4
  %fmul.237 = fmul float %.5644, %.5645
  %fadd.218 = fadd float %fmul.237, %.5646
  store float %fadd.218, ptr %R44, align 4
  %.5651 = load float, ptr %R11, align 4
  %.5652 = load float, ptr %R9, align 4
  %fmul.238 = fmul float %.5645, %.5651
  %fadd.219 = fadd float %fmul.238, %.5652
  store float %fadd.219, ptr %R56, align 4
  br label %.L_x_31

.L_x_31:                                          ; preds = %.L_x_29_split_0x30b0, %.L_x_29
  br i1 false, label %.L_x_27, label %.L_x_28.preheader

.L_x_28.preheader:                                ; preds = %.L_x_25_split_0x2940, %.L_x_31
  br label %.L_x_28

.L_x_28:                                          ; preds = %.L_x_28.preheader, %.L_x_28
  %.5669 = load i32, ptr %R23, align 4
  %.5670 = add i32 %imad_mul.1, %.5669
  store i32 %.5670, ptr %R5, align 4
  store i32 4, ptr %R6, align 4
  %shl.306 = shl i32 %imad_mul.5, 2
  %add.17 = add i32 %shl.306, %.5670
  store i32 %add.17, ptr %R11, align 4
  %imad_mul.82 = mul i32 %imad_mul.5, 3
  %imad_add.82 = add i32 %imad_mul.82, %.5670
  store i32 %imad_add.82, ptr %R7, align 4
  %.5684 = load i32, ptr %R23, align 4
  %.5685 = load i32, ptr %R6, align 4
  %imad_ext1.68 = zext i32 %.5684 to i64
  %imad_ext2.68 = zext i32 %.5685 to i64
  %imad_mul.83 = mul nuw i64 %imad_ext1.68, %imad_ext2.68
  %.5686 = ptrtoint ptr %Arg_1 to i64
  %imad_add.83 = add i64 %imad_mul.83, %.5686
  %.5688 = lshr i64 %imad_add.83, 32
  %trunc32.156 = trunc nuw i64 %.5688 to i32
  %trunc32.157 = trunc i64 %imad_add.83 to i32
  store i32 %trunc32.157, ptr %R8, align 4
  store i32 %trunc32.156, ptr %R9, align 4
  %.5692 = load i32, ptr %R7, align 4
  %.5693 = load i32, ptr %R6, align 4
  %imad_ext1.69 = zext i32 %.5692 to i64
  %imad_ext2.69 = zext i32 %.5693 to i64
  %imad_mul.84 = mul nuw i64 %imad_ext1.69, %imad_ext2.69
  %.5694 = ptrtoint ptr %Arg_2 to i64
  %imad_add.84 = add i64 %imad_mul.84, %.5694
  %.5696 = lshr i64 %imad_add.84, 32
  %trunc32.158 = trunc nuw i64 %.5696 to i32
  %trunc32.159 = trunc i64 %imad_add.84 to i32
  store i32 %trunc32.159, ptr %R4, align 4
  store i32 %trunc32.158, ptr %R5, align 4
  %.5700 = load i32, ptr %R11, align 4
  %.5701 = load i32, ptr %R6, align 4
  %imad_ext1.70 = zext i32 %.5700 to i64
  %imad_ext2.70 = zext i32 %.5701 to i64
  %imad_mul.85 = mul nuw i64 %imad_ext1.70, %imad_ext2.70
  %.5702 = ptrtoint ptr %Arg_2 to i64
  %imad_add.85 = add i64 %imad_mul.85, %.5702
  %.5704 = lshr i64 %imad_add.85, 32
  %trunc32.160 = trunc nuw i64 %.5704 to i32
  %trunc32.161 = trunc i64 %imad_add.85 to i32
  store i32 %trunc32.161, ptr %R6, align 4
  store i32 %trunc32.160, ptr %R7, align 4
  %.5708 = load i32, ptr %R8, align 4
  %zext.580 = zext i32 %.5708 to i64
  %.5709 = load i32, ptr %R9, align 4
  %zext.581 = zext i32 %.5709 to i64
  %shl.307 = shl nuw i64 %zext.581, 32
  %or.280 = or disjoint i64 %shl.307, %zext.580
  %inttoptr_bytes.260 = inttoptr i64 %or.280 to ptr addrspace(1)
  %.5710 = load float, ptr addrspace(1) %inttoptr_bytes.260, align 4
  store float %.5710, ptr %R13, align 4
  %.5714 = load i32, ptr %R4, align 4
  %zext.582 = zext i32 %.5714 to i64
  %.5715 = load i32, ptr %R5, align 4
  %zext.583 = zext i32 %.5715 to i64
  %shl.308 = shl nuw i64 %zext.583, 32
  %or.281 = or disjoint i64 %shl.308, %zext.582
  %inttoptr_bytes.261 = inttoptr i64 %or.281 to ptr addrspace(1)
  %.5716 = load float, ptr addrspace(1) %inttoptr_bytes.261, align 4
  store float %.5716, ptr %R11, align 4
  %.5720 = load i32, ptr %R6, align 4
  %zext.584 = zext i32 %.5720 to i64
  %.5721 = load i32, ptr %R7, align 4
  %zext.585 = zext i32 %.5721 to i64
  %shl.309 = shl nuw i64 %zext.585, 32
  %or.282 = or disjoint i64 %shl.309, %zext.584
  %inttoptr_bytes.262 = inttoptr i64 %or.282 to ptr addrspace(1)
  %.5722 = load float, ptr addrspace(1) %inttoptr_bytes.262, align 4
  store float %.5722, ptr %R10, align 4
  %.5726 = load i32, ptr %R8, align 4
  %zext.586 = zext i32 %.5726 to i64
  %.5727 = load i32, ptr %R9, align 4
  %zext.587 = zext i32 %.5727 to i64
  %shl.310 = shl nuw i64 %zext.587, 32
  %or.283 = or disjoint i64 %shl.310, %zext.586
  %ptr_plus_imm.189 = add i64 %or.283, 4
  %inttoptr_bytes.263 = inttoptr i64 %ptr_plus_imm.189 to ptr addrspace(1)
  %.5728 = load float, ptr addrspace(1) %inttoptr_bytes.263, align 4
  store float %.5728, ptr %R25, align 4
  %.5732 = load i32, ptr %R4, align 4
  %zext.588 = zext i32 %.5732 to i64
  %.5733 = load i32, ptr %R5, align 4
  %zext.589 = zext i32 %.5733 to i64
  %shl.311 = shl nuw i64 %zext.589, 32
  %or.284 = or disjoint i64 %shl.311, %zext.588
  %ptr_plus_imm.190 = add i64 %or.284, 4
  %inttoptr_bytes.264 = inttoptr i64 %ptr_plus_imm.190 to ptr addrspace(1)
  %.5734 = load float, ptr addrspace(1) %inttoptr_bytes.264, align 4
  store float %.5734, ptr %R12, align 4
  %.5738 = load i32, ptr %R6, align 4
  %zext.590 = zext i32 %.5738 to i64
  %.5739 = load i32, ptr %R7, align 4
  %zext.591 = zext i32 %.5739 to i64
  %shl.312 = shl nuw i64 %zext.591, 32
  %or.285 = or disjoint i64 %shl.312, %zext.590
  %ptr_plus_imm.191 = add i64 %or.285, 4
  %inttoptr_bytes.265 = inttoptr i64 %ptr_plus_imm.191 to ptr addrspace(1)
  %.5740 = load float, ptr addrspace(1) %inttoptr_bytes.265, align 4
  store float %.5740, ptr %R24, align 4
  %.5744 = load i32, ptr %R8, align 4
  %zext.592 = zext i32 %.5744 to i64
  %.5745 = load i32, ptr %R9, align 4
  %zext.593 = zext i32 %.5745 to i64
  %shl.313 = shl nuw i64 %zext.593, 32
  %or.286 = or disjoint i64 %shl.313, %zext.592
  %ptr_plus_imm.192 = add i64 %or.286, 8
  %inttoptr_bytes.266 = inttoptr i64 %ptr_plus_imm.192 to ptr addrspace(1)
  %.5746 = load float, ptr addrspace(1) %inttoptr_bytes.266, align 4
  store float %.5746, ptr %R35, align 4
  %.5750 = load i32, ptr %R4, align 4
  %zext.594 = zext i32 %.5750 to i64
  %.5751 = load i32, ptr %R5, align 4
  %zext.595 = zext i32 %.5751 to i64
  %shl.314 = shl nuw i64 %zext.595, 32
  %or.287 = or disjoint i64 %shl.314, %zext.594
  %ptr_plus_imm.193 = add i64 %or.287, 8
  %inttoptr_bytes.267 = inttoptr i64 %ptr_plus_imm.193 to ptr addrspace(1)
  %.5752 = load float, ptr addrspace(1) %inttoptr_bytes.267, align 4
  store float %.5752, ptr %R34, align 4
  %.5756 = load i32, ptr %R6, align 4
  %zext.596 = zext i32 %.5756 to i64
  %.5757 = load i32, ptr %R7, align 4
  %zext.597 = zext i32 %.5757 to i64
  %shl.315 = shl nuw i64 %zext.597, 32
  %or.288 = or disjoint i64 %shl.315, %zext.596
  %ptr_plus_imm.194 = add i64 %or.288, 8
  %inttoptr_bytes.268 = inttoptr i64 %ptr_plus_imm.194 to ptr addrspace(1)
  %.5758 = load float, ptr addrspace(1) %inttoptr_bytes.268, align 4
  store float %.5758, ptr %R36, align 4
  %.5762 = load i32, ptr %R8, align 4
  %zext.598 = zext i32 %.5762 to i64
  %.5763 = load i32, ptr %R9, align 4
  %zext.599 = zext i32 %.5763 to i64
  %shl.316 = shl nuw i64 %zext.599, 32
  %or.289 = or disjoint i64 %shl.316, %zext.598
  %ptr_plus_imm.195 = add i64 %or.289, 12
  %inttoptr_bytes.269 = inttoptr i64 %ptr_plus_imm.195 to ptr addrspace(1)
  %.5764 = load float, ptr addrspace(1) %inttoptr_bytes.269, align 4
  store float %.5764, ptr %R37, align 4
  %.5768 = load i32, ptr %R4, align 4
  %zext.600 = zext i32 %.5768 to i64
  %.5769 = load i32, ptr %R5, align 4
  %zext.601 = zext i32 %.5769 to i64
  %shl.317 = shl nuw i64 %zext.601, 32
  %or.290 = or disjoint i64 %shl.317, %zext.600
  %ptr_plus_imm.196 = add i64 %or.290, 12
  %inttoptr_bytes.270 = inttoptr i64 %ptr_plus_imm.196 to ptr addrspace(1)
  %.5770 = load float, ptr addrspace(1) %inttoptr_bytes.270, align 4
  store float %.5770, ptr %R38, align 4
  %.5774 = load i32, ptr %R6, align 4
  %zext.602 = zext i32 %.5774 to i64
  %.5775 = load i32, ptr %R7, align 4
  %zext.603 = zext i32 %.5775 to i64
  %shl.318 = shl nuw i64 %zext.603, 32
  %or.291 = or disjoint i64 %shl.318, %zext.602
  %ptr_plus_imm.197 = add i64 %or.291, 12
  %inttoptr_bytes.271 = inttoptr i64 %ptr_plus_imm.197 to ptr addrspace(1)
  %.5776 = load float, ptr addrspace(1) %inttoptr_bytes.271, align 4
  store float %.5776, ptr %R39, align 4
  %.5780 = load i32, ptr %R22, align 4
  %.5781 = add i32 %.5780, -4
  store i32 %.5781, ptr %R22, align 4
  %.5785 = load i32, ptr %R23, align 4
  %.5786 = add i32 %.5785, 4
  store i32 %.5786, ptr %R23, align 4
  %cmp.48.not = icmp eq i32 %.5781, 0
  %.5797 = load float, ptr %R11, align 4
  %.5798 = load float, ptr %R13, align 4
  %.5799 = load float, ptr %R44, align 4
  %fmul.239 = fmul float %.5797, %.5798
  %fadd.220 = fadd float %fmul.239, %.5799
  store float %fadd.220, ptr %R11, align 4
  %.5804 = load float, ptr %R10, align 4
  %.5805 = load float, ptr %R56, align 4
  %fmul.240 = fmul float %.5798, %.5804
  %fadd.221 = fadd float %fmul.240, %.5805
  store float %fadd.221, ptr %R10, align 4
  %.5809 = load float, ptr %R12, align 4
  %.5810 = load float, ptr %R25, align 4
  %.5811 = load float, ptr %R11, align 4
  %fmul.241 = fmul float %.5809, %.5810
  %fadd.222 = fadd float %fmul.241, %.5811
  store float %fadd.222, ptr %R11, align 4
  %.5816 = load float, ptr %R24, align 4
  %.5817 = load float, ptr %R10, align 4
  %fmul.242 = fmul float %.5810, %.5816
  %fadd.223 = fadd float %fmul.242, %.5817
  store float %fadd.223, ptr %R10, align 4
  %.5821 = load float, ptr %R34, align 4
  %.5822 = load float, ptr %R35, align 4
  %.5823 = load float, ptr %R11, align 4
  %fmul.243 = fmul float %.5821, %.5822
  %fadd.224 = fadd float %fmul.243, %.5823
  store float %fadd.224, ptr %R11, align 4
  %.5828 = load float, ptr %R36, align 4
  %.5829 = load float, ptr %R10, align 4
  %fmul.244 = fmul float %.5822, %.5828
  %fadd.225 = fadd float %fmul.244, %.5829
  store float %fadd.225, ptr %R10, align 4
  %.5833 = load float, ptr %R38, align 4
  %.5834 = load float, ptr %R37, align 4
  %.5835 = load float, ptr %R11, align 4
  %fmul.245 = fmul float %.5833, %.5834
  %fadd.226 = fadd float %fmul.245, %.5835
  store float %fadd.226, ptr %R44, align 4
  %.5840 = load float, ptr %R39, align 4
  %.5841 = load float, ptr %R10, align 4
  %fmul.246 = fmul float %.5834, %.5840
  %fadd.227 = fadd float %fmul.246, %.5841
  store float %fadd.227, ptr %R56, align 4
  br i1 %cmp.48.not, label %.L_x_27.loopexit, label %.L_x_28

.L_x_27.loopexit:                                 ; preds = %.L_x_28
  br label %.L_x_27

.L_x_27:                                          ; preds = %.L_x_27.loopexit, %.L_x_31, %.L_x_25_split_0x2910
  %.5849 = load i32, ptr %R48, align 4
  %cmp.49.not = icmp eq i32 %.5849, 0
  br i1 %cmp.49.not, label %.L_x_26, label %.L_x_27_split_0x3660

.L_x_27_split_0x3660:                             ; preds = %.L_x_27
  %.5861 = load i32, ptr %R23, align 4
  %.5862 = add i32 %imad_mul.1, %.5861
  store i32 %.5862, ptr %R5, align 4
  store i32 4, ptr %R9, align 4
  %shl.319 = shl i32 %imad_mul.5, 2
  %add.18 = add i32 %shl.319, %.5862
  store i32 %add.18, ptr %R8, align 4
  %imad_mul.86 = mul i32 %imad_mul.5, 3
  %imad_add.86 = add i32 %imad_mul.86, %.5862
  store i32 %imad_add.86, ptr %R6, align 4
  %.5876 = load i32, ptr %R23, align 4
  %.5877 = load i32, ptr %R9, align 4
  %imad_ext1.71 = zext i32 %.5876 to i64
  %imad_ext2.71 = zext i32 %.5877 to i64
  %imad_mul.87 = mul nuw i64 %imad_ext1.71, %imad_ext2.71
  %.5878 = ptrtoint ptr %Arg_1 to i64
  %imad_add.87 = add i64 %imad_mul.87, %.5878
  %.5880 = lshr i64 %imad_add.87, 32
  %trunc32.162 = trunc nuw i64 %.5880 to i32
  %trunc32.163 = trunc i64 %imad_add.87 to i32
  store i32 %trunc32.163, ptr %R4, align 4
  store i32 %trunc32.162, ptr %R5, align 4
  %.5884 = load i32, ptr %R6, align 4
  %.5885 = load i32, ptr %R9, align 4
  %imad_ext1.72 = zext i32 %.5884 to i64
  %imad_ext2.72 = zext i32 %.5885 to i64
  %imad_mul.88 = mul nuw i64 %imad_ext1.72, %imad_ext2.72
  %.5886 = ptrtoint ptr %Arg_2 to i64
  %imad_add.88 = add i64 %imad_mul.88, %.5886
  %.5888 = lshr i64 %imad_add.88, 32
  %trunc32.164 = trunc nuw i64 %.5888 to i32
  %trunc32.165 = trunc i64 %imad_add.88 to i32
  store i32 %trunc32.165, ptr %R6, align 4
  store i32 %trunc32.164, ptr %R7, align 4
  %.5892 = load i32, ptr %R8, align 4
  %.5893 = load i32, ptr %R9, align 4
  %imad_ext1.73 = zext i32 %.5892 to i64
  %imad_ext2.73 = zext i32 %.5893 to i64
  %imad_mul.89 = mul nuw i64 %imad_ext1.73, %imad_ext2.73
  %.5894 = ptrtoint ptr %Arg_2 to i64
  %imad_add.89 = add i64 %imad_mul.89, %.5894
  %.5896 = lshr i64 %imad_add.89, 32
  %trunc32.166 = trunc nuw i64 %.5896 to i32
  %trunc32.167 = trunc i64 %imad_add.89 to i32
  store i32 %trunc32.167, ptr %R8, align 4
  store i32 %trunc32.166, ptr %R9, align 4
  %.5900 = load i32, ptr %R4, align 4
  %zext.604 = zext i32 %.5900 to i64
  %.5901 = load i32, ptr %R5, align 4
  %zext.605 = zext i32 %.5901 to i64
  %shl.320 = shl nuw i64 %zext.605, 32
  %or.292 = or disjoint i64 %shl.320, %zext.604
  %inttoptr_bytes.272 = inttoptr i64 %or.292 to ptr addrspace(1)
  %.5902 = load float, ptr addrspace(1) %inttoptr_bytes.272, align 4
  store float %.5902, ptr %R13, align 4
  %.5906 = load i32, ptr %R6, align 4
  %zext.606 = zext i32 %.5906 to i64
  %.5907 = load i32, ptr %R7, align 4
  %zext.607 = zext i32 %.5907 to i64
  %shl.321 = shl nuw i64 %zext.607, 32
  %or.293 = or disjoint i64 %shl.321, %zext.606
  %inttoptr_bytes.273 = inttoptr i64 %or.293 to ptr addrspace(1)
  %.5908 = load float, ptr addrspace(1) %inttoptr_bytes.273, align 4
  store float %.5908, ptr %R11, align 4
  %.5912 = load i32, ptr %R8, align 4
  %zext.608 = zext i32 %.5912 to i64
  %.5913 = load i32, ptr %R9, align 4
  %zext.609 = zext i32 %.5913 to i64
  %shl.322 = shl nuw i64 %zext.609, 32
  %or.294 = or disjoint i64 %shl.322, %zext.608
  %inttoptr_bytes.274 = inttoptr i64 %or.294 to ptr addrspace(1)
  %.5914 = load float, ptr addrspace(1) %inttoptr_bytes.274, align 4
  store float %.5914, ptr %R10, align 4
  %.5918 = load i32, ptr %R48, align 4
  %cmp.50.not = icmp eq i32 %.5918, 1
  %.5925 = load float, ptr %R11, align 4
  %.5926 = load float, ptr %R13, align 4
  %.5927 = load float, ptr %R44, align 4
  %fmul.247 = fmul float %.5925, %.5926
  %fadd.228 = fadd float %fmul.247, %.5927
  store float %fadd.228, ptr %R44, align 4
  %.5932 = load float, ptr %R10, align 4
  %.5933 = load float, ptr %R56, align 4
  %fmul.248 = fmul float %.5926, %.5932
  %fadd.229 = fadd float %fmul.248, %.5933
  store float %fadd.229, ptr %R56, align 4
  br i1 %cmp.50.not, label %.L_x_26, label %.L_x_27_split_0x3740

.L_x_27_split_0x3740:                             ; preds = %.L_x_27_split_0x3660
  %.5941 = load i32, ptr %R48, align 4
  %cmp.51.not = icmp eq i32 %.5941, 2
  %.5948 = load i32, ptr %R6, align 4
  %zext.610 = zext i32 %.5948 to i64
  %.5949 = load i32, ptr %R7, align 4
  %zext.611 = zext i32 %.5949 to i64
  %shl.323 = shl nuw i64 %zext.611, 32
  %or.295 = or disjoint i64 %shl.323, %zext.610
  %ptr_plus_imm.198 = add i64 %or.295, 4
  %inttoptr_bytes.275 = inttoptr i64 %ptr_plus_imm.198 to ptr addrspace(1)
  %.5950 = load float, ptr addrspace(1) %inttoptr_bytes.275, align 4
  store float %.5950, ptr %R11, align 4
  %.5954 = load i32, ptr %R4, align 4
  %zext.612 = zext i32 %.5954 to i64
  %.5955 = load i32, ptr %R5, align 4
  %zext.613 = zext i32 %.5955 to i64
  %shl.324 = shl nuw i64 %zext.613, 32
  %or.296 = or disjoint i64 %shl.324, %zext.612
  %ptr_plus_imm.199 = add i64 %or.296, 4
  %inttoptr_bytes.276 = inttoptr i64 %ptr_plus_imm.199 to ptr addrspace(1)
  %.5956 = load float, ptr addrspace(1) %inttoptr_bytes.276, align 4
  store float %.5956, ptr %R13, align 4
  %.5960 = load i32, ptr %R8, align 4
  %zext.614 = zext i32 %.5960 to i64
  %.5961 = load i32, ptr %R9, align 4
  %zext.615 = zext i32 %.5961 to i64
  %shl.325 = shl nuw i64 %zext.615, 32
  %or.297 = or disjoint i64 %shl.325, %zext.614
  %ptr_plus_imm.200 = add i64 %or.297, 4
  %inttoptr_bytes.277 = inttoptr i64 %ptr_plus_imm.200 to ptr addrspace(1)
  %.5962 = load float, ptr addrspace(1) %inttoptr_bytes.277, align 4
  store float %.5962, ptr %R10, align 4
  br i1 %cmp.51.not, label %.L_x_27_split_0x37b0, label %.L_x_27_split_0x3740_conditionalExpr_0x3780

.L_x_27_split_0x3740_conditionalExpr_0x3780:      ; preds = %.L_x_27_split_0x3740
  %.5970 = load i32, ptr %R6, align 4
  %zext.616 = zext i32 %.5970 to i64
  %.5971 = load i32, ptr %R7, align 4
  %zext.617 = zext i32 %.5971 to i64
  %shl.326 = shl nuw i64 %zext.617, 32
  %or.298 = or disjoint i64 %shl.326, %zext.616
  %ptr_plus_imm.201 = add i64 %or.298, 8
  %inttoptr_bytes.278 = inttoptr i64 %ptr_plus_imm.201 to ptr addrspace(1)
  %.5972 = load float, ptr addrspace(1) %inttoptr_bytes.278, align 4
  store float %.5972, ptr %R23, align 4
  %.5982 = load i32, ptr %R4, align 4
  %zext.618 = zext i32 %.5982 to i64
  %.5983 = load i32, ptr %R5, align 4
  %zext.619 = zext i32 %.5983 to i64
  %shl.327 = shl nuw i64 %zext.619, 32
  %or.299 = or disjoint i64 %shl.327, %zext.618
  %ptr_plus_imm.202 = add i64 %or.299, 8
  %inttoptr_bytes.279 = inttoptr i64 %ptr_plus_imm.202 to ptr addrspace(1)
  %.5984 = load float, ptr addrspace(1) %inttoptr_bytes.279, align 4
  store float %.5984, ptr %R25, align 4
  %.5994 = load i32, ptr %R8, align 4
  %zext.620 = zext i32 %.5994 to i64
  %.5995 = load i32, ptr %R9, align 4
  %zext.621 = zext i32 %.5995 to i64
  %shl.328 = shl nuw i64 %zext.621, 32
  %or.300 = or disjoint i64 %shl.328, %zext.620
  %ptr_plus_imm.203 = add i64 %or.300, 8
  %inttoptr_bytes.280 = inttoptr i64 %ptr_plus_imm.203 to ptr addrspace(1)
  %.5996 = load float, ptr addrspace(1) %inttoptr_bytes.280, align 4
  store float %.5996, ptr %R12, align 4
  br label %.L_x_27_split_0x37b0

.L_x_27_split_0x37b0:                             ; preds = %.L_x_27_split_0x3740, %.L_x_27_split_0x3740_conditionalExpr_0x3780
  %.6002 = load float, ptr %R11, align 4
  %.6003 = load float, ptr %R13, align 4
  %.6004 = load float, ptr %R44, align 4
  %fmul.249 = fmul float %.6002, %.6003
  %fadd.230 = fadd float %fmul.249, %.6004
  store float %fadd.230, ptr %R44, align 4
  %.6009 = load float, ptr %R10, align 4
  %.6010 = load float, ptr %R56, align 4
  %fmul.250 = fmul float %.6003, %.6009
  %fadd.231 = fadd float %fmul.250, %.6010
  store float %fadd.231, ptr %R56, align 4
  br i1 %cmp.51.not, label %.L_x_26, label %.L_x_27_split_0x37b0_conditionalExpr_0x37d0

.L_x_27_split_0x37b0_conditionalExpr_0x37d0:      ; preds = %.L_x_27_split_0x37b0
  %.6018 = load float, ptr %R23, align 4
  %.6019 = load float, ptr %R25, align 4
  %.6020 = load float, ptr %R44, align 4
  %fmul.251 = fmul float %.6018, %.6019
  %fadd.232 = fadd float %fmul.251, %.6020
  store float %fadd.232, ptr %R44, align 4
  %.6031 = load float, ptr %R12, align 4
  %.6032 = load float, ptr %R56, align 4
  %fmul.252 = fmul float %.6019, %.6031
  %fadd.233 = fadd float %fmul.252, %.6032
  store float %fadd.233, ptr %R56, align 4
  br label %.L_x_26

.L_x_26:                                          ; preds = %.L_x_27_split_0x37b0, %.L_x_27_split_0x37b0_conditionalExpr_0x37d0, %.L_x_27_split_0x3660, %.L_x_27, %.L_x_25
  %inttoptr_bytes.281 = inttoptr i64 %imad_add.2 to ptr addrspace(1)
  %.6040 = load float, ptr addrspace(1) %inttoptr_bytes.281, align 4
  store float %.6040, ptr %R5, align 4
  store float 0x41CDDDCC40000000, ptr %R4, align 4
  store float 0x41D0DF0000000000, ptr %R7, align 4
  %.6053 = load float, ptr %R44, align 4
  %fadd.234 = fadd float %.6040, %.6053
  store float %fadd.234, ptr %R5, align 4
  %fmul.253 = fmul float %fadd.234, 0xC1CDDDCC40000000
  %fadd.235 = fadd float %fmul.253, 5.000000e-01
  store float %fadd.235, ptr %R4, align 4
  %.6064 = load float, ptr %R7, align 4
  %fmul.254 = fmul float %fadd.235, %.6064
  %fadd.236 = fadd float %fmul.254, 0x4168000020000000
  store float %fadd.236, ptr %R4, align 4
  %fadd.237 = fadd float %fadd.236, 0xC168000FE0000000
  store float %fadd.237, ptr %R6, align 4
  %.6073.cast = bitcast float %fadd.236 to i32
  %shl.331 = shl i32 %.6073.cast, 23
  store i32 %shl.331, ptr %R4, align 4
  %.6076 = load float, ptr %R5, align 4
  %fmul.255 = fmul float %.6076, 0xBFF7154760000000
  %fadd.238 = fsub float %fmul.255, %fadd.237
  %fmul.256 = fmul float %.6076, 0xBE54AE0C00000000
  %fadd.239 = fadd float %fmul.256, %fadd.238
  store float %fadd.239, ptr %R6, align 4
  %llvm_exp2_f32_result.3 = tail call float @llvm.exp2.f32(float %fadd.239)
  store float %llvm_exp2_f32_result.3, ptr %R5, align 4
  %.6093 = load float, ptr %R4, align 4
  %fmul.257 = fmul float %.6093, %llvm_exp2_f32_result.3
  %fadd.240 = fadd float %fmul.257, 1.000000e+00
  store float %fadd.240, ptr %R24, align 4
  %.6098.cast = bitcast float %fadd.240 to i32
  %.6099 = add i32 %.6098.cast, 25165824
  %.6105 = and i32 %.6099, 2139095040
  store i32 %.6105, ptr %R4, align 4
  %cmp.52 = icmp samesign ugt i32 %.6105, 33554431
  br i1 %cmp.52, label %.L_x_33, label %.L_x_26_split_0x3910_CALL_0x3930

.L_x_26_split_0x3910_CALL_0x3930:                 ; preds = %.L_x_26
  store i32 14640, ptr %R10, align 4
  %.6124 = load i32, ptr %R24, align 4
  %shl.333 = shl i32 %.6124, 1
  store i32 %shl.333, ptr %R11, align 4
  %31 = lshr i32 %shl.333, 24
  store i32 %31, ptr %R25, align 4
  %cmp.53 = icmp ugt i32 %shl.333, 16777215
  br i1 %cmp.53, label %.L_x_49...3, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3": ; preds = %.L_x_26_split_0x3910_CALL_0x3930
  %.6145 = load i32, ptr %R24, align 4
  %shl.336 = shl i32 %.6145, 1
  store i32 %shl.336, ptr %R11, align 4
  %cmp.54.not = icmp eq i32 %shl.336, 0
  br i1 %cmp.54.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3"
  %.6159 = load float, ptr %R24, align 4
  %fmul.258 = fmul float %.6159, 0x43F0000000000000
  %fadd.241 = fadd float %fmul.258, 0.000000e+00
  store float %fadd.241, ptr %R12, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3"
  %.6165 = load float, ptr %R24, align 4
  %fmul.259 = fmul float %.6165, 0x43F0000000000000
  %fadd.242 = fadd float %fmul.259, 0.000000e+00
  store float %fadd.242, ptr %R12, align 4
  br i1 %cmp.54.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
  %.6175 = load float, ptr %R24, align 4
  %.6176 = fdiv float 1.000000e+00, %.6175
  store float %.6176, ptr %R11, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
  %.6182 = load float, ptr %R24, align 4
  %.6183 = fdiv float 1.000000e+00, %.6182
  store float %.6183, ptr %R11, align 4
  br i1 %cmp.54.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
  %.6193 = load float, ptr %R12, align 4
  %.6194 = fdiv float 1.000000e+00, %.6193
  store float %.6194, ptr %R13, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
  %.6200 = load float, ptr %R12, align 4
  %.6201 = fdiv float 1.000000e+00, %.6200
  store float %.6201, ptr %R13, align 4
  br i1 %cmp.54.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
  %.6211 = load float, ptr %R12, align 4
  %.6212 = load float, ptr %R13, align 4
  %fmul.260 = fmul float %.6211, %.6212
  %fadd.243 = fadd float %fmul.260, -1.000000e+00
  store float %fadd.243, ptr %R22, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
  %.6218 = load float, ptr %R12, align 4
  %.6219 = load float, ptr %R13, align 4
  %fmul.261 = fmul float %.6218, %.6219
  %fadd.244 = fadd float %fmul.261, -1.000000e+00
  store float %fadd.244, ptr %R22, align 4
  br i1 %cmp.54.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
  %.6229 = load float, ptr %R22, align 4
  %.6234 = tail call i1 @llvm.is.fpclass.f32(float %.6229, i32 144)
  %32 = fsub float 0.000000e+00, %.6229
  %33 = tail call i1 @llvm.is.fpclass.f32(float %32, i32 144)
  %34 = select i1 %.6234, i1 true, i1 %33
  %.6245 = select i1 %34, float 0.000000e+00, float %32
  store float %.6245, ptr %R22, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
  %.6251 = load float, ptr %R22, align 4
  %.6256 = tail call i1 @llvm.is.fpclass.f32(float %.6251, i32 144)
  %35 = fsub float 0.000000e+00, %.6251
  %36 = tail call i1 @llvm.is.fpclass.f32(float %35, i32 144)
  %37 = select i1 %.6256, i1 true, i1 %36
  %.6267 = select i1 %37, float 0.000000e+00, float %35
  store float %.6267, ptr %R22, align 4
  br i1 %cmp.54.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
  %.6277 = load float, ptr %R13, align 4
  %.6278 = load float, ptr %R22, align 4
  %fmul.262 = fmul float %.6277, %.6278
  %fadd.247 = fadd float %fmul.262, %.6277
  store float %fadd.247, ptr %R22, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
  %.6285 = load float, ptr %R13, align 4
  %.6286 = load float, ptr %R22, align 4
  %fmul.263 = fmul float %.6285, %.6286
  %fadd.248 = fadd float %fmul.263, %.6285
  store float %fadd.248, ptr %R22, align 4
  br i1 %cmp.54.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
  %.6297 = load float, ptr %R22, align 4
  %fmul.264 = fmul float %.6297, 0x43F0000000000000
  %fadd.249 = fadd float %fmul.264, 0.000000e+00
  store float %fadd.249, ptr %R11, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
  %.6303 = load float, ptr %R22, align 4
  %fmul.265 = fmul float %.6303, 0x43F0000000000000
  %fadd.250 = fadd float %fmul.265, 0.000000e+00
  store float %fadd.250, ptr %R11, align 4
  br label %.L_x_48...3

.L_x_49...3:                                      ; preds = %.L_x_26_split_0x3910_CALL_0x3930
  %.6311 = load i32, ptr %R25, align 4
  %.6312 = add i32 %.6311, -253
  store i32 %.6312, ptr %R34, align 4
  %cmp.55 = icmp sgt i32 %.6312, 1
  br i1 %cmp.55, label %.L_x_51...3, label %.L_x_49_split_0x4a30...3

.L_x_49_split_0x4a30...3:                         ; preds = %.L_x_49...3
  %.6327 = load i32, ptr %R24, align 4
  %.6329 = and i32 %.6327, 8388607
  store i32 %.6329, ptr %R11, align 4
  store i32 3, ptr %R23, align 4
  %.6336 = or disjoint i32 %.6329, 1065353216
  store i32 %.6336, ptr %R11, align 4
  %.6342 = load i32, ptr %R34, align 4
  %zext.638 = zext nneg i32 %.6342 to i64
  %shl.338 = shl i64 3, %zext.638
  %trunc32.172 = trunc i64 %shl.338 to i32
  store i32 %trunc32.172, ptr %R23, align 4
  %sint_to_f32.5 = uitofp nneg i32 %.6336 to float
  %.6346 = fdiv float 1.000000e+00, %sint_to_f32.5
  %.6347 = fptosi float %.6346 to i32
  store i32 %.6347, ptr %R12, align 4
  %.6350 = load float, ptr %R11, align 4
  %.6351.cast = bitcast i32 %.6347 to float
  %fmul.266 = fmul float %.6350, %.6351.cast
  %fadd.251 = fadd float %fmul.266, -1.000000e+00
  %.6360 = tail call i1 @llvm.is.fpclass.f32(float %fadd.251, i32 144)
  %38 = fsub float 0.000000e+00, %fadd.251
  %39 = tail call i1 @llvm.is.fpclass.f32(float %38, i32 144)
  %40 = select i1 %.6360, i1 true, i1 %39
  %.6371 = select i1 %40, float 0.000000e+00, float %38
  store float %.6371, ptr %R13, align 4
  %.6375 = load float, ptr %R12, align 4
  %fmul.267 = fmul float %.6375, %.6371
  %fadd.253 = fadd float %fmul.267, %.6375
  store float %fadd.253, ptr %R22, align 4
  %fmul.268 = fmul float %.6375, %.6371
  %fadd.254 = fadd float %fmul.268, %.6375
  store float %fadd.254, ptr %R13, align 4
  %.6387.cast = bitcast float %fadd.253 to i32
  %.6389 = and i32 %.6387.cast, 8388607
  store i32 %.6389, ptr %R12, align 4
  %.6392 = load float, ptr %R22, align 4
  %.6398 = tail call i1 @llvm.is.fpclass.f32(float %.6392, i32 144)
  %.6399 = select i1 %.6398, float 0.000000e+00, float %.6392
  %.6403 = tail call i1 @llvm.is.fpclass.f32(float %fadd.254, i32 144)
  %.6404 = select i1 %.6403, float 0.000000e+00, float %fadd.254
  %fcmp_ordered.2 = fcmp une float %.6399, %.6404
  %.6410 = load i32, ptr %R12, align 4
  %.6412 = or i32 %.6410, 8388608
  store i32 %.6412, ptr %R12, align 4
  %sel.4.neg = zext i1 %fcmp_ordered.2 to i32
  %sel.4 = sext i1 %fcmp_ordered.2 to i32
  store i32 %sel.4, ptr %R13, align 4
  %.6420 = load i32, ptr %R23, align 4
  %.6423 = and i32 %.6420, %.6412
  store i32 %.6423, ptr %R23, align 4
  store i32 %sel.4.neg, ptr %R13, align 4
  %.6435 = load i32, ptr %R34, align 4
  %zext.639 = zext i32 %.6423 to i64
  %zext.641 = zext nneg i32 %.6435 to i64
  %shl.339 = shl nuw i64 %zext.639, 32
  %lshr.15 = lshr i64 %shl.339, %zext.641
  %lshr.16 = lshr i64 %lshr.15, 32
  %trunc32.173 = trunc nuw i64 %lshr.16 to i32
  store i32 %trunc32.173, ptr %R23, align 4
  %.6451 = and i32 %trunc32.173, 1
  %.6468 = load i32, ptr %R24, align 4
  %.6470 = and i32 %.6468, 8388607
  %.6472.not = icmp eq i32 %.6470, 0
  %.6481 = sub nsw i32 0, %.6451
  store i32 %.6481, ptr %R11, align 4
  %cmp.56.not = icmp eq i32 %.6451, 0
  %.6493 = load i32, ptr %R25, align 4
  %.6494 = add i32 %.6493, -252
  store i32 %.6494, ptr %R11, align 4
  %.6500 = load i32, ptr %R12, align 4
  %zext.642 = zext i32 %.6500 to i64
  %zext.644 = zext nneg i32 %.6494 to i64
  %shl.340 = shl nuw i64 %zext.642, 32
  %lshr.17 = lshr i64 %shl.340, %zext.644
  %lshr.18 = lshr i64 %lshr.17, 32
  %trunc32.174 = trunc nuw i64 %lshr.18 to i32
  store i32 %trunc32.174, ptr %R11, align 4
  br i1 %cmp.56.not, label %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3, label %.L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0

.L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0:  ; preds = %.L_x_49_split_0x4a30...3
  %.6508 = load i32, ptr %R11, align 4
  %.6509 = add i32 %.6508, 1
  store i32 %.6509, ptr %R11, align 4
  br label %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3

.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3:  ; preds = %.L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0, %.L_x_49_split_0x4a30...3
  %.6515 = load i32, ptr %R11, align 4
  %.6516 = add i32 %.6515, 1
  store i32 %.6516, ptr %R11, align 4
  br i1 %.6472.not, label %.L_x_49_split_0x4be0...3_conditionalExpr_0x4be0, label %.L_x_49_split_0x4be0_conditionalExpr_0x4be0...3

.L_x_49_split_0x4be0...3_conditionalExpr_0x4be0:  ; preds = %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3
  %.6527 = load i32, ptr %R11, align 4
  %shl.342 = shl i32 %.6527, 1
  store i32 %shl.342, ptr %R11, align 4
  br label %.L_x_49_split_0x4be0_conditionalExpr_0x4be0...3

.L_x_49_split_0x4be0_conditionalExpr_0x4be0...3:  ; preds = %.L_x_49_split_0x4be0...3_conditionalExpr_0x4be0, %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3
  %.6533 = load i32, ptr %R11, align 4
  %shl.344 = shl i32 %.6533, 1
  store i32 %shl.344, ptr %R11, align 4
  %.6539 = load i32, ptr %R24, align 4
  %.654221 = and i32 %.6539, -2147483648
  %.6543 = or i32 %shl.344, %.654221
  store i32 %.6543, ptr %R11, align 4
  br label %.L_x_48...3

.L_x_51...3:                                      ; preds = %.L_x_49...3
  %.6548 = load float, ptr %R24, align 4
  %.6549 = fdiv float 1.000000e+00, %.6548
  store float %.6549, ptr %R11, align 4
  br label %.L_x_48...3

.L_x_48...3:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3", %.L_x_49_split_0x4be0_conditionalExpr_0x4be0...3, %.L_x_51...3
  %.6556 = load float, ptr %R11, align 4
  store float %.6556, ptr %R22, align 4
  store i32 0, ptr %R11, align 4
  br label %.L_x_32

.L_x_33:                                          ; preds = %.L_x_26
  %.6569 = load float, ptr %R24, align 4
  %.6570 = fdiv float 1.000000e+00, %.6569
  store float %.6570, ptr %R22, align 4
  %fmul.269 = fmul float %.6569, %.6570
  %fadd.255 = fadd float %fmul.269, -1.000000e+00
  store float %fadd.255, ptr %R4, align 4
  %.6584 = tail call i1 @llvm.is.fpclass.f32(float %fadd.255, i32 144)
  %41 = fsub float 0.000000e+00, %fadd.255
  %42 = tail call i1 @llvm.is.fpclass.f32(float %41, i32 144)
  %43 = select i1 %.6584, i1 true, i1 %42
  %.6595 = select i1 %43, float 0.000000e+00, float %41
  store float %.6595, ptr %R5, align 4
  %.6599 = load float, ptr %R22, align 4
  %fmul.270 = fmul float %.6599, %.6595
  %fadd.257 = fadd float %fmul.270, %.6599
  store float %fadd.257, ptr %R22, align 4
  br label %.L_x_32

.L_x_32:                                          ; preds = %.L_x_48...3, %.L_x_33
  %inttoptr_bytes.282 = inttoptr i64 %imad_add.7 to ptr addrspace(1)
  %.6610 = load float, ptr addrspace(1) %inttoptr_bytes.282, align 4
  store float %.6610, ptr %R5, align 4
  store float 0x41CDDDCC40000000, ptr %R4, align 4
  store float 0x41D0DF0000000000, ptr %R7, align 4
  %.6621 = load float, ptr %R56, align 4
  %fadd.258 = fadd float %.6610, %.6621
  store float %fadd.258, ptr %R5, align 4
  %fmul.271 = fmul float %fadd.258, 0xC1CDDDCC40000000
  %fadd.259 = fadd float %fmul.271, 5.000000e-01
  store float %fadd.259, ptr %R4, align 4
  %.6632 = load float, ptr %R7, align 4
  %fmul.272 = fmul float %fadd.259, %.6632
  %fadd.260 = fadd float %fmul.272, 0x4168000020000000
  store float %fadd.260, ptr %R4, align 4
  %fadd.261 = fadd float %fadd.260, 0xC168000FE0000000
  store float %fadd.261, ptr %R6, align 4
  %.6641.cast = bitcast float %fadd.260 to i32
  %shl.347 = shl i32 %.6641.cast, 23
  store i32 %shl.347, ptr %R23, align 4
  %.6644 = load float, ptr %R5, align 4
  %fmul.273 = fmul float %.6644, 0xBFF7154760000000
  %fadd.262 = fsub float %fmul.273, %fadd.261
  %fmul.274 = fmul float %.6644, 0xBE54AE0C00000000
  %fadd.263 = fadd float %fmul.274, %fadd.262
  %llvm_exp2_f32_result.4 = tail call float @llvm.exp2.f32(float %fadd.263)
  store float %llvm_exp2_f32_result.4, ptr %R6, align 4
  %.6661 = load float, ptr %R23, align 4
  %fmul.275 = fmul float %.6661, %llvm_exp2_f32_result.4
  %fadd.264 = fadd float %fmul.275, 1.000000e+00
  store float %fadd.264, ptr %R23, align 4
  br i1 %cmp.36, label %.L_x_35, label %.L_x_32_split_0x3a60

.L_x_32_split_0x3a60:                             ; preds = %.L_x_32
  %.6670 = load i32, ptr %R18, align 4
  %cmp.57 = icmp slt i32 %.6670, 3
  store i32 0, ptr %R34, align 4
  br i1 %cmp.57, label %.L_x_36, label %.L_x_32_split_0x3a90

.L_x_32_split_0x3a90:                             ; preds = %.L_x_32_split_0x3a60
  %.6683 = load i32, ptr %R20, align 4
  %cmp.58 = icmp sgt i32 %.6683, 0
  store i32 0, ptr %R34, align 4
  store i32 %.6683, ptr %R35, align 4
  br i1 %cmp.58, label %.L_x_32_split_0x3ad0, label %.L_x_37.preheader

.L_x_32_split_0x3ad0:                             ; preds = %.L_x_32_split_0x3a90
  %.6699 = load i32, ptr %R35, align 4
  %cmp.59 = icmp slt i32 %.6699, 13
  br i1 %cmp.59, label %.L_x_38, label %.L_x_32_split_0x3b00

.L_x_32_split_0x3b00:                             ; preds = %.L_x_32_split_0x3ad0
  br label %.L_x_39

.L_x_39:                                          ; preds = %.L_x_39, %.L_x_32_split_0x3b00
  store i32 4, ptr %R41, align 4
  %.6721 = load i32, ptr %R34, align 4
  %.6722 = add i32 %imad_add.6, %.6721
  store i32 %.6722, ptr %R10, align 4
  %imad_ext1.74 = zext i32 %.6721 to i64
  %imad_mul.90 = shl nuw nsw i64 %imad_ext1.74, 2
  %.6728 = ptrtoint ptr %Arg_1 to i64
  %imad_add.90 = add i64 %imad_mul.90, %.6728
  %.6730 = lshr i64 %imad_add.90, 32
  %trunc32.178 = trunc nuw i64 %.6730 to i32
  %trunc32.179 = trunc i64 %imad_add.90 to i32
  store i32 %trunc32.179, ptr %R12, align 4
  store i32 %trunc32.178, ptr %R13, align 4
  %.6734 = load i32, ptr %R10, align 4
  %.6735 = load i32, ptr %R41, align 4
  %imad_ext1.75 = zext i32 %.6734 to i64
  %imad_ext2.75 = zext i32 %.6735 to i64
  %imad_mul.91 = mul nuw i64 %imad_ext1.75, %imad_ext2.75
  %.6736 = ptrtoint ptr %Arg_2 to i64
  %imad_add.91 = add i64 %imad_mul.91, %.6736
  %.6738 = lshr i64 %imad_add.91, 32
  %trunc32.180 = trunc nuw i64 %.6738 to i32
  %trunc32.181 = trunc i64 %imad_add.91 to i32
  store i32 %trunc32.181, ptr %R10, align 4
  store i32 %trunc32.180, ptr %R11, align 4
  %.6742 = load i32, ptr %R34, align 4
  %.6743 = add i32 %.6742, 4
  store i32 %.6743, ptr %R4, align 4
  %.6747 = load i32, ptr %R12, align 4
  %zext.656 = zext i32 %.6747 to i64
  %.6748 = load i32, ptr %R13, align 4
  %zext.657 = zext i32 %.6748 to i64
  %shl.348 = shl nuw i64 %zext.657, 32
  %or.313 = or disjoint i64 %shl.348, %zext.656
  %inttoptr_bytes.283 = inttoptr i64 %or.313 to ptr addrspace(1)
  %.6749 = load float, ptr addrspace(1) %inttoptr_bytes.283, align 4
  store float %.6749, ptr %R25, align 4
  %.6754 = load i32, ptr %R4, align 4
  %.6755 = add i32 %imad_add.6, %.6754
  store i32 %.6755, ptr %R6, align 4
  %.6759 = load i32, ptr %R10, align 4
  %zext.658 = zext i32 %.6759 to i64
  %.6760 = load i32, ptr %R11, align 4
  %zext.659 = zext i32 %.6760 to i64
  %shl.349 = shl nuw i64 %zext.659, 32
  %or.314 = or disjoint i64 %shl.349, %zext.658
  %inttoptr_bytes.284 = inttoptr i64 %or.314 to ptr addrspace(1)
  %.6761 = load float, ptr addrspace(1) %inttoptr_bytes.284, align 4
  store float %.6761, ptr %R36, align 4
  %.6765 = load i32, ptr %R12, align 4
  %zext.660 = zext i32 %.6765 to i64
  %.6766 = load i32, ptr %R13, align 4
  %zext.661 = zext i32 %.6766 to i64
  %shl.350 = shl nuw i64 %zext.661, 32
  %or.315 = or disjoint i64 %shl.350, %zext.660
  %ptr_plus_imm.204 = add i64 %or.315, 4
  %inttoptr_bytes.285 = inttoptr i64 %ptr_plus_imm.204 to ptr addrspace(1)
  %.6767 = load float, ptr addrspace(1) %inttoptr_bytes.285, align 4
  store float %.6767, ptr %R37, align 4
  %.6771 = load i32, ptr %R4, align 4
  %.6772 = load i32, ptr %R41, align 4
  %imad_ext1.76 = zext i32 %.6771 to i64
  %imad_ext2.76 = zext i32 %.6772 to i64
  %imad_mul.92 = mul nuw i64 %imad_ext1.76, %imad_ext2.76
  %.6773 = ptrtoint ptr %Arg_1 to i64
  %imad_add.92 = add i64 %imad_mul.92, %.6773
  %.6775 = lshr i64 %imad_add.92, 32
  %trunc32.182 = trunc nuw i64 %.6775 to i32
  %trunc32.183 = trunc i64 %imad_add.92 to i32
  store i32 %trunc32.183, ptr %R4, align 4
  store i32 %trunc32.182, ptr %R5, align 4
  %.6779 = load i32, ptr %R10, align 4
  %zext.662 = zext i32 %.6779 to i64
  %.6780 = load i32, ptr %R11, align 4
  %zext.663 = zext i32 %.6780 to i64
  %shl.351 = shl nuw i64 %zext.663, 32
  %or.316 = or disjoint i64 %shl.351, %zext.662
  %ptr_plus_imm.205 = add i64 %or.316, 4
  %inttoptr_bytes.286 = inttoptr i64 %ptr_plus_imm.205 to ptr addrspace(1)
  %.6781 = load float, ptr addrspace(1) %inttoptr_bytes.286, align 4
  store float %.6781, ptr %R24, align 4
  %.6785 = load i32, ptr %R12, align 4
  %zext.664 = zext i32 %.6785 to i64
  %.6786 = load i32, ptr %R13, align 4
  %zext.665 = zext i32 %.6786 to i64
  %shl.352 = shl nuw i64 %zext.665, 32
  %or.317 = or disjoint i64 %shl.352, %zext.664
  %ptr_plus_imm.206 = add i64 %or.317, 8
  %inttoptr_bytes.287 = inttoptr i64 %ptr_plus_imm.206 to ptr addrspace(1)
  %.6787 = load float, ptr addrspace(1) %inttoptr_bytes.287, align 4
  store float %.6787, ptr %R39, align 4
  %.6791 = load i32, ptr %R6, align 4
  %.6792 = load i32, ptr %R41, align 4
  %imad_ext1.77 = zext i32 %.6791 to i64
  %imad_ext2.77 = zext i32 %.6792 to i64
  %imad_mul.93 = mul nuw i64 %imad_ext1.77, %imad_ext2.77
  %.6793 = ptrtoint ptr %Arg_2 to i64
  %imad_add.93 = add i64 %imad_mul.93, %.6793
  %.6795 = lshr i64 %imad_add.93, 32
  %trunc32.184 = trunc nuw i64 %.6795 to i32
  %trunc32.185 = trunc i64 %imad_add.93 to i32
  store i32 %trunc32.185, ptr %R6, align 4
  store i32 %trunc32.184, ptr %R7, align 4
  %.6799 = load i32, ptr %R10, align 4
  %zext.666 = zext i32 %.6799 to i64
  %.6800 = load i32, ptr %R11, align 4
  %zext.667 = zext i32 %.6800 to i64
  %shl.353 = shl nuw i64 %zext.667, 32
  %or.318 = or disjoint i64 %shl.353, %zext.666
  %ptr_plus_imm.207 = add i64 %or.318, 8
  %inttoptr_bytes.288 = inttoptr i64 %ptr_plus_imm.207 to ptr addrspace(1)
  %.6801 = load float, ptr addrspace(1) %inttoptr_bytes.288, align 4
  store float %.6801, ptr %R38, align 4
  %.6805 = load i32, ptr %R12, align 4
  %zext.668 = zext i32 %.6805 to i64
  %.6806 = load i32, ptr %R13, align 4
  %zext.669 = zext i32 %.6806 to i64
  %shl.354 = shl nuw i64 %zext.669, 32
  %or.319 = or disjoint i64 %shl.354, %zext.668
  %ptr_plus_imm.208 = add i64 %or.319, 12
  %inttoptr_bytes.289 = inttoptr i64 %ptr_plus_imm.208 to ptr addrspace(1)
  %.6807 = load float, ptr addrspace(1) %inttoptr_bytes.289, align 4
  store float %.6807, ptr %R43, align 4
  %.6811 = load i32, ptr %R34, align 4
  %.6812 = add i32 %.6811, 8
  store i32 %.6812, ptr %R8, align 4
  %.6816 = load i32, ptr %R10, align 4
  %zext.670 = zext i32 %.6816 to i64
  %.6817 = load i32, ptr %R11, align 4
  %zext.671 = zext i32 %.6817 to i64
  %shl.355 = shl nuw i64 %zext.671, 32
  %or.320 = or disjoint i64 %shl.355, %zext.670
  %ptr_plus_imm.209 = add i64 %or.320, 12
  %inttoptr_bytes.290 = inttoptr i64 %ptr_plus_imm.209 to ptr addrspace(1)
  %.6818 = load float, ptr addrspace(1) %inttoptr_bytes.290, align 4
  store float %.6818, ptr %R46, align 4
  %.6822 = load i32, ptr %R4, align 4
  %zext.672 = zext i32 %.6822 to i64
  %.6823 = load i32, ptr %R5, align 4
  %zext.673 = zext i32 %.6823 to i64
  %shl.356 = shl nuw i64 %zext.673, 32
  %or.321 = or disjoint i64 %shl.356, %zext.672
  %inttoptr_bytes.291 = inttoptr i64 %or.321 to ptr addrspace(1)
  %.6824 = load float, ptr addrspace(1) %inttoptr_bytes.291, align 4
  store float %.6824, ptr %R51, align 4
  %.6829 = load i32, ptr %R8, align 4
  %.6830 = add i32 %imad_add.6, %.6829
  store i32 %.6830, ptr %R50, align 4
  %.6834 = load i32, ptr %R6, align 4
  %zext.674 = zext i32 %.6834 to i64
  %.6835 = load i32, ptr %R7, align 4
  %zext.675 = zext i32 %.6835 to i64
  %shl.357 = shl nuw i64 %zext.675, 32
  %or.322 = or disjoint i64 %shl.357, %zext.674
  %inttoptr_bytes.292 = inttoptr i64 %or.322 to ptr addrspace(1)
  %.6836 = load float, ptr addrspace(1) %inttoptr_bytes.292, align 4
  store float %.6836, ptr %R44, align 4
  %.6840 = load i32, ptr %R4, align 4
  %zext.676 = zext i32 %.6840 to i64
  %.6841 = load i32, ptr %R5, align 4
  %zext.677 = zext i32 %.6841 to i64
  %shl.358 = shl nuw i64 %zext.677, 32
  %or.323 = or disjoint i64 %shl.358, %zext.676
  %ptr_plus_imm.210 = add i64 %or.323, 4
  %inttoptr_bytes.293 = inttoptr i64 %ptr_plus_imm.210 to ptr addrspace(1)
  %.6842 = load float, ptr addrspace(1) %inttoptr_bytes.293, align 4
  store float %.6842, ptr %R47, align 4
  %.6846 = load i32, ptr %R8, align 4
  %.6847 = load i32, ptr %R41, align 4
  %imad_ext1.78 = zext i32 %.6846 to i64
  %imad_ext2.78 = zext i32 %.6847 to i64
  %imad_mul.94 = mul nuw i64 %imad_ext1.78, %imad_ext2.78
  %.6848 = ptrtoint ptr %Arg_1 to i64
  %imad_add.94 = add i64 %imad_mul.94, %.6848
  %.6850 = lshr i64 %imad_add.94, 32
  %trunc32.186 = trunc nuw i64 %.6850 to i32
  %trunc32.187 = trunc i64 %imad_add.94 to i32
  store i32 %trunc32.187, ptr %R8, align 4
  store i32 %trunc32.186, ptr %R9, align 4
  %.6854 = load i32, ptr %R6, align 4
  %zext.678 = zext i32 %.6854 to i64
  %.6855 = load i32, ptr %R7, align 4
  %zext.679 = zext i32 %.6855 to i64
  %shl.359 = shl nuw i64 %zext.679, 32
  %or.324 = or disjoint i64 %shl.359, %zext.678
  %ptr_plus_imm.211 = add i64 %or.324, 4
  %inttoptr_bytes.294 = inttoptr i64 %ptr_plus_imm.211 to ptr addrspace(1)
  %.6856 = load float, ptr addrspace(1) %inttoptr_bytes.294, align 4
  store float %.6856, ptr %R42, align 4
  %.6860 = load i32, ptr %R4, align 4
  %zext.680 = zext i32 %.6860 to i64
  %.6861 = load i32, ptr %R5, align 4
  %zext.681 = zext i32 %.6861 to i64
  %shl.360 = shl nuw i64 %zext.681, 32
  %or.325 = or disjoint i64 %shl.360, %zext.680
  %ptr_plus_imm.212 = add i64 %or.325, 8
  %inttoptr_bytes.295 = inttoptr i64 %ptr_plus_imm.212 to ptr addrspace(1)
  %.6862 = load float, ptr addrspace(1) %inttoptr_bytes.295, align 4
  store float %.6862, ptr %R45, align 4
  %.6866 = load i32, ptr %R50, align 4
  %.6867 = load i32, ptr %R41, align 4
  %imad_ext1.79 = zext i32 %.6866 to i64
  %imad_ext2.79 = zext i32 %.6867 to i64
  %imad_mul.95 = mul nuw i64 %imad_ext1.79, %imad_ext2.79
  %.6868 = ptrtoint ptr %Arg_2 to i64
  %imad_add.95 = add i64 %imad_mul.95, %.6868
  %.6870 = lshr i64 %imad_add.95, 32
  %trunc32.188 = trunc nuw i64 %.6870 to i32
  %trunc32.189 = trunc i64 %imad_add.95 to i32
  store i32 %trunc32.189, ptr %R10, align 4
  store i32 %trunc32.188, ptr %R11, align 4
  %.6874 = load i32, ptr %R6, align 4
  %zext.682 = zext i32 %.6874 to i64
  %.6875 = load i32, ptr %R7, align 4
  %zext.683 = zext i32 %.6875 to i64
  %shl.361 = shl nuw i64 %zext.683, 32
  %or.326 = or disjoint i64 %shl.361, %zext.682
  %ptr_plus_imm.213 = add i64 %or.326, 8
  %inttoptr_bytes.296 = inttoptr i64 %ptr_plus_imm.213 to ptr addrspace(1)
  %.6876 = load float, ptr addrspace(1) %inttoptr_bytes.296, align 4
  store float %.6876, ptr %R40, align 4
  %.6880 = load i32, ptr %R4, align 4
  %zext.684 = zext i32 %.6880 to i64
  %.6881 = load i32, ptr %R5, align 4
  %zext.685 = zext i32 %.6881 to i64
  %shl.362 = shl nuw i64 %zext.685, 32
  %or.327 = or disjoint i64 %shl.362, %zext.684
  %ptr_plus_imm.214 = add i64 %or.327, 12
  %inttoptr_bytes.297 = inttoptr i64 %ptr_plus_imm.214 to ptr addrspace(1)
  %.6882 = load float, ptr addrspace(1) %inttoptr_bytes.297, align 4
  store float %.6882, ptr %R53, align 4
  %.6886 = load i32, ptr %R34, align 4
  %.6887 = add i32 %.6886, 12
  store i32 %.6887, ptr %R12, align 4
  %.6891 = load i32, ptr %R6, align 4
  %zext.686 = zext i32 %.6891 to i64
  %.6892 = load i32, ptr %R7, align 4
  %zext.687 = zext i32 %.6892 to i64
  %shl.363 = shl nuw i64 %zext.687, 32
  %or.328 = or disjoint i64 %shl.363, %zext.686
  %ptr_plus_imm.215 = add i64 %or.328, 12
  %inttoptr_bytes.298 = inttoptr i64 %ptr_plus_imm.215 to ptr addrspace(1)
  %.6893 = load float, ptr addrspace(1) %inttoptr_bytes.298, align 4
  store float %.6893, ptr %R54, align 4
  %.6897 = load i32, ptr %R8, align 4
  %zext.688 = zext i32 %.6897 to i64
  %.6898 = load i32, ptr %R9, align 4
  %zext.689 = zext i32 %.6898 to i64
  %shl.364 = shl nuw i64 %zext.689, 32
  %or.329 = or disjoint i64 %shl.364, %zext.688
  %inttoptr_bytes.299 = inttoptr i64 %or.329 to ptr addrspace(1)
  %.6899 = load float, ptr addrspace(1) %inttoptr_bytes.299, align 4
  store float %.6899, ptr %R59, align 4
  %.6904 = load i32, ptr %R12, align 4
  %.6905 = add i32 %imad_add.6, %.6904
  store i32 %.6905, ptr %R58, align 4
  %.6909 = load i32, ptr %R10, align 4
  %zext.690 = zext i32 %.6909 to i64
  %.6910 = load i32, ptr %R11, align 4
  %zext.691 = zext i32 %.6910 to i64
  %shl.365 = shl nuw i64 %zext.691, 32
  %or.330 = or disjoint i64 %shl.365, %zext.690
  %inttoptr_bytes.300 = inttoptr i64 %or.330 to ptr addrspace(1)
  %.6911 = load float, ptr addrspace(1) %inttoptr_bytes.300, align 4
  store float %.6911, ptr %R52, align 4
  %.6915 = load i32, ptr %R8, align 4
  %zext.692 = zext i32 %.6915 to i64
  %.6916 = load i32, ptr %R9, align 4
  %zext.693 = zext i32 %.6916 to i64
  %shl.366 = shl nuw i64 %zext.693, 32
  %or.331 = or disjoint i64 %shl.366, %zext.692
  %ptr_plus_imm.216 = add i64 %or.331, 4
  %inttoptr_bytes.301 = inttoptr i64 %ptr_plus_imm.216 to ptr addrspace(1)
  %.6917 = load float, ptr addrspace(1) %inttoptr_bytes.301, align 4
  store float %.6917, ptr %R57, align 4
  %.6921 = load i32, ptr %R12, align 4
  %.6922 = load i32, ptr %R41, align 4
  %imad_ext1.80 = zext i32 %.6921 to i64
  %imad_ext2.80 = zext i32 %.6922 to i64
  %imad_mul.96 = mul nuw i64 %imad_ext1.80, %imad_ext2.80
  %.6923 = ptrtoint ptr %Arg_1 to i64
  %imad_add.96 = add i64 %imad_mul.96, %.6923
  %.6925 = lshr i64 %imad_add.96, 32
  %trunc32.190 = trunc nuw i64 %.6925 to i32
  %trunc32.191 = trunc i64 %imad_add.96 to i32
  store i32 %trunc32.191, ptr %R12, align 4
  store i32 %trunc32.190, ptr %R13, align 4
  %.6929 = load i32, ptr %R10, align 4
  %zext.694 = zext i32 %.6929 to i64
  %.6930 = load i32, ptr %R11, align 4
  %zext.695 = zext i32 %.6930 to i64
  %shl.367 = shl nuw i64 %zext.695, 32
  %or.332 = or disjoint i64 %shl.367, %zext.694
  %ptr_plus_imm.217 = add i64 %or.332, 4
  %inttoptr_bytes.302 = inttoptr i64 %ptr_plus_imm.217 to ptr addrspace(1)
  %.6931 = load float, ptr addrspace(1) %inttoptr_bytes.302, align 4
  store float %.6931, ptr %R50, align 4
  %.6935 = load i32, ptr %R8, align 4
  %zext.696 = zext i32 %.6935 to i64
  %.6936 = load i32, ptr %R9, align 4
  %zext.697 = zext i32 %.6936 to i64
  %shl.368 = shl nuw i64 %zext.697, 32
  %or.333 = or disjoint i64 %shl.368, %zext.696
  %ptr_plus_imm.218 = add i64 %or.333, 8
  %inttoptr_bytes.303 = inttoptr i64 %ptr_plus_imm.218 to ptr addrspace(1)
  %.6937 = load float, ptr addrspace(1) %inttoptr_bytes.303, align 4
  store float %.6937, ptr %R55, align 4
  %.6941 = load i32, ptr %R58, align 4
  %.6942 = load i32, ptr %R41, align 4
  %imad_ext1.81 = zext i32 %.6941 to i64
  %imad_ext2.81 = zext i32 %.6942 to i64
  %imad_mul.97 = mul nuw i64 %imad_ext1.81, %imad_ext2.81
  %.6943 = ptrtoint ptr %Arg_2 to i64
  %imad_add.97 = add i64 %imad_mul.97, %.6943
  %.6945 = lshr i64 %imad_add.97, 32
  %trunc32.192 = trunc nuw i64 %.6945 to i32
  %trunc32.193 = trunc i64 %imad_add.97 to i32
  store i32 %trunc32.193, ptr %R4, align 4
  store i32 %trunc32.192, ptr %R5, align 4
  %.6949 = load i32, ptr %R8, align 4
  %zext.698 = zext i32 %.6949 to i64
  %.6950 = load i32, ptr %R9, align 4
  %zext.699 = zext i32 %.6950 to i64
  %shl.369 = shl nuw i64 %zext.699, 32
  %or.334 = or disjoint i64 %shl.369, %zext.698
  %ptr_plus_imm.219 = add i64 %or.334, 12
  %inttoptr_bytes.304 = inttoptr i64 %ptr_plus_imm.219 to ptr addrspace(1)
  %.6951 = load float, ptr addrspace(1) %inttoptr_bytes.304, align 4
  store float %.6951, ptr %R61, align 4
  %.6955 = load i32, ptr %R10, align 4
  %zext.700 = zext i32 %.6955 to i64
  %.6956 = load i32, ptr %R11, align 4
  %zext.701 = zext i32 %.6956 to i64
  %shl.370 = shl nuw i64 %zext.701, 32
  %or.335 = or disjoint i64 %shl.370, %zext.700
  %ptr_plus_imm.220 = add i64 %or.335, 8
  %inttoptr_bytes.305 = inttoptr i64 %ptr_plus_imm.220 to ptr addrspace(1)
  %.6957 = load float, ptr addrspace(1) %inttoptr_bytes.305, align 4
  store float %.6957, ptr %R56, align 4
  %.6961 = load i32, ptr %R10, align 4
  %zext.702 = zext i32 %.6961 to i64
  %.6962 = load i32, ptr %R11, align 4
  %zext.703 = zext i32 %.6962 to i64
  %shl.371 = shl nuw i64 %zext.703, 32
  %or.336 = or disjoint i64 %shl.371, %zext.702
  %ptr_plus_imm.221 = add i64 %or.336, 12
  %inttoptr_bytes.306 = inttoptr i64 %ptr_plus_imm.221 to ptr addrspace(1)
  %.6963 = load float, ptr addrspace(1) %inttoptr_bytes.306, align 4
  store float %.6963, ptr %R58, align 4
  %.6967 = load i32, ptr %R12, align 4
  %zext.704 = zext i32 %.6967 to i64
  %.6968 = load i32, ptr %R13, align 4
  %zext.705 = zext i32 %.6968 to i64
  %shl.372 = shl nuw i64 %zext.705, 32
  %or.337 = or disjoint i64 %shl.372, %zext.704
  %inttoptr_bytes.307 = inttoptr i64 %or.337 to ptr addrspace(1)
  %.6969 = load float, ptr addrspace(1) %inttoptr_bytes.307, align 4
  store float %.6969, ptr %R6, align 4
  %.6973 = load i32, ptr %R12, align 4
  %zext.706 = zext i32 %.6973 to i64
  %.6974 = load i32, ptr %R13, align 4
  %zext.707 = zext i32 %.6974 to i64
  %shl.373 = shl nuw i64 %zext.707, 32
  %or.338 = or disjoint i64 %shl.373, %zext.706
  %ptr_plus_imm.222 = add i64 %or.338, 4
  %inttoptr_bytes.308 = inttoptr i64 %ptr_plus_imm.222 to ptr addrspace(1)
  %.6975 = load float, ptr addrspace(1) %inttoptr_bytes.308, align 4
  store float %.6975, ptr %R41, align 4
  %.6979 = load i32, ptr %R4, align 4
  %zext.708 = zext i32 %.6979 to i64
  %.6980 = load i32, ptr %R5, align 4
  %zext.709 = zext i32 %.6980 to i64
  %shl.374 = shl nuw i64 %zext.709, 32
  %or.339 = or disjoint i64 %shl.374, %zext.708
  %inttoptr_bytes.309 = inttoptr i64 %or.339 to ptr addrspace(1)
  %.6981 = load float, ptr addrspace(1) %inttoptr_bytes.309, align 4
  store float %.6981, ptr %R10, align 4
  %.6985 = load i32, ptr %R12, align 4
  %zext.710 = zext i32 %.6985 to i64
  %.6986 = load i32, ptr %R13, align 4
  %zext.711 = zext i32 %.6986 to i64
  %shl.375 = shl nuw i64 %zext.711, 32
  %or.340 = or disjoint i64 %shl.375, %zext.710
  %ptr_plus_imm.223 = add i64 %or.340, 8
  %inttoptr_bytes.310 = inttoptr i64 %ptr_plus_imm.223 to ptr addrspace(1)
  %.6987 = load float, ptr addrspace(1) %inttoptr_bytes.310, align 4
  store float %.6987, ptr %R7, align 4
  %.6991 = load i32, ptr %R4, align 4
  %zext.712 = zext i32 %.6991 to i64
  %.6992 = load i32, ptr %R5, align 4
  %zext.713 = zext i32 %.6992 to i64
  %shl.376 = shl nuw i64 %zext.713, 32
  %or.341 = or disjoint i64 %shl.376, %zext.712
  %ptr_plus_imm.224 = add i64 %or.341, 4
  %inttoptr_bytes.311 = inttoptr i64 %ptr_plus_imm.224 to ptr addrspace(1)
  %.6993 = load float, ptr addrspace(1) %inttoptr_bytes.311, align 4
  store float %.6993, ptr %R9, align 4
  %.6997 = load i32, ptr %R12, align 4
  %zext.714 = zext i32 %.6997 to i64
  %.6998 = load i32, ptr %R13, align 4
  %zext.715 = zext i32 %.6998 to i64
  %shl.377 = shl nuw i64 %zext.715, 32
  %or.342 = or disjoint i64 %shl.377, %zext.714
  %ptr_plus_imm.225 = add i64 %or.342, 12
  %inttoptr_bytes.312 = inttoptr i64 %ptr_plus_imm.225 to ptr addrspace(1)
  %.6999 = load float, ptr addrspace(1) %inttoptr_bytes.312, align 4
  store float %.6999, ptr %R60, align 4
  %.7003 = load i32, ptr %R4, align 4
  %zext.716 = zext i32 %.7003 to i64
  %.7004 = load i32, ptr %R5, align 4
  %zext.717 = zext i32 %.7004 to i64
  %shl.378 = shl nuw i64 %zext.717, 32
  %or.343 = or disjoint i64 %shl.378, %zext.716
  %ptr_plus_imm.226 = add i64 %or.343, 8
  %inttoptr_bytes.313 = inttoptr i64 %ptr_plus_imm.226 to ptr addrspace(1)
  %.7005 = load float, ptr addrspace(1) %inttoptr_bytes.313, align 4
  store float %.7005, ptr %R8, align 4
  %.7009 = load i32, ptr %R4, align 4
  %zext.718 = zext i32 %.7009 to i64
  %.7010 = load i32, ptr %R5, align 4
  %zext.719 = zext i32 %.7010 to i64
  %shl.379 = shl nuw i64 %zext.719, 32
  %or.344 = or disjoint i64 %shl.379, %zext.718
  %ptr_plus_imm.227 = add i64 %or.344, 12
  %inttoptr_bytes.314 = inttoptr i64 %ptr_plus_imm.227 to ptr addrspace(1)
  %.7011 = load float, ptr addrspace(1) %inttoptr_bytes.314, align 4
  store float %.7011, ptr %R11, align 4
  %.7015 = load i32, ptr %R35, align 4
  %.7016 = add i32 %.7015, -16
  store i32 %.7016, ptr %R35, align 4
  %cmp.60 = icmp sgt i32 %.7016, 12
  %.7027 = load i32, ptr %R34, align 4
  %.7028 = add i32 %.7027, 16
  store i32 %.7028, ptr %R34, align 4
  %.7032 = load float, ptr %R25, align 4
  %.7033 = load float, ptr %R22, align 4
  %fmul.276 = fmul float %.7032, %.7033
  store float %fmul.276, ptr %R25, align 4
  %.7038 = load float, ptr %R36, align 4
  %.7039 = load float, ptr %R21, align 4
  %fmul.277 = fmul float %fmul.276, %.7038
  %fadd.265 = fadd float %fmul.277, %.7039
  store float %fadd.265, ptr %R25, align 4
  %.7043 = load float, ptr %R37, align 4
  %.7044 = load float, ptr %R22, align 4
  %fmul.278 = fmul float %.7043, %.7044
  store float %fmul.278, ptr %R37, align 4
  %.7049 = load float, ptr %R24, align 4
  %fmul.279 = fmul float %fmul.278, %.7049
  %fadd.266 = fadd float %fmul.279, %fadd.265
  store float %fadd.266, ptr %R25, align 4
  %.7054 = load float, ptr %R39, align 4
  %.7055 = load float, ptr %R22, align 4
  %fmul.280 = fmul float %.7054, %.7055
  store float %fmul.280, ptr %R39, align 4
  %.7060 = load float, ptr %R38, align 4
  %fmul.281 = fmul float %fmul.280, %.7060
  %fadd.267 = fadd float %fmul.281, %fadd.266
  store float %fadd.267, ptr %R25, align 4
  %.7065 = load float, ptr %R43, align 4
  %.7066 = load float, ptr %R22, align 4
  %fmul.282 = fmul float %.7065, %.7066
  store float %fmul.282, ptr %R43, align 4
  %.7071 = load float, ptr %R46, align 4
  %fmul.283 = fmul float %fmul.282, %.7071
  %fadd.268 = fadd float %fmul.283, %fadd.267
  store float %fadd.268, ptr %R25, align 4
  %.7076 = load float, ptr %R51, align 4
  %.7077 = load float, ptr %R22, align 4
  %fmul.284 = fmul float %.7076, %.7077
  store float %fmul.284, ptr %R51, align 4
  %.7082 = load float, ptr %R44, align 4
  %fmul.285 = fmul float %fmul.284, %.7082
  %fadd.269 = fadd float %fmul.285, %fadd.268
  store float %fadd.269, ptr %R25, align 4
  %.7087 = load float, ptr %R47, align 4
  %.7088 = load float, ptr %R22, align 4
  %fmul.286 = fmul float %.7087, %.7088
  store float %fmul.286, ptr %R47, align 4
  %.7093 = load float, ptr %R42, align 4
  %fmul.287 = fmul float %fmul.286, %.7093
  %fadd.270 = fadd float %fmul.287, %fadd.269
  store float %fadd.270, ptr %R25, align 4
  %.7098 = load float, ptr %R45, align 4
  %.7099 = load float, ptr %R22, align 4
  %fmul.288 = fmul float %.7098, %.7099
  store float %fmul.288, ptr %R45, align 4
  %.7104 = load float, ptr %R40, align 4
  %fmul.289 = fmul float %fmul.288, %.7104
  %fadd.271 = fadd float %fmul.289, %fadd.270
  store float %fadd.271, ptr %R25, align 4
  %.7109 = load float, ptr %R53, align 4
  %.7110 = load float, ptr %R22, align 4
  %fmul.290 = fmul float %.7109, %.7110
  store float %fmul.290, ptr %R53, align 4
  %.7115 = load float, ptr %R54, align 4
  %fmul.291 = fmul float %fmul.290, %.7115
  %fadd.272 = fadd float %fmul.291, %fadd.271
  store float %fadd.272, ptr %R25, align 4
  %.7120 = load float, ptr %R59, align 4
  %.7121 = load float, ptr %R22, align 4
  %fmul.292 = fmul float %.7120, %.7121
  store float %fmul.292, ptr %R59, align 4
  %.7126 = load float, ptr %R52, align 4
  %fmul.293 = fmul float %fmul.292, %.7126
  %fadd.273 = fadd float %fmul.293, %fadd.272
  store float %fadd.273, ptr %R25, align 4
  %.7131 = load float, ptr %R57, align 4
  %.7132 = load float, ptr %R22, align 4
  %fmul.294 = fmul float %.7131, %.7132
  store float %fmul.294, ptr %R57, align 4
  %.7137 = load float, ptr %R50, align 4
  %fmul.295 = fmul float %fmul.294, %.7137
  %fadd.274 = fadd float %fmul.295, %fadd.273
  store float %fadd.274, ptr %R25, align 4
  %.7142 = load float, ptr %R55, align 4
  %.7143 = load float, ptr %R22, align 4
  %fmul.296 = fmul float %.7142, %.7143
  store float %fmul.296, ptr %R55, align 4
  %.7147 = load float, ptr %R61, align 4
  %fmul.297 = fmul float %.7147, %.7143
  store float %fmul.297, ptr %R61, align 4
  %.7153 = load float, ptr %R56, align 4
  %.7154 = load float, ptr %R25, align 4
  %fmul.298 = fmul float %fmul.296, %.7153
  %fadd.275 = fadd float %fmul.298, %.7154
  store float %fadd.275, ptr %R25, align 4
  %.7159 = load float, ptr %R58, align 4
  %fmul.299 = fmul float %fmul.297, %.7159
  %fadd.276 = fadd float %fmul.299, %fadd.275
  store float %fadd.276, ptr %R25, align 4
  %.7164 = load float, ptr %R6, align 4
  %.7165 = load float, ptr %R22, align 4
  %fmul.300 = fmul float %.7164, %.7165
  store float %fmul.300, ptr %R6, align 4
  %.7169 = load float, ptr %R41, align 4
  %fmul.301 = fmul float %.7169, %.7165
  store float %fmul.301, ptr %R41, align 4
  %.7175 = load float, ptr %R10, align 4
  %.7176 = load float, ptr %R25, align 4
  %fmul.302 = fmul float %fmul.300, %.7175
  %fadd.277 = fadd float %fmul.302, %.7176
  store float %fadd.277, ptr %R6, align 4
  %.7180 = load float, ptr %R7, align 4
  %.7181 = load float, ptr %R22, align 4
  %fmul.303 = fmul float %.7180, %.7181
  store float %fmul.303, ptr %R7, align 4
  %.7185 = load float, ptr %R41, align 4
  %.7186 = load float, ptr %R9, align 4
  %.7187 = load float, ptr %R6, align 4
  %fmul.304 = fmul float %.7185, %.7186
  %fadd.278 = fadd float %fmul.304, %.7187
  store float %fadd.278, ptr %R9, align 4
  %.7191 = load float, ptr %R60, align 4
  %.7192 = load float, ptr %R22, align 4
  %fmul.305 = fmul float %.7191, %.7192
  store float %fmul.305, ptr %R60, align 4
  %.7196 = load float, ptr %R7, align 4
  %.7197 = load float, ptr %R8, align 4
  %.7198 = load float, ptr %R9, align 4
  %fmul.306 = fmul float %.7196, %.7197
  %fadd.279 = fadd float %fmul.306, %.7198
  store float %fadd.279, ptr %R8, align 4
  %.7202 = load float, ptr %R60, align 4
  %.7203 = load float, ptr %R11, align 4
  %fmul.307 = fmul float %.7202, %.7203
  %fadd.280 = fadd float %fmul.307, %fadd.279
  store float %fadd.280, ptr %R21, align 4
  br i1 %cmp.60, label %.L_x_39, label %.L_x_38.loopexit

.L_x_38.loopexit:                                 ; preds = %.L_x_39
  br label %.L_x_38

.L_x_38:                                          ; preds = %.L_x_38.loopexit, %.L_x_32_split_0x3ad0
  %.7212 = load i32, ptr %R35, align 4
  %cmp.61 = icmp slt i32 %.7212, 5
  br i1 %cmp.61, label %.L_x_40, label %.L_x_38_split_0x4070

.L_x_38_split_0x4070:                             ; preds = %.L_x_38
  store i32 4, ptr %R11, align 4
  %.7226 = load i32, ptr %R34, align 4
  %.7227 = add i32 %imad_add.6, %.7226
  store i32 %.7227, ptr %R6, align 4
  %imad_ext1.82 = zext i32 %.7226 to i64
  %imad_mul.98 = shl nuw nsw i64 %imad_ext1.82, 2
  %.7233 = ptrtoint ptr %Arg_1 to i64
  %imad_add.98 = add i64 %imad_mul.98, %.7233
  %.7235 = lshr i64 %imad_add.98, 32
  %trunc32.194 = trunc nuw i64 %.7235 to i32
  %trunc32.195 = trunc i64 %imad_add.98 to i32
  store i32 %trunc32.195, ptr %R8, align 4
  store i32 %trunc32.194, ptr %R9, align 4
  %.7239 = load i32, ptr %R6, align 4
  %.7240 = load i32, ptr %R11, align 4
  %imad_ext1.83 = zext i32 %.7239 to i64
  %imad_ext2.83 = zext i32 %.7240 to i64
  %imad_mul.99 = mul nuw i64 %imad_ext1.83, %imad_ext2.83
  %.7241 = ptrtoint ptr %Arg_2 to i64
  %imad_add.99 = add i64 %imad_mul.99, %.7241
  %.7243 = lshr i64 %imad_add.99, 32
  %trunc32.196 = trunc nuw i64 %.7243 to i32
  %trunc32.197 = trunc i64 %imad_add.99 to i32
  store i32 %trunc32.197, ptr %R6, align 4
  store i32 %trunc32.196, ptr %R7, align 4
  %.7247 = load i32, ptr %R34, align 4
  %.7248 = add i32 %.7247, 4
  store i32 %.7248, ptr %R4, align 4
  %.7252 = load i32, ptr %R8, align 4
  %zext.720 = zext i32 %.7252 to i64
  %.7253 = load i32, ptr %R9, align 4
  %zext.721 = zext i32 %.7253 to i64
  %shl.380 = shl nuw i64 %zext.721, 32
  %or.345 = or disjoint i64 %shl.380, %zext.720
  %inttoptr_bytes.315 = inttoptr i64 %or.345 to ptr addrspace(1)
  %.7254 = load float, ptr addrspace(1) %inttoptr_bytes.315, align 4
  store float %.7254, ptr %R13, align 4
  %.7259 = load i32, ptr %R4, align 4
  %.7260 = add i32 %imad_add.6, %.7259
  store i32 %.7260, ptr %R10, align 4
  %.7264 = load i32, ptr %R6, align 4
  %zext.722 = zext i32 %.7264 to i64
  %.7265 = load i32, ptr %R7, align 4
  %zext.723 = zext i32 %.7265 to i64
  %shl.381 = shl nuw i64 %zext.723, 32
  %or.346 = or disjoint i64 %shl.381, %zext.722
  %inttoptr_bytes.316 = inttoptr i64 %or.346 to ptr addrspace(1)
  %.7266 = load float, ptr addrspace(1) %inttoptr_bytes.316, align 4
  store float %.7266, ptr %R12, align 4
  %.7270 = load i32, ptr %R8, align 4
  %zext.724 = zext i32 %.7270 to i64
  %.7271 = load i32, ptr %R9, align 4
  %zext.725 = zext i32 %.7271 to i64
  %shl.382 = shl nuw i64 %zext.725, 32
  %or.347 = or disjoint i64 %shl.382, %zext.724
  %ptr_plus_imm.228 = add i64 %or.347, 4
  %inttoptr_bytes.317 = inttoptr i64 %ptr_plus_imm.228 to ptr addrspace(1)
  %.7272 = load float, ptr addrspace(1) %inttoptr_bytes.317, align 4
  store float %.7272, ptr %R25, align 4
  %.7276 = load i32, ptr %R4, align 4
  %.7277 = load i32, ptr %R11, align 4
  %imad_ext1.84 = zext i32 %.7276 to i64
  %imad_ext2.84 = zext i32 %.7277 to i64
  %imad_mul.100 = mul nuw i64 %imad_ext1.84, %imad_ext2.84
  %.7278 = ptrtoint ptr %Arg_1 to i64
  %imad_add.100 = add i64 %imad_mul.100, %.7278
  %.7280 = lshr i64 %imad_add.100, 32
  %trunc32.198 = trunc nuw i64 %.7280 to i32
  %trunc32.199 = trunc i64 %imad_add.100 to i32
  store i32 %trunc32.199, ptr %R4, align 4
  store i32 %trunc32.198, ptr %R5, align 4
  %.7284 = load i32, ptr %R6, align 4
  %zext.726 = zext i32 %.7284 to i64
  %.7285 = load i32, ptr %R7, align 4
  %zext.727 = zext i32 %.7285 to i64
  %shl.383 = shl nuw i64 %zext.727, 32
  %or.348 = or disjoint i64 %shl.383, %zext.726
  %ptr_plus_imm.229 = add i64 %or.348, 4
  %inttoptr_bytes.318 = inttoptr i64 %ptr_plus_imm.229 to ptr addrspace(1)
  %.7286 = load float, ptr addrspace(1) %inttoptr_bytes.318, align 4
  store float %.7286, ptr %R24, align 4
  %.7290 = load i32, ptr %R8, align 4
  %zext.728 = zext i32 %.7290 to i64
  %.7291 = load i32, ptr %R9, align 4
  %zext.729 = zext i32 %.7291 to i64
  %shl.384 = shl nuw i64 %zext.729, 32
  %or.349 = or disjoint i64 %shl.384, %zext.728
  %ptr_plus_imm.230 = add i64 %or.349, 8
  %inttoptr_bytes.319 = inttoptr i64 %ptr_plus_imm.230 to ptr addrspace(1)
  %.7292 = load float, ptr addrspace(1) %inttoptr_bytes.319, align 4
  store float %.7292, ptr %R37, align 4
  %.7296 = load i32, ptr %R10, align 4
  %.7297 = load i32, ptr %R11, align 4
  %imad_ext1.85 = zext i32 %.7296 to i64
  %imad_ext2.85 = zext i32 %.7297 to i64
  %imad_mul.101 = mul nuw i64 %imad_ext1.85, %imad_ext2.85
  %.7298 = ptrtoint ptr %Arg_2 to i64
  %imad_add.101 = add i64 %imad_mul.101, %.7298
  %.7300 = lshr i64 %imad_add.101, 32
  %trunc32.200 = trunc nuw i64 %.7300 to i32
  %trunc32.201 = trunc i64 %imad_add.101 to i32
  store i32 %trunc32.201, ptr %R10, align 4
  store i32 %trunc32.200, ptr %R11, align 4
  %.7304 = load i32, ptr %R6, align 4
  %zext.730 = zext i32 %.7304 to i64
  %.7305 = load i32, ptr %R7, align 4
  %zext.731 = zext i32 %.7305 to i64
  %shl.385 = shl nuw i64 %zext.731, 32
  %or.350 = or disjoint i64 %shl.385, %zext.730
  %ptr_plus_imm.231 = add i64 %or.350, 8
  %inttoptr_bytes.320 = inttoptr i64 %ptr_plus_imm.231 to ptr addrspace(1)
  %.7306 = load float, ptr addrspace(1) %inttoptr_bytes.320, align 4
  store float %.7306, ptr %R36, align 4
  %.7310 = load i32, ptr %R8, align 4
  %zext.732 = zext i32 %.7310 to i64
  %.7311 = load i32, ptr %R9, align 4
  %zext.733 = zext i32 %.7311 to i64
  %shl.386 = shl nuw i64 %zext.733, 32
  %or.351 = or disjoint i64 %shl.386, %zext.732
  %ptr_plus_imm.232 = add i64 %or.351, 12
  %inttoptr_bytes.321 = inttoptr i64 %ptr_plus_imm.232 to ptr addrspace(1)
  %.7312 = load float, ptr addrspace(1) %inttoptr_bytes.321, align 4
  store float %.7312, ptr %R39, align 4
  %.7316 = load i32, ptr %R6, align 4
  %zext.734 = zext i32 %.7316 to i64
  %.7317 = load i32, ptr %R7, align 4
  %zext.735 = zext i32 %.7317 to i64
  %shl.387 = shl nuw i64 %zext.735, 32
  %or.352 = or disjoint i64 %shl.387, %zext.734
  %ptr_plus_imm.233 = add i64 %or.352, 12
  %inttoptr_bytes.322 = inttoptr i64 %ptr_plus_imm.233 to ptr addrspace(1)
  %.7318 = load float, ptr addrspace(1) %inttoptr_bytes.322, align 4
  store float %.7318, ptr %R38, align 4
  %.7322 = load i32, ptr %R4, align 4
  %zext.736 = zext i32 %.7322 to i64
  %.7323 = load i32, ptr %R5, align 4
  %zext.737 = zext i32 %.7323 to i64
  %shl.388 = shl nuw i64 %zext.737, 32
  %or.353 = or disjoint i64 %shl.388, %zext.736
  %inttoptr_bytes.323 = inttoptr i64 %or.353 to ptr addrspace(1)
  %.7324 = load float, ptr addrspace(1) %inttoptr_bytes.323, align 4
  store float %.7324, ptr %R41, align 4
  %.7328 = load i32, ptr %R10, align 4
  %zext.738 = zext i32 %.7328 to i64
  %.7329 = load i32, ptr %R11, align 4
  %zext.739 = zext i32 %.7329 to i64
  %shl.389 = shl nuw i64 %zext.739, 32
  %or.354 = or disjoint i64 %shl.389, %zext.738
  %inttoptr_bytes.324 = inttoptr i64 %or.354 to ptr addrspace(1)
  %.7330 = load float, ptr addrspace(1) %inttoptr_bytes.324, align 4
  store float %.7330, ptr %R40, align 4
  %.7334 = load i32, ptr %R4, align 4
  %zext.740 = zext i32 %.7334 to i64
  %.7335 = load i32, ptr %R5, align 4
  %zext.741 = zext i32 %.7335 to i64
  %shl.390 = shl nuw i64 %zext.741, 32
  %or.355 = or disjoint i64 %shl.390, %zext.740
  %ptr_plus_imm.234 = add i64 %or.355, 4
  %inttoptr_bytes.325 = inttoptr i64 %ptr_plus_imm.234 to ptr addrspace(1)
  %.7336 = load float, ptr addrspace(1) %inttoptr_bytes.325, align 4
  store float %.7336, ptr %R43, align 4
  %.7340 = load i32, ptr %R10, align 4
  %zext.742 = zext i32 %.7340 to i64
  %.7341 = load i32, ptr %R11, align 4
  %zext.743 = zext i32 %.7341 to i64
  %shl.391 = shl nuw i64 %zext.743, 32
  %or.356 = or disjoint i64 %shl.391, %zext.742
  %ptr_plus_imm.235 = add i64 %or.356, 4
  %inttoptr_bytes.326 = inttoptr i64 %ptr_plus_imm.235 to ptr addrspace(1)
  %.7342 = load float, ptr addrspace(1) %inttoptr_bytes.326, align 4
  store float %.7342, ptr %R42, align 4
  %.7346 = load i32, ptr %R4, align 4
  %zext.744 = zext i32 %.7346 to i64
  %.7347 = load i32, ptr %R5, align 4
  %zext.745 = zext i32 %.7347 to i64
  %shl.392 = shl nuw i64 %zext.745, 32
  %or.357 = or disjoint i64 %shl.392, %zext.744
  %ptr_plus_imm.236 = add i64 %or.357, 8
  %inttoptr_bytes.327 = inttoptr i64 %ptr_plus_imm.236 to ptr addrspace(1)
  %.7348 = load float, ptr addrspace(1) %inttoptr_bytes.327, align 4
  store float %.7348, ptr %R45, align 4
  %.7352 = load i32, ptr %R4, align 4
  %zext.746 = zext i32 %.7352 to i64
  %.7353 = load i32, ptr %R5, align 4
  %zext.747 = zext i32 %.7353 to i64
  %shl.393 = shl nuw i64 %zext.747, 32
  %or.358 = or disjoint i64 %shl.393, %zext.746
  %ptr_plus_imm.237 = add i64 %or.358, 12
  %inttoptr_bytes.328 = inttoptr i64 %ptr_plus_imm.237 to ptr addrspace(1)
  %.7354 = load float, ptr addrspace(1) %inttoptr_bytes.328, align 4
  store float %.7354, ptr %R47, align 4
  %.7358 = load i32, ptr %R10, align 4
  %zext.748 = zext i32 %.7358 to i64
  %.7359 = load i32, ptr %R11, align 4
  %zext.749 = zext i32 %.7359 to i64
  %shl.394 = shl nuw i64 %zext.749, 32
  %or.359 = or disjoint i64 %shl.394, %zext.748
  %ptr_plus_imm.238 = add i64 %or.359, 8
  %inttoptr_bytes.329 = inttoptr i64 %ptr_plus_imm.238 to ptr addrspace(1)
  %.7360 = load float, ptr addrspace(1) %inttoptr_bytes.329, align 4
  store float %.7360, ptr %R44, align 4
  %.7364 = load i32, ptr %R10, align 4
  %zext.750 = zext i32 %.7364 to i64
  %.7365 = load i32, ptr %R11, align 4
  %zext.751 = zext i32 %.7365 to i64
  %shl.395 = shl nuw i64 %zext.751, 32
  %or.360 = or disjoint i64 %shl.395, %zext.750
  %ptr_plus_imm.239 = add i64 %or.360, 12
  %inttoptr_bytes.330 = inttoptr i64 %ptr_plus_imm.239 to ptr addrspace(1)
  %.7366 = load float, ptr addrspace(1) %inttoptr_bytes.330, align 4
  store float %.7366, ptr %R46, align 4
  %.7374 = load i32, ptr %R35, align 4
  %.7375 = add i32 %.7374, -8
  store i32 %.7375, ptr %R35, align 4
  %.7379 = load i32, ptr %R34, align 4
  %.7380 = add i32 %.7379, 8
  store i32 %.7380, ptr %R34, align 4
  %.7384 = load float, ptr %R13, align 4
  %.7385 = load float, ptr %R22, align 4
  %fmul.308 = fmul float %.7384, %.7385
  store float %fmul.308, ptr %R8, align 4
  %.7390 = load float, ptr %R12, align 4
  %.7391 = load float, ptr %R21, align 4
  %fmul.309 = fmul float %fmul.308, %.7390
  %fadd.281 = fadd float %fmul.309, %.7391
  store float %fadd.281, ptr %R8, align 4
  %.7395 = load float, ptr %R25, align 4
  %.7396 = load float, ptr %R22, align 4
  %fmul.310 = fmul float %.7395, %.7396
  store float %fmul.310, ptr %R25, align 4
  %.7401 = load float, ptr %R24, align 4
  %fmul.311 = fmul float %fmul.310, %.7401
  %fadd.282 = fadd float %fmul.311, %fadd.281
  store float %fadd.282, ptr %R8, align 4
  %.7406 = load float, ptr %R37, align 4
  %.7407 = load float, ptr %R22, align 4
  %fmul.312 = fmul float %.7406, %.7407
  store float %fmul.312, ptr %R37, align 4
  %.7412 = load float, ptr %R36, align 4
  %fmul.313 = fmul float %fmul.312, %.7412
  %fadd.283 = fadd float %fmul.313, %fadd.282
  store float %fadd.283, ptr %R8, align 4
  %.7417 = load float, ptr %R39, align 4
  %.7418 = load float, ptr %R22, align 4
  %fmul.314 = fmul float %.7417, %.7418
  store float %fmul.314, ptr %R39, align 4
  %.7423 = load float, ptr %R38, align 4
  %fmul.315 = fmul float %fmul.314, %.7423
  %fadd.284 = fadd float %fmul.315, %fadd.283
  store float %fadd.284, ptr %R8, align 4
  %.7428 = load float, ptr %R41, align 4
  %.7429 = load float, ptr %R22, align 4
  %fmul.316 = fmul float %.7428, %.7429
  store float %fmul.316, ptr %R41, align 4
  %.7434 = load float, ptr %R40, align 4
  %fmul.317 = fmul float %fmul.316, %.7434
  %fadd.285 = fadd float %fmul.317, %fadd.284
  store float %fadd.285, ptr %R8, align 4
  %.7439 = load float, ptr %R43, align 4
  %.7440 = load float, ptr %R22, align 4
  %fmul.318 = fmul float %.7439, %.7440
  store float %fmul.318, ptr %R43, align 4
  %.7445 = load float, ptr %R42, align 4
  %fmul.319 = fmul float %fmul.318, %.7445
  %fadd.286 = fadd float %fmul.319, %fadd.285
  store float %fadd.286, ptr %R8, align 4
  %.7450 = load float, ptr %R45, align 4
  %.7451 = load float, ptr %R22, align 4
  %fmul.320 = fmul float %.7450, %.7451
  store float %fmul.320, ptr %R45, align 4
  %.7455 = load float, ptr %R47, align 4
  %fmul.321 = fmul float %.7455, %.7451
  store float %fmul.321, ptr %R47, align 4
  %.7461 = load float, ptr %R44, align 4
  %.7462 = load float, ptr %R8, align 4
  %fmul.322 = fmul float %fmul.320, %.7461
  %fadd.287 = fadd float %fmul.322, %.7462
  store float %fadd.287, ptr %R8, align 4
  %.7467 = load float, ptr %R46, align 4
  %fmul.323 = fmul float %fmul.321, %.7467
  %fadd.288 = fadd float %fmul.323, %fadd.287
  store float %fadd.288, ptr %R21, align 4
  br label %.L_x_40

.L_x_40:                                          ; preds = %.L_x_38_split_0x4070, %.L_x_38
  br i1 false, label %.L_x_36, label %.L_x_37.preheader

.L_x_37.preheader:                                ; preds = %.L_x_32_split_0x3a90, %.L_x_40
  br label %.L_x_37

.L_x_37:                                          ; preds = %.L_x_37.preheader, %.L_x_37
  store i32 4, ptr %R7, align 4
  %.7487 = load i32, ptr %R34, align 4
  %.7488 = add i32 %imad_add.6, %.7487
  store i32 %.7488, ptr %R6, align 4
  %imad_ext1.86 = zext i32 %.7487 to i64
  %imad_mul.102 = shl nuw nsw i64 %imad_ext1.86, 2
  %.7494 = ptrtoint ptr %Arg_1 to i64
  %imad_add.102 = add i64 %imad_mul.102, %.7494
  %.7496 = lshr i64 %imad_add.102, 32
  %trunc32.202 = trunc nuw i64 %.7496 to i32
  %trunc32.203 = trunc i64 %imad_add.102 to i32
  store i32 %trunc32.203, ptr %R4, align 4
  store i32 %trunc32.202, ptr %R5, align 4
  %.7500 = load i32, ptr %R6, align 4
  %.7501 = load i32, ptr %R7, align 4
  %imad_ext1.87 = zext i32 %.7500 to i64
  %imad_ext2.87 = zext i32 %.7501 to i64
  %imad_mul.103 = mul nuw i64 %imad_ext1.87, %imad_ext2.87
  %.7502 = ptrtoint ptr %Arg_2 to i64
  %imad_add.103 = add i64 %imad_mul.103, %.7502
  %.7504 = lshr i64 %imad_add.103, 32
  %trunc32.204 = trunc nuw i64 %.7504 to i32
  %trunc32.205 = trunc i64 %imad_add.103 to i32
  store i32 %trunc32.205, ptr %R6, align 4
  store i32 %trunc32.204, ptr %R7, align 4
  %.7508 = load i32, ptr %R4, align 4
  %zext.752 = zext i32 %.7508 to i64
  %.7509 = load i32, ptr %R5, align 4
  %zext.753 = zext i32 %.7509 to i64
  %shl.396 = shl nuw i64 %zext.753, 32
  %or.361 = or disjoint i64 %shl.396, %zext.752
  %inttoptr_bytes.331 = inttoptr i64 %or.361 to ptr addrspace(1)
  %.7510 = load float, ptr addrspace(1) %inttoptr_bytes.331, align 4
  store float %.7510, ptr %R9, align 4
  %.7514 = load i32, ptr %R6, align 4
  %zext.754 = zext i32 %.7514 to i64
  %.7515 = load i32, ptr %R7, align 4
  %zext.755 = zext i32 %.7515 to i64
  %shl.397 = shl nuw i64 %zext.755, 32
  %or.362 = or disjoint i64 %shl.397, %zext.754
  %inttoptr_bytes.332 = inttoptr i64 %or.362 to ptr addrspace(1)
  %.7516 = load float, ptr addrspace(1) %inttoptr_bytes.332, align 4
  store float %.7516, ptr %R10, align 4
  %.7520 = load i32, ptr %R4, align 4
  %zext.756 = zext i32 %.7520 to i64
  %.7521 = load i32, ptr %R5, align 4
  %zext.757 = zext i32 %.7521 to i64
  %shl.398 = shl nuw i64 %zext.757, 32
  %or.363 = or disjoint i64 %shl.398, %zext.756
  %ptr_plus_imm.240 = add i64 %or.363, 4
  %inttoptr_bytes.333 = inttoptr i64 %ptr_plus_imm.240 to ptr addrspace(1)
  %.7522 = load float, ptr addrspace(1) %inttoptr_bytes.333, align 4
  store float %.7522, ptr %R11, align 4
  %.7526 = load i32, ptr %R6, align 4
  %zext.758 = zext i32 %.7526 to i64
  %.7527 = load i32, ptr %R7, align 4
  %zext.759 = zext i32 %.7527 to i64
  %shl.399 = shl nuw i64 %zext.759, 32
  %or.364 = or disjoint i64 %shl.399, %zext.758
  %ptr_plus_imm.241 = add i64 %or.364, 4
  %inttoptr_bytes.334 = inttoptr i64 %ptr_plus_imm.241 to ptr addrspace(1)
  %.7528 = load float, ptr addrspace(1) %inttoptr_bytes.334, align 4
  store float %.7528, ptr %R12, align 4
  %.7532 = load i32, ptr %R4, align 4
  %zext.760 = zext i32 %.7532 to i64
  %.7533 = load i32, ptr %R5, align 4
  %zext.761 = zext i32 %.7533 to i64
  %shl.400 = shl nuw i64 %zext.761, 32
  %or.365 = or disjoint i64 %shl.400, %zext.760
  %ptr_plus_imm.242 = add i64 %or.365, 8
  %inttoptr_bytes.335 = inttoptr i64 %ptr_plus_imm.242 to ptr addrspace(1)
  %.7534 = load float, ptr addrspace(1) %inttoptr_bytes.335, align 4
  store float %.7534, ptr %R13, align 4
  %.7538 = load i32, ptr %R6, align 4
  %zext.762 = zext i32 %.7538 to i64
  %.7539 = load i32, ptr %R7, align 4
  %zext.763 = zext i32 %.7539 to i64
  %shl.401 = shl nuw i64 %zext.763, 32
  %or.366 = or disjoint i64 %shl.401, %zext.762
  %ptr_plus_imm.243 = add i64 %or.366, 8
  %inttoptr_bytes.336 = inttoptr i64 %ptr_plus_imm.243 to ptr addrspace(1)
  %.7540 = load float, ptr addrspace(1) %inttoptr_bytes.336, align 4
  store float %.7540, ptr %R24, align 4
  %.7544 = load i32, ptr %R4, align 4
  %zext.764 = zext i32 %.7544 to i64
  %.7545 = load i32, ptr %R5, align 4
  %zext.765 = zext i32 %.7545 to i64
  %shl.402 = shl nuw i64 %zext.765, 32
  %or.367 = or disjoint i64 %shl.402, %zext.764
  %ptr_plus_imm.244 = add i64 %or.367, 12
  %inttoptr_bytes.337 = inttoptr i64 %ptr_plus_imm.244 to ptr addrspace(1)
  %.7546 = load float, ptr addrspace(1) %inttoptr_bytes.337, align 4
  store float %.7546, ptr %R25, align 4
  %.7550 = load i32, ptr %R6, align 4
  %zext.766 = zext i32 %.7550 to i64
  %.7551 = load i32, ptr %R7, align 4
  %zext.767 = zext i32 %.7551 to i64
  %shl.403 = shl nuw i64 %zext.767, 32
  %or.368 = or disjoint i64 %shl.403, %zext.766
  %ptr_plus_imm.245 = add i64 %or.368, 12
  %inttoptr_bytes.338 = inttoptr i64 %ptr_plus_imm.245 to ptr addrspace(1)
  %.7552 = load float, ptr addrspace(1) %inttoptr_bytes.338, align 4
  store float %.7552, ptr %R36, align 4
  %.7556 = load i32, ptr %R35, align 4
  %.7557 = add i32 %.7556, -4
  store i32 %.7557, ptr %R35, align 4
  %.7561 = load i32, ptr %R34, align 4
  %.7562 = add i32 %.7561, 4
  store i32 %.7562, ptr %R34, align 4
  %cmp.63.not = icmp eq i32 %.7557, 0
  %.7573 = load float, ptr %R9, align 4
  %.7574 = load float, ptr %R22, align 4
  %fmul.324 = fmul float %.7573, %.7574
  store float %fmul.324, ptr %R8, align 4
  %.7579 = load float, ptr %R10, align 4
  %.7580 = load float, ptr %R21, align 4
  %fmul.325 = fmul float %fmul.324, %.7579
  %fadd.289 = fadd float %fmul.325, %.7580
  store float %fadd.289, ptr %R8, align 4
  %.7584 = load float, ptr %R11, align 4
  %.7585 = load float, ptr %R22, align 4
  %fmul.326 = fmul float %.7584, %.7585
  store float %fmul.326, ptr %R11, align 4
  %.7590 = load float, ptr %R12, align 4
  %fmul.327 = fmul float %fmul.326, %.7590
  %fadd.290 = fadd float %fmul.327, %fadd.289
  store float %fadd.290, ptr %R8, align 4
  %.7595 = load float, ptr %R13, align 4
  %.7596 = load float, ptr %R22, align 4
  %fmul.328 = fmul float %.7595, %.7596
  store float %fmul.328, ptr %R13, align 4
  %.7601 = load float, ptr %R24, align 4
  %fmul.329 = fmul float %fmul.328, %.7601
  %fadd.291 = fadd float %fmul.329, %fadd.290
  store float %fadd.291, ptr %R8, align 4
  %.7606 = load float, ptr %R25, align 4
  %.7607 = load float, ptr %R22, align 4
  %fmul.330 = fmul float %.7606, %.7607
  store float %fmul.330, ptr %R25, align 4
  %.7612 = load float, ptr %R36, align 4
  %fmul.331 = fmul float %fmul.330, %.7612
  %fadd.292 = fadd float %fmul.331, %fadd.291
  store float %fadd.292, ptr %R21, align 4
  br i1 %cmp.63.not, label %.L_x_36.loopexit, label %.L_x_37

.L_x_36.loopexit:                                 ; preds = %.L_x_37
  br label %.L_x_36

.L_x_36:                                          ; preds = %.L_x_36.loopexit, %.L_x_40, %.L_x_32_split_0x3a60
  %.7621 = load i32, ptr %R48, align 4
  %cmp.64.not = icmp eq i32 %.7621, 0
  br i1 %cmp.64.not, label %.L_x_35, label %.L_x_36_split_0x44e0

.L_x_36_split_0x44e0:                             ; preds = %.L_x_36
  store i32 4, ptr %R5, align 4
  %.7635 = load i32, ptr %R34, align 4
  %.7636 = add i32 %imad_add.6, %.7635
  store i32 %.7636, ptr %R4, align 4
  %imad_ext1.88 = zext i32 %.7635 to i64
  %imad_mul.104 = shl nuw nsw i64 %imad_ext1.88, 2
  %.7642 = ptrtoint ptr %Arg_1 to i64
  %imad_add.104 = add i64 %imad_mul.104, %.7642
  %.7644 = lshr i64 %imad_add.104, 32
  %trunc32.206 = trunc nuw i64 %.7644 to i32
  %trunc32.207 = trunc i64 %imad_add.104 to i32
  store i32 %trunc32.207, ptr %R34, align 4
  store i32 %trunc32.206, ptr %R35, align 4
  %.7648 = load i32, ptr %R4, align 4
  %.7649 = load i32, ptr %R5, align 4
  %imad_ext1.89 = zext i32 %.7648 to i64
  %imad_ext2.89 = zext i32 %.7649 to i64
  %imad_mul.105 = mul nuw i64 %imad_ext1.89, %imad_ext2.89
  %.7650 = ptrtoint ptr %Arg_2 to i64
  %imad_add.105 = add i64 %imad_mul.105, %.7650
  %.7652 = lshr i64 %imad_add.105, 32
  %trunc32.208 = trunc nuw i64 %.7652 to i32
  %trunc32.209 = trunc i64 %imad_add.105 to i32
  store i32 %trunc32.209, ptr %R4, align 4
  store i32 %trunc32.208, ptr %R5, align 4
  %.7656 = load i32, ptr %R34, align 4
  %zext.768 = zext i32 %.7656 to i64
  %.7657 = load i32, ptr %R35, align 4
  %zext.769 = zext i32 %.7657 to i64
  %shl.404 = shl nuw i64 %zext.769, 32
  %or.369 = or disjoint i64 %shl.404, %zext.768
  %inttoptr_bytes.339 = inttoptr i64 %or.369 to ptr addrspace(1)
  %.7658 = load float, ptr addrspace(1) %inttoptr_bytes.339, align 4
  store float %.7658, ptr %R7, align 4
  %.7662 = load i32, ptr %R4, align 4
  %zext.770 = zext i32 %.7662 to i64
  %.7663 = load i32, ptr %R5, align 4
  %zext.771 = zext i32 %.7663 to i64
  %shl.405 = shl nuw i64 %zext.771, 32
  %or.370 = or disjoint i64 %shl.405, %zext.770
  %inttoptr_bytes.340 = inttoptr i64 %or.370 to ptr addrspace(1)
  %.7664 = load float, ptr addrspace(1) %inttoptr_bytes.340, align 4
  store float %.7664, ptr %R8, align 4
  %.7668 = load i32, ptr %R48, align 4
  %cmp.65.not = icmp eq i32 %.7668, 1
  %.7675 = load float, ptr %R7, align 4
  %.7676 = load float, ptr %R22, align 4
  %fmul.332 = fmul float %.7675, %.7676
  store float %fmul.332, ptr %R6, align 4
  %.7681 = load float, ptr %R8, align 4
  %.7682 = load float, ptr %R21, align 4
  %fmul.333 = fmul float %fmul.332, %.7681
  %fadd.293 = fadd float %fmul.333, %.7682
  store float %fadd.293, ptr %R21, align 4
  br i1 %cmp.65.not, label %.L_x_35, label %.L_x_36_split_0x4580

.L_x_36_split_0x4580:                             ; preds = %.L_x_36_split_0x44e0
  %.7690 = load i32, ptr %R48, align 4
  %cmp.66.not = icmp eq i32 %.7690, 2
  %.7697 = load i32, ptr %R34, align 4
  %zext.772 = zext i32 %.7697 to i64
  %.7698 = load i32, ptr %R35, align 4
  %zext.773 = zext i32 %.7698 to i64
  %shl.406 = shl nuw i64 %zext.773, 32
  %or.371 = or disjoint i64 %shl.406, %zext.772
  %ptr_plus_imm.246 = add i64 %or.371, 4
  %inttoptr_bytes.341 = inttoptr i64 %ptr_plus_imm.246 to ptr addrspace(1)
  %.7699 = load float, ptr addrspace(1) %inttoptr_bytes.341, align 4
  store float %.7699, ptr %R7, align 4
  %.7703 = load i32, ptr %R4, align 4
  %zext.774 = zext i32 %.7703 to i64
  %.7704 = load i32, ptr %R5, align 4
  %zext.775 = zext i32 %.7704 to i64
  %shl.407 = shl nuw i64 %zext.775, 32
  %or.372 = or disjoint i64 %shl.407, %zext.774
  %ptr_plus_imm.247 = add i64 %or.372, 4
  %inttoptr_bytes.342 = inttoptr i64 %ptr_plus_imm.247 to ptr addrspace(1)
  %.7705 = load float, ptr addrspace(1) %inttoptr_bytes.342, align 4
  store float %.7705, ptr %R8, align 4
  br i1 %cmp.66.not, label %.L_x_36_split_0x45d0, label %.L_x_36_split_0x4580_conditionalExpr_0x45b0

.L_x_36_split_0x4580_conditionalExpr_0x45b0:      ; preds = %.L_x_36_split_0x4580
  %.7713 = load i32, ptr %R34, align 4
  %zext.776 = zext i32 %.7713 to i64
  %.7714 = load i32, ptr %R35, align 4
  %zext.777 = zext i32 %.7714 to i64
  %shl.408 = shl nuw i64 %zext.777, 32
  %or.373 = or disjoint i64 %shl.408, %zext.776
  %ptr_plus_imm.248 = add i64 %or.373, 8
  %inttoptr_bytes.343 = inttoptr i64 %ptr_plus_imm.248 to ptr addrspace(1)
  %.7715 = load float, ptr addrspace(1) %inttoptr_bytes.343, align 4
  store float %.7715, ptr %R9, align 4
  %.7725 = load i32, ptr %R4, align 4
  %zext.778 = zext i32 %.7725 to i64
  %.7726 = load i32, ptr %R5, align 4
  %zext.779 = zext i32 %.7726 to i64
  %shl.409 = shl nuw i64 %zext.779, 32
  %or.374 = or disjoint i64 %shl.409, %zext.778
  %ptr_plus_imm.249 = add i64 %or.374, 8
  %inttoptr_bytes.344 = inttoptr i64 %ptr_plus_imm.249 to ptr addrspace(1)
  %.7727 = load float, ptr addrspace(1) %inttoptr_bytes.344, align 4
  store float %.7727, ptr %R10, align 4
  br label %.L_x_36_split_0x45d0

.L_x_36_split_0x45d0:                             ; preds = %.L_x_36_split_0x4580, %.L_x_36_split_0x4580_conditionalExpr_0x45b0
  %.7733 = load float, ptr %R7, align 4
  %.7734 = load float, ptr %R22, align 4
  %fmul.334 = fmul float %.7733, %.7734
  store float %fmul.334, ptr %R6, align 4
  %.7739 = load float, ptr %R8, align 4
  %.7740 = load float, ptr %R21, align 4
  %fmul.335 = fmul float %fmul.334, %.7739
  %fadd.294 = fadd float %fmul.335, %.7740
  store float %fadd.294, ptr %R21, align 4
  br i1 %cmp.66.not, label %.L_x_35, label %.L_x_36_split_0x45d0_conditionalExpr_0x45f0

.L_x_36_split_0x45d0_conditionalExpr_0x45f0:      ; preds = %.L_x_36_split_0x45d0
  %.7748 = load float, ptr %R9, align 4
  %.7749 = load float, ptr %R22, align 4
  %fmul.336 = fmul float %.7748, %.7749
  store float %fmul.336, ptr %R22, align 4
  %.7760 = load float, ptr %R10, align 4
  %.7761 = load float, ptr %R21, align 4
  %fmul.337 = fmul float %fmul.336, %.7760
  %fadd.295 = fadd float %fmul.337, %.7761
  store float %fadd.295, ptr %R21, align 4
  br label %.L_x_35

.L_x_35:                                          ; preds = %.L_x_36_split_0x45d0, %.L_x_36_split_0x45d0_conditionalExpr_0x45f0, %.L_x_36_split_0x44e0, %.L_x_36, %.L_x_32
  %inttoptr_bytes.345 = inttoptr i64 %imad_add.4 to ptr addrspace(1)
  %.7769 = load float, ptr addrspace(1) %inttoptr_bytes.345, align 4
  store float %.7769, ptr %R4, align 4
  %.7776 = load float, ptr %R21, align 4
  %fadd.296 = fadd float %.7769, %.7776
  store float %fadd.296, ptr %R21, align 4
  %llvm_fabs_result.3 = tail call float @llvm.fabs.f32(float %fadd.296)
  %fcmp_unordered.2 = fcmp ult float %llvm_fabs_result.3, 0x3FE3333340000000
  br i1 %fcmp_unordered.2, label %.L_x_42, label %.L_x_35_split_0x4670

.L_x_35_split_0x4670:                             ; preds = %.L_x_35
  %.7791 = load float, ptr %R21, align 4
  %llvm_fabs_result.4 = tail call float @llvm.fabs.f32(float %.7791)
  %fmul.338 = fmul float %llvm_fabs_result.4, 0x4007154760000000
  store float %fmul.338, ptr %R5, align 4
  store float 0x41CFC00000000000, ptr %R7, align 4
  %llvm_fabs_result.5 = tail call float @llvm.fabs.f32(float %.7791)
  %fcmp_unordered.3 = fcmp ult float %llvm_fabs_result.5, 0x4022059680000000
  %llvm_exp2_f32_result.5 = tail call float @llvm.exp2.f32(float %fmul.338)
  store float %llvm_exp2_f32_result.5, ptr %R5, align 4
  %fadd.297 = fadd float %llvm_exp2_f32_result.5, 1.000000e+00
  %.7814 = fdiv float 1.000000e+00, %fadd.297
  store float %.7814, ptr %R6, align 4
  %.7819 = load float, ptr %R7, align 4
  %fmul.339 = fmul float %.7814, -2.000000e+00
  %fadd.298 = fadd float %fmul.339, %.7819
  %fsel.1 = select i1 %fcmp_unordered.3, float %fadd.298, float 1.000000e+00
  store float %fsel.1, ptr %R4, align 4
  %.7830.cast = bitcast float %fsel.1 to i32
  %.7831 = load i32, ptr %R21, align 4
  %44 = tail call float @llvm.fabs.f32(float %fadd.298)
  %.neg22 = fneg float %44
  %45 = select i1 %fcmp_unordered.3, float %.neg22, float -1.000000e+00
  %.7833 = bitcast float %45 to i32
  %.7834 = or i32 %.7831, %.7830.cast
  %.7835 = and i32 %.7834, %.7833
  %46 = bitcast i32 %.7835 to float
  br label %.L_x_41

.L_x_42:                                          ; preds = %.L_x_35
  store float 0x41CE407840000000, ptr %R5, align 4
  %.7843 = load float, ptr %R21, align 4
  %fmul.340 = fmul float %.7843, %.7843
  store float %fmul.340, ptr %R4, align 4
  %fmul.341 = fmul float %fmul.340, 0x41CE407840000000
  %fadd.299 = fadd float %fmul.341, 0xBFAAC795C0000000
  %fmul.342 = fmul float %fmul.340, %fadd.299
  %fadd.300 = fadd float %fmul.342, 0x3FC10B2820000000
  %fmul.343 = fmul float %fmul.340, %fadd.300
  %fadd.301 = fadd float %fmul.343, 0xBFD5553DA0000000
  store float %fadd.301, ptr %R5, align 4
  %.7863 = load float, ptr %R4, align 4
  %fmul.344 = fmul float %.7863, %fadd.301
  %fadd.302 = fadd float %fmul.344, 0.000000e+00
  store float %fadd.302, ptr %R4, align 4
  %.7868 = load float, ptr %R21, align 4
  %fmul.345 = fmul float %.7868, %fadd.302
  %fadd.303 = fadd float %fmul.345, %.7868
  br label %.L_x_41

.L_x_41:                                          ; preds = %.L_x_35_split_0x4670, %.L_x_42
  %storemerge23 = phi float [ %fadd.303, %.L_x_42 ], [ %46, %.L_x_35_split_0x4670 ]
  store float %storemerge23, ptr %R4, align 4
  %.7877 = load i32, ptr %R23, align 4
  %.7878 = add i32 %.7877, 25165824
  %.7886 = and i32 %.7878, 2139095040
  store i32 %.7886, ptr %R5, align 4
  %cmp.67 = icmp samesign ugt i32 %.7886, 33554431
  br i1 %cmp.67, label %.L_x_45, label %.L_x_41_split_0x47f0_CALL_0x4830

.L_x_41_split_0x47f0_CALL_0x4830:                 ; preds = %.L_x_41
  %.7900 = load float, ptr %R23, align 4
  store float %.7900, ptr %R24, align 4
  store i32 18464, ptr %R10, align 4
  %.7909.cast = bitcast float %.7900 to i32
  %shl.412 = shl i32 %.7909.cast, 1
  store i32 %shl.412, ptr %R11, align 4
  %47 = lshr i32 %shl.412, 24
  store i32 %47, ptr %R25, align 4
  %cmp.68 = icmp ugt i32 %shl.412, 16777215
  br i1 %cmp.68, label %.L_x_49...4, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4": ; preds = %.L_x_41_split_0x47f0_CALL_0x4830
  %.7930 = load i32, ptr %R24, align 4
  %shl.415 = shl i32 %.7930, 1
  store i32 %shl.415, ptr %R11, align 4
  %cmp.69.not = icmp eq i32 %shl.415, 0
  br i1 %cmp.69.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4"
  %.7944 = load float, ptr %R24, align 4
  %fmul.346 = fmul float %.7944, 0x43F0000000000000
  %fadd.304 = fadd float %fmul.346, 0.000000e+00
  store float %fadd.304, ptr %R12, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4"
  %.7950 = load float, ptr %R24, align 4
  %fmul.347 = fmul float %.7950, 0x43F0000000000000
  %fadd.305 = fadd float %fmul.347, 0.000000e+00
  store float %fadd.305, ptr %R12, align 4
  br i1 %cmp.69.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
  %.7960 = load i32, ptr %R24, align 4
  %sint_to_f32.6 = sitofp i32 %.7960 to float
  %.7961 = fdiv float 1.000000e+00, %sint_to_f32.6
  %.7962 = fptosi float %.7961 to i32
  store i32 %.7962, ptr %R11, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
  %.7967 = load i32, ptr %R24, align 4
  %sint_to_f32.7 = sitofp i32 %.7967 to float
  %.7968 = fdiv float 1.000000e+00, %sint_to_f32.7
  %.7969 = fptosi float %.7968 to i32
  store i32 %.7969, ptr %R11, align 4
  br i1 %cmp.69.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
  %.7978 = load float, ptr %R12, align 4
  %.7979 = fdiv float 1.000000e+00, %.7978
  store float %.7979, ptr %R13, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
  %.7985 = load float, ptr %R12, align 4
  %.7986 = fdiv float 1.000000e+00, %.7985
  store float %.7986, ptr %R13, align 4
  br i1 %cmp.69.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
  %.7996 = load float, ptr %R12, align 4
  %.7997 = load float, ptr %R13, align 4
  %fmul.348 = fmul float %.7996, %.7997
  %fadd.306 = fadd float %fmul.348, -1.000000e+00
  store float %fadd.306, ptr %R22, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
  %.8003 = load float, ptr %R12, align 4
  %.8004 = load float, ptr %R13, align 4
  %fmul.349 = fmul float %.8003, %.8004
  %fadd.307 = fadd float %fmul.349, -1.000000e+00
  store float %fadd.307, ptr %R22, align 4
  br i1 %cmp.69.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
  %.8014 = load float, ptr %R22, align 4
  %.8019 = tail call i1 @llvm.is.fpclass.f32(float %.8014, i32 144)
  %48 = fsub float 0.000000e+00, %.8014
  %49 = tail call i1 @llvm.is.fpclass.f32(float %48, i32 144)
  %50 = select i1 %.8019, i1 true, i1 %49
  %.8030 = select i1 %50, float 0.000000e+00, float %48
  store float %.8030, ptr %R22, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
  %.8036 = load float, ptr %R22, align 4
  %.8041 = tail call i1 @llvm.is.fpclass.f32(float %.8036, i32 144)
  %51 = fsub float 0.000000e+00, %.8036
  %52 = tail call i1 @llvm.is.fpclass.f32(float %51, i32 144)
  %53 = select i1 %.8041, i1 true, i1 %52
  %.8052 = select i1 %53, float 0.000000e+00, float %51
  store float %.8052, ptr %R22, align 4
  br i1 %cmp.69.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
  %.8062 = load float, ptr %R13, align 4
  %.8063 = load float, ptr %R22, align 4
  %fmul.350 = fmul float %.8062, %.8063
  %fadd.310 = fadd float %fmul.350, %.8062
  store float %fadd.310, ptr %R22, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
  %.8070 = load float, ptr %R13, align 4
  %.8071 = load float, ptr %R22, align 4
  %fmul.351 = fmul float %.8070, %.8071
  %fadd.311 = fadd float %fmul.351, %.8070
  store float %fadd.311, ptr %R22, align 4
  br i1 %cmp.69.not, label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
  %.8082 = load float, ptr %R22, align 4
  %fmul.352 = fmul float %.8082, 0x43F0000000000000
  %fadd.312 = fadd float %fmul.352, 0.000000e+00
  store float %fadd.312, ptr %R11, align 4
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4"

"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4": ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0", %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
  %.8088 = load float, ptr %R22, align 4
  %fmul.353 = fmul float %.8088, 0x43F0000000000000
  %fadd.313 = fadd float %fmul.353, 0.000000e+00
  store float %fadd.313, ptr %R11, align 4
  br label %.L_x_48...4

.L_x_49...4:                                      ; preds = %.L_x_41_split_0x47f0_CALL_0x4830
  %.8096 = load i32, ptr %R25, align 4
  %.8097 = add i32 %.8096, -253
  store i32 %.8097, ptr %R34, align 4
  %cmp.70 = icmp sgt i32 %.8097, 1
  br i1 %cmp.70, label %.L_x_51...4, label %.L_x_49_split_0x4a30...4

.L_x_49_split_0x4a30...4:                         ; preds = %.L_x_49...4
  %.8112 = load i32, ptr %R24, align 4
  %.8114 = and i32 %.8112, 8388607
  store i32 %.8114, ptr %R11, align 4
  store i32 3, ptr %R23, align 4
  %.8121 = or disjoint i32 %.8114, 1065353216
  store i32 %.8121, ptr %R11, align 4
  %.8127 = load i32, ptr %R34, align 4
  %zext.793 = zext nneg i32 %.8127 to i64
  %shl.417 = shl i64 3, %zext.793
  %trunc32.213 = trunc i64 %shl.417 to i32
  store i32 %trunc32.213, ptr %R23, align 4
  %sint_to_f32.8 = uitofp nneg i32 %.8121 to float
  %.8131 = fdiv float 1.000000e+00, %sint_to_f32.8
  %.8132 = fptosi float %.8131 to i32
  store i32 %.8132, ptr %R12, align 4
  %.8135 = load float, ptr %R11, align 4
  %.8136.cast = bitcast i32 %.8132 to float
  %fmul.354 = fmul float %.8135, %.8136.cast
  %fadd.314 = fadd float %fmul.354, -1.000000e+00
  %.8145 = tail call i1 @llvm.is.fpclass.f32(float %fadd.314, i32 144)
  %54 = fsub float 0.000000e+00, %fadd.314
  %55 = tail call i1 @llvm.is.fpclass.f32(float %54, i32 144)
  %56 = select i1 %.8145, i1 true, i1 %55
  %.8156 = select i1 %56, float 0.000000e+00, float %54
  store float %.8156, ptr %R13, align 4
  %.8160 = load float, ptr %R12, align 4
  %fmul.355 = fmul float %.8160, %.8156
  %fadd.316 = fadd float %fmul.355, %.8160
  store float %fadd.316, ptr %R22, align 4
  %fmul.356 = fmul float %.8160, %.8156
  %fadd.317 = fadd float %fmul.356, %.8160
  store float %fadd.317, ptr %R13, align 4
  %.8172.cast = bitcast float %fadd.316 to i32
  %.8174 = and i32 %.8172.cast, 8388607
  store i32 %.8174, ptr %R12, align 4
  %.8177 = load float, ptr %R22, align 4
  %.8183 = tail call i1 @llvm.is.fpclass.f32(float %.8177, i32 144)
  %.8184 = select i1 %.8183, float 0.000000e+00, float %.8177
  %.8188 = tail call i1 @llvm.is.fpclass.f32(float %fadd.317, i32 144)
  %.8189 = select i1 %.8188, float 0.000000e+00, float %fadd.317
  %fcmp_ordered.3 = fcmp une float %.8184, %.8189
  %.8195 = load i32, ptr %R12, align 4
  %.8197 = or i32 %.8195, 8388608
  store i32 %.8197, ptr %R12, align 4
  %sel.6.neg = zext i1 %fcmp_ordered.3 to i32
  %sel.6 = sext i1 %fcmp_ordered.3 to i32
  store i32 %sel.6, ptr %R13, align 4
  %.8205 = load i32, ptr %R23, align 4
  %.8208 = and i32 %.8205, %.8197
  store i32 %.8208, ptr %R23, align 4
  store i32 %sel.6.neg, ptr %R13, align 4
  %.8220 = load i32, ptr %R34, align 4
  %zext.794 = zext i32 %.8208 to i64
  %zext.796 = zext nneg i32 %.8220 to i64
  %shl.418 = shl nuw i64 %zext.794, 32
  %lshr.21 = lshr i64 %shl.418, %zext.796
  %lshr.22 = lshr i64 %lshr.21, 32
  %trunc32.214 = trunc nuw i64 %lshr.22 to i32
  store i32 %trunc32.214, ptr %R23, align 4
  %.8236 = and i32 %trunc32.214, 1
  %.8253 = load i32, ptr %R24, align 4
  %.8255 = and i32 %.8253, 8388607
  %.8257.not = icmp eq i32 %.8255, 0
  %.8266 = sub nsw i32 0, %.8236
  store i32 %.8266, ptr %R11, align 4
  %cmp.71.not = icmp eq i32 %.8236, 0
  %.8278 = load i32, ptr %R25, align 4
  %.8279 = add i32 %.8278, -252
  store i32 %.8279, ptr %R11, align 4
  %.8285 = load i32, ptr %R12, align 4
  %zext.797 = zext i32 %.8285 to i64
  %zext.799 = zext nneg i32 %.8279 to i64
  %shl.419 = shl nuw i64 %zext.797, 32
  %lshr.23 = lshr i64 %shl.419, %zext.799
  %lshr.24 = lshr i64 %lshr.23, 32
  %trunc32.215 = trunc nuw i64 %lshr.24 to i32
  store i32 %trunc32.215, ptr %R11, align 4
  br i1 %cmp.71.not, label %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4, label %.L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0

.L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0:  ; preds = %.L_x_49_split_0x4a30...4
  %.8293 = load i32, ptr %R11, align 4
  %.8294 = add i32 %.8293, 1
  store i32 %.8294, ptr %R11, align 4
  br label %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4

.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4:  ; preds = %.L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0, %.L_x_49_split_0x4a30...4
  %.8300 = load i32, ptr %R11, align 4
  %.8301 = add i32 %.8300, 1
  store i32 %.8301, ptr %R11, align 4
  br i1 %.8257.not, label %.L_x_49_split_0x4be0...4_conditionalExpr_0x4be0, label %.L_x_49_split_0x4be0_conditionalExpr_0x4be0...4

.L_x_49_split_0x4be0...4_conditionalExpr_0x4be0:  ; preds = %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4
  %.8312 = load i32, ptr %R11, align 4
  %shl.421 = shl i32 %.8312, 1
  store i32 %shl.421, ptr %R11, align 4
  br label %.L_x_49_split_0x4be0_conditionalExpr_0x4be0...4

.L_x_49_split_0x4be0_conditionalExpr_0x4be0...4:  ; preds = %.L_x_49_split_0x4be0...4_conditionalExpr_0x4be0, %.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4
  %.8318 = load i32, ptr %R11, align 4
  %shl.423 = shl i32 %.8318, 1
  store i32 %shl.423, ptr %R11, align 4
  %.8324 = load i32, ptr %R24, align 4
  %.832724 = and i32 %.8324, -2147483648
  %.8328 = or i32 %shl.423, %.832724
  store i32 %.8328, ptr %R11, align 4
  br label %.L_x_48...4

.L_x_51...4:                                      ; preds = %.L_x_49...4
  %.8333 = load i32, ptr %R24, align 4
  %sint_to_f32.9 = sitofp i32 %.8333 to float
  %.8334 = fdiv float 1.000000e+00, %sint_to_f32.9
  %.8335 = fptosi float %.8334 to i32
  store i32 %.8335, ptr %R11, align 4
  br label %.L_x_48...4

.L_x_48...4:                                      ; preds = %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4", %.L_x_49_split_0x4be0_conditionalExpr_0x4be0...4, %.L_x_51...4
  %.8341 = load i32, ptr %R11, align 4
  store i32 %.8341, ptr %R22, align 4
  store i32 0, ptr %R11, align 4
  %57 = bitcast i32 %.8341 to float
  br label %.L_x_44

.L_x_45:                                          ; preds = %.L_x_41
  %.8356 = load float, ptr %R23, align 4
  %.8357 = fdiv float 1.000000e+00, %.8356
  store float %.8357, ptr %R6, align 4
  %fmul.357 = fmul float %.8356, %.8357
  %fadd.318 = fadd float %fmul.357, -1.000000e+00
  %.8371 = tail call i1 @llvm.is.fpclass.f32(float %fadd.318, i32 144)
  %58 = fsub float 0.000000e+00, %fadd.318
  %59 = tail call i1 @llvm.is.fpclass.f32(float %58, i32 144)
  %60 = select i1 %.8371, i1 true, i1 %59
  %.8382 = select i1 %60, float 0.000000e+00, float %58
  store float %.8382, ptr %R5, align 4
  %.8386 = load float, ptr %R6, align 4
  %fmul.358 = fmul float %.8386, %.8382
  %fadd.320 = fadd float %fmul.358, %.8386
  br label %.L_x_44

.L_x_44:                                          ; preds = %.L_x_48...4, %.L_x_45
  %storemerge25 = phi float [ %fadd.320, %.L_x_45 ], [ %57, %.L_x_48...4 ]
  store float %storemerge25, ptr %R5, align 4
  %inttoptr_bytes.346 = inttoptr i64 %imad_add.3 to ptr addrspace(1)
  %.8397 = load float, ptr addrspace(1) %inttoptr_bytes.346, align 4
  store float %.8397, ptr %R6, align 4
  %fadd.321 = fsub float 1.000000e+00, %storemerge25
  store float %fadd.321, ptr %R7, align 4
  %fmul.359 = fmul float %.8397, %storemerge25
  store float %fmul.359, ptr %R6, align 4
  %.8412 = load float, ptr %R4, align 4
  %fmul.360 = fmul float %fadd.321, %.8412
  %fadd.322 = fadd float %fmul.360, %fmul.359
  store float %fadd.322, ptr %R7, align 4
  %inttoptr_bytes.347 = inttoptr i64 %imad_add.3 to ptr addrspace(1)
  store float %fadd.322, ptr addrspace(1) %inttoptr_bytes.347, align 4
  br i1 %cmp.38.not, label %.L_x_47, label %ExitFunction.loopexit

ExitFunction.loopexit:                            ; preds = %.L_x_44
  br label %ExitFunction

ExitFunction.loopexit15:                          ; preds = %.L_x_19
  br label %ExitFunction

ExitFunction:                                     ; preds = %ExitFunction.loopexit15, %ExitFunction.loopexit, %Entry_.text._Z11gru_forwardPfS_S_S_iii
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
