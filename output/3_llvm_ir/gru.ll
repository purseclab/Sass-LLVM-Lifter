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
  %"R38_Float32_PTR" = alloca i32, i32 1
  %"R56_Float32" = alloca float, i32 1
  %"R16_Float32_PTR" = alloca i32, i32 1
  %"R58_Float32" = alloca float, i32 1
  %"R20_Float32_PTR" = alloca i32, i32 1
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
  %"R40_Float32_PTR" = alloca i32, i32 1
  %"R34_Int32" = alloca i32, i32 1
  %"R10_Float32" = alloca float, i32 1
  %"R36_Int32" = alloca i32, i32 1
  %"R16_Float32" = alloca float, i32 1
  %"R17_Float32" = alloca float, i32 1
  %"R19_Float32" = alloca float, i32 1
  %"R34_Float32_PTR" = alloca i32, i32 1
  %"R20_Float32" = alloca float, i32 1
  %"R51_Float32" = alloca float, i32 1
  %"R21_Float32" = alloca float, i32 1
  %"R42_Float32" = alloca float, i32 1
  %"R44_Float32" = alloca float, i32 1
  %"R36_Float32_PTR" = alloca i32, i32 1
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
  %"R24_Float32_PTR" = alloca i32, i32 1
  %"R35_Float32" = alloca float, i32 1
  %"R22_Float32_PTR" = alloca i32, i32 1
  %"R37_Float32" = alloca float, i32 1
  %"R34_Float32" = alloca float, i32 1
  %"R13_Int32" = alloca i32, i32 1
  %"R17_Int32" = alloca i32, i32 1
  %"R10_Int32" = alloca i32, i32 1
  %"R12_Int32" = alloca i32, i32 1
  %"R18_Float32_PTR" = alloca i32, i32 1
  %"R36_Float32" = alloca float, i32 1
  %"R12_Float32_PTR" = alloca i32, i32 1
  %"R14_Float32_PTR" = alloca i32, i32 1
  %"R25_Float32" = alloca float, i32 1
  %"R23_Float32" = alloca float, i32 1
  %"R10_Float32_PTR" = alloca i32, i32 1
  %"R9_Float32" = alloca float, i32 1
  %"R19_NOTYPE" = alloca i32, i32 1
  %"R12_NOTYPE_PTR" = alloca i32, i32 1
  %"R21_NOTYPE" = alloca i32, i32 1
  %"R10_NOTYPE_PTR" = alloca i32, i32 1
  %"R18_NOTYPE" = alloca i32, i32 1
  %"R14_NOTYPE_PTR" = alloca i32, i32 1
  %"R26_Float32_PTR" = alloca i32, i32 1
  %"R11_Float32" = alloca float, i32 1
  %"R10_NOTYPE" = alloca i32, i32 1
  %"R32_Float32_PTR" = alloca i32, i32 1
  %"R49_Int32" = alloca i32, i32 1
  %"R50_Int32" = alloca i32, i32 1
  %"R58_Int32" = alloca i32, i32 1
  %"R16_NOTYPE" = alloca i32, i32 1
  %"R22_NOTYPE_PTR" = alloca i32, i32 1
  %"R15_NOTYPE" = alloca i32, i32 1
  %"R30_Float32_PTR" = alloca i32, i32 1
  %"R28_Float32_PTR" = alloca i32, i32 1
  %"R48_Int32" = alloca i32, i32 1
  %"R19_Int32" = alloca i32, i32 1
  %"R4_Float32_PTR" = alloca i32, i32 1
  %"R8_Float32_PTR" = alloca i32, i32 1
  %"R6_Float32_PTR" = alloca i32, i32 1
  %"R25_NOTYPE" = alloca i32, i32 1
  %"R4_NOTYPE_PTR" = alloca i32, i32 1
  %"R24_NOTYPE" = alloca i32, i32 1
  %"R6_NOTYPE_PTR" = alloca i32, i32 1
  %"R35_NOTYPE" = alloca i32, i32 1
  %"R8_NOTYPE_PTR" = alloca i32, i32 1
  %"R34_NOTYPE" = alloca i32, i32 1
  %"R57_Int32" = alloca i32, i32 1
  %"R6_Float32" = alloca float, i32 1
  %"R4_Float32" = alloca float, i32 1
  %"R5_Float32" = alloca float, i32 1
  %"R7_Float32" = alloca float, i32 1
  %"R23_NOTYPE" = alloca i32, i32 1
  %"R12_NOTYPE" = alloca i32, i32 1
  %"R9_NOTYPE" = alloca i32, i32 1
  %"R34_NOTYPE_PTR" = alloca i32, i32 1
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
  %".203" = load i32, ptr %"R38_Float32_PTR"
  %".204" = add i32 %".203", 0
  %"for_LDG" = inttoptr i32 %".204" to ptr
  %".205" = load float, ptr %"for_LDG"
  store float %".205", ptr %"R57_Float32"
  ; LDG.E.SYS R56, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".208" = load i32, ptr %"R16_Float32_PTR"
  %".209" = add i32 %".208", 0
  %"for_LDG.1" = inttoptr i32 %".209" to ptr
  %".210" = load float, ptr %"for_LDG.1"
  store float %".210", ptr %"R56_Float32"
  ; LDG.E.SYS R58, [R20]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".213" = load i32, ptr %"R20_Float32_PTR"
  %".214" = add i32 %".213", 0
  %"for_LDG.2" = inttoptr i32 %".214" to ptr
  %".215" = load float, ptr %"for_LDG.2"
  store float %".215", ptr %"R58_Float32"
  ; LDG.E.SYS R24, [R38+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".218" = load i32, ptr %"R38_Float32_PTR"
  %".219" = add i32 %".218", 4
  %"for_LDG.3" = inttoptr i32 %".219" to ptr
  %".220" = load float, ptr %"for_LDG.3"
  store float %".220", ptr %"R24_Float32"
  ; LDG.E.SYS R47, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".223" = load i32, ptr %"R16_Float32_PTR"
  %".224" = add i32 %".223", 4
  %"for_LDG.4" = inttoptr i32 %".224" to ptr
  %".225" = load float, ptr %"for_LDG.4"
  store float %".225", ptr %"R47_Float32"
  ; LDG.E.SYS R49, [R20+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".228" = load i32, ptr %"R20_Float32_PTR"
  %".229" = add i32 %".228", 4
  %"for_LDG.5" = inttoptr i32 %".229" to ptr
  %".230" = load float, ptr %"for_LDG.5"
  store float %".230", ptr %"R49_Float32"
  ; LDG.E.SYS R22, [R38+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".233" = load i32, ptr %"R38_Float32_PTR"
  %".234" = add i32 %".233", 8
  %"for_LDG.6" = inttoptr i32 %".234" to ptr
  %".235" = load float, ptr %"for_LDG.6"
  store float %".235", ptr %"R22_Float32"
  ; LDG.E.SYS R43, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".238" = load i32, ptr %"R16_Float32_PTR"
  %".239" = add i32 %".238", 8
  %"for_LDG.7" = inttoptr i32 %".239" to ptr
  %".240" = load float, ptr %"for_LDG.7"
  store float %".240", ptr %"R43_Float32"
  ; LDG.E.SYS R45, [R20+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".243" = load i32, ptr %"R20_Float32_PTR"
  %".244" = add i32 %".243", 8
  %"for_LDG.8" = inttoptr i32 %".244" to ptr
  %".245" = load float, ptr %"for_LDG.8"
  store float %".245", ptr %"R45_Float32"
  ; LDG.E.SYS R15, [R38+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".248" = load i32, ptr %"R38_Float32_PTR"
  %".249" = add i32 %".248", 12
  %"for_LDG.9" = inttoptr i32 %".249" to ptr
  %".250" = load float, ptr %"for_LDG.9"
  store float %".250", ptr %"R15_Float32"
  ; LDG.E.SYS R14, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".253" = load i32, ptr %"R16_Float32_PTR"
  %".254" = add i32 %".253", 12
  %"for_LDG.10" = inttoptr i32 %".254" to ptr
  %".255" = load float, ptr %"for_LDG.10"
  store float %".255", ptr %"R14_Float32"
  ; LDG.E.SYS R13, [R20+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".258" = load i32, ptr %"R20_Float32_PTR"
  %".259" = add i32 %".258", 12
  %"for_LDG.11" = inttoptr i32 %".259" to ptr
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
  %".286" = load i32, ptr %"R40_Float32_PTR"
  %".287" = add i32 %".286", 0
  %"for_LDG.12" = inttoptr i32 %".287" to ptr
  %".288" = load float, ptr %"for_LDG.12"
  store float %".288", ptr %"R12_Float32"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x168]
  %".291" = load i32, ptr %"R35_Int32"
  %".292" = load i32, ptr %"R18_Int32"
  %"mul.14" = mul i32 %".291", %".292"
  %"add.35" = add i32 %"mul.14", %"Arg_3"
  store i32 %"add.35", ptr %"R34_Int32"
  ; LDG.E.SYS R10, [R40+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".295" = load i32, ptr %"R40_Float32_PTR"
  %".296" = add i32 %".295", 4
  %"for_LDG.13" = inttoptr i32 %".296" to ptr
  %".297" = load float, ptr %"for_LDG.13"
  store float %".297", ptr %"R10_Float32"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x168]
  %".300" = load i32, ptr %"R37_Int32"
  %".301" = load i32, ptr %"R18_Int32"
  %"mul.15" = mul i32 %".300", %".301"
  %"add.36" = add i32 %"mul.15", %"Arg_3"
  store i32 %"add.36", ptr %"R36_Int32"
  ; LDG.E.SYS R16, [R40+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".304" = load i32, ptr %"R40_Float32_PTR"
  %".305" = add i32 %".304", 8
  %"for_LDG.14" = inttoptr i32 %".305" to ptr
  %".306" = load float, ptr %"for_LDG.14"
  store float %".306", ptr %"R16_Float32"
  ; LDG.E.SYS R17, [R40+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".309" = load i32, ptr %"R40_Float32_PTR"
  %".310" = add i32 %".309", 12
  %"for_LDG.15" = inttoptr i32 %".310" to ptr
  %".311" = load float, ptr %"for_LDG.15"
  store float %".311", ptr %"R17_Float32"
  ; LDG.E.SYS R19, [R34]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".314" = load i32, ptr %"R34_Float32_PTR"
  %".315" = add i32 %".314", 0
  %"for_LDG.16" = inttoptr i32 %".315" to ptr
  %".316" = load float, ptr %"for_LDG.16"
  store float %".316", ptr %"R19_Float32"
  ; LDG.E.SYS R20, [R34+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".319" = load i32, ptr %"R34_Float32_PTR"
  %".320" = add i32 %".319", 4
  %"for_LDG.17" = inttoptr i32 %".320" to ptr
  %".321" = load float, ptr %"for_LDG.17"
  store float %".321", ptr %"R20_Float32"
  ; IMAD.WIDE R40, R51, R18, c[0x0][0x170]
  %".324" = load i32, ptr %"R51_Int32"
  %".325" = load i32, ptr %"R18_Int32"
  %"mul.16" = mul i32 %".324", %".325"
  %"add.37" = add i32 %"mul.16", %"Arg_4"
  store i32 %"add.37", ptr %"R40_Int32"
  ; LDG.E.SYS R51, [R38]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".328" = load i32, ptr %"R38_Float32_PTR"
  %".329" = add i32 %".328", 0
  %"for_LDG.18" = inttoptr i32 %".329" to ptr
  %".330" = load float, ptr %"for_LDG.18"
  store float %".330", ptr %"R51_Float32"
  ; LDG.E.SYS R21, [R34+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".333" = load i32, ptr %"R34_Float32_PTR"
  %".334" = add i32 %".333", 8
  %"for_LDG.19" = inttoptr i32 %".334" to ptr
  %".335" = load float, ptr %"for_LDG.19"
  store float %".335", ptr %"R21_Float32"
  ; LDG.E.SYS R42, [R34+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".338" = load i32, ptr %"R34_Float32_PTR"
  %".339" = add i32 %".338", 12
  %"for_LDG.20" = inttoptr i32 %".339" to ptr
  %".340" = load float, ptr %"for_LDG.20"
  store float %".340", ptr %"R42_Float32"
  ; LDG.E.SYS R44, [R36]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".343" = load i32, ptr %"R36_Float32_PTR"
  %".344" = add i32 %".343", 0
  %"for_LDG.21" = inttoptr i32 %".344" to ptr
  %".345" = load float, ptr %"for_LDG.21"
  store float %".345", ptr %"R44_Float32"
  ; LDG.E.SYS R46, [R36+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".348" = load i32, ptr %"R36_Float32_PTR"
  %".349" = add i32 %".348", 4
  %"for_LDG.22" = inttoptr i32 %".349" to ptr
  %".350" = load float, ptr %"for_LDG.22"
  store float %".350", ptr %"R46_Float32"
  ; IADD3 R35, R23, 0x8, RZ
  %".353" = load i32, ptr %"R23_Int32"
  %"add.38" = add i32 %".353", 8
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R35_Int32"
  ; LDG.E.SYS R48, [R36+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".356" = load i32, ptr %"R36_Float32_PTR"
  %".357" = add i32 %".356", 8
  %"for_LDG.23" = inttoptr i32 %".357" to ptr
  %".358" = load float, ptr %"for_LDG.23"
  store float %".358", ptr %"R48_Float32"
  ; LDG.E.SYS R50, [R36+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".361" = load i32, ptr %"R36_Float32_PTR"
  %".362" = add i32 %".361", 12
  %"for_LDG.24" = inttoptr i32 %".362" to ptr
  %".363" = load float, ptr %"for_LDG.24"
  store float %".363", ptr %"R50_Float32"
  ; LDG.E.SYS R53, [R38+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".366" = load i32, ptr %"R38_Float32_PTR"
  %".367" = add i32 %".366", 4
  %"for_LDG.25" = inttoptr i32 %".367" to ptr
  %".368" = load float, ptr %"for_LDG.25"
  store float %".368", ptr %"R53_Float32"
  ; LDG.E.SYS R59, [R40+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".371" = load i32, ptr %"R40_Float32_PTR"
  %".372" = add i32 %".371", 4
  %"for_LDG.26" = inttoptr i32 %".372" to ptr
  %".373" = load float, ptr %"for_LDG.26"
  store float %".373", ptr %"R59_Float32"
  ; IADD3 R37, R25, 0x8, RZ
  %".376" = load i32, ptr %"R25_Int32"
  %"add.40" = add i32 %".376", 8
  %"add.41" = add i32 %"add.40", 0
  store i32 %"add.41", ptr %"R37_Int32"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x170]
  %".379" = load i32, ptr %"R35_Int32"
  %".380" = load i32, ptr %"R18_Int32"
  %"mul.17" = mul i32 %".379", %".380"
  %"add.42" = add i32 %"mul.17", %"Arg_4"
  store i32 %"add.42", ptr %"R34_Int32"
  ; LDG.E.SYS R55, [R38+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".383" = load i32, ptr %"R38_Float32_PTR"
  %".384" = add i32 %".383", 8
  %"for_LDG.27" = inttoptr i32 %".384" to ptr
  %".385" = load float, ptr %"for_LDG.27"
  store float %".385", ptr %"R55_Float32"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x170]
  %".388" = load i32, ptr %"R37_Int32"
  %".389" = load i32, ptr %"R18_Int32"
  %"mul.18" = mul i32 %".388", %".389"
  %"add.43" = add i32 %"mul.18", %"Arg_4"
  store i32 %"add.43", ptr %"R36_Int32"
  ; LDG.E.SYS R61, [R40+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".392" = load i32, ptr %"R40_Float32_PTR"
  %".393" = add i32 %".392", 8
  %"for_LDG.28" = inttoptr i32 %".393" to ptr
  %".394" = load float, ptr %"for_LDG.28"
  store float %".394", ptr %"R61_Float32"
  ; LDG.E.SYS R60, [R38+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R38_Float32_PTR", ptr %"R38_Int32", i32 4, i1 0)
  %".397" = load i32, ptr %"R38_Float32_PTR"
  %".398" = add i32 %".397", 12
  %"for_LDG.29" = inttoptr i32 %".398" to ptr
  %".399" = load float, ptr %"for_LDG.29"
  store float %".399", ptr %"R60_Float32"
  ; IADD3 R23, R23, 0xc, RZ
  %".402" = load i32, ptr %"R23_Int32"
  %"add.44" = add i32 %".402", 12
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R23_Int32"
  ; IADD3 R25, R25, 0xc, RZ
  %".405" = load i32, ptr %"R25_Int32"
  %"add.46" = add i32 %".405", 12
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R25_Int32"
  ; LDG.E.SYS R39, [R34+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".408" = load i32, ptr %"R34_Float32_PTR"
  %".409" = add i32 %".408", 4
  %"for_LDG.30" = inttoptr i32 %".409" to ptr
  %".410" = load float, ptr %"for_LDG.30"
  store float %".410", ptr %"R39_Float32"
  ; LDG.E.SYS R38, [R34+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".413" = load i32, ptr %"R34_Float32_PTR"
  %".414" = add i32 %".413", 8
  %"for_LDG.31" = inttoptr i32 %".414" to ptr
  %".415" = load float, ptr %"for_LDG.31"
  store float %".415", ptr %"R38_Float32"
  ; FFMA R56, R56, R57, R52
  %".418" = load float, ptr %"R56_Float32"
  %".419" = load float, ptr %"R57_Float32"
  %".420" = load float, ptr %"R52_Float32"
  %"fmul" = fmul float %".418", %".419"
  %"fadd" = fadd float %"fmul", %".420"
  store float %"fadd", ptr %"R56_Float32"
  ; LDG.E.SYS R52, [R40+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".423" = load i32, ptr %"R40_Float32_PTR"
  %".424" = add i32 %".423", 12
  %"for_LDG.32" = inttoptr i32 %".424" to ptr
  %".425" = load float, ptr %"for_LDG.32"
  store float %".425", ptr %"R52_Float32"
  ; FFMA R58, R57, R58, R54
  %".428" = load float, ptr %"R57_Float32"
  %".429" = load float, ptr %"R58_Float32"
  %".430" = load float, ptr %"R54_Float32"
  %"fmul.1" = fmul float %".428", %".429"
  %"fadd.1" = fadd float %"fmul.1", %".430"
  store float %"fadd.1", ptr %"R58_Float32"
  ; LDG.E.SYS R57, [R40]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R40_Float32_PTR", ptr %"R40_Int32", i32 4, i1 0)
  %".433" = load i32, ptr %"R40_Float32_PTR"
  %".434" = add i32 %".433", 0
  %"for_LDG.33" = inttoptr i32 %".434" to ptr
  %".435" = load float, ptr %"for_LDG.33"
  store float %".435", ptr %"R57_Float32"
  ; LDG.E.SYS R54, [R34]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".438" = load i32, ptr %"R34_Float32_PTR"
  %".439" = add i32 %".438", 0
  %"for_LDG.34" = inttoptr i32 %".439" to ptr
  %".440" = load float, ptr %"for_LDG.34"
  store float %".440", ptr %"R54_Float32"
  ; FFMA R56, R47, R24, R56
  %".443" = load float, ptr %"R47_Float32"
  %".444" = load float, ptr %"R24_Float32"
  %".445" = load float, ptr %"R56_Float32"
  %"fmul.2" = fmul float %".443", %".444"
  %"fadd.2" = fadd float %"fmul.2", %".445"
  store float %"fadd.2", ptr %"R56_Float32"
  ; LDG.E.SYS R47, [R34+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".448" = load i32, ptr %"R34_Float32_PTR"
  %".449" = add i32 %".448", 12
  %"for_LDG.35" = inttoptr i32 %".449" to ptr
  %".450" = load float, ptr %"for_LDG.35"
  store float %".450", ptr %"R47_Float32"
  ; FFMA R58, R24, R49, R58
  %".453" = load float, ptr %"R24_Float32"
  %".454" = load float, ptr %"R49_Float32"
  %".455" = load float, ptr %"R58_Float32"
  %"fmul.3" = fmul float %".453", %".454"
  %"fadd.3" = fadd float %"fmul.3", %".455"
  store float %"fadd.3", ptr %"R58_Float32"
  ; LDG.E.SYS R41, [R36+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".458" = load i32, ptr %"R36_Float32_PTR"
  %".459" = add i32 %".458", 4
  %"for_LDG.36" = inttoptr i32 %".459" to ptr
  %".460" = load float, ptr %"for_LDG.36"
  store float %".460", ptr %"R41_Float32"
  ; LDG.E.SYS R40, [R36+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".463" = load i32, ptr %"R36_Float32_PTR"
  %".464" = add i32 %".463", 8
  %"for_LDG.37" = inttoptr i32 %".464" to ptr
  %".465" = load float, ptr %"for_LDG.37"
  store float %".465", ptr %"R40_Float32"
  ; FFMA R49, R43, R22, R56
  %".468" = load float, ptr %"R43_Float32"
  %".469" = load float, ptr %"R22_Float32"
  %".470" = load float, ptr %"R56_Float32"
  %"fmul.4" = fmul float %".468", %".469"
  %"fadd.4" = fadd float %"fmul.4", %".470"
  store float %"fadd.4", ptr %"R49_Float32"
  ; LDG.E.SYS R56, [R36]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".473" = load i32, ptr %"R36_Float32_PTR"
  %".474" = add i32 %".473", 0
  %"for_LDG.38" = inttoptr i32 %".474" to ptr
  %".475" = load float, ptr %"for_LDG.38"
  store float %".475", ptr %"R56_Float32"
  ; IMAD.WIDE R24, R25, R18, c[0x0][0x170]
  %".478" = load i32, ptr %"R25_Int32"
  %".479" = load i32, ptr %"R18_Int32"
  %"mul.19" = mul i32 %".478", %".479"
  %"add.48" = add i32 %"mul.19", %"Arg_4"
  store i32 %"add.48", ptr %"R24_Int32"
  ; LDG.E.SYS R43, [R36+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".482" = load i32, ptr %"R36_Float32_PTR"
  %".483" = add i32 %".482", 12
  %"for_LDG.39" = inttoptr i32 %".483" to ptr
  %".484" = load float, ptr %"for_LDG.39"
  store float %".484", ptr %"R43_Float32"
  ; FFMA R58, R22, R45, R58
  %".487" = load float, ptr %"R22_Float32"
  %".488" = load float, ptr %"R45_Float32"
  %".489" = load float, ptr %"R58_Float32"
  %"fmul.5" = fmul float %".487", %".488"
  %"fadd.5" = fadd float %"fmul.5", %".489"
  store float %"fadd.5", ptr %"R58_Float32"
  ; IMAD.WIDE R22, R23, R18, c[0x0][0x170]
  %".492" = load i32, ptr %"R23_Int32"
  %".493" = load i32, ptr %"R18_Int32"
  %"mul.20" = mul i32 %".492", %".493"
  %"add.49" = add i32 %"mul.20", %"Arg_4"
  store i32 %"add.49", ptr %"R22_Int32"
  ; LDG.E.SYS R18, [R24]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".496" = load i32, ptr %"R24_Float32_PTR"
  %".497" = add i32 %".496", 0
  %"for_LDG.40" = inttoptr i32 %".497" to ptr
  %".498" = load float, ptr %"for_LDG.40"
  store float %".498", ptr %"R18_Float32"
  ; FFMA R14, R14, R15, R49
  %".501" = load float, ptr %"R14_Float32"
  %".502" = load float, ptr %"R15_Float32"
  %".503" = load float, ptr %"R49_Float32"
  %"fmul.6" = fmul float %".501", %".502"
  %"fadd.6" = fadd float %"fmul.6", %".503"
  store float %"fadd.6", ptr %"R14_Float32"
  ; LDG.E.SYS R49, [R24+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".506" = load i32, ptr %"R24_Float32_PTR"
  %".507" = add i32 %".506", 4
  %"for_LDG.41" = inttoptr i32 %".507" to ptr
  %".508" = load float, ptr %"for_LDG.41"
  store float %".508", ptr %"R49_Float32"
  ; FFMA R58, R15, R13, R58
  %".511" = load float, ptr %"R15_Float32"
  %".512" = load float, ptr %"R13_Float32"
  %".513" = load float, ptr %"R58_Float32"
  %"fmul.7" = fmul float %".511", %".512"
  %"fadd.7" = fadd float %"fmul.7", %".513"
  store float %"fadd.7", ptr %"R58_Float32"
  ; LDG.E.SYS R35, [R22]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".516" = load i32, ptr %"R22_Float32_PTR"
  %".517" = add i32 %".516", 0
  %"for_LDG.42" = inttoptr i32 %".517" to ptr
  %".518" = load float, ptr %"for_LDG.42"
  store float %".518", ptr %"R35_Float32"
  ; LDG.E.SYS R15, [R22+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".521" = load i32, ptr %"R22_Float32_PTR"
  %".522" = add i32 %".521", 4
  %"for_LDG.43" = inttoptr i32 %".522" to ptr
  %".523" = load float, ptr %"for_LDG.43"
  store float %".523", ptr %"R15_Float32"
  ; LDG.E.SYS R13, [R22+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".526" = load i32, ptr %"R22_Float32_PTR"
  %".527" = add i32 %".526", 8
  %"for_LDG.44" = inttoptr i32 %".527" to ptr
  %".528" = load float, ptr %"for_LDG.44"
  store float %".528", ptr %"R13_Float32"
  ; LDG.E.SYS R37, [R24+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".531" = load i32, ptr %"R24_Float32_PTR"
  %".532" = add i32 %".531", 8
  %"for_LDG.45" = inttoptr i32 %".532" to ptr
  %".533" = load float, ptr %"for_LDG.45"
  store float %".533", ptr %"R37_Float32"
  ; LDG.E.SYS R45, [R22+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".536" = load i32, ptr %"R22_Float32_PTR"
  %".537" = add i32 %".536", 12
  %"for_LDG.46" = inttoptr i32 %".537" to ptr
  %".538" = load float, ptr %"for_LDG.46"
  store float %".538", ptr %"R45_Float32"
  ; LDG.E.SYS R34, [R24+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".541" = load i32, ptr %"R24_Float32_PTR"
  %".542" = add i32 %".541", 12
  %"for_LDG.47" = inttoptr i32 %".542" to ptr
  %".543" = load float, ptr %"for_LDG.47"
  store float %".543", ptr %"R34_Float32"
  ; FFMA R14, R51, R12, R14
  %".546" = load float, ptr %"R51_Float32"
  %".547" = load float, ptr %"R12_Float32"
  %".548" = load float, ptr %"R14_Float32"
  %"fmul.8" = fmul float %".546", %".547"
  %"fadd.8" = fadd float %"fmul.8", %".548"
  store float %"fadd.8", ptr %"R14_Float32"
  ; IADD3 R9, R9, -0x10, RZ
  %".551" = load i32, ptr %"R9_Int32"
  %"add.50" = add i32 %".551", -16
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R9_Int32"
  ; FFMA R14, R53, R10, R14
  %".554" = load float, ptr %"R53_Float32"
  %".555" = load float, ptr %"R10_Float32"
  %".556" = load float, ptr %"R14_Float32"
  %"fmul.9" = fmul float %".554", %".555"
  %"fadd.9" = fadd float %"fmul.9", %".556"
  store float %"fadd.9", ptr %"R14_Float32"
  ; FFMA R14, R55, R16, R14
  %".559" = load float, ptr %"R55_Float32"
  %".560" = load float, ptr %"R16_Float32"
  %".561" = load float, ptr %"R14_Float32"
  %"fmul.10" = fmul float %".559", %".560"
  %"fadd.10" = fadd float %"fmul.10", %".561"
  store float %"fadd.10", ptr %"R14_Float32"
  ; FFMA R14, R60, R17, R14
  %".564" = load float, ptr %"R60_Float32"
  %".565" = load float, ptr %"R17_Float32"
  %".566" = load float, ptr %"R14_Float32"
  %"fmul.11" = fmul float %".564", %".565"
  %"fadd.11" = fadd float %"fmul.11", %".566"
  store float %"fadd.11", ptr %"R14_Float32"
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".569" = load i32, ptr %"R9_Int32"
  %".570" = load i1, ptr %"PT_Bool"
  %"cmp.8" = icmp sgt i32 %".569", 12
  %".571" = and i1 %"cmp.8", %".570"
  ; IADD3 R11, R11, 0x10, RZ
  %".573" = load i32, ptr %"R11_Int32"
  %"add.52" = add i32 %".573", 16
  %"add.53" = add i32 %"add.52", 0
  store i32 %"add.53", ptr %"R11_Int32"
  ; FFMA R57, R12, R57, R58
  %".576" = load float, ptr %"R12_Float32"
  %".577" = load float, ptr %"R57_Float32"
  %".578" = load float, ptr %"R58_Float32"
  %"fmul.12" = fmul float %".576", %".577"
  %"fadd.12" = fadd float %"fmul.12", %".578"
  store float %"fadd.12", ptr %"R57_Float32"
  ; FFMA R57, R10, R59, R57
  %".581" = load float, ptr %"R10_Float32"
  %".582" = load float, ptr %"R59_Float32"
  %".583" = load float, ptr %"R57_Float32"
  %"fmul.13" = fmul float %".581", %".582"
  %"fadd.13" = fadd float %"fmul.13", %".583"
  store float %"fadd.13", ptr %"R57_Float32"
  ; FFMA R57, R16, R61, R57
  %".586" = load float, ptr %"R16_Float32"
  %".587" = load float, ptr %"R61_Float32"
  %".588" = load float, ptr %"R57_Float32"
  %"fmul.14" = fmul float %".586", %".587"
  %"fadd.14" = fadd float %"fmul.14", %".588"
  store float %"fadd.14", ptr %"R57_Float32"
  ; FFMA R52, R17, R52, R57
  %".591" = load float, ptr %"R17_Float32"
  %".592" = load float, ptr %"R52_Float32"
  %".593" = load float, ptr %"R57_Float32"
  %"fmul.15" = fmul float %".591", %".592"
  %"fadd.15" = fadd float %"fmul.15", %".593"
  store float %"fadd.15", ptr %"R52_Float32"
  ; FFMA R14, R54, R19, R14
  %".596" = load float, ptr %"R54_Float32"
  %".597" = load float, ptr %"R19_Float32"
  %".598" = load float, ptr %"R14_Float32"
  %"fmul.16" = fmul float %".596", %".597"
  %"fadd.16" = fadd float %"fmul.16", %".598"
  store float %"fadd.16", ptr %"R14_Float32"
  ; FFMA R52, R19, R56, R52
  %".601" = load float, ptr %"R19_Float32"
  %".602" = load float, ptr %"R56_Float32"
  %".603" = load float, ptr %"R52_Float32"
  %"fmul.17" = fmul float %".601", %".602"
  %"fadd.17" = fadd float %"fmul.17", %".603"
  store float %"fadd.17", ptr %"R52_Float32"
  ; FFMA R14, R39, R20, R14
  %".606" = load float, ptr %"R39_Float32"
  %".607" = load float, ptr %"R20_Float32"
  %".608" = load float, ptr %"R14_Float32"
  %"fmul.18" = fmul float %".606", %".607"
  %"fadd.18" = fadd float %"fmul.18", %".608"
  store float %"fadd.18", ptr %"R14_Float32"
  ; FFMA R41, R20, R41, R52
  %".611" = load float, ptr %"R20_Float32"
  %".612" = load float, ptr %"R41_Float32"
  %".613" = load float, ptr %"R52_Float32"
  %"fmul.19" = fmul float %".611", %".612"
  %"fadd.19" = fadd float %"fmul.19", %".613"
  store float %"fadd.19", ptr %"R41_Float32"
  ; FFMA R14, R38, R21, R14
  %".616" = load float, ptr %"R38_Float32"
  %".617" = load float, ptr %"R21_Float32"
  %".618" = load float, ptr %"R14_Float32"
  %"fmul.20" = fmul float %".616", %".617"
  %"fadd.20" = fadd float %"fmul.20", %".618"
  store float %"fadd.20", ptr %"R14_Float32"
  ; FFMA R40, R21, R40, R41
  %".621" = load float, ptr %"R21_Float32"
  %".622" = load float, ptr %"R40_Float32"
  %".623" = load float, ptr %"R41_Float32"
  %"fmul.21" = fmul float %".621", %".622"
  %"fadd.21" = fadd float %"fmul.21", %".623"
  store float %"fadd.21", ptr %"R40_Float32"
  ; FFMA R14, R47, R42, R14
  %".626" = load float, ptr %"R47_Float32"
  %".627" = load float, ptr %"R42_Float32"
  %".628" = load float, ptr %"R14_Float32"
  %"fmul.22" = fmul float %".626", %".627"
  %"fadd.22" = fadd float %"fmul.22", %".628"
  store float %"fadd.22", ptr %"R14_Float32"
  ; FFMA R43, R42, R43, R40
  %".631" = load float, ptr %"R42_Float32"
  %".632" = load float, ptr %"R43_Float32"
  %".633" = load float, ptr %"R40_Float32"
  %"fmul.23" = fmul float %".631", %".632"
  %"fadd.23" = fadd float %"fmul.23", %".633"
  store float %"fadd.23", ptr %"R43_Float32"
  ; FFMA R18, R44, R18, R43
  %".636" = load float, ptr %"R44_Float32"
  %".637" = load float, ptr %"R18_Float32"
  %".638" = load float, ptr %"R43_Float32"
  %"fmul.24" = fmul float %".636", %".637"
  %"fadd.24" = fadd float %"fmul.24", %".638"
  store float %"fadd.24", ptr %"R18_Float32"
  ; FFMA R14, R35, R44, R14
  %".641" = load float, ptr %"R35_Float32"
  %".642" = load float, ptr %"R44_Float32"
  %".643" = load float, ptr %"R14_Float32"
  %"fmul.25" = fmul float %".641", %".642"
  %"fadd.25" = fadd float %"fmul.25", %".643"
  store float %"fadd.25", ptr %"R14_Float32"
  ; FFMA R18, R46, R49, R18
  %".646" = load float, ptr %"R46_Float32"
  %".647" = load float, ptr %"R49_Float32"
  %".648" = load float, ptr %"R18_Float32"
  %"fmul.26" = fmul float %".646", %".647"
  %"fadd.26" = fadd float %"fmul.26", %".648"
  store float %"fadd.26", ptr %"R18_Float32"
  ; FFMA R14, R15, R46, R14
  %".651" = load float, ptr %"R15_Float32"
  %".652" = load float, ptr %"R46_Float32"
  %".653" = load float, ptr %"R14_Float32"
  %"fmul.27" = fmul float %".651", %".652"
  %"fadd.27" = fadd float %"fmul.27", %".653"
  store float %"fadd.27", ptr %"R14_Float32"
  ; FFMA R13, R13, R48, R14
  %".656" = load float, ptr %"R13_Float32"
  %".657" = load float, ptr %"R48_Float32"
  %".658" = load float, ptr %"R14_Float32"
  %"fmul.28" = fmul float %".656", %".657"
  %"fadd.28" = fadd float %"fmul.28", %".658"
  store float %"fadd.28", ptr %"R13_Float32"
  ; FFMA R37, R48, R37, R18
  %".661" = load float, ptr %"R48_Float32"
  %".662" = load float, ptr %"R37_Float32"
  %".663" = load float, ptr %"R18_Float32"
  %"fmul.29" = fmul float %".661", %".662"
  %"fadd.29" = fadd float %"fmul.29", %".663"
  store float %"fadd.29", ptr %"R37_Float32"
  ; FFMA R52, R45, R50, R13
  %".666" = load float, ptr %"R45_Float32"
  %".667" = load float, ptr %"R50_Float32"
  %".668" = load float, ptr %"R13_Float32"
  %"fmul.30" = fmul float %".666", %".667"
  %"fadd.30" = fadd float %"fmul.30", %".668"
  store float %"fadd.30", ptr %"R52_Float32"
  ; FFMA R54, R50, R34, R37
  %".671" = load float, ptr %"R50_Float32"
  %".672" = load float, ptr %"R34_Float32"
  %".673" = load float, ptr %"R37_Float32"
  %"fmul.31" = fmul float %".671", %".672"
  %"fadd.31" = fadd float %"fmul.31", %".673"
  store float %"fadd.31", ptr %"R54_Float32"
  ; @P1 BRA `(.L_x_5)
  %".676" = load i1, ptr %"P1_Bool"
  %".677" = icmp ne i1 %".676", 1
  br i1 %".677", label %".L_x_5", label %".L_x_4"
.L_x_4:
  ; ISETP.GT.AND P1, PT, R9, 0x4, PT
  %".680" = load i32, ptr %"R9_Int32"
  %".681" = load i1, ptr %"PT_Bool"
  %"cmp.9" = icmp sgt i32 %".680", 4
  %".682" = and i1 %"cmp.9", %".681"
  ; @!P1 BRA `(.L_x_6)
  %".684" = load i1, ptr %"P1_Bool"
  %".685" = icmp eq i1 %".684", 1
  br i1 %".685", label %".L_x_6", label %".L_x_4_split_0x0a00"
.L_x_4_split_0x0a00:
  ; IADD3 R13, R0, R11, RZ
  %".688" = load i32, ptr %"R0_Int32"
  %".689" = load i32, ptr %"R11_Int32"
  %"add.54" = add i32 %".688", %".689"
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R13_Int32"
  ; MOV R17, 0x4
  store i32 4, ptr %"R17_Int32"
  ; LEA R14, R2.reuse, R13, 0x2
  %".694" = load i32, ptr %"R2_Int32"
  %".695" = load i32, ptr %"R13_Int32"
  %"shl.3" = shl i32 %".694", 2
  %"add.56" = add i32 %"shl.3", %".695"
  store i32 %"add.56", ptr %"R14_Int32"
  ; IMAD R10, R2, 0x3, R13
  %".698" = load i32, ptr %"R2_Int32"
  %".699" = load i32, ptr %"R13_Int32"
  %"mul.21" = mul i32 %".698", 3
  %"add.57" = add i32 %"mul.21", %".699"
  store i32 %"add.57", ptr %"R10_Int32"
  ; IADD3 R12, R11.reuse, 0x4, RZ
  %".702" = load i32, ptr %"R11_Int32"
  %"add.58" = add i32 %".702", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R12_Int32"
  ; IMAD.WIDE R18, R11, R17.reuse, c[0x0][0x168]
  %".705" = load i32, ptr %"R11_Int32"
  %".706" = load i32, ptr %"R17_Int32"
  %"mul.22" = mul i32 %".705", %".706"
  %"add.60" = add i32 %"mul.22", %"Arg_3"
  store i32 %"add.60", ptr %"R18_Int32"
  ; IADD3 R16, R14, 0x4, RZ
  %".709" = load i32, ptr %"R14_Int32"
  %"add.61" = add i32 %".709", 4
  %"add.62" = add i32 %"add.61", 0
  store i32 %"add.62", ptr %"R16_Int32"
  ; IADD3 R15, R10.reuse, 0x4, RZ
  %".712" = load i32, ptr %"R10_Int32"
  %"add.63" = add i32 %".712", 4
  %"add.64" = add i32 %"add.63", 0
  store i32 %"add.64", ptr %"R15_Int32"
  ; IMAD.WIDE R22, R10, R17, c[0x0][0x170]
  %".715" = load i32, ptr %"R10_Int32"
  %".716" = load i32, ptr %"R17_Int32"
  %"mul.23" = mul i32 %".715", %".716"
  %"add.65" = add i32 %"mul.23", %"Arg_4"
  store i32 %"add.65", ptr %"R22_Int32"
  ; IMAD.WIDE R20, R14, R17.reuse, c[0x0][0x170]
  %".719" = load i32, ptr %"R14_Int32"
  %".720" = load i32, ptr %"R17_Int32"
  %"mul.24" = mul i32 %".719", %".720"
  %"add.66" = add i32 %"mul.24", %"Arg_4"
  store i32 %"add.66", ptr %"R20_Int32"
  ; LDG.E.SYS R39, [R18]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".723" = load i32, ptr %"R18_Float32_PTR"
  %".724" = add i32 %".723", 0
  %"for_LDG.48" = inttoptr i32 %".724" to ptr
  %".725" = load float, ptr %"for_LDG.48"
  store float %".725", ptr %"R39_Float32"
  ; IMAD.WIDE R12, R12, R17.reuse, c[0x0][0x168]
  %".728" = load i32, ptr %"R12_Int32"
  %".729" = load i32, ptr %"R17_Int32"
  %"mul.25" = mul i32 %".728", %".729"
  %"add.67" = add i32 %"mul.25", %"Arg_3"
  store i32 %"add.67", ptr %"R12_Int32"
  ; LDG.E.SYS R37, [R22]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".732" = load i32, ptr %"R22_Float32_PTR"
  %".733" = add i32 %".732", 0
  %"for_LDG.49" = inttoptr i32 %".733" to ptr
  %".734" = load float, ptr %"for_LDG.49"
  store float %".734", ptr %"R37_Float32"
  ; LDG.E.SYS R36, [R20]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".737" = load i32, ptr %"R20_Float32_PTR"
  %".738" = add i32 %".737", 0
  %"for_LDG.50" = inttoptr i32 %".738" to ptr
  %".739" = load float, ptr %"for_LDG.50"
  store float %".739", ptr %"R36_Float32"
  ; IMAD.WIDE R14, R15, R17, c[0x0][0x170]
  %".742" = load i32, ptr %"R15_Int32"
  %".743" = load i32, ptr %"R17_Int32"
  %"mul.26" = mul i32 %".742", %".743"
  %"add.68" = add i32 %"mul.26", %"Arg_4"
  store i32 %"add.68", ptr %"R14_Int32"
  ; LDG.E.SYS R34, [R18+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".746" = load i32, ptr %"R18_Float32_PTR"
  %".747" = add i32 %".746", 4
  %"for_LDG.51" = inttoptr i32 %".747" to ptr
  %".748" = load float, ptr %"for_LDG.51"
  store float %".748", ptr %"R34_Float32"
  ; LDG.E.SYS R38, [R22+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".751" = load i32, ptr %"R22_Float32_PTR"
  %".752" = add i32 %".751", 4
  %"for_LDG.52" = inttoptr i32 %".752" to ptr
  %".753" = load float, ptr %"for_LDG.52"
  store float %".753", ptr %"R38_Float32"
  ; LDG.E.SYS R35, [R20+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".756" = load i32, ptr %"R20_Float32_PTR"
  %".757" = add i32 %".756", 4
  %"for_LDG.53" = inttoptr i32 %".757" to ptr
  %".758" = load float, ptr %"for_LDG.53"
  store float %".758", ptr %"R35_Float32"
  ; IMAD.WIDE R16, R16, R17, c[0x0][0x170]
  %".761" = load i32, ptr %"R16_Int32"
  %".762" = load i32, ptr %"R17_Int32"
  %"mul.27" = mul i32 %".761", %".762"
  %"add.69" = add i32 %"mul.27", %"Arg_4"
  store i32 %"add.69", ptr %"R16_Int32"
  ; LDG.E.SYS R24, [R18+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".765" = load i32, ptr %"R18_Float32_PTR"
  %".766" = add i32 %".765", 8
  %"for_LDG.54" = inttoptr i32 %".766" to ptr
  %".767" = load float, ptr %"for_LDG.54"
  store float %".767", ptr %"R24_Float32"
  ; LDG.E.SYS R40, [R22+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".770" = load i32, ptr %"R22_Float32_PTR"
  %".771" = add i32 %".770", 8
  %"for_LDG.55" = inttoptr i32 %".771" to ptr
  %".772" = load float, ptr %"for_LDG.55"
  store float %".772", ptr %"R40_Float32"
  ; LDG.E.SYS R41, [R20+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".775" = load i32, ptr %"R20_Float32_PTR"
  %".776" = add i32 %".775", 8
  %"for_LDG.56" = inttoptr i32 %".776" to ptr
  %".777" = load float, ptr %"for_LDG.56"
  store float %".777", ptr %"R41_Float32"
  ; LDG.E.SYS R44, [R18+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".780" = load i32, ptr %"R18_Float32_PTR"
  %".781" = add i32 %".780", 12
  %"for_LDG.57" = inttoptr i32 %".781" to ptr
  %".782" = load float, ptr %"for_LDG.57"
  store float %".782", ptr %"R44_Float32"
  ; LDG.E.SYS R42, [R22+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".785" = load i32, ptr %"R22_Float32_PTR"
  %".786" = add i32 %".785", 12
  %"for_LDG.58" = inttoptr i32 %".786" to ptr
  %".787" = load float, ptr %"for_LDG.58"
  store float %".787", ptr %"R42_Float32"
  ; LDG.E.SYS R43, [R20+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32_PTR", ptr %"R20_Int32", i32 4, i1 0)
  %".790" = load i32, ptr %"R20_Float32_PTR"
  %".791" = add i32 %".790", 12
  %"for_LDG.59" = inttoptr i32 %".791" to ptr
  %".792" = load float, ptr %"for_LDG.59"
  store float %".792", ptr %"R43_Float32"
  ; LDG.E.SYS R48, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".795" = load i32, ptr %"R12_Float32_PTR"
  %".796" = add i32 %".795", 0
  %"for_LDG.60" = inttoptr i32 %".796" to ptr
  %".797" = load float, ptr %"for_LDG.60"
  store float %".797", ptr %"R48_Float32"
  ; LDG.E.SYS R46, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".800" = load i32, ptr %"R14_Float32_PTR"
  %".801" = add i32 %".800", 0
  %"for_LDG.61" = inttoptr i32 %".801" to ptr
  %".802" = load float, ptr %"for_LDG.61"
  store float %".802", ptr %"R46_Float32"
  ; LDG.E.SYS R45, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".805" = load i32, ptr %"R16_Float32_PTR"
  %".806" = add i32 %".805", 0
  %"for_LDG.62" = inttoptr i32 %".806" to ptr
  %".807" = load float, ptr %"for_LDG.62"
  store float %".807", ptr %"R45_Float32"
  ; LDG.E.SYS R56, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".810" = load i32, ptr %"R12_Float32_PTR"
  %".811" = add i32 %".810", 4
  %"for_LDG.63" = inttoptr i32 %".811" to ptr
  %".812" = load float, ptr %"for_LDG.63"
  store float %".812", ptr %"R56_Float32"
  ; LDG.E.SYS R50, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".815" = load i32, ptr %"R14_Float32_PTR"
  %".816" = add i32 %".815", 4
  %"for_LDG.64" = inttoptr i32 %".816" to ptr
  %".817" = load float, ptr %"for_LDG.64"
  store float %".817", ptr %"R50_Float32"
  ; LDG.E.SYS R47, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".820" = load i32, ptr %"R16_Float32_PTR"
  %".821" = add i32 %".820", 4
  %"for_LDG.65" = inttoptr i32 %".821" to ptr
  %".822" = load float, ptr %"for_LDG.65"
  store float %".822", ptr %"R47_Float32"
  ; LDG.E.SYS R10, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".825" = load i32, ptr %"R12_Float32_PTR"
  %".826" = add i32 %".825", 8
  %"for_LDG.66" = inttoptr i32 %".826" to ptr
  %".827" = load float, ptr %"for_LDG.66"
  store float %".827", ptr %"R10_Float32"
  ; LDG.E.SYS R25, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".830" = load i32, ptr %"R14_Float32_PTR"
  %".831" = add i32 %".830", 8
  %"for_LDG.67" = inttoptr i32 %".831" to ptr
  %".832" = load float, ptr %"for_LDG.67"
  store float %".832", ptr %"R25_Float32"
  ; LDG.E.SYS R19, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".835" = load i32, ptr %"R16_Float32_PTR"
  %".836" = add i32 %".835", 8
  %"for_LDG.68" = inttoptr i32 %".836" to ptr
  %".837" = load float, ptr %"for_LDG.68"
  store float %".837", ptr %"R19_Float32"
  ; LDG.E.SYS R18, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".840" = load i32, ptr %"R12_Float32_PTR"
  %".841" = add i32 %".840", 12
  %"for_LDG.69" = inttoptr i32 %".841" to ptr
  %".842" = load float, ptr %"for_LDG.69"
  store float %".842", ptr %"R18_Float32"
  ; LDG.E.SYS R20, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".845" = load i32, ptr %"R14_Float32_PTR"
  %".846" = add i32 %".845", 12
  %"for_LDG.70" = inttoptr i32 %".846" to ptr
  %".847" = load float, ptr %"for_LDG.70"
  store float %".847", ptr %"R20_Float32"
  ; LDG.E.SYS R21, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".850" = load i32, ptr %"R16_Float32_PTR"
  %".851" = add i32 %".850", 12
  %"for_LDG.71" = inttoptr i32 %".851" to ptr
  %".852" = load float, ptr %"for_LDG.71"
  store float %".852", ptr %"R21_Float32"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".855" = xor i1 1, 1
  %".856" = and i1 %".855", 1
  %".857" = and i1 %".856", 1
  ; IADD3 R9, R9, -0x8, RZ
  %".859" = load i32, ptr %"R9_Int32"
  %"add.70" = add i32 %".859", -8
  %"add.71" = add i32 %"add.70", 0
  store i32 %"add.71", ptr %"R9_Int32"
  ; IADD3 R11, R11, 0x8, RZ
  %".862" = load i32, ptr %"R11_Int32"
  %"add.72" = add i32 %".862", 8
  %"add.73" = add i32 %"add.72", 0
  store i32 %"add.73", ptr %"R11_Int32"
  ; FFMA R37, R37, R39, R52
  %".865" = load float, ptr %"R37_Float32"
  %".866" = load float, ptr %"R39_Float32"
  %".867" = load float, ptr %"R52_Float32"
  %"fmul.32" = fmul float %".865", %".866"
  %"fadd.32" = fadd float %"fmul.32", %".867"
  store float %"fadd.32", ptr %"R37_Float32"
  ; FFMA R36, R39, R36, R54
  %".870" = load float, ptr %"R39_Float32"
  %".871" = load float, ptr %"R36_Float32"
  %".872" = load float, ptr %"R54_Float32"
  %"fmul.33" = fmul float %".870", %".871"
  %"fadd.33" = fadd float %"fmul.33", %".872"
  store float %"fadd.33", ptr %"R36_Float32"
  ; FFMA R37, R38, R34, R37
  %".875" = load float, ptr %"R38_Float32"
  %".876" = load float, ptr %"R34_Float32"
  %".877" = load float, ptr %"R37_Float32"
  %"fmul.34" = fmul float %".875", %".876"
  %"fadd.34" = fadd float %"fmul.34", %".877"
  store float %"fadd.34", ptr %"R37_Float32"
  ; FFMA R35, R34, R35, R36
  %".880" = load float, ptr %"R34_Float32"
  %".881" = load float, ptr %"R35_Float32"
  %".882" = load float, ptr %"R36_Float32"
  %"fmul.35" = fmul float %".880", %".881"
  %"fadd.35" = fadd float %"fmul.35", %".882"
  store float %"fadd.35", ptr %"R35_Float32"
  ; FFMA R37, R40, R24, R37
  %".885" = load float, ptr %"R40_Float32"
  %".886" = load float, ptr %"R24_Float32"
  %".887" = load float, ptr %"R37_Float32"
  %"fmul.36" = fmul float %".885", %".886"
  %"fadd.36" = fadd float %"fmul.36", %".887"
  store float %"fadd.36", ptr %"R37_Float32"
  ; FFMA R35, R24, R41, R35
  %".890" = load float, ptr %"R24_Float32"
  %".891" = load float, ptr %"R41_Float32"
  %".892" = load float, ptr %"R35_Float32"
  %"fmul.37" = fmul float %".890", %".891"
  %"fadd.37" = fadd float %"fmul.37", %".892"
  store float %"fadd.37", ptr %"R35_Float32"
  ; FFMA R37, R42, R44, R37
  %".895" = load float, ptr %"R42_Float32"
  %".896" = load float, ptr %"R44_Float32"
  %".897" = load float, ptr %"R37_Float32"
  %"fmul.38" = fmul float %".895", %".896"
  %"fadd.38" = fadd float %"fmul.38", %".897"
  store float %"fadd.38", ptr %"R37_Float32"
  ; FFMA R35, R44, R43, R35
  %".900" = load float, ptr %"R44_Float32"
  %".901" = load float, ptr %"R43_Float32"
  %".902" = load float, ptr %"R35_Float32"
  %"fmul.39" = fmul float %".900", %".901"
  %"fadd.39" = fadd float %"fmul.39", %".902"
  store float %"fadd.39", ptr %"R35_Float32"
  ; FFMA R37, R46, R48, R37
  %".905" = load float, ptr %"R46_Float32"
  %".906" = load float, ptr %"R48_Float32"
  %".907" = load float, ptr %"R37_Float32"
  %"fmul.40" = fmul float %".905", %".906"
  %"fadd.40" = fadd float %"fmul.40", %".907"
  store float %"fadd.40", ptr %"R37_Float32"
  ; FFMA R35, R48, R45, R35
  %".910" = load float, ptr %"R48_Float32"
  %".911" = load float, ptr %"R45_Float32"
  %".912" = load float, ptr %"R35_Float32"
  %"fmul.41" = fmul float %".910", %".911"
  %"fadd.41" = fadd float %"fmul.41", %".912"
  store float %"fadd.41", ptr %"R35_Float32"
  ; FFMA R37, R50, R56, R37
  %".915" = load float, ptr %"R50_Float32"
  %".916" = load float, ptr %"R56_Float32"
  %".917" = load float, ptr %"R37_Float32"
  %"fmul.42" = fmul float %".915", %".916"
  %"fadd.42" = fadd float %"fmul.42", %".917"
  store float %"fadd.42", ptr %"R37_Float32"
  ; FFMA R35, R56, R47, R35
  %".920" = load float, ptr %"R56_Float32"
  %".921" = load float, ptr %"R47_Float32"
  %".922" = load float, ptr %"R35_Float32"
  %"fmul.43" = fmul float %".920", %".921"
  %"fadd.43" = fadd float %"fmul.43", %".922"
  store float %"fadd.43", ptr %"R35_Float32"
  ; FFMA R25, R25, R10, R37
  %".925" = load float, ptr %"R25_Float32"
  %".926" = load float, ptr %"R10_Float32"
  %".927" = load float, ptr %"R37_Float32"
  %"fmul.44" = fmul float %".925", %".926"
  %"fadd.44" = fadd float %"fmul.44", %".927"
  store float %"fadd.44", ptr %"R25_Float32"
  ; FFMA R19, R10, R19, R35
  %".930" = load float, ptr %"R10_Float32"
  %".931" = load float, ptr %"R19_Float32"
  %".932" = load float, ptr %"R35_Float32"
  %"fmul.45" = fmul float %".930", %".931"
  %"fadd.45" = fadd float %"fmul.45", %".932"
  store float %"fadd.45", ptr %"R19_Float32"
  ; FFMA R52, R20, R18, R25
  %".935" = load float, ptr %"R20_Float32"
  %".936" = load float, ptr %"R18_Float32"
  %".937" = load float, ptr %"R25_Float32"
  %"fmul.46" = fmul float %".935", %".936"
  %"fadd.46" = fadd float %"fmul.46", %".937"
  store float %"fadd.46", ptr %"R52_Float32"
  ; FFMA R54, R18, R21, R19
  %".940" = load float, ptr %"R18_Float32"
  %".941" = load float, ptr %"R21_Float32"
  %".942" = load float, ptr %"R19_Float32"
  %"fmul.47" = fmul float %".940", %".941"
  %"fadd.47" = fadd float %"fmul.47", %".942"
  store float %"fadd.47", ptr %"R54_Float32"
.L_x_6:
  ; ISETP.NE.OR P0, PT, R9, RZ, P0
  %".945" = load i32, ptr %"R9_Int32"
  %".946" = load i1, ptr %"PT_Bool"
  %"cmp.10" = icmp ne i32 %".945", 0
  %".947" = or i1 %"cmp.10", %".946"
  ; @!P0 BRA `(.L_x_2)
  %".949" = load i1, ptr %"P0_Bool"
  %".950" = icmp eq i1 %".949", 1
  br i1 %".950", label %".L_x_2", label %".L_x_3"
.L_x_3:
  ; IADD3 R13, R0, R11, RZ
  %".953" = load i32, ptr %"R0_Int32"
  %".954" = load i32, ptr %"R11_Int32"
  %"add.74" = add i32 %".953", %".954"
  %"add.75" = add i32 %"add.74", 0
  store i32 %"add.75", ptr %"R13_Int32"
  ; MOV R16, 0x4
  store i32 4, ptr %"R16_Int32"
  ; LEA R17, R2.reuse, R13, 0x2
  %".959" = load i32, ptr %"R2_Int32"
  %".960" = load i32, ptr %"R13_Int32"
  %"shl.4" = shl i32 %".959", 2
  %"add.76" = add i32 %"shl.4", %".960"
  store i32 %"add.76", ptr %"R17_Int32"
  ; IMAD R15, R2, 0x3, R13
  %".963" = load i32, ptr %"R2_Int32"
  %".964" = load i32, ptr %"R13_Int32"
  %"mul.28" = mul i32 %".963", 3
  %"add.77" = add i32 %"mul.28", %".964"
  store i32 %"add.77", ptr %"R15_Int32"
  ; IMAD.WIDE R12, R11, R16, c[0x0][0x168]
  %".967" = load i32, ptr %"R11_Int32"
  %".968" = load i32, ptr %"R16_Int32"
  %"mul.29" = mul i32 %".967", %".968"
  %"add.78" = add i32 %"mul.29", %"Arg_3"
  store i32 %"add.78", ptr %"R12_Int32"
  ; IMAD.WIDE R14, R15, R16, c[0x0][0x170]
  %".971" = load i32, ptr %"R15_Int32"
  %".972" = load i32, ptr %"R16_Int32"
  %"mul.30" = mul i32 %".971", %".972"
  %"add.79" = add i32 %"mul.30", %"Arg_4"
  store i32 %"add.79", ptr %"R14_Int32"
  ; IMAD.WIDE R16, R17, R16, c[0x0][0x170]
  %".975" = load i32, ptr %"R17_Int32"
  %".976" = load i32, ptr %"R16_Int32"
  %"mul.31" = mul i32 %".975", %".976"
  %"add.80" = add i32 %"mul.31", %"Arg_4"
  store i32 %"add.80", ptr %"R16_Int32"
  ; LDG.E.SYS R21, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".979" = load i32, ptr %"R12_Float32_PTR"
  %".980" = add i32 %".979", 0
  %"for_LDG.72" = inttoptr i32 %".980" to ptr
  %".981" = load float, ptr %"for_LDG.72"
  store float %".981", ptr %"R21_Float32"
  ; LDG.E.SYS R19, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".984" = load i32, ptr %"R14_Float32_PTR"
  %".985" = add i32 %".984", 0
  %"for_LDG.73" = inttoptr i32 %".985" to ptr
  %".986" = load float, ptr %"for_LDG.73"
  store float %".986", ptr %"R19_Float32"
  ; LDG.E.SYS R10, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".989" = load i32, ptr %"R16_Float32_PTR"
  %".990" = add i32 %".989", 0
  %"for_LDG.74" = inttoptr i32 %".990" to ptr
  %".991" = load float, ptr %"for_LDG.74"
  store float %".991", ptr %"R10_Float32"
  ; LDG.E.SYS R23, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".994" = load i32, ptr %"R12_Float32_PTR"
  %".995" = add i32 %".994", 4
  %"for_LDG.75" = inttoptr i32 %".995" to ptr
  %".996" = load float, ptr %"for_LDG.75"
  store float %".996", ptr %"R23_Float32"
  ; LDG.E.SYS R18, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".999" = load i32, ptr %"R14_Float32_PTR"
  %".1000" = add i32 %".999", 4
  %"for_LDG.76" = inttoptr i32 %".1000" to ptr
  %".1001" = load float, ptr %"for_LDG.76"
  store float %".1001", ptr %"R18_Float32"
  ; LDG.E.SYS R20, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1004" = load i32, ptr %"R16_Float32_PTR"
  %".1005" = add i32 %".1004", 4
  %"for_LDG.77" = inttoptr i32 %".1005" to ptr
  %".1006" = load float, ptr %"for_LDG.77"
  store float %".1006", ptr %"R20_Float32"
  ; LDG.E.SYS R35, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1009" = load i32, ptr %"R12_Float32_PTR"
  %".1010" = add i32 %".1009", 8
  %"for_LDG.78" = inttoptr i32 %".1010" to ptr
  %".1011" = load float, ptr %"for_LDG.78"
  store float %".1011", ptr %"R35_Float32"
  ; LDG.E.SYS R25, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1014" = load i32, ptr %"R14_Float32_PTR"
  %".1015" = add i32 %".1014", 8
  %"for_LDG.79" = inttoptr i32 %".1015" to ptr
  %".1016" = load float, ptr %"for_LDG.79"
  store float %".1016", ptr %"R25_Float32"
  ; LDG.E.SYS R22, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1019" = load i32, ptr %"R16_Float32_PTR"
  %".1020" = add i32 %".1019", 8
  %"for_LDG.80" = inttoptr i32 %".1020" to ptr
  %".1021" = load float, ptr %"for_LDG.80"
  store float %".1021", ptr %"R22_Float32"
  ; LDG.E.SYS R39, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1024" = load i32, ptr %"R12_Float32_PTR"
  %".1025" = add i32 %".1024", 12
  %"for_LDG.81" = inttoptr i32 %".1025" to ptr
  %".1026" = load float, ptr %"for_LDG.81"
  store float %".1026", ptr %"R39_Float32"
  ; LDG.E.SYS R37, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1029" = load i32, ptr %"R14_Float32_PTR"
  %".1030" = add i32 %".1029", 12
  %"for_LDG.82" = inttoptr i32 %".1030" to ptr
  %".1031" = load float, ptr %"for_LDG.82"
  store float %".1031", ptr %"R37_Float32"
  ; LDG.E.SYS R24, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1034" = load i32, ptr %"R16_Float32_PTR"
  %".1035" = add i32 %".1034", 12
  %"for_LDG.83" = inttoptr i32 %".1035" to ptr
  %".1036" = load float, ptr %"for_LDG.83"
  store float %".1036", ptr %"R24_Float32"
  ; IADD3 R9, R9, -0x4, RZ
  %".1039" = load i32, ptr %"R9_Int32"
  %"add.81" = add i32 %".1039", -4
  %"add.82" = add i32 %"add.81", 0
  store i32 %"add.82", ptr %"R9_Int32"
  ; IADD3 R11, R11, 0x4, RZ
  %".1042" = load i32, ptr %"R11_Int32"
  %"add.83" = add i32 %".1042", 4
  %"add.84" = add i32 %"add.83", 0
  store i32 %"add.84", ptr %"R11_Int32"
  ; ISETP.NE.AND P0, PT, R9, RZ, PT
  %".1045" = load i32, ptr %"R9_Int32"
  %".1046" = load i1, ptr %"PT_Bool"
  %"cmp.11" = icmp ne i32 %".1045", 0
  %".1047" = and i1 %"cmp.11", %".1046"
  ; FFMA R19, R19, R21, R52
  %".1049" = load float, ptr %"R19_Float32"
  %".1050" = load float, ptr %"R21_Float32"
  %".1051" = load float, ptr %"R52_Float32"
  %"fmul.48" = fmul float %".1049", %".1050"
  %"fadd.48" = fadd float %"fmul.48", %".1051"
  store float %"fadd.48", ptr %"R19_Float32"
  ; FFMA R10, R21, R10, R54
  %".1054" = load float, ptr %"R21_Float32"
  %".1055" = load float, ptr %"R10_Float32"
  %".1056" = load float, ptr %"R54_Float32"
  %"fmul.49" = fmul float %".1054", %".1055"
  %"fadd.49" = fadd float %"fmul.49", %".1056"
  store float %"fadd.49", ptr %"R10_Float32"
  ; FFMA R18, R18, R23, R19
  %".1059" = load float, ptr %"R18_Float32"
  %".1060" = load float, ptr %"R23_Float32"
  %".1061" = load float, ptr %"R19_Float32"
  %"fmul.50" = fmul float %".1059", %".1060"
  %"fadd.50" = fadd float %"fmul.50", %".1061"
  store float %"fadd.50", ptr %"R18_Float32"
  ; FFMA R10, R23, R20, R10
  %".1064" = load float, ptr %"R23_Float32"
  %".1065" = load float, ptr %"R20_Float32"
  %".1066" = load float, ptr %"R10_Float32"
  %"fmul.51" = fmul float %".1064", %".1065"
  %"fadd.51" = fadd float %"fmul.51", %".1066"
  store float %"fadd.51", ptr %"R10_Float32"
  ; FFMA R18, R25, R35, R18
  %".1069" = load float, ptr %"R25_Float32"
  %".1070" = load float, ptr %"R35_Float32"
  %".1071" = load float, ptr %"R18_Float32"
  %"fmul.52" = fmul float %".1069", %".1070"
  %"fadd.52" = fadd float %"fmul.52", %".1071"
  store float %"fadd.52", ptr %"R18_Float32"
  ; FFMA R10, R35, R22, R10
  %".1074" = load float, ptr %"R35_Float32"
  %".1075" = load float, ptr %"R22_Float32"
  %".1076" = load float, ptr %"R10_Float32"
  %"fmul.53" = fmul float %".1074", %".1075"
  %"fadd.53" = fadd float %"fmul.53", %".1076"
  store float %"fadd.53", ptr %"R10_Float32"
  ; FFMA R52, R37, R39, R18
  %".1079" = load float, ptr %"R37_Float32"
  %".1080" = load float, ptr %"R39_Float32"
  %".1081" = load float, ptr %"R18_Float32"
  %"fmul.54" = fmul float %".1079", %".1080"
  %"fadd.54" = fadd float %"fmul.54", %".1081"
  store float %"fadd.54", ptr %"R52_Float32"
  ; FFMA R54, R39, R24, R10
  %".1084" = load float, ptr %"R39_Float32"
  %".1085" = load float, ptr %"R24_Float32"
  %".1086" = load float, ptr %"R10_Float32"
  %"fmul.55" = fmul float %".1084", %".1085"
  %"fadd.55" = fadd float %"fmul.55", %".1086"
  store float %"fadd.55", ptr %"R54_Float32"
  ; @P0 BRA `(.L_x_3)
  %".1089" = load i1, ptr %"P0_Bool"
  %".1090" = icmp ne i1 %".1089", 1
  br i1 %".1090", label %".L_x_3", label %".L_x_2"
.L_x_2:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1093" = load i32, ptr %"R4_Int32"
  %".1094" = load i1, ptr %"PT_Bool"
  %"cmp.12" = icmp ne i32 %".1093", 0
  %".1095" = and i1 %"cmp.12", %".1094"
  ; @!P0 BRA `(.L_x_1)
  %".1097" = load i1, ptr %"P0_Bool"
  %".1098" = icmp eq i1 %".1097", 1
  br i1 %".1098", label %".L_x_1", label %".L_x_2_split_0x0fb0"
.L_x_2_split_0x0fb0:
  ; IADD3 R9, R0, R11, RZ
  %".1101" = load i32, ptr %"R0_Int32"
  %".1102" = load i32, ptr %"R11_Int32"
  %"add.85" = add i32 %".1101", %".1102"
  %"add.86" = add i32 %"add.85", 0
  store i32 %"add.86", ptr %"R9_Int32"
  ; MOV R15, 0x4
  store i32 4, ptr %"R15_Int32"
  ; LEA R14, R2.reuse, R9, 0x2
  %".1107" = load i32, ptr %"R2_Int32"
  %".1108" = load i32, ptr %"R9_Int32"
  %"shl.5" = shl i32 %".1107", 2
  %"add.87" = add i32 %"shl.5", %".1108"
  store i32 %"add.87", ptr %"R14_Int32"
  ; IMAD R12, R2, 0x3, R9
  %".1111" = load i32, ptr %"R2_Int32"
  %".1112" = load i32, ptr %"R9_Int32"
  %"mul.32" = mul i32 %".1111", 3
  %"add.88" = add i32 %"mul.32", %".1112"
  store i32 %"add.88", ptr %"R12_Int32"
  ; IMAD.WIDE R10, R11, R15, c[0x0][0x168]
  %".1115" = load i32, ptr %"R11_Int32"
  %".1116" = load i32, ptr %"R15_Int32"
  %"mul.33" = mul i32 %".1115", %".1116"
  %"add.89" = add i32 %"mul.33", %"Arg_3"
  store i32 %"add.89", ptr %"R10_Int32"
  ; IMAD.WIDE R12, R12, R15, c[0x0][0x170]
  %".1119" = load i32, ptr %"R12_Int32"
  %".1120" = load i32, ptr %"R15_Int32"
  %"mul.34" = mul i32 %".1119", %".1120"
  %"add.90" = add i32 %"mul.34", %"Arg_4"
  store i32 %"add.90", ptr %"R12_Int32"
  ; IMAD.WIDE R14, R14, R15, c[0x0][0x170]
  %".1123" = load i32, ptr %"R14_Int32"
  %".1124" = load i32, ptr %"R15_Int32"
  %"mul.35" = mul i32 %".1123", %".1124"
  %"add.91" = add i32 %"mul.35", %"Arg_4"
  store i32 %"add.91", ptr %"R14_Int32"
  ; LDG.E.SYS R17, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1127" = load i32, ptr %"R10_Float32_PTR"
  %".1128" = add i32 %".1127", 0
  %"for_LDG.84" = inttoptr i32 %".1128" to ptr
  %".1129" = load float, ptr %"for_LDG.84"
  store float %".1129", ptr %"R17_Float32"
  ; LDG.E.SYS R9, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1132" = load i32, ptr %"R12_Float32_PTR"
  %".1133" = add i32 %".1132", 0
  %"for_LDG.85" = inttoptr i32 %".1133" to ptr
  %".1134" = load float, ptr %"for_LDG.85"
  store float %".1134", ptr %"R9_Float32"
  ; LDG.E.SYS R16, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1137" = load i32, ptr %"R14_Float32_PTR"
  %".1138" = add i32 %".1137", 0
  %"for_LDG.86" = inttoptr i32 %".1138" to ptr
  %".1139" = load float, ptr %"for_LDG.86"
  store float %".1139", ptr %"R16_Float32"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".1142" = load i32, ptr %"R4_Int32"
  %".1143" = load i1, ptr %"PT_Bool"
  %"cmp.13" = icmp ne i32 %".1142", 1
  %".1144" = and i1 %"cmp.13", %".1143"
  ; FFMA R52, R9, R17, R52
  %".1146" = load float, ptr %"R9_Float32"
  %".1147" = load float, ptr %"R17_Float32"
  %".1148" = load float, ptr %"R52_Float32"
  %"fmul.56" = fmul float %".1146", %".1147"
  %"fadd.56" = fadd float %"fmul.56", %".1148"
  store float %"fadd.56", ptr %"R52_Float32"
  ; FFMA R54, R17, R16, R54
  %".1151" = load float, ptr %"R17_Float32"
  %".1152" = load float, ptr %"R16_Float32"
  %".1153" = load float, ptr %"R54_Float32"
  %"fmul.57" = fmul float %".1151", %".1152"
  %"fadd.57" = fadd float %"fmul.57", %".1153"
  store float %"fadd.57", ptr %"R54_Float32"
  ; @!P0 BRA `(.L_x_1)
  %".1156" = load i1, ptr %"P0_Bool"
  %".1157" = icmp eq i1 %".1156", 1
  br i1 %".1157", label %".L_x_1", label %".L_x_2_split_0x1090"
.L_x_2_split_0x1090:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".1160" = load i32, ptr %"R4_Int32"
  %".1161" = load i1, ptr %"PT_Bool"
  %"cmp.14" = icmp ne i32 %".1160", 2
  %".1162" = and i1 %"cmp.14", %".1161"
  ; LDG.E.SYS R9, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1164" = load i32, ptr %"R12_Float32_PTR"
  %".1165" = add i32 %".1164", 4
  %"for_LDG.87" = inttoptr i32 %".1165" to ptr
  %".1166" = load float, ptr %"for_LDG.87"
  store float %".1166", ptr %"R9_Float32"
  ; LDG.E.SYS R17, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1169" = load i32, ptr %"R10_Float32_PTR"
  %".1170" = add i32 %".1169", 4
  %"for_LDG.88" = inttoptr i32 %".1170" to ptr
  %".1171" = load float, ptr %"for_LDG.88"
  store float %".1171", ptr %"R17_Float32"
  ; LDG.E.SYS R16, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1174" = load i32, ptr %"R14_Float32_PTR"
  %".1175" = add i32 %".1174", 4
  %"for_LDG.89" = inttoptr i32 %".1175" to ptr
  %".1176" = load float, ptr %"for_LDG.89"
  store float %".1176", ptr %"R16_Float32"
  ; @P0 LDG.E.SYS R19, [R12+0x8]
  %".1179" = load i1, ptr %"P0_Bool"
  %".1180" = icmp ne i1 %".1179", 1
  br i1 %".1180", label %".L_x_2_split_0x1090_conditionalExpr_0x10d0", label %".L_x_2_split_0x10e0"
.L_x_2_split_0x1090_conditionalExpr_0x10d0:
  ; LDG.E.SYS R19, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1183" = load i32, ptr %"R12_Float32_PTR"
  %".1184" = add i32 %".1183", 8
  %"for_LDG.90" = inttoptr i32 %".1184" to ptr
  %".1185" = load float, ptr %"for_LDG.90"
  store float %".1185", ptr %"R19_Float32"
  ; BRA `(.L_x_2_split_0x10e0)
  br label %".L_x_2_split_0x10e0"
.L_x_2_split_0x10e0:
  ; @P0 LDG.E.SYS R21, [R10+0x8]
  %".1190" = load i1, ptr %"P0_Bool"
  %".1191" = icmp ne i1 %".1190", 1
  br i1 %".1191", label %".L_x_2_split_0x10e0_conditionalExpr_0x10e0", label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10e0_conditionalExpr_0x10e0:
  ; LDG.E.SYS R21, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1194" = load i32, ptr %"R10_Float32_PTR"
  %".1195" = add i32 %".1194", 8
  %"for_LDG.91" = inttoptr i32 %".1195" to ptr
  %".1196" = load float, ptr %"for_LDG.91"
  store float %".1196", ptr %"R21_Float32"
  ; BRA `(.L_x_2_split_0x10f0)
  br label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10f0:
  ; @P0 LDG.E.SYS R18, [R14+0x8]
  %".1201" = load i1, ptr %"P0_Bool"
  %".1202" = icmp ne i1 %".1201", 1
  br i1 %".1202", label %".L_x_2_split_0x10f0_conditionalExpr_0x10f0", label %".L_x_2_split_0x1100"
.L_x_2_split_0x10f0_conditionalExpr_0x10f0:
  ; LDG.E.SYS R18, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1205" = load i32, ptr %"R14_Float32_PTR"
  %".1206" = add i32 %".1205", 8
  %"for_LDG.92" = inttoptr i32 %".1206" to ptr
  %".1207" = load float, ptr %"for_LDG.92"
  store float %".1207", ptr %"R18_Float32"
  ; BRA `(.L_x_2_split_0x1100)
  br label %".L_x_2_split_0x1100"
.L_x_2_split_0x1100:
  ; FFMA R52, R9, R17, R52
  %".1212" = load float, ptr %"R9_Float32"
  %".1213" = load float, ptr %"R17_Float32"
  %".1214" = load float, ptr %"R52_Float32"
  %"fmul.58" = fmul float %".1212", %".1213"
  %"fadd.58" = fadd float %"fmul.58", %".1214"
  store float %"fadd.58", ptr %"R52_Float32"
  ; FFMA R54, R17, R16, R54
  %".1217" = load float, ptr %"R17_Float32"
  %".1218" = load float, ptr %"R16_Float32"
  %".1219" = load float, ptr %"R54_Float32"
  %"fmul.59" = fmul float %".1217", %".1218"
  %"fadd.59" = fadd float %"fmul.59", %".1219"
  store float %"fadd.59", ptr %"R54_Float32"
  ; @P0 FFMA R52, R19, R21, R52
  %".1222" = load i1, ptr %"P0_Bool"
  %".1223" = icmp ne i1 %".1222", 1
  br i1 %".1223", label %".L_x_2_split_0x1100_conditionalExpr_0x1120", label %".L_x_2_split_0x1130"
.L_x_2_split_0x1100_conditionalExpr_0x1120:
  ; FFMA R52, R19, R21, R52
  %".1226" = load float, ptr %"R19_Float32"
  %".1227" = load float, ptr %"R21_Float32"
  %".1228" = load float, ptr %"R52_Float32"
  %"fmul.60" = fmul float %".1226", %".1227"
  %"fadd.60" = fadd float %"fmul.60", %".1228"
  store float %"fadd.60", ptr %"R52_Float32"
  ; BRA `(.L_x_2_split_0x1130)
  br label %".L_x_2_split_0x1130"
.L_x_2_split_0x1130:
  ; @P0 FFMA R54, R21, R18, R54
  %".1233" = load i1, ptr %"P0_Bool"
  %".1234" = icmp ne i1 %".1233", 1
  br i1 %".1234", label %".L_x_2_split_0x1130_conditionalExpr_0x1130", label %".L_x_1"
.L_x_2_split_0x1130_conditionalExpr_0x1130:
  ; FFMA R54, R21, R18, R54
  %".1237" = load float, ptr %"R21_Float32"
  %".1238" = load float, ptr %"R18_Float32"
  %".1239" = load float, ptr %"R54_Float32"
  %"fmul.61" = fmul float %".1237", %".1238"
  %"fadd.61" = fadd float %"fmul.61", %".1239"
  store float %"fadd.61", ptr %"R54_Float32"
  ; BRA `(.L_x_1)
  br label %".L_x_1"
.L_x_1:
  ; LDG.E.SYS R9, [R26]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R26_Float32_PTR", ptr %"R26_Int32", i32 4, i1 0)
  %".1244" = load i32, ptr %"R26_Float32_PTR"
  %".1245" = add i32 %".1244", 0
  %"for_LDG.93" = inttoptr i32 %".1245" to ptr
  %".1246" = load float, ptr %"for_LDG.93"
  store float %".1246", ptr %"R9_Float32"
  ; MOV R10, 0x3bbb989d
  store float 0x41cdddcc40000000, ptr %"R10_Float32"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R11, 0x437c0000
  store float 0x41d0df0000000000, ptr %"R11_Float32"
  ; BSSY B0, `(.L_x_7)
  ; FADD R9, R9, R52
  %".1255" = load float, ptr %"R9_Float32"
  %".1256" = load float, ptr %"R52_Float32"
  %"fadd.62" = fadd float %".1255", %".1256"
  store float %"fadd.62", ptr %"R9_Float32"
  ; FFMA.SAT R10, -R9, R10, 0.5
  %".1259" = load float, ptr %"R9_Float32"
  %".1260" = sub float              0x0, %".1259"
  %".1261" = load float, ptr %"R10_Float32"
  %"fmul.62" = fmul float %".1260", %".1261"
  %"fadd.63" = fadd float %"fmul.62", 0x3fe0000000000000
  store float %"fadd.63", ptr %"R10_Float32"
  ; FFMA.RM R10, R10, R11, 12582913
  %".1264" = load float, ptr %"R10_Float32"
  %".1265" = load float, ptr %"R11_Float32"
  %"fmul.63" = fmul float %".1264", %".1265"
  %"fadd.64" = fadd float %"fmul.63", 0x4168000020000000
  store float %"fadd.64", ptr %"R10_Float32"
  ; FADD R12, R10.reuse, -12583039
  %".1268" = load float, ptr %"R10_Float32"
  %"fadd.65" = fadd float %".1268", 0xc168000fe0000000
  store float %"fadd.65", ptr %"R12_Float32"
  ; SHF.L.U32 R10, R10, 0x17, RZ
  %".1271" = icmp ult i32 23, 32
  %"SHF_min" = select  i1 %".1271", i32 23, i32 32
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Int32", ptr %"R10_Float32", i32 4, i1 0)
  %".1272" = load i32, ptr %"R10_Int32"
  %"zext" = zext i32 0 to i64
  %"zext.1" = zext i32 %".1272" to i64
  %"zext.2" = zext i32 23 to i64
  %"shl.6" = shl i64 %"zext", 32
  %"or" = or i64 %"shl.6", %"zext.1"
  %"shl.7" = shl i64 %"or", %"zext.2"
  %"and" = and i64 %"shl.7", 4294967295
  %"trunc32" = trunc i64 %"and" to i32
  store i32 %"trunc32", ptr %"R10_Int32"
  ; FFMA R12, -R9, 1.4426950216293334961, -R12
  %".1275" = load float, ptr %"R9_Float32"
  %".1276" = sub float              0x0, %".1275"
  %".1277" = load float, ptr %"R12_Float32"
  %".1278" = sub float              0x0, %".1277"
  %"fmul.64" = fmul float %".1276", 0x3ff7154760000000
  %"fadd.66" = fadd float %"fmul.64", %".1278"
  store float %"fadd.66", ptr %"R12_Float32"
  ; FFMA R12, -R9, 1.925963033500011079e-08, R12
  %".1281" = load float, ptr %"R9_Float32"
  %".1282" = sub float              0x0, %".1281"
  %".1283" = load float, ptr %"R12_Float32"
  %"fmul.65" = fmul float %".1282", 0x3e54ae0c00000000
  %"fadd.67" = fadd float %"fmul.65", %".1283"
  store float %"fadd.67", ptr %"R12_Float32"
  ; MUFU.EX2 R9, R12
  %".1286" = load float, ptr %"R12_Float32"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1286")
  store float %"llvm_exp2_f32_result", ptr %"R9_Float32"
  ; FFMA R24, R10, R9, 1
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32", ptr %"R10_Int32", i32 4, i1 0)
  %".1289" = load float, ptr %"R10_Float32"
  %".1290" = load float, ptr %"R9_Float32"
  %"fmul.66" = fmul float %".1289", %".1290"
  %"fadd.68" = fadd float %"fmul.66", 0x3ff0000000000000
  store float %"fadd.68", ptr %"R24_Float32"
  ; IADD3 R9, R24, 0x1800000, RZ
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Int32", ptr %"R24_Float32", i32 4, i1 0)
  %".1293" = load i32, ptr %"R24_Int32"
  %"add.92" = add i32 %".1293", 25165824
  %"add.93" = add i32 %"add.92", 0
  store i32 %"add.93", ptr %"R9_Int32"
  ; LOP3.LUT R9, R9, 0x7f800000, RZ, 0xc0, !PT
  %".1296" = load i32, ptr %"R9_Int32"
  %".1297" = and i32 %".1296", 2139095040
  store i32 %".1297", ptr %"R9_Int32"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".1300" = load i32, ptr %"R9_Int32"
  %".1301" = load i1, ptr %"PT_Bool"
  %"cmp.15" = icmp sgt i32 %".1300", 33554431
  %".1302" = and i1 %"cmp.15", %".1301"
  ; @P0 BRA `(.L_x_8)
  %".1304" = load i1, ptr %"P0_Bool"
  %".1305" = icmp ne i1 %".1304", 1
  br i1 %".1305", label %".L_x_8", label %".L_x_1_split_0x1260"
.L_x_1_split_0x1260:
  ; MOV R10, 0x1280
  store i32 4736, ptr %"R10_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_NOTYPE", ptr %"R10_Int32", i32 4, i1 0)
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R9, R22
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Int32", ptr %"R22_Float32", i32 4, i1 0)
  %".1311" = load i32, ptr %"R22_Int32"
  store i32 %".1311", ptr %"R9_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R9_Float32", ptr %"R9_Int32", i32 4, i1 0)
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %".1316" = load float, ptr %"R24_Float32"
  %".1317" = fdiv float 0x3ff0000000000000, %".1316"
  store float %".1317", ptr %"R9_Float32"
  ; FFMA R10, R24, R9, -1
  %".1320" = load float, ptr %"R24_Float32"
  %".1321" = load float, ptr %"R9_Float32"
  %"fmul.67" = fmul float %".1320", %".1321"
  %"fadd.69" = fadd float %"fmul.67", 0xbff0000000000000
  store float %"fadd.69", ptr %"R10_Float32"
  ; FADD.FTZ R10, -R10, -RZ
  %".1324" = load float, ptr %"R10_Float32"
  %".1325" = sub float              0x0, %".1324"
  %"fadd.70" = fadd float %".1325",              0x0
  store float %"fadd.70", ptr %"R10_Float32"
  ; FFMA R9, R9, R10, R9
  %".1328" = load float, ptr %"R9_Float32"
  %".1329" = load float, ptr %"R10_Float32"
  %".1330" = load float, ptr %"R9_Float32"
  %"fmul.68" = fmul float %".1328", %".1329"
  %"fadd.71" = fadd float %"fmul.68", %".1330"
  store float %"fadd.71", ptr %"R9_Float32"
.L_x_9:
  ; BSYNC B0
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R32_Float32_PTR", ptr %"R32_Int32", i32 4, i1 0)
  %".1334" = load i32, ptr %"R32_Float32_PTR"
  %".1335" = add i32 %".1334", 0
  %"for_LDG.94" = inttoptr i32 %".1335" to ptr
  %".1336" = load float, ptr %"for_LDG.94"
  store float %".1336", ptr %"R11_Float32"
  ; MOV R10, 0x3bbb989d
  store float 0x41cdddcc40000000, ptr %"R10_Float32"
  ; MOV R13, 0x437c0000
  store float 0x41d0df0000000000, ptr %"R13_Float32"
  ; FADD R11, R11, R54
  %".1343" = load float, ptr %"R11_Float32"
  %".1344" = load float, ptr %"R54_Float32"
  %"fadd.72" = fadd float %".1343", %".1344"
  store float %"fadd.72", ptr %"R11_Float32"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %".1347" = load float, ptr %"R11_Float32"
  %".1348" = sub float              0x0, %".1347"
  %".1349" = load float, ptr %"R10_Float32"
  %"fmul.69" = fmul float %".1348", %".1349"
  %"fadd.73" = fadd float %"fmul.69", 0x3fe0000000000000
  store float %"fadd.73", ptr %"R10_Float32"
  ; FFMA.RM R10, R10, R13, 12582913
  %".1352" = load float, ptr %"R10_Float32"
  %".1353" = load float, ptr %"R13_Float32"
  %"fmul.70" = fmul float %".1352", %".1353"
  %"fadd.74" = fadd float %"fmul.70", 0x4168000020000000
  store float %"fadd.74", ptr %"R10_Float32"
  ; FADD R12, R10.reuse, -12583039
  %".1356" = load float, ptr %"R10_Float32"
  %"fadd.75" = fadd float %".1356", 0xc168000fe0000000
  store float %"fadd.75", ptr %"R12_Float32"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".1359" = icmp ult i32 23, 32
  %"SHF_min.1" = select  i1 %".1359", i32 23, i32 32
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Int32", ptr %"R10_Float32", i32 4, i1 0)
  %".1360" = load i32, ptr %"R10_Int32"
  %"zext.3" = zext i32 0 to i64
  %"zext.4" = zext i32 %".1360" to i64
  %"zext.5" = zext i32 23 to i64
  %"shl.8" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.8", %"zext.4"
  %"shl.9" = shl i64 %"or.1", %"zext.5"
  %"and.1" = and i64 %"shl.9", 4294967295
  %"trunc32.1" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.1", ptr %"R20_Int32"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %".1363" = load float, ptr %"R11_Float32"
  %".1364" = sub float              0x0, %".1363"
  %".1365" = load float, ptr %"R12_Float32"
  %".1366" = sub float              0x0, %".1365"
  %"fmul.71" = fmul float %".1364", 0x3ff7154760000000
  %"fadd.76" = fadd float %"fmul.71", %".1366"
  store float %"fadd.76", ptr %"R12_Float32"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %".1369" = load float, ptr %"R11_Float32"
  %".1370" = sub float              0x0, %".1369"
  %".1371" = load float, ptr %"R12_Float32"
  %"fmul.72" = fmul float %".1370", 0x3e54ae0c00000000
  %"fadd.77" = fadd float %"fmul.72", %".1371"
  store float %"fadd.77", ptr %"R12_Float32"
  ; MUFU.EX2 R11, R12
  %".1374" = load float, ptr %"R12_Float32"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".1374")
  store float %"llvm_exp2_f32_result.1", ptr %"R11_Float32"
  ; FFMA R20, R20, R11, 1
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Float32", ptr %"R20_Int32", i32 4, i1 0)
  %".1377" = load float, ptr %"R20_Float32"
  %".1378" = load float, ptr %"R11_Float32"
  %"fmul.73" = fmul float %".1377", %".1378"
  %"fadd.78" = fadd float %"fmul.73", 0x3ff0000000000000
  store float %"fadd.78", ptr %"R20_Float32"
  ; @!P4 BRA `(.L_x_10)
  %".1381" = load i1, ptr %"P4_Bool"
  %".1382" = icmp eq i1 %".1381", 1
  br i1 %".1382", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".1385" = load i32, ptr %"R5_Int32"
  %".1386" = load i1, ptr %"PT_Bool"
  %"cmp.16" = icmp sge i32 %".1385", 3
  %".1387" = and i1 %"cmp.16", %".1386"
  ; MOV R8, RZ
  %".1389" = load float, ptr %"RZ_Float32"
  store float %".1389", ptr %"R8_Float32"
  ; MOV R22, RZ
  %".1392" = load i32, ptr %"RZ_Int32"
  store i32 %".1392", ptr %"R22_Int32"
  ; @!P0 BRA `(.L_x_11)
  %".1395" = load i1, ptr %"P0_Bool"
  %".1396" = icmp eq i1 %".1395", 1
  br i1 %".1396", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".1399" = load i32, ptr %"R7_Int32"
  %".1400" = load i1, ptr %"PT_Bool"
  %"cmp.17" = icmp sgt i32 %".1399", 0
  %".1401" = and i1 %"cmp.17", %".1400"
  ; MOV R8, RZ
  %".1403" = load float, ptr %"RZ_Float32"
  store float %".1403", ptr %"R8_Float32"
  ; MOV R22, RZ
  %".1406" = load i32, ptr %"RZ_Int32"
  store i32 %".1406", ptr %"R22_Int32"
  ; MOV R23, R7
  %".1409" = load i32, ptr %"R7_Int32"
  store i32 %".1409", ptr %"R23_Int32"
  ; @!P0 BRA `(.L_x_12)
  %".1412" = load i1, ptr %"P0_Bool"
  %".1413" = icmp eq i1 %".1412", 1
  br i1 %".1413", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".1416" = load i32, ptr %"R23_Int32"
  %".1417" = load i1, ptr %"PT_Bool"
  %"cmp.18" = icmp sgt i32 %".1416", 12
  %".1418" = and i1 %"cmp.18", %".1417"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".1420" = and i1 1, 1
  %".1421" = or i1 %".1420", 1
  ; @!P1 BRA `(.L_x_13)
  %".1423" = load i1, ptr %"P1_Bool"
  %".1424" = icmp eq i1 %".1423", 1
  br i1 %".1424", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1427" = xor i1 1, 1
  %".1428" = and i1 %".1427", 1
  %".1429" = and i1 %".1428", 1
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, ptr %"R49_Int32"
  ; IADD3 R16, R3, R22, RZ
  %".1433" = load i32, ptr %"R3_Int32"
  %".1434" = load i32, ptr %"R22_Int32"
  %"add.94" = add i32 %".1433", %".1434"
  %"add.95" = add i32 %"add.94", 0
  store i32 %"add.95", ptr %"R16_Int32"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".1437" = load i32, ptr %"R22_Int32"
  %".1438" = load i32, ptr %"R49_Int32"
  %"mul.36" = mul i32 %".1437", %".1438"
  %"add.96" = add i32 %"mul.36", %"Arg_3"
  store i32 %"add.96", ptr %"R12_Int32"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".1441" = load i32, ptr %"R16_Int32"
  %".1442" = load i32, ptr %"R49_Int32"
  %"mul.37" = mul i32 %".1441", %".1442"
  %"add.97" = add i32 %"mul.37", %"Arg_4"
  store i32 %"add.97", ptr %"R16_Int32"
  ; IADD3 R18, R22, 0x4, RZ
  %".1445" = load i32, ptr %"R22_Int32"
  %"add.98" = add i32 %".1445", 4
  %"add.99" = add i32 %"add.98", 0
  store i32 %"add.99", ptr %"R18_Int32"
  ; LDG.E.SYS R24, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1448" = load i32, ptr %"R12_Float32_PTR"
  %".1449" = add i32 %".1448", 0
  %"for_LDG.95" = inttoptr i32 %".1449" to ptr
  %".1450" = load float, ptr %"for_LDG.95"
  store float %".1450", ptr %"R24_Float32"
  ; IADD3 R14, R3, R18, RZ
  %".1453" = load i32, ptr %"R3_Int32"
  %".1454" = load i32, ptr %"R18_Int32"
  %"add.100" = add i32 %".1453", %".1454"
  %"add.101" = add i32 %"add.100", 0
  store i32 %"add.101", ptr %"R14_Int32"
  ; LDG.E.SYS R21, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1457" = load i32, ptr %"R16_Float32_PTR"
  %".1458" = add i32 %".1457", 0
  %"for_LDG.96" = inttoptr i32 %".1458" to ptr
  %".1459" = load float, ptr %"for_LDG.96"
  store float %".1459", ptr %"R21_Float32"
  ; LDG.E.SYS R36, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1462" = load i32, ptr %"R12_Float32_PTR"
  %".1463" = add i32 %".1462", 4
  %"for_LDG.97" = inttoptr i32 %".1463" to ptr
  %".1464" = load float, ptr %"for_LDG.97"
  store float %".1464", ptr %"R36_Float32"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".1467" = load i32, ptr %"R18_Int32"
  %".1468" = load i32, ptr %"R49_Int32"
  %"mul.38" = mul i32 %".1467", %".1468"
  %"add.102" = add i32 %"mul.38", %"Arg_3"
  store i32 %"add.102", ptr %"R18_Int32"
  ; LDG.E.SYS R25, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1471" = load i32, ptr %"R16_Float32_PTR"
  %".1472" = add i32 %".1471", 4
  %"for_LDG.98" = inttoptr i32 %".1472" to ptr
  %".1473" = load float, ptr %"for_LDG.98"
  store float %".1473", ptr %"R25_Float32"
  ; LDG.E.SYS R46, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1476" = load i32, ptr %"R12_Float32_PTR"
  %".1477" = add i32 %".1476", 8
  %"for_LDG.99" = inttoptr i32 %".1477" to ptr
  %".1478" = load float, ptr %"for_LDG.99"
  store float %".1478", ptr %"R46_Float32"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".1481" = load i32, ptr %"R14_Int32"
  %".1482" = load i32, ptr %"R49_Int32"
  %"mul.39" = mul i32 %".1481", %".1482"
  %"add.103" = add i32 %"mul.39", %"Arg_4"
  store i32 %"add.103", ptr %"R14_Int32"
  ; LDG.E.SYS R34, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1485" = load i32, ptr %"R16_Float32_PTR"
  %".1486" = add i32 %".1485", 8
  %"for_LDG.100" = inttoptr i32 %".1486" to ptr
  %".1487" = load float, ptr %"for_LDG.100"
  store float %".1487", ptr %"R34_Float32"
  ; LDG.E.SYS R44, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1490" = load i32, ptr %"R12_Float32_PTR"
  %".1491" = add i32 %".1490", 12
  %"for_LDG.101" = inttoptr i32 %".1491" to ptr
  %".1492" = load float, ptr %"for_LDG.101"
  store float %".1492", ptr %"R44_Float32"
  ; IADD3 R10, R22, 0x8, RZ
  %".1495" = load i32, ptr %"R22_Int32"
  %"add.104" = add i32 %".1495", 8
  %"add.105" = add i32 %"add.104", 0
  store i32 %"add.105", ptr %"R10_Int32"
  ; LDG.E.SYS R41, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1498" = load i32, ptr %"R16_Float32_PTR"
  %".1499" = add i32 %".1498", 12
  %"for_LDG.102" = inttoptr i32 %".1499" to ptr
  %".1500" = load float, ptr %"for_LDG.102"
  store float %".1500", ptr %"R41_Float32"
  ; LDG.E.SYS R42, [R18]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".1503" = load i32, ptr %"R18_Float32_PTR"
  %".1504" = add i32 %".1503", 0
  %"for_LDG.103" = inttoptr i32 %".1504" to ptr
  %".1505" = load float, ptr %"for_LDG.103"
  store float %".1505", ptr %"R42_Float32"
  ; IADD3 R50, R3, R10, RZ
  %".1508" = load i32, ptr %"R3_Int32"
  %".1509" = load i32, ptr %"R10_Int32"
  %"add.106" = add i32 %".1508", %".1509"
  %"add.107" = add i32 %"add.106", 0
  store i32 %"add.107", ptr %"R50_Int32"
  ; LDG.E.SYS R39, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1512" = load i32, ptr %"R14_Float32_PTR"
  %".1513" = add i32 %".1512", 0
  %"for_LDG.104" = inttoptr i32 %".1513" to ptr
  %".1514" = load float, ptr %"for_LDG.104"
  store float %".1514", ptr %"R39_Float32"
  ; LDG.E.SYS R40, [R18+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".1517" = load i32, ptr %"R18_Float32_PTR"
  %".1518" = add i32 %".1517", 4
  %"for_LDG.105" = inttoptr i32 %".1518" to ptr
  %".1519" = load float, ptr %"for_LDG.105"
  store float %".1519", ptr %"R40_Float32"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".1522" = load i32, ptr %"R10_Int32"
  %".1523" = load i32, ptr %"R49_Int32"
  %"mul.40" = mul i32 %".1522", %".1523"
  %"add.108" = add i32 %"mul.40", %"Arg_3"
  store i32 %"add.108", ptr %"R10_Int32"
  ; LDG.E.SYS R37, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1526" = load i32, ptr %"R14_Float32_PTR"
  %".1527" = add i32 %".1526", 4
  %"for_LDG.106" = inttoptr i32 %".1527" to ptr
  %".1528" = load float, ptr %"for_LDG.106"
  store float %".1528", ptr %"R37_Float32"
  ; LDG.E.SYS R38, [R18+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".1531" = load i32, ptr %"R18_Float32_PTR"
  %".1532" = add i32 %".1531", 8
  %"for_LDG.107" = inttoptr i32 %".1532" to ptr
  %".1533" = load float, ptr %"for_LDG.107"
  store float %".1533", ptr %"R38_Float32"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".1536" = load i32, ptr %"R50_Int32"
  %".1537" = load i32, ptr %"R49_Int32"
  %"mul.41" = mul i32 %".1536", %".1537"
  %"add.109" = add i32 %"mul.41", %"Arg_4"
  store i32 %"add.109", ptr %"R12_Int32"
  ; LDG.E.SYS R35, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1540" = load i32, ptr %"R14_Float32_PTR"
  %".1541" = add i32 %".1540", 8
  %"for_LDG.108" = inttoptr i32 %".1541" to ptr
  %".1542" = load float, ptr %"for_LDG.108"
  store float %".1542", ptr %"R35_Float32"
  ; LDG.E.SYS R48, [R18+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R18_Float32_PTR", ptr %"R18_Int32", i32 4, i1 0)
  %".1545" = load i32, ptr %"R18_Float32_PTR"
  %".1546" = add i32 %".1545", 12
  %"for_LDG.109" = inttoptr i32 %".1546" to ptr
  %".1547" = load float, ptr %"for_LDG.109"
  store float %".1547", ptr %"R48_Float32"
  ; IADD3 R16, R22, 0xc, RZ
  %".1550" = load i32, ptr %"R22_Int32"
  %"add.110" = add i32 %".1550", 12
  %"add.111" = add i32 %"add.110", 0
  store i32 %"add.111", ptr %"R16_Int32"
  ; LDG.E.SYS R47, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1553" = load i32, ptr %"R14_Float32_PTR"
  %".1554" = add i32 %".1553", 12
  %"for_LDG.110" = inttoptr i32 %".1554" to ptr
  %".1555" = load float, ptr %"for_LDG.110"
  store float %".1555", ptr %"R47_Float32"
  ; LDG.E.SYS R54, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1558" = load i32, ptr %"R10_Float32_PTR"
  %".1559" = add i32 %".1558", 0
  %"for_LDG.111" = inttoptr i32 %".1559" to ptr
  %".1560" = load float, ptr %"for_LDG.111"
  store float %".1560", ptr %"R54_Float32"
  ; IADD3 R58, R3, R16, RZ
  %".1563" = load i32, ptr %"R3_Int32"
  %".1564" = load i32, ptr %"R16_Int32"
  %"add.112" = add i32 %".1563", %".1564"
  %"add.113" = add i32 %"add.112", 0
  store i32 %"add.113", ptr %"R58_Int32"
  ; LDG.E.SYS R45, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1567" = load i32, ptr %"R12_Float32_PTR"
  %".1568" = add i32 %".1567", 0
  %"for_LDG.112" = inttoptr i32 %".1568" to ptr
  %".1569" = load float, ptr %"for_LDG.112"
  store float %".1569", ptr %"R45_Float32"
  ; LDG.E.SYS R52, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1572" = load i32, ptr %"R10_Float32_PTR"
  %".1573" = add i32 %".1572", 4
  %"for_LDG.113" = inttoptr i32 %".1573" to ptr
  %".1574" = load float, ptr %"for_LDG.113"
  store float %".1574", ptr %"R52_Float32"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".1577" = load i32, ptr %"R16_Int32"
  %".1578" = load i32, ptr %"R49_Int32"
  %"mul.42" = mul i32 %".1577", %".1578"
  %"add.114" = add i32 %"mul.42", %"Arg_3"
  store i32 %"add.114", ptr %"R16_Int32"
  ; LDG.E.SYS R43, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1581" = load i32, ptr %"R12_Float32_PTR"
  %".1582" = add i32 %".1581", 4
  %"for_LDG.114" = inttoptr i32 %".1582" to ptr
  %".1583" = load float, ptr %"for_LDG.114"
  store float %".1583", ptr %"R43_Float32"
  ; LDG.E.SYS R50, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1586" = load i32, ptr %"R10_Float32_PTR"
  %".1587" = add i32 %".1586", 8
  %"for_LDG.115" = inttoptr i32 %".1587" to ptr
  %".1588" = load float, ptr %"for_LDG.115"
  store float %".1588", ptr %"R50_Float32"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".1591" = load i32, ptr %"R58_Int32"
  %".1592" = load i32, ptr %"R49_Int32"
  %"mul.43" = mul i32 %".1591", %".1592"
  %"add.115" = add i32 %"mul.43", %"Arg_4"
  store i32 %"add.115", ptr %"R14_Int32"
  ; LDG.E.SYS R18, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1595" = load i32, ptr %"R12_Float32_PTR"
  %".1596" = add i32 %".1595", 8
  %"for_LDG.116" = inttoptr i32 %".1596" to ptr
  %".1597" = load float, ptr %"for_LDG.116"
  store float %".1597", ptr %"R18_Float32"
  ; LDG.E.SYS R56, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1600" = load i32, ptr %"R10_Float32_PTR"
  %".1601" = add i32 %".1600", 12
  %"for_LDG.117" = inttoptr i32 %".1601" to ptr
  %".1602" = load float, ptr %"for_LDG.117"
  store float %".1602", ptr %"R56_Float32"
  ; LDG.E.SYS R55, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1605" = load i32, ptr %"R12_Float32_PTR"
  %".1606" = add i32 %".1605", 12
  %"for_LDG.118" = inttoptr i32 %".1606" to ptr
  %".1607" = load float, ptr %"for_LDG.118"
  store float %".1607", ptr %"R55_Float32"
  ; LDG.E.SYS R51, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1610" = load i32, ptr %"R16_Float32_PTR"
  %".1611" = add i32 %".1610", 0
  %"for_LDG.119" = inttoptr i32 %".1611" to ptr
  %".1612" = load float, ptr %"for_LDG.119"
  store float %".1612", ptr %"R51_Float32"
  ; LDG.E.SYS R53, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1615" = load i32, ptr %"R14_Float32_PTR"
  %".1616" = add i32 %".1615", 0
  %"for_LDG.120" = inttoptr i32 %".1616" to ptr
  %".1617" = load float, ptr %"for_LDG.120"
  store float %".1617", ptr %"R53_Float32"
  ; LDG.E.SYS R60, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1620" = load i32, ptr %"R16_Float32_PTR"
  %".1621" = add i32 %".1620", 4
  %"for_LDG.121" = inttoptr i32 %".1621" to ptr
  %".1622" = load float, ptr %"for_LDG.121"
  store float %".1622", ptr %"R60_Float32"
  ; LDG.E.SYS R49, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1625" = load i32, ptr %"R14_Float32_PTR"
  %".1626" = add i32 %".1625", 4
  %"for_LDG.122" = inttoptr i32 %".1626" to ptr
  %".1627" = load float, ptr %"for_LDG.122"
  store float %".1627", ptr %"R49_Float32"
  ; LDG.E.SYS R58, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1630" = load i32, ptr %"R16_Float32_PTR"
  %".1631" = add i32 %".1630", 8
  %"for_LDG.123" = inttoptr i32 %".1631" to ptr
  %".1632" = load float, ptr %"for_LDG.123"
  store float %".1632", ptr %"R58_Float32"
  ; LDG.E.SYS R19, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1635" = load i32, ptr %"R14_Float32_PTR"
  %".1636" = add i32 %".1635", 8
  %"for_LDG.124" = inttoptr i32 %".1636" to ptr
  %".1637" = load float, ptr %"for_LDG.124"
  store float %".1637", ptr %"R19_Float32"
  ; LDG.E.SYS R57, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1640" = load i32, ptr %"R16_Float32_PTR"
  %".1641" = add i32 %".1640", 12
  %"for_LDG.125" = inttoptr i32 %".1641" to ptr
  %".1642" = load float, ptr %"for_LDG.125"
  store float %".1642", ptr %"R57_Float32"
  ; LDG.E.SYS R59, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1645" = load i32, ptr %"R14_Float32_PTR"
  %".1646" = add i32 %".1645", 12
  %"for_LDG.126" = inttoptr i32 %".1646" to ptr
  %".1647" = load float, ptr %"for_LDG.126"
  store float %".1647", ptr %"R59_Float32"
  ; IADD3 R23, R23, -0x10, RZ
  %".1650" = load i32, ptr %"R23_Int32"
  %"add.116" = add i32 %".1650", -16
  %"add.117" = add i32 %"add.116", 0
  store i32 %"add.117", ptr %"R23_Int32"
  ; IADD3 R22, R22, 0x10, RZ
  %".1653" = load i32, ptr %"R22_Int32"
  %"add.118" = add i32 %".1653", 16
  %"add.119" = add i32 %"add.118", 0
  store i32 %"add.119", ptr %"R22_Int32"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".1656" = load i32, ptr %"R23_Int32"
  %".1657" = load i1, ptr %"PT_Bool"
  %"cmp.19" = icmp sgt i32 %".1656", 12
  %".1658" = and i1 %"cmp.19", %".1657"
  ; FMUL R24, R24, R9
  %".1660" = load float, ptr %"R24_Float32"
  %".1661" = load float, ptr %"R9_Float32"
  %"fmul.74" = fmul float %".1660", %".1661"
  store float %"fmul.74", ptr %"R24_Float32"
  ; FFMA R24, R24, R21, R8
  %".1664" = load float, ptr %"R24_Float32"
  %".1665" = load float, ptr %"R21_Float32"
  %".1666" = load float, ptr %"R8_Float32"
  %"fmul.75" = fmul float %".1664", %".1665"
  %"fadd.79" = fadd float %"fmul.75", %".1666"
  store float %"fadd.79", ptr %"R24_Float32"
  ; FMUL R36, R36, R9
  %".1669" = load float, ptr %"R36_Float32"
  %".1670" = load float, ptr %"R9_Float32"
  %"fmul.76" = fmul float %".1669", %".1670"
  store float %"fmul.76", ptr %"R36_Float32"
  ; FFMA R25, R36, R25, R24
  %".1673" = load float, ptr %"R36_Float32"
  %".1674" = load float, ptr %"R25_Float32"
  %".1675" = load float, ptr %"R24_Float32"
  %"fmul.77" = fmul float %".1673", %".1674"
  %"fadd.80" = fadd float %"fmul.77", %".1675"
  store float %"fadd.80", ptr %"R25_Float32"
  ; FMUL R46, R46, R9
  %".1678" = load float, ptr %"R46_Float32"
  %".1679" = load float, ptr %"R9_Float32"
  %"fmul.78" = fmul float %".1678", %".1679"
  store float %"fmul.78", ptr %"R46_Float32"
  ; FFMA R34, R46, R34, R25
  %".1682" = load float, ptr %"R46_Float32"
  %".1683" = load float, ptr %"R34_Float32"
  %".1684" = load float, ptr %"R25_Float32"
  %"fmul.79" = fmul float %".1682", %".1683"
  %"fadd.81" = fadd float %"fmul.79", %".1684"
  store float %"fadd.81", ptr %"R34_Float32"
  ; FMUL R44, R44, R9
  %".1687" = load float, ptr %"R44_Float32"
  %".1688" = load float, ptr %"R9_Float32"
  %"fmul.80" = fmul float %".1687", %".1688"
  store float %"fmul.80", ptr %"R44_Float32"
  ; FFMA R34, R44, R41, R34
  %".1691" = load float, ptr %"R44_Float32"
  %".1692" = load float, ptr %"R41_Float32"
  %".1693" = load float, ptr %"R34_Float32"
  %"fmul.81" = fmul float %".1691", %".1692"
  %"fadd.82" = fadd float %"fmul.81", %".1693"
  store float %"fadd.82", ptr %"R34_Float32"
  ; FMUL R42, R42, R9
  %".1696" = load float, ptr %"R42_Float32"
  %".1697" = load float, ptr %"R9_Float32"
  %"fmul.82" = fmul float %".1696", %".1697"
  store float %"fmul.82", ptr %"R42_Float32"
  ; FFMA R34, R42, R39, R34
  %".1700" = load float, ptr %"R42_Float32"
  %".1701" = load float, ptr %"R39_Float32"
  %".1702" = load float, ptr %"R34_Float32"
  %"fmul.83" = fmul float %".1700", %".1701"
  %"fadd.83" = fadd float %"fmul.83", %".1702"
  store float %"fadd.83", ptr %"R34_Float32"
  ; FMUL R40, R40, R9
  %".1705" = load float, ptr %"R40_Float32"
  %".1706" = load float, ptr %"R9_Float32"
  %"fmul.84" = fmul float %".1705", %".1706"
  store float %"fmul.84", ptr %"R40_Float32"
  ; FFMA R34, R40, R37, R34
  %".1709" = load float, ptr %"R40_Float32"
  %".1710" = load float, ptr %"R37_Float32"
  %".1711" = load float, ptr %"R34_Float32"
  %"fmul.85" = fmul float %".1709", %".1710"
  %"fadd.84" = fadd float %"fmul.85", %".1711"
  store float %"fadd.84", ptr %"R34_Float32"
  ; FMUL R38, R38, R9
  %".1714" = load float, ptr %"R38_Float32"
  %".1715" = load float, ptr %"R9_Float32"
  %"fmul.86" = fmul float %".1714", %".1715"
  store float %"fmul.86", ptr %"R38_Float32"
  ; FFMA R34, R38, R35, R34
  %".1718" = load float, ptr %"R38_Float32"
  %".1719" = load float, ptr %"R35_Float32"
  %".1720" = load float, ptr %"R34_Float32"
  %"fmul.87" = fmul float %".1718", %".1719"
  %"fadd.85" = fadd float %"fmul.87", %".1720"
  store float %"fadd.85", ptr %"R34_Float32"
  ; FMUL R48, R48, R9
  %".1723" = load float, ptr %"R48_Float32"
  %".1724" = load float, ptr %"R9_Float32"
  %"fmul.88" = fmul float %".1723", %".1724"
  store float %"fmul.88", ptr %"R48_Float32"
  ; FFMA R34, R48, R47, R34
  %".1727" = load float, ptr %"R48_Float32"
  %".1728" = load float, ptr %"R47_Float32"
  %".1729" = load float, ptr %"R34_Float32"
  %"fmul.89" = fmul float %".1727", %".1728"
  %"fadd.86" = fadd float %"fmul.89", %".1729"
  store float %"fadd.86", ptr %"R34_Float32"
  ; FMUL R54, R54, R9
  %".1732" = load float, ptr %"R54_Float32"
  %".1733" = load float, ptr %"R9_Float32"
  %"fmul.90" = fmul float %".1732", %".1733"
  store float %"fmul.90", ptr %"R54_Float32"
  ; FFMA R34, R54, R45, R34
  %".1736" = load float, ptr %"R54_Float32"
  %".1737" = load float, ptr %"R45_Float32"
  %".1738" = load float, ptr %"R34_Float32"
  %"fmul.91" = fmul float %".1736", %".1737"
  %"fadd.87" = fadd float %"fmul.91", %".1738"
  store float %"fadd.87", ptr %"R34_Float32"
  ; FMUL R52, R52, R9
  %".1741" = load float, ptr %"R52_Float32"
  %".1742" = load float, ptr %"R9_Float32"
  %"fmul.92" = fmul float %".1741", %".1742"
  store float %"fmul.92", ptr %"R52_Float32"
  ; FFMA R43, R52, R43, R34
  %".1745" = load float, ptr %"R52_Float32"
  %".1746" = load float, ptr %"R43_Float32"
  %".1747" = load float, ptr %"R34_Float32"
  %"fmul.93" = fmul float %".1745", %".1746"
  %"fadd.88" = fadd float %"fmul.93", %".1747"
  store float %"fadd.88", ptr %"R43_Float32"
  ; FMUL R50, R50, R9
  %".1750" = load float, ptr %"R50_Float32"
  %".1751" = load float, ptr %"R9_Float32"
  %"fmul.94" = fmul float %".1750", %".1751"
  store float %"fmul.94", ptr %"R50_Float32"
  ; FFMA R18, R50, R18, R43
  %".1754" = load float, ptr %"R50_Float32"
  %".1755" = load float, ptr %"R18_Float32"
  %".1756" = load float, ptr %"R43_Float32"
  %"fmul.95" = fmul float %".1754", %".1755"
  %"fadd.89" = fadd float %"fmul.95", %".1756"
  store float %"fadd.89", ptr %"R18_Float32"
  ; FMUL R56, R56, R9
  %".1759" = load float, ptr %"R56_Float32"
  %".1760" = load float, ptr %"R9_Float32"
  %"fmul.96" = fmul float %".1759", %".1760"
  store float %"fmul.96", ptr %"R56_Float32"
  ; FFMA R18, R56, R55, R18
  %".1763" = load float, ptr %"R56_Float32"
  %".1764" = load float, ptr %"R55_Float32"
  %".1765" = load float, ptr %"R18_Float32"
  %"fmul.97" = fmul float %".1763", %".1764"
  %"fadd.90" = fadd float %"fmul.97", %".1765"
  store float %"fadd.90", ptr %"R18_Float32"
  ; FMUL R51, R51, R9
  %".1768" = load float, ptr %"R51_Float32"
  %".1769" = load float, ptr %"R9_Float32"
  %"fmul.98" = fmul float %".1768", %".1769"
  store float %"fmul.98", ptr %"R51_Float32"
  ; FFMA R18, R51, R53, R18
  %".1772" = load float, ptr %"R51_Float32"
  %".1773" = load float, ptr %"R53_Float32"
  %".1774" = load float, ptr %"R18_Float32"
  %"fmul.99" = fmul float %".1772", %".1773"
  %"fadd.91" = fadd float %"fmul.99", %".1774"
  store float %"fadd.91", ptr %"R18_Float32"
  ; FMUL R60, R60, R9
  %".1777" = load float, ptr %"R60_Float32"
  %".1778" = load float, ptr %"R9_Float32"
  %"fmul.100" = fmul float %".1777", %".1778"
  store float %"fmul.100", ptr %"R60_Float32"
  ; FFMA R18, R60, R49, R18
  %".1781" = load float, ptr %"R60_Float32"
  %".1782" = load float, ptr %"R49_Float32"
  %".1783" = load float, ptr %"R18_Float32"
  %"fmul.101" = fmul float %".1781", %".1782"
  %"fadd.92" = fadd float %"fmul.101", %".1783"
  store float %"fadd.92", ptr %"R18_Float32"
  ; FMUL R58, R58, R9
  %".1786" = load float, ptr %"R58_Float32"
  %".1787" = load float, ptr %"R9_Float32"
  %"fmul.102" = fmul float %".1786", %".1787"
  store float %"fmul.102", ptr %"R58_Float32"
  ; FFMA R18, R58, R19, R18
  %".1790" = load float, ptr %"R58_Float32"
  %".1791" = load float, ptr %"R19_Float32"
  %".1792" = load float, ptr %"R18_Float32"
  %"fmul.103" = fmul float %".1790", %".1791"
  %"fadd.93" = fadd float %"fmul.103", %".1792"
  store float %"fadd.93", ptr %"R18_Float32"
  ; FMUL R57, R57, R9
  %".1795" = load float, ptr %"R57_Float32"
  %".1796" = load float, ptr %"R9_Float32"
  %"fmul.104" = fmul float %".1795", %".1796"
  store float %"fmul.104", ptr %"R57_Float32"
  ; FFMA R8, R57, R59, R18
  %".1799" = load float, ptr %"R57_Float32"
  %".1800" = load float, ptr %"R59_Float32"
  %".1801" = load float, ptr %"R18_Float32"
  %"fmul.105" = fmul float %".1799", %".1800"
  %"fadd.94" = fadd float %"fmul.105", %".1801"
  store float %"fadd.94", ptr %"R8_Float32"
  ; @P1 BRA `(.L_x_14)
  %".1804" = load i1, ptr %"P1_Bool"
  %".1805" = icmp ne i1 %".1804", 1
  br i1 %".1805", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".1808" = load i32, ptr %"R23_Int32"
  %".1809" = load i1, ptr %"PT_Bool"
  %"cmp.20" = icmp sgt i32 %".1808", 4
  %".1810" = and i1 %"cmp.20", %".1809"
  ; @!P1 BRA `(.L_x_15)
  %".1812" = load i1, ptr %"P1_Bool"
  %".1813" = icmp eq i1 %".1812", 1
  br i1 %".1813", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13_Int32"
  ; IADD3 R16, R3, R22, RZ
  %".1818" = load i32, ptr %"R3_Int32"
  %".1819" = load i32, ptr %"R22_Int32"
  %"add.120" = add i32 %".1818", %".1819"
  %"add.121" = add i32 %"add.120", 0
  store i32 %"add.121", ptr %"R16_Int32"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".1822" = load i32, ptr %"R22_Int32"
  %".1823" = load i32, ptr %"R13_Int32"
  %"mul.44" = mul i32 %".1822", %".1823"
  %"add.122" = add i32 %"mul.44", %"Arg_3"
  store i32 %"add.122", ptr %"R14_Int32"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".1826" = load i32, ptr %"R16_Int32"
  %".1827" = load i32, ptr %"R13_Int32"
  %"mul.45" = mul i32 %".1826", %".1827"
  %"add.123" = add i32 %"mul.45", %"Arg_4"
  store i32 %"add.123", ptr %"R16_Int32"
  ; IADD3 R10, R22, 0x4, RZ
  %".1830" = load i32, ptr %"R22_Int32"
  %"add.124" = add i32 %".1830", 4
  %"add.125" = add i32 %"add.124", 0
  store i32 %"add.125", ptr %"R10_Int32"
  ; LDG.E.SYS R18, [R14]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1833" = load i32, ptr %"R14_Float32_PTR"
  %".1834" = add i32 %".1833", 0
  %"for_LDG.127" = inttoptr i32 %".1834" to ptr
  %".1835" = load float, ptr %"for_LDG.127"
  store float %".1835", ptr %"R18_Float32"
  ; IADD3 R12, R3, R10, RZ
  %".1838" = load i32, ptr %"R3_Int32"
  %".1839" = load i32, ptr %"R10_Int32"
  %"add.126" = add i32 %".1838", %".1839"
  %"add.127" = add i32 %"add.126", 0
  store i32 %"add.127", ptr %"R12_Int32"
  ; LDG.E.SYS R19, [R16]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1842" = load i32, ptr %"R16_Float32_PTR"
  %".1843" = add i32 %".1842", 0
  %"for_LDG.128" = inttoptr i32 %".1843" to ptr
  %".1844" = load float, ptr %"for_LDG.128"
  store float %".1844", ptr %"R19_Float32"
  ; LDG.E.SYS R24, [R14+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1847" = load i32, ptr %"R14_Float32_PTR"
  %".1848" = add i32 %".1847", 4
  %"for_LDG.129" = inttoptr i32 %".1848" to ptr
  %".1849" = load float, ptr %"for_LDG.129"
  store float %".1849", ptr %"R24_Float32"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".1852" = load i32, ptr %"R10_Int32"
  %".1853" = load i32, ptr %"R13_Int32"
  %"mul.46" = mul i32 %".1852", %".1853"
  %"add.128" = add i32 %"mul.46", %"Arg_3"
  store i32 %"add.128", ptr %"R10_Int32"
  ; LDG.E.SYS R21, [R16+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1856" = load i32, ptr %"R16_Float32_PTR"
  %".1857" = add i32 %".1856", 4
  %"for_LDG.130" = inttoptr i32 %".1857" to ptr
  %".1858" = load float, ptr %"for_LDG.130"
  store float %".1858", ptr %"R21_Float32"
  ; LDG.E.SYS R34, [R14+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1861" = load i32, ptr %"R14_Float32_PTR"
  %".1862" = add i32 %".1861", 8
  %"for_LDG.131" = inttoptr i32 %".1862" to ptr
  %".1863" = load float, ptr %"for_LDG.131"
  store float %".1863", ptr %"R34_Float32"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".1866" = load i32, ptr %"R12_Int32"
  %".1867" = load i32, ptr %"R13_Int32"
  %"mul.47" = mul i32 %".1866", %".1867"
  %"add.129" = add i32 %"mul.47", %"Arg_4"
  store i32 %"add.129", ptr %"R12_Int32"
  ; LDG.E.SYS R25, [R16+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1870" = load i32, ptr %"R16_Float32_PTR"
  %".1871" = add i32 %".1870", 8
  %"for_LDG.132" = inttoptr i32 %".1871" to ptr
  %".1872" = load float, ptr %"for_LDG.132"
  store float %".1872", ptr %"R25_Float32"
  ; LDG.E.SYS R36, [R14+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Float32_PTR", ptr %"R14_Int32", i32 4, i1 0)
  %".1875" = load i32, ptr %"R14_Float32_PTR"
  %".1876" = add i32 %".1875", 12
  %"for_LDG.133" = inttoptr i32 %".1876" to ptr
  %".1877" = load float, ptr %"for_LDG.133"
  store float %".1877", ptr %"R36_Float32"
  ; LDG.E.SYS R35, [R16+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R16_Float32_PTR", ptr %"R16_Int32", i32 4, i1 0)
  %".1880" = load i32, ptr %"R16_Float32_PTR"
  %".1881" = add i32 %".1880", 12
  %"for_LDG.134" = inttoptr i32 %".1881" to ptr
  %".1882" = load float, ptr %"for_LDG.134"
  store float %".1882", ptr %"R35_Float32"
  ; LDG.E.SYS R38, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1885" = load i32, ptr %"R10_Float32_PTR"
  %".1886" = add i32 %".1885", 0
  %"for_LDG.135" = inttoptr i32 %".1886" to ptr
  %".1887" = load float, ptr %"for_LDG.135"
  store float %".1887", ptr %"R38_Float32"
  ; LDG.E.SYS R37, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1890" = load i32, ptr %"R12_Float32_PTR"
  %".1891" = add i32 %".1890", 0
  %"for_LDG.136" = inttoptr i32 %".1891" to ptr
  %".1892" = load float, ptr %"for_LDG.136"
  store float %".1892", ptr %"R37_Float32"
  ; LDG.E.SYS R40, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1895" = load i32, ptr %"R10_Float32_PTR"
  %".1896" = add i32 %".1895", 4
  %"for_LDG.137" = inttoptr i32 %".1896" to ptr
  %".1897" = load float, ptr %"for_LDG.137"
  store float %".1897", ptr %"R40_Float32"
  ; LDG.E.SYS R39, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1900" = load i32, ptr %"R12_Float32_PTR"
  %".1901" = add i32 %".1900", 4
  %"for_LDG.138" = inttoptr i32 %".1901" to ptr
  %".1902" = load float, ptr %"for_LDG.138"
  store float %".1902", ptr %"R39_Float32"
  ; LDG.E.SYS R42, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1905" = load i32, ptr %"R10_Float32_PTR"
  %".1906" = add i32 %".1905", 8
  %"for_LDG.139" = inttoptr i32 %".1906" to ptr
  %".1907" = load float, ptr %"for_LDG.139"
  store float %".1907", ptr %"R42_Float32"
  ; LDG.E.SYS R44, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".1910" = load i32, ptr %"R10_Float32_PTR"
  %".1911" = add i32 %".1910", 12
  %"for_LDG.140" = inttoptr i32 %".1911" to ptr
  %".1912" = load float, ptr %"for_LDG.140"
  store float %".1912", ptr %"R44_Float32"
  ; LDG.E.SYS R41, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1915" = load i32, ptr %"R12_Float32_PTR"
  %".1916" = add i32 %".1915", 8
  %"for_LDG.141" = inttoptr i32 %".1916" to ptr
  %".1917" = load float, ptr %"for_LDG.141"
  store float %".1917", ptr %"R41_Float32"
  ; LDG.E.SYS R43, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".1920" = load i32, ptr %"R12_Float32_PTR"
  %".1921" = add i32 %".1920", 12
  %"for_LDG.142" = inttoptr i32 %".1921" to ptr
  %".1922" = load float, ptr %"for_LDG.142"
  store float %".1922", ptr %"R43_Float32"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1925" = xor i1 1, 1
  %".1926" = and i1 %".1925", 1
  %".1927" = and i1 %".1926", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".1929" = load i32, ptr %"R23_Int32"
  %"add.130" = add i32 %".1929", -8
  %"add.131" = add i32 %"add.130", 0
  store i32 %"add.131", ptr %"R23_Int32"
  ; IADD3 R22, R22, 0x8, RZ
  %".1932" = load i32, ptr %"R22_Int32"
  %"add.132" = add i32 %".1932", 8
  %"add.133" = add i32 %"add.132", 0
  store i32 %"add.133", ptr %"R22_Int32"
  ; FMUL R15, R18, R9
  %".1935" = load float, ptr %"R18_Float32"
  %".1936" = load float, ptr %"R9_Float32"
  %"fmul.106" = fmul float %".1935", %".1936"
  store float %"fmul.106", ptr %"R15_Float32"
  ; FFMA R15, R15, R19, R8
  %".1939" = load float, ptr %"R15_Float32"
  %".1940" = load float, ptr %"R19_Float32"
  %".1941" = load float, ptr %"R8_Float32"
  %"fmul.107" = fmul float %".1939", %".1940"
  %"fadd.95" = fadd float %"fmul.107", %".1941"
  store float %"fadd.95", ptr %"R15_Float32"
  ; FMUL R24, R24, R9
  %".1944" = load float, ptr %"R24_Float32"
  %".1945" = load float, ptr %"R9_Float32"
  %"fmul.108" = fmul float %".1944", %".1945"
  store float %"fmul.108", ptr %"R24_Float32"
  ; FFMA R15, R24, R21, R15
  %".1948" = load float, ptr %"R24_Float32"
  %".1949" = load float, ptr %"R21_Float32"
  %".1950" = load float, ptr %"R15_Float32"
  %"fmul.109" = fmul float %".1948", %".1949"
  %"fadd.96" = fadd float %"fmul.109", %".1950"
  store float %"fadd.96", ptr %"R15_Float32"
  ; FMUL R34, R34, R9
  %".1953" = load float, ptr %"R34_Float32"
  %".1954" = load float, ptr %"R9_Float32"
  %"fmul.110" = fmul float %".1953", %".1954"
  store float %"fmul.110", ptr %"R34_Float32"
  ; FFMA R15, R34, R25, R15
  %".1957" = load float, ptr %"R34_Float32"
  %".1958" = load float, ptr %"R25_Float32"
  %".1959" = load float, ptr %"R15_Float32"
  %"fmul.111" = fmul float %".1957", %".1958"
  %"fadd.97" = fadd float %"fmul.111", %".1959"
  store float %"fadd.97", ptr %"R15_Float32"
  ; FMUL R36, R36, R9
  %".1962" = load float, ptr %"R36_Float32"
  %".1963" = load float, ptr %"R9_Float32"
  %"fmul.112" = fmul float %".1962", %".1963"
  store float %"fmul.112", ptr %"R36_Float32"
  ; FFMA R15, R36, R35, R15
  %".1966" = load float, ptr %"R36_Float32"
  %".1967" = load float, ptr %"R35_Float32"
  %".1968" = load float, ptr %"R15_Float32"
  %"fmul.113" = fmul float %".1966", %".1967"
  %"fadd.98" = fadd float %"fmul.113", %".1968"
  store float %"fadd.98", ptr %"R15_Float32"
  ; FMUL R38, R38, R9
  %".1971" = load float, ptr %"R38_Float32"
  %".1972" = load float, ptr %"R9_Float32"
  %"fmul.114" = fmul float %".1971", %".1972"
  store float %"fmul.114", ptr %"R38_Float32"
  ; FFMA R15, R38, R37, R15
  %".1975" = load float, ptr %"R38_Float32"
  %".1976" = load float, ptr %"R37_Float32"
  %".1977" = load float, ptr %"R15_Float32"
  %"fmul.115" = fmul float %".1975", %".1976"
  %"fadd.99" = fadd float %"fmul.115", %".1977"
  store float %"fadd.99", ptr %"R15_Float32"
  ; FMUL R40, R40, R9
  %".1980" = load float, ptr %"R40_Float32"
  %".1981" = load float, ptr %"R9_Float32"
  %"fmul.116" = fmul float %".1980", %".1981"
  store float %"fmul.116", ptr %"R40_Float32"
  ; FFMA R15, R40, R39, R15
  %".1984" = load float, ptr %"R40_Float32"
  %".1985" = load float, ptr %"R39_Float32"
  %".1986" = load float, ptr %"R15_Float32"
  %"fmul.117" = fmul float %".1984", %".1985"
  %"fadd.100" = fadd float %"fmul.117", %".1986"
  store float %"fadd.100", ptr %"R15_Float32"
  ; FMUL R42, R42, R9.reuse
  %".1989" = load float, ptr %"R42_Float32"
  %".1990" = load float, ptr %"R9_Float32"
  %"fmul.118" = fmul float %".1989", %".1990"
  store float %"fmul.118", ptr %"R42_Float32"
  ; FMUL R44, R44, R9
  %".1993" = load float, ptr %"R44_Float32"
  %".1994" = load float, ptr %"R9_Float32"
  %"fmul.119" = fmul float %".1993", %".1994"
  store float %"fmul.119", ptr %"R44_Float32"
  ; FFMA R15, R42, R41, R15
  %".1997" = load float, ptr %"R42_Float32"
  %".1998" = load float, ptr %"R41_Float32"
  %".1999" = load float, ptr %"R15_Float32"
  %"fmul.120" = fmul float %".1997", %".1998"
  %"fadd.101" = fadd float %"fmul.120", %".1999"
  store float %"fadd.101", ptr %"R15_Float32"
  ; FFMA R8, R44, R43, R15
  %".2002" = load float, ptr %"R44_Float32"
  %".2003" = load float, ptr %"R43_Float32"
  %".2004" = load float, ptr %"R15_Float32"
  %"fmul.121" = fmul float %".2002", %".2003"
  %"fadd.102" = fadd float %"fmul.121", %".2004"
  store float %"fadd.102", ptr %"R8_Float32"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".2007" = load i32, ptr %"R23_Int32"
  %".2008" = load i1, ptr %"PT_Bool"
  %"cmp.21" = icmp ne i32 %".2007", 0
  %".2009" = or i1 %"cmp.21", %".2008"
  ; @!P0 BRA `(.L_x_11)
  %".2011" = load i1, ptr %"P0_Bool"
  %".2012" = icmp eq i1 %".2011", 1
  br i1 %".2012", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13_Int32"
  ; IADD3 R12, R3, R22, RZ
  %".2017" = load i32, ptr %"R3_Int32"
  %".2018" = load i32, ptr %"R22_Int32"
  %"add.134" = add i32 %".2017", %".2018"
  %"add.135" = add i32 %"add.134", 0
  store i32 %"add.135", ptr %"R12_Int32"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".2021" = load i32, ptr %"R22_Int32"
  %".2022" = load i32, ptr %"R13_Int32"
  %"mul.48" = mul i32 %".2021", %".2022"
  %"add.136" = add i32 %"mul.48", %"Arg_3"
  store i32 %"add.136", ptr %"R10_Int32"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2025" = load i32, ptr %"R12_Int32"
  %".2026" = load i32, ptr %"R13_Int32"
  %"mul.49" = mul i32 %".2025", %".2026"
  %"add.137" = add i32 %"mul.49", %"Arg_4"
  store i32 %"add.137", ptr %"R12_Int32"
  ; LDG.E.SYS R14, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2029" = load i32, ptr %"R10_Float32_PTR"
  %".2030" = add i32 %".2029", 0
  %"for_LDG.143" = inttoptr i32 %".2030" to ptr
  %".2031" = load float, ptr %"for_LDG.143"
  store float %".2031", ptr %"R14_Float32"
  ; LDG.E.SYS R16, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2034" = load i32, ptr %"R12_Float32_PTR"
  %".2035" = add i32 %".2034", 0
  %"for_LDG.144" = inttoptr i32 %".2035" to ptr
  %".2036" = load float, ptr %"for_LDG.144"
  store float %".2036", ptr %"R16_Float32"
  ; LDG.E.SYS R18, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2039" = load i32, ptr %"R10_Float32_PTR"
  %".2040" = add i32 %".2039", 4
  %"for_LDG.145" = inttoptr i32 %".2040" to ptr
  %".2041" = load float, ptr %"for_LDG.145"
  store float %".2041", ptr %"R18_Float32"
  ; LDG.E.SYS R17, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2044" = load i32, ptr %"R12_Float32_PTR"
  %".2045" = add i32 %".2044", 4
  %"for_LDG.146" = inttoptr i32 %".2045" to ptr
  %".2046" = load float, ptr %"for_LDG.146"
  store float %".2046", ptr %"R17_Float32"
  ; LDG.E.SYS R24, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2049" = load i32, ptr %"R10_Float32_PTR"
  %".2050" = add i32 %".2049", 8
  %"for_LDG.147" = inttoptr i32 %".2050" to ptr
  %".2051" = load float, ptr %"for_LDG.147"
  store float %".2051", ptr %"R24_Float32"
  ; LDG.E.SYS R19, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2054" = load i32, ptr %"R12_Float32_PTR"
  %".2055" = add i32 %".2054", 8
  %"for_LDG.148" = inttoptr i32 %".2055" to ptr
  %".2056" = load float, ptr %"for_LDG.148"
  store float %".2056", ptr %"R19_Float32"
  ; LDG.E.SYS R34, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2059" = load i32, ptr %"R10_Float32_PTR"
  %".2060" = add i32 %".2059", 12
  %"for_LDG.149" = inttoptr i32 %".2060" to ptr
  %".2061" = load float, ptr %"for_LDG.149"
  store float %".2061", ptr %"R34_Float32"
  ; LDG.E.SYS R21, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2064" = load i32, ptr %"R12_Float32_PTR"
  %".2065" = add i32 %".2064", 12
  %"for_LDG.150" = inttoptr i32 %".2065" to ptr
  %".2066" = load float, ptr %"for_LDG.150"
  store float %".2066", ptr %"R21_Float32"
  ; IADD3 R23, R23, -0x4, RZ
  %".2069" = load i32, ptr %"R23_Int32"
  %"add.138" = add i32 %".2069", -4
  %"add.139" = add i32 %"add.138", 0
  store i32 %"add.139", ptr %"R23_Int32"
  ; IADD3 R22, R22, 0x4, RZ
  %".2072" = load i32, ptr %"R22_Int32"
  %"add.140" = add i32 %".2072", 4
  %"add.141" = add i32 %"add.140", 0
  store i32 %"add.141", ptr %"R22_Int32"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".2075" = load i32, ptr %"R23_Int32"
  %".2076" = load i1, ptr %"PT_Bool"
  %"cmp.22" = icmp ne i32 %".2075", 0
  %".2077" = and i1 %"cmp.22", %".2076"
  ; FMUL R15, R14, R9
  %".2079" = load float, ptr %"R14_Float32"
  %".2080" = load float, ptr %"R9_Float32"
  %"fmul.122" = fmul float %".2079", %".2080"
  store float %"fmul.122", ptr %"R15_Float32"
  ; FFMA R15, R15, R16, R8
  %".2083" = load float, ptr %"R15_Float32"
  %".2084" = load float, ptr %"R16_Float32"
  %".2085" = load float, ptr %"R8_Float32"
  %"fmul.123" = fmul float %".2083", %".2084"
  %"fadd.103" = fadd float %"fmul.123", %".2085"
  store float %"fadd.103", ptr %"R15_Float32"
  ; FMUL R18, R18, R9
  %".2088" = load float, ptr %"R18_Float32"
  %".2089" = load float, ptr %"R9_Float32"
  %"fmul.124" = fmul float %".2088", %".2089"
  store float %"fmul.124", ptr %"R18_Float32"
  ; FFMA R15, R18, R17, R15
  %".2092" = load float, ptr %"R18_Float32"
  %".2093" = load float, ptr %"R17_Float32"
  %".2094" = load float, ptr %"R15_Float32"
  %"fmul.125" = fmul float %".2092", %".2093"
  %"fadd.104" = fadd float %"fmul.125", %".2094"
  store float %"fadd.104", ptr %"R15_Float32"
  ; FMUL R24, R24, R9
  %".2097" = load float, ptr %"R24_Float32"
  %".2098" = load float, ptr %"R9_Float32"
  %"fmul.126" = fmul float %".2097", %".2098"
  store float %"fmul.126", ptr %"R24_Float32"
  ; FFMA R15, R24, R19, R15
  %".2101" = load float, ptr %"R24_Float32"
  %".2102" = load float, ptr %"R19_Float32"
  %".2103" = load float, ptr %"R15_Float32"
  %"fmul.127" = fmul float %".2101", %".2102"
  %"fadd.105" = fadd float %"fmul.127", %".2103"
  store float %"fadd.105", ptr %"R15_Float32"
  ; FMUL R34, R34, R9
  %".2106" = load float, ptr %"R34_Float32"
  %".2107" = load float, ptr %"R9_Float32"
  %"fmul.128" = fmul float %".2106", %".2107"
  store float %"fmul.128", ptr %"R34_Float32"
  ; FFMA R8, R34, R21, R15
  %".2110" = load float, ptr %"R34_Float32"
  %".2111" = load float, ptr %"R21_Float32"
  %".2112" = load float, ptr %"R15_Float32"
  %"fmul.129" = fmul float %".2110", %".2111"
  %"fadd.106" = fadd float %"fmul.129", %".2112"
  store float %"fadd.106", ptr %"R8_Float32"
  ; @P0 BRA `(.L_x_12)
  %".2115" = load i1, ptr %"P0_Bool"
  %".2116" = icmp ne i1 %".2115", 1
  br i1 %".2116", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".2119" = load i32, ptr %"R4_Int32"
  %".2120" = load i1, ptr %"PT_Bool"
  %"cmp.23" = icmp ne i32 %".2119", 0
  %".2121" = and i1 %"cmp.23", %".2120"
  ; @!P0 BRA `(.L_x_10)
  %".2123" = load i1, ptr %"P0_Bool"
  %".2124" = icmp eq i1 %".2123", 1
  br i1 %".2124", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11_Int32"
  ; IADD3 R10, R3, R22, RZ
  %".2129" = load i32, ptr %"R3_Int32"
  %".2130" = load i32, ptr %"R22_Int32"
  %"add.142" = add i32 %".2129", %".2130"
  %"add.143" = add i32 %"add.142", 0
  store i32 %"add.143", ptr %"R10_Int32"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".2133" = load i32, ptr %"R22_Int32"
  %".2134" = load i32, ptr %"R11_Int32"
  %"mul.50" = mul i32 %".2133", %".2134"
  %"add.144" = add i32 %"mul.50", %"Arg_3"
  store i32 %"add.144", ptr %"R22_Int32"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".2137" = load i32, ptr %"R10_Int32"
  %".2138" = load i32, ptr %"R11_Int32"
  %"mul.51" = mul i32 %".2137", %".2138"
  %"add.145" = add i32 %"mul.51", %"Arg_4"
  store i32 %"add.145", ptr %"R10_Int32"
  ; LDG.E.SYS R12, [R22]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".2141" = load i32, ptr %"R22_Float32_PTR"
  %".2142" = add i32 %".2141", 0
  %"for_LDG.151" = inttoptr i32 %".2142" to ptr
  %".2143" = load float, ptr %"for_LDG.151"
  store float %".2143", ptr %"R12_Float32"
  ; LDG.E.SYS R14, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2146" = load i32, ptr %"R10_Float32_PTR"
  %".2147" = add i32 %".2146", 0
  %"for_LDG.152" = inttoptr i32 %".2147" to ptr
  %".2148" = load float, ptr %"for_LDG.152"
  store float %".2148", ptr %"R14_Float32"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".2151" = load i32, ptr %"R4_Int32"
  %".2152" = load i1, ptr %"PT_Bool"
  %"cmp.24" = icmp ne i32 %".2151", 1
  %".2153" = and i1 %"cmp.24", %".2152"
  ; FMUL R13, R12, R9
  %".2155" = load float, ptr %"R12_Float32"
  %".2156" = load float, ptr %"R9_Float32"
  %"fmul.130" = fmul float %".2155", %".2156"
  store float %"fmul.130", ptr %"R13_Float32"
  ; FFMA R8, R13, R14, R8
  %".2159" = load float, ptr %"R13_Float32"
  %".2160" = load float, ptr %"R14_Float32"
  %".2161" = load float, ptr %"R8_Float32"
  %"fmul.131" = fmul float %".2159", %".2160"
  %"fadd.107" = fadd float %"fmul.131", %".2161"
  store float %"fadd.107", ptr %"R8_Float32"
  ; @!P0 BRA `(.L_x_10)
  %".2164" = load i1, ptr %"P0_Bool"
  %".2165" = icmp eq i1 %".2164", 1
  br i1 %".2165", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".2168" = load i32, ptr %"R4_Int32"
  %".2169" = load i1, ptr %"PT_Bool"
  %"cmp.25" = icmp ne i32 %".2168", 2
  %".2170" = and i1 %"cmp.25", %".2169"
  ; LDG.E.SYS R12, [R22+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".2172" = load i32, ptr %"R22_Float32_PTR"
  %".2173" = add i32 %".2172", 4
  %"for_LDG.153" = inttoptr i32 %".2173" to ptr
  %".2174" = load float, ptr %"for_LDG.153"
  store float %".2174", ptr %"R12_Float32"
  ; LDG.E.SYS R14, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2177" = load i32, ptr %"R10_Float32_PTR"
  %".2178" = add i32 %".2177", 4
  %"for_LDG.154" = inttoptr i32 %".2178" to ptr
  %".2179" = load float, ptr %"for_LDG.154"
  store float %".2179", ptr %"R14_Float32"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".2182" = load i1, ptr %"P0_Bool"
  %".2183" = icmp ne i1 %".2182", 1
  br i1 %".2183", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Float32_PTR", ptr %"R22_Int32", i32 4, i1 0)
  %".2186" = load i32, ptr %"R22_Float32_PTR"
  %".2187" = add i32 %".2186", 8
  %"for_LDG.155" = inttoptr i32 %".2187" to ptr
  %".2188" = load float, ptr %"for_LDG.155"
  store float %".2188", ptr %"R16_Float32"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".2193" = load i1, ptr %"P0_Bool"
  %".2194" = icmp ne i1 %".2193", 1
  br i1 %".2194", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2197" = load i32, ptr %"R10_Float32_PTR"
  %".2198" = add i32 %".2197", 8
  %"for_LDG.156" = inttoptr i32 %".2198" to ptr
  %".2199" = load float, ptr %"for_LDG.156"
  store float %".2199", ptr %"R15_Float32"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %".2204" = load float, ptr %"R12_Float32"
  %".2205" = load float, ptr %"R9_Float32"
  %"fmul.132" = fmul float %".2204", %".2205"
  store float %"fmul.132", ptr %"R13_Float32"
  ; FFMA R8, R13, R14, R8
  %".2208" = load float, ptr %"R13_Float32"
  %".2209" = load float, ptr %"R14_Float32"
  %".2210" = load float, ptr %"R8_Float32"
  %"fmul.133" = fmul float %".2208", %".2209"
  %"fadd.108" = fadd float %"fmul.133", %".2210"
  store float %"fadd.108", ptr %"R8_Float32"
  ; @P0 FMUL R9, R16, R9
  %".2213" = load i1, ptr %"P0_Bool"
  %".2214" = icmp ne i1 %".2213", 1
  br i1 %".2214", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %".2217" = load float, ptr %"R16_Float32"
  %".2218" = load float, ptr %"R9_Float32"
  %"fmul.134" = fmul float %".2217", %".2218"
  store float %"fmul.134", ptr %"R9_Float32"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".2223" = load i1, ptr %"P0_Bool"
  %".2224" = icmp ne i1 %".2223", 1
  br i1 %".2224", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %".2227" = load float, ptr %"R9_Float32"
  %".2228" = load float, ptr %"R15_Float32"
  %".2229" = load float, ptr %"R8_Float32"
  %"fmul.135" = fmul float %".2227", %".2228"
  %"fadd.109" = fadd float %"fmul.135", %".2229"
  store float %"fadd.109", ptr %"R8_Float32"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R30_Float32_PTR", ptr %"R30_Int32", i32 4, i1 0)
  %".2234" = load i32, ptr %"R30_Float32_PTR"
  %".2235" = add i32 %".2234", 0
  %"for_LDG.157" = inttoptr i32 %".2235" to ptr
  %".2236" = load float, ptr %"for_LDG.157"
  store float %".2236", ptr %"R9_Float32"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %".2241" = load float, ptr %"R9_Float32"
  %".2242" = load float, ptr %"R8_Float32"
  %"fadd.110" = fadd float %".2241", %".2242"
  store float %"fadd.110", ptr %"R12_Float32"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %".2245" = load float, ptr %"R12_Float32"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".2245")
  %".2246" = load i1, ptr %"PT_Bool"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".2247" = and i1 %"fcmp_unordered", %".2246"
  ; @!P0 BRA `(.L_x_17)
  %".2249" = load i1, ptr %"P0_Bool"
  %".2250" = icmp eq i1 %".2249", 1
  br i1 %".2250", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %".2253" = load float, ptr %"R12_Float32"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".2253")
  %"fmul.136" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  store float %"fmul.136", ptr %"R8_Float32"
  ; MOV R9, 0x3f800000
  store float 0x41cfc00000000000, ptr %"R9_Float32"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %".2258" = load float, ptr %"R12_Float32"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".2258")
  %".2259" = load i1, ptr %"PT_Bool"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".2260" = and i1 %"fcmp_unordered.1", %".2259"
  ; MUFU.EX2 R8, R8
  %".2262" = load float, ptr %"R8_Float32"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".2262")
  store float %"llvm_exp2_f32_result.2", ptr %"R8_Float32"
  ; FADD R10, R8, 1
  %".2265" = load float, ptr %"R8_Float32"
  %"fadd.111" = fadd float %".2265", 0x3ff0000000000000
  store float %"fadd.111", ptr %"R10_Float32"
  ; MUFU.RCP R10, R10
  %".2268" = load float, ptr %"R10_Float32"
  %".2269" = fdiv float 0x3ff0000000000000, %".2268"
  store float %".2269", ptr %"R10_Float32"
  ; FFMA R9, R10, -2, R9
  %".2272" = load float, ptr %"R10_Float32"
  %".2273" = load float, ptr %"R9_Float32"
  %"fmul.137" = fmul float %".2272", 0xc000000000000000
  %"fadd.112" = fadd float %"fmul.137", %".2273"
  store float %"fadd.112", ptr %"R9_Float32"
  ; FSEL R9, R9, 1, !P0
  %".2276" = load float, ptr %"R9_Float32"
  %".2277" = load i1, ptr %"P0_Bool"
  %".2278" = icmp eq i1 %".2277", 1
  %"fsel" = select  i1 %".2278", float %".2276", float 0x3ff0000000000000
  store float %"fsel", ptr %"R9_Float32"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".2281" = load float, ptr %"R9_Float32"
  %".2282" = load float, ptr %"R12_Float32"
  %".2283" = or float %".2281", 0x41e0000000000000
  %".2284" = or float %".2281", %".2282"
  %".2285" = and float %".2283", %".2284"
  store float %".2285", ptr %"R9_Float32"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  store float 0x41ce407840000000, ptr %"R9_Float32"
  ; FMUL R8, R12, R12
  %".2292" = load float, ptr %"R12_Float32"
  %".2293" = load float, ptr %"R12_Float32"
  %"fmul.138" = fmul float %".2292", %".2293"
  store float %"fmul.138", ptr %"R8_Float32"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".2296" = load float, ptr %"R8_Float32"
  %".2297" = load float, ptr %"R9_Float32"
  %"fmul.139" = fmul float %".2296", %".2297"
  %"fadd.113" = fadd float %"fmul.139", 0xbfaac795c0000000
  store float %"fadd.113", ptr %"R9_Float32"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".2300" = load float, ptr %"R8_Float32"
  %".2301" = load float, ptr %"R9_Float32"
  %"fmul.140" = fmul float %".2300", %".2301"
  %"fadd.114" = fadd float %"fmul.140", 0x3fc10b2820000000
  store float %"fadd.114", ptr %"R9_Float32"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".2304" = load float, ptr %"R8_Float32"
  %".2305" = load float, ptr %"R9_Float32"
  %"fmul.141" = fmul float %".2304", %".2305"
  %"fadd.115" = fadd float %"fmul.141", 0xbfd5553da0000000
  store float %"fadd.115", ptr %"R9_Float32"
  ; FFMA R9, R8, R9, RZ
  %".2308" = load float, ptr %"R8_Float32"
  %".2309" = load float, ptr %"R9_Float32"
  %"fmul.142" = fmul float %".2308", %".2309"
  %"fadd.116" = fadd float %"fmul.142",              0x0
  store float %"fadd.116", ptr %"R9_Float32"
  ; FFMA R9, R12, R9, R12
  %".2312" = load float, ptr %"R12_Float32"
  %".2313" = load float, ptr %"R9_Float32"
  %".2314" = load float, ptr %"R12_Float32"
  %"fmul.143" = fmul float %".2312", %".2313"
  %"fadd.117" = fadd float %"fmul.143", %".2314"
  store float %"fadd.117", ptr %"R9_Float32"
.L_x_18:
  ; BSYNC B0
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R20_Int32", ptr %"R20_Float32", i32 4, i1 0)
  %".2318" = load i32, ptr %"R20_Int32"
  %"add.146" = add i32 %".2318", 25165824
  %"add.147" = add i32 %"add.146", 0
  store i32 %"add.147", ptr %"R8_Int32"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".2323" = load i32, ptr %"R8_Int32"
  %".2324" = and i32 %".2323", 2139095040
  store i32 %".2324", ptr %"R8_Int32"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".2327" = load i32, ptr %"R8_Int32"
  %".2328" = load i1, ptr %"PT_Bool"
  %"cmp.26" = icmp sgt i32 %".2327", 33554431
  %".2329" = and i1 %"cmp.26", %".2328"
  ; @P0 BRA `(.L_x_20)
  %".2331" = load i1, ptr %"P0_Bool"
  %".2332" = icmp ne i1 %".2331", 1
  br i1 %".2332", label %".L_x_20", label %".L_x_16_split_0x2170"
.L_x_16_split_0x2170:
  ; MOV R24, R20
  %".2335" = load float, ptr %"R20_Float32"
  store float %".2335", ptr %"R24_Float32"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_NOTYPE", ptr %"R10_Int32", i32 4, i1 0)
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.1" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R8, R22
  %".2341" = load i32, ptr %"R22_Int32"
  store i32 %".2341", ptr %"R8_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32", ptr %"R8_Int32", i32 4, i1 0)
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".2346" = load float, ptr %"R20_Float32"
  %".2347" = fdiv float 0x3ff0000000000000, %".2346"
  store float %".2347", ptr %"R11_Float32"
  ; FFMA R8, R20, R11, -1
  %".2350" = load float, ptr %"R20_Float32"
  %".2351" = load float, ptr %"R11_Float32"
  %"fmul.144" = fmul float %".2350", %".2351"
  %"fadd.118" = fadd float %"fmul.144", 0xbff0000000000000
  store float %"fadd.118", ptr %"R8_Float32"
  ; FADD.FTZ R8, -R8, -RZ
  %".2354" = load float, ptr %"R8_Float32"
  %".2355" = sub float              0x0, %".2354"
  %"fadd.119" = fadd float %".2355",              0x0
  store float %"fadd.119", ptr %"R8_Float32"
  ; FFMA R8, R11, R8, R11
  %".2358" = load float, ptr %"R11_Float32"
  %".2359" = load float, ptr %"R8_Float32"
  %".2360" = load float, ptr %"R11_Float32"
  %"fmul.145" = fmul float %".2358", %".2359"
  %"fadd.120" = fadd float %"fmul.145", %".2360"
  store float %"fadd.120", ptr %"R8_Float32"
.L_x_21:
  ; BSYNC B0
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R28_Float32_PTR", ptr %"R28_Int32", i32 4, i1 0)
  %".2364" = load i32, ptr %"R28_Float32_PTR"
  %".2365" = add i32 %".2364", 0
  %"for_LDG.158" = inttoptr i32 %".2365" to ptr
  %".2366" = load float, ptr %"for_LDG.158"
  store float %".2366", ptr %"R11_Float32"
  ; FADD R10, -R8, 1
  %".2369" = load float, ptr %"R8_Float32"
  %".2370" = sub float              0x0, %".2369"
  %"fadd.121" = fadd float %".2370", 0x3ff0000000000000
  store float %"fadd.121", ptr %"R10_Float32"
  ; FMUL R11, R11, R8
  %".2373" = load float, ptr %"R11_Float32"
  %".2374" = load float, ptr %"R8_Float32"
  %"fmul.146" = fmul float %".2373", %".2374"
  store float %"fmul.146", ptr %"R11_Float32"
  ; FFMA R9, R10, R9, R11
  %".2377" = load float, ptr %"R10_Float32"
  %".2378" = load float, ptr %"R9_Float32"
  %".2379" = load float, ptr %"R11_Float32"
  %"fmul.147" = fmul float %".2377", %".2378"
  %"fadd.122" = fadd float %"fmul.147", %".2379"
  store float %"fadd.122", ptr %"R9_Float32"
  ; STG.E.SYS [R28], R9
  %".2382" = load float, ptr %"R9_Float32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R28_Float32_PTR", ptr %"R28_Int32", i32 4, i1 0)
  %".2383" = load i32, ptr %"R28_Float32_PTR"
  %".2384" = add i32 %".2383", 0
  %"for_STG" = inttoptr i32 %".2384" to ptr
  store float %".2382", ptr %"for_STG"
  ; @!P3 BRA `(.L_x_22)
  %".2387" = load i1, ptr %"P3_Bool"
  %".2388" = icmp eq i1 %".2387", 1
  br i1 %".2388", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18_Int32"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R15_NOTYPE", ptr %"R15_Float32", i32 4, i1 0)
  %".2395" = load i32, ptr %"R15_NOTYPE"
  %".2396" = and i32 %".2395", 3
  store i32 %".2396", ptr %"R15_Int32"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".2399" = load i32, ptr %"R5_Int32"
  %".2400" = and i32 %".2399", 3
  store i32 %".2400", ptr %"R48_Int32"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".2403" = load i32, ptr %"R18_Int32"
  %".2404" = sub i32 0, %".2403"
  %"add.148" = add i32 %".2404", %"Arg_6"
  %"add.149" = add i32 %"add.148", 0
  store i32 %"add.149", ptr %"R49_Int32"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".2407" = icmp ult i32 31, 32
  %"SHF_min.2" = select  i1 %".2407", i32 31, i32 32
  %".2408" = load i32, ptr %"R5_Int32"
  %"zext.6" = zext i32 %".2408" to i64
  %"zext.7" = zext i32 0 to i64
  %"zext.8" = zext i32 31 to i64
  %"shl.10" = shl i64 %"zext.6", 32
  %"or.2" = or i64 %"shl.10", %"zext.7"
  %"ashr" = ashr i64 %"or.2", %"zext.8"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.2" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.2", ptr %"R16_Int32"
  ; MOV R17, RZ
  %".2411" = load i32, ptr %"RZ_Int32"
  store i32 %".2411", ptr %"R17_Int32"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".2414" = load i32, ptr %"R18_Int32"
  %".2415" = sub i32 0, %".2414"
  %"add.150" = add i32 %".2415", %"Arg_7"
  %"add.151" = add i32 %"add.150", 0
  store i32 %"add.151", ptr %"R18_Int32"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".2418" = load i32, ptr %"R15_Int32"
  %".2419" = sub i32 0, %".2418"
  %"add.152" = add i32 %".2419", %"Arg_6"
  %"add.153" = add i32 %"add.152", 0
  store i32 %"add.153", ptr %"R19_Int32"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".2422" = load i32, ptr %"R48_Int32"
  %".2423" = sub i32 0, %".2422"
  %"add.154" = add i32 %".2423", %"Arg_7"
  %"add.155" = add i32 %"add.154", 0
  store i32 %"add.155", ptr %"R20_Int32"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".2426" = load i32, ptr %"R49_Int32"
  %".2427" = load i1, ptr %"PT_Bool"
  %"cmp.27" = icmp sge i32 %".2426", 3
  %".2428" = and i1 %"cmp.27", %".2427"
  ; MOV R13, R17
  %".2430" = load i32, ptr %"R17_Int32"
  store i32 %".2430", ptr %"R13_Int32"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R4_Int32"
  ; IADD3 R17, R17, 0x1, RZ
  %".2435" = load i32, ptr %"R17_Int32"
  %"add.156" = add i32 %".2435", 1
  %"add.157" = add i32 %"add.156", 0
  store i32 %"add.157", ptr %"R17_Int32"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".2438" = load i32, ptr %"R4_Int32"
  %".2439" = load i1, ptr %"PT_Bool"
  %"cmp.28" = icmp sge i32 %".2438", 1
  %".2440" = and i1 %"cmp.28", %".2439"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".2442" = load i32, ptr %"R15_Int32"
  %".2443" = load i1, ptr %"PT_Bool"
  %"cmp.29" = icmp ne i32 %".2442", 0
  %".2444" = and i1 %"cmp.29", %".2443"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".2446" = load i32, ptr %"R17_Int32"
  %".2447" = load i1, ptr %"PT_Bool"
  %"cmp.30" = icmp sge i32 %".2446", %"Arg_8"
  %".2448" = and i1 %"cmp.30", %".2447"
  ; MOV R21, RZ
  %".2450" = load float, ptr %"RZ_Float32"
  store float %".2450", ptr %"R21_Float32"
  ; MOV R22, RZ
  %".2453" = load i32, ptr %"RZ_Int32"
  store i32 %".2453", ptr %"R22_Int32"
  ; MOV R56, RZ
  %".2456" = load float, ptr %"RZ_Float32"
  store float %".2456", ptr %"R56_Float32"
  ; MOV R44, RZ
  %".2459" = load float, ptr %"RZ_Float32"
  store float %".2459", ptr %"R44_Float32"
  ; @!P0 BRA `(.L_x_23)
  %".2462" = load i1, ptr %"P0_Bool"
  %".2463" = icmp eq i1 %".2462", 1
  br i1 %".2463", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R25_Int32"
  ; MOV R21, RZ
  %".2468" = load float, ptr %"RZ_Float32"
  store float %".2468", ptr %"R21_Float32"
  ; MOV R22, RZ
  %".2471" = load i32, ptr %"RZ_Int32"
  store i32 %".2471", ptr %"R22_Int32"
  ; MOV R12, R19
  %".2474" = load i32, ptr %"R19_Int32"
  store i32 %".2474", ptr %"R12_Int32"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".2477" = icmp ult i32 2, 64
  %"SHF_min.3" = select  i1 %".2477", i32 2, i32 64
  %".2478" = load i32, ptr %"R16_Int32"
  %".2479" = load i32, ptr %"R25_Int32"
  %"zext.9" = zext i32 %".2478" to i64
  %"zext.10" = zext i32 %".2479" to i64
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
  %".2484" = load i32, ptr %"R14_Int32"
  %".2485" = load i32, ptr %"R22_Int32"
  %"mul.52" = mul i32 %".2484", %"Arg_6"
  %"add.158" = add i32 %"mul.52", %".2485"
  store i32 %"add.158", ptr %"R6_Int32"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9_Int32"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".2490" = load i32, ptr %"R13_Int32"
  %".2491" = load i32, ptr %"R22_Int32"
  %"mul.53" = mul i32 %".2490", %"Arg_6"
  %"add.159" = add i32 %"mul.53", %".2491"
  store i32 %"add.159", ptr %"R10_Int32"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".2494" = load i32, ptr %"R6_Int32"
  %".2495" = load i32, ptr %"R7_Int32"
  %"mul.54" = mul i32 %".2494", %".2495"
  %"add.160" = add i32 %"mul.54", %"Arg_4"
  store i32 %"add.160", ptr %"R4_Int32"
  ; LEA R6, R9, R6, 0x1
  %".2498" = load i32, ptr %"R9_Int32"
  %".2499" = load i32, ptr %"R6_Int32"
  %"shl.13" = shl i32 %".2498", 1
  %"add.161" = add i32 %"shl.13", %".2499"
  store i32 %"add.161", ptr %"R6_Int32"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".2502" = load i32, ptr %"R10_Int32"
  %".2503" = load i32, ptr %"R7_Int32"
  %"mul.55" = mul i32 %".2502", %".2503"
  %"add.162" = add i32 %"mul.55", %"Arg_2"
  store i32 %"add.162", ptr %"R10_Int32"
  ; LEA R8, P0, R25, R4, 0x2
  %".2506" = load i1, ptr %"P0_Bool"
  %".2507" = sub i1 0, %".2506"
  %".2508" = load i32, ptr %"R25_Int32"
  %".2509" = load i32, ptr %"R4_Int32"
  %".2510" = sext i1 %".2507" to i32
  %"shl.14" = shl i32 %".2510", %".2509"
  %"add.163" = add i32 %"shl.14", %".2508"
  store i32 %"add.163", ptr %"R8_Int32"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".2513" = load i32, ptr %"R6_Int32"
  %".2514" = load i32, ptr %"R7_Int32"
  %"mul.56" = mul i32 %".2513", %".2514"
  %"add.164" = add i32 %"mul.56", %"Arg_4"
  store i32 %"add.164", ptr %"R6_Int32"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".2517" = load i32, ptr %"R5_Int32"
  %".2518" = load i32, ptr %"R23_Int32"
  %".2519" = load i1, ptr %"P0_Bool"
  %".2520" = sub i1 0, %".2519"
  %".2521" = zext i1 %".2520" to i32
  %"add.165" = add i32 %".2517", %".2518"
  %"add.166" = add i32 %"add.165", 0
  %"add.167" = add i32 %"add.166", %".2521"
  store i32 %"add.167", ptr %"R9_Int32"
  ; LDG.E.SYS R35, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2524" = load i32, ptr %"R4_Float32_PTR"
  %".2525" = add i32 %".2524", 0
  %"for_LDG.159" = inttoptr i32 %".2525" to ptr
  %".2526" = load float, ptr %"for_LDG.159"
  store float %".2526", ptr %"R35_Float32"
  ; LDG.E.SYS R24, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2529" = load i32, ptr %"R10_Float32_PTR"
  %".2530" = add i32 %".2529", 0
  %"for_LDG.160" = inttoptr i32 %".2530" to ptr
  %".2531" = load float, ptr %"for_LDG.160"
  store float %".2531", ptr %"R24_Float32"
  ; LDG.E.SYS R37, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2534" = load i32, ptr %"R8_Float32_PTR"
  %".2535" = add i32 %".2534", 0
  %"for_LDG.161" = inttoptr i32 %".2535" to ptr
  %".2536" = load float, ptr %"for_LDG.161"
  store float %".2536", ptr %"R37_Float32"
  ; LDG.E.SYS R34, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2539" = load i32, ptr %"R6_Float32_PTR"
  %".2540" = add i32 %".2539", 0
  %"for_LDG.162" = inttoptr i32 %".2540" to ptr
  %".2541" = load float, ptr %"for_LDG.162"
  store float %".2541", ptr %"R34_Float32"
  ; LDG.E.SYS R36, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2544" = load i32, ptr %"R4_Float32_PTR"
  %".2545" = add i32 %".2544", 4
  %"for_LDG.163" = inttoptr i32 %".2545" to ptr
  %".2546" = load float, ptr %"for_LDG.163"
  store float %".2546", ptr %"R36_Float32"
  ; LDG.E.SYS R38, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2549" = load i32, ptr %"R10_Float32_PTR"
  %".2550" = add i32 %".2549", 4
  %"for_LDG.164" = inttoptr i32 %".2550" to ptr
  %".2551" = load float, ptr %"for_LDG.164"
  store float %".2551", ptr %"R38_Float32"
  ; LDG.E.SYS R39, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2554" = load i32, ptr %"R8_Float32_PTR"
  %".2555" = add i32 %".2554", 4
  %"for_LDG.165" = inttoptr i32 %".2555" to ptr
  %".2556" = load float, ptr %"for_LDG.165"
  store float %".2556", ptr %"R39_Float32"
  ; LDG.E.SYS R41, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2559" = load i32, ptr %"R6_Float32_PTR"
  %".2560" = add i32 %".2559", 4
  %"for_LDG.166" = inttoptr i32 %".2560" to ptr
  %".2561" = load float, ptr %"for_LDG.166"
  store float %".2561", ptr %"R41_Float32"
  ; LDG.E.SYS R42, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2564" = load i32, ptr %"R10_Float32_PTR"
  %".2565" = add i32 %".2564", 8
  %"for_LDG.167" = inttoptr i32 %".2565" to ptr
  %".2566" = load float, ptr %"for_LDG.167"
  store float %".2566", ptr %"R42_Float32"
  ; LDG.E.SYS R40, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2569" = load i32, ptr %"R4_Float32_PTR"
  %".2570" = add i32 %".2569", 8
  %"for_LDG.168" = inttoptr i32 %".2570" to ptr
  %".2571" = load float, ptr %"for_LDG.168"
  store float %".2571", ptr %"R40_Float32"
  ; LDG.E.SYS R43, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2574" = load i32, ptr %"R8_Float32_PTR"
  %".2575" = add i32 %".2574", 8
  %"for_LDG.169" = inttoptr i32 %".2575" to ptr
  %".2576" = load float, ptr %"for_LDG.169"
  store float %".2576", ptr %"R43_Float32"
  ; LDG.E.SYS R45, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2579" = load i32, ptr %"R6_Float32_PTR"
  %".2580" = add i32 %".2579", 8
  %"for_LDG.170" = inttoptr i32 %".2580" to ptr
  %".2581" = load float, ptr %"for_LDG.170"
  store float %".2581", ptr %"R45_Float32"
  ; LDG.E.SYS R47, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2584" = load i32, ptr %"R10_Float32_PTR"
  %".2585" = add i32 %".2584", 12
  %"for_LDG.171" = inttoptr i32 %".2585" to ptr
  %".2586" = load float, ptr %"for_LDG.171"
  store float %".2586", ptr %"R47_Float32"
  ; LDG.E.SYS R46, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2589" = load i32, ptr %"R4_Float32_PTR"
  %".2590" = add i32 %".2589", 12
  %"for_LDG.172" = inttoptr i32 %".2590" to ptr
  %".2591" = load float, ptr %"for_LDG.172"
  store float %".2591", ptr %"R46_Float32"
  ; LDG.E.SYS R50, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2594" = load i32, ptr %"R8_Float32_PTR"
  %".2595" = add i32 %".2594", 12
  %"for_LDG.173" = inttoptr i32 %".2595" to ptr
  %".2596" = load float, ptr %"for_LDG.173"
  store float %".2596", ptr %"R50_Float32"
  ; LDG.E.SYS R51, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2599" = load i32, ptr %"R6_Float32_PTR"
  %".2600" = add i32 %".2599", 12
  %"for_LDG.174" = inttoptr i32 %".2600" to ptr
  %".2601" = load float, ptr %"for_LDG.174"
  store float %".2601", ptr %"R51_Float32"
  ; IADD3 R12, R12, -0x4, RZ
  %".2604" = load i32, ptr %"R12_Int32"
  %"add.168" = add i32 %".2604", -4
  %"add.169" = add i32 %"add.168", 0
  store i32 %"add.169", ptr %"R12_Int32"
  ; IADD3 R22, R22, 0x4, RZ
  %".2607" = load i32, ptr %"R22_Int32"
  %"add.170" = add i32 %".2607", 4
  %"add.171" = add i32 %"add.170", 0
  store i32 %"add.171", ptr %"R22_Int32"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".2610" = load i32, ptr %"R12_Int32"
  %".2611" = load i1, ptr %"PT_Bool"
  %"cmp.31" = icmp ne i32 %".2610", 0
  %".2612" = and i1 %"cmp.31", %".2611"
  ; FFMA R35, R35, R24, R44
  %".2614" = load float, ptr %"R35_Float32"
  %".2615" = load float, ptr %"R24_Float32"
  %".2616" = load float, ptr %"R44_Float32"
  %"fmul.148" = fmul float %".2614", %".2615"
  %"fadd.123" = fadd float %"fmul.148", %".2616"
  store float %"fadd.123", ptr %"R35_Float32"
  ; FFMA R37, R24.reuse, R37, R56
  %".2619" = load float, ptr %"R24_Float32"
  %".2620" = load float, ptr %"R37_Float32"
  %".2621" = load float, ptr %"R56_Float32"
  %"fmul.149" = fmul float %".2619", %".2620"
  %"fadd.124" = fadd float %"fmul.149", %".2621"
  store float %"fadd.124", ptr %"R37_Float32"
  ; FFMA R34, R24, R34, R21
  %".2624" = load float, ptr %"R24_Float32"
  %".2625" = load float, ptr %"R34_Float32"
  %".2626" = load float, ptr %"R21_Float32"
  %"fmul.150" = fmul float %".2624", %".2625"
  %"fadd.125" = fadd float %"fmul.150", %".2626"
  store float %"fadd.125", ptr %"R34_Float32"
  ; FFMA R35, R36, R38, R35
  %".2629" = load float, ptr %"R36_Float32"
  %".2630" = load float, ptr %"R38_Float32"
  %".2631" = load float, ptr %"R35_Float32"
  %"fmul.151" = fmul float %".2629", %".2630"
  %"fadd.126" = fadd float %"fmul.151", %".2631"
  store float %"fadd.126", ptr %"R35_Float32"
  ; FFMA R37, R38, R39, R37
  %".2634" = load float, ptr %"R38_Float32"
  %".2635" = load float, ptr %"R39_Float32"
  %".2636" = load float, ptr %"R37_Float32"
  %"fmul.152" = fmul float %".2634", %".2635"
  %"fadd.127" = fadd float %"fmul.152", %".2636"
  store float %"fadd.127", ptr %"R37_Float32"
  ; FFMA R34, R38, R41, R34
  %".2639" = load float, ptr %"R38_Float32"
  %".2640" = load float, ptr %"R41_Float32"
  %".2641" = load float, ptr %"R34_Float32"
  %"fmul.153" = fmul float %".2639", %".2640"
  %"fadd.128" = fadd float %"fmul.153", %".2641"
  store float %"fadd.128", ptr %"R34_Float32"
  ; FFMA R35, R40, R42, R35
  %".2644" = load float, ptr %"R40_Float32"
  %".2645" = load float, ptr %"R42_Float32"
  %".2646" = load float, ptr %"R35_Float32"
  %"fmul.154" = fmul float %".2644", %".2645"
  %"fadd.129" = fadd float %"fmul.154", %".2646"
  store float %"fadd.129", ptr %"R35_Float32"
  ; FFMA R37, R42.reuse, R43, R37
  %".2649" = load float, ptr %"R42_Float32"
  %".2650" = load float, ptr %"R43_Float32"
  %".2651" = load float, ptr %"R37_Float32"
  %"fmul.155" = fmul float %".2649", %".2650"
  %"fadd.130" = fadd float %"fmul.155", %".2651"
  store float %"fadd.130", ptr %"R37_Float32"
  ; FFMA R34, R42, R45, R34
  %".2654" = load float, ptr %"R42_Float32"
  %".2655" = load float, ptr %"R45_Float32"
  %".2656" = load float, ptr %"R34_Float32"
  %"fmul.156" = fmul float %".2654", %".2655"
  %"fadd.131" = fadd float %"fmul.156", %".2656"
  store float %"fadd.131", ptr %"R34_Float32"
  ; FFMA R44, R46, R47, R35
  %".2659" = load float, ptr %"R46_Float32"
  %".2660" = load float, ptr %"R47_Float32"
  %".2661" = load float, ptr %"R35_Float32"
  %"fmul.157" = fmul float %".2659", %".2660"
  %"fadd.132" = fadd float %"fmul.157", %".2661"
  store float %"fadd.132", ptr %"R44_Float32"
  ; FFMA R56, R47, R50, R37
  %".2664" = load float, ptr %"R47_Float32"
  %".2665" = load float, ptr %"R50_Float32"
  %".2666" = load float, ptr %"R37_Float32"
  %"fmul.158" = fmul float %".2664", %".2665"
  %"fadd.133" = fadd float %"fmul.158", %".2666"
  store float %"fadd.133", ptr %"R56_Float32"
  ; FFMA R21, R47, R51, R34
  %".2669" = load float, ptr %"R47_Float32"
  %".2670" = load float, ptr %"R51_Float32"
  %".2671" = load float, ptr %"R34_Float32"
  %"fmul.159" = fmul float %".2669", %".2670"
  %"fadd.134" = fadd float %"fmul.159", %".2671"
  store float %"fadd.134", ptr %"R21_Float32"
  ; @P0 BRA `(.L_x_24)
  %".2674" = load i1, ptr %"P0_Bool"
  %".2675" = icmp ne i1 %".2674", 1
  br i1 %".2675", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".2678" = load i1, ptr %"P1_Bool"
  %".2679" = icmp eq i1 %".2678", 1
  br i1 %".2679", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11_Int32"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R14_Int32", ptr %"R14_Float32", i32 4, i1 0)
  %".2684" = load i32, ptr %"R14_Int32"
  %".2685" = load i32, ptr %"R22_Int32"
  %"mul.57" = mul i32 %".2684", %"Arg_6"
  %"add.172" = add i32 %"mul.57", %".2685"
  store i32 %"add.172", ptr %"R7_Int32"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R10_Int32"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".2690" = load i32, ptr %"R13_Int32"
  %".2691" = load i32, ptr %"R22_Int32"
  %"mul.58" = mul i32 %".2690", %"Arg_6"
  %"add.173" = add i32 %"mul.58", %".2691"
  store i32 %"add.173", ptr %"R6_Int32"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9_Int32"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".2696" = load i32, ptr %"R7_Int32"
  %".2697" = load i32, ptr %"R11_Int32"
  %"mul.59" = mul i32 %".2696", %".2697"
  %"add.174" = add i32 %"mul.59", %"Arg_4"
  store i32 %"add.174", ptr %"R4_Int32"
  ; LEA R10, R10, R7, 0x1
  %".2700" = load i32, ptr %"R10_Int32"
  %".2701" = load i32, ptr %"R7_Int32"
  %"shl.15" = shl i32 %".2700", 1
  %"add.175" = add i32 %"shl.15", %".2701"
  store i32 %"add.175", ptr %"R10_Int32"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".2704" = load i32, ptr %"R6_Int32"
  %".2705" = load i32, ptr %"R11_Int32"
  %"mul.60" = mul i32 %".2704", %".2705"
  %"add.176" = add i32 %"mul.60", %"Arg_2"
  store i32 %"add.176", ptr %"R6_Int32"
  ; LEA R8, P0, R9, R4, 0x2
  %".2708" = load i1, ptr %"P0_Bool"
  %".2709" = sub i1 0, %".2708"
  %".2710" = load i32, ptr %"R9_Int32"
  %".2711" = load i32, ptr %"R4_Int32"
  %".2712" = sext i1 %".2709" to i32
  %"shl.16" = shl i32 %".2712", %".2711"
  %"add.177" = add i32 %"shl.16", %".2710"
  store i32 %"add.177", ptr %"R8_Int32"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".2715" = load i32, ptr %"R10_Int32"
  %".2716" = load i32, ptr %"R11_Int32"
  %"mul.61" = mul i32 %".2715", %".2716"
  %"add.178" = add i32 %"mul.61", %"Arg_4"
  store i32 %"add.178", ptr %"R10_Int32"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".2719" = load i32, ptr %"R9_Int32"
  %".2720" = load i32, ptr %"R5_Int32"
  %".2721" = load i32, ptr %"R16_Int32"
  %"shl.17" = shl i32 %".2719", %".2721"
  %"add.179" = add i32 %"shl.17", %".2720"
  store i32 %"add.179", ptr %"R9_Int32"
  ; LDG.E.SYS R13, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2724" = load i32, ptr %"R4_Float32_PTR"
  %".2725" = add i32 %".2724", 0
  %"for_LDG.175" = inttoptr i32 %".2725" to ptr
  %".2726" = load float, ptr %"for_LDG.175"
  store float %".2726", ptr %"R13_Float32"
  ; LDG.E.SYS R12, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2729" = load i32, ptr %"R6_Float32_PTR"
  %".2730" = add i32 %".2729", 0
  %"for_LDG.176" = inttoptr i32 %".2730" to ptr
  %".2731" = load float, ptr %"for_LDG.176"
  store float %".2731", ptr %"R12_Float32"
  ; LDG.E.SYS R23, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2734" = load i32, ptr %"R8_Float32_PTR"
  %".2735" = add i32 %".2734", 0
  %"for_LDG.177" = inttoptr i32 %".2735" to ptr
  %".2736" = load float, ptr %"for_LDG.177"
  store float %".2736", ptr %"R23_Float32"
  ; LDG.E.SYS R22, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2739" = load i32, ptr %"R10_Float32_PTR"
  %".2740" = add i32 %".2739", 0
  %"for_LDG.178" = inttoptr i32 %".2740" to ptr
  %".2741" = load float, ptr %"for_LDG.178"
  store float %".2741", ptr %"R22_Float32"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".2744" = load i32, ptr %"R15_Int32"
  %".2745" = load i1, ptr %"PT_Bool"
  %"cmp.32" = icmp ne i32 %".2744", 1
  %".2746" = and i1 %"cmp.32", %".2745"
  ; FFMA R44, R13, R12, R44
  %".2748" = load float, ptr %"R13_Float32"
  %".2749" = load float, ptr %"R12_Float32"
  %".2750" = load float, ptr %"R44_Float32"
  %"fmul.160" = fmul float %".2748", %".2749"
  %"fadd.135" = fadd float %"fmul.160", %".2750"
  store float %"fadd.135", ptr %"R44_Float32"
  ; FFMA R56, R12.reuse, R23, R56
  %".2753" = load float, ptr %"R12_Float32"
  %".2754" = load float, ptr %"R23_Float32"
  %".2755" = load float, ptr %"R56_Float32"
  %"fmul.161" = fmul float %".2753", %".2754"
  %"fadd.136" = fadd float %"fmul.161", %".2755"
  store float %"fadd.136", ptr %"R56_Float32"
  ; FFMA R21, R12, R22, R21
  %".2758" = load float, ptr %"R12_Float32"
  %".2759" = load float, ptr %"R22_Float32"
  %".2760" = load float, ptr %"R21_Float32"
  %"fmul.162" = fmul float %".2758", %".2759"
  %"fadd.137" = fadd float %"fmul.162", %".2760"
  store float %"fadd.137", ptr %"R21_Float32"
  ; @!P0 BRA `(.L_x_25)
  %".2763" = load i1, ptr %"P0_Bool"
  %".2764" = icmp eq i1 %".2763", 1
  br i1 %".2764", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".2767" = load i32, ptr %"R15_Int32"
  %".2768" = load i1, ptr %"PT_Bool"
  %"cmp.33" = icmp ne i32 %".2767", 2
  %".2769" = and i1 %"cmp.33", %".2768"
  ; LDG.E.SYS R13, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2771" = load i32, ptr %"R4_Float32_PTR"
  %".2772" = add i32 %".2771", 4
  %"for_LDG.179" = inttoptr i32 %".2772" to ptr
  %".2773" = load float, ptr %"for_LDG.179"
  store float %".2773", ptr %"R13_Float32"
  ; LDG.E.SYS R12, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2776" = load i32, ptr %"R6_Float32_PTR"
  %".2777" = add i32 %".2776", 4
  %"for_LDG.180" = inttoptr i32 %".2777" to ptr
  %".2778" = load float, ptr %"for_LDG.180"
  store float %".2778", ptr %"R12_Float32"
  ; LDG.E.SYS R23, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2781" = load i32, ptr %"R8_Float32_PTR"
  %".2782" = add i32 %".2781", 4
  %"for_LDG.181" = inttoptr i32 %".2782" to ptr
  %".2783" = load float, ptr %"for_LDG.181"
  store float %".2783", ptr %"R23_Float32"
  ; LDG.E.SYS R22, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2786" = load i32, ptr %"R10_Float32_PTR"
  %".2787" = add i32 %".2786", 4
  %"for_LDG.182" = inttoptr i32 %".2787" to ptr
  %".2788" = load float, ptr %"for_LDG.182"
  store float %".2788", ptr %"R22_Float32"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".2791" = load i1, ptr %"P0_Bool"
  %".2792" = icmp ne i1 %".2791", 1
  br i1 %".2792", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".2795" = load i32, ptr %"R4_Float32_PTR"
  %".2796" = add i32 %".2795", 8
  %"for_LDG.183" = inttoptr i32 %".2796" to ptr
  %".2797" = load float, ptr %"for_LDG.183"
  store float %".2797", ptr %"R25_Float32"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".2802" = load i1, ptr %"P0_Bool"
  %".2803" = icmp ne i1 %".2802", 1
  br i1 %".2803", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".2806" = load i32, ptr %"R6_Float32_PTR"
  %".2807" = add i32 %".2806", 8
  %"for_LDG.184" = inttoptr i32 %".2807" to ptr
  %".2808" = load float, ptr %"for_LDG.184"
  store float %".2808", ptr %"R24_Float32"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".2813" = load i1, ptr %"P0_Bool"
  %".2814" = icmp ne i1 %".2813", 1
  br i1 %".2814", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2817" = load i32, ptr %"R8_Float32_PTR"
  %".2818" = add i32 %".2817", 8
  %"for_LDG.185" = inttoptr i32 %".2818" to ptr
  %".2819" = load float, ptr %"for_LDG.185"
  store float %".2819", ptr %"R35_Float32"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".2824" = load i1, ptr %"P0_Bool"
  %".2825" = icmp ne i1 %".2824", 1
  br i1 %".2825", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".2828" = load i32, ptr %"R10_Float32_PTR"
  %".2829" = add i32 %".2828", 8
  %"for_LDG.186" = inttoptr i32 %".2829" to ptr
  %".2830" = load float, ptr %"for_LDG.186"
  store float %".2830", ptr %"R34_Float32"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".2835" = load float, ptr %"R13_Float32"
  %".2836" = load float, ptr %"R12_Float32"
  %".2837" = load float, ptr %"R44_Float32"
  %"fmul.163" = fmul float %".2835", %".2836"
  %"fadd.138" = fadd float %"fmul.163", %".2837"
  store float %"fadd.138", ptr %"R44_Float32"
  ; FFMA R56, R12.reuse, R23, R56
  %".2840" = load float, ptr %"R12_Float32"
  %".2841" = load float, ptr %"R23_Float32"
  %".2842" = load float, ptr %"R56_Float32"
  %"fmul.164" = fmul float %".2840", %".2841"
  %"fadd.139" = fadd float %"fmul.164", %".2842"
  store float %"fadd.139", ptr %"R56_Float32"
  ; FFMA R21, R12, R22, R21
  %".2845" = load float, ptr %"R12_Float32"
  %".2846" = load float, ptr %"R22_Float32"
  %".2847" = load float, ptr %"R21_Float32"
  %"fmul.165" = fmul float %".2845", %".2846"
  %"fadd.140" = fadd float %"fmul.165", %".2847"
  store float %"fadd.140", ptr %"R21_Float32"
  ; @P0 FFMA R44, R25, R24, R44
  %".2850" = load i1, ptr %"P0_Bool"
  %".2851" = icmp ne i1 %".2850", 1
  br i1 %".2851", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".2854" = load float, ptr %"R25_Float32"
  %".2855" = load float, ptr %"R24_Float32"
  %".2856" = load float, ptr %"R44_Float32"
  %"fmul.166" = fmul float %".2854", %".2855"
  %"fadd.141" = fadd float %"fmul.166", %".2856"
  store float %"fadd.141", ptr %"R44_Float32"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".2861" = load i1, ptr %"P0_Bool"
  %".2862" = icmp ne i1 %".2861", 1
  br i1 %".2862", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".2865" = load float, ptr %"R24_Float32"
  %".2866" = load float, ptr %"R35_Float32"
  %".2867" = load float, ptr %"R56_Float32"
  %"fmul.167" = fmul float %".2865", %".2866"
  %"fadd.142" = fadd float %"fmul.167", %".2867"
  store float %"fadd.142", ptr %"R56_Float32"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".2872" = load i1, ptr %"P0_Bool"
  %".2873" = icmp ne i1 %".2872", 1
  br i1 %".2873", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".2876" = load float, ptr %"R24_Float32"
  %".2877" = load float, ptr %"R34_Float32"
  %".2878" = load float, ptr %"R21_Float32"
  %"fmul.168" = fmul float %".2876", %".2877"
  %"fadd.143" = fadd float %"fmul.168", %".2878"
  store float %"fadd.143", ptr %"R21_Float32"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".2883" = load i1, ptr %"P4_Bool"
  %".2884" = icmp eq i1 %".2883", 1
  br i1 %".2884", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".2887" = load i32, ptr %"R18_Int32"
  %".2888" = load i1, ptr %"PT_Bool"
  %"cmp.34" = icmp sge i32 %".2887", 3
  %".2889" = and i1 %"cmp.34", %".2888"
  ; MOV R23, RZ
  %".2891" = load i32, ptr %"RZ_Int32"
  store i32 %".2891", ptr %"R23_Int32"
  ; @!P0 BRA `(.L_x_27)
  %".2894" = load i1, ptr %"P0_Bool"
  %".2895" = icmp eq i1 %".2894", 1
  br i1 %".2895", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".2898" = load i32, ptr %"R20_Int32"
  %".2899" = load i1, ptr %"PT_Bool"
  %"cmp.35" = icmp sgt i32 %".2898", 0
  %".2900" = and i1 %"cmp.35", %".2899"
  ; MOV R23, RZ
  %".2902" = load i32, ptr %"RZ_Int32"
  store i32 %".2902", ptr %"R23_Int32"
  ; MOV R22, R20
  %".2905" = load i32, ptr %"R20_Int32"
  store i32 %".2905", ptr %"R22_Int32"
  ; @!P0 BRA `(.L_x_28)
  %".2908" = load i1, ptr %"P0_Bool"
  %".2909" = icmp eq i1 %".2908", 1
  br i1 %".2909", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".2912" = load i32, ptr %"R22_Int32"
  %".2913" = load i1, ptr %"PT_Bool"
  %"cmp.36" = icmp sgt i32 %".2912", 12
  %".2914" = and i1 %"cmp.36", %".2913"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".2916" = and i1 1, 1
  %".2917" = or i1 %".2916", 1
  ; @!P1 BRA `(.L_x_29)
  %".2919" = load i1, ptr %"P1_Bool"
  %".2920" = icmp eq i1 %".2919", 1
  br i1 %".2920", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2923" = xor i1 1, 1
  %".2924" = and i1 %".2923", 1
  %".2925" = and i1 %".2924", 1
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".2927" = load i32, ptr %"R0_Int32"
  %".2928" = load i32, ptr %"R23_Int32"
  %"add.180" = add i32 %".2927", %".2928"
  %"add.181" = add i32 %"add.180", 0
  store i32 %"add.181", ptr %"R25_Int32"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24_Int32"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".2933" = load i32, ptr %"R2_Int32"
  %".2934" = load i32, ptr %"R25_Int32"
  %"mul.62" = mul i32 %".2933", 3
  %"add.182" = add i32 %"mul.62", %".2934"
  store i32 %"add.182", ptr %"R35_Int32"
  ; LEA R25, R2, R25, 0x2
  %".2937" = load i32, ptr %"R2_Int32"
  %".2938" = load i32, ptr %"R25_Int32"
  %"shl.18" = shl i32 %".2937", 2
  %"add.183" = add i32 %"shl.18", %".2938"
  store i32 %"add.183", ptr %"R25_Int32"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".2941" = load i32, ptr %"R23_Int32"
  %".2942" = load i32, ptr %"R24_Int32"
  %"mul.63" = mul i32 %".2941", %".2942"
  %"add.184" = add i32 %"mul.63", %"Arg_3"
  store i32 %"add.184", ptr %"R36_Int32"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".2945" = load i32, ptr %"R35_Int32"
  %".2946" = load i32, ptr %"R24_Int32"
  %"mul.64" = mul i32 %".2945", %".2946"
  %"add.185" = add i32 %"mul.64", %"Arg_4"
  store i32 %"add.185", ptr %"R8_Int32"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".2949" = load i32, ptr %"R25_Int32"
  %".2950" = load i32, ptr %"R24_Int32"
  %"mul.65" = mul i32 %".2949", %".2950"
  %"add.186" = add i32 %"mul.65", %"Arg_4"
  store i32 %"add.186", ptr %"R12_Int32"
  ; LDG.E.SYS R39, [R36]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".2953" = load i32, ptr %"R36_Float32_PTR"
  %".2954" = add i32 %".2953", 0
  %"for_LDG.187" = inttoptr i32 %".2954" to ptr
  %".2955" = load float, ptr %"for_LDG.187"
  store float %".2955", ptr %"R39_Float32"
  ; LDG.E.SYS R41, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2958" = load i32, ptr %"R8_Float32_PTR"
  %".2959" = add i32 %".2958", 0
  %"for_LDG.188" = inttoptr i32 %".2959" to ptr
  %".2960" = load float, ptr %"for_LDG.188"
  store float %".2960", ptr %"R41_Float32"
  ; LDG.E.SYS R40, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2963" = load i32, ptr %"R12_Float32_PTR"
  %".2964" = add i32 %".2963", 0
  %"for_LDG.189" = inttoptr i32 %".2964" to ptr
  %".2965" = load float, ptr %"for_LDG.189"
  store float %".2965", ptr %"R40_Float32"
  ; LDG.E.SYS R52, [R36+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".2968" = load i32, ptr %"R36_Float32_PTR"
  %".2969" = add i32 %".2968", 4
  %"for_LDG.190" = inttoptr i32 %".2969" to ptr
  %".2970" = load float, ptr %"for_LDG.190"
  store float %".2970", ptr %"R52_Float32"
  ; LDG.E.SYS R53, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2973" = load i32, ptr %"R8_Float32_PTR"
  %".2974" = add i32 %".2973", 4
  %"for_LDG.191" = inttoptr i32 %".2974" to ptr
  %".2975" = load float, ptr %"for_LDG.191"
  store float %".2975", ptr %"R53_Float32"
  ; LDG.E.SYS R55, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".2978" = load i32, ptr %"R12_Float32_PTR"
  %".2979" = add i32 %".2978", 4
  %"for_LDG.192" = inttoptr i32 %".2979" to ptr
  %".2980" = load float, ptr %"for_LDG.192"
  store float %".2980", ptr %"R55_Float32"
  ; IADD3 R11, R23, 0x4, RZ
  %".2983" = load i32, ptr %"R23_Int32"
  %"add.187" = add i32 %".2983", 4
  %"add.188" = add i32 %"add.187", 0
  store i32 %"add.188", ptr %"R11_Int32"
  ; LDG.E.SYS R50, [R36+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".2986" = load i32, ptr %"R36_Float32_PTR"
  %".2987" = add i32 %".2986", 8
  %"for_LDG.193" = inttoptr i32 %".2987" to ptr
  %".2988" = load float, ptr %"for_LDG.193"
  store float %".2988", ptr %"R50_Float32"
  ; IADD3 R7, R35, 0x4, RZ
  %".2991" = load i32, ptr %"R35_Int32"
  %"add.189" = add i32 %".2991", 4
  %"add.190" = add i32 %"add.189", 0
  store i32 %"add.190", ptr %"R7_Int32"
  ; LDG.E.SYS R43, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".2994" = load i32, ptr %"R8_Float32_PTR"
  %".2995" = add i32 %".2994", 8
  %"for_LDG.194" = inttoptr i32 %".2995" to ptr
  %".2996" = load float, ptr %"for_LDG.194"
  store float %".2996", ptr %"R43_Float32"
  ; IADD3 R5, R25, 0x4, RZ
  %".2999" = load i32, ptr %"R25_Int32"
  %"add.191" = add i32 %".2999", 4
  %"add.192" = add i32 %"add.191", 0
  store i32 %"add.192", ptr %"R5_Int32"
  ; LDG.E.SYS R51, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3002" = load i32, ptr %"R12_Float32_PTR"
  %".3003" = add i32 %".3002", 8
  %"for_LDG.195" = inttoptr i32 %".3003" to ptr
  %".3004" = load float, ptr %"for_LDG.195"
  store float %".3004", ptr %"R51_Float32"
  ; LDG.E.SYS R47, [R36+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R36_Float32_PTR", ptr %"R36_Int32", i32 4, i1 0)
  %".3007" = load i32, ptr %"R36_Float32_PTR"
  %".3008" = add i32 %".3007", 12
  %"for_LDG.196" = inttoptr i32 %".3008" to ptr
  %".3009" = load float, ptr %"for_LDG.196"
  store float %".3009", ptr %"R47_Float32"
  ; LDG.E.SYS R54, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3012" = load i32, ptr %"R8_Float32_PTR"
  %".3013" = add i32 %".3012", 12
  %"for_LDG.197" = inttoptr i32 %".3013" to ptr
  %".3014" = load float, ptr %"for_LDG.197"
  store float %".3014", ptr %"R54_Float32"
  ; LDG.E.SYS R58, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3017" = load i32, ptr %"R12_Float32_PTR"
  %".3018" = add i32 %".3017", 12
  %"for_LDG.198" = inttoptr i32 %".3018" to ptr
  %".3019" = load float, ptr %"for_LDG.198"
  store float %".3019", ptr %"R58_Float32"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".3022" = load i32, ptr %"R11_Int32"
  %".3023" = load i32, ptr %"R24_Int32"
  %"mul.66" = mul i32 %".3022", %".3023"
  %"add.193" = add i32 %"mul.66", %"Arg_3"
  store i32 %"add.193", ptr %"R10_Int32"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".3026" = load i32, ptr %"R7_Int32"
  %".3027" = load i32, ptr %"R24_Int32"
  %"mul.67" = mul i32 %".3026", %".3027"
  %"add.194" = add i32 %"mul.67", %"Arg_4"
  store i32 %"add.194", ptr %"R6_Int32"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".3030" = load i32, ptr %"R5_Int32"
  %".3031" = load i32, ptr %"R24_Int32"
  %"mul.68" = mul i32 %".3030", %".3031"
  %"add.195" = add i32 %"mul.68", %"Arg_4"
  store i32 %"add.195", ptr %"R4_Int32"
  ; LDG.E.SYS R46, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3034" = load i32, ptr %"R10_Float32_PTR"
  %".3035" = add i32 %".3034", 0
  %"for_LDG.199" = inttoptr i32 %".3035" to ptr
  %".3036" = load float, ptr %"for_LDG.199"
  store float %".3036", ptr %"R46_Float32"
  ; LDG.E.SYS R42, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3039" = load i32, ptr %"R6_Float32_PTR"
  %".3040" = add i32 %".3039", 0
  %"for_LDG.200" = inttoptr i32 %".3040" to ptr
  %".3041" = load float, ptr %"for_LDG.200"
  store float %".3041", ptr %"R42_Float32"
  ; LDG.E.SYS R45, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3044" = load i32, ptr %"R4_Float32_PTR"
  %".3045" = add i32 %".3044", 0
  %"for_LDG.201" = inttoptr i32 %".3045" to ptr
  %".3046" = load float, ptr %"for_LDG.201"
  store float %".3046", ptr %"R45_Float32"
  ; LDG.E.SYS R34, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3049" = load i32, ptr %"R10_Float32_PTR"
  %".3050" = add i32 %".3049", 4
  %"for_LDG.202" = inttoptr i32 %".3050" to ptr
  %".3051" = load float, ptr %"for_LDG.202"
  store float %".3051", ptr %"R34_Float32"
  ; LDG.E.SYS R37, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3054" = load i32, ptr %"R6_Float32_PTR"
  %".3055" = add i32 %".3054", 4
  %"for_LDG.203" = inttoptr i32 %".3055" to ptr
  %".3056" = load float, ptr %"for_LDG.203"
  store float %".3056", ptr %"R37_Float32"
  ; IADD3 R9, R23, 0x8, RZ
  %".3059" = load i32, ptr %"R23_Int32"
  %"add.196" = add i32 %".3059", 8
  %"add.197" = add i32 %"add.196", 0
  store i32 %"add.197", ptr %"R9_Int32"
  ; LDG.E.SYS R36, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3062" = load i32, ptr %"R10_Float32_PTR"
  %".3063" = add i32 %".3062", 8
  %"for_LDG.204" = inttoptr i32 %".3063" to ptr
  %".3064" = load float, ptr %"for_LDG.204"
  store float %".3064", ptr %"R36_Float32"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".3067" = load i32, ptr %"R9_Int32"
  %".3068" = load i32, ptr %"R24_Int32"
  %"mul.69" = mul i32 %".3067", %".3068"
  %"add.198" = add i32 %"mul.69", %"Arg_3"
  store i32 %"add.198", ptr %"R8_Int32"
  ; LDG.E.SYS R38, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3071" = load i32, ptr %"R10_Float32_PTR"
  %".3072" = add i32 %".3071", 12
  %"for_LDG.205" = inttoptr i32 %".3072" to ptr
  %".3073" = load float, ptr %"for_LDG.205"
  store float %".3073", ptr %"R38_Float32"
  ; IADD3 R13, R23, 0xc, RZ
  %".3076" = load i32, ptr %"R23_Int32"
  %"add.199" = add i32 %".3076", 12
  %"add.200" = add i32 %"add.199", 0
  store i32 %"add.200", ptr %"R13_Int32"
  ; IADD3 R11, R35, 0x8, RZ
  %".3079" = load i32, ptr %"R35_Int32"
  %"add.201" = add i32 %".3079", 8
  %"add.202" = add i32 %"add.201", 0
  store i32 %"add.202", ptr %"R11_Int32"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".3082" = load i32, ptr %"R13_Int32"
  %".3083" = load i32, ptr %"R24_Int32"
  %"mul.70" = mul i32 %".3082", %".3083"
  %"add.203" = add i32 %"mul.70", %"Arg_3"
  store i32 %"add.203", ptr %"R12_Int32"
  ; FFMA R57, R41, R39, R44
  %".3086" = load float, ptr %"R41_Float32"
  %".3087" = load float, ptr %"R39_Float32"
  %".3088" = load float, ptr %"R44_Float32"
  %"fmul.169" = fmul float %".3086", %".3087"
  %"fadd.144" = fadd float %"fmul.169", %".3088"
  store float %"fadd.144", ptr %"R57_Float32"
  ; LDG.E.SYS R41, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3091" = load i32, ptr %"R8_Float32_PTR"
  %".3092" = add i32 %".3091", 0
  %"for_LDG.206" = inttoptr i32 %".3092" to ptr
  %".3093" = load float, ptr %"for_LDG.206"
  store float %".3093", ptr %"R41_Float32"
  ; FFMA R56, R39, R40, R56
  %".3096" = load float, ptr %"R39_Float32"
  %".3097" = load float, ptr %"R40_Float32"
  %".3098" = load float, ptr %"R56_Float32"
  %"fmul.170" = fmul float %".3096", %".3097"
  %"fadd.145" = fadd float %"fmul.170", %".3098"
  store float %"fadd.145", ptr %"R56_Float32"
  ; LDG.E.SYS R40, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3101" = load i32, ptr %"R8_Float32_PTR"
  %".3102" = add i32 %".3101", 4
  %"for_LDG.207" = inttoptr i32 %".3102" to ptr
  %".3103" = load float, ptr %"for_LDG.207"
  store float %".3103", ptr %"R40_Float32"
  ; LDG.E.SYS R39, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3106" = load i32, ptr %"R8_Float32_PTR"
  %".3107" = add i32 %".3106", 8
  %"for_LDG.208" = inttoptr i32 %".3107" to ptr
  %".3108" = load float, ptr %"for_LDG.208"
  store float %".3108", ptr %"R39_Float32"
  ; FFMA R57, R53, R52, R57
  %".3111" = load float, ptr %"R53_Float32"
  %".3112" = load float, ptr %"R52_Float32"
  %".3113" = load float, ptr %"R57_Float32"
  %"fmul.171" = fmul float %".3111", %".3112"
  %"fadd.146" = fadd float %"fmul.171", %".3113"
  store float %"fadd.146", ptr %"R57_Float32"
  ; LDG.E.SYS R44, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3116" = load i32, ptr %"R8_Float32_PTR"
  %".3117" = add i32 %".3116", 12
  %"for_LDG.209" = inttoptr i32 %".3117" to ptr
  %".3118" = load float, ptr %"for_LDG.209"
  store float %".3118", ptr %"R44_Float32"
  ; FFMA R59, R52, R55, R56
  %".3121" = load float, ptr %"R52_Float32"
  %".3122" = load float, ptr %"R55_Float32"
  %".3123" = load float, ptr %"R56_Float32"
  %"fmul.172" = fmul float %".3121", %".3122"
  %"fadd.147" = fadd float %"fmul.172", %".3123"
  store float %"fadd.147", ptr %"R59_Float32"
  ; LDG.E.SYS R55, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3126" = load i32, ptr %"R12_Float32_PTR"
  %".3127" = add i32 %".3126", 0
  %"for_LDG.210" = inttoptr i32 %".3127" to ptr
  %".3128" = load float, ptr %"for_LDG.210"
  store float %".3128", ptr %"R55_Float32"
  ; LDG.E.SYS R53, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3131" = load i32, ptr %"R12_Float32_PTR"
  %".3132" = add i32 %".3131", 4
  %"for_LDG.211" = inttoptr i32 %".3132" to ptr
  %".3133" = load float, ptr %"for_LDG.211"
  store float %".3133", ptr %"R53_Float32"
  ; FFMA R43, R43, R50, R57
  %".3136" = load float, ptr %"R43_Float32"
  %".3137" = load float, ptr %"R50_Float32"
  %".3138" = load float, ptr %"R57_Float32"
  %"fmul.173" = fmul float %".3136", %".3137"
  %"fadd.148" = fadd float %"fmul.173", %".3138"
  store float %"fadd.148", ptr %"R43_Float32"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".3141" = load i32, ptr %"R11_Int32"
  %".3142" = load i32, ptr %"R24_Int32"
  %"mul.71" = mul i32 %".3141", %".3142"
  %"add.204" = add i32 %"mul.71", %"Arg_4"
  store i32 %"add.204", ptr %"R8_Int32"
  ; LDG.E.SYS R52, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3145" = load i32, ptr %"R12_Float32_PTR"
  %".3146" = add i32 %".3145", 8
  %"for_LDG.212" = inttoptr i32 %".3146" to ptr
  %".3147" = load float, ptr %"for_LDG.212"
  store float %".3147", ptr %"R52_Float32"
  ; FFMA R51, R50, R51, R59
  %".3150" = load float, ptr %"R50_Float32"
  %".3151" = load float, ptr %"R51_Float32"
  %".3152" = load float, ptr %"R59_Float32"
  %"fmul.174" = fmul float %".3150", %".3151"
  %"fadd.149" = fadd float %"fmul.174", %".3152"
  store float %"fadd.149", ptr %"R51_Float32"
  ; IADD3 R57, R25, 0x8, RZ
  %".3155" = load i32, ptr %"R25_Int32"
  %"add.205" = add i32 %".3155", 8
  %"add.206" = add i32 %"add.205", 0
  store i32 %"add.206", ptr %"R57_Int32"
  ; LDG.E.SYS R59, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3158" = load i32, ptr %"R4_Float32_PTR"
  %".3159" = add i32 %".3158", 12
  %"for_LDG.213" = inttoptr i32 %".3159" to ptr
  %".3160" = load float, ptr %"for_LDG.213"
  store float %".3160", ptr %"R59_Float32"
  ; FFMA R61, R54, R47, R43
  %".3163" = load float, ptr %"R54_Float32"
  %".3164" = load float, ptr %"R47_Float32"
  %".3165" = load float, ptr %"R43_Float32"
  %"fmul.175" = fmul float %".3163", %".3164"
  %"fadd.150" = fadd float %"fmul.175", %".3165"
  store float %"fadd.150", ptr %"R61_Float32"
  ; LDG.E.SYS R50, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3168" = load i32, ptr %"R8_Float32_PTR"
  %".3169" = add i32 %".3168", 0
  %"for_LDG.214" = inttoptr i32 %".3169" to ptr
  %".3170" = load float, ptr %"for_LDG.214"
  store float %".3170", ptr %"R50_Float32"
  ; FFMA R58, R47, R58, R51
  %".3173" = load float, ptr %"R47_Float32"
  %".3174" = load float, ptr %"R58_Float32"
  %".3175" = load float, ptr %"R51_Float32"
  %"fmul.176" = fmul float %".3173", %".3174"
  %"fadd.151" = fadd float %"fmul.176", %".3175"
  store float %"fadd.151", ptr %"R58_Float32"
  ; LDG.E.SYS R43, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3178" = load i32, ptr %"R6_Float32_PTR"
  %".3179" = add i32 %".3178", 8
  %"for_LDG.215" = inttoptr i32 %".3179" to ptr
  %".3180" = load float, ptr %"for_LDG.215"
  store float %".3180", ptr %"R43_Float32"
  ; LDG.E.SYS R47, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3183" = load i32, ptr %"R4_Float32_PTR"
  %".3184" = add i32 %".3183", 4
  %"for_LDG.216" = inttoptr i32 %".3184" to ptr
  %".3185" = load float, ptr %"for_LDG.216"
  store float %".3185", ptr %"R47_Float32"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".3188" = load i32, ptr %"R57_Int32"
  %".3189" = load i32, ptr %"R24_Int32"
  %"mul.72" = mul i32 %".3188", %".3189"
  %"add.207" = add i32 %"mul.72", %"Arg_4"
  store i32 %"add.207", ptr %"R10_Int32"
  ; LDG.E.SYS R51, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3192" = load i32, ptr %"R4_Float32_PTR"
  %".3193" = add i32 %".3192", 8
  %"for_LDG.217" = inttoptr i32 %".3193" to ptr
  %".3194" = load float, ptr %"for_LDG.217"
  store float %".3194", ptr %"R51_Float32"
  ; LDG.E.SYS R57, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3197" = load i32, ptr %"R6_Float32_PTR"
  %".3198" = add i32 %".3197", 12
  %"for_LDG.218" = inttoptr i32 %".3198" to ptr
  %".3199" = load float, ptr %"for_LDG.218"
  store float %".3199", ptr %"R57_Float32"
  ; FFMA R42, R42, R46, R61
  %".3202" = load float, ptr %"R42_Float32"
  %".3203" = load float, ptr %"R46_Float32"
  %".3204" = load float, ptr %"R61_Float32"
  %"fmul.177" = fmul float %".3202", %".3203"
  %"fadd.152" = fadd float %"fmul.177", %".3204"
  store float %"fadd.152", ptr %"R42_Float32"
  ; IADD3 R25, R25, 0xc, RZ
  %".3207" = load i32, ptr %"R25_Int32"
  %"add.208" = add i32 %".3207", 12
  %"add.209" = add i32 %"add.208", 0
  store i32 %"add.209", ptr %"R25_Int32"
  ; LDG.E.SYS R56, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3210" = load i32, ptr %"R12_Float32_PTR"
  %".3211" = add i32 %".3210", 12
  %"for_LDG.219" = inttoptr i32 %".3211" to ptr
  %".3212" = load float, ptr %"for_LDG.219"
  store float %".3212", ptr %"R56_Float32"
  ; FFMA R45, R46, R45, R58
  %".3215" = load float, ptr %"R46_Float32"
  %".3216" = load float, ptr %"R45_Float32"
  %".3217" = load float, ptr %"R58_Float32"
  %"fmul.178" = fmul float %".3215", %".3216"
  %"fadd.153" = fadd float %"fmul.178", %".3217"
  store float %"fadd.153", ptr %"R45_Float32"
  ; LDG.E.SYS R46, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3220" = load i32, ptr %"R10_Float32_PTR"
  %".3221" = add i32 %".3220", 0
  %"for_LDG.220" = inttoptr i32 %".3221" to ptr
  %".3222" = load float, ptr %"for_LDG.220"
  store float %".3222", ptr %"R46_Float32"
  ; LDG.E.SYS R61, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3225" = load i32, ptr %"R8_Float32_PTR"
  %".3226" = add i32 %".3225", 4
  %"for_LDG.221" = inttoptr i32 %".3226" to ptr
  %".3227" = load float, ptr %"for_LDG.221"
  store float %".3227", ptr %"R61_Float32"
  ; IADD3 R13, R35, 0xc, RZ
  %".3230" = load i32, ptr %"R35_Int32"
  %"add.210" = add i32 %".3230", 12
  %"add.211" = add i32 %"add.210", 0
  store i32 %"add.211", ptr %"R13_Int32"
  ; LDG.E.SYS R35, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3233" = load i32, ptr %"R10_Float32_PTR"
  %".3234" = add i32 %".3233", 4
  %"for_LDG.222" = inttoptr i32 %".3234" to ptr
  %".3235" = load float, ptr %"for_LDG.222"
  store float %".3235", ptr %"R35_Float32"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".3238" = load i32, ptr %"R13_Int32"
  %".3239" = load i32, ptr %"R24_Int32"
  %"mul.73" = mul i32 %".3238", %".3239"
  %"add.212" = add i32 %"mul.73", %"Arg_4"
  store i32 %"add.212", ptr %"R12_Int32"
  ; LDG.E.SYS R6, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3242" = load i32, ptr %"R8_Float32_PTR"
  %".3243" = add i32 %".3242", 8
  %"for_LDG.223" = inttoptr i32 %".3243" to ptr
  %".3244" = load float, ptr %"for_LDG.223"
  store float %".3244", ptr %"R6_Float32"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".3247" = load i32, ptr %"R25_Int32"
  %".3248" = load i32, ptr %"R24_Int32"
  %"mul.74" = mul i32 %".3247", %".3248"
  %"add.213" = add i32 %"mul.74", %"Arg_4"
  store i32 %"add.213", ptr %"R24_Int32"
  ; LDG.E.SYS R4, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3251" = load i32, ptr %"R10_Float32_PTR"
  %".3252" = add i32 %".3251", 8
  %"for_LDG.224" = inttoptr i32 %".3252" to ptr
  %".3253" = load float, ptr %"for_LDG.224"
  store float %".3253", ptr %"R4_Float32"
  ; LDG.E.SYS R5, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3256" = load i32, ptr %"R8_Float32_PTR"
  %".3257" = add i32 %".3256", 12
  %"for_LDG.225" = inttoptr i32 %".3257" to ptr
  %".3258" = load float, ptr %"for_LDG.225"
  store float %".3258", ptr %"R5_Float32"
  ; LDG.E.SYS R60, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3261" = load i32, ptr %"R10_Float32_PTR"
  %".3262" = add i32 %".3261", 12
  %"for_LDG.226" = inttoptr i32 %".3262" to ptr
  %".3263" = load float, ptr %"for_LDG.226"
  store float %".3263", ptr %"R60_Float32"
  ; LDG.E.SYS R58, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3266" = load i32, ptr %"R12_Float32_PTR"
  %".3267" = add i32 %".3266", 0
  %"for_LDG.227" = inttoptr i32 %".3267" to ptr
  %".3268" = load float, ptr %"for_LDG.227"
  store float %".3268", ptr %"R58_Float32"
  ; LDG.E.SYS R54, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3271" = load i32, ptr %"R12_Float32_PTR"
  %".3272" = add i32 %".3271", 4
  %"for_LDG.228" = inttoptr i32 %".3272" to ptr
  %".3273" = load float, ptr %"for_LDG.228"
  store float %".3273", ptr %"R54_Float32"
  ; FFMA R10, R37, R34, R42
  %".3276" = load float, ptr %"R37_Float32"
  %".3277" = load float, ptr %"R34_Float32"
  %".3278" = load float, ptr %"R42_Float32"
  %"fmul.179" = fmul float %".3276", %".3277"
  %"fadd.154" = fadd float %"fmul.179", %".3278"
  store float %"fadd.154", ptr %"R10_Float32"
  ; LDG.E.SYS R37, [R24]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3281" = load i32, ptr %"R24_Float32_PTR"
  %".3282" = add i32 %".3281", 0
  %"for_LDG.229" = inttoptr i32 %".3282" to ptr
  %".3283" = load float, ptr %"for_LDG.229"
  store float %".3283", ptr %"R37_Float32"
  ; LDG.E.SYS R42, [R24+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3286" = load i32, ptr %"R24_Float32_PTR"
  %".3287" = add i32 %".3286", 4
  %"for_LDG.230" = inttoptr i32 %".3287" to ptr
  %".3288" = load float, ptr %"for_LDG.230"
  store float %".3288", ptr %"R42_Float32"
  ; LDG.E.SYS R7, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3291" = load i32, ptr %"R12_Float32_PTR"
  %".3292" = add i32 %".3291", 8
  %"for_LDG.231" = inttoptr i32 %".3292" to ptr
  %".3293" = load float, ptr %"for_LDG.231"
  store float %".3293", ptr %"R7_Float32"
  ; LDG.E.SYS R9, [R24+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3296" = load i32, ptr %"R24_Float32_PTR"
  %".3297" = add i32 %".3296", 8
  %"for_LDG.232" = inttoptr i32 %".3297" to ptr
  %".3298" = load float, ptr %"for_LDG.232"
  store float %".3298", ptr %"R9_Float32"
  ; LDG.E.SYS R8, [R24+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3301" = load i32, ptr %"R24_Float32_PTR"
  %".3302" = add i32 %".3301", 12
  %"for_LDG.233" = inttoptr i32 %".3302" to ptr
  %".3303" = load float, ptr %"for_LDG.233"
  store float %".3303", ptr %"R8_Float32"
  ; LDG.E.SYS R13, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3306" = load i32, ptr %"R12_Float32_PTR"
  %".3307" = add i32 %".3306", 12
  %"for_LDG.234" = inttoptr i32 %".3307" to ptr
  %".3308" = load float, ptr %"for_LDG.234"
  store float %".3308", ptr %"R13_Float32"
  ; IADD3 R22, R22, -0x10, RZ
  %".3311" = load i32, ptr %"R22_Int32"
  %"add.214" = add i32 %".3311", -16
  %"add.215" = add i32 %"add.214", 0
  store i32 %"add.215", ptr %"R22_Int32"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".3314" = load i32, ptr %"R22_Int32"
  %".3315" = load i1, ptr %"PT_Bool"
  %"cmp.37" = icmp sgt i32 %".3314", 12
  %".3316" = and i1 %"cmp.37", %".3315"
  ; IADD3 R23, R23, 0x10, RZ
  %".3318" = load i32, ptr %"R23_Int32"
  %"add.216" = add i32 %".3318", 16
  %"add.217" = add i32 %"add.216", 0
  store i32 %"add.217", ptr %"R23_Int32"
  ; FFMA R10, R43, R36, R10
  %".3321" = load float, ptr %"R43_Float32"
  %".3322" = load float, ptr %"R36_Float32"
  %".3323" = load float, ptr %"R10_Float32"
  %"fmul.180" = fmul float %".3321", %".3322"
  %"fadd.155" = fadd float %"fmul.180", %".3323"
  store float %"fadd.155", ptr %"R10_Float32"
  ; FFMA R45, R34, R47, R45
  %".3326" = load float, ptr %"R34_Float32"
  %".3327" = load float, ptr %"R47_Float32"
  %".3328" = load float, ptr %"R45_Float32"
  %"fmul.181" = fmul float %".3326", %".3327"
  %"fadd.156" = fadd float %"fmul.181", %".3328"
  store float %"fadd.156", ptr %"R45_Float32"
  ; FFMA R45, R36, R51, R45
  %".3331" = load float, ptr %"R36_Float32"
  %".3332" = load float, ptr %"R51_Float32"
  %".3333" = load float, ptr %"R45_Float32"
  %"fmul.182" = fmul float %".3331", %".3332"
  %"fadd.157" = fadd float %"fmul.182", %".3333"
  store float %"fadd.157", ptr %"R45_Float32"
  ; FFMA R10, R57, R38, R10
  %".3336" = load float, ptr %"R57_Float32"
  %".3337" = load float, ptr %"R38_Float32"
  %".3338" = load float, ptr %"R10_Float32"
  %"fmul.183" = fmul float %".3336", %".3337"
  %"fadd.158" = fadd float %"fmul.183", %".3338"
  store float %"fadd.158", ptr %"R10_Float32"
  ; FFMA R45, R38, R59, R45
  %".3341" = load float, ptr %"R38_Float32"
  %".3342" = load float, ptr %"R59_Float32"
  %".3343" = load float, ptr %"R45_Float32"
  %"fmul.184" = fmul float %".3341", %".3342"
  %"fadd.159" = fadd float %"fmul.184", %".3343"
  store float %"fadd.159", ptr %"R45_Float32"
  ; FFMA R10, R50, R41, R10
  %".3346" = load float, ptr %"R50_Float32"
  %".3347" = load float, ptr %"R41_Float32"
  %".3348" = load float, ptr %"R10_Float32"
  %"fmul.185" = fmul float %".3346", %".3347"
  %"fadd.160" = fadd float %"fmul.185", %".3348"
  store float %"fadd.160", ptr %"R10_Float32"
  ; FFMA R45, R41, R46, R45
  %".3351" = load float, ptr %"R41_Float32"
  %".3352" = load float, ptr %"R46_Float32"
  %".3353" = load float, ptr %"R45_Float32"
  %"fmul.186" = fmul float %".3351", %".3352"
  %"fadd.161" = fadd float %"fmul.186", %".3353"
  store float %"fadd.161", ptr %"R45_Float32"
  ; FFMA R10, R61, R40, R10
  %".3356" = load float, ptr %"R61_Float32"
  %".3357" = load float, ptr %"R40_Float32"
  %".3358" = load float, ptr %"R10_Float32"
  %"fmul.187" = fmul float %".3356", %".3357"
  %"fadd.162" = fadd float %"fmul.187", %".3358"
  store float %"fadd.162", ptr %"R10_Float32"
  ; FFMA R35, R40, R35, R45
  %".3361" = load float, ptr %"R40_Float32"
  %".3362" = load float, ptr %"R35_Float32"
  %".3363" = load float, ptr %"R45_Float32"
  %"fmul.188" = fmul float %".3361", %".3362"
  %"fadd.163" = fadd float %"fmul.188", %".3363"
  store float %"fadd.163", ptr %"R35_Float32"
  ; FFMA R6, R6, R39, R10
  %".3366" = load float, ptr %"R6_Float32"
  %".3367" = load float, ptr %"R39_Float32"
  %".3368" = load float, ptr %"R10_Float32"
  %"fmul.189" = fmul float %".3366", %".3367"
  %"fadd.164" = fadd float %"fmul.189", %".3368"
  store float %"fadd.164", ptr %"R6_Float32"
  ; FFMA R35, R39, R4, R35
  %".3371" = load float, ptr %"R39_Float32"
  %".3372" = load float, ptr %"R4_Float32"
  %".3373" = load float, ptr %"R35_Float32"
  %"fmul.190" = fmul float %".3371", %".3372"
  %"fadd.165" = fadd float %"fmul.190", %".3373"
  store float %"fadd.165", ptr %"R35_Float32"
  ; FFMA R5, R5, R44, R6
  %".3376" = load float, ptr %"R5_Float32"
  %".3377" = load float, ptr %"R44_Float32"
  %".3378" = load float, ptr %"R6_Float32"
  %"fmul.191" = fmul float %".3376", %".3377"
  %"fadd.166" = fadd float %"fmul.191", %".3378"
  store float %"fadd.166", ptr %"R5_Float32"
  ; FFMA R60, R44, R60, R35
  %".3381" = load float, ptr %"R44_Float32"
  %".3382" = load float, ptr %"R60_Float32"
  %".3383" = load float, ptr %"R35_Float32"
  %"fmul.192" = fmul float %".3381", %".3382"
  %"fadd.167" = fadd float %"fmul.192", %".3383"
  store float %"fadd.167", ptr %"R60_Float32"
  ; FFMA R5, R58, R55, R5
  %".3386" = load float, ptr %"R58_Float32"
  %".3387" = load float, ptr %"R55_Float32"
  %".3388" = load float, ptr %"R5_Float32"
  %"fmul.193" = fmul float %".3386", %".3387"
  %"fadd.168" = fadd float %"fmul.193", %".3388"
  store float %"fadd.168", ptr %"R5_Float32"
  ; FFMA R5, R54, R53, R5
  %".3391" = load float, ptr %"R54_Float32"
  %".3392" = load float, ptr %"R53_Float32"
  %".3393" = load float, ptr %"R5_Float32"
  %"fmul.194" = fmul float %".3391", %".3392"
  %"fadd.169" = fadd float %"fmul.194", %".3393"
  store float %"fadd.169", ptr %"R5_Float32"
  ; FFMA R37, R55, R37, R60
  %".3396" = load float, ptr %"R55_Float32"
  %".3397" = load float, ptr %"R37_Float32"
  %".3398" = load float, ptr %"R60_Float32"
  %"fmul.195" = fmul float %".3396", %".3397"
  %"fadd.170" = fadd float %"fmul.195", %".3398"
  store float %"fadd.170", ptr %"R37_Float32"
  ; FFMA R37, R53, R42, R37
  %".3401" = load float, ptr %"R53_Float32"
  %".3402" = load float, ptr %"R42_Float32"
  %".3403" = load float, ptr %"R37_Float32"
  %"fmul.196" = fmul float %".3401", %".3402"
  %"fadd.171" = fadd float %"fmul.196", %".3403"
  store float %"fadd.171", ptr %"R37_Float32"
  ; FFMA R5, R7, R52, R5
  %".3406" = load float, ptr %"R7_Float32"
  %".3407" = load float, ptr %"R52_Float32"
  %".3408" = load float, ptr %"R5_Float32"
  %"fmul.197" = fmul float %".3406", %".3407"
  %"fadd.172" = fadd float %"fmul.197", %".3408"
  store float %"fadd.172", ptr %"R5_Float32"
  ; FFMA R9, R52, R9, R37
  %".3411" = load float, ptr %"R52_Float32"
  %".3412" = load float, ptr %"R9_Float32"
  %".3413" = load float, ptr %"R37_Float32"
  %"fmul.198" = fmul float %".3411", %".3412"
  %"fadd.173" = fadd float %"fmul.198", %".3413"
  store float %"fadd.173", ptr %"R9_Float32"
  ; FFMA R44, R13, R56, R5
  %".3416" = load float, ptr %"R13_Float32"
  %".3417" = load float, ptr %"R56_Float32"
  %".3418" = load float, ptr %"R5_Float32"
  %"fmul.199" = fmul float %".3416", %".3417"
  %"fadd.174" = fadd float %"fmul.199", %".3418"
  store float %"fadd.174", ptr %"R44_Float32"
  ; FFMA R56, R56, R8, R9
  %".3421" = load float, ptr %"R56_Float32"
  %".3422" = load float, ptr %"R8_Float32"
  %".3423" = load float, ptr %"R9_Float32"
  %"fmul.200" = fmul float %".3421", %".3422"
  %"fadd.175" = fadd float %"fmul.200", %".3423"
  store float %"fadd.175", ptr %"R56_Float32"
  ; @P1 BRA `(.L_x_30)
  %".3426" = load i1, ptr %"P1_Bool"
  %".3427" = icmp ne i1 %".3426", 1
  br i1 %".3427", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".3430" = load i32, ptr %"R22_Int32"
  %".3431" = load i1, ptr %"PT_Bool"
  %"cmp.38" = icmp sgt i32 %".3430", 4
  %".3432" = and i1 %"cmp.38", %".3431"
  ; @!P1 BRA `(.L_x_31)
  %".3434" = load i1, ptr %"P1_Bool"
  %".3435" = icmp eq i1 %".3434", 1
  br i1 %".3435", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".3438" = load i32, ptr %"R0_Int32"
  %".3439" = load i32, ptr %"R23_Int32"
  %"add.218" = add i32 %".3438", %".3439"
  %"add.219" = add i32 %"add.218", 0
  store i32 %"add.219", ptr %"R5_Int32"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25_Int32"
  ; LEA R13, R2.reuse, R5, 0x2
  %".3444" = load i32, ptr %"R2_Int32"
  %".3445" = load i32, ptr %"R5_Int32"
  %"shl.19" = shl i32 %".3444", 2
  %"add.220" = add i32 %"shl.19", %".3445"
  store i32 %"add.220", ptr %"R13_Int32"
  ; IMAD R12, R2, 0x3, R5
  %".3448" = load i32, ptr %"R2_Int32"
  %".3449" = load i32, ptr %"R5_Int32"
  %"mul.75" = mul i32 %".3448", 3
  %"add.221" = add i32 %"mul.75", %".3449"
  store i32 %"add.221", ptr %"R12_Int32"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".3452" = load i32, ptr %"R23_Int32"
  %"add.222" = add i32 %".3452", 4
  %"add.223" = add i32 %"add.222", 0
  store i32 %"add.223", ptr %"R6_Int32"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".3455" = load i32, ptr %"R23_Int32"
  %".3456" = load i32, ptr %"R25_Int32"
  %"mul.76" = mul i32 %".3455", %".3456"
  %"add.224" = add i32 %"mul.76", %"Arg_3"
  store i32 %"add.224", ptr %"R8_Int32"
  ; IADD3 R24, R13, 0x4, RZ
  %".3459" = load i32, ptr %"R13_Int32"
  %"add.225" = add i32 %".3459", 4
  %"add.226" = add i32 %"add.225", 0
  store i32 %"add.226", ptr %"R24_Int32"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".3462" = load i32, ptr %"R12_Int32"
  %".3463" = load i32, ptr %"R25_Int32"
  %"mul.77" = mul i32 %".3462", %".3463"
  %"add.227" = add i32 %"mul.77", %"Arg_4"
  store i32 %"add.227", ptr %"R4_Int32"
  ; IADD3 R12, R12, 0x4, RZ
  %".3466" = load i32, ptr %"R12_Int32"
  %"add.228" = add i32 %".3466", 4
  %"add.229" = add i32 %"add.228", 0
  store i32 %"add.229", ptr %"R12_Int32"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".3469" = load i32, ptr %"R13_Int32"
  %".3470" = load i32, ptr %"R25_Int32"
  %"mul.78" = mul i32 %".3469", %".3470"
  %"add.230" = add i32 %"mul.78", %"Arg_4"
  store i32 %"add.230", ptr %"R10_Int32"
  ; LDG.E.SYS R43, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3473" = load i32, ptr %"R8_Float32_PTR"
  %".3474" = add i32 %".3473", 0
  %"for_LDG.235" = inttoptr i32 %".3474" to ptr
  %".3475" = load float, ptr %"for_LDG.235"
  store float %".3475", ptr %"R43_Float32"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".3478" = load i32, ptr %"R6_Int32"
  %".3479" = load i32, ptr %"R25_Int32"
  %"mul.79" = mul i32 %".3478", %".3479"
  %"add.231" = add i32 %"mul.79", %"Arg_3"
  store i32 %"add.231", ptr %"R6_Int32"
  ; LDG.E.SYS R52, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3482" = load i32, ptr %"R4_Float32_PTR"
  %".3483" = add i32 %".3482", 0
  %"for_LDG.236" = inttoptr i32 %".3483" to ptr
  %".3484" = load float, ptr %"for_LDG.236"
  store float %".3484", ptr %"R52_Float32"
  ; LDG.E.SYS R38, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3487" = load i32, ptr %"R10_Float32_PTR"
  %".3488" = add i32 %".3487", 0
  %"for_LDG.237" = inttoptr i32 %".3488" to ptr
  %".3489" = load float, ptr %"for_LDG.237"
  store float %".3489", ptr %"R38_Float32"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".3492" = load i32, ptr %"R12_Int32"
  %".3493" = load i32, ptr %"R25_Int32"
  %"mul.80" = mul i32 %".3492", %".3493"
  %"add.232" = add i32 %"mul.80", %"Arg_4"
  store i32 %"add.232", ptr %"R12_Int32"
  ; LDG.E.SYS R36, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3496" = load i32, ptr %"R8_Float32_PTR"
  %".3497" = add i32 %".3496", 4
  %"for_LDG.238" = inttoptr i32 %".3497" to ptr
  %".3498" = load float, ptr %"for_LDG.238"
  store float %".3498", ptr %"R36_Float32"
  ; LDG.E.SYS R41, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3501" = load i32, ptr %"R4_Float32_PTR"
  %".3502" = add i32 %".3501", 4
  %"for_LDG.239" = inttoptr i32 %".3502" to ptr
  %".3503" = load float, ptr %"for_LDG.239"
  store float %".3503", ptr %"R41_Float32"
  ; LDG.E.SYS R39, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3506" = load i32, ptr %"R10_Float32_PTR"
  %".3507" = add i32 %".3506", 4
  %"for_LDG.240" = inttoptr i32 %".3507" to ptr
  %".3508" = load float, ptr %"for_LDG.240"
  store float %".3508", ptr %"R39_Float32"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".3511" = load i32, ptr %"R24_Int32"
  %".3512" = load i32, ptr %"R25_Int32"
  %"mul.81" = mul i32 %".3511", %".3512"
  %"add.233" = add i32 %"mul.81", %"Arg_4"
  store i32 %"add.233", ptr %"R24_Int32"
  ; LDG.E.SYS R34, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3515" = load i32, ptr %"R8_Float32_PTR"
  %".3516" = add i32 %".3515", 8
  %"for_LDG.241" = inttoptr i32 %".3516" to ptr
  %".3517" = load float, ptr %"for_LDG.241"
  store float %".3517", ptr %"R34_Float32"
  ; LDG.E.SYS R37, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3520" = load i32, ptr %"R4_Float32_PTR"
  %".3521" = add i32 %".3520", 8
  %"for_LDG.242" = inttoptr i32 %".3521" to ptr
  %".3522" = load float, ptr %"for_LDG.242"
  store float %".3522", ptr %"R37_Float32"
  ; LDG.E.SYS R35, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3525" = load i32, ptr %"R10_Float32_PTR"
  %".3526" = add i32 %".3525", 8
  %"for_LDG.243" = inttoptr i32 %".3526" to ptr
  %".3527" = load float, ptr %"for_LDG.243"
  store float %".3527", ptr %"R35_Float32"
  ; LDG.E.SYS R40, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3530" = load i32, ptr %"R8_Float32_PTR"
  %".3531" = add i32 %".3530", 12
  %"for_LDG.244" = inttoptr i32 %".3531" to ptr
  %".3532" = load float, ptr %"for_LDG.244"
  store float %".3532", ptr %"R40_Float32"
  ; LDG.E.SYS R45, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3535" = load i32, ptr %"R4_Float32_PTR"
  %".3536" = add i32 %".3535", 12
  %"for_LDG.245" = inttoptr i32 %".3536" to ptr
  %".3537" = load float, ptr %"for_LDG.245"
  store float %".3537", ptr %"R45_Float32"
  ; LDG.E.SYS R59, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".3540" = load i32, ptr %"R10_Float32_PTR"
  %".3541" = add i32 %".3540", 12
  %"for_LDG.246" = inttoptr i32 %".3541" to ptr
  %".3542" = load float, ptr %"for_LDG.246"
  store float %".3542", ptr %"R59_Float32"
  ; LDG.E.SYS R50, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3545" = load i32, ptr %"R6_Float32_PTR"
  %".3546" = add i32 %".3545", 0
  %"for_LDG.247" = inttoptr i32 %".3546" to ptr
  %".3547" = load float, ptr %"for_LDG.247"
  store float %".3547", ptr %"R50_Float32"
  ; LDG.E.SYS R57, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3550" = load i32, ptr %"R12_Float32_PTR"
  %".3551" = add i32 %".3550", 0
  %"for_LDG.248" = inttoptr i32 %".3551" to ptr
  %".3552" = load float, ptr %"for_LDG.248"
  store float %".3552", ptr %"R57_Float32"
  ; LDG.E.SYS R55, [R24]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3555" = load i32, ptr %"R24_Float32_PTR"
  %".3556" = add i32 %".3555", 0
  %"for_LDG.249" = inttoptr i32 %".3556" to ptr
  %".3557" = load float, ptr %"for_LDG.249"
  store float %".3557", ptr %"R55_Float32"
  ; LDG.E.SYS R46, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3560" = load i32, ptr %"R6_Float32_PTR"
  %".3561" = add i32 %".3560", 4
  %"for_LDG.250" = inttoptr i32 %".3561" to ptr
  %".3562" = load float, ptr %"for_LDG.250"
  store float %".3562", ptr %"R46_Float32"
  ; LDG.E.SYS R53, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3565" = load i32, ptr %"R12_Float32_PTR"
  %".3566" = add i32 %".3565", 4
  %"for_LDG.251" = inttoptr i32 %".3566" to ptr
  %".3567" = load float, ptr %"for_LDG.251"
  store float %".3567", ptr %"R53_Float32"
  ; LDG.E.SYS R51, [R24+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3570" = load i32, ptr %"R24_Float32_PTR"
  %".3571" = add i32 %".3570", 4
  %"for_LDG.252" = inttoptr i32 %".3571" to ptr
  %".3572" = load float, ptr %"for_LDG.252"
  store float %".3572", ptr %"R51_Float32"
  ; LDG.E.SYS R42, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3575" = load i32, ptr %"R6_Float32_PTR"
  %".3576" = add i32 %".3575", 8
  %"for_LDG.253" = inttoptr i32 %".3576" to ptr
  %".3577" = load float, ptr %"for_LDG.253"
  store float %".3577", ptr %"R42_Float32"
  ; LDG.E.SYS R47, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3580" = load i32, ptr %"R12_Float32_PTR"
  %".3581" = add i32 %".3580", 8
  %"for_LDG.254" = inttoptr i32 %".3581" to ptr
  %".3582" = load float, ptr %"for_LDG.254"
  store float %".3582", ptr %"R47_Float32"
  ; LDG.E.SYS R9, [R24+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3585" = load i32, ptr %"R24_Float32_PTR"
  %".3586" = add i32 %".3585", 8
  %"for_LDG.255" = inttoptr i32 %".3586" to ptr
  %".3587" = load float, ptr %"for_LDG.255"
  store float %".3587", ptr %"R9_Float32"
  ; LDG.E.SYS R4, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3590" = load i32, ptr %"R6_Float32_PTR"
  %".3591" = add i32 %".3590", 12
  %"for_LDG.256" = inttoptr i32 %".3591" to ptr
  %".3592" = load float, ptr %"for_LDG.256"
  store float %".3592", ptr %"R4_Float32"
  ; LDG.E.SYS R5, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".3595" = load i32, ptr %"R12_Float32_PTR"
  %".3596" = add i32 %".3595", 12
  %"for_LDG.257" = inttoptr i32 %".3596" to ptr
  %".3597" = load float, ptr %"for_LDG.257"
  store float %".3597", ptr %"R5_Float32"
  ; LDG.E.SYS R11, [R24+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Float32_PTR", ptr %"R24_Int32", i32 4, i1 0)
  %".3600" = load i32, ptr %"R24_Float32_PTR"
  %".3601" = add i32 %".3600", 12
  %"for_LDG.258" = inttoptr i32 %".3601" to ptr
  %".3602" = load float, ptr %"for_LDG.258"
  store float %".3602", ptr %"R11_Float32"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3605" = xor i1 1, 1
  %".3606" = and i1 %".3605", 1
  %".3607" = and i1 %".3606", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".3609" = load i32, ptr %"R22_Int32"
  %"add.234" = add i32 %".3609", -8
  %"add.235" = add i32 %"add.234", 0
  store i32 %"add.235", ptr %"R22_Int32"
  ; IADD3 R23, R23, 0x8, RZ
  %".3612" = load i32, ptr %"R23_Int32"
  %"add.236" = add i32 %".3612", 8
  %"add.237" = add i32 %"add.236", 0
  store i32 %"add.237", ptr %"R23_Int32"
  ; FFMA R52, R52, R43, R44
  %".3615" = load float, ptr %"R52_Float32"
  %".3616" = load float, ptr %"R43_Float32"
  %".3617" = load float, ptr %"R44_Float32"
  %"fmul.201" = fmul float %".3615", %".3616"
  %"fadd.176" = fadd float %"fmul.201", %".3617"
  store float %"fadd.176", ptr %"R52_Float32"
  ; FFMA R38, R43, R38, R56
  %".3620" = load float, ptr %"R43_Float32"
  %".3621" = load float, ptr %"R38_Float32"
  %".3622" = load float, ptr %"R56_Float32"
  %"fmul.202" = fmul float %".3620", %".3621"
  %"fadd.177" = fadd float %"fmul.202", %".3622"
  store float %"fadd.177", ptr %"R38_Float32"
  ; FFMA R41, R41, R36, R52
  %".3625" = load float, ptr %"R41_Float32"
  %".3626" = load float, ptr %"R36_Float32"
  %".3627" = load float, ptr %"R52_Float32"
  %"fmul.203" = fmul float %".3625", %".3626"
  %"fadd.178" = fadd float %"fmul.203", %".3627"
  store float %"fadd.178", ptr %"R41_Float32"
  ; FFMA R38, R36, R39, R38
  %".3630" = load float, ptr %"R36_Float32"
  %".3631" = load float, ptr %"R39_Float32"
  %".3632" = load float, ptr %"R38_Float32"
  %"fmul.204" = fmul float %".3630", %".3631"
  %"fadd.179" = fadd float %"fmul.204", %".3632"
  store float %"fadd.179", ptr %"R38_Float32"
  ; FFMA R37, R37, R34, R41
  %".3635" = load float, ptr %"R37_Float32"
  %".3636" = load float, ptr %"R34_Float32"
  %".3637" = load float, ptr %"R41_Float32"
  %"fmul.205" = fmul float %".3635", %".3636"
  %"fadd.180" = fadd float %"fmul.205", %".3637"
  store float %"fadd.180", ptr %"R37_Float32"
  ; FFMA R35, R34, R35, R38
  %".3640" = load float, ptr %"R34_Float32"
  %".3641" = load float, ptr %"R35_Float32"
  %".3642" = load float, ptr %"R38_Float32"
  %"fmul.206" = fmul float %".3640", %".3641"
  %"fadd.181" = fadd float %"fmul.206", %".3642"
  store float %"fadd.181", ptr %"R35_Float32"
  ; FFMA R37, R45, R40, R37
  %".3645" = load float, ptr %"R45_Float32"
  %".3646" = load float, ptr %"R40_Float32"
  %".3647" = load float, ptr %"R37_Float32"
  %"fmul.207" = fmul float %".3645", %".3646"
  %"fadd.182" = fadd float %"fmul.207", %".3647"
  store float %"fadd.182", ptr %"R37_Float32"
  ; FFMA R35, R40, R59, R35
  %".3650" = load float, ptr %"R40_Float32"
  %".3651" = load float, ptr %"R59_Float32"
  %".3652" = load float, ptr %"R35_Float32"
  %"fmul.208" = fmul float %".3650", %".3651"
  %"fadd.183" = fadd float %"fmul.208", %".3652"
  store float %"fadd.183", ptr %"R35_Float32"
  ; FFMA R37, R57, R50, R37
  %".3655" = load float, ptr %"R57_Float32"
  %".3656" = load float, ptr %"R50_Float32"
  %".3657" = load float, ptr %"R37_Float32"
  %"fmul.209" = fmul float %".3655", %".3656"
  %"fadd.184" = fadd float %"fmul.209", %".3657"
  store float %"fadd.184", ptr %"R37_Float32"
  ; FFMA R35, R50, R55, R35
  %".3660" = load float, ptr %"R50_Float32"
  %".3661" = load float, ptr %"R55_Float32"
  %".3662" = load float, ptr %"R35_Float32"
  %"fmul.210" = fmul float %".3660", %".3661"
  %"fadd.185" = fadd float %"fmul.210", %".3662"
  store float %"fadd.185", ptr %"R35_Float32"
  ; FFMA R37, R53, R46, R37
  %".3665" = load float, ptr %"R53_Float32"
  %".3666" = load float, ptr %"R46_Float32"
  %".3667" = load float, ptr %"R37_Float32"
  %"fmul.211" = fmul float %".3665", %".3666"
  %"fadd.186" = fadd float %"fmul.211", %".3667"
  store float %"fadd.186", ptr %"R37_Float32"
  ; FFMA R35, R46, R51, R35
  %".3670" = load float, ptr %"R46_Float32"
  %".3671" = load float, ptr %"R51_Float32"
  %".3672" = load float, ptr %"R35_Float32"
  %"fmul.212" = fmul float %".3670", %".3671"
  %"fadd.187" = fadd float %"fmul.212", %".3672"
  store float %"fadd.187", ptr %"R35_Float32"
  ; FFMA R37, R47, R42, R37
  %".3675" = load float, ptr %"R47_Float32"
  %".3676" = load float, ptr %"R42_Float32"
  %".3677" = load float, ptr %"R37_Float32"
  %"fmul.213" = fmul float %".3675", %".3676"
  %"fadd.188" = fadd float %"fmul.213", %".3677"
  store float %"fadd.188", ptr %"R37_Float32"
  ; FFMA R9, R42, R9, R35
  %".3680" = load float, ptr %"R42_Float32"
  %".3681" = load float, ptr %"R9_Float32"
  %".3682" = load float, ptr %"R35_Float32"
  %"fmul.214" = fmul float %".3680", %".3681"
  %"fadd.189" = fadd float %"fmul.214", %".3682"
  store float %"fadd.189", ptr %"R9_Float32"
  ; FFMA R44, R5, R4, R37
  %".3685" = load float, ptr %"R5_Float32"
  %".3686" = load float, ptr %"R4_Float32"
  %".3687" = load float, ptr %"R37_Float32"
  %"fmul.215" = fmul float %".3685", %".3686"
  %"fadd.190" = fadd float %"fmul.215", %".3687"
  store float %"fadd.190", ptr %"R44_Float32"
  ; FFMA R56, R4, R11, R9
  %".3690" = load float, ptr %"R4_Float32"
  %".3691" = load float, ptr %"R11_Float32"
  %".3692" = load float, ptr %"R9_Float32"
  %"fmul.216" = fmul float %".3690", %".3691"
  %"fadd.191" = fadd float %"fmul.216", %".3692"
  store float %"fadd.191", ptr %"R56_Float32"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".3695" = load i32, ptr %"R22_Int32"
  %".3696" = load i1, ptr %"PT_Bool"
  %"cmp.39" = icmp ne i32 %".3695", 0
  %".3697" = or i1 %"cmp.39", %".3696"
  ; @!P0 BRA `(.L_x_27)
  %".3699" = load i1, ptr %"P0_Bool"
  %".3700" = icmp eq i1 %".3699", 1
  br i1 %".3700", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".3703" = load i32, ptr %"R0_Int32"
  %".3704" = load i32, ptr %"R23_Int32"
  %"add.238" = add i32 %".3703", %".3704"
  %"add.239" = add i32 %"add.238", 0
  store i32 %"add.239", ptr %"R5_Int32"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6_Int32"
  ; LEA R11, R2.reuse, R5, 0x2
  %".3709" = load i32, ptr %"R2_Int32"
  %".3710" = load i32, ptr %"R5_Int32"
  %"shl.20" = shl i32 %".3709", 2
  %"add.240" = add i32 %"shl.20", %".3710"
  store i32 %"add.240", ptr %"R11_Int32"
  ; IMAD R7, R2, 0x3, R5
  %".3713" = load i32, ptr %"R2_Int32"
  %".3714" = load i32, ptr %"R5_Int32"
  %"mul.82" = mul i32 %".3713", 3
  %"add.241" = add i32 %"mul.82", %".3714"
  store i32 %"add.241", ptr %"R7_Int32"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".3717" = load i32, ptr %"R23_Int32"
  %".3718" = load i32, ptr %"R6_Int32"
  %"mul.83" = mul i32 %".3717", %".3718"
  %"add.242" = add i32 %"mul.83", %"Arg_3"
  store i32 %"add.242", ptr %"R8_Int32"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".3721" = load i32, ptr %"R7_Int32"
  %".3722" = load i32, ptr %"R6_Int32"
  %"mul.84" = mul i32 %".3721", %".3722"
  %"add.243" = add i32 %"mul.84", %"Arg_4"
  store i32 %"add.243", ptr %"R4_Int32"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".3725" = load i32, ptr %"R11_Int32"
  %".3726" = load i32, ptr %"R6_Int32"
  %"mul.85" = mul i32 %".3725", %".3726"
  %"add.244" = add i32 %"mul.85", %"Arg_4"
  store i32 %"add.244", ptr %"R6_Int32"
  ; LDG.E.SYS R13, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3729" = load i32, ptr %"R8_Float32_PTR"
  %".3730" = add i32 %".3729", 0
  %"for_LDG.259" = inttoptr i32 %".3730" to ptr
  %".3731" = load float, ptr %"for_LDG.259"
  store float %".3731", ptr %"R13_Float32"
  ; LDG.E.SYS R11, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3734" = load i32, ptr %"R4_Float32_PTR"
  %".3735" = add i32 %".3734", 0
  %"for_LDG.260" = inttoptr i32 %".3735" to ptr
  %".3736" = load float, ptr %"for_LDG.260"
  store float %".3736", ptr %"R11_Float32"
  ; LDG.E.SYS R10, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3739" = load i32, ptr %"R6_Float32_PTR"
  %".3740" = add i32 %".3739", 0
  %"for_LDG.261" = inttoptr i32 %".3740" to ptr
  %".3741" = load float, ptr %"for_LDG.261"
  store float %".3741", ptr %"R10_Float32"
  ; LDG.E.SYS R25, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3744" = load i32, ptr %"R8_Float32_PTR"
  %".3745" = add i32 %".3744", 4
  %"for_LDG.262" = inttoptr i32 %".3745" to ptr
  %".3746" = load float, ptr %"for_LDG.262"
  store float %".3746", ptr %"R25_Float32"
  ; LDG.E.SYS R12, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3749" = load i32, ptr %"R4_Float32_PTR"
  %".3750" = add i32 %".3749", 4
  %"for_LDG.263" = inttoptr i32 %".3750" to ptr
  %".3751" = load float, ptr %"for_LDG.263"
  store float %".3751", ptr %"R12_Float32"
  ; LDG.E.SYS R24, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3754" = load i32, ptr %"R6_Float32_PTR"
  %".3755" = add i32 %".3754", 4
  %"for_LDG.264" = inttoptr i32 %".3755" to ptr
  %".3756" = load float, ptr %"for_LDG.264"
  store float %".3756", ptr %"R24_Float32"
  ; LDG.E.SYS R35, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3759" = load i32, ptr %"R8_Float32_PTR"
  %".3760" = add i32 %".3759", 8
  %"for_LDG.265" = inttoptr i32 %".3760" to ptr
  %".3761" = load float, ptr %"for_LDG.265"
  store float %".3761", ptr %"R35_Float32"
  ; LDG.E.SYS R34, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3764" = load i32, ptr %"R4_Float32_PTR"
  %".3765" = add i32 %".3764", 8
  %"for_LDG.266" = inttoptr i32 %".3765" to ptr
  %".3766" = load float, ptr %"for_LDG.266"
  store float %".3766", ptr %"R34_Float32"
  ; LDG.E.SYS R36, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3769" = load i32, ptr %"R6_Float32_PTR"
  %".3770" = add i32 %".3769", 8
  %"for_LDG.267" = inttoptr i32 %".3770" to ptr
  %".3771" = load float, ptr %"for_LDG.267"
  store float %".3771", ptr %"R36_Float32"
  ; LDG.E.SYS R37, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3774" = load i32, ptr %"R8_Float32_PTR"
  %".3775" = add i32 %".3774", 12
  %"for_LDG.268" = inttoptr i32 %".3775" to ptr
  %".3776" = load float, ptr %"for_LDG.268"
  store float %".3776", ptr %"R37_Float32"
  ; LDG.E.SYS R38, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3779" = load i32, ptr %"R4_Float32_PTR"
  %".3780" = add i32 %".3779", 12
  %"for_LDG.269" = inttoptr i32 %".3780" to ptr
  %".3781" = load float, ptr %"for_LDG.269"
  store float %".3781", ptr %"R38_Float32"
  ; LDG.E.SYS R39, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3784" = load i32, ptr %"R6_Float32_PTR"
  %".3785" = add i32 %".3784", 12
  %"for_LDG.270" = inttoptr i32 %".3785" to ptr
  %".3786" = load float, ptr %"for_LDG.270"
  store float %".3786", ptr %"R39_Float32"
  ; IADD3 R22, R22, -0x4, RZ
  %".3789" = load i32, ptr %"R22_Int32"
  %"add.245" = add i32 %".3789", -4
  %"add.246" = add i32 %"add.245", 0
  store i32 %"add.246", ptr %"R22_Int32"
  ; IADD3 R23, R23, 0x4, RZ
  %".3792" = load i32, ptr %"R23_Int32"
  %"add.247" = add i32 %".3792", 4
  %"add.248" = add i32 %"add.247", 0
  store i32 %"add.248", ptr %"R23_Int32"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".3795" = load i32, ptr %"R22_Int32"
  %".3796" = load i1, ptr %"PT_Bool"
  %"cmp.40" = icmp ne i32 %".3795", 0
  %".3797" = and i1 %"cmp.40", %".3796"
  ; FFMA R11, R11, R13, R44
  %".3799" = load float, ptr %"R11_Float32"
  %".3800" = load float, ptr %"R13_Float32"
  %".3801" = load float, ptr %"R44_Float32"
  %"fmul.217" = fmul float %".3799", %".3800"
  %"fadd.192" = fadd float %"fmul.217", %".3801"
  store float %"fadd.192", ptr %"R11_Float32"
  ; FFMA R10, R13, R10, R56
  %".3804" = load float, ptr %"R13_Float32"
  %".3805" = load float, ptr %"R10_Float32"
  %".3806" = load float, ptr %"R56_Float32"
  %"fmul.218" = fmul float %".3804", %".3805"
  %"fadd.193" = fadd float %"fmul.218", %".3806"
  store float %"fadd.193", ptr %"R10_Float32"
  ; FFMA R11, R12, R25, R11
  %".3809" = load float, ptr %"R12_Float32"
  %".3810" = load float, ptr %"R25_Float32"
  %".3811" = load float, ptr %"R11_Float32"
  %"fmul.219" = fmul float %".3809", %".3810"
  %"fadd.194" = fadd float %"fmul.219", %".3811"
  store float %"fadd.194", ptr %"R11_Float32"
  ; FFMA R10, R25, R24, R10
  %".3814" = load float, ptr %"R25_Float32"
  %".3815" = load float, ptr %"R24_Float32"
  %".3816" = load float, ptr %"R10_Float32"
  %"fmul.220" = fmul float %".3814", %".3815"
  %"fadd.195" = fadd float %"fmul.220", %".3816"
  store float %"fadd.195", ptr %"R10_Float32"
  ; FFMA R11, R34, R35, R11
  %".3819" = load float, ptr %"R34_Float32"
  %".3820" = load float, ptr %"R35_Float32"
  %".3821" = load float, ptr %"R11_Float32"
  %"fmul.221" = fmul float %".3819", %".3820"
  %"fadd.196" = fadd float %"fmul.221", %".3821"
  store float %"fadd.196", ptr %"R11_Float32"
  ; FFMA R10, R35, R36, R10
  %".3824" = load float, ptr %"R35_Float32"
  %".3825" = load float, ptr %"R36_Float32"
  %".3826" = load float, ptr %"R10_Float32"
  %"fmul.222" = fmul float %".3824", %".3825"
  %"fadd.197" = fadd float %"fmul.222", %".3826"
  store float %"fadd.197", ptr %"R10_Float32"
  ; FFMA R44, R38, R37, R11
  %".3829" = load float, ptr %"R38_Float32"
  %".3830" = load float, ptr %"R37_Float32"
  %".3831" = load float, ptr %"R11_Float32"
  %"fmul.223" = fmul float %".3829", %".3830"
  %"fadd.198" = fadd float %"fmul.223", %".3831"
  store float %"fadd.198", ptr %"R44_Float32"
  ; FFMA R56, R37, R39, R10
  %".3834" = load float, ptr %"R37_Float32"
  %".3835" = load float, ptr %"R39_Float32"
  %".3836" = load float, ptr %"R10_Float32"
  %"fmul.224" = fmul float %".3834", %".3835"
  %"fadd.199" = fadd float %"fmul.224", %".3836"
  store float %"fadd.199", ptr %"R56_Float32"
  ; @P0 BRA `(.L_x_28)
  %".3839" = load i1, ptr %"P0_Bool"
  %".3840" = icmp ne i1 %".3839", 1
  br i1 %".3840", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".3843" = load i32, ptr %"R48_Int32"
  %".3844" = load i1, ptr %"PT_Bool"
  %"cmp.41" = icmp ne i32 %".3843", 0
  %".3845" = and i1 %"cmp.41", %".3844"
  ; @!P0 BRA `(.L_x_26)
  %".3847" = load i1, ptr %"P0_Bool"
  %".3848" = icmp eq i1 %".3847", 1
  br i1 %".3848", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".3851" = load i32, ptr %"R0_Int32"
  %".3852" = load i32, ptr %"R23_Int32"
  %"add.249" = add i32 %".3851", %".3852"
  %"add.250" = add i32 %"add.249", 0
  store i32 %"add.250", ptr %"R5_Int32"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9_Int32"
  ; LEA R8, R2.reuse, R5, 0x2
  %".3857" = load i32, ptr %"R2_Int32"
  %".3858" = load i32, ptr %"R5_Int32"
  %"shl.21" = shl i32 %".3857", 2
  %"add.251" = add i32 %"shl.21", %".3858"
  store i32 %"add.251", ptr %"R8_Int32"
  ; IMAD R6, R2, 0x3, R5
  %".3861" = load i32, ptr %"R2_Int32"
  %".3862" = load i32, ptr %"R5_Int32"
  %"mul.86" = mul i32 %".3861", 3
  %"add.252" = add i32 %"mul.86", %".3862"
  store i32 %"add.252", ptr %"R6_Int32"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".3865" = load i32, ptr %"R23_Int32"
  %".3866" = load i32, ptr %"R9_Int32"
  %"mul.87" = mul i32 %".3865", %".3866"
  %"add.253" = add i32 %"mul.87", %"Arg_3"
  store i32 %"add.253", ptr %"R4_Int32"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".3869" = load i32, ptr %"R6_Int32"
  %".3870" = load i32, ptr %"R9_Int32"
  %"mul.88" = mul i32 %".3869", %".3870"
  %"add.254" = add i32 %"mul.88", %"Arg_4"
  store i32 %"add.254", ptr %"R6_Int32"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".3873" = load i32, ptr %"R8_Int32"
  %".3874" = load i32, ptr %"R9_Int32"
  %"mul.89" = mul i32 %".3873", %".3874"
  %"add.255" = add i32 %"mul.89", %"Arg_4"
  store i32 %"add.255", ptr %"R8_Int32"
  ; LDG.E.SYS R13, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3877" = load i32, ptr %"R4_Float32_PTR"
  %".3878" = add i32 %".3877", 0
  %"for_LDG.271" = inttoptr i32 %".3878" to ptr
  %".3879" = load float, ptr %"for_LDG.271"
  store float %".3879", ptr %"R13_Float32"
  ; LDG.E.SYS R11, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3882" = load i32, ptr %"R6_Float32_PTR"
  %".3883" = add i32 %".3882", 0
  %"for_LDG.272" = inttoptr i32 %".3883" to ptr
  %".3884" = load float, ptr %"for_LDG.272"
  store float %".3884", ptr %"R11_Float32"
  ; LDG.E.SYS R10, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3887" = load i32, ptr %"R8_Float32_PTR"
  %".3888" = add i32 %".3887", 0
  %"for_LDG.273" = inttoptr i32 %".3888" to ptr
  %".3889" = load float, ptr %"for_LDG.273"
  store float %".3889", ptr %"R10_Float32"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".3892" = load i32, ptr %"R48_Int32"
  %".3893" = load i1, ptr %"PT_Bool"
  %"cmp.42" = icmp ne i32 %".3892", 1
  %".3894" = and i1 %"cmp.42", %".3893"
  ; FFMA R44, R11, R13, R44
  %".3896" = load float, ptr %"R11_Float32"
  %".3897" = load float, ptr %"R13_Float32"
  %".3898" = load float, ptr %"R44_Float32"
  %"fmul.225" = fmul float %".3896", %".3897"
  %"fadd.200" = fadd float %"fmul.225", %".3898"
  store float %"fadd.200", ptr %"R44_Float32"
  ; FFMA R56, R13, R10, R56
  %".3901" = load float, ptr %"R13_Float32"
  %".3902" = load float, ptr %"R10_Float32"
  %".3903" = load float, ptr %"R56_Float32"
  %"fmul.226" = fmul float %".3901", %".3902"
  %"fadd.201" = fadd float %"fmul.226", %".3903"
  store float %"fadd.201", ptr %"R56_Float32"
  ; @!P0 BRA `(.L_x_26)
  %".3906" = load i1, ptr %"P0_Bool"
  %".3907" = icmp eq i1 %".3906", 1
  br i1 %".3907", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".3910" = load i32, ptr %"R48_Int32"
  %".3911" = load i1, ptr %"PT_Bool"
  %"cmp.43" = icmp ne i32 %".3910", 2
  %".3912" = and i1 %"cmp.43", %".3911"
  ; LDG.E.SYS R11, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3914" = load i32, ptr %"R6_Float32_PTR"
  %".3915" = add i32 %".3914", 4
  %"for_LDG.274" = inttoptr i32 %".3915" to ptr
  %".3916" = load float, ptr %"for_LDG.274"
  store float %".3916", ptr %"R11_Float32"
  ; LDG.E.SYS R13, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3919" = load i32, ptr %"R4_Float32_PTR"
  %".3920" = add i32 %".3919", 4
  %"for_LDG.275" = inttoptr i32 %".3920" to ptr
  %".3921" = load float, ptr %"for_LDG.275"
  store float %".3921", ptr %"R13_Float32"
  ; LDG.E.SYS R10, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3924" = load i32, ptr %"R8_Float32_PTR"
  %".3925" = add i32 %".3924", 4
  %"for_LDG.276" = inttoptr i32 %".3925" to ptr
  %".3926" = load float, ptr %"for_LDG.276"
  store float %".3926", ptr %"R10_Float32"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".3929" = load i1, ptr %"P0_Bool"
  %".3930" = icmp ne i1 %".3929", 1
  br i1 %".3930", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".3933" = load i32, ptr %"R6_Float32_PTR"
  %".3934" = add i32 %".3933", 8
  %"for_LDG.277" = inttoptr i32 %".3934" to ptr
  %".3935" = load float, ptr %"for_LDG.277"
  store float %".3935", ptr %"R23_Float32"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".3940" = load i1, ptr %"P0_Bool"
  %".3941" = icmp ne i1 %".3940", 1
  br i1 %".3941", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".3944" = load i32, ptr %"R4_Float32_PTR"
  %".3945" = add i32 %".3944", 8
  %"for_LDG.278" = inttoptr i32 %".3945" to ptr
  %".3946" = load float, ptr %"for_LDG.278"
  store float %".3946", ptr %"R25_Float32"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".3951" = load i1, ptr %"P0_Bool"
  %".3952" = icmp ne i1 %".3951", 1
  br i1 %".3952", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".3955" = load i32, ptr %"R8_Float32_PTR"
  %".3956" = add i32 %".3955", 8
  %"for_LDG.279" = inttoptr i32 %".3956" to ptr
  %".3957" = load float, ptr %"for_LDG.279"
  store float %".3957", ptr %"R12_Float32"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".3962" = load float, ptr %"R11_Float32"
  %".3963" = load float, ptr %"R13_Float32"
  %".3964" = load float, ptr %"R44_Float32"
  %"fmul.227" = fmul float %".3962", %".3963"
  %"fadd.202" = fadd float %"fmul.227", %".3964"
  store float %"fadd.202", ptr %"R44_Float32"
  ; FFMA R56, R13, R10, R56
  %".3967" = load float, ptr %"R13_Float32"
  %".3968" = load float, ptr %"R10_Float32"
  %".3969" = load float, ptr %"R56_Float32"
  %"fmul.228" = fmul float %".3967", %".3968"
  %"fadd.203" = fadd float %"fmul.228", %".3969"
  store float %"fadd.203", ptr %"R56_Float32"
  ; @P0 FFMA R44, R23, R25, R44
  %".3972" = load i1, ptr %"P0_Bool"
  %".3973" = icmp ne i1 %".3972", 1
  br i1 %".3973", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".3976" = load float, ptr %"R23_Float32"
  %".3977" = load float, ptr %"R25_Float32"
  %".3978" = load float, ptr %"R44_Float32"
  %"fmul.229" = fmul float %".3976", %".3977"
  %"fadd.204" = fadd float %"fmul.229", %".3978"
  store float %"fadd.204", ptr %"R44_Float32"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".3983" = load i1, ptr %"P0_Bool"
  %".3984" = icmp ne i1 %".3983", 1
  br i1 %".3984", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".3987" = load float, ptr %"R25_Float32"
  %".3988" = load float, ptr %"R12_Float32"
  %".3989" = load float, ptr %"R56_Float32"
  %"fmul.230" = fmul float %".3987", %".3988"
  %"fadd.205" = fadd float %"fmul.230", %".3989"
  store float %"fadd.205", ptr %"R56_Float32"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R26_Float32_PTR", ptr %"R26_Int32", i32 4, i1 0)
  %".3994" = load i32, ptr %"R26_Float32_PTR"
  %".3995" = add i32 %".3994", 0
  %"for_LDG.280" = inttoptr i32 %".3995" to ptr
  %".3996" = load float, ptr %"for_LDG.280"
  store float %".3996", ptr %"R5_Float32"
  ; MOV R4, 0x3bbb989d
  store float 0x41cdddcc40000000, ptr %"R4_Float32"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  store float 0x41d0df0000000000, ptr %"R7_Float32"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".4005" = load float, ptr %"R5_Float32"
  %".4006" = load float, ptr %"R44_Float32"
  %"fadd.206" = fadd float %".4005", %".4006"
  store float %"fadd.206", ptr %"R5_Float32"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".4009" = load float, ptr %"R5_Float32"
  %".4010" = sub float              0x0, %".4009"
  %".4011" = load float, ptr %"R4_Float32"
  %"fmul.231" = fmul float %".4010", %".4011"
  %"fadd.207" = fadd float %"fmul.231", 0x3fe0000000000000
  store float %"fadd.207", ptr %"R4_Float32"
  ; FFMA.RM R4, R4, R7, 12582913
  %".4014" = load float, ptr %"R4_Float32"
  %".4015" = load float, ptr %"R7_Float32"
  %"fmul.232" = fmul float %".4014", %".4015"
  %"fadd.208" = fadd float %"fmul.232", 0x4168000020000000
  store float %"fadd.208", ptr %"R4_Float32"
  ; FADD R6, R4.reuse, -12583039
  %".4018" = load float, ptr %"R4_Float32"
  %"fadd.209" = fadd float %".4018", 0xc168000fe0000000
  store float %"fadd.209", ptr %"R6_Float32"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".4021" = icmp ult i32 23, 32
  %"SHF_min.4" = select  i1 %".4021", i32 23, i32 32
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Int32", ptr %"R4_Float32", i32 4, i1 0)
  %".4022" = load i32, ptr %"R4_Int32"
  %"zext.12" = zext i32 0 to i64
  %"zext.13" = zext i32 %".4022" to i64
  %"zext.14" = zext i32 23 to i64
  %"shl.22" = shl i64 %"zext.12", 32
  %"or.4" = or i64 %"shl.22", %"zext.13"
  %"shl.23" = shl i64 %"or.4", %"zext.14"
  %"and.2" = and i64 %"shl.23", 4294967295
  %"trunc32.4" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.4", ptr %"R4_Int32"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".4025" = load float, ptr %"R5_Float32"
  %".4026" = sub float              0x0, %".4025"
  %".4027" = load float, ptr %"R6_Float32"
  %".4028" = sub float              0x0, %".4027"
  %"fmul.233" = fmul float %".4026", 0x3ff7154760000000
  %"fadd.210" = fadd float %"fmul.233", %".4028"
  store float %"fadd.210", ptr %"R6_Float32"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".4031" = load float, ptr %"R5_Float32"
  %".4032" = sub float              0x0, %".4031"
  %".4033" = load float, ptr %"R6_Float32"
  %"fmul.234" = fmul float %".4032", 0x3e54ae0c00000000
  %"fadd.211" = fadd float %"fmul.234", %".4033"
  store float %"fadd.211", ptr %"R6_Float32"
  ; MUFU.EX2 R5, R6
  %".4036" = load float, ptr %"R6_Float32"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".4036")
  store float %"llvm_exp2_f32_result.3", ptr %"R5_Float32"
  ; FFMA R24, R4, R5, 1
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32", ptr %"R4_Int32", i32 4, i1 0)
  %".4039" = load float, ptr %"R4_Float32"
  %".4040" = load float, ptr %"R5_Float32"
  %"fmul.235" = fmul float %".4039", %".4040"
  %"fadd.212" = fadd float %"fmul.235", 0x3ff0000000000000
  store float %"fadd.212", ptr %"R24_Float32"
  ; IADD3 R4, R24, 0x1800000, RZ
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R24_Int32", ptr %"R24_Float32", i32 4, i1 0)
  %".4043" = load i32, ptr %"R24_Int32"
  %"add.256" = add i32 %".4043", 25165824
  %"add.257" = add i32 %"add.256", 0
  store i32 %"add.257", ptr %"R4_Int32"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".4046" = load i32, ptr %"R4_Int32"
  %".4047" = and i32 %".4046", 2139095040
  store i32 %".4047", ptr %"R4_Int32"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".4050" = load i32, ptr %"R4_Int32"
  %".4051" = load i1, ptr %"PT_Bool"
  %"cmp.44" = icmp sgt i32 %".4050", 33554431
  %".4052" = and i1 %"cmp.44", %".4051"
  ; @P0 BRA `(.L_x_33)
  %".4054" = load i1, ptr %"P0_Bool"
  %".4055" = icmp ne i1 %".4054", 1
  br i1 %".4055", label %".L_x_33", label %".L_x_26_split_0x3910"
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
  %".4063" = load float, ptr %"R24_Float32"
  %".4064" = fdiv float 0x3ff0000000000000, %".4063"
  store float %".4064", ptr %"R22_Float32"
  ; FFMA R4, R24, R22, -1
  %".4067" = load float, ptr %"R24_Float32"
  %".4068" = load float, ptr %"R22_Float32"
  %"fmul.236" = fmul float %".4067", %".4068"
  %"fadd.213" = fadd float %"fmul.236", 0xbff0000000000000
  store float %"fadd.213", ptr %"R4_Float32"
  ; FADD.FTZ R5, -R4, -RZ
  %".4071" = load float, ptr %"R4_Float32"
  %".4072" = sub float              0x0, %".4071"
  %"fadd.214" = fadd float %".4072",              0x0
  store float %"fadd.214", ptr %"R5_Float32"
  ; FFMA R22, R22, R5, R22
  %".4075" = load float, ptr %"R22_Float32"
  %".4076" = load float, ptr %"R5_Float32"
  %".4077" = load float, ptr %"R22_Float32"
  %"fmul.237" = fmul float %".4075", %".4076"
  %"fadd.215" = fadd float %"fmul.237", %".4077"
  store float %"fadd.215", ptr %"R22_Float32"
.L_x_34:
  ; BSYNC B0
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R32_Float32_PTR", ptr %"R32_Int32", i32 4, i1 0)
  %".4081" = load i32, ptr %"R32_Float32_PTR"
  %".4082" = add i32 %".4081", 0
  %"for_LDG.281" = inttoptr i32 %".4082" to ptr
  %".4083" = load float, ptr %"for_LDG.281"
  store float %".4083", ptr %"R5_Float32"
  ; MOV R4, 0x3bbb989d
  store float 0x41cdddcc40000000, ptr %"R4_Float32"
  ; MOV R7, 0x437c0000
  store float 0x41d0df0000000000, ptr %"R7_Float32"
  ; FADD R5, R5, R56
  %".4090" = load float, ptr %"R5_Float32"
  %".4091" = load float, ptr %"R56_Float32"
  %"fadd.216" = fadd float %".4090", %".4091"
  store float %"fadd.216", ptr %"R5_Float32"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".4094" = load float, ptr %"R5_Float32"
  %".4095" = sub float              0x0, %".4094"
  %".4096" = load float, ptr %"R4_Float32"
  %"fmul.238" = fmul float %".4095", %".4096"
  %"fadd.217" = fadd float %"fmul.238", 0x3fe0000000000000
  store float %"fadd.217", ptr %"R4_Float32"
  ; FFMA.RM R4, R4, R7, 12582913
  %".4099" = load float, ptr %"R4_Float32"
  %".4100" = load float, ptr %"R7_Float32"
  %"fmul.239" = fmul float %".4099", %".4100"
  %"fadd.218" = fadd float %"fmul.239", 0x4168000020000000
  store float %"fadd.218", ptr %"R4_Float32"
  ; FADD R6, R4.reuse, -12583039
  %".4103" = load float, ptr %"R4_Float32"
  %"fadd.219" = fadd float %".4103", 0xc168000fe0000000
  store float %"fadd.219", ptr %"R6_Float32"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".4106" = icmp ult i32 23, 32
  %"SHF_min.5" = select  i1 %".4106", i32 23, i32 32
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Int32", ptr %"R4_Float32", i32 4, i1 0)
  %".4107" = load i32, ptr %"R4_Int32"
  %"zext.15" = zext i32 0 to i64
  %"zext.16" = zext i32 %".4107" to i64
  %"zext.17" = zext i32 23 to i64
  %"shl.24" = shl i64 %"zext.15", 32
  %"or.5" = or i64 %"shl.24", %"zext.16"
  %"shl.25" = shl i64 %"or.5", %"zext.17"
  %"and.3" = and i64 %"shl.25", 4294967295
  %"trunc32.5" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.5", ptr %"R23_Int32"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".4110" = load float, ptr %"R5_Float32"
  %".4111" = sub float              0x0, %".4110"
  %".4112" = load float, ptr %"R6_Float32"
  %".4113" = sub float              0x0, %".4112"
  %"fmul.240" = fmul float %".4111", 0x3ff7154760000000
  %"fadd.220" = fadd float %"fmul.240", %".4113"
  store float %"fadd.220", ptr %"R6_Float32"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".4116" = load float, ptr %"R5_Float32"
  %".4117" = sub float              0x0, %".4116"
  %".4118" = load float, ptr %"R6_Float32"
  %"fmul.241" = fmul float %".4117", 0x3e54ae0c00000000
  %"fadd.221" = fadd float %"fmul.241", %".4118"
  store float %"fadd.221", ptr %"R6_Float32"
  ; MUFU.EX2 R6, R6
  %".4121" = load float, ptr %"R6_Float32"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".4121")
  store float %"llvm_exp2_f32_result.4", ptr %"R6_Float32"
  ; FFMA R23, R23, R6, 1
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R23_Float32", ptr %"R23_Int32", i32 4, i1 0)
  %".4124" = load float, ptr %"R23_Float32"
  %".4125" = load float, ptr %"R6_Float32"
  %"fmul.242" = fmul float %".4124", %".4125"
  %"fadd.222" = fadd float %"fmul.242", 0x3ff0000000000000
  store float %"fadd.222", ptr %"R23_Float32"
  ; @!P4 BRA `(.L_x_35)
  %".4128" = load i1, ptr %"P4_Bool"
  %".4129" = icmp eq i1 %".4128", 1
  br i1 %".4129", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".4132" = load i32, ptr %"R18_Int32"
  %".4133" = load i1, ptr %"PT_Bool"
  %"cmp.45" = icmp sge i32 %".4132", 3
  %".4134" = and i1 %"cmp.45", %".4133"
  ; MOV R34, RZ
  %".4136" = load i32, ptr %"RZ_Int32"
  store i32 %".4136", ptr %"R34_Int32"
  ; @!P0 BRA `(.L_x_36)
  %".4139" = load i1, ptr %"P0_Bool"
  %".4140" = icmp eq i1 %".4139", 1
  br i1 %".4140", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".4143" = load i32, ptr %"R20_Int32"
  %".4144" = load i1, ptr %"PT_Bool"
  %"cmp.46" = icmp sgt i32 %".4143", 0
  %".4145" = and i1 %"cmp.46", %".4144"
  ; MOV R34, RZ
  %".4147" = load i32, ptr %"RZ_Int32"
  store i32 %".4147", ptr %"R34_Int32"
  ; MOV R35, R20
  %".4150" = load i32, ptr %"R20_Int32"
  store i32 %".4150", ptr %"R35_Int32"
  ; @!P0 BRA `(.L_x_37)
  %".4153" = load i1, ptr %"P0_Bool"
  %".4154" = icmp eq i1 %".4153", 1
  br i1 %".4154", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".4157" = load i32, ptr %"R35_Int32"
  %".4158" = load i1, ptr %"PT_Bool"
  %"cmp.47" = icmp sgt i32 %".4157", 12
  %".4159" = and i1 %"cmp.47", %".4158"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".4161" = and i1 1, 1
  %".4162" = or i1 %".4161", 1
  ; @!P1 BRA `(.L_x_38)
  %".4164" = load i1, ptr %"P1_Bool"
  %".4165" = icmp eq i1 %".4164", 1
  br i1 %".4165", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4168" = xor i1 1, 1
  %".4169" = and i1 %".4168", 1
  %".4170" = and i1 %".4169", 1
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41_Int32"
  ; IADD3 R10, R3, R34, RZ
  %".4174" = load i32, ptr %"R3_Int32"
  %".4175" = load i32, ptr %"R34_Int32"
  %"add.258" = add i32 %".4174", %".4175"
  %"add.259" = add i32 %"add.258", 0
  store i32 %"add.259", ptr %"R10_Int32"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".4178" = load i32, ptr %"R34_Int32"
  %".4179" = load i32, ptr %"R41_Int32"
  %"mul.90" = mul i32 %".4178", %".4179"
  %"add.260" = add i32 %"mul.90", %"Arg_3"
  store i32 %"add.260", ptr %"R12_Int32"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".4182" = load i32, ptr %"R10_Int32"
  %".4183" = load i32, ptr %"R41_Int32"
  %"mul.91" = mul i32 %".4182", %".4183"
  %"add.261" = add i32 %"mul.91", %"Arg_4"
  store i32 %"add.261", ptr %"R10_Int32"
  ; IADD3 R4, R34, 0x4, RZ
  %".4186" = load i32, ptr %"R34_Int32"
  %"add.262" = add i32 %".4186", 4
  %"add.263" = add i32 %"add.262", 0
  store i32 %"add.263", ptr %"R4_Int32"
  ; LDG.E.SYS R25, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4189" = load i32, ptr %"R12_Float32_PTR"
  %".4190" = add i32 %".4189", 0
  %"for_LDG.282" = inttoptr i32 %".4190" to ptr
  %".4191" = load float, ptr %"for_LDG.282"
  store float %".4191", ptr %"R25_Float32"
  ; IADD3 R6, R3, R4, RZ
  %".4194" = load i32, ptr %"R3_Int32"
  %".4195" = load i32, ptr %"R4_Int32"
  %"add.264" = add i32 %".4194", %".4195"
  %"add.265" = add i32 %"add.264", 0
  store i32 %"add.265", ptr %"R6_Int32"
  ; LDG.E.SYS R36, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4198" = load i32, ptr %"R10_Float32_PTR"
  %".4199" = add i32 %".4198", 0
  %"for_LDG.283" = inttoptr i32 %".4199" to ptr
  %".4200" = load float, ptr %"for_LDG.283"
  store float %".4200", ptr %"R36_Float32"
  ; LDG.E.SYS R37, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4203" = load i32, ptr %"R12_Float32_PTR"
  %".4204" = add i32 %".4203", 4
  %"for_LDG.284" = inttoptr i32 %".4204" to ptr
  %".4205" = load float, ptr %"for_LDG.284"
  store float %".4205", ptr %"R37_Float32"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".4208" = load i32, ptr %"R4_Int32"
  %".4209" = load i32, ptr %"R41_Int32"
  %"mul.92" = mul i32 %".4208", %".4209"
  %"add.266" = add i32 %"mul.92", %"Arg_3"
  store i32 %"add.266", ptr %"R4_Int32"
  ; LDG.E.SYS R24, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4212" = load i32, ptr %"R10_Float32_PTR"
  %".4213" = add i32 %".4212", 4
  %"for_LDG.285" = inttoptr i32 %".4213" to ptr
  %".4214" = load float, ptr %"for_LDG.285"
  store float %".4214", ptr %"R24_Float32"
  ; LDG.E.SYS R39, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4217" = load i32, ptr %"R12_Float32_PTR"
  %".4218" = add i32 %".4217", 8
  %"for_LDG.286" = inttoptr i32 %".4218" to ptr
  %".4219" = load float, ptr %"for_LDG.286"
  store float %".4219", ptr %"R39_Float32"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".4222" = load i32, ptr %"R6_Int32"
  %".4223" = load i32, ptr %"R41_Int32"
  %"mul.93" = mul i32 %".4222", %".4223"
  %"add.267" = add i32 %"mul.93", %"Arg_4"
  store i32 %"add.267", ptr %"R6_Int32"
  ; LDG.E.SYS R38, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4226" = load i32, ptr %"R10_Float32_PTR"
  %".4227" = add i32 %".4226", 8
  %"for_LDG.287" = inttoptr i32 %".4227" to ptr
  %".4228" = load float, ptr %"for_LDG.287"
  store float %".4228", ptr %"R38_Float32"
  ; LDG.E.SYS R43, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4231" = load i32, ptr %"R12_Float32_PTR"
  %".4232" = add i32 %".4231", 12
  %"for_LDG.288" = inttoptr i32 %".4232" to ptr
  %".4233" = load float, ptr %"for_LDG.288"
  store float %".4233", ptr %"R43_Float32"
  ; IADD3 R8, R34, 0x8, RZ
  %".4236" = load i32, ptr %"R34_Int32"
  %"add.268" = add i32 %".4236", 8
  %"add.269" = add i32 %"add.268", 0
  store i32 %"add.269", ptr %"R8_Int32"
  ; LDG.E.SYS R46, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4239" = load i32, ptr %"R10_Float32_PTR"
  %".4240" = add i32 %".4239", 12
  %"for_LDG.289" = inttoptr i32 %".4240" to ptr
  %".4241" = load float, ptr %"for_LDG.289"
  store float %".4241", ptr %"R46_Float32"
  ; LDG.E.SYS R51, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4244" = load i32, ptr %"R4_Float32_PTR"
  %".4245" = add i32 %".4244", 0
  %"for_LDG.290" = inttoptr i32 %".4245" to ptr
  %".4246" = load float, ptr %"for_LDG.290"
  store float %".4246", ptr %"R51_Float32"
  ; IADD3 R50, R3, R8, RZ
  %".4249" = load i32, ptr %"R3_Int32"
  %".4250" = load i32, ptr %"R8_Int32"
  %"add.270" = add i32 %".4249", %".4250"
  %"add.271" = add i32 %"add.270", 0
  store i32 %"add.271", ptr %"R50_Int32"
  ; LDG.E.SYS R44, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4253" = load i32, ptr %"R6_Float32_PTR"
  %".4254" = add i32 %".4253", 0
  %"for_LDG.291" = inttoptr i32 %".4254" to ptr
  %".4255" = load float, ptr %"for_LDG.291"
  store float %".4255", ptr %"R44_Float32"
  ; LDG.E.SYS R47, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4258" = load i32, ptr %"R4_Float32_PTR"
  %".4259" = add i32 %".4258", 4
  %"for_LDG.292" = inttoptr i32 %".4259" to ptr
  %".4260" = load float, ptr %"for_LDG.292"
  store float %".4260", ptr %"R47_Float32"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".4263" = load i32, ptr %"R8_Int32"
  %".4264" = load i32, ptr %"R41_Int32"
  %"mul.94" = mul i32 %".4263", %".4264"
  %"add.272" = add i32 %"mul.94", %"Arg_3"
  store i32 %"add.272", ptr %"R8_Int32"
  ; LDG.E.SYS R42, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4267" = load i32, ptr %"R6_Float32_PTR"
  %".4268" = add i32 %".4267", 4
  %"for_LDG.293" = inttoptr i32 %".4268" to ptr
  %".4269" = load float, ptr %"for_LDG.293"
  store float %".4269", ptr %"R42_Float32"
  ; LDG.E.SYS R45, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4272" = load i32, ptr %"R4_Float32_PTR"
  %".4273" = add i32 %".4272", 8
  %"for_LDG.294" = inttoptr i32 %".4273" to ptr
  %".4274" = load float, ptr %"for_LDG.294"
  store float %".4274", ptr %"R45_Float32"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".4277" = load i32, ptr %"R50_Int32"
  %".4278" = load i32, ptr %"R41_Int32"
  %"mul.95" = mul i32 %".4277", %".4278"
  %"add.273" = add i32 %"mul.95", %"Arg_4"
  store i32 %"add.273", ptr %"R10_Int32"
  ; LDG.E.SYS R40, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4281" = load i32, ptr %"R6_Float32_PTR"
  %".4282" = add i32 %".4281", 8
  %"for_LDG.295" = inttoptr i32 %".4282" to ptr
  %".4283" = load float, ptr %"for_LDG.295"
  store float %".4283", ptr %"R40_Float32"
  ; LDG.E.SYS R53, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4286" = load i32, ptr %"R4_Float32_PTR"
  %".4287" = add i32 %".4286", 12
  %"for_LDG.296" = inttoptr i32 %".4287" to ptr
  %".4288" = load float, ptr %"for_LDG.296"
  store float %".4288", ptr %"R53_Float32"
  ; IADD3 R12, R34, 0xc, RZ
  %".4291" = load i32, ptr %"R34_Int32"
  %"add.274" = add i32 %".4291", 12
  %"add.275" = add i32 %"add.274", 0
  store i32 %"add.275", ptr %"R12_Int32"
  ; LDG.E.SYS R54, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4294" = load i32, ptr %"R6_Float32_PTR"
  %".4295" = add i32 %".4294", 12
  %"for_LDG.297" = inttoptr i32 %".4295" to ptr
  %".4296" = load float, ptr %"for_LDG.297"
  store float %".4296", ptr %"R54_Float32"
  ; LDG.E.SYS R59, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4299" = load i32, ptr %"R8_Float32_PTR"
  %".4300" = add i32 %".4299", 0
  %"for_LDG.298" = inttoptr i32 %".4300" to ptr
  %".4301" = load float, ptr %"for_LDG.298"
  store float %".4301", ptr %"R59_Float32"
  ; IADD3 R58, R3, R12, RZ
  %".4304" = load i32, ptr %"R3_Int32"
  %".4305" = load i32, ptr %"R12_Int32"
  %"add.276" = add i32 %".4304", %".4305"
  %"add.277" = add i32 %"add.276", 0
  store i32 %"add.277", ptr %"R58_Int32"
  ; LDG.E.SYS R52, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4308" = load i32, ptr %"R10_Float32_PTR"
  %".4309" = add i32 %".4308", 0
  %"for_LDG.299" = inttoptr i32 %".4309" to ptr
  %".4310" = load float, ptr %"for_LDG.299"
  store float %".4310", ptr %"R52_Float32"
  ; LDG.E.SYS R57, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4313" = load i32, ptr %"R8_Float32_PTR"
  %".4314" = add i32 %".4313", 4
  %"for_LDG.300" = inttoptr i32 %".4314" to ptr
  %".4315" = load float, ptr %"for_LDG.300"
  store float %".4315", ptr %"R57_Float32"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".4318" = load i32, ptr %"R12_Int32"
  %".4319" = load i32, ptr %"R41_Int32"
  %"mul.96" = mul i32 %".4318", %".4319"
  %"add.278" = add i32 %"mul.96", %"Arg_3"
  store i32 %"add.278", ptr %"R12_Int32"
  ; LDG.E.SYS R50, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4322" = load i32, ptr %"R10_Float32_PTR"
  %".4323" = add i32 %".4322", 4
  %"for_LDG.301" = inttoptr i32 %".4323" to ptr
  %".4324" = load float, ptr %"for_LDG.301"
  store float %".4324", ptr %"R50_Float32"
  ; LDG.E.SYS R55, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4327" = load i32, ptr %"R8_Float32_PTR"
  %".4328" = add i32 %".4327", 8
  %"for_LDG.302" = inttoptr i32 %".4328" to ptr
  %".4329" = load float, ptr %"for_LDG.302"
  store float %".4329", ptr %"R55_Float32"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".4332" = load i32, ptr %"R58_Int32"
  %".4333" = load i32, ptr %"R41_Int32"
  %"mul.97" = mul i32 %".4332", %".4333"
  %"add.279" = add i32 %"mul.97", %"Arg_4"
  store i32 %"add.279", ptr %"R4_Int32"
  ; LDG.E.SYS R61, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4336" = load i32, ptr %"R8_Float32_PTR"
  %".4337" = add i32 %".4336", 12
  %"for_LDG.303" = inttoptr i32 %".4337" to ptr
  %".4338" = load float, ptr %"for_LDG.303"
  store float %".4338", ptr %"R61_Float32"
  ; LDG.E.SYS R56, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4341" = load i32, ptr %"R10_Float32_PTR"
  %".4342" = add i32 %".4341", 8
  %"for_LDG.304" = inttoptr i32 %".4342" to ptr
  %".4343" = load float, ptr %"for_LDG.304"
  store float %".4343", ptr %"R56_Float32"
  ; LDG.E.SYS R58, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4346" = load i32, ptr %"R10_Float32_PTR"
  %".4347" = add i32 %".4346", 12
  %"for_LDG.305" = inttoptr i32 %".4347" to ptr
  %".4348" = load float, ptr %"for_LDG.305"
  store float %".4348", ptr %"R58_Float32"
  ; LDG.E.SYS R6, [R12]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4351" = load i32, ptr %"R12_Float32_PTR"
  %".4352" = add i32 %".4351", 0
  %"for_LDG.306" = inttoptr i32 %".4352" to ptr
  %".4353" = load float, ptr %"for_LDG.306"
  store float %".4353", ptr %"R6_Float32"
  ; LDG.E.SYS R41, [R12+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4356" = load i32, ptr %"R12_Float32_PTR"
  %".4357" = add i32 %".4356", 4
  %"for_LDG.307" = inttoptr i32 %".4357" to ptr
  %".4358" = load float, ptr %"for_LDG.307"
  store float %".4358", ptr %"R41_Float32"
  ; LDG.E.SYS R10, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4361" = load i32, ptr %"R4_Float32_PTR"
  %".4362" = add i32 %".4361", 0
  %"for_LDG.308" = inttoptr i32 %".4362" to ptr
  %".4363" = load float, ptr %"for_LDG.308"
  store float %".4363", ptr %"R10_Float32"
  ; LDG.E.SYS R7, [R12+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4366" = load i32, ptr %"R12_Float32_PTR"
  %".4367" = add i32 %".4366", 8
  %"for_LDG.309" = inttoptr i32 %".4367" to ptr
  %".4368" = load float, ptr %"for_LDG.309"
  store float %".4368", ptr %"R7_Float32"
  ; LDG.E.SYS R9, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4371" = load i32, ptr %"R4_Float32_PTR"
  %".4372" = add i32 %".4371", 4
  %"for_LDG.310" = inttoptr i32 %".4372" to ptr
  %".4373" = load float, ptr %"for_LDG.310"
  store float %".4373", ptr %"R9_Float32"
  ; LDG.E.SYS R60, [R12+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R12_Float32_PTR", ptr %"R12_Int32", i32 4, i1 0)
  %".4376" = load i32, ptr %"R12_Float32_PTR"
  %".4377" = add i32 %".4376", 12
  %"for_LDG.311" = inttoptr i32 %".4377" to ptr
  %".4378" = load float, ptr %"for_LDG.311"
  store float %".4378", ptr %"R60_Float32"
  ; LDG.E.SYS R8, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4381" = load i32, ptr %"R4_Float32_PTR"
  %".4382" = add i32 %".4381", 8
  %"for_LDG.312" = inttoptr i32 %".4382" to ptr
  %".4383" = load float, ptr %"for_LDG.312"
  store float %".4383", ptr %"R8_Float32"
  ; LDG.E.SYS R11, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4386" = load i32, ptr %"R4_Float32_PTR"
  %".4387" = add i32 %".4386", 12
  %"for_LDG.313" = inttoptr i32 %".4387" to ptr
  %".4388" = load float, ptr %"for_LDG.313"
  store float %".4388", ptr %"R11_Float32"
  ; IADD3 R35, R35, -0x10, RZ
  %".4391" = load i32, ptr %"R35_Int32"
  %"add.280" = add i32 %".4391", -16
  %"add.281" = add i32 %"add.280", 0
  store i32 %"add.281", ptr %"R35_Int32"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".4394" = load i32, ptr %"R35_Int32"
  %".4395" = load i1, ptr %"PT_Bool"
  %"cmp.48" = icmp sgt i32 %".4394", 12
  %".4396" = and i1 %"cmp.48", %".4395"
  ; IADD3 R34, R34, 0x10, RZ
  %".4398" = load i32, ptr %"R34_Int32"
  %"add.282" = add i32 %".4398", 16
  %"add.283" = add i32 %"add.282", 0
  store i32 %"add.283", ptr %"R34_Int32"
  ; FMUL R25, R25, R22
  %".4401" = load float, ptr %"R25_Float32"
  %".4402" = load float, ptr %"R22_Float32"
  %"fmul.243" = fmul float %".4401", %".4402"
  store float %"fmul.243", ptr %"R25_Float32"
  ; FFMA R25, R25, R36, R21
  %".4405" = load float, ptr %"R25_Float32"
  %".4406" = load float, ptr %"R36_Float32"
  %".4407" = load float, ptr %"R21_Float32"
  %"fmul.244" = fmul float %".4405", %".4406"
  %"fadd.223" = fadd float %"fmul.244", %".4407"
  store float %"fadd.223", ptr %"R25_Float32"
  ; FMUL R37, R37, R22
  %".4410" = load float, ptr %"R37_Float32"
  %".4411" = load float, ptr %"R22_Float32"
  %"fmul.245" = fmul float %".4410", %".4411"
  store float %"fmul.245", ptr %"R37_Float32"
  ; FFMA R25, R37, R24, R25
  %".4414" = load float, ptr %"R37_Float32"
  %".4415" = load float, ptr %"R24_Float32"
  %".4416" = load float, ptr %"R25_Float32"
  %"fmul.246" = fmul float %".4414", %".4415"
  %"fadd.224" = fadd float %"fmul.246", %".4416"
  store float %"fadd.224", ptr %"R25_Float32"
  ; FMUL R39, R39, R22
  %".4419" = load float, ptr %"R39_Float32"
  %".4420" = load float, ptr %"R22_Float32"
  %"fmul.247" = fmul float %".4419", %".4420"
  store float %"fmul.247", ptr %"R39_Float32"
  ; FFMA R25, R39, R38, R25
  %".4423" = load float, ptr %"R39_Float32"
  %".4424" = load float, ptr %"R38_Float32"
  %".4425" = load float, ptr %"R25_Float32"
  %"fmul.248" = fmul float %".4423", %".4424"
  %"fadd.225" = fadd float %"fmul.248", %".4425"
  store float %"fadd.225", ptr %"R25_Float32"
  ; FMUL R43, R43, R22
  %".4428" = load float, ptr %"R43_Float32"
  %".4429" = load float, ptr %"R22_Float32"
  %"fmul.249" = fmul float %".4428", %".4429"
  store float %"fmul.249", ptr %"R43_Float32"
  ; FFMA R25, R43, R46, R25
  %".4432" = load float, ptr %"R43_Float32"
  %".4433" = load float, ptr %"R46_Float32"
  %".4434" = load float, ptr %"R25_Float32"
  %"fmul.250" = fmul float %".4432", %".4433"
  %"fadd.226" = fadd float %"fmul.250", %".4434"
  store float %"fadd.226", ptr %"R25_Float32"
  ; FMUL R51, R51, R22
  %".4437" = load float, ptr %"R51_Float32"
  %".4438" = load float, ptr %"R22_Float32"
  %"fmul.251" = fmul float %".4437", %".4438"
  store float %"fmul.251", ptr %"R51_Float32"
  ; FFMA R25, R51, R44, R25
  %".4441" = load float, ptr %"R51_Float32"
  %".4442" = load float, ptr %"R44_Float32"
  %".4443" = load float, ptr %"R25_Float32"
  %"fmul.252" = fmul float %".4441", %".4442"
  %"fadd.227" = fadd float %"fmul.252", %".4443"
  store float %"fadd.227", ptr %"R25_Float32"
  ; FMUL R47, R47, R22
  %".4446" = load float, ptr %"R47_Float32"
  %".4447" = load float, ptr %"R22_Float32"
  %"fmul.253" = fmul float %".4446", %".4447"
  store float %"fmul.253", ptr %"R47_Float32"
  ; FFMA R25, R47, R42, R25
  %".4450" = load float, ptr %"R47_Float32"
  %".4451" = load float, ptr %"R42_Float32"
  %".4452" = load float, ptr %"R25_Float32"
  %"fmul.254" = fmul float %".4450", %".4451"
  %"fadd.228" = fadd float %"fmul.254", %".4452"
  store float %"fadd.228", ptr %"R25_Float32"
  ; FMUL R45, R45, R22
  %".4455" = load float, ptr %"R45_Float32"
  %".4456" = load float, ptr %"R22_Float32"
  %"fmul.255" = fmul float %".4455", %".4456"
  store float %"fmul.255", ptr %"R45_Float32"
  ; FFMA R25, R45, R40, R25
  %".4459" = load float, ptr %"R45_Float32"
  %".4460" = load float, ptr %"R40_Float32"
  %".4461" = load float, ptr %"R25_Float32"
  %"fmul.256" = fmul float %".4459", %".4460"
  %"fadd.229" = fadd float %"fmul.256", %".4461"
  store float %"fadd.229", ptr %"R25_Float32"
  ; FMUL R53, R53, R22
  %".4464" = load float, ptr %"R53_Float32"
  %".4465" = load float, ptr %"R22_Float32"
  %"fmul.257" = fmul float %".4464", %".4465"
  store float %"fmul.257", ptr %"R53_Float32"
  ; FFMA R25, R53, R54, R25
  %".4468" = load float, ptr %"R53_Float32"
  %".4469" = load float, ptr %"R54_Float32"
  %".4470" = load float, ptr %"R25_Float32"
  %"fmul.258" = fmul float %".4468", %".4469"
  %"fadd.230" = fadd float %"fmul.258", %".4470"
  store float %"fadd.230", ptr %"R25_Float32"
  ; FMUL R59, R59, R22
  %".4473" = load float, ptr %"R59_Float32"
  %".4474" = load float, ptr %"R22_Float32"
  %"fmul.259" = fmul float %".4473", %".4474"
  store float %"fmul.259", ptr %"R59_Float32"
  ; FFMA R25, R59, R52, R25
  %".4477" = load float, ptr %"R59_Float32"
  %".4478" = load float, ptr %"R52_Float32"
  %".4479" = load float, ptr %"R25_Float32"
  %"fmul.260" = fmul float %".4477", %".4478"
  %"fadd.231" = fadd float %"fmul.260", %".4479"
  store float %"fadd.231", ptr %"R25_Float32"
  ; FMUL R57, R57, R22
  %".4482" = load float, ptr %"R57_Float32"
  %".4483" = load float, ptr %"R22_Float32"
  %"fmul.261" = fmul float %".4482", %".4483"
  store float %"fmul.261", ptr %"R57_Float32"
  ; FFMA R25, R57, R50, R25
  %".4486" = load float, ptr %"R57_Float32"
  %".4487" = load float, ptr %"R50_Float32"
  %".4488" = load float, ptr %"R25_Float32"
  %"fmul.262" = fmul float %".4486", %".4487"
  %"fadd.232" = fadd float %"fmul.262", %".4488"
  store float %"fadd.232", ptr %"R25_Float32"
  ; FMUL R55, R55, R22.reuse
  %".4491" = load float, ptr %"R55_Float32"
  %".4492" = load float, ptr %"R22_Float32"
  %"fmul.263" = fmul float %".4491", %".4492"
  store float %"fmul.263", ptr %"R55_Float32"
  ; FMUL R61, R61, R22
  %".4495" = load float, ptr %"R61_Float32"
  %".4496" = load float, ptr %"R22_Float32"
  %"fmul.264" = fmul float %".4495", %".4496"
  store float %"fmul.264", ptr %"R61_Float32"
  ; FFMA R25, R55, R56, R25
  %".4499" = load float, ptr %"R55_Float32"
  %".4500" = load float, ptr %"R56_Float32"
  %".4501" = load float, ptr %"R25_Float32"
  %"fmul.265" = fmul float %".4499", %".4500"
  %"fadd.233" = fadd float %"fmul.265", %".4501"
  store float %"fadd.233", ptr %"R25_Float32"
  ; FFMA R25, R61, R58, R25
  %".4504" = load float, ptr %"R61_Float32"
  %".4505" = load float, ptr %"R58_Float32"
  %".4506" = load float, ptr %"R25_Float32"
  %"fmul.266" = fmul float %".4504", %".4505"
  %"fadd.234" = fadd float %"fmul.266", %".4506"
  store float %"fadd.234", ptr %"R25_Float32"
  ; FMUL R6, R6, R22.reuse
  %".4509" = load float, ptr %"R6_Float32"
  %".4510" = load float, ptr %"R22_Float32"
  %"fmul.267" = fmul float %".4509", %".4510"
  store float %"fmul.267", ptr %"R6_Float32"
  ; FMUL R41, R41, R22
  %".4513" = load float, ptr %"R41_Float32"
  %".4514" = load float, ptr %"R22_Float32"
  %"fmul.268" = fmul float %".4513", %".4514"
  store float %"fmul.268", ptr %"R41_Float32"
  ; FFMA R6, R6, R10, R25
  %".4517" = load float, ptr %"R6_Float32"
  %".4518" = load float, ptr %"R10_Float32"
  %".4519" = load float, ptr %"R25_Float32"
  %"fmul.269" = fmul float %".4517", %".4518"
  %"fadd.235" = fadd float %"fmul.269", %".4519"
  store float %"fadd.235", ptr %"R6_Float32"
  ; FMUL R7, R7, R22
  %".4522" = load float, ptr %"R7_Float32"
  %".4523" = load float, ptr %"R22_Float32"
  %"fmul.270" = fmul float %".4522", %".4523"
  store float %"fmul.270", ptr %"R7_Float32"
  ; FFMA R9, R41, R9, R6
  %".4526" = load float, ptr %"R41_Float32"
  %".4527" = load float, ptr %"R9_Float32"
  %".4528" = load float, ptr %"R6_Float32"
  %"fmul.271" = fmul float %".4526", %".4527"
  %"fadd.236" = fadd float %"fmul.271", %".4528"
  store float %"fadd.236", ptr %"R9_Float32"
  ; FMUL R60, R60, R22
  %".4531" = load float, ptr %"R60_Float32"
  %".4532" = load float, ptr %"R22_Float32"
  %"fmul.272" = fmul float %".4531", %".4532"
  store float %"fmul.272", ptr %"R60_Float32"
  ; FFMA R8, R7, R8, R9
  %".4535" = load float, ptr %"R7_Float32"
  %".4536" = load float, ptr %"R8_Float32"
  %".4537" = load float, ptr %"R9_Float32"
  %"fmul.273" = fmul float %".4535", %".4536"
  %"fadd.237" = fadd float %"fmul.273", %".4537"
  store float %"fadd.237", ptr %"R8_Float32"
  ; FFMA R21, R60, R11, R8
  %".4540" = load float, ptr %"R60_Float32"
  %".4541" = load float, ptr %"R11_Float32"
  %".4542" = load float, ptr %"R8_Float32"
  %"fmul.274" = fmul float %".4540", %".4541"
  %"fadd.238" = fadd float %"fmul.274", %".4542"
  store float %"fadd.238", ptr %"R21_Float32"
  ; @P1 BRA `(.L_x_39)
  %".4545" = load i1, ptr %"P1_Bool"
  %".4546" = icmp ne i1 %".4545", 1
  br i1 %".4546", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".4549" = load i32, ptr %"R35_Int32"
  %".4550" = load i1, ptr %"PT_Bool"
  %"cmp.49" = icmp sgt i32 %".4549", 4
  %".4551" = and i1 %"cmp.49", %".4550"
  ; @!P1 BRA `(.L_x_40)
  %".4553" = load i1, ptr %"P1_Bool"
  %".4554" = icmp eq i1 %".4553", 1
  br i1 %".4554", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11_Int32"
  ; IADD3 R6, R3, R34, RZ
  %".4559" = load i32, ptr %"R3_Int32"
  %".4560" = load i32, ptr %"R34_Int32"
  %"add.284" = add i32 %".4559", %".4560"
  %"add.285" = add i32 %"add.284", 0
  store i32 %"add.285", ptr %"R6_Int32"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".4563" = load i32, ptr %"R34_Int32"
  %".4564" = load i32, ptr %"R11_Int32"
  %"mul.98" = mul i32 %".4563", %".4564"
  %"add.286" = add i32 %"mul.98", %"Arg_3"
  store i32 %"add.286", ptr %"R8_Int32"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".4567" = load i32, ptr %"R6_Int32"
  %".4568" = load i32, ptr %"R11_Int32"
  %"mul.99" = mul i32 %".4567", %".4568"
  %"add.287" = add i32 %"mul.99", %"Arg_4"
  store i32 %"add.287", ptr %"R6_Int32"
  ; IADD3 R4, R34, 0x4, RZ
  %".4571" = load i32, ptr %"R34_Int32"
  %"add.288" = add i32 %".4571", 4
  %"add.289" = add i32 %"add.288", 0
  store i32 %"add.289", ptr %"R4_Int32"
  ; LDG.E.SYS R13, [R8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4574" = load i32, ptr %"R8_Float32_PTR"
  %".4575" = add i32 %".4574", 0
  %"for_LDG.314" = inttoptr i32 %".4575" to ptr
  %".4576" = load float, ptr %"for_LDG.314"
  store float %".4576", ptr %"R13_Float32"
  ; IADD3 R10, R3, R4, RZ
  %".4579" = load i32, ptr %"R3_Int32"
  %".4580" = load i32, ptr %"R4_Int32"
  %"add.290" = add i32 %".4579", %".4580"
  %"add.291" = add i32 %"add.290", 0
  store i32 %"add.291", ptr %"R10_Int32"
  ; LDG.E.SYS R12, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4583" = load i32, ptr %"R6_Float32_PTR"
  %".4584" = add i32 %".4583", 0
  %"for_LDG.315" = inttoptr i32 %".4584" to ptr
  %".4585" = load float, ptr %"for_LDG.315"
  store float %".4585", ptr %"R12_Float32"
  ; LDG.E.SYS R25, [R8+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4588" = load i32, ptr %"R8_Float32_PTR"
  %".4589" = add i32 %".4588", 4
  %"for_LDG.316" = inttoptr i32 %".4589" to ptr
  %".4590" = load float, ptr %"for_LDG.316"
  store float %".4590", ptr %"R25_Float32"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".4593" = load i32, ptr %"R4_Int32"
  %".4594" = load i32, ptr %"R11_Int32"
  %"mul.100" = mul i32 %".4593", %".4594"
  %"add.292" = add i32 %"mul.100", %"Arg_3"
  store i32 %"add.292", ptr %"R4_Int32"
  ; LDG.E.SYS R24, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4597" = load i32, ptr %"R6_Float32_PTR"
  %".4598" = add i32 %".4597", 4
  %"for_LDG.317" = inttoptr i32 %".4598" to ptr
  %".4599" = load float, ptr %"for_LDG.317"
  store float %".4599", ptr %"R24_Float32"
  ; LDG.E.SYS R37, [R8+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4602" = load i32, ptr %"R8_Float32_PTR"
  %".4603" = add i32 %".4602", 8
  %"for_LDG.318" = inttoptr i32 %".4603" to ptr
  %".4604" = load float, ptr %"for_LDG.318"
  store float %".4604", ptr %"R37_Float32"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".4607" = load i32, ptr %"R10_Int32"
  %".4608" = load i32, ptr %"R11_Int32"
  %"mul.101" = mul i32 %".4607", %".4608"
  %"add.293" = add i32 %"mul.101", %"Arg_4"
  store i32 %"add.293", ptr %"R10_Int32"
  ; LDG.E.SYS R36, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4611" = load i32, ptr %"R6_Float32_PTR"
  %".4612" = add i32 %".4611", 8
  %"for_LDG.319" = inttoptr i32 %".4612" to ptr
  %".4613" = load float, ptr %"for_LDG.319"
  store float %".4613", ptr %"R36_Float32"
  ; LDG.E.SYS R39, [R8+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R8_Float32_PTR", ptr %"R8_Int32", i32 4, i1 0)
  %".4616" = load i32, ptr %"R8_Float32_PTR"
  %".4617" = add i32 %".4616", 12
  %"for_LDG.320" = inttoptr i32 %".4617" to ptr
  %".4618" = load float, ptr %"for_LDG.320"
  store float %".4618", ptr %"R39_Float32"
  ; LDG.E.SYS R38, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4621" = load i32, ptr %"R6_Float32_PTR"
  %".4622" = add i32 %".4621", 12
  %"for_LDG.321" = inttoptr i32 %".4622" to ptr
  %".4623" = load float, ptr %"for_LDG.321"
  store float %".4623", ptr %"R38_Float32"
  ; LDG.E.SYS R41, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4626" = load i32, ptr %"R4_Float32_PTR"
  %".4627" = add i32 %".4626", 0
  %"for_LDG.322" = inttoptr i32 %".4627" to ptr
  %".4628" = load float, ptr %"for_LDG.322"
  store float %".4628", ptr %"R41_Float32"
  ; LDG.E.SYS R40, [R10]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4631" = load i32, ptr %"R10_Float32_PTR"
  %".4632" = add i32 %".4631", 0
  %"for_LDG.323" = inttoptr i32 %".4632" to ptr
  %".4633" = load float, ptr %"for_LDG.323"
  store float %".4633", ptr %"R40_Float32"
  ; LDG.E.SYS R43, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4636" = load i32, ptr %"R4_Float32_PTR"
  %".4637" = add i32 %".4636", 4
  %"for_LDG.324" = inttoptr i32 %".4637" to ptr
  %".4638" = load float, ptr %"for_LDG.324"
  store float %".4638", ptr %"R43_Float32"
  ; LDG.E.SYS R42, [R10+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4641" = load i32, ptr %"R10_Float32_PTR"
  %".4642" = add i32 %".4641", 4
  %"for_LDG.325" = inttoptr i32 %".4642" to ptr
  %".4643" = load float, ptr %"for_LDG.325"
  store float %".4643", ptr %"R42_Float32"
  ; LDG.E.SYS R45, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4646" = load i32, ptr %"R4_Float32_PTR"
  %".4647" = add i32 %".4646", 8
  %"for_LDG.326" = inttoptr i32 %".4647" to ptr
  %".4648" = load float, ptr %"for_LDG.326"
  store float %".4648", ptr %"R45_Float32"
  ; LDG.E.SYS R47, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4651" = load i32, ptr %"R4_Float32_PTR"
  %".4652" = add i32 %".4651", 12
  %"for_LDG.327" = inttoptr i32 %".4652" to ptr
  %".4653" = load float, ptr %"for_LDG.327"
  store float %".4653", ptr %"R47_Float32"
  ; LDG.E.SYS R44, [R10+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4656" = load i32, ptr %"R10_Float32_PTR"
  %".4657" = add i32 %".4656", 8
  %"for_LDG.328" = inttoptr i32 %".4657" to ptr
  %".4658" = load float, ptr %"for_LDG.328"
  store float %".4658", ptr %"R44_Float32"
  ; LDG.E.SYS R46, [R10+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_Float32_PTR", ptr %"R10_Int32", i32 4, i1 0)
  %".4661" = load i32, ptr %"R10_Float32_PTR"
  %".4662" = add i32 %".4661", 12
  %"for_LDG.329" = inttoptr i32 %".4662" to ptr
  %".4663" = load float, ptr %"for_LDG.329"
  store float %".4663", ptr %"R46_Float32"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4666" = xor i1 1, 1
  %".4667" = and i1 %".4666", 1
  %".4668" = and i1 %".4667", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".4670" = load i32, ptr %"R35_Int32"
  %"add.294" = add i32 %".4670", -8
  %"add.295" = add i32 %"add.294", 0
  store i32 %"add.295", ptr %"R35_Int32"
  ; IADD3 R34, R34, 0x8, RZ
  %".4673" = load i32, ptr %"R34_Int32"
  %"add.296" = add i32 %".4673", 8
  %"add.297" = add i32 %"add.296", 0
  store i32 %"add.297", ptr %"R34_Int32"
  ; FMUL R8, R13, R22
  %".4676" = load float, ptr %"R13_Float32"
  %".4677" = load float, ptr %"R22_Float32"
  %"fmul.275" = fmul float %".4676", %".4677"
  store float %"fmul.275", ptr %"R8_Float32"
  ; FFMA R8, R8, R12, R21
  %".4680" = load float, ptr %"R8_Float32"
  %".4681" = load float, ptr %"R12_Float32"
  %".4682" = load float, ptr %"R21_Float32"
  %"fmul.276" = fmul float %".4680", %".4681"
  %"fadd.239" = fadd float %"fmul.276", %".4682"
  store float %"fadd.239", ptr %"R8_Float32"
  ; FMUL R25, R25, R22
  %".4685" = load float, ptr %"R25_Float32"
  %".4686" = load float, ptr %"R22_Float32"
  %"fmul.277" = fmul float %".4685", %".4686"
  store float %"fmul.277", ptr %"R25_Float32"
  ; FFMA R8, R25, R24, R8
  %".4689" = load float, ptr %"R25_Float32"
  %".4690" = load float, ptr %"R24_Float32"
  %".4691" = load float, ptr %"R8_Float32"
  %"fmul.278" = fmul float %".4689", %".4690"
  %"fadd.240" = fadd float %"fmul.278", %".4691"
  store float %"fadd.240", ptr %"R8_Float32"
  ; FMUL R37, R37, R22
  %".4694" = load float, ptr %"R37_Float32"
  %".4695" = load float, ptr %"R22_Float32"
  %"fmul.279" = fmul float %".4694", %".4695"
  store float %"fmul.279", ptr %"R37_Float32"
  ; FFMA R8, R37, R36, R8
  %".4698" = load float, ptr %"R37_Float32"
  %".4699" = load float, ptr %"R36_Float32"
  %".4700" = load float, ptr %"R8_Float32"
  %"fmul.280" = fmul float %".4698", %".4699"
  %"fadd.241" = fadd float %"fmul.280", %".4700"
  store float %"fadd.241", ptr %"R8_Float32"
  ; FMUL R39, R39, R22
  %".4703" = load float, ptr %"R39_Float32"
  %".4704" = load float, ptr %"R22_Float32"
  %"fmul.281" = fmul float %".4703", %".4704"
  store float %"fmul.281", ptr %"R39_Float32"
  ; FFMA R8, R39, R38, R8
  %".4707" = load float, ptr %"R39_Float32"
  %".4708" = load float, ptr %"R38_Float32"
  %".4709" = load float, ptr %"R8_Float32"
  %"fmul.282" = fmul float %".4707", %".4708"
  %"fadd.242" = fadd float %"fmul.282", %".4709"
  store float %"fadd.242", ptr %"R8_Float32"
  ; FMUL R41, R41, R22
  %".4712" = load float, ptr %"R41_Float32"
  %".4713" = load float, ptr %"R22_Float32"
  %"fmul.283" = fmul float %".4712", %".4713"
  store float %"fmul.283", ptr %"R41_Float32"
  ; FFMA R8, R41, R40, R8
  %".4716" = load float, ptr %"R41_Float32"
  %".4717" = load float, ptr %"R40_Float32"
  %".4718" = load float, ptr %"R8_Float32"
  %"fmul.284" = fmul float %".4716", %".4717"
  %"fadd.243" = fadd float %"fmul.284", %".4718"
  store float %"fadd.243", ptr %"R8_Float32"
  ; FMUL R43, R43, R22
  %".4721" = load float, ptr %"R43_Float32"
  %".4722" = load float, ptr %"R22_Float32"
  %"fmul.285" = fmul float %".4721", %".4722"
  store float %"fmul.285", ptr %"R43_Float32"
  ; FFMA R8, R43, R42, R8
  %".4725" = load float, ptr %"R43_Float32"
  %".4726" = load float, ptr %"R42_Float32"
  %".4727" = load float, ptr %"R8_Float32"
  %"fmul.286" = fmul float %".4725", %".4726"
  %"fadd.244" = fadd float %"fmul.286", %".4727"
  store float %"fadd.244", ptr %"R8_Float32"
  ; FMUL R45, R45, R22.reuse
  %".4730" = load float, ptr %"R45_Float32"
  %".4731" = load float, ptr %"R22_Float32"
  %"fmul.287" = fmul float %".4730", %".4731"
  store float %"fmul.287", ptr %"R45_Float32"
  ; FMUL R47, R47, R22
  %".4734" = load float, ptr %"R47_Float32"
  %".4735" = load float, ptr %"R22_Float32"
  %"fmul.288" = fmul float %".4734", %".4735"
  store float %"fmul.288", ptr %"R47_Float32"
  ; FFMA R8, R45, R44, R8
  %".4738" = load float, ptr %"R45_Float32"
  %".4739" = load float, ptr %"R44_Float32"
  %".4740" = load float, ptr %"R8_Float32"
  %"fmul.289" = fmul float %".4738", %".4739"
  %"fadd.245" = fadd float %"fmul.289", %".4740"
  store float %"fadd.245", ptr %"R8_Float32"
  ; FFMA R21, R47, R46, R8
  %".4743" = load float, ptr %"R47_Float32"
  %".4744" = load float, ptr %"R46_Float32"
  %".4745" = load float, ptr %"R8_Float32"
  %"fmul.290" = fmul float %".4743", %".4744"
  %"fadd.246" = fadd float %"fmul.290", %".4745"
  store float %"fadd.246", ptr %"R21_Float32"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".4748" = load i32, ptr %"R35_Int32"
  %".4749" = load i1, ptr %"PT_Bool"
  %"cmp.50" = icmp ne i32 %".4748", 0
  %".4750" = or i1 %"cmp.50", %".4749"
  ; @!P0 BRA `(.L_x_36)
  %".4752" = load i1, ptr %"P0_Bool"
  %".4753" = icmp eq i1 %".4752", 1
  br i1 %".4753", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7_Int32"
  ; IADD3 R6, R3, R34, RZ
  %".4758" = load i32, ptr %"R3_Int32"
  %".4759" = load i32, ptr %"R34_Int32"
  %"add.298" = add i32 %".4758", %".4759"
  %"add.299" = add i32 %"add.298", 0
  store i32 %"add.299", ptr %"R6_Int32"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".4762" = load i32, ptr %"R34_Int32"
  %".4763" = load i32, ptr %"R7_Int32"
  %"mul.102" = mul i32 %".4762", %".4763"
  %"add.300" = add i32 %"mul.102", %"Arg_3"
  store i32 %"add.300", ptr %"R4_Int32"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".4766" = load i32, ptr %"R6_Int32"
  %".4767" = load i32, ptr %"R7_Int32"
  %"mul.103" = mul i32 %".4766", %".4767"
  %"add.301" = add i32 %"mul.103", %"Arg_4"
  store i32 %"add.301", ptr %"R6_Int32"
  ; LDG.E.SYS R9, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4770" = load i32, ptr %"R4_Float32_PTR"
  %".4771" = add i32 %".4770", 0
  %"for_LDG.330" = inttoptr i32 %".4771" to ptr
  %".4772" = load float, ptr %"for_LDG.330"
  store float %".4772", ptr %"R9_Float32"
  ; LDG.E.SYS R10, [R6]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4775" = load i32, ptr %"R6_Float32_PTR"
  %".4776" = add i32 %".4775", 0
  %"for_LDG.331" = inttoptr i32 %".4776" to ptr
  %".4777" = load float, ptr %"for_LDG.331"
  store float %".4777", ptr %"R10_Float32"
  ; LDG.E.SYS R11, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4780" = load i32, ptr %"R4_Float32_PTR"
  %".4781" = add i32 %".4780", 4
  %"for_LDG.332" = inttoptr i32 %".4781" to ptr
  %".4782" = load float, ptr %"for_LDG.332"
  store float %".4782", ptr %"R11_Float32"
  ; LDG.E.SYS R12, [R6+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4785" = load i32, ptr %"R6_Float32_PTR"
  %".4786" = add i32 %".4785", 4
  %"for_LDG.333" = inttoptr i32 %".4786" to ptr
  %".4787" = load float, ptr %"for_LDG.333"
  store float %".4787", ptr %"R12_Float32"
  ; LDG.E.SYS R13, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4790" = load i32, ptr %"R4_Float32_PTR"
  %".4791" = add i32 %".4790", 8
  %"for_LDG.334" = inttoptr i32 %".4791" to ptr
  %".4792" = load float, ptr %"for_LDG.334"
  store float %".4792", ptr %"R13_Float32"
  ; LDG.E.SYS R24, [R6+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4795" = load i32, ptr %"R6_Float32_PTR"
  %".4796" = add i32 %".4795", 8
  %"for_LDG.335" = inttoptr i32 %".4796" to ptr
  %".4797" = load float, ptr %"for_LDG.335"
  store float %".4797", ptr %"R24_Float32"
  ; LDG.E.SYS R25, [R4+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4800" = load i32, ptr %"R4_Float32_PTR"
  %".4801" = add i32 %".4800", 12
  %"for_LDG.336" = inttoptr i32 %".4801" to ptr
  %".4802" = load float, ptr %"for_LDG.336"
  store float %".4802", ptr %"R25_Float32"
  ; LDG.E.SYS R36, [R6+0xc]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R6_Float32_PTR", ptr %"R6_Int32", i32 4, i1 0)
  %".4805" = load i32, ptr %"R6_Float32_PTR"
  %".4806" = add i32 %".4805", 12
  %"for_LDG.337" = inttoptr i32 %".4806" to ptr
  %".4807" = load float, ptr %"for_LDG.337"
  store float %".4807", ptr %"R36_Float32"
  ; IADD3 R35, R35, -0x4, RZ
  %".4810" = load i32, ptr %"R35_Int32"
  %"add.302" = add i32 %".4810", -4
  %"add.303" = add i32 %"add.302", 0
  store i32 %"add.303", ptr %"R35_Int32"
  ; IADD3 R34, R34, 0x4, RZ
  %".4813" = load i32, ptr %"R34_Int32"
  %"add.304" = add i32 %".4813", 4
  %"add.305" = add i32 %"add.304", 0
  store i32 %"add.305", ptr %"R34_Int32"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".4816" = load i32, ptr %"R35_Int32"
  %".4817" = load i1, ptr %"PT_Bool"
  %"cmp.51" = icmp ne i32 %".4816", 0
  %".4818" = and i1 %"cmp.51", %".4817"
  ; FMUL R8, R9, R22
  %".4820" = load float, ptr %"R9_Float32"
  %".4821" = load float, ptr %"R22_Float32"
  %"fmul.291" = fmul float %".4820", %".4821"
  store float %"fmul.291", ptr %"R8_Float32"
  ; FFMA R8, R8, R10, R21
  %".4824" = load float, ptr %"R8_Float32"
  %".4825" = load float, ptr %"R10_Float32"
  %".4826" = load float, ptr %"R21_Float32"
  %"fmul.292" = fmul float %".4824", %".4825"
  %"fadd.247" = fadd float %"fmul.292", %".4826"
  store float %"fadd.247", ptr %"R8_Float32"
  ; FMUL R11, R11, R22
  %".4829" = load float, ptr %"R11_Float32"
  %".4830" = load float, ptr %"R22_Float32"
  %"fmul.293" = fmul float %".4829", %".4830"
  store float %"fmul.293", ptr %"R11_Float32"
  ; FFMA R8, R11, R12, R8
  %".4833" = load float, ptr %"R11_Float32"
  %".4834" = load float, ptr %"R12_Float32"
  %".4835" = load float, ptr %"R8_Float32"
  %"fmul.294" = fmul float %".4833", %".4834"
  %"fadd.248" = fadd float %"fmul.294", %".4835"
  store float %"fadd.248", ptr %"R8_Float32"
  ; FMUL R13, R13, R22
  %".4838" = load float, ptr %"R13_Float32"
  %".4839" = load float, ptr %"R22_Float32"
  %"fmul.295" = fmul float %".4838", %".4839"
  store float %"fmul.295", ptr %"R13_Float32"
  ; FFMA R8, R13, R24, R8
  %".4842" = load float, ptr %"R13_Float32"
  %".4843" = load float, ptr %"R24_Float32"
  %".4844" = load float, ptr %"R8_Float32"
  %"fmul.296" = fmul float %".4842", %".4843"
  %"fadd.249" = fadd float %"fmul.296", %".4844"
  store float %"fadd.249", ptr %"R8_Float32"
  ; FMUL R25, R25, R22
  %".4847" = load float, ptr %"R25_Float32"
  %".4848" = load float, ptr %"R22_Float32"
  %"fmul.297" = fmul float %".4847", %".4848"
  store float %"fmul.297", ptr %"R25_Float32"
  ; FFMA R21, R25, R36, R8
  %".4851" = load float, ptr %"R25_Float32"
  %".4852" = load float, ptr %"R36_Float32"
  %".4853" = load float, ptr %"R8_Float32"
  %"fmul.298" = fmul float %".4851", %".4852"
  %"fadd.250" = fadd float %"fmul.298", %".4853"
  store float %"fadd.250", ptr %"R21_Float32"
  ; @P0 BRA `(.L_x_37)
  %".4856" = load i1, ptr %"P0_Bool"
  %".4857" = icmp ne i1 %".4856", 1
  br i1 %".4857", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".4860" = load i32, ptr %"R48_Int32"
  %".4861" = load i1, ptr %"PT_Bool"
  %"cmp.52" = icmp ne i32 %".4860", 0
  %".4862" = and i1 %"cmp.52", %".4861"
  ; @!P0 BRA `(.L_x_35)
  %".4864" = load i1, ptr %"P0_Bool"
  %".4865" = icmp eq i1 %".4864", 1
  br i1 %".4865", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5_Int32"
  ; IADD3 R4, R3, R34, RZ
  %".4870" = load i32, ptr %"R3_Int32"
  %".4871" = load i32, ptr %"R34_Int32"
  %"add.306" = add i32 %".4870", %".4871"
  %"add.307" = add i32 %"add.306", 0
  store i32 %"add.307", ptr %"R4_Int32"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".4874" = load i32, ptr %"R34_Int32"
  %".4875" = load i32, ptr %"R5_Int32"
  %"mul.104" = mul i32 %".4874", %".4875"
  %"add.308" = add i32 %"mul.104", %"Arg_3"
  store i32 %"add.308", ptr %"R34_Int32"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".4878" = load i32, ptr %"R4_Int32"
  %".4879" = load i32, ptr %"R5_Int32"
  %"mul.105" = mul i32 %".4878", %".4879"
  %"add.309" = add i32 %"mul.105", %"Arg_4"
  store i32 %"add.309", ptr %"R4_Int32"
  ; LDG.E.SYS R7, [R34]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".4882" = load i32, ptr %"R34_Float32_PTR"
  %".4883" = add i32 %".4882", 0
  %"for_LDG.338" = inttoptr i32 %".4883" to ptr
  %".4884" = load float, ptr %"for_LDG.338"
  store float %".4884", ptr %"R7_Float32"
  ; LDG.E.SYS R8, [R4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4887" = load i32, ptr %"R4_Float32_PTR"
  %".4888" = add i32 %".4887", 0
  %"for_LDG.339" = inttoptr i32 %".4888" to ptr
  %".4889" = load float, ptr %"for_LDG.339"
  store float %".4889", ptr %"R8_Float32"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".4892" = load i32, ptr %"R48_Int32"
  %".4893" = load i1, ptr %"PT_Bool"
  %"cmp.53" = icmp ne i32 %".4892", 1
  %".4894" = and i1 %"cmp.53", %".4893"
  ; FMUL R6, R7, R22
  %".4896" = load float, ptr %"R7_Float32"
  %".4897" = load float, ptr %"R22_Float32"
  %"fmul.299" = fmul float %".4896", %".4897"
  store float %"fmul.299", ptr %"R6_Float32"
  ; FFMA R21, R6, R8, R21
  %".4900" = load float, ptr %"R6_Float32"
  %".4901" = load float, ptr %"R8_Float32"
  %".4902" = load float, ptr %"R21_Float32"
  %"fmul.300" = fmul float %".4900", %".4901"
  %"fadd.251" = fadd float %"fmul.300", %".4902"
  store float %"fadd.251", ptr %"R21_Float32"
  ; @!P0 BRA `(.L_x_35)
  %".4905" = load i1, ptr %"P0_Bool"
  %".4906" = icmp eq i1 %".4905", 1
  br i1 %".4906", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".4909" = load i32, ptr %"R48_Int32"
  %".4910" = load i1, ptr %"PT_Bool"
  %"cmp.54" = icmp ne i32 %".4909", 2
  %".4911" = and i1 %"cmp.54", %".4910"
  ; LDG.E.SYS R7, [R34+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".4913" = load i32, ptr %"R34_Float32_PTR"
  %".4914" = add i32 %".4913", 4
  %"for_LDG.340" = inttoptr i32 %".4914" to ptr
  %".4915" = load float, ptr %"for_LDG.340"
  store float %".4915", ptr %"R7_Float32"
  ; LDG.E.SYS R8, [R4+0x4]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4918" = load i32, ptr %"R4_Float32_PTR"
  %".4919" = add i32 %".4918", 4
  %"for_LDG.341" = inttoptr i32 %".4919" to ptr
  %".4920" = load float, ptr %"for_LDG.341"
  store float %".4920", ptr %"R8_Float32"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".4923" = load i1, ptr %"P0_Bool"
  %".4924" = icmp ne i1 %".4923", 1
  br i1 %".4924", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R34_Float32_PTR", ptr %"R34_Int32", i32 4, i1 0)
  %".4927" = load i32, ptr %"R34_Float32_PTR"
  %".4928" = add i32 %".4927", 8
  %"for_LDG.342" = inttoptr i32 %".4928" to ptr
  %".4929" = load float, ptr %"for_LDG.342"
  store float %".4929", ptr %"R9_Float32"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".4934" = load i1, ptr %"P0_Bool"
  %".4935" = icmp ne i1 %".4934", 1
  br i1 %".4935", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R4_Float32_PTR", ptr %"R4_Int32", i32 4, i1 0)
  %".4938" = load i32, ptr %"R4_Float32_PTR"
  %".4939" = add i32 %".4938", 8
  %"for_LDG.343" = inttoptr i32 %".4939" to ptr
  %".4940" = load float, ptr %"for_LDG.343"
  store float %".4940", ptr %"R10_Float32"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".4945" = load float, ptr %"R7_Float32"
  %".4946" = load float, ptr %"R22_Float32"
  %"fmul.301" = fmul float %".4945", %".4946"
  store float %"fmul.301", ptr %"R6_Float32"
  ; FFMA R21, R6, R8, R21
  %".4949" = load float, ptr %"R6_Float32"
  %".4950" = load float, ptr %"R8_Float32"
  %".4951" = load float, ptr %"R21_Float32"
  %"fmul.302" = fmul float %".4949", %".4950"
  %"fadd.252" = fadd float %"fmul.302", %".4951"
  store float %"fadd.252", ptr %"R21_Float32"
  ; @P0 FMUL R22, R9, R22
  %".4954" = load i1, ptr %"P0_Bool"
  %".4955" = icmp ne i1 %".4954", 1
  br i1 %".4955", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".4958" = load float, ptr %"R9_Float32"
  %".4959" = load float, ptr %"R22_Float32"
  %"fmul.303" = fmul float %".4958", %".4959"
  store float %"fmul.303", ptr %"R22_Float32"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".4964" = load i1, ptr %"P0_Bool"
  %".4965" = icmp ne i1 %".4964", 1
  br i1 %".4965", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".4968" = load float, ptr %"R22_Float32"
  %".4969" = load float, ptr %"R10_Float32"
  %".4970" = load float, ptr %"R21_Float32"
  %"fmul.304" = fmul float %".4968", %".4969"
  %"fadd.253" = fadd float %"fmul.304", %".4970"
  store float %"fadd.253", ptr %"R21_Float32"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R30_Float32_PTR", ptr %"R30_Int32", i32 4, i1 0)
  %".4975" = load i32, ptr %"R30_Float32_PTR"
  %".4976" = add i32 %".4975", 0
  %"for_LDG.344" = inttoptr i32 %".4976" to ptr
  %".4977" = load float, ptr %"for_LDG.344"
  store float %".4977", ptr %"R4_Float32"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".4982" = load float, ptr %"R4_Float32"
  %".4983" = load float, ptr %"R21_Float32"
  %"fadd.254" = fadd float %".4982", %".4983"
  store float %"fadd.254", ptr %"R21_Float32"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".4986" = load float, ptr %"R21_Float32"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".4986")
  %".4987" = load i1, ptr %"PT_Bool"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".4988" = and i1 %"fcmp_unordered.2", %".4987"
  ; @!P0 BRA `(.L_x_42)
  %".4990" = load i1, ptr %"P0_Bool"
  %".4991" = icmp eq i1 %".4990", 1
  br i1 %".4991", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".4994" = load float, ptr %"R21_Float32"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".4994")
  %"fmul.305" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  store float %"fmul.305", ptr %"R5_Float32"
  ; MOV R7, 0x3f800000
  store float 0x41cfc00000000000, ptr %"R7_Float32"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".4999" = load float, ptr %"R21_Float32"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".4999")
  %".5000" = load i1, ptr %"PT_Bool"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".5001" = and i1 %"fcmp_unordered.3", %".5000"
  ; MUFU.EX2 R5, R5
  %".5003" = load float, ptr %"R5_Float32"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".5003")
  store float %"llvm_exp2_f32_result.5", ptr %"R5_Float32"
  ; FADD R6, R5, 1
  %".5006" = load float, ptr %"R5_Float32"
  %"fadd.255" = fadd float %".5006", 0x3ff0000000000000
  store float %"fadd.255", ptr %"R6_Float32"
  ; MUFU.RCP R6, R6
  %".5009" = load float, ptr %"R6_Float32"
  %".5010" = fdiv float 0x3ff0000000000000, %".5009"
  store float %".5010", ptr %"R6_Float32"
  ; FFMA R4, R6, -2, R7
  %".5013" = load float, ptr %"R6_Float32"
  %".5014" = load float, ptr %"R7_Float32"
  %"fmul.306" = fmul float %".5013", 0xc000000000000000
  %"fadd.256" = fadd float %"fmul.306", %".5014"
  store float %"fadd.256", ptr %"R4_Float32"
  ; FSEL R4, R4, 1, !P0
  %".5017" = load float, ptr %"R4_Float32"
  %".5018" = load i1, ptr %"P0_Bool"
  %".5019" = icmp eq i1 %".5018", 1
  %"fsel.1" = select  i1 %".5019", float %".5017", float 0x3ff0000000000000
  store float %"fsel.1", ptr %"R4_Float32"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".5022" = load float, ptr %"R4_Float32"
  %".5023" = load float, ptr %"R21_Float32"
  %".5024" = or float %".5022", 0x41e0000000000000
  %".5025" = or float %".5022", %".5023"
  %".5026" = and float %".5024", %".5025"
  store float %".5026", ptr %"R4_Float32"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  store float 0x41ce407840000000, ptr %"R5_Float32"
  ; FMUL R4, R21, R21
  %".5033" = load float, ptr %"R21_Float32"
  %".5034" = load float, ptr %"R21_Float32"
  %"fmul.307" = fmul float %".5033", %".5034"
  store float %"fmul.307", ptr %"R4_Float32"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".5037" = load float, ptr %"R4_Float32"
  %".5038" = load float, ptr %"R5_Float32"
  %"fmul.308" = fmul float %".5037", %".5038"
  %"fadd.257" = fadd float %"fmul.308", 0xbfaac795c0000000
  store float %"fadd.257", ptr %"R5_Float32"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".5041" = load float, ptr %"R4_Float32"
  %".5042" = load float, ptr %"R5_Float32"
  %"fmul.309" = fmul float %".5041", %".5042"
  %"fadd.258" = fadd float %"fmul.309", 0x3fc10b2820000000
  store float %"fadd.258", ptr %"R5_Float32"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".5045" = load float, ptr %"R4_Float32"
  %".5046" = load float, ptr %"R5_Float32"
  %"fmul.310" = fmul float %".5045", %".5046"
  %"fadd.259" = fadd float %"fmul.310", 0xbfd5553da0000000
  store float %"fadd.259", ptr %"R5_Float32"
  ; FFMA R4, R4, R5, RZ
  %".5049" = load float, ptr %"R4_Float32"
  %".5050" = load float, ptr %"R5_Float32"
  %"fmul.311" = fmul float %".5049", %".5050"
  %"fadd.260" = fadd float %"fmul.311",              0x0
  store float %"fadd.260", ptr %"R4_Float32"
  ; FFMA R4, R21, R4, R21
  %".5053" = load float, ptr %"R21_Float32"
  %".5054" = load float, ptr %"R4_Float32"
  %".5055" = load float, ptr %"R21_Float32"
  %"fmul.312" = fmul float %".5053", %".5054"
  %"fadd.261" = fadd float %"fmul.312", %".5055"
  store float %"fadd.261", ptr %"R4_Float32"
.L_x_43:
  ; BSYNC B0
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R23_Int32", ptr %"R23_Float32", i32 4, i1 0)
  %".5059" = load i32, ptr %"R23_Int32"
  %"add.310" = add i32 %".5059", 25165824
  %"add.311" = add i32 %"add.310", 0
  store i32 %"add.311", ptr %"R5_Int32"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".5064" = load i32, ptr %"R5_Int32"
  %".5065" = and i32 %".5064", 2139095040
  store i32 %".5065", ptr %"R5_Int32"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".5068" = load i32, ptr %"R5_Int32"
  %".5069" = load i1, ptr %"PT_Bool"
  %"cmp.55" = icmp sgt i32 %".5068", 33554431
  %".5070" = and i1 %"cmp.55", %".5069"
  ; @P0 BRA `(.L_x_45)
  %".5072" = load i1, ptr %"P0_Bool"
  %".5073" = icmp ne i1 %".5072", 1
  br i1 %".5073", label %".L_x_45", label %".L_x_41_split_0x47f0"
.L_x_41_split_0x47f0:
  ; MOV R24, R23
  %".5076" = load float, ptr %"R23_Float32"
  store float %".5076", ptr %"R24_Float32"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10_Int32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R10_NOTYPE", ptr %"R10_Int32", i32 4, i1 0)
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.3" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R5, R22
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R22_Int32", ptr %"R22_Float32", i32 4, i1 0)
  %".5082" = load i32, ptr %"R22_Int32"
  store i32 %".5082", ptr %"R5_Int32"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".5087" = load float, ptr %"R23_Float32"
  %".5088" = fdiv float 0x3ff0000000000000, %".5087"
  store float %".5088", ptr %"R6_Float32"
  ; FFMA R5, R23, R6, -1
  %".5091" = load float, ptr %"R23_Float32"
  %".5092" = load float, ptr %"R6_Float32"
  %"fmul.313" = fmul float %".5091", %".5092"
  %"fadd.262" = fadd float %"fmul.313", 0xbff0000000000000
  store float %"fadd.262", ptr %"R5_Float32"
  ; FADD.FTZ R5, -R5, -RZ
  %".5095" = load float, ptr %"R5_Float32"
  %".5096" = sub float              0x0, %".5095"
  %"fadd.263" = fadd float %".5096",              0x0
  store float %"fadd.263", ptr %"R5_Float32"
  ; FFMA R5, R6, R5, R6
  %".5099" = load float, ptr %"R6_Float32"
  %".5100" = load float, ptr %"R5_Float32"
  %".5101" = load float, ptr %"R6_Float32"
  %"fmul.314" = fmul float %".5099", %".5100"
  %"fadd.264" = fadd float %"fmul.314", %".5101"
  store float %"fadd.264", ptr %"R5_Float32"
.L_x_46:
  ; BSYNC B0
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R28_Float32_PTR", ptr %"R28_Int32", i32 4, i1 0)
  %".5105" = load i32, ptr %"R28_Float32_PTR"
  %".5106" = add i32 %".5105", 0
  %"for_LDG.345" = inttoptr i32 %".5106" to ptr
  %".5107" = load float, ptr %"for_LDG.345"
  store float %".5107", ptr %"R6_Float32"
  ; FADD R7, -R5, 1
  %".5110" = load float, ptr %"R5_Float32"
  %".5111" = sub float              0x0, %".5110"
  %"fadd.265" = fadd float %".5111", 0x3ff0000000000000
  store float %"fadd.265", ptr %"R7_Float32"
  ; FMUL R6, R6, R5
  %".5114" = load float, ptr %"R6_Float32"
  %".5115" = load float, ptr %"R5_Float32"
  %"fmul.315" = fmul float %".5114", %".5115"
  store float %"fmul.315", ptr %"R6_Float32"
  ; FFMA R7, R7, R4, R6
  %".5118" = load float, ptr %"R7_Float32"
  %".5119" = load float, ptr %"R4_Float32"
  %".5120" = load float, ptr %"R6_Float32"
  %"fmul.316" = fmul float %".5118", %".5119"
  %"fadd.266" = fadd float %"fmul.316", %".5120"
  store float %"fadd.266", ptr %"R7_Float32"
  ; STG.E.SYS [R28], R7
  %".5123" = load float, ptr %"R7_Float32"
  call void @"llvm.memcpy.p0.p0.i32"(ptr %"R28_Float32_PTR", ptr %"R28_Int32", i32 4, i1 0)
  %".5124" = load i32, ptr %"R28_Float32_PTR"
  %".5125" = add i32 %".5124", 0
  %"for_STG.1" = inttoptr i32 %".5125" to ptr
  store float %".5123", ptr %"for_STG.1"
  ; @!P3 BRA `(.L_x_47)
  %".5128" = load i1, ptr %"P3_Bool"
  %".5129" = icmp eq i1 %".5128", 1
  br i1 %".5129", label %".L_x_47", label %".L_x_44_split_0x48f0"
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

