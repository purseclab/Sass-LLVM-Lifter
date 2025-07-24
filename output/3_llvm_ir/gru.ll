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
  %".204" = ptrtoint ptr %".203" to i64
  %".205" = add i64 %".204", 0
  %"for_LDG" = inttoptr i64 %".205" to ptr
  %".206" = load float, ptr %"for_LDG"
  store float %".206", ptr %"R57_Float32"
  ; LDG.E.SYS R56, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".209" = load ptr, ptr %"R16_Float32_PTR"
  %".210" = ptrtoint ptr %".209" to i64
  %".211" = add i64 %".210", 0
  %"for_LDG.1" = inttoptr i64 %".211" to ptr
  %".212" = load float, ptr %"for_LDG.1"
  store float %".212", ptr %"R56_Float32"
  ; LDG.E.SYS R58, [R20]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".215" = load ptr, ptr %"R20_Float32_PTR"
  %".216" = ptrtoint ptr %".215" to i64
  %".217" = add i64 %".216", 0
  %"for_LDG.2" = inttoptr i64 %".217" to ptr
  %".218" = load float, ptr %"for_LDG.2"
  store float %".218", ptr %"R58_Float32"
  ; LDG.E.SYS R24, [R38+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".221" = load ptr, ptr %"R38_Float32_PTR"
  %".222" = ptrtoint ptr %".221" to i64
  %".223" = add i64 %".222", 4
  %"for_LDG.3" = inttoptr i64 %".223" to ptr
  %".224" = load float, ptr %"for_LDG.3"
  store float %".224", ptr %"R24_Float32"
  ; LDG.E.SYS R47, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".227" = load ptr, ptr %"R16_Float32_PTR"
  %".228" = ptrtoint ptr %".227" to i64
  %".229" = add i64 %".228", 4
  %"for_LDG.4" = inttoptr i64 %".229" to ptr
  %".230" = load float, ptr %"for_LDG.4"
  store float %".230", ptr %"R47_Float32"
  ; LDG.E.SYS R49, [R20+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".233" = load ptr, ptr %"R20_Float32_PTR"
  %".234" = ptrtoint ptr %".233" to i64
  %".235" = add i64 %".234", 4
  %"for_LDG.5" = inttoptr i64 %".235" to ptr
  %".236" = load float, ptr %"for_LDG.5"
  store float %".236", ptr %"R49_Float32"
  ; LDG.E.SYS R22, [R38+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".239" = load ptr, ptr %"R38_Float32_PTR"
  %".240" = ptrtoint ptr %".239" to i64
  %".241" = add i64 %".240", 8
  %"for_LDG.6" = inttoptr i64 %".241" to ptr
  %".242" = load float, ptr %"for_LDG.6"
  store float %".242", ptr %"R22_Float32"
  ; LDG.E.SYS R43, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".245" = load ptr, ptr %"R16_Float32_PTR"
  %".246" = ptrtoint ptr %".245" to i64
  %".247" = add i64 %".246", 8
  %"for_LDG.7" = inttoptr i64 %".247" to ptr
  %".248" = load float, ptr %"for_LDG.7"
  store float %".248", ptr %"R43_Float32"
  ; LDG.E.SYS R45, [R20+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".251" = load ptr, ptr %"R20_Float32_PTR"
  %".252" = ptrtoint ptr %".251" to i64
  %".253" = add i64 %".252", 8
  %"for_LDG.8" = inttoptr i64 %".253" to ptr
  %".254" = load float, ptr %"for_LDG.8"
  store float %".254", ptr %"R45_Float32"
  ; LDG.E.SYS R15, [R38+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".257" = load ptr, ptr %"R38_Float32_PTR"
  %".258" = ptrtoint ptr %".257" to i64
  %".259" = add i64 %".258", 12
  %"for_LDG.9" = inttoptr i64 %".259" to ptr
  %".260" = load float, ptr %"for_LDG.9"
  store float %".260", ptr %"R15_Float32"
  ; LDG.E.SYS R14, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".263" = load ptr, ptr %"R16_Float32_PTR"
  %".264" = ptrtoint ptr %".263" to i64
  %".265" = add i64 %".264", 12
  %"for_LDG.10" = inttoptr i64 %".265" to ptr
  %".266" = load float, ptr %"for_LDG.10"
  store float %".266", ptr %"R14_Float32"
  ; LDG.E.SYS R13, [R20+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".269" = load ptr, ptr %"R20_Float32_PTR"
  %".270" = ptrtoint ptr %".269" to i64
  %".271" = add i64 %".270", 12
  %"for_LDG.11" = inttoptr i64 %".271" to ptr
  %".272" = load float, ptr %"for_LDG.11"
  store float %".272", ptr %"R13_Float32"
  ; IADD3 R41, R11, 0x4, RZ
  %".275" = load i32, ptr %"R11_Int32"
  %"add.23" = add i32 %".275", 4
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R41_Int32"
  ; IADD3 R51, R23, 0x4, RZ
  %".278" = load i32, ptr %"R23_Int32"
  %"add.25" = add i32 %".278", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"R51_Int32"
  ; IADD3 R35, R11, 0x8, RZ
  %".281" = load i32, ptr %"R11_Int32"
  %"add.27" = add i32 %".281", 8
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", ptr %"R35_Int32"
  ; IMAD.WIDE R40, R41, R18, c[0x0][0x168]
  %".284" = load i32, ptr %"R41_Int32"
  %".285" = load i32, ptr %"R18_Int32"
  %"mul.12" = mul i32 %".284", %".285"
  %"add.29" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.29", ptr %"R40_Int32"
  ; IADD3 R37, R11, 0xc, RZ
  %".288" = load i32, ptr %"R11_Int32"
  %"add.30" = add i32 %".288", 12
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R37_Int32"
  ; IMAD.WIDE R38, R51, R18, c[0x0][0x170]
  %".291" = load i32, ptr %"R51_Int32"
  %".292" = load i32, ptr %"R18_Int32"
  %"mul.13" = mul i32 %".291", %".292"
  %"add.32" = add i32 %"mul.13", %"Arg_4"
  store i32 %"add.32", ptr %"R38_Int32"
  ; IADD3 R51, R25, 0x4, RZ
  %".295" = load i32, ptr %"R25_Int32"
  %"add.33" = add i32 %".295", 4
  %"add.34" = add i32 %"add.33", 0
  store i32 %"add.34", ptr %"R51_Int32"
  ; LDG.E.SYS R12, [R40]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".298" = load ptr, ptr %"R40_Float32_PTR"
  %".299" = ptrtoint ptr %".298" to i64
  %".300" = add i64 %".299", 0
  %"for_LDG.12" = inttoptr i64 %".300" to ptr
  %".301" = load float, ptr %"for_LDG.12"
  store float %".301", ptr %"R12_Float32"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x168]
  %".304" = load i32, ptr %"R35_Int32"
  %".305" = load i32, ptr %"R18_Int32"
  %"mul.14" = mul i32 %".304", %".305"
  %"add.35" = add i32 %"mul.14", %"Arg_3"
  store i32 %"add.35", ptr %"R34_Int32"
  ; LDG.E.SYS R10, [R40+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".308" = load ptr, ptr %"R40_Float32_PTR"
  %".309" = ptrtoint ptr %".308" to i64
  %".310" = add i64 %".309", 4
  %"for_LDG.13" = inttoptr i64 %".310" to ptr
  %".311" = load float, ptr %"for_LDG.13"
  store float %".311", ptr %"R10_Float32"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x168]
  %".314" = load i32, ptr %"R37_Int32"
  %".315" = load i32, ptr %"R18_Int32"
  %"mul.15" = mul i32 %".314", %".315"
  %"add.36" = add i32 %"mul.15", %"Arg_3"
  store i32 %"add.36", ptr %"R36_Int32"
  ; LDG.E.SYS R16, [R40+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".318" = load ptr, ptr %"R40_Float32_PTR"
  %".319" = ptrtoint ptr %".318" to i64
  %".320" = add i64 %".319", 8
  %"for_LDG.14" = inttoptr i64 %".320" to ptr
  %".321" = load float, ptr %"for_LDG.14"
  store float %".321", ptr %"R16_Float32"
  ; LDG.E.SYS R17, [R40+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".324" = load ptr, ptr %"R40_Float32_PTR"
  %".325" = ptrtoint ptr %".324" to i64
  %".326" = add i64 %".325", 12
  %"for_LDG.15" = inttoptr i64 %".326" to ptr
  %".327" = load float, ptr %"for_LDG.15"
  store float %".327", ptr %"R17_Float32"
  ; LDG.E.SYS R19, [R34]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".330" = load ptr, ptr %"R34_Float32_PTR"
  %".331" = ptrtoint ptr %".330" to i64
  %".332" = add i64 %".331", 0
  %"for_LDG.16" = inttoptr i64 %".332" to ptr
  %".333" = load float, ptr %"for_LDG.16"
  store float %".333", ptr %"R19_Float32"
  ; LDG.E.SYS R20, [R34+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".336" = load ptr, ptr %"R34_Float32_PTR"
  %".337" = ptrtoint ptr %".336" to i64
  %".338" = add i64 %".337", 4
  %"for_LDG.17" = inttoptr i64 %".338" to ptr
  %".339" = load float, ptr %"for_LDG.17"
  store float %".339", ptr %"R20_Float32"
  ; IMAD.WIDE R40, R51, R18, c[0x0][0x170]
  %".342" = load i32, ptr %"R51_Int32"
  %".343" = load i32, ptr %"R18_Int32"
  %"mul.16" = mul i32 %".342", %".343"
  %"add.37" = add i32 %"mul.16", %"Arg_4"
  store i32 %"add.37", ptr %"R40_Int32"
  ; LDG.E.SYS R51, [R38]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".346" = load ptr, ptr %"R38_Float32_PTR"
  %".347" = ptrtoint ptr %".346" to i64
  %".348" = add i64 %".347", 0
  %"for_LDG.18" = inttoptr i64 %".348" to ptr
  %".349" = load float, ptr %"for_LDG.18"
  store float %".349", ptr %"R51_Float32"
  ; LDG.E.SYS R21, [R34+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".352" = load ptr, ptr %"R34_Float32_PTR"
  %".353" = ptrtoint ptr %".352" to i64
  %".354" = add i64 %".353", 8
  %"for_LDG.19" = inttoptr i64 %".354" to ptr
  %".355" = load float, ptr %"for_LDG.19"
  store float %".355", ptr %"R21_Float32"
  ; LDG.E.SYS R42, [R34+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".358" = load ptr, ptr %"R34_Float32_PTR"
  %".359" = ptrtoint ptr %".358" to i64
  %".360" = add i64 %".359", 12
  %"for_LDG.20" = inttoptr i64 %".360" to ptr
  %".361" = load float, ptr %"for_LDG.20"
  store float %".361", ptr %"R42_Float32"
  ; LDG.E.SYS R44, [R36]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".364" = load ptr, ptr %"R36_Float32_PTR"
  %".365" = ptrtoint ptr %".364" to i64
  %".366" = add i64 %".365", 0
  %"for_LDG.21" = inttoptr i64 %".366" to ptr
  %".367" = load float, ptr %"for_LDG.21"
  store float %".367", ptr %"R44_Float32"
  ; LDG.E.SYS R46, [R36+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".370" = load ptr, ptr %"R36_Float32_PTR"
  %".371" = ptrtoint ptr %".370" to i64
  %".372" = add i64 %".371", 4
  %"for_LDG.22" = inttoptr i64 %".372" to ptr
  %".373" = load float, ptr %"for_LDG.22"
  store float %".373", ptr %"R46_Float32"
  ; IADD3 R35, R23, 0x8, RZ
  %".376" = load i32, ptr %"R23_Int32"
  %"add.38" = add i32 %".376", 8
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R35_Int32"
  ; LDG.E.SYS R48, [R36+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".379" = load ptr, ptr %"R36_Float32_PTR"
  %".380" = ptrtoint ptr %".379" to i64
  %".381" = add i64 %".380", 8
  %"for_LDG.23" = inttoptr i64 %".381" to ptr
  %".382" = load float, ptr %"for_LDG.23"
  store float %".382", ptr %"R48_Float32"
  ; LDG.E.SYS R50, [R36+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".385" = load ptr, ptr %"R36_Float32_PTR"
  %".386" = ptrtoint ptr %".385" to i64
  %".387" = add i64 %".386", 12
  %"for_LDG.24" = inttoptr i64 %".387" to ptr
  %".388" = load float, ptr %"for_LDG.24"
  store float %".388", ptr %"R50_Float32"
  ; LDG.E.SYS R53, [R38+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".391" = load ptr, ptr %"R38_Float32_PTR"
  %".392" = ptrtoint ptr %".391" to i64
  %".393" = add i64 %".392", 4
  %"for_LDG.25" = inttoptr i64 %".393" to ptr
  %".394" = load float, ptr %"for_LDG.25"
  store float %".394", ptr %"R53_Float32"
  ; LDG.E.SYS R59, [R40+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".397" = load ptr, ptr %"R40_Float32_PTR"
  %".398" = ptrtoint ptr %".397" to i64
  %".399" = add i64 %".398", 4
  %"for_LDG.26" = inttoptr i64 %".399" to ptr
  %".400" = load float, ptr %"for_LDG.26"
  store float %".400", ptr %"R59_Float32"
  ; IADD3 R37, R25, 0x8, RZ
  %".403" = load i32, ptr %"R25_Int32"
  %"add.40" = add i32 %".403", 8
  %"add.41" = add i32 %"add.40", 0
  store i32 %"add.41", ptr %"R37_Int32"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x170]
  %".406" = load i32, ptr %"R35_Int32"
  %".407" = load i32, ptr %"R18_Int32"
  %"mul.17" = mul i32 %".406", %".407"
  %"add.42" = add i32 %"mul.17", %"Arg_4"
  store i32 %"add.42", ptr %"R34_Int32"
  ; LDG.E.SYS R55, [R38+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".410" = load ptr, ptr %"R38_Float32_PTR"
  %".411" = ptrtoint ptr %".410" to i64
  %".412" = add i64 %".411", 8
  %"for_LDG.27" = inttoptr i64 %".412" to ptr
  %".413" = load float, ptr %"for_LDG.27"
  store float %".413", ptr %"R55_Float32"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x170]
  %".416" = load i32, ptr %"R37_Int32"
  %".417" = load i32, ptr %"R18_Int32"
  %"mul.18" = mul i32 %".416", %".417"
  %"add.43" = add i32 %"mul.18", %"Arg_4"
  store i32 %"add.43", ptr %"R36_Int32"
  ; LDG.E.SYS R61, [R40+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".420" = load ptr, ptr %"R40_Float32_PTR"
  %".421" = ptrtoint ptr %".420" to i64
  %".422" = add i64 %".421", 8
  %"for_LDG.28" = inttoptr i64 %".422" to ptr
  %".423" = load float, ptr %"for_LDG.28"
  store float %".423", ptr %"R61_Float32"
  ; LDG.E.SYS R60, [R38+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".426" = load ptr, ptr %"R38_Float32_PTR"
  %".427" = ptrtoint ptr %".426" to i64
  %".428" = add i64 %".427", 12
  %"for_LDG.29" = inttoptr i64 %".428" to ptr
  %".429" = load float, ptr %"for_LDG.29"
  store float %".429", ptr %"R60_Float32"
  ; IADD3 R23, R23, 0xc, RZ
  %".432" = load i32, ptr %"R23_Int32"
  %"add.44" = add i32 %".432", 12
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R23_Int32"
  ; IADD3 R25, R25, 0xc, RZ
  %".435" = load i32, ptr %"R25_Int32"
  %"add.46" = add i32 %".435", 12
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R25_Int32"
  ; LDG.E.SYS R39, [R34+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".438" = load ptr, ptr %"R34_Float32_PTR"
  %".439" = ptrtoint ptr %".438" to i64
  %".440" = add i64 %".439", 4
  %"for_LDG.30" = inttoptr i64 %".440" to ptr
  %".441" = load float, ptr %"for_LDG.30"
  store float %".441", ptr %"R39_Float32"
  ; LDG.E.SYS R38, [R34+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".444" = load ptr, ptr %"R34_Float32_PTR"
  %".445" = ptrtoint ptr %".444" to i64
  %".446" = add i64 %".445", 8
  %"for_LDG.31" = inttoptr i64 %".446" to ptr
  %".447" = load float, ptr %"for_LDG.31"
  store float %".447", ptr %"R38_Float32"
  ; FFMA R56, R56, R57, R52
  %".450" = load float, ptr %"R56_Float32"
  %".451" = load float, ptr %"R57_Float32"
  %".452" = load float, ptr %"R52_Float32"
  %"fmul" = fmul float %".450", %".451"
  %"fadd" = fadd float %"fmul", %".452"
  store float %"fadd", ptr %"R56_Float32"
  ; LDG.E.SYS R52, [R40+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".455" = load ptr, ptr %"R40_Float32_PTR"
  %".456" = ptrtoint ptr %".455" to i64
  %".457" = add i64 %".456", 12
  %"for_LDG.32" = inttoptr i64 %".457" to ptr
  %".458" = load float, ptr %"for_LDG.32"
  store float %".458", ptr %"R52_Float32"
  ; FFMA R58, R57, R58, R54
  %".461" = load float, ptr %"R57_Float32"
  %".462" = load float, ptr %"R58_Float32"
  %".463" = load float, ptr %"R54_Float32"
  %"fmul.1" = fmul float %".461", %".462"
  %"fadd.1" = fadd float %"fmul.1", %".463"
  store float %"fadd.1", ptr %"R58_Float32"
  ; LDG.E.SYS R57, [R40]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".466" = load ptr, ptr %"R40_Float32_PTR"
  %".467" = ptrtoint ptr %".466" to i64
  %".468" = add i64 %".467", 0
  %"for_LDG.33" = inttoptr i64 %".468" to ptr
  %".469" = load float, ptr %"for_LDG.33"
  store float %".469", ptr %"R57_Float32"
  ; LDG.E.SYS R54, [R34]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".472" = load ptr, ptr %"R34_Float32_PTR"
  %".473" = ptrtoint ptr %".472" to i64
  %".474" = add i64 %".473", 0
  %"for_LDG.34" = inttoptr i64 %".474" to ptr
  %".475" = load float, ptr %"for_LDG.34"
  store float %".475", ptr %"R54_Float32"
  ; FFMA R56, R47, R24, R56
  %".478" = load float, ptr %"R47_Float32"
  %".479" = load float, ptr %"R24_Float32"
  %".480" = load float, ptr %"R56_Float32"
  %"fmul.2" = fmul float %".478", %".479"
  %"fadd.2" = fadd float %"fmul.2", %".480"
  store float %"fadd.2", ptr %"R56_Float32"
  ; LDG.E.SYS R47, [R34+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".483" = load ptr, ptr %"R34_Float32_PTR"
  %".484" = ptrtoint ptr %".483" to i64
  %".485" = add i64 %".484", 12
  %"for_LDG.35" = inttoptr i64 %".485" to ptr
  %".486" = load float, ptr %"for_LDG.35"
  store float %".486", ptr %"R47_Float32"
  ; FFMA R58, R24, R49, R58
  %".489" = load float, ptr %"R24_Float32"
  %".490" = load float, ptr %"R49_Float32"
  %".491" = load float, ptr %"R58_Float32"
  %"fmul.3" = fmul float %".489", %".490"
  %"fadd.3" = fadd float %"fmul.3", %".491"
  store float %"fadd.3", ptr %"R58_Float32"
  ; LDG.E.SYS R41, [R36+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".494" = load ptr, ptr %"R36_Float32_PTR"
  %".495" = ptrtoint ptr %".494" to i64
  %".496" = add i64 %".495", 4
  %"for_LDG.36" = inttoptr i64 %".496" to ptr
  %".497" = load float, ptr %"for_LDG.36"
  store float %".497", ptr %"R41_Float32"
  ; LDG.E.SYS R40, [R36+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".500" = load ptr, ptr %"R36_Float32_PTR"
  %".501" = ptrtoint ptr %".500" to i64
  %".502" = add i64 %".501", 8
  %"for_LDG.37" = inttoptr i64 %".502" to ptr
  %".503" = load float, ptr %"for_LDG.37"
  store float %".503", ptr %"R40_Float32"
  ; FFMA R49, R43, R22, R56
  %".506" = load float, ptr %"R43_Float32"
  %".507" = load float, ptr %"R22_Float32"
  %".508" = load float, ptr %"R56_Float32"
  %"fmul.4" = fmul float %".506", %".507"
  %"fadd.4" = fadd float %"fmul.4", %".508"
  store float %"fadd.4", ptr %"R49_Float32"
  ; LDG.E.SYS R56, [R36]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".511" = load ptr, ptr %"R36_Float32_PTR"
  %".512" = ptrtoint ptr %".511" to i64
  %".513" = add i64 %".512", 0
  %"for_LDG.38" = inttoptr i64 %".513" to ptr
  %".514" = load float, ptr %"for_LDG.38"
  store float %".514", ptr %"R56_Float32"
  ; IMAD.WIDE R24, R25, R18, c[0x0][0x170]
  %".517" = load i32, ptr %"R25_Int32"
  %".518" = load i32, ptr %"R18_Int32"
  %"mul.19" = mul i32 %".517", %".518"
  %"add.48" = add i32 %"mul.19", %"Arg_4"
  store i32 %"add.48", ptr %"R24_Int32"
  ; LDG.E.SYS R43, [R36+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".521" = load ptr, ptr %"R36_Float32_PTR"
  %".522" = ptrtoint ptr %".521" to i64
  %".523" = add i64 %".522", 12
  %"for_LDG.39" = inttoptr i64 %".523" to ptr
  %".524" = load float, ptr %"for_LDG.39"
  store float %".524", ptr %"R43_Float32"
  ; FFMA R58, R22, R45, R58
  %".527" = load float, ptr %"R22_Float32"
  %".528" = load float, ptr %"R45_Float32"
  %".529" = load float, ptr %"R58_Float32"
  %"fmul.5" = fmul float %".527", %".528"
  %"fadd.5" = fadd float %"fmul.5", %".529"
  store float %"fadd.5", ptr %"R58_Float32"
  ; IMAD.WIDE R22, R23, R18, c[0x0][0x170]
  %".532" = load i32, ptr %"R23_Int32"
  %".533" = load i32, ptr %"R18_Int32"
  %"mul.20" = mul i32 %".532", %".533"
  %"add.49" = add i32 %"mul.20", %"Arg_4"
  store i32 %"add.49", ptr %"R22_Int32"
  ; LDG.E.SYS R18, [R24]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".536" = load ptr, ptr %"R24_Float32_PTR"
  %".537" = ptrtoint ptr %".536" to i64
  %".538" = add i64 %".537", 0
  %"for_LDG.40" = inttoptr i64 %".538" to ptr
  %".539" = load float, ptr %"for_LDG.40"
  store float %".539", ptr %"R18_Float32"
  ; FFMA R14, R14, R15, R49
  %".542" = load float, ptr %"R14_Float32"
  %".543" = load float, ptr %"R15_Float32"
  %".544" = load float, ptr %"R49_Float32"
  %"fmul.6" = fmul float %".542", %".543"
  %"fadd.6" = fadd float %"fmul.6", %".544"
  store float %"fadd.6", ptr %"R14_Float32"
  ; LDG.E.SYS R49, [R24+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".547" = load ptr, ptr %"R24_Float32_PTR"
  %".548" = ptrtoint ptr %".547" to i64
  %".549" = add i64 %".548", 4
  %"for_LDG.41" = inttoptr i64 %".549" to ptr
  %".550" = load float, ptr %"for_LDG.41"
  store float %".550", ptr %"R49_Float32"
  ; FFMA R58, R15, R13, R58
  %".553" = load float, ptr %"R15_Float32"
  %".554" = load float, ptr %"R13_Float32"
  %".555" = load float, ptr %"R58_Float32"
  %"fmul.7" = fmul float %".553", %".554"
  %"fadd.7" = fadd float %"fmul.7", %".555"
  store float %"fadd.7", ptr %"R58_Float32"
  ; LDG.E.SYS R35, [R22]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".558" = load ptr, ptr %"R22_Float32_PTR"
  %".559" = ptrtoint ptr %".558" to i64
  %".560" = add i64 %".559", 0
  %"for_LDG.42" = inttoptr i64 %".560" to ptr
  %".561" = load float, ptr %"for_LDG.42"
  store float %".561", ptr %"R35_Float32"
  ; LDG.E.SYS R15, [R22+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".564" = load ptr, ptr %"R22_Float32_PTR"
  %".565" = ptrtoint ptr %".564" to i64
  %".566" = add i64 %".565", 4
  %"for_LDG.43" = inttoptr i64 %".566" to ptr
  %".567" = load float, ptr %"for_LDG.43"
  store float %".567", ptr %"R15_Float32"
  ; LDG.E.SYS R13, [R22+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".570" = load ptr, ptr %"R22_Float32_PTR"
  %".571" = ptrtoint ptr %".570" to i64
  %".572" = add i64 %".571", 8
  %"for_LDG.44" = inttoptr i64 %".572" to ptr
  %".573" = load float, ptr %"for_LDG.44"
  store float %".573", ptr %"R13_Float32"
  ; LDG.E.SYS R37, [R24+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".576" = load ptr, ptr %"R24_Float32_PTR"
  %".577" = ptrtoint ptr %".576" to i64
  %".578" = add i64 %".577", 8
  %"for_LDG.45" = inttoptr i64 %".578" to ptr
  %".579" = load float, ptr %"for_LDG.45"
  store float %".579", ptr %"R37_Float32"
  ; LDG.E.SYS R45, [R22+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".582" = load ptr, ptr %"R22_Float32_PTR"
  %".583" = ptrtoint ptr %".582" to i64
  %".584" = add i64 %".583", 12
  %"for_LDG.46" = inttoptr i64 %".584" to ptr
  %".585" = load float, ptr %"for_LDG.46"
  store float %".585", ptr %"R45_Float32"
  ; LDG.E.SYS R34, [R24+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".588" = load ptr, ptr %"R24_Float32_PTR"
  %".589" = ptrtoint ptr %".588" to i64
  %".590" = add i64 %".589", 12
  %"for_LDG.47" = inttoptr i64 %".590" to ptr
  %".591" = load float, ptr %"for_LDG.47"
  store float %".591", ptr %"R34_Float32"
  ; FFMA R14, R51, R12, R14
  %".594" = load float, ptr %"R51_Float32"
  %".595" = load float, ptr %"R12_Float32"
  %".596" = load float, ptr %"R14_Float32"
  %"fmul.8" = fmul float %".594", %".595"
  %"fadd.8" = fadd float %"fmul.8", %".596"
  store float %"fadd.8", ptr %"R14_Float32"
  ; IADD3 R9, R9, -0x10, RZ
  %".599" = load i32, ptr %"R9_Int32"
  %"add.50" = add i32 %".599", -16
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R9_Int32"
  ; FFMA R14, R53, R10, R14
  %".602" = load float, ptr %"R53_Float32"
  %".603" = load float, ptr %"R10_Float32"
  %".604" = load float, ptr %"R14_Float32"
  %"fmul.9" = fmul float %".602", %".603"
  %"fadd.9" = fadd float %"fmul.9", %".604"
  store float %"fadd.9", ptr %"R14_Float32"
  ; FFMA R14, R55, R16, R14
  %".607" = load float, ptr %"R55_Float32"
  %".608" = load float, ptr %"R16_Float32"
  %".609" = load float, ptr %"R14_Float32"
  %"fmul.10" = fmul float %".607", %".608"
  %"fadd.10" = fadd float %"fmul.10", %".609"
  store float %"fadd.10", ptr %"R14_Float32"
  ; FFMA R14, R60, R17, R14
  %".612" = load float, ptr %"R60_Float32"
  %".613" = load float, ptr %"R17_Float32"
  %".614" = load float, ptr %"R14_Float32"
  %"fmul.11" = fmul float %".612", %".613"
  %"fadd.11" = fadd float %"fmul.11", %".614"
  store float %"fadd.11", ptr %"R14_Float32"
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".617" = load i32, ptr %"R9_Int32"
  %".618" = load i1, ptr %"PT_Bool"
  %"cmp.8" = icmp sgt i32 %".617", 12
  %".619" = and i1 %"cmp.8", %".618"
  ; IADD3 R11, R11, 0x10, RZ
  %".621" = load i32, ptr %"R11_Int32"
  %"add.52" = add i32 %".621", 16
  %"add.53" = add i32 %"add.52", 0
  store i32 %"add.53", ptr %"R11_Int32"
  ; FFMA R57, R12, R57, R58
  %".624" = load float, ptr %"R12_Float32"
  %".625" = load float, ptr %"R57_Float32"
  %".626" = load float, ptr %"R58_Float32"
  %"fmul.12" = fmul float %".624", %".625"
  %"fadd.12" = fadd float %"fmul.12", %".626"
  store float %"fadd.12", ptr %"R57_Float32"
  ; FFMA R57, R10, R59, R57
  %".629" = load float, ptr %"R10_Float32"
  %".630" = load float, ptr %"R59_Float32"
  %".631" = load float, ptr %"R57_Float32"
  %"fmul.13" = fmul float %".629", %".630"
  %"fadd.13" = fadd float %"fmul.13", %".631"
  store float %"fadd.13", ptr %"R57_Float32"
  ; FFMA R57, R16, R61, R57
  %".634" = load float, ptr %"R16_Float32"
  %".635" = load float, ptr %"R61_Float32"
  %".636" = load float, ptr %"R57_Float32"
  %"fmul.14" = fmul float %".634", %".635"
  %"fadd.14" = fadd float %"fmul.14", %".636"
  store float %"fadd.14", ptr %"R57_Float32"
  ; FFMA R52, R17, R52, R57
  %".639" = load float, ptr %"R17_Float32"
  %".640" = load float, ptr %"R52_Float32"
  %".641" = load float, ptr %"R57_Float32"
  %"fmul.15" = fmul float %".639", %".640"
  %"fadd.15" = fadd float %"fmul.15", %".641"
  store float %"fadd.15", ptr %"R52_Float32"
  ; FFMA R14, R54, R19, R14
  %".644" = load float, ptr %"R54_Float32"
  %".645" = load float, ptr %"R19_Float32"
  %".646" = load float, ptr %"R14_Float32"
  %"fmul.16" = fmul float %".644", %".645"
  %"fadd.16" = fadd float %"fmul.16", %".646"
  store float %"fadd.16", ptr %"R14_Float32"
  ; FFMA R52, R19, R56, R52
  %".649" = load float, ptr %"R19_Float32"
  %".650" = load float, ptr %"R56_Float32"
  %".651" = load float, ptr %"R52_Float32"
  %"fmul.17" = fmul float %".649", %".650"
  %"fadd.17" = fadd float %"fmul.17", %".651"
  store float %"fadd.17", ptr %"R52_Float32"
  ; FFMA R14, R39, R20, R14
  %".654" = load float, ptr %"R39_Float32"
  %".655" = load float, ptr %"R20_Float32"
  %".656" = load float, ptr %"R14_Float32"
  %"fmul.18" = fmul float %".654", %".655"
  %"fadd.18" = fadd float %"fmul.18", %".656"
  store float %"fadd.18", ptr %"R14_Float32"
  ; FFMA R41, R20, R41, R52
  %".659" = load float, ptr %"R20_Float32"
  %".660" = load float, ptr %"R41_Float32"
  %".661" = load float, ptr %"R52_Float32"
  %"fmul.19" = fmul float %".659", %".660"
  %"fadd.19" = fadd float %"fmul.19", %".661"
  store float %"fadd.19", ptr %"R41_Float32"
  ; FFMA R14, R38, R21, R14
  %".664" = load float, ptr %"R38_Float32"
  %".665" = load float, ptr %"R21_Float32"
  %".666" = load float, ptr %"R14_Float32"
  %"fmul.20" = fmul float %".664", %".665"
  %"fadd.20" = fadd float %"fmul.20", %".666"
  store float %"fadd.20", ptr %"R14_Float32"
  ; FFMA R40, R21, R40, R41
  %".669" = load float, ptr %"R21_Float32"
  %".670" = load float, ptr %"R40_Float32"
  %".671" = load float, ptr %"R41_Float32"
  %"fmul.21" = fmul float %".669", %".670"
  %"fadd.21" = fadd float %"fmul.21", %".671"
  store float %"fadd.21", ptr %"R40_Float32"
  ; FFMA R14, R47, R42, R14
  %".674" = load float, ptr %"R47_Float32"
  %".675" = load float, ptr %"R42_Float32"
  %".676" = load float, ptr %"R14_Float32"
  %"fmul.22" = fmul float %".674", %".675"
  %"fadd.22" = fadd float %"fmul.22", %".676"
  store float %"fadd.22", ptr %"R14_Float32"
  ; FFMA R43, R42, R43, R40
  %".679" = load float, ptr %"R42_Float32"
  %".680" = load float, ptr %"R43_Float32"
  %".681" = load float, ptr %"R40_Float32"
  %"fmul.23" = fmul float %".679", %".680"
  %"fadd.23" = fadd float %"fmul.23", %".681"
  store float %"fadd.23", ptr %"R43_Float32"
  ; FFMA R18, R44, R18, R43
  %".684" = load float, ptr %"R44_Float32"
  %".685" = load float, ptr %"R18_Float32"
  %".686" = load float, ptr %"R43_Float32"
  %"fmul.24" = fmul float %".684", %".685"
  %"fadd.24" = fadd float %"fmul.24", %".686"
  store float %"fadd.24", ptr %"R18_Float32"
  ; FFMA R14, R35, R44, R14
  %".689" = load float, ptr %"R35_Float32"
  %".690" = load float, ptr %"R44_Float32"
  %".691" = load float, ptr %"R14_Float32"
  %"fmul.25" = fmul float %".689", %".690"
  %"fadd.25" = fadd float %"fmul.25", %".691"
  store float %"fadd.25", ptr %"R14_Float32"
  ; FFMA R18, R46, R49, R18
  %".694" = load float, ptr %"R46_Float32"
  %".695" = load float, ptr %"R49_Float32"
  %".696" = load float, ptr %"R18_Float32"
  %"fmul.26" = fmul float %".694", %".695"
  %"fadd.26" = fadd float %"fmul.26", %".696"
  store float %"fadd.26", ptr %"R18_Float32"
  ; FFMA R14, R15, R46, R14
  %".699" = load float, ptr %"R15_Float32"
  %".700" = load float, ptr %"R46_Float32"
  %".701" = load float, ptr %"R14_Float32"
  %"fmul.27" = fmul float %".699", %".700"
  %"fadd.27" = fadd float %"fmul.27", %".701"
  store float %"fadd.27", ptr %"R14_Float32"
  ; FFMA R13, R13, R48, R14
  %".704" = load float, ptr %"R13_Float32"
  %".705" = load float, ptr %"R48_Float32"
  %".706" = load float, ptr %"R14_Float32"
  %"fmul.28" = fmul float %".704", %".705"
  %"fadd.28" = fadd float %"fmul.28", %".706"
  store float %"fadd.28", ptr %"R13_Float32"
  ; FFMA R37, R48, R37, R18
  %".709" = load float, ptr %"R48_Float32"
  %".710" = load float, ptr %"R37_Float32"
  %".711" = load float, ptr %"R18_Float32"
  %"fmul.29" = fmul float %".709", %".710"
  %"fadd.29" = fadd float %"fmul.29", %".711"
  store float %"fadd.29", ptr %"R37_Float32"
  ; FFMA R52, R45, R50, R13
  %".714" = load float, ptr %"R45_Float32"
  %".715" = load float, ptr %"R50_Float32"
  %".716" = load float, ptr %"R13_Float32"
  %"fmul.30" = fmul float %".714", %".715"
  %"fadd.30" = fadd float %"fmul.30", %".716"
  store float %"fadd.30", ptr %"R52_Float32"
  ; FFMA R54, R50, R34, R37
  %".719" = load float, ptr %"R50_Float32"
  %".720" = load float, ptr %"R34_Float32"
  %".721" = load float, ptr %"R37_Float32"
  %"fmul.31" = fmul float %".719", %".720"
  %"fadd.31" = fadd float %"fmul.31", %".721"
  store float %"fadd.31", ptr %"R54_Float32"
  ; @P1 BRA `(.L_x_5)
  %".724" = load i1, ptr %"P1_Bool"
  %".725" = icmp ne i1 %".724", 1
  br i1 %".725", label %".L_x_5", label %".L_x_4"
.L_x_4:
  ; ISETP.GT.AND P1, PT, R9, 0x4, PT
  %".728" = load i32, ptr %"R9_Int32"
  %".729" = load i1, ptr %"PT_Bool"
  %"cmp.9" = icmp sgt i32 %".728", 4
  %".730" = and i1 %"cmp.9", %".729"
  ; @!P1 BRA `(.L_x_6)
  %".732" = load i1, ptr %"P1_Bool"
  %".733" = icmp eq i1 %".732", 1
  br i1 %".733", label %".L_x_6", label %".L_x_4_split_0x0a00"
.L_x_4_split_0x0a00:
  ; IADD3 R13, R0, R11, RZ
  %".736" = load i32, ptr %"R0_Int32"
  %".737" = load i32, ptr %"R11_Int32"
  %"add.54" = add i32 %".736", %".737"
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R13_Int32"
  ; MOV R17, 0x4
  store i32 4, ptr %"R17_Int32"
  ; LEA R14, R2.reuse, R13, 0x2
  %".742" = load i32, ptr %"R2_Int32"
  %".743" = load i32, ptr %"R13_Int32"
  %"shl.3" = shl i32 %".742", 2
  %"add.56" = add i32 %"shl.3", %".743"
  store i32 %"add.56", ptr %"R14_Int32"
  ; IMAD R10, R2, 0x3, R13
  %".746" = load i32, ptr %"R2_Int32"
  %".747" = load i32, ptr %"R13_Int32"
  %"mul.21" = mul i32 %".746", 3
  %"add.57" = add i32 %"mul.21", %".747"
  store i32 %"add.57", ptr %"R10_Int32"
  ; IADD3 R12, R11.reuse, 0x4, RZ
  %".750" = load i32, ptr %"R11_Int32"
  %"add.58" = add i32 %".750", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R12_Int32"
  ; IMAD.WIDE R18, R11, R17.reuse, c[0x0][0x168]
  %".753" = load i32, ptr %"R11_Int32"
  %".754" = load i32, ptr %"R17_Int32"
  %"mul.22" = mul i32 %".753", %".754"
  %"add.60" = add i32 %"mul.22", %"Arg_3"
  store i32 %"add.60", ptr %"R18_Int32"
  ; IADD3 R16, R14, 0x4, RZ
  %".757" = load i32, ptr %"R14_Int32"
  %"add.61" = add i32 %".757", 4
  %"add.62" = add i32 %"add.61", 0
  store i32 %"add.62", ptr %"R16_Int32"
  ; IADD3 R15, R10.reuse, 0x4, RZ
  %".760" = load i32, ptr %"R10_Int32"
  %"add.63" = add i32 %".760", 4
  %"add.64" = add i32 %"add.63", 0
  store i32 %"add.64", ptr %"R15_Int32"
  ; IMAD.WIDE R22, R10, R17, c[0x0][0x170]
  %".763" = load i32, ptr %"R10_Int32"
  %".764" = load i32, ptr %"R17_Int32"
  %"mul.23" = mul i32 %".763", %".764"
  %"add.65" = add i32 %"mul.23", %"Arg_4"
  store i32 %"add.65", ptr %"R22_Int32"
  ; IMAD.WIDE R20, R14, R17.reuse, c[0x0][0x170]
  %".767" = load i32, ptr %"R14_Int32"
  %".768" = load i32, ptr %"R17_Int32"
  %"mul.24" = mul i32 %".767", %".768"
  %"add.66" = add i32 %"mul.24", %"Arg_4"
  store i32 %"add.66", ptr %"R20_Int32"
  ; LDG.E.SYS R39, [R18]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".771" = load ptr, ptr %"R18_Float32_PTR"
  %".772" = ptrtoint ptr %".771" to i64
  %".773" = add i64 %".772", 0
  %"for_LDG.48" = inttoptr i64 %".773" to ptr
  %".774" = load float, ptr %"for_LDG.48"
  store float %".774", ptr %"R39_Float32"
  ; IMAD.WIDE R12, R12, R17.reuse, c[0x0][0x168]
  %".777" = load i32, ptr %"R12_Int32"
  %".778" = load i32, ptr %"R17_Int32"
  %"mul.25" = mul i32 %".777", %".778"
  %"add.67" = add i32 %"mul.25", %"Arg_3"
  store i32 %"add.67", ptr %"R12_Int32"
  ; LDG.E.SYS R37, [R22]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".781" = load ptr, ptr %"R22_Float32_PTR"
  %".782" = ptrtoint ptr %".781" to i64
  %".783" = add i64 %".782", 0
  %"for_LDG.49" = inttoptr i64 %".783" to ptr
  %".784" = load float, ptr %"for_LDG.49"
  store float %".784", ptr %"R37_Float32"
  ; LDG.E.SYS R36, [R20]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".787" = load ptr, ptr %"R20_Float32_PTR"
  %".788" = ptrtoint ptr %".787" to i64
  %".789" = add i64 %".788", 0
  %"for_LDG.50" = inttoptr i64 %".789" to ptr
  %".790" = load float, ptr %"for_LDG.50"
  store float %".790", ptr %"R36_Float32"
  ; IMAD.WIDE R14, R15, R17, c[0x0][0x170]
  %".793" = load i32, ptr %"R15_Int32"
  %".794" = load i32, ptr %"R17_Int32"
  %"mul.26" = mul i32 %".793", %".794"
  %"add.68" = add i32 %"mul.26", %"Arg_4"
  store i32 %"add.68", ptr %"R14_Int32"
  ; LDG.E.SYS R34, [R18+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".797" = load ptr, ptr %"R18_Float32_PTR"
  %".798" = ptrtoint ptr %".797" to i64
  %".799" = add i64 %".798", 4
  %"for_LDG.51" = inttoptr i64 %".799" to ptr
  %".800" = load float, ptr %"for_LDG.51"
  store float %".800", ptr %"R34_Float32"
  ; LDG.E.SYS R38, [R22+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".803" = load ptr, ptr %"R22_Float32_PTR"
  %".804" = ptrtoint ptr %".803" to i64
  %".805" = add i64 %".804", 4
  %"for_LDG.52" = inttoptr i64 %".805" to ptr
  %".806" = load float, ptr %"for_LDG.52"
  store float %".806", ptr %"R38_Float32"
  ; LDG.E.SYS R35, [R20+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".809" = load ptr, ptr %"R20_Float32_PTR"
  %".810" = ptrtoint ptr %".809" to i64
  %".811" = add i64 %".810", 4
  %"for_LDG.53" = inttoptr i64 %".811" to ptr
  %".812" = load float, ptr %"for_LDG.53"
  store float %".812", ptr %"R35_Float32"
  ; IMAD.WIDE R16, R16, R17, c[0x0][0x170]
  %".815" = load i32, ptr %"R16_Int32"
  %".816" = load i32, ptr %"R17_Int32"
  %"mul.27" = mul i32 %".815", %".816"
  %"add.69" = add i32 %"mul.27", %"Arg_4"
  store i32 %"add.69", ptr %"R16_Int32"
  ; LDG.E.SYS R24, [R18+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".819" = load ptr, ptr %"R18_Float32_PTR"
  %".820" = ptrtoint ptr %".819" to i64
  %".821" = add i64 %".820", 8
  %"for_LDG.54" = inttoptr i64 %".821" to ptr
  %".822" = load float, ptr %"for_LDG.54"
  store float %".822", ptr %"R24_Float32"
  ; LDG.E.SYS R40, [R22+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".825" = load ptr, ptr %"R22_Float32_PTR"
  %".826" = ptrtoint ptr %".825" to i64
  %".827" = add i64 %".826", 8
  %"for_LDG.55" = inttoptr i64 %".827" to ptr
  %".828" = load float, ptr %"for_LDG.55"
  store float %".828", ptr %"R40_Float32"
  ; LDG.E.SYS R41, [R20+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".831" = load ptr, ptr %"R20_Float32_PTR"
  %".832" = ptrtoint ptr %".831" to i64
  %".833" = add i64 %".832", 8
  %"for_LDG.56" = inttoptr i64 %".833" to ptr
  %".834" = load float, ptr %"for_LDG.56"
  store float %".834", ptr %"R41_Float32"
  ; LDG.E.SYS R44, [R18+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".837" = load ptr, ptr %"R18_Float32_PTR"
  %".838" = ptrtoint ptr %".837" to i64
  %".839" = add i64 %".838", 12
  %"for_LDG.57" = inttoptr i64 %".839" to ptr
  %".840" = load float, ptr %"for_LDG.57"
  store float %".840", ptr %"R44_Float32"
  ; LDG.E.SYS R42, [R22+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".843" = load ptr, ptr %"R22_Float32_PTR"
  %".844" = ptrtoint ptr %".843" to i64
  %".845" = add i64 %".844", 12
  %"for_LDG.58" = inttoptr i64 %".845" to ptr
  %".846" = load float, ptr %"for_LDG.58"
  store float %".846", ptr %"R42_Float32"
  ; LDG.E.SYS R43, [R20+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".849" = load ptr, ptr %"R20_Float32_PTR"
  %".850" = ptrtoint ptr %".849" to i64
  %".851" = add i64 %".850", 12
  %"for_LDG.59" = inttoptr i64 %".851" to ptr
  %".852" = load float, ptr %"for_LDG.59"
  store float %".852", ptr %"R43_Float32"
  ; LDG.E.SYS R48, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".855" = load ptr, ptr %"R12_Float32_PTR"
  %".856" = ptrtoint ptr %".855" to i64
  %".857" = add i64 %".856", 0
  %"for_LDG.60" = inttoptr i64 %".857" to ptr
  %".858" = load float, ptr %"for_LDG.60"
  store float %".858", ptr %"R48_Float32"
  ; LDG.E.SYS R46, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".861" = load ptr, ptr %"R14_Float32_PTR"
  %".862" = ptrtoint ptr %".861" to i64
  %".863" = add i64 %".862", 0
  %"for_LDG.61" = inttoptr i64 %".863" to ptr
  %".864" = load float, ptr %"for_LDG.61"
  store float %".864", ptr %"R46_Float32"
  ; LDG.E.SYS R45, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".867" = load ptr, ptr %"R16_Float32_PTR"
  %".868" = ptrtoint ptr %".867" to i64
  %".869" = add i64 %".868", 0
  %"for_LDG.62" = inttoptr i64 %".869" to ptr
  %".870" = load float, ptr %"for_LDG.62"
  store float %".870", ptr %"R45_Float32"
  ; LDG.E.SYS R56, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".873" = load ptr, ptr %"R12_Float32_PTR"
  %".874" = ptrtoint ptr %".873" to i64
  %".875" = add i64 %".874", 4
  %"for_LDG.63" = inttoptr i64 %".875" to ptr
  %".876" = load float, ptr %"for_LDG.63"
  store float %".876", ptr %"R56_Float32"
  ; LDG.E.SYS R50, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".879" = load ptr, ptr %"R14_Float32_PTR"
  %".880" = ptrtoint ptr %".879" to i64
  %".881" = add i64 %".880", 4
  %"for_LDG.64" = inttoptr i64 %".881" to ptr
  %".882" = load float, ptr %"for_LDG.64"
  store float %".882", ptr %"R50_Float32"
  ; LDG.E.SYS R47, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".885" = load ptr, ptr %"R16_Float32_PTR"
  %".886" = ptrtoint ptr %".885" to i64
  %".887" = add i64 %".886", 4
  %"for_LDG.65" = inttoptr i64 %".887" to ptr
  %".888" = load float, ptr %"for_LDG.65"
  store float %".888", ptr %"R47_Float32"
  ; LDG.E.SYS R10, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".891" = load ptr, ptr %"R12_Float32_PTR"
  %".892" = ptrtoint ptr %".891" to i64
  %".893" = add i64 %".892", 8
  %"for_LDG.66" = inttoptr i64 %".893" to ptr
  %".894" = load float, ptr %"for_LDG.66"
  store float %".894", ptr %"R10_Float32"
  ; LDG.E.SYS R25, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".897" = load ptr, ptr %"R14_Float32_PTR"
  %".898" = ptrtoint ptr %".897" to i64
  %".899" = add i64 %".898", 8
  %"for_LDG.67" = inttoptr i64 %".899" to ptr
  %".900" = load float, ptr %"for_LDG.67"
  store float %".900", ptr %"R25_Float32"
  ; LDG.E.SYS R19, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".903" = load ptr, ptr %"R16_Float32_PTR"
  %".904" = ptrtoint ptr %".903" to i64
  %".905" = add i64 %".904", 8
  %"for_LDG.68" = inttoptr i64 %".905" to ptr
  %".906" = load float, ptr %"for_LDG.68"
  store float %".906", ptr %"R19_Float32"
  ; LDG.E.SYS R18, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".909" = load ptr, ptr %"R12_Float32_PTR"
  %".910" = ptrtoint ptr %".909" to i64
  %".911" = add i64 %".910", 12
  %"for_LDG.69" = inttoptr i64 %".911" to ptr
  %".912" = load float, ptr %"for_LDG.69"
  store float %".912", ptr %"R18_Float32"
  ; LDG.E.SYS R20, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".915" = load ptr, ptr %"R14_Float32_PTR"
  %".916" = ptrtoint ptr %".915" to i64
  %".917" = add i64 %".916", 12
  %"for_LDG.70" = inttoptr i64 %".917" to ptr
  %".918" = load float, ptr %"for_LDG.70"
  store float %".918", ptr %"R20_Float32"
  ; LDG.E.SYS R21, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".921" = load ptr, ptr %"R16_Float32_PTR"
  %".922" = ptrtoint ptr %".921" to i64
  %".923" = add i64 %".922", 12
  %"for_LDG.71" = inttoptr i64 %".923" to ptr
  %".924" = load float, ptr %"for_LDG.71"
  store float %".924", ptr %"R21_Float32"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".927" = xor i1 1, 1
  %".928" = and i1 %".927", 1
  %".929" = and i1 %".928", 1
  ; IADD3 R9, R9, -0x8, RZ
  %".931" = load i32, ptr %"R9_Int32"
  %"add.70" = add i32 %".931", -8
  %"add.71" = add i32 %"add.70", 0
  store i32 %"add.71", ptr %"R9_Int32"
  ; IADD3 R11, R11, 0x8, RZ
  %".934" = load i32, ptr %"R11_Int32"
  %"add.72" = add i32 %".934", 8
  %"add.73" = add i32 %"add.72", 0
  store i32 %"add.73", ptr %"R11_Int32"
  ; FFMA R37, R37, R39, R52
  %".937" = load float, ptr %"R37_Float32"
  %".938" = load float, ptr %"R39_Float32"
  %".939" = load float, ptr %"R52_Float32"
  %"fmul.32" = fmul float %".937", %".938"
  %"fadd.32" = fadd float %"fmul.32", %".939"
  store float %"fadd.32", ptr %"R37_Float32"
  ; FFMA R36, R39, R36, R54
  %".942" = load float, ptr %"R39_Float32"
  %".943" = load float, ptr %"R36_Float32"
  %".944" = load float, ptr %"R54_Float32"
  %"fmul.33" = fmul float %".942", %".943"
  %"fadd.33" = fadd float %"fmul.33", %".944"
  store float %"fadd.33", ptr %"R36_Float32"
  ; FFMA R37, R38, R34, R37
  %".947" = load float, ptr %"R38_Float32"
  %".948" = load float, ptr %"R34_Float32"
  %".949" = load float, ptr %"R37_Float32"
  %"fmul.34" = fmul float %".947", %".948"
  %"fadd.34" = fadd float %"fmul.34", %".949"
  store float %"fadd.34", ptr %"R37_Float32"
  ; FFMA R35, R34, R35, R36
  %".952" = load float, ptr %"R34_Float32"
  %".953" = load float, ptr %"R35_Float32"
  %".954" = load float, ptr %"R36_Float32"
  %"fmul.35" = fmul float %".952", %".953"
  %"fadd.35" = fadd float %"fmul.35", %".954"
  store float %"fadd.35", ptr %"R35_Float32"
  ; FFMA R37, R40, R24, R37
  %".957" = load float, ptr %"R40_Float32"
  %".958" = load float, ptr %"R24_Float32"
  %".959" = load float, ptr %"R37_Float32"
  %"fmul.36" = fmul float %".957", %".958"
  %"fadd.36" = fadd float %"fmul.36", %".959"
  store float %"fadd.36", ptr %"R37_Float32"
  ; FFMA R35, R24, R41, R35
  %".962" = load float, ptr %"R24_Float32"
  %".963" = load float, ptr %"R41_Float32"
  %".964" = load float, ptr %"R35_Float32"
  %"fmul.37" = fmul float %".962", %".963"
  %"fadd.37" = fadd float %"fmul.37", %".964"
  store float %"fadd.37", ptr %"R35_Float32"
  ; FFMA R37, R42, R44, R37
  %".967" = load float, ptr %"R42_Float32"
  %".968" = load float, ptr %"R44_Float32"
  %".969" = load float, ptr %"R37_Float32"
  %"fmul.38" = fmul float %".967", %".968"
  %"fadd.38" = fadd float %"fmul.38", %".969"
  store float %"fadd.38", ptr %"R37_Float32"
  ; FFMA R35, R44, R43, R35
  %".972" = load float, ptr %"R44_Float32"
  %".973" = load float, ptr %"R43_Float32"
  %".974" = load float, ptr %"R35_Float32"
  %"fmul.39" = fmul float %".972", %".973"
  %"fadd.39" = fadd float %"fmul.39", %".974"
  store float %"fadd.39", ptr %"R35_Float32"
  ; FFMA R37, R46, R48, R37
  %".977" = load float, ptr %"R46_Float32"
  %".978" = load float, ptr %"R48_Float32"
  %".979" = load float, ptr %"R37_Float32"
  %"fmul.40" = fmul float %".977", %".978"
  %"fadd.40" = fadd float %"fmul.40", %".979"
  store float %"fadd.40", ptr %"R37_Float32"
  ; FFMA R35, R48, R45, R35
  %".982" = load float, ptr %"R48_Float32"
  %".983" = load float, ptr %"R45_Float32"
  %".984" = load float, ptr %"R35_Float32"
  %"fmul.41" = fmul float %".982", %".983"
  %"fadd.41" = fadd float %"fmul.41", %".984"
  store float %"fadd.41", ptr %"R35_Float32"
  ; FFMA R37, R50, R56, R37
  %".987" = load float, ptr %"R50_Float32"
  %".988" = load float, ptr %"R56_Float32"
  %".989" = load float, ptr %"R37_Float32"
  %"fmul.42" = fmul float %".987", %".988"
  %"fadd.42" = fadd float %"fmul.42", %".989"
  store float %"fadd.42", ptr %"R37_Float32"
  ; FFMA R35, R56, R47, R35
  %".992" = load float, ptr %"R56_Float32"
  %".993" = load float, ptr %"R47_Float32"
  %".994" = load float, ptr %"R35_Float32"
  %"fmul.43" = fmul float %".992", %".993"
  %"fadd.43" = fadd float %"fmul.43", %".994"
  store float %"fadd.43", ptr %"R35_Float32"
  ; FFMA R25, R25, R10, R37
  %".997" = load float, ptr %"R25_Float32"
  %".998" = load float, ptr %"R10_Float32"
  %".999" = load float, ptr %"R37_Float32"
  %"fmul.44" = fmul float %".997", %".998"
  %"fadd.44" = fadd float %"fmul.44", %".999"
  store float %"fadd.44", ptr %"R25_Float32"
  ; FFMA R19, R10, R19, R35
  %".1002" = load float, ptr %"R10_Float32"
  %".1003" = load float, ptr %"R19_Float32"
  %".1004" = load float, ptr %"R35_Float32"
  %"fmul.45" = fmul float %".1002", %".1003"
  %"fadd.45" = fadd float %"fmul.45", %".1004"
  store float %"fadd.45", ptr %"R19_Float32"
  ; FFMA R52, R20, R18, R25
  %".1007" = load float, ptr %"R20_Float32"
  %".1008" = load float, ptr %"R18_Float32"
  %".1009" = load float, ptr %"R25_Float32"
  %"fmul.46" = fmul float %".1007", %".1008"
  %"fadd.46" = fadd float %"fmul.46", %".1009"
  store float %"fadd.46", ptr %"R52_Float32"
  ; FFMA R54, R18, R21, R19
  %".1012" = load float, ptr %"R18_Float32"
  %".1013" = load float, ptr %"R21_Float32"
  %".1014" = load float, ptr %"R19_Float32"
  %"fmul.47" = fmul float %".1012", %".1013"
  %"fadd.47" = fadd float %"fmul.47", %".1014"
  store float %"fadd.47", ptr %"R54_Float32"
.L_x_6:
  ; ISETP.NE.OR P0, PT, R9, RZ, P0
  %".1017" = load i32, ptr %"R9_Int32"
  %".1018" = load i1, ptr %"PT_Bool"
  %"cmp.10" = icmp ne i32 %".1017", 0
  %".1019" = or i1 %"cmp.10", %".1018"
  ; @!P0 BRA `(.L_x_2)
  %".1021" = load i1, ptr %"P0_Bool"
  %".1022" = icmp eq i1 %".1021", 1
  br i1 %".1022", label %".L_x_2", label %".L_x_3"
.L_x_3:
  ; IADD3 R13, R0, R11, RZ
  %".1025" = load i32, ptr %"R0_Int32"
  %".1026" = load i32, ptr %"R11_Int32"
  %"add.74" = add i32 %".1025", %".1026"
  %"add.75" = add i32 %"add.74", 0
  store i32 %"add.75", ptr %"R13_Int32"
  ; MOV R16, 0x4
  store i32 4, ptr %"R16_Int32"
  ; LEA R17, R2.reuse, R13, 0x2
  %".1031" = load i32, ptr %"R2_Int32"
  %".1032" = load i32, ptr %"R13_Int32"
  %"shl.4" = shl i32 %".1031", 2
  %"add.76" = add i32 %"shl.4", %".1032"
  store i32 %"add.76", ptr %"R17_Int32"
  ; IMAD R15, R2, 0x3, R13
  %".1035" = load i32, ptr %"R2_Int32"
  %".1036" = load i32, ptr %"R13_Int32"
  %"mul.28" = mul i32 %".1035", 3
  %"add.77" = add i32 %"mul.28", %".1036"
  store i32 %"add.77", ptr %"R15_Int32"
  ; IMAD.WIDE R12, R11, R16, c[0x0][0x168]
  %".1039" = load i32, ptr %"R11_Int32"
  %".1040" = load i32, ptr %"R16_Int32"
  %"mul.29" = mul i32 %".1039", %".1040"
  %"add.78" = add i32 %"mul.29", %"Arg_3"
  store i32 %"add.78", ptr %"R12_Int32"
  ; IMAD.WIDE R14, R15, R16, c[0x0][0x170]
  %".1043" = load i32, ptr %"R15_Int32"
  %".1044" = load i32, ptr %"R16_Int32"
  %"mul.30" = mul i32 %".1043", %".1044"
  %"add.79" = add i32 %"mul.30", %"Arg_4"
  store i32 %"add.79", ptr %"R14_Int32"
  ; IMAD.WIDE R16, R17, R16, c[0x0][0x170]
  %".1047" = load i32, ptr %"R17_Int32"
  %".1048" = load i32, ptr %"R16_Int32"
  %"mul.31" = mul i32 %".1047", %".1048"
  %"add.80" = add i32 %"mul.31", %"Arg_4"
  store i32 %"add.80", ptr %"R16_Int32"
  ; LDG.E.SYS R21, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1051" = load ptr, ptr %"R12_Float32_PTR"
  %".1052" = ptrtoint ptr %".1051" to i64
  %".1053" = add i64 %".1052", 0
  %"for_LDG.72" = inttoptr i64 %".1053" to ptr
  %".1054" = load float, ptr %"for_LDG.72"
  store float %".1054", ptr %"R21_Float32"
  ; LDG.E.SYS R19, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1057" = load ptr, ptr %"R14_Float32_PTR"
  %".1058" = ptrtoint ptr %".1057" to i64
  %".1059" = add i64 %".1058", 0
  %"for_LDG.73" = inttoptr i64 %".1059" to ptr
  %".1060" = load float, ptr %"for_LDG.73"
  store float %".1060", ptr %"R19_Float32"
  ; LDG.E.SYS R10, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1063" = load ptr, ptr %"R16_Float32_PTR"
  %".1064" = ptrtoint ptr %".1063" to i64
  %".1065" = add i64 %".1064", 0
  %"for_LDG.74" = inttoptr i64 %".1065" to ptr
  %".1066" = load float, ptr %"for_LDG.74"
  store float %".1066", ptr %"R10_Float32"
  ; LDG.E.SYS R23, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1069" = load ptr, ptr %"R12_Float32_PTR"
  %".1070" = ptrtoint ptr %".1069" to i64
  %".1071" = add i64 %".1070", 4
  %"for_LDG.75" = inttoptr i64 %".1071" to ptr
  %".1072" = load float, ptr %"for_LDG.75"
  store float %".1072", ptr %"R23_Float32"
  ; LDG.E.SYS R18, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1075" = load ptr, ptr %"R14_Float32_PTR"
  %".1076" = ptrtoint ptr %".1075" to i64
  %".1077" = add i64 %".1076", 4
  %"for_LDG.76" = inttoptr i64 %".1077" to ptr
  %".1078" = load float, ptr %"for_LDG.76"
  store float %".1078", ptr %"R18_Float32"
  ; LDG.E.SYS R20, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1081" = load ptr, ptr %"R16_Float32_PTR"
  %".1082" = ptrtoint ptr %".1081" to i64
  %".1083" = add i64 %".1082", 4
  %"for_LDG.77" = inttoptr i64 %".1083" to ptr
  %".1084" = load float, ptr %"for_LDG.77"
  store float %".1084", ptr %"R20_Float32"
  ; LDG.E.SYS R35, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1087" = load ptr, ptr %"R12_Float32_PTR"
  %".1088" = ptrtoint ptr %".1087" to i64
  %".1089" = add i64 %".1088", 8
  %"for_LDG.78" = inttoptr i64 %".1089" to ptr
  %".1090" = load float, ptr %"for_LDG.78"
  store float %".1090", ptr %"R35_Float32"
  ; LDG.E.SYS R25, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1093" = load ptr, ptr %"R14_Float32_PTR"
  %".1094" = ptrtoint ptr %".1093" to i64
  %".1095" = add i64 %".1094", 8
  %"for_LDG.79" = inttoptr i64 %".1095" to ptr
  %".1096" = load float, ptr %"for_LDG.79"
  store float %".1096", ptr %"R25_Float32"
  ; LDG.E.SYS R22, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1099" = load ptr, ptr %"R16_Float32_PTR"
  %".1100" = ptrtoint ptr %".1099" to i64
  %".1101" = add i64 %".1100", 8
  %"for_LDG.80" = inttoptr i64 %".1101" to ptr
  %".1102" = load float, ptr %"for_LDG.80"
  store float %".1102", ptr %"R22_Float32"
  ; LDG.E.SYS R39, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1105" = load ptr, ptr %"R12_Float32_PTR"
  %".1106" = ptrtoint ptr %".1105" to i64
  %".1107" = add i64 %".1106", 12
  %"for_LDG.81" = inttoptr i64 %".1107" to ptr
  %".1108" = load float, ptr %"for_LDG.81"
  store float %".1108", ptr %"R39_Float32"
  ; LDG.E.SYS R37, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1111" = load ptr, ptr %"R14_Float32_PTR"
  %".1112" = ptrtoint ptr %".1111" to i64
  %".1113" = add i64 %".1112", 12
  %"for_LDG.82" = inttoptr i64 %".1113" to ptr
  %".1114" = load float, ptr %"for_LDG.82"
  store float %".1114", ptr %"R37_Float32"
  ; LDG.E.SYS R24, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1117" = load ptr, ptr %"R16_Float32_PTR"
  %".1118" = ptrtoint ptr %".1117" to i64
  %".1119" = add i64 %".1118", 12
  %"for_LDG.83" = inttoptr i64 %".1119" to ptr
  %".1120" = load float, ptr %"for_LDG.83"
  store float %".1120", ptr %"R24_Float32"
  ; IADD3 R9, R9, -0x4, RZ
  %".1123" = load i32, ptr %"R9_Int32"
  %"add.81" = add i32 %".1123", -4
  %"add.82" = add i32 %"add.81", 0
  store i32 %"add.82", ptr %"R9_Int32"
  ; IADD3 R11, R11, 0x4, RZ
  %".1126" = load i32, ptr %"R11_Int32"
  %"add.83" = add i32 %".1126", 4
  %"add.84" = add i32 %"add.83", 0
  store i32 %"add.84", ptr %"R11_Int32"
  ; ISETP.NE.AND P0, PT, R9, RZ, PT
  %".1129" = load i32, ptr %"R9_Int32"
  %".1130" = load i1, ptr %"PT_Bool"
  %"cmp.11" = icmp ne i32 %".1129", 0
  %".1131" = and i1 %"cmp.11", %".1130"
  ; FFMA R19, R19, R21, R52
  %".1133" = load float, ptr %"R19_Float32"
  %".1134" = load float, ptr %"R21_Float32"
  %".1135" = load float, ptr %"R52_Float32"
  %"fmul.48" = fmul float %".1133", %".1134"
  %"fadd.48" = fadd float %"fmul.48", %".1135"
  store float %"fadd.48", ptr %"R19_Float32"
  ; FFMA R10, R21, R10, R54
  %".1138" = load float, ptr %"R21_Float32"
  %".1139" = load float, ptr %"R10_Float32"
  %".1140" = load float, ptr %"R54_Float32"
  %"fmul.49" = fmul float %".1138", %".1139"
  %"fadd.49" = fadd float %"fmul.49", %".1140"
  store float %"fadd.49", ptr %"R10_Float32"
  ; FFMA R18, R18, R23, R19
  %".1143" = load float, ptr %"R18_Float32"
  %".1144" = load float, ptr %"R23_Float32"
  %".1145" = load float, ptr %"R19_Float32"
  %"fmul.50" = fmul float %".1143", %".1144"
  %"fadd.50" = fadd float %"fmul.50", %".1145"
  store float %"fadd.50", ptr %"R18_Float32"
  ; FFMA R10, R23, R20, R10
  %".1148" = load float, ptr %"R23_Float32"
  %".1149" = load float, ptr %"R20_Float32"
  %".1150" = load float, ptr %"R10_Float32"
  %"fmul.51" = fmul float %".1148", %".1149"
  %"fadd.51" = fadd float %"fmul.51", %".1150"
  store float %"fadd.51", ptr %"R10_Float32"
  ; FFMA R18, R25, R35, R18
  %".1153" = load float, ptr %"R25_Float32"
  %".1154" = load float, ptr %"R35_Float32"
  %".1155" = load float, ptr %"R18_Float32"
  %"fmul.52" = fmul float %".1153", %".1154"
  %"fadd.52" = fadd float %"fmul.52", %".1155"
  store float %"fadd.52", ptr %"R18_Float32"
  ; FFMA R10, R35, R22, R10
  %".1158" = load float, ptr %"R35_Float32"
  %".1159" = load float, ptr %"R22_Float32"
  %".1160" = load float, ptr %"R10_Float32"
  %"fmul.53" = fmul float %".1158", %".1159"
  %"fadd.53" = fadd float %"fmul.53", %".1160"
  store float %"fadd.53", ptr %"R10_Float32"
  ; FFMA R52, R37, R39, R18
  %".1163" = load float, ptr %"R37_Float32"
  %".1164" = load float, ptr %"R39_Float32"
  %".1165" = load float, ptr %"R18_Float32"
  %"fmul.54" = fmul float %".1163", %".1164"
  %"fadd.54" = fadd float %"fmul.54", %".1165"
  store float %"fadd.54", ptr %"R52_Float32"
  ; FFMA R54, R39, R24, R10
  %".1168" = load float, ptr %"R39_Float32"
  %".1169" = load float, ptr %"R24_Float32"
  %".1170" = load float, ptr %"R10_Float32"
  %"fmul.55" = fmul float %".1168", %".1169"
  %"fadd.55" = fadd float %"fmul.55", %".1170"
  store float %"fadd.55", ptr %"R54_Float32"
  ; @P0 BRA `(.L_x_3)
  %".1173" = load i1, ptr %"P0_Bool"
  %".1174" = icmp ne i1 %".1173", 1
  br i1 %".1174", label %".L_x_3", label %".L_x_2"
.L_x_2:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1177" = load i32, ptr %"R4_Int32"
  %".1178" = load i1, ptr %"PT_Bool"
  %"cmp.12" = icmp ne i32 %".1177", 0
  %".1179" = and i1 %"cmp.12", %".1178"
  ; @!P0 BRA `(.L_x_1)
  %".1181" = load i1, ptr %"P0_Bool"
  %".1182" = icmp eq i1 %".1181", 1
  br i1 %".1182", label %".L_x_1", label %".L_x_2_split_0x0fb0"
.L_x_2_split_0x0fb0:
  ; IADD3 R9, R0, R11, RZ
  %".1185" = load i32, ptr %"R0_Int32"
  %".1186" = load i32, ptr %"R11_Int32"
  %"add.85" = add i32 %".1185", %".1186"
  %"add.86" = add i32 %"add.85", 0
  store i32 %"add.86", ptr %"R9_Int32"
  ; MOV R15, 0x4
  store i32 4, ptr %"R15_Int32"
  ; LEA R14, R2.reuse, R9, 0x2
  %".1191" = load i32, ptr %"R2_Int32"
  %".1192" = load i32, ptr %"R9_Int32"
  %"shl.5" = shl i32 %".1191", 2
  %"add.87" = add i32 %"shl.5", %".1192"
  store i32 %"add.87", ptr %"R14_Int32"
  ; IMAD R12, R2, 0x3, R9
  %".1195" = load i32, ptr %"R2_Int32"
  %".1196" = load i32, ptr %"R9_Int32"
  %"mul.32" = mul i32 %".1195", 3
  %"add.88" = add i32 %"mul.32", %".1196"
  store i32 %"add.88", ptr %"R12_Int32"
  ; IMAD.WIDE R10, R11, R15, c[0x0][0x168]
  %".1199" = load i32, ptr %"R11_Int32"
  %".1200" = load i32, ptr %"R15_Int32"
  %"mul.33" = mul i32 %".1199", %".1200"
  %"add.89" = add i32 %"mul.33", %"Arg_3"
  store i32 %"add.89", ptr %"R10_Int32"
  ; IMAD.WIDE R12, R12, R15, c[0x0][0x170]
  %".1203" = load i32, ptr %"R12_Int32"
  %".1204" = load i32, ptr %"R15_Int32"
  %"mul.34" = mul i32 %".1203", %".1204"
  %"add.90" = add i32 %"mul.34", %"Arg_4"
  store i32 %"add.90", ptr %"R12_Int32"
  ; IMAD.WIDE R14, R14, R15, c[0x0][0x170]
  %".1207" = load i32, ptr %"R14_Int32"
  %".1208" = load i32, ptr %"R15_Int32"
  %"mul.35" = mul i32 %".1207", %".1208"
  %"add.91" = add i32 %"mul.35", %"Arg_4"
  store i32 %"add.91", ptr %"R14_Int32"
  ; LDG.E.SYS R17, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1211" = load ptr, ptr %"R10_Float32_PTR"
  %".1212" = ptrtoint ptr %".1211" to i64
  %".1213" = add i64 %".1212", 0
  %"for_LDG.84" = inttoptr i64 %".1213" to ptr
  %".1214" = load float, ptr %"for_LDG.84"
  store float %".1214", ptr %"R17_Float32"
  ; LDG.E.SYS R9, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1217" = load ptr, ptr %"R12_Float32_PTR"
  %".1218" = ptrtoint ptr %".1217" to i64
  %".1219" = add i64 %".1218", 0
  %"for_LDG.85" = inttoptr i64 %".1219" to ptr
  %".1220" = load float, ptr %"for_LDG.85"
  store float %".1220", ptr %"R9_Float32"
  ; LDG.E.SYS R16, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1223" = load ptr, ptr %"R14_Float32_PTR"
  %".1224" = ptrtoint ptr %".1223" to i64
  %".1225" = add i64 %".1224", 0
  %"for_LDG.86" = inttoptr i64 %".1225" to ptr
  %".1226" = load float, ptr %"for_LDG.86"
  store float %".1226", ptr %"R16_Float32"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".1229" = load i32, ptr %"R4_Int32"
  %".1230" = load i1, ptr %"PT_Bool"
  %"cmp.13" = icmp ne i32 %".1229", 1
  %".1231" = and i1 %"cmp.13", %".1230"
  ; FFMA R52, R9, R17, R52
  %".1233" = load float, ptr %"R9_Float32"
  %".1234" = load float, ptr %"R17_Float32"
  %".1235" = load float, ptr %"R52_Float32"
  %"fmul.56" = fmul float %".1233", %".1234"
  %"fadd.56" = fadd float %"fmul.56", %".1235"
  store float %"fadd.56", ptr %"R52_Float32"
  ; FFMA R54, R17, R16, R54
  %".1238" = load float, ptr %"R17_Float32"
  %".1239" = load float, ptr %"R16_Float32"
  %".1240" = load float, ptr %"R54_Float32"
  %"fmul.57" = fmul float %".1238", %".1239"
  %"fadd.57" = fadd float %"fmul.57", %".1240"
  store float %"fadd.57", ptr %"R54_Float32"
  ; @!P0 BRA `(.L_x_1)
  %".1243" = load i1, ptr %"P0_Bool"
  %".1244" = icmp eq i1 %".1243", 1
  br i1 %".1244", label %".L_x_1", label %".L_x_2_split_0x1090"
.L_x_2_split_0x1090:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".1247" = load i32, ptr %"R4_Int32"
  %".1248" = load i1, ptr %"PT_Bool"
  %"cmp.14" = icmp ne i32 %".1247", 2
  %".1249" = and i1 %"cmp.14", %".1248"
  ; LDG.E.SYS R9, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1251" = load ptr, ptr %"R12_Float32_PTR"
  %".1252" = ptrtoint ptr %".1251" to i64
  %".1253" = add i64 %".1252", 4
  %"for_LDG.87" = inttoptr i64 %".1253" to ptr
  %".1254" = load float, ptr %"for_LDG.87"
  store float %".1254", ptr %"R9_Float32"
  ; LDG.E.SYS R17, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1257" = load ptr, ptr %"R10_Float32_PTR"
  %".1258" = ptrtoint ptr %".1257" to i64
  %".1259" = add i64 %".1258", 4
  %"for_LDG.88" = inttoptr i64 %".1259" to ptr
  %".1260" = load float, ptr %"for_LDG.88"
  store float %".1260", ptr %"R17_Float32"
  ; LDG.E.SYS R16, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1263" = load ptr, ptr %"R14_Float32_PTR"
  %".1264" = ptrtoint ptr %".1263" to i64
  %".1265" = add i64 %".1264", 4
  %"for_LDG.89" = inttoptr i64 %".1265" to ptr
  %".1266" = load float, ptr %"for_LDG.89"
  store float %".1266", ptr %"R16_Float32"
  ; @P0 LDG.E.SYS R19, [R12+0x8]
  %".1269" = load i1, ptr %"P0_Bool"
  %".1270" = icmp ne i1 %".1269", 1
  br i1 %".1270", label %".L_x_2_split_0x1090_conditionalExpr_0x10d0", label %".L_x_2_split_0x10e0"
.L_x_2_split_0x1090_conditionalExpr_0x10d0:
  ; LDG.E.SYS R19, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1273" = load ptr, ptr %"R12_Float32_PTR"
  %".1274" = ptrtoint ptr %".1273" to i64
  %".1275" = add i64 %".1274", 8
  %"for_LDG.90" = inttoptr i64 %".1275" to ptr
  %".1276" = load float, ptr %"for_LDG.90"
  store float %".1276", ptr %"R19_Float32"
  ; BRA `(.L_x_2_split_0x10e0)
  br label %".L_x_2_split_0x10e0"
.L_x_2_split_0x10e0:
  ; @P0 LDG.E.SYS R21, [R10+0x8]
  %".1281" = load i1, ptr %"P0_Bool"
  %".1282" = icmp ne i1 %".1281", 1
  br i1 %".1282", label %".L_x_2_split_0x10e0_conditionalExpr_0x10e0", label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10e0_conditionalExpr_0x10e0:
  ; LDG.E.SYS R21, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1285" = load ptr, ptr %"R10_Float32_PTR"
  %".1286" = ptrtoint ptr %".1285" to i64
  %".1287" = add i64 %".1286", 8
  %"for_LDG.91" = inttoptr i64 %".1287" to ptr
  %".1288" = load float, ptr %"for_LDG.91"
  store float %".1288", ptr %"R21_Float32"
  ; BRA `(.L_x_2_split_0x10f0)
  br label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10f0:
  ; @P0 LDG.E.SYS R18, [R14+0x8]
  %".1293" = load i1, ptr %"P0_Bool"
  %".1294" = icmp ne i1 %".1293", 1
  br i1 %".1294", label %".L_x_2_split_0x10f0_conditionalExpr_0x10f0", label %".L_x_2_split_0x1100"
.L_x_2_split_0x10f0_conditionalExpr_0x10f0:
  ; LDG.E.SYS R18, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1297" = load ptr, ptr %"R14_Float32_PTR"
  %".1298" = ptrtoint ptr %".1297" to i64
  %".1299" = add i64 %".1298", 8
  %"for_LDG.92" = inttoptr i64 %".1299" to ptr
  %".1300" = load float, ptr %"for_LDG.92"
  store float %".1300", ptr %"R18_Float32"
  ; BRA `(.L_x_2_split_0x1100)
  br label %".L_x_2_split_0x1100"
.L_x_2_split_0x1100:
  ; FFMA R52, R9, R17, R52
  %".1305" = load float, ptr %"R9_Float32"
  %".1306" = load float, ptr %"R17_Float32"
  %".1307" = load float, ptr %"R52_Float32"
  %"fmul.58" = fmul float %".1305", %".1306"
  %"fadd.58" = fadd float %"fmul.58", %".1307"
  store float %"fadd.58", ptr %"R52_Float32"
  ; FFMA R54, R17, R16, R54
  %".1310" = load float, ptr %"R17_Float32"
  %".1311" = load float, ptr %"R16_Float32"
  %".1312" = load float, ptr %"R54_Float32"
  %"fmul.59" = fmul float %".1310", %".1311"
  %"fadd.59" = fadd float %"fmul.59", %".1312"
  store float %"fadd.59", ptr %"R54_Float32"
  ; @P0 FFMA R52, R19, R21, R52
  %".1315" = load i1, ptr %"P0_Bool"
  %".1316" = icmp ne i1 %".1315", 1
  br i1 %".1316", label %".L_x_2_split_0x1100_conditionalExpr_0x1120", label %".L_x_2_split_0x1130"
.L_x_2_split_0x1100_conditionalExpr_0x1120:
  ; FFMA R52, R19, R21, R52
  %".1319" = load float, ptr %"R19_Float32"
  %".1320" = load float, ptr %"R21_Float32"
  %".1321" = load float, ptr %"R52_Float32"
  %"fmul.60" = fmul float %".1319", %".1320"
  %"fadd.60" = fadd float %"fmul.60", %".1321"
  store float %"fadd.60", ptr %"R52_Float32"
  ; BRA `(.L_x_2_split_0x1130)
  br label %".L_x_2_split_0x1130"
.L_x_2_split_0x1130:
  ; @P0 FFMA R54, R21, R18, R54
  %".1326" = load i1, ptr %"P0_Bool"
  %".1327" = icmp ne i1 %".1326", 1
  br i1 %".1327", label %".L_x_2_split_0x1130_conditionalExpr_0x1130", label %".L_x_1"
.L_x_2_split_0x1130_conditionalExpr_0x1130:
  ; FFMA R54, R21, R18, R54
  %".1330" = load float, ptr %"R21_Float32"
  %".1331" = load float, ptr %"R18_Float32"
  %".1332" = load float, ptr %"R54_Float32"
  %"fmul.61" = fmul float %".1330", %".1331"
  %"fadd.61" = fadd float %"fmul.61", %".1332"
  store float %"fadd.61", ptr %"R54_Float32"
  ; BRA `(.L_x_1)
  br label %".L_x_1"
.L_x_1:
  ; LDG.E.SYS R9, [R26]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R26_Float32_PTR", ptr %"R26_Int32", i32 4, i1 0)
  %".1337" = load ptr, ptr %"R26_Float32_PTR"
  %".1338" = ptrtoint ptr %".1337" to i64
  %".1339" = add i64 %".1338", 0
  %"for_LDG.93" = inttoptr i64 %".1339" to ptr
  %".1340" = load float, ptr %"for_LDG.93"
  store float %".1340", ptr %"R9_Float32"
  ; MOV R10, 0x3bbb989d
  store float 0x41cdddcc40000000, ptr %"R10_Float32"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R11, 0x437c0000
  store float 0x41d0df0000000000, ptr %"R11_Float32"
  ; BSSY B0, `(.L_x_7)
  ; FADD R9, R9, R52
  %".1349" = load float, ptr %"R9_Float32"
  %".1350" = load float, ptr %"R52_Float32"
  %"fadd.62" = fadd float %".1349", %".1350"
  store float %"fadd.62", ptr %"R9_Float32"
  ; FFMA.SAT R10, -R9, R10, 0.5
  %".1353" = load float, ptr %"R9_Float32"
  %".1354" = sub float              0x0, %".1353"
  %".1355" = load float, ptr %"R10_Float32"
  %"fmul.62" = fmul float %".1354", %".1355"
  %"fadd.63" = fadd float %"fmul.62", 0x3fe0000000000000
  store float %"fadd.63", ptr %"R10_Float32"
  ; FFMA.RM R10, R10, R11, 12582913
  %".1358" = load float, ptr %"R10_Float32"
  %".1359" = load float, ptr %"R11_Float32"
  %"fmul.63" = fmul float %".1358", %".1359"
  %"fadd.64" = fadd float %"fmul.63", 0x4168000020000000
  store float %"fadd.64", ptr %"R10_Float32"
  ; FADD R12, R10.reuse, -12583039
  %".1362" = load float, ptr %"R10_Float32"
  %"fadd.65" = fadd float %".1362", 0xc168000fe0000000
  store float %"fadd.65", ptr %"R12_Float32"
  ; SHF.L.U32 R10, R10, 0x17, RZ
  %".1365" = icmp ult i32 23, 32
  %"SHF_min" = select  i1 %".1365", i32 23, i32 32
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Int32", ptr %"R10_Float32", i32 4, i1 0)
  %".1366" = load i32, ptr %"R10_Int32"
  %"zext" = zext i32 0 to i64
  %"zext.1" = zext i32 %".1366" to i64
  %"zext.2" = zext i32 23 to i64
  %"shl.6" = shl i64 %"zext", 32
  %"or" = or i64 %"shl.6", %"zext.1"
  %"shl.7" = shl i64 %"or", %"zext.2"
  %"and" = and i64 %"shl.7", 4294967295
  %"trunc32" = trunc i64 %"and" to i32
  store i32 %"trunc32", ptr %"R10_Int32"
  ; FFMA R12, -R9, 1.4426950216293334961, -R12
  %".1369" = load float, ptr %"R9_Float32"
  %".1370" = sub float              0x0, %".1369"
  %".1371" = load float, ptr %"R12_Float32"
  %".1372" = sub float              0x0, %".1371"
  %"fmul.64" = fmul float %".1370", 0x3ff7154760000000
  %"fadd.66" = fadd float %"fmul.64", %".1372"
  store float %"fadd.66", ptr %"R12_Float32"
  ; FFMA R12, -R9, 1.925963033500011079e-08, R12
  %".1375" = load float, ptr %"R9_Float32"
  %".1376" = sub float              0x0, %".1375"
  %".1377" = load float, ptr %"R12_Float32"
  %"fmul.65" = fmul float %".1376", 0x3e54ae0c00000000
  %"fadd.67" = fadd float %"fmul.65", %".1377"
  store float %"fadd.67", ptr %"R12_Float32"
  ; MUFU.EX2 R9, R12
  %".1380" = load float, ptr %"R12_Float32"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1380")
  store float %"llvm_exp2_f32_result", ptr %"R9_Float32"
  ; FFMA R24, R10, R9, 1
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32", ptr %"R10_Int32", i32 4, i1 0)
  %".1383" = load float, ptr %"R10_Float32"
  %".1384" = load float, ptr %"R9_Float32"
  %"fmul.66" = fmul float %".1383", %".1384"
  %"fadd.68" = fadd float %"fmul.66", 0x3ff0000000000000
  store float %"fadd.68", ptr %"R24_Float32"
  ; IADD3 R9, R24, 0x1800000, RZ
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Int32", ptr %"R24_Float32", i32 4, i1 0)
  %".1387" = load i32, ptr %"R24_Int32"
  %"add.92" = add i32 %".1387", 25165824
  %"add.93" = add i32 %"add.92", 0
  store i32 %"add.93", ptr %"R9_Int32"
  ; LOP3.LUT R9, R9, 0x7f800000, RZ, 0xc0, !PT
  %".1390" = load i32, ptr %"R9_Int32"
  %".1391" = and i32 %".1390", 2139095040
  store i32 %".1391", ptr %"R9_Int32"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".1394" = load i32, ptr %"R9_Int32"
  %".1395" = load i1, ptr %"PT_Bool"
  %"cmp.15" = icmp sgt i32 %".1394", 33554431
  %".1396" = and i1 %"cmp.15", %".1395"
  ; @P0 BRA `(.L_x_8)
  %".1398" = load i1, ptr %"P0_Bool"
  %".1399" = icmp ne i1 %".1398", 1
  br i1 %".1399", label %".L_x_8", label %".L_x_1_split_0x1260"
.L_x_1_split_0x1260:
  ; MOV R10, 0x1280
  store i32 4736, ptr %"R10_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_NOTYPE", ptr %"R10_Int32", i32 4, i1 0)
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R9, R22
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Int32", ptr %"R22_Float32", i32 4, i1 0)
  %".1405" = load i32, ptr %"R22_Int32"
  store i32 %".1405", ptr %"R9_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R9_Float32", ptr %"R9_Int32", i32 4, i1 0)
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %".1410" = load float, ptr %"R24_Float32"
  %".1411" = fdiv float 0x3ff0000000000000, %".1410"
  store float %".1411", ptr %"R9_Float32"
  ; FFMA R10, R24, R9, -1
  %".1414" = load float, ptr %"R24_Float32"
  %".1415" = load float, ptr %"R9_Float32"
  %"fmul.67" = fmul float %".1414", %".1415"
  %"fadd.69" = fadd float %"fmul.67", 0xbff0000000000000
  store float %"fadd.69", ptr %"R10_Float32"
  ; FADD.FTZ R10, -R10, -RZ
  %".1418" = load float, ptr %"R10_Float32"
  %".1419" = sub float              0x0, %".1418"
  %"fadd.70" = fadd float %".1419",              0x0
  store float %"fadd.70", ptr %"R10_Float32"
  ; FFMA R9, R9, R10, R9
  %".1422" = load float, ptr %"R9_Float32"
  %".1423" = load float, ptr %"R10_Float32"
  %".1424" = load float, ptr %"R9_Float32"
  %"fmul.68" = fmul float %".1422", %".1423"
  %"fadd.71" = fadd float %"fmul.68", %".1424"
  store float %"fadd.71", ptr %"R9_Float32"
.L_x_9:
  ; BSYNC B0
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R32_Float32_PTR", ptr %"R32_Int32", i32 4, i1 0)
  %".1428" = load ptr, ptr %"R32_Float32_PTR"
  %".1429" = ptrtoint ptr %".1428" to i64
  %".1430" = add i64 %".1429", 0
  %"for_LDG.94" = inttoptr i64 %".1430" to ptr
  %".1431" = load float, ptr %"for_LDG.94"
  store float %".1431", ptr %"R11_Float32"
  ; MOV R10, 0x3bbb989d
  store float 0x41cdddcc40000000, ptr %"R10_Float32"
  ; MOV R13, 0x437c0000
  store float 0x41d0df0000000000, ptr %"R13_Float32"
  ; FADD R11, R11, R54
  %".1438" = load float, ptr %"R11_Float32"
  %".1439" = load float, ptr %"R54_Float32"
  %"fadd.72" = fadd float %".1438", %".1439"
  store float %"fadd.72", ptr %"R11_Float32"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %".1442" = load float, ptr %"R11_Float32"
  %".1443" = sub float              0x0, %".1442"
  %".1444" = load float, ptr %"R10_Float32"
  %"fmul.69" = fmul float %".1443", %".1444"
  %"fadd.73" = fadd float %"fmul.69", 0x3fe0000000000000
  store float %"fadd.73", ptr %"R10_Float32"
  ; FFMA.RM R10, R10, R13, 12582913
  %".1447" = load float, ptr %"R10_Float32"
  %".1448" = load float, ptr %"R13_Float32"
  %"fmul.70" = fmul float %".1447", %".1448"
  %"fadd.74" = fadd float %"fmul.70", 0x4168000020000000
  store float %"fadd.74", ptr %"R10_Float32"
  ; FADD R12, R10.reuse, -12583039
  %".1451" = load float, ptr %"R10_Float32"
  %"fadd.75" = fadd float %".1451", 0xc168000fe0000000
  store float %"fadd.75", ptr %"R12_Float32"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".1454" = icmp ult i32 23, 32
  %"SHF_min.1" = select  i1 %".1454", i32 23, i32 32
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Int32", ptr %"R10_Float32", i32 4, i1 0)
  %".1455" = load i32, ptr %"R10_Int32"
  %"zext.3" = zext i32 0 to i64
  %"zext.4" = zext i32 %".1455" to i64
  %"zext.5" = zext i32 23 to i64
  %"shl.8" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.8", %"zext.4"
  %"shl.9" = shl i64 %"or.1", %"zext.5"
  %"and.1" = and i64 %"shl.9", 4294967295
  %"trunc32.1" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.1", ptr %"R20_Int32"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %".1458" = load float, ptr %"R11_Float32"
  %".1459" = sub float              0x0, %".1458"
  %".1460" = load float, ptr %"R12_Float32"
  %".1461" = sub float              0x0, %".1460"
  %"fmul.71" = fmul float %".1459", 0x3ff7154760000000
  %"fadd.76" = fadd float %"fmul.71", %".1461"
  store float %"fadd.76", ptr %"R12_Float32"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %".1464" = load float, ptr %"R11_Float32"
  %".1465" = sub float              0x0, %".1464"
  %".1466" = load float, ptr %"R12_Float32"
  %"fmul.72" = fmul float %".1465", 0x3e54ae0c00000000
  %"fadd.77" = fadd float %"fmul.72", %".1466"
  store float %"fadd.77", ptr %"R12_Float32"
  ; MUFU.EX2 R11, R12
  %".1469" = load float, ptr %"R12_Float32"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".1469")
  store float %"llvm_exp2_f32_result.1", ptr %"R11_Float32"
  ; FFMA R20, R20, R11, 1
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32", ptr %"R20_Int32", i32 4, i1 0)
  %".1472" = load float, ptr %"R20_Float32"
  %".1473" = load float, ptr %"R11_Float32"
  %"fmul.73" = fmul float %".1472", %".1473"
  %"fadd.78" = fadd float %"fmul.73", 0x3ff0000000000000
  store float %"fadd.78", ptr %"R20_Float32"
  ; @!P4 BRA `(.L_x_10)
  %".1476" = load i1, ptr %"P4_Bool"
  %".1477" = icmp eq i1 %".1476", 1
  br i1 %".1477", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".1480" = load i32, ptr %"R5_Int32"
  %".1481" = load i1, ptr %"PT_Bool"
  %"cmp.16" = icmp sge i32 %".1480", 3
  %".1482" = and i1 %"cmp.16", %".1481"
  ; MOV R8, RZ
  %".1484" = load float, ptr %"RZ_Float32"
  store float %".1484", ptr %"R8_Float32"
  ; MOV R22, RZ
  %".1487" = load i32, ptr %"RZ_Int32"
  store i32 %".1487", ptr %"R22_Int32"
  ; @!P0 BRA `(.L_x_11)
  %".1490" = load i1, ptr %"P0_Bool"
  %".1491" = icmp eq i1 %".1490", 1
  br i1 %".1491", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".1494" = load i32, ptr %"R7_Int32"
  %".1495" = load i1, ptr %"PT_Bool"
  %"cmp.17" = icmp sgt i32 %".1494", 0
  %".1496" = and i1 %"cmp.17", %".1495"
  ; MOV R8, RZ
  %".1498" = load float, ptr %"RZ_Float32"
  store float %".1498", ptr %"R8_Float32"
  ; MOV R22, RZ
  %".1501" = load i32, ptr %"RZ_Int32"
  store i32 %".1501", ptr %"R22_Int32"
  ; MOV R23, R7
  %".1504" = load i32, ptr %"R7_Int32"
  store i32 %".1504", ptr %"R23_Int32"
  ; @!P0 BRA `(.L_x_12)
  %".1507" = load i1, ptr %"P0_Bool"
  %".1508" = icmp eq i1 %".1507", 1
  br i1 %".1508", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".1511" = load i32, ptr %"R23_Int32"
  %".1512" = load i1, ptr %"PT_Bool"
  %"cmp.18" = icmp sgt i32 %".1511", 12
  %".1513" = and i1 %"cmp.18", %".1512"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".1515" = and i1 1, 1
  %".1516" = or i1 %".1515", 1
  ; @!P1 BRA `(.L_x_13)
  %".1518" = load i1, ptr %"P1_Bool"
  %".1519" = icmp eq i1 %".1518", 1
  br i1 %".1519", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1522" = xor i1 1, 1
  %".1523" = and i1 %".1522", 1
  %".1524" = and i1 %".1523", 1
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, ptr %"R49_Int32"
  ; IADD3 R16, R3, R22, RZ
  %".1528" = load i32, ptr %"R3_Int32"
  %".1529" = load i32, ptr %"R22_Int32"
  %"add.94" = add i32 %".1528", %".1529"
  %"add.95" = add i32 %"add.94", 0
  store i32 %"add.95", ptr %"R16_Int32"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".1532" = load i32, ptr %"R22_Int32"
  %".1533" = load i32, ptr %"R49_Int32"
  %"mul.36" = mul i32 %".1532", %".1533"
  %"add.96" = add i32 %"mul.36", %"Arg_3"
  store i32 %"add.96", ptr %"R12_Int32"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".1536" = load i32, ptr %"R16_Int32"
  %".1537" = load i32, ptr %"R49_Int32"
  %"mul.37" = mul i32 %".1536", %".1537"
  %"add.97" = add i32 %"mul.37", %"Arg_4"
  store i32 %"add.97", ptr %"R16_Int32"
  ; IADD3 R18, R22, 0x4, RZ
  %".1540" = load i32, ptr %"R22_Int32"
  %"add.98" = add i32 %".1540", 4
  %"add.99" = add i32 %"add.98", 0
  store i32 %"add.99", ptr %"R18_Int32"
  ; LDG.E.SYS R24, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1543" = load ptr, ptr %"R12_Float32_PTR"
  %".1544" = ptrtoint ptr %".1543" to i64
  %".1545" = add i64 %".1544", 0
  %"for_LDG.95" = inttoptr i64 %".1545" to ptr
  %".1546" = load float, ptr %"for_LDG.95"
  store float %".1546", ptr %"R24_Float32"
  ; IADD3 R14, R3, R18, RZ
  %".1549" = load i32, ptr %"R3_Int32"
  %".1550" = load i32, ptr %"R18_Int32"
  %"add.100" = add i32 %".1549", %".1550"
  %"add.101" = add i32 %"add.100", 0
  store i32 %"add.101", ptr %"R14_Int32"
  ; LDG.E.SYS R21, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1553" = load ptr, ptr %"R16_Float32_PTR"
  %".1554" = ptrtoint ptr %".1553" to i64
  %".1555" = add i64 %".1554", 0
  %"for_LDG.96" = inttoptr i64 %".1555" to ptr
  %".1556" = load float, ptr %"for_LDG.96"
  store float %".1556", ptr %"R21_Float32"
  ; LDG.E.SYS R36, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1559" = load ptr, ptr %"R12_Float32_PTR"
  %".1560" = ptrtoint ptr %".1559" to i64
  %".1561" = add i64 %".1560", 4
  %"for_LDG.97" = inttoptr i64 %".1561" to ptr
  %".1562" = load float, ptr %"for_LDG.97"
  store float %".1562", ptr %"R36_Float32"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".1565" = load i32, ptr %"R18_Int32"
  %".1566" = load i32, ptr %"R49_Int32"
  %"mul.38" = mul i32 %".1565", %".1566"
  %"add.102" = add i32 %"mul.38", %"Arg_3"
  store i32 %"add.102", ptr %"R18_Int32"
  ; LDG.E.SYS R25, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1569" = load ptr, ptr %"R16_Float32_PTR"
  %".1570" = ptrtoint ptr %".1569" to i64
  %".1571" = add i64 %".1570", 4
  %"for_LDG.98" = inttoptr i64 %".1571" to ptr
  %".1572" = load float, ptr %"for_LDG.98"
  store float %".1572", ptr %"R25_Float32"
  ; LDG.E.SYS R46, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1575" = load ptr, ptr %"R12_Float32_PTR"
  %".1576" = ptrtoint ptr %".1575" to i64
  %".1577" = add i64 %".1576", 8
  %"for_LDG.99" = inttoptr i64 %".1577" to ptr
  %".1578" = load float, ptr %"for_LDG.99"
  store float %".1578", ptr %"R46_Float32"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".1581" = load i32, ptr %"R14_Int32"
  %".1582" = load i32, ptr %"R49_Int32"
  %"mul.39" = mul i32 %".1581", %".1582"
  %"add.103" = add i32 %"mul.39", %"Arg_4"
  store i32 %"add.103", ptr %"R14_Int32"
  ; LDG.E.SYS R34, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1585" = load ptr, ptr %"R16_Float32_PTR"
  %".1586" = ptrtoint ptr %".1585" to i64
  %".1587" = add i64 %".1586", 8
  %"for_LDG.100" = inttoptr i64 %".1587" to ptr
  %".1588" = load float, ptr %"for_LDG.100"
  store float %".1588", ptr %"R34_Float32"
  ; LDG.E.SYS R44, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1591" = load ptr, ptr %"R12_Float32_PTR"
  %".1592" = ptrtoint ptr %".1591" to i64
  %".1593" = add i64 %".1592", 12
  %"for_LDG.101" = inttoptr i64 %".1593" to ptr
  %".1594" = load float, ptr %"for_LDG.101"
  store float %".1594", ptr %"R44_Float32"
  ; IADD3 R10, R22, 0x8, RZ
  %".1597" = load i32, ptr %"R22_Int32"
  %"add.104" = add i32 %".1597", 8
  %"add.105" = add i32 %"add.104", 0
  store i32 %"add.105", ptr %"R10_Int32"
  ; LDG.E.SYS R41, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1600" = load ptr, ptr %"R16_Float32_PTR"
  %".1601" = ptrtoint ptr %".1600" to i64
  %".1602" = add i64 %".1601", 12
  %"for_LDG.102" = inttoptr i64 %".1602" to ptr
  %".1603" = load float, ptr %"for_LDG.102"
  store float %".1603", ptr %"R41_Float32"
  ; LDG.E.SYS R42, [R18]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".1606" = load ptr, ptr %"R18_Float32_PTR"
  %".1607" = ptrtoint ptr %".1606" to i64
  %".1608" = add i64 %".1607", 0
  %"for_LDG.103" = inttoptr i64 %".1608" to ptr
  %".1609" = load float, ptr %"for_LDG.103"
  store float %".1609", ptr %"R42_Float32"
  ; IADD3 R50, R3, R10, RZ
  %".1612" = load i32, ptr %"R3_Int32"
  %".1613" = load i32, ptr %"R10_Int32"
  %"add.106" = add i32 %".1612", %".1613"
  %"add.107" = add i32 %"add.106", 0
  store i32 %"add.107", ptr %"R50_Int32"
  ; LDG.E.SYS R39, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1616" = load ptr, ptr %"R14_Float32_PTR"
  %".1617" = ptrtoint ptr %".1616" to i64
  %".1618" = add i64 %".1617", 0
  %"for_LDG.104" = inttoptr i64 %".1618" to ptr
  %".1619" = load float, ptr %"for_LDG.104"
  store float %".1619", ptr %"R39_Float32"
  ; LDG.E.SYS R40, [R18+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".1622" = load ptr, ptr %"R18_Float32_PTR"
  %".1623" = ptrtoint ptr %".1622" to i64
  %".1624" = add i64 %".1623", 4
  %"for_LDG.105" = inttoptr i64 %".1624" to ptr
  %".1625" = load float, ptr %"for_LDG.105"
  store float %".1625", ptr %"R40_Float32"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".1628" = load i32, ptr %"R10_Int32"
  %".1629" = load i32, ptr %"R49_Int32"
  %"mul.40" = mul i32 %".1628", %".1629"
  %"add.108" = add i32 %"mul.40", %"Arg_3"
  store i32 %"add.108", ptr %"R10_Int32"
  ; LDG.E.SYS R37, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1632" = load ptr, ptr %"R14_Float32_PTR"
  %".1633" = ptrtoint ptr %".1632" to i64
  %".1634" = add i64 %".1633", 4
  %"for_LDG.106" = inttoptr i64 %".1634" to ptr
  %".1635" = load float, ptr %"for_LDG.106"
  store float %".1635", ptr %"R37_Float32"
  ; LDG.E.SYS R38, [R18+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".1638" = load ptr, ptr %"R18_Float32_PTR"
  %".1639" = ptrtoint ptr %".1638" to i64
  %".1640" = add i64 %".1639", 8
  %"for_LDG.107" = inttoptr i64 %".1640" to ptr
  %".1641" = load float, ptr %"for_LDG.107"
  store float %".1641", ptr %"R38_Float32"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".1644" = load i32, ptr %"R50_Int32"
  %".1645" = load i32, ptr %"R49_Int32"
  %"mul.41" = mul i32 %".1644", %".1645"
  %"add.109" = add i32 %"mul.41", %"Arg_4"
  store i32 %"add.109", ptr %"R12_Int32"
  ; LDG.E.SYS R35, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1648" = load ptr, ptr %"R14_Float32_PTR"
  %".1649" = ptrtoint ptr %".1648" to i64
  %".1650" = add i64 %".1649", 8
  %"for_LDG.108" = inttoptr i64 %".1650" to ptr
  %".1651" = load float, ptr %"for_LDG.108"
  store float %".1651", ptr %"R35_Float32"
  ; LDG.E.SYS R48, [R18+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".1654" = load ptr, ptr %"R18_Float32_PTR"
  %".1655" = ptrtoint ptr %".1654" to i64
  %".1656" = add i64 %".1655", 12
  %"for_LDG.109" = inttoptr i64 %".1656" to ptr
  %".1657" = load float, ptr %"for_LDG.109"
  store float %".1657", ptr %"R48_Float32"
  ; IADD3 R16, R22, 0xc, RZ
  %".1660" = load i32, ptr %"R22_Int32"
  %"add.110" = add i32 %".1660", 12
  %"add.111" = add i32 %"add.110", 0
  store i32 %"add.111", ptr %"R16_Int32"
  ; LDG.E.SYS R47, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1663" = load ptr, ptr %"R14_Float32_PTR"
  %".1664" = ptrtoint ptr %".1663" to i64
  %".1665" = add i64 %".1664", 12
  %"for_LDG.110" = inttoptr i64 %".1665" to ptr
  %".1666" = load float, ptr %"for_LDG.110"
  store float %".1666", ptr %"R47_Float32"
  ; LDG.E.SYS R54, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1669" = load ptr, ptr %"R10_Float32_PTR"
  %".1670" = ptrtoint ptr %".1669" to i64
  %".1671" = add i64 %".1670", 0
  %"for_LDG.111" = inttoptr i64 %".1671" to ptr
  %".1672" = load float, ptr %"for_LDG.111"
  store float %".1672", ptr %"R54_Float32"
  ; IADD3 R58, R3, R16, RZ
  %".1675" = load i32, ptr %"R3_Int32"
  %".1676" = load i32, ptr %"R16_Int32"
  %"add.112" = add i32 %".1675", %".1676"
  %"add.113" = add i32 %"add.112", 0
  store i32 %"add.113", ptr %"R58_Int32"
  ; LDG.E.SYS R45, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1679" = load ptr, ptr %"R12_Float32_PTR"
  %".1680" = ptrtoint ptr %".1679" to i64
  %".1681" = add i64 %".1680", 0
  %"for_LDG.112" = inttoptr i64 %".1681" to ptr
  %".1682" = load float, ptr %"for_LDG.112"
  store float %".1682", ptr %"R45_Float32"
  ; LDG.E.SYS R52, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1685" = load ptr, ptr %"R10_Float32_PTR"
  %".1686" = ptrtoint ptr %".1685" to i64
  %".1687" = add i64 %".1686", 4
  %"for_LDG.113" = inttoptr i64 %".1687" to ptr
  %".1688" = load float, ptr %"for_LDG.113"
  store float %".1688", ptr %"R52_Float32"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".1691" = load i32, ptr %"R16_Int32"
  %".1692" = load i32, ptr %"R49_Int32"
  %"mul.42" = mul i32 %".1691", %".1692"
  %"add.114" = add i32 %"mul.42", %"Arg_3"
  store i32 %"add.114", ptr %"R16_Int32"
  ; LDG.E.SYS R43, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1695" = load ptr, ptr %"R12_Float32_PTR"
  %".1696" = ptrtoint ptr %".1695" to i64
  %".1697" = add i64 %".1696", 4
  %"for_LDG.114" = inttoptr i64 %".1697" to ptr
  %".1698" = load float, ptr %"for_LDG.114"
  store float %".1698", ptr %"R43_Float32"
  ; LDG.E.SYS R50, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1701" = load ptr, ptr %"R10_Float32_PTR"
  %".1702" = ptrtoint ptr %".1701" to i64
  %".1703" = add i64 %".1702", 8
  %"for_LDG.115" = inttoptr i64 %".1703" to ptr
  %".1704" = load float, ptr %"for_LDG.115"
  store float %".1704", ptr %"R50_Float32"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".1707" = load i32, ptr %"R58_Int32"
  %".1708" = load i32, ptr %"R49_Int32"
  %"mul.43" = mul i32 %".1707", %".1708"
  %"add.115" = add i32 %"mul.43", %"Arg_4"
  store i32 %"add.115", ptr %"R14_Int32"
  ; LDG.E.SYS R18, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1711" = load ptr, ptr %"R12_Float32_PTR"
  %".1712" = ptrtoint ptr %".1711" to i64
  %".1713" = add i64 %".1712", 8
  %"for_LDG.116" = inttoptr i64 %".1713" to ptr
  %".1714" = load float, ptr %"for_LDG.116"
  store float %".1714", ptr %"R18_Float32"
  ; LDG.E.SYS R56, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1717" = load ptr, ptr %"R10_Float32_PTR"
  %".1718" = ptrtoint ptr %".1717" to i64
  %".1719" = add i64 %".1718", 12
  %"for_LDG.117" = inttoptr i64 %".1719" to ptr
  %".1720" = load float, ptr %"for_LDG.117"
  store float %".1720", ptr %"R56_Float32"
  ; LDG.E.SYS R55, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1723" = load ptr, ptr %"R12_Float32_PTR"
  %".1724" = ptrtoint ptr %".1723" to i64
  %".1725" = add i64 %".1724", 12
  %"for_LDG.118" = inttoptr i64 %".1725" to ptr
  %".1726" = load float, ptr %"for_LDG.118"
  store float %".1726", ptr %"R55_Float32"
  ; LDG.E.SYS R51, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1729" = load ptr, ptr %"R16_Float32_PTR"
  %".1730" = ptrtoint ptr %".1729" to i64
  %".1731" = add i64 %".1730", 0
  %"for_LDG.119" = inttoptr i64 %".1731" to ptr
  %".1732" = load float, ptr %"for_LDG.119"
  store float %".1732", ptr %"R51_Float32"
  ; LDG.E.SYS R53, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1735" = load ptr, ptr %"R14_Float32_PTR"
  %".1736" = ptrtoint ptr %".1735" to i64
  %".1737" = add i64 %".1736", 0
  %"for_LDG.120" = inttoptr i64 %".1737" to ptr
  %".1738" = load float, ptr %"for_LDG.120"
  store float %".1738", ptr %"R53_Float32"
  ; LDG.E.SYS R60, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1741" = load ptr, ptr %"R16_Float32_PTR"
  %".1742" = ptrtoint ptr %".1741" to i64
  %".1743" = add i64 %".1742", 4
  %"for_LDG.121" = inttoptr i64 %".1743" to ptr
  %".1744" = load float, ptr %"for_LDG.121"
  store float %".1744", ptr %"R60_Float32"
  ; LDG.E.SYS R49, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1747" = load ptr, ptr %"R14_Float32_PTR"
  %".1748" = ptrtoint ptr %".1747" to i64
  %".1749" = add i64 %".1748", 4
  %"for_LDG.122" = inttoptr i64 %".1749" to ptr
  %".1750" = load float, ptr %"for_LDG.122"
  store float %".1750", ptr %"R49_Float32"
  ; LDG.E.SYS R58, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1753" = load ptr, ptr %"R16_Float32_PTR"
  %".1754" = ptrtoint ptr %".1753" to i64
  %".1755" = add i64 %".1754", 8
  %"for_LDG.123" = inttoptr i64 %".1755" to ptr
  %".1756" = load float, ptr %"for_LDG.123"
  store float %".1756", ptr %"R58_Float32"
  ; LDG.E.SYS R19, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1759" = load ptr, ptr %"R14_Float32_PTR"
  %".1760" = ptrtoint ptr %".1759" to i64
  %".1761" = add i64 %".1760", 8
  %"for_LDG.124" = inttoptr i64 %".1761" to ptr
  %".1762" = load float, ptr %"for_LDG.124"
  store float %".1762", ptr %"R19_Float32"
  ; LDG.E.SYS R57, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1765" = load ptr, ptr %"R16_Float32_PTR"
  %".1766" = ptrtoint ptr %".1765" to i64
  %".1767" = add i64 %".1766", 12
  %"for_LDG.125" = inttoptr i64 %".1767" to ptr
  %".1768" = load float, ptr %"for_LDG.125"
  store float %".1768", ptr %"R57_Float32"
  ; LDG.E.SYS R59, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1771" = load ptr, ptr %"R14_Float32_PTR"
  %".1772" = ptrtoint ptr %".1771" to i64
  %".1773" = add i64 %".1772", 12
  %"for_LDG.126" = inttoptr i64 %".1773" to ptr
  %".1774" = load float, ptr %"for_LDG.126"
  store float %".1774", ptr %"R59_Float32"
  ; IADD3 R23, R23, -0x10, RZ
  %".1777" = load i32, ptr %"R23_Int32"
  %"add.116" = add i32 %".1777", -16
  %"add.117" = add i32 %"add.116", 0
  store i32 %"add.117", ptr %"R23_Int32"
  ; IADD3 R22, R22, 0x10, RZ
  %".1780" = load i32, ptr %"R22_Int32"
  %"add.118" = add i32 %".1780", 16
  %"add.119" = add i32 %"add.118", 0
  store i32 %"add.119", ptr %"R22_Int32"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".1783" = load i32, ptr %"R23_Int32"
  %".1784" = load i1, ptr %"PT_Bool"
  %"cmp.19" = icmp sgt i32 %".1783", 12
  %".1785" = and i1 %"cmp.19", %".1784"
  ; FMUL R24, R24, R9
  %".1787" = load float, ptr %"R24_Float32"
  %".1788" = load float, ptr %"R9_Float32"
  %"fmul.74" = fmul float %".1787", %".1788"
  store float %"fmul.74", ptr %"R24_Float32"
  ; FFMA R24, R24, R21, R8
  %".1791" = load float, ptr %"R24_Float32"
  %".1792" = load float, ptr %"R21_Float32"
  %".1793" = load float, ptr %"R8_Float32"
  %"fmul.75" = fmul float %".1791", %".1792"
  %"fadd.79" = fadd float %"fmul.75", %".1793"
  store float %"fadd.79", ptr %"R24_Float32"
  ; FMUL R36, R36, R9
  %".1796" = load float, ptr %"R36_Float32"
  %".1797" = load float, ptr %"R9_Float32"
  %"fmul.76" = fmul float %".1796", %".1797"
  store float %"fmul.76", ptr %"R36_Float32"
  ; FFMA R25, R36, R25, R24
  %".1800" = load float, ptr %"R36_Float32"
  %".1801" = load float, ptr %"R25_Float32"
  %".1802" = load float, ptr %"R24_Float32"
  %"fmul.77" = fmul float %".1800", %".1801"
  %"fadd.80" = fadd float %"fmul.77", %".1802"
  store float %"fadd.80", ptr %"R25_Float32"
  ; FMUL R46, R46, R9
  %".1805" = load float, ptr %"R46_Float32"
  %".1806" = load float, ptr %"R9_Float32"
  %"fmul.78" = fmul float %".1805", %".1806"
  store float %"fmul.78", ptr %"R46_Float32"
  ; FFMA R34, R46, R34, R25
  %".1809" = load float, ptr %"R46_Float32"
  %".1810" = load float, ptr %"R34_Float32"
  %".1811" = load float, ptr %"R25_Float32"
  %"fmul.79" = fmul float %".1809", %".1810"
  %"fadd.81" = fadd float %"fmul.79", %".1811"
  store float %"fadd.81", ptr %"R34_Float32"
  ; FMUL R44, R44, R9
  %".1814" = load float, ptr %"R44_Float32"
  %".1815" = load float, ptr %"R9_Float32"
  %"fmul.80" = fmul float %".1814", %".1815"
  store float %"fmul.80", ptr %"R44_Float32"
  ; FFMA R34, R44, R41, R34
  %".1818" = load float, ptr %"R44_Float32"
  %".1819" = load float, ptr %"R41_Float32"
  %".1820" = load float, ptr %"R34_Float32"
  %"fmul.81" = fmul float %".1818", %".1819"
  %"fadd.82" = fadd float %"fmul.81", %".1820"
  store float %"fadd.82", ptr %"R34_Float32"
  ; FMUL R42, R42, R9
  %".1823" = load float, ptr %"R42_Float32"
  %".1824" = load float, ptr %"R9_Float32"
  %"fmul.82" = fmul float %".1823", %".1824"
  store float %"fmul.82", ptr %"R42_Float32"
  ; FFMA R34, R42, R39, R34
  %".1827" = load float, ptr %"R42_Float32"
  %".1828" = load float, ptr %"R39_Float32"
  %".1829" = load float, ptr %"R34_Float32"
  %"fmul.83" = fmul float %".1827", %".1828"
  %"fadd.83" = fadd float %"fmul.83", %".1829"
  store float %"fadd.83", ptr %"R34_Float32"
  ; FMUL R40, R40, R9
  %".1832" = load float, ptr %"R40_Float32"
  %".1833" = load float, ptr %"R9_Float32"
  %"fmul.84" = fmul float %".1832", %".1833"
  store float %"fmul.84", ptr %"R40_Float32"
  ; FFMA R34, R40, R37, R34
  %".1836" = load float, ptr %"R40_Float32"
  %".1837" = load float, ptr %"R37_Float32"
  %".1838" = load float, ptr %"R34_Float32"
  %"fmul.85" = fmul float %".1836", %".1837"
  %"fadd.84" = fadd float %"fmul.85", %".1838"
  store float %"fadd.84", ptr %"R34_Float32"
  ; FMUL R38, R38, R9
  %".1841" = load float, ptr %"R38_Float32"
  %".1842" = load float, ptr %"R9_Float32"
  %"fmul.86" = fmul float %".1841", %".1842"
  store float %"fmul.86", ptr %"R38_Float32"
  ; FFMA R34, R38, R35, R34
  %".1845" = load float, ptr %"R38_Float32"
  %".1846" = load float, ptr %"R35_Float32"
  %".1847" = load float, ptr %"R34_Float32"
  %"fmul.87" = fmul float %".1845", %".1846"
  %"fadd.85" = fadd float %"fmul.87", %".1847"
  store float %"fadd.85", ptr %"R34_Float32"
  ; FMUL R48, R48, R9
  %".1850" = load float, ptr %"R48_Float32"
  %".1851" = load float, ptr %"R9_Float32"
  %"fmul.88" = fmul float %".1850", %".1851"
  store float %"fmul.88", ptr %"R48_Float32"
  ; FFMA R34, R48, R47, R34
  %".1854" = load float, ptr %"R48_Float32"
  %".1855" = load float, ptr %"R47_Float32"
  %".1856" = load float, ptr %"R34_Float32"
  %"fmul.89" = fmul float %".1854", %".1855"
  %"fadd.86" = fadd float %"fmul.89", %".1856"
  store float %"fadd.86", ptr %"R34_Float32"
  ; FMUL R54, R54, R9
  %".1859" = load float, ptr %"R54_Float32"
  %".1860" = load float, ptr %"R9_Float32"
  %"fmul.90" = fmul float %".1859", %".1860"
  store float %"fmul.90", ptr %"R54_Float32"
  ; FFMA R34, R54, R45, R34
  %".1863" = load float, ptr %"R54_Float32"
  %".1864" = load float, ptr %"R45_Float32"
  %".1865" = load float, ptr %"R34_Float32"
  %"fmul.91" = fmul float %".1863", %".1864"
  %"fadd.87" = fadd float %"fmul.91", %".1865"
  store float %"fadd.87", ptr %"R34_Float32"
  ; FMUL R52, R52, R9
  %".1868" = load float, ptr %"R52_Float32"
  %".1869" = load float, ptr %"R9_Float32"
  %"fmul.92" = fmul float %".1868", %".1869"
  store float %"fmul.92", ptr %"R52_Float32"
  ; FFMA R43, R52, R43, R34
  %".1872" = load float, ptr %"R52_Float32"
  %".1873" = load float, ptr %"R43_Float32"
  %".1874" = load float, ptr %"R34_Float32"
  %"fmul.93" = fmul float %".1872", %".1873"
  %"fadd.88" = fadd float %"fmul.93", %".1874"
  store float %"fadd.88", ptr %"R43_Float32"
  ; FMUL R50, R50, R9
  %".1877" = load float, ptr %"R50_Float32"
  %".1878" = load float, ptr %"R9_Float32"
  %"fmul.94" = fmul float %".1877", %".1878"
  store float %"fmul.94", ptr %"R50_Float32"
  ; FFMA R18, R50, R18, R43
  %".1881" = load float, ptr %"R50_Float32"
  %".1882" = load float, ptr %"R18_Float32"
  %".1883" = load float, ptr %"R43_Float32"
  %"fmul.95" = fmul float %".1881", %".1882"
  %"fadd.89" = fadd float %"fmul.95", %".1883"
  store float %"fadd.89", ptr %"R18_Float32"
  ; FMUL R56, R56, R9
  %".1886" = load float, ptr %"R56_Float32"
  %".1887" = load float, ptr %"R9_Float32"
  %"fmul.96" = fmul float %".1886", %".1887"
  store float %"fmul.96", ptr %"R56_Float32"
  ; FFMA R18, R56, R55, R18
  %".1890" = load float, ptr %"R56_Float32"
  %".1891" = load float, ptr %"R55_Float32"
  %".1892" = load float, ptr %"R18_Float32"
  %"fmul.97" = fmul float %".1890", %".1891"
  %"fadd.90" = fadd float %"fmul.97", %".1892"
  store float %"fadd.90", ptr %"R18_Float32"
  ; FMUL R51, R51, R9
  %".1895" = load float, ptr %"R51_Float32"
  %".1896" = load float, ptr %"R9_Float32"
  %"fmul.98" = fmul float %".1895", %".1896"
  store float %"fmul.98", ptr %"R51_Float32"
  ; FFMA R18, R51, R53, R18
  %".1899" = load float, ptr %"R51_Float32"
  %".1900" = load float, ptr %"R53_Float32"
  %".1901" = load float, ptr %"R18_Float32"
  %"fmul.99" = fmul float %".1899", %".1900"
  %"fadd.91" = fadd float %"fmul.99", %".1901"
  store float %"fadd.91", ptr %"R18_Float32"
  ; FMUL R60, R60, R9
  %".1904" = load float, ptr %"R60_Float32"
  %".1905" = load float, ptr %"R9_Float32"
  %"fmul.100" = fmul float %".1904", %".1905"
  store float %"fmul.100", ptr %"R60_Float32"
  ; FFMA R18, R60, R49, R18
  %".1908" = load float, ptr %"R60_Float32"
  %".1909" = load float, ptr %"R49_Float32"
  %".1910" = load float, ptr %"R18_Float32"
  %"fmul.101" = fmul float %".1908", %".1909"
  %"fadd.92" = fadd float %"fmul.101", %".1910"
  store float %"fadd.92", ptr %"R18_Float32"
  ; FMUL R58, R58, R9
  %".1913" = load float, ptr %"R58_Float32"
  %".1914" = load float, ptr %"R9_Float32"
  %"fmul.102" = fmul float %".1913", %".1914"
  store float %"fmul.102", ptr %"R58_Float32"
  ; FFMA R18, R58, R19, R18
  %".1917" = load float, ptr %"R58_Float32"
  %".1918" = load float, ptr %"R19_Float32"
  %".1919" = load float, ptr %"R18_Float32"
  %"fmul.103" = fmul float %".1917", %".1918"
  %"fadd.93" = fadd float %"fmul.103", %".1919"
  store float %"fadd.93", ptr %"R18_Float32"
  ; FMUL R57, R57, R9
  %".1922" = load float, ptr %"R57_Float32"
  %".1923" = load float, ptr %"R9_Float32"
  %"fmul.104" = fmul float %".1922", %".1923"
  store float %"fmul.104", ptr %"R57_Float32"
  ; FFMA R8, R57, R59, R18
  %".1926" = load float, ptr %"R57_Float32"
  %".1927" = load float, ptr %"R59_Float32"
  %".1928" = load float, ptr %"R18_Float32"
  %"fmul.105" = fmul float %".1926", %".1927"
  %"fadd.94" = fadd float %"fmul.105", %".1928"
  store float %"fadd.94", ptr %"R8_Float32"
  ; @P1 BRA `(.L_x_14)
  %".1931" = load i1, ptr %"P1_Bool"
  %".1932" = icmp ne i1 %".1931", 1
  br i1 %".1932", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".1935" = load i32, ptr %"R23_Int32"
  %".1936" = load i1, ptr %"PT_Bool"
  %"cmp.20" = icmp sgt i32 %".1935", 4
  %".1937" = and i1 %"cmp.20", %".1936"
  ; @!P1 BRA `(.L_x_15)
  %".1939" = load i1, ptr %"P1_Bool"
  %".1940" = icmp eq i1 %".1939", 1
  br i1 %".1940", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13_Int32"
  ; IADD3 R16, R3, R22, RZ
  %".1945" = load i32, ptr %"R3_Int32"
  %".1946" = load i32, ptr %"R22_Int32"
  %"add.120" = add i32 %".1945", %".1946"
  %"add.121" = add i32 %"add.120", 0
  store i32 %"add.121", ptr %"R16_Int32"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".1949" = load i32, ptr %"R22_Int32"
  %".1950" = load i32, ptr %"R13_Int32"
  %"mul.44" = mul i32 %".1949", %".1950"
  %"add.122" = add i32 %"mul.44", %"Arg_3"
  store i32 %"add.122", ptr %"R14_Int32"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".1953" = load i32, ptr %"R16_Int32"
  %".1954" = load i32, ptr %"R13_Int32"
  %"mul.45" = mul i32 %".1953", %".1954"
  %"add.123" = add i32 %"mul.45", %"Arg_4"
  store i32 %"add.123", ptr %"R16_Int32"
  ; IADD3 R10, R22, 0x4, RZ
  %".1957" = load i32, ptr %"R22_Int32"
  %"add.124" = add i32 %".1957", 4
  %"add.125" = add i32 %"add.124", 0
  store i32 %"add.125", ptr %"R10_Int32"
  ; LDG.E.SYS R18, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1960" = load ptr, ptr %"R14_Float32_PTR"
  %".1961" = ptrtoint ptr %".1960" to i64
  %".1962" = add i64 %".1961", 0
  %"for_LDG.127" = inttoptr i64 %".1962" to ptr
  %".1963" = load float, ptr %"for_LDG.127"
  store float %".1963", ptr %"R18_Float32"
  ; IADD3 R12, R3, R10, RZ
  %".1966" = load i32, ptr %"R3_Int32"
  %".1967" = load i32, ptr %"R10_Int32"
  %"add.126" = add i32 %".1966", %".1967"
  %"add.127" = add i32 %"add.126", 0
  store i32 %"add.127", ptr %"R12_Int32"
  ; LDG.E.SYS R19, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1970" = load ptr, ptr %"R16_Float32_PTR"
  %".1971" = ptrtoint ptr %".1970" to i64
  %".1972" = add i64 %".1971", 0
  %"for_LDG.128" = inttoptr i64 %".1972" to ptr
  %".1973" = load float, ptr %"for_LDG.128"
  store float %".1973", ptr %"R19_Float32"
  ; LDG.E.SYS R24, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1976" = load ptr, ptr %"R14_Float32_PTR"
  %".1977" = ptrtoint ptr %".1976" to i64
  %".1978" = add i64 %".1977", 4
  %"for_LDG.129" = inttoptr i64 %".1978" to ptr
  %".1979" = load float, ptr %"for_LDG.129"
  store float %".1979", ptr %"R24_Float32"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".1982" = load i32, ptr %"R10_Int32"
  %".1983" = load i32, ptr %"R13_Int32"
  %"mul.46" = mul i32 %".1982", %".1983"
  %"add.128" = add i32 %"mul.46", %"Arg_3"
  store i32 %"add.128", ptr %"R10_Int32"
  ; LDG.E.SYS R21, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1986" = load ptr, ptr %"R16_Float32_PTR"
  %".1987" = ptrtoint ptr %".1986" to i64
  %".1988" = add i64 %".1987", 4
  %"for_LDG.130" = inttoptr i64 %".1988" to ptr
  %".1989" = load float, ptr %"for_LDG.130"
  store float %".1989", ptr %"R21_Float32"
  ; LDG.E.SYS R34, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1992" = load ptr, ptr %"R14_Float32_PTR"
  %".1993" = ptrtoint ptr %".1992" to i64
  %".1994" = add i64 %".1993", 8
  %"for_LDG.131" = inttoptr i64 %".1994" to ptr
  %".1995" = load float, ptr %"for_LDG.131"
  store float %".1995", ptr %"R34_Float32"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".1998" = load i32, ptr %"R12_Int32"
  %".1999" = load i32, ptr %"R13_Int32"
  %"mul.47" = mul i32 %".1998", %".1999"
  %"add.129" = add i32 %"mul.47", %"Arg_4"
  store i32 %"add.129", ptr %"R12_Int32"
  ; LDG.E.SYS R25, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".2002" = load ptr, ptr %"R16_Float32_PTR"
  %".2003" = ptrtoint ptr %".2002" to i64
  %".2004" = add i64 %".2003", 8
  %"for_LDG.132" = inttoptr i64 %".2004" to ptr
  %".2005" = load float, ptr %"for_LDG.132"
  store float %".2005", ptr %"R25_Float32"
  ; LDG.E.SYS R36, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".2008" = load ptr, ptr %"R14_Float32_PTR"
  %".2009" = ptrtoint ptr %".2008" to i64
  %".2010" = add i64 %".2009", 12
  %"for_LDG.133" = inttoptr i64 %".2010" to ptr
  %".2011" = load float, ptr %"for_LDG.133"
  store float %".2011", ptr %"R36_Float32"
  ; LDG.E.SYS R35, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".2014" = load ptr, ptr %"R16_Float32_PTR"
  %".2015" = ptrtoint ptr %".2014" to i64
  %".2016" = add i64 %".2015", 12
  %"for_LDG.134" = inttoptr i64 %".2016" to ptr
  %".2017" = load float, ptr %"for_LDG.134"
  store float %".2017", ptr %"R35_Float32"
  ; LDG.E.SYS R38, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2020" = load ptr, ptr %"R10_Float32_PTR"
  %".2021" = ptrtoint ptr %".2020" to i64
  %".2022" = add i64 %".2021", 0
  %"for_LDG.135" = inttoptr i64 %".2022" to ptr
  %".2023" = load float, ptr %"for_LDG.135"
  store float %".2023", ptr %"R38_Float32"
  ; LDG.E.SYS R37, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2026" = load ptr, ptr %"R12_Float32_PTR"
  %".2027" = ptrtoint ptr %".2026" to i64
  %".2028" = add i64 %".2027", 0
  %"for_LDG.136" = inttoptr i64 %".2028" to ptr
  %".2029" = load float, ptr %"for_LDG.136"
  store float %".2029", ptr %"R37_Float32"
  ; LDG.E.SYS R40, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2032" = load ptr, ptr %"R10_Float32_PTR"
  %".2033" = ptrtoint ptr %".2032" to i64
  %".2034" = add i64 %".2033", 4
  %"for_LDG.137" = inttoptr i64 %".2034" to ptr
  %".2035" = load float, ptr %"for_LDG.137"
  store float %".2035", ptr %"R40_Float32"
  ; LDG.E.SYS R39, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2038" = load ptr, ptr %"R12_Float32_PTR"
  %".2039" = ptrtoint ptr %".2038" to i64
  %".2040" = add i64 %".2039", 4
  %"for_LDG.138" = inttoptr i64 %".2040" to ptr
  %".2041" = load float, ptr %"for_LDG.138"
  store float %".2041", ptr %"R39_Float32"
  ; LDG.E.SYS R42, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2044" = load ptr, ptr %"R10_Float32_PTR"
  %".2045" = ptrtoint ptr %".2044" to i64
  %".2046" = add i64 %".2045", 8
  %"for_LDG.139" = inttoptr i64 %".2046" to ptr
  %".2047" = load float, ptr %"for_LDG.139"
  store float %".2047", ptr %"R42_Float32"
  ; LDG.E.SYS R44, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2050" = load ptr, ptr %"R10_Float32_PTR"
  %".2051" = ptrtoint ptr %".2050" to i64
  %".2052" = add i64 %".2051", 12
  %"for_LDG.140" = inttoptr i64 %".2052" to ptr
  %".2053" = load float, ptr %"for_LDG.140"
  store float %".2053", ptr %"R44_Float32"
  ; LDG.E.SYS R41, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2056" = load ptr, ptr %"R12_Float32_PTR"
  %".2057" = ptrtoint ptr %".2056" to i64
  %".2058" = add i64 %".2057", 8
  %"for_LDG.141" = inttoptr i64 %".2058" to ptr
  %".2059" = load float, ptr %"for_LDG.141"
  store float %".2059", ptr %"R41_Float32"
  ; LDG.E.SYS R43, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2062" = load ptr, ptr %"R12_Float32_PTR"
  %".2063" = ptrtoint ptr %".2062" to i64
  %".2064" = add i64 %".2063", 12
  %"for_LDG.142" = inttoptr i64 %".2064" to ptr
  %".2065" = load float, ptr %"for_LDG.142"
  store float %".2065", ptr %"R43_Float32"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2068" = xor i1 1, 1
  %".2069" = and i1 %".2068", 1
  %".2070" = and i1 %".2069", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".2072" = load i32, ptr %"R23_Int32"
  %"add.130" = add i32 %".2072", -8
  %"add.131" = add i32 %"add.130", 0
  store i32 %"add.131", ptr %"R23_Int32"
  ; IADD3 R22, R22, 0x8, RZ
  %".2075" = load i32, ptr %"R22_Int32"
  %"add.132" = add i32 %".2075", 8
  %"add.133" = add i32 %"add.132", 0
  store i32 %"add.133", ptr %"R22_Int32"
  ; FMUL R15, R18, R9
  %".2078" = load float, ptr %"R18_Float32"
  %".2079" = load float, ptr %"R9_Float32"
  %"fmul.106" = fmul float %".2078", %".2079"
  store float %"fmul.106", ptr %"R15_Float32"
  ; FFMA R15, R15, R19, R8
  %".2082" = load float, ptr %"R15_Float32"
  %".2083" = load float, ptr %"R19_Float32"
  %".2084" = load float, ptr %"R8_Float32"
  %"fmul.107" = fmul float %".2082", %".2083"
  %"fadd.95" = fadd float %"fmul.107", %".2084"
  store float %"fadd.95", ptr %"R15_Float32"
  ; FMUL R24, R24, R9
  %".2087" = load float, ptr %"R24_Float32"
  %".2088" = load float, ptr %"R9_Float32"
  %"fmul.108" = fmul float %".2087", %".2088"
  store float %"fmul.108", ptr %"R24_Float32"
  ; FFMA R15, R24, R21, R15
  %".2091" = load float, ptr %"R24_Float32"
  %".2092" = load float, ptr %"R21_Float32"
  %".2093" = load float, ptr %"R15_Float32"
  %"fmul.109" = fmul float %".2091", %".2092"
  %"fadd.96" = fadd float %"fmul.109", %".2093"
  store float %"fadd.96", ptr %"R15_Float32"
  ; FMUL R34, R34, R9
  %".2096" = load float, ptr %"R34_Float32"
  %".2097" = load float, ptr %"R9_Float32"
  %"fmul.110" = fmul float %".2096", %".2097"
  store float %"fmul.110", ptr %"R34_Float32"
  ; FFMA R15, R34, R25, R15
  %".2100" = load float, ptr %"R34_Float32"
  %".2101" = load float, ptr %"R25_Float32"
  %".2102" = load float, ptr %"R15_Float32"
  %"fmul.111" = fmul float %".2100", %".2101"
  %"fadd.97" = fadd float %"fmul.111", %".2102"
  store float %"fadd.97", ptr %"R15_Float32"
  ; FMUL R36, R36, R9
  %".2105" = load float, ptr %"R36_Float32"
  %".2106" = load float, ptr %"R9_Float32"
  %"fmul.112" = fmul float %".2105", %".2106"
  store float %"fmul.112", ptr %"R36_Float32"
  ; FFMA R15, R36, R35, R15
  %".2109" = load float, ptr %"R36_Float32"
  %".2110" = load float, ptr %"R35_Float32"
  %".2111" = load float, ptr %"R15_Float32"
  %"fmul.113" = fmul float %".2109", %".2110"
  %"fadd.98" = fadd float %"fmul.113", %".2111"
  store float %"fadd.98", ptr %"R15_Float32"
  ; FMUL R38, R38, R9
  %".2114" = load float, ptr %"R38_Float32"
  %".2115" = load float, ptr %"R9_Float32"
  %"fmul.114" = fmul float %".2114", %".2115"
  store float %"fmul.114", ptr %"R38_Float32"
  ; FFMA R15, R38, R37, R15
  %".2118" = load float, ptr %"R38_Float32"
  %".2119" = load float, ptr %"R37_Float32"
  %".2120" = load float, ptr %"R15_Float32"
  %"fmul.115" = fmul float %".2118", %".2119"
  %"fadd.99" = fadd float %"fmul.115", %".2120"
  store float %"fadd.99", ptr %"R15_Float32"
  ; FMUL R40, R40, R9
  %".2123" = load float, ptr %"R40_Float32"
  %".2124" = load float, ptr %"R9_Float32"
  %"fmul.116" = fmul float %".2123", %".2124"
  store float %"fmul.116", ptr %"R40_Float32"
  ; FFMA R15, R40, R39, R15
  %".2127" = load float, ptr %"R40_Float32"
  %".2128" = load float, ptr %"R39_Float32"
  %".2129" = load float, ptr %"R15_Float32"
  %"fmul.117" = fmul float %".2127", %".2128"
  %"fadd.100" = fadd float %"fmul.117", %".2129"
  store float %"fadd.100", ptr %"R15_Float32"
  ; FMUL R42, R42, R9.reuse
  %".2132" = load float, ptr %"R42_Float32"
  %".2133" = load float, ptr %"R9_Float32"
  %"fmul.118" = fmul float %".2132", %".2133"
  store float %"fmul.118", ptr %"R42_Float32"
  ; FMUL R44, R44, R9
  %".2136" = load float, ptr %"R44_Float32"
  %".2137" = load float, ptr %"R9_Float32"
  %"fmul.119" = fmul float %".2136", %".2137"
  store float %"fmul.119", ptr %"R44_Float32"
  ; FFMA R15, R42, R41, R15
  %".2140" = load float, ptr %"R42_Float32"
  %".2141" = load float, ptr %"R41_Float32"
  %".2142" = load float, ptr %"R15_Float32"
  %"fmul.120" = fmul float %".2140", %".2141"
  %"fadd.101" = fadd float %"fmul.120", %".2142"
  store float %"fadd.101", ptr %"R15_Float32"
  ; FFMA R8, R44, R43, R15
  %".2145" = load float, ptr %"R44_Float32"
  %".2146" = load float, ptr %"R43_Float32"
  %".2147" = load float, ptr %"R15_Float32"
  %"fmul.121" = fmul float %".2145", %".2146"
  %"fadd.102" = fadd float %"fmul.121", %".2147"
  store float %"fadd.102", ptr %"R8_Float32"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".2150" = load i32, ptr %"R23_Int32"
  %".2151" = load i1, ptr %"PT_Bool"
  %"cmp.21" = icmp ne i32 %".2150", 0
  %".2152" = or i1 %"cmp.21", %".2151"
  ; @!P0 BRA `(.L_x_11)
  %".2154" = load i1, ptr %"P0_Bool"
  %".2155" = icmp eq i1 %".2154", 1
  br i1 %".2155", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13_Int32"
  ; IADD3 R12, R3, R22, RZ
  %".2160" = load i32, ptr %"R3_Int32"
  %".2161" = load i32, ptr %"R22_Int32"
  %"add.134" = add i32 %".2160", %".2161"
  %"add.135" = add i32 %"add.134", 0
  store i32 %"add.135", ptr %"R12_Int32"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".2164" = load i32, ptr %"R22_Int32"
  %".2165" = load i32, ptr %"R13_Int32"
  %"mul.48" = mul i32 %".2164", %".2165"
  %"add.136" = add i32 %"mul.48", %"Arg_3"
  store i32 %"add.136", ptr %"R10_Int32"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2168" = load i32, ptr %"R12_Int32"
  %".2169" = load i32, ptr %"R13_Int32"
  %"mul.49" = mul i32 %".2168", %".2169"
  %"add.137" = add i32 %"mul.49", %"Arg_4"
  store i32 %"add.137", ptr %"R12_Int32"
  ; LDG.E.SYS R14, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2172" = load ptr, ptr %"R10_Float32_PTR"
  %".2173" = ptrtoint ptr %".2172" to i64
  %".2174" = add i64 %".2173", 0
  %"for_LDG.143" = inttoptr i64 %".2174" to ptr
  %".2175" = load float, ptr %"for_LDG.143"
  store float %".2175", ptr %"R14_Float32"
  ; LDG.E.SYS R16, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2178" = load ptr, ptr %"R12_Float32_PTR"
  %".2179" = ptrtoint ptr %".2178" to i64
  %".2180" = add i64 %".2179", 0
  %"for_LDG.144" = inttoptr i64 %".2180" to ptr
  %".2181" = load float, ptr %"for_LDG.144"
  store float %".2181", ptr %"R16_Float32"
  ; LDG.E.SYS R18, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2184" = load ptr, ptr %"R10_Float32_PTR"
  %".2185" = ptrtoint ptr %".2184" to i64
  %".2186" = add i64 %".2185", 4
  %"for_LDG.145" = inttoptr i64 %".2186" to ptr
  %".2187" = load float, ptr %"for_LDG.145"
  store float %".2187", ptr %"R18_Float32"
  ; LDG.E.SYS R17, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2190" = load ptr, ptr %"R12_Float32_PTR"
  %".2191" = ptrtoint ptr %".2190" to i64
  %".2192" = add i64 %".2191", 4
  %"for_LDG.146" = inttoptr i64 %".2192" to ptr
  %".2193" = load float, ptr %"for_LDG.146"
  store float %".2193", ptr %"R17_Float32"
  ; LDG.E.SYS R24, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2196" = load ptr, ptr %"R10_Float32_PTR"
  %".2197" = ptrtoint ptr %".2196" to i64
  %".2198" = add i64 %".2197", 8
  %"for_LDG.147" = inttoptr i64 %".2198" to ptr
  %".2199" = load float, ptr %"for_LDG.147"
  store float %".2199", ptr %"R24_Float32"
  ; LDG.E.SYS R19, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2202" = load ptr, ptr %"R12_Float32_PTR"
  %".2203" = ptrtoint ptr %".2202" to i64
  %".2204" = add i64 %".2203", 8
  %"for_LDG.148" = inttoptr i64 %".2204" to ptr
  %".2205" = load float, ptr %"for_LDG.148"
  store float %".2205", ptr %"R19_Float32"
  ; LDG.E.SYS R34, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2208" = load ptr, ptr %"R10_Float32_PTR"
  %".2209" = ptrtoint ptr %".2208" to i64
  %".2210" = add i64 %".2209", 12
  %"for_LDG.149" = inttoptr i64 %".2210" to ptr
  %".2211" = load float, ptr %"for_LDG.149"
  store float %".2211", ptr %"R34_Float32"
  ; LDG.E.SYS R21, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2214" = load ptr, ptr %"R12_Float32_PTR"
  %".2215" = ptrtoint ptr %".2214" to i64
  %".2216" = add i64 %".2215", 12
  %"for_LDG.150" = inttoptr i64 %".2216" to ptr
  %".2217" = load float, ptr %"for_LDG.150"
  store float %".2217", ptr %"R21_Float32"
  ; IADD3 R23, R23, -0x4, RZ
  %".2220" = load i32, ptr %"R23_Int32"
  %"add.138" = add i32 %".2220", -4
  %"add.139" = add i32 %"add.138", 0
  store i32 %"add.139", ptr %"R23_Int32"
  ; IADD3 R22, R22, 0x4, RZ
  %".2223" = load i32, ptr %"R22_Int32"
  %"add.140" = add i32 %".2223", 4
  %"add.141" = add i32 %"add.140", 0
  store i32 %"add.141", ptr %"R22_Int32"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".2226" = load i32, ptr %"R23_Int32"
  %".2227" = load i1, ptr %"PT_Bool"
  %"cmp.22" = icmp ne i32 %".2226", 0
  %".2228" = and i1 %"cmp.22", %".2227"
  ; FMUL R15, R14, R9
  %".2230" = load float, ptr %"R14_Float32"
  %".2231" = load float, ptr %"R9_Float32"
  %"fmul.122" = fmul float %".2230", %".2231"
  store float %"fmul.122", ptr %"R15_Float32"
  ; FFMA R15, R15, R16, R8
  %".2234" = load float, ptr %"R15_Float32"
  %".2235" = load float, ptr %"R16_Float32"
  %".2236" = load float, ptr %"R8_Float32"
  %"fmul.123" = fmul float %".2234", %".2235"
  %"fadd.103" = fadd float %"fmul.123", %".2236"
  store float %"fadd.103", ptr %"R15_Float32"
  ; FMUL R18, R18, R9
  %".2239" = load float, ptr %"R18_Float32"
  %".2240" = load float, ptr %"R9_Float32"
  %"fmul.124" = fmul float %".2239", %".2240"
  store float %"fmul.124", ptr %"R18_Float32"
  ; FFMA R15, R18, R17, R15
  %".2243" = load float, ptr %"R18_Float32"
  %".2244" = load float, ptr %"R17_Float32"
  %".2245" = load float, ptr %"R15_Float32"
  %"fmul.125" = fmul float %".2243", %".2244"
  %"fadd.104" = fadd float %"fmul.125", %".2245"
  store float %"fadd.104", ptr %"R15_Float32"
  ; FMUL R24, R24, R9
  %".2248" = load float, ptr %"R24_Float32"
  %".2249" = load float, ptr %"R9_Float32"
  %"fmul.126" = fmul float %".2248", %".2249"
  store float %"fmul.126", ptr %"R24_Float32"
  ; FFMA R15, R24, R19, R15
  %".2252" = load float, ptr %"R24_Float32"
  %".2253" = load float, ptr %"R19_Float32"
  %".2254" = load float, ptr %"R15_Float32"
  %"fmul.127" = fmul float %".2252", %".2253"
  %"fadd.105" = fadd float %"fmul.127", %".2254"
  store float %"fadd.105", ptr %"R15_Float32"
  ; FMUL R34, R34, R9
  %".2257" = load float, ptr %"R34_Float32"
  %".2258" = load float, ptr %"R9_Float32"
  %"fmul.128" = fmul float %".2257", %".2258"
  store float %"fmul.128", ptr %"R34_Float32"
  ; FFMA R8, R34, R21, R15
  %".2261" = load float, ptr %"R34_Float32"
  %".2262" = load float, ptr %"R21_Float32"
  %".2263" = load float, ptr %"R15_Float32"
  %"fmul.129" = fmul float %".2261", %".2262"
  %"fadd.106" = fadd float %"fmul.129", %".2263"
  store float %"fadd.106", ptr %"R8_Float32"
  ; @P0 BRA `(.L_x_12)
  %".2266" = load i1, ptr %"P0_Bool"
  %".2267" = icmp ne i1 %".2266", 1
  br i1 %".2267", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".2270" = load i32, ptr %"R4_Int32"
  %".2271" = load i1, ptr %"PT_Bool"
  %"cmp.23" = icmp ne i32 %".2270", 0
  %".2272" = and i1 %"cmp.23", %".2271"
  ; @!P0 BRA `(.L_x_10)
  %".2274" = load i1, ptr %"P0_Bool"
  %".2275" = icmp eq i1 %".2274", 1
  br i1 %".2275", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11_Int32"
  ; IADD3 R10, R3, R22, RZ
  %".2280" = load i32, ptr %"R3_Int32"
  %".2281" = load i32, ptr %"R22_Int32"
  %"add.142" = add i32 %".2280", %".2281"
  %"add.143" = add i32 %"add.142", 0
  store i32 %"add.143", ptr %"R10_Int32"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".2284" = load i32, ptr %"R22_Int32"
  %".2285" = load i32, ptr %"R11_Int32"
  %"mul.50" = mul i32 %".2284", %".2285"
  %"add.144" = add i32 %"mul.50", %"Arg_3"
  store i32 %"add.144", ptr %"R22_Int32"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".2288" = load i32, ptr %"R10_Int32"
  %".2289" = load i32, ptr %"R11_Int32"
  %"mul.51" = mul i32 %".2288", %".2289"
  %"add.145" = add i32 %"mul.51", %"Arg_4"
  store i32 %"add.145", ptr %"R10_Int32"
  ; LDG.E.SYS R12, [R22]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".2292" = load ptr, ptr %"R22_Float32_PTR"
  %".2293" = ptrtoint ptr %".2292" to i64
  %".2294" = add i64 %".2293", 0
  %"for_LDG.151" = inttoptr i64 %".2294" to ptr
  %".2295" = load float, ptr %"for_LDG.151"
  store float %".2295", ptr %"R12_Float32"
  ; LDG.E.SYS R14, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2298" = load ptr, ptr %"R10_Float32_PTR"
  %".2299" = ptrtoint ptr %".2298" to i64
  %".2300" = add i64 %".2299", 0
  %"for_LDG.152" = inttoptr i64 %".2300" to ptr
  %".2301" = load float, ptr %"for_LDG.152"
  store float %".2301", ptr %"R14_Float32"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".2304" = load i32, ptr %"R4_Int32"
  %".2305" = load i1, ptr %"PT_Bool"
  %"cmp.24" = icmp ne i32 %".2304", 1
  %".2306" = and i1 %"cmp.24", %".2305"
  ; FMUL R13, R12, R9
  %".2308" = load float, ptr %"R12_Float32"
  %".2309" = load float, ptr %"R9_Float32"
  %"fmul.130" = fmul float %".2308", %".2309"
  store float %"fmul.130", ptr %"R13_Float32"
  ; FFMA R8, R13, R14, R8
  %".2312" = load float, ptr %"R13_Float32"
  %".2313" = load float, ptr %"R14_Float32"
  %".2314" = load float, ptr %"R8_Float32"
  %"fmul.131" = fmul float %".2312", %".2313"
  %"fadd.107" = fadd float %"fmul.131", %".2314"
  store float %"fadd.107", ptr %"R8_Float32"
  ; @!P0 BRA `(.L_x_10)
  %".2317" = load i1, ptr %"P0_Bool"
  %".2318" = icmp eq i1 %".2317", 1
  br i1 %".2318", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".2321" = load i32, ptr %"R4_Int32"
  %".2322" = load i1, ptr %"PT_Bool"
  %"cmp.25" = icmp ne i32 %".2321", 2
  %".2323" = and i1 %"cmp.25", %".2322"
  ; LDG.E.SYS R12, [R22+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".2325" = load ptr, ptr %"R22_Float32_PTR"
  %".2326" = ptrtoint ptr %".2325" to i64
  %".2327" = add i64 %".2326", 4
  %"for_LDG.153" = inttoptr i64 %".2327" to ptr
  %".2328" = load float, ptr %"for_LDG.153"
  store float %".2328", ptr %"R12_Float32"
  ; LDG.E.SYS R14, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2331" = load ptr, ptr %"R10_Float32_PTR"
  %".2332" = ptrtoint ptr %".2331" to i64
  %".2333" = add i64 %".2332", 4
  %"for_LDG.154" = inttoptr i64 %".2333" to ptr
  %".2334" = load float, ptr %"for_LDG.154"
  store float %".2334", ptr %"R14_Float32"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".2337" = load i1, ptr %"P0_Bool"
  %".2338" = icmp ne i1 %".2337", 1
  br i1 %".2338", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".2341" = load ptr, ptr %"R22_Float32_PTR"
  %".2342" = ptrtoint ptr %".2341" to i64
  %".2343" = add i64 %".2342", 8
  %"for_LDG.155" = inttoptr i64 %".2343" to ptr
  %".2344" = load float, ptr %"for_LDG.155"
  store float %".2344", ptr %"R16_Float32"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".2349" = load i1, ptr %"P0_Bool"
  %".2350" = icmp ne i1 %".2349", 1
  br i1 %".2350", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2353" = load ptr, ptr %"R10_Float32_PTR"
  %".2354" = ptrtoint ptr %".2353" to i64
  %".2355" = add i64 %".2354", 8
  %"for_LDG.156" = inttoptr i64 %".2355" to ptr
  %".2356" = load float, ptr %"for_LDG.156"
  store float %".2356", ptr %"R15_Float32"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %".2361" = load float, ptr %"R12_Float32"
  %".2362" = load float, ptr %"R9_Float32"
  %"fmul.132" = fmul float %".2361", %".2362"
  store float %"fmul.132", ptr %"R13_Float32"
  ; FFMA R8, R13, R14, R8
  %".2365" = load float, ptr %"R13_Float32"
  %".2366" = load float, ptr %"R14_Float32"
  %".2367" = load float, ptr %"R8_Float32"
  %"fmul.133" = fmul float %".2365", %".2366"
  %"fadd.108" = fadd float %"fmul.133", %".2367"
  store float %"fadd.108", ptr %"R8_Float32"
  ; @P0 FMUL R9, R16, R9
  %".2370" = load i1, ptr %"P0_Bool"
  %".2371" = icmp ne i1 %".2370", 1
  br i1 %".2371", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %".2374" = load float, ptr %"R16_Float32"
  %".2375" = load float, ptr %"R9_Float32"
  %"fmul.134" = fmul float %".2374", %".2375"
  store float %"fmul.134", ptr %"R9_Float32"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".2380" = load i1, ptr %"P0_Bool"
  %".2381" = icmp ne i1 %".2380", 1
  br i1 %".2381", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %".2384" = load float, ptr %"R9_Float32"
  %".2385" = load float, ptr %"R15_Float32"
  %".2386" = load float, ptr %"R8_Float32"
  %"fmul.135" = fmul float %".2384", %".2385"
  %"fadd.109" = fadd float %"fmul.135", %".2386"
  store float %"fadd.109", ptr %"R8_Float32"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R30_Float32_PTR", ptr %"R30_Int32", i32 4, i1 0)
  %".2391" = load ptr, ptr %"R30_Float32_PTR"
  %".2392" = ptrtoint ptr %".2391" to i64
  %".2393" = add i64 %".2392", 0
  %"for_LDG.157" = inttoptr i64 %".2393" to ptr
  %".2394" = load float, ptr %"for_LDG.157"
  store float %".2394", ptr %"R9_Float32"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %".2399" = load float, ptr %"R9_Float32"
  %".2400" = load float, ptr %"R8_Float32"
  %"fadd.110" = fadd float %".2399", %".2400"
  store float %"fadd.110", ptr %"R12_Float32"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %".2403" = load float, ptr %"R12_Float32"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".2403")
  %".2404" = load i1, ptr %"PT_Bool"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".2405" = and i1 %"fcmp_unordered", %".2404"
  ; @!P0 BRA `(.L_x_17)
  %".2407" = load i1, ptr %"P0_Bool"
  %".2408" = icmp eq i1 %".2407", 1
  br i1 %".2408", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %".2411" = load float, ptr %"R12_Float32"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".2411")
  %"fmul.136" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  store float %"fmul.136", ptr %"R8_Float32"
  ; MOV R9, 0x3f800000
  store float 0x41cfc00000000000, ptr %"R9_Float32"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %".2416" = load float, ptr %"R12_Float32"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".2416")
  %".2417" = load i1, ptr %"PT_Bool"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".2418" = and i1 %"fcmp_unordered.1", %".2417"
  ; MUFU.EX2 R8, R8
  %".2420" = load float, ptr %"R8_Float32"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".2420")
  store float %"llvm_exp2_f32_result.2", ptr %"R8_Float32"
  ; FADD R10, R8, 1
  %".2423" = load float, ptr %"R8_Float32"
  %"fadd.111" = fadd float %".2423", 0x3ff0000000000000
  store float %"fadd.111", ptr %"R10_Float32"
  ; MUFU.RCP R10, R10
  %".2426" = load float, ptr %"R10_Float32"
  %".2427" = fdiv float 0x3ff0000000000000, %".2426"
  store float %".2427", ptr %"R10_Float32"
  ; FFMA R9, R10, -2, R9
  %".2430" = load float, ptr %"R10_Float32"
  %".2431" = load float, ptr %"R9_Float32"
  %"fmul.137" = fmul float %".2430", 0xc000000000000000
  %"fadd.112" = fadd float %"fmul.137", %".2431"
  store float %"fadd.112", ptr %"R9_Float32"
  ; FSEL R9, R9, 1, !P0
  %".2434" = load float, ptr %"R9_Float32"
  %".2435" = load i1, ptr %"P0_Bool"
  %".2436" = icmp eq i1 %".2435", 1
  %"fsel" = select  i1 %".2436", float %".2434", float 0x3ff0000000000000
  store float %"fsel", ptr %"R9_Float32"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".2439" = load float, ptr %"R9_Float32"
  %".2440" = load float, ptr %"R12_Float32"
  %".2441" = or float %".2439", 0x41e0000000000000
  %".2442" = or float %".2439", %".2440"
  %".2443" = and float %".2441", %".2442"
  store float %".2443", ptr %"R9_Float32"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  store float 0x41ce407840000000, ptr %"R9_Float32"
  ; FMUL R8, R12, R12
  %".2450" = load float, ptr %"R12_Float32"
  %".2451" = load float, ptr %"R12_Float32"
  %"fmul.138" = fmul float %".2450", %".2451"
  store float %"fmul.138", ptr %"R8_Float32"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".2454" = load float, ptr %"R8_Float32"
  %".2455" = load float, ptr %"R9_Float32"
  %"fmul.139" = fmul float %".2454", %".2455"
  %"fadd.113" = fadd float %"fmul.139", 0xbfaac795c0000000
  store float %"fadd.113", ptr %"R9_Float32"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".2458" = load float, ptr %"R8_Float32"
  %".2459" = load float, ptr %"R9_Float32"
  %"fmul.140" = fmul float %".2458", %".2459"
  %"fadd.114" = fadd float %"fmul.140", 0x3fc10b2820000000
  store float %"fadd.114", ptr %"R9_Float32"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".2462" = load float, ptr %"R8_Float32"
  %".2463" = load float, ptr %"R9_Float32"
  %"fmul.141" = fmul float %".2462", %".2463"
  %"fadd.115" = fadd float %"fmul.141", 0xbfd5553da0000000
  store float %"fadd.115", ptr %"R9_Float32"
  ; FFMA R9, R8, R9, RZ
  %".2466" = load float, ptr %"R8_Float32"
  %".2467" = load float, ptr %"R9_Float32"
  %"fmul.142" = fmul float %".2466", %".2467"
  %"fadd.116" = fadd float %"fmul.142",              0x0
  store float %"fadd.116", ptr %"R9_Float32"
  ; FFMA R9, R12, R9, R12
  %".2470" = load float, ptr %"R12_Float32"
  %".2471" = load float, ptr %"R9_Float32"
  %".2472" = load float, ptr %"R12_Float32"
  %"fmul.143" = fmul float %".2470", %".2471"
  %"fadd.117" = fadd float %"fmul.143", %".2472"
  store float %"fadd.117", ptr %"R9_Float32"
.L_x_18:
  ; BSYNC B0
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Int32", ptr %"R20_Float32", i32 4, i1 0)
  %".2476" = load i32, ptr %"R20_Int32"
  %"add.146" = add i32 %".2476", 25165824
  %"add.147" = add i32 %"add.146", 0
  store i32 %"add.147", ptr %"R8_Int32"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".2481" = load i32, ptr %"R8_Int32"
  %".2482" = and i32 %".2481", 2139095040
  store i32 %".2482", ptr %"R8_Int32"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".2485" = load i32, ptr %"R8_Int32"
  %".2486" = load i1, ptr %"PT_Bool"
  %"cmp.26" = icmp sgt i32 %".2485", 33554431
  %".2487" = and i1 %"cmp.26", %".2486"
  ; @P0 BRA `(.L_x_20)
  %".2489" = load i1, ptr %"P0_Bool"
  %".2490" = icmp ne i1 %".2489", 1
  br i1 %".2490", label %".L_x_20", label %".L_x_16_split_0x2170"
.L_x_16_split_0x2170:
  ; MOV R24, R20
  %".2493" = load float, ptr %"R20_Float32"
  store float %".2493", ptr %"R24_Float32"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_NOTYPE", ptr %"R10_Int32", i32 4, i1 0)
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.1" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R8, R22
  %".2499" = load i32, ptr %"R22_Int32"
  store i32 %".2499", ptr %"R8_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32", ptr %"R8_Int32", i32 4, i1 0)
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".2504" = load float, ptr %"R20_Float32"
  %".2505" = fdiv float 0x3ff0000000000000, %".2504"
  store float %".2505", ptr %"R11_Float32"
  ; FFMA R8, R20, R11, -1
  %".2508" = load float, ptr %"R20_Float32"
  %".2509" = load float, ptr %"R11_Float32"
  %"fmul.144" = fmul float %".2508", %".2509"
  %"fadd.118" = fadd float %"fmul.144", 0xbff0000000000000
  store float %"fadd.118", ptr %"R8_Float32"
  ; FADD.FTZ R8, -R8, -RZ
  %".2512" = load float, ptr %"R8_Float32"
  %".2513" = sub float              0x0, %".2512"
  %"fadd.119" = fadd float %".2513",              0x0
  store float %"fadd.119", ptr %"R8_Float32"
  ; FFMA R8, R11, R8, R11
  %".2516" = load float, ptr %"R11_Float32"
  %".2517" = load float, ptr %"R8_Float32"
  %".2518" = load float, ptr %"R11_Float32"
  %"fmul.145" = fmul float %".2516", %".2517"
  %"fadd.120" = fadd float %"fmul.145", %".2518"
  store float %"fadd.120", ptr %"R8_Float32"
.L_x_21:
  ; BSYNC B0
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R28_Float32_PTR", ptr %"R28_Int32", i32 4, i1 0)
  %".2522" = load ptr, ptr %"R28_Float32_PTR"
  %".2523" = ptrtoint ptr %".2522" to i64
  %".2524" = add i64 %".2523", 0
  %"for_LDG.158" = inttoptr i64 %".2524" to ptr
  %".2525" = load float, ptr %"for_LDG.158"
  store float %".2525", ptr %"R11_Float32"
  ; FADD R10, -R8, 1
  %".2528" = load float, ptr %"R8_Float32"
  %".2529" = sub float              0x0, %".2528"
  %"fadd.121" = fadd float %".2529", 0x3ff0000000000000
  store float %"fadd.121", ptr %"R10_Float32"
  ; FMUL R11, R11, R8
  %".2532" = load float, ptr %"R11_Float32"
  %".2533" = load float, ptr %"R8_Float32"
  %"fmul.146" = fmul float %".2532", %".2533"
  store float %"fmul.146", ptr %"R11_Float32"
  ; FFMA R9, R10, R9, R11
  %".2536" = load float, ptr %"R10_Float32"
  %".2537" = load float, ptr %"R9_Float32"
  %".2538" = load float, ptr %"R11_Float32"
  %"fmul.147" = fmul float %".2536", %".2537"
  %"fadd.122" = fadd float %"fmul.147", %".2538"
  store float %"fadd.122", ptr %"R9_Float32"
  ; STG.E.SYS [R28], R9
  %".2541" = load float, ptr %"R9_Float32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R28_Float32_PTR", ptr %"R28_Int32", i32 4, i1 0)
  %".2542" = load ptr, ptr %"R28_Float32_PTR"
  %".2543" = ptrtoint ptr %".2542" to i64
  %".2544" = add i64 %".2543", 0
  %"for_STG" = inttoptr i64 %".2544" to ptr
  store float %".2541", ptr %"for_STG"
  ; @!P3 BRA `(.L_x_22)
  %".2547" = load i1, ptr %"P3_Bool"
  %".2548" = icmp eq i1 %".2547", 1
  br i1 %".2548", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18_Int32"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R15_NOTYPE", ptr %"R15_Float32", i32 4, i1 0)
  %".2555" = load i32, ptr %"R15_NOTYPE"
  %".2556" = and i32 %".2555", 3
  store i32 %".2556", ptr %"R15_Int32"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".2559" = load i32, ptr %"R5_Int32"
  %".2560" = and i32 %".2559", 3
  store i32 %".2560", ptr %"R48_Int32"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".2563" = load i32, ptr %"R18_Int32"
  %".2564" = sub i32 0, %".2563"
  %"add.148" = add i32 %".2564", %"Arg_6"
  %"add.149" = add i32 %"add.148", 0
  store i32 %"add.149", ptr %"R49_Int32"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".2567" = icmp ult i32 31, 32
  %"SHF_min.2" = select  i1 %".2567", i32 31, i32 32
  %".2568" = load i32, ptr %"R5_Int32"
  %"zext.6" = zext i32 %".2568" to i64
  %"zext.7" = zext i32 0 to i64
  %"zext.8" = zext i32 31 to i64
  %"shl.10" = shl i64 %"zext.6", 32
  %"or.2" = or i64 %"shl.10", %"zext.7"
  %"ashr" = ashr i64 %"or.2", %"zext.8"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.2" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.2", ptr %"R16_Int32"
  ; MOV R17, RZ
  %".2571" = load i32, ptr %"RZ_Int32"
  store i32 %".2571", ptr %"R17_Int32"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".2574" = load i32, ptr %"R18_Int32"
  %".2575" = sub i32 0, %".2574"
  %"add.150" = add i32 %".2575", %"Arg_7"
  %"add.151" = add i32 %"add.150", 0
  store i32 %"add.151", ptr %"R18_Int32"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".2578" = load i32, ptr %"R15_Int32"
  %".2579" = sub i32 0, %".2578"
  %"add.152" = add i32 %".2579", %"Arg_6"
  %"add.153" = add i32 %"add.152", 0
  store i32 %"add.153", ptr %"R19_Int32"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".2582" = load i32, ptr %"R48_Int32"
  %".2583" = sub i32 0, %".2582"
  %"add.154" = add i32 %".2583", %"Arg_7"
  %"add.155" = add i32 %"add.154", 0
  store i32 %"add.155", ptr %"R20_Int32"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".2586" = load i32, ptr %"R49_Int32"
  %".2587" = load i1, ptr %"PT_Bool"
  %"cmp.27" = icmp sge i32 %".2586", 3
  %".2588" = and i1 %"cmp.27", %".2587"
  ; MOV R13, R17
  %".2590" = load i32, ptr %"R17_Int32"
  store i32 %".2590", ptr %"R13_Int32"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R4_Int32"
  ; IADD3 R17, R17, 0x1, RZ
  %".2595" = load i32, ptr %"R17_Int32"
  %"add.156" = add i32 %".2595", 1
  %"add.157" = add i32 %"add.156", 0
  store i32 %"add.157", ptr %"R17_Int32"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".2598" = load i32, ptr %"R4_Int32"
  %".2599" = load i1, ptr %"PT_Bool"
  %"cmp.28" = icmp sge i32 %".2598", 1
  %".2600" = and i1 %"cmp.28", %".2599"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".2602" = load i32, ptr %"R15_Int32"
  %".2603" = load i1, ptr %"PT_Bool"
  %"cmp.29" = icmp ne i32 %".2602", 0
  %".2604" = and i1 %"cmp.29", %".2603"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".2606" = load i32, ptr %"R17_Int32"
  %".2607" = load i1, ptr %"PT_Bool"
  %"cmp.30" = icmp sge i32 %".2606", %"Arg_8"
  %".2608" = and i1 %"cmp.30", %".2607"
  ; MOV R21, RZ
  %".2610" = load float, ptr %"RZ_Float32"
  store float %".2610", ptr %"R21_Float32"
  ; MOV R22, RZ
  %".2613" = load i32, ptr %"RZ_Int32"
  store i32 %".2613", ptr %"R22_Int32"
  ; MOV R56, RZ
  %".2616" = load float, ptr %"RZ_Float32"
  store float %".2616", ptr %"R56_Float32"
  ; MOV R44, RZ
  %".2619" = load float, ptr %"RZ_Float32"
  store float %".2619", ptr %"R44_Float32"
  ; @!P0 BRA `(.L_x_23)
  %".2622" = load i1, ptr %"P0_Bool"
  %".2623" = icmp eq i1 %".2622", 1
  br i1 %".2623", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R25_Int32"
  ; MOV R21, RZ
  %".2628" = load float, ptr %"RZ_Float32"
  store float %".2628", ptr %"R21_Float32"
  ; MOV R22, RZ
  %".2631" = load i32, ptr %"RZ_Int32"
  store i32 %".2631", ptr %"R22_Int32"
  ; MOV R12, R19
  %".2634" = load i32, ptr %"R19_Int32"
  store i32 %".2634", ptr %"R12_Int32"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".2637" = icmp ult i32 2, 64
  %"SHF_min.3" = select  i1 %".2637", i32 2, i32 64
  %".2638" = load i32, ptr %"R16_Int32"
  %".2639" = load i32, ptr %"R25_Int32"
  %"zext.9" = zext i32 %".2638" to i64
  %"zext.10" = zext i32 %".2639" to i64
  %"zext.11" = zext i32 2 to i64
  %"shl.11" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.11", %"zext.10"
  %"shl.12" = shl i64 %"or.3", %"zext.11"
  %"lshr" = lshr i64 %"shl.12", 32
  %"trunc32.3" = trunc i64 %"lshr" to i32
  store i32 %"trunc32.3", ptr %"R23_Int32"
.L_x_24:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7_Int32"
  ; IMAD R6, R14, c[0x0][0x180], R22.reuse
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Int32", ptr %"R14_Float32", i32 4, i1 0)
  %".2644" = load i32, ptr %"R14_Int32"
  %".2645" = load i32, ptr %"R22_Int32"
  %"mul.52" = mul i32 %".2644", %"Arg_6"
  %"add.158" = add i32 %"mul.52", %".2645"
  store i32 %"add.158", ptr %"R6_Int32"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9_Int32"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".2650" = load i32, ptr %"R13_Int32"
  %".2651" = load i32, ptr %"R22_Int32"
  %"mul.53" = mul i32 %".2650", %"Arg_6"
  %"add.159" = add i32 %"mul.53", %".2651"
  store i32 %"add.159", ptr %"R10_Int32"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".2654" = load i32, ptr %"R6_Int32"
  %".2655" = load i32, ptr %"R7_Int32"
  %"mul.54" = mul i32 %".2654", %".2655"
  %"add.160" = add i32 %"mul.54", %"Arg_4"
  store i32 %"add.160", ptr %"R4_Int32"
  ; LEA R6, R9, R6, 0x1
  %".2658" = load i32, ptr %"R9_Int32"
  %".2659" = load i32, ptr %"R6_Int32"
  %"shl.13" = shl i32 %".2658", 1
  %"add.161" = add i32 %"shl.13", %".2659"
  store i32 %"add.161", ptr %"R6_Int32"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".2662" = load i32, ptr %"R10_Int32"
  %".2663" = load i32, ptr %"R7_Int32"
  %"mul.55" = mul i32 %".2662", %".2663"
  %"add.162" = add i32 %"mul.55", %"Arg_2"
  store i32 %"add.162", ptr %"R10_Int32"
  ; LEA R8, P0, R25, R4, 0x2
  %".2666" = load i1, ptr %"P0_Bool"
  %".2667" = sub i1 0, %".2666"
  %".2668" = load i32, ptr %"R25_Int32"
  %".2669" = load i32, ptr %"R4_Int32"
  %".2670" = sext i1 %".2667" to i32
  %"shl.14" = shl i32 %".2670", %".2669"
  %"add.163" = add i32 %"shl.14", %".2668"
  store i32 %"add.163", ptr %"R8_Int32"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".2673" = load i32, ptr %"R6_Int32"
  %".2674" = load i32, ptr %"R7_Int32"
  %"mul.56" = mul i32 %".2673", %".2674"
  %"add.164" = add i32 %"mul.56", %"Arg_4"
  store i32 %"add.164", ptr %"R6_Int32"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".2677" = load i32, ptr %"R5_Int32"
  %".2678" = load i32, ptr %"R23_Int32"
  %".2679" = load i1, ptr %"P0_Bool"
  %".2680" = sub i1 0, %".2679"
  %".2681" = zext i1 %".2680" to i32
  %"add.165" = add i32 %".2677", %".2678"
  %"add.166" = add i32 %"add.165", 0
  %"add.167" = add i32 %"add.166", %".2681"
  store i32 %"add.167", ptr %"R9_Int32"
  ; LDG.E.SYS R35, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2684" = load ptr, ptr %"R4_Float32_PTR"
  %".2685" = ptrtoint ptr %".2684" to i64
  %".2686" = add i64 %".2685", 0
  %"for_LDG.159" = inttoptr i64 %".2686" to ptr
  %".2687" = load float, ptr %"for_LDG.159"
  store float %".2687", ptr %"R35_Float32"
  ; LDG.E.SYS R24, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2690" = load ptr, ptr %"R10_Float32_PTR"
  %".2691" = ptrtoint ptr %".2690" to i64
  %".2692" = add i64 %".2691", 0
  %"for_LDG.160" = inttoptr i64 %".2692" to ptr
  %".2693" = load float, ptr %"for_LDG.160"
  store float %".2693", ptr %"R24_Float32"
  ; LDG.E.SYS R37, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2696" = load ptr, ptr %"R8_Float32_PTR"
  %".2697" = ptrtoint ptr %".2696" to i64
  %".2698" = add i64 %".2697", 0
  %"for_LDG.161" = inttoptr i64 %".2698" to ptr
  %".2699" = load float, ptr %"for_LDG.161"
  store float %".2699", ptr %"R37_Float32"
  ; LDG.E.SYS R34, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2702" = load ptr, ptr %"R6_Float32_PTR"
  %".2703" = ptrtoint ptr %".2702" to i64
  %".2704" = add i64 %".2703", 0
  %"for_LDG.162" = inttoptr i64 %".2704" to ptr
  %".2705" = load float, ptr %"for_LDG.162"
  store float %".2705", ptr %"R34_Float32"
  ; LDG.E.SYS R36, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2708" = load ptr, ptr %"R4_Float32_PTR"
  %".2709" = ptrtoint ptr %".2708" to i64
  %".2710" = add i64 %".2709", 4
  %"for_LDG.163" = inttoptr i64 %".2710" to ptr
  %".2711" = load float, ptr %"for_LDG.163"
  store float %".2711", ptr %"R36_Float32"
  ; LDG.E.SYS R38, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2714" = load ptr, ptr %"R10_Float32_PTR"
  %".2715" = ptrtoint ptr %".2714" to i64
  %".2716" = add i64 %".2715", 4
  %"for_LDG.164" = inttoptr i64 %".2716" to ptr
  %".2717" = load float, ptr %"for_LDG.164"
  store float %".2717", ptr %"R38_Float32"
  ; LDG.E.SYS R39, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2720" = load ptr, ptr %"R8_Float32_PTR"
  %".2721" = ptrtoint ptr %".2720" to i64
  %".2722" = add i64 %".2721", 4
  %"for_LDG.165" = inttoptr i64 %".2722" to ptr
  %".2723" = load float, ptr %"for_LDG.165"
  store float %".2723", ptr %"R39_Float32"
  ; LDG.E.SYS R41, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2726" = load ptr, ptr %"R6_Float32_PTR"
  %".2727" = ptrtoint ptr %".2726" to i64
  %".2728" = add i64 %".2727", 4
  %"for_LDG.166" = inttoptr i64 %".2728" to ptr
  %".2729" = load float, ptr %"for_LDG.166"
  store float %".2729", ptr %"R41_Float32"
  ; LDG.E.SYS R42, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2732" = load ptr, ptr %"R10_Float32_PTR"
  %".2733" = ptrtoint ptr %".2732" to i64
  %".2734" = add i64 %".2733", 8
  %"for_LDG.167" = inttoptr i64 %".2734" to ptr
  %".2735" = load float, ptr %"for_LDG.167"
  store float %".2735", ptr %"R42_Float32"
  ; LDG.E.SYS R40, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2738" = load ptr, ptr %"R4_Float32_PTR"
  %".2739" = ptrtoint ptr %".2738" to i64
  %".2740" = add i64 %".2739", 8
  %"for_LDG.168" = inttoptr i64 %".2740" to ptr
  %".2741" = load float, ptr %"for_LDG.168"
  store float %".2741", ptr %"R40_Float32"
  ; LDG.E.SYS R43, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2744" = load ptr, ptr %"R8_Float32_PTR"
  %".2745" = ptrtoint ptr %".2744" to i64
  %".2746" = add i64 %".2745", 8
  %"for_LDG.169" = inttoptr i64 %".2746" to ptr
  %".2747" = load float, ptr %"for_LDG.169"
  store float %".2747", ptr %"R43_Float32"
  ; LDG.E.SYS R45, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2750" = load ptr, ptr %"R6_Float32_PTR"
  %".2751" = ptrtoint ptr %".2750" to i64
  %".2752" = add i64 %".2751", 8
  %"for_LDG.170" = inttoptr i64 %".2752" to ptr
  %".2753" = load float, ptr %"for_LDG.170"
  store float %".2753", ptr %"R45_Float32"
  ; LDG.E.SYS R47, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2756" = load ptr, ptr %"R10_Float32_PTR"
  %".2757" = ptrtoint ptr %".2756" to i64
  %".2758" = add i64 %".2757", 12
  %"for_LDG.171" = inttoptr i64 %".2758" to ptr
  %".2759" = load float, ptr %"for_LDG.171"
  store float %".2759", ptr %"R47_Float32"
  ; LDG.E.SYS R46, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2762" = load ptr, ptr %"R4_Float32_PTR"
  %".2763" = ptrtoint ptr %".2762" to i64
  %".2764" = add i64 %".2763", 12
  %"for_LDG.172" = inttoptr i64 %".2764" to ptr
  %".2765" = load float, ptr %"for_LDG.172"
  store float %".2765", ptr %"R46_Float32"
  ; LDG.E.SYS R50, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2768" = load ptr, ptr %"R8_Float32_PTR"
  %".2769" = ptrtoint ptr %".2768" to i64
  %".2770" = add i64 %".2769", 12
  %"for_LDG.173" = inttoptr i64 %".2770" to ptr
  %".2771" = load float, ptr %"for_LDG.173"
  store float %".2771", ptr %"R50_Float32"
  ; LDG.E.SYS R51, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2774" = load ptr, ptr %"R6_Float32_PTR"
  %".2775" = ptrtoint ptr %".2774" to i64
  %".2776" = add i64 %".2775", 12
  %"for_LDG.174" = inttoptr i64 %".2776" to ptr
  %".2777" = load float, ptr %"for_LDG.174"
  store float %".2777", ptr %"R51_Float32"
  ; IADD3 R12, R12, -0x4, RZ
  %".2780" = load i32, ptr %"R12_Int32"
  %"add.168" = add i32 %".2780", -4
  %"add.169" = add i32 %"add.168", 0
  store i32 %"add.169", ptr %"R12_Int32"
  ; IADD3 R22, R22, 0x4, RZ
  %".2783" = load i32, ptr %"R22_Int32"
  %"add.170" = add i32 %".2783", 4
  %"add.171" = add i32 %"add.170", 0
  store i32 %"add.171", ptr %"R22_Int32"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".2786" = load i32, ptr %"R12_Int32"
  %".2787" = load i1, ptr %"PT_Bool"
  %"cmp.31" = icmp ne i32 %".2786", 0
  %".2788" = and i1 %"cmp.31", %".2787"
  ; FFMA R35, R35, R24, R44
  %".2790" = load float, ptr %"R35_Float32"
  %".2791" = load float, ptr %"R24_Float32"
  %".2792" = load float, ptr %"R44_Float32"
  %"fmul.148" = fmul float %".2790", %".2791"
  %"fadd.123" = fadd float %"fmul.148", %".2792"
  store float %"fadd.123", ptr %"R35_Float32"
  ; FFMA R37, R24.reuse, R37, R56
  %".2795" = load float, ptr %"R24_Float32"
  %".2796" = load float, ptr %"R37_Float32"
  %".2797" = load float, ptr %"R56_Float32"
  %"fmul.149" = fmul float %".2795", %".2796"
  %"fadd.124" = fadd float %"fmul.149", %".2797"
  store float %"fadd.124", ptr %"R37_Float32"
  ; FFMA R34, R24, R34, R21
  %".2800" = load float, ptr %"R24_Float32"
  %".2801" = load float, ptr %"R34_Float32"
  %".2802" = load float, ptr %"R21_Float32"
  %"fmul.150" = fmul float %".2800", %".2801"
  %"fadd.125" = fadd float %"fmul.150", %".2802"
  store float %"fadd.125", ptr %"R34_Float32"
  ; FFMA R35, R36, R38, R35
  %".2805" = load float, ptr %"R36_Float32"
  %".2806" = load float, ptr %"R38_Float32"
  %".2807" = load float, ptr %"R35_Float32"
  %"fmul.151" = fmul float %".2805", %".2806"
  %"fadd.126" = fadd float %"fmul.151", %".2807"
  store float %"fadd.126", ptr %"R35_Float32"
  ; FFMA R37, R38, R39, R37
  %".2810" = load float, ptr %"R38_Float32"
  %".2811" = load float, ptr %"R39_Float32"
  %".2812" = load float, ptr %"R37_Float32"
  %"fmul.152" = fmul float %".2810", %".2811"
  %"fadd.127" = fadd float %"fmul.152", %".2812"
  store float %"fadd.127", ptr %"R37_Float32"
  ; FFMA R34, R38, R41, R34
  %".2815" = load float, ptr %"R38_Float32"
  %".2816" = load float, ptr %"R41_Float32"
  %".2817" = load float, ptr %"R34_Float32"
  %"fmul.153" = fmul float %".2815", %".2816"
  %"fadd.128" = fadd float %"fmul.153", %".2817"
  store float %"fadd.128", ptr %"R34_Float32"
  ; FFMA R35, R40, R42, R35
  %".2820" = load float, ptr %"R40_Float32"
  %".2821" = load float, ptr %"R42_Float32"
  %".2822" = load float, ptr %"R35_Float32"
  %"fmul.154" = fmul float %".2820", %".2821"
  %"fadd.129" = fadd float %"fmul.154", %".2822"
  store float %"fadd.129", ptr %"R35_Float32"
  ; FFMA R37, R42.reuse, R43, R37
  %".2825" = load float, ptr %"R42_Float32"
  %".2826" = load float, ptr %"R43_Float32"
  %".2827" = load float, ptr %"R37_Float32"
  %"fmul.155" = fmul float %".2825", %".2826"
  %"fadd.130" = fadd float %"fmul.155", %".2827"
  store float %"fadd.130", ptr %"R37_Float32"
  ; FFMA R34, R42, R45, R34
  %".2830" = load float, ptr %"R42_Float32"
  %".2831" = load float, ptr %"R45_Float32"
  %".2832" = load float, ptr %"R34_Float32"
  %"fmul.156" = fmul float %".2830", %".2831"
  %"fadd.131" = fadd float %"fmul.156", %".2832"
  store float %"fadd.131", ptr %"R34_Float32"
  ; FFMA R44, R46, R47, R35
  %".2835" = load float, ptr %"R46_Float32"
  %".2836" = load float, ptr %"R47_Float32"
  %".2837" = load float, ptr %"R35_Float32"
  %"fmul.157" = fmul float %".2835", %".2836"
  %"fadd.132" = fadd float %"fmul.157", %".2837"
  store float %"fadd.132", ptr %"R44_Float32"
  ; FFMA R56, R47, R50, R37
  %".2840" = load float, ptr %"R47_Float32"
  %".2841" = load float, ptr %"R50_Float32"
  %".2842" = load float, ptr %"R37_Float32"
  %"fmul.158" = fmul float %".2840", %".2841"
  %"fadd.133" = fadd float %"fmul.158", %".2842"
  store float %"fadd.133", ptr %"R56_Float32"
  ; FFMA R21, R47, R51, R34
  %".2845" = load float, ptr %"R47_Float32"
  %".2846" = load float, ptr %"R51_Float32"
  %".2847" = load float, ptr %"R34_Float32"
  %"fmul.159" = fmul float %".2845", %".2846"
  %"fadd.134" = fadd float %"fmul.159", %".2847"
  store float %"fadd.134", ptr %"R21_Float32"
  ; @P0 BRA `(.L_x_24)
  %".2850" = load i1, ptr %"P0_Bool"
  %".2851" = icmp ne i1 %".2850", 1
  br i1 %".2851", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".2854" = load i1, ptr %"P1_Bool"
  %".2855" = icmp eq i1 %".2854", 1
  br i1 %".2855", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11_Int32"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Int32", ptr %"R14_Float32", i32 4, i1 0)
  %".2860" = load i32, ptr %"R14_Int32"
  %".2861" = load i32, ptr %"R22_Int32"
  %"mul.57" = mul i32 %".2860", %"Arg_6"
  %"add.172" = add i32 %"mul.57", %".2861"
  store i32 %"add.172", ptr %"R7_Int32"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R10_Int32"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".2866" = load i32, ptr %"R13_Int32"
  %".2867" = load i32, ptr %"R22_Int32"
  %"mul.58" = mul i32 %".2866", %"Arg_6"
  %"add.173" = add i32 %"mul.58", %".2867"
  store i32 %"add.173", ptr %"R6_Int32"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9_Int32"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".2872" = load i32, ptr %"R7_Int32"
  %".2873" = load i32, ptr %"R11_Int32"
  %"mul.59" = mul i32 %".2872", %".2873"
  %"add.174" = add i32 %"mul.59", %"Arg_4"
  store i32 %"add.174", ptr %"R4_Int32"
  ; LEA R10, R10, R7, 0x1
  %".2876" = load i32, ptr %"R10_Int32"
  %".2877" = load i32, ptr %"R7_Int32"
  %"shl.15" = shl i32 %".2876", 1
  %"add.175" = add i32 %"shl.15", %".2877"
  store i32 %"add.175", ptr %"R10_Int32"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".2880" = load i32, ptr %"R6_Int32"
  %".2881" = load i32, ptr %"R11_Int32"
  %"mul.60" = mul i32 %".2880", %".2881"
  %"add.176" = add i32 %"mul.60", %"Arg_2"
  store i32 %"add.176", ptr %"R6_Int32"
  ; LEA R8, P0, R9, R4, 0x2
  %".2884" = load i1, ptr %"P0_Bool"
  %".2885" = sub i1 0, %".2884"
  %".2886" = load i32, ptr %"R9_Int32"
  %".2887" = load i32, ptr %"R4_Int32"
  %".2888" = sext i1 %".2885" to i32
  %"shl.16" = shl i32 %".2888", %".2887"
  %"add.177" = add i32 %"shl.16", %".2886"
  store i32 %"add.177", ptr %"R8_Int32"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".2891" = load i32, ptr %"R10_Int32"
  %".2892" = load i32, ptr %"R11_Int32"
  %"mul.61" = mul i32 %".2891", %".2892"
  %"add.178" = add i32 %"mul.61", %"Arg_4"
  store i32 %"add.178", ptr %"R10_Int32"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".2895" = load i32, ptr %"R9_Int32"
  %".2896" = load i32, ptr %"R5_Int32"
  %".2897" = load i32, ptr %"R16_Int32"
  %"shl.17" = shl i32 %".2895", %".2897"
  %"add.179" = add i32 %"shl.17", %".2896"
  store i32 %"add.179", ptr %"R9_Int32"
  ; LDG.E.SYS R13, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2900" = load ptr, ptr %"R4_Float32_PTR"
  %".2901" = ptrtoint ptr %".2900" to i64
  %".2902" = add i64 %".2901", 0
  %"for_LDG.175" = inttoptr i64 %".2902" to ptr
  %".2903" = load float, ptr %"for_LDG.175"
  store float %".2903", ptr %"R13_Float32"
  ; LDG.E.SYS R12, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2906" = load ptr, ptr %"R6_Float32_PTR"
  %".2907" = ptrtoint ptr %".2906" to i64
  %".2908" = add i64 %".2907", 0
  %"for_LDG.176" = inttoptr i64 %".2908" to ptr
  %".2909" = load float, ptr %"for_LDG.176"
  store float %".2909", ptr %"R12_Float32"
  ; LDG.E.SYS R23, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2912" = load ptr, ptr %"R8_Float32_PTR"
  %".2913" = ptrtoint ptr %".2912" to i64
  %".2914" = add i64 %".2913", 0
  %"for_LDG.177" = inttoptr i64 %".2914" to ptr
  %".2915" = load float, ptr %"for_LDG.177"
  store float %".2915", ptr %"R23_Float32"
  ; LDG.E.SYS R22, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2918" = load ptr, ptr %"R10_Float32_PTR"
  %".2919" = ptrtoint ptr %".2918" to i64
  %".2920" = add i64 %".2919", 0
  %"for_LDG.178" = inttoptr i64 %".2920" to ptr
  %".2921" = load float, ptr %"for_LDG.178"
  store float %".2921", ptr %"R22_Float32"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".2924" = load i32, ptr %"R15_Int32"
  %".2925" = load i1, ptr %"PT_Bool"
  %"cmp.32" = icmp ne i32 %".2924", 1
  %".2926" = and i1 %"cmp.32", %".2925"
  ; FFMA R44, R13, R12, R44
  %".2928" = load float, ptr %"R13_Float32"
  %".2929" = load float, ptr %"R12_Float32"
  %".2930" = load float, ptr %"R44_Float32"
  %"fmul.160" = fmul float %".2928", %".2929"
  %"fadd.135" = fadd float %"fmul.160", %".2930"
  store float %"fadd.135", ptr %"R44_Float32"
  ; FFMA R56, R12.reuse, R23, R56
  %".2933" = load float, ptr %"R12_Float32"
  %".2934" = load float, ptr %"R23_Float32"
  %".2935" = load float, ptr %"R56_Float32"
  %"fmul.161" = fmul float %".2933", %".2934"
  %"fadd.136" = fadd float %"fmul.161", %".2935"
  store float %"fadd.136", ptr %"R56_Float32"
  ; FFMA R21, R12, R22, R21
  %".2938" = load float, ptr %"R12_Float32"
  %".2939" = load float, ptr %"R22_Float32"
  %".2940" = load float, ptr %"R21_Float32"
  %"fmul.162" = fmul float %".2938", %".2939"
  %"fadd.137" = fadd float %"fmul.162", %".2940"
  store float %"fadd.137", ptr %"R21_Float32"
  ; @!P0 BRA `(.L_x_25)
  %".2943" = load i1, ptr %"P0_Bool"
  %".2944" = icmp eq i1 %".2943", 1
  br i1 %".2944", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".2947" = load i32, ptr %"R15_Int32"
  %".2948" = load i1, ptr %"PT_Bool"
  %"cmp.33" = icmp ne i32 %".2947", 2
  %".2949" = and i1 %"cmp.33", %".2948"
  ; LDG.E.SYS R13, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2951" = load ptr, ptr %"R4_Float32_PTR"
  %".2952" = ptrtoint ptr %".2951" to i64
  %".2953" = add i64 %".2952", 4
  %"for_LDG.179" = inttoptr i64 %".2953" to ptr
  %".2954" = load float, ptr %"for_LDG.179"
  store float %".2954", ptr %"R13_Float32"
  ; LDG.E.SYS R12, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2957" = load ptr, ptr %"R6_Float32_PTR"
  %".2958" = ptrtoint ptr %".2957" to i64
  %".2959" = add i64 %".2958", 4
  %"for_LDG.180" = inttoptr i64 %".2959" to ptr
  %".2960" = load float, ptr %"for_LDG.180"
  store float %".2960", ptr %"R12_Float32"
  ; LDG.E.SYS R23, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2963" = load ptr, ptr %"R8_Float32_PTR"
  %".2964" = ptrtoint ptr %".2963" to i64
  %".2965" = add i64 %".2964", 4
  %"for_LDG.181" = inttoptr i64 %".2965" to ptr
  %".2966" = load float, ptr %"for_LDG.181"
  store float %".2966", ptr %"R23_Float32"
  ; LDG.E.SYS R22, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2969" = load ptr, ptr %"R10_Float32_PTR"
  %".2970" = ptrtoint ptr %".2969" to i64
  %".2971" = add i64 %".2970", 4
  %"for_LDG.182" = inttoptr i64 %".2971" to ptr
  %".2972" = load float, ptr %"for_LDG.182"
  store float %".2972", ptr %"R22_Float32"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".2975" = load i1, ptr %"P0_Bool"
  %".2976" = icmp ne i1 %".2975", 1
  br i1 %".2976", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2979" = load ptr, ptr %"R4_Float32_PTR"
  %".2980" = ptrtoint ptr %".2979" to i64
  %".2981" = add i64 %".2980", 8
  %"for_LDG.183" = inttoptr i64 %".2981" to ptr
  %".2982" = load float, ptr %"for_LDG.183"
  store float %".2982", ptr %"R25_Float32"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".2987" = load i1, ptr %"P0_Bool"
  %".2988" = icmp ne i1 %".2987", 1
  br i1 %".2988", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2991" = load ptr, ptr %"R6_Float32_PTR"
  %".2992" = ptrtoint ptr %".2991" to i64
  %".2993" = add i64 %".2992", 8
  %"for_LDG.184" = inttoptr i64 %".2993" to ptr
  %".2994" = load float, ptr %"for_LDG.184"
  store float %".2994", ptr %"R24_Float32"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".2999" = load i1, ptr %"P0_Bool"
  %".3000" = icmp ne i1 %".2999", 1
  br i1 %".3000", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3003" = load ptr, ptr %"R8_Float32_PTR"
  %".3004" = ptrtoint ptr %".3003" to i64
  %".3005" = add i64 %".3004", 8
  %"for_LDG.185" = inttoptr i64 %".3005" to ptr
  %".3006" = load float, ptr %"for_LDG.185"
  store float %".3006", ptr %"R35_Float32"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".3011" = load i1, ptr %"P0_Bool"
  %".3012" = icmp ne i1 %".3011", 1
  br i1 %".3012", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3015" = load ptr, ptr %"R10_Float32_PTR"
  %".3016" = ptrtoint ptr %".3015" to i64
  %".3017" = add i64 %".3016", 8
  %"for_LDG.186" = inttoptr i64 %".3017" to ptr
  %".3018" = load float, ptr %"for_LDG.186"
  store float %".3018", ptr %"R34_Float32"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".3023" = load float, ptr %"R13_Float32"
  %".3024" = load float, ptr %"R12_Float32"
  %".3025" = load float, ptr %"R44_Float32"
  %"fmul.163" = fmul float %".3023", %".3024"
  %"fadd.138" = fadd float %"fmul.163", %".3025"
  store float %"fadd.138", ptr %"R44_Float32"
  ; FFMA R56, R12.reuse, R23, R56
  %".3028" = load float, ptr %"R12_Float32"
  %".3029" = load float, ptr %"R23_Float32"
  %".3030" = load float, ptr %"R56_Float32"
  %"fmul.164" = fmul float %".3028", %".3029"
  %"fadd.139" = fadd float %"fmul.164", %".3030"
  store float %"fadd.139", ptr %"R56_Float32"
  ; FFMA R21, R12, R22, R21
  %".3033" = load float, ptr %"R12_Float32"
  %".3034" = load float, ptr %"R22_Float32"
  %".3035" = load float, ptr %"R21_Float32"
  %"fmul.165" = fmul float %".3033", %".3034"
  %"fadd.140" = fadd float %"fmul.165", %".3035"
  store float %"fadd.140", ptr %"R21_Float32"
  ; @P0 FFMA R44, R25, R24, R44
  %".3038" = load i1, ptr %"P0_Bool"
  %".3039" = icmp ne i1 %".3038", 1
  br i1 %".3039", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".3042" = load float, ptr %"R25_Float32"
  %".3043" = load float, ptr %"R24_Float32"
  %".3044" = load float, ptr %"R44_Float32"
  %"fmul.166" = fmul float %".3042", %".3043"
  %"fadd.141" = fadd float %"fmul.166", %".3044"
  store float %"fadd.141", ptr %"R44_Float32"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".3049" = load i1, ptr %"P0_Bool"
  %".3050" = icmp ne i1 %".3049", 1
  br i1 %".3050", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".3053" = load float, ptr %"R24_Float32"
  %".3054" = load float, ptr %"R35_Float32"
  %".3055" = load float, ptr %"R56_Float32"
  %"fmul.167" = fmul float %".3053", %".3054"
  %"fadd.142" = fadd float %"fmul.167", %".3055"
  store float %"fadd.142", ptr %"R56_Float32"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".3060" = load i1, ptr %"P0_Bool"
  %".3061" = icmp ne i1 %".3060", 1
  br i1 %".3061", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".3064" = load float, ptr %"R24_Float32"
  %".3065" = load float, ptr %"R34_Float32"
  %".3066" = load float, ptr %"R21_Float32"
  %"fmul.168" = fmul float %".3064", %".3065"
  %"fadd.143" = fadd float %"fmul.168", %".3066"
  store float %"fadd.143", ptr %"R21_Float32"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".3071" = load i1, ptr %"P4_Bool"
  %".3072" = icmp eq i1 %".3071", 1
  br i1 %".3072", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".3075" = load i32, ptr %"R18_Int32"
  %".3076" = load i1, ptr %"PT_Bool"
  %"cmp.34" = icmp sge i32 %".3075", 3
  %".3077" = and i1 %"cmp.34", %".3076"
  ; MOV R23, RZ
  %".3079" = load i32, ptr %"RZ_Int32"
  store i32 %".3079", ptr %"R23_Int32"
  ; @!P0 BRA `(.L_x_27)
  %".3082" = load i1, ptr %"P0_Bool"
  %".3083" = icmp eq i1 %".3082", 1
  br i1 %".3083", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".3086" = load i32, ptr %"R20_Int32"
  %".3087" = load i1, ptr %"PT_Bool"
  %"cmp.35" = icmp sgt i32 %".3086", 0
  %".3088" = and i1 %"cmp.35", %".3087"
  ; MOV R23, RZ
  %".3090" = load i32, ptr %"RZ_Int32"
  store i32 %".3090", ptr %"R23_Int32"
  ; MOV R22, R20
  %".3093" = load i32, ptr %"R20_Int32"
  store i32 %".3093", ptr %"R22_Int32"
  ; @!P0 BRA `(.L_x_28)
  %".3096" = load i1, ptr %"P0_Bool"
  %".3097" = icmp eq i1 %".3096", 1
  br i1 %".3097", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".3100" = load i32, ptr %"R22_Int32"
  %".3101" = load i1, ptr %"PT_Bool"
  %"cmp.36" = icmp sgt i32 %".3100", 12
  %".3102" = and i1 %"cmp.36", %".3101"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".3104" = and i1 1, 1
  %".3105" = or i1 %".3104", 1
  ; @!P1 BRA `(.L_x_29)
  %".3107" = load i1, ptr %"P1_Bool"
  %".3108" = icmp eq i1 %".3107", 1
  br i1 %".3108", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3111" = xor i1 1, 1
  %".3112" = and i1 %".3111", 1
  %".3113" = and i1 %".3112", 1
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".3115" = load i32, ptr %"R0_Int32"
  %".3116" = load i32, ptr %"R23_Int32"
  %"add.180" = add i32 %".3115", %".3116"
  %"add.181" = add i32 %"add.180", 0
  store i32 %"add.181", ptr %"R25_Int32"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24_Int32"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".3121" = load i32, ptr %"R2_Int32"
  %".3122" = load i32, ptr %"R25_Int32"
  %"mul.62" = mul i32 %".3121", 3
  %"add.182" = add i32 %"mul.62", %".3122"
  store i32 %"add.182", ptr %"R35_Int32"
  ; LEA R25, R2, R25, 0x2
  %".3125" = load i32, ptr %"R2_Int32"
  %".3126" = load i32, ptr %"R25_Int32"
  %"shl.18" = shl i32 %".3125", 2
  %"add.183" = add i32 %"shl.18", %".3126"
  store i32 %"add.183", ptr %"R25_Int32"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".3129" = load i32, ptr %"R23_Int32"
  %".3130" = load i32, ptr %"R24_Int32"
  %"mul.63" = mul i32 %".3129", %".3130"
  %"add.184" = add i32 %"mul.63", %"Arg_3"
  store i32 %"add.184", ptr %"R36_Int32"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".3133" = load i32, ptr %"R35_Int32"
  %".3134" = load i32, ptr %"R24_Int32"
  %"mul.64" = mul i32 %".3133", %".3134"
  %"add.185" = add i32 %"mul.64", %"Arg_4"
  store i32 %"add.185", ptr %"R8_Int32"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".3137" = load i32, ptr %"R25_Int32"
  %".3138" = load i32, ptr %"R24_Int32"
  %"mul.65" = mul i32 %".3137", %".3138"
  %"add.186" = add i32 %"mul.65", %"Arg_4"
  store i32 %"add.186", ptr %"R12_Int32"
  ; LDG.E.SYS R39, [R36]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".3141" = load ptr, ptr %"R36_Float32_PTR"
  %".3142" = ptrtoint ptr %".3141" to i64
  %".3143" = add i64 %".3142", 0
  %"for_LDG.187" = inttoptr i64 %".3143" to ptr
  %".3144" = load float, ptr %"for_LDG.187"
  store float %".3144", ptr %"R39_Float32"
  ; LDG.E.SYS R41, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3147" = load ptr, ptr %"R8_Float32_PTR"
  %".3148" = ptrtoint ptr %".3147" to i64
  %".3149" = add i64 %".3148", 0
  %"for_LDG.188" = inttoptr i64 %".3149" to ptr
  %".3150" = load float, ptr %"for_LDG.188"
  store float %".3150", ptr %"R41_Float32"
  ; LDG.E.SYS R40, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3153" = load ptr, ptr %"R12_Float32_PTR"
  %".3154" = ptrtoint ptr %".3153" to i64
  %".3155" = add i64 %".3154", 0
  %"for_LDG.189" = inttoptr i64 %".3155" to ptr
  %".3156" = load float, ptr %"for_LDG.189"
  store float %".3156", ptr %"R40_Float32"
  ; LDG.E.SYS R52, [R36+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".3159" = load ptr, ptr %"R36_Float32_PTR"
  %".3160" = ptrtoint ptr %".3159" to i64
  %".3161" = add i64 %".3160", 4
  %"for_LDG.190" = inttoptr i64 %".3161" to ptr
  %".3162" = load float, ptr %"for_LDG.190"
  store float %".3162", ptr %"R52_Float32"
  ; LDG.E.SYS R53, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3165" = load ptr, ptr %"R8_Float32_PTR"
  %".3166" = ptrtoint ptr %".3165" to i64
  %".3167" = add i64 %".3166", 4
  %"for_LDG.191" = inttoptr i64 %".3167" to ptr
  %".3168" = load float, ptr %"for_LDG.191"
  store float %".3168", ptr %"R53_Float32"
  ; LDG.E.SYS R55, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3171" = load ptr, ptr %"R12_Float32_PTR"
  %".3172" = ptrtoint ptr %".3171" to i64
  %".3173" = add i64 %".3172", 4
  %"for_LDG.192" = inttoptr i64 %".3173" to ptr
  %".3174" = load float, ptr %"for_LDG.192"
  store float %".3174", ptr %"R55_Float32"
  ; IADD3 R11, R23, 0x4, RZ
  %".3177" = load i32, ptr %"R23_Int32"
  %"add.187" = add i32 %".3177", 4
  %"add.188" = add i32 %"add.187", 0
  store i32 %"add.188", ptr %"R11_Int32"
  ; LDG.E.SYS R50, [R36+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".3180" = load ptr, ptr %"R36_Float32_PTR"
  %".3181" = ptrtoint ptr %".3180" to i64
  %".3182" = add i64 %".3181", 8
  %"for_LDG.193" = inttoptr i64 %".3182" to ptr
  %".3183" = load float, ptr %"for_LDG.193"
  store float %".3183", ptr %"R50_Float32"
  ; IADD3 R7, R35, 0x4, RZ
  %".3186" = load i32, ptr %"R35_Int32"
  %"add.189" = add i32 %".3186", 4
  %"add.190" = add i32 %"add.189", 0
  store i32 %"add.190", ptr %"R7_Int32"
  ; LDG.E.SYS R43, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3189" = load ptr, ptr %"R8_Float32_PTR"
  %".3190" = ptrtoint ptr %".3189" to i64
  %".3191" = add i64 %".3190", 8
  %"for_LDG.194" = inttoptr i64 %".3191" to ptr
  %".3192" = load float, ptr %"for_LDG.194"
  store float %".3192", ptr %"R43_Float32"
  ; IADD3 R5, R25, 0x4, RZ
  %".3195" = load i32, ptr %"R25_Int32"
  %"add.191" = add i32 %".3195", 4
  %"add.192" = add i32 %"add.191", 0
  store i32 %"add.192", ptr %"R5_Int32"
  ; LDG.E.SYS R51, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3198" = load ptr, ptr %"R12_Float32_PTR"
  %".3199" = ptrtoint ptr %".3198" to i64
  %".3200" = add i64 %".3199", 8
  %"for_LDG.195" = inttoptr i64 %".3200" to ptr
  %".3201" = load float, ptr %"for_LDG.195"
  store float %".3201", ptr %"R51_Float32"
  ; LDG.E.SYS R47, [R36+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".3204" = load ptr, ptr %"R36_Float32_PTR"
  %".3205" = ptrtoint ptr %".3204" to i64
  %".3206" = add i64 %".3205", 12
  %"for_LDG.196" = inttoptr i64 %".3206" to ptr
  %".3207" = load float, ptr %"for_LDG.196"
  store float %".3207", ptr %"R47_Float32"
  ; LDG.E.SYS R54, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3210" = load ptr, ptr %"R8_Float32_PTR"
  %".3211" = ptrtoint ptr %".3210" to i64
  %".3212" = add i64 %".3211", 12
  %"for_LDG.197" = inttoptr i64 %".3212" to ptr
  %".3213" = load float, ptr %"for_LDG.197"
  store float %".3213", ptr %"R54_Float32"
  ; LDG.E.SYS R58, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3216" = load ptr, ptr %"R12_Float32_PTR"
  %".3217" = ptrtoint ptr %".3216" to i64
  %".3218" = add i64 %".3217", 12
  %"for_LDG.198" = inttoptr i64 %".3218" to ptr
  %".3219" = load float, ptr %"for_LDG.198"
  store float %".3219", ptr %"R58_Float32"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".3222" = load i32, ptr %"R11_Int32"
  %".3223" = load i32, ptr %"R24_Int32"
  %"mul.66" = mul i32 %".3222", %".3223"
  %"add.193" = add i32 %"mul.66", %"Arg_3"
  store i32 %"add.193", ptr %"R10_Int32"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".3226" = load i32, ptr %"R7_Int32"
  %".3227" = load i32, ptr %"R24_Int32"
  %"mul.67" = mul i32 %".3226", %".3227"
  %"add.194" = add i32 %"mul.67", %"Arg_4"
  store i32 %"add.194", ptr %"R6_Int32"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".3230" = load i32, ptr %"R5_Int32"
  %".3231" = load i32, ptr %"R24_Int32"
  %"mul.68" = mul i32 %".3230", %".3231"
  %"add.195" = add i32 %"mul.68", %"Arg_4"
  store i32 %"add.195", ptr %"R4_Int32"
  ; LDG.E.SYS R46, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3234" = load ptr, ptr %"R10_Float32_PTR"
  %".3235" = ptrtoint ptr %".3234" to i64
  %".3236" = add i64 %".3235", 0
  %"for_LDG.199" = inttoptr i64 %".3236" to ptr
  %".3237" = load float, ptr %"for_LDG.199"
  store float %".3237", ptr %"R46_Float32"
  ; LDG.E.SYS R42, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3240" = load ptr, ptr %"R6_Float32_PTR"
  %".3241" = ptrtoint ptr %".3240" to i64
  %".3242" = add i64 %".3241", 0
  %"for_LDG.200" = inttoptr i64 %".3242" to ptr
  %".3243" = load float, ptr %"for_LDG.200"
  store float %".3243", ptr %"R42_Float32"
  ; LDG.E.SYS R45, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3246" = load ptr, ptr %"R4_Float32_PTR"
  %".3247" = ptrtoint ptr %".3246" to i64
  %".3248" = add i64 %".3247", 0
  %"for_LDG.201" = inttoptr i64 %".3248" to ptr
  %".3249" = load float, ptr %"for_LDG.201"
  store float %".3249", ptr %"R45_Float32"
  ; LDG.E.SYS R34, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3252" = load ptr, ptr %"R10_Float32_PTR"
  %".3253" = ptrtoint ptr %".3252" to i64
  %".3254" = add i64 %".3253", 4
  %"for_LDG.202" = inttoptr i64 %".3254" to ptr
  %".3255" = load float, ptr %"for_LDG.202"
  store float %".3255", ptr %"R34_Float32"
  ; LDG.E.SYS R37, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3258" = load ptr, ptr %"R6_Float32_PTR"
  %".3259" = ptrtoint ptr %".3258" to i64
  %".3260" = add i64 %".3259", 4
  %"for_LDG.203" = inttoptr i64 %".3260" to ptr
  %".3261" = load float, ptr %"for_LDG.203"
  store float %".3261", ptr %"R37_Float32"
  ; IADD3 R9, R23, 0x8, RZ
  %".3264" = load i32, ptr %"R23_Int32"
  %"add.196" = add i32 %".3264", 8
  %"add.197" = add i32 %"add.196", 0
  store i32 %"add.197", ptr %"R9_Int32"
  ; LDG.E.SYS R36, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3267" = load ptr, ptr %"R10_Float32_PTR"
  %".3268" = ptrtoint ptr %".3267" to i64
  %".3269" = add i64 %".3268", 8
  %"for_LDG.204" = inttoptr i64 %".3269" to ptr
  %".3270" = load float, ptr %"for_LDG.204"
  store float %".3270", ptr %"R36_Float32"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".3273" = load i32, ptr %"R9_Int32"
  %".3274" = load i32, ptr %"R24_Int32"
  %"mul.69" = mul i32 %".3273", %".3274"
  %"add.198" = add i32 %"mul.69", %"Arg_3"
  store i32 %"add.198", ptr %"R8_Int32"
  ; LDG.E.SYS R38, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3277" = load ptr, ptr %"R10_Float32_PTR"
  %".3278" = ptrtoint ptr %".3277" to i64
  %".3279" = add i64 %".3278", 12
  %"for_LDG.205" = inttoptr i64 %".3279" to ptr
  %".3280" = load float, ptr %"for_LDG.205"
  store float %".3280", ptr %"R38_Float32"
  ; IADD3 R13, R23, 0xc, RZ
  %".3283" = load i32, ptr %"R23_Int32"
  %"add.199" = add i32 %".3283", 12
  %"add.200" = add i32 %"add.199", 0
  store i32 %"add.200", ptr %"R13_Int32"
  ; IADD3 R11, R35, 0x8, RZ
  %".3286" = load i32, ptr %"R35_Int32"
  %"add.201" = add i32 %".3286", 8
  %"add.202" = add i32 %"add.201", 0
  store i32 %"add.202", ptr %"R11_Int32"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".3289" = load i32, ptr %"R13_Int32"
  %".3290" = load i32, ptr %"R24_Int32"
  %"mul.70" = mul i32 %".3289", %".3290"
  %"add.203" = add i32 %"mul.70", %"Arg_3"
  store i32 %"add.203", ptr %"R12_Int32"
  ; FFMA R57, R41, R39, R44
  %".3293" = load float, ptr %"R41_Float32"
  %".3294" = load float, ptr %"R39_Float32"
  %".3295" = load float, ptr %"R44_Float32"
  %"fmul.169" = fmul float %".3293", %".3294"
  %"fadd.144" = fadd float %"fmul.169", %".3295"
  store float %"fadd.144", ptr %"R57_Float32"
  ; LDG.E.SYS R41, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3298" = load ptr, ptr %"R8_Float32_PTR"
  %".3299" = ptrtoint ptr %".3298" to i64
  %".3300" = add i64 %".3299", 0
  %"for_LDG.206" = inttoptr i64 %".3300" to ptr
  %".3301" = load float, ptr %"for_LDG.206"
  store float %".3301", ptr %"R41_Float32"
  ; FFMA R56, R39, R40, R56
  %".3304" = load float, ptr %"R39_Float32"
  %".3305" = load float, ptr %"R40_Float32"
  %".3306" = load float, ptr %"R56_Float32"
  %"fmul.170" = fmul float %".3304", %".3305"
  %"fadd.145" = fadd float %"fmul.170", %".3306"
  store float %"fadd.145", ptr %"R56_Float32"
  ; LDG.E.SYS R40, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3309" = load ptr, ptr %"R8_Float32_PTR"
  %".3310" = ptrtoint ptr %".3309" to i64
  %".3311" = add i64 %".3310", 4
  %"for_LDG.207" = inttoptr i64 %".3311" to ptr
  %".3312" = load float, ptr %"for_LDG.207"
  store float %".3312", ptr %"R40_Float32"
  ; LDG.E.SYS R39, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3315" = load ptr, ptr %"R8_Float32_PTR"
  %".3316" = ptrtoint ptr %".3315" to i64
  %".3317" = add i64 %".3316", 8
  %"for_LDG.208" = inttoptr i64 %".3317" to ptr
  %".3318" = load float, ptr %"for_LDG.208"
  store float %".3318", ptr %"R39_Float32"
  ; FFMA R57, R53, R52, R57
  %".3321" = load float, ptr %"R53_Float32"
  %".3322" = load float, ptr %"R52_Float32"
  %".3323" = load float, ptr %"R57_Float32"
  %"fmul.171" = fmul float %".3321", %".3322"
  %"fadd.146" = fadd float %"fmul.171", %".3323"
  store float %"fadd.146", ptr %"R57_Float32"
  ; LDG.E.SYS R44, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3326" = load ptr, ptr %"R8_Float32_PTR"
  %".3327" = ptrtoint ptr %".3326" to i64
  %".3328" = add i64 %".3327", 12
  %"for_LDG.209" = inttoptr i64 %".3328" to ptr
  %".3329" = load float, ptr %"for_LDG.209"
  store float %".3329", ptr %"R44_Float32"
  ; FFMA R59, R52, R55, R56
  %".3332" = load float, ptr %"R52_Float32"
  %".3333" = load float, ptr %"R55_Float32"
  %".3334" = load float, ptr %"R56_Float32"
  %"fmul.172" = fmul float %".3332", %".3333"
  %"fadd.147" = fadd float %"fmul.172", %".3334"
  store float %"fadd.147", ptr %"R59_Float32"
  ; LDG.E.SYS R55, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3337" = load ptr, ptr %"R12_Float32_PTR"
  %".3338" = ptrtoint ptr %".3337" to i64
  %".3339" = add i64 %".3338", 0
  %"for_LDG.210" = inttoptr i64 %".3339" to ptr
  %".3340" = load float, ptr %"for_LDG.210"
  store float %".3340", ptr %"R55_Float32"
  ; LDG.E.SYS R53, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3343" = load ptr, ptr %"R12_Float32_PTR"
  %".3344" = ptrtoint ptr %".3343" to i64
  %".3345" = add i64 %".3344", 4
  %"for_LDG.211" = inttoptr i64 %".3345" to ptr
  %".3346" = load float, ptr %"for_LDG.211"
  store float %".3346", ptr %"R53_Float32"
  ; FFMA R43, R43, R50, R57
  %".3349" = load float, ptr %"R43_Float32"
  %".3350" = load float, ptr %"R50_Float32"
  %".3351" = load float, ptr %"R57_Float32"
  %"fmul.173" = fmul float %".3349", %".3350"
  %"fadd.148" = fadd float %"fmul.173", %".3351"
  store float %"fadd.148", ptr %"R43_Float32"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".3354" = load i32, ptr %"R11_Int32"
  %".3355" = load i32, ptr %"R24_Int32"
  %"mul.71" = mul i32 %".3354", %".3355"
  %"add.204" = add i32 %"mul.71", %"Arg_4"
  store i32 %"add.204", ptr %"R8_Int32"
  ; LDG.E.SYS R52, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3358" = load ptr, ptr %"R12_Float32_PTR"
  %".3359" = ptrtoint ptr %".3358" to i64
  %".3360" = add i64 %".3359", 8
  %"for_LDG.212" = inttoptr i64 %".3360" to ptr
  %".3361" = load float, ptr %"for_LDG.212"
  store float %".3361", ptr %"R52_Float32"
  ; FFMA R51, R50, R51, R59
  %".3364" = load float, ptr %"R50_Float32"
  %".3365" = load float, ptr %"R51_Float32"
  %".3366" = load float, ptr %"R59_Float32"
  %"fmul.174" = fmul float %".3364", %".3365"
  %"fadd.149" = fadd float %"fmul.174", %".3366"
  store float %"fadd.149", ptr %"R51_Float32"
  ; IADD3 R57, R25, 0x8, RZ
  %".3369" = load i32, ptr %"R25_Int32"
  %"add.205" = add i32 %".3369", 8
  %"add.206" = add i32 %"add.205", 0
  store i32 %"add.206", ptr %"R57_Int32"
  ; LDG.E.SYS R59, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3372" = load ptr, ptr %"R4_Float32_PTR"
  %".3373" = ptrtoint ptr %".3372" to i64
  %".3374" = add i64 %".3373", 12
  %"for_LDG.213" = inttoptr i64 %".3374" to ptr
  %".3375" = load float, ptr %"for_LDG.213"
  store float %".3375", ptr %"R59_Float32"
  ; FFMA R61, R54, R47, R43
  %".3378" = load float, ptr %"R54_Float32"
  %".3379" = load float, ptr %"R47_Float32"
  %".3380" = load float, ptr %"R43_Float32"
  %"fmul.175" = fmul float %".3378", %".3379"
  %"fadd.150" = fadd float %"fmul.175", %".3380"
  store float %"fadd.150", ptr %"R61_Float32"
  ; LDG.E.SYS R50, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3383" = load ptr, ptr %"R8_Float32_PTR"
  %".3384" = ptrtoint ptr %".3383" to i64
  %".3385" = add i64 %".3384", 0
  %"for_LDG.214" = inttoptr i64 %".3385" to ptr
  %".3386" = load float, ptr %"for_LDG.214"
  store float %".3386", ptr %"R50_Float32"
  ; FFMA R58, R47, R58, R51
  %".3389" = load float, ptr %"R47_Float32"
  %".3390" = load float, ptr %"R58_Float32"
  %".3391" = load float, ptr %"R51_Float32"
  %"fmul.176" = fmul float %".3389", %".3390"
  %"fadd.151" = fadd float %"fmul.176", %".3391"
  store float %"fadd.151", ptr %"R58_Float32"
  ; LDG.E.SYS R43, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3394" = load ptr, ptr %"R6_Float32_PTR"
  %".3395" = ptrtoint ptr %".3394" to i64
  %".3396" = add i64 %".3395", 8
  %"for_LDG.215" = inttoptr i64 %".3396" to ptr
  %".3397" = load float, ptr %"for_LDG.215"
  store float %".3397", ptr %"R43_Float32"
  ; LDG.E.SYS R47, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3400" = load ptr, ptr %"R4_Float32_PTR"
  %".3401" = ptrtoint ptr %".3400" to i64
  %".3402" = add i64 %".3401", 4
  %"for_LDG.216" = inttoptr i64 %".3402" to ptr
  %".3403" = load float, ptr %"for_LDG.216"
  store float %".3403", ptr %"R47_Float32"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".3406" = load i32, ptr %"R57_Int32"
  %".3407" = load i32, ptr %"R24_Int32"
  %"mul.72" = mul i32 %".3406", %".3407"
  %"add.207" = add i32 %"mul.72", %"Arg_4"
  store i32 %"add.207", ptr %"R10_Int32"
  ; LDG.E.SYS R51, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3410" = load ptr, ptr %"R4_Float32_PTR"
  %".3411" = ptrtoint ptr %".3410" to i64
  %".3412" = add i64 %".3411", 8
  %"for_LDG.217" = inttoptr i64 %".3412" to ptr
  %".3413" = load float, ptr %"for_LDG.217"
  store float %".3413", ptr %"R51_Float32"
  ; LDG.E.SYS R57, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3416" = load ptr, ptr %"R6_Float32_PTR"
  %".3417" = ptrtoint ptr %".3416" to i64
  %".3418" = add i64 %".3417", 12
  %"for_LDG.218" = inttoptr i64 %".3418" to ptr
  %".3419" = load float, ptr %"for_LDG.218"
  store float %".3419", ptr %"R57_Float32"
  ; FFMA R42, R42, R46, R61
  %".3422" = load float, ptr %"R42_Float32"
  %".3423" = load float, ptr %"R46_Float32"
  %".3424" = load float, ptr %"R61_Float32"
  %"fmul.177" = fmul float %".3422", %".3423"
  %"fadd.152" = fadd float %"fmul.177", %".3424"
  store float %"fadd.152", ptr %"R42_Float32"
  ; IADD3 R25, R25, 0xc, RZ
  %".3427" = load i32, ptr %"R25_Int32"
  %"add.208" = add i32 %".3427", 12
  %"add.209" = add i32 %"add.208", 0
  store i32 %"add.209", ptr %"R25_Int32"
  ; LDG.E.SYS R56, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3430" = load ptr, ptr %"R12_Float32_PTR"
  %".3431" = ptrtoint ptr %".3430" to i64
  %".3432" = add i64 %".3431", 12
  %"for_LDG.219" = inttoptr i64 %".3432" to ptr
  %".3433" = load float, ptr %"for_LDG.219"
  store float %".3433", ptr %"R56_Float32"
  ; FFMA R45, R46, R45, R58
  %".3436" = load float, ptr %"R46_Float32"
  %".3437" = load float, ptr %"R45_Float32"
  %".3438" = load float, ptr %"R58_Float32"
  %"fmul.178" = fmul float %".3436", %".3437"
  %"fadd.153" = fadd float %"fmul.178", %".3438"
  store float %"fadd.153", ptr %"R45_Float32"
  ; LDG.E.SYS R46, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3441" = load ptr, ptr %"R10_Float32_PTR"
  %".3442" = ptrtoint ptr %".3441" to i64
  %".3443" = add i64 %".3442", 0
  %"for_LDG.220" = inttoptr i64 %".3443" to ptr
  %".3444" = load float, ptr %"for_LDG.220"
  store float %".3444", ptr %"R46_Float32"
  ; LDG.E.SYS R61, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3447" = load ptr, ptr %"R8_Float32_PTR"
  %".3448" = ptrtoint ptr %".3447" to i64
  %".3449" = add i64 %".3448", 4
  %"for_LDG.221" = inttoptr i64 %".3449" to ptr
  %".3450" = load float, ptr %"for_LDG.221"
  store float %".3450", ptr %"R61_Float32"
  ; IADD3 R13, R35, 0xc, RZ
  %".3453" = load i32, ptr %"R35_Int32"
  %"add.210" = add i32 %".3453", 12
  %"add.211" = add i32 %"add.210", 0
  store i32 %"add.211", ptr %"R13_Int32"
  ; LDG.E.SYS R35, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3456" = load ptr, ptr %"R10_Float32_PTR"
  %".3457" = ptrtoint ptr %".3456" to i64
  %".3458" = add i64 %".3457", 4
  %"for_LDG.222" = inttoptr i64 %".3458" to ptr
  %".3459" = load float, ptr %"for_LDG.222"
  store float %".3459", ptr %"R35_Float32"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".3462" = load i32, ptr %"R13_Int32"
  %".3463" = load i32, ptr %"R24_Int32"
  %"mul.73" = mul i32 %".3462", %".3463"
  %"add.212" = add i32 %"mul.73", %"Arg_4"
  store i32 %"add.212", ptr %"R12_Int32"
  ; LDG.E.SYS R6, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3466" = load ptr, ptr %"R8_Float32_PTR"
  %".3467" = ptrtoint ptr %".3466" to i64
  %".3468" = add i64 %".3467", 8
  %"for_LDG.223" = inttoptr i64 %".3468" to ptr
  %".3469" = load float, ptr %"for_LDG.223"
  store float %".3469", ptr %"R6_Float32"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".3472" = load i32, ptr %"R25_Int32"
  %".3473" = load i32, ptr %"R24_Int32"
  %"mul.74" = mul i32 %".3472", %".3473"
  %"add.213" = add i32 %"mul.74", %"Arg_4"
  store i32 %"add.213", ptr %"R24_Int32"
  ; LDG.E.SYS R4, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3476" = load ptr, ptr %"R10_Float32_PTR"
  %".3477" = ptrtoint ptr %".3476" to i64
  %".3478" = add i64 %".3477", 8
  %"for_LDG.224" = inttoptr i64 %".3478" to ptr
  %".3479" = load float, ptr %"for_LDG.224"
  store float %".3479", ptr %"R4_Float32"
  ; LDG.E.SYS R5, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3482" = load ptr, ptr %"R8_Float32_PTR"
  %".3483" = ptrtoint ptr %".3482" to i64
  %".3484" = add i64 %".3483", 12
  %"for_LDG.225" = inttoptr i64 %".3484" to ptr
  %".3485" = load float, ptr %"for_LDG.225"
  store float %".3485", ptr %"R5_Float32"
  ; LDG.E.SYS R60, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3488" = load ptr, ptr %"R10_Float32_PTR"
  %".3489" = ptrtoint ptr %".3488" to i64
  %".3490" = add i64 %".3489", 12
  %"for_LDG.226" = inttoptr i64 %".3490" to ptr
  %".3491" = load float, ptr %"for_LDG.226"
  store float %".3491", ptr %"R60_Float32"
  ; LDG.E.SYS R58, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3494" = load ptr, ptr %"R12_Float32_PTR"
  %".3495" = ptrtoint ptr %".3494" to i64
  %".3496" = add i64 %".3495", 0
  %"for_LDG.227" = inttoptr i64 %".3496" to ptr
  %".3497" = load float, ptr %"for_LDG.227"
  store float %".3497", ptr %"R58_Float32"
  ; LDG.E.SYS R54, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3500" = load ptr, ptr %"R12_Float32_PTR"
  %".3501" = ptrtoint ptr %".3500" to i64
  %".3502" = add i64 %".3501", 4
  %"for_LDG.228" = inttoptr i64 %".3502" to ptr
  %".3503" = load float, ptr %"for_LDG.228"
  store float %".3503", ptr %"R54_Float32"
  ; FFMA R10, R37, R34, R42
  %".3506" = load float, ptr %"R37_Float32"
  %".3507" = load float, ptr %"R34_Float32"
  %".3508" = load float, ptr %"R42_Float32"
  %"fmul.179" = fmul float %".3506", %".3507"
  %"fadd.154" = fadd float %"fmul.179", %".3508"
  store float %"fadd.154", ptr %"R10_Float32"
  ; LDG.E.SYS R37, [R24]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3511" = load ptr, ptr %"R24_Float32_PTR"
  %".3512" = ptrtoint ptr %".3511" to i64
  %".3513" = add i64 %".3512", 0
  %"for_LDG.229" = inttoptr i64 %".3513" to ptr
  %".3514" = load float, ptr %"for_LDG.229"
  store float %".3514", ptr %"R37_Float32"
  ; LDG.E.SYS R42, [R24+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3517" = load ptr, ptr %"R24_Float32_PTR"
  %".3518" = ptrtoint ptr %".3517" to i64
  %".3519" = add i64 %".3518", 4
  %"for_LDG.230" = inttoptr i64 %".3519" to ptr
  %".3520" = load float, ptr %"for_LDG.230"
  store float %".3520", ptr %"R42_Float32"
  ; LDG.E.SYS R7, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3523" = load ptr, ptr %"R12_Float32_PTR"
  %".3524" = ptrtoint ptr %".3523" to i64
  %".3525" = add i64 %".3524", 8
  %"for_LDG.231" = inttoptr i64 %".3525" to ptr
  %".3526" = load float, ptr %"for_LDG.231"
  store float %".3526", ptr %"R7_Float32"
  ; LDG.E.SYS R9, [R24+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3529" = load ptr, ptr %"R24_Float32_PTR"
  %".3530" = ptrtoint ptr %".3529" to i64
  %".3531" = add i64 %".3530", 8
  %"for_LDG.232" = inttoptr i64 %".3531" to ptr
  %".3532" = load float, ptr %"for_LDG.232"
  store float %".3532", ptr %"R9_Float32"
  ; LDG.E.SYS R8, [R24+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3535" = load ptr, ptr %"R24_Float32_PTR"
  %".3536" = ptrtoint ptr %".3535" to i64
  %".3537" = add i64 %".3536", 12
  %"for_LDG.233" = inttoptr i64 %".3537" to ptr
  %".3538" = load float, ptr %"for_LDG.233"
  store float %".3538", ptr %"R8_Float32"
  ; LDG.E.SYS R13, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3541" = load ptr, ptr %"R12_Float32_PTR"
  %".3542" = ptrtoint ptr %".3541" to i64
  %".3543" = add i64 %".3542", 12
  %"for_LDG.234" = inttoptr i64 %".3543" to ptr
  %".3544" = load float, ptr %"for_LDG.234"
  store float %".3544", ptr %"R13_Float32"
  ; IADD3 R22, R22, -0x10, RZ
  %".3547" = load i32, ptr %"R22_Int32"
  %"add.214" = add i32 %".3547", -16
  %"add.215" = add i32 %"add.214", 0
  store i32 %"add.215", ptr %"R22_Int32"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".3550" = load i32, ptr %"R22_Int32"
  %".3551" = load i1, ptr %"PT_Bool"
  %"cmp.37" = icmp sgt i32 %".3550", 12
  %".3552" = and i1 %"cmp.37", %".3551"
  ; IADD3 R23, R23, 0x10, RZ
  %".3554" = load i32, ptr %"R23_Int32"
  %"add.216" = add i32 %".3554", 16
  %"add.217" = add i32 %"add.216", 0
  store i32 %"add.217", ptr %"R23_Int32"
  ; FFMA R10, R43, R36, R10
  %".3557" = load float, ptr %"R43_Float32"
  %".3558" = load float, ptr %"R36_Float32"
  %".3559" = load float, ptr %"R10_Float32"
  %"fmul.180" = fmul float %".3557", %".3558"
  %"fadd.155" = fadd float %"fmul.180", %".3559"
  store float %"fadd.155", ptr %"R10_Float32"
  ; FFMA R45, R34, R47, R45
  %".3562" = load float, ptr %"R34_Float32"
  %".3563" = load float, ptr %"R47_Float32"
  %".3564" = load float, ptr %"R45_Float32"
  %"fmul.181" = fmul float %".3562", %".3563"
  %"fadd.156" = fadd float %"fmul.181", %".3564"
  store float %"fadd.156", ptr %"R45_Float32"
  ; FFMA R45, R36, R51, R45
  %".3567" = load float, ptr %"R36_Float32"
  %".3568" = load float, ptr %"R51_Float32"
  %".3569" = load float, ptr %"R45_Float32"
  %"fmul.182" = fmul float %".3567", %".3568"
  %"fadd.157" = fadd float %"fmul.182", %".3569"
  store float %"fadd.157", ptr %"R45_Float32"
  ; FFMA R10, R57, R38, R10
  %".3572" = load float, ptr %"R57_Float32"
  %".3573" = load float, ptr %"R38_Float32"
  %".3574" = load float, ptr %"R10_Float32"
  %"fmul.183" = fmul float %".3572", %".3573"
  %"fadd.158" = fadd float %"fmul.183", %".3574"
  store float %"fadd.158", ptr %"R10_Float32"
  ; FFMA R45, R38, R59, R45
  %".3577" = load float, ptr %"R38_Float32"
  %".3578" = load float, ptr %"R59_Float32"
  %".3579" = load float, ptr %"R45_Float32"
  %"fmul.184" = fmul float %".3577", %".3578"
  %"fadd.159" = fadd float %"fmul.184", %".3579"
  store float %"fadd.159", ptr %"R45_Float32"
  ; FFMA R10, R50, R41, R10
  %".3582" = load float, ptr %"R50_Float32"
  %".3583" = load float, ptr %"R41_Float32"
  %".3584" = load float, ptr %"R10_Float32"
  %"fmul.185" = fmul float %".3582", %".3583"
  %"fadd.160" = fadd float %"fmul.185", %".3584"
  store float %"fadd.160", ptr %"R10_Float32"
  ; FFMA R45, R41, R46, R45
  %".3587" = load float, ptr %"R41_Float32"
  %".3588" = load float, ptr %"R46_Float32"
  %".3589" = load float, ptr %"R45_Float32"
  %"fmul.186" = fmul float %".3587", %".3588"
  %"fadd.161" = fadd float %"fmul.186", %".3589"
  store float %"fadd.161", ptr %"R45_Float32"
  ; FFMA R10, R61, R40, R10
  %".3592" = load float, ptr %"R61_Float32"
  %".3593" = load float, ptr %"R40_Float32"
  %".3594" = load float, ptr %"R10_Float32"
  %"fmul.187" = fmul float %".3592", %".3593"
  %"fadd.162" = fadd float %"fmul.187", %".3594"
  store float %"fadd.162", ptr %"R10_Float32"
  ; FFMA R35, R40, R35, R45
  %".3597" = load float, ptr %"R40_Float32"
  %".3598" = load float, ptr %"R35_Float32"
  %".3599" = load float, ptr %"R45_Float32"
  %"fmul.188" = fmul float %".3597", %".3598"
  %"fadd.163" = fadd float %"fmul.188", %".3599"
  store float %"fadd.163", ptr %"R35_Float32"
  ; FFMA R6, R6, R39, R10
  %".3602" = load float, ptr %"R6_Float32"
  %".3603" = load float, ptr %"R39_Float32"
  %".3604" = load float, ptr %"R10_Float32"
  %"fmul.189" = fmul float %".3602", %".3603"
  %"fadd.164" = fadd float %"fmul.189", %".3604"
  store float %"fadd.164", ptr %"R6_Float32"
  ; FFMA R35, R39, R4, R35
  %".3607" = load float, ptr %"R39_Float32"
  %".3608" = load float, ptr %"R4_Float32"
  %".3609" = load float, ptr %"R35_Float32"
  %"fmul.190" = fmul float %".3607", %".3608"
  %"fadd.165" = fadd float %"fmul.190", %".3609"
  store float %"fadd.165", ptr %"R35_Float32"
  ; FFMA R5, R5, R44, R6
  %".3612" = load float, ptr %"R5_Float32"
  %".3613" = load float, ptr %"R44_Float32"
  %".3614" = load float, ptr %"R6_Float32"
  %"fmul.191" = fmul float %".3612", %".3613"
  %"fadd.166" = fadd float %"fmul.191", %".3614"
  store float %"fadd.166", ptr %"R5_Float32"
  ; FFMA R60, R44, R60, R35
  %".3617" = load float, ptr %"R44_Float32"
  %".3618" = load float, ptr %"R60_Float32"
  %".3619" = load float, ptr %"R35_Float32"
  %"fmul.192" = fmul float %".3617", %".3618"
  %"fadd.167" = fadd float %"fmul.192", %".3619"
  store float %"fadd.167", ptr %"R60_Float32"
  ; FFMA R5, R58, R55, R5
  %".3622" = load float, ptr %"R58_Float32"
  %".3623" = load float, ptr %"R55_Float32"
  %".3624" = load float, ptr %"R5_Float32"
  %"fmul.193" = fmul float %".3622", %".3623"
  %"fadd.168" = fadd float %"fmul.193", %".3624"
  store float %"fadd.168", ptr %"R5_Float32"
  ; FFMA R5, R54, R53, R5
  %".3627" = load float, ptr %"R54_Float32"
  %".3628" = load float, ptr %"R53_Float32"
  %".3629" = load float, ptr %"R5_Float32"
  %"fmul.194" = fmul float %".3627", %".3628"
  %"fadd.169" = fadd float %"fmul.194", %".3629"
  store float %"fadd.169", ptr %"R5_Float32"
  ; FFMA R37, R55, R37, R60
  %".3632" = load float, ptr %"R55_Float32"
  %".3633" = load float, ptr %"R37_Float32"
  %".3634" = load float, ptr %"R60_Float32"
  %"fmul.195" = fmul float %".3632", %".3633"
  %"fadd.170" = fadd float %"fmul.195", %".3634"
  store float %"fadd.170", ptr %"R37_Float32"
  ; FFMA R37, R53, R42, R37
  %".3637" = load float, ptr %"R53_Float32"
  %".3638" = load float, ptr %"R42_Float32"
  %".3639" = load float, ptr %"R37_Float32"
  %"fmul.196" = fmul float %".3637", %".3638"
  %"fadd.171" = fadd float %"fmul.196", %".3639"
  store float %"fadd.171", ptr %"R37_Float32"
  ; FFMA R5, R7, R52, R5
  %".3642" = load float, ptr %"R7_Float32"
  %".3643" = load float, ptr %"R52_Float32"
  %".3644" = load float, ptr %"R5_Float32"
  %"fmul.197" = fmul float %".3642", %".3643"
  %"fadd.172" = fadd float %"fmul.197", %".3644"
  store float %"fadd.172", ptr %"R5_Float32"
  ; FFMA R9, R52, R9, R37
  %".3647" = load float, ptr %"R52_Float32"
  %".3648" = load float, ptr %"R9_Float32"
  %".3649" = load float, ptr %"R37_Float32"
  %"fmul.198" = fmul float %".3647", %".3648"
  %"fadd.173" = fadd float %"fmul.198", %".3649"
  store float %"fadd.173", ptr %"R9_Float32"
  ; FFMA R44, R13, R56, R5
  %".3652" = load float, ptr %"R13_Float32"
  %".3653" = load float, ptr %"R56_Float32"
  %".3654" = load float, ptr %"R5_Float32"
  %"fmul.199" = fmul float %".3652", %".3653"
  %"fadd.174" = fadd float %"fmul.199", %".3654"
  store float %"fadd.174", ptr %"R44_Float32"
  ; FFMA R56, R56, R8, R9
  %".3657" = load float, ptr %"R56_Float32"
  %".3658" = load float, ptr %"R8_Float32"
  %".3659" = load float, ptr %"R9_Float32"
  %"fmul.200" = fmul float %".3657", %".3658"
  %"fadd.175" = fadd float %"fmul.200", %".3659"
  store float %"fadd.175", ptr %"R56_Float32"
  ; @P1 BRA `(.L_x_30)
  %".3662" = load i1, ptr %"P1_Bool"
  %".3663" = icmp ne i1 %".3662", 1
  br i1 %".3663", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".3666" = load i32, ptr %"R22_Int32"
  %".3667" = load i1, ptr %"PT_Bool"
  %"cmp.38" = icmp sgt i32 %".3666", 4
  %".3668" = and i1 %"cmp.38", %".3667"
  ; @!P1 BRA `(.L_x_31)
  %".3670" = load i1, ptr %"P1_Bool"
  %".3671" = icmp eq i1 %".3670", 1
  br i1 %".3671", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".3674" = load i32, ptr %"R0_Int32"
  %".3675" = load i32, ptr %"R23_Int32"
  %"add.218" = add i32 %".3674", %".3675"
  %"add.219" = add i32 %"add.218", 0
  store i32 %"add.219", ptr %"R5_Int32"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25_Int32"
  ; LEA R13, R2.reuse, R5, 0x2
  %".3680" = load i32, ptr %"R2_Int32"
  %".3681" = load i32, ptr %"R5_Int32"
  %"shl.19" = shl i32 %".3680", 2
  %"add.220" = add i32 %"shl.19", %".3681"
  store i32 %"add.220", ptr %"R13_Int32"
  ; IMAD R12, R2, 0x3, R5
  %".3684" = load i32, ptr %"R2_Int32"
  %".3685" = load i32, ptr %"R5_Int32"
  %"mul.75" = mul i32 %".3684", 3
  %"add.221" = add i32 %"mul.75", %".3685"
  store i32 %"add.221", ptr %"R12_Int32"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".3688" = load i32, ptr %"R23_Int32"
  %"add.222" = add i32 %".3688", 4
  %"add.223" = add i32 %"add.222", 0
  store i32 %"add.223", ptr %"R6_Int32"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".3691" = load i32, ptr %"R23_Int32"
  %".3692" = load i32, ptr %"R25_Int32"
  %"mul.76" = mul i32 %".3691", %".3692"
  %"add.224" = add i32 %"mul.76", %"Arg_3"
  store i32 %"add.224", ptr %"R8_Int32"
  ; IADD3 R24, R13, 0x4, RZ
  %".3695" = load i32, ptr %"R13_Int32"
  %"add.225" = add i32 %".3695", 4
  %"add.226" = add i32 %"add.225", 0
  store i32 %"add.226", ptr %"R24_Int32"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".3698" = load i32, ptr %"R12_Int32"
  %".3699" = load i32, ptr %"R25_Int32"
  %"mul.77" = mul i32 %".3698", %".3699"
  %"add.227" = add i32 %"mul.77", %"Arg_4"
  store i32 %"add.227", ptr %"R4_Int32"
  ; IADD3 R12, R12, 0x4, RZ
  %".3702" = load i32, ptr %"R12_Int32"
  %"add.228" = add i32 %".3702", 4
  %"add.229" = add i32 %"add.228", 0
  store i32 %"add.229", ptr %"R12_Int32"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".3705" = load i32, ptr %"R13_Int32"
  %".3706" = load i32, ptr %"R25_Int32"
  %"mul.78" = mul i32 %".3705", %".3706"
  %"add.230" = add i32 %"mul.78", %"Arg_4"
  store i32 %"add.230", ptr %"R10_Int32"
  ; LDG.E.SYS R43, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3709" = load ptr, ptr %"R8_Float32_PTR"
  %".3710" = ptrtoint ptr %".3709" to i64
  %".3711" = add i64 %".3710", 0
  %"for_LDG.235" = inttoptr i64 %".3711" to ptr
  %".3712" = load float, ptr %"for_LDG.235"
  store float %".3712", ptr %"R43_Float32"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".3715" = load i32, ptr %"R6_Int32"
  %".3716" = load i32, ptr %"R25_Int32"
  %"mul.79" = mul i32 %".3715", %".3716"
  %"add.231" = add i32 %"mul.79", %"Arg_3"
  store i32 %"add.231", ptr %"R6_Int32"
  ; LDG.E.SYS R52, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3719" = load ptr, ptr %"R4_Float32_PTR"
  %".3720" = ptrtoint ptr %".3719" to i64
  %".3721" = add i64 %".3720", 0
  %"for_LDG.236" = inttoptr i64 %".3721" to ptr
  %".3722" = load float, ptr %"for_LDG.236"
  store float %".3722", ptr %"R52_Float32"
  ; LDG.E.SYS R38, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3725" = load ptr, ptr %"R10_Float32_PTR"
  %".3726" = ptrtoint ptr %".3725" to i64
  %".3727" = add i64 %".3726", 0
  %"for_LDG.237" = inttoptr i64 %".3727" to ptr
  %".3728" = load float, ptr %"for_LDG.237"
  store float %".3728", ptr %"R38_Float32"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".3731" = load i32, ptr %"R12_Int32"
  %".3732" = load i32, ptr %"R25_Int32"
  %"mul.80" = mul i32 %".3731", %".3732"
  %"add.232" = add i32 %"mul.80", %"Arg_4"
  store i32 %"add.232", ptr %"R12_Int32"
  ; LDG.E.SYS R36, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3735" = load ptr, ptr %"R8_Float32_PTR"
  %".3736" = ptrtoint ptr %".3735" to i64
  %".3737" = add i64 %".3736", 4
  %"for_LDG.238" = inttoptr i64 %".3737" to ptr
  %".3738" = load float, ptr %"for_LDG.238"
  store float %".3738", ptr %"R36_Float32"
  ; LDG.E.SYS R41, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3741" = load ptr, ptr %"R4_Float32_PTR"
  %".3742" = ptrtoint ptr %".3741" to i64
  %".3743" = add i64 %".3742", 4
  %"for_LDG.239" = inttoptr i64 %".3743" to ptr
  %".3744" = load float, ptr %"for_LDG.239"
  store float %".3744", ptr %"R41_Float32"
  ; LDG.E.SYS R39, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3747" = load ptr, ptr %"R10_Float32_PTR"
  %".3748" = ptrtoint ptr %".3747" to i64
  %".3749" = add i64 %".3748", 4
  %"for_LDG.240" = inttoptr i64 %".3749" to ptr
  %".3750" = load float, ptr %"for_LDG.240"
  store float %".3750", ptr %"R39_Float32"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".3753" = load i32, ptr %"R24_Int32"
  %".3754" = load i32, ptr %"R25_Int32"
  %"mul.81" = mul i32 %".3753", %".3754"
  %"add.233" = add i32 %"mul.81", %"Arg_4"
  store i32 %"add.233", ptr %"R24_Int32"
  ; LDG.E.SYS R34, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3757" = load ptr, ptr %"R8_Float32_PTR"
  %".3758" = ptrtoint ptr %".3757" to i64
  %".3759" = add i64 %".3758", 8
  %"for_LDG.241" = inttoptr i64 %".3759" to ptr
  %".3760" = load float, ptr %"for_LDG.241"
  store float %".3760", ptr %"R34_Float32"
  ; LDG.E.SYS R37, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3763" = load ptr, ptr %"R4_Float32_PTR"
  %".3764" = ptrtoint ptr %".3763" to i64
  %".3765" = add i64 %".3764", 8
  %"for_LDG.242" = inttoptr i64 %".3765" to ptr
  %".3766" = load float, ptr %"for_LDG.242"
  store float %".3766", ptr %"R37_Float32"
  ; LDG.E.SYS R35, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3769" = load ptr, ptr %"R10_Float32_PTR"
  %".3770" = ptrtoint ptr %".3769" to i64
  %".3771" = add i64 %".3770", 8
  %"for_LDG.243" = inttoptr i64 %".3771" to ptr
  %".3772" = load float, ptr %"for_LDG.243"
  store float %".3772", ptr %"R35_Float32"
  ; LDG.E.SYS R40, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3775" = load ptr, ptr %"R8_Float32_PTR"
  %".3776" = ptrtoint ptr %".3775" to i64
  %".3777" = add i64 %".3776", 12
  %"for_LDG.244" = inttoptr i64 %".3777" to ptr
  %".3778" = load float, ptr %"for_LDG.244"
  store float %".3778", ptr %"R40_Float32"
  ; LDG.E.SYS R45, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3781" = load ptr, ptr %"R4_Float32_PTR"
  %".3782" = ptrtoint ptr %".3781" to i64
  %".3783" = add i64 %".3782", 12
  %"for_LDG.245" = inttoptr i64 %".3783" to ptr
  %".3784" = load float, ptr %"for_LDG.245"
  store float %".3784", ptr %"R45_Float32"
  ; LDG.E.SYS R59, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3787" = load ptr, ptr %"R10_Float32_PTR"
  %".3788" = ptrtoint ptr %".3787" to i64
  %".3789" = add i64 %".3788", 12
  %"for_LDG.246" = inttoptr i64 %".3789" to ptr
  %".3790" = load float, ptr %"for_LDG.246"
  store float %".3790", ptr %"R59_Float32"
  ; LDG.E.SYS R50, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3793" = load ptr, ptr %"R6_Float32_PTR"
  %".3794" = ptrtoint ptr %".3793" to i64
  %".3795" = add i64 %".3794", 0
  %"for_LDG.247" = inttoptr i64 %".3795" to ptr
  %".3796" = load float, ptr %"for_LDG.247"
  store float %".3796", ptr %"R50_Float32"
  ; LDG.E.SYS R57, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3799" = load ptr, ptr %"R12_Float32_PTR"
  %".3800" = ptrtoint ptr %".3799" to i64
  %".3801" = add i64 %".3800", 0
  %"for_LDG.248" = inttoptr i64 %".3801" to ptr
  %".3802" = load float, ptr %"for_LDG.248"
  store float %".3802", ptr %"R57_Float32"
  ; LDG.E.SYS R55, [R24]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3805" = load ptr, ptr %"R24_Float32_PTR"
  %".3806" = ptrtoint ptr %".3805" to i64
  %".3807" = add i64 %".3806", 0
  %"for_LDG.249" = inttoptr i64 %".3807" to ptr
  %".3808" = load float, ptr %"for_LDG.249"
  store float %".3808", ptr %"R55_Float32"
  ; LDG.E.SYS R46, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3811" = load ptr, ptr %"R6_Float32_PTR"
  %".3812" = ptrtoint ptr %".3811" to i64
  %".3813" = add i64 %".3812", 4
  %"for_LDG.250" = inttoptr i64 %".3813" to ptr
  %".3814" = load float, ptr %"for_LDG.250"
  store float %".3814", ptr %"R46_Float32"
  ; LDG.E.SYS R53, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3817" = load ptr, ptr %"R12_Float32_PTR"
  %".3818" = ptrtoint ptr %".3817" to i64
  %".3819" = add i64 %".3818", 4
  %"for_LDG.251" = inttoptr i64 %".3819" to ptr
  %".3820" = load float, ptr %"for_LDG.251"
  store float %".3820", ptr %"R53_Float32"
  ; LDG.E.SYS R51, [R24+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3823" = load ptr, ptr %"R24_Float32_PTR"
  %".3824" = ptrtoint ptr %".3823" to i64
  %".3825" = add i64 %".3824", 4
  %"for_LDG.252" = inttoptr i64 %".3825" to ptr
  %".3826" = load float, ptr %"for_LDG.252"
  store float %".3826", ptr %"R51_Float32"
  ; LDG.E.SYS R42, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3829" = load ptr, ptr %"R6_Float32_PTR"
  %".3830" = ptrtoint ptr %".3829" to i64
  %".3831" = add i64 %".3830", 8
  %"for_LDG.253" = inttoptr i64 %".3831" to ptr
  %".3832" = load float, ptr %"for_LDG.253"
  store float %".3832", ptr %"R42_Float32"
  ; LDG.E.SYS R47, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3835" = load ptr, ptr %"R12_Float32_PTR"
  %".3836" = ptrtoint ptr %".3835" to i64
  %".3837" = add i64 %".3836", 8
  %"for_LDG.254" = inttoptr i64 %".3837" to ptr
  %".3838" = load float, ptr %"for_LDG.254"
  store float %".3838", ptr %"R47_Float32"
  ; LDG.E.SYS R9, [R24+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3841" = load ptr, ptr %"R24_Float32_PTR"
  %".3842" = ptrtoint ptr %".3841" to i64
  %".3843" = add i64 %".3842", 8
  %"for_LDG.255" = inttoptr i64 %".3843" to ptr
  %".3844" = load float, ptr %"for_LDG.255"
  store float %".3844", ptr %"R9_Float32"
  ; LDG.E.SYS R4, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3847" = load ptr, ptr %"R6_Float32_PTR"
  %".3848" = ptrtoint ptr %".3847" to i64
  %".3849" = add i64 %".3848", 12
  %"for_LDG.256" = inttoptr i64 %".3849" to ptr
  %".3850" = load float, ptr %"for_LDG.256"
  store float %".3850", ptr %"R4_Float32"
  ; LDG.E.SYS R5, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3853" = load ptr, ptr %"R12_Float32_PTR"
  %".3854" = ptrtoint ptr %".3853" to i64
  %".3855" = add i64 %".3854", 12
  %"for_LDG.257" = inttoptr i64 %".3855" to ptr
  %".3856" = load float, ptr %"for_LDG.257"
  store float %".3856", ptr %"R5_Float32"
  ; LDG.E.SYS R11, [R24+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3859" = load ptr, ptr %"R24_Float32_PTR"
  %".3860" = ptrtoint ptr %".3859" to i64
  %".3861" = add i64 %".3860", 12
  %"for_LDG.258" = inttoptr i64 %".3861" to ptr
  %".3862" = load float, ptr %"for_LDG.258"
  store float %".3862", ptr %"R11_Float32"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3865" = xor i1 1, 1
  %".3866" = and i1 %".3865", 1
  %".3867" = and i1 %".3866", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".3869" = load i32, ptr %"R22_Int32"
  %"add.234" = add i32 %".3869", -8
  %"add.235" = add i32 %"add.234", 0
  store i32 %"add.235", ptr %"R22_Int32"
  ; IADD3 R23, R23, 0x8, RZ
  %".3872" = load i32, ptr %"R23_Int32"
  %"add.236" = add i32 %".3872", 8
  %"add.237" = add i32 %"add.236", 0
  store i32 %"add.237", ptr %"R23_Int32"
  ; FFMA R52, R52, R43, R44
  %".3875" = load float, ptr %"R52_Float32"
  %".3876" = load float, ptr %"R43_Float32"
  %".3877" = load float, ptr %"R44_Float32"
  %"fmul.201" = fmul float %".3875", %".3876"
  %"fadd.176" = fadd float %"fmul.201", %".3877"
  store float %"fadd.176", ptr %"R52_Float32"
  ; FFMA R38, R43, R38, R56
  %".3880" = load float, ptr %"R43_Float32"
  %".3881" = load float, ptr %"R38_Float32"
  %".3882" = load float, ptr %"R56_Float32"
  %"fmul.202" = fmul float %".3880", %".3881"
  %"fadd.177" = fadd float %"fmul.202", %".3882"
  store float %"fadd.177", ptr %"R38_Float32"
  ; FFMA R41, R41, R36, R52
  %".3885" = load float, ptr %"R41_Float32"
  %".3886" = load float, ptr %"R36_Float32"
  %".3887" = load float, ptr %"R52_Float32"
  %"fmul.203" = fmul float %".3885", %".3886"
  %"fadd.178" = fadd float %"fmul.203", %".3887"
  store float %"fadd.178", ptr %"R41_Float32"
  ; FFMA R38, R36, R39, R38
  %".3890" = load float, ptr %"R36_Float32"
  %".3891" = load float, ptr %"R39_Float32"
  %".3892" = load float, ptr %"R38_Float32"
  %"fmul.204" = fmul float %".3890", %".3891"
  %"fadd.179" = fadd float %"fmul.204", %".3892"
  store float %"fadd.179", ptr %"R38_Float32"
  ; FFMA R37, R37, R34, R41
  %".3895" = load float, ptr %"R37_Float32"
  %".3896" = load float, ptr %"R34_Float32"
  %".3897" = load float, ptr %"R41_Float32"
  %"fmul.205" = fmul float %".3895", %".3896"
  %"fadd.180" = fadd float %"fmul.205", %".3897"
  store float %"fadd.180", ptr %"R37_Float32"
  ; FFMA R35, R34, R35, R38
  %".3900" = load float, ptr %"R34_Float32"
  %".3901" = load float, ptr %"R35_Float32"
  %".3902" = load float, ptr %"R38_Float32"
  %"fmul.206" = fmul float %".3900", %".3901"
  %"fadd.181" = fadd float %"fmul.206", %".3902"
  store float %"fadd.181", ptr %"R35_Float32"
  ; FFMA R37, R45, R40, R37
  %".3905" = load float, ptr %"R45_Float32"
  %".3906" = load float, ptr %"R40_Float32"
  %".3907" = load float, ptr %"R37_Float32"
  %"fmul.207" = fmul float %".3905", %".3906"
  %"fadd.182" = fadd float %"fmul.207", %".3907"
  store float %"fadd.182", ptr %"R37_Float32"
  ; FFMA R35, R40, R59, R35
  %".3910" = load float, ptr %"R40_Float32"
  %".3911" = load float, ptr %"R59_Float32"
  %".3912" = load float, ptr %"R35_Float32"
  %"fmul.208" = fmul float %".3910", %".3911"
  %"fadd.183" = fadd float %"fmul.208", %".3912"
  store float %"fadd.183", ptr %"R35_Float32"
  ; FFMA R37, R57, R50, R37
  %".3915" = load float, ptr %"R57_Float32"
  %".3916" = load float, ptr %"R50_Float32"
  %".3917" = load float, ptr %"R37_Float32"
  %"fmul.209" = fmul float %".3915", %".3916"
  %"fadd.184" = fadd float %"fmul.209", %".3917"
  store float %"fadd.184", ptr %"R37_Float32"
  ; FFMA R35, R50, R55, R35
  %".3920" = load float, ptr %"R50_Float32"
  %".3921" = load float, ptr %"R55_Float32"
  %".3922" = load float, ptr %"R35_Float32"
  %"fmul.210" = fmul float %".3920", %".3921"
  %"fadd.185" = fadd float %"fmul.210", %".3922"
  store float %"fadd.185", ptr %"R35_Float32"
  ; FFMA R37, R53, R46, R37
  %".3925" = load float, ptr %"R53_Float32"
  %".3926" = load float, ptr %"R46_Float32"
  %".3927" = load float, ptr %"R37_Float32"
  %"fmul.211" = fmul float %".3925", %".3926"
  %"fadd.186" = fadd float %"fmul.211", %".3927"
  store float %"fadd.186", ptr %"R37_Float32"
  ; FFMA R35, R46, R51, R35
  %".3930" = load float, ptr %"R46_Float32"
  %".3931" = load float, ptr %"R51_Float32"
  %".3932" = load float, ptr %"R35_Float32"
  %"fmul.212" = fmul float %".3930", %".3931"
  %"fadd.187" = fadd float %"fmul.212", %".3932"
  store float %"fadd.187", ptr %"R35_Float32"
  ; FFMA R37, R47, R42, R37
  %".3935" = load float, ptr %"R47_Float32"
  %".3936" = load float, ptr %"R42_Float32"
  %".3937" = load float, ptr %"R37_Float32"
  %"fmul.213" = fmul float %".3935", %".3936"
  %"fadd.188" = fadd float %"fmul.213", %".3937"
  store float %"fadd.188", ptr %"R37_Float32"
  ; FFMA R9, R42, R9, R35
  %".3940" = load float, ptr %"R42_Float32"
  %".3941" = load float, ptr %"R9_Float32"
  %".3942" = load float, ptr %"R35_Float32"
  %"fmul.214" = fmul float %".3940", %".3941"
  %"fadd.189" = fadd float %"fmul.214", %".3942"
  store float %"fadd.189", ptr %"R9_Float32"
  ; FFMA R44, R5, R4, R37
  %".3945" = load float, ptr %"R5_Float32"
  %".3946" = load float, ptr %"R4_Float32"
  %".3947" = load float, ptr %"R37_Float32"
  %"fmul.215" = fmul float %".3945", %".3946"
  %"fadd.190" = fadd float %"fmul.215", %".3947"
  store float %"fadd.190", ptr %"R44_Float32"
  ; FFMA R56, R4, R11, R9
  %".3950" = load float, ptr %"R4_Float32"
  %".3951" = load float, ptr %"R11_Float32"
  %".3952" = load float, ptr %"R9_Float32"
  %"fmul.216" = fmul float %".3950", %".3951"
  %"fadd.191" = fadd float %"fmul.216", %".3952"
  store float %"fadd.191", ptr %"R56_Float32"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".3955" = load i32, ptr %"R22_Int32"
  %".3956" = load i1, ptr %"PT_Bool"
  %"cmp.39" = icmp ne i32 %".3955", 0
  %".3957" = or i1 %"cmp.39", %".3956"
  ; @!P0 BRA `(.L_x_27)
  %".3959" = load i1, ptr %"P0_Bool"
  %".3960" = icmp eq i1 %".3959", 1
  br i1 %".3960", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".3963" = load i32, ptr %"R0_Int32"
  %".3964" = load i32, ptr %"R23_Int32"
  %"add.238" = add i32 %".3963", %".3964"
  %"add.239" = add i32 %"add.238", 0
  store i32 %"add.239", ptr %"R5_Int32"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6_Int32"
  ; LEA R11, R2.reuse, R5, 0x2
  %".3969" = load i32, ptr %"R2_Int32"
  %".3970" = load i32, ptr %"R5_Int32"
  %"shl.20" = shl i32 %".3969", 2
  %"add.240" = add i32 %"shl.20", %".3970"
  store i32 %"add.240", ptr %"R11_Int32"
  ; IMAD R7, R2, 0x3, R5
  %".3973" = load i32, ptr %"R2_Int32"
  %".3974" = load i32, ptr %"R5_Int32"
  %"mul.82" = mul i32 %".3973", 3
  %"add.241" = add i32 %"mul.82", %".3974"
  store i32 %"add.241", ptr %"R7_Int32"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".3977" = load i32, ptr %"R23_Int32"
  %".3978" = load i32, ptr %"R6_Int32"
  %"mul.83" = mul i32 %".3977", %".3978"
  %"add.242" = add i32 %"mul.83", %"Arg_3"
  store i32 %"add.242", ptr %"R8_Int32"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".3981" = load i32, ptr %"R7_Int32"
  %".3982" = load i32, ptr %"R6_Int32"
  %"mul.84" = mul i32 %".3981", %".3982"
  %"add.243" = add i32 %"mul.84", %"Arg_4"
  store i32 %"add.243", ptr %"R4_Int32"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".3985" = load i32, ptr %"R11_Int32"
  %".3986" = load i32, ptr %"R6_Int32"
  %"mul.85" = mul i32 %".3985", %".3986"
  %"add.244" = add i32 %"mul.85", %"Arg_4"
  store i32 %"add.244", ptr %"R6_Int32"
  ; LDG.E.SYS R13, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3989" = load ptr, ptr %"R8_Float32_PTR"
  %".3990" = ptrtoint ptr %".3989" to i64
  %".3991" = add i64 %".3990", 0
  %"for_LDG.259" = inttoptr i64 %".3991" to ptr
  %".3992" = load float, ptr %"for_LDG.259"
  store float %".3992", ptr %"R13_Float32"
  ; LDG.E.SYS R11, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3995" = load ptr, ptr %"R4_Float32_PTR"
  %".3996" = ptrtoint ptr %".3995" to i64
  %".3997" = add i64 %".3996", 0
  %"for_LDG.260" = inttoptr i64 %".3997" to ptr
  %".3998" = load float, ptr %"for_LDG.260"
  store float %".3998", ptr %"R11_Float32"
  ; LDG.E.SYS R10, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4001" = load ptr, ptr %"R6_Float32_PTR"
  %".4002" = ptrtoint ptr %".4001" to i64
  %".4003" = add i64 %".4002", 0
  %"for_LDG.261" = inttoptr i64 %".4003" to ptr
  %".4004" = load float, ptr %"for_LDG.261"
  store float %".4004", ptr %"R10_Float32"
  ; LDG.E.SYS R25, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4007" = load ptr, ptr %"R8_Float32_PTR"
  %".4008" = ptrtoint ptr %".4007" to i64
  %".4009" = add i64 %".4008", 4
  %"for_LDG.262" = inttoptr i64 %".4009" to ptr
  %".4010" = load float, ptr %"for_LDG.262"
  store float %".4010", ptr %"R25_Float32"
  ; LDG.E.SYS R12, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4013" = load ptr, ptr %"R4_Float32_PTR"
  %".4014" = ptrtoint ptr %".4013" to i64
  %".4015" = add i64 %".4014", 4
  %"for_LDG.263" = inttoptr i64 %".4015" to ptr
  %".4016" = load float, ptr %"for_LDG.263"
  store float %".4016", ptr %"R12_Float32"
  ; LDG.E.SYS R24, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4019" = load ptr, ptr %"R6_Float32_PTR"
  %".4020" = ptrtoint ptr %".4019" to i64
  %".4021" = add i64 %".4020", 4
  %"for_LDG.264" = inttoptr i64 %".4021" to ptr
  %".4022" = load float, ptr %"for_LDG.264"
  store float %".4022", ptr %"R24_Float32"
  ; LDG.E.SYS R35, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4025" = load ptr, ptr %"R8_Float32_PTR"
  %".4026" = ptrtoint ptr %".4025" to i64
  %".4027" = add i64 %".4026", 8
  %"for_LDG.265" = inttoptr i64 %".4027" to ptr
  %".4028" = load float, ptr %"for_LDG.265"
  store float %".4028", ptr %"R35_Float32"
  ; LDG.E.SYS R34, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4031" = load ptr, ptr %"R4_Float32_PTR"
  %".4032" = ptrtoint ptr %".4031" to i64
  %".4033" = add i64 %".4032", 8
  %"for_LDG.266" = inttoptr i64 %".4033" to ptr
  %".4034" = load float, ptr %"for_LDG.266"
  store float %".4034", ptr %"R34_Float32"
  ; LDG.E.SYS R36, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4037" = load ptr, ptr %"R6_Float32_PTR"
  %".4038" = ptrtoint ptr %".4037" to i64
  %".4039" = add i64 %".4038", 8
  %"for_LDG.267" = inttoptr i64 %".4039" to ptr
  %".4040" = load float, ptr %"for_LDG.267"
  store float %".4040", ptr %"R36_Float32"
  ; LDG.E.SYS R37, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4043" = load ptr, ptr %"R8_Float32_PTR"
  %".4044" = ptrtoint ptr %".4043" to i64
  %".4045" = add i64 %".4044", 12
  %"for_LDG.268" = inttoptr i64 %".4045" to ptr
  %".4046" = load float, ptr %"for_LDG.268"
  store float %".4046", ptr %"R37_Float32"
  ; LDG.E.SYS R38, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4049" = load ptr, ptr %"R4_Float32_PTR"
  %".4050" = ptrtoint ptr %".4049" to i64
  %".4051" = add i64 %".4050", 12
  %"for_LDG.269" = inttoptr i64 %".4051" to ptr
  %".4052" = load float, ptr %"for_LDG.269"
  store float %".4052", ptr %"R38_Float32"
  ; LDG.E.SYS R39, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4055" = load ptr, ptr %"R6_Float32_PTR"
  %".4056" = ptrtoint ptr %".4055" to i64
  %".4057" = add i64 %".4056", 12
  %"for_LDG.270" = inttoptr i64 %".4057" to ptr
  %".4058" = load float, ptr %"for_LDG.270"
  store float %".4058", ptr %"R39_Float32"
  ; IADD3 R22, R22, -0x4, RZ
  %".4061" = load i32, ptr %"R22_Int32"
  %"add.245" = add i32 %".4061", -4
  %"add.246" = add i32 %"add.245", 0
  store i32 %"add.246", ptr %"R22_Int32"
  ; IADD3 R23, R23, 0x4, RZ
  %".4064" = load i32, ptr %"R23_Int32"
  %"add.247" = add i32 %".4064", 4
  %"add.248" = add i32 %"add.247", 0
  store i32 %"add.248", ptr %"R23_Int32"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".4067" = load i32, ptr %"R22_Int32"
  %".4068" = load i1, ptr %"PT_Bool"
  %"cmp.40" = icmp ne i32 %".4067", 0
  %".4069" = and i1 %"cmp.40", %".4068"
  ; FFMA R11, R11, R13, R44
  %".4071" = load float, ptr %"R11_Float32"
  %".4072" = load float, ptr %"R13_Float32"
  %".4073" = load float, ptr %"R44_Float32"
  %"fmul.217" = fmul float %".4071", %".4072"
  %"fadd.192" = fadd float %"fmul.217", %".4073"
  store float %"fadd.192", ptr %"R11_Float32"
  ; FFMA R10, R13, R10, R56
  %".4076" = load float, ptr %"R13_Float32"
  %".4077" = load float, ptr %"R10_Float32"
  %".4078" = load float, ptr %"R56_Float32"
  %"fmul.218" = fmul float %".4076", %".4077"
  %"fadd.193" = fadd float %"fmul.218", %".4078"
  store float %"fadd.193", ptr %"R10_Float32"
  ; FFMA R11, R12, R25, R11
  %".4081" = load float, ptr %"R12_Float32"
  %".4082" = load float, ptr %"R25_Float32"
  %".4083" = load float, ptr %"R11_Float32"
  %"fmul.219" = fmul float %".4081", %".4082"
  %"fadd.194" = fadd float %"fmul.219", %".4083"
  store float %"fadd.194", ptr %"R11_Float32"
  ; FFMA R10, R25, R24, R10
  %".4086" = load float, ptr %"R25_Float32"
  %".4087" = load float, ptr %"R24_Float32"
  %".4088" = load float, ptr %"R10_Float32"
  %"fmul.220" = fmul float %".4086", %".4087"
  %"fadd.195" = fadd float %"fmul.220", %".4088"
  store float %"fadd.195", ptr %"R10_Float32"
  ; FFMA R11, R34, R35, R11
  %".4091" = load float, ptr %"R34_Float32"
  %".4092" = load float, ptr %"R35_Float32"
  %".4093" = load float, ptr %"R11_Float32"
  %"fmul.221" = fmul float %".4091", %".4092"
  %"fadd.196" = fadd float %"fmul.221", %".4093"
  store float %"fadd.196", ptr %"R11_Float32"
  ; FFMA R10, R35, R36, R10
  %".4096" = load float, ptr %"R35_Float32"
  %".4097" = load float, ptr %"R36_Float32"
  %".4098" = load float, ptr %"R10_Float32"
  %"fmul.222" = fmul float %".4096", %".4097"
  %"fadd.197" = fadd float %"fmul.222", %".4098"
  store float %"fadd.197", ptr %"R10_Float32"
  ; FFMA R44, R38, R37, R11
  %".4101" = load float, ptr %"R38_Float32"
  %".4102" = load float, ptr %"R37_Float32"
  %".4103" = load float, ptr %"R11_Float32"
  %"fmul.223" = fmul float %".4101", %".4102"
  %"fadd.198" = fadd float %"fmul.223", %".4103"
  store float %"fadd.198", ptr %"R44_Float32"
  ; FFMA R56, R37, R39, R10
  %".4106" = load float, ptr %"R37_Float32"
  %".4107" = load float, ptr %"R39_Float32"
  %".4108" = load float, ptr %"R10_Float32"
  %"fmul.224" = fmul float %".4106", %".4107"
  %"fadd.199" = fadd float %"fmul.224", %".4108"
  store float %"fadd.199", ptr %"R56_Float32"
  ; @P0 BRA `(.L_x_28)
  %".4111" = load i1, ptr %"P0_Bool"
  %".4112" = icmp ne i1 %".4111", 1
  br i1 %".4112", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".4115" = load i32, ptr %"R48_Int32"
  %".4116" = load i1, ptr %"PT_Bool"
  %"cmp.41" = icmp ne i32 %".4115", 0
  %".4117" = and i1 %"cmp.41", %".4116"
  ; @!P0 BRA `(.L_x_26)
  %".4119" = load i1, ptr %"P0_Bool"
  %".4120" = icmp eq i1 %".4119", 1
  br i1 %".4120", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".4123" = load i32, ptr %"R0_Int32"
  %".4124" = load i32, ptr %"R23_Int32"
  %"add.249" = add i32 %".4123", %".4124"
  %"add.250" = add i32 %"add.249", 0
  store i32 %"add.250", ptr %"R5_Int32"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9_Int32"
  ; LEA R8, R2.reuse, R5, 0x2
  %".4129" = load i32, ptr %"R2_Int32"
  %".4130" = load i32, ptr %"R5_Int32"
  %"shl.21" = shl i32 %".4129", 2
  %"add.251" = add i32 %"shl.21", %".4130"
  store i32 %"add.251", ptr %"R8_Int32"
  ; IMAD R6, R2, 0x3, R5
  %".4133" = load i32, ptr %"R2_Int32"
  %".4134" = load i32, ptr %"R5_Int32"
  %"mul.86" = mul i32 %".4133", 3
  %"add.252" = add i32 %"mul.86", %".4134"
  store i32 %"add.252", ptr %"R6_Int32"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".4137" = load i32, ptr %"R23_Int32"
  %".4138" = load i32, ptr %"R9_Int32"
  %"mul.87" = mul i32 %".4137", %".4138"
  %"add.253" = add i32 %"mul.87", %"Arg_3"
  store i32 %"add.253", ptr %"R4_Int32"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".4141" = load i32, ptr %"R6_Int32"
  %".4142" = load i32, ptr %"R9_Int32"
  %"mul.88" = mul i32 %".4141", %".4142"
  %"add.254" = add i32 %"mul.88", %"Arg_4"
  store i32 %"add.254", ptr %"R6_Int32"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".4145" = load i32, ptr %"R8_Int32"
  %".4146" = load i32, ptr %"R9_Int32"
  %"mul.89" = mul i32 %".4145", %".4146"
  %"add.255" = add i32 %"mul.89", %"Arg_4"
  store i32 %"add.255", ptr %"R8_Int32"
  ; LDG.E.SYS R13, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4149" = load ptr, ptr %"R4_Float32_PTR"
  %".4150" = ptrtoint ptr %".4149" to i64
  %".4151" = add i64 %".4150", 0
  %"for_LDG.271" = inttoptr i64 %".4151" to ptr
  %".4152" = load float, ptr %"for_LDG.271"
  store float %".4152", ptr %"R13_Float32"
  ; LDG.E.SYS R11, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4155" = load ptr, ptr %"R6_Float32_PTR"
  %".4156" = ptrtoint ptr %".4155" to i64
  %".4157" = add i64 %".4156", 0
  %"for_LDG.272" = inttoptr i64 %".4157" to ptr
  %".4158" = load float, ptr %"for_LDG.272"
  store float %".4158", ptr %"R11_Float32"
  ; LDG.E.SYS R10, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4161" = load ptr, ptr %"R8_Float32_PTR"
  %".4162" = ptrtoint ptr %".4161" to i64
  %".4163" = add i64 %".4162", 0
  %"for_LDG.273" = inttoptr i64 %".4163" to ptr
  %".4164" = load float, ptr %"for_LDG.273"
  store float %".4164", ptr %"R10_Float32"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".4167" = load i32, ptr %"R48_Int32"
  %".4168" = load i1, ptr %"PT_Bool"
  %"cmp.42" = icmp ne i32 %".4167", 1
  %".4169" = and i1 %"cmp.42", %".4168"
  ; FFMA R44, R11, R13, R44
  %".4171" = load float, ptr %"R11_Float32"
  %".4172" = load float, ptr %"R13_Float32"
  %".4173" = load float, ptr %"R44_Float32"
  %"fmul.225" = fmul float %".4171", %".4172"
  %"fadd.200" = fadd float %"fmul.225", %".4173"
  store float %"fadd.200", ptr %"R44_Float32"
  ; FFMA R56, R13, R10, R56
  %".4176" = load float, ptr %"R13_Float32"
  %".4177" = load float, ptr %"R10_Float32"
  %".4178" = load float, ptr %"R56_Float32"
  %"fmul.226" = fmul float %".4176", %".4177"
  %"fadd.201" = fadd float %"fmul.226", %".4178"
  store float %"fadd.201", ptr %"R56_Float32"
  ; @!P0 BRA `(.L_x_26)
  %".4181" = load i1, ptr %"P0_Bool"
  %".4182" = icmp eq i1 %".4181", 1
  br i1 %".4182", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".4185" = load i32, ptr %"R48_Int32"
  %".4186" = load i1, ptr %"PT_Bool"
  %"cmp.43" = icmp ne i32 %".4185", 2
  %".4187" = and i1 %"cmp.43", %".4186"
  ; LDG.E.SYS R11, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4189" = load ptr, ptr %"R6_Float32_PTR"
  %".4190" = ptrtoint ptr %".4189" to i64
  %".4191" = add i64 %".4190", 4
  %"for_LDG.274" = inttoptr i64 %".4191" to ptr
  %".4192" = load float, ptr %"for_LDG.274"
  store float %".4192", ptr %"R11_Float32"
  ; LDG.E.SYS R13, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4195" = load ptr, ptr %"R4_Float32_PTR"
  %".4196" = ptrtoint ptr %".4195" to i64
  %".4197" = add i64 %".4196", 4
  %"for_LDG.275" = inttoptr i64 %".4197" to ptr
  %".4198" = load float, ptr %"for_LDG.275"
  store float %".4198", ptr %"R13_Float32"
  ; LDG.E.SYS R10, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4201" = load ptr, ptr %"R8_Float32_PTR"
  %".4202" = ptrtoint ptr %".4201" to i64
  %".4203" = add i64 %".4202", 4
  %"for_LDG.276" = inttoptr i64 %".4203" to ptr
  %".4204" = load float, ptr %"for_LDG.276"
  store float %".4204", ptr %"R10_Float32"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".4207" = load i1, ptr %"P0_Bool"
  %".4208" = icmp ne i1 %".4207", 1
  br i1 %".4208", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4211" = load ptr, ptr %"R6_Float32_PTR"
  %".4212" = ptrtoint ptr %".4211" to i64
  %".4213" = add i64 %".4212", 8
  %"for_LDG.277" = inttoptr i64 %".4213" to ptr
  %".4214" = load float, ptr %"for_LDG.277"
  store float %".4214", ptr %"R23_Float32"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".4219" = load i1, ptr %"P0_Bool"
  %".4220" = icmp ne i1 %".4219", 1
  br i1 %".4220", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4223" = load ptr, ptr %"R4_Float32_PTR"
  %".4224" = ptrtoint ptr %".4223" to i64
  %".4225" = add i64 %".4224", 8
  %"for_LDG.278" = inttoptr i64 %".4225" to ptr
  %".4226" = load float, ptr %"for_LDG.278"
  store float %".4226", ptr %"R25_Float32"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".4231" = load i1, ptr %"P0_Bool"
  %".4232" = icmp ne i1 %".4231", 1
  br i1 %".4232", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4235" = load ptr, ptr %"R8_Float32_PTR"
  %".4236" = ptrtoint ptr %".4235" to i64
  %".4237" = add i64 %".4236", 8
  %"for_LDG.279" = inttoptr i64 %".4237" to ptr
  %".4238" = load float, ptr %"for_LDG.279"
  store float %".4238", ptr %"R12_Float32"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".4243" = load float, ptr %"R11_Float32"
  %".4244" = load float, ptr %"R13_Float32"
  %".4245" = load float, ptr %"R44_Float32"
  %"fmul.227" = fmul float %".4243", %".4244"
  %"fadd.202" = fadd float %"fmul.227", %".4245"
  store float %"fadd.202", ptr %"R44_Float32"
  ; FFMA R56, R13, R10, R56
  %".4248" = load float, ptr %"R13_Float32"
  %".4249" = load float, ptr %"R10_Float32"
  %".4250" = load float, ptr %"R56_Float32"
  %"fmul.228" = fmul float %".4248", %".4249"
  %"fadd.203" = fadd float %"fmul.228", %".4250"
  store float %"fadd.203", ptr %"R56_Float32"
  ; @P0 FFMA R44, R23, R25, R44
  %".4253" = load i1, ptr %"P0_Bool"
  %".4254" = icmp ne i1 %".4253", 1
  br i1 %".4254", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".4257" = load float, ptr %"R23_Float32"
  %".4258" = load float, ptr %"R25_Float32"
  %".4259" = load float, ptr %"R44_Float32"
  %"fmul.229" = fmul float %".4257", %".4258"
  %"fadd.204" = fadd float %"fmul.229", %".4259"
  store float %"fadd.204", ptr %"R44_Float32"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".4264" = load i1, ptr %"P0_Bool"
  %".4265" = icmp ne i1 %".4264", 1
  br i1 %".4265", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".4268" = load float, ptr %"R25_Float32"
  %".4269" = load float, ptr %"R12_Float32"
  %".4270" = load float, ptr %"R56_Float32"
  %"fmul.230" = fmul float %".4268", %".4269"
  %"fadd.205" = fadd float %"fmul.230", %".4270"
  store float %"fadd.205", ptr %"R56_Float32"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R26_Float32_PTR", ptr %"R26_Int32", i32 4, i1 0)
  %".4275" = load ptr, ptr %"R26_Float32_PTR"
  %".4276" = ptrtoint ptr %".4275" to i64
  %".4277" = add i64 %".4276", 0
  %"for_LDG.280" = inttoptr i64 %".4277" to ptr
  %".4278" = load float, ptr %"for_LDG.280"
  store float %".4278", ptr %"R5_Float32"
  ; MOV R4, 0x3bbb989d
  store float 0x41cdddcc40000000, ptr %"R4_Float32"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  store float 0x41d0df0000000000, ptr %"R7_Float32"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".4287" = load float, ptr %"R5_Float32"
  %".4288" = load float, ptr %"R44_Float32"
  %"fadd.206" = fadd float %".4287", %".4288"
  store float %"fadd.206", ptr %"R5_Float32"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".4291" = load float, ptr %"R5_Float32"
  %".4292" = sub float              0x0, %".4291"
  %".4293" = load float, ptr %"R4_Float32"
  %"fmul.231" = fmul float %".4292", %".4293"
  %"fadd.207" = fadd float %"fmul.231", 0x3fe0000000000000
  store float %"fadd.207", ptr %"R4_Float32"
  ; FFMA.RM R4, R4, R7, 12582913
  %".4296" = load float, ptr %"R4_Float32"
  %".4297" = load float, ptr %"R7_Float32"
  %"fmul.232" = fmul float %".4296", %".4297"
  %"fadd.208" = fadd float %"fmul.232", 0x4168000020000000
  store float %"fadd.208", ptr %"R4_Float32"
  ; FADD R6, R4.reuse, -12583039
  %".4300" = load float, ptr %"R4_Float32"
  %"fadd.209" = fadd float %".4300", 0xc168000fe0000000
  store float %"fadd.209", ptr %"R6_Float32"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".4303" = icmp ult i32 23, 32
  %"SHF_min.4" = select  i1 %".4303", i32 23, i32 32
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Int32", ptr %"R4_Float32", i32 4, i1 0)
  %".4304" = load i32, ptr %"R4_Int32"
  %"zext.12" = zext i32 0 to i64
  %"zext.13" = zext i32 %".4304" to i64
  %"zext.14" = zext i32 23 to i64
  %"shl.22" = shl i64 %"zext.12", 32
  %"or.4" = or i64 %"shl.22", %"zext.13"
  %"shl.23" = shl i64 %"or.4", %"zext.14"
  %"and.2" = and i64 %"shl.23", 4294967295
  %"trunc32.4" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.4", ptr %"R4_Int32"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".4307" = load float, ptr %"R5_Float32"
  %".4308" = sub float              0x0, %".4307"
  %".4309" = load float, ptr %"R6_Float32"
  %".4310" = sub float              0x0, %".4309"
  %"fmul.233" = fmul float %".4308", 0x3ff7154760000000
  %"fadd.210" = fadd float %"fmul.233", %".4310"
  store float %"fadd.210", ptr %"R6_Float32"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".4313" = load float, ptr %"R5_Float32"
  %".4314" = sub float              0x0, %".4313"
  %".4315" = load float, ptr %"R6_Float32"
  %"fmul.234" = fmul float %".4314", 0x3e54ae0c00000000
  %"fadd.211" = fadd float %"fmul.234", %".4315"
  store float %"fadd.211", ptr %"R6_Float32"
  ; MUFU.EX2 R5, R6
  %".4318" = load float, ptr %"R6_Float32"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".4318")
  store float %"llvm_exp2_f32_result.3", ptr %"R5_Float32"
  ; FFMA R24, R4, R5, 1
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32", ptr %"R4_Int32", i32 4, i1 0)
  %".4321" = load float, ptr %"R4_Float32"
  %".4322" = load float, ptr %"R5_Float32"
  %"fmul.235" = fmul float %".4321", %".4322"
  %"fadd.212" = fadd float %"fmul.235", 0x3ff0000000000000
  store float %"fadd.212", ptr %"R24_Float32"
  ; IADD3 R4, R24, 0x1800000, RZ
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Int32", ptr %"R24_Float32", i32 4, i1 0)
  %".4325" = load i32, ptr %"R24_Int32"
  %"add.256" = add i32 %".4325", 25165824
  %"add.257" = add i32 %"add.256", 0
  store i32 %"add.257", ptr %"R4_Int32"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".4328" = load i32, ptr %"R4_Int32"
  %".4329" = and i32 %".4328", 2139095040
  store i32 %".4329", ptr %"R4_Int32"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".4332" = load i32, ptr %"R4_Int32"
  %".4333" = load i1, ptr %"PT_Bool"
  %"cmp.44" = icmp sgt i32 %".4332", 33554431
  %".4334" = and i1 %"cmp.44", %".4333"
  ; @P0 BRA `(.L_x_33)
  %".4336" = load i1, ptr %"P0_Bool"
  %".4337" = icmp ne i1 %".4336", 1
  br i1 %".4337", label %".L_x_33", label %".L_x_26_split_0x3910"
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
  %".4345" = load float, ptr %"R24_Float32"
  %".4346" = fdiv float 0x3ff0000000000000, %".4345"
  store float %".4346", ptr %"R22_Float32"
  ; FFMA R4, R24, R22, -1
  %".4349" = load float, ptr %"R24_Float32"
  %".4350" = load float, ptr %"R22_Float32"
  %"fmul.236" = fmul float %".4349", %".4350"
  %"fadd.213" = fadd float %"fmul.236", 0xbff0000000000000
  store float %"fadd.213", ptr %"R4_Float32"
  ; FADD.FTZ R5, -R4, -RZ
  %".4353" = load float, ptr %"R4_Float32"
  %".4354" = sub float              0x0, %".4353"
  %"fadd.214" = fadd float %".4354",              0x0
  store float %"fadd.214", ptr %"R5_Float32"
  ; FFMA R22, R22, R5, R22
  %".4357" = load float, ptr %"R22_Float32"
  %".4358" = load float, ptr %"R5_Float32"
  %".4359" = load float, ptr %"R22_Float32"
  %"fmul.237" = fmul float %".4357", %".4358"
  %"fadd.215" = fadd float %"fmul.237", %".4359"
  store float %"fadd.215", ptr %"R22_Float32"
.L_x_34:
  ; BSYNC B0
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R32_Float32_PTR", ptr %"R32_Int32", i32 4, i1 0)
  %".4363" = load ptr, ptr %"R32_Float32_PTR"
  %".4364" = ptrtoint ptr %".4363" to i64
  %".4365" = add i64 %".4364", 0
  %"for_LDG.281" = inttoptr i64 %".4365" to ptr
  %".4366" = load float, ptr %"for_LDG.281"
  store float %".4366", ptr %"R5_Float32"
  ; MOV R4, 0x3bbb989d
  store float 0x41cdddcc40000000, ptr %"R4_Float32"
  ; MOV R7, 0x437c0000
  store float 0x41d0df0000000000, ptr %"R7_Float32"
  ; FADD R5, R5, R56
  %".4373" = load float, ptr %"R5_Float32"
  %".4374" = load float, ptr %"R56_Float32"
  %"fadd.216" = fadd float %".4373", %".4374"
  store float %"fadd.216", ptr %"R5_Float32"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".4377" = load float, ptr %"R5_Float32"
  %".4378" = sub float              0x0, %".4377"
  %".4379" = load float, ptr %"R4_Float32"
  %"fmul.238" = fmul float %".4378", %".4379"
  %"fadd.217" = fadd float %"fmul.238", 0x3fe0000000000000
  store float %"fadd.217", ptr %"R4_Float32"
  ; FFMA.RM R4, R4, R7, 12582913
  %".4382" = load float, ptr %"R4_Float32"
  %".4383" = load float, ptr %"R7_Float32"
  %"fmul.239" = fmul float %".4382", %".4383"
  %"fadd.218" = fadd float %"fmul.239", 0x4168000020000000
  store float %"fadd.218", ptr %"R4_Float32"
  ; FADD R6, R4.reuse, -12583039
  %".4386" = load float, ptr %"R4_Float32"
  %"fadd.219" = fadd float %".4386", 0xc168000fe0000000
  store float %"fadd.219", ptr %"R6_Float32"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".4389" = icmp ult i32 23, 32
  %"SHF_min.5" = select  i1 %".4389", i32 23, i32 32
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Int32", ptr %"R4_Float32", i32 4, i1 0)
  %".4390" = load i32, ptr %"R4_Int32"
  %"zext.15" = zext i32 0 to i64
  %"zext.16" = zext i32 %".4390" to i64
  %"zext.17" = zext i32 23 to i64
  %"shl.24" = shl i64 %"zext.15", 32
  %"or.5" = or i64 %"shl.24", %"zext.16"
  %"shl.25" = shl i64 %"or.5", %"zext.17"
  %"and.3" = and i64 %"shl.25", 4294967295
  %"trunc32.5" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.5", ptr %"R23_Int32"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".4393" = load float, ptr %"R5_Float32"
  %".4394" = sub float              0x0, %".4393"
  %".4395" = load float, ptr %"R6_Float32"
  %".4396" = sub float              0x0, %".4395"
  %"fmul.240" = fmul float %".4394", 0x3ff7154760000000
  %"fadd.220" = fadd float %"fmul.240", %".4396"
  store float %"fadd.220", ptr %"R6_Float32"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".4399" = load float, ptr %"R5_Float32"
  %".4400" = sub float              0x0, %".4399"
  %".4401" = load float, ptr %"R6_Float32"
  %"fmul.241" = fmul float %".4400", 0x3e54ae0c00000000
  %"fadd.221" = fadd float %"fmul.241", %".4401"
  store float %"fadd.221", ptr %"R6_Float32"
  ; MUFU.EX2 R6, R6
  %".4404" = load float, ptr %"R6_Float32"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".4404")
  store float %"llvm_exp2_f32_result.4", ptr %"R6_Float32"
  ; FFMA R23, R23, R6, 1
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R23_Float32", ptr %"R23_Int32", i32 4, i1 0)
  %".4407" = load float, ptr %"R23_Float32"
  %".4408" = load float, ptr %"R6_Float32"
  %"fmul.242" = fmul float %".4407", %".4408"
  %"fadd.222" = fadd float %"fmul.242", 0x3ff0000000000000
  store float %"fadd.222", ptr %"R23_Float32"
  ; @!P4 BRA `(.L_x_35)
  %".4411" = load i1, ptr %"P4_Bool"
  %".4412" = icmp eq i1 %".4411", 1
  br i1 %".4412", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".4415" = load i32, ptr %"R18_Int32"
  %".4416" = load i1, ptr %"PT_Bool"
  %"cmp.45" = icmp sge i32 %".4415", 3
  %".4417" = and i1 %"cmp.45", %".4416"
  ; MOV R34, RZ
  %".4419" = load i32, ptr %"RZ_Int32"
  store i32 %".4419", ptr %"R34_Int32"
  ; @!P0 BRA `(.L_x_36)
  %".4422" = load i1, ptr %"P0_Bool"
  %".4423" = icmp eq i1 %".4422", 1
  br i1 %".4423", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".4426" = load i32, ptr %"R20_Int32"
  %".4427" = load i1, ptr %"PT_Bool"
  %"cmp.46" = icmp sgt i32 %".4426", 0
  %".4428" = and i1 %"cmp.46", %".4427"
  ; MOV R34, RZ
  %".4430" = load i32, ptr %"RZ_Int32"
  store i32 %".4430", ptr %"R34_Int32"
  ; MOV R35, R20
  %".4433" = load i32, ptr %"R20_Int32"
  store i32 %".4433", ptr %"R35_Int32"
  ; @!P0 BRA `(.L_x_37)
  %".4436" = load i1, ptr %"P0_Bool"
  %".4437" = icmp eq i1 %".4436", 1
  br i1 %".4437", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".4440" = load i32, ptr %"R35_Int32"
  %".4441" = load i1, ptr %"PT_Bool"
  %"cmp.47" = icmp sgt i32 %".4440", 12
  %".4442" = and i1 %"cmp.47", %".4441"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".4444" = and i1 1, 1
  %".4445" = or i1 %".4444", 1
  ; @!P1 BRA `(.L_x_38)
  %".4447" = load i1, ptr %"P1_Bool"
  %".4448" = icmp eq i1 %".4447", 1
  br i1 %".4448", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4451" = xor i1 1, 1
  %".4452" = and i1 %".4451", 1
  %".4453" = and i1 %".4452", 1
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41_Int32"
  ; IADD3 R10, R3, R34, RZ
  %".4457" = load i32, ptr %"R3_Int32"
  %".4458" = load i32, ptr %"R34_Int32"
  %"add.258" = add i32 %".4457", %".4458"
  %"add.259" = add i32 %"add.258", 0
  store i32 %"add.259", ptr %"R10_Int32"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".4461" = load i32, ptr %"R34_Int32"
  %".4462" = load i32, ptr %"R41_Int32"
  %"mul.90" = mul i32 %".4461", %".4462"
  %"add.260" = add i32 %"mul.90", %"Arg_3"
  store i32 %"add.260", ptr %"R12_Int32"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".4465" = load i32, ptr %"R10_Int32"
  %".4466" = load i32, ptr %"R41_Int32"
  %"mul.91" = mul i32 %".4465", %".4466"
  %"add.261" = add i32 %"mul.91", %"Arg_4"
  store i32 %"add.261", ptr %"R10_Int32"
  ; IADD3 R4, R34, 0x4, RZ
  %".4469" = load i32, ptr %"R34_Int32"
  %"add.262" = add i32 %".4469", 4
  %"add.263" = add i32 %"add.262", 0
  store i32 %"add.263", ptr %"R4_Int32"
  ; LDG.E.SYS R25, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4472" = load ptr, ptr %"R12_Float32_PTR"
  %".4473" = ptrtoint ptr %".4472" to i64
  %".4474" = add i64 %".4473", 0
  %"for_LDG.282" = inttoptr i64 %".4474" to ptr
  %".4475" = load float, ptr %"for_LDG.282"
  store float %".4475", ptr %"R25_Float32"
  ; IADD3 R6, R3, R4, RZ
  %".4478" = load i32, ptr %"R3_Int32"
  %".4479" = load i32, ptr %"R4_Int32"
  %"add.264" = add i32 %".4478", %".4479"
  %"add.265" = add i32 %"add.264", 0
  store i32 %"add.265", ptr %"R6_Int32"
  ; LDG.E.SYS R36, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4482" = load ptr, ptr %"R10_Float32_PTR"
  %".4483" = ptrtoint ptr %".4482" to i64
  %".4484" = add i64 %".4483", 0
  %"for_LDG.283" = inttoptr i64 %".4484" to ptr
  %".4485" = load float, ptr %"for_LDG.283"
  store float %".4485", ptr %"R36_Float32"
  ; LDG.E.SYS R37, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4488" = load ptr, ptr %"R12_Float32_PTR"
  %".4489" = ptrtoint ptr %".4488" to i64
  %".4490" = add i64 %".4489", 4
  %"for_LDG.284" = inttoptr i64 %".4490" to ptr
  %".4491" = load float, ptr %"for_LDG.284"
  store float %".4491", ptr %"R37_Float32"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".4494" = load i32, ptr %"R4_Int32"
  %".4495" = load i32, ptr %"R41_Int32"
  %"mul.92" = mul i32 %".4494", %".4495"
  %"add.266" = add i32 %"mul.92", %"Arg_3"
  store i32 %"add.266", ptr %"R4_Int32"
  ; LDG.E.SYS R24, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4498" = load ptr, ptr %"R10_Float32_PTR"
  %".4499" = ptrtoint ptr %".4498" to i64
  %".4500" = add i64 %".4499", 4
  %"for_LDG.285" = inttoptr i64 %".4500" to ptr
  %".4501" = load float, ptr %"for_LDG.285"
  store float %".4501", ptr %"R24_Float32"
  ; LDG.E.SYS R39, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4504" = load ptr, ptr %"R12_Float32_PTR"
  %".4505" = ptrtoint ptr %".4504" to i64
  %".4506" = add i64 %".4505", 8
  %"for_LDG.286" = inttoptr i64 %".4506" to ptr
  %".4507" = load float, ptr %"for_LDG.286"
  store float %".4507", ptr %"R39_Float32"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".4510" = load i32, ptr %"R6_Int32"
  %".4511" = load i32, ptr %"R41_Int32"
  %"mul.93" = mul i32 %".4510", %".4511"
  %"add.267" = add i32 %"mul.93", %"Arg_4"
  store i32 %"add.267", ptr %"R6_Int32"
  ; LDG.E.SYS R38, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4514" = load ptr, ptr %"R10_Float32_PTR"
  %".4515" = ptrtoint ptr %".4514" to i64
  %".4516" = add i64 %".4515", 8
  %"for_LDG.287" = inttoptr i64 %".4516" to ptr
  %".4517" = load float, ptr %"for_LDG.287"
  store float %".4517", ptr %"R38_Float32"
  ; LDG.E.SYS R43, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4520" = load ptr, ptr %"R12_Float32_PTR"
  %".4521" = ptrtoint ptr %".4520" to i64
  %".4522" = add i64 %".4521", 12
  %"for_LDG.288" = inttoptr i64 %".4522" to ptr
  %".4523" = load float, ptr %"for_LDG.288"
  store float %".4523", ptr %"R43_Float32"
  ; IADD3 R8, R34, 0x8, RZ
  %".4526" = load i32, ptr %"R34_Int32"
  %"add.268" = add i32 %".4526", 8
  %"add.269" = add i32 %"add.268", 0
  store i32 %"add.269", ptr %"R8_Int32"
  ; LDG.E.SYS R46, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4529" = load ptr, ptr %"R10_Float32_PTR"
  %".4530" = ptrtoint ptr %".4529" to i64
  %".4531" = add i64 %".4530", 12
  %"for_LDG.289" = inttoptr i64 %".4531" to ptr
  %".4532" = load float, ptr %"for_LDG.289"
  store float %".4532", ptr %"R46_Float32"
  ; LDG.E.SYS R51, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4535" = load ptr, ptr %"R4_Float32_PTR"
  %".4536" = ptrtoint ptr %".4535" to i64
  %".4537" = add i64 %".4536", 0
  %"for_LDG.290" = inttoptr i64 %".4537" to ptr
  %".4538" = load float, ptr %"for_LDG.290"
  store float %".4538", ptr %"R51_Float32"
  ; IADD3 R50, R3, R8, RZ
  %".4541" = load i32, ptr %"R3_Int32"
  %".4542" = load i32, ptr %"R8_Int32"
  %"add.270" = add i32 %".4541", %".4542"
  %"add.271" = add i32 %"add.270", 0
  store i32 %"add.271", ptr %"R50_Int32"
  ; LDG.E.SYS R44, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4545" = load ptr, ptr %"R6_Float32_PTR"
  %".4546" = ptrtoint ptr %".4545" to i64
  %".4547" = add i64 %".4546", 0
  %"for_LDG.291" = inttoptr i64 %".4547" to ptr
  %".4548" = load float, ptr %"for_LDG.291"
  store float %".4548", ptr %"R44_Float32"
  ; LDG.E.SYS R47, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4551" = load ptr, ptr %"R4_Float32_PTR"
  %".4552" = ptrtoint ptr %".4551" to i64
  %".4553" = add i64 %".4552", 4
  %"for_LDG.292" = inttoptr i64 %".4553" to ptr
  %".4554" = load float, ptr %"for_LDG.292"
  store float %".4554", ptr %"R47_Float32"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".4557" = load i32, ptr %"R8_Int32"
  %".4558" = load i32, ptr %"R41_Int32"
  %"mul.94" = mul i32 %".4557", %".4558"
  %"add.272" = add i32 %"mul.94", %"Arg_3"
  store i32 %"add.272", ptr %"R8_Int32"
  ; LDG.E.SYS R42, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4561" = load ptr, ptr %"R6_Float32_PTR"
  %".4562" = ptrtoint ptr %".4561" to i64
  %".4563" = add i64 %".4562", 4
  %"for_LDG.293" = inttoptr i64 %".4563" to ptr
  %".4564" = load float, ptr %"for_LDG.293"
  store float %".4564", ptr %"R42_Float32"
  ; LDG.E.SYS R45, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4567" = load ptr, ptr %"R4_Float32_PTR"
  %".4568" = ptrtoint ptr %".4567" to i64
  %".4569" = add i64 %".4568", 8
  %"for_LDG.294" = inttoptr i64 %".4569" to ptr
  %".4570" = load float, ptr %"for_LDG.294"
  store float %".4570", ptr %"R45_Float32"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".4573" = load i32, ptr %"R50_Int32"
  %".4574" = load i32, ptr %"R41_Int32"
  %"mul.95" = mul i32 %".4573", %".4574"
  %"add.273" = add i32 %"mul.95", %"Arg_4"
  store i32 %"add.273", ptr %"R10_Int32"
  ; LDG.E.SYS R40, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4577" = load ptr, ptr %"R6_Float32_PTR"
  %".4578" = ptrtoint ptr %".4577" to i64
  %".4579" = add i64 %".4578", 8
  %"for_LDG.295" = inttoptr i64 %".4579" to ptr
  %".4580" = load float, ptr %"for_LDG.295"
  store float %".4580", ptr %"R40_Float32"
  ; LDG.E.SYS R53, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4583" = load ptr, ptr %"R4_Float32_PTR"
  %".4584" = ptrtoint ptr %".4583" to i64
  %".4585" = add i64 %".4584", 12
  %"for_LDG.296" = inttoptr i64 %".4585" to ptr
  %".4586" = load float, ptr %"for_LDG.296"
  store float %".4586", ptr %"R53_Float32"
  ; IADD3 R12, R34, 0xc, RZ
  %".4589" = load i32, ptr %"R34_Int32"
  %"add.274" = add i32 %".4589", 12
  %"add.275" = add i32 %"add.274", 0
  store i32 %"add.275", ptr %"R12_Int32"
  ; LDG.E.SYS R54, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4592" = load ptr, ptr %"R6_Float32_PTR"
  %".4593" = ptrtoint ptr %".4592" to i64
  %".4594" = add i64 %".4593", 12
  %"for_LDG.297" = inttoptr i64 %".4594" to ptr
  %".4595" = load float, ptr %"for_LDG.297"
  store float %".4595", ptr %"R54_Float32"
  ; LDG.E.SYS R59, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4598" = load ptr, ptr %"R8_Float32_PTR"
  %".4599" = ptrtoint ptr %".4598" to i64
  %".4600" = add i64 %".4599", 0
  %"for_LDG.298" = inttoptr i64 %".4600" to ptr
  %".4601" = load float, ptr %"for_LDG.298"
  store float %".4601", ptr %"R59_Float32"
  ; IADD3 R58, R3, R12, RZ
  %".4604" = load i32, ptr %"R3_Int32"
  %".4605" = load i32, ptr %"R12_Int32"
  %"add.276" = add i32 %".4604", %".4605"
  %"add.277" = add i32 %"add.276", 0
  store i32 %"add.277", ptr %"R58_Int32"
  ; LDG.E.SYS R52, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4608" = load ptr, ptr %"R10_Float32_PTR"
  %".4609" = ptrtoint ptr %".4608" to i64
  %".4610" = add i64 %".4609", 0
  %"for_LDG.299" = inttoptr i64 %".4610" to ptr
  %".4611" = load float, ptr %"for_LDG.299"
  store float %".4611", ptr %"R52_Float32"
  ; LDG.E.SYS R57, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4614" = load ptr, ptr %"R8_Float32_PTR"
  %".4615" = ptrtoint ptr %".4614" to i64
  %".4616" = add i64 %".4615", 4
  %"for_LDG.300" = inttoptr i64 %".4616" to ptr
  %".4617" = load float, ptr %"for_LDG.300"
  store float %".4617", ptr %"R57_Float32"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".4620" = load i32, ptr %"R12_Int32"
  %".4621" = load i32, ptr %"R41_Int32"
  %"mul.96" = mul i32 %".4620", %".4621"
  %"add.278" = add i32 %"mul.96", %"Arg_3"
  store i32 %"add.278", ptr %"R12_Int32"
  ; LDG.E.SYS R50, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4624" = load ptr, ptr %"R10_Float32_PTR"
  %".4625" = ptrtoint ptr %".4624" to i64
  %".4626" = add i64 %".4625", 4
  %"for_LDG.301" = inttoptr i64 %".4626" to ptr
  %".4627" = load float, ptr %"for_LDG.301"
  store float %".4627", ptr %"R50_Float32"
  ; LDG.E.SYS R55, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4630" = load ptr, ptr %"R8_Float32_PTR"
  %".4631" = ptrtoint ptr %".4630" to i64
  %".4632" = add i64 %".4631", 8
  %"for_LDG.302" = inttoptr i64 %".4632" to ptr
  %".4633" = load float, ptr %"for_LDG.302"
  store float %".4633", ptr %"R55_Float32"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".4636" = load i32, ptr %"R58_Int32"
  %".4637" = load i32, ptr %"R41_Int32"
  %"mul.97" = mul i32 %".4636", %".4637"
  %"add.279" = add i32 %"mul.97", %"Arg_4"
  store i32 %"add.279", ptr %"R4_Int32"
  ; LDG.E.SYS R61, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4640" = load ptr, ptr %"R8_Float32_PTR"
  %".4641" = ptrtoint ptr %".4640" to i64
  %".4642" = add i64 %".4641", 12
  %"for_LDG.303" = inttoptr i64 %".4642" to ptr
  %".4643" = load float, ptr %"for_LDG.303"
  store float %".4643", ptr %"R61_Float32"
  ; LDG.E.SYS R56, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4646" = load ptr, ptr %"R10_Float32_PTR"
  %".4647" = ptrtoint ptr %".4646" to i64
  %".4648" = add i64 %".4647", 8
  %"for_LDG.304" = inttoptr i64 %".4648" to ptr
  %".4649" = load float, ptr %"for_LDG.304"
  store float %".4649", ptr %"R56_Float32"
  ; LDG.E.SYS R58, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4652" = load ptr, ptr %"R10_Float32_PTR"
  %".4653" = ptrtoint ptr %".4652" to i64
  %".4654" = add i64 %".4653", 12
  %"for_LDG.305" = inttoptr i64 %".4654" to ptr
  %".4655" = load float, ptr %"for_LDG.305"
  store float %".4655", ptr %"R58_Float32"
  ; LDG.E.SYS R6, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4658" = load ptr, ptr %"R12_Float32_PTR"
  %".4659" = ptrtoint ptr %".4658" to i64
  %".4660" = add i64 %".4659", 0
  %"for_LDG.306" = inttoptr i64 %".4660" to ptr
  %".4661" = load float, ptr %"for_LDG.306"
  store float %".4661", ptr %"R6_Float32"
  ; LDG.E.SYS R41, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4664" = load ptr, ptr %"R12_Float32_PTR"
  %".4665" = ptrtoint ptr %".4664" to i64
  %".4666" = add i64 %".4665", 4
  %"for_LDG.307" = inttoptr i64 %".4666" to ptr
  %".4667" = load float, ptr %"for_LDG.307"
  store float %".4667", ptr %"R41_Float32"
  ; LDG.E.SYS R10, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4670" = load ptr, ptr %"R4_Float32_PTR"
  %".4671" = ptrtoint ptr %".4670" to i64
  %".4672" = add i64 %".4671", 0
  %"for_LDG.308" = inttoptr i64 %".4672" to ptr
  %".4673" = load float, ptr %"for_LDG.308"
  store float %".4673", ptr %"R10_Float32"
  ; LDG.E.SYS R7, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4676" = load ptr, ptr %"R12_Float32_PTR"
  %".4677" = ptrtoint ptr %".4676" to i64
  %".4678" = add i64 %".4677", 8
  %"for_LDG.309" = inttoptr i64 %".4678" to ptr
  %".4679" = load float, ptr %"for_LDG.309"
  store float %".4679", ptr %"R7_Float32"
  ; LDG.E.SYS R9, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4682" = load ptr, ptr %"R4_Float32_PTR"
  %".4683" = ptrtoint ptr %".4682" to i64
  %".4684" = add i64 %".4683", 4
  %"for_LDG.310" = inttoptr i64 %".4684" to ptr
  %".4685" = load float, ptr %"for_LDG.310"
  store float %".4685", ptr %"R9_Float32"
  ; LDG.E.SYS R60, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4688" = load ptr, ptr %"R12_Float32_PTR"
  %".4689" = ptrtoint ptr %".4688" to i64
  %".4690" = add i64 %".4689", 12
  %"for_LDG.311" = inttoptr i64 %".4690" to ptr
  %".4691" = load float, ptr %"for_LDG.311"
  store float %".4691", ptr %"R60_Float32"
  ; LDG.E.SYS R8, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4694" = load ptr, ptr %"R4_Float32_PTR"
  %".4695" = ptrtoint ptr %".4694" to i64
  %".4696" = add i64 %".4695", 8
  %"for_LDG.312" = inttoptr i64 %".4696" to ptr
  %".4697" = load float, ptr %"for_LDG.312"
  store float %".4697", ptr %"R8_Float32"
  ; LDG.E.SYS R11, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4700" = load ptr, ptr %"R4_Float32_PTR"
  %".4701" = ptrtoint ptr %".4700" to i64
  %".4702" = add i64 %".4701", 12
  %"for_LDG.313" = inttoptr i64 %".4702" to ptr
  %".4703" = load float, ptr %"for_LDG.313"
  store float %".4703", ptr %"R11_Float32"
  ; IADD3 R35, R35, -0x10, RZ
  %".4706" = load i32, ptr %"R35_Int32"
  %"add.280" = add i32 %".4706", -16
  %"add.281" = add i32 %"add.280", 0
  store i32 %"add.281", ptr %"R35_Int32"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".4709" = load i32, ptr %"R35_Int32"
  %".4710" = load i1, ptr %"PT_Bool"
  %"cmp.48" = icmp sgt i32 %".4709", 12
  %".4711" = and i1 %"cmp.48", %".4710"
  ; IADD3 R34, R34, 0x10, RZ
  %".4713" = load i32, ptr %"R34_Int32"
  %"add.282" = add i32 %".4713", 16
  %"add.283" = add i32 %"add.282", 0
  store i32 %"add.283", ptr %"R34_Int32"
  ; FMUL R25, R25, R22
  %".4716" = load float, ptr %"R25_Float32"
  %".4717" = load float, ptr %"R22_Float32"
  %"fmul.243" = fmul float %".4716", %".4717"
  store float %"fmul.243", ptr %"R25_Float32"
  ; FFMA R25, R25, R36, R21
  %".4720" = load float, ptr %"R25_Float32"
  %".4721" = load float, ptr %"R36_Float32"
  %".4722" = load float, ptr %"R21_Float32"
  %"fmul.244" = fmul float %".4720", %".4721"
  %"fadd.223" = fadd float %"fmul.244", %".4722"
  store float %"fadd.223", ptr %"R25_Float32"
  ; FMUL R37, R37, R22
  %".4725" = load float, ptr %"R37_Float32"
  %".4726" = load float, ptr %"R22_Float32"
  %"fmul.245" = fmul float %".4725", %".4726"
  store float %"fmul.245", ptr %"R37_Float32"
  ; FFMA R25, R37, R24, R25
  %".4729" = load float, ptr %"R37_Float32"
  %".4730" = load float, ptr %"R24_Float32"
  %".4731" = load float, ptr %"R25_Float32"
  %"fmul.246" = fmul float %".4729", %".4730"
  %"fadd.224" = fadd float %"fmul.246", %".4731"
  store float %"fadd.224", ptr %"R25_Float32"
  ; FMUL R39, R39, R22
  %".4734" = load float, ptr %"R39_Float32"
  %".4735" = load float, ptr %"R22_Float32"
  %"fmul.247" = fmul float %".4734", %".4735"
  store float %"fmul.247", ptr %"R39_Float32"
  ; FFMA R25, R39, R38, R25
  %".4738" = load float, ptr %"R39_Float32"
  %".4739" = load float, ptr %"R38_Float32"
  %".4740" = load float, ptr %"R25_Float32"
  %"fmul.248" = fmul float %".4738", %".4739"
  %"fadd.225" = fadd float %"fmul.248", %".4740"
  store float %"fadd.225", ptr %"R25_Float32"
  ; FMUL R43, R43, R22
  %".4743" = load float, ptr %"R43_Float32"
  %".4744" = load float, ptr %"R22_Float32"
  %"fmul.249" = fmul float %".4743", %".4744"
  store float %"fmul.249", ptr %"R43_Float32"
  ; FFMA R25, R43, R46, R25
  %".4747" = load float, ptr %"R43_Float32"
  %".4748" = load float, ptr %"R46_Float32"
  %".4749" = load float, ptr %"R25_Float32"
  %"fmul.250" = fmul float %".4747", %".4748"
  %"fadd.226" = fadd float %"fmul.250", %".4749"
  store float %"fadd.226", ptr %"R25_Float32"
  ; FMUL R51, R51, R22
  %".4752" = load float, ptr %"R51_Float32"
  %".4753" = load float, ptr %"R22_Float32"
  %"fmul.251" = fmul float %".4752", %".4753"
  store float %"fmul.251", ptr %"R51_Float32"
  ; FFMA R25, R51, R44, R25
  %".4756" = load float, ptr %"R51_Float32"
  %".4757" = load float, ptr %"R44_Float32"
  %".4758" = load float, ptr %"R25_Float32"
  %"fmul.252" = fmul float %".4756", %".4757"
  %"fadd.227" = fadd float %"fmul.252", %".4758"
  store float %"fadd.227", ptr %"R25_Float32"
  ; FMUL R47, R47, R22
  %".4761" = load float, ptr %"R47_Float32"
  %".4762" = load float, ptr %"R22_Float32"
  %"fmul.253" = fmul float %".4761", %".4762"
  store float %"fmul.253", ptr %"R47_Float32"
  ; FFMA R25, R47, R42, R25
  %".4765" = load float, ptr %"R47_Float32"
  %".4766" = load float, ptr %"R42_Float32"
  %".4767" = load float, ptr %"R25_Float32"
  %"fmul.254" = fmul float %".4765", %".4766"
  %"fadd.228" = fadd float %"fmul.254", %".4767"
  store float %"fadd.228", ptr %"R25_Float32"
  ; FMUL R45, R45, R22
  %".4770" = load float, ptr %"R45_Float32"
  %".4771" = load float, ptr %"R22_Float32"
  %"fmul.255" = fmul float %".4770", %".4771"
  store float %"fmul.255", ptr %"R45_Float32"
  ; FFMA R25, R45, R40, R25
  %".4774" = load float, ptr %"R45_Float32"
  %".4775" = load float, ptr %"R40_Float32"
  %".4776" = load float, ptr %"R25_Float32"
  %"fmul.256" = fmul float %".4774", %".4775"
  %"fadd.229" = fadd float %"fmul.256", %".4776"
  store float %"fadd.229", ptr %"R25_Float32"
  ; FMUL R53, R53, R22
  %".4779" = load float, ptr %"R53_Float32"
  %".4780" = load float, ptr %"R22_Float32"
  %"fmul.257" = fmul float %".4779", %".4780"
  store float %"fmul.257", ptr %"R53_Float32"
  ; FFMA R25, R53, R54, R25
  %".4783" = load float, ptr %"R53_Float32"
  %".4784" = load float, ptr %"R54_Float32"
  %".4785" = load float, ptr %"R25_Float32"
  %"fmul.258" = fmul float %".4783", %".4784"
  %"fadd.230" = fadd float %"fmul.258", %".4785"
  store float %"fadd.230", ptr %"R25_Float32"
  ; FMUL R59, R59, R22
  %".4788" = load float, ptr %"R59_Float32"
  %".4789" = load float, ptr %"R22_Float32"
  %"fmul.259" = fmul float %".4788", %".4789"
  store float %"fmul.259", ptr %"R59_Float32"
  ; FFMA R25, R59, R52, R25
  %".4792" = load float, ptr %"R59_Float32"
  %".4793" = load float, ptr %"R52_Float32"
  %".4794" = load float, ptr %"R25_Float32"
  %"fmul.260" = fmul float %".4792", %".4793"
  %"fadd.231" = fadd float %"fmul.260", %".4794"
  store float %"fadd.231", ptr %"R25_Float32"
  ; FMUL R57, R57, R22
  %".4797" = load float, ptr %"R57_Float32"
  %".4798" = load float, ptr %"R22_Float32"
  %"fmul.261" = fmul float %".4797", %".4798"
  store float %"fmul.261", ptr %"R57_Float32"
  ; FFMA R25, R57, R50, R25
  %".4801" = load float, ptr %"R57_Float32"
  %".4802" = load float, ptr %"R50_Float32"
  %".4803" = load float, ptr %"R25_Float32"
  %"fmul.262" = fmul float %".4801", %".4802"
  %"fadd.232" = fadd float %"fmul.262", %".4803"
  store float %"fadd.232", ptr %"R25_Float32"
  ; FMUL R55, R55, R22.reuse
  %".4806" = load float, ptr %"R55_Float32"
  %".4807" = load float, ptr %"R22_Float32"
  %"fmul.263" = fmul float %".4806", %".4807"
  store float %"fmul.263", ptr %"R55_Float32"
  ; FMUL R61, R61, R22
  %".4810" = load float, ptr %"R61_Float32"
  %".4811" = load float, ptr %"R22_Float32"
  %"fmul.264" = fmul float %".4810", %".4811"
  store float %"fmul.264", ptr %"R61_Float32"
  ; FFMA R25, R55, R56, R25
  %".4814" = load float, ptr %"R55_Float32"
  %".4815" = load float, ptr %"R56_Float32"
  %".4816" = load float, ptr %"R25_Float32"
  %"fmul.265" = fmul float %".4814", %".4815"
  %"fadd.233" = fadd float %"fmul.265", %".4816"
  store float %"fadd.233", ptr %"R25_Float32"
  ; FFMA R25, R61, R58, R25
  %".4819" = load float, ptr %"R61_Float32"
  %".4820" = load float, ptr %"R58_Float32"
  %".4821" = load float, ptr %"R25_Float32"
  %"fmul.266" = fmul float %".4819", %".4820"
  %"fadd.234" = fadd float %"fmul.266", %".4821"
  store float %"fadd.234", ptr %"R25_Float32"
  ; FMUL R6, R6, R22.reuse
  %".4824" = load float, ptr %"R6_Float32"
  %".4825" = load float, ptr %"R22_Float32"
  %"fmul.267" = fmul float %".4824", %".4825"
  store float %"fmul.267", ptr %"R6_Float32"
  ; FMUL R41, R41, R22
  %".4828" = load float, ptr %"R41_Float32"
  %".4829" = load float, ptr %"R22_Float32"
  %"fmul.268" = fmul float %".4828", %".4829"
  store float %"fmul.268", ptr %"R41_Float32"
  ; FFMA R6, R6, R10, R25
  %".4832" = load float, ptr %"R6_Float32"
  %".4833" = load float, ptr %"R10_Float32"
  %".4834" = load float, ptr %"R25_Float32"
  %"fmul.269" = fmul float %".4832", %".4833"
  %"fadd.235" = fadd float %"fmul.269", %".4834"
  store float %"fadd.235", ptr %"R6_Float32"
  ; FMUL R7, R7, R22
  %".4837" = load float, ptr %"R7_Float32"
  %".4838" = load float, ptr %"R22_Float32"
  %"fmul.270" = fmul float %".4837", %".4838"
  store float %"fmul.270", ptr %"R7_Float32"
  ; FFMA R9, R41, R9, R6
  %".4841" = load float, ptr %"R41_Float32"
  %".4842" = load float, ptr %"R9_Float32"
  %".4843" = load float, ptr %"R6_Float32"
  %"fmul.271" = fmul float %".4841", %".4842"
  %"fadd.236" = fadd float %"fmul.271", %".4843"
  store float %"fadd.236", ptr %"R9_Float32"
  ; FMUL R60, R60, R22
  %".4846" = load float, ptr %"R60_Float32"
  %".4847" = load float, ptr %"R22_Float32"
  %"fmul.272" = fmul float %".4846", %".4847"
  store float %"fmul.272", ptr %"R60_Float32"
  ; FFMA R8, R7, R8, R9
  %".4850" = load float, ptr %"R7_Float32"
  %".4851" = load float, ptr %"R8_Float32"
  %".4852" = load float, ptr %"R9_Float32"
  %"fmul.273" = fmul float %".4850", %".4851"
  %"fadd.237" = fadd float %"fmul.273", %".4852"
  store float %"fadd.237", ptr %"R8_Float32"
  ; FFMA R21, R60, R11, R8
  %".4855" = load float, ptr %"R60_Float32"
  %".4856" = load float, ptr %"R11_Float32"
  %".4857" = load float, ptr %"R8_Float32"
  %"fmul.274" = fmul float %".4855", %".4856"
  %"fadd.238" = fadd float %"fmul.274", %".4857"
  store float %"fadd.238", ptr %"R21_Float32"
  ; @P1 BRA `(.L_x_39)
  %".4860" = load i1, ptr %"P1_Bool"
  %".4861" = icmp ne i1 %".4860", 1
  br i1 %".4861", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".4864" = load i32, ptr %"R35_Int32"
  %".4865" = load i1, ptr %"PT_Bool"
  %"cmp.49" = icmp sgt i32 %".4864", 4
  %".4866" = and i1 %"cmp.49", %".4865"
  ; @!P1 BRA `(.L_x_40)
  %".4868" = load i1, ptr %"P1_Bool"
  %".4869" = icmp eq i1 %".4868", 1
  br i1 %".4869", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11_Int32"
  ; IADD3 R6, R3, R34, RZ
  %".4874" = load i32, ptr %"R3_Int32"
  %".4875" = load i32, ptr %"R34_Int32"
  %"add.284" = add i32 %".4874", %".4875"
  %"add.285" = add i32 %"add.284", 0
  store i32 %"add.285", ptr %"R6_Int32"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".4878" = load i32, ptr %"R34_Int32"
  %".4879" = load i32, ptr %"R11_Int32"
  %"mul.98" = mul i32 %".4878", %".4879"
  %"add.286" = add i32 %"mul.98", %"Arg_3"
  store i32 %"add.286", ptr %"R8_Int32"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".4882" = load i32, ptr %"R6_Int32"
  %".4883" = load i32, ptr %"R11_Int32"
  %"mul.99" = mul i32 %".4882", %".4883"
  %"add.287" = add i32 %"mul.99", %"Arg_4"
  store i32 %"add.287", ptr %"R6_Int32"
  ; IADD3 R4, R34, 0x4, RZ
  %".4886" = load i32, ptr %"R34_Int32"
  %"add.288" = add i32 %".4886", 4
  %"add.289" = add i32 %"add.288", 0
  store i32 %"add.289", ptr %"R4_Int32"
  ; LDG.E.SYS R13, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4889" = load ptr, ptr %"R8_Float32_PTR"
  %".4890" = ptrtoint ptr %".4889" to i64
  %".4891" = add i64 %".4890", 0
  %"for_LDG.314" = inttoptr i64 %".4891" to ptr
  %".4892" = load float, ptr %"for_LDG.314"
  store float %".4892", ptr %"R13_Float32"
  ; IADD3 R10, R3, R4, RZ
  %".4895" = load i32, ptr %"R3_Int32"
  %".4896" = load i32, ptr %"R4_Int32"
  %"add.290" = add i32 %".4895", %".4896"
  %"add.291" = add i32 %"add.290", 0
  store i32 %"add.291", ptr %"R10_Int32"
  ; LDG.E.SYS R12, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4899" = load ptr, ptr %"R6_Float32_PTR"
  %".4900" = ptrtoint ptr %".4899" to i64
  %".4901" = add i64 %".4900", 0
  %"for_LDG.315" = inttoptr i64 %".4901" to ptr
  %".4902" = load float, ptr %"for_LDG.315"
  store float %".4902", ptr %"R12_Float32"
  ; LDG.E.SYS R25, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4905" = load ptr, ptr %"R8_Float32_PTR"
  %".4906" = ptrtoint ptr %".4905" to i64
  %".4907" = add i64 %".4906", 4
  %"for_LDG.316" = inttoptr i64 %".4907" to ptr
  %".4908" = load float, ptr %"for_LDG.316"
  store float %".4908", ptr %"R25_Float32"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".4911" = load i32, ptr %"R4_Int32"
  %".4912" = load i32, ptr %"R11_Int32"
  %"mul.100" = mul i32 %".4911", %".4912"
  %"add.292" = add i32 %"mul.100", %"Arg_3"
  store i32 %"add.292", ptr %"R4_Int32"
  ; LDG.E.SYS R24, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4915" = load ptr, ptr %"R6_Float32_PTR"
  %".4916" = ptrtoint ptr %".4915" to i64
  %".4917" = add i64 %".4916", 4
  %"for_LDG.317" = inttoptr i64 %".4917" to ptr
  %".4918" = load float, ptr %"for_LDG.317"
  store float %".4918", ptr %"R24_Float32"
  ; LDG.E.SYS R37, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4921" = load ptr, ptr %"R8_Float32_PTR"
  %".4922" = ptrtoint ptr %".4921" to i64
  %".4923" = add i64 %".4922", 8
  %"for_LDG.318" = inttoptr i64 %".4923" to ptr
  %".4924" = load float, ptr %"for_LDG.318"
  store float %".4924", ptr %"R37_Float32"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".4927" = load i32, ptr %"R10_Int32"
  %".4928" = load i32, ptr %"R11_Int32"
  %"mul.101" = mul i32 %".4927", %".4928"
  %"add.293" = add i32 %"mul.101", %"Arg_4"
  store i32 %"add.293", ptr %"R10_Int32"
  ; LDG.E.SYS R36, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4931" = load ptr, ptr %"R6_Float32_PTR"
  %".4932" = ptrtoint ptr %".4931" to i64
  %".4933" = add i64 %".4932", 8
  %"for_LDG.319" = inttoptr i64 %".4933" to ptr
  %".4934" = load float, ptr %"for_LDG.319"
  store float %".4934", ptr %"R36_Float32"
  ; LDG.E.SYS R39, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4937" = load ptr, ptr %"R8_Float32_PTR"
  %".4938" = ptrtoint ptr %".4937" to i64
  %".4939" = add i64 %".4938", 12
  %"for_LDG.320" = inttoptr i64 %".4939" to ptr
  %".4940" = load float, ptr %"for_LDG.320"
  store float %".4940", ptr %"R39_Float32"
  ; LDG.E.SYS R38, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4943" = load ptr, ptr %"R6_Float32_PTR"
  %".4944" = ptrtoint ptr %".4943" to i64
  %".4945" = add i64 %".4944", 12
  %"for_LDG.321" = inttoptr i64 %".4945" to ptr
  %".4946" = load float, ptr %"for_LDG.321"
  store float %".4946", ptr %"R38_Float32"
  ; LDG.E.SYS R41, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4949" = load ptr, ptr %"R4_Float32_PTR"
  %".4950" = ptrtoint ptr %".4949" to i64
  %".4951" = add i64 %".4950", 0
  %"for_LDG.322" = inttoptr i64 %".4951" to ptr
  %".4952" = load float, ptr %"for_LDG.322"
  store float %".4952", ptr %"R41_Float32"
  ; LDG.E.SYS R40, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4955" = load ptr, ptr %"R10_Float32_PTR"
  %".4956" = ptrtoint ptr %".4955" to i64
  %".4957" = add i64 %".4956", 0
  %"for_LDG.323" = inttoptr i64 %".4957" to ptr
  %".4958" = load float, ptr %"for_LDG.323"
  store float %".4958", ptr %"R40_Float32"
  ; LDG.E.SYS R43, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4961" = load ptr, ptr %"R4_Float32_PTR"
  %".4962" = ptrtoint ptr %".4961" to i64
  %".4963" = add i64 %".4962", 4
  %"for_LDG.324" = inttoptr i64 %".4963" to ptr
  %".4964" = load float, ptr %"for_LDG.324"
  store float %".4964", ptr %"R43_Float32"
  ; LDG.E.SYS R42, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4967" = load ptr, ptr %"R10_Float32_PTR"
  %".4968" = ptrtoint ptr %".4967" to i64
  %".4969" = add i64 %".4968", 4
  %"for_LDG.325" = inttoptr i64 %".4969" to ptr
  %".4970" = load float, ptr %"for_LDG.325"
  store float %".4970", ptr %"R42_Float32"
  ; LDG.E.SYS R45, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4973" = load ptr, ptr %"R4_Float32_PTR"
  %".4974" = ptrtoint ptr %".4973" to i64
  %".4975" = add i64 %".4974", 8
  %"for_LDG.326" = inttoptr i64 %".4975" to ptr
  %".4976" = load float, ptr %"for_LDG.326"
  store float %".4976", ptr %"R45_Float32"
  ; LDG.E.SYS R47, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4979" = load ptr, ptr %"R4_Float32_PTR"
  %".4980" = ptrtoint ptr %".4979" to i64
  %".4981" = add i64 %".4980", 12
  %"for_LDG.327" = inttoptr i64 %".4981" to ptr
  %".4982" = load float, ptr %"for_LDG.327"
  store float %".4982", ptr %"R47_Float32"
  ; LDG.E.SYS R44, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4985" = load ptr, ptr %"R10_Float32_PTR"
  %".4986" = ptrtoint ptr %".4985" to i64
  %".4987" = add i64 %".4986", 8
  %"for_LDG.328" = inttoptr i64 %".4987" to ptr
  %".4988" = load float, ptr %"for_LDG.328"
  store float %".4988", ptr %"R44_Float32"
  ; LDG.E.SYS R46, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4991" = load ptr, ptr %"R10_Float32_PTR"
  %".4992" = ptrtoint ptr %".4991" to i64
  %".4993" = add i64 %".4992", 12
  %"for_LDG.329" = inttoptr i64 %".4993" to ptr
  %".4994" = load float, ptr %"for_LDG.329"
  store float %".4994", ptr %"R46_Float32"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4997" = xor i1 1, 1
  %".4998" = and i1 %".4997", 1
  %".4999" = and i1 %".4998", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".5001" = load i32, ptr %"R35_Int32"
  %"add.294" = add i32 %".5001", -8
  %"add.295" = add i32 %"add.294", 0
  store i32 %"add.295", ptr %"R35_Int32"
  ; IADD3 R34, R34, 0x8, RZ
  %".5004" = load i32, ptr %"R34_Int32"
  %"add.296" = add i32 %".5004", 8
  %"add.297" = add i32 %"add.296", 0
  store i32 %"add.297", ptr %"R34_Int32"
  ; FMUL R8, R13, R22
  %".5007" = load float, ptr %"R13_Float32"
  %".5008" = load float, ptr %"R22_Float32"
  %"fmul.275" = fmul float %".5007", %".5008"
  store float %"fmul.275", ptr %"R8_Float32"
  ; FFMA R8, R8, R12, R21
  %".5011" = load float, ptr %"R8_Float32"
  %".5012" = load float, ptr %"R12_Float32"
  %".5013" = load float, ptr %"R21_Float32"
  %"fmul.276" = fmul float %".5011", %".5012"
  %"fadd.239" = fadd float %"fmul.276", %".5013"
  store float %"fadd.239", ptr %"R8_Float32"
  ; FMUL R25, R25, R22
  %".5016" = load float, ptr %"R25_Float32"
  %".5017" = load float, ptr %"R22_Float32"
  %"fmul.277" = fmul float %".5016", %".5017"
  store float %"fmul.277", ptr %"R25_Float32"
  ; FFMA R8, R25, R24, R8
  %".5020" = load float, ptr %"R25_Float32"
  %".5021" = load float, ptr %"R24_Float32"
  %".5022" = load float, ptr %"R8_Float32"
  %"fmul.278" = fmul float %".5020", %".5021"
  %"fadd.240" = fadd float %"fmul.278", %".5022"
  store float %"fadd.240", ptr %"R8_Float32"
  ; FMUL R37, R37, R22
  %".5025" = load float, ptr %"R37_Float32"
  %".5026" = load float, ptr %"R22_Float32"
  %"fmul.279" = fmul float %".5025", %".5026"
  store float %"fmul.279", ptr %"R37_Float32"
  ; FFMA R8, R37, R36, R8
  %".5029" = load float, ptr %"R37_Float32"
  %".5030" = load float, ptr %"R36_Float32"
  %".5031" = load float, ptr %"R8_Float32"
  %"fmul.280" = fmul float %".5029", %".5030"
  %"fadd.241" = fadd float %"fmul.280", %".5031"
  store float %"fadd.241", ptr %"R8_Float32"
  ; FMUL R39, R39, R22
  %".5034" = load float, ptr %"R39_Float32"
  %".5035" = load float, ptr %"R22_Float32"
  %"fmul.281" = fmul float %".5034", %".5035"
  store float %"fmul.281", ptr %"R39_Float32"
  ; FFMA R8, R39, R38, R8
  %".5038" = load float, ptr %"R39_Float32"
  %".5039" = load float, ptr %"R38_Float32"
  %".5040" = load float, ptr %"R8_Float32"
  %"fmul.282" = fmul float %".5038", %".5039"
  %"fadd.242" = fadd float %"fmul.282", %".5040"
  store float %"fadd.242", ptr %"R8_Float32"
  ; FMUL R41, R41, R22
  %".5043" = load float, ptr %"R41_Float32"
  %".5044" = load float, ptr %"R22_Float32"
  %"fmul.283" = fmul float %".5043", %".5044"
  store float %"fmul.283", ptr %"R41_Float32"
  ; FFMA R8, R41, R40, R8
  %".5047" = load float, ptr %"R41_Float32"
  %".5048" = load float, ptr %"R40_Float32"
  %".5049" = load float, ptr %"R8_Float32"
  %"fmul.284" = fmul float %".5047", %".5048"
  %"fadd.243" = fadd float %"fmul.284", %".5049"
  store float %"fadd.243", ptr %"R8_Float32"
  ; FMUL R43, R43, R22
  %".5052" = load float, ptr %"R43_Float32"
  %".5053" = load float, ptr %"R22_Float32"
  %"fmul.285" = fmul float %".5052", %".5053"
  store float %"fmul.285", ptr %"R43_Float32"
  ; FFMA R8, R43, R42, R8
  %".5056" = load float, ptr %"R43_Float32"
  %".5057" = load float, ptr %"R42_Float32"
  %".5058" = load float, ptr %"R8_Float32"
  %"fmul.286" = fmul float %".5056", %".5057"
  %"fadd.244" = fadd float %"fmul.286", %".5058"
  store float %"fadd.244", ptr %"R8_Float32"
  ; FMUL R45, R45, R22.reuse
  %".5061" = load float, ptr %"R45_Float32"
  %".5062" = load float, ptr %"R22_Float32"
  %"fmul.287" = fmul float %".5061", %".5062"
  store float %"fmul.287", ptr %"R45_Float32"
  ; FMUL R47, R47, R22
  %".5065" = load float, ptr %"R47_Float32"
  %".5066" = load float, ptr %"R22_Float32"
  %"fmul.288" = fmul float %".5065", %".5066"
  store float %"fmul.288", ptr %"R47_Float32"
  ; FFMA R8, R45, R44, R8
  %".5069" = load float, ptr %"R45_Float32"
  %".5070" = load float, ptr %"R44_Float32"
  %".5071" = load float, ptr %"R8_Float32"
  %"fmul.289" = fmul float %".5069", %".5070"
  %"fadd.245" = fadd float %"fmul.289", %".5071"
  store float %"fadd.245", ptr %"R8_Float32"
  ; FFMA R21, R47, R46, R8
  %".5074" = load float, ptr %"R47_Float32"
  %".5075" = load float, ptr %"R46_Float32"
  %".5076" = load float, ptr %"R8_Float32"
  %"fmul.290" = fmul float %".5074", %".5075"
  %"fadd.246" = fadd float %"fmul.290", %".5076"
  store float %"fadd.246", ptr %"R21_Float32"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".5079" = load i32, ptr %"R35_Int32"
  %".5080" = load i1, ptr %"PT_Bool"
  %"cmp.50" = icmp ne i32 %".5079", 0
  %".5081" = or i1 %"cmp.50", %".5080"
  ; @!P0 BRA `(.L_x_36)
  %".5083" = load i1, ptr %"P0_Bool"
  %".5084" = icmp eq i1 %".5083", 1
  br i1 %".5084", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7_Int32"
  ; IADD3 R6, R3, R34, RZ
  %".5089" = load i32, ptr %"R3_Int32"
  %".5090" = load i32, ptr %"R34_Int32"
  %"add.298" = add i32 %".5089", %".5090"
  %"add.299" = add i32 %"add.298", 0
  store i32 %"add.299", ptr %"R6_Int32"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".5093" = load i32, ptr %"R34_Int32"
  %".5094" = load i32, ptr %"R7_Int32"
  %"mul.102" = mul i32 %".5093", %".5094"
  %"add.300" = add i32 %"mul.102", %"Arg_3"
  store i32 %"add.300", ptr %"R4_Int32"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".5097" = load i32, ptr %"R6_Int32"
  %".5098" = load i32, ptr %"R7_Int32"
  %"mul.103" = mul i32 %".5097", %".5098"
  %"add.301" = add i32 %"mul.103", %"Arg_4"
  store i32 %"add.301", ptr %"R6_Int32"
  ; LDG.E.SYS R9, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5101" = load ptr, ptr %"R4_Float32_PTR"
  %".5102" = ptrtoint ptr %".5101" to i64
  %".5103" = add i64 %".5102", 0
  %"for_LDG.330" = inttoptr i64 %".5103" to ptr
  %".5104" = load float, ptr %"for_LDG.330"
  store float %".5104", ptr %"R9_Float32"
  ; LDG.E.SYS R10, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".5107" = load ptr, ptr %"R6_Float32_PTR"
  %".5108" = ptrtoint ptr %".5107" to i64
  %".5109" = add i64 %".5108", 0
  %"for_LDG.331" = inttoptr i64 %".5109" to ptr
  %".5110" = load float, ptr %"for_LDG.331"
  store float %".5110", ptr %"R10_Float32"
  ; LDG.E.SYS R11, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5113" = load ptr, ptr %"R4_Float32_PTR"
  %".5114" = ptrtoint ptr %".5113" to i64
  %".5115" = add i64 %".5114", 4
  %"for_LDG.332" = inttoptr i64 %".5115" to ptr
  %".5116" = load float, ptr %"for_LDG.332"
  store float %".5116", ptr %"R11_Float32"
  ; LDG.E.SYS R12, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".5119" = load ptr, ptr %"R6_Float32_PTR"
  %".5120" = ptrtoint ptr %".5119" to i64
  %".5121" = add i64 %".5120", 4
  %"for_LDG.333" = inttoptr i64 %".5121" to ptr
  %".5122" = load float, ptr %"for_LDG.333"
  store float %".5122", ptr %"R12_Float32"
  ; LDG.E.SYS R13, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5125" = load ptr, ptr %"R4_Float32_PTR"
  %".5126" = ptrtoint ptr %".5125" to i64
  %".5127" = add i64 %".5126", 8
  %"for_LDG.334" = inttoptr i64 %".5127" to ptr
  %".5128" = load float, ptr %"for_LDG.334"
  store float %".5128", ptr %"R13_Float32"
  ; LDG.E.SYS R24, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".5131" = load ptr, ptr %"R6_Float32_PTR"
  %".5132" = ptrtoint ptr %".5131" to i64
  %".5133" = add i64 %".5132", 8
  %"for_LDG.335" = inttoptr i64 %".5133" to ptr
  %".5134" = load float, ptr %"for_LDG.335"
  store float %".5134", ptr %"R24_Float32"
  ; LDG.E.SYS R25, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5137" = load ptr, ptr %"R4_Float32_PTR"
  %".5138" = ptrtoint ptr %".5137" to i64
  %".5139" = add i64 %".5138", 12
  %"for_LDG.336" = inttoptr i64 %".5139" to ptr
  %".5140" = load float, ptr %"for_LDG.336"
  store float %".5140", ptr %"R25_Float32"
  ; LDG.E.SYS R36, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".5143" = load ptr, ptr %"R6_Float32_PTR"
  %".5144" = ptrtoint ptr %".5143" to i64
  %".5145" = add i64 %".5144", 12
  %"for_LDG.337" = inttoptr i64 %".5145" to ptr
  %".5146" = load float, ptr %"for_LDG.337"
  store float %".5146", ptr %"R36_Float32"
  ; IADD3 R35, R35, -0x4, RZ
  %".5149" = load i32, ptr %"R35_Int32"
  %"add.302" = add i32 %".5149", -4
  %"add.303" = add i32 %"add.302", 0
  store i32 %"add.303", ptr %"R35_Int32"
  ; IADD3 R34, R34, 0x4, RZ
  %".5152" = load i32, ptr %"R34_Int32"
  %"add.304" = add i32 %".5152", 4
  %"add.305" = add i32 %"add.304", 0
  store i32 %"add.305", ptr %"R34_Int32"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".5155" = load i32, ptr %"R35_Int32"
  %".5156" = load i1, ptr %"PT_Bool"
  %"cmp.51" = icmp ne i32 %".5155", 0
  %".5157" = and i1 %"cmp.51", %".5156"
  ; FMUL R8, R9, R22
  %".5159" = load float, ptr %"R9_Float32"
  %".5160" = load float, ptr %"R22_Float32"
  %"fmul.291" = fmul float %".5159", %".5160"
  store float %"fmul.291", ptr %"R8_Float32"
  ; FFMA R8, R8, R10, R21
  %".5163" = load float, ptr %"R8_Float32"
  %".5164" = load float, ptr %"R10_Float32"
  %".5165" = load float, ptr %"R21_Float32"
  %"fmul.292" = fmul float %".5163", %".5164"
  %"fadd.247" = fadd float %"fmul.292", %".5165"
  store float %"fadd.247", ptr %"R8_Float32"
  ; FMUL R11, R11, R22
  %".5168" = load float, ptr %"R11_Float32"
  %".5169" = load float, ptr %"R22_Float32"
  %"fmul.293" = fmul float %".5168", %".5169"
  store float %"fmul.293", ptr %"R11_Float32"
  ; FFMA R8, R11, R12, R8
  %".5172" = load float, ptr %"R11_Float32"
  %".5173" = load float, ptr %"R12_Float32"
  %".5174" = load float, ptr %"R8_Float32"
  %"fmul.294" = fmul float %".5172", %".5173"
  %"fadd.248" = fadd float %"fmul.294", %".5174"
  store float %"fadd.248", ptr %"R8_Float32"
  ; FMUL R13, R13, R22
  %".5177" = load float, ptr %"R13_Float32"
  %".5178" = load float, ptr %"R22_Float32"
  %"fmul.295" = fmul float %".5177", %".5178"
  store float %"fmul.295", ptr %"R13_Float32"
  ; FFMA R8, R13, R24, R8
  %".5181" = load float, ptr %"R13_Float32"
  %".5182" = load float, ptr %"R24_Float32"
  %".5183" = load float, ptr %"R8_Float32"
  %"fmul.296" = fmul float %".5181", %".5182"
  %"fadd.249" = fadd float %"fmul.296", %".5183"
  store float %"fadd.249", ptr %"R8_Float32"
  ; FMUL R25, R25, R22
  %".5186" = load float, ptr %"R25_Float32"
  %".5187" = load float, ptr %"R22_Float32"
  %"fmul.297" = fmul float %".5186", %".5187"
  store float %"fmul.297", ptr %"R25_Float32"
  ; FFMA R21, R25, R36, R8
  %".5190" = load float, ptr %"R25_Float32"
  %".5191" = load float, ptr %"R36_Float32"
  %".5192" = load float, ptr %"R8_Float32"
  %"fmul.298" = fmul float %".5190", %".5191"
  %"fadd.250" = fadd float %"fmul.298", %".5192"
  store float %"fadd.250", ptr %"R21_Float32"
  ; @P0 BRA `(.L_x_37)
  %".5195" = load i1, ptr %"P0_Bool"
  %".5196" = icmp ne i1 %".5195", 1
  br i1 %".5196", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".5199" = load i32, ptr %"R48_Int32"
  %".5200" = load i1, ptr %"PT_Bool"
  %"cmp.52" = icmp ne i32 %".5199", 0
  %".5201" = and i1 %"cmp.52", %".5200"
  ; @!P0 BRA `(.L_x_35)
  %".5203" = load i1, ptr %"P0_Bool"
  %".5204" = icmp eq i1 %".5203", 1
  br i1 %".5204", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5_Int32"
  ; IADD3 R4, R3, R34, RZ
  %".5209" = load i32, ptr %"R3_Int32"
  %".5210" = load i32, ptr %"R34_Int32"
  %"add.306" = add i32 %".5209", %".5210"
  %"add.307" = add i32 %"add.306", 0
  store i32 %"add.307", ptr %"R4_Int32"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".5213" = load i32, ptr %"R34_Int32"
  %".5214" = load i32, ptr %"R5_Int32"
  %"mul.104" = mul i32 %".5213", %".5214"
  %"add.308" = add i32 %"mul.104", %"Arg_3"
  store i32 %"add.308", ptr %"R34_Int32"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".5217" = load i32, ptr %"R4_Int32"
  %".5218" = load i32, ptr %"R5_Int32"
  %"mul.105" = mul i32 %".5217", %".5218"
  %"add.309" = add i32 %"mul.105", %"Arg_4"
  store i32 %"add.309", ptr %"R4_Int32"
  ; LDG.E.SYS R7, [R34]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".5221" = load ptr, ptr %"R34_Float32_PTR"
  %".5222" = ptrtoint ptr %".5221" to i64
  %".5223" = add i64 %".5222", 0
  %"for_LDG.338" = inttoptr i64 %".5223" to ptr
  %".5224" = load float, ptr %"for_LDG.338"
  store float %".5224", ptr %"R7_Float32"
  ; LDG.E.SYS R8, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5227" = load ptr, ptr %"R4_Float32_PTR"
  %".5228" = ptrtoint ptr %".5227" to i64
  %".5229" = add i64 %".5228", 0
  %"for_LDG.339" = inttoptr i64 %".5229" to ptr
  %".5230" = load float, ptr %"for_LDG.339"
  store float %".5230", ptr %"R8_Float32"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".5233" = load i32, ptr %"R48_Int32"
  %".5234" = load i1, ptr %"PT_Bool"
  %"cmp.53" = icmp ne i32 %".5233", 1
  %".5235" = and i1 %"cmp.53", %".5234"
  ; FMUL R6, R7, R22
  %".5237" = load float, ptr %"R7_Float32"
  %".5238" = load float, ptr %"R22_Float32"
  %"fmul.299" = fmul float %".5237", %".5238"
  store float %"fmul.299", ptr %"R6_Float32"
  ; FFMA R21, R6, R8, R21
  %".5241" = load float, ptr %"R6_Float32"
  %".5242" = load float, ptr %"R8_Float32"
  %".5243" = load float, ptr %"R21_Float32"
  %"fmul.300" = fmul float %".5241", %".5242"
  %"fadd.251" = fadd float %"fmul.300", %".5243"
  store float %"fadd.251", ptr %"R21_Float32"
  ; @!P0 BRA `(.L_x_35)
  %".5246" = load i1, ptr %"P0_Bool"
  %".5247" = icmp eq i1 %".5246", 1
  br i1 %".5247", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".5250" = load i32, ptr %"R48_Int32"
  %".5251" = load i1, ptr %"PT_Bool"
  %"cmp.54" = icmp ne i32 %".5250", 2
  %".5252" = and i1 %"cmp.54", %".5251"
  ; LDG.E.SYS R7, [R34+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".5254" = load ptr, ptr %"R34_Float32_PTR"
  %".5255" = ptrtoint ptr %".5254" to i64
  %".5256" = add i64 %".5255", 4
  %"for_LDG.340" = inttoptr i64 %".5256" to ptr
  %".5257" = load float, ptr %"for_LDG.340"
  store float %".5257", ptr %"R7_Float32"
  ; LDG.E.SYS R8, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5260" = load ptr, ptr %"R4_Float32_PTR"
  %".5261" = ptrtoint ptr %".5260" to i64
  %".5262" = add i64 %".5261", 4
  %"for_LDG.341" = inttoptr i64 %".5262" to ptr
  %".5263" = load float, ptr %"for_LDG.341"
  store float %".5263", ptr %"R8_Float32"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".5266" = load i1, ptr %"P0_Bool"
  %".5267" = icmp ne i1 %".5266", 1
  br i1 %".5267", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".5270" = load ptr, ptr %"R34_Float32_PTR"
  %".5271" = ptrtoint ptr %".5270" to i64
  %".5272" = add i64 %".5271", 8
  %"for_LDG.342" = inttoptr i64 %".5272" to ptr
  %".5273" = load float, ptr %"for_LDG.342"
  store float %".5273", ptr %"R9_Float32"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".5278" = load i1, ptr %"P0_Bool"
  %".5279" = icmp ne i1 %".5278", 1
  br i1 %".5279", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".5282" = load ptr, ptr %"R4_Float32_PTR"
  %".5283" = ptrtoint ptr %".5282" to i64
  %".5284" = add i64 %".5283", 8
  %"for_LDG.343" = inttoptr i64 %".5284" to ptr
  %".5285" = load float, ptr %"for_LDG.343"
  store float %".5285", ptr %"R10_Float32"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".5290" = load float, ptr %"R7_Float32"
  %".5291" = load float, ptr %"R22_Float32"
  %"fmul.301" = fmul float %".5290", %".5291"
  store float %"fmul.301", ptr %"R6_Float32"
  ; FFMA R21, R6, R8, R21
  %".5294" = load float, ptr %"R6_Float32"
  %".5295" = load float, ptr %"R8_Float32"
  %".5296" = load float, ptr %"R21_Float32"
  %"fmul.302" = fmul float %".5294", %".5295"
  %"fadd.252" = fadd float %"fmul.302", %".5296"
  store float %"fadd.252", ptr %"R21_Float32"
  ; @P0 FMUL R22, R9, R22
  %".5299" = load i1, ptr %"P0_Bool"
  %".5300" = icmp ne i1 %".5299", 1
  br i1 %".5300", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".5303" = load float, ptr %"R9_Float32"
  %".5304" = load float, ptr %"R22_Float32"
  %"fmul.303" = fmul float %".5303", %".5304"
  store float %"fmul.303", ptr %"R22_Float32"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".5309" = load i1, ptr %"P0_Bool"
  %".5310" = icmp ne i1 %".5309", 1
  br i1 %".5310", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".5313" = load float, ptr %"R22_Float32"
  %".5314" = load float, ptr %"R10_Float32"
  %".5315" = load float, ptr %"R21_Float32"
  %"fmul.304" = fmul float %".5313", %".5314"
  %"fadd.253" = fadd float %"fmul.304", %".5315"
  store float %"fadd.253", ptr %"R21_Float32"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R30_Float32_PTR", ptr %"R30_Int32", i32 4, i1 0)
  %".5320" = load ptr, ptr %"R30_Float32_PTR"
  %".5321" = ptrtoint ptr %".5320" to i64
  %".5322" = add i64 %".5321", 0
  %"for_LDG.344" = inttoptr i64 %".5322" to ptr
  %".5323" = load float, ptr %"for_LDG.344"
  store float %".5323", ptr %"R4_Float32"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".5328" = load float, ptr %"R4_Float32"
  %".5329" = load float, ptr %"R21_Float32"
  %"fadd.254" = fadd float %".5328", %".5329"
  store float %"fadd.254", ptr %"R21_Float32"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".5332" = load float, ptr %"R21_Float32"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".5332")
  %".5333" = load i1, ptr %"PT_Bool"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".5334" = and i1 %"fcmp_unordered.2", %".5333"
  ; @!P0 BRA `(.L_x_42)
  %".5336" = load i1, ptr %"P0_Bool"
  %".5337" = icmp eq i1 %".5336", 1
  br i1 %".5337", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".5340" = load float, ptr %"R21_Float32"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".5340")
  %"fmul.305" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  store float %"fmul.305", ptr %"R5_Float32"
  ; MOV R7, 0x3f800000
  store float 0x41cfc00000000000, ptr %"R7_Float32"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".5345" = load float, ptr %"R21_Float32"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".5345")
  %".5346" = load i1, ptr %"PT_Bool"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".5347" = and i1 %"fcmp_unordered.3", %".5346"
  ; MUFU.EX2 R5, R5
  %".5349" = load float, ptr %"R5_Float32"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".5349")
  store float %"llvm_exp2_f32_result.5", ptr %"R5_Float32"
  ; FADD R6, R5, 1
  %".5352" = load float, ptr %"R5_Float32"
  %"fadd.255" = fadd float %".5352", 0x3ff0000000000000
  store float %"fadd.255", ptr %"R6_Float32"
  ; MUFU.RCP R6, R6
  %".5355" = load float, ptr %"R6_Float32"
  %".5356" = fdiv float 0x3ff0000000000000, %".5355"
  store float %".5356", ptr %"R6_Float32"
  ; FFMA R4, R6, -2, R7
  %".5359" = load float, ptr %"R6_Float32"
  %".5360" = load float, ptr %"R7_Float32"
  %"fmul.306" = fmul float %".5359", 0xc000000000000000
  %"fadd.256" = fadd float %"fmul.306", %".5360"
  store float %"fadd.256", ptr %"R4_Float32"
  ; FSEL R4, R4, 1, !P0
  %".5363" = load float, ptr %"R4_Float32"
  %".5364" = load i1, ptr %"P0_Bool"
  %".5365" = icmp eq i1 %".5364", 1
  %"fsel.1" = select  i1 %".5365", float %".5363", float 0x3ff0000000000000
  store float %"fsel.1", ptr %"R4_Float32"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".5368" = load float, ptr %"R4_Float32"
  %".5369" = load float, ptr %"R21_Float32"
  %".5370" = or float %".5368", 0x41e0000000000000
  %".5371" = or float %".5368", %".5369"
  %".5372" = and float %".5370", %".5371"
  store float %".5372", ptr %"R4_Float32"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  store float 0x41ce407840000000, ptr %"R5_Float32"
  ; FMUL R4, R21, R21
  %".5379" = load float, ptr %"R21_Float32"
  %".5380" = load float, ptr %"R21_Float32"
  %"fmul.307" = fmul float %".5379", %".5380"
  store float %"fmul.307", ptr %"R4_Float32"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".5383" = load float, ptr %"R4_Float32"
  %".5384" = load float, ptr %"R5_Float32"
  %"fmul.308" = fmul float %".5383", %".5384"
  %"fadd.257" = fadd float %"fmul.308", 0xbfaac795c0000000
  store float %"fadd.257", ptr %"R5_Float32"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".5387" = load float, ptr %"R4_Float32"
  %".5388" = load float, ptr %"R5_Float32"
  %"fmul.309" = fmul float %".5387", %".5388"
  %"fadd.258" = fadd float %"fmul.309", 0x3fc10b2820000000
  store float %"fadd.258", ptr %"R5_Float32"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".5391" = load float, ptr %"R4_Float32"
  %".5392" = load float, ptr %"R5_Float32"
  %"fmul.310" = fmul float %".5391", %".5392"
  %"fadd.259" = fadd float %"fmul.310", 0xbfd5553da0000000
  store float %"fadd.259", ptr %"R5_Float32"
  ; FFMA R4, R4, R5, RZ
  %".5395" = load float, ptr %"R4_Float32"
  %".5396" = load float, ptr %"R5_Float32"
  %"fmul.311" = fmul float %".5395", %".5396"
  %"fadd.260" = fadd float %"fmul.311",              0x0
  store float %"fadd.260", ptr %"R4_Float32"
  ; FFMA R4, R21, R4, R21
  %".5399" = load float, ptr %"R21_Float32"
  %".5400" = load float, ptr %"R4_Float32"
  %".5401" = load float, ptr %"R21_Float32"
  %"fmul.312" = fmul float %".5399", %".5400"
  %"fadd.261" = fadd float %"fmul.312", %".5401"
  store float %"fadd.261", ptr %"R4_Float32"
.L_x_43:
  ; BSYNC B0
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R23_Int32", ptr %"R23_Float32", i32 4, i1 0)
  %".5405" = load i32, ptr %"R23_Int32"
  %"add.310" = add i32 %".5405", 25165824
  %"add.311" = add i32 %"add.310", 0
  store i32 %"add.311", ptr %"R5_Int32"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".5410" = load i32, ptr %"R5_Int32"
  %".5411" = and i32 %".5410", 2139095040
  store i32 %".5411", ptr %"R5_Int32"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".5414" = load i32, ptr %"R5_Int32"
  %".5415" = load i1, ptr %"PT_Bool"
  %"cmp.55" = icmp sgt i32 %".5414", 33554431
  %".5416" = and i1 %"cmp.55", %".5415"
  ; @P0 BRA `(.L_x_45)
  %".5418" = load i1, ptr %"P0_Bool"
  %".5419" = icmp ne i1 %".5418", 1
  br i1 %".5419", label %".L_x_45", label %".L_x_41_split_0x47f0"
.L_x_41_split_0x47f0:
  ; MOV R24, R23
  %".5422" = load float, ptr %"R23_Float32"
  store float %".5422", ptr %"R24_Float32"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_NOTYPE", ptr %"R10_Int32", i32 4, i1 0)
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.3" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R5, R22
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Int32", ptr %"R22_Float32", i32 4, i1 0)
  %".5428" = load i32, ptr %"R22_Int32"
  store i32 %".5428", ptr %"R5_Int32"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".5433" = load float, ptr %"R23_Float32"
  %".5434" = fdiv float 0x3ff0000000000000, %".5433"
  store float %".5434", ptr %"R6_Float32"
  ; FFMA R5, R23, R6, -1
  %".5437" = load float, ptr %"R23_Float32"
  %".5438" = load float, ptr %"R6_Float32"
  %"fmul.313" = fmul float %".5437", %".5438"
  %"fadd.262" = fadd float %"fmul.313", 0xbff0000000000000
  store float %"fadd.262", ptr %"R5_Float32"
  ; FADD.FTZ R5, -R5, -RZ
  %".5441" = load float, ptr %"R5_Float32"
  %".5442" = sub float              0x0, %".5441"
  %"fadd.263" = fadd float %".5442",              0x0
  store float %"fadd.263", ptr %"R5_Float32"
  ; FFMA R5, R6, R5, R6
  %".5445" = load float, ptr %"R6_Float32"
  %".5446" = load float, ptr %"R5_Float32"
  %".5447" = load float, ptr %"R6_Float32"
  %"fmul.314" = fmul float %".5445", %".5446"
  %"fadd.264" = fadd float %"fmul.314", %".5447"
  store float %"fadd.264", ptr %"R5_Float32"
.L_x_46:
  ; BSYNC B0
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R28_Float32_PTR", ptr %"R28_Int32", i32 4, i1 0)
  %".5451" = load ptr, ptr %"R28_Float32_PTR"
  %".5452" = ptrtoint ptr %".5451" to i64
  %".5453" = add i64 %".5452", 0
  %"for_LDG.345" = inttoptr i64 %".5453" to ptr
  %".5454" = load float, ptr %"for_LDG.345"
  store float %".5454", ptr %"R6_Float32"
  ; FADD R7, -R5, 1
  %".5457" = load float, ptr %"R5_Float32"
  %".5458" = sub float              0x0, %".5457"
  %"fadd.265" = fadd float %".5458", 0x3ff0000000000000
  store float %"fadd.265", ptr %"R7_Float32"
  ; FMUL R6, R6, R5
  %".5461" = load float, ptr %"R6_Float32"
  %".5462" = load float, ptr %"R5_Float32"
  %"fmul.315" = fmul float %".5461", %".5462"
  store float %"fmul.315", ptr %"R6_Float32"
  ; FFMA R7, R7, R4, R6
  %".5465" = load float, ptr %"R7_Float32"
  %".5466" = load float, ptr %"R4_Float32"
  %".5467" = load float, ptr %"R6_Float32"
  %"fmul.316" = fmul float %".5465", %".5466"
  %"fadd.266" = fadd float %"fmul.316", %".5467"
  store float %"fadd.266", ptr %"R7_Float32"
  ; STG.E.SYS [R28], R7
  %".5470" = load float, ptr %"R7_Float32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R28_Float32_PTR", ptr %"R28_Int32", i32 4, i1 0)
  %".5471" = load ptr, ptr %"R28_Float32_PTR"
  %".5472" = ptrtoint ptr %".5471" to i64
  %".5473" = add i64 %".5472", 0
  %"for_STG.1" = inttoptr i64 %".5473" to ptr
  store float %".5470", ptr %"for_STG.1"
  ; @!P3 BRA `(.L_x_47)
  %".5476" = load i1, ptr %"P3_Bool"
  %".5477" = icmp eq i1 %".5476", 1
  br i1 %".5477", label %".L_x_47", label %".L_x_44_split_0x48f0"
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

