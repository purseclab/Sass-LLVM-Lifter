; ModuleID = "PerSecModule"
target triple = "unknown-unknown-unknown"
target datalayout = ""

declare i32 @"thread_idx"()

define i32 @"custom_lop3"(i32 %".1", i32 %".2", i32 %".3", i32 %".4")
{
entry:
  switch i32 %".1", label %"default" [i32 128, label %"block_0x80" i32 0, label %"block_0x0" i32 64, label %"block_0x40" i32 254, label %"block_0xfe" i32 255, label %"block_0xff" i32 26, label %"block_0x1a" i32 51, label %"block_0x33" i32 192, label %"block_0xc0" i32 8, label %"block_0x8" i32 60, label %"block_0x3c" i32 15, label %"block_0xf" i32 85, label %"block_0x55" i32 252, label %"block_0xfc" i32 248, label %"block_0xf8"]
exit:
  %"tmp" = phi  i32 [4294967295, %"default"], [%".8", %"block_0x80"], [0, %"block_0x0"], [%".13", %"block_0x40"], [%".16", %"block_0xfe"], [1, %"block_0xff"], [%".21", %"block_0x1a"], [%".23", %"block_0x33"], [%".25", %"block_0xc0"], [%".29", %"block_0x8"], [%".31", %"block_0x3c"], [%".33", %"block_0xf"], [%".35", %"block_0x55"], [%".37", %"block_0xfc"], [%".41", %"block_0xf8"]
  ret i32 %"tmp"
default:
  br label %"exit"
block_0x80:
  %".7" = and i32 %".2", %".3"
  %".8" = or i32 %".7", %".4"
  br label %"exit"
block_0x0:
  br label %"exit"
block_0x40:
  %".11" = and i32 %".2", %".3"
  %".12" = xor i32 %".4", -1
  %".13" = and i32 %".11", %".12"
  br label %"exit"
block_0xfe:
  %".15" = or i32 %".2", %".3"
  %".16" = or i32 %".15", %".4"
  br label %"exit"
block_0xff:
  br label %"exit"
block_0x1a:
  %".19" = and i32 %".2", %".3"
  %".20" = or i32 %".19", %".4"
  %".21" = xor i32 %".20", %".2"
  br label %"exit"
block_0x33:
  %".23" = xor i32 %".3", -1
  br label %"exit"
block_0xc0:
  %".25" = and i32 %".2", %".3"
  br label %"exit"
block_0x8:
  %".27" = xor i32 %".2", -1
  %".28" = and i32 %".27", %".3"
  %".29" = and i32 %".28", %".4"
  br label %"exit"
block_0x3c:
  %".31" = xor i32 %".2", %".3"
  br label %"exit"
block_0xf:
  %".33" = xor i32 %".2", -1
  br label %"exit"
block_0x55:
  %".35" = xor i32 %".4", -1
  br label %"exit"
block_0xfc:
  %".37" = or i32 %".2", %".3"
  br label %"exit"
block_0xf8:
  %".39" = or i32 %".2", %".3"
  %".40" = or i32 %".2", %".4"
  %".41" = and i32 %".39", %".40"
  br label %"exit"
}

define i32 @"custom_plop3"(i32 %".1", i32 %".2", i32 %".3", i32 %".4")
{
entry:
  switch i32 %".1", label %"default" [i32 128, label %"block_0x80" i32 0, label %"block_0x0" i32 64, label %"block_0x40" i32 254, label %"block_0xfe" i32 255, label %"block_0xff" i32 26, label %"block_0x1a" i32 51, label %"block_0x33" i32 192, label %"block_0xc0" i32 8, label %"block_0x8" i32 60, label %"block_0x3c" i32 15, label %"block_0xf" i32 85, label %"block_0x55" i32 252, label %"block_0xfc" i32 248, label %"block_0xf8"]
exit:
  %"tmp" = phi  i32 [4294967295, %"default"], [%".8", %"block_0x80"], [0, %"block_0x0"], [%".13", %"block_0x40"], [%".16", %"block_0xfe"], [1, %"block_0xff"], [%".21", %"block_0x1a"], [%".23", %"block_0x33"], [%".25", %"block_0xc0"], [%".29", %"block_0x8"], [%".31", %"block_0x3c"], [%".33", %"block_0xf"], [%".35", %"block_0x55"], [%".37", %"block_0xfc"], [%".41", %"block_0xf8"]
  ret i32 %"tmp"
default:
  br label %"exit"
block_0x80:
  %".7" = and i32 %".2", %".3"
  %".8" = or i32 %".7", %".4"
  br label %"exit"
block_0x0:
  br label %"exit"
block_0x40:
  %".11" = and i32 %".2", %".3"
  %".12" = xor i32 %".4", 1
  %".13" = and i32 %".11", %".12"
  br label %"exit"
block_0xfe:
  %".15" = or i32 %".2", %".3"
  %".16" = or i32 %".15", %".4"
  br label %"exit"
block_0xff:
  br label %"exit"
block_0x1a:
  %".19" = and i32 %".2", %".3"
  %".20" = or i32 %".19", %".4"
  %".21" = xor i32 %".20", %".2"
  br label %"exit"
block_0x33:
  %".23" = xor i32 %".3", 1
  br label %"exit"
block_0xc0:
  %".25" = and i32 %".2", %".3"
  br label %"exit"
block_0x8:
  %".27" = xor i32 %".2", 1
  %".28" = and i32 %".27", %".3"
  %".29" = and i32 %".28", %".4"
  br label %"exit"
block_0x3c:
  %".31" = xor i32 %".2", %".3"
  br label %"exit"
block_0xf:
  %".33" = xor i32 %".2", 1
  br label %"exit"
block_0x55:
  %".35" = xor i32 %".4", 1
  br label %"exit"
block_0xfc:
  %".37" = or i32 %".2", %".3"
  br label %"exit"
block_0xf8:
  %".39" = or i32 %".2", %".3"
  %".40" = or i32 %".2", %".4"
  %".41" = and i32 %".39", %".40"
  br label %"exit"
}

define i32 @"custom_ulop3"(i32 %".1", i32 %".2", i32 %".3", i32 %".4")
{
entry:
  switch i32 %".1", label %"default" [i32 128, label %"block_0x80" i32 0, label %"block_0x0" i32 64, label %"block_0x40" i32 254, label %"block_0xfe" i32 255, label %"block_0xff" i32 26, label %"block_0x1a" i32 51, label %"block_0x33" i32 192, label %"block_0xc0" i32 8, label %"block_0x8" i32 60, label %"block_0x3c" i32 15, label %"block_0xf" i32 85, label %"block_0x55" i32 252, label %"block_0xfc" i32 248, label %"block_0xf8"]
exit:
  %"tmp" = phi  i32 [4294967295, %"default"], [%".8", %"block_0x80"], [0, %"block_0x0"], [%".13", %"block_0x40"], [%".16", %"block_0xfe"], [1, %"block_0xff"], [%".21", %"block_0x1a"], [%".23", %"block_0x33"], [%".25", %"block_0xc0"], [%".29", %"block_0x8"], [%".31", %"block_0x3c"], [%".33", %"block_0xf"], [%".35", %"block_0x55"], [%".37", %"block_0xfc"], [%".41", %"block_0xf8"]
  ret i32 %"tmp"
default:
  br label %"exit"
block_0x80:
  %".7" = and i32 %".2", %".3"
  %".8" = or i32 %".7", %".4"
  br label %"exit"
block_0x0:
  br label %"exit"
block_0x40:
  %".11" = and i32 %".2", %".3"
  %".12" = xor i32 %".4", -1
  %".13" = and i32 %".11", %".12"
  br label %"exit"
block_0xfe:
  %".15" = or i32 %".2", %".3"
  %".16" = or i32 %".15", %".4"
  br label %"exit"
block_0xff:
  br label %"exit"
block_0x1a:
  %".19" = and i32 %".2", %".3"
  %".20" = or i32 %".19", %".4"
  %".21" = xor i32 %".20", %".2"
  br label %"exit"
block_0x33:
  %".23" = xor i32 %".3", -1
  br label %"exit"
block_0xc0:
  %".25" = and i32 %".2", %".3"
  br label %"exit"
block_0x8:
  %".27" = xor i32 %".2", -1
  %".28" = and i32 %".27", %".3"
  %".29" = and i32 %".28", %".4"
  br label %"exit"
block_0x3c:
  %".31" = xor i32 %".2", %".3"
  br label %"exit"
block_0xf:
  %".33" = xor i32 %".2", -1
  br label %"exit"
block_0x55:
  %".35" = xor i32 %".4", -1
  br label %"exit"
block_0xfc:
  %".37" = or i32 %".2", %".3"
  br label %"exit"
block_0xf8:
  %".39" = or i32 %".2", %".3"
  %".40" = or i32 %".2", %".4"
  %".41" = and i32 %".39", %".40"
  br label %"exit"
}

define void @"_Z11gru_forwardPfS_S_S_iii"(i32 %"Arg_0", i32 %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6", i32 %"Arg_7", i32 %"Arg_8")
{
Entry_.text._Z11gru_forwardPfS_S_S_iii:
  %"R1_NOTYPE" = alloca i32, i32 1
  %"R14_Int32" = alloca i32, i32 1
  %"R0_Int32" = alloca i32, i32 1
  %"R3_Int32" = alloca i32, i32 1
  %"P0_Bool" = alloca i1, i32 1
  %"PT_Bool" = alloca i1, i32 1
  %"RZ_Int32" = alloca i32, i32 1
  %"R33_Int32" = alloca i32, i32 1
  %"R15_Int32" = alloca i32, i32 1
  %"R26_Int32" = alloca i32, i32 1
  %"R30_Int32" = alloca i32, i32 1
  %"R5_Int32" = alloca i32, i32 1
  %"R28_Int32" = alloca i32, i32 1
  %"R2_Int32" = alloca i32, i32 1
  %"R32_Int32" = alloca i32, i32 1
  %"R4_Int32" = alloca i32, i32 1
  %"R5_NOTYPE" = alloca i32, i32 1
  %"RZ_NOTYPE" = alloca i32, i32 1
  %"R6_Int32" = alloca i32, i32 1
  %"R7_Int32" = alloca i32, i32 1
  %"R8_Int32" = alloca i32, i32 1
  %"P4_Bool" = alloca i1, i32 1
  %"P3_Bool" = alloca i1, i32 1
  %"R8_Float32" = alloca float, i32 1
  %"RZ_Float32" = alloca float, i32 1
  %"R52_Float32" = alloca float, i32 1
  %"R54_Float32" = alloca float, i32 1
  %"R11_Int32" = alloca i32, i32 1
  %"R9_Int32" = alloca i32, i32 1
  %"P1_Bool" = alloca i1, i32 1
  %"R25_Int32" = alloca i32, i32 1
  %"R18_Int32" = alloca i32, i32 1
  %"R23_Int32" = alloca i32, i32 1
  %"R38_Int32" = alloca i32, i32 1
  %"R16_Int32" = alloca i32, i32 1
  %"R20_Int32" = alloca i32, i32 1
  %"R57_Float32" = alloca float, i32 1
  %"R38_Float32_PTR" = alloca ptr, i32 1
  %"R56_Float32" = alloca float, i32 1
  %"R16_Float32_PTR" = alloca ptr, i32 1
  %"R58_Float32" = alloca float, i32 1
  %"R20_Float32_PTR" = alloca ptr, i32 1
  %"R24_Float32" = alloca float, i32 1
  %"R47_Float32" = alloca float, i32 1
  %"R49_Float32" = alloca float, i32 1
  %"R22_Float32" = alloca float, i32 1
  %"R43_Float32" = alloca float, i32 1
  %"R45_Float32" = alloca float, i32 1
  %"R15_Float32" = alloca float, i32 1
  %"R14_Float32" = alloca float, i32 1
  %"R13_Float32" = alloca float, i32 1
  %"R41_Int32" = alloca i32, i32 1
  %"R51_Int32" = alloca i32, i32 1
  %"R35_Int32" = alloca i32, i32 1
  %"R40_Int32" = alloca i32, i32 1
  %"R37_Int32" = alloca i32, i32 1
  %"R12_Float32" = alloca float, i32 1
  %"R40_Float32_PTR" = alloca ptr, i32 1
  %"R34_Int32" = alloca i32, i32 1
  %"R10_Float32" = alloca float, i32 1
  %"R36_Int32" = alloca i32, i32 1
  %"R16_Float32" = alloca float, i32 1
  %"R17_Float32" = alloca float, i32 1
  %"R19_Float32" = alloca float, i32 1
  %"R34_Float32_PTR" = alloca ptr, i32 1
  %"R20_Float32" = alloca float, i32 1
  %"R51_Float32" = alloca float, i32 1
  %"R21_Float32" = alloca float, i32 1
  %"R42_Float32" = alloca float, i32 1
  %"R44_Float32" = alloca float, i32 1
  %"R36_Float32_PTR" = alloca ptr, i32 1
  %"R46_Float32" = alloca float, i32 1
  %"R48_Float32" = alloca float, i32 1
  %"R50_Float32" = alloca float, i32 1
  %"R53_Float32" = alloca float, i32 1
  %"R59_Float32" = alloca float, i32 1
  %"R55_Float32" = alloca float, i32 1
  %"R61_Float32" = alloca float, i32 1
  %"R60_Float32" = alloca float, i32 1
  %"R39_Float32" = alloca float, i32 1
  %"R38_Float32" = alloca float, i32 1
  %"R41_Float32" = alloca float, i32 1
  %"R40_Float32" = alloca float, i32 1
  %"R24_Int32" = alloca i32, i32 1
  %"R22_Int32" = alloca i32, i32 1
  %"R18_Float32" = alloca float, i32 1
  %"R24_Float32_PTR" = alloca ptr, i32 1
  %"R35_Float32" = alloca float, i32 1
  %"R22_Float32_PTR" = alloca ptr, i32 1
  %"R37_Float32" = alloca float, i32 1
  %"R34_Float32" = alloca float, i32 1
  %"R13_Int32" = alloca i32, i32 1
  %"R17_Int32" = alloca i32, i32 1
  %"R10_Int32" = alloca i32, i32 1
  %"R12_Int32" = alloca i32, i32 1
  %"R18_Float32_PTR" = alloca ptr, i32 1
  %"R36_Float32" = alloca float, i32 1
  %"R12_Float32_PTR" = alloca ptr, i32 1
  %"R14_Float32_PTR" = alloca ptr, i32 1
  %"R25_Float32" = alloca float, i32 1
  %"R23_Float32" = alloca float, i32 1
  %"R10_Float32_PTR" = alloca ptr, i32 1
  %"R9_Float32" = alloca float, i32 1
  %"R19_NOTYPE" = alloca i32, i32 1
  %"R12_NOTYPE_PTR" = alloca ptr, i32 1
  %"R21_NOTYPE" = alloca i32, i32 1
  %"R10_NOTYPE_PTR" = alloca ptr, i32 1
  %"R18_NOTYPE" = alloca i32, i32 1
  %"R14_NOTYPE_PTR" = alloca ptr, i32 1
  %"R26_Float32_PTR" = alloca ptr, i32 1
  %"R11_Float32" = alloca float, i32 1
  %"R10_NOTYPE" = alloca i32, i32 1
  %"R32_Float32_PTR" = alloca ptr, i32 1
  %"R49_Int32" = alloca i32, i32 1
  %"R50_Int32" = alloca i32, i32 1
  %"R58_Int32" = alloca i32, i32 1
  %"R16_NOTYPE" = alloca i32, i32 1
  %"R22_NOTYPE_PTR" = alloca ptr, i32 1
  %"R15_NOTYPE" = alloca i32, i32 1
  %"R30_Float32_PTR" = alloca ptr, i32 1
  %"R28_Float32_PTR" = alloca ptr, i32 1
  %"R48_Int32" = alloca i32, i32 1
  %"R19_Int32" = alloca i32, i32 1
  %"R4_Float32_PTR" = alloca ptr, i32 1
  %"R8_Float32_PTR" = alloca ptr, i32 1
  %"R6_Float32_PTR" = alloca ptr, i32 1
  %"R25_NOTYPE" = alloca i32, i32 1
  %"R4_NOTYPE_PTR" = alloca ptr, i32 1
  %"R24_NOTYPE" = alloca i32, i32 1
  %"R6_NOTYPE_PTR" = alloca ptr, i32 1
  %"R35_NOTYPE" = alloca i32, i32 1
  %"R8_NOTYPE_PTR" = alloca ptr, i32 1
  %"R34_NOTYPE" = alloca i32, i32 1
  %"R57_Int32" = alloca i32, i32 1
  %"R6_Float32" = alloca float, i32 1
  %"R4_Float32" = alloca float, i32 1
  %"R5_Float32" = alloca float, i32 1
  %"R7_Float32" = alloca float, i32 1
  %"R23_NOTYPE" = alloca i32, i32 1
  %"R12_NOTYPE" = alloca i32, i32 1
  %"R9_NOTYPE" = alloca i32, i32 1
  %"R34_NOTYPE_PTR" = alloca ptr, i32 1
  ; MOV R1, c[0x0][0x28]
  %"R1_Int32" = alloca i32, i32 1
  store i32 %"Arg_1", ptr %"R1_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R1_NOTYPE", ptr %"R1_Int32", i32 4, i1 0)
  ; S2R R14, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R14_Int32"
  ; MOV R0, c[0x0][0x188]
  store i32 %"Arg_8", ptr %"R0_Int32"
  ; S2R R3, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R3_Int32"
  ; ISETP.GE.AND P0, PT, R0, 0x1, PT
  %".21" = load i32, ptr %"R0_Int32"
  %".22" = load i1, ptr %"PT_Bool"
  %"cmp" = icmp sge i32 %".21", 1
  %".23" = and i1 %"cmp", %".22"
  ; IMAD R14, R14, c[0x0][0x0], R3
  %".25" = load i32, ptr %"R14_Int32"
  %".26" = load i32, ptr %"R3_Int32"
  %"mul" = mul i32 %".25", %"Arg_0"
  %"add" = add i32 %"mul", %".26"
  store i32 %"add", ptr %"R14_Int32"
  ; ISETP.GE.OR P0, PT, R14, c[0x0][0x184], !P0
  %".29" = load i32, ptr %"R14_Int32"
  %".30" = load i1, ptr %"PT_Bool"
  %"cmp.1" = icmp sge i32 %".29", %"Arg_7"
  %".31" = or i1 %"cmp.1", %".30"
  ; @P0 EXIT
  %".33" = load i1, ptr %"P0_Bool"
  %".34" = icmp ne i1 %".33", 1
  br i1 %".34", label %".text._Z11gru_forwardPfS_S_S_iii_conditionalExpr_0x0070", label %".text._Z11gru_forwardPfS_S_S_iii_split_0x0080"
.text._Z11gru_forwardPfS_S_S_iii_conditionalExpr_0x0070:
  ; EXIT
  br label %"ExitFunction"
.text._Z11gru_forwardPfS_S_S_iii_split_0x0080:
  ; ISETP.LT.AND P0, PT, RZ, c[0x0][0x180], PT
  %".39" = load i1, ptr %"PT_Bool"
  %"cmp.2" = icmp slt i32 0, %"Arg_6"
  %".40" = and i1 %"cmp.2", %".39"
  ; IMAD R0, R14.reuse, c[0x0][0x184], RZ
  %".42" = load i32, ptr %"R14_Int32"
  %"mul.1" = mul i32 %".42", %"Arg_7"
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", ptr %"R0_Int32"
  ; MOV R33, 0x4
  store i32 4, ptr %"R33_Int32"
  ; MOV R3, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R3_Int32"
  ; MOV R15, c[0x0][0x180]
  store i32 %"Arg_6", ptr %"R15_Int32"
  ; IMAD.WIDE R26, R14.reuse, R33.reuse, c[0x0][0x178]
  %".51" = load i32, ptr %"R14_Int32"
  %".52" = load i32, ptr %"R33_Int32"
  %"mul.2" = mul i32 %".51", %".52"
  %"add.2" = add i32 %"mul.2", %"Arg_5"
  store i32 %"add.2", ptr %"R26_Int32"
  ; LEA R30, R3, R14, 0x1
  %".55" = load i32, ptr %"R3_Int32"
  %".56" = load i32, ptr %"R14_Int32"
  %"shl" = shl i32 %".55", 1
  %"add.3" = add i32 %"shl", %".56"
  store i32 %"add.3", ptr %"R30_Int32"
  ; MOV R5, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R5_Int32"
  ; IMAD.WIDE R28, R14, R33, c[0x0][0x168]
  %".61" = load i32, ptr %"R14_Int32"
  %".62" = load i32, ptr %"R33_Int32"
  %"mul.3" = mul i32 %".61", %".62"
  %"add.4" = add i32 %"mul.3", %"Arg_3"
  store i32 %"add.4", ptr %"R28_Int32"
  ; LEA R3, R15, R15, 0x2
  %".65" = load i32, ptr %"R15_Int32"
  %".66" = load i32, ptr %"R15_Int32"
  %"shl.1" = shl i32 %".65", 2
  %"add.5" = add i32 %"shl.1", %".66"
  store i32 %"add.5", ptr %"R3_Int32"
  ; IMAD.WIDE R30, R30, R33, c[0x0][0x178]
  %".69" = load i32, ptr %"R30_Int32"
  %".70" = load i32, ptr %"R33_Int32"
  %"mul.4" = mul i32 %".69", %".70"
  %"add.6" = add i32 %"mul.4", %"Arg_5"
  store i32 %"add.6", ptr %"R30_Int32"
  ; IMAD R2, R5, c[0x0][0x180], RZ
  %".73" = load i32, ptr %"R5_Int32"
  %"mul.5" = mul i32 %".73", %"Arg_6"
  %"add.7" = add i32 %"mul.5", 0
  store i32 %"add.7", ptr %"R2_Int32"
  ; IMAD R3, R3, c[0x0][0x184], R0
  %".76" = load i32, ptr %"R3_Int32"
  %".77" = load i32, ptr %"R0_Int32"
  %"mul.6" = mul i32 %".76", %"Arg_7"
  %"add.8" = add i32 %"mul.6", %".77"
  store i32 %"add.8", ptr %"R3_Int32"
  ; IMAD.WIDE R32, R33, c[0x0][0x184], R26
  %".80" = load i32, ptr %"R33_Int32"
  %".81" = load i32, ptr %"R26_Int32"
  %"mul.7" = mul i32 %".80", %"Arg_7"
  %"add.9" = add i32 %"mul.7", %".81"
  store i32 %"add.9", ptr %"R32_Int32"
  ; @P0 BRA `(.L_x_0)
  %".84" = load i1, ptr %"P0_Bool"
  %".85" = icmp ne i1 %".84", 1
  br i1 %".85", label %".L_x_0", label %".text._Z11gru_forwardPfS_S_S_iii_split_0x0170"
.text._Z11gru_forwardPfS_S_S_iii_split_0x0170:
  ; LOP3.LUT R4, R5.reuse, 0x3, RZ, 0xc0, !PT
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R5_NOTYPE", ptr %"R5_Int32", i32 4, i1 0)
  %".88" = load i32, ptr %"R5_NOTYPE"
  %".89" = and i32 %".88", 3
  store i32 %".89", ptr %"R4_Int32"
  ; IADD3 R5, R5, -0x1, RZ
  %".92" = load i32, ptr %"R5_Int32"
  %"add.10" = add i32 %".92", -1
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", ptr %"R5_Int32"
  ; MOV R6, RZ
  %".95" = load i32, ptr %"RZ_Int32"
  store i32 %".95", ptr %"R6_Int32"
  ; IADD3 R7, -R4, c[0x0][0x184], RZ
  %".98" = load i32, ptr %"R4_Int32"
  %".99" = sub i32 0, %".98"
  %"add.12" = add i32 %".99", %"Arg_7"
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", ptr %"R7_Int32"
.L_x_22:
  ; MOV R8, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R8_Int32"
  ; IADD3 R6, R6, 0x1, RZ
  %".104" = load i32, ptr %"R6_Int32"
  %"add.14" = add i32 %".104", 1
  %"add.15" = add i32 %"add.14", 0
  store i32 %"add.15", ptr %"R6_Int32"
  ; ISETP.GE.AND P4, PT, R8, 0x1, PT
  %".107" = load i32, ptr %"R8_Int32"
  %".108" = load i1, ptr %"PT_Bool"
  %"cmp.3" = icmp sge i32 %".107", 1
  %".109" = and i1 %"cmp.3", %".108"
  ; ISETP.GE.AND P3, PT, R6, c[0x0][0x188], PT
  %".111" = load i32, ptr %"R6_Int32"
  %".112" = load i1, ptr %"PT_Bool"
  %"cmp.4" = icmp sge i32 %".111", %"Arg_8"
  %".113" = and i1 %"cmp.4", %".112"
  ; MOV R8, RZ
  %".115" = load float, ptr %"RZ_Float32"
  store float %".115", ptr %"R8_Float32"
  ; MOV R52, RZ
  %".118" = load float, ptr %"RZ_Float32"
  store float %".118", ptr %"R52_Float32"
  ; MOV R54, RZ
  %".121" = load float, ptr %"RZ_Float32"
  store float %".121", ptr %"R54_Float32"
  ; @!P4 BRA `(.L_x_1)
  %".124" = load i1, ptr %"P4_Bool"
  %".125" = icmp eq i1 %".124", 1
  br i1 %".125", label %".L_x_1", label %".L_x_22_split_0x0230"
.L_x_22_split_0x0230:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".128" = load i32, ptr %"R5_Int32"
  %".129" = load i1, ptr %"PT_Bool"
  %"cmp.5" = icmp sge i32 %".128", 3
  %".130" = and i1 %"cmp.5", %".129"
  ; MOV R54, RZ
  %".132" = load float, ptr %"RZ_Float32"
  store float %".132", ptr %"R54_Float32"
  ; MOV R11, RZ
  %".135" = load i32, ptr %"RZ_Int32"
  store i32 %".135", ptr %"R11_Int32"
  ; MOV R52, RZ
  %".138" = load float, ptr %"RZ_Float32"
  store float %".138", ptr %"R52_Float32"
  ; @!P0 BRA `(.L_x_2)
  %".141" = load i1, ptr %"P0_Bool"
  %".142" = icmp eq i1 %".141", 1
  br i1 %".142", label %".L_x_2", label %".L_x_22_split_0x0280"
.L_x_22_split_0x0280:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".145" = load i32, ptr %"R7_Int32"
  %".146" = load i1, ptr %"PT_Bool"
  %"cmp.6" = icmp sgt i32 %".145", 0
  %".147" = and i1 %"cmp.6", %".146"
  ; MOV R54, RZ
  %".149" = load float, ptr %"RZ_Float32"
  store float %".149", ptr %"R54_Float32"
  ; MOV R11, RZ
  %".152" = load i32, ptr %"RZ_Int32"
  store i32 %".152", ptr %"R11_Int32"
  ; MOV R9, R7
  %".155" = load i32, ptr %"R7_Int32"
  store i32 %".155", ptr %"R9_Int32"
  ; @!P0 BRA `(.L_x_3)
  %".158" = load i1, ptr %"P0_Bool"
  %".159" = icmp eq i1 %".158", 1
  br i1 %".159", label %".L_x_3", label %".L_x_22_split_0x02d0"
.L_x_22_split_0x02d0:
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".162" = load i32, ptr %"R9_Int32"
  %".163" = load i1, ptr %"PT_Bool"
  %"cmp.7" = icmp sgt i32 %".162", 12
  %".164" = and i1 %"cmp.7", %".163"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".166" = and i1 1, 1
  %".167" = or i1 %".166", 1
  ; @!P1 BRA `(.L_x_4)
  %".169" = load i1, ptr %"P1_Bool"
  %".170" = icmp eq i1 %".169", 1
  br i1 %".170", label %".L_x_4", label %".L_x_22_split_0x0300"
.L_x_22_split_0x0300:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".173" = xor i1 1, 1
  %".174" = and i1 %".173", 1
  %".175" = and i1 %".174", 1
.L_x_5:
  ; IADD3 R25, R0, R11, RZ
  %".177" = load i32, ptr %"R0_Int32"
  %".178" = load i32, ptr %"R11_Int32"
  %"add.16" = add i32 %".177", %".178"
  %"add.17" = add i32 %"add.16", 0
  store i32 %"add.17", ptr %"R25_Int32"
  ; MOV R18, 0x4
  store i32 4, ptr %"R18_Int32"
  ; IMAD R23, R2.reuse, 0x3, R25
  %".183" = load i32, ptr %"R2_Int32"
  %".184" = load i32, ptr %"R25_Int32"
  %"mul.8" = mul i32 %".183", 3
  %"add.18" = add i32 %"mul.8", %".184"
  store i32 %"add.18", ptr %"R23_Int32"
  ; LEA R25, R2, R25, 0x2
  %".187" = load i32, ptr %"R2_Int32"
  %".188" = load i32, ptr %"R25_Int32"
  %"shl.2" = shl i32 %".187", 2
  %"add.19" = add i32 %"shl.2", %".188"
  store i32 %"add.19", ptr %"R25_Int32"
  ; IMAD.WIDE R38, R11, R18, c[0x0][0x168]
  %".191" = load i32, ptr %"R11_Int32"
  %".192" = load i32, ptr %"R18_Int32"
  %"mul.9" = mul i32 %".191", %".192"
  %"add.20" = add i32 %"mul.9", %"Arg_3"
  store i32 %"add.20", ptr %"R38_Int32"
  ; IMAD.WIDE R16, R23, R18, c[0x0][0x170]
  %".195" = load i32, ptr %"R23_Int32"
  %".196" = load i32, ptr %"R18_Int32"
  %"mul.10" = mul i32 %".195", %".196"
  %"add.21" = add i32 %"mul.10", %"Arg_4"
  store i32 %"add.21", ptr %"R16_Int32"
  ; IMAD.WIDE R20, R25, R18, c[0x0][0x170]
  %".199" = load i32, ptr %"R25_Int32"
  %".200" = load i32, ptr %"R18_Int32"
  %"mul.11" = mul i32 %".199", %".200"
  %"add.22" = add i32 %"mul.11", %"Arg_4"
  store i32 %"add.22", ptr %"R20_Int32"
  ; LDG.E.SYS R57, [R38]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".203" = load ptr, ptr %"R38_Float32_PTR"
  %"zext" = zext ptr %".203" to i64
  %"or" = or i64 0, %"zext"
  %"or.1" = or i64 %"or", %"zext"
  %".204" = add i64 %"or.1", 0
  %"for_LDG" = inttoptr i64 %".204" to ptr
  %".205" = load float, ptr %"for_LDG"
  store float %".205", ptr %"R57_Float32"
  ; LDG.E.SYS R56, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".208" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.1" = zext ptr %".208" to i64
  %"or.2" = or i64 0, %"zext.1"
  %"or.3" = or i64 %"or.2", %"zext.1"
  %".209" = add i64 %"or.3", 0
  %"for_LDG.1" = inttoptr i64 %".209" to ptr
  %".210" = load float, ptr %"for_LDG.1"
  store float %".210", ptr %"R56_Float32"
  ; LDG.E.SYS R58, [R20]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".213" = load ptr, ptr %"R20_Float32_PTR"
  %"zext.2" = zext ptr %".213" to i64
  %"or.4" = or i64 0, %"zext.2"
  %"or.5" = or i64 %"or.4", %"zext.2"
  %".214" = add i64 %"or.5", 0
  %"for_LDG.2" = inttoptr i64 %".214" to ptr
  %".215" = load float, ptr %"for_LDG.2"
  store float %".215", ptr %"R58_Float32"
  ; LDG.E.SYS R24, [R38+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".218" = load ptr, ptr %"R38_Float32_PTR"
  %"zext.3" = zext ptr %".218" to i64
  %"or.6" = or i64 0, %"zext.3"
  %"or.7" = or i64 %"or.6", %"zext.3"
  %".219" = add i64 %"or.7", 4
  %"for_LDG.3" = inttoptr i64 %".219" to ptr
  %".220" = load float, ptr %"for_LDG.3"
  store float %".220", ptr %"R24_Float32"
  ; LDG.E.SYS R47, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".223" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.4" = zext ptr %".223" to i64
  %"or.8" = or i64 0, %"zext.4"
  %"or.9" = or i64 %"or.8", %"zext.4"
  %".224" = add i64 %"or.9", 4
  %"for_LDG.4" = inttoptr i64 %".224" to ptr
  %".225" = load float, ptr %"for_LDG.4"
  store float %".225", ptr %"R47_Float32"
  ; LDG.E.SYS R49, [R20+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".228" = load ptr, ptr %"R20_Float32_PTR"
  %"zext.5" = zext ptr %".228" to i64
  %"or.10" = or i64 0, %"zext.5"
  %"or.11" = or i64 %"or.10", %"zext.5"
  %".229" = add i64 %"or.11", 4
  %"for_LDG.5" = inttoptr i64 %".229" to ptr
  %".230" = load float, ptr %"for_LDG.5"
  store float %".230", ptr %"R49_Float32"
  ; LDG.E.SYS R22, [R38+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".233" = load ptr, ptr %"R38_Float32_PTR"
  %"zext.6" = zext ptr %".233" to i64
  %"or.12" = or i64 0, %"zext.6"
  %"or.13" = or i64 %"or.12", %"zext.6"
  %".234" = add i64 %"or.13", 8
  %"for_LDG.6" = inttoptr i64 %".234" to ptr
  %".235" = load float, ptr %"for_LDG.6"
  store float %".235", ptr %"R22_Float32"
  ; LDG.E.SYS R43, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".238" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.7" = zext ptr %".238" to i64
  %"or.14" = or i64 0, %"zext.7"
  %"or.15" = or i64 %"or.14", %"zext.7"
  %".239" = add i64 %"or.15", 8
  %"for_LDG.7" = inttoptr i64 %".239" to ptr
  %".240" = load float, ptr %"for_LDG.7"
  store float %".240", ptr %"R43_Float32"
  ; LDG.E.SYS R45, [R20+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".243" = load ptr, ptr %"R20_Float32_PTR"
  %"zext.8" = zext ptr %".243" to i64
  %"or.16" = or i64 0, %"zext.8"
  %"or.17" = or i64 %"or.16", %"zext.8"
  %".244" = add i64 %"or.17", 8
  %"for_LDG.8" = inttoptr i64 %".244" to ptr
  %".245" = load float, ptr %"for_LDG.8"
  store float %".245", ptr %"R45_Float32"
  ; LDG.E.SYS R15, [R38+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".248" = load ptr, ptr %"R38_Float32_PTR"
  %"zext.9" = zext ptr %".248" to i64
  %"or.18" = or i64 0, %"zext.9"
  %"or.19" = or i64 %"or.18", %"zext.9"
  %".249" = add i64 %"or.19", 12
  %"for_LDG.9" = inttoptr i64 %".249" to ptr
  %".250" = load float, ptr %"for_LDG.9"
  store float %".250", ptr %"R15_Float32"
  ; LDG.E.SYS R14, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".253" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.10" = zext ptr %".253" to i64
  %"or.20" = or i64 0, %"zext.10"
  %"or.21" = or i64 %"or.20", %"zext.10"
  %".254" = add i64 %"or.21", 12
  %"for_LDG.10" = inttoptr i64 %".254" to ptr
  %".255" = load float, ptr %"for_LDG.10"
  store float %".255", ptr %"R14_Float32"
  ; LDG.E.SYS R13, [R20+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".258" = load ptr, ptr %"R20_Float32_PTR"
  %"zext.11" = zext ptr %".258" to i64
  %"or.22" = or i64 0, %"zext.11"
  %"or.23" = or i64 %"or.22", %"zext.11"
  %".259" = add i64 %"or.23", 12
  %"for_LDG.11" = inttoptr i64 %".259" to ptr
  %".260" = load float, ptr %"for_LDG.11"
  store float %".260", ptr %"R13_Float32"
  ; IADD3 R41, R11, 0x4, RZ
  %".263" = load i32, ptr %"R11_Int32"
  %"add.23" = add i32 %".263", 4
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R41_Int32"
  ; IADD3 R51, R23, 0x4, RZ
  %".266" = load i32, ptr %"R23_Int32"
  %"add.25" = add i32 %".266", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"R51_Int32"
  ; IADD3 R35, R11, 0x8, RZ
  %".269" = load i32, ptr %"R11_Int32"
  %"add.27" = add i32 %".269", 8
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", ptr %"R35_Int32"
  ; IMAD.WIDE R40, R41, R18, c[0x0][0x168]
  %".272" = load i32, ptr %"R41_Int32"
  %".273" = load i32, ptr %"R18_Int32"
  %"mul.12" = mul i32 %".272", %".273"
  %"add.29" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.29", ptr %"R40_Int32"
  ; IADD3 R37, R11, 0xc, RZ
  %".276" = load i32, ptr %"R11_Int32"
  %"add.30" = add i32 %".276", 12
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R37_Int32"
  ; IMAD.WIDE R38, R51, R18, c[0x0][0x170]
  %".279" = load i32, ptr %"R51_Int32"
  %".280" = load i32, ptr %"R18_Int32"
  %"mul.13" = mul i32 %".279", %".280"
  %"add.32" = add i32 %"mul.13", %"Arg_4"
  store i32 %"add.32", ptr %"R38_Int32"
  ; IADD3 R51, R25, 0x4, RZ
  %".283" = load i32, ptr %"R25_Int32"
  %"add.33" = add i32 %".283", 4
  %"add.34" = add i32 %"add.33", 0
  store i32 %"add.34", ptr %"R51_Int32"
  ; LDG.E.SYS R12, [R40]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".286" = load ptr, ptr %"R40_Float32_PTR"
  %"zext.12" = zext ptr %".286" to i64
  %".287" = load ptr, ptr %"R41_Int32"
  %"zext.13" = zext ptr %".287" to i64
  %"shl.3" = shl i64 %"zext.13", 32
  %"or.24" = or i64 %"shl.3", %"zext.12"
  %".288" = add i64 %"or.24", 0
  %"for_LDG.12" = inttoptr i64 %".288" to ptr
  %".289" = load float, ptr %"for_LDG.12"
  store float %".289", ptr %"R12_Float32"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x168]
  %".292" = load i32, ptr %"R35_Int32"
  %".293" = load i32, ptr %"R18_Int32"
  %"mul.14" = mul i32 %".292", %".293"
  %"add.35" = add i32 %"mul.14", %"Arg_3"
  store i32 %"add.35", ptr %"R34_Int32"
  ; LDG.E.SYS R10, [R40+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".296" = load ptr, ptr %"R40_Float32_PTR"
  %"zext.14" = zext ptr %".296" to i64
  %".297" = load ptr, ptr %"R41_Int32"
  %"zext.15" = zext ptr %".297" to i64
  %"shl.4" = shl i64 %"zext.15", 32
  %"or.25" = or i64 %"shl.4", %"zext.14"
  %".298" = add i64 %"or.25", 4
  %"for_LDG.13" = inttoptr i64 %".298" to ptr
  %".299" = load float, ptr %"for_LDG.13"
  store float %".299", ptr %"R10_Float32"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x168]
  %".302" = load i32, ptr %"R37_Int32"
  %".303" = load i32, ptr %"R18_Int32"
  %"mul.15" = mul i32 %".302", %".303"
  %"add.36" = add i32 %"mul.15", %"Arg_3"
  store i32 %"add.36", ptr %"R36_Int32"
  ; LDG.E.SYS R16, [R40+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".306" = load ptr, ptr %"R40_Float32_PTR"
  %"zext.16" = zext ptr %".306" to i64
  %".307" = load ptr, ptr %"R41_Int32"
  %"zext.17" = zext ptr %".307" to i64
  %"shl.5" = shl i64 %"zext.17", 32
  %"or.26" = or i64 %"shl.5", %"zext.16"
  %".308" = add i64 %"or.26", 8
  %"for_LDG.14" = inttoptr i64 %".308" to ptr
  %".309" = load float, ptr %"for_LDG.14"
  store float %".309", ptr %"R16_Float32"
  ; LDG.E.SYS R17, [R40+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".312" = load ptr, ptr %"R40_Float32_PTR"
  %"zext.18" = zext ptr %".312" to i64
  %".313" = load ptr, ptr %"R41_Int32"
  %"zext.19" = zext ptr %".313" to i64
  %"shl.6" = shl i64 %"zext.19", 32
  %"or.27" = or i64 %"shl.6", %"zext.18"
  %".314" = add i64 %"or.27", 12
  %"for_LDG.15" = inttoptr i64 %".314" to ptr
  %".315" = load float, ptr %"for_LDG.15"
  store float %".315", ptr %"R17_Float32"
  ; LDG.E.SYS R19, [R34]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".318" = load ptr, ptr %"R34_Float32_PTR"
  %"zext.20" = zext ptr %".318" to i64
  %".319" = load ptr, ptr %"R35_Int32"
  %"zext.21" = zext ptr %".319" to i64
  %"shl.7" = shl i64 %"zext.21", 32
  %"or.28" = or i64 %"shl.7", %"zext.20"
  %".320" = add i64 %"or.28", 0
  %"for_LDG.16" = inttoptr i64 %".320" to ptr
  %".321" = load float, ptr %"for_LDG.16"
  store float %".321", ptr %"R19_Float32"
  ; LDG.E.SYS R20, [R34+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".324" = load ptr, ptr %"R34_Float32_PTR"
  %"zext.22" = zext ptr %".324" to i64
  %".325" = load ptr, ptr %"R35_Int32"
  %"zext.23" = zext ptr %".325" to i64
  %"shl.8" = shl i64 %"zext.23", 32
  %"or.29" = or i64 %"shl.8", %"zext.22"
  %".326" = add i64 %"or.29", 4
  %"for_LDG.17" = inttoptr i64 %".326" to ptr
  %".327" = load float, ptr %"for_LDG.17"
  store float %".327", ptr %"R20_Float32"
  ; IMAD.WIDE R40, R51, R18, c[0x0][0x170]
  %".330" = load i32, ptr %"R51_Int32"
  %".331" = load i32, ptr %"R18_Int32"
  %"mul.16" = mul i32 %".330", %".331"
  %"add.37" = add i32 %"mul.16", %"Arg_4"
  store i32 %"add.37", ptr %"R40_Int32"
  ; LDG.E.SYS R51, [R38]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".334" = load ptr, ptr %"R38_Float32_PTR"
  %"zext.24" = zext ptr %".334" to i64
  %"or.30" = or i64 0, %"zext.24"
  %"or.31" = or i64 %"or.30", %"zext.24"
  %".335" = add i64 %"or.31", 0
  %"for_LDG.18" = inttoptr i64 %".335" to ptr
  %".336" = load float, ptr %"for_LDG.18"
  store float %".336", ptr %"R51_Float32"
  ; LDG.E.SYS R21, [R34+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".339" = load ptr, ptr %"R34_Float32_PTR"
  %"zext.25" = zext ptr %".339" to i64
  %".340" = load ptr, ptr %"R35_Int32"
  %"zext.26" = zext ptr %".340" to i64
  %"shl.9" = shl i64 %"zext.26", 32
  %"or.32" = or i64 %"shl.9", %"zext.25"
  %".341" = add i64 %"or.32", 8
  %"for_LDG.19" = inttoptr i64 %".341" to ptr
  %".342" = load float, ptr %"for_LDG.19"
  store float %".342", ptr %"R21_Float32"
  ; LDG.E.SYS R42, [R34+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".345" = load ptr, ptr %"R34_Float32_PTR"
  %"zext.27" = zext ptr %".345" to i64
  %".346" = load ptr, ptr %"R35_Int32"
  %"zext.28" = zext ptr %".346" to i64
  %"shl.10" = shl i64 %"zext.28", 32
  %"or.33" = or i64 %"shl.10", %"zext.27"
  %".347" = add i64 %"or.33", 12
  %"for_LDG.20" = inttoptr i64 %".347" to ptr
  %".348" = load float, ptr %"for_LDG.20"
  store float %".348", ptr %"R42_Float32"
  ; LDG.E.SYS R44, [R36]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".351" = load ptr, ptr %"R36_Float32_PTR"
  %"zext.29" = zext ptr %".351" to i64
  %".352" = load ptr, ptr %"R37_Int32"
  %"zext.30" = zext ptr %".352" to i64
  %"shl.11" = shl i64 %"zext.30", 32
  %"or.34" = or i64 %"shl.11", %"zext.29"
  %".353" = add i64 %"or.34", 0
  %"for_LDG.21" = inttoptr i64 %".353" to ptr
  %".354" = load float, ptr %"for_LDG.21"
  store float %".354", ptr %"R44_Float32"
  ; LDG.E.SYS R46, [R36+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".357" = load ptr, ptr %"R36_Float32_PTR"
  %"zext.31" = zext ptr %".357" to i64
  %".358" = load ptr, ptr %"R37_Int32"
  %"zext.32" = zext ptr %".358" to i64
  %"shl.12" = shl i64 %"zext.32", 32
  %"or.35" = or i64 %"shl.12", %"zext.31"
  %".359" = add i64 %"or.35", 4
  %"for_LDG.22" = inttoptr i64 %".359" to ptr
  %".360" = load float, ptr %"for_LDG.22"
  store float %".360", ptr %"R46_Float32"
  ; IADD3 R35, R23, 0x8, RZ
  %".363" = load i32, ptr %"R23_Int32"
  %"add.38" = add i32 %".363", 8
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R35_Int32"
  ; LDG.E.SYS R48, [R36+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".366" = load ptr, ptr %"R36_Float32_PTR"
  %"zext.33" = zext ptr %".366" to i64
  %".367" = load ptr, ptr %"R37_Int32"
  %"zext.34" = zext ptr %".367" to i64
  %"shl.13" = shl i64 %"zext.34", 32
  %"or.36" = or i64 %"shl.13", %"zext.33"
  %".368" = add i64 %"or.36", 8
  %"for_LDG.23" = inttoptr i64 %".368" to ptr
  %".369" = load float, ptr %"for_LDG.23"
  store float %".369", ptr %"R48_Float32"
  ; LDG.E.SYS R50, [R36+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".372" = load ptr, ptr %"R36_Float32_PTR"
  %"zext.35" = zext ptr %".372" to i64
  %".373" = load ptr, ptr %"R37_Int32"
  %"zext.36" = zext ptr %".373" to i64
  %"shl.14" = shl i64 %"zext.36", 32
  %"or.37" = or i64 %"shl.14", %"zext.35"
  %".374" = add i64 %"or.37", 12
  %"for_LDG.24" = inttoptr i64 %".374" to ptr
  %".375" = load float, ptr %"for_LDG.24"
  store float %".375", ptr %"R50_Float32"
  ; LDG.E.SYS R53, [R38+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".378" = load ptr, ptr %"R38_Float32_PTR"
  %"zext.37" = zext ptr %".378" to i64
  %"or.38" = or i64 0, %"zext.37"
  %"or.39" = or i64 %"or.38", %"zext.37"
  %".379" = add i64 %"or.39", 4
  %"for_LDG.25" = inttoptr i64 %".379" to ptr
  %".380" = load float, ptr %"for_LDG.25"
  store float %".380", ptr %"R53_Float32"
  ; LDG.E.SYS R59, [R40+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".383" = load ptr, ptr %"R40_Float32_PTR"
  %"zext.38" = zext ptr %".383" to i64
  %".384" = load ptr, ptr %"R41_Int32"
  %"zext.39" = zext ptr %".384" to i64
  %"shl.15" = shl i64 %"zext.39", 32
  %"or.40" = or i64 %"shl.15", %"zext.38"
  %".385" = add i64 %"or.40", 4
  %"for_LDG.26" = inttoptr i64 %".385" to ptr
  %".386" = load float, ptr %"for_LDG.26"
  store float %".386", ptr %"R59_Float32"
  ; IADD3 R37, R25, 0x8, RZ
  %".389" = load i32, ptr %"R25_Int32"
  %"add.40" = add i32 %".389", 8
  %"add.41" = add i32 %"add.40", 0
  store i32 %"add.41", ptr %"R37_Int32"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x170]
  %".392" = load i32, ptr %"R35_Int32"
  %".393" = load i32, ptr %"R18_Int32"
  %"mul.17" = mul i32 %".392", %".393"
  %"add.42" = add i32 %"mul.17", %"Arg_4"
  store i32 %"add.42", ptr %"R34_Int32"
  ; LDG.E.SYS R55, [R38+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".396" = load ptr, ptr %"R38_Float32_PTR"
  %"zext.40" = zext ptr %".396" to i64
  %"or.41" = or i64 0, %"zext.40"
  %"or.42" = or i64 %"or.41", %"zext.40"
  %".397" = add i64 %"or.42", 8
  %"for_LDG.27" = inttoptr i64 %".397" to ptr
  %".398" = load float, ptr %"for_LDG.27"
  store float %".398", ptr %"R55_Float32"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x170]
  %".401" = load i32, ptr %"R37_Int32"
  %".402" = load i32, ptr %"R18_Int32"
  %"mul.18" = mul i32 %".401", %".402"
  %"add.43" = add i32 %"mul.18", %"Arg_4"
  store i32 %"add.43", ptr %"R36_Int32"
  ; LDG.E.SYS R61, [R40+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".405" = load ptr, ptr %"R40_Float32_PTR"
  %"zext.41" = zext ptr %".405" to i64
  %".406" = load ptr, ptr %"R41_Int32"
  %"zext.42" = zext ptr %".406" to i64
  %"shl.16" = shl i64 %"zext.42", 32
  %"or.43" = or i64 %"shl.16", %"zext.41"
  %".407" = add i64 %"or.43", 8
  %"for_LDG.28" = inttoptr i64 %".407" to ptr
  %".408" = load float, ptr %"for_LDG.28"
  store float %".408", ptr %"R61_Float32"
  ; LDG.E.SYS R60, [R38+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".411" = load ptr, ptr %"R38_Float32_PTR"
  %"zext.43" = zext ptr %".411" to i64
  %"or.44" = or i64 0, %"zext.43"
  %"or.45" = or i64 %"or.44", %"zext.43"
  %".412" = add i64 %"or.45", 12
  %"for_LDG.29" = inttoptr i64 %".412" to ptr
  %".413" = load float, ptr %"for_LDG.29"
  store float %".413", ptr %"R60_Float32"
  ; IADD3 R23, R23, 0xc, RZ
  %".416" = load i32, ptr %"R23_Int32"
  %"add.44" = add i32 %".416", 12
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R23_Int32"
  ; IADD3 R25, R25, 0xc, RZ
  %".419" = load i32, ptr %"R25_Int32"
  %"add.46" = add i32 %".419", 12
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R25_Int32"
  ; LDG.E.SYS R39, [R34+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".422" = load ptr, ptr %"R34_Float32_PTR"
  %"zext.44" = zext ptr %".422" to i64
  %".423" = load ptr, ptr %"R35_Int32"
  %"zext.45" = zext ptr %".423" to i64
  %"shl.17" = shl i64 %"zext.45", 32
  %"or.46" = or i64 %"shl.17", %"zext.44"
  %".424" = add i64 %"or.46", 4
  %"for_LDG.30" = inttoptr i64 %".424" to ptr
  %".425" = load float, ptr %"for_LDG.30"
  store float %".425", ptr %"R39_Float32"
  ; LDG.E.SYS R38, [R34+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".428" = load ptr, ptr %"R34_Float32_PTR"
  %"zext.46" = zext ptr %".428" to i64
  %".429" = load ptr, ptr %"R35_Int32"
  %"zext.47" = zext ptr %".429" to i64
  %"shl.18" = shl i64 %"zext.47", 32
  %"or.47" = or i64 %"shl.18", %"zext.46"
  %".430" = add i64 %"or.47", 8
  %"for_LDG.31" = inttoptr i64 %".430" to ptr
  %".431" = load float, ptr %"for_LDG.31"
  store float %".431", ptr %"R38_Float32"
  ; FFMA R56, R56, R57, R52
  %".434" = load float, ptr %"R56_Float32"
  %".435" = load float, ptr %"R57_Float32"
  %".436" = load float, ptr %"R52_Float32"
  %"fmul" = fmul float %".434", %".435"
  %"fadd" = fadd float %"fmul", %".436"
  store float %"fadd", ptr %"R56_Float32"
  ; LDG.E.SYS R52, [R40+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".439" = load ptr, ptr %"R40_Float32_PTR"
  %"zext.48" = zext ptr %".439" to i64
  %".440" = load ptr, ptr %"R41_Int32"
  %"zext.49" = zext ptr %".440" to i64
  %"shl.19" = shl i64 %"zext.49", 32
  %"or.48" = or i64 %"shl.19", %"zext.48"
  %".441" = add i64 %"or.48", 12
  %"for_LDG.32" = inttoptr i64 %".441" to ptr
  %".442" = load float, ptr %"for_LDG.32"
  store float %".442", ptr %"R52_Float32"
  ; FFMA R58, R57, R58, R54
  %".445" = load float, ptr %"R57_Float32"
  %".446" = load float, ptr %"R58_Float32"
  %".447" = load float, ptr %"R54_Float32"
  %"fmul.1" = fmul float %".445", %".446"
  %"fadd.1" = fadd float %"fmul.1", %".447"
  store float %"fadd.1", ptr %"R58_Float32"
  ; LDG.E.SYS R57, [R40]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".450" = load ptr, ptr %"R40_Float32_PTR"
  %"zext.50" = zext ptr %".450" to i64
  %".451" = load ptr, ptr %"R41_Int32"
  %"zext.51" = zext ptr %".451" to i64
  %"shl.20" = shl i64 %"zext.51", 32
  %"or.49" = or i64 %"shl.20", %"zext.50"
  %".452" = add i64 %"or.49", 0
  %"for_LDG.33" = inttoptr i64 %".452" to ptr
  %".453" = load float, ptr %"for_LDG.33"
  store float %".453", ptr %"R57_Float32"
  ; LDG.E.SYS R54, [R34]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".456" = load ptr, ptr %"R34_Float32_PTR"
  %"zext.52" = zext ptr %".456" to i64
  %".457" = load ptr, ptr %"R35_Int32"
  %"zext.53" = zext ptr %".457" to i64
  %"shl.21" = shl i64 %"zext.53", 32
  %"or.50" = or i64 %"shl.21", %"zext.52"
  %".458" = add i64 %"or.50", 0
  %"for_LDG.34" = inttoptr i64 %".458" to ptr
  %".459" = load float, ptr %"for_LDG.34"
  store float %".459", ptr %"R54_Float32"
  ; FFMA R56, R47, R24, R56
  %".462" = load float, ptr %"R47_Float32"
  %".463" = load float, ptr %"R24_Float32"
  %".464" = load float, ptr %"R56_Float32"
  %"fmul.2" = fmul float %".462", %".463"
  %"fadd.2" = fadd float %"fmul.2", %".464"
  store float %"fadd.2", ptr %"R56_Float32"
  ; LDG.E.SYS R47, [R34+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".467" = load ptr, ptr %"R34_Float32_PTR"
  %"zext.54" = zext ptr %".467" to i64
  %".468" = load ptr, ptr %"R35_Int32"
  %"zext.55" = zext ptr %".468" to i64
  %"shl.22" = shl i64 %"zext.55", 32
  %"or.51" = or i64 %"shl.22", %"zext.54"
  %".469" = add i64 %"or.51", 12
  %"for_LDG.35" = inttoptr i64 %".469" to ptr
  %".470" = load float, ptr %"for_LDG.35"
  store float %".470", ptr %"R47_Float32"
  ; FFMA R58, R24, R49, R58
  %".473" = load float, ptr %"R24_Float32"
  %".474" = load float, ptr %"R49_Float32"
  %".475" = load float, ptr %"R58_Float32"
  %"fmul.3" = fmul float %".473", %".474"
  %"fadd.3" = fadd float %"fmul.3", %".475"
  store float %"fadd.3", ptr %"R58_Float32"
  ; LDG.E.SYS R41, [R36+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".478" = load ptr, ptr %"R36_Float32_PTR"
  %"zext.56" = zext ptr %".478" to i64
  %".479" = load ptr, ptr %"R37_Int32"
  %"zext.57" = zext ptr %".479" to i64
  %"shl.23" = shl i64 %"zext.57", 32
  %"or.52" = or i64 %"shl.23", %"zext.56"
  %".480" = add i64 %"or.52", 4
  %"for_LDG.36" = inttoptr i64 %".480" to ptr
  %".481" = load float, ptr %"for_LDG.36"
  store float %".481", ptr %"R41_Float32"
  ; LDG.E.SYS R40, [R36+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".484" = load ptr, ptr %"R36_Float32_PTR"
  %"zext.58" = zext ptr %".484" to i64
  %".485" = load ptr, ptr %"R37_Int32"
  %"zext.59" = zext ptr %".485" to i64
  %"shl.24" = shl i64 %"zext.59", 32
  %"or.53" = or i64 %"shl.24", %"zext.58"
  %".486" = add i64 %"or.53", 8
  %"for_LDG.37" = inttoptr i64 %".486" to ptr
  %".487" = load float, ptr %"for_LDG.37"
  store float %".487", ptr %"R40_Float32"
  ; FFMA R49, R43, R22, R56
  %".490" = load float, ptr %"R43_Float32"
  %".491" = load float, ptr %"R22_Float32"
  %".492" = load float, ptr %"R56_Float32"
  %"fmul.4" = fmul float %".490", %".491"
  %"fadd.4" = fadd float %"fmul.4", %".492"
  store float %"fadd.4", ptr %"R49_Float32"
  ; LDG.E.SYS R56, [R36]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".495" = load ptr, ptr %"R36_Float32_PTR"
  %"zext.60" = zext ptr %".495" to i64
  %".496" = load ptr, ptr %"R37_Int32"
  %"zext.61" = zext ptr %".496" to i64
  %"shl.25" = shl i64 %"zext.61", 32
  %"or.54" = or i64 %"shl.25", %"zext.60"
  %".497" = add i64 %"or.54", 0
  %"for_LDG.38" = inttoptr i64 %".497" to ptr
  %".498" = load float, ptr %"for_LDG.38"
  store float %".498", ptr %"R56_Float32"
  ; IMAD.WIDE R24, R25, R18, c[0x0][0x170]
  %".501" = load i32, ptr %"R25_Int32"
  %".502" = load i32, ptr %"R18_Int32"
  %"mul.19" = mul i32 %".501", %".502"
  %"add.48" = add i32 %"mul.19", %"Arg_4"
  store i32 %"add.48", ptr %"R24_Int32"
  ; LDG.E.SYS R43, [R36+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".505" = load ptr, ptr %"R36_Float32_PTR"
  %"zext.62" = zext ptr %".505" to i64
  %".506" = load ptr, ptr %"R37_Int32"
  %"zext.63" = zext ptr %".506" to i64
  %"shl.26" = shl i64 %"zext.63", 32
  %"or.55" = or i64 %"shl.26", %"zext.62"
  %".507" = add i64 %"or.55", 12
  %"for_LDG.39" = inttoptr i64 %".507" to ptr
  %".508" = load float, ptr %"for_LDG.39"
  store float %".508", ptr %"R43_Float32"
  ; FFMA R58, R22, R45, R58
  %".511" = load float, ptr %"R22_Float32"
  %".512" = load float, ptr %"R45_Float32"
  %".513" = load float, ptr %"R58_Float32"
  %"fmul.5" = fmul float %".511", %".512"
  %"fadd.5" = fadd float %"fmul.5", %".513"
  store float %"fadd.5", ptr %"R58_Float32"
  ; IMAD.WIDE R22, R23, R18, c[0x0][0x170]
  %".516" = load i32, ptr %"R23_Int32"
  %".517" = load i32, ptr %"R18_Int32"
  %"mul.20" = mul i32 %".516", %".517"
  %"add.49" = add i32 %"mul.20", %"Arg_4"
  store i32 %"add.49", ptr %"R22_Int32"
  ; LDG.E.SYS R18, [R24]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".520" = load ptr, ptr %"R24_Float32_PTR"
  %"zext.64" = zext ptr %".520" to i64
  %".521" = load ptr, ptr %"R25_Int32"
  %"zext.65" = zext ptr %".521" to i64
  %"shl.27" = shl i64 %"zext.65", 32
  %"or.56" = or i64 %"shl.27", %"zext.64"
  %".522" = add i64 %"or.56", 0
  %"for_LDG.40" = inttoptr i64 %".522" to ptr
  %".523" = load float, ptr %"for_LDG.40"
  store float %".523", ptr %"R18_Float32"
  ; FFMA R14, R14, R15, R49
  %".526" = load float, ptr %"R14_Float32"
  %".527" = load float, ptr %"R15_Float32"
  %".528" = load float, ptr %"R49_Float32"
  %"fmul.6" = fmul float %".526", %".527"
  %"fadd.6" = fadd float %"fmul.6", %".528"
  store float %"fadd.6", ptr %"R14_Float32"
  ; LDG.E.SYS R49, [R24+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".531" = load ptr, ptr %"R24_Float32_PTR"
  %"zext.66" = zext ptr %".531" to i64
  %".532" = load ptr, ptr %"R25_Int32"
  %"zext.67" = zext ptr %".532" to i64
  %"shl.28" = shl i64 %"zext.67", 32
  %"or.57" = or i64 %"shl.28", %"zext.66"
  %".533" = add i64 %"or.57", 4
  %"for_LDG.41" = inttoptr i64 %".533" to ptr
  %".534" = load float, ptr %"for_LDG.41"
  store float %".534", ptr %"R49_Float32"
  ; FFMA R58, R15, R13, R58
  %".537" = load float, ptr %"R15_Float32"
  %".538" = load float, ptr %"R13_Float32"
  %".539" = load float, ptr %"R58_Float32"
  %"fmul.7" = fmul float %".537", %".538"
  %"fadd.7" = fadd float %"fmul.7", %".539"
  store float %"fadd.7", ptr %"R58_Float32"
  ; LDG.E.SYS R35, [R22]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".542" = load ptr, ptr %"R22_Float32_PTR"
  %"zext.68" = zext ptr %".542" to i64
  %".543" = load ptr, ptr %"R23_Int32"
  %"zext.69" = zext ptr %".543" to i64
  %"shl.29" = shl i64 %"zext.69", 32
  %"or.58" = or i64 %"shl.29", %"zext.68"
  %".544" = add i64 %"or.58", 0
  %"for_LDG.42" = inttoptr i64 %".544" to ptr
  %".545" = load float, ptr %"for_LDG.42"
  store float %".545", ptr %"R35_Float32"
  ; LDG.E.SYS R15, [R22+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".548" = load ptr, ptr %"R22_Float32_PTR"
  %"zext.70" = zext ptr %".548" to i64
  %".549" = load ptr, ptr %"R23_Int32"
  %"zext.71" = zext ptr %".549" to i64
  %"shl.30" = shl i64 %"zext.71", 32
  %"or.59" = or i64 %"shl.30", %"zext.70"
  %".550" = add i64 %"or.59", 4
  %"for_LDG.43" = inttoptr i64 %".550" to ptr
  %".551" = load float, ptr %"for_LDG.43"
  store float %".551", ptr %"R15_Float32"
  ; LDG.E.SYS R13, [R22+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".554" = load ptr, ptr %"R22_Float32_PTR"
  %"zext.72" = zext ptr %".554" to i64
  %".555" = load ptr, ptr %"R23_Int32"
  %"zext.73" = zext ptr %".555" to i64
  %"shl.31" = shl i64 %"zext.73", 32
  %"or.60" = or i64 %"shl.31", %"zext.72"
  %".556" = add i64 %"or.60", 8
  %"for_LDG.44" = inttoptr i64 %".556" to ptr
  %".557" = load float, ptr %"for_LDG.44"
  store float %".557", ptr %"R13_Float32"
  ; LDG.E.SYS R37, [R24+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".560" = load ptr, ptr %"R24_Float32_PTR"
  %"zext.74" = zext ptr %".560" to i64
  %".561" = load ptr, ptr %"R25_Int32"
  %"zext.75" = zext ptr %".561" to i64
  %"shl.32" = shl i64 %"zext.75", 32
  %"or.61" = or i64 %"shl.32", %"zext.74"
  %".562" = add i64 %"or.61", 8
  %"for_LDG.45" = inttoptr i64 %".562" to ptr
  %".563" = load float, ptr %"for_LDG.45"
  store float %".563", ptr %"R37_Float32"
  ; LDG.E.SYS R45, [R22+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".566" = load ptr, ptr %"R22_Float32_PTR"
  %"zext.76" = zext ptr %".566" to i64
  %".567" = load ptr, ptr %"R23_Int32"
  %"zext.77" = zext ptr %".567" to i64
  %"shl.33" = shl i64 %"zext.77", 32
  %"or.62" = or i64 %"shl.33", %"zext.76"
  %".568" = add i64 %"or.62", 12
  %"for_LDG.46" = inttoptr i64 %".568" to ptr
  %".569" = load float, ptr %"for_LDG.46"
  store float %".569", ptr %"R45_Float32"
  ; LDG.E.SYS R34, [R24+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".572" = load ptr, ptr %"R24_Float32_PTR"
  %"zext.78" = zext ptr %".572" to i64
  %".573" = load ptr, ptr %"R25_Int32"
  %"zext.79" = zext ptr %".573" to i64
  %"shl.34" = shl i64 %"zext.79", 32
  %"or.63" = or i64 %"shl.34", %"zext.78"
  %".574" = add i64 %"or.63", 12
  %"for_LDG.47" = inttoptr i64 %".574" to ptr
  %".575" = load float, ptr %"for_LDG.47"
  store float %".575", ptr %"R34_Float32"
  ; FFMA R14, R51, R12, R14
  %".578" = load float, ptr %"R51_Float32"
  %".579" = load float, ptr %"R12_Float32"
  %".580" = load float, ptr %"R14_Float32"
  %"fmul.8" = fmul float %".578", %".579"
  %"fadd.8" = fadd float %"fmul.8", %".580"
  store float %"fadd.8", ptr %"R14_Float32"
  ; IADD3 R9, R9, -0x10, RZ
  %".583" = load i32, ptr %"R9_Int32"
  %"add.50" = add i32 %".583", -16
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R9_Int32"
  ; FFMA R14, R53, R10, R14
  %".586" = load float, ptr %"R53_Float32"
  %".587" = load float, ptr %"R10_Float32"
  %".588" = load float, ptr %"R14_Float32"
  %"fmul.9" = fmul float %".586", %".587"
  %"fadd.9" = fadd float %"fmul.9", %".588"
  store float %"fadd.9", ptr %"R14_Float32"
  ; FFMA R14, R55, R16, R14
  %".591" = load float, ptr %"R55_Float32"
  %".592" = load float, ptr %"R16_Float32"
  %".593" = load float, ptr %"R14_Float32"
  %"fmul.10" = fmul float %".591", %".592"
  %"fadd.10" = fadd float %"fmul.10", %".593"
  store float %"fadd.10", ptr %"R14_Float32"
  ; FFMA R14, R60, R17, R14
  %".596" = load float, ptr %"R60_Float32"
  %".597" = load float, ptr %"R17_Float32"
  %".598" = load float, ptr %"R14_Float32"
  %"fmul.11" = fmul float %".596", %".597"
  %"fadd.11" = fadd float %"fmul.11", %".598"
  store float %"fadd.11", ptr %"R14_Float32"
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".601" = load i32, ptr %"R9_Int32"
  %".602" = load i1, ptr %"PT_Bool"
  %"cmp.8" = icmp sgt i32 %".601", 12
  %".603" = and i1 %"cmp.8", %".602"
  ; IADD3 R11, R11, 0x10, RZ
  %".605" = load i32, ptr %"R11_Int32"
  %"add.52" = add i32 %".605", 16
  %"add.53" = add i32 %"add.52", 0
  store i32 %"add.53", ptr %"R11_Int32"
  ; FFMA R57, R12, R57, R58
  %".608" = load float, ptr %"R12_Float32"
  %".609" = load float, ptr %"R57_Float32"
  %".610" = load float, ptr %"R58_Float32"
  %"fmul.12" = fmul float %".608", %".609"
  %"fadd.12" = fadd float %"fmul.12", %".610"
  store float %"fadd.12", ptr %"R57_Float32"
  ; FFMA R57, R10, R59, R57
  %".613" = load float, ptr %"R10_Float32"
  %".614" = load float, ptr %"R59_Float32"
  %".615" = load float, ptr %"R57_Float32"
  %"fmul.13" = fmul float %".613", %".614"
  %"fadd.13" = fadd float %"fmul.13", %".615"
  store float %"fadd.13", ptr %"R57_Float32"
  ; FFMA R57, R16, R61, R57
  %".618" = load float, ptr %"R16_Float32"
  %".619" = load float, ptr %"R61_Float32"
  %".620" = load float, ptr %"R57_Float32"
  %"fmul.14" = fmul float %".618", %".619"
  %"fadd.14" = fadd float %"fmul.14", %".620"
  store float %"fadd.14", ptr %"R57_Float32"
  ; FFMA R52, R17, R52, R57
  %".623" = load float, ptr %"R17_Float32"
  %".624" = load float, ptr %"R52_Float32"
  %".625" = load float, ptr %"R57_Float32"
  %"fmul.15" = fmul float %".623", %".624"
  %"fadd.15" = fadd float %"fmul.15", %".625"
  store float %"fadd.15", ptr %"R52_Float32"
  ; FFMA R14, R54, R19, R14
  %".628" = load float, ptr %"R54_Float32"
  %".629" = load float, ptr %"R19_Float32"
  %".630" = load float, ptr %"R14_Float32"
  %"fmul.16" = fmul float %".628", %".629"
  %"fadd.16" = fadd float %"fmul.16", %".630"
  store float %"fadd.16", ptr %"R14_Float32"
  ; FFMA R52, R19, R56, R52
  %".633" = load float, ptr %"R19_Float32"
  %".634" = load float, ptr %"R56_Float32"
  %".635" = load float, ptr %"R52_Float32"
  %"fmul.17" = fmul float %".633", %".634"
  %"fadd.17" = fadd float %"fmul.17", %".635"
  store float %"fadd.17", ptr %"R52_Float32"
  ; FFMA R14, R39, R20, R14
  %".638" = load float, ptr %"R39_Float32"
  %".639" = load float, ptr %"R20_Float32"
  %".640" = load float, ptr %"R14_Float32"
  %"fmul.18" = fmul float %".638", %".639"
  %"fadd.18" = fadd float %"fmul.18", %".640"
  store float %"fadd.18", ptr %"R14_Float32"
  ; FFMA R41, R20, R41, R52
  %".643" = load float, ptr %"R20_Float32"
  %".644" = load float, ptr %"R41_Float32"
  %".645" = load float, ptr %"R52_Float32"
  %"fmul.19" = fmul float %".643", %".644"
  %"fadd.19" = fadd float %"fmul.19", %".645"
  store float %"fadd.19", ptr %"R41_Float32"
  ; FFMA R14, R38, R21, R14
  %".648" = load float, ptr %"R38_Float32"
  %".649" = load float, ptr %"R21_Float32"
  %".650" = load float, ptr %"R14_Float32"
  %"fmul.20" = fmul float %".648", %".649"
  %"fadd.20" = fadd float %"fmul.20", %".650"
  store float %"fadd.20", ptr %"R14_Float32"
  ; FFMA R40, R21, R40, R41
  %".653" = load float, ptr %"R21_Float32"
  %".654" = load float, ptr %"R40_Float32"
  %".655" = load float, ptr %"R41_Float32"
  %"fmul.21" = fmul float %".653", %".654"
  %"fadd.21" = fadd float %"fmul.21", %".655"
  store float %"fadd.21", ptr %"R40_Float32"
  ; FFMA R14, R47, R42, R14
  %".658" = load float, ptr %"R47_Float32"
  %".659" = load float, ptr %"R42_Float32"
  %".660" = load float, ptr %"R14_Float32"
  %"fmul.22" = fmul float %".658", %".659"
  %"fadd.22" = fadd float %"fmul.22", %".660"
  store float %"fadd.22", ptr %"R14_Float32"
  ; FFMA R43, R42, R43, R40
  %".663" = load float, ptr %"R42_Float32"
  %".664" = load float, ptr %"R43_Float32"
  %".665" = load float, ptr %"R40_Float32"
  %"fmul.23" = fmul float %".663", %".664"
  %"fadd.23" = fadd float %"fmul.23", %".665"
  store float %"fadd.23", ptr %"R43_Float32"
  ; FFMA R18, R44, R18, R43
  %".668" = load float, ptr %"R44_Float32"
  %".669" = load float, ptr %"R18_Float32"
  %".670" = load float, ptr %"R43_Float32"
  %"fmul.24" = fmul float %".668", %".669"
  %"fadd.24" = fadd float %"fmul.24", %".670"
  store float %"fadd.24", ptr %"R18_Float32"
  ; FFMA R14, R35, R44, R14
  %".673" = load float, ptr %"R35_Float32"
  %".674" = load float, ptr %"R44_Float32"
  %".675" = load float, ptr %"R14_Float32"
  %"fmul.25" = fmul float %".673", %".674"
  %"fadd.25" = fadd float %"fmul.25", %".675"
  store float %"fadd.25", ptr %"R14_Float32"
  ; FFMA R18, R46, R49, R18
  %".678" = load float, ptr %"R46_Float32"
  %".679" = load float, ptr %"R49_Float32"
  %".680" = load float, ptr %"R18_Float32"
  %"fmul.26" = fmul float %".678", %".679"
  %"fadd.26" = fadd float %"fmul.26", %".680"
  store float %"fadd.26", ptr %"R18_Float32"
  ; FFMA R14, R15, R46, R14
  %".683" = load float, ptr %"R15_Float32"
  %".684" = load float, ptr %"R46_Float32"
  %".685" = load float, ptr %"R14_Float32"
  %"fmul.27" = fmul float %".683", %".684"
  %"fadd.27" = fadd float %"fmul.27", %".685"
  store float %"fadd.27", ptr %"R14_Float32"
  ; FFMA R13, R13, R48, R14
  %".688" = load float, ptr %"R13_Float32"
  %".689" = load float, ptr %"R48_Float32"
  %".690" = load float, ptr %"R14_Float32"
  %"fmul.28" = fmul float %".688", %".689"
  %"fadd.28" = fadd float %"fmul.28", %".690"
  store float %"fadd.28", ptr %"R13_Float32"
  ; FFMA R37, R48, R37, R18
  %".693" = load float, ptr %"R48_Float32"
  %".694" = load float, ptr %"R37_Float32"
  %".695" = load float, ptr %"R18_Float32"
  %"fmul.29" = fmul float %".693", %".694"
  %"fadd.29" = fadd float %"fmul.29", %".695"
  store float %"fadd.29", ptr %"R37_Float32"
  ; FFMA R52, R45, R50, R13
  %".698" = load float, ptr %"R45_Float32"
  %".699" = load float, ptr %"R50_Float32"
  %".700" = load float, ptr %"R13_Float32"
  %"fmul.30" = fmul float %".698", %".699"
  %"fadd.30" = fadd float %"fmul.30", %".700"
  store float %"fadd.30", ptr %"R52_Float32"
  ; FFMA R54, R50, R34, R37
  %".703" = load float, ptr %"R50_Float32"
  %".704" = load float, ptr %"R34_Float32"
  %".705" = load float, ptr %"R37_Float32"
  %"fmul.31" = fmul float %".703", %".704"
  %"fadd.31" = fadd float %"fmul.31", %".705"
  store float %"fadd.31", ptr %"R54_Float32"
  ; @P1 BRA `(.L_x_5)
  %".708" = load i1, ptr %"P1_Bool"
  %".709" = icmp ne i1 %".708", 1
  br i1 %".709", label %".L_x_5", label %".L_x_4"
.L_x_4:
  ; ISETP.GT.AND P1, PT, R9, 0x4, PT
  %".712" = load i32, ptr %"R9_Int32"
  %".713" = load i1, ptr %"PT_Bool"
  %"cmp.9" = icmp sgt i32 %".712", 4
  %".714" = and i1 %"cmp.9", %".713"
  ; @!P1 BRA `(.L_x_6)
  %".716" = load i1, ptr %"P1_Bool"
  %".717" = icmp eq i1 %".716", 1
  br i1 %".717", label %".L_x_6", label %".L_x_4_split_0x0a00"
.L_x_4_split_0x0a00:
  ; IADD3 R13, R0, R11, RZ
  %".720" = load i32, ptr %"R0_Int32"
  %".721" = load i32, ptr %"R11_Int32"
  %"add.54" = add i32 %".720", %".721"
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R13_Int32"
  ; MOV R17, 0x4
  store i32 4, ptr %"R17_Int32"
  ; LEA R14, R2.reuse, R13, 0x2
  %".726" = load i32, ptr %"R2_Int32"
  %".727" = load i32, ptr %"R13_Int32"
  %"shl.35" = shl i32 %".726", 2
  %"add.56" = add i32 %"shl.35", %".727"
  store i32 %"add.56", ptr %"R14_Int32"
  ; IMAD R10, R2, 0x3, R13
  %".730" = load i32, ptr %"R2_Int32"
  %".731" = load i32, ptr %"R13_Int32"
  %"mul.21" = mul i32 %".730", 3
  %"add.57" = add i32 %"mul.21", %".731"
  store i32 %"add.57", ptr %"R10_Int32"
  ; IADD3 R12, R11.reuse, 0x4, RZ
  %".734" = load i32, ptr %"R11_Int32"
  %"add.58" = add i32 %".734", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R12_Int32"
  ; IMAD.WIDE R18, R11, R17.reuse, c[0x0][0x168]
  %".737" = load i32, ptr %"R11_Int32"
  %".738" = load i32, ptr %"R17_Int32"
  %"mul.22" = mul i32 %".737", %".738"
  %"add.60" = add i32 %"mul.22", %"Arg_3"
  store i32 %"add.60", ptr %"R18_Int32"
  ; IADD3 R16, R14, 0x4, RZ
  %".741" = load i32, ptr %"R14_Int32"
  %"add.61" = add i32 %".741", 4
  %"add.62" = add i32 %"add.61", 0
  store i32 %"add.62", ptr %"R16_Int32"
  ; IADD3 R15, R10.reuse, 0x4, RZ
  %".744" = load i32, ptr %"R10_Int32"
  %"add.63" = add i32 %".744", 4
  %"add.64" = add i32 %"add.63", 0
  store i32 %"add.64", ptr %"R15_Int32"
  ; IMAD.WIDE R22, R10, R17, c[0x0][0x170]
  %".747" = load i32, ptr %"R10_Int32"
  %".748" = load i32, ptr %"R17_Int32"
  %"mul.23" = mul i32 %".747", %".748"
  %"add.65" = add i32 %"mul.23", %"Arg_4"
  store i32 %"add.65", ptr %"R22_Int32"
  ; IMAD.WIDE R20, R14, R17.reuse, c[0x0][0x170]
  %".751" = load i32, ptr %"R14_Int32"
  %".752" = load i32, ptr %"R17_Int32"
  %"mul.24" = mul i32 %".751", %".752"
  %"add.66" = add i32 %"mul.24", %"Arg_4"
  store i32 %"add.66", ptr %"R20_Int32"
  ; LDG.E.SYS R39, [R18]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".755" = load ptr, ptr %"R18_Float32_PTR"
  %"zext.80" = zext ptr %".755" to i64
  %".756" = load ptr, ptr %"R19_Float32"
  %"zext.81" = zext ptr %".756" to i64
  %"shl.36" = shl i64 %"zext.81", 32
  %"or.64" = or i64 %"shl.36", %"zext.80"
  %".757" = add i64 %"or.64", 0
  %"for_LDG.48" = inttoptr i64 %".757" to ptr
  %".758" = load float, ptr %"for_LDG.48"
  store float %".758", ptr %"R39_Float32"
  ; IMAD.WIDE R12, R12, R17.reuse, c[0x0][0x168]
  %".761" = load i32, ptr %"R12_Int32"
  %".762" = load i32, ptr %"R17_Int32"
  %"mul.25" = mul i32 %".761", %".762"
  %"add.67" = add i32 %"mul.25", %"Arg_3"
  store i32 %"add.67", ptr %"R12_Int32"
  ; LDG.E.SYS R37, [R22]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".765" = load ptr, ptr %"R22_Float32_PTR"
  %"zext.82" = zext ptr %".765" to i64
  %".766" = load ptr, ptr %"R23_Int32"
  %"zext.83" = zext ptr %".766" to i64
  %"shl.37" = shl i64 %"zext.83", 32
  %"or.65" = or i64 %"shl.37", %"zext.82"
  %".767" = add i64 %"or.65", 0
  %"for_LDG.49" = inttoptr i64 %".767" to ptr
  %".768" = load float, ptr %"for_LDG.49"
  store float %".768", ptr %"R37_Float32"
  ; LDG.E.SYS R36, [R20]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".771" = load ptr, ptr %"R20_Float32_PTR"
  %"zext.84" = zext ptr %".771" to i64
  %".772" = load ptr, ptr %"R21_Float32"
  %"zext.85" = zext ptr %".772" to i64
  %"shl.38" = shl i64 %"zext.85", 32
  %"or.66" = or i64 %"shl.38", %"zext.84"
  %".773" = add i64 %"or.66", 0
  %"for_LDG.50" = inttoptr i64 %".773" to ptr
  %".774" = load float, ptr %"for_LDG.50"
  store float %".774", ptr %"R36_Float32"
  ; IMAD.WIDE R14, R15, R17, c[0x0][0x170]
  %".777" = load i32, ptr %"R15_Int32"
  %".778" = load i32, ptr %"R17_Int32"
  %"mul.26" = mul i32 %".777", %".778"
  %"add.68" = add i32 %"mul.26", %"Arg_4"
  store i32 %"add.68", ptr %"R14_Int32"
  ; LDG.E.SYS R34, [R18+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".781" = load ptr, ptr %"R18_Float32_PTR"
  %"zext.86" = zext ptr %".781" to i64
  %".782" = load ptr, ptr %"R19_Float32"
  %"zext.87" = zext ptr %".782" to i64
  %"shl.39" = shl i64 %"zext.87", 32
  %"or.67" = or i64 %"shl.39", %"zext.86"
  %".783" = add i64 %"or.67", 4
  %"for_LDG.51" = inttoptr i64 %".783" to ptr
  %".784" = load float, ptr %"for_LDG.51"
  store float %".784", ptr %"R34_Float32"
  ; LDG.E.SYS R38, [R22+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".787" = load ptr, ptr %"R22_Float32_PTR"
  %"zext.88" = zext ptr %".787" to i64
  %".788" = load ptr, ptr %"R23_Int32"
  %"zext.89" = zext ptr %".788" to i64
  %"shl.40" = shl i64 %"zext.89", 32
  %"or.68" = or i64 %"shl.40", %"zext.88"
  %".789" = add i64 %"or.68", 4
  %"for_LDG.52" = inttoptr i64 %".789" to ptr
  %".790" = load float, ptr %"for_LDG.52"
  store float %".790", ptr %"R38_Float32"
  ; LDG.E.SYS R35, [R20+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".793" = load ptr, ptr %"R20_Float32_PTR"
  %"zext.90" = zext ptr %".793" to i64
  %".794" = load ptr, ptr %"R21_Float32"
  %"zext.91" = zext ptr %".794" to i64
  %"shl.41" = shl i64 %"zext.91", 32
  %"or.69" = or i64 %"shl.41", %"zext.90"
  %".795" = add i64 %"or.69", 4
  %"for_LDG.53" = inttoptr i64 %".795" to ptr
  %".796" = load float, ptr %"for_LDG.53"
  store float %".796", ptr %"R35_Float32"
  ; IMAD.WIDE R16, R16, R17, c[0x0][0x170]
  %".799" = load i32, ptr %"R16_Int32"
  %".800" = load i32, ptr %"R17_Int32"
  %"mul.27" = mul i32 %".799", %".800"
  %"add.69" = add i32 %"mul.27", %"Arg_4"
  store i32 %"add.69", ptr %"R16_Int32"
  ; LDG.E.SYS R24, [R18+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".803" = load ptr, ptr %"R18_Float32_PTR"
  %"zext.92" = zext ptr %".803" to i64
  %".804" = load ptr, ptr %"R19_Float32"
  %"zext.93" = zext ptr %".804" to i64
  %"shl.42" = shl i64 %"zext.93", 32
  %"or.70" = or i64 %"shl.42", %"zext.92"
  %".805" = add i64 %"or.70", 8
  %"for_LDG.54" = inttoptr i64 %".805" to ptr
  %".806" = load float, ptr %"for_LDG.54"
  store float %".806", ptr %"R24_Float32"
  ; LDG.E.SYS R40, [R22+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".809" = load ptr, ptr %"R22_Float32_PTR"
  %"zext.94" = zext ptr %".809" to i64
  %".810" = load ptr, ptr %"R23_Int32"
  %"zext.95" = zext ptr %".810" to i64
  %"shl.43" = shl i64 %"zext.95", 32
  %"or.71" = or i64 %"shl.43", %"zext.94"
  %".811" = add i64 %"or.71", 8
  %"for_LDG.55" = inttoptr i64 %".811" to ptr
  %".812" = load float, ptr %"for_LDG.55"
  store float %".812", ptr %"R40_Float32"
  ; LDG.E.SYS R41, [R20+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".815" = load ptr, ptr %"R20_Float32_PTR"
  %"zext.96" = zext ptr %".815" to i64
  %".816" = load ptr, ptr %"R21_Float32"
  %"zext.97" = zext ptr %".816" to i64
  %"shl.44" = shl i64 %"zext.97", 32
  %"or.72" = or i64 %"shl.44", %"zext.96"
  %".817" = add i64 %"or.72", 8
  %"for_LDG.56" = inttoptr i64 %".817" to ptr
  %".818" = load float, ptr %"for_LDG.56"
  store float %".818", ptr %"R41_Float32"
  ; LDG.E.SYS R44, [R18+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".821" = load ptr, ptr %"R18_Float32_PTR"
  %"zext.98" = zext ptr %".821" to i64
  %".822" = load ptr, ptr %"R19_Float32"
  %"zext.99" = zext ptr %".822" to i64
  %"shl.45" = shl i64 %"zext.99", 32
  %"or.73" = or i64 %"shl.45", %"zext.98"
  %".823" = add i64 %"or.73", 12
  %"for_LDG.57" = inttoptr i64 %".823" to ptr
  %".824" = load float, ptr %"for_LDG.57"
  store float %".824", ptr %"R44_Float32"
  ; LDG.E.SYS R42, [R22+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".827" = load ptr, ptr %"R22_Float32_PTR"
  %"zext.100" = zext ptr %".827" to i64
  %".828" = load ptr, ptr %"R23_Int32"
  %"zext.101" = zext ptr %".828" to i64
  %"shl.46" = shl i64 %"zext.101", 32
  %"or.74" = or i64 %"shl.46", %"zext.100"
  %".829" = add i64 %"or.74", 12
  %"for_LDG.58" = inttoptr i64 %".829" to ptr
  %".830" = load float, ptr %"for_LDG.58"
  store float %".830", ptr %"R42_Float32"
  ; LDG.E.SYS R43, [R20+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".833" = load ptr, ptr %"R20_Float32_PTR"
  %"zext.102" = zext ptr %".833" to i64
  %".834" = load ptr, ptr %"R21_Float32"
  %"zext.103" = zext ptr %".834" to i64
  %"shl.47" = shl i64 %"zext.103", 32
  %"or.75" = or i64 %"shl.47", %"zext.102"
  %".835" = add i64 %"or.75", 12
  %"for_LDG.59" = inttoptr i64 %".835" to ptr
  %".836" = load float, ptr %"for_LDG.59"
  store float %".836", ptr %"R43_Float32"
  ; LDG.E.SYS R48, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".839" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.104" = zext ptr %".839" to i64
  %".840" = load ptr, ptr %"R13_Int32"
  %"zext.105" = zext ptr %".840" to i64
  %"shl.48" = shl i64 %"zext.105", 32
  %"or.76" = or i64 %"shl.48", %"zext.104"
  %".841" = add i64 %"or.76", 0
  %"for_LDG.60" = inttoptr i64 %".841" to ptr
  %".842" = load float, ptr %"for_LDG.60"
  store float %".842", ptr %"R48_Float32"
  ; LDG.E.SYS R46, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".845" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.106" = zext ptr %".845" to i64
  %".846" = load ptr, ptr %"R15_Int32"
  %"zext.107" = zext ptr %".846" to i64
  %"shl.49" = shl i64 %"zext.107", 32
  %"or.77" = or i64 %"shl.49", %"zext.106"
  %".847" = add i64 %"or.77", 0
  %"for_LDG.61" = inttoptr i64 %".847" to ptr
  %".848" = load float, ptr %"for_LDG.61"
  store float %".848", ptr %"R46_Float32"
  ; LDG.E.SYS R45, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".851" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.108" = zext ptr %".851" to i64
  %".852" = load ptr, ptr %"R17_Int32"
  %"zext.109" = zext ptr %".852" to i64
  %"shl.50" = shl i64 %"zext.109", 32
  %"or.78" = or i64 %"shl.50", %"zext.108"
  %".853" = add i64 %"or.78", 0
  %"for_LDG.62" = inttoptr i64 %".853" to ptr
  %".854" = load float, ptr %"for_LDG.62"
  store float %".854", ptr %"R45_Float32"
  ; LDG.E.SYS R56, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".857" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.110" = zext ptr %".857" to i64
  %".858" = load ptr, ptr %"R13_Int32"
  %"zext.111" = zext ptr %".858" to i64
  %"shl.51" = shl i64 %"zext.111", 32
  %"or.79" = or i64 %"shl.51", %"zext.110"
  %".859" = add i64 %"or.79", 4
  %"for_LDG.63" = inttoptr i64 %".859" to ptr
  %".860" = load float, ptr %"for_LDG.63"
  store float %".860", ptr %"R56_Float32"
  ; LDG.E.SYS R50, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".863" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.112" = zext ptr %".863" to i64
  %".864" = load ptr, ptr %"R15_Int32"
  %"zext.113" = zext ptr %".864" to i64
  %"shl.52" = shl i64 %"zext.113", 32
  %"or.80" = or i64 %"shl.52", %"zext.112"
  %".865" = add i64 %"or.80", 4
  %"for_LDG.64" = inttoptr i64 %".865" to ptr
  %".866" = load float, ptr %"for_LDG.64"
  store float %".866", ptr %"R50_Float32"
  ; LDG.E.SYS R47, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".869" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.114" = zext ptr %".869" to i64
  %".870" = load ptr, ptr %"R17_Int32"
  %"zext.115" = zext ptr %".870" to i64
  %"shl.53" = shl i64 %"zext.115", 32
  %"or.81" = or i64 %"shl.53", %"zext.114"
  %".871" = add i64 %"or.81", 4
  %"for_LDG.65" = inttoptr i64 %".871" to ptr
  %".872" = load float, ptr %"for_LDG.65"
  store float %".872", ptr %"R47_Float32"
  ; LDG.E.SYS R10, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".875" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.116" = zext ptr %".875" to i64
  %".876" = load ptr, ptr %"R13_Int32"
  %"zext.117" = zext ptr %".876" to i64
  %"shl.54" = shl i64 %"zext.117", 32
  %"or.82" = or i64 %"shl.54", %"zext.116"
  %".877" = add i64 %"or.82", 8
  %"for_LDG.66" = inttoptr i64 %".877" to ptr
  %".878" = load float, ptr %"for_LDG.66"
  store float %".878", ptr %"R10_Float32"
  ; LDG.E.SYS R25, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".881" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.118" = zext ptr %".881" to i64
  %".882" = load ptr, ptr %"R15_Int32"
  %"zext.119" = zext ptr %".882" to i64
  %"shl.55" = shl i64 %"zext.119", 32
  %"or.83" = or i64 %"shl.55", %"zext.118"
  %".883" = add i64 %"or.83", 8
  %"for_LDG.67" = inttoptr i64 %".883" to ptr
  %".884" = load float, ptr %"for_LDG.67"
  store float %".884", ptr %"R25_Float32"
  ; LDG.E.SYS R19, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".887" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.120" = zext ptr %".887" to i64
  %".888" = load ptr, ptr %"R17_Int32"
  %"zext.121" = zext ptr %".888" to i64
  %"shl.56" = shl i64 %"zext.121", 32
  %"or.84" = or i64 %"shl.56", %"zext.120"
  %".889" = add i64 %"or.84", 8
  %"for_LDG.68" = inttoptr i64 %".889" to ptr
  %".890" = load float, ptr %"for_LDG.68"
  store float %".890", ptr %"R19_Float32"
  ; LDG.E.SYS R18, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".893" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.122" = zext ptr %".893" to i64
  %".894" = load ptr, ptr %"R13_Int32"
  %"zext.123" = zext ptr %".894" to i64
  %"shl.57" = shl i64 %"zext.123", 32
  %"or.85" = or i64 %"shl.57", %"zext.122"
  %".895" = add i64 %"or.85", 12
  %"for_LDG.69" = inttoptr i64 %".895" to ptr
  %".896" = load float, ptr %"for_LDG.69"
  store float %".896", ptr %"R18_Float32"
  ; LDG.E.SYS R20, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".899" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.124" = zext ptr %".899" to i64
  %".900" = load ptr, ptr %"R15_Int32"
  %"zext.125" = zext ptr %".900" to i64
  %"shl.58" = shl i64 %"zext.125", 32
  %"or.86" = or i64 %"shl.58", %"zext.124"
  %".901" = add i64 %"or.86", 12
  %"for_LDG.70" = inttoptr i64 %".901" to ptr
  %".902" = load float, ptr %"for_LDG.70"
  store float %".902", ptr %"R20_Float32"
  ; LDG.E.SYS R21, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".905" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.126" = zext ptr %".905" to i64
  %".906" = load ptr, ptr %"R17_Int32"
  %"zext.127" = zext ptr %".906" to i64
  %"shl.59" = shl i64 %"zext.127", 32
  %"or.87" = or i64 %"shl.59", %"zext.126"
  %".907" = add i64 %"or.87", 12
  %"for_LDG.71" = inttoptr i64 %".907" to ptr
  %".908" = load float, ptr %"for_LDG.71"
  store float %".908", ptr %"R21_Float32"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".911" = xor i1 1, 1
  %".912" = and i1 %".911", 1
  %".913" = and i1 %".912", 1
  ; IADD3 R9, R9, -0x8, RZ
  %".915" = load i32, ptr %"R9_Int32"
  %"add.70" = add i32 %".915", -8
  %"add.71" = add i32 %"add.70", 0
  store i32 %"add.71", ptr %"R9_Int32"
  ; IADD3 R11, R11, 0x8, RZ
  %".918" = load i32, ptr %"R11_Int32"
  %"add.72" = add i32 %".918", 8
  %"add.73" = add i32 %"add.72", 0
  store i32 %"add.73", ptr %"R11_Int32"
  ; FFMA R37, R37, R39, R52
  %".921" = load float, ptr %"R37_Float32"
  %".922" = load float, ptr %"R39_Float32"
  %".923" = load float, ptr %"R52_Float32"
  %"fmul.32" = fmul float %".921", %".922"
  %"fadd.32" = fadd float %"fmul.32", %".923"
  store float %"fadd.32", ptr %"R37_Float32"
  ; FFMA R36, R39, R36, R54
  %".926" = load float, ptr %"R39_Float32"
  %".927" = load float, ptr %"R36_Float32"
  %".928" = load float, ptr %"R54_Float32"
  %"fmul.33" = fmul float %".926", %".927"
  %"fadd.33" = fadd float %"fmul.33", %".928"
  store float %"fadd.33", ptr %"R36_Float32"
  ; FFMA R37, R38, R34, R37
  %".931" = load float, ptr %"R38_Float32"
  %".932" = load float, ptr %"R34_Float32"
  %".933" = load float, ptr %"R37_Float32"
  %"fmul.34" = fmul float %".931", %".932"
  %"fadd.34" = fadd float %"fmul.34", %".933"
  store float %"fadd.34", ptr %"R37_Float32"
  ; FFMA R35, R34, R35, R36
  %".936" = load float, ptr %"R34_Float32"
  %".937" = load float, ptr %"R35_Float32"
  %".938" = load float, ptr %"R36_Float32"
  %"fmul.35" = fmul float %".936", %".937"
  %"fadd.35" = fadd float %"fmul.35", %".938"
  store float %"fadd.35", ptr %"R35_Float32"
  ; FFMA R37, R40, R24, R37
  %".941" = load float, ptr %"R40_Float32"
  %".942" = load float, ptr %"R24_Float32"
  %".943" = load float, ptr %"R37_Float32"
  %"fmul.36" = fmul float %".941", %".942"
  %"fadd.36" = fadd float %"fmul.36", %".943"
  store float %"fadd.36", ptr %"R37_Float32"
  ; FFMA R35, R24, R41, R35
  %".946" = load float, ptr %"R24_Float32"
  %".947" = load float, ptr %"R41_Float32"
  %".948" = load float, ptr %"R35_Float32"
  %"fmul.37" = fmul float %".946", %".947"
  %"fadd.37" = fadd float %"fmul.37", %".948"
  store float %"fadd.37", ptr %"R35_Float32"
  ; FFMA R37, R42, R44, R37
  %".951" = load float, ptr %"R42_Float32"
  %".952" = load float, ptr %"R44_Float32"
  %".953" = load float, ptr %"R37_Float32"
  %"fmul.38" = fmul float %".951", %".952"
  %"fadd.38" = fadd float %"fmul.38", %".953"
  store float %"fadd.38", ptr %"R37_Float32"
  ; FFMA R35, R44, R43, R35
  %".956" = load float, ptr %"R44_Float32"
  %".957" = load float, ptr %"R43_Float32"
  %".958" = load float, ptr %"R35_Float32"
  %"fmul.39" = fmul float %".956", %".957"
  %"fadd.39" = fadd float %"fmul.39", %".958"
  store float %"fadd.39", ptr %"R35_Float32"
  ; FFMA R37, R46, R48, R37
  %".961" = load float, ptr %"R46_Float32"
  %".962" = load float, ptr %"R48_Float32"
  %".963" = load float, ptr %"R37_Float32"
  %"fmul.40" = fmul float %".961", %".962"
  %"fadd.40" = fadd float %"fmul.40", %".963"
  store float %"fadd.40", ptr %"R37_Float32"
  ; FFMA R35, R48, R45, R35
  %".966" = load float, ptr %"R48_Float32"
  %".967" = load float, ptr %"R45_Float32"
  %".968" = load float, ptr %"R35_Float32"
  %"fmul.41" = fmul float %".966", %".967"
  %"fadd.41" = fadd float %"fmul.41", %".968"
  store float %"fadd.41", ptr %"R35_Float32"
  ; FFMA R37, R50, R56, R37
  %".971" = load float, ptr %"R50_Float32"
  %".972" = load float, ptr %"R56_Float32"
  %".973" = load float, ptr %"R37_Float32"
  %"fmul.42" = fmul float %".971", %".972"
  %"fadd.42" = fadd float %"fmul.42", %".973"
  store float %"fadd.42", ptr %"R37_Float32"
  ; FFMA R35, R56, R47, R35
  %".976" = load float, ptr %"R56_Float32"
  %".977" = load float, ptr %"R47_Float32"
  %".978" = load float, ptr %"R35_Float32"
  %"fmul.43" = fmul float %".976", %".977"
  %"fadd.43" = fadd float %"fmul.43", %".978"
  store float %"fadd.43", ptr %"R35_Float32"
  ; FFMA R25, R25, R10, R37
  %".981" = load float, ptr %"R25_Float32"
  %".982" = load float, ptr %"R10_Float32"
  %".983" = load float, ptr %"R37_Float32"
  %"fmul.44" = fmul float %".981", %".982"
  %"fadd.44" = fadd float %"fmul.44", %".983"
  store float %"fadd.44", ptr %"R25_Float32"
  ; FFMA R19, R10, R19, R35
  %".986" = load float, ptr %"R10_Float32"
  %".987" = load float, ptr %"R19_Float32"
  %".988" = load float, ptr %"R35_Float32"
  %"fmul.45" = fmul float %".986", %".987"
  %"fadd.45" = fadd float %"fmul.45", %".988"
  store float %"fadd.45", ptr %"R19_Float32"
  ; FFMA R52, R20, R18, R25
  %".991" = load float, ptr %"R20_Float32"
  %".992" = load float, ptr %"R18_Float32"
  %".993" = load float, ptr %"R25_Float32"
  %"fmul.46" = fmul float %".991", %".992"
  %"fadd.46" = fadd float %"fmul.46", %".993"
  store float %"fadd.46", ptr %"R52_Float32"
  ; FFMA R54, R18, R21, R19
  %".996" = load float, ptr %"R18_Float32"
  %".997" = load float, ptr %"R21_Float32"
  %".998" = load float, ptr %"R19_Float32"
  %"fmul.47" = fmul float %".996", %".997"
  %"fadd.47" = fadd float %"fmul.47", %".998"
  store float %"fadd.47", ptr %"R54_Float32"
.L_x_6:
  ; ISETP.NE.OR P0, PT, R9, RZ, P0
  %".1001" = load i32, ptr %"R9_Int32"
  %".1002" = load i1, ptr %"PT_Bool"
  %"cmp.10" = icmp ne i32 %".1001", 0
  %".1003" = or i1 %"cmp.10", %".1002"
  ; @!P0 BRA `(.L_x_2)
  %".1005" = load i1, ptr %"P0_Bool"
  %".1006" = icmp eq i1 %".1005", 1
  br i1 %".1006", label %".L_x_2", label %".L_x_3"
.L_x_3:
  ; IADD3 R13, R0, R11, RZ
  %".1009" = load i32, ptr %"R0_Int32"
  %".1010" = load i32, ptr %"R11_Int32"
  %"add.74" = add i32 %".1009", %".1010"
  %"add.75" = add i32 %"add.74", 0
  store i32 %"add.75", ptr %"R13_Int32"
  ; MOV R16, 0x4
  store i32 4, ptr %"R16_Int32"
  ; LEA R17, R2.reuse, R13, 0x2
  %".1015" = load i32, ptr %"R2_Int32"
  %".1016" = load i32, ptr %"R13_Int32"
  %"shl.60" = shl i32 %".1015", 2
  %"add.76" = add i32 %"shl.60", %".1016"
  store i32 %"add.76", ptr %"R17_Int32"
  ; IMAD R15, R2, 0x3, R13
  %".1019" = load i32, ptr %"R2_Int32"
  %".1020" = load i32, ptr %"R13_Int32"
  %"mul.28" = mul i32 %".1019", 3
  %"add.77" = add i32 %"mul.28", %".1020"
  store i32 %"add.77", ptr %"R15_Int32"
  ; IMAD.WIDE R12, R11, R16, c[0x0][0x168]
  %".1023" = load i32, ptr %"R11_Int32"
  %".1024" = load i32, ptr %"R16_Int32"
  %"mul.29" = mul i32 %".1023", %".1024"
  %"add.78" = add i32 %"mul.29", %"Arg_3"
  store i32 %"add.78", ptr %"R12_Int32"
  ; IMAD.WIDE R14, R15, R16, c[0x0][0x170]
  %".1027" = load i32, ptr %"R15_Int32"
  %".1028" = load i32, ptr %"R16_Int32"
  %"mul.30" = mul i32 %".1027", %".1028"
  %"add.79" = add i32 %"mul.30", %"Arg_4"
  store i32 %"add.79", ptr %"R14_Int32"
  ; IMAD.WIDE R16, R17, R16, c[0x0][0x170]
  %".1031" = load i32, ptr %"R17_Int32"
  %".1032" = load i32, ptr %"R16_Int32"
  %"mul.31" = mul i32 %".1031", %".1032"
  %"add.80" = add i32 %"mul.31", %"Arg_4"
  store i32 %"add.80", ptr %"R16_Int32"
  ; LDG.E.SYS R21, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1035" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.128" = zext ptr %".1035" to i64
  %".1036" = load ptr, ptr %"R13_Int32"
  %"zext.129" = zext ptr %".1036" to i64
  %"shl.61" = shl i64 %"zext.129", 32
  %"or.88" = or i64 %"shl.61", %"zext.128"
  %".1037" = add i64 %"or.88", 0
  %"for_LDG.72" = inttoptr i64 %".1037" to ptr
  %".1038" = load float, ptr %"for_LDG.72"
  store float %".1038", ptr %"R21_Float32"
  ; LDG.E.SYS R19, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1041" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.130" = zext ptr %".1041" to i64
  %".1042" = load ptr, ptr %"R15_Int32"
  %"zext.131" = zext ptr %".1042" to i64
  %"shl.62" = shl i64 %"zext.131", 32
  %"or.89" = or i64 %"shl.62", %"zext.130"
  %".1043" = add i64 %"or.89", 0
  %"for_LDG.73" = inttoptr i64 %".1043" to ptr
  %".1044" = load float, ptr %"for_LDG.73"
  store float %".1044", ptr %"R19_Float32"
  ; LDG.E.SYS R10, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1047" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.132" = zext ptr %".1047" to i64
  %".1048" = load ptr, ptr %"R17_Int32"
  %"zext.133" = zext ptr %".1048" to i64
  %"shl.63" = shl i64 %"zext.133", 32
  %"or.90" = or i64 %"shl.63", %"zext.132"
  %".1049" = add i64 %"or.90", 0
  %"for_LDG.74" = inttoptr i64 %".1049" to ptr
  %".1050" = load float, ptr %"for_LDG.74"
  store float %".1050", ptr %"R10_Float32"
  ; LDG.E.SYS R23, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1053" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.134" = zext ptr %".1053" to i64
  %".1054" = load ptr, ptr %"R13_Int32"
  %"zext.135" = zext ptr %".1054" to i64
  %"shl.64" = shl i64 %"zext.135", 32
  %"or.91" = or i64 %"shl.64", %"zext.134"
  %".1055" = add i64 %"or.91", 4
  %"for_LDG.75" = inttoptr i64 %".1055" to ptr
  %".1056" = load float, ptr %"for_LDG.75"
  store float %".1056", ptr %"R23_Float32"
  ; LDG.E.SYS R18, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1059" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.136" = zext ptr %".1059" to i64
  %".1060" = load ptr, ptr %"R15_Int32"
  %"zext.137" = zext ptr %".1060" to i64
  %"shl.65" = shl i64 %"zext.137", 32
  %"or.92" = or i64 %"shl.65", %"zext.136"
  %".1061" = add i64 %"or.92", 4
  %"for_LDG.76" = inttoptr i64 %".1061" to ptr
  %".1062" = load float, ptr %"for_LDG.76"
  store float %".1062", ptr %"R18_Float32"
  ; LDG.E.SYS R20, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1065" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.138" = zext ptr %".1065" to i64
  %".1066" = load ptr, ptr %"R17_Int32"
  %"zext.139" = zext ptr %".1066" to i64
  %"shl.66" = shl i64 %"zext.139", 32
  %"or.93" = or i64 %"shl.66", %"zext.138"
  %".1067" = add i64 %"or.93", 4
  %"for_LDG.77" = inttoptr i64 %".1067" to ptr
  %".1068" = load float, ptr %"for_LDG.77"
  store float %".1068", ptr %"R20_Float32"
  ; LDG.E.SYS R35, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1071" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.140" = zext ptr %".1071" to i64
  %".1072" = load ptr, ptr %"R13_Int32"
  %"zext.141" = zext ptr %".1072" to i64
  %"shl.67" = shl i64 %"zext.141", 32
  %"or.94" = or i64 %"shl.67", %"zext.140"
  %".1073" = add i64 %"or.94", 8
  %"for_LDG.78" = inttoptr i64 %".1073" to ptr
  %".1074" = load float, ptr %"for_LDG.78"
  store float %".1074", ptr %"R35_Float32"
  ; LDG.E.SYS R25, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1077" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.142" = zext ptr %".1077" to i64
  %".1078" = load ptr, ptr %"R15_Int32"
  %"zext.143" = zext ptr %".1078" to i64
  %"shl.68" = shl i64 %"zext.143", 32
  %"or.95" = or i64 %"shl.68", %"zext.142"
  %".1079" = add i64 %"or.95", 8
  %"for_LDG.79" = inttoptr i64 %".1079" to ptr
  %".1080" = load float, ptr %"for_LDG.79"
  store float %".1080", ptr %"R25_Float32"
  ; LDG.E.SYS R22, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1083" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.144" = zext ptr %".1083" to i64
  %".1084" = load ptr, ptr %"R17_Int32"
  %"zext.145" = zext ptr %".1084" to i64
  %"shl.69" = shl i64 %"zext.145", 32
  %"or.96" = or i64 %"shl.69", %"zext.144"
  %".1085" = add i64 %"or.96", 8
  %"for_LDG.80" = inttoptr i64 %".1085" to ptr
  %".1086" = load float, ptr %"for_LDG.80"
  store float %".1086", ptr %"R22_Float32"
  ; LDG.E.SYS R39, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1089" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.146" = zext ptr %".1089" to i64
  %".1090" = load ptr, ptr %"R13_Int32"
  %"zext.147" = zext ptr %".1090" to i64
  %"shl.70" = shl i64 %"zext.147", 32
  %"or.97" = or i64 %"shl.70", %"zext.146"
  %".1091" = add i64 %"or.97", 12
  %"for_LDG.81" = inttoptr i64 %".1091" to ptr
  %".1092" = load float, ptr %"for_LDG.81"
  store float %".1092", ptr %"R39_Float32"
  ; LDG.E.SYS R37, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1095" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.148" = zext ptr %".1095" to i64
  %".1096" = load ptr, ptr %"R15_Int32"
  %"zext.149" = zext ptr %".1096" to i64
  %"shl.71" = shl i64 %"zext.149", 32
  %"or.98" = or i64 %"shl.71", %"zext.148"
  %".1097" = add i64 %"or.98", 12
  %"for_LDG.82" = inttoptr i64 %".1097" to ptr
  %".1098" = load float, ptr %"for_LDG.82"
  store float %".1098", ptr %"R37_Float32"
  ; LDG.E.SYS R24, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1101" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.150" = zext ptr %".1101" to i64
  %".1102" = load ptr, ptr %"R17_Int32"
  %"zext.151" = zext ptr %".1102" to i64
  %"shl.72" = shl i64 %"zext.151", 32
  %"or.99" = or i64 %"shl.72", %"zext.150"
  %".1103" = add i64 %"or.99", 12
  %"for_LDG.83" = inttoptr i64 %".1103" to ptr
  %".1104" = load float, ptr %"for_LDG.83"
  store float %".1104", ptr %"R24_Float32"
  ; IADD3 R9, R9, -0x4, RZ
  %".1107" = load i32, ptr %"R9_Int32"
  %"add.81" = add i32 %".1107", -4
  %"add.82" = add i32 %"add.81", 0
  store i32 %"add.82", ptr %"R9_Int32"
  ; IADD3 R11, R11, 0x4, RZ
  %".1110" = load i32, ptr %"R11_Int32"
  %"add.83" = add i32 %".1110", 4
  %"add.84" = add i32 %"add.83", 0
  store i32 %"add.84", ptr %"R11_Int32"
  ; ISETP.NE.AND P0, PT, R9, RZ, PT
  %".1113" = load i32, ptr %"R9_Int32"
  %".1114" = load i1, ptr %"PT_Bool"
  %"cmp.11" = icmp ne i32 %".1113", 0
  %".1115" = and i1 %"cmp.11", %".1114"
  ; FFMA R19, R19, R21, R52
  %".1117" = load float, ptr %"R19_Float32"
  %".1118" = load float, ptr %"R21_Float32"
  %".1119" = load float, ptr %"R52_Float32"
  %"fmul.48" = fmul float %".1117", %".1118"
  %"fadd.48" = fadd float %"fmul.48", %".1119"
  store float %"fadd.48", ptr %"R19_Float32"
  ; FFMA R10, R21, R10, R54
  %".1122" = load float, ptr %"R21_Float32"
  %".1123" = load float, ptr %"R10_Float32"
  %".1124" = load float, ptr %"R54_Float32"
  %"fmul.49" = fmul float %".1122", %".1123"
  %"fadd.49" = fadd float %"fmul.49", %".1124"
  store float %"fadd.49", ptr %"R10_Float32"
  ; FFMA R18, R18, R23, R19
  %".1127" = load float, ptr %"R18_Float32"
  %".1128" = load float, ptr %"R23_Float32"
  %".1129" = load float, ptr %"R19_Float32"
  %"fmul.50" = fmul float %".1127", %".1128"
  %"fadd.50" = fadd float %"fmul.50", %".1129"
  store float %"fadd.50", ptr %"R18_Float32"
  ; FFMA R10, R23, R20, R10
  %".1132" = load float, ptr %"R23_Float32"
  %".1133" = load float, ptr %"R20_Float32"
  %".1134" = load float, ptr %"R10_Float32"
  %"fmul.51" = fmul float %".1132", %".1133"
  %"fadd.51" = fadd float %"fmul.51", %".1134"
  store float %"fadd.51", ptr %"R10_Float32"
  ; FFMA R18, R25, R35, R18
  %".1137" = load float, ptr %"R25_Float32"
  %".1138" = load float, ptr %"R35_Float32"
  %".1139" = load float, ptr %"R18_Float32"
  %"fmul.52" = fmul float %".1137", %".1138"
  %"fadd.52" = fadd float %"fmul.52", %".1139"
  store float %"fadd.52", ptr %"R18_Float32"
  ; FFMA R10, R35, R22, R10
  %".1142" = load float, ptr %"R35_Float32"
  %".1143" = load float, ptr %"R22_Float32"
  %".1144" = load float, ptr %"R10_Float32"
  %"fmul.53" = fmul float %".1142", %".1143"
  %"fadd.53" = fadd float %"fmul.53", %".1144"
  store float %"fadd.53", ptr %"R10_Float32"
  ; FFMA R52, R37, R39, R18
  %".1147" = load float, ptr %"R37_Float32"
  %".1148" = load float, ptr %"R39_Float32"
  %".1149" = load float, ptr %"R18_Float32"
  %"fmul.54" = fmul float %".1147", %".1148"
  %"fadd.54" = fadd float %"fmul.54", %".1149"
  store float %"fadd.54", ptr %"R52_Float32"
  ; FFMA R54, R39, R24, R10
  %".1152" = load float, ptr %"R39_Float32"
  %".1153" = load float, ptr %"R24_Float32"
  %".1154" = load float, ptr %"R10_Float32"
  %"fmul.55" = fmul float %".1152", %".1153"
  %"fadd.55" = fadd float %"fmul.55", %".1154"
  store float %"fadd.55", ptr %"R54_Float32"
  ; @P0 BRA `(.L_x_3)
  %".1157" = load i1, ptr %"P0_Bool"
  %".1158" = icmp ne i1 %".1157", 1
  br i1 %".1158", label %".L_x_3", label %".L_x_2"
.L_x_2:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1161" = load i32, ptr %"R4_Int32"
  %".1162" = load i1, ptr %"PT_Bool"
  %"cmp.12" = icmp ne i32 %".1161", 0
  %".1163" = and i1 %"cmp.12", %".1162"
  ; @!P0 BRA `(.L_x_1)
  %".1165" = load i1, ptr %"P0_Bool"
  %".1166" = icmp eq i1 %".1165", 1
  br i1 %".1166", label %".L_x_1", label %".L_x_2_split_0x0fb0"
.L_x_2_split_0x0fb0:
  ; IADD3 R9, R0, R11, RZ
  %".1169" = load i32, ptr %"R0_Int32"
  %".1170" = load i32, ptr %"R11_Int32"
  %"add.85" = add i32 %".1169", %".1170"
  %"add.86" = add i32 %"add.85", 0
  store i32 %"add.86", ptr %"R9_Int32"
  ; MOV R15, 0x4
  store i32 4, ptr %"R15_Int32"
  ; LEA R14, R2.reuse, R9, 0x2
  %".1175" = load i32, ptr %"R2_Int32"
  %".1176" = load i32, ptr %"R9_Int32"
  %"shl.73" = shl i32 %".1175", 2
  %"add.87" = add i32 %"shl.73", %".1176"
  store i32 %"add.87", ptr %"R14_Int32"
  ; IMAD R12, R2, 0x3, R9
  %".1179" = load i32, ptr %"R2_Int32"
  %".1180" = load i32, ptr %"R9_Int32"
  %"mul.32" = mul i32 %".1179", 3
  %"add.88" = add i32 %"mul.32", %".1180"
  store i32 %"add.88", ptr %"R12_Int32"
  ; IMAD.WIDE R10, R11, R15, c[0x0][0x168]
  %".1183" = load i32, ptr %"R11_Int32"
  %".1184" = load i32, ptr %"R15_Int32"
  %"mul.33" = mul i32 %".1183", %".1184"
  %"add.89" = add i32 %"mul.33", %"Arg_3"
  store i32 %"add.89", ptr %"R10_Int32"
  ; IMAD.WIDE R12, R12, R15, c[0x0][0x170]
  %".1187" = load i32, ptr %"R12_Int32"
  %".1188" = load i32, ptr %"R15_Int32"
  %"mul.34" = mul i32 %".1187", %".1188"
  %"add.90" = add i32 %"mul.34", %"Arg_4"
  store i32 %"add.90", ptr %"R12_Int32"
  ; IMAD.WIDE R14, R14, R15, c[0x0][0x170]
  %".1191" = load i32, ptr %"R14_Int32"
  %".1192" = load i32, ptr %"R15_Int32"
  %"mul.35" = mul i32 %".1191", %".1192"
  %"add.91" = add i32 %"mul.35", %"Arg_4"
  store i32 %"add.91", ptr %"R14_Int32"
  ; LDG.E.SYS R17, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1195" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.152" = zext ptr %".1195" to i64
  %".1196" = load ptr, ptr %"R11_Int32"
  %"zext.153" = zext ptr %".1196" to i64
  %"shl.74" = shl i64 %"zext.153", 32
  %"or.100" = or i64 %"shl.74", %"zext.152"
  %".1197" = add i64 %"or.100", 0
  %"for_LDG.84" = inttoptr i64 %".1197" to ptr
  %".1198" = load float, ptr %"for_LDG.84"
  store float %".1198", ptr %"R17_Float32"
  ; LDG.E.SYS R9, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1201" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.154" = zext ptr %".1201" to i64
  %".1202" = load ptr, ptr %"R13_Int32"
  %"zext.155" = zext ptr %".1202" to i64
  %"shl.75" = shl i64 %"zext.155", 32
  %"or.101" = or i64 %"shl.75", %"zext.154"
  %".1203" = add i64 %"or.101", 0
  %"for_LDG.85" = inttoptr i64 %".1203" to ptr
  %".1204" = load float, ptr %"for_LDG.85"
  store float %".1204", ptr %"R9_Float32"
  ; LDG.E.SYS R16, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1207" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.156" = zext ptr %".1207" to i64
  %".1208" = load ptr, ptr %"R15_Int32"
  %"zext.157" = zext ptr %".1208" to i64
  %"shl.76" = shl i64 %"zext.157", 32
  %"or.102" = or i64 %"shl.76", %"zext.156"
  %".1209" = add i64 %"or.102", 0
  %"for_LDG.86" = inttoptr i64 %".1209" to ptr
  %".1210" = load float, ptr %"for_LDG.86"
  store float %".1210", ptr %"R16_Float32"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".1213" = load i32, ptr %"R4_Int32"
  %".1214" = load i1, ptr %"PT_Bool"
  %"cmp.13" = icmp ne i32 %".1213", 1
  %".1215" = and i1 %"cmp.13", %".1214"
  ; FFMA R52, R9, R17, R52
  %".1217" = load float, ptr %"R9_Float32"
  %".1218" = load float, ptr %"R17_Float32"
  %".1219" = load float, ptr %"R52_Float32"
  %"fmul.56" = fmul float %".1217", %".1218"
  %"fadd.56" = fadd float %"fmul.56", %".1219"
  store float %"fadd.56", ptr %"R52_Float32"
  ; FFMA R54, R17, R16, R54
  %".1222" = load float, ptr %"R17_Float32"
  %".1223" = load float, ptr %"R16_Float32"
  %".1224" = load float, ptr %"R54_Float32"
  %"fmul.57" = fmul float %".1222", %".1223"
  %"fadd.57" = fadd float %"fmul.57", %".1224"
  store float %"fadd.57", ptr %"R54_Float32"
  ; @!P0 BRA `(.L_x_1)
  %".1227" = load i1, ptr %"P0_Bool"
  %".1228" = icmp eq i1 %".1227", 1
  br i1 %".1228", label %".L_x_1", label %".L_x_2_split_0x1090"
.L_x_2_split_0x1090:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".1231" = load i32, ptr %"R4_Int32"
  %".1232" = load i1, ptr %"PT_Bool"
  %"cmp.14" = icmp ne i32 %".1231", 2
  %".1233" = and i1 %"cmp.14", %".1232"
  ; LDG.E.SYS R9, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1235" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.158" = zext ptr %".1235" to i64
  %".1236" = load ptr, ptr %"R13_Int32"
  %"zext.159" = zext ptr %".1236" to i64
  %"shl.77" = shl i64 %"zext.159", 32
  %"or.103" = or i64 %"shl.77", %"zext.158"
  %".1237" = add i64 %"or.103", 4
  %"for_LDG.87" = inttoptr i64 %".1237" to ptr
  %".1238" = load float, ptr %"for_LDG.87"
  store float %".1238", ptr %"R9_Float32"
  ; LDG.E.SYS R17, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1241" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.160" = zext ptr %".1241" to i64
  %".1242" = load ptr, ptr %"R11_Int32"
  %"zext.161" = zext ptr %".1242" to i64
  %"shl.78" = shl i64 %"zext.161", 32
  %"or.104" = or i64 %"shl.78", %"zext.160"
  %".1243" = add i64 %"or.104", 4
  %"for_LDG.88" = inttoptr i64 %".1243" to ptr
  %".1244" = load float, ptr %"for_LDG.88"
  store float %".1244", ptr %"R17_Float32"
  ; LDG.E.SYS R16, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1247" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.162" = zext ptr %".1247" to i64
  %".1248" = load ptr, ptr %"R15_Int32"
  %"zext.163" = zext ptr %".1248" to i64
  %"shl.79" = shl i64 %"zext.163", 32
  %"or.105" = or i64 %"shl.79", %"zext.162"
  %".1249" = add i64 %"or.105", 4
  %"for_LDG.89" = inttoptr i64 %".1249" to ptr
  %".1250" = load float, ptr %"for_LDG.89"
  store float %".1250", ptr %"R16_Float32"
  ; @P0 LDG.E.SYS R19, [R12+0x8]
  %".1253" = load i1, ptr %"P0_Bool"
  %".1254" = icmp ne i1 %".1253", 1
  br i1 %".1254", label %".L_x_2_split_0x1090_conditionalExpr_0x10d0", label %".L_x_2_split_0x10e0"
.L_x_2_split_0x1090_conditionalExpr_0x10d0:
  ; LDG.E.SYS R19, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1257" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.164" = zext ptr %".1257" to i64
  %".1258" = load ptr, ptr %"R13_Int32"
  %"zext.165" = zext ptr %".1258" to i64
  %"shl.80" = shl i64 %"zext.165", 32
  %"or.106" = or i64 %"shl.80", %"zext.164"
  %".1259" = add i64 %"or.106", 8
  %"for_LDG.90" = inttoptr i64 %".1259" to ptr
  %".1260" = load float, ptr %"for_LDG.90"
  store float %".1260", ptr %"R19_Float32"
  ; BRA `(.L_x_2_split_0x10e0)
  br label %".L_x_2_split_0x10e0"
.L_x_2_split_0x10e0:
  ; @P0 LDG.E.SYS R21, [R10+0x8]
  %".1265" = load i1, ptr %"P0_Bool"
  %".1266" = icmp ne i1 %".1265", 1
  br i1 %".1266", label %".L_x_2_split_0x10e0_conditionalExpr_0x10e0", label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10e0_conditionalExpr_0x10e0:
  ; LDG.E.SYS R21, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1269" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.166" = zext ptr %".1269" to i64
  %".1270" = load ptr, ptr %"R11_Int32"
  %"zext.167" = zext ptr %".1270" to i64
  %"shl.81" = shl i64 %"zext.167", 32
  %"or.107" = or i64 %"shl.81", %"zext.166"
  %".1271" = add i64 %"or.107", 8
  %"for_LDG.91" = inttoptr i64 %".1271" to ptr
  %".1272" = load float, ptr %"for_LDG.91"
  store float %".1272", ptr %"R21_Float32"
  ; BRA `(.L_x_2_split_0x10f0)
  br label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10f0:
  ; @P0 LDG.E.SYS R18, [R14+0x8]
  %".1277" = load i1, ptr %"P0_Bool"
  %".1278" = icmp ne i1 %".1277", 1
  br i1 %".1278", label %".L_x_2_split_0x10f0_conditionalExpr_0x10f0", label %".L_x_2_split_0x1100"
.L_x_2_split_0x10f0_conditionalExpr_0x10f0:
  ; LDG.E.SYS R18, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1281" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.168" = zext ptr %".1281" to i64
  %".1282" = load ptr, ptr %"R15_Int32"
  %"zext.169" = zext ptr %".1282" to i64
  %"shl.82" = shl i64 %"zext.169", 32
  %"or.108" = or i64 %"shl.82", %"zext.168"
  %".1283" = add i64 %"or.108", 8
  %"for_LDG.92" = inttoptr i64 %".1283" to ptr
  %".1284" = load float, ptr %"for_LDG.92"
  store float %".1284", ptr %"R18_Float32"
  ; BRA `(.L_x_2_split_0x1100)
  br label %".L_x_2_split_0x1100"
.L_x_2_split_0x1100:
  ; FFMA R52, R9, R17, R52
  %".1289" = load float, ptr %"R9_Float32"
  %".1290" = load float, ptr %"R17_Float32"
  %".1291" = load float, ptr %"R52_Float32"
  %"fmul.58" = fmul float %".1289", %".1290"
  %"fadd.58" = fadd float %"fmul.58", %".1291"
  store float %"fadd.58", ptr %"R52_Float32"
  ; FFMA R54, R17, R16, R54
  %".1294" = load float, ptr %"R17_Float32"
  %".1295" = load float, ptr %"R16_Float32"
  %".1296" = load float, ptr %"R54_Float32"
  %"fmul.59" = fmul float %".1294", %".1295"
  %"fadd.59" = fadd float %"fmul.59", %".1296"
  store float %"fadd.59", ptr %"R54_Float32"
  ; @P0 FFMA R52, R19, R21, R52
  %".1299" = load i1, ptr %"P0_Bool"
  %".1300" = icmp ne i1 %".1299", 1
  br i1 %".1300", label %".L_x_2_split_0x1100_conditionalExpr_0x1120", label %".L_x_2_split_0x1130"
.L_x_2_split_0x1100_conditionalExpr_0x1120:
  ; FFMA R52, R19, R21, R52
  %".1303" = load float, ptr %"R19_Float32"
  %".1304" = load float, ptr %"R21_Float32"
  %".1305" = load float, ptr %"R52_Float32"
  %"fmul.60" = fmul float %".1303", %".1304"
  %"fadd.60" = fadd float %"fmul.60", %".1305"
  store float %"fadd.60", ptr %"R52_Float32"
  ; BRA `(.L_x_2_split_0x1130)
  br label %".L_x_2_split_0x1130"
.L_x_2_split_0x1130:
  ; @P0 FFMA R54, R21, R18, R54
  %".1310" = load i1, ptr %"P0_Bool"
  %".1311" = icmp ne i1 %".1310", 1
  br i1 %".1311", label %".L_x_2_split_0x1130_conditionalExpr_0x1130", label %".L_x_1"
.L_x_2_split_0x1130_conditionalExpr_0x1130:
  ; FFMA R54, R21, R18, R54
  %".1314" = load float, ptr %"R21_Float32"
  %".1315" = load float, ptr %"R18_Float32"
  %".1316" = load float, ptr %"R54_Float32"
  %"fmul.61" = fmul float %".1314", %".1315"
  %"fadd.61" = fadd float %"fmul.61", %".1316"
  store float %"fadd.61", ptr %"R54_Float32"
  ; BRA `(.L_x_1)
  br label %".L_x_1"
.L_x_1:
  ; LDG.E.SYS R9, [R26]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R26_Float32_PTR", ptr %"R26_Int32", i32 4, i1 0)
  %".1321" = load ptr, ptr %"R26_Float32_PTR"
  %"zext.170" = zext ptr %".1321" to i64
  %"or.109" = or i64 0, %"zext.170"
  %"or.110" = or i64 %"or.109", %"zext.170"
  %".1322" = add i64 %"or.110", 0
  %"for_LDG.93" = inttoptr i64 %".1322" to ptr
  %".1323" = load float, ptr %"for_LDG.93"
  store float %".1323", ptr %"R9_Float32"
  ; MOV R10, 0x3bbb989d
  store float 0x41cdddcc40000000, ptr %"R10_Float32"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R11, 0x437c0000
  store float 0x41d0df0000000000, ptr %"R11_Float32"
  ; BSSY B0, `(.L_x_7)
  ; FADD R9, R9, R52
  %".1332" = load float, ptr %"R9_Float32"
  %".1333" = load float, ptr %"R52_Float32"
  %"fadd.62" = fadd float %".1332", %".1333"
  store float %"fadd.62", ptr %"R9_Float32"
  ; FFMA.SAT R10, -R9, R10, 0.5
  %".1336" = load float, ptr %"R9_Float32"
  %".1337" = sub float              0x0, %".1336"
  %".1338" = load float, ptr %"R10_Float32"
  %"fmul.62" = fmul float %".1337", %".1338"
  %"fadd.63" = fadd float %"fmul.62", 0x3fe0000000000000
  store float %"fadd.63", ptr %"R10_Float32"
  ; FFMA.RM R10, R10, R11, 12582913
  %".1341" = load float, ptr %"R10_Float32"
  %".1342" = load float, ptr %"R11_Float32"
  %"fmul.63" = fmul float %".1341", %".1342"
  %"fadd.64" = fadd float %"fmul.63", 0x4168000020000000
  store float %"fadd.64", ptr %"R10_Float32"
  ; FADD R12, R10.reuse, -12583039
  %".1345" = load float, ptr %"R10_Float32"
  %"fadd.65" = fadd float %".1345", 0xc168000fe0000000
  store float %"fadd.65", ptr %"R12_Float32"
  ; SHF.L.U32 R10, R10, 0x17, RZ
  %".1348" = icmp ult i32 23, 32
  %"SHF_min" = select  i1 %".1348", i32 23, i32 32
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Int32", ptr %"R10_Float32", i32 4, i1 0)
  %".1349" = load i32, ptr %"R10_Int32"
  %"zext.171" = zext i32 0 to i64
  %"zext.172" = zext i32 %".1349" to i64
  %"zext.173" = zext i32 23 to i64
  %"shl.83" = shl i64 %"zext.171", 32
  %"or.111" = or i64 %"shl.83", %"zext.172"
  %"shl.84" = shl i64 %"or.111", %"zext.173"
  %"and" = and i64 %"shl.84", 4294967295
  %"trunc32" = trunc i64 %"and" to i32
  store i32 %"trunc32", ptr %"R10_Int32"
  ; FFMA R12, -R9, 1.4426950216293334961, -R12
  %".1352" = load float, ptr %"R9_Float32"
  %".1353" = sub float              0x0, %".1352"
  %".1354" = load float, ptr %"R12_Float32"
  %".1355" = sub float              0x0, %".1354"
  %"fmul.64" = fmul float %".1353", 0x3ff7154760000000
  %"fadd.66" = fadd float %"fmul.64", %".1355"
  store float %"fadd.66", ptr %"R12_Float32"
  ; FFMA R12, -R9, 1.925963033500011079e-08, R12
  %".1358" = load float, ptr %"R9_Float32"
  %".1359" = sub float              0x0, %".1358"
  %".1360" = load float, ptr %"R12_Float32"
  %"fmul.65" = fmul float %".1359", 0x3e54ae0c00000000
  %"fadd.67" = fadd float %"fmul.65", %".1360"
  store float %"fadd.67", ptr %"R12_Float32"
  ; MUFU.EX2 R9, R12
  %".1363" = load float, ptr %"R12_Float32"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1363")
  store float %"llvm_exp2_f32_result", ptr %"R9_Float32"
  ; FFMA R24, R10, R9, 1
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32", ptr %"R10_Int32", i32 4, i1 0)
  %".1366" = load float, ptr %"R10_Float32"
  %".1367" = load float, ptr %"R9_Float32"
  %"fmul.66" = fmul float %".1366", %".1367"
  %"fadd.68" = fadd float %"fmul.66", 0x3ff0000000000000
  store float %"fadd.68", ptr %"R24_Float32"
  ; IADD3 R9, R24, 0x1800000, RZ
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Int32", ptr %"R24_Float32", i32 4, i1 0)
  %".1370" = load i32, ptr %"R24_Int32"
  %"add.92" = add i32 %".1370", 25165824
  %"add.93" = add i32 %"add.92", 0
  store i32 %"add.93", ptr %"R9_Int32"
  ; LOP3.LUT R9, R9, 0x7f800000, RZ, 0xc0, !PT
  %".1373" = load i32, ptr %"R9_Int32"
  %".1374" = and i32 %".1373", 2139095040
  store i32 %".1374", ptr %"R9_Int32"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".1377" = load i32, ptr %"R9_Int32"
  %".1378" = load i1, ptr %"PT_Bool"
  %"cmp.15" = icmp sgt i32 %".1377", 33554431
  %".1379" = and i1 %"cmp.15", %".1378"
  ; @P0 BRA `(.L_x_8)
  %".1381" = load i1, ptr %"P0_Bool"
  %".1382" = icmp ne i1 %".1381", 1
  br i1 %".1382", label %".L_x_8", label %".L_x_1_split_0x1260"
.L_x_1_split_0x1260:
  ; MOV R10, 0x1280
  store i32 4736, ptr %"R10_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_NOTYPE", ptr %"R10_Int32", i32 4, i1 0)
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R9, R22
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Int32", ptr %"R22_Float32", i32 4, i1 0)
  %".1388" = load i32, ptr %"R22_Int32"
  store i32 %".1388", ptr %"R9_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R9_Float32", ptr %"R9_Int32", i32 4, i1 0)
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %".1393" = load float, ptr %"R24_Float32"
  %".1394" = fdiv float 0x3ff0000000000000, %".1393"
  store float %".1394", ptr %"R9_Float32"
  ; FFMA R10, R24, R9, -1
  %".1397" = load float, ptr %"R24_Float32"
  %".1398" = load float, ptr %"R9_Float32"
  %"fmul.67" = fmul float %".1397", %".1398"
  %"fadd.69" = fadd float %"fmul.67", 0xbff0000000000000
  store float %"fadd.69", ptr %"R10_Float32"
  ; FADD.FTZ R10, -R10, -RZ
  %".1401" = load float, ptr %"R10_Float32"
  %".1402" = sub float              0x0, %".1401"
  %"fadd.70" = fadd float %".1402",              0x0
  store float %"fadd.70", ptr %"R10_Float32"
  ; FFMA R9, R9, R10, R9
  %".1405" = load float, ptr %"R9_Float32"
  %".1406" = load float, ptr %"R10_Float32"
  %".1407" = load float, ptr %"R9_Float32"
  %"fmul.68" = fmul float %".1405", %".1406"
  %"fadd.71" = fadd float %"fmul.68", %".1407"
  store float %"fadd.71", ptr %"R9_Float32"
.L_x_9:
  ; BSYNC B0
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R32_Float32_PTR", ptr %"R32_Int32", i32 4, i1 0)
  %".1411" = load ptr, ptr %"R32_Float32_PTR"
  %"zext.174" = zext ptr %".1411" to i64
  %".1412" = load ptr, ptr %"R33_Int32"
  %"zext.175" = zext ptr %".1412" to i64
  %"shl.85" = shl i64 %"zext.175", 32
  %"or.112" = or i64 %"shl.85", %"zext.174"
  %".1413" = add i64 %"or.112", 0
  %"for_LDG.94" = inttoptr i64 %".1413" to ptr
  %".1414" = load float, ptr %"for_LDG.94"
  store float %".1414", ptr %"R11_Float32"
  ; MOV R10, 0x3bbb989d
  store float 0x41cdddcc40000000, ptr %"R10_Float32"
  ; MOV R13, 0x437c0000
  store float 0x41d0df0000000000, ptr %"R13_Float32"
  ; FADD R11, R11, R54
  %".1421" = load float, ptr %"R11_Float32"
  %".1422" = load float, ptr %"R54_Float32"
  %"fadd.72" = fadd float %".1421", %".1422"
  store float %"fadd.72", ptr %"R11_Float32"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %".1425" = load float, ptr %"R11_Float32"
  %".1426" = sub float              0x0, %".1425"
  %".1427" = load float, ptr %"R10_Float32"
  %"fmul.69" = fmul float %".1426", %".1427"
  %"fadd.73" = fadd float %"fmul.69", 0x3fe0000000000000
  store float %"fadd.73", ptr %"R10_Float32"
  ; FFMA.RM R10, R10, R13, 12582913
  %".1430" = load float, ptr %"R10_Float32"
  %".1431" = load float, ptr %"R13_Float32"
  %"fmul.70" = fmul float %".1430", %".1431"
  %"fadd.74" = fadd float %"fmul.70", 0x4168000020000000
  store float %"fadd.74", ptr %"R10_Float32"
  ; FADD R12, R10.reuse, -12583039
  %".1434" = load float, ptr %"R10_Float32"
  %"fadd.75" = fadd float %".1434", 0xc168000fe0000000
  store float %"fadd.75", ptr %"R12_Float32"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".1437" = icmp ult i32 23, 32
  %"SHF_min.1" = select  i1 %".1437", i32 23, i32 32
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Int32", ptr %"R10_Float32", i32 4, i1 0)
  %".1438" = load i32, ptr %"R10_Int32"
  %"zext.176" = zext i32 0 to i64
  %"zext.177" = zext i32 %".1438" to i64
  %"zext.178" = zext i32 23 to i64
  %"shl.86" = shl i64 %"zext.176", 32
  %"or.113" = or i64 %"shl.86", %"zext.177"
  %"shl.87" = shl i64 %"or.113", %"zext.178"
  %"and.1" = and i64 %"shl.87", 4294967295
  %"trunc32.1" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.1", ptr %"R20_Int32"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %".1441" = load float, ptr %"R11_Float32"
  %".1442" = sub float              0x0, %".1441"
  %".1443" = load float, ptr %"R12_Float32"
  %".1444" = sub float              0x0, %".1443"
  %"fmul.71" = fmul float %".1442", 0x3ff7154760000000
  %"fadd.76" = fadd float %"fmul.71", %".1444"
  store float %"fadd.76", ptr %"R12_Float32"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %".1447" = load float, ptr %"R11_Float32"
  %".1448" = sub float              0x0, %".1447"
  %".1449" = load float, ptr %"R12_Float32"
  %"fmul.72" = fmul float %".1448", 0x3e54ae0c00000000
  %"fadd.77" = fadd float %"fmul.72", %".1449"
  store float %"fadd.77", ptr %"R12_Float32"
  ; MUFU.EX2 R11, R12
  %".1452" = load float, ptr %"R12_Float32"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".1452")
  store float %"llvm_exp2_f32_result.1", ptr %"R11_Float32"
  ; FFMA R20, R20, R11, 1
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32", ptr %"R20_Int32", i32 4, i1 0)
  %".1455" = load float, ptr %"R20_Float32"
  %".1456" = load float, ptr %"R11_Float32"
  %"fmul.73" = fmul float %".1455", %".1456"
  %"fadd.78" = fadd float %"fmul.73", 0x3ff0000000000000
  store float %"fadd.78", ptr %"R20_Float32"
  ; @!P4 BRA `(.L_x_10)
  %".1459" = load i1, ptr %"P4_Bool"
  %".1460" = icmp eq i1 %".1459", 1
  br i1 %".1460", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".1463" = load i32, ptr %"R5_Int32"
  %".1464" = load i1, ptr %"PT_Bool"
  %"cmp.16" = icmp sge i32 %".1463", 3
  %".1465" = and i1 %"cmp.16", %".1464"
  ; MOV R8, RZ
  %".1467" = load float, ptr %"RZ_Float32"
  store float %".1467", ptr %"R8_Float32"
  ; MOV R22, RZ
  %".1470" = load i32, ptr %"RZ_Int32"
  store i32 %".1470", ptr %"R22_Int32"
  ; @!P0 BRA `(.L_x_11)
  %".1473" = load i1, ptr %"P0_Bool"
  %".1474" = icmp eq i1 %".1473", 1
  br i1 %".1474", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".1477" = load i32, ptr %"R7_Int32"
  %".1478" = load i1, ptr %"PT_Bool"
  %"cmp.17" = icmp sgt i32 %".1477", 0
  %".1479" = and i1 %"cmp.17", %".1478"
  ; MOV R8, RZ
  %".1481" = load float, ptr %"RZ_Float32"
  store float %".1481", ptr %"R8_Float32"
  ; MOV R22, RZ
  %".1484" = load i32, ptr %"RZ_Int32"
  store i32 %".1484", ptr %"R22_Int32"
  ; MOV R23, R7
  %".1487" = load i32, ptr %"R7_Int32"
  store i32 %".1487", ptr %"R23_Int32"
  ; @!P0 BRA `(.L_x_12)
  %".1490" = load i1, ptr %"P0_Bool"
  %".1491" = icmp eq i1 %".1490", 1
  br i1 %".1491", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".1494" = load i32, ptr %"R23_Int32"
  %".1495" = load i1, ptr %"PT_Bool"
  %"cmp.18" = icmp sgt i32 %".1494", 12
  %".1496" = and i1 %"cmp.18", %".1495"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".1498" = and i1 1, 1
  %".1499" = or i1 %".1498", 1
  ; @!P1 BRA `(.L_x_13)
  %".1501" = load i1, ptr %"P1_Bool"
  %".1502" = icmp eq i1 %".1501", 1
  br i1 %".1502", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1505" = xor i1 1, 1
  %".1506" = and i1 %".1505", 1
  %".1507" = and i1 %".1506", 1
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, ptr %"R49_Int32"
  ; IADD3 R16, R3, R22, RZ
  %".1511" = load i32, ptr %"R3_Int32"
  %".1512" = load i32, ptr %"R22_Int32"
  %"add.94" = add i32 %".1511", %".1512"
  %"add.95" = add i32 %"add.94", 0
  store i32 %"add.95", ptr %"R16_Int32"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".1515" = load i32, ptr %"R22_Int32"
  %".1516" = load i32, ptr %"R49_Int32"
  %"mul.36" = mul i32 %".1515", %".1516"
  %"add.96" = add i32 %"mul.36", %"Arg_3"
  store i32 %"add.96", ptr %"R12_Int32"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".1519" = load i32, ptr %"R16_Int32"
  %".1520" = load i32, ptr %"R49_Int32"
  %"mul.37" = mul i32 %".1519", %".1520"
  %"add.97" = add i32 %"mul.37", %"Arg_4"
  store i32 %"add.97", ptr %"R16_Int32"
  ; IADD3 R18, R22, 0x4, RZ
  %".1523" = load i32, ptr %"R22_Int32"
  %"add.98" = add i32 %".1523", 4
  %"add.99" = add i32 %"add.98", 0
  store i32 %"add.99", ptr %"R18_Int32"
  ; LDG.E.SYS R24, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1526" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.179" = zext ptr %".1526" to i64
  %".1527" = load ptr, ptr %"R13_Float32"
  %"zext.180" = zext ptr %".1527" to i64
  %"shl.88" = shl i64 %"zext.180", 32
  %"or.114" = or i64 %"shl.88", %"zext.179"
  %".1528" = add i64 %"or.114", 0
  %"for_LDG.95" = inttoptr i64 %".1528" to ptr
  %".1529" = load float, ptr %"for_LDG.95"
  store float %".1529", ptr %"R24_Float32"
  ; IADD3 R14, R3, R18, RZ
  %".1532" = load i32, ptr %"R3_Int32"
  %".1533" = load i32, ptr %"R18_Int32"
  %"add.100" = add i32 %".1532", %".1533"
  %"add.101" = add i32 %"add.100", 0
  store i32 %"add.101", ptr %"R14_Int32"
  ; LDG.E.SYS R21, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1536" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.181" = zext ptr %".1536" to i64
  %".1537" = load ptr, ptr %"R17_Float32"
  %"zext.182" = zext ptr %".1537" to i64
  %"shl.89" = shl i64 %"zext.182", 32
  %"or.115" = or i64 %"shl.89", %"zext.181"
  %".1538" = add i64 %"or.115", 0
  %"for_LDG.96" = inttoptr i64 %".1538" to ptr
  %".1539" = load float, ptr %"for_LDG.96"
  store float %".1539", ptr %"R21_Float32"
  ; LDG.E.SYS R36, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1542" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.183" = zext ptr %".1542" to i64
  %".1543" = load ptr, ptr %"R13_Float32"
  %"zext.184" = zext ptr %".1543" to i64
  %"shl.90" = shl i64 %"zext.184", 32
  %"or.116" = or i64 %"shl.90", %"zext.183"
  %".1544" = add i64 %"or.116", 4
  %"for_LDG.97" = inttoptr i64 %".1544" to ptr
  %".1545" = load float, ptr %"for_LDG.97"
  store float %".1545", ptr %"R36_Float32"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".1548" = load i32, ptr %"R18_Int32"
  %".1549" = load i32, ptr %"R49_Int32"
  %"mul.38" = mul i32 %".1548", %".1549"
  %"add.102" = add i32 %"mul.38", %"Arg_3"
  store i32 %"add.102", ptr %"R18_Int32"
  ; LDG.E.SYS R25, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1552" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.185" = zext ptr %".1552" to i64
  %".1553" = load ptr, ptr %"R17_Float32"
  %"zext.186" = zext ptr %".1553" to i64
  %"shl.91" = shl i64 %"zext.186", 32
  %"or.117" = or i64 %"shl.91", %"zext.185"
  %".1554" = add i64 %"or.117", 4
  %"for_LDG.98" = inttoptr i64 %".1554" to ptr
  %".1555" = load float, ptr %"for_LDG.98"
  store float %".1555", ptr %"R25_Float32"
  ; LDG.E.SYS R46, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1558" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.187" = zext ptr %".1558" to i64
  %".1559" = load ptr, ptr %"R13_Float32"
  %"zext.188" = zext ptr %".1559" to i64
  %"shl.92" = shl i64 %"zext.188", 32
  %"or.118" = or i64 %"shl.92", %"zext.187"
  %".1560" = add i64 %"or.118", 8
  %"for_LDG.99" = inttoptr i64 %".1560" to ptr
  %".1561" = load float, ptr %"for_LDG.99"
  store float %".1561", ptr %"R46_Float32"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".1564" = load i32, ptr %"R14_Int32"
  %".1565" = load i32, ptr %"R49_Int32"
  %"mul.39" = mul i32 %".1564", %".1565"
  %"add.103" = add i32 %"mul.39", %"Arg_4"
  store i32 %"add.103", ptr %"R14_Int32"
  ; LDG.E.SYS R34, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1568" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.189" = zext ptr %".1568" to i64
  %".1569" = load ptr, ptr %"R17_Float32"
  %"zext.190" = zext ptr %".1569" to i64
  %"shl.93" = shl i64 %"zext.190", 32
  %"or.119" = or i64 %"shl.93", %"zext.189"
  %".1570" = add i64 %"or.119", 8
  %"for_LDG.100" = inttoptr i64 %".1570" to ptr
  %".1571" = load float, ptr %"for_LDG.100"
  store float %".1571", ptr %"R34_Float32"
  ; LDG.E.SYS R44, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1574" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.191" = zext ptr %".1574" to i64
  %".1575" = load ptr, ptr %"R13_Float32"
  %"zext.192" = zext ptr %".1575" to i64
  %"shl.94" = shl i64 %"zext.192", 32
  %"or.120" = or i64 %"shl.94", %"zext.191"
  %".1576" = add i64 %"or.120", 12
  %"for_LDG.101" = inttoptr i64 %".1576" to ptr
  %".1577" = load float, ptr %"for_LDG.101"
  store float %".1577", ptr %"R44_Float32"
  ; IADD3 R10, R22, 0x8, RZ
  %".1580" = load i32, ptr %"R22_Int32"
  %"add.104" = add i32 %".1580", 8
  %"add.105" = add i32 %"add.104", 0
  store i32 %"add.105", ptr %"R10_Int32"
  ; LDG.E.SYS R41, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1583" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.193" = zext ptr %".1583" to i64
  %".1584" = load ptr, ptr %"R17_Float32"
  %"zext.194" = zext ptr %".1584" to i64
  %"shl.95" = shl i64 %"zext.194", 32
  %"or.121" = or i64 %"shl.95", %"zext.193"
  %".1585" = add i64 %"or.121", 12
  %"for_LDG.102" = inttoptr i64 %".1585" to ptr
  %".1586" = load float, ptr %"for_LDG.102"
  store float %".1586", ptr %"R41_Float32"
  ; LDG.E.SYS R42, [R18]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".1589" = load ptr, ptr %"R18_Float32_PTR"
  %"zext.195" = zext ptr %".1589" to i64
  %".1590" = load ptr, ptr %"R19_Float32"
  %"zext.196" = zext ptr %".1590" to i64
  %"shl.96" = shl i64 %"zext.196", 32
  %"or.122" = or i64 %"shl.96", %"zext.195"
  %".1591" = add i64 %"or.122", 0
  %"for_LDG.103" = inttoptr i64 %".1591" to ptr
  %".1592" = load float, ptr %"for_LDG.103"
  store float %".1592", ptr %"R42_Float32"
  ; IADD3 R50, R3, R10, RZ
  %".1595" = load i32, ptr %"R3_Int32"
  %".1596" = load i32, ptr %"R10_Int32"
  %"add.106" = add i32 %".1595", %".1596"
  %"add.107" = add i32 %"add.106", 0
  store i32 %"add.107", ptr %"R50_Int32"
  ; LDG.E.SYS R39, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1599" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.197" = zext ptr %".1599" to i64
  %".1600" = load ptr, ptr %"R15_Int32"
  %"zext.198" = zext ptr %".1600" to i64
  %"shl.97" = shl i64 %"zext.198", 32
  %"or.123" = or i64 %"shl.97", %"zext.197"
  %".1601" = add i64 %"or.123", 0
  %"for_LDG.104" = inttoptr i64 %".1601" to ptr
  %".1602" = load float, ptr %"for_LDG.104"
  store float %".1602", ptr %"R39_Float32"
  ; LDG.E.SYS R40, [R18+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".1605" = load ptr, ptr %"R18_Float32_PTR"
  %"zext.199" = zext ptr %".1605" to i64
  %".1606" = load ptr, ptr %"R19_Float32"
  %"zext.200" = zext ptr %".1606" to i64
  %"shl.98" = shl i64 %"zext.200", 32
  %"or.124" = or i64 %"shl.98", %"zext.199"
  %".1607" = add i64 %"or.124", 4
  %"for_LDG.105" = inttoptr i64 %".1607" to ptr
  %".1608" = load float, ptr %"for_LDG.105"
  store float %".1608", ptr %"R40_Float32"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".1611" = load i32, ptr %"R10_Int32"
  %".1612" = load i32, ptr %"R49_Int32"
  %"mul.40" = mul i32 %".1611", %".1612"
  %"add.108" = add i32 %"mul.40", %"Arg_3"
  store i32 %"add.108", ptr %"R10_Int32"
  ; LDG.E.SYS R37, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1615" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.201" = zext ptr %".1615" to i64
  %".1616" = load ptr, ptr %"R15_Int32"
  %"zext.202" = zext ptr %".1616" to i64
  %"shl.99" = shl i64 %"zext.202", 32
  %"or.125" = or i64 %"shl.99", %"zext.201"
  %".1617" = add i64 %"or.125", 4
  %"for_LDG.106" = inttoptr i64 %".1617" to ptr
  %".1618" = load float, ptr %"for_LDG.106"
  store float %".1618", ptr %"R37_Float32"
  ; LDG.E.SYS R38, [R18+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".1621" = load ptr, ptr %"R18_Float32_PTR"
  %"zext.203" = zext ptr %".1621" to i64
  %".1622" = load ptr, ptr %"R19_Float32"
  %"zext.204" = zext ptr %".1622" to i64
  %"shl.100" = shl i64 %"zext.204", 32
  %"or.126" = or i64 %"shl.100", %"zext.203"
  %".1623" = add i64 %"or.126", 8
  %"for_LDG.107" = inttoptr i64 %".1623" to ptr
  %".1624" = load float, ptr %"for_LDG.107"
  store float %".1624", ptr %"R38_Float32"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".1627" = load i32, ptr %"R50_Int32"
  %".1628" = load i32, ptr %"R49_Int32"
  %"mul.41" = mul i32 %".1627", %".1628"
  %"add.109" = add i32 %"mul.41", %"Arg_4"
  store i32 %"add.109", ptr %"R12_Int32"
  ; LDG.E.SYS R35, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1631" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.205" = zext ptr %".1631" to i64
  %".1632" = load ptr, ptr %"R15_Int32"
  %"zext.206" = zext ptr %".1632" to i64
  %"shl.101" = shl i64 %"zext.206", 32
  %"or.127" = or i64 %"shl.101", %"zext.205"
  %".1633" = add i64 %"or.127", 8
  %"for_LDG.108" = inttoptr i64 %".1633" to ptr
  %".1634" = load float, ptr %"for_LDG.108"
  store float %".1634", ptr %"R35_Float32"
  ; LDG.E.SYS R48, [R18+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".1637" = load ptr, ptr %"R18_Float32_PTR"
  %"zext.207" = zext ptr %".1637" to i64
  %".1638" = load ptr, ptr %"R19_Float32"
  %"zext.208" = zext ptr %".1638" to i64
  %"shl.102" = shl i64 %"zext.208", 32
  %"or.128" = or i64 %"shl.102", %"zext.207"
  %".1639" = add i64 %"or.128", 12
  %"for_LDG.109" = inttoptr i64 %".1639" to ptr
  %".1640" = load float, ptr %"for_LDG.109"
  store float %".1640", ptr %"R48_Float32"
  ; IADD3 R16, R22, 0xc, RZ
  %".1643" = load i32, ptr %"R22_Int32"
  %"add.110" = add i32 %".1643", 12
  %"add.111" = add i32 %"add.110", 0
  store i32 %"add.111", ptr %"R16_Int32"
  ; LDG.E.SYS R47, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1646" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.209" = zext ptr %".1646" to i64
  %".1647" = load ptr, ptr %"R15_Int32"
  %"zext.210" = zext ptr %".1647" to i64
  %"shl.103" = shl i64 %"zext.210", 32
  %"or.129" = or i64 %"shl.103", %"zext.209"
  %".1648" = add i64 %"or.129", 12
  %"for_LDG.110" = inttoptr i64 %".1648" to ptr
  %".1649" = load float, ptr %"for_LDG.110"
  store float %".1649", ptr %"R47_Float32"
  ; LDG.E.SYS R54, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1652" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.211" = zext ptr %".1652" to i64
  %".1653" = load ptr, ptr %"R11_Float32"
  %"zext.212" = zext ptr %".1653" to i64
  %"shl.104" = shl i64 %"zext.212", 32
  %"or.130" = or i64 %"shl.104", %"zext.211"
  %".1654" = add i64 %"or.130", 0
  %"for_LDG.111" = inttoptr i64 %".1654" to ptr
  %".1655" = load float, ptr %"for_LDG.111"
  store float %".1655", ptr %"R54_Float32"
  ; IADD3 R58, R3, R16, RZ
  %".1658" = load i32, ptr %"R3_Int32"
  %".1659" = load i32, ptr %"R16_Int32"
  %"add.112" = add i32 %".1658", %".1659"
  %"add.113" = add i32 %"add.112", 0
  store i32 %"add.113", ptr %"R58_Int32"
  ; LDG.E.SYS R45, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1662" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.213" = zext ptr %".1662" to i64
  %".1663" = load ptr, ptr %"R13_Float32"
  %"zext.214" = zext ptr %".1663" to i64
  %"shl.105" = shl i64 %"zext.214", 32
  %"or.131" = or i64 %"shl.105", %"zext.213"
  %".1664" = add i64 %"or.131", 0
  %"for_LDG.112" = inttoptr i64 %".1664" to ptr
  %".1665" = load float, ptr %"for_LDG.112"
  store float %".1665", ptr %"R45_Float32"
  ; LDG.E.SYS R52, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1668" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.215" = zext ptr %".1668" to i64
  %".1669" = load ptr, ptr %"R11_Float32"
  %"zext.216" = zext ptr %".1669" to i64
  %"shl.106" = shl i64 %"zext.216", 32
  %"or.132" = or i64 %"shl.106", %"zext.215"
  %".1670" = add i64 %"or.132", 4
  %"for_LDG.113" = inttoptr i64 %".1670" to ptr
  %".1671" = load float, ptr %"for_LDG.113"
  store float %".1671", ptr %"R52_Float32"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".1674" = load i32, ptr %"R16_Int32"
  %".1675" = load i32, ptr %"R49_Int32"
  %"mul.42" = mul i32 %".1674", %".1675"
  %"add.114" = add i32 %"mul.42", %"Arg_3"
  store i32 %"add.114", ptr %"R16_Int32"
  ; LDG.E.SYS R43, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1678" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.217" = zext ptr %".1678" to i64
  %".1679" = load ptr, ptr %"R13_Float32"
  %"zext.218" = zext ptr %".1679" to i64
  %"shl.107" = shl i64 %"zext.218", 32
  %"or.133" = or i64 %"shl.107", %"zext.217"
  %".1680" = add i64 %"or.133", 4
  %"for_LDG.114" = inttoptr i64 %".1680" to ptr
  %".1681" = load float, ptr %"for_LDG.114"
  store float %".1681", ptr %"R43_Float32"
  ; LDG.E.SYS R50, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1684" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.219" = zext ptr %".1684" to i64
  %".1685" = load ptr, ptr %"R11_Float32"
  %"zext.220" = zext ptr %".1685" to i64
  %"shl.108" = shl i64 %"zext.220", 32
  %"or.134" = or i64 %"shl.108", %"zext.219"
  %".1686" = add i64 %"or.134", 8
  %"for_LDG.115" = inttoptr i64 %".1686" to ptr
  %".1687" = load float, ptr %"for_LDG.115"
  store float %".1687", ptr %"R50_Float32"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".1690" = load i32, ptr %"R58_Int32"
  %".1691" = load i32, ptr %"R49_Int32"
  %"mul.43" = mul i32 %".1690", %".1691"
  %"add.115" = add i32 %"mul.43", %"Arg_4"
  store i32 %"add.115", ptr %"R14_Int32"
  ; LDG.E.SYS R18, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1694" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.221" = zext ptr %".1694" to i64
  %".1695" = load ptr, ptr %"R13_Float32"
  %"zext.222" = zext ptr %".1695" to i64
  %"shl.109" = shl i64 %"zext.222", 32
  %"or.135" = or i64 %"shl.109", %"zext.221"
  %".1696" = add i64 %"or.135", 8
  %"for_LDG.116" = inttoptr i64 %".1696" to ptr
  %".1697" = load float, ptr %"for_LDG.116"
  store float %".1697", ptr %"R18_Float32"
  ; LDG.E.SYS R56, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1700" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.223" = zext ptr %".1700" to i64
  %".1701" = load ptr, ptr %"R11_Float32"
  %"zext.224" = zext ptr %".1701" to i64
  %"shl.110" = shl i64 %"zext.224", 32
  %"or.136" = or i64 %"shl.110", %"zext.223"
  %".1702" = add i64 %"or.136", 12
  %"for_LDG.117" = inttoptr i64 %".1702" to ptr
  %".1703" = load float, ptr %"for_LDG.117"
  store float %".1703", ptr %"R56_Float32"
  ; LDG.E.SYS R55, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1706" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.225" = zext ptr %".1706" to i64
  %".1707" = load ptr, ptr %"R13_Float32"
  %"zext.226" = zext ptr %".1707" to i64
  %"shl.111" = shl i64 %"zext.226", 32
  %"or.137" = or i64 %"shl.111", %"zext.225"
  %".1708" = add i64 %"or.137", 12
  %"for_LDG.118" = inttoptr i64 %".1708" to ptr
  %".1709" = load float, ptr %"for_LDG.118"
  store float %".1709", ptr %"R55_Float32"
  ; LDG.E.SYS R51, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1712" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.227" = zext ptr %".1712" to i64
  %".1713" = load ptr, ptr %"R17_Float32"
  %"zext.228" = zext ptr %".1713" to i64
  %"shl.112" = shl i64 %"zext.228", 32
  %"or.138" = or i64 %"shl.112", %"zext.227"
  %".1714" = add i64 %"or.138", 0
  %"for_LDG.119" = inttoptr i64 %".1714" to ptr
  %".1715" = load float, ptr %"for_LDG.119"
  store float %".1715", ptr %"R51_Float32"
  ; LDG.E.SYS R53, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1718" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.229" = zext ptr %".1718" to i64
  %".1719" = load ptr, ptr %"R15_Int32"
  %"zext.230" = zext ptr %".1719" to i64
  %"shl.113" = shl i64 %"zext.230", 32
  %"or.139" = or i64 %"shl.113", %"zext.229"
  %".1720" = add i64 %"or.139", 0
  %"for_LDG.120" = inttoptr i64 %".1720" to ptr
  %".1721" = load float, ptr %"for_LDG.120"
  store float %".1721", ptr %"R53_Float32"
  ; LDG.E.SYS R60, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1724" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.231" = zext ptr %".1724" to i64
  %".1725" = load ptr, ptr %"R17_Float32"
  %"zext.232" = zext ptr %".1725" to i64
  %"shl.114" = shl i64 %"zext.232", 32
  %"or.140" = or i64 %"shl.114", %"zext.231"
  %".1726" = add i64 %"or.140", 4
  %"for_LDG.121" = inttoptr i64 %".1726" to ptr
  %".1727" = load float, ptr %"for_LDG.121"
  store float %".1727", ptr %"R60_Float32"
  ; LDG.E.SYS R49, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1730" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.233" = zext ptr %".1730" to i64
  %".1731" = load ptr, ptr %"R15_Int32"
  %"zext.234" = zext ptr %".1731" to i64
  %"shl.115" = shl i64 %"zext.234", 32
  %"or.141" = or i64 %"shl.115", %"zext.233"
  %".1732" = add i64 %"or.141", 4
  %"for_LDG.122" = inttoptr i64 %".1732" to ptr
  %".1733" = load float, ptr %"for_LDG.122"
  store float %".1733", ptr %"R49_Float32"
  ; LDG.E.SYS R58, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1736" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.235" = zext ptr %".1736" to i64
  %".1737" = load ptr, ptr %"R17_Float32"
  %"zext.236" = zext ptr %".1737" to i64
  %"shl.116" = shl i64 %"zext.236", 32
  %"or.142" = or i64 %"shl.116", %"zext.235"
  %".1738" = add i64 %"or.142", 8
  %"for_LDG.123" = inttoptr i64 %".1738" to ptr
  %".1739" = load float, ptr %"for_LDG.123"
  store float %".1739", ptr %"R58_Float32"
  ; LDG.E.SYS R19, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1742" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.237" = zext ptr %".1742" to i64
  %".1743" = load ptr, ptr %"R15_Int32"
  %"zext.238" = zext ptr %".1743" to i64
  %"shl.117" = shl i64 %"zext.238", 32
  %"or.143" = or i64 %"shl.117", %"zext.237"
  %".1744" = add i64 %"or.143", 8
  %"for_LDG.124" = inttoptr i64 %".1744" to ptr
  %".1745" = load float, ptr %"for_LDG.124"
  store float %".1745", ptr %"R19_Float32"
  ; LDG.E.SYS R57, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1748" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.239" = zext ptr %".1748" to i64
  %".1749" = load ptr, ptr %"R17_Float32"
  %"zext.240" = zext ptr %".1749" to i64
  %"shl.118" = shl i64 %"zext.240", 32
  %"or.144" = or i64 %"shl.118", %"zext.239"
  %".1750" = add i64 %"or.144", 12
  %"for_LDG.125" = inttoptr i64 %".1750" to ptr
  %".1751" = load float, ptr %"for_LDG.125"
  store float %".1751", ptr %"R57_Float32"
  ; LDG.E.SYS R59, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1754" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.241" = zext ptr %".1754" to i64
  %".1755" = load ptr, ptr %"R15_Int32"
  %"zext.242" = zext ptr %".1755" to i64
  %"shl.119" = shl i64 %"zext.242", 32
  %"or.145" = or i64 %"shl.119", %"zext.241"
  %".1756" = add i64 %"or.145", 12
  %"for_LDG.126" = inttoptr i64 %".1756" to ptr
  %".1757" = load float, ptr %"for_LDG.126"
  store float %".1757", ptr %"R59_Float32"
  ; IADD3 R23, R23, -0x10, RZ
  %".1760" = load i32, ptr %"R23_Int32"
  %"add.116" = add i32 %".1760", -16
  %"add.117" = add i32 %"add.116", 0
  store i32 %"add.117", ptr %"R23_Int32"
  ; IADD3 R22, R22, 0x10, RZ
  %".1763" = load i32, ptr %"R22_Int32"
  %"add.118" = add i32 %".1763", 16
  %"add.119" = add i32 %"add.118", 0
  store i32 %"add.119", ptr %"R22_Int32"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".1766" = load i32, ptr %"R23_Int32"
  %".1767" = load i1, ptr %"PT_Bool"
  %"cmp.19" = icmp sgt i32 %".1766", 12
  %".1768" = and i1 %"cmp.19", %".1767"
  ; FMUL R24, R24, R9
  %".1770" = load float, ptr %"R24_Float32"
  %".1771" = load float, ptr %"R9_Float32"
  %"fmul.74" = fmul float %".1770", %".1771"
  store float %"fmul.74", ptr %"R24_Float32"
  ; FFMA R24, R24, R21, R8
  %".1774" = load float, ptr %"R24_Float32"
  %".1775" = load float, ptr %"R21_Float32"
  %".1776" = load float, ptr %"R8_Float32"
  %"fmul.75" = fmul float %".1774", %".1775"
  %"fadd.79" = fadd float %"fmul.75", %".1776"
  store float %"fadd.79", ptr %"R24_Float32"
  ; FMUL R36, R36, R9
  %".1779" = load float, ptr %"R36_Float32"
  %".1780" = load float, ptr %"R9_Float32"
  %"fmul.76" = fmul float %".1779", %".1780"
  store float %"fmul.76", ptr %"R36_Float32"
  ; FFMA R25, R36, R25, R24
  %".1783" = load float, ptr %"R36_Float32"
  %".1784" = load float, ptr %"R25_Float32"
  %".1785" = load float, ptr %"R24_Float32"
  %"fmul.77" = fmul float %".1783", %".1784"
  %"fadd.80" = fadd float %"fmul.77", %".1785"
  store float %"fadd.80", ptr %"R25_Float32"
  ; FMUL R46, R46, R9
  %".1788" = load float, ptr %"R46_Float32"
  %".1789" = load float, ptr %"R9_Float32"
  %"fmul.78" = fmul float %".1788", %".1789"
  store float %"fmul.78", ptr %"R46_Float32"
  ; FFMA R34, R46, R34, R25
  %".1792" = load float, ptr %"R46_Float32"
  %".1793" = load float, ptr %"R34_Float32"
  %".1794" = load float, ptr %"R25_Float32"
  %"fmul.79" = fmul float %".1792", %".1793"
  %"fadd.81" = fadd float %"fmul.79", %".1794"
  store float %"fadd.81", ptr %"R34_Float32"
  ; FMUL R44, R44, R9
  %".1797" = load float, ptr %"R44_Float32"
  %".1798" = load float, ptr %"R9_Float32"
  %"fmul.80" = fmul float %".1797", %".1798"
  store float %"fmul.80", ptr %"R44_Float32"
  ; FFMA R34, R44, R41, R34
  %".1801" = load float, ptr %"R44_Float32"
  %".1802" = load float, ptr %"R41_Float32"
  %".1803" = load float, ptr %"R34_Float32"
  %"fmul.81" = fmul float %".1801", %".1802"
  %"fadd.82" = fadd float %"fmul.81", %".1803"
  store float %"fadd.82", ptr %"R34_Float32"
  ; FMUL R42, R42, R9
  %".1806" = load float, ptr %"R42_Float32"
  %".1807" = load float, ptr %"R9_Float32"
  %"fmul.82" = fmul float %".1806", %".1807"
  store float %"fmul.82", ptr %"R42_Float32"
  ; FFMA R34, R42, R39, R34
  %".1810" = load float, ptr %"R42_Float32"
  %".1811" = load float, ptr %"R39_Float32"
  %".1812" = load float, ptr %"R34_Float32"
  %"fmul.83" = fmul float %".1810", %".1811"
  %"fadd.83" = fadd float %"fmul.83", %".1812"
  store float %"fadd.83", ptr %"R34_Float32"
  ; FMUL R40, R40, R9
  %".1815" = load float, ptr %"R40_Float32"
  %".1816" = load float, ptr %"R9_Float32"
  %"fmul.84" = fmul float %".1815", %".1816"
  store float %"fmul.84", ptr %"R40_Float32"
  ; FFMA R34, R40, R37, R34
  %".1819" = load float, ptr %"R40_Float32"
  %".1820" = load float, ptr %"R37_Float32"
  %".1821" = load float, ptr %"R34_Float32"
  %"fmul.85" = fmul float %".1819", %".1820"
  %"fadd.84" = fadd float %"fmul.85", %".1821"
  store float %"fadd.84", ptr %"R34_Float32"
  ; FMUL R38, R38, R9
  %".1824" = load float, ptr %"R38_Float32"
  %".1825" = load float, ptr %"R9_Float32"
  %"fmul.86" = fmul float %".1824", %".1825"
  store float %"fmul.86", ptr %"R38_Float32"
  ; FFMA R34, R38, R35, R34
  %".1828" = load float, ptr %"R38_Float32"
  %".1829" = load float, ptr %"R35_Float32"
  %".1830" = load float, ptr %"R34_Float32"
  %"fmul.87" = fmul float %".1828", %".1829"
  %"fadd.85" = fadd float %"fmul.87", %".1830"
  store float %"fadd.85", ptr %"R34_Float32"
  ; FMUL R48, R48, R9
  %".1833" = load float, ptr %"R48_Float32"
  %".1834" = load float, ptr %"R9_Float32"
  %"fmul.88" = fmul float %".1833", %".1834"
  store float %"fmul.88", ptr %"R48_Float32"
  ; FFMA R34, R48, R47, R34
  %".1837" = load float, ptr %"R48_Float32"
  %".1838" = load float, ptr %"R47_Float32"
  %".1839" = load float, ptr %"R34_Float32"
  %"fmul.89" = fmul float %".1837", %".1838"
  %"fadd.86" = fadd float %"fmul.89", %".1839"
  store float %"fadd.86", ptr %"R34_Float32"
  ; FMUL R54, R54, R9
  %".1842" = load float, ptr %"R54_Float32"
  %".1843" = load float, ptr %"R9_Float32"
  %"fmul.90" = fmul float %".1842", %".1843"
  store float %"fmul.90", ptr %"R54_Float32"
  ; FFMA R34, R54, R45, R34
  %".1846" = load float, ptr %"R54_Float32"
  %".1847" = load float, ptr %"R45_Float32"
  %".1848" = load float, ptr %"R34_Float32"
  %"fmul.91" = fmul float %".1846", %".1847"
  %"fadd.87" = fadd float %"fmul.91", %".1848"
  store float %"fadd.87", ptr %"R34_Float32"
  ; FMUL R52, R52, R9
  %".1851" = load float, ptr %"R52_Float32"
  %".1852" = load float, ptr %"R9_Float32"
  %"fmul.92" = fmul float %".1851", %".1852"
  store float %"fmul.92", ptr %"R52_Float32"
  ; FFMA R43, R52, R43, R34
  %".1855" = load float, ptr %"R52_Float32"
  %".1856" = load float, ptr %"R43_Float32"
  %".1857" = load float, ptr %"R34_Float32"
  %"fmul.93" = fmul float %".1855", %".1856"
  %"fadd.88" = fadd float %"fmul.93", %".1857"
  store float %"fadd.88", ptr %"R43_Float32"
  ; FMUL R50, R50, R9
  %".1860" = load float, ptr %"R50_Float32"
  %".1861" = load float, ptr %"R9_Float32"
  %"fmul.94" = fmul float %".1860", %".1861"
  store float %"fmul.94", ptr %"R50_Float32"
  ; FFMA R18, R50, R18, R43
  %".1864" = load float, ptr %"R50_Float32"
  %".1865" = load float, ptr %"R18_Float32"
  %".1866" = load float, ptr %"R43_Float32"
  %"fmul.95" = fmul float %".1864", %".1865"
  %"fadd.89" = fadd float %"fmul.95", %".1866"
  store float %"fadd.89", ptr %"R18_Float32"
  ; FMUL R56, R56, R9
  %".1869" = load float, ptr %"R56_Float32"
  %".1870" = load float, ptr %"R9_Float32"
  %"fmul.96" = fmul float %".1869", %".1870"
  store float %"fmul.96", ptr %"R56_Float32"
  ; FFMA R18, R56, R55, R18
  %".1873" = load float, ptr %"R56_Float32"
  %".1874" = load float, ptr %"R55_Float32"
  %".1875" = load float, ptr %"R18_Float32"
  %"fmul.97" = fmul float %".1873", %".1874"
  %"fadd.90" = fadd float %"fmul.97", %".1875"
  store float %"fadd.90", ptr %"R18_Float32"
  ; FMUL R51, R51, R9
  %".1878" = load float, ptr %"R51_Float32"
  %".1879" = load float, ptr %"R9_Float32"
  %"fmul.98" = fmul float %".1878", %".1879"
  store float %"fmul.98", ptr %"R51_Float32"
  ; FFMA R18, R51, R53, R18
  %".1882" = load float, ptr %"R51_Float32"
  %".1883" = load float, ptr %"R53_Float32"
  %".1884" = load float, ptr %"R18_Float32"
  %"fmul.99" = fmul float %".1882", %".1883"
  %"fadd.91" = fadd float %"fmul.99", %".1884"
  store float %"fadd.91", ptr %"R18_Float32"
  ; FMUL R60, R60, R9
  %".1887" = load float, ptr %"R60_Float32"
  %".1888" = load float, ptr %"R9_Float32"
  %"fmul.100" = fmul float %".1887", %".1888"
  store float %"fmul.100", ptr %"R60_Float32"
  ; FFMA R18, R60, R49, R18
  %".1891" = load float, ptr %"R60_Float32"
  %".1892" = load float, ptr %"R49_Float32"
  %".1893" = load float, ptr %"R18_Float32"
  %"fmul.101" = fmul float %".1891", %".1892"
  %"fadd.92" = fadd float %"fmul.101", %".1893"
  store float %"fadd.92", ptr %"R18_Float32"
  ; FMUL R58, R58, R9
  %".1896" = load float, ptr %"R58_Float32"
  %".1897" = load float, ptr %"R9_Float32"
  %"fmul.102" = fmul float %".1896", %".1897"
  store float %"fmul.102", ptr %"R58_Float32"
  ; FFMA R18, R58, R19, R18
  %".1900" = load float, ptr %"R58_Float32"
  %".1901" = load float, ptr %"R19_Float32"
  %".1902" = load float, ptr %"R18_Float32"
  %"fmul.103" = fmul float %".1900", %".1901"
  %"fadd.93" = fadd float %"fmul.103", %".1902"
  store float %"fadd.93", ptr %"R18_Float32"
  ; FMUL R57, R57, R9
  %".1905" = load float, ptr %"R57_Float32"
  %".1906" = load float, ptr %"R9_Float32"
  %"fmul.104" = fmul float %".1905", %".1906"
  store float %"fmul.104", ptr %"R57_Float32"
  ; FFMA R8, R57, R59, R18
  %".1909" = load float, ptr %"R57_Float32"
  %".1910" = load float, ptr %"R59_Float32"
  %".1911" = load float, ptr %"R18_Float32"
  %"fmul.105" = fmul float %".1909", %".1910"
  %"fadd.94" = fadd float %"fmul.105", %".1911"
  store float %"fadd.94", ptr %"R8_Float32"
  ; @P1 BRA `(.L_x_14)
  %".1914" = load i1, ptr %"P1_Bool"
  %".1915" = icmp ne i1 %".1914", 1
  br i1 %".1915", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".1918" = load i32, ptr %"R23_Int32"
  %".1919" = load i1, ptr %"PT_Bool"
  %"cmp.20" = icmp sgt i32 %".1918", 4
  %".1920" = and i1 %"cmp.20", %".1919"
  ; @!P1 BRA `(.L_x_15)
  %".1922" = load i1, ptr %"P1_Bool"
  %".1923" = icmp eq i1 %".1922", 1
  br i1 %".1923", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13_Int32"
  ; IADD3 R16, R3, R22, RZ
  %".1928" = load i32, ptr %"R3_Int32"
  %".1929" = load i32, ptr %"R22_Int32"
  %"add.120" = add i32 %".1928", %".1929"
  %"add.121" = add i32 %"add.120", 0
  store i32 %"add.121", ptr %"R16_Int32"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".1932" = load i32, ptr %"R22_Int32"
  %".1933" = load i32, ptr %"R13_Int32"
  %"mul.44" = mul i32 %".1932", %".1933"
  %"add.122" = add i32 %"mul.44", %"Arg_3"
  store i32 %"add.122", ptr %"R14_Int32"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".1936" = load i32, ptr %"R16_Int32"
  %".1937" = load i32, ptr %"R13_Int32"
  %"mul.45" = mul i32 %".1936", %".1937"
  %"add.123" = add i32 %"mul.45", %"Arg_4"
  store i32 %"add.123", ptr %"R16_Int32"
  ; IADD3 R10, R22, 0x4, RZ
  %".1940" = load i32, ptr %"R22_Int32"
  %"add.124" = add i32 %".1940", 4
  %"add.125" = add i32 %"add.124", 0
  store i32 %"add.125", ptr %"R10_Int32"
  ; LDG.E.SYS R18, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1943" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.243" = zext ptr %".1943" to i64
  %".1944" = load ptr, ptr %"R15_Int32"
  %"zext.244" = zext ptr %".1944" to i64
  %"shl.120" = shl i64 %"zext.244", 32
  %"or.146" = or i64 %"shl.120", %"zext.243"
  %".1945" = add i64 %"or.146", 0
  %"for_LDG.127" = inttoptr i64 %".1945" to ptr
  %".1946" = load float, ptr %"for_LDG.127"
  store float %".1946", ptr %"R18_Float32"
  ; IADD3 R12, R3, R10, RZ
  %".1949" = load i32, ptr %"R3_Int32"
  %".1950" = load i32, ptr %"R10_Int32"
  %"add.126" = add i32 %".1949", %".1950"
  %"add.127" = add i32 %"add.126", 0
  store i32 %"add.127", ptr %"R12_Int32"
  ; LDG.E.SYS R19, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1953" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.245" = zext ptr %".1953" to i64
  %".1954" = load ptr, ptr %"R17_Float32"
  %"zext.246" = zext ptr %".1954" to i64
  %"shl.121" = shl i64 %"zext.246", 32
  %"or.147" = or i64 %"shl.121", %"zext.245"
  %".1955" = add i64 %"or.147", 0
  %"for_LDG.128" = inttoptr i64 %".1955" to ptr
  %".1956" = load float, ptr %"for_LDG.128"
  store float %".1956", ptr %"R19_Float32"
  ; LDG.E.SYS R24, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1959" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.247" = zext ptr %".1959" to i64
  %".1960" = load ptr, ptr %"R15_Int32"
  %"zext.248" = zext ptr %".1960" to i64
  %"shl.122" = shl i64 %"zext.248", 32
  %"or.148" = or i64 %"shl.122", %"zext.247"
  %".1961" = add i64 %"or.148", 4
  %"for_LDG.129" = inttoptr i64 %".1961" to ptr
  %".1962" = load float, ptr %"for_LDG.129"
  store float %".1962", ptr %"R24_Float32"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".1965" = load i32, ptr %"R10_Int32"
  %".1966" = load i32, ptr %"R13_Int32"
  %"mul.46" = mul i32 %".1965", %".1966"
  %"add.128" = add i32 %"mul.46", %"Arg_3"
  store i32 %"add.128", ptr %"R10_Int32"
  ; LDG.E.SYS R21, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1969" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.249" = zext ptr %".1969" to i64
  %".1970" = load ptr, ptr %"R17_Float32"
  %"zext.250" = zext ptr %".1970" to i64
  %"shl.123" = shl i64 %"zext.250", 32
  %"or.149" = or i64 %"shl.123", %"zext.249"
  %".1971" = add i64 %"or.149", 4
  %"for_LDG.130" = inttoptr i64 %".1971" to ptr
  %".1972" = load float, ptr %"for_LDG.130"
  store float %".1972", ptr %"R21_Float32"
  ; LDG.E.SYS R34, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1975" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.251" = zext ptr %".1975" to i64
  %".1976" = load ptr, ptr %"R15_Int32"
  %"zext.252" = zext ptr %".1976" to i64
  %"shl.124" = shl i64 %"zext.252", 32
  %"or.150" = or i64 %"shl.124", %"zext.251"
  %".1977" = add i64 %"or.150", 8
  %"for_LDG.131" = inttoptr i64 %".1977" to ptr
  %".1978" = load float, ptr %"for_LDG.131"
  store float %".1978", ptr %"R34_Float32"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".1981" = load i32, ptr %"R12_Int32"
  %".1982" = load i32, ptr %"R13_Int32"
  %"mul.47" = mul i32 %".1981", %".1982"
  %"add.129" = add i32 %"mul.47", %"Arg_4"
  store i32 %"add.129", ptr %"R12_Int32"
  ; LDG.E.SYS R25, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1985" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.253" = zext ptr %".1985" to i64
  %".1986" = load ptr, ptr %"R17_Float32"
  %"zext.254" = zext ptr %".1986" to i64
  %"shl.125" = shl i64 %"zext.254", 32
  %"or.151" = or i64 %"shl.125", %"zext.253"
  %".1987" = add i64 %"or.151", 8
  %"for_LDG.132" = inttoptr i64 %".1987" to ptr
  %".1988" = load float, ptr %"for_LDG.132"
  store float %".1988", ptr %"R25_Float32"
  ; LDG.E.SYS R36, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1991" = load ptr, ptr %"R14_Float32_PTR"
  %"zext.255" = zext ptr %".1991" to i64
  %".1992" = load ptr, ptr %"R15_Int32"
  %"zext.256" = zext ptr %".1992" to i64
  %"shl.126" = shl i64 %"zext.256", 32
  %"or.152" = or i64 %"shl.126", %"zext.255"
  %".1993" = add i64 %"or.152", 12
  %"for_LDG.133" = inttoptr i64 %".1993" to ptr
  %".1994" = load float, ptr %"for_LDG.133"
  store float %".1994", ptr %"R36_Float32"
  ; LDG.E.SYS R35, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1997" = load ptr, ptr %"R16_Float32_PTR"
  %"zext.257" = zext ptr %".1997" to i64
  %".1998" = load ptr, ptr %"R17_Float32"
  %"zext.258" = zext ptr %".1998" to i64
  %"shl.127" = shl i64 %"zext.258", 32
  %"or.153" = or i64 %"shl.127", %"zext.257"
  %".1999" = add i64 %"or.153", 12
  %"for_LDG.134" = inttoptr i64 %".1999" to ptr
  %".2000" = load float, ptr %"for_LDG.134"
  store float %".2000", ptr %"R35_Float32"
  ; LDG.E.SYS R38, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2003" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.259" = zext ptr %".2003" to i64
  %".2004" = load ptr, ptr %"R11_Float32"
  %"zext.260" = zext ptr %".2004" to i64
  %"shl.128" = shl i64 %"zext.260", 32
  %"or.154" = or i64 %"shl.128", %"zext.259"
  %".2005" = add i64 %"or.154", 0
  %"for_LDG.135" = inttoptr i64 %".2005" to ptr
  %".2006" = load float, ptr %"for_LDG.135"
  store float %".2006", ptr %"R38_Float32"
  ; LDG.E.SYS R37, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2009" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.261" = zext ptr %".2009" to i64
  %".2010" = load ptr, ptr %"R13_Int32"
  %"zext.262" = zext ptr %".2010" to i64
  %"shl.129" = shl i64 %"zext.262", 32
  %"or.155" = or i64 %"shl.129", %"zext.261"
  %".2011" = add i64 %"or.155", 0
  %"for_LDG.136" = inttoptr i64 %".2011" to ptr
  %".2012" = load float, ptr %"for_LDG.136"
  store float %".2012", ptr %"R37_Float32"
  ; LDG.E.SYS R40, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2015" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.263" = zext ptr %".2015" to i64
  %".2016" = load ptr, ptr %"R11_Float32"
  %"zext.264" = zext ptr %".2016" to i64
  %"shl.130" = shl i64 %"zext.264", 32
  %"or.156" = or i64 %"shl.130", %"zext.263"
  %".2017" = add i64 %"or.156", 4
  %"for_LDG.137" = inttoptr i64 %".2017" to ptr
  %".2018" = load float, ptr %"for_LDG.137"
  store float %".2018", ptr %"R40_Float32"
  ; LDG.E.SYS R39, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2021" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.265" = zext ptr %".2021" to i64
  %".2022" = load ptr, ptr %"R13_Int32"
  %"zext.266" = zext ptr %".2022" to i64
  %"shl.131" = shl i64 %"zext.266", 32
  %"or.157" = or i64 %"shl.131", %"zext.265"
  %".2023" = add i64 %"or.157", 4
  %"for_LDG.138" = inttoptr i64 %".2023" to ptr
  %".2024" = load float, ptr %"for_LDG.138"
  store float %".2024", ptr %"R39_Float32"
  ; LDG.E.SYS R42, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2027" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.267" = zext ptr %".2027" to i64
  %".2028" = load ptr, ptr %"R11_Float32"
  %"zext.268" = zext ptr %".2028" to i64
  %"shl.132" = shl i64 %"zext.268", 32
  %"or.158" = or i64 %"shl.132", %"zext.267"
  %".2029" = add i64 %"or.158", 8
  %"for_LDG.139" = inttoptr i64 %".2029" to ptr
  %".2030" = load float, ptr %"for_LDG.139"
  store float %".2030", ptr %"R42_Float32"
  ; LDG.E.SYS R44, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2033" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.269" = zext ptr %".2033" to i64
  %".2034" = load ptr, ptr %"R11_Float32"
  %"zext.270" = zext ptr %".2034" to i64
  %"shl.133" = shl i64 %"zext.270", 32
  %"or.159" = or i64 %"shl.133", %"zext.269"
  %".2035" = add i64 %"or.159", 12
  %"for_LDG.140" = inttoptr i64 %".2035" to ptr
  %".2036" = load float, ptr %"for_LDG.140"
  store float %".2036", ptr %"R44_Float32"
  ; LDG.E.SYS R41, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2039" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.271" = zext ptr %".2039" to i64
  %".2040" = load ptr, ptr %"R13_Int32"
  %"zext.272" = zext ptr %".2040" to i64
  %"shl.134" = shl i64 %"zext.272", 32
  %"or.160" = or i64 %"shl.134", %"zext.271"
  %".2041" = add i64 %"or.160", 8
  %"for_LDG.141" = inttoptr i64 %".2041" to ptr
  %".2042" = load float, ptr %"for_LDG.141"
  store float %".2042", ptr %"R41_Float32"
  ; LDG.E.SYS R43, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2045" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.273" = zext ptr %".2045" to i64
  %".2046" = load ptr, ptr %"R13_Int32"
  %"zext.274" = zext ptr %".2046" to i64
  %"shl.135" = shl i64 %"zext.274", 32
  %"or.161" = or i64 %"shl.135", %"zext.273"
  %".2047" = add i64 %"or.161", 12
  %"for_LDG.142" = inttoptr i64 %".2047" to ptr
  %".2048" = load float, ptr %"for_LDG.142"
  store float %".2048", ptr %"R43_Float32"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2051" = xor i1 1, 1
  %".2052" = and i1 %".2051", 1
  %".2053" = and i1 %".2052", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".2055" = load i32, ptr %"R23_Int32"
  %"add.130" = add i32 %".2055", -8
  %"add.131" = add i32 %"add.130", 0
  store i32 %"add.131", ptr %"R23_Int32"
  ; IADD3 R22, R22, 0x8, RZ
  %".2058" = load i32, ptr %"R22_Int32"
  %"add.132" = add i32 %".2058", 8
  %"add.133" = add i32 %"add.132", 0
  store i32 %"add.133", ptr %"R22_Int32"
  ; FMUL R15, R18, R9
  %".2061" = load float, ptr %"R18_Float32"
  %".2062" = load float, ptr %"R9_Float32"
  %"fmul.106" = fmul float %".2061", %".2062"
  store float %"fmul.106", ptr %"R15_Float32"
  ; FFMA R15, R15, R19, R8
  %".2065" = load float, ptr %"R15_Float32"
  %".2066" = load float, ptr %"R19_Float32"
  %".2067" = load float, ptr %"R8_Float32"
  %"fmul.107" = fmul float %".2065", %".2066"
  %"fadd.95" = fadd float %"fmul.107", %".2067"
  store float %"fadd.95", ptr %"R15_Float32"
  ; FMUL R24, R24, R9
  %".2070" = load float, ptr %"R24_Float32"
  %".2071" = load float, ptr %"R9_Float32"
  %"fmul.108" = fmul float %".2070", %".2071"
  store float %"fmul.108", ptr %"R24_Float32"
  ; FFMA R15, R24, R21, R15
  %".2074" = load float, ptr %"R24_Float32"
  %".2075" = load float, ptr %"R21_Float32"
  %".2076" = load float, ptr %"R15_Float32"
  %"fmul.109" = fmul float %".2074", %".2075"
  %"fadd.96" = fadd float %"fmul.109", %".2076"
  store float %"fadd.96", ptr %"R15_Float32"
  ; FMUL R34, R34, R9
  %".2079" = load float, ptr %"R34_Float32"
  %".2080" = load float, ptr %"R9_Float32"
  %"fmul.110" = fmul float %".2079", %".2080"
  store float %"fmul.110", ptr %"R34_Float32"
  ; FFMA R15, R34, R25, R15
  %".2083" = load float, ptr %"R34_Float32"
  %".2084" = load float, ptr %"R25_Float32"
  %".2085" = load float, ptr %"R15_Float32"
  %"fmul.111" = fmul float %".2083", %".2084"
  %"fadd.97" = fadd float %"fmul.111", %".2085"
  store float %"fadd.97", ptr %"R15_Float32"
  ; FMUL R36, R36, R9
  %".2088" = load float, ptr %"R36_Float32"
  %".2089" = load float, ptr %"R9_Float32"
  %"fmul.112" = fmul float %".2088", %".2089"
  store float %"fmul.112", ptr %"R36_Float32"
  ; FFMA R15, R36, R35, R15
  %".2092" = load float, ptr %"R36_Float32"
  %".2093" = load float, ptr %"R35_Float32"
  %".2094" = load float, ptr %"R15_Float32"
  %"fmul.113" = fmul float %".2092", %".2093"
  %"fadd.98" = fadd float %"fmul.113", %".2094"
  store float %"fadd.98", ptr %"R15_Float32"
  ; FMUL R38, R38, R9
  %".2097" = load float, ptr %"R38_Float32"
  %".2098" = load float, ptr %"R9_Float32"
  %"fmul.114" = fmul float %".2097", %".2098"
  store float %"fmul.114", ptr %"R38_Float32"
  ; FFMA R15, R38, R37, R15
  %".2101" = load float, ptr %"R38_Float32"
  %".2102" = load float, ptr %"R37_Float32"
  %".2103" = load float, ptr %"R15_Float32"
  %"fmul.115" = fmul float %".2101", %".2102"
  %"fadd.99" = fadd float %"fmul.115", %".2103"
  store float %"fadd.99", ptr %"R15_Float32"
  ; FMUL R40, R40, R9
  %".2106" = load float, ptr %"R40_Float32"
  %".2107" = load float, ptr %"R9_Float32"
  %"fmul.116" = fmul float %".2106", %".2107"
  store float %"fmul.116", ptr %"R40_Float32"
  ; FFMA R15, R40, R39, R15
  %".2110" = load float, ptr %"R40_Float32"
  %".2111" = load float, ptr %"R39_Float32"
  %".2112" = load float, ptr %"R15_Float32"
  %"fmul.117" = fmul float %".2110", %".2111"
  %"fadd.100" = fadd float %"fmul.117", %".2112"
  store float %"fadd.100", ptr %"R15_Float32"
  ; FMUL R42, R42, R9.reuse
  %".2115" = load float, ptr %"R42_Float32"
  %".2116" = load float, ptr %"R9_Float32"
  %"fmul.118" = fmul float %".2115", %".2116"
  store float %"fmul.118", ptr %"R42_Float32"
  ; FMUL R44, R44, R9
  %".2119" = load float, ptr %"R44_Float32"
  %".2120" = load float, ptr %"R9_Float32"
  %"fmul.119" = fmul float %".2119", %".2120"
  store float %"fmul.119", ptr %"R44_Float32"
  ; FFMA R15, R42, R41, R15
  %".2123" = load float, ptr %"R42_Float32"
  %".2124" = load float, ptr %"R41_Float32"
  %".2125" = load float, ptr %"R15_Float32"
  %"fmul.120" = fmul float %".2123", %".2124"
  %"fadd.101" = fadd float %"fmul.120", %".2125"
  store float %"fadd.101", ptr %"R15_Float32"
  ; FFMA R8, R44, R43, R15
  %".2128" = load float, ptr %"R44_Float32"
  %".2129" = load float, ptr %"R43_Float32"
  %".2130" = load float, ptr %"R15_Float32"
  %"fmul.121" = fmul float %".2128", %".2129"
  %"fadd.102" = fadd float %"fmul.121", %".2130"
  store float %"fadd.102", ptr %"R8_Float32"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".2133" = load i32, ptr %"R23_Int32"
  %".2134" = load i1, ptr %"PT_Bool"
  %"cmp.21" = icmp ne i32 %".2133", 0
  %".2135" = or i1 %"cmp.21", %".2134"
  ; @!P0 BRA `(.L_x_11)
  %".2137" = load i1, ptr %"P0_Bool"
  %".2138" = icmp eq i1 %".2137", 1
  br i1 %".2138", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13_Int32"
  ; IADD3 R12, R3, R22, RZ
  %".2143" = load i32, ptr %"R3_Int32"
  %".2144" = load i32, ptr %"R22_Int32"
  %"add.134" = add i32 %".2143", %".2144"
  %"add.135" = add i32 %"add.134", 0
  store i32 %"add.135", ptr %"R12_Int32"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".2147" = load i32, ptr %"R22_Int32"
  %".2148" = load i32, ptr %"R13_Int32"
  %"mul.48" = mul i32 %".2147", %".2148"
  %"add.136" = add i32 %"mul.48", %"Arg_3"
  store i32 %"add.136", ptr %"R10_Int32"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2151" = load i32, ptr %"R12_Int32"
  %".2152" = load i32, ptr %"R13_Int32"
  %"mul.49" = mul i32 %".2151", %".2152"
  %"add.137" = add i32 %"mul.49", %"Arg_4"
  store i32 %"add.137", ptr %"R12_Int32"
  ; LDG.E.SYS R14, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2155" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.275" = zext ptr %".2155" to i64
  %".2156" = load ptr, ptr %"R11_Float32"
  %"zext.276" = zext ptr %".2156" to i64
  %"shl.136" = shl i64 %"zext.276", 32
  %"or.162" = or i64 %"shl.136", %"zext.275"
  %".2157" = add i64 %"or.162", 0
  %"for_LDG.143" = inttoptr i64 %".2157" to ptr
  %".2158" = load float, ptr %"for_LDG.143"
  store float %".2158", ptr %"R14_Float32"
  ; LDG.E.SYS R16, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2161" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.277" = zext ptr %".2161" to i64
  %".2162" = load ptr, ptr %"R13_Int32"
  %"zext.278" = zext ptr %".2162" to i64
  %"shl.137" = shl i64 %"zext.278", 32
  %"or.163" = or i64 %"shl.137", %"zext.277"
  %".2163" = add i64 %"or.163", 0
  %"for_LDG.144" = inttoptr i64 %".2163" to ptr
  %".2164" = load float, ptr %"for_LDG.144"
  store float %".2164", ptr %"R16_Float32"
  ; LDG.E.SYS R18, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2167" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.279" = zext ptr %".2167" to i64
  %".2168" = load ptr, ptr %"R11_Float32"
  %"zext.280" = zext ptr %".2168" to i64
  %"shl.138" = shl i64 %"zext.280", 32
  %"or.164" = or i64 %"shl.138", %"zext.279"
  %".2169" = add i64 %"or.164", 4
  %"for_LDG.145" = inttoptr i64 %".2169" to ptr
  %".2170" = load float, ptr %"for_LDG.145"
  store float %".2170", ptr %"R18_Float32"
  ; LDG.E.SYS R17, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2173" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.281" = zext ptr %".2173" to i64
  %".2174" = load ptr, ptr %"R13_Int32"
  %"zext.282" = zext ptr %".2174" to i64
  %"shl.139" = shl i64 %"zext.282", 32
  %"or.165" = or i64 %"shl.139", %"zext.281"
  %".2175" = add i64 %"or.165", 4
  %"for_LDG.146" = inttoptr i64 %".2175" to ptr
  %".2176" = load float, ptr %"for_LDG.146"
  store float %".2176", ptr %"R17_Float32"
  ; LDG.E.SYS R24, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2179" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.283" = zext ptr %".2179" to i64
  %".2180" = load ptr, ptr %"R11_Float32"
  %"zext.284" = zext ptr %".2180" to i64
  %"shl.140" = shl i64 %"zext.284", 32
  %"or.166" = or i64 %"shl.140", %"zext.283"
  %".2181" = add i64 %"or.166", 8
  %"for_LDG.147" = inttoptr i64 %".2181" to ptr
  %".2182" = load float, ptr %"for_LDG.147"
  store float %".2182", ptr %"R24_Float32"
  ; LDG.E.SYS R19, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2185" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.285" = zext ptr %".2185" to i64
  %".2186" = load ptr, ptr %"R13_Int32"
  %"zext.286" = zext ptr %".2186" to i64
  %"shl.141" = shl i64 %"zext.286", 32
  %"or.167" = or i64 %"shl.141", %"zext.285"
  %".2187" = add i64 %"or.167", 8
  %"for_LDG.148" = inttoptr i64 %".2187" to ptr
  %".2188" = load float, ptr %"for_LDG.148"
  store float %".2188", ptr %"R19_Float32"
  ; LDG.E.SYS R34, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2191" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.287" = zext ptr %".2191" to i64
  %".2192" = load ptr, ptr %"R11_Float32"
  %"zext.288" = zext ptr %".2192" to i64
  %"shl.142" = shl i64 %"zext.288", 32
  %"or.168" = or i64 %"shl.142", %"zext.287"
  %".2193" = add i64 %"or.168", 12
  %"for_LDG.149" = inttoptr i64 %".2193" to ptr
  %".2194" = load float, ptr %"for_LDG.149"
  store float %".2194", ptr %"R34_Float32"
  ; LDG.E.SYS R21, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2197" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.289" = zext ptr %".2197" to i64
  %".2198" = load ptr, ptr %"R13_Int32"
  %"zext.290" = zext ptr %".2198" to i64
  %"shl.143" = shl i64 %"zext.290", 32
  %"or.169" = or i64 %"shl.143", %"zext.289"
  %".2199" = add i64 %"or.169", 12
  %"for_LDG.150" = inttoptr i64 %".2199" to ptr
  %".2200" = load float, ptr %"for_LDG.150"
  store float %".2200", ptr %"R21_Float32"
  ; IADD3 R23, R23, -0x4, RZ
  %".2203" = load i32, ptr %"R23_Int32"
  %"add.138" = add i32 %".2203", -4
  %"add.139" = add i32 %"add.138", 0
  store i32 %"add.139", ptr %"R23_Int32"
  ; IADD3 R22, R22, 0x4, RZ
  %".2206" = load i32, ptr %"R22_Int32"
  %"add.140" = add i32 %".2206", 4
  %"add.141" = add i32 %"add.140", 0
  store i32 %"add.141", ptr %"R22_Int32"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".2209" = load i32, ptr %"R23_Int32"
  %".2210" = load i1, ptr %"PT_Bool"
  %"cmp.22" = icmp ne i32 %".2209", 0
  %".2211" = and i1 %"cmp.22", %".2210"
  ; FMUL R15, R14, R9
  %".2213" = load float, ptr %"R14_Float32"
  %".2214" = load float, ptr %"R9_Float32"
  %"fmul.122" = fmul float %".2213", %".2214"
  store float %"fmul.122", ptr %"R15_Float32"
  ; FFMA R15, R15, R16, R8
  %".2217" = load float, ptr %"R15_Float32"
  %".2218" = load float, ptr %"R16_Float32"
  %".2219" = load float, ptr %"R8_Float32"
  %"fmul.123" = fmul float %".2217", %".2218"
  %"fadd.103" = fadd float %"fmul.123", %".2219"
  store float %"fadd.103", ptr %"R15_Float32"
  ; FMUL R18, R18, R9
  %".2222" = load float, ptr %"R18_Float32"
  %".2223" = load float, ptr %"R9_Float32"
  %"fmul.124" = fmul float %".2222", %".2223"
  store float %"fmul.124", ptr %"R18_Float32"
  ; FFMA R15, R18, R17, R15
  %".2226" = load float, ptr %"R18_Float32"
  %".2227" = load float, ptr %"R17_Float32"
  %".2228" = load float, ptr %"R15_Float32"
  %"fmul.125" = fmul float %".2226", %".2227"
  %"fadd.104" = fadd float %"fmul.125", %".2228"
  store float %"fadd.104", ptr %"R15_Float32"
  ; FMUL R24, R24, R9
  %".2231" = load float, ptr %"R24_Float32"
  %".2232" = load float, ptr %"R9_Float32"
  %"fmul.126" = fmul float %".2231", %".2232"
  store float %"fmul.126", ptr %"R24_Float32"
  ; FFMA R15, R24, R19, R15
  %".2235" = load float, ptr %"R24_Float32"
  %".2236" = load float, ptr %"R19_Float32"
  %".2237" = load float, ptr %"R15_Float32"
  %"fmul.127" = fmul float %".2235", %".2236"
  %"fadd.105" = fadd float %"fmul.127", %".2237"
  store float %"fadd.105", ptr %"R15_Float32"
  ; FMUL R34, R34, R9
  %".2240" = load float, ptr %"R34_Float32"
  %".2241" = load float, ptr %"R9_Float32"
  %"fmul.128" = fmul float %".2240", %".2241"
  store float %"fmul.128", ptr %"R34_Float32"
  ; FFMA R8, R34, R21, R15
  %".2244" = load float, ptr %"R34_Float32"
  %".2245" = load float, ptr %"R21_Float32"
  %".2246" = load float, ptr %"R15_Float32"
  %"fmul.129" = fmul float %".2244", %".2245"
  %"fadd.106" = fadd float %"fmul.129", %".2246"
  store float %"fadd.106", ptr %"R8_Float32"
  ; @P0 BRA `(.L_x_12)
  %".2249" = load i1, ptr %"P0_Bool"
  %".2250" = icmp ne i1 %".2249", 1
  br i1 %".2250", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".2253" = load i32, ptr %"R4_Int32"
  %".2254" = load i1, ptr %"PT_Bool"
  %"cmp.23" = icmp ne i32 %".2253", 0
  %".2255" = and i1 %"cmp.23", %".2254"
  ; @!P0 BRA `(.L_x_10)
  %".2257" = load i1, ptr %"P0_Bool"
  %".2258" = icmp eq i1 %".2257", 1
  br i1 %".2258", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11_Int32"
  ; IADD3 R10, R3, R22, RZ
  %".2263" = load i32, ptr %"R3_Int32"
  %".2264" = load i32, ptr %"R22_Int32"
  %"add.142" = add i32 %".2263", %".2264"
  %"add.143" = add i32 %"add.142", 0
  store i32 %"add.143", ptr %"R10_Int32"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".2267" = load i32, ptr %"R22_Int32"
  %".2268" = load i32, ptr %"R11_Int32"
  %"mul.50" = mul i32 %".2267", %".2268"
  %"add.144" = add i32 %"mul.50", %"Arg_3"
  store i32 %"add.144", ptr %"R22_Int32"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".2271" = load i32, ptr %"R10_Int32"
  %".2272" = load i32, ptr %"R11_Int32"
  %"mul.51" = mul i32 %".2271", %".2272"
  %"add.145" = add i32 %"mul.51", %"Arg_4"
  store i32 %"add.145", ptr %"R10_Int32"
  ; LDG.E.SYS R12, [R22]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".2275" = load ptr, ptr %"R22_Float32_PTR"
  %"zext.291" = zext ptr %".2275" to i64
  %".2276" = load ptr, ptr %"R23_Int32"
  %"zext.292" = zext ptr %".2276" to i64
  %"shl.144" = shl i64 %"zext.292", 32
  %"or.170" = or i64 %"shl.144", %"zext.291"
  %".2277" = add i64 %"or.170", 0
  %"for_LDG.151" = inttoptr i64 %".2277" to ptr
  %".2278" = load float, ptr %"for_LDG.151"
  store float %".2278", ptr %"R12_Float32"
  ; LDG.E.SYS R14, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2281" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.293" = zext ptr %".2281" to i64
  %".2282" = load ptr, ptr %"R11_Int32"
  %"zext.294" = zext ptr %".2282" to i64
  %"shl.145" = shl i64 %"zext.294", 32
  %"or.171" = or i64 %"shl.145", %"zext.293"
  %".2283" = add i64 %"or.171", 0
  %"for_LDG.152" = inttoptr i64 %".2283" to ptr
  %".2284" = load float, ptr %"for_LDG.152"
  store float %".2284", ptr %"R14_Float32"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".2287" = load i32, ptr %"R4_Int32"
  %".2288" = load i1, ptr %"PT_Bool"
  %"cmp.24" = icmp ne i32 %".2287", 1
  %".2289" = and i1 %"cmp.24", %".2288"
  ; FMUL R13, R12, R9
  %".2291" = load float, ptr %"R12_Float32"
  %".2292" = load float, ptr %"R9_Float32"
  %"fmul.130" = fmul float %".2291", %".2292"
  store float %"fmul.130", ptr %"R13_Float32"
  ; FFMA R8, R13, R14, R8
  %".2295" = load float, ptr %"R13_Float32"
  %".2296" = load float, ptr %"R14_Float32"
  %".2297" = load float, ptr %"R8_Float32"
  %"fmul.131" = fmul float %".2295", %".2296"
  %"fadd.107" = fadd float %"fmul.131", %".2297"
  store float %"fadd.107", ptr %"R8_Float32"
  ; @!P0 BRA `(.L_x_10)
  %".2300" = load i1, ptr %"P0_Bool"
  %".2301" = icmp eq i1 %".2300", 1
  br i1 %".2301", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".2304" = load i32, ptr %"R4_Int32"
  %".2305" = load i1, ptr %"PT_Bool"
  %"cmp.25" = icmp ne i32 %".2304", 2
  %".2306" = and i1 %"cmp.25", %".2305"
  ; LDG.E.SYS R12, [R22+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".2308" = load ptr, ptr %"R22_Float32_PTR"
  %"zext.295" = zext ptr %".2308" to i64
  %".2309" = load ptr, ptr %"R23_Int32"
  %"zext.296" = zext ptr %".2309" to i64
  %"shl.146" = shl i64 %"zext.296", 32
  %"or.172" = or i64 %"shl.146", %"zext.295"
  %".2310" = add i64 %"or.172", 4
  %"for_LDG.153" = inttoptr i64 %".2310" to ptr
  %".2311" = load float, ptr %"for_LDG.153"
  store float %".2311", ptr %"R12_Float32"
  ; LDG.E.SYS R14, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2314" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.297" = zext ptr %".2314" to i64
  %".2315" = load ptr, ptr %"R11_Int32"
  %"zext.298" = zext ptr %".2315" to i64
  %"shl.147" = shl i64 %"zext.298", 32
  %"or.173" = or i64 %"shl.147", %"zext.297"
  %".2316" = add i64 %"or.173", 4
  %"for_LDG.154" = inttoptr i64 %".2316" to ptr
  %".2317" = load float, ptr %"for_LDG.154"
  store float %".2317", ptr %"R14_Float32"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".2320" = load i1, ptr %"P0_Bool"
  %".2321" = icmp ne i1 %".2320", 1
  br i1 %".2321", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".2324" = load ptr, ptr %"R22_Float32_PTR"
  %"zext.299" = zext ptr %".2324" to i64
  %".2325" = load ptr, ptr %"R23_Int32"
  %"zext.300" = zext ptr %".2325" to i64
  %"shl.148" = shl i64 %"zext.300", 32
  %"or.174" = or i64 %"shl.148", %"zext.299"
  %".2326" = add i64 %"or.174", 8
  %"for_LDG.155" = inttoptr i64 %".2326" to ptr
  %".2327" = load float, ptr %"for_LDG.155"
  store float %".2327", ptr %"R16_Float32"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".2332" = load i1, ptr %"P0_Bool"
  %".2333" = icmp ne i1 %".2332", 1
  br i1 %".2333", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2336" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.301" = zext ptr %".2336" to i64
  %".2337" = load ptr, ptr %"R11_Int32"
  %"zext.302" = zext ptr %".2337" to i64
  %"shl.149" = shl i64 %"zext.302", 32
  %"or.175" = or i64 %"shl.149", %"zext.301"
  %".2338" = add i64 %"or.175", 8
  %"for_LDG.156" = inttoptr i64 %".2338" to ptr
  %".2339" = load float, ptr %"for_LDG.156"
  store float %".2339", ptr %"R15_Float32"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %".2344" = load float, ptr %"R12_Float32"
  %".2345" = load float, ptr %"R9_Float32"
  %"fmul.132" = fmul float %".2344", %".2345"
  store float %"fmul.132", ptr %"R13_Float32"
  ; FFMA R8, R13, R14, R8
  %".2348" = load float, ptr %"R13_Float32"
  %".2349" = load float, ptr %"R14_Float32"
  %".2350" = load float, ptr %"R8_Float32"
  %"fmul.133" = fmul float %".2348", %".2349"
  %"fadd.108" = fadd float %"fmul.133", %".2350"
  store float %"fadd.108", ptr %"R8_Float32"
  ; @P0 FMUL R9, R16, R9
  %".2353" = load i1, ptr %"P0_Bool"
  %".2354" = icmp ne i1 %".2353", 1
  br i1 %".2354", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %".2357" = load float, ptr %"R16_Float32"
  %".2358" = load float, ptr %"R9_Float32"
  %"fmul.134" = fmul float %".2357", %".2358"
  store float %"fmul.134", ptr %"R9_Float32"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".2363" = load i1, ptr %"P0_Bool"
  %".2364" = icmp ne i1 %".2363", 1
  br i1 %".2364", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %".2367" = load float, ptr %"R9_Float32"
  %".2368" = load float, ptr %"R15_Float32"
  %".2369" = load float, ptr %"R8_Float32"
  %"fmul.135" = fmul float %".2367", %".2368"
  %"fadd.109" = fadd float %"fmul.135", %".2369"
  store float %"fadd.109", ptr %"R8_Float32"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R30_Float32_PTR", ptr %"R30_Int32", i32 4, i1 0)
  %".2374" = load ptr, ptr %"R30_Float32_PTR"
  %"zext.303" = zext ptr %".2374" to i64
  %"or.176" = or i64 0, %"zext.303"
  %"or.177" = or i64 %"or.176", %"zext.303"
  %".2375" = add i64 %"or.177", 0
  %"for_LDG.157" = inttoptr i64 %".2375" to ptr
  %".2376" = load float, ptr %"for_LDG.157"
  store float %".2376", ptr %"R9_Float32"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %".2381" = load float, ptr %"R9_Float32"
  %".2382" = load float, ptr %"R8_Float32"
  %"fadd.110" = fadd float %".2381", %".2382"
  store float %"fadd.110", ptr %"R12_Float32"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %".2385" = load float, ptr %"R12_Float32"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".2385")
  %".2386" = load i1, ptr %"PT_Bool"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".2387" = and i1 %"fcmp_unordered", %".2386"
  ; @!P0 BRA `(.L_x_17)
  %".2389" = load i1, ptr %"P0_Bool"
  %".2390" = icmp eq i1 %".2389", 1
  br i1 %".2390", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %".2393" = load float, ptr %"R12_Float32"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".2393")
  %"fmul.136" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  store float %"fmul.136", ptr %"R8_Float32"
  ; MOV R9, 0x3f800000
  store float 0x41cfc00000000000, ptr %"R9_Float32"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %".2398" = load float, ptr %"R12_Float32"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".2398")
  %".2399" = load i1, ptr %"PT_Bool"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".2400" = and i1 %"fcmp_unordered.1", %".2399"
  ; MUFU.EX2 R8, R8
  %".2402" = load float, ptr %"R8_Float32"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".2402")
  store float %"llvm_exp2_f32_result.2", ptr %"R8_Float32"
  ; FADD R10, R8, 1
  %".2405" = load float, ptr %"R8_Float32"
  %"fadd.111" = fadd float %".2405", 0x3ff0000000000000
  store float %"fadd.111", ptr %"R10_Float32"
  ; MUFU.RCP R10, R10
  %".2408" = load float, ptr %"R10_Float32"
  %".2409" = fdiv float 0x3ff0000000000000, %".2408"
  store float %".2409", ptr %"R10_Float32"
  ; FFMA R9, R10, -2, R9
  %".2412" = load float, ptr %"R10_Float32"
  %".2413" = load float, ptr %"R9_Float32"
  %"fmul.137" = fmul float %".2412", 0xc000000000000000
  %"fadd.112" = fadd float %"fmul.137", %".2413"
  store float %"fadd.112", ptr %"R9_Float32"
  ; FSEL R9, R9, 1, !P0
  %".2416" = load float, ptr %"R9_Float32"
  %".2417" = load i1, ptr %"P0_Bool"
  %".2418" = icmp eq i1 %".2417", 1
  %"fsel" = select  i1 %".2418", float %".2416", float 0x3ff0000000000000
  store float %"fsel", ptr %"R9_Float32"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".2421" = load float, ptr %"R9_Float32"
  %".2422" = load float, ptr %"R12_Float32"
  %".2423" = or float %".2421", 0x41e0000000000000
  %".2424" = or float %".2421", %".2422"
  %".2425" = and float %".2423", %".2424"
  store float %".2425", ptr %"R9_Float32"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  store float 0x41ce407840000000, ptr %"R9_Float32"
  ; FMUL R8, R12, R12
  %".2432" = load float, ptr %"R12_Float32"
  %".2433" = load float, ptr %"R12_Float32"
  %"fmul.138" = fmul float %".2432", %".2433"
  store float %"fmul.138", ptr %"R8_Float32"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".2436" = load float, ptr %"R8_Float32"
  %".2437" = load float, ptr %"R9_Float32"
  %"fmul.139" = fmul float %".2436", %".2437"
  %"fadd.113" = fadd float %"fmul.139", 0xbfaac795c0000000
  store float %"fadd.113", ptr %"R9_Float32"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".2440" = load float, ptr %"R8_Float32"
  %".2441" = load float, ptr %"R9_Float32"
  %"fmul.140" = fmul float %".2440", %".2441"
  %"fadd.114" = fadd float %"fmul.140", 0x3fc10b2820000000
  store float %"fadd.114", ptr %"R9_Float32"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".2444" = load float, ptr %"R8_Float32"
  %".2445" = load float, ptr %"R9_Float32"
  %"fmul.141" = fmul float %".2444", %".2445"
  %"fadd.115" = fadd float %"fmul.141", 0xbfd5553da0000000
  store float %"fadd.115", ptr %"R9_Float32"
  ; FFMA R9, R8, R9, RZ
  %".2448" = load float, ptr %"R8_Float32"
  %".2449" = load float, ptr %"R9_Float32"
  %"fmul.142" = fmul float %".2448", %".2449"
  %"fadd.116" = fadd float %"fmul.142",              0x0
  store float %"fadd.116", ptr %"R9_Float32"
  ; FFMA R9, R12, R9, R12
  %".2452" = load float, ptr %"R12_Float32"
  %".2453" = load float, ptr %"R9_Float32"
  %".2454" = load float, ptr %"R12_Float32"
  %"fmul.143" = fmul float %".2452", %".2453"
  %"fadd.117" = fadd float %"fmul.143", %".2454"
  store float %"fadd.117", ptr %"R9_Float32"
.L_x_18:
  ; BSYNC B0
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Int32", ptr %"R20_Float32", i32 4, i1 0)
  %".2458" = load i32, ptr %"R20_Int32"
  %"add.146" = add i32 %".2458", 25165824
  %"add.147" = add i32 %"add.146", 0
  store i32 %"add.147", ptr %"R8_Int32"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".2463" = load i32, ptr %"R8_Int32"
  %".2464" = and i32 %".2463", 2139095040
  store i32 %".2464", ptr %"R8_Int32"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".2467" = load i32, ptr %"R8_Int32"
  %".2468" = load i1, ptr %"PT_Bool"
  %"cmp.26" = icmp sgt i32 %".2467", 33554431
  %".2469" = and i1 %"cmp.26", %".2468"
  ; @P0 BRA `(.L_x_20)
  %".2471" = load i1, ptr %"P0_Bool"
  %".2472" = icmp ne i1 %".2471", 1
  br i1 %".2472", label %".L_x_20", label %".L_x_16_split_0x2170"
.L_x_16_split_0x2170:
  ; MOV R24, R20
  %".2475" = load float, ptr %"R20_Float32"
  store float %".2475", ptr %"R24_Float32"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_NOTYPE", ptr %"R10_Int32", i32 4, i1 0)
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.1" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R8, R22
  %".2481" = load i32, ptr %"R22_Int32"
  store i32 %".2481", ptr %"R8_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32", ptr %"R8_Int32", i32 4, i1 0)
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".2486" = load float, ptr %"R20_Float32"
  %".2487" = fdiv float 0x3ff0000000000000, %".2486"
  store float %".2487", ptr %"R11_Float32"
  ; FFMA R8, R20, R11, -1
  %".2490" = load float, ptr %"R20_Float32"
  %".2491" = load float, ptr %"R11_Float32"
  %"fmul.144" = fmul float %".2490", %".2491"
  %"fadd.118" = fadd float %"fmul.144", 0xbff0000000000000
  store float %"fadd.118", ptr %"R8_Float32"
  ; FADD.FTZ R8, -R8, -RZ
  %".2494" = load float, ptr %"R8_Float32"
  %".2495" = sub float              0x0, %".2494"
  %"fadd.119" = fadd float %".2495",              0x0
  store float %"fadd.119", ptr %"R8_Float32"
  ; FFMA R8, R11, R8, R11
  %".2498" = load float, ptr %"R11_Float32"
  %".2499" = load float, ptr %"R8_Float32"
  %".2500" = load float, ptr %"R11_Float32"
  %"fmul.145" = fmul float %".2498", %".2499"
  %"fadd.120" = fadd float %"fmul.145", %".2500"
  store float %"fadd.120", ptr %"R8_Float32"
.L_x_21:
  ; BSYNC B0
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R28_Float32_PTR", ptr %"R28_Int32", i32 4, i1 0)
  %".2504" = load ptr, ptr %"R28_Float32_PTR"
  %"zext.304" = zext ptr %".2504" to i64
  %"or.178" = or i64 0, %"zext.304"
  %"or.179" = or i64 %"or.178", %"zext.304"
  %".2505" = add i64 %"or.179", 0
  %"for_LDG.158" = inttoptr i64 %".2505" to ptr
  %".2506" = load float, ptr %"for_LDG.158"
  store float %".2506", ptr %"R11_Float32"
  ; FADD R10, -R8, 1
  %".2509" = load float, ptr %"R8_Float32"
  %".2510" = sub float              0x0, %".2509"
  %"fadd.121" = fadd float %".2510", 0x3ff0000000000000
  store float %"fadd.121", ptr %"R10_Float32"
  ; FMUL R11, R11, R8
  %".2513" = load float, ptr %"R11_Float32"
  %".2514" = load float, ptr %"R8_Float32"
  %"fmul.146" = fmul float %".2513", %".2514"
  store float %"fmul.146", ptr %"R11_Float32"
  ; FFMA R9, R10, R9, R11
  %".2517" = load float, ptr %"R10_Float32"
  %".2518" = load float, ptr %"R9_Float32"
  %".2519" = load float, ptr %"R11_Float32"
  %"fmul.147" = fmul float %".2517", %".2518"
  %"fadd.122" = fadd float %"fmul.147", %".2519"
  store float %"fadd.122", ptr %"R9_Float32"
  ; STG.E.SYS [R28], R9
  %".2522" = load float, ptr %"R9_Float32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R28_Float32_PTR", ptr %"R28_Int32", i32 4, i1 0)
  %".2523" = load ptr, ptr %"R28_Float32_PTR"
  %"zext.305" = zext ptr %".2523" to i64
  %"or.180" = or i64 0, %"zext.305"
  %"or.181" = or i64 %"or.180", %"zext.305"
  %".2524" = add i64 %"or.181", 0
  %"for_STG" = inttoptr i64 %".2524" to ptr
  store float %".2522", ptr %"for_STG"
  ; @!P3 BRA `(.L_x_22)
  %".2527" = load i1, ptr %"P3_Bool"
  %".2528" = icmp eq i1 %".2527", 1
  br i1 %".2528", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18_Int32"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R15_NOTYPE", ptr %"R15_Float32", i32 4, i1 0)
  %".2535" = load i32, ptr %"R15_NOTYPE"
  %".2536" = and i32 %".2535", 3
  store i32 %".2536", ptr %"R15_Int32"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".2539" = load i32, ptr %"R5_Int32"
  %".2540" = and i32 %".2539", 3
  store i32 %".2540", ptr %"R48_Int32"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".2543" = load i32, ptr %"R18_Int32"
  %".2544" = sub i32 0, %".2543"
  %"add.148" = add i32 %".2544", %"Arg_6"
  %"add.149" = add i32 %"add.148", 0
  store i32 %"add.149", ptr %"R49_Int32"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".2547" = icmp ult i32 31, 32
  %"SHF_min.2" = select  i1 %".2547", i32 31, i32 32
  %".2548" = load i32, ptr %"R5_Int32"
  %"zext.306" = zext i32 %".2548" to i64
  %"zext.307" = zext i32 0 to i64
  %"zext.308" = zext i32 31 to i64
  %"shl.150" = shl i64 %"zext.306", 32
  %"or.182" = or i64 %"shl.150", %"zext.307"
  %"ashr" = ashr i64 %"or.182", %"zext.308"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.2" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.2", ptr %"R16_Int32"
  ; MOV R17, RZ
  %".2551" = load i32, ptr %"RZ_Int32"
  store i32 %".2551", ptr %"R17_Int32"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".2554" = load i32, ptr %"R18_Int32"
  %".2555" = sub i32 0, %".2554"
  %"add.150" = add i32 %".2555", %"Arg_7"
  %"add.151" = add i32 %"add.150", 0
  store i32 %"add.151", ptr %"R18_Int32"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".2558" = load i32, ptr %"R15_Int32"
  %".2559" = sub i32 0, %".2558"
  %"add.152" = add i32 %".2559", %"Arg_6"
  %"add.153" = add i32 %"add.152", 0
  store i32 %"add.153", ptr %"R19_Int32"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".2562" = load i32, ptr %"R48_Int32"
  %".2563" = sub i32 0, %".2562"
  %"add.154" = add i32 %".2563", %"Arg_7"
  %"add.155" = add i32 %"add.154", 0
  store i32 %"add.155", ptr %"R20_Int32"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".2566" = load i32, ptr %"R49_Int32"
  %".2567" = load i1, ptr %"PT_Bool"
  %"cmp.27" = icmp sge i32 %".2566", 3
  %".2568" = and i1 %"cmp.27", %".2567"
  ; MOV R13, R17
  %".2570" = load i32, ptr %"R17_Int32"
  store i32 %".2570", ptr %"R13_Int32"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R4_Int32"
  ; IADD3 R17, R17, 0x1, RZ
  %".2575" = load i32, ptr %"R17_Int32"
  %"add.156" = add i32 %".2575", 1
  %"add.157" = add i32 %"add.156", 0
  store i32 %"add.157", ptr %"R17_Int32"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".2578" = load i32, ptr %"R4_Int32"
  %".2579" = load i1, ptr %"PT_Bool"
  %"cmp.28" = icmp sge i32 %".2578", 1
  %".2580" = and i1 %"cmp.28", %".2579"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".2582" = load i32, ptr %"R15_Int32"
  %".2583" = load i1, ptr %"PT_Bool"
  %"cmp.29" = icmp ne i32 %".2582", 0
  %".2584" = and i1 %"cmp.29", %".2583"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".2586" = load i32, ptr %"R17_Int32"
  %".2587" = load i1, ptr %"PT_Bool"
  %"cmp.30" = icmp sge i32 %".2586", %"Arg_8"
  %".2588" = and i1 %"cmp.30", %".2587"
  ; MOV R21, RZ
  %".2590" = load float, ptr %"RZ_Float32"
  store float %".2590", ptr %"R21_Float32"
  ; MOV R22, RZ
  %".2593" = load i32, ptr %"RZ_Int32"
  store i32 %".2593", ptr %"R22_Int32"
  ; MOV R56, RZ
  %".2596" = load float, ptr %"RZ_Float32"
  store float %".2596", ptr %"R56_Float32"
  ; MOV R44, RZ
  %".2599" = load float, ptr %"RZ_Float32"
  store float %".2599", ptr %"R44_Float32"
  ; @!P0 BRA `(.L_x_23)
  %".2602" = load i1, ptr %"P0_Bool"
  %".2603" = icmp eq i1 %".2602", 1
  br i1 %".2603", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R25_Int32"
  ; MOV R21, RZ
  %".2608" = load float, ptr %"RZ_Float32"
  store float %".2608", ptr %"R21_Float32"
  ; MOV R22, RZ
  %".2611" = load i32, ptr %"RZ_Int32"
  store i32 %".2611", ptr %"R22_Int32"
  ; MOV R12, R19
  %".2614" = load i32, ptr %"R19_Int32"
  store i32 %".2614", ptr %"R12_Int32"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".2617" = icmp ult i32 2, 64
  %"SHF_min.3" = select  i1 %".2617", i32 2, i32 64
  %".2618" = load i32, ptr %"R16_Int32"
  %".2619" = load i32, ptr %"R25_Int32"
  %"zext.309" = zext i32 %".2618" to i64
  %"zext.310" = zext i32 %".2619" to i64
  %"zext.311" = zext i32 2 to i64
  %"shl.151" = shl i64 %"zext.309", 32
  %"or.183" = or i64 %"shl.151", %"zext.310"
  %"shl.152" = shl i64 %"or.183", %"zext.311"
  %"lshr" = lshr i64 %"shl.152", 32
  %"trunc32.3" = trunc i64 %"lshr" to i32
  store i32 %"trunc32.3", ptr %"R23_Int32"
.L_x_24:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7_Int32"
  ; IMAD R6, R14, c[0x0][0x180], R22.reuse
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Int32", ptr %"R14_Float32", i32 4, i1 0)
  %".2624" = load i32, ptr %"R14_Int32"
  %".2625" = load i32, ptr %"R22_Int32"
  %"mul.52" = mul i32 %".2624", %"Arg_6"
  %"add.158" = add i32 %"mul.52", %".2625"
  store i32 %"add.158", ptr %"R6_Int32"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9_Int32"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".2630" = load i32, ptr %"R13_Int32"
  %".2631" = load i32, ptr %"R22_Int32"
  %"mul.53" = mul i32 %".2630", %"Arg_6"
  %"add.159" = add i32 %"mul.53", %".2631"
  store i32 %"add.159", ptr %"R10_Int32"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".2634" = load i32, ptr %"R6_Int32"
  %".2635" = load i32, ptr %"R7_Int32"
  %"mul.54" = mul i32 %".2634", %".2635"
  %"add.160" = add i32 %"mul.54", %"Arg_4"
  store i32 %"add.160", ptr %"R4_Int32"
  ; LEA R6, R9, R6, 0x1
  %".2638" = load i32, ptr %"R9_Int32"
  %".2639" = load i32, ptr %"R6_Int32"
  %"shl.153" = shl i32 %".2638", 1
  %"add.161" = add i32 %"shl.153", %".2639"
  store i32 %"add.161", ptr %"R6_Int32"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".2642" = load i32, ptr %"R10_Int32"
  %".2643" = load i32, ptr %"R7_Int32"
  %"mul.55" = mul i32 %".2642", %".2643"
  %"add.162" = add i32 %"mul.55", %"Arg_2"
  store i32 %"add.162", ptr %"R10_Int32"
  ; LEA R8, P0, R25, R4, 0x2
  %".2646" = load i1, ptr %"P0_Bool"
  %".2647" = sub i1 0, %".2646"
  %".2648" = load i32, ptr %"R25_Int32"
  %".2649" = load i32, ptr %"R4_Int32"
  %".2650" = sext i1 %".2647" to i32
  %"shl.154" = shl i32 %".2650", %".2649"
  %"add.163" = add i32 %"shl.154", %".2648"
  store i32 %"add.163", ptr %"R8_Int32"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".2653" = load i32, ptr %"R6_Int32"
  %".2654" = load i32, ptr %"R7_Int32"
  %"mul.56" = mul i32 %".2653", %".2654"
  %"add.164" = add i32 %"mul.56", %"Arg_4"
  store i32 %"add.164", ptr %"R6_Int32"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".2657" = load i32, ptr %"R5_Int32"
  %".2658" = load i32, ptr %"R23_Int32"
  %".2659" = load i1, ptr %"P0_Bool"
  %".2660" = sub i1 0, %".2659"
  %".2661" = zext i1 %".2660" to i32
  %"add.165" = add i32 %".2657", %".2658"
  %"add.166" = add i32 %"add.165", 0
  %"add.167" = add i32 %"add.166", %".2661"
  store i32 %"add.167", ptr %"R9_Int32"
  ; LDG.E.SYS R35, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2664" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.312" = zext ptr %".2664" to i64
  %".2665" = load ptr, ptr %"R5_Int32"
  %"zext.313" = zext ptr %".2665" to i64
  %"shl.155" = shl i64 %"zext.313", 32
  %"or.184" = or i64 %"shl.155", %"zext.312"
  %".2666" = add i64 %"or.184", 0
  %"for_LDG.159" = inttoptr i64 %".2666" to ptr
  %".2667" = load float, ptr %"for_LDG.159"
  store float %".2667", ptr %"R35_Float32"
  ; LDG.E.SYS R24, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2670" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.314" = zext ptr %".2670" to i64
  %".2671" = load ptr, ptr %"R11_Float32"
  %"zext.315" = zext ptr %".2671" to i64
  %"shl.156" = shl i64 %"zext.315", 32
  %"or.185" = or i64 %"shl.156", %"zext.314"
  %".2672" = add i64 %"or.185", 0
  %"for_LDG.160" = inttoptr i64 %".2672" to ptr
  %".2673" = load float, ptr %"for_LDG.160"
  store float %".2673", ptr %"R24_Float32"
  ; LDG.E.SYS R37, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2676" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.316" = zext ptr %".2676" to i64
  %".2677" = load ptr, ptr %"R9_Int32"
  %"zext.317" = zext ptr %".2677" to i64
  %"shl.157" = shl i64 %"zext.317", 32
  %"or.186" = or i64 %"shl.157", %"zext.316"
  %".2678" = add i64 %"or.186", 0
  %"for_LDG.161" = inttoptr i64 %".2678" to ptr
  %".2679" = load float, ptr %"for_LDG.161"
  store float %".2679", ptr %"R37_Float32"
  ; LDG.E.SYS R34, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2682" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.318" = zext ptr %".2682" to i64
  %".2683" = load ptr, ptr %"R7_Int32"
  %"zext.319" = zext ptr %".2683" to i64
  %"shl.158" = shl i64 %"zext.319", 32
  %"or.187" = or i64 %"shl.158", %"zext.318"
  %".2684" = add i64 %"or.187", 0
  %"for_LDG.162" = inttoptr i64 %".2684" to ptr
  %".2685" = load float, ptr %"for_LDG.162"
  store float %".2685", ptr %"R34_Float32"
  ; LDG.E.SYS R36, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2688" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.320" = zext ptr %".2688" to i64
  %".2689" = load ptr, ptr %"R5_Int32"
  %"zext.321" = zext ptr %".2689" to i64
  %"shl.159" = shl i64 %"zext.321", 32
  %"or.188" = or i64 %"shl.159", %"zext.320"
  %".2690" = add i64 %"or.188", 4
  %"for_LDG.163" = inttoptr i64 %".2690" to ptr
  %".2691" = load float, ptr %"for_LDG.163"
  store float %".2691", ptr %"R36_Float32"
  ; LDG.E.SYS R38, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2694" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.322" = zext ptr %".2694" to i64
  %".2695" = load ptr, ptr %"R11_Float32"
  %"zext.323" = zext ptr %".2695" to i64
  %"shl.160" = shl i64 %"zext.323", 32
  %"or.189" = or i64 %"shl.160", %"zext.322"
  %".2696" = add i64 %"or.189", 4
  %"for_LDG.164" = inttoptr i64 %".2696" to ptr
  %".2697" = load float, ptr %"for_LDG.164"
  store float %".2697", ptr %"R38_Float32"
  ; LDG.E.SYS R39, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2700" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.324" = zext ptr %".2700" to i64
  %".2701" = load ptr, ptr %"R9_Int32"
  %"zext.325" = zext ptr %".2701" to i64
  %"shl.161" = shl i64 %"zext.325", 32
  %"or.190" = or i64 %"shl.161", %"zext.324"
  %".2702" = add i64 %"or.190", 4
  %"for_LDG.165" = inttoptr i64 %".2702" to ptr
  %".2703" = load float, ptr %"for_LDG.165"
  store float %".2703", ptr %"R39_Float32"
  ; LDG.E.SYS R41, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2706" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.326" = zext ptr %".2706" to i64
  %".2707" = load ptr, ptr %"R7_Int32"
  %"zext.327" = zext ptr %".2707" to i64
  %"shl.162" = shl i64 %"zext.327", 32
  %"or.191" = or i64 %"shl.162", %"zext.326"
  %".2708" = add i64 %"or.191", 4
  %"for_LDG.166" = inttoptr i64 %".2708" to ptr
  %".2709" = load float, ptr %"for_LDG.166"
  store float %".2709", ptr %"R41_Float32"
  ; LDG.E.SYS R42, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2712" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.328" = zext ptr %".2712" to i64
  %".2713" = load ptr, ptr %"R11_Float32"
  %"zext.329" = zext ptr %".2713" to i64
  %"shl.163" = shl i64 %"zext.329", 32
  %"or.192" = or i64 %"shl.163", %"zext.328"
  %".2714" = add i64 %"or.192", 8
  %"for_LDG.167" = inttoptr i64 %".2714" to ptr
  %".2715" = load float, ptr %"for_LDG.167"
  store float %".2715", ptr %"R42_Float32"
  ; LDG.E.SYS R40, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2718" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.330" = zext ptr %".2718" to i64
  %".2719" = load ptr, ptr %"R5_Int32"
  %"zext.331" = zext ptr %".2719" to i64
  %"shl.164" = shl i64 %"zext.331", 32
  %"or.193" = or i64 %"shl.164", %"zext.330"
  %".2720" = add i64 %"or.193", 8
  %"for_LDG.168" = inttoptr i64 %".2720" to ptr
  %".2721" = load float, ptr %"for_LDG.168"
  store float %".2721", ptr %"R40_Float32"
  ; LDG.E.SYS R43, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2724" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.332" = zext ptr %".2724" to i64
  %".2725" = load ptr, ptr %"R9_Int32"
  %"zext.333" = zext ptr %".2725" to i64
  %"shl.165" = shl i64 %"zext.333", 32
  %"or.194" = or i64 %"shl.165", %"zext.332"
  %".2726" = add i64 %"or.194", 8
  %"for_LDG.169" = inttoptr i64 %".2726" to ptr
  %".2727" = load float, ptr %"for_LDG.169"
  store float %".2727", ptr %"R43_Float32"
  ; LDG.E.SYS R45, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2730" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.334" = zext ptr %".2730" to i64
  %".2731" = load ptr, ptr %"R7_Int32"
  %"zext.335" = zext ptr %".2731" to i64
  %"shl.166" = shl i64 %"zext.335", 32
  %"or.195" = or i64 %"shl.166", %"zext.334"
  %".2732" = add i64 %"or.195", 8
  %"for_LDG.170" = inttoptr i64 %".2732" to ptr
  %".2733" = load float, ptr %"for_LDG.170"
  store float %".2733", ptr %"R45_Float32"
  ; LDG.E.SYS R47, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2736" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.336" = zext ptr %".2736" to i64
  %".2737" = load ptr, ptr %"R11_Float32"
  %"zext.337" = zext ptr %".2737" to i64
  %"shl.167" = shl i64 %"zext.337", 32
  %"or.196" = or i64 %"shl.167", %"zext.336"
  %".2738" = add i64 %"or.196", 12
  %"for_LDG.171" = inttoptr i64 %".2738" to ptr
  %".2739" = load float, ptr %"for_LDG.171"
  store float %".2739", ptr %"R47_Float32"
  ; LDG.E.SYS R46, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2742" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.338" = zext ptr %".2742" to i64
  %".2743" = load ptr, ptr %"R5_Int32"
  %"zext.339" = zext ptr %".2743" to i64
  %"shl.168" = shl i64 %"zext.339", 32
  %"or.197" = or i64 %"shl.168", %"zext.338"
  %".2744" = add i64 %"or.197", 12
  %"for_LDG.172" = inttoptr i64 %".2744" to ptr
  %".2745" = load float, ptr %"for_LDG.172"
  store float %".2745", ptr %"R46_Float32"
  ; LDG.E.SYS R50, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2748" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.340" = zext ptr %".2748" to i64
  %".2749" = load ptr, ptr %"R9_Int32"
  %"zext.341" = zext ptr %".2749" to i64
  %"shl.169" = shl i64 %"zext.341", 32
  %"or.198" = or i64 %"shl.169", %"zext.340"
  %".2750" = add i64 %"or.198", 12
  %"for_LDG.173" = inttoptr i64 %".2750" to ptr
  %".2751" = load float, ptr %"for_LDG.173"
  store float %".2751", ptr %"R50_Float32"
  ; LDG.E.SYS R51, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2754" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.342" = zext ptr %".2754" to i64
  %".2755" = load ptr, ptr %"R7_Int32"
  %"zext.343" = zext ptr %".2755" to i64
  %"shl.170" = shl i64 %"zext.343", 32
  %"or.199" = or i64 %"shl.170", %"zext.342"
  %".2756" = add i64 %"or.199", 12
  %"for_LDG.174" = inttoptr i64 %".2756" to ptr
  %".2757" = load float, ptr %"for_LDG.174"
  store float %".2757", ptr %"R51_Float32"
  ; IADD3 R12, R12, -0x4, RZ
  %".2760" = load i32, ptr %"R12_Int32"
  %"add.168" = add i32 %".2760", -4
  %"add.169" = add i32 %"add.168", 0
  store i32 %"add.169", ptr %"R12_Int32"
  ; IADD3 R22, R22, 0x4, RZ
  %".2763" = load i32, ptr %"R22_Int32"
  %"add.170" = add i32 %".2763", 4
  %"add.171" = add i32 %"add.170", 0
  store i32 %"add.171", ptr %"R22_Int32"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".2766" = load i32, ptr %"R12_Int32"
  %".2767" = load i1, ptr %"PT_Bool"
  %"cmp.31" = icmp ne i32 %".2766", 0
  %".2768" = and i1 %"cmp.31", %".2767"
  ; FFMA R35, R35, R24, R44
  %".2770" = load float, ptr %"R35_Float32"
  %".2771" = load float, ptr %"R24_Float32"
  %".2772" = load float, ptr %"R44_Float32"
  %"fmul.148" = fmul float %".2770", %".2771"
  %"fadd.123" = fadd float %"fmul.148", %".2772"
  store float %"fadd.123", ptr %"R35_Float32"
  ; FFMA R37, R24.reuse, R37, R56
  %".2775" = load float, ptr %"R24_Float32"
  %".2776" = load float, ptr %"R37_Float32"
  %".2777" = load float, ptr %"R56_Float32"
  %"fmul.149" = fmul float %".2775", %".2776"
  %"fadd.124" = fadd float %"fmul.149", %".2777"
  store float %"fadd.124", ptr %"R37_Float32"
  ; FFMA R34, R24, R34, R21
  %".2780" = load float, ptr %"R24_Float32"
  %".2781" = load float, ptr %"R34_Float32"
  %".2782" = load float, ptr %"R21_Float32"
  %"fmul.150" = fmul float %".2780", %".2781"
  %"fadd.125" = fadd float %"fmul.150", %".2782"
  store float %"fadd.125", ptr %"R34_Float32"
  ; FFMA R35, R36, R38, R35
  %".2785" = load float, ptr %"R36_Float32"
  %".2786" = load float, ptr %"R38_Float32"
  %".2787" = load float, ptr %"R35_Float32"
  %"fmul.151" = fmul float %".2785", %".2786"
  %"fadd.126" = fadd float %"fmul.151", %".2787"
  store float %"fadd.126", ptr %"R35_Float32"
  ; FFMA R37, R38, R39, R37
  %".2790" = load float, ptr %"R38_Float32"
  %".2791" = load float, ptr %"R39_Float32"
  %".2792" = load float, ptr %"R37_Float32"
  %"fmul.152" = fmul float %".2790", %".2791"
  %"fadd.127" = fadd float %"fmul.152", %".2792"
  store float %"fadd.127", ptr %"R37_Float32"
  ; FFMA R34, R38, R41, R34
  %".2795" = load float, ptr %"R38_Float32"
  %".2796" = load float, ptr %"R41_Float32"
  %".2797" = load float, ptr %"R34_Float32"
  %"fmul.153" = fmul float %".2795", %".2796"
  %"fadd.128" = fadd float %"fmul.153", %".2797"
  store float %"fadd.128", ptr %"R34_Float32"
  ; FFMA R35, R40, R42, R35
  %".2800" = load float, ptr %"R40_Float32"
  %".2801" = load float, ptr %"R42_Float32"
  %".2802" = load float, ptr %"R35_Float32"
  %"fmul.154" = fmul float %".2800", %".2801"
  %"fadd.129" = fadd float %"fmul.154", %".2802"
  store float %"fadd.129", ptr %"R35_Float32"
  ; FFMA R37, R42.reuse, R43, R37
  %".2805" = load float, ptr %"R42_Float32"
  %".2806" = load float, ptr %"R43_Float32"
  %".2807" = load float, ptr %"R37_Float32"
  %"fmul.155" = fmul float %".2805", %".2806"
  %"fadd.130" = fadd float %"fmul.155", %".2807"
  store float %"fadd.130", ptr %"R37_Float32"
  ; FFMA R34, R42, R45, R34
  %".2810" = load float, ptr %"R42_Float32"
  %".2811" = load float, ptr %"R45_Float32"
  %".2812" = load float, ptr %"R34_Float32"
  %"fmul.156" = fmul float %".2810", %".2811"
  %"fadd.131" = fadd float %"fmul.156", %".2812"
  store float %"fadd.131", ptr %"R34_Float32"
  ; FFMA R44, R46, R47, R35
  %".2815" = load float, ptr %"R46_Float32"
  %".2816" = load float, ptr %"R47_Float32"
  %".2817" = load float, ptr %"R35_Float32"
  %"fmul.157" = fmul float %".2815", %".2816"
  %"fadd.132" = fadd float %"fmul.157", %".2817"
  store float %"fadd.132", ptr %"R44_Float32"
  ; FFMA R56, R47, R50, R37
  %".2820" = load float, ptr %"R47_Float32"
  %".2821" = load float, ptr %"R50_Float32"
  %".2822" = load float, ptr %"R37_Float32"
  %"fmul.158" = fmul float %".2820", %".2821"
  %"fadd.133" = fadd float %"fmul.158", %".2822"
  store float %"fadd.133", ptr %"R56_Float32"
  ; FFMA R21, R47, R51, R34
  %".2825" = load float, ptr %"R47_Float32"
  %".2826" = load float, ptr %"R51_Float32"
  %".2827" = load float, ptr %"R34_Float32"
  %"fmul.159" = fmul float %".2825", %".2826"
  %"fadd.134" = fadd float %"fmul.159", %".2827"
  store float %"fadd.134", ptr %"R21_Float32"
  ; @P0 BRA `(.L_x_24)
  %".2830" = load i1, ptr %"P0_Bool"
  %".2831" = icmp ne i1 %".2830", 1
  br i1 %".2831", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".2834" = load i1, ptr %"P1_Bool"
  %".2835" = icmp eq i1 %".2834", 1
  br i1 %".2835", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11_Int32"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Int32", ptr %"R14_Float32", i32 4, i1 0)
  %".2840" = load i32, ptr %"R14_Int32"
  %".2841" = load i32, ptr %"R22_Int32"
  %"mul.57" = mul i32 %".2840", %"Arg_6"
  %"add.172" = add i32 %"mul.57", %".2841"
  store i32 %"add.172", ptr %"R7_Int32"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R10_Int32"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".2846" = load i32, ptr %"R13_Int32"
  %".2847" = load i32, ptr %"R22_Int32"
  %"mul.58" = mul i32 %".2846", %"Arg_6"
  %"add.173" = add i32 %"mul.58", %".2847"
  store i32 %"add.173", ptr %"R6_Int32"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9_Int32"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".2852" = load i32, ptr %"R7_Int32"
  %".2853" = load i32, ptr %"R11_Int32"
  %"mul.59" = mul i32 %".2852", %".2853"
  %"add.174" = add i32 %"mul.59", %"Arg_4"
  store i32 %"add.174", ptr %"R4_Int32"
  ; LEA R10, R10, R7, 0x1
  %".2856" = load i32, ptr %"R10_Int32"
  %".2857" = load i32, ptr %"R7_Int32"
  %"shl.171" = shl i32 %".2856", 1
  %"add.175" = add i32 %"shl.171", %".2857"
  store i32 %"add.175", ptr %"R10_Int32"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".2860" = load i32, ptr %"R6_Int32"
  %".2861" = load i32, ptr %"R11_Int32"
  %"mul.60" = mul i32 %".2860", %".2861"
  %"add.176" = add i32 %"mul.60", %"Arg_2"
  store i32 %"add.176", ptr %"R6_Int32"
  ; LEA R8, P0, R9, R4, 0x2
  %".2864" = load i1, ptr %"P0_Bool"
  %".2865" = sub i1 0, %".2864"
  %".2866" = load i32, ptr %"R9_Int32"
  %".2867" = load i32, ptr %"R4_Int32"
  %".2868" = sext i1 %".2865" to i32
  %"shl.172" = shl i32 %".2868", %".2867"
  %"add.177" = add i32 %"shl.172", %".2866"
  store i32 %"add.177", ptr %"R8_Int32"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".2871" = load i32, ptr %"R10_Int32"
  %".2872" = load i32, ptr %"R11_Int32"
  %"mul.61" = mul i32 %".2871", %".2872"
  %"add.178" = add i32 %"mul.61", %"Arg_4"
  store i32 %"add.178", ptr %"R10_Int32"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".2875" = load i32, ptr %"R9_Int32"
  %".2876" = load i32, ptr %"R5_Int32"
  %".2877" = load i32, ptr %"R16_Int32"
  %"shl.173" = shl i32 %".2875", %".2877"
  %"add.179" = add i32 %"shl.173", %".2876"
  store i32 %"add.179", ptr %"R9_Int32"
  ; LDG.E.SYS R13, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2880" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.344" = zext ptr %".2880" to i64
  %".2881" = load ptr, ptr %"R5_Int32"
  %"zext.345" = zext ptr %".2881" to i64
  %"shl.174" = shl i64 %"zext.345", 32
  %"or.200" = or i64 %"shl.174", %"zext.344"
  %".2882" = add i64 %"or.200", 0
  %"for_LDG.175" = inttoptr i64 %".2882" to ptr
  %".2883" = load float, ptr %"for_LDG.175"
  store float %".2883", ptr %"R13_Float32"
  ; LDG.E.SYS R12, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2886" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.346" = zext ptr %".2886" to i64
  %".2887" = load ptr, ptr %"R7_Int32"
  %"zext.347" = zext ptr %".2887" to i64
  %"shl.175" = shl i64 %"zext.347", 32
  %"or.201" = or i64 %"shl.175", %"zext.346"
  %".2888" = add i64 %"or.201", 0
  %"for_LDG.176" = inttoptr i64 %".2888" to ptr
  %".2889" = load float, ptr %"for_LDG.176"
  store float %".2889", ptr %"R12_Float32"
  ; LDG.E.SYS R23, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2892" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.348" = zext ptr %".2892" to i64
  %".2893" = load ptr, ptr %"R9_Int32"
  %"zext.349" = zext ptr %".2893" to i64
  %"shl.176" = shl i64 %"zext.349", 32
  %"or.202" = or i64 %"shl.176", %"zext.348"
  %".2894" = add i64 %"or.202", 0
  %"for_LDG.177" = inttoptr i64 %".2894" to ptr
  %".2895" = load float, ptr %"for_LDG.177"
  store float %".2895", ptr %"R23_Float32"
  ; LDG.E.SYS R22, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2898" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.350" = zext ptr %".2898" to i64
  %".2899" = load ptr, ptr %"R11_Int32"
  %"zext.351" = zext ptr %".2899" to i64
  %"shl.177" = shl i64 %"zext.351", 32
  %"or.203" = or i64 %"shl.177", %"zext.350"
  %".2900" = add i64 %"or.203", 0
  %"for_LDG.178" = inttoptr i64 %".2900" to ptr
  %".2901" = load float, ptr %"for_LDG.178"
  store float %".2901", ptr %"R22_Float32"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".2904" = load i32, ptr %"R15_Int32"
  %".2905" = load i1, ptr %"PT_Bool"
  %"cmp.32" = icmp ne i32 %".2904", 1
  %".2906" = and i1 %"cmp.32", %".2905"
  ; FFMA R44, R13, R12, R44
  %".2908" = load float, ptr %"R13_Float32"
  %".2909" = load float, ptr %"R12_Float32"
  %".2910" = load float, ptr %"R44_Float32"
  %"fmul.160" = fmul float %".2908", %".2909"
  %"fadd.135" = fadd float %"fmul.160", %".2910"
  store float %"fadd.135", ptr %"R44_Float32"
  ; FFMA R56, R12.reuse, R23, R56
  %".2913" = load float, ptr %"R12_Float32"
  %".2914" = load float, ptr %"R23_Float32"
  %".2915" = load float, ptr %"R56_Float32"
  %"fmul.161" = fmul float %".2913", %".2914"
  %"fadd.136" = fadd float %"fmul.161", %".2915"
  store float %"fadd.136", ptr %"R56_Float32"
  ; FFMA R21, R12, R22, R21
  %".2918" = load float, ptr %"R12_Float32"
  %".2919" = load float, ptr %"R22_Float32"
  %".2920" = load float, ptr %"R21_Float32"
  %"fmul.162" = fmul float %".2918", %".2919"
  %"fadd.137" = fadd float %"fmul.162", %".2920"
  store float %"fadd.137", ptr %"R21_Float32"
  ; @!P0 BRA `(.L_x_25)
  %".2923" = load i1, ptr %"P0_Bool"
  %".2924" = icmp eq i1 %".2923", 1
  br i1 %".2924", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".2927" = load i32, ptr %"R15_Int32"
  %".2928" = load i1, ptr %"PT_Bool"
  %"cmp.33" = icmp ne i32 %".2927", 2
  %".2929" = and i1 %"cmp.33", %".2928"
  ; LDG.E.SYS R13, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2931" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.352" = zext ptr %".2931" to i64
  %".2932" = load ptr, ptr %"R5_Int32"
  %"zext.353" = zext ptr %".2932" to i64
  %"shl.178" = shl i64 %"zext.353", 32
  %"or.204" = or i64 %"shl.178", %"zext.352"
  %".2933" = add i64 %"or.204", 4
  %"for_LDG.179" = inttoptr i64 %".2933" to ptr
  %".2934" = load float, ptr %"for_LDG.179"
  store float %".2934", ptr %"R13_Float32"
  ; LDG.E.SYS R12, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2937" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.354" = zext ptr %".2937" to i64
  %".2938" = load ptr, ptr %"R7_Int32"
  %"zext.355" = zext ptr %".2938" to i64
  %"shl.179" = shl i64 %"zext.355", 32
  %"or.205" = or i64 %"shl.179", %"zext.354"
  %".2939" = add i64 %"or.205", 4
  %"for_LDG.180" = inttoptr i64 %".2939" to ptr
  %".2940" = load float, ptr %"for_LDG.180"
  store float %".2940", ptr %"R12_Float32"
  ; LDG.E.SYS R23, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2943" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.356" = zext ptr %".2943" to i64
  %".2944" = load ptr, ptr %"R9_Int32"
  %"zext.357" = zext ptr %".2944" to i64
  %"shl.180" = shl i64 %"zext.357", 32
  %"or.206" = or i64 %"shl.180", %"zext.356"
  %".2945" = add i64 %"or.206", 4
  %"for_LDG.181" = inttoptr i64 %".2945" to ptr
  %".2946" = load float, ptr %"for_LDG.181"
  store float %".2946", ptr %"R23_Float32"
  ; LDG.E.SYS R22, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2949" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.358" = zext ptr %".2949" to i64
  %".2950" = load ptr, ptr %"R11_Int32"
  %"zext.359" = zext ptr %".2950" to i64
  %"shl.181" = shl i64 %"zext.359", 32
  %"or.207" = or i64 %"shl.181", %"zext.358"
  %".2951" = add i64 %"or.207", 4
  %"for_LDG.182" = inttoptr i64 %".2951" to ptr
  %".2952" = load float, ptr %"for_LDG.182"
  store float %".2952", ptr %"R22_Float32"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".2955" = load i1, ptr %"P0_Bool"
  %".2956" = icmp ne i1 %".2955", 1
  br i1 %".2956", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2959" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.360" = zext ptr %".2959" to i64
  %".2960" = load ptr, ptr %"R5_Int32"
  %"zext.361" = zext ptr %".2960" to i64
  %"shl.182" = shl i64 %"zext.361", 32
  %"or.208" = or i64 %"shl.182", %"zext.360"
  %".2961" = add i64 %"or.208", 8
  %"for_LDG.183" = inttoptr i64 %".2961" to ptr
  %".2962" = load float, ptr %"for_LDG.183"
  store float %".2962", ptr %"R25_Float32"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".2967" = load i1, ptr %"P0_Bool"
  %".2968" = icmp ne i1 %".2967", 1
  br i1 %".2968", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2971" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.362" = zext ptr %".2971" to i64
  %".2972" = load ptr, ptr %"R7_Int32"
  %"zext.363" = zext ptr %".2972" to i64
  %"shl.183" = shl i64 %"zext.363", 32
  %"or.209" = or i64 %"shl.183", %"zext.362"
  %".2973" = add i64 %"or.209", 8
  %"for_LDG.184" = inttoptr i64 %".2973" to ptr
  %".2974" = load float, ptr %"for_LDG.184"
  store float %".2974", ptr %"R24_Float32"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".2979" = load i1, ptr %"P0_Bool"
  %".2980" = icmp ne i1 %".2979", 1
  br i1 %".2980", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2983" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.364" = zext ptr %".2983" to i64
  %".2984" = load ptr, ptr %"R9_Int32"
  %"zext.365" = zext ptr %".2984" to i64
  %"shl.184" = shl i64 %"zext.365", 32
  %"or.210" = or i64 %"shl.184", %"zext.364"
  %".2985" = add i64 %"or.210", 8
  %"for_LDG.185" = inttoptr i64 %".2985" to ptr
  %".2986" = load float, ptr %"for_LDG.185"
  store float %".2986", ptr %"R35_Float32"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".2991" = load i1, ptr %"P0_Bool"
  %".2992" = icmp ne i1 %".2991", 1
  br i1 %".2992", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2995" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.366" = zext ptr %".2995" to i64
  %".2996" = load ptr, ptr %"R11_Int32"
  %"zext.367" = zext ptr %".2996" to i64
  %"shl.185" = shl i64 %"zext.367", 32
  %"or.211" = or i64 %"shl.185", %"zext.366"
  %".2997" = add i64 %"or.211", 8
  %"for_LDG.186" = inttoptr i64 %".2997" to ptr
  %".2998" = load float, ptr %"for_LDG.186"
  store float %".2998", ptr %"R34_Float32"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".3003" = load float, ptr %"R13_Float32"
  %".3004" = load float, ptr %"R12_Float32"
  %".3005" = load float, ptr %"R44_Float32"
  %"fmul.163" = fmul float %".3003", %".3004"
  %"fadd.138" = fadd float %"fmul.163", %".3005"
  store float %"fadd.138", ptr %"R44_Float32"
  ; FFMA R56, R12.reuse, R23, R56
  %".3008" = load float, ptr %"R12_Float32"
  %".3009" = load float, ptr %"R23_Float32"
  %".3010" = load float, ptr %"R56_Float32"
  %"fmul.164" = fmul float %".3008", %".3009"
  %"fadd.139" = fadd float %"fmul.164", %".3010"
  store float %"fadd.139", ptr %"R56_Float32"
  ; FFMA R21, R12, R22, R21
  %".3013" = load float, ptr %"R12_Float32"
  %".3014" = load float, ptr %"R22_Float32"
  %".3015" = load float, ptr %"R21_Float32"
  %"fmul.165" = fmul float %".3013", %".3014"
  %"fadd.140" = fadd float %"fmul.165", %".3015"
  store float %"fadd.140", ptr %"R21_Float32"
  ; @P0 FFMA R44, R25, R24, R44
  %".3018" = load i1, ptr %"P0_Bool"
  %".3019" = icmp ne i1 %".3018", 1
  br i1 %".3019", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".3022" = load float, ptr %"R25_Float32"
  %".3023" = load float, ptr %"R24_Float32"
  %".3024" = load float, ptr %"R44_Float32"
  %"fmul.166" = fmul float %".3022", %".3023"
  %"fadd.141" = fadd float %"fmul.166", %".3024"
  store float %"fadd.141", ptr %"R44_Float32"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".3029" = load i1, ptr %"P0_Bool"
  %".3030" = icmp ne i1 %".3029", 1
  br i1 %".3030", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".3033" = load float, ptr %"R24_Float32"
  %".3034" = load float, ptr %"R35_Float32"
  %".3035" = load float, ptr %"R56_Float32"
  %"fmul.167" = fmul float %".3033", %".3034"
  %"fadd.142" = fadd float %"fmul.167", %".3035"
  store float %"fadd.142", ptr %"R56_Float32"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".3040" = load i1, ptr %"P0_Bool"
  %".3041" = icmp ne i1 %".3040", 1
  br i1 %".3041", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".3044" = load float, ptr %"R24_Float32"
  %".3045" = load float, ptr %"R34_Float32"
  %".3046" = load float, ptr %"R21_Float32"
  %"fmul.168" = fmul float %".3044", %".3045"
  %"fadd.143" = fadd float %"fmul.168", %".3046"
  store float %"fadd.143", ptr %"R21_Float32"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".3051" = load i1, ptr %"P4_Bool"
  %".3052" = icmp eq i1 %".3051", 1
  br i1 %".3052", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".3055" = load i32, ptr %"R18_Int32"
  %".3056" = load i1, ptr %"PT_Bool"
  %"cmp.34" = icmp sge i32 %".3055", 3
  %".3057" = and i1 %"cmp.34", %".3056"
  ; MOV R23, RZ
  %".3059" = load i32, ptr %"RZ_Int32"
  store i32 %".3059", ptr %"R23_Int32"
  ; @!P0 BRA `(.L_x_27)
  %".3062" = load i1, ptr %"P0_Bool"
  %".3063" = icmp eq i1 %".3062", 1
  br i1 %".3063", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".3066" = load i32, ptr %"R20_Int32"
  %".3067" = load i1, ptr %"PT_Bool"
  %"cmp.35" = icmp sgt i32 %".3066", 0
  %".3068" = and i1 %"cmp.35", %".3067"
  ; MOV R23, RZ
  %".3070" = load i32, ptr %"RZ_Int32"
  store i32 %".3070", ptr %"R23_Int32"
  ; MOV R22, R20
  %".3073" = load i32, ptr %"R20_Int32"
  store i32 %".3073", ptr %"R22_Int32"
  ; @!P0 BRA `(.L_x_28)
  %".3076" = load i1, ptr %"P0_Bool"
  %".3077" = icmp eq i1 %".3076", 1
  br i1 %".3077", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".3080" = load i32, ptr %"R22_Int32"
  %".3081" = load i1, ptr %"PT_Bool"
  %"cmp.36" = icmp sgt i32 %".3080", 12
  %".3082" = and i1 %"cmp.36", %".3081"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".3084" = and i1 1, 1
  %".3085" = or i1 %".3084", 1
  ; @!P1 BRA `(.L_x_29)
  %".3087" = load i1, ptr %"P1_Bool"
  %".3088" = icmp eq i1 %".3087", 1
  br i1 %".3088", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3091" = xor i1 1, 1
  %".3092" = and i1 %".3091", 1
  %".3093" = and i1 %".3092", 1
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".3095" = load i32, ptr %"R0_Int32"
  %".3096" = load i32, ptr %"R23_Int32"
  %"add.180" = add i32 %".3095", %".3096"
  %"add.181" = add i32 %"add.180", 0
  store i32 %"add.181", ptr %"R25_Int32"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24_Int32"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".3101" = load i32, ptr %"R2_Int32"
  %".3102" = load i32, ptr %"R25_Int32"
  %"mul.62" = mul i32 %".3101", 3
  %"add.182" = add i32 %"mul.62", %".3102"
  store i32 %"add.182", ptr %"R35_Int32"
  ; LEA R25, R2, R25, 0x2
  %".3105" = load i32, ptr %"R2_Int32"
  %".3106" = load i32, ptr %"R25_Int32"
  %"shl.186" = shl i32 %".3105", 2
  %"add.183" = add i32 %"shl.186", %".3106"
  store i32 %"add.183", ptr %"R25_Int32"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".3109" = load i32, ptr %"R23_Int32"
  %".3110" = load i32, ptr %"R24_Int32"
  %"mul.63" = mul i32 %".3109", %".3110"
  %"add.184" = add i32 %"mul.63", %"Arg_3"
  store i32 %"add.184", ptr %"R36_Int32"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".3113" = load i32, ptr %"R35_Int32"
  %".3114" = load i32, ptr %"R24_Int32"
  %"mul.64" = mul i32 %".3113", %".3114"
  %"add.185" = add i32 %"mul.64", %"Arg_4"
  store i32 %"add.185", ptr %"R8_Int32"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".3117" = load i32, ptr %"R25_Int32"
  %".3118" = load i32, ptr %"R24_Int32"
  %"mul.65" = mul i32 %".3117", %".3118"
  %"add.186" = add i32 %"mul.65", %"Arg_4"
  store i32 %"add.186", ptr %"R12_Int32"
  ; LDG.E.SYS R39, [R36]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".3121" = load ptr, ptr %"R36_Float32_PTR"
  %"zext.368" = zext ptr %".3121" to i64
  %".3122" = load ptr, ptr %"R37_Float32"
  %"zext.369" = zext ptr %".3122" to i64
  %"shl.187" = shl i64 %"zext.369", 32
  %"or.212" = or i64 %"shl.187", %"zext.368"
  %".3123" = add i64 %"or.212", 0
  %"for_LDG.187" = inttoptr i64 %".3123" to ptr
  %".3124" = load float, ptr %"for_LDG.187"
  store float %".3124", ptr %"R39_Float32"
  ; LDG.E.SYS R41, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3127" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.370" = zext ptr %".3127" to i64
  %".3128" = load ptr, ptr %"R9_Int32"
  %"zext.371" = zext ptr %".3128" to i64
  %"shl.188" = shl i64 %"zext.371", 32
  %"or.213" = or i64 %"shl.188", %"zext.370"
  %".3129" = add i64 %"or.213", 0
  %"for_LDG.188" = inttoptr i64 %".3129" to ptr
  %".3130" = load float, ptr %"for_LDG.188"
  store float %".3130", ptr %"R41_Float32"
  ; LDG.E.SYS R40, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3133" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.372" = zext ptr %".3133" to i64
  %".3134" = load ptr, ptr %"R13_Float32"
  %"zext.373" = zext ptr %".3134" to i64
  %"shl.189" = shl i64 %"zext.373", 32
  %"or.214" = or i64 %"shl.189", %"zext.372"
  %".3135" = add i64 %"or.214", 0
  %"for_LDG.189" = inttoptr i64 %".3135" to ptr
  %".3136" = load float, ptr %"for_LDG.189"
  store float %".3136", ptr %"R40_Float32"
  ; LDG.E.SYS R52, [R36+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".3139" = load ptr, ptr %"R36_Float32_PTR"
  %"zext.374" = zext ptr %".3139" to i64
  %".3140" = load ptr, ptr %"R37_Float32"
  %"zext.375" = zext ptr %".3140" to i64
  %"shl.190" = shl i64 %"zext.375", 32
  %"or.215" = or i64 %"shl.190", %"zext.374"
  %".3141" = add i64 %"or.215", 4
  %"for_LDG.190" = inttoptr i64 %".3141" to ptr
  %".3142" = load float, ptr %"for_LDG.190"
  store float %".3142", ptr %"R52_Float32"
  ; LDG.E.SYS R53, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3145" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.376" = zext ptr %".3145" to i64
  %".3146" = load ptr, ptr %"R9_Int32"
  %"zext.377" = zext ptr %".3146" to i64
  %"shl.191" = shl i64 %"zext.377", 32
  %"or.216" = or i64 %"shl.191", %"zext.376"
  %".3147" = add i64 %"or.216", 4
  %"for_LDG.191" = inttoptr i64 %".3147" to ptr
  %".3148" = load float, ptr %"for_LDG.191"
  store float %".3148", ptr %"R53_Float32"
  ; LDG.E.SYS R55, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3151" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.378" = zext ptr %".3151" to i64
  %".3152" = load ptr, ptr %"R13_Float32"
  %"zext.379" = zext ptr %".3152" to i64
  %"shl.192" = shl i64 %"zext.379", 32
  %"or.217" = or i64 %"shl.192", %"zext.378"
  %".3153" = add i64 %"or.217", 4
  %"for_LDG.192" = inttoptr i64 %".3153" to ptr
  %".3154" = load float, ptr %"for_LDG.192"
  store float %".3154", ptr %"R55_Float32"
  ; IADD3 R11, R23, 0x4, RZ
  %".3157" = load i32, ptr %"R23_Int32"
  %"add.187" = add i32 %".3157", 4
  %"add.188" = add i32 %"add.187", 0
  store i32 %"add.188", ptr %"R11_Int32"
  ; LDG.E.SYS R50, [R36+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".3160" = load ptr, ptr %"R36_Float32_PTR"
  %"zext.380" = zext ptr %".3160" to i64
  %".3161" = load ptr, ptr %"R37_Float32"
  %"zext.381" = zext ptr %".3161" to i64
  %"shl.193" = shl i64 %"zext.381", 32
  %"or.218" = or i64 %"shl.193", %"zext.380"
  %".3162" = add i64 %"or.218", 8
  %"for_LDG.193" = inttoptr i64 %".3162" to ptr
  %".3163" = load float, ptr %"for_LDG.193"
  store float %".3163", ptr %"R50_Float32"
  ; IADD3 R7, R35, 0x4, RZ
  %".3166" = load i32, ptr %"R35_Int32"
  %"add.189" = add i32 %".3166", 4
  %"add.190" = add i32 %"add.189", 0
  store i32 %"add.190", ptr %"R7_Int32"
  ; LDG.E.SYS R43, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3169" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.382" = zext ptr %".3169" to i64
  %".3170" = load ptr, ptr %"R9_Int32"
  %"zext.383" = zext ptr %".3170" to i64
  %"shl.194" = shl i64 %"zext.383", 32
  %"or.219" = or i64 %"shl.194", %"zext.382"
  %".3171" = add i64 %"or.219", 8
  %"for_LDG.194" = inttoptr i64 %".3171" to ptr
  %".3172" = load float, ptr %"for_LDG.194"
  store float %".3172", ptr %"R43_Float32"
  ; IADD3 R5, R25, 0x4, RZ
  %".3175" = load i32, ptr %"R25_Int32"
  %"add.191" = add i32 %".3175", 4
  %"add.192" = add i32 %"add.191", 0
  store i32 %"add.192", ptr %"R5_Int32"
  ; LDG.E.SYS R51, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3178" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.384" = zext ptr %".3178" to i64
  %".3179" = load ptr, ptr %"R13_Float32"
  %"zext.385" = zext ptr %".3179" to i64
  %"shl.195" = shl i64 %"zext.385", 32
  %"or.220" = or i64 %"shl.195", %"zext.384"
  %".3180" = add i64 %"or.220", 8
  %"for_LDG.195" = inttoptr i64 %".3180" to ptr
  %".3181" = load float, ptr %"for_LDG.195"
  store float %".3181", ptr %"R51_Float32"
  ; LDG.E.SYS R47, [R36+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".3184" = load ptr, ptr %"R36_Float32_PTR"
  %"zext.386" = zext ptr %".3184" to i64
  %".3185" = load ptr, ptr %"R37_Float32"
  %"zext.387" = zext ptr %".3185" to i64
  %"shl.196" = shl i64 %"zext.387", 32
  %"or.221" = or i64 %"shl.196", %"zext.386"
  %".3186" = add i64 %"or.221", 12
  %"for_LDG.196" = inttoptr i64 %".3186" to ptr
  %".3187" = load float, ptr %"for_LDG.196"
  store float %".3187", ptr %"R47_Float32"
  ; LDG.E.SYS R54, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3190" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.388" = zext ptr %".3190" to i64
  %".3191" = load ptr, ptr %"R9_Int32"
  %"zext.389" = zext ptr %".3191" to i64
  %"shl.197" = shl i64 %"zext.389", 32
  %"or.222" = or i64 %"shl.197", %"zext.388"
  %".3192" = add i64 %"or.222", 12
  %"for_LDG.197" = inttoptr i64 %".3192" to ptr
  %".3193" = load float, ptr %"for_LDG.197"
  store float %".3193", ptr %"R54_Float32"
  ; LDG.E.SYS R58, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3196" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.390" = zext ptr %".3196" to i64
  %".3197" = load ptr, ptr %"R13_Float32"
  %"zext.391" = zext ptr %".3197" to i64
  %"shl.198" = shl i64 %"zext.391", 32
  %"or.223" = or i64 %"shl.198", %"zext.390"
  %".3198" = add i64 %"or.223", 12
  %"for_LDG.198" = inttoptr i64 %".3198" to ptr
  %".3199" = load float, ptr %"for_LDG.198"
  store float %".3199", ptr %"R58_Float32"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".3202" = load i32, ptr %"R11_Int32"
  %".3203" = load i32, ptr %"R24_Int32"
  %"mul.66" = mul i32 %".3202", %".3203"
  %"add.193" = add i32 %"mul.66", %"Arg_3"
  store i32 %"add.193", ptr %"R10_Int32"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".3206" = load i32, ptr %"R7_Int32"
  %".3207" = load i32, ptr %"R24_Int32"
  %"mul.67" = mul i32 %".3206", %".3207"
  %"add.194" = add i32 %"mul.67", %"Arg_4"
  store i32 %"add.194", ptr %"R6_Int32"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".3210" = load i32, ptr %"R5_Int32"
  %".3211" = load i32, ptr %"R24_Int32"
  %"mul.68" = mul i32 %".3210", %".3211"
  %"add.195" = add i32 %"mul.68", %"Arg_4"
  store i32 %"add.195", ptr %"R4_Int32"
  ; LDG.E.SYS R46, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3214" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.392" = zext ptr %".3214" to i64
  %".3215" = load ptr, ptr %"R11_Int32"
  %"zext.393" = zext ptr %".3215" to i64
  %"shl.199" = shl i64 %"zext.393", 32
  %"or.224" = or i64 %"shl.199", %"zext.392"
  %".3216" = add i64 %"or.224", 0
  %"for_LDG.199" = inttoptr i64 %".3216" to ptr
  %".3217" = load float, ptr %"for_LDG.199"
  store float %".3217", ptr %"R46_Float32"
  ; LDG.E.SYS R42, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3220" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.394" = zext ptr %".3220" to i64
  %".3221" = load ptr, ptr %"R7_Int32"
  %"zext.395" = zext ptr %".3221" to i64
  %"shl.200" = shl i64 %"zext.395", 32
  %"or.225" = or i64 %"shl.200", %"zext.394"
  %".3222" = add i64 %"or.225", 0
  %"for_LDG.200" = inttoptr i64 %".3222" to ptr
  %".3223" = load float, ptr %"for_LDG.200"
  store float %".3223", ptr %"R42_Float32"
  ; LDG.E.SYS R45, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3226" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.396" = zext ptr %".3226" to i64
  %".3227" = load ptr, ptr %"R5_Int32"
  %"zext.397" = zext ptr %".3227" to i64
  %"shl.201" = shl i64 %"zext.397", 32
  %"or.226" = or i64 %"shl.201", %"zext.396"
  %".3228" = add i64 %"or.226", 0
  %"for_LDG.201" = inttoptr i64 %".3228" to ptr
  %".3229" = load float, ptr %"for_LDG.201"
  store float %".3229", ptr %"R45_Float32"
  ; LDG.E.SYS R34, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3232" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.398" = zext ptr %".3232" to i64
  %".3233" = load ptr, ptr %"R11_Int32"
  %"zext.399" = zext ptr %".3233" to i64
  %"shl.202" = shl i64 %"zext.399", 32
  %"or.227" = or i64 %"shl.202", %"zext.398"
  %".3234" = add i64 %"or.227", 4
  %"for_LDG.202" = inttoptr i64 %".3234" to ptr
  %".3235" = load float, ptr %"for_LDG.202"
  store float %".3235", ptr %"R34_Float32"
  ; LDG.E.SYS R37, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3238" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.400" = zext ptr %".3238" to i64
  %".3239" = load ptr, ptr %"R7_Int32"
  %"zext.401" = zext ptr %".3239" to i64
  %"shl.203" = shl i64 %"zext.401", 32
  %"or.228" = or i64 %"shl.203", %"zext.400"
  %".3240" = add i64 %"or.228", 4
  %"for_LDG.203" = inttoptr i64 %".3240" to ptr
  %".3241" = load float, ptr %"for_LDG.203"
  store float %".3241", ptr %"R37_Float32"
  ; IADD3 R9, R23, 0x8, RZ
  %".3244" = load i32, ptr %"R23_Int32"
  %"add.196" = add i32 %".3244", 8
  %"add.197" = add i32 %"add.196", 0
  store i32 %"add.197", ptr %"R9_Int32"
  ; LDG.E.SYS R36, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3247" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.402" = zext ptr %".3247" to i64
  %".3248" = load ptr, ptr %"R11_Int32"
  %"zext.403" = zext ptr %".3248" to i64
  %"shl.204" = shl i64 %"zext.403", 32
  %"or.229" = or i64 %"shl.204", %"zext.402"
  %".3249" = add i64 %"or.229", 8
  %"for_LDG.204" = inttoptr i64 %".3249" to ptr
  %".3250" = load float, ptr %"for_LDG.204"
  store float %".3250", ptr %"R36_Float32"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".3253" = load i32, ptr %"R9_Int32"
  %".3254" = load i32, ptr %"R24_Int32"
  %"mul.69" = mul i32 %".3253", %".3254"
  %"add.198" = add i32 %"mul.69", %"Arg_3"
  store i32 %"add.198", ptr %"R8_Int32"
  ; LDG.E.SYS R38, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3257" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.404" = zext ptr %".3257" to i64
  %".3258" = load ptr, ptr %"R11_Int32"
  %"zext.405" = zext ptr %".3258" to i64
  %"shl.205" = shl i64 %"zext.405", 32
  %"or.230" = or i64 %"shl.205", %"zext.404"
  %".3259" = add i64 %"or.230", 12
  %"for_LDG.205" = inttoptr i64 %".3259" to ptr
  %".3260" = load float, ptr %"for_LDG.205"
  store float %".3260", ptr %"R38_Float32"
  ; IADD3 R13, R23, 0xc, RZ
  %".3263" = load i32, ptr %"R23_Int32"
  %"add.199" = add i32 %".3263", 12
  %"add.200" = add i32 %"add.199", 0
  store i32 %"add.200", ptr %"R13_Int32"
  ; IADD3 R11, R35, 0x8, RZ
  %".3266" = load i32, ptr %"R35_Int32"
  %"add.201" = add i32 %".3266", 8
  %"add.202" = add i32 %"add.201", 0
  store i32 %"add.202", ptr %"R11_Int32"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".3269" = load i32, ptr %"R13_Int32"
  %".3270" = load i32, ptr %"R24_Int32"
  %"mul.70" = mul i32 %".3269", %".3270"
  %"add.203" = add i32 %"mul.70", %"Arg_3"
  store i32 %"add.203", ptr %"R12_Int32"
  ; FFMA R57, R41, R39, R44
  %".3273" = load float, ptr %"R41_Float32"
  %".3274" = load float, ptr %"R39_Float32"
  %".3275" = load float, ptr %"R44_Float32"
  %"fmul.169" = fmul float %".3273", %".3274"
  %"fadd.144" = fadd float %"fmul.169", %".3275"
  store float %"fadd.144", ptr %"R57_Float32"
  ; LDG.E.SYS R41, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3278" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.406" = zext ptr %".3278" to i64
  %".3279" = load ptr, ptr %"R9_Int32"
  %"zext.407" = zext ptr %".3279" to i64
  %"shl.206" = shl i64 %"zext.407", 32
  %"or.231" = or i64 %"shl.206", %"zext.406"
  %".3280" = add i64 %"or.231", 0
  %"for_LDG.206" = inttoptr i64 %".3280" to ptr
  %".3281" = load float, ptr %"for_LDG.206"
  store float %".3281", ptr %"R41_Float32"
  ; FFMA R56, R39, R40, R56
  %".3284" = load float, ptr %"R39_Float32"
  %".3285" = load float, ptr %"R40_Float32"
  %".3286" = load float, ptr %"R56_Float32"
  %"fmul.170" = fmul float %".3284", %".3285"
  %"fadd.145" = fadd float %"fmul.170", %".3286"
  store float %"fadd.145", ptr %"R56_Float32"
  ; LDG.E.SYS R40, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3289" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.408" = zext ptr %".3289" to i64
  %".3290" = load ptr, ptr %"R9_Int32"
  %"zext.409" = zext ptr %".3290" to i64
  %"shl.207" = shl i64 %"zext.409", 32
  %"or.232" = or i64 %"shl.207", %"zext.408"
  %".3291" = add i64 %"or.232", 4
  %"for_LDG.207" = inttoptr i64 %".3291" to ptr
  %".3292" = load float, ptr %"for_LDG.207"
  store float %".3292", ptr %"R40_Float32"
  ; LDG.E.SYS R39, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3295" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.410" = zext ptr %".3295" to i64
  %".3296" = load ptr, ptr %"R9_Int32"
  %"zext.411" = zext ptr %".3296" to i64
  %"shl.208" = shl i64 %"zext.411", 32
  %"or.233" = or i64 %"shl.208", %"zext.410"
  %".3297" = add i64 %"or.233", 8
  %"for_LDG.208" = inttoptr i64 %".3297" to ptr
  %".3298" = load float, ptr %"for_LDG.208"
  store float %".3298", ptr %"R39_Float32"
  ; FFMA R57, R53, R52, R57
  %".3301" = load float, ptr %"R53_Float32"
  %".3302" = load float, ptr %"R52_Float32"
  %".3303" = load float, ptr %"R57_Float32"
  %"fmul.171" = fmul float %".3301", %".3302"
  %"fadd.146" = fadd float %"fmul.171", %".3303"
  store float %"fadd.146", ptr %"R57_Float32"
  ; LDG.E.SYS R44, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3306" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.412" = zext ptr %".3306" to i64
  %".3307" = load ptr, ptr %"R9_Int32"
  %"zext.413" = zext ptr %".3307" to i64
  %"shl.209" = shl i64 %"zext.413", 32
  %"or.234" = or i64 %"shl.209", %"zext.412"
  %".3308" = add i64 %"or.234", 12
  %"for_LDG.209" = inttoptr i64 %".3308" to ptr
  %".3309" = load float, ptr %"for_LDG.209"
  store float %".3309", ptr %"R44_Float32"
  ; FFMA R59, R52, R55, R56
  %".3312" = load float, ptr %"R52_Float32"
  %".3313" = load float, ptr %"R55_Float32"
  %".3314" = load float, ptr %"R56_Float32"
  %"fmul.172" = fmul float %".3312", %".3313"
  %"fadd.147" = fadd float %"fmul.172", %".3314"
  store float %"fadd.147", ptr %"R59_Float32"
  ; LDG.E.SYS R55, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3317" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.414" = zext ptr %".3317" to i64
  %".3318" = load ptr, ptr %"R13_Int32"
  %"zext.415" = zext ptr %".3318" to i64
  %"shl.210" = shl i64 %"zext.415", 32
  %"or.235" = or i64 %"shl.210", %"zext.414"
  %".3319" = add i64 %"or.235", 0
  %"for_LDG.210" = inttoptr i64 %".3319" to ptr
  %".3320" = load float, ptr %"for_LDG.210"
  store float %".3320", ptr %"R55_Float32"
  ; LDG.E.SYS R53, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3323" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.416" = zext ptr %".3323" to i64
  %".3324" = load ptr, ptr %"R13_Int32"
  %"zext.417" = zext ptr %".3324" to i64
  %"shl.211" = shl i64 %"zext.417", 32
  %"or.236" = or i64 %"shl.211", %"zext.416"
  %".3325" = add i64 %"or.236", 4
  %"for_LDG.211" = inttoptr i64 %".3325" to ptr
  %".3326" = load float, ptr %"for_LDG.211"
  store float %".3326", ptr %"R53_Float32"
  ; FFMA R43, R43, R50, R57
  %".3329" = load float, ptr %"R43_Float32"
  %".3330" = load float, ptr %"R50_Float32"
  %".3331" = load float, ptr %"R57_Float32"
  %"fmul.173" = fmul float %".3329", %".3330"
  %"fadd.148" = fadd float %"fmul.173", %".3331"
  store float %"fadd.148", ptr %"R43_Float32"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".3334" = load i32, ptr %"R11_Int32"
  %".3335" = load i32, ptr %"R24_Int32"
  %"mul.71" = mul i32 %".3334", %".3335"
  %"add.204" = add i32 %"mul.71", %"Arg_4"
  store i32 %"add.204", ptr %"R8_Int32"
  ; LDG.E.SYS R52, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3338" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.418" = zext ptr %".3338" to i64
  %".3339" = load ptr, ptr %"R13_Int32"
  %"zext.419" = zext ptr %".3339" to i64
  %"shl.212" = shl i64 %"zext.419", 32
  %"or.237" = or i64 %"shl.212", %"zext.418"
  %".3340" = add i64 %"or.237", 8
  %"for_LDG.212" = inttoptr i64 %".3340" to ptr
  %".3341" = load float, ptr %"for_LDG.212"
  store float %".3341", ptr %"R52_Float32"
  ; FFMA R51, R50, R51, R59
  %".3344" = load float, ptr %"R50_Float32"
  %".3345" = load float, ptr %"R51_Float32"
  %".3346" = load float, ptr %"R59_Float32"
  %"fmul.174" = fmul float %".3344", %".3345"
  %"fadd.149" = fadd float %"fmul.174", %".3346"
  store float %"fadd.149", ptr %"R51_Float32"
  ; IADD3 R57, R25, 0x8, RZ
  %".3349" = load i32, ptr %"R25_Int32"
  %"add.205" = add i32 %".3349", 8
  %"add.206" = add i32 %"add.205", 0
  store i32 %"add.206", ptr %"R57_Int32"
  ; LDG.E.SYS R59, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3352" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.420" = zext ptr %".3352" to i64
  %".3353" = load ptr, ptr %"R5_Int32"
  %"zext.421" = zext ptr %".3353" to i64
  %"shl.213" = shl i64 %"zext.421", 32
  %"or.238" = or i64 %"shl.213", %"zext.420"
  %".3354" = add i64 %"or.238", 12
  %"for_LDG.213" = inttoptr i64 %".3354" to ptr
  %".3355" = load float, ptr %"for_LDG.213"
  store float %".3355", ptr %"R59_Float32"
  ; FFMA R61, R54, R47, R43
  %".3358" = load float, ptr %"R54_Float32"
  %".3359" = load float, ptr %"R47_Float32"
  %".3360" = load float, ptr %"R43_Float32"
  %"fmul.175" = fmul float %".3358", %".3359"
  %"fadd.150" = fadd float %"fmul.175", %".3360"
  store float %"fadd.150", ptr %"R61_Float32"
  ; LDG.E.SYS R50, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3363" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.422" = zext ptr %".3363" to i64
  %".3364" = load ptr, ptr %"R9_Int32"
  %"zext.423" = zext ptr %".3364" to i64
  %"shl.214" = shl i64 %"zext.423", 32
  %"or.239" = or i64 %"shl.214", %"zext.422"
  %".3365" = add i64 %"or.239", 0
  %"for_LDG.214" = inttoptr i64 %".3365" to ptr
  %".3366" = load float, ptr %"for_LDG.214"
  store float %".3366", ptr %"R50_Float32"
  ; FFMA R58, R47, R58, R51
  %".3369" = load float, ptr %"R47_Float32"
  %".3370" = load float, ptr %"R58_Float32"
  %".3371" = load float, ptr %"R51_Float32"
  %"fmul.176" = fmul float %".3369", %".3370"
  %"fadd.151" = fadd float %"fmul.176", %".3371"
  store float %"fadd.151", ptr %"R58_Float32"
  ; LDG.E.SYS R43, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3374" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.424" = zext ptr %".3374" to i64
  %".3375" = load ptr, ptr %"R7_Int32"
  %"zext.425" = zext ptr %".3375" to i64
  %"shl.215" = shl i64 %"zext.425", 32
  %"or.240" = or i64 %"shl.215", %"zext.424"
  %".3376" = add i64 %"or.240", 8
  %"for_LDG.215" = inttoptr i64 %".3376" to ptr
  %".3377" = load float, ptr %"for_LDG.215"
  store float %".3377", ptr %"R43_Float32"
  ; LDG.E.SYS R47, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3380" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.426" = zext ptr %".3380" to i64
  %".3381" = load ptr, ptr %"R5_Int32"
  %"zext.427" = zext ptr %".3381" to i64
  %"shl.216" = shl i64 %"zext.427", 32
  %"or.241" = or i64 %"shl.216", %"zext.426"
  %".3382" = add i64 %"or.241", 4
  %"for_LDG.216" = inttoptr i64 %".3382" to ptr
  %".3383" = load float, ptr %"for_LDG.216"
  store float %".3383", ptr %"R47_Float32"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".3386" = load i32, ptr %"R57_Int32"
  %".3387" = load i32, ptr %"R24_Int32"
  %"mul.72" = mul i32 %".3386", %".3387"
  %"add.207" = add i32 %"mul.72", %"Arg_4"
  store i32 %"add.207", ptr %"R10_Int32"
  ; LDG.E.SYS R51, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3390" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.428" = zext ptr %".3390" to i64
  %".3391" = load ptr, ptr %"R5_Int32"
  %"zext.429" = zext ptr %".3391" to i64
  %"shl.217" = shl i64 %"zext.429", 32
  %"or.242" = or i64 %"shl.217", %"zext.428"
  %".3392" = add i64 %"or.242", 8
  %"for_LDG.217" = inttoptr i64 %".3392" to ptr
  %".3393" = load float, ptr %"for_LDG.217"
  store float %".3393", ptr %"R51_Float32"
  ; LDG.E.SYS R57, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3396" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.430" = zext ptr %".3396" to i64
  %".3397" = load ptr, ptr %"R7_Int32"
  %"zext.431" = zext ptr %".3397" to i64
  %"shl.218" = shl i64 %"zext.431", 32
  %"or.243" = or i64 %"shl.218", %"zext.430"
  %".3398" = add i64 %"or.243", 12
  %"for_LDG.218" = inttoptr i64 %".3398" to ptr
  %".3399" = load float, ptr %"for_LDG.218"
  store float %".3399", ptr %"R57_Float32"
  ; FFMA R42, R42, R46, R61
  %".3402" = load float, ptr %"R42_Float32"
  %".3403" = load float, ptr %"R46_Float32"
  %".3404" = load float, ptr %"R61_Float32"
  %"fmul.177" = fmul float %".3402", %".3403"
  %"fadd.152" = fadd float %"fmul.177", %".3404"
  store float %"fadd.152", ptr %"R42_Float32"
  ; IADD3 R25, R25, 0xc, RZ
  %".3407" = load i32, ptr %"R25_Int32"
  %"add.208" = add i32 %".3407", 12
  %"add.209" = add i32 %"add.208", 0
  store i32 %"add.209", ptr %"R25_Int32"
  ; LDG.E.SYS R56, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3410" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.432" = zext ptr %".3410" to i64
  %".3411" = load ptr, ptr %"R13_Int32"
  %"zext.433" = zext ptr %".3411" to i64
  %"shl.219" = shl i64 %"zext.433", 32
  %"or.244" = or i64 %"shl.219", %"zext.432"
  %".3412" = add i64 %"or.244", 12
  %"for_LDG.219" = inttoptr i64 %".3412" to ptr
  %".3413" = load float, ptr %"for_LDG.219"
  store float %".3413", ptr %"R56_Float32"
  ; FFMA R45, R46, R45, R58
  %".3416" = load float, ptr %"R46_Float32"
  %".3417" = load float, ptr %"R45_Float32"
  %".3418" = load float, ptr %"R58_Float32"
  %"fmul.178" = fmul float %".3416", %".3417"
  %"fadd.153" = fadd float %"fmul.178", %".3418"
  store float %"fadd.153", ptr %"R45_Float32"
  ; LDG.E.SYS R46, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3421" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.434" = zext ptr %".3421" to i64
  %".3422" = load ptr, ptr %"R11_Int32"
  %"zext.435" = zext ptr %".3422" to i64
  %"shl.220" = shl i64 %"zext.435", 32
  %"or.245" = or i64 %"shl.220", %"zext.434"
  %".3423" = add i64 %"or.245", 0
  %"for_LDG.220" = inttoptr i64 %".3423" to ptr
  %".3424" = load float, ptr %"for_LDG.220"
  store float %".3424", ptr %"R46_Float32"
  ; LDG.E.SYS R61, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3427" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.436" = zext ptr %".3427" to i64
  %".3428" = load ptr, ptr %"R9_Int32"
  %"zext.437" = zext ptr %".3428" to i64
  %"shl.221" = shl i64 %"zext.437", 32
  %"or.246" = or i64 %"shl.221", %"zext.436"
  %".3429" = add i64 %"or.246", 4
  %"for_LDG.221" = inttoptr i64 %".3429" to ptr
  %".3430" = load float, ptr %"for_LDG.221"
  store float %".3430", ptr %"R61_Float32"
  ; IADD3 R13, R35, 0xc, RZ
  %".3433" = load i32, ptr %"R35_Int32"
  %"add.210" = add i32 %".3433", 12
  %"add.211" = add i32 %"add.210", 0
  store i32 %"add.211", ptr %"R13_Int32"
  ; LDG.E.SYS R35, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3436" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.438" = zext ptr %".3436" to i64
  %".3437" = load ptr, ptr %"R11_Int32"
  %"zext.439" = zext ptr %".3437" to i64
  %"shl.222" = shl i64 %"zext.439", 32
  %"or.247" = or i64 %"shl.222", %"zext.438"
  %".3438" = add i64 %"or.247", 4
  %"for_LDG.222" = inttoptr i64 %".3438" to ptr
  %".3439" = load float, ptr %"for_LDG.222"
  store float %".3439", ptr %"R35_Float32"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".3442" = load i32, ptr %"R13_Int32"
  %".3443" = load i32, ptr %"R24_Int32"
  %"mul.73" = mul i32 %".3442", %".3443"
  %"add.212" = add i32 %"mul.73", %"Arg_4"
  store i32 %"add.212", ptr %"R12_Int32"
  ; LDG.E.SYS R6, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3446" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.440" = zext ptr %".3446" to i64
  %".3447" = load ptr, ptr %"R9_Int32"
  %"zext.441" = zext ptr %".3447" to i64
  %"shl.223" = shl i64 %"zext.441", 32
  %"or.248" = or i64 %"shl.223", %"zext.440"
  %".3448" = add i64 %"or.248", 8
  %"for_LDG.223" = inttoptr i64 %".3448" to ptr
  %".3449" = load float, ptr %"for_LDG.223"
  store float %".3449", ptr %"R6_Float32"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".3452" = load i32, ptr %"R25_Int32"
  %".3453" = load i32, ptr %"R24_Int32"
  %"mul.74" = mul i32 %".3452", %".3453"
  %"add.213" = add i32 %"mul.74", %"Arg_4"
  store i32 %"add.213", ptr %"R24_Int32"
  ; LDG.E.SYS R4, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3456" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.442" = zext ptr %".3456" to i64
  %".3457" = load ptr, ptr %"R11_Int32"
  %"zext.443" = zext ptr %".3457" to i64
  %"shl.224" = shl i64 %"zext.443", 32
  %"or.249" = or i64 %"shl.224", %"zext.442"
  %".3458" = add i64 %"or.249", 8
  %"for_LDG.224" = inttoptr i64 %".3458" to ptr
  %".3459" = load float, ptr %"for_LDG.224"
  store float %".3459", ptr %"R4_Float32"
  ; LDG.E.SYS R5, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3462" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.444" = zext ptr %".3462" to i64
  %".3463" = load ptr, ptr %"R9_Int32"
  %"zext.445" = zext ptr %".3463" to i64
  %"shl.225" = shl i64 %"zext.445", 32
  %"or.250" = or i64 %"shl.225", %"zext.444"
  %".3464" = add i64 %"or.250", 12
  %"for_LDG.225" = inttoptr i64 %".3464" to ptr
  %".3465" = load float, ptr %"for_LDG.225"
  store float %".3465", ptr %"R5_Float32"
  ; LDG.E.SYS R60, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3468" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.446" = zext ptr %".3468" to i64
  %".3469" = load ptr, ptr %"R11_Int32"
  %"zext.447" = zext ptr %".3469" to i64
  %"shl.226" = shl i64 %"zext.447", 32
  %"or.251" = or i64 %"shl.226", %"zext.446"
  %".3470" = add i64 %"or.251", 12
  %"for_LDG.226" = inttoptr i64 %".3470" to ptr
  %".3471" = load float, ptr %"for_LDG.226"
  store float %".3471", ptr %"R60_Float32"
  ; LDG.E.SYS R58, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3474" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.448" = zext ptr %".3474" to i64
  %".3475" = load ptr, ptr %"R13_Int32"
  %"zext.449" = zext ptr %".3475" to i64
  %"shl.227" = shl i64 %"zext.449", 32
  %"or.252" = or i64 %"shl.227", %"zext.448"
  %".3476" = add i64 %"or.252", 0
  %"for_LDG.227" = inttoptr i64 %".3476" to ptr
  %".3477" = load float, ptr %"for_LDG.227"
  store float %".3477", ptr %"R58_Float32"
  ; LDG.E.SYS R54, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3480" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.450" = zext ptr %".3480" to i64
  %".3481" = load ptr, ptr %"R13_Int32"
  %"zext.451" = zext ptr %".3481" to i64
  %"shl.228" = shl i64 %"zext.451", 32
  %"or.253" = or i64 %"shl.228", %"zext.450"
  %".3482" = add i64 %"or.253", 4
  %"for_LDG.228" = inttoptr i64 %".3482" to ptr
  %".3483" = load float, ptr %"for_LDG.228"
  store float %".3483", ptr %"R54_Float32"
  ; FFMA R10, R37, R34, R42
  %".3486" = load float, ptr %"R37_Float32"
  %".3487" = load float, ptr %"R34_Float32"
  %".3488" = load float, ptr %"R42_Float32"
  %"fmul.179" = fmul float %".3486", %".3487"
  %"fadd.154" = fadd float %"fmul.179", %".3488"
  store float %"fadd.154", ptr %"R10_Float32"
  ; LDG.E.SYS R37, [R24]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3491" = load ptr, ptr %"R24_Float32_PTR"
  %"zext.452" = zext ptr %".3491" to i64
  %".3492" = load ptr, ptr %"R25_Int32"
  %"zext.453" = zext ptr %".3492" to i64
  %"shl.229" = shl i64 %"zext.453", 32
  %"or.254" = or i64 %"shl.229", %"zext.452"
  %".3493" = add i64 %"or.254", 0
  %"for_LDG.229" = inttoptr i64 %".3493" to ptr
  %".3494" = load float, ptr %"for_LDG.229"
  store float %".3494", ptr %"R37_Float32"
  ; LDG.E.SYS R42, [R24+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3497" = load ptr, ptr %"R24_Float32_PTR"
  %"zext.454" = zext ptr %".3497" to i64
  %".3498" = load ptr, ptr %"R25_Int32"
  %"zext.455" = zext ptr %".3498" to i64
  %"shl.230" = shl i64 %"zext.455", 32
  %"or.255" = or i64 %"shl.230", %"zext.454"
  %".3499" = add i64 %"or.255", 4
  %"for_LDG.230" = inttoptr i64 %".3499" to ptr
  %".3500" = load float, ptr %"for_LDG.230"
  store float %".3500", ptr %"R42_Float32"
  ; LDG.E.SYS R7, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3503" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.456" = zext ptr %".3503" to i64
  %".3504" = load ptr, ptr %"R13_Int32"
  %"zext.457" = zext ptr %".3504" to i64
  %"shl.231" = shl i64 %"zext.457", 32
  %"or.256" = or i64 %"shl.231", %"zext.456"
  %".3505" = add i64 %"or.256", 8
  %"for_LDG.231" = inttoptr i64 %".3505" to ptr
  %".3506" = load float, ptr %"for_LDG.231"
  store float %".3506", ptr %"R7_Float32"
  ; LDG.E.SYS R9, [R24+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3509" = load ptr, ptr %"R24_Float32_PTR"
  %"zext.458" = zext ptr %".3509" to i64
  %".3510" = load ptr, ptr %"R25_Int32"
  %"zext.459" = zext ptr %".3510" to i64
  %"shl.232" = shl i64 %"zext.459", 32
  %"or.257" = or i64 %"shl.232", %"zext.458"
  %".3511" = add i64 %"or.257", 8
  %"for_LDG.232" = inttoptr i64 %".3511" to ptr
  %".3512" = load float, ptr %"for_LDG.232"
  store float %".3512", ptr %"R9_Float32"
  ; LDG.E.SYS R8, [R24+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3515" = load ptr, ptr %"R24_Float32_PTR"
  %"zext.460" = zext ptr %".3515" to i64
  %".3516" = load ptr, ptr %"R25_Int32"
  %"zext.461" = zext ptr %".3516" to i64
  %"shl.233" = shl i64 %"zext.461", 32
  %"or.258" = or i64 %"shl.233", %"zext.460"
  %".3517" = add i64 %"or.258", 12
  %"for_LDG.233" = inttoptr i64 %".3517" to ptr
  %".3518" = load float, ptr %"for_LDG.233"
  store float %".3518", ptr %"R8_Float32"
  ; LDG.E.SYS R13, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3521" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.462" = zext ptr %".3521" to i64
  %".3522" = load ptr, ptr %"R13_Int32"
  %"zext.463" = zext ptr %".3522" to i64
  %"shl.234" = shl i64 %"zext.463", 32
  %"or.259" = or i64 %"shl.234", %"zext.462"
  %".3523" = add i64 %"or.259", 12
  %"for_LDG.234" = inttoptr i64 %".3523" to ptr
  %".3524" = load float, ptr %"for_LDG.234"
  store float %".3524", ptr %"R13_Float32"
  ; IADD3 R22, R22, -0x10, RZ
  %".3527" = load i32, ptr %"R22_Int32"
  %"add.214" = add i32 %".3527", -16
  %"add.215" = add i32 %"add.214", 0
  store i32 %"add.215", ptr %"R22_Int32"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".3530" = load i32, ptr %"R22_Int32"
  %".3531" = load i1, ptr %"PT_Bool"
  %"cmp.37" = icmp sgt i32 %".3530", 12
  %".3532" = and i1 %"cmp.37", %".3531"
  ; IADD3 R23, R23, 0x10, RZ
  %".3534" = load i32, ptr %"R23_Int32"
  %"add.216" = add i32 %".3534", 16
  %"add.217" = add i32 %"add.216", 0
  store i32 %"add.217", ptr %"R23_Int32"
  ; FFMA R10, R43, R36, R10
  %".3537" = load float, ptr %"R43_Float32"
  %".3538" = load float, ptr %"R36_Float32"
  %".3539" = load float, ptr %"R10_Float32"
  %"fmul.180" = fmul float %".3537", %".3538"
  %"fadd.155" = fadd float %"fmul.180", %".3539"
  store float %"fadd.155", ptr %"R10_Float32"
  ; FFMA R45, R34, R47, R45
  %".3542" = load float, ptr %"R34_Float32"
  %".3543" = load float, ptr %"R47_Float32"
  %".3544" = load float, ptr %"R45_Float32"
  %"fmul.181" = fmul float %".3542", %".3543"
  %"fadd.156" = fadd float %"fmul.181", %".3544"
  store float %"fadd.156", ptr %"R45_Float32"
  ; FFMA R45, R36, R51, R45
  %".3547" = load float, ptr %"R36_Float32"
  %".3548" = load float, ptr %"R51_Float32"
  %".3549" = load float, ptr %"R45_Float32"
  %"fmul.182" = fmul float %".3547", %".3548"
  %"fadd.157" = fadd float %"fmul.182", %".3549"
  store float %"fadd.157", ptr %"R45_Float32"
  ; FFMA R10, R57, R38, R10
  %".3552" = load float, ptr %"R57_Float32"
  %".3553" = load float, ptr %"R38_Float32"
  %".3554" = load float, ptr %"R10_Float32"
  %"fmul.183" = fmul float %".3552", %".3553"
  %"fadd.158" = fadd float %"fmul.183", %".3554"
  store float %"fadd.158", ptr %"R10_Float32"
  ; FFMA R45, R38, R59, R45
  %".3557" = load float, ptr %"R38_Float32"
  %".3558" = load float, ptr %"R59_Float32"
  %".3559" = load float, ptr %"R45_Float32"
  %"fmul.184" = fmul float %".3557", %".3558"
  %"fadd.159" = fadd float %"fmul.184", %".3559"
  store float %"fadd.159", ptr %"R45_Float32"
  ; FFMA R10, R50, R41, R10
  %".3562" = load float, ptr %"R50_Float32"
  %".3563" = load float, ptr %"R41_Float32"
  %".3564" = load float, ptr %"R10_Float32"
  %"fmul.185" = fmul float %".3562", %".3563"
  %"fadd.160" = fadd float %"fmul.185", %".3564"
  store float %"fadd.160", ptr %"R10_Float32"
  ; FFMA R45, R41, R46, R45
  %".3567" = load float, ptr %"R41_Float32"
  %".3568" = load float, ptr %"R46_Float32"
  %".3569" = load float, ptr %"R45_Float32"
  %"fmul.186" = fmul float %".3567", %".3568"
  %"fadd.161" = fadd float %"fmul.186", %".3569"
  store float %"fadd.161", ptr %"R45_Float32"
  ; FFMA R10, R61, R40, R10
  %".3572" = load float, ptr %"R61_Float32"
  %".3573" = load float, ptr %"R40_Float32"
  %".3574" = load float, ptr %"R10_Float32"
  %"fmul.187" = fmul float %".3572", %".3573"
  %"fadd.162" = fadd float %"fmul.187", %".3574"
  store float %"fadd.162", ptr %"R10_Float32"
  ; FFMA R35, R40, R35, R45
  %".3577" = load float, ptr %"R40_Float32"
  %".3578" = load float, ptr %"R35_Float32"
  %".3579" = load float, ptr %"R45_Float32"
  %"fmul.188" = fmul float %".3577", %".3578"
  %"fadd.163" = fadd float %"fmul.188", %".3579"
  store float %"fadd.163", ptr %"R35_Float32"
  ; FFMA R6, R6, R39, R10
  %".3582" = load float, ptr %"R6_Float32"
  %".3583" = load float, ptr %"R39_Float32"
  %".3584" = load float, ptr %"R10_Float32"
  %"fmul.189" = fmul float %".3582", %".3583"
  %"fadd.164" = fadd float %"fmul.189", %".3584"
  store float %"fadd.164", ptr %"R6_Float32"
  ; FFMA R35, R39, R4, R35
  %".3587" = load float, ptr %"R39_Float32"
  %".3588" = load float, ptr %"R4_Float32"
  %".3589" = load float, ptr %"R35_Float32"
  %"fmul.190" = fmul float %".3587", %".3588"
  %"fadd.165" = fadd float %"fmul.190", %".3589"
  store float %"fadd.165", ptr %"R35_Float32"
  ; FFMA R5, R5, R44, R6
  %".3592" = load float, ptr %"R5_Float32"
  %".3593" = load float, ptr %"R44_Float32"
  %".3594" = load float, ptr %"R6_Float32"
  %"fmul.191" = fmul float %".3592", %".3593"
  %"fadd.166" = fadd float %"fmul.191", %".3594"
  store float %"fadd.166", ptr %"R5_Float32"
  ; FFMA R60, R44, R60, R35
  %".3597" = load float, ptr %"R44_Float32"
  %".3598" = load float, ptr %"R60_Float32"
  %".3599" = load float, ptr %"R35_Float32"
  %"fmul.192" = fmul float %".3597", %".3598"
  %"fadd.167" = fadd float %"fmul.192", %".3599"
  store float %"fadd.167", ptr %"R60_Float32"
  ; FFMA R5, R58, R55, R5
  %".3602" = load float, ptr %"R58_Float32"
  %".3603" = load float, ptr %"R55_Float32"
  %".3604" = load float, ptr %"R5_Float32"
  %"fmul.193" = fmul float %".3602", %".3603"
  %"fadd.168" = fadd float %"fmul.193", %".3604"
  store float %"fadd.168", ptr %"R5_Float32"
  ; FFMA R5, R54, R53, R5
  %".3607" = load float, ptr %"R54_Float32"
  %".3608" = load float, ptr %"R53_Float32"
  %".3609" = load float, ptr %"R5_Float32"
  %"fmul.194" = fmul float %".3607", %".3608"
  %"fadd.169" = fadd float %"fmul.194", %".3609"
  store float %"fadd.169", ptr %"R5_Float32"
  ; FFMA R37, R55, R37, R60
  %".3612" = load float, ptr %"R55_Float32"
  %".3613" = load float, ptr %"R37_Float32"
  %".3614" = load float, ptr %"R60_Float32"
  %"fmul.195" = fmul float %".3612", %".3613"
  %"fadd.170" = fadd float %"fmul.195", %".3614"
  store float %"fadd.170", ptr %"R37_Float32"
  ; FFMA R37, R53, R42, R37
  %".3617" = load float, ptr %"R53_Float32"
  %".3618" = load float, ptr %"R42_Float32"
  %".3619" = load float, ptr %"R37_Float32"
  %"fmul.196" = fmul float %".3617", %".3618"
  %"fadd.171" = fadd float %"fmul.196", %".3619"
  store float %"fadd.171", ptr %"R37_Float32"
  ; FFMA R5, R7, R52, R5
  %".3622" = load float, ptr %"R7_Float32"
  %".3623" = load float, ptr %"R52_Float32"
  %".3624" = load float, ptr %"R5_Float32"
  %"fmul.197" = fmul float %".3622", %".3623"
  %"fadd.172" = fadd float %"fmul.197", %".3624"
  store float %"fadd.172", ptr %"R5_Float32"
  ; FFMA R9, R52, R9, R37
  %".3627" = load float, ptr %"R52_Float32"
  %".3628" = load float, ptr %"R9_Float32"
  %".3629" = load float, ptr %"R37_Float32"
  %"fmul.198" = fmul float %".3627", %".3628"
  %"fadd.173" = fadd float %"fmul.198", %".3629"
  store float %"fadd.173", ptr %"R9_Float32"
  ; FFMA R44, R13, R56, R5
  %".3632" = load float, ptr %"R13_Float32"
  %".3633" = load float, ptr %"R56_Float32"
  %".3634" = load float, ptr %"R5_Float32"
  %"fmul.199" = fmul float %".3632", %".3633"
  %"fadd.174" = fadd float %"fmul.199", %".3634"
  store float %"fadd.174", ptr %"R44_Float32"
  ; FFMA R56, R56, R8, R9
  %".3637" = load float, ptr %"R56_Float32"
  %".3638" = load float, ptr %"R8_Float32"
  %".3639" = load float, ptr %"R9_Float32"
  %"fmul.200" = fmul float %".3637", %".3638"
  %"fadd.175" = fadd float %"fmul.200", %".3639"
  store float %"fadd.175", ptr %"R56_Float32"
  ; @P1 BRA `(.L_x_30)
  %".3642" = load i1, ptr %"P1_Bool"
  %".3643" = icmp ne i1 %".3642", 1
  br i1 %".3643", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".3646" = load i32, ptr %"R22_Int32"
  %".3647" = load i1, ptr %"PT_Bool"
  %"cmp.38" = icmp sgt i32 %".3646", 4
  %".3648" = and i1 %"cmp.38", %".3647"
  ; @!P1 BRA `(.L_x_31)
  %".3650" = load i1, ptr %"P1_Bool"
  %".3651" = icmp eq i1 %".3650", 1
  br i1 %".3651", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".3654" = load i32, ptr %"R0_Int32"
  %".3655" = load i32, ptr %"R23_Int32"
  %"add.218" = add i32 %".3654", %".3655"
  %"add.219" = add i32 %"add.218", 0
  store i32 %"add.219", ptr %"R5_Int32"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25_Int32"
  ; LEA R13, R2.reuse, R5, 0x2
  %".3660" = load i32, ptr %"R2_Int32"
  %".3661" = load i32, ptr %"R5_Int32"
  %"shl.235" = shl i32 %".3660", 2
  %"add.220" = add i32 %"shl.235", %".3661"
  store i32 %"add.220", ptr %"R13_Int32"
  ; IMAD R12, R2, 0x3, R5
  %".3664" = load i32, ptr %"R2_Int32"
  %".3665" = load i32, ptr %"R5_Int32"
  %"mul.75" = mul i32 %".3664", 3
  %"add.221" = add i32 %"mul.75", %".3665"
  store i32 %"add.221", ptr %"R12_Int32"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".3668" = load i32, ptr %"R23_Int32"
  %"add.222" = add i32 %".3668", 4
  %"add.223" = add i32 %"add.222", 0
  store i32 %"add.223", ptr %"R6_Int32"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".3671" = load i32, ptr %"R23_Int32"
  %".3672" = load i32, ptr %"R25_Int32"
  %"mul.76" = mul i32 %".3671", %".3672"
  %"add.224" = add i32 %"mul.76", %"Arg_3"
  store i32 %"add.224", ptr %"R8_Int32"
  ; IADD3 R24, R13, 0x4, RZ
  %".3675" = load i32, ptr %"R13_Int32"
  %"add.225" = add i32 %".3675", 4
  %"add.226" = add i32 %"add.225", 0
  store i32 %"add.226", ptr %"R24_Int32"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".3678" = load i32, ptr %"R12_Int32"
  %".3679" = load i32, ptr %"R25_Int32"
  %"mul.77" = mul i32 %".3678", %".3679"
  %"add.227" = add i32 %"mul.77", %"Arg_4"
  store i32 %"add.227", ptr %"R4_Int32"
  ; IADD3 R12, R12, 0x4, RZ
  %".3682" = load i32, ptr %"R12_Int32"
  %"add.228" = add i32 %".3682", 4
  %"add.229" = add i32 %"add.228", 0
  store i32 %"add.229", ptr %"R12_Int32"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".3685" = load i32, ptr %"R13_Int32"
  %".3686" = load i32, ptr %"R25_Int32"
  %"mul.78" = mul i32 %".3685", %".3686"
  %"add.230" = add i32 %"mul.78", %"Arg_4"
  store i32 %"add.230", ptr %"R10_Int32"
  ; LDG.E.SYS R43, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3689" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.464" = zext ptr %".3689" to i64
  %".3690" = load ptr, ptr %"R9_Float32"
  %"zext.465" = zext ptr %".3690" to i64
  %"shl.236" = shl i64 %"zext.465", 32
  %"or.260" = or i64 %"shl.236", %"zext.464"
  %".3691" = add i64 %"or.260", 0
  %"for_LDG.235" = inttoptr i64 %".3691" to ptr
  %".3692" = load float, ptr %"for_LDG.235"
  store float %".3692", ptr %"R43_Float32"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".3695" = load i32, ptr %"R6_Int32"
  %".3696" = load i32, ptr %"R25_Int32"
  %"mul.79" = mul i32 %".3695", %".3696"
  %"add.231" = add i32 %"mul.79", %"Arg_3"
  store i32 %"add.231", ptr %"R6_Int32"
  ; LDG.E.SYS R52, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3699" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.466" = zext ptr %".3699" to i64
  %".3700" = load ptr, ptr %"R5_Int32"
  %"zext.467" = zext ptr %".3700" to i64
  %"shl.237" = shl i64 %"zext.467", 32
  %"or.261" = or i64 %"shl.237", %"zext.466"
  %".3701" = add i64 %"or.261", 0
  %"for_LDG.236" = inttoptr i64 %".3701" to ptr
  %".3702" = load float, ptr %"for_LDG.236"
  store float %".3702", ptr %"R52_Float32"
  ; LDG.E.SYS R38, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3705" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.468" = zext ptr %".3705" to i64
  %".3706" = load ptr, ptr %"R11_Int32"
  %"zext.469" = zext ptr %".3706" to i64
  %"shl.238" = shl i64 %"zext.469", 32
  %"or.262" = or i64 %"shl.238", %"zext.468"
  %".3707" = add i64 %"or.262", 0
  %"for_LDG.237" = inttoptr i64 %".3707" to ptr
  %".3708" = load float, ptr %"for_LDG.237"
  store float %".3708", ptr %"R38_Float32"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".3711" = load i32, ptr %"R12_Int32"
  %".3712" = load i32, ptr %"R25_Int32"
  %"mul.80" = mul i32 %".3711", %".3712"
  %"add.232" = add i32 %"mul.80", %"Arg_4"
  store i32 %"add.232", ptr %"R12_Int32"
  ; LDG.E.SYS R36, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3715" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.470" = zext ptr %".3715" to i64
  %".3716" = load ptr, ptr %"R9_Float32"
  %"zext.471" = zext ptr %".3716" to i64
  %"shl.239" = shl i64 %"zext.471", 32
  %"or.263" = or i64 %"shl.239", %"zext.470"
  %".3717" = add i64 %"or.263", 4
  %"for_LDG.238" = inttoptr i64 %".3717" to ptr
  %".3718" = load float, ptr %"for_LDG.238"
  store float %".3718", ptr %"R36_Float32"
  ; LDG.E.SYS R41, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3721" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.472" = zext ptr %".3721" to i64
  %".3722" = load ptr, ptr %"R5_Int32"
  %"zext.473" = zext ptr %".3722" to i64
  %"shl.240" = shl i64 %"zext.473", 32
  %"or.264" = or i64 %"shl.240", %"zext.472"
  %".3723" = add i64 %"or.264", 4
  %"for_LDG.239" = inttoptr i64 %".3723" to ptr
  %".3724" = load float, ptr %"for_LDG.239"
  store float %".3724", ptr %"R41_Float32"
  ; LDG.E.SYS R39, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3727" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.474" = zext ptr %".3727" to i64
  %".3728" = load ptr, ptr %"R11_Int32"
  %"zext.475" = zext ptr %".3728" to i64
  %"shl.241" = shl i64 %"zext.475", 32
  %"or.265" = or i64 %"shl.241", %"zext.474"
  %".3729" = add i64 %"or.265", 4
  %"for_LDG.240" = inttoptr i64 %".3729" to ptr
  %".3730" = load float, ptr %"for_LDG.240"
  store float %".3730", ptr %"R39_Float32"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".3733" = load i32, ptr %"R24_Int32"
  %".3734" = load i32, ptr %"R25_Int32"
  %"mul.81" = mul i32 %".3733", %".3734"
  %"add.233" = add i32 %"mul.81", %"Arg_4"
  store i32 %"add.233", ptr %"R24_Int32"
  ; LDG.E.SYS R34, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3737" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.476" = zext ptr %".3737" to i64
  %".3738" = load ptr, ptr %"R9_Float32"
  %"zext.477" = zext ptr %".3738" to i64
  %"shl.242" = shl i64 %"zext.477", 32
  %"or.266" = or i64 %"shl.242", %"zext.476"
  %".3739" = add i64 %"or.266", 8
  %"for_LDG.241" = inttoptr i64 %".3739" to ptr
  %".3740" = load float, ptr %"for_LDG.241"
  store float %".3740", ptr %"R34_Float32"
  ; LDG.E.SYS R37, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3743" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.478" = zext ptr %".3743" to i64
  %".3744" = load ptr, ptr %"R5_Int32"
  %"zext.479" = zext ptr %".3744" to i64
  %"shl.243" = shl i64 %"zext.479", 32
  %"or.267" = or i64 %"shl.243", %"zext.478"
  %".3745" = add i64 %"or.267", 8
  %"for_LDG.242" = inttoptr i64 %".3745" to ptr
  %".3746" = load float, ptr %"for_LDG.242"
  store float %".3746", ptr %"R37_Float32"
  ; LDG.E.SYS R35, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3749" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.480" = zext ptr %".3749" to i64
  %".3750" = load ptr, ptr %"R11_Int32"
  %"zext.481" = zext ptr %".3750" to i64
  %"shl.244" = shl i64 %"zext.481", 32
  %"or.268" = or i64 %"shl.244", %"zext.480"
  %".3751" = add i64 %"or.268", 8
  %"for_LDG.243" = inttoptr i64 %".3751" to ptr
  %".3752" = load float, ptr %"for_LDG.243"
  store float %".3752", ptr %"R35_Float32"
  ; LDG.E.SYS R40, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3755" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.482" = zext ptr %".3755" to i64
  %".3756" = load ptr, ptr %"R9_Float32"
  %"zext.483" = zext ptr %".3756" to i64
  %"shl.245" = shl i64 %"zext.483", 32
  %"or.269" = or i64 %"shl.245", %"zext.482"
  %".3757" = add i64 %"or.269", 12
  %"for_LDG.244" = inttoptr i64 %".3757" to ptr
  %".3758" = load float, ptr %"for_LDG.244"
  store float %".3758", ptr %"R40_Float32"
  ; LDG.E.SYS R45, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3761" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.484" = zext ptr %".3761" to i64
  %".3762" = load ptr, ptr %"R5_Int32"
  %"zext.485" = zext ptr %".3762" to i64
  %"shl.246" = shl i64 %"zext.485", 32
  %"or.270" = or i64 %"shl.246", %"zext.484"
  %".3763" = add i64 %"or.270", 12
  %"for_LDG.245" = inttoptr i64 %".3763" to ptr
  %".3764" = load float, ptr %"for_LDG.245"
  store float %".3764", ptr %"R45_Float32"
  ; LDG.E.SYS R59, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3767" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.486" = zext ptr %".3767" to i64
  %".3768" = load ptr, ptr %"R11_Int32"
  %"zext.487" = zext ptr %".3768" to i64
  %"shl.247" = shl i64 %"zext.487", 32
  %"or.271" = or i64 %"shl.247", %"zext.486"
  %".3769" = add i64 %"or.271", 12
  %"for_LDG.246" = inttoptr i64 %".3769" to ptr
  %".3770" = load float, ptr %"for_LDG.246"
  store float %".3770", ptr %"R59_Float32"
  ; LDG.E.SYS R50, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3773" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.488" = zext ptr %".3773" to i64
  %".3774" = load ptr, ptr %"R7_Float32"
  %"zext.489" = zext ptr %".3774" to i64
  %"shl.248" = shl i64 %"zext.489", 32
  %"or.272" = or i64 %"shl.248", %"zext.488"
  %".3775" = add i64 %"or.272", 0
  %"for_LDG.247" = inttoptr i64 %".3775" to ptr
  %".3776" = load float, ptr %"for_LDG.247"
  store float %".3776", ptr %"R50_Float32"
  ; LDG.E.SYS R57, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3779" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.490" = zext ptr %".3779" to i64
  %".3780" = load ptr, ptr %"R13_Int32"
  %"zext.491" = zext ptr %".3780" to i64
  %"shl.249" = shl i64 %"zext.491", 32
  %"or.273" = or i64 %"shl.249", %"zext.490"
  %".3781" = add i64 %"or.273", 0
  %"for_LDG.248" = inttoptr i64 %".3781" to ptr
  %".3782" = load float, ptr %"for_LDG.248"
  store float %".3782", ptr %"R57_Float32"
  ; LDG.E.SYS R55, [R24]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3785" = load ptr, ptr %"R24_Float32_PTR"
  %"zext.492" = zext ptr %".3785" to i64
  %".3786" = load ptr, ptr %"R25_Int32"
  %"zext.493" = zext ptr %".3786" to i64
  %"shl.250" = shl i64 %"zext.493", 32
  %"or.274" = or i64 %"shl.250", %"zext.492"
  %".3787" = add i64 %"or.274", 0
  %"for_LDG.249" = inttoptr i64 %".3787" to ptr
  %".3788" = load float, ptr %"for_LDG.249"
  store float %".3788", ptr %"R55_Float32"
  ; LDG.E.SYS R46, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3791" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.494" = zext ptr %".3791" to i64
  %".3792" = load ptr, ptr %"R7_Float32"
  %"zext.495" = zext ptr %".3792" to i64
  %"shl.251" = shl i64 %"zext.495", 32
  %"or.275" = or i64 %"shl.251", %"zext.494"
  %".3793" = add i64 %"or.275", 4
  %"for_LDG.250" = inttoptr i64 %".3793" to ptr
  %".3794" = load float, ptr %"for_LDG.250"
  store float %".3794", ptr %"R46_Float32"
  ; LDG.E.SYS R53, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3797" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.496" = zext ptr %".3797" to i64
  %".3798" = load ptr, ptr %"R13_Int32"
  %"zext.497" = zext ptr %".3798" to i64
  %"shl.252" = shl i64 %"zext.497", 32
  %"or.276" = or i64 %"shl.252", %"zext.496"
  %".3799" = add i64 %"or.276", 4
  %"for_LDG.251" = inttoptr i64 %".3799" to ptr
  %".3800" = load float, ptr %"for_LDG.251"
  store float %".3800", ptr %"R53_Float32"
  ; LDG.E.SYS R51, [R24+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3803" = load ptr, ptr %"R24_Float32_PTR"
  %"zext.498" = zext ptr %".3803" to i64
  %".3804" = load ptr, ptr %"R25_Int32"
  %"zext.499" = zext ptr %".3804" to i64
  %"shl.253" = shl i64 %"zext.499", 32
  %"or.277" = or i64 %"shl.253", %"zext.498"
  %".3805" = add i64 %"or.277", 4
  %"for_LDG.252" = inttoptr i64 %".3805" to ptr
  %".3806" = load float, ptr %"for_LDG.252"
  store float %".3806", ptr %"R51_Float32"
  ; LDG.E.SYS R42, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3809" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.500" = zext ptr %".3809" to i64
  %".3810" = load ptr, ptr %"R7_Float32"
  %"zext.501" = zext ptr %".3810" to i64
  %"shl.254" = shl i64 %"zext.501", 32
  %"or.278" = or i64 %"shl.254", %"zext.500"
  %".3811" = add i64 %"or.278", 8
  %"for_LDG.253" = inttoptr i64 %".3811" to ptr
  %".3812" = load float, ptr %"for_LDG.253"
  store float %".3812", ptr %"R42_Float32"
  ; LDG.E.SYS R47, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3815" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.502" = zext ptr %".3815" to i64
  %".3816" = load ptr, ptr %"R13_Int32"
  %"zext.503" = zext ptr %".3816" to i64
  %"shl.255" = shl i64 %"zext.503", 32
  %"or.279" = or i64 %"shl.255", %"zext.502"
  %".3817" = add i64 %"or.279", 8
  %"for_LDG.254" = inttoptr i64 %".3817" to ptr
  %".3818" = load float, ptr %"for_LDG.254"
  store float %".3818", ptr %"R47_Float32"
  ; LDG.E.SYS R9, [R24+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3821" = load ptr, ptr %"R24_Float32_PTR"
  %"zext.504" = zext ptr %".3821" to i64
  %".3822" = load ptr, ptr %"R25_Int32"
  %"zext.505" = zext ptr %".3822" to i64
  %"shl.256" = shl i64 %"zext.505", 32
  %"or.280" = or i64 %"shl.256", %"zext.504"
  %".3823" = add i64 %"or.280", 8
  %"for_LDG.255" = inttoptr i64 %".3823" to ptr
  %".3824" = load float, ptr %"for_LDG.255"
  store float %".3824", ptr %"R9_Float32"
  ; LDG.E.SYS R4, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3827" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.506" = zext ptr %".3827" to i64
  %".3828" = load ptr, ptr %"R7_Float32"
  %"zext.507" = zext ptr %".3828" to i64
  %"shl.257" = shl i64 %"zext.507", 32
  %"or.281" = or i64 %"shl.257", %"zext.506"
  %".3829" = add i64 %"or.281", 12
  %"for_LDG.256" = inttoptr i64 %".3829" to ptr
  %".3830" = load float, ptr %"for_LDG.256"
  store float %".3830", ptr %"R4_Float32"
  ; LDG.E.SYS R5, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3833" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.508" = zext ptr %".3833" to i64
  %".3834" = load ptr, ptr %"R13_Int32"
  %"zext.509" = zext ptr %".3834" to i64
  %"shl.258" = shl i64 %"zext.509", 32
  %"or.282" = or i64 %"shl.258", %"zext.508"
  %".3835" = add i64 %"or.282", 12
  %"for_LDG.257" = inttoptr i64 %".3835" to ptr
  %".3836" = load float, ptr %"for_LDG.257"
  store float %".3836", ptr %"R5_Float32"
  ; LDG.E.SYS R11, [R24+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3839" = load ptr, ptr %"R24_Float32_PTR"
  %"zext.510" = zext ptr %".3839" to i64
  %".3840" = load ptr, ptr %"R25_Int32"
  %"zext.511" = zext ptr %".3840" to i64
  %"shl.259" = shl i64 %"zext.511", 32
  %"or.283" = or i64 %"shl.259", %"zext.510"
  %".3841" = add i64 %"or.283", 12
  %"for_LDG.258" = inttoptr i64 %".3841" to ptr
  %".3842" = load float, ptr %"for_LDG.258"
  store float %".3842", ptr %"R11_Float32"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3845" = xor i1 1, 1
  %".3846" = and i1 %".3845", 1
  %".3847" = and i1 %".3846", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".3849" = load i32, ptr %"R22_Int32"
  %"add.234" = add i32 %".3849", -8
  %"add.235" = add i32 %"add.234", 0
  store i32 %"add.235", ptr %"R22_Int32"
  ; IADD3 R23, R23, 0x8, RZ
  %".3852" = load i32, ptr %"R23_Int32"
  %"add.236" = add i32 %".3852", 8
  %"add.237" = add i32 %"add.236", 0
  store i32 %"add.237", ptr %"R23_Int32"
  ; FFMA R52, R52, R43, R44
  %".3855" = load float, ptr %"R52_Float32"
  %".3856" = load float, ptr %"R43_Float32"
  %".3857" = load float, ptr %"R44_Float32"
  %"fmul.201" = fmul float %".3855", %".3856"
  %"fadd.176" = fadd float %"fmul.201", %".3857"
  store float %"fadd.176", ptr %"R52_Float32"
  ; FFMA R38, R43, R38, R56
  %".3860" = load float, ptr %"R43_Float32"
  %".3861" = load float, ptr %"R38_Float32"
  %".3862" = load float, ptr %"R56_Float32"
  %"fmul.202" = fmul float %".3860", %".3861"
  %"fadd.177" = fadd float %"fmul.202", %".3862"
  store float %"fadd.177", ptr %"R38_Float32"
  ; FFMA R41, R41, R36, R52
  %".3865" = load float, ptr %"R41_Float32"
  %".3866" = load float, ptr %"R36_Float32"
  %".3867" = load float, ptr %"R52_Float32"
  %"fmul.203" = fmul float %".3865", %".3866"
  %"fadd.178" = fadd float %"fmul.203", %".3867"
  store float %"fadd.178", ptr %"R41_Float32"
  ; FFMA R38, R36, R39, R38
  %".3870" = load float, ptr %"R36_Float32"
  %".3871" = load float, ptr %"R39_Float32"
  %".3872" = load float, ptr %"R38_Float32"
  %"fmul.204" = fmul float %".3870", %".3871"
  %"fadd.179" = fadd float %"fmul.204", %".3872"
  store float %"fadd.179", ptr %"R38_Float32"
  ; FFMA R37, R37, R34, R41
  %".3875" = load float, ptr %"R37_Float32"
  %".3876" = load float, ptr %"R34_Float32"
  %".3877" = load float, ptr %"R41_Float32"
  %"fmul.205" = fmul float %".3875", %".3876"
  %"fadd.180" = fadd float %"fmul.205", %".3877"
  store float %"fadd.180", ptr %"R37_Float32"
  ; FFMA R35, R34, R35, R38
  %".3880" = load float, ptr %"R34_Float32"
  %".3881" = load float, ptr %"R35_Float32"
  %".3882" = load float, ptr %"R38_Float32"
  %"fmul.206" = fmul float %".3880", %".3881"
  %"fadd.181" = fadd float %"fmul.206", %".3882"
  store float %"fadd.181", ptr %"R35_Float32"
  ; FFMA R37, R45, R40, R37
  %".3885" = load float, ptr %"R45_Float32"
  %".3886" = load float, ptr %"R40_Float32"
  %".3887" = load float, ptr %"R37_Float32"
  %"fmul.207" = fmul float %".3885", %".3886"
  %"fadd.182" = fadd float %"fmul.207", %".3887"
  store float %"fadd.182", ptr %"R37_Float32"
  ; FFMA R35, R40, R59, R35
  %".3890" = load float, ptr %"R40_Float32"
  %".3891" = load float, ptr %"R59_Float32"
  %".3892" = load float, ptr %"R35_Float32"
  %"fmul.208" = fmul float %".3890", %".3891"
  %"fadd.183" = fadd float %"fmul.208", %".3892"
  store float %"fadd.183", ptr %"R35_Float32"
  ; FFMA R37, R57, R50, R37
  %".3895" = load float, ptr %"R57_Float32"
  %".3896" = load float, ptr %"R50_Float32"
  %".3897" = load float, ptr %"R37_Float32"
  %"fmul.209" = fmul float %".3895", %".3896"
  %"fadd.184" = fadd float %"fmul.209", %".3897"
  store float %"fadd.184", ptr %"R37_Float32"
  ; FFMA R35, R50, R55, R35
  %".3900" = load float, ptr %"R50_Float32"
  %".3901" = load float, ptr %"R55_Float32"
  %".3902" = load float, ptr %"R35_Float32"
  %"fmul.210" = fmul float %".3900", %".3901"
  %"fadd.185" = fadd float %"fmul.210", %".3902"
  store float %"fadd.185", ptr %"R35_Float32"
  ; FFMA R37, R53, R46, R37
  %".3905" = load float, ptr %"R53_Float32"
  %".3906" = load float, ptr %"R46_Float32"
  %".3907" = load float, ptr %"R37_Float32"
  %"fmul.211" = fmul float %".3905", %".3906"
  %"fadd.186" = fadd float %"fmul.211", %".3907"
  store float %"fadd.186", ptr %"R37_Float32"
  ; FFMA R35, R46, R51, R35
  %".3910" = load float, ptr %"R46_Float32"
  %".3911" = load float, ptr %"R51_Float32"
  %".3912" = load float, ptr %"R35_Float32"
  %"fmul.212" = fmul float %".3910", %".3911"
  %"fadd.187" = fadd float %"fmul.212", %".3912"
  store float %"fadd.187", ptr %"R35_Float32"
  ; FFMA R37, R47, R42, R37
  %".3915" = load float, ptr %"R47_Float32"
  %".3916" = load float, ptr %"R42_Float32"
  %".3917" = load float, ptr %"R37_Float32"
  %"fmul.213" = fmul float %".3915", %".3916"
  %"fadd.188" = fadd float %"fmul.213", %".3917"
  store float %"fadd.188", ptr %"R37_Float32"
  ; FFMA R9, R42, R9, R35
  %".3920" = load float, ptr %"R42_Float32"
  %".3921" = load float, ptr %"R9_Float32"
  %".3922" = load float, ptr %"R35_Float32"
  %"fmul.214" = fmul float %".3920", %".3921"
  %"fadd.189" = fadd float %"fmul.214", %".3922"
  store float %"fadd.189", ptr %"R9_Float32"
  ; FFMA R44, R5, R4, R37
  %".3925" = load float, ptr %"R5_Float32"
  %".3926" = load float, ptr %"R4_Float32"
  %".3927" = load float, ptr %"R37_Float32"
  %"fmul.215" = fmul float %".3925", %".3926"
  %"fadd.190" = fadd float %"fmul.215", %".3927"
  store float %"fadd.190", ptr %"R44_Float32"
  ; FFMA R56, R4, R11, R9
  %".3930" = load float, ptr %"R4_Float32"
  %".3931" = load float, ptr %"R11_Float32"
  %".3932" = load float, ptr %"R9_Float32"
  %"fmul.216" = fmul float %".3930", %".3931"
  %"fadd.191" = fadd float %"fmul.216", %".3932"
  store float %"fadd.191", ptr %"R56_Float32"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".3935" = load i32, ptr %"R22_Int32"
  %".3936" = load i1, ptr %"PT_Bool"
  %"cmp.39" = icmp ne i32 %".3935", 0
  %".3937" = or i1 %"cmp.39", %".3936"
  ; @!P0 BRA `(.L_x_27)
  %".3939" = load i1, ptr %"P0_Bool"
  %".3940" = icmp eq i1 %".3939", 1
  br i1 %".3940", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".3943" = load i32, ptr %"R0_Int32"
  %".3944" = load i32, ptr %"R23_Int32"
  %"add.238" = add i32 %".3943", %".3944"
  %"add.239" = add i32 %"add.238", 0
  store i32 %"add.239", ptr %"R5_Int32"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6_Int32"
  ; LEA R11, R2.reuse, R5, 0x2
  %".3949" = load i32, ptr %"R2_Int32"
  %".3950" = load i32, ptr %"R5_Int32"
  %"shl.260" = shl i32 %".3949", 2
  %"add.240" = add i32 %"shl.260", %".3950"
  store i32 %"add.240", ptr %"R11_Int32"
  ; IMAD R7, R2, 0x3, R5
  %".3953" = load i32, ptr %"R2_Int32"
  %".3954" = load i32, ptr %"R5_Int32"
  %"mul.82" = mul i32 %".3953", 3
  %"add.241" = add i32 %"mul.82", %".3954"
  store i32 %"add.241", ptr %"R7_Int32"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".3957" = load i32, ptr %"R23_Int32"
  %".3958" = load i32, ptr %"R6_Int32"
  %"mul.83" = mul i32 %".3957", %".3958"
  %"add.242" = add i32 %"mul.83", %"Arg_3"
  store i32 %"add.242", ptr %"R8_Int32"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".3961" = load i32, ptr %"R7_Int32"
  %".3962" = load i32, ptr %"R6_Int32"
  %"mul.84" = mul i32 %".3961", %".3962"
  %"add.243" = add i32 %"mul.84", %"Arg_4"
  store i32 %"add.243", ptr %"R4_Int32"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".3965" = load i32, ptr %"R11_Int32"
  %".3966" = load i32, ptr %"R6_Int32"
  %"mul.85" = mul i32 %".3965", %".3966"
  %"add.244" = add i32 %"mul.85", %"Arg_4"
  store i32 %"add.244", ptr %"R6_Int32"
  ; LDG.E.SYS R13, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3969" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.512" = zext ptr %".3969" to i64
  %".3970" = load ptr, ptr %"R9_Float32"
  %"zext.513" = zext ptr %".3970" to i64
  %"shl.261" = shl i64 %"zext.513", 32
  %"or.284" = or i64 %"shl.261", %"zext.512"
  %".3971" = add i64 %"or.284", 0
  %"for_LDG.259" = inttoptr i64 %".3971" to ptr
  %".3972" = load float, ptr %"for_LDG.259"
  store float %".3972", ptr %"R13_Float32"
  ; LDG.E.SYS R11, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3975" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.514" = zext ptr %".3975" to i64
  %".3976" = load ptr, ptr %"R5_Int32"
  %"zext.515" = zext ptr %".3976" to i64
  %"shl.262" = shl i64 %"zext.515", 32
  %"or.285" = or i64 %"shl.262", %"zext.514"
  %".3977" = add i64 %"or.285", 0
  %"for_LDG.260" = inttoptr i64 %".3977" to ptr
  %".3978" = load float, ptr %"for_LDG.260"
  store float %".3978", ptr %"R11_Float32"
  ; LDG.E.SYS R10, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3981" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.516" = zext ptr %".3981" to i64
  %".3982" = load ptr, ptr %"R7_Int32"
  %"zext.517" = zext ptr %".3982" to i64
  %"shl.263" = shl i64 %"zext.517", 32
  %"or.286" = or i64 %"shl.263", %"zext.516"
  %".3983" = add i64 %"or.286", 0
  %"for_LDG.261" = inttoptr i64 %".3983" to ptr
  %".3984" = load float, ptr %"for_LDG.261"
  store float %".3984", ptr %"R10_Float32"
  ; LDG.E.SYS R25, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3987" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.518" = zext ptr %".3987" to i64
  %".3988" = load ptr, ptr %"R9_Float32"
  %"zext.519" = zext ptr %".3988" to i64
  %"shl.264" = shl i64 %"zext.519", 32
  %"or.287" = or i64 %"shl.264", %"zext.518"
  %".3989" = add i64 %"or.287", 4
  %"for_LDG.262" = inttoptr i64 %".3989" to ptr
  %".3990" = load float, ptr %"for_LDG.262"
  store float %".3990", ptr %"R25_Float32"
  ; LDG.E.SYS R12, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3993" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.520" = zext ptr %".3993" to i64
  %".3994" = load ptr, ptr %"R5_Int32"
  %"zext.521" = zext ptr %".3994" to i64
  %"shl.265" = shl i64 %"zext.521", 32
  %"or.288" = or i64 %"shl.265", %"zext.520"
  %".3995" = add i64 %"or.288", 4
  %"for_LDG.263" = inttoptr i64 %".3995" to ptr
  %".3996" = load float, ptr %"for_LDG.263"
  store float %".3996", ptr %"R12_Float32"
  ; LDG.E.SYS R24, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3999" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.522" = zext ptr %".3999" to i64
  %".4000" = load ptr, ptr %"R7_Int32"
  %"zext.523" = zext ptr %".4000" to i64
  %"shl.266" = shl i64 %"zext.523", 32
  %"or.289" = or i64 %"shl.266", %"zext.522"
  %".4001" = add i64 %"or.289", 4
  %"for_LDG.264" = inttoptr i64 %".4001" to ptr
  %".4002" = load float, ptr %"for_LDG.264"
  store float %".4002", ptr %"R24_Float32"
  ; LDG.E.SYS R35, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4005" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.524" = zext ptr %".4005" to i64
  %".4006" = load ptr, ptr %"R9_Float32"
  %"zext.525" = zext ptr %".4006" to i64
  %"shl.267" = shl i64 %"zext.525", 32
  %"or.290" = or i64 %"shl.267", %"zext.524"
  %".4007" = add i64 %"or.290", 8
  %"for_LDG.265" = inttoptr i64 %".4007" to ptr
  %".4008" = load float, ptr %"for_LDG.265"
  store float %".4008", ptr %"R35_Float32"
  ; LDG.E.SYS R34, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4011" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.526" = zext ptr %".4011" to i64
  %".4012" = load ptr, ptr %"R5_Int32"
  %"zext.527" = zext ptr %".4012" to i64
  %"shl.268" = shl i64 %"zext.527", 32
  %"or.291" = or i64 %"shl.268", %"zext.526"
  %".4013" = add i64 %"or.291", 8
  %"for_LDG.266" = inttoptr i64 %".4013" to ptr
  %".4014" = load float, ptr %"for_LDG.266"
  store float %".4014", ptr %"R34_Float32"
  ; LDG.E.SYS R36, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4017" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.528" = zext ptr %".4017" to i64
  %".4018" = load ptr, ptr %"R7_Int32"
  %"zext.529" = zext ptr %".4018" to i64
  %"shl.269" = shl i64 %"zext.529", 32
  %"or.292" = or i64 %"shl.269", %"zext.528"
  %".4019" = add i64 %"or.292", 8
  %"for_LDG.267" = inttoptr i64 %".4019" to ptr
  %".4020" = load float, ptr %"for_LDG.267"
  store float %".4020", ptr %"R36_Float32"
  ; LDG.E.SYS R37, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4023" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.530" = zext ptr %".4023" to i64
  %".4024" = load ptr, ptr %"R9_Float32"
  %"zext.531" = zext ptr %".4024" to i64
  %"shl.270" = shl i64 %"zext.531", 32
  %"or.293" = or i64 %"shl.270", %"zext.530"
  %".4025" = add i64 %"or.293", 12
  %"for_LDG.268" = inttoptr i64 %".4025" to ptr
  %".4026" = load float, ptr %"for_LDG.268"
  store float %".4026", ptr %"R37_Float32"
  ; LDG.E.SYS R38, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4029" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.532" = zext ptr %".4029" to i64
  %".4030" = load ptr, ptr %"R5_Int32"
  %"zext.533" = zext ptr %".4030" to i64
  %"shl.271" = shl i64 %"zext.533", 32
  %"or.294" = or i64 %"shl.271", %"zext.532"
  %".4031" = add i64 %"or.294", 12
  %"for_LDG.269" = inttoptr i64 %".4031" to ptr
  %".4032" = load float, ptr %"for_LDG.269"
  store float %".4032", ptr %"R38_Float32"
  ; LDG.E.SYS R39, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4035" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.534" = zext ptr %".4035" to i64
  %".4036" = load ptr, ptr %"R7_Int32"
  %"zext.535" = zext ptr %".4036" to i64
  %"shl.272" = shl i64 %"zext.535", 32
  %"or.295" = or i64 %"shl.272", %"zext.534"
  %".4037" = add i64 %"or.295", 12
  %"for_LDG.270" = inttoptr i64 %".4037" to ptr
  %".4038" = load float, ptr %"for_LDG.270"
  store float %".4038", ptr %"R39_Float32"
  ; IADD3 R22, R22, -0x4, RZ
  %".4041" = load i32, ptr %"R22_Int32"
  %"add.245" = add i32 %".4041", -4
  %"add.246" = add i32 %"add.245", 0
  store i32 %"add.246", ptr %"R22_Int32"
  ; IADD3 R23, R23, 0x4, RZ
  %".4044" = load i32, ptr %"R23_Int32"
  %"add.247" = add i32 %".4044", 4
  %"add.248" = add i32 %"add.247", 0
  store i32 %"add.248", ptr %"R23_Int32"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".4047" = load i32, ptr %"R22_Int32"
  %".4048" = load i1, ptr %"PT_Bool"
  %"cmp.40" = icmp ne i32 %".4047", 0
  %".4049" = and i1 %"cmp.40", %".4048"
  ; FFMA R11, R11, R13, R44
  %".4051" = load float, ptr %"R11_Float32"
  %".4052" = load float, ptr %"R13_Float32"
  %".4053" = load float, ptr %"R44_Float32"
  %"fmul.217" = fmul float %".4051", %".4052"
  %"fadd.192" = fadd float %"fmul.217", %".4053"
  store float %"fadd.192", ptr %"R11_Float32"
  ; FFMA R10, R13, R10, R56
  %".4056" = load float, ptr %"R13_Float32"
  %".4057" = load float, ptr %"R10_Float32"
  %".4058" = load float, ptr %"R56_Float32"
  %"fmul.218" = fmul float %".4056", %".4057"
  %"fadd.193" = fadd float %"fmul.218", %".4058"
  store float %"fadd.193", ptr %"R10_Float32"
  ; FFMA R11, R12, R25, R11
  %".4061" = load float, ptr %"R12_Float32"
  %".4062" = load float, ptr %"R25_Float32"
  %".4063" = load float, ptr %"R11_Float32"
  %"fmul.219" = fmul float %".4061", %".4062"
  %"fadd.194" = fadd float %"fmul.219", %".4063"
  store float %"fadd.194", ptr %"R11_Float32"
  ; FFMA R10, R25, R24, R10
  %".4066" = load float, ptr %"R25_Float32"
  %".4067" = load float, ptr %"R24_Float32"
  %".4068" = load float, ptr %"R10_Float32"
  %"fmul.220" = fmul float %".4066", %".4067"
  %"fadd.195" = fadd float %"fmul.220", %".4068"
  store float %"fadd.195", ptr %"R10_Float32"
  ; FFMA R11, R34, R35, R11
  %".4071" = load float, ptr %"R34_Float32"
  %".4072" = load float, ptr %"R35_Float32"
  %".4073" = load float, ptr %"R11_Float32"
  %"fmul.221" = fmul float %".4071", %".4072"
  %"fadd.196" = fadd float %"fmul.221", %".4073"
  store float %"fadd.196", ptr %"R11_Float32"
  ; FFMA R10, R35, R36, R10
  %".4076" = load float, ptr %"R35_Float32"
  %".4077" = load float, ptr %"R36_Float32"
  %".4078" = load float, ptr %"R10_Float32"
  %"fmul.222" = fmul float %".4076", %".4077"
  %"fadd.197" = fadd float %"fmul.222", %".4078"
  store float %"fadd.197", ptr %"R10_Float32"
  ; FFMA R44, R38, R37, R11
  %".4081" = load float, ptr %"R38_Float32"
  %".4082" = load float, ptr %"R37_Float32"
  %".4083" = load float, ptr %"R11_Float32"
  %"fmul.223" = fmul float %".4081", %".4082"
  %"fadd.198" = fadd float %"fmul.223", %".4083"
  store float %"fadd.198", ptr %"R44_Float32"
  ; FFMA R56, R37, R39, R10
  %".4086" = load float, ptr %"R37_Float32"
  %".4087" = load float, ptr %"R39_Float32"
  %".4088" = load float, ptr %"R10_Float32"
  %"fmul.224" = fmul float %".4086", %".4087"
  %"fadd.199" = fadd float %"fmul.224", %".4088"
  store float %"fadd.199", ptr %"R56_Float32"
  ; @P0 BRA `(.L_x_28)
  %".4091" = load i1, ptr %"P0_Bool"
  %".4092" = icmp ne i1 %".4091", 1
  br i1 %".4092", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".4095" = load i32, ptr %"R48_Int32"
  %".4096" = load i1, ptr %"PT_Bool"
  %"cmp.41" = icmp ne i32 %".4095", 0
  %".4097" = and i1 %"cmp.41", %".4096"
  ; @!P0 BRA `(.L_x_26)
  %".4099" = load i1, ptr %"P0_Bool"
  %".4100" = icmp eq i1 %".4099", 1
  br i1 %".4100", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".4103" = load i32, ptr %"R0_Int32"
  %".4104" = load i32, ptr %"R23_Int32"
  %"add.249" = add i32 %".4103", %".4104"
  %"add.250" = add i32 %"add.249", 0
  store i32 %"add.250", ptr %"R5_Int32"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9_Int32"
  ; LEA R8, R2.reuse, R5, 0x2
  %".4109" = load i32, ptr %"R2_Int32"
  %".4110" = load i32, ptr %"R5_Int32"
  %"shl.273" = shl i32 %".4109", 2
  %"add.251" = add i32 %"shl.273", %".4110"
  store i32 %"add.251", ptr %"R8_Int32"
  ; IMAD R6, R2, 0x3, R5
  %".4113" = load i32, ptr %"R2_Int32"
  %".4114" = load i32, ptr %"R5_Int32"
  %"mul.86" = mul i32 %".4113", 3
  %"add.252" = add i32 %"mul.86", %".4114"
  store i32 %"add.252", ptr %"R6_Int32"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".4117" = load i32, ptr %"R23_Int32"
  %".4118" = load i32, ptr %"R9_Int32"
  %"mul.87" = mul i32 %".4117", %".4118"
  %"add.253" = add i32 %"mul.87", %"Arg_3"
  store i32 %"add.253", ptr %"R4_Int32"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".4121" = load i32, ptr %"R6_Int32"
  %".4122" = load i32, ptr %"R9_Int32"
  %"mul.88" = mul i32 %".4121", %".4122"
  %"add.254" = add i32 %"mul.88", %"Arg_4"
  store i32 %"add.254", ptr %"R6_Int32"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".4125" = load i32, ptr %"R8_Int32"
  %".4126" = load i32, ptr %"R9_Int32"
  %"mul.89" = mul i32 %".4125", %".4126"
  %"add.255" = add i32 %"mul.89", %"Arg_4"
  store i32 %"add.255", ptr %"R8_Int32"
  ; LDG.E.SYS R13, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4129" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.536" = zext ptr %".4129" to i64
  %".4130" = load ptr, ptr %"R5_Int32"
  %"zext.537" = zext ptr %".4130" to i64
  %"shl.274" = shl i64 %"zext.537", 32
  %"or.296" = or i64 %"shl.274", %"zext.536"
  %".4131" = add i64 %"or.296", 0
  %"for_LDG.271" = inttoptr i64 %".4131" to ptr
  %".4132" = load float, ptr %"for_LDG.271"
  store float %".4132", ptr %"R13_Float32"
  ; LDG.E.SYS R11, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4135" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.538" = zext ptr %".4135" to i64
  %".4136" = load ptr, ptr %"R7_Int32"
  %"zext.539" = zext ptr %".4136" to i64
  %"shl.275" = shl i64 %"zext.539", 32
  %"or.297" = or i64 %"shl.275", %"zext.538"
  %".4137" = add i64 %"or.297", 0
  %"for_LDG.272" = inttoptr i64 %".4137" to ptr
  %".4138" = load float, ptr %"for_LDG.272"
  store float %".4138", ptr %"R11_Float32"
  ; LDG.E.SYS R10, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4141" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.540" = zext ptr %".4141" to i64
  %".4142" = load ptr, ptr %"R9_Int32"
  %"zext.541" = zext ptr %".4142" to i64
  %"shl.276" = shl i64 %"zext.541", 32
  %"or.298" = or i64 %"shl.276", %"zext.540"
  %".4143" = add i64 %"or.298", 0
  %"for_LDG.273" = inttoptr i64 %".4143" to ptr
  %".4144" = load float, ptr %"for_LDG.273"
  store float %".4144", ptr %"R10_Float32"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".4147" = load i32, ptr %"R48_Int32"
  %".4148" = load i1, ptr %"PT_Bool"
  %"cmp.42" = icmp ne i32 %".4147", 1
  %".4149" = and i1 %"cmp.42", %".4148"
  ; FFMA R44, R11, R13, R44
  %".4151" = load float, ptr %"R11_Float32"
  %".4152" = load float, ptr %"R13_Float32"
  %".4153" = load float, ptr %"R44_Float32"
  %"fmul.225" = fmul float %".4151", %".4152"
  %"fadd.200" = fadd float %"fmul.225", %".4153"
  store float %"fadd.200", ptr %"R44_Float32"
  ; FFMA R56, R13, R10, R56
  %".4156" = load float, ptr %"R13_Float32"
  %".4157" = load float, ptr %"R10_Float32"
  %".4158" = load float, ptr %"R56_Float32"
  %"fmul.226" = fmul float %".4156", %".4157"
  %"fadd.201" = fadd float %"fmul.226", %".4158"
  store float %"fadd.201", ptr %"R56_Float32"
  ; @!P0 BRA `(.L_x_26)
  %".4161" = load i1, ptr %"P0_Bool"
  %".4162" = icmp eq i1 %".4161", 1
  br i1 %".4162", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".4165" = load i32, ptr %"R48_Int32"
  %".4166" = load i1, ptr %"PT_Bool"
  %"cmp.43" = icmp ne i32 %".4165", 2
  %".4167" = and i1 %"cmp.43", %".4166"
  ; LDG.E.SYS R11, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4169" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.542" = zext ptr %".4169" to i64
  %".4170" = load ptr, ptr %"R7_Int32"
  %"zext.543" = zext ptr %".4170" to i64
  %"shl.277" = shl i64 %"zext.543", 32
  %"or.299" = or i64 %"shl.277", %"zext.542"
  %".4171" = add i64 %"or.299", 4
  %"for_LDG.274" = inttoptr i64 %".4171" to ptr
  %".4172" = load float, ptr %"for_LDG.274"
  store float %".4172", ptr %"R11_Float32"
  ; LDG.E.SYS R13, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4175" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.544" = zext ptr %".4175" to i64
  %".4176" = load ptr, ptr %"R5_Int32"
  %"zext.545" = zext ptr %".4176" to i64
  %"shl.278" = shl i64 %"zext.545", 32
  %"or.300" = or i64 %"shl.278", %"zext.544"
  %".4177" = add i64 %"or.300", 4
  %"for_LDG.275" = inttoptr i64 %".4177" to ptr
  %".4178" = load float, ptr %"for_LDG.275"
  store float %".4178", ptr %"R13_Float32"
  ; LDG.E.SYS R10, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4181" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.546" = zext ptr %".4181" to i64
  %".4182" = load ptr, ptr %"R9_Int32"
  %"zext.547" = zext ptr %".4182" to i64
  %"shl.279" = shl i64 %"zext.547", 32
  %"or.301" = or i64 %"shl.279", %"zext.546"
  %".4183" = add i64 %"or.301", 4
  %"for_LDG.276" = inttoptr i64 %".4183" to ptr
  %".4184" = load float, ptr %"for_LDG.276"
  store float %".4184", ptr %"R10_Float32"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".4187" = load i1, ptr %"P0_Bool"
  %".4188" = icmp ne i1 %".4187", 1
  br i1 %".4188", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4191" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.548" = zext ptr %".4191" to i64
  %".4192" = load ptr, ptr %"R7_Int32"
  %"zext.549" = zext ptr %".4192" to i64
  %"shl.280" = shl i64 %"zext.549", 32
  %"or.302" = or i64 %"shl.280", %"zext.548"
  %".4193" = add i64 %"or.302", 8
  %"for_LDG.277" = inttoptr i64 %".4193" to ptr
  %".4194" = load float, ptr %"for_LDG.277"
  store float %".4194", ptr %"R23_Float32"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".4199" = load i1, ptr %"P0_Bool"
  %".4200" = icmp ne i1 %".4199", 1
  br i1 %".4200", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4203" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.550" = zext ptr %".4203" to i64
  %".4204" = load ptr, ptr %"R5_Int32"
  %"zext.551" = zext ptr %".4204" to i64
  %"shl.281" = shl i64 %"zext.551", 32
  %"or.303" = or i64 %"shl.281", %"zext.550"
  %".4205" = add i64 %"or.303", 8
  %"for_LDG.278" = inttoptr i64 %".4205" to ptr
  %".4206" = load float, ptr %"for_LDG.278"
  store float %".4206", ptr %"R25_Float32"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".4211" = load i1, ptr %"P0_Bool"
  %".4212" = icmp ne i1 %".4211", 1
  br i1 %".4212", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4215" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.552" = zext ptr %".4215" to i64
  %".4216" = load ptr, ptr %"R9_Int32"
  %"zext.553" = zext ptr %".4216" to i64
  %"shl.282" = shl i64 %"zext.553", 32
  %"or.304" = or i64 %"shl.282", %"zext.552"
  %".4217" = add i64 %"or.304", 8
  %"for_LDG.279" = inttoptr i64 %".4217" to ptr
  %".4218" = load float, ptr %"for_LDG.279"
  store float %".4218", ptr %"R12_Float32"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".4223" = load float, ptr %"R11_Float32"
  %".4224" = load float, ptr %"R13_Float32"
  %".4225" = load float, ptr %"R44_Float32"
  %"fmul.227" = fmul float %".4223", %".4224"
  %"fadd.202" = fadd float %"fmul.227", %".4225"
  store float %"fadd.202", ptr %"R44_Float32"
  ; FFMA R56, R13, R10, R56
  %".4228" = load float, ptr %"R13_Float32"
  %".4229" = load float, ptr %"R10_Float32"
  %".4230" = load float, ptr %"R56_Float32"
  %"fmul.228" = fmul float %".4228", %".4229"
  %"fadd.203" = fadd float %"fmul.228", %".4230"
  store float %"fadd.203", ptr %"R56_Float32"
  ; @P0 FFMA R44, R23, R25, R44
  %".4233" = load i1, ptr %"P0_Bool"
  %".4234" = icmp ne i1 %".4233", 1
  br i1 %".4234", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".4237" = load float, ptr %"R23_Float32"
  %".4238" = load float, ptr %"R25_Float32"
  %".4239" = load float, ptr %"R44_Float32"
  %"fmul.229" = fmul float %".4237", %".4238"
  %"fadd.204" = fadd float %"fmul.229", %".4239"
  store float %"fadd.204", ptr %"R44_Float32"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".4244" = load i1, ptr %"P0_Bool"
  %".4245" = icmp ne i1 %".4244", 1
  br i1 %".4245", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".4248" = load float, ptr %"R25_Float32"
  %".4249" = load float, ptr %"R12_Float32"
  %".4250" = load float, ptr %"R56_Float32"
  %"fmul.230" = fmul float %".4248", %".4249"
  %"fadd.205" = fadd float %"fmul.230", %".4250"
  store float %"fadd.205", ptr %"R56_Float32"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R26_Float32_PTR", ptr %"R26_Int32", i32 4, i1 0)
  %".4255" = load ptr, ptr %"R26_Float32_PTR"
  %"zext.554" = zext ptr %".4255" to i64
  %"or.305" = or i64 0, %"zext.554"
  %"or.306" = or i64 %"or.305", %"zext.554"
  %".4256" = add i64 %"or.306", 0
  %"for_LDG.280" = inttoptr i64 %".4256" to ptr
  %".4257" = load float, ptr %"for_LDG.280"
  store float %".4257", ptr %"R5_Float32"
  ; MOV R4, 0x3bbb989d
  store float 0x41cdddcc40000000, ptr %"R4_Float32"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  store float 0x41d0df0000000000, ptr %"R7_Float32"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".4266" = load float, ptr %"R5_Float32"
  %".4267" = load float, ptr %"R44_Float32"
  %"fadd.206" = fadd float %".4266", %".4267"
  store float %"fadd.206", ptr %"R5_Float32"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".4270" = load float, ptr %"R5_Float32"
  %".4271" = sub float              0x0, %".4270"
  %".4272" = load float, ptr %"R4_Float32"
  %"fmul.231" = fmul float %".4271", %".4272"
  %"fadd.207" = fadd float %"fmul.231", 0x3fe0000000000000
  store float %"fadd.207", ptr %"R4_Float32"
  ; FFMA.RM R4, R4, R7, 12582913
  %".4275" = load float, ptr %"R4_Float32"
  %".4276" = load float, ptr %"R7_Float32"
  %"fmul.232" = fmul float %".4275", %".4276"
  %"fadd.208" = fadd float %"fmul.232", 0x4168000020000000
  store float %"fadd.208", ptr %"R4_Float32"
  ; FADD R6, R4.reuse, -12583039
  %".4279" = load float, ptr %"R4_Float32"
  %"fadd.209" = fadd float %".4279", 0xc168000fe0000000
  store float %"fadd.209", ptr %"R6_Float32"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".4282" = icmp ult i32 23, 32
  %"SHF_min.4" = select  i1 %".4282", i32 23, i32 32
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Int32", ptr %"R4_Float32", i32 4, i1 0)
  %".4283" = load i32, ptr %"R4_Int32"
  %"zext.555" = zext i32 0 to i64
  %"zext.556" = zext i32 %".4283" to i64
  %"zext.557" = zext i32 23 to i64
  %"shl.283" = shl i64 %"zext.555", 32
  %"or.307" = or i64 %"shl.283", %"zext.556"
  %"shl.284" = shl i64 %"or.307", %"zext.557"
  %"and.2" = and i64 %"shl.284", 4294967295
  %"trunc32.4" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.4", ptr %"R4_Int32"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".4286" = load float, ptr %"R5_Float32"
  %".4287" = sub float              0x0, %".4286"
  %".4288" = load float, ptr %"R6_Float32"
  %".4289" = sub float              0x0, %".4288"
  %"fmul.233" = fmul float %".4287", 0x3ff7154760000000
  %"fadd.210" = fadd float %"fmul.233", %".4289"
  store float %"fadd.210", ptr %"R6_Float32"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".4292" = load float, ptr %"R5_Float32"
  %".4293" = sub float              0x0, %".4292"
  %".4294" = load float, ptr %"R6_Float32"
  %"fmul.234" = fmul float %".4293", 0x3e54ae0c00000000
  %"fadd.211" = fadd float %"fmul.234", %".4294"
  store float %"fadd.211", ptr %"R6_Float32"
  ; MUFU.EX2 R5, R6
  %".4297" = load float, ptr %"R6_Float32"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".4297")
  store float %"llvm_exp2_f32_result.3", ptr %"R5_Float32"
  ; FFMA R24, R4, R5, 1
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32", ptr %"R4_Int32", i32 4, i1 0)
  %".4300" = load float, ptr %"R4_Float32"
  %".4301" = load float, ptr %"R5_Float32"
  %"fmul.235" = fmul float %".4300", %".4301"
  %"fadd.212" = fadd float %"fmul.235", 0x3ff0000000000000
  store float %"fadd.212", ptr %"R24_Float32"
  ; IADD3 R4, R24, 0x1800000, RZ
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Int32", ptr %"R24_Float32", i32 4, i1 0)
  %".4304" = load i32, ptr %"R24_Int32"
  %"add.256" = add i32 %".4304", 25165824
  %"add.257" = add i32 %"add.256", 0
  store i32 %"add.257", ptr %"R4_Int32"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".4307" = load i32, ptr %"R4_Int32"
  %".4308" = and i32 %".4307", 2139095040
  store i32 %".4308", ptr %"R4_Int32"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".4311" = load i32, ptr %"R4_Int32"
  %".4312" = load i1, ptr %"PT_Bool"
  %"cmp.44" = icmp sgt i32 %".4311", 33554431
  %".4313" = and i1 %"cmp.44", %".4312"
  ; @P0 BRA `(.L_x_33)
  %".4315" = load i1, ptr %"P0_Bool"
  %".4316" = icmp ne i1 %".4315", 1
  br i1 %".4316", label %".L_x_33", label %".L_x_26_split_0x3910"
.L_x_26_split_0x3910:
  ; MOV R10, 0x3930
  store i32 14640, ptr %"R10_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_NOTYPE", ptr %"R10_Int32", i32 4, i1 0)
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.2" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; BRA `(.L_x_34)
  br label %".L_x_34"
.L_x_33:
  ; MUFU.RCP R22, R24
  %".4324" = load float, ptr %"R24_Float32"
  %".4325" = fdiv float 0x3ff0000000000000, %".4324"
  store float %".4325", ptr %"R22_Float32"
  ; FFMA R4, R24, R22, -1
  %".4328" = load float, ptr %"R24_Float32"
  %".4329" = load float, ptr %"R22_Float32"
  %"fmul.236" = fmul float %".4328", %".4329"
  %"fadd.213" = fadd float %"fmul.236", 0xbff0000000000000
  store float %"fadd.213", ptr %"R4_Float32"
  ; FADD.FTZ R5, -R4, -RZ
  %".4332" = load float, ptr %"R4_Float32"
  %".4333" = sub float              0x0, %".4332"
  %"fadd.214" = fadd float %".4333",              0x0
  store float %"fadd.214", ptr %"R5_Float32"
  ; FFMA R22, R22, R5, R22
  %".4336" = load float, ptr %"R22_Float32"
  %".4337" = load float, ptr %"R5_Float32"
  %".4338" = load float, ptr %"R22_Float32"
  %"fmul.237" = fmul float %".4336", %".4337"
  %"fadd.215" = fadd float %"fmul.237", %".4338"
  store float %"fadd.215", ptr %"R22_Float32"
.L_x_34:
  ; BSYNC B0
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R32_Float32_PTR", ptr %"R32_Int32", i32 4, i1 0)
  %".4342" = load ptr, ptr %"R32_Float32_PTR"
  %"zext.558" = zext ptr %".4342" to i64
  %".4343" = load ptr, ptr %"R33_Int32"
  %"zext.559" = zext ptr %".4343" to i64
  %"shl.285" = shl i64 %"zext.559", 32
  %"or.308" = or i64 %"shl.285", %"zext.558"
  %".4344" = add i64 %"or.308", 0
  %"for_LDG.281" = inttoptr i64 %".4344" to ptr
  %".4345" = load float, ptr %"for_LDG.281"
  store float %".4345", ptr %"R5_Float32"
  ; MOV R4, 0x3bbb989d
  store float 0x41cdddcc40000000, ptr %"R4_Float32"
  ; MOV R7, 0x437c0000
  store float 0x41d0df0000000000, ptr %"R7_Float32"
  ; FADD R5, R5, R56
  %".4352" = load float, ptr %"R5_Float32"
  %".4353" = load float, ptr %"R56_Float32"
  %"fadd.216" = fadd float %".4352", %".4353"
  store float %"fadd.216", ptr %"R5_Float32"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".4356" = load float, ptr %"R5_Float32"
  %".4357" = sub float              0x0, %".4356"
  %".4358" = load float, ptr %"R4_Float32"
  %"fmul.238" = fmul float %".4357", %".4358"
  %"fadd.217" = fadd float %"fmul.238", 0x3fe0000000000000
  store float %"fadd.217", ptr %"R4_Float32"
  ; FFMA.RM R4, R4, R7, 12582913
  %".4361" = load float, ptr %"R4_Float32"
  %".4362" = load float, ptr %"R7_Float32"
  %"fmul.239" = fmul float %".4361", %".4362"
  %"fadd.218" = fadd float %"fmul.239", 0x4168000020000000
  store float %"fadd.218", ptr %"R4_Float32"
  ; FADD R6, R4.reuse, -12583039
  %".4365" = load float, ptr %"R4_Float32"
  %"fadd.219" = fadd float %".4365", 0xc168000fe0000000
  store float %"fadd.219", ptr %"R6_Float32"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".4368" = icmp ult i32 23, 32
  %"SHF_min.5" = select  i1 %".4368", i32 23, i32 32
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Int32", ptr %"R4_Float32", i32 4, i1 0)
  %".4369" = load i32, ptr %"R4_Int32"
  %"zext.560" = zext i32 0 to i64
  %"zext.561" = zext i32 %".4369" to i64
  %"zext.562" = zext i32 23 to i64
  %"shl.286" = shl i64 %"zext.560", 32
  %"or.309" = or i64 %"shl.286", %"zext.561"
  %"shl.287" = shl i64 %"or.309", %"zext.562"
  %"and.3" = and i64 %"shl.287", 4294967295
  %"trunc32.5" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.5", ptr %"R23_Int32"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".4372" = load float, ptr %"R5_Float32"
  %".4373" = sub float              0x0, %".4372"
  %".4374" = load float, ptr %"R6_Float32"
  %".4375" = sub float              0x0, %".4374"
  %"fmul.240" = fmul float %".4373", 0x3ff7154760000000
  %"fadd.220" = fadd float %"fmul.240", %".4375"
  store float %"fadd.220", ptr %"R6_Float32"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".4378" = load float, ptr %"R5_Float32"
  %".4379" = sub float              0x0, %".4378"
  %".4380" = load float, ptr %"R6_Float32"
  %"fmul.241" = fmul float %".4379", 0x3e54ae0c00000000
  %"fadd.221" = fadd float %"fmul.241", %".4380"
  store float %"fadd.221", ptr %"R6_Float32"
  ; MUFU.EX2 R6, R6
  %".4383" = load float, ptr %"R6_Float32"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".4383")
  store float %"llvm_exp2_f32_result.4", ptr %"R6_Float32"
  ; FFMA R23, R23, R6, 1
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R23_Float32", ptr %"R23_Int32", i32 4, i1 0)
  %".4386" = load float, ptr %"R23_Float32"
  %".4387" = load float, ptr %"R6_Float32"
  %"fmul.242" = fmul float %".4386", %".4387"
  %"fadd.222" = fadd float %"fmul.242", 0x3ff0000000000000
  store float %"fadd.222", ptr %"R23_Float32"
  ; @!P4 BRA `(.L_x_35)
  %".4390" = load i1, ptr %"P4_Bool"
  %".4391" = icmp eq i1 %".4390", 1
  br i1 %".4391", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".4394" = load i32, ptr %"R18_Int32"
  %".4395" = load i1, ptr %"PT_Bool"
  %"cmp.45" = icmp sge i32 %".4394", 3
  %".4396" = and i1 %"cmp.45", %".4395"
  ; MOV R34, RZ
  %".4398" = load i32, ptr %"RZ_Int32"
  store i32 %".4398", ptr %"R34_Int32"
  ; @!P0 BRA `(.L_x_36)
  %".4401" = load i1, ptr %"P0_Bool"
  %".4402" = icmp eq i1 %".4401", 1
  br i1 %".4402", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".4405" = load i32, ptr %"R20_Int32"
  %".4406" = load i1, ptr %"PT_Bool"
  %"cmp.46" = icmp sgt i32 %".4405", 0
  %".4407" = and i1 %"cmp.46", %".4406"
  ; MOV R34, RZ
  %".4409" = load i32, ptr %"RZ_Int32"
  store i32 %".4409", ptr %"R34_Int32"
  ; MOV R35, R20
  %".4412" = load i32, ptr %"R20_Int32"
  store i32 %".4412", ptr %"R35_Int32"
  ; @!P0 BRA `(.L_x_37)
  %".4415" = load i1, ptr %"P0_Bool"
  %".4416" = icmp eq i1 %".4415", 1
  br i1 %".4416", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".4419" = load i32, ptr %"R35_Int32"
  %".4420" = load i1, ptr %"PT_Bool"
  %"cmp.47" = icmp sgt i32 %".4419", 12
  %".4421" = and i1 %"cmp.47", %".4420"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".4423" = and i1 1, 1
  %".4424" = or i1 %".4423", 1
  ; @!P1 BRA `(.L_x_38)
  %".4426" = load i1, ptr %"P1_Bool"
  %".4427" = icmp eq i1 %".4426", 1
  br i1 %".4427", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4430" = xor i1 1, 1
  %".4431" = and i1 %".4430", 1
  %".4432" = and i1 %".4431", 1
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41_Int32"
  ; IADD3 R10, R3, R34, RZ
  %".4436" = load i32, ptr %"R3_Int32"
  %".4437" = load i32, ptr %"R34_Int32"
  %"add.258" = add i32 %".4436", %".4437"
  %"add.259" = add i32 %"add.258", 0
  store i32 %"add.259", ptr %"R10_Int32"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".4440" = load i32, ptr %"R34_Int32"
  %".4441" = load i32, ptr %"R41_Int32"
  %"mul.90" = mul i32 %".4440", %".4441"
  %"add.260" = add i32 %"mul.90", %"Arg_3"
  store i32 %"add.260", ptr %"R12_Int32"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".4444" = load i32, ptr %"R10_Int32"
  %".4445" = load i32, ptr %"R41_Int32"
  %"mul.91" = mul i32 %".4444", %".4445"
  %"add.261" = add i32 %"mul.91", %"Arg_4"
  store i32 %"add.261", ptr %"R10_Int32"
  ; IADD3 R4, R34, 0x4, RZ
  %".4448" = load i32, ptr %"R34_Int32"
  %"add.262" = add i32 %".4448", 4
  %"add.263" = add i32 %"add.262", 0
  store i32 %"add.263", ptr %"R4_Int32"
  ; LDG.E.SYS R25, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4451" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.563" = zext ptr %".4451" to i64
  %".4452" = load ptr, ptr %"R13_Float32"
  %"zext.564" = zext ptr %".4452" to i64
  %"shl.288" = shl i64 %"zext.564", 32
  %"or.310" = or i64 %"shl.288", %"zext.563"
  %".4453" = add i64 %"or.310", 0
  %"for_LDG.282" = inttoptr i64 %".4453" to ptr
  %".4454" = load float, ptr %"for_LDG.282"
  store float %".4454", ptr %"R25_Float32"
  ; IADD3 R6, R3, R4, RZ
  %".4457" = load i32, ptr %"R3_Int32"
  %".4458" = load i32, ptr %"R4_Int32"
  %"add.264" = add i32 %".4457", %".4458"
  %"add.265" = add i32 %"add.264", 0
  store i32 %"add.265", ptr %"R6_Int32"
  ; LDG.E.SYS R36, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4461" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.565" = zext ptr %".4461" to i64
  %".4462" = load ptr, ptr %"R11_Float32"
  %"zext.566" = zext ptr %".4462" to i64
  %"shl.289" = shl i64 %"zext.566", 32
  %"or.311" = or i64 %"shl.289", %"zext.565"
  %".4463" = add i64 %"or.311", 0
  %"for_LDG.283" = inttoptr i64 %".4463" to ptr
  %".4464" = load float, ptr %"for_LDG.283"
  store float %".4464", ptr %"R36_Float32"
  ; LDG.E.SYS R37, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4467" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.567" = zext ptr %".4467" to i64
  %".4468" = load ptr, ptr %"R13_Float32"
  %"zext.568" = zext ptr %".4468" to i64
  %"shl.290" = shl i64 %"zext.568", 32
  %"or.312" = or i64 %"shl.290", %"zext.567"
  %".4469" = add i64 %"or.312", 4
  %"for_LDG.284" = inttoptr i64 %".4469" to ptr
  %".4470" = load float, ptr %"for_LDG.284"
  store float %".4470", ptr %"R37_Float32"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".4473" = load i32, ptr %"R4_Int32"
  %".4474" = load i32, ptr %"R41_Int32"
  %"mul.92" = mul i32 %".4473", %".4474"
  %"add.266" = add i32 %"mul.92", %"Arg_3"
  store i32 %"add.266", ptr %"R4_Int32"
  ; LDG.E.SYS R24, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4477" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.569" = zext ptr %".4477" to i64
  %".4478" = load ptr, ptr %"R11_Float32"
  %"zext.570" = zext ptr %".4478" to i64
  %"shl.291" = shl i64 %"zext.570", 32
  %"or.313" = or i64 %"shl.291", %"zext.569"
  %".4479" = add i64 %"or.313", 4
  %"for_LDG.285" = inttoptr i64 %".4479" to ptr
  %".4480" = load float, ptr %"for_LDG.285"
  store float %".4480", ptr %"R24_Float32"
  ; LDG.E.SYS R39, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4483" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.571" = zext ptr %".4483" to i64
  %".4484" = load ptr, ptr %"R13_Float32"
  %"zext.572" = zext ptr %".4484" to i64
  %"shl.292" = shl i64 %"zext.572", 32
  %"or.314" = or i64 %"shl.292", %"zext.571"
  %".4485" = add i64 %"or.314", 8
  %"for_LDG.286" = inttoptr i64 %".4485" to ptr
  %".4486" = load float, ptr %"for_LDG.286"
  store float %".4486", ptr %"R39_Float32"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".4489" = load i32, ptr %"R6_Int32"
  %".4490" = load i32, ptr %"R41_Int32"
  %"mul.93" = mul i32 %".4489", %".4490"
  %"add.267" = add i32 %"mul.93", %"Arg_4"
  store i32 %"add.267", ptr %"R6_Int32"
  ; LDG.E.SYS R38, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4493" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.573" = zext ptr %".4493" to i64
  %".4494" = load ptr, ptr %"R11_Float32"
  %"zext.574" = zext ptr %".4494" to i64
  %"shl.293" = shl i64 %"zext.574", 32
  %"or.315" = or i64 %"shl.293", %"zext.573"
  %".4495" = add i64 %"or.315", 8
  %"for_LDG.287" = inttoptr i64 %".4495" to ptr
  %".4496" = load float, ptr %"for_LDG.287"
  store float %".4496", ptr %"R38_Float32"
  ; LDG.E.SYS R43, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4499" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.575" = zext ptr %".4499" to i64
  %".4500" = load ptr, ptr %"R13_Float32"
  %"zext.576" = zext ptr %".4500" to i64
  %"shl.294" = shl i64 %"zext.576", 32
  %"or.316" = or i64 %"shl.294", %"zext.575"
  %".4501" = add i64 %"or.316", 12
  %"for_LDG.288" = inttoptr i64 %".4501" to ptr
  %".4502" = load float, ptr %"for_LDG.288"
  store float %".4502", ptr %"R43_Float32"
  ; IADD3 R8, R34, 0x8, RZ
  %".4505" = load i32, ptr %"R34_Int32"
  %"add.268" = add i32 %".4505", 8
  %"add.269" = add i32 %"add.268", 0
  store i32 %"add.269", ptr %"R8_Int32"
  ; LDG.E.SYS R46, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4508" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.577" = zext ptr %".4508" to i64
  %".4509" = load ptr, ptr %"R11_Float32"
  %"zext.578" = zext ptr %".4509" to i64
  %"shl.295" = shl i64 %"zext.578", 32
  %"or.317" = or i64 %"shl.295", %"zext.577"
  %".4510" = add i64 %"or.317", 12
  %"for_LDG.289" = inttoptr i64 %".4510" to ptr
  %".4511" = load float, ptr %"for_LDG.289"
  store float %".4511", ptr %"R46_Float32"
  ; LDG.E.SYS R51, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4514" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.579" = zext ptr %".4514" to i64
  %".4515" = load ptr, ptr %"R5_Float32"
  %"zext.580" = zext ptr %".4515" to i64
  %"shl.296" = shl i64 %"zext.580", 32
  %"or.318" = or i64 %"shl.296", %"zext.579"
  %".4516" = add i64 %"or.318", 0
  %"for_LDG.290" = inttoptr i64 %".4516" to ptr
  %".4517" = load float, ptr %"for_LDG.290"
  store float %".4517", ptr %"R51_Float32"
  ; IADD3 R50, R3, R8, RZ
  %".4520" = load i32, ptr %"R3_Int32"
  %".4521" = load i32, ptr %"R8_Int32"
  %"add.270" = add i32 %".4520", %".4521"
  %"add.271" = add i32 %"add.270", 0
  store i32 %"add.271", ptr %"R50_Int32"
  ; LDG.E.SYS R44, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4524" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.581" = zext ptr %".4524" to i64
  %".4525" = load ptr, ptr %"R7_Float32"
  %"zext.582" = zext ptr %".4525" to i64
  %"shl.297" = shl i64 %"zext.582", 32
  %"or.319" = or i64 %"shl.297", %"zext.581"
  %".4526" = add i64 %"or.319", 0
  %"for_LDG.291" = inttoptr i64 %".4526" to ptr
  %".4527" = load float, ptr %"for_LDG.291"
  store float %".4527", ptr %"R44_Float32"
  ; LDG.E.SYS R47, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4530" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.583" = zext ptr %".4530" to i64
  %".4531" = load ptr, ptr %"R5_Float32"
  %"zext.584" = zext ptr %".4531" to i64
  %"shl.298" = shl i64 %"zext.584", 32
  %"or.320" = or i64 %"shl.298", %"zext.583"
  %".4532" = add i64 %"or.320", 4
  %"for_LDG.292" = inttoptr i64 %".4532" to ptr
  %".4533" = load float, ptr %"for_LDG.292"
  store float %".4533", ptr %"R47_Float32"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".4536" = load i32, ptr %"R8_Int32"
  %".4537" = load i32, ptr %"R41_Int32"
  %"mul.94" = mul i32 %".4536", %".4537"
  %"add.272" = add i32 %"mul.94", %"Arg_3"
  store i32 %"add.272", ptr %"R8_Int32"
  ; LDG.E.SYS R42, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4540" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.585" = zext ptr %".4540" to i64
  %".4541" = load ptr, ptr %"R7_Float32"
  %"zext.586" = zext ptr %".4541" to i64
  %"shl.299" = shl i64 %"zext.586", 32
  %"or.321" = or i64 %"shl.299", %"zext.585"
  %".4542" = add i64 %"or.321", 4
  %"for_LDG.293" = inttoptr i64 %".4542" to ptr
  %".4543" = load float, ptr %"for_LDG.293"
  store float %".4543", ptr %"R42_Float32"
  ; LDG.E.SYS R45, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4546" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.587" = zext ptr %".4546" to i64
  %".4547" = load ptr, ptr %"R5_Float32"
  %"zext.588" = zext ptr %".4547" to i64
  %"shl.300" = shl i64 %"zext.588", 32
  %"or.322" = or i64 %"shl.300", %"zext.587"
  %".4548" = add i64 %"or.322", 8
  %"for_LDG.294" = inttoptr i64 %".4548" to ptr
  %".4549" = load float, ptr %"for_LDG.294"
  store float %".4549", ptr %"R45_Float32"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".4552" = load i32, ptr %"R50_Int32"
  %".4553" = load i32, ptr %"R41_Int32"
  %"mul.95" = mul i32 %".4552", %".4553"
  %"add.273" = add i32 %"mul.95", %"Arg_4"
  store i32 %"add.273", ptr %"R10_Int32"
  ; LDG.E.SYS R40, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4556" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.589" = zext ptr %".4556" to i64
  %".4557" = load ptr, ptr %"R7_Float32"
  %"zext.590" = zext ptr %".4557" to i64
  %"shl.301" = shl i64 %"zext.590", 32
  %"or.323" = or i64 %"shl.301", %"zext.589"
  %".4558" = add i64 %"or.323", 8
  %"for_LDG.295" = inttoptr i64 %".4558" to ptr
  %".4559" = load float, ptr %"for_LDG.295"
  store float %".4559", ptr %"R40_Float32"
  ; LDG.E.SYS R53, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4562" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.591" = zext ptr %".4562" to i64
  %".4563" = load ptr, ptr %"R5_Float32"
  %"zext.592" = zext ptr %".4563" to i64
  %"shl.302" = shl i64 %"zext.592", 32
  %"or.324" = or i64 %"shl.302", %"zext.591"
  %".4564" = add i64 %"or.324", 12
  %"for_LDG.296" = inttoptr i64 %".4564" to ptr
  %".4565" = load float, ptr %"for_LDG.296"
  store float %".4565", ptr %"R53_Float32"
  ; IADD3 R12, R34, 0xc, RZ
  %".4568" = load i32, ptr %"R34_Int32"
  %"add.274" = add i32 %".4568", 12
  %"add.275" = add i32 %"add.274", 0
  store i32 %"add.275", ptr %"R12_Int32"
  ; LDG.E.SYS R54, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4571" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.593" = zext ptr %".4571" to i64
  %".4572" = load ptr, ptr %"R7_Float32"
  %"zext.594" = zext ptr %".4572" to i64
  %"shl.303" = shl i64 %"zext.594", 32
  %"or.325" = or i64 %"shl.303", %"zext.593"
  %".4573" = add i64 %"or.325", 12
  %"for_LDG.297" = inttoptr i64 %".4573" to ptr
  %".4574" = load float, ptr %"for_LDG.297"
  store float %".4574", ptr %"R54_Float32"
  ; LDG.E.SYS R59, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4577" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.595" = zext ptr %".4577" to i64
  %".4578" = load ptr, ptr %"R9_Int32"
  %"zext.596" = zext ptr %".4578" to i64
  %"shl.304" = shl i64 %"zext.596", 32
  %"or.326" = or i64 %"shl.304", %"zext.595"
  %".4579" = add i64 %"or.326", 0
  %"for_LDG.298" = inttoptr i64 %".4579" to ptr
  %".4580" = load float, ptr %"for_LDG.298"
  store float %".4580", ptr %"R59_Float32"
  ; IADD3 R58, R3, R12, RZ
  %".4583" = load i32, ptr %"R3_Int32"
  %".4584" = load i32, ptr %"R12_Int32"
  %"add.276" = add i32 %".4583", %".4584"
  %"add.277" = add i32 %"add.276", 0
  store i32 %"add.277", ptr %"R58_Int32"
  ; LDG.E.SYS R52, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4587" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.597" = zext ptr %".4587" to i64
  %".4588" = load ptr, ptr %"R11_Float32"
  %"zext.598" = zext ptr %".4588" to i64
  %"shl.305" = shl i64 %"zext.598", 32
  %"or.327" = or i64 %"shl.305", %"zext.597"
  %".4589" = add i64 %"or.327", 0
  %"for_LDG.299" = inttoptr i64 %".4589" to ptr
  %".4590" = load float, ptr %"for_LDG.299"
  store float %".4590", ptr %"R52_Float32"
  ; LDG.E.SYS R57, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4593" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.599" = zext ptr %".4593" to i64
  %".4594" = load ptr, ptr %"R9_Int32"
  %"zext.600" = zext ptr %".4594" to i64
  %"shl.306" = shl i64 %"zext.600", 32
  %"or.328" = or i64 %"shl.306", %"zext.599"
  %".4595" = add i64 %"or.328", 4
  %"for_LDG.300" = inttoptr i64 %".4595" to ptr
  %".4596" = load float, ptr %"for_LDG.300"
  store float %".4596", ptr %"R57_Float32"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".4599" = load i32, ptr %"R12_Int32"
  %".4600" = load i32, ptr %"R41_Int32"
  %"mul.96" = mul i32 %".4599", %".4600"
  %"add.278" = add i32 %"mul.96", %"Arg_3"
  store i32 %"add.278", ptr %"R12_Int32"
  ; LDG.E.SYS R50, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4603" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.601" = zext ptr %".4603" to i64
  %".4604" = load ptr, ptr %"R11_Float32"
  %"zext.602" = zext ptr %".4604" to i64
  %"shl.307" = shl i64 %"zext.602", 32
  %"or.329" = or i64 %"shl.307", %"zext.601"
  %".4605" = add i64 %"or.329", 4
  %"for_LDG.301" = inttoptr i64 %".4605" to ptr
  %".4606" = load float, ptr %"for_LDG.301"
  store float %".4606", ptr %"R50_Float32"
  ; LDG.E.SYS R55, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4609" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.603" = zext ptr %".4609" to i64
  %".4610" = load ptr, ptr %"R9_Int32"
  %"zext.604" = zext ptr %".4610" to i64
  %"shl.308" = shl i64 %"zext.604", 32
  %"or.330" = or i64 %"shl.308", %"zext.603"
  %".4611" = add i64 %"or.330", 8
  %"for_LDG.302" = inttoptr i64 %".4611" to ptr
  %".4612" = load float, ptr %"for_LDG.302"
  store float %".4612", ptr %"R55_Float32"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".4615" = load i32, ptr %"R58_Int32"
  %".4616" = load i32, ptr %"R41_Int32"
  %"mul.97" = mul i32 %".4615", %".4616"
  %"add.279" = add i32 %"mul.97", %"Arg_4"
  store i32 %"add.279", ptr %"R4_Int32"
  ; LDG.E.SYS R61, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4619" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.605" = zext ptr %".4619" to i64
  %".4620" = load ptr, ptr %"R9_Int32"
  %"zext.606" = zext ptr %".4620" to i64
  %"shl.309" = shl i64 %"zext.606", 32
  %"or.331" = or i64 %"shl.309", %"zext.605"
  %".4621" = add i64 %"or.331", 12
  %"for_LDG.303" = inttoptr i64 %".4621" to ptr
  %".4622" = load float, ptr %"for_LDG.303"
  store float %".4622", ptr %"R61_Float32"
  ; LDG.E.SYS R56, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4625" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.607" = zext ptr %".4625" to i64
  %".4626" = load ptr, ptr %"R11_Float32"
  %"zext.608" = zext ptr %".4626" to i64
  %"shl.310" = shl i64 %"zext.608", 32
  %"or.332" = or i64 %"shl.310", %"zext.607"
  %".4627" = add i64 %"or.332", 8
  %"for_LDG.304" = inttoptr i64 %".4627" to ptr
  %".4628" = load float, ptr %"for_LDG.304"
  store float %".4628", ptr %"R56_Float32"
  ; LDG.E.SYS R58, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4631" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.609" = zext ptr %".4631" to i64
  %".4632" = load ptr, ptr %"R11_Float32"
  %"zext.610" = zext ptr %".4632" to i64
  %"shl.311" = shl i64 %"zext.610", 32
  %"or.333" = or i64 %"shl.311", %"zext.609"
  %".4633" = add i64 %"or.333", 12
  %"for_LDG.305" = inttoptr i64 %".4633" to ptr
  %".4634" = load float, ptr %"for_LDG.305"
  store float %".4634", ptr %"R58_Float32"
  ; LDG.E.SYS R6, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4637" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.611" = zext ptr %".4637" to i64
  %".4638" = load ptr, ptr %"R13_Float32"
  %"zext.612" = zext ptr %".4638" to i64
  %"shl.312" = shl i64 %"zext.612", 32
  %"or.334" = or i64 %"shl.312", %"zext.611"
  %".4639" = add i64 %"or.334", 0
  %"for_LDG.306" = inttoptr i64 %".4639" to ptr
  %".4640" = load float, ptr %"for_LDG.306"
  store float %".4640", ptr %"R6_Float32"
  ; LDG.E.SYS R41, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4643" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.613" = zext ptr %".4643" to i64
  %".4644" = load ptr, ptr %"R13_Float32"
  %"zext.614" = zext ptr %".4644" to i64
  %"shl.313" = shl i64 %"zext.614", 32
  %"or.335" = or i64 %"shl.313", %"zext.613"
  %".4645" = add i64 %"or.335", 4
  %"for_LDG.307" = inttoptr i64 %".4645" to ptr
  %".4646" = load float, ptr %"for_LDG.307"
  store float %".4646", ptr %"R41_Float32"
  ; LDG.E.SYS R10, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4649" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.615" = zext ptr %".4649" to i64
  %".4650" = load ptr, ptr %"R5_Float32"
  %"zext.616" = zext ptr %".4650" to i64
  %"shl.314" = shl i64 %"zext.616", 32
  %"or.336" = or i64 %"shl.314", %"zext.615"
  %".4651" = add i64 %"or.336", 0
  %"for_LDG.308" = inttoptr i64 %".4651" to ptr
  %".4652" = load float, ptr %"for_LDG.308"
  store float %".4652", ptr %"R10_Float32"
  ; LDG.E.SYS R7, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4655" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.617" = zext ptr %".4655" to i64
  %".4656" = load ptr, ptr %"R13_Float32"
  %"zext.618" = zext ptr %".4656" to i64
  %"shl.315" = shl i64 %"zext.618", 32
  %"or.337" = or i64 %"shl.315", %"zext.617"
  %".4657" = add i64 %"or.337", 8
  %"for_LDG.309" = inttoptr i64 %".4657" to ptr
  %".4658" = load float, ptr %"for_LDG.309"
  store float %".4658", ptr %"R7_Float32"
  ; LDG.E.SYS R9, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4661" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.619" = zext ptr %".4661" to i64
  %".4662" = load ptr, ptr %"R5_Float32"
  %"zext.620" = zext ptr %".4662" to i64
  %"shl.316" = shl i64 %"zext.620", 32
  %"or.338" = or i64 %"shl.316", %"zext.619"
  %".4663" = add i64 %"or.338", 4
  %"for_LDG.310" = inttoptr i64 %".4663" to ptr
  %".4664" = load float, ptr %"for_LDG.310"
  store float %".4664", ptr %"R9_Float32"
  ; LDG.E.SYS R60, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4667" = load ptr, ptr %"R12_Float32_PTR"
  %"zext.621" = zext ptr %".4667" to i64
  %".4668" = load ptr, ptr %"R13_Float32"
  %"zext.622" = zext ptr %".4668" to i64
  %"shl.317" = shl i64 %"zext.622", 32
  %"or.339" = or i64 %"shl.317", %"zext.621"
  %".4669" = add i64 %"or.339", 12
  %"for_LDG.311" = inttoptr i64 %".4669" to ptr
  %".4670" = load float, ptr %"for_LDG.311"
  store float %".4670", ptr %"R60_Float32"
  ; LDG.E.SYS R8, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4673" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.623" = zext ptr %".4673" to i64
  %".4674" = load ptr, ptr %"R5_Float32"
  %"zext.624" = zext ptr %".4674" to i64
  %"shl.318" = shl i64 %"zext.624", 32
  %"or.340" = or i64 %"shl.318", %"zext.623"
  %".4675" = add i64 %"or.340", 8
  %"for_LDG.312" = inttoptr i64 %".4675" to ptr
  %".4676" = load float, ptr %"for_LDG.312"
  store float %".4676", ptr %"R8_Float32"
  ; LDG.E.SYS R11, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4679" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.625" = zext ptr %".4679" to i64
  %".4680" = load ptr, ptr %"R5_Float32"
  %"zext.626" = zext ptr %".4680" to i64
  %"shl.319" = shl i64 %"zext.626", 32
  %"or.341" = or i64 %"shl.319", %"zext.625"
  %".4681" = add i64 %"or.341", 12
  %"for_LDG.313" = inttoptr i64 %".4681" to ptr
  %".4682" = load float, ptr %"for_LDG.313"
  store float %".4682", ptr %"R11_Float32"
  ; IADD3 R35, R35, -0x10, RZ
  %".4685" = load i32, ptr %"R35_Int32"
  %"add.280" = add i32 %".4685", -16
  %"add.281" = add i32 %"add.280", 0
  store i32 %"add.281", ptr %"R35_Int32"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".4688" = load i32, ptr %"R35_Int32"
  %".4689" = load i1, ptr %"PT_Bool"
  %"cmp.48" = icmp sgt i32 %".4688", 12
  %".4690" = and i1 %"cmp.48", %".4689"
  ; IADD3 R34, R34, 0x10, RZ
  %".4692" = load i32, ptr %"R34_Int32"
  %"add.282" = add i32 %".4692", 16
  %"add.283" = add i32 %"add.282", 0
  store i32 %"add.283", ptr %"R34_Int32"
  ; FMUL R25, R25, R22
  %".4695" = load float, ptr %"R25_Float32"
  %".4696" = load float, ptr %"R22_Float32"
  %"fmul.243" = fmul float %".4695", %".4696"
  store float %"fmul.243", ptr %"R25_Float32"
  ; FFMA R25, R25, R36, R21
  %".4699" = load float, ptr %"R25_Float32"
  %".4700" = load float, ptr %"R36_Float32"
  %".4701" = load float, ptr %"R21_Float32"
  %"fmul.244" = fmul float %".4699", %".4700"
  %"fadd.223" = fadd float %"fmul.244", %".4701"
  store float %"fadd.223", ptr %"R25_Float32"
  ; FMUL R37, R37, R22
  %".4704" = load float, ptr %"R37_Float32"
  %".4705" = load float, ptr %"R22_Float32"
  %"fmul.245" = fmul float %".4704", %".4705"
  store float %"fmul.245", ptr %"R37_Float32"
  ; FFMA R25, R37, R24, R25
  %".4708" = load float, ptr %"R37_Float32"
  %".4709" = load float, ptr %"R24_Float32"
  %".4710" = load float, ptr %"R25_Float32"
  %"fmul.246" = fmul float %".4708", %".4709"
  %"fadd.224" = fadd float %"fmul.246", %".4710"
  store float %"fadd.224", ptr %"R25_Float32"
  ; FMUL R39, R39, R22
  %".4713" = load float, ptr %"R39_Float32"
  %".4714" = load float, ptr %"R22_Float32"
  %"fmul.247" = fmul float %".4713", %".4714"
  store float %"fmul.247", ptr %"R39_Float32"
  ; FFMA R25, R39, R38, R25
  %".4717" = load float, ptr %"R39_Float32"
  %".4718" = load float, ptr %"R38_Float32"
  %".4719" = load float, ptr %"R25_Float32"
  %"fmul.248" = fmul float %".4717", %".4718"
  %"fadd.225" = fadd float %"fmul.248", %".4719"
  store float %"fadd.225", ptr %"R25_Float32"
  ; FMUL R43, R43, R22
  %".4722" = load float, ptr %"R43_Float32"
  %".4723" = load float, ptr %"R22_Float32"
  %"fmul.249" = fmul float %".4722", %".4723"
  store float %"fmul.249", ptr %"R43_Float32"
  ; FFMA R25, R43, R46, R25
  %".4726" = load float, ptr %"R43_Float32"
  %".4727" = load float, ptr %"R46_Float32"
  %".4728" = load float, ptr %"R25_Float32"
  %"fmul.250" = fmul float %".4726", %".4727"
  %"fadd.226" = fadd float %"fmul.250", %".4728"
  store float %"fadd.226", ptr %"R25_Float32"
  ; FMUL R51, R51, R22
  %".4731" = load float, ptr %"R51_Float32"
  %".4732" = load float, ptr %"R22_Float32"
  %"fmul.251" = fmul float %".4731", %".4732"
  store float %"fmul.251", ptr %"R51_Float32"
  ; FFMA R25, R51, R44, R25
  %".4735" = load float, ptr %"R51_Float32"
  %".4736" = load float, ptr %"R44_Float32"
  %".4737" = load float, ptr %"R25_Float32"
  %"fmul.252" = fmul float %".4735", %".4736"
  %"fadd.227" = fadd float %"fmul.252", %".4737"
  store float %"fadd.227", ptr %"R25_Float32"
  ; FMUL R47, R47, R22
  %".4740" = load float, ptr %"R47_Float32"
  %".4741" = load float, ptr %"R22_Float32"
  %"fmul.253" = fmul float %".4740", %".4741"
  store float %"fmul.253", ptr %"R47_Float32"
  ; FFMA R25, R47, R42, R25
  %".4744" = load float, ptr %"R47_Float32"
  %".4745" = load float, ptr %"R42_Float32"
  %".4746" = load float, ptr %"R25_Float32"
  %"fmul.254" = fmul float %".4744", %".4745"
  %"fadd.228" = fadd float %"fmul.254", %".4746"
  store float %"fadd.228", ptr %"R25_Float32"
  ; FMUL R45, R45, R22
  %".4749" = load float, ptr %"R45_Float32"
  %".4750" = load float, ptr %"R22_Float32"
  %"fmul.255" = fmul float %".4749", %".4750"
  store float %"fmul.255", ptr %"R45_Float32"
  ; FFMA R25, R45, R40, R25
  %".4753" = load float, ptr %"R45_Float32"
  %".4754" = load float, ptr %"R40_Float32"
  %".4755" = load float, ptr %"R25_Float32"
  %"fmul.256" = fmul float %".4753", %".4754"
  %"fadd.229" = fadd float %"fmul.256", %".4755"
  store float %"fadd.229", ptr %"R25_Float32"
  ; FMUL R53, R53, R22
  %".4758" = load float, ptr %"R53_Float32"
  %".4759" = load float, ptr %"R22_Float32"
  %"fmul.257" = fmul float %".4758", %".4759"
  store float %"fmul.257", ptr %"R53_Float32"
  ; FFMA R25, R53, R54, R25
  %".4762" = load float, ptr %"R53_Float32"
  %".4763" = load float, ptr %"R54_Float32"
  %".4764" = load float, ptr %"R25_Float32"
  %"fmul.258" = fmul float %".4762", %".4763"
  %"fadd.230" = fadd float %"fmul.258", %".4764"
  store float %"fadd.230", ptr %"R25_Float32"
  ; FMUL R59, R59, R22
  %".4767" = load float, ptr %"R59_Float32"
  %".4768" = load float, ptr %"R22_Float32"
  %"fmul.259" = fmul float %".4767", %".4768"
  store float %"fmul.259", ptr %"R59_Float32"
  ; FFMA R25, R59, R52, R25
  %".4771" = load float, ptr %"R59_Float32"
  %".4772" = load float, ptr %"R52_Float32"
  %".4773" = load float, ptr %"R25_Float32"
  %"fmul.260" = fmul float %".4771", %".4772"
  %"fadd.231" = fadd float %"fmul.260", %".4773"
  store float %"fadd.231", ptr %"R25_Float32"
  ; FMUL R57, R57, R22
  %".4776" = load float, ptr %"R57_Float32"
  %".4777" = load float, ptr %"R22_Float32"
  %"fmul.261" = fmul float %".4776", %".4777"
  store float %"fmul.261", ptr %"R57_Float32"
  ; FFMA R25, R57, R50, R25
  %".4780" = load float, ptr %"R57_Float32"
  %".4781" = load float, ptr %"R50_Float32"
  %".4782" = load float, ptr %"R25_Float32"
  %"fmul.262" = fmul float %".4780", %".4781"
  %"fadd.232" = fadd float %"fmul.262", %".4782"
  store float %"fadd.232", ptr %"R25_Float32"
  ; FMUL R55, R55, R22.reuse
  %".4785" = load float, ptr %"R55_Float32"
  %".4786" = load float, ptr %"R22_Float32"
  %"fmul.263" = fmul float %".4785", %".4786"
  store float %"fmul.263", ptr %"R55_Float32"
  ; FMUL R61, R61, R22
  %".4789" = load float, ptr %"R61_Float32"
  %".4790" = load float, ptr %"R22_Float32"
  %"fmul.264" = fmul float %".4789", %".4790"
  store float %"fmul.264", ptr %"R61_Float32"
  ; FFMA R25, R55, R56, R25
  %".4793" = load float, ptr %"R55_Float32"
  %".4794" = load float, ptr %"R56_Float32"
  %".4795" = load float, ptr %"R25_Float32"
  %"fmul.265" = fmul float %".4793", %".4794"
  %"fadd.233" = fadd float %"fmul.265", %".4795"
  store float %"fadd.233", ptr %"R25_Float32"
  ; FFMA R25, R61, R58, R25
  %".4798" = load float, ptr %"R61_Float32"
  %".4799" = load float, ptr %"R58_Float32"
  %".4800" = load float, ptr %"R25_Float32"
  %"fmul.266" = fmul float %".4798", %".4799"
  %"fadd.234" = fadd float %"fmul.266", %".4800"
  store float %"fadd.234", ptr %"R25_Float32"
  ; FMUL R6, R6, R22.reuse
  %".4803" = load float, ptr %"R6_Float32"
  %".4804" = load float, ptr %"R22_Float32"
  %"fmul.267" = fmul float %".4803", %".4804"
  store float %"fmul.267", ptr %"R6_Float32"
  ; FMUL R41, R41, R22
  %".4807" = load float, ptr %"R41_Float32"
  %".4808" = load float, ptr %"R22_Float32"
  %"fmul.268" = fmul float %".4807", %".4808"
  store float %"fmul.268", ptr %"R41_Float32"
  ; FFMA R6, R6, R10, R25
  %".4811" = load float, ptr %"R6_Float32"
  %".4812" = load float, ptr %"R10_Float32"
  %".4813" = load float, ptr %"R25_Float32"
  %"fmul.269" = fmul float %".4811", %".4812"
  %"fadd.235" = fadd float %"fmul.269", %".4813"
  store float %"fadd.235", ptr %"R6_Float32"
  ; FMUL R7, R7, R22
  %".4816" = load float, ptr %"R7_Float32"
  %".4817" = load float, ptr %"R22_Float32"
  %"fmul.270" = fmul float %".4816", %".4817"
  store float %"fmul.270", ptr %"R7_Float32"
  ; FFMA R9, R41, R9, R6
  %".4820" = load float, ptr %"R41_Float32"
  %".4821" = load float, ptr %"R9_Float32"
  %".4822" = load float, ptr %"R6_Float32"
  %"fmul.271" = fmul float %".4820", %".4821"
  %"fadd.236" = fadd float %"fmul.271", %".4822"
  store float %"fadd.236", ptr %"R9_Float32"
  ; FMUL R60, R60, R22
  %".4825" = load float, ptr %"R60_Float32"
  %".4826" = load float, ptr %"R22_Float32"
  %"fmul.272" = fmul float %".4825", %".4826"
  store float %"fmul.272", ptr %"R60_Float32"
  ; FFMA R8, R7, R8, R9
  %".4829" = load float, ptr %"R7_Float32"
  %".4830" = load float, ptr %"R8_Float32"
  %".4831" = load float, ptr %"R9_Float32"
  %"fmul.273" = fmul float %".4829", %".4830"
  %"fadd.237" = fadd float %"fmul.273", %".4831"
  store float %"fadd.237", ptr %"R8_Float32"
  ; FFMA R21, R60, R11, R8
  %".4834" = load float, ptr %"R60_Float32"
  %".4835" = load float, ptr %"R11_Float32"
  %".4836" = load float, ptr %"R8_Float32"
  %"fmul.274" = fmul float %".4834", %".4835"
  %"fadd.238" = fadd float %"fmul.274", %".4836"
  store float %"fadd.238", ptr %"R21_Float32"
  ; @P1 BRA `(.L_x_39)
  %".4839" = load i1, ptr %"P1_Bool"
  %".4840" = icmp ne i1 %".4839", 1
  br i1 %".4840", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".4843" = load i32, ptr %"R35_Int32"
  %".4844" = load i1, ptr %"PT_Bool"
  %"cmp.49" = icmp sgt i32 %".4843", 4
  %".4845" = and i1 %"cmp.49", %".4844"
  ; @!P1 BRA `(.L_x_40)
  %".4847" = load i1, ptr %"P1_Bool"
  %".4848" = icmp eq i1 %".4847", 1
  br i1 %".4848", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11_Int32"
  ; IADD3 R6, R3, R34, RZ
  %".4853" = load i32, ptr %"R3_Int32"
  %".4854" = load i32, ptr %"R34_Int32"
  %"add.284" = add i32 %".4853", %".4854"
  %"add.285" = add i32 %"add.284", 0
  store i32 %"add.285", ptr %"R6_Int32"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".4857" = load i32, ptr %"R34_Int32"
  %".4858" = load i32, ptr %"R11_Int32"
  %"mul.98" = mul i32 %".4857", %".4858"
  %"add.286" = add i32 %"mul.98", %"Arg_3"
  store i32 %"add.286", ptr %"R8_Int32"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".4861" = load i32, ptr %"R6_Int32"
  %".4862" = load i32, ptr %"R11_Int32"
  %"mul.99" = mul i32 %".4861", %".4862"
  %"add.287" = add i32 %"mul.99", %"Arg_4"
  store i32 %"add.287", ptr %"R6_Int32"
  ; IADD3 R4, R34, 0x4, RZ
  %".4865" = load i32, ptr %"R34_Int32"
  %"add.288" = add i32 %".4865", 4
  %"add.289" = add i32 %"add.288", 0
  store i32 %"add.289", ptr %"R4_Int32"
  ; LDG.E.SYS R13, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4868" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.627" = zext ptr %".4868" to i64
  %".4869" = load ptr, ptr %"R9_Float32"
  %"zext.628" = zext ptr %".4869" to i64
  %"shl.320" = shl i64 %"zext.628", 32
  %"or.342" = or i64 %"shl.320", %"zext.627"
  %".4870" = add i64 %"or.342", 0
  %"for_LDG.314" = inttoptr i64 %".4870" to ptr
  %".4871" = load float, ptr %"for_LDG.314"
  store float %".4871", ptr %"R13_Float32"
  ; IADD3 R10, R3, R4, RZ
  %".4874" = load i32, ptr %"R3_Int32"
  %".4875" = load i32, ptr %"R4_Int32"
  %"add.290" = add i32 %".4874", %".4875"
  %"add.291" = add i32 %"add.290", 0
  store i32 %"add.291", ptr %"R10_Int32"
  ; LDG.E.SYS R12, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4878" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.629" = zext ptr %".4878" to i64
  %".4879" = load ptr, ptr %"R7_Float32"
  %"zext.630" = zext ptr %".4879" to i64
  %"shl.321" = shl i64 %"zext.630", 32
  %"or.343" = or i64 %"shl.321", %"zext.629"
  %".4880" = add i64 %"or.343", 0
  %"for_LDG.315" = inttoptr i64 %".4880" to ptr
  %".4881" = load float, ptr %"for_LDG.315"
  store float %".4881", ptr %"R12_Float32"
  ; LDG.E.SYS R25, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4884" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.631" = zext ptr %".4884" to i64
  %".4885" = load ptr, ptr %"R9_Float32"
  %"zext.632" = zext ptr %".4885" to i64
  %"shl.322" = shl i64 %"zext.632", 32
  %"or.344" = or i64 %"shl.322", %"zext.631"
  %".4886" = add i64 %"or.344", 4
  %"for_LDG.316" = inttoptr i64 %".4886" to ptr
  %".4887" = load float, ptr %"for_LDG.316"
  store float %".4887", ptr %"R25_Float32"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".4890" = load i32, ptr %"R4_Int32"
  %".4891" = load i32, ptr %"R11_Int32"
  %"mul.100" = mul i32 %".4890", %".4891"
  %"add.292" = add i32 %"mul.100", %"Arg_3"
  store i32 %"add.292", ptr %"R4_Int32"
  ; LDG.E.SYS R24, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4894" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.633" = zext ptr %".4894" to i64
  %".4895" = load ptr, ptr %"R7_Float32"
  %"zext.634" = zext ptr %".4895" to i64
  %"shl.323" = shl i64 %"zext.634", 32
  %"or.345" = or i64 %"shl.323", %"zext.633"
  %".4896" = add i64 %"or.345", 4
  %"for_LDG.317" = inttoptr i64 %".4896" to ptr
  %".4897" = load float, ptr %"for_LDG.317"
  store float %".4897", ptr %"R24_Float32"
  ; LDG.E.SYS R37, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4900" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.635" = zext ptr %".4900" to i64
  %".4901" = load ptr, ptr %"R9_Float32"
  %"zext.636" = zext ptr %".4901" to i64
  %"shl.324" = shl i64 %"zext.636", 32
  %"or.346" = or i64 %"shl.324", %"zext.635"
  %".4902" = add i64 %"or.346", 8
  %"for_LDG.318" = inttoptr i64 %".4902" to ptr
  %".4903" = load float, ptr %"for_LDG.318"
  store float %".4903", ptr %"R37_Float32"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".4906" = load i32, ptr %"R10_Int32"
  %".4907" = load i32, ptr %"R11_Int32"
  %"mul.101" = mul i32 %".4906", %".4907"
  %"add.293" = add i32 %"mul.101", %"Arg_4"
  store i32 %"add.293", ptr %"R10_Int32"
  ; LDG.E.SYS R36, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4910" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.637" = zext ptr %".4910" to i64
  %".4911" = load ptr, ptr %"R7_Float32"
  %"zext.638" = zext ptr %".4911" to i64
  %"shl.325" = shl i64 %"zext.638", 32
  %"or.347" = or i64 %"shl.325", %"zext.637"
  %".4912" = add i64 %"or.347", 8
  %"for_LDG.319" = inttoptr i64 %".4912" to ptr
  %".4913" = load float, ptr %"for_LDG.319"
  store float %".4913", ptr %"R36_Float32"
  ; LDG.E.SYS R39, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4916" = load ptr, ptr %"R8_Float32_PTR"
  %"zext.639" = zext ptr %".4916" to i64
  %".4917" = load ptr, ptr %"R9_Float32"
  %"zext.640" = zext ptr %".4917" to i64
  %"shl.326" = shl i64 %"zext.640", 32
  %"or.348" = or i64 %"shl.326", %"zext.639"
  %".4918" = add i64 %"or.348", 12
  %"for_LDG.320" = inttoptr i64 %".4918" to ptr
  %".4919" = load float, ptr %"for_LDG.320"
  store float %".4919", ptr %"R39_Float32"
  ; LDG.E.SYS R38, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4922" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.641" = zext ptr %".4922" to i64
  %".4923" = load ptr, ptr %"R7_Float32"
  %"zext.642" = zext ptr %".4923" to i64
  %"shl.327" = shl i64 %"zext.642", 32
  %"or.349" = or i64 %"shl.327", %"zext.641"
  %".4924" = add i64 %"or.349", 12
  %"for_LDG.321" = inttoptr i64 %".4924" to ptr
  %".4925" = load float, ptr %"for_LDG.321"
  store float %".4925", ptr %"R38_Float32"
  ; LDG.E.SYS R41, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4928" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.643" = zext ptr %".4928" to i64
  %".4929" = load ptr, ptr %"R5_Float32"
  %"zext.644" = zext ptr %".4929" to i64
  %"shl.328" = shl i64 %"zext.644", 32
  %"or.350" = or i64 %"shl.328", %"zext.643"
  %".4930" = add i64 %"or.350", 0
  %"for_LDG.322" = inttoptr i64 %".4930" to ptr
  %".4931" = load float, ptr %"for_LDG.322"
  store float %".4931", ptr %"R41_Float32"
  ; LDG.E.SYS R40, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4934" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.645" = zext ptr %".4934" to i64
  %".4935" = load ptr, ptr %"R11_Int32"
  %"zext.646" = zext ptr %".4935" to i64
  %"shl.329" = shl i64 %"zext.646", 32
  %"or.351" = or i64 %"shl.329", %"zext.645"
  %".4936" = add i64 %"or.351", 0
  %"for_LDG.323" = inttoptr i64 %".4936" to ptr
  %".4937" = load float, ptr %"for_LDG.323"
  store float %".4937", ptr %"R40_Float32"
  ; LDG.E.SYS R43, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4940" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.647" = zext ptr %".4940" to i64
  %".4941" = load ptr, ptr %"R5_Float32"
  %"zext.648" = zext ptr %".4941" to i64
  %"shl.330" = shl i64 %"zext.648", 32
  %"or.352" = or i64 %"shl.330", %"zext.647"
  %".4942" = add i64 %"or.352", 4
  %"for_LDG.324" = inttoptr i64 %".4942" to ptr
  %".4943" = load float, ptr %"for_LDG.324"
  store float %".4943", ptr %"R43_Float32"
  ; LDG.E.SYS R42, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4946" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.649" = zext ptr %".4946" to i64
  %".4947" = load ptr, ptr %"R11_Int32"
  %"zext.650" = zext ptr %".4947" to i64
  %"shl.331" = shl i64 %"zext.650", 32
  %"or.353" = or i64 %"shl.331", %"zext.649"
  %".4948" = add i64 %"or.353", 4
  %"for_LDG.325" = inttoptr i64 %".4948" to ptr
  %".4949" = load float, ptr %"for_LDG.325"
  store float %".4949", ptr %"R42_Float32"
  ; LDG.E.SYS R45, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4952" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.651" = zext ptr %".4952" to i64
  %".4953" = load ptr, ptr %"R5_Float32"
  %"zext.652" = zext ptr %".4953" to i64
  %"shl.332" = shl i64 %"zext.652", 32
  %"or.354" = or i64 %"shl.332", %"zext.651"
  %".4954" = add i64 %"or.354", 8
  %"for_LDG.326" = inttoptr i64 %".4954" to ptr
  %".4955" = load float, ptr %"for_LDG.326"
  store float %".4955", ptr %"R45_Float32"
  ; LDG.E.SYS R47, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4958" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.653" = zext ptr %".4958" to i64
  %".4959" = load ptr, ptr %"R5_Float32"
  %"zext.654" = zext ptr %".4959" to i64
  %"shl.333" = shl i64 %"zext.654", 32
  %"or.355" = or i64 %"shl.333", %"zext.653"
  %".4960" = add i64 %"or.355", 12
  %"for_LDG.327" = inttoptr i64 %".4960" to ptr
  %".4961" = load float, ptr %"for_LDG.327"
  store float %".4961", ptr %"R47_Float32"
  ; LDG.E.SYS R44, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4964" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.655" = zext ptr %".4964" to i64
  %".4965" = load ptr, ptr %"R11_Int32"
  %"zext.656" = zext ptr %".4965" to i64
  %"shl.334" = shl i64 %"zext.656", 32
  %"or.356" = or i64 %"shl.334", %"zext.655"
  %".4966" = add i64 %"or.356", 8
  %"for_LDG.328" = inttoptr i64 %".4966" to ptr
  %".4967" = load float, ptr %"for_LDG.328"
  store float %".4967", ptr %"R44_Float32"
  ; LDG.E.SYS R46, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4970" = load ptr, ptr %"R10_Float32_PTR"
  %"zext.657" = zext ptr %".4970" to i64
  %".4971" = load ptr, ptr %"R11_Int32"
  %"zext.658" = zext ptr %".4971" to i64
  %"shl.335" = shl i64 %"zext.658", 32
  %"or.357" = or i64 %"shl.335", %"zext.657"
  %".4972" = add i64 %"or.357", 12
  %"for_LDG.329" = inttoptr i64 %".4972" to ptr
  %".4973" = load float, ptr %"for_LDG.329"
  store float %".4973", ptr %"R46_Float32"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4976" = xor i1 1, 1
  %".4977" = and i1 %".4976", 1
  %".4978" = and i1 %".4977", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".4980" = load i32, ptr %"R35_Int32"
  %"add.294" = add i32 %".4980", -8
  %"add.295" = add i32 %"add.294", 0
  store i32 %"add.295", ptr %"R35_Int32"
  ; IADD3 R34, R34, 0x8, RZ
  %".4983" = load i32, ptr %"R34_Int32"
  %"add.296" = add i32 %".4983", 8
  %"add.297" = add i32 %"add.296", 0
  store i32 %"add.297", ptr %"R34_Int32"
  ; FMUL R8, R13, R22
  %".4986" = load float, ptr %"R13_Float32"
  %".4987" = load float, ptr %"R22_Float32"
  %"fmul.275" = fmul float %".4986", %".4987"
  store float %"fmul.275", ptr %"R8_Float32"
  ; FFMA R8, R8, R12, R21
  %".4990" = load float, ptr %"R8_Float32"
  %".4991" = load float, ptr %"R12_Float32"
  %".4992" = load float, ptr %"R21_Float32"
  %"fmul.276" = fmul float %".4990", %".4991"
  %"fadd.239" = fadd float %"fmul.276", %".4992"
  store float %"fadd.239", ptr %"R8_Float32"
  ; FMUL R25, R25, R22
  %".4995" = load float, ptr %"R25_Float32"
  %".4996" = load float, ptr %"R22_Float32"
  %"fmul.277" = fmul float %".4995", %".4996"
  store float %"fmul.277", ptr %"R25_Float32"
  ; FFMA R8, R25, R24, R8
  %".4999" = load float, ptr %"R25_Float32"
  %".5000" = load float, ptr %"R24_Float32"
  %".5001" = load float, ptr %"R8_Float32"
  %"fmul.278" = fmul float %".4999", %".5000"
  %"fadd.240" = fadd float %"fmul.278", %".5001"
  store float %"fadd.240", ptr %"R8_Float32"
  ; FMUL R37, R37, R22
  %".5004" = load float, ptr %"R37_Float32"
  %".5005" = load float, ptr %"R22_Float32"
  %"fmul.279" = fmul float %".5004", %".5005"
  store float %"fmul.279", ptr %"R37_Float32"
  ; FFMA R8, R37, R36, R8
  %".5008" = load float, ptr %"R37_Float32"
  %".5009" = load float, ptr %"R36_Float32"
  %".5010" = load float, ptr %"R8_Float32"
  %"fmul.280" = fmul float %".5008", %".5009"
  %"fadd.241" = fadd float %"fmul.280", %".5010"
  store float %"fadd.241", ptr %"R8_Float32"
  ; FMUL R39, R39, R22
  %".5013" = load float, ptr %"R39_Float32"
  %".5014" = load float, ptr %"R22_Float32"
  %"fmul.281" = fmul float %".5013", %".5014"
  store float %"fmul.281", ptr %"R39_Float32"
  ; FFMA R8, R39, R38, R8
  %".5017" = load float, ptr %"R39_Float32"
  %".5018" = load float, ptr %"R38_Float32"
  %".5019" = load float, ptr %"R8_Float32"
  %"fmul.282" = fmul float %".5017", %".5018"
  %"fadd.242" = fadd float %"fmul.282", %".5019"
  store float %"fadd.242", ptr %"R8_Float32"
  ; FMUL R41, R41, R22
  %".5022" = load float, ptr %"R41_Float32"
  %".5023" = load float, ptr %"R22_Float32"
  %"fmul.283" = fmul float %".5022", %".5023"
  store float %"fmul.283", ptr %"R41_Float32"
  ; FFMA R8, R41, R40, R8
  %".5026" = load float, ptr %"R41_Float32"
  %".5027" = load float, ptr %"R40_Float32"
  %".5028" = load float, ptr %"R8_Float32"
  %"fmul.284" = fmul float %".5026", %".5027"
  %"fadd.243" = fadd float %"fmul.284", %".5028"
  store float %"fadd.243", ptr %"R8_Float32"
  ; FMUL R43, R43, R22
  %".5031" = load float, ptr %"R43_Float32"
  %".5032" = load float, ptr %"R22_Float32"
  %"fmul.285" = fmul float %".5031", %".5032"
  store float %"fmul.285", ptr %"R43_Float32"
  ; FFMA R8, R43, R42, R8
  %".5035" = load float, ptr %"R43_Float32"
  %".5036" = load float, ptr %"R42_Float32"
  %".5037" = load float, ptr %"R8_Float32"
  %"fmul.286" = fmul float %".5035", %".5036"
  %"fadd.244" = fadd float %"fmul.286", %".5037"
  store float %"fadd.244", ptr %"R8_Float32"
  ; FMUL R45, R45, R22.reuse
  %".5040" = load float, ptr %"R45_Float32"
  %".5041" = load float, ptr %"R22_Float32"
  %"fmul.287" = fmul float %".5040", %".5041"
  store float %"fmul.287", ptr %"R45_Float32"
  ; FMUL R47, R47, R22
  %".5044" = load float, ptr %"R47_Float32"
  %".5045" = load float, ptr %"R22_Float32"
  %"fmul.288" = fmul float %".5044", %".5045"
  store float %"fmul.288", ptr %"R47_Float32"
  ; FFMA R8, R45, R44, R8
  %".5048" = load float, ptr %"R45_Float32"
  %".5049" = load float, ptr %"R44_Float32"
  %".5050" = load float, ptr %"R8_Float32"
  %"fmul.289" = fmul float %".5048", %".5049"
  %"fadd.245" = fadd float %"fmul.289", %".5050"
  store float %"fadd.245", ptr %"R8_Float32"
  ; FFMA R21, R47, R46, R8
  %".5053" = load float, ptr %"R47_Float32"
  %".5054" = load float, ptr %"R46_Float32"
  %".5055" = load float, ptr %"R8_Float32"
  %"fmul.290" = fmul float %".5053", %".5054"
  %"fadd.246" = fadd float %"fmul.290", %".5055"
  store float %"fadd.246", ptr %"R21_Float32"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".5058" = load i32, ptr %"R35_Int32"
  %".5059" = load i1, ptr %"PT_Bool"
  %"cmp.50" = icmp ne i32 %".5058", 0
  %".5060" = or i1 %"cmp.50", %".5059"
  ; @!P0 BRA `(.L_x_36)
  %".5062" = load i1, ptr %"P0_Bool"
  %".5063" = icmp eq i1 %".5062", 1
  br i1 %".5063", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7_Int32"
  ; IADD3 R6, R3, R34, RZ
  %".5068" = load i32, ptr %"R3_Int32"
  %".5069" = load i32, ptr %"R34_Int32"
  %"add.298" = add i32 %".5068", %".5069"
  %"add.299" = add i32 %"add.298", 0
  store i32 %"add.299", ptr %"R6_Int32"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".5072" = load i32, ptr %"R34_Int32"
  %".5073" = load i32, ptr %"R7_Int32"
  %"mul.102" = mul i32 %".5072", %".5073"
  %"add.300" = add i32 %"mul.102", %"Arg_3"
  store i32 %"add.300", ptr %"R4_Int32"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".5076" = load i32, ptr %"R6_Int32"
  %".5077" = load i32, ptr %"R7_Int32"
  %"mul.103" = mul i32 %".5076", %".5077"
  %"add.301" = add i32 %"mul.103", %"Arg_4"
  store i32 %"add.301", ptr %"R6_Int32"
  ; LDG.E.SYS R9, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5080" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.659" = zext ptr %".5080" to i64
  %".5081" = load ptr, ptr %"R5_Float32"
  %"zext.660" = zext ptr %".5081" to i64
  %"shl.336" = shl i64 %"zext.660", 32
  %"or.358" = or i64 %"shl.336", %"zext.659"
  %".5082" = add i64 %"or.358", 0
  %"for_LDG.330" = inttoptr i64 %".5082" to ptr
  %".5083" = load float, ptr %"for_LDG.330"
  store float %".5083", ptr %"R9_Float32"
  ; LDG.E.SYS R10, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".5086" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.661" = zext ptr %".5086" to i64
  %".5087" = load ptr, ptr %"R7_Int32"
  %"zext.662" = zext ptr %".5087" to i64
  %"shl.337" = shl i64 %"zext.662", 32
  %"or.359" = or i64 %"shl.337", %"zext.661"
  %".5088" = add i64 %"or.359", 0
  %"for_LDG.331" = inttoptr i64 %".5088" to ptr
  %".5089" = load float, ptr %"for_LDG.331"
  store float %".5089", ptr %"R10_Float32"
  ; LDG.E.SYS R11, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5092" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.663" = zext ptr %".5092" to i64
  %".5093" = load ptr, ptr %"R5_Float32"
  %"zext.664" = zext ptr %".5093" to i64
  %"shl.338" = shl i64 %"zext.664", 32
  %"or.360" = or i64 %"shl.338", %"zext.663"
  %".5094" = add i64 %"or.360", 4
  %"for_LDG.332" = inttoptr i64 %".5094" to ptr
  %".5095" = load float, ptr %"for_LDG.332"
  store float %".5095", ptr %"R11_Float32"
  ; LDG.E.SYS R12, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".5098" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.665" = zext ptr %".5098" to i64
  %".5099" = load ptr, ptr %"R7_Int32"
  %"zext.666" = zext ptr %".5099" to i64
  %"shl.339" = shl i64 %"zext.666", 32
  %"or.361" = or i64 %"shl.339", %"zext.665"
  %".5100" = add i64 %"or.361", 4
  %"for_LDG.333" = inttoptr i64 %".5100" to ptr
  %".5101" = load float, ptr %"for_LDG.333"
  store float %".5101", ptr %"R12_Float32"
  ; LDG.E.SYS R13, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5104" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.667" = zext ptr %".5104" to i64
  %".5105" = load ptr, ptr %"R5_Float32"
  %"zext.668" = zext ptr %".5105" to i64
  %"shl.340" = shl i64 %"zext.668", 32
  %"or.362" = or i64 %"shl.340", %"zext.667"
  %".5106" = add i64 %"or.362", 8
  %"for_LDG.334" = inttoptr i64 %".5106" to ptr
  %".5107" = load float, ptr %"for_LDG.334"
  store float %".5107", ptr %"R13_Float32"
  ; LDG.E.SYS R24, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".5110" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.669" = zext ptr %".5110" to i64
  %".5111" = load ptr, ptr %"R7_Int32"
  %"zext.670" = zext ptr %".5111" to i64
  %"shl.341" = shl i64 %"zext.670", 32
  %"or.363" = or i64 %"shl.341", %"zext.669"
  %".5112" = add i64 %"or.363", 8
  %"for_LDG.335" = inttoptr i64 %".5112" to ptr
  %".5113" = load float, ptr %"for_LDG.335"
  store float %".5113", ptr %"R24_Float32"
  ; LDG.E.SYS R25, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5116" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.671" = zext ptr %".5116" to i64
  %".5117" = load ptr, ptr %"R5_Float32"
  %"zext.672" = zext ptr %".5117" to i64
  %"shl.342" = shl i64 %"zext.672", 32
  %"or.364" = or i64 %"shl.342", %"zext.671"
  %".5118" = add i64 %"or.364", 12
  %"for_LDG.336" = inttoptr i64 %".5118" to ptr
  %".5119" = load float, ptr %"for_LDG.336"
  store float %".5119", ptr %"R25_Float32"
  ; LDG.E.SYS R36, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".5122" = load ptr, ptr %"R6_Float32_PTR"
  %"zext.673" = zext ptr %".5122" to i64
  %".5123" = load ptr, ptr %"R7_Int32"
  %"zext.674" = zext ptr %".5123" to i64
  %"shl.343" = shl i64 %"zext.674", 32
  %"or.365" = or i64 %"shl.343", %"zext.673"
  %".5124" = add i64 %"or.365", 12
  %"for_LDG.337" = inttoptr i64 %".5124" to ptr
  %".5125" = load float, ptr %"for_LDG.337"
  store float %".5125", ptr %"R36_Float32"
  ; IADD3 R35, R35, -0x4, RZ
  %".5128" = load i32, ptr %"R35_Int32"
  %"add.302" = add i32 %".5128", -4
  %"add.303" = add i32 %"add.302", 0
  store i32 %"add.303", ptr %"R35_Int32"
  ; IADD3 R34, R34, 0x4, RZ
  %".5131" = load i32, ptr %"R34_Int32"
  %"add.304" = add i32 %".5131", 4
  %"add.305" = add i32 %"add.304", 0
  store i32 %"add.305", ptr %"R34_Int32"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".5134" = load i32, ptr %"R35_Int32"
  %".5135" = load i1, ptr %"PT_Bool"
  %"cmp.51" = icmp ne i32 %".5134", 0
  %".5136" = and i1 %"cmp.51", %".5135"
  ; FMUL R8, R9, R22
  %".5138" = load float, ptr %"R9_Float32"
  %".5139" = load float, ptr %"R22_Float32"
  %"fmul.291" = fmul float %".5138", %".5139"
  store float %"fmul.291", ptr %"R8_Float32"
  ; FFMA R8, R8, R10, R21
  %".5142" = load float, ptr %"R8_Float32"
  %".5143" = load float, ptr %"R10_Float32"
  %".5144" = load float, ptr %"R21_Float32"
  %"fmul.292" = fmul float %".5142", %".5143"
  %"fadd.247" = fadd float %"fmul.292", %".5144"
  store float %"fadd.247", ptr %"R8_Float32"
  ; FMUL R11, R11, R22
  %".5147" = load float, ptr %"R11_Float32"
  %".5148" = load float, ptr %"R22_Float32"
  %"fmul.293" = fmul float %".5147", %".5148"
  store float %"fmul.293", ptr %"R11_Float32"
  ; FFMA R8, R11, R12, R8
  %".5151" = load float, ptr %"R11_Float32"
  %".5152" = load float, ptr %"R12_Float32"
  %".5153" = load float, ptr %"R8_Float32"
  %"fmul.294" = fmul float %".5151", %".5152"
  %"fadd.248" = fadd float %"fmul.294", %".5153"
  store float %"fadd.248", ptr %"R8_Float32"
  ; FMUL R13, R13, R22
  %".5156" = load float, ptr %"R13_Float32"
  %".5157" = load float, ptr %"R22_Float32"
  %"fmul.295" = fmul float %".5156", %".5157"
  store float %"fmul.295", ptr %"R13_Float32"
  ; FFMA R8, R13, R24, R8
  %".5160" = load float, ptr %"R13_Float32"
  %".5161" = load float, ptr %"R24_Float32"
  %".5162" = load float, ptr %"R8_Float32"
  %"fmul.296" = fmul float %".5160", %".5161"
  %"fadd.249" = fadd float %"fmul.296", %".5162"
  store float %"fadd.249", ptr %"R8_Float32"
  ; FMUL R25, R25, R22
  %".5165" = load float, ptr %"R25_Float32"
  %".5166" = load float, ptr %"R22_Float32"
  %"fmul.297" = fmul float %".5165", %".5166"
  store float %"fmul.297", ptr %"R25_Float32"
  ; FFMA R21, R25, R36, R8
  %".5169" = load float, ptr %"R25_Float32"
  %".5170" = load float, ptr %"R36_Float32"
  %".5171" = load float, ptr %"R8_Float32"
  %"fmul.298" = fmul float %".5169", %".5170"
  %"fadd.250" = fadd float %"fmul.298", %".5171"
  store float %"fadd.250", ptr %"R21_Float32"
  ; @P0 BRA `(.L_x_37)
  %".5174" = load i1, ptr %"P0_Bool"
  %".5175" = icmp ne i1 %".5174", 1
  br i1 %".5175", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".5178" = load i32, ptr %"R48_Int32"
  %".5179" = load i1, ptr %"PT_Bool"
  %"cmp.52" = icmp ne i32 %".5178", 0
  %".5180" = and i1 %"cmp.52", %".5179"
  ; @!P0 BRA `(.L_x_35)
  %".5182" = load i1, ptr %"P0_Bool"
  %".5183" = icmp eq i1 %".5182", 1
  br i1 %".5183", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5_Int32"
  ; IADD3 R4, R3, R34, RZ
  %".5188" = load i32, ptr %"R3_Int32"
  %".5189" = load i32, ptr %"R34_Int32"
  %"add.306" = add i32 %".5188", %".5189"
  %"add.307" = add i32 %"add.306", 0
  store i32 %"add.307", ptr %"R4_Int32"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".5192" = load i32, ptr %"R34_Int32"
  %".5193" = load i32, ptr %"R5_Int32"
  %"mul.104" = mul i32 %".5192", %".5193"
  %"add.308" = add i32 %"mul.104", %"Arg_3"
  store i32 %"add.308", ptr %"R34_Int32"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".5196" = load i32, ptr %"R4_Int32"
  %".5197" = load i32, ptr %"R5_Int32"
  %"mul.105" = mul i32 %".5196", %".5197"
  %"add.309" = add i32 %"mul.105", %"Arg_4"
  store i32 %"add.309", ptr %"R4_Int32"
  ; LDG.E.SYS R7, [R34]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".5200" = load ptr, ptr %"R34_Float32_PTR"
  %"zext.675" = zext ptr %".5200" to i64
  %".5201" = load ptr, ptr %"R35_Int32"
  %"zext.676" = zext ptr %".5201" to i64
  %"shl.344" = shl i64 %"zext.676", 32
  %"or.366" = or i64 %"shl.344", %"zext.675"
  %".5202" = add i64 %"or.366", 0
  %"for_LDG.338" = inttoptr i64 %".5202" to ptr
  %".5203" = load float, ptr %"for_LDG.338"
  store float %".5203", ptr %"R7_Float32"
  ; LDG.E.SYS R8, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5206" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.677" = zext ptr %".5206" to i64
  %".5207" = load ptr, ptr %"R5_Int32"
  %"zext.678" = zext ptr %".5207" to i64
  %"shl.345" = shl i64 %"zext.678", 32
  %"or.367" = or i64 %"shl.345", %"zext.677"
  %".5208" = add i64 %"or.367", 0
  %"for_LDG.339" = inttoptr i64 %".5208" to ptr
  %".5209" = load float, ptr %"for_LDG.339"
  store float %".5209", ptr %"R8_Float32"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".5212" = load i32, ptr %"R48_Int32"
  %".5213" = load i1, ptr %"PT_Bool"
  %"cmp.53" = icmp ne i32 %".5212", 1
  %".5214" = and i1 %"cmp.53", %".5213"
  ; FMUL R6, R7, R22
  %".5216" = load float, ptr %"R7_Float32"
  %".5217" = load float, ptr %"R22_Float32"
  %"fmul.299" = fmul float %".5216", %".5217"
  store float %"fmul.299", ptr %"R6_Float32"
  ; FFMA R21, R6, R8, R21
  %".5220" = load float, ptr %"R6_Float32"
  %".5221" = load float, ptr %"R8_Float32"
  %".5222" = load float, ptr %"R21_Float32"
  %"fmul.300" = fmul float %".5220", %".5221"
  %"fadd.251" = fadd float %"fmul.300", %".5222"
  store float %"fadd.251", ptr %"R21_Float32"
  ; @!P0 BRA `(.L_x_35)
  %".5225" = load i1, ptr %"P0_Bool"
  %".5226" = icmp eq i1 %".5225", 1
  br i1 %".5226", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".5229" = load i32, ptr %"R48_Int32"
  %".5230" = load i1, ptr %"PT_Bool"
  %"cmp.54" = icmp ne i32 %".5229", 2
  %".5231" = and i1 %"cmp.54", %".5230"
  ; LDG.E.SYS R7, [R34+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".5233" = load ptr, ptr %"R34_Float32_PTR"
  %"zext.679" = zext ptr %".5233" to i64
  %".5234" = load ptr, ptr %"R35_Int32"
  %"zext.680" = zext ptr %".5234" to i64
  %"shl.346" = shl i64 %"zext.680", 32
  %"or.368" = or i64 %"shl.346", %"zext.679"
  %".5235" = add i64 %"or.368", 4
  %"for_LDG.340" = inttoptr i64 %".5235" to ptr
  %".5236" = load float, ptr %"for_LDG.340"
  store float %".5236", ptr %"R7_Float32"
  ; LDG.E.SYS R8, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5239" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.681" = zext ptr %".5239" to i64
  %".5240" = load ptr, ptr %"R5_Int32"
  %"zext.682" = zext ptr %".5240" to i64
  %"shl.347" = shl i64 %"zext.682", 32
  %"or.369" = or i64 %"shl.347", %"zext.681"
  %".5241" = add i64 %"or.369", 4
  %"for_LDG.341" = inttoptr i64 %".5241" to ptr
  %".5242" = load float, ptr %"for_LDG.341"
  store float %".5242", ptr %"R8_Float32"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".5245" = load i1, ptr %"P0_Bool"
  %".5246" = icmp ne i1 %".5245", 1
  br i1 %".5246", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".5249" = load ptr, ptr %"R34_Float32_PTR"
  %"zext.683" = zext ptr %".5249" to i64
  %".5250" = load ptr, ptr %"R35_Int32"
  %"zext.684" = zext ptr %".5250" to i64
  %"shl.348" = shl i64 %"zext.684", 32
  %"or.370" = or i64 %"shl.348", %"zext.683"
  %".5251" = add i64 %"or.370", 8
  %"for_LDG.342" = inttoptr i64 %".5251" to ptr
  %".5252" = load float, ptr %"for_LDG.342"
  store float %".5252", ptr %"R9_Float32"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".5257" = load i1, ptr %"P0_Bool"
  %".5258" = icmp ne i1 %".5257", 1
  br i1 %".5258", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5261" = load ptr, ptr %"R4_Float32_PTR"
  %"zext.685" = zext ptr %".5261" to i64
  %".5262" = load ptr, ptr %"R5_Int32"
  %"zext.686" = zext ptr %".5262" to i64
  %"shl.349" = shl i64 %"zext.686", 32
  %"or.371" = or i64 %"shl.349", %"zext.685"
  %".5263" = add i64 %"or.371", 8
  %"for_LDG.343" = inttoptr i64 %".5263" to ptr
  %".5264" = load float, ptr %"for_LDG.343"
  store float %".5264", ptr %"R10_Float32"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".5269" = load float, ptr %"R7_Float32"
  %".5270" = load float, ptr %"R22_Float32"
  %"fmul.301" = fmul float %".5269", %".5270"
  store float %"fmul.301", ptr %"R6_Float32"
  ; FFMA R21, R6, R8, R21
  %".5273" = load float, ptr %"R6_Float32"
  %".5274" = load float, ptr %"R8_Float32"
  %".5275" = load float, ptr %"R21_Float32"
  %"fmul.302" = fmul float %".5273", %".5274"
  %"fadd.252" = fadd float %"fmul.302", %".5275"
  store float %"fadd.252", ptr %"R21_Float32"
  ; @P0 FMUL R22, R9, R22
  %".5278" = load i1, ptr %"P0_Bool"
  %".5279" = icmp ne i1 %".5278", 1
  br i1 %".5279", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".5282" = load float, ptr %"R9_Float32"
  %".5283" = load float, ptr %"R22_Float32"
  %"fmul.303" = fmul float %".5282", %".5283"
  store float %"fmul.303", ptr %"R22_Float32"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".5288" = load i1, ptr %"P0_Bool"
  %".5289" = icmp ne i1 %".5288", 1
  br i1 %".5289", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".5292" = load float, ptr %"R22_Float32"
  %".5293" = load float, ptr %"R10_Float32"
  %".5294" = load float, ptr %"R21_Float32"
  %"fmul.304" = fmul float %".5292", %".5293"
  %"fadd.253" = fadd float %"fmul.304", %".5294"
  store float %"fadd.253", ptr %"R21_Float32"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R30_Float32_PTR", ptr %"R30_Int32", i32 4, i1 0)
  %".5299" = load ptr, ptr %"R30_Float32_PTR"
  %"zext.687" = zext ptr %".5299" to i64
  %"or.372" = or i64 0, %"zext.687"
  %"or.373" = or i64 %"or.372", %"zext.687"
  %".5300" = add i64 %"or.373", 0
  %"for_LDG.344" = inttoptr i64 %".5300" to ptr
  %".5301" = load float, ptr %"for_LDG.344"
  store float %".5301", ptr %"R4_Float32"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".5306" = load float, ptr %"R4_Float32"
  %".5307" = load float, ptr %"R21_Float32"
  %"fadd.254" = fadd float %".5306", %".5307"
  store float %"fadd.254", ptr %"R21_Float32"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".5310" = load float, ptr %"R21_Float32"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".5310")
  %".5311" = load i1, ptr %"PT_Bool"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".5312" = and i1 %"fcmp_unordered.2", %".5311"
  ; @!P0 BRA `(.L_x_42)
  %".5314" = load i1, ptr %"P0_Bool"
  %".5315" = icmp eq i1 %".5314", 1
  br i1 %".5315", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".5318" = load float, ptr %"R21_Float32"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".5318")
  %"fmul.305" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  store float %"fmul.305", ptr %"R5_Float32"
  ; MOV R7, 0x3f800000
  store float 0x41cfc00000000000, ptr %"R7_Float32"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".5323" = load float, ptr %"R21_Float32"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".5323")
  %".5324" = load i1, ptr %"PT_Bool"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".5325" = and i1 %"fcmp_unordered.3", %".5324"
  ; MUFU.EX2 R5, R5
  %".5327" = load float, ptr %"R5_Float32"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".5327")
  store float %"llvm_exp2_f32_result.5", ptr %"R5_Float32"
  ; FADD R6, R5, 1
  %".5330" = load float, ptr %"R5_Float32"
  %"fadd.255" = fadd float %".5330", 0x3ff0000000000000
  store float %"fadd.255", ptr %"R6_Float32"
  ; MUFU.RCP R6, R6
  %".5333" = load float, ptr %"R6_Float32"
  %".5334" = fdiv float 0x3ff0000000000000, %".5333"
  store float %".5334", ptr %"R6_Float32"
  ; FFMA R4, R6, -2, R7
  %".5337" = load float, ptr %"R6_Float32"
  %".5338" = load float, ptr %"R7_Float32"
  %"fmul.306" = fmul float %".5337", 0xc000000000000000
  %"fadd.256" = fadd float %"fmul.306", %".5338"
  store float %"fadd.256", ptr %"R4_Float32"
  ; FSEL R4, R4, 1, !P0
  %".5341" = load float, ptr %"R4_Float32"
  %".5342" = load i1, ptr %"P0_Bool"
  %".5343" = icmp eq i1 %".5342", 1
  %"fsel.1" = select  i1 %".5343", float %".5341", float 0x3ff0000000000000
  store float %"fsel.1", ptr %"R4_Float32"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".5346" = load float, ptr %"R4_Float32"
  %".5347" = load float, ptr %"R21_Float32"
  %".5348" = or float %".5346", 0x41e0000000000000
  %".5349" = or float %".5346", %".5347"
  %".5350" = and float %".5348", %".5349"
  store float %".5350", ptr %"R4_Float32"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  store float 0x41ce407840000000, ptr %"R5_Float32"
  ; FMUL R4, R21, R21
  %".5357" = load float, ptr %"R21_Float32"
  %".5358" = load float, ptr %"R21_Float32"
  %"fmul.307" = fmul float %".5357", %".5358"
  store float %"fmul.307", ptr %"R4_Float32"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".5361" = load float, ptr %"R4_Float32"
  %".5362" = load float, ptr %"R5_Float32"
  %"fmul.308" = fmul float %".5361", %".5362"
  %"fadd.257" = fadd float %"fmul.308", 0xbfaac795c0000000
  store float %"fadd.257", ptr %"R5_Float32"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".5365" = load float, ptr %"R4_Float32"
  %".5366" = load float, ptr %"R5_Float32"
  %"fmul.309" = fmul float %".5365", %".5366"
  %"fadd.258" = fadd float %"fmul.309", 0x3fc10b2820000000
  store float %"fadd.258", ptr %"R5_Float32"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".5369" = load float, ptr %"R4_Float32"
  %".5370" = load float, ptr %"R5_Float32"
  %"fmul.310" = fmul float %".5369", %".5370"
  %"fadd.259" = fadd float %"fmul.310", 0xbfd5553da0000000
  store float %"fadd.259", ptr %"R5_Float32"
  ; FFMA R4, R4, R5, RZ
  %".5373" = load float, ptr %"R4_Float32"
  %".5374" = load float, ptr %"R5_Float32"
  %"fmul.311" = fmul float %".5373", %".5374"
  %"fadd.260" = fadd float %"fmul.311",              0x0
  store float %"fadd.260", ptr %"R4_Float32"
  ; FFMA R4, R21, R4, R21
  %".5377" = load float, ptr %"R21_Float32"
  %".5378" = load float, ptr %"R4_Float32"
  %".5379" = load float, ptr %"R21_Float32"
  %"fmul.312" = fmul float %".5377", %".5378"
  %"fadd.261" = fadd float %"fmul.312", %".5379"
  store float %"fadd.261", ptr %"R4_Float32"
.L_x_43:
  ; BSYNC B0
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R23_Int32", ptr %"R23_Float32", i32 4, i1 0)
  %".5383" = load i32, ptr %"R23_Int32"
  %"add.310" = add i32 %".5383", 25165824
  %"add.311" = add i32 %"add.310", 0
  store i32 %"add.311", ptr %"R5_Int32"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".5388" = load i32, ptr %"R5_Int32"
  %".5389" = and i32 %".5388", 2139095040
  store i32 %".5389", ptr %"R5_Int32"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".5392" = load i32, ptr %"R5_Int32"
  %".5393" = load i1, ptr %"PT_Bool"
  %"cmp.55" = icmp sgt i32 %".5392", 33554431
  %".5394" = and i1 %"cmp.55", %".5393"
  ; @P0 BRA `(.L_x_45)
  %".5396" = load i1, ptr %"P0_Bool"
  %".5397" = icmp ne i1 %".5396", 1
  br i1 %".5397", label %".L_x_45", label %".L_x_41_split_0x47f0"
.L_x_41_split_0x47f0:
  ; MOV R24, R23
  %".5400" = load float, ptr %"R23_Float32"
  store float %".5400", ptr %"R24_Float32"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_NOTYPE", ptr %"R10_Int32", i32 4, i1 0)
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.3" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R5, R22
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Int32", ptr %"R22_Float32", i32 4, i1 0)
  %".5406" = load i32, ptr %"R22_Int32"
  store i32 %".5406", ptr %"R5_Int32"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".5411" = load float, ptr %"R23_Float32"
  %".5412" = fdiv float 0x3ff0000000000000, %".5411"
  store float %".5412", ptr %"R6_Float32"
  ; FFMA R5, R23, R6, -1
  %".5415" = load float, ptr %"R23_Float32"
  %".5416" = load float, ptr %"R6_Float32"
  %"fmul.313" = fmul float %".5415", %".5416"
  %"fadd.262" = fadd float %"fmul.313", 0xbff0000000000000
  store float %"fadd.262", ptr %"R5_Float32"
  ; FADD.FTZ R5, -R5, -RZ
  %".5419" = load float, ptr %"R5_Float32"
  %".5420" = sub float              0x0, %".5419"
  %"fadd.263" = fadd float %".5420",              0x0
  store float %"fadd.263", ptr %"R5_Float32"
  ; FFMA R5, R6, R5, R6
  %".5423" = load float, ptr %"R6_Float32"
  %".5424" = load float, ptr %"R5_Float32"
  %".5425" = load float, ptr %"R6_Float32"
  %"fmul.314" = fmul float %".5423", %".5424"
  %"fadd.264" = fadd float %"fmul.314", %".5425"
  store float %"fadd.264", ptr %"R5_Float32"
.L_x_46:
  ; BSYNC B0
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R28_Float32_PTR", ptr %"R28_Int32", i32 4, i1 0)
  %".5429" = load ptr, ptr %"R28_Float32_PTR"
  %"zext.688" = zext ptr %".5429" to i64
  %"or.374" = or i64 0, %"zext.688"
  %"or.375" = or i64 %"or.374", %"zext.688"
  %".5430" = add i64 %"or.375", 0
  %"for_LDG.345" = inttoptr i64 %".5430" to ptr
  %".5431" = load float, ptr %"for_LDG.345"
  store float %".5431", ptr %"R6_Float32"
  ; FADD R7, -R5, 1
  %".5434" = load float, ptr %"R5_Float32"
  %".5435" = sub float              0x0, %".5434"
  %"fadd.265" = fadd float %".5435", 0x3ff0000000000000
  store float %"fadd.265", ptr %"R7_Float32"
  ; FMUL R6, R6, R5
  %".5438" = load float, ptr %"R6_Float32"
  %".5439" = load float, ptr %"R5_Float32"
  %"fmul.315" = fmul float %".5438", %".5439"
  store float %"fmul.315", ptr %"R6_Float32"
  ; FFMA R7, R7, R4, R6
  %".5442" = load float, ptr %"R7_Float32"
  %".5443" = load float, ptr %"R4_Float32"
  %".5444" = load float, ptr %"R6_Float32"
  %"fmul.316" = fmul float %".5442", %".5443"
  %"fadd.266" = fadd float %"fmul.316", %".5444"
  store float %"fadd.266", ptr %"R7_Float32"
  ; STG.E.SYS [R28], R7
  %".5447" = load float, ptr %"R7_Float32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R28_Float32_PTR", ptr %"R28_Int32", i32 4, i1 0)
  %".5448" = load ptr, ptr %"R28_Float32_PTR"
  %"zext.689" = zext ptr %".5448" to i64
  %"or.376" = or i64 0, %"zext.689"
  %"or.377" = or i64 %"or.376", %"zext.689"
  %".5449" = add i64 %"or.377", 0
  %"for_STG.1" = inttoptr i64 %".5449" to ptr
  store float %".5447", ptr %"for_STG.1"
  ; @!P3 BRA `(.L_x_47)
  %".5452" = load i1, ptr %"P3_Bool"
  %".5453" = icmp eq i1 %".5452", 1
  br i1 %".5453", label %".L_x_47", label %".L_x_44_split_0x48f0"
.L_x_44_split_0x48f0:
  ; EXIT
  br label %"ExitFunction"
ExitFunction:
  ret void
}

declare void @"llvm.memcpy.p0.p0.i32"(ptr %".1", ptr %".2", i32 %".3", i1 %".4")

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

declare float @"llvm.exp2.f32"(float %".1")

define float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
{
Entry_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath:
  %"R11_Int32" = alloca i32, i32 1
  %"R24_Int32" = alloca i32, i32 1
  %"RZ_Int32" = alloca i32, i32 1
  %"RZ_NOTYPE" = alloca i32, i32 1
  %"R25_Int32" = alloca i32, i32 1
  %"P0_Bool" = alloca i1, i32 1
  %"PT_Bool" = alloca i1, i32 1
  %"R12_Float32" = alloca float, i32 1
  %"R24_Float32" = alloca float, i32 1
  %"RZ_Float32" = alloca float, i32 1
  %"R11_NOTYPE" = alloca i32, i32 1
  %"R24_NOTYPE" = alloca i32, i32 1
  %"R13_NOTYPE" = alloca i32, i32 1
  %"R13_Float32" = alloca float, i32 1
  %"R22_Float32" = alloca float, i32 1
  %"R11_Float32" = alloca float, i32 1
  %"R34_Int32" = alloca i32, i32 1
  %"R23_Int32" = alloca i32, i32 1
  %"R12_NOTYPE" = alloca i32, i32 1
  %"R12_Int32" = alloca i32, i32 1
  %"R13_Int32" = alloca i32, i32 1
  %"P1_Bool" = alloca i1, i32 1
  %"P2_Bool" = alloca i1, i32 1
  %"R22_NOTYPE" = alloca i32, i32 1
  %"R10_NOTYPE" = alloca i32, i32 1
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".4" = icmp ult i32 1, 32
  %"SHF_min" = select  i1 %".4", i32 1, i32 32
  %".5" = load i32, ptr %"R24_Int32"
  %"zext" = zext i32 0 to i64
  %"zext.1" = zext i32 %".5" to i64
  %"zext.2" = zext i32 1 to i64
  %"shl" = shl i64 %"zext", 32
  %"or" = or i64 %"shl", %"zext.1"
  %"shl.1" = shl i64 %"or", %"zext.2"
  %"and" = and i64 %"shl.1", 4294967295
  %"trunc32" = trunc i64 %"and" to i32
  store i32 %"trunc32", ptr %"R11_Int32"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".10" = icmp ult i32 24, 32
  %"SHF_min.1" = select  i1 %".10", i32 24, i32 32
  %".11" = load i32, ptr %"R11_Int32"
  %"zext.3" = zext i32 %".11" to i64
  %"zext.4" = zext i32 0 to i64
  %"zext.5" = zext i32 24 to i64
  %"shl.2" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.2", %"zext.4"
  %"lshr" = lshr i64 %"or.1", %"zext.5"
  %"lshr.1" = lshr i64 %"lshr", 32
  %"trunc32.1" = trunc i64 %"lshr.1" to i32
  store i32 %"trunc32.1", ptr %"R25_Int32"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".14" = load i32, ptr %"R25_Int32"
  %".15" = load i1, ptr %"PT_Bool"
  %"cmp" = icmp ne i32 %".14", 0
  %".16" = and i1 %"cmp", %".15"
  ; @P0 BRA `(.L_x_49)
  %".18" = load i1, ptr %"P0_Bool"
  %".19" = icmp ne i1 %".18", 1
  br i1 %".19", label %".L_x_49", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".22" = icmp ult i32 1, 32
  %"SHF_min.2" = select  i1 %".22", i32 1, i32 32
  %".23" = load i32, ptr %"R24_Int32"
  %"zext.6" = zext i32 0 to i64
  %"zext.7" = zext i32 %".23" to i64
  %"zext.8" = zext i32 1 to i64
  %"shl.3" = shl i64 %"zext.6", 32
  %"or.2" = or i64 %"shl.3", %"zext.7"
  %"shl.4" = shl i64 %"or.2", %"zext.8"
  %"and.1" = and i64 %"shl.4", 4294967295
  %"trunc32.2" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.2", ptr %"R11_Int32"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".26" = load i32, ptr %"R11_Int32"
  %".27" = load i1, ptr %"PT_Bool"
  %"cmp.1" = icmp ne i32 %".26", 0
  %".28" = and i1 %"cmp.1", %".27"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".30" = load i1, ptr %"P0_Bool"
  %".31" = icmp ne i1 %".30", 1
  br i1 %".31", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".34" = load float, ptr %"R24_Float32"
  %"fmul" = fmul float %".34", 0x43f0000000000000
  %"fadd" = fadd float %"fmul",              0x0
  store float %"fadd", ptr %"R12_Float32"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990:
  ; @!P0 MUFU.RCP R11, R24
  %".39" = load i1, ptr %"P0_Bool"
  %".40" = icmp eq i1 %".39", 1
  br i1 %".40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".43" = load i32, ptr %"R24_NOTYPE"
  %".44" = fdiv i32 1, %".43"
  store i32 %".44", ptr %"R11_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R11_NOTYPE", ptr %"R11_Int32", i32 4, i1 0)
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0:
  ; @P0 MUFU.RCP R13, R12
  %".49" = load i1, ptr %"P0_Bool"
  %".50" = icmp ne i1 %".49", 1
  br i1 %".50", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".53" = load float, ptr %"R12_Float32"
  %".54" = fdiv float 0x3ff0000000000000, %".53"
  store float %".54", ptr %"R13_Float32"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0:
  ; @P0 FFMA R22, R12, R13, -1
  %".59" = load i1, ptr %"P0_Bool"
  %".60" = icmp ne i1 %".59", 1
  br i1 %".60", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".63" = load float, ptr %"R12_Float32"
  %".64" = load float, ptr %"R13_Float32"
  %"fmul.1" = fmul float %".63", %".64"
  %"fadd.1" = fadd float %"fmul.1", 0xbff0000000000000
  store float %"fadd.1", ptr %"R22_Float32"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".69" = load i1, ptr %"P0_Bool"
  %".70" = icmp ne i1 %".69", 1
  br i1 %".70", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".73" = load float, ptr %"R22_Float32"
  %".74" = sub float              0x0, %".73"
  %"fadd.2" = fadd float %".74",              0x0
  store float %"fadd.2", ptr %"R22_Float32"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0:
  ; @P0 FFMA R22, R13, R22, R13
  %".79" = load i1, ptr %"P0_Bool"
  %".80" = icmp ne i1 %".79", 1
  br i1 %".80", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".83" = load float, ptr %"R13_Float32"
  %".84" = load float, ptr %"R22_Float32"
  %".85" = load float, ptr %"R13_Float32"
  %"fmul.2" = fmul float %".83", %".84"
  %"fadd.3" = fadd float %"fmul.2", %".85"
  store float %"fadd.3", ptr %"R22_Float32"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".90" = load i1, ptr %"P0_Bool"
  %".91" = icmp ne i1 %".90", 1
  br i1 %".91", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".94" = load float, ptr %"R22_Float32"
  %"fmul.3" = fmul float %".94", 0x43f0000000000000
  %"fadd.4" = fadd float %"fmul.3",              0x0
  store float %"fadd.4", ptr %"R11_Float32"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0:
  ; BRA `(.L_x_50)
  br label %".L_x_50"
.L_x_49:
  ; IADD3 R34, R25, -0xfd, RZ
  %".101" = load i32, ptr %"R25_Int32"
  %"add" = add i32 %".101", -253
  %"add.1" = add i32 %"add", 0
  store i32 %"add.1", ptr %"R34_Int32"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".104" = load i32, ptr %"R34_Int32"
  %".105" = load i1, ptr %"PT_Bool"
  %"cmp.2" = icmp sgt i32 %".104", 1
  %".106" = and i1 %"cmp.2", %".105"
  ; @P0 BRA `(.L_x_51)
  %".108" = load i1, ptr %"P0_Bool"
  %".109" = icmp ne i1 %".108", 1
  br i1 %".109", label %".L_x_51", label %".L_x_49_split_0x4a30"
.L_x_49_split_0x4a30:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".112" = load i32, ptr %"R24_NOTYPE"
  %".113" = and i32 %".112", 8388607
  store i32 %".113", ptr %"R11_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R11_NOTYPE", ptr %"R11_Int32", i32 4, i1 0)
  ; MOV R23, 0x3
  store i32 3, ptr %"R23_Int32"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".118" = load i32, ptr %"R11_NOTYPE"
  %".119" = or i32 %".118", 1065353216
  store i32 %".119", ptr %"R11_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R11_Float32", ptr %"R11_Int32", i32 4, i1 0)
  ; SHF.L.U32 R23, R23, R34, RZ
  %".122" = load i32, ptr %"R34_Int32"
  %".123" = icmp ult i32 %".122", 32
  %"SHF_min.3" = select  i1 %".123", i32 %".122", i32 32
  %".124" = load i32, ptr %"R23_Int32"
  %".125" = load i32, ptr %"R34_Int32"
  %"zext.9" = zext i32 0 to i64
  %"zext.10" = zext i32 %".124" to i64
  %"zext.11" = zext i32 %".125" to i64
  %"shl.5" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.5", %"zext.10"
  %"shl.6" = shl i64 %"or.3", %"zext.11"
  %"and.2" = and i64 %"shl.6", 4294967295
  %"trunc32.3" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.3", ptr %"R23_Int32"
  ; MUFU.RCP R12, R11
  %".128" = load float, ptr %"R11_Float32"
  %".129" = fdiv float 0x3ff0000000000000, %".128"
  store float %".129", ptr %"R12_Float32"
  ; FFMA R13, R11, R12, -1
  %".132" = load float, ptr %"R11_Float32"
  %".133" = load float, ptr %"R12_Float32"
  %"fmul.4" = fmul float %".132", %".133"
  %"fadd.5" = fadd float %"fmul.4", 0xbff0000000000000
  store float %"fadd.5", ptr %"R13_Float32"
  ; FADD.FTZ R13, -R13, -RZ
  %".136" = load float, ptr %"R13_Float32"
  %".137" = sub float              0x0, %".136"
  %"fadd.6" = fadd float %".137",              0x0
  store float %"fadd.6", ptr %"R13_Float32"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".140" = load float, ptr %"R12_Float32"
  %".141" = load float, ptr %"R13_Float32"
  %".142" = load float, ptr %"R12_Float32"
  %"fmul.5" = fmul float %".140", %".141"
  %"fadd.7" = fadd float %"fmul.5", %".142"
  store float %"fadd.7", ptr %"R22_Float32"
  ; FFMA.RP R13, R12, R13, R12
  %".145" = load float, ptr %"R12_Float32"
  %".146" = load float, ptr %"R13_Float32"
  %".147" = load float, ptr %"R12_Float32"
  %"fmul.6" = fmul float %".145", %".146"
  %"fadd.8" = fadd float %"fmul.6", %".147"
  store float %"fadd.8", ptr %"R13_Float32"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".150" = load float, ptr %"R22_Float32"
  %".151" = bitcast float %".150" to i32
  %".152" = and i32 %".151", 8388607
  store i32 %".152", ptr %"R12_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_NOTYPE", ptr %"R12_Int32", i32 4, i1 0)
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".155" = load float, ptr %"R22_Float32"
  %".156" = load float, ptr %"R13_Float32"
  %".157" = load i1, ptr %"PT_Bool"
  %"fcmp_ordered" = fcmp une float %".155", %".156"
  %".158" = and i1 %"fcmp_ordered", %".157"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".160" = load i32, ptr %"R12_NOTYPE"
  %".161" = or i32 %".160", 8388608
  store i32 %".161", ptr %"R12_Int32"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".164" = load i1, ptr %"P0_Bool"
  %".165" = icmp eq i1 %".164", 1
  %"sel" = select  i1 %".165", i32 0, i32 4294967295
  store i32 %"sel", ptr %"R13_Int32"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".168" = load i32, ptr %"R23_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_NOTYPE", ptr %"R12_Int32", i32 4, i1 0)
  %".169" = load i32, ptr %"R12_NOTYPE"
  %".170" = and i32 %".168", %".169"
  store i32 %".170", ptr %"R23_Int32"
  ; IADD3 R13, -R13, RZ, RZ
  %".173" = load i32, ptr %"R13_Int32"
  %".174" = sub i32 0, %".173"
  %"add.2" = add i32 %".174", 0
  %"add.3" = add i32 %"add.2", 0
  store i32 %"add.3", ptr %"R13_Int32"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".177" = load i32, ptr %"R34_Int32"
  %".178" = icmp ult i32 %".177", 32
  %"SHF_min.4" = select  i1 %".178", i32 %".177", i32 32
  %".179" = load i32, ptr %"R23_Int32"
  %".180" = load i32, ptr %"R34_Int32"
  %"zext.12" = zext i32 %".179" to i64
  %"zext.13" = zext i32 0 to i64
  %"zext.14" = zext i32 %".180" to i64
  %"shl.7" = shl i64 %"zext.12", 32
  %"or.4" = or i64 %"shl.7", %"zext.13"
  %"lshr.2" = lshr i64 %"or.4", %"zext.14"
  %"lshr.3" = lshr i64 %"lshr.2", 32
  %"trunc32.4" = trunc i64 %"lshr.3" to i32
  store i32 %"trunc32.4", ptr %"R23_Int32"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".183" = load i32, ptr %"R13_Int32"
  %".184" = load i32, ptr %"R34_Int32"
  %".185" = load i32, ptr %"R12_Int32"
  %"LOP3_result" = call i32 @"custom_lop3"(i32 %".185", i32 0, i32 %".183", i32 %".184")
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".187" = load i32, ptr %"R23_Int32"
  %"LOP3_result.1" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".187", i32 1)
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".189" = load i32, ptr %"R23_Int32"
  %"LOP3_result.2" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".189", i32 2)
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".191" = load i1, ptr %"P0_Bool"
  %".192" = sub i1 0, %".191"
  %".193" = load i1, ptr %"P1_Bool"
  %".194" = sub i1 0, %".193"
  %".195" = or i1 %".192", %".194"
  %".196" = and i1 %".195", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".198" = load i32, ptr %"R24_NOTYPE"
  %"LOP3_result.3" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".198", i32 8388607)
  ; SEL R11, RZ, 0x1, !P0
  %".200" = load i1, ptr %"P0_Bool"
  %".201" = icmp eq i1 %".200", 1
  %"sel.1" = select  i1 %".201", i32 0, i32 1
  store i32 %"sel.1", ptr %"R11_Int32"
  ; IADD3 R11, -R11, RZ, RZ
  %".204" = load i32, ptr %"R11_Int32"
  %".205" = sub i32 0, %".204"
  %"add.4" = add i32 %".205", 0
  %"add.5" = add i32 %"add.4", 0
  store i32 %"add.5", ptr %"R11_Int32"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".208" = load i32, ptr %"R11_Int32"
  %".209" = load i1, ptr %"PT_Bool"
  %"cmp.3" = icmp sge i32 %".208", 0
  %".210" = and i1 %"cmp.3", %".209"
  ; IADD3 R11, R25, -0xfc, RZ
  %".212" = load i32, ptr %"R25_Int32"
  %"add.6" = add i32 %".212", -252
  %"add.7" = add i32 %"add.6", 0
  store i32 %"add.7", ptr %"R11_Int32"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".215" = load i32, ptr %"R11_Int32"
  %".216" = icmp ult i32 %".215", 32
  %"SHF_min.5" = select  i1 %".216", i32 %".215", i32 32
  %".217" = load i32, ptr %"R12_Int32"
  %".218" = load i32, ptr %"R11_Int32"
  %"zext.15" = zext i32 %".217" to i64
  %"zext.16" = zext i32 0 to i64
  %"zext.17" = zext i32 %".218" to i64
  %"shl.8" = shl i64 %"zext.15", 32
  %"or.5" = or i64 %"shl.8", %"zext.16"
  %"lshr.4" = lshr i64 %"or.5", %"zext.17"
  %"lshr.5" = lshr i64 %"lshr.4", 32
  %"trunc32.5" = trunc i64 %"lshr.5" to i32
  store i32 %"trunc32.5", ptr %"R11_Int32"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".221" = load i1, ptr %"P0_Bool"
  %".222" = icmp eq i1 %".221", 1
  br i1 %".222", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4be0"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".225" = load i32, ptr %"R11_Int32"
  %"add.8" = add i32 %".225", 1
  %"add.9" = add i32 %"add.8", 0
  store i32 %"add.9", ptr %"R11_Int32"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0"
.L_x_49_split_0x4be0:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".230" = load i1, ptr %"P1_Bool"
  %".231" = icmp eq i1 %".230", 1
  br i1 %".231", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0", label %".L_x_49_split_0x4bf0"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".234" = icmp ult i32 1, 32
  %"SHF_min.6" = select  i1 %".234", i32 1, i32 32
  %".235" = load i32, ptr %"R11_Int32"
  %"zext.18" = zext i32 0 to i64
  %"zext.19" = zext i32 %".235" to i64
  %"zext.20" = zext i32 1 to i64
  %"shl.9" = shl i64 %"zext.18", 32
  %"or.6" = or i64 %"shl.9", %"zext.19"
  %"shl.10" = shl i64 %"or.6", %"zext.20"
  %"and.3" = and i64 %"shl.10", 4294967295
  %"trunc32.6" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.6", ptr %"R11_Int32"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0"
.L_x_49_split_0x4bf0:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".240" = load i32, ptr %"R11_Int32"
  %".241" = load i32, ptr %"R24_NOTYPE"
  %".242" = or i32 %".240", 2147483648
  %".243" = or i32 %".240", %".241"
  %".244" = and i32 %".242", %".243"
  store i32 %".244", ptr %"R11_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R11_NOTYPE", ptr %"R11_Int32", i32 4, i1 0)
  ; BRA `(.L_x_50)
  br label %".L_x_50"
.L_x_51:
  ; MUFU.RCP R11, R24
  %".249" = load i32, ptr %"R24_NOTYPE"
  %".250" = fdiv i32 1, %".249"
  store i32 %".250", ptr %"R11_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R11_NOTYPE", ptr %"R11_Int32", i32 4, i1 0)
.L_x_50:
  ; BSYNC B1
.L_x_48:
  ; MOV R22, R11
  %".254" = load i32, ptr %"R11_NOTYPE"
  %"R22_Int32" = alloca i32, i32 1
  store i32 %".254", ptr %"R22_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_NOTYPE", ptr %"R22_Int32", i32 4, i1 0)
  ; MOV R11, 0x0
  store i32 0, ptr %"R11_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R11_NOTYPE", ptr %"R11_Int32", i32 4, i1 0)
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
.L_x_52:
  ; BRA `(.L_x_52)
  br label %".L_x_52"
ExitFunction:
  ret void
}

declare float @"llvm.fabs"(float %".1")

