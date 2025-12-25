; ModuleID = '../input/test.cu'
source_filename = "../input/test.cu"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.__cuda_builtin_blockIdx_t = type { i8 }
%struct.__cuda_builtin_blockDim_t = type { i8 }
%struct.__cuda_builtin_threadIdx_t = type { i8 }

@blockIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_blockIdx_t, align 1
@blockDim = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_blockDim_t, align 1
@threadIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_threadIdx_t, align 1
@.str = private unnamed_addr constant [11 x i8] c"__CUDA_FTZ\00", align 1

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define dso_local ptx_kernel void @_Z6conv2dPfS_S_iiii(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store i32 %3, ptr %11, align 4
  store i32 %4, ptr %12, align 4
  store i32 %5, ptr %13, align 4
  store i32 %6, ptr %14, align 4
  %26 = call noundef range(i32 0, 2147483647) i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %27 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %28 = mul i32 %26, %27
  %29 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %30 = add i32 %28, %29
  store i32 %30, ptr %15, align 4
  %31 = call noundef range(i32 0, 65535) i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  %32 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %33 = mul i32 %31, %32
  %34 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %35 = add i32 %33, %34
  store i32 %35, ptr %16, align 4
  %36 = call noundef range(i32 0, 65535) i32 @llvm.nvvm.read.ptx.sreg.ctaid.z()
  store i32 %36, ptr %17, align 4
  %37 = load i32, ptr %15, align 4
  %38 = load i32, ptr %11, align 4
  %39 = load i32, ptr %12, align 4
  %40 = sub nsw i32 %38, %39
  %41 = add nsw i32 %40, 1
  %42 = icmp sge i32 %37, %41
  br i1 %42, label %54, label %43

43:                                               ; preds = %7
  %44 = load i32, ptr %16, align 4
  %45 = load i32, ptr %11, align 4
  %46 = load i32, ptr %12, align 4
  %47 = sub nsw i32 %45, %46
  %48 = add nsw i32 %47, 1
  %49 = icmp sge i32 %44, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load i32, ptr %17, align 4
  %52 = load i32, ptr %14, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %43, %7
  br label %150

55:                                               ; preds = %50
  store float 0.000000e+00, ptr %18, align 4
  store i32 0, ptr %19, align 4
  br label %56

56:                                               ; preds = %126, %55
  %57 = load i32, ptr %19, align 4
  %58 = load i32, ptr %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %129

60:                                               ; preds = %56
  store i32 0, ptr %20, align 4
  br label %61

61:                                               ; preds = %122, %60
  %62 = load i32, ptr %20, align 4
  %63 = load i32, ptr %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %125

65:                                               ; preds = %61
  store i32 0, ptr %21, align 4
  br label %66

66:                                               ; preds = %118, %65
  %67 = load i32, ptr %21, align 4
  %68 = load i32, ptr %12, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %121

70:                                               ; preds = %66
  %71 = load i32, ptr %19, align 4
  %72 = load i32, ptr %11, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, ptr %11, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, ptr %16, align 4
  %77 = load i32, ptr %21, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, ptr %11, align 4
  %80 = mul nsw i32 %78, %79
  %81 = add nsw i32 %75, %80
  %82 = load i32, ptr %15, align 4
  %83 = load i32, ptr %20, align 4
  %84 = add nsw i32 %82, %83
  %85 = add nsw i32 %81, %84
  store i32 %85, ptr %22, align 4
  %86 = load i32, ptr %17, align 4
  %87 = load i32, ptr %13, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, ptr %12, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, ptr %12, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, ptr %19, align 4
  %94 = load i32, ptr %12, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, ptr %12, align 4
  %97 = mul nsw i32 %95, %96
  %98 = add nsw i32 %92, %97
  %99 = load i32, ptr %20, align 4
  %100 = load i32, ptr %12, align 4
  %101 = mul nsw i32 %99, %100
  %102 = add nsw i32 %98, %101
  %103 = load i32, ptr %21, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, ptr %23, align 4
  %105 = load ptr, ptr %8, align 8
  %106 = load i32, ptr %22, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, ptr %105, i64 %107
  %109 = load float, ptr %108, align 4
  %110 = load ptr, ptr %9, align 8
  %111 = load i32, ptr %23, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, ptr %110, i64 %112
  %114 = load float, ptr %113, align 4
  %115 = fmul contract float %109, %114
  %116 = load float, ptr %18, align 4
  %117 = fadd contract float %116, %115
  store float %117, ptr %18, align 4
  br label %118

118:                                              ; preds = %70
  %119 = load i32, ptr %21, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr %21, align 4
  br label %66, !llvm.loop !12

121:                                              ; preds = %66
  br label %122

122:                                              ; preds = %121
  %123 = load i32, ptr %20, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %20, align 4
  br label %61, !llvm.loop !14

125:                                              ; preds = %61
  br label %126

126:                                              ; preds = %125
  %127 = load i32, ptr %19, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %19, align 4
  br label %56, !llvm.loop !15

129:                                              ; preds = %56
  %130 = load i32, ptr %11, align 4
  %131 = load i32, ptr %12, align 4
  %132 = sub nsw i32 %130, %131
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr %24, align 4
  %134 = load i32, ptr %17, align 4
  %135 = load i32, ptr %24, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i32, ptr %24, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load i32, ptr %16, align 4
  %140 = load i32, ptr %24, align 4
  %141 = mul nsw i32 %139, %140
  %142 = add nsw i32 %138, %141
  %143 = load i32, ptr %15, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, ptr %25, align 4
  %145 = load float, ptr %18, align 4
  %146 = load ptr, ptr %10, align 8
  %147 = load i32, ptr %25, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, ptr %146, i64 %148
  store float %145, ptr %149, align 4
  br label %150

150:                                              ; preds = %129, %54
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind optnone
define dso_local ptx_kernel void @_Z4reluPfS_i(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  %10 = call noundef range(i32 0, 2147483647) i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %11 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %12 = mul i32 %10, %11
  %13 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %14 = add i32 %12, %13
  store i32 %14, ptr %9, align 4
  %15 = load i32, ptr %9, align 4
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load ptr, ptr %6, align 8
  %20 = load i32, ptr %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, ptr %19, i64 %21
  %23 = load float, ptr %22, align 4
  store float 0.000000e+00, ptr %4, align 4
  store float %23, ptr %5, align 4
  %24 = load float, ptr %4, align 4
  %25 = load float, ptr %5, align 4
  %26 = call float @llvm.nvvm.fmax.f(float %24, float %25)
  %27 = load ptr, ptr %7, align 8
  %28 = load i32, ptr %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, ptr %27, i64 %29
  store float %26, ptr %30, align 4
  br label %31

31:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind optnone
define dso_local ptx_kernel void @_Z10max_pool2dPfS_iii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store i32 %2, ptr %10, align 4
  store i32 %3, ptr %11, align 4
  store i32 %4, ptr %12, align 4
  %24 = call noundef range(i32 0, 65535) i32 @llvm.nvvm.read.ptx.sreg.ctaid.z()
  store i32 %24, ptr %13, align 4
  %25 = call noundef range(i32 0, 2147483647) i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %26 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %27 = mul i32 %25, %26
  %28 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %29 = add i32 %27, %28
  store i32 %29, ptr %14, align 4
  %30 = call noundef range(i32 0, 65535) i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  %31 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %32 = mul i32 %30, %31
  %33 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %34 = add i32 %32, %33
  store i32 %34, ptr %15, align 4
  %35 = load i32, ptr %10, align 4
  %36 = load i32, ptr %11, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, ptr %16, align 4
  %38 = load i32, ptr %14, align 4
  %39 = load i32, ptr %16, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %5
  %42 = load i32, ptr %15, align 4
  %43 = load i32, ptr %16, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %13, align 4
  %47 = load i32, ptr %12, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41, %5
  br label %115

50:                                               ; preds = %45
  store float 0xFFF0000000000000, ptr %17, align 4
  store i32 0, ptr %18, align 4
  br label %51

51:                                               ; preds = %95, %50
  %52 = load i32, ptr %18, align 4
  %53 = load i32, ptr %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %51
  store i32 0, ptr %19, align 4
  br label %56

56:                                               ; preds = %91, %55
  %57 = load i32, ptr %19, align 4
  %58 = load i32, ptr %11, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %94

60:                                               ; preds = %56
  %61 = load i32, ptr %15, align 4
  %62 = load i32, ptr %11, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, ptr %19, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, ptr %20, align 4
  %66 = load i32, ptr %14, align 4
  %67 = load i32, ptr %11, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, ptr %18, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, ptr %21, align 4
  %71 = load i32, ptr %13, align 4
  %72 = load i32, ptr %10, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, ptr %10, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, ptr %20, align 4
  %77 = load i32, ptr %10, align 4
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %75, %78
  %80 = load i32, ptr %21, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, ptr %22, align 4
  %82 = load float, ptr %17, align 4
  %83 = load ptr, ptr %8, align 8
  %84 = load i32, ptr %22, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, ptr %83, i64 %85
  %87 = load float, ptr %86, align 4
  store float %82, ptr %6, align 4
  store float %87, ptr %7, align 4
  %88 = load float, ptr %6, align 4
  %89 = load float, ptr %7, align 4
  %90 = call float @llvm.nvvm.fmax.f(float %88, float %89)
  store float %90, ptr %17, align 4
  br label %91

91:                                               ; preds = %60
  %92 = load i32, ptr %19, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %19, align 4
  br label %56, !llvm.loop !16

94:                                               ; preds = %56
  br label %95

95:                                               ; preds = %94
  %96 = load i32, ptr %18, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %18, align 4
  br label %51, !llvm.loop !17

98:                                               ; preds = %51
  %99 = load i32, ptr %13, align 4
  %100 = load i32, ptr %16, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, ptr %16, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, ptr %15, align 4
  %105 = load i32, ptr %16, align 4
  %106 = mul nsw i32 %104, %105
  %107 = add nsw i32 %103, %106
  %108 = load i32, ptr %14, align 4
  %109 = add nsw i32 %107, %108
  store i32 %109, ptr %23, align 4
  %110 = load float, ptr %17, align 4
  %111 = load ptr, ptr %9, align 8
  %112 = load i32, ptr %23, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, ptr %111, i64 %113
  store float %110, ptr %114, align 4
  br label %115

115:                                              ; preds = %98, %49
  ret void
}

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define dso_local ptx_kernel void @_Z8fc_layerPfS_S_S_ii(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store i32 %4, ptr %11, align 4
  store i32 %5, ptr %12, align 4
  %16 = call noundef range(i32 0, 2147483647) i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %17 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %18 = mul i32 %16, %17
  %19 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %20 = add i32 %18, %19
  store i32 %20, ptr %13, align 4
  %21 = load i32, ptr %13, align 4
  %22 = load i32, ptr %12, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %64

25:                                               ; preds = %6
  store float 0.000000e+00, ptr %14, align 4
  store i32 0, ptr %15, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, ptr %15, align 4
  %28 = load i32, ptr %11, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load ptr, ptr %7, align 8
  %32 = load i32, ptr %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, ptr %31, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = load ptr, ptr %8, align 8
  %37 = load i32, ptr %13, align 4
  %38 = load i32, ptr %11, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, ptr %15, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, ptr %36, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = fmul contract float %35, %44
  %46 = load float, ptr %14, align 4
  %47 = fadd contract float %46, %45
  store float %47, ptr %14, align 4
  br label %48

48:                                               ; preds = %30
  %49 = load i32, ptr %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %15, align 4
  br label %26, !llvm.loop !18

51:                                               ; preds = %26
  %52 = load ptr, ptr %9, align 8
  %53 = load i32, ptr %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, ptr %52, i64 %54
  %56 = load float, ptr %55, align 4
  %57 = load float, ptr %14, align 4
  %58 = fadd contract float %57, %56
  store float %58, ptr %14, align 4
  %59 = load float, ptr %14, align 4
  %60 = load ptr, ptr %10, align 8
  %61 = load i32, ptr %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %60, i64 %62
  store float %59, ptr %63, align 4
  br label %64

64:                                               ; preds = %51, %24
  ret void
}

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define dso_local ptx_kernel void @_Z15fc_layer_simplePfS_S_S_ii(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store i32 %4, ptr %11, align 4
  store i32 %5, ptr %12, align 4
  %16 = call noundef range(i32 0, 2147483647) i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %17 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %18 = mul i32 %16, %17
  %19 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %20 = add i32 %18, %19
  store i32 %20, ptr %13, align 4
  %21 = load i32, ptr %13, align 4
  %22 = load i32, ptr %12, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %93

25:                                               ; preds = %6
  store float 0.000000e+00, ptr %14, align 4
  store i32 0, ptr %15, align 4
  %26 = load ptr, ptr %7, align 8
  %27 = load i32, ptr %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, ptr %26, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load ptr, ptr %8, align 8
  %32 = load i32, ptr %13, align 4
  %33 = load i32, ptr %11, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, ptr %15, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, ptr %31, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = fmul contract float %30, %39
  %41 = load float, ptr %14, align 4
  %42 = fadd contract float %41, %40
  store float %42, ptr %14, align 4
  %43 = load i32, ptr %15, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %15, align 4
  %45 = load ptr, ptr %7, align 8
  %46 = load i32, ptr %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, ptr %45, i64 %47
  %49 = load float, ptr %48, align 4
  %50 = load ptr, ptr %8, align 8
  %51 = load i32, ptr %13, align 4
  %52 = load i32, ptr %11, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, ptr %15, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, ptr %50, i64 %56
  %58 = load float, ptr %57, align 4
  %59 = fmul contract float %49, %58
  %60 = load float, ptr %14, align 4
  %61 = fadd contract float %60, %59
  store float %61, ptr %14, align 4
  %62 = load i32, ptr %15, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %15, align 4
  %64 = load ptr, ptr %7, align 8
  %65 = load i32, ptr %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, ptr %64, i64 %66
  %68 = load float, ptr %67, align 4
  %69 = load ptr, ptr %8, align 8
  %70 = load i32, ptr %13, align 4
  %71 = load i32, ptr %11, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, ptr %15, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, ptr %69, i64 %75
  %77 = load float, ptr %76, align 4
  %78 = fmul contract float %68, %77
  %79 = load float, ptr %14, align 4
  %80 = fadd contract float %79, %78
  store float %80, ptr %14, align 4
  %81 = load ptr, ptr %9, align 8
  %82 = load i32, ptr %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, ptr %81, i64 %83
  %85 = load float, ptr %84, align 4
  %86 = load float, ptr %14, align 4
  %87 = fadd contract float %86, %85
  store float %87, ptr %14, align 4
  %88 = load float, ptr %14, align 4
  %89 = load ptr, ptr %10, align 8
  %90 = load i32, ptr %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, ptr %89, i64 %91
  store float %88, ptr %92, align 4
  br label %93

93:                                               ; preds = %25, %24
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.z() #2

; Function Attrs: convergent nounwind
declare i32 @__nvvm_reflect(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fmax.ftz.f(float, float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fmax.f(float, float) #2

attributes #0 = { convergent mustprogress noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" "uniform-work-group-size"="true" }
attributes #1 = { convergent noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" "uniform-work-group-size"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { convergent nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2, !3}
!nvvm.annotations = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9, !10}
!nvvmir.version = !{!11}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{ptr @_Z6conv2dPfS_S_iiii}
!5 = !{ptr @_Z4reluPfS_i}
!6 = !{ptr @_Z10max_pool2dPfS_iii}
!7 = !{ptr @_Z8fc_layerPfS_S_S_ii}
!8 = !{ptr @_Z15fc_layer_simplePfS_S_S_ii}
!9 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!10 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!11 = !{i32 2, i32 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
