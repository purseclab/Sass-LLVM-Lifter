; ModuleID = '/app/launch/../output/3_llvm_ir/mem_ops_raw.ll'
source_filename = "/app/launch/../output/3_llvm_ir/mem_ops_raw.ll"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

@__Z15sharedMemKernelPKiPii_sdata = internal addrspace(3) global [4096 x i32] zeroinitializer, align 16

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

define ptx_kernel void @_Z14localMemKernelPii(ptr %Arg_0, i32 %Arg_1) {
Entry_.text._Z14localMemKernelPii:
  %nvvm_ctaid_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_blockdim_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_x
  %cmp.not = icmp slt i32 %imad_add, %Arg_1
  br i1 %cmp.not, label %.text._Z14localMemKernelPii_split_0x0060, label %ExitFunction

.text._Z14localMemKernelPii_split_0x0060:         ; preds = %Entry_.text._Z14localMemKernelPii
  %.35 = add i32 %imad_add, 1
  %imad_ext1 = zext i32 %imad_add to i64
  %imad_mul.1 = shl nuw nsw i64 %imad_ext1, 2
  %.41 = ptrtoint ptr %Arg_0 to i64
  %imad_add.1 = add i64 %imad_mul.1, %.41
  %inttoptr_bytes = inttoptr i64 %imad_add.1 to ptr addrspace(1)
  store i32 %.35, ptr addrspace(1) %inttoptr_bytes, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z14localMemKernelPii, %.text._Z14localMemKernelPii_split_0x0060
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #0

define ptx_kernel void @_Z15sharedMemKernelPKiPii(ptr %Arg_0, ptr %Arg_1, i32 %Arg_2) {
Entry_.text._Z15sharedMemKernelPKiPii:
  %nvvm_ctaid_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_blockdim_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_x
  %cmp.not = icmp slt i32 %imad_add, %Arg_2
  br i1 %cmp.not, label %.text._Z15sharedMemKernelPKiPii_split_0x0080, label %.L_x_1

.text._Z15sharedMemKernelPKiPii_split_0x0080:     ; preds = %Entry_.text._Z15sharedMemKernelPKiPii
  %imad_ext1 = zext i32 %imad_add to i64
  %imad_mul.1 = shl nuw nsw i64 %imad_ext1, 2
  %.37 = ptrtoint ptr %Arg_0 to i64
  %imad_add.1 = add i64 %imad_mul.1, %.37
  %inttoptr_bytes = inttoptr i64 %imad_add.1 to ptr addrspace(1)
  %.45 = load i32, ptr addrspace(1) %inttoptr_bytes, align 4
  %.49 = add i32 %.45, 1
  %swzl_shl = shl i32 %nvvm_threadidx_x, 2
  %zext.2 = zext i32 %swzl_shl to i64
  %shared_gep = getelementptr inbounds nuw i8, ptr addrspacecast (ptr addrspace(3) @__Z15sharedMemKernelPKiPii_sdata to ptr), i64 %zext.2
  %.56 = addrspacecast ptr %shared_gep to ptr addrspace(3)
  store i32 %.49, ptr addrspace(3) %.56, align 4
  br label %.L_x_1

.L_x_1:                                           ; preds = %Entry_.text._Z15sharedMemKernelPKiPii, %.text._Z15sharedMemKernelPKiPii_split_0x0080
  tail call void @llvm.nvvm.barrier0()
  br i1 %cmp.not, label %.L_x_1_split_0x0100, label %ExitFunction

.L_x_1_split_0x0100:                              ; preds = %.L_x_1
  %swzl_shl.1 = shl i32 %nvvm_threadidx_x, 2
  %zext.3 = zext i32 %swzl_shl.1 to i64
  %shared_gep.1 = getelementptr i8, ptr addrspacecast (ptr addrspace(3) @__Z15sharedMemKernelPKiPii_sdata to ptr), i64 %zext.3
  %.71 = addrspacecast ptr %shared_gep.1 to ptr addrspace(3)
  %.72 = load i32, ptr addrspace(3) %.71, align 4
  %imad_ext1.1 = zext i32 %imad_add to i64
  %imad_mul.2 = shl nuw nsw i64 %imad_ext1.1, 2
  %.79 = ptrtoint ptr %Arg_1 to i64
  %imad_add.2 = add i64 %imad_mul.2, %.79
  %inttoptr_bytes.1 = inttoptr i64 %imad_add.2 to ptr addrspace(1)
  store i32 %.72, ptr addrspace(1) %inttoptr_bytes.1, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %.L_x_1, %.L_x_1_split_0x0100
  ret void
}

; Function Attrs: convergent nocallback nounwind
declare void @llvm.nvvm.barrier0() #1

define ptx_kernel void @_Z15globalMemKernelPKiPii(ptr %Arg_0, ptr %Arg_1, i32 %Arg_2) {
Entry_.text._Z15globalMemKernelPKiPii:
  %nvvm_ctaid_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_blockdim_x = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_x
  %cmp.not = icmp slt i32 %imad_add, %Arg_2
  br i1 %cmp.not, label %.text._Z15globalMemKernelPKiPii_split_0x0060, label %ExitFunction

.text._Z15globalMemKernelPKiPii_split_0x0060:     ; preds = %Entry_.text._Z15globalMemKernelPKiPii
  %imad_ext1 = zext i32 %imad_add to i64
  %imad_mul.1 = shl nuw nsw i64 %imad_ext1, 2
  %.37 = ptrtoint ptr %Arg_0 to i64
  %imad_add.1 = add i64 %imad_mul.1, %.37
  %inttoptr_bytes = inttoptr i64 %imad_add.1 to ptr addrspace(1)
  %.45 = load i32, ptr addrspace(1) %inttoptr_bytes, align 4
  %imad_ext1.1 = zext i32 %imad_add to i64
  %imad_mul.2 = shl nuw nsw i64 %imad_ext1.1, 2
  %.50 = ptrtoint ptr %Arg_1 to i64
  %imad_add.2 = add i64 %imad_mul.2, %.50
  %.57 = add i32 %.45, 1
  %inttoptr_bytes.1 = inttoptr i64 %imad_add.2 to ptr addrspace(1)
  store i32 %.57, ptr addrspace(1) %inttoptr_bytes.1, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z15globalMemKernelPKiPii, %.text._Z15globalMemKernelPKiPii_split_0x0060
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { convergent nocallback nounwind }
