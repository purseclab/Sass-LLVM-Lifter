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
  %"R1" = alloca i32, i32 1
  %"R14" = alloca i32, i32 1
  %"R0" = alloca i32, i32 1
  %"R3" = alloca i32, i32 1
  %"P0" = alloca i1, i32 1
  %"PT" = alloca i1, i32 1
  %"RZ" = alloca i32, i32 1
  %"R33" = alloca i32, i32 1
  %"R15" = alloca i32, i32 1
  %"R26" = alloca i32, i32 1
  %"R30" = alloca i32, i32 1
  %"R5" = alloca i32, i32 1
  %"R28" = alloca i32, i32 1
  %"R2" = alloca i32, i32 1
  %"R32" = alloca i32, i32 1
  %"R4" = alloca i32, i32 1
  %"R6" = alloca i32, i32 1
  %"R7" = alloca i32, i32 1
  %"R8" = alloca i32, i32 1
  %"P4" = alloca i1, i32 1
  %"P3" = alloca i1, i32 1
  %"R52" = alloca i32, i32 1
  %"R54" = alloca i32, i32 1
  %"R11" = alloca i32, i32 1
  %"R9" = alloca i32, i32 1
  %"P1" = alloca i1, i32 1
  %"R25" = alloca i32, i32 1
  %"R18" = alloca i32, i32 1
  %"R23" = alloca i32, i32 1
  %"R38" = alloca i32, i32 1
  %"R16" = alloca i32, i32 1
  %"R20" = alloca i32, i32 1
  %"R57" = alloca i32, i32 1
  %"R56" = alloca i32, i32 1
  %"R58" = alloca i32, i32 1
  %"R24" = alloca i32, i32 1
  %"R47" = alloca i32, i32 1
  %"R49" = alloca i32, i32 1
  %"R22" = alloca i32, i32 1
  %"R43" = alloca i32, i32 1
  %"R45" = alloca i32, i32 1
  %"R13" = alloca i32, i32 1
  %"R41" = alloca i32, i32 1
  %"R51" = alloca i32, i32 1
  %"R35" = alloca i32, i32 1
  %"R40" = alloca i32, i32 1
  %"R37" = alloca i32, i32 1
  %"R12" = alloca i32, i32 1
  %"R34" = alloca i32, i32 1
  %"R10" = alloca i32, i32 1
  %"R36" = alloca i32, i32 1
  %"R17" = alloca i32, i32 1
  %"R19" = alloca i32, i32 1
  %"R21" = alloca i32, i32 1
  %"R42" = alloca i32, i32 1
  %"R44" = alloca i32, i32 1
  %"R46" = alloca i32, i32 1
  %"R48" = alloca i32, i32 1
  %"R50" = alloca i32, i32 1
  %"R53" = alloca i32, i32 1
  %"R59" = alloca i32, i32 1
  %"R55" = alloca i32, i32 1
  %"R61" = alloca i32, i32 1
  %"R60" = alloca i32, i32 1
  %"R39" = alloca i32, i32 1
  %"P2" = alloca i1, i32 1
  ; MOV R1, c[0x0][0x28]
  store i32 %"Arg_1", ptr %"R1"
  ; S2R R14, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R14"
  ; MOV R0, c[0x0][0x188]
  store i32 %"Arg_8", ptr %"R0"
  ; S2R R3, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R3"
  ; ISETP.GE.AND P0, PT, R0, 0x1, PT
  %".21" = load i32, ptr %"R0"
  %".22" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".21", 1
  %".23" = and i1 %"cmp", %".22"
  store i1 %".23", ptr %"P0"
  ; IMAD R14, R14, c[0x0][0x0], R3
  %".26" = load i32, ptr %"R14"
  %".27" = load i32, ptr %"R3"
  %"mul" = mul i32 %".26", %"Arg_0"
  %"add" = add i32 %"mul", %".27"
  store i32 %"add", ptr %"R14"
  ; ISETP.GE.OR P0, PT, R14, c[0x0][0x184], !P0
  %".30" = load i32, ptr %"R14"
  %".31" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".30", %"Arg_7"
  %".32" = or i1 %"cmp.1", %".31"
  store i1 %".32", ptr %"P0"
  ; @P0 EXIT
  %".35" = load i1, ptr %"P0"
  %".36" = icmp ne i1 %".35", 1
  br i1 %".36", label %".text._Z11gru_forwardPfS_S_S_iii_conditionalExpr_0x0070", label %".text._Z11gru_forwardPfS_S_S_iii_split_0x0080"
.text._Z11gru_forwardPfS_S_S_iii_conditionalExpr_0x0070:
  ; EXIT
  br label %"ExitFunction"
.text._Z11gru_forwardPfS_S_S_iii_split_0x0080:
  ; ISETP.LT.AND P0, PT, RZ, c[0x0][0x180], PT
  %".41" = load i1, ptr %"PT"
  %"cmp.2" = icmp slt i32 0, %"Arg_6"
  %".42" = and i1 %"cmp.2", %".41"
  store i1 %".42", ptr %"P0"
  ; IMAD R0, R14.reuse, c[0x0][0x184], RZ
  %".45" = load i32, ptr %"R14"
  %"mul.1" = mul i32 %".45", %"Arg_7"
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", ptr %"R0"
  ; MOV R33, 0x4
  store i32 4, ptr %"R33"
  ; MOV R3, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R3"
  ; MOV R15, c[0x0][0x180]
  store i32 %"Arg_6", ptr %"R15"
  ; IMAD.WIDE R26, R14.reuse, R33.reuse, c[0x0][0x178]
  %".54" = load i32, ptr %"R14"
  %".55" = load i32, ptr %"R33"
  %"mul.2" = mul i32 %".54", %".55"
  %"add.2" = add i32 %"mul.2", %"Arg_5"
  store i32 %"add.2", ptr %"R26"
  ; LEA R30, R3, R14, 0x1
  %".58" = load i32, ptr %"R3"
  %".59" = load i32, ptr %"R14"
  %"shl" = shl i32 %".58", 1
  %"add.3" = add i32 %"shl", %".59"
  store i32 %"add.3", ptr %"R30"
  ; MOV R5, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R5"
  ; IMAD.WIDE R28, R14, R33, c[0x0][0x168]
  %".64" = load i32, ptr %"R14"
  %".65" = load i32, ptr %"R33"
  %"mul.3" = mul i32 %".64", %".65"
  %"add.4" = add i32 %"mul.3", %"Arg_3"
  store i32 %"add.4", ptr %"R28"
  ; LEA R3, R15, R15, 0x2
  %".68" = load i32, ptr %"R15"
  %".69" = load i32, ptr %"R15"
  %"shl.1" = shl i32 %".68", 2
  %"add.5" = add i32 %"shl.1", %".69"
  store i32 %"add.5", ptr %"R3"
  ; IMAD.WIDE R30, R30, R33, c[0x0][0x178]
  %".72" = load i32, ptr %"R30"
  %".73" = load i32, ptr %"R33"
  %"mul.4" = mul i32 %".72", %".73"
  %"add.6" = add i32 %"mul.4", %"Arg_5"
  store i32 %"add.6", ptr %"R30"
  ; IMAD R2, R5, c[0x0][0x180], RZ
  %".76" = load i32, ptr %"R5"
  %"mul.5" = mul i32 %".76", %"Arg_6"
  %"add.7" = add i32 %"mul.5", 0
  store i32 %"add.7", ptr %"R2"
  ; IMAD R3, R3, c[0x0][0x184], R0
  %".79" = load i32, ptr %"R3"
  %".80" = load i32, ptr %"R0"
  %"mul.6" = mul i32 %".79", %"Arg_7"
  %"add.8" = add i32 %"mul.6", %".80"
  store i32 %"add.8", ptr %"R3"
  ; IMAD.WIDE R32, R33, c[0x0][0x184], R26
  %".83" = load i32, ptr %"R33"
  %".84" = load i32, ptr %"R26"
  %"mul.7" = mul i32 %".83", %"Arg_7"
  %"add.9" = add i32 %"mul.7", %".84"
  store i32 %"add.9", ptr %"R32"
  ; @P0 BRA `(.L_x_0)
  %".87" = load i1, ptr %"P0"
  %".88" = icmp ne i1 %".87", 1
  br i1 %".88", label %".L_x_0", label %".text._Z11gru_forwardPfS_S_S_iii_split_0x0170"
.text._Z11gru_forwardPfS_S_S_iii_split_0x0170:
  ; LOP3.LUT R4, R5.reuse, 0x3, RZ, 0xc0, !PT
  %".91" = load i32, ptr %"R5"
  %".92" = and i32 %".91", 3
  store i32 %".92", ptr %"R4"
  ; IADD3 R5, R5, -0x1, RZ
  %".95" = load i32, ptr %"R5"
  %"add.10" = add i32 %".95", -1
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", ptr %"R5"
  ; MOV R6, RZ
  %".98" = load i32, ptr %"RZ"
  store i32 %".98", ptr %"R6"
  ; IADD3 R7, -R4, c[0x0][0x184], RZ
  %".101" = load i32, ptr %"R4"
  %".102" = sub i32 0, %".101"
  %"add.12" = add i32 %".102", %"Arg_7"
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", ptr %"R7"
  br label %".L_x_22"
.L_x_22:
  ; MOV R8, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R8"
  ; IADD3 R6, R6, 0x1, RZ
  %".108" = load i32, ptr %"R6"
  %"add.14" = add i32 %".108", 1
  %"add.15" = add i32 %"add.14", 0
  store i32 %"add.15", ptr %"R6"
  ; ISETP.GE.AND P4, PT, R8, 0x1, PT
  %".111" = load i32, ptr %"R8"
  %".112" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".111", 1
  %".113" = and i1 %"cmp.3", %".112"
  store i1 %".113", ptr %"P4"
  ; ISETP.GE.AND P3, PT, R6, c[0x0][0x188], PT
  %".116" = load i32, ptr %"R6"
  %".117" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".116", %"Arg_8"
  %".118" = and i1 %"cmp.4", %".117"
  store i1 %".118", ptr %"P3"
  ; MOV R8, RZ
  %".121" = load float, ptr %"RZ"
  %".122" = bitcast ptr %"R8" to ptr
  store float %".121", ptr %".122"
  ; MOV R52, RZ
  %".125" = load float, ptr %"RZ"
  %".126" = bitcast ptr %"R52" to ptr
  store float %".125", ptr %".126"
  ; MOV R54, RZ
  %".129" = load float, ptr %"RZ"
  %".130" = bitcast ptr %"R54" to ptr
  store float %".129", ptr %".130"
  ; @!P4 BRA `(.L_x_1)
  %".133" = load i1, ptr %"P4"
  %".134" = icmp eq i1 %".133", 1
  br i1 %".134", label %".L_x_1", label %".L_x_22_split_0x0230"
.L_x_22_split_0x0230:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".137" = load i32, ptr %"R5"
  %".138" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".137", 3
  %".139" = and i1 %"cmp.5", %".138"
  store i1 %".139", ptr %"P0"
  ; MOV R54, RZ
  %".142" = load float, ptr %"RZ"
  %".143" = bitcast ptr %"R54" to ptr
  store float %".142", ptr %".143"
  ; MOV R11, RZ
  %".146" = load i32, ptr %"RZ"
  store i32 %".146", ptr %"R11"
  ; MOV R52, RZ
  %".149" = load float, ptr %"RZ"
  %".150" = bitcast ptr %"R52" to ptr
  store float %".149", ptr %".150"
  ; @!P0 BRA `(.L_x_2)
  %".153" = load i1, ptr %"P0"
  %".154" = icmp eq i1 %".153", 1
  br i1 %".154", label %".L_x_2", label %".L_x_22_split_0x0280"
.L_x_22_split_0x0280:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".157" = load i32, ptr %"R7"
  %".158" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".157", 0
  %".159" = and i1 %"cmp.6", %".158"
  store i1 %".159", ptr %"P0"
  ; MOV R54, RZ
  %".162" = load float, ptr %"RZ"
  %".163" = bitcast ptr %"R54" to ptr
  store float %".162", ptr %".163"
  ; MOV R11, RZ
  %".166" = load i32, ptr %"RZ"
  store i32 %".166", ptr %"R11"
  ; MOV R9, R7
  %".169" = load i32, ptr %"R7"
  store i32 %".169", ptr %"R9"
  ; @!P0 BRA `(.L_x_3)
  %".172" = load i1, ptr %"P0"
  %".173" = icmp eq i1 %".172", 1
  br i1 %".173", label %".L_x_3", label %".L_x_22_split_0x02d0"
.L_x_22_split_0x02d0:
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".176" = load i32, ptr %"R9"
  %".177" = load i1, ptr %"PT"
  %"cmp.7" = icmp sgt i32 %".176", 12
  %".178" = and i1 %"cmp.7", %".177"
  store i1 %".178", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".181" = and i1 1, 1
  %".182" = or i1 %".181", 1
  ; @!P1 BRA `(.L_x_4)
  %".184" = load i1, ptr %"P1"
  %".185" = icmp eq i1 %".184", 1
  br i1 %".185", label %".L_x_4", label %".L_x_22_split_0x0300"
.L_x_22_split_0x0300:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".188" = xor i1 1, 1
  %".189" = and i1 %".188", 1
  %".190" = and i1 %".189", 1
  br label %".L_x_5"
.L_x_5:
  ; IADD3 R25, R0, R11, RZ
  %".193" = load i32, ptr %"R0"
  %".194" = load i32, ptr %"R11"
  %"add.16" = add i32 %".193", %".194"
  %"add.17" = add i32 %"add.16", 0
  store i32 %"add.17", ptr %"R25"
  ; MOV R18, 0x4
  store i32 4, ptr %"R18"
  ; IMAD R23, R2.reuse, 0x3, R25
  %".199" = load i32, ptr %"R2"
  %".200" = load i32, ptr %"R25"
  %"mul.8" = mul i32 %".199", 3
  %"add.18" = add i32 %"mul.8", %".200"
  store i32 %"add.18", ptr %"R23"
  ; LEA R25, R2, R25, 0x2
  %".203" = load i32, ptr %"R2"
  %".204" = load i32, ptr %"R25"
  %"shl.2" = shl i32 %".203", 2
  %"add.19" = add i32 %"shl.2", %".204"
  store i32 %"add.19", ptr %"R25"
  ; IMAD.WIDE R38, R11, R18, c[0x0][0x168]
  %".207" = load i32, ptr %"R11"
  %".208" = load i32, ptr %"R18"
  %"mul.9" = mul i32 %".207", %".208"
  %"add.20" = add i32 %"mul.9", %"Arg_3"
  store i32 %"add.20", ptr %"R38"
  ; IMAD.WIDE R16, R23, R18, c[0x0][0x170]
  %".211" = load i32, ptr %"R23"
  %".212" = load i32, ptr %"R18"
  %"mul.10" = mul i32 %".211", %".212"
  %"add.21" = add i32 %"mul.10", %"Arg_4"
  store i32 %"add.21", ptr %"R16"
  ; IMAD.WIDE R20, R25, R18, c[0x0][0x170]
  %".215" = load i32, ptr %"R25"
  %".216" = load i32, ptr %"R18"
  %"mul.11" = mul i32 %".215", %".216"
  %"add.22" = add i32 %"mul.11", %"Arg_4"
  store i32 %"add.22", ptr %"R20"
  ; LDG.E.SYS R57, [R38]
  %".219" = load i32, ptr %"R38"
  %"zext" = zext i32 %".219" to i64
  %".220" = load i32, ptr %"R39"
  %"zext.1" = zext i32 %".220" to i64
  %"shl.3" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl.3", %"zext"
  %".221" = inttoptr i64 %"or" to ptr
  %".222" = ptrtoint ptr %".221" to i64
  %".223" = add i64 %".222", 0
  %"for_LDG" = inttoptr i64 %".223" to ptr
  %".224" = load float, ptr %"for_LDG"
  %".225" = bitcast ptr %"R57" to ptr
  store float %".224", ptr %".225"
  ; LDG.E.SYS R56, [R16]
  %".228" = load i32, ptr %"R16"
  %"zext.2" = zext i32 %".228" to i64
  %".229" = load i32, ptr %"R17"
  %"zext.3" = zext i32 %".229" to i64
  %"shl.4" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.4", %"zext.2"
  %".230" = inttoptr i64 %"or.1" to ptr
  %".231" = ptrtoint ptr %".230" to i64
  %".232" = add i64 %".231", 0
  %"for_LDG.1" = inttoptr i64 %".232" to ptr
  %".233" = load float, ptr %"for_LDG.1"
  %".234" = bitcast ptr %"R56" to ptr
  store float %".233", ptr %".234"
  ; LDG.E.SYS R58, [R20]
  %".237" = load i32, ptr %"R20"
  %"zext.4" = zext i32 %".237" to i64
  %".238" = load i32, ptr %"R21"
  %"zext.5" = zext i32 %".238" to i64
  %"shl.5" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.5", %"zext.4"
  %".239" = inttoptr i64 %"or.2" to ptr
  %".240" = ptrtoint ptr %".239" to i64
  %".241" = add i64 %".240", 0
  %"for_LDG.2" = inttoptr i64 %".241" to ptr
  %".242" = load float, ptr %"for_LDG.2"
  %".243" = bitcast ptr %"R58" to ptr
  store float %".242", ptr %".243"
  ; LDG.E.SYS R24, [R38+0x4]
  %".246" = load i32, ptr %"R38"
  %"zext.6" = zext i32 %".246" to i64
  %".247" = load i32, ptr %"R39"
  %"zext.7" = zext i32 %".247" to i64
  %"shl.6" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.6", %"zext.6"
  %".248" = inttoptr i64 %"or.3" to ptr
  %".249" = ptrtoint ptr %".248" to i64
  %".250" = add i64 %".249", 4
  %"for_LDG.3" = inttoptr i64 %".250" to ptr
  %".251" = load float, ptr %"for_LDG.3"
  %".252" = bitcast ptr %"R24" to ptr
  store float %".251", ptr %".252"
  ; LDG.E.SYS R47, [R16+0x4]
  %".255" = load i32, ptr %"R16"
  %"zext.8" = zext i32 %".255" to i64
  %".256" = load i32, ptr %"R17"
  %"zext.9" = zext i32 %".256" to i64
  %"shl.7" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.7", %"zext.8"
  %".257" = inttoptr i64 %"or.4" to ptr
  %".258" = ptrtoint ptr %".257" to i64
  %".259" = add i64 %".258", 4
  %"for_LDG.4" = inttoptr i64 %".259" to ptr
  %".260" = load float, ptr %"for_LDG.4"
  %".261" = bitcast ptr %"R47" to ptr
  store float %".260", ptr %".261"
  ; LDG.E.SYS R49, [R20+0x4]
  %".264" = load i32, ptr %"R20"
  %"zext.10" = zext i32 %".264" to i64
  %".265" = load i32, ptr %"R21"
  %"zext.11" = zext i32 %".265" to i64
  %"shl.8" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.8", %"zext.10"
  %".266" = inttoptr i64 %"or.5" to ptr
  %".267" = ptrtoint ptr %".266" to i64
  %".268" = add i64 %".267", 4
  %"for_LDG.5" = inttoptr i64 %".268" to ptr
  %".269" = load float, ptr %"for_LDG.5"
  %".270" = bitcast ptr %"R49" to ptr
  store float %".269", ptr %".270"
  ; LDG.E.SYS R22, [R38+0x8]
  %".273" = load i32, ptr %"R38"
  %"zext.12" = zext i32 %".273" to i64
  %".274" = load i32, ptr %"R39"
  %"zext.13" = zext i32 %".274" to i64
  %"shl.9" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.9", %"zext.12"
  %".275" = inttoptr i64 %"or.6" to ptr
  %".276" = ptrtoint ptr %".275" to i64
  %".277" = add i64 %".276", 8
  %"for_LDG.6" = inttoptr i64 %".277" to ptr
  %".278" = load float, ptr %"for_LDG.6"
  %".279" = bitcast ptr %"R22" to ptr
  store float %".278", ptr %".279"
  ; LDG.E.SYS R43, [R16+0x8]
  %".282" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".282" to i64
  %".283" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".283" to i64
  %"shl.10" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.10", %"zext.14"
  %".284" = inttoptr i64 %"or.7" to ptr
  %".285" = ptrtoint ptr %".284" to i64
  %".286" = add i64 %".285", 8
  %"for_LDG.7" = inttoptr i64 %".286" to ptr
  %".287" = load float, ptr %"for_LDG.7"
  %".288" = bitcast ptr %"R43" to ptr
  store float %".287", ptr %".288"
  ; LDG.E.SYS R45, [R20+0x8]
  %".291" = load i32, ptr %"R20"
  %"zext.16" = zext i32 %".291" to i64
  %".292" = load i32, ptr %"R21"
  %"zext.17" = zext i32 %".292" to i64
  %"shl.11" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.11", %"zext.16"
  %".293" = inttoptr i64 %"or.8" to ptr
  %".294" = ptrtoint ptr %".293" to i64
  %".295" = add i64 %".294", 8
  %"for_LDG.8" = inttoptr i64 %".295" to ptr
  %".296" = load float, ptr %"for_LDG.8"
  %".297" = bitcast ptr %"R45" to ptr
  store float %".296", ptr %".297"
  ; LDG.E.SYS R15, [R38+0xc]
  %".300" = load i32, ptr %"R38"
  %"zext.18" = zext i32 %".300" to i64
  %".301" = load i32, ptr %"R39"
  %"zext.19" = zext i32 %".301" to i64
  %"shl.12" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.12", %"zext.18"
  %".302" = inttoptr i64 %"or.9" to ptr
  %".303" = ptrtoint ptr %".302" to i64
  %".304" = add i64 %".303", 12
  %"for_LDG.9" = inttoptr i64 %".304" to ptr
  %".305" = load float, ptr %"for_LDG.9"
  %".306" = bitcast ptr %"R15" to ptr
  store float %".305", ptr %".306"
  ; LDG.E.SYS R14, [R16+0xc]
  %".309" = load i32, ptr %"R16"
  %"zext.20" = zext i32 %".309" to i64
  %".310" = load i32, ptr %"R17"
  %"zext.21" = zext i32 %".310" to i64
  %"shl.13" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.13", %"zext.20"
  %".311" = inttoptr i64 %"or.10" to ptr
  %".312" = ptrtoint ptr %".311" to i64
  %".313" = add i64 %".312", 12
  %"for_LDG.10" = inttoptr i64 %".313" to ptr
  %".314" = load float, ptr %"for_LDG.10"
  %".315" = bitcast ptr %"R14" to ptr
  store float %".314", ptr %".315"
  ; LDG.E.SYS R13, [R20+0xc]
  %".318" = load i32, ptr %"R20"
  %"zext.22" = zext i32 %".318" to i64
  %".319" = load i32, ptr %"R21"
  %"zext.23" = zext i32 %".319" to i64
  %"shl.14" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.14", %"zext.22"
  %".320" = inttoptr i64 %"or.11" to ptr
  %".321" = ptrtoint ptr %".320" to i64
  %".322" = add i64 %".321", 12
  %"for_LDG.11" = inttoptr i64 %".322" to ptr
  %".323" = load float, ptr %"for_LDG.11"
  %".324" = bitcast ptr %"R13" to ptr
  store float %".323", ptr %".324"
  ; IADD3 R41, R11, 0x4, RZ
  %".327" = load i32, ptr %"R11"
  %"add.23" = add i32 %".327", 4
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R41"
  ; IADD3 R51, R23, 0x4, RZ
  %".330" = load i32, ptr %"R23"
  %"add.25" = add i32 %".330", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"R51"
  ; IADD3 R35, R11, 0x8, RZ
  %".333" = load i32, ptr %"R11"
  %"add.27" = add i32 %".333", 8
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", ptr %"R35"
  ; IMAD.WIDE R40, R41, R18, c[0x0][0x168]
  %".336" = load i32, ptr %"R41"
  %".337" = load i32, ptr %"R18"
  %"mul.12" = mul i32 %".336", %".337"
  %"add.29" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.29", ptr %"R40"
  ; IADD3 R37, R11, 0xc, RZ
  %".340" = load i32, ptr %"R11"
  %"add.30" = add i32 %".340", 12
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R37"
  ; IMAD.WIDE R38, R51, R18, c[0x0][0x170]
  %".343" = load i32, ptr %"R51"
  %".344" = load i32, ptr %"R18"
  %"mul.13" = mul i32 %".343", %".344"
  %"add.32" = add i32 %"mul.13", %"Arg_4"
  store i32 %"add.32", ptr %"R38"
  ; IADD3 R51, R25, 0x4, RZ
  %".347" = load i32, ptr %"R25"
  %"add.33" = add i32 %".347", 4
  %"add.34" = add i32 %"add.33", 0
  store i32 %"add.34", ptr %"R51"
  ; LDG.E.SYS R12, [R40]
  %".350" = load i32, ptr %"R40"
  %"zext.24" = zext i32 %".350" to i64
  %".351" = load i32, ptr %"R41"
  %"zext.25" = zext i32 %".351" to i64
  %"shl.15" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.15", %"zext.24"
  %".352" = inttoptr i64 %"or.12" to ptr
  %".353" = ptrtoint ptr %".352" to i64
  %".354" = add i64 %".353", 0
  %"for_LDG.12" = inttoptr i64 %".354" to ptr
  %".355" = load float, ptr %"for_LDG.12"
  %".356" = bitcast ptr %"R12" to ptr
  store float %".355", ptr %".356"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x168]
  %".359" = load i32, ptr %"R35"
  %".360" = load i32, ptr %"R18"
  %"mul.14" = mul i32 %".359", %".360"
  %"add.35" = add i32 %"mul.14", %"Arg_3"
  store i32 %"add.35", ptr %"R34"
  ; LDG.E.SYS R10, [R40+0x4]
  %".363" = load i32, ptr %"R40"
  %"zext.26" = zext i32 %".363" to i64
  %".364" = load i32, ptr %"R41"
  %"zext.27" = zext i32 %".364" to i64
  %"shl.16" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.16", %"zext.26"
  %".365" = inttoptr i64 %"or.13" to ptr
  %".366" = ptrtoint ptr %".365" to i64
  %".367" = add i64 %".366", 4
  %"for_LDG.13" = inttoptr i64 %".367" to ptr
  %".368" = load float, ptr %"for_LDG.13"
  %".369" = bitcast ptr %"R10" to ptr
  store float %".368", ptr %".369"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x168]
  %".372" = load i32, ptr %"R37"
  %".373" = load i32, ptr %"R18"
  %"mul.15" = mul i32 %".372", %".373"
  %"add.36" = add i32 %"mul.15", %"Arg_3"
  store i32 %"add.36", ptr %"R36"
  ; LDG.E.SYS R16, [R40+0x8]
  %".376" = load i32, ptr %"R40"
  %"zext.28" = zext i32 %".376" to i64
  %".377" = load i32, ptr %"R41"
  %"zext.29" = zext i32 %".377" to i64
  %"shl.17" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.17", %"zext.28"
  %".378" = inttoptr i64 %"or.14" to ptr
  %".379" = ptrtoint ptr %".378" to i64
  %".380" = add i64 %".379", 8
  %"for_LDG.14" = inttoptr i64 %".380" to ptr
  %".381" = load float, ptr %"for_LDG.14"
  %".382" = bitcast ptr %"R16" to ptr
  store float %".381", ptr %".382"
  ; LDG.E.SYS R17, [R40+0xc]
  %".385" = load i32, ptr %"R40"
  %"zext.30" = zext i32 %".385" to i64
  %".386" = load i32, ptr %"R41"
  %"zext.31" = zext i32 %".386" to i64
  %"shl.18" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.18", %"zext.30"
  %".387" = inttoptr i64 %"or.15" to ptr
  %".388" = ptrtoint ptr %".387" to i64
  %".389" = add i64 %".388", 12
  %"for_LDG.15" = inttoptr i64 %".389" to ptr
  %".390" = load float, ptr %"for_LDG.15"
  %".391" = bitcast ptr %"R17" to ptr
  store float %".390", ptr %".391"
  ; LDG.E.SYS R19, [R34]
  %".394" = load i32, ptr %"R34"
  %"zext.32" = zext i32 %".394" to i64
  %".395" = load i32, ptr %"R35"
  %"zext.33" = zext i32 %".395" to i64
  %"shl.19" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.19", %"zext.32"
  %".396" = inttoptr i64 %"or.16" to ptr
  %".397" = ptrtoint ptr %".396" to i64
  %".398" = add i64 %".397", 0
  %"for_LDG.16" = inttoptr i64 %".398" to ptr
  %".399" = load float, ptr %"for_LDG.16"
  %".400" = bitcast ptr %"R19" to ptr
  store float %".399", ptr %".400"
  ; LDG.E.SYS R20, [R34+0x4]
  %".403" = load i32, ptr %"R34"
  %"zext.34" = zext i32 %".403" to i64
  %".404" = load i32, ptr %"R35"
  %"zext.35" = zext i32 %".404" to i64
  %"shl.20" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.20", %"zext.34"
  %".405" = inttoptr i64 %"or.17" to ptr
  %".406" = ptrtoint ptr %".405" to i64
  %".407" = add i64 %".406", 4
  %"for_LDG.17" = inttoptr i64 %".407" to ptr
  %".408" = load float, ptr %"for_LDG.17"
  %".409" = bitcast ptr %"R20" to ptr
  store float %".408", ptr %".409"
  ; IMAD.WIDE R40, R51, R18, c[0x0][0x170]
  %".412" = load i32, ptr %"R51"
  %".413" = load i32, ptr %"R18"
  %"mul.16" = mul i32 %".412", %".413"
  %"add.37" = add i32 %"mul.16", %"Arg_4"
  store i32 %"add.37", ptr %"R40"
  ; LDG.E.SYS R51, [R38]
  %".416" = load i32, ptr %"R38"
  %"zext.36" = zext i32 %".416" to i64
  %".417" = load i32, ptr %"R39"
  %"zext.37" = zext i32 %".417" to i64
  %"shl.21" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.21", %"zext.36"
  %".418" = inttoptr i64 %"or.18" to ptr
  %".419" = ptrtoint ptr %".418" to i64
  %".420" = add i64 %".419", 0
  %"for_LDG.18" = inttoptr i64 %".420" to ptr
  %".421" = load float, ptr %"for_LDG.18"
  %".422" = bitcast ptr %"R51" to ptr
  store float %".421", ptr %".422"
  ; LDG.E.SYS R21, [R34+0x8]
  %".425" = load i32, ptr %"R34"
  %"zext.38" = zext i32 %".425" to i64
  %".426" = load i32, ptr %"R35"
  %"zext.39" = zext i32 %".426" to i64
  %"shl.22" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.22", %"zext.38"
  %".427" = inttoptr i64 %"or.19" to ptr
  %".428" = ptrtoint ptr %".427" to i64
  %".429" = add i64 %".428", 8
  %"for_LDG.19" = inttoptr i64 %".429" to ptr
  %".430" = load float, ptr %"for_LDG.19"
  %".431" = bitcast ptr %"R21" to ptr
  store float %".430", ptr %".431"
  ; LDG.E.SYS R42, [R34+0xc]
  %".434" = load i32, ptr %"R34"
  %"zext.40" = zext i32 %".434" to i64
  %".435" = load i32, ptr %"R35"
  %"zext.41" = zext i32 %".435" to i64
  %"shl.23" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.23", %"zext.40"
  %".436" = inttoptr i64 %"or.20" to ptr
  %".437" = ptrtoint ptr %".436" to i64
  %".438" = add i64 %".437", 12
  %"for_LDG.20" = inttoptr i64 %".438" to ptr
  %".439" = load float, ptr %"for_LDG.20"
  %".440" = bitcast ptr %"R42" to ptr
  store float %".439", ptr %".440"
  ; LDG.E.SYS R44, [R36]
  %".443" = load i32, ptr %"R36"
  %"zext.42" = zext i32 %".443" to i64
  %".444" = load i32, ptr %"R37"
  %"zext.43" = zext i32 %".444" to i64
  %"shl.24" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.24", %"zext.42"
  %".445" = inttoptr i64 %"or.21" to ptr
  %".446" = ptrtoint ptr %".445" to i64
  %".447" = add i64 %".446", 0
  %"for_LDG.21" = inttoptr i64 %".447" to ptr
  %".448" = load float, ptr %"for_LDG.21"
  %".449" = bitcast ptr %"R44" to ptr
  store float %".448", ptr %".449"
  ; LDG.E.SYS R46, [R36+0x4]
  %".452" = load i32, ptr %"R36"
  %"zext.44" = zext i32 %".452" to i64
  %".453" = load i32, ptr %"R37"
  %"zext.45" = zext i32 %".453" to i64
  %"shl.25" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.25", %"zext.44"
  %".454" = inttoptr i64 %"or.22" to ptr
  %".455" = ptrtoint ptr %".454" to i64
  %".456" = add i64 %".455", 4
  %"for_LDG.22" = inttoptr i64 %".456" to ptr
  %".457" = load float, ptr %"for_LDG.22"
  %".458" = bitcast ptr %"R46" to ptr
  store float %".457", ptr %".458"
  ; IADD3 R35, R23, 0x8, RZ
  %".461" = load i32, ptr %"R23"
  %"add.38" = add i32 %".461", 8
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R35"
  ; LDG.E.SYS R48, [R36+0x8]
  %".464" = load i32, ptr %"R36"
  %"zext.46" = zext i32 %".464" to i64
  %".465" = load i32, ptr %"R37"
  %"zext.47" = zext i32 %".465" to i64
  %"shl.26" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.26", %"zext.46"
  %".466" = inttoptr i64 %"or.23" to ptr
  %".467" = ptrtoint ptr %".466" to i64
  %".468" = add i64 %".467", 8
  %"for_LDG.23" = inttoptr i64 %".468" to ptr
  %".469" = load float, ptr %"for_LDG.23"
  %".470" = bitcast ptr %"R48" to ptr
  store float %".469", ptr %".470"
  ; LDG.E.SYS R50, [R36+0xc]
  %".473" = load i32, ptr %"R36"
  %"zext.48" = zext i32 %".473" to i64
  %".474" = load i32, ptr %"R37"
  %"zext.49" = zext i32 %".474" to i64
  %"shl.27" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.27", %"zext.48"
  %".475" = inttoptr i64 %"or.24" to ptr
  %".476" = ptrtoint ptr %".475" to i64
  %".477" = add i64 %".476", 12
  %"for_LDG.24" = inttoptr i64 %".477" to ptr
  %".478" = load float, ptr %"for_LDG.24"
  %".479" = bitcast ptr %"R50" to ptr
  store float %".478", ptr %".479"
  ; LDG.E.SYS R53, [R38+0x4]
  %".482" = load i32, ptr %"R38"
  %"zext.50" = zext i32 %".482" to i64
  %".483" = load i32, ptr %"R39"
  %"zext.51" = zext i32 %".483" to i64
  %"shl.28" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.28", %"zext.50"
  %".484" = inttoptr i64 %"or.25" to ptr
  %".485" = ptrtoint ptr %".484" to i64
  %".486" = add i64 %".485", 4
  %"for_LDG.25" = inttoptr i64 %".486" to ptr
  %".487" = load float, ptr %"for_LDG.25"
  %".488" = bitcast ptr %"R53" to ptr
  store float %".487", ptr %".488"
  ; LDG.E.SYS R59, [R40+0x4]
  %".491" = load i32, ptr %"R40"
  %"zext.52" = zext i32 %".491" to i64
  %".492" = load i32, ptr %"R41"
  %"zext.53" = zext i32 %".492" to i64
  %"shl.29" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.29", %"zext.52"
  %".493" = inttoptr i64 %"or.26" to ptr
  %".494" = ptrtoint ptr %".493" to i64
  %".495" = add i64 %".494", 4
  %"for_LDG.26" = inttoptr i64 %".495" to ptr
  %".496" = load float, ptr %"for_LDG.26"
  %".497" = bitcast ptr %"R59" to ptr
  store float %".496", ptr %".497"
  ; IADD3 R37, R25, 0x8, RZ
  %".500" = load i32, ptr %"R25"
  %"add.40" = add i32 %".500", 8
  %"add.41" = add i32 %"add.40", 0
  store i32 %"add.41", ptr %"R37"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x170]
  %".503" = load i32, ptr %"R35"
  %".504" = load i32, ptr %"R18"
  %"mul.17" = mul i32 %".503", %".504"
  %"add.42" = add i32 %"mul.17", %"Arg_4"
  store i32 %"add.42", ptr %"R34"
  ; LDG.E.SYS R55, [R38+0x8]
  %".507" = load i32, ptr %"R38"
  %"zext.54" = zext i32 %".507" to i64
  %".508" = load i32, ptr %"R39"
  %"zext.55" = zext i32 %".508" to i64
  %"shl.30" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.30", %"zext.54"
  %".509" = inttoptr i64 %"or.27" to ptr
  %".510" = ptrtoint ptr %".509" to i64
  %".511" = add i64 %".510", 8
  %"for_LDG.27" = inttoptr i64 %".511" to ptr
  %".512" = load float, ptr %"for_LDG.27"
  %".513" = bitcast ptr %"R55" to ptr
  store float %".512", ptr %".513"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x170]
  %".516" = load i32, ptr %"R37"
  %".517" = load i32, ptr %"R18"
  %"mul.18" = mul i32 %".516", %".517"
  %"add.43" = add i32 %"mul.18", %"Arg_4"
  store i32 %"add.43", ptr %"R36"
  ; LDG.E.SYS R61, [R40+0x8]
  %".520" = load i32, ptr %"R40"
  %"zext.56" = zext i32 %".520" to i64
  %".521" = load i32, ptr %"R41"
  %"zext.57" = zext i32 %".521" to i64
  %"shl.31" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.31", %"zext.56"
  %".522" = inttoptr i64 %"or.28" to ptr
  %".523" = ptrtoint ptr %".522" to i64
  %".524" = add i64 %".523", 8
  %"for_LDG.28" = inttoptr i64 %".524" to ptr
  %".525" = load float, ptr %"for_LDG.28"
  %".526" = bitcast ptr %"R61" to ptr
  store float %".525", ptr %".526"
  ; LDG.E.SYS R60, [R38+0xc]
  %".529" = load i32, ptr %"R38"
  %"zext.58" = zext i32 %".529" to i64
  %".530" = load i32, ptr %"R39"
  %"zext.59" = zext i32 %".530" to i64
  %"shl.32" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.32", %"zext.58"
  %".531" = inttoptr i64 %"or.29" to ptr
  %".532" = ptrtoint ptr %".531" to i64
  %".533" = add i64 %".532", 12
  %"for_LDG.29" = inttoptr i64 %".533" to ptr
  %".534" = load float, ptr %"for_LDG.29"
  %".535" = bitcast ptr %"R60" to ptr
  store float %".534", ptr %".535"
  ; IADD3 R23, R23, 0xc, RZ
  %".538" = load i32, ptr %"R23"
  %"add.44" = add i32 %".538", 12
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R23"
  ; IADD3 R25, R25, 0xc, RZ
  %".541" = load i32, ptr %"R25"
  %"add.46" = add i32 %".541", 12
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R25"
  ; LDG.E.SYS R39, [R34+0x4]
  %".544" = load i32, ptr %"R34"
  %"zext.60" = zext i32 %".544" to i64
  %".545" = load i32, ptr %"R35"
  %"zext.61" = zext i32 %".545" to i64
  %"shl.33" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.33", %"zext.60"
  %".546" = inttoptr i64 %"or.30" to ptr
  %".547" = ptrtoint ptr %".546" to i64
  %".548" = add i64 %".547", 4
  %"for_LDG.30" = inttoptr i64 %".548" to ptr
  %".549" = load float, ptr %"for_LDG.30"
  %".550" = bitcast ptr %"R39" to ptr
  store float %".549", ptr %".550"
  ; LDG.E.SYS R38, [R34+0x8]
  %".553" = load i32, ptr %"R34"
  %"zext.62" = zext i32 %".553" to i64
  %".554" = load i32, ptr %"R35"
  %"zext.63" = zext i32 %".554" to i64
  %"shl.34" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.34", %"zext.62"
  %".555" = inttoptr i64 %"or.31" to ptr
  %".556" = ptrtoint ptr %".555" to i64
  %".557" = add i64 %".556", 8
  %"for_LDG.31" = inttoptr i64 %".557" to ptr
  %".558" = load float, ptr %"for_LDG.31"
  %".559" = bitcast ptr %"R38" to ptr
  store float %".558", ptr %".559"
  ; FFMA R56, R56, R57, R52
  %".562" = load float, ptr %"R56"
  %".563" = load float, ptr %"R57"
  %".564" = load float, ptr %"R52"
  %"fmul" = fmul float %".562", %".563"
  %"fadd" = fadd float %"fmul", %".564"
  %".565" = bitcast ptr %"R56" to ptr
  store float %"fadd", ptr %".565"
  ; LDG.E.SYS R52, [R40+0xc]
  %".568" = load i32, ptr %"R40"
  %"zext.64" = zext i32 %".568" to i64
  %".569" = load i32, ptr %"R41"
  %"zext.65" = zext i32 %".569" to i64
  %"shl.35" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.35", %"zext.64"
  %".570" = inttoptr i64 %"or.32" to ptr
  %".571" = ptrtoint ptr %".570" to i64
  %".572" = add i64 %".571", 12
  %"for_LDG.32" = inttoptr i64 %".572" to ptr
  %".573" = load float, ptr %"for_LDG.32"
  %".574" = bitcast ptr %"R52" to ptr
  store float %".573", ptr %".574"
  ; FFMA R58, R57, R58, R54
  %".577" = load float, ptr %"R57"
  %".578" = load float, ptr %"R58"
  %".579" = load float, ptr %"R54"
  %"fmul.1" = fmul float %".577", %".578"
  %"fadd.1" = fadd float %"fmul.1", %".579"
  %".580" = bitcast ptr %"R58" to ptr
  store float %"fadd.1", ptr %".580"
  ; LDG.E.SYS R57, [R40]
  %".583" = load i32, ptr %"R40"
  %"zext.66" = zext i32 %".583" to i64
  %".584" = load i32, ptr %"R41"
  %"zext.67" = zext i32 %".584" to i64
  %"shl.36" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.36", %"zext.66"
  %".585" = inttoptr i64 %"or.33" to ptr
  %".586" = ptrtoint ptr %".585" to i64
  %".587" = add i64 %".586", 0
  %"for_LDG.33" = inttoptr i64 %".587" to ptr
  %".588" = load float, ptr %"for_LDG.33"
  %".589" = bitcast ptr %"R57" to ptr
  store float %".588", ptr %".589"
  ; LDG.E.SYS R54, [R34]
  %".592" = load i32, ptr %"R34"
  %"zext.68" = zext i32 %".592" to i64
  %".593" = load i32, ptr %"R35"
  %"zext.69" = zext i32 %".593" to i64
  %"shl.37" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.37", %"zext.68"
  %".594" = inttoptr i64 %"or.34" to ptr
  %".595" = ptrtoint ptr %".594" to i64
  %".596" = add i64 %".595", 0
  %"for_LDG.34" = inttoptr i64 %".596" to ptr
  %".597" = load float, ptr %"for_LDG.34"
  %".598" = bitcast ptr %"R54" to ptr
  store float %".597", ptr %".598"
  ; FFMA R56, R47, R24, R56
  %".601" = load float, ptr %"R47"
  %".602" = load float, ptr %"R24"
  %".603" = load float, ptr %"R56"
  %"fmul.2" = fmul float %".601", %".602"
  %"fadd.2" = fadd float %"fmul.2", %".603"
  %".604" = bitcast ptr %"R56" to ptr
  store float %"fadd.2", ptr %".604"
  ; LDG.E.SYS R47, [R34+0xc]
  %".607" = load i32, ptr %"R34"
  %"zext.70" = zext i32 %".607" to i64
  %".608" = load i32, ptr %"R35"
  %"zext.71" = zext i32 %".608" to i64
  %"shl.38" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.38", %"zext.70"
  %".609" = inttoptr i64 %"or.35" to ptr
  %".610" = ptrtoint ptr %".609" to i64
  %".611" = add i64 %".610", 12
  %"for_LDG.35" = inttoptr i64 %".611" to ptr
  %".612" = load float, ptr %"for_LDG.35"
  %".613" = bitcast ptr %"R47" to ptr
  store float %".612", ptr %".613"
  ; FFMA R58, R24, R49, R58
  %".616" = load float, ptr %"R24"
  %".617" = load float, ptr %"R49"
  %".618" = load float, ptr %"R58"
  %"fmul.3" = fmul float %".616", %".617"
  %"fadd.3" = fadd float %"fmul.3", %".618"
  %".619" = bitcast ptr %"R58" to ptr
  store float %"fadd.3", ptr %".619"
  ; LDG.E.SYS R41, [R36+0x4]
  %".622" = load i32, ptr %"R36"
  %"zext.72" = zext i32 %".622" to i64
  %".623" = load i32, ptr %"R37"
  %"zext.73" = zext i32 %".623" to i64
  %"shl.39" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.39", %"zext.72"
  %".624" = inttoptr i64 %"or.36" to ptr
  %".625" = ptrtoint ptr %".624" to i64
  %".626" = add i64 %".625", 4
  %"for_LDG.36" = inttoptr i64 %".626" to ptr
  %".627" = load float, ptr %"for_LDG.36"
  %".628" = bitcast ptr %"R41" to ptr
  store float %".627", ptr %".628"
  ; LDG.E.SYS R40, [R36+0x8]
  %".631" = load i32, ptr %"R36"
  %"zext.74" = zext i32 %".631" to i64
  %".632" = load i32, ptr %"R37"
  %"zext.75" = zext i32 %".632" to i64
  %"shl.40" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.40", %"zext.74"
  %".633" = inttoptr i64 %"or.37" to ptr
  %".634" = ptrtoint ptr %".633" to i64
  %".635" = add i64 %".634", 8
  %"for_LDG.37" = inttoptr i64 %".635" to ptr
  %".636" = load float, ptr %"for_LDG.37"
  %".637" = bitcast ptr %"R40" to ptr
  store float %".636", ptr %".637"
  ; FFMA R49, R43, R22, R56
  %".640" = load float, ptr %"R43"
  %".641" = load float, ptr %"R22"
  %".642" = load float, ptr %"R56"
  %"fmul.4" = fmul float %".640", %".641"
  %"fadd.4" = fadd float %"fmul.4", %".642"
  %".643" = bitcast ptr %"R49" to ptr
  store float %"fadd.4", ptr %".643"
  ; LDG.E.SYS R56, [R36]
  %".646" = load i32, ptr %"R36"
  %"zext.76" = zext i32 %".646" to i64
  %".647" = load i32, ptr %"R37"
  %"zext.77" = zext i32 %".647" to i64
  %"shl.41" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.41", %"zext.76"
  %".648" = inttoptr i64 %"or.38" to ptr
  %".649" = ptrtoint ptr %".648" to i64
  %".650" = add i64 %".649", 0
  %"for_LDG.38" = inttoptr i64 %".650" to ptr
  %".651" = load float, ptr %"for_LDG.38"
  %".652" = bitcast ptr %"R56" to ptr
  store float %".651", ptr %".652"
  ; IMAD.WIDE R24, R25, R18, c[0x0][0x170]
  %".655" = load i32, ptr %"R25"
  %".656" = load i32, ptr %"R18"
  %"mul.19" = mul i32 %".655", %".656"
  %"add.48" = add i32 %"mul.19", %"Arg_4"
  store i32 %"add.48", ptr %"R24"
  ; LDG.E.SYS R43, [R36+0xc]
  %".659" = load i32, ptr %"R36"
  %"zext.78" = zext i32 %".659" to i64
  %".660" = load i32, ptr %"R37"
  %"zext.79" = zext i32 %".660" to i64
  %"shl.42" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.42", %"zext.78"
  %".661" = inttoptr i64 %"or.39" to ptr
  %".662" = ptrtoint ptr %".661" to i64
  %".663" = add i64 %".662", 12
  %"for_LDG.39" = inttoptr i64 %".663" to ptr
  %".664" = load float, ptr %"for_LDG.39"
  %".665" = bitcast ptr %"R43" to ptr
  store float %".664", ptr %".665"
  ; FFMA R58, R22, R45, R58
  %".668" = load float, ptr %"R22"
  %".669" = load float, ptr %"R45"
  %".670" = load float, ptr %"R58"
  %"fmul.5" = fmul float %".668", %".669"
  %"fadd.5" = fadd float %"fmul.5", %".670"
  %".671" = bitcast ptr %"R58" to ptr
  store float %"fadd.5", ptr %".671"
  ; IMAD.WIDE R22, R23, R18, c[0x0][0x170]
  %".674" = load i32, ptr %"R23"
  %".675" = load i32, ptr %"R18"
  %"mul.20" = mul i32 %".674", %".675"
  %"add.49" = add i32 %"mul.20", %"Arg_4"
  store i32 %"add.49", ptr %"R22"
  ; LDG.E.SYS R18, [R24]
  %".678" = load i32, ptr %"R24"
  %"zext.80" = zext i32 %".678" to i64
  %".679" = load i32, ptr %"R25"
  %"zext.81" = zext i32 %".679" to i64
  %"shl.43" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.43", %"zext.80"
  %".680" = inttoptr i64 %"or.40" to ptr
  %".681" = ptrtoint ptr %".680" to i64
  %".682" = add i64 %".681", 0
  %"for_LDG.40" = inttoptr i64 %".682" to ptr
  %".683" = load float, ptr %"for_LDG.40"
  %".684" = bitcast ptr %"R18" to ptr
  store float %".683", ptr %".684"
  ; FFMA R14, R14, R15, R49
  %".687" = load float, ptr %"R14"
  %".688" = load float, ptr %"R15"
  %".689" = load float, ptr %"R49"
  %"fmul.6" = fmul float %".687", %".688"
  %"fadd.6" = fadd float %"fmul.6", %".689"
  %".690" = bitcast ptr %"R14" to ptr
  store float %"fadd.6", ptr %".690"
  ; LDG.E.SYS R49, [R24+0x4]
  %".693" = load i32, ptr %"R24"
  %"zext.82" = zext i32 %".693" to i64
  %".694" = load i32, ptr %"R25"
  %"zext.83" = zext i32 %".694" to i64
  %"shl.44" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.44", %"zext.82"
  %".695" = inttoptr i64 %"or.41" to ptr
  %".696" = ptrtoint ptr %".695" to i64
  %".697" = add i64 %".696", 4
  %"for_LDG.41" = inttoptr i64 %".697" to ptr
  %".698" = load float, ptr %"for_LDG.41"
  %".699" = bitcast ptr %"R49" to ptr
  store float %".698", ptr %".699"
  ; FFMA R58, R15, R13, R58
  %".702" = load float, ptr %"R15"
  %".703" = load float, ptr %"R13"
  %".704" = load float, ptr %"R58"
  %"fmul.7" = fmul float %".702", %".703"
  %"fadd.7" = fadd float %"fmul.7", %".704"
  %".705" = bitcast ptr %"R58" to ptr
  store float %"fadd.7", ptr %".705"
  ; LDG.E.SYS R35, [R22]
  %".708" = load i32, ptr %"R22"
  %"zext.84" = zext i32 %".708" to i64
  %".709" = load i32, ptr %"R23"
  %"zext.85" = zext i32 %".709" to i64
  %"shl.45" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.45", %"zext.84"
  %".710" = inttoptr i64 %"or.42" to ptr
  %".711" = ptrtoint ptr %".710" to i64
  %".712" = add i64 %".711", 0
  %"for_LDG.42" = inttoptr i64 %".712" to ptr
  %".713" = load float, ptr %"for_LDG.42"
  %".714" = bitcast ptr %"R35" to ptr
  store float %".713", ptr %".714"
  ; LDG.E.SYS R15, [R22+0x4]
  %".717" = load i32, ptr %"R22"
  %"zext.86" = zext i32 %".717" to i64
  %".718" = load i32, ptr %"R23"
  %"zext.87" = zext i32 %".718" to i64
  %"shl.46" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.46", %"zext.86"
  %".719" = inttoptr i64 %"or.43" to ptr
  %".720" = ptrtoint ptr %".719" to i64
  %".721" = add i64 %".720", 4
  %"for_LDG.43" = inttoptr i64 %".721" to ptr
  %".722" = load float, ptr %"for_LDG.43"
  %".723" = bitcast ptr %"R15" to ptr
  store float %".722", ptr %".723"
  ; LDG.E.SYS R13, [R22+0x8]
  %".726" = load i32, ptr %"R22"
  %"zext.88" = zext i32 %".726" to i64
  %".727" = load i32, ptr %"R23"
  %"zext.89" = zext i32 %".727" to i64
  %"shl.47" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.47", %"zext.88"
  %".728" = inttoptr i64 %"or.44" to ptr
  %".729" = ptrtoint ptr %".728" to i64
  %".730" = add i64 %".729", 8
  %"for_LDG.44" = inttoptr i64 %".730" to ptr
  %".731" = load float, ptr %"for_LDG.44"
  %".732" = bitcast ptr %"R13" to ptr
  store float %".731", ptr %".732"
  ; LDG.E.SYS R37, [R24+0x8]
  %".735" = load i32, ptr %"R24"
  %"zext.90" = zext i32 %".735" to i64
  %".736" = load i32, ptr %"R25"
  %"zext.91" = zext i32 %".736" to i64
  %"shl.48" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.48", %"zext.90"
  %".737" = inttoptr i64 %"or.45" to ptr
  %".738" = ptrtoint ptr %".737" to i64
  %".739" = add i64 %".738", 8
  %"for_LDG.45" = inttoptr i64 %".739" to ptr
  %".740" = load float, ptr %"for_LDG.45"
  %".741" = bitcast ptr %"R37" to ptr
  store float %".740", ptr %".741"
  ; LDG.E.SYS R45, [R22+0xc]
  %".744" = load i32, ptr %"R22"
  %"zext.92" = zext i32 %".744" to i64
  %".745" = load i32, ptr %"R23"
  %"zext.93" = zext i32 %".745" to i64
  %"shl.49" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.49", %"zext.92"
  %".746" = inttoptr i64 %"or.46" to ptr
  %".747" = ptrtoint ptr %".746" to i64
  %".748" = add i64 %".747", 12
  %"for_LDG.46" = inttoptr i64 %".748" to ptr
  %".749" = load float, ptr %"for_LDG.46"
  %".750" = bitcast ptr %"R45" to ptr
  store float %".749", ptr %".750"
  ; LDG.E.SYS R34, [R24+0xc]
  %".753" = load i32, ptr %"R24"
  %"zext.94" = zext i32 %".753" to i64
  %".754" = load i32, ptr %"R25"
  %"zext.95" = zext i32 %".754" to i64
  %"shl.50" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.50", %"zext.94"
  %".755" = inttoptr i64 %"or.47" to ptr
  %".756" = ptrtoint ptr %".755" to i64
  %".757" = add i64 %".756", 12
  %"for_LDG.47" = inttoptr i64 %".757" to ptr
  %".758" = load float, ptr %"for_LDG.47"
  %".759" = bitcast ptr %"R34" to ptr
  store float %".758", ptr %".759"
  ; FFMA R14, R51, R12, R14
  %".762" = load float, ptr %"R51"
  %".763" = load float, ptr %"R12"
  %".764" = load float, ptr %"R14"
  %"fmul.8" = fmul float %".762", %".763"
  %"fadd.8" = fadd float %"fmul.8", %".764"
  %".765" = bitcast ptr %"R14" to ptr
  store float %"fadd.8", ptr %".765"
  ; IADD3 R9, R9, -0x10, RZ
  %".768" = load i32, ptr %"R9"
  %"add.50" = add i32 %".768", -16
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R9"
  ; FFMA R14, R53, R10, R14
  %".771" = load float, ptr %"R53"
  %".772" = load float, ptr %"R10"
  %".773" = load float, ptr %"R14"
  %"fmul.9" = fmul float %".771", %".772"
  %"fadd.9" = fadd float %"fmul.9", %".773"
  %".774" = bitcast ptr %"R14" to ptr
  store float %"fadd.9", ptr %".774"
  ; FFMA R14, R55, R16, R14
  %".777" = load float, ptr %"R55"
  %".778" = load float, ptr %"R16"
  %".779" = load float, ptr %"R14"
  %"fmul.10" = fmul float %".777", %".778"
  %"fadd.10" = fadd float %"fmul.10", %".779"
  %".780" = bitcast ptr %"R14" to ptr
  store float %"fadd.10", ptr %".780"
  ; FFMA R14, R60, R17, R14
  %".783" = load float, ptr %"R60"
  %".784" = load float, ptr %"R17"
  %".785" = load float, ptr %"R14"
  %"fmul.11" = fmul float %".783", %".784"
  %"fadd.11" = fadd float %"fmul.11", %".785"
  %".786" = bitcast ptr %"R14" to ptr
  store float %"fadd.11", ptr %".786"
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".789" = load i32, ptr %"R9"
  %".790" = load i1, ptr %"PT"
  %"cmp.8" = icmp sgt i32 %".789", 12
  %".791" = and i1 %"cmp.8", %".790"
  store i1 %".791", ptr %"P1"
  ; IADD3 R11, R11, 0x10, RZ
  %".794" = load i32, ptr %"R11"
  %"add.52" = add i32 %".794", 16
  %"add.53" = add i32 %"add.52", 0
  store i32 %"add.53", ptr %"R11"
  ; FFMA R57, R12, R57, R58
  %".797" = load float, ptr %"R12"
  %".798" = load float, ptr %"R57"
  %".799" = load float, ptr %"R58"
  %"fmul.12" = fmul float %".797", %".798"
  %"fadd.12" = fadd float %"fmul.12", %".799"
  %".800" = bitcast ptr %"R57" to ptr
  store float %"fadd.12", ptr %".800"
  ; FFMA R57, R10, R59, R57
  %".803" = load float, ptr %"R10"
  %".804" = load float, ptr %"R59"
  %".805" = load float, ptr %"R57"
  %"fmul.13" = fmul float %".803", %".804"
  %"fadd.13" = fadd float %"fmul.13", %".805"
  %".806" = bitcast ptr %"R57" to ptr
  store float %"fadd.13", ptr %".806"
  ; FFMA R57, R16, R61, R57
  %".809" = load float, ptr %"R16"
  %".810" = load float, ptr %"R61"
  %".811" = load float, ptr %"R57"
  %"fmul.14" = fmul float %".809", %".810"
  %"fadd.14" = fadd float %"fmul.14", %".811"
  %".812" = bitcast ptr %"R57" to ptr
  store float %"fadd.14", ptr %".812"
  ; FFMA R52, R17, R52, R57
  %".815" = load float, ptr %"R17"
  %".816" = load float, ptr %"R52"
  %".817" = load float, ptr %"R57"
  %"fmul.15" = fmul float %".815", %".816"
  %"fadd.15" = fadd float %"fmul.15", %".817"
  %".818" = bitcast ptr %"R52" to ptr
  store float %"fadd.15", ptr %".818"
  ; FFMA R14, R54, R19, R14
  %".821" = load float, ptr %"R54"
  %".822" = load float, ptr %"R19"
  %".823" = load float, ptr %"R14"
  %"fmul.16" = fmul float %".821", %".822"
  %"fadd.16" = fadd float %"fmul.16", %".823"
  %".824" = bitcast ptr %"R14" to ptr
  store float %"fadd.16", ptr %".824"
  ; FFMA R52, R19, R56, R52
  %".827" = load float, ptr %"R19"
  %".828" = load float, ptr %"R56"
  %".829" = load float, ptr %"R52"
  %"fmul.17" = fmul float %".827", %".828"
  %"fadd.17" = fadd float %"fmul.17", %".829"
  %".830" = bitcast ptr %"R52" to ptr
  store float %"fadd.17", ptr %".830"
  ; FFMA R14, R39, R20, R14
  %".833" = load float, ptr %"R39"
  %".834" = load float, ptr %"R20"
  %".835" = load float, ptr %"R14"
  %"fmul.18" = fmul float %".833", %".834"
  %"fadd.18" = fadd float %"fmul.18", %".835"
  %".836" = bitcast ptr %"R14" to ptr
  store float %"fadd.18", ptr %".836"
  ; FFMA R41, R20, R41, R52
  %".839" = load float, ptr %"R20"
  %".840" = load float, ptr %"R41"
  %".841" = load float, ptr %"R52"
  %"fmul.19" = fmul float %".839", %".840"
  %"fadd.19" = fadd float %"fmul.19", %".841"
  %".842" = bitcast ptr %"R41" to ptr
  store float %"fadd.19", ptr %".842"
  ; FFMA R14, R38, R21, R14
  %".845" = load float, ptr %"R38"
  %".846" = load float, ptr %"R21"
  %".847" = load float, ptr %"R14"
  %"fmul.20" = fmul float %".845", %".846"
  %"fadd.20" = fadd float %"fmul.20", %".847"
  %".848" = bitcast ptr %"R14" to ptr
  store float %"fadd.20", ptr %".848"
  ; FFMA R40, R21, R40, R41
  %".851" = load float, ptr %"R21"
  %".852" = load float, ptr %"R40"
  %".853" = load float, ptr %"R41"
  %"fmul.21" = fmul float %".851", %".852"
  %"fadd.21" = fadd float %"fmul.21", %".853"
  %".854" = bitcast ptr %"R40" to ptr
  store float %"fadd.21", ptr %".854"
  ; FFMA R14, R47, R42, R14
  %".857" = load float, ptr %"R47"
  %".858" = load float, ptr %"R42"
  %".859" = load float, ptr %"R14"
  %"fmul.22" = fmul float %".857", %".858"
  %"fadd.22" = fadd float %"fmul.22", %".859"
  %".860" = bitcast ptr %"R14" to ptr
  store float %"fadd.22", ptr %".860"
  ; FFMA R43, R42, R43, R40
  %".863" = load float, ptr %"R42"
  %".864" = load float, ptr %"R43"
  %".865" = load float, ptr %"R40"
  %"fmul.23" = fmul float %".863", %".864"
  %"fadd.23" = fadd float %"fmul.23", %".865"
  %".866" = bitcast ptr %"R43" to ptr
  store float %"fadd.23", ptr %".866"
  ; FFMA R18, R44, R18, R43
  %".869" = load float, ptr %"R44"
  %".870" = load float, ptr %"R18"
  %".871" = load float, ptr %"R43"
  %"fmul.24" = fmul float %".869", %".870"
  %"fadd.24" = fadd float %"fmul.24", %".871"
  %".872" = bitcast ptr %"R18" to ptr
  store float %"fadd.24", ptr %".872"
  ; FFMA R14, R35, R44, R14
  %".875" = load float, ptr %"R35"
  %".876" = load float, ptr %"R44"
  %".877" = load float, ptr %"R14"
  %"fmul.25" = fmul float %".875", %".876"
  %"fadd.25" = fadd float %"fmul.25", %".877"
  %".878" = bitcast ptr %"R14" to ptr
  store float %"fadd.25", ptr %".878"
  ; FFMA R18, R46, R49, R18
  %".881" = load float, ptr %"R46"
  %".882" = load float, ptr %"R49"
  %".883" = load float, ptr %"R18"
  %"fmul.26" = fmul float %".881", %".882"
  %"fadd.26" = fadd float %"fmul.26", %".883"
  %".884" = bitcast ptr %"R18" to ptr
  store float %"fadd.26", ptr %".884"
  ; FFMA R14, R15, R46, R14
  %".887" = load float, ptr %"R15"
  %".888" = load float, ptr %"R46"
  %".889" = load float, ptr %"R14"
  %"fmul.27" = fmul float %".887", %".888"
  %"fadd.27" = fadd float %"fmul.27", %".889"
  %".890" = bitcast ptr %"R14" to ptr
  store float %"fadd.27", ptr %".890"
  ; FFMA R13, R13, R48, R14
  %".893" = load float, ptr %"R13"
  %".894" = load float, ptr %"R48"
  %".895" = load float, ptr %"R14"
  %"fmul.28" = fmul float %".893", %".894"
  %"fadd.28" = fadd float %"fmul.28", %".895"
  %".896" = bitcast ptr %"R13" to ptr
  store float %"fadd.28", ptr %".896"
  ; FFMA R37, R48, R37, R18
  %".899" = load float, ptr %"R48"
  %".900" = load float, ptr %"R37"
  %".901" = load float, ptr %"R18"
  %"fmul.29" = fmul float %".899", %".900"
  %"fadd.29" = fadd float %"fmul.29", %".901"
  %".902" = bitcast ptr %"R37" to ptr
  store float %"fadd.29", ptr %".902"
  ; FFMA R52, R45, R50, R13
  %".905" = load float, ptr %"R45"
  %".906" = load float, ptr %"R50"
  %".907" = load float, ptr %"R13"
  %"fmul.30" = fmul float %".905", %".906"
  %"fadd.30" = fadd float %"fmul.30", %".907"
  %".908" = bitcast ptr %"R52" to ptr
  store float %"fadd.30", ptr %".908"
  ; FFMA R54, R50, R34, R37
  %".911" = load float, ptr %"R50"
  %".912" = load float, ptr %"R34"
  %".913" = load float, ptr %"R37"
  %"fmul.31" = fmul float %".911", %".912"
  %"fadd.31" = fadd float %"fmul.31", %".913"
  %".914" = bitcast ptr %"R54" to ptr
  store float %"fadd.31", ptr %".914"
  ; @P1 BRA `(.L_x_5)
  %".917" = load i1, ptr %"P1"
  %".918" = icmp ne i1 %".917", 1
  br i1 %".918", label %".L_x_5", label %".L_x_4"
.L_x_4:
  ; ISETP.GT.AND P1, PT, R9, 0x4, PT
  %".921" = load i32, ptr %"R9"
  %".922" = load i1, ptr %"PT"
  %"cmp.9" = icmp sgt i32 %".921", 4
  %".923" = and i1 %"cmp.9", %".922"
  store i1 %".923", ptr %"P1"
  ; @!P1 BRA `(.L_x_6)
  %".926" = load i1, ptr %"P1"
  %".927" = icmp eq i1 %".926", 1
  br i1 %".927", label %".L_x_6", label %".L_x_4_split_0x0a00"
.L_x_4_split_0x0a00:
  ; IADD3 R13, R0, R11, RZ
  %".930" = load i32, ptr %"R0"
  %".931" = load i32, ptr %"R11"
  %"add.54" = add i32 %".930", %".931"
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R13"
  ; MOV R17, 0x4
  store i32 4, ptr %"R17"
  ; LEA R14, R2.reuse, R13, 0x2
  %".936" = load i32, ptr %"R2"
  %".937" = load i32, ptr %"R13"
  %"shl.51" = shl i32 %".936", 2
  %"add.56" = add i32 %"shl.51", %".937"
  store i32 %"add.56", ptr %"R14"
  ; IMAD R10, R2, 0x3, R13
  %".940" = load i32, ptr %"R2"
  %".941" = load i32, ptr %"R13"
  %"mul.21" = mul i32 %".940", 3
  %"add.57" = add i32 %"mul.21", %".941"
  store i32 %"add.57", ptr %"R10"
  ; IADD3 R12, R11.reuse, 0x4, RZ
  %".944" = load i32, ptr %"R11"
  %"add.58" = add i32 %".944", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R12"
  ; IMAD.WIDE R18, R11, R17.reuse, c[0x0][0x168]
  %".947" = load i32, ptr %"R11"
  %".948" = load i32, ptr %"R17"
  %"mul.22" = mul i32 %".947", %".948"
  %"add.60" = add i32 %"mul.22", %"Arg_3"
  store i32 %"add.60", ptr %"R18"
  ; IADD3 R16, R14, 0x4, RZ
  %".951" = load i32, ptr %"R14"
  %"add.61" = add i32 %".951", 4
  %"add.62" = add i32 %"add.61", 0
  store i32 %"add.62", ptr %"R16"
  ; IADD3 R15, R10.reuse, 0x4, RZ
  %".954" = load i32, ptr %"R10"
  %"add.63" = add i32 %".954", 4
  %"add.64" = add i32 %"add.63", 0
  store i32 %"add.64", ptr %"R15"
  ; IMAD.WIDE R22, R10, R17, c[0x0][0x170]
  %".957" = load i32, ptr %"R10"
  %".958" = load i32, ptr %"R17"
  %"mul.23" = mul i32 %".957", %".958"
  %"add.65" = add i32 %"mul.23", %"Arg_4"
  store i32 %"add.65", ptr %"R22"
  ; IMAD.WIDE R20, R14, R17.reuse, c[0x0][0x170]
  %".961" = load i32, ptr %"R14"
  %".962" = load i32, ptr %"R17"
  %"mul.24" = mul i32 %".961", %".962"
  %"add.66" = add i32 %"mul.24", %"Arg_4"
  store i32 %"add.66", ptr %"R20"
  ; LDG.E.SYS R39, [R18]
  %".965" = load i32, ptr %"R18"
  %"zext.96" = zext i32 %".965" to i64
  %".966" = load i32, ptr %"R19"
  %"zext.97" = zext i32 %".966" to i64
  %"shl.52" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.52", %"zext.96"
  %".967" = inttoptr i64 %"or.48" to ptr
  %".968" = ptrtoint ptr %".967" to i64
  %".969" = add i64 %".968", 0
  %"for_LDG.48" = inttoptr i64 %".969" to ptr
  %".970" = load float, ptr %"for_LDG.48"
  %".971" = bitcast ptr %"R39" to ptr
  store float %".970", ptr %".971"
  ; IMAD.WIDE R12, R12, R17.reuse, c[0x0][0x168]
  %".974" = load i32, ptr %"R12"
  %".975" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".974", %".975"
  %"add.67" = add i32 %"mul.25", %"Arg_3"
  store i32 %"add.67", ptr %"R12"
  ; LDG.E.SYS R37, [R22]
  %".978" = load i32, ptr %"R22"
  %"zext.98" = zext i32 %".978" to i64
  %".979" = load i32, ptr %"R23"
  %"zext.99" = zext i32 %".979" to i64
  %"shl.53" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.53", %"zext.98"
  %".980" = inttoptr i64 %"or.49" to ptr
  %".981" = ptrtoint ptr %".980" to i64
  %".982" = add i64 %".981", 0
  %"for_LDG.49" = inttoptr i64 %".982" to ptr
  %".983" = load float, ptr %"for_LDG.49"
  %".984" = bitcast ptr %"R37" to ptr
  store float %".983", ptr %".984"
  ; LDG.E.SYS R36, [R20]
  %".987" = load i32, ptr %"R20"
  %"zext.100" = zext i32 %".987" to i64
  %".988" = load i32, ptr %"R21"
  %"zext.101" = zext i32 %".988" to i64
  %"shl.54" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.54", %"zext.100"
  %".989" = inttoptr i64 %"or.50" to ptr
  %".990" = ptrtoint ptr %".989" to i64
  %".991" = add i64 %".990", 0
  %"for_LDG.50" = inttoptr i64 %".991" to ptr
  %".992" = load float, ptr %"for_LDG.50"
  %".993" = bitcast ptr %"R36" to ptr
  store float %".992", ptr %".993"
  ; IMAD.WIDE R14, R15, R17, c[0x0][0x170]
  %".996" = load i32, ptr %"R15"
  %".997" = load i32, ptr %"R17"
  %"mul.26" = mul i32 %".996", %".997"
  %"add.68" = add i32 %"mul.26", %"Arg_4"
  store i32 %"add.68", ptr %"R14"
  ; LDG.E.SYS R34, [R18+0x4]
  %".1000" = load i32, ptr %"R18"
  %"zext.102" = zext i32 %".1000" to i64
  %".1001" = load i32, ptr %"R19"
  %"zext.103" = zext i32 %".1001" to i64
  %"shl.55" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.55", %"zext.102"
  %".1002" = inttoptr i64 %"or.51" to ptr
  %".1003" = ptrtoint ptr %".1002" to i64
  %".1004" = add i64 %".1003", 4
  %"for_LDG.51" = inttoptr i64 %".1004" to ptr
  %".1005" = load float, ptr %"for_LDG.51"
  %".1006" = bitcast ptr %"R34" to ptr
  store float %".1005", ptr %".1006"
  ; LDG.E.SYS R38, [R22+0x4]
  %".1009" = load i32, ptr %"R22"
  %"zext.104" = zext i32 %".1009" to i64
  %".1010" = load i32, ptr %"R23"
  %"zext.105" = zext i32 %".1010" to i64
  %"shl.56" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.56", %"zext.104"
  %".1011" = inttoptr i64 %"or.52" to ptr
  %".1012" = ptrtoint ptr %".1011" to i64
  %".1013" = add i64 %".1012", 4
  %"for_LDG.52" = inttoptr i64 %".1013" to ptr
  %".1014" = load float, ptr %"for_LDG.52"
  %".1015" = bitcast ptr %"R38" to ptr
  store float %".1014", ptr %".1015"
  ; LDG.E.SYS R35, [R20+0x4]
  %".1018" = load i32, ptr %"R20"
  %"zext.106" = zext i32 %".1018" to i64
  %".1019" = load i32, ptr %"R21"
  %"zext.107" = zext i32 %".1019" to i64
  %"shl.57" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.57", %"zext.106"
  %".1020" = inttoptr i64 %"or.53" to ptr
  %".1021" = ptrtoint ptr %".1020" to i64
  %".1022" = add i64 %".1021", 4
  %"for_LDG.53" = inttoptr i64 %".1022" to ptr
  %".1023" = load float, ptr %"for_LDG.53"
  %".1024" = bitcast ptr %"R35" to ptr
  store float %".1023", ptr %".1024"
  ; IMAD.WIDE R16, R16, R17, c[0x0][0x170]
  %".1027" = load i32, ptr %"R16"
  %".1028" = load i32, ptr %"R17"
  %"mul.27" = mul i32 %".1027", %".1028"
  %"add.69" = add i32 %"mul.27", %"Arg_4"
  store i32 %"add.69", ptr %"R16"
  ; LDG.E.SYS R24, [R18+0x8]
  %".1031" = load i32, ptr %"R18"
  %"zext.108" = zext i32 %".1031" to i64
  %".1032" = load i32, ptr %"R19"
  %"zext.109" = zext i32 %".1032" to i64
  %"shl.58" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.58", %"zext.108"
  %".1033" = inttoptr i64 %"or.54" to ptr
  %".1034" = ptrtoint ptr %".1033" to i64
  %".1035" = add i64 %".1034", 8
  %"for_LDG.54" = inttoptr i64 %".1035" to ptr
  %".1036" = load float, ptr %"for_LDG.54"
  %".1037" = bitcast ptr %"R24" to ptr
  store float %".1036", ptr %".1037"
  ; LDG.E.SYS R40, [R22+0x8]
  %".1040" = load i32, ptr %"R22"
  %"zext.110" = zext i32 %".1040" to i64
  %".1041" = load i32, ptr %"R23"
  %"zext.111" = zext i32 %".1041" to i64
  %"shl.59" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.59", %"zext.110"
  %".1042" = inttoptr i64 %"or.55" to ptr
  %".1043" = ptrtoint ptr %".1042" to i64
  %".1044" = add i64 %".1043", 8
  %"for_LDG.55" = inttoptr i64 %".1044" to ptr
  %".1045" = load float, ptr %"for_LDG.55"
  %".1046" = bitcast ptr %"R40" to ptr
  store float %".1045", ptr %".1046"
  ; LDG.E.SYS R41, [R20+0x8]
  %".1049" = load i32, ptr %"R20"
  %"zext.112" = zext i32 %".1049" to i64
  %".1050" = load i32, ptr %"R21"
  %"zext.113" = zext i32 %".1050" to i64
  %"shl.60" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.60", %"zext.112"
  %".1051" = inttoptr i64 %"or.56" to ptr
  %".1052" = ptrtoint ptr %".1051" to i64
  %".1053" = add i64 %".1052", 8
  %"for_LDG.56" = inttoptr i64 %".1053" to ptr
  %".1054" = load float, ptr %"for_LDG.56"
  %".1055" = bitcast ptr %"R41" to ptr
  store float %".1054", ptr %".1055"
  ; LDG.E.SYS R44, [R18+0xc]
  %".1058" = load i32, ptr %"R18"
  %"zext.114" = zext i32 %".1058" to i64
  %".1059" = load i32, ptr %"R19"
  %"zext.115" = zext i32 %".1059" to i64
  %"shl.61" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.61", %"zext.114"
  %".1060" = inttoptr i64 %"or.57" to ptr
  %".1061" = ptrtoint ptr %".1060" to i64
  %".1062" = add i64 %".1061", 12
  %"for_LDG.57" = inttoptr i64 %".1062" to ptr
  %".1063" = load float, ptr %"for_LDG.57"
  %".1064" = bitcast ptr %"R44" to ptr
  store float %".1063", ptr %".1064"
  ; LDG.E.SYS R42, [R22+0xc]
  %".1067" = load i32, ptr %"R22"
  %"zext.116" = zext i32 %".1067" to i64
  %".1068" = load i32, ptr %"R23"
  %"zext.117" = zext i32 %".1068" to i64
  %"shl.62" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.62", %"zext.116"
  %".1069" = inttoptr i64 %"or.58" to ptr
  %".1070" = ptrtoint ptr %".1069" to i64
  %".1071" = add i64 %".1070", 12
  %"for_LDG.58" = inttoptr i64 %".1071" to ptr
  %".1072" = load float, ptr %"for_LDG.58"
  %".1073" = bitcast ptr %"R42" to ptr
  store float %".1072", ptr %".1073"
  ; LDG.E.SYS R43, [R20+0xc]
  %".1076" = load i32, ptr %"R20"
  %"zext.118" = zext i32 %".1076" to i64
  %".1077" = load i32, ptr %"R21"
  %"zext.119" = zext i32 %".1077" to i64
  %"shl.63" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.63", %"zext.118"
  %".1078" = inttoptr i64 %"or.59" to ptr
  %".1079" = ptrtoint ptr %".1078" to i64
  %".1080" = add i64 %".1079", 12
  %"for_LDG.59" = inttoptr i64 %".1080" to ptr
  %".1081" = load float, ptr %"for_LDG.59"
  %".1082" = bitcast ptr %"R43" to ptr
  store float %".1081", ptr %".1082"
  ; LDG.E.SYS R48, [R12]
  %".1085" = load i32, ptr %"R12"
  %"zext.120" = zext i32 %".1085" to i64
  %".1086" = load i32, ptr %"R13"
  %"zext.121" = zext i32 %".1086" to i64
  %"shl.64" = shl i64 %"zext.121", 32
  %"or.60" = or i64 %"shl.64", %"zext.120"
  %".1087" = inttoptr i64 %"or.60" to ptr
  %".1088" = ptrtoint ptr %".1087" to i64
  %".1089" = add i64 %".1088", 0
  %"for_LDG.60" = inttoptr i64 %".1089" to ptr
  %".1090" = load float, ptr %"for_LDG.60"
  %".1091" = bitcast ptr %"R48" to ptr
  store float %".1090", ptr %".1091"
  ; LDG.E.SYS R46, [R14]
  %".1094" = load i32, ptr %"R14"
  %"zext.122" = zext i32 %".1094" to i64
  %".1095" = load i32, ptr %"R15"
  %"zext.123" = zext i32 %".1095" to i64
  %"shl.65" = shl i64 %"zext.123", 32
  %"or.61" = or i64 %"shl.65", %"zext.122"
  %".1096" = inttoptr i64 %"or.61" to ptr
  %".1097" = ptrtoint ptr %".1096" to i64
  %".1098" = add i64 %".1097", 0
  %"for_LDG.61" = inttoptr i64 %".1098" to ptr
  %".1099" = load float, ptr %"for_LDG.61"
  %".1100" = bitcast ptr %"R46" to ptr
  store float %".1099", ptr %".1100"
  ; LDG.E.SYS R45, [R16]
  %".1103" = load i32, ptr %"R16"
  %"zext.124" = zext i32 %".1103" to i64
  %".1104" = load i32, ptr %"R17"
  %"zext.125" = zext i32 %".1104" to i64
  %"shl.66" = shl i64 %"zext.125", 32
  %"or.62" = or i64 %"shl.66", %"zext.124"
  %".1105" = inttoptr i64 %"or.62" to ptr
  %".1106" = ptrtoint ptr %".1105" to i64
  %".1107" = add i64 %".1106", 0
  %"for_LDG.62" = inttoptr i64 %".1107" to ptr
  %".1108" = load float, ptr %"for_LDG.62"
  %".1109" = bitcast ptr %"R45" to ptr
  store float %".1108", ptr %".1109"
  ; LDG.E.SYS R56, [R12+0x4]
  %".1112" = load i32, ptr %"R12"
  %"zext.126" = zext i32 %".1112" to i64
  %".1113" = load i32, ptr %"R13"
  %"zext.127" = zext i32 %".1113" to i64
  %"shl.67" = shl i64 %"zext.127", 32
  %"or.63" = or i64 %"shl.67", %"zext.126"
  %".1114" = inttoptr i64 %"or.63" to ptr
  %".1115" = ptrtoint ptr %".1114" to i64
  %".1116" = add i64 %".1115", 4
  %"for_LDG.63" = inttoptr i64 %".1116" to ptr
  %".1117" = load float, ptr %"for_LDG.63"
  %".1118" = bitcast ptr %"R56" to ptr
  store float %".1117", ptr %".1118"
  ; LDG.E.SYS R50, [R14+0x4]
  %".1121" = load i32, ptr %"R14"
  %"zext.128" = zext i32 %".1121" to i64
  %".1122" = load i32, ptr %"R15"
  %"zext.129" = zext i32 %".1122" to i64
  %"shl.68" = shl i64 %"zext.129", 32
  %"or.64" = or i64 %"shl.68", %"zext.128"
  %".1123" = inttoptr i64 %"or.64" to ptr
  %".1124" = ptrtoint ptr %".1123" to i64
  %".1125" = add i64 %".1124", 4
  %"for_LDG.64" = inttoptr i64 %".1125" to ptr
  %".1126" = load float, ptr %"for_LDG.64"
  %".1127" = bitcast ptr %"R50" to ptr
  store float %".1126", ptr %".1127"
  ; LDG.E.SYS R47, [R16+0x4]
  %".1130" = load i32, ptr %"R16"
  %"zext.130" = zext i32 %".1130" to i64
  %".1131" = load i32, ptr %"R17"
  %"zext.131" = zext i32 %".1131" to i64
  %"shl.69" = shl i64 %"zext.131", 32
  %"or.65" = or i64 %"shl.69", %"zext.130"
  %".1132" = inttoptr i64 %"or.65" to ptr
  %".1133" = ptrtoint ptr %".1132" to i64
  %".1134" = add i64 %".1133", 4
  %"for_LDG.65" = inttoptr i64 %".1134" to ptr
  %".1135" = load float, ptr %"for_LDG.65"
  %".1136" = bitcast ptr %"R47" to ptr
  store float %".1135", ptr %".1136"
  ; LDG.E.SYS R10, [R12+0x8]
  %".1139" = load i32, ptr %"R12"
  %"zext.132" = zext i32 %".1139" to i64
  %".1140" = load i32, ptr %"R13"
  %"zext.133" = zext i32 %".1140" to i64
  %"shl.70" = shl i64 %"zext.133", 32
  %"or.66" = or i64 %"shl.70", %"zext.132"
  %".1141" = inttoptr i64 %"or.66" to ptr
  %".1142" = ptrtoint ptr %".1141" to i64
  %".1143" = add i64 %".1142", 8
  %"for_LDG.66" = inttoptr i64 %".1143" to ptr
  %".1144" = load float, ptr %"for_LDG.66"
  %".1145" = bitcast ptr %"R10" to ptr
  store float %".1144", ptr %".1145"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1148" = load i32, ptr %"R14"
  %"zext.134" = zext i32 %".1148" to i64
  %".1149" = load i32, ptr %"R15"
  %"zext.135" = zext i32 %".1149" to i64
  %"shl.71" = shl i64 %"zext.135", 32
  %"or.67" = or i64 %"shl.71", %"zext.134"
  %".1150" = inttoptr i64 %"or.67" to ptr
  %".1151" = ptrtoint ptr %".1150" to i64
  %".1152" = add i64 %".1151", 8
  %"for_LDG.67" = inttoptr i64 %".1152" to ptr
  %".1153" = load float, ptr %"for_LDG.67"
  %".1154" = bitcast ptr %"R25" to ptr
  store float %".1153", ptr %".1154"
  ; LDG.E.SYS R19, [R16+0x8]
  %".1157" = load i32, ptr %"R16"
  %"zext.136" = zext i32 %".1157" to i64
  %".1158" = load i32, ptr %"R17"
  %"zext.137" = zext i32 %".1158" to i64
  %"shl.72" = shl i64 %"zext.137", 32
  %"or.68" = or i64 %"shl.72", %"zext.136"
  %".1159" = inttoptr i64 %"or.68" to ptr
  %".1160" = ptrtoint ptr %".1159" to i64
  %".1161" = add i64 %".1160", 8
  %"for_LDG.68" = inttoptr i64 %".1161" to ptr
  %".1162" = load float, ptr %"for_LDG.68"
  %".1163" = bitcast ptr %"R19" to ptr
  store float %".1162", ptr %".1163"
  ; LDG.E.SYS R18, [R12+0xc]
  %".1166" = load i32, ptr %"R12"
  %"zext.138" = zext i32 %".1166" to i64
  %".1167" = load i32, ptr %"R13"
  %"zext.139" = zext i32 %".1167" to i64
  %"shl.73" = shl i64 %"zext.139", 32
  %"or.69" = or i64 %"shl.73", %"zext.138"
  %".1168" = inttoptr i64 %"or.69" to ptr
  %".1169" = ptrtoint ptr %".1168" to i64
  %".1170" = add i64 %".1169", 12
  %"for_LDG.69" = inttoptr i64 %".1170" to ptr
  %".1171" = load float, ptr %"for_LDG.69"
  %".1172" = bitcast ptr %"R18" to ptr
  store float %".1171", ptr %".1172"
  ; LDG.E.SYS R20, [R14+0xc]
  %".1175" = load i32, ptr %"R14"
  %"zext.140" = zext i32 %".1175" to i64
  %".1176" = load i32, ptr %"R15"
  %"zext.141" = zext i32 %".1176" to i64
  %"shl.74" = shl i64 %"zext.141", 32
  %"or.70" = or i64 %"shl.74", %"zext.140"
  %".1177" = inttoptr i64 %"or.70" to ptr
  %".1178" = ptrtoint ptr %".1177" to i64
  %".1179" = add i64 %".1178", 12
  %"for_LDG.70" = inttoptr i64 %".1179" to ptr
  %".1180" = load float, ptr %"for_LDG.70"
  %".1181" = bitcast ptr %"R20" to ptr
  store float %".1180", ptr %".1181"
  ; LDG.E.SYS R21, [R16+0xc]
  %".1184" = load i32, ptr %"R16"
  %"zext.142" = zext i32 %".1184" to i64
  %".1185" = load i32, ptr %"R17"
  %"zext.143" = zext i32 %".1185" to i64
  %"shl.75" = shl i64 %"zext.143", 32
  %"or.71" = or i64 %"shl.75", %"zext.142"
  %".1186" = inttoptr i64 %"or.71" to ptr
  %".1187" = ptrtoint ptr %".1186" to i64
  %".1188" = add i64 %".1187", 12
  %"for_LDG.71" = inttoptr i64 %".1188" to ptr
  %".1189" = load float, ptr %"for_LDG.71"
  %".1190" = bitcast ptr %"R21" to ptr
  store float %".1189", ptr %".1190"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1193" = xor i1 1, 1
  %".1194" = and i1 %".1193", 1
  %".1195" = and i1 %".1194", 1
  ; IADD3 R9, R9, -0x8, RZ
  %".1197" = load i32, ptr %"R9"
  %"add.70" = add i32 %".1197", -8
  %"add.71" = add i32 %"add.70", 0
  store i32 %"add.71", ptr %"R9"
  ; IADD3 R11, R11, 0x8, RZ
  %".1200" = load i32, ptr %"R11"
  %"add.72" = add i32 %".1200", 8
  %"add.73" = add i32 %"add.72", 0
  store i32 %"add.73", ptr %"R11"
  ; FFMA R37, R37, R39, R52
  %".1203" = load float, ptr %"R37"
  %".1204" = load float, ptr %"R39"
  %".1205" = load float, ptr %"R52"
  %"fmul.32" = fmul float %".1203", %".1204"
  %"fadd.32" = fadd float %"fmul.32", %".1205"
  %".1206" = bitcast ptr %"R37" to ptr
  store float %"fadd.32", ptr %".1206"
  ; FFMA R36, R39, R36, R54
  %".1209" = load float, ptr %"R39"
  %".1210" = load float, ptr %"R36"
  %".1211" = load float, ptr %"R54"
  %"fmul.33" = fmul float %".1209", %".1210"
  %"fadd.33" = fadd float %"fmul.33", %".1211"
  %".1212" = bitcast ptr %"R36" to ptr
  store float %"fadd.33", ptr %".1212"
  ; FFMA R37, R38, R34, R37
  %".1215" = load float, ptr %"R38"
  %".1216" = load float, ptr %"R34"
  %".1217" = load float, ptr %"R37"
  %"fmul.34" = fmul float %".1215", %".1216"
  %"fadd.34" = fadd float %"fmul.34", %".1217"
  %".1218" = bitcast ptr %"R37" to ptr
  store float %"fadd.34", ptr %".1218"
  ; FFMA R35, R34, R35, R36
  %".1221" = load float, ptr %"R34"
  %".1222" = load float, ptr %"R35"
  %".1223" = load float, ptr %"R36"
  %"fmul.35" = fmul float %".1221", %".1222"
  %"fadd.35" = fadd float %"fmul.35", %".1223"
  %".1224" = bitcast ptr %"R35" to ptr
  store float %"fadd.35", ptr %".1224"
  ; FFMA R37, R40, R24, R37
  %".1227" = load float, ptr %"R40"
  %".1228" = load float, ptr %"R24"
  %".1229" = load float, ptr %"R37"
  %"fmul.36" = fmul float %".1227", %".1228"
  %"fadd.36" = fadd float %"fmul.36", %".1229"
  %".1230" = bitcast ptr %"R37" to ptr
  store float %"fadd.36", ptr %".1230"
  ; FFMA R35, R24, R41, R35
  %".1233" = load float, ptr %"R24"
  %".1234" = load float, ptr %"R41"
  %".1235" = load float, ptr %"R35"
  %"fmul.37" = fmul float %".1233", %".1234"
  %"fadd.37" = fadd float %"fmul.37", %".1235"
  %".1236" = bitcast ptr %"R35" to ptr
  store float %"fadd.37", ptr %".1236"
  ; FFMA R37, R42, R44, R37
  %".1239" = load float, ptr %"R42"
  %".1240" = load float, ptr %"R44"
  %".1241" = load float, ptr %"R37"
  %"fmul.38" = fmul float %".1239", %".1240"
  %"fadd.38" = fadd float %"fmul.38", %".1241"
  %".1242" = bitcast ptr %"R37" to ptr
  store float %"fadd.38", ptr %".1242"
  ; FFMA R35, R44, R43, R35
  %".1245" = load float, ptr %"R44"
  %".1246" = load float, ptr %"R43"
  %".1247" = load float, ptr %"R35"
  %"fmul.39" = fmul float %".1245", %".1246"
  %"fadd.39" = fadd float %"fmul.39", %".1247"
  %".1248" = bitcast ptr %"R35" to ptr
  store float %"fadd.39", ptr %".1248"
  ; FFMA R37, R46, R48, R37
  %".1251" = load float, ptr %"R46"
  %".1252" = load float, ptr %"R48"
  %".1253" = load float, ptr %"R37"
  %"fmul.40" = fmul float %".1251", %".1252"
  %"fadd.40" = fadd float %"fmul.40", %".1253"
  %".1254" = bitcast ptr %"R37" to ptr
  store float %"fadd.40", ptr %".1254"
  ; FFMA R35, R48, R45, R35
  %".1257" = load float, ptr %"R48"
  %".1258" = load float, ptr %"R45"
  %".1259" = load float, ptr %"R35"
  %"fmul.41" = fmul float %".1257", %".1258"
  %"fadd.41" = fadd float %"fmul.41", %".1259"
  %".1260" = bitcast ptr %"R35" to ptr
  store float %"fadd.41", ptr %".1260"
  ; FFMA R37, R50, R56, R37
  %".1263" = load float, ptr %"R50"
  %".1264" = load float, ptr %"R56"
  %".1265" = load float, ptr %"R37"
  %"fmul.42" = fmul float %".1263", %".1264"
  %"fadd.42" = fadd float %"fmul.42", %".1265"
  %".1266" = bitcast ptr %"R37" to ptr
  store float %"fadd.42", ptr %".1266"
  ; FFMA R35, R56, R47, R35
  %".1269" = load float, ptr %"R56"
  %".1270" = load float, ptr %"R47"
  %".1271" = load float, ptr %"R35"
  %"fmul.43" = fmul float %".1269", %".1270"
  %"fadd.43" = fadd float %"fmul.43", %".1271"
  %".1272" = bitcast ptr %"R35" to ptr
  store float %"fadd.43", ptr %".1272"
  ; FFMA R25, R25, R10, R37
  %".1275" = load float, ptr %"R25"
  %".1276" = load float, ptr %"R10"
  %".1277" = load float, ptr %"R37"
  %"fmul.44" = fmul float %".1275", %".1276"
  %"fadd.44" = fadd float %"fmul.44", %".1277"
  %".1278" = bitcast ptr %"R25" to ptr
  store float %"fadd.44", ptr %".1278"
  ; FFMA R19, R10, R19, R35
  %".1281" = load float, ptr %"R10"
  %".1282" = load float, ptr %"R19"
  %".1283" = load float, ptr %"R35"
  %"fmul.45" = fmul float %".1281", %".1282"
  %"fadd.45" = fadd float %"fmul.45", %".1283"
  %".1284" = bitcast ptr %"R19" to ptr
  store float %"fadd.45", ptr %".1284"
  ; FFMA R52, R20, R18, R25
  %".1287" = load float, ptr %"R20"
  %".1288" = load float, ptr %"R18"
  %".1289" = load float, ptr %"R25"
  %"fmul.46" = fmul float %".1287", %".1288"
  %"fadd.46" = fadd float %"fmul.46", %".1289"
  %".1290" = bitcast ptr %"R52" to ptr
  store float %"fadd.46", ptr %".1290"
  ; FFMA R54, R18, R21, R19
  %".1293" = load float, ptr %"R18"
  %".1294" = load float, ptr %"R21"
  %".1295" = load float, ptr %"R19"
  %"fmul.47" = fmul float %".1293", %".1294"
  %"fadd.47" = fadd float %"fmul.47", %".1295"
  %".1296" = bitcast ptr %"R54" to ptr
  store float %"fadd.47", ptr %".1296"
  br label %".L_x_6"
.L_x_6:
  ; ISETP.NE.OR P0, PT, R9, RZ, P0
  %".1300" = load i32, ptr %"R9"
  %".1301" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".1300", 0
  %".1302" = or i1 %"cmp.10", %".1301"
  store i1 %".1302", ptr %"P0"
  ; @!P0 BRA `(.L_x_2)
  %".1305" = load i1, ptr %"P0"
  %".1306" = icmp eq i1 %".1305", 1
  br i1 %".1306", label %".L_x_2", label %".L_x_3"
.L_x_3:
  ; IADD3 R13, R0, R11, RZ
  %".1309" = load i32, ptr %"R0"
  %".1310" = load i32, ptr %"R11"
  %"add.74" = add i32 %".1309", %".1310"
  %"add.75" = add i32 %"add.74", 0
  store i32 %"add.75", ptr %"R13"
  ; MOV R16, 0x4
  store i32 4, ptr %"R16"
  ; LEA R17, R2.reuse, R13, 0x2
  %".1315" = load i32, ptr %"R2"
  %".1316" = load i32, ptr %"R13"
  %"shl.76" = shl i32 %".1315", 2
  %"add.76" = add i32 %"shl.76", %".1316"
  store i32 %"add.76", ptr %"R17"
  ; IMAD R15, R2, 0x3, R13
  %".1319" = load i32, ptr %"R2"
  %".1320" = load i32, ptr %"R13"
  %"mul.28" = mul i32 %".1319", 3
  %"add.77" = add i32 %"mul.28", %".1320"
  store i32 %"add.77", ptr %"R15"
  ; IMAD.WIDE R12, R11, R16, c[0x0][0x168]
  %".1323" = load i32, ptr %"R11"
  %".1324" = load i32, ptr %"R16"
  %"mul.29" = mul i32 %".1323", %".1324"
  %"add.78" = add i32 %"mul.29", %"Arg_3"
  store i32 %"add.78", ptr %"R12"
  ; IMAD.WIDE R14, R15, R16, c[0x0][0x170]
  %".1327" = load i32, ptr %"R15"
  %".1328" = load i32, ptr %"R16"
  %"mul.30" = mul i32 %".1327", %".1328"
  %"add.79" = add i32 %"mul.30", %"Arg_4"
  store i32 %"add.79", ptr %"R14"
  ; IMAD.WIDE R16, R17, R16, c[0x0][0x170]
  %".1331" = load i32, ptr %"R17"
  %".1332" = load i32, ptr %"R16"
  %"mul.31" = mul i32 %".1331", %".1332"
  %"add.80" = add i32 %"mul.31", %"Arg_4"
  store i32 %"add.80", ptr %"R16"
  ; LDG.E.SYS R21, [R12]
  %".1335" = load i32, ptr %"R12"
  %"zext.144" = zext i32 %".1335" to i64
  %".1336" = load i32, ptr %"R13"
  %"zext.145" = zext i32 %".1336" to i64
  %"shl.77" = shl i64 %"zext.145", 32
  %"or.72" = or i64 %"shl.77", %"zext.144"
  %".1337" = inttoptr i64 %"or.72" to ptr
  %".1338" = ptrtoint ptr %".1337" to i64
  %".1339" = add i64 %".1338", 0
  %"for_LDG.72" = inttoptr i64 %".1339" to ptr
  %".1340" = load float, ptr %"for_LDG.72"
  %".1341" = bitcast ptr %"R21" to ptr
  store float %".1340", ptr %".1341"
  ; LDG.E.SYS R19, [R14]
  %".1344" = load i32, ptr %"R14"
  %"zext.146" = zext i32 %".1344" to i64
  %".1345" = load i32, ptr %"R15"
  %"zext.147" = zext i32 %".1345" to i64
  %"shl.78" = shl i64 %"zext.147", 32
  %"or.73" = or i64 %"shl.78", %"zext.146"
  %".1346" = inttoptr i64 %"or.73" to ptr
  %".1347" = ptrtoint ptr %".1346" to i64
  %".1348" = add i64 %".1347", 0
  %"for_LDG.73" = inttoptr i64 %".1348" to ptr
  %".1349" = load float, ptr %"for_LDG.73"
  %".1350" = bitcast ptr %"R19" to ptr
  store float %".1349", ptr %".1350"
  ; LDG.E.SYS R10, [R16]
  %".1353" = load i32, ptr %"R16"
  %"zext.148" = zext i32 %".1353" to i64
  %".1354" = load i32, ptr %"R17"
  %"zext.149" = zext i32 %".1354" to i64
  %"shl.79" = shl i64 %"zext.149", 32
  %"or.74" = or i64 %"shl.79", %"zext.148"
  %".1355" = inttoptr i64 %"or.74" to ptr
  %".1356" = ptrtoint ptr %".1355" to i64
  %".1357" = add i64 %".1356", 0
  %"for_LDG.74" = inttoptr i64 %".1357" to ptr
  %".1358" = load float, ptr %"for_LDG.74"
  %".1359" = bitcast ptr %"R10" to ptr
  store float %".1358", ptr %".1359"
  ; LDG.E.SYS R23, [R12+0x4]
  %".1362" = load i32, ptr %"R12"
  %"zext.150" = zext i32 %".1362" to i64
  %".1363" = load i32, ptr %"R13"
  %"zext.151" = zext i32 %".1363" to i64
  %"shl.80" = shl i64 %"zext.151", 32
  %"or.75" = or i64 %"shl.80", %"zext.150"
  %".1364" = inttoptr i64 %"or.75" to ptr
  %".1365" = ptrtoint ptr %".1364" to i64
  %".1366" = add i64 %".1365", 4
  %"for_LDG.75" = inttoptr i64 %".1366" to ptr
  %".1367" = load float, ptr %"for_LDG.75"
  %".1368" = bitcast ptr %"R23" to ptr
  store float %".1367", ptr %".1368"
  ; LDG.E.SYS R18, [R14+0x4]
  %".1371" = load i32, ptr %"R14"
  %"zext.152" = zext i32 %".1371" to i64
  %".1372" = load i32, ptr %"R15"
  %"zext.153" = zext i32 %".1372" to i64
  %"shl.81" = shl i64 %"zext.153", 32
  %"or.76" = or i64 %"shl.81", %"zext.152"
  %".1373" = inttoptr i64 %"or.76" to ptr
  %".1374" = ptrtoint ptr %".1373" to i64
  %".1375" = add i64 %".1374", 4
  %"for_LDG.76" = inttoptr i64 %".1375" to ptr
  %".1376" = load float, ptr %"for_LDG.76"
  %".1377" = bitcast ptr %"R18" to ptr
  store float %".1376", ptr %".1377"
  ; LDG.E.SYS R20, [R16+0x4]
  %".1380" = load i32, ptr %"R16"
  %"zext.154" = zext i32 %".1380" to i64
  %".1381" = load i32, ptr %"R17"
  %"zext.155" = zext i32 %".1381" to i64
  %"shl.82" = shl i64 %"zext.155", 32
  %"or.77" = or i64 %"shl.82", %"zext.154"
  %".1382" = inttoptr i64 %"or.77" to ptr
  %".1383" = ptrtoint ptr %".1382" to i64
  %".1384" = add i64 %".1383", 4
  %"for_LDG.77" = inttoptr i64 %".1384" to ptr
  %".1385" = load float, ptr %"for_LDG.77"
  %".1386" = bitcast ptr %"R20" to ptr
  store float %".1385", ptr %".1386"
  ; LDG.E.SYS R35, [R12+0x8]
  %".1389" = load i32, ptr %"R12"
  %"zext.156" = zext i32 %".1389" to i64
  %".1390" = load i32, ptr %"R13"
  %"zext.157" = zext i32 %".1390" to i64
  %"shl.83" = shl i64 %"zext.157", 32
  %"or.78" = or i64 %"shl.83", %"zext.156"
  %".1391" = inttoptr i64 %"or.78" to ptr
  %".1392" = ptrtoint ptr %".1391" to i64
  %".1393" = add i64 %".1392", 8
  %"for_LDG.78" = inttoptr i64 %".1393" to ptr
  %".1394" = load float, ptr %"for_LDG.78"
  %".1395" = bitcast ptr %"R35" to ptr
  store float %".1394", ptr %".1395"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1398" = load i32, ptr %"R14"
  %"zext.158" = zext i32 %".1398" to i64
  %".1399" = load i32, ptr %"R15"
  %"zext.159" = zext i32 %".1399" to i64
  %"shl.84" = shl i64 %"zext.159", 32
  %"or.79" = or i64 %"shl.84", %"zext.158"
  %".1400" = inttoptr i64 %"or.79" to ptr
  %".1401" = ptrtoint ptr %".1400" to i64
  %".1402" = add i64 %".1401", 8
  %"for_LDG.79" = inttoptr i64 %".1402" to ptr
  %".1403" = load float, ptr %"for_LDG.79"
  %".1404" = bitcast ptr %"R25" to ptr
  store float %".1403", ptr %".1404"
  ; LDG.E.SYS R22, [R16+0x8]
  %".1407" = load i32, ptr %"R16"
  %"zext.160" = zext i32 %".1407" to i64
  %".1408" = load i32, ptr %"R17"
  %"zext.161" = zext i32 %".1408" to i64
  %"shl.85" = shl i64 %"zext.161", 32
  %"or.80" = or i64 %"shl.85", %"zext.160"
  %".1409" = inttoptr i64 %"or.80" to ptr
  %".1410" = ptrtoint ptr %".1409" to i64
  %".1411" = add i64 %".1410", 8
  %"for_LDG.80" = inttoptr i64 %".1411" to ptr
  %".1412" = load float, ptr %"for_LDG.80"
  %".1413" = bitcast ptr %"R22" to ptr
  store float %".1412", ptr %".1413"
  ; LDG.E.SYS R39, [R12+0xc]
  %".1416" = load i32, ptr %"R12"
  %"zext.162" = zext i32 %".1416" to i64
  %".1417" = load i32, ptr %"R13"
  %"zext.163" = zext i32 %".1417" to i64
  %"shl.86" = shl i64 %"zext.163", 32
  %"or.81" = or i64 %"shl.86", %"zext.162"
  %".1418" = inttoptr i64 %"or.81" to ptr
  %".1419" = ptrtoint ptr %".1418" to i64
  %".1420" = add i64 %".1419", 12
  %"for_LDG.81" = inttoptr i64 %".1420" to ptr
  %".1421" = load float, ptr %"for_LDG.81"
  %".1422" = bitcast ptr %"R39" to ptr
  store float %".1421", ptr %".1422"
  ; LDG.E.SYS R37, [R14+0xc]
  %".1425" = load i32, ptr %"R14"
  %"zext.164" = zext i32 %".1425" to i64
  %".1426" = load i32, ptr %"R15"
  %"zext.165" = zext i32 %".1426" to i64
  %"shl.87" = shl i64 %"zext.165", 32
  %"or.82" = or i64 %"shl.87", %"zext.164"
  %".1427" = inttoptr i64 %"or.82" to ptr
  %".1428" = ptrtoint ptr %".1427" to i64
  %".1429" = add i64 %".1428", 12
  %"for_LDG.82" = inttoptr i64 %".1429" to ptr
  %".1430" = load float, ptr %"for_LDG.82"
  %".1431" = bitcast ptr %"R37" to ptr
  store float %".1430", ptr %".1431"
  ; LDG.E.SYS R24, [R16+0xc]
  %".1434" = load i32, ptr %"R16"
  %"zext.166" = zext i32 %".1434" to i64
  %".1435" = load i32, ptr %"R17"
  %"zext.167" = zext i32 %".1435" to i64
  %"shl.88" = shl i64 %"zext.167", 32
  %"or.83" = or i64 %"shl.88", %"zext.166"
  %".1436" = inttoptr i64 %"or.83" to ptr
  %".1437" = ptrtoint ptr %".1436" to i64
  %".1438" = add i64 %".1437", 12
  %"for_LDG.83" = inttoptr i64 %".1438" to ptr
  %".1439" = load float, ptr %"for_LDG.83"
  %".1440" = bitcast ptr %"R24" to ptr
  store float %".1439", ptr %".1440"
  ; IADD3 R9, R9, -0x4, RZ
  %".1443" = load i32, ptr %"R9"
  %"add.81" = add i32 %".1443", -4
  %"add.82" = add i32 %"add.81", 0
  store i32 %"add.82", ptr %"R9"
  ; IADD3 R11, R11, 0x4, RZ
  %".1446" = load i32, ptr %"R11"
  %"add.83" = add i32 %".1446", 4
  %"add.84" = add i32 %"add.83", 0
  store i32 %"add.84", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R9, RZ, PT
  %".1449" = load i32, ptr %"R9"
  %".1450" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".1449", 0
  %".1451" = and i1 %"cmp.11", %".1450"
  store i1 %".1451", ptr %"P0"
  ; FFMA R19, R19, R21, R52
  %".1454" = load float, ptr %"R19"
  %".1455" = load float, ptr %"R21"
  %".1456" = load float, ptr %"R52"
  %"fmul.48" = fmul float %".1454", %".1455"
  %"fadd.48" = fadd float %"fmul.48", %".1456"
  %".1457" = bitcast ptr %"R19" to ptr
  store float %"fadd.48", ptr %".1457"
  ; FFMA R10, R21, R10, R54
  %".1460" = load float, ptr %"R21"
  %".1461" = load float, ptr %"R10"
  %".1462" = load float, ptr %"R54"
  %"fmul.49" = fmul float %".1460", %".1461"
  %"fadd.49" = fadd float %"fmul.49", %".1462"
  %".1463" = bitcast ptr %"R10" to ptr
  store float %"fadd.49", ptr %".1463"
  ; FFMA R18, R18, R23, R19
  %".1466" = load float, ptr %"R18"
  %".1467" = load float, ptr %"R23"
  %".1468" = load float, ptr %"R19"
  %"fmul.50" = fmul float %".1466", %".1467"
  %"fadd.50" = fadd float %"fmul.50", %".1468"
  %".1469" = bitcast ptr %"R18" to ptr
  store float %"fadd.50", ptr %".1469"
  ; FFMA R10, R23, R20, R10
  %".1472" = load float, ptr %"R23"
  %".1473" = load float, ptr %"R20"
  %".1474" = load float, ptr %"R10"
  %"fmul.51" = fmul float %".1472", %".1473"
  %"fadd.51" = fadd float %"fmul.51", %".1474"
  %".1475" = bitcast ptr %"R10" to ptr
  store float %"fadd.51", ptr %".1475"
  ; FFMA R18, R25, R35, R18
  %".1478" = load float, ptr %"R25"
  %".1479" = load float, ptr %"R35"
  %".1480" = load float, ptr %"R18"
  %"fmul.52" = fmul float %".1478", %".1479"
  %"fadd.52" = fadd float %"fmul.52", %".1480"
  %".1481" = bitcast ptr %"R18" to ptr
  store float %"fadd.52", ptr %".1481"
  ; FFMA R10, R35, R22, R10
  %".1484" = load float, ptr %"R35"
  %".1485" = load float, ptr %"R22"
  %".1486" = load float, ptr %"R10"
  %"fmul.53" = fmul float %".1484", %".1485"
  %"fadd.53" = fadd float %"fmul.53", %".1486"
  %".1487" = bitcast ptr %"R10" to ptr
  store float %"fadd.53", ptr %".1487"
  ; FFMA R52, R37, R39, R18
  %".1490" = load float, ptr %"R37"
  %".1491" = load float, ptr %"R39"
  %".1492" = load float, ptr %"R18"
  %"fmul.54" = fmul float %".1490", %".1491"
  %"fadd.54" = fadd float %"fmul.54", %".1492"
  %".1493" = bitcast ptr %"R52" to ptr
  store float %"fadd.54", ptr %".1493"
  ; FFMA R54, R39, R24, R10
  %".1496" = load float, ptr %"R39"
  %".1497" = load float, ptr %"R24"
  %".1498" = load float, ptr %"R10"
  %"fmul.55" = fmul float %".1496", %".1497"
  %"fadd.55" = fadd float %"fmul.55", %".1498"
  %".1499" = bitcast ptr %"R54" to ptr
  store float %"fadd.55", ptr %".1499"
  ; @P0 BRA `(.L_x_3)
  %".1502" = load i1, ptr %"P0"
  %".1503" = icmp ne i1 %".1502", 1
  br i1 %".1503", label %".L_x_3", label %".L_x_2"
.L_x_2:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1506" = load i32, ptr %"R4"
  %".1507" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".1506", 0
  %".1508" = and i1 %"cmp.12", %".1507"
  store i1 %".1508", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".1511" = load i1, ptr %"P0"
  %".1512" = icmp eq i1 %".1511", 1
  br i1 %".1512", label %".L_x_1", label %".L_x_2_split_0x0fb0"
.L_x_2_split_0x0fb0:
  ; IADD3 R9, R0, R11, RZ
  %".1515" = load i32, ptr %"R0"
  %".1516" = load i32, ptr %"R11"
  %"add.85" = add i32 %".1515", %".1516"
  %"add.86" = add i32 %"add.85", 0
  store i32 %"add.86", ptr %"R9"
  ; MOV R15, 0x4
  store i32 4, ptr %"R15"
  ; LEA R14, R2.reuse, R9, 0x2
  %".1521" = load i32, ptr %"R2"
  %".1522" = load i32, ptr %"R9"
  %"shl.89" = shl i32 %".1521", 2
  %"add.87" = add i32 %"shl.89", %".1522"
  store i32 %"add.87", ptr %"R14"
  ; IMAD R12, R2, 0x3, R9
  %".1525" = load i32, ptr %"R2"
  %".1526" = load i32, ptr %"R9"
  %"mul.32" = mul i32 %".1525", 3
  %"add.88" = add i32 %"mul.32", %".1526"
  store i32 %"add.88", ptr %"R12"
  ; IMAD.WIDE R10, R11, R15, c[0x0][0x168]
  %".1529" = load i32, ptr %"R11"
  %".1530" = load i32, ptr %"R15"
  %"mul.33" = mul i32 %".1529", %".1530"
  %"add.89" = add i32 %"mul.33", %"Arg_3"
  store i32 %"add.89", ptr %"R10"
  ; IMAD.WIDE R12, R12, R15, c[0x0][0x170]
  %".1533" = load i32, ptr %"R12"
  %".1534" = load i32, ptr %"R15"
  %"mul.34" = mul i32 %".1533", %".1534"
  %"add.90" = add i32 %"mul.34", %"Arg_4"
  store i32 %"add.90", ptr %"R12"
  ; IMAD.WIDE R14, R14, R15, c[0x0][0x170]
  %".1537" = load i32, ptr %"R14"
  %".1538" = load i32, ptr %"R15"
  %"mul.35" = mul i32 %".1537", %".1538"
  %"add.91" = add i32 %"mul.35", %"Arg_4"
  store i32 %"add.91", ptr %"R14"
  ; LDG.E.SYS R17, [R10]
  %".1541" = load i32, ptr %"R10"
  %"zext.168" = zext i32 %".1541" to i64
  %".1542" = load i32, ptr %"R11"
  %"zext.169" = zext i32 %".1542" to i64
  %"shl.90" = shl i64 %"zext.169", 32
  %"or.84" = or i64 %"shl.90", %"zext.168"
  %".1543" = inttoptr i64 %"or.84" to ptr
  %".1544" = ptrtoint ptr %".1543" to i64
  %".1545" = add i64 %".1544", 0
  %"for_LDG.84" = inttoptr i64 %".1545" to ptr
  %".1546" = load float, ptr %"for_LDG.84"
  %".1547" = bitcast ptr %"R17" to ptr
  store float %".1546", ptr %".1547"
  ; LDG.E.SYS R9, [R12]
  %".1550" = load i32, ptr %"R12"
  %"zext.170" = zext i32 %".1550" to i64
  %".1551" = load i32, ptr %"R13"
  %"zext.171" = zext i32 %".1551" to i64
  %"shl.91" = shl i64 %"zext.171", 32
  %"or.85" = or i64 %"shl.91", %"zext.170"
  %".1552" = inttoptr i64 %"or.85" to ptr
  %".1553" = ptrtoint ptr %".1552" to i64
  %".1554" = add i64 %".1553", 0
  %"for_LDG.85" = inttoptr i64 %".1554" to ptr
  %".1555" = load float, ptr %"for_LDG.85"
  %".1556" = bitcast ptr %"R9" to ptr
  store float %".1555", ptr %".1556"
  ; LDG.E.SYS R16, [R14]
  %".1559" = load i32, ptr %"R14"
  %"zext.172" = zext i32 %".1559" to i64
  %".1560" = load i32, ptr %"R15"
  %"zext.173" = zext i32 %".1560" to i64
  %"shl.92" = shl i64 %"zext.173", 32
  %"or.86" = or i64 %"shl.92", %"zext.172"
  %".1561" = inttoptr i64 %"or.86" to ptr
  %".1562" = ptrtoint ptr %".1561" to i64
  %".1563" = add i64 %".1562", 0
  %"for_LDG.86" = inttoptr i64 %".1563" to ptr
  %".1564" = load float, ptr %"for_LDG.86"
  %".1565" = bitcast ptr %"R16" to ptr
  store float %".1564", ptr %".1565"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".1568" = load i32, ptr %"R4"
  %".1569" = load i1, ptr %"PT"
  %"cmp.13" = icmp ne i32 %".1568", 1
  %".1570" = and i1 %"cmp.13", %".1569"
  store i1 %".1570", ptr %"P0"
  ; FFMA R52, R9, R17, R52
  %".1573" = load float, ptr %"R9"
  %".1574" = load float, ptr %"R17"
  %".1575" = load float, ptr %"R52"
  %"fmul.56" = fmul float %".1573", %".1574"
  %"fadd.56" = fadd float %"fmul.56", %".1575"
  %".1576" = bitcast ptr %"R52" to ptr
  store float %"fadd.56", ptr %".1576"
  ; FFMA R54, R17, R16, R54
  %".1579" = load float, ptr %"R17"
  %".1580" = load float, ptr %"R16"
  %".1581" = load float, ptr %"R54"
  %"fmul.57" = fmul float %".1579", %".1580"
  %"fadd.57" = fadd float %"fmul.57", %".1581"
  %".1582" = bitcast ptr %"R54" to ptr
  store float %"fadd.57", ptr %".1582"
  ; @!P0 BRA `(.L_x_1)
  %".1585" = load i1, ptr %"P0"
  %".1586" = icmp eq i1 %".1585", 1
  br i1 %".1586", label %".L_x_1", label %".L_x_2_split_0x1090"
.L_x_2_split_0x1090:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".1589" = load i32, ptr %"R4"
  %".1590" = load i1, ptr %"PT"
  %"cmp.14" = icmp ne i32 %".1589", 2
  %".1591" = and i1 %"cmp.14", %".1590"
  store i1 %".1591", ptr %"P0"
  ; LDG.E.SYS R9, [R12+0x4]
  %".1594" = load i32, ptr %"R12"
  %"zext.174" = zext i32 %".1594" to i64
  %".1595" = load i32, ptr %"R13"
  %"zext.175" = zext i32 %".1595" to i64
  %"shl.93" = shl i64 %"zext.175", 32
  %"or.87" = or i64 %"shl.93", %"zext.174"
  %".1596" = inttoptr i64 %"or.87" to ptr
  %".1597" = ptrtoint ptr %".1596" to i64
  %".1598" = add i64 %".1597", 4
  %"for_LDG.87" = inttoptr i64 %".1598" to ptr
  %".1599" = load float, ptr %"for_LDG.87"
  %".1600" = bitcast ptr %"R9" to ptr
  store float %".1599", ptr %".1600"
  ; LDG.E.SYS R17, [R10+0x4]
  %".1603" = load i32, ptr %"R10"
  %"zext.176" = zext i32 %".1603" to i64
  %".1604" = load i32, ptr %"R11"
  %"zext.177" = zext i32 %".1604" to i64
  %"shl.94" = shl i64 %"zext.177", 32
  %"or.88" = or i64 %"shl.94", %"zext.176"
  %".1605" = inttoptr i64 %"or.88" to ptr
  %".1606" = ptrtoint ptr %".1605" to i64
  %".1607" = add i64 %".1606", 4
  %"for_LDG.88" = inttoptr i64 %".1607" to ptr
  %".1608" = load float, ptr %"for_LDG.88"
  %".1609" = bitcast ptr %"R17" to ptr
  store float %".1608", ptr %".1609"
  ; LDG.E.SYS R16, [R14+0x4]
  %".1612" = load i32, ptr %"R14"
  %"zext.178" = zext i32 %".1612" to i64
  %".1613" = load i32, ptr %"R15"
  %"zext.179" = zext i32 %".1613" to i64
  %"shl.95" = shl i64 %"zext.179", 32
  %"or.89" = or i64 %"shl.95", %"zext.178"
  %".1614" = inttoptr i64 %"or.89" to ptr
  %".1615" = ptrtoint ptr %".1614" to i64
  %".1616" = add i64 %".1615", 4
  %"for_LDG.89" = inttoptr i64 %".1616" to ptr
  %".1617" = load float, ptr %"for_LDG.89"
  %".1618" = bitcast ptr %"R16" to ptr
  store float %".1617", ptr %".1618"
  ; @P0 LDG.E.SYS R19, [R12+0x8]
  %".1621" = load i1, ptr %"P0"
  %".1622" = icmp ne i1 %".1621", 1
  br i1 %".1622", label %".L_x_2_split_0x1090_conditionalExpr_0x10d0", label %".L_x_2_split_0x10e0"
.L_x_2_split_0x1090_conditionalExpr_0x10d0:
  ; LDG.E.SYS R19, [R12+0x8]
  %".1625" = load i32, ptr %"R12"
  %"zext.180" = zext i32 %".1625" to i64
  %".1626" = load i32, ptr %"R13"
  %"zext.181" = zext i32 %".1626" to i64
  %"shl.96" = shl i64 %"zext.181", 32
  %"or.90" = or i64 %"shl.96", %"zext.180"
  %".1627" = inttoptr i64 %"or.90" to ptr
  %".1628" = ptrtoint ptr %".1627" to i64
  %".1629" = add i64 %".1628", 8
  %"for_LDG.90" = inttoptr i64 %".1629" to ptr
  %".1630" = load float, ptr %"for_LDG.90"
  %".1631" = bitcast ptr %"R19" to ptr
  store float %".1630", ptr %".1631"
  ; BRA `(.L_x_2_split_0x10e0)
  br label %".L_x_2_split_0x10e0"
.L_x_2_split_0x10e0:
  ; @P0 LDG.E.SYS R21, [R10+0x8]
  %".1636" = load i1, ptr %"P0"
  %".1637" = icmp ne i1 %".1636", 1
  br i1 %".1637", label %".L_x_2_split_0x10e0_conditionalExpr_0x10e0", label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10e0_conditionalExpr_0x10e0:
  ; LDG.E.SYS R21, [R10+0x8]
  %".1640" = load i32, ptr %"R10"
  %"zext.182" = zext i32 %".1640" to i64
  %".1641" = load i32, ptr %"R11"
  %"zext.183" = zext i32 %".1641" to i64
  %"shl.97" = shl i64 %"zext.183", 32
  %"or.91" = or i64 %"shl.97", %"zext.182"
  %".1642" = inttoptr i64 %"or.91" to ptr
  %".1643" = ptrtoint ptr %".1642" to i64
  %".1644" = add i64 %".1643", 8
  %"for_LDG.91" = inttoptr i64 %".1644" to ptr
  %".1645" = load float, ptr %"for_LDG.91"
  %".1646" = bitcast ptr %"R21" to ptr
  store float %".1645", ptr %".1646"
  ; BRA `(.L_x_2_split_0x10f0)
  br label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10f0:
  ; @P0 LDG.E.SYS R18, [R14+0x8]
  %".1651" = load i1, ptr %"P0"
  %".1652" = icmp ne i1 %".1651", 1
  br i1 %".1652", label %".L_x_2_split_0x10f0_conditionalExpr_0x10f0", label %".L_x_2_split_0x1100"
.L_x_2_split_0x10f0_conditionalExpr_0x10f0:
  ; LDG.E.SYS R18, [R14+0x8]
  %".1655" = load i32, ptr %"R14"
  %"zext.184" = zext i32 %".1655" to i64
  %".1656" = load i32, ptr %"R15"
  %"zext.185" = zext i32 %".1656" to i64
  %"shl.98" = shl i64 %"zext.185", 32
  %"or.92" = or i64 %"shl.98", %"zext.184"
  %".1657" = inttoptr i64 %"or.92" to ptr
  %".1658" = ptrtoint ptr %".1657" to i64
  %".1659" = add i64 %".1658", 8
  %"for_LDG.92" = inttoptr i64 %".1659" to ptr
  %".1660" = load float, ptr %"for_LDG.92"
  %".1661" = bitcast ptr %"R18" to ptr
  store float %".1660", ptr %".1661"
  ; BRA `(.L_x_2_split_0x1100)
  br label %".L_x_2_split_0x1100"
.L_x_2_split_0x1100:
  ; FFMA R52, R9, R17, R52
  %".1666" = load float, ptr %"R9"
  %".1667" = load float, ptr %"R17"
  %".1668" = load float, ptr %"R52"
  %"fmul.58" = fmul float %".1666", %".1667"
  %"fadd.58" = fadd float %"fmul.58", %".1668"
  %".1669" = bitcast ptr %"R52" to ptr
  store float %"fadd.58", ptr %".1669"
  ; FFMA R54, R17, R16, R54
  %".1672" = load float, ptr %"R17"
  %".1673" = load float, ptr %"R16"
  %".1674" = load float, ptr %"R54"
  %"fmul.59" = fmul float %".1672", %".1673"
  %"fadd.59" = fadd float %"fmul.59", %".1674"
  %".1675" = bitcast ptr %"R54" to ptr
  store float %"fadd.59", ptr %".1675"
  ; @P0 FFMA R52, R19, R21, R52
  %".1678" = load i1, ptr %"P0"
  %".1679" = icmp ne i1 %".1678", 1
  br i1 %".1679", label %".L_x_2_split_0x1100_conditionalExpr_0x1120", label %".L_x_2_split_0x1130"
.L_x_2_split_0x1100_conditionalExpr_0x1120:
  ; FFMA R52, R19, R21, R52
  %".1682" = load float, ptr %"R19"
  %".1683" = load float, ptr %"R21"
  %".1684" = load float, ptr %"R52"
  %"fmul.60" = fmul float %".1682", %".1683"
  %"fadd.60" = fadd float %"fmul.60", %".1684"
  %".1685" = bitcast ptr %"R52" to ptr
  store float %"fadd.60", ptr %".1685"
  ; BRA `(.L_x_2_split_0x1130)
  br label %".L_x_2_split_0x1130"
.L_x_2_split_0x1130:
  ; @P0 FFMA R54, R21, R18, R54
  %".1690" = load i1, ptr %"P0"
  %".1691" = icmp ne i1 %".1690", 1
  br i1 %".1691", label %".L_x_2_split_0x1130_conditionalExpr_0x1130", label %".L_x_1"
.L_x_2_split_0x1130_conditionalExpr_0x1130:
  ; FFMA R54, R21, R18, R54
  %".1694" = load float, ptr %"R21"
  %".1695" = load float, ptr %"R18"
  %".1696" = load float, ptr %"R54"
  %"fmul.61" = fmul float %".1694", %".1695"
  %"fadd.61" = fadd float %"fmul.61", %".1696"
  %".1697" = bitcast ptr %"R54" to ptr
  store float %"fadd.61", ptr %".1697"
  ; BRA `(.L_x_1)
  br label %".L_x_1"
.L_x_1:
  ; LDG.E.SYS R9, [R26]
  %".1702" = load i32, ptr %"R26"
  %"zext.186" = zext i32 %".1702" to i64
  %"zext.187" = zext i32 0 to i64
  %"shl.99" = shl i64 %"zext.187", 32
  %"or.93" = or i64 %"shl.99", %"zext.186"
  %".1703" = inttoptr i64 %"or.93" to ptr
  %".1704" = ptrtoint ptr %".1703" to i64
  %".1705" = add i64 %".1704", 0
  %"for_LDG.93" = inttoptr i64 %".1705" to ptr
  %".1706" = load float, ptr %"for_LDG.93"
  %".1707" = bitcast ptr %"R9" to ptr
  store float %".1706", ptr %".1707"
  ; MOV R10, 0x3bbb989d
  %".1710" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".1710"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R11, 0x437c0000
  %".1714" = bitcast ptr %"R11" to ptr
  store float 0x41d0df0000000000, ptr %".1714"
  ; BSSY B0, `(.L_x_7)
  ; FADD R9, R9, R52
  %".1718" = load float, ptr %"R9"
  %".1719" = load float, ptr %"R52"
  %"fadd.62" = fadd float %".1718", %".1719"
  %".1720" = bitcast ptr %"R9" to ptr
  store float %"fadd.62", ptr %".1720"
  ; FFMA.SAT R10, -R9, R10, 0.5
  %".1723" = load float, ptr %"R9"
  %".1724" = fneg float %".1723"
  %".1725" = load float, ptr %"R10"
  %"fmul.62" = fmul float %".1724", %".1725"
  %"fadd.63" = fadd float %"fmul.62", 0x3fe0000000000000
  %".1726" = bitcast ptr %"R10" to ptr
  store float %"fadd.63", ptr %".1726"
  ; FFMA.RM R10, R10, R11, 12582913
  %".1729" = load float, ptr %"R10"
  %".1730" = load float, ptr %"R11"
  %"fmul.63" = fmul float %".1729", %".1730"
  %"fadd.64" = fadd float %"fmul.63", 0x4168000020000000
  %".1731" = bitcast ptr %"R10" to ptr
  store float %"fadd.64", ptr %".1731"
  ; FADD R12, R10.reuse, -12583039
  %".1734" = load float, ptr %"R10"
  %"fadd.65" = fadd float %".1734", 0xc168000fe0000000
  %".1735" = bitcast ptr %"R12" to ptr
  store float %"fadd.65", ptr %".1735"
  ; SHF.L.U32 R10, R10, 0x17, RZ
  %".1738" = icmp ult i32 23, 32
  %"SHF_min" = select  i1 %".1738", i32 23, i32 32
  %".1739" = load i32, ptr %"R10"
  %"zext.188" = zext i32 0 to i64
  %"zext.189" = zext i32 %".1739" to i64
  %"zext.190" = zext i32 23 to i64
  %"shl.100" = shl i64 %"zext.188", 32
  %"or.94" = or i64 %"shl.100", %"zext.189"
  %"shl.101" = shl i64 %"or.94", %"zext.190"
  %"and" = and i64 %"shl.101", 4294967295
  %"trunc32" = trunc i64 %"and" to i32
  store i32 %"trunc32", ptr %"R10"
  ; FFMA R12, -R9, 1.4426950216293334961, -R12
  %".1742" = load float, ptr %"R9"
  %".1743" = fneg float %".1742"
  %".1744" = load float, ptr %"R12"
  %".1745" = fneg float %".1744"
  %"fmul.64" = fmul float %".1743", 0x3ff7154760000000
  %"fadd.66" = fadd float %"fmul.64", %".1745"
  %".1746" = bitcast ptr %"R12" to ptr
  store float %"fadd.66", ptr %".1746"
  ; FFMA R12, -R9, 1.925963033500011079e-08, R12
  %".1749" = load float, ptr %"R9"
  %".1750" = fneg float %".1749"
  %".1751" = load float, ptr %"R12"
  %"fmul.65" = fmul float %".1750", 0x3e54ae0c00000000
  %"fadd.67" = fadd float %"fmul.65", %".1751"
  %".1752" = bitcast ptr %"R12" to ptr
  store float %"fadd.67", ptr %".1752"
  ; MUFU.EX2 R9, R12
  %".1755" = load float, ptr %"R12"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1755")
  %".1756" = bitcast ptr %"R9" to ptr
  store float %"llvm_exp2_f32_result", ptr %".1756"
  ; FFMA R24, R10, R9, 1
  %".1759" = load float, ptr %"R10"
  %".1760" = load float, ptr %"R9"
  %"fmul.66" = fmul float %".1759", %".1760"
  %"fadd.68" = fadd float %"fmul.66", 0x3ff0000000000000
  %".1761" = bitcast ptr %"R24" to ptr
  store float %"fadd.68", ptr %".1761"
  ; IADD3 R9, R24, 0x1800000, RZ
  %".1764" = load i32, ptr %"R24"
  %"add.92" = add i32 %".1764", 25165824
  %"add.93" = add i32 %"add.92", 0
  store i32 %"add.93", ptr %"R9"
  ; LOP3.LUT R9, R9, 0x7f800000, RZ, 0xc0, !PT
  %".1767" = load i32, ptr %"R9"
  %".1768" = and i32 %".1767", 2139095040
  store i32 %".1768", ptr %"R9"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".1771" = load i32, ptr %"R9"
  %".1772" = load i1, ptr %"PT"
  %"cmp.15" = icmp sgt i32 %".1771", 33554431
  %".1773" = and i1 %"cmp.15", %".1772"
  store i1 %".1773", ptr %"P0"
  ; @P0 BRA `(.L_x_8)
  %".1776" = load i1, ptr %"P0"
  %".1777" = icmp ne i1 %".1776", 1
  br i1 %".1777", label %".L_x_8", label %".L_x_1_split_0x1260_CALL_0x1290"
.L_x_1_split_0x1260_CALL_0x1290:
  ; MOV R10, 0x1280
  store i32 4736, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".1784" = icmp ult i32 1, 32
  %"SHF_min.1" = select  i1 %".1784", i32 1, i32 32
  %".1785" = load i32, ptr %"R24"
  %"zext.191" = zext i32 0 to i64
  %"zext.192" = zext i32 %".1785" to i64
  %"zext.193" = zext i32 1 to i64
  %"shl.102" = shl i64 %"zext.191", 32
  %"or.95" = or i64 %"shl.102", %"zext.192"
  %"shl.103" = shl i64 %"or.95", %"zext.193"
  %"and.1" = and i64 %"shl.103", 4294967295
  %"trunc32.1" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.1", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".1790" = icmp ult i32 24, 32
  %"SHF_min.2" = select  i1 %".1790", i32 24, i32 32
  %".1791" = load i32, ptr %"R11"
  %"zext.194" = zext i32 %".1791" to i64
  %"zext.195" = zext i32 0 to i64
  %"zext.196" = zext i32 24 to i64
  %"shl.104" = shl i64 %"zext.194", 32
  %"or.96" = or i64 %"shl.104", %"zext.195"
  %"lshr" = lshr i64 %"or.96", %"zext.196"
  %"lshr.1" = lshr i64 %"lshr", 32
  %"trunc32.2" = trunc i64 %"lshr.1" to i32
  store i32 %"trunc32.2", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".1794" = load i32, ptr %"R25"
  %".1795" = load i1, ptr %"PT"
  %"cmp.16" = icmp ne i32 %".1794", 0
  %".1796" = and i1 %"cmp.16", %".1795"
  store i1 %".1796", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".1799" = load i1, ptr %"P0"
  %".1800" = icmp ne i1 %".1799", 1
  br i1 %".1800", label %".L_x_49...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".1803" = icmp ult i32 1, 32
  %"SHF_min.3" = select  i1 %".1803", i32 1, i32 32
  %".1804" = load i32, ptr %"R24"
  %"zext.197" = zext i32 0 to i64
  %"zext.198" = zext i32 %".1804" to i64
  %"zext.199" = zext i32 1 to i64
  %"shl.105" = shl i64 %"zext.197", 32
  %"or.97" = or i64 %"shl.105", %"zext.198"
  %"shl.106" = shl i64 %"or.97", %"zext.199"
  %"and.2" = and i64 %"shl.106", 4294967295
  %"trunc32.3" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.3", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".1807" = load i32, ptr %"R11"
  %".1808" = load i1, ptr %"PT"
  %"cmp.17" = icmp ne i32 %".1807", 0
  %".1809" = and i1 %"cmp.17", %".1808"
  store i1 %".1809", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".1812" = load i1, ptr %"P0"
  %".1813" = icmp ne i1 %".1812", 1
  br i1 %".1813", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".1816" = load float, ptr %"R24"
  %"fmul.67" = fmul float %".1816", 0x43f0000000000000
  %"fadd.69" = fadd float %"fmul.67",              0x0
  %".1817" = bitcast ptr %"R12" to ptr
  store float %"fadd.69", ptr %".1817"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".1822" = load float, ptr %"R24"
  %"fmul.68" = fmul float %".1822", 0x43f0000000000000
  %"fadd.70" = fadd float %"fmul.68",              0x0
  %".1823" = bitcast ptr %"R12" to ptr
  store float %"fadd.70", ptr %".1823"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1:
  ; @!P0 MUFU.RCP R11, R24
  %".1828" = load i1, ptr %"P0"
  %".1829" = icmp eq i1 %".1828", 1
  br i1 %".1829", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".1832" = load float, ptr %"R24"
  %".1833" = fdiv float 0x3ff0000000000000, %".1832"
  %".1834" = bitcast ptr %"R11" to ptr
  store float %".1833", ptr %".1834"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1:
  ; MUFU.RCP R11, R24
  %".1839" = load float, ptr %"R24"
  %".1840" = fdiv float 0x3ff0000000000000, %".1839"
  %".1841" = bitcast ptr %"R11" to ptr
  store float %".1840", ptr %".1841"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1:
  ; @P0 MUFU.RCP R13, R12
  %".1846" = load i1, ptr %"P0"
  %".1847" = icmp ne i1 %".1846", 1
  br i1 %".1847", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".1850" = load float, ptr %"R12"
  %".1851" = fdiv float 0x3ff0000000000000, %".1850"
  %".1852" = bitcast ptr %"R13" to ptr
  store float %".1851", ptr %".1852"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1:
  ; MUFU.RCP R13, R12
  %".1857" = load float, ptr %"R12"
  %".1858" = fdiv float 0x3ff0000000000000, %".1857"
  %".1859" = bitcast ptr %"R13" to ptr
  store float %".1858", ptr %".1859"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1:
  ; @P0 FFMA R22, R12, R13, -1
  %".1864" = load i1, ptr %"P0"
  %".1865" = icmp ne i1 %".1864", 1
  br i1 %".1865", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".1868" = load float, ptr %"R12"
  %".1869" = load float, ptr %"R13"
  %"fmul.69" = fmul float %".1868", %".1869"
  %"fadd.71" = fadd float %"fmul.69", 0xbff0000000000000
  %".1870" = bitcast ptr %"R22" to ptr
  store float %"fadd.71", ptr %".1870"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1:
  ; FFMA R22, R12, R13, -1
  %".1875" = load float, ptr %"R12"
  %".1876" = load float, ptr %"R13"
  %"fmul.70" = fmul float %".1875", %".1876"
  %"fadd.72" = fadd float %"fmul.70", 0xbff0000000000000
  %".1877" = bitcast ptr %"R22" to ptr
  store float %"fadd.72", ptr %".1877"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".1882" = load i1, ptr %"P0"
  %".1883" = icmp ne i1 %".1882", 1
  br i1 %".1883", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".1886" = load float, ptr %"R22"
  %".1887" = fneg float %".1886"
  %"fadd.73" = fadd float %".1887",              0x0
  %".1888" = bitcast ptr %"R22" to ptr
  store float %"fadd.73", ptr %".1888"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1:
  ; FADD.FTZ R22, -R22, -RZ
  %".1893" = load float, ptr %"R22"
  %".1894" = fneg float %".1893"
  %"fadd.74" = fadd float %".1894",              0x0
  %".1895" = bitcast ptr %"R22" to ptr
  store float %"fadd.74", ptr %".1895"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1:
  ; @P0 FFMA R22, R13, R22, R13
  %".1900" = load i1, ptr %"P0"
  %".1901" = icmp ne i1 %".1900", 1
  br i1 %".1901", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".1904" = load float, ptr %"R13"
  %".1905" = load float, ptr %"R22"
  %".1906" = load float, ptr %"R13"
  %"fmul.71" = fmul float %".1904", %".1905"
  %"fadd.75" = fadd float %"fmul.71", %".1906"
  %".1907" = bitcast ptr %"R22" to ptr
  store float %"fadd.75", ptr %".1907"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1:
  ; FFMA R22, R13, R22, R13
  %".1912" = load float, ptr %"R13"
  %".1913" = load float, ptr %"R22"
  %".1914" = load float, ptr %"R13"
  %"fmul.72" = fmul float %".1912", %".1913"
  %"fadd.76" = fadd float %"fmul.72", %".1914"
  %".1915" = bitcast ptr %"R22" to ptr
  store float %"fadd.76", ptr %".1915"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".1920" = load i1, ptr %"P0"
  %".1921" = icmp ne i1 %".1920", 1
  br i1 %".1921", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".1924" = load float, ptr %"R22"
  %"fmul.73" = fmul float %".1924", 0x43f0000000000000
  %"fadd.77" = fadd float %"fmul.73",              0x0
  %".1925" = bitcast ptr %"R11" to ptr
  store float %"fadd.77", ptr %".1925"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".1930" = load float, ptr %"R22"
  %"fmul.74" = fmul float %".1930", 0x43f0000000000000
  %"fadd.78" = fadd float %"fmul.74",              0x0
  %".1931" = bitcast ptr %"R11" to ptr
  store float %"fadd.78", ptr %".1931"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...1:
  ; BRA `(.L_x_50)
  br label %".L_x_50...1"
.L_x_49...1:
  ; IADD3 R34, R25, -0xfd, RZ
  %".1938" = load i32, ptr %"R25"
  %"add.94" = add i32 %".1938", -253
  %"add.95" = add i32 %"add.94", 0
  store i32 %"add.95", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".1941" = load i32, ptr %"R34"
  %".1942" = load i1, ptr %"PT"
  %"cmp.18" = icmp sgt i32 %".1941", 1
  %".1943" = and i1 %"cmp.18", %".1942"
  store i1 %".1943", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".1946" = load i1, ptr %"P0"
  %".1947" = icmp ne i1 %".1946", 1
  br i1 %".1947", label %".L_x_51...1", label %".L_x_49_split_0x4a30...1"
.L_x_49_split_0x4a30...1:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".1950" = load float, ptr %"R24"
  %".1951" = bitcast float %".1950" to i32
  %".1952" = and i32 %".1951", 8388607
  store i32 %".1952", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".1957" = load i32, ptr %"R11"
  %".1958" = or i32 %".1957", 1065353216
  store i32 %".1958", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".1961" = load i32, ptr %"R34"
  %".1962" = icmp ult i32 %".1961", 32
  %"SHF_min.4" = select  i1 %".1962", i32 %".1961", i32 32
  %".1963" = load i32, ptr %"R23"
  %".1964" = load i32, ptr %"R34"
  %"zext.200" = zext i32 0 to i64
  %"zext.201" = zext i32 %".1963" to i64
  %"zext.202" = zext i32 %".1964" to i64
  %"shl.107" = shl i64 %"zext.200", 32
  %"or.98" = or i64 %"shl.107", %"zext.201"
  %"shl.108" = shl i64 %"or.98", %"zext.202"
  %"and.3" = and i64 %"shl.108", 4294967295
  %"trunc32.4" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.4", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".1967" = load float, ptr %"R11"
  %".1968" = fdiv float 0x3ff0000000000000, %".1967"
  %".1969" = bitcast ptr %"R12" to ptr
  store float %".1968", ptr %".1969"
  ; FFMA R13, R11, R12, -1
  %".1972" = load float, ptr %"R11"
  %".1973" = load float, ptr %"R12"
  %"fmul.75" = fmul float %".1972", %".1973"
  %"fadd.79" = fadd float %"fmul.75", 0xbff0000000000000
  %".1974" = bitcast ptr %"R13" to ptr
  store float %"fadd.79", ptr %".1974"
  ; FADD.FTZ R13, -R13, -RZ
  %".1977" = load float, ptr %"R13"
  %".1978" = fneg float %".1977"
  %"fadd.80" = fadd float %".1978",              0x0
  %".1979" = bitcast ptr %"R13" to ptr
  store float %"fadd.80", ptr %".1979"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".1982" = load float, ptr %"R12"
  %".1983" = load float, ptr %"R13"
  %".1984" = load float, ptr %"R12"
  %"fmul.76" = fmul float %".1982", %".1983"
  %"fadd.81" = fadd float %"fmul.76", %".1984"
  %".1985" = bitcast ptr %"R22" to ptr
  store float %"fadd.81", ptr %".1985"
  ; FFMA.RP R13, R12, R13, R12
  %".1988" = load float, ptr %"R12"
  %".1989" = load float, ptr %"R13"
  %".1990" = load float, ptr %"R12"
  %"fmul.77" = fmul float %".1988", %".1989"
  %"fadd.82" = fadd float %"fmul.77", %".1990"
  %".1991" = bitcast ptr %"R13" to ptr
  store float %"fadd.82", ptr %".1991"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".1994" = load float, ptr %"R22"
  %".1995" = bitcast float %".1994" to i32
  %".1996" = and i32 %".1995", 8388607
  store i32 %".1996", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".1999" = load float, ptr %"R22"
  %".2000" = load float, ptr %"R13"
  %".2001" = load i1, ptr %"PT"
  %"fcmp_ordered" = fcmp une float %".1999", %".2000"
  %".2002" = and i1 %"fcmp_ordered", %".2001"
  store i1 %".2002", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".2005" = load i32, ptr %"R12"
  %".2006" = or i32 %".2005", 8388608
  store i32 %".2006", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".2009" = load i1, ptr %"P0"
  %".2010" = icmp eq i1 %".2009", 1
  %"sel" = select  i1 %".2010", i32 0, i32 4294967295
  store i32 %"sel", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".2013" = load i32, ptr %"R23"
  %".2014" = load i32, ptr %"R12"
  %".2015" = and i32 %".2013", %".2014"
  store i32 %".2015", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".2018" = load i32, ptr %"R13"
  %".2019" = sub i32 0, %".2018"
  %"add.96" = add i32 %".2019", 0
  %"add.97" = add i32 %"add.96", 0
  store i32 %"add.97", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".2022" = load i32, ptr %"R34"
  %".2023" = icmp ult i32 %".2022", 32
  %"SHF_min.5" = select  i1 %".2023", i32 %".2022", i32 32
  %".2024" = load i32, ptr %"R23"
  %".2025" = load i32, ptr %"R34"
  %"zext.203" = zext i32 %".2024" to i64
  %"zext.204" = zext i32 0 to i64
  %"zext.205" = zext i32 %".2025" to i64
  %"shl.109" = shl i64 %"zext.203", 32
  %"or.99" = or i64 %"shl.109", %"zext.204"
  %"lshr.2" = lshr i64 %"or.99", %"zext.205"
  %"lshr.3" = lshr i64 %"lshr.2", 32
  %"trunc32.5" = trunc i64 %"lshr.3" to i32
  store i32 %"trunc32.5", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".2028" = load i32, ptr %"R13"
  %".2029" = load i32, ptr %"R34"
  %".2030" = load i32, ptr %"R12"
  %"LOP3_result" = call i32 @"custom_lop3"(i32 %".2030", i32 0, i32 %".2028", i32 %".2029")
  %".2031" = trunc i32 %"LOP3_result" to i1
  store i1 %".2031", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".2034" = load i32, ptr %"R23"
  %"LOP3_result.1" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".2034", i32 1)
  %".2035" = trunc i32 %"LOP3_result.1" to i1
  store i1 %".2035", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".2038" = load i32, ptr %"R23"
  %"LOP3_result.2" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".2038", i32 2)
  %".2039" = trunc i32 %"LOP3_result.2" to i1
  store i1 %".2039", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".2042" = load i1, ptr %"P0"
  %".2043" = sub i1 0, %".2042"
  %".2044" = load i1, ptr %"P1"
  %".2045" = sub i1 0, %".2044"
  %".2046" = or i1 %".2043", %".2045"
  %".2047" = and i1 %".2046", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".2049" = load float, ptr %"R24"
  %".2050" = bitcast float %".2049" to i32
  %"LOP3_result.3" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".2050", i32 8388607)
  %".2051" = trunc i32 %"LOP3_result.3" to i1
  store i1 %".2051", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".2054" = load i1, ptr %"P0"
  %".2055" = icmp eq i1 %".2054", 1
  %"sel.1" = select  i1 %".2055", i32 0, i32 1
  store i32 %"sel.1", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".2058" = load i32, ptr %"R11"
  %".2059" = sub i32 0, %".2058"
  %"add.98" = add i32 %".2059", 0
  %"add.99" = add i32 %"add.98", 0
  store i32 %"add.99", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".2062" = load i32, ptr %"R11"
  %".2063" = load i1, ptr %"PT"
  %"cmp.19" = icmp sge i32 %".2062", 0
  %".2064" = and i1 %"cmp.19", %".2063"
  store i1 %".2064", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".2067" = load i32, ptr %"R25"
  %"add.100" = add i32 %".2067", -252
  %"add.101" = add i32 %"add.100", 0
  store i32 %"add.101", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".2070" = load i32, ptr %"R11"
  %".2071" = icmp ult i32 %".2070", 32
  %"SHF_min.6" = select  i1 %".2071", i32 %".2070", i32 32
  %".2072" = load i32, ptr %"R12"
  %".2073" = load i32, ptr %"R11"
  %"zext.206" = zext i32 %".2072" to i64
  %"zext.207" = zext i32 0 to i64
  %"zext.208" = zext i32 %".2073" to i64
  %"shl.110" = shl i64 %"zext.206", 32
  %"or.100" = or i64 %"shl.110", %"zext.207"
  %"lshr.4" = lshr i64 %"or.100", %"zext.208"
  %"lshr.5" = lshr i64 %"lshr.4", 32
  %"trunc32.6" = trunc i64 %"lshr.5" to i32
  store i32 %"trunc32.6", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".2076" = load i1, ptr %"P0"
  %".2077" = icmp eq i1 %".2076", 1
  br i1 %".2077", label %".L_x_49_split_0x4a30...1_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1"
.L_x_49_split_0x4a30...1_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".2080" = load i32, ptr %"R11"
  %"add.102" = add i32 %".2080", 1
  %"add.103" = add i32 %"add.102", 0
  store i32 %"add.103", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1:
  ; IADD3 R11, R11, 0x1, RZ
  %".2085" = load i32, ptr %"R11"
  %"add.104" = add i32 %".2085", 1
  %"add.105" = add i32 %"add.104", 0
  store i32 %"add.105", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...1"
.L_x_49_split_0x4be0...1:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".2090" = load i1, ptr %"P1"
  %".2091" = icmp eq i1 %".2090", 1
  br i1 %".2091", label %".L_x_49_split_0x4be0...1_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...1"
.L_x_49_split_0x4be0...1_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".2094" = icmp ult i32 1, 32
  %"SHF_min.7" = select  i1 %".2094", i32 1, i32 32
  %".2095" = load i32, ptr %"R11"
  %"zext.209" = zext i32 0 to i64
  %"zext.210" = zext i32 %".2095" to i64
  %"zext.211" = zext i32 1 to i64
  %"shl.111" = shl i64 %"zext.209", 32
  %"or.101" = or i64 %"shl.111", %"zext.210"
  %"shl.112" = shl i64 %"or.101", %"zext.211"
  %"and.4" = and i64 %"shl.112", 4294967295
  %"trunc32.7" = trunc i64 %"and.4" to i32
  store i32 %"trunc32.7", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...1)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...1"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...1:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".2100" = icmp ult i32 1, 32
  %"SHF_min.8" = select  i1 %".2100", i32 1, i32 32
  %".2101" = load i32, ptr %"R11"
  %"zext.212" = zext i32 0 to i64
  %"zext.213" = zext i32 %".2101" to i64
  %"zext.214" = zext i32 1 to i64
  %"shl.113" = shl i64 %"zext.212", 32
  %"or.102" = or i64 %"shl.113", %"zext.213"
  %"shl.114" = shl i64 %"or.102", %"zext.214"
  %"and.5" = and i64 %"shl.114", 4294967295
  %"trunc32.8" = trunc i64 %"and.5" to i32
  store i32 %"trunc32.8", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...1"
.L_x_49_split_0x4bf0...1:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".2106" = load i32, ptr %"R11"
  %".2107" = load float, ptr %"R24"
  %".2108" = bitcast float %".2107" to i32
  %".2109" = or i32 %".2106", 2147483648
  %".2110" = or i32 %".2106", %".2108"
  %".2111" = and i32 %".2109", %".2110"
  store i32 %".2111", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...1"
.L_x_51...1:
  ; MUFU.RCP R11, R24
  %".2116" = load float, ptr %"R24"
  %".2117" = fdiv float 0x3ff0000000000000, %".2116"
  %".2118" = bitcast ptr %"R11" to ptr
  store float %".2117", ptr %".2118"
  br label %".L_x_50...1"
.L_x_50...1:
  ; BSYNC B1
  br label %".L_x_48...1"
.L_x_48...1:
  ; MOV R22, R11
  %".2124" = load float, ptr %"R11"
  %".2125" = bitcast ptr %"R22" to ptr
  store float %".2124", ptr %".2125"
  ; MOV R11, 0x0
  store i32 0, ptr %"R11"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"
.L_x_52...1:
  ; BRA `(.L_x_52)
  br label %".L_x_52...1"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath:
  br label %".L_x_1_split_0x1260_postCALL_0x1290"
.L_x_1_split_0x1260_postCALL_0x1290:
  ; MOV R9, R22
  %".2135" = load float, ptr %"R22"
  %".2136" = bitcast ptr %"R9" to ptr
  store float %".2135", ptr %".2136"
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %".2141" = load float, ptr %"R24"
  %".2142" = fdiv float 0x3ff0000000000000, %".2141"
  %".2143" = bitcast ptr %"R9" to ptr
  store float %".2142", ptr %".2143"
  ; FFMA R10, R24, R9, -1
  %".2146" = load float, ptr %"R24"
  %".2147" = load float, ptr %"R9"
  %"fmul.78" = fmul float %".2146", %".2147"
  %"fadd.83" = fadd float %"fmul.78", 0xbff0000000000000
  %".2148" = bitcast ptr %"R10" to ptr
  store float %"fadd.83", ptr %".2148"
  ; FADD.FTZ R10, -R10, -RZ
  %".2151" = load float, ptr %"R10"
  %".2152" = fneg float %".2151"
  %"fadd.84" = fadd float %".2152",              0x0
  %".2153" = bitcast ptr %"R10" to ptr
  store float %"fadd.84", ptr %".2153"
  ; FFMA R9, R9, R10, R9
  %".2156" = load float, ptr %"R9"
  %".2157" = load float, ptr %"R10"
  %".2158" = load float, ptr %"R9"
  %"fmul.79" = fmul float %".2156", %".2157"
  %"fadd.85" = fadd float %"fmul.79", %".2158"
  %".2159" = bitcast ptr %"R9" to ptr
  store float %"fadd.85", ptr %".2159"
  br label %".L_x_9"
.L_x_9:
  ; BSYNC B0
  br label %".L_x_7"
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  %".2165" = load i32, ptr %"R32"
  %"zext.215" = zext i32 %".2165" to i64
  %".2166" = load i32, ptr %"R33"
  %"zext.216" = zext i32 %".2166" to i64
  %"shl.115" = shl i64 %"zext.216", 32
  %"or.103" = or i64 %"shl.115", %"zext.215"
  %".2167" = inttoptr i64 %"or.103" to ptr
  %".2168" = ptrtoint ptr %".2167" to i64
  %".2169" = add i64 %".2168", 0
  %"for_LDG.94" = inttoptr i64 %".2169" to ptr
  %".2170" = load float, ptr %"for_LDG.94"
  %".2171" = bitcast ptr %"R11" to ptr
  store float %".2170", ptr %".2171"
  ; MOV R10, 0x3bbb989d
  %".2174" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".2174"
  ; MOV R13, 0x437c0000
  %".2177" = bitcast ptr %"R13" to ptr
  store float 0x41d0df0000000000, ptr %".2177"
  ; FADD R11, R11, R54
  %".2180" = load float, ptr %"R11"
  %".2181" = load float, ptr %"R54"
  %"fadd.86" = fadd float %".2180", %".2181"
  %".2182" = bitcast ptr %"R11" to ptr
  store float %"fadd.86", ptr %".2182"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %".2185" = load float, ptr %"R11"
  %".2186" = fneg float %".2185"
  %".2187" = load float, ptr %"R10"
  %"fmul.80" = fmul float %".2186", %".2187"
  %"fadd.87" = fadd float %"fmul.80", 0x3fe0000000000000
  %".2188" = bitcast ptr %"R10" to ptr
  store float %"fadd.87", ptr %".2188"
  ; FFMA.RM R10, R10, R13, 12582913
  %".2191" = load float, ptr %"R10"
  %".2192" = load float, ptr %"R13"
  %"fmul.81" = fmul float %".2191", %".2192"
  %"fadd.88" = fadd float %"fmul.81", 0x4168000020000000
  %".2193" = bitcast ptr %"R10" to ptr
  store float %"fadd.88", ptr %".2193"
  ; FADD R12, R10.reuse, -12583039
  %".2196" = load float, ptr %"R10"
  %"fadd.89" = fadd float %".2196", 0xc168000fe0000000
  %".2197" = bitcast ptr %"R12" to ptr
  store float %"fadd.89", ptr %".2197"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".2200" = icmp ult i32 23, 32
  %"SHF_min.9" = select  i1 %".2200", i32 23, i32 32
  %".2201" = load i32, ptr %"R10"
  %"zext.217" = zext i32 0 to i64
  %"zext.218" = zext i32 %".2201" to i64
  %"zext.219" = zext i32 23 to i64
  %"shl.116" = shl i64 %"zext.217", 32
  %"or.104" = or i64 %"shl.116", %"zext.218"
  %"shl.117" = shl i64 %"or.104", %"zext.219"
  %"and.6" = and i64 %"shl.117", 4294967295
  %"trunc32.9" = trunc i64 %"and.6" to i32
  store i32 %"trunc32.9", ptr %"R20"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %".2204" = load float, ptr %"R11"
  %".2205" = fneg float %".2204"
  %".2206" = load float, ptr %"R12"
  %".2207" = fneg float %".2206"
  %"fmul.82" = fmul float %".2205", 0x3ff7154760000000
  %"fadd.90" = fadd float %"fmul.82", %".2207"
  %".2208" = bitcast ptr %"R12" to ptr
  store float %"fadd.90", ptr %".2208"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %".2211" = load float, ptr %"R11"
  %".2212" = fneg float %".2211"
  %".2213" = load float, ptr %"R12"
  %"fmul.83" = fmul float %".2212", 0x3e54ae0c00000000
  %"fadd.91" = fadd float %"fmul.83", %".2213"
  %".2214" = bitcast ptr %"R12" to ptr
  store float %"fadd.91", ptr %".2214"
  ; MUFU.EX2 R11, R12
  %".2217" = load float, ptr %"R12"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".2217")
  %".2218" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result.1", ptr %".2218"
  ; FFMA R20, R20, R11, 1
  %".2221" = load float, ptr %"R20"
  %".2222" = load float, ptr %"R11"
  %"fmul.84" = fmul float %".2221", %".2222"
  %"fadd.92" = fadd float %"fmul.84", 0x3ff0000000000000
  %".2223" = bitcast ptr %"R20" to ptr
  store float %"fadd.92", ptr %".2223"
  ; @!P4 BRA `(.L_x_10)
  %".2226" = load i1, ptr %"P4"
  %".2227" = icmp eq i1 %".2226", 1
  br i1 %".2227", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".2230" = load i32, ptr %"R5"
  %".2231" = load i1, ptr %"PT"
  %"cmp.20" = icmp sge i32 %".2230", 3
  %".2232" = and i1 %"cmp.20", %".2231"
  store i1 %".2232", ptr %"P0"
  ; MOV R8, RZ
  %".2235" = load float, ptr %"RZ"
  %".2236" = bitcast ptr %"R8" to ptr
  store float %".2235", ptr %".2236"
  ; MOV R22, RZ
  %".2239" = load i32, ptr %"RZ"
  store i32 %".2239", ptr %"R22"
  ; @!P0 BRA `(.L_x_11)
  %".2242" = load i1, ptr %"P0"
  %".2243" = icmp eq i1 %".2242", 1
  br i1 %".2243", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".2246" = load i32, ptr %"R7"
  %".2247" = load i1, ptr %"PT"
  %"cmp.21" = icmp sgt i32 %".2246", 0
  %".2248" = and i1 %"cmp.21", %".2247"
  store i1 %".2248", ptr %"P0"
  ; MOV R8, RZ
  %".2251" = load float, ptr %"RZ"
  %".2252" = bitcast ptr %"R8" to ptr
  store float %".2251", ptr %".2252"
  ; MOV R22, RZ
  %".2255" = load i32, ptr %"RZ"
  store i32 %".2255", ptr %"R22"
  ; MOV R23, R7
  %".2258" = load i32, ptr %"R7"
  store i32 %".2258", ptr %"R23"
  ; @!P0 BRA `(.L_x_12)
  %".2261" = load i1, ptr %"P0"
  %".2262" = icmp eq i1 %".2261", 1
  br i1 %".2262", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2265" = load i32, ptr %"R23"
  %".2266" = load i1, ptr %"PT"
  %"cmp.22" = icmp sgt i32 %".2265", 12
  %".2267" = and i1 %"cmp.22", %".2266"
  store i1 %".2267", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".2270" = and i1 1, 1
  %".2271" = or i1 %".2270", 1
  ; @!P1 BRA `(.L_x_13)
  %".2273" = load i1, ptr %"P1"
  %".2274" = icmp eq i1 %".2273", 1
  br i1 %".2274", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2277" = xor i1 1, 1
  %".2278" = and i1 %".2277", 1
  %".2279" = and i1 %".2278", 1
  br label %".L_x_14"
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, ptr %"R49"
  ; IADD3 R16, R3, R22, RZ
  %".2284" = load i32, ptr %"R3"
  %".2285" = load i32, ptr %"R22"
  %"add.106" = add i32 %".2284", %".2285"
  %"add.107" = add i32 %"add.106", 0
  store i32 %"add.107", ptr %"R16"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".2288" = load i32, ptr %"R22"
  %".2289" = load i32, ptr %"R49"
  %"mul.36" = mul i32 %".2288", %".2289"
  %"add.108" = add i32 %"mul.36", %"Arg_3"
  store i32 %"add.108", ptr %"R12"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".2292" = load i32, ptr %"R16"
  %".2293" = load i32, ptr %"R49"
  %"mul.37" = mul i32 %".2292", %".2293"
  %"add.109" = add i32 %"mul.37", %"Arg_4"
  store i32 %"add.109", ptr %"R16"
  ; IADD3 R18, R22, 0x4, RZ
  %".2296" = load i32, ptr %"R22"
  %"add.110" = add i32 %".2296", 4
  %"add.111" = add i32 %"add.110", 0
  store i32 %"add.111", ptr %"R18"
  ; LDG.E.SYS R24, [R12]
  %".2299" = load i32, ptr %"R12"
  %"zext.220" = zext i32 %".2299" to i64
  %".2300" = load i32, ptr %"R13"
  %"zext.221" = zext i32 %".2300" to i64
  %"shl.118" = shl i64 %"zext.221", 32
  %"or.105" = or i64 %"shl.118", %"zext.220"
  %".2301" = inttoptr i64 %"or.105" to ptr
  %".2302" = ptrtoint ptr %".2301" to i64
  %".2303" = add i64 %".2302", 0
  %"for_LDG.95" = inttoptr i64 %".2303" to ptr
  %".2304" = load float, ptr %"for_LDG.95"
  %".2305" = bitcast ptr %"R24" to ptr
  store float %".2304", ptr %".2305"
  ; IADD3 R14, R3, R18, RZ
  %".2308" = load i32, ptr %"R3"
  %".2309" = load i32, ptr %"R18"
  %"add.112" = add i32 %".2308", %".2309"
  %"add.113" = add i32 %"add.112", 0
  store i32 %"add.113", ptr %"R14"
  ; LDG.E.SYS R21, [R16]
  %".2312" = load i32, ptr %"R16"
  %"zext.222" = zext i32 %".2312" to i64
  %".2313" = load i32, ptr %"R17"
  %"zext.223" = zext i32 %".2313" to i64
  %"shl.119" = shl i64 %"zext.223", 32
  %"or.106" = or i64 %"shl.119", %"zext.222"
  %".2314" = inttoptr i64 %"or.106" to ptr
  %".2315" = ptrtoint ptr %".2314" to i64
  %".2316" = add i64 %".2315", 0
  %"for_LDG.96" = inttoptr i64 %".2316" to ptr
  %".2317" = load float, ptr %"for_LDG.96"
  %".2318" = bitcast ptr %"R21" to ptr
  store float %".2317", ptr %".2318"
  ; LDG.E.SYS R36, [R12+0x4]
  %".2321" = load i32, ptr %"R12"
  %"zext.224" = zext i32 %".2321" to i64
  %".2322" = load i32, ptr %"R13"
  %"zext.225" = zext i32 %".2322" to i64
  %"shl.120" = shl i64 %"zext.225", 32
  %"or.107" = or i64 %"shl.120", %"zext.224"
  %".2323" = inttoptr i64 %"or.107" to ptr
  %".2324" = ptrtoint ptr %".2323" to i64
  %".2325" = add i64 %".2324", 4
  %"for_LDG.97" = inttoptr i64 %".2325" to ptr
  %".2326" = load float, ptr %"for_LDG.97"
  %".2327" = bitcast ptr %"R36" to ptr
  store float %".2326", ptr %".2327"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".2330" = load i32, ptr %"R18"
  %".2331" = load i32, ptr %"R49"
  %"mul.38" = mul i32 %".2330", %".2331"
  %"add.114" = add i32 %"mul.38", %"Arg_3"
  store i32 %"add.114", ptr %"R18"
  ; LDG.E.SYS R25, [R16+0x4]
  %".2334" = load i32, ptr %"R16"
  %"zext.226" = zext i32 %".2334" to i64
  %".2335" = load i32, ptr %"R17"
  %"zext.227" = zext i32 %".2335" to i64
  %"shl.121" = shl i64 %"zext.227", 32
  %"or.108" = or i64 %"shl.121", %"zext.226"
  %".2336" = inttoptr i64 %"or.108" to ptr
  %".2337" = ptrtoint ptr %".2336" to i64
  %".2338" = add i64 %".2337", 4
  %"for_LDG.98" = inttoptr i64 %".2338" to ptr
  %".2339" = load float, ptr %"for_LDG.98"
  %".2340" = bitcast ptr %"R25" to ptr
  store float %".2339", ptr %".2340"
  ; LDG.E.SYS R46, [R12+0x8]
  %".2343" = load i32, ptr %"R12"
  %"zext.228" = zext i32 %".2343" to i64
  %".2344" = load i32, ptr %"R13"
  %"zext.229" = zext i32 %".2344" to i64
  %"shl.122" = shl i64 %"zext.229", 32
  %"or.109" = or i64 %"shl.122", %"zext.228"
  %".2345" = inttoptr i64 %"or.109" to ptr
  %".2346" = ptrtoint ptr %".2345" to i64
  %".2347" = add i64 %".2346", 8
  %"for_LDG.99" = inttoptr i64 %".2347" to ptr
  %".2348" = load float, ptr %"for_LDG.99"
  %".2349" = bitcast ptr %"R46" to ptr
  store float %".2348", ptr %".2349"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".2352" = load i32, ptr %"R14"
  %".2353" = load i32, ptr %"R49"
  %"mul.39" = mul i32 %".2352", %".2353"
  %"add.115" = add i32 %"mul.39", %"Arg_4"
  store i32 %"add.115", ptr %"R14"
  ; LDG.E.SYS R34, [R16+0x8]
  %".2356" = load i32, ptr %"R16"
  %"zext.230" = zext i32 %".2356" to i64
  %".2357" = load i32, ptr %"R17"
  %"zext.231" = zext i32 %".2357" to i64
  %"shl.123" = shl i64 %"zext.231", 32
  %"or.110" = or i64 %"shl.123", %"zext.230"
  %".2358" = inttoptr i64 %"or.110" to ptr
  %".2359" = ptrtoint ptr %".2358" to i64
  %".2360" = add i64 %".2359", 8
  %"for_LDG.100" = inttoptr i64 %".2360" to ptr
  %".2361" = load float, ptr %"for_LDG.100"
  %".2362" = bitcast ptr %"R34" to ptr
  store float %".2361", ptr %".2362"
  ; LDG.E.SYS R44, [R12+0xc]
  %".2365" = load i32, ptr %"R12"
  %"zext.232" = zext i32 %".2365" to i64
  %".2366" = load i32, ptr %"R13"
  %"zext.233" = zext i32 %".2366" to i64
  %"shl.124" = shl i64 %"zext.233", 32
  %"or.111" = or i64 %"shl.124", %"zext.232"
  %".2367" = inttoptr i64 %"or.111" to ptr
  %".2368" = ptrtoint ptr %".2367" to i64
  %".2369" = add i64 %".2368", 12
  %"for_LDG.101" = inttoptr i64 %".2369" to ptr
  %".2370" = load float, ptr %"for_LDG.101"
  %".2371" = bitcast ptr %"R44" to ptr
  store float %".2370", ptr %".2371"
  ; IADD3 R10, R22, 0x8, RZ
  %".2374" = load i32, ptr %"R22"
  %"add.116" = add i32 %".2374", 8
  %"add.117" = add i32 %"add.116", 0
  store i32 %"add.117", ptr %"R10"
  ; LDG.E.SYS R41, [R16+0xc]
  %".2377" = load i32, ptr %"R16"
  %"zext.234" = zext i32 %".2377" to i64
  %".2378" = load i32, ptr %"R17"
  %"zext.235" = zext i32 %".2378" to i64
  %"shl.125" = shl i64 %"zext.235", 32
  %"or.112" = or i64 %"shl.125", %"zext.234"
  %".2379" = inttoptr i64 %"or.112" to ptr
  %".2380" = ptrtoint ptr %".2379" to i64
  %".2381" = add i64 %".2380", 12
  %"for_LDG.102" = inttoptr i64 %".2381" to ptr
  %".2382" = load float, ptr %"for_LDG.102"
  %".2383" = bitcast ptr %"R41" to ptr
  store float %".2382", ptr %".2383"
  ; LDG.E.SYS R42, [R18]
  %".2386" = load i32, ptr %"R18"
  %"zext.236" = zext i32 %".2386" to i64
  %".2387" = load i32, ptr %"R19"
  %"zext.237" = zext i32 %".2387" to i64
  %"shl.126" = shl i64 %"zext.237", 32
  %"or.113" = or i64 %"shl.126", %"zext.236"
  %".2388" = inttoptr i64 %"or.113" to ptr
  %".2389" = ptrtoint ptr %".2388" to i64
  %".2390" = add i64 %".2389", 0
  %"for_LDG.103" = inttoptr i64 %".2390" to ptr
  %".2391" = load float, ptr %"for_LDG.103"
  %".2392" = bitcast ptr %"R42" to ptr
  store float %".2391", ptr %".2392"
  ; IADD3 R50, R3, R10, RZ
  %".2395" = load i32, ptr %"R3"
  %".2396" = load i32, ptr %"R10"
  %"add.118" = add i32 %".2395", %".2396"
  %"add.119" = add i32 %"add.118", 0
  store i32 %"add.119", ptr %"R50"
  ; LDG.E.SYS R39, [R14]
  %".2399" = load i32, ptr %"R14"
  %"zext.238" = zext i32 %".2399" to i64
  %".2400" = load i32, ptr %"R15"
  %"zext.239" = zext i32 %".2400" to i64
  %"shl.127" = shl i64 %"zext.239", 32
  %"or.114" = or i64 %"shl.127", %"zext.238"
  %".2401" = inttoptr i64 %"or.114" to ptr
  %".2402" = ptrtoint ptr %".2401" to i64
  %".2403" = add i64 %".2402", 0
  %"for_LDG.104" = inttoptr i64 %".2403" to ptr
  %".2404" = load float, ptr %"for_LDG.104"
  %".2405" = bitcast ptr %"R39" to ptr
  store float %".2404", ptr %".2405"
  ; LDG.E.SYS R40, [R18+0x4]
  %".2408" = load i32, ptr %"R18"
  %"zext.240" = zext i32 %".2408" to i64
  %".2409" = load i32, ptr %"R19"
  %"zext.241" = zext i32 %".2409" to i64
  %"shl.128" = shl i64 %"zext.241", 32
  %"or.115" = or i64 %"shl.128", %"zext.240"
  %".2410" = inttoptr i64 %"or.115" to ptr
  %".2411" = ptrtoint ptr %".2410" to i64
  %".2412" = add i64 %".2411", 4
  %"for_LDG.105" = inttoptr i64 %".2412" to ptr
  %".2413" = load float, ptr %"for_LDG.105"
  %".2414" = bitcast ptr %"R40" to ptr
  store float %".2413", ptr %".2414"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".2417" = load i32, ptr %"R10"
  %".2418" = load i32, ptr %"R49"
  %"mul.40" = mul i32 %".2417", %".2418"
  %"add.120" = add i32 %"mul.40", %"Arg_3"
  store i32 %"add.120", ptr %"R10"
  ; LDG.E.SYS R37, [R14+0x4]
  %".2421" = load i32, ptr %"R14"
  %"zext.242" = zext i32 %".2421" to i64
  %".2422" = load i32, ptr %"R15"
  %"zext.243" = zext i32 %".2422" to i64
  %"shl.129" = shl i64 %"zext.243", 32
  %"or.116" = or i64 %"shl.129", %"zext.242"
  %".2423" = inttoptr i64 %"or.116" to ptr
  %".2424" = ptrtoint ptr %".2423" to i64
  %".2425" = add i64 %".2424", 4
  %"for_LDG.106" = inttoptr i64 %".2425" to ptr
  %".2426" = load float, ptr %"for_LDG.106"
  %".2427" = bitcast ptr %"R37" to ptr
  store float %".2426", ptr %".2427"
  ; LDG.E.SYS R38, [R18+0x8]
  %".2430" = load i32, ptr %"R18"
  %"zext.244" = zext i32 %".2430" to i64
  %".2431" = load i32, ptr %"R19"
  %"zext.245" = zext i32 %".2431" to i64
  %"shl.130" = shl i64 %"zext.245", 32
  %"or.117" = or i64 %"shl.130", %"zext.244"
  %".2432" = inttoptr i64 %"or.117" to ptr
  %".2433" = ptrtoint ptr %".2432" to i64
  %".2434" = add i64 %".2433", 8
  %"for_LDG.107" = inttoptr i64 %".2434" to ptr
  %".2435" = load float, ptr %"for_LDG.107"
  %".2436" = bitcast ptr %"R38" to ptr
  store float %".2435", ptr %".2436"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".2439" = load i32, ptr %"R50"
  %".2440" = load i32, ptr %"R49"
  %"mul.41" = mul i32 %".2439", %".2440"
  %"add.121" = add i32 %"mul.41", %"Arg_4"
  store i32 %"add.121", ptr %"R12"
  ; LDG.E.SYS R35, [R14+0x8]
  %".2443" = load i32, ptr %"R14"
  %"zext.246" = zext i32 %".2443" to i64
  %".2444" = load i32, ptr %"R15"
  %"zext.247" = zext i32 %".2444" to i64
  %"shl.131" = shl i64 %"zext.247", 32
  %"or.118" = or i64 %"shl.131", %"zext.246"
  %".2445" = inttoptr i64 %"or.118" to ptr
  %".2446" = ptrtoint ptr %".2445" to i64
  %".2447" = add i64 %".2446", 8
  %"for_LDG.108" = inttoptr i64 %".2447" to ptr
  %".2448" = load float, ptr %"for_LDG.108"
  %".2449" = bitcast ptr %"R35" to ptr
  store float %".2448", ptr %".2449"
  ; LDG.E.SYS R48, [R18+0xc]
  %".2452" = load i32, ptr %"R18"
  %"zext.248" = zext i32 %".2452" to i64
  %".2453" = load i32, ptr %"R19"
  %"zext.249" = zext i32 %".2453" to i64
  %"shl.132" = shl i64 %"zext.249", 32
  %"or.119" = or i64 %"shl.132", %"zext.248"
  %".2454" = inttoptr i64 %"or.119" to ptr
  %".2455" = ptrtoint ptr %".2454" to i64
  %".2456" = add i64 %".2455", 12
  %"for_LDG.109" = inttoptr i64 %".2456" to ptr
  %".2457" = load float, ptr %"for_LDG.109"
  %".2458" = bitcast ptr %"R48" to ptr
  store float %".2457", ptr %".2458"
  ; IADD3 R16, R22, 0xc, RZ
  %".2461" = load i32, ptr %"R22"
  %"add.122" = add i32 %".2461", 12
  %"add.123" = add i32 %"add.122", 0
  store i32 %"add.123", ptr %"R16"
  ; LDG.E.SYS R47, [R14+0xc]
  %".2464" = load i32, ptr %"R14"
  %"zext.250" = zext i32 %".2464" to i64
  %".2465" = load i32, ptr %"R15"
  %"zext.251" = zext i32 %".2465" to i64
  %"shl.133" = shl i64 %"zext.251", 32
  %"or.120" = or i64 %"shl.133", %"zext.250"
  %".2466" = inttoptr i64 %"or.120" to ptr
  %".2467" = ptrtoint ptr %".2466" to i64
  %".2468" = add i64 %".2467", 12
  %"for_LDG.110" = inttoptr i64 %".2468" to ptr
  %".2469" = load float, ptr %"for_LDG.110"
  %".2470" = bitcast ptr %"R47" to ptr
  store float %".2469", ptr %".2470"
  ; LDG.E.SYS R54, [R10]
  %".2473" = load i32, ptr %"R10"
  %"zext.252" = zext i32 %".2473" to i64
  %".2474" = load i32, ptr %"R11"
  %"zext.253" = zext i32 %".2474" to i64
  %"shl.134" = shl i64 %"zext.253", 32
  %"or.121" = or i64 %"shl.134", %"zext.252"
  %".2475" = inttoptr i64 %"or.121" to ptr
  %".2476" = ptrtoint ptr %".2475" to i64
  %".2477" = add i64 %".2476", 0
  %"for_LDG.111" = inttoptr i64 %".2477" to ptr
  %".2478" = load float, ptr %"for_LDG.111"
  %".2479" = bitcast ptr %"R54" to ptr
  store float %".2478", ptr %".2479"
  ; IADD3 R58, R3, R16, RZ
  %".2482" = load i32, ptr %"R3"
  %".2483" = load i32, ptr %"R16"
  %"add.124" = add i32 %".2482", %".2483"
  %"add.125" = add i32 %"add.124", 0
  store i32 %"add.125", ptr %"R58"
  ; LDG.E.SYS R45, [R12]
  %".2486" = load i32, ptr %"R12"
  %"zext.254" = zext i32 %".2486" to i64
  %".2487" = load i32, ptr %"R13"
  %"zext.255" = zext i32 %".2487" to i64
  %"shl.135" = shl i64 %"zext.255", 32
  %"or.122" = or i64 %"shl.135", %"zext.254"
  %".2488" = inttoptr i64 %"or.122" to ptr
  %".2489" = ptrtoint ptr %".2488" to i64
  %".2490" = add i64 %".2489", 0
  %"for_LDG.112" = inttoptr i64 %".2490" to ptr
  %".2491" = load float, ptr %"for_LDG.112"
  %".2492" = bitcast ptr %"R45" to ptr
  store float %".2491", ptr %".2492"
  ; LDG.E.SYS R52, [R10+0x4]
  %".2495" = load i32, ptr %"R10"
  %"zext.256" = zext i32 %".2495" to i64
  %".2496" = load i32, ptr %"R11"
  %"zext.257" = zext i32 %".2496" to i64
  %"shl.136" = shl i64 %"zext.257", 32
  %"or.123" = or i64 %"shl.136", %"zext.256"
  %".2497" = inttoptr i64 %"or.123" to ptr
  %".2498" = ptrtoint ptr %".2497" to i64
  %".2499" = add i64 %".2498", 4
  %"for_LDG.113" = inttoptr i64 %".2499" to ptr
  %".2500" = load float, ptr %"for_LDG.113"
  %".2501" = bitcast ptr %"R52" to ptr
  store float %".2500", ptr %".2501"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".2504" = load i32, ptr %"R16"
  %".2505" = load i32, ptr %"R49"
  %"mul.42" = mul i32 %".2504", %".2505"
  %"add.126" = add i32 %"mul.42", %"Arg_3"
  store i32 %"add.126", ptr %"R16"
  ; LDG.E.SYS R43, [R12+0x4]
  %".2508" = load i32, ptr %"R12"
  %"zext.258" = zext i32 %".2508" to i64
  %".2509" = load i32, ptr %"R13"
  %"zext.259" = zext i32 %".2509" to i64
  %"shl.137" = shl i64 %"zext.259", 32
  %"or.124" = or i64 %"shl.137", %"zext.258"
  %".2510" = inttoptr i64 %"or.124" to ptr
  %".2511" = ptrtoint ptr %".2510" to i64
  %".2512" = add i64 %".2511", 4
  %"for_LDG.114" = inttoptr i64 %".2512" to ptr
  %".2513" = load float, ptr %"for_LDG.114"
  %".2514" = bitcast ptr %"R43" to ptr
  store float %".2513", ptr %".2514"
  ; LDG.E.SYS R50, [R10+0x8]
  %".2517" = load i32, ptr %"R10"
  %"zext.260" = zext i32 %".2517" to i64
  %".2518" = load i32, ptr %"R11"
  %"zext.261" = zext i32 %".2518" to i64
  %"shl.138" = shl i64 %"zext.261", 32
  %"or.125" = or i64 %"shl.138", %"zext.260"
  %".2519" = inttoptr i64 %"or.125" to ptr
  %".2520" = ptrtoint ptr %".2519" to i64
  %".2521" = add i64 %".2520", 8
  %"for_LDG.115" = inttoptr i64 %".2521" to ptr
  %".2522" = load float, ptr %"for_LDG.115"
  %".2523" = bitcast ptr %"R50" to ptr
  store float %".2522", ptr %".2523"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".2526" = load i32, ptr %"R58"
  %".2527" = load i32, ptr %"R49"
  %"mul.43" = mul i32 %".2526", %".2527"
  %"add.127" = add i32 %"mul.43", %"Arg_4"
  store i32 %"add.127", ptr %"R14"
  ; LDG.E.SYS R18, [R12+0x8]
  %".2530" = load i32, ptr %"R12"
  %"zext.262" = zext i32 %".2530" to i64
  %".2531" = load i32, ptr %"R13"
  %"zext.263" = zext i32 %".2531" to i64
  %"shl.139" = shl i64 %"zext.263", 32
  %"or.126" = or i64 %"shl.139", %"zext.262"
  %".2532" = inttoptr i64 %"or.126" to ptr
  %".2533" = ptrtoint ptr %".2532" to i64
  %".2534" = add i64 %".2533", 8
  %"for_LDG.116" = inttoptr i64 %".2534" to ptr
  %".2535" = load float, ptr %"for_LDG.116"
  %".2536" = bitcast ptr %"R18" to ptr
  store float %".2535", ptr %".2536"
  ; LDG.E.SYS R56, [R10+0xc]
  %".2539" = load i32, ptr %"R10"
  %"zext.264" = zext i32 %".2539" to i64
  %".2540" = load i32, ptr %"R11"
  %"zext.265" = zext i32 %".2540" to i64
  %"shl.140" = shl i64 %"zext.265", 32
  %"or.127" = or i64 %"shl.140", %"zext.264"
  %".2541" = inttoptr i64 %"or.127" to ptr
  %".2542" = ptrtoint ptr %".2541" to i64
  %".2543" = add i64 %".2542", 12
  %"for_LDG.117" = inttoptr i64 %".2543" to ptr
  %".2544" = load float, ptr %"for_LDG.117"
  %".2545" = bitcast ptr %"R56" to ptr
  store float %".2544", ptr %".2545"
  ; LDG.E.SYS R55, [R12+0xc]
  %".2548" = load i32, ptr %"R12"
  %"zext.266" = zext i32 %".2548" to i64
  %".2549" = load i32, ptr %"R13"
  %"zext.267" = zext i32 %".2549" to i64
  %"shl.141" = shl i64 %"zext.267", 32
  %"or.128" = or i64 %"shl.141", %"zext.266"
  %".2550" = inttoptr i64 %"or.128" to ptr
  %".2551" = ptrtoint ptr %".2550" to i64
  %".2552" = add i64 %".2551", 12
  %"for_LDG.118" = inttoptr i64 %".2552" to ptr
  %".2553" = load float, ptr %"for_LDG.118"
  %".2554" = bitcast ptr %"R55" to ptr
  store float %".2553", ptr %".2554"
  ; LDG.E.SYS R51, [R16]
  %".2557" = load i32, ptr %"R16"
  %"zext.268" = zext i32 %".2557" to i64
  %".2558" = load i32, ptr %"R17"
  %"zext.269" = zext i32 %".2558" to i64
  %"shl.142" = shl i64 %"zext.269", 32
  %"or.129" = or i64 %"shl.142", %"zext.268"
  %".2559" = inttoptr i64 %"or.129" to ptr
  %".2560" = ptrtoint ptr %".2559" to i64
  %".2561" = add i64 %".2560", 0
  %"for_LDG.119" = inttoptr i64 %".2561" to ptr
  %".2562" = load float, ptr %"for_LDG.119"
  %".2563" = bitcast ptr %"R51" to ptr
  store float %".2562", ptr %".2563"
  ; LDG.E.SYS R53, [R14]
  %".2566" = load i32, ptr %"R14"
  %"zext.270" = zext i32 %".2566" to i64
  %".2567" = load i32, ptr %"R15"
  %"zext.271" = zext i32 %".2567" to i64
  %"shl.143" = shl i64 %"zext.271", 32
  %"or.130" = or i64 %"shl.143", %"zext.270"
  %".2568" = inttoptr i64 %"or.130" to ptr
  %".2569" = ptrtoint ptr %".2568" to i64
  %".2570" = add i64 %".2569", 0
  %"for_LDG.120" = inttoptr i64 %".2570" to ptr
  %".2571" = load float, ptr %"for_LDG.120"
  %".2572" = bitcast ptr %"R53" to ptr
  store float %".2571", ptr %".2572"
  ; LDG.E.SYS R60, [R16+0x4]
  %".2575" = load i32, ptr %"R16"
  %"zext.272" = zext i32 %".2575" to i64
  %".2576" = load i32, ptr %"R17"
  %"zext.273" = zext i32 %".2576" to i64
  %"shl.144" = shl i64 %"zext.273", 32
  %"or.131" = or i64 %"shl.144", %"zext.272"
  %".2577" = inttoptr i64 %"or.131" to ptr
  %".2578" = ptrtoint ptr %".2577" to i64
  %".2579" = add i64 %".2578", 4
  %"for_LDG.121" = inttoptr i64 %".2579" to ptr
  %".2580" = load float, ptr %"for_LDG.121"
  %".2581" = bitcast ptr %"R60" to ptr
  store float %".2580", ptr %".2581"
  ; LDG.E.SYS R49, [R14+0x4]
  %".2584" = load i32, ptr %"R14"
  %"zext.274" = zext i32 %".2584" to i64
  %".2585" = load i32, ptr %"R15"
  %"zext.275" = zext i32 %".2585" to i64
  %"shl.145" = shl i64 %"zext.275", 32
  %"or.132" = or i64 %"shl.145", %"zext.274"
  %".2586" = inttoptr i64 %"or.132" to ptr
  %".2587" = ptrtoint ptr %".2586" to i64
  %".2588" = add i64 %".2587", 4
  %"for_LDG.122" = inttoptr i64 %".2588" to ptr
  %".2589" = load float, ptr %"for_LDG.122"
  %".2590" = bitcast ptr %"R49" to ptr
  store float %".2589", ptr %".2590"
  ; LDG.E.SYS R58, [R16+0x8]
  %".2593" = load i32, ptr %"R16"
  %"zext.276" = zext i32 %".2593" to i64
  %".2594" = load i32, ptr %"R17"
  %"zext.277" = zext i32 %".2594" to i64
  %"shl.146" = shl i64 %"zext.277", 32
  %"or.133" = or i64 %"shl.146", %"zext.276"
  %".2595" = inttoptr i64 %"or.133" to ptr
  %".2596" = ptrtoint ptr %".2595" to i64
  %".2597" = add i64 %".2596", 8
  %"for_LDG.123" = inttoptr i64 %".2597" to ptr
  %".2598" = load float, ptr %"for_LDG.123"
  %".2599" = bitcast ptr %"R58" to ptr
  store float %".2598", ptr %".2599"
  ; LDG.E.SYS R19, [R14+0x8]
  %".2602" = load i32, ptr %"R14"
  %"zext.278" = zext i32 %".2602" to i64
  %".2603" = load i32, ptr %"R15"
  %"zext.279" = zext i32 %".2603" to i64
  %"shl.147" = shl i64 %"zext.279", 32
  %"or.134" = or i64 %"shl.147", %"zext.278"
  %".2604" = inttoptr i64 %"or.134" to ptr
  %".2605" = ptrtoint ptr %".2604" to i64
  %".2606" = add i64 %".2605", 8
  %"for_LDG.124" = inttoptr i64 %".2606" to ptr
  %".2607" = load float, ptr %"for_LDG.124"
  %".2608" = bitcast ptr %"R19" to ptr
  store float %".2607", ptr %".2608"
  ; LDG.E.SYS R57, [R16+0xc]
  %".2611" = load i32, ptr %"R16"
  %"zext.280" = zext i32 %".2611" to i64
  %".2612" = load i32, ptr %"R17"
  %"zext.281" = zext i32 %".2612" to i64
  %"shl.148" = shl i64 %"zext.281", 32
  %"or.135" = or i64 %"shl.148", %"zext.280"
  %".2613" = inttoptr i64 %"or.135" to ptr
  %".2614" = ptrtoint ptr %".2613" to i64
  %".2615" = add i64 %".2614", 12
  %"for_LDG.125" = inttoptr i64 %".2615" to ptr
  %".2616" = load float, ptr %"for_LDG.125"
  %".2617" = bitcast ptr %"R57" to ptr
  store float %".2616", ptr %".2617"
  ; LDG.E.SYS R59, [R14+0xc]
  %".2620" = load i32, ptr %"R14"
  %"zext.282" = zext i32 %".2620" to i64
  %".2621" = load i32, ptr %"R15"
  %"zext.283" = zext i32 %".2621" to i64
  %"shl.149" = shl i64 %"zext.283", 32
  %"or.136" = or i64 %"shl.149", %"zext.282"
  %".2622" = inttoptr i64 %"or.136" to ptr
  %".2623" = ptrtoint ptr %".2622" to i64
  %".2624" = add i64 %".2623", 12
  %"for_LDG.126" = inttoptr i64 %".2624" to ptr
  %".2625" = load float, ptr %"for_LDG.126"
  %".2626" = bitcast ptr %"R59" to ptr
  store float %".2625", ptr %".2626"
  ; IADD3 R23, R23, -0x10, RZ
  %".2629" = load i32, ptr %"R23"
  %"add.128" = add i32 %".2629", -16
  %"add.129" = add i32 %"add.128", 0
  store i32 %"add.129", ptr %"R23"
  ; IADD3 R22, R22, 0x10, RZ
  %".2632" = load i32, ptr %"R22"
  %"add.130" = add i32 %".2632", 16
  %"add.131" = add i32 %"add.130", 0
  store i32 %"add.131", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2635" = load i32, ptr %"R23"
  %".2636" = load i1, ptr %"PT"
  %"cmp.23" = icmp sgt i32 %".2635", 12
  %".2637" = and i1 %"cmp.23", %".2636"
  store i1 %".2637", ptr %"P1"
  ; FMUL R24, R24, R9
  %".2640" = load float, ptr %"R24"
  %".2641" = load float, ptr %"R9"
  %"fmul.85" = fmul float %".2640", %".2641"
  %".2642" = bitcast ptr %"R24" to ptr
  store float %"fmul.85", ptr %".2642"
  ; FFMA R24, R24, R21, R8
  %".2645" = load float, ptr %"R24"
  %".2646" = load float, ptr %"R21"
  %".2647" = load float, ptr %"R8"
  %"fmul.86" = fmul float %".2645", %".2646"
  %"fadd.93" = fadd float %"fmul.86", %".2647"
  %".2648" = bitcast ptr %"R24" to ptr
  store float %"fadd.93", ptr %".2648"
  ; FMUL R36, R36, R9
  %".2651" = load float, ptr %"R36"
  %".2652" = load float, ptr %"R9"
  %"fmul.87" = fmul float %".2651", %".2652"
  %".2653" = bitcast ptr %"R36" to ptr
  store float %"fmul.87", ptr %".2653"
  ; FFMA R25, R36, R25, R24
  %".2656" = load float, ptr %"R36"
  %".2657" = load float, ptr %"R25"
  %".2658" = load float, ptr %"R24"
  %"fmul.88" = fmul float %".2656", %".2657"
  %"fadd.94" = fadd float %"fmul.88", %".2658"
  %".2659" = bitcast ptr %"R25" to ptr
  store float %"fadd.94", ptr %".2659"
  ; FMUL R46, R46, R9
  %".2662" = load float, ptr %"R46"
  %".2663" = load float, ptr %"R9"
  %"fmul.89" = fmul float %".2662", %".2663"
  %".2664" = bitcast ptr %"R46" to ptr
  store float %"fmul.89", ptr %".2664"
  ; FFMA R34, R46, R34, R25
  %".2667" = load float, ptr %"R46"
  %".2668" = load float, ptr %"R34"
  %".2669" = load float, ptr %"R25"
  %"fmul.90" = fmul float %".2667", %".2668"
  %"fadd.95" = fadd float %"fmul.90", %".2669"
  %".2670" = bitcast ptr %"R34" to ptr
  store float %"fadd.95", ptr %".2670"
  ; FMUL R44, R44, R9
  %".2673" = load float, ptr %"R44"
  %".2674" = load float, ptr %"R9"
  %"fmul.91" = fmul float %".2673", %".2674"
  %".2675" = bitcast ptr %"R44" to ptr
  store float %"fmul.91", ptr %".2675"
  ; FFMA R34, R44, R41, R34
  %".2678" = load float, ptr %"R44"
  %".2679" = load float, ptr %"R41"
  %".2680" = load float, ptr %"R34"
  %"fmul.92" = fmul float %".2678", %".2679"
  %"fadd.96" = fadd float %"fmul.92", %".2680"
  %".2681" = bitcast ptr %"R34" to ptr
  store float %"fadd.96", ptr %".2681"
  ; FMUL R42, R42, R9
  %".2684" = load float, ptr %"R42"
  %".2685" = load float, ptr %"R9"
  %"fmul.93" = fmul float %".2684", %".2685"
  %".2686" = bitcast ptr %"R42" to ptr
  store float %"fmul.93", ptr %".2686"
  ; FFMA R34, R42, R39, R34
  %".2689" = load float, ptr %"R42"
  %".2690" = load float, ptr %"R39"
  %".2691" = load float, ptr %"R34"
  %"fmul.94" = fmul float %".2689", %".2690"
  %"fadd.97" = fadd float %"fmul.94", %".2691"
  %".2692" = bitcast ptr %"R34" to ptr
  store float %"fadd.97", ptr %".2692"
  ; FMUL R40, R40, R9
  %".2695" = load float, ptr %"R40"
  %".2696" = load float, ptr %"R9"
  %"fmul.95" = fmul float %".2695", %".2696"
  %".2697" = bitcast ptr %"R40" to ptr
  store float %"fmul.95", ptr %".2697"
  ; FFMA R34, R40, R37, R34
  %".2700" = load float, ptr %"R40"
  %".2701" = load float, ptr %"R37"
  %".2702" = load float, ptr %"R34"
  %"fmul.96" = fmul float %".2700", %".2701"
  %"fadd.98" = fadd float %"fmul.96", %".2702"
  %".2703" = bitcast ptr %"R34" to ptr
  store float %"fadd.98", ptr %".2703"
  ; FMUL R38, R38, R9
  %".2706" = load float, ptr %"R38"
  %".2707" = load float, ptr %"R9"
  %"fmul.97" = fmul float %".2706", %".2707"
  %".2708" = bitcast ptr %"R38" to ptr
  store float %"fmul.97", ptr %".2708"
  ; FFMA R34, R38, R35, R34
  %".2711" = load float, ptr %"R38"
  %".2712" = load float, ptr %"R35"
  %".2713" = load float, ptr %"R34"
  %"fmul.98" = fmul float %".2711", %".2712"
  %"fadd.99" = fadd float %"fmul.98", %".2713"
  %".2714" = bitcast ptr %"R34" to ptr
  store float %"fadd.99", ptr %".2714"
  ; FMUL R48, R48, R9
  %".2717" = load float, ptr %"R48"
  %".2718" = load float, ptr %"R9"
  %"fmul.99" = fmul float %".2717", %".2718"
  %".2719" = bitcast ptr %"R48" to ptr
  store float %"fmul.99", ptr %".2719"
  ; FFMA R34, R48, R47, R34
  %".2722" = load float, ptr %"R48"
  %".2723" = load float, ptr %"R47"
  %".2724" = load float, ptr %"R34"
  %"fmul.100" = fmul float %".2722", %".2723"
  %"fadd.100" = fadd float %"fmul.100", %".2724"
  %".2725" = bitcast ptr %"R34" to ptr
  store float %"fadd.100", ptr %".2725"
  ; FMUL R54, R54, R9
  %".2728" = load float, ptr %"R54"
  %".2729" = load float, ptr %"R9"
  %"fmul.101" = fmul float %".2728", %".2729"
  %".2730" = bitcast ptr %"R54" to ptr
  store float %"fmul.101", ptr %".2730"
  ; FFMA R34, R54, R45, R34
  %".2733" = load float, ptr %"R54"
  %".2734" = load float, ptr %"R45"
  %".2735" = load float, ptr %"R34"
  %"fmul.102" = fmul float %".2733", %".2734"
  %"fadd.101" = fadd float %"fmul.102", %".2735"
  %".2736" = bitcast ptr %"R34" to ptr
  store float %"fadd.101", ptr %".2736"
  ; FMUL R52, R52, R9
  %".2739" = load float, ptr %"R52"
  %".2740" = load float, ptr %"R9"
  %"fmul.103" = fmul float %".2739", %".2740"
  %".2741" = bitcast ptr %"R52" to ptr
  store float %"fmul.103", ptr %".2741"
  ; FFMA R43, R52, R43, R34
  %".2744" = load float, ptr %"R52"
  %".2745" = load float, ptr %"R43"
  %".2746" = load float, ptr %"R34"
  %"fmul.104" = fmul float %".2744", %".2745"
  %"fadd.102" = fadd float %"fmul.104", %".2746"
  %".2747" = bitcast ptr %"R43" to ptr
  store float %"fadd.102", ptr %".2747"
  ; FMUL R50, R50, R9
  %".2750" = load float, ptr %"R50"
  %".2751" = load float, ptr %"R9"
  %"fmul.105" = fmul float %".2750", %".2751"
  %".2752" = bitcast ptr %"R50" to ptr
  store float %"fmul.105", ptr %".2752"
  ; FFMA R18, R50, R18, R43
  %".2755" = load float, ptr %"R50"
  %".2756" = load float, ptr %"R18"
  %".2757" = load float, ptr %"R43"
  %"fmul.106" = fmul float %".2755", %".2756"
  %"fadd.103" = fadd float %"fmul.106", %".2757"
  %".2758" = bitcast ptr %"R18" to ptr
  store float %"fadd.103", ptr %".2758"
  ; FMUL R56, R56, R9
  %".2761" = load float, ptr %"R56"
  %".2762" = load float, ptr %"R9"
  %"fmul.107" = fmul float %".2761", %".2762"
  %".2763" = bitcast ptr %"R56" to ptr
  store float %"fmul.107", ptr %".2763"
  ; FFMA R18, R56, R55, R18
  %".2766" = load float, ptr %"R56"
  %".2767" = load float, ptr %"R55"
  %".2768" = load float, ptr %"R18"
  %"fmul.108" = fmul float %".2766", %".2767"
  %"fadd.104" = fadd float %"fmul.108", %".2768"
  %".2769" = bitcast ptr %"R18" to ptr
  store float %"fadd.104", ptr %".2769"
  ; FMUL R51, R51, R9
  %".2772" = load float, ptr %"R51"
  %".2773" = load float, ptr %"R9"
  %"fmul.109" = fmul float %".2772", %".2773"
  %".2774" = bitcast ptr %"R51" to ptr
  store float %"fmul.109", ptr %".2774"
  ; FFMA R18, R51, R53, R18
  %".2777" = load float, ptr %"R51"
  %".2778" = load float, ptr %"R53"
  %".2779" = load float, ptr %"R18"
  %"fmul.110" = fmul float %".2777", %".2778"
  %"fadd.105" = fadd float %"fmul.110", %".2779"
  %".2780" = bitcast ptr %"R18" to ptr
  store float %"fadd.105", ptr %".2780"
  ; FMUL R60, R60, R9
  %".2783" = load float, ptr %"R60"
  %".2784" = load float, ptr %"R9"
  %"fmul.111" = fmul float %".2783", %".2784"
  %".2785" = bitcast ptr %"R60" to ptr
  store float %"fmul.111", ptr %".2785"
  ; FFMA R18, R60, R49, R18
  %".2788" = load float, ptr %"R60"
  %".2789" = load float, ptr %"R49"
  %".2790" = load float, ptr %"R18"
  %"fmul.112" = fmul float %".2788", %".2789"
  %"fadd.106" = fadd float %"fmul.112", %".2790"
  %".2791" = bitcast ptr %"R18" to ptr
  store float %"fadd.106", ptr %".2791"
  ; FMUL R58, R58, R9
  %".2794" = load float, ptr %"R58"
  %".2795" = load float, ptr %"R9"
  %"fmul.113" = fmul float %".2794", %".2795"
  %".2796" = bitcast ptr %"R58" to ptr
  store float %"fmul.113", ptr %".2796"
  ; FFMA R18, R58, R19, R18
  %".2799" = load float, ptr %"R58"
  %".2800" = load float, ptr %"R19"
  %".2801" = load float, ptr %"R18"
  %"fmul.114" = fmul float %".2799", %".2800"
  %"fadd.107" = fadd float %"fmul.114", %".2801"
  %".2802" = bitcast ptr %"R18" to ptr
  store float %"fadd.107", ptr %".2802"
  ; FMUL R57, R57, R9
  %".2805" = load float, ptr %"R57"
  %".2806" = load float, ptr %"R9"
  %"fmul.115" = fmul float %".2805", %".2806"
  %".2807" = bitcast ptr %"R57" to ptr
  store float %"fmul.115", ptr %".2807"
  ; FFMA R8, R57, R59, R18
  %".2810" = load float, ptr %"R57"
  %".2811" = load float, ptr %"R59"
  %".2812" = load float, ptr %"R18"
  %"fmul.116" = fmul float %".2810", %".2811"
  %"fadd.108" = fadd float %"fmul.116", %".2812"
  %".2813" = bitcast ptr %"R8" to ptr
  store float %"fadd.108", ptr %".2813"
  ; @P1 BRA `(.L_x_14)
  %".2816" = load i1, ptr %"P1"
  %".2817" = icmp ne i1 %".2816", 1
  br i1 %".2817", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".2820" = load i32, ptr %"R23"
  %".2821" = load i1, ptr %"PT"
  %"cmp.24" = icmp sgt i32 %".2820", 4
  %".2822" = and i1 %"cmp.24", %".2821"
  store i1 %".2822", ptr %"P1"
  ; @!P1 BRA `(.L_x_15)
  %".2825" = load i1, ptr %"P1"
  %".2826" = icmp eq i1 %".2825", 1
  br i1 %".2826", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R16, R3, R22, RZ
  %".2831" = load i32, ptr %"R3"
  %".2832" = load i32, ptr %"R22"
  %"add.132" = add i32 %".2831", %".2832"
  %"add.133" = add i32 %"add.132", 0
  store i32 %"add.133", ptr %"R16"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".2835" = load i32, ptr %"R22"
  %".2836" = load i32, ptr %"R13"
  %"mul.44" = mul i32 %".2835", %".2836"
  %"add.134" = add i32 %"mul.44", %"Arg_3"
  store i32 %"add.134", ptr %"R14"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".2839" = load i32, ptr %"R16"
  %".2840" = load i32, ptr %"R13"
  %"mul.45" = mul i32 %".2839", %".2840"
  %"add.135" = add i32 %"mul.45", %"Arg_4"
  store i32 %"add.135", ptr %"R16"
  ; IADD3 R10, R22, 0x4, RZ
  %".2843" = load i32, ptr %"R22"
  %"add.136" = add i32 %".2843", 4
  %"add.137" = add i32 %"add.136", 0
  store i32 %"add.137", ptr %"R10"
  ; LDG.E.SYS R18, [R14]
  %".2846" = load i32, ptr %"R14"
  %"zext.284" = zext i32 %".2846" to i64
  %".2847" = load i32, ptr %"R15"
  %"zext.285" = zext i32 %".2847" to i64
  %"shl.150" = shl i64 %"zext.285", 32
  %"or.137" = or i64 %"shl.150", %"zext.284"
  %".2848" = inttoptr i64 %"or.137" to ptr
  %".2849" = ptrtoint ptr %".2848" to i64
  %".2850" = add i64 %".2849", 0
  %"for_LDG.127" = inttoptr i64 %".2850" to ptr
  %".2851" = load float, ptr %"for_LDG.127"
  %".2852" = bitcast ptr %"R18" to ptr
  store float %".2851", ptr %".2852"
  ; IADD3 R12, R3, R10, RZ
  %".2855" = load i32, ptr %"R3"
  %".2856" = load i32, ptr %"R10"
  %"add.138" = add i32 %".2855", %".2856"
  %"add.139" = add i32 %"add.138", 0
  store i32 %"add.139", ptr %"R12"
  ; LDG.E.SYS R19, [R16]
  %".2859" = load i32, ptr %"R16"
  %"zext.286" = zext i32 %".2859" to i64
  %".2860" = load i32, ptr %"R17"
  %"zext.287" = zext i32 %".2860" to i64
  %"shl.151" = shl i64 %"zext.287", 32
  %"or.138" = or i64 %"shl.151", %"zext.286"
  %".2861" = inttoptr i64 %"or.138" to ptr
  %".2862" = ptrtoint ptr %".2861" to i64
  %".2863" = add i64 %".2862", 0
  %"for_LDG.128" = inttoptr i64 %".2863" to ptr
  %".2864" = load float, ptr %"for_LDG.128"
  %".2865" = bitcast ptr %"R19" to ptr
  store float %".2864", ptr %".2865"
  ; LDG.E.SYS R24, [R14+0x4]
  %".2868" = load i32, ptr %"R14"
  %"zext.288" = zext i32 %".2868" to i64
  %".2869" = load i32, ptr %"R15"
  %"zext.289" = zext i32 %".2869" to i64
  %"shl.152" = shl i64 %"zext.289", 32
  %"or.139" = or i64 %"shl.152", %"zext.288"
  %".2870" = inttoptr i64 %"or.139" to ptr
  %".2871" = ptrtoint ptr %".2870" to i64
  %".2872" = add i64 %".2871", 4
  %"for_LDG.129" = inttoptr i64 %".2872" to ptr
  %".2873" = load float, ptr %"for_LDG.129"
  %".2874" = bitcast ptr %"R24" to ptr
  store float %".2873", ptr %".2874"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".2877" = load i32, ptr %"R10"
  %".2878" = load i32, ptr %"R13"
  %"mul.46" = mul i32 %".2877", %".2878"
  %"add.140" = add i32 %"mul.46", %"Arg_3"
  store i32 %"add.140", ptr %"R10"
  ; LDG.E.SYS R21, [R16+0x4]
  %".2881" = load i32, ptr %"R16"
  %"zext.290" = zext i32 %".2881" to i64
  %".2882" = load i32, ptr %"R17"
  %"zext.291" = zext i32 %".2882" to i64
  %"shl.153" = shl i64 %"zext.291", 32
  %"or.140" = or i64 %"shl.153", %"zext.290"
  %".2883" = inttoptr i64 %"or.140" to ptr
  %".2884" = ptrtoint ptr %".2883" to i64
  %".2885" = add i64 %".2884", 4
  %"for_LDG.130" = inttoptr i64 %".2885" to ptr
  %".2886" = load float, ptr %"for_LDG.130"
  %".2887" = bitcast ptr %"R21" to ptr
  store float %".2886", ptr %".2887"
  ; LDG.E.SYS R34, [R14+0x8]
  %".2890" = load i32, ptr %"R14"
  %"zext.292" = zext i32 %".2890" to i64
  %".2891" = load i32, ptr %"R15"
  %"zext.293" = zext i32 %".2891" to i64
  %"shl.154" = shl i64 %"zext.293", 32
  %"or.141" = or i64 %"shl.154", %"zext.292"
  %".2892" = inttoptr i64 %"or.141" to ptr
  %".2893" = ptrtoint ptr %".2892" to i64
  %".2894" = add i64 %".2893", 8
  %"for_LDG.131" = inttoptr i64 %".2894" to ptr
  %".2895" = load float, ptr %"for_LDG.131"
  %".2896" = bitcast ptr %"R34" to ptr
  store float %".2895", ptr %".2896"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2899" = load i32, ptr %"R12"
  %".2900" = load i32, ptr %"R13"
  %"mul.47" = mul i32 %".2899", %".2900"
  %"add.141" = add i32 %"mul.47", %"Arg_4"
  store i32 %"add.141", ptr %"R12"
  ; LDG.E.SYS R25, [R16+0x8]
  %".2903" = load i32, ptr %"R16"
  %"zext.294" = zext i32 %".2903" to i64
  %".2904" = load i32, ptr %"R17"
  %"zext.295" = zext i32 %".2904" to i64
  %"shl.155" = shl i64 %"zext.295", 32
  %"or.142" = or i64 %"shl.155", %"zext.294"
  %".2905" = inttoptr i64 %"or.142" to ptr
  %".2906" = ptrtoint ptr %".2905" to i64
  %".2907" = add i64 %".2906", 8
  %"for_LDG.132" = inttoptr i64 %".2907" to ptr
  %".2908" = load float, ptr %"for_LDG.132"
  %".2909" = bitcast ptr %"R25" to ptr
  store float %".2908", ptr %".2909"
  ; LDG.E.SYS R36, [R14+0xc]
  %".2912" = load i32, ptr %"R14"
  %"zext.296" = zext i32 %".2912" to i64
  %".2913" = load i32, ptr %"R15"
  %"zext.297" = zext i32 %".2913" to i64
  %"shl.156" = shl i64 %"zext.297", 32
  %"or.143" = or i64 %"shl.156", %"zext.296"
  %".2914" = inttoptr i64 %"or.143" to ptr
  %".2915" = ptrtoint ptr %".2914" to i64
  %".2916" = add i64 %".2915", 12
  %"for_LDG.133" = inttoptr i64 %".2916" to ptr
  %".2917" = load float, ptr %"for_LDG.133"
  %".2918" = bitcast ptr %"R36" to ptr
  store float %".2917", ptr %".2918"
  ; LDG.E.SYS R35, [R16+0xc]
  %".2921" = load i32, ptr %"R16"
  %"zext.298" = zext i32 %".2921" to i64
  %".2922" = load i32, ptr %"R17"
  %"zext.299" = zext i32 %".2922" to i64
  %"shl.157" = shl i64 %"zext.299", 32
  %"or.144" = or i64 %"shl.157", %"zext.298"
  %".2923" = inttoptr i64 %"or.144" to ptr
  %".2924" = ptrtoint ptr %".2923" to i64
  %".2925" = add i64 %".2924", 12
  %"for_LDG.134" = inttoptr i64 %".2925" to ptr
  %".2926" = load float, ptr %"for_LDG.134"
  %".2927" = bitcast ptr %"R35" to ptr
  store float %".2926", ptr %".2927"
  ; LDG.E.SYS R38, [R10]
  %".2930" = load i32, ptr %"R10"
  %"zext.300" = zext i32 %".2930" to i64
  %".2931" = load i32, ptr %"R11"
  %"zext.301" = zext i32 %".2931" to i64
  %"shl.158" = shl i64 %"zext.301", 32
  %"or.145" = or i64 %"shl.158", %"zext.300"
  %".2932" = inttoptr i64 %"or.145" to ptr
  %".2933" = ptrtoint ptr %".2932" to i64
  %".2934" = add i64 %".2933", 0
  %"for_LDG.135" = inttoptr i64 %".2934" to ptr
  %".2935" = load float, ptr %"for_LDG.135"
  %".2936" = bitcast ptr %"R38" to ptr
  store float %".2935", ptr %".2936"
  ; LDG.E.SYS R37, [R12]
  %".2939" = load i32, ptr %"R12"
  %"zext.302" = zext i32 %".2939" to i64
  %".2940" = load i32, ptr %"R13"
  %"zext.303" = zext i32 %".2940" to i64
  %"shl.159" = shl i64 %"zext.303", 32
  %"or.146" = or i64 %"shl.159", %"zext.302"
  %".2941" = inttoptr i64 %"or.146" to ptr
  %".2942" = ptrtoint ptr %".2941" to i64
  %".2943" = add i64 %".2942", 0
  %"for_LDG.136" = inttoptr i64 %".2943" to ptr
  %".2944" = load float, ptr %"for_LDG.136"
  %".2945" = bitcast ptr %"R37" to ptr
  store float %".2944", ptr %".2945"
  ; LDG.E.SYS R40, [R10+0x4]
  %".2948" = load i32, ptr %"R10"
  %"zext.304" = zext i32 %".2948" to i64
  %".2949" = load i32, ptr %"R11"
  %"zext.305" = zext i32 %".2949" to i64
  %"shl.160" = shl i64 %"zext.305", 32
  %"or.147" = or i64 %"shl.160", %"zext.304"
  %".2950" = inttoptr i64 %"or.147" to ptr
  %".2951" = ptrtoint ptr %".2950" to i64
  %".2952" = add i64 %".2951", 4
  %"for_LDG.137" = inttoptr i64 %".2952" to ptr
  %".2953" = load float, ptr %"for_LDG.137"
  %".2954" = bitcast ptr %"R40" to ptr
  store float %".2953", ptr %".2954"
  ; LDG.E.SYS R39, [R12+0x4]
  %".2957" = load i32, ptr %"R12"
  %"zext.306" = zext i32 %".2957" to i64
  %".2958" = load i32, ptr %"R13"
  %"zext.307" = zext i32 %".2958" to i64
  %"shl.161" = shl i64 %"zext.307", 32
  %"or.148" = or i64 %"shl.161", %"zext.306"
  %".2959" = inttoptr i64 %"or.148" to ptr
  %".2960" = ptrtoint ptr %".2959" to i64
  %".2961" = add i64 %".2960", 4
  %"for_LDG.138" = inttoptr i64 %".2961" to ptr
  %".2962" = load float, ptr %"for_LDG.138"
  %".2963" = bitcast ptr %"R39" to ptr
  store float %".2962", ptr %".2963"
  ; LDG.E.SYS R42, [R10+0x8]
  %".2966" = load i32, ptr %"R10"
  %"zext.308" = zext i32 %".2966" to i64
  %".2967" = load i32, ptr %"R11"
  %"zext.309" = zext i32 %".2967" to i64
  %"shl.162" = shl i64 %"zext.309", 32
  %"or.149" = or i64 %"shl.162", %"zext.308"
  %".2968" = inttoptr i64 %"or.149" to ptr
  %".2969" = ptrtoint ptr %".2968" to i64
  %".2970" = add i64 %".2969", 8
  %"for_LDG.139" = inttoptr i64 %".2970" to ptr
  %".2971" = load float, ptr %"for_LDG.139"
  %".2972" = bitcast ptr %"R42" to ptr
  store float %".2971", ptr %".2972"
  ; LDG.E.SYS R44, [R10+0xc]
  %".2975" = load i32, ptr %"R10"
  %"zext.310" = zext i32 %".2975" to i64
  %".2976" = load i32, ptr %"R11"
  %"zext.311" = zext i32 %".2976" to i64
  %"shl.163" = shl i64 %"zext.311", 32
  %"or.150" = or i64 %"shl.163", %"zext.310"
  %".2977" = inttoptr i64 %"or.150" to ptr
  %".2978" = ptrtoint ptr %".2977" to i64
  %".2979" = add i64 %".2978", 12
  %"for_LDG.140" = inttoptr i64 %".2979" to ptr
  %".2980" = load float, ptr %"for_LDG.140"
  %".2981" = bitcast ptr %"R44" to ptr
  store float %".2980", ptr %".2981"
  ; LDG.E.SYS R41, [R12+0x8]
  %".2984" = load i32, ptr %"R12"
  %"zext.312" = zext i32 %".2984" to i64
  %".2985" = load i32, ptr %"R13"
  %"zext.313" = zext i32 %".2985" to i64
  %"shl.164" = shl i64 %"zext.313", 32
  %"or.151" = or i64 %"shl.164", %"zext.312"
  %".2986" = inttoptr i64 %"or.151" to ptr
  %".2987" = ptrtoint ptr %".2986" to i64
  %".2988" = add i64 %".2987", 8
  %"for_LDG.141" = inttoptr i64 %".2988" to ptr
  %".2989" = load float, ptr %"for_LDG.141"
  %".2990" = bitcast ptr %"R41" to ptr
  store float %".2989", ptr %".2990"
  ; LDG.E.SYS R43, [R12+0xc]
  %".2993" = load i32, ptr %"R12"
  %"zext.314" = zext i32 %".2993" to i64
  %".2994" = load i32, ptr %"R13"
  %"zext.315" = zext i32 %".2994" to i64
  %"shl.165" = shl i64 %"zext.315", 32
  %"or.152" = or i64 %"shl.165", %"zext.314"
  %".2995" = inttoptr i64 %"or.152" to ptr
  %".2996" = ptrtoint ptr %".2995" to i64
  %".2997" = add i64 %".2996", 12
  %"for_LDG.142" = inttoptr i64 %".2997" to ptr
  %".2998" = load float, ptr %"for_LDG.142"
  %".2999" = bitcast ptr %"R43" to ptr
  store float %".2998", ptr %".2999"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3002" = xor i1 1, 1
  %".3003" = and i1 %".3002", 1
  %".3004" = and i1 %".3003", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".3006" = load i32, ptr %"R23"
  %"add.142" = add i32 %".3006", -8
  %"add.143" = add i32 %"add.142", 0
  store i32 %"add.143", ptr %"R23"
  ; IADD3 R22, R22, 0x8, RZ
  %".3009" = load i32, ptr %"R22"
  %"add.144" = add i32 %".3009", 8
  %"add.145" = add i32 %"add.144", 0
  store i32 %"add.145", ptr %"R22"
  ; FMUL R15, R18, R9
  %".3012" = load float, ptr %"R18"
  %".3013" = load float, ptr %"R9"
  %"fmul.117" = fmul float %".3012", %".3013"
  %".3014" = bitcast ptr %"R15" to ptr
  store float %"fmul.117", ptr %".3014"
  ; FFMA R15, R15, R19, R8
  %".3017" = load float, ptr %"R15"
  %".3018" = load float, ptr %"R19"
  %".3019" = load float, ptr %"R8"
  %"fmul.118" = fmul float %".3017", %".3018"
  %"fadd.109" = fadd float %"fmul.118", %".3019"
  %".3020" = bitcast ptr %"R15" to ptr
  store float %"fadd.109", ptr %".3020"
  ; FMUL R24, R24, R9
  %".3023" = load float, ptr %"R24"
  %".3024" = load float, ptr %"R9"
  %"fmul.119" = fmul float %".3023", %".3024"
  %".3025" = bitcast ptr %"R24" to ptr
  store float %"fmul.119", ptr %".3025"
  ; FFMA R15, R24, R21, R15
  %".3028" = load float, ptr %"R24"
  %".3029" = load float, ptr %"R21"
  %".3030" = load float, ptr %"R15"
  %"fmul.120" = fmul float %".3028", %".3029"
  %"fadd.110" = fadd float %"fmul.120", %".3030"
  %".3031" = bitcast ptr %"R15" to ptr
  store float %"fadd.110", ptr %".3031"
  ; FMUL R34, R34, R9
  %".3034" = load float, ptr %"R34"
  %".3035" = load float, ptr %"R9"
  %"fmul.121" = fmul float %".3034", %".3035"
  %".3036" = bitcast ptr %"R34" to ptr
  store float %"fmul.121", ptr %".3036"
  ; FFMA R15, R34, R25, R15
  %".3039" = load float, ptr %"R34"
  %".3040" = load float, ptr %"R25"
  %".3041" = load float, ptr %"R15"
  %"fmul.122" = fmul float %".3039", %".3040"
  %"fadd.111" = fadd float %"fmul.122", %".3041"
  %".3042" = bitcast ptr %"R15" to ptr
  store float %"fadd.111", ptr %".3042"
  ; FMUL R36, R36, R9
  %".3045" = load float, ptr %"R36"
  %".3046" = load float, ptr %"R9"
  %"fmul.123" = fmul float %".3045", %".3046"
  %".3047" = bitcast ptr %"R36" to ptr
  store float %"fmul.123", ptr %".3047"
  ; FFMA R15, R36, R35, R15
  %".3050" = load float, ptr %"R36"
  %".3051" = load float, ptr %"R35"
  %".3052" = load float, ptr %"R15"
  %"fmul.124" = fmul float %".3050", %".3051"
  %"fadd.112" = fadd float %"fmul.124", %".3052"
  %".3053" = bitcast ptr %"R15" to ptr
  store float %"fadd.112", ptr %".3053"
  ; FMUL R38, R38, R9
  %".3056" = load float, ptr %"R38"
  %".3057" = load float, ptr %"R9"
  %"fmul.125" = fmul float %".3056", %".3057"
  %".3058" = bitcast ptr %"R38" to ptr
  store float %"fmul.125", ptr %".3058"
  ; FFMA R15, R38, R37, R15
  %".3061" = load float, ptr %"R38"
  %".3062" = load float, ptr %"R37"
  %".3063" = load float, ptr %"R15"
  %"fmul.126" = fmul float %".3061", %".3062"
  %"fadd.113" = fadd float %"fmul.126", %".3063"
  %".3064" = bitcast ptr %"R15" to ptr
  store float %"fadd.113", ptr %".3064"
  ; FMUL R40, R40, R9
  %".3067" = load float, ptr %"R40"
  %".3068" = load float, ptr %"R9"
  %"fmul.127" = fmul float %".3067", %".3068"
  %".3069" = bitcast ptr %"R40" to ptr
  store float %"fmul.127", ptr %".3069"
  ; FFMA R15, R40, R39, R15
  %".3072" = load float, ptr %"R40"
  %".3073" = load float, ptr %"R39"
  %".3074" = load float, ptr %"R15"
  %"fmul.128" = fmul float %".3072", %".3073"
  %"fadd.114" = fadd float %"fmul.128", %".3074"
  %".3075" = bitcast ptr %"R15" to ptr
  store float %"fadd.114", ptr %".3075"
  ; FMUL R42, R42, R9.reuse
  %".3078" = load float, ptr %"R42"
  %".3079" = load float, ptr %"R9"
  %"fmul.129" = fmul float %".3078", %".3079"
  %".3080" = bitcast ptr %"R42" to ptr
  store float %"fmul.129", ptr %".3080"
  ; FMUL R44, R44, R9
  %".3083" = load float, ptr %"R44"
  %".3084" = load float, ptr %"R9"
  %"fmul.130" = fmul float %".3083", %".3084"
  %".3085" = bitcast ptr %"R44" to ptr
  store float %"fmul.130", ptr %".3085"
  ; FFMA R15, R42, R41, R15
  %".3088" = load float, ptr %"R42"
  %".3089" = load float, ptr %"R41"
  %".3090" = load float, ptr %"R15"
  %"fmul.131" = fmul float %".3088", %".3089"
  %"fadd.115" = fadd float %"fmul.131", %".3090"
  %".3091" = bitcast ptr %"R15" to ptr
  store float %"fadd.115", ptr %".3091"
  ; FFMA R8, R44, R43, R15
  %".3094" = load float, ptr %"R44"
  %".3095" = load float, ptr %"R43"
  %".3096" = load float, ptr %"R15"
  %"fmul.132" = fmul float %".3094", %".3095"
  %"fadd.116" = fadd float %"fmul.132", %".3096"
  %".3097" = bitcast ptr %"R8" to ptr
  store float %"fadd.116", ptr %".3097"
  br label %".L_x_15"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".3101" = load i32, ptr %"R23"
  %".3102" = load i1, ptr %"PT"
  %"cmp.25" = icmp ne i32 %".3101", 0
  %".3103" = or i1 %"cmp.25", %".3102"
  store i1 %".3103", ptr %"P0"
  ; @!P0 BRA `(.L_x_11)
  %".3106" = load i1, ptr %"P0"
  %".3107" = icmp eq i1 %".3106", 1
  br i1 %".3107", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R12, R3, R22, RZ
  %".3112" = load i32, ptr %"R3"
  %".3113" = load i32, ptr %"R22"
  %"add.146" = add i32 %".3112", %".3113"
  %"add.147" = add i32 %"add.146", 0
  store i32 %"add.147", ptr %"R12"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".3116" = load i32, ptr %"R22"
  %".3117" = load i32, ptr %"R13"
  %"mul.48" = mul i32 %".3116", %".3117"
  %"add.148" = add i32 %"mul.48", %"Arg_3"
  store i32 %"add.148", ptr %"R10"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".3120" = load i32, ptr %"R12"
  %".3121" = load i32, ptr %"R13"
  %"mul.49" = mul i32 %".3120", %".3121"
  %"add.149" = add i32 %"mul.49", %"Arg_4"
  store i32 %"add.149", ptr %"R12"
  ; LDG.E.SYS R14, [R10]
  %".3124" = load i32, ptr %"R10"
  %"zext.316" = zext i32 %".3124" to i64
  %".3125" = load i32, ptr %"R11"
  %"zext.317" = zext i32 %".3125" to i64
  %"shl.166" = shl i64 %"zext.317", 32
  %"or.153" = or i64 %"shl.166", %"zext.316"
  %".3126" = inttoptr i64 %"or.153" to ptr
  %".3127" = ptrtoint ptr %".3126" to i64
  %".3128" = add i64 %".3127", 0
  %"for_LDG.143" = inttoptr i64 %".3128" to ptr
  %".3129" = load float, ptr %"for_LDG.143"
  %".3130" = bitcast ptr %"R14" to ptr
  store float %".3129", ptr %".3130"
  ; LDG.E.SYS R16, [R12]
  %".3133" = load i32, ptr %"R12"
  %"zext.318" = zext i32 %".3133" to i64
  %".3134" = load i32, ptr %"R13"
  %"zext.319" = zext i32 %".3134" to i64
  %"shl.167" = shl i64 %"zext.319", 32
  %"or.154" = or i64 %"shl.167", %"zext.318"
  %".3135" = inttoptr i64 %"or.154" to ptr
  %".3136" = ptrtoint ptr %".3135" to i64
  %".3137" = add i64 %".3136", 0
  %"for_LDG.144" = inttoptr i64 %".3137" to ptr
  %".3138" = load float, ptr %"for_LDG.144"
  %".3139" = bitcast ptr %"R16" to ptr
  store float %".3138", ptr %".3139"
  ; LDG.E.SYS R18, [R10+0x4]
  %".3142" = load i32, ptr %"R10"
  %"zext.320" = zext i32 %".3142" to i64
  %".3143" = load i32, ptr %"R11"
  %"zext.321" = zext i32 %".3143" to i64
  %"shl.168" = shl i64 %"zext.321", 32
  %"or.155" = or i64 %"shl.168", %"zext.320"
  %".3144" = inttoptr i64 %"or.155" to ptr
  %".3145" = ptrtoint ptr %".3144" to i64
  %".3146" = add i64 %".3145", 4
  %"for_LDG.145" = inttoptr i64 %".3146" to ptr
  %".3147" = load float, ptr %"for_LDG.145"
  %".3148" = bitcast ptr %"R18" to ptr
  store float %".3147", ptr %".3148"
  ; LDG.E.SYS R17, [R12+0x4]
  %".3151" = load i32, ptr %"R12"
  %"zext.322" = zext i32 %".3151" to i64
  %".3152" = load i32, ptr %"R13"
  %"zext.323" = zext i32 %".3152" to i64
  %"shl.169" = shl i64 %"zext.323", 32
  %"or.156" = or i64 %"shl.169", %"zext.322"
  %".3153" = inttoptr i64 %"or.156" to ptr
  %".3154" = ptrtoint ptr %".3153" to i64
  %".3155" = add i64 %".3154", 4
  %"for_LDG.146" = inttoptr i64 %".3155" to ptr
  %".3156" = load float, ptr %"for_LDG.146"
  %".3157" = bitcast ptr %"R17" to ptr
  store float %".3156", ptr %".3157"
  ; LDG.E.SYS R24, [R10+0x8]
  %".3160" = load i32, ptr %"R10"
  %"zext.324" = zext i32 %".3160" to i64
  %".3161" = load i32, ptr %"R11"
  %"zext.325" = zext i32 %".3161" to i64
  %"shl.170" = shl i64 %"zext.325", 32
  %"or.157" = or i64 %"shl.170", %"zext.324"
  %".3162" = inttoptr i64 %"or.157" to ptr
  %".3163" = ptrtoint ptr %".3162" to i64
  %".3164" = add i64 %".3163", 8
  %"for_LDG.147" = inttoptr i64 %".3164" to ptr
  %".3165" = load float, ptr %"for_LDG.147"
  %".3166" = bitcast ptr %"R24" to ptr
  store float %".3165", ptr %".3166"
  ; LDG.E.SYS R19, [R12+0x8]
  %".3169" = load i32, ptr %"R12"
  %"zext.326" = zext i32 %".3169" to i64
  %".3170" = load i32, ptr %"R13"
  %"zext.327" = zext i32 %".3170" to i64
  %"shl.171" = shl i64 %"zext.327", 32
  %"or.158" = or i64 %"shl.171", %"zext.326"
  %".3171" = inttoptr i64 %"or.158" to ptr
  %".3172" = ptrtoint ptr %".3171" to i64
  %".3173" = add i64 %".3172", 8
  %"for_LDG.148" = inttoptr i64 %".3173" to ptr
  %".3174" = load float, ptr %"for_LDG.148"
  %".3175" = bitcast ptr %"R19" to ptr
  store float %".3174", ptr %".3175"
  ; LDG.E.SYS R34, [R10+0xc]
  %".3178" = load i32, ptr %"R10"
  %"zext.328" = zext i32 %".3178" to i64
  %".3179" = load i32, ptr %"R11"
  %"zext.329" = zext i32 %".3179" to i64
  %"shl.172" = shl i64 %"zext.329", 32
  %"or.159" = or i64 %"shl.172", %"zext.328"
  %".3180" = inttoptr i64 %"or.159" to ptr
  %".3181" = ptrtoint ptr %".3180" to i64
  %".3182" = add i64 %".3181", 12
  %"for_LDG.149" = inttoptr i64 %".3182" to ptr
  %".3183" = load float, ptr %"for_LDG.149"
  %".3184" = bitcast ptr %"R34" to ptr
  store float %".3183", ptr %".3184"
  ; LDG.E.SYS R21, [R12+0xc]
  %".3187" = load i32, ptr %"R12"
  %"zext.330" = zext i32 %".3187" to i64
  %".3188" = load i32, ptr %"R13"
  %"zext.331" = zext i32 %".3188" to i64
  %"shl.173" = shl i64 %"zext.331", 32
  %"or.160" = or i64 %"shl.173", %"zext.330"
  %".3189" = inttoptr i64 %"or.160" to ptr
  %".3190" = ptrtoint ptr %".3189" to i64
  %".3191" = add i64 %".3190", 12
  %"for_LDG.150" = inttoptr i64 %".3191" to ptr
  %".3192" = load float, ptr %"for_LDG.150"
  %".3193" = bitcast ptr %"R21" to ptr
  store float %".3192", ptr %".3193"
  ; IADD3 R23, R23, -0x4, RZ
  %".3196" = load i32, ptr %"R23"
  %"add.150" = add i32 %".3196", -4
  %"add.151" = add i32 %"add.150", 0
  store i32 %"add.151", ptr %"R23"
  ; IADD3 R22, R22, 0x4, RZ
  %".3199" = load i32, ptr %"R22"
  %"add.152" = add i32 %".3199", 4
  %"add.153" = add i32 %"add.152", 0
  store i32 %"add.153", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".3202" = load i32, ptr %"R23"
  %".3203" = load i1, ptr %"PT"
  %"cmp.26" = icmp ne i32 %".3202", 0
  %".3204" = and i1 %"cmp.26", %".3203"
  store i1 %".3204", ptr %"P0"
  ; FMUL R15, R14, R9
  %".3207" = load float, ptr %"R14"
  %".3208" = load float, ptr %"R9"
  %"fmul.133" = fmul float %".3207", %".3208"
  %".3209" = bitcast ptr %"R15" to ptr
  store float %"fmul.133", ptr %".3209"
  ; FFMA R15, R15, R16, R8
  %".3212" = load float, ptr %"R15"
  %".3213" = load float, ptr %"R16"
  %".3214" = load float, ptr %"R8"
  %"fmul.134" = fmul float %".3212", %".3213"
  %"fadd.117" = fadd float %"fmul.134", %".3214"
  %".3215" = bitcast ptr %"R15" to ptr
  store float %"fadd.117", ptr %".3215"
  ; FMUL R18, R18, R9
  %".3218" = load float, ptr %"R18"
  %".3219" = load float, ptr %"R9"
  %"fmul.135" = fmul float %".3218", %".3219"
  %".3220" = bitcast ptr %"R18" to ptr
  store float %"fmul.135", ptr %".3220"
  ; FFMA R15, R18, R17, R15
  %".3223" = load float, ptr %"R18"
  %".3224" = load float, ptr %"R17"
  %".3225" = load float, ptr %"R15"
  %"fmul.136" = fmul float %".3223", %".3224"
  %"fadd.118" = fadd float %"fmul.136", %".3225"
  %".3226" = bitcast ptr %"R15" to ptr
  store float %"fadd.118", ptr %".3226"
  ; FMUL R24, R24, R9
  %".3229" = load float, ptr %"R24"
  %".3230" = load float, ptr %"R9"
  %"fmul.137" = fmul float %".3229", %".3230"
  %".3231" = bitcast ptr %"R24" to ptr
  store float %"fmul.137", ptr %".3231"
  ; FFMA R15, R24, R19, R15
  %".3234" = load float, ptr %"R24"
  %".3235" = load float, ptr %"R19"
  %".3236" = load float, ptr %"R15"
  %"fmul.138" = fmul float %".3234", %".3235"
  %"fadd.119" = fadd float %"fmul.138", %".3236"
  %".3237" = bitcast ptr %"R15" to ptr
  store float %"fadd.119", ptr %".3237"
  ; FMUL R34, R34, R9
  %".3240" = load float, ptr %"R34"
  %".3241" = load float, ptr %"R9"
  %"fmul.139" = fmul float %".3240", %".3241"
  %".3242" = bitcast ptr %"R34" to ptr
  store float %"fmul.139", ptr %".3242"
  ; FFMA R8, R34, R21, R15
  %".3245" = load float, ptr %"R34"
  %".3246" = load float, ptr %"R21"
  %".3247" = load float, ptr %"R15"
  %"fmul.140" = fmul float %".3245", %".3246"
  %"fadd.120" = fadd float %"fmul.140", %".3247"
  %".3248" = bitcast ptr %"R8" to ptr
  store float %"fadd.120", ptr %".3248"
  ; @P0 BRA `(.L_x_12)
  %".3251" = load i1, ptr %"P0"
  %".3252" = icmp ne i1 %".3251", 1
  br i1 %".3252", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".3255" = load i32, ptr %"R4"
  %".3256" = load i1, ptr %"PT"
  %"cmp.27" = icmp ne i32 %".3255", 0
  %".3257" = and i1 %"cmp.27", %".3256"
  store i1 %".3257", ptr %"P0"
  ; @!P0 BRA `(.L_x_10)
  %".3260" = load i1, ptr %"P0"
  %".3261" = icmp eq i1 %".3260", 1
  br i1 %".3261", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R10, R3, R22, RZ
  %".3266" = load i32, ptr %"R3"
  %".3267" = load i32, ptr %"R22"
  %"add.154" = add i32 %".3266", %".3267"
  %"add.155" = add i32 %"add.154", 0
  store i32 %"add.155", ptr %"R10"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".3270" = load i32, ptr %"R22"
  %".3271" = load i32, ptr %"R11"
  %"mul.50" = mul i32 %".3270", %".3271"
  %"add.156" = add i32 %"mul.50", %"Arg_3"
  store i32 %"add.156", ptr %"R22"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".3274" = load i32, ptr %"R10"
  %".3275" = load i32, ptr %"R11"
  %"mul.51" = mul i32 %".3274", %".3275"
  %"add.157" = add i32 %"mul.51", %"Arg_4"
  store i32 %"add.157", ptr %"R10"
  ; LDG.E.SYS R12, [R22]
  %".3278" = load i32, ptr %"R22"
  %"zext.332" = zext i32 %".3278" to i64
  %".3279" = load i32, ptr %"R23"
  %"zext.333" = zext i32 %".3279" to i64
  %"shl.174" = shl i64 %"zext.333", 32
  %"or.161" = or i64 %"shl.174", %"zext.332"
  %".3280" = inttoptr i64 %"or.161" to ptr
  %".3281" = ptrtoint ptr %".3280" to i64
  %".3282" = add i64 %".3281", 0
  %"for_LDG.151" = inttoptr i64 %".3282" to ptr
  %".3283" = load float, ptr %"for_LDG.151"
  %".3284" = bitcast ptr %"R12" to ptr
  store float %".3283", ptr %".3284"
  ; LDG.E.SYS R14, [R10]
  %".3287" = load i32, ptr %"R10"
  %"zext.334" = zext i32 %".3287" to i64
  %".3288" = load i32, ptr %"R11"
  %"zext.335" = zext i32 %".3288" to i64
  %"shl.175" = shl i64 %"zext.335", 32
  %"or.162" = or i64 %"shl.175", %"zext.334"
  %".3289" = inttoptr i64 %"or.162" to ptr
  %".3290" = ptrtoint ptr %".3289" to i64
  %".3291" = add i64 %".3290", 0
  %"for_LDG.152" = inttoptr i64 %".3291" to ptr
  %".3292" = load float, ptr %"for_LDG.152"
  %".3293" = bitcast ptr %"R14" to ptr
  store float %".3292", ptr %".3293"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".3296" = load i32, ptr %"R4"
  %".3297" = load i1, ptr %"PT"
  %"cmp.28" = icmp ne i32 %".3296", 1
  %".3298" = and i1 %"cmp.28", %".3297"
  store i1 %".3298", ptr %"P0"
  ; FMUL R13, R12, R9
  %".3301" = load float, ptr %"R12"
  %".3302" = load float, ptr %"R9"
  %"fmul.141" = fmul float %".3301", %".3302"
  %".3303" = bitcast ptr %"R13" to ptr
  store float %"fmul.141", ptr %".3303"
  ; FFMA R8, R13, R14, R8
  %".3306" = load float, ptr %"R13"
  %".3307" = load float, ptr %"R14"
  %".3308" = load float, ptr %"R8"
  %"fmul.142" = fmul float %".3306", %".3307"
  %"fadd.121" = fadd float %"fmul.142", %".3308"
  %".3309" = bitcast ptr %"R8" to ptr
  store float %"fadd.121", ptr %".3309"
  ; @!P0 BRA `(.L_x_10)
  %".3312" = load i1, ptr %"P0"
  %".3313" = icmp eq i1 %".3312", 1
  br i1 %".3313", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".3316" = load i32, ptr %"R4"
  %".3317" = load i1, ptr %"PT"
  %"cmp.29" = icmp ne i32 %".3316", 2
  %".3318" = and i1 %"cmp.29", %".3317"
  store i1 %".3318", ptr %"P0"
  ; LDG.E.SYS R12, [R22+0x4]
  %".3321" = load i32, ptr %"R22"
  %"zext.336" = zext i32 %".3321" to i64
  %".3322" = load i32, ptr %"R23"
  %"zext.337" = zext i32 %".3322" to i64
  %"shl.176" = shl i64 %"zext.337", 32
  %"or.163" = or i64 %"shl.176", %"zext.336"
  %".3323" = inttoptr i64 %"or.163" to ptr
  %".3324" = ptrtoint ptr %".3323" to i64
  %".3325" = add i64 %".3324", 4
  %"for_LDG.153" = inttoptr i64 %".3325" to ptr
  %".3326" = load float, ptr %"for_LDG.153"
  %".3327" = bitcast ptr %"R12" to ptr
  store float %".3326", ptr %".3327"
  ; LDG.E.SYS R14, [R10+0x4]
  %".3330" = load i32, ptr %"R10"
  %"zext.338" = zext i32 %".3330" to i64
  %".3331" = load i32, ptr %"R11"
  %"zext.339" = zext i32 %".3331" to i64
  %"shl.177" = shl i64 %"zext.339", 32
  %"or.164" = or i64 %"shl.177", %"zext.338"
  %".3332" = inttoptr i64 %"or.164" to ptr
  %".3333" = ptrtoint ptr %".3332" to i64
  %".3334" = add i64 %".3333", 4
  %"for_LDG.154" = inttoptr i64 %".3334" to ptr
  %".3335" = load float, ptr %"for_LDG.154"
  %".3336" = bitcast ptr %"R14" to ptr
  store float %".3335", ptr %".3336"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".3339" = load i1, ptr %"P0"
  %".3340" = icmp ne i1 %".3339", 1
  br i1 %".3340", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  %".3343" = load i32, ptr %"R22"
  %"zext.340" = zext i32 %".3343" to i64
  %".3344" = load i32, ptr %"R23"
  %"zext.341" = zext i32 %".3344" to i64
  %"shl.178" = shl i64 %"zext.341", 32
  %"or.165" = or i64 %"shl.178", %"zext.340"
  %".3345" = inttoptr i64 %"or.165" to ptr
  %".3346" = ptrtoint ptr %".3345" to i64
  %".3347" = add i64 %".3346", 8
  %"for_LDG.155" = inttoptr i64 %".3347" to ptr
  %".3348" = load float, ptr %"for_LDG.155"
  %".3349" = bitcast ptr %"R16" to ptr
  store float %".3348", ptr %".3349"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".3354" = load i1, ptr %"P0"
  %".3355" = icmp ne i1 %".3354", 1
  br i1 %".3355", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  %".3358" = load i32, ptr %"R10"
  %"zext.342" = zext i32 %".3358" to i64
  %".3359" = load i32, ptr %"R11"
  %"zext.343" = zext i32 %".3359" to i64
  %"shl.179" = shl i64 %"zext.343", 32
  %"or.166" = or i64 %"shl.179", %"zext.342"
  %".3360" = inttoptr i64 %"or.166" to ptr
  %".3361" = ptrtoint ptr %".3360" to i64
  %".3362" = add i64 %".3361", 8
  %"for_LDG.156" = inttoptr i64 %".3362" to ptr
  %".3363" = load float, ptr %"for_LDG.156"
  %".3364" = bitcast ptr %"R15" to ptr
  store float %".3363", ptr %".3364"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %".3369" = load float, ptr %"R12"
  %".3370" = load float, ptr %"R9"
  %"fmul.143" = fmul float %".3369", %".3370"
  %".3371" = bitcast ptr %"R13" to ptr
  store float %"fmul.143", ptr %".3371"
  ; FFMA R8, R13, R14, R8
  %".3374" = load float, ptr %"R13"
  %".3375" = load float, ptr %"R14"
  %".3376" = load float, ptr %"R8"
  %"fmul.144" = fmul float %".3374", %".3375"
  %"fadd.122" = fadd float %"fmul.144", %".3376"
  %".3377" = bitcast ptr %"R8" to ptr
  store float %"fadd.122", ptr %".3377"
  ; @P0 FMUL R9, R16, R9
  %".3380" = load i1, ptr %"P0"
  %".3381" = icmp ne i1 %".3380", 1
  br i1 %".3381", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %".3384" = load float, ptr %"R16"
  %".3385" = load float, ptr %"R9"
  %"fmul.145" = fmul float %".3384", %".3385"
  %".3386" = bitcast ptr %"R9" to ptr
  store float %"fmul.145", ptr %".3386"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".3391" = load i1, ptr %"P0"
  %".3392" = icmp ne i1 %".3391", 1
  br i1 %".3392", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %".3395" = load float, ptr %"R9"
  %".3396" = load float, ptr %"R15"
  %".3397" = load float, ptr %"R8"
  %"fmul.146" = fmul float %".3395", %".3396"
  %"fadd.123" = fadd float %"fmul.146", %".3397"
  %".3398" = bitcast ptr %"R8" to ptr
  store float %"fadd.123", ptr %".3398"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  %".3403" = load i32, ptr %"R30"
  %"zext.344" = zext i32 %".3403" to i64
  %"zext.345" = zext i32 0 to i64
  %"shl.180" = shl i64 %"zext.345", 32
  %"or.167" = or i64 %"shl.180", %"zext.344"
  %".3404" = inttoptr i64 %"or.167" to ptr
  %".3405" = ptrtoint ptr %".3404" to i64
  %".3406" = add i64 %".3405", 0
  %"for_LDG.157" = inttoptr i64 %".3406" to ptr
  %".3407" = load float, ptr %"for_LDG.157"
  %".3408" = bitcast ptr %"R9" to ptr
  store float %".3407", ptr %".3408"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %".3413" = load float, ptr %"R9"
  %".3414" = load float, ptr %"R8"
  %"fadd.124" = fadd float %".3413", %".3414"
  %".3415" = bitcast ptr %"R12" to ptr
  store float %"fadd.124", ptr %".3415"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %".3418" = load float, ptr %"R12"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".3418")
  %".3419" = load i1, ptr %"PT"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".3420" = and i1 %"fcmp_unordered", %".3419"
  store i1 %".3420", ptr %"P0"
  ; @!P0 BRA `(.L_x_17)
  %".3423" = load i1, ptr %"P0"
  %".3424" = icmp eq i1 %".3423", 1
  br i1 %".3424", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %".3427" = load float, ptr %"R12"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".3427")
  %"fmul.147" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  %".3428" = bitcast ptr %"R8" to ptr
  store float %"fmul.147", ptr %".3428"
  ; MOV R9, 0x3f800000
  %".3431" = bitcast ptr %"R9" to ptr
  store float 0x41cfc00000000000, ptr %".3431"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %".3434" = load float, ptr %"R12"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".3434")
  %".3435" = load i1, ptr %"PT"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".3436" = and i1 %"fcmp_unordered.1", %".3435"
  store i1 %".3436", ptr %"P0"
  ; MUFU.EX2 R8, R8
  %".3439" = load float, ptr %"R8"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".3439")
  %".3440" = bitcast ptr %"R8" to ptr
  store float %"llvm_exp2_f32_result.2", ptr %".3440"
  ; FADD R10, R8, 1
  %".3443" = load float, ptr %"R8"
  %"fadd.125" = fadd float %".3443", 0x3ff0000000000000
  %".3444" = bitcast ptr %"R10" to ptr
  store float %"fadd.125", ptr %".3444"
  ; MUFU.RCP R10, R10
  %".3447" = load float, ptr %"R10"
  %".3448" = fdiv float 0x3ff0000000000000, %".3447"
  %".3449" = bitcast ptr %"R10" to ptr
  store float %".3448", ptr %".3449"
  ; FFMA R9, R10, -2, R9
  %".3452" = load float, ptr %"R10"
  %".3453" = load float, ptr %"R9"
  %"fmul.148" = fmul float %".3452", 0xc000000000000000
  %"fadd.126" = fadd float %"fmul.148", %".3453"
  %".3454" = bitcast ptr %"R9" to ptr
  store float %"fadd.126", ptr %".3454"
  ; FSEL R9, R9, 1, !P0
  %".3457" = load float, ptr %"R9"
  %".3458" = load i1, ptr %"P0"
  %".3459" = icmp eq i1 %".3458", 1
  %"fsel" = select  i1 %".3459", float %".3457", float 0x3ff0000000000000
  %".3460" = bitcast ptr %"R9" to ptr
  store float %"fsel", ptr %".3460"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".3463" = load float, ptr %"R9"
  %".3464" = load float, ptr %"R12"
  %".3465" = bitcast float %".3463" to i32
  %".3466" = bitcast float 0x41e0000000000000 to i32
  %".3467" = bitcast float %".3464" to i32
  %".3468" = or i32 %".3465", %".3466"
  %".3469" = or i32 %".3465", %".3467"
  %".3470" = and i32 %".3468", %".3469"
  store i32 %".3470", ptr %"R9"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  %".3475" = bitcast ptr %"R9" to ptr
  store float 0x41ce407840000000, ptr %".3475"
  ; FMUL R8, R12, R12
  %".3478" = load float, ptr %"R12"
  %".3479" = load float, ptr %"R12"
  %"fmul.149" = fmul float %".3478", %".3479"
  %".3480" = bitcast ptr %"R8" to ptr
  store float %"fmul.149", ptr %".3480"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".3483" = load float, ptr %"R8"
  %".3484" = load float, ptr %"R9"
  %"fmul.150" = fmul float %".3483", %".3484"
  %"fadd.127" = fadd float %"fmul.150", 0xbfaac795c0000000
  %".3485" = bitcast ptr %"R9" to ptr
  store float %"fadd.127", ptr %".3485"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".3488" = load float, ptr %"R8"
  %".3489" = load float, ptr %"R9"
  %"fmul.151" = fmul float %".3488", %".3489"
  %"fadd.128" = fadd float %"fmul.151", 0x3fc10b2820000000
  %".3490" = bitcast ptr %"R9" to ptr
  store float %"fadd.128", ptr %".3490"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".3493" = load float, ptr %"R8"
  %".3494" = load float, ptr %"R9"
  %"fmul.152" = fmul float %".3493", %".3494"
  %"fadd.129" = fadd float %"fmul.152", 0xbfd5553da0000000
  %".3495" = bitcast ptr %"R9" to ptr
  store float %"fadd.129", ptr %".3495"
  ; FFMA R9, R8, R9, RZ
  %".3498" = load float, ptr %"R8"
  %".3499" = load float, ptr %"R9"
  %"fmul.153" = fmul float %".3498", %".3499"
  %"fadd.130" = fadd float %"fmul.153",              0x0
  %".3500" = bitcast ptr %"R9" to ptr
  store float %"fadd.130", ptr %".3500"
  ; FFMA R9, R12, R9, R12
  %".3503" = load float, ptr %"R12"
  %".3504" = load float, ptr %"R9"
  %".3505" = load float, ptr %"R12"
  %"fmul.154" = fmul float %".3503", %".3504"
  %"fadd.131" = fadd float %"fmul.154", %".3505"
  %".3506" = bitcast ptr %"R9" to ptr
  store float %"fadd.131", ptr %".3506"
  br label %".L_x_18"
.L_x_18:
  ; BSYNC B0
  br label %".L_x_16"
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  %".3512" = load i32, ptr %"R20"
  %"add.158" = add i32 %".3512", 25165824
  %"add.159" = add i32 %"add.158", 0
  store i32 %"add.159", ptr %"R8"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".3517" = load i32, ptr %"R8"
  %".3518" = and i32 %".3517", 2139095040
  store i32 %".3518", ptr %"R8"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".3521" = load i32, ptr %"R8"
  %".3522" = load i1, ptr %"PT"
  %"cmp.30" = icmp sgt i32 %".3521", 33554431
  %".3523" = and i1 %"cmp.30", %".3522"
  store i1 %".3523", ptr %"P0"
  ; @P0 BRA `(.L_x_20)
  %".3526" = load i1, ptr %"P0"
  %".3527" = icmp ne i1 %".3526", 1
  br i1 %".3527", label %".L_x_20", label %".L_x_16_split_0x2170_CALL_0x21b0"
.L_x_16_split_0x2170_CALL_0x21b0:
  ; MOV R24, R20
  %".3530" = load float, ptr %"R20"
  %".3531" = bitcast ptr %"R24" to ptr
  store float %".3530", ptr %".3531"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".3538" = icmp ult i32 1, 32
  %"SHF_min.10" = select  i1 %".3538", i32 1, i32 32
  %".3539" = load i32, ptr %"R24"
  %"zext.346" = zext i32 0 to i64
  %"zext.347" = zext i32 %".3539" to i64
  %"zext.348" = zext i32 1 to i64
  %"shl.181" = shl i64 %"zext.346", 32
  %"or.168" = or i64 %"shl.181", %"zext.347"
  %"shl.182" = shl i64 %"or.168", %"zext.348"
  %"and.7" = and i64 %"shl.182", 4294967295
  %"trunc32.10" = trunc i64 %"and.7" to i32
  store i32 %"trunc32.10", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".3544" = icmp ult i32 24, 32
  %"SHF_min.11" = select  i1 %".3544", i32 24, i32 32
  %".3545" = load i32, ptr %"R11"
  %"zext.349" = zext i32 %".3545" to i64
  %"zext.350" = zext i32 0 to i64
  %"zext.351" = zext i32 24 to i64
  %"shl.183" = shl i64 %"zext.349", 32
  %"or.169" = or i64 %"shl.183", %"zext.350"
  %"lshr.6" = lshr i64 %"or.169", %"zext.351"
  %"lshr.7" = lshr i64 %"lshr.6", 32
  %"trunc32.11" = trunc i64 %"lshr.7" to i32
  store i32 %"trunc32.11", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".3548" = load i32, ptr %"R25"
  %".3549" = load i1, ptr %"PT"
  %"cmp.31" = icmp ne i32 %".3548", 0
  %".3550" = and i1 %"cmp.31", %".3549"
  store i1 %".3550", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".3553" = load i1, ptr %"P0"
  %".3554" = icmp ne i1 %".3553", 1
  br i1 %".3554", label %".L_x_49...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".3557" = icmp ult i32 1, 32
  %"SHF_min.12" = select  i1 %".3557", i32 1, i32 32
  %".3558" = load i32, ptr %"R24"
  %"zext.352" = zext i32 0 to i64
  %"zext.353" = zext i32 %".3558" to i64
  %"zext.354" = zext i32 1 to i64
  %"shl.184" = shl i64 %"zext.352", 32
  %"or.170" = or i64 %"shl.184", %"zext.353"
  %"shl.185" = shl i64 %"or.170", %"zext.354"
  %"and.8" = and i64 %"shl.185", 4294967295
  %"trunc32.12" = trunc i64 %"and.8" to i32
  store i32 %"trunc32.12", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".3561" = load i32, ptr %"R11"
  %".3562" = load i1, ptr %"PT"
  %"cmp.32" = icmp ne i32 %".3561", 0
  %".3563" = and i1 %"cmp.32", %".3562"
  store i1 %".3563", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3566" = load i1, ptr %"P0"
  %".3567" = icmp ne i1 %".3566", 1
  br i1 %".3567", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3570" = load float, ptr %"R24"
  %"fmul.155" = fmul float %".3570", 0x43f0000000000000
  %"fadd.132" = fadd float %"fmul.155",              0x0
  %".3571" = bitcast ptr %"R12" to ptr
  store float %"fadd.132", ptr %".3571"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3576" = load float, ptr %"R24"
  %"fmul.156" = fmul float %".3576", 0x43f0000000000000
  %"fadd.133" = fadd float %"fmul.156",              0x0
  %".3577" = bitcast ptr %"R12" to ptr
  store float %"fadd.133", ptr %".3577"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2:
  ; @!P0 MUFU.RCP R11, R24
  %".3582" = load i1, ptr %"P0"
  %".3583" = icmp eq i1 %".3582", 1
  br i1 %".3583", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".3586" = load i32, ptr %"R24"
  %"sint_to_f32" = sitofp i32 %".3586" to float
  %".3587" = fdiv float 0x3ff0000000000000, %"sint_to_f32"
  %".3588" = fptosi float %".3587" to i32
  store i32 %".3588", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2:
  ; MUFU.RCP R11, R24
  %".3593" = load i32, ptr %"R24"
  %"sint_to_f32.1" = sitofp i32 %".3593" to float
  %".3594" = fdiv float 0x3ff0000000000000, %"sint_to_f32.1"
  %".3595" = fptosi float %".3594" to i32
  store i32 %".3595", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2:
  ; @P0 MUFU.RCP R13, R12
  %".3600" = load i1, ptr %"P0"
  %".3601" = icmp ne i1 %".3600", 1
  br i1 %".3601", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".3604" = load float, ptr %"R12"
  %".3605" = fdiv float 0x3ff0000000000000, %".3604"
  %".3606" = bitcast ptr %"R13" to ptr
  store float %".3605", ptr %".3606"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2:
  ; MUFU.RCP R13, R12
  %".3611" = load float, ptr %"R12"
  %".3612" = fdiv float 0x3ff0000000000000, %".3611"
  %".3613" = bitcast ptr %"R13" to ptr
  store float %".3612", ptr %".3613"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2:
  ; @P0 FFMA R22, R12, R13, -1
  %".3618" = load i1, ptr %"P0"
  %".3619" = icmp ne i1 %".3618", 1
  br i1 %".3619", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".3622" = load float, ptr %"R12"
  %".3623" = load float, ptr %"R13"
  %"fmul.157" = fmul float %".3622", %".3623"
  %"fadd.134" = fadd float %"fmul.157", 0xbff0000000000000
  %".3624" = bitcast ptr %"R22" to ptr
  store float %"fadd.134", ptr %".3624"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2:
  ; FFMA R22, R12, R13, -1
  %".3629" = load float, ptr %"R12"
  %".3630" = load float, ptr %"R13"
  %"fmul.158" = fmul float %".3629", %".3630"
  %"fadd.135" = fadd float %"fmul.158", 0xbff0000000000000
  %".3631" = bitcast ptr %"R22" to ptr
  store float %"fadd.135", ptr %".3631"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".3636" = load i1, ptr %"P0"
  %".3637" = icmp ne i1 %".3636", 1
  br i1 %".3637", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".3640" = load float, ptr %"R22"
  %".3641" = fneg float %".3640"
  %"fadd.136" = fadd float %".3641",              0x0
  %".3642" = bitcast ptr %"R22" to ptr
  store float %"fadd.136", ptr %".3642"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2:
  ; FADD.FTZ R22, -R22, -RZ
  %".3647" = load float, ptr %"R22"
  %".3648" = fneg float %".3647"
  %"fadd.137" = fadd float %".3648",              0x0
  %".3649" = bitcast ptr %"R22" to ptr
  store float %"fadd.137", ptr %".3649"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2:
  ; @P0 FFMA R22, R13, R22, R13
  %".3654" = load i1, ptr %"P0"
  %".3655" = icmp ne i1 %".3654", 1
  br i1 %".3655", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".3658" = load float, ptr %"R13"
  %".3659" = load float, ptr %"R22"
  %".3660" = load float, ptr %"R13"
  %"fmul.159" = fmul float %".3658", %".3659"
  %"fadd.138" = fadd float %"fmul.159", %".3660"
  %".3661" = bitcast ptr %"R22" to ptr
  store float %"fadd.138", ptr %".3661"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2:
  ; FFMA R22, R13, R22, R13
  %".3666" = load float, ptr %"R13"
  %".3667" = load float, ptr %"R22"
  %".3668" = load float, ptr %"R13"
  %"fmul.160" = fmul float %".3666", %".3667"
  %"fadd.139" = fadd float %"fmul.160", %".3668"
  %".3669" = bitcast ptr %"R22" to ptr
  store float %"fadd.139", ptr %".3669"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3674" = load i1, ptr %"P0"
  %".3675" = icmp ne i1 %".3674", 1
  br i1 %".3675", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3678" = load float, ptr %"R22"
  %"fmul.161" = fmul float %".3678", 0x43f0000000000000
  %"fadd.140" = fadd float %"fmul.161",              0x0
  %".3679" = bitcast ptr %"R11" to ptr
  store float %"fadd.140", ptr %".3679"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3684" = load float, ptr %"R22"
  %"fmul.162" = fmul float %".3684", 0x43f0000000000000
  %"fadd.141" = fadd float %"fmul.162",              0x0
  %".3685" = bitcast ptr %"R11" to ptr
  store float %"fadd.141", ptr %".3685"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...2:
  ; BRA `(.L_x_50)
  br label %".L_x_50...2"
.L_x_49...2:
  ; IADD3 R34, R25, -0xfd, RZ
  %".3692" = load i32, ptr %"R25"
  %"add.160" = add i32 %".3692", -253
  %"add.161" = add i32 %"add.160", 0
  store i32 %"add.161", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".3695" = load i32, ptr %"R34"
  %".3696" = load i1, ptr %"PT"
  %"cmp.33" = icmp sgt i32 %".3695", 1
  %".3697" = and i1 %"cmp.33", %".3696"
  store i1 %".3697", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".3700" = load i1, ptr %"P0"
  %".3701" = icmp ne i1 %".3700", 1
  br i1 %".3701", label %".L_x_51...2", label %".L_x_49_split_0x4a30...2"
.L_x_49_split_0x4a30...2:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".3704" = load i32, ptr %"R24"
  %".3705" = and i32 %".3704", 8388607
  store i32 %".3705", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".3710" = load i32, ptr %"R11"
  %".3711" = or i32 %".3710", 1065353216
  store i32 %".3711", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".3714" = load i32, ptr %"R34"
  %".3715" = icmp ult i32 %".3714", 32
  %"SHF_min.13" = select  i1 %".3715", i32 %".3714", i32 32
  %".3716" = load i32, ptr %"R23"
  %".3717" = load i32, ptr %"R34"
  %"zext.355" = zext i32 0 to i64
  %"zext.356" = zext i32 %".3716" to i64
  %"zext.357" = zext i32 %".3717" to i64
  %"shl.186" = shl i64 %"zext.355", 32
  %"or.171" = or i64 %"shl.186", %"zext.356"
  %"shl.187" = shl i64 %"or.171", %"zext.357"
  %"and.9" = and i64 %"shl.187", 4294967295
  %"trunc32.13" = trunc i64 %"and.9" to i32
  store i32 %"trunc32.13", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".3720" = load float, ptr %"R11"
  %".3721" = fdiv float 0x3ff0000000000000, %".3720"
  %".3722" = bitcast ptr %"R12" to ptr
  store float %".3721", ptr %".3722"
  ; FFMA R13, R11, R12, -1
  %".3725" = load float, ptr %"R11"
  %".3726" = load float, ptr %"R12"
  %"fmul.163" = fmul float %".3725", %".3726"
  %"fadd.142" = fadd float %"fmul.163", 0xbff0000000000000
  %".3727" = bitcast ptr %"R13" to ptr
  store float %"fadd.142", ptr %".3727"
  ; FADD.FTZ R13, -R13, -RZ
  %".3730" = load float, ptr %"R13"
  %".3731" = fneg float %".3730"
  %"fadd.143" = fadd float %".3731",              0x0
  %".3732" = bitcast ptr %"R13" to ptr
  store float %"fadd.143", ptr %".3732"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".3735" = load float, ptr %"R12"
  %".3736" = load float, ptr %"R13"
  %".3737" = load float, ptr %"R12"
  %"fmul.164" = fmul float %".3735", %".3736"
  %"fadd.144" = fadd float %"fmul.164", %".3737"
  %".3738" = bitcast ptr %"R22" to ptr
  store float %"fadd.144", ptr %".3738"
  ; FFMA.RP R13, R12, R13, R12
  %".3741" = load float, ptr %"R12"
  %".3742" = load float, ptr %"R13"
  %".3743" = load float, ptr %"R12"
  %"fmul.165" = fmul float %".3741", %".3742"
  %"fadd.145" = fadd float %"fmul.165", %".3743"
  %".3744" = bitcast ptr %"R13" to ptr
  store float %"fadd.145", ptr %".3744"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".3747" = load float, ptr %"R22"
  %".3748" = bitcast float %".3747" to i32
  %".3749" = and i32 %".3748", 8388607
  store i32 %".3749", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".3752" = load float, ptr %"R22"
  %".3753" = load float, ptr %"R13"
  %".3754" = load i1, ptr %"PT"
  %"fcmp_ordered.1" = fcmp une float %".3752", %".3753"
  %".3755" = and i1 %"fcmp_ordered.1", %".3754"
  store i1 %".3755", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".3758" = load i32, ptr %"R12"
  %".3759" = or i32 %".3758", 8388608
  store i32 %".3759", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".3762" = load i1, ptr %"P0"
  %".3763" = icmp eq i1 %".3762", 1
  %"sel.2" = select  i1 %".3763", i32 0, i32 4294967295
  store i32 %"sel.2", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".3766" = load i32, ptr %"R23"
  %".3767" = load i32, ptr %"R12"
  %".3768" = and i32 %".3766", %".3767"
  store i32 %".3768", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".3771" = load i32, ptr %"R13"
  %".3772" = sub i32 0, %".3771"
  %"add.162" = add i32 %".3772", 0
  %"add.163" = add i32 %"add.162", 0
  store i32 %"add.163", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".3775" = load i32, ptr %"R34"
  %".3776" = icmp ult i32 %".3775", 32
  %"SHF_min.14" = select  i1 %".3776", i32 %".3775", i32 32
  %".3777" = load i32, ptr %"R23"
  %".3778" = load i32, ptr %"R34"
  %"zext.358" = zext i32 %".3777" to i64
  %"zext.359" = zext i32 0 to i64
  %"zext.360" = zext i32 %".3778" to i64
  %"shl.188" = shl i64 %"zext.358", 32
  %"or.172" = or i64 %"shl.188", %"zext.359"
  %"lshr.8" = lshr i64 %"or.172", %"zext.360"
  %"lshr.9" = lshr i64 %"lshr.8", 32
  %"trunc32.14" = trunc i64 %"lshr.9" to i32
  store i32 %"trunc32.14", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".3781" = load i32, ptr %"R13"
  %".3782" = load i32, ptr %"R34"
  %".3783" = load i32, ptr %"R12"
  %"LOP3_result.4" = call i32 @"custom_lop3"(i32 %".3783", i32 0, i32 %".3781", i32 %".3782")
  %".3784" = trunc i32 %"LOP3_result.4" to i1
  store i1 %".3784", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".3787" = load i32, ptr %"R23"
  %"LOP3_result.5" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".3787", i32 1)
  %".3788" = trunc i32 %"LOP3_result.5" to i1
  store i1 %".3788", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".3791" = load i32, ptr %"R23"
  %"LOP3_result.6" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".3791", i32 2)
  %".3792" = trunc i32 %"LOP3_result.6" to i1
  store i1 %".3792", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".3795" = load i1, ptr %"P0"
  %".3796" = sub i1 0, %".3795"
  %".3797" = load i1, ptr %"P1"
  %".3798" = sub i1 0, %".3797"
  %".3799" = or i1 %".3796", %".3798"
  %".3800" = and i1 %".3799", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".3802" = load i32, ptr %"R24"
  %"LOP3_result.7" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".3802", i32 8388607)
  %".3803" = trunc i32 %"LOP3_result.7" to i1
  store i1 %".3803", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".3806" = load i1, ptr %"P0"
  %".3807" = icmp eq i1 %".3806", 1
  %"sel.3" = select  i1 %".3807", i32 0, i32 1
  store i32 %"sel.3", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".3810" = load i32, ptr %"R11"
  %".3811" = sub i32 0, %".3810"
  %"add.164" = add i32 %".3811", 0
  %"add.165" = add i32 %"add.164", 0
  store i32 %"add.165", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".3814" = load i32, ptr %"R11"
  %".3815" = load i1, ptr %"PT"
  %"cmp.34" = icmp sge i32 %".3814", 0
  %".3816" = and i1 %"cmp.34", %".3815"
  store i1 %".3816", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".3819" = load i32, ptr %"R25"
  %"add.166" = add i32 %".3819", -252
  %"add.167" = add i32 %"add.166", 0
  store i32 %"add.167", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".3822" = load i32, ptr %"R11"
  %".3823" = icmp ult i32 %".3822", 32
  %"SHF_min.15" = select  i1 %".3823", i32 %".3822", i32 32
  %".3824" = load i32, ptr %"R12"
  %".3825" = load i32, ptr %"R11"
  %"zext.361" = zext i32 %".3824" to i64
  %"zext.362" = zext i32 0 to i64
  %"zext.363" = zext i32 %".3825" to i64
  %"shl.189" = shl i64 %"zext.361", 32
  %"or.173" = or i64 %"shl.189", %"zext.362"
  %"lshr.10" = lshr i64 %"or.173", %"zext.363"
  %"lshr.11" = lshr i64 %"lshr.10", 32
  %"trunc32.15" = trunc i64 %"lshr.11" to i32
  store i32 %"trunc32.15", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".3828" = load i1, ptr %"P0"
  %".3829" = icmp eq i1 %".3828", 1
  br i1 %".3829", label %".L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2"
.L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".3832" = load i32, ptr %"R11"
  %"add.168" = add i32 %".3832", 1
  %"add.169" = add i32 %"add.168", 0
  store i32 %"add.169", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2:
  ; IADD3 R11, R11, 0x1, RZ
  %".3837" = load i32, ptr %"R11"
  %"add.170" = add i32 %".3837", 1
  %"add.171" = add i32 %"add.170", 0
  store i32 %"add.171", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...2"
.L_x_49_split_0x4be0...2:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".3842" = load i1, ptr %"P1"
  %".3843" = icmp eq i1 %".3842", 1
  br i1 %".3843", label %".L_x_49_split_0x4be0...2_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...2"
.L_x_49_split_0x4be0...2_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".3846" = icmp ult i32 1, 32
  %"SHF_min.16" = select  i1 %".3846", i32 1, i32 32
  %".3847" = load i32, ptr %"R11"
  %"zext.364" = zext i32 0 to i64
  %"zext.365" = zext i32 %".3847" to i64
  %"zext.366" = zext i32 1 to i64
  %"shl.190" = shl i64 %"zext.364", 32
  %"or.174" = or i64 %"shl.190", %"zext.365"
  %"shl.191" = shl i64 %"or.174", %"zext.366"
  %"and.10" = and i64 %"shl.191", 4294967295
  %"trunc32.16" = trunc i64 %"and.10" to i32
  store i32 %"trunc32.16", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...2)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...2"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...2:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".3852" = icmp ult i32 1, 32
  %"SHF_min.17" = select  i1 %".3852", i32 1, i32 32
  %".3853" = load i32, ptr %"R11"
  %"zext.367" = zext i32 0 to i64
  %"zext.368" = zext i32 %".3853" to i64
  %"zext.369" = zext i32 1 to i64
  %"shl.192" = shl i64 %"zext.367", 32
  %"or.175" = or i64 %"shl.192", %"zext.368"
  %"shl.193" = shl i64 %"or.175", %"zext.369"
  %"and.11" = and i64 %"shl.193", 4294967295
  %"trunc32.17" = trunc i64 %"and.11" to i32
  store i32 %"trunc32.17", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...2"
.L_x_49_split_0x4bf0...2:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".3858" = load i32, ptr %"R11"
  %".3859" = load i32, ptr %"R24"
  %".3860" = or i32 %".3858", 2147483648
  %".3861" = or i32 %".3858", %".3859"
  %".3862" = and i32 %".3860", %".3861"
  store i32 %".3862", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...2"
.L_x_51...2:
  ; MUFU.RCP R11, R24
  %".3867" = load float, ptr %"R24"
  %".3868" = fdiv float 0x3ff0000000000000, %".3867"
  %".3869" = bitcast ptr %"R11" to ptr
  store float %".3868", ptr %".3869"
  br label %".L_x_50...2"
.L_x_50...2:
  ; BSYNC B1
  br label %".L_x_48...2"
.L_x_48...2:
  ; MOV R22, R11
  %".3875" = load float, ptr %"R11"
  %".3876" = bitcast ptr %"R22" to ptr
  store float %".3875", ptr %".3876"
  ; MOV R11, 0x0
  store i32 0, ptr %"R11"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.1"
.L_x_52...2:
  ; BRA `(.L_x_52)
  br label %".L_x_52...2"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.1:
  br label %".L_x_16_split_0x2170_postCALL_0x21b0"
.L_x_16_split_0x2170_postCALL_0x21b0:
  ; MOV R8, R22
  %".3886" = load float, ptr %"R22"
  %".3887" = bitcast ptr %"R8" to ptr
  store float %".3886", ptr %".3887"
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".3892" = load float, ptr %"R20"
  %".3893" = fdiv float 0x3ff0000000000000, %".3892"
  %".3894" = bitcast ptr %"R11" to ptr
  store float %".3893", ptr %".3894"
  ; FFMA R8, R20, R11, -1
  %".3897" = load float, ptr %"R20"
  %".3898" = load float, ptr %"R11"
  %"fmul.166" = fmul float %".3897", %".3898"
  %"fadd.146" = fadd float %"fmul.166", 0xbff0000000000000
  %".3899" = bitcast ptr %"R8" to ptr
  store float %"fadd.146", ptr %".3899"
  ; FADD.FTZ R8, -R8, -RZ
  %".3902" = load float, ptr %"R8"
  %".3903" = fneg float %".3902"
  %"fadd.147" = fadd float %".3903",              0x0
  %".3904" = bitcast ptr %"R8" to ptr
  store float %"fadd.147", ptr %".3904"
  ; FFMA R8, R11, R8, R11
  %".3907" = load float, ptr %"R11"
  %".3908" = load float, ptr %"R8"
  %".3909" = load float, ptr %"R11"
  %"fmul.167" = fmul float %".3907", %".3908"
  %"fadd.148" = fadd float %"fmul.167", %".3909"
  %".3910" = bitcast ptr %"R8" to ptr
  store float %"fadd.148", ptr %".3910"
  br label %".L_x_21"
.L_x_21:
  ; BSYNC B0
  br label %".L_x_19"
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  %".3916" = load i32, ptr %"R28"
  %"zext.370" = zext i32 %".3916" to i64
  %"zext.371" = zext i32 0 to i64
  %"shl.194" = shl i64 %"zext.371", 32
  %"or.176" = or i64 %"shl.194", %"zext.370"
  %".3917" = inttoptr i64 %"or.176" to ptr
  %".3918" = ptrtoint ptr %".3917" to i64
  %".3919" = add i64 %".3918", 0
  %"for_LDG.158" = inttoptr i64 %".3919" to ptr
  %".3920" = load float, ptr %"for_LDG.158"
  %".3921" = bitcast ptr %"R11" to ptr
  store float %".3920", ptr %".3921"
  ; FADD R10, -R8, 1
  %".3924" = load float, ptr %"R8"
  %".3925" = fneg float %".3924"
  %"fadd.149" = fadd float %".3925", 0x3ff0000000000000
  %".3926" = bitcast ptr %"R10" to ptr
  store float %"fadd.149", ptr %".3926"
  ; FMUL R11, R11, R8
  %".3929" = load float, ptr %"R11"
  %".3930" = load float, ptr %"R8"
  %"fmul.168" = fmul float %".3929", %".3930"
  %".3931" = bitcast ptr %"R11" to ptr
  store float %"fmul.168", ptr %".3931"
  ; FFMA R9, R10, R9, R11
  %".3934" = load float, ptr %"R10"
  %".3935" = load float, ptr %"R9"
  %".3936" = load float, ptr %"R11"
  %"fmul.169" = fmul float %".3934", %".3935"
  %"fadd.150" = fadd float %"fmul.169", %".3936"
  %".3937" = bitcast ptr %"R9" to ptr
  store float %"fadd.150", ptr %".3937"
  ; STG.E.SYS [R28], R9
  %".3940" = load float, ptr %"R9"
  %".3941" = load i32, ptr %"R28"
  %"zext.372" = zext i32 %".3941" to i64
  %"zext.373" = zext i32 0 to i64
  %"shl.195" = shl i64 %"zext.373", 32
  %"or.177" = or i64 %"shl.195", %"zext.372"
  %".3942" = inttoptr i64 %"or.177" to ptr
  %".3943" = ptrtoint ptr %".3942" to i64
  %".3944" = add i64 %".3943", 0
  %"for_STG" = inttoptr i64 %".3944" to ptr
  store float %".3940", ptr %"for_STG"
  ; @!P3 BRA `(.L_x_22)
  %".3947" = load i1, ptr %"P3"
  %".3948" = icmp eq i1 %".3947", 1
  br i1 %".3948", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".3955" = load i32, ptr %"R15"
  %".3956" = and i32 %".3955", 3
  store i32 %".3956", ptr %"R15"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".3959" = load i32, ptr %"R5"
  %".3960" = and i32 %".3959", 3
  store i32 %".3960", ptr %"R48"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".3963" = load i32, ptr %"R18"
  %".3964" = sub i32 0, %".3963"
  %"add.172" = add i32 %".3964", %"Arg_6"
  %"add.173" = add i32 %"add.172", 0
  store i32 %"add.173", ptr %"R49"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".3967" = icmp ult i32 31, 32
  %"SHF_min.18" = select  i1 %".3967", i32 31, i32 32
  %".3968" = load i32, ptr %"R5"
  %"zext.374" = zext i32 %".3968" to i64
  %"zext.375" = zext i32 0 to i64
  %"zext.376" = zext i32 31 to i64
  %"shl.196" = shl i64 %"zext.374", 32
  %"or.178" = or i64 %"shl.196", %"zext.375"
  %"ashr" = ashr i64 %"or.178", %"zext.376"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.18" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.18", ptr %"R16"
  ; MOV R17, RZ
  %".3971" = load i32, ptr %"RZ"
  store i32 %".3971", ptr %"R17"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".3974" = load i32, ptr %"R18"
  %".3975" = sub i32 0, %".3974"
  %"add.174" = add i32 %".3975", %"Arg_7"
  %"add.175" = add i32 %"add.174", 0
  store i32 %"add.175", ptr %"R18"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".3978" = load i32, ptr %"R15"
  %".3979" = sub i32 0, %".3978"
  %"add.176" = add i32 %".3979", %"Arg_6"
  %"add.177" = add i32 %"add.176", 0
  store i32 %"add.177", ptr %"R19"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".3982" = load i32, ptr %"R48"
  %".3983" = sub i32 0, %".3982"
  %"add.178" = add i32 %".3983", %"Arg_7"
  %"add.179" = add i32 %"add.178", 0
  store i32 %"add.179", ptr %"R20"
  br label %".L_x_47"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".3987" = load i32, ptr %"R49"
  %".3988" = load i1, ptr %"PT"
  %"cmp.35" = icmp sge i32 %".3987", 3
  %".3989" = and i1 %"cmp.35", %".3988"
  store i1 %".3989", ptr %"P0"
  ; MOV R13, R17
  %".3992" = load i32, ptr %"R17"
  store i32 %".3992", ptr %"R13"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R4"
  ; IADD3 R17, R17, 0x1, RZ
  %".3997" = load i32, ptr %"R17"
  %"add.180" = add i32 %".3997", 1
  %"add.181" = add i32 %"add.180", 0
  store i32 %"add.181", ptr %"R17"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".4000" = load i32, ptr %"R4"
  %".4001" = load i1, ptr %"PT"
  %"cmp.36" = icmp sge i32 %".4000", 1
  %".4002" = and i1 %"cmp.36", %".4001"
  store i1 %".4002", ptr %"P4"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".4005" = load i32, ptr %"R15"
  %".4006" = load i1, ptr %"PT"
  %"cmp.37" = icmp ne i32 %".4005", 0
  %".4007" = and i1 %"cmp.37", %".4006"
  store i1 %".4007", ptr %"P1"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".4010" = load i32, ptr %"R17"
  %".4011" = load i1, ptr %"PT"
  %"cmp.38" = icmp sge i32 %".4010", %"Arg_8"
  %".4012" = and i1 %"cmp.38", %".4011"
  store i1 %".4012", ptr %"P3"
  ; MOV R21, RZ
  %".4015" = load float, ptr %"RZ"
  %".4016" = bitcast ptr %"R21" to ptr
  store float %".4015", ptr %".4016"
  ; MOV R22, RZ
  %".4019" = load i32, ptr %"RZ"
  store i32 %".4019", ptr %"R22"
  ; MOV R56, RZ
  %".4022" = load float, ptr %"RZ"
  %".4023" = bitcast ptr %"R56" to ptr
  store float %".4022", ptr %".4023"
  ; MOV R44, RZ
  %".4026" = load float, ptr %"RZ"
  %".4027" = bitcast ptr %"R44" to ptr
  store float %".4026", ptr %".4027"
  ; @!P0 BRA `(.L_x_23)
  %".4030" = load i1, ptr %"P0"
  %".4031" = icmp eq i1 %".4030", 1
  br i1 %".4031", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R25"
  ; MOV R21, RZ
  %".4036" = load float, ptr %"RZ"
  %".4037" = bitcast ptr %"R21" to ptr
  store float %".4036", ptr %".4037"
  ; MOV R22, RZ
  %".4040" = load i32, ptr %"RZ"
  store i32 %".4040", ptr %"R22"
  ; MOV R12, R19
  %".4043" = load i32, ptr %"R19"
  store i32 %".4043", ptr %"R12"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".4046" = icmp ult i32 2, 64
  %"SHF_min.19" = select  i1 %".4046", i32 2, i32 64
  %".4047" = load i32, ptr %"R16"
  %".4048" = load i32, ptr %"R25"
  %"zext.377" = zext i32 %".4047" to i64
  %"zext.378" = zext i32 %".4048" to i64
  %"zext.379" = zext i32 2 to i64
  %"shl.197" = shl i64 %"zext.377", 32
  %"or.179" = or i64 %"shl.197", %"zext.378"
  %"shl.198" = shl i64 %"or.179", %"zext.379"
  %"lshr.12" = lshr i64 %"shl.198", 32
  %"trunc32.19" = trunc i64 %"lshr.12" to i32
  store i32 %"trunc32.19", ptr %"R23"
  br label %".L_x_24"
.L_x_24:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R6, R14, c[0x0][0x180], R22.reuse
  %".4054" = load i32, ptr %"R14"
  %".4055" = load i32, ptr %"R22"
  %"mul.52" = mul i32 %".4054", %"Arg_6"
  %"add.182" = add i32 %"mul.52", %".4055"
  store i32 %"add.182", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".4060" = load i32, ptr %"R13"
  %".4061" = load i32, ptr %"R22"
  %"mul.53" = mul i32 %".4060", %"Arg_6"
  %"add.183" = add i32 %"mul.53", %".4061"
  store i32 %"add.183", ptr %"R10"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".4064" = load i32, ptr %"R6"
  %".4065" = load i32, ptr %"R7"
  %"mul.54" = mul i32 %".4064", %".4065"
  %"add.184" = add i32 %"mul.54", %"Arg_4"
  store i32 %"add.184", ptr %"R4"
  ; LEA R6, R9, R6, 0x1
  %".4068" = load i32, ptr %"R9"
  %".4069" = load i32, ptr %"R6"
  %"shl.199" = shl i32 %".4068", 1
  %"add.185" = add i32 %"shl.199", %".4069"
  store i32 %"add.185", ptr %"R6"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".4072" = load i32, ptr %"R10"
  %".4073" = load i32, ptr %"R7"
  %"mul.55" = mul i32 %".4072", %".4073"
  %"add.186" = add i32 %"mul.55", %"Arg_2"
  store i32 %"add.186", ptr %"R10"
  ; LEA R8, P0, R25, R4, 0x2
  %".4076" = load i1, ptr %"P0"
  %".4077" = sub i1 0, %".4076"
  %".4078" = load i32, ptr %"R25"
  %".4079" = load i32, ptr %"R4"
  %".4080" = sext i1 %".4077" to i32
  %"shl.200" = shl i32 %".4080", %".4079"
  %"add.187" = add i32 %"shl.200", %".4078"
  store i32 %"add.187", ptr %"R8"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".4083" = load i32, ptr %"R6"
  %".4084" = load i32, ptr %"R7"
  %"mul.56" = mul i32 %".4083", %".4084"
  %"add.188" = add i32 %"mul.56", %"Arg_4"
  store i32 %"add.188", ptr %"R6"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".4087" = load i32, ptr %"R5"
  %".4088" = load i32, ptr %"R23"
  %".4089" = load i1, ptr %"P0"
  %".4090" = sub i1 0, %".4089"
  %".4091" = zext i1 %".4090" to i32
  %"add.189" = add i32 %".4087", %".4088"
  %"add.190" = add i32 %"add.189", 0
  %"add.191" = add i32 %"add.190", %".4091"
  store i32 %"add.191", ptr %"R9"
  ; LDG.E.SYS R35, [R4]
  %".4094" = load i32, ptr %"R4"
  %"zext.380" = zext i32 %".4094" to i64
  %".4095" = load i32, ptr %"R5"
  %"zext.381" = zext i32 %".4095" to i64
  %"shl.201" = shl i64 %"zext.381", 32
  %"or.180" = or i64 %"shl.201", %"zext.380"
  %".4096" = inttoptr i64 %"or.180" to ptr
  %".4097" = ptrtoint ptr %".4096" to i64
  %".4098" = add i64 %".4097", 0
  %"for_LDG.159" = inttoptr i64 %".4098" to ptr
  %".4099" = load float, ptr %"for_LDG.159"
  %".4100" = bitcast ptr %"R35" to ptr
  store float %".4099", ptr %".4100"
  ; LDG.E.SYS R24, [R10]
  %".4103" = load i32, ptr %"R10"
  %"zext.382" = zext i32 %".4103" to i64
  %".4104" = load i32, ptr %"R11"
  %"zext.383" = zext i32 %".4104" to i64
  %"shl.202" = shl i64 %"zext.383", 32
  %"or.181" = or i64 %"shl.202", %"zext.382"
  %".4105" = inttoptr i64 %"or.181" to ptr
  %".4106" = ptrtoint ptr %".4105" to i64
  %".4107" = add i64 %".4106", 0
  %"for_LDG.160" = inttoptr i64 %".4107" to ptr
  %".4108" = load float, ptr %"for_LDG.160"
  %".4109" = bitcast ptr %"R24" to ptr
  store float %".4108", ptr %".4109"
  ; LDG.E.SYS R37, [R8]
  %".4112" = load i32, ptr %"R8"
  %"zext.384" = zext i32 %".4112" to i64
  %".4113" = load i32, ptr %"R9"
  %"zext.385" = zext i32 %".4113" to i64
  %"shl.203" = shl i64 %"zext.385", 32
  %"or.182" = or i64 %"shl.203", %"zext.384"
  %".4114" = inttoptr i64 %"or.182" to ptr
  %".4115" = ptrtoint ptr %".4114" to i64
  %".4116" = add i64 %".4115", 0
  %"for_LDG.161" = inttoptr i64 %".4116" to ptr
  %".4117" = load float, ptr %"for_LDG.161"
  %".4118" = bitcast ptr %"R37" to ptr
  store float %".4117", ptr %".4118"
  ; LDG.E.SYS R34, [R6]
  %".4121" = load i32, ptr %"R6"
  %"zext.386" = zext i32 %".4121" to i64
  %".4122" = load i32, ptr %"R7"
  %"zext.387" = zext i32 %".4122" to i64
  %"shl.204" = shl i64 %"zext.387", 32
  %"or.183" = or i64 %"shl.204", %"zext.386"
  %".4123" = inttoptr i64 %"or.183" to ptr
  %".4124" = ptrtoint ptr %".4123" to i64
  %".4125" = add i64 %".4124", 0
  %"for_LDG.162" = inttoptr i64 %".4125" to ptr
  %".4126" = load float, ptr %"for_LDG.162"
  %".4127" = bitcast ptr %"R34" to ptr
  store float %".4126", ptr %".4127"
  ; LDG.E.SYS R36, [R4+0x4]
  %".4130" = load i32, ptr %"R4"
  %"zext.388" = zext i32 %".4130" to i64
  %".4131" = load i32, ptr %"R5"
  %"zext.389" = zext i32 %".4131" to i64
  %"shl.205" = shl i64 %"zext.389", 32
  %"or.184" = or i64 %"shl.205", %"zext.388"
  %".4132" = inttoptr i64 %"or.184" to ptr
  %".4133" = ptrtoint ptr %".4132" to i64
  %".4134" = add i64 %".4133", 4
  %"for_LDG.163" = inttoptr i64 %".4134" to ptr
  %".4135" = load float, ptr %"for_LDG.163"
  %".4136" = bitcast ptr %"R36" to ptr
  store float %".4135", ptr %".4136"
  ; LDG.E.SYS R38, [R10+0x4]
  %".4139" = load i32, ptr %"R10"
  %"zext.390" = zext i32 %".4139" to i64
  %".4140" = load i32, ptr %"R11"
  %"zext.391" = zext i32 %".4140" to i64
  %"shl.206" = shl i64 %"zext.391", 32
  %"or.185" = or i64 %"shl.206", %"zext.390"
  %".4141" = inttoptr i64 %"or.185" to ptr
  %".4142" = ptrtoint ptr %".4141" to i64
  %".4143" = add i64 %".4142", 4
  %"for_LDG.164" = inttoptr i64 %".4143" to ptr
  %".4144" = load float, ptr %"for_LDG.164"
  %".4145" = bitcast ptr %"R38" to ptr
  store float %".4144", ptr %".4145"
  ; LDG.E.SYS R39, [R8+0x4]
  %".4148" = load i32, ptr %"R8"
  %"zext.392" = zext i32 %".4148" to i64
  %".4149" = load i32, ptr %"R9"
  %"zext.393" = zext i32 %".4149" to i64
  %"shl.207" = shl i64 %"zext.393", 32
  %"or.186" = or i64 %"shl.207", %"zext.392"
  %".4150" = inttoptr i64 %"or.186" to ptr
  %".4151" = ptrtoint ptr %".4150" to i64
  %".4152" = add i64 %".4151", 4
  %"for_LDG.165" = inttoptr i64 %".4152" to ptr
  %".4153" = load float, ptr %"for_LDG.165"
  %".4154" = bitcast ptr %"R39" to ptr
  store float %".4153", ptr %".4154"
  ; LDG.E.SYS R41, [R6+0x4]
  %".4157" = load i32, ptr %"R6"
  %"zext.394" = zext i32 %".4157" to i64
  %".4158" = load i32, ptr %"R7"
  %"zext.395" = zext i32 %".4158" to i64
  %"shl.208" = shl i64 %"zext.395", 32
  %"or.187" = or i64 %"shl.208", %"zext.394"
  %".4159" = inttoptr i64 %"or.187" to ptr
  %".4160" = ptrtoint ptr %".4159" to i64
  %".4161" = add i64 %".4160", 4
  %"for_LDG.166" = inttoptr i64 %".4161" to ptr
  %".4162" = load float, ptr %"for_LDG.166"
  %".4163" = bitcast ptr %"R41" to ptr
  store float %".4162", ptr %".4163"
  ; LDG.E.SYS R42, [R10+0x8]
  %".4166" = load i32, ptr %"R10"
  %"zext.396" = zext i32 %".4166" to i64
  %".4167" = load i32, ptr %"R11"
  %"zext.397" = zext i32 %".4167" to i64
  %"shl.209" = shl i64 %"zext.397", 32
  %"or.188" = or i64 %"shl.209", %"zext.396"
  %".4168" = inttoptr i64 %"or.188" to ptr
  %".4169" = ptrtoint ptr %".4168" to i64
  %".4170" = add i64 %".4169", 8
  %"for_LDG.167" = inttoptr i64 %".4170" to ptr
  %".4171" = load float, ptr %"for_LDG.167"
  %".4172" = bitcast ptr %"R42" to ptr
  store float %".4171", ptr %".4172"
  ; LDG.E.SYS R40, [R4+0x8]
  %".4175" = load i32, ptr %"R4"
  %"zext.398" = zext i32 %".4175" to i64
  %".4176" = load i32, ptr %"R5"
  %"zext.399" = zext i32 %".4176" to i64
  %"shl.210" = shl i64 %"zext.399", 32
  %"or.189" = or i64 %"shl.210", %"zext.398"
  %".4177" = inttoptr i64 %"or.189" to ptr
  %".4178" = ptrtoint ptr %".4177" to i64
  %".4179" = add i64 %".4178", 8
  %"for_LDG.168" = inttoptr i64 %".4179" to ptr
  %".4180" = load float, ptr %"for_LDG.168"
  %".4181" = bitcast ptr %"R40" to ptr
  store float %".4180", ptr %".4181"
  ; LDG.E.SYS R43, [R8+0x8]
  %".4184" = load i32, ptr %"R8"
  %"zext.400" = zext i32 %".4184" to i64
  %".4185" = load i32, ptr %"R9"
  %"zext.401" = zext i32 %".4185" to i64
  %"shl.211" = shl i64 %"zext.401", 32
  %"or.190" = or i64 %"shl.211", %"zext.400"
  %".4186" = inttoptr i64 %"or.190" to ptr
  %".4187" = ptrtoint ptr %".4186" to i64
  %".4188" = add i64 %".4187", 8
  %"for_LDG.169" = inttoptr i64 %".4188" to ptr
  %".4189" = load float, ptr %"for_LDG.169"
  %".4190" = bitcast ptr %"R43" to ptr
  store float %".4189", ptr %".4190"
  ; LDG.E.SYS R45, [R6+0x8]
  %".4193" = load i32, ptr %"R6"
  %"zext.402" = zext i32 %".4193" to i64
  %".4194" = load i32, ptr %"R7"
  %"zext.403" = zext i32 %".4194" to i64
  %"shl.212" = shl i64 %"zext.403", 32
  %"or.191" = or i64 %"shl.212", %"zext.402"
  %".4195" = inttoptr i64 %"or.191" to ptr
  %".4196" = ptrtoint ptr %".4195" to i64
  %".4197" = add i64 %".4196", 8
  %"for_LDG.170" = inttoptr i64 %".4197" to ptr
  %".4198" = load float, ptr %"for_LDG.170"
  %".4199" = bitcast ptr %"R45" to ptr
  store float %".4198", ptr %".4199"
  ; LDG.E.SYS R47, [R10+0xc]
  %".4202" = load i32, ptr %"R10"
  %"zext.404" = zext i32 %".4202" to i64
  %".4203" = load i32, ptr %"R11"
  %"zext.405" = zext i32 %".4203" to i64
  %"shl.213" = shl i64 %"zext.405", 32
  %"or.192" = or i64 %"shl.213", %"zext.404"
  %".4204" = inttoptr i64 %"or.192" to ptr
  %".4205" = ptrtoint ptr %".4204" to i64
  %".4206" = add i64 %".4205", 12
  %"for_LDG.171" = inttoptr i64 %".4206" to ptr
  %".4207" = load float, ptr %"for_LDG.171"
  %".4208" = bitcast ptr %"R47" to ptr
  store float %".4207", ptr %".4208"
  ; LDG.E.SYS R46, [R4+0xc]
  %".4211" = load i32, ptr %"R4"
  %"zext.406" = zext i32 %".4211" to i64
  %".4212" = load i32, ptr %"R5"
  %"zext.407" = zext i32 %".4212" to i64
  %"shl.214" = shl i64 %"zext.407", 32
  %"or.193" = or i64 %"shl.214", %"zext.406"
  %".4213" = inttoptr i64 %"or.193" to ptr
  %".4214" = ptrtoint ptr %".4213" to i64
  %".4215" = add i64 %".4214", 12
  %"for_LDG.172" = inttoptr i64 %".4215" to ptr
  %".4216" = load float, ptr %"for_LDG.172"
  %".4217" = bitcast ptr %"R46" to ptr
  store float %".4216", ptr %".4217"
  ; LDG.E.SYS R50, [R8+0xc]
  %".4220" = load i32, ptr %"R8"
  %"zext.408" = zext i32 %".4220" to i64
  %".4221" = load i32, ptr %"R9"
  %"zext.409" = zext i32 %".4221" to i64
  %"shl.215" = shl i64 %"zext.409", 32
  %"or.194" = or i64 %"shl.215", %"zext.408"
  %".4222" = inttoptr i64 %"or.194" to ptr
  %".4223" = ptrtoint ptr %".4222" to i64
  %".4224" = add i64 %".4223", 12
  %"for_LDG.173" = inttoptr i64 %".4224" to ptr
  %".4225" = load float, ptr %"for_LDG.173"
  %".4226" = bitcast ptr %"R50" to ptr
  store float %".4225", ptr %".4226"
  ; LDG.E.SYS R51, [R6+0xc]
  %".4229" = load i32, ptr %"R6"
  %"zext.410" = zext i32 %".4229" to i64
  %".4230" = load i32, ptr %"R7"
  %"zext.411" = zext i32 %".4230" to i64
  %"shl.216" = shl i64 %"zext.411", 32
  %"or.195" = or i64 %"shl.216", %"zext.410"
  %".4231" = inttoptr i64 %"or.195" to ptr
  %".4232" = ptrtoint ptr %".4231" to i64
  %".4233" = add i64 %".4232", 12
  %"for_LDG.174" = inttoptr i64 %".4233" to ptr
  %".4234" = load float, ptr %"for_LDG.174"
  %".4235" = bitcast ptr %"R51" to ptr
  store float %".4234", ptr %".4235"
  ; IADD3 R12, R12, -0x4, RZ
  %".4238" = load i32, ptr %"R12"
  %"add.192" = add i32 %".4238", -4
  %"add.193" = add i32 %"add.192", 0
  store i32 %"add.193", ptr %"R12"
  ; IADD3 R22, R22, 0x4, RZ
  %".4241" = load i32, ptr %"R22"
  %"add.194" = add i32 %".4241", 4
  %"add.195" = add i32 %"add.194", 0
  store i32 %"add.195", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".4244" = load i32, ptr %"R12"
  %".4245" = load i1, ptr %"PT"
  %"cmp.39" = icmp ne i32 %".4244", 0
  %".4246" = and i1 %"cmp.39", %".4245"
  store i1 %".4246", ptr %"P0"
  ; FFMA R35, R35, R24, R44
  %".4249" = load float, ptr %"R35"
  %".4250" = load float, ptr %"R24"
  %".4251" = load float, ptr %"R44"
  %"fmul.170" = fmul float %".4249", %".4250"
  %"fadd.151" = fadd float %"fmul.170", %".4251"
  %".4252" = bitcast ptr %"R35" to ptr
  store float %"fadd.151", ptr %".4252"
  ; FFMA R37, R24.reuse, R37, R56
  %".4255" = load float, ptr %"R24"
  %".4256" = load float, ptr %"R37"
  %".4257" = load float, ptr %"R56"
  %"fmul.171" = fmul float %".4255", %".4256"
  %"fadd.152" = fadd float %"fmul.171", %".4257"
  %".4258" = bitcast ptr %"R37" to ptr
  store float %"fadd.152", ptr %".4258"
  ; FFMA R34, R24, R34, R21
  %".4261" = load float, ptr %"R24"
  %".4262" = load float, ptr %"R34"
  %".4263" = load float, ptr %"R21"
  %"fmul.172" = fmul float %".4261", %".4262"
  %"fadd.153" = fadd float %"fmul.172", %".4263"
  %".4264" = bitcast ptr %"R34" to ptr
  store float %"fadd.153", ptr %".4264"
  ; FFMA R35, R36, R38, R35
  %".4267" = load float, ptr %"R36"
  %".4268" = load float, ptr %"R38"
  %".4269" = load float, ptr %"R35"
  %"fmul.173" = fmul float %".4267", %".4268"
  %"fadd.154" = fadd float %"fmul.173", %".4269"
  %".4270" = bitcast ptr %"R35" to ptr
  store float %"fadd.154", ptr %".4270"
  ; FFMA R37, R38, R39, R37
  %".4273" = load float, ptr %"R38"
  %".4274" = load float, ptr %"R39"
  %".4275" = load float, ptr %"R37"
  %"fmul.174" = fmul float %".4273", %".4274"
  %"fadd.155" = fadd float %"fmul.174", %".4275"
  %".4276" = bitcast ptr %"R37" to ptr
  store float %"fadd.155", ptr %".4276"
  ; FFMA R34, R38, R41, R34
  %".4279" = load float, ptr %"R38"
  %".4280" = load float, ptr %"R41"
  %".4281" = load float, ptr %"R34"
  %"fmul.175" = fmul float %".4279", %".4280"
  %"fadd.156" = fadd float %"fmul.175", %".4281"
  %".4282" = bitcast ptr %"R34" to ptr
  store float %"fadd.156", ptr %".4282"
  ; FFMA R35, R40, R42, R35
  %".4285" = load float, ptr %"R40"
  %".4286" = load float, ptr %"R42"
  %".4287" = load float, ptr %"R35"
  %"fmul.176" = fmul float %".4285", %".4286"
  %"fadd.157" = fadd float %"fmul.176", %".4287"
  %".4288" = bitcast ptr %"R35" to ptr
  store float %"fadd.157", ptr %".4288"
  ; FFMA R37, R42.reuse, R43, R37
  %".4291" = load float, ptr %"R42"
  %".4292" = load float, ptr %"R43"
  %".4293" = load float, ptr %"R37"
  %"fmul.177" = fmul float %".4291", %".4292"
  %"fadd.158" = fadd float %"fmul.177", %".4293"
  %".4294" = bitcast ptr %"R37" to ptr
  store float %"fadd.158", ptr %".4294"
  ; FFMA R34, R42, R45, R34
  %".4297" = load float, ptr %"R42"
  %".4298" = load float, ptr %"R45"
  %".4299" = load float, ptr %"R34"
  %"fmul.178" = fmul float %".4297", %".4298"
  %"fadd.159" = fadd float %"fmul.178", %".4299"
  %".4300" = bitcast ptr %"R34" to ptr
  store float %"fadd.159", ptr %".4300"
  ; FFMA R44, R46, R47, R35
  %".4303" = load float, ptr %"R46"
  %".4304" = load float, ptr %"R47"
  %".4305" = load float, ptr %"R35"
  %"fmul.179" = fmul float %".4303", %".4304"
  %"fadd.160" = fadd float %"fmul.179", %".4305"
  %".4306" = bitcast ptr %"R44" to ptr
  store float %"fadd.160", ptr %".4306"
  ; FFMA R56, R47, R50, R37
  %".4309" = load float, ptr %"R47"
  %".4310" = load float, ptr %"R50"
  %".4311" = load float, ptr %"R37"
  %"fmul.180" = fmul float %".4309", %".4310"
  %"fadd.161" = fadd float %"fmul.180", %".4311"
  %".4312" = bitcast ptr %"R56" to ptr
  store float %"fadd.161", ptr %".4312"
  ; FFMA R21, R47, R51, R34
  %".4315" = load float, ptr %"R47"
  %".4316" = load float, ptr %"R51"
  %".4317" = load float, ptr %"R34"
  %"fmul.181" = fmul float %".4315", %".4316"
  %"fadd.162" = fadd float %"fmul.181", %".4317"
  %".4318" = bitcast ptr %"R21" to ptr
  store float %"fadd.162", ptr %".4318"
  ; @P0 BRA `(.L_x_24)
  %".4321" = load i1, ptr %"P0"
  %".4322" = icmp ne i1 %".4321", 1
  br i1 %".4322", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".4325" = load i1, ptr %"P1"
  %".4326" = icmp eq i1 %".4325", 1
  br i1 %".4326", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  %".4331" = load i32, ptr %"R14"
  %".4332" = load i32, ptr %"R22"
  %"mul.57" = mul i32 %".4331", %"Arg_6"
  %"add.196" = add i32 %"mul.57", %".4332"
  store i32 %"add.196", ptr %"R7"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R10"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".4337" = load i32, ptr %"R13"
  %".4338" = load i32, ptr %"R22"
  %"mul.58" = mul i32 %".4337", %"Arg_6"
  %"add.197" = add i32 %"mul.58", %".4338"
  store i32 %"add.197", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".4343" = load i32, ptr %"R7"
  %".4344" = load i32, ptr %"R11"
  %"mul.59" = mul i32 %".4343", %".4344"
  %"add.198" = add i32 %"mul.59", %"Arg_4"
  store i32 %"add.198", ptr %"R4"
  ; LEA R10, R10, R7, 0x1
  %".4347" = load i32, ptr %"R10"
  %".4348" = load i32, ptr %"R7"
  %"shl.217" = shl i32 %".4347", 1
  %"add.199" = add i32 %"shl.217", %".4348"
  store i32 %"add.199", ptr %"R10"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".4351" = load i32, ptr %"R6"
  %".4352" = load i32, ptr %"R11"
  %"mul.60" = mul i32 %".4351", %".4352"
  %"add.200" = add i32 %"mul.60", %"Arg_2"
  store i32 %"add.200", ptr %"R6"
  ; LEA R8, P0, R9, R4, 0x2
  %".4355" = load i1, ptr %"P0"
  %".4356" = sub i1 0, %".4355"
  %".4357" = load i32, ptr %"R9"
  %".4358" = load i32, ptr %"R4"
  %".4359" = sext i1 %".4356" to i32
  %"shl.218" = shl i32 %".4359", %".4358"
  %"add.201" = add i32 %"shl.218", %".4357"
  store i32 %"add.201", ptr %"R8"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".4362" = load i32, ptr %"R10"
  %".4363" = load i32, ptr %"R11"
  %"mul.61" = mul i32 %".4362", %".4363"
  %"add.202" = add i32 %"mul.61", %"Arg_4"
  store i32 %"add.202", ptr %"R10"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".4366" = load i32, ptr %"R9"
  %".4367" = load i32, ptr %"R5"
  %".4368" = load i32, ptr %"R16"
  %"shl.219" = shl i32 %".4366", %".4368"
  %"add.203" = add i32 %"shl.219", %".4367"
  store i32 %"add.203", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".4371" = load i32, ptr %"R4"
  %"zext.412" = zext i32 %".4371" to i64
  %".4372" = load i32, ptr %"R5"
  %"zext.413" = zext i32 %".4372" to i64
  %"shl.220" = shl i64 %"zext.413", 32
  %"or.196" = or i64 %"shl.220", %"zext.412"
  %".4373" = inttoptr i64 %"or.196" to ptr
  %".4374" = ptrtoint ptr %".4373" to i64
  %".4375" = add i64 %".4374", 0
  %"for_LDG.175" = inttoptr i64 %".4375" to ptr
  %".4376" = load float, ptr %"for_LDG.175"
  %".4377" = bitcast ptr %"R13" to ptr
  store float %".4376", ptr %".4377"
  ; LDG.E.SYS R12, [R6]
  %".4380" = load i32, ptr %"R6"
  %"zext.414" = zext i32 %".4380" to i64
  %".4381" = load i32, ptr %"R7"
  %"zext.415" = zext i32 %".4381" to i64
  %"shl.221" = shl i64 %"zext.415", 32
  %"or.197" = or i64 %"shl.221", %"zext.414"
  %".4382" = inttoptr i64 %"or.197" to ptr
  %".4383" = ptrtoint ptr %".4382" to i64
  %".4384" = add i64 %".4383", 0
  %"for_LDG.176" = inttoptr i64 %".4384" to ptr
  %".4385" = load float, ptr %"for_LDG.176"
  %".4386" = bitcast ptr %"R12" to ptr
  store float %".4385", ptr %".4386"
  ; LDG.E.SYS R23, [R8]
  %".4389" = load i32, ptr %"R8"
  %"zext.416" = zext i32 %".4389" to i64
  %".4390" = load i32, ptr %"R9"
  %"zext.417" = zext i32 %".4390" to i64
  %"shl.222" = shl i64 %"zext.417", 32
  %"or.198" = or i64 %"shl.222", %"zext.416"
  %".4391" = inttoptr i64 %"or.198" to ptr
  %".4392" = ptrtoint ptr %".4391" to i64
  %".4393" = add i64 %".4392", 0
  %"for_LDG.177" = inttoptr i64 %".4393" to ptr
  %".4394" = load float, ptr %"for_LDG.177"
  %".4395" = bitcast ptr %"R23" to ptr
  store float %".4394", ptr %".4395"
  ; LDG.E.SYS R22, [R10]
  %".4398" = load i32, ptr %"R10"
  %"zext.418" = zext i32 %".4398" to i64
  %".4399" = load i32, ptr %"R11"
  %"zext.419" = zext i32 %".4399" to i64
  %"shl.223" = shl i64 %"zext.419", 32
  %"or.199" = or i64 %"shl.223", %"zext.418"
  %".4400" = inttoptr i64 %"or.199" to ptr
  %".4401" = ptrtoint ptr %".4400" to i64
  %".4402" = add i64 %".4401", 0
  %"for_LDG.178" = inttoptr i64 %".4402" to ptr
  %".4403" = load float, ptr %"for_LDG.178"
  %".4404" = bitcast ptr %"R22" to ptr
  store float %".4403", ptr %".4404"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".4407" = load i32, ptr %"R15"
  %".4408" = load i1, ptr %"PT"
  %"cmp.40" = icmp ne i32 %".4407", 1
  %".4409" = and i1 %"cmp.40", %".4408"
  store i1 %".4409", ptr %"P0"
  ; FFMA R44, R13, R12, R44
  %".4412" = load float, ptr %"R13"
  %".4413" = load float, ptr %"R12"
  %".4414" = load float, ptr %"R44"
  %"fmul.182" = fmul float %".4412", %".4413"
  %"fadd.163" = fadd float %"fmul.182", %".4414"
  %".4415" = bitcast ptr %"R44" to ptr
  store float %"fadd.163", ptr %".4415"
  ; FFMA R56, R12.reuse, R23, R56
  %".4418" = load float, ptr %"R12"
  %".4419" = load float, ptr %"R23"
  %".4420" = load float, ptr %"R56"
  %"fmul.183" = fmul float %".4418", %".4419"
  %"fadd.164" = fadd float %"fmul.183", %".4420"
  %".4421" = bitcast ptr %"R56" to ptr
  store float %"fadd.164", ptr %".4421"
  ; FFMA R21, R12, R22, R21
  %".4424" = load float, ptr %"R12"
  %".4425" = load float, ptr %"R22"
  %".4426" = load float, ptr %"R21"
  %"fmul.184" = fmul float %".4424", %".4425"
  %"fadd.165" = fadd float %"fmul.184", %".4426"
  %".4427" = bitcast ptr %"R21" to ptr
  store float %"fadd.165", ptr %".4427"
  ; @!P0 BRA `(.L_x_25)
  %".4430" = load i1, ptr %"P0"
  %".4431" = icmp eq i1 %".4430", 1
  br i1 %".4431", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".4434" = load i32, ptr %"R15"
  %".4435" = load i1, ptr %"PT"
  %"cmp.41" = icmp ne i32 %".4434", 2
  %".4436" = and i1 %"cmp.41", %".4435"
  store i1 %".4436", ptr %"P0"
  ; LDG.E.SYS R13, [R4+0x4]
  %".4439" = load i32, ptr %"R4"
  %"zext.420" = zext i32 %".4439" to i64
  %".4440" = load i32, ptr %"R5"
  %"zext.421" = zext i32 %".4440" to i64
  %"shl.224" = shl i64 %"zext.421", 32
  %"or.200" = or i64 %"shl.224", %"zext.420"
  %".4441" = inttoptr i64 %"or.200" to ptr
  %".4442" = ptrtoint ptr %".4441" to i64
  %".4443" = add i64 %".4442", 4
  %"for_LDG.179" = inttoptr i64 %".4443" to ptr
  %".4444" = load float, ptr %"for_LDG.179"
  %".4445" = bitcast ptr %"R13" to ptr
  store float %".4444", ptr %".4445"
  ; LDG.E.SYS R12, [R6+0x4]
  %".4448" = load i32, ptr %"R6"
  %"zext.422" = zext i32 %".4448" to i64
  %".4449" = load i32, ptr %"R7"
  %"zext.423" = zext i32 %".4449" to i64
  %"shl.225" = shl i64 %"zext.423", 32
  %"or.201" = or i64 %"shl.225", %"zext.422"
  %".4450" = inttoptr i64 %"or.201" to ptr
  %".4451" = ptrtoint ptr %".4450" to i64
  %".4452" = add i64 %".4451", 4
  %"for_LDG.180" = inttoptr i64 %".4452" to ptr
  %".4453" = load float, ptr %"for_LDG.180"
  %".4454" = bitcast ptr %"R12" to ptr
  store float %".4453", ptr %".4454"
  ; LDG.E.SYS R23, [R8+0x4]
  %".4457" = load i32, ptr %"R8"
  %"zext.424" = zext i32 %".4457" to i64
  %".4458" = load i32, ptr %"R9"
  %"zext.425" = zext i32 %".4458" to i64
  %"shl.226" = shl i64 %"zext.425", 32
  %"or.202" = or i64 %"shl.226", %"zext.424"
  %".4459" = inttoptr i64 %"or.202" to ptr
  %".4460" = ptrtoint ptr %".4459" to i64
  %".4461" = add i64 %".4460", 4
  %"for_LDG.181" = inttoptr i64 %".4461" to ptr
  %".4462" = load float, ptr %"for_LDG.181"
  %".4463" = bitcast ptr %"R23" to ptr
  store float %".4462", ptr %".4463"
  ; LDG.E.SYS R22, [R10+0x4]
  %".4466" = load i32, ptr %"R10"
  %"zext.426" = zext i32 %".4466" to i64
  %".4467" = load i32, ptr %"R11"
  %"zext.427" = zext i32 %".4467" to i64
  %"shl.227" = shl i64 %"zext.427", 32
  %"or.203" = or i64 %"shl.227", %"zext.426"
  %".4468" = inttoptr i64 %"or.203" to ptr
  %".4469" = ptrtoint ptr %".4468" to i64
  %".4470" = add i64 %".4469", 4
  %"for_LDG.182" = inttoptr i64 %".4470" to ptr
  %".4471" = load float, ptr %"for_LDG.182"
  %".4472" = bitcast ptr %"R22" to ptr
  store float %".4471", ptr %".4472"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".4475" = load i1, ptr %"P0"
  %".4476" = icmp ne i1 %".4475", 1
  br i1 %".4476", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  %".4479" = load i32, ptr %"R4"
  %"zext.428" = zext i32 %".4479" to i64
  %".4480" = load i32, ptr %"R5"
  %"zext.429" = zext i32 %".4480" to i64
  %"shl.228" = shl i64 %"zext.429", 32
  %"or.204" = or i64 %"shl.228", %"zext.428"
  %".4481" = inttoptr i64 %"or.204" to ptr
  %".4482" = ptrtoint ptr %".4481" to i64
  %".4483" = add i64 %".4482", 8
  %"for_LDG.183" = inttoptr i64 %".4483" to ptr
  %".4484" = load float, ptr %"for_LDG.183"
  %".4485" = bitcast ptr %"R25" to ptr
  store float %".4484", ptr %".4485"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".4490" = load i1, ptr %"P0"
  %".4491" = icmp ne i1 %".4490", 1
  br i1 %".4491", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  %".4494" = load i32, ptr %"R6"
  %"zext.430" = zext i32 %".4494" to i64
  %".4495" = load i32, ptr %"R7"
  %"zext.431" = zext i32 %".4495" to i64
  %"shl.229" = shl i64 %"zext.431", 32
  %"or.205" = or i64 %"shl.229", %"zext.430"
  %".4496" = inttoptr i64 %"or.205" to ptr
  %".4497" = ptrtoint ptr %".4496" to i64
  %".4498" = add i64 %".4497", 8
  %"for_LDG.184" = inttoptr i64 %".4498" to ptr
  %".4499" = load float, ptr %"for_LDG.184"
  %".4500" = bitcast ptr %"R24" to ptr
  store float %".4499", ptr %".4500"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".4505" = load i1, ptr %"P0"
  %".4506" = icmp ne i1 %".4505", 1
  br i1 %".4506", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  %".4509" = load i32, ptr %"R8"
  %"zext.432" = zext i32 %".4509" to i64
  %".4510" = load i32, ptr %"R9"
  %"zext.433" = zext i32 %".4510" to i64
  %"shl.230" = shl i64 %"zext.433", 32
  %"or.206" = or i64 %"shl.230", %"zext.432"
  %".4511" = inttoptr i64 %"or.206" to ptr
  %".4512" = ptrtoint ptr %".4511" to i64
  %".4513" = add i64 %".4512", 8
  %"for_LDG.185" = inttoptr i64 %".4513" to ptr
  %".4514" = load float, ptr %"for_LDG.185"
  %".4515" = bitcast ptr %"R35" to ptr
  store float %".4514", ptr %".4515"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".4520" = load i1, ptr %"P0"
  %".4521" = icmp ne i1 %".4520", 1
  br i1 %".4521", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  %".4524" = load i32, ptr %"R10"
  %"zext.434" = zext i32 %".4524" to i64
  %".4525" = load i32, ptr %"R11"
  %"zext.435" = zext i32 %".4525" to i64
  %"shl.231" = shl i64 %"zext.435", 32
  %"or.207" = or i64 %"shl.231", %"zext.434"
  %".4526" = inttoptr i64 %"or.207" to ptr
  %".4527" = ptrtoint ptr %".4526" to i64
  %".4528" = add i64 %".4527", 8
  %"for_LDG.186" = inttoptr i64 %".4528" to ptr
  %".4529" = load float, ptr %"for_LDG.186"
  %".4530" = bitcast ptr %"R34" to ptr
  store float %".4529", ptr %".4530"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".4535" = load float, ptr %"R13"
  %".4536" = load float, ptr %"R12"
  %".4537" = load float, ptr %"R44"
  %"fmul.185" = fmul float %".4535", %".4536"
  %"fadd.166" = fadd float %"fmul.185", %".4537"
  %".4538" = bitcast ptr %"R44" to ptr
  store float %"fadd.166", ptr %".4538"
  ; FFMA R56, R12.reuse, R23, R56
  %".4541" = load float, ptr %"R12"
  %".4542" = load float, ptr %"R23"
  %".4543" = load float, ptr %"R56"
  %"fmul.186" = fmul float %".4541", %".4542"
  %"fadd.167" = fadd float %"fmul.186", %".4543"
  %".4544" = bitcast ptr %"R56" to ptr
  store float %"fadd.167", ptr %".4544"
  ; FFMA R21, R12, R22, R21
  %".4547" = load float, ptr %"R12"
  %".4548" = load float, ptr %"R22"
  %".4549" = load float, ptr %"R21"
  %"fmul.187" = fmul float %".4547", %".4548"
  %"fadd.168" = fadd float %"fmul.187", %".4549"
  %".4550" = bitcast ptr %"R21" to ptr
  store float %"fadd.168", ptr %".4550"
  ; @P0 FFMA R44, R25, R24, R44
  %".4553" = load i1, ptr %"P0"
  %".4554" = icmp ne i1 %".4553", 1
  br i1 %".4554", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".4557" = load float, ptr %"R25"
  %".4558" = load float, ptr %"R24"
  %".4559" = load float, ptr %"R44"
  %"fmul.188" = fmul float %".4557", %".4558"
  %"fadd.169" = fadd float %"fmul.188", %".4559"
  %".4560" = bitcast ptr %"R44" to ptr
  store float %"fadd.169", ptr %".4560"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".4565" = load i1, ptr %"P0"
  %".4566" = icmp ne i1 %".4565", 1
  br i1 %".4566", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".4569" = load float, ptr %"R24"
  %".4570" = load float, ptr %"R35"
  %".4571" = load float, ptr %"R56"
  %"fmul.189" = fmul float %".4569", %".4570"
  %"fadd.170" = fadd float %"fmul.189", %".4571"
  %".4572" = bitcast ptr %"R56" to ptr
  store float %"fadd.170", ptr %".4572"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".4577" = load i1, ptr %"P0"
  %".4578" = icmp ne i1 %".4577", 1
  br i1 %".4578", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".4581" = load float, ptr %"R24"
  %".4582" = load float, ptr %"R34"
  %".4583" = load float, ptr %"R21"
  %"fmul.190" = fmul float %".4581", %".4582"
  %"fadd.171" = fadd float %"fmul.190", %".4583"
  %".4584" = bitcast ptr %"R21" to ptr
  store float %"fadd.171", ptr %".4584"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".4589" = load i1, ptr %"P4"
  %".4590" = icmp eq i1 %".4589", 1
  br i1 %".4590", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".4593" = load i32, ptr %"R18"
  %".4594" = load i1, ptr %"PT"
  %"cmp.42" = icmp sge i32 %".4593", 3
  %".4595" = and i1 %"cmp.42", %".4594"
  store i1 %".4595", ptr %"P0"
  ; MOV R23, RZ
  %".4598" = load i32, ptr %"RZ"
  store i32 %".4598", ptr %"R23"
  ; @!P0 BRA `(.L_x_27)
  %".4601" = load i1, ptr %"P0"
  %".4602" = icmp eq i1 %".4601", 1
  br i1 %".4602", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".4605" = load i32, ptr %"R20"
  %".4606" = load i1, ptr %"PT"
  %"cmp.43" = icmp sgt i32 %".4605", 0
  %".4607" = and i1 %"cmp.43", %".4606"
  store i1 %".4607", ptr %"P0"
  ; MOV R23, RZ
  %".4610" = load i32, ptr %"RZ"
  store i32 %".4610", ptr %"R23"
  ; MOV R22, R20
  %".4613" = load i32, ptr %"R20"
  store i32 %".4613", ptr %"R22"
  ; @!P0 BRA `(.L_x_28)
  %".4616" = load i1, ptr %"P0"
  %".4617" = icmp eq i1 %".4616", 1
  br i1 %".4617", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".4620" = load i32, ptr %"R22"
  %".4621" = load i1, ptr %"PT"
  %"cmp.44" = icmp sgt i32 %".4620", 12
  %".4622" = and i1 %"cmp.44", %".4621"
  store i1 %".4622", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".4625" = and i1 1, 1
  %".4626" = or i1 %".4625", 1
  ; @!P1 BRA `(.L_x_29)
  %".4628" = load i1, ptr %"P1"
  %".4629" = icmp eq i1 %".4628", 1
  br i1 %".4629", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4632" = xor i1 1, 1
  %".4633" = and i1 %".4632", 1
  %".4634" = and i1 %".4633", 1
  br label %".L_x_30"
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".4637" = load i32, ptr %"R0"
  %".4638" = load i32, ptr %"R23"
  %"add.204" = add i32 %".4637", %".4638"
  %"add.205" = add i32 %"add.204", 0
  store i32 %"add.205", ptr %"R25"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".4643" = load i32, ptr %"R2"
  %".4644" = load i32, ptr %"R25"
  %"mul.62" = mul i32 %".4643", 3
  %"add.206" = add i32 %"mul.62", %".4644"
  store i32 %"add.206", ptr %"R35"
  ; LEA R25, R2, R25, 0x2
  %".4647" = load i32, ptr %"R2"
  %".4648" = load i32, ptr %"R25"
  %"shl.232" = shl i32 %".4647", 2
  %"add.207" = add i32 %"shl.232", %".4648"
  store i32 %"add.207", ptr %"R25"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".4651" = load i32, ptr %"R23"
  %".4652" = load i32, ptr %"R24"
  %"mul.63" = mul i32 %".4651", %".4652"
  %"add.208" = add i32 %"mul.63", %"Arg_3"
  store i32 %"add.208", ptr %"R36"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".4655" = load i32, ptr %"R35"
  %".4656" = load i32, ptr %"R24"
  %"mul.64" = mul i32 %".4655", %".4656"
  %"add.209" = add i32 %"mul.64", %"Arg_4"
  store i32 %"add.209", ptr %"R8"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".4659" = load i32, ptr %"R25"
  %".4660" = load i32, ptr %"R24"
  %"mul.65" = mul i32 %".4659", %".4660"
  %"add.210" = add i32 %"mul.65", %"Arg_4"
  store i32 %"add.210", ptr %"R12"
  ; LDG.E.SYS R39, [R36]
  %".4663" = load i32, ptr %"R36"
  %"zext.436" = zext i32 %".4663" to i64
  %".4664" = load i32, ptr %"R37"
  %"zext.437" = zext i32 %".4664" to i64
  %"shl.233" = shl i64 %"zext.437", 32
  %"or.208" = or i64 %"shl.233", %"zext.436"
  %".4665" = inttoptr i64 %"or.208" to ptr
  %".4666" = ptrtoint ptr %".4665" to i64
  %".4667" = add i64 %".4666", 0
  %"for_LDG.187" = inttoptr i64 %".4667" to ptr
  %".4668" = load float, ptr %"for_LDG.187"
  %".4669" = bitcast ptr %"R39" to ptr
  store float %".4668", ptr %".4669"
  ; LDG.E.SYS R41, [R8]
  %".4672" = load i32, ptr %"R8"
  %"zext.438" = zext i32 %".4672" to i64
  %".4673" = load i32, ptr %"R9"
  %"zext.439" = zext i32 %".4673" to i64
  %"shl.234" = shl i64 %"zext.439", 32
  %"or.209" = or i64 %"shl.234", %"zext.438"
  %".4674" = inttoptr i64 %"or.209" to ptr
  %".4675" = ptrtoint ptr %".4674" to i64
  %".4676" = add i64 %".4675", 0
  %"for_LDG.188" = inttoptr i64 %".4676" to ptr
  %".4677" = load float, ptr %"for_LDG.188"
  %".4678" = bitcast ptr %"R41" to ptr
  store float %".4677", ptr %".4678"
  ; LDG.E.SYS R40, [R12]
  %".4681" = load i32, ptr %"R12"
  %"zext.440" = zext i32 %".4681" to i64
  %".4682" = load i32, ptr %"R13"
  %"zext.441" = zext i32 %".4682" to i64
  %"shl.235" = shl i64 %"zext.441", 32
  %"or.210" = or i64 %"shl.235", %"zext.440"
  %".4683" = inttoptr i64 %"or.210" to ptr
  %".4684" = ptrtoint ptr %".4683" to i64
  %".4685" = add i64 %".4684", 0
  %"for_LDG.189" = inttoptr i64 %".4685" to ptr
  %".4686" = load float, ptr %"for_LDG.189"
  %".4687" = bitcast ptr %"R40" to ptr
  store float %".4686", ptr %".4687"
  ; LDG.E.SYS R52, [R36+0x4]
  %".4690" = load i32, ptr %"R36"
  %"zext.442" = zext i32 %".4690" to i64
  %".4691" = load i32, ptr %"R37"
  %"zext.443" = zext i32 %".4691" to i64
  %"shl.236" = shl i64 %"zext.443", 32
  %"or.211" = or i64 %"shl.236", %"zext.442"
  %".4692" = inttoptr i64 %"or.211" to ptr
  %".4693" = ptrtoint ptr %".4692" to i64
  %".4694" = add i64 %".4693", 4
  %"for_LDG.190" = inttoptr i64 %".4694" to ptr
  %".4695" = load float, ptr %"for_LDG.190"
  %".4696" = bitcast ptr %"R52" to ptr
  store float %".4695", ptr %".4696"
  ; LDG.E.SYS R53, [R8+0x4]
  %".4699" = load i32, ptr %"R8"
  %"zext.444" = zext i32 %".4699" to i64
  %".4700" = load i32, ptr %"R9"
  %"zext.445" = zext i32 %".4700" to i64
  %"shl.237" = shl i64 %"zext.445", 32
  %"or.212" = or i64 %"shl.237", %"zext.444"
  %".4701" = inttoptr i64 %"or.212" to ptr
  %".4702" = ptrtoint ptr %".4701" to i64
  %".4703" = add i64 %".4702", 4
  %"for_LDG.191" = inttoptr i64 %".4703" to ptr
  %".4704" = load float, ptr %"for_LDG.191"
  %".4705" = bitcast ptr %"R53" to ptr
  store float %".4704", ptr %".4705"
  ; LDG.E.SYS R55, [R12+0x4]
  %".4708" = load i32, ptr %"R12"
  %"zext.446" = zext i32 %".4708" to i64
  %".4709" = load i32, ptr %"R13"
  %"zext.447" = zext i32 %".4709" to i64
  %"shl.238" = shl i64 %"zext.447", 32
  %"or.213" = or i64 %"shl.238", %"zext.446"
  %".4710" = inttoptr i64 %"or.213" to ptr
  %".4711" = ptrtoint ptr %".4710" to i64
  %".4712" = add i64 %".4711", 4
  %"for_LDG.192" = inttoptr i64 %".4712" to ptr
  %".4713" = load float, ptr %"for_LDG.192"
  %".4714" = bitcast ptr %"R55" to ptr
  store float %".4713", ptr %".4714"
  ; IADD3 R11, R23, 0x4, RZ
  %".4717" = load i32, ptr %"R23"
  %"add.211" = add i32 %".4717", 4
  %"add.212" = add i32 %"add.211", 0
  store i32 %"add.212", ptr %"R11"
  ; LDG.E.SYS R50, [R36+0x8]
  %".4720" = load i32, ptr %"R36"
  %"zext.448" = zext i32 %".4720" to i64
  %".4721" = load i32, ptr %"R37"
  %"zext.449" = zext i32 %".4721" to i64
  %"shl.239" = shl i64 %"zext.449", 32
  %"or.214" = or i64 %"shl.239", %"zext.448"
  %".4722" = inttoptr i64 %"or.214" to ptr
  %".4723" = ptrtoint ptr %".4722" to i64
  %".4724" = add i64 %".4723", 8
  %"for_LDG.193" = inttoptr i64 %".4724" to ptr
  %".4725" = load float, ptr %"for_LDG.193"
  %".4726" = bitcast ptr %"R50" to ptr
  store float %".4725", ptr %".4726"
  ; IADD3 R7, R35, 0x4, RZ
  %".4729" = load i32, ptr %"R35"
  %"add.213" = add i32 %".4729", 4
  %"add.214" = add i32 %"add.213", 0
  store i32 %"add.214", ptr %"R7"
  ; LDG.E.SYS R43, [R8+0x8]
  %".4732" = load i32, ptr %"R8"
  %"zext.450" = zext i32 %".4732" to i64
  %".4733" = load i32, ptr %"R9"
  %"zext.451" = zext i32 %".4733" to i64
  %"shl.240" = shl i64 %"zext.451", 32
  %"or.215" = or i64 %"shl.240", %"zext.450"
  %".4734" = inttoptr i64 %"or.215" to ptr
  %".4735" = ptrtoint ptr %".4734" to i64
  %".4736" = add i64 %".4735", 8
  %"for_LDG.194" = inttoptr i64 %".4736" to ptr
  %".4737" = load float, ptr %"for_LDG.194"
  %".4738" = bitcast ptr %"R43" to ptr
  store float %".4737", ptr %".4738"
  ; IADD3 R5, R25, 0x4, RZ
  %".4741" = load i32, ptr %"R25"
  %"add.215" = add i32 %".4741", 4
  %"add.216" = add i32 %"add.215", 0
  store i32 %"add.216", ptr %"R5"
  ; LDG.E.SYS R51, [R12+0x8]
  %".4744" = load i32, ptr %"R12"
  %"zext.452" = zext i32 %".4744" to i64
  %".4745" = load i32, ptr %"R13"
  %"zext.453" = zext i32 %".4745" to i64
  %"shl.241" = shl i64 %"zext.453", 32
  %"or.216" = or i64 %"shl.241", %"zext.452"
  %".4746" = inttoptr i64 %"or.216" to ptr
  %".4747" = ptrtoint ptr %".4746" to i64
  %".4748" = add i64 %".4747", 8
  %"for_LDG.195" = inttoptr i64 %".4748" to ptr
  %".4749" = load float, ptr %"for_LDG.195"
  %".4750" = bitcast ptr %"R51" to ptr
  store float %".4749", ptr %".4750"
  ; LDG.E.SYS R47, [R36+0xc]
  %".4753" = load i32, ptr %"R36"
  %"zext.454" = zext i32 %".4753" to i64
  %".4754" = load i32, ptr %"R37"
  %"zext.455" = zext i32 %".4754" to i64
  %"shl.242" = shl i64 %"zext.455", 32
  %"or.217" = or i64 %"shl.242", %"zext.454"
  %".4755" = inttoptr i64 %"or.217" to ptr
  %".4756" = ptrtoint ptr %".4755" to i64
  %".4757" = add i64 %".4756", 12
  %"for_LDG.196" = inttoptr i64 %".4757" to ptr
  %".4758" = load float, ptr %"for_LDG.196"
  %".4759" = bitcast ptr %"R47" to ptr
  store float %".4758", ptr %".4759"
  ; LDG.E.SYS R54, [R8+0xc]
  %".4762" = load i32, ptr %"R8"
  %"zext.456" = zext i32 %".4762" to i64
  %".4763" = load i32, ptr %"R9"
  %"zext.457" = zext i32 %".4763" to i64
  %"shl.243" = shl i64 %"zext.457", 32
  %"or.218" = or i64 %"shl.243", %"zext.456"
  %".4764" = inttoptr i64 %"or.218" to ptr
  %".4765" = ptrtoint ptr %".4764" to i64
  %".4766" = add i64 %".4765", 12
  %"for_LDG.197" = inttoptr i64 %".4766" to ptr
  %".4767" = load float, ptr %"for_LDG.197"
  %".4768" = bitcast ptr %"R54" to ptr
  store float %".4767", ptr %".4768"
  ; LDG.E.SYS R58, [R12+0xc]
  %".4771" = load i32, ptr %"R12"
  %"zext.458" = zext i32 %".4771" to i64
  %".4772" = load i32, ptr %"R13"
  %"zext.459" = zext i32 %".4772" to i64
  %"shl.244" = shl i64 %"zext.459", 32
  %"or.219" = or i64 %"shl.244", %"zext.458"
  %".4773" = inttoptr i64 %"or.219" to ptr
  %".4774" = ptrtoint ptr %".4773" to i64
  %".4775" = add i64 %".4774", 12
  %"for_LDG.198" = inttoptr i64 %".4775" to ptr
  %".4776" = load float, ptr %"for_LDG.198"
  %".4777" = bitcast ptr %"R58" to ptr
  store float %".4776", ptr %".4777"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".4780" = load i32, ptr %"R11"
  %".4781" = load i32, ptr %"R24"
  %"mul.66" = mul i32 %".4780", %".4781"
  %"add.217" = add i32 %"mul.66", %"Arg_3"
  store i32 %"add.217", ptr %"R10"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".4784" = load i32, ptr %"R7"
  %".4785" = load i32, ptr %"R24"
  %"mul.67" = mul i32 %".4784", %".4785"
  %"add.218" = add i32 %"mul.67", %"Arg_4"
  store i32 %"add.218", ptr %"R6"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".4788" = load i32, ptr %"R5"
  %".4789" = load i32, ptr %"R24"
  %"mul.68" = mul i32 %".4788", %".4789"
  %"add.219" = add i32 %"mul.68", %"Arg_4"
  store i32 %"add.219", ptr %"R4"
  ; LDG.E.SYS R46, [R10]
  %".4792" = load i32, ptr %"R10"
  %"zext.460" = zext i32 %".4792" to i64
  %".4793" = load i32, ptr %"R11"
  %"zext.461" = zext i32 %".4793" to i64
  %"shl.245" = shl i64 %"zext.461", 32
  %"or.220" = or i64 %"shl.245", %"zext.460"
  %".4794" = inttoptr i64 %"or.220" to ptr
  %".4795" = ptrtoint ptr %".4794" to i64
  %".4796" = add i64 %".4795", 0
  %"for_LDG.199" = inttoptr i64 %".4796" to ptr
  %".4797" = load float, ptr %"for_LDG.199"
  %".4798" = bitcast ptr %"R46" to ptr
  store float %".4797", ptr %".4798"
  ; LDG.E.SYS R42, [R6]
  %".4801" = load i32, ptr %"R6"
  %"zext.462" = zext i32 %".4801" to i64
  %".4802" = load i32, ptr %"R7"
  %"zext.463" = zext i32 %".4802" to i64
  %"shl.246" = shl i64 %"zext.463", 32
  %"or.221" = or i64 %"shl.246", %"zext.462"
  %".4803" = inttoptr i64 %"or.221" to ptr
  %".4804" = ptrtoint ptr %".4803" to i64
  %".4805" = add i64 %".4804", 0
  %"for_LDG.200" = inttoptr i64 %".4805" to ptr
  %".4806" = load float, ptr %"for_LDG.200"
  %".4807" = bitcast ptr %"R42" to ptr
  store float %".4806", ptr %".4807"
  ; LDG.E.SYS R45, [R4]
  %".4810" = load i32, ptr %"R4"
  %"zext.464" = zext i32 %".4810" to i64
  %".4811" = load i32, ptr %"R5"
  %"zext.465" = zext i32 %".4811" to i64
  %"shl.247" = shl i64 %"zext.465", 32
  %"or.222" = or i64 %"shl.247", %"zext.464"
  %".4812" = inttoptr i64 %"or.222" to ptr
  %".4813" = ptrtoint ptr %".4812" to i64
  %".4814" = add i64 %".4813", 0
  %"for_LDG.201" = inttoptr i64 %".4814" to ptr
  %".4815" = load float, ptr %"for_LDG.201"
  %".4816" = bitcast ptr %"R45" to ptr
  store float %".4815", ptr %".4816"
  ; LDG.E.SYS R34, [R10+0x4]
  %".4819" = load i32, ptr %"R10"
  %"zext.466" = zext i32 %".4819" to i64
  %".4820" = load i32, ptr %"R11"
  %"zext.467" = zext i32 %".4820" to i64
  %"shl.248" = shl i64 %"zext.467", 32
  %"or.223" = or i64 %"shl.248", %"zext.466"
  %".4821" = inttoptr i64 %"or.223" to ptr
  %".4822" = ptrtoint ptr %".4821" to i64
  %".4823" = add i64 %".4822", 4
  %"for_LDG.202" = inttoptr i64 %".4823" to ptr
  %".4824" = load float, ptr %"for_LDG.202"
  %".4825" = bitcast ptr %"R34" to ptr
  store float %".4824", ptr %".4825"
  ; LDG.E.SYS R37, [R6+0x4]
  %".4828" = load i32, ptr %"R6"
  %"zext.468" = zext i32 %".4828" to i64
  %".4829" = load i32, ptr %"R7"
  %"zext.469" = zext i32 %".4829" to i64
  %"shl.249" = shl i64 %"zext.469", 32
  %"or.224" = or i64 %"shl.249", %"zext.468"
  %".4830" = inttoptr i64 %"or.224" to ptr
  %".4831" = ptrtoint ptr %".4830" to i64
  %".4832" = add i64 %".4831", 4
  %"for_LDG.203" = inttoptr i64 %".4832" to ptr
  %".4833" = load float, ptr %"for_LDG.203"
  %".4834" = bitcast ptr %"R37" to ptr
  store float %".4833", ptr %".4834"
  ; IADD3 R9, R23, 0x8, RZ
  %".4837" = load i32, ptr %"R23"
  %"add.220" = add i32 %".4837", 8
  %"add.221" = add i32 %"add.220", 0
  store i32 %"add.221", ptr %"R9"
  ; LDG.E.SYS R36, [R10+0x8]
  %".4840" = load i32, ptr %"R10"
  %"zext.470" = zext i32 %".4840" to i64
  %".4841" = load i32, ptr %"R11"
  %"zext.471" = zext i32 %".4841" to i64
  %"shl.250" = shl i64 %"zext.471", 32
  %"or.225" = or i64 %"shl.250", %"zext.470"
  %".4842" = inttoptr i64 %"or.225" to ptr
  %".4843" = ptrtoint ptr %".4842" to i64
  %".4844" = add i64 %".4843", 8
  %"for_LDG.204" = inttoptr i64 %".4844" to ptr
  %".4845" = load float, ptr %"for_LDG.204"
  %".4846" = bitcast ptr %"R36" to ptr
  store float %".4845", ptr %".4846"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".4849" = load i32, ptr %"R9"
  %".4850" = load i32, ptr %"R24"
  %"mul.69" = mul i32 %".4849", %".4850"
  %"add.222" = add i32 %"mul.69", %"Arg_3"
  store i32 %"add.222", ptr %"R8"
  ; LDG.E.SYS R38, [R10+0xc]
  %".4853" = load i32, ptr %"R10"
  %"zext.472" = zext i32 %".4853" to i64
  %".4854" = load i32, ptr %"R11"
  %"zext.473" = zext i32 %".4854" to i64
  %"shl.251" = shl i64 %"zext.473", 32
  %"or.226" = or i64 %"shl.251", %"zext.472"
  %".4855" = inttoptr i64 %"or.226" to ptr
  %".4856" = ptrtoint ptr %".4855" to i64
  %".4857" = add i64 %".4856", 12
  %"for_LDG.205" = inttoptr i64 %".4857" to ptr
  %".4858" = load float, ptr %"for_LDG.205"
  %".4859" = bitcast ptr %"R38" to ptr
  store float %".4858", ptr %".4859"
  ; IADD3 R13, R23, 0xc, RZ
  %".4862" = load i32, ptr %"R23"
  %"add.223" = add i32 %".4862", 12
  %"add.224" = add i32 %"add.223", 0
  store i32 %"add.224", ptr %"R13"
  ; IADD3 R11, R35, 0x8, RZ
  %".4865" = load i32, ptr %"R35"
  %"add.225" = add i32 %".4865", 8
  %"add.226" = add i32 %"add.225", 0
  store i32 %"add.226", ptr %"R11"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".4868" = load i32, ptr %"R13"
  %".4869" = load i32, ptr %"R24"
  %"mul.70" = mul i32 %".4868", %".4869"
  %"add.227" = add i32 %"mul.70", %"Arg_3"
  store i32 %"add.227", ptr %"R12"
  ; FFMA R57, R41, R39, R44
  %".4872" = load float, ptr %"R41"
  %".4873" = load float, ptr %"R39"
  %".4874" = load float, ptr %"R44"
  %"fmul.191" = fmul float %".4872", %".4873"
  %"fadd.172" = fadd float %"fmul.191", %".4874"
  %".4875" = bitcast ptr %"R57" to ptr
  store float %"fadd.172", ptr %".4875"
  ; LDG.E.SYS R41, [R8]
  %".4878" = load i32, ptr %"R8"
  %"zext.474" = zext i32 %".4878" to i64
  %".4879" = load i32, ptr %"R9"
  %"zext.475" = zext i32 %".4879" to i64
  %"shl.252" = shl i64 %"zext.475", 32
  %"or.227" = or i64 %"shl.252", %"zext.474"
  %".4880" = inttoptr i64 %"or.227" to ptr
  %".4881" = ptrtoint ptr %".4880" to i64
  %".4882" = add i64 %".4881", 0
  %"for_LDG.206" = inttoptr i64 %".4882" to ptr
  %".4883" = load float, ptr %"for_LDG.206"
  %".4884" = bitcast ptr %"R41" to ptr
  store float %".4883", ptr %".4884"
  ; FFMA R56, R39, R40, R56
  %".4887" = load float, ptr %"R39"
  %".4888" = load float, ptr %"R40"
  %".4889" = load float, ptr %"R56"
  %"fmul.192" = fmul float %".4887", %".4888"
  %"fadd.173" = fadd float %"fmul.192", %".4889"
  %".4890" = bitcast ptr %"R56" to ptr
  store float %"fadd.173", ptr %".4890"
  ; LDG.E.SYS R40, [R8+0x4]
  %".4893" = load i32, ptr %"R8"
  %"zext.476" = zext i32 %".4893" to i64
  %".4894" = load i32, ptr %"R9"
  %"zext.477" = zext i32 %".4894" to i64
  %"shl.253" = shl i64 %"zext.477", 32
  %"or.228" = or i64 %"shl.253", %"zext.476"
  %".4895" = inttoptr i64 %"or.228" to ptr
  %".4896" = ptrtoint ptr %".4895" to i64
  %".4897" = add i64 %".4896", 4
  %"for_LDG.207" = inttoptr i64 %".4897" to ptr
  %".4898" = load float, ptr %"for_LDG.207"
  %".4899" = bitcast ptr %"R40" to ptr
  store float %".4898", ptr %".4899"
  ; LDG.E.SYS R39, [R8+0x8]
  %".4902" = load i32, ptr %"R8"
  %"zext.478" = zext i32 %".4902" to i64
  %".4903" = load i32, ptr %"R9"
  %"zext.479" = zext i32 %".4903" to i64
  %"shl.254" = shl i64 %"zext.479", 32
  %"or.229" = or i64 %"shl.254", %"zext.478"
  %".4904" = inttoptr i64 %"or.229" to ptr
  %".4905" = ptrtoint ptr %".4904" to i64
  %".4906" = add i64 %".4905", 8
  %"for_LDG.208" = inttoptr i64 %".4906" to ptr
  %".4907" = load float, ptr %"for_LDG.208"
  %".4908" = bitcast ptr %"R39" to ptr
  store float %".4907", ptr %".4908"
  ; FFMA R57, R53, R52, R57
  %".4911" = load float, ptr %"R53"
  %".4912" = load float, ptr %"R52"
  %".4913" = load float, ptr %"R57"
  %"fmul.193" = fmul float %".4911", %".4912"
  %"fadd.174" = fadd float %"fmul.193", %".4913"
  %".4914" = bitcast ptr %"R57" to ptr
  store float %"fadd.174", ptr %".4914"
  ; LDG.E.SYS R44, [R8+0xc]
  %".4917" = load i32, ptr %"R8"
  %"zext.480" = zext i32 %".4917" to i64
  %".4918" = load i32, ptr %"R9"
  %"zext.481" = zext i32 %".4918" to i64
  %"shl.255" = shl i64 %"zext.481", 32
  %"or.230" = or i64 %"shl.255", %"zext.480"
  %".4919" = inttoptr i64 %"or.230" to ptr
  %".4920" = ptrtoint ptr %".4919" to i64
  %".4921" = add i64 %".4920", 12
  %"for_LDG.209" = inttoptr i64 %".4921" to ptr
  %".4922" = load float, ptr %"for_LDG.209"
  %".4923" = bitcast ptr %"R44" to ptr
  store float %".4922", ptr %".4923"
  ; FFMA R59, R52, R55, R56
  %".4926" = load float, ptr %"R52"
  %".4927" = load float, ptr %"R55"
  %".4928" = load float, ptr %"R56"
  %"fmul.194" = fmul float %".4926", %".4927"
  %"fadd.175" = fadd float %"fmul.194", %".4928"
  %".4929" = bitcast ptr %"R59" to ptr
  store float %"fadd.175", ptr %".4929"
  ; LDG.E.SYS R55, [R12]
  %".4932" = load i32, ptr %"R12"
  %"zext.482" = zext i32 %".4932" to i64
  %".4933" = load i32, ptr %"R13"
  %"zext.483" = zext i32 %".4933" to i64
  %"shl.256" = shl i64 %"zext.483", 32
  %"or.231" = or i64 %"shl.256", %"zext.482"
  %".4934" = inttoptr i64 %"or.231" to ptr
  %".4935" = ptrtoint ptr %".4934" to i64
  %".4936" = add i64 %".4935", 0
  %"for_LDG.210" = inttoptr i64 %".4936" to ptr
  %".4937" = load float, ptr %"for_LDG.210"
  %".4938" = bitcast ptr %"R55" to ptr
  store float %".4937", ptr %".4938"
  ; LDG.E.SYS R53, [R12+0x4]
  %".4941" = load i32, ptr %"R12"
  %"zext.484" = zext i32 %".4941" to i64
  %".4942" = load i32, ptr %"R13"
  %"zext.485" = zext i32 %".4942" to i64
  %"shl.257" = shl i64 %"zext.485", 32
  %"or.232" = or i64 %"shl.257", %"zext.484"
  %".4943" = inttoptr i64 %"or.232" to ptr
  %".4944" = ptrtoint ptr %".4943" to i64
  %".4945" = add i64 %".4944", 4
  %"for_LDG.211" = inttoptr i64 %".4945" to ptr
  %".4946" = load float, ptr %"for_LDG.211"
  %".4947" = bitcast ptr %"R53" to ptr
  store float %".4946", ptr %".4947"
  ; FFMA R43, R43, R50, R57
  %".4950" = load float, ptr %"R43"
  %".4951" = load float, ptr %"R50"
  %".4952" = load float, ptr %"R57"
  %"fmul.195" = fmul float %".4950", %".4951"
  %"fadd.176" = fadd float %"fmul.195", %".4952"
  %".4953" = bitcast ptr %"R43" to ptr
  store float %"fadd.176", ptr %".4953"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".4956" = load i32, ptr %"R11"
  %".4957" = load i32, ptr %"R24"
  %"mul.71" = mul i32 %".4956", %".4957"
  %"add.228" = add i32 %"mul.71", %"Arg_4"
  store i32 %"add.228", ptr %"R8"
  ; LDG.E.SYS R52, [R12+0x8]
  %".4960" = load i32, ptr %"R12"
  %"zext.486" = zext i32 %".4960" to i64
  %".4961" = load i32, ptr %"R13"
  %"zext.487" = zext i32 %".4961" to i64
  %"shl.258" = shl i64 %"zext.487", 32
  %"or.233" = or i64 %"shl.258", %"zext.486"
  %".4962" = inttoptr i64 %"or.233" to ptr
  %".4963" = ptrtoint ptr %".4962" to i64
  %".4964" = add i64 %".4963", 8
  %"for_LDG.212" = inttoptr i64 %".4964" to ptr
  %".4965" = load float, ptr %"for_LDG.212"
  %".4966" = bitcast ptr %"R52" to ptr
  store float %".4965", ptr %".4966"
  ; FFMA R51, R50, R51, R59
  %".4969" = load float, ptr %"R50"
  %".4970" = load float, ptr %"R51"
  %".4971" = load float, ptr %"R59"
  %"fmul.196" = fmul float %".4969", %".4970"
  %"fadd.177" = fadd float %"fmul.196", %".4971"
  %".4972" = bitcast ptr %"R51" to ptr
  store float %"fadd.177", ptr %".4972"
  ; IADD3 R57, R25, 0x8, RZ
  %".4975" = load i32, ptr %"R25"
  %"add.229" = add i32 %".4975", 8
  %"add.230" = add i32 %"add.229", 0
  store i32 %"add.230", ptr %"R57"
  ; LDG.E.SYS R59, [R4+0xc]
  %".4978" = load i32, ptr %"R4"
  %"zext.488" = zext i32 %".4978" to i64
  %".4979" = load i32, ptr %"R5"
  %"zext.489" = zext i32 %".4979" to i64
  %"shl.259" = shl i64 %"zext.489", 32
  %"or.234" = or i64 %"shl.259", %"zext.488"
  %".4980" = inttoptr i64 %"or.234" to ptr
  %".4981" = ptrtoint ptr %".4980" to i64
  %".4982" = add i64 %".4981", 12
  %"for_LDG.213" = inttoptr i64 %".4982" to ptr
  %".4983" = load float, ptr %"for_LDG.213"
  %".4984" = bitcast ptr %"R59" to ptr
  store float %".4983", ptr %".4984"
  ; FFMA R61, R54, R47, R43
  %".4987" = load float, ptr %"R54"
  %".4988" = load float, ptr %"R47"
  %".4989" = load float, ptr %"R43"
  %"fmul.197" = fmul float %".4987", %".4988"
  %"fadd.178" = fadd float %"fmul.197", %".4989"
  %".4990" = bitcast ptr %"R61" to ptr
  store float %"fadd.178", ptr %".4990"
  ; LDG.E.SYS R50, [R8]
  %".4993" = load i32, ptr %"R8"
  %"zext.490" = zext i32 %".4993" to i64
  %".4994" = load i32, ptr %"R9"
  %"zext.491" = zext i32 %".4994" to i64
  %"shl.260" = shl i64 %"zext.491", 32
  %"or.235" = or i64 %"shl.260", %"zext.490"
  %".4995" = inttoptr i64 %"or.235" to ptr
  %".4996" = ptrtoint ptr %".4995" to i64
  %".4997" = add i64 %".4996", 0
  %"for_LDG.214" = inttoptr i64 %".4997" to ptr
  %".4998" = load float, ptr %"for_LDG.214"
  %".4999" = bitcast ptr %"R50" to ptr
  store float %".4998", ptr %".4999"
  ; FFMA R58, R47, R58, R51
  %".5002" = load float, ptr %"R47"
  %".5003" = load float, ptr %"R58"
  %".5004" = load float, ptr %"R51"
  %"fmul.198" = fmul float %".5002", %".5003"
  %"fadd.179" = fadd float %"fmul.198", %".5004"
  %".5005" = bitcast ptr %"R58" to ptr
  store float %"fadd.179", ptr %".5005"
  ; LDG.E.SYS R43, [R6+0x8]
  %".5008" = load i32, ptr %"R6"
  %"zext.492" = zext i32 %".5008" to i64
  %".5009" = load i32, ptr %"R7"
  %"zext.493" = zext i32 %".5009" to i64
  %"shl.261" = shl i64 %"zext.493", 32
  %"or.236" = or i64 %"shl.261", %"zext.492"
  %".5010" = inttoptr i64 %"or.236" to ptr
  %".5011" = ptrtoint ptr %".5010" to i64
  %".5012" = add i64 %".5011", 8
  %"for_LDG.215" = inttoptr i64 %".5012" to ptr
  %".5013" = load float, ptr %"for_LDG.215"
  %".5014" = bitcast ptr %"R43" to ptr
  store float %".5013", ptr %".5014"
  ; LDG.E.SYS R47, [R4+0x4]
  %".5017" = load i32, ptr %"R4"
  %"zext.494" = zext i32 %".5017" to i64
  %".5018" = load i32, ptr %"R5"
  %"zext.495" = zext i32 %".5018" to i64
  %"shl.262" = shl i64 %"zext.495", 32
  %"or.237" = or i64 %"shl.262", %"zext.494"
  %".5019" = inttoptr i64 %"or.237" to ptr
  %".5020" = ptrtoint ptr %".5019" to i64
  %".5021" = add i64 %".5020", 4
  %"for_LDG.216" = inttoptr i64 %".5021" to ptr
  %".5022" = load float, ptr %"for_LDG.216"
  %".5023" = bitcast ptr %"R47" to ptr
  store float %".5022", ptr %".5023"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".5026" = load i32, ptr %"R57"
  %".5027" = load i32, ptr %"R24"
  %"mul.72" = mul i32 %".5026", %".5027"
  %"add.231" = add i32 %"mul.72", %"Arg_4"
  store i32 %"add.231", ptr %"R10"
  ; LDG.E.SYS R51, [R4+0x8]
  %".5030" = load i32, ptr %"R4"
  %"zext.496" = zext i32 %".5030" to i64
  %".5031" = load i32, ptr %"R5"
  %"zext.497" = zext i32 %".5031" to i64
  %"shl.263" = shl i64 %"zext.497", 32
  %"or.238" = or i64 %"shl.263", %"zext.496"
  %".5032" = inttoptr i64 %"or.238" to ptr
  %".5033" = ptrtoint ptr %".5032" to i64
  %".5034" = add i64 %".5033", 8
  %"for_LDG.217" = inttoptr i64 %".5034" to ptr
  %".5035" = load float, ptr %"for_LDG.217"
  %".5036" = bitcast ptr %"R51" to ptr
  store float %".5035", ptr %".5036"
  ; LDG.E.SYS R57, [R6+0xc]
  %".5039" = load i32, ptr %"R6"
  %"zext.498" = zext i32 %".5039" to i64
  %".5040" = load i32, ptr %"R7"
  %"zext.499" = zext i32 %".5040" to i64
  %"shl.264" = shl i64 %"zext.499", 32
  %"or.239" = or i64 %"shl.264", %"zext.498"
  %".5041" = inttoptr i64 %"or.239" to ptr
  %".5042" = ptrtoint ptr %".5041" to i64
  %".5043" = add i64 %".5042", 12
  %"for_LDG.218" = inttoptr i64 %".5043" to ptr
  %".5044" = load float, ptr %"for_LDG.218"
  %".5045" = bitcast ptr %"R57" to ptr
  store float %".5044", ptr %".5045"
  ; FFMA R42, R42, R46, R61
  %".5048" = load float, ptr %"R42"
  %".5049" = load float, ptr %"R46"
  %".5050" = load float, ptr %"R61"
  %"fmul.199" = fmul float %".5048", %".5049"
  %"fadd.180" = fadd float %"fmul.199", %".5050"
  %".5051" = bitcast ptr %"R42" to ptr
  store float %"fadd.180", ptr %".5051"
  ; IADD3 R25, R25, 0xc, RZ
  %".5054" = load i32, ptr %"R25"
  %"add.232" = add i32 %".5054", 12
  %"add.233" = add i32 %"add.232", 0
  store i32 %"add.233", ptr %"R25"
  ; LDG.E.SYS R56, [R12+0xc]
  %".5057" = load i32, ptr %"R12"
  %"zext.500" = zext i32 %".5057" to i64
  %".5058" = load i32, ptr %"R13"
  %"zext.501" = zext i32 %".5058" to i64
  %"shl.265" = shl i64 %"zext.501", 32
  %"or.240" = or i64 %"shl.265", %"zext.500"
  %".5059" = inttoptr i64 %"or.240" to ptr
  %".5060" = ptrtoint ptr %".5059" to i64
  %".5061" = add i64 %".5060", 12
  %"for_LDG.219" = inttoptr i64 %".5061" to ptr
  %".5062" = load float, ptr %"for_LDG.219"
  %".5063" = bitcast ptr %"R56" to ptr
  store float %".5062", ptr %".5063"
  ; FFMA R45, R46, R45, R58
  %".5066" = load float, ptr %"R46"
  %".5067" = load float, ptr %"R45"
  %".5068" = load float, ptr %"R58"
  %"fmul.200" = fmul float %".5066", %".5067"
  %"fadd.181" = fadd float %"fmul.200", %".5068"
  %".5069" = bitcast ptr %"R45" to ptr
  store float %"fadd.181", ptr %".5069"
  ; LDG.E.SYS R46, [R10]
  %".5072" = load i32, ptr %"R10"
  %"zext.502" = zext i32 %".5072" to i64
  %".5073" = load i32, ptr %"R11"
  %"zext.503" = zext i32 %".5073" to i64
  %"shl.266" = shl i64 %"zext.503", 32
  %"or.241" = or i64 %"shl.266", %"zext.502"
  %".5074" = inttoptr i64 %"or.241" to ptr
  %".5075" = ptrtoint ptr %".5074" to i64
  %".5076" = add i64 %".5075", 0
  %"for_LDG.220" = inttoptr i64 %".5076" to ptr
  %".5077" = load float, ptr %"for_LDG.220"
  %".5078" = bitcast ptr %"R46" to ptr
  store float %".5077", ptr %".5078"
  ; LDG.E.SYS R61, [R8+0x4]
  %".5081" = load i32, ptr %"R8"
  %"zext.504" = zext i32 %".5081" to i64
  %".5082" = load i32, ptr %"R9"
  %"zext.505" = zext i32 %".5082" to i64
  %"shl.267" = shl i64 %"zext.505", 32
  %"or.242" = or i64 %"shl.267", %"zext.504"
  %".5083" = inttoptr i64 %"or.242" to ptr
  %".5084" = ptrtoint ptr %".5083" to i64
  %".5085" = add i64 %".5084", 4
  %"for_LDG.221" = inttoptr i64 %".5085" to ptr
  %".5086" = load float, ptr %"for_LDG.221"
  %".5087" = bitcast ptr %"R61" to ptr
  store float %".5086", ptr %".5087"
  ; IADD3 R13, R35, 0xc, RZ
  %".5090" = load i32, ptr %"R35"
  %"add.234" = add i32 %".5090", 12
  %"add.235" = add i32 %"add.234", 0
  store i32 %"add.235", ptr %"R13"
  ; LDG.E.SYS R35, [R10+0x4]
  %".5093" = load i32, ptr %"R10"
  %"zext.506" = zext i32 %".5093" to i64
  %".5094" = load i32, ptr %"R11"
  %"zext.507" = zext i32 %".5094" to i64
  %"shl.268" = shl i64 %"zext.507", 32
  %"or.243" = or i64 %"shl.268", %"zext.506"
  %".5095" = inttoptr i64 %"or.243" to ptr
  %".5096" = ptrtoint ptr %".5095" to i64
  %".5097" = add i64 %".5096", 4
  %"for_LDG.222" = inttoptr i64 %".5097" to ptr
  %".5098" = load float, ptr %"for_LDG.222"
  %".5099" = bitcast ptr %"R35" to ptr
  store float %".5098", ptr %".5099"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".5102" = load i32, ptr %"R13"
  %".5103" = load i32, ptr %"R24"
  %"mul.73" = mul i32 %".5102", %".5103"
  %"add.236" = add i32 %"mul.73", %"Arg_4"
  store i32 %"add.236", ptr %"R12"
  ; LDG.E.SYS R6, [R8+0x8]
  %".5106" = load i32, ptr %"R8"
  %"zext.508" = zext i32 %".5106" to i64
  %".5107" = load i32, ptr %"R9"
  %"zext.509" = zext i32 %".5107" to i64
  %"shl.269" = shl i64 %"zext.509", 32
  %"or.244" = or i64 %"shl.269", %"zext.508"
  %".5108" = inttoptr i64 %"or.244" to ptr
  %".5109" = ptrtoint ptr %".5108" to i64
  %".5110" = add i64 %".5109", 8
  %"for_LDG.223" = inttoptr i64 %".5110" to ptr
  %".5111" = load float, ptr %"for_LDG.223"
  %".5112" = bitcast ptr %"R6" to ptr
  store float %".5111", ptr %".5112"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".5115" = load i32, ptr %"R25"
  %".5116" = load i32, ptr %"R24"
  %"mul.74" = mul i32 %".5115", %".5116"
  %"add.237" = add i32 %"mul.74", %"Arg_4"
  store i32 %"add.237", ptr %"R24"
  ; LDG.E.SYS R4, [R10+0x8]
  %".5119" = load i32, ptr %"R10"
  %"zext.510" = zext i32 %".5119" to i64
  %".5120" = load i32, ptr %"R11"
  %"zext.511" = zext i32 %".5120" to i64
  %"shl.270" = shl i64 %"zext.511", 32
  %"or.245" = or i64 %"shl.270", %"zext.510"
  %".5121" = inttoptr i64 %"or.245" to ptr
  %".5122" = ptrtoint ptr %".5121" to i64
  %".5123" = add i64 %".5122", 8
  %"for_LDG.224" = inttoptr i64 %".5123" to ptr
  %".5124" = load float, ptr %"for_LDG.224"
  %".5125" = bitcast ptr %"R4" to ptr
  store float %".5124", ptr %".5125"
  ; LDG.E.SYS R5, [R8+0xc]
  %".5128" = load i32, ptr %"R8"
  %"zext.512" = zext i32 %".5128" to i64
  %".5129" = load i32, ptr %"R9"
  %"zext.513" = zext i32 %".5129" to i64
  %"shl.271" = shl i64 %"zext.513", 32
  %"or.246" = or i64 %"shl.271", %"zext.512"
  %".5130" = inttoptr i64 %"or.246" to ptr
  %".5131" = ptrtoint ptr %".5130" to i64
  %".5132" = add i64 %".5131", 12
  %"for_LDG.225" = inttoptr i64 %".5132" to ptr
  %".5133" = load float, ptr %"for_LDG.225"
  %".5134" = bitcast ptr %"R5" to ptr
  store float %".5133", ptr %".5134"
  ; LDG.E.SYS R60, [R10+0xc]
  %".5137" = load i32, ptr %"R10"
  %"zext.514" = zext i32 %".5137" to i64
  %".5138" = load i32, ptr %"R11"
  %"zext.515" = zext i32 %".5138" to i64
  %"shl.272" = shl i64 %"zext.515", 32
  %"or.247" = or i64 %"shl.272", %"zext.514"
  %".5139" = inttoptr i64 %"or.247" to ptr
  %".5140" = ptrtoint ptr %".5139" to i64
  %".5141" = add i64 %".5140", 12
  %"for_LDG.226" = inttoptr i64 %".5141" to ptr
  %".5142" = load float, ptr %"for_LDG.226"
  %".5143" = bitcast ptr %"R60" to ptr
  store float %".5142", ptr %".5143"
  ; LDG.E.SYS R58, [R12]
  %".5146" = load i32, ptr %"R12"
  %"zext.516" = zext i32 %".5146" to i64
  %".5147" = load i32, ptr %"R13"
  %"zext.517" = zext i32 %".5147" to i64
  %"shl.273" = shl i64 %"zext.517", 32
  %"or.248" = or i64 %"shl.273", %"zext.516"
  %".5148" = inttoptr i64 %"or.248" to ptr
  %".5149" = ptrtoint ptr %".5148" to i64
  %".5150" = add i64 %".5149", 0
  %"for_LDG.227" = inttoptr i64 %".5150" to ptr
  %".5151" = load float, ptr %"for_LDG.227"
  %".5152" = bitcast ptr %"R58" to ptr
  store float %".5151", ptr %".5152"
  ; LDG.E.SYS R54, [R12+0x4]
  %".5155" = load i32, ptr %"R12"
  %"zext.518" = zext i32 %".5155" to i64
  %".5156" = load i32, ptr %"R13"
  %"zext.519" = zext i32 %".5156" to i64
  %"shl.274" = shl i64 %"zext.519", 32
  %"or.249" = or i64 %"shl.274", %"zext.518"
  %".5157" = inttoptr i64 %"or.249" to ptr
  %".5158" = ptrtoint ptr %".5157" to i64
  %".5159" = add i64 %".5158", 4
  %"for_LDG.228" = inttoptr i64 %".5159" to ptr
  %".5160" = load float, ptr %"for_LDG.228"
  %".5161" = bitcast ptr %"R54" to ptr
  store float %".5160", ptr %".5161"
  ; FFMA R10, R37, R34, R42
  %".5164" = load float, ptr %"R37"
  %".5165" = load float, ptr %"R34"
  %".5166" = load float, ptr %"R42"
  %"fmul.201" = fmul float %".5164", %".5165"
  %"fadd.182" = fadd float %"fmul.201", %".5166"
  %".5167" = bitcast ptr %"R10" to ptr
  store float %"fadd.182", ptr %".5167"
  ; LDG.E.SYS R37, [R24]
  %".5170" = load i32, ptr %"R24"
  %"zext.520" = zext i32 %".5170" to i64
  %".5171" = load i32, ptr %"R25"
  %"zext.521" = zext i32 %".5171" to i64
  %"shl.275" = shl i64 %"zext.521", 32
  %"or.250" = or i64 %"shl.275", %"zext.520"
  %".5172" = inttoptr i64 %"or.250" to ptr
  %".5173" = ptrtoint ptr %".5172" to i64
  %".5174" = add i64 %".5173", 0
  %"for_LDG.229" = inttoptr i64 %".5174" to ptr
  %".5175" = load float, ptr %"for_LDG.229"
  %".5176" = bitcast ptr %"R37" to ptr
  store float %".5175", ptr %".5176"
  ; LDG.E.SYS R42, [R24+0x4]
  %".5179" = load i32, ptr %"R24"
  %"zext.522" = zext i32 %".5179" to i64
  %".5180" = load i32, ptr %"R25"
  %"zext.523" = zext i32 %".5180" to i64
  %"shl.276" = shl i64 %"zext.523", 32
  %"or.251" = or i64 %"shl.276", %"zext.522"
  %".5181" = inttoptr i64 %"or.251" to ptr
  %".5182" = ptrtoint ptr %".5181" to i64
  %".5183" = add i64 %".5182", 4
  %"for_LDG.230" = inttoptr i64 %".5183" to ptr
  %".5184" = load float, ptr %"for_LDG.230"
  %".5185" = bitcast ptr %"R42" to ptr
  store float %".5184", ptr %".5185"
  ; LDG.E.SYS R7, [R12+0x8]
  %".5188" = load i32, ptr %"R12"
  %"zext.524" = zext i32 %".5188" to i64
  %".5189" = load i32, ptr %"R13"
  %"zext.525" = zext i32 %".5189" to i64
  %"shl.277" = shl i64 %"zext.525", 32
  %"or.252" = or i64 %"shl.277", %"zext.524"
  %".5190" = inttoptr i64 %"or.252" to ptr
  %".5191" = ptrtoint ptr %".5190" to i64
  %".5192" = add i64 %".5191", 8
  %"for_LDG.231" = inttoptr i64 %".5192" to ptr
  %".5193" = load float, ptr %"for_LDG.231"
  %".5194" = bitcast ptr %"R7" to ptr
  store float %".5193", ptr %".5194"
  ; LDG.E.SYS R9, [R24+0x8]
  %".5197" = load i32, ptr %"R24"
  %"zext.526" = zext i32 %".5197" to i64
  %".5198" = load i32, ptr %"R25"
  %"zext.527" = zext i32 %".5198" to i64
  %"shl.278" = shl i64 %"zext.527", 32
  %"or.253" = or i64 %"shl.278", %"zext.526"
  %".5199" = inttoptr i64 %"or.253" to ptr
  %".5200" = ptrtoint ptr %".5199" to i64
  %".5201" = add i64 %".5200", 8
  %"for_LDG.232" = inttoptr i64 %".5201" to ptr
  %".5202" = load float, ptr %"for_LDG.232"
  %".5203" = bitcast ptr %"R9" to ptr
  store float %".5202", ptr %".5203"
  ; LDG.E.SYS R8, [R24+0xc]
  %".5206" = load i32, ptr %"R24"
  %"zext.528" = zext i32 %".5206" to i64
  %".5207" = load i32, ptr %"R25"
  %"zext.529" = zext i32 %".5207" to i64
  %"shl.279" = shl i64 %"zext.529", 32
  %"or.254" = or i64 %"shl.279", %"zext.528"
  %".5208" = inttoptr i64 %"or.254" to ptr
  %".5209" = ptrtoint ptr %".5208" to i64
  %".5210" = add i64 %".5209", 12
  %"for_LDG.233" = inttoptr i64 %".5210" to ptr
  %".5211" = load float, ptr %"for_LDG.233"
  %".5212" = bitcast ptr %"R8" to ptr
  store float %".5211", ptr %".5212"
  ; LDG.E.SYS R13, [R12+0xc]
  %".5215" = load i32, ptr %"R12"
  %"zext.530" = zext i32 %".5215" to i64
  %".5216" = load i32, ptr %"R13"
  %"zext.531" = zext i32 %".5216" to i64
  %"shl.280" = shl i64 %"zext.531", 32
  %"or.255" = or i64 %"shl.280", %"zext.530"
  %".5217" = inttoptr i64 %"or.255" to ptr
  %".5218" = ptrtoint ptr %".5217" to i64
  %".5219" = add i64 %".5218", 12
  %"for_LDG.234" = inttoptr i64 %".5219" to ptr
  %".5220" = load float, ptr %"for_LDG.234"
  %".5221" = bitcast ptr %"R13" to ptr
  store float %".5220", ptr %".5221"
  ; IADD3 R22, R22, -0x10, RZ
  %".5224" = load i32, ptr %"R22"
  %"add.238" = add i32 %".5224", -16
  %"add.239" = add i32 %"add.238", 0
  store i32 %"add.239", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".5227" = load i32, ptr %"R22"
  %".5228" = load i1, ptr %"PT"
  %"cmp.45" = icmp sgt i32 %".5227", 12
  %".5229" = and i1 %"cmp.45", %".5228"
  store i1 %".5229", ptr %"P1"
  ; IADD3 R23, R23, 0x10, RZ
  %".5232" = load i32, ptr %"R23"
  %"add.240" = add i32 %".5232", 16
  %"add.241" = add i32 %"add.240", 0
  store i32 %"add.241", ptr %"R23"
  ; FFMA R10, R43, R36, R10
  %".5235" = load float, ptr %"R43"
  %".5236" = load float, ptr %"R36"
  %".5237" = load float, ptr %"R10"
  %"fmul.202" = fmul float %".5235", %".5236"
  %"fadd.183" = fadd float %"fmul.202", %".5237"
  %".5238" = bitcast ptr %"R10" to ptr
  store float %"fadd.183", ptr %".5238"
  ; FFMA R45, R34, R47, R45
  %".5241" = load float, ptr %"R34"
  %".5242" = load float, ptr %"R47"
  %".5243" = load float, ptr %"R45"
  %"fmul.203" = fmul float %".5241", %".5242"
  %"fadd.184" = fadd float %"fmul.203", %".5243"
  %".5244" = bitcast ptr %"R45" to ptr
  store float %"fadd.184", ptr %".5244"
  ; FFMA R45, R36, R51, R45
  %".5247" = load float, ptr %"R36"
  %".5248" = load float, ptr %"R51"
  %".5249" = load float, ptr %"R45"
  %"fmul.204" = fmul float %".5247", %".5248"
  %"fadd.185" = fadd float %"fmul.204", %".5249"
  %".5250" = bitcast ptr %"R45" to ptr
  store float %"fadd.185", ptr %".5250"
  ; FFMA R10, R57, R38, R10
  %".5253" = load float, ptr %"R57"
  %".5254" = load float, ptr %"R38"
  %".5255" = load float, ptr %"R10"
  %"fmul.205" = fmul float %".5253", %".5254"
  %"fadd.186" = fadd float %"fmul.205", %".5255"
  %".5256" = bitcast ptr %"R10" to ptr
  store float %"fadd.186", ptr %".5256"
  ; FFMA R45, R38, R59, R45
  %".5259" = load float, ptr %"R38"
  %".5260" = load float, ptr %"R59"
  %".5261" = load float, ptr %"R45"
  %"fmul.206" = fmul float %".5259", %".5260"
  %"fadd.187" = fadd float %"fmul.206", %".5261"
  %".5262" = bitcast ptr %"R45" to ptr
  store float %"fadd.187", ptr %".5262"
  ; FFMA R10, R50, R41, R10
  %".5265" = load float, ptr %"R50"
  %".5266" = load float, ptr %"R41"
  %".5267" = load float, ptr %"R10"
  %"fmul.207" = fmul float %".5265", %".5266"
  %"fadd.188" = fadd float %"fmul.207", %".5267"
  %".5268" = bitcast ptr %"R10" to ptr
  store float %"fadd.188", ptr %".5268"
  ; FFMA R45, R41, R46, R45
  %".5271" = load float, ptr %"R41"
  %".5272" = load float, ptr %"R46"
  %".5273" = load float, ptr %"R45"
  %"fmul.208" = fmul float %".5271", %".5272"
  %"fadd.189" = fadd float %"fmul.208", %".5273"
  %".5274" = bitcast ptr %"R45" to ptr
  store float %"fadd.189", ptr %".5274"
  ; FFMA R10, R61, R40, R10
  %".5277" = load float, ptr %"R61"
  %".5278" = load float, ptr %"R40"
  %".5279" = load float, ptr %"R10"
  %"fmul.209" = fmul float %".5277", %".5278"
  %"fadd.190" = fadd float %"fmul.209", %".5279"
  %".5280" = bitcast ptr %"R10" to ptr
  store float %"fadd.190", ptr %".5280"
  ; FFMA R35, R40, R35, R45
  %".5283" = load float, ptr %"R40"
  %".5284" = load float, ptr %"R35"
  %".5285" = load float, ptr %"R45"
  %"fmul.210" = fmul float %".5283", %".5284"
  %"fadd.191" = fadd float %"fmul.210", %".5285"
  %".5286" = bitcast ptr %"R35" to ptr
  store float %"fadd.191", ptr %".5286"
  ; FFMA R6, R6, R39, R10
  %".5289" = load float, ptr %"R6"
  %".5290" = load float, ptr %"R39"
  %".5291" = load float, ptr %"R10"
  %"fmul.211" = fmul float %".5289", %".5290"
  %"fadd.192" = fadd float %"fmul.211", %".5291"
  %".5292" = bitcast ptr %"R6" to ptr
  store float %"fadd.192", ptr %".5292"
  ; FFMA R35, R39, R4, R35
  %".5295" = load float, ptr %"R39"
  %".5296" = load float, ptr %"R4"
  %".5297" = load float, ptr %"R35"
  %"fmul.212" = fmul float %".5295", %".5296"
  %"fadd.193" = fadd float %"fmul.212", %".5297"
  %".5298" = bitcast ptr %"R35" to ptr
  store float %"fadd.193", ptr %".5298"
  ; FFMA R5, R5, R44, R6
  %".5301" = load float, ptr %"R5"
  %".5302" = load float, ptr %"R44"
  %".5303" = load float, ptr %"R6"
  %"fmul.213" = fmul float %".5301", %".5302"
  %"fadd.194" = fadd float %"fmul.213", %".5303"
  %".5304" = bitcast ptr %"R5" to ptr
  store float %"fadd.194", ptr %".5304"
  ; FFMA R60, R44, R60, R35
  %".5307" = load float, ptr %"R44"
  %".5308" = load float, ptr %"R60"
  %".5309" = load float, ptr %"R35"
  %"fmul.214" = fmul float %".5307", %".5308"
  %"fadd.195" = fadd float %"fmul.214", %".5309"
  %".5310" = bitcast ptr %"R60" to ptr
  store float %"fadd.195", ptr %".5310"
  ; FFMA R5, R58, R55, R5
  %".5313" = load float, ptr %"R58"
  %".5314" = load float, ptr %"R55"
  %".5315" = load float, ptr %"R5"
  %"fmul.215" = fmul float %".5313", %".5314"
  %"fadd.196" = fadd float %"fmul.215", %".5315"
  %".5316" = bitcast ptr %"R5" to ptr
  store float %"fadd.196", ptr %".5316"
  ; FFMA R5, R54, R53, R5
  %".5319" = load float, ptr %"R54"
  %".5320" = load float, ptr %"R53"
  %".5321" = load float, ptr %"R5"
  %"fmul.216" = fmul float %".5319", %".5320"
  %"fadd.197" = fadd float %"fmul.216", %".5321"
  %".5322" = bitcast ptr %"R5" to ptr
  store float %"fadd.197", ptr %".5322"
  ; FFMA R37, R55, R37, R60
  %".5325" = load float, ptr %"R55"
  %".5326" = load float, ptr %"R37"
  %".5327" = load float, ptr %"R60"
  %"fmul.217" = fmul float %".5325", %".5326"
  %"fadd.198" = fadd float %"fmul.217", %".5327"
  %".5328" = bitcast ptr %"R37" to ptr
  store float %"fadd.198", ptr %".5328"
  ; FFMA R37, R53, R42, R37
  %".5331" = load float, ptr %"R53"
  %".5332" = load float, ptr %"R42"
  %".5333" = load float, ptr %"R37"
  %"fmul.218" = fmul float %".5331", %".5332"
  %"fadd.199" = fadd float %"fmul.218", %".5333"
  %".5334" = bitcast ptr %"R37" to ptr
  store float %"fadd.199", ptr %".5334"
  ; FFMA R5, R7, R52, R5
  %".5337" = load float, ptr %"R7"
  %".5338" = load float, ptr %"R52"
  %".5339" = load float, ptr %"R5"
  %"fmul.219" = fmul float %".5337", %".5338"
  %"fadd.200" = fadd float %"fmul.219", %".5339"
  %".5340" = bitcast ptr %"R5" to ptr
  store float %"fadd.200", ptr %".5340"
  ; FFMA R9, R52, R9, R37
  %".5343" = load float, ptr %"R52"
  %".5344" = load float, ptr %"R9"
  %".5345" = load float, ptr %"R37"
  %"fmul.220" = fmul float %".5343", %".5344"
  %"fadd.201" = fadd float %"fmul.220", %".5345"
  %".5346" = bitcast ptr %"R9" to ptr
  store float %"fadd.201", ptr %".5346"
  ; FFMA R44, R13, R56, R5
  %".5349" = load float, ptr %"R13"
  %".5350" = load float, ptr %"R56"
  %".5351" = load float, ptr %"R5"
  %"fmul.221" = fmul float %".5349", %".5350"
  %"fadd.202" = fadd float %"fmul.221", %".5351"
  %".5352" = bitcast ptr %"R44" to ptr
  store float %"fadd.202", ptr %".5352"
  ; FFMA R56, R56, R8, R9
  %".5355" = load float, ptr %"R56"
  %".5356" = load float, ptr %"R8"
  %".5357" = load float, ptr %"R9"
  %"fmul.222" = fmul float %".5355", %".5356"
  %"fadd.203" = fadd float %"fmul.222", %".5357"
  %".5358" = bitcast ptr %"R56" to ptr
  store float %"fadd.203", ptr %".5358"
  ; @P1 BRA `(.L_x_30)
  %".5361" = load i1, ptr %"P1"
  %".5362" = icmp ne i1 %".5361", 1
  br i1 %".5362", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".5365" = load i32, ptr %"R22"
  %".5366" = load i1, ptr %"PT"
  %"cmp.46" = icmp sgt i32 %".5365", 4
  %".5367" = and i1 %"cmp.46", %".5366"
  store i1 %".5367", ptr %"P1"
  ; @!P1 BRA `(.L_x_31)
  %".5370" = load i1, ptr %"P1"
  %".5371" = icmp eq i1 %".5370", 1
  br i1 %".5371", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".5374" = load i32, ptr %"R0"
  %".5375" = load i32, ptr %"R23"
  %"add.242" = add i32 %".5374", %".5375"
  %"add.243" = add i32 %"add.242", 0
  store i32 %"add.243", ptr %"R5"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25"
  ; LEA R13, R2.reuse, R5, 0x2
  %".5380" = load i32, ptr %"R2"
  %".5381" = load i32, ptr %"R5"
  %"shl.281" = shl i32 %".5380", 2
  %"add.244" = add i32 %"shl.281", %".5381"
  store i32 %"add.244", ptr %"R13"
  ; IMAD R12, R2, 0x3, R5
  %".5384" = load i32, ptr %"R2"
  %".5385" = load i32, ptr %"R5"
  %"mul.75" = mul i32 %".5384", 3
  %"add.245" = add i32 %"mul.75", %".5385"
  store i32 %"add.245", ptr %"R12"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".5388" = load i32, ptr %"R23"
  %"add.246" = add i32 %".5388", 4
  %"add.247" = add i32 %"add.246", 0
  store i32 %"add.247", ptr %"R6"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".5391" = load i32, ptr %"R23"
  %".5392" = load i32, ptr %"R25"
  %"mul.76" = mul i32 %".5391", %".5392"
  %"add.248" = add i32 %"mul.76", %"Arg_3"
  store i32 %"add.248", ptr %"R8"
  ; IADD3 R24, R13, 0x4, RZ
  %".5395" = load i32, ptr %"R13"
  %"add.249" = add i32 %".5395", 4
  %"add.250" = add i32 %"add.249", 0
  store i32 %"add.250", ptr %"R24"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".5398" = load i32, ptr %"R12"
  %".5399" = load i32, ptr %"R25"
  %"mul.77" = mul i32 %".5398", %".5399"
  %"add.251" = add i32 %"mul.77", %"Arg_4"
  store i32 %"add.251", ptr %"R4"
  ; IADD3 R12, R12, 0x4, RZ
  %".5402" = load i32, ptr %"R12"
  %"add.252" = add i32 %".5402", 4
  %"add.253" = add i32 %"add.252", 0
  store i32 %"add.253", ptr %"R12"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".5405" = load i32, ptr %"R13"
  %".5406" = load i32, ptr %"R25"
  %"mul.78" = mul i32 %".5405", %".5406"
  %"add.254" = add i32 %"mul.78", %"Arg_4"
  store i32 %"add.254", ptr %"R10"
  ; LDG.E.SYS R43, [R8]
  %".5409" = load i32, ptr %"R8"
  %"zext.532" = zext i32 %".5409" to i64
  %".5410" = load i32, ptr %"R9"
  %"zext.533" = zext i32 %".5410" to i64
  %"shl.282" = shl i64 %"zext.533", 32
  %"or.256" = or i64 %"shl.282", %"zext.532"
  %".5411" = inttoptr i64 %"or.256" to ptr
  %".5412" = ptrtoint ptr %".5411" to i64
  %".5413" = add i64 %".5412", 0
  %"for_LDG.235" = inttoptr i64 %".5413" to ptr
  %".5414" = load float, ptr %"for_LDG.235"
  %".5415" = bitcast ptr %"R43" to ptr
  store float %".5414", ptr %".5415"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".5418" = load i32, ptr %"R6"
  %".5419" = load i32, ptr %"R25"
  %"mul.79" = mul i32 %".5418", %".5419"
  %"add.255" = add i32 %"mul.79", %"Arg_3"
  store i32 %"add.255", ptr %"R6"
  ; LDG.E.SYS R52, [R4]
  %".5422" = load i32, ptr %"R4"
  %"zext.534" = zext i32 %".5422" to i64
  %".5423" = load i32, ptr %"R5"
  %"zext.535" = zext i32 %".5423" to i64
  %"shl.283" = shl i64 %"zext.535", 32
  %"or.257" = or i64 %"shl.283", %"zext.534"
  %".5424" = inttoptr i64 %"or.257" to ptr
  %".5425" = ptrtoint ptr %".5424" to i64
  %".5426" = add i64 %".5425", 0
  %"for_LDG.236" = inttoptr i64 %".5426" to ptr
  %".5427" = load float, ptr %"for_LDG.236"
  %".5428" = bitcast ptr %"R52" to ptr
  store float %".5427", ptr %".5428"
  ; LDG.E.SYS R38, [R10]
  %".5431" = load i32, ptr %"R10"
  %"zext.536" = zext i32 %".5431" to i64
  %".5432" = load i32, ptr %"R11"
  %"zext.537" = zext i32 %".5432" to i64
  %"shl.284" = shl i64 %"zext.537", 32
  %"or.258" = or i64 %"shl.284", %"zext.536"
  %".5433" = inttoptr i64 %"or.258" to ptr
  %".5434" = ptrtoint ptr %".5433" to i64
  %".5435" = add i64 %".5434", 0
  %"for_LDG.237" = inttoptr i64 %".5435" to ptr
  %".5436" = load float, ptr %"for_LDG.237"
  %".5437" = bitcast ptr %"R38" to ptr
  store float %".5436", ptr %".5437"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".5440" = load i32, ptr %"R12"
  %".5441" = load i32, ptr %"R25"
  %"mul.80" = mul i32 %".5440", %".5441"
  %"add.256" = add i32 %"mul.80", %"Arg_4"
  store i32 %"add.256", ptr %"R12"
  ; LDG.E.SYS R36, [R8+0x4]
  %".5444" = load i32, ptr %"R8"
  %"zext.538" = zext i32 %".5444" to i64
  %".5445" = load i32, ptr %"R9"
  %"zext.539" = zext i32 %".5445" to i64
  %"shl.285" = shl i64 %"zext.539", 32
  %"or.259" = or i64 %"shl.285", %"zext.538"
  %".5446" = inttoptr i64 %"or.259" to ptr
  %".5447" = ptrtoint ptr %".5446" to i64
  %".5448" = add i64 %".5447", 4
  %"for_LDG.238" = inttoptr i64 %".5448" to ptr
  %".5449" = load float, ptr %"for_LDG.238"
  %".5450" = bitcast ptr %"R36" to ptr
  store float %".5449", ptr %".5450"
  ; LDG.E.SYS R41, [R4+0x4]
  %".5453" = load i32, ptr %"R4"
  %"zext.540" = zext i32 %".5453" to i64
  %".5454" = load i32, ptr %"R5"
  %"zext.541" = zext i32 %".5454" to i64
  %"shl.286" = shl i64 %"zext.541", 32
  %"or.260" = or i64 %"shl.286", %"zext.540"
  %".5455" = inttoptr i64 %"or.260" to ptr
  %".5456" = ptrtoint ptr %".5455" to i64
  %".5457" = add i64 %".5456", 4
  %"for_LDG.239" = inttoptr i64 %".5457" to ptr
  %".5458" = load float, ptr %"for_LDG.239"
  %".5459" = bitcast ptr %"R41" to ptr
  store float %".5458", ptr %".5459"
  ; LDG.E.SYS R39, [R10+0x4]
  %".5462" = load i32, ptr %"R10"
  %"zext.542" = zext i32 %".5462" to i64
  %".5463" = load i32, ptr %"R11"
  %"zext.543" = zext i32 %".5463" to i64
  %"shl.287" = shl i64 %"zext.543", 32
  %"or.261" = or i64 %"shl.287", %"zext.542"
  %".5464" = inttoptr i64 %"or.261" to ptr
  %".5465" = ptrtoint ptr %".5464" to i64
  %".5466" = add i64 %".5465", 4
  %"for_LDG.240" = inttoptr i64 %".5466" to ptr
  %".5467" = load float, ptr %"for_LDG.240"
  %".5468" = bitcast ptr %"R39" to ptr
  store float %".5467", ptr %".5468"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".5471" = load i32, ptr %"R24"
  %".5472" = load i32, ptr %"R25"
  %"mul.81" = mul i32 %".5471", %".5472"
  %"add.257" = add i32 %"mul.81", %"Arg_4"
  store i32 %"add.257", ptr %"R24"
  ; LDG.E.SYS R34, [R8+0x8]
  %".5475" = load i32, ptr %"R8"
  %"zext.544" = zext i32 %".5475" to i64
  %".5476" = load i32, ptr %"R9"
  %"zext.545" = zext i32 %".5476" to i64
  %"shl.288" = shl i64 %"zext.545", 32
  %"or.262" = or i64 %"shl.288", %"zext.544"
  %".5477" = inttoptr i64 %"or.262" to ptr
  %".5478" = ptrtoint ptr %".5477" to i64
  %".5479" = add i64 %".5478", 8
  %"for_LDG.241" = inttoptr i64 %".5479" to ptr
  %".5480" = load float, ptr %"for_LDG.241"
  %".5481" = bitcast ptr %"R34" to ptr
  store float %".5480", ptr %".5481"
  ; LDG.E.SYS R37, [R4+0x8]
  %".5484" = load i32, ptr %"R4"
  %"zext.546" = zext i32 %".5484" to i64
  %".5485" = load i32, ptr %"R5"
  %"zext.547" = zext i32 %".5485" to i64
  %"shl.289" = shl i64 %"zext.547", 32
  %"or.263" = or i64 %"shl.289", %"zext.546"
  %".5486" = inttoptr i64 %"or.263" to ptr
  %".5487" = ptrtoint ptr %".5486" to i64
  %".5488" = add i64 %".5487", 8
  %"for_LDG.242" = inttoptr i64 %".5488" to ptr
  %".5489" = load float, ptr %"for_LDG.242"
  %".5490" = bitcast ptr %"R37" to ptr
  store float %".5489", ptr %".5490"
  ; LDG.E.SYS R35, [R10+0x8]
  %".5493" = load i32, ptr %"R10"
  %"zext.548" = zext i32 %".5493" to i64
  %".5494" = load i32, ptr %"R11"
  %"zext.549" = zext i32 %".5494" to i64
  %"shl.290" = shl i64 %"zext.549", 32
  %"or.264" = or i64 %"shl.290", %"zext.548"
  %".5495" = inttoptr i64 %"or.264" to ptr
  %".5496" = ptrtoint ptr %".5495" to i64
  %".5497" = add i64 %".5496", 8
  %"for_LDG.243" = inttoptr i64 %".5497" to ptr
  %".5498" = load float, ptr %"for_LDG.243"
  %".5499" = bitcast ptr %"R35" to ptr
  store float %".5498", ptr %".5499"
  ; LDG.E.SYS R40, [R8+0xc]
  %".5502" = load i32, ptr %"R8"
  %"zext.550" = zext i32 %".5502" to i64
  %".5503" = load i32, ptr %"R9"
  %"zext.551" = zext i32 %".5503" to i64
  %"shl.291" = shl i64 %"zext.551", 32
  %"or.265" = or i64 %"shl.291", %"zext.550"
  %".5504" = inttoptr i64 %"or.265" to ptr
  %".5505" = ptrtoint ptr %".5504" to i64
  %".5506" = add i64 %".5505", 12
  %"for_LDG.244" = inttoptr i64 %".5506" to ptr
  %".5507" = load float, ptr %"for_LDG.244"
  %".5508" = bitcast ptr %"R40" to ptr
  store float %".5507", ptr %".5508"
  ; LDG.E.SYS R45, [R4+0xc]
  %".5511" = load i32, ptr %"R4"
  %"zext.552" = zext i32 %".5511" to i64
  %".5512" = load i32, ptr %"R5"
  %"zext.553" = zext i32 %".5512" to i64
  %"shl.292" = shl i64 %"zext.553", 32
  %"or.266" = or i64 %"shl.292", %"zext.552"
  %".5513" = inttoptr i64 %"or.266" to ptr
  %".5514" = ptrtoint ptr %".5513" to i64
  %".5515" = add i64 %".5514", 12
  %"for_LDG.245" = inttoptr i64 %".5515" to ptr
  %".5516" = load float, ptr %"for_LDG.245"
  %".5517" = bitcast ptr %"R45" to ptr
  store float %".5516", ptr %".5517"
  ; LDG.E.SYS R59, [R10+0xc]
  %".5520" = load i32, ptr %"R10"
  %"zext.554" = zext i32 %".5520" to i64
  %".5521" = load i32, ptr %"R11"
  %"zext.555" = zext i32 %".5521" to i64
  %"shl.293" = shl i64 %"zext.555", 32
  %"or.267" = or i64 %"shl.293", %"zext.554"
  %".5522" = inttoptr i64 %"or.267" to ptr
  %".5523" = ptrtoint ptr %".5522" to i64
  %".5524" = add i64 %".5523", 12
  %"for_LDG.246" = inttoptr i64 %".5524" to ptr
  %".5525" = load float, ptr %"for_LDG.246"
  %".5526" = bitcast ptr %"R59" to ptr
  store float %".5525", ptr %".5526"
  ; LDG.E.SYS R50, [R6]
  %".5529" = load i32, ptr %"R6"
  %"zext.556" = zext i32 %".5529" to i64
  %".5530" = load i32, ptr %"R7"
  %"zext.557" = zext i32 %".5530" to i64
  %"shl.294" = shl i64 %"zext.557", 32
  %"or.268" = or i64 %"shl.294", %"zext.556"
  %".5531" = inttoptr i64 %"or.268" to ptr
  %".5532" = ptrtoint ptr %".5531" to i64
  %".5533" = add i64 %".5532", 0
  %"for_LDG.247" = inttoptr i64 %".5533" to ptr
  %".5534" = load float, ptr %"for_LDG.247"
  %".5535" = bitcast ptr %"R50" to ptr
  store float %".5534", ptr %".5535"
  ; LDG.E.SYS R57, [R12]
  %".5538" = load i32, ptr %"R12"
  %"zext.558" = zext i32 %".5538" to i64
  %".5539" = load i32, ptr %"R13"
  %"zext.559" = zext i32 %".5539" to i64
  %"shl.295" = shl i64 %"zext.559", 32
  %"or.269" = or i64 %"shl.295", %"zext.558"
  %".5540" = inttoptr i64 %"or.269" to ptr
  %".5541" = ptrtoint ptr %".5540" to i64
  %".5542" = add i64 %".5541", 0
  %"for_LDG.248" = inttoptr i64 %".5542" to ptr
  %".5543" = load float, ptr %"for_LDG.248"
  %".5544" = bitcast ptr %"R57" to ptr
  store float %".5543", ptr %".5544"
  ; LDG.E.SYS R55, [R24]
  %".5547" = load i32, ptr %"R24"
  %"zext.560" = zext i32 %".5547" to i64
  %".5548" = load i32, ptr %"R25"
  %"zext.561" = zext i32 %".5548" to i64
  %"shl.296" = shl i64 %"zext.561", 32
  %"or.270" = or i64 %"shl.296", %"zext.560"
  %".5549" = inttoptr i64 %"or.270" to ptr
  %".5550" = ptrtoint ptr %".5549" to i64
  %".5551" = add i64 %".5550", 0
  %"for_LDG.249" = inttoptr i64 %".5551" to ptr
  %".5552" = load float, ptr %"for_LDG.249"
  %".5553" = bitcast ptr %"R55" to ptr
  store float %".5552", ptr %".5553"
  ; LDG.E.SYS R46, [R6+0x4]
  %".5556" = load i32, ptr %"R6"
  %"zext.562" = zext i32 %".5556" to i64
  %".5557" = load i32, ptr %"R7"
  %"zext.563" = zext i32 %".5557" to i64
  %"shl.297" = shl i64 %"zext.563", 32
  %"or.271" = or i64 %"shl.297", %"zext.562"
  %".5558" = inttoptr i64 %"or.271" to ptr
  %".5559" = ptrtoint ptr %".5558" to i64
  %".5560" = add i64 %".5559", 4
  %"for_LDG.250" = inttoptr i64 %".5560" to ptr
  %".5561" = load float, ptr %"for_LDG.250"
  %".5562" = bitcast ptr %"R46" to ptr
  store float %".5561", ptr %".5562"
  ; LDG.E.SYS R53, [R12+0x4]
  %".5565" = load i32, ptr %"R12"
  %"zext.564" = zext i32 %".5565" to i64
  %".5566" = load i32, ptr %"R13"
  %"zext.565" = zext i32 %".5566" to i64
  %"shl.298" = shl i64 %"zext.565", 32
  %"or.272" = or i64 %"shl.298", %"zext.564"
  %".5567" = inttoptr i64 %"or.272" to ptr
  %".5568" = ptrtoint ptr %".5567" to i64
  %".5569" = add i64 %".5568", 4
  %"for_LDG.251" = inttoptr i64 %".5569" to ptr
  %".5570" = load float, ptr %"for_LDG.251"
  %".5571" = bitcast ptr %"R53" to ptr
  store float %".5570", ptr %".5571"
  ; LDG.E.SYS R51, [R24+0x4]
  %".5574" = load i32, ptr %"R24"
  %"zext.566" = zext i32 %".5574" to i64
  %".5575" = load i32, ptr %"R25"
  %"zext.567" = zext i32 %".5575" to i64
  %"shl.299" = shl i64 %"zext.567", 32
  %"or.273" = or i64 %"shl.299", %"zext.566"
  %".5576" = inttoptr i64 %"or.273" to ptr
  %".5577" = ptrtoint ptr %".5576" to i64
  %".5578" = add i64 %".5577", 4
  %"for_LDG.252" = inttoptr i64 %".5578" to ptr
  %".5579" = load float, ptr %"for_LDG.252"
  %".5580" = bitcast ptr %"R51" to ptr
  store float %".5579", ptr %".5580"
  ; LDG.E.SYS R42, [R6+0x8]
  %".5583" = load i32, ptr %"R6"
  %"zext.568" = zext i32 %".5583" to i64
  %".5584" = load i32, ptr %"R7"
  %"zext.569" = zext i32 %".5584" to i64
  %"shl.300" = shl i64 %"zext.569", 32
  %"or.274" = or i64 %"shl.300", %"zext.568"
  %".5585" = inttoptr i64 %"or.274" to ptr
  %".5586" = ptrtoint ptr %".5585" to i64
  %".5587" = add i64 %".5586", 8
  %"for_LDG.253" = inttoptr i64 %".5587" to ptr
  %".5588" = load float, ptr %"for_LDG.253"
  %".5589" = bitcast ptr %"R42" to ptr
  store float %".5588", ptr %".5589"
  ; LDG.E.SYS R47, [R12+0x8]
  %".5592" = load i32, ptr %"R12"
  %"zext.570" = zext i32 %".5592" to i64
  %".5593" = load i32, ptr %"R13"
  %"zext.571" = zext i32 %".5593" to i64
  %"shl.301" = shl i64 %"zext.571", 32
  %"or.275" = or i64 %"shl.301", %"zext.570"
  %".5594" = inttoptr i64 %"or.275" to ptr
  %".5595" = ptrtoint ptr %".5594" to i64
  %".5596" = add i64 %".5595", 8
  %"for_LDG.254" = inttoptr i64 %".5596" to ptr
  %".5597" = load float, ptr %"for_LDG.254"
  %".5598" = bitcast ptr %"R47" to ptr
  store float %".5597", ptr %".5598"
  ; LDG.E.SYS R9, [R24+0x8]
  %".5601" = load i32, ptr %"R24"
  %"zext.572" = zext i32 %".5601" to i64
  %".5602" = load i32, ptr %"R25"
  %"zext.573" = zext i32 %".5602" to i64
  %"shl.302" = shl i64 %"zext.573", 32
  %"or.276" = or i64 %"shl.302", %"zext.572"
  %".5603" = inttoptr i64 %"or.276" to ptr
  %".5604" = ptrtoint ptr %".5603" to i64
  %".5605" = add i64 %".5604", 8
  %"for_LDG.255" = inttoptr i64 %".5605" to ptr
  %".5606" = load float, ptr %"for_LDG.255"
  %".5607" = bitcast ptr %"R9" to ptr
  store float %".5606", ptr %".5607"
  ; LDG.E.SYS R4, [R6+0xc]
  %".5610" = load i32, ptr %"R6"
  %"zext.574" = zext i32 %".5610" to i64
  %".5611" = load i32, ptr %"R7"
  %"zext.575" = zext i32 %".5611" to i64
  %"shl.303" = shl i64 %"zext.575", 32
  %"or.277" = or i64 %"shl.303", %"zext.574"
  %".5612" = inttoptr i64 %"or.277" to ptr
  %".5613" = ptrtoint ptr %".5612" to i64
  %".5614" = add i64 %".5613", 12
  %"for_LDG.256" = inttoptr i64 %".5614" to ptr
  %".5615" = load float, ptr %"for_LDG.256"
  %".5616" = bitcast ptr %"R4" to ptr
  store float %".5615", ptr %".5616"
  ; LDG.E.SYS R5, [R12+0xc]
  %".5619" = load i32, ptr %"R12"
  %"zext.576" = zext i32 %".5619" to i64
  %".5620" = load i32, ptr %"R13"
  %"zext.577" = zext i32 %".5620" to i64
  %"shl.304" = shl i64 %"zext.577", 32
  %"or.278" = or i64 %"shl.304", %"zext.576"
  %".5621" = inttoptr i64 %"or.278" to ptr
  %".5622" = ptrtoint ptr %".5621" to i64
  %".5623" = add i64 %".5622", 12
  %"for_LDG.257" = inttoptr i64 %".5623" to ptr
  %".5624" = load float, ptr %"for_LDG.257"
  %".5625" = bitcast ptr %"R5" to ptr
  store float %".5624", ptr %".5625"
  ; LDG.E.SYS R11, [R24+0xc]
  %".5628" = load i32, ptr %"R24"
  %"zext.578" = zext i32 %".5628" to i64
  %".5629" = load i32, ptr %"R25"
  %"zext.579" = zext i32 %".5629" to i64
  %"shl.305" = shl i64 %"zext.579", 32
  %"or.279" = or i64 %"shl.305", %"zext.578"
  %".5630" = inttoptr i64 %"or.279" to ptr
  %".5631" = ptrtoint ptr %".5630" to i64
  %".5632" = add i64 %".5631", 12
  %"for_LDG.258" = inttoptr i64 %".5632" to ptr
  %".5633" = load float, ptr %"for_LDG.258"
  %".5634" = bitcast ptr %"R11" to ptr
  store float %".5633", ptr %".5634"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".5637" = xor i1 1, 1
  %".5638" = and i1 %".5637", 1
  %".5639" = and i1 %".5638", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".5641" = load i32, ptr %"R22"
  %"add.258" = add i32 %".5641", -8
  %"add.259" = add i32 %"add.258", 0
  store i32 %"add.259", ptr %"R22"
  ; IADD3 R23, R23, 0x8, RZ
  %".5644" = load i32, ptr %"R23"
  %"add.260" = add i32 %".5644", 8
  %"add.261" = add i32 %"add.260", 0
  store i32 %"add.261", ptr %"R23"
  ; FFMA R52, R52, R43, R44
  %".5647" = load float, ptr %"R52"
  %".5648" = load float, ptr %"R43"
  %".5649" = load float, ptr %"R44"
  %"fmul.223" = fmul float %".5647", %".5648"
  %"fadd.204" = fadd float %"fmul.223", %".5649"
  %".5650" = bitcast ptr %"R52" to ptr
  store float %"fadd.204", ptr %".5650"
  ; FFMA R38, R43, R38, R56
  %".5653" = load float, ptr %"R43"
  %".5654" = load float, ptr %"R38"
  %".5655" = load float, ptr %"R56"
  %"fmul.224" = fmul float %".5653", %".5654"
  %"fadd.205" = fadd float %"fmul.224", %".5655"
  %".5656" = bitcast ptr %"R38" to ptr
  store float %"fadd.205", ptr %".5656"
  ; FFMA R41, R41, R36, R52
  %".5659" = load float, ptr %"R41"
  %".5660" = load float, ptr %"R36"
  %".5661" = load float, ptr %"R52"
  %"fmul.225" = fmul float %".5659", %".5660"
  %"fadd.206" = fadd float %"fmul.225", %".5661"
  %".5662" = bitcast ptr %"R41" to ptr
  store float %"fadd.206", ptr %".5662"
  ; FFMA R38, R36, R39, R38
  %".5665" = load float, ptr %"R36"
  %".5666" = load float, ptr %"R39"
  %".5667" = load float, ptr %"R38"
  %"fmul.226" = fmul float %".5665", %".5666"
  %"fadd.207" = fadd float %"fmul.226", %".5667"
  %".5668" = bitcast ptr %"R38" to ptr
  store float %"fadd.207", ptr %".5668"
  ; FFMA R37, R37, R34, R41
  %".5671" = load float, ptr %"R37"
  %".5672" = load float, ptr %"R34"
  %".5673" = load float, ptr %"R41"
  %"fmul.227" = fmul float %".5671", %".5672"
  %"fadd.208" = fadd float %"fmul.227", %".5673"
  %".5674" = bitcast ptr %"R37" to ptr
  store float %"fadd.208", ptr %".5674"
  ; FFMA R35, R34, R35, R38
  %".5677" = load float, ptr %"R34"
  %".5678" = load float, ptr %"R35"
  %".5679" = load float, ptr %"R38"
  %"fmul.228" = fmul float %".5677", %".5678"
  %"fadd.209" = fadd float %"fmul.228", %".5679"
  %".5680" = bitcast ptr %"R35" to ptr
  store float %"fadd.209", ptr %".5680"
  ; FFMA R37, R45, R40, R37
  %".5683" = load float, ptr %"R45"
  %".5684" = load float, ptr %"R40"
  %".5685" = load float, ptr %"R37"
  %"fmul.229" = fmul float %".5683", %".5684"
  %"fadd.210" = fadd float %"fmul.229", %".5685"
  %".5686" = bitcast ptr %"R37" to ptr
  store float %"fadd.210", ptr %".5686"
  ; FFMA R35, R40, R59, R35
  %".5689" = load float, ptr %"R40"
  %".5690" = load float, ptr %"R59"
  %".5691" = load float, ptr %"R35"
  %"fmul.230" = fmul float %".5689", %".5690"
  %"fadd.211" = fadd float %"fmul.230", %".5691"
  %".5692" = bitcast ptr %"R35" to ptr
  store float %"fadd.211", ptr %".5692"
  ; FFMA R37, R57, R50, R37
  %".5695" = load float, ptr %"R57"
  %".5696" = load float, ptr %"R50"
  %".5697" = load float, ptr %"R37"
  %"fmul.231" = fmul float %".5695", %".5696"
  %"fadd.212" = fadd float %"fmul.231", %".5697"
  %".5698" = bitcast ptr %"R37" to ptr
  store float %"fadd.212", ptr %".5698"
  ; FFMA R35, R50, R55, R35
  %".5701" = load float, ptr %"R50"
  %".5702" = load float, ptr %"R55"
  %".5703" = load float, ptr %"R35"
  %"fmul.232" = fmul float %".5701", %".5702"
  %"fadd.213" = fadd float %"fmul.232", %".5703"
  %".5704" = bitcast ptr %"R35" to ptr
  store float %"fadd.213", ptr %".5704"
  ; FFMA R37, R53, R46, R37
  %".5707" = load float, ptr %"R53"
  %".5708" = load float, ptr %"R46"
  %".5709" = load float, ptr %"R37"
  %"fmul.233" = fmul float %".5707", %".5708"
  %"fadd.214" = fadd float %"fmul.233", %".5709"
  %".5710" = bitcast ptr %"R37" to ptr
  store float %"fadd.214", ptr %".5710"
  ; FFMA R35, R46, R51, R35
  %".5713" = load float, ptr %"R46"
  %".5714" = load float, ptr %"R51"
  %".5715" = load float, ptr %"R35"
  %"fmul.234" = fmul float %".5713", %".5714"
  %"fadd.215" = fadd float %"fmul.234", %".5715"
  %".5716" = bitcast ptr %"R35" to ptr
  store float %"fadd.215", ptr %".5716"
  ; FFMA R37, R47, R42, R37
  %".5719" = load float, ptr %"R47"
  %".5720" = load float, ptr %"R42"
  %".5721" = load float, ptr %"R37"
  %"fmul.235" = fmul float %".5719", %".5720"
  %"fadd.216" = fadd float %"fmul.235", %".5721"
  %".5722" = bitcast ptr %"R37" to ptr
  store float %"fadd.216", ptr %".5722"
  ; FFMA R9, R42, R9, R35
  %".5725" = load float, ptr %"R42"
  %".5726" = load float, ptr %"R9"
  %".5727" = load float, ptr %"R35"
  %"fmul.236" = fmul float %".5725", %".5726"
  %"fadd.217" = fadd float %"fmul.236", %".5727"
  %".5728" = bitcast ptr %"R9" to ptr
  store float %"fadd.217", ptr %".5728"
  ; FFMA R44, R5, R4, R37
  %".5731" = load float, ptr %"R5"
  %".5732" = load float, ptr %"R4"
  %".5733" = load float, ptr %"R37"
  %"fmul.237" = fmul float %".5731", %".5732"
  %"fadd.218" = fadd float %"fmul.237", %".5733"
  %".5734" = bitcast ptr %"R44" to ptr
  store float %"fadd.218", ptr %".5734"
  ; FFMA R56, R4, R11, R9
  %".5737" = load float, ptr %"R4"
  %".5738" = load float, ptr %"R11"
  %".5739" = load float, ptr %"R9"
  %"fmul.238" = fmul float %".5737", %".5738"
  %"fadd.219" = fadd float %"fmul.238", %".5739"
  %".5740" = bitcast ptr %"R56" to ptr
  store float %"fadd.219", ptr %".5740"
  br label %".L_x_31"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".5744" = load i32, ptr %"R22"
  %".5745" = load i1, ptr %"PT"
  %"cmp.47" = icmp ne i32 %".5744", 0
  %".5746" = or i1 %"cmp.47", %".5745"
  store i1 %".5746", ptr %"P0"
  ; @!P0 BRA `(.L_x_27)
  %".5749" = load i1, ptr %"P0"
  %".5750" = icmp eq i1 %".5749", 1
  br i1 %".5750", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".5753" = load i32, ptr %"R0"
  %".5754" = load i32, ptr %"R23"
  %"add.262" = add i32 %".5753", %".5754"
  %"add.263" = add i32 %"add.262", 0
  store i32 %"add.263", ptr %"R5"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6"
  ; LEA R11, R2.reuse, R5, 0x2
  %".5759" = load i32, ptr %"R2"
  %".5760" = load i32, ptr %"R5"
  %"shl.306" = shl i32 %".5759", 2
  %"add.264" = add i32 %"shl.306", %".5760"
  store i32 %"add.264", ptr %"R11"
  ; IMAD R7, R2, 0x3, R5
  %".5763" = load i32, ptr %"R2"
  %".5764" = load i32, ptr %"R5"
  %"mul.82" = mul i32 %".5763", 3
  %"add.265" = add i32 %"mul.82", %".5764"
  store i32 %"add.265", ptr %"R7"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".5767" = load i32, ptr %"R23"
  %".5768" = load i32, ptr %"R6"
  %"mul.83" = mul i32 %".5767", %".5768"
  %"add.266" = add i32 %"mul.83", %"Arg_3"
  store i32 %"add.266", ptr %"R8"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".5771" = load i32, ptr %"R7"
  %".5772" = load i32, ptr %"R6"
  %"mul.84" = mul i32 %".5771", %".5772"
  %"add.267" = add i32 %"mul.84", %"Arg_4"
  store i32 %"add.267", ptr %"R4"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".5775" = load i32, ptr %"R11"
  %".5776" = load i32, ptr %"R6"
  %"mul.85" = mul i32 %".5775", %".5776"
  %"add.268" = add i32 %"mul.85", %"Arg_4"
  store i32 %"add.268", ptr %"R6"
  ; LDG.E.SYS R13, [R8]
  %".5779" = load i32, ptr %"R8"
  %"zext.580" = zext i32 %".5779" to i64
  %".5780" = load i32, ptr %"R9"
  %"zext.581" = zext i32 %".5780" to i64
  %"shl.307" = shl i64 %"zext.581", 32
  %"or.280" = or i64 %"shl.307", %"zext.580"
  %".5781" = inttoptr i64 %"or.280" to ptr
  %".5782" = ptrtoint ptr %".5781" to i64
  %".5783" = add i64 %".5782", 0
  %"for_LDG.259" = inttoptr i64 %".5783" to ptr
  %".5784" = load float, ptr %"for_LDG.259"
  %".5785" = bitcast ptr %"R13" to ptr
  store float %".5784", ptr %".5785"
  ; LDG.E.SYS R11, [R4]
  %".5788" = load i32, ptr %"R4"
  %"zext.582" = zext i32 %".5788" to i64
  %".5789" = load i32, ptr %"R5"
  %"zext.583" = zext i32 %".5789" to i64
  %"shl.308" = shl i64 %"zext.583", 32
  %"or.281" = or i64 %"shl.308", %"zext.582"
  %".5790" = inttoptr i64 %"or.281" to ptr
  %".5791" = ptrtoint ptr %".5790" to i64
  %".5792" = add i64 %".5791", 0
  %"for_LDG.260" = inttoptr i64 %".5792" to ptr
  %".5793" = load float, ptr %"for_LDG.260"
  %".5794" = bitcast ptr %"R11" to ptr
  store float %".5793", ptr %".5794"
  ; LDG.E.SYS R10, [R6]
  %".5797" = load i32, ptr %"R6"
  %"zext.584" = zext i32 %".5797" to i64
  %".5798" = load i32, ptr %"R7"
  %"zext.585" = zext i32 %".5798" to i64
  %"shl.309" = shl i64 %"zext.585", 32
  %"or.282" = or i64 %"shl.309", %"zext.584"
  %".5799" = inttoptr i64 %"or.282" to ptr
  %".5800" = ptrtoint ptr %".5799" to i64
  %".5801" = add i64 %".5800", 0
  %"for_LDG.261" = inttoptr i64 %".5801" to ptr
  %".5802" = load float, ptr %"for_LDG.261"
  %".5803" = bitcast ptr %"R10" to ptr
  store float %".5802", ptr %".5803"
  ; LDG.E.SYS R25, [R8+0x4]
  %".5806" = load i32, ptr %"R8"
  %"zext.586" = zext i32 %".5806" to i64
  %".5807" = load i32, ptr %"R9"
  %"zext.587" = zext i32 %".5807" to i64
  %"shl.310" = shl i64 %"zext.587", 32
  %"or.283" = or i64 %"shl.310", %"zext.586"
  %".5808" = inttoptr i64 %"or.283" to ptr
  %".5809" = ptrtoint ptr %".5808" to i64
  %".5810" = add i64 %".5809", 4
  %"for_LDG.262" = inttoptr i64 %".5810" to ptr
  %".5811" = load float, ptr %"for_LDG.262"
  %".5812" = bitcast ptr %"R25" to ptr
  store float %".5811", ptr %".5812"
  ; LDG.E.SYS R12, [R4+0x4]
  %".5815" = load i32, ptr %"R4"
  %"zext.588" = zext i32 %".5815" to i64
  %".5816" = load i32, ptr %"R5"
  %"zext.589" = zext i32 %".5816" to i64
  %"shl.311" = shl i64 %"zext.589", 32
  %"or.284" = or i64 %"shl.311", %"zext.588"
  %".5817" = inttoptr i64 %"or.284" to ptr
  %".5818" = ptrtoint ptr %".5817" to i64
  %".5819" = add i64 %".5818", 4
  %"for_LDG.263" = inttoptr i64 %".5819" to ptr
  %".5820" = load float, ptr %"for_LDG.263"
  %".5821" = bitcast ptr %"R12" to ptr
  store float %".5820", ptr %".5821"
  ; LDG.E.SYS R24, [R6+0x4]
  %".5824" = load i32, ptr %"R6"
  %"zext.590" = zext i32 %".5824" to i64
  %".5825" = load i32, ptr %"R7"
  %"zext.591" = zext i32 %".5825" to i64
  %"shl.312" = shl i64 %"zext.591", 32
  %"or.285" = or i64 %"shl.312", %"zext.590"
  %".5826" = inttoptr i64 %"or.285" to ptr
  %".5827" = ptrtoint ptr %".5826" to i64
  %".5828" = add i64 %".5827", 4
  %"for_LDG.264" = inttoptr i64 %".5828" to ptr
  %".5829" = load float, ptr %"for_LDG.264"
  %".5830" = bitcast ptr %"R24" to ptr
  store float %".5829", ptr %".5830"
  ; LDG.E.SYS R35, [R8+0x8]
  %".5833" = load i32, ptr %"R8"
  %"zext.592" = zext i32 %".5833" to i64
  %".5834" = load i32, ptr %"R9"
  %"zext.593" = zext i32 %".5834" to i64
  %"shl.313" = shl i64 %"zext.593", 32
  %"or.286" = or i64 %"shl.313", %"zext.592"
  %".5835" = inttoptr i64 %"or.286" to ptr
  %".5836" = ptrtoint ptr %".5835" to i64
  %".5837" = add i64 %".5836", 8
  %"for_LDG.265" = inttoptr i64 %".5837" to ptr
  %".5838" = load float, ptr %"for_LDG.265"
  %".5839" = bitcast ptr %"R35" to ptr
  store float %".5838", ptr %".5839"
  ; LDG.E.SYS R34, [R4+0x8]
  %".5842" = load i32, ptr %"R4"
  %"zext.594" = zext i32 %".5842" to i64
  %".5843" = load i32, ptr %"R5"
  %"zext.595" = zext i32 %".5843" to i64
  %"shl.314" = shl i64 %"zext.595", 32
  %"or.287" = or i64 %"shl.314", %"zext.594"
  %".5844" = inttoptr i64 %"or.287" to ptr
  %".5845" = ptrtoint ptr %".5844" to i64
  %".5846" = add i64 %".5845", 8
  %"for_LDG.266" = inttoptr i64 %".5846" to ptr
  %".5847" = load float, ptr %"for_LDG.266"
  %".5848" = bitcast ptr %"R34" to ptr
  store float %".5847", ptr %".5848"
  ; LDG.E.SYS R36, [R6+0x8]
  %".5851" = load i32, ptr %"R6"
  %"zext.596" = zext i32 %".5851" to i64
  %".5852" = load i32, ptr %"R7"
  %"zext.597" = zext i32 %".5852" to i64
  %"shl.315" = shl i64 %"zext.597", 32
  %"or.288" = or i64 %"shl.315", %"zext.596"
  %".5853" = inttoptr i64 %"or.288" to ptr
  %".5854" = ptrtoint ptr %".5853" to i64
  %".5855" = add i64 %".5854", 8
  %"for_LDG.267" = inttoptr i64 %".5855" to ptr
  %".5856" = load float, ptr %"for_LDG.267"
  %".5857" = bitcast ptr %"R36" to ptr
  store float %".5856", ptr %".5857"
  ; LDG.E.SYS R37, [R8+0xc]
  %".5860" = load i32, ptr %"R8"
  %"zext.598" = zext i32 %".5860" to i64
  %".5861" = load i32, ptr %"R9"
  %"zext.599" = zext i32 %".5861" to i64
  %"shl.316" = shl i64 %"zext.599", 32
  %"or.289" = or i64 %"shl.316", %"zext.598"
  %".5862" = inttoptr i64 %"or.289" to ptr
  %".5863" = ptrtoint ptr %".5862" to i64
  %".5864" = add i64 %".5863", 12
  %"for_LDG.268" = inttoptr i64 %".5864" to ptr
  %".5865" = load float, ptr %"for_LDG.268"
  %".5866" = bitcast ptr %"R37" to ptr
  store float %".5865", ptr %".5866"
  ; LDG.E.SYS R38, [R4+0xc]
  %".5869" = load i32, ptr %"R4"
  %"zext.600" = zext i32 %".5869" to i64
  %".5870" = load i32, ptr %"R5"
  %"zext.601" = zext i32 %".5870" to i64
  %"shl.317" = shl i64 %"zext.601", 32
  %"or.290" = or i64 %"shl.317", %"zext.600"
  %".5871" = inttoptr i64 %"or.290" to ptr
  %".5872" = ptrtoint ptr %".5871" to i64
  %".5873" = add i64 %".5872", 12
  %"for_LDG.269" = inttoptr i64 %".5873" to ptr
  %".5874" = load float, ptr %"for_LDG.269"
  %".5875" = bitcast ptr %"R38" to ptr
  store float %".5874", ptr %".5875"
  ; LDG.E.SYS R39, [R6+0xc]
  %".5878" = load i32, ptr %"R6"
  %"zext.602" = zext i32 %".5878" to i64
  %".5879" = load i32, ptr %"R7"
  %"zext.603" = zext i32 %".5879" to i64
  %"shl.318" = shl i64 %"zext.603", 32
  %"or.291" = or i64 %"shl.318", %"zext.602"
  %".5880" = inttoptr i64 %"or.291" to ptr
  %".5881" = ptrtoint ptr %".5880" to i64
  %".5882" = add i64 %".5881", 12
  %"for_LDG.270" = inttoptr i64 %".5882" to ptr
  %".5883" = load float, ptr %"for_LDG.270"
  %".5884" = bitcast ptr %"R39" to ptr
  store float %".5883", ptr %".5884"
  ; IADD3 R22, R22, -0x4, RZ
  %".5887" = load i32, ptr %"R22"
  %"add.269" = add i32 %".5887", -4
  %"add.270" = add i32 %"add.269", 0
  store i32 %"add.270", ptr %"R22"
  ; IADD3 R23, R23, 0x4, RZ
  %".5890" = load i32, ptr %"R23"
  %"add.271" = add i32 %".5890", 4
  %"add.272" = add i32 %"add.271", 0
  store i32 %"add.272", ptr %"R23"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".5893" = load i32, ptr %"R22"
  %".5894" = load i1, ptr %"PT"
  %"cmp.48" = icmp ne i32 %".5893", 0
  %".5895" = and i1 %"cmp.48", %".5894"
  store i1 %".5895", ptr %"P0"
  ; FFMA R11, R11, R13, R44
  %".5898" = load float, ptr %"R11"
  %".5899" = load float, ptr %"R13"
  %".5900" = load float, ptr %"R44"
  %"fmul.239" = fmul float %".5898", %".5899"
  %"fadd.220" = fadd float %"fmul.239", %".5900"
  %".5901" = bitcast ptr %"R11" to ptr
  store float %"fadd.220", ptr %".5901"
  ; FFMA R10, R13, R10, R56
  %".5904" = load float, ptr %"R13"
  %".5905" = load float, ptr %"R10"
  %".5906" = load float, ptr %"R56"
  %"fmul.240" = fmul float %".5904", %".5905"
  %"fadd.221" = fadd float %"fmul.240", %".5906"
  %".5907" = bitcast ptr %"R10" to ptr
  store float %"fadd.221", ptr %".5907"
  ; FFMA R11, R12, R25, R11
  %".5910" = load float, ptr %"R12"
  %".5911" = load float, ptr %"R25"
  %".5912" = load float, ptr %"R11"
  %"fmul.241" = fmul float %".5910", %".5911"
  %"fadd.222" = fadd float %"fmul.241", %".5912"
  %".5913" = bitcast ptr %"R11" to ptr
  store float %"fadd.222", ptr %".5913"
  ; FFMA R10, R25, R24, R10
  %".5916" = load float, ptr %"R25"
  %".5917" = load float, ptr %"R24"
  %".5918" = load float, ptr %"R10"
  %"fmul.242" = fmul float %".5916", %".5917"
  %"fadd.223" = fadd float %"fmul.242", %".5918"
  %".5919" = bitcast ptr %"R10" to ptr
  store float %"fadd.223", ptr %".5919"
  ; FFMA R11, R34, R35, R11
  %".5922" = load float, ptr %"R34"
  %".5923" = load float, ptr %"R35"
  %".5924" = load float, ptr %"R11"
  %"fmul.243" = fmul float %".5922", %".5923"
  %"fadd.224" = fadd float %"fmul.243", %".5924"
  %".5925" = bitcast ptr %"R11" to ptr
  store float %"fadd.224", ptr %".5925"
  ; FFMA R10, R35, R36, R10
  %".5928" = load float, ptr %"R35"
  %".5929" = load float, ptr %"R36"
  %".5930" = load float, ptr %"R10"
  %"fmul.244" = fmul float %".5928", %".5929"
  %"fadd.225" = fadd float %"fmul.244", %".5930"
  %".5931" = bitcast ptr %"R10" to ptr
  store float %"fadd.225", ptr %".5931"
  ; FFMA R44, R38, R37, R11
  %".5934" = load float, ptr %"R38"
  %".5935" = load float, ptr %"R37"
  %".5936" = load float, ptr %"R11"
  %"fmul.245" = fmul float %".5934", %".5935"
  %"fadd.226" = fadd float %"fmul.245", %".5936"
  %".5937" = bitcast ptr %"R44" to ptr
  store float %"fadd.226", ptr %".5937"
  ; FFMA R56, R37, R39, R10
  %".5940" = load float, ptr %"R37"
  %".5941" = load float, ptr %"R39"
  %".5942" = load float, ptr %"R10"
  %"fmul.246" = fmul float %".5940", %".5941"
  %"fadd.227" = fadd float %"fmul.246", %".5942"
  %".5943" = bitcast ptr %"R56" to ptr
  store float %"fadd.227", ptr %".5943"
  ; @P0 BRA `(.L_x_28)
  %".5946" = load i1, ptr %"P0"
  %".5947" = icmp ne i1 %".5946", 1
  br i1 %".5947", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".5950" = load i32, ptr %"R48"
  %".5951" = load i1, ptr %"PT"
  %"cmp.49" = icmp ne i32 %".5950", 0
  %".5952" = and i1 %"cmp.49", %".5951"
  store i1 %".5952", ptr %"P0"
  ; @!P0 BRA `(.L_x_26)
  %".5955" = load i1, ptr %"P0"
  %".5956" = icmp eq i1 %".5955", 1
  br i1 %".5956", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".5959" = load i32, ptr %"R0"
  %".5960" = load i32, ptr %"R23"
  %"add.273" = add i32 %".5959", %".5960"
  %"add.274" = add i32 %"add.273", 0
  store i32 %"add.274", ptr %"R5"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9"
  ; LEA R8, R2.reuse, R5, 0x2
  %".5965" = load i32, ptr %"R2"
  %".5966" = load i32, ptr %"R5"
  %"shl.319" = shl i32 %".5965", 2
  %"add.275" = add i32 %"shl.319", %".5966"
  store i32 %"add.275", ptr %"R8"
  ; IMAD R6, R2, 0x3, R5
  %".5969" = load i32, ptr %"R2"
  %".5970" = load i32, ptr %"R5"
  %"mul.86" = mul i32 %".5969", 3
  %"add.276" = add i32 %"mul.86", %".5970"
  store i32 %"add.276", ptr %"R6"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".5973" = load i32, ptr %"R23"
  %".5974" = load i32, ptr %"R9"
  %"mul.87" = mul i32 %".5973", %".5974"
  %"add.277" = add i32 %"mul.87", %"Arg_3"
  store i32 %"add.277", ptr %"R4"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".5977" = load i32, ptr %"R6"
  %".5978" = load i32, ptr %"R9"
  %"mul.88" = mul i32 %".5977", %".5978"
  %"add.278" = add i32 %"mul.88", %"Arg_4"
  store i32 %"add.278", ptr %"R6"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".5981" = load i32, ptr %"R8"
  %".5982" = load i32, ptr %"R9"
  %"mul.89" = mul i32 %".5981", %".5982"
  %"add.279" = add i32 %"mul.89", %"Arg_4"
  store i32 %"add.279", ptr %"R8"
  ; LDG.E.SYS R13, [R4]
  %".5985" = load i32, ptr %"R4"
  %"zext.604" = zext i32 %".5985" to i64
  %".5986" = load i32, ptr %"R5"
  %"zext.605" = zext i32 %".5986" to i64
  %"shl.320" = shl i64 %"zext.605", 32
  %"or.292" = or i64 %"shl.320", %"zext.604"
  %".5987" = inttoptr i64 %"or.292" to ptr
  %".5988" = ptrtoint ptr %".5987" to i64
  %".5989" = add i64 %".5988", 0
  %"for_LDG.271" = inttoptr i64 %".5989" to ptr
  %".5990" = load float, ptr %"for_LDG.271"
  %".5991" = bitcast ptr %"R13" to ptr
  store float %".5990", ptr %".5991"
  ; LDG.E.SYS R11, [R6]
  %".5994" = load i32, ptr %"R6"
  %"zext.606" = zext i32 %".5994" to i64
  %".5995" = load i32, ptr %"R7"
  %"zext.607" = zext i32 %".5995" to i64
  %"shl.321" = shl i64 %"zext.607", 32
  %"or.293" = or i64 %"shl.321", %"zext.606"
  %".5996" = inttoptr i64 %"or.293" to ptr
  %".5997" = ptrtoint ptr %".5996" to i64
  %".5998" = add i64 %".5997", 0
  %"for_LDG.272" = inttoptr i64 %".5998" to ptr
  %".5999" = load float, ptr %"for_LDG.272"
  %".6000" = bitcast ptr %"R11" to ptr
  store float %".5999", ptr %".6000"
  ; LDG.E.SYS R10, [R8]
  %".6003" = load i32, ptr %"R8"
  %"zext.608" = zext i32 %".6003" to i64
  %".6004" = load i32, ptr %"R9"
  %"zext.609" = zext i32 %".6004" to i64
  %"shl.322" = shl i64 %"zext.609", 32
  %"or.294" = or i64 %"shl.322", %"zext.608"
  %".6005" = inttoptr i64 %"or.294" to ptr
  %".6006" = ptrtoint ptr %".6005" to i64
  %".6007" = add i64 %".6006", 0
  %"for_LDG.273" = inttoptr i64 %".6007" to ptr
  %".6008" = load float, ptr %"for_LDG.273"
  %".6009" = bitcast ptr %"R10" to ptr
  store float %".6008", ptr %".6009"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".6012" = load i32, ptr %"R48"
  %".6013" = load i1, ptr %"PT"
  %"cmp.50" = icmp ne i32 %".6012", 1
  %".6014" = and i1 %"cmp.50", %".6013"
  store i1 %".6014", ptr %"P0"
  ; FFMA R44, R11, R13, R44
  %".6017" = load float, ptr %"R11"
  %".6018" = load float, ptr %"R13"
  %".6019" = load float, ptr %"R44"
  %"fmul.247" = fmul float %".6017", %".6018"
  %"fadd.228" = fadd float %"fmul.247", %".6019"
  %".6020" = bitcast ptr %"R44" to ptr
  store float %"fadd.228", ptr %".6020"
  ; FFMA R56, R13, R10, R56
  %".6023" = load float, ptr %"R13"
  %".6024" = load float, ptr %"R10"
  %".6025" = load float, ptr %"R56"
  %"fmul.248" = fmul float %".6023", %".6024"
  %"fadd.229" = fadd float %"fmul.248", %".6025"
  %".6026" = bitcast ptr %"R56" to ptr
  store float %"fadd.229", ptr %".6026"
  ; @!P0 BRA `(.L_x_26)
  %".6029" = load i1, ptr %"P0"
  %".6030" = icmp eq i1 %".6029", 1
  br i1 %".6030", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".6033" = load i32, ptr %"R48"
  %".6034" = load i1, ptr %"PT"
  %"cmp.51" = icmp ne i32 %".6033", 2
  %".6035" = and i1 %"cmp.51", %".6034"
  store i1 %".6035", ptr %"P0"
  ; LDG.E.SYS R11, [R6+0x4]
  %".6038" = load i32, ptr %"R6"
  %"zext.610" = zext i32 %".6038" to i64
  %".6039" = load i32, ptr %"R7"
  %"zext.611" = zext i32 %".6039" to i64
  %"shl.323" = shl i64 %"zext.611", 32
  %"or.295" = or i64 %"shl.323", %"zext.610"
  %".6040" = inttoptr i64 %"or.295" to ptr
  %".6041" = ptrtoint ptr %".6040" to i64
  %".6042" = add i64 %".6041", 4
  %"for_LDG.274" = inttoptr i64 %".6042" to ptr
  %".6043" = load float, ptr %"for_LDG.274"
  %".6044" = bitcast ptr %"R11" to ptr
  store float %".6043", ptr %".6044"
  ; LDG.E.SYS R13, [R4+0x4]
  %".6047" = load i32, ptr %"R4"
  %"zext.612" = zext i32 %".6047" to i64
  %".6048" = load i32, ptr %"R5"
  %"zext.613" = zext i32 %".6048" to i64
  %"shl.324" = shl i64 %"zext.613", 32
  %"or.296" = or i64 %"shl.324", %"zext.612"
  %".6049" = inttoptr i64 %"or.296" to ptr
  %".6050" = ptrtoint ptr %".6049" to i64
  %".6051" = add i64 %".6050", 4
  %"for_LDG.275" = inttoptr i64 %".6051" to ptr
  %".6052" = load float, ptr %"for_LDG.275"
  %".6053" = bitcast ptr %"R13" to ptr
  store float %".6052", ptr %".6053"
  ; LDG.E.SYS R10, [R8+0x4]
  %".6056" = load i32, ptr %"R8"
  %"zext.614" = zext i32 %".6056" to i64
  %".6057" = load i32, ptr %"R9"
  %"zext.615" = zext i32 %".6057" to i64
  %"shl.325" = shl i64 %"zext.615", 32
  %"or.297" = or i64 %"shl.325", %"zext.614"
  %".6058" = inttoptr i64 %"or.297" to ptr
  %".6059" = ptrtoint ptr %".6058" to i64
  %".6060" = add i64 %".6059", 4
  %"for_LDG.276" = inttoptr i64 %".6060" to ptr
  %".6061" = load float, ptr %"for_LDG.276"
  %".6062" = bitcast ptr %"R10" to ptr
  store float %".6061", ptr %".6062"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".6065" = load i1, ptr %"P0"
  %".6066" = icmp ne i1 %".6065", 1
  br i1 %".6066", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  %".6069" = load i32, ptr %"R6"
  %"zext.616" = zext i32 %".6069" to i64
  %".6070" = load i32, ptr %"R7"
  %"zext.617" = zext i32 %".6070" to i64
  %"shl.326" = shl i64 %"zext.617", 32
  %"or.298" = or i64 %"shl.326", %"zext.616"
  %".6071" = inttoptr i64 %"or.298" to ptr
  %".6072" = ptrtoint ptr %".6071" to i64
  %".6073" = add i64 %".6072", 8
  %"for_LDG.277" = inttoptr i64 %".6073" to ptr
  %".6074" = load float, ptr %"for_LDG.277"
  %".6075" = bitcast ptr %"R23" to ptr
  store float %".6074", ptr %".6075"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".6080" = load i1, ptr %"P0"
  %".6081" = icmp ne i1 %".6080", 1
  br i1 %".6081", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  %".6084" = load i32, ptr %"R4"
  %"zext.618" = zext i32 %".6084" to i64
  %".6085" = load i32, ptr %"R5"
  %"zext.619" = zext i32 %".6085" to i64
  %"shl.327" = shl i64 %"zext.619", 32
  %"or.299" = or i64 %"shl.327", %"zext.618"
  %".6086" = inttoptr i64 %"or.299" to ptr
  %".6087" = ptrtoint ptr %".6086" to i64
  %".6088" = add i64 %".6087", 8
  %"for_LDG.278" = inttoptr i64 %".6088" to ptr
  %".6089" = load float, ptr %"for_LDG.278"
  %".6090" = bitcast ptr %"R25" to ptr
  store float %".6089", ptr %".6090"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".6095" = load i1, ptr %"P0"
  %".6096" = icmp ne i1 %".6095", 1
  br i1 %".6096", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  %".6099" = load i32, ptr %"R8"
  %"zext.620" = zext i32 %".6099" to i64
  %".6100" = load i32, ptr %"R9"
  %"zext.621" = zext i32 %".6100" to i64
  %"shl.328" = shl i64 %"zext.621", 32
  %"or.300" = or i64 %"shl.328", %"zext.620"
  %".6101" = inttoptr i64 %"or.300" to ptr
  %".6102" = ptrtoint ptr %".6101" to i64
  %".6103" = add i64 %".6102", 8
  %"for_LDG.279" = inttoptr i64 %".6103" to ptr
  %".6104" = load float, ptr %"for_LDG.279"
  %".6105" = bitcast ptr %"R12" to ptr
  store float %".6104", ptr %".6105"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".6110" = load float, ptr %"R11"
  %".6111" = load float, ptr %"R13"
  %".6112" = load float, ptr %"R44"
  %"fmul.249" = fmul float %".6110", %".6111"
  %"fadd.230" = fadd float %"fmul.249", %".6112"
  %".6113" = bitcast ptr %"R44" to ptr
  store float %"fadd.230", ptr %".6113"
  ; FFMA R56, R13, R10, R56
  %".6116" = load float, ptr %"R13"
  %".6117" = load float, ptr %"R10"
  %".6118" = load float, ptr %"R56"
  %"fmul.250" = fmul float %".6116", %".6117"
  %"fadd.231" = fadd float %"fmul.250", %".6118"
  %".6119" = bitcast ptr %"R56" to ptr
  store float %"fadd.231", ptr %".6119"
  ; @P0 FFMA R44, R23, R25, R44
  %".6122" = load i1, ptr %"P0"
  %".6123" = icmp ne i1 %".6122", 1
  br i1 %".6123", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".6126" = load float, ptr %"R23"
  %".6127" = load float, ptr %"R25"
  %".6128" = load float, ptr %"R44"
  %"fmul.251" = fmul float %".6126", %".6127"
  %"fadd.232" = fadd float %"fmul.251", %".6128"
  %".6129" = bitcast ptr %"R44" to ptr
  store float %"fadd.232", ptr %".6129"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".6134" = load i1, ptr %"P0"
  %".6135" = icmp ne i1 %".6134", 1
  br i1 %".6135", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".6138" = load float, ptr %"R25"
  %".6139" = load float, ptr %"R12"
  %".6140" = load float, ptr %"R56"
  %"fmul.252" = fmul float %".6138", %".6139"
  %"fadd.233" = fadd float %"fmul.252", %".6140"
  %".6141" = bitcast ptr %"R56" to ptr
  store float %"fadd.233", ptr %".6141"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  %".6146" = load i32, ptr %"R26"
  %"zext.622" = zext i32 %".6146" to i64
  %"zext.623" = zext i32 0 to i64
  %"shl.329" = shl i64 %"zext.623", 32
  %"or.301" = or i64 %"shl.329", %"zext.622"
  %".6147" = inttoptr i64 %"or.301" to ptr
  %".6148" = ptrtoint ptr %".6147" to i64
  %".6149" = add i64 %".6148", 0
  %"for_LDG.280" = inttoptr i64 %".6149" to ptr
  %".6150" = load float, ptr %"for_LDG.280"
  %".6151" = bitcast ptr %"R5" to ptr
  store float %".6150", ptr %".6151"
  ; MOV R4, 0x3bbb989d
  %".6154" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".6154"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  %".6158" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".6158"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".6162" = load float, ptr %"R5"
  %".6163" = load float, ptr %"R44"
  %"fadd.234" = fadd float %".6162", %".6163"
  %".6164" = bitcast ptr %"R5" to ptr
  store float %"fadd.234", ptr %".6164"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".6167" = load float, ptr %"R5"
  %".6168" = fneg float %".6167"
  %".6169" = load float, ptr %"R4"
  %"fmul.253" = fmul float %".6168", %".6169"
  %"fadd.235" = fadd float %"fmul.253", 0x3fe0000000000000
  %".6170" = bitcast ptr %"R4" to ptr
  store float %"fadd.235", ptr %".6170"
  ; FFMA.RM R4, R4, R7, 12582913
  %".6173" = load float, ptr %"R4"
  %".6174" = load float, ptr %"R7"
  %"fmul.254" = fmul float %".6173", %".6174"
  %"fadd.236" = fadd float %"fmul.254", 0x4168000020000000
  %".6175" = bitcast ptr %"R4" to ptr
  store float %"fadd.236", ptr %".6175"
  ; FADD R6, R4.reuse, -12583039
  %".6178" = load float, ptr %"R4"
  %"fadd.237" = fadd float %".6178", 0xc168000fe0000000
  %".6179" = bitcast ptr %"R6" to ptr
  store float %"fadd.237", ptr %".6179"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".6182" = icmp ult i32 23, 32
  %"SHF_min.20" = select  i1 %".6182", i32 23, i32 32
  %".6183" = load i32, ptr %"R4"
  %"zext.624" = zext i32 0 to i64
  %"zext.625" = zext i32 %".6183" to i64
  %"zext.626" = zext i32 23 to i64
  %"shl.330" = shl i64 %"zext.624", 32
  %"or.302" = or i64 %"shl.330", %"zext.625"
  %"shl.331" = shl i64 %"or.302", %"zext.626"
  %"and.12" = and i64 %"shl.331", 4294967295
  %"trunc32.20" = trunc i64 %"and.12" to i32
  store i32 %"trunc32.20", ptr %"R4"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".6186" = load float, ptr %"R5"
  %".6187" = fneg float %".6186"
  %".6188" = load float, ptr %"R6"
  %".6189" = fneg float %".6188"
  %"fmul.255" = fmul float %".6187", 0x3ff7154760000000
  %"fadd.238" = fadd float %"fmul.255", %".6189"
  %".6190" = bitcast ptr %"R6" to ptr
  store float %"fadd.238", ptr %".6190"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".6193" = load float, ptr %"R5"
  %".6194" = fneg float %".6193"
  %".6195" = load float, ptr %"R6"
  %"fmul.256" = fmul float %".6194", 0x3e54ae0c00000000
  %"fadd.239" = fadd float %"fmul.256", %".6195"
  %".6196" = bitcast ptr %"R6" to ptr
  store float %"fadd.239", ptr %".6196"
  ; MUFU.EX2 R5, R6
  %".6199" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".6199")
  %".6200" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".6200"
  ; FFMA R24, R4, R5, 1
  %".6203" = load float, ptr %"R4"
  %".6204" = load float, ptr %"R5"
  %"fmul.257" = fmul float %".6203", %".6204"
  %"fadd.240" = fadd float %"fmul.257", 0x3ff0000000000000
  %".6205" = bitcast ptr %"R24" to ptr
  store float %"fadd.240", ptr %".6205"
  ; IADD3 R4, R24, 0x1800000, RZ
  %".6208" = load i32, ptr %"R24"
  %"add.280" = add i32 %".6208", 25165824
  %"add.281" = add i32 %"add.280", 0
  store i32 %"add.281", ptr %"R4"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".6211" = load i32, ptr %"R4"
  %".6212" = and i32 %".6211", 2139095040
  store i32 %".6212", ptr %"R4"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".6215" = load i32, ptr %"R4"
  %".6216" = load i1, ptr %"PT"
  %"cmp.52" = icmp sgt i32 %".6215", 33554431
  %".6217" = and i1 %"cmp.52", %".6216"
  store i1 %".6217", ptr %"P0"
  ; @P0 BRA `(.L_x_33)
  %".6220" = load i1, ptr %"P0"
  %".6221" = icmp ne i1 %".6220", 1
  br i1 %".6221", label %".L_x_33", label %".L_x_26_split_0x3910_CALL_0x3930"
.L_x_26_split_0x3910_CALL_0x3930:
  ; MOV R10, 0x3930
  store i32 14640, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".6228" = icmp ult i32 1, 32
  %"SHF_min.21" = select  i1 %".6228", i32 1, i32 32
  %".6229" = load i32, ptr %"R24"
  %"zext.627" = zext i32 0 to i64
  %"zext.628" = zext i32 %".6229" to i64
  %"zext.629" = zext i32 1 to i64
  %"shl.332" = shl i64 %"zext.627", 32
  %"or.303" = or i64 %"shl.332", %"zext.628"
  %"shl.333" = shl i64 %"or.303", %"zext.629"
  %"and.13" = and i64 %"shl.333", 4294967295
  %"trunc32.21" = trunc i64 %"and.13" to i32
  store i32 %"trunc32.21", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".6234" = icmp ult i32 24, 32
  %"SHF_min.22" = select  i1 %".6234", i32 24, i32 32
  %".6235" = load i32, ptr %"R11"
  %"zext.630" = zext i32 %".6235" to i64
  %"zext.631" = zext i32 0 to i64
  %"zext.632" = zext i32 24 to i64
  %"shl.334" = shl i64 %"zext.630", 32
  %"or.304" = or i64 %"shl.334", %"zext.631"
  %"lshr.13" = lshr i64 %"or.304", %"zext.632"
  %"lshr.14" = lshr i64 %"lshr.13", 32
  %"trunc32.22" = trunc i64 %"lshr.14" to i32
  store i32 %"trunc32.22", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".6238" = load i32, ptr %"R25"
  %".6239" = load i1, ptr %"PT"
  %"cmp.53" = icmp ne i32 %".6238", 0
  %".6240" = and i1 %"cmp.53", %".6239"
  store i1 %".6240", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".6243" = load i1, ptr %"P0"
  %".6244" = icmp ne i1 %".6243", 1
  br i1 %".6244", label %".L_x_49...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".6247" = icmp ult i32 1, 32
  %"SHF_min.23" = select  i1 %".6247", i32 1, i32 32
  %".6248" = load i32, ptr %"R24"
  %"zext.633" = zext i32 0 to i64
  %"zext.634" = zext i32 %".6248" to i64
  %"zext.635" = zext i32 1 to i64
  %"shl.335" = shl i64 %"zext.633", 32
  %"or.305" = or i64 %"shl.335", %"zext.634"
  %"shl.336" = shl i64 %"or.305", %"zext.635"
  %"and.14" = and i64 %"shl.336", 4294967295
  %"trunc32.23" = trunc i64 %"and.14" to i32
  store i32 %"trunc32.23", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".6251" = load i32, ptr %"R11"
  %".6252" = load i1, ptr %"PT"
  %"cmp.54" = icmp ne i32 %".6251", 0
  %".6253" = and i1 %"cmp.54", %".6252"
  store i1 %".6253", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6256" = load i1, ptr %"P0"
  %".6257" = icmp ne i1 %".6256", 1
  br i1 %".6257", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6260" = load float, ptr %"R24"
  %"fmul.258" = fmul float %".6260", 0x43f0000000000000
  %"fadd.241" = fadd float %"fmul.258",              0x0
  %".6261" = bitcast ptr %"R12" to ptr
  store float %"fadd.241", ptr %".6261"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6266" = load float, ptr %"R24"
  %"fmul.259" = fmul float %".6266", 0x43f0000000000000
  %"fadd.242" = fadd float %"fmul.259",              0x0
  %".6267" = bitcast ptr %"R12" to ptr
  store float %"fadd.242", ptr %".6267"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3:
  ; @!P0 MUFU.RCP R11, R24
  %".6272" = load i1, ptr %"P0"
  %".6273" = icmp eq i1 %".6272", 1
  br i1 %".6273", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".6276" = load float, ptr %"R24"
  %".6277" = fdiv float 0x3ff0000000000000, %".6276"
  %".6278" = bitcast ptr %"R11" to ptr
  store float %".6277", ptr %".6278"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3:
  ; MUFU.RCP R11, R24
  %".6283" = load float, ptr %"R24"
  %".6284" = fdiv float 0x3ff0000000000000, %".6283"
  %".6285" = bitcast ptr %"R11" to ptr
  store float %".6284", ptr %".6285"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3:
  ; @P0 MUFU.RCP R13, R12
  %".6290" = load i1, ptr %"P0"
  %".6291" = icmp ne i1 %".6290", 1
  br i1 %".6291", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".6294" = load float, ptr %"R12"
  %".6295" = fdiv float 0x3ff0000000000000, %".6294"
  %".6296" = bitcast ptr %"R13" to ptr
  store float %".6295", ptr %".6296"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3:
  ; MUFU.RCP R13, R12
  %".6301" = load float, ptr %"R12"
  %".6302" = fdiv float 0x3ff0000000000000, %".6301"
  %".6303" = bitcast ptr %"R13" to ptr
  store float %".6302", ptr %".6303"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3:
  ; @P0 FFMA R22, R12, R13, -1
  %".6308" = load i1, ptr %"P0"
  %".6309" = icmp ne i1 %".6308", 1
  br i1 %".6309", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".6312" = load float, ptr %"R12"
  %".6313" = load float, ptr %"R13"
  %"fmul.260" = fmul float %".6312", %".6313"
  %"fadd.243" = fadd float %"fmul.260", 0xbff0000000000000
  %".6314" = bitcast ptr %"R22" to ptr
  store float %"fadd.243", ptr %".6314"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3:
  ; FFMA R22, R12, R13, -1
  %".6319" = load float, ptr %"R12"
  %".6320" = load float, ptr %"R13"
  %"fmul.261" = fmul float %".6319", %".6320"
  %"fadd.244" = fadd float %"fmul.261", 0xbff0000000000000
  %".6321" = bitcast ptr %"R22" to ptr
  store float %"fadd.244", ptr %".6321"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".6326" = load i1, ptr %"P0"
  %".6327" = icmp ne i1 %".6326", 1
  br i1 %".6327", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".6330" = load float, ptr %"R22"
  %".6331" = fneg float %".6330"
  %"fadd.245" = fadd float %".6331",              0x0
  %".6332" = bitcast ptr %"R22" to ptr
  store float %"fadd.245", ptr %".6332"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3:
  ; FADD.FTZ R22, -R22, -RZ
  %".6337" = load float, ptr %"R22"
  %".6338" = fneg float %".6337"
  %"fadd.246" = fadd float %".6338",              0x0
  %".6339" = bitcast ptr %"R22" to ptr
  store float %"fadd.246", ptr %".6339"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3:
  ; @P0 FFMA R22, R13, R22, R13
  %".6344" = load i1, ptr %"P0"
  %".6345" = icmp ne i1 %".6344", 1
  br i1 %".6345", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".6348" = load float, ptr %"R13"
  %".6349" = load float, ptr %"R22"
  %".6350" = load float, ptr %"R13"
  %"fmul.262" = fmul float %".6348", %".6349"
  %"fadd.247" = fadd float %"fmul.262", %".6350"
  %".6351" = bitcast ptr %"R22" to ptr
  store float %"fadd.247", ptr %".6351"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3:
  ; FFMA R22, R13, R22, R13
  %".6356" = load float, ptr %"R13"
  %".6357" = load float, ptr %"R22"
  %".6358" = load float, ptr %"R13"
  %"fmul.263" = fmul float %".6356", %".6357"
  %"fadd.248" = fadd float %"fmul.263", %".6358"
  %".6359" = bitcast ptr %"R22" to ptr
  store float %"fadd.248", ptr %".6359"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6364" = load i1, ptr %"P0"
  %".6365" = icmp ne i1 %".6364", 1
  br i1 %".6365", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6368" = load float, ptr %"R22"
  %"fmul.264" = fmul float %".6368", 0x43f0000000000000
  %"fadd.249" = fadd float %"fmul.264",              0x0
  %".6369" = bitcast ptr %"R11" to ptr
  store float %"fadd.249", ptr %".6369"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6374" = load float, ptr %"R22"
  %"fmul.265" = fmul float %".6374", 0x43f0000000000000
  %"fadd.250" = fadd float %"fmul.265",              0x0
  %".6375" = bitcast ptr %"R11" to ptr
  store float %"fadd.250", ptr %".6375"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...3:
  ; BRA `(.L_x_50)
  br label %".L_x_50...3"
.L_x_49...3:
  ; IADD3 R34, R25, -0xfd, RZ
  %".6382" = load i32, ptr %"R25"
  %"add.282" = add i32 %".6382", -253
  %"add.283" = add i32 %"add.282", 0
  store i32 %"add.283", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".6385" = load i32, ptr %"R34"
  %".6386" = load i1, ptr %"PT"
  %"cmp.55" = icmp sgt i32 %".6385", 1
  %".6387" = and i1 %"cmp.55", %".6386"
  store i1 %".6387", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".6390" = load i1, ptr %"P0"
  %".6391" = icmp ne i1 %".6390", 1
  br i1 %".6391", label %".L_x_51...3", label %".L_x_49_split_0x4a30...3"
.L_x_49_split_0x4a30...3:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".6394" = load float, ptr %"R24"
  %".6395" = bitcast float %".6394" to i32
  %".6396" = and i32 %".6395", 8388607
  store i32 %".6396", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".6401" = load i32, ptr %"R11"
  %".6402" = or i32 %".6401", 1065353216
  store i32 %".6402", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".6405" = load i32, ptr %"R34"
  %".6406" = icmp ult i32 %".6405", 32
  %"SHF_min.24" = select  i1 %".6406", i32 %".6405", i32 32
  %".6407" = load i32, ptr %"R23"
  %".6408" = load i32, ptr %"R34"
  %"zext.636" = zext i32 0 to i64
  %"zext.637" = zext i32 %".6407" to i64
  %"zext.638" = zext i32 %".6408" to i64
  %"shl.337" = shl i64 %"zext.636", 32
  %"or.306" = or i64 %"shl.337", %"zext.637"
  %"shl.338" = shl i64 %"or.306", %"zext.638"
  %"and.15" = and i64 %"shl.338", 4294967295
  %"trunc32.24" = trunc i64 %"and.15" to i32
  store i32 %"trunc32.24", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".6411" = load float, ptr %"R11"
  %".6412" = fdiv float 0x3ff0000000000000, %".6411"
  %".6413" = bitcast ptr %"R12" to ptr
  store float %".6412", ptr %".6413"
  ; FFMA R13, R11, R12, -1
  %".6416" = load float, ptr %"R11"
  %".6417" = load float, ptr %"R12"
  %"fmul.266" = fmul float %".6416", %".6417"
  %"fadd.251" = fadd float %"fmul.266", 0xbff0000000000000
  %".6418" = bitcast ptr %"R13" to ptr
  store float %"fadd.251", ptr %".6418"
  ; FADD.FTZ R13, -R13, -RZ
  %".6421" = load float, ptr %"R13"
  %".6422" = fneg float %".6421"
  %"fadd.252" = fadd float %".6422",              0x0
  %".6423" = bitcast ptr %"R13" to ptr
  store float %"fadd.252", ptr %".6423"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".6426" = load float, ptr %"R12"
  %".6427" = load float, ptr %"R13"
  %".6428" = load float, ptr %"R12"
  %"fmul.267" = fmul float %".6426", %".6427"
  %"fadd.253" = fadd float %"fmul.267", %".6428"
  %".6429" = bitcast ptr %"R22" to ptr
  store float %"fadd.253", ptr %".6429"
  ; FFMA.RP R13, R12, R13, R12
  %".6432" = load float, ptr %"R12"
  %".6433" = load float, ptr %"R13"
  %".6434" = load float, ptr %"R12"
  %"fmul.268" = fmul float %".6432", %".6433"
  %"fadd.254" = fadd float %"fmul.268", %".6434"
  %".6435" = bitcast ptr %"R13" to ptr
  store float %"fadd.254", ptr %".6435"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".6438" = load float, ptr %"R22"
  %".6439" = bitcast float %".6438" to i32
  %".6440" = and i32 %".6439", 8388607
  store i32 %".6440", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".6443" = load float, ptr %"R22"
  %".6444" = load float, ptr %"R13"
  %".6445" = load i1, ptr %"PT"
  %"fcmp_ordered.2" = fcmp une float %".6443", %".6444"
  %".6446" = and i1 %"fcmp_ordered.2", %".6445"
  store i1 %".6446", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".6449" = load i32, ptr %"R12"
  %".6450" = or i32 %".6449", 8388608
  store i32 %".6450", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".6453" = load i1, ptr %"P0"
  %".6454" = icmp eq i1 %".6453", 1
  %"sel.4" = select  i1 %".6454", i32 0, i32 4294967295
  store i32 %"sel.4", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".6457" = load i32, ptr %"R23"
  %".6458" = load i32, ptr %"R12"
  %".6459" = and i32 %".6457", %".6458"
  store i32 %".6459", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".6462" = load i32, ptr %"R13"
  %".6463" = sub i32 0, %".6462"
  %"add.284" = add i32 %".6463", 0
  %"add.285" = add i32 %"add.284", 0
  store i32 %"add.285", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".6466" = load i32, ptr %"R34"
  %".6467" = icmp ult i32 %".6466", 32
  %"SHF_min.25" = select  i1 %".6467", i32 %".6466", i32 32
  %".6468" = load i32, ptr %"R23"
  %".6469" = load i32, ptr %"R34"
  %"zext.639" = zext i32 %".6468" to i64
  %"zext.640" = zext i32 0 to i64
  %"zext.641" = zext i32 %".6469" to i64
  %"shl.339" = shl i64 %"zext.639", 32
  %"or.307" = or i64 %"shl.339", %"zext.640"
  %"lshr.15" = lshr i64 %"or.307", %"zext.641"
  %"lshr.16" = lshr i64 %"lshr.15", 32
  %"trunc32.25" = trunc i64 %"lshr.16" to i32
  store i32 %"trunc32.25", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".6472" = load i32, ptr %"R13"
  %".6473" = load i32, ptr %"R34"
  %".6474" = load i32, ptr %"R12"
  %"LOP3_result.8" = call i32 @"custom_lop3"(i32 %".6474", i32 0, i32 %".6472", i32 %".6473")
  %".6475" = trunc i32 %"LOP3_result.8" to i1
  store i1 %".6475", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".6478" = load i32, ptr %"R23"
  %"LOP3_result.9" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".6478", i32 1)
  %".6479" = trunc i32 %"LOP3_result.9" to i1
  store i1 %".6479", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".6482" = load i32, ptr %"R23"
  %"LOP3_result.10" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".6482", i32 2)
  %".6483" = trunc i32 %"LOP3_result.10" to i1
  store i1 %".6483", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".6486" = load i1, ptr %"P0"
  %".6487" = sub i1 0, %".6486"
  %".6488" = load i1, ptr %"P1"
  %".6489" = sub i1 0, %".6488"
  %".6490" = or i1 %".6487", %".6489"
  %".6491" = and i1 %".6490", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".6493" = load float, ptr %"R24"
  %".6494" = bitcast float %".6493" to i32
  %"LOP3_result.11" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".6494", i32 8388607)
  %".6495" = trunc i32 %"LOP3_result.11" to i1
  store i1 %".6495", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".6498" = load i1, ptr %"P0"
  %".6499" = icmp eq i1 %".6498", 1
  %"sel.5" = select  i1 %".6499", i32 0, i32 1
  store i32 %"sel.5", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".6502" = load i32, ptr %"R11"
  %".6503" = sub i32 0, %".6502"
  %"add.286" = add i32 %".6503", 0
  %"add.287" = add i32 %"add.286", 0
  store i32 %"add.287", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".6506" = load i32, ptr %"R11"
  %".6507" = load i1, ptr %"PT"
  %"cmp.56" = icmp sge i32 %".6506", 0
  %".6508" = and i1 %"cmp.56", %".6507"
  store i1 %".6508", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".6511" = load i32, ptr %"R25"
  %"add.288" = add i32 %".6511", -252
  %"add.289" = add i32 %"add.288", 0
  store i32 %"add.289", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".6514" = load i32, ptr %"R11"
  %".6515" = icmp ult i32 %".6514", 32
  %"SHF_min.26" = select  i1 %".6515", i32 %".6514", i32 32
  %".6516" = load i32, ptr %"R12"
  %".6517" = load i32, ptr %"R11"
  %"zext.642" = zext i32 %".6516" to i64
  %"zext.643" = zext i32 0 to i64
  %"zext.644" = zext i32 %".6517" to i64
  %"shl.340" = shl i64 %"zext.642", 32
  %"or.308" = or i64 %"shl.340", %"zext.643"
  %"lshr.17" = lshr i64 %"or.308", %"zext.644"
  %"lshr.18" = lshr i64 %"lshr.17", 32
  %"trunc32.26" = trunc i64 %"lshr.18" to i32
  store i32 %"trunc32.26", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".6520" = load i1, ptr %"P0"
  %".6521" = icmp eq i1 %".6520", 1
  br i1 %".6521", label %".L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3"
.L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".6524" = load i32, ptr %"R11"
  %"add.290" = add i32 %".6524", 1
  %"add.291" = add i32 %"add.290", 0
  store i32 %"add.291", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3:
  ; IADD3 R11, R11, 0x1, RZ
  %".6529" = load i32, ptr %"R11"
  %"add.292" = add i32 %".6529", 1
  %"add.293" = add i32 %"add.292", 0
  store i32 %"add.293", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...3"
.L_x_49_split_0x4be0...3:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".6534" = load i1, ptr %"P1"
  %".6535" = icmp eq i1 %".6534", 1
  br i1 %".6535", label %".L_x_49_split_0x4be0...3_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...3"
.L_x_49_split_0x4be0...3_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".6538" = icmp ult i32 1, 32
  %"SHF_min.27" = select  i1 %".6538", i32 1, i32 32
  %".6539" = load i32, ptr %"R11"
  %"zext.645" = zext i32 0 to i64
  %"zext.646" = zext i32 %".6539" to i64
  %"zext.647" = zext i32 1 to i64
  %"shl.341" = shl i64 %"zext.645", 32
  %"or.309" = or i64 %"shl.341", %"zext.646"
  %"shl.342" = shl i64 %"or.309", %"zext.647"
  %"and.16" = and i64 %"shl.342", 4294967295
  %"trunc32.27" = trunc i64 %"and.16" to i32
  store i32 %"trunc32.27", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...3)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...3"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...3:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".6544" = icmp ult i32 1, 32
  %"SHF_min.28" = select  i1 %".6544", i32 1, i32 32
  %".6545" = load i32, ptr %"R11"
  %"zext.648" = zext i32 0 to i64
  %"zext.649" = zext i32 %".6545" to i64
  %"zext.650" = zext i32 1 to i64
  %"shl.343" = shl i64 %"zext.648", 32
  %"or.310" = or i64 %"shl.343", %"zext.649"
  %"shl.344" = shl i64 %"or.310", %"zext.650"
  %"and.17" = and i64 %"shl.344", 4294967295
  %"trunc32.28" = trunc i64 %"and.17" to i32
  store i32 %"trunc32.28", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...3"
.L_x_49_split_0x4bf0...3:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".6550" = load i32, ptr %"R11"
  %".6551" = load float, ptr %"R24"
  %".6552" = bitcast float %".6551" to i32
  %".6553" = or i32 %".6550", 2147483648
  %".6554" = or i32 %".6550", %".6552"
  %".6555" = and i32 %".6553", %".6554"
  store i32 %".6555", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...3"
.L_x_51...3:
  ; MUFU.RCP R11, R24
  %".6560" = load float, ptr %"R24"
  %".6561" = fdiv float 0x3ff0000000000000, %".6560"
  %".6562" = bitcast ptr %"R11" to ptr
  store float %".6561", ptr %".6562"
  br label %".L_x_50...3"
.L_x_50...3:
  ; BSYNC B1
  br label %".L_x_48...3"
.L_x_48...3:
  ; MOV R22, R11
  %".6568" = load float, ptr %"R11"
  %".6569" = bitcast ptr %"R22" to ptr
  store float %".6568", ptr %".6569"
  ; MOV R11, 0x0
  store i32 0, ptr %"R11"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.2"
.L_x_52...3:
  ; BRA `(.L_x_52)
  br label %".L_x_52...3"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.2:
  br label %".L_x_26_split_0x3910_postCALL_0x3930"
.L_x_26_split_0x3910_postCALL_0x3930:
  ; BRA `(.L_x_34)
  br label %".L_x_34"
.L_x_33:
  ; MUFU.RCP R22, R24
  %".6581" = load float, ptr %"R24"
  %".6582" = fdiv float 0x3ff0000000000000, %".6581"
  %".6583" = bitcast ptr %"R22" to ptr
  store float %".6582", ptr %".6583"
  ; FFMA R4, R24, R22, -1
  %".6586" = load float, ptr %"R24"
  %".6587" = load float, ptr %"R22"
  %"fmul.269" = fmul float %".6586", %".6587"
  %"fadd.255" = fadd float %"fmul.269", 0xbff0000000000000
  %".6588" = bitcast ptr %"R4" to ptr
  store float %"fadd.255", ptr %".6588"
  ; FADD.FTZ R5, -R4, -RZ
  %".6591" = load float, ptr %"R4"
  %".6592" = fneg float %".6591"
  %"fadd.256" = fadd float %".6592",              0x0
  %".6593" = bitcast ptr %"R5" to ptr
  store float %"fadd.256", ptr %".6593"
  ; FFMA R22, R22, R5, R22
  %".6596" = load float, ptr %"R22"
  %".6597" = load float, ptr %"R5"
  %".6598" = load float, ptr %"R22"
  %"fmul.270" = fmul float %".6596", %".6597"
  %"fadd.257" = fadd float %"fmul.270", %".6598"
  %".6599" = bitcast ptr %"R22" to ptr
  store float %"fadd.257", ptr %".6599"
  br label %".L_x_34"
.L_x_34:
  ; BSYNC B0
  br label %".L_x_32"
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  %".6605" = load i32, ptr %"R32"
  %"zext.651" = zext i32 %".6605" to i64
  %".6606" = load i32, ptr %"R33"
  %"zext.652" = zext i32 %".6606" to i64
  %"shl.345" = shl i64 %"zext.652", 32
  %"or.311" = or i64 %"shl.345", %"zext.651"
  %".6607" = inttoptr i64 %"or.311" to ptr
  %".6608" = ptrtoint ptr %".6607" to i64
  %".6609" = add i64 %".6608", 0
  %"for_LDG.281" = inttoptr i64 %".6609" to ptr
  %".6610" = load float, ptr %"for_LDG.281"
  %".6611" = bitcast ptr %"R5" to ptr
  store float %".6610", ptr %".6611"
  ; MOV R4, 0x3bbb989d
  %".6614" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".6614"
  ; MOV R7, 0x437c0000
  %".6617" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".6617"
  ; FADD R5, R5, R56
  %".6620" = load float, ptr %"R5"
  %".6621" = load float, ptr %"R56"
  %"fadd.258" = fadd float %".6620", %".6621"
  %".6622" = bitcast ptr %"R5" to ptr
  store float %"fadd.258", ptr %".6622"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".6625" = load float, ptr %"R5"
  %".6626" = fneg float %".6625"
  %".6627" = load float, ptr %"R4"
  %"fmul.271" = fmul float %".6626", %".6627"
  %"fadd.259" = fadd float %"fmul.271", 0x3fe0000000000000
  %".6628" = bitcast ptr %"R4" to ptr
  store float %"fadd.259", ptr %".6628"
  ; FFMA.RM R4, R4, R7, 12582913
  %".6631" = load float, ptr %"R4"
  %".6632" = load float, ptr %"R7"
  %"fmul.272" = fmul float %".6631", %".6632"
  %"fadd.260" = fadd float %"fmul.272", 0x4168000020000000
  %".6633" = bitcast ptr %"R4" to ptr
  store float %"fadd.260", ptr %".6633"
  ; FADD R6, R4.reuse, -12583039
  %".6636" = load float, ptr %"R4"
  %"fadd.261" = fadd float %".6636", 0xc168000fe0000000
  %".6637" = bitcast ptr %"R6" to ptr
  store float %"fadd.261", ptr %".6637"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".6640" = icmp ult i32 23, 32
  %"SHF_min.29" = select  i1 %".6640", i32 23, i32 32
  %".6641" = load i32, ptr %"R4"
  %"zext.653" = zext i32 0 to i64
  %"zext.654" = zext i32 %".6641" to i64
  %"zext.655" = zext i32 23 to i64
  %"shl.346" = shl i64 %"zext.653", 32
  %"or.312" = or i64 %"shl.346", %"zext.654"
  %"shl.347" = shl i64 %"or.312", %"zext.655"
  %"and.18" = and i64 %"shl.347", 4294967295
  %"trunc32.29" = trunc i64 %"and.18" to i32
  store i32 %"trunc32.29", ptr %"R23"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".6644" = load float, ptr %"R5"
  %".6645" = fneg float %".6644"
  %".6646" = load float, ptr %"R6"
  %".6647" = fneg float %".6646"
  %"fmul.273" = fmul float %".6645", 0x3ff7154760000000
  %"fadd.262" = fadd float %"fmul.273", %".6647"
  %".6648" = bitcast ptr %"R6" to ptr
  store float %"fadd.262", ptr %".6648"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".6651" = load float, ptr %"R5"
  %".6652" = fneg float %".6651"
  %".6653" = load float, ptr %"R6"
  %"fmul.274" = fmul float %".6652", 0x3e54ae0c00000000
  %"fadd.263" = fadd float %"fmul.274", %".6653"
  %".6654" = bitcast ptr %"R6" to ptr
  store float %"fadd.263", ptr %".6654"
  ; MUFU.EX2 R6, R6
  %".6657" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".6657")
  %".6658" = bitcast ptr %"R6" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".6658"
  ; FFMA R23, R23, R6, 1
  %".6661" = load float, ptr %"R23"
  %".6662" = load float, ptr %"R6"
  %"fmul.275" = fmul float %".6661", %".6662"
  %"fadd.264" = fadd float %"fmul.275", 0x3ff0000000000000
  %".6663" = bitcast ptr %"R23" to ptr
  store float %"fadd.264", ptr %".6663"
  ; @!P4 BRA `(.L_x_35)
  %".6666" = load i1, ptr %"P4"
  %".6667" = icmp eq i1 %".6666", 1
  br i1 %".6667", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".6670" = load i32, ptr %"R18"
  %".6671" = load i1, ptr %"PT"
  %"cmp.57" = icmp sge i32 %".6670", 3
  %".6672" = and i1 %"cmp.57", %".6671"
  store i1 %".6672", ptr %"P0"
  ; MOV R34, RZ
  %".6675" = load i32, ptr %"RZ"
  store i32 %".6675", ptr %"R34"
  ; @!P0 BRA `(.L_x_36)
  %".6678" = load i1, ptr %"P0"
  %".6679" = icmp eq i1 %".6678", 1
  br i1 %".6679", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".6682" = load i32, ptr %"R20"
  %".6683" = load i1, ptr %"PT"
  %"cmp.58" = icmp sgt i32 %".6682", 0
  %".6684" = and i1 %"cmp.58", %".6683"
  store i1 %".6684", ptr %"P0"
  ; MOV R34, RZ
  %".6687" = load i32, ptr %"RZ"
  store i32 %".6687", ptr %"R34"
  ; MOV R35, R20
  %".6690" = load i32, ptr %"R20"
  store i32 %".6690", ptr %"R35"
  ; @!P0 BRA `(.L_x_37)
  %".6693" = load i1, ptr %"P0"
  %".6694" = icmp eq i1 %".6693", 1
  br i1 %".6694", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".6697" = load i32, ptr %"R35"
  %".6698" = load i1, ptr %"PT"
  %"cmp.59" = icmp sgt i32 %".6697", 12
  %".6699" = and i1 %"cmp.59", %".6698"
  store i1 %".6699", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".6702" = and i1 1, 1
  %".6703" = or i1 %".6702", 1
  ; @!P1 BRA `(.L_x_38)
  %".6705" = load i1, ptr %"P1"
  %".6706" = icmp eq i1 %".6705", 1
  br i1 %".6706", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".6709" = xor i1 1, 1
  %".6710" = and i1 %".6709", 1
  %".6711" = and i1 %".6710", 1
  br label %".L_x_39"
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41"
  ; IADD3 R10, R3, R34, RZ
  %".6716" = load i32, ptr %"R3"
  %".6717" = load i32, ptr %"R34"
  %"add.294" = add i32 %".6716", %".6717"
  %"add.295" = add i32 %"add.294", 0
  store i32 %"add.295", ptr %"R10"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".6720" = load i32, ptr %"R34"
  %".6721" = load i32, ptr %"R41"
  %"mul.90" = mul i32 %".6720", %".6721"
  %"add.296" = add i32 %"mul.90", %"Arg_3"
  store i32 %"add.296", ptr %"R12"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".6724" = load i32, ptr %"R10"
  %".6725" = load i32, ptr %"R41"
  %"mul.91" = mul i32 %".6724", %".6725"
  %"add.297" = add i32 %"mul.91", %"Arg_4"
  store i32 %"add.297", ptr %"R10"
  ; IADD3 R4, R34, 0x4, RZ
  %".6728" = load i32, ptr %"R34"
  %"add.298" = add i32 %".6728", 4
  %"add.299" = add i32 %"add.298", 0
  store i32 %"add.299", ptr %"R4"
  ; LDG.E.SYS R25, [R12]
  %".6731" = load i32, ptr %"R12"
  %"zext.656" = zext i32 %".6731" to i64
  %".6732" = load i32, ptr %"R13"
  %"zext.657" = zext i32 %".6732" to i64
  %"shl.348" = shl i64 %"zext.657", 32
  %"or.313" = or i64 %"shl.348", %"zext.656"
  %".6733" = inttoptr i64 %"or.313" to ptr
  %".6734" = ptrtoint ptr %".6733" to i64
  %".6735" = add i64 %".6734", 0
  %"for_LDG.282" = inttoptr i64 %".6735" to ptr
  %".6736" = load float, ptr %"for_LDG.282"
  %".6737" = bitcast ptr %"R25" to ptr
  store float %".6736", ptr %".6737"
  ; IADD3 R6, R3, R4, RZ
  %".6740" = load i32, ptr %"R3"
  %".6741" = load i32, ptr %"R4"
  %"add.300" = add i32 %".6740", %".6741"
  %"add.301" = add i32 %"add.300", 0
  store i32 %"add.301", ptr %"R6"
  ; LDG.E.SYS R36, [R10]
  %".6744" = load i32, ptr %"R10"
  %"zext.658" = zext i32 %".6744" to i64
  %".6745" = load i32, ptr %"R11"
  %"zext.659" = zext i32 %".6745" to i64
  %"shl.349" = shl i64 %"zext.659", 32
  %"or.314" = or i64 %"shl.349", %"zext.658"
  %".6746" = inttoptr i64 %"or.314" to ptr
  %".6747" = ptrtoint ptr %".6746" to i64
  %".6748" = add i64 %".6747", 0
  %"for_LDG.283" = inttoptr i64 %".6748" to ptr
  %".6749" = load float, ptr %"for_LDG.283"
  %".6750" = bitcast ptr %"R36" to ptr
  store float %".6749", ptr %".6750"
  ; LDG.E.SYS R37, [R12+0x4]
  %".6753" = load i32, ptr %"R12"
  %"zext.660" = zext i32 %".6753" to i64
  %".6754" = load i32, ptr %"R13"
  %"zext.661" = zext i32 %".6754" to i64
  %"shl.350" = shl i64 %"zext.661", 32
  %"or.315" = or i64 %"shl.350", %"zext.660"
  %".6755" = inttoptr i64 %"or.315" to ptr
  %".6756" = ptrtoint ptr %".6755" to i64
  %".6757" = add i64 %".6756", 4
  %"for_LDG.284" = inttoptr i64 %".6757" to ptr
  %".6758" = load float, ptr %"for_LDG.284"
  %".6759" = bitcast ptr %"R37" to ptr
  store float %".6758", ptr %".6759"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".6762" = load i32, ptr %"R4"
  %".6763" = load i32, ptr %"R41"
  %"mul.92" = mul i32 %".6762", %".6763"
  %"add.302" = add i32 %"mul.92", %"Arg_3"
  store i32 %"add.302", ptr %"R4"
  ; LDG.E.SYS R24, [R10+0x4]
  %".6766" = load i32, ptr %"R10"
  %"zext.662" = zext i32 %".6766" to i64
  %".6767" = load i32, ptr %"R11"
  %"zext.663" = zext i32 %".6767" to i64
  %"shl.351" = shl i64 %"zext.663", 32
  %"or.316" = or i64 %"shl.351", %"zext.662"
  %".6768" = inttoptr i64 %"or.316" to ptr
  %".6769" = ptrtoint ptr %".6768" to i64
  %".6770" = add i64 %".6769", 4
  %"for_LDG.285" = inttoptr i64 %".6770" to ptr
  %".6771" = load float, ptr %"for_LDG.285"
  %".6772" = bitcast ptr %"R24" to ptr
  store float %".6771", ptr %".6772"
  ; LDG.E.SYS R39, [R12+0x8]
  %".6775" = load i32, ptr %"R12"
  %"zext.664" = zext i32 %".6775" to i64
  %".6776" = load i32, ptr %"R13"
  %"zext.665" = zext i32 %".6776" to i64
  %"shl.352" = shl i64 %"zext.665", 32
  %"or.317" = or i64 %"shl.352", %"zext.664"
  %".6777" = inttoptr i64 %"or.317" to ptr
  %".6778" = ptrtoint ptr %".6777" to i64
  %".6779" = add i64 %".6778", 8
  %"for_LDG.286" = inttoptr i64 %".6779" to ptr
  %".6780" = load float, ptr %"for_LDG.286"
  %".6781" = bitcast ptr %"R39" to ptr
  store float %".6780", ptr %".6781"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".6784" = load i32, ptr %"R6"
  %".6785" = load i32, ptr %"R41"
  %"mul.93" = mul i32 %".6784", %".6785"
  %"add.303" = add i32 %"mul.93", %"Arg_4"
  store i32 %"add.303", ptr %"R6"
  ; LDG.E.SYS R38, [R10+0x8]
  %".6788" = load i32, ptr %"R10"
  %"zext.666" = zext i32 %".6788" to i64
  %".6789" = load i32, ptr %"R11"
  %"zext.667" = zext i32 %".6789" to i64
  %"shl.353" = shl i64 %"zext.667", 32
  %"or.318" = or i64 %"shl.353", %"zext.666"
  %".6790" = inttoptr i64 %"or.318" to ptr
  %".6791" = ptrtoint ptr %".6790" to i64
  %".6792" = add i64 %".6791", 8
  %"for_LDG.287" = inttoptr i64 %".6792" to ptr
  %".6793" = load float, ptr %"for_LDG.287"
  %".6794" = bitcast ptr %"R38" to ptr
  store float %".6793", ptr %".6794"
  ; LDG.E.SYS R43, [R12+0xc]
  %".6797" = load i32, ptr %"R12"
  %"zext.668" = zext i32 %".6797" to i64
  %".6798" = load i32, ptr %"R13"
  %"zext.669" = zext i32 %".6798" to i64
  %"shl.354" = shl i64 %"zext.669", 32
  %"or.319" = or i64 %"shl.354", %"zext.668"
  %".6799" = inttoptr i64 %"or.319" to ptr
  %".6800" = ptrtoint ptr %".6799" to i64
  %".6801" = add i64 %".6800", 12
  %"for_LDG.288" = inttoptr i64 %".6801" to ptr
  %".6802" = load float, ptr %"for_LDG.288"
  %".6803" = bitcast ptr %"R43" to ptr
  store float %".6802", ptr %".6803"
  ; IADD3 R8, R34, 0x8, RZ
  %".6806" = load i32, ptr %"R34"
  %"add.304" = add i32 %".6806", 8
  %"add.305" = add i32 %"add.304", 0
  store i32 %"add.305", ptr %"R8"
  ; LDG.E.SYS R46, [R10+0xc]
  %".6809" = load i32, ptr %"R10"
  %"zext.670" = zext i32 %".6809" to i64
  %".6810" = load i32, ptr %"R11"
  %"zext.671" = zext i32 %".6810" to i64
  %"shl.355" = shl i64 %"zext.671", 32
  %"or.320" = or i64 %"shl.355", %"zext.670"
  %".6811" = inttoptr i64 %"or.320" to ptr
  %".6812" = ptrtoint ptr %".6811" to i64
  %".6813" = add i64 %".6812", 12
  %"for_LDG.289" = inttoptr i64 %".6813" to ptr
  %".6814" = load float, ptr %"for_LDG.289"
  %".6815" = bitcast ptr %"R46" to ptr
  store float %".6814", ptr %".6815"
  ; LDG.E.SYS R51, [R4]
  %".6818" = load i32, ptr %"R4"
  %"zext.672" = zext i32 %".6818" to i64
  %".6819" = load i32, ptr %"R5"
  %"zext.673" = zext i32 %".6819" to i64
  %"shl.356" = shl i64 %"zext.673", 32
  %"or.321" = or i64 %"shl.356", %"zext.672"
  %".6820" = inttoptr i64 %"or.321" to ptr
  %".6821" = ptrtoint ptr %".6820" to i64
  %".6822" = add i64 %".6821", 0
  %"for_LDG.290" = inttoptr i64 %".6822" to ptr
  %".6823" = load float, ptr %"for_LDG.290"
  %".6824" = bitcast ptr %"R51" to ptr
  store float %".6823", ptr %".6824"
  ; IADD3 R50, R3, R8, RZ
  %".6827" = load i32, ptr %"R3"
  %".6828" = load i32, ptr %"R8"
  %"add.306" = add i32 %".6827", %".6828"
  %"add.307" = add i32 %"add.306", 0
  store i32 %"add.307", ptr %"R50"
  ; LDG.E.SYS R44, [R6]
  %".6831" = load i32, ptr %"R6"
  %"zext.674" = zext i32 %".6831" to i64
  %".6832" = load i32, ptr %"R7"
  %"zext.675" = zext i32 %".6832" to i64
  %"shl.357" = shl i64 %"zext.675", 32
  %"or.322" = or i64 %"shl.357", %"zext.674"
  %".6833" = inttoptr i64 %"or.322" to ptr
  %".6834" = ptrtoint ptr %".6833" to i64
  %".6835" = add i64 %".6834", 0
  %"for_LDG.291" = inttoptr i64 %".6835" to ptr
  %".6836" = load float, ptr %"for_LDG.291"
  %".6837" = bitcast ptr %"R44" to ptr
  store float %".6836", ptr %".6837"
  ; LDG.E.SYS R47, [R4+0x4]
  %".6840" = load i32, ptr %"R4"
  %"zext.676" = zext i32 %".6840" to i64
  %".6841" = load i32, ptr %"R5"
  %"zext.677" = zext i32 %".6841" to i64
  %"shl.358" = shl i64 %"zext.677", 32
  %"or.323" = or i64 %"shl.358", %"zext.676"
  %".6842" = inttoptr i64 %"or.323" to ptr
  %".6843" = ptrtoint ptr %".6842" to i64
  %".6844" = add i64 %".6843", 4
  %"for_LDG.292" = inttoptr i64 %".6844" to ptr
  %".6845" = load float, ptr %"for_LDG.292"
  %".6846" = bitcast ptr %"R47" to ptr
  store float %".6845", ptr %".6846"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".6849" = load i32, ptr %"R8"
  %".6850" = load i32, ptr %"R41"
  %"mul.94" = mul i32 %".6849", %".6850"
  %"add.308" = add i32 %"mul.94", %"Arg_3"
  store i32 %"add.308", ptr %"R8"
  ; LDG.E.SYS R42, [R6+0x4]
  %".6853" = load i32, ptr %"R6"
  %"zext.678" = zext i32 %".6853" to i64
  %".6854" = load i32, ptr %"R7"
  %"zext.679" = zext i32 %".6854" to i64
  %"shl.359" = shl i64 %"zext.679", 32
  %"or.324" = or i64 %"shl.359", %"zext.678"
  %".6855" = inttoptr i64 %"or.324" to ptr
  %".6856" = ptrtoint ptr %".6855" to i64
  %".6857" = add i64 %".6856", 4
  %"for_LDG.293" = inttoptr i64 %".6857" to ptr
  %".6858" = load float, ptr %"for_LDG.293"
  %".6859" = bitcast ptr %"R42" to ptr
  store float %".6858", ptr %".6859"
  ; LDG.E.SYS R45, [R4+0x8]
  %".6862" = load i32, ptr %"R4"
  %"zext.680" = zext i32 %".6862" to i64
  %".6863" = load i32, ptr %"R5"
  %"zext.681" = zext i32 %".6863" to i64
  %"shl.360" = shl i64 %"zext.681", 32
  %"or.325" = or i64 %"shl.360", %"zext.680"
  %".6864" = inttoptr i64 %"or.325" to ptr
  %".6865" = ptrtoint ptr %".6864" to i64
  %".6866" = add i64 %".6865", 8
  %"for_LDG.294" = inttoptr i64 %".6866" to ptr
  %".6867" = load float, ptr %"for_LDG.294"
  %".6868" = bitcast ptr %"R45" to ptr
  store float %".6867", ptr %".6868"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".6871" = load i32, ptr %"R50"
  %".6872" = load i32, ptr %"R41"
  %"mul.95" = mul i32 %".6871", %".6872"
  %"add.309" = add i32 %"mul.95", %"Arg_4"
  store i32 %"add.309", ptr %"R10"
  ; LDG.E.SYS R40, [R6+0x8]
  %".6875" = load i32, ptr %"R6"
  %"zext.682" = zext i32 %".6875" to i64
  %".6876" = load i32, ptr %"R7"
  %"zext.683" = zext i32 %".6876" to i64
  %"shl.361" = shl i64 %"zext.683", 32
  %"or.326" = or i64 %"shl.361", %"zext.682"
  %".6877" = inttoptr i64 %"or.326" to ptr
  %".6878" = ptrtoint ptr %".6877" to i64
  %".6879" = add i64 %".6878", 8
  %"for_LDG.295" = inttoptr i64 %".6879" to ptr
  %".6880" = load float, ptr %"for_LDG.295"
  %".6881" = bitcast ptr %"R40" to ptr
  store float %".6880", ptr %".6881"
  ; LDG.E.SYS R53, [R4+0xc]
  %".6884" = load i32, ptr %"R4"
  %"zext.684" = zext i32 %".6884" to i64
  %".6885" = load i32, ptr %"R5"
  %"zext.685" = zext i32 %".6885" to i64
  %"shl.362" = shl i64 %"zext.685", 32
  %"or.327" = or i64 %"shl.362", %"zext.684"
  %".6886" = inttoptr i64 %"or.327" to ptr
  %".6887" = ptrtoint ptr %".6886" to i64
  %".6888" = add i64 %".6887", 12
  %"for_LDG.296" = inttoptr i64 %".6888" to ptr
  %".6889" = load float, ptr %"for_LDG.296"
  %".6890" = bitcast ptr %"R53" to ptr
  store float %".6889", ptr %".6890"
  ; IADD3 R12, R34, 0xc, RZ
  %".6893" = load i32, ptr %"R34"
  %"add.310" = add i32 %".6893", 12
  %"add.311" = add i32 %"add.310", 0
  store i32 %"add.311", ptr %"R12"
  ; LDG.E.SYS R54, [R6+0xc]
  %".6896" = load i32, ptr %"R6"
  %"zext.686" = zext i32 %".6896" to i64
  %".6897" = load i32, ptr %"R7"
  %"zext.687" = zext i32 %".6897" to i64
  %"shl.363" = shl i64 %"zext.687", 32
  %"or.328" = or i64 %"shl.363", %"zext.686"
  %".6898" = inttoptr i64 %"or.328" to ptr
  %".6899" = ptrtoint ptr %".6898" to i64
  %".6900" = add i64 %".6899", 12
  %"for_LDG.297" = inttoptr i64 %".6900" to ptr
  %".6901" = load float, ptr %"for_LDG.297"
  %".6902" = bitcast ptr %"R54" to ptr
  store float %".6901", ptr %".6902"
  ; LDG.E.SYS R59, [R8]
  %".6905" = load i32, ptr %"R8"
  %"zext.688" = zext i32 %".6905" to i64
  %".6906" = load i32, ptr %"R9"
  %"zext.689" = zext i32 %".6906" to i64
  %"shl.364" = shl i64 %"zext.689", 32
  %"or.329" = or i64 %"shl.364", %"zext.688"
  %".6907" = inttoptr i64 %"or.329" to ptr
  %".6908" = ptrtoint ptr %".6907" to i64
  %".6909" = add i64 %".6908", 0
  %"for_LDG.298" = inttoptr i64 %".6909" to ptr
  %".6910" = load float, ptr %"for_LDG.298"
  %".6911" = bitcast ptr %"R59" to ptr
  store float %".6910", ptr %".6911"
  ; IADD3 R58, R3, R12, RZ
  %".6914" = load i32, ptr %"R3"
  %".6915" = load i32, ptr %"R12"
  %"add.312" = add i32 %".6914", %".6915"
  %"add.313" = add i32 %"add.312", 0
  store i32 %"add.313", ptr %"R58"
  ; LDG.E.SYS R52, [R10]
  %".6918" = load i32, ptr %"R10"
  %"zext.690" = zext i32 %".6918" to i64
  %".6919" = load i32, ptr %"R11"
  %"zext.691" = zext i32 %".6919" to i64
  %"shl.365" = shl i64 %"zext.691", 32
  %"or.330" = or i64 %"shl.365", %"zext.690"
  %".6920" = inttoptr i64 %"or.330" to ptr
  %".6921" = ptrtoint ptr %".6920" to i64
  %".6922" = add i64 %".6921", 0
  %"for_LDG.299" = inttoptr i64 %".6922" to ptr
  %".6923" = load float, ptr %"for_LDG.299"
  %".6924" = bitcast ptr %"R52" to ptr
  store float %".6923", ptr %".6924"
  ; LDG.E.SYS R57, [R8+0x4]
  %".6927" = load i32, ptr %"R8"
  %"zext.692" = zext i32 %".6927" to i64
  %".6928" = load i32, ptr %"R9"
  %"zext.693" = zext i32 %".6928" to i64
  %"shl.366" = shl i64 %"zext.693", 32
  %"or.331" = or i64 %"shl.366", %"zext.692"
  %".6929" = inttoptr i64 %"or.331" to ptr
  %".6930" = ptrtoint ptr %".6929" to i64
  %".6931" = add i64 %".6930", 4
  %"for_LDG.300" = inttoptr i64 %".6931" to ptr
  %".6932" = load float, ptr %"for_LDG.300"
  %".6933" = bitcast ptr %"R57" to ptr
  store float %".6932", ptr %".6933"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".6936" = load i32, ptr %"R12"
  %".6937" = load i32, ptr %"R41"
  %"mul.96" = mul i32 %".6936", %".6937"
  %"add.314" = add i32 %"mul.96", %"Arg_3"
  store i32 %"add.314", ptr %"R12"
  ; LDG.E.SYS R50, [R10+0x4]
  %".6940" = load i32, ptr %"R10"
  %"zext.694" = zext i32 %".6940" to i64
  %".6941" = load i32, ptr %"R11"
  %"zext.695" = zext i32 %".6941" to i64
  %"shl.367" = shl i64 %"zext.695", 32
  %"or.332" = or i64 %"shl.367", %"zext.694"
  %".6942" = inttoptr i64 %"or.332" to ptr
  %".6943" = ptrtoint ptr %".6942" to i64
  %".6944" = add i64 %".6943", 4
  %"for_LDG.301" = inttoptr i64 %".6944" to ptr
  %".6945" = load float, ptr %"for_LDG.301"
  %".6946" = bitcast ptr %"R50" to ptr
  store float %".6945", ptr %".6946"
  ; LDG.E.SYS R55, [R8+0x8]
  %".6949" = load i32, ptr %"R8"
  %"zext.696" = zext i32 %".6949" to i64
  %".6950" = load i32, ptr %"R9"
  %"zext.697" = zext i32 %".6950" to i64
  %"shl.368" = shl i64 %"zext.697", 32
  %"or.333" = or i64 %"shl.368", %"zext.696"
  %".6951" = inttoptr i64 %"or.333" to ptr
  %".6952" = ptrtoint ptr %".6951" to i64
  %".6953" = add i64 %".6952", 8
  %"for_LDG.302" = inttoptr i64 %".6953" to ptr
  %".6954" = load float, ptr %"for_LDG.302"
  %".6955" = bitcast ptr %"R55" to ptr
  store float %".6954", ptr %".6955"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".6958" = load i32, ptr %"R58"
  %".6959" = load i32, ptr %"R41"
  %"mul.97" = mul i32 %".6958", %".6959"
  %"add.315" = add i32 %"mul.97", %"Arg_4"
  store i32 %"add.315", ptr %"R4"
  ; LDG.E.SYS R61, [R8+0xc]
  %".6962" = load i32, ptr %"R8"
  %"zext.698" = zext i32 %".6962" to i64
  %".6963" = load i32, ptr %"R9"
  %"zext.699" = zext i32 %".6963" to i64
  %"shl.369" = shl i64 %"zext.699", 32
  %"or.334" = or i64 %"shl.369", %"zext.698"
  %".6964" = inttoptr i64 %"or.334" to ptr
  %".6965" = ptrtoint ptr %".6964" to i64
  %".6966" = add i64 %".6965", 12
  %"for_LDG.303" = inttoptr i64 %".6966" to ptr
  %".6967" = load float, ptr %"for_LDG.303"
  %".6968" = bitcast ptr %"R61" to ptr
  store float %".6967", ptr %".6968"
  ; LDG.E.SYS R56, [R10+0x8]
  %".6971" = load i32, ptr %"R10"
  %"zext.700" = zext i32 %".6971" to i64
  %".6972" = load i32, ptr %"R11"
  %"zext.701" = zext i32 %".6972" to i64
  %"shl.370" = shl i64 %"zext.701", 32
  %"or.335" = or i64 %"shl.370", %"zext.700"
  %".6973" = inttoptr i64 %"or.335" to ptr
  %".6974" = ptrtoint ptr %".6973" to i64
  %".6975" = add i64 %".6974", 8
  %"for_LDG.304" = inttoptr i64 %".6975" to ptr
  %".6976" = load float, ptr %"for_LDG.304"
  %".6977" = bitcast ptr %"R56" to ptr
  store float %".6976", ptr %".6977"
  ; LDG.E.SYS R58, [R10+0xc]
  %".6980" = load i32, ptr %"R10"
  %"zext.702" = zext i32 %".6980" to i64
  %".6981" = load i32, ptr %"R11"
  %"zext.703" = zext i32 %".6981" to i64
  %"shl.371" = shl i64 %"zext.703", 32
  %"or.336" = or i64 %"shl.371", %"zext.702"
  %".6982" = inttoptr i64 %"or.336" to ptr
  %".6983" = ptrtoint ptr %".6982" to i64
  %".6984" = add i64 %".6983", 12
  %"for_LDG.305" = inttoptr i64 %".6984" to ptr
  %".6985" = load float, ptr %"for_LDG.305"
  %".6986" = bitcast ptr %"R58" to ptr
  store float %".6985", ptr %".6986"
  ; LDG.E.SYS R6, [R12]
  %".6989" = load i32, ptr %"R12"
  %"zext.704" = zext i32 %".6989" to i64
  %".6990" = load i32, ptr %"R13"
  %"zext.705" = zext i32 %".6990" to i64
  %"shl.372" = shl i64 %"zext.705", 32
  %"or.337" = or i64 %"shl.372", %"zext.704"
  %".6991" = inttoptr i64 %"or.337" to ptr
  %".6992" = ptrtoint ptr %".6991" to i64
  %".6993" = add i64 %".6992", 0
  %"for_LDG.306" = inttoptr i64 %".6993" to ptr
  %".6994" = load float, ptr %"for_LDG.306"
  %".6995" = bitcast ptr %"R6" to ptr
  store float %".6994", ptr %".6995"
  ; LDG.E.SYS R41, [R12+0x4]
  %".6998" = load i32, ptr %"R12"
  %"zext.706" = zext i32 %".6998" to i64
  %".6999" = load i32, ptr %"R13"
  %"zext.707" = zext i32 %".6999" to i64
  %"shl.373" = shl i64 %"zext.707", 32
  %"or.338" = or i64 %"shl.373", %"zext.706"
  %".7000" = inttoptr i64 %"or.338" to ptr
  %".7001" = ptrtoint ptr %".7000" to i64
  %".7002" = add i64 %".7001", 4
  %"for_LDG.307" = inttoptr i64 %".7002" to ptr
  %".7003" = load float, ptr %"for_LDG.307"
  %".7004" = bitcast ptr %"R41" to ptr
  store float %".7003", ptr %".7004"
  ; LDG.E.SYS R10, [R4]
  %".7007" = load i32, ptr %"R4"
  %"zext.708" = zext i32 %".7007" to i64
  %".7008" = load i32, ptr %"R5"
  %"zext.709" = zext i32 %".7008" to i64
  %"shl.374" = shl i64 %"zext.709", 32
  %"or.339" = or i64 %"shl.374", %"zext.708"
  %".7009" = inttoptr i64 %"or.339" to ptr
  %".7010" = ptrtoint ptr %".7009" to i64
  %".7011" = add i64 %".7010", 0
  %"for_LDG.308" = inttoptr i64 %".7011" to ptr
  %".7012" = load float, ptr %"for_LDG.308"
  %".7013" = bitcast ptr %"R10" to ptr
  store float %".7012", ptr %".7013"
  ; LDG.E.SYS R7, [R12+0x8]
  %".7016" = load i32, ptr %"R12"
  %"zext.710" = zext i32 %".7016" to i64
  %".7017" = load i32, ptr %"R13"
  %"zext.711" = zext i32 %".7017" to i64
  %"shl.375" = shl i64 %"zext.711", 32
  %"or.340" = or i64 %"shl.375", %"zext.710"
  %".7018" = inttoptr i64 %"or.340" to ptr
  %".7019" = ptrtoint ptr %".7018" to i64
  %".7020" = add i64 %".7019", 8
  %"for_LDG.309" = inttoptr i64 %".7020" to ptr
  %".7021" = load float, ptr %"for_LDG.309"
  %".7022" = bitcast ptr %"R7" to ptr
  store float %".7021", ptr %".7022"
  ; LDG.E.SYS R9, [R4+0x4]
  %".7025" = load i32, ptr %"R4"
  %"zext.712" = zext i32 %".7025" to i64
  %".7026" = load i32, ptr %"R5"
  %"zext.713" = zext i32 %".7026" to i64
  %"shl.376" = shl i64 %"zext.713", 32
  %"or.341" = or i64 %"shl.376", %"zext.712"
  %".7027" = inttoptr i64 %"or.341" to ptr
  %".7028" = ptrtoint ptr %".7027" to i64
  %".7029" = add i64 %".7028", 4
  %"for_LDG.310" = inttoptr i64 %".7029" to ptr
  %".7030" = load float, ptr %"for_LDG.310"
  %".7031" = bitcast ptr %"R9" to ptr
  store float %".7030", ptr %".7031"
  ; LDG.E.SYS R60, [R12+0xc]
  %".7034" = load i32, ptr %"R12"
  %"zext.714" = zext i32 %".7034" to i64
  %".7035" = load i32, ptr %"R13"
  %"zext.715" = zext i32 %".7035" to i64
  %"shl.377" = shl i64 %"zext.715", 32
  %"or.342" = or i64 %"shl.377", %"zext.714"
  %".7036" = inttoptr i64 %"or.342" to ptr
  %".7037" = ptrtoint ptr %".7036" to i64
  %".7038" = add i64 %".7037", 12
  %"for_LDG.311" = inttoptr i64 %".7038" to ptr
  %".7039" = load float, ptr %"for_LDG.311"
  %".7040" = bitcast ptr %"R60" to ptr
  store float %".7039", ptr %".7040"
  ; LDG.E.SYS R8, [R4+0x8]
  %".7043" = load i32, ptr %"R4"
  %"zext.716" = zext i32 %".7043" to i64
  %".7044" = load i32, ptr %"R5"
  %"zext.717" = zext i32 %".7044" to i64
  %"shl.378" = shl i64 %"zext.717", 32
  %"or.343" = or i64 %"shl.378", %"zext.716"
  %".7045" = inttoptr i64 %"or.343" to ptr
  %".7046" = ptrtoint ptr %".7045" to i64
  %".7047" = add i64 %".7046", 8
  %"for_LDG.312" = inttoptr i64 %".7047" to ptr
  %".7048" = load float, ptr %"for_LDG.312"
  %".7049" = bitcast ptr %"R8" to ptr
  store float %".7048", ptr %".7049"
  ; LDG.E.SYS R11, [R4+0xc]
  %".7052" = load i32, ptr %"R4"
  %"zext.718" = zext i32 %".7052" to i64
  %".7053" = load i32, ptr %"R5"
  %"zext.719" = zext i32 %".7053" to i64
  %"shl.379" = shl i64 %"zext.719", 32
  %"or.344" = or i64 %"shl.379", %"zext.718"
  %".7054" = inttoptr i64 %"or.344" to ptr
  %".7055" = ptrtoint ptr %".7054" to i64
  %".7056" = add i64 %".7055", 12
  %"for_LDG.313" = inttoptr i64 %".7056" to ptr
  %".7057" = load float, ptr %"for_LDG.313"
  %".7058" = bitcast ptr %"R11" to ptr
  store float %".7057", ptr %".7058"
  ; IADD3 R35, R35, -0x10, RZ
  %".7061" = load i32, ptr %"R35"
  %"add.316" = add i32 %".7061", -16
  %"add.317" = add i32 %"add.316", 0
  store i32 %"add.317", ptr %"R35"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".7064" = load i32, ptr %"R35"
  %".7065" = load i1, ptr %"PT"
  %"cmp.60" = icmp sgt i32 %".7064", 12
  %".7066" = and i1 %"cmp.60", %".7065"
  store i1 %".7066", ptr %"P1"
  ; IADD3 R34, R34, 0x10, RZ
  %".7069" = load i32, ptr %"R34"
  %"add.318" = add i32 %".7069", 16
  %"add.319" = add i32 %"add.318", 0
  store i32 %"add.319", ptr %"R34"
  ; FMUL R25, R25, R22
  %".7072" = load float, ptr %"R25"
  %".7073" = load float, ptr %"R22"
  %"fmul.276" = fmul float %".7072", %".7073"
  %".7074" = bitcast ptr %"R25" to ptr
  store float %"fmul.276", ptr %".7074"
  ; FFMA R25, R25, R36, R21
  %".7077" = load float, ptr %"R25"
  %".7078" = load float, ptr %"R36"
  %".7079" = load float, ptr %"R21"
  %"fmul.277" = fmul float %".7077", %".7078"
  %"fadd.265" = fadd float %"fmul.277", %".7079"
  %".7080" = bitcast ptr %"R25" to ptr
  store float %"fadd.265", ptr %".7080"
  ; FMUL R37, R37, R22
  %".7083" = load float, ptr %"R37"
  %".7084" = load float, ptr %"R22"
  %"fmul.278" = fmul float %".7083", %".7084"
  %".7085" = bitcast ptr %"R37" to ptr
  store float %"fmul.278", ptr %".7085"
  ; FFMA R25, R37, R24, R25
  %".7088" = load float, ptr %"R37"
  %".7089" = load float, ptr %"R24"
  %".7090" = load float, ptr %"R25"
  %"fmul.279" = fmul float %".7088", %".7089"
  %"fadd.266" = fadd float %"fmul.279", %".7090"
  %".7091" = bitcast ptr %"R25" to ptr
  store float %"fadd.266", ptr %".7091"
  ; FMUL R39, R39, R22
  %".7094" = load float, ptr %"R39"
  %".7095" = load float, ptr %"R22"
  %"fmul.280" = fmul float %".7094", %".7095"
  %".7096" = bitcast ptr %"R39" to ptr
  store float %"fmul.280", ptr %".7096"
  ; FFMA R25, R39, R38, R25
  %".7099" = load float, ptr %"R39"
  %".7100" = load float, ptr %"R38"
  %".7101" = load float, ptr %"R25"
  %"fmul.281" = fmul float %".7099", %".7100"
  %"fadd.267" = fadd float %"fmul.281", %".7101"
  %".7102" = bitcast ptr %"R25" to ptr
  store float %"fadd.267", ptr %".7102"
  ; FMUL R43, R43, R22
  %".7105" = load float, ptr %"R43"
  %".7106" = load float, ptr %"R22"
  %"fmul.282" = fmul float %".7105", %".7106"
  %".7107" = bitcast ptr %"R43" to ptr
  store float %"fmul.282", ptr %".7107"
  ; FFMA R25, R43, R46, R25
  %".7110" = load float, ptr %"R43"
  %".7111" = load float, ptr %"R46"
  %".7112" = load float, ptr %"R25"
  %"fmul.283" = fmul float %".7110", %".7111"
  %"fadd.268" = fadd float %"fmul.283", %".7112"
  %".7113" = bitcast ptr %"R25" to ptr
  store float %"fadd.268", ptr %".7113"
  ; FMUL R51, R51, R22
  %".7116" = load float, ptr %"R51"
  %".7117" = load float, ptr %"R22"
  %"fmul.284" = fmul float %".7116", %".7117"
  %".7118" = bitcast ptr %"R51" to ptr
  store float %"fmul.284", ptr %".7118"
  ; FFMA R25, R51, R44, R25
  %".7121" = load float, ptr %"R51"
  %".7122" = load float, ptr %"R44"
  %".7123" = load float, ptr %"R25"
  %"fmul.285" = fmul float %".7121", %".7122"
  %"fadd.269" = fadd float %"fmul.285", %".7123"
  %".7124" = bitcast ptr %"R25" to ptr
  store float %"fadd.269", ptr %".7124"
  ; FMUL R47, R47, R22
  %".7127" = load float, ptr %"R47"
  %".7128" = load float, ptr %"R22"
  %"fmul.286" = fmul float %".7127", %".7128"
  %".7129" = bitcast ptr %"R47" to ptr
  store float %"fmul.286", ptr %".7129"
  ; FFMA R25, R47, R42, R25
  %".7132" = load float, ptr %"R47"
  %".7133" = load float, ptr %"R42"
  %".7134" = load float, ptr %"R25"
  %"fmul.287" = fmul float %".7132", %".7133"
  %"fadd.270" = fadd float %"fmul.287", %".7134"
  %".7135" = bitcast ptr %"R25" to ptr
  store float %"fadd.270", ptr %".7135"
  ; FMUL R45, R45, R22
  %".7138" = load float, ptr %"R45"
  %".7139" = load float, ptr %"R22"
  %"fmul.288" = fmul float %".7138", %".7139"
  %".7140" = bitcast ptr %"R45" to ptr
  store float %"fmul.288", ptr %".7140"
  ; FFMA R25, R45, R40, R25
  %".7143" = load float, ptr %"R45"
  %".7144" = load float, ptr %"R40"
  %".7145" = load float, ptr %"R25"
  %"fmul.289" = fmul float %".7143", %".7144"
  %"fadd.271" = fadd float %"fmul.289", %".7145"
  %".7146" = bitcast ptr %"R25" to ptr
  store float %"fadd.271", ptr %".7146"
  ; FMUL R53, R53, R22
  %".7149" = load float, ptr %"R53"
  %".7150" = load float, ptr %"R22"
  %"fmul.290" = fmul float %".7149", %".7150"
  %".7151" = bitcast ptr %"R53" to ptr
  store float %"fmul.290", ptr %".7151"
  ; FFMA R25, R53, R54, R25
  %".7154" = load float, ptr %"R53"
  %".7155" = load float, ptr %"R54"
  %".7156" = load float, ptr %"R25"
  %"fmul.291" = fmul float %".7154", %".7155"
  %"fadd.272" = fadd float %"fmul.291", %".7156"
  %".7157" = bitcast ptr %"R25" to ptr
  store float %"fadd.272", ptr %".7157"
  ; FMUL R59, R59, R22
  %".7160" = load float, ptr %"R59"
  %".7161" = load float, ptr %"R22"
  %"fmul.292" = fmul float %".7160", %".7161"
  %".7162" = bitcast ptr %"R59" to ptr
  store float %"fmul.292", ptr %".7162"
  ; FFMA R25, R59, R52, R25
  %".7165" = load float, ptr %"R59"
  %".7166" = load float, ptr %"R52"
  %".7167" = load float, ptr %"R25"
  %"fmul.293" = fmul float %".7165", %".7166"
  %"fadd.273" = fadd float %"fmul.293", %".7167"
  %".7168" = bitcast ptr %"R25" to ptr
  store float %"fadd.273", ptr %".7168"
  ; FMUL R57, R57, R22
  %".7171" = load float, ptr %"R57"
  %".7172" = load float, ptr %"R22"
  %"fmul.294" = fmul float %".7171", %".7172"
  %".7173" = bitcast ptr %"R57" to ptr
  store float %"fmul.294", ptr %".7173"
  ; FFMA R25, R57, R50, R25
  %".7176" = load float, ptr %"R57"
  %".7177" = load float, ptr %"R50"
  %".7178" = load float, ptr %"R25"
  %"fmul.295" = fmul float %".7176", %".7177"
  %"fadd.274" = fadd float %"fmul.295", %".7178"
  %".7179" = bitcast ptr %"R25" to ptr
  store float %"fadd.274", ptr %".7179"
  ; FMUL R55, R55, R22.reuse
  %".7182" = load float, ptr %"R55"
  %".7183" = load float, ptr %"R22"
  %"fmul.296" = fmul float %".7182", %".7183"
  %".7184" = bitcast ptr %"R55" to ptr
  store float %"fmul.296", ptr %".7184"
  ; FMUL R61, R61, R22
  %".7187" = load float, ptr %"R61"
  %".7188" = load float, ptr %"R22"
  %"fmul.297" = fmul float %".7187", %".7188"
  %".7189" = bitcast ptr %"R61" to ptr
  store float %"fmul.297", ptr %".7189"
  ; FFMA R25, R55, R56, R25
  %".7192" = load float, ptr %"R55"
  %".7193" = load float, ptr %"R56"
  %".7194" = load float, ptr %"R25"
  %"fmul.298" = fmul float %".7192", %".7193"
  %"fadd.275" = fadd float %"fmul.298", %".7194"
  %".7195" = bitcast ptr %"R25" to ptr
  store float %"fadd.275", ptr %".7195"
  ; FFMA R25, R61, R58, R25
  %".7198" = load float, ptr %"R61"
  %".7199" = load float, ptr %"R58"
  %".7200" = load float, ptr %"R25"
  %"fmul.299" = fmul float %".7198", %".7199"
  %"fadd.276" = fadd float %"fmul.299", %".7200"
  %".7201" = bitcast ptr %"R25" to ptr
  store float %"fadd.276", ptr %".7201"
  ; FMUL R6, R6, R22.reuse
  %".7204" = load float, ptr %"R6"
  %".7205" = load float, ptr %"R22"
  %"fmul.300" = fmul float %".7204", %".7205"
  %".7206" = bitcast ptr %"R6" to ptr
  store float %"fmul.300", ptr %".7206"
  ; FMUL R41, R41, R22
  %".7209" = load float, ptr %"R41"
  %".7210" = load float, ptr %"R22"
  %"fmul.301" = fmul float %".7209", %".7210"
  %".7211" = bitcast ptr %"R41" to ptr
  store float %"fmul.301", ptr %".7211"
  ; FFMA R6, R6, R10, R25
  %".7214" = load float, ptr %"R6"
  %".7215" = load float, ptr %"R10"
  %".7216" = load float, ptr %"R25"
  %"fmul.302" = fmul float %".7214", %".7215"
  %"fadd.277" = fadd float %"fmul.302", %".7216"
  %".7217" = bitcast ptr %"R6" to ptr
  store float %"fadd.277", ptr %".7217"
  ; FMUL R7, R7, R22
  %".7220" = load float, ptr %"R7"
  %".7221" = load float, ptr %"R22"
  %"fmul.303" = fmul float %".7220", %".7221"
  %".7222" = bitcast ptr %"R7" to ptr
  store float %"fmul.303", ptr %".7222"
  ; FFMA R9, R41, R9, R6
  %".7225" = load float, ptr %"R41"
  %".7226" = load float, ptr %"R9"
  %".7227" = load float, ptr %"R6"
  %"fmul.304" = fmul float %".7225", %".7226"
  %"fadd.278" = fadd float %"fmul.304", %".7227"
  %".7228" = bitcast ptr %"R9" to ptr
  store float %"fadd.278", ptr %".7228"
  ; FMUL R60, R60, R22
  %".7231" = load float, ptr %"R60"
  %".7232" = load float, ptr %"R22"
  %"fmul.305" = fmul float %".7231", %".7232"
  %".7233" = bitcast ptr %"R60" to ptr
  store float %"fmul.305", ptr %".7233"
  ; FFMA R8, R7, R8, R9
  %".7236" = load float, ptr %"R7"
  %".7237" = load float, ptr %"R8"
  %".7238" = load float, ptr %"R9"
  %"fmul.306" = fmul float %".7236", %".7237"
  %"fadd.279" = fadd float %"fmul.306", %".7238"
  %".7239" = bitcast ptr %"R8" to ptr
  store float %"fadd.279", ptr %".7239"
  ; FFMA R21, R60, R11, R8
  %".7242" = load float, ptr %"R60"
  %".7243" = load float, ptr %"R11"
  %".7244" = load float, ptr %"R8"
  %"fmul.307" = fmul float %".7242", %".7243"
  %"fadd.280" = fadd float %"fmul.307", %".7244"
  %".7245" = bitcast ptr %"R21" to ptr
  store float %"fadd.280", ptr %".7245"
  ; @P1 BRA `(.L_x_39)
  %".7248" = load i1, ptr %"P1"
  %".7249" = icmp ne i1 %".7248", 1
  br i1 %".7249", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".7252" = load i32, ptr %"R35"
  %".7253" = load i1, ptr %"PT"
  %"cmp.61" = icmp sgt i32 %".7252", 4
  %".7254" = and i1 %"cmp.61", %".7253"
  store i1 %".7254", ptr %"P1"
  ; @!P1 BRA `(.L_x_40)
  %".7257" = load i1, ptr %"P1"
  %".7258" = icmp eq i1 %".7257", 1
  br i1 %".7258", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R6, R3, R34, RZ
  %".7263" = load i32, ptr %"R3"
  %".7264" = load i32, ptr %"R34"
  %"add.320" = add i32 %".7263", %".7264"
  %"add.321" = add i32 %"add.320", 0
  store i32 %"add.321", ptr %"R6"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".7267" = load i32, ptr %"R34"
  %".7268" = load i32, ptr %"R11"
  %"mul.98" = mul i32 %".7267", %".7268"
  %"add.322" = add i32 %"mul.98", %"Arg_3"
  store i32 %"add.322", ptr %"R8"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".7271" = load i32, ptr %"R6"
  %".7272" = load i32, ptr %"R11"
  %"mul.99" = mul i32 %".7271", %".7272"
  %"add.323" = add i32 %"mul.99", %"Arg_4"
  store i32 %"add.323", ptr %"R6"
  ; IADD3 R4, R34, 0x4, RZ
  %".7275" = load i32, ptr %"R34"
  %"add.324" = add i32 %".7275", 4
  %"add.325" = add i32 %"add.324", 0
  store i32 %"add.325", ptr %"R4"
  ; LDG.E.SYS R13, [R8]
  %".7278" = load i32, ptr %"R8"
  %"zext.720" = zext i32 %".7278" to i64
  %".7279" = load i32, ptr %"R9"
  %"zext.721" = zext i32 %".7279" to i64
  %"shl.380" = shl i64 %"zext.721", 32
  %"or.345" = or i64 %"shl.380", %"zext.720"
  %".7280" = inttoptr i64 %"or.345" to ptr
  %".7281" = ptrtoint ptr %".7280" to i64
  %".7282" = add i64 %".7281", 0
  %"for_LDG.314" = inttoptr i64 %".7282" to ptr
  %".7283" = load float, ptr %"for_LDG.314"
  %".7284" = bitcast ptr %"R13" to ptr
  store float %".7283", ptr %".7284"
  ; IADD3 R10, R3, R4, RZ
  %".7287" = load i32, ptr %"R3"
  %".7288" = load i32, ptr %"R4"
  %"add.326" = add i32 %".7287", %".7288"
  %"add.327" = add i32 %"add.326", 0
  store i32 %"add.327", ptr %"R10"
  ; LDG.E.SYS R12, [R6]
  %".7291" = load i32, ptr %"R6"
  %"zext.722" = zext i32 %".7291" to i64
  %".7292" = load i32, ptr %"R7"
  %"zext.723" = zext i32 %".7292" to i64
  %"shl.381" = shl i64 %"zext.723", 32
  %"or.346" = or i64 %"shl.381", %"zext.722"
  %".7293" = inttoptr i64 %"or.346" to ptr
  %".7294" = ptrtoint ptr %".7293" to i64
  %".7295" = add i64 %".7294", 0
  %"for_LDG.315" = inttoptr i64 %".7295" to ptr
  %".7296" = load float, ptr %"for_LDG.315"
  %".7297" = bitcast ptr %"R12" to ptr
  store float %".7296", ptr %".7297"
  ; LDG.E.SYS R25, [R8+0x4]
  %".7300" = load i32, ptr %"R8"
  %"zext.724" = zext i32 %".7300" to i64
  %".7301" = load i32, ptr %"R9"
  %"zext.725" = zext i32 %".7301" to i64
  %"shl.382" = shl i64 %"zext.725", 32
  %"or.347" = or i64 %"shl.382", %"zext.724"
  %".7302" = inttoptr i64 %"or.347" to ptr
  %".7303" = ptrtoint ptr %".7302" to i64
  %".7304" = add i64 %".7303", 4
  %"for_LDG.316" = inttoptr i64 %".7304" to ptr
  %".7305" = load float, ptr %"for_LDG.316"
  %".7306" = bitcast ptr %"R25" to ptr
  store float %".7305", ptr %".7306"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".7309" = load i32, ptr %"R4"
  %".7310" = load i32, ptr %"R11"
  %"mul.100" = mul i32 %".7309", %".7310"
  %"add.328" = add i32 %"mul.100", %"Arg_3"
  store i32 %"add.328", ptr %"R4"
  ; LDG.E.SYS R24, [R6+0x4]
  %".7313" = load i32, ptr %"R6"
  %"zext.726" = zext i32 %".7313" to i64
  %".7314" = load i32, ptr %"R7"
  %"zext.727" = zext i32 %".7314" to i64
  %"shl.383" = shl i64 %"zext.727", 32
  %"or.348" = or i64 %"shl.383", %"zext.726"
  %".7315" = inttoptr i64 %"or.348" to ptr
  %".7316" = ptrtoint ptr %".7315" to i64
  %".7317" = add i64 %".7316", 4
  %"for_LDG.317" = inttoptr i64 %".7317" to ptr
  %".7318" = load float, ptr %"for_LDG.317"
  %".7319" = bitcast ptr %"R24" to ptr
  store float %".7318", ptr %".7319"
  ; LDG.E.SYS R37, [R8+0x8]
  %".7322" = load i32, ptr %"R8"
  %"zext.728" = zext i32 %".7322" to i64
  %".7323" = load i32, ptr %"R9"
  %"zext.729" = zext i32 %".7323" to i64
  %"shl.384" = shl i64 %"zext.729", 32
  %"or.349" = or i64 %"shl.384", %"zext.728"
  %".7324" = inttoptr i64 %"or.349" to ptr
  %".7325" = ptrtoint ptr %".7324" to i64
  %".7326" = add i64 %".7325", 8
  %"for_LDG.318" = inttoptr i64 %".7326" to ptr
  %".7327" = load float, ptr %"for_LDG.318"
  %".7328" = bitcast ptr %"R37" to ptr
  store float %".7327", ptr %".7328"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".7331" = load i32, ptr %"R10"
  %".7332" = load i32, ptr %"R11"
  %"mul.101" = mul i32 %".7331", %".7332"
  %"add.329" = add i32 %"mul.101", %"Arg_4"
  store i32 %"add.329", ptr %"R10"
  ; LDG.E.SYS R36, [R6+0x8]
  %".7335" = load i32, ptr %"R6"
  %"zext.730" = zext i32 %".7335" to i64
  %".7336" = load i32, ptr %"R7"
  %"zext.731" = zext i32 %".7336" to i64
  %"shl.385" = shl i64 %"zext.731", 32
  %"or.350" = or i64 %"shl.385", %"zext.730"
  %".7337" = inttoptr i64 %"or.350" to ptr
  %".7338" = ptrtoint ptr %".7337" to i64
  %".7339" = add i64 %".7338", 8
  %"for_LDG.319" = inttoptr i64 %".7339" to ptr
  %".7340" = load float, ptr %"for_LDG.319"
  %".7341" = bitcast ptr %"R36" to ptr
  store float %".7340", ptr %".7341"
  ; LDG.E.SYS R39, [R8+0xc]
  %".7344" = load i32, ptr %"R8"
  %"zext.732" = zext i32 %".7344" to i64
  %".7345" = load i32, ptr %"R9"
  %"zext.733" = zext i32 %".7345" to i64
  %"shl.386" = shl i64 %"zext.733", 32
  %"or.351" = or i64 %"shl.386", %"zext.732"
  %".7346" = inttoptr i64 %"or.351" to ptr
  %".7347" = ptrtoint ptr %".7346" to i64
  %".7348" = add i64 %".7347", 12
  %"for_LDG.320" = inttoptr i64 %".7348" to ptr
  %".7349" = load float, ptr %"for_LDG.320"
  %".7350" = bitcast ptr %"R39" to ptr
  store float %".7349", ptr %".7350"
  ; LDG.E.SYS R38, [R6+0xc]
  %".7353" = load i32, ptr %"R6"
  %"zext.734" = zext i32 %".7353" to i64
  %".7354" = load i32, ptr %"R7"
  %"zext.735" = zext i32 %".7354" to i64
  %"shl.387" = shl i64 %"zext.735", 32
  %"or.352" = or i64 %"shl.387", %"zext.734"
  %".7355" = inttoptr i64 %"or.352" to ptr
  %".7356" = ptrtoint ptr %".7355" to i64
  %".7357" = add i64 %".7356", 12
  %"for_LDG.321" = inttoptr i64 %".7357" to ptr
  %".7358" = load float, ptr %"for_LDG.321"
  %".7359" = bitcast ptr %"R38" to ptr
  store float %".7358", ptr %".7359"
  ; LDG.E.SYS R41, [R4]
  %".7362" = load i32, ptr %"R4"
  %"zext.736" = zext i32 %".7362" to i64
  %".7363" = load i32, ptr %"R5"
  %"zext.737" = zext i32 %".7363" to i64
  %"shl.388" = shl i64 %"zext.737", 32
  %"or.353" = or i64 %"shl.388", %"zext.736"
  %".7364" = inttoptr i64 %"or.353" to ptr
  %".7365" = ptrtoint ptr %".7364" to i64
  %".7366" = add i64 %".7365", 0
  %"for_LDG.322" = inttoptr i64 %".7366" to ptr
  %".7367" = load float, ptr %"for_LDG.322"
  %".7368" = bitcast ptr %"R41" to ptr
  store float %".7367", ptr %".7368"
  ; LDG.E.SYS R40, [R10]
  %".7371" = load i32, ptr %"R10"
  %"zext.738" = zext i32 %".7371" to i64
  %".7372" = load i32, ptr %"R11"
  %"zext.739" = zext i32 %".7372" to i64
  %"shl.389" = shl i64 %"zext.739", 32
  %"or.354" = or i64 %"shl.389", %"zext.738"
  %".7373" = inttoptr i64 %"or.354" to ptr
  %".7374" = ptrtoint ptr %".7373" to i64
  %".7375" = add i64 %".7374", 0
  %"for_LDG.323" = inttoptr i64 %".7375" to ptr
  %".7376" = load float, ptr %"for_LDG.323"
  %".7377" = bitcast ptr %"R40" to ptr
  store float %".7376", ptr %".7377"
  ; LDG.E.SYS R43, [R4+0x4]
  %".7380" = load i32, ptr %"R4"
  %"zext.740" = zext i32 %".7380" to i64
  %".7381" = load i32, ptr %"R5"
  %"zext.741" = zext i32 %".7381" to i64
  %"shl.390" = shl i64 %"zext.741", 32
  %"or.355" = or i64 %"shl.390", %"zext.740"
  %".7382" = inttoptr i64 %"or.355" to ptr
  %".7383" = ptrtoint ptr %".7382" to i64
  %".7384" = add i64 %".7383", 4
  %"for_LDG.324" = inttoptr i64 %".7384" to ptr
  %".7385" = load float, ptr %"for_LDG.324"
  %".7386" = bitcast ptr %"R43" to ptr
  store float %".7385", ptr %".7386"
  ; LDG.E.SYS R42, [R10+0x4]
  %".7389" = load i32, ptr %"R10"
  %"zext.742" = zext i32 %".7389" to i64
  %".7390" = load i32, ptr %"R11"
  %"zext.743" = zext i32 %".7390" to i64
  %"shl.391" = shl i64 %"zext.743", 32
  %"or.356" = or i64 %"shl.391", %"zext.742"
  %".7391" = inttoptr i64 %"or.356" to ptr
  %".7392" = ptrtoint ptr %".7391" to i64
  %".7393" = add i64 %".7392", 4
  %"for_LDG.325" = inttoptr i64 %".7393" to ptr
  %".7394" = load float, ptr %"for_LDG.325"
  %".7395" = bitcast ptr %"R42" to ptr
  store float %".7394", ptr %".7395"
  ; LDG.E.SYS R45, [R4+0x8]
  %".7398" = load i32, ptr %"R4"
  %"zext.744" = zext i32 %".7398" to i64
  %".7399" = load i32, ptr %"R5"
  %"zext.745" = zext i32 %".7399" to i64
  %"shl.392" = shl i64 %"zext.745", 32
  %"or.357" = or i64 %"shl.392", %"zext.744"
  %".7400" = inttoptr i64 %"or.357" to ptr
  %".7401" = ptrtoint ptr %".7400" to i64
  %".7402" = add i64 %".7401", 8
  %"for_LDG.326" = inttoptr i64 %".7402" to ptr
  %".7403" = load float, ptr %"for_LDG.326"
  %".7404" = bitcast ptr %"R45" to ptr
  store float %".7403", ptr %".7404"
  ; LDG.E.SYS R47, [R4+0xc]
  %".7407" = load i32, ptr %"R4"
  %"zext.746" = zext i32 %".7407" to i64
  %".7408" = load i32, ptr %"R5"
  %"zext.747" = zext i32 %".7408" to i64
  %"shl.393" = shl i64 %"zext.747", 32
  %"or.358" = or i64 %"shl.393", %"zext.746"
  %".7409" = inttoptr i64 %"or.358" to ptr
  %".7410" = ptrtoint ptr %".7409" to i64
  %".7411" = add i64 %".7410", 12
  %"for_LDG.327" = inttoptr i64 %".7411" to ptr
  %".7412" = load float, ptr %"for_LDG.327"
  %".7413" = bitcast ptr %"R47" to ptr
  store float %".7412", ptr %".7413"
  ; LDG.E.SYS R44, [R10+0x8]
  %".7416" = load i32, ptr %"R10"
  %"zext.748" = zext i32 %".7416" to i64
  %".7417" = load i32, ptr %"R11"
  %"zext.749" = zext i32 %".7417" to i64
  %"shl.394" = shl i64 %"zext.749", 32
  %"or.359" = or i64 %"shl.394", %"zext.748"
  %".7418" = inttoptr i64 %"or.359" to ptr
  %".7419" = ptrtoint ptr %".7418" to i64
  %".7420" = add i64 %".7419", 8
  %"for_LDG.328" = inttoptr i64 %".7420" to ptr
  %".7421" = load float, ptr %"for_LDG.328"
  %".7422" = bitcast ptr %"R44" to ptr
  store float %".7421", ptr %".7422"
  ; LDG.E.SYS R46, [R10+0xc]
  %".7425" = load i32, ptr %"R10"
  %"zext.750" = zext i32 %".7425" to i64
  %".7426" = load i32, ptr %"R11"
  %"zext.751" = zext i32 %".7426" to i64
  %"shl.395" = shl i64 %"zext.751", 32
  %"or.360" = or i64 %"shl.395", %"zext.750"
  %".7427" = inttoptr i64 %"or.360" to ptr
  %".7428" = ptrtoint ptr %".7427" to i64
  %".7429" = add i64 %".7428", 12
  %"for_LDG.329" = inttoptr i64 %".7429" to ptr
  %".7430" = load float, ptr %"for_LDG.329"
  %".7431" = bitcast ptr %"R46" to ptr
  store float %".7430", ptr %".7431"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".7434" = xor i1 1, 1
  %".7435" = and i1 %".7434", 1
  %".7436" = and i1 %".7435", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".7438" = load i32, ptr %"R35"
  %"add.330" = add i32 %".7438", -8
  %"add.331" = add i32 %"add.330", 0
  store i32 %"add.331", ptr %"R35"
  ; IADD3 R34, R34, 0x8, RZ
  %".7441" = load i32, ptr %"R34"
  %"add.332" = add i32 %".7441", 8
  %"add.333" = add i32 %"add.332", 0
  store i32 %"add.333", ptr %"R34"
  ; FMUL R8, R13, R22
  %".7444" = load float, ptr %"R13"
  %".7445" = load float, ptr %"R22"
  %"fmul.308" = fmul float %".7444", %".7445"
  %".7446" = bitcast ptr %"R8" to ptr
  store float %"fmul.308", ptr %".7446"
  ; FFMA R8, R8, R12, R21
  %".7449" = load float, ptr %"R8"
  %".7450" = load float, ptr %"R12"
  %".7451" = load float, ptr %"R21"
  %"fmul.309" = fmul float %".7449", %".7450"
  %"fadd.281" = fadd float %"fmul.309", %".7451"
  %".7452" = bitcast ptr %"R8" to ptr
  store float %"fadd.281", ptr %".7452"
  ; FMUL R25, R25, R22
  %".7455" = load float, ptr %"R25"
  %".7456" = load float, ptr %"R22"
  %"fmul.310" = fmul float %".7455", %".7456"
  %".7457" = bitcast ptr %"R25" to ptr
  store float %"fmul.310", ptr %".7457"
  ; FFMA R8, R25, R24, R8
  %".7460" = load float, ptr %"R25"
  %".7461" = load float, ptr %"R24"
  %".7462" = load float, ptr %"R8"
  %"fmul.311" = fmul float %".7460", %".7461"
  %"fadd.282" = fadd float %"fmul.311", %".7462"
  %".7463" = bitcast ptr %"R8" to ptr
  store float %"fadd.282", ptr %".7463"
  ; FMUL R37, R37, R22
  %".7466" = load float, ptr %"R37"
  %".7467" = load float, ptr %"R22"
  %"fmul.312" = fmul float %".7466", %".7467"
  %".7468" = bitcast ptr %"R37" to ptr
  store float %"fmul.312", ptr %".7468"
  ; FFMA R8, R37, R36, R8
  %".7471" = load float, ptr %"R37"
  %".7472" = load float, ptr %"R36"
  %".7473" = load float, ptr %"R8"
  %"fmul.313" = fmul float %".7471", %".7472"
  %"fadd.283" = fadd float %"fmul.313", %".7473"
  %".7474" = bitcast ptr %"R8" to ptr
  store float %"fadd.283", ptr %".7474"
  ; FMUL R39, R39, R22
  %".7477" = load float, ptr %"R39"
  %".7478" = load float, ptr %"R22"
  %"fmul.314" = fmul float %".7477", %".7478"
  %".7479" = bitcast ptr %"R39" to ptr
  store float %"fmul.314", ptr %".7479"
  ; FFMA R8, R39, R38, R8
  %".7482" = load float, ptr %"R39"
  %".7483" = load float, ptr %"R38"
  %".7484" = load float, ptr %"R8"
  %"fmul.315" = fmul float %".7482", %".7483"
  %"fadd.284" = fadd float %"fmul.315", %".7484"
  %".7485" = bitcast ptr %"R8" to ptr
  store float %"fadd.284", ptr %".7485"
  ; FMUL R41, R41, R22
  %".7488" = load float, ptr %"R41"
  %".7489" = load float, ptr %"R22"
  %"fmul.316" = fmul float %".7488", %".7489"
  %".7490" = bitcast ptr %"R41" to ptr
  store float %"fmul.316", ptr %".7490"
  ; FFMA R8, R41, R40, R8
  %".7493" = load float, ptr %"R41"
  %".7494" = load float, ptr %"R40"
  %".7495" = load float, ptr %"R8"
  %"fmul.317" = fmul float %".7493", %".7494"
  %"fadd.285" = fadd float %"fmul.317", %".7495"
  %".7496" = bitcast ptr %"R8" to ptr
  store float %"fadd.285", ptr %".7496"
  ; FMUL R43, R43, R22
  %".7499" = load float, ptr %"R43"
  %".7500" = load float, ptr %"R22"
  %"fmul.318" = fmul float %".7499", %".7500"
  %".7501" = bitcast ptr %"R43" to ptr
  store float %"fmul.318", ptr %".7501"
  ; FFMA R8, R43, R42, R8
  %".7504" = load float, ptr %"R43"
  %".7505" = load float, ptr %"R42"
  %".7506" = load float, ptr %"R8"
  %"fmul.319" = fmul float %".7504", %".7505"
  %"fadd.286" = fadd float %"fmul.319", %".7506"
  %".7507" = bitcast ptr %"R8" to ptr
  store float %"fadd.286", ptr %".7507"
  ; FMUL R45, R45, R22.reuse
  %".7510" = load float, ptr %"R45"
  %".7511" = load float, ptr %"R22"
  %"fmul.320" = fmul float %".7510", %".7511"
  %".7512" = bitcast ptr %"R45" to ptr
  store float %"fmul.320", ptr %".7512"
  ; FMUL R47, R47, R22
  %".7515" = load float, ptr %"R47"
  %".7516" = load float, ptr %"R22"
  %"fmul.321" = fmul float %".7515", %".7516"
  %".7517" = bitcast ptr %"R47" to ptr
  store float %"fmul.321", ptr %".7517"
  ; FFMA R8, R45, R44, R8
  %".7520" = load float, ptr %"R45"
  %".7521" = load float, ptr %"R44"
  %".7522" = load float, ptr %"R8"
  %"fmul.322" = fmul float %".7520", %".7521"
  %"fadd.287" = fadd float %"fmul.322", %".7522"
  %".7523" = bitcast ptr %"R8" to ptr
  store float %"fadd.287", ptr %".7523"
  ; FFMA R21, R47, R46, R8
  %".7526" = load float, ptr %"R47"
  %".7527" = load float, ptr %"R46"
  %".7528" = load float, ptr %"R8"
  %"fmul.323" = fmul float %".7526", %".7527"
  %"fadd.288" = fadd float %"fmul.323", %".7528"
  %".7529" = bitcast ptr %"R21" to ptr
  store float %"fadd.288", ptr %".7529"
  br label %".L_x_40"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".7533" = load i32, ptr %"R35"
  %".7534" = load i1, ptr %"PT"
  %"cmp.62" = icmp ne i32 %".7533", 0
  %".7535" = or i1 %"cmp.62", %".7534"
  store i1 %".7535", ptr %"P0"
  ; @!P0 BRA `(.L_x_36)
  %".7538" = load i1, ptr %"P0"
  %".7539" = icmp eq i1 %".7538", 1
  br i1 %".7539", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IADD3 R6, R3, R34, RZ
  %".7544" = load i32, ptr %"R3"
  %".7545" = load i32, ptr %"R34"
  %"add.334" = add i32 %".7544", %".7545"
  %"add.335" = add i32 %"add.334", 0
  store i32 %"add.335", ptr %"R6"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".7548" = load i32, ptr %"R34"
  %".7549" = load i32, ptr %"R7"
  %"mul.102" = mul i32 %".7548", %".7549"
  %"add.336" = add i32 %"mul.102", %"Arg_3"
  store i32 %"add.336", ptr %"R4"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".7552" = load i32, ptr %"R6"
  %".7553" = load i32, ptr %"R7"
  %"mul.103" = mul i32 %".7552", %".7553"
  %"add.337" = add i32 %"mul.103", %"Arg_4"
  store i32 %"add.337", ptr %"R6"
  ; LDG.E.SYS R9, [R4]
  %".7556" = load i32, ptr %"R4"
  %"zext.752" = zext i32 %".7556" to i64
  %".7557" = load i32, ptr %"R5"
  %"zext.753" = zext i32 %".7557" to i64
  %"shl.396" = shl i64 %"zext.753", 32
  %"or.361" = or i64 %"shl.396", %"zext.752"
  %".7558" = inttoptr i64 %"or.361" to ptr
  %".7559" = ptrtoint ptr %".7558" to i64
  %".7560" = add i64 %".7559", 0
  %"for_LDG.330" = inttoptr i64 %".7560" to ptr
  %".7561" = load float, ptr %"for_LDG.330"
  %".7562" = bitcast ptr %"R9" to ptr
  store float %".7561", ptr %".7562"
  ; LDG.E.SYS R10, [R6]
  %".7565" = load i32, ptr %"R6"
  %"zext.754" = zext i32 %".7565" to i64
  %".7566" = load i32, ptr %"R7"
  %"zext.755" = zext i32 %".7566" to i64
  %"shl.397" = shl i64 %"zext.755", 32
  %"or.362" = or i64 %"shl.397", %"zext.754"
  %".7567" = inttoptr i64 %"or.362" to ptr
  %".7568" = ptrtoint ptr %".7567" to i64
  %".7569" = add i64 %".7568", 0
  %"for_LDG.331" = inttoptr i64 %".7569" to ptr
  %".7570" = load float, ptr %"for_LDG.331"
  %".7571" = bitcast ptr %"R10" to ptr
  store float %".7570", ptr %".7571"
  ; LDG.E.SYS R11, [R4+0x4]
  %".7574" = load i32, ptr %"R4"
  %"zext.756" = zext i32 %".7574" to i64
  %".7575" = load i32, ptr %"R5"
  %"zext.757" = zext i32 %".7575" to i64
  %"shl.398" = shl i64 %"zext.757", 32
  %"or.363" = or i64 %"shl.398", %"zext.756"
  %".7576" = inttoptr i64 %"or.363" to ptr
  %".7577" = ptrtoint ptr %".7576" to i64
  %".7578" = add i64 %".7577", 4
  %"for_LDG.332" = inttoptr i64 %".7578" to ptr
  %".7579" = load float, ptr %"for_LDG.332"
  %".7580" = bitcast ptr %"R11" to ptr
  store float %".7579", ptr %".7580"
  ; LDG.E.SYS R12, [R6+0x4]
  %".7583" = load i32, ptr %"R6"
  %"zext.758" = zext i32 %".7583" to i64
  %".7584" = load i32, ptr %"R7"
  %"zext.759" = zext i32 %".7584" to i64
  %"shl.399" = shl i64 %"zext.759", 32
  %"or.364" = or i64 %"shl.399", %"zext.758"
  %".7585" = inttoptr i64 %"or.364" to ptr
  %".7586" = ptrtoint ptr %".7585" to i64
  %".7587" = add i64 %".7586", 4
  %"for_LDG.333" = inttoptr i64 %".7587" to ptr
  %".7588" = load float, ptr %"for_LDG.333"
  %".7589" = bitcast ptr %"R12" to ptr
  store float %".7588", ptr %".7589"
  ; LDG.E.SYS R13, [R4+0x8]
  %".7592" = load i32, ptr %"R4"
  %"zext.760" = zext i32 %".7592" to i64
  %".7593" = load i32, ptr %"R5"
  %"zext.761" = zext i32 %".7593" to i64
  %"shl.400" = shl i64 %"zext.761", 32
  %"or.365" = or i64 %"shl.400", %"zext.760"
  %".7594" = inttoptr i64 %"or.365" to ptr
  %".7595" = ptrtoint ptr %".7594" to i64
  %".7596" = add i64 %".7595", 8
  %"for_LDG.334" = inttoptr i64 %".7596" to ptr
  %".7597" = load float, ptr %"for_LDG.334"
  %".7598" = bitcast ptr %"R13" to ptr
  store float %".7597", ptr %".7598"
  ; LDG.E.SYS R24, [R6+0x8]
  %".7601" = load i32, ptr %"R6"
  %"zext.762" = zext i32 %".7601" to i64
  %".7602" = load i32, ptr %"R7"
  %"zext.763" = zext i32 %".7602" to i64
  %"shl.401" = shl i64 %"zext.763", 32
  %"or.366" = or i64 %"shl.401", %"zext.762"
  %".7603" = inttoptr i64 %"or.366" to ptr
  %".7604" = ptrtoint ptr %".7603" to i64
  %".7605" = add i64 %".7604", 8
  %"for_LDG.335" = inttoptr i64 %".7605" to ptr
  %".7606" = load float, ptr %"for_LDG.335"
  %".7607" = bitcast ptr %"R24" to ptr
  store float %".7606", ptr %".7607"
  ; LDG.E.SYS R25, [R4+0xc]
  %".7610" = load i32, ptr %"R4"
  %"zext.764" = zext i32 %".7610" to i64
  %".7611" = load i32, ptr %"R5"
  %"zext.765" = zext i32 %".7611" to i64
  %"shl.402" = shl i64 %"zext.765", 32
  %"or.367" = or i64 %"shl.402", %"zext.764"
  %".7612" = inttoptr i64 %"or.367" to ptr
  %".7613" = ptrtoint ptr %".7612" to i64
  %".7614" = add i64 %".7613", 12
  %"for_LDG.336" = inttoptr i64 %".7614" to ptr
  %".7615" = load float, ptr %"for_LDG.336"
  %".7616" = bitcast ptr %"R25" to ptr
  store float %".7615", ptr %".7616"
  ; LDG.E.SYS R36, [R6+0xc]
  %".7619" = load i32, ptr %"R6"
  %"zext.766" = zext i32 %".7619" to i64
  %".7620" = load i32, ptr %"R7"
  %"zext.767" = zext i32 %".7620" to i64
  %"shl.403" = shl i64 %"zext.767", 32
  %"or.368" = or i64 %"shl.403", %"zext.766"
  %".7621" = inttoptr i64 %"or.368" to ptr
  %".7622" = ptrtoint ptr %".7621" to i64
  %".7623" = add i64 %".7622", 12
  %"for_LDG.337" = inttoptr i64 %".7623" to ptr
  %".7624" = load float, ptr %"for_LDG.337"
  %".7625" = bitcast ptr %"R36" to ptr
  store float %".7624", ptr %".7625"
  ; IADD3 R35, R35, -0x4, RZ
  %".7628" = load i32, ptr %"R35"
  %"add.338" = add i32 %".7628", -4
  %"add.339" = add i32 %"add.338", 0
  store i32 %"add.339", ptr %"R35"
  ; IADD3 R34, R34, 0x4, RZ
  %".7631" = load i32, ptr %"R34"
  %"add.340" = add i32 %".7631", 4
  %"add.341" = add i32 %"add.340", 0
  store i32 %"add.341", ptr %"R34"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".7634" = load i32, ptr %"R35"
  %".7635" = load i1, ptr %"PT"
  %"cmp.63" = icmp ne i32 %".7634", 0
  %".7636" = and i1 %"cmp.63", %".7635"
  store i1 %".7636", ptr %"P0"
  ; FMUL R8, R9, R22
  %".7639" = load float, ptr %"R9"
  %".7640" = load float, ptr %"R22"
  %"fmul.324" = fmul float %".7639", %".7640"
  %".7641" = bitcast ptr %"R8" to ptr
  store float %"fmul.324", ptr %".7641"
  ; FFMA R8, R8, R10, R21
  %".7644" = load float, ptr %"R8"
  %".7645" = load float, ptr %"R10"
  %".7646" = load float, ptr %"R21"
  %"fmul.325" = fmul float %".7644", %".7645"
  %"fadd.289" = fadd float %"fmul.325", %".7646"
  %".7647" = bitcast ptr %"R8" to ptr
  store float %"fadd.289", ptr %".7647"
  ; FMUL R11, R11, R22
  %".7650" = load float, ptr %"R11"
  %".7651" = load float, ptr %"R22"
  %"fmul.326" = fmul float %".7650", %".7651"
  %".7652" = bitcast ptr %"R11" to ptr
  store float %"fmul.326", ptr %".7652"
  ; FFMA R8, R11, R12, R8
  %".7655" = load float, ptr %"R11"
  %".7656" = load float, ptr %"R12"
  %".7657" = load float, ptr %"R8"
  %"fmul.327" = fmul float %".7655", %".7656"
  %"fadd.290" = fadd float %"fmul.327", %".7657"
  %".7658" = bitcast ptr %"R8" to ptr
  store float %"fadd.290", ptr %".7658"
  ; FMUL R13, R13, R22
  %".7661" = load float, ptr %"R13"
  %".7662" = load float, ptr %"R22"
  %"fmul.328" = fmul float %".7661", %".7662"
  %".7663" = bitcast ptr %"R13" to ptr
  store float %"fmul.328", ptr %".7663"
  ; FFMA R8, R13, R24, R8
  %".7666" = load float, ptr %"R13"
  %".7667" = load float, ptr %"R24"
  %".7668" = load float, ptr %"R8"
  %"fmul.329" = fmul float %".7666", %".7667"
  %"fadd.291" = fadd float %"fmul.329", %".7668"
  %".7669" = bitcast ptr %"R8" to ptr
  store float %"fadd.291", ptr %".7669"
  ; FMUL R25, R25, R22
  %".7672" = load float, ptr %"R25"
  %".7673" = load float, ptr %"R22"
  %"fmul.330" = fmul float %".7672", %".7673"
  %".7674" = bitcast ptr %"R25" to ptr
  store float %"fmul.330", ptr %".7674"
  ; FFMA R21, R25, R36, R8
  %".7677" = load float, ptr %"R25"
  %".7678" = load float, ptr %"R36"
  %".7679" = load float, ptr %"R8"
  %"fmul.331" = fmul float %".7677", %".7678"
  %"fadd.292" = fadd float %"fmul.331", %".7679"
  %".7680" = bitcast ptr %"R21" to ptr
  store float %"fadd.292", ptr %".7680"
  ; @P0 BRA `(.L_x_37)
  %".7683" = load i1, ptr %"P0"
  %".7684" = icmp ne i1 %".7683", 1
  br i1 %".7684", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".7687" = load i32, ptr %"R48"
  %".7688" = load i1, ptr %"PT"
  %"cmp.64" = icmp ne i32 %".7687", 0
  %".7689" = and i1 %"cmp.64", %".7688"
  store i1 %".7689", ptr %"P0"
  ; @!P0 BRA `(.L_x_35)
  %".7692" = load i1, ptr %"P0"
  %".7693" = icmp eq i1 %".7692", 1
  br i1 %".7693", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IADD3 R4, R3, R34, RZ
  %".7698" = load i32, ptr %"R3"
  %".7699" = load i32, ptr %"R34"
  %"add.342" = add i32 %".7698", %".7699"
  %"add.343" = add i32 %"add.342", 0
  store i32 %"add.343", ptr %"R4"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".7702" = load i32, ptr %"R34"
  %".7703" = load i32, ptr %"R5"
  %"mul.104" = mul i32 %".7702", %".7703"
  %"add.344" = add i32 %"mul.104", %"Arg_3"
  store i32 %"add.344", ptr %"R34"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".7706" = load i32, ptr %"R4"
  %".7707" = load i32, ptr %"R5"
  %"mul.105" = mul i32 %".7706", %".7707"
  %"add.345" = add i32 %"mul.105", %"Arg_4"
  store i32 %"add.345", ptr %"R4"
  ; LDG.E.SYS R7, [R34]
  %".7710" = load i32, ptr %"R34"
  %"zext.768" = zext i32 %".7710" to i64
  %".7711" = load i32, ptr %"R35"
  %"zext.769" = zext i32 %".7711" to i64
  %"shl.404" = shl i64 %"zext.769", 32
  %"or.369" = or i64 %"shl.404", %"zext.768"
  %".7712" = inttoptr i64 %"or.369" to ptr
  %".7713" = ptrtoint ptr %".7712" to i64
  %".7714" = add i64 %".7713", 0
  %"for_LDG.338" = inttoptr i64 %".7714" to ptr
  %".7715" = load float, ptr %"for_LDG.338"
  %".7716" = bitcast ptr %"R7" to ptr
  store float %".7715", ptr %".7716"
  ; LDG.E.SYS R8, [R4]
  %".7719" = load i32, ptr %"R4"
  %"zext.770" = zext i32 %".7719" to i64
  %".7720" = load i32, ptr %"R5"
  %"zext.771" = zext i32 %".7720" to i64
  %"shl.405" = shl i64 %"zext.771", 32
  %"or.370" = or i64 %"shl.405", %"zext.770"
  %".7721" = inttoptr i64 %"or.370" to ptr
  %".7722" = ptrtoint ptr %".7721" to i64
  %".7723" = add i64 %".7722", 0
  %"for_LDG.339" = inttoptr i64 %".7723" to ptr
  %".7724" = load float, ptr %"for_LDG.339"
  %".7725" = bitcast ptr %"R8" to ptr
  store float %".7724", ptr %".7725"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".7728" = load i32, ptr %"R48"
  %".7729" = load i1, ptr %"PT"
  %"cmp.65" = icmp ne i32 %".7728", 1
  %".7730" = and i1 %"cmp.65", %".7729"
  store i1 %".7730", ptr %"P0"
  ; FMUL R6, R7, R22
  %".7733" = load float, ptr %"R7"
  %".7734" = load float, ptr %"R22"
  %"fmul.332" = fmul float %".7733", %".7734"
  %".7735" = bitcast ptr %"R6" to ptr
  store float %"fmul.332", ptr %".7735"
  ; FFMA R21, R6, R8, R21
  %".7738" = load float, ptr %"R6"
  %".7739" = load float, ptr %"R8"
  %".7740" = load float, ptr %"R21"
  %"fmul.333" = fmul float %".7738", %".7739"
  %"fadd.293" = fadd float %"fmul.333", %".7740"
  %".7741" = bitcast ptr %"R21" to ptr
  store float %"fadd.293", ptr %".7741"
  ; @!P0 BRA `(.L_x_35)
  %".7744" = load i1, ptr %"P0"
  %".7745" = icmp eq i1 %".7744", 1
  br i1 %".7745", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".7748" = load i32, ptr %"R48"
  %".7749" = load i1, ptr %"PT"
  %"cmp.66" = icmp ne i32 %".7748", 2
  %".7750" = and i1 %"cmp.66", %".7749"
  store i1 %".7750", ptr %"P0"
  ; LDG.E.SYS R7, [R34+0x4]
  %".7753" = load i32, ptr %"R34"
  %"zext.772" = zext i32 %".7753" to i64
  %".7754" = load i32, ptr %"R35"
  %"zext.773" = zext i32 %".7754" to i64
  %"shl.406" = shl i64 %"zext.773", 32
  %"or.371" = or i64 %"shl.406", %"zext.772"
  %".7755" = inttoptr i64 %"or.371" to ptr
  %".7756" = ptrtoint ptr %".7755" to i64
  %".7757" = add i64 %".7756", 4
  %"for_LDG.340" = inttoptr i64 %".7757" to ptr
  %".7758" = load float, ptr %"for_LDG.340"
  %".7759" = bitcast ptr %"R7" to ptr
  store float %".7758", ptr %".7759"
  ; LDG.E.SYS R8, [R4+0x4]
  %".7762" = load i32, ptr %"R4"
  %"zext.774" = zext i32 %".7762" to i64
  %".7763" = load i32, ptr %"R5"
  %"zext.775" = zext i32 %".7763" to i64
  %"shl.407" = shl i64 %"zext.775", 32
  %"or.372" = or i64 %"shl.407", %"zext.774"
  %".7764" = inttoptr i64 %"or.372" to ptr
  %".7765" = ptrtoint ptr %".7764" to i64
  %".7766" = add i64 %".7765", 4
  %"for_LDG.341" = inttoptr i64 %".7766" to ptr
  %".7767" = load float, ptr %"for_LDG.341"
  %".7768" = bitcast ptr %"R8" to ptr
  store float %".7767", ptr %".7768"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".7771" = load i1, ptr %"P0"
  %".7772" = icmp ne i1 %".7771", 1
  br i1 %".7772", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  %".7775" = load i32, ptr %"R34"
  %"zext.776" = zext i32 %".7775" to i64
  %".7776" = load i32, ptr %"R35"
  %"zext.777" = zext i32 %".7776" to i64
  %"shl.408" = shl i64 %"zext.777", 32
  %"or.373" = or i64 %"shl.408", %"zext.776"
  %".7777" = inttoptr i64 %"or.373" to ptr
  %".7778" = ptrtoint ptr %".7777" to i64
  %".7779" = add i64 %".7778", 8
  %"for_LDG.342" = inttoptr i64 %".7779" to ptr
  %".7780" = load float, ptr %"for_LDG.342"
  %".7781" = bitcast ptr %"R9" to ptr
  store float %".7780", ptr %".7781"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".7786" = load i1, ptr %"P0"
  %".7787" = icmp ne i1 %".7786", 1
  br i1 %".7787", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  %".7790" = load i32, ptr %"R4"
  %"zext.778" = zext i32 %".7790" to i64
  %".7791" = load i32, ptr %"R5"
  %"zext.779" = zext i32 %".7791" to i64
  %"shl.409" = shl i64 %"zext.779", 32
  %"or.374" = or i64 %"shl.409", %"zext.778"
  %".7792" = inttoptr i64 %"or.374" to ptr
  %".7793" = ptrtoint ptr %".7792" to i64
  %".7794" = add i64 %".7793", 8
  %"for_LDG.343" = inttoptr i64 %".7794" to ptr
  %".7795" = load float, ptr %"for_LDG.343"
  %".7796" = bitcast ptr %"R10" to ptr
  store float %".7795", ptr %".7796"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".7801" = load float, ptr %"R7"
  %".7802" = load float, ptr %"R22"
  %"fmul.334" = fmul float %".7801", %".7802"
  %".7803" = bitcast ptr %"R6" to ptr
  store float %"fmul.334", ptr %".7803"
  ; FFMA R21, R6, R8, R21
  %".7806" = load float, ptr %"R6"
  %".7807" = load float, ptr %"R8"
  %".7808" = load float, ptr %"R21"
  %"fmul.335" = fmul float %".7806", %".7807"
  %"fadd.294" = fadd float %"fmul.335", %".7808"
  %".7809" = bitcast ptr %"R21" to ptr
  store float %"fadd.294", ptr %".7809"
  ; @P0 FMUL R22, R9, R22
  %".7812" = load i1, ptr %"P0"
  %".7813" = icmp ne i1 %".7812", 1
  br i1 %".7813", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".7816" = load float, ptr %"R9"
  %".7817" = load float, ptr %"R22"
  %"fmul.336" = fmul float %".7816", %".7817"
  %".7818" = bitcast ptr %"R22" to ptr
  store float %"fmul.336", ptr %".7818"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".7823" = load i1, ptr %"P0"
  %".7824" = icmp ne i1 %".7823", 1
  br i1 %".7824", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".7827" = load float, ptr %"R22"
  %".7828" = load float, ptr %"R10"
  %".7829" = load float, ptr %"R21"
  %"fmul.337" = fmul float %".7827", %".7828"
  %"fadd.295" = fadd float %"fmul.337", %".7829"
  %".7830" = bitcast ptr %"R21" to ptr
  store float %"fadd.295", ptr %".7830"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  %".7835" = load i32, ptr %"R30"
  %"zext.780" = zext i32 %".7835" to i64
  %"zext.781" = zext i32 0 to i64
  %"shl.410" = shl i64 %"zext.781", 32
  %"or.375" = or i64 %"shl.410", %"zext.780"
  %".7836" = inttoptr i64 %"or.375" to ptr
  %".7837" = ptrtoint ptr %".7836" to i64
  %".7838" = add i64 %".7837", 0
  %"for_LDG.344" = inttoptr i64 %".7838" to ptr
  %".7839" = load float, ptr %"for_LDG.344"
  %".7840" = bitcast ptr %"R4" to ptr
  store float %".7839", ptr %".7840"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".7845" = load float, ptr %"R4"
  %".7846" = load float, ptr %"R21"
  %"fadd.296" = fadd float %".7845", %".7846"
  %".7847" = bitcast ptr %"R21" to ptr
  store float %"fadd.296", ptr %".7847"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".7850" = load float, ptr %"R21"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".7850")
  %".7851" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".7852" = and i1 %"fcmp_unordered.2", %".7851"
  store i1 %".7852", ptr %"P0"
  ; @!P0 BRA `(.L_x_42)
  %".7855" = load i1, ptr %"P0"
  %".7856" = icmp eq i1 %".7855", 1
  br i1 %".7856", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".7859" = load float, ptr %"R21"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".7859")
  %"fmul.338" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".7860" = bitcast ptr %"R5" to ptr
  store float %"fmul.338", ptr %".7860"
  ; MOV R7, 0x3f800000
  %".7863" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".7863"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".7866" = load float, ptr %"R21"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".7866")
  %".7867" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".7868" = and i1 %"fcmp_unordered.3", %".7867"
  store i1 %".7868", ptr %"P0"
  ; MUFU.EX2 R5, R5
  %".7871" = load float, ptr %"R5"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".7871")
  %".7872" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.5", ptr %".7872"
  ; FADD R6, R5, 1
  %".7875" = load float, ptr %"R5"
  %"fadd.297" = fadd float %".7875", 0x3ff0000000000000
  %".7876" = bitcast ptr %"R6" to ptr
  store float %"fadd.297", ptr %".7876"
  ; MUFU.RCP R6, R6
  %".7879" = load float, ptr %"R6"
  %".7880" = fdiv float 0x3ff0000000000000, %".7879"
  %".7881" = bitcast ptr %"R6" to ptr
  store float %".7880", ptr %".7881"
  ; FFMA R4, R6, -2, R7
  %".7884" = load float, ptr %"R6"
  %".7885" = load float, ptr %"R7"
  %"fmul.339" = fmul float %".7884", 0xc000000000000000
  %"fadd.298" = fadd float %"fmul.339", %".7885"
  %".7886" = bitcast ptr %"R4" to ptr
  store float %"fadd.298", ptr %".7886"
  ; FSEL R4, R4, 1, !P0
  %".7889" = load float, ptr %"R4"
  %".7890" = load i1, ptr %"P0"
  %".7891" = icmp eq i1 %".7890", 1
  %"fsel.1" = select  i1 %".7891", float %".7889", float 0x3ff0000000000000
  %".7892" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".7892"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".7895" = load float, ptr %"R4"
  %".7896" = load float, ptr %"R21"
  %".7897" = bitcast float %".7895" to i32
  %".7898" = bitcast float 0x41e0000000000000 to i32
  %".7899" = bitcast float %".7896" to i32
  %".7900" = or i32 %".7897", %".7898"
  %".7901" = or i32 %".7897", %".7899"
  %".7902" = and i32 %".7900", %".7901"
  store i32 %".7902", ptr %"R4"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  %".7907" = bitcast ptr %"R5" to ptr
  store float 0x41ce407840000000, ptr %".7907"
  ; FMUL R4, R21, R21
  %".7910" = load float, ptr %"R21"
  %".7911" = load float, ptr %"R21"
  %"fmul.340" = fmul float %".7910", %".7911"
  %".7912" = bitcast ptr %"R4" to ptr
  store float %"fmul.340", ptr %".7912"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".7915" = load float, ptr %"R4"
  %".7916" = load float, ptr %"R5"
  %"fmul.341" = fmul float %".7915", %".7916"
  %"fadd.299" = fadd float %"fmul.341", 0xbfaac795c0000000
  %".7917" = bitcast ptr %"R5" to ptr
  store float %"fadd.299", ptr %".7917"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".7920" = load float, ptr %"R4"
  %".7921" = load float, ptr %"R5"
  %"fmul.342" = fmul float %".7920", %".7921"
  %"fadd.300" = fadd float %"fmul.342", 0x3fc10b2820000000
  %".7922" = bitcast ptr %"R5" to ptr
  store float %"fadd.300", ptr %".7922"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".7925" = load float, ptr %"R4"
  %".7926" = load float, ptr %"R5"
  %"fmul.343" = fmul float %".7925", %".7926"
  %"fadd.301" = fadd float %"fmul.343", 0xbfd5553da0000000
  %".7927" = bitcast ptr %"R5" to ptr
  store float %"fadd.301", ptr %".7927"
  ; FFMA R4, R4, R5, RZ
  %".7930" = load float, ptr %"R4"
  %".7931" = load float, ptr %"R5"
  %"fmul.344" = fmul float %".7930", %".7931"
  %"fadd.302" = fadd float %"fmul.344",              0x0
  %".7932" = bitcast ptr %"R4" to ptr
  store float %"fadd.302", ptr %".7932"
  ; FFMA R4, R21, R4, R21
  %".7935" = load float, ptr %"R21"
  %".7936" = load float, ptr %"R4"
  %".7937" = load float, ptr %"R21"
  %"fmul.345" = fmul float %".7935", %".7936"
  %"fadd.303" = fadd float %"fmul.345", %".7937"
  %".7938" = bitcast ptr %"R4" to ptr
  store float %"fadd.303", ptr %".7938"
  br label %".L_x_43"
.L_x_43:
  ; BSYNC B0
  br label %".L_x_41"
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  %".7944" = load i32, ptr %"R23"
  %"add.346" = add i32 %".7944", 25165824
  %"add.347" = add i32 %"add.346", 0
  store i32 %"add.347", ptr %"R5"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".7949" = load i32, ptr %"R5"
  %".7950" = and i32 %".7949", 2139095040
  store i32 %".7950", ptr %"R5"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".7953" = load i32, ptr %"R5"
  %".7954" = load i1, ptr %"PT"
  %"cmp.67" = icmp sgt i32 %".7953", 33554431
  %".7955" = and i1 %"cmp.67", %".7954"
  store i1 %".7955", ptr %"P0"
  ; @P0 BRA `(.L_x_45)
  %".7958" = load i1, ptr %"P0"
  %".7959" = icmp ne i1 %".7958", 1
  br i1 %".7959", label %".L_x_45", label %".L_x_41_split_0x47f0_CALL_0x4830"
.L_x_41_split_0x47f0_CALL_0x4830:
  ; MOV R24, R23
  %".7962" = load float, ptr %"R23"
  %".7963" = bitcast ptr %"R24" to ptr
  store float %".7962", ptr %".7963"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...4:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".7970" = icmp ult i32 1, 32
  %"SHF_min.30" = select  i1 %".7970", i32 1, i32 32
  %".7971" = load i32, ptr %"R24"
  %"zext.782" = zext i32 0 to i64
  %"zext.783" = zext i32 %".7971" to i64
  %"zext.784" = zext i32 1 to i64
  %"shl.411" = shl i64 %"zext.782", 32
  %"or.376" = or i64 %"shl.411", %"zext.783"
  %"shl.412" = shl i64 %"or.376", %"zext.784"
  %"and.19" = and i64 %"shl.412", 4294967295
  %"trunc32.30" = trunc i64 %"and.19" to i32
  store i32 %"trunc32.30", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".7976" = icmp ult i32 24, 32
  %"SHF_min.31" = select  i1 %".7976", i32 24, i32 32
  %".7977" = load i32, ptr %"R11"
  %"zext.785" = zext i32 %".7977" to i64
  %"zext.786" = zext i32 0 to i64
  %"zext.787" = zext i32 24 to i64
  %"shl.413" = shl i64 %"zext.785", 32
  %"or.377" = or i64 %"shl.413", %"zext.786"
  %"lshr.19" = lshr i64 %"or.377", %"zext.787"
  %"lshr.20" = lshr i64 %"lshr.19", 32
  %"trunc32.31" = trunc i64 %"lshr.20" to i32
  store i32 %"trunc32.31", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".7980" = load i32, ptr %"R25"
  %".7981" = load i1, ptr %"PT"
  %"cmp.68" = icmp ne i32 %".7980", 0
  %".7982" = and i1 %"cmp.68", %".7981"
  store i1 %".7982", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".7985" = load i1, ptr %"P0"
  %".7986" = icmp ne i1 %".7985", 1
  br i1 %".7986", label %".L_x_49...4", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".7989" = icmp ult i32 1, 32
  %"SHF_min.32" = select  i1 %".7989", i32 1, i32 32
  %".7990" = load i32, ptr %"R24"
  %"zext.788" = zext i32 0 to i64
  %"zext.789" = zext i32 %".7990" to i64
  %"zext.790" = zext i32 1 to i64
  %"shl.414" = shl i64 %"zext.788", 32
  %"or.378" = or i64 %"shl.414", %"zext.789"
  %"shl.415" = shl i64 %"or.378", %"zext.790"
  %"and.20" = and i64 %"shl.415", 4294967295
  %"trunc32.32" = trunc i64 %"and.20" to i32
  store i32 %"trunc32.32", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".7993" = load i32, ptr %"R11"
  %".7994" = load i1, ptr %"PT"
  %"cmp.69" = icmp ne i32 %".7993", 0
  %".7995" = and i1 %"cmp.69", %".7994"
  store i1 %".7995", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".7998" = load i1, ptr %"P0"
  %".7999" = icmp ne i1 %".7998", 1
  br i1 %".7999", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".8002" = load float, ptr %"R24"
  %"fmul.346" = fmul float %".8002", 0x43f0000000000000
  %"fadd.304" = fadd float %"fmul.346",              0x0
  %".8003" = bitcast ptr %"R12" to ptr
  store float %"fadd.304", ptr %".8003"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".8008" = load float, ptr %"R24"
  %"fmul.347" = fmul float %".8008", 0x43f0000000000000
  %"fadd.305" = fadd float %"fmul.347",              0x0
  %".8009" = bitcast ptr %"R12" to ptr
  store float %"fadd.305", ptr %".8009"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4:
  ; @!P0 MUFU.RCP R11, R24
  %".8014" = load i1, ptr %"P0"
  %".8015" = icmp eq i1 %".8014", 1
  br i1 %".8015", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".8018" = load i32, ptr %"R24"
  %"sint_to_f32.2" = sitofp i32 %".8018" to float
  %".8019" = fdiv float 0x3ff0000000000000, %"sint_to_f32.2"
  %".8020" = fptosi float %".8019" to i32
  store i32 %".8020", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4:
  ; MUFU.RCP R11, R24
  %".8025" = load i32, ptr %"R24"
  %"sint_to_f32.3" = sitofp i32 %".8025" to float
  %".8026" = fdiv float 0x3ff0000000000000, %"sint_to_f32.3"
  %".8027" = fptosi float %".8026" to i32
  store i32 %".8027", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4:
  ; @P0 MUFU.RCP R13, R12
  %".8032" = load i1, ptr %"P0"
  %".8033" = icmp ne i1 %".8032", 1
  br i1 %".8033", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".8036" = load float, ptr %"R12"
  %".8037" = fdiv float 0x3ff0000000000000, %".8036"
  %".8038" = bitcast ptr %"R13" to ptr
  store float %".8037", ptr %".8038"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4:
  ; MUFU.RCP R13, R12
  %".8043" = load float, ptr %"R12"
  %".8044" = fdiv float 0x3ff0000000000000, %".8043"
  %".8045" = bitcast ptr %"R13" to ptr
  store float %".8044", ptr %".8045"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4:
  ; @P0 FFMA R22, R12, R13, -1
  %".8050" = load i1, ptr %"P0"
  %".8051" = icmp ne i1 %".8050", 1
  br i1 %".8051", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".8054" = load float, ptr %"R12"
  %".8055" = load float, ptr %"R13"
  %"fmul.348" = fmul float %".8054", %".8055"
  %"fadd.306" = fadd float %"fmul.348", 0xbff0000000000000
  %".8056" = bitcast ptr %"R22" to ptr
  store float %"fadd.306", ptr %".8056"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4:
  ; FFMA R22, R12, R13, -1
  %".8061" = load float, ptr %"R12"
  %".8062" = load float, ptr %"R13"
  %"fmul.349" = fmul float %".8061", %".8062"
  %"fadd.307" = fadd float %"fmul.349", 0xbff0000000000000
  %".8063" = bitcast ptr %"R22" to ptr
  store float %"fadd.307", ptr %".8063"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".8068" = load i1, ptr %"P0"
  %".8069" = icmp ne i1 %".8068", 1
  br i1 %".8069", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".8072" = load float, ptr %"R22"
  %".8073" = fneg float %".8072"
  %"fadd.308" = fadd float %".8073",              0x0
  %".8074" = bitcast ptr %"R22" to ptr
  store float %"fadd.308", ptr %".8074"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4:
  ; FADD.FTZ R22, -R22, -RZ
  %".8079" = load float, ptr %"R22"
  %".8080" = fneg float %".8079"
  %"fadd.309" = fadd float %".8080",              0x0
  %".8081" = bitcast ptr %"R22" to ptr
  store float %"fadd.309", ptr %".8081"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4:
  ; @P0 FFMA R22, R13, R22, R13
  %".8086" = load i1, ptr %"P0"
  %".8087" = icmp ne i1 %".8086", 1
  br i1 %".8087", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".8090" = load float, ptr %"R13"
  %".8091" = load float, ptr %"R22"
  %".8092" = load float, ptr %"R13"
  %"fmul.350" = fmul float %".8090", %".8091"
  %"fadd.310" = fadd float %"fmul.350", %".8092"
  %".8093" = bitcast ptr %"R22" to ptr
  store float %"fadd.310", ptr %".8093"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4:
  ; FFMA R22, R13, R22, R13
  %".8098" = load float, ptr %"R13"
  %".8099" = load float, ptr %"R22"
  %".8100" = load float, ptr %"R13"
  %"fmul.351" = fmul float %".8098", %".8099"
  %"fadd.311" = fadd float %"fmul.351", %".8100"
  %".8101" = bitcast ptr %"R22" to ptr
  store float %"fadd.311", ptr %".8101"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8106" = load i1, ptr %"P0"
  %".8107" = icmp ne i1 %".8106", 1
  br i1 %".8107", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8110" = load float, ptr %"R22"
  %"fmul.352" = fmul float %".8110", 0x43f0000000000000
  %"fadd.312" = fadd float %"fmul.352",              0x0
  %".8111" = bitcast ptr %"R11" to ptr
  store float %"fadd.312", ptr %".8111"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8116" = load float, ptr %"R22"
  %"fmul.353" = fmul float %".8116", 0x43f0000000000000
  %"fadd.313" = fadd float %"fmul.353",              0x0
  %".8117" = bitcast ptr %"R11" to ptr
  store float %"fadd.313", ptr %".8117"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...4:
  ; BRA `(.L_x_50)
  br label %".L_x_50...4"
.L_x_49...4:
  ; IADD3 R34, R25, -0xfd, RZ
  %".8124" = load i32, ptr %"R25"
  %"add.348" = add i32 %".8124", -253
  %"add.349" = add i32 %"add.348", 0
  store i32 %"add.349", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".8127" = load i32, ptr %"R34"
  %".8128" = load i1, ptr %"PT"
  %"cmp.70" = icmp sgt i32 %".8127", 1
  %".8129" = and i1 %"cmp.70", %".8128"
  store i1 %".8129", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".8132" = load i1, ptr %"P0"
  %".8133" = icmp ne i1 %".8132", 1
  br i1 %".8133", label %".L_x_51...4", label %".L_x_49_split_0x4a30...4"
.L_x_49_split_0x4a30...4:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".8136" = load i32, ptr %"R24"
  %".8137" = and i32 %".8136", 8388607
  store i32 %".8137", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".8142" = load i32, ptr %"R11"
  %".8143" = or i32 %".8142", 1065353216
  store i32 %".8143", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".8146" = load i32, ptr %"R34"
  %".8147" = icmp ult i32 %".8146", 32
  %"SHF_min.33" = select  i1 %".8147", i32 %".8146", i32 32
  %".8148" = load i32, ptr %"R23"
  %".8149" = load i32, ptr %"R34"
  %"zext.791" = zext i32 0 to i64
  %"zext.792" = zext i32 %".8148" to i64
  %"zext.793" = zext i32 %".8149" to i64
  %"shl.416" = shl i64 %"zext.791", 32
  %"or.379" = or i64 %"shl.416", %"zext.792"
  %"shl.417" = shl i64 %"or.379", %"zext.793"
  %"and.21" = and i64 %"shl.417", 4294967295
  %"trunc32.33" = trunc i64 %"and.21" to i32
  store i32 %"trunc32.33", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".8152" = load float, ptr %"R11"
  %".8153" = fdiv float 0x3ff0000000000000, %".8152"
  %".8154" = bitcast ptr %"R12" to ptr
  store float %".8153", ptr %".8154"
  ; FFMA R13, R11, R12, -1
  %".8157" = load float, ptr %"R11"
  %".8158" = load float, ptr %"R12"
  %"fmul.354" = fmul float %".8157", %".8158"
  %"fadd.314" = fadd float %"fmul.354", 0xbff0000000000000
  %".8159" = bitcast ptr %"R13" to ptr
  store float %"fadd.314", ptr %".8159"
  ; FADD.FTZ R13, -R13, -RZ
  %".8162" = load float, ptr %"R13"
  %".8163" = fneg float %".8162"
  %"fadd.315" = fadd float %".8163",              0x0
  %".8164" = bitcast ptr %"R13" to ptr
  store float %"fadd.315", ptr %".8164"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".8167" = load float, ptr %"R12"
  %".8168" = load float, ptr %"R13"
  %".8169" = load float, ptr %"R12"
  %"fmul.355" = fmul float %".8167", %".8168"
  %"fadd.316" = fadd float %"fmul.355", %".8169"
  %".8170" = bitcast ptr %"R22" to ptr
  store float %"fadd.316", ptr %".8170"
  ; FFMA.RP R13, R12, R13, R12
  %".8173" = load float, ptr %"R12"
  %".8174" = load float, ptr %"R13"
  %".8175" = load float, ptr %"R12"
  %"fmul.356" = fmul float %".8173", %".8174"
  %"fadd.317" = fadd float %"fmul.356", %".8175"
  %".8176" = bitcast ptr %"R13" to ptr
  store float %"fadd.317", ptr %".8176"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".8179" = load float, ptr %"R22"
  %".8180" = bitcast float %".8179" to i32
  %".8181" = and i32 %".8180", 8388607
  store i32 %".8181", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".8184" = load float, ptr %"R22"
  %".8185" = load float, ptr %"R13"
  %".8186" = load i1, ptr %"PT"
  %"fcmp_ordered.3" = fcmp une float %".8184", %".8185"
  %".8187" = and i1 %"fcmp_ordered.3", %".8186"
  store i1 %".8187", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".8190" = load i32, ptr %"R12"
  %".8191" = or i32 %".8190", 8388608
  store i32 %".8191", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".8194" = load i1, ptr %"P0"
  %".8195" = icmp eq i1 %".8194", 1
  %"sel.6" = select  i1 %".8195", i32 0, i32 4294967295
  store i32 %"sel.6", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".8198" = load i32, ptr %"R23"
  %".8199" = load i32, ptr %"R12"
  %".8200" = and i32 %".8198", %".8199"
  store i32 %".8200", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".8203" = load i32, ptr %"R13"
  %".8204" = sub i32 0, %".8203"
  %"add.350" = add i32 %".8204", 0
  %"add.351" = add i32 %"add.350", 0
  store i32 %"add.351", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".8207" = load i32, ptr %"R34"
  %".8208" = icmp ult i32 %".8207", 32
  %"SHF_min.34" = select  i1 %".8208", i32 %".8207", i32 32
  %".8209" = load i32, ptr %"R23"
  %".8210" = load i32, ptr %"R34"
  %"zext.794" = zext i32 %".8209" to i64
  %"zext.795" = zext i32 0 to i64
  %"zext.796" = zext i32 %".8210" to i64
  %"shl.418" = shl i64 %"zext.794", 32
  %"or.380" = or i64 %"shl.418", %"zext.795"
  %"lshr.21" = lshr i64 %"or.380", %"zext.796"
  %"lshr.22" = lshr i64 %"lshr.21", 32
  %"trunc32.34" = trunc i64 %"lshr.22" to i32
  store i32 %"trunc32.34", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".8213" = load i32, ptr %"R13"
  %".8214" = load i32, ptr %"R34"
  %".8215" = load i32, ptr %"R12"
  %"LOP3_result.12" = call i32 @"custom_lop3"(i32 %".8215", i32 0, i32 %".8213", i32 %".8214")
  %".8216" = trunc i32 %"LOP3_result.12" to i1
  store i1 %".8216", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".8219" = load i32, ptr %"R23"
  %"LOP3_result.13" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".8219", i32 1)
  %".8220" = trunc i32 %"LOP3_result.13" to i1
  store i1 %".8220", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".8223" = load i32, ptr %"R23"
  %"LOP3_result.14" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".8223", i32 2)
  %".8224" = trunc i32 %"LOP3_result.14" to i1
  store i1 %".8224", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".8227" = load i1, ptr %"P0"
  %".8228" = sub i1 0, %".8227"
  %".8229" = load i1, ptr %"P1"
  %".8230" = sub i1 0, %".8229"
  %".8231" = or i1 %".8228", %".8230"
  %".8232" = and i1 %".8231", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".8234" = load i32, ptr %"R24"
  %"LOP3_result.15" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".8234", i32 8388607)
  %".8235" = trunc i32 %"LOP3_result.15" to i1
  store i1 %".8235", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".8238" = load i1, ptr %"P0"
  %".8239" = icmp eq i1 %".8238", 1
  %"sel.7" = select  i1 %".8239", i32 0, i32 1
  store i32 %"sel.7", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".8242" = load i32, ptr %"R11"
  %".8243" = sub i32 0, %".8242"
  %"add.352" = add i32 %".8243", 0
  %"add.353" = add i32 %"add.352", 0
  store i32 %"add.353", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".8246" = load i32, ptr %"R11"
  %".8247" = load i1, ptr %"PT"
  %"cmp.71" = icmp sge i32 %".8246", 0
  %".8248" = and i1 %"cmp.71", %".8247"
  store i1 %".8248", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".8251" = load i32, ptr %"R25"
  %"add.354" = add i32 %".8251", -252
  %"add.355" = add i32 %"add.354", 0
  store i32 %"add.355", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".8254" = load i32, ptr %"R11"
  %".8255" = icmp ult i32 %".8254", 32
  %"SHF_min.35" = select  i1 %".8255", i32 %".8254", i32 32
  %".8256" = load i32, ptr %"R12"
  %".8257" = load i32, ptr %"R11"
  %"zext.797" = zext i32 %".8256" to i64
  %"zext.798" = zext i32 0 to i64
  %"zext.799" = zext i32 %".8257" to i64
  %"shl.419" = shl i64 %"zext.797", 32
  %"or.381" = or i64 %"shl.419", %"zext.798"
  %"lshr.23" = lshr i64 %"or.381", %"zext.799"
  %"lshr.24" = lshr i64 %"lshr.23", 32
  %"trunc32.35" = trunc i64 %"lshr.24" to i32
  store i32 %"trunc32.35", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".8260" = load i1, ptr %"P0"
  %".8261" = icmp eq i1 %".8260", 1
  br i1 %".8261", label %".L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4"
.L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".8264" = load i32, ptr %"R11"
  %"add.356" = add i32 %".8264", 1
  %"add.357" = add i32 %"add.356", 0
  store i32 %"add.357", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4:
  ; IADD3 R11, R11, 0x1, RZ
  %".8269" = load i32, ptr %"R11"
  %"add.358" = add i32 %".8269", 1
  %"add.359" = add i32 %"add.358", 0
  store i32 %"add.359", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...4"
.L_x_49_split_0x4be0...4:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".8274" = load i1, ptr %"P1"
  %".8275" = icmp eq i1 %".8274", 1
  br i1 %".8275", label %".L_x_49_split_0x4be0...4_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...4"
.L_x_49_split_0x4be0...4_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".8278" = icmp ult i32 1, 32
  %"SHF_min.36" = select  i1 %".8278", i32 1, i32 32
  %".8279" = load i32, ptr %"R11"
  %"zext.800" = zext i32 0 to i64
  %"zext.801" = zext i32 %".8279" to i64
  %"zext.802" = zext i32 1 to i64
  %"shl.420" = shl i64 %"zext.800", 32
  %"or.382" = or i64 %"shl.420", %"zext.801"
  %"shl.421" = shl i64 %"or.382", %"zext.802"
  %"and.22" = and i64 %"shl.421", 4294967295
  %"trunc32.36" = trunc i64 %"and.22" to i32
  store i32 %"trunc32.36", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...4)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...4"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...4:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".8284" = icmp ult i32 1, 32
  %"SHF_min.37" = select  i1 %".8284", i32 1, i32 32
  %".8285" = load i32, ptr %"R11"
  %"zext.803" = zext i32 0 to i64
  %"zext.804" = zext i32 %".8285" to i64
  %"zext.805" = zext i32 1 to i64
  %"shl.422" = shl i64 %"zext.803", 32
  %"or.383" = or i64 %"shl.422", %"zext.804"
  %"shl.423" = shl i64 %"or.383", %"zext.805"
  %"and.23" = and i64 %"shl.423", 4294967295
  %"trunc32.37" = trunc i64 %"and.23" to i32
  store i32 %"trunc32.37", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...4"
.L_x_49_split_0x4bf0...4:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".8290" = load i32, ptr %"R11"
  %".8291" = load i32, ptr %"R24"
  %".8292" = or i32 %".8290", 2147483648
  %".8293" = or i32 %".8290", %".8291"
  %".8294" = and i32 %".8292", %".8293"
  store i32 %".8294", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...4"
.L_x_51...4:
  ; MUFU.RCP R11, R24
  %".8299" = load i32, ptr %"R24"
  %"sint_to_f32.4" = sitofp i32 %".8299" to float
  %".8300" = fdiv float 0x3ff0000000000000, %"sint_to_f32.4"
  %".8301" = fptosi float %".8300" to i32
  store i32 %".8301", ptr %"R11"
  br label %".L_x_50...4"
.L_x_50...4:
  ; BSYNC B1
  br label %".L_x_48...4"
.L_x_48...4:
  ; MOV R22, R11
  %".8307" = load i32, ptr %"R11"
  store i32 %".8307", ptr %"R22"
  ; MOV R11, 0x0
  store i32 0, ptr %"R11"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.3"
.L_x_52...4:
  ; BRA `(.L_x_52)
  br label %".L_x_52...4"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.3:
  br label %".L_x_41_split_0x47f0_postCALL_0x4830"
.L_x_41_split_0x47f0_postCALL_0x4830:
  ; MOV R5, R22
  %".8317" = load i32, ptr %"R22"
  store i32 %".8317", ptr %"R5"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".8322" = load float, ptr %"R23"
  %".8323" = fdiv float 0x3ff0000000000000, %".8322"
  %".8324" = bitcast ptr %"R6" to ptr
  store float %".8323", ptr %".8324"
  ; FFMA R5, R23, R6, -1
  %".8327" = load float, ptr %"R23"
  %".8328" = load float, ptr %"R6"
  %"fmul.357" = fmul float %".8327", %".8328"
  %"fadd.318" = fadd float %"fmul.357", 0xbff0000000000000
  %".8329" = bitcast ptr %"R5" to ptr
  store float %"fadd.318", ptr %".8329"
  ; FADD.FTZ R5, -R5, -RZ
  %".8332" = load float, ptr %"R5"
  %".8333" = fneg float %".8332"
  %"fadd.319" = fadd float %".8333",              0x0
  %".8334" = bitcast ptr %"R5" to ptr
  store float %"fadd.319", ptr %".8334"
  ; FFMA R5, R6, R5, R6
  %".8337" = load float, ptr %"R6"
  %".8338" = load float, ptr %"R5"
  %".8339" = load float, ptr %"R6"
  %"fmul.358" = fmul float %".8337", %".8338"
  %"fadd.320" = fadd float %"fmul.358", %".8339"
  %".8340" = bitcast ptr %"R5" to ptr
  store float %"fadd.320", ptr %".8340"
  br label %".L_x_46"
.L_x_46:
  ; BSYNC B0
  br label %".L_x_44"
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  %".8346" = load i32, ptr %"R28"
  %"zext.806" = zext i32 %".8346" to i64
  %"zext.807" = zext i32 0 to i64
  %"shl.424" = shl i64 %"zext.807", 32
  %"or.384" = or i64 %"shl.424", %"zext.806"
  %".8347" = inttoptr i64 %"or.384" to ptr
  %".8348" = ptrtoint ptr %".8347" to i64
  %".8349" = add i64 %".8348", 0
  %"for_LDG.345" = inttoptr i64 %".8349" to ptr
  %".8350" = load float, ptr %"for_LDG.345"
  %".8351" = bitcast ptr %"R6" to ptr
  store float %".8350", ptr %".8351"
  ; FADD R7, -R5, 1
  %".8354" = load float, ptr %"R5"
  %".8355" = fneg float %".8354"
  %"fadd.321" = fadd float %".8355", 0x3ff0000000000000
  %".8356" = bitcast ptr %"R7" to ptr
  store float %"fadd.321", ptr %".8356"
  ; FMUL R6, R6, R5
  %".8359" = load float, ptr %"R6"
  %".8360" = load float, ptr %"R5"
  %"fmul.359" = fmul float %".8359", %".8360"
  %".8361" = bitcast ptr %"R6" to ptr
  store float %"fmul.359", ptr %".8361"
  ; FFMA R7, R7, R4, R6
  %".8364" = load float, ptr %"R7"
  %".8365" = load float, ptr %"R4"
  %".8366" = load float, ptr %"R6"
  %"fmul.360" = fmul float %".8364", %".8365"
  %"fadd.322" = fadd float %"fmul.360", %".8366"
  %".8367" = bitcast ptr %"R7" to ptr
  store float %"fadd.322", ptr %".8367"
  ; STG.E.SYS [R28], R7
  %".8370" = load float, ptr %"R7"
  %".8371" = load i32, ptr %"R28"
  %"zext.808" = zext i32 %".8371" to i64
  %"zext.809" = zext i32 0 to i64
  %"shl.425" = shl i64 %"zext.809", 32
  %"or.385" = or i64 %"shl.425", %"zext.808"
  %".8372" = inttoptr i64 %"or.385" to ptr
  %".8373" = ptrtoint ptr %".8372" to i64
  %".8374" = add i64 %".8373", 0
  %"for_STG.1" = inttoptr i64 %".8374" to ptr
  store float %".8370", ptr %"for_STG.1"
  ; @!P3 BRA `(.L_x_47)
  %".8377" = load i1, ptr %"P3"
  %".8378" = icmp eq i1 %".8377", 1
  br i1 %".8378", label %".L_x_47", label %".L_x_44_split_0x48f0"
.L_x_44_split_0x48f0:
  ; EXIT
  br label %"ExitFunction"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

declare float @"llvm.exp2.f32"(float %".1")

declare float @"llvm.fabs"(float %".1")

