; ModuleID = '../input/rnn.cu'
source_filename = "../input/rnn.cu"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.__cuda_builtin_blockIdx_t = type { i8 }
%struct.__cuda_builtin_blockDim_t = type { i8 }
%struct.__cuda_builtin_threadIdx_t = type { i8 }

@blockIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_blockIdx_t, align 1
@blockDim = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_blockDim_t, align 1
@threadIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_threadIdx_t, align 1
@.str = private unnamed_addr constant [11 x i8] c"__CUDA_FTZ\00", align 1

; Function Attrs: convergent noinline nounwind optnone
define dso_local noundef float @_Z7d_tanhff(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, ptr %3, align 4
  %4 = load float, ptr %3, align 4
  store float %4, ptr %2, align 4
  %5 = load float, ptr %2, align 4
  %6 = call float @llvm.nvvm.fabs.f(float %5) #5
  %7 = fcmp oge float %6, 0x3FE3333340000000
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = fmul float %6, 0x4007154760000000
  %10 = call float @llvm.nvvm.ex2.approx.ftz.f(float %9) #5
  %11 = fadd float 1.000000e+00, %10
  %12 = call float asm "rcp.approx.ftz.f32 $0,$1;", "=f,f"(float %11) #6, !srcloc !8
  %13 = call float @llvm.nvvm.fma.rn.f(float %12, float -2.000000e+00, float 1.000000e+00) #5
  %14 = fcmp oge float %6, 0x4022059680000000
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %8
  %17 = phi float [ 1.000000e+00, %15 ], [ %13, %8 ]
  %18 = bitcast float %17 to i32
  %19 = bitcast float %5 to i32
  %20 = and i32 %19, -2147483648
  %21 = or i32 %18, %20
  %22 = bitcast i32 %21 to float
  br label %30

23:                                               ; preds = %1
  %24 = fmul float %5, %5
  %25 = call float @llvm.nvvm.fma.rn.f(float 0x3F901E1040000000, float %24, float 0xBFAAC795C0000000) #5
  %26 = call float @llvm.nvvm.fma.rn.f(float %25, float %24, float 0x3FC10B2820000000) #5
  %27 = call float @llvm.nvvm.fma.rn.f(float %26, float %24, float 0xBFD5553DA0000000) #5
  %28 = call float @llvm.nvvm.fma.rn.f(float %27, float %24, float 0.000000e+00) #5
  %29 = call float @llvm.nvvm.fma.rn.f(float %28, float %5, float %5) #5
  br label %30

30:                                               ; preds = %16, %23
  %31 = phi float [ %22, %16 ], [ %29, %23 ]
  ret float %31
}

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define dso_local ptx_kernel void @_Z20rnn_tanh_step_kernelPKfS0_S0_S0_S0_S0_Pfiii(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #1 {
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  store ptr %0, ptr %11, align 8
  store ptr %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store ptr %4, ptr %15, align 8
  store ptr %5, ptr %16, align 8
  store ptr %6, ptr %17, align 8
  store i32 %7, ptr %18, align 4
  store i32 %8, ptr %19, align 4
  store i32 %9, ptr %20, align 4
  %30 = call noundef range(i32 0, 2147483647) i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %31 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %32 = mul i32 %30, %31
  %33 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %34 = add i32 %32, %33
  store i32 %34, ptr %21, align 4
  %35 = call noundef range(i32 0, 65535) i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  %36 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %37 = mul i32 %35, %36
  %38 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %39 = add i32 %37, %38
  store i32 %39, ptr %22, align 4
  %40 = load i32, ptr %21, align 4
  %41 = load i32, ptr %20, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %10
  %44 = load i32, ptr %22, align 4
  %45 = load i32, ptr %18, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %10
  br label %134

48:                                               ; preds = %43
  %49 = load ptr, ptr %15, align 8
  %50 = load i32, ptr %21, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, ptr %49, i64 %51
  %53 = load float, ptr %52, align 4
  %54 = load ptr, ptr %16, align 8
  %55 = load i32, ptr %21, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, ptr %54, i64 %56
  %58 = load float, ptr %57, align 4
  %59 = fadd contract float %53, %58
  store float %59, ptr %23, align 4
  store i32 0, ptr %24, align 4
  br label %60

60:                                               ; preds = %88, %48
  %61 = load i32, ptr %24, align 4
  %62 = load i32, ptr %19, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %60
  %65 = load ptr, ptr %11, align 8
  %66 = load i32, ptr %22, align 4
  %67 = load i32, ptr %19, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, ptr %24, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, ptr %65, i64 %71
  %73 = load float, ptr %72, align 4
  store float %73, ptr %25, align 4
  %74 = load ptr, ptr %13, align 8
  %75 = load i32, ptr %24, align 4
  %76 = load i32, ptr %20, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, ptr %21, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, ptr %74, i64 %80
  %82 = load float, ptr %81, align 4
  store float %82, ptr %26, align 4
  %83 = load float, ptr %25, align 4
  %84 = load float, ptr %26, align 4
  %85 = fmul contract float %83, %84
  %86 = load float, ptr %23, align 4
  %87 = fadd contract float %86, %85
  store float %87, ptr %23, align 4
  br label %88

88:                                               ; preds = %64
  %89 = load i32, ptr %24, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %24, align 4
  br label %60, !llvm.loop !9

91:                                               ; preds = %60
  store i32 0, ptr %27, align 4
  br label %92

92:                                               ; preds = %120, %91
  %93 = load i32, ptr %27, align 4
  %94 = load i32, ptr %20, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %123

96:                                               ; preds = %92
  %97 = load ptr, ptr %12, align 8
  %98 = load i32, ptr %22, align 4
  %99 = load i32, ptr %20, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, ptr %27, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, ptr %97, i64 %103
  %105 = load float, ptr %104, align 4
  store float %105, ptr %28, align 4
  %106 = load ptr, ptr %14, align 8
  %107 = load i32, ptr %27, align 4
  %108 = load i32, ptr %20, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, ptr %21, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, ptr %106, i64 %112
  %114 = load float, ptr %113, align 4
  store float %114, ptr %29, align 4
  %115 = load float, ptr %28, align 4
  %116 = load float, ptr %29, align 4
  %117 = fmul contract float %115, %116
  %118 = load float, ptr %23, align 4
  %119 = fadd contract float %118, %117
  store float %119, ptr %23, align 4
  br label %120

120:                                              ; preds = %96
  %121 = load i32, ptr %27, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %27, align 4
  br label %92, !llvm.loop !11

123:                                              ; preds = %92
  %124 = load float, ptr %23, align 4
  %125 = call contract noundef float @_Z7d_tanhff(float noundef %124) #7
  %126 = load ptr, ptr %17, align 8
  %127 = load i32, ptr %22, align 4
  %128 = load i32, ptr %20, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, ptr %21, align 4
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, ptr %126, i64 %132
  store float %125, ptr %133, align 4
  br label %134

134:                                              ; preds = %123, %47
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.y() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.y() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.y() #2

; Function Attrs: convergent nounwind
declare i32 @__nvvm_reflect(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fabs.ftz.f(float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fabs.f(float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare float @llvm.nvvm.ex2.approx.ftz.f(float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fma.rn.ftz.f(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fma.rn.f(float, float, float) #2

attributes #0 = { convergent noinline nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" }
attributes #1 = { convergent mustprogress noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" "uniform-work-group-size"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { convergent nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind memory(none) }
attributes #7 = { convergent nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!nvvm.annotations = !{!4}
!llvm.ident = !{!5, !6}
!nvvmir.version = !{!7}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{ptr @_Z20rnn_tanh_step_kernelPKfS0_S0_S0_S0_S0_Pfiii}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!7 = !{i32 2, i32 0}
!8 = !{i32 21287}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
