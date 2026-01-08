; ModuleID = '../input/lstm.cu'
source_filename = "../input/lstm.cu"
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
define dso_local noundef float @_Z9d_sigmoidf(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, ptr %3, align 4
  %4 = load float, ptr %3, align 4
  %5 = fneg contract float %4
  store float %5, ptr %2, align 4
  %6 = load float, ptr %2, align 4
  %7 = call float @llvm.nvvm.fma.rn.f(float %6, float 0x3F777313A0000000, float 5.000000e-01) #6
  %8 = call float @llvm.nvvm.saturate.f(float %7) #6
  %9 = call float @llvm.nvvm.fma.rm.f(float %8, float 2.520000e+02, float 0x4168000020000000) #6
  %10 = fsub float %9, 0x4168000FE0000000
  %11 = fsub float -0.000000e+00, %10
  %12 = call float @llvm.nvvm.fma.rn.f(float %6, float 0x3FF7154760000000, float %11) #6
  %13 = call float @llvm.nvvm.fma.rn.f(float %6, float 0x3E54AE0C00000000, float %12) #6
  %14 = bitcast float %9 to i32
  %15 = shl i32 %14, 23
  %16 = bitcast i32 %15 to float
  %17 = call float @llvm.nvvm.ex2.approx.ftz.f(float %13) #6
  %18 = fmul float %17, %16
  %19 = fadd contract float 1.000000e+00, %18
  %20 = fdiv contract float 1.000000e+00, %19
  ret float %20
}

; Function Attrs: convergent noinline nounwind optnone
define dso_local noundef float @_Z7d_tanhff(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, ptr %3, align 4
  %4 = load float, ptr %3, align 4
  store float %4, ptr %2, align 4
  %5 = load float, ptr %2, align 4
  %6 = call float @llvm.nvvm.fabs.f(float %5) #6
  %7 = fcmp oge float %6, 0x3FE3333340000000
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = fmul float %6, 0x4007154760000000
  %10 = call float @llvm.nvvm.ex2.approx.ftz.f(float %9) #6
  %11 = fadd float 1.000000e+00, %10
  %12 = call float asm "rcp.approx.ftz.f32 $0,$1;", "=f,f"(float %11) #7, !srcloc !8
  %13 = call float @llvm.nvvm.fma.rn.f(float %12, float -2.000000e+00, float 1.000000e+00) #6
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
  %25 = call float @llvm.nvvm.fma.rn.f(float 0x3F901E1040000000, float %24, float 0xBFAAC795C0000000) #6
  %26 = call float @llvm.nvvm.fma.rn.f(float %25, float %24, float 0x3FC10B2820000000) #6
  %27 = call float @llvm.nvvm.fma.rn.f(float %26, float %24, float 0xBFD5553DA0000000) #6
  %28 = call float @llvm.nvvm.fma.rn.f(float %27, float %24, float 0.000000e+00) #6
  %29 = call float @llvm.nvvm.fma.rn.f(float %28, float %5, float %5) #6
  br label %30

30:                                               ; preds = %16, %23
  %31 = phi float [ %22, %16 ], [ %29, %23 ]
  ret float %31
}

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define dso_local ptx_kernel void @_Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, ptr noalias noundef %7, ptr noalias noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) #1 {
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [4 x float], align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca float, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca float, align 4
  %36 = alloca i32, align 4
  %37 = alloca float, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  %45 = alloca float, align 4
  %46 = alloca float, align 4
  %47 = alloca float, align 4
  store ptr %0, ptr %13, align 8
  store ptr %1, ptr %14, align 8
  store ptr %2, ptr %15, align 8
  store ptr %3, ptr %16, align 8
  store ptr %4, ptr %17, align 8
  store ptr %5, ptr %18, align 8
  store ptr %6, ptr %19, align 8
  store ptr %7, ptr %20, align 8
  store ptr %8, ptr %21, align 8
  store i32 %9, ptr %22, align 4
  store i32 %10, ptr %23, align 4
  store i32 %11, ptr %24, align 4
  %48 = call noundef range(i32 0, 2147483647) i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %49 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %50 = mul i32 %48, %49
  %51 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %52 = add i32 %50, %51
  store i32 %52, ptr %25, align 4
  %53 = call noundef range(i32 0, 65535) i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  %54 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  %55 = mul i32 %53, %54
  %56 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %57 = add i32 %55, %56
  store i32 %57, ptr %26, align 4
  %58 = load i32, ptr %25, align 4
  %59 = load i32, ptr %24, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %12
  %62 = load i32, ptr %26, align 4
  %63 = load i32, ptr %22, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %12
  br label %243

