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
  %"R1_NOTYPE" = alloca i32, i32 8
  %"R14_NOTYPE" = alloca i32, i32 8
  %"R0_NOTYPE" = alloca i32, i32 8
  %"R3_NOTYPE" = alloca i32, i32 8
  %"P0_Bool" = alloca i1, i32 8
  %"PT_Bool" = alloca i1, i32 8
  %"RZ_NOTYPE" = alloca i32, i32 8
  %"R33_NOTYPE" = alloca i32, i32 8
  %"R15_NOTYPE" = alloca i32, i32 8
  %"R26_NOTYPE" = alloca i32, i32 8
  %"R30_NOTYPE" = alloca i32, i32 8
  %"R5_NOTYPE" = alloca i32, i32 8
  %"R28_NOTYPE" = alloca i32, i32 8
  %"R2_NOTYPE" = alloca i32, i32 8
  %"R32_NOTYPE" = alloca i32, i32 8
  %"R4_NOTYPE" = alloca i32, i32 8
  %"R6_NOTYPE" = alloca i32, i32 8
  %"R7_NOTYPE" = alloca i32, i32 8
  %"R8_NOTYPE" = alloca i32, i32 8
  %"P4_Bool" = alloca i1, i32 8
  %"P3_Bool" = alloca i1, i32 8
  %"R52_NOTYPE" = alloca i32, i32 8
  %"R54_NOTYPE" = alloca i32, i32 8
  %"R11_NOTYPE" = alloca i32, i32 8
  %"R9_NOTYPE" = alloca i32, i32 8
  %"P1_Bool" = alloca i1, i32 8
  %"R25_NOTYPE" = alloca i32, i32 8
  %"R18_NOTYPE" = alloca i32, i32 8
  %"R23_NOTYPE" = alloca i32, i32 8
  %"R38_NOTYPE" = alloca i32, i32 8
  %"R16_NOTYPE" = alloca i32, i32 8
  %"R20_NOTYPE" = alloca i32, i32 8
  %"R57_NOTYPE" = alloca i32, i32 8
  %"R56_NOTYPE" = alloca i32, i32 8
  %"R58_NOTYPE" = alloca i32, i32 8
  %"R24_NOTYPE" = alloca i32, i32 8
  %"R47_NOTYPE" = alloca i32, i32 8
  %"R49_NOTYPE" = alloca i32, i32 8
  %"R22_NOTYPE" = alloca i32, i32 8
  %"R43_NOTYPE" = alloca i32, i32 8
  %"R45_NOTYPE" = alloca i32, i32 8
  %"R13_NOTYPE" = alloca i32, i32 8
  %"R41_NOTYPE" = alloca i32, i32 8
  %"R51_NOTYPE" = alloca i32, i32 8
  %"R35_NOTYPE" = alloca i32, i32 8
  %"R40_NOTYPE" = alloca i32, i32 8
  %"R37_NOTYPE" = alloca i32, i32 8
  %"R12_NOTYPE" = alloca i32, i32 8
  %"R34_NOTYPE" = alloca i32, i32 8
  %"R10_NOTYPE" = alloca i32, i32 8
  %"R36_NOTYPE" = alloca i32, i32 8
  %"R17_NOTYPE" = alloca i32, i32 8
  %"R19_NOTYPE" = alloca i32, i32 8
  %"R21_NOTYPE" = alloca i32, i32 8
  %"R42_NOTYPE" = alloca i32, i32 8
  %"R44_NOTYPE" = alloca i32, i32 8
  %"R46_NOTYPE" = alloca i32, i32 8
  %"R48_NOTYPE" = alloca i32, i32 8
  %"R50_NOTYPE" = alloca i32, i32 8
  %"R53_NOTYPE" = alloca i32, i32 8
  %"R59_NOTYPE" = alloca i32, i32 8
  %"R55_NOTYPE" = alloca i32, i32 8
  %"R61_NOTYPE" = alloca i32, i32 8
  %"R60_NOTYPE" = alloca i32, i32 8
  %"R39_NOTYPE" = alloca i32, i32 8
  ; MOV R1, c[0x0][0x28]
  store i32 %"Arg_1", i32* %"R1_NOTYPE"
  ; S2R R14, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", i32* %"R14_NOTYPE"
  ; MOV R0, c[0x0][0x188]
  store i32 %"Arg_8", i32* %"R0_NOTYPE"
  ; S2R R3, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", i32* %"R3_NOTYPE"
  ; ISETP.GE.AND P0, PT, R0, 0x1, PT
  %".21" = load i32, i32* %"R0_NOTYPE"
  %".22" = load i1, i1* %"PT_Bool"
  %"cmp" = icmp sge i32 %".21", 1
  %".23" = and i1 %"cmp", %".22"
  store i1 %".23", i1* %"P0_Bool"
  ; IMAD R14, R14, c[0x0][0x0], R3
  %".26" = load i32, i32* %"R14_NOTYPE"
  %".27" = load i32, i32* %"R3_NOTYPE"
  %"mul" = mul i32 %".26", %"Arg_0"
  %"add" = add i32 %"mul", %".27"
  store i32 %"add", i32* %"R14_NOTYPE"
  ; ISETP.GE.OR P0, PT, R14, c[0x0][0x184], !P0
  %".30" = load i32, i32* %"R14_NOTYPE"
  %".31" = load i1, i1* %"PT_Bool"
  %"cmp.1" = icmp sge i32 %".30", %"Arg_7"
  %".32" = or i1 %"cmp.1", %".31"
  store i1 %".32", i1* %"P0_Bool"
  ; @P0 EXIT
  %".35" = load i1, i1* %"P0_Bool"
  %".36" = icmp ne i1 %".35", 1
  br i1 %".36", label %".text._Z11gru_forwardPfS_S_S_iii_conditionalExpr_0x0070", label %".text._Z11gru_forwardPfS_S_S_iii_split_0x0080"
.text._Z11gru_forwardPfS_S_S_iii_conditionalExpr_0x0070:
  ; EXIT
  br label %"ExitFunction"
.text._Z11gru_forwardPfS_S_S_iii_split_0x0080:
  ; ISETP.LT.AND P0, PT, RZ, c[0x0][0x180], PT
  %".41" = load i1, i1* %"PT_Bool"
  %"cmp.2" = icmp slt i32 0, %"Arg_6"
  %".42" = and i1 %"cmp.2", %".41"
  store i1 %".42", i1* %"P0_Bool"
  ; IMAD R0, R14.reuse, c[0x0][0x184], RZ
  %".45" = load i32, i32* %"R14_NOTYPE"
  %"mul.1" = mul i32 %".45", %"Arg_7"
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", i32* %"R0_NOTYPE"
  ; MOV R33, 0x4
  store i32 4, i32* %"R33_NOTYPE"
  ; MOV R3, c[0x0][0x184]
  store i32 %"Arg_7", i32* %"R3_NOTYPE"
  ; MOV R15, c[0x0][0x180]
  store i32 %"Arg_6", i32* %"R15_NOTYPE"
  ; IMAD.WIDE R26, R14.reuse, R33.reuse, c[0x0][0x178]
  %".54" = load i32, i32* %"R14_NOTYPE"
  %".55" = load i32, i32* %"R33_NOTYPE"
  %"mul.2" = mul i32 %".54", %".55"
  %"add.2" = add i32 %"mul.2", %"Arg_5"
  store i32 %"add.2", i32* %"R26_NOTYPE"
  ; LEA R30, R3, R14, 0x1
  %".58" = load i32, i32* %"R3_NOTYPE"
  %".59" = load i32, i32* %"R14_NOTYPE"
  %"shl" = shl i32 %".58", 1
  %"add.3" = add i32 %"shl", %".59"
  store i32 %"add.3", i32* %"R30_NOTYPE"
  ; MOV R5, c[0x0][0x184]
  store i32 %"Arg_7", i32* %"R5_NOTYPE"
  ; IMAD.WIDE R28, R14, R33, c[0x0][0x168]
  %".64" = load i32, i32* %"R14_NOTYPE"
  %".65" = load i32, i32* %"R33_NOTYPE"
  %"mul.3" = mul i32 %".64", %".65"
  %"add.4" = add i32 %"mul.3", %"Arg_3"
  store i32 %"add.4", i32* %"R28_NOTYPE"
  ; LEA R3, R15, R15, 0x2
  %".68" = load i32, i32* %"R15_NOTYPE"
  %".69" = load i32, i32* %"R15_NOTYPE"
  %"shl.1" = shl i32 %".68", 2
  %"add.5" = add i32 %"shl.1", %".69"
  store i32 %"add.5", i32* %"R3_NOTYPE"
  ; IMAD.WIDE R30, R30, R33, c[0x0][0x178]
  %".72" = load i32, i32* %"R30_NOTYPE"
  %".73" = load i32, i32* %"R33_NOTYPE"
  %"mul.4" = mul i32 %".72", %".73"
  %"add.6" = add i32 %"mul.4", %"Arg_5"
  store i32 %"add.6", i32* %"R30_NOTYPE"
  ; IMAD R2, R5, c[0x0][0x180], RZ
  %".76" = load i32, i32* %"R5_NOTYPE"
  %"mul.5" = mul i32 %".76", %"Arg_6"
  %"add.7" = add i32 %"mul.5", 0
  store i32 %"add.7", i32* %"R2_NOTYPE"
  ; IMAD R3, R3, c[0x0][0x184], R0
  %".79" = load i32, i32* %"R3_NOTYPE"
  %".80" = load i32, i32* %"R0_NOTYPE"
  %"mul.6" = mul i32 %".79", %"Arg_7"
  %"add.8" = add i32 %"mul.6", %".80"
  store i32 %"add.8", i32* %"R3_NOTYPE"
  ; IMAD.WIDE R32, R33, c[0x0][0x184], R26
  %".83" = load i32, i32* %"R33_NOTYPE"
  %".84" = load i32, i32* %"R26_NOTYPE"
  %"mul.7" = mul i32 %".83", %"Arg_7"
  %"add.9" = add i32 %"mul.7", %".84"
  store i32 %"add.9", i32* %"R32_NOTYPE"
  ; @P0 BRA `(.L_x_0)
  %".87" = load i1, i1* %"P0_Bool"
  %".88" = icmp ne i1 %".87", 1
  br i1 %".88", label %".L_x_0", label %".text._Z11gru_forwardPfS_S_S_iii_split_0x0170"
.text._Z11gru_forwardPfS_S_S_iii_split_0x0170:
  ; LOP3.LUT R4, R5.reuse, 0x3, RZ, 0xc0, !PT
  %".91" = load i32, i32* %"R5_NOTYPE"
  %".92" = and i32 %".91", 3
  store i32 %".92", i32* %"R4_NOTYPE"
  ; IADD3 R5, R5, -0x1, RZ
  %".95" = load i32, i32* %"R5_NOTYPE"
  %"add.10" = add i32 %".95", -1
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", i32* %"R5_NOTYPE"
  ; MOV R6, RZ
  %".98" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".98", i32* %"R6_NOTYPE"
  ; IADD3 R7, -R4, c[0x0][0x184], RZ
  %".101" = load i32, i32* %"R4_NOTYPE"
  %".102" = sub i32 0, %".101"
  %"add.12" = add i32 %".102", %"Arg_7"
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", i32* %"R7_NOTYPE"
.L_x_22:
  ; MOV R8, c[0x0][0x184]
  store i32 %"Arg_7", i32* %"R8_NOTYPE"
  ; IADD3 R6, R6, 0x1, RZ
  %".107" = load i32, i32* %"R6_NOTYPE"
  %"add.14" = add i32 %".107", 1
  %"add.15" = add i32 %"add.14", 0
  store i32 %"add.15", i32* %"R6_NOTYPE"
  ; ISETP.GE.AND P4, PT, R8, 0x1, PT
  %".110" = load i32, i32* %"R8_NOTYPE"
  %".111" = load i1, i1* %"PT_Bool"
  %"cmp.3" = icmp sge i32 %".110", 1
  %".112" = and i1 %"cmp.3", %".111"
  store i1 %".112", i1* %"P4_Bool"
  ; ISETP.GE.AND P3, PT, R6, c[0x0][0x188], PT
  %".115" = load i32, i32* %"R6_NOTYPE"
  %".116" = load i1, i1* %"PT_Bool"
  %"cmp.4" = icmp sge i32 %".115", %"Arg_8"
  %".117" = and i1 %"cmp.4", %".116"
  store i1 %".117", i1* %"P3_Bool"
  ; MOV R8, RZ
  %".120" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".120", i32* %"R8_NOTYPE"
  ; MOV R52, RZ
  %".123" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".123", i32* %"R52_NOTYPE"
  ; MOV R54, RZ
  %".126" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".126", i32* %"R54_NOTYPE"
  ; @!P4 BRA `(.L_x_1)
  %".129" = load i1, i1* %"P4_Bool"
  %".130" = icmp eq i1 %".129", 1
  br i1 %".130", label %".L_x_1", label %".L_x_22_split_0x0230"
.L_x_22_split_0x0230:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".133" = load i32, i32* %"R5_NOTYPE"
  %".134" = load i1, i1* %"PT_Bool"
  %"cmp.5" = icmp sge i32 %".133", 3
  %".135" = and i1 %"cmp.5", %".134"
  store i1 %".135", i1* %"P0_Bool"
  ; MOV R54, RZ
  %".138" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".138", i32* %"R54_NOTYPE"
  ; MOV R11, RZ
  %".141" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".141", i32* %"R11_NOTYPE"
  ; MOV R52, RZ
  %".144" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".144", i32* %"R52_NOTYPE"
  ; @!P0 BRA `(.L_x_2)
  %".147" = load i1, i1* %"P0_Bool"
  %".148" = icmp eq i1 %".147", 1
  br i1 %".148", label %".L_x_2", label %".L_x_22_split_0x0280"
.L_x_22_split_0x0280:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".151" = load i32, i32* %"R7_NOTYPE"
  %".152" = load i1, i1* %"PT_Bool"
  %"cmp.6" = icmp sgt i32 %".151", 0
  %".153" = and i1 %"cmp.6", %".152"
  store i1 %".153", i1* %"P0_Bool"
  ; MOV R54, RZ
  %".156" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".156", i32* %"R54_NOTYPE"
  ; MOV R11, RZ
  %".159" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".159", i32* %"R11_NOTYPE"
  ; MOV R9, R7
  %".162" = load i32, i32* %"R7_NOTYPE"
  store i32 %".162", i32* %"R9_NOTYPE"
  ; @!P0 BRA `(.L_x_3)
  %".165" = load i1, i1* %"P0_Bool"
  %".166" = icmp eq i1 %".165", 1
  br i1 %".166", label %".L_x_3", label %".L_x_22_split_0x02d0"
.L_x_22_split_0x02d0:
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".169" = load i32, i32* %"R9_NOTYPE"
  %".170" = load i1, i1* %"PT_Bool"
  %"cmp.7" = icmp sgt i32 %".169", 12
  %".171" = and i1 %"cmp.7", %".170"
  store i1 %".171", i1* %"P1_Bool"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".174" = and i1 1, 1
  %".175" = or i1 %".174", 1
  ; @!P1 BRA `(.L_x_4)
  %".177" = load i1, i1* %"P1_Bool"
  %".178" = icmp eq i1 %".177", 1
  br i1 %".178", label %".L_x_4", label %".L_x_22_split_0x0300"
.L_x_22_split_0x0300:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".181" = xor i1 1, 1
  %".182" = and i1 %".181", 1
  %".183" = and i1 %".182", 1
.L_x_5:
  ; IADD3 R25, R0, R11, RZ
  %".185" = load i32, i32* %"R0_NOTYPE"
  %".186" = load i32, i32* %"R11_NOTYPE"
  %"add.16" = add i32 %".185", %".186"
  %"add.17" = add i32 %"add.16", 0
  store i32 %"add.17", i32* %"R25_NOTYPE"
  ; MOV R18, 0x4
  store i32 4, i32* %"R18_NOTYPE"
  ; IMAD R23, R2.reuse, 0x3, R25
  %".191" = load i32, i32* %"R2_NOTYPE"
  %".192" = load i32, i32* %"R25_NOTYPE"
  %"mul.8" = mul i32 %".191", 3
  %"add.18" = add i32 %"mul.8", %".192"
  store i32 %"add.18", i32* %"R23_NOTYPE"
  ; LEA R25, R2, R25, 0x2
  %".195" = load i32, i32* %"R2_NOTYPE"
  %".196" = load i32, i32* %"R25_NOTYPE"
  %"shl.2" = shl i32 %".195", 2
  %"add.19" = add i32 %"shl.2", %".196"
  store i32 %"add.19", i32* %"R25_NOTYPE"
  ; IMAD.WIDE R38, R11, R18, c[0x0][0x168]
  %".199" = load i32, i32* %"R11_NOTYPE"
  %".200" = load i32, i32* %"R18_NOTYPE"
  %"mul.9" = mul i32 %".199", %".200"
  %"add.20" = add i32 %"mul.9", %"Arg_3"
  store i32 %"add.20", i32* %"R38_NOTYPE"
  ; IMAD.WIDE R16, R23, R18, c[0x0][0x170]
  %".203" = load i32, i32* %"R23_NOTYPE"
  %".204" = load i32, i32* %"R18_NOTYPE"
  %"mul.10" = mul i32 %".203", %".204"
  %"add.21" = add i32 %"mul.10", %"Arg_4"
  store i32 %"add.21", i32* %"R16_NOTYPE"
  ; IMAD.WIDE R20, R25, R18, c[0x0][0x170]
  %".207" = load i32, i32* %"R25_NOTYPE"
  %".208" = load i32, i32* %"R18_NOTYPE"
  %"mul.11" = mul i32 %".207", %".208"
  %"add.22" = add i32 %"mul.11", %"Arg_4"
  store i32 %"add.22", i32* %"R20_NOTYPE"
  ; LDG.E.SYS R57, [R38]
  %".211" = load i32, i32* %"R38_NOTYPE"
  %".212" = add i32 %".211", 0
  %"for_LDG" = inttoptr i32 %".212" to i32*
  %".213" = load i32, i32* %"for_LDG"
  store i32 %".213", i32* %"R57_NOTYPE"
  ; LDG.E.SYS R56, [R16]
  %".216" = load i32, i32* %"R16_NOTYPE"
  %".217" = add i32 %".216", 0
  %"for_LDG.1" = inttoptr i32 %".217" to i32*
  %".218" = load i32, i32* %"for_LDG.1"
  store i32 %".218", i32* %"R56_NOTYPE"
  ; LDG.E.SYS R58, [R20]
  %".221" = load i32, i32* %"R20_NOTYPE"
  %".222" = add i32 %".221", 0
  %"for_LDG.2" = inttoptr i32 %".222" to i32*
  %".223" = load i32, i32* %"for_LDG.2"
  store i32 %".223", i32* %"R58_NOTYPE"
  ; LDG.E.SYS R24, [R38+0x4]
  %".226" = load i32, i32* %"R38_NOTYPE"
  %".227" = add i32 %".226", 4
  %"for_LDG.3" = inttoptr i32 %".227" to i32*
  %".228" = load i32, i32* %"for_LDG.3"
  store i32 %".228", i32* %"R24_NOTYPE"
  ; LDG.E.SYS R47, [R16+0x4]
  %".231" = load i32, i32* %"R16_NOTYPE"
  %".232" = add i32 %".231", 4
  %"for_LDG.4" = inttoptr i32 %".232" to i32*
  %".233" = load i32, i32* %"for_LDG.4"
  store i32 %".233", i32* %"R47_NOTYPE"
  ; LDG.E.SYS R49, [R20+0x4]
  %".236" = load i32, i32* %"R20_NOTYPE"
  %".237" = add i32 %".236", 4
  %"for_LDG.5" = inttoptr i32 %".237" to i32*
  %".238" = load i32, i32* %"for_LDG.5"
  store i32 %".238", i32* %"R49_NOTYPE"
  ; LDG.E.SYS R22, [R38+0x8]
  %".241" = load i32, i32* %"R38_NOTYPE"
  %".242" = add i32 %".241", 8
  %"for_LDG.6" = inttoptr i32 %".242" to i32*
  %".243" = load i32, i32* %"for_LDG.6"
  store i32 %".243", i32* %"R22_NOTYPE"
  ; LDG.E.SYS R43, [R16+0x8]
  %".246" = load i32, i32* %"R16_NOTYPE"
  %".247" = add i32 %".246", 8
  %"for_LDG.7" = inttoptr i32 %".247" to i32*
  %".248" = load i32, i32* %"for_LDG.7"
  store i32 %".248", i32* %"R43_NOTYPE"
  ; LDG.E.SYS R45, [R20+0x8]
  %".251" = load i32, i32* %"R20_NOTYPE"
  %".252" = add i32 %".251", 8
  %"for_LDG.8" = inttoptr i32 %".252" to i32*
  %".253" = load i32, i32* %"for_LDG.8"
  store i32 %".253", i32* %"R45_NOTYPE"
  ; LDG.E.SYS R15, [R38+0xc]
  %".256" = load i32, i32* %"R38_NOTYPE"
  %".257" = add i32 %".256", 12
  %"for_LDG.9" = inttoptr i32 %".257" to i32*
  %".258" = load i32, i32* %"for_LDG.9"
  store i32 %".258", i32* %"R15_NOTYPE"
  ; LDG.E.SYS R14, [R16+0xc]
  %".261" = load i32, i32* %"R16_NOTYPE"
  %".262" = add i32 %".261", 12
  %"for_LDG.10" = inttoptr i32 %".262" to i32*
  %".263" = load i32, i32* %"for_LDG.10"
  store i32 %".263", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R13, [R20+0xc]
  %".266" = load i32, i32* %"R20_NOTYPE"
  %".267" = add i32 %".266", 12
  %"for_LDG.11" = inttoptr i32 %".267" to i32*
  %".268" = load i32, i32* %"for_LDG.11"
  store i32 %".268", i32* %"R13_NOTYPE"
  ; IADD3 R41, R11, 0x4, RZ
  %".271" = load i32, i32* %"R11_NOTYPE"
  %"add.23" = add i32 %".271", 4
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", i32* %"R41_NOTYPE"
  ; IADD3 R51, R23, 0x4, RZ
  %".274" = load i32, i32* %"R23_NOTYPE"
  %"add.25" = add i32 %".274", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", i32* %"R51_NOTYPE"
  ; IADD3 R35, R11, 0x8, RZ
  %".277" = load i32, i32* %"R11_NOTYPE"
  %"add.27" = add i32 %".277", 8
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", i32* %"R35_NOTYPE"
  ; IMAD.WIDE R40, R41, R18, c[0x0][0x168]
  %".280" = load i32, i32* %"R41_NOTYPE"
  %".281" = load i32, i32* %"R18_NOTYPE"
  %"mul.12" = mul i32 %".280", %".281"
  %"add.29" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.29", i32* %"R40_NOTYPE"
  ; IADD3 R37, R11, 0xc, RZ
  %".284" = load i32, i32* %"R11_NOTYPE"
  %"add.30" = add i32 %".284", 12
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", i32* %"R37_NOTYPE"
  ; IMAD.WIDE R38, R51, R18, c[0x0][0x170]
  %".287" = load i32, i32* %"R51_NOTYPE"
  %".288" = load i32, i32* %"R18_NOTYPE"
  %"mul.13" = mul i32 %".287", %".288"
  %"add.32" = add i32 %"mul.13", %"Arg_4"
  store i32 %"add.32", i32* %"R38_NOTYPE"
  ; IADD3 R51, R25, 0x4, RZ
  %".291" = load i32, i32* %"R25_NOTYPE"
  %"add.33" = add i32 %".291", 4
  %"add.34" = add i32 %"add.33", 0
  store i32 %"add.34", i32* %"R51_NOTYPE"
  ; LDG.E.SYS R12, [R40]
  %".294" = load i32, i32* %"R40_NOTYPE"
  %".295" = add i32 %".294", 0
  %"for_LDG.12" = inttoptr i32 %".295" to i32*
  %".296" = load i32, i32* %"for_LDG.12"
  store i32 %".296", i32* %"R12_NOTYPE"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x168]
  %".299" = load i32, i32* %"R35_NOTYPE"
  %".300" = load i32, i32* %"R18_NOTYPE"
  %"mul.14" = mul i32 %".299", %".300"
  %"add.35" = add i32 %"mul.14", %"Arg_3"
  store i32 %"add.35", i32* %"R34_NOTYPE"
  ; LDG.E.SYS R10, [R40+0x4]
  %".303" = load i32, i32* %"R40_NOTYPE"
  %".304" = add i32 %".303", 4
  %"for_LDG.13" = inttoptr i32 %".304" to i32*
  %".305" = load i32, i32* %"for_LDG.13"
  store i32 %".305", i32* %"R10_NOTYPE"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x168]
  %".308" = load i32, i32* %"R37_NOTYPE"
  %".309" = load i32, i32* %"R18_NOTYPE"
  %"mul.15" = mul i32 %".308", %".309"
  %"add.36" = add i32 %"mul.15", %"Arg_3"
  store i32 %"add.36", i32* %"R36_NOTYPE"
  ; LDG.E.SYS R16, [R40+0x8]
  %".312" = load i32, i32* %"R40_NOTYPE"
  %".313" = add i32 %".312", 8
  %"for_LDG.14" = inttoptr i32 %".313" to i32*
  %".314" = load i32, i32* %"for_LDG.14"
  store i32 %".314", i32* %"R16_NOTYPE"
  ; LDG.E.SYS R17, [R40+0xc]
  %".317" = load i32, i32* %"R40_NOTYPE"
  %".318" = add i32 %".317", 12
  %"for_LDG.15" = inttoptr i32 %".318" to i32*
  %".319" = load i32, i32* %"for_LDG.15"
  store i32 %".319", i32* %"R17_NOTYPE"
  ; LDG.E.SYS R19, [R34]
  %".322" = load i32, i32* %"R34_NOTYPE"
  %".323" = add i32 %".322", 0
  %"for_LDG.16" = inttoptr i32 %".323" to i32*
  %".324" = load i32, i32* %"for_LDG.16"
  store i32 %".324", i32* %"R19_NOTYPE"
  ; LDG.E.SYS R20, [R34+0x4]
  %".327" = load i32, i32* %"R34_NOTYPE"
  %".328" = add i32 %".327", 4
  %"for_LDG.17" = inttoptr i32 %".328" to i32*
  %".329" = load i32, i32* %"for_LDG.17"
  store i32 %".329", i32* %"R20_NOTYPE"
  ; IMAD.WIDE R40, R51, R18, c[0x0][0x170]
  %".332" = load i32, i32* %"R51_NOTYPE"
  %".333" = load i32, i32* %"R18_NOTYPE"
  %"mul.16" = mul i32 %".332", %".333"
  %"add.37" = add i32 %"mul.16", %"Arg_4"
  store i32 %"add.37", i32* %"R40_NOTYPE"
  ; LDG.E.SYS R51, [R38]
  %".336" = load i32, i32* %"R38_NOTYPE"
  %".337" = add i32 %".336", 0
  %"for_LDG.18" = inttoptr i32 %".337" to i32*
  %".338" = load i32, i32* %"for_LDG.18"
  store i32 %".338", i32* %"R51_NOTYPE"
  ; LDG.E.SYS R21, [R34+0x8]
  %".341" = load i32, i32* %"R34_NOTYPE"
  %".342" = add i32 %".341", 8
  %"for_LDG.19" = inttoptr i32 %".342" to i32*
  %".343" = load i32, i32* %"for_LDG.19"
  store i32 %".343", i32* %"R21_NOTYPE"
  ; LDG.E.SYS R42, [R34+0xc]
  %".346" = load i32, i32* %"R34_NOTYPE"
  %".347" = add i32 %".346", 12
  %"for_LDG.20" = inttoptr i32 %".347" to i32*
  %".348" = load i32, i32* %"for_LDG.20"
  store i32 %".348", i32* %"R42_NOTYPE"
  ; LDG.E.SYS R44, [R36]
  %".351" = load i32, i32* %"R36_NOTYPE"
  %".352" = add i32 %".351", 0
  %"for_LDG.21" = inttoptr i32 %".352" to i32*
  %".353" = load i32, i32* %"for_LDG.21"
  store i32 %".353", i32* %"R44_NOTYPE"
  ; LDG.E.SYS R46, [R36+0x4]
  %".356" = load i32, i32* %"R36_NOTYPE"
  %".357" = add i32 %".356", 4
  %"for_LDG.22" = inttoptr i32 %".357" to i32*
  %".358" = load i32, i32* %"for_LDG.22"
  store i32 %".358", i32* %"R46_NOTYPE"
  ; IADD3 R35, R23, 0x8, RZ
  %".361" = load i32, i32* %"R23_NOTYPE"
  %"add.38" = add i32 %".361", 8
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", i32* %"R35_NOTYPE"
  ; LDG.E.SYS R48, [R36+0x8]
  %".364" = load i32, i32* %"R36_NOTYPE"
  %".365" = add i32 %".364", 8
  %"for_LDG.23" = inttoptr i32 %".365" to i32*
  %".366" = load i32, i32* %"for_LDG.23"
  store i32 %".366", i32* %"R48_NOTYPE"
  ; LDG.E.SYS R50, [R36+0xc]
  %".369" = load i32, i32* %"R36_NOTYPE"
  %".370" = add i32 %".369", 12
  %"for_LDG.24" = inttoptr i32 %".370" to i32*
  %".371" = load i32, i32* %"for_LDG.24"
  store i32 %".371", i32* %"R50_NOTYPE"
  ; LDG.E.SYS R53, [R38+0x4]
  %".374" = load i32, i32* %"R38_NOTYPE"
  %".375" = add i32 %".374", 4
  %"for_LDG.25" = inttoptr i32 %".375" to i32*
  %".376" = load i32, i32* %"for_LDG.25"
  store i32 %".376", i32* %"R53_NOTYPE"
  ; LDG.E.SYS R59, [R40+0x4]
  %".379" = load i32, i32* %"R40_NOTYPE"
  %".380" = add i32 %".379", 4
  %"for_LDG.26" = inttoptr i32 %".380" to i32*
  %".381" = load i32, i32* %"for_LDG.26"
  store i32 %".381", i32* %"R59_NOTYPE"
  ; IADD3 R37, R25, 0x8, RZ
  %".384" = load i32, i32* %"R25_NOTYPE"
  %"add.40" = add i32 %".384", 8
  %"add.41" = add i32 %"add.40", 0
  store i32 %"add.41", i32* %"R37_NOTYPE"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x170]
  %".387" = load i32, i32* %"R35_NOTYPE"
  %".388" = load i32, i32* %"R18_NOTYPE"
  %"mul.17" = mul i32 %".387", %".388"
  %"add.42" = add i32 %"mul.17", %"Arg_4"
  store i32 %"add.42", i32* %"R34_NOTYPE"
  ; LDG.E.SYS R55, [R38+0x8]
  %".391" = load i32, i32* %"R38_NOTYPE"
  %".392" = add i32 %".391", 8
  %"for_LDG.27" = inttoptr i32 %".392" to i32*
  %".393" = load i32, i32* %"for_LDG.27"
  store i32 %".393", i32* %"R55_NOTYPE"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x170]
  %".396" = load i32, i32* %"R37_NOTYPE"
  %".397" = load i32, i32* %"R18_NOTYPE"
  %"mul.18" = mul i32 %".396", %".397"
  %"add.43" = add i32 %"mul.18", %"Arg_4"
  store i32 %"add.43", i32* %"R36_NOTYPE"
  ; LDG.E.SYS R61, [R40+0x8]
  %".400" = load i32, i32* %"R40_NOTYPE"
  %".401" = add i32 %".400", 8
  %"for_LDG.28" = inttoptr i32 %".401" to i32*
  %".402" = load i32, i32* %"for_LDG.28"
  store i32 %".402", i32* %"R61_NOTYPE"
  ; LDG.E.SYS R60, [R38+0xc]
  %".405" = load i32, i32* %"R38_NOTYPE"
  %".406" = add i32 %".405", 12
  %"for_LDG.29" = inttoptr i32 %".406" to i32*
  %".407" = load i32, i32* %"for_LDG.29"
  store i32 %".407", i32* %"R60_NOTYPE"
  ; IADD3 R23, R23, 0xc, RZ
  %".410" = load i32, i32* %"R23_NOTYPE"
  %"add.44" = add i32 %".410", 12
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", i32* %"R23_NOTYPE"
  ; IADD3 R25, R25, 0xc, RZ
  %".413" = load i32, i32* %"R25_NOTYPE"
  %"add.46" = add i32 %".413", 12
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", i32* %"R25_NOTYPE"
  ; LDG.E.SYS R39, [R34+0x4]
  %".416" = load i32, i32* %"R34_NOTYPE"
  %".417" = add i32 %".416", 4
  %"for_LDG.30" = inttoptr i32 %".417" to i32*
  %".418" = load i32, i32* %"for_LDG.30"
  store i32 %".418", i32* %"R39_NOTYPE"
  ; LDG.E.SYS R38, [R34+0x8]
  %".421" = load i32, i32* %"R34_NOTYPE"
  %".422" = add i32 %".421", 8
  %"for_LDG.31" = inttoptr i32 %".422" to i32*
  %".423" = load i32, i32* %"for_LDG.31"
  store i32 %".423", i32* %"R38_NOTYPE"
  ; FFMA R56, R56, R57, R52
  %".426" = load i32, i32* %"R56_NOTYPE"
  %".427" = load i32, i32* %"R57_NOTYPE"
  %".428" = load i32, i32* %"R52_NOTYPE"
  %"fmul" = fmul i32 %".426", %".427"
  %"fadd" = fadd i32 %"fmul", %".428"
  store i32 %"fadd", i32* %"R56_NOTYPE"
  ; LDG.E.SYS R52, [R40+0xc]
  %".431" = load i32, i32* %"R40_NOTYPE"
  %".432" = add i32 %".431", 12
  %"for_LDG.32" = inttoptr i32 %".432" to i32*
  %".433" = load i32, i32* %"for_LDG.32"
  store i32 %".433", i32* %"R52_NOTYPE"
  ; FFMA R58, R57, R58, R54
  %".436" = load i32, i32* %"R57_NOTYPE"
  %".437" = load i32, i32* %"R58_NOTYPE"
  %".438" = load i32, i32* %"R54_NOTYPE"
  %"fmul.1" = fmul i32 %".436", %".437"
  %"fadd.1" = fadd i32 %"fmul.1", %".438"
  store i32 %"fadd.1", i32* %"R58_NOTYPE"
  ; LDG.E.SYS R57, [R40]
  %".441" = load i32, i32* %"R40_NOTYPE"
  %".442" = add i32 %".441", 0
  %"for_LDG.33" = inttoptr i32 %".442" to i32*
  %".443" = load i32, i32* %"for_LDG.33"
  store i32 %".443", i32* %"R57_NOTYPE"
  ; LDG.E.SYS R54, [R34]
  %".446" = load i32, i32* %"R34_NOTYPE"
  %".447" = add i32 %".446", 0
  %"for_LDG.34" = inttoptr i32 %".447" to i32*
  %".448" = load i32, i32* %"for_LDG.34"
  store i32 %".448", i32* %"R54_NOTYPE"
  ; FFMA R56, R47, R24, R56
  %".451" = load i32, i32* %"R47_NOTYPE"
  %".452" = load i32, i32* %"R24_NOTYPE"
  %".453" = load i32, i32* %"R56_NOTYPE"
  %"fmul.2" = fmul i32 %".451", %".452"
  %"fadd.2" = fadd i32 %"fmul.2", %".453"
  store i32 %"fadd.2", i32* %"R56_NOTYPE"
  ; LDG.E.SYS R47, [R34+0xc]
  %".456" = load i32, i32* %"R34_NOTYPE"
  %".457" = add i32 %".456", 12
  %"for_LDG.35" = inttoptr i32 %".457" to i32*
  %".458" = load i32, i32* %"for_LDG.35"
  store i32 %".458", i32* %"R47_NOTYPE"
  ; FFMA R58, R24, R49, R58
  %".461" = load i32, i32* %"R24_NOTYPE"
  %".462" = load i32, i32* %"R49_NOTYPE"
  %".463" = load i32, i32* %"R58_NOTYPE"
  %"fmul.3" = fmul i32 %".461", %".462"
  %"fadd.3" = fadd i32 %"fmul.3", %".463"
  store i32 %"fadd.3", i32* %"R58_NOTYPE"
  ; LDG.E.SYS R41, [R36+0x4]
  %".466" = load i32, i32* %"R36_NOTYPE"
  %".467" = add i32 %".466", 4
  %"for_LDG.36" = inttoptr i32 %".467" to i32*
  %".468" = load i32, i32* %"for_LDG.36"
  store i32 %".468", i32* %"R41_NOTYPE"
  ; LDG.E.SYS R40, [R36+0x8]
  %".471" = load i32, i32* %"R36_NOTYPE"
  %".472" = add i32 %".471", 8
  %"for_LDG.37" = inttoptr i32 %".472" to i32*
  %".473" = load i32, i32* %"for_LDG.37"
  store i32 %".473", i32* %"R40_NOTYPE"
  ; FFMA R49, R43, R22, R56
  %".476" = load i32, i32* %"R43_NOTYPE"
  %".477" = load i32, i32* %"R22_NOTYPE"
  %".478" = load i32, i32* %"R56_NOTYPE"
  %"fmul.4" = fmul i32 %".476", %".477"
  %"fadd.4" = fadd i32 %"fmul.4", %".478"
  store i32 %"fadd.4", i32* %"R49_NOTYPE"
  ; LDG.E.SYS R56, [R36]
  %".481" = load i32, i32* %"R36_NOTYPE"
  %".482" = add i32 %".481", 0
  %"for_LDG.38" = inttoptr i32 %".482" to i32*
  %".483" = load i32, i32* %"for_LDG.38"
  store i32 %".483", i32* %"R56_NOTYPE"
  ; IMAD.WIDE R24, R25, R18, c[0x0][0x170]
  %".486" = load i32, i32* %"R25_NOTYPE"
  %".487" = load i32, i32* %"R18_NOTYPE"
  %"mul.19" = mul i32 %".486", %".487"
  %"add.48" = add i32 %"mul.19", %"Arg_4"
  store i32 %"add.48", i32* %"R24_NOTYPE"
  ; LDG.E.SYS R43, [R36+0xc]
  %".490" = load i32, i32* %"R36_NOTYPE"
  %".491" = add i32 %".490", 12
  %"for_LDG.39" = inttoptr i32 %".491" to i32*
  %".492" = load i32, i32* %"for_LDG.39"
  store i32 %".492", i32* %"R43_NOTYPE"
  ; FFMA R58, R22, R45, R58
  %".495" = load i32, i32* %"R22_NOTYPE"
  %".496" = load i32, i32* %"R45_NOTYPE"
  %".497" = load i32, i32* %"R58_NOTYPE"
  %"fmul.5" = fmul i32 %".495", %".496"
  %"fadd.5" = fadd i32 %"fmul.5", %".497"
  store i32 %"fadd.5", i32* %"R58_NOTYPE"
  ; IMAD.WIDE R22, R23, R18, c[0x0][0x170]
  %".500" = load i32, i32* %"R23_NOTYPE"
  %".501" = load i32, i32* %"R18_NOTYPE"
  %"mul.20" = mul i32 %".500", %".501"
  %"add.49" = add i32 %"mul.20", %"Arg_4"
  store i32 %"add.49", i32* %"R22_NOTYPE"
  ; LDG.E.SYS R18, [R24]
  %".504" = load i32, i32* %"R24_NOTYPE"
  %".505" = add i32 %".504", 0
  %"for_LDG.40" = inttoptr i32 %".505" to i32*
  %".506" = load i32, i32* %"for_LDG.40"
  store i32 %".506", i32* %"R18_NOTYPE"
  ; FFMA R14, R14, R15, R49
  %".509" = load i32, i32* %"R14_NOTYPE"
  %".510" = load i32, i32* %"R15_NOTYPE"
  %".511" = load i32, i32* %"R49_NOTYPE"
  %"fmul.6" = fmul i32 %".509", %".510"
  %"fadd.6" = fadd i32 %"fmul.6", %".511"
  store i32 %"fadd.6", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R49, [R24+0x4]
  %".514" = load i32, i32* %"R24_NOTYPE"
  %".515" = add i32 %".514", 4
  %"for_LDG.41" = inttoptr i32 %".515" to i32*
  %".516" = load i32, i32* %"for_LDG.41"
  store i32 %".516", i32* %"R49_NOTYPE"
  ; FFMA R58, R15, R13, R58
  %".519" = load i32, i32* %"R15_NOTYPE"
  %".520" = load i32, i32* %"R13_NOTYPE"
  %".521" = load i32, i32* %"R58_NOTYPE"
  %"fmul.7" = fmul i32 %".519", %".520"
  %"fadd.7" = fadd i32 %"fmul.7", %".521"
  store i32 %"fadd.7", i32* %"R58_NOTYPE"
  ; LDG.E.SYS R35, [R22]
  %".524" = load i32, i32* %"R22_NOTYPE"
  %".525" = add i32 %".524", 0
  %"for_LDG.42" = inttoptr i32 %".525" to i32*
  %".526" = load i32, i32* %"for_LDG.42"
  store i32 %".526", i32* %"R35_NOTYPE"
  ; LDG.E.SYS R15, [R22+0x4]
  %".529" = load i32, i32* %"R22_NOTYPE"
  %".530" = add i32 %".529", 4
  %"for_LDG.43" = inttoptr i32 %".530" to i32*
  %".531" = load i32, i32* %"for_LDG.43"
  store i32 %".531", i32* %"R15_NOTYPE"
  ; LDG.E.SYS R13, [R22+0x8]
  %".534" = load i32, i32* %"R22_NOTYPE"
  %".535" = add i32 %".534", 8
  %"for_LDG.44" = inttoptr i32 %".535" to i32*
  %".536" = load i32, i32* %"for_LDG.44"
  store i32 %".536", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R37, [R24+0x8]
  %".539" = load i32, i32* %"R24_NOTYPE"
  %".540" = add i32 %".539", 8
  %"for_LDG.45" = inttoptr i32 %".540" to i32*
  %".541" = load i32, i32* %"for_LDG.45"
  store i32 %".541", i32* %"R37_NOTYPE"
  ; LDG.E.SYS R45, [R22+0xc]
  %".544" = load i32, i32* %"R22_NOTYPE"
  %".545" = add i32 %".544", 12
  %"for_LDG.46" = inttoptr i32 %".545" to i32*
  %".546" = load i32, i32* %"for_LDG.46"
  store i32 %".546", i32* %"R45_NOTYPE"
  ; LDG.E.SYS R34, [R24+0xc]
  %".549" = load i32, i32* %"R24_NOTYPE"
  %".550" = add i32 %".549", 12
  %"for_LDG.47" = inttoptr i32 %".550" to i32*
  %".551" = load i32, i32* %"for_LDG.47"
  store i32 %".551", i32* %"R34_NOTYPE"
  ; FFMA R14, R51, R12, R14
  %".554" = load i32, i32* %"R51_NOTYPE"
  %".555" = load i32, i32* %"R12_NOTYPE"
  %".556" = load i32, i32* %"R14_NOTYPE"
  %"fmul.8" = fmul i32 %".554", %".555"
  %"fadd.8" = fadd i32 %"fmul.8", %".556"
  store i32 %"fadd.8", i32* %"R14_NOTYPE"
  ; IADD3 R9, R9, -0x10, RZ
  %".559" = load i32, i32* %"R9_NOTYPE"
  %"add.50" = add i32 %".559", -16
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", i32* %"R9_NOTYPE"
  ; FFMA R14, R53, R10, R14
  %".562" = load i32, i32* %"R53_NOTYPE"
  %".563" = load i32, i32* %"R10_NOTYPE"
  %".564" = load i32, i32* %"R14_NOTYPE"
  %"fmul.9" = fmul i32 %".562", %".563"
  %"fadd.9" = fadd i32 %"fmul.9", %".564"
  store i32 %"fadd.9", i32* %"R14_NOTYPE"
  ; FFMA R14, R55, R16, R14
  %".567" = load i32, i32* %"R55_NOTYPE"
  %".568" = load i32, i32* %"R16_NOTYPE"
  %".569" = load i32, i32* %"R14_NOTYPE"
  %"fmul.10" = fmul i32 %".567", %".568"
  %"fadd.10" = fadd i32 %"fmul.10", %".569"
  store i32 %"fadd.10", i32* %"R14_NOTYPE"
  ; FFMA R14, R60, R17, R14
  %".572" = load i32, i32* %"R60_NOTYPE"
  %".573" = load i32, i32* %"R17_NOTYPE"
  %".574" = load i32, i32* %"R14_NOTYPE"
  %"fmul.11" = fmul i32 %".572", %".573"
  %"fadd.11" = fadd i32 %"fmul.11", %".574"
  store i32 %"fadd.11", i32* %"R14_NOTYPE"
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".577" = load i32, i32* %"R9_NOTYPE"
  %".578" = load i1, i1* %"PT_Bool"
  %"cmp.8" = icmp sgt i32 %".577", 12
  %".579" = and i1 %"cmp.8", %".578"
  store i1 %".579", i1* %"P1_Bool"
  ; IADD3 R11, R11, 0x10, RZ
  %".582" = load i32, i32* %"R11_NOTYPE"
  %"add.52" = add i32 %".582", 16
  %"add.53" = add i32 %"add.52", 0
  store i32 %"add.53", i32* %"R11_NOTYPE"
  ; FFMA R57, R12, R57, R58
  %".585" = load i32, i32* %"R12_NOTYPE"
  %".586" = load i32, i32* %"R57_NOTYPE"
  %".587" = load i32, i32* %"R58_NOTYPE"
  %"fmul.12" = fmul i32 %".585", %".586"
  %"fadd.12" = fadd i32 %"fmul.12", %".587"
  store i32 %"fadd.12", i32* %"R57_NOTYPE"
  ; FFMA R57, R10, R59, R57
  %".590" = load i32, i32* %"R10_NOTYPE"
  %".591" = load i32, i32* %"R59_NOTYPE"
  %".592" = load i32, i32* %"R57_NOTYPE"
  %"fmul.13" = fmul i32 %".590", %".591"
  %"fadd.13" = fadd i32 %"fmul.13", %".592"
  store i32 %"fadd.13", i32* %"R57_NOTYPE"
  ; FFMA R57, R16, R61, R57
  %".595" = load i32, i32* %"R16_NOTYPE"
  %".596" = load i32, i32* %"R61_NOTYPE"
  %".597" = load i32, i32* %"R57_NOTYPE"
  %"fmul.14" = fmul i32 %".595", %".596"
  %"fadd.14" = fadd i32 %"fmul.14", %".597"
  store i32 %"fadd.14", i32* %"R57_NOTYPE"
  ; FFMA R52, R17, R52, R57
  %".600" = load i32, i32* %"R17_NOTYPE"
  %".601" = load i32, i32* %"R52_NOTYPE"
  %".602" = load i32, i32* %"R57_NOTYPE"
  %"fmul.15" = fmul i32 %".600", %".601"
  %"fadd.15" = fadd i32 %"fmul.15", %".602"
  store i32 %"fadd.15", i32* %"R52_NOTYPE"
  ; FFMA R14, R54, R19, R14
  %".605" = load i32, i32* %"R54_NOTYPE"
  %".606" = load i32, i32* %"R19_NOTYPE"
  %".607" = load i32, i32* %"R14_NOTYPE"
  %"fmul.16" = fmul i32 %".605", %".606"
  %"fadd.16" = fadd i32 %"fmul.16", %".607"
  store i32 %"fadd.16", i32* %"R14_NOTYPE"
  ; FFMA R52, R19, R56, R52
  %".610" = load i32, i32* %"R19_NOTYPE"
  %".611" = load i32, i32* %"R56_NOTYPE"
  %".612" = load i32, i32* %"R52_NOTYPE"
  %"fmul.17" = fmul i32 %".610", %".611"
  %"fadd.17" = fadd i32 %"fmul.17", %".612"
  store i32 %"fadd.17", i32* %"R52_NOTYPE"
  ; FFMA R14, R39, R20, R14
  %".615" = load i32, i32* %"R39_NOTYPE"
  %".616" = load i32, i32* %"R20_NOTYPE"
  %".617" = load i32, i32* %"R14_NOTYPE"
  %"fmul.18" = fmul i32 %".615", %".616"
  %"fadd.18" = fadd i32 %"fmul.18", %".617"
  store i32 %"fadd.18", i32* %"R14_NOTYPE"
  ; FFMA R41, R20, R41, R52
  %".620" = load i32, i32* %"R20_NOTYPE"
  %".621" = load i32, i32* %"R41_NOTYPE"
  %".622" = load i32, i32* %"R52_NOTYPE"
  %"fmul.19" = fmul i32 %".620", %".621"
  %"fadd.19" = fadd i32 %"fmul.19", %".622"
  store i32 %"fadd.19", i32* %"R41_NOTYPE"
  ; FFMA R14, R38, R21, R14
  %".625" = load i32, i32* %"R38_NOTYPE"
  %".626" = load i32, i32* %"R21_NOTYPE"
  %".627" = load i32, i32* %"R14_NOTYPE"
  %"fmul.20" = fmul i32 %".625", %".626"
  %"fadd.20" = fadd i32 %"fmul.20", %".627"
  store i32 %"fadd.20", i32* %"R14_NOTYPE"
  ; FFMA R40, R21, R40, R41
  %".630" = load i32, i32* %"R21_NOTYPE"
  %".631" = load i32, i32* %"R40_NOTYPE"
  %".632" = load i32, i32* %"R41_NOTYPE"
  %"fmul.21" = fmul i32 %".630", %".631"
  %"fadd.21" = fadd i32 %"fmul.21", %".632"
  store i32 %"fadd.21", i32* %"R40_NOTYPE"
  ; FFMA R14, R47, R42, R14
  %".635" = load i32, i32* %"R47_NOTYPE"
  %".636" = load i32, i32* %"R42_NOTYPE"
  %".637" = load i32, i32* %"R14_NOTYPE"
  %"fmul.22" = fmul i32 %".635", %".636"
  %"fadd.22" = fadd i32 %"fmul.22", %".637"
  store i32 %"fadd.22", i32* %"R14_NOTYPE"
  ; FFMA R43, R42, R43, R40
  %".640" = load i32, i32* %"R42_NOTYPE"
  %".641" = load i32, i32* %"R43_NOTYPE"
  %".642" = load i32, i32* %"R40_NOTYPE"
  %"fmul.23" = fmul i32 %".640", %".641"
  %"fadd.23" = fadd i32 %"fmul.23", %".642"
  store i32 %"fadd.23", i32* %"R43_NOTYPE"
  ; FFMA R18, R44, R18, R43
  %".645" = load i32, i32* %"R44_NOTYPE"
  %".646" = load i32, i32* %"R18_NOTYPE"
  %".647" = load i32, i32* %"R43_NOTYPE"
  %"fmul.24" = fmul i32 %".645", %".646"
  %"fadd.24" = fadd i32 %"fmul.24", %".647"
  store i32 %"fadd.24", i32* %"R18_NOTYPE"
  ; FFMA R14, R35, R44, R14
  %".650" = load i32, i32* %"R35_NOTYPE"
  %".651" = load i32, i32* %"R44_NOTYPE"
  %".652" = load i32, i32* %"R14_NOTYPE"
  %"fmul.25" = fmul i32 %".650", %".651"
  %"fadd.25" = fadd i32 %"fmul.25", %".652"
  store i32 %"fadd.25", i32* %"R14_NOTYPE"
  ; FFMA R18, R46, R49, R18
  %".655" = load i32, i32* %"R46_NOTYPE"
  %".656" = load i32, i32* %"R49_NOTYPE"
  %".657" = load i32, i32* %"R18_NOTYPE"
  %"fmul.26" = fmul i32 %".655", %".656"
  %"fadd.26" = fadd i32 %"fmul.26", %".657"
  store i32 %"fadd.26", i32* %"R18_NOTYPE"
  ; FFMA R14, R15, R46, R14
  %".660" = load i32, i32* %"R15_NOTYPE"
  %".661" = load i32, i32* %"R46_NOTYPE"
  %".662" = load i32, i32* %"R14_NOTYPE"
  %"fmul.27" = fmul i32 %".660", %".661"
  %"fadd.27" = fadd i32 %"fmul.27", %".662"
  store i32 %"fadd.27", i32* %"R14_NOTYPE"
  ; FFMA R13, R13, R48, R14
  %".665" = load i32, i32* %"R13_NOTYPE"
  %".666" = load i32, i32* %"R48_NOTYPE"
  %".667" = load i32, i32* %"R14_NOTYPE"
  %"fmul.28" = fmul i32 %".665", %".666"
  %"fadd.28" = fadd i32 %"fmul.28", %".667"
  store i32 %"fadd.28", i32* %"R13_NOTYPE"
  ; FFMA R37, R48, R37, R18
  %".670" = load i32, i32* %"R48_NOTYPE"
  %".671" = load i32, i32* %"R37_NOTYPE"
  %".672" = load i32, i32* %"R18_NOTYPE"
  %"fmul.29" = fmul i32 %".670", %".671"
  %"fadd.29" = fadd i32 %"fmul.29", %".672"
  store i32 %"fadd.29", i32* %"R37_NOTYPE"
  ; FFMA R52, R45, R50, R13
  %".675" = load i32, i32* %"R45_NOTYPE"
  %".676" = load i32, i32* %"R50_NOTYPE"
  %".677" = load i32, i32* %"R13_NOTYPE"
  %"fmul.30" = fmul i32 %".675", %".676"
  %"fadd.30" = fadd i32 %"fmul.30", %".677"
  store i32 %"fadd.30", i32* %"R52_NOTYPE"
  ; FFMA R54, R50, R34, R37
  %".680" = load i32, i32* %"R50_NOTYPE"
  %".681" = load i32, i32* %"R34_NOTYPE"
  %".682" = load i32, i32* %"R37_NOTYPE"
  %"fmul.31" = fmul i32 %".680", %".681"
  %"fadd.31" = fadd i32 %"fmul.31", %".682"
  store i32 %"fadd.31", i32* %"R54_NOTYPE"
  ; @P1 BRA `(.L_x_5)
  %".685" = load i1, i1* %"P1_Bool"
  %".686" = icmp ne i1 %".685", 1
  br i1 %".686", label %".L_x_5", label %".L_x_4"
.L_x_4:
  ; ISETP.GT.AND P1, PT, R9, 0x4, PT
  %".689" = load i32, i32* %"R9_NOTYPE"
  %".690" = load i1, i1* %"PT_Bool"
  %"cmp.9" = icmp sgt i32 %".689", 4
  %".691" = and i1 %"cmp.9", %".690"
  store i1 %".691", i1* %"P1_Bool"
  ; @!P1 BRA `(.L_x_6)
  %".694" = load i1, i1* %"P1_Bool"
  %".695" = icmp eq i1 %".694", 1
  br i1 %".695", label %".L_x_6", label %".L_x_4_split_0x0a00"
.L_x_4_split_0x0a00:
  ; IADD3 R13, R0, R11, RZ
  %".698" = load i32, i32* %"R0_NOTYPE"
  %".699" = load i32, i32* %"R11_NOTYPE"
  %"add.54" = add i32 %".698", %".699"
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", i32* %"R13_NOTYPE"
  ; MOV R17, 0x4
  store i32 4, i32* %"R17_NOTYPE"
  ; LEA R14, R2.reuse, R13, 0x2
  %".704" = load i32, i32* %"R2_NOTYPE"
  %".705" = load i32, i32* %"R13_NOTYPE"
  %"shl.3" = shl i32 %".704", 2
  %"add.56" = add i32 %"shl.3", %".705"
  store i32 %"add.56", i32* %"R14_NOTYPE"
  ; IMAD R10, R2, 0x3, R13
  %".708" = load i32, i32* %"R2_NOTYPE"
  %".709" = load i32, i32* %"R13_NOTYPE"
  %"mul.21" = mul i32 %".708", 3
  %"add.57" = add i32 %"mul.21", %".709"
  store i32 %"add.57", i32* %"R10_NOTYPE"
  ; IADD3 R12, R11.reuse, 0x4, RZ
  %".712" = load i32, i32* %"R11_NOTYPE"
  %"add.58" = add i32 %".712", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", i32* %"R12_NOTYPE"
  ; IMAD.WIDE R18, R11, R17.reuse, c[0x0][0x168]
  %".715" = load i32, i32* %"R11_NOTYPE"
  %".716" = load i32, i32* %"R17_NOTYPE"
  %"mul.22" = mul i32 %".715", %".716"
  %"add.60" = add i32 %"mul.22", %"Arg_3"
  store i32 %"add.60", i32* %"R18_NOTYPE"
  ; IADD3 R16, R14, 0x4, RZ
  %".719" = load i32, i32* %"R14_NOTYPE"
  %"add.61" = add i32 %".719", 4
  %"add.62" = add i32 %"add.61", 0
  store i32 %"add.62", i32* %"R16_NOTYPE"
  ; IADD3 R15, R10.reuse, 0x4, RZ
  %".722" = load i32, i32* %"R10_NOTYPE"
  %"add.63" = add i32 %".722", 4
  %"add.64" = add i32 %"add.63", 0
  store i32 %"add.64", i32* %"R15_NOTYPE"
  ; IMAD.WIDE R22, R10, R17, c[0x0][0x170]
  %".725" = load i32, i32* %"R10_NOTYPE"
  %".726" = load i32, i32* %"R17_NOTYPE"
  %"mul.23" = mul i32 %".725", %".726"
  %"add.65" = add i32 %"mul.23", %"Arg_4"
  store i32 %"add.65", i32* %"R22_NOTYPE"
  ; IMAD.WIDE R20, R14, R17.reuse, c[0x0][0x170]
  %".729" = load i32, i32* %"R14_NOTYPE"
  %".730" = load i32, i32* %"R17_NOTYPE"
  %"mul.24" = mul i32 %".729", %".730"
  %"add.66" = add i32 %"mul.24", %"Arg_4"
  store i32 %"add.66", i32* %"R20_NOTYPE"
  ; LDG.E.SYS R39, [R18]
  %".733" = load i32, i32* %"R18_NOTYPE"
  %".734" = add i32 %".733", 0
  %"for_LDG.48" = inttoptr i32 %".734" to i32*
  %".735" = load i32, i32* %"for_LDG.48"
  store i32 %".735", i32* %"R39_NOTYPE"
  ; IMAD.WIDE R12, R12, R17.reuse, c[0x0][0x168]
  %".738" = load i32, i32* %"R12_NOTYPE"
  %".739" = load i32, i32* %"R17_NOTYPE"
  %"mul.25" = mul i32 %".738", %".739"
  %"add.67" = add i32 %"mul.25", %"Arg_3"
  store i32 %"add.67", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R37, [R22]
  %".742" = load i32, i32* %"R22_NOTYPE"
  %".743" = add i32 %".742", 0
  %"for_LDG.49" = inttoptr i32 %".743" to i32*
  %".744" = load i32, i32* %"for_LDG.49"
  store i32 %".744", i32* %"R37_NOTYPE"
  ; LDG.E.SYS R36, [R20]
  %".747" = load i32, i32* %"R20_NOTYPE"
  %".748" = add i32 %".747", 0
  %"for_LDG.50" = inttoptr i32 %".748" to i32*
  %".749" = load i32, i32* %"for_LDG.50"
  store i32 %".749", i32* %"R36_NOTYPE"
  ; IMAD.WIDE R14, R15, R17, c[0x0][0x170]
  %".752" = load i32, i32* %"R15_NOTYPE"
  %".753" = load i32, i32* %"R17_NOTYPE"
  %"mul.26" = mul i32 %".752", %".753"
  %"add.68" = add i32 %"mul.26", %"Arg_4"
  store i32 %"add.68", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R34, [R18+0x4]
  %".756" = load i32, i32* %"R18_NOTYPE"
  %".757" = add i32 %".756", 4
  %"for_LDG.51" = inttoptr i32 %".757" to i32*
  %".758" = load i32, i32* %"for_LDG.51"
  store i32 %".758", i32* %"R34_NOTYPE"
  ; LDG.E.SYS R38, [R22+0x4]
  %".761" = load i32, i32* %"R22_NOTYPE"
  %".762" = add i32 %".761", 4
  %"for_LDG.52" = inttoptr i32 %".762" to i32*
  %".763" = load i32, i32* %"for_LDG.52"
  store i32 %".763", i32* %"R38_NOTYPE"
  ; LDG.E.SYS R35, [R20+0x4]
  %".766" = load i32, i32* %"R20_NOTYPE"
  %".767" = add i32 %".766", 4
  %"for_LDG.53" = inttoptr i32 %".767" to i32*
  %".768" = load i32, i32* %"for_LDG.53"
  store i32 %".768", i32* %"R35_NOTYPE"
  ; IMAD.WIDE R16, R16, R17, c[0x0][0x170]
  %".771" = load i32, i32* %"R16_NOTYPE"
  %".772" = load i32, i32* %"R17_NOTYPE"
  %"mul.27" = mul i32 %".771", %".772"
  %"add.69" = add i32 %"mul.27", %"Arg_4"
  store i32 %"add.69", i32* %"R16_NOTYPE"
  ; LDG.E.SYS R24, [R18+0x8]
  %".775" = load i32, i32* %"R18_NOTYPE"
  %".776" = add i32 %".775", 8
  %"for_LDG.54" = inttoptr i32 %".776" to i32*
  %".777" = load i32, i32* %"for_LDG.54"
  store i32 %".777", i32* %"R24_NOTYPE"
  ; LDG.E.SYS R40, [R22+0x8]
  %".780" = load i32, i32* %"R22_NOTYPE"
  %".781" = add i32 %".780", 8
  %"for_LDG.55" = inttoptr i32 %".781" to i32*
  %".782" = load i32, i32* %"for_LDG.55"
  store i32 %".782", i32* %"R40_NOTYPE"
  ; LDG.E.SYS R41, [R20+0x8]
  %".785" = load i32, i32* %"R20_NOTYPE"
  %".786" = add i32 %".785", 8
  %"for_LDG.56" = inttoptr i32 %".786" to i32*
  %".787" = load i32, i32* %"for_LDG.56"
  store i32 %".787", i32* %"R41_NOTYPE"
  ; LDG.E.SYS R44, [R18+0xc]
  %".790" = load i32, i32* %"R18_NOTYPE"
  %".791" = add i32 %".790", 12
  %"for_LDG.57" = inttoptr i32 %".791" to i32*
  %".792" = load i32, i32* %"for_LDG.57"
  store i32 %".792", i32* %"R44_NOTYPE"
  ; LDG.E.SYS R42, [R22+0xc]
  %".795" = load i32, i32* %"R22_NOTYPE"
  %".796" = add i32 %".795", 12
  %"for_LDG.58" = inttoptr i32 %".796" to i32*
  %".797" = load i32, i32* %"for_LDG.58"
  store i32 %".797", i32* %"R42_NOTYPE"
  ; LDG.E.SYS R43, [R20+0xc]
  %".800" = load i32, i32* %"R20_NOTYPE"
  %".801" = add i32 %".800", 12
  %"for_LDG.59" = inttoptr i32 %".801" to i32*
  %".802" = load i32, i32* %"for_LDG.59"
  store i32 %".802", i32* %"R43_NOTYPE"
  ; LDG.E.SYS R48, [R12]
  %".805" = load i32, i32* %"R12_NOTYPE"
  %".806" = add i32 %".805", 0
  %"for_LDG.60" = inttoptr i32 %".806" to i32*
  %".807" = load i32, i32* %"for_LDG.60"
  store i32 %".807", i32* %"R48_NOTYPE"
  ; LDG.E.SYS R46, [R14]
  %".810" = load i32, i32* %"R14_NOTYPE"
  %".811" = add i32 %".810", 0
  %"for_LDG.61" = inttoptr i32 %".811" to i32*
  %".812" = load i32, i32* %"for_LDG.61"
  store i32 %".812", i32* %"R46_NOTYPE"
  ; LDG.E.SYS R45, [R16]
  %".815" = load i32, i32* %"R16_NOTYPE"
  %".816" = add i32 %".815", 0
  %"for_LDG.62" = inttoptr i32 %".816" to i32*
  %".817" = load i32, i32* %"for_LDG.62"
  store i32 %".817", i32* %"R45_NOTYPE"
  ; LDG.E.SYS R56, [R12+0x4]
  %".820" = load i32, i32* %"R12_NOTYPE"
  %".821" = add i32 %".820", 4
  %"for_LDG.63" = inttoptr i32 %".821" to i32*
  %".822" = load i32, i32* %"for_LDG.63"
  store i32 %".822", i32* %"R56_NOTYPE"
  ; LDG.E.SYS R50, [R14+0x4]
  %".825" = load i32, i32* %"R14_NOTYPE"
  %".826" = add i32 %".825", 4
  %"for_LDG.64" = inttoptr i32 %".826" to i32*
  %".827" = load i32, i32* %"for_LDG.64"
  store i32 %".827", i32* %"R50_NOTYPE"
  ; LDG.E.SYS R47, [R16+0x4]
  %".830" = load i32, i32* %"R16_NOTYPE"
  %".831" = add i32 %".830", 4
  %"for_LDG.65" = inttoptr i32 %".831" to i32*
  %".832" = load i32, i32* %"for_LDG.65"
  store i32 %".832", i32* %"R47_NOTYPE"
  ; LDG.E.SYS R10, [R12+0x8]
  %".835" = load i32, i32* %"R12_NOTYPE"
  %".836" = add i32 %".835", 8
  %"for_LDG.66" = inttoptr i32 %".836" to i32*
  %".837" = load i32, i32* %"for_LDG.66"
  store i32 %".837", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R25, [R14+0x8]
  %".840" = load i32, i32* %"R14_NOTYPE"
  %".841" = add i32 %".840", 8
  %"for_LDG.67" = inttoptr i32 %".841" to i32*
  %".842" = load i32, i32* %"for_LDG.67"
  store i32 %".842", i32* %"R25_NOTYPE"
  ; LDG.E.SYS R19, [R16+0x8]
  %".845" = load i32, i32* %"R16_NOTYPE"
  %".846" = add i32 %".845", 8
  %"for_LDG.68" = inttoptr i32 %".846" to i32*
  %".847" = load i32, i32* %"for_LDG.68"
  store i32 %".847", i32* %"R19_NOTYPE"
  ; LDG.E.SYS R18, [R12+0xc]
  %".850" = load i32, i32* %"R12_NOTYPE"
  %".851" = add i32 %".850", 12
  %"for_LDG.69" = inttoptr i32 %".851" to i32*
  %".852" = load i32, i32* %"for_LDG.69"
  store i32 %".852", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R20, [R14+0xc]
  %".855" = load i32, i32* %"R14_NOTYPE"
  %".856" = add i32 %".855", 12
  %"for_LDG.70" = inttoptr i32 %".856" to i32*
  %".857" = load i32, i32* %"for_LDG.70"
  store i32 %".857", i32* %"R20_NOTYPE"
  ; LDG.E.SYS R21, [R16+0xc]
  %".860" = load i32, i32* %"R16_NOTYPE"
  %".861" = add i32 %".860", 12
  %"for_LDG.71" = inttoptr i32 %".861" to i32*
  %".862" = load i32, i32* %"for_LDG.71"
  store i32 %".862", i32* %"R21_NOTYPE"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".865" = xor i1 1, 1
  %".866" = and i1 %".865", 1
  %".867" = and i1 %".866", 1
  ; IADD3 R9, R9, -0x8, RZ
  %".869" = load i32, i32* %"R9_NOTYPE"
  %"add.70" = add i32 %".869", -8
  %"add.71" = add i32 %"add.70", 0
  store i32 %"add.71", i32* %"R9_NOTYPE"
  ; IADD3 R11, R11, 0x8, RZ
  %".872" = load i32, i32* %"R11_NOTYPE"
  %"add.72" = add i32 %".872", 8
  %"add.73" = add i32 %"add.72", 0
  store i32 %"add.73", i32* %"R11_NOTYPE"
  ; FFMA R37, R37, R39, R52
  %".875" = load i32, i32* %"R37_NOTYPE"
  %".876" = load i32, i32* %"R39_NOTYPE"
  %".877" = load i32, i32* %"R52_NOTYPE"
  %"fmul.32" = fmul i32 %".875", %".876"
  %"fadd.32" = fadd i32 %"fmul.32", %".877"
  store i32 %"fadd.32", i32* %"R37_NOTYPE"
  ; FFMA R36, R39, R36, R54
  %".880" = load i32, i32* %"R39_NOTYPE"
  %".881" = load i32, i32* %"R36_NOTYPE"
  %".882" = load i32, i32* %"R54_NOTYPE"
  %"fmul.33" = fmul i32 %".880", %".881"
  %"fadd.33" = fadd i32 %"fmul.33", %".882"
  store i32 %"fadd.33", i32* %"R36_NOTYPE"
  ; FFMA R37, R38, R34, R37
  %".885" = load i32, i32* %"R38_NOTYPE"
  %".886" = load i32, i32* %"R34_NOTYPE"
  %".887" = load i32, i32* %"R37_NOTYPE"
  %"fmul.34" = fmul i32 %".885", %".886"
  %"fadd.34" = fadd i32 %"fmul.34", %".887"
  store i32 %"fadd.34", i32* %"R37_NOTYPE"
  ; FFMA R35, R34, R35, R36
  %".890" = load i32, i32* %"R34_NOTYPE"
  %".891" = load i32, i32* %"R35_NOTYPE"
  %".892" = load i32, i32* %"R36_NOTYPE"
  %"fmul.35" = fmul i32 %".890", %".891"
  %"fadd.35" = fadd i32 %"fmul.35", %".892"
  store i32 %"fadd.35", i32* %"R35_NOTYPE"
  ; FFMA R37, R40, R24, R37
  %".895" = load i32, i32* %"R40_NOTYPE"
  %".896" = load i32, i32* %"R24_NOTYPE"
  %".897" = load i32, i32* %"R37_NOTYPE"
  %"fmul.36" = fmul i32 %".895", %".896"
  %"fadd.36" = fadd i32 %"fmul.36", %".897"
  store i32 %"fadd.36", i32* %"R37_NOTYPE"
  ; FFMA R35, R24, R41, R35
  %".900" = load i32, i32* %"R24_NOTYPE"
  %".901" = load i32, i32* %"R41_NOTYPE"
  %".902" = load i32, i32* %"R35_NOTYPE"
  %"fmul.37" = fmul i32 %".900", %".901"
  %"fadd.37" = fadd i32 %"fmul.37", %".902"
  store i32 %"fadd.37", i32* %"R35_NOTYPE"
  ; FFMA R37, R42, R44, R37
  %".905" = load i32, i32* %"R42_NOTYPE"
  %".906" = load i32, i32* %"R44_NOTYPE"
  %".907" = load i32, i32* %"R37_NOTYPE"
  %"fmul.38" = fmul i32 %".905", %".906"
  %"fadd.38" = fadd i32 %"fmul.38", %".907"
  store i32 %"fadd.38", i32* %"R37_NOTYPE"
  ; FFMA R35, R44, R43, R35
  %".910" = load i32, i32* %"R44_NOTYPE"
  %".911" = load i32, i32* %"R43_NOTYPE"
  %".912" = load i32, i32* %"R35_NOTYPE"
  %"fmul.39" = fmul i32 %".910", %".911"
  %"fadd.39" = fadd i32 %"fmul.39", %".912"
  store i32 %"fadd.39", i32* %"R35_NOTYPE"
  ; FFMA R37, R46, R48, R37
  %".915" = load i32, i32* %"R46_NOTYPE"
  %".916" = load i32, i32* %"R48_NOTYPE"
  %".917" = load i32, i32* %"R37_NOTYPE"
  %"fmul.40" = fmul i32 %".915", %".916"
  %"fadd.40" = fadd i32 %"fmul.40", %".917"
  store i32 %"fadd.40", i32* %"R37_NOTYPE"
  ; FFMA R35, R48, R45, R35
  %".920" = load i32, i32* %"R48_NOTYPE"
  %".921" = load i32, i32* %"R45_NOTYPE"
  %".922" = load i32, i32* %"R35_NOTYPE"
  %"fmul.41" = fmul i32 %".920", %".921"
  %"fadd.41" = fadd i32 %"fmul.41", %".922"
  store i32 %"fadd.41", i32* %"R35_NOTYPE"
  ; FFMA R37, R50, R56, R37
  %".925" = load i32, i32* %"R50_NOTYPE"
  %".926" = load i32, i32* %"R56_NOTYPE"
  %".927" = load i32, i32* %"R37_NOTYPE"
  %"fmul.42" = fmul i32 %".925", %".926"
  %"fadd.42" = fadd i32 %"fmul.42", %".927"
  store i32 %"fadd.42", i32* %"R37_NOTYPE"
  ; FFMA R35, R56, R47, R35
  %".930" = load i32, i32* %"R56_NOTYPE"
  %".931" = load i32, i32* %"R47_NOTYPE"
  %".932" = load i32, i32* %"R35_NOTYPE"
  %"fmul.43" = fmul i32 %".930", %".931"
  %"fadd.43" = fadd i32 %"fmul.43", %".932"
  store i32 %"fadd.43", i32* %"R35_NOTYPE"
  ; FFMA R25, R25, R10, R37
  %".935" = load i32, i32* %"R25_NOTYPE"
  %".936" = load i32, i32* %"R10_NOTYPE"
  %".937" = load i32, i32* %"R37_NOTYPE"
  %"fmul.44" = fmul i32 %".935", %".936"
  %"fadd.44" = fadd i32 %"fmul.44", %".937"
  store i32 %"fadd.44", i32* %"R25_NOTYPE"
  ; FFMA R19, R10, R19, R35
  %".940" = load i32, i32* %"R10_NOTYPE"
  %".941" = load i32, i32* %"R19_NOTYPE"
  %".942" = load i32, i32* %"R35_NOTYPE"
  %"fmul.45" = fmul i32 %".940", %".941"
  %"fadd.45" = fadd i32 %"fmul.45", %".942"
  store i32 %"fadd.45", i32* %"R19_NOTYPE"
  ; FFMA R52, R20, R18, R25
  %".945" = load i32, i32* %"R20_NOTYPE"
  %".946" = load i32, i32* %"R18_NOTYPE"
  %".947" = load i32, i32* %"R25_NOTYPE"
  %"fmul.46" = fmul i32 %".945", %".946"
  %"fadd.46" = fadd i32 %"fmul.46", %".947"
  store i32 %"fadd.46", i32* %"R52_NOTYPE"
  ; FFMA R54, R18, R21, R19
  %".950" = load i32, i32* %"R18_NOTYPE"
  %".951" = load i32, i32* %"R21_NOTYPE"
  %".952" = load i32, i32* %"R19_NOTYPE"
  %"fmul.47" = fmul i32 %".950", %".951"
  %"fadd.47" = fadd i32 %"fmul.47", %".952"
  store i32 %"fadd.47", i32* %"R54_NOTYPE"
.L_x_6:
  ; ISETP.NE.OR P0, PT, R9, RZ, P0
  %".955" = load i32, i32* %"R9_NOTYPE"
  %".956" = load i1, i1* %"PT_Bool"
  %"cmp.10" = icmp ne i32 %".955", 0
  %".957" = or i1 %"cmp.10", %".956"
  store i1 %".957", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_2)
  %".960" = load i1, i1* %"P0_Bool"
  %".961" = icmp eq i1 %".960", 1
  br i1 %".961", label %".L_x_2", label %".L_x_3"
.L_x_3:
  ; IADD3 R13, R0, R11, RZ
  %".964" = load i32, i32* %"R0_NOTYPE"
  %".965" = load i32, i32* %"R11_NOTYPE"
  %"add.74" = add i32 %".964", %".965"
  %"add.75" = add i32 %"add.74", 0
  store i32 %"add.75", i32* %"R13_NOTYPE"
  ; MOV R16, 0x4
  store i32 4, i32* %"R16_NOTYPE"
  ; LEA R17, R2.reuse, R13, 0x2
  %".970" = load i32, i32* %"R2_NOTYPE"
  %".971" = load i32, i32* %"R13_NOTYPE"
  %"shl.4" = shl i32 %".970", 2
  %"add.76" = add i32 %"shl.4", %".971"
  store i32 %"add.76", i32* %"R17_NOTYPE"
  ; IMAD R15, R2, 0x3, R13
  %".974" = load i32, i32* %"R2_NOTYPE"
  %".975" = load i32, i32* %"R13_NOTYPE"
  %"mul.28" = mul i32 %".974", 3
  %"add.77" = add i32 %"mul.28", %".975"
  store i32 %"add.77", i32* %"R15_NOTYPE"
  ; IMAD.WIDE R12, R11, R16, c[0x0][0x168]
  %".978" = load i32, i32* %"R11_NOTYPE"
  %".979" = load i32, i32* %"R16_NOTYPE"
  %"mul.29" = mul i32 %".978", %".979"
  %"add.78" = add i32 %"mul.29", %"Arg_3"
  store i32 %"add.78", i32* %"R12_NOTYPE"
  ; IMAD.WIDE R14, R15, R16, c[0x0][0x170]
  %".982" = load i32, i32* %"R15_NOTYPE"
  %".983" = load i32, i32* %"R16_NOTYPE"
  %"mul.30" = mul i32 %".982", %".983"
  %"add.79" = add i32 %"mul.30", %"Arg_4"
  store i32 %"add.79", i32* %"R14_NOTYPE"
  ; IMAD.WIDE R16, R17, R16, c[0x0][0x170]
  %".986" = load i32, i32* %"R17_NOTYPE"
  %".987" = load i32, i32* %"R16_NOTYPE"
  %"mul.31" = mul i32 %".986", %".987"
  %"add.80" = add i32 %"mul.31", %"Arg_4"
  store i32 %"add.80", i32* %"R16_NOTYPE"
  ; LDG.E.SYS R21, [R12]
  %".990" = load i32, i32* %"R12_NOTYPE"
  %".991" = add i32 %".990", 0
  %"for_LDG.72" = inttoptr i32 %".991" to i32*
  %".992" = load i32, i32* %"for_LDG.72"
  store i32 %".992", i32* %"R21_NOTYPE"
  ; LDG.E.SYS R19, [R14]
  %".995" = load i32, i32* %"R14_NOTYPE"
  %".996" = add i32 %".995", 0
  %"for_LDG.73" = inttoptr i32 %".996" to i32*
  %".997" = load i32, i32* %"for_LDG.73"
  store i32 %".997", i32* %"R19_NOTYPE"
  ; LDG.E.SYS R10, [R16]
  %".1000" = load i32, i32* %"R16_NOTYPE"
  %".1001" = add i32 %".1000", 0
  %"for_LDG.74" = inttoptr i32 %".1001" to i32*
  %".1002" = load i32, i32* %"for_LDG.74"
  store i32 %".1002", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R23, [R12+0x4]
  %".1005" = load i32, i32* %"R12_NOTYPE"
  %".1006" = add i32 %".1005", 4
  %"for_LDG.75" = inttoptr i32 %".1006" to i32*
  %".1007" = load i32, i32* %"for_LDG.75"
  store i32 %".1007", i32* %"R23_NOTYPE"
  ; LDG.E.SYS R18, [R14+0x4]
  %".1010" = load i32, i32* %"R14_NOTYPE"
  %".1011" = add i32 %".1010", 4
  %"for_LDG.76" = inttoptr i32 %".1011" to i32*
  %".1012" = load i32, i32* %"for_LDG.76"
  store i32 %".1012", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R20, [R16+0x4]
  %".1015" = load i32, i32* %"R16_NOTYPE"
  %".1016" = add i32 %".1015", 4
  %"for_LDG.77" = inttoptr i32 %".1016" to i32*
  %".1017" = load i32, i32* %"for_LDG.77"
  store i32 %".1017", i32* %"R20_NOTYPE"
  ; LDG.E.SYS R35, [R12+0x8]
  %".1020" = load i32, i32* %"R12_NOTYPE"
  %".1021" = add i32 %".1020", 8
  %"for_LDG.78" = inttoptr i32 %".1021" to i32*
  %".1022" = load i32, i32* %"for_LDG.78"
  store i32 %".1022", i32* %"R35_NOTYPE"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1025" = load i32, i32* %"R14_NOTYPE"
  %".1026" = add i32 %".1025", 8
  %"for_LDG.79" = inttoptr i32 %".1026" to i32*
  %".1027" = load i32, i32* %"for_LDG.79"
  store i32 %".1027", i32* %"R25_NOTYPE"
  ; LDG.E.SYS R22, [R16+0x8]
  %".1030" = load i32, i32* %"R16_NOTYPE"
  %".1031" = add i32 %".1030", 8
  %"for_LDG.80" = inttoptr i32 %".1031" to i32*
  %".1032" = load i32, i32* %"for_LDG.80"
  store i32 %".1032", i32* %"R22_NOTYPE"
  ; LDG.E.SYS R39, [R12+0xc]
  %".1035" = load i32, i32* %"R12_NOTYPE"
  %".1036" = add i32 %".1035", 12
  %"for_LDG.81" = inttoptr i32 %".1036" to i32*
  %".1037" = load i32, i32* %"for_LDG.81"
  store i32 %".1037", i32* %"R39_NOTYPE"
  ; LDG.E.SYS R37, [R14+0xc]
  %".1040" = load i32, i32* %"R14_NOTYPE"
  %".1041" = add i32 %".1040", 12
  %"for_LDG.82" = inttoptr i32 %".1041" to i32*
  %".1042" = load i32, i32* %"for_LDG.82"
  store i32 %".1042", i32* %"R37_NOTYPE"
  ; LDG.E.SYS R24, [R16+0xc]
  %".1045" = load i32, i32* %"R16_NOTYPE"
  %".1046" = add i32 %".1045", 12
  %"for_LDG.83" = inttoptr i32 %".1046" to i32*
  %".1047" = load i32, i32* %"for_LDG.83"
  store i32 %".1047", i32* %"R24_NOTYPE"
  ; IADD3 R9, R9, -0x4, RZ
  %".1050" = load i32, i32* %"R9_NOTYPE"
  %"add.81" = add i32 %".1050", -4
  %"add.82" = add i32 %"add.81", 0
  store i32 %"add.82", i32* %"R9_NOTYPE"
  ; IADD3 R11, R11, 0x4, RZ
  %".1053" = load i32, i32* %"R11_NOTYPE"
  %"add.83" = add i32 %".1053", 4
  %"add.84" = add i32 %"add.83", 0
  store i32 %"add.84", i32* %"R11_NOTYPE"
  ; ISETP.NE.AND P0, PT, R9, RZ, PT
  %".1056" = load i32, i32* %"R9_NOTYPE"
  %".1057" = load i1, i1* %"PT_Bool"
  %"cmp.11" = icmp ne i32 %".1056", 0
  %".1058" = and i1 %"cmp.11", %".1057"
  store i1 %".1058", i1* %"P0_Bool"
  ; FFMA R19, R19, R21, R52
  %".1061" = load i32, i32* %"R19_NOTYPE"
  %".1062" = load i32, i32* %"R21_NOTYPE"
  %".1063" = load i32, i32* %"R52_NOTYPE"
  %"fmul.48" = fmul i32 %".1061", %".1062"
  %"fadd.48" = fadd i32 %"fmul.48", %".1063"
  store i32 %"fadd.48", i32* %"R19_NOTYPE"
  ; FFMA R10, R21, R10, R54
  %".1066" = load i32, i32* %"R21_NOTYPE"
  %".1067" = load i32, i32* %"R10_NOTYPE"
  %".1068" = load i32, i32* %"R54_NOTYPE"
  %"fmul.49" = fmul i32 %".1066", %".1067"
  %"fadd.49" = fadd i32 %"fmul.49", %".1068"
  store i32 %"fadd.49", i32* %"R10_NOTYPE"
  ; FFMA R18, R18, R23, R19
  %".1071" = load i32, i32* %"R18_NOTYPE"
  %".1072" = load i32, i32* %"R23_NOTYPE"
  %".1073" = load i32, i32* %"R19_NOTYPE"
  %"fmul.50" = fmul i32 %".1071", %".1072"
  %"fadd.50" = fadd i32 %"fmul.50", %".1073"
  store i32 %"fadd.50", i32* %"R18_NOTYPE"
  ; FFMA R10, R23, R20, R10
  %".1076" = load i32, i32* %"R23_NOTYPE"
  %".1077" = load i32, i32* %"R20_NOTYPE"
  %".1078" = load i32, i32* %"R10_NOTYPE"
  %"fmul.51" = fmul i32 %".1076", %".1077"
  %"fadd.51" = fadd i32 %"fmul.51", %".1078"
  store i32 %"fadd.51", i32* %"R10_NOTYPE"
  ; FFMA R18, R25, R35, R18
  %".1081" = load i32, i32* %"R25_NOTYPE"
  %".1082" = load i32, i32* %"R35_NOTYPE"
  %".1083" = load i32, i32* %"R18_NOTYPE"
  %"fmul.52" = fmul i32 %".1081", %".1082"
  %"fadd.52" = fadd i32 %"fmul.52", %".1083"
  store i32 %"fadd.52", i32* %"R18_NOTYPE"
  ; FFMA R10, R35, R22, R10
  %".1086" = load i32, i32* %"R35_NOTYPE"
  %".1087" = load i32, i32* %"R22_NOTYPE"
  %".1088" = load i32, i32* %"R10_NOTYPE"
  %"fmul.53" = fmul i32 %".1086", %".1087"
  %"fadd.53" = fadd i32 %"fmul.53", %".1088"
  store i32 %"fadd.53", i32* %"R10_NOTYPE"
  ; FFMA R52, R37, R39, R18
  %".1091" = load i32, i32* %"R37_NOTYPE"
  %".1092" = load i32, i32* %"R39_NOTYPE"
  %".1093" = load i32, i32* %"R18_NOTYPE"
  %"fmul.54" = fmul i32 %".1091", %".1092"
  %"fadd.54" = fadd i32 %"fmul.54", %".1093"
  store i32 %"fadd.54", i32* %"R52_NOTYPE"
  ; FFMA R54, R39, R24, R10
  %".1096" = load i32, i32* %"R39_NOTYPE"
  %".1097" = load i32, i32* %"R24_NOTYPE"
  %".1098" = load i32, i32* %"R10_NOTYPE"
  %"fmul.55" = fmul i32 %".1096", %".1097"
  %"fadd.55" = fadd i32 %"fmul.55", %".1098"
  store i32 %"fadd.55", i32* %"R54_NOTYPE"
  ; @P0 BRA `(.L_x_3)
  %".1101" = load i1, i1* %"P0_Bool"
  %".1102" = icmp ne i1 %".1101", 1
  br i1 %".1102", label %".L_x_3", label %".L_x_2"
.L_x_2:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1105" = load i32, i32* %"R4_NOTYPE"
  %".1106" = load i1, i1* %"PT_Bool"
  %"cmp.12" = icmp ne i32 %".1105", 0
  %".1107" = and i1 %"cmp.12", %".1106"
  store i1 %".1107", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_1)
  %".1110" = load i1, i1* %"P0_Bool"
  %".1111" = icmp eq i1 %".1110", 1
  br i1 %".1111", label %".L_x_1", label %".L_x_2_split_0x0fb0"
.L_x_2_split_0x0fb0:
  ; IADD3 R9, R0, R11, RZ
  %".1114" = load i32, i32* %"R0_NOTYPE"
  %".1115" = load i32, i32* %"R11_NOTYPE"
  %"add.85" = add i32 %".1114", %".1115"
  %"add.86" = add i32 %"add.85", 0
  store i32 %"add.86", i32* %"R9_NOTYPE"
  ; MOV R15, 0x4
  store i32 4, i32* %"R15_NOTYPE"
  ; LEA R14, R2.reuse, R9, 0x2
  %".1120" = load i32, i32* %"R2_NOTYPE"
  %".1121" = load i32, i32* %"R9_NOTYPE"
  %"shl.5" = shl i32 %".1120", 2
  %"add.87" = add i32 %"shl.5", %".1121"
  store i32 %"add.87", i32* %"R14_NOTYPE"
  ; IMAD R12, R2, 0x3, R9
  %".1124" = load i32, i32* %"R2_NOTYPE"
  %".1125" = load i32, i32* %"R9_NOTYPE"
  %"mul.32" = mul i32 %".1124", 3
  %"add.88" = add i32 %"mul.32", %".1125"
  store i32 %"add.88", i32* %"R12_NOTYPE"
  ; IMAD.WIDE R10, R11, R15, c[0x0][0x168]
  %".1128" = load i32, i32* %"R11_NOTYPE"
  %".1129" = load i32, i32* %"R15_NOTYPE"
  %"mul.33" = mul i32 %".1128", %".1129"
  %"add.89" = add i32 %"mul.33", %"Arg_3"
  store i32 %"add.89", i32* %"R10_NOTYPE"
  ; IMAD.WIDE R12, R12, R15, c[0x0][0x170]
  %".1132" = load i32, i32* %"R12_NOTYPE"
  %".1133" = load i32, i32* %"R15_NOTYPE"
  %"mul.34" = mul i32 %".1132", %".1133"
  %"add.90" = add i32 %"mul.34", %"Arg_4"
  store i32 %"add.90", i32* %"R12_NOTYPE"
  ; IMAD.WIDE R14, R14, R15, c[0x0][0x170]
  %".1136" = load i32, i32* %"R14_NOTYPE"
  %".1137" = load i32, i32* %"R15_NOTYPE"
  %"mul.35" = mul i32 %".1136", %".1137"
  %"add.91" = add i32 %"mul.35", %"Arg_4"
  store i32 %"add.91", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R17, [R10]
  %".1140" = load i32, i32* %"R10_NOTYPE"
  %".1141" = add i32 %".1140", 0
  %"for_LDG.84" = inttoptr i32 %".1141" to i32*
  %".1142" = load i32, i32* %"for_LDG.84"
  store i32 %".1142", i32* %"R17_NOTYPE"
  ; LDG.E.SYS R9, [R12]
  %".1145" = load i32, i32* %"R12_NOTYPE"
  %".1146" = add i32 %".1145", 0
  %"for_LDG.85" = inttoptr i32 %".1146" to i32*
  %".1147" = load i32, i32* %"for_LDG.85"
  store i32 %".1147", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R16, [R14]
  %".1150" = load i32, i32* %"R14_NOTYPE"
  %".1151" = add i32 %".1150", 0
  %"for_LDG.86" = inttoptr i32 %".1151" to i32*
  %".1152" = load i32, i32* %"for_LDG.86"
  store i32 %".1152", i32* %"R16_NOTYPE"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".1155" = load i32, i32* %"R4_NOTYPE"
  %".1156" = load i1, i1* %"PT_Bool"
  %"cmp.13" = icmp ne i32 %".1155", 1
  %".1157" = and i1 %"cmp.13", %".1156"
  store i1 %".1157", i1* %"P0_Bool"
  ; FFMA R52, R9, R17, R52
  %".1160" = load i32, i32* %"R9_NOTYPE"
  %".1161" = load i32, i32* %"R17_NOTYPE"
  %".1162" = load i32, i32* %"R52_NOTYPE"
  %"fmul.56" = fmul i32 %".1160", %".1161"
  %"fadd.56" = fadd i32 %"fmul.56", %".1162"
  store i32 %"fadd.56", i32* %"R52_NOTYPE"
  ; FFMA R54, R17, R16, R54
  %".1165" = load i32, i32* %"R17_NOTYPE"
  %".1166" = load i32, i32* %"R16_NOTYPE"
  %".1167" = load i32, i32* %"R54_NOTYPE"
  %"fmul.57" = fmul i32 %".1165", %".1166"
  %"fadd.57" = fadd i32 %"fmul.57", %".1167"
  store i32 %"fadd.57", i32* %"R54_NOTYPE"
  ; @!P0 BRA `(.L_x_1)
  %".1170" = load i1, i1* %"P0_Bool"
  %".1171" = icmp eq i1 %".1170", 1
  br i1 %".1171", label %".L_x_1", label %".L_x_2_split_0x1090"
.L_x_2_split_0x1090:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".1174" = load i32, i32* %"R4_NOTYPE"
  %".1175" = load i1, i1* %"PT_Bool"
  %"cmp.14" = icmp ne i32 %".1174", 2
  %".1176" = and i1 %"cmp.14", %".1175"
  store i1 %".1176", i1* %"P0_Bool"
  ; LDG.E.SYS R9, [R12+0x4]
  %".1179" = load i32, i32* %"R12_NOTYPE"
  %".1180" = add i32 %".1179", 4
  %"for_LDG.87" = inttoptr i32 %".1180" to i32*
  %".1181" = load i32, i32* %"for_LDG.87"
  store i32 %".1181", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R17, [R10+0x4]
  %".1184" = load i32, i32* %"R10_NOTYPE"
  %".1185" = add i32 %".1184", 4
  %"for_LDG.88" = inttoptr i32 %".1185" to i32*
  %".1186" = load i32, i32* %"for_LDG.88"
  store i32 %".1186", i32* %"R17_NOTYPE"
  ; LDG.E.SYS R16, [R14+0x4]
  %".1189" = load i32, i32* %"R14_NOTYPE"
  %".1190" = add i32 %".1189", 4
  %"for_LDG.89" = inttoptr i32 %".1190" to i32*
  %".1191" = load i32, i32* %"for_LDG.89"
  store i32 %".1191", i32* %"R16_NOTYPE"
  ; @P0 LDG.E.SYS R19, [R12+0x8]
  %".1194" = load i1, i1* %"P0_Bool"
  %".1195" = icmp ne i1 %".1194", 1
  br i1 %".1195", label %".L_x_2_split_0x1090_conditionalExpr_0x10d0", label %".L_x_2_split_0x10e0"
.L_x_2_split_0x1090_conditionalExpr_0x10d0:
  ; LDG.E.SYS R19, [R12+0x8]
  %".1198" = load i32, i32* %"R12_NOTYPE"
  %".1199" = add i32 %".1198", 8
  %"for_LDG.90" = inttoptr i32 %".1199" to i32*
  %".1200" = load i32, i32* %"for_LDG.90"
  store i32 %".1200", i32* %"R19_NOTYPE"
  ; BRA `(.L_x_2_split_0x10e0)
  br label %".L_x_2_split_0x10e0"
.L_x_2_split_0x10e0:
  ; @P0 LDG.E.SYS R21, [R10+0x8]
  %".1205" = load i1, i1* %"P0_Bool"
  %".1206" = icmp ne i1 %".1205", 1
  br i1 %".1206", label %".L_x_2_split_0x10e0_conditionalExpr_0x10e0", label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10e0_conditionalExpr_0x10e0:
  ; LDG.E.SYS R21, [R10+0x8]
  %".1209" = load i32, i32* %"R10_NOTYPE"
  %".1210" = add i32 %".1209", 8
  %"for_LDG.91" = inttoptr i32 %".1210" to i32*
  %".1211" = load i32, i32* %"for_LDG.91"
  store i32 %".1211", i32* %"R21_NOTYPE"
  ; BRA `(.L_x_2_split_0x10f0)
  br label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10f0:
  ; @P0 LDG.E.SYS R18, [R14+0x8]
  %".1216" = load i1, i1* %"P0_Bool"
  %".1217" = icmp ne i1 %".1216", 1
  br i1 %".1217", label %".L_x_2_split_0x10f0_conditionalExpr_0x10f0", label %".L_x_2_split_0x1100"
.L_x_2_split_0x10f0_conditionalExpr_0x10f0:
  ; LDG.E.SYS R18, [R14+0x8]
  %".1220" = load i32, i32* %"R14_NOTYPE"
  %".1221" = add i32 %".1220", 8
  %"for_LDG.92" = inttoptr i32 %".1221" to i32*
  %".1222" = load i32, i32* %"for_LDG.92"
  store i32 %".1222", i32* %"R18_NOTYPE"
  ; BRA `(.L_x_2_split_0x1100)
  br label %".L_x_2_split_0x1100"
.L_x_2_split_0x1100:
  ; FFMA R52, R9, R17, R52
  %".1227" = load i32, i32* %"R9_NOTYPE"
  %".1228" = load i32, i32* %"R17_NOTYPE"
  %".1229" = load i32, i32* %"R52_NOTYPE"
  %"fmul.58" = fmul i32 %".1227", %".1228"
  %"fadd.58" = fadd i32 %"fmul.58", %".1229"
  store i32 %"fadd.58", i32* %"R52_NOTYPE"
  ; FFMA R54, R17, R16, R54
  %".1232" = load i32, i32* %"R17_NOTYPE"
  %".1233" = load i32, i32* %"R16_NOTYPE"
  %".1234" = load i32, i32* %"R54_NOTYPE"
  %"fmul.59" = fmul i32 %".1232", %".1233"
  %"fadd.59" = fadd i32 %"fmul.59", %".1234"
  store i32 %"fadd.59", i32* %"R54_NOTYPE"
  ; @P0 FFMA R52, R19, R21, R52
  %".1237" = load i1, i1* %"P0_Bool"
  %".1238" = icmp ne i1 %".1237", 1
  br i1 %".1238", label %".L_x_2_split_0x1100_conditionalExpr_0x1120", label %".L_x_2_split_0x1130"
.L_x_2_split_0x1100_conditionalExpr_0x1120:
  ; FFMA R52, R19, R21, R52
  %".1241" = load i32, i32* %"R19_NOTYPE"
  %".1242" = load i32, i32* %"R21_NOTYPE"
  %".1243" = load i32, i32* %"R52_NOTYPE"
  %"fmul.60" = fmul i32 %".1241", %".1242"
  %"fadd.60" = fadd i32 %"fmul.60", %".1243"
  store i32 %"fadd.60", i32* %"R52_NOTYPE"
  ; BRA `(.L_x_2_split_0x1130)
  br label %".L_x_2_split_0x1130"
.L_x_2_split_0x1130:
  ; @P0 FFMA R54, R21, R18, R54
  %".1248" = load i1, i1* %"P0_Bool"
  %".1249" = icmp ne i1 %".1248", 1
  br i1 %".1249", label %".L_x_2_split_0x1130_conditionalExpr_0x1130", label %".L_x_1"
.L_x_2_split_0x1130_conditionalExpr_0x1130:
  ; FFMA R54, R21, R18, R54
  %".1252" = load i32, i32* %"R21_NOTYPE"
  %".1253" = load i32, i32* %"R18_NOTYPE"
  %".1254" = load i32, i32* %"R54_NOTYPE"
  %"fmul.61" = fmul i32 %".1252", %".1253"
  %"fadd.61" = fadd i32 %"fmul.61", %".1254"
  store i32 %"fadd.61", i32* %"R54_NOTYPE"
  ; BRA `(.L_x_1)
  br label %".L_x_1"
.L_x_1:
  ; LDG.E.SYS R9, [R26]
  %".1259" = load i32, i32* %"R26_NOTYPE"
  %".1260" = add i32 %".1259", 0
  %"for_LDG.93" = inttoptr i32 %".1260" to i32*
  %".1261" = load i32, i32* %"for_LDG.93"
  store i32 %".1261", i32* %"R9_NOTYPE"
  ; MOV R10, 0x3bbb989d
  store i32 1002150045, i32* %"R10_NOTYPE"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R11, 0x437c0000
  store i32 1132199936, i32* %"R11_NOTYPE"
  ; BSSY B0, `(.L_x_7)
  ; FADD R9, R9, R52
  %".1270" = load i32, i32* %"R9_NOTYPE"
  %".1271" = load i32, i32* %"R52_NOTYPE"
  %"fadd.62" = fadd i32 %".1270", %".1271"
  store i32 %"fadd.62", i32* %"R9_NOTYPE"
  ; FFMA.SAT R10, -R9, R10, 0.5
  %".1274" = load i32, i32* %"R9_NOTYPE"
  %".1275" = sub i32 0, %".1274"
  %".1276" = load i32, i32* %"R10_NOTYPE"
  %"fmul.62" = fmul i32 %".1275", %".1276"
  %"fadd.63" = fadd i32 %"fmul.62", 0.5
  store i32 %"fadd.63", i32* %"R10_NOTYPE"
  ; FFMA.RM R10, R10, R11, 12582913
  %".1279" = load i32, i32* %"R10_NOTYPE"
  %".1280" = load i32, i32* %"R11_NOTYPE"
  %"fmul.63" = fmul i32 %".1279", %".1280"
  %"fadd.64" = fadd i32 %"fmul.63", 12582913
  store i32 %"fadd.64", i32* %"R10_NOTYPE"
  ; FADD R12, R10.reuse, -12583039
  %".1283" = load i32, i32* %"R10_NOTYPE"
  %"fadd.65" = fadd i32 %".1283", -12583039
  store i32 %"fadd.65", i32* %"R12_NOTYPE"
  ; SHF.L.U32 R10, R10, 0x17, RZ
  %".1286" = icmp ult i32 23, 32
  %"SHF_min" = select  i1 %".1286", i32 23, i32 32
  %".1287" = load i32, i32* %"R10_NOTYPE"
  %"zext" = zext i32 0 to i64
  %"zext.1" = zext i32 %".1287" to i64
  %"zext.2" = zext i32 23 to i64
  %"shl.6" = shl i64 %"zext", 32
  %"or" = or i64 %"shl.6", %"zext.1"
  %"shl.7" = shl i64 %"or", %"zext.2"
  %"and" = and i64 %"shl.7", 4294967295
  %"trunc32" = trunc i64 %"and" to i32
  store i32 %"trunc32", i32* %"R10_NOTYPE"
  ; FFMA R12, -R9, 1.4426950216293334961, -R12
  %".1290" = load i32, i32* %"R9_NOTYPE"
  %".1291" = sub i32 0, %".1290"
  %".1292" = load i32, i32* %"R12_NOTYPE"
  %".1293" = sub i32 0, %".1292"
  %"fmul.64" = fmul i32 %".1291", 1.4426950216293335
  %"fadd.66" = fadd i32 %"fmul.64", %".1293"
  store i32 %"fadd.66", i32* %"R12_NOTYPE"
  ; FFMA R12, -R9, 1.925963033500011079e-08, R12
  %".1296" = load i32, i32* %"R9_NOTYPE"
  %".1297" = sub i32 0, %".1296"
  %".1298" = load i32, i32* %"R12_NOTYPE"
  %"fmul.65" = fmul i32 %".1297", 1.925963033500011e-08
  %"fadd.67" = fadd i32 %"fmul.65", %".1298"
  store i32 %"fadd.67", i32* %"R12_NOTYPE"
  ; MUFU.EX2 R9, R12
  %".1301" = load i32, i32* %"R12_NOTYPE"
  %"sint_to_f32" = sitofp i32 %".1301" to float
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %"sint_to_f32")
  %"fp_to_sint32" = fptosi float %"llvm_exp2_f32_result" to i32
  store i32 %"fp_to_sint32", i32* %"R9_NOTYPE"
  ; FFMA R24, R10, R9, 1
  %".1304" = load i32, i32* %"R10_NOTYPE"
  %".1305" = load i32, i32* %"R9_NOTYPE"
  %"fmul.66" = fmul i32 %".1304", %".1305"
  %"fadd.68" = fadd i32 %"fmul.66", 1
  store i32 %"fadd.68", i32* %"R24_NOTYPE"
  ; IADD3 R9, R24, 0x1800000, RZ
  %".1308" = load i32, i32* %"R24_NOTYPE"
  %"add.92" = add i32 %".1308", 25165824
  %"add.93" = add i32 %"add.92", 0
  store i32 %"add.93", i32* %"R9_NOTYPE"
  ; LOP3.LUT R9, R9, 0x7f800000, RZ, 0xc0, !PT
  %".1311" = load i32, i32* %"R9_NOTYPE"
  %".1312" = and i32 %".1311", 2139095040
  store i32 %".1312", i32* %"R9_NOTYPE"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".1315" = load i32, i32* %"R9_NOTYPE"
  %".1316" = load i1, i1* %"PT_Bool"
  %"cmp.15" = icmp sgt i32 %".1315", 33554431
  %".1317" = and i1 %"cmp.15", %".1316"
  store i1 %".1317", i1* %"P0_Bool"
  ; @P0 BRA `(.L_x_8)
  %".1320" = load i1, i1* %"P0_Bool"
  %".1321" = icmp ne i1 %".1320", 1
  br i1 %".1321", label %".L_x_8", label %".L_x_1_split_0x1260"
.L_x_1_split_0x1260:
  ; MOV R10, 0x1280
  store i32 4736, i32* %"R10_NOTYPE"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R9, R22
  %".1327" = load i32, i32* %"R22_NOTYPE"
  store i32 %".1327", i32* %"R9_NOTYPE"
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %".1332" = load i32, i32* %"R24_NOTYPE"
  %".1333" = fdiv i32 1, %".1332"
  store i32 %".1333", i32* %"R9_NOTYPE"
  ; FFMA R10, R24, R9, -1
  %".1336" = load i32, i32* %"R24_NOTYPE"
  %".1337" = load i32, i32* %"R9_NOTYPE"
  %"fmul.67" = fmul i32 %".1336", %".1337"
  %"fadd.69" = fadd i32 %"fmul.67", -1
  store i32 %"fadd.69", i32* %"R10_NOTYPE"
  ; FADD.FTZ R10, -R10, -RZ
  %".1340" = load i32, i32* %"R10_NOTYPE"
  %".1341" = sub i32 0, %".1340"
  %"fadd.70" = fadd i32 %".1341", 0
  store i32 %"fadd.70", i32* %"R10_NOTYPE"
  ; FFMA R9, R9, R10, R9
  %".1344" = load i32, i32* %"R9_NOTYPE"
  %".1345" = load i32, i32* %"R10_NOTYPE"
  %".1346" = load i32, i32* %"R9_NOTYPE"
  %"fmul.68" = fmul i32 %".1344", %".1345"
  %"fadd.71" = fadd i32 %"fmul.68", %".1346"
  store i32 %"fadd.71", i32* %"R9_NOTYPE"
.L_x_9:
  ; BSYNC B0
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  %".1350" = load i32, i32* %"R32_NOTYPE"
  %".1351" = add i32 %".1350", 0
  %"for_LDG.94" = inttoptr i32 %".1351" to i32*
  %".1352" = load i32, i32* %"for_LDG.94"
  store i32 %".1352", i32* %"R11_NOTYPE"
  ; MOV R10, 0x3bbb989d
  store i32 1002150045, i32* %"R10_NOTYPE"
  ; MOV R13, 0x437c0000
  store i32 1132199936, i32* %"R13_NOTYPE"
  ; FADD R11, R11, R54
  %".1359" = load i32, i32* %"R11_NOTYPE"
  %".1360" = load i32, i32* %"R54_NOTYPE"
  %"fadd.72" = fadd i32 %".1359", %".1360"
  store i32 %"fadd.72", i32* %"R11_NOTYPE"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %".1363" = load i32, i32* %"R11_NOTYPE"
  %".1364" = sub i32 0, %".1363"
  %".1365" = load i32, i32* %"R10_NOTYPE"
  %"fmul.69" = fmul i32 %".1364", %".1365"
  %"fadd.73" = fadd i32 %"fmul.69", 0.5
  store i32 %"fadd.73", i32* %"R10_NOTYPE"
  ; FFMA.RM R10, R10, R13, 12582913
  %".1368" = load i32, i32* %"R10_NOTYPE"
  %".1369" = load i32, i32* %"R13_NOTYPE"
  %"fmul.70" = fmul i32 %".1368", %".1369"
  %"fadd.74" = fadd i32 %"fmul.70", 12582913
  store i32 %"fadd.74", i32* %"R10_NOTYPE"
  ; FADD R12, R10.reuse, -12583039
  %".1372" = load i32, i32* %"R10_NOTYPE"
  %"fadd.75" = fadd i32 %".1372", -12583039
  store i32 %"fadd.75", i32* %"R12_NOTYPE"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".1375" = icmp ult i32 23, 32
  %"SHF_min.1" = select  i1 %".1375", i32 23, i32 32
  %".1376" = load i32, i32* %"R10_NOTYPE"
  %"zext.3" = zext i32 0 to i64
  %"zext.4" = zext i32 %".1376" to i64
  %"zext.5" = zext i32 23 to i64
  %"shl.8" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.8", %"zext.4"
  %"shl.9" = shl i64 %"or.1", %"zext.5"
  %"and.1" = and i64 %"shl.9", 4294967295
  %"trunc32.1" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.1", i32* %"R20_NOTYPE"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %".1379" = load i32, i32* %"R11_NOTYPE"
  %".1380" = sub i32 0, %".1379"
  %".1381" = load i32, i32* %"R12_NOTYPE"
  %".1382" = sub i32 0, %".1381"
  %"fmul.71" = fmul i32 %".1380", 1.4426950216293335
  %"fadd.76" = fadd i32 %"fmul.71", %".1382"
  store i32 %"fadd.76", i32* %"R12_NOTYPE"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %".1385" = load i32, i32* %"R11_NOTYPE"
  %".1386" = sub i32 0, %".1385"
  %".1387" = load i32, i32* %"R12_NOTYPE"
  %"fmul.72" = fmul i32 %".1386", 1.925963033500011e-08
  %"fadd.77" = fadd i32 %"fmul.72", %".1387"
  store i32 %"fadd.77", i32* %"R12_NOTYPE"
  ; MUFU.EX2 R11, R12
  %".1390" = load i32, i32* %"R12_NOTYPE"
  %"sint_to_f32.1" = sitofp i32 %".1390" to float
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %"sint_to_f32.1")
  %"fp_to_sint32.1" = fptosi float %"llvm_exp2_f32_result.1" to i32
  store i32 %"fp_to_sint32.1", i32* %"R11_NOTYPE"
  ; FFMA R20, R20, R11, 1
  %".1393" = load i32, i32* %"R20_NOTYPE"
  %".1394" = load i32, i32* %"R11_NOTYPE"
  %"fmul.73" = fmul i32 %".1393", %".1394"
  %"fadd.78" = fadd i32 %"fmul.73", 1
  store i32 %"fadd.78", i32* %"R20_NOTYPE"
  ; @!P4 BRA `(.L_x_10)
  %".1397" = load i1, i1* %"P4_Bool"
  %".1398" = icmp eq i1 %".1397", 1
  br i1 %".1398", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".1401" = load i32, i32* %"R5_NOTYPE"
  %".1402" = load i1, i1* %"PT_Bool"
  %"cmp.16" = icmp sge i32 %".1401", 3
  %".1403" = and i1 %"cmp.16", %".1402"
  store i1 %".1403", i1* %"P0_Bool"
  ; MOV R8, RZ
  %".1406" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".1406", i32* %"R8_NOTYPE"
  ; MOV R22, RZ
  %".1409" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".1409", i32* %"R22_NOTYPE"
  ; @!P0 BRA `(.L_x_11)
  %".1412" = load i1, i1* %"P0_Bool"
  %".1413" = icmp eq i1 %".1412", 1
  br i1 %".1413", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".1416" = load i32, i32* %"R7_NOTYPE"
  %".1417" = load i1, i1* %"PT_Bool"
  %"cmp.17" = icmp sgt i32 %".1416", 0
  %".1418" = and i1 %"cmp.17", %".1417"
  store i1 %".1418", i1* %"P0_Bool"
  ; MOV R8, RZ
  %".1421" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".1421", i32* %"R8_NOTYPE"
  ; MOV R22, RZ
  %".1424" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".1424", i32* %"R22_NOTYPE"
  ; MOV R23, R7
  %".1427" = load i32, i32* %"R7_NOTYPE"
  store i32 %".1427", i32* %"R23_NOTYPE"
  ; @!P0 BRA `(.L_x_12)
  %".1430" = load i1, i1* %"P0_Bool"
  %".1431" = icmp eq i1 %".1430", 1
  br i1 %".1431", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".1434" = load i32, i32* %"R23_NOTYPE"
  %".1435" = load i1, i1* %"PT_Bool"
  %"cmp.18" = icmp sgt i32 %".1434", 12
  %".1436" = and i1 %"cmp.18", %".1435"
  store i1 %".1436", i1* %"P1_Bool"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".1439" = and i1 1, 1
  %".1440" = or i1 %".1439", 1
  ; @!P1 BRA `(.L_x_13)
  %".1442" = load i1, i1* %"P1_Bool"
  %".1443" = icmp eq i1 %".1442", 1
  br i1 %".1443", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1446" = xor i1 1, 1
  %".1447" = and i1 %".1446", 1
  %".1448" = and i1 %".1447", 1
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, i32* %"R49_NOTYPE"
  ; IADD3 R16, R3, R22, RZ
  %".1452" = load i32, i32* %"R3_NOTYPE"
  %".1453" = load i32, i32* %"R22_NOTYPE"
  %"add.94" = add i32 %".1452", %".1453"
  %"add.95" = add i32 %"add.94", 0
  store i32 %"add.95", i32* %"R16_NOTYPE"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".1456" = load i32, i32* %"R22_NOTYPE"
  %".1457" = load i32, i32* %"R49_NOTYPE"
  %"mul.36" = mul i32 %".1456", %".1457"
  %"add.96" = add i32 %"mul.36", %"Arg_3"
  store i32 %"add.96", i32* %"R12_NOTYPE"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".1460" = load i32, i32* %"R16_NOTYPE"
  %".1461" = load i32, i32* %"R49_NOTYPE"
  %"mul.37" = mul i32 %".1460", %".1461"
  %"add.97" = add i32 %"mul.37", %"Arg_4"
  store i32 %"add.97", i32* %"R16_NOTYPE"
  ; IADD3 R18, R22, 0x4, RZ
  %".1464" = load i32, i32* %"R22_NOTYPE"
  %"add.98" = add i32 %".1464", 4
  %"add.99" = add i32 %"add.98", 0
  store i32 %"add.99", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R24, [R12]
  %".1467" = load i32, i32* %"R12_NOTYPE"
  %".1468" = add i32 %".1467", 0
  %"for_LDG.95" = inttoptr i32 %".1468" to i32*
  %".1469" = load i32, i32* %"for_LDG.95"
  store i32 %".1469", i32* %"R24_NOTYPE"
  ; IADD3 R14, R3, R18, RZ
  %".1472" = load i32, i32* %"R3_NOTYPE"
  %".1473" = load i32, i32* %"R18_NOTYPE"
  %"add.100" = add i32 %".1472", %".1473"
  %"add.101" = add i32 %"add.100", 0
  store i32 %"add.101", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R21, [R16]
  %".1476" = load i32, i32* %"R16_NOTYPE"
  %".1477" = add i32 %".1476", 0
  %"for_LDG.96" = inttoptr i32 %".1477" to i32*
  %".1478" = load i32, i32* %"for_LDG.96"
  store i32 %".1478", i32* %"R21_NOTYPE"
  ; LDG.E.SYS R36, [R12+0x4]
  %".1481" = load i32, i32* %"R12_NOTYPE"
  %".1482" = add i32 %".1481", 4
  %"for_LDG.97" = inttoptr i32 %".1482" to i32*
  %".1483" = load i32, i32* %"for_LDG.97"
  store i32 %".1483", i32* %"R36_NOTYPE"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".1486" = load i32, i32* %"R18_NOTYPE"
  %".1487" = load i32, i32* %"R49_NOTYPE"
  %"mul.38" = mul i32 %".1486", %".1487"
  %"add.102" = add i32 %"mul.38", %"Arg_3"
  store i32 %"add.102", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R25, [R16+0x4]
  %".1490" = load i32, i32* %"R16_NOTYPE"
  %".1491" = add i32 %".1490", 4
  %"for_LDG.98" = inttoptr i32 %".1491" to i32*
  %".1492" = load i32, i32* %"for_LDG.98"
  store i32 %".1492", i32* %"R25_NOTYPE"
  ; LDG.E.SYS R46, [R12+0x8]
  %".1495" = load i32, i32* %"R12_NOTYPE"
  %".1496" = add i32 %".1495", 8
  %"for_LDG.99" = inttoptr i32 %".1496" to i32*
  %".1497" = load i32, i32* %"for_LDG.99"
  store i32 %".1497", i32* %"R46_NOTYPE"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".1500" = load i32, i32* %"R14_NOTYPE"
  %".1501" = load i32, i32* %"R49_NOTYPE"
  %"mul.39" = mul i32 %".1500", %".1501"
  %"add.103" = add i32 %"mul.39", %"Arg_4"
  store i32 %"add.103", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R34, [R16+0x8]
  %".1504" = load i32, i32* %"R16_NOTYPE"
  %".1505" = add i32 %".1504", 8
  %"for_LDG.100" = inttoptr i32 %".1505" to i32*
  %".1506" = load i32, i32* %"for_LDG.100"
  store i32 %".1506", i32* %"R34_NOTYPE"
  ; LDG.E.SYS R44, [R12+0xc]
  %".1509" = load i32, i32* %"R12_NOTYPE"
  %".1510" = add i32 %".1509", 12
  %"for_LDG.101" = inttoptr i32 %".1510" to i32*
  %".1511" = load i32, i32* %"for_LDG.101"
  store i32 %".1511", i32* %"R44_NOTYPE"
  ; IADD3 R10, R22, 0x8, RZ
  %".1514" = load i32, i32* %"R22_NOTYPE"
  %"add.104" = add i32 %".1514", 8
  %"add.105" = add i32 %"add.104", 0
  store i32 %"add.105", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R41, [R16+0xc]
  %".1517" = load i32, i32* %"R16_NOTYPE"
  %".1518" = add i32 %".1517", 12
  %"for_LDG.102" = inttoptr i32 %".1518" to i32*
  %".1519" = load i32, i32* %"for_LDG.102"
  store i32 %".1519", i32* %"R41_NOTYPE"
  ; LDG.E.SYS R42, [R18]
  %".1522" = load i32, i32* %"R18_NOTYPE"
  %".1523" = add i32 %".1522", 0
  %"for_LDG.103" = inttoptr i32 %".1523" to i32*
  %".1524" = load i32, i32* %"for_LDG.103"
  store i32 %".1524", i32* %"R42_NOTYPE"
  ; IADD3 R50, R3, R10, RZ
  %".1527" = load i32, i32* %"R3_NOTYPE"
  %".1528" = load i32, i32* %"R10_NOTYPE"
  %"add.106" = add i32 %".1527", %".1528"
  %"add.107" = add i32 %"add.106", 0
  store i32 %"add.107", i32* %"R50_NOTYPE"
  ; LDG.E.SYS R39, [R14]
  %".1531" = load i32, i32* %"R14_NOTYPE"
  %".1532" = add i32 %".1531", 0
  %"for_LDG.104" = inttoptr i32 %".1532" to i32*
  %".1533" = load i32, i32* %"for_LDG.104"
  store i32 %".1533", i32* %"R39_NOTYPE"
  ; LDG.E.SYS R40, [R18+0x4]
  %".1536" = load i32, i32* %"R18_NOTYPE"
  %".1537" = add i32 %".1536", 4
  %"for_LDG.105" = inttoptr i32 %".1537" to i32*
  %".1538" = load i32, i32* %"for_LDG.105"
  store i32 %".1538", i32* %"R40_NOTYPE"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".1541" = load i32, i32* %"R10_NOTYPE"
  %".1542" = load i32, i32* %"R49_NOTYPE"
  %"mul.40" = mul i32 %".1541", %".1542"
  %"add.108" = add i32 %"mul.40", %"Arg_3"
  store i32 %"add.108", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R37, [R14+0x4]
  %".1545" = load i32, i32* %"R14_NOTYPE"
  %".1546" = add i32 %".1545", 4
  %"for_LDG.106" = inttoptr i32 %".1546" to i32*
  %".1547" = load i32, i32* %"for_LDG.106"
  store i32 %".1547", i32* %"R37_NOTYPE"
  ; LDG.E.SYS R38, [R18+0x8]
  %".1550" = load i32, i32* %"R18_NOTYPE"
  %".1551" = add i32 %".1550", 8
  %"for_LDG.107" = inttoptr i32 %".1551" to i32*
  %".1552" = load i32, i32* %"for_LDG.107"
  store i32 %".1552", i32* %"R38_NOTYPE"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".1555" = load i32, i32* %"R50_NOTYPE"
  %".1556" = load i32, i32* %"R49_NOTYPE"
  %"mul.41" = mul i32 %".1555", %".1556"
  %"add.109" = add i32 %"mul.41", %"Arg_4"
  store i32 %"add.109", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R35, [R14+0x8]
  %".1559" = load i32, i32* %"R14_NOTYPE"
  %".1560" = add i32 %".1559", 8
  %"for_LDG.108" = inttoptr i32 %".1560" to i32*
  %".1561" = load i32, i32* %"for_LDG.108"
  store i32 %".1561", i32* %"R35_NOTYPE"
  ; LDG.E.SYS R48, [R18+0xc]
  %".1564" = load i32, i32* %"R18_NOTYPE"
  %".1565" = add i32 %".1564", 12
  %"for_LDG.109" = inttoptr i32 %".1565" to i32*
  %".1566" = load i32, i32* %"for_LDG.109"
  store i32 %".1566", i32* %"R48_NOTYPE"
  ; IADD3 R16, R22, 0xc, RZ
  %".1569" = load i32, i32* %"R22_NOTYPE"
  %"add.110" = add i32 %".1569", 12
  %"add.111" = add i32 %"add.110", 0
  store i32 %"add.111", i32* %"R16_NOTYPE"
  ; LDG.E.SYS R47, [R14+0xc]
  %".1572" = load i32, i32* %"R14_NOTYPE"
  %".1573" = add i32 %".1572", 12
  %"for_LDG.110" = inttoptr i32 %".1573" to i32*
  %".1574" = load i32, i32* %"for_LDG.110"
  store i32 %".1574", i32* %"R47_NOTYPE"
  ; LDG.E.SYS R54, [R10]
  %".1577" = load i32, i32* %"R10_NOTYPE"
  %".1578" = add i32 %".1577", 0
  %"for_LDG.111" = inttoptr i32 %".1578" to i32*
  %".1579" = load i32, i32* %"for_LDG.111"
  store i32 %".1579", i32* %"R54_NOTYPE"
  ; IADD3 R58, R3, R16, RZ
  %".1582" = load i32, i32* %"R3_NOTYPE"
  %".1583" = load i32, i32* %"R16_NOTYPE"
  %"add.112" = add i32 %".1582", %".1583"
  %"add.113" = add i32 %"add.112", 0
  store i32 %"add.113", i32* %"R58_NOTYPE"
  ; LDG.E.SYS R45, [R12]
  %".1586" = load i32, i32* %"R12_NOTYPE"
  %".1587" = add i32 %".1586", 0
  %"for_LDG.112" = inttoptr i32 %".1587" to i32*
  %".1588" = load i32, i32* %"for_LDG.112"
  store i32 %".1588", i32* %"R45_NOTYPE"
  ; LDG.E.SYS R52, [R10+0x4]
  %".1591" = load i32, i32* %"R10_NOTYPE"
  %".1592" = add i32 %".1591", 4
  %"for_LDG.113" = inttoptr i32 %".1592" to i32*
  %".1593" = load i32, i32* %"for_LDG.113"
  store i32 %".1593", i32* %"R52_NOTYPE"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".1596" = load i32, i32* %"R16_NOTYPE"
  %".1597" = load i32, i32* %"R49_NOTYPE"
  %"mul.42" = mul i32 %".1596", %".1597"
  %"add.114" = add i32 %"mul.42", %"Arg_3"
  store i32 %"add.114", i32* %"R16_NOTYPE"
  ; LDG.E.SYS R43, [R12+0x4]
  %".1600" = load i32, i32* %"R12_NOTYPE"
  %".1601" = add i32 %".1600", 4
  %"for_LDG.114" = inttoptr i32 %".1601" to i32*
  %".1602" = load i32, i32* %"for_LDG.114"
  store i32 %".1602", i32* %"R43_NOTYPE"
  ; LDG.E.SYS R50, [R10+0x8]
  %".1605" = load i32, i32* %"R10_NOTYPE"
  %".1606" = add i32 %".1605", 8
  %"for_LDG.115" = inttoptr i32 %".1606" to i32*
  %".1607" = load i32, i32* %"for_LDG.115"
  store i32 %".1607", i32* %"R50_NOTYPE"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".1610" = load i32, i32* %"R58_NOTYPE"
  %".1611" = load i32, i32* %"R49_NOTYPE"
  %"mul.43" = mul i32 %".1610", %".1611"
  %"add.115" = add i32 %"mul.43", %"Arg_4"
  store i32 %"add.115", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R18, [R12+0x8]
  %".1614" = load i32, i32* %"R12_NOTYPE"
  %".1615" = add i32 %".1614", 8
  %"for_LDG.116" = inttoptr i32 %".1615" to i32*
  %".1616" = load i32, i32* %"for_LDG.116"
  store i32 %".1616", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R56, [R10+0xc]
  %".1619" = load i32, i32* %"R10_NOTYPE"
  %".1620" = add i32 %".1619", 12
  %"for_LDG.117" = inttoptr i32 %".1620" to i32*
  %".1621" = load i32, i32* %"for_LDG.117"
  store i32 %".1621", i32* %"R56_NOTYPE"
  ; LDG.E.SYS R55, [R12+0xc]
  %".1624" = load i32, i32* %"R12_NOTYPE"
  %".1625" = add i32 %".1624", 12
  %"for_LDG.118" = inttoptr i32 %".1625" to i32*
  %".1626" = load i32, i32* %"for_LDG.118"
  store i32 %".1626", i32* %"R55_NOTYPE"
  ; LDG.E.SYS R51, [R16]
  %".1629" = load i32, i32* %"R16_NOTYPE"
  %".1630" = add i32 %".1629", 0
  %"for_LDG.119" = inttoptr i32 %".1630" to i32*
  %".1631" = load i32, i32* %"for_LDG.119"
  store i32 %".1631", i32* %"R51_NOTYPE"
  ; LDG.E.SYS R53, [R14]
  %".1634" = load i32, i32* %"R14_NOTYPE"
  %".1635" = add i32 %".1634", 0
  %"for_LDG.120" = inttoptr i32 %".1635" to i32*
  %".1636" = load i32, i32* %"for_LDG.120"
  store i32 %".1636", i32* %"R53_NOTYPE"
  ; LDG.E.SYS R60, [R16+0x4]
  %".1639" = load i32, i32* %"R16_NOTYPE"
  %".1640" = add i32 %".1639", 4
  %"for_LDG.121" = inttoptr i32 %".1640" to i32*
  %".1641" = load i32, i32* %"for_LDG.121"
  store i32 %".1641", i32* %"R60_NOTYPE"
  ; LDG.E.SYS R49, [R14+0x4]
  %".1644" = load i32, i32* %"R14_NOTYPE"
  %".1645" = add i32 %".1644", 4
  %"for_LDG.122" = inttoptr i32 %".1645" to i32*
  %".1646" = load i32, i32* %"for_LDG.122"
  store i32 %".1646", i32* %"R49_NOTYPE"
  ; LDG.E.SYS R58, [R16+0x8]
  %".1649" = load i32, i32* %"R16_NOTYPE"
  %".1650" = add i32 %".1649", 8
  %"for_LDG.123" = inttoptr i32 %".1650" to i32*
  %".1651" = load i32, i32* %"for_LDG.123"
  store i32 %".1651", i32* %"R58_NOTYPE"
  ; LDG.E.SYS R19, [R14+0x8]
  %".1654" = load i32, i32* %"R14_NOTYPE"
  %".1655" = add i32 %".1654", 8
  %"for_LDG.124" = inttoptr i32 %".1655" to i32*
  %".1656" = load i32, i32* %"for_LDG.124"
  store i32 %".1656", i32* %"R19_NOTYPE"
  ; LDG.E.SYS R57, [R16+0xc]
  %".1659" = load i32, i32* %"R16_NOTYPE"
  %".1660" = add i32 %".1659", 12
  %"for_LDG.125" = inttoptr i32 %".1660" to i32*
  %".1661" = load i32, i32* %"for_LDG.125"
  store i32 %".1661", i32* %"R57_NOTYPE"
  ; LDG.E.SYS R59, [R14+0xc]
  %".1664" = load i32, i32* %"R14_NOTYPE"
  %".1665" = add i32 %".1664", 12
  %"for_LDG.126" = inttoptr i32 %".1665" to i32*
  %".1666" = load i32, i32* %"for_LDG.126"
  store i32 %".1666", i32* %"R59_NOTYPE"
  ; IADD3 R23, R23, -0x10, RZ
  %".1669" = load i32, i32* %"R23_NOTYPE"
  %"add.116" = add i32 %".1669", -16
  %"add.117" = add i32 %"add.116", 0
  store i32 %"add.117", i32* %"R23_NOTYPE"
  ; IADD3 R22, R22, 0x10, RZ
  %".1672" = load i32, i32* %"R22_NOTYPE"
  %"add.118" = add i32 %".1672", 16
  %"add.119" = add i32 %"add.118", 0
  store i32 %"add.119", i32* %"R22_NOTYPE"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".1675" = load i32, i32* %"R23_NOTYPE"
  %".1676" = load i1, i1* %"PT_Bool"
  %"cmp.19" = icmp sgt i32 %".1675", 12
  %".1677" = and i1 %"cmp.19", %".1676"
  store i1 %".1677", i1* %"P1_Bool"
  ; FMUL R24, R24, R9
  %".1680" = load i32, i32* %"R24_NOTYPE"
  %".1681" = load i32, i32* %"R9_NOTYPE"
  %"fmul.74" = fmul i32 %".1680", %".1681"
  store i32 %"fmul.74", i32* %"R24_NOTYPE"
  ; FFMA R24, R24, R21, R8
  %".1684" = load i32, i32* %"R24_NOTYPE"
  %".1685" = load i32, i32* %"R21_NOTYPE"
  %".1686" = load i32, i32* %"R8_NOTYPE"
  %"fmul.75" = fmul i32 %".1684", %".1685"
  %"fadd.79" = fadd i32 %"fmul.75", %".1686"
  store i32 %"fadd.79", i32* %"R24_NOTYPE"
  ; FMUL R36, R36, R9
  %".1689" = load i32, i32* %"R36_NOTYPE"
  %".1690" = load i32, i32* %"R9_NOTYPE"
  %"fmul.76" = fmul i32 %".1689", %".1690"
  store i32 %"fmul.76", i32* %"R36_NOTYPE"
  ; FFMA R25, R36, R25, R24
  %".1693" = load i32, i32* %"R36_NOTYPE"
  %".1694" = load i32, i32* %"R25_NOTYPE"
  %".1695" = load i32, i32* %"R24_NOTYPE"
  %"fmul.77" = fmul i32 %".1693", %".1694"
  %"fadd.80" = fadd i32 %"fmul.77", %".1695"
  store i32 %"fadd.80", i32* %"R25_NOTYPE"
  ; FMUL R46, R46, R9
  %".1698" = load i32, i32* %"R46_NOTYPE"
  %".1699" = load i32, i32* %"R9_NOTYPE"
  %"fmul.78" = fmul i32 %".1698", %".1699"
  store i32 %"fmul.78", i32* %"R46_NOTYPE"
  ; FFMA R34, R46, R34, R25
  %".1702" = load i32, i32* %"R46_NOTYPE"
  %".1703" = load i32, i32* %"R34_NOTYPE"
  %".1704" = load i32, i32* %"R25_NOTYPE"
  %"fmul.79" = fmul i32 %".1702", %".1703"
  %"fadd.81" = fadd i32 %"fmul.79", %".1704"
  store i32 %"fadd.81", i32* %"R34_NOTYPE"
  ; FMUL R44, R44, R9
  %".1707" = load i32, i32* %"R44_NOTYPE"
  %".1708" = load i32, i32* %"R9_NOTYPE"
  %"fmul.80" = fmul i32 %".1707", %".1708"
  store i32 %"fmul.80", i32* %"R44_NOTYPE"
  ; FFMA R34, R44, R41, R34
  %".1711" = load i32, i32* %"R44_NOTYPE"
  %".1712" = load i32, i32* %"R41_NOTYPE"
  %".1713" = load i32, i32* %"R34_NOTYPE"
  %"fmul.81" = fmul i32 %".1711", %".1712"
  %"fadd.82" = fadd i32 %"fmul.81", %".1713"
  store i32 %"fadd.82", i32* %"R34_NOTYPE"
  ; FMUL R42, R42, R9
  %".1716" = load i32, i32* %"R42_NOTYPE"
  %".1717" = load i32, i32* %"R9_NOTYPE"
  %"fmul.82" = fmul i32 %".1716", %".1717"
  store i32 %"fmul.82", i32* %"R42_NOTYPE"
  ; FFMA R34, R42, R39, R34
  %".1720" = load i32, i32* %"R42_NOTYPE"
  %".1721" = load i32, i32* %"R39_NOTYPE"
  %".1722" = load i32, i32* %"R34_NOTYPE"
  %"fmul.83" = fmul i32 %".1720", %".1721"
  %"fadd.83" = fadd i32 %"fmul.83", %".1722"
  store i32 %"fadd.83", i32* %"R34_NOTYPE"
  ; FMUL R40, R40, R9
  %".1725" = load i32, i32* %"R40_NOTYPE"
  %".1726" = load i32, i32* %"R9_NOTYPE"
  %"fmul.84" = fmul i32 %".1725", %".1726"
  store i32 %"fmul.84", i32* %"R40_NOTYPE"
  ; FFMA R34, R40, R37, R34
  %".1729" = load i32, i32* %"R40_NOTYPE"
  %".1730" = load i32, i32* %"R37_NOTYPE"
  %".1731" = load i32, i32* %"R34_NOTYPE"
  %"fmul.85" = fmul i32 %".1729", %".1730"
  %"fadd.84" = fadd i32 %"fmul.85", %".1731"
  store i32 %"fadd.84", i32* %"R34_NOTYPE"
  ; FMUL R38, R38, R9
  %".1734" = load i32, i32* %"R38_NOTYPE"
  %".1735" = load i32, i32* %"R9_NOTYPE"
  %"fmul.86" = fmul i32 %".1734", %".1735"
  store i32 %"fmul.86", i32* %"R38_NOTYPE"
  ; FFMA R34, R38, R35, R34
  %".1738" = load i32, i32* %"R38_NOTYPE"
  %".1739" = load i32, i32* %"R35_NOTYPE"
  %".1740" = load i32, i32* %"R34_NOTYPE"
  %"fmul.87" = fmul i32 %".1738", %".1739"
  %"fadd.85" = fadd i32 %"fmul.87", %".1740"
  store i32 %"fadd.85", i32* %"R34_NOTYPE"
  ; FMUL R48, R48, R9
  %".1743" = load i32, i32* %"R48_NOTYPE"
  %".1744" = load i32, i32* %"R9_NOTYPE"
  %"fmul.88" = fmul i32 %".1743", %".1744"
  store i32 %"fmul.88", i32* %"R48_NOTYPE"
  ; FFMA R34, R48, R47, R34
  %".1747" = load i32, i32* %"R48_NOTYPE"
  %".1748" = load i32, i32* %"R47_NOTYPE"
  %".1749" = load i32, i32* %"R34_NOTYPE"
  %"fmul.89" = fmul i32 %".1747", %".1748"
  %"fadd.86" = fadd i32 %"fmul.89", %".1749"
  store i32 %"fadd.86", i32* %"R34_NOTYPE"
  ; FMUL R54, R54, R9
  %".1752" = load i32, i32* %"R54_NOTYPE"
  %".1753" = load i32, i32* %"R9_NOTYPE"
  %"fmul.90" = fmul i32 %".1752", %".1753"
  store i32 %"fmul.90", i32* %"R54_NOTYPE"
  ; FFMA R34, R54, R45, R34
  %".1756" = load i32, i32* %"R54_NOTYPE"
  %".1757" = load i32, i32* %"R45_NOTYPE"
  %".1758" = load i32, i32* %"R34_NOTYPE"
  %"fmul.91" = fmul i32 %".1756", %".1757"
  %"fadd.87" = fadd i32 %"fmul.91", %".1758"
  store i32 %"fadd.87", i32* %"R34_NOTYPE"
  ; FMUL R52, R52, R9
  %".1761" = load i32, i32* %"R52_NOTYPE"
  %".1762" = load i32, i32* %"R9_NOTYPE"
  %"fmul.92" = fmul i32 %".1761", %".1762"
  store i32 %"fmul.92", i32* %"R52_NOTYPE"
  ; FFMA R43, R52, R43, R34
  %".1765" = load i32, i32* %"R52_NOTYPE"
  %".1766" = load i32, i32* %"R43_NOTYPE"
  %".1767" = load i32, i32* %"R34_NOTYPE"
  %"fmul.93" = fmul i32 %".1765", %".1766"
  %"fadd.88" = fadd i32 %"fmul.93", %".1767"
  store i32 %"fadd.88", i32* %"R43_NOTYPE"
  ; FMUL R50, R50, R9
  %".1770" = load i32, i32* %"R50_NOTYPE"
  %".1771" = load i32, i32* %"R9_NOTYPE"
  %"fmul.94" = fmul i32 %".1770", %".1771"
  store i32 %"fmul.94", i32* %"R50_NOTYPE"
  ; FFMA R18, R50, R18, R43
  %".1774" = load i32, i32* %"R50_NOTYPE"
  %".1775" = load i32, i32* %"R18_NOTYPE"
  %".1776" = load i32, i32* %"R43_NOTYPE"
  %"fmul.95" = fmul i32 %".1774", %".1775"
  %"fadd.89" = fadd i32 %"fmul.95", %".1776"
  store i32 %"fadd.89", i32* %"R18_NOTYPE"
  ; FMUL R56, R56, R9
  %".1779" = load i32, i32* %"R56_NOTYPE"
  %".1780" = load i32, i32* %"R9_NOTYPE"
  %"fmul.96" = fmul i32 %".1779", %".1780"
  store i32 %"fmul.96", i32* %"R56_NOTYPE"
  ; FFMA R18, R56, R55, R18
  %".1783" = load i32, i32* %"R56_NOTYPE"
  %".1784" = load i32, i32* %"R55_NOTYPE"
  %".1785" = load i32, i32* %"R18_NOTYPE"
  %"fmul.97" = fmul i32 %".1783", %".1784"
  %"fadd.90" = fadd i32 %"fmul.97", %".1785"
  store i32 %"fadd.90", i32* %"R18_NOTYPE"
  ; FMUL R51, R51, R9
  %".1788" = load i32, i32* %"R51_NOTYPE"
  %".1789" = load i32, i32* %"R9_NOTYPE"
  %"fmul.98" = fmul i32 %".1788", %".1789"
  store i32 %"fmul.98", i32* %"R51_NOTYPE"
  ; FFMA R18, R51, R53, R18
  %".1792" = load i32, i32* %"R51_NOTYPE"
  %".1793" = load i32, i32* %"R53_NOTYPE"
  %".1794" = load i32, i32* %"R18_NOTYPE"
  %"fmul.99" = fmul i32 %".1792", %".1793"
  %"fadd.91" = fadd i32 %"fmul.99", %".1794"
  store i32 %"fadd.91", i32* %"R18_NOTYPE"
  ; FMUL R60, R60, R9
  %".1797" = load i32, i32* %"R60_NOTYPE"
  %".1798" = load i32, i32* %"R9_NOTYPE"
  %"fmul.100" = fmul i32 %".1797", %".1798"
  store i32 %"fmul.100", i32* %"R60_NOTYPE"
  ; FFMA R18, R60, R49, R18
  %".1801" = load i32, i32* %"R60_NOTYPE"
  %".1802" = load i32, i32* %"R49_NOTYPE"
  %".1803" = load i32, i32* %"R18_NOTYPE"
  %"fmul.101" = fmul i32 %".1801", %".1802"
  %"fadd.92" = fadd i32 %"fmul.101", %".1803"
  store i32 %"fadd.92", i32* %"R18_NOTYPE"
  ; FMUL R58, R58, R9
  %".1806" = load i32, i32* %"R58_NOTYPE"
  %".1807" = load i32, i32* %"R9_NOTYPE"
  %"fmul.102" = fmul i32 %".1806", %".1807"
  store i32 %"fmul.102", i32* %"R58_NOTYPE"
  ; FFMA R18, R58, R19, R18
  %".1810" = load i32, i32* %"R58_NOTYPE"
  %".1811" = load i32, i32* %"R19_NOTYPE"
  %".1812" = load i32, i32* %"R18_NOTYPE"
  %"fmul.103" = fmul i32 %".1810", %".1811"
  %"fadd.93" = fadd i32 %"fmul.103", %".1812"
  store i32 %"fadd.93", i32* %"R18_NOTYPE"
  ; FMUL R57, R57, R9
  %".1815" = load i32, i32* %"R57_NOTYPE"
  %".1816" = load i32, i32* %"R9_NOTYPE"
  %"fmul.104" = fmul i32 %".1815", %".1816"
  store i32 %"fmul.104", i32* %"R57_NOTYPE"
  ; FFMA R8, R57, R59, R18
  %".1819" = load i32, i32* %"R57_NOTYPE"
  %".1820" = load i32, i32* %"R59_NOTYPE"
  %".1821" = load i32, i32* %"R18_NOTYPE"
  %"fmul.105" = fmul i32 %".1819", %".1820"
  %"fadd.94" = fadd i32 %"fmul.105", %".1821"
  store i32 %"fadd.94", i32* %"R8_NOTYPE"
  ; @P1 BRA `(.L_x_14)
  %".1824" = load i1, i1* %"P1_Bool"
  %".1825" = icmp ne i1 %".1824", 1
  br i1 %".1825", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".1828" = load i32, i32* %"R23_NOTYPE"
  %".1829" = load i1, i1* %"PT_Bool"
  %"cmp.20" = icmp sgt i32 %".1828", 4
  %".1830" = and i1 %"cmp.20", %".1829"
  store i1 %".1830", i1* %"P1_Bool"
  ; @!P1 BRA `(.L_x_15)
  %".1833" = load i1, i1* %"P1_Bool"
  %".1834" = icmp eq i1 %".1833", 1
  br i1 %".1834", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, i32* %"R13_NOTYPE"
  ; IADD3 R16, R3, R22, RZ
  %".1839" = load i32, i32* %"R3_NOTYPE"
  %".1840" = load i32, i32* %"R22_NOTYPE"
  %"add.120" = add i32 %".1839", %".1840"
  %"add.121" = add i32 %"add.120", 0
  store i32 %"add.121", i32* %"R16_NOTYPE"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".1843" = load i32, i32* %"R22_NOTYPE"
  %".1844" = load i32, i32* %"R13_NOTYPE"
  %"mul.44" = mul i32 %".1843", %".1844"
  %"add.122" = add i32 %"mul.44", %"Arg_3"
  store i32 %"add.122", i32* %"R14_NOTYPE"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".1847" = load i32, i32* %"R16_NOTYPE"
  %".1848" = load i32, i32* %"R13_NOTYPE"
  %"mul.45" = mul i32 %".1847", %".1848"
  %"add.123" = add i32 %"mul.45", %"Arg_4"
  store i32 %"add.123", i32* %"R16_NOTYPE"
  ; IADD3 R10, R22, 0x4, RZ
  %".1851" = load i32, i32* %"R22_NOTYPE"
  %"add.124" = add i32 %".1851", 4
  %"add.125" = add i32 %"add.124", 0
  store i32 %"add.125", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R18, [R14]
  %".1854" = load i32, i32* %"R14_NOTYPE"
  %".1855" = add i32 %".1854", 0
  %"for_LDG.127" = inttoptr i32 %".1855" to i32*
  %".1856" = load i32, i32* %"for_LDG.127"
  store i32 %".1856", i32* %"R18_NOTYPE"
  ; IADD3 R12, R3, R10, RZ
  %".1859" = load i32, i32* %"R3_NOTYPE"
  %".1860" = load i32, i32* %"R10_NOTYPE"
  %"add.126" = add i32 %".1859", %".1860"
  %"add.127" = add i32 %"add.126", 0
  store i32 %"add.127", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R19, [R16]
  %".1863" = load i32, i32* %"R16_NOTYPE"
  %".1864" = add i32 %".1863", 0
  %"for_LDG.128" = inttoptr i32 %".1864" to i32*
  %".1865" = load i32, i32* %"for_LDG.128"
  store i32 %".1865", i32* %"R19_NOTYPE"
  ; LDG.E.SYS R24, [R14+0x4]
  %".1868" = load i32, i32* %"R14_NOTYPE"
  %".1869" = add i32 %".1868", 4
  %"for_LDG.129" = inttoptr i32 %".1869" to i32*
  %".1870" = load i32, i32* %"for_LDG.129"
  store i32 %".1870", i32* %"R24_NOTYPE"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".1873" = load i32, i32* %"R10_NOTYPE"
  %".1874" = load i32, i32* %"R13_NOTYPE"
  %"mul.46" = mul i32 %".1873", %".1874"
  %"add.128" = add i32 %"mul.46", %"Arg_3"
  store i32 %"add.128", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R21, [R16+0x4]
  %".1877" = load i32, i32* %"R16_NOTYPE"
  %".1878" = add i32 %".1877", 4
  %"for_LDG.130" = inttoptr i32 %".1878" to i32*
  %".1879" = load i32, i32* %"for_LDG.130"
  store i32 %".1879", i32* %"R21_NOTYPE"
  ; LDG.E.SYS R34, [R14+0x8]
  %".1882" = load i32, i32* %"R14_NOTYPE"
  %".1883" = add i32 %".1882", 8
  %"for_LDG.131" = inttoptr i32 %".1883" to i32*
  %".1884" = load i32, i32* %"for_LDG.131"
  store i32 %".1884", i32* %"R34_NOTYPE"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".1887" = load i32, i32* %"R12_NOTYPE"
  %".1888" = load i32, i32* %"R13_NOTYPE"
  %"mul.47" = mul i32 %".1887", %".1888"
  %"add.129" = add i32 %"mul.47", %"Arg_4"
  store i32 %"add.129", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R25, [R16+0x8]
  %".1891" = load i32, i32* %"R16_NOTYPE"
  %".1892" = add i32 %".1891", 8
  %"for_LDG.132" = inttoptr i32 %".1892" to i32*
  %".1893" = load i32, i32* %"for_LDG.132"
  store i32 %".1893", i32* %"R25_NOTYPE"
  ; LDG.E.SYS R36, [R14+0xc]
  %".1896" = load i32, i32* %"R14_NOTYPE"
  %".1897" = add i32 %".1896", 12
  %"for_LDG.133" = inttoptr i32 %".1897" to i32*
  %".1898" = load i32, i32* %"for_LDG.133"
  store i32 %".1898", i32* %"R36_NOTYPE"
  ; LDG.E.SYS R35, [R16+0xc]
  %".1901" = load i32, i32* %"R16_NOTYPE"
  %".1902" = add i32 %".1901", 12
  %"for_LDG.134" = inttoptr i32 %".1902" to i32*
  %".1903" = load i32, i32* %"for_LDG.134"
  store i32 %".1903", i32* %"R35_NOTYPE"
  ; LDG.E.SYS R38, [R10]
  %".1906" = load i32, i32* %"R10_NOTYPE"
  %".1907" = add i32 %".1906", 0
  %"for_LDG.135" = inttoptr i32 %".1907" to i32*
  %".1908" = load i32, i32* %"for_LDG.135"
  store i32 %".1908", i32* %"R38_NOTYPE"
  ; LDG.E.SYS R37, [R12]
  %".1911" = load i32, i32* %"R12_NOTYPE"
  %".1912" = add i32 %".1911", 0
  %"for_LDG.136" = inttoptr i32 %".1912" to i32*
  %".1913" = load i32, i32* %"for_LDG.136"
  store i32 %".1913", i32* %"R37_NOTYPE"
  ; LDG.E.SYS R40, [R10+0x4]
  %".1916" = load i32, i32* %"R10_NOTYPE"
  %".1917" = add i32 %".1916", 4
  %"for_LDG.137" = inttoptr i32 %".1917" to i32*
  %".1918" = load i32, i32* %"for_LDG.137"
  store i32 %".1918", i32* %"R40_NOTYPE"
  ; LDG.E.SYS R39, [R12+0x4]
  %".1921" = load i32, i32* %"R12_NOTYPE"
  %".1922" = add i32 %".1921", 4
  %"for_LDG.138" = inttoptr i32 %".1922" to i32*
  %".1923" = load i32, i32* %"for_LDG.138"
  store i32 %".1923", i32* %"R39_NOTYPE"
  ; LDG.E.SYS R42, [R10+0x8]
  %".1926" = load i32, i32* %"R10_NOTYPE"
  %".1927" = add i32 %".1926", 8
  %"for_LDG.139" = inttoptr i32 %".1927" to i32*
  %".1928" = load i32, i32* %"for_LDG.139"
  store i32 %".1928", i32* %"R42_NOTYPE"
  ; LDG.E.SYS R44, [R10+0xc]
  %".1931" = load i32, i32* %"R10_NOTYPE"
  %".1932" = add i32 %".1931", 12
  %"for_LDG.140" = inttoptr i32 %".1932" to i32*
  %".1933" = load i32, i32* %"for_LDG.140"
  store i32 %".1933", i32* %"R44_NOTYPE"
  ; LDG.E.SYS R41, [R12+0x8]
  %".1936" = load i32, i32* %"R12_NOTYPE"
  %".1937" = add i32 %".1936", 8
  %"for_LDG.141" = inttoptr i32 %".1937" to i32*
  %".1938" = load i32, i32* %"for_LDG.141"
  store i32 %".1938", i32* %"R41_NOTYPE"
  ; LDG.E.SYS R43, [R12+0xc]
  %".1941" = load i32, i32* %"R12_NOTYPE"
  %".1942" = add i32 %".1941", 12
  %"for_LDG.142" = inttoptr i32 %".1942" to i32*
  %".1943" = load i32, i32* %"for_LDG.142"
  store i32 %".1943", i32* %"R43_NOTYPE"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1946" = xor i1 1, 1
  %".1947" = and i1 %".1946", 1
  %".1948" = and i1 %".1947", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".1950" = load i32, i32* %"R23_NOTYPE"
  %"add.130" = add i32 %".1950", -8
  %"add.131" = add i32 %"add.130", 0
  store i32 %"add.131", i32* %"R23_NOTYPE"
  ; IADD3 R22, R22, 0x8, RZ
  %".1953" = load i32, i32* %"R22_NOTYPE"
  %"add.132" = add i32 %".1953", 8
  %"add.133" = add i32 %"add.132", 0
  store i32 %"add.133", i32* %"R22_NOTYPE"
  ; FMUL R15, R18, R9
  %".1956" = load i32, i32* %"R18_NOTYPE"
  %".1957" = load i32, i32* %"R9_NOTYPE"
  %"fmul.106" = fmul i32 %".1956", %".1957"
  store i32 %"fmul.106", i32* %"R15_NOTYPE"
  ; FFMA R15, R15, R19, R8
  %".1960" = load i32, i32* %"R15_NOTYPE"
  %".1961" = load i32, i32* %"R19_NOTYPE"
  %".1962" = load i32, i32* %"R8_NOTYPE"
  %"fmul.107" = fmul i32 %".1960", %".1961"
  %"fadd.95" = fadd i32 %"fmul.107", %".1962"
  store i32 %"fadd.95", i32* %"R15_NOTYPE"
  ; FMUL R24, R24, R9
  %".1965" = load i32, i32* %"R24_NOTYPE"
  %".1966" = load i32, i32* %"R9_NOTYPE"
  %"fmul.108" = fmul i32 %".1965", %".1966"
  store i32 %"fmul.108", i32* %"R24_NOTYPE"
  ; FFMA R15, R24, R21, R15
  %".1969" = load i32, i32* %"R24_NOTYPE"
  %".1970" = load i32, i32* %"R21_NOTYPE"
  %".1971" = load i32, i32* %"R15_NOTYPE"
  %"fmul.109" = fmul i32 %".1969", %".1970"
  %"fadd.96" = fadd i32 %"fmul.109", %".1971"
  store i32 %"fadd.96", i32* %"R15_NOTYPE"
  ; FMUL R34, R34, R9
  %".1974" = load i32, i32* %"R34_NOTYPE"
  %".1975" = load i32, i32* %"R9_NOTYPE"
  %"fmul.110" = fmul i32 %".1974", %".1975"
  store i32 %"fmul.110", i32* %"R34_NOTYPE"
  ; FFMA R15, R34, R25, R15
  %".1978" = load i32, i32* %"R34_NOTYPE"
  %".1979" = load i32, i32* %"R25_NOTYPE"
  %".1980" = load i32, i32* %"R15_NOTYPE"
  %"fmul.111" = fmul i32 %".1978", %".1979"
  %"fadd.97" = fadd i32 %"fmul.111", %".1980"
  store i32 %"fadd.97", i32* %"R15_NOTYPE"
  ; FMUL R36, R36, R9
  %".1983" = load i32, i32* %"R36_NOTYPE"
  %".1984" = load i32, i32* %"R9_NOTYPE"
  %"fmul.112" = fmul i32 %".1983", %".1984"
  store i32 %"fmul.112", i32* %"R36_NOTYPE"
  ; FFMA R15, R36, R35, R15
  %".1987" = load i32, i32* %"R36_NOTYPE"
  %".1988" = load i32, i32* %"R35_NOTYPE"
  %".1989" = load i32, i32* %"R15_NOTYPE"
  %"fmul.113" = fmul i32 %".1987", %".1988"
  %"fadd.98" = fadd i32 %"fmul.113", %".1989"
  store i32 %"fadd.98", i32* %"R15_NOTYPE"
  ; FMUL R38, R38, R9
  %".1992" = load i32, i32* %"R38_NOTYPE"
  %".1993" = load i32, i32* %"R9_NOTYPE"
  %"fmul.114" = fmul i32 %".1992", %".1993"
  store i32 %"fmul.114", i32* %"R38_NOTYPE"
  ; FFMA R15, R38, R37, R15
  %".1996" = load i32, i32* %"R38_NOTYPE"
  %".1997" = load i32, i32* %"R37_NOTYPE"
  %".1998" = load i32, i32* %"R15_NOTYPE"
  %"fmul.115" = fmul i32 %".1996", %".1997"
  %"fadd.99" = fadd i32 %"fmul.115", %".1998"
  store i32 %"fadd.99", i32* %"R15_NOTYPE"
  ; FMUL R40, R40, R9
  %".2001" = load i32, i32* %"R40_NOTYPE"
  %".2002" = load i32, i32* %"R9_NOTYPE"
  %"fmul.116" = fmul i32 %".2001", %".2002"
  store i32 %"fmul.116", i32* %"R40_NOTYPE"
  ; FFMA R15, R40, R39, R15
  %".2005" = load i32, i32* %"R40_NOTYPE"
  %".2006" = load i32, i32* %"R39_NOTYPE"
  %".2007" = load i32, i32* %"R15_NOTYPE"
  %"fmul.117" = fmul i32 %".2005", %".2006"
  %"fadd.100" = fadd i32 %"fmul.117", %".2007"
  store i32 %"fadd.100", i32* %"R15_NOTYPE"
  ; FMUL R42, R42, R9.reuse
  %".2010" = load i32, i32* %"R42_NOTYPE"
  %".2011" = load i32, i32* %"R9_NOTYPE"
  %"fmul.118" = fmul i32 %".2010", %".2011"
  store i32 %"fmul.118", i32* %"R42_NOTYPE"
  ; FMUL R44, R44, R9
  %".2014" = load i32, i32* %"R44_NOTYPE"
  %".2015" = load i32, i32* %"R9_NOTYPE"
  %"fmul.119" = fmul i32 %".2014", %".2015"
  store i32 %"fmul.119", i32* %"R44_NOTYPE"
  ; FFMA R15, R42, R41, R15
  %".2018" = load i32, i32* %"R42_NOTYPE"
  %".2019" = load i32, i32* %"R41_NOTYPE"
  %".2020" = load i32, i32* %"R15_NOTYPE"
  %"fmul.120" = fmul i32 %".2018", %".2019"
  %"fadd.101" = fadd i32 %"fmul.120", %".2020"
  store i32 %"fadd.101", i32* %"R15_NOTYPE"
  ; FFMA R8, R44, R43, R15
  %".2023" = load i32, i32* %"R44_NOTYPE"
  %".2024" = load i32, i32* %"R43_NOTYPE"
  %".2025" = load i32, i32* %"R15_NOTYPE"
  %"fmul.121" = fmul i32 %".2023", %".2024"
  %"fadd.102" = fadd i32 %"fmul.121", %".2025"
  store i32 %"fadd.102", i32* %"R8_NOTYPE"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".2028" = load i32, i32* %"R23_NOTYPE"
  %".2029" = load i1, i1* %"PT_Bool"
  %"cmp.21" = icmp ne i32 %".2028", 0
  %".2030" = or i1 %"cmp.21", %".2029"
  store i1 %".2030", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_11)
  %".2033" = load i1, i1* %"P0_Bool"
  %".2034" = icmp eq i1 %".2033", 1
  br i1 %".2034", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, i32* %"R13_NOTYPE"
  ; IADD3 R12, R3, R22, RZ
  %".2039" = load i32, i32* %"R3_NOTYPE"
  %".2040" = load i32, i32* %"R22_NOTYPE"
  %"add.134" = add i32 %".2039", %".2040"
  %"add.135" = add i32 %"add.134", 0
  store i32 %"add.135", i32* %"R12_NOTYPE"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".2043" = load i32, i32* %"R22_NOTYPE"
  %".2044" = load i32, i32* %"R13_NOTYPE"
  %"mul.48" = mul i32 %".2043", %".2044"
  %"add.136" = add i32 %"mul.48", %"Arg_3"
  store i32 %"add.136", i32* %"R10_NOTYPE"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2047" = load i32, i32* %"R12_NOTYPE"
  %".2048" = load i32, i32* %"R13_NOTYPE"
  %"mul.49" = mul i32 %".2047", %".2048"
  %"add.137" = add i32 %"mul.49", %"Arg_4"
  store i32 %"add.137", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R14, [R10]
  %".2051" = load i32, i32* %"R10_NOTYPE"
  %".2052" = add i32 %".2051", 0
  %"for_LDG.143" = inttoptr i32 %".2052" to i32*
  %".2053" = load i32, i32* %"for_LDG.143"
  store i32 %".2053", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R16, [R12]
  %".2056" = load i32, i32* %"R12_NOTYPE"
  %".2057" = add i32 %".2056", 0
  %"for_LDG.144" = inttoptr i32 %".2057" to i32*
  %".2058" = load i32, i32* %"for_LDG.144"
  store i32 %".2058", i32* %"R16_NOTYPE"
  ; LDG.E.SYS R18, [R10+0x4]
  %".2061" = load i32, i32* %"R10_NOTYPE"
  %".2062" = add i32 %".2061", 4
  %"for_LDG.145" = inttoptr i32 %".2062" to i32*
  %".2063" = load i32, i32* %"for_LDG.145"
  store i32 %".2063", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R17, [R12+0x4]
  %".2066" = load i32, i32* %"R12_NOTYPE"
  %".2067" = add i32 %".2066", 4
  %"for_LDG.146" = inttoptr i32 %".2067" to i32*
  %".2068" = load i32, i32* %"for_LDG.146"
  store i32 %".2068", i32* %"R17_NOTYPE"
  ; LDG.E.SYS R24, [R10+0x8]
  %".2071" = load i32, i32* %"R10_NOTYPE"
  %".2072" = add i32 %".2071", 8
  %"for_LDG.147" = inttoptr i32 %".2072" to i32*
  %".2073" = load i32, i32* %"for_LDG.147"
  store i32 %".2073", i32* %"R24_NOTYPE"
  ; LDG.E.SYS R19, [R12+0x8]
  %".2076" = load i32, i32* %"R12_NOTYPE"
  %".2077" = add i32 %".2076", 8
  %"for_LDG.148" = inttoptr i32 %".2077" to i32*
  %".2078" = load i32, i32* %"for_LDG.148"
  store i32 %".2078", i32* %"R19_NOTYPE"
  ; LDG.E.SYS R34, [R10+0xc]
  %".2081" = load i32, i32* %"R10_NOTYPE"
  %".2082" = add i32 %".2081", 12
  %"for_LDG.149" = inttoptr i32 %".2082" to i32*
  %".2083" = load i32, i32* %"for_LDG.149"
  store i32 %".2083", i32* %"R34_NOTYPE"
  ; LDG.E.SYS R21, [R12+0xc]
  %".2086" = load i32, i32* %"R12_NOTYPE"
  %".2087" = add i32 %".2086", 12
  %"for_LDG.150" = inttoptr i32 %".2087" to i32*
  %".2088" = load i32, i32* %"for_LDG.150"
  store i32 %".2088", i32* %"R21_NOTYPE"
  ; IADD3 R23, R23, -0x4, RZ
  %".2091" = load i32, i32* %"R23_NOTYPE"
  %"add.138" = add i32 %".2091", -4
  %"add.139" = add i32 %"add.138", 0
  store i32 %"add.139", i32* %"R23_NOTYPE"
  ; IADD3 R22, R22, 0x4, RZ
  %".2094" = load i32, i32* %"R22_NOTYPE"
  %"add.140" = add i32 %".2094", 4
  %"add.141" = add i32 %"add.140", 0
  store i32 %"add.141", i32* %"R22_NOTYPE"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".2097" = load i32, i32* %"R23_NOTYPE"
  %".2098" = load i1, i1* %"PT_Bool"
  %"cmp.22" = icmp ne i32 %".2097", 0
  %".2099" = and i1 %"cmp.22", %".2098"
  store i1 %".2099", i1* %"P0_Bool"
  ; FMUL R15, R14, R9
  %".2102" = load i32, i32* %"R14_NOTYPE"
  %".2103" = load i32, i32* %"R9_NOTYPE"
  %"fmul.122" = fmul i32 %".2102", %".2103"
  store i32 %"fmul.122", i32* %"R15_NOTYPE"
  ; FFMA R15, R15, R16, R8
  %".2106" = load i32, i32* %"R15_NOTYPE"
  %".2107" = load i32, i32* %"R16_NOTYPE"
  %".2108" = load i32, i32* %"R8_NOTYPE"
  %"fmul.123" = fmul i32 %".2106", %".2107"
  %"fadd.103" = fadd i32 %"fmul.123", %".2108"
  store i32 %"fadd.103", i32* %"R15_NOTYPE"
  ; FMUL R18, R18, R9
  %".2111" = load i32, i32* %"R18_NOTYPE"
  %".2112" = load i32, i32* %"R9_NOTYPE"
  %"fmul.124" = fmul i32 %".2111", %".2112"
  store i32 %"fmul.124", i32* %"R18_NOTYPE"
  ; FFMA R15, R18, R17, R15
  %".2115" = load i32, i32* %"R18_NOTYPE"
  %".2116" = load i32, i32* %"R17_NOTYPE"
  %".2117" = load i32, i32* %"R15_NOTYPE"
  %"fmul.125" = fmul i32 %".2115", %".2116"
  %"fadd.104" = fadd i32 %"fmul.125", %".2117"
  store i32 %"fadd.104", i32* %"R15_NOTYPE"
  ; FMUL R24, R24, R9
  %".2120" = load i32, i32* %"R24_NOTYPE"
  %".2121" = load i32, i32* %"R9_NOTYPE"
  %"fmul.126" = fmul i32 %".2120", %".2121"
  store i32 %"fmul.126", i32* %"R24_NOTYPE"
  ; FFMA R15, R24, R19, R15
  %".2124" = load i32, i32* %"R24_NOTYPE"
  %".2125" = load i32, i32* %"R19_NOTYPE"
  %".2126" = load i32, i32* %"R15_NOTYPE"
  %"fmul.127" = fmul i32 %".2124", %".2125"
  %"fadd.105" = fadd i32 %"fmul.127", %".2126"
  store i32 %"fadd.105", i32* %"R15_NOTYPE"
  ; FMUL R34, R34, R9
  %".2129" = load i32, i32* %"R34_NOTYPE"
  %".2130" = load i32, i32* %"R9_NOTYPE"
  %"fmul.128" = fmul i32 %".2129", %".2130"
  store i32 %"fmul.128", i32* %"R34_NOTYPE"
  ; FFMA R8, R34, R21, R15
  %".2133" = load i32, i32* %"R34_NOTYPE"
  %".2134" = load i32, i32* %"R21_NOTYPE"
  %".2135" = load i32, i32* %"R15_NOTYPE"
  %"fmul.129" = fmul i32 %".2133", %".2134"
  %"fadd.106" = fadd i32 %"fmul.129", %".2135"
  store i32 %"fadd.106", i32* %"R8_NOTYPE"
  ; @P0 BRA `(.L_x_12)
  %".2138" = load i1, i1* %"P0_Bool"
  %".2139" = icmp ne i1 %".2138", 1
  br i1 %".2139", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".2142" = load i32, i32* %"R4_NOTYPE"
  %".2143" = load i1, i1* %"PT_Bool"
  %"cmp.23" = icmp ne i32 %".2142", 0
  %".2144" = and i1 %"cmp.23", %".2143"
  store i1 %".2144", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_10)
  %".2147" = load i1, i1* %"P0_Bool"
  %".2148" = icmp eq i1 %".2147", 1
  br i1 %".2148", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, i32* %"R11_NOTYPE"
  ; IADD3 R10, R3, R22, RZ
  %".2153" = load i32, i32* %"R3_NOTYPE"
  %".2154" = load i32, i32* %"R22_NOTYPE"
  %"add.142" = add i32 %".2153", %".2154"
  %"add.143" = add i32 %"add.142", 0
  store i32 %"add.143", i32* %"R10_NOTYPE"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".2157" = load i32, i32* %"R22_NOTYPE"
  %".2158" = load i32, i32* %"R11_NOTYPE"
  %"mul.50" = mul i32 %".2157", %".2158"
  %"add.144" = add i32 %"mul.50", %"Arg_3"
  store i32 %"add.144", i32* %"R22_NOTYPE"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".2161" = load i32, i32* %"R10_NOTYPE"
  %".2162" = load i32, i32* %"R11_NOTYPE"
  %"mul.51" = mul i32 %".2161", %".2162"
  %"add.145" = add i32 %"mul.51", %"Arg_4"
  store i32 %"add.145", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R12, [R22]
  %".2165" = load i32, i32* %"R22_NOTYPE"
  %".2166" = add i32 %".2165", 0
  %"for_LDG.151" = inttoptr i32 %".2166" to i32*
  %".2167" = load i32, i32* %"for_LDG.151"
  store i32 %".2167", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R14, [R10]
  %".2170" = load i32, i32* %"R10_NOTYPE"
  %".2171" = add i32 %".2170", 0
  %"for_LDG.152" = inttoptr i32 %".2171" to i32*
  %".2172" = load i32, i32* %"for_LDG.152"
  store i32 %".2172", i32* %"R14_NOTYPE"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".2175" = load i32, i32* %"R4_NOTYPE"
  %".2176" = load i1, i1* %"PT_Bool"
  %"cmp.24" = icmp ne i32 %".2175", 1
  %".2177" = and i1 %"cmp.24", %".2176"
  store i1 %".2177", i1* %"P0_Bool"
  ; FMUL R13, R12, R9
  %".2180" = load i32, i32* %"R12_NOTYPE"
  %".2181" = load i32, i32* %"R9_NOTYPE"
  %"fmul.130" = fmul i32 %".2180", %".2181"
  store i32 %"fmul.130", i32* %"R13_NOTYPE"
  ; FFMA R8, R13, R14, R8
  %".2184" = load i32, i32* %"R13_NOTYPE"
  %".2185" = load i32, i32* %"R14_NOTYPE"
  %".2186" = load i32, i32* %"R8_NOTYPE"
  %"fmul.131" = fmul i32 %".2184", %".2185"
  %"fadd.107" = fadd i32 %"fmul.131", %".2186"
  store i32 %"fadd.107", i32* %"R8_NOTYPE"
  ; @!P0 BRA `(.L_x_10)
  %".2189" = load i1, i1* %"P0_Bool"
  %".2190" = icmp eq i1 %".2189", 1
  br i1 %".2190", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".2193" = load i32, i32* %"R4_NOTYPE"
  %".2194" = load i1, i1* %"PT_Bool"
  %"cmp.25" = icmp ne i32 %".2193", 2
  %".2195" = and i1 %"cmp.25", %".2194"
  store i1 %".2195", i1* %"P0_Bool"
  ; LDG.E.SYS R12, [R22+0x4]
  %".2198" = load i32, i32* %"R22_NOTYPE"
  %".2199" = add i32 %".2198", 4
  %"for_LDG.153" = inttoptr i32 %".2199" to i32*
  %".2200" = load i32, i32* %"for_LDG.153"
  store i32 %".2200", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R14, [R10+0x4]
  %".2203" = load i32, i32* %"R10_NOTYPE"
  %".2204" = add i32 %".2203", 4
  %"for_LDG.154" = inttoptr i32 %".2204" to i32*
  %".2205" = load i32, i32* %"for_LDG.154"
  store i32 %".2205", i32* %"R14_NOTYPE"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".2208" = load i1, i1* %"P0_Bool"
  %".2209" = icmp ne i1 %".2208", 1
  br i1 %".2209", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  %".2212" = load i32, i32* %"R22_NOTYPE"
  %".2213" = add i32 %".2212", 8
  %"for_LDG.155" = inttoptr i32 %".2213" to i32*
  %".2214" = load i32, i32* %"for_LDG.155"
  store i32 %".2214", i32* %"R16_NOTYPE"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".2219" = load i1, i1* %"P0_Bool"
  %".2220" = icmp ne i1 %".2219", 1
  br i1 %".2220", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  %".2223" = load i32, i32* %"R10_NOTYPE"
  %".2224" = add i32 %".2223", 8
  %"for_LDG.156" = inttoptr i32 %".2224" to i32*
  %".2225" = load i32, i32* %"for_LDG.156"
  store i32 %".2225", i32* %"R15_NOTYPE"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %".2230" = load i32, i32* %"R12_NOTYPE"
  %".2231" = load i32, i32* %"R9_NOTYPE"
  %"fmul.132" = fmul i32 %".2230", %".2231"
  store i32 %"fmul.132", i32* %"R13_NOTYPE"
  ; FFMA R8, R13, R14, R8
  %".2234" = load i32, i32* %"R13_NOTYPE"
  %".2235" = load i32, i32* %"R14_NOTYPE"
  %".2236" = load i32, i32* %"R8_NOTYPE"
  %"fmul.133" = fmul i32 %".2234", %".2235"
  %"fadd.108" = fadd i32 %"fmul.133", %".2236"
  store i32 %"fadd.108", i32* %"R8_NOTYPE"
  ; @P0 FMUL R9, R16, R9
  %".2239" = load i1, i1* %"P0_Bool"
  %".2240" = icmp ne i1 %".2239", 1
  br i1 %".2240", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %".2243" = load i32, i32* %"R16_NOTYPE"
  %".2244" = load i32, i32* %"R9_NOTYPE"
  %"fmul.134" = fmul i32 %".2243", %".2244"
  store i32 %"fmul.134", i32* %"R9_NOTYPE"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".2249" = load i1, i1* %"P0_Bool"
  %".2250" = icmp ne i1 %".2249", 1
  br i1 %".2250", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %".2253" = load i32, i32* %"R9_NOTYPE"
  %".2254" = load i32, i32* %"R15_NOTYPE"
  %".2255" = load i32, i32* %"R8_NOTYPE"
  %"fmul.135" = fmul i32 %".2253", %".2254"
  %"fadd.109" = fadd i32 %"fmul.135", %".2255"
  store i32 %"fadd.109", i32* %"R8_NOTYPE"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  %".2260" = load i32, i32* %"R30_NOTYPE"
  %".2261" = add i32 %".2260", 0
  %"for_LDG.157" = inttoptr i32 %".2261" to i32*
  %".2262" = load i32, i32* %"for_LDG.157"
  store i32 %".2262", i32* %"R9_NOTYPE"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %".2267" = load i32, i32* %"R9_NOTYPE"
  %".2268" = load i32, i32* %"R8_NOTYPE"
  %"fadd.110" = fadd i32 %".2267", %".2268"
  store i32 %"fadd.110", i32* %"R12_NOTYPE"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %".2271" = load i32, i32* %"R12_NOTYPE"
  %"llvm_abs_result" = call i32 @"llvm.abs"(i32 %".2271", i1 0)
  %".2272" = load i1, i1* %"PT_Bool"
  %"cmp.26" = icmp sge i32 %"llvm_abs_result", 0.6000000238418579
  %".2273" = and i1 %"cmp.26", %".2272"
  store i1 %".2273", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_17)
  %".2276" = load i1, i1* %"P0_Bool"
  %".2277" = icmp eq i1 %".2276", 1
  br i1 %".2277", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %".2280" = load i32, i32* %"R12_NOTYPE"
  %"llvm_abs_result.1" = call i32 @"llvm.abs"(i32 %".2280", i1 0)
  %"fmul.136" = fmul i32 %"llvm_abs_result.1", 2.885390043258667
  store i32 %"fmul.136", i32* %"R8_NOTYPE"
  ; MOV R9, 0x3f800000
  store i32 1065353216, i32* %"R9_NOTYPE"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %".2285" = load i32, i32* %"R12_NOTYPE"
  %"llvm_abs_result.2" = call i32 @"llvm.abs"(i32 %".2285", i1 0)
  %".2286" = load i1, i1* %"PT_Bool"
  %"cmp.27" = icmp sge i32 %"llvm_abs_result.2", 9.010913848876953
  %".2287" = and i1 %"cmp.27", %".2286"
  store i1 %".2287", i1* %"P0_Bool"
  ; MUFU.EX2 R8, R8
  %".2290" = load i32, i32* %"R8_NOTYPE"
  %"sint_to_f32.2" = sitofp i32 %".2290" to float
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %"sint_to_f32.2")
  %"fp_to_sint32.2" = fptosi float %"llvm_exp2_f32_result.2" to i32
  store i32 %"fp_to_sint32.2", i32* %"R8_NOTYPE"
  ; FADD R10, R8, 1
  %".2293" = load i32, i32* %"R8_NOTYPE"
  %"fadd.111" = fadd i32 %".2293", 1
  store i32 %"fadd.111", i32* %"R10_NOTYPE"
  ; MUFU.RCP R10, R10
  %".2296" = load i32, i32* %"R10_NOTYPE"
  %".2297" = fdiv i32 1, %".2296"
  store i32 %".2297", i32* %"R10_NOTYPE"
  ; FFMA R9, R10, -2, R9
  %".2300" = load i32, i32* %"R10_NOTYPE"
  %".2301" = load i32, i32* %"R9_NOTYPE"
  %"fmul.137" = fmul i32 %".2300", -2
  %"fadd.112" = fadd i32 %"fmul.137", %".2301"
  store i32 %"fadd.112", i32* %"R9_NOTYPE"
  ; FSEL R9, R9, 1, !P0
  %".2304" = load i32, i32* %"R9_NOTYPE"
  %".2305" = load i1, i1* %"P0_Bool"
  %".2306" = icmp eq i1 %".2305", 1
  %"fsel" = select  i1 %".2306", i32 %".2304", i32 1
  store i32 %"fsel", i32* %"R9_NOTYPE"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".2309" = load i32, i32* %"R9_NOTYPE"
  %".2310" = load i32, i32* %"R12_NOTYPE"
  %".2311" = or i32 %".2309", 2147483648
  %".2312" = or i32 %".2309", %".2310"
  %".2313" = and i32 %".2311", %".2312"
  store i32 %".2313", i32* %"R9_NOTYPE"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  store i32 1015083138, i32* %"R9_NOTYPE"
  ; FMUL R8, R12, R12
  %".2320" = load i32, i32* %"R12_NOTYPE"
  %".2321" = load i32, i32* %"R12_NOTYPE"
  %"fmul.138" = fmul i32 %".2320", %".2321"
  store i32 %"fmul.138", i32* %"R8_NOTYPE"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".2324" = load i32, i32* %"R8_NOTYPE"
  %".2325" = load i32, i32* %"R9_NOTYPE"
  %"fmul.139" = fmul i32 %".2324", %".2325"
  %"fadd.113" = fadd i32 %"fmul.139", -0.05230396240949631
  store i32 %"fadd.113", i32* %"R9_NOTYPE"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".2328" = load i32, i32* %"R8_NOTYPE"
  %".2329" = load i32, i32* %"R9_NOTYPE"
  %"fmul.140" = fmul i32 %".2328", %".2329"
  %"fadd.114" = fadd i32 %"fmul.140", 0.13315297663211823
  store i32 %"fadd.114", i32* %"R9_NOTYPE"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".2332" = load i32, i32* %"R8_NOTYPE"
  %".2333" = load i32, i32* %"R9_NOTYPE"
  %"fmul.141" = fmul i32 %".2332", %".2333"
  %"fadd.115" = fadd i32 %"fmul.141", -0.33332768082618713
  store i32 %"fadd.115", i32* %"R9_NOTYPE"
  ; FFMA R9, R8, R9, RZ
  %".2336" = load i32, i32* %"R8_NOTYPE"
  %".2337" = load i32, i32* %"R9_NOTYPE"
  %"fmul.142" = fmul i32 %".2336", %".2337"
  %"fadd.116" = fadd i32 %"fmul.142", 0
  store i32 %"fadd.116", i32* %"R9_NOTYPE"
  ; FFMA R9, R12, R9, R12
  %".2340" = load i32, i32* %"R12_NOTYPE"
  %".2341" = load i32, i32* %"R9_NOTYPE"
  %".2342" = load i32, i32* %"R12_NOTYPE"
  %"fmul.143" = fmul i32 %".2340", %".2341"
  %"fadd.117" = fadd i32 %"fmul.143", %".2342"
  store i32 %"fadd.117", i32* %"R9_NOTYPE"
.L_x_18:
  ; BSYNC B0
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  %".2346" = load i32, i32* %"R20_NOTYPE"
  %"add.146" = add i32 %".2346", 25165824
  %"add.147" = add i32 %"add.146", 0
  store i32 %"add.147", i32* %"R8_NOTYPE"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".2351" = load i32, i32* %"R8_NOTYPE"
  %".2352" = and i32 %".2351", 2139095040
  store i32 %".2352", i32* %"R8_NOTYPE"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".2355" = load i32, i32* %"R8_NOTYPE"
  %".2356" = load i1, i1* %"PT_Bool"
  %"cmp.28" = icmp sgt i32 %".2355", 33554431
  %".2357" = and i1 %"cmp.28", %".2356"
  store i1 %".2357", i1* %"P0_Bool"
  ; @P0 BRA `(.L_x_20)
  %".2360" = load i1, i1* %"P0_Bool"
  %".2361" = icmp ne i1 %".2360", 1
  br i1 %".2361", label %".L_x_20", label %".L_x_16_split_0x2170"
.L_x_16_split_0x2170:
  ; MOV R24, R20
  %".2364" = load i32, i32* %"R20_NOTYPE"
  store i32 %".2364", i32* %"R24_NOTYPE"
  ; MOV R10, 0x21a0
  store i32 8608, i32* %"R10_NOTYPE"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.1" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R8, R22
  %".2370" = load i32, i32* %"R22_NOTYPE"
  store i32 %".2370", i32* %"R8_NOTYPE"
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".2375" = load i32, i32* %"R20_NOTYPE"
  %".2376" = fdiv i32 1, %".2375"
  store i32 %".2376", i32* %"R11_NOTYPE"
  ; FFMA R8, R20, R11, -1
  %".2379" = load i32, i32* %"R20_NOTYPE"
  %".2380" = load i32, i32* %"R11_NOTYPE"
  %"fmul.144" = fmul i32 %".2379", %".2380"
  %"fadd.118" = fadd i32 %"fmul.144", -1
  store i32 %"fadd.118", i32* %"R8_NOTYPE"
  ; FADD.FTZ R8, -R8, -RZ
  %".2383" = load i32, i32* %"R8_NOTYPE"
  %".2384" = sub i32 0, %".2383"
  %"fadd.119" = fadd i32 %".2384", 0
  store i32 %"fadd.119", i32* %"R8_NOTYPE"
  ; FFMA R8, R11, R8, R11
  %".2387" = load i32, i32* %"R11_NOTYPE"
  %".2388" = load i32, i32* %"R8_NOTYPE"
  %".2389" = load i32, i32* %"R11_NOTYPE"
  %"fmul.145" = fmul i32 %".2387", %".2388"
  %"fadd.120" = fadd i32 %"fmul.145", %".2389"
  store i32 %"fadd.120", i32* %"R8_NOTYPE"
.L_x_21:
  ; BSYNC B0
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  %".2393" = load i32, i32* %"R28_NOTYPE"
  %".2394" = add i32 %".2393", 0
  %"for_LDG.158" = inttoptr i32 %".2394" to i32*
  %".2395" = load i32, i32* %"for_LDG.158"
  store i32 %".2395", i32* %"R11_NOTYPE"
  ; FADD R10, -R8, 1
  %".2398" = load i32, i32* %"R8_NOTYPE"
  %".2399" = sub i32 0, %".2398"
  %"fadd.121" = fadd i32 %".2399", 1
  store i32 %"fadd.121", i32* %"R10_NOTYPE"
  ; FMUL R11, R11, R8
  %".2402" = load i32, i32* %"R11_NOTYPE"
  %".2403" = load i32, i32* %"R8_NOTYPE"
  %"fmul.146" = fmul i32 %".2402", %".2403"
  store i32 %"fmul.146", i32* %"R11_NOTYPE"
  ; FFMA R9, R10, R9, R11
  %".2406" = load i32, i32* %"R10_NOTYPE"
  %".2407" = load i32, i32* %"R9_NOTYPE"
  %".2408" = load i32, i32* %"R11_NOTYPE"
  %"fmul.147" = fmul i32 %".2406", %".2407"
  %"fadd.122" = fadd i32 %"fmul.147", %".2408"
  store i32 %"fadd.122", i32* %"R9_NOTYPE"
  ; STG.E.SYS [R28], R9
  %".2411" = load i32, i32* %"R9_NOTYPE"
  %".2412" = load i32, i32* %"R28_NOTYPE"
  %".2413" = add i32 %".2412", 0
  %"for_STG" = inttoptr i32 %".2413" to i32*
  store i32 %".2411", i32* %"for_STG"
  ; @!P3 BRA `(.L_x_22)
  %".2416" = load i1, i1* %"P3_Bool"
  %".2417" = icmp eq i1 %".2416", 1
  br i1 %".2417", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, i32* %"R18_NOTYPE"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".2424" = load i32, i32* %"R15_NOTYPE"
  %".2425" = and i32 %".2424", 3
  store i32 %".2425", i32* %"R15_NOTYPE"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".2428" = load i32, i32* %"R5_NOTYPE"
  %".2429" = and i32 %".2428", 3
  store i32 %".2429", i32* %"R48_NOTYPE"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".2432" = load i32, i32* %"R18_NOTYPE"
  %".2433" = sub i32 0, %".2432"
  %"add.148" = add i32 %".2433", %"Arg_6"
  %"add.149" = add i32 %"add.148", 0
  store i32 %"add.149", i32* %"R49_NOTYPE"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".2436" = icmp ult i32 31, 32
  %"SHF_min.2" = select  i1 %".2436", i32 31, i32 32
  %".2437" = load i32, i32* %"R5_NOTYPE"
  %"zext.6" = zext i32 %".2437" to i64
  %"zext.7" = zext i32 0 to i64
  %"zext.8" = zext i32 31 to i64
  %"shl.10" = shl i64 %"zext.6", 32
  %"or.2" = or i64 %"shl.10", %"zext.7"
  %"ashr" = ashr i64 %"or.2", %"zext.8"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.2" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.2", i32* %"R16_NOTYPE"
  ; MOV R17, RZ
  %".2440" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".2440", i32* %"R17_NOTYPE"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".2443" = load i32, i32* %"R18_NOTYPE"
  %".2444" = sub i32 0, %".2443"
  %"add.150" = add i32 %".2444", %"Arg_7"
  %"add.151" = add i32 %"add.150", 0
  store i32 %"add.151", i32* %"R18_NOTYPE"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".2447" = load i32, i32* %"R15_NOTYPE"
  %".2448" = sub i32 0, %".2447"
  %"add.152" = add i32 %".2448", %"Arg_6"
  %"add.153" = add i32 %"add.152", 0
  store i32 %"add.153", i32* %"R19_NOTYPE"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".2451" = load i32, i32* %"R48_NOTYPE"
  %".2452" = sub i32 0, %".2451"
  %"add.154" = add i32 %".2452", %"Arg_7"
  %"add.155" = add i32 %"add.154", 0
  store i32 %"add.155", i32* %"R20_NOTYPE"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".2455" = load i32, i32* %"R49_NOTYPE"
  %".2456" = load i1, i1* %"PT_Bool"
  %"cmp.29" = icmp sge i32 %".2455", 3
  %".2457" = and i1 %"cmp.29", %".2456"
  store i1 %".2457", i1* %"P0_Bool"
  ; MOV R13, R17
  %".2460" = load i32, i32* %"R17_NOTYPE"
  store i32 %".2460", i32* %"R13_NOTYPE"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_7", i32* %"R4_NOTYPE"
  ; IADD3 R17, R17, 0x1, RZ
  %".2465" = load i32, i32* %"R17_NOTYPE"
  %"add.156" = add i32 %".2465", 1
  %"add.157" = add i32 %"add.156", 0
  store i32 %"add.157", i32* %"R17_NOTYPE"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".2468" = load i32, i32* %"R4_NOTYPE"
  %".2469" = load i1, i1* %"PT_Bool"
  %"cmp.30" = icmp sge i32 %".2468", 1
  %".2470" = and i1 %"cmp.30", %".2469"
  store i1 %".2470", i1* %"P4_Bool"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".2473" = load i32, i32* %"R15_NOTYPE"
  %".2474" = load i1, i1* %"PT_Bool"
  %"cmp.31" = icmp ne i32 %".2473", 0
  %".2475" = and i1 %"cmp.31", %".2474"
  store i1 %".2475", i1* %"P1_Bool"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".2478" = load i32, i32* %"R17_NOTYPE"
  %".2479" = load i1, i1* %"PT_Bool"
  %"cmp.32" = icmp sge i32 %".2478", %"Arg_8"
  %".2480" = and i1 %"cmp.32", %".2479"
  store i1 %".2480", i1* %"P3_Bool"
  ; MOV R21, RZ
  %".2483" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".2483", i32* %"R21_NOTYPE"
  ; MOV R22, RZ
  %".2486" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".2486", i32* %"R22_NOTYPE"
  ; MOV R56, RZ
  %".2489" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".2489", i32* %"R56_NOTYPE"
  ; MOV R44, RZ
  %".2492" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".2492", i32* %"R44_NOTYPE"
  ; @!P0 BRA `(.L_x_23)
  %".2495" = load i1, i1* %"P0_Bool"
  %".2496" = icmp eq i1 %".2495", 1
  br i1 %".2496", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_7", i32* %"R25_NOTYPE"
  ; MOV R21, RZ
  %".2501" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".2501", i32* %"R21_NOTYPE"
  ; MOV R22, RZ
  %".2504" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".2504", i32* %"R22_NOTYPE"
  ; MOV R12, R19
  %".2507" = load i32, i32* %"R19_NOTYPE"
  store i32 %".2507", i32* %"R12_NOTYPE"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".2510" = icmp ult i32 2, 64
  %"SHF_min.3" = select  i1 %".2510", i32 2, i32 64
  %".2511" = load i32, i32* %"R16_NOTYPE"
  %".2512" = load i32, i32* %"R25_NOTYPE"
  %"zext.9" = zext i32 %".2511" to i64
  %"zext.10" = zext i32 %".2512" to i64
  %"zext.11" = zext i32 2 to i64
  %"shl.11" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.11", %"zext.10"
  %"shl.12" = shl i64 %"or.3", %"zext.11"
  %"lshr" = lshr i64 %"shl.12", 32
  %"trunc32.3" = trunc i64 %"lshr" to i32
  store i32 %"trunc32.3", i32* %"R23_NOTYPE"
.L_x_24:
  ; MOV R7, 0x4
  store i32 4, i32* %"R7_NOTYPE"
  ; IMAD R6, R14, c[0x0][0x180], R22.reuse
  %".2517" = load i32, i32* %"R14_NOTYPE"
  %".2518" = load i32, i32* %"R22_NOTYPE"
  %"mul.52" = mul i32 %".2517", %"Arg_6"
  %"add.158" = add i32 %"mul.52", %".2518"
  store i32 %"add.158", i32* %"R6_NOTYPE"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", i32* %"R9_NOTYPE"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".2523" = load i32, i32* %"R13_NOTYPE"
  %".2524" = load i32, i32* %"R22_NOTYPE"
  %"mul.53" = mul i32 %".2523", %"Arg_6"
  %"add.159" = add i32 %"mul.53", %".2524"
  store i32 %"add.159", i32* %"R10_NOTYPE"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".2527" = load i32, i32* %"R6_NOTYPE"
  %".2528" = load i32, i32* %"R7_NOTYPE"
  %"mul.54" = mul i32 %".2527", %".2528"
  %"add.160" = add i32 %"mul.54", %"Arg_4"
  store i32 %"add.160", i32* %"R4_NOTYPE"
  ; LEA R6, R9, R6, 0x1
  %".2531" = load i32, i32* %"R9_NOTYPE"
  %".2532" = load i32, i32* %"R6_NOTYPE"
  %"shl.13" = shl i32 %".2531", 1
  %"add.161" = add i32 %"shl.13", %".2532"
  store i32 %"add.161", i32* %"R6_NOTYPE"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".2535" = load i32, i32* %"R10_NOTYPE"
  %".2536" = load i32, i32* %"R7_NOTYPE"
  %"mul.55" = mul i32 %".2535", %".2536"
  %"add.162" = add i32 %"mul.55", %"Arg_2"
  store i32 %"add.162", i32* %"R10_NOTYPE"
  ; LEA R8, P0, R25, R4, 0x2
  %".2539" = load i1, i1* %"P0_Bool"
  %".2540" = sub i1 0, %".2539"
  %".2541" = load i32, i32* %"R25_NOTYPE"
  %".2542" = load i32, i32* %"R4_NOTYPE"
  %".2543" = sext i1 %".2540" to i32
  %"shl.14" = shl i32 %".2543", %".2542"
  %"add.163" = add i32 %"shl.14", %".2541"
  store i32 %"add.163", i32* %"R8_NOTYPE"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".2546" = load i32, i32* %"R6_NOTYPE"
  %".2547" = load i32, i32* %"R7_NOTYPE"
  %"mul.56" = mul i32 %".2546", %".2547"
  %"add.164" = add i32 %"mul.56", %"Arg_4"
  store i32 %"add.164", i32* %"R6_NOTYPE"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".2550" = load i32, i32* %"R5_NOTYPE"
  %".2551" = load i32, i32* %"R23_NOTYPE"
  %".2552" = load i1, i1* %"P0_Bool"
  %".2553" = sub i1 0, %".2552"
  %".2554" = zext i1 %".2553" to i32
  %"add.165" = add i32 %".2550", %".2551"
  %"add.166" = add i32 %"add.165", 0
  %"add.167" = add i32 %"add.166", %".2554"
  store i32 %"add.167", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R35, [R4]
  %".2557" = load i32, i32* %"R4_NOTYPE"
  %".2558" = add i32 %".2557", 0
  %"for_LDG.159" = inttoptr i32 %".2558" to i32*
  %".2559" = load i32, i32* %"for_LDG.159"
  store i32 %".2559", i32* %"R35_NOTYPE"
  ; LDG.E.SYS R24, [R10]
  %".2562" = load i32, i32* %"R10_NOTYPE"
  %".2563" = add i32 %".2562", 0
  %"for_LDG.160" = inttoptr i32 %".2563" to i32*
  %".2564" = load i32, i32* %"for_LDG.160"
  store i32 %".2564", i32* %"R24_NOTYPE"
  ; LDG.E.SYS R37, [R8]
  %".2567" = load i32, i32* %"R8_NOTYPE"
  %".2568" = add i32 %".2567", 0
  %"for_LDG.161" = inttoptr i32 %".2568" to i32*
  %".2569" = load i32, i32* %"for_LDG.161"
  store i32 %".2569", i32* %"R37_NOTYPE"
  ; LDG.E.SYS R34, [R6]
  %".2572" = load i32, i32* %"R6_NOTYPE"
  %".2573" = add i32 %".2572", 0
  %"for_LDG.162" = inttoptr i32 %".2573" to i32*
  %".2574" = load i32, i32* %"for_LDG.162"
  store i32 %".2574", i32* %"R34_NOTYPE"
  ; LDG.E.SYS R36, [R4+0x4]
  %".2577" = load i32, i32* %"R4_NOTYPE"
  %".2578" = add i32 %".2577", 4
  %"for_LDG.163" = inttoptr i32 %".2578" to i32*
  %".2579" = load i32, i32* %"for_LDG.163"
  store i32 %".2579", i32* %"R36_NOTYPE"
  ; LDG.E.SYS R38, [R10+0x4]
  %".2582" = load i32, i32* %"R10_NOTYPE"
  %".2583" = add i32 %".2582", 4
  %"for_LDG.164" = inttoptr i32 %".2583" to i32*
  %".2584" = load i32, i32* %"for_LDG.164"
  store i32 %".2584", i32* %"R38_NOTYPE"
  ; LDG.E.SYS R39, [R8+0x4]
  %".2587" = load i32, i32* %"R8_NOTYPE"
  %".2588" = add i32 %".2587", 4
  %"for_LDG.165" = inttoptr i32 %".2588" to i32*
  %".2589" = load i32, i32* %"for_LDG.165"
  store i32 %".2589", i32* %"R39_NOTYPE"
  ; LDG.E.SYS R41, [R6+0x4]
  %".2592" = load i32, i32* %"R6_NOTYPE"
  %".2593" = add i32 %".2592", 4
  %"for_LDG.166" = inttoptr i32 %".2593" to i32*
  %".2594" = load i32, i32* %"for_LDG.166"
  store i32 %".2594", i32* %"R41_NOTYPE"
  ; LDG.E.SYS R42, [R10+0x8]
  %".2597" = load i32, i32* %"R10_NOTYPE"
  %".2598" = add i32 %".2597", 8
  %"for_LDG.167" = inttoptr i32 %".2598" to i32*
  %".2599" = load i32, i32* %"for_LDG.167"
  store i32 %".2599", i32* %"R42_NOTYPE"
  ; LDG.E.SYS R40, [R4+0x8]
  %".2602" = load i32, i32* %"R4_NOTYPE"
  %".2603" = add i32 %".2602", 8
  %"for_LDG.168" = inttoptr i32 %".2603" to i32*
  %".2604" = load i32, i32* %"for_LDG.168"
  store i32 %".2604", i32* %"R40_NOTYPE"
  ; LDG.E.SYS R43, [R8+0x8]
  %".2607" = load i32, i32* %"R8_NOTYPE"
  %".2608" = add i32 %".2607", 8
  %"for_LDG.169" = inttoptr i32 %".2608" to i32*
  %".2609" = load i32, i32* %"for_LDG.169"
  store i32 %".2609", i32* %"R43_NOTYPE"
  ; LDG.E.SYS R45, [R6+0x8]
  %".2612" = load i32, i32* %"R6_NOTYPE"
  %".2613" = add i32 %".2612", 8
  %"for_LDG.170" = inttoptr i32 %".2613" to i32*
  %".2614" = load i32, i32* %"for_LDG.170"
  store i32 %".2614", i32* %"R45_NOTYPE"
  ; LDG.E.SYS R47, [R10+0xc]
  %".2617" = load i32, i32* %"R10_NOTYPE"
  %".2618" = add i32 %".2617", 12
  %"for_LDG.171" = inttoptr i32 %".2618" to i32*
  %".2619" = load i32, i32* %"for_LDG.171"
  store i32 %".2619", i32* %"R47_NOTYPE"
  ; LDG.E.SYS R46, [R4+0xc]
  %".2622" = load i32, i32* %"R4_NOTYPE"
  %".2623" = add i32 %".2622", 12
  %"for_LDG.172" = inttoptr i32 %".2623" to i32*
  %".2624" = load i32, i32* %"for_LDG.172"
  store i32 %".2624", i32* %"R46_NOTYPE"
  ; LDG.E.SYS R50, [R8+0xc]
  %".2627" = load i32, i32* %"R8_NOTYPE"
  %".2628" = add i32 %".2627", 12
  %"for_LDG.173" = inttoptr i32 %".2628" to i32*
  %".2629" = load i32, i32* %"for_LDG.173"
  store i32 %".2629", i32* %"R50_NOTYPE"
  ; LDG.E.SYS R51, [R6+0xc]
  %".2632" = load i32, i32* %"R6_NOTYPE"
  %".2633" = add i32 %".2632", 12
  %"for_LDG.174" = inttoptr i32 %".2633" to i32*
  %".2634" = load i32, i32* %"for_LDG.174"
  store i32 %".2634", i32* %"R51_NOTYPE"
  ; IADD3 R12, R12, -0x4, RZ
  %".2637" = load i32, i32* %"R12_NOTYPE"
  %"add.168" = add i32 %".2637", -4
  %"add.169" = add i32 %"add.168", 0
  store i32 %"add.169", i32* %"R12_NOTYPE"
  ; IADD3 R22, R22, 0x4, RZ
  %".2640" = load i32, i32* %"R22_NOTYPE"
  %"add.170" = add i32 %".2640", 4
  %"add.171" = add i32 %"add.170", 0
  store i32 %"add.171", i32* %"R22_NOTYPE"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".2643" = load i32, i32* %"R12_NOTYPE"
  %".2644" = load i1, i1* %"PT_Bool"
  %"cmp.33" = icmp ne i32 %".2643", 0
  %".2645" = and i1 %"cmp.33", %".2644"
  store i1 %".2645", i1* %"P0_Bool"
  ; FFMA R35, R35, R24, R44
  %".2648" = load i32, i32* %"R35_NOTYPE"
  %".2649" = load i32, i32* %"R24_NOTYPE"
  %".2650" = load i32, i32* %"R44_NOTYPE"
  %"fmul.148" = fmul i32 %".2648", %".2649"
  %"fadd.123" = fadd i32 %"fmul.148", %".2650"
  store i32 %"fadd.123", i32* %"R35_NOTYPE"
  ; FFMA R37, R24.reuse, R37, R56
  %".2653" = load i32, i32* %"R24_NOTYPE"
  %".2654" = load i32, i32* %"R37_NOTYPE"
  %".2655" = load i32, i32* %"R56_NOTYPE"
  %"fmul.149" = fmul i32 %".2653", %".2654"
  %"fadd.124" = fadd i32 %"fmul.149", %".2655"
  store i32 %"fadd.124", i32* %"R37_NOTYPE"
  ; FFMA R34, R24, R34, R21
  %".2658" = load i32, i32* %"R24_NOTYPE"
  %".2659" = load i32, i32* %"R34_NOTYPE"
  %".2660" = load i32, i32* %"R21_NOTYPE"
  %"fmul.150" = fmul i32 %".2658", %".2659"
  %"fadd.125" = fadd i32 %"fmul.150", %".2660"
  store i32 %"fadd.125", i32* %"R34_NOTYPE"
  ; FFMA R35, R36, R38, R35
  %".2663" = load i32, i32* %"R36_NOTYPE"
  %".2664" = load i32, i32* %"R38_NOTYPE"
  %".2665" = load i32, i32* %"R35_NOTYPE"
  %"fmul.151" = fmul i32 %".2663", %".2664"
  %"fadd.126" = fadd i32 %"fmul.151", %".2665"
  store i32 %"fadd.126", i32* %"R35_NOTYPE"
  ; FFMA R37, R38, R39, R37
  %".2668" = load i32, i32* %"R38_NOTYPE"
  %".2669" = load i32, i32* %"R39_NOTYPE"
  %".2670" = load i32, i32* %"R37_NOTYPE"
  %"fmul.152" = fmul i32 %".2668", %".2669"
  %"fadd.127" = fadd i32 %"fmul.152", %".2670"
  store i32 %"fadd.127", i32* %"R37_NOTYPE"
  ; FFMA R34, R38, R41, R34
  %".2673" = load i32, i32* %"R38_NOTYPE"
  %".2674" = load i32, i32* %"R41_NOTYPE"
  %".2675" = load i32, i32* %"R34_NOTYPE"
  %"fmul.153" = fmul i32 %".2673", %".2674"
  %"fadd.128" = fadd i32 %"fmul.153", %".2675"
  store i32 %"fadd.128", i32* %"R34_NOTYPE"
  ; FFMA R35, R40, R42, R35
  %".2678" = load i32, i32* %"R40_NOTYPE"
  %".2679" = load i32, i32* %"R42_NOTYPE"
  %".2680" = load i32, i32* %"R35_NOTYPE"
  %"fmul.154" = fmul i32 %".2678", %".2679"
  %"fadd.129" = fadd i32 %"fmul.154", %".2680"
  store i32 %"fadd.129", i32* %"R35_NOTYPE"
  ; FFMA R37, R42.reuse, R43, R37
  %".2683" = load i32, i32* %"R42_NOTYPE"
  %".2684" = load i32, i32* %"R43_NOTYPE"
  %".2685" = load i32, i32* %"R37_NOTYPE"
  %"fmul.155" = fmul i32 %".2683", %".2684"
  %"fadd.130" = fadd i32 %"fmul.155", %".2685"
  store i32 %"fadd.130", i32* %"R37_NOTYPE"
  ; FFMA R34, R42, R45, R34
  %".2688" = load i32, i32* %"R42_NOTYPE"
  %".2689" = load i32, i32* %"R45_NOTYPE"
  %".2690" = load i32, i32* %"R34_NOTYPE"
  %"fmul.156" = fmul i32 %".2688", %".2689"
  %"fadd.131" = fadd i32 %"fmul.156", %".2690"
  store i32 %"fadd.131", i32* %"R34_NOTYPE"
  ; FFMA R44, R46, R47, R35
  %".2693" = load i32, i32* %"R46_NOTYPE"
  %".2694" = load i32, i32* %"R47_NOTYPE"
  %".2695" = load i32, i32* %"R35_NOTYPE"
  %"fmul.157" = fmul i32 %".2693", %".2694"
  %"fadd.132" = fadd i32 %"fmul.157", %".2695"
  store i32 %"fadd.132", i32* %"R44_NOTYPE"
  ; FFMA R56, R47, R50, R37
  %".2698" = load i32, i32* %"R47_NOTYPE"
  %".2699" = load i32, i32* %"R50_NOTYPE"
  %".2700" = load i32, i32* %"R37_NOTYPE"
  %"fmul.158" = fmul i32 %".2698", %".2699"
  %"fadd.133" = fadd i32 %"fmul.158", %".2700"
  store i32 %"fadd.133", i32* %"R56_NOTYPE"
  ; FFMA R21, R47, R51, R34
  %".2703" = load i32, i32* %"R47_NOTYPE"
  %".2704" = load i32, i32* %"R51_NOTYPE"
  %".2705" = load i32, i32* %"R34_NOTYPE"
  %"fmul.159" = fmul i32 %".2703", %".2704"
  %"fadd.134" = fadd i32 %"fmul.159", %".2705"
  store i32 %"fadd.134", i32* %"R21_NOTYPE"
  ; @P0 BRA `(.L_x_24)
  %".2708" = load i1, i1* %"P0_Bool"
  %".2709" = icmp ne i1 %".2708", 1
  br i1 %".2709", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".2712" = load i1, i1* %"P1_Bool"
  %".2713" = icmp eq i1 %".2712", 1
  br i1 %".2713", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, i32* %"R11_NOTYPE"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  %".2718" = load i32, i32* %"R14_NOTYPE"
  %".2719" = load i32, i32* %"R22_NOTYPE"
  %"mul.57" = mul i32 %".2718", %"Arg_6"
  %"add.172" = add i32 %"mul.57", %".2719"
  store i32 %"add.172", i32* %"R7_NOTYPE"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_7", i32* %"R10_NOTYPE"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".2724" = load i32, i32* %"R13_NOTYPE"
  %".2725" = load i32, i32* %"R22_NOTYPE"
  %"mul.58" = mul i32 %".2724", %"Arg_6"
  %"add.173" = add i32 %"mul.58", %".2725"
  store i32 %"add.173", i32* %"R6_NOTYPE"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", i32* %"R9_NOTYPE"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".2730" = load i32, i32* %"R7_NOTYPE"
  %".2731" = load i32, i32* %"R11_NOTYPE"
  %"mul.59" = mul i32 %".2730", %".2731"
  %"add.174" = add i32 %"mul.59", %"Arg_4"
  store i32 %"add.174", i32* %"R4_NOTYPE"
  ; LEA R10, R10, R7, 0x1
  %".2734" = load i32, i32* %"R10_NOTYPE"
  %".2735" = load i32, i32* %"R7_NOTYPE"
  %"shl.15" = shl i32 %".2734", 1
  %"add.175" = add i32 %"shl.15", %".2735"
  store i32 %"add.175", i32* %"R10_NOTYPE"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".2738" = load i32, i32* %"R6_NOTYPE"
  %".2739" = load i32, i32* %"R11_NOTYPE"
  %"mul.60" = mul i32 %".2738", %".2739"
  %"add.176" = add i32 %"mul.60", %"Arg_2"
  store i32 %"add.176", i32* %"R6_NOTYPE"
  ; LEA R8, P0, R9, R4, 0x2
  %".2742" = load i1, i1* %"P0_Bool"
  %".2743" = sub i1 0, %".2742"
  %".2744" = load i32, i32* %"R9_NOTYPE"
  %".2745" = load i32, i32* %"R4_NOTYPE"
  %".2746" = sext i1 %".2743" to i32
  %"shl.16" = shl i32 %".2746", %".2745"
  %"add.177" = add i32 %"shl.16", %".2744"
  store i32 %"add.177", i32* %"R8_NOTYPE"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".2749" = load i32, i32* %"R10_NOTYPE"
  %".2750" = load i32, i32* %"R11_NOTYPE"
  %"mul.61" = mul i32 %".2749", %".2750"
  %"add.178" = add i32 %"mul.61", %"Arg_4"
  store i32 %"add.178", i32* %"R10_NOTYPE"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".2753" = load i32, i32* %"R9_NOTYPE"
  %".2754" = load i32, i32* %"R5_NOTYPE"
  %".2755" = load i32, i32* %"R16_NOTYPE"
  %"shl.17" = shl i32 %".2753", %".2755"
  %"add.179" = add i32 %"shl.17", %".2754"
  store i32 %"add.179", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R13, [R4]
  %".2758" = load i32, i32* %"R4_NOTYPE"
  %".2759" = add i32 %".2758", 0
  %"for_LDG.175" = inttoptr i32 %".2759" to i32*
  %".2760" = load i32, i32* %"for_LDG.175"
  store i32 %".2760", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R12, [R6]
  %".2763" = load i32, i32* %"R6_NOTYPE"
  %".2764" = add i32 %".2763", 0
  %"for_LDG.176" = inttoptr i32 %".2764" to i32*
  %".2765" = load i32, i32* %"for_LDG.176"
  store i32 %".2765", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R23, [R8]
  %".2768" = load i32, i32* %"R8_NOTYPE"
  %".2769" = add i32 %".2768", 0
  %"for_LDG.177" = inttoptr i32 %".2769" to i32*
  %".2770" = load i32, i32* %"for_LDG.177"
  store i32 %".2770", i32* %"R23_NOTYPE"
  ; LDG.E.SYS R22, [R10]
  %".2773" = load i32, i32* %"R10_NOTYPE"
  %".2774" = add i32 %".2773", 0
  %"for_LDG.178" = inttoptr i32 %".2774" to i32*
  %".2775" = load i32, i32* %"for_LDG.178"
  store i32 %".2775", i32* %"R22_NOTYPE"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".2778" = load i32, i32* %"R15_NOTYPE"
  %".2779" = load i1, i1* %"PT_Bool"
  %"cmp.34" = icmp ne i32 %".2778", 1
  %".2780" = and i1 %"cmp.34", %".2779"
  store i1 %".2780", i1* %"P0_Bool"
  ; FFMA R44, R13, R12, R44
  %".2783" = load i32, i32* %"R13_NOTYPE"
  %".2784" = load i32, i32* %"R12_NOTYPE"
  %".2785" = load i32, i32* %"R44_NOTYPE"
  %"fmul.160" = fmul i32 %".2783", %".2784"
  %"fadd.135" = fadd i32 %"fmul.160", %".2785"
  store i32 %"fadd.135", i32* %"R44_NOTYPE"
  ; FFMA R56, R12.reuse, R23, R56
  %".2788" = load i32, i32* %"R12_NOTYPE"
  %".2789" = load i32, i32* %"R23_NOTYPE"
  %".2790" = load i32, i32* %"R56_NOTYPE"
  %"fmul.161" = fmul i32 %".2788", %".2789"
  %"fadd.136" = fadd i32 %"fmul.161", %".2790"
  store i32 %"fadd.136", i32* %"R56_NOTYPE"
  ; FFMA R21, R12, R22, R21
  %".2793" = load i32, i32* %"R12_NOTYPE"
  %".2794" = load i32, i32* %"R22_NOTYPE"
  %".2795" = load i32, i32* %"R21_NOTYPE"
  %"fmul.162" = fmul i32 %".2793", %".2794"
  %"fadd.137" = fadd i32 %"fmul.162", %".2795"
  store i32 %"fadd.137", i32* %"R21_NOTYPE"
  ; @!P0 BRA `(.L_x_25)
  %".2798" = load i1, i1* %"P0_Bool"
  %".2799" = icmp eq i1 %".2798", 1
  br i1 %".2799", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".2802" = load i32, i32* %"R15_NOTYPE"
  %".2803" = load i1, i1* %"PT_Bool"
  %"cmp.35" = icmp ne i32 %".2802", 2
  %".2804" = and i1 %"cmp.35", %".2803"
  store i1 %".2804", i1* %"P0_Bool"
  ; LDG.E.SYS R13, [R4+0x4]
  %".2807" = load i32, i32* %"R4_NOTYPE"
  %".2808" = add i32 %".2807", 4
  %"for_LDG.179" = inttoptr i32 %".2808" to i32*
  %".2809" = load i32, i32* %"for_LDG.179"
  store i32 %".2809", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R12, [R6+0x4]
  %".2812" = load i32, i32* %"R6_NOTYPE"
  %".2813" = add i32 %".2812", 4
  %"for_LDG.180" = inttoptr i32 %".2813" to i32*
  %".2814" = load i32, i32* %"for_LDG.180"
  store i32 %".2814", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R23, [R8+0x4]
  %".2817" = load i32, i32* %"R8_NOTYPE"
  %".2818" = add i32 %".2817", 4
  %"for_LDG.181" = inttoptr i32 %".2818" to i32*
  %".2819" = load i32, i32* %"for_LDG.181"
  store i32 %".2819", i32* %"R23_NOTYPE"
  ; LDG.E.SYS R22, [R10+0x4]
  %".2822" = load i32, i32* %"R10_NOTYPE"
  %".2823" = add i32 %".2822", 4
  %"for_LDG.182" = inttoptr i32 %".2823" to i32*
  %".2824" = load i32, i32* %"for_LDG.182"
  store i32 %".2824", i32* %"R22_NOTYPE"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".2827" = load i1, i1* %"P0_Bool"
  %".2828" = icmp ne i1 %".2827", 1
  br i1 %".2828", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  %".2831" = load i32, i32* %"R4_NOTYPE"
  %".2832" = add i32 %".2831", 8
  %"for_LDG.183" = inttoptr i32 %".2832" to i32*
  %".2833" = load i32, i32* %"for_LDG.183"
  store i32 %".2833", i32* %"R25_NOTYPE"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".2838" = load i1, i1* %"P0_Bool"
  %".2839" = icmp ne i1 %".2838", 1
  br i1 %".2839", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  %".2842" = load i32, i32* %"R6_NOTYPE"
  %".2843" = add i32 %".2842", 8
  %"for_LDG.184" = inttoptr i32 %".2843" to i32*
  %".2844" = load i32, i32* %"for_LDG.184"
  store i32 %".2844", i32* %"R24_NOTYPE"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".2849" = load i1, i1* %"P0_Bool"
  %".2850" = icmp ne i1 %".2849", 1
  br i1 %".2850", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  %".2853" = load i32, i32* %"R8_NOTYPE"
  %".2854" = add i32 %".2853", 8
  %"for_LDG.185" = inttoptr i32 %".2854" to i32*
  %".2855" = load i32, i32* %"for_LDG.185"
  store i32 %".2855", i32* %"R35_NOTYPE"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".2860" = load i1, i1* %"P0_Bool"
  %".2861" = icmp ne i1 %".2860", 1
  br i1 %".2861", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  %".2864" = load i32, i32* %"R10_NOTYPE"
  %".2865" = add i32 %".2864", 8
  %"for_LDG.186" = inttoptr i32 %".2865" to i32*
  %".2866" = load i32, i32* %"for_LDG.186"
  store i32 %".2866", i32* %"R34_NOTYPE"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".2871" = load i32, i32* %"R13_NOTYPE"
  %".2872" = load i32, i32* %"R12_NOTYPE"
  %".2873" = load i32, i32* %"R44_NOTYPE"
  %"fmul.163" = fmul i32 %".2871", %".2872"
  %"fadd.138" = fadd i32 %"fmul.163", %".2873"
  store i32 %"fadd.138", i32* %"R44_NOTYPE"
  ; FFMA R56, R12.reuse, R23, R56
  %".2876" = load i32, i32* %"R12_NOTYPE"
  %".2877" = load i32, i32* %"R23_NOTYPE"
  %".2878" = load i32, i32* %"R56_NOTYPE"
  %"fmul.164" = fmul i32 %".2876", %".2877"
  %"fadd.139" = fadd i32 %"fmul.164", %".2878"
  store i32 %"fadd.139", i32* %"R56_NOTYPE"
  ; FFMA R21, R12, R22, R21
  %".2881" = load i32, i32* %"R12_NOTYPE"
  %".2882" = load i32, i32* %"R22_NOTYPE"
  %".2883" = load i32, i32* %"R21_NOTYPE"
  %"fmul.165" = fmul i32 %".2881", %".2882"
  %"fadd.140" = fadd i32 %"fmul.165", %".2883"
  store i32 %"fadd.140", i32* %"R21_NOTYPE"
  ; @P0 FFMA R44, R25, R24, R44
  %".2886" = load i1, i1* %"P0_Bool"
  %".2887" = icmp ne i1 %".2886", 1
  br i1 %".2887", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".2890" = load i32, i32* %"R25_NOTYPE"
  %".2891" = load i32, i32* %"R24_NOTYPE"
  %".2892" = load i32, i32* %"R44_NOTYPE"
  %"fmul.166" = fmul i32 %".2890", %".2891"
  %"fadd.141" = fadd i32 %"fmul.166", %".2892"
  store i32 %"fadd.141", i32* %"R44_NOTYPE"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".2897" = load i1, i1* %"P0_Bool"
  %".2898" = icmp ne i1 %".2897", 1
  br i1 %".2898", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".2901" = load i32, i32* %"R24_NOTYPE"
  %".2902" = load i32, i32* %"R35_NOTYPE"
  %".2903" = load i32, i32* %"R56_NOTYPE"
  %"fmul.167" = fmul i32 %".2901", %".2902"
  %"fadd.142" = fadd i32 %"fmul.167", %".2903"
  store i32 %"fadd.142", i32* %"R56_NOTYPE"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".2908" = load i1, i1* %"P0_Bool"
  %".2909" = icmp ne i1 %".2908", 1
  br i1 %".2909", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".2912" = load i32, i32* %"R24_NOTYPE"
  %".2913" = load i32, i32* %"R34_NOTYPE"
  %".2914" = load i32, i32* %"R21_NOTYPE"
  %"fmul.168" = fmul i32 %".2912", %".2913"
  %"fadd.143" = fadd i32 %"fmul.168", %".2914"
  store i32 %"fadd.143", i32* %"R21_NOTYPE"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".2919" = load i1, i1* %"P4_Bool"
  %".2920" = icmp eq i1 %".2919", 1
  br i1 %".2920", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".2923" = load i32, i32* %"R18_NOTYPE"
  %".2924" = load i1, i1* %"PT_Bool"
  %"cmp.36" = icmp sge i32 %".2923", 3
  %".2925" = and i1 %"cmp.36", %".2924"
  store i1 %".2925", i1* %"P0_Bool"
  ; MOV R23, RZ
  %".2928" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".2928", i32* %"R23_NOTYPE"
  ; @!P0 BRA `(.L_x_27)
  %".2931" = load i1, i1* %"P0_Bool"
  %".2932" = icmp eq i1 %".2931", 1
  br i1 %".2932", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".2935" = load i32, i32* %"R20_NOTYPE"
  %".2936" = load i1, i1* %"PT_Bool"
  %"cmp.37" = icmp sgt i32 %".2935", 0
  %".2937" = and i1 %"cmp.37", %".2936"
  store i1 %".2937", i1* %"P0_Bool"
  ; MOV R23, RZ
  %".2940" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".2940", i32* %"R23_NOTYPE"
  ; MOV R22, R20
  %".2943" = load i32, i32* %"R20_NOTYPE"
  store i32 %".2943", i32* %"R22_NOTYPE"
  ; @!P0 BRA `(.L_x_28)
  %".2946" = load i1, i1* %"P0_Bool"
  %".2947" = icmp eq i1 %".2946", 1
  br i1 %".2947", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".2950" = load i32, i32* %"R22_NOTYPE"
  %".2951" = load i1, i1* %"PT_Bool"
  %"cmp.38" = icmp sgt i32 %".2950", 12
  %".2952" = and i1 %"cmp.38", %".2951"
  store i1 %".2952", i1* %"P1_Bool"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".2955" = and i1 1, 1
  %".2956" = or i1 %".2955", 1
  ; @!P1 BRA `(.L_x_29)
  %".2958" = load i1, i1* %"P1_Bool"
  %".2959" = icmp eq i1 %".2958", 1
  br i1 %".2959", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2962" = xor i1 1, 1
  %".2963" = and i1 %".2962", 1
  %".2964" = and i1 %".2963", 1
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".2966" = load i32, i32* %"R0_NOTYPE"
  %".2967" = load i32, i32* %"R23_NOTYPE"
  %"add.180" = add i32 %".2966", %".2967"
  %"add.181" = add i32 %"add.180", 0
  store i32 %"add.181", i32* %"R25_NOTYPE"
  ; MOV R24, 0x4
  store i32 4, i32* %"R24_NOTYPE"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".2972" = load i32, i32* %"R2_NOTYPE"
  %".2973" = load i32, i32* %"R25_NOTYPE"
  %"mul.62" = mul i32 %".2972", 3
  %"add.182" = add i32 %"mul.62", %".2973"
  store i32 %"add.182", i32* %"R35_NOTYPE"
  ; LEA R25, R2, R25, 0x2
  %".2976" = load i32, i32* %"R2_NOTYPE"
  %".2977" = load i32, i32* %"R25_NOTYPE"
  %"shl.18" = shl i32 %".2976", 2
  %"add.183" = add i32 %"shl.18", %".2977"
  store i32 %"add.183", i32* %"R25_NOTYPE"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".2980" = load i32, i32* %"R23_NOTYPE"
  %".2981" = load i32, i32* %"R24_NOTYPE"
  %"mul.63" = mul i32 %".2980", %".2981"
  %"add.184" = add i32 %"mul.63", %"Arg_3"
  store i32 %"add.184", i32* %"R36_NOTYPE"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".2984" = load i32, i32* %"R35_NOTYPE"
  %".2985" = load i32, i32* %"R24_NOTYPE"
  %"mul.64" = mul i32 %".2984", %".2985"
  %"add.185" = add i32 %"mul.64", %"Arg_4"
  store i32 %"add.185", i32* %"R8_NOTYPE"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".2988" = load i32, i32* %"R25_NOTYPE"
  %".2989" = load i32, i32* %"R24_NOTYPE"
  %"mul.65" = mul i32 %".2988", %".2989"
  %"add.186" = add i32 %"mul.65", %"Arg_4"
  store i32 %"add.186", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R39, [R36]
  %".2992" = load i32, i32* %"R36_NOTYPE"
  %".2993" = add i32 %".2992", 0
  %"for_LDG.187" = inttoptr i32 %".2993" to i32*
  %".2994" = load i32, i32* %"for_LDG.187"
  store i32 %".2994", i32* %"R39_NOTYPE"
  ; LDG.E.SYS R41, [R8]
  %".2997" = load i32, i32* %"R8_NOTYPE"
  %".2998" = add i32 %".2997", 0
  %"for_LDG.188" = inttoptr i32 %".2998" to i32*
  %".2999" = load i32, i32* %"for_LDG.188"
  store i32 %".2999", i32* %"R41_NOTYPE"
  ; LDG.E.SYS R40, [R12]
  %".3002" = load i32, i32* %"R12_NOTYPE"
  %".3003" = add i32 %".3002", 0
  %"for_LDG.189" = inttoptr i32 %".3003" to i32*
  %".3004" = load i32, i32* %"for_LDG.189"
  store i32 %".3004", i32* %"R40_NOTYPE"
  ; LDG.E.SYS R52, [R36+0x4]
  %".3007" = load i32, i32* %"R36_NOTYPE"
  %".3008" = add i32 %".3007", 4
  %"for_LDG.190" = inttoptr i32 %".3008" to i32*
  %".3009" = load i32, i32* %"for_LDG.190"
  store i32 %".3009", i32* %"R52_NOTYPE"
  ; LDG.E.SYS R53, [R8+0x4]
  %".3012" = load i32, i32* %"R8_NOTYPE"
  %".3013" = add i32 %".3012", 4
  %"for_LDG.191" = inttoptr i32 %".3013" to i32*
  %".3014" = load i32, i32* %"for_LDG.191"
  store i32 %".3014", i32* %"R53_NOTYPE"
  ; LDG.E.SYS R55, [R12+0x4]
  %".3017" = load i32, i32* %"R12_NOTYPE"
  %".3018" = add i32 %".3017", 4
  %"for_LDG.192" = inttoptr i32 %".3018" to i32*
  %".3019" = load i32, i32* %"for_LDG.192"
  store i32 %".3019", i32* %"R55_NOTYPE"
  ; IADD3 R11, R23, 0x4, RZ
  %".3022" = load i32, i32* %"R23_NOTYPE"
  %"add.187" = add i32 %".3022", 4
  %"add.188" = add i32 %"add.187", 0
  store i32 %"add.188", i32* %"R11_NOTYPE"
  ; LDG.E.SYS R50, [R36+0x8]
  %".3025" = load i32, i32* %"R36_NOTYPE"
  %".3026" = add i32 %".3025", 8
  %"for_LDG.193" = inttoptr i32 %".3026" to i32*
  %".3027" = load i32, i32* %"for_LDG.193"
  store i32 %".3027", i32* %"R50_NOTYPE"
  ; IADD3 R7, R35, 0x4, RZ
  %".3030" = load i32, i32* %"R35_NOTYPE"
  %"add.189" = add i32 %".3030", 4
  %"add.190" = add i32 %"add.189", 0
  store i32 %"add.190", i32* %"R7_NOTYPE"
  ; LDG.E.SYS R43, [R8+0x8]
  %".3033" = load i32, i32* %"R8_NOTYPE"
  %".3034" = add i32 %".3033", 8
  %"for_LDG.194" = inttoptr i32 %".3034" to i32*
  %".3035" = load i32, i32* %"for_LDG.194"
  store i32 %".3035", i32* %"R43_NOTYPE"
  ; IADD3 R5, R25, 0x4, RZ
  %".3038" = load i32, i32* %"R25_NOTYPE"
  %"add.191" = add i32 %".3038", 4
  %"add.192" = add i32 %"add.191", 0
  store i32 %"add.192", i32* %"R5_NOTYPE"
  ; LDG.E.SYS R51, [R12+0x8]
  %".3041" = load i32, i32* %"R12_NOTYPE"
  %".3042" = add i32 %".3041", 8
  %"for_LDG.195" = inttoptr i32 %".3042" to i32*
  %".3043" = load i32, i32* %"for_LDG.195"
  store i32 %".3043", i32* %"R51_NOTYPE"
  ; LDG.E.SYS R47, [R36+0xc]
  %".3046" = load i32, i32* %"R36_NOTYPE"
  %".3047" = add i32 %".3046", 12
  %"for_LDG.196" = inttoptr i32 %".3047" to i32*
  %".3048" = load i32, i32* %"for_LDG.196"
  store i32 %".3048", i32* %"R47_NOTYPE"
  ; LDG.E.SYS R54, [R8+0xc]
  %".3051" = load i32, i32* %"R8_NOTYPE"
  %".3052" = add i32 %".3051", 12
  %"for_LDG.197" = inttoptr i32 %".3052" to i32*
  %".3053" = load i32, i32* %"for_LDG.197"
  store i32 %".3053", i32* %"R54_NOTYPE"
  ; LDG.E.SYS R58, [R12+0xc]
  %".3056" = load i32, i32* %"R12_NOTYPE"
  %".3057" = add i32 %".3056", 12
  %"for_LDG.198" = inttoptr i32 %".3057" to i32*
  %".3058" = load i32, i32* %"for_LDG.198"
  store i32 %".3058", i32* %"R58_NOTYPE"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".3061" = load i32, i32* %"R11_NOTYPE"
  %".3062" = load i32, i32* %"R24_NOTYPE"
  %"mul.66" = mul i32 %".3061", %".3062"
  %"add.193" = add i32 %"mul.66", %"Arg_3"
  store i32 %"add.193", i32* %"R10_NOTYPE"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".3065" = load i32, i32* %"R7_NOTYPE"
  %".3066" = load i32, i32* %"R24_NOTYPE"
  %"mul.67" = mul i32 %".3065", %".3066"
  %"add.194" = add i32 %"mul.67", %"Arg_4"
  store i32 %"add.194", i32* %"R6_NOTYPE"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".3069" = load i32, i32* %"R5_NOTYPE"
  %".3070" = load i32, i32* %"R24_NOTYPE"
  %"mul.68" = mul i32 %".3069", %".3070"
  %"add.195" = add i32 %"mul.68", %"Arg_4"
  store i32 %"add.195", i32* %"R4_NOTYPE"
  ; LDG.E.SYS R46, [R10]
  %".3073" = load i32, i32* %"R10_NOTYPE"
  %".3074" = add i32 %".3073", 0
  %"for_LDG.199" = inttoptr i32 %".3074" to i32*
  %".3075" = load i32, i32* %"for_LDG.199"
  store i32 %".3075", i32* %"R46_NOTYPE"
  ; LDG.E.SYS R42, [R6]
  %".3078" = load i32, i32* %"R6_NOTYPE"
  %".3079" = add i32 %".3078", 0
  %"for_LDG.200" = inttoptr i32 %".3079" to i32*
  %".3080" = load i32, i32* %"for_LDG.200"
  store i32 %".3080", i32* %"R42_NOTYPE"
  ; LDG.E.SYS R45, [R4]
  %".3083" = load i32, i32* %"R4_NOTYPE"
  %".3084" = add i32 %".3083", 0
  %"for_LDG.201" = inttoptr i32 %".3084" to i32*
  %".3085" = load i32, i32* %"for_LDG.201"
  store i32 %".3085", i32* %"R45_NOTYPE"
  ; LDG.E.SYS R34, [R10+0x4]
  %".3088" = load i32, i32* %"R10_NOTYPE"
  %".3089" = add i32 %".3088", 4
  %"for_LDG.202" = inttoptr i32 %".3089" to i32*
  %".3090" = load i32, i32* %"for_LDG.202"
  store i32 %".3090", i32* %"R34_NOTYPE"
  ; LDG.E.SYS R37, [R6+0x4]
  %".3093" = load i32, i32* %"R6_NOTYPE"
  %".3094" = add i32 %".3093", 4
  %"for_LDG.203" = inttoptr i32 %".3094" to i32*
  %".3095" = load i32, i32* %"for_LDG.203"
  store i32 %".3095", i32* %"R37_NOTYPE"
  ; IADD3 R9, R23, 0x8, RZ
  %".3098" = load i32, i32* %"R23_NOTYPE"
  %"add.196" = add i32 %".3098", 8
  %"add.197" = add i32 %"add.196", 0
  store i32 %"add.197", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R36, [R10+0x8]
  %".3101" = load i32, i32* %"R10_NOTYPE"
  %".3102" = add i32 %".3101", 8
  %"for_LDG.204" = inttoptr i32 %".3102" to i32*
  %".3103" = load i32, i32* %"for_LDG.204"
  store i32 %".3103", i32* %"R36_NOTYPE"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".3106" = load i32, i32* %"R9_NOTYPE"
  %".3107" = load i32, i32* %"R24_NOTYPE"
  %"mul.69" = mul i32 %".3106", %".3107"
  %"add.198" = add i32 %"mul.69", %"Arg_3"
  store i32 %"add.198", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R38, [R10+0xc]
  %".3110" = load i32, i32* %"R10_NOTYPE"
  %".3111" = add i32 %".3110", 12
  %"for_LDG.205" = inttoptr i32 %".3111" to i32*
  %".3112" = load i32, i32* %"for_LDG.205"
  store i32 %".3112", i32* %"R38_NOTYPE"
  ; IADD3 R13, R23, 0xc, RZ
  %".3115" = load i32, i32* %"R23_NOTYPE"
  %"add.199" = add i32 %".3115", 12
  %"add.200" = add i32 %"add.199", 0
  store i32 %"add.200", i32* %"R13_NOTYPE"
  ; IADD3 R11, R35, 0x8, RZ
  %".3118" = load i32, i32* %"R35_NOTYPE"
  %"add.201" = add i32 %".3118", 8
  %"add.202" = add i32 %"add.201", 0
  store i32 %"add.202", i32* %"R11_NOTYPE"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".3121" = load i32, i32* %"R13_NOTYPE"
  %".3122" = load i32, i32* %"R24_NOTYPE"
  %"mul.70" = mul i32 %".3121", %".3122"
  %"add.203" = add i32 %"mul.70", %"Arg_3"
  store i32 %"add.203", i32* %"R12_NOTYPE"
  ; FFMA R57, R41, R39, R44
  %".3125" = load i32, i32* %"R41_NOTYPE"
  %".3126" = load i32, i32* %"R39_NOTYPE"
  %".3127" = load i32, i32* %"R44_NOTYPE"
  %"fmul.169" = fmul i32 %".3125", %".3126"
  %"fadd.144" = fadd i32 %"fmul.169", %".3127"
  store i32 %"fadd.144", i32* %"R57_NOTYPE"
  ; LDG.E.SYS R41, [R8]
  %".3130" = load i32, i32* %"R8_NOTYPE"
  %".3131" = add i32 %".3130", 0
  %"for_LDG.206" = inttoptr i32 %".3131" to i32*
  %".3132" = load i32, i32* %"for_LDG.206"
  store i32 %".3132", i32* %"R41_NOTYPE"
  ; FFMA R56, R39, R40, R56
  %".3135" = load i32, i32* %"R39_NOTYPE"
  %".3136" = load i32, i32* %"R40_NOTYPE"
  %".3137" = load i32, i32* %"R56_NOTYPE"
  %"fmul.170" = fmul i32 %".3135", %".3136"
  %"fadd.145" = fadd i32 %"fmul.170", %".3137"
  store i32 %"fadd.145", i32* %"R56_NOTYPE"
  ; LDG.E.SYS R40, [R8+0x4]
  %".3140" = load i32, i32* %"R8_NOTYPE"
  %".3141" = add i32 %".3140", 4
  %"for_LDG.207" = inttoptr i32 %".3141" to i32*
  %".3142" = load i32, i32* %"for_LDG.207"
  store i32 %".3142", i32* %"R40_NOTYPE"
  ; LDG.E.SYS R39, [R8+0x8]
  %".3145" = load i32, i32* %"R8_NOTYPE"
  %".3146" = add i32 %".3145", 8
  %"for_LDG.208" = inttoptr i32 %".3146" to i32*
  %".3147" = load i32, i32* %"for_LDG.208"
  store i32 %".3147", i32* %"R39_NOTYPE"
  ; FFMA R57, R53, R52, R57
  %".3150" = load i32, i32* %"R53_NOTYPE"
  %".3151" = load i32, i32* %"R52_NOTYPE"
  %".3152" = load i32, i32* %"R57_NOTYPE"
  %"fmul.171" = fmul i32 %".3150", %".3151"
  %"fadd.146" = fadd i32 %"fmul.171", %".3152"
  store i32 %"fadd.146", i32* %"R57_NOTYPE"
  ; LDG.E.SYS R44, [R8+0xc]
  %".3155" = load i32, i32* %"R8_NOTYPE"
  %".3156" = add i32 %".3155", 12
  %"for_LDG.209" = inttoptr i32 %".3156" to i32*
  %".3157" = load i32, i32* %"for_LDG.209"
  store i32 %".3157", i32* %"R44_NOTYPE"
  ; FFMA R59, R52, R55, R56
  %".3160" = load i32, i32* %"R52_NOTYPE"
  %".3161" = load i32, i32* %"R55_NOTYPE"
  %".3162" = load i32, i32* %"R56_NOTYPE"
  %"fmul.172" = fmul i32 %".3160", %".3161"
  %"fadd.147" = fadd i32 %"fmul.172", %".3162"
  store i32 %"fadd.147", i32* %"R59_NOTYPE"
  ; LDG.E.SYS R55, [R12]
  %".3165" = load i32, i32* %"R12_NOTYPE"
  %".3166" = add i32 %".3165", 0
  %"for_LDG.210" = inttoptr i32 %".3166" to i32*
  %".3167" = load i32, i32* %"for_LDG.210"
  store i32 %".3167", i32* %"R55_NOTYPE"
  ; LDG.E.SYS R53, [R12+0x4]
  %".3170" = load i32, i32* %"R12_NOTYPE"
  %".3171" = add i32 %".3170", 4
  %"for_LDG.211" = inttoptr i32 %".3171" to i32*
  %".3172" = load i32, i32* %"for_LDG.211"
  store i32 %".3172", i32* %"R53_NOTYPE"
  ; FFMA R43, R43, R50, R57
  %".3175" = load i32, i32* %"R43_NOTYPE"
  %".3176" = load i32, i32* %"R50_NOTYPE"
  %".3177" = load i32, i32* %"R57_NOTYPE"
  %"fmul.173" = fmul i32 %".3175", %".3176"
  %"fadd.148" = fadd i32 %"fmul.173", %".3177"
  store i32 %"fadd.148", i32* %"R43_NOTYPE"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".3180" = load i32, i32* %"R11_NOTYPE"
  %".3181" = load i32, i32* %"R24_NOTYPE"
  %"mul.71" = mul i32 %".3180", %".3181"
  %"add.204" = add i32 %"mul.71", %"Arg_4"
  store i32 %"add.204", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R52, [R12+0x8]
  %".3184" = load i32, i32* %"R12_NOTYPE"
  %".3185" = add i32 %".3184", 8
  %"for_LDG.212" = inttoptr i32 %".3185" to i32*
  %".3186" = load i32, i32* %"for_LDG.212"
  store i32 %".3186", i32* %"R52_NOTYPE"
  ; FFMA R51, R50, R51, R59
  %".3189" = load i32, i32* %"R50_NOTYPE"
  %".3190" = load i32, i32* %"R51_NOTYPE"
  %".3191" = load i32, i32* %"R59_NOTYPE"
  %"fmul.174" = fmul i32 %".3189", %".3190"
  %"fadd.149" = fadd i32 %"fmul.174", %".3191"
  store i32 %"fadd.149", i32* %"R51_NOTYPE"
  ; IADD3 R57, R25, 0x8, RZ
  %".3194" = load i32, i32* %"R25_NOTYPE"
  %"add.205" = add i32 %".3194", 8
  %"add.206" = add i32 %"add.205", 0
  store i32 %"add.206", i32* %"R57_NOTYPE"
  ; LDG.E.SYS R59, [R4+0xc]
  %".3197" = load i32, i32* %"R4_NOTYPE"
  %".3198" = add i32 %".3197", 12
  %"for_LDG.213" = inttoptr i32 %".3198" to i32*
  %".3199" = load i32, i32* %"for_LDG.213"
  store i32 %".3199", i32* %"R59_NOTYPE"
  ; FFMA R61, R54, R47, R43
  %".3202" = load i32, i32* %"R54_NOTYPE"
  %".3203" = load i32, i32* %"R47_NOTYPE"
  %".3204" = load i32, i32* %"R43_NOTYPE"
  %"fmul.175" = fmul i32 %".3202", %".3203"
  %"fadd.150" = fadd i32 %"fmul.175", %".3204"
  store i32 %"fadd.150", i32* %"R61_NOTYPE"
  ; LDG.E.SYS R50, [R8]
  %".3207" = load i32, i32* %"R8_NOTYPE"
  %".3208" = add i32 %".3207", 0
  %"for_LDG.214" = inttoptr i32 %".3208" to i32*
  %".3209" = load i32, i32* %"for_LDG.214"
  store i32 %".3209", i32* %"R50_NOTYPE"
  ; FFMA R58, R47, R58, R51
  %".3212" = load i32, i32* %"R47_NOTYPE"
  %".3213" = load i32, i32* %"R58_NOTYPE"
  %".3214" = load i32, i32* %"R51_NOTYPE"
  %"fmul.176" = fmul i32 %".3212", %".3213"
  %"fadd.151" = fadd i32 %"fmul.176", %".3214"
  store i32 %"fadd.151", i32* %"R58_NOTYPE"
  ; LDG.E.SYS R43, [R6+0x8]
  %".3217" = load i32, i32* %"R6_NOTYPE"
  %".3218" = add i32 %".3217", 8
  %"for_LDG.215" = inttoptr i32 %".3218" to i32*
  %".3219" = load i32, i32* %"for_LDG.215"
  store i32 %".3219", i32* %"R43_NOTYPE"
  ; LDG.E.SYS R47, [R4+0x4]
  %".3222" = load i32, i32* %"R4_NOTYPE"
  %".3223" = add i32 %".3222", 4
  %"for_LDG.216" = inttoptr i32 %".3223" to i32*
  %".3224" = load i32, i32* %"for_LDG.216"
  store i32 %".3224", i32* %"R47_NOTYPE"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".3227" = load i32, i32* %"R57_NOTYPE"
  %".3228" = load i32, i32* %"R24_NOTYPE"
  %"mul.72" = mul i32 %".3227", %".3228"
  %"add.207" = add i32 %"mul.72", %"Arg_4"
  store i32 %"add.207", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R51, [R4+0x8]
  %".3231" = load i32, i32* %"R4_NOTYPE"
  %".3232" = add i32 %".3231", 8
  %"for_LDG.217" = inttoptr i32 %".3232" to i32*
  %".3233" = load i32, i32* %"for_LDG.217"
  store i32 %".3233", i32* %"R51_NOTYPE"
  ; LDG.E.SYS R57, [R6+0xc]
  %".3236" = load i32, i32* %"R6_NOTYPE"
  %".3237" = add i32 %".3236", 12
  %"for_LDG.218" = inttoptr i32 %".3237" to i32*
  %".3238" = load i32, i32* %"for_LDG.218"
  store i32 %".3238", i32* %"R57_NOTYPE"
  ; FFMA R42, R42, R46, R61
  %".3241" = load i32, i32* %"R42_NOTYPE"
  %".3242" = load i32, i32* %"R46_NOTYPE"
  %".3243" = load i32, i32* %"R61_NOTYPE"
  %"fmul.177" = fmul i32 %".3241", %".3242"
  %"fadd.152" = fadd i32 %"fmul.177", %".3243"
  store i32 %"fadd.152", i32* %"R42_NOTYPE"
  ; IADD3 R25, R25, 0xc, RZ
  %".3246" = load i32, i32* %"R25_NOTYPE"
  %"add.208" = add i32 %".3246", 12
  %"add.209" = add i32 %"add.208", 0
  store i32 %"add.209", i32* %"R25_NOTYPE"
  ; LDG.E.SYS R56, [R12+0xc]
  %".3249" = load i32, i32* %"R12_NOTYPE"
  %".3250" = add i32 %".3249", 12
  %"for_LDG.219" = inttoptr i32 %".3250" to i32*
  %".3251" = load i32, i32* %"for_LDG.219"
  store i32 %".3251", i32* %"R56_NOTYPE"
  ; FFMA R45, R46, R45, R58
  %".3254" = load i32, i32* %"R46_NOTYPE"
  %".3255" = load i32, i32* %"R45_NOTYPE"
  %".3256" = load i32, i32* %"R58_NOTYPE"
  %"fmul.178" = fmul i32 %".3254", %".3255"
  %"fadd.153" = fadd i32 %"fmul.178", %".3256"
  store i32 %"fadd.153", i32* %"R45_NOTYPE"
  ; LDG.E.SYS R46, [R10]
  %".3259" = load i32, i32* %"R10_NOTYPE"
  %".3260" = add i32 %".3259", 0
  %"for_LDG.220" = inttoptr i32 %".3260" to i32*
  %".3261" = load i32, i32* %"for_LDG.220"
  store i32 %".3261", i32* %"R46_NOTYPE"
  ; LDG.E.SYS R61, [R8+0x4]
  %".3264" = load i32, i32* %"R8_NOTYPE"
  %".3265" = add i32 %".3264", 4
  %"for_LDG.221" = inttoptr i32 %".3265" to i32*
  %".3266" = load i32, i32* %"for_LDG.221"
  store i32 %".3266", i32* %"R61_NOTYPE"
  ; IADD3 R13, R35, 0xc, RZ
  %".3269" = load i32, i32* %"R35_NOTYPE"
  %"add.210" = add i32 %".3269", 12
  %"add.211" = add i32 %"add.210", 0
  store i32 %"add.211", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R35, [R10+0x4]
  %".3272" = load i32, i32* %"R10_NOTYPE"
  %".3273" = add i32 %".3272", 4
  %"for_LDG.222" = inttoptr i32 %".3273" to i32*
  %".3274" = load i32, i32* %"for_LDG.222"
  store i32 %".3274", i32* %"R35_NOTYPE"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".3277" = load i32, i32* %"R13_NOTYPE"
  %".3278" = load i32, i32* %"R24_NOTYPE"
  %"mul.73" = mul i32 %".3277", %".3278"
  %"add.212" = add i32 %"mul.73", %"Arg_4"
  store i32 %"add.212", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R6, [R8+0x8]
  %".3281" = load i32, i32* %"R8_NOTYPE"
  %".3282" = add i32 %".3281", 8
  %"for_LDG.223" = inttoptr i32 %".3282" to i32*
  %".3283" = load i32, i32* %"for_LDG.223"
  store i32 %".3283", i32* %"R6_NOTYPE"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".3286" = load i32, i32* %"R25_NOTYPE"
  %".3287" = load i32, i32* %"R24_NOTYPE"
  %"mul.74" = mul i32 %".3286", %".3287"
  %"add.213" = add i32 %"mul.74", %"Arg_4"
  store i32 %"add.213", i32* %"R24_NOTYPE"
  ; LDG.E.SYS R4, [R10+0x8]
  %".3290" = load i32, i32* %"R10_NOTYPE"
  %".3291" = add i32 %".3290", 8
  %"for_LDG.224" = inttoptr i32 %".3291" to i32*
  %".3292" = load i32, i32* %"for_LDG.224"
  store i32 %".3292", i32* %"R4_NOTYPE"
  ; LDG.E.SYS R5, [R8+0xc]
  %".3295" = load i32, i32* %"R8_NOTYPE"
  %".3296" = add i32 %".3295", 12
  %"for_LDG.225" = inttoptr i32 %".3296" to i32*
  %".3297" = load i32, i32* %"for_LDG.225"
  store i32 %".3297", i32* %"R5_NOTYPE"
  ; LDG.E.SYS R60, [R10+0xc]
  %".3300" = load i32, i32* %"R10_NOTYPE"
  %".3301" = add i32 %".3300", 12
  %"for_LDG.226" = inttoptr i32 %".3301" to i32*
  %".3302" = load i32, i32* %"for_LDG.226"
  store i32 %".3302", i32* %"R60_NOTYPE"
  ; LDG.E.SYS R58, [R12]
  %".3305" = load i32, i32* %"R12_NOTYPE"
  %".3306" = add i32 %".3305", 0
  %"for_LDG.227" = inttoptr i32 %".3306" to i32*
  %".3307" = load i32, i32* %"for_LDG.227"
  store i32 %".3307", i32* %"R58_NOTYPE"
  ; LDG.E.SYS R54, [R12+0x4]
  %".3310" = load i32, i32* %"R12_NOTYPE"
  %".3311" = add i32 %".3310", 4
  %"for_LDG.228" = inttoptr i32 %".3311" to i32*
  %".3312" = load i32, i32* %"for_LDG.228"
  store i32 %".3312", i32* %"R54_NOTYPE"
  ; FFMA R10, R37, R34, R42
  %".3315" = load i32, i32* %"R37_NOTYPE"
  %".3316" = load i32, i32* %"R34_NOTYPE"
  %".3317" = load i32, i32* %"R42_NOTYPE"
  %"fmul.179" = fmul i32 %".3315", %".3316"
  %"fadd.154" = fadd i32 %"fmul.179", %".3317"
  store i32 %"fadd.154", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R37, [R24]
  %".3320" = load i32, i32* %"R24_NOTYPE"
  %".3321" = add i32 %".3320", 0
  %"for_LDG.229" = inttoptr i32 %".3321" to i32*
  %".3322" = load i32, i32* %"for_LDG.229"
  store i32 %".3322", i32* %"R37_NOTYPE"
  ; LDG.E.SYS R42, [R24+0x4]
  %".3325" = load i32, i32* %"R24_NOTYPE"
  %".3326" = add i32 %".3325", 4
  %"for_LDG.230" = inttoptr i32 %".3326" to i32*
  %".3327" = load i32, i32* %"for_LDG.230"
  store i32 %".3327", i32* %"R42_NOTYPE"
  ; LDG.E.SYS R7, [R12+0x8]
  %".3330" = load i32, i32* %"R12_NOTYPE"
  %".3331" = add i32 %".3330", 8
  %"for_LDG.231" = inttoptr i32 %".3331" to i32*
  %".3332" = load i32, i32* %"for_LDG.231"
  store i32 %".3332", i32* %"R7_NOTYPE"
  ; LDG.E.SYS R9, [R24+0x8]
  %".3335" = load i32, i32* %"R24_NOTYPE"
  %".3336" = add i32 %".3335", 8
  %"for_LDG.232" = inttoptr i32 %".3336" to i32*
  %".3337" = load i32, i32* %"for_LDG.232"
  store i32 %".3337", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R8, [R24+0xc]
  %".3340" = load i32, i32* %"R24_NOTYPE"
  %".3341" = add i32 %".3340", 12
  %"for_LDG.233" = inttoptr i32 %".3341" to i32*
  %".3342" = load i32, i32* %"for_LDG.233"
  store i32 %".3342", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R13, [R12+0xc]
  %".3345" = load i32, i32* %"R12_NOTYPE"
  %".3346" = add i32 %".3345", 12
  %"for_LDG.234" = inttoptr i32 %".3346" to i32*
  %".3347" = load i32, i32* %"for_LDG.234"
  store i32 %".3347", i32* %"R13_NOTYPE"
  ; IADD3 R22, R22, -0x10, RZ
  %".3350" = load i32, i32* %"R22_NOTYPE"
  %"add.214" = add i32 %".3350", -16
  %"add.215" = add i32 %"add.214", 0
  store i32 %"add.215", i32* %"R22_NOTYPE"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".3353" = load i32, i32* %"R22_NOTYPE"
  %".3354" = load i1, i1* %"PT_Bool"
  %"cmp.39" = icmp sgt i32 %".3353", 12
  %".3355" = and i1 %"cmp.39", %".3354"
  store i1 %".3355", i1* %"P1_Bool"
  ; IADD3 R23, R23, 0x10, RZ
  %".3358" = load i32, i32* %"R23_NOTYPE"
  %"add.216" = add i32 %".3358", 16
  %"add.217" = add i32 %"add.216", 0
  store i32 %"add.217", i32* %"R23_NOTYPE"
  ; FFMA R10, R43, R36, R10
  %".3361" = load i32, i32* %"R43_NOTYPE"
  %".3362" = load i32, i32* %"R36_NOTYPE"
  %".3363" = load i32, i32* %"R10_NOTYPE"
  %"fmul.180" = fmul i32 %".3361", %".3362"
  %"fadd.155" = fadd i32 %"fmul.180", %".3363"
  store i32 %"fadd.155", i32* %"R10_NOTYPE"
  ; FFMA R45, R34, R47, R45
  %".3366" = load i32, i32* %"R34_NOTYPE"
  %".3367" = load i32, i32* %"R47_NOTYPE"
  %".3368" = load i32, i32* %"R45_NOTYPE"
  %"fmul.181" = fmul i32 %".3366", %".3367"
  %"fadd.156" = fadd i32 %"fmul.181", %".3368"
  store i32 %"fadd.156", i32* %"R45_NOTYPE"
  ; FFMA R45, R36, R51, R45
  %".3371" = load i32, i32* %"R36_NOTYPE"
  %".3372" = load i32, i32* %"R51_NOTYPE"
  %".3373" = load i32, i32* %"R45_NOTYPE"
  %"fmul.182" = fmul i32 %".3371", %".3372"
  %"fadd.157" = fadd i32 %"fmul.182", %".3373"
  store i32 %"fadd.157", i32* %"R45_NOTYPE"
  ; FFMA R10, R57, R38, R10
  %".3376" = load i32, i32* %"R57_NOTYPE"
  %".3377" = load i32, i32* %"R38_NOTYPE"
  %".3378" = load i32, i32* %"R10_NOTYPE"
  %"fmul.183" = fmul i32 %".3376", %".3377"
  %"fadd.158" = fadd i32 %"fmul.183", %".3378"
  store i32 %"fadd.158", i32* %"R10_NOTYPE"
  ; FFMA R45, R38, R59, R45
  %".3381" = load i32, i32* %"R38_NOTYPE"
  %".3382" = load i32, i32* %"R59_NOTYPE"
  %".3383" = load i32, i32* %"R45_NOTYPE"
  %"fmul.184" = fmul i32 %".3381", %".3382"
  %"fadd.159" = fadd i32 %"fmul.184", %".3383"
  store i32 %"fadd.159", i32* %"R45_NOTYPE"
  ; FFMA R10, R50, R41, R10
  %".3386" = load i32, i32* %"R50_NOTYPE"
  %".3387" = load i32, i32* %"R41_NOTYPE"
  %".3388" = load i32, i32* %"R10_NOTYPE"
  %"fmul.185" = fmul i32 %".3386", %".3387"
  %"fadd.160" = fadd i32 %"fmul.185", %".3388"
  store i32 %"fadd.160", i32* %"R10_NOTYPE"
  ; FFMA R45, R41, R46, R45
  %".3391" = load i32, i32* %"R41_NOTYPE"
  %".3392" = load i32, i32* %"R46_NOTYPE"
  %".3393" = load i32, i32* %"R45_NOTYPE"
  %"fmul.186" = fmul i32 %".3391", %".3392"
  %"fadd.161" = fadd i32 %"fmul.186", %".3393"
  store i32 %"fadd.161", i32* %"R45_NOTYPE"
  ; FFMA R10, R61, R40, R10
  %".3396" = load i32, i32* %"R61_NOTYPE"
  %".3397" = load i32, i32* %"R40_NOTYPE"
  %".3398" = load i32, i32* %"R10_NOTYPE"
  %"fmul.187" = fmul i32 %".3396", %".3397"
  %"fadd.162" = fadd i32 %"fmul.187", %".3398"
  store i32 %"fadd.162", i32* %"R10_NOTYPE"
  ; FFMA R35, R40, R35, R45
  %".3401" = load i32, i32* %"R40_NOTYPE"
  %".3402" = load i32, i32* %"R35_NOTYPE"
  %".3403" = load i32, i32* %"R45_NOTYPE"
  %"fmul.188" = fmul i32 %".3401", %".3402"
  %"fadd.163" = fadd i32 %"fmul.188", %".3403"
  store i32 %"fadd.163", i32* %"R35_NOTYPE"
  ; FFMA R6, R6, R39, R10
  %".3406" = load i32, i32* %"R6_NOTYPE"
  %".3407" = load i32, i32* %"R39_NOTYPE"
  %".3408" = load i32, i32* %"R10_NOTYPE"
  %"fmul.189" = fmul i32 %".3406", %".3407"
  %"fadd.164" = fadd i32 %"fmul.189", %".3408"
  store i32 %"fadd.164", i32* %"R6_NOTYPE"
  ; FFMA R35, R39, R4, R35
  %".3411" = load i32, i32* %"R39_NOTYPE"
  %".3412" = load i32, i32* %"R4_NOTYPE"
  %".3413" = load i32, i32* %"R35_NOTYPE"
  %"fmul.190" = fmul i32 %".3411", %".3412"
  %"fadd.165" = fadd i32 %"fmul.190", %".3413"
  store i32 %"fadd.165", i32* %"R35_NOTYPE"
  ; FFMA R5, R5, R44, R6
  %".3416" = load i32, i32* %"R5_NOTYPE"
  %".3417" = load i32, i32* %"R44_NOTYPE"
  %".3418" = load i32, i32* %"R6_NOTYPE"
  %"fmul.191" = fmul i32 %".3416", %".3417"
  %"fadd.166" = fadd i32 %"fmul.191", %".3418"
  store i32 %"fadd.166", i32* %"R5_NOTYPE"
  ; FFMA R60, R44, R60, R35
  %".3421" = load i32, i32* %"R44_NOTYPE"
  %".3422" = load i32, i32* %"R60_NOTYPE"
  %".3423" = load i32, i32* %"R35_NOTYPE"
  %"fmul.192" = fmul i32 %".3421", %".3422"
  %"fadd.167" = fadd i32 %"fmul.192", %".3423"
  store i32 %"fadd.167", i32* %"R60_NOTYPE"
  ; FFMA R5, R58, R55, R5
  %".3426" = load i32, i32* %"R58_NOTYPE"
  %".3427" = load i32, i32* %"R55_NOTYPE"
  %".3428" = load i32, i32* %"R5_NOTYPE"
  %"fmul.193" = fmul i32 %".3426", %".3427"
  %"fadd.168" = fadd i32 %"fmul.193", %".3428"
  store i32 %"fadd.168", i32* %"R5_NOTYPE"
  ; FFMA R5, R54, R53, R5
  %".3431" = load i32, i32* %"R54_NOTYPE"
  %".3432" = load i32, i32* %"R53_NOTYPE"
  %".3433" = load i32, i32* %"R5_NOTYPE"
  %"fmul.194" = fmul i32 %".3431", %".3432"
  %"fadd.169" = fadd i32 %"fmul.194", %".3433"
  store i32 %"fadd.169", i32* %"R5_NOTYPE"
  ; FFMA R37, R55, R37, R60
  %".3436" = load i32, i32* %"R55_NOTYPE"
  %".3437" = load i32, i32* %"R37_NOTYPE"
  %".3438" = load i32, i32* %"R60_NOTYPE"
  %"fmul.195" = fmul i32 %".3436", %".3437"
  %"fadd.170" = fadd i32 %"fmul.195", %".3438"
  store i32 %"fadd.170", i32* %"R37_NOTYPE"
  ; FFMA R37, R53, R42, R37
  %".3441" = load i32, i32* %"R53_NOTYPE"
  %".3442" = load i32, i32* %"R42_NOTYPE"
  %".3443" = load i32, i32* %"R37_NOTYPE"
  %"fmul.196" = fmul i32 %".3441", %".3442"
  %"fadd.171" = fadd i32 %"fmul.196", %".3443"
  store i32 %"fadd.171", i32* %"R37_NOTYPE"
  ; FFMA R5, R7, R52, R5
  %".3446" = load i32, i32* %"R7_NOTYPE"
  %".3447" = load i32, i32* %"R52_NOTYPE"
  %".3448" = load i32, i32* %"R5_NOTYPE"
  %"fmul.197" = fmul i32 %".3446", %".3447"
  %"fadd.172" = fadd i32 %"fmul.197", %".3448"
  store i32 %"fadd.172", i32* %"R5_NOTYPE"
  ; FFMA R9, R52, R9, R37
  %".3451" = load i32, i32* %"R52_NOTYPE"
  %".3452" = load i32, i32* %"R9_NOTYPE"
  %".3453" = load i32, i32* %"R37_NOTYPE"
  %"fmul.198" = fmul i32 %".3451", %".3452"
  %"fadd.173" = fadd i32 %"fmul.198", %".3453"
  store i32 %"fadd.173", i32* %"R9_NOTYPE"
  ; FFMA R44, R13, R56, R5
  %".3456" = load i32, i32* %"R13_NOTYPE"
  %".3457" = load i32, i32* %"R56_NOTYPE"
  %".3458" = load i32, i32* %"R5_NOTYPE"
  %"fmul.199" = fmul i32 %".3456", %".3457"
  %"fadd.174" = fadd i32 %"fmul.199", %".3458"
  store i32 %"fadd.174", i32* %"R44_NOTYPE"
  ; FFMA R56, R56, R8, R9
  %".3461" = load i32, i32* %"R56_NOTYPE"
  %".3462" = load i32, i32* %"R8_NOTYPE"
  %".3463" = load i32, i32* %"R9_NOTYPE"
  %"fmul.200" = fmul i32 %".3461", %".3462"
  %"fadd.175" = fadd i32 %"fmul.200", %".3463"
  store i32 %"fadd.175", i32* %"R56_NOTYPE"
  ; @P1 BRA `(.L_x_30)
  %".3466" = load i1, i1* %"P1_Bool"
  %".3467" = icmp ne i1 %".3466", 1
  br i1 %".3467", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".3470" = load i32, i32* %"R22_NOTYPE"
  %".3471" = load i1, i1* %"PT_Bool"
  %"cmp.40" = icmp sgt i32 %".3470", 4
  %".3472" = and i1 %"cmp.40", %".3471"
  store i1 %".3472", i1* %"P1_Bool"
  ; @!P1 BRA `(.L_x_31)
  %".3475" = load i1, i1* %"P1_Bool"
  %".3476" = icmp eq i1 %".3475", 1
  br i1 %".3476", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".3479" = load i32, i32* %"R0_NOTYPE"
  %".3480" = load i32, i32* %"R23_NOTYPE"
  %"add.218" = add i32 %".3479", %".3480"
  %"add.219" = add i32 %"add.218", 0
  store i32 %"add.219", i32* %"R5_NOTYPE"
  ; MOV R25, 0x4
  store i32 4, i32* %"R25_NOTYPE"
  ; LEA R13, R2.reuse, R5, 0x2
  %".3485" = load i32, i32* %"R2_NOTYPE"
  %".3486" = load i32, i32* %"R5_NOTYPE"
  %"shl.19" = shl i32 %".3485", 2
  %"add.220" = add i32 %"shl.19", %".3486"
  store i32 %"add.220", i32* %"R13_NOTYPE"
  ; IMAD R12, R2, 0x3, R5
  %".3489" = load i32, i32* %"R2_NOTYPE"
  %".3490" = load i32, i32* %"R5_NOTYPE"
  %"mul.75" = mul i32 %".3489", 3
  %"add.221" = add i32 %"mul.75", %".3490"
  store i32 %"add.221", i32* %"R12_NOTYPE"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".3493" = load i32, i32* %"R23_NOTYPE"
  %"add.222" = add i32 %".3493", 4
  %"add.223" = add i32 %"add.222", 0
  store i32 %"add.223", i32* %"R6_NOTYPE"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".3496" = load i32, i32* %"R23_NOTYPE"
  %".3497" = load i32, i32* %"R25_NOTYPE"
  %"mul.76" = mul i32 %".3496", %".3497"
  %"add.224" = add i32 %"mul.76", %"Arg_3"
  store i32 %"add.224", i32* %"R8_NOTYPE"
  ; IADD3 R24, R13, 0x4, RZ
  %".3500" = load i32, i32* %"R13_NOTYPE"
  %"add.225" = add i32 %".3500", 4
  %"add.226" = add i32 %"add.225", 0
  store i32 %"add.226", i32* %"R24_NOTYPE"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".3503" = load i32, i32* %"R12_NOTYPE"
  %".3504" = load i32, i32* %"R25_NOTYPE"
  %"mul.77" = mul i32 %".3503", %".3504"
  %"add.227" = add i32 %"mul.77", %"Arg_4"
  store i32 %"add.227", i32* %"R4_NOTYPE"
  ; IADD3 R12, R12, 0x4, RZ
  %".3507" = load i32, i32* %"R12_NOTYPE"
  %"add.228" = add i32 %".3507", 4
  %"add.229" = add i32 %"add.228", 0
  store i32 %"add.229", i32* %"R12_NOTYPE"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".3510" = load i32, i32* %"R13_NOTYPE"
  %".3511" = load i32, i32* %"R25_NOTYPE"
  %"mul.78" = mul i32 %".3510", %".3511"
  %"add.230" = add i32 %"mul.78", %"Arg_4"
  store i32 %"add.230", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R43, [R8]
  %".3514" = load i32, i32* %"R8_NOTYPE"
  %".3515" = add i32 %".3514", 0
  %"for_LDG.235" = inttoptr i32 %".3515" to i32*
  %".3516" = load i32, i32* %"for_LDG.235"
  store i32 %".3516", i32* %"R43_NOTYPE"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".3519" = load i32, i32* %"R6_NOTYPE"
  %".3520" = load i32, i32* %"R25_NOTYPE"
  %"mul.79" = mul i32 %".3519", %".3520"
  %"add.231" = add i32 %"mul.79", %"Arg_3"
  store i32 %"add.231", i32* %"R6_NOTYPE"
  ; LDG.E.SYS R52, [R4]
  %".3523" = load i32, i32* %"R4_NOTYPE"
  %".3524" = add i32 %".3523", 0
  %"for_LDG.236" = inttoptr i32 %".3524" to i32*
  %".3525" = load i32, i32* %"for_LDG.236"
  store i32 %".3525", i32* %"R52_NOTYPE"
  ; LDG.E.SYS R38, [R10]
  %".3528" = load i32, i32* %"R10_NOTYPE"
  %".3529" = add i32 %".3528", 0
  %"for_LDG.237" = inttoptr i32 %".3529" to i32*
  %".3530" = load i32, i32* %"for_LDG.237"
  store i32 %".3530", i32* %"R38_NOTYPE"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".3533" = load i32, i32* %"R12_NOTYPE"
  %".3534" = load i32, i32* %"R25_NOTYPE"
  %"mul.80" = mul i32 %".3533", %".3534"
  %"add.232" = add i32 %"mul.80", %"Arg_4"
  store i32 %"add.232", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R36, [R8+0x4]
  %".3537" = load i32, i32* %"R8_NOTYPE"
  %".3538" = add i32 %".3537", 4
  %"for_LDG.238" = inttoptr i32 %".3538" to i32*
  %".3539" = load i32, i32* %"for_LDG.238"
  store i32 %".3539", i32* %"R36_NOTYPE"
  ; LDG.E.SYS R41, [R4+0x4]
  %".3542" = load i32, i32* %"R4_NOTYPE"
  %".3543" = add i32 %".3542", 4
  %"for_LDG.239" = inttoptr i32 %".3543" to i32*
  %".3544" = load i32, i32* %"for_LDG.239"
  store i32 %".3544", i32* %"R41_NOTYPE"
  ; LDG.E.SYS R39, [R10+0x4]
  %".3547" = load i32, i32* %"R10_NOTYPE"
  %".3548" = add i32 %".3547", 4
  %"for_LDG.240" = inttoptr i32 %".3548" to i32*
  %".3549" = load i32, i32* %"for_LDG.240"
  store i32 %".3549", i32* %"R39_NOTYPE"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".3552" = load i32, i32* %"R24_NOTYPE"
  %".3553" = load i32, i32* %"R25_NOTYPE"
  %"mul.81" = mul i32 %".3552", %".3553"
  %"add.233" = add i32 %"mul.81", %"Arg_4"
  store i32 %"add.233", i32* %"R24_NOTYPE"
  ; LDG.E.SYS R34, [R8+0x8]
  %".3556" = load i32, i32* %"R8_NOTYPE"
  %".3557" = add i32 %".3556", 8
  %"for_LDG.241" = inttoptr i32 %".3557" to i32*
  %".3558" = load i32, i32* %"for_LDG.241"
  store i32 %".3558", i32* %"R34_NOTYPE"
  ; LDG.E.SYS R37, [R4+0x8]
  %".3561" = load i32, i32* %"R4_NOTYPE"
  %".3562" = add i32 %".3561", 8
  %"for_LDG.242" = inttoptr i32 %".3562" to i32*
  %".3563" = load i32, i32* %"for_LDG.242"
  store i32 %".3563", i32* %"R37_NOTYPE"
  ; LDG.E.SYS R35, [R10+0x8]
  %".3566" = load i32, i32* %"R10_NOTYPE"
  %".3567" = add i32 %".3566", 8
  %"for_LDG.243" = inttoptr i32 %".3567" to i32*
  %".3568" = load i32, i32* %"for_LDG.243"
  store i32 %".3568", i32* %"R35_NOTYPE"
  ; LDG.E.SYS R40, [R8+0xc]
  %".3571" = load i32, i32* %"R8_NOTYPE"
  %".3572" = add i32 %".3571", 12
  %"for_LDG.244" = inttoptr i32 %".3572" to i32*
  %".3573" = load i32, i32* %"for_LDG.244"
  store i32 %".3573", i32* %"R40_NOTYPE"
  ; LDG.E.SYS R45, [R4+0xc]
  %".3576" = load i32, i32* %"R4_NOTYPE"
  %".3577" = add i32 %".3576", 12
  %"for_LDG.245" = inttoptr i32 %".3577" to i32*
  %".3578" = load i32, i32* %"for_LDG.245"
  store i32 %".3578", i32* %"R45_NOTYPE"
  ; LDG.E.SYS R59, [R10+0xc]
  %".3581" = load i32, i32* %"R10_NOTYPE"
  %".3582" = add i32 %".3581", 12
  %"for_LDG.246" = inttoptr i32 %".3582" to i32*
  %".3583" = load i32, i32* %"for_LDG.246"
  store i32 %".3583", i32* %"R59_NOTYPE"
  ; LDG.E.SYS R50, [R6]
  %".3586" = load i32, i32* %"R6_NOTYPE"
  %".3587" = add i32 %".3586", 0
  %"for_LDG.247" = inttoptr i32 %".3587" to i32*
  %".3588" = load i32, i32* %"for_LDG.247"
  store i32 %".3588", i32* %"R50_NOTYPE"
  ; LDG.E.SYS R57, [R12]
  %".3591" = load i32, i32* %"R12_NOTYPE"
  %".3592" = add i32 %".3591", 0
  %"for_LDG.248" = inttoptr i32 %".3592" to i32*
  %".3593" = load i32, i32* %"for_LDG.248"
  store i32 %".3593", i32* %"R57_NOTYPE"
  ; LDG.E.SYS R55, [R24]
  %".3596" = load i32, i32* %"R24_NOTYPE"
  %".3597" = add i32 %".3596", 0
  %"for_LDG.249" = inttoptr i32 %".3597" to i32*
  %".3598" = load i32, i32* %"for_LDG.249"
  store i32 %".3598", i32* %"R55_NOTYPE"
  ; LDG.E.SYS R46, [R6+0x4]
  %".3601" = load i32, i32* %"R6_NOTYPE"
  %".3602" = add i32 %".3601", 4
  %"for_LDG.250" = inttoptr i32 %".3602" to i32*
  %".3603" = load i32, i32* %"for_LDG.250"
  store i32 %".3603", i32* %"R46_NOTYPE"
  ; LDG.E.SYS R53, [R12+0x4]
  %".3606" = load i32, i32* %"R12_NOTYPE"
  %".3607" = add i32 %".3606", 4
  %"for_LDG.251" = inttoptr i32 %".3607" to i32*
  %".3608" = load i32, i32* %"for_LDG.251"
  store i32 %".3608", i32* %"R53_NOTYPE"
  ; LDG.E.SYS R51, [R24+0x4]
  %".3611" = load i32, i32* %"R24_NOTYPE"
  %".3612" = add i32 %".3611", 4
  %"for_LDG.252" = inttoptr i32 %".3612" to i32*
  %".3613" = load i32, i32* %"for_LDG.252"
  store i32 %".3613", i32* %"R51_NOTYPE"
  ; LDG.E.SYS R42, [R6+0x8]
  %".3616" = load i32, i32* %"R6_NOTYPE"
  %".3617" = add i32 %".3616", 8
  %"for_LDG.253" = inttoptr i32 %".3617" to i32*
  %".3618" = load i32, i32* %"for_LDG.253"
  store i32 %".3618", i32* %"R42_NOTYPE"
  ; LDG.E.SYS R47, [R12+0x8]
  %".3621" = load i32, i32* %"R12_NOTYPE"
  %".3622" = add i32 %".3621", 8
  %"for_LDG.254" = inttoptr i32 %".3622" to i32*
  %".3623" = load i32, i32* %"for_LDG.254"
  store i32 %".3623", i32* %"R47_NOTYPE"
  ; LDG.E.SYS R9, [R24+0x8]
  %".3626" = load i32, i32* %"R24_NOTYPE"
  %".3627" = add i32 %".3626", 8
  %"for_LDG.255" = inttoptr i32 %".3627" to i32*
  %".3628" = load i32, i32* %"for_LDG.255"
  store i32 %".3628", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R4, [R6+0xc]
  %".3631" = load i32, i32* %"R6_NOTYPE"
  %".3632" = add i32 %".3631", 12
  %"for_LDG.256" = inttoptr i32 %".3632" to i32*
  %".3633" = load i32, i32* %"for_LDG.256"
  store i32 %".3633", i32* %"R4_NOTYPE"
  ; LDG.E.SYS R5, [R12+0xc]
  %".3636" = load i32, i32* %"R12_NOTYPE"
  %".3637" = add i32 %".3636", 12
  %"for_LDG.257" = inttoptr i32 %".3637" to i32*
  %".3638" = load i32, i32* %"for_LDG.257"
  store i32 %".3638", i32* %"R5_NOTYPE"
  ; LDG.E.SYS R11, [R24+0xc]
  %".3641" = load i32, i32* %"R24_NOTYPE"
  %".3642" = add i32 %".3641", 12
  %"for_LDG.258" = inttoptr i32 %".3642" to i32*
  %".3643" = load i32, i32* %"for_LDG.258"
  store i32 %".3643", i32* %"R11_NOTYPE"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3646" = xor i1 1, 1
  %".3647" = and i1 %".3646", 1
  %".3648" = and i1 %".3647", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".3650" = load i32, i32* %"R22_NOTYPE"
  %"add.234" = add i32 %".3650", -8
  %"add.235" = add i32 %"add.234", 0
  store i32 %"add.235", i32* %"R22_NOTYPE"
  ; IADD3 R23, R23, 0x8, RZ
  %".3653" = load i32, i32* %"R23_NOTYPE"
  %"add.236" = add i32 %".3653", 8
  %"add.237" = add i32 %"add.236", 0
  store i32 %"add.237", i32* %"R23_NOTYPE"
  ; FFMA R52, R52, R43, R44
  %".3656" = load i32, i32* %"R52_NOTYPE"
  %".3657" = load i32, i32* %"R43_NOTYPE"
  %".3658" = load i32, i32* %"R44_NOTYPE"
  %"fmul.201" = fmul i32 %".3656", %".3657"
  %"fadd.176" = fadd i32 %"fmul.201", %".3658"
  store i32 %"fadd.176", i32* %"R52_NOTYPE"
  ; FFMA R38, R43, R38, R56
  %".3661" = load i32, i32* %"R43_NOTYPE"
  %".3662" = load i32, i32* %"R38_NOTYPE"
  %".3663" = load i32, i32* %"R56_NOTYPE"
  %"fmul.202" = fmul i32 %".3661", %".3662"
  %"fadd.177" = fadd i32 %"fmul.202", %".3663"
  store i32 %"fadd.177", i32* %"R38_NOTYPE"
  ; FFMA R41, R41, R36, R52
  %".3666" = load i32, i32* %"R41_NOTYPE"
  %".3667" = load i32, i32* %"R36_NOTYPE"
  %".3668" = load i32, i32* %"R52_NOTYPE"
  %"fmul.203" = fmul i32 %".3666", %".3667"
  %"fadd.178" = fadd i32 %"fmul.203", %".3668"
  store i32 %"fadd.178", i32* %"R41_NOTYPE"
  ; FFMA R38, R36, R39, R38
  %".3671" = load i32, i32* %"R36_NOTYPE"
  %".3672" = load i32, i32* %"R39_NOTYPE"
  %".3673" = load i32, i32* %"R38_NOTYPE"
  %"fmul.204" = fmul i32 %".3671", %".3672"
  %"fadd.179" = fadd i32 %"fmul.204", %".3673"
  store i32 %"fadd.179", i32* %"R38_NOTYPE"
  ; FFMA R37, R37, R34, R41
  %".3676" = load i32, i32* %"R37_NOTYPE"
  %".3677" = load i32, i32* %"R34_NOTYPE"
  %".3678" = load i32, i32* %"R41_NOTYPE"
  %"fmul.205" = fmul i32 %".3676", %".3677"
  %"fadd.180" = fadd i32 %"fmul.205", %".3678"
  store i32 %"fadd.180", i32* %"R37_NOTYPE"
  ; FFMA R35, R34, R35, R38
  %".3681" = load i32, i32* %"R34_NOTYPE"
  %".3682" = load i32, i32* %"R35_NOTYPE"
  %".3683" = load i32, i32* %"R38_NOTYPE"
  %"fmul.206" = fmul i32 %".3681", %".3682"
  %"fadd.181" = fadd i32 %"fmul.206", %".3683"
  store i32 %"fadd.181", i32* %"R35_NOTYPE"
  ; FFMA R37, R45, R40, R37
  %".3686" = load i32, i32* %"R45_NOTYPE"
  %".3687" = load i32, i32* %"R40_NOTYPE"
  %".3688" = load i32, i32* %"R37_NOTYPE"
  %"fmul.207" = fmul i32 %".3686", %".3687"
  %"fadd.182" = fadd i32 %"fmul.207", %".3688"
  store i32 %"fadd.182", i32* %"R37_NOTYPE"
  ; FFMA R35, R40, R59, R35
  %".3691" = load i32, i32* %"R40_NOTYPE"
  %".3692" = load i32, i32* %"R59_NOTYPE"
  %".3693" = load i32, i32* %"R35_NOTYPE"
  %"fmul.208" = fmul i32 %".3691", %".3692"
  %"fadd.183" = fadd i32 %"fmul.208", %".3693"
  store i32 %"fadd.183", i32* %"R35_NOTYPE"
  ; FFMA R37, R57, R50, R37
  %".3696" = load i32, i32* %"R57_NOTYPE"
  %".3697" = load i32, i32* %"R50_NOTYPE"
  %".3698" = load i32, i32* %"R37_NOTYPE"
  %"fmul.209" = fmul i32 %".3696", %".3697"
  %"fadd.184" = fadd i32 %"fmul.209", %".3698"
  store i32 %"fadd.184", i32* %"R37_NOTYPE"
  ; FFMA R35, R50, R55, R35
  %".3701" = load i32, i32* %"R50_NOTYPE"
  %".3702" = load i32, i32* %"R55_NOTYPE"
  %".3703" = load i32, i32* %"R35_NOTYPE"
  %"fmul.210" = fmul i32 %".3701", %".3702"
  %"fadd.185" = fadd i32 %"fmul.210", %".3703"
  store i32 %"fadd.185", i32* %"R35_NOTYPE"
  ; FFMA R37, R53, R46, R37
  %".3706" = load i32, i32* %"R53_NOTYPE"
  %".3707" = load i32, i32* %"R46_NOTYPE"
  %".3708" = load i32, i32* %"R37_NOTYPE"
  %"fmul.211" = fmul i32 %".3706", %".3707"
  %"fadd.186" = fadd i32 %"fmul.211", %".3708"
  store i32 %"fadd.186", i32* %"R37_NOTYPE"
  ; FFMA R35, R46, R51, R35
  %".3711" = load i32, i32* %"R46_NOTYPE"
  %".3712" = load i32, i32* %"R51_NOTYPE"
  %".3713" = load i32, i32* %"R35_NOTYPE"
  %"fmul.212" = fmul i32 %".3711", %".3712"
  %"fadd.187" = fadd i32 %"fmul.212", %".3713"
  store i32 %"fadd.187", i32* %"R35_NOTYPE"
  ; FFMA R37, R47, R42, R37
  %".3716" = load i32, i32* %"R47_NOTYPE"
  %".3717" = load i32, i32* %"R42_NOTYPE"
  %".3718" = load i32, i32* %"R37_NOTYPE"
  %"fmul.213" = fmul i32 %".3716", %".3717"
  %"fadd.188" = fadd i32 %"fmul.213", %".3718"
  store i32 %"fadd.188", i32* %"R37_NOTYPE"
  ; FFMA R9, R42, R9, R35
  %".3721" = load i32, i32* %"R42_NOTYPE"
  %".3722" = load i32, i32* %"R9_NOTYPE"
  %".3723" = load i32, i32* %"R35_NOTYPE"
  %"fmul.214" = fmul i32 %".3721", %".3722"
  %"fadd.189" = fadd i32 %"fmul.214", %".3723"
  store i32 %"fadd.189", i32* %"R9_NOTYPE"
  ; FFMA R44, R5, R4, R37
  %".3726" = load i32, i32* %"R5_NOTYPE"
  %".3727" = load i32, i32* %"R4_NOTYPE"
  %".3728" = load i32, i32* %"R37_NOTYPE"
  %"fmul.215" = fmul i32 %".3726", %".3727"
  %"fadd.190" = fadd i32 %"fmul.215", %".3728"
  store i32 %"fadd.190", i32* %"R44_NOTYPE"
  ; FFMA R56, R4, R11, R9
  %".3731" = load i32, i32* %"R4_NOTYPE"
  %".3732" = load i32, i32* %"R11_NOTYPE"
  %".3733" = load i32, i32* %"R9_NOTYPE"
  %"fmul.216" = fmul i32 %".3731", %".3732"
  %"fadd.191" = fadd i32 %"fmul.216", %".3733"
  store i32 %"fadd.191", i32* %"R56_NOTYPE"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".3736" = load i32, i32* %"R22_NOTYPE"
  %".3737" = load i1, i1* %"PT_Bool"
  %"cmp.41" = icmp ne i32 %".3736", 0
  %".3738" = or i1 %"cmp.41", %".3737"
  store i1 %".3738", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_27)
  %".3741" = load i1, i1* %"P0_Bool"
  %".3742" = icmp eq i1 %".3741", 1
  br i1 %".3742", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".3745" = load i32, i32* %"R0_NOTYPE"
  %".3746" = load i32, i32* %"R23_NOTYPE"
  %"add.238" = add i32 %".3745", %".3746"
  %"add.239" = add i32 %"add.238", 0
  store i32 %"add.239", i32* %"R5_NOTYPE"
  ; MOV R6, 0x4
  store i32 4, i32* %"R6_NOTYPE"
  ; LEA R11, R2.reuse, R5, 0x2
  %".3751" = load i32, i32* %"R2_NOTYPE"
  %".3752" = load i32, i32* %"R5_NOTYPE"
  %"shl.20" = shl i32 %".3751", 2
  %"add.240" = add i32 %"shl.20", %".3752"
  store i32 %"add.240", i32* %"R11_NOTYPE"
  ; IMAD R7, R2, 0x3, R5
  %".3755" = load i32, i32* %"R2_NOTYPE"
  %".3756" = load i32, i32* %"R5_NOTYPE"
  %"mul.82" = mul i32 %".3755", 3
  %"add.241" = add i32 %"mul.82", %".3756"
  store i32 %"add.241", i32* %"R7_NOTYPE"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".3759" = load i32, i32* %"R23_NOTYPE"
  %".3760" = load i32, i32* %"R6_NOTYPE"
  %"mul.83" = mul i32 %".3759", %".3760"
  %"add.242" = add i32 %"mul.83", %"Arg_3"
  store i32 %"add.242", i32* %"R8_NOTYPE"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".3763" = load i32, i32* %"R7_NOTYPE"
  %".3764" = load i32, i32* %"R6_NOTYPE"
  %"mul.84" = mul i32 %".3763", %".3764"
  %"add.243" = add i32 %"mul.84", %"Arg_4"
  store i32 %"add.243", i32* %"R4_NOTYPE"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".3767" = load i32, i32* %"R11_NOTYPE"
  %".3768" = load i32, i32* %"R6_NOTYPE"
  %"mul.85" = mul i32 %".3767", %".3768"
  %"add.244" = add i32 %"mul.85", %"Arg_4"
  store i32 %"add.244", i32* %"R6_NOTYPE"
  ; LDG.E.SYS R13, [R8]
  %".3771" = load i32, i32* %"R8_NOTYPE"
  %".3772" = add i32 %".3771", 0
  %"for_LDG.259" = inttoptr i32 %".3772" to i32*
  %".3773" = load i32, i32* %"for_LDG.259"
  store i32 %".3773", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R11, [R4]
  %".3776" = load i32, i32* %"R4_NOTYPE"
  %".3777" = add i32 %".3776", 0
  %"for_LDG.260" = inttoptr i32 %".3777" to i32*
  %".3778" = load i32, i32* %"for_LDG.260"
  store i32 %".3778", i32* %"R11_NOTYPE"
  ; LDG.E.SYS R10, [R6]
  %".3781" = load i32, i32* %"R6_NOTYPE"
  %".3782" = add i32 %".3781", 0
  %"for_LDG.261" = inttoptr i32 %".3782" to i32*
  %".3783" = load i32, i32* %"for_LDG.261"
  store i32 %".3783", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R25, [R8+0x4]
  %".3786" = load i32, i32* %"R8_NOTYPE"
  %".3787" = add i32 %".3786", 4
  %"for_LDG.262" = inttoptr i32 %".3787" to i32*
  %".3788" = load i32, i32* %"for_LDG.262"
  store i32 %".3788", i32* %"R25_NOTYPE"
  ; LDG.E.SYS R12, [R4+0x4]
  %".3791" = load i32, i32* %"R4_NOTYPE"
  %".3792" = add i32 %".3791", 4
  %"for_LDG.263" = inttoptr i32 %".3792" to i32*
  %".3793" = load i32, i32* %"for_LDG.263"
  store i32 %".3793", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R24, [R6+0x4]
  %".3796" = load i32, i32* %"R6_NOTYPE"
  %".3797" = add i32 %".3796", 4
  %"for_LDG.264" = inttoptr i32 %".3797" to i32*
  %".3798" = load i32, i32* %"for_LDG.264"
  store i32 %".3798", i32* %"R24_NOTYPE"
  ; LDG.E.SYS R35, [R8+0x8]
  %".3801" = load i32, i32* %"R8_NOTYPE"
  %".3802" = add i32 %".3801", 8
  %"for_LDG.265" = inttoptr i32 %".3802" to i32*
  %".3803" = load i32, i32* %"for_LDG.265"
  store i32 %".3803", i32* %"R35_NOTYPE"
  ; LDG.E.SYS R34, [R4+0x8]
  %".3806" = load i32, i32* %"R4_NOTYPE"
  %".3807" = add i32 %".3806", 8
  %"for_LDG.266" = inttoptr i32 %".3807" to i32*
  %".3808" = load i32, i32* %"for_LDG.266"
  store i32 %".3808", i32* %"R34_NOTYPE"
  ; LDG.E.SYS R36, [R6+0x8]
  %".3811" = load i32, i32* %"R6_NOTYPE"
  %".3812" = add i32 %".3811", 8
  %"for_LDG.267" = inttoptr i32 %".3812" to i32*
  %".3813" = load i32, i32* %"for_LDG.267"
  store i32 %".3813", i32* %"R36_NOTYPE"
  ; LDG.E.SYS R37, [R8+0xc]
  %".3816" = load i32, i32* %"R8_NOTYPE"
  %".3817" = add i32 %".3816", 12
  %"for_LDG.268" = inttoptr i32 %".3817" to i32*
  %".3818" = load i32, i32* %"for_LDG.268"
  store i32 %".3818", i32* %"R37_NOTYPE"
  ; LDG.E.SYS R38, [R4+0xc]
  %".3821" = load i32, i32* %"R4_NOTYPE"
  %".3822" = add i32 %".3821", 12
  %"for_LDG.269" = inttoptr i32 %".3822" to i32*
  %".3823" = load i32, i32* %"for_LDG.269"
  store i32 %".3823", i32* %"R38_NOTYPE"
  ; LDG.E.SYS R39, [R6+0xc]
  %".3826" = load i32, i32* %"R6_NOTYPE"
  %".3827" = add i32 %".3826", 12
  %"for_LDG.270" = inttoptr i32 %".3827" to i32*
  %".3828" = load i32, i32* %"for_LDG.270"
  store i32 %".3828", i32* %"R39_NOTYPE"
  ; IADD3 R22, R22, -0x4, RZ
  %".3831" = load i32, i32* %"R22_NOTYPE"
  %"add.245" = add i32 %".3831", -4
  %"add.246" = add i32 %"add.245", 0
  store i32 %"add.246", i32* %"R22_NOTYPE"
  ; IADD3 R23, R23, 0x4, RZ
  %".3834" = load i32, i32* %"R23_NOTYPE"
  %"add.247" = add i32 %".3834", 4
  %"add.248" = add i32 %"add.247", 0
  store i32 %"add.248", i32* %"R23_NOTYPE"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".3837" = load i32, i32* %"R22_NOTYPE"
  %".3838" = load i1, i1* %"PT_Bool"
  %"cmp.42" = icmp ne i32 %".3837", 0
  %".3839" = and i1 %"cmp.42", %".3838"
  store i1 %".3839", i1* %"P0_Bool"
  ; FFMA R11, R11, R13, R44
  %".3842" = load i32, i32* %"R11_NOTYPE"
  %".3843" = load i32, i32* %"R13_NOTYPE"
  %".3844" = load i32, i32* %"R44_NOTYPE"
  %"fmul.217" = fmul i32 %".3842", %".3843"
  %"fadd.192" = fadd i32 %"fmul.217", %".3844"
  store i32 %"fadd.192", i32* %"R11_NOTYPE"
  ; FFMA R10, R13, R10, R56
  %".3847" = load i32, i32* %"R13_NOTYPE"
  %".3848" = load i32, i32* %"R10_NOTYPE"
  %".3849" = load i32, i32* %"R56_NOTYPE"
  %"fmul.218" = fmul i32 %".3847", %".3848"
  %"fadd.193" = fadd i32 %"fmul.218", %".3849"
  store i32 %"fadd.193", i32* %"R10_NOTYPE"
  ; FFMA R11, R12, R25, R11
  %".3852" = load i32, i32* %"R12_NOTYPE"
  %".3853" = load i32, i32* %"R25_NOTYPE"
  %".3854" = load i32, i32* %"R11_NOTYPE"
  %"fmul.219" = fmul i32 %".3852", %".3853"
  %"fadd.194" = fadd i32 %"fmul.219", %".3854"
  store i32 %"fadd.194", i32* %"R11_NOTYPE"
  ; FFMA R10, R25, R24, R10
  %".3857" = load i32, i32* %"R25_NOTYPE"
  %".3858" = load i32, i32* %"R24_NOTYPE"
  %".3859" = load i32, i32* %"R10_NOTYPE"
  %"fmul.220" = fmul i32 %".3857", %".3858"
  %"fadd.195" = fadd i32 %"fmul.220", %".3859"
  store i32 %"fadd.195", i32* %"R10_NOTYPE"
  ; FFMA R11, R34, R35, R11
  %".3862" = load i32, i32* %"R34_NOTYPE"
  %".3863" = load i32, i32* %"R35_NOTYPE"
  %".3864" = load i32, i32* %"R11_NOTYPE"
  %"fmul.221" = fmul i32 %".3862", %".3863"
  %"fadd.196" = fadd i32 %"fmul.221", %".3864"
  store i32 %"fadd.196", i32* %"R11_NOTYPE"
  ; FFMA R10, R35, R36, R10
  %".3867" = load i32, i32* %"R35_NOTYPE"
  %".3868" = load i32, i32* %"R36_NOTYPE"
  %".3869" = load i32, i32* %"R10_NOTYPE"
  %"fmul.222" = fmul i32 %".3867", %".3868"
  %"fadd.197" = fadd i32 %"fmul.222", %".3869"
  store i32 %"fadd.197", i32* %"R10_NOTYPE"
  ; FFMA R44, R38, R37, R11
  %".3872" = load i32, i32* %"R38_NOTYPE"
  %".3873" = load i32, i32* %"R37_NOTYPE"
  %".3874" = load i32, i32* %"R11_NOTYPE"
  %"fmul.223" = fmul i32 %".3872", %".3873"
  %"fadd.198" = fadd i32 %"fmul.223", %".3874"
  store i32 %"fadd.198", i32* %"R44_NOTYPE"
  ; FFMA R56, R37, R39, R10
  %".3877" = load i32, i32* %"R37_NOTYPE"
  %".3878" = load i32, i32* %"R39_NOTYPE"
  %".3879" = load i32, i32* %"R10_NOTYPE"
  %"fmul.224" = fmul i32 %".3877", %".3878"
  %"fadd.199" = fadd i32 %"fmul.224", %".3879"
  store i32 %"fadd.199", i32* %"R56_NOTYPE"
  ; @P0 BRA `(.L_x_28)
  %".3882" = load i1, i1* %"P0_Bool"
  %".3883" = icmp ne i1 %".3882", 1
  br i1 %".3883", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".3886" = load i32, i32* %"R48_NOTYPE"
  %".3887" = load i1, i1* %"PT_Bool"
  %"cmp.43" = icmp ne i32 %".3886", 0
  %".3888" = and i1 %"cmp.43", %".3887"
  store i1 %".3888", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_26)
  %".3891" = load i1, i1* %"P0_Bool"
  %".3892" = icmp eq i1 %".3891", 1
  br i1 %".3892", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".3895" = load i32, i32* %"R0_NOTYPE"
  %".3896" = load i32, i32* %"R23_NOTYPE"
  %"add.249" = add i32 %".3895", %".3896"
  %"add.250" = add i32 %"add.249", 0
  store i32 %"add.250", i32* %"R5_NOTYPE"
  ; MOV R9, 0x4
  store i32 4, i32* %"R9_NOTYPE"
  ; LEA R8, R2.reuse, R5, 0x2
  %".3901" = load i32, i32* %"R2_NOTYPE"
  %".3902" = load i32, i32* %"R5_NOTYPE"
  %"shl.21" = shl i32 %".3901", 2
  %"add.251" = add i32 %"shl.21", %".3902"
  store i32 %"add.251", i32* %"R8_NOTYPE"
  ; IMAD R6, R2, 0x3, R5
  %".3905" = load i32, i32* %"R2_NOTYPE"
  %".3906" = load i32, i32* %"R5_NOTYPE"
  %"mul.86" = mul i32 %".3905", 3
  %"add.252" = add i32 %"mul.86", %".3906"
  store i32 %"add.252", i32* %"R6_NOTYPE"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".3909" = load i32, i32* %"R23_NOTYPE"
  %".3910" = load i32, i32* %"R9_NOTYPE"
  %"mul.87" = mul i32 %".3909", %".3910"
  %"add.253" = add i32 %"mul.87", %"Arg_3"
  store i32 %"add.253", i32* %"R4_NOTYPE"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".3913" = load i32, i32* %"R6_NOTYPE"
  %".3914" = load i32, i32* %"R9_NOTYPE"
  %"mul.88" = mul i32 %".3913", %".3914"
  %"add.254" = add i32 %"mul.88", %"Arg_4"
  store i32 %"add.254", i32* %"R6_NOTYPE"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".3917" = load i32, i32* %"R8_NOTYPE"
  %".3918" = load i32, i32* %"R9_NOTYPE"
  %"mul.89" = mul i32 %".3917", %".3918"
  %"add.255" = add i32 %"mul.89", %"Arg_4"
  store i32 %"add.255", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R13, [R4]
  %".3921" = load i32, i32* %"R4_NOTYPE"
  %".3922" = add i32 %".3921", 0
  %"for_LDG.271" = inttoptr i32 %".3922" to i32*
  %".3923" = load i32, i32* %"for_LDG.271"
  store i32 %".3923", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R11, [R6]
  %".3926" = load i32, i32* %"R6_NOTYPE"
  %".3927" = add i32 %".3926", 0
  %"for_LDG.272" = inttoptr i32 %".3927" to i32*
  %".3928" = load i32, i32* %"for_LDG.272"
  store i32 %".3928", i32* %"R11_NOTYPE"
  ; LDG.E.SYS R10, [R8]
  %".3931" = load i32, i32* %"R8_NOTYPE"
  %".3932" = add i32 %".3931", 0
  %"for_LDG.273" = inttoptr i32 %".3932" to i32*
  %".3933" = load i32, i32* %"for_LDG.273"
  store i32 %".3933", i32* %"R10_NOTYPE"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".3936" = load i32, i32* %"R48_NOTYPE"
  %".3937" = load i1, i1* %"PT_Bool"
  %"cmp.44" = icmp ne i32 %".3936", 1
  %".3938" = and i1 %"cmp.44", %".3937"
  store i1 %".3938", i1* %"P0_Bool"
  ; FFMA R44, R11, R13, R44
  %".3941" = load i32, i32* %"R11_NOTYPE"
  %".3942" = load i32, i32* %"R13_NOTYPE"
  %".3943" = load i32, i32* %"R44_NOTYPE"
  %"fmul.225" = fmul i32 %".3941", %".3942"
  %"fadd.200" = fadd i32 %"fmul.225", %".3943"
  store i32 %"fadd.200", i32* %"R44_NOTYPE"
  ; FFMA R56, R13, R10, R56
  %".3946" = load i32, i32* %"R13_NOTYPE"
  %".3947" = load i32, i32* %"R10_NOTYPE"
  %".3948" = load i32, i32* %"R56_NOTYPE"
  %"fmul.226" = fmul i32 %".3946", %".3947"
  %"fadd.201" = fadd i32 %"fmul.226", %".3948"
  store i32 %"fadd.201", i32* %"R56_NOTYPE"
  ; @!P0 BRA `(.L_x_26)
  %".3951" = load i1, i1* %"P0_Bool"
  %".3952" = icmp eq i1 %".3951", 1
  br i1 %".3952", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".3955" = load i32, i32* %"R48_NOTYPE"
  %".3956" = load i1, i1* %"PT_Bool"
  %"cmp.45" = icmp ne i32 %".3955", 2
  %".3957" = and i1 %"cmp.45", %".3956"
  store i1 %".3957", i1* %"P0_Bool"
  ; LDG.E.SYS R11, [R6+0x4]
  %".3960" = load i32, i32* %"R6_NOTYPE"
  %".3961" = add i32 %".3960", 4
  %"for_LDG.274" = inttoptr i32 %".3961" to i32*
  %".3962" = load i32, i32* %"for_LDG.274"
  store i32 %".3962", i32* %"R11_NOTYPE"
  ; LDG.E.SYS R13, [R4+0x4]
  %".3965" = load i32, i32* %"R4_NOTYPE"
  %".3966" = add i32 %".3965", 4
  %"for_LDG.275" = inttoptr i32 %".3966" to i32*
  %".3967" = load i32, i32* %"for_LDG.275"
  store i32 %".3967", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R10, [R8+0x4]
  %".3970" = load i32, i32* %"R8_NOTYPE"
  %".3971" = add i32 %".3970", 4
  %"for_LDG.276" = inttoptr i32 %".3971" to i32*
  %".3972" = load i32, i32* %"for_LDG.276"
  store i32 %".3972", i32* %"R10_NOTYPE"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".3975" = load i1, i1* %"P0_Bool"
  %".3976" = icmp ne i1 %".3975", 1
  br i1 %".3976", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  %".3979" = load i32, i32* %"R6_NOTYPE"
  %".3980" = add i32 %".3979", 8
  %"for_LDG.277" = inttoptr i32 %".3980" to i32*
  %".3981" = load i32, i32* %"for_LDG.277"
  store i32 %".3981", i32* %"R23_NOTYPE"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".3986" = load i1, i1* %"P0_Bool"
  %".3987" = icmp ne i1 %".3986", 1
  br i1 %".3987", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  %".3990" = load i32, i32* %"R4_NOTYPE"
  %".3991" = add i32 %".3990", 8
  %"for_LDG.278" = inttoptr i32 %".3991" to i32*
  %".3992" = load i32, i32* %"for_LDG.278"
  store i32 %".3992", i32* %"R25_NOTYPE"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".3997" = load i1, i1* %"P0_Bool"
  %".3998" = icmp ne i1 %".3997", 1
  br i1 %".3998", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  %".4001" = load i32, i32* %"R8_NOTYPE"
  %".4002" = add i32 %".4001", 8
  %"for_LDG.279" = inttoptr i32 %".4002" to i32*
  %".4003" = load i32, i32* %"for_LDG.279"
  store i32 %".4003", i32* %"R12_NOTYPE"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".4008" = load i32, i32* %"R11_NOTYPE"
  %".4009" = load i32, i32* %"R13_NOTYPE"
  %".4010" = load i32, i32* %"R44_NOTYPE"
  %"fmul.227" = fmul i32 %".4008", %".4009"
  %"fadd.202" = fadd i32 %"fmul.227", %".4010"
  store i32 %"fadd.202", i32* %"R44_NOTYPE"
  ; FFMA R56, R13, R10, R56
  %".4013" = load i32, i32* %"R13_NOTYPE"
  %".4014" = load i32, i32* %"R10_NOTYPE"
  %".4015" = load i32, i32* %"R56_NOTYPE"
  %"fmul.228" = fmul i32 %".4013", %".4014"
  %"fadd.203" = fadd i32 %"fmul.228", %".4015"
  store i32 %"fadd.203", i32* %"R56_NOTYPE"
  ; @P0 FFMA R44, R23, R25, R44
  %".4018" = load i1, i1* %"P0_Bool"
  %".4019" = icmp ne i1 %".4018", 1
  br i1 %".4019", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".4022" = load i32, i32* %"R23_NOTYPE"
  %".4023" = load i32, i32* %"R25_NOTYPE"
  %".4024" = load i32, i32* %"R44_NOTYPE"
  %"fmul.229" = fmul i32 %".4022", %".4023"
  %"fadd.204" = fadd i32 %"fmul.229", %".4024"
  store i32 %"fadd.204", i32* %"R44_NOTYPE"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".4029" = load i1, i1* %"P0_Bool"
  %".4030" = icmp ne i1 %".4029", 1
  br i1 %".4030", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".4033" = load i32, i32* %"R25_NOTYPE"
  %".4034" = load i32, i32* %"R12_NOTYPE"
  %".4035" = load i32, i32* %"R56_NOTYPE"
  %"fmul.230" = fmul i32 %".4033", %".4034"
  %"fadd.205" = fadd i32 %"fmul.230", %".4035"
  store i32 %"fadd.205", i32* %"R56_NOTYPE"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  %".4040" = load i32, i32* %"R26_NOTYPE"
  %".4041" = add i32 %".4040", 0
  %"for_LDG.280" = inttoptr i32 %".4041" to i32*
  %".4042" = load i32, i32* %"for_LDG.280"
  store i32 %".4042", i32* %"R5_NOTYPE"
  ; MOV R4, 0x3bbb989d
  store i32 1002150045, i32* %"R4_NOTYPE"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  store i32 1132199936, i32* %"R7_NOTYPE"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".4051" = load i32, i32* %"R5_NOTYPE"
  %".4052" = load i32, i32* %"R44_NOTYPE"
  %"fadd.206" = fadd i32 %".4051", %".4052"
  store i32 %"fadd.206", i32* %"R5_NOTYPE"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".4055" = load i32, i32* %"R5_NOTYPE"
  %".4056" = sub i32 0, %".4055"
  %".4057" = load i32, i32* %"R4_NOTYPE"
  %"fmul.231" = fmul i32 %".4056", %".4057"
  %"fadd.207" = fadd i32 %"fmul.231", 0.5
  store i32 %"fadd.207", i32* %"R4_NOTYPE"
  ; FFMA.RM R4, R4, R7, 12582913
  %".4060" = load i32, i32* %"R4_NOTYPE"
  %".4061" = load i32, i32* %"R7_NOTYPE"
  %"fmul.232" = fmul i32 %".4060", %".4061"
  %"fadd.208" = fadd i32 %"fmul.232", 12582913
  store i32 %"fadd.208", i32* %"R4_NOTYPE"
  ; FADD R6, R4.reuse, -12583039
  %".4064" = load i32, i32* %"R4_NOTYPE"
  %"fadd.209" = fadd i32 %".4064", -12583039
  store i32 %"fadd.209", i32* %"R6_NOTYPE"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".4067" = icmp ult i32 23, 32
  %"SHF_min.4" = select  i1 %".4067", i32 23, i32 32
  %".4068" = load i32, i32* %"R4_NOTYPE"
  %"zext.12" = zext i32 0 to i64
  %"zext.13" = zext i32 %".4068" to i64
  %"zext.14" = zext i32 23 to i64
  %"shl.22" = shl i64 %"zext.12", 32
  %"or.4" = or i64 %"shl.22", %"zext.13"
  %"shl.23" = shl i64 %"or.4", %"zext.14"
  %"and.2" = and i64 %"shl.23", 4294967295
  %"trunc32.4" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.4", i32* %"R4_NOTYPE"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".4071" = load i32, i32* %"R5_NOTYPE"
  %".4072" = sub i32 0, %".4071"
  %".4073" = load i32, i32* %"R6_NOTYPE"
  %".4074" = sub i32 0, %".4073"
  %"fmul.233" = fmul i32 %".4072", 1.4426950216293335
  %"fadd.210" = fadd i32 %"fmul.233", %".4074"
  store i32 %"fadd.210", i32* %"R6_NOTYPE"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".4077" = load i32, i32* %"R5_NOTYPE"
  %".4078" = sub i32 0, %".4077"
  %".4079" = load i32, i32* %"R6_NOTYPE"
  %"fmul.234" = fmul i32 %".4078", 1.925963033500011e-08
  %"fadd.211" = fadd i32 %"fmul.234", %".4079"
  store i32 %"fadd.211", i32* %"R6_NOTYPE"
  ; MUFU.EX2 R5, R6
  %".4082" = load i32, i32* %"R6_NOTYPE"
  %"sint_to_f32.3" = sitofp i32 %".4082" to float
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %"sint_to_f32.3")
  %"fp_to_sint32.3" = fptosi float %"llvm_exp2_f32_result.3" to i32
  store i32 %"fp_to_sint32.3", i32* %"R5_NOTYPE"
  ; FFMA R24, R4, R5, 1
  %".4085" = load i32, i32* %"R4_NOTYPE"
  %".4086" = load i32, i32* %"R5_NOTYPE"
  %"fmul.235" = fmul i32 %".4085", %".4086"
  %"fadd.212" = fadd i32 %"fmul.235", 1
  store i32 %"fadd.212", i32* %"R24_NOTYPE"
  ; IADD3 R4, R24, 0x1800000, RZ
  %".4089" = load i32, i32* %"R24_NOTYPE"
  %"add.256" = add i32 %".4089", 25165824
  %"add.257" = add i32 %"add.256", 0
  store i32 %"add.257", i32* %"R4_NOTYPE"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".4092" = load i32, i32* %"R4_NOTYPE"
  %".4093" = and i32 %".4092", 2139095040
  store i32 %".4093", i32* %"R4_NOTYPE"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".4096" = load i32, i32* %"R4_NOTYPE"
  %".4097" = load i1, i1* %"PT_Bool"
  %"cmp.46" = icmp sgt i32 %".4096", 33554431
  %".4098" = and i1 %"cmp.46", %".4097"
  store i1 %".4098", i1* %"P0_Bool"
  ; @P0 BRA `(.L_x_33)
  %".4101" = load i1, i1* %"P0_Bool"
  %".4102" = icmp ne i1 %".4101", 1
  br i1 %".4102", label %".L_x_33", label %".L_x_26_split_0x3910"
.L_x_26_split_0x3910:
  ; MOV R10, 0x3930
  store i32 14640, i32* %"R10_NOTYPE"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.2" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; BRA `(.L_x_34)
  br label %".L_x_34"
.L_x_33:
  ; MUFU.RCP R22, R24
  %".4110" = load i32, i32* %"R24_NOTYPE"
  %".4111" = fdiv i32 1, %".4110"
  store i32 %".4111", i32* %"R22_NOTYPE"
  ; FFMA R4, R24, R22, -1
  %".4114" = load i32, i32* %"R24_NOTYPE"
  %".4115" = load i32, i32* %"R22_NOTYPE"
  %"fmul.236" = fmul i32 %".4114", %".4115"
  %"fadd.213" = fadd i32 %"fmul.236", -1
  store i32 %"fadd.213", i32* %"R4_NOTYPE"
  ; FADD.FTZ R5, -R4, -RZ
  %".4118" = load i32, i32* %"R4_NOTYPE"
  %".4119" = sub i32 0, %".4118"
  %"fadd.214" = fadd i32 %".4119", 0
  store i32 %"fadd.214", i32* %"R5_NOTYPE"
  ; FFMA R22, R22, R5, R22
  %".4122" = load i32, i32* %"R22_NOTYPE"
  %".4123" = load i32, i32* %"R5_NOTYPE"
  %".4124" = load i32, i32* %"R22_NOTYPE"
  %"fmul.237" = fmul i32 %".4122", %".4123"
  %"fadd.215" = fadd i32 %"fmul.237", %".4124"
  store i32 %"fadd.215", i32* %"R22_NOTYPE"
.L_x_34:
  ; BSYNC B0
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  %".4128" = load i32, i32* %"R32_NOTYPE"
  %".4129" = add i32 %".4128", 0
  %"for_LDG.281" = inttoptr i32 %".4129" to i32*
  %".4130" = load i32, i32* %"for_LDG.281"
  store i32 %".4130", i32* %"R5_NOTYPE"
  ; MOV R4, 0x3bbb989d
  store i32 1002150045, i32* %"R4_NOTYPE"
  ; MOV R7, 0x437c0000
  store i32 1132199936, i32* %"R7_NOTYPE"
  ; FADD R5, R5, R56
  %".4137" = load i32, i32* %"R5_NOTYPE"
  %".4138" = load i32, i32* %"R56_NOTYPE"
  %"fadd.216" = fadd i32 %".4137", %".4138"
  store i32 %"fadd.216", i32* %"R5_NOTYPE"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".4141" = load i32, i32* %"R5_NOTYPE"
  %".4142" = sub i32 0, %".4141"
  %".4143" = load i32, i32* %"R4_NOTYPE"
  %"fmul.238" = fmul i32 %".4142", %".4143"
  %"fadd.217" = fadd i32 %"fmul.238", 0.5
  store i32 %"fadd.217", i32* %"R4_NOTYPE"
  ; FFMA.RM R4, R4, R7, 12582913
  %".4146" = load i32, i32* %"R4_NOTYPE"
  %".4147" = load i32, i32* %"R7_NOTYPE"
  %"fmul.239" = fmul i32 %".4146", %".4147"
  %"fadd.218" = fadd i32 %"fmul.239", 12582913
  store i32 %"fadd.218", i32* %"R4_NOTYPE"
  ; FADD R6, R4.reuse, -12583039
  %".4150" = load i32, i32* %"R4_NOTYPE"
  %"fadd.219" = fadd i32 %".4150", -12583039
  store i32 %"fadd.219", i32* %"R6_NOTYPE"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".4153" = icmp ult i32 23, 32
  %"SHF_min.5" = select  i1 %".4153", i32 23, i32 32
  %".4154" = load i32, i32* %"R4_NOTYPE"
  %"zext.15" = zext i32 0 to i64
  %"zext.16" = zext i32 %".4154" to i64
  %"zext.17" = zext i32 23 to i64
  %"shl.24" = shl i64 %"zext.15", 32
  %"or.5" = or i64 %"shl.24", %"zext.16"
  %"shl.25" = shl i64 %"or.5", %"zext.17"
  %"and.3" = and i64 %"shl.25", 4294967295
  %"trunc32.5" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.5", i32* %"R23_NOTYPE"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".4157" = load i32, i32* %"R5_NOTYPE"
  %".4158" = sub i32 0, %".4157"
  %".4159" = load i32, i32* %"R6_NOTYPE"
  %".4160" = sub i32 0, %".4159"
  %"fmul.240" = fmul i32 %".4158", 1.4426950216293335
  %"fadd.220" = fadd i32 %"fmul.240", %".4160"
  store i32 %"fadd.220", i32* %"R6_NOTYPE"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".4163" = load i32, i32* %"R5_NOTYPE"
  %".4164" = sub i32 0, %".4163"
  %".4165" = load i32, i32* %"R6_NOTYPE"
  %"fmul.241" = fmul i32 %".4164", 1.925963033500011e-08
  %"fadd.221" = fadd i32 %"fmul.241", %".4165"
  store i32 %"fadd.221", i32* %"R6_NOTYPE"
  ; MUFU.EX2 R6, R6
  %".4168" = load i32, i32* %"R6_NOTYPE"
  %"sint_to_f32.4" = sitofp i32 %".4168" to float
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %"sint_to_f32.4")
  %"fp_to_sint32.4" = fptosi float %"llvm_exp2_f32_result.4" to i32
  store i32 %"fp_to_sint32.4", i32* %"R6_NOTYPE"
  ; FFMA R23, R23, R6, 1
  %".4171" = load i32, i32* %"R23_NOTYPE"
  %".4172" = load i32, i32* %"R6_NOTYPE"
  %"fmul.242" = fmul i32 %".4171", %".4172"
  %"fadd.222" = fadd i32 %"fmul.242", 1
  store i32 %"fadd.222", i32* %"R23_NOTYPE"
  ; @!P4 BRA `(.L_x_35)
  %".4175" = load i1, i1* %"P4_Bool"
  %".4176" = icmp eq i1 %".4175", 1
  br i1 %".4176", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".4179" = load i32, i32* %"R18_NOTYPE"
  %".4180" = load i1, i1* %"PT_Bool"
  %"cmp.47" = icmp sge i32 %".4179", 3
  %".4181" = and i1 %"cmp.47", %".4180"
  store i1 %".4181", i1* %"P0_Bool"
  ; MOV R34, RZ
  %".4184" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".4184", i32* %"R34_NOTYPE"
  ; @!P0 BRA `(.L_x_36)
  %".4187" = load i1, i1* %"P0_Bool"
  %".4188" = icmp eq i1 %".4187", 1
  br i1 %".4188", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".4191" = load i32, i32* %"R20_NOTYPE"
  %".4192" = load i1, i1* %"PT_Bool"
  %"cmp.48" = icmp sgt i32 %".4191", 0
  %".4193" = and i1 %"cmp.48", %".4192"
  store i1 %".4193", i1* %"P0_Bool"
  ; MOV R34, RZ
  %".4196" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".4196", i32* %"R34_NOTYPE"
  ; MOV R35, R20
  %".4199" = load i32, i32* %"R20_NOTYPE"
  store i32 %".4199", i32* %"R35_NOTYPE"
  ; @!P0 BRA `(.L_x_37)
  %".4202" = load i1, i1* %"P0_Bool"
  %".4203" = icmp eq i1 %".4202", 1
  br i1 %".4203", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".4206" = load i32, i32* %"R35_NOTYPE"
  %".4207" = load i1, i1* %"PT_Bool"
  %"cmp.49" = icmp sgt i32 %".4206", 12
  %".4208" = and i1 %"cmp.49", %".4207"
  store i1 %".4208", i1* %"P1_Bool"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".4211" = and i1 1, 1
  %".4212" = or i1 %".4211", 1
  ; @!P1 BRA `(.L_x_38)
  %".4214" = load i1, i1* %"P1_Bool"
  %".4215" = icmp eq i1 %".4214", 1
  br i1 %".4215", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4218" = xor i1 1, 1
  %".4219" = and i1 %".4218", 1
  %".4220" = and i1 %".4219", 1
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, i32* %"R41_NOTYPE"
  ; IADD3 R10, R3, R34, RZ
  %".4224" = load i32, i32* %"R3_NOTYPE"
  %".4225" = load i32, i32* %"R34_NOTYPE"
  %"add.258" = add i32 %".4224", %".4225"
  %"add.259" = add i32 %"add.258", 0
  store i32 %"add.259", i32* %"R10_NOTYPE"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".4228" = load i32, i32* %"R34_NOTYPE"
  %".4229" = load i32, i32* %"R41_NOTYPE"
  %"mul.90" = mul i32 %".4228", %".4229"
  %"add.260" = add i32 %"mul.90", %"Arg_3"
  store i32 %"add.260", i32* %"R12_NOTYPE"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".4232" = load i32, i32* %"R10_NOTYPE"
  %".4233" = load i32, i32* %"R41_NOTYPE"
  %"mul.91" = mul i32 %".4232", %".4233"
  %"add.261" = add i32 %"mul.91", %"Arg_4"
  store i32 %"add.261", i32* %"R10_NOTYPE"
  ; IADD3 R4, R34, 0x4, RZ
  %".4236" = load i32, i32* %"R34_NOTYPE"
  %"add.262" = add i32 %".4236", 4
  %"add.263" = add i32 %"add.262", 0
  store i32 %"add.263", i32* %"R4_NOTYPE"
  ; LDG.E.SYS R25, [R12]
  %".4239" = load i32, i32* %"R12_NOTYPE"
  %".4240" = add i32 %".4239", 0
  %"for_LDG.282" = inttoptr i32 %".4240" to i32*
  %".4241" = load i32, i32* %"for_LDG.282"
  store i32 %".4241", i32* %"R25_NOTYPE"
  ; IADD3 R6, R3, R4, RZ
  %".4244" = load i32, i32* %"R3_NOTYPE"
  %".4245" = load i32, i32* %"R4_NOTYPE"
  %"add.264" = add i32 %".4244", %".4245"
  %"add.265" = add i32 %"add.264", 0
  store i32 %"add.265", i32* %"R6_NOTYPE"
  ; LDG.E.SYS R36, [R10]
  %".4248" = load i32, i32* %"R10_NOTYPE"
  %".4249" = add i32 %".4248", 0
  %"for_LDG.283" = inttoptr i32 %".4249" to i32*
  %".4250" = load i32, i32* %"for_LDG.283"
  store i32 %".4250", i32* %"R36_NOTYPE"
  ; LDG.E.SYS R37, [R12+0x4]
  %".4253" = load i32, i32* %"R12_NOTYPE"
  %".4254" = add i32 %".4253", 4
  %"for_LDG.284" = inttoptr i32 %".4254" to i32*
  %".4255" = load i32, i32* %"for_LDG.284"
  store i32 %".4255", i32* %"R37_NOTYPE"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".4258" = load i32, i32* %"R4_NOTYPE"
  %".4259" = load i32, i32* %"R41_NOTYPE"
  %"mul.92" = mul i32 %".4258", %".4259"
  %"add.266" = add i32 %"mul.92", %"Arg_3"
  store i32 %"add.266", i32* %"R4_NOTYPE"
  ; LDG.E.SYS R24, [R10+0x4]
  %".4262" = load i32, i32* %"R10_NOTYPE"
  %".4263" = add i32 %".4262", 4
  %"for_LDG.285" = inttoptr i32 %".4263" to i32*
  %".4264" = load i32, i32* %"for_LDG.285"
  store i32 %".4264", i32* %"R24_NOTYPE"
  ; LDG.E.SYS R39, [R12+0x8]
  %".4267" = load i32, i32* %"R12_NOTYPE"
  %".4268" = add i32 %".4267", 8
  %"for_LDG.286" = inttoptr i32 %".4268" to i32*
  %".4269" = load i32, i32* %"for_LDG.286"
  store i32 %".4269", i32* %"R39_NOTYPE"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".4272" = load i32, i32* %"R6_NOTYPE"
  %".4273" = load i32, i32* %"R41_NOTYPE"
  %"mul.93" = mul i32 %".4272", %".4273"
  %"add.267" = add i32 %"mul.93", %"Arg_4"
  store i32 %"add.267", i32* %"R6_NOTYPE"
  ; LDG.E.SYS R38, [R10+0x8]
  %".4276" = load i32, i32* %"R10_NOTYPE"
  %".4277" = add i32 %".4276", 8
  %"for_LDG.287" = inttoptr i32 %".4277" to i32*
  %".4278" = load i32, i32* %"for_LDG.287"
  store i32 %".4278", i32* %"R38_NOTYPE"
  ; LDG.E.SYS R43, [R12+0xc]
  %".4281" = load i32, i32* %"R12_NOTYPE"
  %".4282" = add i32 %".4281", 12
  %"for_LDG.288" = inttoptr i32 %".4282" to i32*
  %".4283" = load i32, i32* %"for_LDG.288"
  store i32 %".4283", i32* %"R43_NOTYPE"
  ; IADD3 R8, R34, 0x8, RZ
  %".4286" = load i32, i32* %"R34_NOTYPE"
  %"add.268" = add i32 %".4286", 8
  %"add.269" = add i32 %"add.268", 0
  store i32 %"add.269", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R46, [R10+0xc]
  %".4289" = load i32, i32* %"R10_NOTYPE"
  %".4290" = add i32 %".4289", 12
  %"for_LDG.289" = inttoptr i32 %".4290" to i32*
  %".4291" = load i32, i32* %"for_LDG.289"
  store i32 %".4291", i32* %"R46_NOTYPE"
  ; LDG.E.SYS R51, [R4]
  %".4294" = load i32, i32* %"R4_NOTYPE"
  %".4295" = add i32 %".4294", 0
  %"for_LDG.290" = inttoptr i32 %".4295" to i32*
  %".4296" = load i32, i32* %"for_LDG.290"
  store i32 %".4296", i32* %"R51_NOTYPE"
  ; IADD3 R50, R3, R8, RZ
  %".4299" = load i32, i32* %"R3_NOTYPE"
  %".4300" = load i32, i32* %"R8_NOTYPE"
  %"add.270" = add i32 %".4299", %".4300"
  %"add.271" = add i32 %"add.270", 0
  store i32 %"add.271", i32* %"R50_NOTYPE"
  ; LDG.E.SYS R44, [R6]
  %".4303" = load i32, i32* %"R6_NOTYPE"
  %".4304" = add i32 %".4303", 0
  %"for_LDG.291" = inttoptr i32 %".4304" to i32*
  %".4305" = load i32, i32* %"for_LDG.291"
  store i32 %".4305", i32* %"R44_NOTYPE"
  ; LDG.E.SYS R47, [R4+0x4]
  %".4308" = load i32, i32* %"R4_NOTYPE"
  %".4309" = add i32 %".4308", 4
  %"for_LDG.292" = inttoptr i32 %".4309" to i32*
  %".4310" = load i32, i32* %"for_LDG.292"
  store i32 %".4310", i32* %"R47_NOTYPE"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".4313" = load i32, i32* %"R8_NOTYPE"
  %".4314" = load i32, i32* %"R41_NOTYPE"
  %"mul.94" = mul i32 %".4313", %".4314"
  %"add.272" = add i32 %"mul.94", %"Arg_3"
  store i32 %"add.272", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R42, [R6+0x4]
  %".4317" = load i32, i32* %"R6_NOTYPE"
  %".4318" = add i32 %".4317", 4
  %"for_LDG.293" = inttoptr i32 %".4318" to i32*
  %".4319" = load i32, i32* %"for_LDG.293"
  store i32 %".4319", i32* %"R42_NOTYPE"
  ; LDG.E.SYS R45, [R4+0x8]
  %".4322" = load i32, i32* %"R4_NOTYPE"
  %".4323" = add i32 %".4322", 8
  %"for_LDG.294" = inttoptr i32 %".4323" to i32*
  %".4324" = load i32, i32* %"for_LDG.294"
  store i32 %".4324", i32* %"R45_NOTYPE"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".4327" = load i32, i32* %"R50_NOTYPE"
  %".4328" = load i32, i32* %"R41_NOTYPE"
  %"mul.95" = mul i32 %".4327", %".4328"
  %"add.273" = add i32 %"mul.95", %"Arg_4"
  store i32 %"add.273", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R40, [R6+0x8]
  %".4331" = load i32, i32* %"R6_NOTYPE"
  %".4332" = add i32 %".4331", 8
  %"for_LDG.295" = inttoptr i32 %".4332" to i32*
  %".4333" = load i32, i32* %"for_LDG.295"
  store i32 %".4333", i32* %"R40_NOTYPE"
  ; LDG.E.SYS R53, [R4+0xc]
  %".4336" = load i32, i32* %"R4_NOTYPE"
  %".4337" = add i32 %".4336", 12
  %"for_LDG.296" = inttoptr i32 %".4337" to i32*
  %".4338" = load i32, i32* %"for_LDG.296"
  store i32 %".4338", i32* %"R53_NOTYPE"
  ; IADD3 R12, R34, 0xc, RZ
  %".4341" = load i32, i32* %"R34_NOTYPE"
  %"add.274" = add i32 %".4341", 12
  %"add.275" = add i32 %"add.274", 0
  store i32 %"add.275", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R54, [R6+0xc]
  %".4344" = load i32, i32* %"R6_NOTYPE"
  %".4345" = add i32 %".4344", 12
  %"for_LDG.297" = inttoptr i32 %".4345" to i32*
  %".4346" = load i32, i32* %"for_LDG.297"
  store i32 %".4346", i32* %"R54_NOTYPE"
  ; LDG.E.SYS R59, [R8]
  %".4349" = load i32, i32* %"R8_NOTYPE"
  %".4350" = add i32 %".4349", 0
  %"for_LDG.298" = inttoptr i32 %".4350" to i32*
  %".4351" = load i32, i32* %"for_LDG.298"
  store i32 %".4351", i32* %"R59_NOTYPE"
  ; IADD3 R58, R3, R12, RZ
  %".4354" = load i32, i32* %"R3_NOTYPE"
  %".4355" = load i32, i32* %"R12_NOTYPE"
  %"add.276" = add i32 %".4354", %".4355"
  %"add.277" = add i32 %"add.276", 0
  store i32 %"add.277", i32* %"R58_NOTYPE"
  ; LDG.E.SYS R52, [R10]
  %".4358" = load i32, i32* %"R10_NOTYPE"
  %".4359" = add i32 %".4358", 0
  %"for_LDG.299" = inttoptr i32 %".4359" to i32*
  %".4360" = load i32, i32* %"for_LDG.299"
  store i32 %".4360", i32* %"R52_NOTYPE"
  ; LDG.E.SYS R57, [R8+0x4]
  %".4363" = load i32, i32* %"R8_NOTYPE"
  %".4364" = add i32 %".4363", 4
  %"for_LDG.300" = inttoptr i32 %".4364" to i32*
  %".4365" = load i32, i32* %"for_LDG.300"
  store i32 %".4365", i32* %"R57_NOTYPE"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".4368" = load i32, i32* %"R12_NOTYPE"
  %".4369" = load i32, i32* %"R41_NOTYPE"
  %"mul.96" = mul i32 %".4368", %".4369"
  %"add.278" = add i32 %"mul.96", %"Arg_3"
  store i32 %"add.278", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R50, [R10+0x4]
  %".4372" = load i32, i32* %"R10_NOTYPE"
  %".4373" = add i32 %".4372", 4
  %"for_LDG.301" = inttoptr i32 %".4373" to i32*
  %".4374" = load i32, i32* %"for_LDG.301"
  store i32 %".4374", i32* %"R50_NOTYPE"
  ; LDG.E.SYS R55, [R8+0x8]
  %".4377" = load i32, i32* %"R8_NOTYPE"
  %".4378" = add i32 %".4377", 8
  %"for_LDG.302" = inttoptr i32 %".4378" to i32*
  %".4379" = load i32, i32* %"for_LDG.302"
  store i32 %".4379", i32* %"R55_NOTYPE"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".4382" = load i32, i32* %"R58_NOTYPE"
  %".4383" = load i32, i32* %"R41_NOTYPE"
  %"mul.97" = mul i32 %".4382", %".4383"
  %"add.279" = add i32 %"mul.97", %"Arg_4"
  store i32 %"add.279", i32* %"R4_NOTYPE"
  ; LDG.E.SYS R61, [R8+0xc]
  %".4386" = load i32, i32* %"R8_NOTYPE"
  %".4387" = add i32 %".4386", 12
  %"for_LDG.303" = inttoptr i32 %".4387" to i32*
  %".4388" = load i32, i32* %"for_LDG.303"
  store i32 %".4388", i32* %"R61_NOTYPE"
  ; LDG.E.SYS R56, [R10+0x8]
  %".4391" = load i32, i32* %"R10_NOTYPE"
  %".4392" = add i32 %".4391", 8
  %"for_LDG.304" = inttoptr i32 %".4392" to i32*
  %".4393" = load i32, i32* %"for_LDG.304"
  store i32 %".4393", i32* %"R56_NOTYPE"
  ; LDG.E.SYS R58, [R10+0xc]
  %".4396" = load i32, i32* %"R10_NOTYPE"
  %".4397" = add i32 %".4396", 12
  %"for_LDG.305" = inttoptr i32 %".4397" to i32*
  %".4398" = load i32, i32* %"for_LDG.305"
  store i32 %".4398", i32* %"R58_NOTYPE"
  ; LDG.E.SYS R6, [R12]
  %".4401" = load i32, i32* %"R12_NOTYPE"
  %".4402" = add i32 %".4401", 0
  %"for_LDG.306" = inttoptr i32 %".4402" to i32*
  %".4403" = load i32, i32* %"for_LDG.306"
  store i32 %".4403", i32* %"R6_NOTYPE"
  ; LDG.E.SYS R41, [R12+0x4]
  %".4406" = load i32, i32* %"R12_NOTYPE"
  %".4407" = add i32 %".4406", 4
  %"for_LDG.307" = inttoptr i32 %".4407" to i32*
  %".4408" = load i32, i32* %"for_LDG.307"
  store i32 %".4408", i32* %"R41_NOTYPE"
  ; LDG.E.SYS R10, [R4]
  %".4411" = load i32, i32* %"R4_NOTYPE"
  %".4412" = add i32 %".4411", 0
  %"for_LDG.308" = inttoptr i32 %".4412" to i32*
  %".4413" = load i32, i32* %"for_LDG.308"
  store i32 %".4413", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R7, [R12+0x8]
  %".4416" = load i32, i32* %"R12_NOTYPE"
  %".4417" = add i32 %".4416", 8
  %"for_LDG.309" = inttoptr i32 %".4417" to i32*
  %".4418" = load i32, i32* %"for_LDG.309"
  store i32 %".4418", i32* %"R7_NOTYPE"
  ; LDG.E.SYS R9, [R4+0x4]
  %".4421" = load i32, i32* %"R4_NOTYPE"
  %".4422" = add i32 %".4421", 4
  %"for_LDG.310" = inttoptr i32 %".4422" to i32*
  %".4423" = load i32, i32* %"for_LDG.310"
  store i32 %".4423", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R60, [R12+0xc]
  %".4426" = load i32, i32* %"R12_NOTYPE"
  %".4427" = add i32 %".4426", 12
  %"for_LDG.311" = inttoptr i32 %".4427" to i32*
  %".4428" = load i32, i32* %"for_LDG.311"
  store i32 %".4428", i32* %"R60_NOTYPE"
  ; LDG.E.SYS R8, [R4+0x8]
  %".4431" = load i32, i32* %"R4_NOTYPE"
  %".4432" = add i32 %".4431", 8
  %"for_LDG.312" = inttoptr i32 %".4432" to i32*
  %".4433" = load i32, i32* %"for_LDG.312"
  store i32 %".4433", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R11, [R4+0xc]
  %".4436" = load i32, i32* %"R4_NOTYPE"
  %".4437" = add i32 %".4436", 12
  %"for_LDG.313" = inttoptr i32 %".4437" to i32*
  %".4438" = load i32, i32* %"for_LDG.313"
  store i32 %".4438", i32* %"R11_NOTYPE"
  ; IADD3 R35, R35, -0x10, RZ
  %".4441" = load i32, i32* %"R35_NOTYPE"
  %"add.280" = add i32 %".4441", -16
  %"add.281" = add i32 %"add.280", 0
  store i32 %"add.281", i32* %"R35_NOTYPE"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".4444" = load i32, i32* %"R35_NOTYPE"
  %".4445" = load i1, i1* %"PT_Bool"
  %"cmp.50" = icmp sgt i32 %".4444", 12
  %".4446" = and i1 %"cmp.50", %".4445"
  store i1 %".4446", i1* %"P1_Bool"
  ; IADD3 R34, R34, 0x10, RZ
  %".4449" = load i32, i32* %"R34_NOTYPE"
  %"add.282" = add i32 %".4449", 16
  %"add.283" = add i32 %"add.282", 0
  store i32 %"add.283", i32* %"R34_NOTYPE"
  ; FMUL R25, R25, R22
  %".4452" = load i32, i32* %"R25_NOTYPE"
  %".4453" = load i32, i32* %"R22_NOTYPE"
  %"fmul.243" = fmul i32 %".4452", %".4453"
  store i32 %"fmul.243", i32* %"R25_NOTYPE"
  ; FFMA R25, R25, R36, R21
  %".4456" = load i32, i32* %"R25_NOTYPE"
  %".4457" = load i32, i32* %"R36_NOTYPE"
  %".4458" = load i32, i32* %"R21_NOTYPE"
  %"fmul.244" = fmul i32 %".4456", %".4457"
  %"fadd.223" = fadd i32 %"fmul.244", %".4458"
  store i32 %"fadd.223", i32* %"R25_NOTYPE"
  ; FMUL R37, R37, R22
  %".4461" = load i32, i32* %"R37_NOTYPE"
  %".4462" = load i32, i32* %"R22_NOTYPE"
  %"fmul.245" = fmul i32 %".4461", %".4462"
  store i32 %"fmul.245", i32* %"R37_NOTYPE"
  ; FFMA R25, R37, R24, R25
  %".4465" = load i32, i32* %"R37_NOTYPE"
  %".4466" = load i32, i32* %"R24_NOTYPE"
  %".4467" = load i32, i32* %"R25_NOTYPE"
  %"fmul.246" = fmul i32 %".4465", %".4466"
  %"fadd.224" = fadd i32 %"fmul.246", %".4467"
  store i32 %"fadd.224", i32* %"R25_NOTYPE"
  ; FMUL R39, R39, R22
  %".4470" = load i32, i32* %"R39_NOTYPE"
  %".4471" = load i32, i32* %"R22_NOTYPE"
  %"fmul.247" = fmul i32 %".4470", %".4471"
  store i32 %"fmul.247", i32* %"R39_NOTYPE"
  ; FFMA R25, R39, R38, R25
  %".4474" = load i32, i32* %"R39_NOTYPE"
  %".4475" = load i32, i32* %"R38_NOTYPE"
  %".4476" = load i32, i32* %"R25_NOTYPE"
  %"fmul.248" = fmul i32 %".4474", %".4475"
  %"fadd.225" = fadd i32 %"fmul.248", %".4476"
  store i32 %"fadd.225", i32* %"R25_NOTYPE"
  ; FMUL R43, R43, R22
  %".4479" = load i32, i32* %"R43_NOTYPE"
  %".4480" = load i32, i32* %"R22_NOTYPE"
  %"fmul.249" = fmul i32 %".4479", %".4480"
  store i32 %"fmul.249", i32* %"R43_NOTYPE"
  ; FFMA R25, R43, R46, R25
  %".4483" = load i32, i32* %"R43_NOTYPE"
  %".4484" = load i32, i32* %"R46_NOTYPE"
  %".4485" = load i32, i32* %"R25_NOTYPE"
  %"fmul.250" = fmul i32 %".4483", %".4484"
  %"fadd.226" = fadd i32 %"fmul.250", %".4485"
  store i32 %"fadd.226", i32* %"R25_NOTYPE"
  ; FMUL R51, R51, R22
  %".4488" = load i32, i32* %"R51_NOTYPE"
  %".4489" = load i32, i32* %"R22_NOTYPE"
  %"fmul.251" = fmul i32 %".4488", %".4489"
  store i32 %"fmul.251", i32* %"R51_NOTYPE"
  ; FFMA R25, R51, R44, R25
  %".4492" = load i32, i32* %"R51_NOTYPE"
  %".4493" = load i32, i32* %"R44_NOTYPE"
  %".4494" = load i32, i32* %"R25_NOTYPE"
  %"fmul.252" = fmul i32 %".4492", %".4493"
  %"fadd.227" = fadd i32 %"fmul.252", %".4494"
  store i32 %"fadd.227", i32* %"R25_NOTYPE"
  ; FMUL R47, R47, R22
  %".4497" = load i32, i32* %"R47_NOTYPE"
  %".4498" = load i32, i32* %"R22_NOTYPE"
  %"fmul.253" = fmul i32 %".4497", %".4498"
  store i32 %"fmul.253", i32* %"R47_NOTYPE"
  ; FFMA R25, R47, R42, R25
  %".4501" = load i32, i32* %"R47_NOTYPE"
  %".4502" = load i32, i32* %"R42_NOTYPE"
  %".4503" = load i32, i32* %"R25_NOTYPE"
  %"fmul.254" = fmul i32 %".4501", %".4502"
  %"fadd.228" = fadd i32 %"fmul.254", %".4503"
  store i32 %"fadd.228", i32* %"R25_NOTYPE"
  ; FMUL R45, R45, R22
  %".4506" = load i32, i32* %"R45_NOTYPE"
  %".4507" = load i32, i32* %"R22_NOTYPE"
  %"fmul.255" = fmul i32 %".4506", %".4507"
  store i32 %"fmul.255", i32* %"R45_NOTYPE"
  ; FFMA R25, R45, R40, R25
  %".4510" = load i32, i32* %"R45_NOTYPE"
  %".4511" = load i32, i32* %"R40_NOTYPE"
  %".4512" = load i32, i32* %"R25_NOTYPE"
  %"fmul.256" = fmul i32 %".4510", %".4511"
  %"fadd.229" = fadd i32 %"fmul.256", %".4512"
  store i32 %"fadd.229", i32* %"R25_NOTYPE"
  ; FMUL R53, R53, R22
  %".4515" = load i32, i32* %"R53_NOTYPE"
  %".4516" = load i32, i32* %"R22_NOTYPE"
  %"fmul.257" = fmul i32 %".4515", %".4516"
  store i32 %"fmul.257", i32* %"R53_NOTYPE"
  ; FFMA R25, R53, R54, R25
  %".4519" = load i32, i32* %"R53_NOTYPE"
  %".4520" = load i32, i32* %"R54_NOTYPE"
  %".4521" = load i32, i32* %"R25_NOTYPE"
  %"fmul.258" = fmul i32 %".4519", %".4520"
  %"fadd.230" = fadd i32 %"fmul.258", %".4521"
  store i32 %"fadd.230", i32* %"R25_NOTYPE"
  ; FMUL R59, R59, R22
  %".4524" = load i32, i32* %"R59_NOTYPE"
  %".4525" = load i32, i32* %"R22_NOTYPE"
  %"fmul.259" = fmul i32 %".4524", %".4525"
  store i32 %"fmul.259", i32* %"R59_NOTYPE"
  ; FFMA R25, R59, R52, R25
  %".4528" = load i32, i32* %"R59_NOTYPE"
  %".4529" = load i32, i32* %"R52_NOTYPE"
  %".4530" = load i32, i32* %"R25_NOTYPE"
  %"fmul.260" = fmul i32 %".4528", %".4529"
  %"fadd.231" = fadd i32 %"fmul.260", %".4530"
  store i32 %"fadd.231", i32* %"R25_NOTYPE"
  ; FMUL R57, R57, R22
  %".4533" = load i32, i32* %"R57_NOTYPE"
  %".4534" = load i32, i32* %"R22_NOTYPE"
  %"fmul.261" = fmul i32 %".4533", %".4534"
  store i32 %"fmul.261", i32* %"R57_NOTYPE"
  ; FFMA R25, R57, R50, R25
  %".4537" = load i32, i32* %"R57_NOTYPE"
  %".4538" = load i32, i32* %"R50_NOTYPE"
  %".4539" = load i32, i32* %"R25_NOTYPE"
  %"fmul.262" = fmul i32 %".4537", %".4538"
  %"fadd.232" = fadd i32 %"fmul.262", %".4539"
  store i32 %"fadd.232", i32* %"R25_NOTYPE"
  ; FMUL R55, R55, R22.reuse
  %".4542" = load i32, i32* %"R55_NOTYPE"
  %".4543" = load i32, i32* %"R22_NOTYPE"
  %"fmul.263" = fmul i32 %".4542", %".4543"
  store i32 %"fmul.263", i32* %"R55_NOTYPE"
  ; FMUL R61, R61, R22
  %".4546" = load i32, i32* %"R61_NOTYPE"
  %".4547" = load i32, i32* %"R22_NOTYPE"
  %"fmul.264" = fmul i32 %".4546", %".4547"
  store i32 %"fmul.264", i32* %"R61_NOTYPE"
  ; FFMA R25, R55, R56, R25
  %".4550" = load i32, i32* %"R55_NOTYPE"
  %".4551" = load i32, i32* %"R56_NOTYPE"
  %".4552" = load i32, i32* %"R25_NOTYPE"
  %"fmul.265" = fmul i32 %".4550", %".4551"
  %"fadd.233" = fadd i32 %"fmul.265", %".4552"
  store i32 %"fadd.233", i32* %"R25_NOTYPE"
  ; FFMA R25, R61, R58, R25
  %".4555" = load i32, i32* %"R61_NOTYPE"
  %".4556" = load i32, i32* %"R58_NOTYPE"
  %".4557" = load i32, i32* %"R25_NOTYPE"
  %"fmul.266" = fmul i32 %".4555", %".4556"
  %"fadd.234" = fadd i32 %"fmul.266", %".4557"
  store i32 %"fadd.234", i32* %"R25_NOTYPE"
  ; FMUL R6, R6, R22.reuse
  %".4560" = load i32, i32* %"R6_NOTYPE"
  %".4561" = load i32, i32* %"R22_NOTYPE"
  %"fmul.267" = fmul i32 %".4560", %".4561"
  store i32 %"fmul.267", i32* %"R6_NOTYPE"
  ; FMUL R41, R41, R22
  %".4564" = load i32, i32* %"R41_NOTYPE"
  %".4565" = load i32, i32* %"R22_NOTYPE"
  %"fmul.268" = fmul i32 %".4564", %".4565"
  store i32 %"fmul.268", i32* %"R41_NOTYPE"
  ; FFMA R6, R6, R10, R25
  %".4568" = load i32, i32* %"R6_NOTYPE"
  %".4569" = load i32, i32* %"R10_NOTYPE"
  %".4570" = load i32, i32* %"R25_NOTYPE"
  %"fmul.269" = fmul i32 %".4568", %".4569"
  %"fadd.235" = fadd i32 %"fmul.269", %".4570"
  store i32 %"fadd.235", i32* %"R6_NOTYPE"
  ; FMUL R7, R7, R22
  %".4573" = load i32, i32* %"R7_NOTYPE"
  %".4574" = load i32, i32* %"R22_NOTYPE"
  %"fmul.270" = fmul i32 %".4573", %".4574"
  store i32 %"fmul.270", i32* %"R7_NOTYPE"
  ; FFMA R9, R41, R9, R6
  %".4577" = load i32, i32* %"R41_NOTYPE"
  %".4578" = load i32, i32* %"R9_NOTYPE"
  %".4579" = load i32, i32* %"R6_NOTYPE"
  %"fmul.271" = fmul i32 %".4577", %".4578"
  %"fadd.236" = fadd i32 %"fmul.271", %".4579"
  store i32 %"fadd.236", i32* %"R9_NOTYPE"
  ; FMUL R60, R60, R22
  %".4582" = load i32, i32* %"R60_NOTYPE"
  %".4583" = load i32, i32* %"R22_NOTYPE"
  %"fmul.272" = fmul i32 %".4582", %".4583"
  store i32 %"fmul.272", i32* %"R60_NOTYPE"
  ; FFMA R8, R7, R8, R9
  %".4586" = load i32, i32* %"R7_NOTYPE"
  %".4587" = load i32, i32* %"R8_NOTYPE"
  %".4588" = load i32, i32* %"R9_NOTYPE"
  %"fmul.273" = fmul i32 %".4586", %".4587"
  %"fadd.237" = fadd i32 %"fmul.273", %".4588"
  store i32 %"fadd.237", i32* %"R8_NOTYPE"
  ; FFMA R21, R60, R11, R8
  %".4591" = load i32, i32* %"R60_NOTYPE"
  %".4592" = load i32, i32* %"R11_NOTYPE"
  %".4593" = load i32, i32* %"R8_NOTYPE"
  %"fmul.274" = fmul i32 %".4591", %".4592"
  %"fadd.238" = fadd i32 %"fmul.274", %".4593"
  store i32 %"fadd.238", i32* %"R21_NOTYPE"
  ; @P1 BRA `(.L_x_39)
  %".4596" = load i1, i1* %"P1_Bool"
  %".4597" = icmp ne i1 %".4596", 1
  br i1 %".4597", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".4600" = load i32, i32* %"R35_NOTYPE"
  %".4601" = load i1, i1* %"PT_Bool"
  %"cmp.51" = icmp sgt i32 %".4600", 4
  %".4602" = and i1 %"cmp.51", %".4601"
  store i1 %".4602", i1* %"P1_Bool"
  ; @!P1 BRA `(.L_x_40)
  %".4605" = load i1, i1* %"P1_Bool"
  %".4606" = icmp eq i1 %".4605", 1
  br i1 %".4606", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, i32* %"R11_NOTYPE"
  ; IADD3 R6, R3, R34, RZ
  %".4611" = load i32, i32* %"R3_NOTYPE"
  %".4612" = load i32, i32* %"R34_NOTYPE"
  %"add.284" = add i32 %".4611", %".4612"
  %"add.285" = add i32 %"add.284", 0
  store i32 %"add.285", i32* %"R6_NOTYPE"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".4615" = load i32, i32* %"R34_NOTYPE"
  %".4616" = load i32, i32* %"R11_NOTYPE"
  %"mul.98" = mul i32 %".4615", %".4616"
  %"add.286" = add i32 %"mul.98", %"Arg_3"
  store i32 %"add.286", i32* %"R8_NOTYPE"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".4619" = load i32, i32* %"R6_NOTYPE"
  %".4620" = load i32, i32* %"R11_NOTYPE"
  %"mul.99" = mul i32 %".4619", %".4620"
  %"add.287" = add i32 %"mul.99", %"Arg_4"
  store i32 %"add.287", i32* %"R6_NOTYPE"
  ; IADD3 R4, R34, 0x4, RZ
  %".4623" = load i32, i32* %"R34_NOTYPE"
  %"add.288" = add i32 %".4623", 4
  %"add.289" = add i32 %"add.288", 0
  store i32 %"add.289", i32* %"R4_NOTYPE"
  ; LDG.E.SYS R13, [R8]
  %".4626" = load i32, i32* %"R8_NOTYPE"
  %".4627" = add i32 %".4626", 0
  %"for_LDG.314" = inttoptr i32 %".4627" to i32*
  %".4628" = load i32, i32* %"for_LDG.314"
  store i32 %".4628", i32* %"R13_NOTYPE"
  ; IADD3 R10, R3, R4, RZ
  %".4631" = load i32, i32* %"R3_NOTYPE"
  %".4632" = load i32, i32* %"R4_NOTYPE"
  %"add.290" = add i32 %".4631", %".4632"
  %"add.291" = add i32 %"add.290", 0
  store i32 %"add.291", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R12, [R6]
  %".4635" = load i32, i32* %"R6_NOTYPE"
  %".4636" = add i32 %".4635", 0
  %"for_LDG.315" = inttoptr i32 %".4636" to i32*
  %".4637" = load i32, i32* %"for_LDG.315"
  store i32 %".4637", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R25, [R8+0x4]
  %".4640" = load i32, i32* %"R8_NOTYPE"
  %".4641" = add i32 %".4640", 4
  %"for_LDG.316" = inttoptr i32 %".4641" to i32*
  %".4642" = load i32, i32* %"for_LDG.316"
  store i32 %".4642", i32* %"R25_NOTYPE"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".4645" = load i32, i32* %"R4_NOTYPE"
  %".4646" = load i32, i32* %"R11_NOTYPE"
  %"mul.100" = mul i32 %".4645", %".4646"
  %"add.292" = add i32 %"mul.100", %"Arg_3"
  store i32 %"add.292", i32* %"R4_NOTYPE"
  ; LDG.E.SYS R24, [R6+0x4]
  %".4649" = load i32, i32* %"R6_NOTYPE"
  %".4650" = add i32 %".4649", 4
  %"for_LDG.317" = inttoptr i32 %".4650" to i32*
  %".4651" = load i32, i32* %"for_LDG.317"
  store i32 %".4651", i32* %"R24_NOTYPE"
  ; LDG.E.SYS R37, [R8+0x8]
  %".4654" = load i32, i32* %"R8_NOTYPE"
  %".4655" = add i32 %".4654", 8
  %"for_LDG.318" = inttoptr i32 %".4655" to i32*
  %".4656" = load i32, i32* %"for_LDG.318"
  store i32 %".4656", i32* %"R37_NOTYPE"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".4659" = load i32, i32* %"R10_NOTYPE"
  %".4660" = load i32, i32* %"R11_NOTYPE"
  %"mul.101" = mul i32 %".4659", %".4660"
  %"add.293" = add i32 %"mul.101", %"Arg_4"
  store i32 %"add.293", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R36, [R6+0x8]
  %".4663" = load i32, i32* %"R6_NOTYPE"
  %".4664" = add i32 %".4663", 8
  %"for_LDG.319" = inttoptr i32 %".4664" to i32*
  %".4665" = load i32, i32* %"for_LDG.319"
  store i32 %".4665", i32* %"R36_NOTYPE"
  ; LDG.E.SYS R39, [R8+0xc]
  %".4668" = load i32, i32* %"R8_NOTYPE"
  %".4669" = add i32 %".4668", 12
  %"for_LDG.320" = inttoptr i32 %".4669" to i32*
  %".4670" = load i32, i32* %"for_LDG.320"
  store i32 %".4670", i32* %"R39_NOTYPE"
  ; LDG.E.SYS R38, [R6+0xc]
  %".4673" = load i32, i32* %"R6_NOTYPE"
  %".4674" = add i32 %".4673", 12
  %"for_LDG.321" = inttoptr i32 %".4674" to i32*
  %".4675" = load i32, i32* %"for_LDG.321"
  store i32 %".4675", i32* %"R38_NOTYPE"
  ; LDG.E.SYS R41, [R4]
  %".4678" = load i32, i32* %"R4_NOTYPE"
  %".4679" = add i32 %".4678", 0
  %"for_LDG.322" = inttoptr i32 %".4679" to i32*
  %".4680" = load i32, i32* %"for_LDG.322"
  store i32 %".4680", i32* %"R41_NOTYPE"
  ; LDG.E.SYS R40, [R10]
  %".4683" = load i32, i32* %"R10_NOTYPE"
  %".4684" = add i32 %".4683", 0
  %"for_LDG.323" = inttoptr i32 %".4684" to i32*
  %".4685" = load i32, i32* %"for_LDG.323"
  store i32 %".4685", i32* %"R40_NOTYPE"
  ; LDG.E.SYS R43, [R4+0x4]
  %".4688" = load i32, i32* %"R4_NOTYPE"
  %".4689" = add i32 %".4688", 4
  %"for_LDG.324" = inttoptr i32 %".4689" to i32*
  %".4690" = load i32, i32* %"for_LDG.324"
  store i32 %".4690", i32* %"R43_NOTYPE"
  ; LDG.E.SYS R42, [R10+0x4]
  %".4693" = load i32, i32* %"R10_NOTYPE"
  %".4694" = add i32 %".4693", 4
  %"for_LDG.325" = inttoptr i32 %".4694" to i32*
  %".4695" = load i32, i32* %"for_LDG.325"
  store i32 %".4695", i32* %"R42_NOTYPE"
  ; LDG.E.SYS R45, [R4+0x8]
  %".4698" = load i32, i32* %"R4_NOTYPE"
  %".4699" = add i32 %".4698", 8
  %"for_LDG.326" = inttoptr i32 %".4699" to i32*
  %".4700" = load i32, i32* %"for_LDG.326"
  store i32 %".4700", i32* %"R45_NOTYPE"
  ; LDG.E.SYS R47, [R4+0xc]
  %".4703" = load i32, i32* %"R4_NOTYPE"
  %".4704" = add i32 %".4703", 12
  %"for_LDG.327" = inttoptr i32 %".4704" to i32*
  %".4705" = load i32, i32* %"for_LDG.327"
  store i32 %".4705", i32* %"R47_NOTYPE"
  ; LDG.E.SYS R44, [R10+0x8]
  %".4708" = load i32, i32* %"R10_NOTYPE"
  %".4709" = add i32 %".4708", 8
  %"for_LDG.328" = inttoptr i32 %".4709" to i32*
  %".4710" = load i32, i32* %"for_LDG.328"
  store i32 %".4710", i32* %"R44_NOTYPE"
  ; LDG.E.SYS R46, [R10+0xc]
  %".4713" = load i32, i32* %"R10_NOTYPE"
  %".4714" = add i32 %".4713", 12
  %"for_LDG.329" = inttoptr i32 %".4714" to i32*
  %".4715" = load i32, i32* %"for_LDG.329"
  store i32 %".4715", i32* %"R46_NOTYPE"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4718" = xor i1 1, 1
  %".4719" = and i1 %".4718", 1
  %".4720" = and i1 %".4719", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".4722" = load i32, i32* %"R35_NOTYPE"
  %"add.294" = add i32 %".4722", -8
  %"add.295" = add i32 %"add.294", 0
  store i32 %"add.295", i32* %"R35_NOTYPE"
  ; IADD3 R34, R34, 0x8, RZ
  %".4725" = load i32, i32* %"R34_NOTYPE"
  %"add.296" = add i32 %".4725", 8
  %"add.297" = add i32 %"add.296", 0
  store i32 %"add.297", i32* %"R34_NOTYPE"
  ; FMUL R8, R13, R22
  %".4728" = load i32, i32* %"R13_NOTYPE"
  %".4729" = load i32, i32* %"R22_NOTYPE"
  %"fmul.275" = fmul i32 %".4728", %".4729"
  store i32 %"fmul.275", i32* %"R8_NOTYPE"
  ; FFMA R8, R8, R12, R21
  %".4732" = load i32, i32* %"R8_NOTYPE"
  %".4733" = load i32, i32* %"R12_NOTYPE"
  %".4734" = load i32, i32* %"R21_NOTYPE"
  %"fmul.276" = fmul i32 %".4732", %".4733"
  %"fadd.239" = fadd i32 %"fmul.276", %".4734"
  store i32 %"fadd.239", i32* %"R8_NOTYPE"
  ; FMUL R25, R25, R22
  %".4737" = load i32, i32* %"R25_NOTYPE"
  %".4738" = load i32, i32* %"R22_NOTYPE"
  %"fmul.277" = fmul i32 %".4737", %".4738"
  store i32 %"fmul.277", i32* %"R25_NOTYPE"
  ; FFMA R8, R25, R24, R8
  %".4741" = load i32, i32* %"R25_NOTYPE"
  %".4742" = load i32, i32* %"R24_NOTYPE"
  %".4743" = load i32, i32* %"R8_NOTYPE"
  %"fmul.278" = fmul i32 %".4741", %".4742"
  %"fadd.240" = fadd i32 %"fmul.278", %".4743"
  store i32 %"fadd.240", i32* %"R8_NOTYPE"
  ; FMUL R37, R37, R22
  %".4746" = load i32, i32* %"R37_NOTYPE"
  %".4747" = load i32, i32* %"R22_NOTYPE"
  %"fmul.279" = fmul i32 %".4746", %".4747"
  store i32 %"fmul.279", i32* %"R37_NOTYPE"
  ; FFMA R8, R37, R36, R8
  %".4750" = load i32, i32* %"R37_NOTYPE"
  %".4751" = load i32, i32* %"R36_NOTYPE"
  %".4752" = load i32, i32* %"R8_NOTYPE"
  %"fmul.280" = fmul i32 %".4750", %".4751"
  %"fadd.241" = fadd i32 %"fmul.280", %".4752"
  store i32 %"fadd.241", i32* %"R8_NOTYPE"
  ; FMUL R39, R39, R22
  %".4755" = load i32, i32* %"R39_NOTYPE"
  %".4756" = load i32, i32* %"R22_NOTYPE"
  %"fmul.281" = fmul i32 %".4755", %".4756"
  store i32 %"fmul.281", i32* %"R39_NOTYPE"
  ; FFMA R8, R39, R38, R8
  %".4759" = load i32, i32* %"R39_NOTYPE"
  %".4760" = load i32, i32* %"R38_NOTYPE"
  %".4761" = load i32, i32* %"R8_NOTYPE"
  %"fmul.282" = fmul i32 %".4759", %".4760"
  %"fadd.242" = fadd i32 %"fmul.282", %".4761"
  store i32 %"fadd.242", i32* %"R8_NOTYPE"
  ; FMUL R41, R41, R22
  %".4764" = load i32, i32* %"R41_NOTYPE"
  %".4765" = load i32, i32* %"R22_NOTYPE"
  %"fmul.283" = fmul i32 %".4764", %".4765"
  store i32 %"fmul.283", i32* %"R41_NOTYPE"
  ; FFMA R8, R41, R40, R8
  %".4768" = load i32, i32* %"R41_NOTYPE"
  %".4769" = load i32, i32* %"R40_NOTYPE"
  %".4770" = load i32, i32* %"R8_NOTYPE"
  %"fmul.284" = fmul i32 %".4768", %".4769"
  %"fadd.243" = fadd i32 %"fmul.284", %".4770"
  store i32 %"fadd.243", i32* %"R8_NOTYPE"
  ; FMUL R43, R43, R22
  %".4773" = load i32, i32* %"R43_NOTYPE"
  %".4774" = load i32, i32* %"R22_NOTYPE"
  %"fmul.285" = fmul i32 %".4773", %".4774"
  store i32 %"fmul.285", i32* %"R43_NOTYPE"
  ; FFMA R8, R43, R42, R8
  %".4777" = load i32, i32* %"R43_NOTYPE"
  %".4778" = load i32, i32* %"R42_NOTYPE"
  %".4779" = load i32, i32* %"R8_NOTYPE"
  %"fmul.286" = fmul i32 %".4777", %".4778"
  %"fadd.244" = fadd i32 %"fmul.286", %".4779"
  store i32 %"fadd.244", i32* %"R8_NOTYPE"
  ; FMUL R45, R45, R22.reuse
  %".4782" = load i32, i32* %"R45_NOTYPE"
  %".4783" = load i32, i32* %"R22_NOTYPE"
  %"fmul.287" = fmul i32 %".4782", %".4783"
  store i32 %"fmul.287", i32* %"R45_NOTYPE"
  ; FMUL R47, R47, R22
  %".4786" = load i32, i32* %"R47_NOTYPE"
  %".4787" = load i32, i32* %"R22_NOTYPE"
  %"fmul.288" = fmul i32 %".4786", %".4787"
  store i32 %"fmul.288", i32* %"R47_NOTYPE"
  ; FFMA R8, R45, R44, R8
  %".4790" = load i32, i32* %"R45_NOTYPE"
  %".4791" = load i32, i32* %"R44_NOTYPE"
  %".4792" = load i32, i32* %"R8_NOTYPE"
  %"fmul.289" = fmul i32 %".4790", %".4791"
  %"fadd.245" = fadd i32 %"fmul.289", %".4792"
  store i32 %"fadd.245", i32* %"R8_NOTYPE"
  ; FFMA R21, R47, R46, R8
  %".4795" = load i32, i32* %"R47_NOTYPE"
  %".4796" = load i32, i32* %"R46_NOTYPE"
  %".4797" = load i32, i32* %"R8_NOTYPE"
  %"fmul.290" = fmul i32 %".4795", %".4796"
  %"fadd.246" = fadd i32 %"fmul.290", %".4797"
  store i32 %"fadd.246", i32* %"R21_NOTYPE"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".4800" = load i32, i32* %"R35_NOTYPE"
  %".4801" = load i1, i1* %"PT_Bool"
  %"cmp.52" = icmp ne i32 %".4800", 0
  %".4802" = or i1 %"cmp.52", %".4801"
  store i1 %".4802", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_36)
  %".4805" = load i1, i1* %"P0_Bool"
  %".4806" = icmp eq i1 %".4805", 1
  br i1 %".4806", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, i32* %"R7_NOTYPE"
  ; IADD3 R6, R3, R34, RZ
  %".4811" = load i32, i32* %"R3_NOTYPE"
  %".4812" = load i32, i32* %"R34_NOTYPE"
  %"add.298" = add i32 %".4811", %".4812"
  %"add.299" = add i32 %"add.298", 0
  store i32 %"add.299", i32* %"R6_NOTYPE"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".4815" = load i32, i32* %"R34_NOTYPE"
  %".4816" = load i32, i32* %"R7_NOTYPE"
  %"mul.102" = mul i32 %".4815", %".4816"
  %"add.300" = add i32 %"mul.102", %"Arg_3"
  store i32 %"add.300", i32* %"R4_NOTYPE"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".4819" = load i32, i32* %"R6_NOTYPE"
  %".4820" = load i32, i32* %"R7_NOTYPE"
  %"mul.103" = mul i32 %".4819", %".4820"
  %"add.301" = add i32 %"mul.103", %"Arg_4"
  store i32 %"add.301", i32* %"R6_NOTYPE"
  ; LDG.E.SYS R9, [R4]
  %".4823" = load i32, i32* %"R4_NOTYPE"
  %".4824" = add i32 %".4823", 0
  %"for_LDG.330" = inttoptr i32 %".4824" to i32*
  %".4825" = load i32, i32* %"for_LDG.330"
  store i32 %".4825", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R10, [R6]
  %".4828" = load i32, i32* %"R6_NOTYPE"
  %".4829" = add i32 %".4828", 0
  %"for_LDG.331" = inttoptr i32 %".4829" to i32*
  %".4830" = load i32, i32* %"for_LDG.331"
  store i32 %".4830", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R11, [R4+0x4]
  %".4833" = load i32, i32* %"R4_NOTYPE"
  %".4834" = add i32 %".4833", 4
  %"for_LDG.332" = inttoptr i32 %".4834" to i32*
  %".4835" = load i32, i32* %"for_LDG.332"
  store i32 %".4835", i32* %"R11_NOTYPE"
  ; LDG.E.SYS R12, [R6+0x4]
  %".4838" = load i32, i32* %"R6_NOTYPE"
  %".4839" = add i32 %".4838", 4
  %"for_LDG.333" = inttoptr i32 %".4839" to i32*
  %".4840" = load i32, i32* %"for_LDG.333"
  store i32 %".4840", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R13, [R4+0x8]
  %".4843" = load i32, i32* %"R4_NOTYPE"
  %".4844" = add i32 %".4843", 8
  %"for_LDG.334" = inttoptr i32 %".4844" to i32*
  %".4845" = load i32, i32* %"for_LDG.334"
  store i32 %".4845", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R24, [R6+0x8]
  %".4848" = load i32, i32* %"R6_NOTYPE"
  %".4849" = add i32 %".4848", 8
  %"for_LDG.335" = inttoptr i32 %".4849" to i32*
  %".4850" = load i32, i32* %"for_LDG.335"
  store i32 %".4850", i32* %"R24_NOTYPE"
  ; LDG.E.SYS R25, [R4+0xc]
  %".4853" = load i32, i32* %"R4_NOTYPE"
  %".4854" = add i32 %".4853", 12
  %"for_LDG.336" = inttoptr i32 %".4854" to i32*
  %".4855" = load i32, i32* %"for_LDG.336"
  store i32 %".4855", i32* %"R25_NOTYPE"
  ; LDG.E.SYS R36, [R6+0xc]
  %".4858" = load i32, i32* %"R6_NOTYPE"
  %".4859" = add i32 %".4858", 12
  %"for_LDG.337" = inttoptr i32 %".4859" to i32*
  %".4860" = load i32, i32* %"for_LDG.337"
  store i32 %".4860", i32* %"R36_NOTYPE"
  ; IADD3 R35, R35, -0x4, RZ
  %".4863" = load i32, i32* %"R35_NOTYPE"
  %"add.302" = add i32 %".4863", -4
  %"add.303" = add i32 %"add.302", 0
  store i32 %"add.303", i32* %"R35_NOTYPE"
  ; IADD3 R34, R34, 0x4, RZ
  %".4866" = load i32, i32* %"R34_NOTYPE"
  %"add.304" = add i32 %".4866", 4
  %"add.305" = add i32 %"add.304", 0
  store i32 %"add.305", i32* %"R34_NOTYPE"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".4869" = load i32, i32* %"R35_NOTYPE"
  %".4870" = load i1, i1* %"PT_Bool"
  %"cmp.53" = icmp ne i32 %".4869", 0
  %".4871" = and i1 %"cmp.53", %".4870"
  store i1 %".4871", i1* %"P0_Bool"
  ; FMUL R8, R9, R22
  %".4874" = load i32, i32* %"R9_NOTYPE"
  %".4875" = load i32, i32* %"R22_NOTYPE"
  %"fmul.291" = fmul i32 %".4874", %".4875"
  store i32 %"fmul.291", i32* %"R8_NOTYPE"
  ; FFMA R8, R8, R10, R21
  %".4878" = load i32, i32* %"R8_NOTYPE"
  %".4879" = load i32, i32* %"R10_NOTYPE"
  %".4880" = load i32, i32* %"R21_NOTYPE"
  %"fmul.292" = fmul i32 %".4878", %".4879"
  %"fadd.247" = fadd i32 %"fmul.292", %".4880"
  store i32 %"fadd.247", i32* %"R8_NOTYPE"
  ; FMUL R11, R11, R22
  %".4883" = load i32, i32* %"R11_NOTYPE"
  %".4884" = load i32, i32* %"R22_NOTYPE"
  %"fmul.293" = fmul i32 %".4883", %".4884"
  store i32 %"fmul.293", i32* %"R11_NOTYPE"
  ; FFMA R8, R11, R12, R8
  %".4887" = load i32, i32* %"R11_NOTYPE"
  %".4888" = load i32, i32* %"R12_NOTYPE"
  %".4889" = load i32, i32* %"R8_NOTYPE"
  %"fmul.294" = fmul i32 %".4887", %".4888"
  %"fadd.248" = fadd i32 %"fmul.294", %".4889"
  store i32 %"fadd.248", i32* %"R8_NOTYPE"
  ; FMUL R13, R13, R22
  %".4892" = load i32, i32* %"R13_NOTYPE"
  %".4893" = load i32, i32* %"R22_NOTYPE"
  %"fmul.295" = fmul i32 %".4892", %".4893"
  store i32 %"fmul.295", i32* %"R13_NOTYPE"
  ; FFMA R8, R13, R24, R8
  %".4896" = load i32, i32* %"R13_NOTYPE"
  %".4897" = load i32, i32* %"R24_NOTYPE"
  %".4898" = load i32, i32* %"R8_NOTYPE"
  %"fmul.296" = fmul i32 %".4896", %".4897"
  %"fadd.249" = fadd i32 %"fmul.296", %".4898"
  store i32 %"fadd.249", i32* %"R8_NOTYPE"
  ; FMUL R25, R25, R22
  %".4901" = load i32, i32* %"R25_NOTYPE"
  %".4902" = load i32, i32* %"R22_NOTYPE"
  %"fmul.297" = fmul i32 %".4901", %".4902"
  store i32 %"fmul.297", i32* %"R25_NOTYPE"
  ; FFMA R21, R25, R36, R8
  %".4905" = load i32, i32* %"R25_NOTYPE"
  %".4906" = load i32, i32* %"R36_NOTYPE"
  %".4907" = load i32, i32* %"R8_NOTYPE"
  %"fmul.298" = fmul i32 %".4905", %".4906"
  %"fadd.250" = fadd i32 %"fmul.298", %".4907"
  store i32 %"fadd.250", i32* %"R21_NOTYPE"
  ; @P0 BRA `(.L_x_37)
  %".4910" = load i1, i1* %"P0_Bool"
  %".4911" = icmp ne i1 %".4910", 1
  br i1 %".4911", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".4914" = load i32, i32* %"R48_NOTYPE"
  %".4915" = load i1, i1* %"PT_Bool"
  %"cmp.54" = icmp ne i32 %".4914", 0
  %".4916" = and i1 %"cmp.54", %".4915"
  store i1 %".4916", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_35)
  %".4919" = load i1, i1* %"P0_Bool"
  %".4920" = icmp eq i1 %".4919", 1
  br i1 %".4920", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, i32* %"R5_NOTYPE"
  ; IADD3 R4, R3, R34, RZ
  %".4925" = load i32, i32* %"R3_NOTYPE"
  %".4926" = load i32, i32* %"R34_NOTYPE"
  %"add.306" = add i32 %".4925", %".4926"
  %"add.307" = add i32 %"add.306", 0
  store i32 %"add.307", i32* %"R4_NOTYPE"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".4929" = load i32, i32* %"R34_NOTYPE"
  %".4930" = load i32, i32* %"R5_NOTYPE"
  %"mul.104" = mul i32 %".4929", %".4930"
  %"add.308" = add i32 %"mul.104", %"Arg_3"
  store i32 %"add.308", i32* %"R34_NOTYPE"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".4933" = load i32, i32* %"R4_NOTYPE"
  %".4934" = load i32, i32* %"R5_NOTYPE"
  %"mul.105" = mul i32 %".4933", %".4934"
  %"add.309" = add i32 %"mul.105", %"Arg_4"
  store i32 %"add.309", i32* %"R4_NOTYPE"
  ; LDG.E.SYS R7, [R34]
  %".4937" = load i32, i32* %"R34_NOTYPE"
  %".4938" = add i32 %".4937", 0
  %"for_LDG.338" = inttoptr i32 %".4938" to i32*
  %".4939" = load i32, i32* %"for_LDG.338"
  store i32 %".4939", i32* %"R7_NOTYPE"
  ; LDG.E.SYS R8, [R4]
  %".4942" = load i32, i32* %"R4_NOTYPE"
  %".4943" = add i32 %".4942", 0
  %"for_LDG.339" = inttoptr i32 %".4943" to i32*
  %".4944" = load i32, i32* %"for_LDG.339"
  store i32 %".4944", i32* %"R8_NOTYPE"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".4947" = load i32, i32* %"R48_NOTYPE"
  %".4948" = load i1, i1* %"PT_Bool"
  %"cmp.55" = icmp ne i32 %".4947", 1
  %".4949" = and i1 %"cmp.55", %".4948"
  store i1 %".4949", i1* %"P0_Bool"
  ; FMUL R6, R7, R22
  %".4952" = load i32, i32* %"R7_NOTYPE"
  %".4953" = load i32, i32* %"R22_NOTYPE"
  %"fmul.299" = fmul i32 %".4952", %".4953"
  store i32 %"fmul.299", i32* %"R6_NOTYPE"
  ; FFMA R21, R6, R8, R21
  %".4956" = load i32, i32* %"R6_NOTYPE"
  %".4957" = load i32, i32* %"R8_NOTYPE"
  %".4958" = load i32, i32* %"R21_NOTYPE"
  %"fmul.300" = fmul i32 %".4956", %".4957"
  %"fadd.251" = fadd i32 %"fmul.300", %".4958"
  store i32 %"fadd.251", i32* %"R21_NOTYPE"
  ; @!P0 BRA `(.L_x_35)
  %".4961" = load i1, i1* %"P0_Bool"
  %".4962" = icmp eq i1 %".4961", 1
  br i1 %".4962", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".4965" = load i32, i32* %"R48_NOTYPE"
  %".4966" = load i1, i1* %"PT_Bool"
  %"cmp.56" = icmp ne i32 %".4965", 2
  %".4967" = and i1 %"cmp.56", %".4966"
  store i1 %".4967", i1* %"P0_Bool"
  ; LDG.E.SYS R7, [R34+0x4]
  %".4970" = load i32, i32* %"R34_NOTYPE"
  %".4971" = add i32 %".4970", 4
  %"for_LDG.340" = inttoptr i32 %".4971" to i32*
  %".4972" = load i32, i32* %"for_LDG.340"
  store i32 %".4972", i32* %"R7_NOTYPE"
  ; LDG.E.SYS R8, [R4+0x4]
  %".4975" = load i32, i32* %"R4_NOTYPE"
  %".4976" = add i32 %".4975", 4
  %"for_LDG.341" = inttoptr i32 %".4976" to i32*
  %".4977" = load i32, i32* %"for_LDG.341"
  store i32 %".4977", i32* %"R8_NOTYPE"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".4980" = load i1, i1* %"P0_Bool"
  %".4981" = icmp ne i1 %".4980", 1
  br i1 %".4981", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  %".4984" = load i32, i32* %"R34_NOTYPE"
  %".4985" = add i32 %".4984", 8
  %"for_LDG.342" = inttoptr i32 %".4985" to i32*
  %".4986" = load i32, i32* %"for_LDG.342"
  store i32 %".4986", i32* %"R9_NOTYPE"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".4991" = load i1, i1* %"P0_Bool"
  %".4992" = icmp ne i1 %".4991", 1
  br i1 %".4992", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  %".4995" = load i32, i32* %"R4_NOTYPE"
  %".4996" = add i32 %".4995", 8
  %"for_LDG.343" = inttoptr i32 %".4996" to i32*
  %".4997" = load i32, i32* %"for_LDG.343"
  store i32 %".4997", i32* %"R10_NOTYPE"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".5002" = load i32, i32* %"R7_NOTYPE"
  %".5003" = load i32, i32* %"R22_NOTYPE"
  %"fmul.301" = fmul i32 %".5002", %".5003"
  store i32 %"fmul.301", i32* %"R6_NOTYPE"
  ; FFMA R21, R6, R8, R21
  %".5006" = load i32, i32* %"R6_NOTYPE"
  %".5007" = load i32, i32* %"R8_NOTYPE"
  %".5008" = load i32, i32* %"R21_NOTYPE"
  %"fmul.302" = fmul i32 %".5006", %".5007"
  %"fadd.252" = fadd i32 %"fmul.302", %".5008"
  store i32 %"fadd.252", i32* %"R21_NOTYPE"
  ; @P0 FMUL R22, R9, R22
  %".5011" = load i1, i1* %"P0_Bool"
  %".5012" = icmp ne i1 %".5011", 1
  br i1 %".5012", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".5015" = load i32, i32* %"R9_NOTYPE"
  %".5016" = load i32, i32* %"R22_NOTYPE"
  %"fmul.303" = fmul i32 %".5015", %".5016"
  store i32 %"fmul.303", i32* %"R22_NOTYPE"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".5021" = load i1, i1* %"P0_Bool"
  %".5022" = icmp ne i1 %".5021", 1
  br i1 %".5022", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".5025" = load i32, i32* %"R22_NOTYPE"
  %".5026" = load i32, i32* %"R10_NOTYPE"
  %".5027" = load i32, i32* %"R21_NOTYPE"
  %"fmul.304" = fmul i32 %".5025", %".5026"
  %"fadd.253" = fadd i32 %"fmul.304", %".5027"
  store i32 %"fadd.253", i32* %"R21_NOTYPE"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  %".5032" = load i32, i32* %"R30_NOTYPE"
  %".5033" = add i32 %".5032", 0
  %"for_LDG.344" = inttoptr i32 %".5033" to i32*
  %".5034" = load i32, i32* %"for_LDG.344"
  store i32 %".5034", i32* %"R4_NOTYPE"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".5039" = load i32, i32* %"R4_NOTYPE"
  %".5040" = load i32, i32* %"R21_NOTYPE"
  %"fadd.254" = fadd i32 %".5039", %".5040"
  store i32 %"fadd.254", i32* %"R21_NOTYPE"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".5043" = load i32, i32* %"R21_NOTYPE"
  %"llvm_abs_result.3" = call i32 @"llvm.abs"(i32 %".5043", i1 0)
  %".5044" = load i1, i1* %"PT_Bool"
  %"cmp.57" = icmp sge i32 %"llvm_abs_result.3", 0.6000000238418579
  %".5045" = and i1 %"cmp.57", %".5044"
  store i1 %".5045", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_42)
  %".5048" = load i1, i1* %"P0_Bool"
  %".5049" = icmp eq i1 %".5048", 1
  br i1 %".5049", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".5052" = load i32, i32* %"R21_NOTYPE"
  %"llvm_abs_result.4" = call i32 @"llvm.abs"(i32 %".5052", i1 0)
  %"fmul.305" = fmul i32 %"llvm_abs_result.4", 2.885390043258667
  store i32 %"fmul.305", i32* %"R5_NOTYPE"
  ; MOV R7, 0x3f800000
  store i32 1065353216, i32* %"R7_NOTYPE"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".5057" = load i32, i32* %"R21_NOTYPE"
  %"llvm_abs_result.5" = call i32 @"llvm.abs"(i32 %".5057", i1 0)
  %".5058" = load i1, i1* %"PT_Bool"
  %"cmp.58" = icmp sge i32 %"llvm_abs_result.5", 9.010913848876953
  %".5059" = and i1 %"cmp.58", %".5058"
  store i1 %".5059", i1* %"P0_Bool"
  ; MUFU.EX2 R5, R5
  %".5062" = load i32, i32* %"R5_NOTYPE"
  %"sint_to_f32.5" = sitofp i32 %".5062" to float
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %"sint_to_f32.5")
  %"fp_to_sint32.5" = fptosi float %"llvm_exp2_f32_result.5" to i32
  store i32 %"fp_to_sint32.5", i32* %"R5_NOTYPE"
  ; FADD R6, R5, 1
  %".5065" = load i32, i32* %"R5_NOTYPE"
  %"fadd.255" = fadd i32 %".5065", 1
  store i32 %"fadd.255", i32* %"R6_NOTYPE"
  ; MUFU.RCP R6, R6
  %".5068" = load i32, i32* %"R6_NOTYPE"
  %".5069" = fdiv i32 1, %".5068"
  store i32 %".5069", i32* %"R6_NOTYPE"
  ; FFMA R4, R6, -2, R7
  %".5072" = load i32, i32* %"R6_NOTYPE"
  %".5073" = load i32, i32* %"R7_NOTYPE"
  %"fmul.306" = fmul i32 %".5072", -2
  %"fadd.256" = fadd i32 %"fmul.306", %".5073"
  store i32 %"fadd.256", i32* %"R4_NOTYPE"
  ; FSEL R4, R4, 1, !P0
  %".5076" = load i32, i32* %"R4_NOTYPE"
  %".5077" = load i1, i1* %"P0_Bool"
  %".5078" = icmp eq i1 %".5077", 1
  %"fsel.1" = select  i1 %".5078", i32 %".5076", i32 1
  store i32 %"fsel.1", i32* %"R4_NOTYPE"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".5081" = load i32, i32* %"R4_NOTYPE"
  %".5082" = load i32, i32* %"R21_NOTYPE"
  %".5083" = or i32 %".5081", 2147483648
  %".5084" = or i32 %".5081", %".5082"
  %".5085" = and i32 %".5083", %".5084"
  store i32 %".5085", i32* %"R4_NOTYPE"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  store i32 1015083138, i32* %"R5_NOTYPE"
  ; FMUL R4, R21, R21
  %".5092" = load i32, i32* %"R21_NOTYPE"
  %".5093" = load i32, i32* %"R21_NOTYPE"
  %"fmul.307" = fmul i32 %".5092", %".5093"
  store i32 %"fmul.307", i32* %"R4_NOTYPE"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".5096" = load i32, i32* %"R4_NOTYPE"
  %".5097" = load i32, i32* %"R5_NOTYPE"
  %"fmul.308" = fmul i32 %".5096", %".5097"
  %"fadd.257" = fadd i32 %"fmul.308", -0.05230396240949631
  store i32 %"fadd.257", i32* %"R5_NOTYPE"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".5100" = load i32, i32* %"R4_NOTYPE"
  %".5101" = load i32, i32* %"R5_NOTYPE"
  %"fmul.309" = fmul i32 %".5100", %".5101"
  %"fadd.258" = fadd i32 %"fmul.309", 0.13315297663211823
  store i32 %"fadd.258", i32* %"R5_NOTYPE"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".5104" = load i32, i32* %"R4_NOTYPE"
  %".5105" = load i32, i32* %"R5_NOTYPE"
  %"fmul.310" = fmul i32 %".5104", %".5105"
  %"fadd.259" = fadd i32 %"fmul.310", -0.33332768082618713
  store i32 %"fadd.259", i32* %"R5_NOTYPE"
  ; FFMA R4, R4, R5, RZ
  %".5108" = load i32, i32* %"R4_NOTYPE"
  %".5109" = load i32, i32* %"R5_NOTYPE"
  %"fmul.311" = fmul i32 %".5108", %".5109"
  %"fadd.260" = fadd i32 %"fmul.311", 0
  store i32 %"fadd.260", i32* %"R4_NOTYPE"
  ; FFMA R4, R21, R4, R21
  %".5112" = load i32, i32* %"R21_NOTYPE"
  %".5113" = load i32, i32* %"R4_NOTYPE"
  %".5114" = load i32, i32* %"R21_NOTYPE"
  %"fmul.312" = fmul i32 %".5112", %".5113"
  %"fadd.261" = fadd i32 %"fmul.312", %".5114"
  store i32 %"fadd.261", i32* %"R4_NOTYPE"
.L_x_43:
  ; BSYNC B0
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  %".5118" = load i32, i32* %"R23_NOTYPE"
  %"add.310" = add i32 %".5118", 25165824
  %"add.311" = add i32 %"add.310", 0
  store i32 %"add.311", i32* %"R5_NOTYPE"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".5123" = load i32, i32* %"R5_NOTYPE"
  %".5124" = and i32 %".5123", 2139095040
  store i32 %".5124", i32* %"R5_NOTYPE"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".5127" = load i32, i32* %"R5_NOTYPE"
  %".5128" = load i1, i1* %"PT_Bool"
  %"cmp.59" = icmp sgt i32 %".5127", 33554431
  %".5129" = and i1 %"cmp.59", %".5128"
  store i1 %".5129", i1* %"P0_Bool"
  ; @P0 BRA `(.L_x_45)
  %".5132" = load i1, i1* %"P0_Bool"
  %".5133" = icmp ne i1 %".5132", 1
  br i1 %".5133", label %".L_x_45", label %".L_x_41_split_0x47f0"
.L_x_41_split_0x47f0:
  ; MOV R24, R23
  %".5136" = load i32, i32* %"R23_NOTYPE"
  store i32 %".5136", i32* %"R24_NOTYPE"
  ; MOV R10, 0x4820
  store i32 18464, i32* %"R10_NOTYPE"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.3" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R5, R22
  %".5142" = load i32, i32* %"R22_NOTYPE"
  store i32 %".5142", i32* %"R5_NOTYPE"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".5147" = load i32, i32* %"R23_NOTYPE"
  %".5148" = fdiv i32 1, %".5147"
  store i32 %".5148", i32* %"R6_NOTYPE"
  ; FFMA R5, R23, R6, -1
  %".5151" = load i32, i32* %"R23_NOTYPE"
  %".5152" = load i32, i32* %"R6_NOTYPE"
  %"fmul.313" = fmul i32 %".5151", %".5152"
  %"fadd.262" = fadd i32 %"fmul.313", -1
  store i32 %"fadd.262", i32* %"R5_NOTYPE"
  ; FADD.FTZ R5, -R5, -RZ
  %".5155" = load i32, i32* %"R5_NOTYPE"
  %".5156" = sub i32 0, %".5155"
  %"fadd.263" = fadd i32 %".5156", 0
  store i32 %"fadd.263", i32* %"R5_NOTYPE"
  ; FFMA R5, R6, R5, R6
  %".5159" = load i32, i32* %"R6_NOTYPE"
  %".5160" = load i32, i32* %"R5_NOTYPE"
  %".5161" = load i32, i32* %"R6_NOTYPE"
  %"fmul.314" = fmul i32 %".5159", %".5160"
  %"fadd.264" = fadd i32 %"fmul.314", %".5161"
  store i32 %"fadd.264", i32* %"R5_NOTYPE"
.L_x_46:
  ; BSYNC B0
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  %".5165" = load i32, i32* %"R28_NOTYPE"
  %".5166" = add i32 %".5165", 0
  %"for_LDG.345" = inttoptr i32 %".5166" to i32*
  %".5167" = load i32, i32* %"for_LDG.345"
  store i32 %".5167", i32* %"R6_NOTYPE"
  ; FADD R7, -R5, 1
  %".5170" = load i32, i32* %"R5_NOTYPE"
  %".5171" = sub i32 0, %".5170"
  %"fadd.265" = fadd i32 %".5171", 1
  store i32 %"fadd.265", i32* %"R7_NOTYPE"
  ; FMUL R6, R6, R5
  %".5174" = load i32, i32* %"R6_NOTYPE"
  %".5175" = load i32, i32* %"R5_NOTYPE"
  %"fmul.315" = fmul i32 %".5174", %".5175"
  store i32 %"fmul.315", i32* %"R6_NOTYPE"
  ; FFMA R7, R7, R4, R6
  %".5178" = load i32, i32* %"R7_NOTYPE"
  %".5179" = load i32, i32* %"R4_NOTYPE"
  %".5180" = load i32, i32* %"R6_NOTYPE"
  %"fmul.316" = fmul i32 %".5178", %".5179"
  %"fadd.266" = fadd i32 %"fmul.316", %".5180"
  store i32 %"fadd.266", i32* %"R7_NOTYPE"
  ; STG.E.SYS [R28], R7
  %".5183" = load i32, i32* %"R7_NOTYPE"
  %".5184" = load i32, i32* %"R28_NOTYPE"
  %".5185" = add i32 %".5184", 0
  %"for_STG.1" = inttoptr i32 %".5185" to i32*
  store i32 %".5183", i32* %"for_STG.1"
  ; @!P3 BRA `(.L_x_47)
  %".5188" = load i1, i1* %"P3_Bool"
  %".5189" = icmp eq i1 %".5188", 1
  br i1 %".5189", label %".L_x_47", label %".L_x_44_split_0x48f0"
.L_x_44_split_0x48f0:
  ; EXIT
  br label %"ExitFunction"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

declare float @"llvm.exp2.f32"(float %".1")

define float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
{
Entry_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath:
  %"R11_NOTYPE" = alloca i32, i32 8
  %"R24_NOTYPE" = alloca i32, i32 8
  %"RZ_NOTYPE" = alloca i32, i32 8
  %"R25_NOTYPE" = alloca i32, i32 8
  %"P0_Bool" = alloca i1, i32 8
  %"PT_Bool" = alloca i1, i32 8
  %"R12_NOTYPE" = alloca i32, i32 8
  %"R13_NOTYPE" = alloca i32, i32 8
  %"R22_NOTYPE" = alloca i32, i32 8
  %"R34_NOTYPE" = alloca i32, i32 8
  %"R23_NOTYPE" = alloca i32, i32 8
  %"P1_Bool" = alloca i1, i32 8
  %"P2_Bool" = alloca i1, i32 8
  %"R10_NOTYPE" = alloca i32, i32 8
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".4" = icmp ult i32 1, 32
  %"SHF_min" = select  i1 %".4", i32 1, i32 32
  %".5" = load i32, i32* %"R24_NOTYPE"
  %"zext" = zext i32 0 to i64
  %"zext.1" = zext i32 %".5" to i64
  %"zext.2" = zext i32 1 to i64
  %"shl" = shl i64 %"zext", 32
  %"or" = or i64 %"shl", %"zext.1"
  %"shl.1" = shl i64 %"or", %"zext.2"
  %"and" = and i64 %"shl.1", 4294967295
  %"trunc32" = trunc i64 %"and" to i32
  store i32 %"trunc32", i32* %"R11_NOTYPE"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".10" = icmp ult i32 24, 32
  %"SHF_min.1" = select  i1 %".10", i32 24, i32 32
  %".11" = load i32, i32* %"R11_NOTYPE"
  %"zext.3" = zext i32 %".11" to i64
  %"zext.4" = zext i32 0 to i64
  %"zext.5" = zext i32 24 to i64
  %"shl.2" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.2", %"zext.4"
  %"lshr" = lshr i64 %"or.1", %"zext.5"
  %"lshr.1" = lshr i64 %"lshr", 32
  %"trunc32.1" = trunc i64 %"lshr.1" to i32
  store i32 %"trunc32.1", i32* %"R25_NOTYPE"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".14" = load i32, i32* %"R25_NOTYPE"
  %".15" = load i1, i1* %"PT_Bool"
  %"cmp" = icmp ne i32 %".14", 0
  %".16" = and i1 %"cmp", %".15"
  store i1 %".16", i1* %"P0_Bool"
  ; @P0 BRA `(.L_x_49)
  %".19" = load i1, i1* %"P0_Bool"
  %".20" = icmp ne i1 %".19", 1
  br i1 %".20", label %".L_x_49", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".23" = icmp ult i32 1, 32
  %"SHF_min.2" = select  i1 %".23", i32 1, i32 32
  %".24" = load i32, i32* %"R24_NOTYPE"
  %"zext.6" = zext i32 0 to i64
  %"zext.7" = zext i32 %".24" to i64
  %"zext.8" = zext i32 1 to i64
  %"shl.3" = shl i64 %"zext.6", 32
  %"or.2" = or i64 %"shl.3", %"zext.7"
  %"shl.4" = shl i64 %"or.2", %"zext.8"
  %"and.1" = and i64 %"shl.4", 4294967295
  %"trunc32.2" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.2", i32* %"R11_NOTYPE"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".27" = load i32, i32* %"R11_NOTYPE"
  %".28" = load i1, i1* %"PT_Bool"
  %"cmp.1" = icmp ne i32 %".27", 0
  %".29" = and i1 %"cmp.1", %".28"
  store i1 %".29", i1* %"P0_Bool"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".32" = load i1, i1* %"P0_Bool"
  %".33" = icmp ne i1 %".32", 1
  br i1 %".33", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".36" = load i32, i32* %"R24_NOTYPE"
  %"fmul" = fmul i32 %".36", 1.8446744073709552e+19
  %"fadd" = fadd i32 %"fmul", 0
  store i32 %"fadd", i32* %"R12_NOTYPE"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990:
  ; @!P0 MUFU.RCP R11, R24
  %".41" = load i1, i1* %"P0_Bool"
  %".42" = icmp eq i1 %".41", 1
  br i1 %".42", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".45" = load i32, i32* %"R24_NOTYPE"
  %".46" = fdiv i32 1, %".45"
  store i32 %".46", i32* %"R11_NOTYPE"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0:
  ; @P0 MUFU.RCP R13, R12
  %".51" = load i1, i1* %"P0_Bool"
  %".52" = icmp ne i1 %".51", 1
  br i1 %".52", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".55" = load i32, i32* %"R12_NOTYPE"
  %".56" = fdiv i32 1, %".55"
  store i32 %".56", i32* %"R13_NOTYPE"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0:
  ; @P0 FFMA R22, R12, R13, -1
  %".61" = load i1, i1* %"P0_Bool"
  %".62" = icmp ne i1 %".61", 1
  br i1 %".62", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".65" = load i32, i32* %"R12_NOTYPE"
  %".66" = load i32, i32* %"R13_NOTYPE"
  %"fmul.1" = fmul i32 %".65", %".66"
  %"fadd.1" = fadd i32 %"fmul.1", -1
  store i32 %"fadd.1", i32* %"R22_NOTYPE"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".71" = load i1, i1* %"P0_Bool"
  %".72" = icmp ne i1 %".71", 1
  br i1 %".72", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".75" = load i32, i32* %"R22_NOTYPE"
  %".76" = sub i32 0, %".75"
  %"fadd.2" = fadd i32 %".76", 0
  store i32 %"fadd.2", i32* %"R22_NOTYPE"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0:
  ; @P0 FFMA R22, R13, R22, R13
  %".81" = load i1, i1* %"P0_Bool"
  %".82" = icmp ne i1 %".81", 1
  br i1 %".82", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".85" = load i32, i32* %"R13_NOTYPE"
  %".86" = load i32, i32* %"R22_NOTYPE"
  %".87" = load i32, i32* %"R13_NOTYPE"
  %"fmul.2" = fmul i32 %".85", %".86"
  %"fadd.3" = fadd i32 %"fmul.2", %".87"
  store i32 %"fadd.3", i32* %"R22_NOTYPE"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".92" = load i1, i1* %"P0_Bool"
  %".93" = icmp ne i1 %".92", 1
  br i1 %".93", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".96" = load i32, i32* %"R22_NOTYPE"
  %"fmul.3" = fmul i32 %".96", 1.8446744073709552e+19
  %"fadd.4" = fadd i32 %"fmul.3", 0
  store i32 %"fadd.4", i32* %"R11_NOTYPE"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0:
  ; BRA `(.L_x_50)
  br label %".L_x_50"
.L_x_49:
  ; IADD3 R34, R25, -0xfd, RZ
  %".103" = load i32, i32* %"R25_NOTYPE"
  %"add" = add i32 %".103", -253
  %"add.1" = add i32 %"add", 0
  store i32 %"add.1", i32* %"R34_NOTYPE"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".106" = load i32, i32* %"R34_NOTYPE"
  %".107" = load i1, i1* %"PT_Bool"
  %"cmp.2" = icmp sgt i32 %".106", 1
  %".108" = and i1 %"cmp.2", %".107"
  store i1 %".108", i1* %"P0_Bool"
  ; @P0 BRA `(.L_x_51)
  %".111" = load i1, i1* %"P0_Bool"
  %".112" = icmp ne i1 %".111", 1
  br i1 %".112", label %".L_x_51", label %".L_x_49_split_0x4a30"
.L_x_49_split_0x4a30:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".115" = load i32, i32* %"R24_NOTYPE"
  %".116" = and i32 %".115", 8388607
  store i32 %".116", i32* %"R11_NOTYPE"
  ; MOV R23, 0x3
  store i32 3, i32* %"R23_NOTYPE"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".121" = load i32, i32* %"R11_NOTYPE"
  %".122" = or i32 %".121", 1065353216
  store i32 %".122", i32* %"R11_NOTYPE"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".125" = load i32, i32* %"R34_NOTYPE"
  %".126" = icmp ult i32 %".125", 32
  %"SHF_min.3" = select  i1 %".126", i32 %".125", i32 32
  %".127" = load i32, i32* %"R23_NOTYPE"
  %".128" = load i32, i32* %"R34_NOTYPE"
  %"zext.9" = zext i32 0 to i64
  %"zext.10" = zext i32 %".127" to i64
  %"zext.11" = zext i32 %".128" to i64
  %"shl.5" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.5", %"zext.10"
  %"shl.6" = shl i64 %"or.3", %"zext.11"
  %"and.2" = and i64 %"shl.6", 4294967295
  %"trunc32.3" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.3", i32* %"R23_NOTYPE"
  ; MUFU.RCP R12, R11
  %".131" = load i32, i32* %"R11_NOTYPE"
  %".132" = fdiv i32 1, %".131"
  store i32 %".132", i32* %"R12_NOTYPE"
  ; FFMA R13, R11, R12, -1
  %".135" = load i32, i32* %"R11_NOTYPE"
  %".136" = load i32, i32* %"R12_NOTYPE"
  %"fmul.4" = fmul i32 %".135", %".136"
  %"fadd.5" = fadd i32 %"fmul.4", -1
  store i32 %"fadd.5", i32* %"R13_NOTYPE"
  ; FADD.FTZ R13, -R13, -RZ
  %".139" = load i32, i32* %"R13_NOTYPE"
  %".140" = sub i32 0, %".139"
  %"fadd.6" = fadd i32 %".140", 0
  store i32 %"fadd.6", i32* %"R13_NOTYPE"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".143" = load i32, i32* %"R12_NOTYPE"
  %".144" = load i32, i32* %"R13_NOTYPE"
  %".145" = load i32, i32* %"R12_NOTYPE"
  %"fmul.5" = fmul i32 %".143", %".144"
  %"fadd.7" = fadd i32 %"fmul.5", %".145"
  store i32 %"fadd.7", i32* %"R22_NOTYPE"
  ; FFMA.RP R13, R12, R13, R12
  %".148" = load i32, i32* %"R12_NOTYPE"
  %".149" = load i32, i32* %"R13_NOTYPE"
  %".150" = load i32, i32* %"R12_NOTYPE"
  %"fmul.6" = fmul i32 %".148", %".149"
  %"fadd.8" = fadd i32 %"fmul.6", %".150"
  store i32 %"fadd.8", i32* %"R13_NOTYPE"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".153" = load i32, i32* %"R22_NOTYPE"
  %".154" = and i32 %".153", 8388607
  store i32 %".154", i32* %"R12_NOTYPE"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".157" = load i32, i32* %"R22_NOTYPE"
  %".158" = load i32, i32* %"R13_NOTYPE"
  %".159" = load i1, i1* %"PT_Bool"
  %"cmp.3" = icmp ne i32 %".157", %".158"
  %".160" = and i1 %"cmp.3", %".159"
  store i1 %".160", i1* %"P0_Bool"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".163" = load i32, i32* %"R12_NOTYPE"
  %".164" = or i32 %".163", 8388608
  store i32 %".164", i32* %"R12_NOTYPE"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".167" = load i1, i1* %"P0_Bool"
  %".168" = icmp eq i1 %".167", 1
  %"sel" = select  i1 %".168", i32 0, i32 4294967295
  store i32 %"sel", i32* %"R13_NOTYPE"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".171" = load i32, i32* %"R23_NOTYPE"
  %".172" = load i32, i32* %"R12_NOTYPE"
  %".173" = and i32 %".171", %".172"
  store i32 %".173", i32* %"R23_NOTYPE"
  ; IADD3 R13, -R13, RZ, RZ
  %".176" = load i32, i32* %"R13_NOTYPE"
  %".177" = sub i32 0, %".176"
  %"add.2" = add i32 %".177", 0
  %"add.3" = add i32 %"add.2", 0
  store i32 %"add.3", i32* %"R13_NOTYPE"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".180" = load i32, i32* %"R34_NOTYPE"
  %".181" = icmp ult i32 %".180", 32
  %"SHF_min.4" = select  i1 %".181", i32 %".180", i32 32
  %".182" = load i32, i32* %"R23_NOTYPE"
  %".183" = load i32, i32* %"R34_NOTYPE"
  %"zext.12" = zext i32 %".182" to i64
  %"zext.13" = zext i32 0 to i64
  %"zext.14" = zext i32 %".183" to i64
  %"shl.7" = shl i64 %"zext.12", 32
  %"or.4" = or i64 %"shl.7", %"zext.13"
  %"lshr.2" = lshr i64 %"or.4", %"zext.14"
  %"lshr.3" = lshr i64 %"lshr.2", 32
  %"trunc32.4" = trunc i64 %"lshr.3" to i32
  store i32 %"trunc32.4", i32* %"R23_NOTYPE"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".186" = load i32, i32* %"R13_NOTYPE"
  %".187" = load i32, i32* %"R34_NOTYPE"
  %".188" = load i32, i32* %"R12_NOTYPE"
  %"LOP3_result" = call i32 @"custom_lop3"(i32 %".188", i32 0, i32 %".186", i32 %".187")
  %"trunc1" = trunc i32 %"LOP3_result" to i1
  store i1 %"trunc1", i1* %"P1_Bool"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".191" = load i32, i32* %"R23_NOTYPE"
  %"LOP3_result.1" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".191", i32 1)
  %"trunc1.1" = trunc i32 %"LOP3_result.1" to i1
  store i1 %"trunc1.1", i1* %"P0_Bool"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".194" = load i32, i32* %"R23_NOTYPE"
  %"LOP3_result.2" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".194", i32 2)
  %"trunc1.2" = trunc i32 %"LOP3_result.2" to i1
  store i1 %"trunc1.2", i1* %"P2_Bool"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".197" = load i1, i1* %"P0_Bool"
  %".198" = sub i1 0, %".197"
  %".199" = load i1, i1* %"P1_Bool"
  %".200" = sub i1 0, %".199"
  %".201" = or i1 %".198", %".200"
  %".202" = and i1 %".201", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".204" = load i32, i32* %"R24_NOTYPE"
  %"LOP3_result.3" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".204", i32 8388607)
  %"trunc1.3" = trunc i32 %"LOP3_result.3" to i1
  store i1 %"trunc1.3", i1* %"P1_Bool"
  ; SEL R11, RZ, 0x1, !P0
  %".207" = load i1, i1* %"P0_Bool"
  %".208" = icmp eq i1 %".207", 1
  %"sel.1" = select  i1 %".208", i32 0, i32 1
  store i32 %"sel.1", i32* %"R11_NOTYPE"
  ; IADD3 R11, -R11, RZ, RZ
  %".211" = load i32, i32* %"R11_NOTYPE"
  %".212" = sub i32 0, %".211"
  %"add.4" = add i32 %".212", 0
  %"add.5" = add i32 %"add.4", 0
  store i32 %"add.5", i32* %"R11_NOTYPE"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".215" = load i32, i32* %"R11_NOTYPE"
  %".216" = load i1, i1* %"PT_Bool"
  %"cmp.4" = icmp sge i32 %".215", 0
  %".217" = and i1 %"cmp.4", %".216"
  store i1 %".217", i1* %"P0_Bool"
  ; IADD3 R11, R25, -0xfc, RZ
  %".220" = load i32, i32* %"R25_NOTYPE"
  %"add.6" = add i32 %".220", -252
  %"add.7" = add i32 %"add.6", 0
  store i32 %"add.7", i32* %"R11_NOTYPE"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".223" = load i32, i32* %"R11_NOTYPE"
  %".224" = icmp ult i32 %".223", 32
  %"SHF_min.5" = select  i1 %".224", i32 %".223", i32 32
  %".225" = load i32, i32* %"R12_NOTYPE"
  %".226" = load i32, i32* %"R11_NOTYPE"
  %"zext.15" = zext i32 %".225" to i64
  %"zext.16" = zext i32 0 to i64
  %"zext.17" = zext i32 %".226" to i64
  %"shl.8" = shl i64 %"zext.15", 32
  %"or.5" = or i64 %"shl.8", %"zext.16"
  %"lshr.4" = lshr i64 %"or.5", %"zext.17"
  %"lshr.5" = lshr i64 %"lshr.4", 32
  %"trunc32.5" = trunc i64 %"lshr.5" to i32
  store i32 %"trunc32.5", i32* %"R11_NOTYPE"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".229" = load i1, i1* %"P0_Bool"
  %".230" = icmp eq i1 %".229", 1
  br i1 %".230", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4be0"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".233" = load i32, i32* %"R11_NOTYPE"
  %"add.8" = add i32 %".233", 1
  %"add.9" = add i32 %"add.8", 0
  store i32 %"add.9", i32* %"R11_NOTYPE"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0"
.L_x_49_split_0x4be0:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".238" = load i1, i1* %"P1_Bool"
  %".239" = icmp eq i1 %".238", 1
  br i1 %".239", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0", label %".L_x_49_split_0x4bf0"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".242" = icmp ult i32 1, 32
  %"SHF_min.6" = select  i1 %".242", i32 1, i32 32
  %".243" = load i32, i32* %"R11_NOTYPE"
  %"zext.18" = zext i32 0 to i64
  %"zext.19" = zext i32 %".243" to i64
  %"zext.20" = zext i32 1 to i64
  %"shl.9" = shl i64 %"zext.18", 32
  %"or.6" = or i64 %"shl.9", %"zext.19"
  %"shl.10" = shl i64 %"or.6", %"zext.20"
  %"and.3" = and i64 %"shl.10", 4294967295
  %"trunc32.6" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.6", i32* %"R11_NOTYPE"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0"
.L_x_49_split_0x4bf0:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".248" = load i32, i32* %"R11_NOTYPE"
  %".249" = load i32, i32* %"R24_NOTYPE"
  %".250" = or i32 %".248", 2147483648
  %".251" = or i32 %".248", %".249"
  %".252" = and i32 %".250", %".251"
  store i32 %".252", i32* %"R11_NOTYPE"
  ; BRA `(.L_x_50)
  br label %".L_x_50"
.L_x_51:
  ; MUFU.RCP R11, R24
  %".257" = load i32, i32* %"R24_NOTYPE"
  %".258" = fdiv i32 1, %".257"
  store i32 %".258", i32* %"R11_NOTYPE"
.L_x_50:
  ; BSYNC B1
.L_x_48:
  ; MOV R22, R11
  %".262" = load i32, i32* %"R11_NOTYPE"
  store i32 %".262", i32* %"R22_NOTYPE"
  ; MOV R11, 0x0
  store i32 0, i32* %"R11_NOTYPE"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
.L_x_52:
  ; BRA `(.L_x_52)
  br label %".L_x_52"
ExitFunction:
  ret void
}

declare i32 @"llvm.abs"(i32 %".1", i1 %".2")

