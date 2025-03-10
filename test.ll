; ModuleID = "PerSecModule"
target triple = "unknown-unknown-unknown"
target datalayout = ""

declare i32 @"thread_idx"() 

define void @"_Z4reluPfS_i"(i32 %"Arg_0", i32 %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4") 
{
Entry_.text._Z4reluPfS_i:
  %"R1_NOTYPE" = alloca i32, i32 8
  %"R4_NOTYPE" = alloca i32, i32 8
  %"R3_NOTYPE" = alloca i32, i32 8
  %"P0_Bool" = alloca i1, i32 8
  %"PT_Bool" = alloca i1, i32 8
  %"R5_NOTYPE" = alloca i32, i32 8
  %"R2_NOTYPE" = alloca i32, i32 8
  %"R7_NOTYPE" = alloca i32, i32 8
  %"RZ_NOTYPE" = alloca i32, i32 8
  store i32 %"Arg_1", i32* %"R1_NOTYPE"
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", i32* %"R4_NOTYPE"
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", i32* %"R3_NOTYPE"
  %".11" = load i32, i32* %"R4_NOTYPE"
  %".12" = load i32, i32* %"R3_NOTYPE"
  %"mul" = mul i32 %".11", %"Arg_0"
  %"add" = add i32 %"mul", %".12"
  store i32 %"add", i32* %"R4_NOTYPE"
  %".14" = load i32, i32* %"R4_NOTYPE"
  %".15" = load i1, i1* %"PT_Bool"
  %"cmp" = icmp sge i32 %".14", %"Arg_4"
  %".16" = and i1 %"cmp", %".15"
  store i1 %".16", i1* %"P0_Bool"
  %".18" = load i1, i1* %"P0_Bool"
  %".19" = icmp ne i1 %".18", 1
  br i1 %".19", label %"Entry_.text._Z4reluPfS_i.if", label %"Entry_.text._Z4reluPfS_i.endif"
.L_x_14:
  br label %".L_x_14"
Internal_Exit:
  ret void
Entry_.text._Z4reluPfS_i.if:
  br label %"Internal_Exit"
Entry_.text._Z4reluPfS_i.endif:
  store i32 4, i32* %"R5_NOTYPE"
  %".23" = load i32, i32* %"R4_NOTYPE"
  %".24" = load i32, i32* %"R5_NOTYPE"
  %"mul.1" = mul i32 %".23", %".24"
  %"add.1" = add i32 %"mul.1", %"Arg_2"
  store i32 %"add.1", i32* %"R2_NOTYPE"
  %".26" = load i32, i32* %"R2_NOTYPE"
  %".27" = add i32 %".26", 0
  %"for_LDG" = inttoptr i32 %".27" to i32*
  %".28" = load i32, i32* %"for_LDG"
  store i32 %".28", i32* %"R2_NOTYPE"
  %".30" = load i32, i32* %"R4_NOTYPE"
  %".31" = load i32, i32* %"R5_NOTYPE"
  %"mul.2" = mul i32 %".30", %".31"
  %"add.2" = add i32 %"mul.2", %"Arg_3"
  store i32 %"add.2", i32* %"R4_NOTYPE"
  %".33" = load i32, i32* %"R2_NOTYPE"
  %".34" = fcmp olt i32 0, %".33"
  %"fmnmx_min" = select i1 %".34", i32 0, i32 %".33"
  %".35" = fcmp ogt i32 0, %".33"
  %"fmnmx_max" = select i1 %".35", i32 0, i32 %".33"
  %"fmnmx_final" = select i1 1, i32 %"fmnmx_min", i32 %"fmnmx_max"
  store i32 %"fmnmx_final", i32* %"R7_NOTYPE"
  %".37" = load i32, i32* %"R7_NOTYPE"
  %".38" = load i32, i32* %"R4_NOTYPE"
  %".39" = add i32 %".38", 0
  %"for_STG" = inttoptr i32 %".39" to i32*
  store i32 %".37", i32* %"for_STG"
  br label %"Internal_Exit"
}

