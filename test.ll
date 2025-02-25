; ModuleID = "PerSecModule"
target triple = "unknown-unknown-unknown"
target datalayout = ""

declare i32 @"thread_idx"() 

define void @"_Z4reluPfS_i"(i32 %".1", i32 %".2", i32 %".3", i32 %".4", i32 %".5") 
{
Entry_.text._Z4reluPfS_i:
  %"Arg0" = alloca i32, i32 8
  store i32 %".1", i32* %"Arg0"
  %"Arg1" = alloca i32, i32 8
  store i32 %".2", i32* %"Arg1"
  %"Arg2" = alloca i32, i32 8
  store i32 %".3", i32* %"Arg2"
  %"Arg3" = alloca i32, i32 8
  store i32 %".4", i32* %"Arg3"
  %"Arg4" = alloca i32, i32 8
  store i32 %".5", i32* %"Arg4"
  %"R1_NOTYPE" = alloca i32, i32 8
  %"R4_NOTYPE" = alloca i32, i32 8
  %"R3_NOTYPE" = alloca i32, i32 8
  %"P0_Bool" = alloca i1, i32 8
  %"PT_Bool" = alloca i1, i32 8
  %"R5_NOTYPE" = alloca i32, i32 8
  %"R2_NOTYPE" = alloca i32, i32 8
  %"R7_NOTYPE" = alloca i32, i32 8
  %"RZ_NOTYPE" = alloca i32, i32 8
  %".13" = load i32, i32* %"Arg1"
  store i32 %".13", i32* %"R1_NOTYPE"
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", i32* %"R4_NOTYPE"
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", i32* %"R3_NOTYPE"
  %".17" = load i32, i32* %"R4_NOTYPE"
  %".18" = load i32, i32* %"Arg0"
  %".19" = load i32, i32* %"R3_NOTYPE"
  %"mul" = mul i32 %".17", %".18"
  %"add" = add i32 %"mul", %".19"
  store i32 %"add", i32* %"R4_NOTYPE"
  %".21" = load i32, i32* %"R4_NOTYPE"
  %".22" = load i32, i32* %"Arg4"
  %".23" = load i1, i1* %"PT_Bool"
  %"cmp" = icmp sge i32 %".21", %".22"
  %".24" = and i1 %"cmp", %".23"
  store i1 %".24", i1* %"P0_Bool"
  %".26" = load i1, i1* %"P0_Bool"
  %".27" = icmp eq i1 %".26", 0
  br i1 %".27", label %"Entry_.text._Z4reluPfS_i.if", label %"Entry_.text._Z4reluPfS_i.endif"
.L_x_14:
  br label %".L_x_14"
.L_x_24:
Internal_Exit:
  ret void
Entry_.text._Z4reluPfS_i.if:
  br label %"Internal_Exit"
Entry_.text._Z4reluPfS_i.endif:
  store i32 4, i32* %"R5_NOTYPE"
  %".31" = load i32, i32* %"R4_NOTYPE"
  %".32" = load i32, i32* %"R5_NOTYPE"
  %".33" = load i32, i32* %"Arg2"
  %"mul.1" = mul i32 %".31", %".32"
  %"add.1" = add i32 %"mul.1", %".33"
  store i32 %"add.1", i32* %"R2_NOTYPE"
  %".35" = load i32, i32* %"R2_NOTYPE"
  %".36" = add i32 %".35", 0
  %"for_LDG" = inttoptr i32 %".36" to i32*
  %".37" = load i32, i32* %"for_LDG"
  store i32 %".37", i32* %"R2_NOTYPE"
  %".39" = load i32, i32* %"R4_NOTYPE"
  %".40" = load i32, i32* %"R5_NOTYPE"
  %".41" = load i32, i32* %"Arg3"
  %"mul.2" = mul i32 %".39", %".40"
  %"add.2" = add i32 %"mul.2", %".41"
  store i32 %"add.2", i32* %"R4_NOTYPE"
  %".43" = load i32, i32* %"R2_NOTYPE"
  %".44" = fcmp olt i32 0, %".43"
  %"fmnmx_min" = select i1 %".44", i32 0, i32 %".43"
  %".45" = fcmp ogt i32 0, %".43"
  %"fmnmx_max" = select i1 %".45", i32 0, i32 %".43"
  %"fmnmx_final" = select i1 1, i32 %"fmnmx_min", i32 %"fmnmx_max"
  store i32 %"fmnmx_final", i32* %"R7_NOTYPE"
  %".47" = load i32, i32* %"R7_NOTYPE"
  %".48" = load i32, i32* %"R4_NOTYPE"
  %".49" = add i32 %".48", 0
  %"for_STG" = inttoptr i32 %".49" to i32*
  store i32 %".47", i32* %"for_STG"
  br label %"Internal_Exit"
}

