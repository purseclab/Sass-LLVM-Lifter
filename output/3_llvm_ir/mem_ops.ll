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

define ptx_kernel void @_Z14localMemKernelPii(ptr %Arg_0, i32 %Arg_1) {
Entry_.text._Z14localMemKernelPii:
  %nvvm_ctaid_x = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_x
  %cmp = icmp sge i32 %imad_add, %Arg_1
  %.23 = and i1 %cmp, true
  %.28 = icmp eq i1 %.23, true
  br i1 %.28, label %ExitFunction, label %.text._Z14localMemKernelPii_split_0x0060

.text._Z14localMemKernelPii_split_0x0060:         ; preds = %Entry_.text._Z14localMemKernelPii
  %.36 = add i32 %imad_add, 1
  %.37 = add i32 %.36, 0
  %imad_ext1 = zext i32 %imad_add to i64
  %imad_ext2 = zext i32 4 to i64
  %imad_mul.1 = mul i64 %imad_ext1, %imad_ext2
  %.42 = ptrtoint ptr %Arg_0 to i64
  %imad_add.1 = add i64 %imad_mul.1, %.42
  %.43 = and i64 %imad_add.1, -4294967296
  %.44 = lshr i64 %.43, 32
  %trunc32 = trunc i64 %.44 to i32
  %trunc32.1 = trunc i64 %imad_add.1 to i32
  %zext = zext i32 %trunc32.1 to i64
  %zext.1 = zext i32 %trunc32 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  store i32 %.37, ptr addrspace(1) %ptr_cast_for_access, align 4
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
  %nvvm_ctaid_x = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_x
  %cmp = icmp sge i32 %imad_add, %Arg_2
  %.26 = and i1 %cmp, true
  %.31 = icmp eq i1 %.26, true
  br i1 %.31, label %.L_x_1, label %.text._Z15sharedMemKernelPKiPii_split_0x0080

.text._Z15sharedMemKernelPKiPii_split_0x0080:     ; preds = %Entry_.text._Z15sharedMemKernelPKiPii
  %imad_ext1 = zext i32 %imad_add to i64
  %imad_ext2 = zext i32 4 to i64
  %imad_mul.1 = mul i64 %imad_ext1, %imad_ext2
  %.38 = ptrtoint ptr %Arg_0 to i64
  %imad_add.1 = add i64 %imad_mul.1, %.38
  %.39 = and i64 %imad_add.1, -4294967296
  %.40 = lshr i64 %.39, 32
  %trunc32 = trunc i64 %.40 to i32
  %trunc32.1 = trunc i64 %imad_add.1 to i32
  %zext = zext i32 %trunc32.1 to i64
  %zext.1 = zext i32 %trunc32 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.46 = load i32, ptr addrspace(1) %ptr_cast_for_access, align 4
  %.50 = add i32 %.46, 1
  %.51 = add i32 %.50, 0
  %swzl_shl = shl i32 %nvvm_threadidx_x, 2
  %zext.2 = zext i32 %swzl_shl to i64
  %.56 = addrspacecast ptr addrspace(3) @__Z15sharedMemKernelPKiPii_sdata to ptr
  %shared_gep = getelementptr inbounds i8, ptr %.56, i64 %zext.2
  %.57 = addrspacecast ptr %shared_gep to ptr addrspace(3)
  store i32 %.51, ptr addrspace(3) %.57, align 4
  br label %.L_x_1

.L_x_1:                                           ; preds = %Entry_.text._Z15sharedMemKernelPKiPii, %.text._Z15sharedMemKernelPKiPii_split_0x0080
  call void @llvm.nvvm.barrier0()
  %.65 = icmp eq i1 %.26, true
  br i1 %.65, label %ExitFunction, label %.L_x_1_split_0x0100

.L_x_1_split_0x0100:                              ; preds = %.L_x_1
  %swzl_shl.1 = shl i32 %nvvm_threadidx_x, 2
  %zext.3 = zext i32 %swzl_shl.1 to i64
  %.71 = addrspacecast ptr addrspace(3) @__Z15sharedMemKernelPKiPii_sdata to ptr
  %shared_gep.1 = getelementptr i8, ptr %.71, i64 %zext.3
  %.72 = addrspacecast ptr %shared_gep.1 to ptr addrspace(3)
  %.73 = load i32, ptr addrspace(3) %.72, align 4
  %imad_ext1.1 = zext i32 %imad_add to i64
  %imad_ext2.1 = zext i32 4 to i64
  %imad_mul.2 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.80 = ptrtoint ptr %Arg_1 to i64
  %imad_add.2 = add i64 %imad_mul.2, %.80
  %.81 = and i64 %imad_add.2, -4294967296
  %.82 = lshr i64 %.81, 32
  %trunc32.2 = trunc i64 %.82 to i32
  %trunc32.3 = trunc i64 %imad_add.2 to i32
  %zext.4 = zext i32 %trunc32.3 to i64
  %zext.5 = zext i32 %trunc32.2 to i64
  %shl.1 = shl i64 %zext.5, 32
  %or.1 = or i64 %shl.1, %zext.4
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  store i32 %.73, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %.L_x_1, %.L_x_1_split_0x0100
  ret void
}