66:                                               ; preds = %61
  %67 = load i32, ptr %24, align 4
  store i32 %67, ptr %27, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %28, i8 0, i64 16, i1 false)
  store i32 0, ptr %29, align 4
  br label %68

68:                                               ; preds = %91, %66
  %69 = load i32, ptr %29, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %94

71:                                               ; preds = %68
  %72 = load i32, ptr %29, align 4
  %73 = load i32, ptr %27, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, ptr %25, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, ptr %30, align 4
  %77 = load ptr, ptr %18, align 8
  %78 = load i32, ptr %30, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, ptr %77, i64 %79
  %81 = load float, ptr %80, align 4
  %82 = load ptr, ptr %19, align 8
  %83 = load i32, ptr %30, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, ptr %82, i64 %84
  %86 = load float, ptr %85, align 4
  %87 = fadd contract float %81, %86
  %88 = load i32, ptr %29, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x float], ptr %28, i64 0, i64 %89
  store float %87, ptr %90, align 4
  br label %91

91:                                               ; preds = %71
  %92 = load i32, ptr %29, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %29, align 4
  br label %68, !llvm.loop !9

94:                                               ; preds = %68
  store i32 0, ptr %31, align 4
  br label %95

95:                                               ; preds = %140, %94
  %96 = load i32, ptr %31, align 4
  %97 = load i32, ptr %23, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %143

99:                                               ; preds = %95
  %100 = load ptr, ptr %13, align 8
  %101 = load i32, ptr %26, align 4
  %102 = load i32, ptr %23, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, ptr %31, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, ptr %100, i64 %106
  %108 = load float, ptr %107, align 4
  store float %108, ptr %32, align 4
  store i32 0, ptr %33, align 4
  br label %109

109:                                              ; preds = %136, %99
  %110 = load i32, ptr %33, align 4
  %111 = icmp slt i32 %110, 4
  br i1 %111, label %112, label %139

112:                                              ; preds = %109
  %113 = load i32, ptr %31, align 4
  %114 = load i32, ptr %27, align 4
  %115 = mul nsw i32 4, %114
  %116 = mul nsw i32 %113, %115
  %117 = load i32, ptr %33, align 4
  %118 = load i32, ptr %27, align 4
  %119 = mul nsw i32 %117, %118
  %120 = add nsw i32 %116, %119
  %121 = load i32, ptr %25, align 4
  %122 = add nsw i32 %120, %121
  store i32 %122, ptr %34, align 4
  %123 = load ptr, ptr %16, align 8
  %124 = load i32, ptr %34, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, ptr %123, i64 %125
  %127 = load float, ptr %126, align 4
  store float %127, ptr %35, align 4
  %128 = load float, ptr %32, align 4
  %129 = load float, ptr %35, align 4
  %130 = fmul contract float %128, %129
  %131 = load i32, ptr %33, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [4 x float], ptr %28, i64 0, i64 %132
  %134 = load float, ptr %133, align 4
  %135 = fadd contract float %134, %130
  store float %135, ptr %133, align 4
  br label %136

136:                                              ; preds = %112
  %137 = load i32, ptr %33, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr %33, align 4
  br label %109, !llvm.loop !11

139:                                              ; preds = %109
  br label %140

140:                                              ; preds = %139
  %141 = load i32, ptr %31, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr %31, align 4
  br label %95, !llvm.loop !12

143:                                              ; preds = %95
  store i32 0, ptr %36, align 4
  br label %144

144:                                              ; preds = %189, %143
  %145 = load i32, ptr %36, align 4
  %146 = load i32, ptr %24, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %192

148:                                              ; preds = %144
  %149 = load ptr, ptr %14, align 8
  %150 = load i32, ptr %26, align 4
  %151 = load i32, ptr %24, align 4
  %152 = mul nsw i32 %150, %151
  %153 = load i32, ptr %36, align 4
  %154 = add nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, ptr %149, i64 %155
  %157 = load float, ptr %156, align 4
  store float %157, ptr %37, align 4
  store i32 0, ptr %38, align 4
  br label %158

158:                                              ; preds = %185, %148
  %159 = load i32, ptr %38, align 4
  %160 = icmp slt i32 %159, 4
  br i1 %160, label %161, label %188

