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
@.str = private unnamed_addr constant [11 x i8] c"__CUDA_FTZ\00", align 1

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
  br label %45, !llvm.loop !10

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

; Function Attrs: convergent noinline norecurse nounwind optnone
define dso_local ptx_kernel void @_Z24attention_forward_kernelPKfS0_S0_Pfii(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca float, align 4
  %35 = alloca i32, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca i32, align 4
  store ptr %0, ptr %10, align 8
  store ptr %1, ptr %11, align 8
  store ptr %2, ptr %12, align 8
  store ptr %3, ptr %13, align 8
  store i32 %4, ptr %14, align 4
  store i32 %5, ptr %15, align 4
  %41 = call noundef range(i32 0, 2147483647) i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %42 = call noundef range(i32 1, 1025) i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  %43 = mul i32 %41, %42
  %44 = call noundef range(i32 0, 1024) i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %45 = add i32 %43, %44
  store i32 %45, ptr %16, align 4
  %46 = load i32, ptr %16, align 4
  %47 = load i32, ptr %14, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %6
  br label %275

50:                                               ; preds = %6
  %51 = load i32, ptr %15, align 4
  %52 = sitofp i32 %51 to float
  store float %52, ptr %9, align 4
  %53 = load float, ptr %9, align 4
  %54 = call float @llvm.nvvm.rsqrt.approx.f(float %53)
  store float %54, ptr %17, align 4
  store float 0xC6293E5940000000, ptr %18, align 4
  store i32 0, ptr %19, align 4
  br label %55

55:                                               ; preds = %101, %50
  %56 = load i32, ptr %19, align 4
  %57 = load i32, ptr %14, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %104

59:                                               ; preds = %55
  store float 0.000000e+00, ptr %20, align 4
  store i32 0, ptr %21, align 4
  br label %60

60:                                               ; preds = %88, %59
  %61 = load i32, ptr %21, align 4
  %62 = load i32, ptr %15, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %60
  %65 = load ptr, ptr %10, align 8
  %66 = load i32, ptr %16, align 4
  %67 = load i32, ptr %15, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, ptr %21, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, ptr %65, i64 %71
  %73 = load float, ptr %72, align 4
  store float %73, ptr %22, align 4
  %74 = load ptr, ptr %11, align 8
  %75 = load i32, ptr %19, align 4
  %76 = load i32, ptr %15, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, ptr %21, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, ptr %74, i64 %80
  %82 = load float, ptr %81, align 4
  store float %82, ptr %23, align 4
  %83 = load float, ptr %22, align 4
  %84 = load float, ptr %23, align 4
  %85 = fmul contract float %83, %84
  %86 = load float, ptr %20, align 4
  %87 = fadd contract float %86, %85
  store float %87, ptr %20, align 4
  br label %88

88:                                               ; preds = %64
  %89 = load i32, ptr %21, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %21, align 4
  br label %60, !llvm.loop !12

91:                                               ; preds = %60
  %92 = load float, ptr %20, align 4
  %93 = load float, ptr %17, align 4
  %94 = fmul contract float %92, %93
  store float %94, ptr %24, align 4
  %95 = load float, ptr %24, align 4
  %96 = load float, ptr %18, align 4
  %97 = fcmp contract ogt float %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load float, ptr %24, align 4
  store float %99, ptr %18, align 4
  br label %100

100:                                              ; preds = %98, %91
  br label %101

101:                                              ; preds = %100
  %102 = load i32, ptr %19, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %19, align 4
  br label %55, !llvm.loop !13

104:                                              ; preds = %55
  store float 0.000000e+00, ptr %25, align 4
  store i32 0, ptr %26, align 4
  br label %105

105:                                              ; preds = %163, %104
  %106 = load i32, ptr %26, align 4
  %107 = load i32, ptr %14, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %166

109:                                              ; preds = %105
  store float 0.000000e+00, ptr %27, align 4
  store i32 0, ptr %28, align 4
  br label %110

110:                                              ; preds = %138, %109
  %111 = load i32, ptr %28, align 4
  %112 = load i32, ptr %15, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %141

114:                                              ; preds = %110
  %115 = load ptr, ptr %10, align 8
  %116 = load i32, ptr %16, align 4
  %117 = load i32, ptr %15, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, ptr %28, align 4
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, ptr %115, i64 %121
  %123 = load float, ptr %122, align 4
  store float %123, ptr %29, align 4
  %124 = load ptr, ptr %11, align 8
  %125 = load i32, ptr %26, align 4
  %126 = load i32, ptr %15, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, ptr %28, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, ptr %124, i64 %130
  %132 = load float, ptr %131, align 4
  store float %132, ptr %30, align 4
  %133 = load float, ptr %29, align 4
  %134 = load float, ptr %30, align 4
  %135 = fmul contract float %133, %134
  %136 = load float, ptr %27, align 4
  %137 = fadd contract float %136, %135
  store float %137, ptr %27, align 4
  br label %138

138:                                              ; preds = %114
  %139 = load i32, ptr %28, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, ptr %28, align 4
  br label %110, !llvm.loop !14

141:                                              ; preds = %110
  %142 = load float, ptr %27, align 4
  %143 = load float, ptr %17, align 4
  %144 = fmul contract float %142, %143
  store float %144, ptr %31, align 4
  %145 = load float, ptr %31, align 4
  %146 = load float, ptr %18, align 4
  %147 = fsub contract float %145, %146
  store float %147, ptr %7, align 4
  %148 = load float, ptr %7, align 4
  %149 = call float @llvm.nvvm.fma.rn.f(float %148, float 0x3F777313A0000000, float 5.000000e-01) #5
  %150 = call float @llvm.nvvm.saturate.f(float %149) #5
  %151 = call float @llvm.nvvm.fma.rm.f(float %150, float 2.520000e+02, float 0x4168000020000000) #5
  %152 = fsub float %151, 0x4168000FE0000000
  %153 = fsub float -0.000000e+00, %152
  %154 = call float @llvm.nvvm.fma.rn.f(float %148, float 0x3FF7154760000000, float %153) #5
  %155 = call float @llvm.nvvm.fma.rn.f(float %148, float 0x3E54AE0C00000000, float %154) #5
  %156 = bitcast float %151 to i32
  %157 = shl i32 %156, 23
  %158 = bitcast i32 %157 to float
  %159 = call float @llvm.nvvm.ex2.approx.ftz.f(float %155) #5
  %160 = fmul float %159, %158
  %161 = load float, ptr %25, align 4
  %162 = fadd contract float %161, %160
  store float %162, ptr %25, align 4
  br label %163

163:                                              ; preds = %141
  %164 = load i32, ptr %26, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %26, align 4
  br label %105, !llvm.loop !15

166:                                              ; preds = %105
  store i32 0, ptr %32, align 4
  br label %167

167:                                              ; preds = %180, %166
  %168 = load i32, ptr %32, align 4
  %169 = load i32, ptr %15, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %167
  %172 = load ptr, ptr %13, align 8
  %173 = load i32, ptr %16, align 4
  %174 = load i32, ptr %15, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load i32, ptr %32, align 4
  %177 = add nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, ptr %172, i64 %178
  store float 0.000000e+00, ptr %179, align 4
  br label %180

180:                                              ; preds = %171
  %181 = load i32, ptr %32, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, ptr %32, align 4
  br label %167, !llvm.loop !16

183:                                              ; preds = %167
  store i32 0, ptr %33, align 4
  br label %184

184:                                              ; preds = %272, %183
  %185 = load i32, ptr %33, align 4
  %186 = load i32, ptr %14, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %275

188:                                              ; preds = %184
  store float 0.000000e+00, ptr %34, align 4
  store i32 0, ptr %35, align 4
  br label %189

189:                                              ; preds = %217, %188
  %190 = load i32, ptr %35, align 4
  %191 = load i32, ptr %15, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %220

193:                                              ; preds = %189
  %194 = load ptr, ptr %10, align 8
  %195 = load i32, ptr %16, align 4
  %196 = load i32, ptr %15, align 4
  %197 = mul nsw i32 %195, %196
  %198 = load i32, ptr %35, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, ptr %194, i64 %200
  %202 = load float, ptr %201, align 4
  store float %202, ptr %36, align 4
  %203 = load ptr, ptr %11, align 8
  %204 = load i32, ptr %33, align 4
  %205 = load i32, ptr %15, align 4
  %206 = mul nsw i32 %204, %205
  %207 = load i32, ptr %35, align 4
  %208 = add nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, ptr %203, i64 %209
  %211 = load float, ptr %210, align 4
  store float %211, ptr %37, align 4
  %212 = load float, ptr %36, align 4
  %213 = load float, ptr %37, align 4
  %214 = fmul contract float %212, %213
  %215 = load float, ptr %34, align 4
  %216 = fadd contract float %215, %214
  store float %216, ptr %34, align 4
  br label %217

217:                                              ; preds = %193
  %218 = load i32, ptr %35, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, ptr %35, align 4
  br label %189, !llvm.loop !17

220:                                              ; preds = %189
  %221 = load float, ptr %34, align 4
  %222 = load float, ptr %17, align 4
  %223 = fmul contract float %221, %222
  store float %223, ptr %38, align 4
  %224 = load float, ptr %38, align 4
  %225 = load float, ptr %18, align 4
  %226 = fsub contract float %224, %225
  store float %226, ptr %8, align 4
  %227 = load float, ptr %8, align 4
  %228 = call float @llvm.nvvm.fma.rn.f(float %227, float 0x3F777313A0000000, float 5.000000e-01) #5
  %229 = call float @llvm.nvvm.saturate.f(float %228) #5
  %230 = call float @llvm.nvvm.fma.rm.f(float %229, float 2.520000e+02, float 0x4168000020000000) #5
  %231 = fsub float %230, 0x4168000FE0000000
  %232 = fsub float -0.000000e+00, %231
  %233 = call float @llvm.nvvm.fma.rn.f(float %227, float 0x3FF7154760000000, float %232) #5
  %234 = call float @llvm.nvvm.fma.rn.f(float %227, float 0x3E54AE0C00000000, float %233) #5
  %235 = bitcast float %230 to i32
  %236 = shl i32 %235, 23
  %237 = bitcast i32 %236 to float
  %238 = call float @llvm.nvvm.ex2.approx.ftz.f(float %234) #5
  %239 = fmul float %238, %237
  %240 = load float, ptr %25, align 4
  %241 = fdiv contract float %239, %240
  store float %241, ptr %39, align 4
  store i32 0, ptr %40, align 4
  br label %242

242:                                              ; preds = %268, %220
  %243 = load i32, ptr %40, align 4
  %244 = load i32, ptr %15, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %271

246:                                              ; preds = %242
  %247 = load float, ptr %39, align 4
  %248 = load ptr, ptr %12, align 8
  %249 = load i32, ptr %33, align 4
  %250 = load i32, ptr %15, align 4
  %251 = mul nsw i32 %249, %250
  %252 = load i32, ptr %40, align 4
  %253 = add nsw i32 %251, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, ptr %248, i64 %254
  %256 = load float, ptr %255, align 4
  %257 = fmul contract float %247, %256
  %258 = load ptr, ptr %13, align 8
  %259 = load i32, ptr %16, align 4
  %260 = load i32, ptr %15, align 4
  %261 = mul nsw i32 %259, %260
  %262 = load i32, ptr %40, align 4
  %263 = add nsw i32 %261, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, ptr %258, i64 %264
  %266 = load float, ptr %265, align 4
  %267 = fadd contract float %266, %257
  store float %267, ptr %265, align 4
  br label %268

268:                                              ; preds = %246
  %269 = load i32, ptr %40, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, ptr %40, align 4
  br label %242, !llvm.loop !18

271:                                              ; preds = %242
  br label %272

272:                                              ; preds = %271
  %273 = load i32, ptr %33, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, ptr %33, align 4
  br label %184, !llvm.loop !19

275:                                              ; preds = %49, %184
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
  br label %45, !llvm.loop !20

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
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.y() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.y() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.y() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x() #2

; Function Attrs: convergent nounwind
declare i32 @__nvvm_reflect(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare float @llvm.nvvm.rsqrt.approx.ftz.f(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare float @llvm.nvvm.rsqrt.approx.f(float) #4

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

attributes #0 = { convergent mustprogress noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" "uniform-work-group-size"="true" }
attributes #1 = { convergent noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" "uniform-work-group-size"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { convergent nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx85,+sm_75" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!nvvm.annotations = !{!4, !5, !6}
!llvm.ident = !{!7, !8}
!nvvmir.version = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{ptr @_Z18linear_proj_kernelPKfS0_S0_Pfiii}
!5 = !{ptr @_Z24attention_forward_kernelPKfS0_S0_Pfii}
!6 = !{ptr @_Z15ffn_relu_kernelPKfS0_S0_Pfiii}
!7 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!8 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!9 = !{i32 2, i32 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
