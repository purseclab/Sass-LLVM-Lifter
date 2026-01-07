; ModuleID = '../input/gru.cu'
source_filename = "../input/gru.cu"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.__cuda_builtin_threadIdx_t = type { i8 }
%struct.__cuda_builtin_blockIdx_t = type { i8 }
%struct.__cuda_builtin_blockDim_t = type { i8 }

@threadIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_threadIdx_t, align 1
@blockIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_blockIdx_t, align 1
@blockDim = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_blockDim_t, align 1
@.str = private unnamed_addr constant [11 x i8] c"__CUDA_FTZ\00", align 1

; Function Attrs: convergent noinline nounwind optnone
define dso_local noundef float @_Z7sigmoidf(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, ptr %3, align 4
  %4 = load float, ptr %3, align 4
  %5 = fneg contract float %4
  store float %5, ptr %2, align 4
  %6 = load float, ptr %2, align 4
  %7 = call float @llvm.nvvm.fma.rn.f(float %6, float 0x3F777313A0000000, float 5.000000e-01) #5
  %8 = call float @llvm.nvvm.saturate.f(float %7) #5
  %9 = call float @llvm.nvvm.fma.rm.f(float %8, float 2.520000e+02, float 0x4168000020000000) #5
  %10 = fsub float %9, 0x4168000FE0000000
  %11 = fsub float -0.000000e+00, %10
  %12 = call float @llvm.nvvm.fma.rn.f(float %6, float 0x3FF7154760000000, float %11) #5
  %13 = call float @llvm.nvvm.fma.rn.f(float %6, float 0x3E54AE0C00000000, float %12) #5
  %14 = bitcast float %9 to i32
  %15 = shl i32 %14, 23
  %16 = bitcast i32 %15 to float
  %17 = call float @llvm.nvvm.ex2.approx.ftz.f(float %13) #5
  %18 = fmul float %17, %16
  %19 = fadd contract float 1.000000e+00, %18
  %20 = fdiv contract float 1.000000e+00, %19
  ret float %20
}