161:                                              ; preds = %158
  %162 = load i32, ptr %36, align 4
  %163 = load i32, ptr %27, align 4
  %164 = mul nsw i32 4, %163
  %165 = mul nsw i32 %162, %164
  %166 = load i32, ptr %38, align 4
  %167 = load i32, ptr %27, align 4
  %168 = mul nsw i32 %166, %167
  %169 = add nsw i32 %165, %168
  %170 = load i32, ptr %25, align 4
  %171 = add nsw i32 %169, %170
  store i32 %171, ptr %39, align 4
  %172 = load ptr, ptr %17, align 8
  %173 = load i32, ptr %39, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, ptr %172, i64 %174
  %176 = load float, ptr %175, align 4
  store float %176, ptr %40, align 4
  %177 = load float, ptr %37, align 4
  %178 = load float, ptr %40, align 4
  %179 = fmul contract float %177, %178
  %180 = load i32, ptr %38, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [4 x float], ptr %28, i64 0, i64 %181
  %183 = load float, ptr %182, align 4
  %184 = fadd contract float %183, %179
  store float %184, ptr %182, align 4
  br label %185

185:                                              ; preds = %161
  %186 = load i32, ptr %38, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %38, align 4
  br label %158, !llvm.loop !13

188:                                              ; preds = %158
  br label %189

189:                                              ; preds = %188
  %190 = load i32, ptr %36, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr %36, align 4
  br label %144, !llvm.loop !14

192:                                              ; preds = %144
  %193 = getelementptr inbounds [4 x float], ptr %28, i64 0, i64 0
  %194 = load float, ptr %193, align 4
  %195 = call contract noundef float @_Z9d_sigmoidf(float noundef %194) #8
  store float %195, ptr %41, align 4
  %196 = getelementptr inbounds [4 x float], ptr %28, i64 0, i64 1
  %197 = load float, ptr %196, align 4
  %198 = call contract noundef float @_Z9d_sigmoidf(float noundef %197) #8
  store float %198, ptr %42, align 4
  %199 = getelementptr inbounds [4 x float], ptr %28, i64 0, i64 2
  %200 = load float, ptr %199, align 4
  %201 = call contract noundef float @_Z7d_tanhff(float noundef %200) #8
  store float %201, ptr %43, align 4
  %202 = getelementptr inbounds [4 x float], ptr %28, i64 0, i64 3
  %203 = load float, ptr %202, align 4
  %204 = call contract noundef float @_Z9d_sigmoidf(float noundef %203) #8
  store float %204, ptr %44, align 4
  %205 = load ptr, ptr %15, align 8
  %206 = load i32, ptr %26, align 4
  %207 = load i32, ptr %27, align 4
  %208 = mul nsw i32 %206, %207
  %209 = load i32, ptr %25, align 4
  %210 = add nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, ptr %205, i64 %211
  %213 = load float, ptr %212, align 4
  store float %213, ptr %45, align 4
  %214 = load float, ptr %42, align 4
  %215 = load float, ptr %45, align 4
  %216 = fmul contract float %214, %215
  %217 = load float, ptr %41, align 4
  %218 = load float, ptr %43, align 4
  %219 = fmul contract float %217, %218
  %220 = fadd contract float %216, %219
  store float %220, ptr %46, align 4
  %221 = load float, ptr %44, align 4
  %222 = load float, ptr %46, align 4
  %223 = call contract noundef float @_Z7d_tanhff(float noundef %222) #8
  %224 = fmul contract float %221, %223
  store float %224, ptr %47, align 4
  %225 = load float, ptr %46, align 4
  %226 = load ptr, ptr %21, align 8
  %227 = load i32, ptr %26, align 4
  %228 = load i32, ptr %27, align 4
  %229 = mul nsw i32 %227, %228
  %230 = load i32, ptr %25, align 4
  %231 = add nsw i32 %229, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, ptr %226, i64 %232
  store float %225, ptr %233, align 4
  %234 = load float, ptr %47, align 4
  %235 = load ptr, ptr %20, align 8
  %236 = load i32, ptr %26, align 4
  %237 = load i32, ptr %27, align 4
  %238 = mul nsw i32 %236, %237
  %239 = load i32, ptr %25, align 4
  %240 = add nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, ptr %235, i64 %241
  store float %234, ptr %242, align 4
  br label %243

243:                                              ; preds = %192, %65
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.y() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.y() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.y() #3

; Function Attrs: convergent nounwind
declare i32 @__nvvm_reflect(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fma.rn.ftz.f(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fma.rn.f(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.saturate.ftz.f(float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.saturate.f(float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fma.rm.ftz.f(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fma.rm.f(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare float @llvm.nvvm.ex2.approx.ftz.f(float) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fabs.ftz.f(float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fabs.f(float) #3

attributes #0 = { convergent noinline nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" }
attributes #1 = { convergent mustprogress noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" "uniform-work-group-size"="true" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { convergent nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind memory(none) }
attributes #8 = { convergent nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!nvvm.annotations = !{!4}
!llvm.ident = !{!5, !6}
!nvvmir.version = !{!7}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{ptr @_Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!7 = !{i32 2, i32 0}
!8 = !{i32 21287}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
