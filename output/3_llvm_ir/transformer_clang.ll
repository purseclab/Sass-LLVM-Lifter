; ModuleID = '../input/transformer.cu'
source_filename = "../input/transformer.cu"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.__cuda_builtin_blockIdx_t = type { i8 }
%struct.__cuda_builtin_blockDim_t = type { i8 }
%struct.__cuda_builtin_threadIdx_t = type { i8 }

@blockIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_blockIdx_t, align 1
@blockDim = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_blockDim_t, align 1
@threadIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_threadIdx_t, align 1

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define dso_local ptx_kernel void @_Z18linear_proj_kernelPKfS0_S0_Pfiii(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store i32 %4, ptr %12, align 4
  store i32 %5, ptr %13, align 4
  store i32 %6, ptr %14, align 4
  %21 = call noundef range(i32 0, 65535) i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  %22 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %23 = mul i32 %21, %22
  %24 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %25 = add i32 %23, %24
  store i32 %25, ptr %15, align 4
  %26 = call noundef range(i32 0, 2147483647) i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %27 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %28 = mul i32 %26, %27
  %29 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %30 = add i32 %28, %29
  store i32 %30, ptr %16, align 4
  %31 = load i32, ptr %15, align 4
  %32 = load i32, ptr %12, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %7
  %35 = load i32, ptr %16, align 4
  %36 = load i32, ptr %14, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %7
  br label %86

39:                                               ; preds = %34
  %40 = load ptr, ptr %10, align 8
  %41 = load i32, ptr %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, ptr %40, i64 %42
  %44 = load float, ptr %43, align 4
  store float %44, ptr %17, align 4
  store i32 0, ptr %18, align 4
  br label %45

45:                                               ; preds = %73, %39
  %46 = load i32, ptr %18, align 4
  %47 = load i32, ptr %13, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %45
  %50 = load ptr, ptr %8, align 8
  %51 = load i32, ptr %15, align 4
  %52 = load i32, ptr %13, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, ptr %18, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, ptr %50, i64 %56
  %58 = load float, ptr %57, align 4
  store float %58, ptr %19, align 4
  %59 = load ptr, ptr %9, align 8
  %60 = load i32, ptr %16, align 4
  %61 = load i32, ptr %13, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, ptr %18, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, ptr %59, i64 %65
  %67 = load float, ptr %66, align 4
  store float %67, ptr %20, align 4
  %68 = load float, ptr %19, align 4
  %69 = load float, ptr %20, align 4
  %70 = fmul contract float %68, %69
  %71 = load float, ptr %17, align 4
  %72 = fadd contract float %71, %70
  store float %72, ptr %17, align 4
  br label %73

73:                                               ; preds = %49
  %74 = load i32, ptr %18, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %18, align 4
  br label %45, !llvm.loop !9

76:                                               ; preds = %45
  %77 = load float, ptr %17, align 4
  %78 = load ptr, ptr %11, align 8
  %79 = load i32, ptr %15, align 4
  %80 = load i32, ptr %14, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, ptr %16, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, ptr %78, i64 %84
  store float %77, ptr %85, align 4
  br label %86

86:                                               ; preds = %76, %38
  ret void
}

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define dso_local ptx_kernel void @_Z15ffn_relu_kernelPKfS0_S0_Pfiii(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store i32 %4, ptr %12, align 4
  store i32 %5, ptr %13, align 4
  store i32 %6, ptr %14, align 4
  %21 = call noundef range(i32 0, 65535) i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  %22 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %23 = mul i32 %21, %22
  %24 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %25 = add i32 %23, %24
  store i32 %25, ptr %15, align 4
  %26 = call noundef range(i32 0, 2147483647) i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %27 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %28 = mul i32 %26, %27
  %29 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %30 = add i32 %28, %29
  store i32 %30, ptr %16, align 4
  %31 = load i32, ptr %15, align 4
  %32 = load i32, ptr %12, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %7
  %35 = load i32, ptr %16, align 4
  %36 = load i32, ptr %14, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %7
  br label %90

39:                                               ; preds = %34
  %40 = load ptr, ptr %10, align 8
  %41 = load i32, ptr %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, ptr %40, i64 %42
  %44 = load float, ptr %43, align 4
  store float %44, ptr %17, align 4
  store i32 0, ptr %18, align 4
  br label %45

45:                                               ; preds = %73, %39
  %46 = load i32, ptr %18, align 4
  %47 = load i32, ptr %13, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %45
  %50 = load ptr, ptr %8, align 8
  %51 = load i32, ptr %15, align 4
  %52 = load i32, ptr %13, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, ptr %18, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, ptr %50, i64 %56
  %58 = load float, ptr %57, align 4
  store float %58, ptr %19, align 4
  %59 = load ptr, ptr %9, align 8
  %60 = load i32, ptr %16, align 4
  %61 = load i32, ptr %13, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, ptr %18, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, ptr %59, i64 %65
  %67 = load float, ptr %66, align 4
  store float %67, ptr %20, align 4
  %68 = load float, ptr %19, align 4
  %69 = load float, ptr %20, align 4
  %70 = fmul contract float %68, %69
  %71 = load float, ptr %17, align 4
  %72 = fadd contract float %71, %70
  store float %72, ptr %17, align 4
  br label %73

73:                                               ; preds = %49
  %74 = load i32, ptr %18, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %18, align 4
  br label %45, !llvm.loop !11

76:                                               ; preds = %45
  %77 = load float, ptr %17, align 4
  %78 = fcmp contract olt float %77, 0.000000e+00
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store float 0.000000e+00, ptr %17, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load float, ptr %17, align 4
  %82 = load ptr, ptr %11, align 8
  %83 = load i32, ptr %15, align 4
  %84 = load i32, ptr %14, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, ptr %16, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, ptr %82, i64 %88
  store float %81, ptr %89, align 4
  br label %90

90:                                               ; preds = %80, %38
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.y() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.y() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.y() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x() #1

attributes #0 = { convergent mustprogress noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" "uniform-work-group-size"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!nvvm.annotations = !{!4, !5}
!llvm.ident = !{!6, !7}
!nvvmir.version = !{!8}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{ptr @_Z18linear_proj_kernelPKfS0_S0_Pfiii}
!5 = !{ptr @_Z15ffn_relu_kernelPKfS0_S0_Pfiii}
!6 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!7 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!8 = !{i32 2, i32 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
