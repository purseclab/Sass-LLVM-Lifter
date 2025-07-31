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
.L_x_1_split_0x1260_postCALL_0x1290:
  ; MOV R9, R22
  %".2134" = load float, ptr %"R22"
  %".2135" = bitcast ptr %"R9" to ptr
  store float %".2134", ptr %".2135"
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %".2140" = load float, ptr %"R24"
  %".2141" = fdiv float 0x3ff0000000000000, %".2140"
  %".2142" = bitcast ptr %"R9" to ptr
  store float %".2141", ptr %".2142"
  ; FFMA R10, R24, R9, -1
  %".2145" = load float, ptr %"R24"
  %".2146" = load float, ptr %"R9"
  %"fmul.78" = fmul float %".2145", %".2146"
  %"fadd.83" = fadd float %"fmul.78", 0xbff0000000000000
  %".2147" = bitcast ptr %"R10" to ptr
  store float %"fadd.83", ptr %".2147"
  ; FADD.FTZ R10, -R10, -RZ
  %".2150" = load float, ptr %"R10"
  %".2151" = fneg float %".2150"
  %"fadd.84" = fadd float %".2151",              0x0
  %".2152" = bitcast ptr %"R10" to ptr
  store float %"fadd.84", ptr %".2152"
  ; FFMA R9, R9, R10, R9
  %".2155" = load float, ptr %"R9"
  %".2156" = load float, ptr %"R10"
  %".2157" = load float, ptr %"R9"
  %"fmul.79" = fmul float %".2155", %".2156"
  %"fadd.85" = fadd float %"fmul.79", %".2157"
  %".2158" = bitcast ptr %"R9" to ptr
  store float %"fadd.85", ptr %".2158"
  br label %".L_x_9"
.L_x_9:
  ; BSYNC B0
  br label %".L_x_7"
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  %".2164" = load i32, ptr %"R32"
  %"zext.215" = zext i32 %".2164" to i64
  %".2165" = load i32, ptr %"R33"
  %"zext.216" = zext i32 %".2165" to i64
  %"shl.115" = shl i64 %"zext.216", 32
  %"or.103" = or i64 %"shl.115", %"zext.215"
  %".2166" = inttoptr i64 %"or.103" to ptr
  %".2167" = ptrtoint ptr %".2166" to i64
  %".2168" = add i64 %".2167", 0
  %"for_LDG.94" = inttoptr i64 %".2168" to ptr
  %".2169" = load float, ptr %"for_LDG.94"
  %".2170" = bitcast ptr %"R11" to ptr
  store float %".2169", ptr %".2170"
  ; MOV R10, 0x3bbb989d
  %".2173" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".2173"
  ; MOV R13, 0x437c0000
  %".2176" = bitcast ptr %"R13" to ptr
  store float 0x41d0df0000000000, ptr %".2176"
  ; FADD R11, R11, R54
  %".2179" = load float, ptr %"R11"
  %".2180" = load float, ptr %"R54"
  %"fadd.86" = fadd float %".2179", %".2180"
  %".2181" = bitcast ptr %"R11" to ptr
  store float %"fadd.86", ptr %".2181"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %".2184" = load float, ptr %"R11"
  %".2185" = fneg float %".2184"
  %".2186" = load float, ptr %"R10"
  %"fmul.80" = fmul float %".2185", %".2186"
  %"fadd.87" = fadd float %"fmul.80", 0x3fe0000000000000
  %".2187" = bitcast ptr %"R10" to ptr
  store float %"fadd.87", ptr %".2187"
  ; FFMA.RM R10, R10, R13, 12582913
  %".2190" = load float, ptr %"R10"
  %".2191" = load float, ptr %"R13"
  %"fmul.81" = fmul float %".2190", %".2191"
  %"fadd.88" = fadd float %"fmul.81", 0x4168000020000000
  %".2192" = bitcast ptr %"R10" to ptr
  store float %"fadd.88", ptr %".2192"
  ; FADD R12, R10.reuse, -12583039
  %".2195" = load float, ptr %"R10"
  %"fadd.89" = fadd float %".2195", 0xc168000fe0000000
  %".2196" = bitcast ptr %"R12" to ptr
  store float %"fadd.89", ptr %".2196"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".2199" = icmp ult i32 23, 32
  %"SHF_min.9" = select  i1 %".2199", i32 23, i32 32
  %".2200" = load i32, ptr %"R10"
  %"zext.217" = zext i32 0 to i64
  %"zext.218" = zext i32 %".2200" to i64
  %"zext.219" = zext i32 23 to i64
  %"shl.116" = shl i64 %"zext.217", 32
  %"or.104" = or i64 %"shl.116", %"zext.218"
  %"shl.117" = shl i64 %"or.104", %"zext.219"
  %"and.6" = and i64 %"shl.117", 4294967295
  %"trunc32.9" = trunc i64 %"and.6" to i32
  store i32 %"trunc32.9", ptr %"R20"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %".2203" = load float, ptr %"R11"
  %".2204" = fneg float %".2203"
  %".2205" = load float, ptr %"R12"
  %".2206" = fneg float %".2205"
  %"fmul.82" = fmul float %".2204", 0x3ff7154760000000
  %"fadd.90" = fadd float %"fmul.82", %".2206"
  %".2207" = bitcast ptr %"R12" to ptr
  store float %"fadd.90", ptr %".2207"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %".2210" = load float, ptr %"R11"
  %".2211" = fneg float %".2210"
  %".2212" = load float, ptr %"R12"
  %"fmul.83" = fmul float %".2211", 0x3e54ae0c00000000
  %"fadd.91" = fadd float %"fmul.83", %".2212"
  %".2213" = bitcast ptr %"R12" to ptr
  store float %"fadd.91", ptr %".2213"
  ; MUFU.EX2 R11, R12
  %".2216" = load float, ptr %"R12"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".2216")
  %".2217" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result.1", ptr %".2217"
  ; FFMA R20, R20, R11, 1
  %".2220" = load float, ptr %"R20"
  %".2221" = load float, ptr %"R11"
  %"fmul.84" = fmul float %".2220", %".2221"
  %"fadd.92" = fadd float %"fmul.84", 0x3ff0000000000000
  %".2222" = bitcast ptr %"R20" to ptr
  store float %"fadd.92", ptr %".2222"
  ; @!P4 BRA `(.L_x_10)
  %".2225" = load i1, ptr %"P4"
  %".2226" = icmp eq i1 %".2225", 1
  br i1 %".2226", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".2229" = load i32, ptr %"R5"
  %".2230" = load i1, ptr %"PT"
  %"cmp.20" = icmp sge i32 %".2229", 3
  %".2231" = and i1 %"cmp.20", %".2230"
  store i1 %".2231", ptr %"P0"
  ; MOV R8, RZ
  %".2234" = load float, ptr %"RZ"
  %".2235" = bitcast ptr %"R8" to ptr
  store float %".2234", ptr %".2235"
  ; MOV R22, RZ
  %".2238" = load i32, ptr %"RZ"
  store i32 %".2238", ptr %"R22"
  ; @!P0 BRA `(.L_x_11)
  %".2241" = load i1, ptr %"P0"
  %".2242" = icmp eq i1 %".2241", 1
  br i1 %".2242", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".2245" = load i32, ptr %"R7"
  %".2246" = load i1, ptr %"PT"
  %"cmp.21" = icmp sgt i32 %".2245", 0
  %".2247" = and i1 %"cmp.21", %".2246"
  store i1 %".2247", ptr %"P0"
  ; MOV R8, RZ
  %".2250" = load float, ptr %"RZ"
  %".2251" = bitcast ptr %"R8" to ptr
  store float %".2250", ptr %".2251"
  ; MOV R22, RZ
  %".2254" = load i32, ptr %"RZ"
  store i32 %".2254", ptr %"R22"
  ; MOV R23, R7
  %".2257" = load i32, ptr %"R7"
  store i32 %".2257", ptr %"R23"
  ; @!P0 BRA `(.L_x_12)
  %".2260" = load i1, ptr %"P0"
  %".2261" = icmp eq i1 %".2260", 1
  br i1 %".2261", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2264" = load i32, ptr %"R23"
  %".2265" = load i1, ptr %"PT"
  %"cmp.22" = icmp sgt i32 %".2264", 12
  %".2266" = and i1 %"cmp.22", %".2265"
  store i1 %".2266", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".2269" = and i1 1, 1
  %".2270" = or i1 %".2269", 1
  ; @!P1 BRA `(.L_x_13)
  %".2272" = load i1, ptr %"P1"
  %".2273" = icmp eq i1 %".2272", 1
  br i1 %".2273", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2276" = xor i1 1, 1
  %".2277" = and i1 %".2276", 1
  %".2278" = and i1 %".2277", 1
  br label %".L_x_14"
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, ptr %"R49"
  ; IADD3 R16, R3, R22, RZ
  %".2283" = load i32, ptr %"R3"
  %".2284" = load i32, ptr %"R22"
  %"add.106" = add i32 %".2283", %".2284"
  %"add.107" = add i32 %"add.106", 0
  store i32 %"add.107", ptr %"R16"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".2287" = load i32, ptr %"R22"
  %".2288" = load i32, ptr %"R49"
  %"mul.36" = mul i32 %".2287", %".2288"
  %"add.108" = add i32 %"mul.36", %"Arg_3"
  store i32 %"add.108", ptr %"R12"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".2291" = load i32, ptr %"R16"
  %".2292" = load i32, ptr %"R49"
  %"mul.37" = mul i32 %".2291", %".2292"
  %"add.109" = add i32 %"mul.37", %"Arg_4"
  store i32 %"add.109", ptr %"R16"
  ; IADD3 R18, R22, 0x4, RZ
  %".2295" = load i32, ptr %"R22"
  %"add.110" = add i32 %".2295", 4
  %"add.111" = add i32 %"add.110", 0
  store i32 %"add.111", ptr %"R18"
  ; LDG.E.SYS R24, [R12]
  %".2298" = load i32, ptr %"R12"
  %"zext.220" = zext i32 %".2298" to i64
  %".2299" = load i32, ptr %"R13"
  %"zext.221" = zext i32 %".2299" to i64
  %"shl.118" = shl i64 %"zext.221", 32
  %"or.105" = or i64 %"shl.118", %"zext.220"
  %".2300" = inttoptr i64 %"or.105" to ptr
  %".2301" = ptrtoint ptr %".2300" to i64
  %".2302" = add i64 %".2301", 0
  %"for_LDG.95" = inttoptr i64 %".2302" to ptr
  %".2303" = load float, ptr %"for_LDG.95"
  %".2304" = bitcast ptr %"R24" to ptr
  store float %".2303", ptr %".2304"
  ; IADD3 R14, R3, R18, RZ
  %".2307" = load i32, ptr %"R3"
  %".2308" = load i32, ptr %"R18"
  %"add.112" = add i32 %".2307", %".2308"
  %"add.113" = add i32 %"add.112", 0
  store i32 %"add.113", ptr %"R14"
  ; LDG.E.SYS R21, [R16]
  %".2311" = load i32, ptr %"R16"
  %"zext.222" = zext i32 %".2311" to i64
  %".2312" = load i32, ptr %"R17"
  %"zext.223" = zext i32 %".2312" to i64
  %"shl.119" = shl i64 %"zext.223", 32
  %"or.106" = or i64 %"shl.119", %"zext.222"
  %".2313" = inttoptr i64 %"or.106" to ptr
  %".2314" = ptrtoint ptr %".2313" to i64
  %".2315" = add i64 %".2314", 0
  %"for_LDG.96" = inttoptr i64 %".2315" to ptr
  %".2316" = load float, ptr %"for_LDG.96"
  %".2317" = bitcast ptr %"R21" to ptr
  store float %".2316", ptr %".2317"
  ; LDG.E.SYS R36, [R12+0x4]
  %".2320" = load i32, ptr %"R12"
  %"zext.224" = zext i32 %".2320" to i64
  %".2321" = load i32, ptr %"R13"
  %"zext.225" = zext i32 %".2321" to i64
  %"shl.120" = shl i64 %"zext.225", 32
  %"or.107" = or i64 %"shl.120", %"zext.224"
  %".2322" = inttoptr i64 %"or.107" to ptr
  %".2323" = ptrtoint ptr %".2322" to i64
  %".2324" = add i64 %".2323", 4
  %"for_LDG.97" = inttoptr i64 %".2324" to ptr
  %".2325" = load float, ptr %"for_LDG.97"
  %".2326" = bitcast ptr %"R36" to ptr
  store float %".2325", ptr %".2326"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".2329" = load i32, ptr %"R18"
  %".2330" = load i32, ptr %"R49"
  %"mul.38" = mul i32 %".2329", %".2330"
  %"add.114" = add i32 %"mul.38", %"Arg_3"
  store i32 %"add.114", ptr %"R18"
  ; LDG.E.SYS R25, [R16+0x4]
  %".2333" = load i32, ptr %"R16"
  %"zext.226" = zext i32 %".2333" to i64
  %".2334" = load i32, ptr %"R17"
  %"zext.227" = zext i32 %".2334" to i64
  %"shl.121" = shl i64 %"zext.227", 32
  %"or.108" = or i64 %"shl.121", %"zext.226"
  %".2335" = inttoptr i64 %"or.108" to ptr
  %".2336" = ptrtoint ptr %".2335" to i64
  %".2337" = add i64 %".2336", 4
  %"for_LDG.98" = inttoptr i64 %".2337" to ptr
  %".2338" = load float, ptr %"for_LDG.98"
  %".2339" = bitcast ptr %"R25" to ptr
  store float %".2338", ptr %".2339"
  ; LDG.E.SYS R46, [R12+0x8]
  %".2342" = load i32, ptr %"R12"
  %"zext.228" = zext i32 %".2342" to i64
  %".2343" = load i32, ptr %"R13"
  %"zext.229" = zext i32 %".2343" to i64
  %"shl.122" = shl i64 %"zext.229", 32
  %"or.109" = or i64 %"shl.122", %"zext.228"
  %".2344" = inttoptr i64 %"or.109" to ptr
  %".2345" = ptrtoint ptr %".2344" to i64
  %".2346" = add i64 %".2345", 8
  %"for_LDG.99" = inttoptr i64 %".2346" to ptr
  %".2347" = load float, ptr %"for_LDG.99"
  %".2348" = bitcast ptr %"R46" to ptr
  store float %".2347", ptr %".2348"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".2351" = load i32, ptr %"R14"
  %".2352" = load i32, ptr %"R49"
  %"mul.39" = mul i32 %".2351", %".2352"
  %"add.115" = add i32 %"mul.39", %"Arg_4"
  store i32 %"add.115", ptr %"R14"
  ; LDG.E.SYS R34, [R16+0x8]
  %".2355" = load i32, ptr %"R16"
  %"zext.230" = zext i32 %".2355" to i64
  %".2356" = load i32, ptr %"R17"
  %"zext.231" = zext i32 %".2356" to i64
  %"shl.123" = shl i64 %"zext.231", 32
  %"or.110" = or i64 %"shl.123", %"zext.230"
  %".2357" = inttoptr i64 %"or.110" to ptr
  %".2358" = ptrtoint ptr %".2357" to i64
  %".2359" = add i64 %".2358", 8
  %"for_LDG.100" = inttoptr i64 %".2359" to ptr
  %".2360" = load float, ptr %"for_LDG.100"
  %".2361" = bitcast ptr %"R34" to ptr
  store float %".2360", ptr %".2361"
  ; LDG.E.SYS R44, [R12+0xc]
  %".2364" = load i32, ptr %"R12"
  %"zext.232" = zext i32 %".2364" to i64
  %".2365" = load i32, ptr %"R13"
  %"zext.233" = zext i32 %".2365" to i64
  %"shl.124" = shl i64 %"zext.233", 32
  %"or.111" = or i64 %"shl.124", %"zext.232"
  %".2366" = inttoptr i64 %"or.111" to ptr
  %".2367" = ptrtoint ptr %".2366" to i64
  %".2368" = add i64 %".2367", 12
  %"for_LDG.101" = inttoptr i64 %".2368" to ptr
  %".2369" = load float, ptr %"for_LDG.101"
  %".2370" = bitcast ptr %"R44" to ptr
  store float %".2369", ptr %".2370"
  ; IADD3 R10, R22, 0x8, RZ
  %".2373" = load i32, ptr %"R22"
  %"add.116" = add i32 %".2373", 8
  %"add.117" = add i32 %"add.116", 0
  store i32 %"add.117", ptr %"R10"
  ; LDG.E.SYS R41, [R16+0xc]
  %".2376" = load i32, ptr %"R16"
  %"zext.234" = zext i32 %".2376" to i64
  %".2377" = load i32, ptr %"R17"
  %"zext.235" = zext i32 %".2377" to i64
  %"shl.125" = shl i64 %"zext.235", 32
  %"or.112" = or i64 %"shl.125", %"zext.234"
  %".2378" = inttoptr i64 %"or.112" to ptr
  %".2379" = ptrtoint ptr %".2378" to i64
  %".2380" = add i64 %".2379", 12
  %"for_LDG.102" = inttoptr i64 %".2380" to ptr
  %".2381" = load float, ptr %"for_LDG.102"
  %".2382" = bitcast ptr %"R41" to ptr
  store float %".2381", ptr %".2382"
  ; LDG.E.SYS R42, [R18]
  %".2385" = load i32, ptr %"R18"
  %"zext.236" = zext i32 %".2385" to i64
  %".2386" = load i32, ptr %"R19"
  %"zext.237" = zext i32 %".2386" to i64
  %"shl.126" = shl i64 %"zext.237", 32
  %"or.113" = or i64 %"shl.126", %"zext.236"
  %".2387" = inttoptr i64 %"or.113" to ptr
  %".2388" = ptrtoint ptr %".2387" to i64
  %".2389" = add i64 %".2388", 0
  %"for_LDG.103" = inttoptr i64 %".2389" to ptr
  %".2390" = load float, ptr %"for_LDG.103"
  %".2391" = bitcast ptr %"R42" to ptr
  store float %".2390", ptr %".2391"
  ; IADD3 R50, R3, R10, RZ
  %".2394" = load i32, ptr %"R3"
  %".2395" = load i32, ptr %"R10"
  %"add.118" = add i32 %".2394", %".2395"
  %"add.119" = add i32 %"add.118", 0
  store i32 %"add.119", ptr %"R50"
  ; LDG.E.SYS R39, [R14]
  %".2398" = load i32, ptr %"R14"
  %"zext.238" = zext i32 %".2398" to i64
  %".2399" = load i32, ptr %"R15"
  %"zext.239" = zext i32 %".2399" to i64
  %"shl.127" = shl i64 %"zext.239", 32
  %"or.114" = or i64 %"shl.127", %"zext.238"
  %".2400" = inttoptr i64 %"or.114" to ptr
  %".2401" = ptrtoint ptr %".2400" to i64
  %".2402" = add i64 %".2401", 0
  %"for_LDG.104" = inttoptr i64 %".2402" to ptr
  %".2403" = load float, ptr %"for_LDG.104"
  %".2404" = bitcast ptr %"R39" to ptr
  store float %".2403", ptr %".2404"
  ; LDG.E.SYS R40, [R18+0x4]
  %".2407" = load i32, ptr %"R18"
  %"zext.240" = zext i32 %".2407" to i64
  %".2408" = load i32, ptr %"R19"
  %"zext.241" = zext i32 %".2408" to i64
  %"shl.128" = shl i64 %"zext.241", 32
  %"or.115" = or i64 %"shl.128", %"zext.240"
  %".2409" = inttoptr i64 %"or.115" to ptr
  %".2410" = ptrtoint ptr %".2409" to i64
  %".2411" = add i64 %".2410", 4
  %"for_LDG.105" = inttoptr i64 %".2411" to ptr
  %".2412" = load float, ptr %"for_LDG.105"
  %".2413" = bitcast ptr %"R40" to ptr
  store float %".2412", ptr %".2413"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".2416" = load i32, ptr %"R10"
  %".2417" = load i32, ptr %"R49"
  %"mul.40" = mul i32 %".2416", %".2417"
  %"add.120" = add i32 %"mul.40", %"Arg_3"
  store i32 %"add.120", ptr %"R10"
  ; LDG.E.SYS R37, [R14+0x4]
  %".2420" = load i32, ptr %"R14"
  %"zext.242" = zext i32 %".2420" to i64
  %".2421" = load i32, ptr %"R15"
  %"zext.243" = zext i32 %".2421" to i64
  %"shl.129" = shl i64 %"zext.243", 32
  %"or.116" = or i64 %"shl.129", %"zext.242"
  %".2422" = inttoptr i64 %"or.116" to ptr
  %".2423" = ptrtoint ptr %".2422" to i64
  %".2424" = add i64 %".2423", 4
  %"for_LDG.106" = inttoptr i64 %".2424" to ptr
  %".2425" = load float, ptr %"for_LDG.106"
  %".2426" = bitcast ptr %"R37" to ptr
  store float %".2425", ptr %".2426"
  ; LDG.E.SYS R38, [R18+0x8]
  %".2429" = load i32, ptr %"R18"
  %"zext.244" = zext i32 %".2429" to i64
  %".2430" = load i32, ptr %"R19"
  %"zext.245" = zext i32 %".2430" to i64
  %"shl.130" = shl i64 %"zext.245", 32
  %"or.117" = or i64 %"shl.130", %"zext.244"
  %".2431" = inttoptr i64 %"or.117" to ptr
  %".2432" = ptrtoint ptr %".2431" to i64
  %".2433" = add i64 %".2432", 8
  %"for_LDG.107" = inttoptr i64 %".2433" to ptr
  %".2434" = load float, ptr %"for_LDG.107"
  %".2435" = bitcast ptr %"R38" to ptr
  store float %".2434", ptr %".2435"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".2438" = load i32, ptr %"R50"
  %".2439" = load i32, ptr %"R49"
  %"mul.41" = mul i32 %".2438", %".2439"
  %"add.121" = add i32 %"mul.41", %"Arg_4"
  store i32 %"add.121", ptr %"R12"
  ; LDG.E.SYS R35, [R14+0x8]
  %".2442" = load i32, ptr %"R14"
  %"zext.246" = zext i32 %".2442" to i64
  %".2443" = load i32, ptr %"R15"
  %"zext.247" = zext i32 %".2443" to i64
  %"shl.131" = shl i64 %"zext.247", 32
  %"or.118" = or i64 %"shl.131", %"zext.246"
  %".2444" = inttoptr i64 %"or.118" to ptr
  %".2445" = ptrtoint ptr %".2444" to i64
  %".2446" = add i64 %".2445", 8
  %"for_LDG.108" = inttoptr i64 %".2446" to ptr
  %".2447" = load float, ptr %"for_LDG.108"
  %".2448" = bitcast ptr %"R35" to ptr
  store float %".2447", ptr %".2448"
  ; LDG.E.SYS R48, [R18+0xc]
  %".2451" = load i32, ptr %"R18"
  %"zext.248" = zext i32 %".2451" to i64
  %".2452" = load i32, ptr %"R19"
  %"zext.249" = zext i32 %".2452" to i64
  %"shl.132" = shl i64 %"zext.249", 32
  %"or.119" = or i64 %"shl.132", %"zext.248"
  %".2453" = inttoptr i64 %"or.119" to ptr
  %".2454" = ptrtoint ptr %".2453" to i64
  %".2455" = add i64 %".2454", 12
  %"for_LDG.109" = inttoptr i64 %".2455" to ptr
  %".2456" = load float, ptr %"for_LDG.109"
  %".2457" = bitcast ptr %"R48" to ptr
  store float %".2456", ptr %".2457"
  ; IADD3 R16, R22, 0xc, RZ
  %".2460" = load i32, ptr %"R22"
  %"add.122" = add i32 %".2460", 12
  %"add.123" = add i32 %"add.122", 0
  store i32 %"add.123", ptr %"R16"
  ; LDG.E.SYS R47, [R14+0xc]
  %".2463" = load i32, ptr %"R14"
  %"zext.250" = zext i32 %".2463" to i64
  %".2464" = load i32, ptr %"R15"
  %"zext.251" = zext i32 %".2464" to i64
  %"shl.133" = shl i64 %"zext.251", 32
  %"or.120" = or i64 %"shl.133", %"zext.250"
  %".2465" = inttoptr i64 %"or.120" to ptr
  %".2466" = ptrtoint ptr %".2465" to i64
  %".2467" = add i64 %".2466", 12
  %"for_LDG.110" = inttoptr i64 %".2467" to ptr
  %".2468" = load float, ptr %"for_LDG.110"
  %".2469" = bitcast ptr %"R47" to ptr
  store float %".2468", ptr %".2469"
  ; LDG.E.SYS R54, [R10]
  %".2472" = load i32, ptr %"R10"
  %"zext.252" = zext i32 %".2472" to i64
  %".2473" = load i32, ptr %"R11"
  %"zext.253" = zext i32 %".2473" to i64
  %"shl.134" = shl i64 %"zext.253", 32
  %"or.121" = or i64 %"shl.134", %"zext.252"
  %".2474" = inttoptr i64 %"or.121" to ptr
  %".2475" = ptrtoint ptr %".2474" to i64
  %".2476" = add i64 %".2475", 0
  %"for_LDG.111" = inttoptr i64 %".2476" to ptr
  %".2477" = load float, ptr %"for_LDG.111"
  %".2478" = bitcast ptr %"R54" to ptr
  store float %".2477", ptr %".2478"
  ; IADD3 R58, R3, R16, RZ
  %".2481" = load i32, ptr %"R3"
  %".2482" = load i32, ptr %"R16"
  %"add.124" = add i32 %".2481", %".2482"
  %"add.125" = add i32 %"add.124", 0
  store i32 %"add.125", ptr %"R58"
  ; LDG.E.SYS R45, [R12]
  %".2485" = load i32, ptr %"R12"
  %"zext.254" = zext i32 %".2485" to i64
  %".2486" = load i32, ptr %"R13"
  %"zext.255" = zext i32 %".2486" to i64
  %"shl.135" = shl i64 %"zext.255", 32
  %"or.122" = or i64 %"shl.135", %"zext.254"
  %".2487" = inttoptr i64 %"or.122" to ptr
  %".2488" = ptrtoint ptr %".2487" to i64
  %".2489" = add i64 %".2488", 0
  %"for_LDG.112" = inttoptr i64 %".2489" to ptr
  %".2490" = load float, ptr %"for_LDG.112"
  %".2491" = bitcast ptr %"R45" to ptr
  store float %".2490", ptr %".2491"
  ; LDG.E.SYS R52, [R10+0x4]
  %".2494" = load i32, ptr %"R10"
  %"zext.256" = zext i32 %".2494" to i64
  %".2495" = load i32, ptr %"R11"
  %"zext.257" = zext i32 %".2495" to i64
  %"shl.136" = shl i64 %"zext.257", 32
  %"or.123" = or i64 %"shl.136", %"zext.256"
  %".2496" = inttoptr i64 %"or.123" to ptr
  %".2497" = ptrtoint ptr %".2496" to i64
  %".2498" = add i64 %".2497", 4
  %"for_LDG.113" = inttoptr i64 %".2498" to ptr
  %".2499" = load float, ptr %"for_LDG.113"
  %".2500" = bitcast ptr %"R52" to ptr
  store float %".2499", ptr %".2500"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".2503" = load i32, ptr %"R16"
  %".2504" = load i32, ptr %"R49"
  %"mul.42" = mul i32 %".2503", %".2504"
  %"add.126" = add i32 %"mul.42", %"Arg_3"
  store i32 %"add.126", ptr %"R16"
  ; LDG.E.SYS R43, [R12+0x4]
  %".2507" = load i32, ptr %"R12"
  %"zext.258" = zext i32 %".2507" to i64
  %".2508" = load i32, ptr %"R13"
  %"zext.259" = zext i32 %".2508" to i64
  %"shl.137" = shl i64 %"zext.259", 32
  %"or.124" = or i64 %"shl.137", %"zext.258"
  %".2509" = inttoptr i64 %"or.124" to ptr
  %".2510" = ptrtoint ptr %".2509" to i64
  %".2511" = add i64 %".2510", 4
  %"for_LDG.114" = inttoptr i64 %".2511" to ptr
  %".2512" = load float, ptr %"for_LDG.114"
  %".2513" = bitcast ptr %"R43" to ptr
  store float %".2512", ptr %".2513"
  ; LDG.E.SYS R50, [R10+0x8]
  %".2516" = load i32, ptr %"R10"
  %"zext.260" = zext i32 %".2516" to i64
  %".2517" = load i32, ptr %"R11"
  %"zext.261" = zext i32 %".2517" to i64
  %"shl.138" = shl i64 %"zext.261", 32
  %"or.125" = or i64 %"shl.138", %"zext.260"
  %".2518" = inttoptr i64 %"or.125" to ptr
  %".2519" = ptrtoint ptr %".2518" to i64
  %".2520" = add i64 %".2519", 8
  %"for_LDG.115" = inttoptr i64 %".2520" to ptr
  %".2521" = load float, ptr %"for_LDG.115"
  %".2522" = bitcast ptr %"R50" to ptr
  store float %".2521", ptr %".2522"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".2525" = load i32, ptr %"R58"
  %".2526" = load i32, ptr %"R49"
  %"mul.43" = mul i32 %".2525", %".2526"
  %"add.127" = add i32 %"mul.43", %"Arg_4"
  store i32 %"add.127", ptr %"R14"
  ; LDG.E.SYS R18, [R12+0x8]
  %".2529" = load i32, ptr %"R12"
  %"zext.262" = zext i32 %".2529" to i64
  %".2530" = load i32, ptr %"R13"
  %"zext.263" = zext i32 %".2530" to i64
  %"shl.139" = shl i64 %"zext.263", 32
  %"or.126" = or i64 %"shl.139", %"zext.262"
  %".2531" = inttoptr i64 %"or.126" to ptr
  %".2532" = ptrtoint ptr %".2531" to i64
  %".2533" = add i64 %".2532", 8
  %"for_LDG.116" = inttoptr i64 %".2533" to ptr
  %".2534" = load float, ptr %"for_LDG.116"
  %".2535" = bitcast ptr %"R18" to ptr
  store float %".2534", ptr %".2535"
  ; LDG.E.SYS R56, [R10+0xc]
  %".2538" = load i32, ptr %"R10"
  %"zext.264" = zext i32 %".2538" to i64
  %".2539" = load i32, ptr %"R11"
  %"zext.265" = zext i32 %".2539" to i64
  %"shl.140" = shl i64 %"zext.265", 32
  %"or.127" = or i64 %"shl.140", %"zext.264"
  %".2540" = inttoptr i64 %"or.127" to ptr
  %".2541" = ptrtoint ptr %".2540" to i64
  %".2542" = add i64 %".2541", 12
  %"for_LDG.117" = inttoptr i64 %".2542" to ptr
  %".2543" = load float, ptr %"for_LDG.117"
  %".2544" = bitcast ptr %"R56" to ptr
  store float %".2543", ptr %".2544"
  ; LDG.E.SYS R55, [R12+0xc]
  %".2547" = load i32, ptr %"R12"
  %"zext.266" = zext i32 %".2547" to i64
  %".2548" = load i32, ptr %"R13"
  %"zext.267" = zext i32 %".2548" to i64
  %"shl.141" = shl i64 %"zext.267", 32
  %"or.128" = or i64 %"shl.141", %"zext.266"
  %".2549" = inttoptr i64 %"or.128" to ptr
  %".2550" = ptrtoint ptr %".2549" to i64
  %".2551" = add i64 %".2550", 12
  %"for_LDG.118" = inttoptr i64 %".2551" to ptr
  %".2552" = load float, ptr %"for_LDG.118"
  %".2553" = bitcast ptr %"R55" to ptr
  store float %".2552", ptr %".2553"
  ; LDG.E.SYS R51, [R16]
  %".2556" = load i32, ptr %"R16"
  %"zext.268" = zext i32 %".2556" to i64
  %".2557" = load i32, ptr %"R17"
  %"zext.269" = zext i32 %".2557" to i64
  %"shl.142" = shl i64 %"zext.269", 32
  %"or.129" = or i64 %"shl.142", %"zext.268"
  %".2558" = inttoptr i64 %"or.129" to ptr
  %".2559" = ptrtoint ptr %".2558" to i64
  %".2560" = add i64 %".2559", 0
  %"for_LDG.119" = inttoptr i64 %".2560" to ptr
  %".2561" = load float, ptr %"for_LDG.119"
  %".2562" = bitcast ptr %"R51" to ptr
  store float %".2561", ptr %".2562"
  ; LDG.E.SYS R53, [R14]
  %".2565" = load i32, ptr %"R14"
  %"zext.270" = zext i32 %".2565" to i64
  %".2566" = load i32, ptr %"R15"
  %"zext.271" = zext i32 %".2566" to i64
  %"shl.143" = shl i64 %"zext.271", 32
  %"or.130" = or i64 %"shl.143", %"zext.270"
  %".2567" = inttoptr i64 %"or.130" to ptr
  %".2568" = ptrtoint ptr %".2567" to i64
  %".2569" = add i64 %".2568", 0
  %"for_LDG.120" = inttoptr i64 %".2569" to ptr
  %".2570" = load float, ptr %"for_LDG.120"
  %".2571" = bitcast ptr %"R53" to ptr
  store float %".2570", ptr %".2571"
  ; LDG.E.SYS R60, [R16+0x4]
  %".2574" = load i32, ptr %"R16"
  %"zext.272" = zext i32 %".2574" to i64
  %".2575" = load i32, ptr %"R17"
  %"zext.273" = zext i32 %".2575" to i64
  %"shl.144" = shl i64 %"zext.273", 32
  %"or.131" = or i64 %"shl.144", %"zext.272"
  %".2576" = inttoptr i64 %"or.131" to ptr
  %".2577" = ptrtoint ptr %".2576" to i64
  %".2578" = add i64 %".2577", 4
  %"for_LDG.121" = inttoptr i64 %".2578" to ptr
  %".2579" = load float, ptr %"for_LDG.121"
  %".2580" = bitcast ptr %"R60" to ptr
  store float %".2579", ptr %".2580"
  ; LDG.E.SYS R49, [R14+0x4]
  %".2583" = load i32, ptr %"R14"
  %"zext.274" = zext i32 %".2583" to i64
  %".2584" = load i32, ptr %"R15"
  %"zext.275" = zext i32 %".2584" to i64
  %"shl.145" = shl i64 %"zext.275", 32
  %"or.132" = or i64 %"shl.145", %"zext.274"
  %".2585" = inttoptr i64 %"or.132" to ptr
  %".2586" = ptrtoint ptr %".2585" to i64
  %".2587" = add i64 %".2586", 4
  %"for_LDG.122" = inttoptr i64 %".2587" to ptr
  %".2588" = load float, ptr %"for_LDG.122"
  %".2589" = bitcast ptr %"R49" to ptr
  store float %".2588", ptr %".2589"
  ; LDG.E.SYS R58, [R16+0x8]
  %".2592" = load i32, ptr %"R16"
  %"zext.276" = zext i32 %".2592" to i64
  %".2593" = load i32, ptr %"R17"
  %"zext.277" = zext i32 %".2593" to i64
  %"shl.146" = shl i64 %"zext.277", 32
  %"or.133" = or i64 %"shl.146", %"zext.276"
  %".2594" = inttoptr i64 %"or.133" to ptr
  %".2595" = ptrtoint ptr %".2594" to i64
  %".2596" = add i64 %".2595", 8
  %"for_LDG.123" = inttoptr i64 %".2596" to ptr
  %".2597" = load float, ptr %"for_LDG.123"
  %".2598" = bitcast ptr %"R58" to ptr
  store float %".2597", ptr %".2598"
  ; LDG.E.SYS R19, [R14+0x8]
  %".2601" = load i32, ptr %"R14"
  %"zext.278" = zext i32 %".2601" to i64
  %".2602" = load i32, ptr %"R15"
  %"zext.279" = zext i32 %".2602" to i64
  %"shl.147" = shl i64 %"zext.279", 32
  %"or.134" = or i64 %"shl.147", %"zext.278"
  %".2603" = inttoptr i64 %"or.134" to ptr
  %".2604" = ptrtoint ptr %".2603" to i64
  %".2605" = add i64 %".2604", 8
  %"for_LDG.124" = inttoptr i64 %".2605" to ptr
  %".2606" = load float, ptr %"for_LDG.124"
  %".2607" = bitcast ptr %"R19" to ptr
  store float %".2606", ptr %".2607"
  ; LDG.E.SYS R57, [R16+0xc]
  %".2610" = load i32, ptr %"R16"
  %"zext.280" = zext i32 %".2610" to i64
  %".2611" = load i32, ptr %"R17"
  %"zext.281" = zext i32 %".2611" to i64
  %"shl.148" = shl i64 %"zext.281", 32
  %"or.135" = or i64 %"shl.148", %"zext.280"
  %".2612" = inttoptr i64 %"or.135" to ptr
  %".2613" = ptrtoint ptr %".2612" to i64
  %".2614" = add i64 %".2613", 12
  %"for_LDG.125" = inttoptr i64 %".2614" to ptr
  %".2615" = load float, ptr %"for_LDG.125"
  %".2616" = bitcast ptr %"R57" to ptr
  store float %".2615", ptr %".2616"
  ; LDG.E.SYS R59, [R14+0xc]
  %".2619" = load i32, ptr %"R14"
  %"zext.282" = zext i32 %".2619" to i64
  %".2620" = load i32, ptr %"R15"
  %"zext.283" = zext i32 %".2620" to i64
  %"shl.149" = shl i64 %"zext.283", 32
  %"or.136" = or i64 %"shl.149", %"zext.282"
  %".2621" = inttoptr i64 %"or.136" to ptr
  %".2622" = ptrtoint ptr %".2621" to i64
  %".2623" = add i64 %".2622", 12
  %"for_LDG.126" = inttoptr i64 %".2623" to ptr
  %".2624" = load float, ptr %"for_LDG.126"
  %".2625" = bitcast ptr %"R59" to ptr
  store float %".2624", ptr %".2625"
  ; IADD3 R23, R23, -0x10, RZ
  %".2628" = load i32, ptr %"R23"
  %"add.128" = add i32 %".2628", -16
  %"add.129" = add i32 %"add.128", 0
  store i32 %"add.129", ptr %"R23"
  ; IADD3 R22, R22, 0x10, RZ
  %".2631" = load i32, ptr %"R22"
  %"add.130" = add i32 %".2631", 16
  %"add.131" = add i32 %"add.130", 0
  store i32 %"add.131", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2634" = load i32, ptr %"R23"
  %".2635" = load i1, ptr %"PT"
  %"cmp.23" = icmp sgt i32 %".2634", 12
  %".2636" = and i1 %"cmp.23", %".2635"
  store i1 %".2636", ptr %"P1"
  ; FMUL R24, R24, R9
  %".2639" = load float, ptr %"R24"
  %".2640" = load float, ptr %"R9"
  %"fmul.85" = fmul float %".2639", %".2640"
  %".2641" = bitcast ptr %"R24" to ptr
  store float %"fmul.85", ptr %".2641"
  ; FFMA R24, R24, R21, R8
  %".2644" = load float, ptr %"R24"
  %".2645" = load float, ptr %"R21"
  %".2646" = load float, ptr %"R8"
  %"fmul.86" = fmul float %".2644", %".2645"
  %"fadd.93" = fadd float %"fmul.86", %".2646"
  %".2647" = bitcast ptr %"R24" to ptr
  store float %"fadd.93", ptr %".2647"
  ; FMUL R36, R36, R9
  %".2650" = load float, ptr %"R36"
  %".2651" = load float, ptr %"R9"
  %"fmul.87" = fmul float %".2650", %".2651"
  %".2652" = bitcast ptr %"R36" to ptr
  store float %"fmul.87", ptr %".2652"
  ; FFMA R25, R36, R25, R24
  %".2655" = load float, ptr %"R36"
  %".2656" = load float, ptr %"R25"
  %".2657" = load float, ptr %"R24"
  %"fmul.88" = fmul float %".2655", %".2656"
  %"fadd.94" = fadd float %"fmul.88", %".2657"
  %".2658" = bitcast ptr %"R25" to ptr
  store float %"fadd.94", ptr %".2658"
  ; FMUL R46, R46, R9
  %".2661" = load float, ptr %"R46"
  %".2662" = load float, ptr %"R9"
  %"fmul.89" = fmul float %".2661", %".2662"
  %".2663" = bitcast ptr %"R46" to ptr
  store float %"fmul.89", ptr %".2663"
  ; FFMA R34, R46, R34, R25
  %".2666" = load float, ptr %"R46"
  %".2667" = load float, ptr %"R34"
  %".2668" = load float, ptr %"R25"
  %"fmul.90" = fmul float %".2666", %".2667"
  %"fadd.95" = fadd float %"fmul.90", %".2668"
  %".2669" = bitcast ptr %"R34" to ptr
  store float %"fadd.95", ptr %".2669"
  ; FMUL R44, R44, R9
  %".2672" = load float, ptr %"R44"
  %".2673" = load float, ptr %"R9"
  %"fmul.91" = fmul float %".2672", %".2673"
  %".2674" = bitcast ptr %"R44" to ptr
  store float %"fmul.91", ptr %".2674"
  ; FFMA R34, R44, R41, R34
  %".2677" = load float, ptr %"R44"
  %".2678" = load float, ptr %"R41"
  %".2679" = load float, ptr %"R34"
  %"fmul.92" = fmul float %".2677", %".2678"
  %"fadd.96" = fadd float %"fmul.92", %".2679"
  %".2680" = bitcast ptr %"R34" to ptr
  store float %"fadd.96", ptr %".2680"
  ; FMUL R42, R42, R9
  %".2683" = load float, ptr %"R42"
  %".2684" = load float, ptr %"R9"
  %"fmul.93" = fmul float %".2683", %".2684"
  %".2685" = bitcast ptr %"R42" to ptr
  store float %"fmul.93", ptr %".2685"
  ; FFMA R34, R42, R39, R34
  %".2688" = load float, ptr %"R42"
  %".2689" = load float, ptr %"R39"
  %".2690" = load float, ptr %"R34"
  %"fmul.94" = fmul float %".2688", %".2689"
  %"fadd.97" = fadd float %"fmul.94", %".2690"
  %".2691" = bitcast ptr %"R34" to ptr
  store float %"fadd.97", ptr %".2691"
  ; FMUL R40, R40, R9
  %".2694" = load float, ptr %"R40"
  %".2695" = load float, ptr %"R9"
  %"fmul.95" = fmul float %".2694", %".2695"
  %".2696" = bitcast ptr %"R40" to ptr
  store float %"fmul.95", ptr %".2696"
  ; FFMA R34, R40, R37, R34
  %".2699" = load float, ptr %"R40"
  %".2700" = load float, ptr %"R37"
  %".2701" = load float, ptr %"R34"
  %"fmul.96" = fmul float %".2699", %".2700"
  %"fadd.98" = fadd float %"fmul.96", %".2701"
  %".2702" = bitcast ptr %"R34" to ptr
  store float %"fadd.98", ptr %".2702"
  ; FMUL R38, R38, R9
  %".2705" = load float, ptr %"R38"
  %".2706" = load float, ptr %"R9"
  %"fmul.97" = fmul float %".2705", %".2706"
  %".2707" = bitcast ptr %"R38" to ptr
  store float %"fmul.97", ptr %".2707"
  ; FFMA R34, R38, R35, R34
  %".2710" = load float, ptr %"R38"
  %".2711" = load float, ptr %"R35"
  %".2712" = load float, ptr %"R34"
  %"fmul.98" = fmul float %".2710", %".2711"
  %"fadd.99" = fadd float %"fmul.98", %".2712"
  %".2713" = bitcast ptr %"R34" to ptr
  store float %"fadd.99", ptr %".2713"
  ; FMUL R48, R48, R9
  %".2716" = load float, ptr %"R48"
  %".2717" = load float, ptr %"R9"
  %"fmul.99" = fmul float %".2716", %".2717"
  %".2718" = bitcast ptr %"R48" to ptr
  store float %"fmul.99", ptr %".2718"
  ; FFMA R34, R48, R47, R34
  %".2721" = load float, ptr %"R48"
  %".2722" = load float, ptr %"R47"
  %".2723" = load float, ptr %"R34"
  %"fmul.100" = fmul float %".2721", %".2722"
  %"fadd.100" = fadd float %"fmul.100", %".2723"
  %".2724" = bitcast ptr %"R34" to ptr
  store float %"fadd.100", ptr %".2724"
  ; FMUL R54, R54, R9
  %".2727" = load float, ptr %"R54"
  %".2728" = load float, ptr %"R9"
  %"fmul.101" = fmul float %".2727", %".2728"
  %".2729" = bitcast ptr %"R54" to ptr
  store float %"fmul.101", ptr %".2729"
  ; FFMA R34, R54, R45, R34
  %".2732" = load float, ptr %"R54"
  %".2733" = load float, ptr %"R45"
  %".2734" = load float, ptr %"R34"
  %"fmul.102" = fmul float %".2732", %".2733"
  %"fadd.101" = fadd float %"fmul.102", %".2734"
  %".2735" = bitcast ptr %"R34" to ptr
  store float %"fadd.101", ptr %".2735"
  ; FMUL R52, R52, R9
  %".2738" = load float, ptr %"R52"
  %".2739" = load float, ptr %"R9"
  %"fmul.103" = fmul float %".2738", %".2739"
  %".2740" = bitcast ptr %"R52" to ptr
  store float %"fmul.103", ptr %".2740"
  ; FFMA R43, R52, R43, R34
  %".2743" = load float, ptr %"R52"
  %".2744" = load float, ptr %"R43"
  %".2745" = load float, ptr %"R34"
  %"fmul.104" = fmul float %".2743", %".2744"
  %"fadd.102" = fadd float %"fmul.104", %".2745"
  %".2746" = bitcast ptr %"R43" to ptr
  store float %"fadd.102", ptr %".2746"
  ; FMUL R50, R50, R9
  %".2749" = load float, ptr %"R50"
  %".2750" = load float, ptr %"R9"
  %"fmul.105" = fmul float %".2749", %".2750"
  %".2751" = bitcast ptr %"R50" to ptr
  store float %"fmul.105", ptr %".2751"
  ; FFMA R18, R50, R18, R43
  %".2754" = load float, ptr %"R50"
  %".2755" = load float, ptr %"R18"
  %".2756" = load float, ptr %"R43"
  %"fmul.106" = fmul float %".2754", %".2755"
  %"fadd.103" = fadd float %"fmul.106", %".2756"
  %".2757" = bitcast ptr %"R18" to ptr
  store float %"fadd.103", ptr %".2757"
  ; FMUL R56, R56, R9
  %".2760" = load float, ptr %"R56"
  %".2761" = load float, ptr %"R9"
  %"fmul.107" = fmul float %".2760", %".2761"
  %".2762" = bitcast ptr %"R56" to ptr
  store float %"fmul.107", ptr %".2762"
  ; FFMA R18, R56, R55, R18
  %".2765" = load float, ptr %"R56"
  %".2766" = load float, ptr %"R55"
  %".2767" = load float, ptr %"R18"
  %"fmul.108" = fmul float %".2765", %".2766"
  %"fadd.104" = fadd float %"fmul.108", %".2767"
  %".2768" = bitcast ptr %"R18" to ptr
  store float %"fadd.104", ptr %".2768"
  ; FMUL R51, R51, R9
  %".2771" = load float, ptr %"R51"
  %".2772" = load float, ptr %"R9"
  %"fmul.109" = fmul float %".2771", %".2772"
  %".2773" = bitcast ptr %"R51" to ptr
  store float %"fmul.109", ptr %".2773"
  ; FFMA R18, R51, R53, R18
  %".2776" = load float, ptr %"R51"
  %".2777" = load float, ptr %"R53"
  %".2778" = load float, ptr %"R18"
  %"fmul.110" = fmul float %".2776", %".2777"
  %"fadd.105" = fadd float %"fmul.110", %".2778"
  %".2779" = bitcast ptr %"R18" to ptr
  store float %"fadd.105", ptr %".2779"
  ; FMUL R60, R60, R9
  %".2782" = load float, ptr %"R60"
  %".2783" = load float, ptr %"R9"
  %"fmul.111" = fmul float %".2782", %".2783"
  %".2784" = bitcast ptr %"R60" to ptr
  store float %"fmul.111", ptr %".2784"
  ; FFMA R18, R60, R49, R18
  %".2787" = load float, ptr %"R60"
  %".2788" = load float, ptr %"R49"
  %".2789" = load float, ptr %"R18"
  %"fmul.112" = fmul float %".2787", %".2788"
  %"fadd.106" = fadd float %"fmul.112", %".2789"
  %".2790" = bitcast ptr %"R18" to ptr
  store float %"fadd.106", ptr %".2790"
  ; FMUL R58, R58, R9
  %".2793" = load float, ptr %"R58"
  %".2794" = load float, ptr %"R9"
  %"fmul.113" = fmul float %".2793", %".2794"
  %".2795" = bitcast ptr %"R58" to ptr
  store float %"fmul.113", ptr %".2795"
  ; FFMA R18, R58, R19, R18
  %".2798" = load float, ptr %"R58"
  %".2799" = load float, ptr %"R19"
  %".2800" = load float, ptr %"R18"
  %"fmul.114" = fmul float %".2798", %".2799"
  %"fadd.107" = fadd float %"fmul.114", %".2800"
  %".2801" = bitcast ptr %"R18" to ptr
  store float %"fadd.107", ptr %".2801"
  ; FMUL R57, R57, R9
  %".2804" = load float, ptr %"R57"
  %".2805" = load float, ptr %"R9"
  %"fmul.115" = fmul float %".2804", %".2805"
  %".2806" = bitcast ptr %"R57" to ptr
  store float %"fmul.115", ptr %".2806"
  ; FFMA R8, R57, R59, R18
  %".2809" = load float, ptr %"R57"
  %".2810" = load float, ptr %"R59"
  %".2811" = load float, ptr %"R18"
  %"fmul.116" = fmul float %".2809", %".2810"
  %"fadd.108" = fadd float %"fmul.116", %".2811"
  %".2812" = bitcast ptr %"R8" to ptr
  store float %"fadd.108", ptr %".2812"
  ; @P1 BRA `(.L_x_14)
  %".2815" = load i1, ptr %"P1"
  %".2816" = icmp ne i1 %".2815", 1
  br i1 %".2816", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".2819" = load i32, ptr %"R23"
  %".2820" = load i1, ptr %"PT"
  %"cmp.24" = icmp sgt i32 %".2819", 4
  %".2821" = and i1 %"cmp.24", %".2820"
  store i1 %".2821", ptr %"P1"
  ; @!P1 BRA `(.L_x_15)
  %".2824" = load i1, ptr %"P1"
  %".2825" = icmp eq i1 %".2824", 1
  br i1 %".2825", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R16, R3, R22, RZ
  %".2830" = load i32, ptr %"R3"
  %".2831" = load i32, ptr %"R22"
  %"add.132" = add i32 %".2830", %".2831"
  %"add.133" = add i32 %"add.132", 0
  store i32 %"add.133", ptr %"R16"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".2834" = load i32, ptr %"R22"
  %".2835" = load i32, ptr %"R13"
  %"mul.44" = mul i32 %".2834", %".2835"
  %"add.134" = add i32 %"mul.44", %"Arg_3"
  store i32 %"add.134", ptr %"R14"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".2838" = load i32, ptr %"R16"
  %".2839" = load i32, ptr %"R13"
  %"mul.45" = mul i32 %".2838", %".2839"
  %"add.135" = add i32 %"mul.45", %"Arg_4"
  store i32 %"add.135", ptr %"R16"
  ; IADD3 R10, R22, 0x4, RZ
  %".2842" = load i32, ptr %"R22"
  %"add.136" = add i32 %".2842", 4
  %"add.137" = add i32 %"add.136", 0
  store i32 %"add.137", ptr %"R10"
  ; LDG.E.SYS R18, [R14]
  %".2845" = load i32, ptr %"R14"
  %"zext.284" = zext i32 %".2845" to i64
  %".2846" = load i32, ptr %"R15"
  %"zext.285" = zext i32 %".2846" to i64
  %"shl.150" = shl i64 %"zext.285", 32
  %"or.137" = or i64 %"shl.150", %"zext.284"
  %".2847" = inttoptr i64 %"or.137" to ptr
  %".2848" = ptrtoint ptr %".2847" to i64
  %".2849" = add i64 %".2848", 0
  %"for_LDG.127" = inttoptr i64 %".2849" to ptr
  %".2850" = load float, ptr %"for_LDG.127"
  %".2851" = bitcast ptr %"R18" to ptr
  store float %".2850", ptr %".2851"
  ; IADD3 R12, R3, R10, RZ
  %".2854" = load i32, ptr %"R3"
  %".2855" = load i32, ptr %"R10"
  %"add.138" = add i32 %".2854", %".2855"
  %"add.139" = add i32 %"add.138", 0
  store i32 %"add.139", ptr %"R12"
  ; LDG.E.SYS R19, [R16]
  %".2858" = load i32, ptr %"R16"
  %"zext.286" = zext i32 %".2858" to i64
  %".2859" = load i32, ptr %"R17"
  %"zext.287" = zext i32 %".2859" to i64
  %"shl.151" = shl i64 %"zext.287", 32
  %"or.138" = or i64 %"shl.151", %"zext.286"
  %".2860" = inttoptr i64 %"or.138" to ptr
  %".2861" = ptrtoint ptr %".2860" to i64
  %".2862" = add i64 %".2861", 0
  %"for_LDG.128" = inttoptr i64 %".2862" to ptr
  %".2863" = load float, ptr %"for_LDG.128"
  %".2864" = bitcast ptr %"R19" to ptr
  store float %".2863", ptr %".2864"
  ; LDG.E.SYS R24, [R14+0x4]
  %".2867" = load i32, ptr %"R14"
  %"zext.288" = zext i32 %".2867" to i64
  %".2868" = load i32, ptr %"R15"
  %"zext.289" = zext i32 %".2868" to i64
  %"shl.152" = shl i64 %"zext.289", 32
  %"or.139" = or i64 %"shl.152", %"zext.288"
  %".2869" = inttoptr i64 %"or.139" to ptr
  %".2870" = ptrtoint ptr %".2869" to i64
  %".2871" = add i64 %".2870", 4
  %"for_LDG.129" = inttoptr i64 %".2871" to ptr
  %".2872" = load float, ptr %"for_LDG.129"
  %".2873" = bitcast ptr %"R24" to ptr
  store float %".2872", ptr %".2873"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".2876" = load i32, ptr %"R10"
  %".2877" = load i32, ptr %"R13"
  %"mul.46" = mul i32 %".2876", %".2877"
  %"add.140" = add i32 %"mul.46", %"Arg_3"
  store i32 %"add.140", ptr %"R10"
  ; LDG.E.SYS R21, [R16+0x4]
  %".2880" = load i32, ptr %"R16"
  %"zext.290" = zext i32 %".2880" to i64
  %".2881" = load i32, ptr %"R17"
  %"zext.291" = zext i32 %".2881" to i64
  %"shl.153" = shl i64 %"zext.291", 32
  %"or.140" = or i64 %"shl.153", %"zext.290"
  %".2882" = inttoptr i64 %"or.140" to ptr
  %".2883" = ptrtoint ptr %".2882" to i64
  %".2884" = add i64 %".2883", 4
  %"for_LDG.130" = inttoptr i64 %".2884" to ptr
  %".2885" = load float, ptr %"for_LDG.130"
  %".2886" = bitcast ptr %"R21" to ptr
  store float %".2885", ptr %".2886"
  ; LDG.E.SYS R34, [R14+0x8]
  %".2889" = load i32, ptr %"R14"
  %"zext.292" = zext i32 %".2889" to i64
  %".2890" = load i32, ptr %"R15"
  %"zext.293" = zext i32 %".2890" to i64
  %"shl.154" = shl i64 %"zext.293", 32
  %"or.141" = or i64 %"shl.154", %"zext.292"
  %".2891" = inttoptr i64 %"or.141" to ptr
  %".2892" = ptrtoint ptr %".2891" to i64
  %".2893" = add i64 %".2892", 8
  %"for_LDG.131" = inttoptr i64 %".2893" to ptr
  %".2894" = load float, ptr %"for_LDG.131"
  %".2895" = bitcast ptr %"R34" to ptr
  store float %".2894", ptr %".2895"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2898" = load i32, ptr %"R12"
  %".2899" = load i32, ptr %"R13"
  %"mul.47" = mul i32 %".2898", %".2899"
  %"add.141" = add i32 %"mul.47", %"Arg_4"
  store i32 %"add.141", ptr %"R12"
  ; LDG.E.SYS R25, [R16+0x8]
  %".2902" = load i32, ptr %"R16"
  %"zext.294" = zext i32 %".2902" to i64
  %".2903" = load i32, ptr %"R17"
  %"zext.295" = zext i32 %".2903" to i64
  %"shl.155" = shl i64 %"zext.295", 32
  %"or.142" = or i64 %"shl.155", %"zext.294"
  %".2904" = inttoptr i64 %"or.142" to ptr
  %".2905" = ptrtoint ptr %".2904" to i64
  %".2906" = add i64 %".2905", 8
  %"for_LDG.132" = inttoptr i64 %".2906" to ptr
  %".2907" = load float, ptr %"for_LDG.132"
  %".2908" = bitcast ptr %"R25" to ptr
  store float %".2907", ptr %".2908"
  ; LDG.E.SYS R36, [R14+0xc]
  %".2911" = load i32, ptr %"R14"
  %"zext.296" = zext i32 %".2911" to i64
  %".2912" = load i32, ptr %"R15"
  %"zext.297" = zext i32 %".2912" to i64
  %"shl.156" = shl i64 %"zext.297", 32
  %"or.143" = or i64 %"shl.156", %"zext.296"
  %".2913" = inttoptr i64 %"or.143" to ptr
  %".2914" = ptrtoint ptr %".2913" to i64
  %".2915" = add i64 %".2914", 12
  %"for_LDG.133" = inttoptr i64 %".2915" to ptr
  %".2916" = load float, ptr %"for_LDG.133"
  %".2917" = bitcast ptr %"R36" to ptr
  store float %".2916", ptr %".2917"
  ; LDG.E.SYS R35, [R16+0xc]
  %".2920" = load i32, ptr %"R16"
  %"zext.298" = zext i32 %".2920" to i64
  %".2921" = load i32, ptr %"R17"
  %"zext.299" = zext i32 %".2921" to i64
  %"shl.157" = shl i64 %"zext.299", 32
  %"or.144" = or i64 %"shl.157", %"zext.298"
  %".2922" = inttoptr i64 %"or.144" to ptr
  %".2923" = ptrtoint ptr %".2922" to i64
  %".2924" = add i64 %".2923", 12
  %"for_LDG.134" = inttoptr i64 %".2924" to ptr
  %".2925" = load float, ptr %"for_LDG.134"
  %".2926" = bitcast ptr %"R35" to ptr
  store float %".2925", ptr %".2926"
  ; LDG.E.SYS R38, [R10]
  %".2929" = load i32, ptr %"R10"
  %"zext.300" = zext i32 %".2929" to i64
  %".2930" = load i32, ptr %"R11"
  %"zext.301" = zext i32 %".2930" to i64
  %"shl.158" = shl i64 %"zext.301", 32
  %"or.145" = or i64 %"shl.158", %"zext.300"
  %".2931" = inttoptr i64 %"or.145" to ptr
  %".2932" = ptrtoint ptr %".2931" to i64
  %".2933" = add i64 %".2932", 0
  %"for_LDG.135" = inttoptr i64 %".2933" to ptr
  %".2934" = load float, ptr %"for_LDG.135"
  %".2935" = bitcast ptr %"R38" to ptr
  store float %".2934", ptr %".2935"
  ; LDG.E.SYS R37, [R12]
  %".2938" = load i32, ptr %"R12"
  %"zext.302" = zext i32 %".2938" to i64
  %".2939" = load i32, ptr %"R13"
  %"zext.303" = zext i32 %".2939" to i64
  %"shl.159" = shl i64 %"zext.303", 32
  %"or.146" = or i64 %"shl.159", %"zext.302"
  %".2940" = inttoptr i64 %"or.146" to ptr
  %".2941" = ptrtoint ptr %".2940" to i64
  %".2942" = add i64 %".2941", 0
  %"for_LDG.136" = inttoptr i64 %".2942" to ptr
  %".2943" = load float, ptr %"for_LDG.136"
  %".2944" = bitcast ptr %"R37" to ptr
  store float %".2943", ptr %".2944"
  ; LDG.E.SYS R40, [R10+0x4]
  %".2947" = load i32, ptr %"R10"
  %"zext.304" = zext i32 %".2947" to i64
  %".2948" = load i32, ptr %"R11"
  %"zext.305" = zext i32 %".2948" to i64
  %"shl.160" = shl i64 %"zext.305", 32
  %"or.147" = or i64 %"shl.160", %"zext.304"
  %".2949" = inttoptr i64 %"or.147" to ptr
  %".2950" = ptrtoint ptr %".2949" to i64
  %".2951" = add i64 %".2950", 4
  %"for_LDG.137" = inttoptr i64 %".2951" to ptr
  %".2952" = load float, ptr %"for_LDG.137"
  %".2953" = bitcast ptr %"R40" to ptr
  store float %".2952", ptr %".2953"
  ; LDG.E.SYS R39, [R12+0x4]
  %".2956" = load i32, ptr %"R12"
  %"zext.306" = zext i32 %".2956" to i64
  %".2957" = load i32, ptr %"R13"
  %"zext.307" = zext i32 %".2957" to i64
  %"shl.161" = shl i64 %"zext.307", 32
  %"or.148" = or i64 %"shl.161", %"zext.306"
  %".2958" = inttoptr i64 %"or.148" to ptr
  %".2959" = ptrtoint ptr %".2958" to i64
  %".2960" = add i64 %".2959", 4
  %"for_LDG.138" = inttoptr i64 %".2960" to ptr
  %".2961" = load float, ptr %"for_LDG.138"
  %".2962" = bitcast ptr %"R39" to ptr
  store float %".2961", ptr %".2962"
  ; LDG.E.SYS R42, [R10+0x8]
  %".2965" = load i32, ptr %"R10"
  %"zext.308" = zext i32 %".2965" to i64
  %".2966" = load i32, ptr %"R11"
  %"zext.309" = zext i32 %".2966" to i64
  %"shl.162" = shl i64 %"zext.309", 32
  %"or.149" = or i64 %"shl.162", %"zext.308"
  %".2967" = inttoptr i64 %"or.149" to ptr
  %".2968" = ptrtoint ptr %".2967" to i64
  %".2969" = add i64 %".2968", 8
  %"for_LDG.139" = inttoptr i64 %".2969" to ptr
  %".2970" = load float, ptr %"for_LDG.139"
  %".2971" = bitcast ptr %"R42" to ptr
  store float %".2970", ptr %".2971"
  ; LDG.E.SYS R44, [R10+0xc]
  %".2974" = load i32, ptr %"R10"
  %"zext.310" = zext i32 %".2974" to i64
  %".2975" = load i32, ptr %"R11"
  %"zext.311" = zext i32 %".2975" to i64
  %"shl.163" = shl i64 %"zext.311", 32
  %"or.150" = or i64 %"shl.163", %"zext.310"
  %".2976" = inttoptr i64 %"or.150" to ptr
  %".2977" = ptrtoint ptr %".2976" to i64
  %".2978" = add i64 %".2977", 12
  %"for_LDG.140" = inttoptr i64 %".2978" to ptr
  %".2979" = load float, ptr %"for_LDG.140"
  %".2980" = bitcast ptr %"R44" to ptr
  store float %".2979", ptr %".2980"
  ; LDG.E.SYS R41, [R12+0x8]
  %".2983" = load i32, ptr %"R12"
  %"zext.312" = zext i32 %".2983" to i64
  %".2984" = load i32, ptr %"R13"
  %"zext.313" = zext i32 %".2984" to i64
  %"shl.164" = shl i64 %"zext.313", 32
  %"or.151" = or i64 %"shl.164", %"zext.312"
  %".2985" = inttoptr i64 %"or.151" to ptr
  %".2986" = ptrtoint ptr %".2985" to i64
  %".2987" = add i64 %".2986", 8
  %"for_LDG.141" = inttoptr i64 %".2987" to ptr
  %".2988" = load float, ptr %"for_LDG.141"
  %".2989" = bitcast ptr %"R41" to ptr
  store float %".2988", ptr %".2989"
  ; LDG.E.SYS R43, [R12+0xc]
  %".2992" = load i32, ptr %"R12"
  %"zext.314" = zext i32 %".2992" to i64
  %".2993" = load i32, ptr %"R13"
  %"zext.315" = zext i32 %".2993" to i64
  %"shl.165" = shl i64 %"zext.315", 32
  %"or.152" = or i64 %"shl.165", %"zext.314"
  %".2994" = inttoptr i64 %"or.152" to ptr
  %".2995" = ptrtoint ptr %".2994" to i64
  %".2996" = add i64 %".2995", 12
  %"for_LDG.142" = inttoptr i64 %".2996" to ptr
  %".2997" = load float, ptr %"for_LDG.142"
  %".2998" = bitcast ptr %"R43" to ptr
  store float %".2997", ptr %".2998"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3001" = xor i1 1, 1
  %".3002" = and i1 %".3001", 1
  %".3003" = and i1 %".3002", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".3005" = load i32, ptr %"R23"
  %"add.142" = add i32 %".3005", -8
  %"add.143" = add i32 %"add.142", 0
  store i32 %"add.143", ptr %"R23"
  ; IADD3 R22, R22, 0x8, RZ
  %".3008" = load i32, ptr %"R22"
  %"add.144" = add i32 %".3008", 8
  %"add.145" = add i32 %"add.144", 0
  store i32 %"add.145", ptr %"R22"
  ; FMUL R15, R18, R9
  %".3011" = load float, ptr %"R18"
  %".3012" = load float, ptr %"R9"
  %"fmul.117" = fmul float %".3011", %".3012"
  %".3013" = bitcast ptr %"R15" to ptr
  store float %"fmul.117", ptr %".3013"
  ; FFMA R15, R15, R19, R8
  %".3016" = load float, ptr %"R15"
  %".3017" = load float, ptr %"R19"
  %".3018" = load float, ptr %"R8"
  %"fmul.118" = fmul float %".3016", %".3017"
  %"fadd.109" = fadd float %"fmul.118", %".3018"
  %".3019" = bitcast ptr %"R15" to ptr
  store float %"fadd.109", ptr %".3019"
  ; FMUL R24, R24, R9
  %".3022" = load float, ptr %"R24"
  %".3023" = load float, ptr %"R9"
  %"fmul.119" = fmul float %".3022", %".3023"
  %".3024" = bitcast ptr %"R24" to ptr
  store float %"fmul.119", ptr %".3024"
  ; FFMA R15, R24, R21, R15
  %".3027" = load float, ptr %"R24"
  %".3028" = load float, ptr %"R21"
  %".3029" = load float, ptr %"R15"
  %"fmul.120" = fmul float %".3027", %".3028"
  %"fadd.110" = fadd float %"fmul.120", %".3029"
  %".3030" = bitcast ptr %"R15" to ptr
  store float %"fadd.110", ptr %".3030"
  ; FMUL R34, R34, R9
  %".3033" = load float, ptr %"R34"
  %".3034" = load float, ptr %"R9"
  %"fmul.121" = fmul float %".3033", %".3034"
  %".3035" = bitcast ptr %"R34" to ptr
  store float %"fmul.121", ptr %".3035"
  ; FFMA R15, R34, R25, R15
  %".3038" = load float, ptr %"R34"
  %".3039" = load float, ptr %"R25"
  %".3040" = load float, ptr %"R15"
  %"fmul.122" = fmul float %".3038", %".3039"
  %"fadd.111" = fadd float %"fmul.122", %".3040"
  %".3041" = bitcast ptr %"R15" to ptr
  store float %"fadd.111", ptr %".3041"
  ; FMUL R36, R36, R9
  %".3044" = load float, ptr %"R36"
  %".3045" = load float, ptr %"R9"
  %"fmul.123" = fmul float %".3044", %".3045"
  %".3046" = bitcast ptr %"R36" to ptr
  store float %"fmul.123", ptr %".3046"
  ; FFMA R15, R36, R35, R15
  %".3049" = load float, ptr %"R36"
  %".3050" = load float, ptr %"R35"
  %".3051" = load float, ptr %"R15"
  %"fmul.124" = fmul float %".3049", %".3050"
  %"fadd.112" = fadd float %"fmul.124", %".3051"
  %".3052" = bitcast ptr %"R15" to ptr
  store float %"fadd.112", ptr %".3052"
  ; FMUL R38, R38, R9
  %".3055" = load float, ptr %"R38"
  %".3056" = load float, ptr %"R9"
  %"fmul.125" = fmul float %".3055", %".3056"
  %".3057" = bitcast ptr %"R38" to ptr
  store float %"fmul.125", ptr %".3057"
  ; FFMA R15, R38, R37, R15
  %".3060" = load float, ptr %"R38"
  %".3061" = load float, ptr %"R37"
  %".3062" = load float, ptr %"R15"
  %"fmul.126" = fmul float %".3060", %".3061"
  %"fadd.113" = fadd float %"fmul.126", %".3062"
  %".3063" = bitcast ptr %"R15" to ptr
  store float %"fadd.113", ptr %".3063"
  ; FMUL R40, R40, R9
  %".3066" = load float, ptr %"R40"
  %".3067" = load float, ptr %"R9"
  %"fmul.127" = fmul float %".3066", %".3067"
  %".3068" = bitcast ptr %"R40" to ptr
  store float %"fmul.127", ptr %".3068"
  ; FFMA R15, R40, R39, R15
  %".3071" = load float, ptr %"R40"
  %".3072" = load float, ptr %"R39"
  %".3073" = load float, ptr %"R15"
  %"fmul.128" = fmul float %".3071", %".3072"
  %"fadd.114" = fadd float %"fmul.128", %".3073"
  %".3074" = bitcast ptr %"R15" to ptr
  store float %"fadd.114", ptr %".3074"
  ; FMUL R42, R42, R9.reuse
  %".3077" = load float, ptr %"R42"
  %".3078" = load float, ptr %"R9"
  %"fmul.129" = fmul float %".3077", %".3078"
  %".3079" = bitcast ptr %"R42" to ptr
  store float %"fmul.129", ptr %".3079"
  ; FMUL R44, R44, R9
  %".3082" = load float, ptr %"R44"
  %".3083" = load float, ptr %"R9"
  %"fmul.130" = fmul float %".3082", %".3083"
  %".3084" = bitcast ptr %"R44" to ptr
  store float %"fmul.130", ptr %".3084"
  ; FFMA R15, R42, R41, R15
  %".3087" = load float, ptr %"R42"
  %".3088" = load float, ptr %"R41"
  %".3089" = load float, ptr %"R15"
  %"fmul.131" = fmul float %".3087", %".3088"
  %"fadd.115" = fadd float %"fmul.131", %".3089"
  %".3090" = bitcast ptr %"R15" to ptr
  store float %"fadd.115", ptr %".3090"
  ; FFMA R8, R44, R43, R15
  %".3093" = load float, ptr %"R44"
  %".3094" = load float, ptr %"R43"
  %".3095" = load float, ptr %"R15"
  %"fmul.132" = fmul float %".3093", %".3094"
  %"fadd.116" = fadd float %"fmul.132", %".3095"
  %".3096" = bitcast ptr %"R8" to ptr
  store float %"fadd.116", ptr %".3096"
  br label %".L_x_15"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".3100" = load i32, ptr %"R23"
  %".3101" = load i1, ptr %"PT"
  %"cmp.25" = icmp ne i32 %".3100", 0
  %".3102" = or i1 %"cmp.25", %".3101"
  store i1 %".3102", ptr %"P0"
  ; @!P0 BRA `(.L_x_11)
  %".3105" = load i1, ptr %"P0"
  %".3106" = icmp eq i1 %".3105", 1
  br i1 %".3106", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R12, R3, R22, RZ
  %".3111" = load i32, ptr %"R3"
  %".3112" = load i32, ptr %"R22"
  %"add.146" = add i32 %".3111", %".3112"
  %"add.147" = add i32 %"add.146", 0
  store i32 %"add.147", ptr %"R12"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".3115" = load i32, ptr %"R22"
  %".3116" = load i32, ptr %"R13"
  %"mul.48" = mul i32 %".3115", %".3116"
  %"add.148" = add i32 %"mul.48", %"Arg_3"
  store i32 %"add.148", ptr %"R10"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".3119" = load i32, ptr %"R12"
  %".3120" = load i32, ptr %"R13"
  %"mul.49" = mul i32 %".3119", %".3120"
  %"add.149" = add i32 %"mul.49", %"Arg_4"
  store i32 %"add.149", ptr %"R12"
  ; LDG.E.SYS R14, [R10]
  %".3123" = load i32, ptr %"R10"
  %"zext.316" = zext i32 %".3123" to i64
  %".3124" = load i32, ptr %"R11"
  %"zext.317" = zext i32 %".3124" to i64
  %"shl.166" = shl i64 %"zext.317", 32
  %"or.153" = or i64 %"shl.166", %"zext.316"
  %".3125" = inttoptr i64 %"or.153" to ptr
  %".3126" = ptrtoint ptr %".3125" to i64
  %".3127" = add i64 %".3126", 0
  %"for_LDG.143" = inttoptr i64 %".3127" to ptr
  %".3128" = load float, ptr %"for_LDG.143"
  %".3129" = bitcast ptr %"R14" to ptr
  store float %".3128", ptr %".3129"
  ; LDG.E.SYS R16, [R12]
  %".3132" = load i32, ptr %"R12"
  %"zext.318" = zext i32 %".3132" to i64
  %".3133" = load i32, ptr %"R13"
  %"zext.319" = zext i32 %".3133" to i64
  %"shl.167" = shl i64 %"zext.319", 32
  %"or.154" = or i64 %"shl.167", %"zext.318"
  %".3134" = inttoptr i64 %"or.154" to ptr
  %".3135" = ptrtoint ptr %".3134" to i64
  %".3136" = add i64 %".3135", 0
  %"for_LDG.144" = inttoptr i64 %".3136" to ptr
  %".3137" = load float, ptr %"for_LDG.144"
  %".3138" = bitcast ptr %"R16" to ptr
  store float %".3137", ptr %".3138"
  ; LDG.E.SYS R18, [R10+0x4]
  %".3141" = load i32, ptr %"R10"
  %"zext.320" = zext i32 %".3141" to i64
  %".3142" = load i32, ptr %"R11"
  %"zext.321" = zext i32 %".3142" to i64
  %"shl.168" = shl i64 %"zext.321", 32
  %"or.155" = or i64 %"shl.168", %"zext.320"
  %".3143" = inttoptr i64 %"or.155" to ptr
  %".3144" = ptrtoint ptr %".3143" to i64
  %".3145" = add i64 %".3144", 4
  %"for_LDG.145" = inttoptr i64 %".3145" to ptr
  %".3146" = load float, ptr %"for_LDG.145"
  %".3147" = bitcast ptr %"R18" to ptr
  store float %".3146", ptr %".3147"
  ; LDG.E.SYS R17, [R12+0x4]
  %".3150" = load i32, ptr %"R12"
  %"zext.322" = zext i32 %".3150" to i64
  %".3151" = load i32, ptr %"R13"
  %"zext.323" = zext i32 %".3151" to i64
  %"shl.169" = shl i64 %"zext.323", 32
  %"or.156" = or i64 %"shl.169", %"zext.322"
  %".3152" = inttoptr i64 %"or.156" to ptr
  %".3153" = ptrtoint ptr %".3152" to i64
  %".3154" = add i64 %".3153", 4
  %"for_LDG.146" = inttoptr i64 %".3154" to ptr
  %".3155" = load float, ptr %"for_LDG.146"
  %".3156" = bitcast ptr %"R17" to ptr
  store float %".3155", ptr %".3156"
  ; LDG.E.SYS R24, [R10+0x8]
  %".3159" = load i32, ptr %"R10"
  %"zext.324" = zext i32 %".3159" to i64
  %".3160" = load i32, ptr %"R11"
  %"zext.325" = zext i32 %".3160" to i64
  %"shl.170" = shl i64 %"zext.325", 32
  %"or.157" = or i64 %"shl.170", %"zext.324"
  %".3161" = inttoptr i64 %"or.157" to ptr
  %".3162" = ptrtoint ptr %".3161" to i64
  %".3163" = add i64 %".3162", 8
  %"for_LDG.147" = inttoptr i64 %".3163" to ptr
  %".3164" = load float, ptr %"for_LDG.147"
  %".3165" = bitcast ptr %"R24" to ptr
  store float %".3164", ptr %".3165"
  ; LDG.E.SYS R19, [R12+0x8]
  %".3168" = load i32, ptr %"R12"
  %"zext.326" = zext i32 %".3168" to i64
  %".3169" = load i32, ptr %"R13"
  %"zext.327" = zext i32 %".3169" to i64
  %"shl.171" = shl i64 %"zext.327", 32
  %"or.158" = or i64 %"shl.171", %"zext.326"
  %".3170" = inttoptr i64 %"or.158" to ptr
  %".3171" = ptrtoint ptr %".3170" to i64
  %".3172" = add i64 %".3171", 8
  %"for_LDG.148" = inttoptr i64 %".3172" to ptr
  %".3173" = load float, ptr %"for_LDG.148"
  %".3174" = bitcast ptr %"R19" to ptr
  store float %".3173", ptr %".3174"
  ; LDG.E.SYS R34, [R10+0xc]
  %".3177" = load i32, ptr %"R10"
  %"zext.328" = zext i32 %".3177" to i64
  %".3178" = load i32, ptr %"R11"
  %"zext.329" = zext i32 %".3178" to i64
  %"shl.172" = shl i64 %"zext.329", 32
  %"or.159" = or i64 %"shl.172", %"zext.328"
  %".3179" = inttoptr i64 %"or.159" to ptr
  %".3180" = ptrtoint ptr %".3179" to i64
  %".3181" = add i64 %".3180", 12
  %"for_LDG.149" = inttoptr i64 %".3181" to ptr
  %".3182" = load float, ptr %"for_LDG.149"
  %".3183" = bitcast ptr %"R34" to ptr
  store float %".3182", ptr %".3183"
  ; LDG.E.SYS R21, [R12+0xc]
  %".3186" = load i32, ptr %"R12"
  %"zext.330" = zext i32 %".3186" to i64
  %".3187" = load i32, ptr %"R13"
  %"zext.331" = zext i32 %".3187" to i64
  %"shl.173" = shl i64 %"zext.331", 32
  %"or.160" = or i64 %"shl.173", %"zext.330"
  %".3188" = inttoptr i64 %"or.160" to ptr
  %".3189" = ptrtoint ptr %".3188" to i64
  %".3190" = add i64 %".3189", 12
  %"for_LDG.150" = inttoptr i64 %".3190" to ptr
  %".3191" = load float, ptr %"for_LDG.150"
  %".3192" = bitcast ptr %"R21" to ptr
  store float %".3191", ptr %".3192"
  ; IADD3 R23, R23, -0x4, RZ
  %".3195" = load i32, ptr %"R23"
  %"add.150" = add i32 %".3195", -4
  %"add.151" = add i32 %"add.150", 0
  store i32 %"add.151", ptr %"R23"
  ; IADD3 R22, R22, 0x4, RZ
  %".3198" = load i32, ptr %"R22"
  %"add.152" = add i32 %".3198", 4
  %"add.153" = add i32 %"add.152", 0
  store i32 %"add.153", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".3201" = load i32, ptr %"R23"
  %".3202" = load i1, ptr %"PT"
  %"cmp.26" = icmp ne i32 %".3201", 0
  %".3203" = and i1 %"cmp.26", %".3202"
  store i1 %".3203", ptr %"P0"
  ; FMUL R15, R14, R9
  %".3206" = load float, ptr %"R14"
  %".3207" = load float, ptr %"R9"
  %"fmul.133" = fmul float %".3206", %".3207"
  %".3208" = bitcast ptr %"R15" to ptr
  store float %"fmul.133", ptr %".3208"
  ; FFMA R15, R15, R16, R8
  %".3211" = load float, ptr %"R15"
  %".3212" = load float, ptr %"R16"
  %".3213" = load float, ptr %"R8"
  %"fmul.134" = fmul float %".3211", %".3212"
  %"fadd.117" = fadd float %"fmul.134", %".3213"
  %".3214" = bitcast ptr %"R15" to ptr
  store float %"fadd.117", ptr %".3214"
  ; FMUL R18, R18, R9
  %".3217" = load float, ptr %"R18"
  %".3218" = load float, ptr %"R9"
  %"fmul.135" = fmul float %".3217", %".3218"
  %".3219" = bitcast ptr %"R18" to ptr
  store float %"fmul.135", ptr %".3219"
  ; FFMA R15, R18, R17, R15
  %".3222" = load float, ptr %"R18"
  %".3223" = load float, ptr %"R17"
  %".3224" = load float, ptr %"R15"
  %"fmul.136" = fmul float %".3222", %".3223"
  %"fadd.118" = fadd float %"fmul.136", %".3224"
  %".3225" = bitcast ptr %"R15" to ptr
  store float %"fadd.118", ptr %".3225"
  ; FMUL R24, R24, R9
  %".3228" = load float, ptr %"R24"
  %".3229" = load float, ptr %"R9"
  %"fmul.137" = fmul float %".3228", %".3229"
  %".3230" = bitcast ptr %"R24" to ptr
  store float %"fmul.137", ptr %".3230"
  ; FFMA R15, R24, R19, R15
  %".3233" = load float, ptr %"R24"
  %".3234" = load float, ptr %"R19"
  %".3235" = load float, ptr %"R15"
  %"fmul.138" = fmul float %".3233", %".3234"
  %"fadd.119" = fadd float %"fmul.138", %".3235"
  %".3236" = bitcast ptr %"R15" to ptr
  store float %"fadd.119", ptr %".3236"
  ; FMUL R34, R34, R9
  %".3239" = load float, ptr %"R34"
  %".3240" = load float, ptr %"R9"
  %"fmul.139" = fmul float %".3239", %".3240"
  %".3241" = bitcast ptr %"R34" to ptr
  store float %"fmul.139", ptr %".3241"
  ; FFMA R8, R34, R21, R15
  %".3244" = load float, ptr %"R34"
  %".3245" = load float, ptr %"R21"
  %".3246" = load float, ptr %"R15"
  %"fmul.140" = fmul float %".3244", %".3245"
  %"fadd.120" = fadd float %"fmul.140", %".3246"
  %".3247" = bitcast ptr %"R8" to ptr
  store float %"fadd.120", ptr %".3247"
  ; @P0 BRA `(.L_x_12)
  %".3250" = load i1, ptr %"P0"
  %".3251" = icmp ne i1 %".3250", 1
  br i1 %".3251", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".3254" = load i32, ptr %"R4"
  %".3255" = load i1, ptr %"PT"
  %"cmp.27" = icmp ne i32 %".3254", 0
  %".3256" = and i1 %"cmp.27", %".3255"
  store i1 %".3256", ptr %"P0"
  ; @!P0 BRA `(.L_x_10)
  %".3259" = load i1, ptr %"P0"
  %".3260" = icmp eq i1 %".3259", 1
  br i1 %".3260", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R10, R3, R22, RZ
  %".3265" = load i32, ptr %"R3"
  %".3266" = load i32, ptr %"R22"
  %"add.154" = add i32 %".3265", %".3266"
  %"add.155" = add i32 %"add.154", 0
  store i32 %"add.155", ptr %"R10"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".3269" = load i32, ptr %"R22"
  %".3270" = load i32, ptr %"R11"
  %"mul.50" = mul i32 %".3269", %".3270"
  %"add.156" = add i32 %"mul.50", %"Arg_3"
  store i32 %"add.156", ptr %"R22"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".3273" = load i32, ptr %"R10"
  %".3274" = load i32, ptr %"R11"
  %"mul.51" = mul i32 %".3273", %".3274"
  %"add.157" = add i32 %"mul.51", %"Arg_4"
  store i32 %"add.157", ptr %"R10"
  ; LDG.E.SYS R12, [R22]
  %".3277" = load i32, ptr %"R22"
  %"zext.332" = zext i32 %".3277" to i64
  %".3278" = load i32, ptr %"R23"
  %"zext.333" = zext i32 %".3278" to i64
  %"shl.174" = shl i64 %"zext.333", 32
  %"or.161" = or i64 %"shl.174", %"zext.332"
  %".3279" = inttoptr i64 %"or.161" to ptr
  %".3280" = ptrtoint ptr %".3279" to i64
  %".3281" = add i64 %".3280", 0
  %"for_LDG.151" = inttoptr i64 %".3281" to ptr
  %".3282" = load float, ptr %"for_LDG.151"
  %".3283" = bitcast ptr %"R12" to ptr
  store float %".3282", ptr %".3283"
  ; LDG.E.SYS R14, [R10]
  %".3286" = load i32, ptr %"R10"
  %"zext.334" = zext i32 %".3286" to i64
  %".3287" = load i32, ptr %"R11"
  %"zext.335" = zext i32 %".3287" to i64
  %"shl.175" = shl i64 %"zext.335", 32
  %"or.162" = or i64 %"shl.175", %"zext.334"
  %".3288" = inttoptr i64 %"or.162" to ptr
  %".3289" = ptrtoint ptr %".3288" to i64
  %".3290" = add i64 %".3289", 0
  %"for_LDG.152" = inttoptr i64 %".3290" to ptr
  %".3291" = load float, ptr %"for_LDG.152"
  %".3292" = bitcast ptr %"R14" to ptr
  store float %".3291", ptr %".3292"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".3295" = load i32, ptr %"R4"
  %".3296" = load i1, ptr %"PT"
  %"cmp.28" = icmp ne i32 %".3295", 1
  %".3297" = and i1 %"cmp.28", %".3296"
  store i1 %".3297", ptr %"P0"
  ; FMUL R13, R12, R9
  %".3300" = load float, ptr %"R12"
  %".3301" = load float, ptr %"R9"
  %"fmul.141" = fmul float %".3300", %".3301"
  %".3302" = bitcast ptr %"R13" to ptr
  store float %"fmul.141", ptr %".3302"
  ; FFMA R8, R13, R14, R8
  %".3305" = load float, ptr %"R13"
  %".3306" = load float, ptr %"R14"
  %".3307" = load float, ptr %"R8"
  %"fmul.142" = fmul float %".3305", %".3306"
  %"fadd.121" = fadd float %"fmul.142", %".3307"
  %".3308" = bitcast ptr %"R8" to ptr
  store float %"fadd.121", ptr %".3308"
  ; @!P0 BRA `(.L_x_10)
  %".3311" = load i1, ptr %"P0"
  %".3312" = icmp eq i1 %".3311", 1
  br i1 %".3312", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".3315" = load i32, ptr %"R4"
  %".3316" = load i1, ptr %"PT"
  %"cmp.29" = icmp ne i32 %".3315", 2
  %".3317" = and i1 %"cmp.29", %".3316"
  store i1 %".3317", ptr %"P0"
  ; LDG.E.SYS R12, [R22+0x4]
  %".3320" = load i32, ptr %"R22"
  %"zext.336" = zext i32 %".3320" to i64
  %".3321" = load i32, ptr %"R23"
  %"zext.337" = zext i32 %".3321" to i64
  %"shl.176" = shl i64 %"zext.337", 32
  %"or.163" = or i64 %"shl.176", %"zext.336"
  %".3322" = inttoptr i64 %"or.163" to ptr
  %".3323" = ptrtoint ptr %".3322" to i64
  %".3324" = add i64 %".3323", 4
  %"for_LDG.153" = inttoptr i64 %".3324" to ptr
  %".3325" = load float, ptr %"for_LDG.153"
  %".3326" = bitcast ptr %"R12" to ptr
  store float %".3325", ptr %".3326"
  ; LDG.E.SYS R14, [R10+0x4]
  %".3329" = load i32, ptr %"R10"
  %"zext.338" = zext i32 %".3329" to i64
  %".3330" = load i32, ptr %"R11"
  %"zext.339" = zext i32 %".3330" to i64
  %"shl.177" = shl i64 %"zext.339", 32
  %"or.164" = or i64 %"shl.177", %"zext.338"
  %".3331" = inttoptr i64 %"or.164" to ptr
  %".3332" = ptrtoint ptr %".3331" to i64
  %".3333" = add i64 %".3332", 4
  %"for_LDG.154" = inttoptr i64 %".3333" to ptr
  %".3334" = load float, ptr %"for_LDG.154"
  %".3335" = bitcast ptr %"R14" to ptr
  store float %".3334", ptr %".3335"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".3338" = load i1, ptr %"P0"
  %".3339" = icmp ne i1 %".3338", 1
  br i1 %".3339", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  %".3342" = load i32, ptr %"R22"
  %"zext.340" = zext i32 %".3342" to i64
  %".3343" = load i32, ptr %"R23"
  %"zext.341" = zext i32 %".3343" to i64
  %"shl.178" = shl i64 %"zext.341", 32
  %"or.165" = or i64 %"shl.178", %"zext.340"
  %".3344" = inttoptr i64 %"or.165" to ptr
  %".3345" = ptrtoint ptr %".3344" to i64
  %".3346" = add i64 %".3345", 8
  %"for_LDG.155" = inttoptr i64 %".3346" to ptr
  %".3347" = load float, ptr %"for_LDG.155"
  %".3348" = bitcast ptr %"R16" to ptr
  store float %".3347", ptr %".3348"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".3353" = load i1, ptr %"P0"
  %".3354" = icmp ne i1 %".3353", 1
  br i1 %".3354", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  %".3357" = load i32, ptr %"R10"
  %"zext.342" = zext i32 %".3357" to i64
  %".3358" = load i32, ptr %"R11"
  %"zext.343" = zext i32 %".3358" to i64
  %"shl.179" = shl i64 %"zext.343", 32
  %"or.166" = or i64 %"shl.179", %"zext.342"
  %".3359" = inttoptr i64 %"or.166" to ptr
  %".3360" = ptrtoint ptr %".3359" to i64
  %".3361" = add i64 %".3360", 8
  %"for_LDG.156" = inttoptr i64 %".3361" to ptr
  %".3362" = load float, ptr %"for_LDG.156"
  %".3363" = bitcast ptr %"R15" to ptr
  store float %".3362", ptr %".3363"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %".3368" = load float, ptr %"R12"
  %".3369" = load float, ptr %"R9"
  %"fmul.143" = fmul float %".3368", %".3369"
  %".3370" = bitcast ptr %"R13" to ptr
  store float %"fmul.143", ptr %".3370"
  ; FFMA R8, R13, R14, R8
  %".3373" = load float, ptr %"R13"
  %".3374" = load float, ptr %"R14"
  %".3375" = load float, ptr %"R8"
  %"fmul.144" = fmul float %".3373", %".3374"
  %"fadd.122" = fadd float %"fmul.144", %".3375"
  %".3376" = bitcast ptr %"R8" to ptr
  store float %"fadd.122", ptr %".3376"
  ; @P0 FMUL R9, R16, R9
  %".3379" = load i1, ptr %"P0"
  %".3380" = icmp ne i1 %".3379", 1
  br i1 %".3380", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %".3383" = load float, ptr %"R16"
  %".3384" = load float, ptr %"R9"
  %"fmul.145" = fmul float %".3383", %".3384"
  %".3385" = bitcast ptr %"R9" to ptr
  store float %"fmul.145", ptr %".3385"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".3390" = load i1, ptr %"P0"
  %".3391" = icmp ne i1 %".3390", 1
  br i1 %".3391", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %".3394" = load float, ptr %"R9"
  %".3395" = load float, ptr %"R15"
  %".3396" = load float, ptr %"R8"
  %"fmul.146" = fmul float %".3394", %".3395"
  %"fadd.123" = fadd float %"fmul.146", %".3396"
  %".3397" = bitcast ptr %"R8" to ptr
  store float %"fadd.123", ptr %".3397"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  %".3402" = load i32, ptr %"R30"
  %"zext.344" = zext i32 %".3402" to i64
  %"zext.345" = zext i32 0 to i64
  %"shl.180" = shl i64 %"zext.345", 32
  %"or.167" = or i64 %"shl.180", %"zext.344"
  %".3403" = inttoptr i64 %"or.167" to ptr
  %".3404" = ptrtoint ptr %".3403" to i64
  %".3405" = add i64 %".3404", 0
  %"for_LDG.157" = inttoptr i64 %".3405" to ptr
  %".3406" = load float, ptr %"for_LDG.157"
  %".3407" = bitcast ptr %"R9" to ptr
  store float %".3406", ptr %".3407"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %".3412" = load float, ptr %"R9"
  %".3413" = load float, ptr %"R8"
  %"fadd.124" = fadd float %".3412", %".3413"
  %".3414" = bitcast ptr %"R12" to ptr
  store float %"fadd.124", ptr %".3414"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %".3417" = load float, ptr %"R12"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".3417")
  %".3418" = load i1, ptr %"PT"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".3419" = and i1 %"fcmp_unordered", %".3418"
  store i1 %".3419", ptr %"P0"
  ; @!P0 BRA `(.L_x_17)
  %".3422" = load i1, ptr %"P0"
  %".3423" = icmp eq i1 %".3422", 1
  br i1 %".3423", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %".3426" = load float, ptr %"R12"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".3426")
  %"fmul.147" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  %".3427" = bitcast ptr %"R8" to ptr
  store float %"fmul.147", ptr %".3427"
  ; MOV R9, 0x3f800000
  %".3430" = bitcast ptr %"R9" to ptr
  store float 0x41cfc00000000000, ptr %".3430"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %".3433" = load float, ptr %"R12"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".3433")
  %".3434" = load i1, ptr %"PT"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".3435" = and i1 %"fcmp_unordered.1", %".3434"
  store i1 %".3435", ptr %"P0"
  ; MUFU.EX2 R8, R8
  %".3438" = load float, ptr %"R8"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".3438")
  %".3439" = bitcast ptr %"R8" to ptr
  store float %"llvm_exp2_f32_result.2", ptr %".3439"
  ; FADD R10, R8, 1
  %".3442" = load float, ptr %"R8"
  %"fadd.125" = fadd float %".3442", 0x3ff0000000000000
  %".3443" = bitcast ptr %"R10" to ptr
  store float %"fadd.125", ptr %".3443"
  ; MUFU.RCP R10, R10
  %".3446" = load float, ptr %"R10"
  %".3447" = fdiv float 0x3ff0000000000000, %".3446"
  %".3448" = bitcast ptr %"R10" to ptr
  store float %".3447", ptr %".3448"
  ; FFMA R9, R10, -2, R9
  %".3451" = load float, ptr %"R10"
  %".3452" = load float, ptr %"R9"
  %"fmul.148" = fmul float %".3451", 0xc000000000000000
  %"fadd.126" = fadd float %"fmul.148", %".3452"
  %".3453" = bitcast ptr %"R9" to ptr
  store float %"fadd.126", ptr %".3453"
  ; FSEL R9, R9, 1, !P0
  %".3456" = load float, ptr %"R9"
  %".3457" = load i1, ptr %"P0"
  %".3458" = icmp eq i1 %".3457", 1
  %"fsel" = select  i1 %".3458", float %".3456", float 0x3ff0000000000000
  %".3459" = bitcast ptr %"R9" to ptr
  store float %"fsel", ptr %".3459"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".3462" = load float, ptr %"R9"
  %".3463" = load float, ptr %"R12"
  %".3464" = bitcast float %".3462" to i32
  %".3465" = bitcast float 0x41e0000000000000 to i32
  %".3466" = bitcast float %".3463" to i32
  %".3467" = or i32 %".3464", %".3465"
  %".3468" = or i32 %".3464", %".3466"
  %".3469" = and i32 %".3467", %".3468"
  store i32 %".3469", ptr %"R9"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  %".3474" = bitcast ptr %"R9" to ptr
  store float 0x41ce407840000000, ptr %".3474"
  ; FMUL R8, R12, R12
  %".3477" = load float, ptr %"R12"
  %".3478" = load float, ptr %"R12"
  %"fmul.149" = fmul float %".3477", %".3478"
  %".3479" = bitcast ptr %"R8" to ptr
  store float %"fmul.149", ptr %".3479"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".3482" = load float, ptr %"R8"
  %".3483" = load float, ptr %"R9"
  %"fmul.150" = fmul float %".3482", %".3483"
  %"fadd.127" = fadd float %"fmul.150", 0xbfaac795c0000000
  %".3484" = bitcast ptr %"R9" to ptr
  store float %"fadd.127", ptr %".3484"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".3487" = load float, ptr %"R8"
  %".3488" = load float, ptr %"R9"
  %"fmul.151" = fmul float %".3487", %".3488"
  %"fadd.128" = fadd float %"fmul.151", 0x3fc10b2820000000
  %".3489" = bitcast ptr %"R9" to ptr
  store float %"fadd.128", ptr %".3489"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".3492" = load float, ptr %"R8"
  %".3493" = load float, ptr %"R9"
  %"fmul.152" = fmul float %".3492", %".3493"
  %"fadd.129" = fadd float %"fmul.152", 0xbfd5553da0000000
  %".3494" = bitcast ptr %"R9" to ptr
  store float %"fadd.129", ptr %".3494"
  ; FFMA R9, R8, R9, RZ
  %".3497" = load float, ptr %"R8"
  %".3498" = load float, ptr %"R9"
  %"fmul.153" = fmul float %".3497", %".3498"
  %"fadd.130" = fadd float %"fmul.153",              0x0
  %".3499" = bitcast ptr %"R9" to ptr
  store float %"fadd.130", ptr %".3499"
  ; FFMA R9, R12, R9, R12
  %".3502" = load float, ptr %"R12"
  %".3503" = load float, ptr %"R9"
  %".3504" = load float, ptr %"R12"
  %"fmul.154" = fmul float %".3502", %".3503"
  %"fadd.131" = fadd float %"fmul.154", %".3504"
  %".3505" = bitcast ptr %"R9" to ptr
  store float %"fadd.131", ptr %".3505"
  br label %".L_x_18"
.L_x_18:
  ; BSYNC B0
  br label %".L_x_16"
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  %".3511" = load i32, ptr %"R20"
  %"add.158" = add i32 %".3511", 25165824
  %"add.159" = add i32 %"add.158", 0
  store i32 %"add.159", ptr %"R8"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".3516" = load i32, ptr %"R8"
  %".3517" = and i32 %".3516", 2139095040
  store i32 %".3517", ptr %"R8"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".3520" = load i32, ptr %"R8"
  %".3521" = load i1, ptr %"PT"
  %"cmp.30" = icmp sgt i32 %".3520", 33554431
  %".3522" = and i1 %"cmp.30", %".3521"
  store i1 %".3522", ptr %"P0"
  ; @P0 BRA `(.L_x_20)
  %".3525" = load i1, ptr %"P0"
  %".3526" = icmp ne i1 %".3525", 1
  br i1 %".3526", label %".L_x_20", label %".L_x_16_split_0x2170_CALL_0x21b0"
.L_x_16_split_0x2170_CALL_0x21b0:
  ; MOV R24, R20
  %".3529" = load float, ptr %"R20"
  %".3530" = bitcast ptr %"R24" to ptr
  store float %".3529", ptr %".3530"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".3537" = icmp ult i32 1, 32
  %"SHF_min.10" = select  i1 %".3537", i32 1, i32 32
  %".3538" = load i32, ptr %"R24"
  %"zext.346" = zext i32 0 to i64
  %"zext.347" = zext i32 %".3538" to i64
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
  %".3543" = icmp ult i32 24, 32
  %"SHF_min.11" = select  i1 %".3543", i32 24, i32 32
  %".3544" = load i32, ptr %"R11"
  %"zext.349" = zext i32 %".3544" to i64
  %"zext.350" = zext i32 0 to i64
  %"zext.351" = zext i32 24 to i64
  %"shl.183" = shl i64 %"zext.349", 32
  %"or.169" = or i64 %"shl.183", %"zext.350"
  %"lshr.6" = lshr i64 %"or.169", %"zext.351"
  %"lshr.7" = lshr i64 %"lshr.6", 32
  %"trunc32.11" = trunc i64 %"lshr.7" to i32
  store i32 %"trunc32.11", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".3547" = load i32, ptr %"R25"
  %".3548" = load i1, ptr %"PT"
  %"cmp.31" = icmp ne i32 %".3547", 0
  %".3549" = and i1 %"cmp.31", %".3548"
  store i1 %".3549", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".3552" = load i1, ptr %"P0"
  %".3553" = icmp ne i1 %".3552", 1
  br i1 %".3553", label %".L_x_49...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".3556" = icmp ult i32 1, 32
  %"SHF_min.12" = select  i1 %".3556", i32 1, i32 32
  %".3557" = load i32, ptr %"R24"
  %"zext.352" = zext i32 0 to i64
  %"zext.353" = zext i32 %".3557" to i64
  %"zext.354" = zext i32 1 to i64
  %"shl.184" = shl i64 %"zext.352", 32
  %"or.170" = or i64 %"shl.184", %"zext.353"
  %"shl.185" = shl i64 %"or.170", %"zext.354"
  %"and.8" = and i64 %"shl.185", 4294967295
  %"trunc32.12" = trunc i64 %"and.8" to i32
  store i32 %"trunc32.12", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".3560" = load i32, ptr %"R11"
  %".3561" = load i1, ptr %"PT"
  %"cmp.32" = icmp ne i32 %".3560", 0
  %".3562" = and i1 %"cmp.32", %".3561"
  store i1 %".3562", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3565" = load i1, ptr %"P0"
  %".3566" = icmp ne i1 %".3565", 1
  br i1 %".3566", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3569" = load float, ptr %"R24"
  %"fmul.155" = fmul float %".3569", 0x43f0000000000000
  %"fadd.132" = fadd float %"fmul.155",              0x0
  %".3570" = bitcast ptr %"R12" to ptr
  store float %"fadd.132", ptr %".3570"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3575" = load float, ptr %"R24"
  %"fmul.156" = fmul float %".3575", 0x43f0000000000000
  %"fadd.133" = fadd float %"fmul.156",              0x0
  %".3576" = bitcast ptr %"R12" to ptr
  store float %"fadd.133", ptr %".3576"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2:
  ; @!P0 MUFU.RCP R11, R24
  %".3581" = load i1, ptr %"P0"
  %".3582" = icmp eq i1 %".3581", 1
  br i1 %".3582", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".3585" = load i32, ptr %"R24"
  %"sint_to_f32" = sitofp i32 %".3585" to float
  %".3586" = fdiv float 0x3ff0000000000000, %"sint_to_f32"
  %".3587" = fptosi float %".3586" to i32
  store i32 %".3587", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2:
  ; MUFU.RCP R11, R24
  %".3592" = load i32, ptr %"R24"
  %"sint_to_f32.1" = sitofp i32 %".3592" to float
  %".3593" = fdiv float 0x3ff0000000000000, %"sint_to_f32.1"
  %".3594" = fptosi float %".3593" to i32
  store i32 %".3594", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2:
  ; @P0 MUFU.RCP R13, R12
  %".3599" = load i1, ptr %"P0"
  %".3600" = icmp ne i1 %".3599", 1
  br i1 %".3600", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".3603" = load float, ptr %"R12"
  %".3604" = fdiv float 0x3ff0000000000000, %".3603"
  %".3605" = bitcast ptr %"R13" to ptr
  store float %".3604", ptr %".3605"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2:
  ; MUFU.RCP R13, R12
  %".3610" = load float, ptr %"R12"
  %".3611" = fdiv float 0x3ff0000000000000, %".3610"
  %".3612" = bitcast ptr %"R13" to ptr
  store float %".3611", ptr %".3612"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2:
  ; @P0 FFMA R22, R12, R13, -1
  %".3617" = load i1, ptr %"P0"
  %".3618" = icmp ne i1 %".3617", 1
  br i1 %".3618", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".3621" = load float, ptr %"R12"
  %".3622" = load float, ptr %"R13"
  %"fmul.157" = fmul float %".3621", %".3622"
  %"fadd.134" = fadd float %"fmul.157", 0xbff0000000000000
  %".3623" = bitcast ptr %"R22" to ptr
  store float %"fadd.134", ptr %".3623"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2:
  ; FFMA R22, R12, R13, -1
  %".3628" = load float, ptr %"R12"
  %".3629" = load float, ptr %"R13"
  %"fmul.158" = fmul float %".3628", %".3629"
  %"fadd.135" = fadd float %"fmul.158", 0xbff0000000000000
  %".3630" = bitcast ptr %"R22" to ptr
  store float %"fadd.135", ptr %".3630"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".3635" = load i1, ptr %"P0"
  %".3636" = icmp ne i1 %".3635", 1
  br i1 %".3636", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".3639" = load float, ptr %"R22"
  %".3640" = fneg float %".3639"
  %"fadd.136" = fadd float %".3640",              0x0
  %".3641" = bitcast ptr %"R22" to ptr
  store float %"fadd.136", ptr %".3641"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2:
  ; FADD.FTZ R22, -R22, -RZ
  %".3646" = load float, ptr %"R22"
  %".3647" = fneg float %".3646"
  %"fadd.137" = fadd float %".3647",              0x0
  %".3648" = bitcast ptr %"R22" to ptr
  store float %"fadd.137", ptr %".3648"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2:
  ; @P0 FFMA R22, R13, R22, R13
  %".3653" = load i1, ptr %"P0"
  %".3654" = icmp ne i1 %".3653", 1
  br i1 %".3654", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".3657" = load float, ptr %"R13"
  %".3658" = load float, ptr %"R22"
  %".3659" = load float, ptr %"R13"
  %"fmul.159" = fmul float %".3657", %".3658"
  %"fadd.138" = fadd float %"fmul.159", %".3659"
  %".3660" = bitcast ptr %"R22" to ptr
  store float %"fadd.138", ptr %".3660"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2:
  ; FFMA R22, R13, R22, R13
  %".3665" = load float, ptr %"R13"
  %".3666" = load float, ptr %"R22"
  %".3667" = load float, ptr %"R13"
  %"fmul.160" = fmul float %".3665", %".3666"
  %"fadd.139" = fadd float %"fmul.160", %".3667"
  %".3668" = bitcast ptr %"R22" to ptr
  store float %"fadd.139", ptr %".3668"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3673" = load i1, ptr %"P0"
  %".3674" = icmp ne i1 %".3673", 1
  br i1 %".3674", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3677" = load float, ptr %"R22"
  %"fmul.161" = fmul float %".3677", 0x43f0000000000000
  %"fadd.140" = fadd float %"fmul.161",              0x0
  %".3678" = bitcast ptr %"R11" to ptr
  store float %"fadd.140", ptr %".3678"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3683" = load float, ptr %"R22"
  %"fmul.162" = fmul float %".3683", 0x43f0000000000000
  %"fadd.141" = fadd float %"fmul.162",              0x0
  %".3684" = bitcast ptr %"R11" to ptr
  store float %"fadd.141", ptr %".3684"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...2:
  ; BRA `(.L_x_50)
  br label %".L_x_50...2"
.L_x_49...2:
  ; IADD3 R34, R25, -0xfd, RZ
  %".3691" = load i32, ptr %"R25"
  %"add.160" = add i32 %".3691", -253
  %"add.161" = add i32 %"add.160", 0
  store i32 %"add.161", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".3694" = load i32, ptr %"R34"
  %".3695" = load i1, ptr %"PT"
  %"cmp.33" = icmp sgt i32 %".3694", 1
  %".3696" = and i1 %"cmp.33", %".3695"
  store i1 %".3696", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".3699" = load i1, ptr %"P0"
  %".3700" = icmp ne i1 %".3699", 1
  br i1 %".3700", label %".L_x_51...2", label %".L_x_49_split_0x4a30...2"
.L_x_49_split_0x4a30...2:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".3703" = load i32, ptr %"R24"
  %".3704" = and i32 %".3703", 8388607
  store i32 %".3704", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".3709" = load i32, ptr %"R11"
  %".3710" = or i32 %".3709", 1065353216
  store i32 %".3710", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".3713" = load i32, ptr %"R34"
  %".3714" = icmp ult i32 %".3713", 32
  %"SHF_min.13" = select  i1 %".3714", i32 %".3713", i32 32
  %".3715" = load i32, ptr %"R23"
  %".3716" = load i32, ptr %"R34"
  %"zext.355" = zext i32 0 to i64
  %"zext.356" = zext i32 %".3715" to i64
  %"zext.357" = zext i32 %".3716" to i64
  %"shl.186" = shl i64 %"zext.355", 32
  %"or.171" = or i64 %"shl.186", %"zext.356"
  %"shl.187" = shl i64 %"or.171", %"zext.357"
  %"and.9" = and i64 %"shl.187", 4294967295
  %"trunc32.13" = trunc i64 %"and.9" to i32
  store i32 %"trunc32.13", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".3719" = load float, ptr %"R11"
  %".3720" = fdiv float 0x3ff0000000000000, %".3719"
  %".3721" = bitcast ptr %"R12" to ptr
  store float %".3720", ptr %".3721"
  ; FFMA R13, R11, R12, -1
  %".3724" = load float, ptr %"R11"
  %".3725" = load float, ptr %"R12"
  %"fmul.163" = fmul float %".3724", %".3725"
  %"fadd.142" = fadd float %"fmul.163", 0xbff0000000000000
  %".3726" = bitcast ptr %"R13" to ptr
  store float %"fadd.142", ptr %".3726"
  ; FADD.FTZ R13, -R13, -RZ
  %".3729" = load float, ptr %"R13"
  %".3730" = fneg float %".3729"
  %"fadd.143" = fadd float %".3730",              0x0
  %".3731" = bitcast ptr %"R13" to ptr
  store float %"fadd.143", ptr %".3731"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".3734" = load float, ptr %"R12"
  %".3735" = load float, ptr %"R13"
  %".3736" = load float, ptr %"R12"
  %"fmul.164" = fmul float %".3734", %".3735"
  %"fadd.144" = fadd float %"fmul.164", %".3736"
  %".3737" = bitcast ptr %"R22" to ptr
  store float %"fadd.144", ptr %".3737"
  ; FFMA.RP R13, R12, R13, R12
  %".3740" = load float, ptr %"R12"
  %".3741" = load float, ptr %"R13"
  %".3742" = load float, ptr %"R12"
  %"fmul.165" = fmul float %".3740", %".3741"
  %"fadd.145" = fadd float %"fmul.165", %".3742"
  %".3743" = bitcast ptr %"R13" to ptr
  store float %"fadd.145", ptr %".3743"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".3746" = load float, ptr %"R22"
  %".3747" = bitcast float %".3746" to i32
  %".3748" = and i32 %".3747", 8388607
  store i32 %".3748", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".3751" = load float, ptr %"R22"
  %".3752" = load float, ptr %"R13"
  %".3753" = load i1, ptr %"PT"
  %"fcmp_ordered.1" = fcmp une float %".3751", %".3752"
  %".3754" = and i1 %"fcmp_ordered.1", %".3753"
  store i1 %".3754", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".3757" = load i32, ptr %"R12"
  %".3758" = or i32 %".3757", 8388608
  store i32 %".3758", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".3761" = load i1, ptr %"P0"
  %".3762" = icmp eq i1 %".3761", 1
  %"sel.2" = select  i1 %".3762", i32 0, i32 4294967295
  store i32 %"sel.2", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".3765" = load i32, ptr %"R23"
  %".3766" = load i32, ptr %"R12"
  %".3767" = and i32 %".3765", %".3766"
  store i32 %".3767", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".3770" = load i32, ptr %"R13"
  %".3771" = sub i32 0, %".3770"
  %"add.162" = add i32 %".3771", 0
  %"add.163" = add i32 %"add.162", 0
  store i32 %"add.163", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".3774" = load i32, ptr %"R34"
  %".3775" = icmp ult i32 %".3774", 32
  %"SHF_min.14" = select  i1 %".3775", i32 %".3774", i32 32
  %".3776" = load i32, ptr %"R23"
  %".3777" = load i32, ptr %"R34"
  %"zext.358" = zext i32 %".3776" to i64
  %"zext.359" = zext i32 0 to i64
  %"zext.360" = zext i32 %".3777" to i64
  %"shl.188" = shl i64 %"zext.358", 32
  %"or.172" = or i64 %"shl.188", %"zext.359"
  %"lshr.8" = lshr i64 %"or.172", %"zext.360"
  %"lshr.9" = lshr i64 %"lshr.8", 32
  %"trunc32.14" = trunc i64 %"lshr.9" to i32
  store i32 %"trunc32.14", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".3780" = load i32, ptr %"R13"
  %".3781" = load i32, ptr %"R34"
  %".3782" = load i32, ptr %"R12"
  %"LOP3_result.4" = call i32 @"custom_lop3"(i32 %".3782", i32 0, i32 %".3780", i32 %".3781")
  %".3783" = trunc i32 %"LOP3_result.4" to i1
  store i1 %".3783", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".3786" = load i32, ptr %"R23"
  %"LOP3_result.5" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".3786", i32 1)
  %".3787" = trunc i32 %"LOP3_result.5" to i1
  store i1 %".3787", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".3790" = load i32, ptr %"R23"
  %"LOP3_result.6" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".3790", i32 2)
  %".3791" = trunc i32 %"LOP3_result.6" to i1
  store i1 %".3791", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".3794" = load i1, ptr %"P0"
  %".3795" = sub i1 0, %".3794"
  %".3796" = load i1, ptr %"P1"
  %".3797" = sub i1 0, %".3796"
  %".3798" = or i1 %".3795", %".3797"
  %".3799" = and i1 %".3798", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".3801" = load i32, ptr %"R24"
  %"LOP3_result.7" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".3801", i32 8388607)
  %".3802" = trunc i32 %"LOP3_result.7" to i1
  store i1 %".3802", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".3805" = load i1, ptr %"P0"
  %".3806" = icmp eq i1 %".3805", 1
  %"sel.3" = select  i1 %".3806", i32 0, i32 1
  store i32 %"sel.3", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".3809" = load i32, ptr %"R11"
  %".3810" = sub i32 0, %".3809"
  %"add.164" = add i32 %".3810", 0
  %"add.165" = add i32 %"add.164", 0
  store i32 %"add.165", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".3813" = load i32, ptr %"R11"
  %".3814" = load i1, ptr %"PT"
  %"cmp.34" = icmp sge i32 %".3813", 0
  %".3815" = and i1 %"cmp.34", %".3814"
  store i1 %".3815", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".3818" = load i32, ptr %"R25"
  %"add.166" = add i32 %".3818", -252
  %"add.167" = add i32 %"add.166", 0
  store i32 %"add.167", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".3821" = load i32, ptr %"R11"
  %".3822" = icmp ult i32 %".3821", 32
  %"SHF_min.15" = select  i1 %".3822", i32 %".3821", i32 32
  %".3823" = load i32, ptr %"R12"
  %".3824" = load i32, ptr %"R11"
  %"zext.361" = zext i32 %".3823" to i64
  %"zext.362" = zext i32 0 to i64
  %"zext.363" = zext i32 %".3824" to i64
  %"shl.189" = shl i64 %"zext.361", 32
  %"or.173" = or i64 %"shl.189", %"zext.362"
  %"lshr.10" = lshr i64 %"or.173", %"zext.363"
  %"lshr.11" = lshr i64 %"lshr.10", 32
  %"trunc32.15" = trunc i64 %"lshr.11" to i32
  store i32 %"trunc32.15", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".3827" = load i1, ptr %"P0"
  %".3828" = icmp eq i1 %".3827", 1
  br i1 %".3828", label %".L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2"
.L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".3831" = load i32, ptr %"R11"
  %"add.168" = add i32 %".3831", 1
  %"add.169" = add i32 %"add.168", 0
  store i32 %"add.169", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2:
  ; IADD3 R11, R11, 0x1, RZ
  %".3836" = load i32, ptr %"R11"
  %"add.170" = add i32 %".3836", 1
  %"add.171" = add i32 %"add.170", 0
  store i32 %"add.171", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...2"
.L_x_49_split_0x4be0...2:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".3841" = load i1, ptr %"P1"
  %".3842" = icmp eq i1 %".3841", 1
  br i1 %".3842", label %".L_x_49_split_0x4be0...2_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...2"
.L_x_49_split_0x4be0...2_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".3845" = icmp ult i32 1, 32
  %"SHF_min.16" = select  i1 %".3845", i32 1, i32 32
  %".3846" = load i32, ptr %"R11"
  %"zext.364" = zext i32 0 to i64
  %"zext.365" = zext i32 %".3846" to i64
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
  %".3851" = icmp ult i32 1, 32
  %"SHF_min.17" = select  i1 %".3851", i32 1, i32 32
  %".3852" = load i32, ptr %"R11"
  %"zext.367" = zext i32 0 to i64
  %"zext.368" = zext i32 %".3852" to i64
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
  %".3857" = load i32, ptr %"R11"
  %".3858" = load i32, ptr %"R24"
  %".3859" = or i32 %".3857", 2147483648
  %".3860" = or i32 %".3857", %".3858"
  %".3861" = and i32 %".3859", %".3860"
  store i32 %".3861", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...2"
.L_x_51...2:
  ; MUFU.RCP R11, R24
  %".3866" = load float, ptr %"R24"
  %".3867" = fdiv float 0x3ff0000000000000, %".3866"
  %".3868" = bitcast ptr %"R11" to ptr
  store float %".3867", ptr %".3868"
  br label %".L_x_50...2"
.L_x_50...2:
  ; BSYNC B1
  br label %".L_x_48...2"
.L_x_48...2:
  ; MOV R22, R11
  %".3874" = load float, ptr %"R11"
  %".3875" = bitcast ptr %"R22" to ptr
  store float %".3874", ptr %".3875"
  ; MOV R11, 0x0
  store i32 0, ptr %"R11"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.1"
.L_x_52...2:
  ; BRA `(.L_x_52)
  br label %".L_x_52...2"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.1:
.L_x_16_split_0x2170_postCALL_0x21b0:
  ; MOV R8, R22
  %".3884" = load float, ptr %"R22"
  %".3885" = bitcast ptr %"R8" to ptr
  store float %".3884", ptr %".3885"
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".3890" = load float, ptr %"R20"
  %".3891" = fdiv float 0x3ff0000000000000, %".3890"
  %".3892" = bitcast ptr %"R11" to ptr
  store float %".3891", ptr %".3892"
  ; FFMA R8, R20, R11, -1
  %".3895" = load float, ptr %"R20"
  %".3896" = load float, ptr %"R11"
  %"fmul.166" = fmul float %".3895", %".3896"
  %"fadd.146" = fadd float %"fmul.166", 0xbff0000000000000
  %".3897" = bitcast ptr %"R8" to ptr
  store float %"fadd.146", ptr %".3897"
  ; FADD.FTZ R8, -R8, -RZ
  %".3900" = load float, ptr %"R8"
  %".3901" = fneg float %".3900"
  %"fadd.147" = fadd float %".3901",              0x0
  %".3902" = bitcast ptr %"R8" to ptr
  store float %"fadd.147", ptr %".3902"
  ; FFMA R8, R11, R8, R11
  %".3905" = load float, ptr %"R11"
  %".3906" = load float, ptr %"R8"
  %".3907" = load float, ptr %"R11"
  %"fmul.167" = fmul float %".3905", %".3906"
  %"fadd.148" = fadd float %"fmul.167", %".3907"
  %".3908" = bitcast ptr %"R8" to ptr
  store float %"fadd.148", ptr %".3908"
  br label %".L_x_21"
.L_x_21:
  ; BSYNC B0
  br label %".L_x_19"
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  %".3914" = load i32, ptr %"R28"
  %"zext.370" = zext i32 %".3914" to i64
  %"zext.371" = zext i32 0 to i64
  %"shl.194" = shl i64 %"zext.371", 32
  %"or.176" = or i64 %"shl.194", %"zext.370"
  %".3915" = inttoptr i64 %"or.176" to ptr
  %".3916" = ptrtoint ptr %".3915" to i64
  %".3917" = add i64 %".3916", 0
  %"for_LDG.158" = inttoptr i64 %".3917" to ptr
  %".3918" = load float, ptr %"for_LDG.158"
  %".3919" = bitcast ptr %"R11" to ptr
  store float %".3918", ptr %".3919"
  ; FADD R10, -R8, 1
  %".3922" = load float, ptr %"R8"
  %".3923" = fneg float %".3922"
  %"fadd.149" = fadd float %".3923", 0x3ff0000000000000
  %".3924" = bitcast ptr %"R10" to ptr
  store float %"fadd.149", ptr %".3924"
  ; FMUL R11, R11, R8
  %".3927" = load float, ptr %"R11"
  %".3928" = load float, ptr %"R8"
  %"fmul.168" = fmul float %".3927", %".3928"
  %".3929" = bitcast ptr %"R11" to ptr
  store float %"fmul.168", ptr %".3929"
  ; FFMA R9, R10, R9, R11
  %".3932" = load float, ptr %"R10"
  %".3933" = load float, ptr %"R9"
  %".3934" = load float, ptr %"R11"
  %"fmul.169" = fmul float %".3932", %".3933"
  %"fadd.150" = fadd float %"fmul.169", %".3934"
  %".3935" = bitcast ptr %"R9" to ptr
  store float %"fadd.150", ptr %".3935"
  ; STG.E.SYS [R28], R9
  %".3938" = load float, ptr %"R9"
  %".3939" = load i32, ptr %"R28"
  %"zext.372" = zext i32 %".3939" to i64
  %"zext.373" = zext i32 0 to i64
  %"shl.195" = shl i64 %"zext.373", 32
  %"or.177" = or i64 %"shl.195", %"zext.372"
  %".3940" = inttoptr i64 %"or.177" to ptr
  %".3941" = ptrtoint ptr %".3940" to i64
  %".3942" = add i64 %".3941", 0
  %"for_STG" = inttoptr i64 %".3942" to ptr
  store float %".3938", ptr %"for_STG"
  ; @!P3 BRA `(.L_x_22)
  %".3945" = load i1, ptr %"P3"
  %".3946" = icmp eq i1 %".3945", 1
  br i1 %".3946", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".3953" = load i32, ptr %"R15"
  %".3954" = and i32 %".3953", 3
  store i32 %".3954", ptr %"R15"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".3957" = load i32, ptr %"R5"
  %".3958" = and i32 %".3957", 3
  store i32 %".3958", ptr %"R48"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".3961" = load i32, ptr %"R18"
  %".3962" = sub i32 0, %".3961"
  %"add.172" = add i32 %".3962", %"Arg_6"
  %"add.173" = add i32 %"add.172", 0
  store i32 %"add.173", ptr %"R49"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".3965" = icmp ult i32 31, 32
  %"SHF_min.18" = select  i1 %".3965", i32 31, i32 32
  %".3966" = load i32, ptr %"R5"
  %"zext.374" = zext i32 %".3966" to i64
  %"zext.375" = zext i32 0 to i64
  %"zext.376" = zext i32 31 to i64
  %"shl.196" = shl i64 %"zext.374", 32
  %"or.178" = or i64 %"shl.196", %"zext.375"
  %"ashr" = ashr i64 %"or.178", %"zext.376"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.18" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.18", ptr %"R16"
  ; MOV R17, RZ
  %".3969" = load i32, ptr %"RZ"
  store i32 %".3969", ptr %"R17"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".3972" = load i32, ptr %"R18"
  %".3973" = sub i32 0, %".3972"
  %"add.174" = add i32 %".3973", %"Arg_7"
  %"add.175" = add i32 %"add.174", 0
  store i32 %"add.175", ptr %"R18"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".3976" = load i32, ptr %"R15"
  %".3977" = sub i32 0, %".3976"
  %"add.176" = add i32 %".3977", %"Arg_6"
  %"add.177" = add i32 %"add.176", 0
  store i32 %"add.177", ptr %"R19"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".3980" = load i32, ptr %"R48"
  %".3981" = sub i32 0, %".3980"
  %"add.178" = add i32 %".3981", %"Arg_7"
  %"add.179" = add i32 %"add.178", 0
  store i32 %"add.179", ptr %"R20"
  br label %".L_x_47"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".3985" = load i32, ptr %"R49"
  %".3986" = load i1, ptr %"PT"
  %"cmp.35" = icmp sge i32 %".3985", 3
  %".3987" = and i1 %"cmp.35", %".3986"
  store i1 %".3987", ptr %"P0"
  ; MOV R13, R17
  %".3990" = load i32, ptr %"R17"
  store i32 %".3990", ptr %"R13"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R4"
  ; IADD3 R17, R17, 0x1, RZ
  %".3995" = load i32, ptr %"R17"
  %"add.180" = add i32 %".3995", 1
  %"add.181" = add i32 %"add.180", 0
  store i32 %"add.181", ptr %"R17"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".3998" = load i32, ptr %"R4"
  %".3999" = load i1, ptr %"PT"
  %"cmp.36" = icmp sge i32 %".3998", 1
  %".4000" = and i1 %"cmp.36", %".3999"
  store i1 %".4000", ptr %"P4"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".4003" = load i32, ptr %"R15"
  %".4004" = load i1, ptr %"PT"
  %"cmp.37" = icmp ne i32 %".4003", 0
  %".4005" = and i1 %"cmp.37", %".4004"
  store i1 %".4005", ptr %"P1"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".4008" = load i32, ptr %"R17"
  %".4009" = load i1, ptr %"PT"
  %"cmp.38" = icmp sge i32 %".4008", %"Arg_8"
  %".4010" = and i1 %"cmp.38", %".4009"
  store i1 %".4010", ptr %"P3"
  ; MOV R21, RZ
  %".4013" = load float, ptr %"RZ"
  %".4014" = bitcast ptr %"R21" to ptr
  store float %".4013", ptr %".4014"
  ; MOV R22, RZ
  %".4017" = load i32, ptr %"RZ"
  store i32 %".4017", ptr %"R22"
  ; MOV R56, RZ
  %".4020" = load float, ptr %"RZ"
  %".4021" = bitcast ptr %"R56" to ptr
  store float %".4020", ptr %".4021"
  ; MOV R44, RZ
  %".4024" = load float, ptr %"RZ"
  %".4025" = bitcast ptr %"R44" to ptr
  store float %".4024", ptr %".4025"
  ; @!P0 BRA `(.L_x_23)
  %".4028" = load i1, ptr %"P0"
  %".4029" = icmp eq i1 %".4028", 1
  br i1 %".4029", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R25"
  ; MOV R21, RZ
  %".4034" = load float, ptr %"RZ"
  %".4035" = bitcast ptr %"R21" to ptr
  store float %".4034", ptr %".4035"
  ; MOV R22, RZ
  %".4038" = load i32, ptr %"RZ"
  store i32 %".4038", ptr %"R22"
  ; MOV R12, R19
  %".4041" = load i32, ptr %"R19"
  store i32 %".4041", ptr %"R12"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".4044" = icmp ult i32 2, 64
  %"SHF_min.19" = select  i1 %".4044", i32 2, i32 64
  %".4045" = load i32, ptr %"R16"
  %".4046" = load i32, ptr %"R25"
  %"zext.377" = zext i32 %".4045" to i64
  %"zext.378" = zext i32 %".4046" to i64
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
  %".4052" = load i32, ptr %"R14"
  %".4053" = load i32, ptr %"R22"
  %"mul.52" = mul i32 %".4052", %"Arg_6"
  %"add.182" = add i32 %"mul.52", %".4053"
  store i32 %"add.182", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".4058" = load i32, ptr %"R13"
  %".4059" = load i32, ptr %"R22"
  %"mul.53" = mul i32 %".4058", %"Arg_6"
  %"add.183" = add i32 %"mul.53", %".4059"
  store i32 %"add.183", ptr %"R10"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".4062" = load i32, ptr %"R6"
  %".4063" = load i32, ptr %"R7"
  %"mul.54" = mul i32 %".4062", %".4063"
  %"add.184" = add i32 %"mul.54", %"Arg_4"
  store i32 %"add.184", ptr %"R4"
  ; LEA R6, R9, R6, 0x1
  %".4066" = load i32, ptr %"R9"
  %".4067" = load i32, ptr %"R6"
  %"shl.199" = shl i32 %".4066", 1
  %"add.185" = add i32 %"shl.199", %".4067"
  store i32 %"add.185", ptr %"R6"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".4070" = load i32, ptr %"R10"
  %".4071" = load i32, ptr %"R7"
  %"mul.55" = mul i32 %".4070", %".4071"
  %"add.186" = add i32 %"mul.55", %"Arg_2"
  store i32 %"add.186", ptr %"R10"
  ; LEA R8, P0, R25, R4, 0x2
  %".4074" = load i1, ptr %"P0"
  %".4075" = sub i1 0, %".4074"
  %".4076" = load i32, ptr %"R25"
  %".4077" = load i32, ptr %"R4"
  %".4078" = sext i1 %".4075" to i32
  %"shl.200" = shl i32 %".4078", %".4077"
  %"add.187" = add i32 %"shl.200", %".4076"
  store i32 %"add.187", ptr %"R8"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".4081" = load i32, ptr %"R6"
  %".4082" = load i32, ptr %"R7"
  %"mul.56" = mul i32 %".4081", %".4082"
  %"add.188" = add i32 %"mul.56", %"Arg_4"
  store i32 %"add.188", ptr %"R6"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".4085" = load i32, ptr %"R5"
  %".4086" = load i32, ptr %"R23"
  %".4087" = load i1, ptr %"P0"
  %".4088" = sub i1 0, %".4087"
  %".4089" = zext i1 %".4088" to i32
  %"add.189" = add i32 %".4085", %".4086"
  %"add.190" = add i32 %"add.189", 0
  %"add.191" = add i32 %"add.190", %".4089"
  store i32 %"add.191", ptr %"R9"
  ; LDG.E.SYS R35, [R4]
  %".4092" = load i32, ptr %"R4"
  %"zext.380" = zext i32 %".4092" to i64
  %".4093" = load i32, ptr %"R5"
  %"zext.381" = zext i32 %".4093" to i64
  %"shl.201" = shl i64 %"zext.381", 32
  %"or.180" = or i64 %"shl.201", %"zext.380"
  %".4094" = inttoptr i64 %"or.180" to ptr
  %".4095" = ptrtoint ptr %".4094" to i64
  %".4096" = add i64 %".4095", 0
  %"for_LDG.159" = inttoptr i64 %".4096" to ptr
  %".4097" = load float, ptr %"for_LDG.159"
  %".4098" = bitcast ptr %"R35" to ptr
  store float %".4097", ptr %".4098"
  ; LDG.E.SYS R24, [R10]
  %".4101" = load i32, ptr %"R10"
  %"zext.382" = zext i32 %".4101" to i64
  %".4102" = load i32, ptr %"R11"
  %"zext.383" = zext i32 %".4102" to i64
  %"shl.202" = shl i64 %"zext.383", 32
  %"or.181" = or i64 %"shl.202", %"zext.382"
  %".4103" = inttoptr i64 %"or.181" to ptr
  %".4104" = ptrtoint ptr %".4103" to i64
  %".4105" = add i64 %".4104", 0
  %"for_LDG.160" = inttoptr i64 %".4105" to ptr
  %".4106" = load float, ptr %"for_LDG.160"
  %".4107" = bitcast ptr %"R24" to ptr
  store float %".4106", ptr %".4107"
  ; LDG.E.SYS R37, [R8]
  %".4110" = load i32, ptr %"R8"
  %"zext.384" = zext i32 %".4110" to i64
  %".4111" = load i32, ptr %"R9"
  %"zext.385" = zext i32 %".4111" to i64
  %"shl.203" = shl i64 %"zext.385", 32
  %"or.182" = or i64 %"shl.203", %"zext.384"
  %".4112" = inttoptr i64 %"or.182" to ptr
  %".4113" = ptrtoint ptr %".4112" to i64
  %".4114" = add i64 %".4113", 0
  %"for_LDG.161" = inttoptr i64 %".4114" to ptr
  %".4115" = load float, ptr %"for_LDG.161"
  %".4116" = bitcast ptr %"R37" to ptr
  store float %".4115", ptr %".4116"
  ; LDG.E.SYS R34, [R6]
  %".4119" = load i32, ptr %"R6"
  %"zext.386" = zext i32 %".4119" to i64
  %".4120" = load i32, ptr %"R7"
  %"zext.387" = zext i32 %".4120" to i64
  %"shl.204" = shl i64 %"zext.387", 32
  %"or.183" = or i64 %"shl.204", %"zext.386"
  %".4121" = inttoptr i64 %"or.183" to ptr
  %".4122" = ptrtoint ptr %".4121" to i64
  %".4123" = add i64 %".4122", 0
  %"for_LDG.162" = inttoptr i64 %".4123" to ptr
  %".4124" = load float, ptr %"for_LDG.162"
  %".4125" = bitcast ptr %"R34" to ptr
  store float %".4124", ptr %".4125"
  ; LDG.E.SYS R36, [R4+0x4]
  %".4128" = load i32, ptr %"R4"
  %"zext.388" = zext i32 %".4128" to i64
  %".4129" = load i32, ptr %"R5"
  %"zext.389" = zext i32 %".4129" to i64
  %"shl.205" = shl i64 %"zext.389", 32
  %"or.184" = or i64 %"shl.205", %"zext.388"
  %".4130" = inttoptr i64 %"or.184" to ptr
  %".4131" = ptrtoint ptr %".4130" to i64
  %".4132" = add i64 %".4131", 4
  %"for_LDG.163" = inttoptr i64 %".4132" to ptr
  %".4133" = load float, ptr %"for_LDG.163"
  %".4134" = bitcast ptr %"R36" to ptr
  store float %".4133", ptr %".4134"
  ; LDG.E.SYS R38, [R10+0x4]
  %".4137" = load i32, ptr %"R10"
  %"zext.390" = zext i32 %".4137" to i64
  %".4138" = load i32, ptr %"R11"
  %"zext.391" = zext i32 %".4138" to i64
  %"shl.206" = shl i64 %"zext.391", 32
  %"or.185" = or i64 %"shl.206", %"zext.390"
  %".4139" = inttoptr i64 %"or.185" to ptr
  %".4140" = ptrtoint ptr %".4139" to i64
  %".4141" = add i64 %".4140", 4
  %"for_LDG.164" = inttoptr i64 %".4141" to ptr
  %".4142" = load float, ptr %"for_LDG.164"
  %".4143" = bitcast ptr %"R38" to ptr
  store float %".4142", ptr %".4143"
  ; LDG.E.SYS R39, [R8+0x4]
  %".4146" = load i32, ptr %"R8"
  %"zext.392" = zext i32 %".4146" to i64
  %".4147" = load i32, ptr %"R9"
  %"zext.393" = zext i32 %".4147" to i64
  %"shl.207" = shl i64 %"zext.393", 32
  %"or.186" = or i64 %"shl.207", %"zext.392"
  %".4148" = inttoptr i64 %"or.186" to ptr
  %".4149" = ptrtoint ptr %".4148" to i64
  %".4150" = add i64 %".4149", 4
  %"for_LDG.165" = inttoptr i64 %".4150" to ptr
  %".4151" = load float, ptr %"for_LDG.165"
  %".4152" = bitcast ptr %"R39" to ptr
  store float %".4151", ptr %".4152"
  ; LDG.E.SYS R41, [R6+0x4]
  %".4155" = load i32, ptr %"R6"
  %"zext.394" = zext i32 %".4155" to i64
  %".4156" = load i32, ptr %"R7"
  %"zext.395" = zext i32 %".4156" to i64
  %"shl.208" = shl i64 %"zext.395", 32
  %"or.187" = or i64 %"shl.208", %"zext.394"
  %".4157" = inttoptr i64 %"or.187" to ptr
  %".4158" = ptrtoint ptr %".4157" to i64
  %".4159" = add i64 %".4158", 4
  %"for_LDG.166" = inttoptr i64 %".4159" to ptr
  %".4160" = load float, ptr %"for_LDG.166"
  %".4161" = bitcast ptr %"R41" to ptr
  store float %".4160", ptr %".4161"
  ; LDG.E.SYS R42, [R10+0x8]
  %".4164" = load i32, ptr %"R10"
  %"zext.396" = zext i32 %".4164" to i64
  %".4165" = load i32, ptr %"R11"
  %"zext.397" = zext i32 %".4165" to i64
  %"shl.209" = shl i64 %"zext.397", 32
  %"or.188" = or i64 %"shl.209", %"zext.396"
  %".4166" = inttoptr i64 %"or.188" to ptr
  %".4167" = ptrtoint ptr %".4166" to i64
  %".4168" = add i64 %".4167", 8
  %"for_LDG.167" = inttoptr i64 %".4168" to ptr
  %".4169" = load float, ptr %"for_LDG.167"
  %".4170" = bitcast ptr %"R42" to ptr
  store float %".4169", ptr %".4170"
  ; LDG.E.SYS R40, [R4+0x8]
  %".4173" = load i32, ptr %"R4"
  %"zext.398" = zext i32 %".4173" to i64
  %".4174" = load i32, ptr %"R5"
  %"zext.399" = zext i32 %".4174" to i64
  %"shl.210" = shl i64 %"zext.399", 32
  %"or.189" = or i64 %"shl.210", %"zext.398"
  %".4175" = inttoptr i64 %"or.189" to ptr
  %".4176" = ptrtoint ptr %".4175" to i64
  %".4177" = add i64 %".4176", 8
  %"for_LDG.168" = inttoptr i64 %".4177" to ptr
  %".4178" = load float, ptr %"for_LDG.168"
  %".4179" = bitcast ptr %"R40" to ptr
  store float %".4178", ptr %".4179"
  ; LDG.E.SYS R43, [R8+0x8]
  %".4182" = load i32, ptr %"R8"
  %"zext.400" = zext i32 %".4182" to i64
  %".4183" = load i32, ptr %"R9"
  %"zext.401" = zext i32 %".4183" to i64
  %"shl.211" = shl i64 %"zext.401", 32
  %"or.190" = or i64 %"shl.211", %"zext.400"
  %".4184" = inttoptr i64 %"or.190" to ptr
  %".4185" = ptrtoint ptr %".4184" to i64
  %".4186" = add i64 %".4185", 8
  %"for_LDG.169" = inttoptr i64 %".4186" to ptr
  %".4187" = load float, ptr %"for_LDG.169"
  %".4188" = bitcast ptr %"R43" to ptr
  store float %".4187", ptr %".4188"
  ; LDG.E.SYS R45, [R6+0x8]
  %".4191" = load i32, ptr %"R6"
  %"zext.402" = zext i32 %".4191" to i64
  %".4192" = load i32, ptr %"R7"
  %"zext.403" = zext i32 %".4192" to i64
  %"shl.212" = shl i64 %"zext.403", 32
  %"or.191" = or i64 %"shl.212", %"zext.402"
  %".4193" = inttoptr i64 %"or.191" to ptr
  %".4194" = ptrtoint ptr %".4193" to i64
  %".4195" = add i64 %".4194", 8
  %"for_LDG.170" = inttoptr i64 %".4195" to ptr
  %".4196" = load float, ptr %"for_LDG.170"
  %".4197" = bitcast ptr %"R45" to ptr
  store float %".4196", ptr %".4197"
  ; LDG.E.SYS R47, [R10+0xc]
  %".4200" = load i32, ptr %"R10"
  %"zext.404" = zext i32 %".4200" to i64
  %".4201" = load i32, ptr %"R11"
  %"zext.405" = zext i32 %".4201" to i64
  %"shl.213" = shl i64 %"zext.405", 32
  %"or.192" = or i64 %"shl.213", %"zext.404"
  %".4202" = inttoptr i64 %"or.192" to ptr
  %".4203" = ptrtoint ptr %".4202" to i64
  %".4204" = add i64 %".4203", 12
  %"for_LDG.171" = inttoptr i64 %".4204" to ptr
  %".4205" = load float, ptr %"for_LDG.171"
  %".4206" = bitcast ptr %"R47" to ptr
  store float %".4205", ptr %".4206"
  ; LDG.E.SYS R46, [R4+0xc]
  %".4209" = load i32, ptr %"R4"
  %"zext.406" = zext i32 %".4209" to i64
  %".4210" = load i32, ptr %"R5"
  %"zext.407" = zext i32 %".4210" to i64
  %"shl.214" = shl i64 %"zext.407", 32
  %"or.193" = or i64 %"shl.214", %"zext.406"
  %".4211" = inttoptr i64 %"or.193" to ptr
  %".4212" = ptrtoint ptr %".4211" to i64
  %".4213" = add i64 %".4212", 12
  %"for_LDG.172" = inttoptr i64 %".4213" to ptr
  %".4214" = load float, ptr %"for_LDG.172"
  %".4215" = bitcast ptr %"R46" to ptr
  store float %".4214", ptr %".4215"
  ; LDG.E.SYS R50, [R8+0xc]
  %".4218" = load i32, ptr %"R8"
  %"zext.408" = zext i32 %".4218" to i64
  %".4219" = load i32, ptr %"R9"
  %"zext.409" = zext i32 %".4219" to i64
  %"shl.215" = shl i64 %"zext.409", 32
  %"or.194" = or i64 %"shl.215", %"zext.408"
  %".4220" = inttoptr i64 %"or.194" to ptr
  %".4221" = ptrtoint ptr %".4220" to i64
  %".4222" = add i64 %".4221", 12
  %"for_LDG.173" = inttoptr i64 %".4222" to ptr
  %".4223" = load float, ptr %"for_LDG.173"
  %".4224" = bitcast ptr %"R50" to ptr
  store float %".4223", ptr %".4224"
  ; LDG.E.SYS R51, [R6+0xc]
  %".4227" = load i32, ptr %"R6"
  %"zext.410" = zext i32 %".4227" to i64
  %".4228" = load i32, ptr %"R7"
  %"zext.411" = zext i32 %".4228" to i64
  %"shl.216" = shl i64 %"zext.411", 32
  %"or.195" = or i64 %"shl.216", %"zext.410"
  %".4229" = inttoptr i64 %"or.195" to ptr
  %".4230" = ptrtoint ptr %".4229" to i64
  %".4231" = add i64 %".4230", 12
  %"for_LDG.174" = inttoptr i64 %".4231" to ptr
  %".4232" = load float, ptr %"for_LDG.174"
  %".4233" = bitcast ptr %"R51" to ptr
  store float %".4232", ptr %".4233"
  ; IADD3 R12, R12, -0x4, RZ
  %".4236" = load i32, ptr %"R12"
  %"add.192" = add i32 %".4236", -4
  %"add.193" = add i32 %"add.192", 0
  store i32 %"add.193", ptr %"R12"
  ; IADD3 R22, R22, 0x4, RZ
  %".4239" = load i32, ptr %"R22"
  %"add.194" = add i32 %".4239", 4
  %"add.195" = add i32 %"add.194", 0
  store i32 %"add.195", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".4242" = load i32, ptr %"R12"
  %".4243" = load i1, ptr %"PT"
  %"cmp.39" = icmp ne i32 %".4242", 0
  %".4244" = and i1 %"cmp.39", %".4243"
  store i1 %".4244", ptr %"P0"
  ; FFMA R35, R35, R24, R44
  %".4247" = load float, ptr %"R35"
  %".4248" = load float, ptr %"R24"
  %".4249" = load float, ptr %"R44"
  %"fmul.170" = fmul float %".4247", %".4248"
  %"fadd.151" = fadd float %"fmul.170", %".4249"
  %".4250" = bitcast ptr %"R35" to ptr
  store float %"fadd.151", ptr %".4250"
  ; FFMA R37, R24.reuse, R37, R56
  %".4253" = load float, ptr %"R24"
  %".4254" = load float, ptr %"R37"
  %".4255" = load float, ptr %"R56"
  %"fmul.171" = fmul float %".4253", %".4254"
  %"fadd.152" = fadd float %"fmul.171", %".4255"
  %".4256" = bitcast ptr %"R37" to ptr
  store float %"fadd.152", ptr %".4256"
  ; FFMA R34, R24, R34, R21
  %".4259" = load float, ptr %"R24"
  %".4260" = load float, ptr %"R34"
  %".4261" = load float, ptr %"R21"
  %"fmul.172" = fmul float %".4259", %".4260"
  %"fadd.153" = fadd float %"fmul.172", %".4261"
  %".4262" = bitcast ptr %"R34" to ptr
  store float %"fadd.153", ptr %".4262"
  ; FFMA R35, R36, R38, R35
  %".4265" = load float, ptr %"R36"
  %".4266" = load float, ptr %"R38"
  %".4267" = load float, ptr %"R35"
  %"fmul.173" = fmul float %".4265", %".4266"
  %"fadd.154" = fadd float %"fmul.173", %".4267"
  %".4268" = bitcast ptr %"R35" to ptr
  store float %"fadd.154", ptr %".4268"
  ; FFMA R37, R38, R39, R37
  %".4271" = load float, ptr %"R38"
  %".4272" = load float, ptr %"R39"
  %".4273" = load float, ptr %"R37"
  %"fmul.174" = fmul float %".4271", %".4272"
  %"fadd.155" = fadd float %"fmul.174", %".4273"
  %".4274" = bitcast ptr %"R37" to ptr
  store float %"fadd.155", ptr %".4274"
  ; FFMA R34, R38, R41, R34
  %".4277" = load float, ptr %"R38"
  %".4278" = load float, ptr %"R41"
  %".4279" = load float, ptr %"R34"
  %"fmul.175" = fmul float %".4277", %".4278"
  %"fadd.156" = fadd float %"fmul.175", %".4279"
  %".4280" = bitcast ptr %"R34" to ptr
  store float %"fadd.156", ptr %".4280"
  ; FFMA R35, R40, R42, R35
  %".4283" = load float, ptr %"R40"
  %".4284" = load float, ptr %"R42"
  %".4285" = load float, ptr %"R35"
  %"fmul.176" = fmul float %".4283", %".4284"
  %"fadd.157" = fadd float %"fmul.176", %".4285"
  %".4286" = bitcast ptr %"R35" to ptr
  store float %"fadd.157", ptr %".4286"
  ; FFMA R37, R42.reuse, R43, R37
  %".4289" = load float, ptr %"R42"
  %".4290" = load float, ptr %"R43"
  %".4291" = load float, ptr %"R37"
  %"fmul.177" = fmul float %".4289", %".4290"
  %"fadd.158" = fadd float %"fmul.177", %".4291"
  %".4292" = bitcast ptr %"R37" to ptr
  store float %"fadd.158", ptr %".4292"
  ; FFMA R34, R42, R45, R34
  %".4295" = load float, ptr %"R42"
  %".4296" = load float, ptr %"R45"
  %".4297" = load float, ptr %"R34"
  %"fmul.178" = fmul float %".4295", %".4296"
  %"fadd.159" = fadd float %"fmul.178", %".4297"
  %".4298" = bitcast ptr %"R34" to ptr
  store float %"fadd.159", ptr %".4298"
  ; FFMA R44, R46, R47, R35
  %".4301" = load float, ptr %"R46"
  %".4302" = load float, ptr %"R47"
  %".4303" = load float, ptr %"R35"
  %"fmul.179" = fmul float %".4301", %".4302"
  %"fadd.160" = fadd float %"fmul.179", %".4303"
  %".4304" = bitcast ptr %"R44" to ptr
  store float %"fadd.160", ptr %".4304"
  ; FFMA R56, R47, R50, R37
  %".4307" = load float, ptr %"R47"
  %".4308" = load float, ptr %"R50"
  %".4309" = load float, ptr %"R37"
  %"fmul.180" = fmul float %".4307", %".4308"
  %"fadd.161" = fadd float %"fmul.180", %".4309"
  %".4310" = bitcast ptr %"R56" to ptr
  store float %"fadd.161", ptr %".4310"
  ; FFMA R21, R47, R51, R34
  %".4313" = load float, ptr %"R47"
  %".4314" = load float, ptr %"R51"
  %".4315" = load float, ptr %"R34"
  %"fmul.181" = fmul float %".4313", %".4314"
  %"fadd.162" = fadd float %"fmul.181", %".4315"
  %".4316" = bitcast ptr %"R21" to ptr
  store float %"fadd.162", ptr %".4316"
  ; @P0 BRA `(.L_x_24)
  %".4319" = load i1, ptr %"P0"
  %".4320" = icmp ne i1 %".4319", 1
  br i1 %".4320", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".4323" = load i1, ptr %"P1"
  %".4324" = icmp eq i1 %".4323", 1
  br i1 %".4324", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  %".4329" = load i32, ptr %"R14"
  %".4330" = load i32, ptr %"R22"
  %"mul.57" = mul i32 %".4329", %"Arg_6"
  %"add.196" = add i32 %"mul.57", %".4330"
  store i32 %"add.196", ptr %"R7"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R10"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".4335" = load i32, ptr %"R13"
  %".4336" = load i32, ptr %"R22"
  %"mul.58" = mul i32 %".4335", %"Arg_6"
  %"add.197" = add i32 %"mul.58", %".4336"
  store i32 %"add.197", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".4341" = load i32, ptr %"R7"
  %".4342" = load i32, ptr %"R11"
  %"mul.59" = mul i32 %".4341", %".4342"
  %"add.198" = add i32 %"mul.59", %"Arg_4"
  store i32 %"add.198", ptr %"R4"
  ; LEA R10, R10, R7, 0x1
  %".4345" = load i32, ptr %"R10"
  %".4346" = load i32, ptr %"R7"
  %"shl.217" = shl i32 %".4345", 1
  %"add.199" = add i32 %"shl.217", %".4346"
  store i32 %"add.199", ptr %"R10"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".4349" = load i32, ptr %"R6"
  %".4350" = load i32, ptr %"R11"
  %"mul.60" = mul i32 %".4349", %".4350"
  %"add.200" = add i32 %"mul.60", %"Arg_2"
  store i32 %"add.200", ptr %"R6"
  ; LEA R8, P0, R9, R4, 0x2
  %".4353" = load i1, ptr %"P0"
  %".4354" = sub i1 0, %".4353"
  %".4355" = load i32, ptr %"R9"
  %".4356" = load i32, ptr %"R4"
  %".4357" = sext i1 %".4354" to i32
  %"shl.218" = shl i32 %".4357", %".4356"
  %"add.201" = add i32 %"shl.218", %".4355"
  store i32 %"add.201", ptr %"R8"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".4360" = load i32, ptr %"R10"
  %".4361" = load i32, ptr %"R11"
  %"mul.61" = mul i32 %".4360", %".4361"
  %"add.202" = add i32 %"mul.61", %"Arg_4"
  store i32 %"add.202", ptr %"R10"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".4364" = load i32, ptr %"R9"
  %".4365" = load i32, ptr %"R5"
  %".4366" = load i32, ptr %"R16"
  %"shl.219" = shl i32 %".4364", %".4366"
  %"add.203" = add i32 %"shl.219", %".4365"
  store i32 %"add.203", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".4369" = load i32, ptr %"R4"
  %"zext.412" = zext i32 %".4369" to i64
  %".4370" = load i32, ptr %"R5"
  %"zext.413" = zext i32 %".4370" to i64
  %"shl.220" = shl i64 %"zext.413", 32
  %"or.196" = or i64 %"shl.220", %"zext.412"
  %".4371" = inttoptr i64 %"or.196" to ptr
  %".4372" = ptrtoint ptr %".4371" to i64
  %".4373" = add i64 %".4372", 0
  %"for_LDG.175" = inttoptr i64 %".4373" to ptr
  %".4374" = load float, ptr %"for_LDG.175"
  %".4375" = bitcast ptr %"R13" to ptr
  store float %".4374", ptr %".4375"
  ; LDG.E.SYS R12, [R6]
  %".4378" = load i32, ptr %"R6"
  %"zext.414" = zext i32 %".4378" to i64
  %".4379" = load i32, ptr %"R7"
  %"zext.415" = zext i32 %".4379" to i64
  %"shl.221" = shl i64 %"zext.415", 32
  %"or.197" = or i64 %"shl.221", %"zext.414"
  %".4380" = inttoptr i64 %"or.197" to ptr
  %".4381" = ptrtoint ptr %".4380" to i64
  %".4382" = add i64 %".4381", 0
  %"for_LDG.176" = inttoptr i64 %".4382" to ptr
  %".4383" = load float, ptr %"for_LDG.176"
  %".4384" = bitcast ptr %"R12" to ptr
  store float %".4383", ptr %".4384"
  ; LDG.E.SYS R23, [R8]
  %".4387" = load i32, ptr %"R8"
  %"zext.416" = zext i32 %".4387" to i64
  %".4388" = load i32, ptr %"R9"
  %"zext.417" = zext i32 %".4388" to i64
  %"shl.222" = shl i64 %"zext.417", 32
  %"or.198" = or i64 %"shl.222", %"zext.416"
  %".4389" = inttoptr i64 %"or.198" to ptr
  %".4390" = ptrtoint ptr %".4389" to i64
  %".4391" = add i64 %".4390", 0
  %"for_LDG.177" = inttoptr i64 %".4391" to ptr
  %".4392" = load float, ptr %"for_LDG.177"
  %".4393" = bitcast ptr %"R23" to ptr
  store float %".4392", ptr %".4393"
  ; LDG.E.SYS R22, [R10]
  %".4396" = load i32, ptr %"R10"
  %"zext.418" = zext i32 %".4396" to i64
  %".4397" = load i32, ptr %"R11"
  %"zext.419" = zext i32 %".4397" to i64
  %"shl.223" = shl i64 %"zext.419", 32
  %"or.199" = or i64 %"shl.223", %"zext.418"
  %".4398" = inttoptr i64 %"or.199" to ptr
  %".4399" = ptrtoint ptr %".4398" to i64
  %".4400" = add i64 %".4399", 0
  %"for_LDG.178" = inttoptr i64 %".4400" to ptr
  %".4401" = load float, ptr %"for_LDG.178"
  %".4402" = bitcast ptr %"R22" to ptr
  store float %".4401", ptr %".4402"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".4405" = load i32, ptr %"R15"
  %".4406" = load i1, ptr %"PT"
  %"cmp.40" = icmp ne i32 %".4405", 1
  %".4407" = and i1 %"cmp.40", %".4406"
  store i1 %".4407", ptr %"P0"
  ; FFMA R44, R13, R12, R44
  %".4410" = load float, ptr %"R13"
  %".4411" = load float, ptr %"R12"
  %".4412" = load float, ptr %"R44"
  %"fmul.182" = fmul float %".4410", %".4411"
  %"fadd.163" = fadd float %"fmul.182", %".4412"
  %".4413" = bitcast ptr %"R44" to ptr
  store float %"fadd.163", ptr %".4413"
  ; FFMA R56, R12.reuse, R23, R56
  %".4416" = load float, ptr %"R12"
  %".4417" = load float, ptr %"R23"
  %".4418" = load float, ptr %"R56"
  %"fmul.183" = fmul float %".4416", %".4417"
  %"fadd.164" = fadd float %"fmul.183", %".4418"
  %".4419" = bitcast ptr %"R56" to ptr
  store float %"fadd.164", ptr %".4419"
  ; FFMA R21, R12, R22, R21
  %".4422" = load float, ptr %"R12"
  %".4423" = load float, ptr %"R22"
  %".4424" = load float, ptr %"R21"
  %"fmul.184" = fmul float %".4422", %".4423"
  %"fadd.165" = fadd float %"fmul.184", %".4424"
  %".4425" = bitcast ptr %"R21" to ptr
  store float %"fadd.165", ptr %".4425"
  ; @!P0 BRA `(.L_x_25)
  %".4428" = load i1, ptr %"P0"
  %".4429" = icmp eq i1 %".4428", 1
  br i1 %".4429", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".4432" = load i32, ptr %"R15"
  %".4433" = load i1, ptr %"PT"
  %"cmp.41" = icmp ne i32 %".4432", 2
  %".4434" = and i1 %"cmp.41", %".4433"
  store i1 %".4434", ptr %"P0"
  ; LDG.E.SYS R13, [R4+0x4]
  %".4437" = load i32, ptr %"R4"
  %"zext.420" = zext i32 %".4437" to i64
  %".4438" = load i32, ptr %"R5"
  %"zext.421" = zext i32 %".4438" to i64
  %"shl.224" = shl i64 %"zext.421", 32
  %"or.200" = or i64 %"shl.224", %"zext.420"
  %".4439" = inttoptr i64 %"or.200" to ptr
  %".4440" = ptrtoint ptr %".4439" to i64
  %".4441" = add i64 %".4440", 4
  %"for_LDG.179" = inttoptr i64 %".4441" to ptr
  %".4442" = load float, ptr %"for_LDG.179"
  %".4443" = bitcast ptr %"R13" to ptr
  store float %".4442", ptr %".4443"
  ; LDG.E.SYS R12, [R6+0x4]
  %".4446" = load i32, ptr %"R6"
  %"zext.422" = zext i32 %".4446" to i64
  %".4447" = load i32, ptr %"R7"
  %"zext.423" = zext i32 %".4447" to i64
  %"shl.225" = shl i64 %"zext.423", 32
  %"or.201" = or i64 %"shl.225", %"zext.422"
  %".4448" = inttoptr i64 %"or.201" to ptr
  %".4449" = ptrtoint ptr %".4448" to i64
  %".4450" = add i64 %".4449", 4
  %"for_LDG.180" = inttoptr i64 %".4450" to ptr
  %".4451" = load float, ptr %"for_LDG.180"
  %".4452" = bitcast ptr %"R12" to ptr
  store float %".4451", ptr %".4452"
  ; LDG.E.SYS R23, [R8+0x4]
  %".4455" = load i32, ptr %"R8"
  %"zext.424" = zext i32 %".4455" to i64
  %".4456" = load i32, ptr %"R9"
  %"zext.425" = zext i32 %".4456" to i64
  %"shl.226" = shl i64 %"zext.425", 32
  %"or.202" = or i64 %"shl.226", %"zext.424"
  %".4457" = inttoptr i64 %"or.202" to ptr
  %".4458" = ptrtoint ptr %".4457" to i64
  %".4459" = add i64 %".4458", 4
  %"for_LDG.181" = inttoptr i64 %".4459" to ptr
  %".4460" = load float, ptr %"for_LDG.181"
  %".4461" = bitcast ptr %"R23" to ptr
  store float %".4460", ptr %".4461"
  ; LDG.E.SYS R22, [R10+0x4]
  %".4464" = load i32, ptr %"R10"
  %"zext.426" = zext i32 %".4464" to i64
  %".4465" = load i32, ptr %"R11"
  %"zext.427" = zext i32 %".4465" to i64
  %"shl.227" = shl i64 %"zext.427", 32
  %"or.203" = or i64 %"shl.227", %"zext.426"
  %".4466" = inttoptr i64 %"or.203" to ptr
  %".4467" = ptrtoint ptr %".4466" to i64
  %".4468" = add i64 %".4467", 4
  %"for_LDG.182" = inttoptr i64 %".4468" to ptr
  %".4469" = load float, ptr %"for_LDG.182"
  %".4470" = bitcast ptr %"R22" to ptr
  store float %".4469", ptr %".4470"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".4473" = load i1, ptr %"P0"
  %".4474" = icmp ne i1 %".4473", 1
  br i1 %".4474", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  %".4477" = load i32, ptr %"R4"
  %"zext.428" = zext i32 %".4477" to i64
  %".4478" = load i32, ptr %"R5"
  %"zext.429" = zext i32 %".4478" to i64
  %"shl.228" = shl i64 %"zext.429", 32
  %"or.204" = or i64 %"shl.228", %"zext.428"
  %".4479" = inttoptr i64 %"or.204" to ptr
  %".4480" = ptrtoint ptr %".4479" to i64
  %".4481" = add i64 %".4480", 8
  %"for_LDG.183" = inttoptr i64 %".4481" to ptr
  %".4482" = load float, ptr %"for_LDG.183"
  %".4483" = bitcast ptr %"R25" to ptr
  store float %".4482", ptr %".4483"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".4488" = load i1, ptr %"P0"
  %".4489" = icmp ne i1 %".4488", 1
  br i1 %".4489", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  %".4492" = load i32, ptr %"R6"
  %"zext.430" = zext i32 %".4492" to i64
  %".4493" = load i32, ptr %"R7"
  %"zext.431" = zext i32 %".4493" to i64
  %"shl.229" = shl i64 %"zext.431", 32
  %"or.205" = or i64 %"shl.229", %"zext.430"
  %".4494" = inttoptr i64 %"or.205" to ptr
  %".4495" = ptrtoint ptr %".4494" to i64
  %".4496" = add i64 %".4495", 8
  %"for_LDG.184" = inttoptr i64 %".4496" to ptr
  %".4497" = load float, ptr %"for_LDG.184"
  %".4498" = bitcast ptr %"R24" to ptr
  store float %".4497", ptr %".4498"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".4503" = load i1, ptr %"P0"
  %".4504" = icmp ne i1 %".4503", 1
  br i1 %".4504", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  %".4507" = load i32, ptr %"R8"
  %"zext.432" = zext i32 %".4507" to i64
  %".4508" = load i32, ptr %"R9"
  %"zext.433" = zext i32 %".4508" to i64
  %"shl.230" = shl i64 %"zext.433", 32
  %"or.206" = or i64 %"shl.230", %"zext.432"
  %".4509" = inttoptr i64 %"or.206" to ptr
  %".4510" = ptrtoint ptr %".4509" to i64
  %".4511" = add i64 %".4510", 8
  %"for_LDG.185" = inttoptr i64 %".4511" to ptr
  %".4512" = load float, ptr %"for_LDG.185"
  %".4513" = bitcast ptr %"R35" to ptr
  store float %".4512", ptr %".4513"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".4518" = load i1, ptr %"P0"
  %".4519" = icmp ne i1 %".4518", 1
  br i1 %".4519", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  %".4522" = load i32, ptr %"R10"
  %"zext.434" = zext i32 %".4522" to i64
  %".4523" = load i32, ptr %"R11"
  %"zext.435" = zext i32 %".4523" to i64
  %"shl.231" = shl i64 %"zext.435", 32
  %"or.207" = or i64 %"shl.231", %"zext.434"
  %".4524" = inttoptr i64 %"or.207" to ptr
  %".4525" = ptrtoint ptr %".4524" to i64
  %".4526" = add i64 %".4525", 8
  %"for_LDG.186" = inttoptr i64 %".4526" to ptr
  %".4527" = load float, ptr %"for_LDG.186"
  %".4528" = bitcast ptr %"R34" to ptr
  store float %".4527", ptr %".4528"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".4533" = load float, ptr %"R13"
  %".4534" = load float, ptr %"R12"
  %".4535" = load float, ptr %"R44"
  %"fmul.185" = fmul float %".4533", %".4534"
  %"fadd.166" = fadd float %"fmul.185", %".4535"
  %".4536" = bitcast ptr %"R44" to ptr
  store float %"fadd.166", ptr %".4536"
  ; FFMA R56, R12.reuse, R23, R56
  %".4539" = load float, ptr %"R12"
  %".4540" = load float, ptr %"R23"
  %".4541" = load float, ptr %"R56"
  %"fmul.186" = fmul float %".4539", %".4540"
  %"fadd.167" = fadd float %"fmul.186", %".4541"
  %".4542" = bitcast ptr %"R56" to ptr
  store float %"fadd.167", ptr %".4542"
  ; FFMA R21, R12, R22, R21
  %".4545" = load float, ptr %"R12"
  %".4546" = load float, ptr %"R22"
  %".4547" = load float, ptr %"R21"
  %"fmul.187" = fmul float %".4545", %".4546"
  %"fadd.168" = fadd float %"fmul.187", %".4547"
  %".4548" = bitcast ptr %"R21" to ptr
  store float %"fadd.168", ptr %".4548"
  ; @P0 FFMA R44, R25, R24, R44
  %".4551" = load i1, ptr %"P0"
  %".4552" = icmp ne i1 %".4551", 1
  br i1 %".4552", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".4555" = load float, ptr %"R25"
  %".4556" = load float, ptr %"R24"
  %".4557" = load float, ptr %"R44"
  %"fmul.188" = fmul float %".4555", %".4556"
  %"fadd.169" = fadd float %"fmul.188", %".4557"
  %".4558" = bitcast ptr %"R44" to ptr
  store float %"fadd.169", ptr %".4558"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".4563" = load i1, ptr %"P0"
  %".4564" = icmp ne i1 %".4563", 1
  br i1 %".4564", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".4567" = load float, ptr %"R24"
  %".4568" = load float, ptr %"R35"
  %".4569" = load float, ptr %"R56"
  %"fmul.189" = fmul float %".4567", %".4568"
  %"fadd.170" = fadd float %"fmul.189", %".4569"
  %".4570" = bitcast ptr %"R56" to ptr
  store float %"fadd.170", ptr %".4570"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".4575" = load i1, ptr %"P0"
  %".4576" = icmp ne i1 %".4575", 1
  br i1 %".4576", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".4579" = load float, ptr %"R24"
  %".4580" = load float, ptr %"R34"
  %".4581" = load float, ptr %"R21"
  %"fmul.190" = fmul float %".4579", %".4580"
  %"fadd.171" = fadd float %"fmul.190", %".4581"
  %".4582" = bitcast ptr %"R21" to ptr
  store float %"fadd.171", ptr %".4582"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".4587" = load i1, ptr %"P4"
  %".4588" = icmp eq i1 %".4587", 1
  br i1 %".4588", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".4591" = load i32, ptr %"R18"
  %".4592" = load i1, ptr %"PT"
  %"cmp.42" = icmp sge i32 %".4591", 3
  %".4593" = and i1 %"cmp.42", %".4592"
  store i1 %".4593", ptr %"P0"
  ; MOV R23, RZ
  %".4596" = load i32, ptr %"RZ"
  store i32 %".4596", ptr %"R23"
  ; @!P0 BRA `(.L_x_27)
  %".4599" = load i1, ptr %"P0"
  %".4600" = icmp eq i1 %".4599", 1
  br i1 %".4600", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".4603" = load i32, ptr %"R20"
  %".4604" = load i1, ptr %"PT"
  %"cmp.43" = icmp sgt i32 %".4603", 0
  %".4605" = and i1 %"cmp.43", %".4604"
  store i1 %".4605", ptr %"P0"
  ; MOV R23, RZ
  %".4608" = load i32, ptr %"RZ"
  store i32 %".4608", ptr %"R23"
  ; MOV R22, R20
  %".4611" = load i32, ptr %"R20"
  store i32 %".4611", ptr %"R22"
  ; @!P0 BRA `(.L_x_28)
  %".4614" = load i1, ptr %"P0"
  %".4615" = icmp eq i1 %".4614", 1
  br i1 %".4615", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".4618" = load i32, ptr %"R22"
  %".4619" = load i1, ptr %"PT"
  %"cmp.44" = icmp sgt i32 %".4618", 12
  %".4620" = and i1 %"cmp.44", %".4619"
  store i1 %".4620", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".4623" = and i1 1, 1
  %".4624" = or i1 %".4623", 1
  ; @!P1 BRA `(.L_x_29)
  %".4626" = load i1, ptr %"P1"
  %".4627" = icmp eq i1 %".4626", 1
  br i1 %".4627", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4630" = xor i1 1, 1
  %".4631" = and i1 %".4630", 1
  %".4632" = and i1 %".4631", 1
  br label %".L_x_30"
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".4635" = load i32, ptr %"R0"
  %".4636" = load i32, ptr %"R23"
  %"add.204" = add i32 %".4635", %".4636"
  %"add.205" = add i32 %"add.204", 0
  store i32 %"add.205", ptr %"R25"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".4641" = load i32, ptr %"R2"
  %".4642" = load i32, ptr %"R25"
  %"mul.62" = mul i32 %".4641", 3
  %"add.206" = add i32 %"mul.62", %".4642"
  store i32 %"add.206", ptr %"R35"
  ; LEA R25, R2, R25, 0x2
  %".4645" = load i32, ptr %"R2"
  %".4646" = load i32, ptr %"R25"
  %"shl.232" = shl i32 %".4645", 2
  %"add.207" = add i32 %"shl.232", %".4646"
  store i32 %"add.207", ptr %"R25"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".4649" = load i32, ptr %"R23"
  %".4650" = load i32, ptr %"R24"
  %"mul.63" = mul i32 %".4649", %".4650"
  %"add.208" = add i32 %"mul.63", %"Arg_3"
  store i32 %"add.208", ptr %"R36"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".4653" = load i32, ptr %"R35"
  %".4654" = load i32, ptr %"R24"
  %"mul.64" = mul i32 %".4653", %".4654"
  %"add.209" = add i32 %"mul.64", %"Arg_4"
  store i32 %"add.209", ptr %"R8"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".4657" = load i32, ptr %"R25"
  %".4658" = load i32, ptr %"R24"
  %"mul.65" = mul i32 %".4657", %".4658"
  %"add.210" = add i32 %"mul.65", %"Arg_4"
  store i32 %"add.210", ptr %"R12"
  ; LDG.E.SYS R39, [R36]
  %".4661" = load i32, ptr %"R36"
  %"zext.436" = zext i32 %".4661" to i64
  %".4662" = load i32, ptr %"R37"
  %"zext.437" = zext i32 %".4662" to i64
  %"shl.233" = shl i64 %"zext.437", 32
  %"or.208" = or i64 %"shl.233", %"zext.436"
  %".4663" = inttoptr i64 %"or.208" to ptr
  %".4664" = ptrtoint ptr %".4663" to i64
  %".4665" = add i64 %".4664", 0
  %"for_LDG.187" = inttoptr i64 %".4665" to ptr
  %".4666" = load float, ptr %"for_LDG.187"
  %".4667" = bitcast ptr %"R39" to ptr
  store float %".4666", ptr %".4667"
  ; LDG.E.SYS R41, [R8]
  %".4670" = load i32, ptr %"R8"
  %"zext.438" = zext i32 %".4670" to i64
  %".4671" = load i32, ptr %"R9"
  %"zext.439" = zext i32 %".4671" to i64
  %"shl.234" = shl i64 %"zext.439", 32
  %"or.209" = or i64 %"shl.234", %"zext.438"
  %".4672" = inttoptr i64 %"or.209" to ptr
  %".4673" = ptrtoint ptr %".4672" to i64
  %".4674" = add i64 %".4673", 0
  %"for_LDG.188" = inttoptr i64 %".4674" to ptr
  %".4675" = load float, ptr %"for_LDG.188"
  %".4676" = bitcast ptr %"R41" to ptr
  store float %".4675", ptr %".4676"
  ; LDG.E.SYS R40, [R12]
  %".4679" = load i32, ptr %"R12"
  %"zext.440" = zext i32 %".4679" to i64
  %".4680" = load i32, ptr %"R13"
  %"zext.441" = zext i32 %".4680" to i64
  %"shl.235" = shl i64 %"zext.441", 32
  %"or.210" = or i64 %"shl.235", %"zext.440"
  %".4681" = inttoptr i64 %"or.210" to ptr
  %".4682" = ptrtoint ptr %".4681" to i64
  %".4683" = add i64 %".4682", 0
  %"for_LDG.189" = inttoptr i64 %".4683" to ptr
  %".4684" = load float, ptr %"for_LDG.189"
  %".4685" = bitcast ptr %"R40" to ptr
  store float %".4684", ptr %".4685"
  ; LDG.E.SYS R52, [R36+0x4]
  %".4688" = load i32, ptr %"R36"
  %"zext.442" = zext i32 %".4688" to i64
  %".4689" = load i32, ptr %"R37"
  %"zext.443" = zext i32 %".4689" to i64
  %"shl.236" = shl i64 %"zext.443", 32
  %"or.211" = or i64 %"shl.236", %"zext.442"
  %".4690" = inttoptr i64 %"or.211" to ptr
  %".4691" = ptrtoint ptr %".4690" to i64
  %".4692" = add i64 %".4691", 4
  %"for_LDG.190" = inttoptr i64 %".4692" to ptr
  %".4693" = load float, ptr %"for_LDG.190"
  %".4694" = bitcast ptr %"R52" to ptr
  store float %".4693", ptr %".4694"
  ; LDG.E.SYS R53, [R8+0x4]
  %".4697" = load i32, ptr %"R8"
  %"zext.444" = zext i32 %".4697" to i64
  %".4698" = load i32, ptr %"R9"
  %"zext.445" = zext i32 %".4698" to i64
  %"shl.237" = shl i64 %"zext.445", 32
  %"or.212" = or i64 %"shl.237", %"zext.444"
  %".4699" = inttoptr i64 %"or.212" to ptr
  %".4700" = ptrtoint ptr %".4699" to i64
  %".4701" = add i64 %".4700", 4
  %"for_LDG.191" = inttoptr i64 %".4701" to ptr
  %".4702" = load float, ptr %"for_LDG.191"
  %".4703" = bitcast ptr %"R53" to ptr
  store float %".4702", ptr %".4703"
  ; LDG.E.SYS R55, [R12+0x4]
  %".4706" = load i32, ptr %"R12"
  %"zext.446" = zext i32 %".4706" to i64
  %".4707" = load i32, ptr %"R13"
  %"zext.447" = zext i32 %".4707" to i64
  %"shl.238" = shl i64 %"zext.447", 32
  %"or.213" = or i64 %"shl.238", %"zext.446"
  %".4708" = inttoptr i64 %"or.213" to ptr
  %".4709" = ptrtoint ptr %".4708" to i64
  %".4710" = add i64 %".4709", 4
  %"for_LDG.192" = inttoptr i64 %".4710" to ptr
  %".4711" = load float, ptr %"for_LDG.192"
  %".4712" = bitcast ptr %"R55" to ptr
  store float %".4711", ptr %".4712"
  ; IADD3 R11, R23, 0x4, RZ
  %".4715" = load i32, ptr %"R23"
  %"add.211" = add i32 %".4715", 4
  %"add.212" = add i32 %"add.211", 0
  store i32 %"add.212", ptr %"R11"
  ; LDG.E.SYS R50, [R36+0x8]
  %".4718" = load i32, ptr %"R36"
  %"zext.448" = zext i32 %".4718" to i64
  %".4719" = load i32, ptr %"R37"
  %"zext.449" = zext i32 %".4719" to i64
  %"shl.239" = shl i64 %"zext.449", 32
  %"or.214" = or i64 %"shl.239", %"zext.448"
  %".4720" = inttoptr i64 %"or.214" to ptr
  %".4721" = ptrtoint ptr %".4720" to i64
  %".4722" = add i64 %".4721", 8
  %"for_LDG.193" = inttoptr i64 %".4722" to ptr
  %".4723" = load float, ptr %"for_LDG.193"
  %".4724" = bitcast ptr %"R50" to ptr
  store float %".4723", ptr %".4724"
  ; IADD3 R7, R35, 0x4, RZ
  %".4727" = load i32, ptr %"R35"
  %"add.213" = add i32 %".4727", 4
  %"add.214" = add i32 %"add.213", 0
  store i32 %"add.214", ptr %"R7"
  ; LDG.E.SYS R43, [R8+0x8]
  %".4730" = load i32, ptr %"R8"
  %"zext.450" = zext i32 %".4730" to i64
  %".4731" = load i32, ptr %"R9"
  %"zext.451" = zext i32 %".4731" to i64
  %"shl.240" = shl i64 %"zext.451", 32
  %"or.215" = or i64 %"shl.240", %"zext.450"
  %".4732" = inttoptr i64 %"or.215" to ptr
  %".4733" = ptrtoint ptr %".4732" to i64
  %".4734" = add i64 %".4733", 8
  %"for_LDG.194" = inttoptr i64 %".4734" to ptr
  %".4735" = load float, ptr %"for_LDG.194"
  %".4736" = bitcast ptr %"R43" to ptr
  store float %".4735", ptr %".4736"
  ; IADD3 R5, R25, 0x4, RZ
  %".4739" = load i32, ptr %"R25"
  %"add.215" = add i32 %".4739", 4
  %"add.216" = add i32 %"add.215", 0
  store i32 %"add.216", ptr %"R5"
  ; LDG.E.SYS R51, [R12+0x8]
  %".4742" = load i32, ptr %"R12"
  %"zext.452" = zext i32 %".4742" to i64
  %".4743" = load i32, ptr %"R13"
  %"zext.453" = zext i32 %".4743" to i64
  %"shl.241" = shl i64 %"zext.453", 32
  %"or.216" = or i64 %"shl.241", %"zext.452"
  %".4744" = inttoptr i64 %"or.216" to ptr
  %".4745" = ptrtoint ptr %".4744" to i64
  %".4746" = add i64 %".4745", 8
  %"for_LDG.195" = inttoptr i64 %".4746" to ptr
  %".4747" = load float, ptr %"for_LDG.195"
  %".4748" = bitcast ptr %"R51" to ptr
  store float %".4747", ptr %".4748"
  ; LDG.E.SYS R47, [R36+0xc]
  %".4751" = load i32, ptr %"R36"
  %"zext.454" = zext i32 %".4751" to i64
  %".4752" = load i32, ptr %"R37"
  %"zext.455" = zext i32 %".4752" to i64
  %"shl.242" = shl i64 %"zext.455", 32
  %"or.217" = or i64 %"shl.242", %"zext.454"
  %".4753" = inttoptr i64 %"or.217" to ptr
  %".4754" = ptrtoint ptr %".4753" to i64
  %".4755" = add i64 %".4754", 12
  %"for_LDG.196" = inttoptr i64 %".4755" to ptr
  %".4756" = load float, ptr %"for_LDG.196"
  %".4757" = bitcast ptr %"R47" to ptr
  store float %".4756", ptr %".4757"
  ; LDG.E.SYS R54, [R8+0xc]
  %".4760" = load i32, ptr %"R8"
  %"zext.456" = zext i32 %".4760" to i64
  %".4761" = load i32, ptr %"R9"
  %"zext.457" = zext i32 %".4761" to i64
  %"shl.243" = shl i64 %"zext.457", 32
  %"or.218" = or i64 %"shl.243", %"zext.456"
  %".4762" = inttoptr i64 %"or.218" to ptr
  %".4763" = ptrtoint ptr %".4762" to i64
  %".4764" = add i64 %".4763", 12
  %"for_LDG.197" = inttoptr i64 %".4764" to ptr
  %".4765" = load float, ptr %"for_LDG.197"
  %".4766" = bitcast ptr %"R54" to ptr
  store float %".4765", ptr %".4766"
  ; LDG.E.SYS R58, [R12+0xc]
  %".4769" = load i32, ptr %"R12"
  %"zext.458" = zext i32 %".4769" to i64
  %".4770" = load i32, ptr %"R13"
  %"zext.459" = zext i32 %".4770" to i64
  %"shl.244" = shl i64 %"zext.459", 32
  %"or.219" = or i64 %"shl.244", %"zext.458"
  %".4771" = inttoptr i64 %"or.219" to ptr
  %".4772" = ptrtoint ptr %".4771" to i64
  %".4773" = add i64 %".4772", 12
  %"for_LDG.198" = inttoptr i64 %".4773" to ptr
  %".4774" = load float, ptr %"for_LDG.198"
  %".4775" = bitcast ptr %"R58" to ptr
  store float %".4774", ptr %".4775"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".4778" = load i32, ptr %"R11"
  %".4779" = load i32, ptr %"R24"
  %"mul.66" = mul i32 %".4778", %".4779"
  %"add.217" = add i32 %"mul.66", %"Arg_3"
  store i32 %"add.217", ptr %"R10"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".4782" = load i32, ptr %"R7"
  %".4783" = load i32, ptr %"R24"
  %"mul.67" = mul i32 %".4782", %".4783"
  %"add.218" = add i32 %"mul.67", %"Arg_4"
  store i32 %"add.218", ptr %"R6"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".4786" = load i32, ptr %"R5"
  %".4787" = load i32, ptr %"R24"
  %"mul.68" = mul i32 %".4786", %".4787"
  %"add.219" = add i32 %"mul.68", %"Arg_4"
  store i32 %"add.219", ptr %"R4"
  ; LDG.E.SYS R46, [R10]
  %".4790" = load i32, ptr %"R10"
  %"zext.460" = zext i32 %".4790" to i64
  %".4791" = load i32, ptr %"R11"
  %"zext.461" = zext i32 %".4791" to i64
  %"shl.245" = shl i64 %"zext.461", 32
  %"or.220" = or i64 %"shl.245", %"zext.460"
  %".4792" = inttoptr i64 %"or.220" to ptr
  %".4793" = ptrtoint ptr %".4792" to i64
  %".4794" = add i64 %".4793", 0
  %"for_LDG.199" = inttoptr i64 %".4794" to ptr
  %".4795" = load float, ptr %"for_LDG.199"
  %".4796" = bitcast ptr %"R46" to ptr
  store float %".4795", ptr %".4796"
  ; LDG.E.SYS R42, [R6]
  %".4799" = load i32, ptr %"R6"
  %"zext.462" = zext i32 %".4799" to i64
  %".4800" = load i32, ptr %"R7"
  %"zext.463" = zext i32 %".4800" to i64
  %"shl.246" = shl i64 %"zext.463", 32
  %"or.221" = or i64 %"shl.246", %"zext.462"
  %".4801" = inttoptr i64 %"or.221" to ptr
  %".4802" = ptrtoint ptr %".4801" to i64
  %".4803" = add i64 %".4802", 0
  %"for_LDG.200" = inttoptr i64 %".4803" to ptr
  %".4804" = load float, ptr %"for_LDG.200"
  %".4805" = bitcast ptr %"R42" to ptr
  store float %".4804", ptr %".4805"
  ; LDG.E.SYS R45, [R4]
  %".4808" = load i32, ptr %"R4"
  %"zext.464" = zext i32 %".4808" to i64
  %".4809" = load i32, ptr %"R5"
  %"zext.465" = zext i32 %".4809" to i64
  %"shl.247" = shl i64 %"zext.465", 32
  %"or.222" = or i64 %"shl.247", %"zext.464"
  %".4810" = inttoptr i64 %"or.222" to ptr
  %".4811" = ptrtoint ptr %".4810" to i64
  %".4812" = add i64 %".4811", 0
  %"for_LDG.201" = inttoptr i64 %".4812" to ptr
  %".4813" = load float, ptr %"for_LDG.201"
  %".4814" = bitcast ptr %"R45" to ptr
  store float %".4813", ptr %".4814"
  ; LDG.E.SYS R34, [R10+0x4]
  %".4817" = load i32, ptr %"R10"
  %"zext.466" = zext i32 %".4817" to i64
  %".4818" = load i32, ptr %"R11"
  %"zext.467" = zext i32 %".4818" to i64
  %"shl.248" = shl i64 %"zext.467", 32
  %"or.223" = or i64 %"shl.248", %"zext.466"
  %".4819" = inttoptr i64 %"or.223" to ptr
  %".4820" = ptrtoint ptr %".4819" to i64
  %".4821" = add i64 %".4820", 4
  %"for_LDG.202" = inttoptr i64 %".4821" to ptr
  %".4822" = load float, ptr %"for_LDG.202"
  %".4823" = bitcast ptr %"R34" to ptr
  store float %".4822", ptr %".4823"
  ; LDG.E.SYS R37, [R6+0x4]
  %".4826" = load i32, ptr %"R6"
  %"zext.468" = zext i32 %".4826" to i64
  %".4827" = load i32, ptr %"R7"
  %"zext.469" = zext i32 %".4827" to i64
  %"shl.249" = shl i64 %"zext.469", 32
  %"or.224" = or i64 %"shl.249", %"zext.468"
  %".4828" = inttoptr i64 %"or.224" to ptr
  %".4829" = ptrtoint ptr %".4828" to i64
  %".4830" = add i64 %".4829", 4
  %"for_LDG.203" = inttoptr i64 %".4830" to ptr
  %".4831" = load float, ptr %"for_LDG.203"
  %".4832" = bitcast ptr %"R37" to ptr
  store float %".4831", ptr %".4832"
  ; IADD3 R9, R23, 0x8, RZ
  %".4835" = load i32, ptr %"R23"
  %"add.220" = add i32 %".4835", 8
  %"add.221" = add i32 %"add.220", 0
  store i32 %"add.221", ptr %"R9"
  ; LDG.E.SYS R36, [R10+0x8]
  %".4838" = load i32, ptr %"R10"
  %"zext.470" = zext i32 %".4838" to i64
  %".4839" = load i32, ptr %"R11"
  %"zext.471" = zext i32 %".4839" to i64
  %"shl.250" = shl i64 %"zext.471", 32
  %"or.225" = or i64 %"shl.250", %"zext.470"
  %".4840" = inttoptr i64 %"or.225" to ptr
  %".4841" = ptrtoint ptr %".4840" to i64
  %".4842" = add i64 %".4841", 8
  %"for_LDG.204" = inttoptr i64 %".4842" to ptr
  %".4843" = load float, ptr %"for_LDG.204"
  %".4844" = bitcast ptr %"R36" to ptr
  store float %".4843", ptr %".4844"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".4847" = load i32, ptr %"R9"
  %".4848" = load i32, ptr %"R24"
  %"mul.69" = mul i32 %".4847", %".4848"
  %"add.222" = add i32 %"mul.69", %"Arg_3"
  store i32 %"add.222", ptr %"R8"
  ; LDG.E.SYS R38, [R10+0xc]
  %".4851" = load i32, ptr %"R10"
  %"zext.472" = zext i32 %".4851" to i64
  %".4852" = load i32, ptr %"R11"
  %"zext.473" = zext i32 %".4852" to i64
  %"shl.251" = shl i64 %"zext.473", 32
  %"or.226" = or i64 %"shl.251", %"zext.472"
  %".4853" = inttoptr i64 %"or.226" to ptr
  %".4854" = ptrtoint ptr %".4853" to i64
  %".4855" = add i64 %".4854", 12
  %"for_LDG.205" = inttoptr i64 %".4855" to ptr
  %".4856" = load float, ptr %"for_LDG.205"
  %".4857" = bitcast ptr %"R38" to ptr
  store float %".4856", ptr %".4857"
  ; IADD3 R13, R23, 0xc, RZ
  %".4860" = load i32, ptr %"R23"
  %"add.223" = add i32 %".4860", 12
  %"add.224" = add i32 %"add.223", 0
  store i32 %"add.224", ptr %"R13"
  ; IADD3 R11, R35, 0x8, RZ
  %".4863" = load i32, ptr %"R35"
  %"add.225" = add i32 %".4863", 8
  %"add.226" = add i32 %"add.225", 0
  store i32 %"add.226", ptr %"R11"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".4866" = load i32, ptr %"R13"
  %".4867" = load i32, ptr %"R24"
  %"mul.70" = mul i32 %".4866", %".4867"
  %"add.227" = add i32 %"mul.70", %"Arg_3"
  store i32 %"add.227", ptr %"R12"
  ; FFMA R57, R41, R39, R44
  %".4870" = load float, ptr %"R41"
  %".4871" = load float, ptr %"R39"
  %".4872" = load float, ptr %"R44"
  %"fmul.191" = fmul float %".4870", %".4871"
  %"fadd.172" = fadd float %"fmul.191", %".4872"
  %".4873" = bitcast ptr %"R57" to ptr
  store float %"fadd.172", ptr %".4873"
  ; LDG.E.SYS R41, [R8]
  %".4876" = load i32, ptr %"R8"
  %"zext.474" = zext i32 %".4876" to i64
  %".4877" = load i32, ptr %"R9"
  %"zext.475" = zext i32 %".4877" to i64
  %"shl.252" = shl i64 %"zext.475", 32
  %"or.227" = or i64 %"shl.252", %"zext.474"
  %".4878" = inttoptr i64 %"or.227" to ptr
  %".4879" = ptrtoint ptr %".4878" to i64
  %".4880" = add i64 %".4879", 0
  %"for_LDG.206" = inttoptr i64 %".4880" to ptr
  %".4881" = load float, ptr %"for_LDG.206"
  %".4882" = bitcast ptr %"R41" to ptr
  store float %".4881", ptr %".4882"
  ; FFMA R56, R39, R40, R56
  %".4885" = load float, ptr %"R39"
  %".4886" = load float, ptr %"R40"
  %".4887" = load float, ptr %"R56"
  %"fmul.192" = fmul float %".4885", %".4886"
  %"fadd.173" = fadd float %"fmul.192", %".4887"
  %".4888" = bitcast ptr %"R56" to ptr
  store float %"fadd.173", ptr %".4888"
  ; LDG.E.SYS R40, [R8+0x4]
  %".4891" = load i32, ptr %"R8"
  %"zext.476" = zext i32 %".4891" to i64
  %".4892" = load i32, ptr %"R9"
  %"zext.477" = zext i32 %".4892" to i64
  %"shl.253" = shl i64 %"zext.477", 32
  %"or.228" = or i64 %"shl.253", %"zext.476"
  %".4893" = inttoptr i64 %"or.228" to ptr
  %".4894" = ptrtoint ptr %".4893" to i64
  %".4895" = add i64 %".4894", 4
  %"for_LDG.207" = inttoptr i64 %".4895" to ptr
  %".4896" = load float, ptr %"for_LDG.207"
  %".4897" = bitcast ptr %"R40" to ptr
  store float %".4896", ptr %".4897"
  ; LDG.E.SYS R39, [R8+0x8]
  %".4900" = load i32, ptr %"R8"
  %"zext.478" = zext i32 %".4900" to i64
  %".4901" = load i32, ptr %"R9"
  %"zext.479" = zext i32 %".4901" to i64
  %"shl.254" = shl i64 %"zext.479", 32
  %"or.229" = or i64 %"shl.254", %"zext.478"
  %".4902" = inttoptr i64 %"or.229" to ptr
  %".4903" = ptrtoint ptr %".4902" to i64
  %".4904" = add i64 %".4903", 8
  %"for_LDG.208" = inttoptr i64 %".4904" to ptr
  %".4905" = load float, ptr %"for_LDG.208"
  %".4906" = bitcast ptr %"R39" to ptr
  store float %".4905", ptr %".4906"
  ; FFMA R57, R53, R52, R57
  %".4909" = load float, ptr %"R53"
  %".4910" = load float, ptr %"R52"
  %".4911" = load float, ptr %"R57"
  %"fmul.193" = fmul float %".4909", %".4910"
  %"fadd.174" = fadd float %"fmul.193", %".4911"
  %".4912" = bitcast ptr %"R57" to ptr
  store float %"fadd.174", ptr %".4912"
  ; LDG.E.SYS R44, [R8+0xc]
  %".4915" = load i32, ptr %"R8"
  %"zext.480" = zext i32 %".4915" to i64
  %".4916" = load i32, ptr %"R9"
  %"zext.481" = zext i32 %".4916" to i64
  %"shl.255" = shl i64 %"zext.481", 32
  %"or.230" = or i64 %"shl.255", %"zext.480"
  %".4917" = inttoptr i64 %"or.230" to ptr
  %".4918" = ptrtoint ptr %".4917" to i64
  %".4919" = add i64 %".4918", 12
  %"for_LDG.209" = inttoptr i64 %".4919" to ptr
  %".4920" = load float, ptr %"for_LDG.209"
  %".4921" = bitcast ptr %"R44" to ptr
  store float %".4920", ptr %".4921"
  ; FFMA R59, R52, R55, R56
  %".4924" = load float, ptr %"R52"
  %".4925" = load float, ptr %"R55"
  %".4926" = load float, ptr %"R56"
  %"fmul.194" = fmul float %".4924", %".4925"
  %"fadd.175" = fadd float %"fmul.194", %".4926"
  %".4927" = bitcast ptr %"R59" to ptr
  store float %"fadd.175", ptr %".4927"
  ; LDG.E.SYS R55, [R12]
  %".4930" = load i32, ptr %"R12"
  %"zext.482" = zext i32 %".4930" to i64
  %".4931" = load i32, ptr %"R13"
  %"zext.483" = zext i32 %".4931" to i64
  %"shl.256" = shl i64 %"zext.483", 32
  %"or.231" = or i64 %"shl.256", %"zext.482"
  %".4932" = inttoptr i64 %"or.231" to ptr
  %".4933" = ptrtoint ptr %".4932" to i64
  %".4934" = add i64 %".4933", 0
  %"for_LDG.210" = inttoptr i64 %".4934" to ptr
  %".4935" = load float, ptr %"for_LDG.210"
  %".4936" = bitcast ptr %"R55" to ptr
  store float %".4935", ptr %".4936"
  ; LDG.E.SYS R53, [R12+0x4]
  %".4939" = load i32, ptr %"R12"
  %"zext.484" = zext i32 %".4939" to i64
  %".4940" = load i32, ptr %"R13"
  %"zext.485" = zext i32 %".4940" to i64
  %"shl.257" = shl i64 %"zext.485", 32
  %"or.232" = or i64 %"shl.257", %"zext.484"
  %".4941" = inttoptr i64 %"or.232" to ptr
  %".4942" = ptrtoint ptr %".4941" to i64
  %".4943" = add i64 %".4942", 4
  %"for_LDG.211" = inttoptr i64 %".4943" to ptr
  %".4944" = load float, ptr %"for_LDG.211"
  %".4945" = bitcast ptr %"R53" to ptr
  store float %".4944", ptr %".4945"
  ; FFMA R43, R43, R50, R57
  %".4948" = load float, ptr %"R43"
  %".4949" = load float, ptr %"R50"
  %".4950" = load float, ptr %"R57"
  %"fmul.195" = fmul float %".4948", %".4949"
  %"fadd.176" = fadd float %"fmul.195", %".4950"
  %".4951" = bitcast ptr %"R43" to ptr
  store float %"fadd.176", ptr %".4951"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".4954" = load i32, ptr %"R11"
  %".4955" = load i32, ptr %"R24"
  %"mul.71" = mul i32 %".4954", %".4955"
  %"add.228" = add i32 %"mul.71", %"Arg_4"
  store i32 %"add.228", ptr %"R8"
  ; LDG.E.SYS R52, [R12+0x8]
  %".4958" = load i32, ptr %"R12"
  %"zext.486" = zext i32 %".4958" to i64
  %".4959" = load i32, ptr %"R13"
  %"zext.487" = zext i32 %".4959" to i64
  %"shl.258" = shl i64 %"zext.487", 32
  %"or.233" = or i64 %"shl.258", %"zext.486"
  %".4960" = inttoptr i64 %"or.233" to ptr
  %".4961" = ptrtoint ptr %".4960" to i64
  %".4962" = add i64 %".4961", 8
  %"for_LDG.212" = inttoptr i64 %".4962" to ptr
  %".4963" = load float, ptr %"for_LDG.212"
  %".4964" = bitcast ptr %"R52" to ptr
  store float %".4963", ptr %".4964"
  ; FFMA R51, R50, R51, R59
  %".4967" = load float, ptr %"R50"
  %".4968" = load float, ptr %"R51"
  %".4969" = load float, ptr %"R59"
  %"fmul.196" = fmul float %".4967", %".4968"
  %"fadd.177" = fadd float %"fmul.196", %".4969"
  %".4970" = bitcast ptr %"R51" to ptr
  store float %"fadd.177", ptr %".4970"
  ; IADD3 R57, R25, 0x8, RZ
  %".4973" = load i32, ptr %"R25"
  %"add.229" = add i32 %".4973", 8
  %"add.230" = add i32 %"add.229", 0
  store i32 %"add.230", ptr %"R57"
  ; LDG.E.SYS R59, [R4+0xc]
  %".4976" = load i32, ptr %"R4"
  %"zext.488" = zext i32 %".4976" to i64
  %".4977" = load i32, ptr %"R5"
  %"zext.489" = zext i32 %".4977" to i64
  %"shl.259" = shl i64 %"zext.489", 32
  %"or.234" = or i64 %"shl.259", %"zext.488"
  %".4978" = inttoptr i64 %"or.234" to ptr
  %".4979" = ptrtoint ptr %".4978" to i64
  %".4980" = add i64 %".4979", 12
  %"for_LDG.213" = inttoptr i64 %".4980" to ptr
  %".4981" = load float, ptr %"for_LDG.213"
  %".4982" = bitcast ptr %"R59" to ptr
  store float %".4981", ptr %".4982"
  ; FFMA R61, R54, R47, R43
  %".4985" = load float, ptr %"R54"
  %".4986" = load float, ptr %"R47"
  %".4987" = load float, ptr %"R43"
  %"fmul.197" = fmul float %".4985", %".4986"
  %"fadd.178" = fadd float %"fmul.197", %".4987"
  %".4988" = bitcast ptr %"R61" to ptr
  store float %"fadd.178", ptr %".4988"
  ; LDG.E.SYS R50, [R8]
  %".4991" = load i32, ptr %"R8"
  %"zext.490" = zext i32 %".4991" to i64
  %".4992" = load i32, ptr %"R9"
  %"zext.491" = zext i32 %".4992" to i64
  %"shl.260" = shl i64 %"zext.491", 32
  %"or.235" = or i64 %"shl.260", %"zext.490"
  %".4993" = inttoptr i64 %"or.235" to ptr
  %".4994" = ptrtoint ptr %".4993" to i64
  %".4995" = add i64 %".4994", 0
  %"for_LDG.214" = inttoptr i64 %".4995" to ptr
  %".4996" = load float, ptr %"for_LDG.214"
  %".4997" = bitcast ptr %"R50" to ptr
  store float %".4996", ptr %".4997"
  ; FFMA R58, R47, R58, R51
  %".5000" = load float, ptr %"R47"
  %".5001" = load float, ptr %"R58"
  %".5002" = load float, ptr %"R51"
  %"fmul.198" = fmul float %".5000", %".5001"
  %"fadd.179" = fadd float %"fmul.198", %".5002"
  %".5003" = bitcast ptr %"R58" to ptr
  store float %"fadd.179", ptr %".5003"
  ; LDG.E.SYS R43, [R6+0x8]
  %".5006" = load i32, ptr %"R6"
  %"zext.492" = zext i32 %".5006" to i64
  %".5007" = load i32, ptr %"R7"
  %"zext.493" = zext i32 %".5007" to i64
  %"shl.261" = shl i64 %"zext.493", 32
  %"or.236" = or i64 %"shl.261", %"zext.492"
  %".5008" = inttoptr i64 %"or.236" to ptr
  %".5009" = ptrtoint ptr %".5008" to i64
  %".5010" = add i64 %".5009", 8
  %"for_LDG.215" = inttoptr i64 %".5010" to ptr
  %".5011" = load float, ptr %"for_LDG.215"
  %".5012" = bitcast ptr %"R43" to ptr
  store float %".5011", ptr %".5012"
  ; LDG.E.SYS R47, [R4+0x4]
  %".5015" = load i32, ptr %"R4"
  %"zext.494" = zext i32 %".5015" to i64
  %".5016" = load i32, ptr %"R5"
  %"zext.495" = zext i32 %".5016" to i64
  %"shl.262" = shl i64 %"zext.495", 32
  %"or.237" = or i64 %"shl.262", %"zext.494"
  %".5017" = inttoptr i64 %"or.237" to ptr
  %".5018" = ptrtoint ptr %".5017" to i64
  %".5019" = add i64 %".5018", 4
  %"for_LDG.216" = inttoptr i64 %".5019" to ptr
  %".5020" = load float, ptr %"for_LDG.216"
  %".5021" = bitcast ptr %"R47" to ptr
  store float %".5020", ptr %".5021"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".5024" = load i32, ptr %"R57"
  %".5025" = load i32, ptr %"R24"
  %"mul.72" = mul i32 %".5024", %".5025"
  %"add.231" = add i32 %"mul.72", %"Arg_4"
  store i32 %"add.231", ptr %"R10"
  ; LDG.E.SYS R51, [R4+0x8]
  %".5028" = load i32, ptr %"R4"
  %"zext.496" = zext i32 %".5028" to i64
  %".5029" = load i32, ptr %"R5"
  %"zext.497" = zext i32 %".5029" to i64
  %"shl.263" = shl i64 %"zext.497", 32
  %"or.238" = or i64 %"shl.263", %"zext.496"
  %".5030" = inttoptr i64 %"or.238" to ptr
  %".5031" = ptrtoint ptr %".5030" to i64
  %".5032" = add i64 %".5031", 8
  %"for_LDG.217" = inttoptr i64 %".5032" to ptr
  %".5033" = load float, ptr %"for_LDG.217"
  %".5034" = bitcast ptr %"R51" to ptr
  store float %".5033", ptr %".5034"
  ; LDG.E.SYS R57, [R6+0xc]
  %".5037" = load i32, ptr %"R6"
  %"zext.498" = zext i32 %".5037" to i64
  %".5038" = load i32, ptr %"R7"
  %"zext.499" = zext i32 %".5038" to i64
  %"shl.264" = shl i64 %"zext.499", 32
  %"or.239" = or i64 %"shl.264", %"zext.498"
  %".5039" = inttoptr i64 %"or.239" to ptr
  %".5040" = ptrtoint ptr %".5039" to i64
  %".5041" = add i64 %".5040", 12
  %"for_LDG.218" = inttoptr i64 %".5041" to ptr
  %".5042" = load float, ptr %"for_LDG.218"
  %".5043" = bitcast ptr %"R57" to ptr
  store float %".5042", ptr %".5043"
  ; FFMA R42, R42, R46, R61
  %".5046" = load float, ptr %"R42"
  %".5047" = load float, ptr %"R46"
  %".5048" = load float, ptr %"R61"
  %"fmul.199" = fmul float %".5046", %".5047"
  %"fadd.180" = fadd float %"fmul.199", %".5048"
  %".5049" = bitcast ptr %"R42" to ptr
  store float %"fadd.180", ptr %".5049"
  ; IADD3 R25, R25, 0xc, RZ
  %".5052" = load i32, ptr %"R25"
  %"add.232" = add i32 %".5052", 12
  %"add.233" = add i32 %"add.232", 0
  store i32 %"add.233", ptr %"R25"
  ; LDG.E.SYS R56, [R12+0xc]
  %".5055" = load i32, ptr %"R12"
  %"zext.500" = zext i32 %".5055" to i64
  %".5056" = load i32, ptr %"R13"
  %"zext.501" = zext i32 %".5056" to i64
  %"shl.265" = shl i64 %"zext.501", 32
  %"or.240" = or i64 %"shl.265", %"zext.500"
  %".5057" = inttoptr i64 %"or.240" to ptr
  %".5058" = ptrtoint ptr %".5057" to i64
  %".5059" = add i64 %".5058", 12
  %"for_LDG.219" = inttoptr i64 %".5059" to ptr
  %".5060" = load float, ptr %"for_LDG.219"
  %".5061" = bitcast ptr %"R56" to ptr
  store float %".5060", ptr %".5061"
  ; FFMA R45, R46, R45, R58
  %".5064" = load float, ptr %"R46"
  %".5065" = load float, ptr %"R45"
  %".5066" = load float, ptr %"R58"
  %"fmul.200" = fmul float %".5064", %".5065"
  %"fadd.181" = fadd float %"fmul.200", %".5066"
  %".5067" = bitcast ptr %"R45" to ptr
  store float %"fadd.181", ptr %".5067"
  ; LDG.E.SYS R46, [R10]
  %".5070" = load i32, ptr %"R10"
  %"zext.502" = zext i32 %".5070" to i64
  %".5071" = load i32, ptr %"R11"
  %"zext.503" = zext i32 %".5071" to i64
  %"shl.266" = shl i64 %"zext.503", 32
  %"or.241" = or i64 %"shl.266", %"zext.502"
  %".5072" = inttoptr i64 %"or.241" to ptr
  %".5073" = ptrtoint ptr %".5072" to i64
  %".5074" = add i64 %".5073", 0
  %"for_LDG.220" = inttoptr i64 %".5074" to ptr
  %".5075" = load float, ptr %"for_LDG.220"
  %".5076" = bitcast ptr %"R46" to ptr
  store float %".5075", ptr %".5076"
  ; LDG.E.SYS R61, [R8+0x4]
  %".5079" = load i32, ptr %"R8"
  %"zext.504" = zext i32 %".5079" to i64
  %".5080" = load i32, ptr %"R9"
  %"zext.505" = zext i32 %".5080" to i64
  %"shl.267" = shl i64 %"zext.505", 32
  %"or.242" = or i64 %"shl.267", %"zext.504"
  %".5081" = inttoptr i64 %"or.242" to ptr
  %".5082" = ptrtoint ptr %".5081" to i64
  %".5083" = add i64 %".5082", 4
  %"for_LDG.221" = inttoptr i64 %".5083" to ptr
  %".5084" = load float, ptr %"for_LDG.221"
  %".5085" = bitcast ptr %"R61" to ptr
  store float %".5084", ptr %".5085"
  ; IADD3 R13, R35, 0xc, RZ
  %".5088" = load i32, ptr %"R35"
  %"add.234" = add i32 %".5088", 12
  %"add.235" = add i32 %"add.234", 0
  store i32 %"add.235", ptr %"R13"
  ; LDG.E.SYS R35, [R10+0x4]
  %".5091" = load i32, ptr %"R10"
  %"zext.506" = zext i32 %".5091" to i64
  %".5092" = load i32, ptr %"R11"
  %"zext.507" = zext i32 %".5092" to i64
  %"shl.268" = shl i64 %"zext.507", 32
  %"or.243" = or i64 %"shl.268", %"zext.506"
  %".5093" = inttoptr i64 %"or.243" to ptr
  %".5094" = ptrtoint ptr %".5093" to i64
  %".5095" = add i64 %".5094", 4
  %"for_LDG.222" = inttoptr i64 %".5095" to ptr
  %".5096" = load float, ptr %"for_LDG.222"
  %".5097" = bitcast ptr %"R35" to ptr
  store float %".5096", ptr %".5097"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".5100" = load i32, ptr %"R13"
  %".5101" = load i32, ptr %"R24"
  %"mul.73" = mul i32 %".5100", %".5101"
  %"add.236" = add i32 %"mul.73", %"Arg_4"
  store i32 %"add.236", ptr %"R12"
  ; LDG.E.SYS R6, [R8+0x8]
  %".5104" = load i32, ptr %"R8"
  %"zext.508" = zext i32 %".5104" to i64
  %".5105" = load i32, ptr %"R9"
  %"zext.509" = zext i32 %".5105" to i64
  %"shl.269" = shl i64 %"zext.509", 32
  %"or.244" = or i64 %"shl.269", %"zext.508"
  %".5106" = inttoptr i64 %"or.244" to ptr
  %".5107" = ptrtoint ptr %".5106" to i64
  %".5108" = add i64 %".5107", 8
  %"for_LDG.223" = inttoptr i64 %".5108" to ptr
  %".5109" = load float, ptr %"for_LDG.223"
  %".5110" = bitcast ptr %"R6" to ptr
  store float %".5109", ptr %".5110"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".5113" = load i32, ptr %"R25"
  %".5114" = load i32, ptr %"R24"
  %"mul.74" = mul i32 %".5113", %".5114"
  %"add.237" = add i32 %"mul.74", %"Arg_4"
  store i32 %"add.237", ptr %"R24"
  ; LDG.E.SYS R4, [R10+0x8]
  %".5117" = load i32, ptr %"R10"
  %"zext.510" = zext i32 %".5117" to i64
  %".5118" = load i32, ptr %"R11"
  %"zext.511" = zext i32 %".5118" to i64
  %"shl.270" = shl i64 %"zext.511", 32
  %"or.245" = or i64 %"shl.270", %"zext.510"
  %".5119" = inttoptr i64 %"or.245" to ptr
  %".5120" = ptrtoint ptr %".5119" to i64
  %".5121" = add i64 %".5120", 8
  %"for_LDG.224" = inttoptr i64 %".5121" to ptr
  %".5122" = load float, ptr %"for_LDG.224"
  %".5123" = bitcast ptr %"R4" to ptr
  store float %".5122", ptr %".5123"
  ; LDG.E.SYS R5, [R8+0xc]
  %".5126" = load i32, ptr %"R8"
  %"zext.512" = zext i32 %".5126" to i64
  %".5127" = load i32, ptr %"R9"
  %"zext.513" = zext i32 %".5127" to i64
  %"shl.271" = shl i64 %"zext.513", 32
  %"or.246" = or i64 %"shl.271", %"zext.512"
  %".5128" = inttoptr i64 %"or.246" to ptr
  %".5129" = ptrtoint ptr %".5128" to i64
  %".5130" = add i64 %".5129", 12
  %"for_LDG.225" = inttoptr i64 %".5130" to ptr
  %".5131" = load float, ptr %"for_LDG.225"
  %".5132" = bitcast ptr %"R5" to ptr
  store float %".5131", ptr %".5132"
  ; LDG.E.SYS R60, [R10+0xc]
  %".5135" = load i32, ptr %"R10"
  %"zext.514" = zext i32 %".5135" to i64
  %".5136" = load i32, ptr %"R11"
  %"zext.515" = zext i32 %".5136" to i64
  %"shl.272" = shl i64 %"zext.515", 32
  %"or.247" = or i64 %"shl.272", %"zext.514"
  %".5137" = inttoptr i64 %"or.247" to ptr
  %".5138" = ptrtoint ptr %".5137" to i64
  %".5139" = add i64 %".5138", 12
  %"for_LDG.226" = inttoptr i64 %".5139" to ptr
  %".5140" = load float, ptr %"for_LDG.226"
  %".5141" = bitcast ptr %"R60" to ptr
  store float %".5140", ptr %".5141"
  ; LDG.E.SYS R58, [R12]
  %".5144" = load i32, ptr %"R12"
  %"zext.516" = zext i32 %".5144" to i64
  %".5145" = load i32, ptr %"R13"
  %"zext.517" = zext i32 %".5145" to i64
  %"shl.273" = shl i64 %"zext.517", 32
  %"or.248" = or i64 %"shl.273", %"zext.516"
  %".5146" = inttoptr i64 %"or.248" to ptr
  %".5147" = ptrtoint ptr %".5146" to i64
  %".5148" = add i64 %".5147", 0
  %"for_LDG.227" = inttoptr i64 %".5148" to ptr
  %".5149" = load float, ptr %"for_LDG.227"
  %".5150" = bitcast ptr %"R58" to ptr
  store float %".5149", ptr %".5150"
  ; LDG.E.SYS R54, [R12+0x4]
  %".5153" = load i32, ptr %"R12"
  %"zext.518" = zext i32 %".5153" to i64
  %".5154" = load i32, ptr %"R13"
  %"zext.519" = zext i32 %".5154" to i64
  %"shl.274" = shl i64 %"zext.519", 32
  %"or.249" = or i64 %"shl.274", %"zext.518"
  %".5155" = inttoptr i64 %"or.249" to ptr
  %".5156" = ptrtoint ptr %".5155" to i64
  %".5157" = add i64 %".5156", 4
  %"for_LDG.228" = inttoptr i64 %".5157" to ptr
  %".5158" = load float, ptr %"for_LDG.228"
  %".5159" = bitcast ptr %"R54" to ptr
  store float %".5158", ptr %".5159"
  ; FFMA R10, R37, R34, R42
  %".5162" = load float, ptr %"R37"
  %".5163" = load float, ptr %"R34"
  %".5164" = load float, ptr %"R42"
  %"fmul.201" = fmul float %".5162", %".5163"
  %"fadd.182" = fadd float %"fmul.201", %".5164"
  %".5165" = bitcast ptr %"R10" to ptr
  store float %"fadd.182", ptr %".5165"
  ; LDG.E.SYS R37, [R24]
  %".5168" = load i32, ptr %"R24"
  %"zext.520" = zext i32 %".5168" to i64
  %".5169" = load i32, ptr %"R25"
  %"zext.521" = zext i32 %".5169" to i64
  %"shl.275" = shl i64 %"zext.521", 32
  %"or.250" = or i64 %"shl.275", %"zext.520"
  %".5170" = inttoptr i64 %"or.250" to ptr
  %".5171" = ptrtoint ptr %".5170" to i64
  %".5172" = add i64 %".5171", 0
  %"for_LDG.229" = inttoptr i64 %".5172" to ptr
  %".5173" = load float, ptr %"for_LDG.229"
  %".5174" = bitcast ptr %"R37" to ptr
  store float %".5173", ptr %".5174"
  ; LDG.E.SYS R42, [R24+0x4]
  %".5177" = load i32, ptr %"R24"
  %"zext.522" = zext i32 %".5177" to i64
  %".5178" = load i32, ptr %"R25"
  %"zext.523" = zext i32 %".5178" to i64
  %"shl.276" = shl i64 %"zext.523", 32
  %"or.251" = or i64 %"shl.276", %"zext.522"
  %".5179" = inttoptr i64 %"or.251" to ptr
  %".5180" = ptrtoint ptr %".5179" to i64
  %".5181" = add i64 %".5180", 4
  %"for_LDG.230" = inttoptr i64 %".5181" to ptr
  %".5182" = load float, ptr %"for_LDG.230"
  %".5183" = bitcast ptr %"R42" to ptr
  store float %".5182", ptr %".5183"
  ; LDG.E.SYS R7, [R12+0x8]
  %".5186" = load i32, ptr %"R12"
  %"zext.524" = zext i32 %".5186" to i64
  %".5187" = load i32, ptr %"R13"
  %"zext.525" = zext i32 %".5187" to i64
  %"shl.277" = shl i64 %"zext.525", 32
  %"or.252" = or i64 %"shl.277", %"zext.524"
  %".5188" = inttoptr i64 %"or.252" to ptr
  %".5189" = ptrtoint ptr %".5188" to i64
  %".5190" = add i64 %".5189", 8
  %"for_LDG.231" = inttoptr i64 %".5190" to ptr
  %".5191" = load float, ptr %"for_LDG.231"
  %".5192" = bitcast ptr %"R7" to ptr
  store float %".5191", ptr %".5192"
  ; LDG.E.SYS R9, [R24+0x8]
  %".5195" = load i32, ptr %"R24"
  %"zext.526" = zext i32 %".5195" to i64
  %".5196" = load i32, ptr %"R25"
  %"zext.527" = zext i32 %".5196" to i64
  %"shl.278" = shl i64 %"zext.527", 32
  %"or.253" = or i64 %"shl.278", %"zext.526"
  %".5197" = inttoptr i64 %"or.253" to ptr
  %".5198" = ptrtoint ptr %".5197" to i64
  %".5199" = add i64 %".5198", 8
  %"for_LDG.232" = inttoptr i64 %".5199" to ptr
  %".5200" = load float, ptr %"for_LDG.232"
  %".5201" = bitcast ptr %"R9" to ptr
  store float %".5200", ptr %".5201"
  ; LDG.E.SYS R8, [R24+0xc]
  %".5204" = load i32, ptr %"R24"
  %"zext.528" = zext i32 %".5204" to i64
  %".5205" = load i32, ptr %"R25"
  %"zext.529" = zext i32 %".5205" to i64
  %"shl.279" = shl i64 %"zext.529", 32
  %"or.254" = or i64 %"shl.279", %"zext.528"
  %".5206" = inttoptr i64 %"or.254" to ptr
  %".5207" = ptrtoint ptr %".5206" to i64
  %".5208" = add i64 %".5207", 12
  %"for_LDG.233" = inttoptr i64 %".5208" to ptr
  %".5209" = load float, ptr %"for_LDG.233"
  %".5210" = bitcast ptr %"R8" to ptr
  store float %".5209", ptr %".5210"
  ; LDG.E.SYS R13, [R12+0xc]
  %".5213" = load i32, ptr %"R12"
  %"zext.530" = zext i32 %".5213" to i64
  %".5214" = load i32, ptr %"R13"
  %"zext.531" = zext i32 %".5214" to i64
  %"shl.280" = shl i64 %"zext.531", 32
  %"or.255" = or i64 %"shl.280", %"zext.530"
  %".5215" = inttoptr i64 %"or.255" to ptr
  %".5216" = ptrtoint ptr %".5215" to i64
  %".5217" = add i64 %".5216", 12
  %"for_LDG.234" = inttoptr i64 %".5217" to ptr
  %".5218" = load float, ptr %"for_LDG.234"
  %".5219" = bitcast ptr %"R13" to ptr
  store float %".5218", ptr %".5219"
  ; IADD3 R22, R22, -0x10, RZ
  %".5222" = load i32, ptr %"R22"
  %"add.238" = add i32 %".5222", -16
  %"add.239" = add i32 %"add.238", 0
  store i32 %"add.239", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".5225" = load i32, ptr %"R22"
  %".5226" = load i1, ptr %"PT"
  %"cmp.45" = icmp sgt i32 %".5225", 12
  %".5227" = and i1 %"cmp.45", %".5226"
  store i1 %".5227", ptr %"P1"
  ; IADD3 R23, R23, 0x10, RZ
  %".5230" = load i32, ptr %"R23"
  %"add.240" = add i32 %".5230", 16
  %"add.241" = add i32 %"add.240", 0
  store i32 %"add.241", ptr %"R23"
  ; FFMA R10, R43, R36, R10
  %".5233" = load float, ptr %"R43"
  %".5234" = load float, ptr %"R36"
  %".5235" = load float, ptr %"R10"
  %"fmul.202" = fmul float %".5233", %".5234"
  %"fadd.183" = fadd float %"fmul.202", %".5235"
  %".5236" = bitcast ptr %"R10" to ptr
  store float %"fadd.183", ptr %".5236"
  ; FFMA R45, R34, R47, R45
  %".5239" = load float, ptr %"R34"
  %".5240" = load float, ptr %"R47"
  %".5241" = load float, ptr %"R45"
  %"fmul.203" = fmul float %".5239", %".5240"
  %"fadd.184" = fadd float %"fmul.203", %".5241"
  %".5242" = bitcast ptr %"R45" to ptr
  store float %"fadd.184", ptr %".5242"
  ; FFMA R45, R36, R51, R45
  %".5245" = load float, ptr %"R36"
  %".5246" = load float, ptr %"R51"
  %".5247" = load float, ptr %"R45"
  %"fmul.204" = fmul float %".5245", %".5246"
  %"fadd.185" = fadd float %"fmul.204", %".5247"
  %".5248" = bitcast ptr %"R45" to ptr
  store float %"fadd.185", ptr %".5248"
  ; FFMA R10, R57, R38, R10
  %".5251" = load float, ptr %"R57"
  %".5252" = load float, ptr %"R38"
  %".5253" = load float, ptr %"R10"
  %"fmul.205" = fmul float %".5251", %".5252"
  %"fadd.186" = fadd float %"fmul.205", %".5253"
  %".5254" = bitcast ptr %"R10" to ptr
  store float %"fadd.186", ptr %".5254"
  ; FFMA R45, R38, R59, R45
  %".5257" = load float, ptr %"R38"
  %".5258" = load float, ptr %"R59"
  %".5259" = load float, ptr %"R45"
  %"fmul.206" = fmul float %".5257", %".5258"
  %"fadd.187" = fadd float %"fmul.206", %".5259"
  %".5260" = bitcast ptr %"R45" to ptr
  store float %"fadd.187", ptr %".5260"
  ; FFMA R10, R50, R41, R10
  %".5263" = load float, ptr %"R50"
  %".5264" = load float, ptr %"R41"
  %".5265" = load float, ptr %"R10"
  %"fmul.207" = fmul float %".5263", %".5264"
  %"fadd.188" = fadd float %"fmul.207", %".5265"
  %".5266" = bitcast ptr %"R10" to ptr
  store float %"fadd.188", ptr %".5266"
  ; FFMA R45, R41, R46, R45
  %".5269" = load float, ptr %"R41"
  %".5270" = load float, ptr %"R46"
  %".5271" = load float, ptr %"R45"
  %"fmul.208" = fmul float %".5269", %".5270"
  %"fadd.189" = fadd float %"fmul.208", %".5271"
  %".5272" = bitcast ptr %"R45" to ptr
  store float %"fadd.189", ptr %".5272"
  ; FFMA R10, R61, R40, R10
  %".5275" = load float, ptr %"R61"
  %".5276" = load float, ptr %"R40"
  %".5277" = load float, ptr %"R10"
  %"fmul.209" = fmul float %".5275", %".5276"
  %"fadd.190" = fadd float %"fmul.209", %".5277"
  %".5278" = bitcast ptr %"R10" to ptr
  store float %"fadd.190", ptr %".5278"
  ; FFMA R35, R40, R35, R45
  %".5281" = load float, ptr %"R40"
  %".5282" = load float, ptr %"R35"
  %".5283" = load float, ptr %"R45"
  %"fmul.210" = fmul float %".5281", %".5282"
  %"fadd.191" = fadd float %"fmul.210", %".5283"
  %".5284" = bitcast ptr %"R35" to ptr
  store float %"fadd.191", ptr %".5284"
  ; FFMA R6, R6, R39, R10
  %".5287" = load float, ptr %"R6"
  %".5288" = load float, ptr %"R39"
  %".5289" = load float, ptr %"R10"
  %"fmul.211" = fmul float %".5287", %".5288"
  %"fadd.192" = fadd float %"fmul.211", %".5289"
  %".5290" = bitcast ptr %"R6" to ptr
  store float %"fadd.192", ptr %".5290"
  ; FFMA R35, R39, R4, R35
  %".5293" = load float, ptr %"R39"
  %".5294" = load float, ptr %"R4"
  %".5295" = load float, ptr %"R35"
  %"fmul.212" = fmul float %".5293", %".5294"
  %"fadd.193" = fadd float %"fmul.212", %".5295"
  %".5296" = bitcast ptr %"R35" to ptr
  store float %"fadd.193", ptr %".5296"
  ; FFMA R5, R5, R44, R6
  %".5299" = load float, ptr %"R5"
  %".5300" = load float, ptr %"R44"
  %".5301" = load float, ptr %"R6"
  %"fmul.213" = fmul float %".5299", %".5300"
  %"fadd.194" = fadd float %"fmul.213", %".5301"
  %".5302" = bitcast ptr %"R5" to ptr
  store float %"fadd.194", ptr %".5302"
  ; FFMA R60, R44, R60, R35
  %".5305" = load float, ptr %"R44"
  %".5306" = load float, ptr %"R60"
  %".5307" = load float, ptr %"R35"
  %"fmul.214" = fmul float %".5305", %".5306"
  %"fadd.195" = fadd float %"fmul.214", %".5307"
  %".5308" = bitcast ptr %"R60" to ptr
  store float %"fadd.195", ptr %".5308"
  ; FFMA R5, R58, R55, R5
  %".5311" = load float, ptr %"R58"
  %".5312" = load float, ptr %"R55"
  %".5313" = load float, ptr %"R5"
  %"fmul.215" = fmul float %".5311", %".5312"
  %"fadd.196" = fadd float %"fmul.215", %".5313"
  %".5314" = bitcast ptr %"R5" to ptr
  store float %"fadd.196", ptr %".5314"
  ; FFMA R5, R54, R53, R5
  %".5317" = load float, ptr %"R54"
  %".5318" = load float, ptr %"R53"
  %".5319" = load float, ptr %"R5"
  %"fmul.216" = fmul float %".5317", %".5318"
  %"fadd.197" = fadd float %"fmul.216", %".5319"
  %".5320" = bitcast ptr %"R5" to ptr
  store float %"fadd.197", ptr %".5320"
  ; FFMA R37, R55, R37, R60
  %".5323" = load float, ptr %"R55"
  %".5324" = load float, ptr %"R37"
  %".5325" = load float, ptr %"R60"
  %"fmul.217" = fmul float %".5323", %".5324"
  %"fadd.198" = fadd float %"fmul.217", %".5325"
  %".5326" = bitcast ptr %"R37" to ptr
  store float %"fadd.198", ptr %".5326"
  ; FFMA R37, R53, R42, R37
  %".5329" = load float, ptr %"R53"
  %".5330" = load float, ptr %"R42"
  %".5331" = load float, ptr %"R37"
  %"fmul.218" = fmul float %".5329", %".5330"
  %"fadd.199" = fadd float %"fmul.218", %".5331"
  %".5332" = bitcast ptr %"R37" to ptr
  store float %"fadd.199", ptr %".5332"
  ; FFMA R5, R7, R52, R5
  %".5335" = load float, ptr %"R7"
  %".5336" = load float, ptr %"R52"
  %".5337" = load float, ptr %"R5"
  %"fmul.219" = fmul float %".5335", %".5336"
  %"fadd.200" = fadd float %"fmul.219", %".5337"
  %".5338" = bitcast ptr %"R5" to ptr
  store float %"fadd.200", ptr %".5338"
  ; FFMA R9, R52, R9, R37
  %".5341" = load float, ptr %"R52"
  %".5342" = load float, ptr %"R9"
  %".5343" = load float, ptr %"R37"
  %"fmul.220" = fmul float %".5341", %".5342"
  %"fadd.201" = fadd float %"fmul.220", %".5343"
  %".5344" = bitcast ptr %"R9" to ptr
  store float %"fadd.201", ptr %".5344"
  ; FFMA R44, R13, R56, R5
  %".5347" = load float, ptr %"R13"
  %".5348" = load float, ptr %"R56"
  %".5349" = load float, ptr %"R5"
  %"fmul.221" = fmul float %".5347", %".5348"
  %"fadd.202" = fadd float %"fmul.221", %".5349"
  %".5350" = bitcast ptr %"R44" to ptr
  store float %"fadd.202", ptr %".5350"
  ; FFMA R56, R56, R8, R9
  %".5353" = load float, ptr %"R56"
  %".5354" = load float, ptr %"R8"
  %".5355" = load float, ptr %"R9"
  %"fmul.222" = fmul float %".5353", %".5354"
  %"fadd.203" = fadd float %"fmul.222", %".5355"
  %".5356" = bitcast ptr %"R56" to ptr
  store float %"fadd.203", ptr %".5356"
  ; @P1 BRA `(.L_x_30)
  %".5359" = load i1, ptr %"P1"
  %".5360" = icmp ne i1 %".5359", 1
  br i1 %".5360", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".5363" = load i32, ptr %"R22"
  %".5364" = load i1, ptr %"PT"
  %"cmp.46" = icmp sgt i32 %".5363", 4
  %".5365" = and i1 %"cmp.46", %".5364"
  store i1 %".5365", ptr %"P1"
  ; @!P1 BRA `(.L_x_31)
  %".5368" = load i1, ptr %"P1"
  %".5369" = icmp eq i1 %".5368", 1
  br i1 %".5369", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".5372" = load i32, ptr %"R0"
  %".5373" = load i32, ptr %"R23"
  %"add.242" = add i32 %".5372", %".5373"
  %"add.243" = add i32 %"add.242", 0
  store i32 %"add.243", ptr %"R5"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25"
  ; LEA R13, R2.reuse, R5, 0x2
  %".5378" = load i32, ptr %"R2"
  %".5379" = load i32, ptr %"R5"
  %"shl.281" = shl i32 %".5378", 2
  %"add.244" = add i32 %"shl.281", %".5379"
  store i32 %"add.244", ptr %"R13"
  ; IMAD R12, R2, 0x3, R5
  %".5382" = load i32, ptr %"R2"
  %".5383" = load i32, ptr %"R5"
  %"mul.75" = mul i32 %".5382", 3
  %"add.245" = add i32 %"mul.75", %".5383"
  store i32 %"add.245", ptr %"R12"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".5386" = load i32, ptr %"R23"
  %"add.246" = add i32 %".5386", 4
  %"add.247" = add i32 %"add.246", 0
  store i32 %"add.247", ptr %"R6"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".5389" = load i32, ptr %"R23"
  %".5390" = load i32, ptr %"R25"
  %"mul.76" = mul i32 %".5389", %".5390"
  %"add.248" = add i32 %"mul.76", %"Arg_3"
  store i32 %"add.248", ptr %"R8"
  ; IADD3 R24, R13, 0x4, RZ
  %".5393" = load i32, ptr %"R13"
  %"add.249" = add i32 %".5393", 4
  %"add.250" = add i32 %"add.249", 0
  store i32 %"add.250", ptr %"R24"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".5396" = load i32, ptr %"R12"
  %".5397" = load i32, ptr %"R25"
  %"mul.77" = mul i32 %".5396", %".5397"
  %"add.251" = add i32 %"mul.77", %"Arg_4"
  store i32 %"add.251", ptr %"R4"
  ; IADD3 R12, R12, 0x4, RZ
  %".5400" = load i32, ptr %"R12"
  %"add.252" = add i32 %".5400", 4
  %"add.253" = add i32 %"add.252", 0
  store i32 %"add.253", ptr %"R12"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".5403" = load i32, ptr %"R13"
  %".5404" = load i32, ptr %"R25"
  %"mul.78" = mul i32 %".5403", %".5404"
  %"add.254" = add i32 %"mul.78", %"Arg_4"
  store i32 %"add.254", ptr %"R10"
  ; LDG.E.SYS R43, [R8]
  %".5407" = load i32, ptr %"R8"
  %"zext.532" = zext i32 %".5407" to i64
  %".5408" = load i32, ptr %"R9"
  %"zext.533" = zext i32 %".5408" to i64
  %"shl.282" = shl i64 %"zext.533", 32
  %"or.256" = or i64 %"shl.282", %"zext.532"
  %".5409" = inttoptr i64 %"or.256" to ptr
  %".5410" = ptrtoint ptr %".5409" to i64
  %".5411" = add i64 %".5410", 0
  %"for_LDG.235" = inttoptr i64 %".5411" to ptr
  %".5412" = load float, ptr %"for_LDG.235"
  %".5413" = bitcast ptr %"R43" to ptr
  store float %".5412", ptr %".5413"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".5416" = load i32, ptr %"R6"
  %".5417" = load i32, ptr %"R25"
  %"mul.79" = mul i32 %".5416", %".5417"
  %"add.255" = add i32 %"mul.79", %"Arg_3"
  store i32 %"add.255", ptr %"R6"
  ; LDG.E.SYS R52, [R4]
  %".5420" = load i32, ptr %"R4"
  %"zext.534" = zext i32 %".5420" to i64
  %".5421" = load i32, ptr %"R5"
  %"zext.535" = zext i32 %".5421" to i64
  %"shl.283" = shl i64 %"zext.535", 32
  %"or.257" = or i64 %"shl.283", %"zext.534"
  %".5422" = inttoptr i64 %"or.257" to ptr
  %".5423" = ptrtoint ptr %".5422" to i64
  %".5424" = add i64 %".5423", 0
  %"for_LDG.236" = inttoptr i64 %".5424" to ptr
  %".5425" = load float, ptr %"for_LDG.236"
  %".5426" = bitcast ptr %"R52" to ptr
  store float %".5425", ptr %".5426"
  ; LDG.E.SYS R38, [R10]
  %".5429" = load i32, ptr %"R10"
  %"zext.536" = zext i32 %".5429" to i64
  %".5430" = load i32, ptr %"R11"
  %"zext.537" = zext i32 %".5430" to i64
  %"shl.284" = shl i64 %"zext.537", 32
  %"or.258" = or i64 %"shl.284", %"zext.536"
  %".5431" = inttoptr i64 %"or.258" to ptr
  %".5432" = ptrtoint ptr %".5431" to i64
  %".5433" = add i64 %".5432", 0
  %"for_LDG.237" = inttoptr i64 %".5433" to ptr
  %".5434" = load float, ptr %"for_LDG.237"
  %".5435" = bitcast ptr %"R38" to ptr
  store float %".5434", ptr %".5435"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".5438" = load i32, ptr %"R12"
  %".5439" = load i32, ptr %"R25"
  %"mul.80" = mul i32 %".5438", %".5439"
  %"add.256" = add i32 %"mul.80", %"Arg_4"
  store i32 %"add.256", ptr %"R12"
  ; LDG.E.SYS R36, [R8+0x4]
  %".5442" = load i32, ptr %"R8"
  %"zext.538" = zext i32 %".5442" to i64
  %".5443" = load i32, ptr %"R9"
  %"zext.539" = zext i32 %".5443" to i64
  %"shl.285" = shl i64 %"zext.539", 32
  %"or.259" = or i64 %"shl.285", %"zext.538"
  %".5444" = inttoptr i64 %"or.259" to ptr
  %".5445" = ptrtoint ptr %".5444" to i64
  %".5446" = add i64 %".5445", 4
  %"for_LDG.238" = inttoptr i64 %".5446" to ptr
  %".5447" = load float, ptr %"for_LDG.238"
  %".5448" = bitcast ptr %"R36" to ptr
  store float %".5447", ptr %".5448"
  ; LDG.E.SYS R41, [R4+0x4]
  %".5451" = load i32, ptr %"R4"
  %"zext.540" = zext i32 %".5451" to i64
  %".5452" = load i32, ptr %"R5"
  %"zext.541" = zext i32 %".5452" to i64
  %"shl.286" = shl i64 %"zext.541", 32
  %"or.260" = or i64 %"shl.286", %"zext.540"
  %".5453" = inttoptr i64 %"or.260" to ptr
  %".5454" = ptrtoint ptr %".5453" to i64
  %".5455" = add i64 %".5454", 4
  %"for_LDG.239" = inttoptr i64 %".5455" to ptr
  %".5456" = load float, ptr %"for_LDG.239"
  %".5457" = bitcast ptr %"R41" to ptr
  store float %".5456", ptr %".5457"
  ; LDG.E.SYS R39, [R10+0x4]
  %".5460" = load i32, ptr %"R10"
  %"zext.542" = zext i32 %".5460" to i64
  %".5461" = load i32, ptr %"R11"
  %"zext.543" = zext i32 %".5461" to i64
  %"shl.287" = shl i64 %"zext.543", 32
  %"or.261" = or i64 %"shl.287", %"zext.542"
  %".5462" = inttoptr i64 %"or.261" to ptr
  %".5463" = ptrtoint ptr %".5462" to i64
  %".5464" = add i64 %".5463", 4
  %"for_LDG.240" = inttoptr i64 %".5464" to ptr
  %".5465" = load float, ptr %"for_LDG.240"
  %".5466" = bitcast ptr %"R39" to ptr
  store float %".5465", ptr %".5466"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".5469" = load i32, ptr %"R24"
  %".5470" = load i32, ptr %"R25"
  %"mul.81" = mul i32 %".5469", %".5470"
  %"add.257" = add i32 %"mul.81", %"Arg_4"
  store i32 %"add.257", ptr %"R24"
  ; LDG.E.SYS R34, [R8+0x8]
  %".5473" = load i32, ptr %"R8"
  %"zext.544" = zext i32 %".5473" to i64
  %".5474" = load i32, ptr %"R9"
  %"zext.545" = zext i32 %".5474" to i64
  %"shl.288" = shl i64 %"zext.545", 32
  %"or.262" = or i64 %"shl.288", %"zext.544"
  %".5475" = inttoptr i64 %"or.262" to ptr
  %".5476" = ptrtoint ptr %".5475" to i64
  %".5477" = add i64 %".5476", 8
  %"for_LDG.241" = inttoptr i64 %".5477" to ptr
  %".5478" = load float, ptr %"for_LDG.241"
  %".5479" = bitcast ptr %"R34" to ptr
  store float %".5478", ptr %".5479"
  ; LDG.E.SYS R37, [R4+0x8]
  %".5482" = load i32, ptr %"R4"
  %"zext.546" = zext i32 %".5482" to i64
  %".5483" = load i32, ptr %"R5"
  %"zext.547" = zext i32 %".5483" to i64
  %"shl.289" = shl i64 %"zext.547", 32
  %"or.263" = or i64 %"shl.289", %"zext.546"
  %".5484" = inttoptr i64 %"or.263" to ptr
  %".5485" = ptrtoint ptr %".5484" to i64
  %".5486" = add i64 %".5485", 8
  %"for_LDG.242" = inttoptr i64 %".5486" to ptr
  %".5487" = load float, ptr %"for_LDG.242"
  %".5488" = bitcast ptr %"R37" to ptr
  store float %".5487", ptr %".5488"
  ; LDG.E.SYS R35, [R10+0x8]
  %".5491" = load i32, ptr %"R10"
  %"zext.548" = zext i32 %".5491" to i64
  %".5492" = load i32, ptr %"R11"
  %"zext.549" = zext i32 %".5492" to i64
  %"shl.290" = shl i64 %"zext.549", 32
  %"or.264" = or i64 %"shl.290", %"zext.548"
  %".5493" = inttoptr i64 %"or.264" to ptr
  %".5494" = ptrtoint ptr %".5493" to i64
  %".5495" = add i64 %".5494", 8
  %"for_LDG.243" = inttoptr i64 %".5495" to ptr
  %".5496" = load float, ptr %"for_LDG.243"
  %".5497" = bitcast ptr %"R35" to ptr
  store float %".5496", ptr %".5497"
  ; LDG.E.SYS R40, [R8+0xc]
  %".5500" = load i32, ptr %"R8"
  %"zext.550" = zext i32 %".5500" to i64
  %".5501" = load i32, ptr %"R9"
  %"zext.551" = zext i32 %".5501" to i64
  %"shl.291" = shl i64 %"zext.551", 32
  %"or.265" = or i64 %"shl.291", %"zext.550"
  %".5502" = inttoptr i64 %"or.265" to ptr
  %".5503" = ptrtoint ptr %".5502" to i64
  %".5504" = add i64 %".5503", 12
  %"for_LDG.244" = inttoptr i64 %".5504" to ptr
  %".5505" = load float, ptr %"for_LDG.244"
  %".5506" = bitcast ptr %"R40" to ptr
  store float %".5505", ptr %".5506"
  ; LDG.E.SYS R45, [R4+0xc]
  %".5509" = load i32, ptr %"R4"
  %"zext.552" = zext i32 %".5509" to i64
  %".5510" = load i32, ptr %"R5"
  %"zext.553" = zext i32 %".5510" to i64
  %"shl.292" = shl i64 %"zext.553", 32
  %"or.266" = or i64 %"shl.292", %"zext.552"
  %".5511" = inttoptr i64 %"or.266" to ptr
  %".5512" = ptrtoint ptr %".5511" to i64
  %".5513" = add i64 %".5512", 12
  %"for_LDG.245" = inttoptr i64 %".5513" to ptr
  %".5514" = load float, ptr %"for_LDG.245"
  %".5515" = bitcast ptr %"R45" to ptr
  store float %".5514", ptr %".5515"
  ; LDG.E.SYS R59, [R10+0xc]
  %".5518" = load i32, ptr %"R10"
  %"zext.554" = zext i32 %".5518" to i64
  %".5519" = load i32, ptr %"R11"
  %"zext.555" = zext i32 %".5519" to i64
  %"shl.293" = shl i64 %"zext.555", 32
  %"or.267" = or i64 %"shl.293", %"zext.554"
  %".5520" = inttoptr i64 %"or.267" to ptr
  %".5521" = ptrtoint ptr %".5520" to i64
  %".5522" = add i64 %".5521", 12
  %"for_LDG.246" = inttoptr i64 %".5522" to ptr
  %".5523" = load float, ptr %"for_LDG.246"
  %".5524" = bitcast ptr %"R59" to ptr
  store float %".5523", ptr %".5524"
  ; LDG.E.SYS R50, [R6]
  %".5527" = load i32, ptr %"R6"
  %"zext.556" = zext i32 %".5527" to i64
  %".5528" = load i32, ptr %"R7"
  %"zext.557" = zext i32 %".5528" to i64
  %"shl.294" = shl i64 %"zext.557", 32
  %"or.268" = or i64 %"shl.294", %"zext.556"
  %".5529" = inttoptr i64 %"or.268" to ptr
  %".5530" = ptrtoint ptr %".5529" to i64
  %".5531" = add i64 %".5530", 0
  %"for_LDG.247" = inttoptr i64 %".5531" to ptr
  %".5532" = load float, ptr %"for_LDG.247"
  %".5533" = bitcast ptr %"R50" to ptr
  store float %".5532", ptr %".5533"
  ; LDG.E.SYS R57, [R12]
  %".5536" = load i32, ptr %"R12"
  %"zext.558" = zext i32 %".5536" to i64
  %".5537" = load i32, ptr %"R13"
  %"zext.559" = zext i32 %".5537" to i64
  %"shl.295" = shl i64 %"zext.559", 32
  %"or.269" = or i64 %"shl.295", %"zext.558"
  %".5538" = inttoptr i64 %"or.269" to ptr
  %".5539" = ptrtoint ptr %".5538" to i64
  %".5540" = add i64 %".5539", 0
  %"for_LDG.248" = inttoptr i64 %".5540" to ptr
  %".5541" = load float, ptr %"for_LDG.248"
  %".5542" = bitcast ptr %"R57" to ptr
  store float %".5541", ptr %".5542"
  ; LDG.E.SYS R55, [R24]
  %".5545" = load i32, ptr %"R24"
  %"zext.560" = zext i32 %".5545" to i64
  %".5546" = load i32, ptr %"R25"
  %"zext.561" = zext i32 %".5546" to i64
  %"shl.296" = shl i64 %"zext.561", 32
  %"or.270" = or i64 %"shl.296", %"zext.560"
  %".5547" = inttoptr i64 %"or.270" to ptr
  %".5548" = ptrtoint ptr %".5547" to i64
  %".5549" = add i64 %".5548", 0
  %"for_LDG.249" = inttoptr i64 %".5549" to ptr
  %".5550" = load float, ptr %"for_LDG.249"
  %".5551" = bitcast ptr %"R55" to ptr
  store float %".5550", ptr %".5551"
  ; LDG.E.SYS R46, [R6+0x4]
  %".5554" = load i32, ptr %"R6"
  %"zext.562" = zext i32 %".5554" to i64
  %".5555" = load i32, ptr %"R7"
  %"zext.563" = zext i32 %".5555" to i64
  %"shl.297" = shl i64 %"zext.563", 32
  %"or.271" = or i64 %"shl.297", %"zext.562"
  %".5556" = inttoptr i64 %"or.271" to ptr
  %".5557" = ptrtoint ptr %".5556" to i64
  %".5558" = add i64 %".5557", 4
  %"for_LDG.250" = inttoptr i64 %".5558" to ptr
  %".5559" = load float, ptr %"for_LDG.250"
  %".5560" = bitcast ptr %"R46" to ptr
  store float %".5559", ptr %".5560"
  ; LDG.E.SYS R53, [R12+0x4]
  %".5563" = load i32, ptr %"R12"
  %"zext.564" = zext i32 %".5563" to i64
  %".5564" = load i32, ptr %"R13"
  %"zext.565" = zext i32 %".5564" to i64
  %"shl.298" = shl i64 %"zext.565", 32
  %"or.272" = or i64 %"shl.298", %"zext.564"
  %".5565" = inttoptr i64 %"or.272" to ptr
  %".5566" = ptrtoint ptr %".5565" to i64
  %".5567" = add i64 %".5566", 4
  %"for_LDG.251" = inttoptr i64 %".5567" to ptr
  %".5568" = load float, ptr %"for_LDG.251"
  %".5569" = bitcast ptr %"R53" to ptr
  store float %".5568", ptr %".5569"
  ; LDG.E.SYS R51, [R24+0x4]
  %".5572" = load i32, ptr %"R24"
  %"zext.566" = zext i32 %".5572" to i64
  %".5573" = load i32, ptr %"R25"
  %"zext.567" = zext i32 %".5573" to i64
  %"shl.299" = shl i64 %"zext.567", 32
  %"or.273" = or i64 %"shl.299", %"zext.566"
  %".5574" = inttoptr i64 %"or.273" to ptr
  %".5575" = ptrtoint ptr %".5574" to i64
  %".5576" = add i64 %".5575", 4
  %"for_LDG.252" = inttoptr i64 %".5576" to ptr
  %".5577" = load float, ptr %"for_LDG.252"
  %".5578" = bitcast ptr %"R51" to ptr
  store float %".5577", ptr %".5578"
  ; LDG.E.SYS R42, [R6+0x8]
  %".5581" = load i32, ptr %"R6"
  %"zext.568" = zext i32 %".5581" to i64
  %".5582" = load i32, ptr %"R7"
  %"zext.569" = zext i32 %".5582" to i64
  %"shl.300" = shl i64 %"zext.569", 32
  %"or.274" = or i64 %"shl.300", %"zext.568"
  %".5583" = inttoptr i64 %"or.274" to ptr
  %".5584" = ptrtoint ptr %".5583" to i64
  %".5585" = add i64 %".5584", 8
  %"for_LDG.253" = inttoptr i64 %".5585" to ptr
  %".5586" = load float, ptr %"for_LDG.253"
  %".5587" = bitcast ptr %"R42" to ptr
  store float %".5586", ptr %".5587"
  ; LDG.E.SYS R47, [R12+0x8]
  %".5590" = load i32, ptr %"R12"
  %"zext.570" = zext i32 %".5590" to i64
  %".5591" = load i32, ptr %"R13"
  %"zext.571" = zext i32 %".5591" to i64
  %"shl.301" = shl i64 %"zext.571", 32
  %"or.275" = or i64 %"shl.301", %"zext.570"
  %".5592" = inttoptr i64 %"or.275" to ptr
  %".5593" = ptrtoint ptr %".5592" to i64
  %".5594" = add i64 %".5593", 8
  %"for_LDG.254" = inttoptr i64 %".5594" to ptr
  %".5595" = load float, ptr %"for_LDG.254"
  %".5596" = bitcast ptr %"R47" to ptr
  store float %".5595", ptr %".5596"
  ; LDG.E.SYS R9, [R24+0x8]
  %".5599" = load i32, ptr %"R24"
  %"zext.572" = zext i32 %".5599" to i64
  %".5600" = load i32, ptr %"R25"
  %"zext.573" = zext i32 %".5600" to i64
  %"shl.302" = shl i64 %"zext.573", 32
  %"or.276" = or i64 %"shl.302", %"zext.572"
  %".5601" = inttoptr i64 %"or.276" to ptr
  %".5602" = ptrtoint ptr %".5601" to i64
  %".5603" = add i64 %".5602", 8
  %"for_LDG.255" = inttoptr i64 %".5603" to ptr
  %".5604" = load float, ptr %"for_LDG.255"
  %".5605" = bitcast ptr %"R9" to ptr
  store float %".5604", ptr %".5605"
  ; LDG.E.SYS R4, [R6+0xc]
  %".5608" = load i32, ptr %"R6"
  %"zext.574" = zext i32 %".5608" to i64
  %".5609" = load i32, ptr %"R7"
  %"zext.575" = zext i32 %".5609" to i64
  %"shl.303" = shl i64 %"zext.575", 32
  %"or.277" = or i64 %"shl.303", %"zext.574"
  %".5610" = inttoptr i64 %"or.277" to ptr
  %".5611" = ptrtoint ptr %".5610" to i64
  %".5612" = add i64 %".5611", 12
  %"for_LDG.256" = inttoptr i64 %".5612" to ptr
  %".5613" = load float, ptr %"for_LDG.256"
  %".5614" = bitcast ptr %"R4" to ptr
  store float %".5613", ptr %".5614"
  ; LDG.E.SYS R5, [R12+0xc]
  %".5617" = load i32, ptr %"R12"
  %"zext.576" = zext i32 %".5617" to i64
  %".5618" = load i32, ptr %"R13"
  %"zext.577" = zext i32 %".5618" to i64
  %"shl.304" = shl i64 %"zext.577", 32
  %"or.278" = or i64 %"shl.304", %"zext.576"
  %".5619" = inttoptr i64 %"or.278" to ptr
  %".5620" = ptrtoint ptr %".5619" to i64
  %".5621" = add i64 %".5620", 12
  %"for_LDG.257" = inttoptr i64 %".5621" to ptr
  %".5622" = load float, ptr %"for_LDG.257"
  %".5623" = bitcast ptr %"R5" to ptr
  store float %".5622", ptr %".5623"
  ; LDG.E.SYS R11, [R24+0xc]
  %".5626" = load i32, ptr %"R24"
  %"zext.578" = zext i32 %".5626" to i64
  %".5627" = load i32, ptr %"R25"
  %"zext.579" = zext i32 %".5627" to i64
  %"shl.305" = shl i64 %"zext.579", 32
  %"or.279" = or i64 %"shl.305", %"zext.578"
  %".5628" = inttoptr i64 %"or.279" to ptr
  %".5629" = ptrtoint ptr %".5628" to i64
  %".5630" = add i64 %".5629", 12
  %"for_LDG.258" = inttoptr i64 %".5630" to ptr
  %".5631" = load float, ptr %"for_LDG.258"
  %".5632" = bitcast ptr %"R11" to ptr
  store float %".5631", ptr %".5632"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".5635" = xor i1 1, 1
  %".5636" = and i1 %".5635", 1
  %".5637" = and i1 %".5636", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".5639" = load i32, ptr %"R22"
  %"add.258" = add i32 %".5639", -8
  %"add.259" = add i32 %"add.258", 0
  store i32 %"add.259", ptr %"R22"
  ; IADD3 R23, R23, 0x8, RZ
  %".5642" = load i32, ptr %"R23"
  %"add.260" = add i32 %".5642", 8
  %"add.261" = add i32 %"add.260", 0
  store i32 %"add.261", ptr %"R23"
  ; FFMA R52, R52, R43, R44
  %".5645" = load float, ptr %"R52"
  %".5646" = load float, ptr %"R43"
  %".5647" = load float, ptr %"R44"
  %"fmul.223" = fmul float %".5645", %".5646"
  %"fadd.204" = fadd float %"fmul.223", %".5647"
  %".5648" = bitcast ptr %"R52" to ptr
  store float %"fadd.204", ptr %".5648"
  ; FFMA R38, R43, R38, R56
  %".5651" = load float, ptr %"R43"
  %".5652" = load float, ptr %"R38"
  %".5653" = load float, ptr %"R56"
  %"fmul.224" = fmul float %".5651", %".5652"
  %"fadd.205" = fadd float %"fmul.224", %".5653"
  %".5654" = bitcast ptr %"R38" to ptr
  store float %"fadd.205", ptr %".5654"
  ; FFMA R41, R41, R36, R52
  %".5657" = load float, ptr %"R41"
  %".5658" = load float, ptr %"R36"
  %".5659" = load float, ptr %"R52"
  %"fmul.225" = fmul float %".5657", %".5658"
  %"fadd.206" = fadd float %"fmul.225", %".5659"
  %".5660" = bitcast ptr %"R41" to ptr
  store float %"fadd.206", ptr %".5660"
  ; FFMA R38, R36, R39, R38
  %".5663" = load float, ptr %"R36"
  %".5664" = load float, ptr %"R39"
  %".5665" = load float, ptr %"R38"
  %"fmul.226" = fmul float %".5663", %".5664"
  %"fadd.207" = fadd float %"fmul.226", %".5665"
  %".5666" = bitcast ptr %"R38" to ptr
  store float %"fadd.207", ptr %".5666"
  ; FFMA R37, R37, R34, R41
  %".5669" = load float, ptr %"R37"
  %".5670" = load float, ptr %"R34"
  %".5671" = load float, ptr %"R41"
  %"fmul.227" = fmul float %".5669", %".5670"
  %"fadd.208" = fadd float %"fmul.227", %".5671"
  %".5672" = bitcast ptr %"R37" to ptr
  store float %"fadd.208", ptr %".5672"
  ; FFMA R35, R34, R35, R38
  %".5675" = load float, ptr %"R34"
  %".5676" = load float, ptr %"R35"
  %".5677" = load float, ptr %"R38"
  %"fmul.228" = fmul float %".5675", %".5676"
  %"fadd.209" = fadd float %"fmul.228", %".5677"
  %".5678" = bitcast ptr %"R35" to ptr
  store float %"fadd.209", ptr %".5678"
  ; FFMA R37, R45, R40, R37
  %".5681" = load float, ptr %"R45"
  %".5682" = load float, ptr %"R40"
  %".5683" = load float, ptr %"R37"
  %"fmul.229" = fmul float %".5681", %".5682"
  %"fadd.210" = fadd float %"fmul.229", %".5683"
  %".5684" = bitcast ptr %"R37" to ptr
  store float %"fadd.210", ptr %".5684"
  ; FFMA R35, R40, R59, R35
  %".5687" = load float, ptr %"R40"
  %".5688" = load float, ptr %"R59"
  %".5689" = load float, ptr %"R35"
  %"fmul.230" = fmul float %".5687", %".5688"
  %"fadd.211" = fadd float %"fmul.230", %".5689"
  %".5690" = bitcast ptr %"R35" to ptr
  store float %"fadd.211", ptr %".5690"
  ; FFMA R37, R57, R50, R37
  %".5693" = load float, ptr %"R57"
  %".5694" = load float, ptr %"R50"
  %".5695" = load float, ptr %"R37"
  %"fmul.231" = fmul float %".5693", %".5694"
  %"fadd.212" = fadd float %"fmul.231", %".5695"
  %".5696" = bitcast ptr %"R37" to ptr
  store float %"fadd.212", ptr %".5696"
  ; FFMA R35, R50, R55, R35
  %".5699" = load float, ptr %"R50"
  %".5700" = load float, ptr %"R55"
  %".5701" = load float, ptr %"R35"
  %"fmul.232" = fmul float %".5699", %".5700"
  %"fadd.213" = fadd float %"fmul.232", %".5701"
  %".5702" = bitcast ptr %"R35" to ptr
  store float %"fadd.213", ptr %".5702"
  ; FFMA R37, R53, R46, R37
  %".5705" = load float, ptr %"R53"
  %".5706" = load float, ptr %"R46"
  %".5707" = load float, ptr %"R37"
  %"fmul.233" = fmul float %".5705", %".5706"
  %"fadd.214" = fadd float %"fmul.233", %".5707"
  %".5708" = bitcast ptr %"R37" to ptr
  store float %"fadd.214", ptr %".5708"
  ; FFMA R35, R46, R51, R35
  %".5711" = load float, ptr %"R46"
  %".5712" = load float, ptr %"R51"
  %".5713" = load float, ptr %"R35"
  %"fmul.234" = fmul float %".5711", %".5712"
  %"fadd.215" = fadd float %"fmul.234", %".5713"
  %".5714" = bitcast ptr %"R35" to ptr
  store float %"fadd.215", ptr %".5714"
  ; FFMA R37, R47, R42, R37
  %".5717" = load float, ptr %"R47"
  %".5718" = load float, ptr %"R42"
  %".5719" = load float, ptr %"R37"
  %"fmul.235" = fmul float %".5717", %".5718"
  %"fadd.216" = fadd float %"fmul.235", %".5719"
  %".5720" = bitcast ptr %"R37" to ptr
  store float %"fadd.216", ptr %".5720"
  ; FFMA R9, R42, R9, R35
  %".5723" = load float, ptr %"R42"
  %".5724" = load float, ptr %"R9"
  %".5725" = load float, ptr %"R35"
  %"fmul.236" = fmul float %".5723", %".5724"
  %"fadd.217" = fadd float %"fmul.236", %".5725"
  %".5726" = bitcast ptr %"R9" to ptr
  store float %"fadd.217", ptr %".5726"
  ; FFMA R44, R5, R4, R37
  %".5729" = load float, ptr %"R5"
  %".5730" = load float, ptr %"R4"
  %".5731" = load float, ptr %"R37"
  %"fmul.237" = fmul float %".5729", %".5730"
  %"fadd.218" = fadd float %"fmul.237", %".5731"
  %".5732" = bitcast ptr %"R44" to ptr
  store float %"fadd.218", ptr %".5732"
  ; FFMA R56, R4, R11, R9
  %".5735" = load float, ptr %"R4"
  %".5736" = load float, ptr %"R11"
  %".5737" = load float, ptr %"R9"
  %"fmul.238" = fmul float %".5735", %".5736"
  %"fadd.219" = fadd float %"fmul.238", %".5737"
  %".5738" = bitcast ptr %"R56" to ptr
  store float %"fadd.219", ptr %".5738"
  br label %".L_x_31"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".5742" = load i32, ptr %"R22"
  %".5743" = load i1, ptr %"PT"
  %"cmp.47" = icmp ne i32 %".5742", 0
  %".5744" = or i1 %"cmp.47", %".5743"
  store i1 %".5744", ptr %"P0"
  ; @!P0 BRA `(.L_x_27)
  %".5747" = load i1, ptr %"P0"
  %".5748" = icmp eq i1 %".5747", 1
  br i1 %".5748", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".5751" = load i32, ptr %"R0"
  %".5752" = load i32, ptr %"R23"
  %"add.262" = add i32 %".5751", %".5752"
  %"add.263" = add i32 %"add.262", 0
  store i32 %"add.263", ptr %"R5"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6"
  ; LEA R11, R2.reuse, R5, 0x2
  %".5757" = load i32, ptr %"R2"
  %".5758" = load i32, ptr %"R5"
  %"shl.306" = shl i32 %".5757", 2
  %"add.264" = add i32 %"shl.306", %".5758"
  store i32 %"add.264", ptr %"R11"
  ; IMAD R7, R2, 0x3, R5
  %".5761" = load i32, ptr %"R2"
  %".5762" = load i32, ptr %"R5"
  %"mul.82" = mul i32 %".5761", 3
  %"add.265" = add i32 %"mul.82", %".5762"
  store i32 %"add.265", ptr %"R7"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".5765" = load i32, ptr %"R23"
  %".5766" = load i32, ptr %"R6"
  %"mul.83" = mul i32 %".5765", %".5766"
  %"add.266" = add i32 %"mul.83", %"Arg_3"
  store i32 %"add.266", ptr %"R8"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".5769" = load i32, ptr %"R7"
  %".5770" = load i32, ptr %"R6"
  %"mul.84" = mul i32 %".5769", %".5770"
  %"add.267" = add i32 %"mul.84", %"Arg_4"
  store i32 %"add.267", ptr %"R4"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".5773" = load i32, ptr %"R11"
  %".5774" = load i32, ptr %"R6"
  %"mul.85" = mul i32 %".5773", %".5774"
  %"add.268" = add i32 %"mul.85", %"Arg_4"
  store i32 %"add.268", ptr %"R6"
  ; LDG.E.SYS R13, [R8]
  %".5777" = load i32, ptr %"R8"
  %"zext.580" = zext i32 %".5777" to i64
  %".5778" = load i32, ptr %"R9"
  %"zext.581" = zext i32 %".5778" to i64
  %"shl.307" = shl i64 %"zext.581", 32
  %"or.280" = or i64 %"shl.307", %"zext.580"
  %".5779" = inttoptr i64 %"or.280" to ptr
  %".5780" = ptrtoint ptr %".5779" to i64
  %".5781" = add i64 %".5780", 0
  %"for_LDG.259" = inttoptr i64 %".5781" to ptr
  %".5782" = load float, ptr %"for_LDG.259"
  %".5783" = bitcast ptr %"R13" to ptr
  store float %".5782", ptr %".5783"
  ; LDG.E.SYS R11, [R4]
  %".5786" = load i32, ptr %"R4"
  %"zext.582" = zext i32 %".5786" to i64
  %".5787" = load i32, ptr %"R5"
  %"zext.583" = zext i32 %".5787" to i64
  %"shl.308" = shl i64 %"zext.583", 32
  %"or.281" = or i64 %"shl.308", %"zext.582"
  %".5788" = inttoptr i64 %"or.281" to ptr
  %".5789" = ptrtoint ptr %".5788" to i64
  %".5790" = add i64 %".5789", 0
  %"for_LDG.260" = inttoptr i64 %".5790" to ptr
  %".5791" = load float, ptr %"for_LDG.260"
  %".5792" = bitcast ptr %"R11" to ptr
  store float %".5791", ptr %".5792"
  ; LDG.E.SYS R10, [R6]
  %".5795" = load i32, ptr %"R6"
  %"zext.584" = zext i32 %".5795" to i64
  %".5796" = load i32, ptr %"R7"
  %"zext.585" = zext i32 %".5796" to i64
  %"shl.309" = shl i64 %"zext.585", 32
  %"or.282" = or i64 %"shl.309", %"zext.584"
  %".5797" = inttoptr i64 %"or.282" to ptr
  %".5798" = ptrtoint ptr %".5797" to i64
  %".5799" = add i64 %".5798", 0
  %"for_LDG.261" = inttoptr i64 %".5799" to ptr
  %".5800" = load float, ptr %"for_LDG.261"
  %".5801" = bitcast ptr %"R10" to ptr
  store float %".5800", ptr %".5801"
  ; LDG.E.SYS R25, [R8+0x4]
  %".5804" = load i32, ptr %"R8"
  %"zext.586" = zext i32 %".5804" to i64
  %".5805" = load i32, ptr %"R9"
  %"zext.587" = zext i32 %".5805" to i64
  %"shl.310" = shl i64 %"zext.587", 32
  %"or.283" = or i64 %"shl.310", %"zext.586"
  %".5806" = inttoptr i64 %"or.283" to ptr
  %".5807" = ptrtoint ptr %".5806" to i64
  %".5808" = add i64 %".5807", 4
  %"for_LDG.262" = inttoptr i64 %".5808" to ptr
  %".5809" = load float, ptr %"for_LDG.262"
  %".5810" = bitcast ptr %"R25" to ptr
  store float %".5809", ptr %".5810"
  ; LDG.E.SYS R12, [R4+0x4]
  %".5813" = load i32, ptr %"R4"
  %"zext.588" = zext i32 %".5813" to i64
  %".5814" = load i32, ptr %"R5"
  %"zext.589" = zext i32 %".5814" to i64
  %"shl.311" = shl i64 %"zext.589", 32
  %"or.284" = or i64 %"shl.311", %"zext.588"
  %".5815" = inttoptr i64 %"or.284" to ptr
  %".5816" = ptrtoint ptr %".5815" to i64
  %".5817" = add i64 %".5816", 4
  %"for_LDG.263" = inttoptr i64 %".5817" to ptr
  %".5818" = load float, ptr %"for_LDG.263"
  %".5819" = bitcast ptr %"R12" to ptr
  store float %".5818", ptr %".5819"
  ; LDG.E.SYS R24, [R6+0x4]
  %".5822" = load i32, ptr %"R6"
  %"zext.590" = zext i32 %".5822" to i64
  %".5823" = load i32, ptr %"R7"
  %"zext.591" = zext i32 %".5823" to i64
  %"shl.312" = shl i64 %"zext.591", 32
  %"or.285" = or i64 %"shl.312", %"zext.590"
  %".5824" = inttoptr i64 %"or.285" to ptr
  %".5825" = ptrtoint ptr %".5824" to i64
  %".5826" = add i64 %".5825", 4
  %"for_LDG.264" = inttoptr i64 %".5826" to ptr
  %".5827" = load float, ptr %"for_LDG.264"
  %".5828" = bitcast ptr %"R24" to ptr
  store float %".5827", ptr %".5828"
  ; LDG.E.SYS R35, [R8+0x8]
  %".5831" = load i32, ptr %"R8"
  %"zext.592" = zext i32 %".5831" to i64
  %".5832" = load i32, ptr %"R9"
  %"zext.593" = zext i32 %".5832" to i64
  %"shl.313" = shl i64 %"zext.593", 32
  %"or.286" = or i64 %"shl.313", %"zext.592"
  %".5833" = inttoptr i64 %"or.286" to ptr
  %".5834" = ptrtoint ptr %".5833" to i64
  %".5835" = add i64 %".5834", 8
  %"for_LDG.265" = inttoptr i64 %".5835" to ptr
  %".5836" = load float, ptr %"for_LDG.265"
  %".5837" = bitcast ptr %"R35" to ptr
  store float %".5836", ptr %".5837"
  ; LDG.E.SYS R34, [R4+0x8]
  %".5840" = load i32, ptr %"R4"
  %"zext.594" = zext i32 %".5840" to i64
  %".5841" = load i32, ptr %"R5"
  %"zext.595" = zext i32 %".5841" to i64
  %"shl.314" = shl i64 %"zext.595", 32
  %"or.287" = or i64 %"shl.314", %"zext.594"
  %".5842" = inttoptr i64 %"or.287" to ptr
  %".5843" = ptrtoint ptr %".5842" to i64
  %".5844" = add i64 %".5843", 8
  %"for_LDG.266" = inttoptr i64 %".5844" to ptr
  %".5845" = load float, ptr %"for_LDG.266"
  %".5846" = bitcast ptr %"R34" to ptr
  store float %".5845", ptr %".5846"
  ; LDG.E.SYS R36, [R6+0x8]
  %".5849" = load i32, ptr %"R6"
  %"zext.596" = zext i32 %".5849" to i64
  %".5850" = load i32, ptr %"R7"
  %"zext.597" = zext i32 %".5850" to i64
  %"shl.315" = shl i64 %"zext.597", 32
  %"or.288" = or i64 %"shl.315", %"zext.596"
  %".5851" = inttoptr i64 %"or.288" to ptr
  %".5852" = ptrtoint ptr %".5851" to i64
  %".5853" = add i64 %".5852", 8
  %"for_LDG.267" = inttoptr i64 %".5853" to ptr
  %".5854" = load float, ptr %"for_LDG.267"
  %".5855" = bitcast ptr %"R36" to ptr
  store float %".5854", ptr %".5855"
  ; LDG.E.SYS R37, [R8+0xc]
  %".5858" = load i32, ptr %"R8"
  %"zext.598" = zext i32 %".5858" to i64
  %".5859" = load i32, ptr %"R9"
  %"zext.599" = zext i32 %".5859" to i64
  %"shl.316" = shl i64 %"zext.599", 32
  %"or.289" = or i64 %"shl.316", %"zext.598"
  %".5860" = inttoptr i64 %"or.289" to ptr
  %".5861" = ptrtoint ptr %".5860" to i64
  %".5862" = add i64 %".5861", 12
  %"for_LDG.268" = inttoptr i64 %".5862" to ptr
  %".5863" = load float, ptr %"for_LDG.268"
  %".5864" = bitcast ptr %"R37" to ptr
  store float %".5863", ptr %".5864"
  ; LDG.E.SYS R38, [R4+0xc]
  %".5867" = load i32, ptr %"R4"
  %"zext.600" = zext i32 %".5867" to i64
  %".5868" = load i32, ptr %"R5"
  %"zext.601" = zext i32 %".5868" to i64
  %"shl.317" = shl i64 %"zext.601", 32
  %"or.290" = or i64 %"shl.317", %"zext.600"
  %".5869" = inttoptr i64 %"or.290" to ptr
  %".5870" = ptrtoint ptr %".5869" to i64
  %".5871" = add i64 %".5870", 12
  %"for_LDG.269" = inttoptr i64 %".5871" to ptr
  %".5872" = load float, ptr %"for_LDG.269"
  %".5873" = bitcast ptr %"R38" to ptr
  store float %".5872", ptr %".5873"
  ; LDG.E.SYS R39, [R6+0xc]
  %".5876" = load i32, ptr %"R6"
  %"zext.602" = zext i32 %".5876" to i64
  %".5877" = load i32, ptr %"R7"
  %"zext.603" = zext i32 %".5877" to i64
  %"shl.318" = shl i64 %"zext.603", 32
  %"or.291" = or i64 %"shl.318", %"zext.602"
  %".5878" = inttoptr i64 %"or.291" to ptr
  %".5879" = ptrtoint ptr %".5878" to i64
  %".5880" = add i64 %".5879", 12
  %"for_LDG.270" = inttoptr i64 %".5880" to ptr
  %".5881" = load float, ptr %"for_LDG.270"
  %".5882" = bitcast ptr %"R39" to ptr
  store float %".5881", ptr %".5882"
  ; IADD3 R22, R22, -0x4, RZ
  %".5885" = load i32, ptr %"R22"
  %"add.269" = add i32 %".5885", -4
  %"add.270" = add i32 %"add.269", 0
  store i32 %"add.270", ptr %"R22"
  ; IADD3 R23, R23, 0x4, RZ
  %".5888" = load i32, ptr %"R23"
  %"add.271" = add i32 %".5888", 4
  %"add.272" = add i32 %"add.271", 0
  store i32 %"add.272", ptr %"R23"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".5891" = load i32, ptr %"R22"
  %".5892" = load i1, ptr %"PT"
  %"cmp.48" = icmp ne i32 %".5891", 0
  %".5893" = and i1 %"cmp.48", %".5892"
  store i1 %".5893", ptr %"P0"
  ; FFMA R11, R11, R13, R44
  %".5896" = load float, ptr %"R11"
  %".5897" = load float, ptr %"R13"
  %".5898" = load float, ptr %"R44"
  %"fmul.239" = fmul float %".5896", %".5897"
  %"fadd.220" = fadd float %"fmul.239", %".5898"
  %".5899" = bitcast ptr %"R11" to ptr
  store float %"fadd.220", ptr %".5899"
  ; FFMA R10, R13, R10, R56
  %".5902" = load float, ptr %"R13"
  %".5903" = load float, ptr %"R10"
  %".5904" = load float, ptr %"R56"
  %"fmul.240" = fmul float %".5902", %".5903"
  %"fadd.221" = fadd float %"fmul.240", %".5904"
  %".5905" = bitcast ptr %"R10" to ptr
  store float %"fadd.221", ptr %".5905"
  ; FFMA R11, R12, R25, R11
  %".5908" = load float, ptr %"R12"
  %".5909" = load float, ptr %"R25"
  %".5910" = load float, ptr %"R11"
  %"fmul.241" = fmul float %".5908", %".5909"
  %"fadd.222" = fadd float %"fmul.241", %".5910"
  %".5911" = bitcast ptr %"R11" to ptr
  store float %"fadd.222", ptr %".5911"
  ; FFMA R10, R25, R24, R10
  %".5914" = load float, ptr %"R25"
  %".5915" = load float, ptr %"R24"
  %".5916" = load float, ptr %"R10"
  %"fmul.242" = fmul float %".5914", %".5915"
  %"fadd.223" = fadd float %"fmul.242", %".5916"
  %".5917" = bitcast ptr %"R10" to ptr
  store float %"fadd.223", ptr %".5917"
  ; FFMA R11, R34, R35, R11
  %".5920" = load float, ptr %"R34"
  %".5921" = load float, ptr %"R35"
  %".5922" = load float, ptr %"R11"
  %"fmul.243" = fmul float %".5920", %".5921"
  %"fadd.224" = fadd float %"fmul.243", %".5922"
  %".5923" = bitcast ptr %"R11" to ptr
  store float %"fadd.224", ptr %".5923"
  ; FFMA R10, R35, R36, R10
  %".5926" = load float, ptr %"R35"
  %".5927" = load float, ptr %"R36"
  %".5928" = load float, ptr %"R10"
  %"fmul.244" = fmul float %".5926", %".5927"
  %"fadd.225" = fadd float %"fmul.244", %".5928"
  %".5929" = bitcast ptr %"R10" to ptr
  store float %"fadd.225", ptr %".5929"
  ; FFMA R44, R38, R37, R11
  %".5932" = load float, ptr %"R38"
  %".5933" = load float, ptr %"R37"
  %".5934" = load float, ptr %"R11"
  %"fmul.245" = fmul float %".5932", %".5933"
  %"fadd.226" = fadd float %"fmul.245", %".5934"
  %".5935" = bitcast ptr %"R44" to ptr
  store float %"fadd.226", ptr %".5935"
  ; FFMA R56, R37, R39, R10
  %".5938" = load float, ptr %"R37"
  %".5939" = load float, ptr %"R39"
  %".5940" = load float, ptr %"R10"
  %"fmul.246" = fmul float %".5938", %".5939"
  %"fadd.227" = fadd float %"fmul.246", %".5940"
  %".5941" = bitcast ptr %"R56" to ptr
  store float %"fadd.227", ptr %".5941"
  ; @P0 BRA `(.L_x_28)
  %".5944" = load i1, ptr %"P0"
  %".5945" = icmp ne i1 %".5944", 1
  br i1 %".5945", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".5948" = load i32, ptr %"R48"
  %".5949" = load i1, ptr %"PT"
  %"cmp.49" = icmp ne i32 %".5948", 0
  %".5950" = and i1 %"cmp.49", %".5949"
  store i1 %".5950", ptr %"P0"
  ; @!P0 BRA `(.L_x_26)
  %".5953" = load i1, ptr %"P0"
  %".5954" = icmp eq i1 %".5953", 1
  br i1 %".5954", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".5957" = load i32, ptr %"R0"
  %".5958" = load i32, ptr %"R23"
  %"add.273" = add i32 %".5957", %".5958"
  %"add.274" = add i32 %"add.273", 0
  store i32 %"add.274", ptr %"R5"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9"
  ; LEA R8, R2.reuse, R5, 0x2
  %".5963" = load i32, ptr %"R2"
  %".5964" = load i32, ptr %"R5"
  %"shl.319" = shl i32 %".5963", 2
  %"add.275" = add i32 %"shl.319", %".5964"
  store i32 %"add.275", ptr %"R8"
  ; IMAD R6, R2, 0x3, R5
  %".5967" = load i32, ptr %"R2"
  %".5968" = load i32, ptr %"R5"
  %"mul.86" = mul i32 %".5967", 3
  %"add.276" = add i32 %"mul.86", %".5968"
  store i32 %"add.276", ptr %"R6"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".5971" = load i32, ptr %"R23"
  %".5972" = load i32, ptr %"R9"
  %"mul.87" = mul i32 %".5971", %".5972"
  %"add.277" = add i32 %"mul.87", %"Arg_3"
  store i32 %"add.277", ptr %"R4"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".5975" = load i32, ptr %"R6"
  %".5976" = load i32, ptr %"R9"
  %"mul.88" = mul i32 %".5975", %".5976"
  %"add.278" = add i32 %"mul.88", %"Arg_4"
  store i32 %"add.278", ptr %"R6"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".5979" = load i32, ptr %"R8"
  %".5980" = load i32, ptr %"R9"
  %"mul.89" = mul i32 %".5979", %".5980"
  %"add.279" = add i32 %"mul.89", %"Arg_4"
  store i32 %"add.279", ptr %"R8"
  ; LDG.E.SYS R13, [R4]
  %".5983" = load i32, ptr %"R4"
  %"zext.604" = zext i32 %".5983" to i64
  %".5984" = load i32, ptr %"R5"
  %"zext.605" = zext i32 %".5984" to i64
  %"shl.320" = shl i64 %"zext.605", 32
  %"or.292" = or i64 %"shl.320", %"zext.604"
  %".5985" = inttoptr i64 %"or.292" to ptr
  %".5986" = ptrtoint ptr %".5985" to i64
  %".5987" = add i64 %".5986", 0
  %"for_LDG.271" = inttoptr i64 %".5987" to ptr
  %".5988" = load float, ptr %"for_LDG.271"
  %".5989" = bitcast ptr %"R13" to ptr
  store float %".5988", ptr %".5989"
  ; LDG.E.SYS R11, [R6]
  %".5992" = load i32, ptr %"R6"
  %"zext.606" = zext i32 %".5992" to i64
  %".5993" = load i32, ptr %"R7"
  %"zext.607" = zext i32 %".5993" to i64
  %"shl.321" = shl i64 %"zext.607", 32
  %"or.293" = or i64 %"shl.321", %"zext.606"
  %".5994" = inttoptr i64 %"or.293" to ptr
  %".5995" = ptrtoint ptr %".5994" to i64
  %".5996" = add i64 %".5995", 0
  %"for_LDG.272" = inttoptr i64 %".5996" to ptr
  %".5997" = load float, ptr %"for_LDG.272"
  %".5998" = bitcast ptr %"R11" to ptr
  store float %".5997", ptr %".5998"
  ; LDG.E.SYS R10, [R8]
  %".6001" = load i32, ptr %"R8"
  %"zext.608" = zext i32 %".6001" to i64
  %".6002" = load i32, ptr %"R9"
  %"zext.609" = zext i32 %".6002" to i64
  %"shl.322" = shl i64 %"zext.609", 32
  %"or.294" = or i64 %"shl.322", %"zext.608"
  %".6003" = inttoptr i64 %"or.294" to ptr
  %".6004" = ptrtoint ptr %".6003" to i64
  %".6005" = add i64 %".6004", 0
  %"for_LDG.273" = inttoptr i64 %".6005" to ptr
  %".6006" = load float, ptr %"for_LDG.273"
  %".6007" = bitcast ptr %"R10" to ptr
  store float %".6006", ptr %".6007"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".6010" = load i32, ptr %"R48"
  %".6011" = load i1, ptr %"PT"
  %"cmp.50" = icmp ne i32 %".6010", 1
  %".6012" = and i1 %"cmp.50", %".6011"
  store i1 %".6012", ptr %"P0"
  ; FFMA R44, R11, R13, R44
  %".6015" = load float, ptr %"R11"
  %".6016" = load float, ptr %"R13"
  %".6017" = load float, ptr %"R44"
  %"fmul.247" = fmul float %".6015", %".6016"
  %"fadd.228" = fadd float %"fmul.247", %".6017"
  %".6018" = bitcast ptr %"R44" to ptr
  store float %"fadd.228", ptr %".6018"
  ; FFMA R56, R13, R10, R56
  %".6021" = load float, ptr %"R13"
  %".6022" = load float, ptr %"R10"
  %".6023" = load float, ptr %"R56"
  %"fmul.248" = fmul float %".6021", %".6022"
  %"fadd.229" = fadd float %"fmul.248", %".6023"
  %".6024" = bitcast ptr %"R56" to ptr
  store float %"fadd.229", ptr %".6024"
  ; @!P0 BRA `(.L_x_26)
  %".6027" = load i1, ptr %"P0"
  %".6028" = icmp eq i1 %".6027", 1
  br i1 %".6028", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".6031" = load i32, ptr %"R48"
  %".6032" = load i1, ptr %"PT"
  %"cmp.51" = icmp ne i32 %".6031", 2
  %".6033" = and i1 %"cmp.51", %".6032"
  store i1 %".6033", ptr %"P0"
  ; LDG.E.SYS R11, [R6+0x4]
  %".6036" = load i32, ptr %"R6"
  %"zext.610" = zext i32 %".6036" to i64
  %".6037" = load i32, ptr %"R7"
  %"zext.611" = zext i32 %".6037" to i64
  %"shl.323" = shl i64 %"zext.611", 32
  %"or.295" = or i64 %"shl.323", %"zext.610"
  %".6038" = inttoptr i64 %"or.295" to ptr
  %".6039" = ptrtoint ptr %".6038" to i64
  %".6040" = add i64 %".6039", 4
  %"for_LDG.274" = inttoptr i64 %".6040" to ptr
  %".6041" = load float, ptr %"for_LDG.274"
  %".6042" = bitcast ptr %"R11" to ptr
  store float %".6041", ptr %".6042"
  ; LDG.E.SYS R13, [R4+0x4]
  %".6045" = load i32, ptr %"R4"
  %"zext.612" = zext i32 %".6045" to i64
  %".6046" = load i32, ptr %"R5"
  %"zext.613" = zext i32 %".6046" to i64
  %"shl.324" = shl i64 %"zext.613", 32
  %"or.296" = or i64 %"shl.324", %"zext.612"
  %".6047" = inttoptr i64 %"or.296" to ptr
  %".6048" = ptrtoint ptr %".6047" to i64
  %".6049" = add i64 %".6048", 4
  %"for_LDG.275" = inttoptr i64 %".6049" to ptr
  %".6050" = load float, ptr %"for_LDG.275"
  %".6051" = bitcast ptr %"R13" to ptr
  store float %".6050", ptr %".6051"
  ; LDG.E.SYS R10, [R8+0x4]
  %".6054" = load i32, ptr %"R8"
  %"zext.614" = zext i32 %".6054" to i64
  %".6055" = load i32, ptr %"R9"
  %"zext.615" = zext i32 %".6055" to i64
  %"shl.325" = shl i64 %"zext.615", 32
  %"or.297" = or i64 %"shl.325", %"zext.614"
  %".6056" = inttoptr i64 %"or.297" to ptr
  %".6057" = ptrtoint ptr %".6056" to i64
  %".6058" = add i64 %".6057", 4
  %"for_LDG.276" = inttoptr i64 %".6058" to ptr
  %".6059" = load float, ptr %"for_LDG.276"
  %".6060" = bitcast ptr %"R10" to ptr
  store float %".6059", ptr %".6060"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".6063" = load i1, ptr %"P0"
  %".6064" = icmp ne i1 %".6063", 1
  br i1 %".6064", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  %".6067" = load i32, ptr %"R6"
  %"zext.616" = zext i32 %".6067" to i64
  %".6068" = load i32, ptr %"R7"
  %"zext.617" = zext i32 %".6068" to i64
  %"shl.326" = shl i64 %"zext.617", 32
  %"or.298" = or i64 %"shl.326", %"zext.616"
  %".6069" = inttoptr i64 %"or.298" to ptr
  %".6070" = ptrtoint ptr %".6069" to i64
  %".6071" = add i64 %".6070", 8
  %"for_LDG.277" = inttoptr i64 %".6071" to ptr
  %".6072" = load float, ptr %"for_LDG.277"
  %".6073" = bitcast ptr %"R23" to ptr
  store float %".6072", ptr %".6073"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".6078" = load i1, ptr %"P0"
  %".6079" = icmp ne i1 %".6078", 1
  br i1 %".6079", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  %".6082" = load i32, ptr %"R4"
  %"zext.618" = zext i32 %".6082" to i64
  %".6083" = load i32, ptr %"R5"
  %"zext.619" = zext i32 %".6083" to i64
  %"shl.327" = shl i64 %"zext.619", 32
  %"or.299" = or i64 %"shl.327", %"zext.618"
  %".6084" = inttoptr i64 %"or.299" to ptr
  %".6085" = ptrtoint ptr %".6084" to i64
  %".6086" = add i64 %".6085", 8
  %"for_LDG.278" = inttoptr i64 %".6086" to ptr
  %".6087" = load float, ptr %"for_LDG.278"
  %".6088" = bitcast ptr %"R25" to ptr
  store float %".6087", ptr %".6088"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".6093" = load i1, ptr %"P0"
  %".6094" = icmp ne i1 %".6093", 1
  br i1 %".6094", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  %".6097" = load i32, ptr %"R8"
  %"zext.620" = zext i32 %".6097" to i64
  %".6098" = load i32, ptr %"R9"
  %"zext.621" = zext i32 %".6098" to i64
  %"shl.328" = shl i64 %"zext.621", 32
  %"or.300" = or i64 %"shl.328", %"zext.620"
  %".6099" = inttoptr i64 %"or.300" to ptr
  %".6100" = ptrtoint ptr %".6099" to i64
  %".6101" = add i64 %".6100", 8
  %"for_LDG.279" = inttoptr i64 %".6101" to ptr
  %".6102" = load float, ptr %"for_LDG.279"
  %".6103" = bitcast ptr %"R12" to ptr
  store float %".6102", ptr %".6103"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".6108" = load float, ptr %"R11"
  %".6109" = load float, ptr %"R13"
  %".6110" = load float, ptr %"R44"
  %"fmul.249" = fmul float %".6108", %".6109"
  %"fadd.230" = fadd float %"fmul.249", %".6110"
  %".6111" = bitcast ptr %"R44" to ptr
  store float %"fadd.230", ptr %".6111"
  ; FFMA R56, R13, R10, R56
  %".6114" = load float, ptr %"R13"
  %".6115" = load float, ptr %"R10"
  %".6116" = load float, ptr %"R56"
  %"fmul.250" = fmul float %".6114", %".6115"
  %"fadd.231" = fadd float %"fmul.250", %".6116"
  %".6117" = bitcast ptr %"R56" to ptr
  store float %"fadd.231", ptr %".6117"
  ; @P0 FFMA R44, R23, R25, R44
  %".6120" = load i1, ptr %"P0"
  %".6121" = icmp ne i1 %".6120", 1
  br i1 %".6121", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".6124" = load float, ptr %"R23"
  %".6125" = load float, ptr %"R25"
  %".6126" = load float, ptr %"R44"
  %"fmul.251" = fmul float %".6124", %".6125"
  %"fadd.232" = fadd float %"fmul.251", %".6126"
  %".6127" = bitcast ptr %"R44" to ptr
  store float %"fadd.232", ptr %".6127"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".6132" = load i1, ptr %"P0"
  %".6133" = icmp ne i1 %".6132", 1
  br i1 %".6133", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".6136" = load float, ptr %"R25"
  %".6137" = load float, ptr %"R12"
  %".6138" = load float, ptr %"R56"
  %"fmul.252" = fmul float %".6136", %".6137"
  %"fadd.233" = fadd float %"fmul.252", %".6138"
  %".6139" = bitcast ptr %"R56" to ptr
  store float %"fadd.233", ptr %".6139"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  %".6144" = load i32, ptr %"R26"
  %"zext.622" = zext i32 %".6144" to i64
  %"zext.623" = zext i32 0 to i64
  %"shl.329" = shl i64 %"zext.623", 32
  %"or.301" = or i64 %"shl.329", %"zext.622"
  %".6145" = inttoptr i64 %"or.301" to ptr
  %".6146" = ptrtoint ptr %".6145" to i64
  %".6147" = add i64 %".6146", 0
  %"for_LDG.280" = inttoptr i64 %".6147" to ptr
  %".6148" = load float, ptr %"for_LDG.280"
  %".6149" = bitcast ptr %"R5" to ptr
  store float %".6148", ptr %".6149"
  ; MOV R4, 0x3bbb989d
  %".6152" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".6152"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  %".6156" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".6156"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".6160" = load float, ptr %"R5"
  %".6161" = load float, ptr %"R44"
  %"fadd.234" = fadd float %".6160", %".6161"
  %".6162" = bitcast ptr %"R5" to ptr
  store float %"fadd.234", ptr %".6162"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".6165" = load float, ptr %"R5"
  %".6166" = fneg float %".6165"
  %".6167" = load float, ptr %"R4"
  %"fmul.253" = fmul float %".6166", %".6167"
  %"fadd.235" = fadd float %"fmul.253", 0x3fe0000000000000
  %".6168" = bitcast ptr %"R4" to ptr
  store float %"fadd.235", ptr %".6168"
  ; FFMA.RM R4, R4, R7, 12582913
  %".6171" = load float, ptr %"R4"
  %".6172" = load float, ptr %"R7"
  %"fmul.254" = fmul float %".6171", %".6172"
  %"fadd.236" = fadd float %"fmul.254", 0x4168000020000000
  %".6173" = bitcast ptr %"R4" to ptr
  store float %"fadd.236", ptr %".6173"
  ; FADD R6, R4.reuse, -12583039
  %".6176" = load float, ptr %"R4"
  %"fadd.237" = fadd float %".6176", 0xc168000fe0000000
  %".6177" = bitcast ptr %"R6" to ptr
  store float %"fadd.237", ptr %".6177"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".6180" = icmp ult i32 23, 32
  %"SHF_min.20" = select  i1 %".6180", i32 23, i32 32
  %".6181" = load i32, ptr %"R4"
  %"zext.624" = zext i32 0 to i64
  %"zext.625" = zext i32 %".6181" to i64
  %"zext.626" = zext i32 23 to i64
  %"shl.330" = shl i64 %"zext.624", 32
  %"or.302" = or i64 %"shl.330", %"zext.625"
  %"shl.331" = shl i64 %"or.302", %"zext.626"
  %"and.12" = and i64 %"shl.331", 4294967295
  %"trunc32.20" = trunc i64 %"and.12" to i32
  store i32 %"trunc32.20", ptr %"R4"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".6184" = load float, ptr %"R5"
  %".6185" = fneg float %".6184"
  %".6186" = load float, ptr %"R6"
  %".6187" = fneg float %".6186"
  %"fmul.255" = fmul float %".6185", 0x3ff7154760000000
  %"fadd.238" = fadd float %"fmul.255", %".6187"
  %".6188" = bitcast ptr %"R6" to ptr
  store float %"fadd.238", ptr %".6188"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".6191" = load float, ptr %"R5"
  %".6192" = fneg float %".6191"
  %".6193" = load float, ptr %"R6"
  %"fmul.256" = fmul float %".6192", 0x3e54ae0c00000000
  %"fadd.239" = fadd float %"fmul.256", %".6193"
  %".6194" = bitcast ptr %"R6" to ptr
  store float %"fadd.239", ptr %".6194"
  ; MUFU.EX2 R5, R6
  %".6197" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".6197")
  %".6198" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".6198"
  ; FFMA R24, R4, R5, 1
  %".6201" = load float, ptr %"R4"
  %".6202" = load float, ptr %"R5"
  %"fmul.257" = fmul float %".6201", %".6202"
  %"fadd.240" = fadd float %"fmul.257", 0x3ff0000000000000
  %".6203" = bitcast ptr %"R24" to ptr
  store float %"fadd.240", ptr %".6203"
  ; IADD3 R4, R24, 0x1800000, RZ
  %".6206" = load i32, ptr %"R24"
  %"add.280" = add i32 %".6206", 25165824
  %"add.281" = add i32 %"add.280", 0
  store i32 %"add.281", ptr %"R4"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".6209" = load i32, ptr %"R4"
  %".6210" = and i32 %".6209", 2139095040
  store i32 %".6210", ptr %"R4"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".6213" = load i32, ptr %"R4"
  %".6214" = load i1, ptr %"PT"
  %"cmp.52" = icmp sgt i32 %".6213", 33554431
  %".6215" = and i1 %"cmp.52", %".6214"
  store i1 %".6215", ptr %"P0"
  ; @P0 BRA `(.L_x_33)
  %".6218" = load i1, ptr %"P0"
  %".6219" = icmp ne i1 %".6218", 1
  br i1 %".6219", label %".L_x_33", label %".L_x_26_split_0x3910_CALL_0x3930"
.L_x_26_split_0x3910_CALL_0x3930:
  ; MOV R10, 0x3930
  store i32 14640, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".6226" = icmp ult i32 1, 32
  %"SHF_min.21" = select  i1 %".6226", i32 1, i32 32
  %".6227" = load i32, ptr %"R24"
  %"zext.627" = zext i32 0 to i64
  %"zext.628" = zext i32 %".6227" to i64
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
  %".6232" = icmp ult i32 24, 32
  %"SHF_min.22" = select  i1 %".6232", i32 24, i32 32
  %".6233" = load i32, ptr %"R11"
  %"zext.630" = zext i32 %".6233" to i64
  %"zext.631" = zext i32 0 to i64
  %"zext.632" = zext i32 24 to i64
  %"shl.334" = shl i64 %"zext.630", 32
  %"or.304" = or i64 %"shl.334", %"zext.631"
  %"lshr.13" = lshr i64 %"or.304", %"zext.632"
  %"lshr.14" = lshr i64 %"lshr.13", 32
  %"trunc32.22" = trunc i64 %"lshr.14" to i32
  store i32 %"trunc32.22", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".6236" = load i32, ptr %"R25"
  %".6237" = load i1, ptr %"PT"
  %"cmp.53" = icmp ne i32 %".6236", 0
  %".6238" = and i1 %"cmp.53", %".6237"
  store i1 %".6238", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".6241" = load i1, ptr %"P0"
  %".6242" = icmp ne i1 %".6241", 1
  br i1 %".6242", label %".L_x_49...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".6245" = icmp ult i32 1, 32
  %"SHF_min.23" = select  i1 %".6245", i32 1, i32 32
  %".6246" = load i32, ptr %"R24"
  %"zext.633" = zext i32 0 to i64
  %"zext.634" = zext i32 %".6246" to i64
  %"zext.635" = zext i32 1 to i64
  %"shl.335" = shl i64 %"zext.633", 32
  %"or.305" = or i64 %"shl.335", %"zext.634"
  %"shl.336" = shl i64 %"or.305", %"zext.635"
  %"and.14" = and i64 %"shl.336", 4294967295
  %"trunc32.23" = trunc i64 %"and.14" to i32
  store i32 %"trunc32.23", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".6249" = load i32, ptr %"R11"
  %".6250" = load i1, ptr %"PT"
  %"cmp.54" = icmp ne i32 %".6249", 0
  %".6251" = and i1 %"cmp.54", %".6250"
  store i1 %".6251", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6254" = load i1, ptr %"P0"
  %".6255" = icmp ne i1 %".6254", 1
  br i1 %".6255", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6258" = load float, ptr %"R24"
  %"fmul.258" = fmul float %".6258", 0x43f0000000000000
  %"fadd.241" = fadd float %"fmul.258",              0x0
  %".6259" = bitcast ptr %"R12" to ptr
  store float %"fadd.241", ptr %".6259"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6264" = load float, ptr %"R24"
  %"fmul.259" = fmul float %".6264", 0x43f0000000000000
  %"fadd.242" = fadd float %"fmul.259",              0x0
  %".6265" = bitcast ptr %"R12" to ptr
  store float %"fadd.242", ptr %".6265"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3:
  ; @!P0 MUFU.RCP R11, R24
  %".6270" = load i1, ptr %"P0"
  %".6271" = icmp eq i1 %".6270", 1
  br i1 %".6271", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".6274" = load float, ptr %"R24"
  %".6275" = fdiv float 0x3ff0000000000000, %".6274"
  %".6276" = bitcast ptr %"R11" to ptr
  store float %".6275", ptr %".6276"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3:
  ; MUFU.RCP R11, R24
  %".6281" = load float, ptr %"R24"
  %".6282" = fdiv float 0x3ff0000000000000, %".6281"
  %".6283" = bitcast ptr %"R11" to ptr
  store float %".6282", ptr %".6283"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3:
  ; @P0 MUFU.RCP R13, R12
  %".6288" = load i1, ptr %"P0"
  %".6289" = icmp ne i1 %".6288", 1
  br i1 %".6289", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".6292" = load float, ptr %"R12"
  %".6293" = fdiv float 0x3ff0000000000000, %".6292"
  %".6294" = bitcast ptr %"R13" to ptr
  store float %".6293", ptr %".6294"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3:
  ; MUFU.RCP R13, R12
  %".6299" = load float, ptr %"R12"
  %".6300" = fdiv float 0x3ff0000000000000, %".6299"
  %".6301" = bitcast ptr %"R13" to ptr
  store float %".6300", ptr %".6301"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3:
  ; @P0 FFMA R22, R12, R13, -1
  %".6306" = load i1, ptr %"P0"
  %".6307" = icmp ne i1 %".6306", 1
  br i1 %".6307", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".6310" = load float, ptr %"R12"
  %".6311" = load float, ptr %"R13"
  %"fmul.260" = fmul float %".6310", %".6311"
  %"fadd.243" = fadd float %"fmul.260", 0xbff0000000000000
  %".6312" = bitcast ptr %"R22" to ptr
  store float %"fadd.243", ptr %".6312"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3:
  ; FFMA R22, R12, R13, -1
  %".6317" = load float, ptr %"R12"
  %".6318" = load float, ptr %"R13"
  %"fmul.261" = fmul float %".6317", %".6318"
  %"fadd.244" = fadd float %"fmul.261", 0xbff0000000000000
  %".6319" = bitcast ptr %"R22" to ptr
  store float %"fadd.244", ptr %".6319"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".6324" = load i1, ptr %"P0"
  %".6325" = icmp ne i1 %".6324", 1
  br i1 %".6325", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".6328" = load float, ptr %"R22"
  %".6329" = fneg float %".6328"
  %"fadd.245" = fadd float %".6329",              0x0
  %".6330" = bitcast ptr %"R22" to ptr
  store float %"fadd.245", ptr %".6330"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3:
  ; FADD.FTZ R22, -R22, -RZ
  %".6335" = load float, ptr %"R22"
  %".6336" = fneg float %".6335"
  %"fadd.246" = fadd float %".6336",              0x0
  %".6337" = bitcast ptr %"R22" to ptr
  store float %"fadd.246", ptr %".6337"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3:
  ; @P0 FFMA R22, R13, R22, R13
  %".6342" = load i1, ptr %"P0"
  %".6343" = icmp ne i1 %".6342", 1
  br i1 %".6343", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".6346" = load float, ptr %"R13"
  %".6347" = load float, ptr %"R22"
  %".6348" = load float, ptr %"R13"
  %"fmul.262" = fmul float %".6346", %".6347"
  %"fadd.247" = fadd float %"fmul.262", %".6348"
  %".6349" = bitcast ptr %"R22" to ptr
  store float %"fadd.247", ptr %".6349"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3:
  ; FFMA R22, R13, R22, R13
  %".6354" = load float, ptr %"R13"
  %".6355" = load float, ptr %"R22"
  %".6356" = load float, ptr %"R13"
  %"fmul.263" = fmul float %".6354", %".6355"
  %"fadd.248" = fadd float %"fmul.263", %".6356"
  %".6357" = bitcast ptr %"R22" to ptr
  store float %"fadd.248", ptr %".6357"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6362" = load i1, ptr %"P0"
  %".6363" = icmp ne i1 %".6362", 1
  br i1 %".6363", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6366" = load float, ptr %"R22"
  %"fmul.264" = fmul float %".6366", 0x43f0000000000000
  %"fadd.249" = fadd float %"fmul.264",              0x0
  %".6367" = bitcast ptr %"R11" to ptr
  store float %"fadd.249", ptr %".6367"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6372" = load float, ptr %"R22"
  %"fmul.265" = fmul float %".6372", 0x43f0000000000000
  %"fadd.250" = fadd float %"fmul.265",              0x0
  %".6373" = bitcast ptr %"R11" to ptr
  store float %"fadd.250", ptr %".6373"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...3:
  ; BRA `(.L_x_50)
  br label %".L_x_50...3"
.L_x_49...3:
  ; IADD3 R34, R25, -0xfd, RZ
  %".6380" = load i32, ptr %"R25"
  %"add.282" = add i32 %".6380", -253
  %"add.283" = add i32 %"add.282", 0
  store i32 %"add.283", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".6383" = load i32, ptr %"R34"
  %".6384" = load i1, ptr %"PT"
  %"cmp.55" = icmp sgt i32 %".6383", 1
  %".6385" = and i1 %"cmp.55", %".6384"
  store i1 %".6385", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".6388" = load i1, ptr %"P0"
  %".6389" = icmp ne i1 %".6388", 1
  br i1 %".6389", label %".L_x_51...3", label %".L_x_49_split_0x4a30...3"
.L_x_49_split_0x4a30...3:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".6392" = load float, ptr %"R24"
  %".6393" = bitcast float %".6392" to i32
  %".6394" = and i32 %".6393", 8388607
  store i32 %".6394", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".6399" = load i32, ptr %"R11"
  %".6400" = or i32 %".6399", 1065353216
  store i32 %".6400", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".6403" = load i32, ptr %"R34"
  %".6404" = icmp ult i32 %".6403", 32
  %"SHF_min.24" = select  i1 %".6404", i32 %".6403", i32 32
  %".6405" = load i32, ptr %"R23"
  %".6406" = load i32, ptr %"R34"
  %"zext.636" = zext i32 0 to i64
  %"zext.637" = zext i32 %".6405" to i64
  %"zext.638" = zext i32 %".6406" to i64
  %"shl.337" = shl i64 %"zext.636", 32
  %"or.306" = or i64 %"shl.337", %"zext.637"
  %"shl.338" = shl i64 %"or.306", %"zext.638"
  %"and.15" = and i64 %"shl.338", 4294967295
  %"trunc32.24" = trunc i64 %"and.15" to i32
  store i32 %"trunc32.24", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".6409" = load float, ptr %"R11"
  %".6410" = fdiv float 0x3ff0000000000000, %".6409"
  %".6411" = bitcast ptr %"R12" to ptr
  store float %".6410", ptr %".6411"
  ; FFMA R13, R11, R12, -1
  %".6414" = load float, ptr %"R11"
  %".6415" = load float, ptr %"R12"
  %"fmul.266" = fmul float %".6414", %".6415"
  %"fadd.251" = fadd float %"fmul.266", 0xbff0000000000000
  %".6416" = bitcast ptr %"R13" to ptr
  store float %"fadd.251", ptr %".6416"
  ; FADD.FTZ R13, -R13, -RZ
  %".6419" = load float, ptr %"R13"
  %".6420" = fneg float %".6419"
  %"fadd.252" = fadd float %".6420",              0x0
  %".6421" = bitcast ptr %"R13" to ptr
  store float %"fadd.252", ptr %".6421"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".6424" = load float, ptr %"R12"
  %".6425" = load float, ptr %"R13"
  %".6426" = load float, ptr %"R12"
  %"fmul.267" = fmul float %".6424", %".6425"
  %"fadd.253" = fadd float %"fmul.267", %".6426"
  %".6427" = bitcast ptr %"R22" to ptr
  store float %"fadd.253", ptr %".6427"
  ; FFMA.RP R13, R12, R13, R12
  %".6430" = load float, ptr %"R12"
  %".6431" = load float, ptr %"R13"
  %".6432" = load float, ptr %"R12"
  %"fmul.268" = fmul float %".6430", %".6431"
  %"fadd.254" = fadd float %"fmul.268", %".6432"
  %".6433" = bitcast ptr %"R13" to ptr
  store float %"fadd.254", ptr %".6433"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".6436" = load float, ptr %"R22"
  %".6437" = bitcast float %".6436" to i32
  %".6438" = and i32 %".6437", 8388607
  store i32 %".6438", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".6441" = load float, ptr %"R22"
  %".6442" = load float, ptr %"R13"
  %".6443" = load i1, ptr %"PT"
  %"fcmp_ordered.2" = fcmp une float %".6441", %".6442"
  %".6444" = and i1 %"fcmp_ordered.2", %".6443"
  store i1 %".6444", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".6447" = load i32, ptr %"R12"
  %".6448" = or i32 %".6447", 8388608
  store i32 %".6448", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".6451" = load i1, ptr %"P0"
  %".6452" = icmp eq i1 %".6451", 1
  %"sel.4" = select  i1 %".6452", i32 0, i32 4294967295
  store i32 %"sel.4", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".6455" = load i32, ptr %"R23"
  %".6456" = load i32, ptr %"R12"
  %".6457" = and i32 %".6455", %".6456"
  store i32 %".6457", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".6460" = load i32, ptr %"R13"
  %".6461" = sub i32 0, %".6460"
  %"add.284" = add i32 %".6461", 0
  %"add.285" = add i32 %"add.284", 0
  store i32 %"add.285", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".6464" = load i32, ptr %"R34"
  %".6465" = icmp ult i32 %".6464", 32
  %"SHF_min.25" = select  i1 %".6465", i32 %".6464", i32 32
  %".6466" = load i32, ptr %"R23"
  %".6467" = load i32, ptr %"R34"
  %"zext.639" = zext i32 %".6466" to i64
  %"zext.640" = zext i32 0 to i64
  %"zext.641" = zext i32 %".6467" to i64
  %"shl.339" = shl i64 %"zext.639", 32
  %"or.307" = or i64 %"shl.339", %"zext.640"
  %"lshr.15" = lshr i64 %"or.307", %"zext.641"
  %"lshr.16" = lshr i64 %"lshr.15", 32
  %"trunc32.25" = trunc i64 %"lshr.16" to i32
  store i32 %"trunc32.25", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".6470" = load i32, ptr %"R13"
  %".6471" = load i32, ptr %"R34"
  %".6472" = load i32, ptr %"R12"
  %"LOP3_result.8" = call i32 @"custom_lop3"(i32 %".6472", i32 0, i32 %".6470", i32 %".6471")
  %".6473" = trunc i32 %"LOP3_result.8" to i1
  store i1 %".6473", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".6476" = load i32, ptr %"R23"
  %"LOP3_result.9" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".6476", i32 1)
  %".6477" = trunc i32 %"LOP3_result.9" to i1
  store i1 %".6477", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".6480" = load i32, ptr %"R23"
  %"LOP3_result.10" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".6480", i32 2)
  %".6481" = trunc i32 %"LOP3_result.10" to i1
  store i1 %".6481", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".6484" = load i1, ptr %"P0"
  %".6485" = sub i1 0, %".6484"
  %".6486" = load i1, ptr %"P1"
  %".6487" = sub i1 0, %".6486"
  %".6488" = or i1 %".6485", %".6487"
  %".6489" = and i1 %".6488", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".6491" = load float, ptr %"R24"
  %".6492" = bitcast float %".6491" to i32
  %"LOP3_result.11" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".6492", i32 8388607)
  %".6493" = trunc i32 %"LOP3_result.11" to i1
  store i1 %".6493", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".6496" = load i1, ptr %"P0"
  %".6497" = icmp eq i1 %".6496", 1
  %"sel.5" = select  i1 %".6497", i32 0, i32 1
  store i32 %"sel.5", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".6500" = load i32, ptr %"R11"
  %".6501" = sub i32 0, %".6500"
  %"add.286" = add i32 %".6501", 0
  %"add.287" = add i32 %"add.286", 0
  store i32 %"add.287", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".6504" = load i32, ptr %"R11"
  %".6505" = load i1, ptr %"PT"
  %"cmp.56" = icmp sge i32 %".6504", 0
  %".6506" = and i1 %"cmp.56", %".6505"
  store i1 %".6506", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".6509" = load i32, ptr %"R25"
  %"add.288" = add i32 %".6509", -252
  %"add.289" = add i32 %"add.288", 0
  store i32 %"add.289", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".6512" = load i32, ptr %"R11"
  %".6513" = icmp ult i32 %".6512", 32
  %"SHF_min.26" = select  i1 %".6513", i32 %".6512", i32 32
  %".6514" = load i32, ptr %"R12"
  %".6515" = load i32, ptr %"R11"
  %"zext.642" = zext i32 %".6514" to i64
  %"zext.643" = zext i32 0 to i64
  %"zext.644" = zext i32 %".6515" to i64
  %"shl.340" = shl i64 %"zext.642", 32
  %"or.308" = or i64 %"shl.340", %"zext.643"
  %"lshr.17" = lshr i64 %"or.308", %"zext.644"
  %"lshr.18" = lshr i64 %"lshr.17", 32
  %"trunc32.26" = trunc i64 %"lshr.18" to i32
  store i32 %"trunc32.26", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".6518" = load i1, ptr %"P0"
  %".6519" = icmp eq i1 %".6518", 1
  br i1 %".6519", label %".L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3"
.L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".6522" = load i32, ptr %"R11"
  %"add.290" = add i32 %".6522", 1
  %"add.291" = add i32 %"add.290", 0
  store i32 %"add.291", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3:
  ; IADD3 R11, R11, 0x1, RZ
  %".6527" = load i32, ptr %"R11"
  %"add.292" = add i32 %".6527", 1
  %"add.293" = add i32 %"add.292", 0
  store i32 %"add.293", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...3"
.L_x_49_split_0x4be0...3:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".6532" = load i1, ptr %"P1"
  %".6533" = icmp eq i1 %".6532", 1
  br i1 %".6533", label %".L_x_49_split_0x4be0...3_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...3"
.L_x_49_split_0x4be0...3_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".6536" = icmp ult i32 1, 32
  %"SHF_min.27" = select  i1 %".6536", i32 1, i32 32
  %".6537" = load i32, ptr %"R11"
  %"zext.645" = zext i32 0 to i64
  %"zext.646" = zext i32 %".6537" to i64
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
  %".6542" = icmp ult i32 1, 32
  %"SHF_min.28" = select  i1 %".6542", i32 1, i32 32
  %".6543" = load i32, ptr %"R11"
  %"zext.648" = zext i32 0 to i64
  %"zext.649" = zext i32 %".6543" to i64
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
  %".6548" = load i32, ptr %"R11"
  %".6549" = load float, ptr %"R24"
  %".6550" = bitcast float %".6549" to i32
  %".6551" = or i32 %".6548", 2147483648
  %".6552" = or i32 %".6548", %".6550"
  %".6553" = and i32 %".6551", %".6552"
  store i32 %".6553", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...3"
.L_x_51...3:
  ; MUFU.RCP R11, R24
  %".6558" = load float, ptr %"R24"
  %".6559" = fdiv float 0x3ff0000000000000, %".6558"
  %".6560" = bitcast ptr %"R11" to ptr
  store float %".6559", ptr %".6560"
  br label %".L_x_50...3"
.L_x_50...3:
  ; BSYNC B1
  br label %".L_x_48...3"
.L_x_48...3:
  ; MOV R22, R11
  %".6566" = load float, ptr %"R11"
  %".6567" = bitcast ptr %"R22" to ptr
  store float %".6566", ptr %".6567"
  ; MOV R11, 0x0
  store i32 0, ptr %"R11"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.2"
.L_x_52...3:
  ; BRA `(.L_x_52)
  br label %".L_x_52...3"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.2:
.L_x_26_split_0x3910_postCALL_0x3930:
  ; BRA `(.L_x_34)
  br label %".L_x_34"
.L_x_33:
  ; MUFU.RCP R22, R24
  %".6578" = load float, ptr %"R24"
  %".6579" = fdiv float 0x3ff0000000000000, %".6578"
  %".6580" = bitcast ptr %"R22" to ptr
  store float %".6579", ptr %".6580"
  ; FFMA R4, R24, R22, -1
  %".6583" = load float, ptr %"R24"
  %".6584" = load float, ptr %"R22"
  %"fmul.269" = fmul float %".6583", %".6584"
  %"fadd.255" = fadd float %"fmul.269", 0xbff0000000000000
  %".6585" = bitcast ptr %"R4" to ptr
  store float %"fadd.255", ptr %".6585"
  ; FADD.FTZ R5, -R4, -RZ
  %".6588" = load float, ptr %"R4"
  %".6589" = fneg float %".6588"
  %"fadd.256" = fadd float %".6589",              0x0
  %".6590" = bitcast ptr %"R5" to ptr
  store float %"fadd.256", ptr %".6590"
  ; FFMA R22, R22, R5, R22
  %".6593" = load float, ptr %"R22"
  %".6594" = load float, ptr %"R5"
  %".6595" = load float, ptr %"R22"
  %"fmul.270" = fmul float %".6593", %".6594"
  %"fadd.257" = fadd float %"fmul.270", %".6595"
  %".6596" = bitcast ptr %"R22" to ptr
  store float %"fadd.257", ptr %".6596"
  br label %".L_x_34"
.L_x_34:
  ; BSYNC B0
  br label %".L_x_32"
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  %".6602" = load i32, ptr %"R32"
  %"zext.651" = zext i32 %".6602" to i64
  %".6603" = load i32, ptr %"R33"
  %"zext.652" = zext i32 %".6603" to i64
  %"shl.345" = shl i64 %"zext.652", 32
  %"or.311" = or i64 %"shl.345", %"zext.651"
  %".6604" = inttoptr i64 %"or.311" to ptr
  %".6605" = ptrtoint ptr %".6604" to i64
  %".6606" = add i64 %".6605", 0
  %"for_LDG.281" = inttoptr i64 %".6606" to ptr
  %".6607" = load float, ptr %"for_LDG.281"
  %".6608" = bitcast ptr %"R5" to ptr
  store float %".6607", ptr %".6608"
  ; MOV R4, 0x3bbb989d
  %".6611" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".6611"
  ; MOV R7, 0x437c0000
  %".6614" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".6614"
  ; FADD R5, R5, R56
  %".6617" = load float, ptr %"R5"
  %".6618" = load float, ptr %"R56"
  %"fadd.258" = fadd float %".6617", %".6618"
  %".6619" = bitcast ptr %"R5" to ptr
  store float %"fadd.258", ptr %".6619"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".6622" = load float, ptr %"R5"
  %".6623" = fneg float %".6622"
  %".6624" = load float, ptr %"R4"
  %"fmul.271" = fmul float %".6623", %".6624"
  %"fadd.259" = fadd float %"fmul.271", 0x3fe0000000000000
  %".6625" = bitcast ptr %"R4" to ptr
  store float %"fadd.259", ptr %".6625"
  ; FFMA.RM R4, R4, R7, 12582913
  %".6628" = load float, ptr %"R4"
  %".6629" = load float, ptr %"R7"
  %"fmul.272" = fmul float %".6628", %".6629"
  %"fadd.260" = fadd float %"fmul.272", 0x4168000020000000
  %".6630" = bitcast ptr %"R4" to ptr
  store float %"fadd.260", ptr %".6630"
  ; FADD R6, R4.reuse, -12583039
  %".6633" = load float, ptr %"R4"
  %"fadd.261" = fadd float %".6633", 0xc168000fe0000000
  %".6634" = bitcast ptr %"R6" to ptr
  store float %"fadd.261", ptr %".6634"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".6637" = icmp ult i32 23, 32
  %"SHF_min.29" = select  i1 %".6637", i32 23, i32 32
  %".6638" = load i32, ptr %"R4"
  %"zext.653" = zext i32 0 to i64
  %"zext.654" = zext i32 %".6638" to i64
  %"zext.655" = zext i32 23 to i64
  %"shl.346" = shl i64 %"zext.653", 32
  %"or.312" = or i64 %"shl.346", %"zext.654"
  %"shl.347" = shl i64 %"or.312", %"zext.655"
  %"and.18" = and i64 %"shl.347", 4294967295
  %"trunc32.29" = trunc i64 %"and.18" to i32
  store i32 %"trunc32.29", ptr %"R23"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".6641" = load float, ptr %"R5"
  %".6642" = fneg float %".6641"
  %".6643" = load float, ptr %"R6"
  %".6644" = fneg float %".6643"
  %"fmul.273" = fmul float %".6642", 0x3ff7154760000000
  %"fadd.262" = fadd float %"fmul.273", %".6644"
  %".6645" = bitcast ptr %"R6" to ptr
  store float %"fadd.262", ptr %".6645"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".6648" = load float, ptr %"R5"
  %".6649" = fneg float %".6648"
  %".6650" = load float, ptr %"R6"
  %"fmul.274" = fmul float %".6649", 0x3e54ae0c00000000
  %"fadd.263" = fadd float %"fmul.274", %".6650"
  %".6651" = bitcast ptr %"R6" to ptr
  store float %"fadd.263", ptr %".6651"
  ; MUFU.EX2 R6, R6
  %".6654" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".6654")
  %".6655" = bitcast ptr %"R6" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".6655"
  ; FFMA R23, R23, R6, 1
  %".6658" = load float, ptr %"R23"
  %".6659" = load float, ptr %"R6"
  %"fmul.275" = fmul float %".6658", %".6659"
  %"fadd.264" = fadd float %"fmul.275", 0x3ff0000000000000
  %".6660" = bitcast ptr %"R23" to ptr
  store float %"fadd.264", ptr %".6660"
  ; @!P4 BRA `(.L_x_35)
  %".6663" = load i1, ptr %"P4"
  %".6664" = icmp eq i1 %".6663", 1
  br i1 %".6664", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".6667" = load i32, ptr %"R18"
  %".6668" = load i1, ptr %"PT"
  %"cmp.57" = icmp sge i32 %".6667", 3
  %".6669" = and i1 %"cmp.57", %".6668"
  store i1 %".6669", ptr %"P0"
  ; MOV R34, RZ
  %".6672" = load i32, ptr %"RZ"
  store i32 %".6672", ptr %"R34"
  ; @!P0 BRA `(.L_x_36)
  %".6675" = load i1, ptr %"P0"
  %".6676" = icmp eq i1 %".6675", 1
  br i1 %".6676", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".6679" = load i32, ptr %"R20"
  %".6680" = load i1, ptr %"PT"
  %"cmp.58" = icmp sgt i32 %".6679", 0
  %".6681" = and i1 %"cmp.58", %".6680"
  store i1 %".6681", ptr %"P0"
  ; MOV R34, RZ
  %".6684" = load i32, ptr %"RZ"
  store i32 %".6684", ptr %"R34"
  ; MOV R35, R20
  %".6687" = load i32, ptr %"R20"
  store i32 %".6687", ptr %"R35"
  ; @!P0 BRA `(.L_x_37)
  %".6690" = load i1, ptr %"P0"
  %".6691" = icmp eq i1 %".6690", 1
  br i1 %".6691", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".6694" = load i32, ptr %"R35"
  %".6695" = load i1, ptr %"PT"
  %"cmp.59" = icmp sgt i32 %".6694", 12
  %".6696" = and i1 %"cmp.59", %".6695"
  store i1 %".6696", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".6699" = and i1 1, 1
  %".6700" = or i1 %".6699", 1
  ; @!P1 BRA `(.L_x_38)
  %".6702" = load i1, ptr %"P1"
  %".6703" = icmp eq i1 %".6702", 1
  br i1 %".6703", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".6706" = xor i1 1, 1
  %".6707" = and i1 %".6706", 1
  %".6708" = and i1 %".6707", 1
  br label %".L_x_39"
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41"
  ; IADD3 R10, R3, R34, RZ
  %".6713" = load i32, ptr %"R3"
  %".6714" = load i32, ptr %"R34"
  %"add.294" = add i32 %".6713", %".6714"
  %"add.295" = add i32 %"add.294", 0
  store i32 %"add.295", ptr %"R10"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".6717" = load i32, ptr %"R34"
  %".6718" = load i32, ptr %"R41"
  %"mul.90" = mul i32 %".6717", %".6718"
  %"add.296" = add i32 %"mul.90", %"Arg_3"
  store i32 %"add.296", ptr %"R12"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".6721" = load i32, ptr %"R10"
  %".6722" = load i32, ptr %"R41"
  %"mul.91" = mul i32 %".6721", %".6722"
  %"add.297" = add i32 %"mul.91", %"Arg_4"
  store i32 %"add.297", ptr %"R10"
  ; IADD3 R4, R34, 0x4, RZ
  %".6725" = load i32, ptr %"R34"
  %"add.298" = add i32 %".6725", 4
  %"add.299" = add i32 %"add.298", 0
  store i32 %"add.299", ptr %"R4"
  ; LDG.E.SYS R25, [R12]
  %".6728" = load i32, ptr %"R12"
  %"zext.656" = zext i32 %".6728" to i64
  %".6729" = load i32, ptr %"R13"
  %"zext.657" = zext i32 %".6729" to i64
  %"shl.348" = shl i64 %"zext.657", 32
  %"or.313" = or i64 %"shl.348", %"zext.656"
  %".6730" = inttoptr i64 %"or.313" to ptr
  %".6731" = ptrtoint ptr %".6730" to i64
  %".6732" = add i64 %".6731", 0
  %"for_LDG.282" = inttoptr i64 %".6732" to ptr
  %".6733" = load float, ptr %"for_LDG.282"
  %".6734" = bitcast ptr %"R25" to ptr
  store float %".6733", ptr %".6734"
  ; IADD3 R6, R3, R4, RZ
  %".6737" = load i32, ptr %"R3"
  %".6738" = load i32, ptr %"R4"
  %"add.300" = add i32 %".6737", %".6738"
  %"add.301" = add i32 %"add.300", 0
  store i32 %"add.301", ptr %"R6"
  ; LDG.E.SYS R36, [R10]
  %".6741" = load i32, ptr %"R10"
  %"zext.658" = zext i32 %".6741" to i64
  %".6742" = load i32, ptr %"R11"
  %"zext.659" = zext i32 %".6742" to i64
  %"shl.349" = shl i64 %"zext.659", 32
  %"or.314" = or i64 %"shl.349", %"zext.658"
  %".6743" = inttoptr i64 %"or.314" to ptr
  %".6744" = ptrtoint ptr %".6743" to i64
  %".6745" = add i64 %".6744", 0
  %"for_LDG.283" = inttoptr i64 %".6745" to ptr
  %".6746" = load float, ptr %"for_LDG.283"
  %".6747" = bitcast ptr %"R36" to ptr
  store float %".6746", ptr %".6747"
  ; LDG.E.SYS R37, [R12+0x4]
  %".6750" = load i32, ptr %"R12"
  %"zext.660" = zext i32 %".6750" to i64
  %".6751" = load i32, ptr %"R13"
  %"zext.661" = zext i32 %".6751" to i64
  %"shl.350" = shl i64 %"zext.661", 32
  %"or.315" = or i64 %"shl.350", %"zext.660"
  %".6752" = inttoptr i64 %"or.315" to ptr
  %".6753" = ptrtoint ptr %".6752" to i64
  %".6754" = add i64 %".6753", 4
  %"for_LDG.284" = inttoptr i64 %".6754" to ptr
  %".6755" = load float, ptr %"for_LDG.284"
  %".6756" = bitcast ptr %"R37" to ptr
  store float %".6755", ptr %".6756"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".6759" = load i32, ptr %"R4"
  %".6760" = load i32, ptr %"R41"
  %"mul.92" = mul i32 %".6759", %".6760"
  %"add.302" = add i32 %"mul.92", %"Arg_3"
  store i32 %"add.302", ptr %"R4"
  ; LDG.E.SYS R24, [R10+0x4]
  %".6763" = load i32, ptr %"R10"
  %"zext.662" = zext i32 %".6763" to i64
  %".6764" = load i32, ptr %"R11"
  %"zext.663" = zext i32 %".6764" to i64
  %"shl.351" = shl i64 %"zext.663", 32
  %"or.316" = or i64 %"shl.351", %"zext.662"
  %".6765" = inttoptr i64 %"or.316" to ptr
  %".6766" = ptrtoint ptr %".6765" to i64
  %".6767" = add i64 %".6766", 4
  %"for_LDG.285" = inttoptr i64 %".6767" to ptr
  %".6768" = load float, ptr %"for_LDG.285"
  %".6769" = bitcast ptr %"R24" to ptr
  store float %".6768", ptr %".6769"
  ; LDG.E.SYS R39, [R12+0x8]
  %".6772" = load i32, ptr %"R12"
  %"zext.664" = zext i32 %".6772" to i64
  %".6773" = load i32, ptr %"R13"
  %"zext.665" = zext i32 %".6773" to i64
  %"shl.352" = shl i64 %"zext.665", 32
  %"or.317" = or i64 %"shl.352", %"zext.664"
  %".6774" = inttoptr i64 %"or.317" to ptr
  %".6775" = ptrtoint ptr %".6774" to i64
  %".6776" = add i64 %".6775", 8
  %"for_LDG.286" = inttoptr i64 %".6776" to ptr
  %".6777" = load float, ptr %"for_LDG.286"
  %".6778" = bitcast ptr %"R39" to ptr
  store float %".6777", ptr %".6778"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".6781" = load i32, ptr %"R6"
  %".6782" = load i32, ptr %"R41"
  %"mul.93" = mul i32 %".6781", %".6782"
  %"add.303" = add i32 %"mul.93", %"Arg_4"
  store i32 %"add.303", ptr %"R6"
  ; LDG.E.SYS R38, [R10+0x8]
  %".6785" = load i32, ptr %"R10"
  %"zext.666" = zext i32 %".6785" to i64
  %".6786" = load i32, ptr %"R11"
  %"zext.667" = zext i32 %".6786" to i64
  %"shl.353" = shl i64 %"zext.667", 32
  %"or.318" = or i64 %"shl.353", %"zext.666"
  %".6787" = inttoptr i64 %"or.318" to ptr
  %".6788" = ptrtoint ptr %".6787" to i64
  %".6789" = add i64 %".6788", 8
  %"for_LDG.287" = inttoptr i64 %".6789" to ptr
  %".6790" = load float, ptr %"for_LDG.287"
  %".6791" = bitcast ptr %"R38" to ptr
  store float %".6790", ptr %".6791"
  ; LDG.E.SYS R43, [R12+0xc]
  %".6794" = load i32, ptr %"R12"
  %"zext.668" = zext i32 %".6794" to i64
  %".6795" = load i32, ptr %"R13"
  %"zext.669" = zext i32 %".6795" to i64
  %"shl.354" = shl i64 %"zext.669", 32
  %"or.319" = or i64 %"shl.354", %"zext.668"
  %".6796" = inttoptr i64 %"or.319" to ptr
  %".6797" = ptrtoint ptr %".6796" to i64
  %".6798" = add i64 %".6797", 12
  %"for_LDG.288" = inttoptr i64 %".6798" to ptr
  %".6799" = load float, ptr %"for_LDG.288"
  %".6800" = bitcast ptr %"R43" to ptr
  store float %".6799", ptr %".6800"
  ; IADD3 R8, R34, 0x8, RZ
  %".6803" = load i32, ptr %"R34"
  %"add.304" = add i32 %".6803", 8
  %"add.305" = add i32 %"add.304", 0
  store i32 %"add.305", ptr %"R8"
  ; LDG.E.SYS R46, [R10+0xc]
  %".6806" = load i32, ptr %"R10"
  %"zext.670" = zext i32 %".6806" to i64
  %".6807" = load i32, ptr %"R11"
  %"zext.671" = zext i32 %".6807" to i64
  %"shl.355" = shl i64 %"zext.671", 32
  %"or.320" = or i64 %"shl.355", %"zext.670"
  %".6808" = inttoptr i64 %"or.320" to ptr
  %".6809" = ptrtoint ptr %".6808" to i64
  %".6810" = add i64 %".6809", 12
  %"for_LDG.289" = inttoptr i64 %".6810" to ptr
  %".6811" = load float, ptr %"for_LDG.289"
  %".6812" = bitcast ptr %"R46" to ptr
  store float %".6811", ptr %".6812"
  ; LDG.E.SYS R51, [R4]
  %".6815" = load i32, ptr %"R4"
  %"zext.672" = zext i32 %".6815" to i64
  %".6816" = load i32, ptr %"R5"
  %"zext.673" = zext i32 %".6816" to i64
  %"shl.356" = shl i64 %"zext.673", 32
  %"or.321" = or i64 %"shl.356", %"zext.672"
  %".6817" = inttoptr i64 %"or.321" to ptr
  %".6818" = ptrtoint ptr %".6817" to i64
  %".6819" = add i64 %".6818", 0
  %"for_LDG.290" = inttoptr i64 %".6819" to ptr
  %".6820" = load float, ptr %"for_LDG.290"
  %".6821" = bitcast ptr %"R51" to ptr
  store float %".6820", ptr %".6821"
  ; IADD3 R50, R3, R8, RZ
  %".6824" = load i32, ptr %"R3"
  %".6825" = load i32, ptr %"R8"
  %"add.306" = add i32 %".6824", %".6825"
  %"add.307" = add i32 %"add.306", 0
  store i32 %"add.307", ptr %"R50"
  ; LDG.E.SYS R44, [R6]
  %".6828" = load i32, ptr %"R6"
  %"zext.674" = zext i32 %".6828" to i64
  %".6829" = load i32, ptr %"R7"
  %"zext.675" = zext i32 %".6829" to i64
  %"shl.357" = shl i64 %"zext.675", 32
  %"or.322" = or i64 %"shl.357", %"zext.674"
  %".6830" = inttoptr i64 %"or.322" to ptr
  %".6831" = ptrtoint ptr %".6830" to i64
  %".6832" = add i64 %".6831", 0
  %"for_LDG.291" = inttoptr i64 %".6832" to ptr
  %".6833" = load float, ptr %"for_LDG.291"
  %".6834" = bitcast ptr %"R44" to ptr
  store float %".6833", ptr %".6834"
  ; LDG.E.SYS R47, [R4+0x4]
  %".6837" = load i32, ptr %"R4"
  %"zext.676" = zext i32 %".6837" to i64
  %".6838" = load i32, ptr %"R5"
  %"zext.677" = zext i32 %".6838" to i64
  %"shl.358" = shl i64 %"zext.677", 32
  %"or.323" = or i64 %"shl.358", %"zext.676"
  %".6839" = inttoptr i64 %"or.323" to ptr
  %".6840" = ptrtoint ptr %".6839" to i64
  %".6841" = add i64 %".6840", 4
  %"for_LDG.292" = inttoptr i64 %".6841" to ptr
  %".6842" = load float, ptr %"for_LDG.292"
  %".6843" = bitcast ptr %"R47" to ptr
  store float %".6842", ptr %".6843"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".6846" = load i32, ptr %"R8"
  %".6847" = load i32, ptr %"R41"
  %"mul.94" = mul i32 %".6846", %".6847"
  %"add.308" = add i32 %"mul.94", %"Arg_3"
  store i32 %"add.308", ptr %"R8"
  ; LDG.E.SYS R42, [R6+0x4]
  %".6850" = load i32, ptr %"R6"
  %"zext.678" = zext i32 %".6850" to i64
  %".6851" = load i32, ptr %"R7"
  %"zext.679" = zext i32 %".6851" to i64
  %"shl.359" = shl i64 %"zext.679", 32
  %"or.324" = or i64 %"shl.359", %"zext.678"
  %".6852" = inttoptr i64 %"or.324" to ptr
  %".6853" = ptrtoint ptr %".6852" to i64
  %".6854" = add i64 %".6853", 4
  %"for_LDG.293" = inttoptr i64 %".6854" to ptr
  %".6855" = load float, ptr %"for_LDG.293"
  %".6856" = bitcast ptr %"R42" to ptr
  store float %".6855", ptr %".6856"
  ; LDG.E.SYS R45, [R4+0x8]
  %".6859" = load i32, ptr %"R4"
  %"zext.680" = zext i32 %".6859" to i64
  %".6860" = load i32, ptr %"R5"
  %"zext.681" = zext i32 %".6860" to i64
  %"shl.360" = shl i64 %"zext.681", 32
  %"or.325" = or i64 %"shl.360", %"zext.680"
  %".6861" = inttoptr i64 %"or.325" to ptr
  %".6862" = ptrtoint ptr %".6861" to i64
  %".6863" = add i64 %".6862", 8
  %"for_LDG.294" = inttoptr i64 %".6863" to ptr
  %".6864" = load float, ptr %"for_LDG.294"
  %".6865" = bitcast ptr %"R45" to ptr
  store float %".6864", ptr %".6865"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".6868" = load i32, ptr %"R50"
  %".6869" = load i32, ptr %"R41"
  %"mul.95" = mul i32 %".6868", %".6869"
  %"add.309" = add i32 %"mul.95", %"Arg_4"
  store i32 %"add.309", ptr %"R10"
  ; LDG.E.SYS R40, [R6+0x8]
  %".6872" = load i32, ptr %"R6"
  %"zext.682" = zext i32 %".6872" to i64
  %".6873" = load i32, ptr %"R7"
  %"zext.683" = zext i32 %".6873" to i64
  %"shl.361" = shl i64 %"zext.683", 32
  %"or.326" = or i64 %"shl.361", %"zext.682"
  %".6874" = inttoptr i64 %"or.326" to ptr
  %".6875" = ptrtoint ptr %".6874" to i64
  %".6876" = add i64 %".6875", 8
  %"for_LDG.295" = inttoptr i64 %".6876" to ptr
  %".6877" = load float, ptr %"for_LDG.295"
  %".6878" = bitcast ptr %"R40" to ptr
  store float %".6877", ptr %".6878"
  ; LDG.E.SYS R53, [R4+0xc]
  %".6881" = load i32, ptr %"R4"
  %"zext.684" = zext i32 %".6881" to i64
  %".6882" = load i32, ptr %"R5"
  %"zext.685" = zext i32 %".6882" to i64
  %"shl.362" = shl i64 %"zext.685", 32
  %"or.327" = or i64 %"shl.362", %"zext.684"
  %".6883" = inttoptr i64 %"or.327" to ptr
  %".6884" = ptrtoint ptr %".6883" to i64
  %".6885" = add i64 %".6884", 12
  %"for_LDG.296" = inttoptr i64 %".6885" to ptr
  %".6886" = load float, ptr %"for_LDG.296"
  %".6887" = bitcast ptr %"R53" to ptr
  store float %".6886", ptr %".6887"
  ; IADD3 R12, R34, 0xc, RZ
  %".6890" = load i32, ptr %"R34"
  %"add.310" = add i32 %".6890", 12
  %"add.311" = add i32 %"add.310", 0
  store i32 %"add.311", ptr %"R12"
  ; LDG.E.SYS R54, [R6+0xc]
  %".6893" = load i32, ptr %"R6"
  %"zext.686" = zext i32 %".6893" to i64
  %".6894" = load i32, ptr %"R7"
  %"zext.687" = zext i32 %".6894" to i64
  %"shl.363" = shl i64 %"zext.687", 32
  %"or.328" = or i64 %"shl.363", %"zext.686"
  %".6895" = inttoptr i64 %"or.328" to ptr
  %".6896" = ptrtoint ptr %".6895" to i64
  %".6897" = add i64 %".6896", 12
  %"for_LDG.297" = inttoptr i64 %".6897" to ptr
  %".6898" = load float, ptr %"for_LDG.297"
  %".6899" = bitcast ptr %"R54" to ptr
  store float %".6898", ptr %".6899"
  ; LDG.E.SYS R59, [R8]
  %".6902" = load i32, ptr %"R8"
  %"zext.688" = zext i32 %".6902" to i64
  %".6903" = load i32, ptr %"R9"
  %"zext.689" = zext i32 %".6903" to i64
  %"shl.364" = shl i64 %"zext.689", 32
  %"or.329" = or i64 %"shl.364", %"zext.688"
  %".6904" = inttoptr i64 %"or.329" to ptr
  %".6905" = ptrtoint ptr %".6904" to i64
  %".6906" = add i64 %".6905", 0
  %"for_LDG.298" = inttoptr i64 %".6906" to ptr
  %".6907" = load float, ptr %"for_LDG.298"
  %".6908" = bitcast ptr %"R59" to ptr
  store float %".6907", ptr %".6908"
  ; IADD3 R58, R3, R12, RZ
  %".6911" = load i32, ptr %"R3"
  %".6912" = load i32, ptr %"R12"
  %"add.312" = add i32 %".6911", %".6912"
  %"add.313" = add i32 %"add.312", 0
  store i32 %"add.313", ptr %"R58"
  ; LDG.E.SYS R52, [R10]
  %".6915" = load i32, ptr %"R10"
  %"zext.690" = zext i32 %".6915" to i64
  %".6916" = load i32, ptr %"R11"
  %"zext.691" = zext i32 %".6916" to i64
  %"shl.365" = shl i64 %"zext.691", 32
  %"or.330" = or i64 %"shl.365", %"zext.690"
  %".6917" = inttoptr i64 %"or.330" to ptr
  %".6918" = ptrtoint ptr %".6917" to i64
  %".6919" = add i64 %".6918", 0
  %"for_LDG.299" = inttoptr i64 %".6919" to ptr
  %".6920" = load float, ptr %"for_LDG.299"
  %".6921" = bitcast ptr %"R52" to ptr
  store float %".6920", ptr %".6921"
  ; LDG.E.SYS R57, [R8+0x4]
  %".6924" = load i32, ptr %"R8"
  %"zext.692" = zext i32 %".6924" to i64
  %".6925" = load i32, ptr %"R9"
  %"zext.693" = zext i32 %".6925" to i64
  %"shl.366" = shl i64 %"zext.693", 32
  %"or.331" = or i64 %"shl.366", %"zext.692"
  %".6926" = inttoptr i64 %"or.331" to ptr
  %".6927" = ptrtoint ptr %".6926" to i64
  %".6928" = add i64 %".6927", 4
  %"for_LDG.300" = inttoptr i64 %".6928" to ptr
  %".6929" = load float, ptr %"for_LDG.300"
  %".6930" = bitcast ptr %"R57" to ptr
  store float %".6929", ptr %".6930"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".6933" = load i32, ptr %"R12"
  %".6934" = load i32, ptr %"R41"
  %"mul.96" = mul i32 %".6933", %".6934"
  %"add.314" = add i32 %"mul.96", %"Arg_3"
  store i32 %"add.314", ptr %"R12"
  ; LDG.E.SYS R50, [R10+0x4]
  %".6937" = load i32, ptr %"R10"
  %"zext.694" = zext i32 %".6937" to i64
  %".6938" = load i32, ptr %"R11"
  %"zext.695" = zext i32 %".6938" to i64
  %"shl.367" = shl i64 %"zext.695", 32
  %"or.332" = or i64 %"shl.367", %"zext.694"
  %".6939" = inttoptr i64 %"or.332" to ptr
  %".6940" = ptrtoint ptr %".6939" to i64
  %".6941" = add i64 %".6940", 4
  %"for_LDG.301" = inttoptr i64 %".6941" to ptr
  %".6942" = load float, ptr %"for_LDG.301"
  %".6943" = bitcast ptr %"R50" to ptr
  store float %".6942", ptr %".6943"
  ; LDG.E.SYS R55, [R8+0x8]
  %".6946" = load i32, ptr %"R8"
  %"zext.696" = zext i32 %".6946" to i64
  %".6947" = load i32, ptr %"R9"
  %"zext.697" = zext i32 %".6947" to i64
  %"shl.368" = shl i64 %"zext.697", 32
  %"or.333" = or i64 %"shl.368", %"zext.696"
  %".6948" = inttoptr i64 %"or.333" to ptr
  %".6949" = ptrtoint ptr %".6948" to i64
  %".6950" = add i64 %".6949", 8
  %"for_LDG.302" = inttoptr i64 %".6950" to ptr
  %".6951" = load float, ptr %"for_LDG.302"
  %".6952" = bitcast ptr %"R55" to ptr
  store float %".6951", ptr %".6952"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".6955" = load i32, ptr %"R58"
  %".6956" = load i32, ptr %"R41"
  %"mul.97" = mul i32 %".6955", %".6956"
  %"add.315" = add i32 %"mul.97", %"Arg_4"
  store i32 %"add.315", ptr %"R4"
  ; LDG.E.SYS R61, [R8+0xc]
  %".6959" = load i32, ptr %"R8"
  %"zext.698" = zext i32 %".6959" to i64
  %".6960" = load i32, ptr %"R9"
  %"zext.699" = zext i32 %".6960" to i64
  %"shl.369" = shl i64 %"zext.699", 32
  %"or.334" = or i64 %"shl.369", %"zext.698"
  %".6961" = inttoptr i64 %"or.334" to ptr
  %".6962" = ptrtoint ptr %".6961" to i64
  %".6963" = add i64 %".6962", 12
  %"for_LDG.303" = inttoptr i64 %".6963" to ptr
  %".6964" = load float, ptr %"for_LDG.303"
  %".6965" = bitcast ptr %"R61" to ptr
  store float %".6964", ptr %".6965"
  ; LDG.E.SYS R56, [R10+0x8]
  %".6968" = load i32, ptr %"R10"
  %"zext.700" = zext i32 %".6968" to i64
  %".6969" = load i32, ptr %"R11"
  %"zext.701" = zext i32 %".6969" to i64
  %"shl.370" = shl i64 %"zext.701", 32
  %"or.335" = or i64 %"shl.370", %"zext.700"
  %".6970" = inttoptr i64 %"or.335" to ptr
  %".6971" = ptrtoint ptr %".6970" to i64
  %".6972" = add i64 %".6971", 8
  %"for_LDG.304" = inttoptr i64 %".6972" to ptr
  %".6973" = load float, ptr %"for_LDG.304"
  %".6974" = bitcast ptr %"R56" to ptr
  store float %".6973", ptr %".6974"
  ; LDG.E.SYS R58, [R10+0xc]
  %".6977" = load i32, ptr %"R10"
  %"zext.702" = zext i32 %".6977" to i64
  %".6978" = load i32, ptr %"R11"
  %"zext.703" = zext i32 %".6978" to i64
  %"shl.371" = shl i64 %"zext.703", 32
  %"or.336" = or i64 %"shl.371", %"zext.702"
  %".6979" = inttoptr i64 %"or.336" to ptr
  %".6980" = ptrtoint ptr %".6979" to i64
  %".6981" = add i64 %".6980", 12
  %"for_LDG.305" = inttoptr i64 %".6981" to ptr
  %".6982" = load float, ptr %"for_LDG.305"
  %".6983" = bitcast ptr %"R58" to ptr
  store float %".6982", ptr %".6983"
  ; LDG.E.SYS R6, [R12]
  %".6986" = load i32, ptr %"R12"
  %"zext.704" = zext i32 %".6986" to i64
  %".6987" = load i32, ptr %"R13"
  %"zext.705" = zext i32 %".6987" to i64
  %"shl.372" = shl i64 %"zext.705", 32
  %"or.337" = or i64 %"shl.372", %"zext.704"
  %".6988" = inttoptr i64 %"or.337" to ptr
  %".6989" = ptrtoint ptr %".6988" to i64
  %".6990" = add i64 %".6989", 0
  %"for_LDG.306" = inttoptr i64 %".6990" to ptr
  %".6991" = load float, ptr %"for_LDG.306"
  %".6992" = bitcast ptr %"R6" to ptr
  store float %".6991", ptr %".6992"
  ; LDG.E.SYS R41, [R12+0x4]
  %".6995" = load i32, ptr %"R12"
  %"zext.706" = zext i32 %".6995" to i64
  %".6996" = load i32, ptr %"R13"
  %"zext.707" = zext i32 %".6996" to i64
  %"shl.373" = shl i64 %"zext.707", 32
  %"or.338" = or i64 %"shl.373", %"zext.706"
  %".6997" = inttoptr i64 %"or.338" to ptr
  %".6998" = ptrtoint ptr %".6997" to i64
  %".6999" = add i64 %".6998", 4
  %"for_LDG.307" = inttoptr i64 %".6999" to ptr
  %".7000" = load float, ptr %"for_LDG.307"
  %".7001" = bitcast ptr %"R41" to ptr
  store float %".7000", ptr %".7001"
  ; LDG.E.SYS R10, [R4]
  %".7004" = load i32, ptr %"R4"
  %"zext.708" = zext i32 %".7004" to i64
  %".7005" = load i32, ptr %"R5"
  %"zext.709" = zext i32 %".7005" to i64
  %"shl.374" = shl i64 %"zext.709", 32
  %"or.339" = or i64 %"shl.374", %"zext.708"
  %".7006" = inttoptr i64 %"or.339" to ptr
  %".7007" = ptrtoint ptr %".7006" to i64
  %".7008" = add i64 %".7007", 0
  %"for_LDG.308" = inttoptr i64 %".7008" to ptr
  %".7009" = load float, ptr %"for_LDG.308"
  %".7010" = bitcast ptr %"R10" to ptr
  store float %".7009", ptr %".7010"
  ; LDG.E.SYS R7, [R12+0x8]
  %".7013" = load i32, ptr %"R12"
  %"zext.710" = zext i32 %".7013" to i64
  %".7014" = load i32, ptr %"R13"
  %"zext.711" = zext i32 %".7014" to i64
  %"shl.375" = shl i64 %"zext.711", 32
  %"or.340" = or i64 %"shl.375", %"zext.710"
  %".7015" = inttoptr i64 %"or.340" to ptr
  %".7016" = ptrtoint ptr %".7015" to i64
  %".7017" = add i64 %".7016", 8
  %"for_LDG.309" = inttoptr i64 %".7017" to ptr
  %".7018" = load float, ptr %"for_LDG.309"
  %".7019" = bitcast ptr %"R7" to ptr
  store float %".7018", ptr %".7019"
  ; LDG.E.SYS R9, [R4+0x4]
  %".7022" = load i32, ptr %"R4"
  %"zext.712" = zext i32 %".7022" to i64
  %".7023" = load i32, ptr %"R5"
  %"zext.713" = zext i32 %".7023" to i64
  %"shl.376" = shl i64 %"zext.713", 32
  %"or.341" = or i64 %"shl.376", %"zext.712"
  %".7024" = inttoptr i64 %"or.341" to ptr
  %".7025" = ptrtoint ptr %".7024" to i64
  %".7026" = add i64 %".7025", 4
  %"for_LDG.310" = inttoptr i64 %".7026" to ptr
  %".7027" = load float, ptr %"for_LDG.310"
  %".7028" = bitcast ptr %"R9" to ptr
  store float %".7027", ptr %".7028"
  ; LDG.E.SYS R60, [R12+0xc]
  %".7031" = load i32, ptr %"R12"
  %"zext.714" = zext i32 %".7031" to i64
  %".7032" = load i32, ptr %"R13"
  %"zext.715" = zext i32 %".7032" to i64
  %"shl.377" = shl i64 %"zext.715", 32
  %"or.342" = or i64 %"shl.377", %"zext.714"
  %".7033" = inttoptr i64 %"or.342" to ptr
  %".7034" = ptrtoint ptr %".7033" to i64
  %".7035" = add i64 %".7034", 12
  %"for_LDG.311" = inttoptr i64 %".7035" to ptr
  %".7036" = load float, ptr %"for_LDG.311"
  %".7037" = bitcast ptr %"R60" to ptr
  store float %".7036", ptr %".7037"
  ; LDG.E.SYS R8, [R4+0x8]
  %".7040" = load i32, ptr %"R4"
  %"zext.716" = zext i32 %".7040" to i64
  %".7041" = load i32, ptr %"R5"
  %"zext.717" = zext i32 %".7041" to i64
  %"shl.378" = shl i64 %"zext.717", 32
  %"or.343" = or i64 %"shl.378", %"zext.716"
  %".7042" = inttoptr i64 %"or.343" to ptr
  %".7043" = ptrtoint ptr %".7042" to i64
  %".7044" = add i64 %".7043", 8
  %"for_LDG.312" = inttoptr i64 %".7044" to ptr
  %".7045" = load float, ptr %"for_LDG.312"
  %".7046" = bitcast ptr %"R8" to ptr
  store float %".7045", ptr %".7046"
  ; LDG.E.SYS R11, [R4+0xc]
  %".7049" = load i32, ptr %"R4"
  %"zext.718" = zext i32 %".7049" to i64
  %".7050" = load i32, ptr %"R5"
  %"zext.719" = zext i32 %".7050" to i64
  %"shl.379" = shl i64 %"zext.719", 32
  %"or.344" = or i64 %"shl.379", %"zext.718"
  %".7051" = inttoptr i64 %"or.344" to ptr
  %".7052" = ptrtoint ptr %".7051" to i64
  %".7053" = add i64 %".7052", 12
  %"for_LDG.313" = inttoptr i64 %".7053" to ptr
  %".7054" = load float, ptr %"for_LDG.313"
  %".7055" = bitcast ptr %"R11" to ptr
  store float %".7054", ptr %".7055"
  ; IADD3 R35, R35, -0x10, RZ
  %".7058" = load i32, ptr %"R35"
  %"add.316" = add i32 %".7058", -16
  %"add.317" = add i32 %"add.316", 0
  store i32 %"add.317", ptr %"R35"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".7061" = load i32, ptr %"R35"
  %".7062" = load i1, ptr %"PT"
  %"cmp.60" = icmp sgt i32 %".7061", 12
  %".7063" = and i1 %"cmp.60", %".7062"
  store i1 %".7063", ptr %"P1"
  ; IADD3 R34, R34, 0x10, RZ
  %".7066" = load i32, ptr %"R34"
  %"add.318" = add i32 %".7066", 16
  %"add.319" = add i32 %"add.318", 0
  store i32 %"add.319", ptr %"R34"
  ; FMUL R25, R25, R22
  %".7069" = load float, ptr %"R25"
  %".7070" = load float, ptr %"R22"
  %"fmul.276" = fmul float %".7069", %".7070"
  %".7071" = bitcast ptr %"R25" to ptr
  store float %"fmul.276", ptr %".7071"
  ; FFMA R25, R25, R36, R21
  %".7074" = load float, ptr %"R25"
  %".7075" = load float, ptr %"R36"
  %".7076" = load float, ptr %"R21"
  %"fmul.277" = fmul float %".7074", %".7075"
  %"fadd.265" = fadd float %"fmul.277", %".7076"
  %".7077" = bitcast ptr %"R25" to ptr
  store float %"fadd.265", ptr %".7077"
  ; FMUL R37, R37, R22
  %".7080" = load float, ptr %"R37"
  %".7081" = load float, ptr %"R22"
  %"fmul.278" = fmul float %".7080", %".7081"
  %".7082" = bitcast ptr %"R37" to ptr
  store float %"fmul.278", ptr %".7082"
  ; FFMA R25, R37, R24, R25
  %".7085" = load float, ptr %"R37"
  %".7086" = load float, ptr %"R24"
  %".7087" = load float, ptr %"R25"
  %"fmul.279" = fmul float %".7085", %".7086"
  %"fadd.266" = fadd float %"fmul.279", %".7087"
  %".7088" = bitcast ptr %"R25" to ptr
  store float %"fadd.266", ptr %".7088"
  ; FMUL R39, R39, R22
  %".7091" = load float, ptr %"R39"
  %".7092" = load float, ptr %"R22"
  %"fmul.280" = fmul float %".7091", %".7092"
  %".7093" = bitcast ptr %"R39" to ptr
  store float %"fmul.280", ptr %".7093"
  ; FFMA R25, R39, R38, R25
  %".7096" = load float, ptr %"R39"
  %".7097" = load float, ptr %"R38"
  %".7098" = load float, ptr %"R25"
  %"fmul.281" = fmul float %".7096", %".7097"
  %"fadd.267" = fadd float %"fmul.281", %".7098"
  %".7099" = bitcast ptr %"R25" to ptr
  store float %"fadd.267", ptr %".7099"
  ; FMUL R43, R43, R22
  %".7102" = load float, ptr %"R43"
  %".7103" = load float, ptr %"R22"
  %"fmul.282" = fmul float %".7102", %".7103"
  %".7104" = bitcast ptr %"R43" to ptr
  store float %"fmul.282", ptr %".7104"
  ; FFMA R25, R43, R46, R25
  %".7107" = load float, ptr %"R43"
  %".7108" = load float, ptr %"R46"
  %".7109" = load float, ptr %"R25"
  %"fmul.283" = fmul float %".7107", %".7108"
  %"fadd.268" = fadd float %"fmul.283", %".7109"
  %".7110" = bitcast ptr %"R25" to ptr
  store float %"fadd.268", ptr %".7110"
  ; FMUL R51, R51, R22
  %".7113" = load float, ptr %"R51"
  %".7114" = load float, ptr %"R22"
  %"fmul.284" = fmul float %".7113", %".7114"
  %".7115" = bitcast ptr %"R51" to ptr
  store float %"fmul.284", ptr %".7115"
  ; FFMA R25, R51, R44, R25
  %".7118" = load float, ptr %"R51"
  %".7119" = load float, ptr %"R44"
  %".7120" = load float, ptr %"R25"
  %"fmul.285" = fmul float %".7118", %".7119"
  %"fadd.269" = fadd float %"fmul.285", %".7120"
  %".7121" = bitcast ptr %"R25" to ptr
  store float %"fadd.269", ptr %".7121"
  ; FMUL R47, R47, R22
  %".7124" = load float, ptr %"R47"
  %".7125" = load float, ptr %"R22"
  %"fmul.286" = fmul float %".7124", %".7125"
  %".7126" = bitcast ptr %"R47" to ptr
  store float %"fmul.286", ptr %".7126"
  ; FFMA R25, R47, R42, R25
  %".7129" = load float, ptr %"R47"
  %".7130" = load float, ptr %"R42"
  %".7131" = load float, ptr %"R25"
  %"fmul.287" = fmul float %".7129", %".7130"
  %"fadd.270" = fadd float %"fmul.287", %".7131"
  %".7132" = bitcast ptr %"R25" to ptr
  store float %"fadd.270", ptr %".7132"
  ; FMUL R45, R45, R22
  %".7135" = load float, ptr %"R45"
  %".7136" = load float, ptr %"R22"
  %"fmul.288" = fmul float %".7135", %".7136"
  %".7137" = bitcast ptr %"R45" to ptr
  store float %"fmul.288", ptr %".7137"
  ; FFMA R25, R45, R40, R25
  %".7140" = load float, ptr %"R45"
  %".7141" = load float, ptr %"R40"
  %".7142" = load float, ptr %"R25"
  %"fmul.289" = fmul float %".7140", %".7141"
  %"fadd.271" = fadd float %"fmul.289", %".7142"
  %".7143" = bitcast ptr %"R25" to ptr
  store float %"fadd.271", ptr %".7143"
  ; FMUL R53, R53, R22
  %".7146" = load float, ptr %"R53"
  %".7147" = load float, ptr %"R22"
  %"fmul.290" = fmul float %".7146", %".7147"
  %".7148" = bitcast ptr %"R53" to ptr
  store float %"fmul.290", ptr %".7148"
  ; FFMA R25, R53, R54, R25
  %".7151" = load float, ptr %"R53"
  %".7152" = load float, ptr %"R54"
  %".7153" = load float, ptr %"R25"
  %"fmul.291" = fmul float %".7151", %".7152"
  %"fadd.272" = fadd float %"fmul.291", %".7153"
  %".7154" = bitcast ptr %"R25" to ptr
  store float %"fadd.272", ptr %".7154"
  ; FMUL R59, R59, R22
  %".7157" = load float, ptr %"R59"
  %".7158" = load float, ptr %"R22"
  %"fmul.292" = fmul float %".7157", %".7158"
  %".7159" = bitcast ptr %"R59" to ptr
  store float %"fmul.292", ptr %".7159"
  ; FFMA R25, R59, R52, R25
  %".7162" = load float, ptr %"R59"
  %".7163" = load float, ptr %"R52"
  %".7164" = load float, ptr %"R25"
  %"fmul.293" = fmul float %".7162", %".7163"
  %"fadd.273" = fadd float %"fmul.293", %".7164"
  %".7165" = bitcast ptr %"R25" to ptr
  store float %"fadd.273", ptr %".7165"
  ; FMUL R57, R57, R22
  %".7168" = load float, ptr %"R57"
  %".7169" = load float, ptr %"R22"
  %"fmul.294" = fmul float %".7168", %".7169"
  %".7170" = bitcast ptr %"R57" to ptr
  store float %"fmul.294", ptr %".7170"
  ; FFMA R25, R57, R50, R25
  %".7173" = load float, ptr %"R57"
  %".7174" = load float, ptr %"R50"
  %".7175" = load float, ptr %"R25"
  %"fmul.295" = fmul float %".7173", %".7174"
  %"fadd.274" = fadd float %"fmul.295", %".7175"
  %".7176" = bitcast ptr %"R25" to ptr
  store float %"fadd.274", ptr %".7176"
  ; FMUL R55, R55, R22.reuse
  %".7179" = load float, ptr %"R55"
  %".7180" = load float, ptr %"R22"
  %"fmul.296" = fmul float %".7179", %".7180"
  %".7181" = bitcast ptr %"R55" to ptr
  store float %"fmul.296", ptr %".7181"
  ; FMUL R61, R61, R22
  %".7184" = load float, ptr %"R61"
  %".7185" = load float, ptr %"R22"
  %"fmul.297" = fmul float %".7184", %".7185"
  %".7186" = bitcast ptr %"R61" to ptr
  store float %"fmul.297", ptr %".7186"
  ; FFMA R25, R55, R56, R25
  %".7189" = load float, ptr %"R55"
  %".7190" = load float, ptr %"R56"
  %".7191" = load float, ptr %"R25"
  %"fmul.298" = fmul float %".7189", %".7190"
  %"fadd.275" = fadd float %"fmul.298", %".7191"
  %".7192" = bitcast ptr %"R25" to ptr
  store float %"fadd.275", ptr %".7192"
  ; FFMA R25, R61, R58, R25
  %".7195" = load float, ptr %"R61"
  %".7196" = load float, ptr %"R58"
  %".7197" = load float, ptr %"R25"
  %"fmul.299" = fmul float %".7195", %".7196"
  %"fadd.276" = fadd float %"fmul.299", %".7197"
  %".7198" = bitcast ptr %"R25" to ptr
  store float %"fadd.276", ptr %".7198"
  ; FMUL R6, R6, R22.reuse
  %".7201" = load float, ptr %"R6"
  %".7202" = load float, ptr %"R22"
  %"fmul.300" = fmul float %".7201", %".7202"
  %".7203" = bitcast ptr %"R6" to ptr
  store float %"fmul.300", ptr %".7203"
  ; FMUL R41, R41, R22
  %".7206" = load float, ptr %"R41"
  %".7207" = load float, ptr %"R22"
  %"fmul.301" = fmul float %".7206", %".7207"
  %".7208" = bitcast ptr %"R41" to ptr
  store float %"fmul.301", ptr %".7208"
  ; FFMA R6, R6, R10, R25
  %".7211" = load float, ptr %"R6"
  %".7212" = load float, ptr %"R10"
  %".7213" = load float, ptr %"R25"
  %"fmul.302" = fmul float %".7211", %".7212"
  %"fadd.277" = fadd float %"fmul.302", %".7213"
  %".7214" = bitcast ptr %"R6" to ptr
  store float %"fadd.277", ptr %".7214"
  ; FMUL R7, R7, R22
  %".7217" = load float, ptr %"R7"
  %".7218" = load float, ptr %"R22"
  %"fmul.303" = fmul float %".7217", %".7218"
  %".7219" = bitcast ptr %"R7" to ptr
  store float %"fmul.303", ptr %".7219"
  ; FFMA R9, R41, R9, R6
  %".7222" = load float, ptr %"R41"
  %".7223" = load float, ptr %"R9"
  %".7224" = load float, ptr %"R6"
  %"fmul.304" = fmul float %".7222", %".7223"
  %"fadd.278" = fadd float %"fmul.304", %".7224"
  %".7225" = bitcast ptr %"R9" to ptr
  store float %"fadd.278", ptr %".7225"
  ; FMUL R60, R60, R22
  %".7228" = load float, ptr %"R60"
  %".7229" = load float, ptr %"R22"
  %"fmul.305" = fmul float %".7228", %".7229"
  %".7230" = bitcast ptr %"R60" to ptr
  store float %"fmul.305", ptr %".7230"
  ; FFMA R8, R7, R8, R9
  %".7233" = load float, ptr %"R7"
  %".7234" = load float, ptr %"R8"
  %".7235" = load float, ptr %"R9"
  %"fmul.306" = fmul float %".7233", %".7234"
  %"fadd.279" = fadd float %"fmul.306", %".7235"
  %".7236" = bitcast ptr %"R8" to ptr
  store float %"fadd.279", ptr %".7236"
  ; FFMA R21, R60, R11, R8
  %".7239" = load float, ptr %"R60"
  %".7240" = load float, ptr %"R11"
  %".7241" = load float, ptr %"R8"
  %"fmul.307" = fmul float %".7239", %".7240"
  %"fadd.280" = fadd float %"fmul.307", %".7241"
  %".7242" = bitcast ptr %"R21" to ptr
  store float %"fadd.280", ptr %".7242"
  ; @P1 BRA `(.L_x_39)
  %".7245" = load i1, ptr %"P1"
  %".7246" = icmp ne i1 %".7245", 1
  br i1 %".7246", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".7249" = load i32, ptr %"R35"
  %".7250" = load i1, ptr %"PT"
  %"cmp.61" = icmp sgt i32 %".7249", 4
  %".7251" = and i1 %"cmp.61", %".7250"
  store i1 %".7251", ptr %"P1"
  ; @!P1 BRA `(.L_x_40)
  %".7254" = load i1, ptr %"P1"
  %".7255" = icmp eq i1 %".7254", 1
  br i1 %".7255", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R6, R3, R34, RZ
  %".7260" = load i32, ptr %"R3"
  %".7261" = load i32, ptr %"R34"
  %"add.320" = add i32 %".7260", %".7261"
  %"add.321" = add i32 %"add.320", 0
  store i32 %"add.321", ptr %"R6"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".7264" = load i32, ptr %"R34"
  %".7265" = load i32, ptr %"R11"
  %"mul.98" = mul i32 %".7264", %".7265"
  %"add.322" = add i32 %"mul.98", %"Arg_3"
  store i32 %"add.322", ptr %"R8"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".7268" = load i32, ptr %"R6"
  %".7269" = load i32, ptr %"R11"
  %"mul.99" = mul i32 %".7268", %".7269"
  %"add.323" = add i32 %"mul.99", %"Arg_4"
  store i32 %"add.323", ptr %"R6"
  ; IADD3 R4, R34, 0x4, RZ
  %".7272" = load i32, ptr %"R34"
  %"add.324" = add i32 %".7272", 4
  %"add.325" = add i32 %"add.324", 0
  store i32 %"add.325", ptr %"R4"
  ; LDG.E.SYS R13, [R8]
  %".7275" = load i32, ptr %"R8"
  %"zext.720" = zext i32 %".7275" to i64
  %".7276" = load i32, ptr %"R9"
  %"zext.721" = zext i32 %".7276" to i64
  %"shl.380" = shl i64 %"zext.721", 32
  %"or.345" = or i64 %"shl.380", %"zext.720"
  %".7277" = inttoptr i64 %"or.345" to ptr
  %".7278" = ptrtoint ptr %".7277" to i64
  %".7279" = add i64 %".7278", 0
  %"for_LDG.314" = inttoptr i64 %".7279" to ptr
  %".7280" = load float, ptr %"for_LDG.314"
  %".7281" = bitcast ptr %"R13" to ptr
  store float %".7280", ptr %".7281"
  ; IADD3 R10, R3, R4, RZ
  %".7284" = load i32, ptr %"R3"
  %".7285" = load i32, ptr %"R4"
  %"add.326" = add i32 %".7284", %".7285"
  %"add.327" = add i32 %"add.326", 0
  store i32 %"add.327", ptr %"R10"
  ; LDG.E.SYS R12, [R6]
  %".7288" = load i32, ptr %"R6"
  %"zext.722" = zext i32 %".7288" to i64
  %".7289" = load i32, ptr %"R7"
  %"zext.723" = zext i32 %".7289" to i64
  %"shl.381" = shl i64 %"zext.723", 32
  %"or.346" = or i64 %"shl.381", %"zext.722"
  %".7290" = inttoptr i64 %"or.346" to ptr
  %".7291" = ptrtoint ptr %".7290" to i64
  %".7292" = add i64 %".7291", 0
  %"for_LDG.315" = inttoptr i64 %".7292" to ptr
  %".7293" = load float, ptr %"for_LDG.315"
  %".7294" = bitcast ptr %"R12" to ptr
  store float %".7293", ptr %".7294"
  ; LDG.E.SYS R25, [R8+0x4]
  %".7297" = load i32, ptr %"R8"
  %"zext.724" = zext i32 %".7297" to i64
  %".7298" = load i32, ptr %"R9"
  %"zext.725" = zext i32 %".7298" to i64
  %"shl.382" = shl i64 %"zext.725", 32
  %"or.347" = or i64 %"shl.382", %"zext.724"
  %".7299" = inttoptr i64 %"or.347" to ptr
  %".7300" = ptrtoint ptr %".7299" to i64
  %".7301" = add i64 %".7300", 4
  %"for_LDG.316" = inttoptr i64 %".7301" to ptr
  %".7302" = load float, ptr %"for_LDG.316"
  %".7303" = bitcast ptr %"R25" to ptr
  store float %".7302", ptr %".7303"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".7306" = load i32, ptr %"R4"
  %".7307" = load i32, ptr %"R11"
  %"mul.100" = mul i32 %".7306", %".7307"
  %"add.328" = add i32 %"mul.100", %"Arg_3"
  store i32 %"add.328", ptr %"R4"
  ; LDG.E.SYS R24, [R6+0x4]
  %".7310" = load i32, ptr %"R6"
  %"zext.726" = zext i32 %".7310" to i64
  %".7311" = load i32, ptr %"R7"
  %"zext.727" = zext i32 %".7311" to i64
  %"shl.383" = shl i64 %"zext.727", 32
  %"or.348" = or i64 %"shl.383", %"zext.726"
  %".7312" = inttoptr i64 %"or.348" to ptr
  %".7313" = ptrtoint ptr %".7312" to i64
  %".7314" = add i64 %".7313", 4
  %"for_LDG.317" = inttoptr i64 %".7314" to ptr
  %".7315" = load float, ptr %"for_LDG.317"
  %".7316" = bitcast ptr %"R24" to ptr
  store float %".7315", ptr %".7316"
  ; LDG.E.SYS R37, [R8+0x8]
  %".7319" = load i32, ptr %"R8"
  %"zext.728" = zext i32 %".7319" to i64
  %".7320" = load i32, ptr %"R9"
  %"zext.729" = zext i32 %".7320" to i64
  %"shl.384" = shl i64 %"zext.729", 32
  %"or.349" = or i64 %"shl.384", %"zext.728"
  %".7321" = inttoptr i64 %"or.349" to ptr
  %".7322" = ptrtoint ptr %".7321" to i64
  %".7323" = add i64 %".7322", 8
  %"for_LDG.318" = inttoptr i64 %".7323" to ptr
  %".7324" = load float, ptr %"for_LDG.318"
  %".7325" = bitcast ptr %"R37" to ptr
  store float %".7324", ptr %".7325"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".7328" = load i32, ptr %"R10"
  %".7329" = load i32, ptr %"R11"
  %"mul.101" = mul i32 %".7328", %".7329"
  %"add.329" = add i32 %"mul.101", %"Arg_4"
  store i32 %"add.329", ptr %"R10"
  ; LDG.E.SYS R36, [R6+0x8]
  %".7332" = load i32, ptr %"R6"
  %"zext.730" = zext i32 %".7332" to i64
  %".7333" = load i32, ptr %"R7"
  %"zext.731" = zext i32 %".7333" to i64
  %"shl.385" = shl i64 %"zext.731", 32
  %"or.350" = or i64 %"shl.385", %"zext.730"
  %".7334" = inttoptr i64 %"or.350" to ptr
  %".7335" = ptrtoint ptr %".7334" to i64
  %".7336" = add i64 %".7335", 8
  %"for_LDG.319" = inttoptr i64 %".7336" to ptr
  %".7337" = load float, ptr %"for_LDG.319"
  %".7338" = bitcast ptr %"R36" to ptr
  store float %".7337", ptr %".7338"
  ; LDG.E.SYS R39, [R8+0xc]
  %".7341" = load i32, ptr %"R8"
  %"zext.732" = zext i32 %".7341" to i64
  %".7342" = load i32, ptr %"R9"
  %"zext.733" = zext i32 %".7342" to i64
  %"shl.386" = shl i64 %"zext.733", 32
  %"or.351" = or i64 %"shl.386", %"zext.732"
  %".7343" = inttoptr i64 %"or.351" to ptr
  %".7344" = ptrtoint ptr %".7343" to i64
  %".7345" = add i64 %".7344", 12
  %"for_LDG.320" = inttoptr i64 %".7345" to ptr
  %".7346" = load float, ptr %"for_LDG.320"
  %".7347" = bitcast ptr %"R39" to ptr
  store float %".7346", ptr %".7347"
  ; LDG.E.SYS R38, [R6+0xc]
  %".7350" = load i32, ptr %"R6"
  %"zext.734" = zext i32 %".7350" to i64
  %".7351" = load i32, ptr %"R7"
  %"zext.735" = zext i32 %".7351" to i64
  %"shl.387" = shl i64 %"zext.735", 32
  %"or.352" = or i64 %"shl.387", %"zext.734"
  %".7352" = inttoptr i64 %"or.352" to ptr
  %".7353" = ptrtoint ptr %".7352" to i64
  %".7354" = add i64 %".7353", 12
  %"for_LDG.321" = inttoptr i64 %".7354" to ptr
  %".7355" = load float, ptr %"for_LDG.321"
  %".7356" = bitcast ptr %"R38" to ptr
  store float %".7355", ptr %".7356"
  ; LDG.E.SYS R41, [R4]
  %".7359" = load i32, ptr %"R4"
  %"zext.736" = zext i32 %".7359" to i64
  %".7360" = load i32, ptr %"R5"
  %"zext.737" = zext i32 %".7360" to i64
  %"shl.388" = shl i64 %"zext.737", 32
  %"or.353" = or i64 %"shl.388", %"zext.736"
  %".7361" = inttoptr i64 %"or.353" to ptr
  %".7362" = ptrtoint ptr %".7361" to i64
  %".7363" = add i64 %".7362", 0
  %"for_LDG.322" = inttoptr i64 %".7363" to ptr
  %".7364" = load float, ptr %"for_LDG.322"
  %".7365" = bitcast ptr %"R41" to ptr
  store float %".7364", ptr %".7365"
  ; LDG.E.SYS R40, [R10]
  %".7368" = load i32, ptr %"R10"
  %"zext.738" = zext i32 %".7368" to i64
  %".7369" = load i32, ptr %"R11"
  %"zext.739" = zext i32 %".7369" to i64
  %"shl.389" = shl i64 %"zext.739", 32
  %"or.354" = or i64 %"shl.389", %"zext.738"
  %".7370" = inttoptr i64 %"or.354" to ptr
  %".7371" = ptrtoint ptr %".7370" to i64
  %".7372" = add i64 %".7371", 0
  %"for_LDG.323" = inttoptr i64 %".7372" to ptr
  %".7373" = load float, ptr %"for_LDG.323"
  %".7374" = bitcast ptr %"R40" to ptr
  store float %".7373", ptr %".7374"
  ; LDG.E.SYS R43, [R4+0x4]
  %".7377" = load i32, ptr %"R4"
  %"zext.740" = zext i32 %".7377" to i64
  %".7378" = load i32, ptr %"R5"
  %"zext.741" = zext i32 %".7378" to i64
  %"shl.390" = shl i64 %"zext.741", 32
  %"or.355" = or i64 %"shl.390", %"zext.740"
  %".7379" = inttoptr i64 %"or.355" to ptr
  %".7380" = ptrtoint ptr %".7379" to i64
  %".7381" = add i64 %".7380", 4
  %"for_LDG.324" = inttoptr i64 %".7381" to ptr
  %".7382" = load float, ptr %"for_LDG.324"
  %".7383" = bitcast ptr %"R43" to ptr
  store float %".7382", ptr %".7383"
  ; LDG.E.SYS R42, [R10+0x4]
  %".7386" = load i32, ptr %"R10"
  %"zext.742" = zext i32 %".7386" to i64
  %".7387" = load i32, ptr %"R11"
  %"zext.743" = zext i32 %".7387" to i64
  %"shl.391" = shl i64 %"zext.743", 32
  %"or.356" = or i64 %"shl.391", %"zext.742"
  %".7388" = inttoptr i64 %"or.356" to ptr
  %".7389" = ptrtoint ptr %".7388" to i64
  %".7390" = add i64 %".7389", 4
  %"for_LDG.325" = inttoptr i64 %".7390" to ptr
  %".7391" = load float, ptr %"for_LDG.325"
  %".7392" = bitcast ptr %"R42" to ptr
  store float %".7391", ptr %".7392"
  ; LDG.E.SYS R45, [R4+0x8]
  %".7395" = load i32, ptr %"R4"
  %"zext.744" = zext i32 %".7395" to i64
  %".7396" = load i32, ptr %"R5"
  %"zext.745" = zext i32 %".7396" to i64
  %"shl.392" = shl i64 %"zext.745", 32
  %"or.357" = or i64 %"shl.392", %"zext.744"
  %".7397" = inttoptr i64 %"or.357" to ptr
  %".7398" = ptrtoint ptr %".7397" to i64
  %".7399" = add i64 %".7398", 8
  %"for_LDG.326" = inttoptr i64 %".7399" to ptr
  %".7400" = load float, ptr %"for_LDG.326"
  %".7401" = bitcast ptr %"R45" to ptr
  store float %".7400", ptr %".7401"
  ; LDG.E.SYS R47, [R4+0xc]
  %".7404" = load i32, ptr %"R4"
  %"zext.746" = zext i32 %".7404" to i64
  %".7405" = load i32, ptr %"R5"
  %"zext.747" = zext i32 %".7405" to i64
  %"shl.393" = shl i64 %"zext.747", 32
  %"or.358" = or i64 %"shl.393", %"zext.746"
  %".7406" = inttoptr i64 %"or.358" to ptr
  %".7407" = ptrtoint ptr %".7406" to i64
  %".7408" = add i64 %".7407", 12
  %"for_LDG.327" = inttoptr i64 %".7408" to ptr
  %".7409" = load float, ptr %"for_LDG.327"
  %".7410" = bitcast ptr %"R47" to ptr
  store float %".7409", ptr %".7410"
  ; LDG.E.SYS R44, [R10+0x8]
  %".7413" = load i32, ptr %"R10"
  %"zext.748" = zext i32 %".7413" to i64
  %".7414" = load i32, ptr %"R11"
  %"zext.749" = zext i32 %".7414" to i64
  %"shl.394" = shl i64 %"zext.749", 32
  %"or.359" = or i64 %"shl.394", %"zext.748"
  %".7415" = inttoptr i64 %"or.359" to ptr
  %".7416" = ptrtoint ptr %".7415" to i64
  %".7417" = add i64 %".7416", 8
  %"for_LDG.328" = inttoptr i64 %".7417" to ptr
  %".7418" = load float, ptr %"for_LDG.328"
  %".7419" = bitcast ptr %"R44" to ptr
  store float %".7418", ptr %".7419"
  ; LDG.E.SYS R46, [R10+0xc]
  %".7422" = load i32, ptr %"R10"
  %"zext.750" = zext i32 %".7422" to i64
  %".7423" = load i32, ptr %"R11"
  %"zext.751" = zext i32 %".7423" to i64
  %"shl.395" = shl i64 %"zext.751", 32
  %"or.360" = or i64 %"shl.395", %"zext.750"
  %".7424" = inttoptr i64 %"or.360" to ptr
  %".7425" = ptrtoint ptr %".7424" to i64
  %".7426" = add i64 %".7425", 12
  %"for_LDG.329" = inttoptr i64 %".7426" to ptr
  %".7427" = load float, ptr %"for_LDG.329"
  %".7428" = bitcast ptr %"R46" to ptr
  store float %".7427", ptr %".7428"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".7431" = xor i1 1, 1
  %".7432" = and i1 %".7431", 1
  %".7433" = and i1 %".7432", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".7435" = load i32, ptr %"R35"
  %"add.330" = add i32 %".7435", -8
  %"add.331" = add i32 %"add.330", 0
  store i32 %"add.331", ptr %"R35"
  ; IADD3 R34, R34, 0x8, RZ
  %".7438" = load i32, ptr %"R34"
  %"add.332" = add i32 %".7438", 8
  %"add.333" = add i32 %"add.332", 0
  store i32 %"add.333", ptr %"R34"
  ; FMUL R8, R13, R22
  %".7441" = load float, ptr %"R13"
  %".7442" = load float, ptr %"R22"
  %"fmul.308" = fmul float %".7441", %".7442"
  %".7443" = bitcast ptr %"R8" to ptr
  store float %"fmul.308", ptr %".7443"
  ; FFMA R8, R8, R12, R21
  %".7446" = load float, ptr %"R8"
  %".7447" = load float, ptr %"R12"
  %".7448" = load float, ptr %"R21"
  %"fmul.309" = fmul float %".7446", %".7447"
  %"fadd.281" = fadd float %"fmul.309", %".7448"
  %".7449" = bitcast ptr %"R8" to ptr
  store float %"fadd.281", ptr %".7449"
  ; FMUL R25, R25, R22
  %".7452" = load float, ptr %"R25"
  %".7453" = load float, ptr %"R22"
  %"fmul.310" = fmul float %".7452", %".7453"
  %".7454" = bitcast ptr %"R25" to ptr
  store float %"fmul.310", ptr %".7454"
  ; FFMA R8, R25, R24, R8
  %".7457" = load float, ptr %"R25"
  %".7458" = load float, ptr %"R24"
  %".7459" = load float, ptr %"R8"
  %"fmul.311" = fmul float %".7457", %".7458"
  %"fadd.282" = fadd float %"fmul.311", %".7459"
  %".7460" = bitcast ptr %"R8" to ptr
  store float %"fadd.282", ptr %".7460"
  ; FMUL R37, R37, R22
  %".7463" = load float, ptr %"R37"
  %".7464" = load float, ptr %"R22"
  %"fmul.312" = fmul float %".7463", %".7464"
  %".7465" = bitcast ptr %"R37" to ptr
  store float %"fmul.312", ptr %".7465"
  ; FFMA R8, R37, R36, R8
  %".7468" = load float, ptr %"R37"
  %".7469" = load float, ptr %"R36"
  %".7470" = load float, ptr %"R8"
  %"fmul.313" = fmul float %".7468", %".7469"
  %"fadd.283" = fadd float %"fmul.313", %".7470"
  %".7471" = bitcast ptr %"R8" to ptr
  store float %"fadd.283", ptr %".7471"
  ; FMUL R39, R39, R22
  %".7474" = load float, ptr %"R39"
  %".7475" = load float, ptr %"R22"
  %"fmul.314" = fmul float %".7474", %".7475"
  %".7476" = bitcast ptr %"R39" to ptr
  store float %"fmul.314", ptr %".7476"
  ; FFMA R8, R39, R38, R8
  %".7479" = load float, ptr %"R39"
  %".7480" = load float, ptr %"R38"
  %".7481" = load float, ptr %"R8"
  %"fmul.315" = fmul float %".7479", %".7480"
  %"fadd.284" = fadd float %"fmul.315", %".7481"
  %".7482" = bitcast ptr %"R8" to ptr
  store float %"fadd.284", ptr %".7482"
  ; FMUL R41, R41, R22
  %".7485" = load float, ptr %"R41"
  %".7486" = load float, ptr %"R22"
  %"fmul.316" = fmul float %".7485", %".7486"
  %".7487" = bitcast ptr %"R41" to ptr
  store float %"fmul.316", ptr %".7487"
  ; FFMA R8, R41, R40, R8
  %".7490" = load float, ptr %"R41"
  %".7491" = load float, ptr %"R40"
  %".7492" = load float, ptr %"R8"
  %"fmul.317" = fmul float %".7490", %".7491"
  %"fadd.285" = fadd float %"fmul.317", %".7492"
  %".7493" = bitcast ptr %"R8" to ptr
  store float %"fadd.285", ptr %".7493"
  ; FMUL R43, R43, R22
  %".7496" = load float, ptr %"R43"
  %".7497" = load float, ptr %"R22"
  %"fmul.318" = fmul float %".7496", %".7497"
  %".7498" = bitcast ptr %"R43" to ptr
  store float %"fmul.318", ptr %".7498"
  ; FFMA R8, R43, R42, R8
  %".7501" = load float, ptr %"R43"
  %".7502" = load float, ptr %"R42"
  %".7503" = load float, ptr %"R8"
  %"fmul.319" = fmul float %".7501", %".7502"
  %"fadd.286" = fadd float %"fmul.319", %".7503"
  %".7504" = bitcast ptr %"R8" to ptr
  store float %"fadd.286", ptr %".7504"
  ; FMUL R45, R45, R22.reuse
  %".7507" = load float, ptr %"R45"
  %".7508" = load float, ptr %"R22"
  %"fmul.320" = fmul float %".7507", %".7508"
  %".7509" = bitcast ptr %"R45" to ptr
  store float %"fmul.320", ptr %".7509"
  ; FMUL R47, R47, R22
  %".7512" = load float, ptr %"R47"
  %".7513" = load float, ptr %"R22"
  %"fmul.321" = fmul float %".7512", %".7513"
  %".7514" = bitcast ptr %"R47" to ptr
  store float %"fmul.321", ptr %".7514"
  ; FFMA R8, R45, R44, R8
  %".7517" = load float, ptr %"R45"
  %".7518" = load float, ptr %"R44"
  %".7519" = load float, ptr %"R8"
  %"fmul.322" = fmul float %".7517", %".7518"
  %"fadd.287" = fadd float %"fmul.322", %".7519"
  %".7520" = bitcast ptr %"R8" to ptr
  store float %"fadd.287", ptr %".7520"
  ; FFMA R21, R47, R46, R8
  %".7523" = load float, ptr %"R47"
  %".7524" = load float, ptr %"R46"
  %".7525" = load float, ptr %"R8"
  %"fmul.323" = fmul float %".7523", %".7524"
  %"fadd.288" = fadd float %"fmul.323", %".7525"
  %".7526" = bitcast ptr %"R21" to ptr
  store float %"fadd.288", ptr %".7526"
  br label %".L_x_40"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".7530" = load i32, ptr %"R35"
  %".7531" = load i1, ptr %"PT"
  %"cmp.62" = icmp ne i32 %".7530", 0
  %".7532" = or i1 %"cmp.62", %".7531"
  store i1 %".7532", ptr %"P0"
  ; @!P0 BRA `(.L_x_36)
  %".7535" = load i1, ptr %"P0"
  %".7536" = icmp eq i1 %".7535", 1
  br i1 %".7536", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IADD3 R6, R3, R34, RZ
  %".7541" = load i32, ptr %"R3"
  %".7542" = load i32, ptr %"R34"
  %"add.334" = add i32 %".7541", %".7542"
  %"add.335" = add i32 %"add.334", 0
  store i32 %"add.335", ptr %"R6"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".7545" = load i32, ptr %"R34"
  %".7546" = load i32, ptr %"R7"
  %"mul.102" = mul i32 %".7545", %".7546"
  %"add.336" = add i32 %"mul.102", %"Arg_3"
  store i32 %"add.336", ptr %"R4"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".7549" = load i32, ptr %"R6"
  %".7550" = load i32, ptr %"R7"
  %"mul.103" = mul i32 %".7549", %".7550"
  %"add.337" = add i32 %"mul.103", %"Arg_4"
  store i32 %"add.337", ptr %"R6"
  ; LDG.E.SYS R9, [R4]
  %".7553" = load i32, ptr %"R4"
  %"zext.752" = zext i32 %".7553" to i64
  %".7554" = load i32, ptr %"R5"
  %"zext.753" = zext i32 %".7554" to i64
  %"shl.396" = shl i64 %"zext.753", 32
  %"or.361" = or i64 %"shl.396", %"zext.752"
  %".7555" = inttoptr i64 %"or.361" to ptr
  %".7556" = ptrtoint ptr %".7555" to i64
  %".7557" = add i64 %".7556", 0
  %"for_LDG.330" = inttoptr i64 %".7557" to ptr
  %".7558" = load float, ptr %"for_LDG.330"
  %".7559" = bitcast ptr %"R9" to ptr
  store float %".7558", ptr %".7559"
  ; LDG.E.SYS R10, [R6]
  %".7562" = load i32, ptr %"R6"
  %"zext.754" = zext i32 %".7562" to i64
  %".7563" = load i32, ptr %"R7"
  %"zext.755" = zext i32 %".7563" to i64
  %"shl.397" = shl i64 %"zext.755", 32
  %"or.362" = or i64 %"shl.397", %"zext.754"
  %".7564" = inttoptr i64 %"or.362" to ptr
  %".7565" = ptrtoint ptr %".7564" to i64
  %".7566" = add i64 %".7565", 0
  %"for_LDG.331" = inttoptr i64 %".7566" to ptr
  %".7567" = load float, ptr %"for_LDG.331"
  %".7568" = bitcast ptr %"R10" to ptr
  store float %".7567", ptr %".7568"
  ; LDG.E.SYS R11, [R4+0x4]
  %".7571" = load i32, ptr %"R4"
  %"zext.756" = zext i32 %".7571" to i64
  %".7572" = load i32, ptr %"R5"
  %"zext.757" = zext i32 %".7572" to i64
  %"shl.398" = shl i64 %"zext.757", 32
  %"or.363" = or i64 %"shl.398", %"zext.756"
  %".7573" = inttoptr i64 %"or.363" to ptr
  %".7574" = ptrtoint ptr %".7573" to i64
  %".7575" = add i64 %".7574", 4
  %"for_LDG.332" = inttoptr i64 %".7575" to ptr
  %".7576" = load float, ptr %"for_LDG.332"
  %".7577" = bitcast ptr %"R11" to ptr
  store float %".7576", ptr %".7577"
  ; LDG.E.SYS R12, [R6+0x4]
  %".7580" = load i32, ptr %"R6"
  %"zext.758" = zext i32 %".7580" to i64
  %".7581" = load i32, ptr %"R7"
  %"zext.759" = zext i32 %".7581" to i64
  %"shl.399" = shl i64 %"zext.759", 32
  %"or.364" = or i64 %"shl.399", %"zext.758"
  %".7582" = inttoptr i64 %"or.364" to ptr
  %".7583" = ptrtoint ptr %".7582" to i64
  %".7584" = add i64 %".7583", 4
  %"for_LDG.333" = inttoptr i64 %".7584" to ptr
  %".7585" = load float, ptr %"for_LDG.333"
  %".7586" = bitcast ptr %"R12" to ptr
  store float %".7585", ptr %".7586"
  ; LDG.E.SYS R13, [R4+0x8]
  %".7589" = load i32, ptr %"R4"
  %"zext.760" = zext i32 %".7589" to i64
  %".7590" = load i32, ptr %"R5"
  %"zext.761" = zext i32 %".7590" to i64
  %"shl.400" = shl i64 %"zext.761", 32
  %"or.365" = or i64 %"shl.400", %"zext.760"
  %".7591" = inttoptr i64 %"or.365" to ptr
  %".7592" = ptrtoint ptr %".7591" to i64
  %".7593" = add i64 %".7592", 8
  %"for_LDG.334" = inttoptr i64 %".7593" to ptr
  %".7594" = load float, ptr %"for_LDG.334"
  %".7595" = bitcast ptr %"R13" to ptr
  store float %".7594", ptr %".7595"
  ; LDG.E.SYS R24, [R6+0x8]
  %".7598" = load i32, ptr %"R6"
  %"zext.762" = zext i32 %".7598" to i64
  %".7599" = load i32, ptr %"R7"
  %"zext.763" = zext i32 %".7599" to i64
  %"shl.401" = shl i64 %"zext.763", 32
  %"or.366" = or i64 %"shl.401", %"zext.762"
  %".7600" = inttoptr i64 %"or.366" to ptr
  %".7601" = ptrtoint ptr %".7600" to i64
  %".7602" = add i64 %".7601", 8
  %"for_LDG.335" = inttoptr i64 %".7602" to ptr
  %".7603" = load float, ptr %"for_LDG.335"
  %".7604" = bitcast ptr %"R24" to ptr
  store float %".7603", ptr %".7604"
  ; LDG.E.SYS R25, [R4+0xc]
  %".7607" = load i32, ptr %"R4"
  %"zext.764" = zext i32 %".7607" to i64
  %".7608" = load i32, ptr %"R5"
  %"zext.765" = zext i32 %".7608" to i64
  %"shl.402" = shl i64 %"zext.765", 32
  %"or.367" = or i64 %"shl.402", %"zext.764"
  %".7609" = inttoptr i64 %"or.367" to ptr
  %".7610" = ptrtoint ptr %".7609" to i64
  %".7611" = add i64 %".7610", 12
  %"for_LDG.336" = inttoptr i64 %".7611" to ptr
  %".7612" = load float, ptr %"for_LDG.336"
  %".7613" = bitcast ptr %"R25" to ptr
  store float %".7612", ptr %".7613"
  ; LDG.E.SYS R36, [R6+0xc]
  %".7616" = load i32, ptr %"R6"
  %"zext.766" = zext i32 %".7616" to i64
  %".7617" = load i32, ptr %"R7"
  %"zext.767" = zext i32 %".7617" to i64
  %"shl.403" = shl i64 %"zext.767", 32
  %"or.368" = or i64 %"shl.403", %"zext.766"
  %".7618" = inttoptr i64 %"or.368" to ptr
  %".7619" = ptrtoint ptr %".7618" to i64
  %".7620" = add i64 %".7619", 12
  %"for_LDG.337" = inttoptr i64 %".7620" to ptr
  %".7621" = load float, ptr %"for_LDG.337"
  %".7622" = bitcast ptr %"R36" to ptr
  store float %".7621", ptr %".7622"
  ; IADD3 R35, R35, -0x4, RZ
  %".7625" = load i32, ptr %"R35"
  %"add.338" = add i32 %".7625", -4
  %"add.339" = add i32 %"add.338", 0
  store i32 %"add.339", ptr %"R35"
  ; IADD3 R34, R34, 0x4, RZ
  %".7628" = load i32, ptr %"R34"
  %"add.340" = add i32 %".7628", 4
  %"add.341" = add i32 %"add.340", 0
  store i32 %"add.341", ptr %"R34"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".7631" = load i32, ptr %"R35"
  %".7632" = load i1, ptr %"PT"
  %"cmp.63" = icmp ne i32 %".7631", 0
  %".7633" = and i1 %"cmp.63", %".7632"
  store i1 %".7633", ptr %"P0"
  ; FMUL R8, R9, R22
  %".7636" = load float, ptr %"R9"
  %".7637" = load float, ptr %"R22"
  %"fmul.324" = fmul float %".7636", %".7637"
  %".7638" = bitcast ptr %"R8" to ptr
  store float %"fmul.324", ptr %".7638"
  ; FFMA R8, R8, R10, R21
  %".7641" = load float, ptr %"R8"
  %".7642" = load float, ptr %"R10"
  %".7643" = load float, ptr %"R21"
  %"fmul.325" = fmul float %".7641", %".7642"
  %"fadd.289" = fadd float %"fmul.325", %".7643"
  %".7644" = bitcast ptr %"R8" to ptr
  store float %"fadd.289", ptr %".7644"
  ; FMUL R11, R11, R22
  %".7647" = load float, ptr %"R11"
  %".7648" = load float, ptr %"R22"
  %"fmul.326" = fmul float %".7647", %".7648"
  %".7649" = bitcast ptr %"R11" to ptr
  store float %"fmul.326", ptr %".7649"
  ; FFMA R8, R11, R12, R8
  %".7652" = load float, ptr %"R11"
  %".7653" = load float, ptr %"R12"
  %".7654" = load float, ptr %"R8"
  %"fmul.327" = fmul float %".7652", %".7653"
  %"fadd.290" = fadd float %"fmul.327", %".7654"
  %".7655" = bitcast ptr %"R8" to ptr
  store float %"fadd.290", ptr %".7655"
  ; FMUL R13, R13, R22
  %".7658" = load float, ptr %"R13"
  %".7659" = load float, ptr %"R22"
  %"fmul.328" = fmul float %".7658", %".7659"
  %".7660" = bitcast ptr %"R13" to ptr
  store float %"fmul.328", ptr %".7660"
  ; FFMA R8, R13, R24, R8
  %".7663" = load float, ptr %"R13"
  %".7664" = load float, ptr %"R24"
  %".7665" = load float, ptr %"R8"
  %"fmul.329" = fmul float %".7663", %".7664"
  %"fadd.291" = fadd float %"fmul.329", %".7665"
  %".7666" = bitcast ptr %"R8" to ptr
  store float %"fadd.291", ptr %".7666"
  ; FMUL R25, R25, R22
  %".7669" = load float, ptr %"R25"
  %".7670" = load float, ptr %"R22"
  %"fmul.330" = fmul float %".7669", %".7670"
  %".7671" = bitcast ptr %"R25" to ptr
  store float %"fmul.330", ptr %".7671"
  ; FFMA R21, R25, R36, R8
  %".7674" = load float, ptr %"R25"
  %".7675" = load float, ptr %"R36"
  %".7676" = load float, ptr %"R8"
  %"fmul.331" = fmul float %".7674", %".7675"
  %"fadd.292" = fadd float %"fmul.331", %".7676"
  %".7677" = bitcast ptr %"R21" to ptr
  store float %"fadd.292", ptr %".7677"
  ; @P0 BRA `(.L_x_37)
  %".7680" = load i1, ptr %"P0"
  %".7681" = icmp ne i1 %".7680", 1
  br i1 %".7681", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".7684" = load i32, ptr %"R48"
  %".7685" = load i1, ptr %"PT"
  %"cmp.64" = icmp ne i32 %".7684", 0
  %".7686" = and i1 %"cmp.64", %".7685"
  store i1 %".7686", ptr %"P0"
  ; @!P0 BRA `(.L_x_35)
  %".7689" = load i1, ptr %"P0"
  %".7690" = icmp eq i1 %".7689", 1
  br i1 %".7690", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IADD3 R4, R3, R34, RZ
  %".7695" = load i32, ptr %"R3"
  %".7696" = load i32, ptr %"R34"
  %"add.342" = add i32 %".7695", %".7696"
  %"add.343" = add i32 %"add.342", 0
  store i32 %"add.343", ptr %"R4"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".7699" = load i32, ptr %"R34"
  %".7700" = load i32, ptr %"R5"
  %"mul.104" = mul i32 %".7699", %".7700"
  %"add.344" = add i32 %"mul.104", %"Arg_3"
  store i32 %"add.344", ptr %"R34"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".7703" = load i32, ptr %"R4"
  %".7704" = load i32, ptr %"R5"
  %"mul.105" = mul i32 %".7703", %".7704"
  %"add.345" = add i32 %"mul.105", %"Arg_4"
  store i32 %"add.345", ptr %"R4"
  ; LDG.E.SYS R7, [R34]
  %".7707" = load i32, ptr %"R34"
  %"zext.768" = zext i32 %".7707" to i64
  %".7708" = load i32, ptr %"R35"
  %"zext.769" = zext i32 %".7708" to i64
  %"shl.404" = shl i64 %"zext.769", 32
  %"or.369" = or i64 %"shl.404", %"zext.768"
  %".7709" = inttoptr i64 %"or.369" to ptr
  %".7710" = ptrtoint ptr %".7709" to i64
  %".7711" = add i64 %".7710", 0
  %"for_LDG.338" = inttoptr i64 %".7711" to ptr
  %".7712" = load float, ptr %"for_LDG.338"
  %".7713" = bitcast ptr %"R7" to ptr
  store float %".7712", ptr %".7713"
  ; LDG.E.SYS R8, [R4]
  %".7716" = load i32, ptr %"R4"
  %"zext.770" = zext i32 %".7716" to i64
  %".7717" = load i32, ptr %"R5"
  %"zext.771" = zext i32 %".7717" to i64
  %"shl.405" = shl i64 %"zext.771", 32
  %"or.370" = or i64 %"shl.405", %"zext.770"
  %".7718" = inttoptr i64 %"or.370" to ptr
  %".7719" = ptrtoint ptr %".7718" to i64
  %".7720" = add i64 %".7719", 0
  %"for_LDG.339" = inttoptr i64 %".7720" to ptr
  %".7721" = load float, ptr %"for_LDG.339"
  %".7722" = bitcast ptr %"R8" to ptr
  store float %".7721", ptr %".7722"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".7725" = load i32, ptr %"R48"
  %".7726" = load i1, ptr %"PT"
  %"cmp.65" = icmp ne i32 %".7725", 1
  %".7727" = and i1 %"cmp.65", %".7726"
  store i1 %".7727", ptr %"P0"
  ; FMUL R6, R7, R22
  %".7730" = load float, ptr %"R7"
  %".7731" = load float, ptr %"R22"
  %"fmul.332" = fmul float %".7730", %".7731"
  %".7732" = bitcast ptr %"R6" to ptr
  store float %"fmul.332", ptr %".7732"
  ; FFMA R21, R6, R8, R21
  %".7735" = load float, ptr %"R6"
  %".7736" = load float, ptr %"R8"
  %".7737" = load float, ptr %"R21"
  %"fmul.333" = fmul float %".7735", %".7736"
  %"fadd.293" = fadd float %"fmul.333", %".7737"
  %".7738" = bitcast ptr %"R21" to ptr
  store float %"fadd.293", ptr %".7738"
  ; @!P0 BRA `(.L_x_35)
  %".7741" = load i1, ptr %"P0"
  %".7742" = icmp eq i1 %".7741", 1
  br i1 %".7742", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".7745" = load i32, ptr %"R48"
  %".7746" = load i1, ptr %"PT"
  %"cmp.66" = icmp ne i32 %".7745", 2
  %".7747" = and i1 %"cmp.66", %".7746"
  store i1 %".7747", ptr %"P0"
  ; LDG.E.SYS R7, [R34+0x4]
  %".7750" = load i32, ptr %"R34"
  %"zext.772" = zext i32 %".7750" to i64
  %".7751" = load i32, ptr %"R35"
  %"zext.773" = zext i32 %".7751" to i64
  %"shl.406" = shl i64 %"zext.773", 32
  %"or.371" = or i64 %"shl.406", %"zext.772"
  %".7752" = inttoptr i64 %"or.371" to ptr
  %".7753" = ptrtoint ptr %".7752" to i64
  %".7754" = add i64 %".7753", 4
  %"for_LDG.340" = inttoptr i64 %".7754" to ptr
  %".7755" = load float, ptr %"for_LDG.340"
  %".7756" = bitcast ptr %"R7" to ptr
  store float %".7755", ptr %".7756"
  ; LDG.E.SYS R8, [R4+0x4]
  %".7759" = load i32, ptr %"R4"
  %"zext.774" = zext i32 %".7759" to i64
  %".7760" = load i32, ptr %"R5"
  %"zext.775" = zext i32 %".7760" to i64
  %"shl.407" = shl i64 %"zext.775", 32
  %"or.372" = or i64 %"shl.407", %"zext.774"
  %".7761" = inttoptr i64 %"or.372" to ptr
  %".7762" = ptrtoint ptr %".7761" to i64
  %".7763" = add i64 %".7762", 4
  %"for_LDG.341" = inttoptr i64 %".7763" to ptr
  %".7764" = load float, ptr %"for_LDG.341"
  %".7765" = bitcast ptr %"R8" to ptr
  store float %".7764", ptr %".7765"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".7768" = load i1, ptr %"P0"
  %".7769" = icmp ne i1 %".7768", 1
  br i1 %".7769", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  %".7772" = load i32, ptr %"R34"
  %"zext.776" = zext i32 %".7772" to i64
  %".7773" = load i32, ptr %"R35"
  %"zext.777" = zext i32 %".7773" to i64
  %"shl.408" = shl i64 %"zext.777", 32
  %"or.373" = or i64 %"shl.408", %"zext.776"
  %".7774" = inttoptr i64 %"or.373" to ptr
  %".7775" = ptrtoint ptr %".7774" to i64
  %".7776" = add i64 %".7775", 8
  %"for_LDG.342" = inttoptr i64 %".7776" to ptr
  %".7777" = load float, ptr %"for_LDG.342"
  %".7778" = bitcast ptr %"R9" to ptr
  store float %".7777", ptr %".7778"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".7783" = load i1, ptr %"P0"
  %".7784" = icmp ne i1 %".7783", 1
  br i1 %".7784", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  %".7787" = load i32, ptr %"R4"
  %"zext.778" = zext i32 %".7787" to i64
  %".7788" = load i32, ptr %"R5"
  %"zext.779" = zext i32 %".7788" to i64
  %"shl.409" = shl i64 %"zext.779", 32
  %"or.374" = or i64 %"shl.409", %"zext.778"
  %".7789" = inttoptr i64 %"or.374" to ptr
  %".7790" = ptrtoint ptr %".7789" to i64
  %".7791" = add i64 %".7790", 8
  %"for_LDG.343" = inttoptr i64 %".7791" to ptr
  %".7792" = load float, ptr %"for_LDG.343"
  %".7793" = bitcast ptr %"R10" to ptr
  store float %".7792", ptr %".7793"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".7798" = load float, ptr %"R7"
  %".7799" = load float, ptr %"R22"
  %"fmul.334" = fmul float %".7798", %".7799"
  %".7800" = bitcast ptr %"R6" to ptr
  store float %"fmul.334", ptr %".7800"
  ; FFMA R21, R6, R8, R21
  %".7803" = load float, ptr %"R6"
  %".7804" = load float, ptr %"R8"
  %".7805" = load float, ptr %"R21"
  %"fmul.335" = fmul float %".7803", %".7804"
  %"fadd.294" = fadd float %"fmul.335", %".7805"
  %".7806" = bitcast ptr %"R21" to ptr
  store float %"fadd.294", ptr %".7806"
  ; @P0 FMUL R22, R9, R22
  %".7809" = load i1, ptr %"P0"
  %".7810" = icmp ne i1 %".7809", 1
  br i1 %".7810", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".7813" = load float, ptr %"R9"
  %".7814" = load float, ptr %"R22"
  %"fmul.336" = fmul float %".7813", %".7814"
  %".7815" = bitcast ptr %"R22" to ptr
  store float %"fmul.336", ptr %".7815"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".7820" = load i1, ptr %"P0"
  %".7821" = icmp ne i1 %".7820", 1
  br i1 %".7821", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".7824" = load float, ptr %"R22"
  %".7825" = load float, ptr %"R10"
  %".7826" = load float, ptr %"R21"
  %"fmul.337" = fmul float %".7824", %".7825"
  %"fadd.295" = fadd float %"fmul.337", %".7826"
  %".7827" = bitcast ptr %"R21" to ptr
  store float %"fadd.295", ptr %".7827"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  %".7832" = load i32, ptr %"R30"
  %"zext.780" = zext i32 %".7832" to i64
  %"zext.781" = zext i32 0 to i64
  %"shl.410" = shl i64 %"zext.781", 32
  %"or.375" = or i64 %"shl.410", %"zext.780"
  %".7833" = inttoptr i64 %"or.375" to ptr
  %".7834" = ptrtoint ptr %".7833" to i64
  %".7835" = add i64 %".7834", 0
  %"for_LDG.344" = inttoptr i64 %".7835" to ptr
  %".7836" = load float, ptr %"for_LDG.344"
  %".7837" = bitcast ptr %"R4" to ptr
  store float %".7836", ptr %".7837"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".7842" = load float, ptr %"R4"
  %".7843" = load float, ptr %"R21"
  %"fadd.296" = fadd float %".7842", %".7843"
  %".7844" = bitcast ptr %"R21" to ptr
  store float %"fadd.296", ptr %".7844"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".7847" = load float, ptr %"R21"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".7847")
  %".7848" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".7849" = and i1 %"fcmp_unordered.2", %".7848"
  store i1 %".7849", ptr %"P0"
  ; @!P0 BRA `(.L_x_42)
  %".7852" = load i1, ptr %"P0"
  %".7853" = icmp eq i1 %".7852", 1
  br i1 %".7853", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".7856" = load float, ptr %"R21"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".7856")
  %"fmul.338" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".7857" = bitcast ptr %"R5" to ptr
  store float %"fmul.338", ptr %".7857"
  ; MOV R7, 0x3f800000
  %".7860" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".7860"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".7863" = load float, ptr %"R21"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".7863")
  %".7864" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".7865" = and i1 %"fcmp_unordered.3", %".7864"
  store i1 %".7865", ptr %"P0"
  ; MUFU.EX2 R5, R5
  %".7868" = load float, ptr %"R5"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".7868")
  %".7869" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.5", ptr %".7869"
  ; FADD R6, R5, 1
  %".7872" = load float, ptr %"R5"
  %"fadd.297" = fadd float %".7872", 0x3ff0000000000000
  %".7873" = bitcast ptr %"R6" to ptr
  store float %"fadd.297", ptr %".7873"
  ; MUFU.RCP R6, R6
  %".7876" = load float, ptr %"R6"
  %".7877" = fdiv float 0x3ff0000000000000, %".7876"
  %".7878" = bitcast ptr %"R6" to ptr
  store float %".7877", ptr %".7878"
  ; FFMA R4, R6, -2, R7
  %".7881" = load float, ptr %"R6"
  %".7882" = load float, ptr %"R7"
  %"fmul.339" = fmul float %".7881", 0xc000000000000000
  %"fadd.298" = fadd float %"fmul.339", %".7882"
  %".7883" = bitcast ptr %"R4" to ptr
  store float %"fadd.298", ptr %".7883"
  ; FSEL R4, R4, 1, !P0
  %".7886" = load float, ptr %"R4"
  %".7887" = load i1, ptr %"P0"
  %".7888" = icmp eq i1 %".7887", 1
  %"fsel.1" = select  i1 %".7888", float %".7886", float 0x3ff0000000000000
  %".7889" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".7889"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".7892" = load float, ptr %"R4"
  %".7893" = load float, ptr %"R21"
  %".7894" = bitcast float %".7892" to i32
  %".7895" = bitcast float 0x41e0000000000000 to i32
  %".7896" = bitcast float %".7893" to i32
  %".7897" = or i32 %".7894", %".7895"
  %".7898" = or i32 %".7894", %".7896"
  %".7899" = and i32 %".7897", %".7898"
  store i32 %".7899", ptr %"R4"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  %".7904" = bitcast ptr %"R5" to ptr
  store float 0x41ce407840000000, ptr %".7904"
  ; FMUL R4, R21, R21
  %".7907" = load float, ptr %"R21"
  %".7908" = load float, ptr %"R21"
  %"fmul.340" = fmul float %".7907", %".7908"
  %".7909" = bitcast ptr %"R4" to ptr
  store float %"fmul.340", ptr %".7909"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".7912" = load float, ptr %"R4"
  %".7913" = load float, ptr %"R5"
  %"fmul.341" = fmul float %".7912", %".7913"
  %"fadd.299" = fadd float %"fmul.341", 0xbfaac795c0000000
  %".7914" = bitcast ptr %"R5" to ptr
  store float %"fadd.299", ptr %".7914"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".7917" = load float, ptr %"R4"
  %".7918" = load float, ptr %"R5"
  %"fmul.342" = fmul float %".7917", %".7918"
  %"fadd.300" = fadd float %"fmul.342", 0x3fc10b2820000000
  %".7919" = bitcast ptr %"R5" to ptr
  store float %"fadd.300", ptr %".7919"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".7922" = load float, ptr %"R4"
  %".7923" = load float, ptr %"R5"
  %"fmul.343" = fmul float %".7922", %".7923"
  %"fadd.301" = fadd float %"fmul.343", 0xbfd5553da0000000
  %".7924" = bitcast ptr %"R5" to ptr
  store float %"fadd.301", ptr %".7924"
  ; FFMA R4, R4, R5, RZ
  %".7927" = load float, ptr %"R4"
  %".7928" = load float, ptr %"R5"
  %"fmul.344" = fmul float %".7927", %".7928"
  %"fadd.302" = fadd float %"fmul.344",              0x0
  %".7929" = bitcast ptr %"R4" to ptr
  store float %"fadd.302", ptr %".7929"
  ; FFMA R4, R21, R4, R21
  %".7932" = load float, ptr %"R21"
  %".7933" = load float, ptr %"R4"
  %".7934" = load float, ptr %"R21"
  %"fmul.345" = fmul float %".7932", %".7933"
  %"fadd.303" = fadd float %"fmul.345", %".7934"
  %".7935" = bitcast ptr %"R4" to ptr
  store float %"fadd.303", ptr %".7935"
  br label %".L_x_43"
.L_x_43:
  ; BSYNC B0
  br label %".L_x_41"
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  %".7941" = load i32, ptr %"R23"
  %"add.346" = add i32 %".7941", 25165824
  %"add.347" = add i32 %"add.346", 0
  store i32 %"add.347", ptr %"R5"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".7946" = load i32, ptr %"R5"
  %".7947" = and i32 %".7946", 2139095040
  store i32 %".7947", ptr %"R5"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".7950" = load i32, ptr %"R5"
  %".7951" = load i1, ptr %"PT"
  %"cmp.67" = icmp sgt i32 %".7950", 33554431
  %".7952" = and i1 %"cmp.67", %".7951"
  store i1 %".7952", ptr %"P0"
  ; @P0 BRA `(.L_x_45)
  %".7955" = load i1, ptr %"P0"
  %".7956" = icmp ne i1 %".7955", 1
  br i1 %".7956", label %".L_x_45", label %".L_x_41_split_0x47f0_CALL_0x4830"
.L_x_41_split_0x47f0_CALL_0x4830:
  ; MOV R24, R23
  %".7959" = load float, ptr %"R23"
  %".7960" = bitcast ptr %"R24" to ptr
  store float %".7959", ptr %".7960"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...4:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".7967" = icmp ult i32 1, 32
  %"SHF_min.30" = select  i1 %".7967", i32 1, i32 32
  %".7968" = load i32, ptr %"R24"
  %"zext.782" = zext i32 0 to i64
  %"zext.783" = zext i32 %".7968" to i64
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
  %".7973" = icmp ult i32 24, 32
  %"SHF_min.31" = select  i1 %".7973", i32 24, i32 32
  %".7974" = load i32, ptr %"R11"
  %"zext.785" = zext i32 %".7974" to i64
  %"zext.786" = zext i32 0 to i64
  %"zext.787" = zext i32 24 to i64
  %"shl.413" = shl i64 %"zext.785", 32
  %"or.377" = or i64 %"shl.413", %"zext.786"
  %"lshr.19" = lshr i64 %"or.377", %"zext.787"
  %"lshr.20" = lshr i64 %"lshr.19", 32
  %"trunc32.31" = trunc i64 %"lshr.20" to i32
  store i32 %"trunc32.31", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".7977" = load i32, ptr %"R25"
  %".7978" = load i1, ptr %"PT"
  %"cmp.68" = icmp ne i32 %".7977", 0
  %".7979" = and i1 %"cmp.68", %".7978"
  store i1 %".7979", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".7982" = load i1, ptr %"P0"
  %".7983" = icmp ne i1 %".7982", 1
  br i1 %".7983", label %".L_x_49...4", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".7986" = icmp ult i32 1, 32
  %"SHF_min.32" = select  i1 %".7986", i32 1, i32 32
  %".7987" = load i32, ptr %"R24"
  %"zext.788" = zext i32 0 to i64
  %"zext.789" = zext i32 %".7987" to i64
  %"zext.790" = zext i32 1 to i64
  %"shl.414" = shl i64 %"zext.788", 32
  %"or.378" = or i64 %"shl.414", %"zext.789"
  %"shl.415" = shl i64 %"or.378", %"zext.790"
  %"and.20" = and i64 %"shl.415", 4294967295
  %"trunc32.32" = trunc i64 %"and.20" to i32
  store i32 %"trunc32.32", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".7990" = load i32, ptr %"R11"
  %".7991" = load i1, ptr %"PT"
  %"cmp.69" = icmp ne i32 %".7990", 0
  %".7992" = and i1 %"cmp.69", %".7991"
  store i1 %".7992", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".7995" = load i1, ptr %"P0"
  %".7996" = icmp ne i1 %".7995", 1
  br i1 %".7996", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".7999" = load float, ptr %"R24"
  %"fmul.346" = fmul float %".7999", 0x43f0000000000000
  %"fadd.304" = fadd float %"fmul.346",              0x0
  %".8000" = bitcast ptr %"R12" to ptr
  store float %"fadd.304", ptr %".8000"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".8005" = load float, ptr %"R24"
  %"fmul.347" = fmul float %".8005", 0x43f0000000000000
  %"fadd.305" = fadd float %"fmul.347",              0x0
  %".8006" = bitcast ptr %"R12" to ptr
  store float %"fadd.305", ptr %".8006"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4:
  ; @!P0 MUFU.RCP R11, R24
  %".8011" = load i1, ptr %"P0"
  %".8012" = icmp eq i1 %".8011", 1
  br i1 %".8012", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".8015" = load i32, ptr %"R24"
  %"sint_to_f32.2" = sitofp i32 %".8015" to float
  %".8016" = fdiv float 0x3ff0000000000000, %"sint_to_f32.2"
  %".8017" = fptosi float %".8016" to i32
  store i32 %".8017", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4:
  ; MUFU.RCP R11, R24
  %".8022" = load i32, ptr %"R24"
  %"sint_to_f32.3" = sitofp i32 %".8022" to float
  %".8023" = fdiv float 0x3ff0000000000000, %"sint_to_f32.3"
  %".8024" = fptosi float %".8023" to i32
  store i32 %".8024", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4:
  ; @P0 MUFU.RCP R13, R12
  %".8029" = load i1, ptr %"P0"
  %".8030" = icmp ne i1 %".8029", 1
  br i1 %".8030", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".8033" = load float, ptr %"R12"
  %".8034" = fdiv float 0x3ff0000000000000, %".8033"
  %".8035" = bitcast ptr %"R13" to ptr
  store float %".8034", ptr %".8035"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4:
  ; MUFU.RCP R13, R12
  %".8040" = load float, ptr %"R12"
  %".8041" = fdiv float 0x3ff0000000000000, %".8040"
  %".8042" = bitcast ptr %"R13" to ptr
  store float %".8041", ptr %".8042"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4:
  ; @P0 FFMA R22, R12, R13, -1
  %".8047" = load i1, ptr %"P0"
  %".8048" = icmp ne i1 %".8047", 1
  br i1 %".8048", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".8051" = load float, ptr %"R12"
  %".8052" = load float, ptr %"R13"
  %"fmul.348" = fmul float %".8051", %".8052"
  %"fadd.306" = fadd float %"fmul.348", 0xbff0000000000000
  %".8053" = bitcast ptr %"R22" to ptr
  store float %"fadd.306", ptr %".8053"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4:
  ; FFMA R22, R12, R13, -1
  %".8058" = load float, ptr %"R12"
  %".8059" = load float, ptr %"R13"
  %"fmul.349" = fmul float %".8058", %".8059"
  %"fadd.307" = fadd float %"fmul.349", 0xbff0000000000000
  %".8060" = bitcast ptr %"R22" to ptr
  store float %"fadd.307", ptr %".8060"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".8065" = load i1, ptr %"P0"
  %".8066" = icmp ne i1 %".8065", 1
  br i1 %".8066", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".8069" = load float, ptr %"R22"
  %".8070" = fneg float %".8069"
  %"fadd.308" = fadd float %".8070",              0x0
  %".8071" = bitcast ptr %"R22" to ptr
  store float %"fadd.308", ptr %".8071"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4:
  ; FADD.FTZ R22, -R22, -RZ
  %".8076" = load float, ptr %"R22"
  %".8077" = fneg float %".8076"
  %"fadd.309" = fadd float %".8077",              0x0
  %".8078" = bitcast ptr %"R22" to ptr
  store float %"fadd.309", ptr %".8078"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4:
  ; @P0 FFMA R22, R13, R22, R13
  %".8083" = load i1, ptr %"P0"
  %".8084" = icmp ne i1 %".8083", 1
  br i1 %".8084", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".8087" = load float, ptr %"R13"
  %".8088" = load float, ptr %"R22"
  %".8089" = load float, ptr %"R13"
  %"fmul.350" = fmul float %".8087", %".8088"
  %"fadd.310" = fadd float %"fmul.350", %".8089"
  %".8090" = bitcast ptr %"R22" to ptr
  store float %"fadd.310", ptr %".8090"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4:
  ; FFMA R22, R13, R22, R13
  %".8095" = load float, ptr %"R13"
  %".8096" = load float, ptr %"R22"
  %".8097" = load float, ptr %"R13"
  %"fmul.351" = fmul float %".8095", %".8096"
  %"fadd.311" = fadd float %"fmul.351", %".8097"
  %".8098" = bitcast ptr %"R22" to ptr
  store float %"fadd.311", ptr %".8098"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8103" = load i1, ptr %"P0"
  %".8104" = icmp ne i1 %".8103", 1
  br i1 %".8104", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8107" = load float, ptr %"R22"
  %"fmul.352" = fmul float %".8107", 0x43f0000000000000
  %"fadd.312" = fadd float %"fmul.352",              0x0
  %".8108" = bitcast ptr %"R11" to ptr
  store float %"fadd.312", ptr %".8108"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8113" = load float, ptr %"R22"
  %"fmul.353" = fmul float %".8113", 0x43f0000000000000
  %"fadd.313" = fadd float %"fmul.353",              0x0
  %".8114" = bitcast ptr %"R11" to ptr
  store float %"fadd.313", ptr %".8114"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...4:
  ; BRA `(.L_x_50)
  br label %".L_x_50...4"
.L_x_49...4:
  ; IADD3 R34, R25, -0xfd, RZ
  %".8121" = load i32, ptr %"R25"
  %"add.348" = add i32 %".8121", -253
  %"add.349" = add i32 %"add.348", 0
  store i32 %"add.349", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".8124" = load i32, ptr %"R34"
  %".8125" = load i1, ptr %"PT"
  %"cmp.70" = icmp sgt i32 %".8124", 1
  %".8126" = and i1 %"cmp.70", %".8125"
  store i1 %".8126", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".8129" = load i1, ptr %"P0"
  %".8130" = icmp ne i1 %".8129", 1
  br i1 %".8130", label %".L_x_51...4", label %".L_x_49_split_0x4a30...4"
.L_x_49_split_0x4a30...4:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".8133" = load i32, ptr %"R24"
  %".8134" = and i32 %".8133", 8388607
  store i32 %".8134", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".8139" = load i32, ptr %"R11"
  %".8140" = or i32 %".8139", 1065353216
  store i32 %".8140", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".8143" = load i32, ptr %"R34"
  %".8144" = icmp ult i32 %".8143", 32
  %"SHF_min.33" = select  i1 %".8144", i32 %".8143", i32 32
  %".8145" = load i32, ptr %"R23"
  %".8146" = load i32, ptr %"R34"
  %"zext.791" = zext i32 0 to i64
  %"zext.792" = zext i32 %".8145" to i64
  %"zext.793" = zext i32 %".8146" to i64
  %"shl.416" = shl i64 %"zext.791", 32
  %"or.379" = or i64 %"shl.416", %"zext.792"
  %"shl.417" = shl i64 %"or.379", %"zext.793"
  %"and.21" = and i64 %"shl.417", 4294967295
  %"trunc32.33" = trunc i64 %"and.21" to i32
  store i32 %"trunc32.33", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".8149" = load float, ptr %"R11"
  %".8150" = fdiv float 0x3ff0000000000000, %".8149"
  %".8151" = bitcast ptr %"R12" to ptr
  store float %".8150", ptr %".8151"
  ; FFMA R13, R11, R12, -1
  %".8154" = load float, ptr %"R11"
  %".8155" = load float, ptr %"R12"
  %"fmul.354" = fmul float %".8154", %".8155"
  %"fadd.314" = fadd float %"fmul.354", 0xbff0000000000000
  %".8156" = bitcast ptr %"R13" to ptr
  store float %"fadd.314", ptr %".8156"
  ; FADD.FTZ R13, -R13, -RZ
  %".8159" = load float, ptr %"R13"
  %".8160" = fneg float %".8159"
  %"fadd.315" = fadd float %".8160",              0x0
  %".8161" = bitcast ptr %"R13" to ptr
  store float %"fadd.315", ptr %".8161"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".8164" = load float, ptr %"R12"
  %".8165" = load float, ptr %"R13"
  %".8166" = load float, ptr %"R12"
  %"fmul.355" = fmul float %".8164", %".8165"
  %"fadd.316" = fadd float %"fmul.355", %".8166"
  %".8167" = bitcast ptr %"R22" to ptr
  store float %"fadd.316", ptr %".8167"
  ; FFMA.RP R13, R12, R13, R12
  %".8170" = load float, ptr %"R12"
  %".8171" = load float, ptr %"R13"
  %".8172" = load float, ptr %"R12"
  %"fmul.356" = fmul float %".8170", %".8171"
  %"fadd.317" = fadd float %"fmul.356", %".8172"
  %".8173" = bitcast ptr %"R13" to ptr
  store float %"fadd.317", ptr %".8173"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".8176" = load float, ptr %"R22"
  %".8177" = bitcast float %".8176" to i32
  %".8178" = and i32 %".8177", 8388607
  store i32 %".8178", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".8181" = load float, ptr %"R22"
  %".8182" = load float, ptr %"R13"
  %".8183" = load i1, ptr %"PT"
  %"fcmp_ordered.3" = fcmp une float %".8181", %".8182"
  %".8184" = and i1 %"fcmp_ordered.3", %".8183"
  store i1 %".8184", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".8187" = load i32, ptr %"R12"
  %".8188" = or i32 %".8187", 8388608
  store i32 %".8188", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".8191" = load i1, ptr %"P0"
  %".8192" = icmp eq i1 %".8191", 1
  %"sel.6" = select  i1 %".8192", i32 0, i32 4294967295
  store i32 %"sel.6", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".8195" = load i32, ptr %"R23"
  %".8196" = load i32, ptr %"R12"
  %".8197" = and i32 %".8195", %".8196"
  store i32 %".8197", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".8200" = load i32, ptr %"R13"
  %".8201" = sub i32 0, %".8200"
  %"add.350" = add i32 %".8201", 0
  %"add.351" = add i32 %"add.350", 0
  store i32 %"add.351", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".8204" = load i32, ptr %"R34"
  %".8205" = icmp ult i32 %".8204", 32
  %"SHF_min.34" = select  i1 %".8205", i32 %".8204", i32 32
  %".8206" = load i32, ptr %"R23"
  %".8207" = load i32, ptr %"R34"
  %"zext.794" = zext i32 %".8206" to i64
  %"zext.795" = zext i32 0 to i64
  %"zext.796" = zext i32 %".8207" to i64
  %"shl.418" = shl i64 %"zext.794", 32
  %"or.380" = or i64 %"shl.418", %"zext.795"
  %"lshr.21" = lshr i64 %"or.380", %"zext.796"
  %"lshr.22" = lshr i64 %"lshr.21", 32
  %"trunc32.34" = trunc i64 %"lshr.22" to i32
  store i32 %"trunc32.34", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".8210" = load i32, ptr %"R13"
  %".8211" = load i32, ptr %"R34"
  %".8212" = load i32, ptr %"R12"
  %"LOP3_result.12" = call i32 @"custom_lop3"(i32 %".8212", i32 0, i32 %".8210", i32 %".8211")
  %".8213" = trunc i32 %"LOP3_result.12" to i1
  store i1 %".8213", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".8216" = load i32, ptr %"R23"
  %"LOP3_result.13" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".8216", i32 1)
  %".8217" = trunc i32 %"LOP3_result.13" to i1
  store i1 %".8217", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".8220" = load i32, ptr %"R23"
  %"LOP3_result.14" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".8220", i32 2)
  %".8221" = trunc i32 %"LOP3_result.14" to i1
  store i1 %".8221", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".8224" = load i1, ptr %"P0"
  %".8225" = sub i1 0, %".8224"
  %".8226" = load i1, ptr %"P1"
  %".8227" = sub i1 0, %".8226"
  %".8228" = or i1 %".8225", %".8227"
  %".8229" = and i1 %".8228", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".8231" = load i32, ptr %"R24"
  %"LOP3_result.15" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".8231", i32 8388607)
  %".8232" = trunc i32 %"LOP3_result.15" to i1
  store i1 %".8232", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".8235" = load i1, ptr %"P0"
  %".8236" = icmp eq i1 %".8235", 1
  %"sel.7" = select  i1 %".8236", i32 0, i32 1
  store i32 %"sel.7", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".8239" = load i32, ptr %"R11"
  %".8240" = sub i32 0, %".8239"
  %"add.352" = add i32 %".8240", 0
  %"add.353" = add i32 %"add.352", 0
  store i32 %"add.353", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".8243" = load i32, ptr %"R11"
  %".8244" = load i1, ptr %"PT"
  %"cmp.71" = icmp sge i32 %".8243", 0
  %".8245" = and i1 %"cmp.71", %".8244"
  store i1 %".8245", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".8248" = load i32, ptr %"R25"
  %"add.354" = add i32 %".8248", -252
  %"add.355" = add i32 %"add.354", 0
  store i32 %"add.355", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".8251" = load i32, ptr %"R11"
  %".8252" = icmp ult i32 %".8251", 32
  %"SHF_min.35" = select  i1 %".8252", i32 %".8251", i32 32
  %".8253" = load i32, ptr %"R12"
  %".8254" = load i32, ptr %"R11"
  %"zext.797" = zext i32 %".8253" to i64
  %"zext.798" = zext i32 0 to i64
  %"zext.799" = zext i32 %".8254" to i64
  %"shl.419" = shl i64 %"zext.797", 32
  %"or.381" = or i64 %"shl.419", %"zext.798"
  %"lshr.23" = lshr i64 %"or.381", %"zext.799"
  %"lshr.24" = lshr i64 %"lshr.23", 32
  %"trunc32.35" = trunc i64 %"lshr.24" to i32
  store i32 %"trunc32.35", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".8257" = load i1, ptr %"P0"
  %".8258" = icmp eq i1 %".8257", 1
  br i1 %".8258", label %".L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4"
.L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".8261" = load i32, ptr %"R11"
  %"add.356" = add i32 %".8261", 1
  %"add.357" = add i32 %"add.356", 0
  store i32 %"add.357", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4:
  ; IADD3 R11, R11, 0x1, RZ
  %".8266" = load i32, ptr %"R11"
  %"add.358" = add i32 %".8266", 1
  %"add.359" = add i32 %"add.358", 0
  store i32 %"add.359", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...4"
.L_x_49_split_0x4be0...4:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".8271" = load i1, ptr %"P1"
  %".8272" = icmp eq i1 %".8271", 1
  br i1 %".8272", label %".L_x_49_split_0x4be0...4_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...4"
.L_x_49_split_0x4be0...4_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".8275" = icmp ult i32 1, 32
  %"SHF_min.36" = select  i1 %".8275", i32 1, i32 32
  %".8276" = load i32, ptr %"R11"
  %"zext.800" = zext i32 0 to i64
  %"zext.801" = zext i32 %".8276" to i64
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
  %".8281" = icmp ult i32 1, 32
  %"SHF_min.37" = select  i1 %".8281", i32 1, i32 32
  %".8282" = load i32, ptr %"R11"
  %"zext.803" = zext i32 0 to i64
  %"zext.804" = zext i32 %".8282" to i64
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
  %".8287" = load i32, ptr %"R11"
  %".8288" = load i32, ptr %"R24"
  %".8289" = or i32 %".8287", 2147483648
  %".8290" = or i32 %".8287", %".8288"
  %".8291" = and i32 %".8289", %".8290"
  store i32 %".8291", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...4"
.L_x_51...4:
  ; MUFU.RCP R11, R24
  %".8296" = load i32, ptr %"R24"
  %"sint_to_f32.4" = sitofp i32 %".8296" to float
  %".8297" = fdiv float 0x3ff0000000000000, %"sint_to_f32.4"
  %".8298" = fptosi float %".8297" to i32
  store i32 %".8298", ptr %"R11"
  br label %".L_x_50...4"
.L_x_50...4:
  ; BSYNC B1
  br label %".L_x_48...4"
.L_x_48...4:
  ; MOV R22, R11
  %".8304" = load i32, ptr %"R11"
  store i32 %".8304", ptr %"R22"
  ; MOV R11, 0x0
  store i32 0, ptr %"R11"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.3"
.L_x_52...4:
  ; BRA `(.L_x_52)
  br label %".L_x_52...4"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.3:
.L_x_41_split_0x47f0_postCALL_0x4830:
  ; MOV R5, R22
  %".8313" = load i32, ptr %"R22"
  store i32 %".8313", ptr %"R5"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".8318" = load float, ptr %"R23"
  %".8319" = fdiv float 0x3ff0000000000000, %".8318"
  %".8320" = bitcast ptr %"R6" to ptr
  store float %".8319", ptr %".8320"
  ; FFMA R5, R23, R6, -1
  %".8323" = load float, ptr %"R23"
  %".8324" = load float, ptr %"R6"
  %"fmul.357" = fmul float %".8323", %".8324"
  %"fadd.318" = fadd float %"fmul.357", 0xbff0000000000000
  %".8325" = bitcast ptr %"R5" to ptr
  store float %"fadd.318", ptr %".8325"
  ; FADD.FTZ R5, -R5, -RZ
  %".8328" = load float, ptr %"R5"
  %".8329" = fneg float %".8328"
  %"fadd.319" = fadd float %".8329",              0x0
  %".8330" = bitcast ptr %"R5" to ptr
  store float %"fadd.319", ptr %".8330"
  ; FFMA R5, R6, R5, R6
  %".8333" = load float, ptr %"R6"
  %".8334" = load float, ptr %"R5"
  %".8335" = load float, ptr %"R6"
  %"fmul.358" = fmul float %".8333", %".8334"
  %"fadd.320" = fadd float %"fmul.358", %".8335"
  %".8336" = bitcast ptr %"R5" to ptr
  store float %"fadd.320", ptr %".8336"
  br label %".L_x_46"
.L_x_46:
  ; BSYNC B0
  br label %".L_x_44"
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  %".8342" = load i32, ptr %"R28"
  %"zext.806" = zext i32 %".8342" to i64
  %"zext.807" = zext i32 0 to i64
  %"shl.424" = shl i64 %"zext.807", 32
  %"or.384" = or i64 %"shl.424", %"zext.806"
  %".8343" = inttoptr i64 %"or.384" to ptr
  %".8344" = ptrtoint ptr %".8343" to i64
  %".8345" = add i64 %".8344", 0
  %"for_LDG.345" = inttoptr i64 %".8345" to ptr
  %".8346" = load float, ptr %"for_LDG.345"
  %".8347" = bitcast ptr %"R6" to ptr
  store float %".8346", ptr %".8347"
  ; FADD R7, -R5, 1
  %".8350" = load float, ptr %"R5"
  %".8351" = fneg float %".8350"
  %"fadd.321" = fadd float %".8351", 0x3ff0000000000000
  %".8352" = bitcast ptr %"R7" to ptr
  store float %"fadd.321", ptr %".8352"
  ; FMUL R6, R6, R5
  %".8355" = load float, ptr %"R6"
  %".8356" = load float, ptr %"R5"
  %"fmul.359" = fmul float %".8355", %".8356"
  %".8357" = bitcast ptr %"R6" to ptr
  store float %"fmul.359", ptr %".8357"
  ; FFMA R7, R7, R4, R6
  %".8360" = load float, ptr %"R7"
  %".8361" = load float, ptr %"R4"
  %".8362" = load float, ptr %"R6"
  %"fmul.360" = fmul float %".8360", %".8361"
  %"fadd.322" = fadd float %"fmul.360", %".8362"
  %".8363" = bitcast ptr %"R7" to ptr
  store float %"fadd.322", ptr %".8363"
  ; STG.E.SYS [R28], R7
  %".8366" = load float, ptr %"R7"
  %".8367" = load i32, ptr %"R28"
  %"zext.808" = zext i32 %".8367" to i64
  %"zext.809" = zext i32 0 to i64
  %"shl.425" = shl i64 %"zext.809", 32
  %"or.385" = or i64 %"shl.425", %"zext.808"
  %".8368" = inttoptr i64 %"or.385" to ptr
  %".8369" = ptrtoint ptr %".8368" to i64
  %".8370" = add i64 %".8369", 0
  %"for_STG.1" = inttoptr i64 %".8370" to ptr
  store float %".8366", ptr %"for_STG.1"
  ; @!P3 BRA `(.L_x_47)
  %".8373" = load i1, ptr %"P3"
  %".8374" = icmp eq i1 %".8373", 1
  br i1 %".8374", label %".L_x_47", label %".L_x_44_split_0x48f0"
.L_x_44_split_0x48f0:
  ; EXIT
  br label %"ExitFunction"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

declare float @"llvm.exp2.f32"(float %".1")

declare float @"llvm.fabs"(float %".1")