; Function Attrs: convergent nocallback nounwind
declare void @llvm.nvvm.barrier0() #1

define ptx_kernel void @_Z15globalMemKernelPKiPii(ptr %Arg_0, ptr %Arg_1, i32 %Arg_2) {
Entry_.text._Z15globalMemKernelPKiPii:
  %nvvm_ctaid_x = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %nvvm_threadidx_x = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %nvvm_blockdim_x = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %imad_mul = mul i32 %nvvm_ctaid_x, %nvvm_blockdim_x
  %imad_add = add i32 %imad_mul, %nvvm_threadidx_x
  %cmp = icmp sge i32 %imad_add, %Arg_2
  %.24 = and i1 %cmp, true
  %.29 = icmp eq i1 %.24, true
  br i1 %.29, label %ExitFunction, label %.text._Z15globalMemKernelPKiPii_split_0x0060

.text._Z15globalMemKernelPKiPii_split_0x0060:     ; preds = %Entry_.text._Z15globalMemKernelPKiPii
  %imad_ext1 = zext i32 %imad_add to i64
  %imad_ext2 = zext i32 4 to i64
  %imad_mul.1 = mul i64 %imad_ext1, %imad_ext2
  %.38 = ptrtoint ptr %Arg_0 to i64
  %imad_add.1 = add i64 %imad_mul.1, %.38
  %.39 = and i64 %imad_add.1, -4294967296
  %.40 = lshr i64 %.39, 32
  %trunc32 = trunc i64 %.40 to i32
  %trunc32.1 = trunc i64 %imad_add.1 to i32
  %zext = zext i32 %trunc32.1 to i64
  %zext.1 = zext i32 %trunc32 to i64
  %shl = shl i64 %zext.1, 32
  %or = or i64 %shl, %zext
  %inttoptr_bytes = inttoptr i64 %or to ptr addrspace(1)
  %ptr_cast_for_access = bitcast ptr addrspace(1) %inttoptr_bytes to ptr addrspace(1)
  %.46 = load i32, ptr addrspace(1) %ptr_cast_for_access, align 4
  %imad_ext1.1 = zext i32 %imad_add to i64
  %imad_ext2.1 = zext i32 4 to i64
  %imad_mul.2 = mul i64 %imad_ext1.1, %imad_ext2.1
  %.51 = ptrtoint ptr %Arg_1 to i64
  %imad_add.2 = add i64 %imad_mul.2, %.51
  %.52 = and i64 %imad_add.2, -4294967296
  %.53 = lshr i64 %.52, 32
  %trunc32.2 = trunc i64 %.53 to i32
  %trunc32.3 = trunc i64 %imad_add.2 to i32
  %.58 = add i32 %.46, 1
  %.59 = add i32 %.58, 0
  %zext.2 = zext i32 %trunc32.3 to i64
  %zext.3 = zext i32 %trunc32.2 to i64
  %shl.1 = shl i64 %zext.3, 32
  %or.1 = or i64 %shl.1, %zext.2
  %inttoptr_bytes.1 = inttoptr i64 %or.1 to ptr addrspace(1)
  %ptr_cast_for_access.1 = bitcast ptr addrspace(1) %inttoptr_bytes.1 to ptr addrspace(1)
  store i32 %.59, ptr addrspace(1) %ptr_cast_for_access.1, align 4
  br label %ExitFunction

ExitFunction:                                     ; preds = %Entry_.text._Z15globalMemKernelPKiPii, %.text._Z15globalMemKernelPKiPii_split_0x0060
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { convergent nocallback nounwind }