; Function Attrs: convergent noinline norecurse nounwind optnone
define dso_local ptx_kernel void @_Z11gru_forwardPfS_S_S_iii(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #1 {
  %8 = alloca float, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  store ptr %1, ptr %10, align 8
  store ptr %2, ptr %11, align 8
  store ptr %3, ptr %12, align 8
  store i32 %4, ptr %13, align 4
  store i32 %5, ptr %14, align 4
  store i32 %6, ptr %15, align 4
  %29 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %30 = call noundef range(i32 0, 2147483647) i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %31 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %32 = mul i32 %30, %31
  %33 = add i32 %29, %32
  store i32 %33, ptr %16, align 4
  %34 = load i32, ptr %16, align 4
  %35 = load i32, ptr %14, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %7
  br label %268

38:                                               ; preds = %7
  store i32 0, ptr %17, align 4
  br label %39

39:                                               ; preds = %265, %38
  %40 = load i32, ptr %17, align 4
  %41 = load i32, ptr %15, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %268

43:                                               ; preds = %39
  store float 0.000000e+00, ptr %18, align 4
  store float 0.000000e+00, ptr %19, align 4
  store float 0.000000e+00, ptr %20, align 4
  %44 = load i32, ptr %17, align 4
  %45 = load i32, ptr %13, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, ptr %21, align 4
  %47 = load i32, ptr %16, align 4
  %48 = load i32, ptr %14, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, ptr %22, align 4
  store i32 0, ptr %23, align 4
  br label %50

50:                                               ; preds = %110, %43
  %51 = load i32, ptr %23, align 4
  %52 = load i32, ptr %13, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %113

54:                                               ; preds = %50
  %55 = load i32, ptr %16, align 4
  %56 = load i32, ptr %13, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, ptr %23, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, ptr %24, align 4
  %60 = load ptr, ptr %9, align 8
  %61 = load i32, ptr %21, align 4
  %62 = load i32, ptr %23, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, ptr %60, i64 %64
  %66 = load float, ptr %65, align 4
  %67 = load ptr, ptr %11, align 8
  %68 = load i32, ptr %24, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, ptr %67, i64 %69
  %71 = load float, ptr %70, align 4
  %72 = fmul contract float %66, %71
  %73 = load float, ptr %18, align 4
  %74 = fadd contract float %73, %72
  store float %74, ptr %18, align 4
  %75 = load ptr, ptr %9, align 8
  %76 = load i32, ptr %21, align 4
  %77 = load i32, ptr %23, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, ptr %75, i64 %79
  %81 = load float, ptr %80, align 4
  %82 = load ptr, ptr %11, align 8
  %83 = load i32, ptr %24, align 4
  %84 = load i32, ptr %14, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, ptr %82, i64 %86
  %88 = load float, ptr %87, align 4
  %89 = fmul contract float %81, %88
  %90 = load float, ptr %19, align 4
  %91 = fadd contract float %90, %89
  store float %91, ptr %19, align 4
  %92 = load ptr, ptr %9, align 8
  %93 = load i32, ptr %21, align 4
  %94 = load i32, ptr %23, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, ptr %92, i64 %96
  %98 = load float, ptr %97, align 4
  %99 = load ptr, ptr %11, align 8
  %100 = load i32, ptr %24, align 4
  %101 = load i32, ptr %14, align 4
  %102 = mul nsw i32 2, %101
  %103 = add nsw i32 %100, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, ptr %99, i64 %104
  %106 = load float, ptr %105, align 4
  %107 = fmul contract float %98, %106
  %108 = load float, ptr %20, align 4
  %109 = fadd contract float %108, %107
  store float %109, ptr %20, align 4
  br label %110

110:                                              ; preds = %54
  %111 = load i32, ptr %23, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %23, align 4
  br label %50, !llvm.loop !8

113:                                              ; preds = %50
  store i32 0, ptr %25, align 4
  br label %114

114:                                              ; preds = %158, %113
  %115 = load i32, ptr %25, align 4
  %116 = load i32, ptr %14, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %161

118:                                              ; preds = %114
  %119 = load i32, ptr %22, align 4
  %120 = load i32, ptr %25, align 4
  %121 = add nsw i32 %119, %120
  store i32 %121, ptr %26, align 4
  %122 = load ptr, ptr %10, align 8
  %123 = load i32, ptr %25, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, ptr %122, i64 %124
  %126 = load float, ptr %125, align 4
  %127 = load ptr, ptr %11, align 8
  %128 = load i32, ptr %26, align 4
  %129 = load i32, ptr %14, align 4
  %130 = mul nsw i32 3, %129
  %131 = load i32, ptr %13, align 4
  %132 = mul nsw i32 %130, %131
  %133 = add nsw i32 %128, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, ptr %127, i64 %134
  %136 = load float, ptr %135, align 4
  %137 = fmul contract float %126, %136
  %138 = load float, ptr %18, align 4
  %139 = fadd contract float %138, %137
  store float %139, ptr %18, align 4
  %140 = load ptr, ptr %10, align 8
  %141 = load i32, ptr %25, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, ptr %140, i64 %142
  %144 = load float, ptr %143, align 4
  %145 = load ptr, ptr %11, align 8
  %146 = load i32, ptr %26, align 4
  %147 = load i32, ptr %14, align 4
  %148 = mul nsw i32 4, %147
  %149 = load i32, ptr %13, align 4
  %150 = mul nsw i32 %148, %149
  %151 = add nsw i32 %146, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, ptr %145, i64 %152
  %154 = load float, ptr %153, align 4
  %155 = fmul contract float %144, %154
  %156 = load float, ptr %19, align 4
  %157 = fadd contract float %156, %155
  store float %157, ptr %19, align 4
  br label %158

158:                                              ; preds = %118
  %159 = load i32, ptr %25, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr %25, align 4
  br label %114, !llvm.loop !10

161:                                              ; preds = %114
  %162 = load float, ptr %18, align 4
  %163 = load ptr, ptr %12, align 8
  %164 = load i32, ptr %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, ptr %163, i64 %165
  %167 = load float, ptr %166, align 4
  %168 = fadd contract float %162, %167
  %169 = call contract noundef float @_Z7sigmoidf(float noundef %168) #6
  store float %169, ptr %18, align 4
  %170 = load float, ptr %19, align 4
  %171 = load ptr, ptr %12, align 8
  %172 = load i32, ptr %16, align 4
  %173 = load i32, ptr %14, align 4
  %174 = add nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, ptr %171, i64 %175
  %177 = load float, ptr %176, align 4
  %178 = fadd contract float %170, %177
  %179 = call contract noundef float @_Z7sigmoidf(float noundef %178) #6
  store float %179, ptr %19, align 4
  store i32 0, ptr %27, align 4
  br label %180

180:                                              ; preds = %208, %161
  %181 = load i32, ptr %27, align 4
  %182 = load i32, ptr %14, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %211

184:                                              ; preds = %180
  %185 = load i32, ptr %22, align 4
  %186 = load i32, ptr %27, align 4
  %187 = add nsw i32 %185, %186
  store i32 %187, ptr %28, align 4
  %188 = load float, ptr %18, align 4
  %189 = load ptr, ptr %10, align 8
  %190 = load i32, ptr %27, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, ptr %189, i64 %191
  %193 = load float, ptr %192, align 4
  %194 = fmul contract float %188, %193
  %195 = load ptr, ptr %11, align 8
  %196 = load i32, ptr %28, align 4
  %197 = load i32, ptr %14, align 4
  %198 = mul nsw i32 5, %197
  %199 = load i32, ptr %13, align 4
  %200 = mul nsw i32 %198, %199
  %201 = add nsw i32 %196, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, ptr %195, i64 %202
  %204 = load float, ptr %203, align 4
  %205 = fmul contract float %194, %204
  %206 = load float, ptr %20, align 4
  %207 = fadd contract float %206, %205
  store float %207, ptr %20, align 4
  br label %208

208:                                              ; preds = %184
  %209 = load i32, ptr %27, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr %27, align 4
  br label %180, !llvm.loop !11

211:                                              ; preds = %180
  %212 = load float, ptr %20, align 4
  %213 = load ptr, ptr %12, align 8
  %214 = load i32, ptr %16, align 4
  %215 = load i32, ptr %14, align 4
  %216 = mul nsw i32 2, %215
  %217 = add nsw i32 %214, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, ptr %213, i64 %218
  %220 = load float, ptr %219, align 4
  %221 = fadd contract float %212, %220
  store float %221, ptr %8, align 4
  %222 = load float, ptr %8, align 4
  %223 = call float @llvm.nvvm.fabs.f(float %222) #5
  %224 = fcmp oge float %223, 0x3FE3333340000000
  br i1 %224, label %225, label %240

225:                                              ; preds = %211
  %226 = fmul float %223, 0x4007154760000000
  %227 = call float @llvm.nvvm.ex2.approx.ftz.f(float %226) #5
  %228 = fadd float 1.000000e+00, %227
  %229 = call float asm "rcp.approx.ftz.f32 $0,$1;", "=f,f"(float %228) #7, !srcloc !12
  %230 = call float @llvm.nvvm.fma.rn.f(float %229, float -2.000000e+00, float 1.000000e+00) #5
  %231 = fcmp oge float %223, 0x4022059680000000
  br i1 %231, label %232, label %233

232:                                              ; preds = %225
  br label %233

233:                                              ; preds = %232, %225
  %234 = phi float [ 1.000000e+00, %232 ], [ %230, %225 ]
  %235 = bitcast float %234 to i32
  %236 = bitcast float %222 to i32
  %237 = and i32 %236, -2147483648
  %238 = or i32 %235, %237
  %239 = bitcast i32 %238 to float
  br label %247

240:                                              ; preds = %211
  %241 = fmul float %222, %222
  %242 = call float @llvm.nvvm.fma.rn.f(float 0x3F901E1040000000, float %241, float 0xBFAAC795C0000000) #5
  %243 = call float @llvm.nvvm.fma.rn.f(float %242, float %241, float 0x3FC10B2820000000) #5
  %244 = call float @llvm.nvvm.fma.rn.f(float %243, float %241, float 0xBFD5553DA0000000) #5
  %245 = call float @llvm.nvvm.fma.rn.f(float %244, float %241, float 0.000000e+00) #5
  %246 = call float @llvm.nvvm.fma.rn.f(float %245, float %222, float %222) #5
  br label %247

247:                                              ; preds = %233, %240
  %248 = phi float [ %239, %233 ], [ %246, %240 ]
  store float %248, ptr %20, align 4
  %249 = load float, ptr %19, align 4
  %250 = fsub contract float 1.000000e+00, %249
  %251 = load float, ptr %20, align 4
  %252 = fmul contract float %250, %251
  %253 = load float, ptr %19, align 4
  %254 = load ptr, ptr %10, align 8
  %255 = load i32, ptr %16, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, ptr %254, i64 %256
  %258 = load float, ptr %257, align 4
  %259 = fmul contract float %253, %258
  %260 = fadd contract float %252, %259
  %261 = load ptr, ptr %10, align 8
  %262 = load i32, ptr %16, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, ptr %261, i64 %263
  store float %260, ptr %264, align 4
  br label %265

265:                                              ; preds = %247
  %266 = load i32, ptr %17, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, ptr %17, align 4
  br label %39, !llvm.loop !13

268:                                              ; preds = %37, %39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #2

; Function Attrs: convergent nounwind
declare i32 @__nvvm_reflect(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fma.rn.ftz.f(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fma.rn.f(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.saturate.ftz.f(float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.saturate.f(float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fma.rm.ftz.f(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fma.rm.f(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare float @llvm.nvvm.ex2.approx.ftz.f(float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fabs.ftz.f(float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nvvm.fabs.f(float) #2

attributes #0 = { convergent noinline nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" }
attributes #1 = { convergent noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" "uniform-work-group-size"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { convergent nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { convergent nounwind }
attributes #7 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!nvvm.annotations = !{!4}
!llvm.ident = !{!5, !6}
!nvvmir.version = !{!7}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{ptr @_Z11gru_forwardPfS_S_S_iii}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!7 = !{i32 2, i32 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = !{i32 21287}
!13 = distinct !{!13, !9}
