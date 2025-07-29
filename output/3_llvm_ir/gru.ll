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
  br i1 %".1777", label %".L_x_8", label %".L_x_1_split_0x1260"
.L_x_1_split_0x1260:
  ; MOV R10, 0x1280
  store i32 4736, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  call void @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R9, R22
  %".1783" = load i32, ptr %"R22"
  store i32 %".1783", ptr %"R9"
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %".1788" = load float, ptr %"R24"
  %".1789" = fdiv float 0x3ff0000000000000, %".1788"
  %".1790" = bitcast ptr %"R9" to ptr
  store float %".1789", ptr %".1790"
  ; FFMA R10, R24, R9, -1
  %".1793" = load float, ptr %"R24"
  %".1794" = load float, ptr %"R9"
  %"fmul.67" = fmul float %".1793", %".1794"
  %"fadd.69" = fadd float %"fmul.67", 0xbff0000000000000
  %".1795" = bitcast ptr %"R10" to ptr
  store float %"fadd.69", ptr %".1795"
  ; FADD.FTZ R10, -R10, -RZ
  %".1798" = load float, ptr %"R10"
  %".1799" = fneg float %".1798"
  %"fadd.70" = fadd float %".1799",              0x0
  %".1800" = bitcast ptr %"R10" to ptr
  store float %"fadd.70", ptr %".1800"
  ; FFMA R9, R9, R10, R9
  %".1803" = load float, ptr %"R9"
  %".1804" = load float, ptr %"R10"
  %".1805" = load float, ptr %"R9"
  %"fmul.68" = fmul float %".1803", %".1804"
  %"fadd.71" = fadd float %"fmul.68", %".1805"
  %".1806" = bitcast ptr %"R9" to ptr
  store float %"fadd.71", ptr %".1806"
  br label %".L_x_9"
.L_x_9:
  ; BSYNC B0
  br label %".L_x_7"
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  %".1812" = load i32, ptr %"R32"
  %"zext.191" = zext i32 %".1812" to i64
  %".1813" = load i32, ptr %"R33"
  %"zext.192" = zext i32 %".1813" to i64
  %"shl.102" = shl i64 %"zext.192", 32
  %"or.95" = or i64 %"shl.102", %"zext.191"
  %".1814" = inttoptr i64 %"or.95" to ptr
  %".1815" = ptrtoint ptr %".1814" to i64
  %".1816" = add i64 %".1815", 0
  %"for_LDG.94" = inttoptr i64 %".1816" to ptr
  %".1817" = load float, ptr %"for_LDG.94"
  %".1818" = bitcast ptr %"R11" to ptr
  store float %".1817", ptr %".1818"
  ; MOV R10, 0x3bbb989d
  %".1821" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".1821"
  ; MOV R13, 0x437c0000
  %".1824" = bitcast ptr %"R13" to ptr
  store float 0x41d0df0000000000, ptr %".1824"
  ; FADD R11, R11, R54
  %".1827" = load float, ptr %"R11"
  %".1828" = load float, ptr %"R54"
  %"fadd.72" = fadd float %".1827", %".1828"
  %".1829" = bitcast ptr %"R11" to ptr
  store float %"fadd.72", ptr %".1829"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %".1832" = load float, ptr %"R11"
  %".1833" = fneg float %".1832"
  %".1834" = load float, ptr %"R10"
  %"fmul.69" = fmul float %".1833", %".1834"
  %"fadd.73" = fadd float %"fmul.69", 0x3fe0000000000000
  %".1835" = bitcast ptr %"R10" to ptr
  store float %"fadd.73", ptr %".1835"
  ; FFMA.RM R10, R10, R13, 12582913
  %".1838" = load float, ptr %"R10"
  %".1839" = load float, ptr %"R13"
  %"fmul.70" = fmul float %".1838", %".1839"
  %"fadd.74" = fadd float %"fmul.70", 0x4168000020000000
  %".1840" = bitcast ptr %"R10" to ptr
  store float %"fadd.74", ptr %".1840"
  ; FADD R12, R10.reuse, -12583039
  %".1843" = load float, ptr %"R10"
  %"fadd.75" = fadd float %".1843", 0xc168000fe0000000
  %".1844" = bitcast ptr %"R12" to ptr
  store float %"fadd.75", ptr %".1844"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".1847" = icmp ult i32 23, 32
  %"SHF_min.1" = select  i1 %".1847", i32 23, i32 32
  %".1848" = load i32, ptr %"R10"
  %"zext.193" = zext i32 0 to i64
  %"zext.194" = zext i32 %".1848" to i64
  %"zext.195" = zext i32 23 to i64
  %"shl.103" = shl i64 %"zext.193", 32
  %"or.96" = or i64 %"shl.103", %"zext.194"
  %"shl.104" = shl i64 %"or.96", %"zext.195"
  %"and.1" = and i64 %"shl.104", 4294967295
  %"trunc32.1" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.1", ptr %"R20"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %".1851" = load float, ptr %"R11"
  %".1852" = fneg float %".1851"
  %".1853" = load float, ptr %"R12"
  %".1854" = fneg float %".1853"
  %"fmul.71" = fmul float %".1852", 0x3ff7154760000000
  %"fadd.76" = fadd float %"fmul.71", %".1854"
  %".1855" = bitcast ptr %"R12" to ptr
  store float %"fadd.76", ptr %".1855"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %".1858" = load float, ptr %"R11"
  %".1859" = fneg float %".1858"
  %".1860" = load float, ptr %"R12"
  %"fmul.72" = fmul float %".1859", 0x3e54ae0c00000000
  %"fadd.77" = fadd float %"fmul.72", %".1860"
  %".1861" = bitcast ptr %"R12" to ptr
  store float %"fadd.77", ptr %".1861"
  ; MUFU.EX2 R11, R12
  %".1864" = load float, ptr %"R12"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".1864")
  %".1865" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result.1", ptr %".1865"
  ; FFMA R20, R20, R11, 1
  %".1868" = load float, ptr %"R20"
  %".1869" = load float, ptr %"R11"
  %"fmul.73" = fmul float %".1868", %".1869"
  %"fadd.78" = fadd float %"fmul.73", 0x3ff0000000000000
  %".1870" = bitcast ptr %"R20" to ptr
  store float %"fadd.78", ptr %".1870"
  ; @!P4 BRA `(.L_x_10)
  %".1873" = load i1, ptr %"P4"
  %".1874" = icmp eq i1 %".1873", 1
  br i1 %".1874", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".1877" = load i32, ptr %"R5"
  %".1878" = load i1, ptr %"PT"
  %"cmp.16" = icmp sge i32 %".1877", 3
  %".1879" = and i1 %"cmp.16", %".1878"
  store i1 %".1879", ptr %"P0"
  ; MOV R8, RZ
  %".1882" = load float, ptr %"RZ"
  %".1883" = bitcast ptr %"R8" to ptr
  store float %".1882", ptr %".1883"
  ; MOV R22, RZ
  %".1886" = load i32, ptr %"RZ"
  store i32 %".1886", ptr %"R22"
  ; @!P0 BRA `(.L_x_11)
  %".1889" = load i1, ptr %"P0"
  %".1890" = icmp eq i1 %".1889", 1
  br i1 %".1890", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".1893" = load i32, ptr %"R7"
  %".1894" = load i1, ptr %"PT"
  %"cmp.17" = icmp sgt i32 %".1893", 0
  %".1895" = and i1 %"cmp.17", %".1894"
  store i1 %".1895", ptr %"P0"
  ; MOV R8, RZ
  %".1898" = load float, ptr %"RZ"
  %".1899" = bitcast ptr %"R8" to ptr
  store float %".1898", ptr %".1899"
  ; MOV R22, RZ
  %".1902" = load i32, ptr %"RZ"
  store i32 %".1902", ptr %"R22"
  ; MOV R23, R7
  %".1905" = load i32, ptr %"R7"
  store i32 %".1905", ptr %"R23"
  ; @!P0 BRA `(.L_x_12)
  %".1908" = load i1, ptr %"P0"
  %".1909" = icmp eq i1 %".1908", 1
  br i1 %".1909", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".1912" = load i32, ptr %"R23"
  %".1913" = load i1, ptr %"PT"
  %"cmp.18" = icmp sgt i32 %".1912", 12
  %".1914" = and i1 %"cmp.18", %".1913"
  store i1 %".1914", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".1917" = and i1 1, 1
  %".1918" = or i1 %".1917", 1
  ; @!P1 BRA `(.L_x_13)
  %".1920" = load i1, ptr %"P1"
  %".1921" = icmp eq i1 %".1920", 1
  br i1 %".1921", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1924" = xor i1 1, 1
  %".1925" = and i1 %".1924", 1
  %".1926" = and i1 %".1925", 1
  br label %".L_x_14"
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, ptr %"R49"
  ; IADD3 R16, R3, R22, RZ
  %".1931" = load i32, ptr %"R3"
  %".1932" = load i32, ptr %"R22"
  %"add.94" = add i32 %".1931", %".1932"
  %"add.95" = add i32 %"add.94", 0
  store i32 %"add.95", ptr %"R16"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".1935" = load i32, ptr %"R22"
  %".1936" = load i32, ptr %"R49"
  %"mul.36" = mul i32 %".1935", %".1936"
  %"add.96" = add i32 %"mul.36", %"Arg_3"
  store i32 %"add.96", ptr %"R12"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".1939" = load i32, ptr %"R16"
  %".1940" = load i32, ptr %"R49"
  %"mul.37" = mul i32 %".1939", %".1940"
  %"add.97" = add i32 %"mul.37", %"Arg_4"
  store i32 %"add.97", ptr %"R16"
  ; IADD3 R18, R22, 0x4, RZ
  %".1943" = load i32, ptr %"R22"
  %"add.98" = add i32 %".1943", 4
  %"add.99" = add i32 %"add.98", 0
  store i32 %"add.99", ptr %"R18"
  ; LDG.E.SYS R24, [R12]
  %".1946" = load i32, ptr %"R12"
  %"zext.196" = zext i32 %".1946" to i64
  %".1947" = load i32, ptr %"R13"
  %"zext.197" = zext i32 %".1947" to i64
  %"shl.105" = shl i64 %"zext.197", 32
  %"or.97" = or i64 %"shl.105", %"zext.196"
  %".1948" = inttoptr i64 %"or.97" to ptr
  %".1949" = ptrtoint ptr %".1948" to i64
  %".1950" = add i64 %".1949", 0
  %"for_LDG.95" = inttoptr i64 %".1950" to ptr
  %".1951" = load float, ptr %"for_LDG.95"
  %".1952" = bitcast ptr %"R24" to ptr
  store float %".1951", ptr %".1952"
  ; IADD3 R14, R3, R18, RZ
  %".1955" = load i32, ptr %"R3"
  %".1956" = load i32, ptr %"R18"
  %"add.100" = add i32 %".1955", %".1956"
  %"add.101" = add i32 %"add.100", 0
  store i32 %"add.101", ptr %"R14"
  ; LDG.E.SYS R21, [R16]
  %".1959" = load i32, ptr %"R16"
  %"zext.198" = zext i32 %".1959" to i64
  %".1960" = load i32, ptr %"R17"
  %"zext.199" = zext i32 %".1960" to i64
  %"shl.106" = shl i64 %"zext.199", 32
  %"or.98" = or i64 %"shl.106", %"zext.198"
  %".1961" = inttoptr i64 %"or.98" to ptr
  %".1962" = ptrtoint ptr %".1961" to i64
  %".1963" = add i64 %".1962", 0
  %"for_LDG.96" = inttoptr i64 %".1963" to ptr
  %".1964" = load float, ptr %"for_LDG.96"
  %".1965" = bitcast ptr %"R21" to ptr
  store float %".1964", ptr %".1965"
  ; LDG.E.SYS R36, [R12+0x4]
  %".1968" = load i32, ptr %"R12"
  %"zext.200" = zext i32 %".1968" to i64
  %".1969" = load i32, ptr %"R13"
  %"zext.201" = zext i32 %".1969" to i64
  %"shl.107" = shl i64 %"zext.201", 32
  %"or.99" = or i64 %"shl.107", %"zext.200"
  %".1970" = inttoptr i64 %"or.99" to ptr
  %".1971" = ptrtoint ptr %".1970" to i64
  %".1972" = add i64 %".1971", 4
  %"for_LDG.97" = inttoptr i64 %".1972" to ptr
  %".1973" = load float, ptr %"for_LDG.97"
  %".1974" = bitcast ptr %"R36" to ptr
  store float %".1973", ptr %".1974"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".1977" = load i32, ptr %"R18"
  %".1978" = load i32, ptr %"R49"
  %"mul.38" = mul i32 %".1977", %".1978"
  %"add.102" = add i32 %"mul.38", %"Arg_3"
  store i32 %"add.102", ptr %"R18"
  ; LDG.E.SYS R25, [R16+0x4]
  %".1981" = load i32, ptr %"R16"
  %"zext.202" = zext i32 %".1981" to i64
  %".1982" = load i32, ptr %"R17"
  %"zext.203" = zext i32 %".1982" to i64
  %"shl.108" = shl i64 %"zext.203", 32
  %"or.100" = or i64 %"shl.108", %"zext.202"
  %".1983" = inttoptr i64 %"or.100" to ptr
  %".1984" = ptrtoint ptr %".1983" to i64
  %".1985" = add i64 %".1984", 4
  %"for_LDG.98" = inttoptr i64 %".1985" to ptr
  %".1986" = load float, ptr %"for_LDG.98"
  %".1987" = bitcast ptr %"R25" to ptr
  store float %".1986", ptr %".1987"
  ; LDG.E.SYS R46, [R12+0x8]
  %".1990" = load i32, ptr %"R12"
  %"zext.204" = zext i32 %".1990" to i64
  %".1991" = load i32, ptr %"R13"
  %"zext.205" = zext i32 %".1991" to i64
  %"shl.109" = shl i64 %"zext.205", 32
  %"or.101" = or i64 %"shl.109", %"zext.204"
  %".1992" = inttoptr i64 %"or.101" to ptr
  %".1993" = ptrtoint ptr %".1992" to i64
  %".1994" = add i64 %".1993", 8
  %"for_LDG.99" = inttoptr i64 %".1994" to ptr
  %".1995" = load float, ptr %"for_LDG.99"
  %".1996" = bitcast ptr %"R46" to ptr
  store float %".1995", ptr %".1996"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".1999" = load i32, ptr %"R14"
  %".2000" = load i32, ptr %"R49"
  %"mul.39" = mul i32 %".1999", %".2000"
  %"add.103" = add i32 %"mul.39", %"Arg_4"
  store i32 %"add.103", ptr %"R14"
  ; LDG.E.SYS R34, [R16+0x8]
  %".2003" = load i32, ptr %"R16"
  %"zext.206" = zext i32 %".2003" to i64
  %".2004" = load i32, ptr %"R17"
  %"zext.207" = zext i32 %".2004" to i64
  %"shl.110" = shl i64 %"zext.207", 32
  %"or.102" = or i64 %"shl.110", %"zext.206"
  %".2005" = inttoptr i64 %"or.102" to ptr
  %".2006" = ptrtoint ptr %".2005" to i64
  %".2007" = add i64 %".2006", 8
  %"for_LDG.100" = inttoptr i64 %".2007" to ptr
  %".2008" = load float, ptr %"for_LDG.100"
  %".2009" = bitcast ptr %"R34" to ptr
  store float %".2008", ptr %".2009"
  ; LDG.E.SYS R44, [R12+0xc]
  %".2012" = load i32, ptr %"R12"
  %"zext.208" = zext i32 %".2012" to i64
  %".2013" = load i32, ptr %"R13"
  %"zext.209" = zext i32 %".2013" to i64
  %"shl.111" = shl i64 %"zext.209", 32
  %"or.103" = or i64 %"shl.111", %"zext.208"
  %".2014" = inttoptr i64 %"or.103" to ptr
  %".2015" = ptrtoint ptr %".2014" to i64
  %".2016" = add i64 %".2015", 12
  %"for_LDG.101" = inttoptr i64 %".2016" to ptr
  %".2017" = load float, ptr %"for_LDG.101"
  %".2018" = bitcast ptr %"R44" to ptr
  store float %".2017", ptr %".2018"
  ; IADD3 R10, R22, 0x8, RZ
  %".2021" = load i32, ptr %"R22"
  %"add.104" = add i32 %".2021", 8
  %"add.105" = add i32 %"add.104", 0
  store i32 %"add.105", ptr %"R10"
  ; LDG.E.SYS R41, [R16+0xc]
  %".2024" = load i32, ptr %"R16"
  %"zext.210" = zext i32 %".2024" to i64
  %".2025" = load i32, ptr %"R17"
  %"zext.211" = zext i32 %".2025" to i64
  %"shl.112" = shl i64 %"zext.211", 32
  %"or.104" = or i64 %"shl.112", %"zext.210"
  %".2026" = inttoptr i64 %"or.104" to ptr
  %".2027" = ptrtoint ptr %".2026" to i64
  %".2028" = add i64 %".2027", 12
  %"for_LDG.102" = inttoptr i64 %".2028" to ptr
  %".2029" = load float, ptr %"for_LDG.102"
  %".2030" = bitcast ptr %"R41" to ptr
  store float %".2029", ptr %".2030"
  ; LDG.E.SYS R42, [R18]
  %".2033" = load i32, ptr %"R18"
  %"zext.212" = zext i32 %".2033" to i64
  %".2034" = load i32, ptr %"R19"
  %"zext.213" = zext i32 %".2034" to i64
  %"shl.113" = shl i64 %"zext.213", 32
  %"or.105" = or i64 %"shl.113", %"zext.212"
  %".2035" = inttoptr i64 %"or.105" to ptr
  %".2036" = ptrtoint ptr %".2035" to i64
  %".2037" = add i64 %".2036", 0
  %"for_LDG.103" = inttoptr i64 %".2037" to ptr
  %".2038" = load float, ptr %"for_LDG.103"
  %".2039" = bitcast ptr %"R42" to ptr
  store float %".2038", ptr %".2039"
  ; IADD3 R50, R3, R10, RZ
  %".2042" = load i32, ptr %"R3"
  %".2043" = load i32, ptr %"R10"
  %"add.106" = add i32 %".2042", %".2043"
  %"add.107" = add i32 %"add.106", 0
  store i32 %"add.107", ptr %"R50"
  ; LDG.E.SYS R39, [R14]
  %".2046" = load i32, ptr %"R14"
  %"zext.214" = zext i32 %".2046" to i64
  %".2047" = load i32, ptr %"R15"
  %"zext.215" = zext i32 %".2047" to i64
  %"shl.114" = shl i64 %"zext.215", 32
  %"or.106" = or i64 %"shl.114", %"zext.214"
  %".2048" = inttoptr i64 %"or.106" to ptr
  %".2049" = ptrtoint ptr %".2048" to i64
  %".2050" = add i64 %".2049", 0
  %"for_LDG.104" = inttoptr i64 %".2050" to ptr
  %".2051" = load float, ptr %"for_LDG.104"
  %".2052" = bitcast ptr %"R39" to ptr
  store float %".2051", ptr %".2052"
  ; LDG.E.SYS R40, [R18+0x4]
  %".2055" = load i32, ptr %"R18"
  %"zext.216" = zext i32 %".2055" to i64
  %".2056" = load i32, ptr %"R19"
  %"zext.217" = zext i32 %".2056" to i64
  %"shl.115" = shl i64 %"zext.217", 32
  %"or.107" = or i64 %"shl.115", %"zext.216"
  %".2057" = inttoptr i64 %"or.107" to ptr
  %".2058" = ptrtoint ptr %".2057" to i64
  %".2059" = add i64 %".2058", 4
  %"for_LDG.105" = inttoptr i64 %".2059" to ptr
  %".2060" = load float, ptr %"for_LDG.105"
  %".2061" = bitcast ptr %"R40" to ptr
  store float %".2060", ptr %".2061"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".2064" = load i32, ptr %"R10"
  %".2065" = load i32, ptr %"R49"
  %"mul.40" = mul i32 %".2064", %".2065"
  %"add.108" = add i32 %"mul.40", %"Arg_3"
  store i32 %"add.108", ptr %"R10"
  ; LDG.E.SYS R37, [R14+0x4]
  %".2068" = load i32, ptr %"R14"
  %"zext.218" = zext i32 %".2068" to i64
  %".2069" = load i32, ptr %"R15"
  %"zext.219" = zext i32 %".2069" to i64
  %"shl.116" = shl i64 %"zext.219", 32
  %"or.108" = or i64 %"shl.116", %"zext.218"
  %".2070" = inttoptr i64 %"or.108" to ptr
  %".2071" = ptrtoint ptr %".2070" to i64
  %".2072" = add i64 %".2071", 4
  %"for_LDG.106" = inttoptr i64 %".2072" to ptr
  %".2073" = load float, ptr %"for_LDG.106"
  %".2074" = bitcast ptr %"R37" to ptr
  store float %".2073", ptr %".2074"
  ; LDG.E.SYS R38, [R18+0x8]
  %".2077" = load i32, ptr %"R18"
  %"zext.220" = zext i32 %".2077" to i64
  %".2078" = load i32, ptr %"R19"
  %"zext.221" = zext i32 %".2078" to i64
  %"shl.117" = shl i64 %"zext.221", 32
  %"or.109" = or i64 %"shl.117", %"zext.220"
  %".2079" = inttoptr i64 %"or.109" to ptr
  %".2080" = ptrtoint ptr %".2079" to i64
  %".2081" = add i64 %".2080", 8
  %"for_LDG.107" = inttoptr i64 %".2081" to ptr
  %".2082" = load float, ptr %"for_LDG.107"
  %".2083" = bitcast ptr %"R38" to ptr
  store float %".2082", ptr %".2083"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".2086" = load i32, ptr %"R50"
  %".2087" = load i32, ptr %"R49"
  %"mul.41" = mul i32 %".2086", %".2087"
  %"add.109" = add i32 %"mul.41", %"Arg_4"
  store i32 %"add.109", ptr %"R12"
  ; LDG.E.SYS R35, [R14+0x8]
  %".2090" = load i32, ptr %"R14"
  %"zext.222" = zext i32 %".2090" to i64
  %".2091" = load i32, ptr %"R15"
  %"zext.223" = zext i32 %".2091" to i64
  %"shl.118" = shl i64 %"zext.223", 32
  %"or.110" = or i64 %"shl.118", %"zext.222"
  %".2092" = inttoptr i64 %"or.110" to ptr
  %".2093" = ptrtoint ptr %".2092" to i64
  %".2094" = add i64 %".2093", 8
  %"for_LDG.108" = inttoptr i64 %".2094" to ptr
  %".2095" = load float, ptr %"for_LDG.108"
  %".2096" = bitcast ptr %"R35" to ptr
  store float %".2095", ptr %".2096"
  ; LDG.E.SYS R48, [R18+0xc]
  %".2099" = load i32, ptr %"R18"
  %"zext.224" = zext i32 %".2099" to i64
  %".2100" = load i32, ptr %"R19"
  %"zext.225" = zext i32 %".2100" to i64
  %"shl.119" = shl i64 %"zext.225", 32
  %"or.111" = or i64 %"shl.119", %"zext.224"
  %".2101" = inttoptr i64 %"or.111" to ptr
  %".2102" = ptrtoint ptr %".2101" to i64
  %".2103" = add i64 %".2102", 12
  %"for_LDG.109" = inttoptr i64 %".2103" to ptr
  %".2104" = load float, ptr %"for_LDG.109"
  %".2105" = bitcast ptr %"R48" to ptr
  store float %".2104", ptr %".2105"
  ; IADD3 R16, R22, 0xc, RZ
  %".2108" = load i32, ptr %"R22"
  %"add.110" = add i32 %".2108", 12
  %"add.111" = add i32 %"add.110", 0
  store i32 %"add.111", ptr %"R16"
  ; LDG.E.SYS R47, [R14+0xc]
  %".2111" = load i32, ptr %"R14"
  %"zext.226" = zext i32 %".2111" to i64
  %".2112" = load i32, ptr %"R15"
  %"zext.227" = zext i32 %".2112" to i64
  %"shl.120" = shl i64 %"zext.227", 32
  %"or.112" = or i64 %"shl.120", %"zext.226"
  %".2113" = inttoptr i64 %"or.112" to ptr
  %".2114" = ptrtoint ptr %".2113" to i64
  %".2115" = add i64 %".2114", 12
  %"for_LDG.110" = inttoptr i64 %".2115" to ptr
  %".2116" = load float, ptr %"for_LDG.110"
  %".2117" = bitcast ptr %"R47" to ptr
  store float %".2116", ptr %".2117"
  ; LDG.E.SYS R54, [R10]
  %".2120" = load i32, ptr %"R10"
  %"zext.228" = zext i32 %".2120" to i64
  %".2121" = load i32, ptr %"R11"
  %"zext.229" = zext i32 %".2121" to i64
  %"shl.121" = shl i64 %"zext.229", 32
  %"or.113" = or i64 %"shl.121", %"zext.228"
  %".2122" = inttoptr i64 %"or.113" to ptr
  %".2123" = ptrtoint ptr %".2122" to i64
  %".2124" = add i64 %".2123", 0
  %"for_LDG.111" = inttoptr i64 %".2124" to ptr
  %".2125" = load float, ptr %"for_LDG.111"
  %".2126" = bitcast ptr %"R54" to ptr
  store float %".2125", ptr %".2126"
  ; IADD3 R58, R3, R16, RZ
  %".2129" = load i32, ptr %"R3"
  %".2130" = load i32, ptr %"R16"
  %"add.112" = add i32 %".2129", %".2130"
  %"add.113" = add i32 %"add.112", 0
  store i32 %"add.113", ptr %"R58"
  ; LDG.E.SYS R45, [R12]
  %".2133" = load i32, ptr %"R12"
  %"zext.230" = zext i32 %".2133" to i64
  %".2134" = load i32, ptr %"R13"
  %"zext.231" = zext i32 %".2134" to i64
  %"shl.122" = shl i64 %"zext.231", 32
  %"or.114" = or i64 %"shl.122", %"zext.230"
  %".2135" = inttoptr i64 %"or.114" to ptr
  %".2136" = ptrtoint ptr %".2135" to i64
  %".2137" = add i64 %".2136", 0
  %"for_LDG.112" = inttoptr i64 %".2137" to ptr
  %".2138" = load float, ptr %"for_LDG.112"
  %".2139" = bitcast ptr %"R45" to ptr
  store float %".2138", ptr %".2139"
  ; LDG.E.SYS R52, [R10+0x4]
  %".2142" = load i32, ptr %"R10"
  %"zext.232" = zext i32 %".2142" to i64
  %".2143" = load i32, ptr %"R11"
  %"zext.233" = zext i32 %".2143" to i64
  %"shl.123" = shl i64 %"zext.233", 32
  %"or.115" = or i64 %"shl.123", %"zext.232"
  %".2144" = inttoptr i64 %"or.115" to ptr
  %".2145" = ptrtoint ptr %".2144" to i64
  %".2146" = add i64 %".2145", 4
  %"for_LDG.113" = inttoptr i64 %".2146" to ptr
  %".2147" = load float, ptr %"for_LDG.113"
  %".2148" = bitcast ptr %"R52" to ptr
  store float %".2147", ptr %".2148"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".2151" = load i32, ptr %"R16"
  %".2152" = load i32, ptr %"R49"
  %"mul.42" = mul i32 %".2151", %".2152"
  %"add.114" = add i32 %"mul.42", %"Arg_3"
  store i32 %"add.114", ptr %"R16"
  ; LDG.E.SYS R43, [R12+0x4]
  %".2155" = load i32, ptr %"R12"
  %"zext.234" = zext i32 %".2155" to i64
  %".2156" = load i32, ptr %"R13"
  %"zext.235" = zext i32 %".2156" to i64
  %"shl.124" = shl i64 %"zext.235", 32
  %"or.116" = or i64 %"shl.124", %"zext.234"
  %".2157" = inttoptr i64 %"or.116" to ptr
  %".2158" = ptrtoint ptr %".2157" to i64
  %".2159" = add i64 %".2158", 4
  %"for_LDG.114" = inttoptr i64 %".2159" to ptr
  %".2160" = load float, ptr %"for_LDG.114"
  %".2161" = bitcast ptr %"R43" to ptr
  store float %".2160", ptr %".2161"
  ; LDG.E.SYS R50, [R10+0x8]
  %".2164" = load i32, ptr %"R10"
  %"zext.236" = zext i32 %".2164" to i64
  %".2165" = load i32, ptr %"R11"
  %"zext.237" = zext i32 %".2165" to i64
  %"shl.125" = shl i64 %"zext.237", 32
  %"or.117" = or i64 %"shl.125", %"zext.236"
  %".2166" = inttoptr i64 %"or.117" to ptr
  %".2167" = ptrtoint ptr %".2166" to i64
  %".2168" = add i64 %".2167", 8
  %"for_LDG.115" = inttoptr i64 %".2168" to ptr
  %".2169" = load float, ptr %"for_LDG.115"
  %".2170" = bitcast ptr %"R50" to ptr
  store float %".2169", ptr %".2170"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".2173" = load i32, ptr %"R58"
  %".2174" = load i32, ptr %"R49"
  %"mul.43" = mul i32 %".2173", %".2174"
  %"add.115" = add i32 %"mul.43", %"Arg_4"
  store i32 %"add.115", ptr %"R14"
  ; LDG.E.SYS R18, [R12+0x8]
  %".2177" = load i32, ptr %"R12"
  %"zext.238" = zext i32 %".2177" to i64
  %".2178" = load i32, ptr %"R13"
  %"zext.239" = zext i32 %".2178" to i64
  %"shl.126" = shl i64 %"zext.239", 32
  %"or.118" = or i64 %"shl.126", %"zext.238"
  %".2179" = inttoptr i64 %"or.118" to ptr
  %".2180" = ptrtoint ptr %".2179" to i64
  %".2181" = add i64 %".2180", 8
  %"for_LDG.116" = inttoptr i64 %".2181" to ptr
  %".2182" = load float, ptr %"for_LDG.116"
  %".2183" = bitcast ptr %"R18" to ptr
  store float %".2182", ptr %".2183"
  ; LDG.E.SYS R56, [R10+0xc]
  %".2186" = load i32, ptr %"R10"
  %"zext.240" = zext i32 %".2186" to i64
  %".2187" = load i32, ptr %"R11"
  %"zext.241" = zext i32 %".2187" to i64
  %"shl.127" = shl i64 %"zext.241", 32
  %"or.119" = or i64 %"shl.127", %"zext.240"
  %".2188" = inttoptr i64 %"or.119" to ptr
  %".2189" = ptrtoint ptr %".2188" to i64
  %".2190" = add i64 %".2189", 12
  %"for_LDG.117" = inttoptr i64 %".2190" to ptr
  %".2191" = load float, ptr %"for_LDG.117"
  %".2192" = bitcast ptr %"R56" to ptr
  store float %".2191", ptr %".2192"
  ; LDG.E.SYS R55, [R12+0xc]
  %".2195" = load i32, ptr %"R12"
  %"zext.242" = zext i32 %".2195" to i64
  %".2196" = load i32, ptr %"R13"
  %"zext.243" = zext i32 %".2196" to i64
  %"shl.128" = shl i64 %"zext.243", 32
  %"or.120" = or i64 %"shl.128", %"zext.242"
  %".2197" = inttoptr i64 %"or.120" to ptr
  %".2198" = ptrtoint ptr %".2197" to i64
  %".2199" = add i64 %".2198", 12
  %"for_LDG.118" = inttoptr i64 %".2199" to ptr
  %".2200" = load float, ptr %"for_LDG.118"
  %".2201" = bitcast ptr %"R55" to ptr
  store float %".2200", ptr %".2201"
  ; LDG.E.SYS R51, [R16]
  %".2204" = load i32, ptr %"R16"
  %"zext.244" = zext i32 %".2204" to i64
  %".2205" = load i32, ptr %"R17"
  %"zext.245" = zext i32 %".2205" to i64
  %"shl.129" = shl i64 %"zext.245", 32
  %"or.121" = or i64 %"shl.129", %"zext.244"
  %".2206" = inttoptr i64 %"or.121" to ptr
  %".2207" = ptrtoint ptr %".2206" to i64
  %".2208" = add i64 %".2207", 0
  %"for_LDG.119" = inttoptr i64 %".2208" to ptr
  %".2209" = load float, ptr %"for_LDG.119"
  %".2210" = bitcast ptr %"R51" to ptr
  store float %".2209", ptr %".2210"
  ; LDG.E.SYS R53, [R14]
  %".2213" = load i32, ptr %"R14"
  %"zext.246" = zext i32 %".2213" to i64
  %".2214" = load i32, ptr %"R15"
  %"zext.247" = zext i32 %".2214" to i64
  %"shl.130" = shl i64 %"zext.247", 32
  %"or.122" = or i64 %"shl.130", %"zext.246"
  %".2215" = inttoptr i64 %"or.122" to ptr
  %".2216" = ptrtoint ptr %".2215" to i64
  %".2217" = add i64 %".2216", 0
  %"for_LDG.120" = inttoptr i64 %".2217" to ptr
  %".2218" = load float, ptr %"for_LDG.120"
  %".2219" = bitcast ptr %"R53" to ptr
  store float %".2218", ptr %".2219"
  ; LDG.E.SYS R60, [R16+0x4]
  %".2222" = load i32, ptr %"R16"
  %"zext.248" = zext i32 %".2222" to i64
  %".2223" = load i32, ptr %"R17"
  %"zext.249" = zext i32 %".2223" to i64
  %"shl.131" = shl i64 %"zext.249", 32
  %"or.123" = or i64 %"shl.131", %"zext.248"
  %".2224" = inttoptr i64 %"or.123" to ptr
  %".2225" = ptrtoint ptr %".2224" to i64
  %".2226" = add i64 %".2225", 4
  %"for_LDG.121" = inttoptr i64 %".2226" to ptr
  %".2227" = load float, ptr %"for_LDG.121"
  %".2228" = bitcast ptr %"R60" to ptr
  store float %".2227", ptr %".2228"
  ; LDG.E.SYS R49, [R14+0x4]
  %".2231" = load i32, ptr %"R14"
  %"zext.250" = zext i32 %".2231" to i64
  %".2232" = load i32, ptr %"R15"
  %"zext.251" = zext i32 %".2232" to i64
  %"shl.132" = shl i64 %"zext.251", 32
  %"or.124" = or i64 %"shl.132", %"zext.250"
  %".2233" = inttoptr i64 %"or.124" to ptr
  %".2234" = ptrtoint ptr %".2233" to i64
  %".2235" = add i64 %".2234", 4
  %"for_LDG.122" = inttoptr i64 %".2235" to ptr
  %".2236" = load float, ptr %"for_LDG.122"
  %".2237" = bitcast ptr %"R49" to ptr
  store float %".2236", ptr %".2237"
  ; LDG.E.SYS R58, [R16+0x8]
  %".2240" = load i32, ptr %"R16"
  %"zext.252" = zext i32 %".2240" to i64
  %".2241" = load i32, ptr %"R17"
  %"zext.253" = zext i32 %".2241" to i64
  %"shl.133" = shl i64 %"zext.253", 32
  %"or.125" = or i64 %"shl.133", %"zext.252"
  %".2242" = inttoptr i64 %"or.125" to ptr
  %".2243" = ptrtoint ptr %".2242" to i64
  %".2244" = add i64 %".2243", 8
  %"for_LDG.123" = inttoptr i64 %".2244" to ptr
  %".2245" = load float, ptr %"for_LDG.123"
  %".2246" = bitcast ptr %"R58" to ptr
  store float %".2245", ptr %".2246"
  ; LDG.E.SYS R19, [R14+0x8]
  %".2249" = load i32, ptr %"R14"
  %"zext.254" = zext i32 %".2249" to i64
  %".2250" = load i32, ptr %"R15"
  %"zext.255" = zext i32 %".2250" to i64
  %"shl.134" = shl i64 %"zext.255", 32
  %"or.126" = or i64 %"shl.134", %"zext.254"
  %".2251" = inttoptr i64 %"or.126" to ptr
  %".2252" = ptrtoint ptr %".2251" to i64
  %".2253" = add i64 %".2252", 8
  %"for_LDG.124" = inttoptr i64 %".2253" to ptr
  %".2254" = load float, ptr %"for_LDG.124"
  %".2255" = bitcast ptr %"R19" to ptr
  store float %".2254", ptr %".2255"
  ; LDG.E.SYS R57, [R16+0xc]
  %".2258" = load i32, ptr %"R16"
  %"zext.256" = zext i32 %".2258" to i64
  %".2259" = load i32, ptr %"R17"
  %"zext.257" = zext i32 %".2259" to i64
  %"shl.135" = shl i64 %"zext.257", 32
  %"or.127" = or i64 %"shl.135", %"zext.256"
  %".2260" = inttoptr i64 %"or.127" to ptr
  %".2261" = ptrtoint ptr %".2260" to i64
  %".2262" = add i64 %".2261", 12
  %"for_LDG.125" = inttoptr i64 %".2262" to ptr
  %".2263" = load float, ptr %"for_LDG.125"
  %".2264" = bitcast ptr %"R57" to ptr
  store float %".2263", ptr %".2264"
  ; LDG.E.SYS R59, [R14+0xc]
  %".2267" = load i32, ptr %"R14"
  %"zext.258" = zext i32 %".2267" to i64
  %".2268" = load i32, ptr %"R15"
  %"zext.259" = zext i32 %".2268" to i64
  %"shl.136" = shl i64 %"zext.259", 32
  %"or.128" = or i64 %"shl.136", %"zext.258"
  %".2269" = inttoptr i64 %"or.128" to ptr
  %".2270" = ptrtoint ptr %".2269" to i64
  %".2271" = add i64 %".2270", 12
  %"for_LDG.126" = inttoptr i64 %".2271" to ptr
  %".2272" = load float, ptr %"for_LDG.126"
  %".2273" = bitcast ptr %"R59" to ptr
  store float %".2272", ptr %".2273"
  ; IADD3 R23, R23, -0x10, RZ
  %".2276" = load i32, ptr %"R23"
  %"add.116" = add i32 %".2276", -16
  %"add.117" = add i32 %"add.116", 0
  store i32 %"add.117", ptr %"R23"
  ; IADD3 R22, R22, 0x10, RZ
  %".2279" = load i32, ptr %"R22"
  %"add.118" = add i32 %".2279", 16
  %"add.119" = add i32 %"add.118", 0
  store i32 %"add.119", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2282" = load i32, ptr %"R23"
  %".2283" = load i1, ptr %"PT"
  %"cmp.19" = icmp sgt i32 %".2282", 12
  %".2284" = and i1 %"cmp.19", %".2283"
  store i1 %".2284", ptr %"P1"
  ; FMUL R24, R24, R9
  %".2287" = load float, ptr %"R24"
  %".2288" = load float, ptr %"R9"
  %"fmul.74" = fmul float %".2287", %".2288"
  %".2289" = bitcast ptr %"R24" to ptr
  store float %"fmul.74", ptr %".2289"
  ; FFMA R24, R24, R21, R8
  %".2292" = load float, ptr %"R24"
  %".2293" = load float, ptr %"R21"
  %".2294" = load float, ptr %"R8"
  %"fmul.75" = fmul float %".2292", %".2293"
  %"fadd.79" = fadd float %"fmul.75", %".2294"
  %".2295" = bitcast ptr %"R24" to ptr
  store float %"fadd.79", ptr %".2295"
  ; FMUL R36, R36, R9
  %".2298" = load float, ptr %"R36"
  %".2299" = load float, ptr %"R9"
  %"fmul.76" = fmul float %".2298", %".2299"
  %".2300" = bitcast ptr %"R36" to ptr
  store float %"fmul.76", ptr %".2300"
  ; FFMA R25, R36, R25, R24
  %".2303" = load float, ptr %"R36"
  %".2304" = load float, ptr %"R25"
  %".2305" = load float, ptr %"R24"
  %"fmul.77" = fmul float %".2303", %".2304"
  %"fadd.80" = fadd float %"fmul.77", %".2305"
  %".2306" = bitcast ptr %"R25" to ptr
  store float %"fadd.80", ptr %".2306"
  ; FMUL R46, R46, R9
  %".2309" = load float, ptr %"R46"
  %".2310" = load float, ptr %"R9"
  %"fmul.78" = fmul float %".2309", %".2310"
  %".2311" = bitcast ptr %"R46" to ptr
  store float %"fmul.78", ptr %".2311"
  ; FFMA R34, R46, R34, R25
  %".2314" = load float, ptr %"R46"
  %".2315" = load float, ptr %"R34"
  %".2316" = load float, ptr %"R25"
  %"fmul.79" = fmul float %".2314", %".2315"
  %"fadd.81" = fadd float %"fmul.79", %".2316"
  %".2317" = bitcast ptr %"R34" to ptr
  store float %"fadd.81", ptr %".2317"
  ; FMUL R44, R44, R9
  %".2320" = load float, ptr %"R44"
  %".2321" = load float, ptr %"R9"
  %"fmul.80" = fmul float %".2320", %".2321"
  %".2322" = bitcast ptr %"R44" to ptr
  store float %"fmul.80", ptr %".2322"
  ; FFMA R34, R44, R41, R34
  %".2325" = load float, ptr %"R44"
  %".2326" = load float, ptr %"R41"
  %".2327" = load float, ptr %"R34"
  %"fmul.81" = fmul float %".2325", %".2326"
  %"fadd.82" = fadd float %"fmul.81", %".2327"
  %".2328" = bitcast ptr %"R34" to ptr
  store float %"fadd.82", ptr %".2328"
  ; FMUL R42, R42, R9
  %".2331" = load float, ptr %"R42"
  %".2332" = load float, ptr %"R9"
  %"fmul.82" = fmul float %".2331", %".2332"
  %".2333" = bitcast ptr %"R42" to ptr
  store float %"fmul.82", ptr %".2333"
  ; FFMA R34, R42, R39, R34
  %".2336" = load float, ptr %"R42"
  %".2337" = load float, ptr %"R39"
  %".2338" = load float, ptr %"R34"
  %"fmul.83" = fmul float %".2336", %".2337"
  %"fadd.83" = fadd float %"fmul.83", %".2338"
  %".2339" = bitcast ptr %"R34" to ptr
  store float %"fadd.83", ptr %".2339"
  ; FMUL R40, R40, R9
  %".2342" = load float, ptr %"R40"
  %".2343" = load float, ptr %"R9"
  %"fmul.84" = fmul float %".2342", %".2343"
  %".2344" = bitcast ptr %"R40" to ptr
  store float %"fmul.84", ptr %".2344"
  ; FFMA R34, R40, R37, R34
  %".2347" = load float, ptr %"R40"
  %".2348" = load float, ptr %"R37"
  %".2349" = load float, ptr %"R34"
  %"fmul.85" = fmul float %".2347", %".2348"
  %"fadd.84" = fadd float %"fmul.85", %".2349"
  %".2350" = bitcast ptr %"R34" to ptr
  store float %"fadd.84", ptr %".2350"
  ; FMUL R38, R38, R9
  %".2353" = load float, ptr %"R38"
  %".2354" = load float, ptr %"R9"
  %"fmul.86" = fmul float %".2353", %".2354"
  %".2355" = bitcast ptr %"R38" to ptr
  store float %"fmul.86", ptr %".2355"
  ; FFMA R34, R38, R35, R34
  %".2358" = load float, ptr %"R38"
  %".2359" = load float, ptr %"R35"
  %".2360" = load float, ptr %"R34"
  %"fmul.87" = fmul float %".2358", %".2359"
  %"fadd.85" = fadd float %"fmul.87", %".2360"
  %".2361" = bitcast ptr %"R34" to ptr
  store float %"fadd.85", ptr %".2361"
  ; FMUL R48, R48, R9
  %".2364" = load float, ptr %"R48"
  %".2365" = load float, ptr %"R9"
  %"fmul.88" = fmul float %".2364", %".2365"
  %".2366" = bitcast ptr %"R48" to ptr
  store float %"fmul.88", ptr %".2366"
  ; FFMA R34, R48, R47, R34
  %".2369" = load float, ptr %"R48"
  %".2370" = load float, ptr %"R47"
  %".2371" = load float, ptr %"R34"
  %"fmul.89" = fmul float %".2369", %".2370"
  %"fadd.86" = fadd float %"fmul.89", %".2371"
  %".2372" = bitcast ptr %"R34" to ptr
  store float %"fadd.86", ptr %".2372"
  ; FMUL R54, R54, R9
  %".2375" = load float, ptr %"R54"
  %".2376" = load float, ptr %"R9"
  %"fmul.90" = fmul float %".2375", %".2376"
  %".2377" = bitcast ptr %"R54" to ptr
  store float %"fmul.90", ptr %".2377"
  ; FFMA R34, R54, R45, R34
  %".2380" = load float, ptr %"R54"
  %".2381" = load float, ptr %"R45"
  %".2382" = load float, ptr %"R34"
  %"fmul.91" = fmul float %".2380", %".2381"
  %"fadd.87" = fadd float %"fmul.91", %".2382"
  %".2383" = bitcast ptr %"R34" to ptr
  store float %"fadd.87", ptr %".2383"
  ; FMUL R52, R52, R9
  %".2386" = load float, ptr %"R52"
  %".2387" = load float, ptr %"R9"
  %"fmul.92" = fmul float %".2386", %".2387"
  %".2388" = bitcast ptr %"R52" to ptr
  store float %"fmul.92", ptr %".2388"
  ; FFMA R43, R52, R43, R34
  %".2391" = load float, ptr %"R52"
  %".2392" = load float, ptr %"R43"
  %".2393" = load float, ptr %"R34"
  %"fmul.93" = fmul float %".2391", %".2392"
  %"fadd.88" = fadd float %"fmul.93", %".2393"
  %".2394" = bitcast ptr %"R43" to ptr
  store float %"fadd.88", ptr %".2394"
  ; FMUL R50, R50, R9
  %".2397" = load float, ptr %"R50"
  %".2398" = load float, ptr %"R9"
  %"fmul.94" = fmul float %".2397", %".2398"
  %".2399" = bitcast ptr %"R50" to ptr
  store float %"fmul.94", ptr %".2399"
  ; FFMA R18, R50, R18, R43
  %".2402" = load float, ptr %"R50"
  %".2403" = load float, ptr %"R18"
  %".2404" = load float, ptr %"R43"
  %"fmul.95" = fmul float %".2402", %".2403"
  %"fadd.89" = fadd float %"fmul.95", %".2404"
  %".2405" = bitcast ptr %"R18" to ptr
  store float %"fadd.89", ptr %".2405"
  ; FMUL R56, R56, R9
  %".2408" = load float, ptr %"R56"
  %".2409" = load float, ptr %"R9"
  %"fmul.96" = fmul float %".2408", %".2409"
  %".2410" = bitcast ptr %"R56" to ptr
  store float %"fmul.96", ptr %".2410"
  ; FFMA R18, R56, R55, R18
  %".2413" = load float, ptr %"R56"
  %".2414" = load float, ptr %"R55"
  %".2415" = load float, ptr %"R18"
  %"fmul.97" = fmul float %".2413", %".2414"
  %"fadd.90" = fadd float %"fmul.97", %".2415"
  %".2416" = bitcast ptr %"R18" to ptr
  store float %"fadd.90", ptr %".2416"
  ; FMUL R51, R51, R9
  %".2419" = load float, ptr %"R51"
  %".2420" = load float, ptr %"R9"
  %"fmul.98" = fmul float %".2419", %".2420"
  %".2421" = bitcast ptr %"R51" to ptr
  store float %"fmul.98", ptr %".2421"
  ; FFMA R18, R51, R53, R18
  %".2424" = load float, ptr %"R51"
  %".2425" = load float, ptr %"R53"
  %".2426" = load float, ptr %"R18"
  %"fmul.99" = fmul float %".2424", %".2425"
  %"fadd.91" = fadd float %"fmul.99", %".2426"
  %".2427" = bitcast ptr %"R18" to ptr
  store float %"fadd.91", ptr %".2427"
  ; FMUL R60, R60, R9
  %".2430" = load float, ptr %"R60"
  %".2431" = load float, ptr %"R9"
  %"fmul.100" = fmul float %".2430", %".2431"
  %".2432" = bitcast ptr %"R60" to ptr
  store float %"fmul.100", ptr %".2432"
  ; FFMA R18, R60, R49, R18
  %".2435" = load float, ptr %"R60"
  %".2436" = load float, ptr %"R49"
  %".2437" = load float, ptr %"R18"
  %"fmul.101" = fmul float %".2435", %".2436"
  %"fadd.92" = fadd float %"fmul.101", %".2437"
  %".2438" = bitcast ptr %"R18" to ptr
  store float %"fadd.92", ptr %".2438"
  ; FMUL R58, R58, R9
  %".2441" = load float, ptr %"R58"
  %".2442" = load float, ptr %"R9"
  %"fmul.102" = fmul float %".2441", %".2442"
  %".2443" = bitcast ptr %"R58" to ptr
  store float %"fmul.102", ptr %".2443"
  ; FFMA R18, R58, R19, R18
  %".2446" = load float, ptr %"R58"
  %".2447" = load float, ptr %"R19"
  %".2448" = load float, ptr %"R18"
  %"fmul.103" = fmul float %".2446", %".2447"
  %"fadd.93" = fadd float %"fmul.103", %".2448"
  %".2449" = bitcast ptr %"R18" to ptr
  store float %"fadd.93", ptr %".2449"
  ; FMUL R57, R57, R9
  %".2452" = load float, ptr %"R57"
  %".2453" = load float, ptr %"R9"
  %"fmul.104" = fmul float %".2452", %".2453"
  %".2454" = bitcast ptr %"R57" to ptr
  store float %"fmul.104", ptr %".2454"
  ; FFMA R8, R57, R59, R18
  %".2457" = load float, ptr %"R57"
  %".2458" = load float, ptr %"R59"
  %".2459" = load float, ptr %"R18"
  %"fmul.105" = fmul float %".2457", %".2458"
  %"fadd.94" = fadd float %"fmul.105", %".2459"
  %".2460" = bitcast ptr %"R8" to ptr
  store float %"fadd.94", ptr %".2460"
  ; @P1 BRA `(.L_x_14)
  %".2463" = load i1, ptr %"P1"
  %".2464" = icmp ne i1 %".2463", 1
  br i1 %".2464", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".2467" = load i32, ptr %"R23"
  %".2468" = load i1, ptr %"PT"
  %"cmp.20" = icmp sgt i32 %".2467", 4
  %".2469" = and i1 %"cmp.20", %".2468"
  store i1 %".2469", ptr %"P1"
  ; @!P1 BRA `(.L_x_15)
  %".2472" = load i1, ptr %"P1"
  %".2473" = icmp eq i1 %".2472", 1
  br i1 %".2473", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R16, R3, R22, RZ
  %".2478" = load i32, ptr %"R3"
  %".2479" = load i32, ptr %"R22"
  %"add.120" = add i32 %".2478", %".2479"
  %"add.121" = add i32 %"add.120", 0
  store i32 %"add.121", ptr %"R16"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".2482" = load i32, ptr %"R22"
  %".2483" = load i32, ptr %"R13"
  %"mul.44" = mul i32 %".2482", %".2483"
  %"add.122" = add i32 %"mul.44", %"Arg_3"
  store i32 %"add.122", ptr %"R14"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".2486" = load i32, ptr %"R16"
  %".2487" = load i32, ptr %"R13"
  %"mul.45" = mul i32 %".2486", %".2487"
  %"add.123" = add i32 %"mul.45", %"Arg_4"
  store i32 %"add.123", ptr %"R16"
  ; IADD3 R10, R22, 0x4, RZ
  %".2490" = load i32, ptr %"R22"
  %"add.124" = add i32 %".2490", 4
  %"add.125" = add i32 %"add.124", 0
  store i32 %"add.125", ptr %"R10"
  ; LDG.E.SYS R18, [R14]
  %".2493" = load i32, ptr %"R14"
  %"zext.260" = zext i32 %".2493" to i64
  %".2494" = load i32, ptr %"R15"
  %"zext.261" = zext i32 %".2494" to i64
  %"shl.137" = shl i64 %"zext.261", 32
  %"or.129" = or i64 %"shl.137", %"zext.260"
  %".2495" = inttoptr i64 %"or.129" to ptr
  %".2496" = ptrtoint ptr %".2495" to i64
  %".2497" = add i64 %".2496", 0
  %"for_LDG.127" = inttoptr i64 %".2497" to ptr
  %".2498" = load float, ptr %"for_LDG.127"
  %".2499" = bitcast ptr %"R18" to ptr
  store float %".2498", ptr %".2499"
  ; IADD3 R12, R3, R10, RZ
  %".2502" = load i32, ptr %"R3"
  %".2503" = load i32, ptr %"R10"
  %"add.126" = add i32 %".2502", %".2503"
  %"add.127" = add i32 %"add.126", 0
  store i32 %"add.127", ptr %"R12"
  ; LDG.E.SYS R19, [R16]
  %".2506" = load i32, ptr %"R16"
  %"zext.262" = zext i32 %".2506" to i64
  %".2507" = load i32, ptr %"R17"
  %"zext.263" = zext i32 %".2507" to i64
  %"shl.138" = shl i64 %"zext.263", 32
  %"or.130" = or i64 %"shl.138", %"zext.262"
  %".2508" = inttoptr i64 %"or.130" to ptr
  %".2509" = ptrtoint ptr %".2508" to i64
  %".2510" = add i64 %".2509", 0
  %"for_LDG.128" = inttoptr i64 %".2510" to ptr
  %".2511" = load float, ptr %"for_LDG.128"
  %".2512" = bitcast ptr %"R19" to ptr
  store float %".2511", ptr %".2512"
  ; LDG.E.SYS R24, [R14+0x4]
  %".2515" = load i32, ptr %"R14"
  %"zext.264" = zext i32 %".2515" to i64
  %".2516" = load i32, ptr %"R15"
  %"zext.265" = zext i32 %".2516" to i64
  %"shl.139" = shl i64 %"zext.265", 32
  %"or.131" = or i64 %"shl.139", %"zext.264"
  %".2517" = inttoptr i64 %"or.131" to ptr
  %".2518" = ptrtoint ptr %".2517" to i64
  %".2519" = add i64 %".2518", 4
  %"for_LDG.129" = inttoptr i64 %".2519" to ptr
  %".2520" = load float, ptr %"for_LDG.129"
  %".2521" = bitcast ptr %"R24" to ptr
  store float %".2520", ptr %".2521"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".2524" = load i32, ptr %"R10"
  %".2525" = load i32, ptr %"R13"
  %"mul.46" = mul i32 %".2524", %".2525"
  %"add.128" = add i32 %"mul.46", %"Arg_3"
  store i32 %"add.128", ptr %"R10"
  ; LDG.E.SYS R21, [R16+0x4]
  %".2528" = load i32, ptr %"R16"
  %"zext.266" = zext i32 %".2528" to i64
  %".2529" = load i32, ptr %"R17"
  %"zext.267" = zext i32 %".2529" to i64
  %"shl.140" = shl i64 %"zext.267", 32
  %"or.132" = or i64 %"shl.140", %"zext.266"
  %".2530" = inttoptr i64 %"or.132" to ptr
  %".2531" = ptrtoint ptr %".2530" to i64
  %".2532" = add i64 %".2531", 4
  %"for_LDG.130" = inttoptr i64 %".2532" to ptr
  %".2533" = load float, ptr %"for_LDG.130"
  %".2534" = bitcast ptr %"R21" to ptr
  store float %".2533", ptr %".2534"
  ; LDG.E.SYS R34, [R14+0x8]
  %".2537" = load i32, ptr %"R14"
  %"zext.268" = zext i32 %".2537" to i64
  %".2538" = load i32, ptr %"R15"
  %"zext.269" = zext i32 %".2538" to i64
  %"shl.141" = shl i64 %"zext.269", 32
  %"or.133" = or i64 %"shl.141", %"zext.268"
  %".2539" = inttoptr i64 %"or.133" to ptr
  %".2540" = ptrtoint ptr %".2539" to i64
  %".2541" = add i64 %".2540", 8
  %"for_LDG.131" = inttoptr i64 %".2541" to ptr
  %".2542" = load float, ptr %"for_LDG.131"
  %".2543" = bitcast ptr %"R34" to ptr
  store float %".2542", ptr %".2543"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2546" = load i32, ptr %"R12"
  %".2547" = load i32, ptr %"R13"
  %"mul.47" = mul i32 %".2546", %".2547"
  %"add.129" = add i32 %"mul.47", %"Arg_4"
  store i32 %"add.129", ptr %"R12"
  ; LDG.E.SYS R25, [R16+0x8]
  %".2550" = load i32, ptr %"R16"
  %"zext.270" = zext i32 %".2550" to i64
  %".2551" = load i32, ptr %"R17"
  %"zext.271" = zext i32 %".2551" to i64
  %"shl.142" = shl i64 %"zext.271", 32
  %"or.134" = or i64 %"shl.142", %"zext.270"
  %".2552" = inttoptr i64 %"or.134" to ptr
  %".2553" = ptrtoint ptr %".2552" to i64
  %".2554" = add i64 %".2553", 8
  %"for_LDG.132" = inttoptr i64 %".2554" to ptr
  %".2555" = load float, ptr %"for_LDG.132"
  %".2556" = bitcast ptr %"R25" to ptr
  store float %".2555", ptr %".2556"
  ; LDG.E.SYS R36, [R14+0xc]
  %".2559" = load i32, ptr %"R14"
  %"zext.272" = zext i32 %".2559" to i64
  %".2560" = load i32, ptr %"R15"
  %"zext.273" = zext i32 %".2560" to i64
  %"shl.143" = shl i64 %"zext.273", 32
  %"or.135" = or i64 %"shl.143", %"zext.272"
  %".2561" = inttoptr i64 %"or.135" to ptr
  %".2562" = ptrtoint ptr %".2561" to i64
  %".2563" = add i64 %".2562", 12
  %"for_LDG.133" = inttoptr i64 %".2563" to ptr
  %".2564" = load float, ptr %"for_LDG.133"
  %".2565" = bitcast ptr %"R36" to ptr
  store float %".2564", ptr %".2565"
  ; LDG.E.SYS R35, [R16+0xc]
  %".2568" = load i32, ptr %"R16"
  %"zext.274" = zext i32 %".2568" to i64
  %".2569" = load i32, ptr %"R17"
  %"zext.275" = zext i32 %".2569" to i64
  %"shl.144" = shl i64 %"zext.275", 32
  %"or.136" = or i64 %"shl.144", %"zext.274"
  %".2570" = inttoptr i64 %"or.136" to ptr
  %".2571" = ptrtoint ptr %".2570" to i64
  %".2572" = add i64 %".2571", 12
  %"for_LDG.134" = inttoptr i64 %".2572" to ptr
  %".2573" = load float, ptr %"for_LDG.134"
  %".2574" = bitcast ptr %"R35" to ptr
  store float %".2573", ptr %".2574"
  ; LDG.E.SYS R38, [R10]
  %".2577" = load i32, ptr %"R10"
  %"zext.276" = zext i32 %".2577" to i64
  %".2578" = load i32, ptr %"R11"
  %"zext.277" = zext i32 %".2578" to i64
  %"shl.145" = shl i64 %"zext.277", 32
  %"or.137" = or i64 %"shl.145", %"zext.276"
  %".2579" = inttoptr i64 %"or.137" to ptr
  %".2580" = ptrtoint ptr %".2579" to i64
  %".2581" = add i64 %".2580", 0
  %"for_LDG.135" = inttoptr i64 %".2581" to ptr
  %".2582" = load float, ptr %"for_LDG.135"
  %".2583" = bitcast ptr %"R38" to ptr
  store float %".2582", ptr %".2583"
  ; LDG.E.SYS R37, [R12]
  %".2586" = load i32, ptr %"R12"
  %"zext.278" = zext i32 %".2586" to i64
  %".2587" = load i32, ptr %"R13"
  %"zext.279" = zext i32 %".2587" to i64
  %"shl.146" = shl i64 %"zext.279", 32
  %"or.138" = or i64 %"shl.146", %"zext.278"
  %".2588" = inttoptr i64 %"or.138" to ptr
  %".2589" = ptrtoint ptr %".2588" to i64
  %".2590" = add i64 %".2589", 0
  %"for_LDG.136" = inttoptr i64 %".2590" to ptr
  %".2591" = load float, ptr %"for_LDG.136"
  %".2592" = bitcast ptr %"R37" to ptr
  store float %".2591", ptr %".2592"
  ; LDG.E.SYS R40, [R10+0x4]
  %".2595" = load i32, ptr %"R10"
  %"zext.280" = zext i32 %".2595" to i64
  %".2596" = load i32, ptr %"R11"
  %"zext.281" = zext i32 %".2596" to i64
  %"shl.147" = shl i64 %"zext.281", 32
  %"or.139" = or i64 %"shl.147", %"zext.280"
  %".2597" = inttoptr i64 %"or.139" to ptr
  %".2598" = ptrtoint ptr %".2597" to i64
  %".2599" = add i64 %".2598", 4
  %"for_LDG.137" = inttoptr i64 %".2599" to ptr
  %".2600" = load float, ptr %"for_LDG.137"
  %".2601" = bitcast ptr %"R40" to ptr
  store float %".2600", ptr %".2601"
  ; LDG.E.SYS R39, [R12+0x4]
  %".2604" = load i32, ptr %"R12"
  %"zext.282" = zext i32 %".2604" to i64
  %".2605" = load i32, ptr %"R13"
  %"zext.283" = zext i32 %".2605" to i64
  %"shl.148" = shl i64 %"zext.283", 32
  %"or.140" = or i64 %"shl.148", %"zext.282"
  %".2606" = inttoptr i64 %"or.140" to ptr
  %".2607" = ptrtoint ptr %".2606" to i64
  %".2608" = add i64 %".2607", 4
  %"for_LDG.138" = inttoptr i64 %".2608" to ptr
  %".2609" = load float, ptr %"for_LDG.138"
  %".2610" = bitcast ptr %"R39" to ptr
  store float %".2609", ptr %".2610"
  ; LDG.E.SYS R42, [R10+0x8]
  %".2613" = load i32, ptr %"R10"
  %"zext.284" = zext i32 %".2613" to i64
  %".2614" = load i32, ptr %"R11"
  %"zext.285" = zext i32 %".2614" to i64
  %"shl.149" = shl i64 %"zext.285", 32
  %"or.141" = or i64 %"shl.149", %"zext.284"
  %".2615" = inttoptr i64 %"or.141" to ptr
  %".2616" = ptrtoint ptr %".2615" to i64
  %".2617" = add i64 %".2616", 8
  %"for_LDG.139" = inttoptr i64 %".2617" to ptr
  %".2618" = load float, ptr %"for_LDG.139"
  %".2619" = bitcast ptr %"R42" to ptr
  store float %".2618", ptr %".2619"
  ; LDG.E.SYS R44, [R10+0xc]
  %".2622" = load i32, ptr %"R10"
  %"zext.286" = zext i32 %".2622" to i64
  %".2623" = load i32, ptr %"R11"
  %"zext.287" = zext i32 %".2623" to i64
  %"shl.150" = shl i64 %"zext.287", 32
  %"or.142" = or i64 %"shl.150", %"zext.286"
  %".2624" = inttoptr i64 %"or.142" to ptr
  %".2625" = ptrtoint ptr %".2624" to i64
  %".2626" = add i64 %".2625", 12
  %"for_LDG.140" = inttoptr i64 %".2626" to ptr
  %".2627" = load float, ptr %"for_LDG.140"
  %".2628" = bitcast ptr %"R44" to ptr
  store float %".2627", ptr %".2628"
  ; LDG.E.SYS R41, [R12+0x8]
  %".2631" = load i32, ptr %"R12"
  %"zext.288" = zext i32 %".2631" to i64
  %".2632" = load i32, ptr %"R13"
  %"zext.289" = zext i32 %".2632" to i64
  %"shl.151" = shl i64 %"zext.289", 32
  %"or.143" = or i64 %"shl.151", %"zext.288"
  %".2633" = inttoptr i64 %"or.143" to ptr
  %".2634" = ptrtoint ptr %".2633" to i64
  %".2635" = add i64 %".2634", 8
  %"for_LDG.141" = inttoptr i64 %".2635" to ptr
  %".2636" = load float, ptr %"for_LDG.141"
  %".2637" = bitcast ptr %"R41" to ptr
  store float %".2636", ptr %".2637"
  ; LDG.E.SYS R43, [R12+0xc]
  %".2640" = load i32, ptr %"R12"
  %"zext.290" = zext i32 %".2640" to i64
  %".2641" = load i32, ptr %"R13"
  %"zext.291" = zext i32 %".2641" to i64
  %"shl.152" = shl i64 %"zext.291", 32
  %"or.144" = or i64 %"shl.152", %"zext.290"
  %".2642" = inttoptr i64 %"or.144" to ptr
  %".2643" = ptrtoint ptr %".2642" to i64
  %".2644" = add i64 %".2643", 12
  %"for_LDG.142" = inttoptr i64 %".2644" to ptr
  %".2645" = load float, ptr %"for_LDG.142"
  %".2646" = bitcast ptr %"R43" to ptr
  store float %".2645", ptr %".2646"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2649" = xor i1 1, 1
  %".2650" = and i1 %".2649", 1
  %".2651" = and i1 %".2650", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".2653" = load i32, ptr %"R23"
  %"add.130" = add i32 %".2653", -8
  %"add.131" = add i32 %"add.130", 0
  store i32 %"add.131", ptr %"R23"
  ; IADD3 R22, R22, 0x8, RZ
  %".2656" = load i32, ptr %"R22"
  %"add.132" = add i32 %".2656", 8
  %"add.133" = add i32 %"add.132", 0
  store i32 %"add.133", ptr %"R22"
  ; FMUL R15, R18, R9
  %".2659" = load float, ptr %"R18"
  %".2660" = load float, ptr %"R9"
  %"fmul.106" = fmul float %".2659", %".2660"
  %".2661" = bitcast ptr %"R15" to ptr
  store float %"fmul.106", ptr %".2661"
  ; FFMA R15, R15, R19, R8
  %".2664" = load float, ptr %"R15"
  %".2665" = load float, ptr %"R19"
  %".2666" = load float, ptr %"R8"
  %"fmul.107" = fmul float %".2664", %".2665"
  %"fadd.95" = fadd float %"fmul.107", %".2666"
  %".2667" = bitcast ptr %"R15" to ptr
  store float %"fadd.95", ptr %".2667"
  ; FMUL R24, R24, R9
  %".2670" = load float, ptr %"R24"
  %".2671" = load float, ptr %"R9"
  %"fmul.108" = fmul float %".2670", %".2671"
  %".2672" = bitcast ptr %"R24" to ptr
  store float %"fmul.108", ptr %".2672"
  ; FFMA R15, R24, R21, R15
  %".2675" = load float, ptr %"R24"
  %".2676" = load float, ptr %"R21"
  %".2677" = load float, ptr %"R15"
  %"fmul.109" = fmul float %".2675", %".2676"
  %"fadd.96" = fadd float %"fmul.109", %".2677"
  %".2678" = bitcast ptr %"R15" to ptr
  store float %"fadd.96", ptr %".2678"
  ; FMUL R34, R34, R9
  %".2681" = load float, ptr %"R34"
  %".2682" = load float, ptr %"R9"
  %"fmul.110" = fmul float %".2681", %".2682"
  %".2683" = bitcast ptr %"R34" to ptr
  store float %"fmul.110", ptr %".2683"
  ; FFMA R15, R34, R25, R15
  %".2686" = load float, ptr %"R34"
  %".2687" = load float, ptr %"R25"
  %".2688" = load float, ptr %"R15"
  %"fmul.111" = fmul float %".2686", %".2687"
  %"fadd.97" = fadd float %"fmul.111", %".2688"
  %".2689" = bitcast ptr %"R15" to ptr
  store float %"fadd.97", ptr %".2689"
  ; FMUL R36, R36, R9
  %".2692" = load float, ptr %"R36"
  %".2693" = load float, ptr %"R9"
  %"fmul.112" = fmul float %".2692", %".2693"
  %".2694" = bitcast ptr %"R36" to ptr
  store float %"fmul.112", ptr %".2694"
  ; FFMA R15, R36, R35, R15
  %".2697" = load float, ptr %"R36"
  %".2698" = load float, ptr %"R35"
  %".2699" = load float, ptr %"R15"
  %"fmul.113" = fmul float %".2697", %".2698"
  %"fadd.98" = fadd float %"fmul.113", %".2699"
  %".2700" = bitcast ptr %"R15" to ptr
  store float %"fadd.98", ptr %".2700"
  ; FMUL R38, R38, R9
  %".2703" = load float, ptr %"R38"
  %".2704" = load float, ptr %"R9"
  %"fmul.114" = fmul float %".2703", %".2704"
  %".2705" = bitcast ptr %"R38" to ptr
  store float %"fmul.114", ptr %".2705"
  ; FFMA R15, R38, R37, R15
  %".2708" = load float, ptr %"R38"
  %".2709" = load float, ptr %"R37"
  %".2710" = load float, ptr %"R15"
  %"fmul.115" = fmul float %".2708", %".2709"
  %"fadd.99" = fadd float %"fmul.115", %".2710"
  %".2711" = bitcast ptr %"R15" to ptr
  store float %"fadd.99", ptr %".2711"
  ; FMUL R40, R40, R9
  %".2714" = load float, ptr %"R40"
  %".2715" = load float, ptr %"R9"
  %"fmul.116" = fmul float %".2714", %".2715"
  %".2716" = bitcast ptr %"R40" to ptr
  store float %"fmul.116", ptr %".2716"
  ; FFMA R15, R40, R39, R15
  %".2719" = load float, ptr %"R40"
  %".2720" = load float, ptr %"R39"
  %".2721" = load float, ptr %"R15"
  %"fmul.117" = fmul float %".2719", %".2720"
  %"fadd.100" = fadd float %"fmul.117", %".2721"
  %".2722" = bitcast ptr %"R15" to ptr
  store float %"fadd.100", ptr %".2722"
  ; FMUL R42, R42, R9.reuse
  %".2725" = load float, ptr %"R42"
  %".2726" = load float, ptr %"R9"
  %"fmul.118" = fmul float %".2725", %".2726"
  %".2727" = bitcast ptr %"R42" to ptr
  store float %"fmul.118", ptr %".2727"
  ; FMUL R44, R44, R9
  %".2730" = load float, ptr %"R44"
  %".2731" = load float, ptr %"R9"
  %"fmul.119" = fmul float %".2730", %".2731"
  %".2732" = bitcast ptr %"R44" to ptr
  store float %"fmul.119", ptr %".2732"
  ; FFMA R15, R42, R41, R15
  %".2735" = load float, ptr %"R42"
  %".2736" = load float, ptr %"R41"
  %".2737" = load float, ptr %"R15"
  %"fmul.120" = fmul float %".2735", %".2736"
  %"fadd.101" = fadd float %"fmul.120", %".2737"
  %".2738" = bitcast ptr %"R15" to ptr
  store float %"fadd.101", ptr %".2738"
  ; FFMA R8, R44, R43, R15
  %".2741" = load float, ptr %"R44"
  %".2742" = load float, ptr %"R43"
  %".2743" = load float, ptr %"R15"
  %"fmul.121" = fmul float %".2741", %".2742"
  %"fadd.102" = fadd float %"fmul.121", %".2743"
  %".2744" = bitcast ptr %"R8" to ptr
  store float %"fadd.102", ptr %".2744"
  br label %".L_x_15"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".2748" = load i32, ptr %"R23"
  %".2749" = load i1, ptr %"PT"
  %"cmp.21" = icmp ne i32 %".2748", 0
  %".2750" = or i1 %"cmp.21", %".2749"
  store i1 %".2750", ptr %"P0"
  ; @!P0 BRA `(.L_x_11)
  %".2753" = load i1, ptr %"P0"
  %".2754" = icmp eq i1 %".2753", 1
  br i1 %".2754", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R12, R3, R22, RZ
  %".2759" = load i32, ptr %"R3"
  %".2760" = load i32, ptr %"R22"
  %"add.134" = add i32 %".2759", %".2760"
  %"add.135" = add i32 %"add.134", 0
  store i32 %"add.135", ptr %"R12"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".2763" = load i32, ptr %"R22"
  %".2764" = load i32, ptr %"R13"
  %"mul.48" = mul i32 %".2763", %".2764"
  %"add.136" = add i32 %"mul.48", %"Arg_3"
  store i32 %"add.136", ptr %"R10"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2767" = load i32, ptr %"R12"
  %".2768" = load i32, ptr %"R13"
  %"mul.49" = mul i32 %".2767", %".2768"
  %"add.137" = add i32 %"mul.49", %"Arg_4"
  store i32 %"add.137", ptr %"R12"
  ; LDG.E.SYS R14, [R10]
  %".2771" = load i32, ptr %"R10"
  %"zext.292" = zext i32 %".2771" to i64
  %".2772" = load i32, ptr %"R11"
  %"zext.293" = zext i32 %".2772" to i64
  %"shl.153" = shl i64 %"zext.293", 32
  %"or.145" = or i64 %"shl.153", %"zext.292"
  %".2773" = inttoptr i64 %"or.145" to ptr
  %".2774" = ptrtoint ptr %".2773" to i64
  %".2775" = add i64 %".2774", 0
  %"for_LDG.143" = inttoptr i64 %".2775" to ptr
  %".2776" = load float, ptr %"for_LDG.143"
  %".2777" = bitcast ptr %"R14" to ptr
  store float %".2776", ptr %".2777"
  ; LDG.E.SYS R16, [R12]
  %".2780" = load i32, ptr %"R12"
  %"zext.294" = zext i32 %".2780" to i64
  %".2781" = load i32, ptr %"R13"
  %"zext.295" = zext i32 %".2781" to i64
  %"shl.154" = shl i64 %"zext.295", 32
  %"or.146" = or i64 %"shl.154", %"zext.294"
  %".2782" = inttoptr i64 %"or.146" to ptr
  %".2783" = ptrtoint ptr %".2782" to i64
  %".2784" = add i64 %".2783", 0
  %"for_LDG.144" = inttoptr i64 %".2784" to ptr
  %".2785" = load float, ptr %"for_LDG.144"
  %".2786" = bitcast ptr %"R16" to ptr
  store float %".2785", ptr %".2786"
  ; LDG.E.SYS R18, [R10+0x4]
  %".2789" = load i32, ptr %"R10"
  %"zext.296" = zext i32 %".2789" to i64
  %".2790" = load i32, ptr %"R11"
  %"zext.297" = zext i32 %".2790" to i64
  %"shl.155" = shl i64 %"zext.297", 32
  %"or.147" = or i64 %"shl.155", %"zext.296"
  %".2791" = inttoptr i64 %"or.147" to ptr
  %".2792" = ptrtoint ptr %".2791" to i64
  %".2793" = add i64 %".2792", 4
  %"for_LDG.145" = inttoptr i64 %".2793" to ptr
  %".2794" = load float, ptr %"for_LDG.145"
  %".2795" = bitcast ptr %"R18" to ptr
  store float %".2794", ptr %".2795"
  ; LDG.E.SYS R17, [R12+0x4]
  %".2798" = load i32, ptr %"R12"
  %"zext.298" = zext i32 %".2798" to i64
  %".2799" = load i32, ptr %"R13"
  %"zext.299" = zext i32 %".2799" to i64
  %"shl.156" = shl i64 %"zext.299", 32
  %"or.148" = or i64 %"shl.156", %"zext.298"
  %".2800" = inttoptr i64 %"or.148" to ptr
  %".2801" = ptrtoint ptr %".2800" to i64
  %".2802" = add i64 %".2801", 4
  %"for_LDG.146" = inttoptr i64 %".2802" to ptr
  %".2803" = load float, ptr %"for_LDG.146"
  %".2804" = bitcast ptr %"R17" to ptr
  store float %".2803", ptr %".2804"
  ; LDG.E.SYS R24, [R10+0x8]
  %".2807" = load i32, ptr %"R10"
  %"zext.300" = zext i32 %".2807" to i64
  %".2808" = load i32, ptr %"R11"
  %"zext.301" = zext i32 %".2808" to i64
  %"shl.157" = shl i64 %"zext.301", 32
  %"or.149" = or i64 %"shl.157", %"zext.300"
  %".2809" = inttoptr i64 %"or.149" to ptr
  %".2810" = ptrtoint ptr %".2809" to i64
  %".2811" = add i64 %".2810", 8
  %"for_LDG.147" = inttoptr i64 %".2811" to ptr
  %".2812" = load float, ptr %"for_LDG.147"
  %".2813" = bitcast ptr %"R24" to ptr
  store float %".2812", ptr %".2813"
  ; LDG.E.SYS R19, [R12+0x8]
  %".2816" = load i32, ptr %"R12"
  %"zext.302" = zext i32 %".2816" to i64
  %".2817" = load i32, ptr %"R13"
  %"zext.303" = zext i32 %".2817" to i64
  %"shl.158" = shl i64 %"zext.303", 32
  %"or.150" = or i64 %"shl.158", %"zext.302"
  %".2818" = inttoptr i64 %"or.150" to ptr
  %".2819" = ptrtoint ptr %".2818" to i64
  %".2820" = add i64 %".2819", 8
  %"for_LDG.148" = inttoptr i64 %".2820" to ptr
  %".2821" = load float, ptr %"for_LDG.148"
  %".2822" = bitcast ptr %"R19" to ptr
  store float %".2821", ptr %".2822"
  ; LDG.E.SYS R34, [R10+0xc]
  %".2825" = load i32, ptr %"R10"
  %"zext.304" = zext i32 %".2825" to i64
  %".2826" = load i32, ptr %"R11"
  %"zext.305" = zext i32 %".2826" to i64
  %"shl.159" = shl i64 %"zext.305", 32
  %"or.151" = or i64 %"shl.159", %"zext.304"
  %".2827" = inttoptr i64 %"or.151" to ptr
  %".2828" = ptrtoint ptr %".2827" to i64
  %".2829" = add i64 %".2828", 12
  %"for_LDG.149" = inttoptr i64 %".2829" to ptr
  %".2830" = load float, ptr %"for_LDG.149"
  %".2831" = bitcast ptr %"R34" to ptr
  store float %".2830", ptr %".2831"
  ; LDG.E.SYS R21, [R12+0xc]
  %".2834" = load i32, ptr %"R12"
  %"zext.306" = zext i32 %".2834" to i64
  %".2835" = load i32, ptr %"R13"
  %"zext.307" = zext i32 %".2835" to i64
  %"shl.160" = shl i64 %"zext.307", 32
  %"or.152" = or i64 %"shl.160", %"zext.306"
  %".2836" = inttoptr i64 %"or.152" to ptr
  %".2837" = ptrtoint ptr %".2836" to i64
  %".2838" = add i64 %".2837", 12
  %"for_LDG.150" = inttoptr i64 %".2838" to ptr
  %".2839" = load float, ptr %"for_LDG.150"
  %".2840" = bitcast ptr %"R21" to ptr
  store float %".2839", ptr %".2840"
  ; IADD3 R23, R23, -0x4, RZ
  %".2843" = load i32, ptr %"R23"
  %"add.138" = add i32 %".2843", -4
  %"add.139" = add i32 %"add.138", 0
  store i32 %"add.139", ptr %"R23"
  ; IADD3 R22, R22, 0x4, RZ
  %".2846" = load i32, ptr %"R22"
  %"add.140" = add i32 %".2846", 4
  %"add.141" = add i32 %"add.140", 0
  store i32 %"add.141", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".2849" = load i32, ptr %"R23"
  %".2850" = load i1, ptr %"PT"
  %"cmp.22" = icmp ne i32 %".2849", 0
  %".2851" = and i1 %"cmp.22", %".2850"
  store i1 %".2851", ptr %"P0"
  ; FMUL R15, R14, R9
  %".2854" = load float, ptr %"R14"
  %".2855" = load float, ptr %"R9"
  %"fmul.122" = fmul float %".2854", %".2855"
  %".2856" = bitcast ptr %"R15" to ptr
  store float %"fmul.122", ptr %".2856"
  ; FFMA R15, R15, R16, R8
  %".2859" = load float, ptr %"R15"
  %".2860" = load float, ptr %"R16"
  %".2861" = load float, ptr %"R8"
  %"fmul.123" = fmul float %".2859", %".2860"
  %"fadd.103" = fadd float %"fmul.123", %".2861"
  %".2862" = bitcast ptr %"R15" to ptr
  store float %"fadd.103", ptr %".2862"
  ; FMUL R18, R18, R9
  %".2865" = load float, ptr %"R18"
  %".2866" = load float, ptr %"R9"
  %"fmul.124" = fmul float %".2865", %".2866"
  %".2867" = bitcast ptr %"R18" to ptr
  store float %"fmul.124", ptr %".2867"
  ; FFMA R15, R18, R17, R15
  %".2870" = load float, ptr %"R18"
  %".2871" = load float, ptr %"R17"
  %".2872" = load float, ptr %"R15"
  %"fmul.125" = fmul float %".2870", %".2871"
  %"fadd.104" = fadd float %"fmul.125", %".2872"
  %".2873" = bitcast ptr %"R15" to ptr
  store float %"fadd.104", ptr %".2873"
  ; FMUL R24, R24, R9
  %".2876" = load float, ptr %"R24"
  %".2877" = load float, ptr %"R9"
  %"fmul.126" = fmul float %".2876", %".2877"
  %".2878" = bitcast ptr %"R24" to ptr
  store float %"fmul.126", ptr %".2878"
  ; FFMA R15, R24, R19, R15
  %".2881" = load float, ptr %"R24"
  %".2882" = load float, ptr %"R19"
  %".2883" = load float, ptr %"R15"
  %"fmul.127" = fmul float %".2881", %".2882"
  %"fadd.105" = fadd float %"fmul.127", %".2883"
  %".2884" = bitcast ptr %"R15" to ptr
  store float %"fadd.105", ptr %".2884"
  ; FMUL R34, R34, R9
  %".2887" = load float, ptr %"R34"
  %".2888" = load float, ptr %"R9"
  %"fmul.128" = fmul float %".2887", %".2888"
  %".2889" = bitcast ptr %"R34" to ptr
  store float %"fmul.128", ptr %".2889"
  ; FFMA R8, R34, R21, R15
  %".2892" = load float, ptr %"R34"
  %".2893" = load float, ptr %"R21"
  %".2894" = load float, ptr %"R15"
  %"fmul.129" = fmul float %".2892", %".2893"
  %"fadd.106" = fadd float %"fmul.129", %".2894"
  %".2895" = bitcast ptr %"R8" to ptr
  store float %"fadd.106", ptr %".2895"
  ; @P0 BRA `(.L_x_12)
  %".2898" = load i1, ptr %"P0"
  %".2899" = icmp ne i1 %".2898", 1
  br i1 %".2899", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".2902" = load i32, ptr %"R4"
  %".2903" = load i1, ptr %"PT"
  %"cmp.23" = icmp ne i32 %".2902", 0
  %".2904" = and i1 %"cmp.23", %".2903"
  store i1 %".2904", ptr %"P0"
  ; @!P0 BRA `(.L_x_10)
  %".2907" = load i1, ptr %"P0"
  %".2908" = icmp eq i1 %".2907", 1
  br i1 %".2908", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R10, R3, R22, RZ
  %".2913" = load i32, ptr %"R3"
  %".2914" = load i32, ptr %"R22"
  %"add.142" = add i32 %".2913", %".2914"
  %"add.143" = add i32 %"add.142", 0
  store i32 %"add.143", ptr %"R10"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".2917" = load i32, ptr %"R22"
  %".2918" = load i32, ptr %"R11"
  %"mul.50" = mul i32 %".2917", %".2918"
  %"add.144" = add i32 %"mul.50", %"Arg_3"
  store i32 %"add.144", ptr %"R22"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".2921" = load i32, ptr %"R10"
  %".2922" = load i32, ptr %"R11"
  %"mul.51" = mul i32 %".2921", %".2922"
  %"add.145" = add i32 %"mul.51", %"Arg_4"
  store i32 %"add.145", ptr %"R10"
  ; LDG.E.SYS R12, [R22]
  %".2925" = load i32, ptr %"R22"
  %"zext.308" = zext i32 %".2925" to i64
  %".2926" = load i32, ptr %"R23"
  %"zext.309" = zext i32 %".2926" to i64
  %"shl.161" = shl i64 %"zext.309", 32
  %"or.153" = or i64 %"shl.161", %"zext.308"
  %".2927" = inttoptr i64 %"or.153" to ptr
  %".2928" = ptrtoint ptr %".2927" to i64
  %".2929" = add i64 %".2928", 0
  %"for_LDG.151" = inttoptr i64 %".2929" to ptr
  %".2930" = load float, ptr %"for_LDG.151"
  %".2931" = bitcast ptr %"R12" to ptr
  store float %".2930", ptr %".2931"
  ; LDG.E.SYS R14, [R10]
  %".2934" = load i32, ptr %"R10"
  %"zext.310" = zext i32 %".2934" to i64
  %".2935" = load i32, ptr %"R11"
  %"zext.311" = zext i32 %".2935" to i64
  %"shl.162" = shl i64 %"zext.311", 32
  %"or.154" = or i64 %"shl.162", %"zext.310"
  %".2936" = inttoptr i64 %"or.154" to ptr
  %".2937" = ptrtoint ptr %".2936" to i64
  %".2938" = add i64 %".2937", 0
  %"for_LDG.152" = inttoptr i64 %".2938" to ptr
  %".2939" = load float, ptr %"for_LDG.152"
  %".2940" = bitcast ptr %"R14" to ptr
  store float %".2939", ptr %".2940"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".2943" = load i32, ptr %"R4"
  %".2944" = load i1, ptr %"PT"
  %"cmp.24" = icmp ne i32 %".2943", 1
  %".2945" = and i1 %"cmp.24", %".2944"
  store i1 %".2945", ptr %"P0"
  ; FMUL R13, R12, R9
  %".2948" = load float, ptr %"R12"
  %".2949" = load float, ptr %"R9"
  %"fmul.130" = fmul float %".2948", %".2949"
  %".2950" = bitcast ptr %"R13" to ptr
  store float %"fmul.130", ptr %".2950"
  ; FFMA R8, R13, R14, R8
  %".2953" = load float, ptr %"R13"
  %".2954" = load float, ptr %"R14"
  %".2955" = load float, ptr %"R8"
  %"fmul.131" = fmul float %".2953", %".2954"
  %"fadd.107" = fadd float %"fmul.131", %".2955"
  %".2956" = bitcast ptr %"R8" to ptr
  store float %"fadd.107", ptr %".2956"
  ; @!P0 BRA `(.L_x_10)
  %".2959" = load i1, ptr %"P0"
  %".2960" = icmp eq i1 %".2959", 1
  br i1 %".2960", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".2963" = load i32, ptr %"R4"
  %".2964" = load i1, ptr %"PT"
  %"cmp.25" = icmp ne i32 %".2963", 2
  %".2965" = and i1 %"cmp.25", %".2964"
  store i1 %".2965", ptr %"P0"
  ; LDG.E.SYS R12, [R22+0x4]
  %".2968" = load i32, ptr %"R22"
  %"zext.312" = zext i32 %".2968" to i64
  %".2969" = load i32, ptr %"R23"
  %"zext.313" = zext i32 %".2969" to i64
  %"shl.163" = shl i64 %"zext.313", 32
  %"or.155" = or i64 %"shl.163", %"zext.312"
  %".2970" = inttoptr i64 %"or.155" to ptr
  %".2971" = ptrtoint ptr %".2970" to i64
  %".2972" = add i64 %".2971", 4
  %"for_LDG.153" = inttoptr i64 %".2972" to ptr
  %".2973" = load float, ptr %"for_LDG.153"
  %".2974" = bitcast ptr %"R12" to ptr
  store float %".2973", ptr %".2974"
  ; LDG.E.SYS R14, [R10+0x4]
  %".2977" = load i32, ptr %"R10"
  %"zext.314" = zext i32 %".2977" to i64
  %".2978" = load i32, ptr %"R11"
  %"zext.315" = zext i32 %".2978" to i64
  %"shl.164" = shl i64 %"zext.315", 32
  %"or.156" = or i64 %"shl.164", %"zext.314"
  %".2979" = inttoptr i64 %"or.156" to ptr
  %".2980" = ptrtoint ptr %".2979" to i64
  %".2981" = add i64 %".2980", 4
  %"for_LDG.154" = inttoptr i64 %".2981" to ptr
  %".2982" = load float, ptr %"for_LDG.154"
  %".2983" = bitcast ptr %"R14" to ptr
  store float %".2982", ptr %".2983"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".2986" = load i1, ptr %"P0"
  %".2987" = icmp ne i1 %".2986", 1
  br i1 %".2987", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  %".2990" = load i32, ptr %"R22"
  %"zext.316" = zext i32 %".2990" to i64
  %".2991" = load i32, ptr %"R23"
  %"zext.317" = zext i32 %".2991" to i64
  %"shl.165" = shl i64 %"zext.317", 32
  %"or.157" = or i64 %"shl.165", %"zext.316"
  %".2992" = inttoptr i64 %"or.157" to ptr
  %".2993" = ptrtoint ptr %".2992" to i64
  %".2994" = add i64 %".2993", 8
  %"for_LDG.155" = inttoptr i64 %".2994" to ptr
  %".2995" = load float, ptr %"for_LDG.155"
  %".2996" = bitcast ptr %"R16" to ptr
  store float %".2995", ptr %".2996"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".3001" = load i1, ptr %"P0"
  %".3002" = icmp ne i1 %".3001", 1
  br i1 %".3002", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  %".3005" = load i32, ptr %"R10"
  %"zext.318" = zext i32 %".3005" to i64
  %".3006" = load i32, ptr %"R11"
  %"zext.319" = zext i32 %".3006" to i64
  %"shl.166" = shl i64 %"zext.319", 32
  %"or.158" = or i64 %"shl.166", %"zext.318"
  %".3007" = inttoptr i64 %"or.158" to ptr
  %".3008" = ptrtoint ptr %".3007" to i64
  %".3009" = add i64 %".3008", 8
  %"for_LDG.156" = inttoptr i64 %".3009" to ptr
  %".3010" = load float, ptr %"for_LDG.156"
  %".3011" = bitcast ptr %"R15" to ptr
  store float %".3010", ptr %".3011"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %".3016" = load float, ptr %"R12"
  %".3017" = load float, ptr %"R9"
  %"fmul.132" = fmul float %".3016", %".3017"
  %".3018" = bitcast ptr %"R13" to ptr
  store float %"fmul.132", ptr %".3018"
  ; FFMA R8, R13, R14, R8
  %".3021" = load float, ptr %"R13"
  %".3022" = load float, ptr %"R14"
  %".3023" = load float, ptr %"R8"
  %"fmul.133" = fmul float %".3021", %".3022"
  %"fadd.108" = fadd float %"fmul.133", %".3023"
  %".3024" = bitcast ptr %"R8" to ptr
  store float %"fadd.108", ptr %".3024"
  ; @P0 FMUL R9, R16, R9
  %".3027" = load i1, ptr %"P0"
  %".3028" = icmp ne i1 %".3027", 1
  br i1 %".3028", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %".3031" = load float, ptr %"R16"
  %".3032" = load float, ptr %"R9"
  %"fmul.134" = fmul float %".3031", %".3032"
  %".3033" = bitcast ptr %"R9" to ptr
  store float %"fmul.134", ptr %".3033"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".3038" = load i1, ptr %"P0"
  %".3039" = icmp ne i1 %".3038", 1
  br i1 %".3039", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %".3042" = load float, ptr %"R9"
  %".3043" = load float, ptr %"R15"
  %".3044" = load float, ptr %"R8"
  %"fmul.135" = fmul float %".3042", %".3043"
  %"fadd.109" = fadd float %"fmul.135", %".3044"
  %".3045" = bitcast ptr %"R8" to ptr
  store float %"fadd.109", ptr %".3045"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  %".3050" = load i32, ptr %"R30"
  %"zext.320" = zext i32 %".3050" to i64
  %"zext.321" = zext i32 0 to i64
  %"shl.167" = shl i64 %"zext.321", 32
  %"or.159" = or i64 %"shl.167", %"zext.320"
  %".3051" = inttoptr i64 %"or.159" to ptr
  %".3052" = ptrtoint ptr %".3051" to i64
  %".3053" = add i64 %".3052", 0
  %"for_LDG.157" = inttoptr i64 %".3053" to ptr
  %".3054" = load float, ptr %"for_LDG.157"
  %".3055" = bitcast ptr %"R9" to ptr
  store float %".3054", ptr %".3055"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %".3060" = load float, ptr %"R9"
  %".3061" = load float, ptr %"R8"
  %"fadd.110" = fadd float %".3060", %".3061"
  %".3062" = bitcast ptr %"R12" to ptr
  store float %"fadd.110", ptr %".3062"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %".3065" = load float, ptr %"R12"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".3065")
  %".3066" = load i1, ptr %"PT"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".3067" = and i1 %"fcmp_unordered", %".3066"
  store i1 %".3067", ptr %"P0"
  ; @!P0 BRA `(.L_x_17)
  %".3070" = load i1, ptr %"P0"
  %".3071" = icmp eq i1 %".3070", 1
  br i1 %".3071", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %".3074" = load float, ptr %"R12"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".3074")
  %"fmul.136" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  %".3075" = bitcast ptr %"R8" to ptr
  store float %"fmul.136", ptr %".3075"
  ; MOV R9, 0x3f800000
  %".3078" = bitcast ptr %"R9" to ptr
  store float 0x41cfc00000000000, ptr %".3078"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %".3081" = load float, ptr %"R12"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".3081")
  %".3082" = load i1, ptr %"PT"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".3083" = and i1 %"fcmp_unordered.1", %".3082"
  store i1 %".3083", ptr %"P0"
  ; MUFU.EX2 R8, R8
  %".3086" = load float, ptr %"R8"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".3086")
  %".3087" = bitcast ptr %"R8" to ptr
  store float %"llvm_exp2_f32_result.2", ptr %".3087"
  ; FADD R10, R8, 1
  %".3090" = load float, ptr %"R8"
  %"fadd.111" = fadd float %".3090", 0x3ff0000000000000
  %".3091" = bitcast ptr %"R10" to ptr
  store float %"fadd.111", ptr %".3091"
  ; MUFU.RCP R10, R10
  %".3094" = load float, ptr %"R10"
  %".3095" = fdiv float 0x3ff0000000000000, %".3094"
  %".3096" = bitcast ptr %"R10" to ptr
  store float %".3095", ptr %".3096"
  ; FFMA R9, R10, -2, R9
  %".3099" = load float, ptr %"R10"
  %".3100" = load float, ptr %"R9"
  %"fmul.137" = fmul float %".3099", 0xc000000000000000
  %"fadd.112" = fadd float %"fmul.137", %".3100"
  %".3101" = bitcast ptr %"R9" to ptr
  store float %"fadd.112", ptr %".3101"
  ; FSEL R9, R9, 1, !P0
  %".3104" = load float, ptr %"R9"
  %".3105" = load i1, ptr %"P0"
  %".3106" = icmp eq i1 %".3105", 1
  %"fsel" = select  i1 %".3106", float %".3104", float 0x3ff0000000000000
  %".3107" = bitcast ptr %"R9" to ptr
  store float %"fsel", ptr %".3107"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".3110" = load float, ptr %"R9"
  %".3111" = load float, ptr %"R12"
  %".3112" = bitcast float %".3110" to i32
  %".3113" = bitcast float 0x41e0000000000000 to i32
  %".3114" = bitcast float %".3111" to i32
  %".3115" = or i32 %".3112", %".3113"
  %".3116" = or i32 %".3112", %".3114"
  %".3117" = and i32 %".3115", %".3116"
  store i32 %".3117", ptr %"R9"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  %".3122" = bitcast ptr %"R9" to ptr
  store float 0x41ce407840000000, ptr %".3122"
  ; FMUL R8, R12, R12
  %".3125" = load float, ptr %"R12"
  %".3126" = load float, ptr %"R12"
  %"fmul.138" = fmul float %".3125", %".3126"
  %".3127" = bitcast ptr %"R8" to ptr
  store float %"fmul.138", ptr %".3127"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".3130" = load float, ptr %"R8"
  %".3131" = load float, ptr %"R9"
  %"fmul.139" = fmul float %".3130", %".3131"
  %"fadd.113" = fadd float %"fmul.139", 0xbfaac795c0000000
  %".3132" = bitcast ptr %"R9" to ptr
  store float %"fadd.113", ptr %".3132"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".3135" = load float, ptr %"R8"
  %".3136" = load float, ptr %"R9"
  %"fmul.140" = fmul float %".3135", %".3136"
  %"fadd.114" = fadd float %"fmul.140", 0x3fc10b2820000000
  %".3137" = bitcast ptr %"R9" to ptr
  store float %"fadd.114", ptr %".3137"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".3140" = load float, ptr %"R8"
  %".3141" = load float, ptr %"R9"
  %"fmul.141" = fmul float %".3140", %".3141"
  %"fadd.115" = fadd float %"fmul.141", 0xbfd5553da0000000
  %".3142" = bitcast ptr %"R9" to ptr
  store float %"fadd.115", ptr %".3142"
  ; FFMA R9, R8, R9, RZ
  %".3145" = load float, ptr %"R8"
  %".3146" = load float, ptr %"R9"
  %"fmul.142" = fmul float %".3145", %".3146"
  %"fadd.116" = fadd float %"fmul.142",              0x0
  %".3147" = bitcast ptr %"R9" to ptr
  store float %"fadd.116", ptr %".3147"
  ; FFMA R9, R12, R9, R12
  %".3150" = load float, ptr %"R12"
  %".3151" = load float, ptr %"R9"
  %".3152" = load float, ptr %"R12"
  %"fmul.143" = fmul float %".3150", %".3151"
  %"fadd.117" = fadd float %"fmul.143", %".3152"
  %".3153" = bitcast ptr %"R9" to ptr
  store float %"fadd.117", ptr %".3153"
  br label %".L_x_18"
.L_x_18:
  ; BSYNC B0
  br label %".L_x_16"
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  %".3159" = load i32, ptr %"R20"
  %"add.146" = add i32 %".3159", 25165824
  %"add.147" = add i32 %"add.146", 0
  store i32 %"add.147", ptr %"R8"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".3164" = load i32, ptr %"R8"
  %".3165" = and i32 %".3164", 2139095040
  store i32 %".3165", ptr %"R8"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".3168" = load i32, ptr %"R8"
  %".3169" = load i1, ptr %"PT"
  %"cmp.26" = icmp sgt i32 %".3168", 33554431
  %".3170" = and i1 %"cmp.26", %".3169"
  store i1 %".3170", ptr %"P0"
  ; @P0 BRA `(.L_x_20)
  %".3173" = load i1, ptr %"P0"
  %".3174" = icmp ne i1 %".3173", 1
  br i1 %".3174", label %".L_x_20", label %".L_x_16_split_0x2170"
.L_x_16_split_0x2170:
  ; MOV R24, R20
  %".3177" = load float, ptr %"R20"
  %".3178" = bitcast ptr %"R24" to ptr
  store float %".3177", ptr %".3178"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  call void @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R8, R22
  %".3184" = load i32, ptr %"R22"
  store i32 %".3184", ptr %"R8"
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".3189" = load float, ptr %"R20"
  %".3190" = fdiv float 0x3ff0000000000000, %".3189"
  %".3191" = bitcast ptr %"R11" to ptr
  store float %".3190", ptr %".3191"
  ; FFMA R8, R20, R11, -1
  %".3194" = load float, ptr %"R20"
  %".3195" = load float, ptr %"R11"
  %"fmul.144" = fmul float %".3194", %".3195"
  %"fadd.118" = fadd float %"fmul.144", 0xbff0000000000000
  %".3196" = bitcast ptr %"R8" to ptr
  store float %"fadd.118", ptr %".3196"
  ; FADD.FTZ R8, -R8, -RZ
  %".3199" = load float, ptr %"R8"
  %".3200" = fneg float %".3199"
  %"fadd.119" = fadd float %".3200",              0x0
  %".3201" = bitcast ptr %"R8" to ptr
  store float %"fadd.119", ptr %".3201"
  ; FFMA R8, R11, R8, R11
  %".3204" = load float, ptr %"R11"
  %".3205" = load float, ptr %"R8"
  %".3206" = load float, ptr %"R11"
  %"fmul.145" = fmul float %".3204", %".3205"
  %"fadd.120" = fadd float %"fmul.145", %".3206"
  %".3207" = bitcast ptr %"R8" to ptr
  store float %"fadd.120", ptr %".3207"
  br label %".L_x_21"
.L_x_21:
  ; BSYNC B0
  br label %".L_x_19"
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  %".3213" = load i32, ptr %"R28"
  %"zext.322" = zext i32 %".3213" to i64
  %"zext.323" = zext i32 0 to i64
  %"shl.168" = shl i64 %"zext.323", 32
  %"or.160" = or i64 %"shl.168", %"zext.322"
  %".3214" = inttoptr i64 %"or.160" to ptr
  %".3215" = ptrtoint ptr %".3214" to i64
  %".3216" = add i64 %".3215", 0
  %"for_LDG.158" = inttoptr i64 %".3216" to ptr
  %".3217" = load float, ptr %"for_LDG.158"
  %".3218" = bitcast ptr %"R11" to ptr
  store float %".3217", ptr %".3218"
  ; FADD R10, -R8, 1
  %".3221" = load float, ptr %"R8"
  %".3222" = fneg float %".3221"
  %"fadd.121" = fadd float %".3222", 0x3ff0000000000000
  %".3223" = bitcast ptr %"R10" to ptr
  store float %"fadd.121", ptr %".3223"
  ; FMUL R11, R11, R8
  %".3226" = load float, ptr %"R11"
  %".3227" = load float, ptr %"R8"
  %"fmul.146" = fmul float %".3226", %".3227"
  %".3228" = bitcast ptr %"R11" to ptr
  store float %"fmul.146", ptr %".3228"
  ; FFMA R9, R10, R9, R11
  %".3231" = load float, ptr %"R10"
  %".3232" = load float, ptr %"R9"
  %".3233" = load float, ptr %"R11"
  %"fmul.147" = fmul float %".3231", %".3232"
  %"fadd.122" = fadd float %"fmul.147", %".3233"
  %".3234" = bitcast ptr %"R9" to ptr
  store float %"fadd.122", ptr %".3234"
  ; STG.E.SYS [R28], R9
  %".3237" = load float, ptr %"R9"
  %".3238" = load i32, ptr %"R28"
  %"zext.324" = zext i32 %".3238" to i64
  %"zext.325" = zext i32 0 to i64
  %"shl.169" = shl i64 %"zext.325", 32
  %"or.161" = or i64 %"shl.169", %"zext.324"
  %".3239" = inttoptr i64 %"or.161" to ptr
  %".3240" = ptrtoint ptr %".3239" to i64
  %".3241" = add i64 %".3240", 0
  %"for_STG" = inttoptr i64 %".3241" to ptr
  store float %".3237", ptr %"for_STG"
  ; @!P3 BRA `(.L_x_22)
  %".3244" = load i1, ptr %"P3"
  %".3245" = icmp eq i1 %".3244", 1
  br i1 %".3245", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".3252" = load i32, ptr %"R15"
  %".3253" = and i32 %".3252", 3
  store i32 %".3253", ptr %"R15"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".3256" = load i32, ptr %"R5"
  %".3257" = and i32 %".3256", 3
  store i32 %".3257", ptr %"R48"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".3260" = load i32, ptr %"R18"
  %".3261" = sub i32 0, %".3260"
  %"add.148" = add i32 %".3261", %"Arg_6"
  %"add.149" = add i32 %"add.148", 0
  store i32 %"add.149", ptr %"R49"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".3264" = icmp ult i32 31, 32
  %"SHF_min.2" = select  i1 %".3264", i32 31, i32 32
  %".3265" = load i32, ptr %"R5"
  %"zext.326" = zext i32 %".3265" to i64
  %"zext.327" = zext i32 0 to i64
  %"zext.328" = zext i32 31 to i64
  %"shl.170" = shl i64 %"zext.326", 32
  %"or.162" = or i64 %"shl.170", %"zext.327"
  %"ashr" = ashr i64 %"or.162", %"zext.328"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.2" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.2", ptr %"R16"
  ; MOV R17, RZ
  %".3268" = load i32, ptr %"RZ"
  store i32 %".3268", ptr %"R17"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".3271" = load i32, ptr %"R18"
  %".3272" = sub i32 0, %".3271"
  %"add.150" = add i32 %".3272", %"Arg_7"
  %"add.151" = add i32 %"add.150", 0
  store i32 %"add.151", ptr %"R18"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".3275" = load i32, ptr %"R15"
  %".3276" = sub i32 0, %".3275"
  %"add.152" = add i32 %".3276", %"Arg_6"
  %"add.153" = add i32 %"add.152", 0
  store i32 %"add.153", ptr %"R19"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".3279" = load i32, ptr %"R48"
  %".3280" = sub i32 0, %".3279"
  %"add.154" = add i32 %".3280", %"Arg_7"
  %"add.155" = add i32 %"add.154", 0
  store i32 %"add.155", ptr %"R20"
  br label %".L_x_47"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".3284" = load i32, ptr %"R49"
  %".3285" = load i1, ptr %"PT"
  %"cmp.27" = icmp sge i32 %".3284", 3
  %".3286" = and i1 %"cmp.27", %".3285"
  store i1 %".3286", ptr %"P0"
  ; MOV R13, R17
  %".3289" = load i32, ptr %"R17"
  store i32 %".3289", ptr %"R13"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R4"
  ; IADD3 R17, R17, 0x1, RZ
  %".3294" = load i32, ptr %"R17"
  %"add.156" = add i32 %".3294", 1
  %"add.157" = add i32 %"add.156", 0
  store i32 %"add.157", ptr %"R17"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".3297" = load i32, ptr %"R4"
  %".3298" = load i1, ptr %"PT"
  %"cmp.28" = icmp sge i32 %".3297", 1
  %".3299" = and i1 %"cmp.28", %".3298"
  store i1 %".3299", ptr %"P4"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".3302" = load i32, ptr %"R15"
  %".3303" = load i1, ptr %"PT"
  %"cmp.29" = icmp ne i32 %".3302", 0
  %".3304" = and i1 %"cmp.29", %".3303"
  store i1 %".3304", ptr %"P1"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".3307" = load i32, ptr %"R17"
  %".3308" = load i1, ptr %"PT"
  %"cmp.30" = icmp sge i32 %".3307", %"Arg_8"
  %".3309" = and i1 %"cmp.30", %".3308"
  store i1 %".3309", ptr %"P3"
  ; MOV R21, RZ
  %".3312" = load float, ptr %"RZ"
  %".3313" = bitcast ptr %"R21" to ptr
  store float %".3312", ptr %".3313"
  ; MOV R22, RZ
  %".3316" = load i32, ptr %"RZ"
  store i32 %".3316", ptr %"R22"
  ; MOV R56, RZ
  %".3319" = load float, ptr %"RZ"
  %".3320" = bitcast ptr %"R56" to ptr
  store float %".3319", ptr %".3320"
  ; MOV R44, RZ
  %".3323" = load float, ptr %"RZ"
  %".3324" = bitcast ptr %"R44" to ptr
  store float %".3323", ptr %".3324"
  ; @!P0 BRA `(.L_x_23)
  %".3327" = load i1, ptr %"P0"
  %".3328" = icmp eq i1 %".3327", 1
  br i1 %".3328", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R25"
  ; MOV R21, RZ
  %".3333" = load float, ptr %"RZ"
  %".3334" = bitcast ptr %"R21" to ptr
  store float %".3333", ptr %".3334"
  ; MOV R22, RZ
  %".3337" = load i32, ptr %"RZ"
  store i32 %".3337", ptr %"R22"
  ; MOV R12, R19
  %".3340" = load i32, ptr %"R19"
  store i32 %".3340", ptr %"R12"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".3343" = icmp ult i32 2, 64
  %"SHF_min.3" = select  i1 %".3343", i32 2, i32 64
  %".3344" = load i32, ptr %"R16"
  %".3345" = load i32, ptr %"R25"
  %"zext.329" = zext i32 %".3344" to i64
  %"zext.330" = zext i32 %".3345" to i64
  %"zext.331" = zext i32 2 to i64
  %"shl.171" = shl i64 %"zext.329", 32
  %"or.163" = or i64 %"shl.171", %"zext.330"
  %"shl.172" = shl i64 %"or.163", %"zext.331"
  %"lshr" = lshr i64 %"shl.172", 32
  %"trunc32.3" = trunc i64 %"lshr" to i32
  store i32 %"trunc32.3", ptr %"R23"
  br label %".L_x_24"
.L_x_24:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R6, R14, c[0x0][0x180], R22.reuse
  %".3351" = load i32, ptr %"R14"
  %".3352" = load i32, ptr %"R22"
  %"mul.52" = mul i32 %".3351", %"Arg_6"
  %"add.158" = add i32 %"mul.52", %".3352"
  store i32 %"add.158", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".3357" = load i32, ptr %"R13"
  %".3358" = load i32, ptr %"R22"
  %"mul.53" = mul i32 %".3357", %"Arg_6"
  %"add.159" = add i32 %"mul.53", %".3358"
  store i32 %"add.159", ptr %"R10"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".3361" = load i32, ptr %"R6"
  %".3362" = load i32, ptr %"R7"
  %"mul.54" = mul i32 %".3361", %".3362"
  %"add.160" = add i32 %"mul.54", %"Arg_4"
  store i32 %"add.160", ptr %"R4"
  ; LEA R6, R9, R6, 0x1
  %".3365" = load i32, ptr %"R9"
  %".3366" = load i32, ptr %"R6"
  %"shl.173" = shl i32 %".3365", 1
  %"add.161" = add i32 %"shl.173", %".3366"
  store i32 %"add.161", ptr %"R6"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".3369" = load i32, ptr %"R10"
  %".3370" = load i32, ptr %"R7"
  %"mul.55" = mul i32 %".3369", %".3370"
  %"add.162" = add i32 %"mul.55", %"Arg_2"
  store i32 %"add.162", ptr %"R10"
  ; LEA R8, P0, R25, R4, 0x2
  %".3373" = load i1, ptr %"P0"
  %".3374" = sub i1 0, %".3373"
  %".3375" = load i32, ptr %"R25"
  %".3376" = load i32, ptr %"R4"
  %".3377" = sext i1 %".3374" to i32
  %"shl.174" = shl i32 %".3377", %".3376"
  %"add.163" = add i32 %"shl.174", %".3375"
  store i32 %"add.163", ptr %"R8"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".3380" = load i32, ptr %"R6"
  %".3381" = load i32, ptr %"R7"
  %"mul.56" = mul i32 %".3380", %".3381"
  %"add.164" = add i32 %"mul.56", %"Arg_4"
  store i32 %"add.164", ptr %"R6"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".3384" = load i32, ptr %"R5"
  %".3385" = load i32, ptr %"R23"
  %".3386" = load i1, ptr %"P0"
  %".3387" = sub i1 0, %".3386"
  %".3388" = zext i1 %".3387" to i32
  %"add.165" = add i32 %".3384", %".3385"
  %"add.166" = add i32 %"add.165", 0
  %"add.167" = add i32 %"add.166", %".3388"
  store i32 %"add.167", ptr %"R9"
  ; LDG.E.SYS R35, [R4]
  %".3391" = load i32, ptr %"R4"
  %"zext.332" = zext i32 %".3391" to i64
  %".3392" = load i32, ptr %"R5"
  %"zext.333" = zext i32 %".3392" to i64
  %"shl.175" = shl i64 %"zext.333", 32
  %"or.164" = or i64 %"shl.175", %"zext.332"
  %".3393" = inttoptr i64 %"or.164" to ptr
  %".3394" = ptrtoint ptr %".3393" to i64
  %".3395" = add i64 %".3394", 0
  %"for_LDG.159" = inttoptr i64 %".3395" to ptr
  %".3396" = load float, ptr %"for_LDG.159"
  %".3397" = bitcast ptr %"R35" to ptr
  store float %".3396", ptr %".3397"
  ; LDG.E.SYS R24, [R10]
  %".3400" = load i32, ptr %"R10"
  %"zext.334" = zext i32 %".3400" to i64
  %".3401" = load i32, ptr %"R11"
  %"zext.335" = zext i32 %".3401" to i64
  %"shl.176" = shl i64 %"zext.335", 32
  %"or.165" = or i64 %"shl.176", %"zext.334"
  %".3402" = inttoptr i64 %"or.165" to ptr
  %".3403" = ptrtoint ptr %".3402" to i64
  %".3404" = add i64 %".3403", 0
  %"for_LDG.160" = inttoptr i64 %".3404" to ptr
  %".3405" = load float, ptr %"for_LDG.160"
  %".3406" = bitcast ptr %"R24" to ptr
  store float %".3405", ptr %".3406"
  ; LDG.E.SYS R37, [R8]
  %".3409" = load i32, ptr %"R8"
  %"zext.336" = zext i32 %".3409" to i64
  %".3410" = load i32, ptr %"R9"
  %"zext.337" = zext i32 %".3410" to i64
  %"shl.177" = shl i64 %"zext.337", 32
  %"or.166" = or i64 %"shl.177", %"zext.336"
  %".3411" = inttoptr i64 %"or.166" to ptr
  %".3412" = ptrtoint ptr %".3411" to i64
  %".3413" = add i64 %".3412", 0
  %"for_LDG.161" = inttoptr i64 %".3413" to ptr
  %".3414" = load float, ptr %"for_LDG.161"
  %".3415" = bitcast ptr %"R37" to ptr
  store float %".3414", ptr %".3415"
  ; LDG.E.SYS R34, [R6]
  %".3418" = load i32, ptr %"R6"
  %"zext.338" = zext i32 %".3418" to i64
  %".3419" = load i32, ptr %"R7"
  %"zext.339" = zext i32 %".3419" to i64
  %"shl.178" = shl i64 %"zext.339", 32
  %"or.167" = or i64 %"shl.178", %"zext.338"
  %".3420" = inttoptr i64 %"or.167" to ptr
  %".3421" = ptrtoint ptr %".3420" to i64
  %".3422" = add i64 %".3421", 0
  %"for_LDG.162" = inttoptr i64 %".3422" to ptr
  %".3423" = load float, ptr %"for_LDG.162"
  %".3424" = bitcast ptr %"R34" to ptr
  store float %".3423", ptr %".3424"
  ; LDG.E.SYS R36, [R4+0x4]
  %".3427" = load i32, ptr %"R4"
  %"zext.340" = zext i32 %".3427" to i64
  %".3428" = load i32, ptr %"R5"
  %"zext.341" = zext i32 %".3428" to i64
  %"shl.179" = shl i64 %"zext.341", 32
  %"or.168" = or i64 %"shl.179", %"zext.340"
  %".3429" = inttoptr i64 %"or.168" to ptr
  %".3430" = ptrtoint ptr %".3429" to i64
  %".3431" = add i64 %".3430", 4
  %"for_LDG.163" = inttoptr i64 %".3431" to ptr
  %".3432" = load float, ptr %"for_LDG.163"
  %".3433" = bitcast ptr %"R36" to ptr
  store float %".3432", ptr %".3433"
  ; LDG.E.SYS R38, [R10+0x4]
  %".3436" = load i32, ptr %"R10"
  %"zext.342" = zext i32 %".3436" to i64
  %".3437" = load i32, ptr %"R11"
  %"zext.343" = zext i32 %".3437" to i64
  %"shl.180" = shl i64 %"zext.343", 32
  %"or.169" = or i64 %"shl.180", %"zext.342"
  %".3438" = inttoptr i64 %"or.169" to ptr
  %".3439" = ptrtoint ptr %".3438" to i64
  %".3440" = add i64 %".3439", 4
  %"for_LDG.164" = inttoptr i64 %".3440" to ptr
  %".3441" = load float, ptr %"for_LDG.164"
  %".3442" = bitcast ptr %"R38" to ptr
  store float %".3441", ptr %".3442"
  ; LDG.E.SYS R39, [R8+0x4]
  %".3445" = load i32, ptr %"R8"
  %"zext.344" = zext i32 %".3445" to i64
  %".3446" = load i32, ptr %"R9"
  %"zext.345" = zext i32 %".3446" to i64
  %"shl.181" = shl i64 %"zext.345", 32
  %"or.170" = or i64 %"shl.181", %"zext.344"
  %".3447" = inttoptr i64 %"or.170" to ptr
  %".3448" = ptrtoint ptr %".3447" to i64
  %".3449" = add i64 %".3448", 4
  %"for_LDG.165" = inttoptr i64 %".3449" to ptr
  %".3450" = load float, ptr %"for_LDG.165"
  %".3451" = bitcast ptr %"R39" to ptr
  store float %".3450", ptr %".3451"
  ; LDG.E.SYS R41, [R6+0x4]
  %".3454" = load i32, ptr %"R6"
  %"zext.346" = zext i32 %".3454" to i64
  %".3455" = load i32, ptr %"R7"
  %"zext.347" = zext i32 %".3455" to i64
  %"shl.182" = shl i64 %"zext.347", 32
  %"or.171" = or i64 %"shl.182", %"zext.346"
  %".3456" = inttoptr i64 %"or.171" to ptr
  %".3457" = ptrtoint ptr %".3456" to i64
  %".3458" = add i64 %".3457", 4
  %"for_LDG.166" = inttoptr i64 %".3458" to ptr
  %".3459" = load float, ptr %"for_LDG.166"
  %".3460" = bitcast ptr %"R41" to ptr
  store float %".3459", ptr %".3460"
  ; LDG.E.SYS R42, [R10+0x8]
  %".3463" = load i32, ptr %"R10"
  %"zext.348" = zext i32 %".3463" to i64
  %".3464" = load i32, ptr %"R11"
  %"zext.349" = zext i32 %".3464" to i64
  %"shl.183" = shl i64 %"zext.349", 32
  %"or.172" = or i64 %"shl.183", %"zext.348"
  %".3465" = inttoptr i64 %"or.172" to ptr
  %".3466" = ptrtoint ptr %".3465" to i64
  %".3467" = add i64 %".3466", 8
  %"for_LDG.167" = inttoptr i64 %".3467" to ptr
  %".3468" = load float, ptr %"for_LDG.167"
  %".3469" = bitcast ptr %"R42" to ptr
  store float %".3468", ptr %".3469"
  ; LDG.E.SYS R40, [R4+0x8]
  %".3472" = load i32, ptr %"R4"
  %"zext.350" = zext i32 %".3472" to i64
  %".3473" = load i32, ptr %"R5"
  %"zext.351" = zext i32 %".3473" to i64
  %"shl.184" = shl i64 %"zext.351", 32
  %"or.173" = or i64 %"shl.184", %"zext.350"
  %".3474" = inttoptr i64 %"or.173" to ptr
  %".3475" = ptrtoint ptr %".3474" to i64
  %".3476" = add i64 %".3475", 8
  %"for_LDG.168" = inttoptr i64 %".3476" to ptr
  %".3477" = load float, ptr %"for_LDG.168"
  %".3478" = bitcast ptr %"R40" to ptr
  store float %".3477", ptr %".3478"
  ; LDG.E.SYS R43, [R8+0x8]
  %".3481" = load i32, ptr %"R8"
  %"zext.352" = zext i32 %".3481" to i64
  %".3482" = load i32, ptr %"R9"
  %"zext.353" = zext i32 %".3482" to i64
  %"shl.185" = shl i64 %"zext.353", 32
  %"or.174" = or i64 %"shl.185", %"zext.352"
  %".3483" = inttoptr i64 %"or.174" to ptr
  %".3484" = ptrtoint ptr %".3483" to i64
  %".3485" = add i64 %".3484", 8
  %"for_LDG.169" = inttoptr i64 %".3485" to ptr
  %".3486" = load float, ptr %"for_LDG.169"
  %".3487" = bitcast ptr %"R43" to ptr
  store float %".3486", ptr %".3487"
  ; LDG.E.SYS R45, [R6+0x8]
  %".3490" = load i32, ptr %"R6"
  %"zext.354" = zext i32 %".3490" to i64
  %".3491" = load i32, ptr %"R7"
  %"zext.355" = zext i32 %".3491" to i64
  %"shl.186" = shl i64 %"zext.355", 32
  %"or.175" = or i64 %"shl.186", %"zext.354"
  %".3492" = inttoptr i64 %"or.175" to ptr
  %".3493" = ptrtoint ptr %".3492" to i64
  %".3494" = add i64 %".3493", 8
  %"for_LDG.170" = inttoptr i64 %".3494" to ptr
  %".3495" = load float, ptr %"for_LDG.170"
  %".3496" = bitcast ptr %"R45" to ptr
  store float %".3495", ptr %".3496"
  ; LDG.E.SYS R47, [R10+0xc]
  %".3499" = load i32, ptr %"R10"
  %"zext.356" = zext i32 %".3499" to i64
  %".3500" = load i32, ptr %"R11"
  %"zext.357" = zext i32 %".3500" to i64
  %"shl.187" = shl i64 %"zext.357", 32
  %"or.176" = or i64 %"shl.187", %"zext.356"
  %".3501" = inttoptr i64 %"or.176" to ptr
  %".3502" = ptrtoint ptr %".3501" to i64
  %".3503" = add i64 %".3502", 12
  %"for_LDG.171" = inttoptr i64 %".3503" to ptr
  %".3504" = load float, ptr %"for_LDG.171"
  %".3505" = bitcast ptr %"R47" to ptr
  store float %".3504", ptr %".3505"
  ; LDG.E.SYS R46, [R4+0xc]
  %".3508" = load i32, ptr %"R4"
  %"zext.358" = zext i32 %".3508" to i64
  %".3509" = load i32, ptr %"R5"
  %"zext.359" = zext i32 %".3509" to i64
  %"shl.188" = shl i64 %"zext.359", 32
  %"or.177" = or i64 %"shl.188", %"zext.358"
  %".3510" = inttoptr i64 %"or.177" to ptr
  %".3511" = ptrtoint ptr %".3510" to i64
  %".3512" = add i64 %".3511", 12
  %"for_LDG.172" = inttoptr i64 %".3512" to ptr
  %".3513" = load float, ptr %"for_LDG.172"
  %".3514" = bitcast ptr %"R46" to ptr
  store float %".3513", ptr %".3514"
  ; LDG.E.SYS R50, [R8+0xc]
  %".3517" = load i32, ptr %"R8"
  %"zext.360" = zext i32 %".3517" to i64
  %".3518" = load i32, ptr %"R9"
  %"zext.361" = zext i32 %".3518" to i64
  %"shl.189" = shl i64 %"zext.361", 32
  %"or.178" = or i64 %"shl.189", %"zext.360"
  %".3519" = inttoptr i64 %"or.178" to ptr
  %".3520" = ptrtoint ptr %".3519" to i64
  %".3521" = add i64 %".3520", 12
  %"for_LDG.173" = inttoptr i64 %".3521" to ptr
  %".3522" = load float, ptr %"for_LDG.173"
  %".3523" = bitcast ptr %"R50" to ptr
  store float %".3522", ptr %".3523"
  ; LDG.E.SYS R51, [R6+0xc]
  %".3526" = load i32, ptr %"R6"
  %"zext.362" = zext i32 %".3526" to i64
  %".3527" = load i32, ptr %"R7"
  %"zext.363" = zext i32 %".3527" to i64
  %"shl.190" = shl i64 %"zext.363", 32
  %"or.179" = or i64 %"shl.190", %"zext.362"
  %".3528" = inttoptr i64 %"or.179" to ptr
  %".3529" = ptrtoint ptr %".3528" to i64
  %".3530" = add i64 %".3529", 12
  %"for_LDG.174" = inttoptr i64 %".3530" to ptr
  %".3531" = load float, ptr %"for_LDG.174"
  %".3532" = bitcast ptr %"R51" to ptr
  store float %".3531", ptr %".3532"
  ; IADD3 R12, R12, -0x4, RZ
  %".3535" = load i32, ptr %"R12"
  %"add.168" = add i32 %".3535", -4
  %"add.169" = add i32 %"add.168", 0
  store i32 %"add.169", ptr %"R12"
  ; IADD3 R22, R22, 0x4, RZ
  %".3538" = load i32, ptr %"R22"
  %"add.170" = add i32 %".3538", 4
  %"add.171" = add i32 %"add.170", 0
  store i32 %"add.171", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".3541" = load i32, ptr %"R12"
  %".3542" = load i1, ptr %"PT"
  %"cmp.31" = icmp ne i32 %".3541", 0
  %".3543" = and i1 %"cmp.31", %".3542"
  store i1 %".3543", ptr %"P0"
  ; FFMA R35, R35, R24, R44
  %".3546" = load float, ptr %"R35"
  %".3547" = load float, ptr %"R24"
  %".3548" = load float, ptr %"R44"
  %"fmul.148" = fmul float %".3546", %".3547"
  %"fadd.123" = fadd float %"fmul.148", %".3548"
  %".3549" = bitcast ptr %"R35" to ptr
  store float %"fadd.123", ptr %".3549"
  ; FFMA R37, R24.reuse, R37, R56
  %".3552" = load float, ptr %"R24"
  %".3553" = load float, ptr %"R37"
  %".3554" = load float, ptr %"R56"
  %"fmul.149" = fmul float %".3552", %".3553"
  %"fadd.124" = fadd float %"fmul.149", %".3554"
  %".3555" = bitcast ptr %"R37" to ptr
  store float %"fadd.124", ptr %".3555"
  ; FFMA R34, R24, R34, R21
  %".3558" = load float, ptr %"R24"
  %".3559" = load float, ptr %"R34"
  %".3560" = load float, ptr %"R21"
  %"fmul.150" = fmul float %".3558", %".3559"
  %"fadd.125" = fadd float %"fmul.150", %".3560"
  %".3561" = bitcast ptr %"R34" to ptr
  store float %"fadd.125", ptr %".3561"
  ; FFMA R35, R36, R38, R35
  %".3564" = load float, ptr %"R36"
  %".3565" = load float, ptr %"R38"
  %".3566" = load float, ptr %"R35"
  %"fmul.151" = fmul float %".3564", %".3565"
  %"fadd.126" = fadd float %"fmul.151", %".3566"
  %".3567" = bitcast ptr %"R35" to ptr
  store float %"fadd.126", ptr %".3567"
  ; FFMA R37, R38, R39, R37
  %".3570" = load float, ptr %"R38"
  %".3571" = load float, ptr %"R39"
  %".3572" = load float, ptr %"R37"
  %"fmul.152" = fmul float %".3570", %".3571"
  %"fadd.127" = fadd float %"fmul.152", %".3572"
  %".3573" = bitcast ptr %"R37" to ptr
  store float %"fadd.127", ptr %".3573"
  ; FFMA R34, R38, R41, R34
  %".3576" = load float, ptr %"R38"
  %".3577" = load float, ptr %"R41"
  %".3578" = load float, ptr %"R34"
  %"fmul.153" = fmul float %".3576", %".3577"
  %"fadd.128" = fadd float %"fmul.153", %".3578"
  %".3579" = bitcast ptr %"R34" to ptr
  store float %"fadd.128", ptr %".3579"
  ; FFMA R35, R40, R42, R35
  %".3582" = load float, ptr %"R40"
  %".3583" = load float, ptr %"R42"
  %".3584" = load float, ptr %"R35"
  %"fmul.154" = fmul float %".3582", %".3583"
  %"fadd.129" = fadd float %"fmul.154", %".3584"
  %".3585" = bitcast ptr %"R35" to ptr
  store float %"fadd.129", ptr %".3585"
  ; FFMA R37, R42.reuse, R43, R37
  %".3588" = load float, ptr %"R42"
  %".3589" = load float, ptr %"R43"
  %".3590" = load float, ptr %"R37"
  %"fmul.155" = fmul float %".3588", %".3589"
  %"fadd.130" = fadd float %"fmul.155", %".3590"
  %".3591" = bitcast ptr %"R37" to ptr
  store float %"fadd.130", ptr %".3591"
  ; FFMA R34, R42, R45, R34
  %".3594" = load float, ptr %"R42"
  %".3595" = load float, ptr %"R45"
  %".3596" = load float, ptr %"R34"
  %"fmul.156" = fmul float %".3594", %".3595"
  %"fadd.131" = fadd float %"fmul.156", %".3596"
  %".3597" = bitcast ptr %"R34" to ptr
  store float %"fadd.131", ptr %".3597"
  ; FFMA R44, R46, R47, R35
  %".3600" = load float, ptr %"R46"
  %".3601" = load float, ptr %"R47"
  %".3602" = load float, ptr %"R35"
  %"fmul.157" = fmul float %".3600", %".3601"
  %"fadd.132" = fadd float %"fmul.157", %".3602"
  %".3603" = bitcast ptr %"R44" to ptr
  store float %"fadd.132", ptr %".3603"
  ; FFMA R56, R47, R50, R37
  %".3606" = load float, ptr %"R47"
  %".3607" = load float, ptr %"R50"
  %".3608" = load float, ptr %"R37"
  %"fmul.158" = fmul float %".3606", %".3607"
  %"fadd.133" = fadd float %"fmul.158", %".3608"
  %".3609" = bitcast ptr %"R56" to ptr
  store float %"fadd.133", ptr %".3609"
  ; FFMA R21, R47, R51, R34
  %".3612" = load float, ptr %"R47"
  %".3613" = load float, ptr %"R51"
  %".3614" = load float, ptr %"R34"
  %"fmul.159" = fmul float %".3612", %".3613"
  %"fadd.134" = fadd float %"fmul.159", %".3614"
  %".3615" = bitcast ptr %"R21" to ptr
  store float %"fadd.134", ptr %".3615"
  ; @P0 BRA `(.L_x_24)
  %".3618" = load i1, ptr %"P0"
  %".3619" = icmp ne i1 %".3618", 1
  br i1 %".3619", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".3622" = load i1, ptr %"P1"
  %".3623" = icmp eq i1 %".3622", 1
  br i1 %".3623", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  %".3628" = load i32, ptr %"R14"
  %".3629" = load i32, ptr %"R22"
  %"mul.57" = mul i32 %".3628", %"Arg_6"
  %"add.172" = add i32 %"mul.57", %".3629"
  store i32 %"add.172", ptr %"R7"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R10"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".3634" = load i32, ptr %"R13"
  %".3635" = load i32, ptr %"R22"
  %"mul.58" = mul i32 %".3634", %"Arg_6"
  %"add.173" = add i32 %"mul.58", %".3635"
  store i32 %"add.173", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".3640" = load i32, ptr %"R7"
  %".3641" = load i32, ptr %"R11"
  %"mul.59" = mul i32 %".3640", %".3641"
  %"add.174" = add i32 %"mul.59", %"Arg_4"
  store i32 %"add.174", ptr %"R4"
  ; LEA R10, R10, R7, 0x1
  %".3644" = load i32, ptr %"R10"
  %".3645" = load i32, ptr %"R7"
  %"shl.191" = shl i32 %".3644", 1
  %"add.175" = add i32 %"shl.191", %".3645"
  store i32 %"add.175", ptr %"R10"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".3648" = load i32, ptr %"R6"
  %".3649" = load i32, ptr %"R11"
  %"mul.60" = mul i32 %".3648", %".3649"
  %"add.176" = add i32 %"mul.60", %"Arg_2"
  store i32 %"add.176", ptr %"R6"
  ; LEA R8, P0, R9, R4, 0x2
  %".3652" = load i1, ptr %"P0"
  %".3653" = sub i1 0, %".3652"
  %".3654" = load i32, ptr %"R9"
  %".3655" = load i32, ptr %"R4"
  %".3656" = sext i1 %".3653" to i32
  %"shl.192" = shl i32 %".3656", %".3655"
  %"add.177" = add i32 %"shl.192", %".3654"
  store i32 %"add.177", ptr %"R8"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".3659" = load i32, ptr %"R10"
  %".3660" = load i32, ptr %"R11"
  %"mul.61" = mul i32 %".3659", %".3660"
  %"add.178" = add i32 %"mul.61", %"Arg_4"
  store i32 %"add.178", ptr %"R10"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".3663" = load i32, ptr %"R9"
  %".3664" = load i32, ptr %"R5"
  %".3665" = load i32, ptr %"R16"
  %"shl.193" = shl i32 %".3663", %".3665"
  %"add.179" = add i32 %"shl.193", %".3664"
  store i32 %"add.179", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".3668" = load i32, ptr %"R4"
  %"zext.364" = zext i32 %".3668" to i64
  %".3669" = load i32, ptr %"R5"
  %"zext.365" = zext i32 %".3669" to i64
  %"shl.194" = shl i64 %"zext.365", 32
  %"or.180" = or i64 %"shl.194", %"zext.364"
  %".3670" = inttoptr i64 %"or.180" to ptr
  %".3671" = ptrtoint ptr %".3670" to i64
  %".3672" = add i64 %".3671", 0
  %"for_LDG.175" = inttoptr i64 %".3672" to ptr
  %".3673" = load float, ptr %"for_LDG.175"
  %".3674" = bitcast ptr %"R13" to ptr
  store float %".3673", ptr %".3674"
  ; LDG.E.SYS R12, [R6]
  %".3677" = load i32, ptr %"R6"
  %"zext.366" = zext i32 %".3677" to i64
  %".3678" = load i32, ptr %"R7"
  %"zext.367" = zext i32 %".3678" to i64
  %"shl.195" = shl i64 %"zext.367", 32
  %"or.181" = or i64 %"shl.195", %"zext.366"
  %".3679" = inttoptr i64 %"or.181" to ptr
  %".3680" = ptrtoint ptr %".3679" to i64
  %".3681" = add i64 %".3680", 0
  %"for_LDG.176" = inttoptr i64 %".3681" to ptr
  %".3682" = load float, ptr %"for_LDG.176"
  %".3683" = bitcast ptr %"R12" to ptr
  store float %".3682", ptr %".3683"
  ; LDG.E.SYS R23, [R8]
  %".3686" = load i32, ptr %"R8"
  %"zext.368" = zext i32 %".3686" to i64
  %".3687" = load i32, ptr %"R9"
  %"zext.369" = zext i32 %".3687" to i64
  %"shl.196" = shl i64 %"zext.369", 32
  %"or.182" = or i64 %"shl.196", %"zext.368"
  %".3688" = inttoptr i64 %"or.182" to ptr
  %".3689" = ptrtoint ptr %".3688" to i64
  %".3690" = add i64 %".3689", 0
  %"for_LDG.177" = inttoptr i64 %".3690" to ptr
  %".3691" = load float, ptr %"for_LDG.177"
  %".3692" = bitcast ptr %"R23" to ptr
  store float %".3691", ptr %".3692"
  ; LDG.E.SYS R22, [R10]
  %".3695" = load i32, ptr %"R10"
  %"zext.370" = zext i32 %".3695" to i64
  %".3696" = load i32, ptr %"R11"
  %"zext.371" = zext i32 %".3696" to i64
  %"shl.197" = shl i64 %"zext.371", 32
  %"or.183" = or i64 %"shl.197", %"zext.370"
  %".3697" = inttoptr i64 %"or.183" to ptr
  %".3698" = ptrtoint ptr %".3697" to i64
  %".3699" = add i64 %".3698", 0
  %"for_LDG.178" = inttoptr i64 %".3699" to ptr
  %".3700" = load float, ptr %"for_LDG.178"
  %".3701" = bitcast ptr %"R22" to ptr
  store float %".3700", ptr %".3701"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".3704" = load i32, ptr %"R15"
  %".3705" = load i1, ptr %"PT"
  %"cmp.32" = icmp ne i32 %".3704", 1
  %".3706" = and i1 %"cmp.32", %".3705"
  store i1 %".3706", ptr %"P0"
  ; FFMA R44, R13, R12, R44
  %".3709" = load float, ptr %"R13"
  %".3710" = load float, ptr %"R12"
  %".3711" = load float, ptr %"R44"
  %"fmul.160" = fmul float %".3709", %".3710"
  %"fadd.135" = fadd float %"fmul.160", %".3711"
  %".3712" = bitcast ptr %"R44" to ptr
  store float %"fadd.135", ptr %".3712"
  ; FFMA R56, R12.reuse, R23, R56
  %".3715" = load float, ptr %"R12"
  %".3716" = load float, ptr %"R23"
  %".3717" = load float, ptr %"R56"
  %"fmul.161" = fmul float %".3715", %".3716"
  %"fadd.136" = fadd float %"fmul.161", %".3717"
  %".3718" = bitcast ptr %"R56" to ptr
  store float %"fadd.136", ptr %".3718"
  ; FFMA R21, R12, R22, R21
  %".3721" = load float, ptr %"R12"
  %".3722" = load float, ptr %"R22"
  %".3723" = load float, ptr %"R21"
  %"fmul.162" = fmul float %".3721", %".3722"
  %"fadd.137" = fadd float %"fmul.162", %".3723"
  %".3724" = bitcast ptr %"R21" to ptr
  store float %"fadd.137", ptr %".3724"
  ; @!P0 BRA `(.L_x_25)
  %".3727" = load i1, ptr %"P0"
  %".3728" = icmp eq i1 %".3727", 1
  br i1 %".3728", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".3731" = load i32, ptr %"R15"
  %".3732" = load i1, ptr %"PT"
  %"cmp.33" = icmp ne i32 %".3731", 2
  %".3733" = and i1 %"cmp.33", %".3732"
  store i1 %".3733", ptr %"P0"
  ; LDG.E.SYS R13, [R4+0x4]
  %".3736" = load i32, ptr %"R4"
  %"zext.372" = zext i32 %".3736" to i64
  %".3737" = load i32, ptr %"R5"
  %"zext.373" = zext i32 %".3737" to i64
  %"shl.198" = shl i64 %"zext.373", 32
  %"or.184" = or i64 %"shl.198", %"zext.372"
  %".3738" = inttoptr i64 %"or.184" to ptr
  %".3739" = ptrtoint ptr %".3738" to i64
  %".3740" = add i64 %".3739", 4
  %"for_LDG.179" = inttoptr i64 %".3740" to ptr
  %".3741" = load float, ptr %"for_LDG.179"
  %".3742" = bitcast ptr %"R13" to ptr
  store float %".3741", ptr %".3742"
  ; LDG.E.SYS R12, [R6+0x4]
  %".3745" = load i32, ptr %"R6"
  %"zext.374" = zext i32 %".3745" to i64
  %".3746" = load i32, ptr %"R7"
  %"zext.375" = zext i32 %".3746" to i64
  %"shl.199" = shl i64 %"zext.375", 32
  %"or.185" = or i64 %"shl.199", %"zext.374"
  %".3747" = inttoptr i64 %"or.185" to ptr
  %".3748" = ptrtoint ptr %".3747" to i64
  %".3749" = add i64 %".3748", 4
  %"for_LDG.180" = inttoptr i64 %".3749" to ptr
  %".3750" = load float, ptr %"for_LDG.180"
  %".3751" = bitcast ptr %"R12" to ptr
  store float %".3750", ptr %".3751"
  ; LDG.E.SYS R23, [R8+0x4]
  %".3754" = load i32, ptr %"R8"
  %"zext.376" = zext i32 %".3754" to i64
  %".3755" = load i32, ptr %"R9"
  %"zext.377" = zext i32 %".3755" to i64
  %"shl.200" = shl i64 %"zext.377", 32
  %"or.186" = or i64 %"shl.200", %"zext.376"
  %".3756" = inttoptr i64 %"or.186" to ptr
  %".3757" = ptrtoint ptr %".3756" to i64
  %".3758" = add i64 %".3757", 4
  %"for_LDG.181" = inttoptr i64 %".3758" to ptr
  %".3759" = load float, ptr %"for_LDG.181"
  %".3760" = bitcast ptr %"R23" to ptr
  store float %".3759", ptr %".3760"
  ; LDG.E.SYS R22, [R10+0x4]
  %".3763" = load i32, ptr %"R10"
  %"zext.378" = zext i32 %".3763" to i64
  %".3764" = load i32, ptr %"R11"
  %"zext.379" = zext i32 %".3764" to i64
  %"shl.201" = shl i64 %"zext.379", 32
  %"or.187" = or i64 %"shl.201", %"zext.378"
  %".3765" = inttoptr i64 %"or.187" to ptr
  %".3766" = ptrtoint ptr %".3765" to i64
  %".3767" = add i64 %".3766", 4
  %"for_LDG.182" = inttoptr i64 %".3767" to ptr
  %".3768" = load float, ptr %"for_LDG.182"
  %".3769" = bitcast ptr %"R22" to ptr
  store float %".3768", ptr %".3769"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".3772" = load i1, ptr %"P0"
  %".3773" = icmp ne i1 %".3772", 1
  br i1 %".3773", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  %".3776" = load i32, ptr %"R4"
  %"zext.380" = zext i32 %".3776" to i64
  %".3777" = load i32, ptr %"R5"
  %"zext.381" = zext i32 %".3777" to i64
  %"shl.202" = shl i64 %"zext.381", 32
  %"or.188" = or i64 %"shl.202", %"zext.380"
  %".3778" = inttoptr i64 %"or.188" to ptr
  %".3779" = ptrtoint ptr %".3778" to i64
  %".3780" = add i64 %".3779", 8
  %"for_LDG.183" = inttoptr i64 %".3780" to ptr
  %".3781" = load float, ptr %"for_LDG.183"
  %".3782" = bitcast ptr %"R25" to ptr
  store float %".3781", ptr %".3782"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".3787" = load i1, ptr %"P0"
  %".3788" = icmp ne i1 %".3787", 1
  br i1 %".3788", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  %".3791" = load i32, ptr %"R6"
  %"zext.382" = zext i32 %".3791" to i64
  %".3792" = load i32, ptr %"R7"
  %"zext.383" = zext i32 %".3792" to i64
  %"shl.203" = shl i64 %"zext.383", 32
  %"or.189" = or i64 %"shl.203", %"zext.382"
  %".3793" = inttoptr i64 %"or.189" to ptr
  %".3794" = ptrtoint ptr %".3793" to i64
  %".3795" = add i64 %".3794", 8
  %"for_LDG.184" = inttoptr i64 %".3795" to ptr
  %".3796" = load float, ptr %"for_LDG.184"
  %".3797" = bitcast ptr %"R24" to ptr
  store float %".3796", ptr %".3797"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".3802" = load i1, ptr %"P0"
  %".3803" = icmp ne i1 %".3802", 1
  br i1 %".3803", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  %".3806" = load i32, ptr %"R8"
  %"zext.384" = zext i32 %".3806" to i64
  %".3807" = load i32, ptr %"R9"
  %"zext.385" = zext i32 %".3807" to i64
  %"shl.204" = shl i64 %"zext.385", 32
  %"or.190" = or i64 %"shl.204", %"zext.384"
  %".3808" = inttoptr i64 %"or.190" to ptr
  %".3809" = ptrtoint ptr %".3808" to i64
  %".3810" = add i64 %".3809", 8
  %"for_LDG.185" = inttoptr i64 %".3810" to ptr
  %".3811" = load float, ptr %"for_LDG.185"
  %".3812" = bitcast ptr %"R35" to ptr
  store float %".3811", ptr %".3812"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".3817" = load i1, ptr %"P0"
  %".3818" = icmp ne i1 %".3817", 1
  br i1 %".3818", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  %".3821" = load i32, ptr %"R10"
  %"zext.386" = zext i32 %".3821" to i64
  %".3822" = load i32, ptr %"R11"
  %"zext.387" = zext i32 %".3822" to i64
  %"shl.205" = shl i64 %"zext.387", 32
  %"or.191" = or i64 %"shl.205", %"zext.386"
  %".3823" = inttoptr i64 %"or.191" to ptr
  %".3824" = ptrtoint ptr %".3823" to i64
  %".3825" = add i64 %".3824", 8
  %"for_LDG.186" = inttoptr i64 %".3825" to ptr
  %".3826" = load float, ptr %"for_LDG.186"
  %".3827" = bitcast ptr %"R34" to ptr
  store float %".3826", ptr %".3827"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".3832" = load float, ptr %"R13"
  %".3833" = load float, ptr %"R12"
  %".3834" = load float, ptr %"R44"
  %"fmul.163" = fmul float %".3832", %".3833"
  %"fadd.138" = fadd float %"fmul.163", %".3834"
  %".3835" = bitcast ptr %"R44" to ptr
  store float %"fadd.138", ptr %".3835"
  ; FFMA R56, R12.reuse, R23, R56
  %".3838" = load float, ptr %"R12"
  %".3839" = load float, ptr %"R23"
  %".3840" = load float, ptr %"R56"
  %"fmul.164" = fmul float %".3838", %".3839"
  %"fadd.139" = fadd float %"fmul.164", %".3840"
  %".3841" = bitcast ptr %"R56" to ptr
  store float %"fadd.139", ptr %".3841"
  ; FFMA R21, R12, R22, R21
  %".3844" = load float, ptr %"R12"
  %".3845" = load float, ptr %"R22"
  %".3846" = load float, ptr %"R21"
  %"fmul.165" = fmul float %".3844", %".3845"
  %"fadd.140" = fadd float %"fmul.165", %".3846"
  %".3847" = bitcast ptr %"R21" to ptr
  store float %"fadd.140", ptr %".3847"
  ; @P0 FFMA R44, R25, R24, R44
  %".3850" = load i1, ptr %"P0"
  %".3851" = icmp ne i1 %".3850", 1
  br i1 %".3851", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".3854" = load float, ptr %"R25"
  %".3855" = load float, ptr %"R24"
  %".3856" = load float, ptr %"R44"
  %"fmul.166" = fmul float %".3854", %".3855"
  %"fadd.141" = fadd float %"fmul.166", %".3856"
  %".3857" = bitcast ptr %"R44" to ptr
  store float %"fadd.141", ptr %".3857"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".3862" = load i1, ptr %"P0"
  %".3863" = icmp ne i1 %".3862", 1
  br i1 %".3863", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".3866" = load float, ptr %"R24"
  %".3867" = load float, ptr %"R35"
  %".3868" = load float, ptr %"R56"
  %"fmul.167" = fmul float %".3866", %".3867"
  %"fadd.142" = fadd float %"fmul.167", %".3868"
  %".3869" = bitcast ptr %"R56" to ptr
  store float %"fadd.142", ptr %".3869"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".3874" = load i1, ptr %"P0"
  %".3875" = icmp ne i1 %".3874", 1
  br i1 %".3875", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".3878" = load float, ptr %"R24"
  %".3879" = load float, ptr %"R34"
  %".3880" = load float, ptr %"R21"
  %"fmul.168" = fmul float %".3878", %".3879"
  %"fadd.143" = fadd float %"fmul.168", %".3880"
  %".3881" = bitcast ptr %"R21" to ptr
  store float %"fadd.143", ptr %".3881"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".3886" = load i1, ptr %"P4"
  %".3887" = icmp eq i1 %".3886", 1
  br i1 %".3887", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".3890" = load i32, ptr %"R18"
  %".3891" = load i1, ptr %"PT"
  %"cmp.34" = icmp sge i32 %".3890", 3
  %".3892" = and i1 %"cmp.34", %".3891"
  store i1 %".3892", ptr %"P0"
  ; MOV R23, RZ
  %".3895" = load i32, ptr %"RZ"
  store i32 %".3895", ptr %"R23"
  ; @!P0 BRA `(.L_x_27)
  %".3898" = load i1, ptr %"P0"
  %".3899" = icmp eq i1 %".3898", 1
  br i1 %".3899", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".3902" = load i32, ptr %"R20"
  %".3903" = load i1, ptr %"PT"
  %"cmp.35" = icmp sgt i32 %".3902", 0
  %".3904" = and i1 %"cmp.35", %".3903"
  store i1 %".3904", ptr %"P0"
  ; MOV R23, RZ
  %".3907" = load i32, ptr %"RZ"
  store i32 %".3907", ptr %"R23"
  ; MOV R22, R20
  %".3910" = load i32, ptr %"R20"
  store i32 %".3910", ptr %"R22"
  ; @!P0 BRA `(.L_x_28)
  %".3913" = load i1, ptr %"P0"
  %".3914" = icmp eq i1 %".3913", 1
  br i1 %".3914", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".3917" = load i32, ptr %"R22"
  %".3918" = load i1, ptr %"PT"
  %"cmp.36" = icmp sgt i32 %".3917", 12
  %".3919" = and i1 %"cmp.36", %".3918"
  store i1 %".3919", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".3922" = and i1 1, 1
  %".3923" = or i1 %".3922", 1
  ; @!P1 BRA `(.L_x_29)
  %".3925" = load i1, ptr %"P1"
  %".3926" = icmp eq i1 %".3925", 1
  br i1 %".3926", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3929" = xor i1 1, 1
  %".3930" = and i1 %".3929", 1
  %".3931" = and i1 %".3930", 1
  br label %".L_x_30"
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".3934" = load i32, ptr %"R0"
  %".3935" = load i32, ptr %"R23"
  %"add.180" = add i32 %".3934", %".3935"
  %"add.181" = add i32 %"add.180", 0
  store i32 %"add.181", ptr %"R25"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".3940" = load i32, ptr %"R2"
  %".3941" = load i32, ptr %"R25"
  %"mul.62" = mul i32 %".3940", 3
  %"add.182" = add i32 %"mul.62", %".3941"
  store i32 %"add.182", ptr %"R35"
  ; LEA R25, R2, R25, 0x2
  %".3944" = load i32, ptr %"R2"
  %".3945" = load i32, ptr %"R25"
  %"shl.206" = shl i32 %".3944", 2
  %"add.183" = add i32 %"shl.206", %".3945"
  store i32 %"add.183", ptr %"R25"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".3948" = load i32, ptr %"R23"
  %".3949" = load i32, ptr %"R24"
  %"mul.63" = mul i32 %".3948", %".3949"
  %"add.184" = add i32 %"mul.63", %"Arg_3"
  store i32 %"add.184", ptr %"R36"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".3952" = load i32, ptr %"R35"
  %".3953" = load i32, ptr %"R24"
  %"mul.64" = mul i32 %".3952", %".3953"
  %"add.185" = add i32 %"mul.64", %"Arg_4"
  store i32 %"add.185", ptr %"R8"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".3956" = load i32, ptr %"R25"
  %".3957" = load i32, ptr %"R24"
  %"mul.65" = mul i32 %".3956", %".3957"
  %"add.186" = add i32 %"mul.65", %"Arg_4"
  store i32 %"add.186", ptr %"R12"
  ; LDG.E.SYS R39, [R36]
  %".3960" = load i32, ptr %"R36"
  %"zext.388" = zext i32 %".3960" to i64
  %".3961" = load i32, ptr %"R37"
  %"zext.389" = zext i32 %".3961" to i64
  %"shl.207" = shl i64 %"zext.389", 32
  %"or.192" = or i64 %"shl.207", %"zext.388"
  %".3962" = inttoptr i64 %"or.192" to ptr
  %".3963" = ptrtoint ptr %".3962" to i64
  %".3964" = add i64 %".3963", 0
  %"for_LDG.187" = inttoptr i64 %".3964" to ptr
  %".3965" = load float, ptr %"for_LDG.187"
  %".3966" = bitcast ptr %"R39" to ptr
  store float %".3965", ptr %".3966"
  ; LDG.E.SYS R41, [R8]
  %".3969" = load i32, ptr %"R8"
  %"zext.390" = zext i32 %".3969" to i64
  %".3970" = load i32, ptr %"R9"
  %"zext.391" = zext i32 %".3970" to i64
  %"shl.208" = shl i64 %"zext.391", 32
  %"or.193" = or i64 %"shl.208", %"zext.390"
  %".3971" = inttoptr i64 %"or.193" to ptr
  %".3972" = ptrtoint ptr %".3971" to i64
  %".3973" = add i64 %".3972", 0
  %"for_LDG.188" = inttoptr i64 %".3973" to ptr
  %".3974" = load float, ptr %"for_LDG.188"
  %".3975" = bitcast ptr %"R41" to ptr
  store float %".3974", ptr %".3975"
  ; LDG.E.SYS R40, [R12]
  %".3978" = load i32, ptr %"R12"
  %"zext.392" = zext i32 %".3978" to i64
  %".3979" = load i32, ptr %"R13"
  %"zext.393" = zext i32 %".3979" to i64
  %"shl.209" = shl i64 %"zext.393", 32
  %"or.194" = or i64 %"shl.209", %"zext.392"
  %".3980" = inttoptr i64 %"or.194" to ptr
  %".3981" = ptrtoint ptr %".3980" to i64
  %".3982" = add i64 %".3981", 0
  %"for_LDG.189" = inttoptr i64 %".3982" to ptr
  %".3983" = load float, ptr %"for_LDG.189"
  %".3984" = bitcast ptr %"R40" to ptr
  store float %".3983", ptr %".3984"
  ; LDG.E.SYS R52, [R36+0x4]
  %".3987" = load i32, ptr %"R36"
  %"zext.394" = zext i32 %".3987" to i64
  %".3988" = load i32, ptr %"R37"
  %"zext.395" = zext i32 %".3988" to i64
  %"shl.210" = shl i64 %"zext.395", 32
  %"or.195" = or i64 %"shl.210", %"zext.394"
  %".3989" = inttoptr i64 %"or.195" to ptr
  %".3990" = ptrtoint ptr %".3989" to i64
  %".3991" = add i64 %".3990", 4
  %"for_LDG.190" = inttoptr i64 %".3991" to ptr
  %".3992" = load float, ptr %"for_LDG.190"
  %".3993" = bitcast ptr %"R52" to ptr
  store float %".3992", ptr %".3993"
  ; LDG.E.SYS R53, [R8+0x4]
  %".3996" = load i32, ptr %"R8"
  %"zext.396" = zext i32 %".3996" to i64
  %".3997" = load i32, ptr %"R9"
  %"zext.397" = zext i32 %".3997" to i64
  %"shl.211" = shl i64 %"zext.397", 32
  %"or.196" = or i64 %"shl.211", %"zext.396"
  %".3998" = inttoptr i64 %"or.196" to ptr
  %".3999" = ptrtoint ptr %".3998" to i64
  %".4000" = add i64 %".3999", 4
  %"for_LDG.191" = inttoptr i64 %".4000" to ptr
  %".4001" = load float, ptr %"for_LDG.191"
  %".4002" = bitcast ptr %"R53" to ptr
  store float %".4001", ptr %".4002"
  ; LDG.E.SYS R55, [R12+0x4]
  %".4005" = load i32, ptr %"R12"
  %"zext.398" = zext i32 %".4005" to i64
  %".4006" = load i32, ptr %"R13"
  %"zext.399" = zext i32 %".4006" to i64
  %"shl.212" = shl i64 %"zext.399", 32
  %"or.197" = or i64 %"shl.212", %"zext.398"
  %".4007" = inttoptr i64 %"or.197" to ptr
  %".4008" = ptrtoint ptr %".4007" to i64
  %".4009" = add i64 %".4008", 4
  %"for_LDG.192" = inttoptr i64 %".4009" to ptr
  %".4010" = load float, ptr %"for_LDG.192"
  %".4011" = bitcast ptr %"R55" to ptr
  store float %".4010", ptr %".4011"
  ; IADD3 R11, R23, 0x4, RZ
  %".4014" = load i32, ptr %"R23"
  %"add.187" = add i32 %".4014", 4
  %"add.188" = add i32 %"add.187", 0
  store i32 %"add.188", ptr %"R11"
  ; LDG.E.SYS R50, [R36+0x8]
  %".4017" = load i32, ptr %"R36"
  %"zext.400" = zext i32 %".4017" to i64
  %".4018" = load i32, ptr %"R37"
  %"zext.401" = zext i32 %".4018" to i64
  %"shl.213" = shl i64 %"zext.401", 32
  %"or.198" = or i64 %"shl.213", %"zext.400"
  %".4019" = inttoptr i64 %"or.198" to ptr
  %".4020" = ptrtoint ptr %".4019" to i64
  %".4021" = add i64 %".4020", 8
  %"for_LDG.193" = inttoptr i64 %".4021" to ptr
  %".4022" = load float, ptr %"for_LDG.193"
  %".4023" = bitcast ptr %"R50" to ptr
  store float %".4022", ptr %".4023"
  ; IADD3 R7, R35, 0x4, RZ
  %".4026" = load i32, ptr %"R35"
  %"add.189" = add i32 %".4026", 4
  %"add.190" = add i32 %"add.189", 0
  store i32 %"add.190", ptr %"R7"
  ; LDG.E.SYS R43, [R8+0x8]
  %".4029" = load i32, ptr %"R8"
  %"zext.402" = zext i32 %".4029" to i64
  %".4030" = load i32, ptr %"R9"
  %"zext.403" = zext i32 %".4030" to i64
  %"shl.214" = shl i64 %"zext.403", 32
  %"or.199" = or i64 %"shl.214", %"zext.402"
  %".4031" = inttoptr i64 %"or.199" to ptr
  %".4032" = ptrtoint ptr %".4031" to i64
  %".4033" = add i64 %".4032", 8
  %"for_LDG.194" = inttoptr i64 %".4033" to ptr
  %".4034" = load float, ptr %"for_LDG.194"
  %".4035" = bitcast ptr %"R43" to ptr
  store float %".4034", ptr %".4035"
  ; IADD3 R5, R25, 0x4, RZ
  %".4038" = load i32, ptr %"R25"
  %"add.191" = add i32 %".4038", 4
  %"add.192" = add i32 %"add.191", 0
  store i32 %"add.192", ptr %"R5"
  ; LDG.E.SYS R51, [R12+0x8]
  %".4041" = load i32, ptr %"R12"
  %"zext.404" = zext i32 %".4041" to i64
  %".4042" = load i32, ptr %"R13"
  %"zext.405" = zext i32 %".4042" to i64
  %"shl.215" = shl i64 %"zext.405", 32
  %"or.200" = or i64 %"shl.215", %"zext.404"
  %".4043" = inttoptr i64 %"or.200" to ptr
  %".4044" = ptrtoint ptr %".4043" to i64
  %".4045" = add i64 %".4044", 8
  %"for_LDG.195" = inttoptr i64 %".4045" to ptr
  %".4046" = load float, ptr %"for_LDG.195"
  %".4047" = bitcast ptr %"R51" to ptr
  store float %".4046", ptr %".4047"
  ; LDG.E.SYS R47, [R36+0xc]
  %".4050" = load i32, ptr %"R36"
  %"zext.406" = zext i32 %".4050" to i64
  %".4051" = load i32, ptr %"R37"
  %"zext.407" = zext i32 %".4051" to i64
  %"shl.216" = shl i64 %"zext.407", 32
  %"or.201" = or i64 %"shl.216", %"zext.406"
  %".4052" = inttoptr i64 %"or.201" to ptr
  %".4053" = ptrtoint ptr %".4052" to i64
  %".4054" = add i64 %".4053", 12
  %"for_LDG.196" = inttoptr i64 %".4054" to ptr
  %".4055" = load float, ptr %"for_LDG.196"
  %".4056" = bitcast ptr %"R47" to ptr
  store float %".4055", ptr %".4056"
  ; LDG.E.SYS R54, [R8+0xc]
  %".4059" = load i32, ptr %"R8"
  %"zext.408" = zext i32 %".4059" to i64
  %".4060" = load i32, ptr %"R9"
  %"zext.409" = zext i32 %".4060" to i64
  %"shl.217" = shl i64 %"zext.409", 32
  %"or.202" = or i64 %"shl.217", %"zext.408"
  %".4061" = inttoptr i64 %"or.202" to ptr
  %".4062" = ptrtoint ptr %".4061" to i64
  %".4063" = add i64 %".4062", 12
  %"for_LDG.197" = inttoptr i64 %".4063" to ptr
  %".4064" = load float, ptr %"for_LDG.197"
  %".4065" = bitcast ptr %"R54" to ptr
  store float %".4064", ptr %".4065"
  ; LDG.E.SYS R58, [R12+0xc]
  %".4068" = load i32, ptr %"R12"
  %"zext.410" = zext i32 %".4068" to i64
  %".4069" = load i32, ptr %"R13"
  %"zext.411" = zext i32 %".4069" to i64
  %"shl.218" = shl i64 %"zext.411", 32
  %"or.203" = or i64 %"shl.218", %"zext.410"
  %".4070" = inttoptr i64 %"or.203" to ptr
  %".4071" = ptrtoint ptr %".4070" to i64
  %".4072" = add i64 %".4071", 12
  %"for_LDG.198" = inttoptr i64 %".4072" to ptr
  %".4073" = load float, ptr %"for_LDG.198"
  %".4074" = bitcast ptr %"R58" to ptr
  store float %".4073", ptr %".4074"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".4077" = load i32, ptr %"R11"
  %".4078" = load i32, ptr %"R24"
  %"mul.66" = mul i32 %".4077", %".4078"
  %"add.193" = add i32 %"mul.66", %"Arg_3"
  store i32 %"add.193", ptr %"R10"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".4081" = load i32, ptr %"R7"
  %".4082" = load i32, ptr %"R24"
  %"mul.67" = mul i32 %".4081", %".4082"
  %"add.194" = add i32 %"mul.67", %"Arg_4"
  store i32 %"add.194", ptr %"R6"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".4085" = load i32, ptr %"R5"
  %".4086" = load i32, ptr %"R24"
  %"mul.68" = mul i32 %".4085", %".4086"
  %"add.195" = add i32 %"mul.68", %"Arg_4"
  store i32 %"add.195", ptr %"R4"
  ; LDG.E.SYS R46, [R10]
  %".4089" = load i32, ptr %"R10"
  %"zext.412" = zext i32 %".4089" to i64
  %".4090" = load i32, ptr %"R11"
  %"zext.413" = zext i32 %".4090" to i64
  %"shl.219" = shl i64 %"zext.413", 32
  %"or.204" = or i64 %"shl.219", %"zext.412"
  %".4091" = inttoptr i64 %"or.204" to ptr
  %".4092" = ptrtoint ptr %".4091" to i64
  %".4093" = add i64 %".4092", 0
  %"for_LDG.199" = inttoptr i64 %".4093" to ptr
  %".4094" = load float, ptr %"for_LDG.199"
  %".4095" = bitcast ptr %"R46" to ptr
  store float %".4094", ptr %".4095"
  ; LDG.E.SYS R42, [R6]
  %".4098" = load i32, ptr %"R6"
  %"zext.414" = zext i32 %".4098" to i64
  %".4099" = load i32, ptr %"R7"
  %"zext.415" = zext i32 %".4099" to i64
  %"shl.220" = shl i64 %"zext.415", 32
  %"or.205" = or i64 %"shl.220", %"zext.414"
  %".4100" = inttoptr i64 %"or.205" to ptr
  %".4101" = ptrtoint ptr %".4100" to i64
  %".4102" = add i64 %".4101", 0
  %"for_LDG.200" = inttoptr i64 %".4102" to ptr
  %".4103" = load float, ptr %"for_LDG.200"
  %".4104" = bitcast ptr %"R42" to ptr
  store float %".4103", ptr %".4104"
  ; LDG.E.SYS R45, [R4]
  %".4107" = load i32, ptr %"R4"
  %"zext.416" = zext i32 %".4107" to i64
  %".4108" = load i32, ptr %"R5"
  %"zext.417" = zext i32 %".4108" to i64
  %"shl.221" = shl i64 %"zext.417", 32
  %"or.206" = or i64 %"shl.221", %"zext.416"
  %".4109" = inttoptr i64 %"or.206" to ptr
  %".4110" = ptrtoint ptr %".4109" to i64
  %".4111" = add i64 %".4110", 0
  %"for_LDG.201" = inttoptr i64 %".4111" to ptr
  %".4112" = load float, ptr %"for_LDG.201"
  %".4113" = bitcast ptr %"R45" to ptr
  store float %".4112", ptr %".4113"
  ; LDG.E.SYS R34, [R10+0x4]
  %".4116" = load i32, ptr %"R10"
  %"zext.418" = zext i32 %".4116" to i64
  %".4117" = load i32, ptr %"R11"
  %"zext.419" = zext i32 %".4117" to i64
  %"shl.222" = shl i64 %"zext.419", 32
  %"or.207" = or i64 %"shl.222", %"zext.418"
  %".4118" = inttoptr i64 %"or.207" to ptr
  %".4119" = ptrtoint ptr %".4118" to i64
  %".4120" = add i64 %".4119", 4
  %"for_LDG.202" = inttoptr i64 %".4120" to ptr
  %".4121" = load float, ptr %"for_LDG.202"
  %".4122" = bitcast ptr %"R34" to ptr
  store float %".4121", ptr %".4122"
  ; LDG.E.SYS R37, [R6+0x4]
  %".4125" = load i32, ptr %"R6"
  %"zext.420" = zext i32 %".4125" to i64
  %".4126" = load i32, ptr %"R7"
  %"zext.421" = zext i32 %".4126" to i64
  %"shl.223" = shl i64 %"zext.421", 32
  %"or.208" = or i64 %"shl.223", %"zext.420"
  %".4127" = inttoptr i64 %"or.208" to ptr
  %".4128" = ptrtoint ptr %".4127" to i64
  %".4129" = add i64 %".4128", 4
  %"for_LDG.203" = inttoptr i64 %".4129" to ptr
  %".4130" = load float, ptr %"for_LDG.203"
  %".4131" = bitcast ptr %"R37" to ptr
  store float %".4130", ptr %".4131"
  ; IADD3 R9, R23, 0x8, RZ
  %".4134" = load i32, ptr %"R23"
  %"add.196" = add i32 %".4134", 8
  %"add.197" = add i32 %"add.196", 0
  store i32 %"add.197", ptr %"R9"
  ; LDG.E.SYS R36, [R10+0x8]
  %".4137" = load i32, ptr %"R10"
  %"zext.422" = zext i32 %".4137" to i64
  %".4138" = load i32, ptr %"R11"
  %"zext.423" = zext i32 %".4138" to i64
  %"shl.224" = shl i64 %"zext.423", 32
  %"or.209" = or i64 %"shl.224", %"zext.422"
  %".4139" = inttoptr i64 %"or.209" to ptr
  %".4140" = ptrtoint ptr %".4139" to i64
  %".4141" = add i64 %".4140", 8
  %"for_LDG.204" = inttoptr i64 %".4141" to ptr
  %".4142" = load float, ptr %"for_LDG.204"
  %".4143" = bitcast ptr %"R36" to ptr
  store float %".4142", ptr %".4143"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".4146" = load i32, ptr %"R9"
  %".4147" = load i32, ptr %"R24"
  %"mul.69" = mul i32 %".4146", %".4147"
  %"add.198" = add i32 %"mul.69", %"Arg_3"
  store i32 %"add.198", ptr %"R8"
  ; LDG.E.SYS R38, [R10+0xc]
  %".4150" = load i32, ptr %"R10"
  %"zext.424" = zext i32 %".4150" to i64
  %".4151" = load i32, ptr %"R11"
  %"zext.425" = zext i32 %".4151" to i64
  %"shl.225" = shl i64 %"zext.425", 32
  %"or.210" = or i64 %"shl.225", %"zext.424"
  %".4152" = inttoptr i64 %"or.210" to ptr
  %".4153" = ptrtoint ptr %".4152" to i64
  %".4154" = add i64 %".4153", 12
  %"for_LDG.205" = inttoptr i64 %".4154" to ptr
  %".4155" = load float, ptr %"for_LDG.205"
  %".4156" = bitcast ptr %"R38" to ptr
  store float %".4155", ptr %".4156"
  ; IADD3 R13, R23, 0xc, RZ
  %".4159" = load i32, ptr %"R23"
  %"add.199" = add i32 %".4159", 12
  %"add.200" = add i32 %"add.199", 0
  store i32 %"add.200", ptr %"R13"
  ; IADD3 R11, R35, 0x8, RZ
  %".4162" = load i32, ptr %"R35"
  %"add.201" = add i32 %".4162", 8
  %"add.202" = add i32 %"add.201", 0
  store i32 %"add.202", ptr %"R11"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".4165" = load i32, ptr %"R13"
  %".4166" = load i32, ptr %"R24"
  %"mul.70" = mul i32 %".4165", %".4166"
  %"add.203" = add i32 %"mul.70", %"Arg_3"
  store i32 %"add.203", ptr %"R12"
  ; FFMA R57, R41, R39, R44
  %".4169" = load float, ptr %"R41"
  %".4170" = load float, ptr %"R39"
  %".4171" = load float, ptr %"R44"
  %"fmul.169" = fmul float %".4169", %".4170"
  %"fadd.144" = fadd float %"fmul.169", %".4171"
  %".4172" = bitcast ptr %"R57" to ptr
  store float %"fadd.144", ptr %".4172"
  ; LDG.E.SYS R41, [R8]
  %".4175" = load i32, ptr %"R8"
  %"zext.426" = zext i32 %".4175" to i64
  %".4176" = load i32, ptr %"R9"
  %"zext.427" = zext i32 %".4176" to i64
  %"shl.226" = shl i64 %"zext.427", 32
  %"or.211" = or i64 %"shl.226", %"zext.426"
  %".4177" = inttoptr i64 %"or.211" to ptr
  %".4178" = ptrtoint ptr %".4177" to i64
  %".4179" = add i64 %".4178", 0
  %"for_LDG.206" = inttoptr i64 %".4179" to ptr
  %".4180" = load float, ptr %"for_LDG.206"
  %".4181" = bitcast ptr %"R41" to ptr
  store float %".4180", ptr %".4181"
  ; FFMA R56, R39, R40, R56
  %".4184" = load float, ptr %"R39"
  %".4185" = load float, ptr %"R40"
  %".4186" = load float, ptr %"R56"
  %"fmul.170" = fmul float %".4184", %".4185"
  %"fadd.145" = fadd float %"fmul.170", %".4186"
  %".4187" = bitcast ptr %"R56" to ptr
  store float %"fadd.145", ptr %".4187"
  ; LDG.E.SYS R40, [R8+0x4]
  %".4190" = load i32, ptr %"R8"
  %"zext.428" = zext i32 %".4190" to i64
  %".4191" = load i32, ptr %"R9"
  %"zext.429" = zext i32 %".4191" to i64
  %"shl.227" = shl i64 %"zext.429", 32
  %"or.212" = or i64 %"shl.227", %"zext.428"
  %".4192" = inttoptr i64 %"or.212" to ptr
  %".4193" = ptrtoint ptr %".4192" to i64
  %".4194" = add i64 %".4193", 4
  %"for_LDG.207" = inttoptr i64 %".4194" to ptr
  %".4195" = load float, ptr %"for_LDG.207"
  %".4196" = bitcast ptr %"R40" to ptr
  store float %".4195", ptr %".4196"
  ; LDG.E.SYS R39, [R8+0x8]
  %".4199" = load i32, ptr %"R8"
  %"zext.430" = zext i32 %".4199" to i64
  %".4200" = load i32, ptr %"R9"
  %"zext.431" = zext i32 %".4200" to i64
  %"shl.228" = shl i64 %"zext.431", 32
  %"or.213" = or i64 %"shl.228", %"zext.430"
  %".4201" = inttoptr i64 %"or.213" to ptr
  %".4202" = ptrtoint ptr %".4201" to i64
  %".4203" = add i64 %".4202", 8
  %"for_LDG.208" = inttoptr i64 %".4203" to ptr
  %".4204" = load float, ptr %"for_LDG.208"
  %".4205" = bitcast ptr %"R39" to ptr
  store float %".4204", ptr %".4205"
  ; FFMA R57, R53, R52, R57
  %".4208" = load float, ptr %"R53"
  %".4209" = load float, ptr %"R52"
  %".4210" = load float, ptr %"R57"
  %"fmul.171" = fmul float %".4208", %".4209"
  %"fadd.146" = fadd float %"fmul.171", %".4210"
  %".4211" = bitcast ptr %"R57" to ptr
  store float %"fadd.146", ptr %".4211"
  ; LDG.E.SYS R44, [R8+0xc]
  %".4214" = load i32, ptr %"R8"
  %"zext.432" = zext i32 %".4214" to i64
  %".4215" = load i32, ptr %"R9"
  %"zext.433" = zext i32 %".4215" to i64
  %"shl.229" = shl i64 %"zext.433", 32
  %"or.214" = or i64 %"shl.229", %"zext.432"
  %".4216" = inttoptr i64 %"or.214" to ptr
  %".4217" = ptrtoint ptr %".4216" to i64
  %".4218" = add i64 %".4217", 12
  %"for_LDG.209" = inttoptr i64 %".4218" to ptr
  %".4219" = load float, ptr %"for_LDG.209"
  %".4220" = bitcast ptr %"R44" to ptr
  store float %".4219", ptr %".4220"
  ; FFMA R59, R52, R55, R56
  %".4223" = load float, ptr %"R52"
  %".4224" = load float, ptr %"R55"
  %".4225" = load float, ptr %"R56"
  %"fmul.172" = fmul float %".4223", %".4224"
  %"fadd.147" = fadd float %"fmul.172", %".4225"
  %".4226" = bitcast ptr %"R59" to ptr
  store float %"fadd.147", ptr %".4226"
  ; LDG.E.SYS R55, [R12]
  %".4229" = load i32, ptr %"R12"
  %"zext.434" = zext i32 %".4229" to i64
  %".4230" = load i32, ptr %"R13"
  %"zext.435" = zext i32 %".4230" to i64
  %"shl.230" = shl i64 %"zext.435", 32
  %"or.215" = or i64 %"shl.230", %"zext.434"
  %".4231" = inttoptr i64 %"or.215" to ptr
  %".4232" = ptrtoint ptr %".4231" to i64
  %".4233" = add i64 %".4232", 0
  %"for_LDG.210" = inttoptr i64 %".4233" to ptr
  %".4234" = load float, ptr %"for_LDG.210"
  %".4235" = bitcast ptr %"R55" to ptr
  store float %".4234", ptr %".4235"
  ; LDG.E.SYS R53, [R12+0x4]
  %".4238" = load i32, ptr %"R12"
  %"zext.436" = zext i32 %".4238" to i64
  %".4239" = load i32, ptr %"R13"
  %"zext.437" = zext i32 %".4239" to i64
  %"shl.231" = shl i64 %"zext.437", 32
  %"or.216" = or i64 %"shl.231", %"zext.436"
  %".4240" = inttoptr i64 %"or.216" to ptr
  %".4241" = ptrtoint ptr %".4240" to i64
  %".4242" = add i64 %".4241", 4
  %"for_LDG.211" = inttoptr i64 %".4242" to ptr
  %".4243" = load float, ptr %"for_LDG.211"
  %".4244" = bitcast ptr %"R53" to ptr
  store float %".4243", ptr %".4244"
  ; FFMA R43, R43, R50, R57
  %".4247" = load float, ptr %"R43"
  %".4248" = load float, ptr %"R50"
  %".4249" = load float, ptr %"R57"
  %"fmul.173" = fmul float %".4247", %".4248"
  %"fadd.148" = fadd float %"fmul.173", %".4249"
  %".4250" = bitcast ptr %"R43" to ptr
  store float %"fadd.148", ptr %".4250"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".4253" = load i32, ptr %"R11"
  %".4254" = load i32, ptr %"R24"
  %"mul.71" = mul i32 %".4253", %".4254"
  %"add.204" = add i32 %"mul.71", %"Arg_4"
  store i32 %"add.204", ptr %"R8"
  ; LDG.E.SYS R52, [R12+0x8]
  %".4257" = load i32, ptr %"R12"
  %"zext.438" = zext i32 %".4257" to i64
  %".4258" = load i32, ptr %"R13"
  %"zext.439" = zext i32 %".4258" to i64
  %"shl.232" = shl i64 %"zext.439", 32
  %"or.217" = or i64 %"shl.232", %"zext.438"
  %".4259" = inttoptr i64 %"or.217" to ptr
  %".4260" = ptrtoint ptr %".4259" to i64
  %".4261" = add i64 %".4260", 8
  %"for_LDG.212" = inttoptr i64 %".4261" to ptr
  %".4262" = load float, ptr %"for_LDG.212"
  %".4263" = bitcast ptr %"R52" to ptr
  store float %".4262", ptr %".4263"
  ; FFMA R51, R50, R51, R59
  %".4266" = load float, ptr %"R50"
  %".4267" = load float, ptr %"R51"
  %".4268" = load float, ptr %"R59"
  %"fmul.174" = fmul float %".4266", %".4267"
  %"fadd.149" = fadd float %"fmul.174", %".4268"
  %".4269" = bitcast ptr %"R51" to ptr
  store float %"fadd.149", ptr %".4269"
  ; IADD3 R57, R25, 0x8, RZ
  %".4272" = load i32, ptr %"R25"
  %"add.205" = add i32 %".4272", 8
  %"add.206" = add i32 %"add.205", 0
  store i32 %"add.206", ptr %"R57"
  ; LDG.E.SYS R59, [R4+0xc]
  %".4275" = load i32, ptr %"R4"
  %"zext.440" = zext i32 %".4275" to i64
  %".4276" = load i32, ptr %"R5"
  %"zext.441" = zext i32 %".4276" to i64
  %"shl.233" = shl i64 %"zext.441", 32
  %"or.218" = or i64 %"shl.233", %"zext.440"
  %".4277" = inttoptr i64 %"or.218" to ptr
  %".4278" = ptrtoint ptr %".4277" to i64
  %".4279" = add i64 %".4278", 12
  %"for_LDG.213" = inttoptr i64 %".4279" to ptr
  %".4280" = load float, ptr %"for_LDG.213"
  %".4281" = bitcast ptr %"R59" to ptr
  store float %".4280", ptr %".4281"
  ; FFMA R61, R54, R47, R43
  %".4284" = load float, ptr %"R54"
  %".4285" = load float, ptr %"R47"
  %".4286" = load float, ptr %"R43"
  %"fmul.175" = fmul float %".4284", %".4285"
  %"fadd.150" = fadd float %"fmul.175", %".4286"
  %".4287" = bitcast ptr %"R61" to ptr
  store float %"fadd.150", ptr %".4287"
  ; LDG.E.SYS R50, [R8]
  %".4290" = load i32, ptr %"R8"
  %"zext.442" = zext i32 %".4290" to i64
  %".4291" = load i32, ptr %"R9"
  %"zext.443" = zext i32 %".4291" to i64
  %"shl.234" = shl i64 %"zext.443", 32
  %"or.219" = or i64 %"shl.234", %"zext.442"
  %".4292" = inttoptr i64 %"or.219" to ptr
  %".4293" = ptrtoint ptr %".4292" to i64
  %".4294" = add i64 %".4293", 0
  %"for_LDG.214" = inttoptr i64 %".4294" to ptr
  %".4295" = load float, ptr %"for_LDG.214"
  %".4296" = bitcast ptr %"R50" to ptr
  store float %".4295", ptr %".4296"
  ; FFMA R58, R47, R58, R51
  %".4299" = load float, ptr %"R47"
  %".4300" = load float, ptr %"R58"
  %".4301" = load float, ptr %"R51"
  %"fmul.176" = fmul float %".4299", %".4300"
  %"fadd.151" = fadd float %"fmul.176", %".4301"
  %".4302" = bitcast ptr %"R58" to ptr
  store float %"fadd.151", ptr %".4302"
  ; LDG.E.SYS R43, [R6+0x8]
  %".4305" = load i32, ptr %"R6"
  %"zext.444" = zext i32 %".4305" to i64
  %".4306" = load i32, ptr %"R7"
  %"zext.445" = zext i32 %".4306" to i64
  %"shl.235" = shl i64 %"zext.445", 32
  %"or.220" = or i64 %"shl.235", %"zext.444"
  %".4307" = inttoptr i64 %"or.220" to ptr
  %".4308" = ptrtoint ptr %".4307" to i64
  %".4309" = add i64 %".4308", 8
  %"for_LDG.215" = inttoptr i64 %".4309" to ptr
  %".4310" = load float, ptr %"for_LDG.215"
  %".4311" = bitcast ptr %"R43" to ptr
  store float %".4310", ptr %".4311"
  ; LDG.E.SYS R47, [R4+0x4]
  %".4314" = load i32, ptr %"R4"
  %"zext.446" = zext i32 %".4314" to i64
  %".4315" = load i32, ptr %"R5"
  %"zext.447" = zext i32 %".4315" to i64
  %"shl.236" = shl i64 %"zext.447", 32
  %"or.221" = or i64 %"shl.236", %"zext.446"
  %".4316" = inttoptr i64 %"or.221" to ptr
  %".4317" = ptrtoint ptr %".4316" to i64
  %".4318" = add i64 %".4317", 4
  %"for_LDG.216" = inttoptr i64 %".4318" to ptr
  %".4319" = load float, ptr %"for_LDG.216"
  %".4320" = bitcast ptr %"R47" to ptr
  store float %".4319", ptr %".4320"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".4323" = load i32, ptr %"R57"
  %".4324" = load i32, ptr %"R24"
  %"mul.72" = mul i32 %".4323", %".4324"
  %"add.207" = add i32 %"mul.72", %"Arg_4"
  store i32 %"add.207", ptr %"R10"
  ; LDG.E.SYS R51, [R4+0x8]
  %".4327" = load i32, ptr %"R4"
  %"zext.448" = zext i32 %".4327" to i64
  %".4328" = load i32, ptr %"R5"
  %"zext.449" = zext i32 %".4328" to i64
  %"shl.237" = shl i64 %"zext.449", 32
  %"or.222" = or i64 %"shl.237", %"zext.448"
  %".4329" = inttoptr i64 %"or.222" to ptr
  %".4330" = ptrtoint ptr %".4329" to i64
  %".4331" = add i64 %".4330", 8
  %"for_LDG.217" = inttoptr i64 %".4331" to ptr
  %".4332" = load float, ptr %"for_LDG.217"
  %".4333" = bitcast ptr %"R51" to ptr
  store float %".4332", ptr %".4333"
  ; LDG.E.SYS R57, [R6+0xc]
  %".4336" = load i32, ptr %"R6"
  %"zext.450" = zext i32 %".4336" to i64
  %".4337" = load i32, ptr %"R7"
  %"zext.451" = zext i32 %".4337" to i64
  %"shl.238" = shl i64 %"zext.451", 32
  %"or.223" = or i64 %"shl.238", %"zext.450"
  %".4338" = inttoptr i64 %"or.223" to ptr
  %".4339" = ptrtoint ptr %".4338" to i64
  %".4340" = add i64 %".4339", 12
  %"for_LDG.218" = inttoptr i64 %".4340" to ptr
  %".4341" = load float, ptr %"for_LDG.218"
  %".4342" = bitcast ptr %"R57" to ptr
  store float %".4341", ptr %".4342"
  ; FFMA R42, R42, R46, R61
  %".4345" = load float, ptr %"R42"
  %".4346" = load float, ptr %"R46"
  %".4347" = load float, ptr %"R61"
  %"fmul.177" = fmul float %".4345", %".4346"
  %"fadd.152" = fadd float %"fmul.177", %".4347"
  %".4348" = bitcast ptr %"R42" to ptr
  store float %"fadd.152", ptr %".4348"
  ; IADD3 R25, R25, 0xc, RZ
  %".4351" = load i32, ptr %"R25"
  %"add.208" = add i32 %".4351", 12
  %"add.209" = add i32 %"add.208", 0
  store i32 %"add.209", ptr %"R25"
  ; LDG.E.SYS R56, [R12+0xc]
  %".4354" = load i32, ptr %"R12"
  %"zext.452" = zext i32 %".4354" to i64
  %".4355" = load i32, ptr %"R13"
  %"zext.453" = zext i32 %".4355" to i64
  %"shl.239" = shl i64 %"zext.453", 32
  %"or.224" = or i64 %"shl.239", %"zext.452"
  %".4356" = inttoptr i64 %"or.224" to ptr
  %".4357" = ptrtoint ptr %".4356" to i64
  %".4358" = add i64 %".4357", 12
  %"for_LDG.219" = inttoptr i64 %".4358" to ptr
  %".4359" = load float, ptr %"for_LDG.219"
  %".4360" = bitcast ptr %"R56" to ptr
  store float %".4359", ptr %".4360"
  ; FFMA R45, R46, R45, R58
  %".4363" = load float, ptr %"R46"
  %".4364" = load float, ptr %"R45"
  %".4365" = load float, ptr %"R58"
  %"fmul.178" = fmul float %".4363", %".4364"
  %"fadd.153" = fadd float %"fmul.178", %".4365"
  %".4366" = bitcast ptr %"R45" to ptr
  store float %"fadd.153", ptr %".4366"
  ; LDG.E.SYS R46, [R10]
  %".4369" = load i32, ptr %"R10"
  %"zext.454" = zext i32 %".4369" to i64
  %".4370" = load i32, ptr %"R11"
  %"zext.455" = zext i32 %".4370" to i64
  %"shl.240" = shl i64 %"zext.455", 32
  %"or.225" = or i64 %"shl.240", %"zext.454"
  %".4371" = inttoptr i64 %"or.225" to ptr
  %".4372" = ptrtoint ptr %".4371" to i64
  %".4373" = add i64 %".4372", 0
  %"for_LDG.220" = inttoptr i64 %".4373" to ptr
  %".4374" = load float, ptr %"for_LDG.220"
  %".4375" = bitcast ptr %"R46" to ptr
  store float %".4374", ptr %".4375"
  ; LDG.E.SYS R61, [R8+0x4]
  %".4378" = load i32, ptr %"R8"
  %"zext.456" = zext i32 %".4378" to i64
  %".4379" = load i32, ptr %"R9"
  %"zext.457" = zext i32 %".4379" to i64
  %"shl.241" = shl i64 %"zext.457", 32
  %"or.226" = or i64 %"shl.241", %"zext.456"
  %".4380" = inttoptr i64 %"or.226" to ptr
  %".4381" = ptrtoint ptr %".4380" to i64
  %".4382" = add i64 %".4381", 4
  %"for_LDG.221" = inttoptr i64 %".4382" to ptr
  %".4383" = load float, ptr %"for_LDG.221"
  %".4384" = bitcast ptr %"R61" to ptr
  store float %".4383", ptr %".4384"
  ; IADD3 R13, R35, 0xc, RZ
  %".4387" = load i32, ptr %"R35"
  %"add.210" = add i32 %".4387", 12
  %"add.211" = add i32 %"add.210", 0
  store i32 %"add.211", ptr %"R13"
  ; LDG.E.SYS R35, [R10+0x4]
  %".4390" = load i32, ptr %"R10"
  %"zext.458" = zext i32 %".4390" to i64
  %".4391" = load i32, ptr %"R11"
  %"zext.459" = zext i32 %".4391" to i64
  %"shl.242" = shl i64 %"zext.459", 32
  %"or.227" = or i64 %"shl.242", %"zext.458"
  %".4392" = inttoptr i64 %"or.227" to ptr
  %".4393" = ptrtoint ptr %".4392" to i64
  %".4394" = add i64 %".4393", 4
  %"for_LDG.222" = inttoptr i64 %".4394" to ptr
  %".4395" = load float, ptr %"for_LDG.222"
  %".4396" = bitcast ptr %"R35" to ptr
  store float %".4395", ptr %".4396"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".4399" = load i32, ptr %"R13"
  %".4400" = load i32, ptr %"R24"
  %"mul.73" = mul i32 %".4399", %".4400"
  %"add.212" = add i32 %"mul.73", %"Arg_4"
  store i32 %"add.212", ptr %"R12"
  ; LDG.E.SYS R6, [R8+0x8]
  %".4403" = load i32, ptr %"R8"
  %"zext.460" = zext i32 %".4403" to i64
  %".4404" = load i32, ptr %"R9"
  %"zext.461" = zext i32 %".4404" to i64
  %"shl.243" = shl i64 %"zext.461", 32
  %"or.228" = or i64 %"shl.243", %"zext.460"
  %".4405" = inttoptr i64 %"or.228" to ptr
  %".4406" = ptrtoint ptr %".4405" to i64
  %".4407" = add i64 %".4406", 8
  %"for_LDG.223" = inttoptr i64 %".4407" to ptr
  %".4408" = load float, ptr %"for_LDG.223"
  %".4409" = bitcast ptr %"R6" to ptr
  store float %".4408", ptr %".4409"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".4412" = load i32, ptr %"R25"
  %".4413" = load i32, ptr %"R24"
  %"mul.74" = mul i32 %".4412", %".4413"
  %"add.213" = add i32 %"mul.74", %"Arg_4"
  store i32 %"add.213", ptr %"R24"
  ; LDG.E.SYS R4, [R10+0x8]
  %".4416" = load i32, ptr %"R10"
  %"zext.462" = zext i32 %".4416" to i64
  %".4417" = load i32, ptr %"R11"
  %"zext.463" = zext i32 %".4417" to i64
  %"shl.244" = shl i64 %"zext.463", 32
  %"or.229" = or i64 %"shl.244", %"zext.462"
  %".4418" = inttoptr i64 %"or.229" to ptr
  %".4419" = ptrtoint ptr %".4418" to i64
  %".4420" = add i64 %".4419", 8
  %"for_LDG.224" = inttoptr i64 %".4420" to ptr
  %".4421" = load float, ptr %"for_LDG.224"
  %".4422" = bitcast ptr %"R4" to ptr
  store float %".4421", ptr %".4422"
  ; LDG.E.SYS R5, [R8+0xc]
  %".4425" = load i32, ptr %"R8"
  %"zext.464" = zext i32 %".4425" to i64
  %".4426" = load i32, ptr %"R9"
  %"zext.465" = zext i32 %".4426" to i64
  %"shl.245" = shl i64 %"zext.465", 32
  %"or.230" = or i64 %"shl.245", %"zext.464"
  %".4427" = inttoptr i64 %"or.230" to ptr
  %".4428" = ptrtoint ptr %".4427" to i64
  %".4429" = add i64 %".4428", 12
  %"for_LDG.225" = inttoptr i64 %".4429" to ptr
  %".4430" = load float, ptr %"for_LDG.225"
  %".4431" = bitcast ptr %"R5" to ptr
  store float %".4430", ptr %".4431"
  ; LDG.E.SYS R60, [R10+0xc]
  %".4434" = load i32, ptr %"R10"
  %"zext.466" = zext i32 %".4434" to i64
  %".4435" = load i32, ptr %"R11"
  %"zext.467" = zext i32 %".4435" to i64
  %"shl.246" = shl i64 %"zext.467", 32
  %"or.231" = or i64 %"shl.246", %"zext.466"
  %".4436" = inttoptr i64 %"or.231" to ptr
  %".4437" = ptrtoint ptr %".4436" to i64
  %".4438" = add i64 %".4437", 12
  %"for_LDG.226" = inttoptr i64 %".4438" to ptr
  %".4439" = load float, ptr %"for_LDG.226"
  %".4440" = bitcast ptr %"R60" to ptr
  store float %".4439", ptr %".4440"
  ; LDG.E.SYS R58, [R12]
  %".4443" = load i32, ptr %"R12"
  %"zext.468" = zext i32 %".4443" to i64
  %".4444" = load i32, ptr %"R13"
  %"zext.469" = zext i32 %".4444" to i64
  %"shl.247" = shl i64 %"zext.469", 32
  %"or.232" = or i64 %"shl.247", %"zext.468"
  %".4445" = inttoptr i64 %"or.232" to ptr
  %".4446" = ptrtoint ptr %".4445" to i64
  %".4447" = add i64 %".4446", 0
  %"for_LDG.227" = inttoptr i64 %".4447" to ptr
  %".4448" = load float, ptr %"for_LDG.227"
  %".4449" = bitcast ptr %"R58" to ptr
  store float %".4448", ptr %".4449"
  ; LDG.E.SYS R54, [R12+0x4]
  %".4452" = load i32, ptr %"R12"
  %"zext.470" = zext i32 %".4452" to i64
  %".4453" = load i32, ptr %"R13"
  %"zext.471" = zext i32 %".4453" to i64
  %"shl.248" = shl i64 %"zext.471", 32
  %"or.233" = or i64 %"shl.248", %"zext.470"
  %".4454" = inttoptr i64 %"or.233" to ptr
  %".4455" = ptrtoint ptr %".4454" to i64
  %".4456" = add i64 %".4455", 4
  %"for_LDG.228" = inttoptr i64 %".4456" to ptr
  %".4457" = load float, ptr %"for_LDG.228"
  %".4458" = bitcast ptr %"R54" to ptr
  store float %".4457", ptr %".4458"
  ; FFMA R10, R37, R34, R42
  %".4461" = load float, ptr %"R37"
  %".4462" = load float, ptr %"R34"
  %".4463" = load float, ptr %"R42"
  %"fmul.179" = fmul float %".4461", %".4462"
  %"fadd.154" = fadd float %"fmul.179", %".4463"
  %".4464" = bitcast ptr %"R10" to ptr
  store float %"fadd.154", ptr %".4464"
  ; LDG.E.SYS R37, [R24]
  %".4467" = load i32, ptr %"R24"
  %"zext.472" = zext i32 %".4467" to i64
  %".4468" = load i32, ptr %"R25"
  %"zext.473" = zext i32 %".4468" to i64
  %"shl.249" = shl i64 %"zext.473", 32
  %"or.234" = or i64 %"shl.249", %"zext.472"
  %".4469" = inttoptr i64 %"or.234" to ptr
  %".4470" = ptrtoint ptr %".4469" to i64
  %".4471" = add i64 %".4470", 0
  %"for_LDG.229" = inttoptr i64 %".4471" to ptr
  %".4472" = load float, ptr %"for_LDG.229"
  %".4473" = bitcast ptr %"R37" to ptr
  store float %".4472", ptr %".4473"
  ; LDG.E.SYS R42, [R24+0x4]
  %".4476" = load i32, ptr %"R24"
  %"zext.474" = zext i32 %".4476" to i64
  %".4477" = load i32, ptr %"R25"
  %"zext.475" = zext i32 %".4477" to i64
  %"shl.250" = shl i64 %"zext.475", 32
  %"or.235" = or i64 %"shl.250", %"zext.474"
  %".4478" = inttoptr i64 %"or.235" to ptr
  %".4479" = ptrtoint ptr %".4478" to i64
  %".4480" = add i64 %".4479", 4
  %"for_LDG.230" = inttoptr i64 %".4480" to ptr
  %".4481" = load float, ptr %"for_LDG.230"
  %".4482" = bitcast ptr %"R42" to ptr
  store float %".4481", ptr %".4482"
  ; LDG.E.SYS R7, [R12+0x8]
  %".4485" = load i32, ptr %"R12"
  %"zext.476" = zext i32 %".4485" to i64
  %".4486" = load i32, ptr %"R13"
  %"zext.477" = zext i32 %".4486" to i64
  %"shl.251" = shl i64 %"zext.477", 32
  %"or.236" = or i64 %"shl.251", %"zext.476"
  %".4487" = inttoptr i64 %"or.236" to ptr
  %".4488" = ptrtoint ptr %".4487" to i64
  %".4489" = add i64 %".4488", 8
  %"for_LDG.231" = inttoptr i64 %".4489" to ptr
  %".4490" = load float, ptr %"for_LDG.231"
  %".4491" = bitcast ptr %"R7" to ptr
  store float %".4490", ptr %".4491"
  ; LDG.E.SYS R9, [R24+0x8]
  %".4494" = load i32, ptr %"R24"
  %"zext.478" = zext i32 %".4494" to i64
  %".4495" = load i32, ptr %"R25"
  %"zext.479" = zext i32 %".4495" to i64
  %"shl.252" = shl i64 %"zext.479", 32
  %"or.237" = or i64 %"shl.252", %"zext.478"
  %".4496" = inttoptr i64 %"or.237" to ptr
  %".4497" = ptrtoint ptr %".4496" to i64
  %".4498" = add i64 %".4497", 8
  %"for_LDG.232" = inttoptr i64 %".4498" to ptr
  %".4499" = load float, ptr %"for_LDG.232"
  %".4500" = bitcast ptr %"R9" to ptr
  store float %".4499", ptr %".4500"
  ; LDG.E.SYS R8, [R24+0xc]
  %".4503" = load i32, ptr %"R24"
  %"zext.480" = zext i32 %".4503" to i64
  %".4504" = load i32, ptr %"R25"
  %"zext.481" = zext i32 %".4504" to i64
  %"shl.253" = shl i64 %"zext.481", 32
  %"or.238" = or i64 %"shl.253", %"zext.480"
  %".4505" = inttoptr i64 %"or.238" to ptr
  %".4506" = ptrtoint ptr %".4505" to i64
  %".4507" = add i64 %".4506", 12
  %"for_LDG.233" = inttoptr i64 %".4507" to ptr
  %".4508" = load float, ptr %"for_LDG.233"
  %".4509" = bitcast ptr %"R8" to ptr
  store float %".4508", ptr %".4509"
  ; LDG.E.SYS R13, [R12+0xc]
  %".4512" = load i32, ptr %"R12"
  %"zext.482" = zext i32 %".4512" to i64
  %".4513" = load i32, ptr %"R13"
  %"zext.483" = zext i32 %".4513" to i64
  %"shl.254" = shl i64 %"zext.483", 32
  %"or.239" = or i64 %"shl.254", %"zext.482"
  %".4514" = inttoptr i64 %"or.239" to ptr
  %".4515" = ptrtoint ptr %".4514" to i64
  %".4516" = add i64 %".4515", 12
  %"for_LDG.234" = inttoptr i64 %".4516" to ptr
  %".4517" = load float, ptr %"for_LDG.234"
  %".4518" = bitcast ptr %"R13" to ptr
  store float %".4517", ptr %".4518"
  ; IADD3 R22, R22, -0x10, RZ
  %".4521" = load i32, ptr %"R22"
  %"add.214" = add i32 %".4521", -16
  %"add.215" = add i32 %"add.214", 0
  store i32 %"add.215", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".4524" = load i32, ptr %"R22"
  %".4525" = load i1, ptr %"PT"
  %"cmp.37" = icmp sgt i32 %".4524", 12
  %".4526" = and i1 %"cmp.37", %".4525"
  store i1 %".4526", ptr %"P1"
  ; IADD3 R23, R23, 0x10, RZ
  %".4529" = load i32, ptr %"R23"
  %"add.216" = add i32 %".4529", 16
  %"add.217" = add i32 %"add.216", 0
  store i32 %"add.217", ptr %"R23"
  ; FFMA R10, R43, R36, R10
  %".4532" = load float, ptr %"R43"
  %".4533" = load float, ptr %"R36"
  %".4534" = load float, ptr %"R10"
  %"fmul.180" = fmul float %".4532", %".4533"
  %"fadd.155" = fadd float %"fmul.180", %".4534"
  %".4535" = bitcast ptr %"R10" to ptr
  store float %"fadd.155", ptr %".4535"
  ; FFMA R45, R34, R47, R45
  %".4538" = load float, ptr %"R34"
  %".4539" = load float, ptr %"R47"
  %".4540" = load float, ptr %"R45"
  %"fmul.181" = fmul float %".4538", %".4539"
  %"fadd.156" = fadd float %"fmul.181", %".4540"
  %".4541" = bitcast ptr %"R45" to ptr
  store float %"fadd.156", ptr %".4541"
  ; FFMA R45, R36, R51, R45
  %".4544" = load float, ptr %"R36"
  %".4545" = load float, ptr %"R51"
  %".4546" = load float, ptr %"R45"
  %"fmul.182" = fmul float %".4544", %".4545"
  %"fadd.157" = fadd float %"fmul.182", %".4546"
  %".4547" = bitcast ptr %"R45" to ptr
  store float %"fadd.157", ptr %".4547"
  ; FFMA R10, R57, R38, R10
  %".4550" = load float, ptr %"R57"
  %".4551" = load float, ptr %"R38"
  %".4552" = load float, ptr %"R10"
  %"fmul.183" = fmul float %".4550", %".4551"
  %"fadd.158" = fadd float %"fmul.183", %".4552"
  %".4553" = bitcast ptr %"R10" to ptr
  store float %"fadd.158", ptr %".4553"
  ; FFMA R45, R38, R59, R45
  %".4556" = load float, ptr %"R38"
  %".4557" = load float, ptr %"R59"
  %".4558" = load float, ptr %"R45"
  %"fmul.184" = fmul float %".4556", %".4557"
  %"fadd.159" = fadd float %"fmul.184", %".4558"
  %".4559" = bitcast ptr %"R45" to ptr
  store float %"fadd.159", ptr %".4559"
  ; FFMA R10, R50, R41, R10
  %".4562" = load float, ptr %"R50"
  %".4563" = load float, ptr %"R41"
  %".4564" = load float, ptr %"R10"
  %"fmul.185" = fmul float %".4562", %".4563"
  %"fadd.160" = fadd float %"fmul.185", %".4564"
  %".4565" = bitcast ptr %"R10" to ptr
  store float %"fadd.160", ptr %".4565"
  ; FFMA R45, R41, R46, R45
  %".4568" = load float, ptr %"R41"
  %".4569" = load float, ptr %"R46"
  %".4570" = load float, ptr %"R45"
  %"fmul.186" = fmul float %".4568", %".4569"
  %"fadd.161" = fadd float %"fmul.186", %".4570"
  %".4571" = bitcast ptr %"R45" to ptr
  store float %"fadd.161", ptr %".4571"
  ; FFMA R10, R61, R40, R10
  %".4574" = load float, ptr %"R61"
  %".4575" = load float, ptr %"R40"
  %".4576" = load float, ptr %"R10"
  %"fmul.187" = fmul float %".4574", %".4575"
  %"fadd.162" = fadd float %"fmul.187", %".4576"
  %".4577" = bitcast ptr %"R10" to ptr
  store float %"fadd.162", ptr %".4577"
  ; FFMA R35, R40, R35, R45
  %".4580" = load float, ptr %"R40"
  %".4581" = load float, ptr %"R35"
  %".4582" = load float, ptr %"R45"
  %"fmul.188" = fmul float %".4580", %".4581"
  %"fadd.163" = fadd float %"fmul.188", %".4582"
  %".4583" = bitcast ptr %"R35" to ptr
  store float %"fadd.163", ptr %".4583"
  ; FFMA R6, R6, R39, R10
  %".4586" = load float, ptr %"R6"
  %".4587" = load float, ptr %"R39"
  %".4588" = load float, ptr %"R10"
  %"fmul.189" = fmul float %".4586", %".4587"
  %"fadd.164" = fadd float %"fmul.189", %".4588"
  %".4589" = bitcast ptr %"R6" to ptr
  store float %"fadd.164", ptr %".4589"
  ; FFMA R35, R39, R4, R35
  %".4592" = load float, ptr %"R39"
  %".4593" = load float, ptr %"R4"
  %".4594" = load float, ptr %"R35"
  %"fmul.190" = fmul float %".4592", %".4593"
  %"fadd.165" = fadd float %"fmul.190", %".4594"
  %".4595" = bitcast ptr %"R35" to ptr
  store float %"fadd.165", ptr %".4595"
  ; FFMA R5, R5, R44, R6
  %".4598" = load float, ptr %"R5"
  %".4599" = load float, ptr %"R44"
  %".4600" = load float, ptr %"R6"
  %"fmul.191" = fmul float %".4598", %".4599"
  %"fadd.166" = fadd float %"fmul.191", %".4600"
  %".4601" = bitcast ptr %"R5" to ptr
  store float %"fadd.166", ptr %".4601"
  ; FFMA R60, R44, R60, R35
  %".4604" = load float, ptr %"R44"
  %".4605" = load float, ptr %"R60"
  %".4606" = load float, ptr %"R35"
  %"fmul.192" = fmul float %".4604", %".4605"
  %"fadd.167" = fadd float %"fmul.192", %".4606"
  %".4607" = bitcast ptr %"R60" to ptr
  store float %"fadd.167", ptr %".4607"
  ; FFMA R5, R58, R55, R5
  %".4610" = load float, ptr %"R58"
  %".4611" = load float, ptr %"R55"
  %".4612" = load float, ptr %"R5"
  %"fmul.193" = fmul float %".4610", %".4611"
  %"fadd.168" = fadd float %"fmul.193", %".4612"
  %".4613" = bitcast ptr %"R5" to ptr
  store float %"fadd.168", ptr %".4613"
  ; FFMA R5, R54, R53, R5
  %".4616" = load float, ptr %"R54"
  %".4617" = load float, ptr %"R53"
  %".4618" = load float, ptr %"R5"
  %"fmul.194" = fmul float %".4616", %".4617"
  %"fadd.169" = fadd float %"fmul.194", %".4618"
  %".4619" = bitcast ptr %"R5" to ptr
  store float %"fadd.169", ptr %".4619"
  ; FFMA R37, R55, R37, R60
  %".4622" = load float, ptr %"R55"
  %".4623" = load float, ptr %"R37"
  %".4624" = load float, ptr %"R60"
  %"fmul.195" = fmul float %".4622", %".4623"
  %"fadd.170" = fadd float %"fmul.195", %".4624"
  %".4625" = bitcast ptr %"R37" to ptr
  store float %"fadd.170", ptr %".4625"
  ; FFMA R37, R53, R42, R37
  %".4628" = load float, ptr %"R53"
  %".4629" = load float, ptr %"R42"
  %".4630" = load float, ptr %"R37"
  %"fmul.196" = fmul float %".4628", %".4629"
  %"fadd.171" = fadd float %"fmul.196", %".4630"
  %".4631" = bitcast ptr %"R37" to ptr
  store float %"fadd.171", ptr %".4631"
  ; FFMA R5, R7, R52, R5
  %".4634" = load float, ptr %"R7"
  %".4635" = load float, ptr %"R52"
  %".4636" = load float, ptr %"R5"
  %"fmul.197" = fmul float %".4634", %".4635"
  %"fadd.172" = fadd float %"fmul.197", %".4636"
  %".4637" = bitcast ptr %"R5" to ptr
  store float %"fadd.172", ptr %".4637"
  ; FFMA R9, R52, R9, R37
  %".4640" = load float, ptr %"R52"
  %".4641" = load float, ptr %"R9"
  %".4642" = load float, ptr %"R37"
  %"fmul.198" = fmul float %".4640", %".4641"
  %"fadd.173" = fadd float %"fmul.198", %".4642"
  %".4643" = bitcast ptr %"R9" to ptr
  store float %"fadd.173", ptr %".4643"
  ; FFMA R44, R13, R56, R5
  %".4646" = load float, ptr %"R13"
  %".4647" = load float, ptr %"R56"
  %".4648" = load float, ptr %"R5"
  %"fmul.199" = fmul float %".4646", %".4647"
  %"fadd.174" = fadd float %"fmul.199", %".4648"
  %".4649" = bitcast ptr %"R44" to ptr
  store float %"fadd.174", ptr %".4649"
  ; FFMA R56, R56, R8, R9
  %".4652" = load float, ptr %"R56"
  %".4653" = load float, ptr %"R8"
  %".4654" = load float, ptr %"R9"
  %"fmul.200" = fmul float %".4652", %".4653"
  %"fadd.175" = fadd float %"fmul.200", %".4654"
  %".4655" = bitcast ptr %"R56" to ptr
  store float %"fadd.175", ptr %".4655"
  ; @P1 BRA `(.L_x_30)
  %".4658" = load i1, ptr %"P1"
  %".4659" = icmp ne i1 %".4658", 1
  br i1 %".4659", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".4662" = load i32, ptr %"R22"
  %".4663" = load i1, ptr %"PT"
  %"cmp.38" = icmp sgt i32 %".4662", 4
  %".4664" = and i1 %"cmp.38", %".4663"
  store i1 %".4664", ptr %"P1"
  ; @!P1 BRA `(.L_x_31)
  %".4667" = load i1, ptr %"P1"
  %".4668" = icmp eq i1 %".4667", 1
  br i1 %".4668", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".4671" = load i32, ptr %"R0"
  %".4672" = load i32, ptr %"R23"
  %"add.218" = add i32 %".4671", %".4672"
  %"add.219" = add i32 %"add.218", 0
  store i32 %"add.219", ptr %"R5"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25"
  ; LEA R13, R2.reuse, R5, 0x2
  %".4677" = load i32, ptr %"R2"
  %".4678" = load i32, ptr %"R5"
  %"shl.255" = shl i32 %".4677", 2
  %"add.220" = add i32 %"shl.255", %".4678"
  store i32 %"add.220", ptr %"R13"
  ; IMAD R12, R2, 0x3, R5
  %".4681" = load i32, ptr %"R2"
  %".4682" = load i32, ptr %"R5"
  %"mul.75" = mul i32 %".4681", 3
  %"add.221" = add i32 %"mul.75", %".4682"
  store i32 %"add.221", ptr %"R12"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".4685" = load i32, ptr %"R23"
  %"add.222" = add i32 %".4685", 4
  %"add.223" = add i32 %"add.222", 0
  store i32 %"add.223", ptr %"R6"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".4688" = load i32, ptr %"R23"
  %".4689" = load i32, ptr %"R25"
  %"mul.76" = mul i32 %".4688", %".4689"
  %"add.224" = add i32 %"mul.76", %"Arg_3"
  store i32 %"add.224", ptr %"R8"
  ; IADD3 R24, R13, 0x4, RZ
  %".4692" = load i32, ptr %"R13"
  %"add.225" = add i32 %".4692", 4
  %"add.226" = add i32 %"add.225", 0
  store i32 %"add.226", ptr %"R24"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".4695" = load i32, ptr %"R12"
  %".4696" = load i32, ptr %"R25"
  %"mul.77" = mul i32 %".4695", %".4696"
  %"add.227" = add i32 %"mul.77", %"Arg_4"
  store i32 %"add.227", ptr %"R4"
  ; IADD3 R12, R12, 0x4, RZ
  %".4699" = load i32, ptr %"R12"
  %"add.228" = add i32 %".4699", 4
  %"add.229" = add i32 %"add.228", 0
  store i32 %"add.229", ptr %"R12"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".4702" = load i32, ptr %"R13"
  %".4703" = load i32, ptr %"R25"
  %"mul.78" = mul i32 %".4702", %".4703"
  %"add.230" = add i32 %"mul.78", %"Arg_4"
  store i32 %"add.230", ptr %"R10"
  ; LDG.E.SYS R43, [R8]
  %".4706" = load i32, ptr %"R8"
  %"zext.484" = zext i32 %".4706" to i64
  %".4707" = load i32, ptr %"R9"
  %"zext.485" = zext i32 %".4707" to i64
  %"shl.256" = shl i64 %"zext.485", 32
  %"or.240" = or i64 %"shl.256", %"zext.484"
  %".4708" = inttoptr i64 %"or.240" to ptr
  %".4709" = ptrtoint ptr %".4708" to i64
  %".4710" = add i64 %".4709", 0
  %"for_LDG.235" = inttoptr i64 %".4710" to ptr
  %".4711" = load float, ptr %"for_LDG.235"
  %".4712" = bitcast ptr %"R43" to ptr
  store float %".4711", ptr %".4712"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".4715" = load i32, ptr %"R6"
  %".4716" = load i32, ptr %"R25"
  %"mul.79" = mul i32 %".4715", %".4716"
  %"add.231" = add i32 %"mul.79", %"Arg_3"
  store i32 %"add.231", ptr %"R6"
  ; LDG.E.SYS R52, [R4]
  %".4719" = load i32, ptr %"R4"
  %"zext.486" = zext i32 %".4719" to i64
  %".4720" = load i32, ptr %"R5"
  %"zext.487" = zext i32 %".4720" to i64
  %"shl.257" = shl i64 %"zext.487", 32
  %"or.241" = or i64 %"shl.257", %"zext.486"
  %".4721" = inttoptr i64 %"or.241" to ptr
  %".4722" = ptrtoint ptr %".4721" to i64
  %".4723" = add i64 %".4722", 0
  %"for_LDG.236" = inttoptr i64 %".4723" to ptr
  %".4724" = load float, ptr %"for_LDG.236"
  %".4725" = bitcast ptr %"R52" to ptr
  store float %".4724", ptr %".4725"
  ; LDG.E.SYS R38, [R10]
  %".4728" = load i32, ptr %"R10"
  %"zext.488" = zext i32 %".4728" to i64
  %".4729" = load i32, ptr %"R11"
  %"zext.489" = zext i32 %".4729" to i64
  %"shl.258" = shl i64 %"zext.489", 32
  %"or.242" = or i64 %"shl.258", %"zext.488"
  %".4730" = inttoptr i64 %"or.242" to ptr
  %".4731" = ptrtoint ptr %".4730" to i64
  %".4732" = add i64 %".4731", 0
  %"for_LDG.237" = inttoptr i64 %".4732" to ptr
  %".4733" = load float, ptr %"for_LDG.237"
  %".4734" = bitcast ptr %"R38" to ptr
  store float %".4733", ptr %".4734"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".4737" = load i32, ptr %"R12"
  %".4738" = load i32, ptr %"R25"
  %"mul.80" = mul i32 %".4737", %".4738"
  %"add.232" = add i32 %"mul.80", %"Arg_4"
  store i32 %"add.232", ptr %"R12"
  ; LDG.E.SYS R36, [R8+0x4]
  %".4741" = load i32, ptr %"R8"
  %"zext.490" = zext i32 %".4741" to i64
  %".4742" = load i32, ptr %"R9"
  %"zext.491" = zext i32 %".4742" to i64
  %"shl.259" = shl i64 %"zext.491", 32
  %"or.243" = or i64 %"shl.259", %"zext.490"
  %".4743" = inttoptr i64 %"or.243" to ptr
  %".4744" = ptrtoint ptr %".4743" to i64
  %".4745" = add i64 %".4744", 4
  %"for_LDG.238" = inttoptr i64 %".4745" to ptr
  %".4746" = load float, ptr %"for_LDG.238"
  %".4747" = bitcast ptr %"R36" to ptr
  store float %".4746", ptr %".4747"
  ; LDG.E.SYS R41, [R4+0x4]
  %".4750" = load i32, ptr %"R4"
  %"zext.492" = zext i32 %".4750" to i64
  %".4751" = load i32, ptr %"R5"
  %"zext.493" = zext i32 %".4751" to i64
  %"shl.260" = shl i64 %"zext.493", 32
  %"or.244" = or i64 %"shl.260", %"zext.492"
  %".4752" = inttoptr i64 %"or.244" to ptr
  %".4753" = ptrtoint ptr %".4752" to i64
  %".4754" = add i64 %".4753", 4
  %"for_LDG.239" = inttoptr i64 %".4754" to ptr
  %".4755" = load float, ptr %"for_LDG.239"
  %".4756" = bitcast ptr %"R41" to ptr
  store float %".4755", ptr %".4756"
  ; LDG.E.SYS R39, [R10+0x4]
  %".4759" = load i32, ptr %"R10"
  %"zext.494" = zext i32 %".4759" to i64
  %".4760" = load i32, ptr %"R11"
  %"zext.495" = zext i32 %".4760" to i64
  %"shl.261" = shl i64 %"zext.495", 32
  %"or.245" = or i64 %"shl.261", %"zext.494"
  %".4761" = inttoptr i64 %"or.245" to ptr
  %".4762" = ptrtoint ptr %".4761" to i64
  %".4763" = add i64 %".4762", 4
  %"for_LDG.240" = inttoptr i64 %".4763" to ptr
  %".4764" = load float, ptr %"for_LDG.240"
  %".4765" = bitcast ptr %"R39" to ptr
  store float %".4764", ptr %".4765"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".4768" = load i32, ptr %"R24"
  %".4769" = load i32, ptr %"R25"
  %"mul.81" = mul i32 %".4768", %".4769"
  %"add.233" = add i32 %"mul.81", %"Arg_4"
  store i32 %"add.233", ptr %"R24"
  ; LDG.E.SYS R34, [R8+0x8]
  %".4772" = load i32, ptr %"R8"
  %"zext.496" = zext i32 %".4772" to i64
  %".4773" = load i32, ptr %"R9"
  %"zext.497" = zext i32 %".4773" to i64
  %"shl.262" = shl i64 %"zext.497", 32
  %"or.246" = or i64 %"shl.262", %"zext.496"
  %".4774" = inttoptr i64 %"or.246" to ptr
  %".4775" = ptrtoint ptr %".4774" to i64
  %".4776" = add i64 %".4775", 8
  %"for_LDG.241" = inttoptr i64 %".4776" to ptr
  %".4777" = load float, ptr %"for_LDG.241"
  %".4778" = bitcast ptr %"R34" to ptr
  store float %".4777", ptr %".4778"
  ; LDG.E.SYS R37, [R4+0x8]
  %".4781" = load i32, ptr %"R4"
  %"zext.498" = zext i32 %".4781" to i64
  %".4782" = load i32, ptr %"R5"
  %"zext.499" = zext i32 %".4782" to i64
  %"shl.263" = shl i64 %"zext.499", 32
  %"or.247" = or i64 %"shl.263", %"zext.498"
  %".4783" = inttoptr i64 %"or.247" to ptr
  %".4784" = ptrtoint ptr %".4783" to i64
  %".4785" = add i64 %".4784", 8
  %"for_LDG.242" = inttoptr i64 %".4785" to ptr
  %".4786" = load float, ptr %"for_LDG.242"
  %".4787" = bitcast ptr %"R37" to ptr
  store float %".4786", ptr %".4787"
  ; LDG.E.SYS R35, [R10+0x8]
  %".4790" = load i32, ptr %"R10"
  %"zext.500" = zext i32 %".4790" to i64
  %".4791" = load i32, ptr %"R11"
  %"zext.501" = zext i32 %".4791" to i64
  %"shl.264" = shl i64 %"zext.501", 32
  %"or.248" = or i64 %"shl.264", %"zext.500"
  %".4792" = inttoptr i64 %"or.248" to ptr
  %".4793" = ptrtoint ptr %".4792" to i64
  %".4794" = add i64 %".4793", 8
  %"for_LDG.243" = inttoptr i64 %".4794" to ptr
  %".4795" = load float, ptr %"for_LDG.243"
  %".4796" = bitcast ptr %"R35" to ptr
  store float %".4795", ptr %".4796"
  ; LDG.E.SYS R40, [R8+0xc]
  %".4799" = load i32, ptr %"R8"
  %"zext.502" = zext i32 %".4799" to i64
  %".4800" = load i32, ptr %"R9"
  %"zext.503" = zext i32 %".4800" to i64
  %"shl.265" = shl i64 %"zext.503", 32
  %"or.249" = or i64 %"shl.265", %"zext.502"
  %".4801" = inttoptr i64 %"or.249" to ptr
  %".4802" = ptrtoint ptr %".4801" to i64
  %".4803" = add i64 %".4802", 12
  %"for_LDG.244" = inttoptr i64 %".4803" to ptr
  %".4804" = load float, ptr %"for_LDG.244"
  %".4805" = bitcast ptr %"R40" to ptr
  store float %".4804", ptr %".4805"
  ; LDG.E.SYS R45, [R4+0xc]
  %".4808" = load i32, ptr %"R4"
  %"zext.504" = zext i32 %".4808" to i64
  %".4809" = load i32, ptr %"R5"
  %"zext.505" = zext i32 %".4809" to i64
  %"shl.266" = shl i64 %"zext.505", 32
  %"or.250" = or i64 %"shl.266", %"zext.504"
  %".4810" = inttoptr i64 %"or.250" to ptr
  %".4811" = ptrtoint ptr %".4810" to i64
  %".4812" = add i64 %".4811", 12
  %"for_LDG.245" = inttoptr i64 %".4812" to ptr
  %".4813" = load float, ptr %"for_LDG.245"
  %".4814" = bitcast ptr %"R45" to ptr
  store float %".4813", ptr %".4814"
  ; LDG.E.SYS R59, [R10+0xc]
  %".4817" = load i32, ptr %"R10"
  %"zext.506" = zext i32 %".4817" to i64
  %".4818" = load i32, ptr %"R11"
  %"zext.507" = zext i32 %".4818" to i64
  %"shl.267" = shl i64 %"zext.507", 32
  %"or.251" = or i64 %"shl.267", %"zext.506"
  %".4819" = inttoptr i64 %"or.251" to ptr
  %".4820" = ptrtoint ptr %".4819" to i64
  %".4821" = add i64 %".4820", 12
  %"for_LDG.246" = inttoptr i64 %".4821" to ptr
  %".4822" = load float, ptr %"for_LDG.246"
  %".4823" = bitcast ptr %"R59" to ptr
  store float %".4822", ptr %".4823"
  ; LDG.E.SYS R50, [R6]
  %".4826" = load i32, ptr %"R6"
  %"zext.508" = zext i32 %".4826" to i64
  %".4827" = load i32, ptr %"R7"
  %"zext.509" = zext i32 %".4827" to i64
  %"shl.268" = shl i64 %"zext.509", 32
  %"or.252" = or i64 %"shl.268", %"zext.508"
  %".4828" = inttoptr i64 %"or.252" to ptr
  %".4829" = ptrtoint ptr %".4828" to i64
  %".4830" = add i64 %".4829", 0
  %"for_LDG.247" = inttoptr i64 %".4830" to ptr
  %".4831" = load float, ptr %"for_LDG.247"
  %".4832" = bitcast ptr %"R50" to ptr
  store float %".4831", ptr %".4832"
  ; LDG.E.SYS R57, [R12]
  %".4835" = load i32, ptr %"R12"
  %"zext.510" = zext i32 %".4835" to i64
  %".4836" = load i32, ptr %"R13"
  %"zext.511" = zext i32 %".4836" to i64
  %"shl.269" = shl i64 %"zext.511", 32
  %"or.253" = or i64 %"shl.269", %"zext.510"
  %".4837" = inttoptr i64 %"or.253" to ptr
  %".4838" = ptrtoint ptr %".4837" to i64
  %".4839" = add i64 %".4838", 0
  %"for_LDG.248" = inttoptr i64 %".4839" to ptr
  %".4840" = load float, ptr %"for_LDG.248"
  %".4841" = bitcast ptr %"R57" to ptr
  store float %".4840", ptr %".4841"
  ; LDG.E.SYS R55, [R24]
  %".4844" = load i32, ptr %"R24"
  %"zext.512" = zext i32 %".4844" to i64
  %".4845" = load i32, ptr %"R25"
  %"zext.513" = zext i32 %".4845" to i64
  %"shl.270" = shl i64 %"zext.513", 32
  %"or.254" = or i64 %"shl.270", %"zext.512"
  %".4846" = inttoptr i64 %"or.254" to ptr
  %".4847" = ptrtoint ptr %".4846" to i64
  %".4848" = add i64 %".4847", 0
  %"for_LDG.249" = inttoptr i64 %".4848" to ptr
  %".4849" = load float, ptr %"for_LDG.249"
  %".4850" = bitcast ptr %"R55" to ptr
  store float %".4849", ptr %".4850"
  ; LDG.E.SYS R46, [R6+0x4]
  %".4853" = load i32, ptr %"R6"
  %"zext.514" = zext i32 %".4853" to i64
  %".4854" = load i32, ptr %"R7"
  %"zext.515" = zext i32 %".4854" to i64
  %"shl.271" = shl i64 %"zext.515", 32
  %"or.255" = or i64 %"shl.271", %"zext.514"
  %".4855" = inttoptr i64 %"or.255" to ptr
  %".4856" = ptrtoint ptr %".4855" to i64
  %".4857" = add i64 %".4856", 4
  %"for_LDG.250" = inttoptr i64 %".4857" to ptr
  %".4858" = load float, ptr %"for_LDG.250"
  %".4859" = bitcast ptr %"R46" to ptr
  store float %".4858", ptr %".4859"
  ; LDG.E.SYS R53, [R12+0x4]
  %".4862" = load i32, ptr %"R12"
  %"zext.516" = zext i32 %".4862" to i64
  %".4863" = load i32, ptr %"R13"
  %"zext.517" = zext i32 %".4863" to i64
  %"shl.272" = shl i64 %"zext.517", 32
  %"or.256" = or i64 %"shl.272", %"zext.516"
  %".4864" = inttoptr i64 %"or.256" to ptr
  %".4865" = ptrtoint ptr %".4864" to i64
  %".4866" = add i64 %".4865", 4
  %"for_LDG.251" = inttoptr i64 %".4866" to ptr
  %".4867" = load float, ptr %"for_LDG.251"
  %".4868" = bitcast ptr %"R53" to ptr
  store float %".4867", ptr %".4868"
  ; LDG.E.SYS R51, [R24+0x4]
  %".4871" = load i32, ptr %"R24"
  %"zext.518" = zext i32 %".4871" to i64
  %".4872" = load i32, ptr %"R25"
  %"zext.519" = zext i32 %".4872" to i64
  %"shl.273" = shl i64 %"zext.519", 32
  %"or.257" = or i64 %"shl.273", %"zext.518"
  %".4873" = inttoptr i64 %"or.257" to ptr
  %".4874" = ptrtoint ptr %".4873" to i64
  %".4875" = add i64 %".4874", 4
  %"for_LDG.252" = inttoptr i64 %".4875" to ptr
  %".4876" = load float, ptr %"for_LDG.252"
  %".4877" = bitcast ptr %"R51" to ptr
  store float %".4876", ptr %".4877"
  ; LDG.E.SYS R42, [R6+0x8]
  %".4880" = load i32, ptr %"R6"
  %"zext.520" = zext i32 %".4880" to i64
  %".4881" = load i32, ptr %"R7"
  %"zext.521" = zext i32 %".4881" to i64
  %"shl.274" = shl i64 %"zext.521", 32
  %"or.258" = or i64 %"shl.274", %"zext.520"
  %".4882" = inttoptr i64 %"or.258" to ptr
  %".4883" = ptrtoint ptr %".4882" to i64
  %".4884" = add i64 %".4883", 8
  %"for_LDG.253" = inttoptr i64 %".4884" to ptr
  %".4885" = load float, ptr %"for_LDG.253"
  %".4886" = bitcast ptr %"R42" to ptr
  store float %".4885", ptr %".4886"
  ; LDG.E.SYS R47, [R12+0x8]
  %".4889" = load i32, ptr %"R12"
  %"zext.522" = zext i32 %".4889" to i64
  %".4890" = load i32, ptr %"R13"
  %"zext.523" = zext i32 %".4890" to i64
  %"shl.275" = shl i64 %"zext.523", 32
  %"or.259" = or i64 %"shl.275", %"zext.522"
  %".4891" = inttoptr i64 %"or.259" to ptr
  %".4892" = ptrtoint ptr %".4891" to i64
  %".4893" = add i64 %".4892", 8
  %"for_LDG.254" = inttoptr i64 %".4893" to ptr
  %".4894" = load float, ptr %"for_LDG.254"
  %".4895" = bitcast ptr %"R47" to ptr
  store float %".4894", ptr %".4895"
  ; LDG.E.SYS R9, [R24+0x8]
  %".4898" = load i32, ptr %"R24"
  %"zext.524" = zext i32 %".4898" to i64
  %".4899" = load i32, ptr %"R25"
  %"zext.525" = zext i32 %".4899" to i64
  %"shl.276" = shl i64 %"zext.525", 32
  %"or.260" = or i64 %"shl.276", %"zext.524"
  %".4900" = inttoptr i64 %"or.260" to ptr
  %".4901" = ptrtoint ptr %".4900" to i64
  %".4902" = add i64 %".4901", 8
  %"for_LDG.255" = inttoptr i64 %".4902" to ptr
  %".4903" = load float, ptr %"for_LDG.255"
  %".4904" = bitcast ptr %"R9" to ptr
  store float %".4903", ptr %".4904"
  ; LDG.E.SYS R4, [R6+0xc]
  %".4907" = load i32, ptr %"R6"
  %"zext.526" = zext i32 %".4907" to i64
  %".4908" = load i32, ptr %"R7"
  %"zext.527" = zext i32 %".4908" to i64
  %"shl.277" = shl i64 %"zext.527", 32
  %"or.261" = or i64 %"shl.277", %"zext.526"
  %".4909" = inttoptr i64 %"or.261" to ptr
  %".4910" = ptrtoint ptr %".4909" to i64
  %".4911" = add i64 %".4910", 12
  %"for_LDG.256" = inttoptr i64 %".4911" to ptr
  %".4912" = load float, ptr %"for_LDG.256"
  %".4913" = bitcast ptr %"R4" to ptr
  store float %".4912", ptr %".4913"
  ; LDG.E.SYS R5, [R12+0xc]
  %".4916" = load i32, ptr %"R12"
  %"zext.528" = zext i32 %".4916" to i64
  %".4917" = load i32, ptr %"R13"
  %"zext.529" = zext i32 %".4917" to i64
  %"shl.278" = shl i64 %"zext.529", 32
  %"or.262" = or i64 %"shl.278", %"zext.528"
  %".4918" = inttoptr i64 %"or.262" to ptr
  %".4919" = ptrtoint ptr %".4918" to i64
  %".4920" = add i64 %".4919", 12
  %"for_LDG.257" = inttoptr i64 %".4920" to ptr
  %".4921" = load float, ptr %"for_LDG.257"
  %".4922" = bitcast ptr %"R5" to ptr
  store float %".4921", ptr %".4922"
  ; LDG.E.SYS R11, [R24+0xc]
  %".4925" = load i32, ptr %"R24"
  %"zext.530" = zext i32 %".4925" to i64
  %".4926" = load i32, ptr %"R25"
  %"zext.531" = zext i32 %".4926" to i64
  %"shl.279" = shl i64 %"zext.531", 32
  %"or.263" = or i64 %"shl.279", %"zext.530"
  %".4927" = inttoptr i64 %"or.263" to ptr
  %".4928" = ptrtoint ptr %".4927" to i64
  %".4929" = add i64 %".4928", 12
  %"for_LDG.258" = inttoptr i64 %".4929" to ptr
  %".4930" = load float, ptr %"for_LDG.258"
  %".4931" = bitcast ptr %"R11" to ptr
  store float %".4930", ptr %".4931"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4934" = xor i1 1, 1
  %".4935" = and i1 %".4934", 1
  %".4936" = and i1 %".4935", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".4938" = load i32, ptr %"R22"
  %"add.234" = add i32 %".4938", -8
  %"add.235" = add i32 %"add.234", 0
  store i32 %"add.235", ptr %"R22"
  ; IADD3 R23, R23, 0x8, RZ
  %".4941" = load i32, ptr %"R23"
  %"add.236" = add i32 %".4941", 8
  %"add.237" = add i32 %"add.236", 0
  store i32 %"add.237", ptr %"R23"
  ; FFMA R52, R52, R43, R44
  %".4944" = load float, ptr %"R52"
  %".4945" = load float, ptr %"R43"
  %".4946" = load float, ptr %"R44"
  %"fmul.201" = fmul float %".4944", %".4945"
  %"fadd.176" = fadd float %"fmul.201", %".4946"
  %".4947" = bitcast ptr %"R52" to ptr
  store float %"fadd.176", ptr %".4947"
  ; FFMA R38, R43, R38, R56
  %".4950" = load float, ptr %"R43"
  %".4951" = load float, ptr %"R38"
  %".4952" = load float, ptr %"R56"
  %"fmul.202" = fmul float %".4950", %".4951"
  %"fadd.177" = fadd float %"fmul.202", %".4952"
  %".4953" = bitcast ptr %"R38" to ptr
  store float %"fadd.177", ptr %".4953"
  ; FFMA R41, R41, R36, R52
  %".4956" = load float, ptr %"R41"
  %".4957" = load float, ptr %"R36"
  %".4958" = load float, ptr %"R52"
  %"fmul.203" = fmul float %".4956", %".4957"
  %"fadd.178" = fadd float %"fmul.203", %".4958"
  %".4959" = bitcast ptr %"R41" to ptr
  store float %"fadd.178", ptr %".4959"
  ; FFMA R38, R36, R39, R38
  %".4962" = load float, ptr %"R36"
  %".4963" = load float, ptr %"R39"
  %".4964" = load float, ptr %"R38"
  %"fmul.204" = fmul float %".4962", %".4963"
  %"fadd.179" = fadd float %"fmul.204", %".4964"
  %".4965" = bitcast ptr %"R38" to ptr
  store float %"fadd.179", ptr %".4965"
  ; FFMA R37, R37, R34, R41
  %".4968" = load float, ptr %"R37"
  %".4969" = load float, ptr %"R34"
  %".4970" = load float, ptr %"R41"
  %"fmul.205" = fmul float %".4968", %".4969"
  %"fadd.180" = fadd float %"fmul.205", %".4970"
  %".4971" = bitcast ptr %"R37" to ptr
  store float %"fadd.180", ptr %".4971"
  ; FFMA R35, R34, R35, R38
  %".4974" = load float, ptr %"R34"
  %".4975" = load float, ptr %"R35"
  %".4976" = load float, ptr %"R38"
  %"fmul.206" = fmul float %".4974", %".4975"
  %"fadd.181" = fadd float %"fmul.206", %".4976"
  %".4977" = bitcast ptr %"R35" to ptr
  store float %"fadd.181", ptr %".4977"
  ; FFMA R37, R45, R40, R37
  %".4980" = load float, ptr %"R45"
  %".4981" = load float, ptr %"R40"
  %".4982" = load float, ptr %"R37"
  %"fmul.207" = fmul float %".4980", %".4981"
  %"fadd.182" = fadd float %"fmul.207", %".4982"
  %".4983" = bitcast ptr %"R37" to ptr
  store float %"fadd.182", ptr %".4983"
  ; FFMA R35, R40, R59, R35
  %".4986" = load float, ptr %"R40"
  %".4987" = load float, ptr %"R59"
  %".4988" = load float, ptr %"R35"
  %"fmul.208" = fmul float %".4986", %".4987"
  %"fadd.183" = fadd float %"fmul.208", %".4988"
  %".4989" = bitcast ptr %"R35" to ptr
  store float %"fadd.183", ptr %".4989"
  ; FFMA R37, R57, R50, R37
  %".4992" = load float, ptr %"R57"
  %".4993" = load float, ptr %"R50"
  %".4994" = load float, ptr %"R37"
  %"fmul.209" = fmul float %".4992", %".4993"
  %"fadd.184" = fadd float %"fmul.209", %".4994"
  %".4995" = bitcast ptr %"R37" to ptr
  store float %"fadd.184", ptr %".4995"
  ; FFMA R35, R50, R55, R35
  %".4998" = load float, ptr %"R50"
  %".4999" = load float, ptr %"R55"
  %".5000" = load float, ptr %"R35"
  %"fmul.210" = fmul float %".4998", %".4999"
  %"fadd.185" = fadd float %"fmul.210", %".5000"
  %".5001" = bitcast ptr %"R35" to ptr
  store float %"fadd.185", ptr %".5001"
  ; FFMA R37, R53, R46, R37
  %".5004" = load float, ptr %"R53"
  %".5005" = load float, ptr %"R46"
  %".5006" = load float, ptr %"R37"
  %"fmul.211" = fmul float %".5004", %".5005"
  %"fadd.186" = fadd float %"fmul.211", %".5006"
  %".5007" = bitcast ptr %"R37" to ptr
  store float %"fadd.186", ptr %".5007"
  ; FFMA R35, R46, R51, R35
  %".5010" = load float, ptr %"R46"
  %".5011" = load float, ptr %"R51"
  %".5012" = load float, ptr %"R35"
  %"fmul.212" = fmul float %".5010", %".5011"
  %"fadd.187" = fadd float %"fmul.212", %".5012"
  %".5013" = bitcast ptr %"R35" to ptr
  store float %"fadd.187", ptr %".5013"
  ; FFMA R37, R47, R42, R37
  %".5016" = load float, ptr %"R47"
  %".5017" = load float, ptr %"R42"
  %".5018" = load float, ptr %"R37"
  %"fmul.213" = fmul float %".5016", %".5017"
  %"fadd.188" = fadd float %"fmul.213", %".5018"
  %".5019" = bitcast ptr %"R37" to ptr
  store float %"fadd.188", ptr %".5019"
  ; FFMA R9, R42, R9, R35
  %".5022" = load float, ptr %"R42"
  %".5023" = load float, ptr %"R9"
  %".5024" = load float, ptr %"R35"
  %"fmul.214" = fmul float %".5022", %".5023"
  %"fadd.189" = fadd float %"fmul.214", %".5024"
  %".5025" = bitcast ptr %"R9" to ptr
  store float %"fadd.189", ptr %".5025"
  ; FFMA R44, R5, R4, R37
  %".5028" = load float, ptr %"R5"
  %".5029" = load float, ptr %"R4"
  %".5030" = load float, ptr %"R37"
  %"fmul.215" = fmul float %".5028", %".5029"
  %"fadd.190" = fadd float %"fmul.215", %".5030"
  %".5031" = bitcast ptr %"R44" to ptr
  store float %"fadd.190", ptr %".5031"
  ; FFMA R56, R4, R11, R9
  %".5034" = load float, ptr %"R4"
  %".5035" = load float, ptr %"R11"
  %".5036" = load float, ptr %"R9"
  %"fmul.216" = fmul float %".5034", %".5035"
  %"fadd.191" = fadd float %"fmul.216", %".5036"
  %".5037" = bitcast ptr %"R56" to ptr
  store float %"fadd.191", ptr %".5037"
  br label %".L_x_31"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".5041" = load i32, ptr %"R22"
  %".5042" = load i1, ptr %"PT"
  %"cmp.39" = icmp ne i32 %".5041", 0
  %".5043" = or i1 %"cmp.39", %".5042"
  store i1 %".5043", ptr %"P0"
  ; @!P0 BRA `(.L_x_27)
  %".5046" = load i1, ptr %"P0"
  %".5047" = icmp eq i1 %".5046", 1
  br i1 %".5047", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".5050" = load i32, ptr %"R0"
  %".5051" = load i32, ptr %"R23"
  %"add.238" = add i32 %".5050", %".5051"
  %"add.239" = add i32 %"add.238", 0
  store i32 %"add.239", ptr %"R5"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6"
  ; LEA R11, R2.reuse, R5, 0x2
  %".5056" = load i32, ptr %"R2"
  %".5057" = load i32, ptr %"R5"
  %"shl.280" = shl i32 %".5056", 2
  %"add.240" = add i32 %"shl.280", %".5057"
  store i32 %"add.240", ptr %"R11"
  ; IMAD R7, R2, 0x3, R5
  %".5060" = load i32, ptr %"R2"
  %".5061" = load i32, ptr %"R5"
  %"mul.82" = mul i32 %".5060", 3
  %"add.241" = add i32 %"mul.82", %".5061"
  store i32 %"add.241", ptr %"R7"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".5064" = load i32, ptr %"R23"
  %".5065" = load i32, ptr %"R6"
  %"mul.83" = mul i32 %".5064", %".5065"
  %"add.242" = add i32 %"mul.83", %"Arg_3"
  store i32 %"add.242", ptr %"R8"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".5068" = load i32, ptr %"R7"
  %".5069" = load i32, ptr %"R6"
  %"mul.84" = mul i32 %".5068", %".5069"
  %"add.243" = add i32 %"mul.84", %"Arg_4"
  store i32 %"add.243", ptr %"R4"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".5072" = load i32, ptr %"R11"
  %".5073" = load i32, ptr %"R6"
  %"mul.85" = mul i32 %".5072", %".5073"
  %"add.244" = add i32 %"mul.85", %"Arg_4"
  store i32 %"add.244", ptr %"R6"
  ; LDG.E.SYS R13, [R8]
  %".5076" = load i32, ptr %"R8"
  %"zext.532" = zext i32 %".5076" to i64
  %".5077" = load i32, ptr %"R9"
  %"zext.533" = zext i32 %".5077" to i64
  %"shl.281" = shl i64 %"zext.533", 32
  %"or.264" = or i64 %"shl.281", %"zext.532"
  %".5078" = inttoptr i64 %"or.264" to ptr
  %".5079" = ptrtoint ptr %".5078" to i64
  %".5080" = add i64 %".5079", 0
  %"for_LDG.259" = inttoptr i64 %".5080" to ptr
  %".5081" = load float, ptr %"for_LDG.259"
  %".5082" = bitcast ptr %"R13" to ptr
  store float %".5081", ptr %".5082"
  ; LDG.E.SYS R11, [R4]
  %".5085" = load i32, ptr %"R4"
  %"zext.534" = zext i32 %".5085" to i64
  %".5086" = load i32, ptr %"R5"
  %"zext.535" = zext i32 %".5086" to i64
  %"shl.282" = shl i64 %"zext.535", 32
  %"or.265" = or i64 %"shl.282", %"zext.534"
  %".5087" = inttoptr i64 %"or.265" to ptr
  %".5088" = ptrtoint ptr %".5087" to i64
  %".5089" = add i64 %".5088", 0
  %"for_LDG.260" = inttoptr i64 %".5089" to ptr
  %".5090" = load float, ptr %"for_LDG.260"
  %".5091" = bitcast ptr %"R11" to ptr
  store float %".5090", ptr %".5091"
  ; LDG.E.SYS R10, [R6]
  %".5094" = load i32, ptr %"R6"
  %"zext.536" = zext i32 %".5094" to i64
  %".5095" = load i32, ptr %"R7"
  %"zext.537" = zext i32 %".5095" to i64
  %"shl.283" = shl i64 %"zext.537", 32
  %"or.266" = or i64 %"shl.283", %"zext.536"
  %".5096" = inttoptr i64 %"or.266" to ptr
  %".5097" = ptrtoint ptr %".5096" to i64
  %".5098" = add i64 %".5097", 0
  %"for_LDG.261" = inttoptr i64 %".5098" to ptr
  %".5099" = load float, ptr %"for_LDG.261"
  %".5100" = bitcast ptr %"R10" to ptr
  store float %".5099", ptr %".5100"
  ; LDG.E.SYS R25, [R8+0x4]
  %".5103" = load i32, ptr %"R8"
  %"zext.538" = zext i32 %".5103" to i64
  %".5104" = load i32, ptr %"R9"
  %"zext.539" = zext i32 %".5104" to i64
  %"shl.284" = shl i64 %"zext.539", 32
  %"or.267" = or i64 %"shl.284", %"zext.538"
  %".5105" = inttoptr i64 %"or.267" to ptr
  %".5106" = ptrtoint ptr %".5105" to i64
  %".5107" = add i64 %".5106", 4
  %"for_LDG.262" = inttoptr i64 %".5107" to ptr
  %".5108" = load float, ptr %"for_LDG.262"
  %".5109" = bitcast ptr %"R25" to ptr
  store float %".5108", ptr %".5109"
  ; LDG.E.SYS R12, [R4+0x4]
  %".5112" = load i32, ptr %"R4"
  %"zext.540" = zext i32 %".5112" to i64
  %".5113" = load i32, ptr %"R5"
  %"zext.541" = zext i32 %".5113" to i64
  %"shl.285" = shl i64 %"zext.541", 32
  %"or.268" = or i64 %"shl.285", %"zext.540"
  %".5114" = inttoptr i64 %"or.268" to ptr
  %".5115" = ptrtoint ptr %".5114" to i64
  %".5116" = add i64 %".5115", 4
  %"for_LDG.263" = inttoptr i64 %".5116" to ptr
  %".5117" = load float, ptr %"for_LDG.263"
  %".5118" = bitcast ptr %"R12" to ptr
  store float %".5117", ptr %".5118"
  ; LDG.E.SYS R24, [R6+0x4]
  %".5121" = load i32, ptr %"R6"
  %"zext.542" = zext i32 %".5121" to i64
  %".5122" = load i32, ptr %"R7"
  %"zext.543" = zext i32 %".5122" to i64
  %"shl.286" = shl i64 %"zext.543", 32
  %"or.269" = or i64 %"shl.286", %"zext.542"
  %".5123" = inttoptr i64 %"or.269" to ptr
  %".5124" = ptrtoint ptr %".5123" to i64
  %".5125" = add i64 %".5124", 4
  %"for_LDG.264" = inttoptr i64 %".5125" to ptr
  %".5126" = load float, ptr %"for_LDG.264"
  %".5127" = bitcast ptr %"R24" to ptr
  store float %".5126", ptr %".5127"
  ; LDG.E.SYS R35, [R8+0x8]
  %".5130" = load i32, ptr %"R8"
  %"zext.544" = zext i32 %".5130" to i64
  %".5131" = load i32, ptr %"R9"
  %"zext.545" = zext i32 %".5131" to i64
  %"shl.287" = shl i64 %"zext.545", 32
  %"or.270" = or i64 %"shl.287", %"zext.544"
  %".5132" = inttoptr i64 %"or.270" to ptr
  %".5133" = ptrtoint ptr %".5132" to i64
  %".5134" = add i64 %".5133", 8
  %"for_LDG.265" = inttoptr i64 %".5134" to ptr
  %".5135" = load float, ptr %"for_LDG.265"
  %".5136" = bitcast ptr %"R35" to ptr
  store float %".5135", ptr %".5136"
  ; LDG.E.SYS R34, [R4+0x8]
  %".5139" = load i32, ptr %"R4"
  %"zext.546" = zext i32 %".5139" to i64
  %".5140" = load i32, ptr %"R5"
  %"zext.547" = zext i32 %".5140" to i64
  %"shl.288" = shl i64 %"zext.547", 32
  %"or.271" = or i64 %"shl.288", %"zext.546"
  %".5141" = inttoptr i64 %"or.271" to ptr
  %".5142" = ptrtoint ptr %".5141" to i64
  %".5143" = add i64 %".5142", 8
  %"for_LDG.266" = inttoptr i64 %".5143" to ptr
  %".5144" = load float, ptr %"for_LDG.266"
  %".5145" = bitcast ptr %"R34" to ptr
  store float %".5144", ptr %".5145"
  ; LDG.E.SYS R36, [R6+0x8]
  %".5148" = load i32, ptr %"R6"
  %"zext.548" = zext i32 %".5148" to i64
  %".5149" = load i32, ptr %"R7"
  %"zext.549" = zext i32 %".5149" to i64
  %"shl.289" = shl i64 %"zext.549", 32
  %"or.272" = or i64 %"shl.289", %"zext.548"
  %".5150" = inttoptr i64 %"or.272" to ptr
  %".5151" = ptrtoint ptr %".5150" to i64
  %".5152" = add i64 %".5151", 8
  %"for_LDG.267" = inttoptr i64 %".5152" to ptr
  %".5153" = load float, ptr %"for_LDG.267"
  %".5154" = bitcast ptr %"R36" to ptr
  store float %".5153", ptr %".5154"
  ; LDG.E.SYS R37, [R8+0xc]
  %".5157" = load i32, ptr %"R8"
  %"zext.550" = zext i32 %".5157" to i64
  %".5158" = load i32, ptr %"R9"
  %"zext.551" = zext i32 %".5158" to i64
  %"shl.290" = shl i64 %"zext.551", 32
  %"or.273" = or i64 %"shl.290", %"zext.550"
  %".5159" = inttoptr i64 %"or.273" to ptr
  %".5160" = ptrtoint ptr %".5159" to i64
  %".5161" = add i64 %".5160", 12
  %"for_LDG.268" = inttoptr i64 %".5161" to ptr
  %".5162" = load float, ptr %"for_LDG.268"
  %".5163" = bitcast ptr %"R37" to ptr
  store float %".5162", ptr %".5163"
  ; LDG.E.SYS R38, [R4+0xc]
  %".5166" = load i32, ptr %"R4"
  %"zext.552" = zext i32 %".5166" to i64
  %".5167" = load i32, ptr %"R5"
  %"zext.553" = zext i32 %".5167" to i64
  %"shl.291" = shl i64 %"zext.553", 32
  %"or.274" = or i64 %"shl.291", %"zext.552"
  %".5168" = inttoptr i64 %"or.274" to ptr
  %".5169" = ptrtoint ptr %".5168" to i64
  %".5170" = add i64 %".5169", 12
  %"for_LDG.269" = inttoptr i64 %".5170" to ptr
  %".5171" = load float, ptr %"for_LDG.269"
  %".5172" = bitcast ptr %"R38" to ptr
  store float %".5171", ptr %".5172"
  ; LDG.E.SYS R39, [R6+0xc]
  %".5175" = load i32, ptr %"R6"
  %"zext.554" = zext i32 %".5175" to i64
  %".5176" = load i32, ptr %"R7"
  %"zext.555" = zext i32 %".5176" to i64
  %"shl.292" = shl i64 %"zext.555", 32
  %"or.275" = or i64 %"shl.292", %"zext.554"
  %".5177" = inttoptr i64 %"or.275" to ptr
  %".5178" = ptrtoint ptr %".5177" to i64
  %".5179" = add i64 %".5178", 12
  %"for_LDG.270" = inttoptr i64 %".5179" to ptr
  %".5180" = load float, ptr %"for_LDG.270"
  %".5181" = bitcast ptr %"R39" to ptr
  store float %".5180", ptr %".5181"
  ; IADD3 R22, R22, -0x4, RZ
  %".5184" = load i32, ptr %"R22"
  %"add.245" = add i32 %".5184", -4
  %"add.246" = add i32 %"add.245", 0
  store i32 %"add.246", ptr %"R22"
  ; IADD3 R23, R23, 0x4, RZ
  %".5187" = load i32, ptr %"R23"
  %"add.247" = add i32 %".5187", 4
  %"add.248" = add i32 %"add.247", 0
  store i32 %"add.248", ptr %"R23"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".5190" = load i32, ptr %"R22"
  %".5191" = load i1, ptr %"PT"
  %"cmp.40" = icmp ne i32 %".5190", 0
  %".5192" = and i1 %"cmp.40", %".5191"
  store i1 %".5192", ptr %"P0"
  ; FFMA R11, R11, R13, R44
  %".5195" = load float, ptr %"R11"
  %".5196" = load float, ptr %"R13"
  %".5197" = load float, ptr %"R44"
  %"fmul.217" = fmul float %".5195", %".5196"
  %"fadd.192" = fadd float %"fmul.217", %".5197"
  %".5198" = bitcast ptr %"R11" to ptr
  store float %"fadd.192", ptr %".5198"
  ; FFMA R10, R13, R10, R56
  %".5201" = load float, ptr %"R13"
  %".5202" = load float, ptr %"R10"
  %".5203" = load float, ptr %"R56"
  %"fmul.218" = fmul float %".5201", %".5202"
  %"fadd.193" = fadd float %"fmul.218", %".5203"
  %".5204" = bitcast ptr %"R10" to ptr
  store float %"fadd.193", ptr %".5204"
  ; FFMA R11, R12, R25, R11
  %".5207" = load float, ptr %"R12"
  %".5208" = load float, ptr %"R25"
  %".5209" = load float, ptr %"R11"
  %"fmul.219" = fmul float %".5207", %".5208"
  %"fadd.194" = fadd float %"fmul.219", %".5209"
  %".5210" = bitcast ptr %"R11" to ptr
  store float %"fadd.194", ptr %".5210"
  ; FFMA R10, R25, R24, R10
  %".5213" = load float, ptr %"R25"
  %".5214" = load float, ptr %"R24"
  %".5215" = load float, ptr %"R10"
  %"fmul.220" = fmul float %".5213", %".5214"
  %"fadd.195" = fadd float %"fmul.220", %".5215"
  %".5216" = bitcast ptr %"R10" to ptr
  store float %"fadd.195", ptr %".5216"
  ; FFMA R11, R34, R35, R11
  %".5219" = load float, ptr %"R34"
  %".5220" = load float, ptr %"R35"
  %".5221" = load float, ptr %"R11"
  %"fmul.221" = fmul float %".5219", %".5220"
  %"fadd.196" = fadd float %"fmul.221", %".5221"
  %".5222" = bitcast ptr %"R11" to ptr
  store float %"fadd.196", ptr %".5222"
  ; FFMA R10, R35, R36, R10
  %".5225" = load float, ptr %"R35"
  %".5226" = load float, ptr %"R36"
  %".5227" = load float, ptr %"R10"
  %"fmul.222" = fmul float %".5225", %".5226"
  %"fadd.197" = fadd float %"fmul.222", %".5227"
  %".5228" = bitcast ptr %"R10" to ptr
  store float %"fadd.197", ptr %".5228"
  ; FFMA R44, R38, R37, R11
  %".5231" = load float, ptr %"R38"
  %".5232" = load float, ptr %"R37"
  %".5233" = load float, ptr %"R11"
  %"fmul.223" = fmul float %".5231", %".5232"
  %"fadd.198" = fadd float %"fmul.223", %".5233"
  %".5234" = bitcast ptr %"R44" to ptr
  store float %"fadd.198", ptr %".5234"
  ; FFMA R56, R37, R39, R10
  %".5237" = load float, ptr %"R37"
  %".5238" = load float, ptr %"R39"
  %".5239" = load float, ptr %"R10"
  %"fmul.224" = fmul float %".5237", %".5238"
  %"fadd.199" = fadd float %"fmul.224", %".5239"
  %".5240" = bitcast ptr %"R56" to ptr
  store float %"fadd.199", ptr %".5240"
  ; @P0 BRA `(.L_x_28)
  %".5243" = load i1, ptr %"P0"
  %".5244" = icmp ne i1 %".5243", 1
  br i1 %".5244", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".5247" = load i32, ptr %"R48"
  %".5248" = load i1, ptr %"PT"
  %"cmp.41" = icmp ne i32 %".5247", 0
  %".5249" = and i1 %"cmp.41", %".5248"
  store i1 %".5249", ptr %"P0"
  ; @!P0 BRA `(.L_x_26)
  %".5252" = load i1, ptr %"P0"
  %".5253" = icmp eq i1 %".5252", 1
  br i1 %".5253", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".5256" = load i32, ptr %"R0"
  %".5257" = load i32, ptr %"R23"
  %"add.249" = add i32 %".5256", %".5257"
  %"add.250" = add i32 %"add.249", 0
  store i32 %"add.250", ptr %"R5"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9"
  ; LEA R8, R2.reuse, R5, 0x2
  %".5262" = load i32, ptr %"R2"
  %".5263" = load i32, ptr %"R5"
  %"shl.293" = shl i32 %".5262", 2
  %"add.251" = add i32 %"shl.293", %".5263"
  store i32 %"add.251", ptr %"R8"
  ; IMAD R6, R2, 0x3, R5
  %".5266" = load i32, ptr %"R2"
  %".5267" = load i32, ptr %"R5"
  %"mul.86" = mul i32 %".5266", 3
  %"add.252" = add i32 %"mul.86", %".5267"
  store i32 %"add.252", ptr %"R6"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".5270" = load i32, ptr %"R23"
  %".5271" = load i32, ptr %"R9"
  %"mul.87" = mul i32 %".5270", %".5271"
  %"add.253" = add i32 %"mul.87", %"Arg_3"
  store i32 %"add.253", ptr %"R4"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".5274" = load i32, ptr %"R6"
  %".5275" = load i32, ptr %"R9"
  %"mul.88" = mul i32 %".5274", %".5275"
  %"add.254" = add i32 %"mul.88", %"Arg_4"
  store i32 %"add.254", ptr %"R6"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".5278" = load i32, ptr %"R8"
  %".5279" = load i32, ptr %"R9"
  %"mul.89" = mul i32 %".5278", %".5279"
  %"add.255" = add i32 %"mul.89", %"Arg_4"
  store i32 %"add.255", ptr %"R8"
  ; LDG.E.SYS R13, [R4]
  %".5282" = load i32, ptr %"R4"
  %"zext.556" = zext i32 %".5282" to i64
  %".5283" = load i32, ptr %"R5"
  %"zext.557" = zext i32 %".5283" to i64
  %"shl.294" = shl i64 %"zext.557", 32
  %"or.276" = or i64 %"shl.294", %"zext.556"
  %".5284" = inttoptr i64 %"or.276" to ptr
  %".5285" = ptrtoint ptr %".5284" to i64
  %".5286" = add i64 %".5285", 0
  %"for_LDG.271" = inttoptr i64 %".5286" to ptr
  %".5287" = load float, ptr %"for_LDG.271"
  %".5288" = bitcast ptr %"R13" to ptr
  store float %".5287", ptr %".5288"
  ; LDG.E.SYS R11, [R6]
  %".5291" = load i32, ptr %"R6"
  %"zext.558" = zext i32 %".5291" to i64
  %".5292" = load i32, ptr %"R7"
  %"zext.559" = zext i32 %".5292" to i64
  %"shl.295" = shl i64 %"zext.559", 32
  %"or.277" = or i64 %"shl.295", %"zext.558"
  %".5293" = inttoptr i64 %"or.277" to ptr
  %".5294" = ptrtoint ptr %".5293" to i64
  %".5295" = add i64 %".5294", 0
  %"for_LDG.272" = inttoptr i64 %".5295" to ptr
  %".5296" = load float, ptr %"for_LDG.272"
  %".5297" = bitcast ptr %"R11" to ptr
  store float %".5296", ptr %".5297"
  ; LDG.E.SYS R10, [R8]
  %".5300" = load i32, ptr %"R8"
  %"zext.560" = zext i32 %".5300" to i64
  %".5301" = load i32, ptr %"R9"
  %"zext.561" = zext i32 %".5301" to i64
  %"shl.296" = shl i64 %"zext.561", 32
  %"or.278" = or i64 %"shl.296", %"zext.560"
  %".5302" = inttoptr i64 %"or.278" to ptr
  %".5303" = ptrtoint ptr %".5302" to i64
  %".5304" = add i64 %".5303", 0
  %"for_LDG.273" = inttoptr i64 %".5304" to ptr
  %".5305" = load float, ptr %"for_LDG.273"
  %".5306" = bitcast ptr %"R10" to ptr
  store float %".5305", ptr %".5306"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".5309" = load i32, ptr %"R48"
  %".5310" = load i1, ptr %"PT"
  %"cmp.42" = icmp ne i32 %".5309", 1
  %".5311" = and i1 %"cmp.42", %".5310"
  store i1 %".5311", ptr %"P0"
  ; FFMA R44, R11, R13, R44
  %".5314" = load float, ptr %"R11"
  %".5315" = load float, ptr %"R13"
  %".5316" = load float, ptr %"R44"
  %"fmul.225" = fmul float %".5314", %".5315"
  %"fadd.200" = fadd float %"fmul.225", %".5316"
  %".5317" = bitcast ptr %"R44" to ptr
  store float %"fadd.200", ptr %".5317"
  ; FFMA R56, R13, R10, R56
  %".5320" = load float, ptr %"R13"
  %".5321" = load float, ptr %"R10"
  %".5322" = load float, ptr %"R56"
  %"fmul.226" = fmul float %".5320", %".5321"
  %"fadd.201" = fadd float %"fmul.226", %".5322"
  %".5323" = bitcast ptr %"R56" to ptr
  store float %"fadd.201", ptr %".5323"
  ; @!P0 BRA `(.L_x_26)
  %".5326" = load i1, ptr %"P0"
  %".5327" = icmp eq i1 %".5326", 1
  br i1 %".5327", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".5330" = load i32, ptr %"R48"
  %".5331" = load i1, ptr %"PT"
  %"cmp.43" = icmp ne i32 %".5330", 2
  %".5332" = and i1 %"cmp.43", %".5331"
  store i1 %".5332", ptr %"P0"
  ; LDG.E.SYS R11, [R6+0x4]
  %".5335" = load i32, ptr %"R6"
  %"zext.562" = zext i32 %".5335" to i64
  %".5336" = load i32, ptr %"R7"
  %"zext.563" = zext i32 %".5336" to i64
  %"shl.297" = shl i64 %"zext.563", 32
  %"or.279" = or i64 %"shl.297", %"zext.562"
  %".5337" = inttoptr i64 %"or.279" to ptr
  %".5338" = ptrtoint ptr %".5337" to i64
  %".5339" = add i64 %".5338", 4
  %"for_LDG.274" = inttoptr i64 %".5339" to ptr
  %".5340" = load float, ptr %"for_LDG.274"
  %".5341" = bitcast ptr %"R11" to ptr
  store float %".5340", ptr %".5341"
  ; LDG.E.SYS R13, [R4+0x4]
  %".5344" = load i32, ptr %"R4"
  %"zext.564" = zext i32 %".5344" to i64
  %".5345" = load i32, ptr %"R5"
  %"zext.565" = zext i32 %".5345" to i64
  %"shl.298" = shl i64 %"zext.565", 32
  %"or.280" = or i64 %"shl.298", %"zext.564"
  %".5346" = inttoptr i64 %"or.280" to ptr
  %".5347" = ptrtoint ptr %".5346" to i64
  %".5348" = add i64 %".5347", 4
  %"for_LDG.275" = inttoptr i64 %".5348" to ptr
  %".5349" = load float, ptr %"for_LDG.275"
  %".5350" = bitcast ptr %"R13" to ptr
  store float %".5349", ptr %".5350"
  ; LDG.E.SYS R10, [R8+0x4]
  %".5353" = load i32, ptr %"R8"
  %"zext.566" = zext i32 %".5353" to i64
  %".5354" = load i32, ptr %"R9"
  %"zext.567" = zext i32 %".5354" to i64
  %"shl.299" = shl i64 %"zext.567", 32
  %"or.281" = or i64 %"shl.299", %"zext.566"
  %".5355" = inttoptr i64 %"or.281" to ptr
  %".5356" = ptrtoint ptr %".5355" to i64
  %".5357" = add i64 %".5356", 4
  %"for_LDG.276" = inttoptr i64 %".5357" to ptr
  %".5358" = load float, ptr %"for_LDG.276"
  %".5359" = bitcast ptr %"R10" to ptr
  store float %".5358", ptr %".5359"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".5362" = load i1, ptr %"P0"
  %".5363" = icmp ne i1 %".5362", 1
  br i1 %".5363", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  %".5366" = load i32, ptr %"R6"
  %"zext.568" = zext i32 %".5366" to i64
  %".5367" = load i32, ptr %"R7"
  %"zext.569" = zext i32 %".5367" to i64
  %"shl.300" = shl i64 %"zext.569", 32
  %"or.282" = or i64 %"shl.300", %"zext.568"
  %".5368" = inttoptr i64 %"or.282" to ptr
  %".5369" = ptrtoint ptr %".5368" to i64
  %".5370" = add i64 %".5369", 8
  %"for_LDG.277" = inttoptr i64 %".5370" to ptr
  %".5371" = load float, ptr %"for_LDG.277"
  %".5372" = bitcast ptr %"R23" to ptr
  store float %".5371", ptr %".5372"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".5377" = load i1, ptr %"P0"
  %".5378" = icmp ne i1 %".5377", 1
  br i1 %".5378", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  %".5381" = load i32, ptr %"R4"
  %"zext.570" = zext i32 %".5381" to i64
  %".5382" = load i32, ptr %"R5"
  %"zext.571" = zext i32 %".5382" to i64
  %"shl.301" = shl i64 %"zext.571", 32
  %"or.283" = or i64 %"shl.301", %"zext.570"
  %".5383" = inttoptr i64 %"or.283" to ptr
  %".5384" = ptrtoint ptr %".5383" to i64
  %".5385" = add i64 %".5384", 8
  %"for_LDG.278" = inttoptr i64 %".5385" to ptr
  %".5386" = load float, ptr %"for_LDG.278"
  %".5387" = bitcast ptr %"R25" to ptr
  store float %".5386", ptr %".5387"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".5392" = load i1, ptr %"P0"
  %".5393" = icmp ne i1 %".5392", 1
  br i1 %".5393", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  %".5396" = load i32, ptr %"R8"
  %"zext.572" = zext i32 %".5396" to i64
  %".5397" = load i32, ptr %"R9"
  %"zext.573" = zext i32 %".5397" to i64
  %"shl.302" = shl i64 %"zext.573", 32
  %"or.284" = or i64 %"shl.302", %"zext.572"
  %".5398" = inttoptr i64 %"or.284" to ptr
  %".5399" = ptrtoint ptr %".5398" to i64
  %".5400" = add i64 %".5399", 8
  %"for_LDG.279" = inttoptr i64 %".5400" to ptr
  %".5401" = load float, ptr %"for_LDG.279"
  %".5402" = bitcast ptr %"R12" to ptr
  store float %".5401", ptr %".5402"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".5407" = load float, ptr %"R11"
  %".5408" = load float, ptr %"R13"
  %".5409" = load float, ptr %"R44"
  %"fmul.227" = fmul float %".5407", %".5408"
  %"fadd.202" = fadd float %"fmul.227", %".5409"
  %".5410" = bitcast ptr %"R44" to ptr
  store float %"fadd.202", ptr %".5410"
  ; FFMA R56, R13, R10, R56
  %".5413" = load float, ptr %"R13"
  %".5414" = load float, ptr %"R10"
  %".5415" = load float, ptr %"R56"
  %"fmul.228" = fmul float %".5413", %".5414"
  %"fadd.203" = fadd float %"fmul.228", %".5415"
  %".5416" = bitcast ptr %"R56" to ptr
  store float %"fadd.203", ptr %".5416"
  ; @P0 FFMA R44, R23, R25, R44
  %".5419" = load i1, ptr %"P0"
  %".5420" = icmp ne i1 %".5419", 1
  br i1 %".5420", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".5423" = load float, ptr %"R23"
  %".5424" = load float, ptr %"R25"
  %".5425" = load float, ptr %"R44"
  %"fmul.229" = fmul float %".5423", %".5424"
  %"fadd.204" = fadd float %"fmul.229", %".5425"
  %".5426" = bitcast ptr %"R44" to ptr
  store float %"fadd.204", ptr %".5426"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".5431" = load i1, ptr %"P0"
  %".5432" = icmp ne i1 %".5431", 1
  br i1 %".5432", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".5435" = load float, ptr %"R25"
  %".5436" = load float, ptr %"R12"
  %".5437" = load float, ptr %"R56"
  %"fmul.230" = fmul float %".5435", %".5436"
  %"fadd.205" = fadd float %"fmul.230", %".5437"
  %".5438" = bitcast ptr %"R56" to ptr
  store float %"fadd.205", ptr %".5438"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  %".5443" = load i32, ptr %"R26"
  %"zext.574" = zext i32 %".5443" to i64
  %"zext.575" = zext i32 0 to i64
  %"shl.303" = shl i64 %"zext.575", 32
  %"or.285" = or i64 %"shl.303", %"zext.574"
  %".5444" = inttoptr i64 %"or.285" to ptr
  %".5445" = ptrtoint ptr %".5444" to i64
  %".5446" = add i64 %".5445", 0
  %"for_LDG.280" = inttoptr i64 %".5446" to ptr
  %".5447" = load float, ptr %"for_LDG.280"
  %".5448" = bitcast ptr %"R5" to ptr
  store float %".5447", ptr %".5448"
  ; MOV R4, 0x3bbb989d
  %".5451" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".5451"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  %".5455" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".5455"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".5459" = load float, ptr %"R5"
  %".5460" = load float, ptr %"R44"
  %"fadd.206" = fadd float %".5459", %".5460"
  %".5461" = bitcast ptr %"R5" to ptr
  store float %"fadd.206", ptr %".5461"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".5464" = load float, ptr %"R5"
  %".5465" = fneg float %".5464"
  %".5466" = load float, ptr %"R4"
  %"fmul.231" = fmul float %".5465", %".5466"
  %"fadd.207" = fadd float %"fmul.231", 0x3fe0000000000000
  %".5467" = bitcast ptr %"R4" to ptr
  store float %"fadd.207", ptr %".5467"
  ; FFMA.RM R4, R4, R7, 12582913
  %".5470" = load float, ptr %"R4"
  %".5471" = load float, ptr %"R7"
  %"fmul.232" = fmul float %".5470", %".5471"
  %"fadd.208" = fadd float %"fmul.232", 0x4168000020000000
  %".5472" = bitcast ptr %"R4" to ptr
  store float %"fadd.208", ptr %".5472"
  ; FADD R6, R4.reuse, -12583039
  %".5475" = load float, ptr %"R4"
  %"fadd.209" = fadd float %".5475", 0xc168000fe0000000
  %".5476" = bitcast ptr %"R6" to ptr
  store float %"fadd.209", ptr %".5476"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".5479" = icmp ult i32 23, 32
  %"SHF_min.4" = select  i1 %".5479", i32 23, i32 32
  %".5480" = load i32, ptr %"R4"
  %"zext.576" = zext i32 0 to i64
  %"zext.577" = zext i32 %".5480" to i64
  %"zext.578" = zext i32 23 to i64
  %"shl.304" = shl i64 %"zext.576", 32
  %"or.286" = or i64 %"shl.304", %"zext.577"
  %"shl.305" = shl i64 %"or.286", %"zext.578"
  %"and.2" = and i64 %"shl.305", 4294967295
  %"trunc32.4" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.4", ptr %"R4"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".5483" = load float, ptr %"R5"
  %".5484" = fneg float %".5483"
  %".5485" = load float, ptr %"R6"
  %".5486" = fneg float %".5485"
  %"fmul.233" = fmul float %".5484", 0x3ff7154760000000
  %"fadd.210" = fadd float %"fmul.233", %".5486"
  %".5487" = bitcast ptr %"R6" to ptr
  store float %"fadd.210", ptr %".5487"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".5490" = load float, ptr %"R5"
  %".5491" = fneg float %".5490"
  %".5492" = load float, ptr %"R6"
  %"fmul.234" = fmul float %".5491", 0x3e54ae0c00000000
  %"fadd.211" = fadd float %"fmul.234", %".5492"
  %".5493" = bitcast ptr %"R6" to ptr
  store float %"fadd.211", ptr %".5493"
  ; MUFU.EX2 R5, R6
  %".5496" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".5496")
  %".5497" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".5497"
  ; FFMA R24, R4, R5, 1
  %".5500" = load float, ptr %"R4"
  %".5501" = load float, ptr %"R5"
  %"fmul.235" = fmul float %".5500", %".5501"
  %"fadd.212" = fadd float %"fmul.235", 0x3ff0000000000000
  %".5502" = bitcast ptr %"R24" to ptr
  store float %"fadd.212", ptr %".5502"
  ; IADD3 R4, R24, 0x1800000, RZ
  %".5505" = load i32, ptr %"R24"
  %"add.256" = add i32 %".5505", 25165824
  %"add.257" = add i32 %"add.256", 0
  store i32 %"add.257", ptr %"R4"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".5508" = load i32, ptr %"R4"
  %".5509" = and i32 %".5508", 2139095040
  store i32 %".5509", ptr %"R4"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".5512" = load i32, ptr %"R4"
  %".5513" = load i1, ptr %"PT"
  %"cmp.44" = icmp sgt i32 %".5512", 33554431
  %".5514" = and i1 %"cmp.44", %".5513"
  store i1 %".5514", ptr %"P0"
  ; @P0 BRA `(.L_x_33)
  %".5517" = load i1, ptr %"P0"
  %".5518" = icmp ne i1 %".5517", 1
  br i1 %".5518", label %".L_x_33", label %".L_x_26_split_0x3910"
.L_x_26_split_0x3910:
  ; MOV R10, 0x3930
  store i32 14640, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  call void @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; BRA `(.L_x_34)
  br label %".L_x_34"
.L_x_33:
  ; MUFU.RCP R22, R24
  %".5526" = load float, ptr %"R24"
  %".5527" = fdiv float 0x3ff0000000000000, %".5526"
  %".5528" = bitcast ptr %"R22" to ptr
  store float %".5527", ptr %".5528"
  ; FFMA R4, R24, R22, -1
  %".5531" = load float, ptr %"R24"
  %".5532" = load float, ptr %"R22"
  %"fmul.236" = fmul float %".5531", %".5532"
  %"fadd.213" = fadd float %"fmul.236", 0xbff0000000000000
  %".5533" = bitcast ptr %"R4" to ptr
  store float %"fadd.213", ptr %".5533"
  ; FADD.FTZ R5, -R4, -RZ
  %".5536" = load float, ptr %"R4"
  %".5537" = fneg float %".5536"
  %"fadd.214" = fadd float %".5537",              0x0
  %".5538" = bitcast ptr %"R5" to ptr
  store float %"fadd.214", ptr %".5538"
  ; FFMA R22, R22, R5, R22
  %".5541" = load float, ptr %"R22"
  %".5542" = load float, ptr %"R5"
  %".5543" = load float, ptr %"R22"
  %"fmul.237" = fmul float %".5541", %".5542"
  %"fadd.215" = fadd float %"fmul.237", %".5543"
  %".5544" = bitcast ptr %"R22" to ptr
  store float %"fadd.215", ptr %".5544"
  br label %".L_x_34"
.L_x_34:
  ; BSYNC B0
  br label %".L_x_32"
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  %".5550" = load i32, ptr %"R32"
  %"zext.579" = zext i32 %".5550" to i64
  %".5551" = load i32, ptr %"R33"
  %"zext.580" = zext i32 %".5551" to i64
  %"shl.306" = shl i64 %"zext.580", 32
  %"or.287" = or i64 %"shl.306", %"zext.579"
  %".5552" = inttoptr i64 %"or.287" to ptr
  %".5553" = ptrtoint ptr %".5552" to i64
  %".5554" = add i64 %".5553", 0
  %"for_LDG.281" = inttoptr i64 %".5554" to ptr
  %".5555" = load float, ptr %"for_LDG.281"
  %".5556" = bitcast ptr %"R5" to ptr
  store float %".5555", ptr %".5556"
  ; MOV R4, 0x3bbb989d
  %".5559" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".5559"
  ; MOV R7, 0x437c0000
  %".5562" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".5562"
  ; FADD R5, R5, R56
  %".5565" = load float, ptr %"R5"
  %".5566" = load float, ptr %"R56"
  %"fadd.216" = fadd float %".5565", %".5566"
  %".5567" = bitcast ptr %"R5" to ptr
  store float %"fadd.216", ptr %".5567"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".5570" = load float, ptr %"R5"
  %".5571" = fneg float %".5570"
  %".5572" = load float, ptr %"R4"
  %"fmul.238" = fmul float %".5571", %".5572"
  %"fadd.217" = fadd float %"fmul.238", 0x3fe0000000000000
  %".5573" = bitcast ptr %"R4" to ptr
  store float %"fadd.217", ptr %".5573"
  ; FFMA.RM R4, R4, R7, 12582913
  %".5576" = load float, ptr %"R4"
  %".5577" = load float, ptr %"R7"
  %"fmul.239" = fmul float %".5576", %".5577"
  %"fadd.218" = fadd float %"fmul.239", 0x4168000020000000
  %".5578" = bitcast ptr %"R4" to ptr
  store float %"fadd.218", ptr %".5578"
  ; FADD R6, R4.reuse, -12583039
  %".5581" = load float, ptr %"R4"
  %"fadd.219" = fadd float %".5581", 0xc168000fe0000000
  %".5582" = bitcast ptr %"R6" to ptr
  store float %"fadd.219", ptr %".5582"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".5585" = icmp ult i32 23, 32
  %"SHF_min.5" = select  i1 %".5585", i32 23, i32 32
  %".5586" = load i32, ptr %"R4"
  %"zext.581" = zext i32 0 to i64
  %"zext.582" = zext i32 %".5586" to i64
  %"zext.583" = zext i32 23 to i64
  %"shl.307" = shl i64 %"zext.581", 32
  %"or.288" = or i64 %"shl.307", %"zext.582"
  %"shl.308" = shl i64 %"or.288", %"zext.583"
  %"and.3" = and i64 %"shl.308", 4294967295
  %"trunc32.5" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.5", ptr %"R23"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".5589" = load float, ptr %"R5"
  %".5590" = fneg float %".5589"
  %".5591" = load float, ptr %"R6"
  %".5592" = fneg float %".5591"
  %"fmul.240" = fmul float %".5590", 0x3ff7154760000000
  %"fadd.220" = fadd float %"fmul.240", %".5592"
  %".5593" = bitcast ptr %"R6" to ptr
  store float %"fadd.220", ptr %".5593"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".5596" = load float, ptr %"R5"
  %".5597" = fneg float %".5596"
  %".5598" = load float, ptr %"R6"
  %"fmul.241" = fmul float %".5597", 0x3e54ae0c00000000
  %"fadd.221" = fadd float %"fmul.241", %".5598"
  %".5599" = bitcast ptr %"R6" to ptr
  store float %"fadd.221", ptr %".5599"
  ; MUFU.EX2 R6, R6
  %".5602" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".5602")
  %".5603" = bitcast ptr %"R6" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".5603"
  ; FFMA R23, R23, R6, 1
  %".5606" = load float, ptr %"R23"
  %".5607" = load float, ptr %"R6"
  %"fmul.242" = fmul float %".5606", %".5607"
  %"fadd.222" = fadd float %"fmul.242", 0x3ff0000000000000
  %".5608" = bitcast ptr %"R23" to ptr
  store float %"fadd.222", ptr %".5608"
  ; @!P4 BRA `(.L_x_35)
  %".5611" = load i1, ptr %"P4"
  %".5612" = icmp eq i1 %".5611", 1
  br i1 %".5612", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".5615" = load i32, ptr %"R18"
  %".5616" = load i1, ptr %"PT"
  %"cmp.45" = icmp sge i32 %".5615", 3
  %".5617" = and i1 %"cmp.45", %".5616"
  store i1 %".5617", ptr %"P0"
  ; MOV R34, RZ
  %".5620" = load i32, ptr %"RZ"
  store i32 %".5620", ptr %"R34"
  ; @!P0 BRA `(.L_x_36)
  %".5623" = load i1, ptr %"P0"
  %".5624" = icmp eq i1 %".5623", 1
  br i1 %".5624", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".5627" = load i32, ptr %"R20"
  %".5628" = load i1, ptr %"PT"
  %"cmp.46" = icmp sgt i32 %".5627", 0
  %".5629" = and i1 %"cmp.46", %".5628"
  store i1 %".5629", ptr %"P0"
  ; MOV R34, RZ
  %".5632" = load i32, ptr %"RZ"
  store i32 %".5632", ptr %"R34"
  ; MOV R35, R20
  %".5635" = load i32, ptr %"R20"
  store i32 %".5635", ptr %"R35"
  ; @!P0 BRA `(.L_x_37)
  %".5638" = load i1, ptr %"P0"
  %".5639" = icmp eq i1 %".5638", 1
  br i1 %".5639", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".5642" = load i32, ptr %"R35"
  %".5643" = load i1, ptr %"PT"
  %"cmp.47" = icmp sgt i32 %".5642", 12
  %".5644" = and i1 %"cmp.47", %".5643"
  store i1 %".5644", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".5647" = and i1 1, 1
  %".5648" = or i1 %".5647", 1
  ; @!P1 BRA `(.L_x_38)
  %".5650" = load i1, ptr %"P1"
  %".5651" = icmp eq i1 %".5650", 1
  br i1 %".5651", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".5654" = xor i1 1, 1
  %".5655" = and i1 %".5654", 1
  %".5656" = and i1 %".5655", 1
  br label %".L_x_39"
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41"
  ; IADD3 R10, R3, R34, RZ
  %".5661" = load i32, ptr %"R3"
  %".5662" = load i32, ptr %"R34"
  %"add.258" = add i32 %".5661", %".5662"
  %"add.259" = add i32 %"add.258", 0
  store i32 %"add.259", ptr %"R10"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".5665" = load i32, ptr %"R34"
  %".5666" = load i32, ptr %"R41"
  %"mul.90" = mul i32 %".5665", %".5666"
  %"add.260" = add i32 %"mul.90", %"Arg_3"
  store i32 %"add.260", ptr %"R12"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".5669" = load i32, ptr %"R10"
  %".5670" = load i32, ptr %"R41"
  %"mul.91" = mul i32 %".5669", %".5670"
  %"add.261" = add i32 %"mul.91", %"Arg_4"
  store i32 %"add.261", ptr %"R10"
  ; IADD3 R4, R34, 0x4, RZ
  %".5673" = load i32, ptr %"R34"
  %"add.262" = add i32 %".5673", 4
  %"add.263" = add i32 %"add.262", 0
  store i32 %"add.263", ptr %"R4"
  ; LDG.E.SYS R25, [R12]
  %".5676" = load i32, ptr %"R12"
  %"zext.584" = zext i32 %".5676" to i64
  %".5677" = load i32, ptr %"R13"
  %"zext.585" = zext i32 %".5677" to i64
  %"shl.309" = shl i64 %"zext.585", 32
  %"or.289" = or i64 %"shl.309", %"zext.584"
  %".5678" = inttoptr i64 %"or.289" to ptr
  %".5679" = ptrtoint ptr %".5678" to i64
  %".5680" = add i64 %".5679", 0
  %"for_LDG.282" = inttoptr i64 %".5680" to ptr
  %".5681" = load float, ptr %"for_LDG.282"
  %".5682" = bitcast ptr %"R25" to ptr
  store float %".5681", ptr %".5682"
  ; IADD3 R6, R3, R4, RZ
  %".5685" = load i32, ptr %"R3"
  %".5686" = load i32, ptr %"R4"
  %"add.264" = add i32 %".5685", %".5686"
  %"add.265" = add i32 %"add.264", 0
  store i32 %"add.265", ptr %"R6"
  ; LDG.E.SYS R36, [R10]
  %".5689" = load i32, ptr %"R10"
  %"zext.586" = zext i32 %".5689" to i64
  %".5690" = load i32, ptr %"R11"
  %"zext.587" = zext i32 %".5690" to i64
  %"shl.310" = shl i64 %"zext.587", 32
  %"or.290" = or i64 %"shl.310", %"zext.586"
  %".5691" = inttoptr i64 %"or.290" to ptr
  %".5692" = ptrtoint ptr %".5691" to i64
  %".5693" = add i64 %".5692", 0
  %"for_LDG.283" = inttoptr i64 %".5693" to ptr
  %".5694" = load float, ptr %"for_LDG.283"
  %".5695" = bitcast ptr %"R36" to ptr
  store float %".5694", ptr %".5695"
  ; LDG.E.SYS R37, [R12+0x4]
  %".5698" = load i32, ptr %"R12"
  %"zext.588" = zext i32 %".5698" to i64
  %".5699" = load i32, ptr %"R13"
  %"zext.589" = zext i32 %".5699" to i64
  %"shl.311" = shl i64 %"zext.589", 32
  %"or.291" = or i64 %"shl.311", %"zext.588"
  %".5700" = inttoptr i64 %"or.291" to ptr
  %".5701" = ptrtoint ptr %".5700" to i64
  %".5702" = add i64 %".5701", 4
  %"for_LDG.284" = inttoptr i64 %".5702" to ptr
  %".5703" = load float, ptr %"for_LDG.284"
  %".5704" = bitcast ptr %"R37" to ptr
  store float %".5703", ptr %".5704"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".5707" = load i32, ptr %"R4"
  %".5708" = load i32, ptr %"R41"
  %"mul.92" = mul i32 %".5707", %".5708"
  %"add.266" = add i32 %"mul.92", %"Arg_3"
  store i32 %"add.266", ptr %"R4"
  ; LDG.E.SYS R24, [R10+0x4]
  %".5711" = load i32, ptr %"R10"
  %"zext.590" = zext i32 %".5711" to i64
  %".5712" = load i32, ptr %"R11"
  %"zext.591" = zext i32 %".5712" to i64
  %"shl.312" = shl i64 %"zext.591", 32
  %"or.292" = or i64 %"shl.312", %"zext.590"
  %".5713" = inttoptr i64 %"or.292" to ptr
  %".5714" = ptrtoint ptr %".5713" to i64
  %".5715" = add i64 %".5714", 4
  %"for_LDG.285" = inttoptr i64 %".5715" to ptr
  %".5716" = load float, ptr %"for_LDG.285"
  %".5717" = bitcast ptr %"R24" to ptr
  store float %".5716", ptr %".5717"
  ; LDG.E.SYS R39, [R12+0x8]
  %".5720" = load i32, ptr %"R12"
  %"zext.592" = zext i32 %".5720" to i64
  %".5721" = load i32, ptr %"R13"
  %"zext.593" = zext i32 %".5721" to i64
  %"shl.313" = shl i64 %"zext.593", 32
  %"or.293" = or i64 %"shl.313", %"zext.592"
  %".5722" = inttoptr i64 %"or.293" to ptr
  %".5723" = ptrtoint ptr %".5722" to i64
  %".5724" = add i64 %".5723", 8
  %"for_LDG.286" = inttoptr i64 %".5724" to ptr
  %".5725" = load float, ptr %"for_LDG.286"
  %".5726" = bitcast ptr %"R39" to ptr
  store float %".5725", ptr %".5726"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".5729" = load i32, ptr %"R6"
  %".5730" = load i32, ptr %"R41"
  %"mul.93" = mul i32 %".5729", %".5730"
  %"add.267" = add i32 %"mul.93", %"Arg_4"
  store i32 %"add.267", ptr %"R6"
  ; LDG.E.SYS R38, [R10+0x8]
  %".5733" = load i32, ptr %"R10"
  %"zext.594" = zext i32 %".5733" to i64
  %".5734" = load i32, ptr %"R11"
  %"zext.595" = zext i32 %".5734" to i64
  %"shl.314" = shl i64 %"zext.595", 32
  %"or.294" = or i64 %"shl.314", %"zext.594"
  %".5735" = inttoptr i64 %"or.294" to ptr
  %".5736" = ptrtoint ptr %".5735" to i64
  %".5737" = add i64 %".5736", 8
  %"for_LDG.287" = inttoptr i64 %".5737" to ptr
  %".5738" = load float, ptr %"for_LDG.287"
  %".5739" = bitcast ptr %"R38" to ptr
  store float %".5738", ptr %".5739"
  ; LDG.E.SYS R43, [R12+0xc]
  %".5742" = load i32, ptr %"R12"
  %"zext.596" = zext i32 %".5742" to i64
  %".5743" = load i32, ptr %"R13"
  %"zext.597" = zext i32 %".5743" to i64
  %"shl.315" = shl i64 %"zext.597", 32
  %"or.295" = or i64 %"shl.315", %"zext.596"
  %".5744" = inttoptr i64 %"or.295" to ptr
  %".5745" = ptrtoint ptr %".5744" to i64
  %".5746" = add i64 %".5745", 12
  %"for_LDG.288" = inttoptr i64 %".5746" to ptr
  %".5747" = load float, ptr %"for_LDG.288"
  %".5748" = bitcast ptr %"R43" to ptr
  store float %".5747", ptr %".5748"
  ; IADD3 R8, R34, 0x8, RZ
  %".5751" = load i32, ptr %"R34"
  %"add.268" = add i32 %".5751", 8
  %"add.269" = add i32 %"add.268", 0
  store i32 %"add.269", ptr %"R8"
  ; LDG.E.SYS R46, [R10+0xc]
  %".5754" = load i32, ptr %"R10"
  %"zext.598" = zext i32 %".5754" to i64
  %".5755" = load i32, ptr %"R11"
  %"zext.599" = zext i32 %".5755" to i64
  %"shl.316" = shl i64 %"zext.599", 32
  %"or.296" = or i64 %"shl.316", %"zext.598"
  %".5756" = inttoptr i64 %"or.296" to ptr
  %".5757" = ptrtoint ptr %".5756" to i64
  %".5758" = add i64 %".5757", 12
  %"for_LDG.289" = inttoptr i64 %".5758" to ptr
  %".5759" = load float, ptr %"for_LDG.289"
  %".5760" = bitcast ptr %"R46" to ptr
  store float %".5759", ptr %".5760"
  ; LDG.E.SYS R51, [R4]
  %".5763" = load i32, ptr %"R4"
  %"zext.600" = zext i32 %".5763" to i64
  %".5764" = load i32, ptr %"R5"
  %"zext.601" = zext i32 %".5764" to i64
  %"shl.317" = shl i64 %"zext.601", 32
  %"or.297" = or i64 %"shl.317", %"zext.600"
  %".5765" = inttoptr i64 %"or.297" to ptr
  %".5766" = ptrtoint ptr %".5765" to i64
  %".5767" = add i64 %".5766", 0
  %"for_LDG.290" = inttoptr i64 %".5767" to ptr
  %".5768" = load float, ptr %"for_LDG.290"
  %".5769" = bitcast ptr %"R51" to ptr
  store float %".5768", ptr %".5769"
  ; IADD3 R50, R3, R8, RZ
  %".5772" = load i32, ptr %"R3"
  %".5773" = load i32, ptr %"R8"
  %"add.270" = add i32 %".5772", %".5773"
  %"add.271" = add i32 %"add.270", 0
  store i32 %"add.271", ptr %"R50"
  ; LDG.E.SYS R44, [R6]
  %".5776" = load i32, ptr %"R6"
  %"zext.602" = zext i32 %".5776" to i64
  %".5777" = load i32, ptr %"R7"
  %"zext.603" = zext i32 %".5777" to i64
  %"shl.318" = shl i64 %"zext.603", 32
  %"or.298" = or i64 %"shl.318", %"zext.602"
  %".5778" = inttoptr i64 %"or.298" to ptr
  %".5779" = ptrtoint ptr %".5778" to i64
  %".5780" = add i64 %".5779", 0
  %"for_LDG.291" = inttoptr i64 %".5780" to ptr
  %".5781" = load float, ptr %"for_LDG.291"
  %".5782" = bitcast ptr %"R44" to ptr
  store float %".5781", ptr %".5782"
  ; LDG.E.SYS R47, [R4+0x4]
  %".5785" = load i32, ptr %"R4"
  %"zext.604" = zext i32 %".5785" to i64
  %".5786" = load i32, ptr %"R5"
  %"zext.605" = zext i32 %".5786" to i64
  %"shl.319" = shl i64 %"zext.605", 32
  %"or.299" = or i64 %"shl.319", %"zext.604"
  %".5787" = inttoptr i64 %"or.299" to ptr
  %".5788" = ptrtoint ptr %".5787" to i64
  %".5789" = add i64 %".5788", 4
  %"for_LDG.292" = inttoptr i64 %".5789" to ptr
  %".5790" = load float, ptr %"for_LDG.292"
  %".5791" = bitcast ptr %"R47" to ptr
  store float %".5790", ptr %".5791"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".5794" = load i32, ptr %"R8"
  %".5795" = load i32, ptr %"R41"
  %"mul.94" = mul i32 %".5794", %".5795"
  %"add.272" = add i32 %"mul.94", %"Arg_3"
  store i32 %"add.272", ptr %"R8"
  ; LDG.E.SYS R42, [R6+0x4]
  %".5798" = load i32, ptr %"R6"
  %"zext.606" = zext i32 %".5798" to i64
  %".5799" = load i32, ptr %"R7"
  %"zext.607" = zext i32 %".5799" to i64
  %"shl.320" = shl i64 %"zext.607", 32
  %"or.300" = or i64 %"shl.320", %"zext.606"
  %".5800" = inttoptr i64 %"or.300" to ptr
  %".5801" = ptrtoint ptr %".5800" to i64
  %".5802" = add i64 %".5801", 4
  %"for_LDG.293" = inttoptr i64 %".5802" to ptr
  %".5803" = load float, ptr %"for_LDG.293"
  %".5804" = bitcast ptr %"R42" to ptr
  store float %".5803", ptr %".5804"
  ; LDG.E.SYS R45, [R4+0x8]
  %".5807" = load i32, ptr %"R4"
  %"zext.608" = zext i32 %".5807" to i64
  %".5808" = load i32, ptr %"R5"
  %"zext.609" = zext i32 %".5808" to i64
  %"shl.321" = shl i64 %"zext.609", 32
  %"or.301" = or i64 %"shl.321", %"zext.608"
  %".5809" = inttoptr i64 %"or.301" to ptr
  %".5810" = ptrtoint ptr %".5809" to i64
  %".5811" = add i64 %".5810", 8
  %"for_LDG.294" = inttoptr i64 %".5811" to ptr
  %".5812" = load float, ptr %"for_LDG.294"
  %".5813" = bitcast ptr %"R45" to ptr
  store float %".5812", ptr %".5813"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".5816" = load i32, ptr %"R50"
  %".5817" = load i32, ptr %"R41"
  %"mul.95" = mul i32 %".5816", %".5817"
  %"add.273" = add i32 %"mul.95", %"Arg_4"
  store i32 %"add.273", ptr %"R10"
  ; LDG.E.SYS R40, [R6+0x8]
  %".5820" = load i32, ptr %"R6"
  %"zext.610" = zext i32 %".5820" to i64
  %".5821" = load i32, ptr %"R7"
  %"zext.611" = zext i32 %".5821" to i64
  %"shl.322" = shl i64 %"zext.611", 32
  %"or.302" = or i64 %"shl.322", %"zext.610"
  %".5822" = inttoptr i64 %"or.302" to ptr
  %".5823" = ptrtoint ptr %".5822" to i64
  %".5824" = add i64 %".5823", 8
  %"for_LDG.295" = inttoptr i64 %".5824" to ptr
  %".5825" = load float, ptr %"for_LDG.295"
  %".5826" = bitcast ptr %"R40" to ptr
  store float %".5825", ptr %".5826"
  ; LDG.E.SYS R53, [R4+0xc]
  %".5829" = load i32, ptr %"R4"
  %"zext.612" = zext i32 %".5829" to i64
  %".5830" = load i32, ptr %"R5"
  %"zext.613" = zext i32 %".5830" to i64
  %"shl.323" = shl i64 %"zext.613", 32
  %"or.303" = or i64 %"shl.323", %"zext.612"
  %".5831" = inttoptr i64 %"or.303" to ptr
  %".5832" = ptrtoint ptr %".5831" to i64
  %".5833" = add i64 %".5832", 12
  %"for_LDG.296" = inttoptr i64 %".5833" to ptr
  %".5834" = load float, ptr %"for_LDG.296"
  %".5835" = bitcast ptr %"R53" to ptr
  store float %".5834", ptr %".5835"
  ; IADD3 R12, R34, 0xc, RZ
  %".5838" = load i32, ptr %"R34"
  %"add.274" = add i32 %".5838", 12
  %"add.275" = add i32 %"add.274", 0
  store i32 %"add.275", ptr %"R12"
  ; LDG.E.SYS R54, [R6+0xc]
  %".5841" = load i32, ptr %"R6"
  %"zext.614" = zext i32 %".5841" to i64
  %".5842" = load i32, ptr %"R7"
  %"zext.615" = zext i32 %".5842" to i64
  %"shl.324" = shl i64 %"zext.615", 32
  %"or.304" = or i64 %"shl.324", %"zext.614"
  %".5843" = inttoptr i64 %"or.304" to ptr
  %".5844" = ptrtoint ptr %".5843" to i64
  %".5845" = add i64 %".5844", 12
  %"for_LDG.297" = inttoptr i64 %".5845" to ptr
  %".5846" = load float, ptr %"for_LDG.297"
  %".5847" = bitcast ptr %"R54" to ptr
  store float %".5846", ptr %".5847"
  ; LDG.E.SYS R59, [R8]
  %".5850" = load i32, ptr %"R8"
  %"zext.616" = zext i32 %".5850" to i64
  %".5851" = load i32, ptr %"R9"
  %"zext.617" = zext i32 %".5851" to i64
  %"shl.325" = shl i64 %"zext.617", 32
  %"or.305" = or i64 %"shl.325", %"zext.616"
  %".5852" = inttoptr i64 %"or.305" to ptr
  %".5853" = ptrtoint ptr %".5852" to i64
  %".5854" = add i64 %".5853", 0
  %"for_LDG.298" = inttoptr i64 %".5854" to ptr
  %".5855" = load float, ptr %"for_LDG.298"
  %".5856" = bitcast ptr %"R59" to ptr
  store float %".5855", ptr %".5856"
  ; IADD3 R58, R3, R12, RZ
  %".5859" = load i32, ptr %"R3"
  %".5860" = load i32, ptr %"R12"
  %"add.276" = add i32 %".5859", %".5860"
  %"add.277" = add i32 %"add.276", 0
  store i32 %"add.277", ptr %"R58"
  ; LDG.E.SYS R52, [R10]
  %".5863" = load i32, ptr %"R10"
  %"zext.618" = zext i32 %".5863" to i64
  %".5864" = load i32, ptr %"R11"
  %"zext.619" = zext i32 %".5864" to i64
  %"shl.326" = shl i64 %"zext.619", 32
  %"or.306" = or i64 %"shl.326", %"zext.618"
  %".5865" = inttoptr i64 %"or.306" to ptr
  %".5866" = ptrtoint ptr %".5865" to i64
  %".5867" = add i64 %".5866", 0
  %"for_LDG.299" = inttoptr i64 %".5867" to ptr
  %".5868" = load float, ptr %"for_LDG.299"
  %".5869" = bitcast ptr %"R52" to ptr
  store float %".5868", ptr %".5869"
  ; LDG.E.SYS R57, [R8+0x4]
  %".5872" = load i32, ptr %"R8"
  %"zext.620" = zext i32 %".5872" to i64
  %".5873" = load i32, ptr %"R9"
  %"zext.621" = zext i32 %".5873" to i64
  %"shl.327" = shl i64 %"zext.621", 32
  %"or.307" = or i64 %"shl.327", %"zext.620"
  %".5874" = inttoptr i64 %"or.307" to ptr
  %".5875" = ptrtoint ptr %".5874" to i64
  %".5876" = add i64 %".5875", 4
  %"for_LDG.300" = inttoptr i64 %".5876" to ptr
  %".5877" = load float, ptr %"for_LDG.300"
  %".5878" = bitcast ptr %"R57" to ptr
  store float %".5877", ptr %".5878"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".5881" = load i32, ptr %"R12"
  %".5882" = load i32, ptr %"R41"
  %"mul.96" = mul i32 %".5881", %".5882"
  %"add.278" = add i32 %"mul.96", %"Arg_3"
  store i32 %"add.278", ptr %"R12"
  ; LDG.E.SYS R50, [R10+0x4]
  %".5885" = load i32, ptr %"R10"
  %"zext.622" = zext i32 %".5885" to i64
  %".5886" = load i32, ptr %"R11"
  %"zext.623" = zext i32 %".5886" to i64
  %"shl.328" = shl i64 %"zext.623", 32
  %"or.308" = or i64 %"shl.328", %"zext.622"
  %".5887" = inttoptr i64 %"or.308" to ptr
  %".5888" = ptrtoint ptr %".5887" to i64
  %".5889" = add i64 %".5888", 4
  %"for_LDG.301" = inttoptr i64 %".5889" to ptr
  %".5890" = load float, ptr %"for_LDG.301"
  %".5891" = bitcast ptr %"R50" to ptr
  store float %".5890", ptr %".5891"
  ; LDG.E.SYS R55, [R8+0x8]
  %".5894" = load i32, ptr %"R8"
  %"zext.624" = zext i32 %".5894" to i64
  %".5895" = load i32, ptr %"R9"
  %"zext.625" = zext i32 %".5895" to i64
  %"shl.329" = shl i64 %"zext.625", 32
  %"or.309" = or i64 %"shl.329", %"zext.624"
  %".5896" = inttoptr i64 %"or.309" to ptr
  %".5897" = ptrtoint ptr %".5896" to i64
  %".5898" = add i64 %".5897", 8
  %"for_LDG.302" = inttoptr i64 %".5898" to ptr
  %".5899" = load float, ptr %"for_LDG.302"
  %".5900" = bitcast ptr %"R55" to ptr
  store float %".5899", ptr %".5900"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".5903" = load i32, ptr %"R58"
  %".5904" = load i32, ptr %"R41"
  %"mul.97" = mul i32 %".5903", %".5904"
  %"add.279" = add i32 %"mul.97", %"Arg_4"
  store i32 %"add.279", ptr %"R4"
  ; LDG.E.SYS R61, [R8+0xc]
  %".5907" = load i32, ptr %"R8"
  %"zext.626" = zext i32 %".5907" to i64
  %".5908" = load i32, ptr %"R9"
  %"zext.627" = zext i32 %".5908" to i64
  %"shl.330" = shl i64 %"zext.627", 32
  %"or.310" = or i64 %"shl.330", %"zext.626"
  %".5909" = inttoptr i64 %"or.310" to ptr
  %".5910" = ptrtoint ptr %".5909" to i64
  %".5911" = add i64 %".5910", 12
  %"for_LDG.303" = inttoptr i64 %".5911" to ptr
  %".5912" = load float, ptr %"for_LDG.303"
  %".5913" = bitcast ptr %"R61" to ptr
  store float %".5912", ptr %".5913"
  ; LDG.E.SYS R56, [R10+0x8]
  %".5916" = load i32, ptr %"R10"
  %"zext.628" = zext i32 %".5916" to i64
  %".5917" = load i32, ptr %"R11"
  %"zext.629" = zext i32 %".5917" to i64
  %"shl.331" = shl i64 %"zext.629", 32
  %"or.311" = or i64 %"shl.331", %"zext.628"
  %".5918" = inttoptr i64 %"or.311" to ptr
  %".5919" = ptrtoint ptr %".5918" to i64
  %".5920" = add i64 %".5919", 8
  %"for_LDG.304" = inttoptr i64 %".5920" to ptr
  %".5921" = load float, ptr %"for_LDG.304"
  %".5922" = bitcast ptr %"R56" to ptr
  store float %".5921", ptr %".5922"
  ; LDG.E.SYS R58, [R10+0xc]
  %".5925" = load i32, ptr %"R10"
  %"zext.630" = zext i32 %".5925" to i64
  %".5926" = load i32, ptr %"R11"
  %"zext.631" = zext i32 %".5926" to i64
  %"shl.332" = shl i64 %"zext.631", 32
  %"or.312" = or i64 %"shl.332", %"zext.630"
  %".5927" = inttoptr i64 %"or.312" to ptr
  %".5928" = ptrtoint ptr %".5927" to i64
  %".5929" = add i64 %".5928", 12
  %"for_LDG.305" = inttoptr i64 %".5929" to ptr
  %".5930" = load float, ptr %"for_LDG.305"
  %".5931" = bitcast ptr %"R58" to ptr
  store float %".5930", ptr %".5931"
  ; LDG.E.SYS R6, [R12]
  %".5934" = load i32, ptr %"R12"
  %"zext.632" = zext i32 %".5934" to i64
  %".5935" = load i32, ptr %"R13"
  %"zext.633" = zext i32 %".5935" to i64
  %"shl.333" = shl i64 %"zext.633", 32
  %"or.313" = or i64 %"shl.333", %"zext.632"
  %".5936" = inttoptr i64 %"or.313" to ptr
  %".5937" = ptrtoint ptr %".5936" to i64
  %".5938" = add i64 %".5937", 0
  %"for_LDG.306" = inttoptr i64 %".5938" to ptr
  %".5939" = load float, ptr %"for_LDG.306"
  %".5940" = bitcast ptr %"R6" to ptr
  store float %".5939", ptr %".5940"
  ; LDG.E.SYS R41, [R12+0x4]
  %".5943" = load i32, ptr %"R12"
  %"zext.634" = zext i32 %".5943" to i64
  %".5944" = load i32, ptr %"R13"
  %"zext.635" = zext i32 %".5944" to i64
  %"shl.334" = shl i64 %"zext.635", 32
  %"or.314" = or i64 %"shl.334", %"zext.634"
  %".5945" = inttoptr i64 %"or.314" to ptr
  %".5946" = ptrtoint ptr %".5945" to i64
  %".5947" = add i64 %".5946", 4
  %"for_LDG.307" = inttoptr i64 %".5947" to ptr
  %".5948" = load float, ptr %"for_LDG.307"
  %".5949" = bitcast ptr %"R41" to ptr
  store float %".5948", ptr %".5949"
  ; LDG.E.SYS R10, [R4]
  %".5952" = load i32, ptr %"R4"
  %"zext.636" = zext i32 %".5952" to i64
  %".5953" = load i32, ptr %"R5"
  %"zext.637" = zext i32 %".5953" to i64
  %"shl.335" = shl i64 %"zext.637", 32
  %"or.315" = or i64 %"shl.335", %"zext.636"
  %".5954" = inttoptr i64 %"or.315" to ptr
  %".5955" = ptrtoint ptr %".5954" to i64
  %".5956" = add i64 %".5955", 0
  %"for_LDG.308" = inttoptr i64 %".5956" to ptr
  %".5957" = load float, ptr %"for_LDG.308"
  %".5958" = bitcast ptr %"R10" to ptr
  store float %".5957", ptr %".5958"
  ; LDG.E.SYS R7, [R12+0x8]
  %".5961" = load i32, ptr %"R12"
  %"zext.638" = zext i32 %".5961" to i64
  %".5962" = load i32, ptr %"R13"
  %"zext.639" = zext i32 %".5962" to i64
  %"shl.336" = shl i64 %"zext.639", 32
  %"or.316" = or i64 %"shl.336", %"zext.638"
  %".5963" = inttoptr i64 %"or.316" to ptr
  %".5964" = ptrtoint ptr %".5963" to i64
  %".5965" = add i64 %".5964", 8
  %"for_LDG.309" = inttoptr i64 %".5965" to ptr
  %".5966" = load float, ptr %"for_LDG.309"
  %".5967" = bitcast ptr %"R7" to ptr
  store float %".5966", ptr %".5967"
  ; LDG.E.SYS R9, [R4+0x4]
  %".5970" = load i32, ptr %"R4"
  %"zext.640" = zext i32 %".5970" to i64
  %".5971" = load i32, ptr %"R5"
  %"zext.641" = zext i32 %".5971" to i64
  %"shl.337" = shl i64 %"zext.641", 32
  %"or.317" = or i64 %"shl.337", %"zext.640"
  %".5972" = inttoptr i64 %"or.317" to ptr
  %".5973" = ptrtoint ptr %".5972" to i64
  %".5974" = add i64 %".5973", 4
  %"for_LDG.310" = inttoptr i64 %".5974" to ptr
  %".5975" = load float, ptr %"for_LDG.310"
  %".5976" = bitcast ptr %"R9" to ptr
  store float %".5975", ptr %".5976"
  ; LDG.E.SYS R60, [R12+0xc]
  %".5979" = load i32, ptr %"R12"
  %"zext.642" = zext i32 %".5979" to i64
  %".5980" = load i32, ptr %"R13"
  %"zext.643" = zext i32 %".5980" to i64
  %"shl.338" = shl i64 %"zext.643", 32
  %"or.318" = or i64 %"shl.338", %"zext.642"
  %".5981" = inttoptr i64 %"or.318" to ptr
  %".5982" = ptrtoint ptr %".5981" to i64
  %".5983" = add i64 %".5982", 12
  %"for_LDG.311" = inttoptr i64 %".5983" to ptr
  %".5984" = load float, ptr %"for_LDG.311"
  %".5985" = bitcast ptr %"R60" to ptr
  store float %".5984", ptr %".5985"
  ; LDG.E.SYS R8, [R4+0x8]
  %".5988" = load i32, ptr %"R4"
  %"zext.644" = zext i32 %".5988" to i64
  %".5989" = load i32, ptr %"R5"
  %"zext.645" = zext i32 %".5989" to i64
  %"shl.339" = shl i64 %"zext.645", 32
  %"or.319" = or i64 %"shl.339", %"zext.644"
  %".5990" = inttoptr i64 %"or.319" to ptr
  %".5991" = ptrtoint ptr %".5990" to i64
  %".5992" = add i64 %".5991", 8
  %"for_LDG.312" = inttoptr i64 %".5992" to ptr
  %".5993" = load float, ptr %"for_LDG.312"
  %".5994" = bitcast ptr %"R8" to ptr
  store float %".5993", ptr %".5994"
  ; LDG.E.SYS R11, [R4+0xc]
  %".5997" = load i32, ptr %"R4"
  %"zext.646" = zext i32 %".5997" to i64
  %".5998" = load i32, ptr %"R5"
  %"zext.647" = zext i32 %".5998" to i64
  %"shl.340" = shl i64 %"zext.647", 32
  %"or.320" = or i64 %"shl.340", %"zext.646"
  %".5999" = inttoptr i64 %"or.320" to ptr
  %".6000" = ptrtoint ptr %".5999" to i64
  %".6001" = add i64 %".6000", 12
  %"for_LDG.313" = inttoptr i64 %".6001" to ptr
  %".6002" = load float, ptr %"for_LDG.313"
  %".6003" = bitcast ptr %"R11" to ptr
  store float %".6002", ptr %".6003"
  ; IADD3 R35, R35, -0x10, RZ
  %".6006" = load i32, ptr %"R35"
  %"add.280" = add i32 %".6006", -16
  %"add.281" = add i32 %"add.280", 0
  store i32 %"add.281", ptr %"R35"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".6009" = load i32, ptr %"R35"
  %".6010" = load i1, ptr %"PT"
  %"cmp.48" = icmp sgt i32 %".6009", 12
  %".6011" = and i1 %"cmp.48", %".6010"
  store i1 %".6011", ptr %"P1"
  ; IADD3 R34, R34, 0x10, RZ
  %".6014" = load i32, ptr %"R34"
  %"add.282" = add i32 %".6014", 16
  %"add.283" = add i32 %"add.282", 0
  store i32 %"add.283", ptr %"R34"
  ; FMUL R25, R25, R22
  %".6017" = load float, ptr %"R25"
  %".6018" = load float, ptr %"R22"
  %"fmul.243" = fmul float %".6017", %".6018"
  %".6019" = bitcast ptr %"R25" to ptr
  store float %"fmul.243", ptr %".6019"
  ; FFMA R25, R25, R36, R21
  %".6022" = load float, ptr %"R25"
  %".6023" = load float, ptr %"R36"
  %".6024" = load float, ptr %"R21"
  %"fmul.244" = fmul float %".6022", %".6023"
  %"fadd.223" = fadd float %"fmul.244", %".6024"
  %".6025" = bitcast ptr %"R25" to ptr
  store float %"fadd.223", ptr %".6025"
  ; FMUL R37, R37, R22
  %".6028" = load float, ptr %"R37"
  %".6029" = load float, ptr %"R22"
  %"fmul.245" = fmul float %".6028", %".6029"
  %".6030" = bitcast ptr %"R37" to ptr
  store float %"fmul.245", ptr %".6030"
  ; FFMA R25, R37, R24, R25
  %".6033" = load float, ptr %"R37"
  %".6034" = load float, ptr %"R24"
  %".6035" = load float, ptr %"R25"
  %"fmul.246" = fmul float %".6033", %".6034"
  %"fadd.224" = fadd float %"fmul.246", %".6035"
  %".6036" = bitcast ptr %"R25" to ptr
  store float %"fadd.224", ptr %".6036"
  ; FMUL R39, R39, R22
  %".6039" = load float, ptr %"R39"
  %".6040" = load float, ptr %"R22"
  %"fmul.247" = fmul float %".6039", %".6040"
  %".6041" = bitcast ptr %"R39" to ptr
  store float %"fmul.247", ptr %".6041"
  ; FFMA R25, R39, R38, R25
  %".6044" = load float, ptr %"R39"
  %".6045" = load float, ptr %"R38"
  %".6046" = load float, ptr %"R25"
  %"fmul.248" = fmul float %".6044", %".6045"
  %"fadd.225" = fadd float %"fmul.248", %".6046"
  %".6047" = bitcast ptr %"R25" to ptr
  store float %"fadd.225", ptr %".6047"
  ; FMUL R43, R43, R22
  %".6050" = load float, ptr %"R43"
  %".6051" = load float, ptr %"R22"
  %"fmul.249" = fmul float %".6050", %".6051"
  %".6052" = bitcast ptr %"R43" to ptr
  store float %"fmul.249", ptr %".6052"
  ; FFMA R25, R43, R46, R25
  %".6055" = load float, ptr %"R43"
  %".6056" = load float, ptr %"R46"
  %".6057" = load float, ptr %"R25"
  %"fmul.250" = fmul float %".6055", %".6056"
  %"fadd.226" = fadd float %"fmul.250", %".6057"
  %".6058" = bitcast ptr %"R25" to ptr
  store float %"fadd.226", ptr %".6058"
  ; FMUL R51, R51, R22
  %".6061" = load float, ptr %"R51"
  %".6062" = load float, ptr %"R22"
  %"fmul.251" = fmul float %".6061", %".6062"
  %".6063" = bitcast ptr %"R51" to ptr
  store float %"fmul.251", ptr %".6063"
  ; FFMA R25, R51, R44, R25
  %".6066" = load float, ptr %"R51"
  %".6067" = load float, ptr %"R44"
  %".6068" = load float, ptr %"R25"
  %"fmul.252" = fmul float %".6066", %".6067"
  %"fadd.227" = fadd float %"fmul.252", %".6068"
  %".6069" = bitcast ptr %"R25" to ptr
  store float %"fadd.227", ptr %".6069"
  ; FMUL R47, R47, R22
  %".6072" = load float, ptr %"R47"
  %".6073" = load float, ptr %"R22"
  %"fmul.253" = fmul float %".6072", %".6073"
  %".6074" = bitcast ptr %"R47" to ptr
  store float %"fmul.253", ptr %".6074"
  ; FFMA R25, R47, R42, R25
  %".6077" = load float, ptr %"R47"
  %".6078" = load float, ptr %"R42"
  %".6079" = load float, ptr %"R25"
  %"fmul.254" = fmul float %".6077", %".6078"
  %"fadd.228" = fadd float %"fmul.254", %".6079"
  %".6080" = bitcast ptr %"R25" to ptr
  store float %"fadd.228", ptr %".6080"
  ; FMUL R45, R45, R22
  %".6083" = load float, ptr %"R45"
  %".6084" = load float, ptr %"R22"
  %"fmul.255" = fmul float %".6083", %".6084"
  %".6085" = bitcast ptr %"R45" to ptr
  store float %"fmul.255", ptr %".6085"
  ; FFMA R25, R45, R40, R25
  %".6088" = load float, ptr %"R45"
  %".6089" = load float, ptr %"R40"
  %".6090" = load float, ptr %"R25"
  %"fmul.256" = fmul float %".6088", %".6089"
  %"fadd.229" = fadd float %"fmul.256", %".6090"
  %".6091" = bitcast ptr %"R25" to ptr
  store float %"fadd.229", ptr %".6091"
  ; FMUL R53, R53, R22
  %".6094" = load float, ptr %"R53"
  %".6095" = load float, ptr %"R22"
  %"fmul.257" = fmul float %".6094", %".6095"
  %".6096" = bitcast ptr %"R53" to ptr
  store float %"fmul.257", ptr %".6096"
  ; FFMA R25, R53, R54, R25
  %".6099" = load float, ptr %"R53"
  %".6100" = load float, ptr %"R54"
  %".6101" = load float, ptr %"R25"
  %"fmul.258" = fmul float %".6099", %".6100"
  %"fadd.230" = fadd float %"fmul.258", %".6101"
  %".6102" = bitcast ptr %"R25" to ptr
  store float %"fadd.230", ptr %".6102"
  ; FMUL R59, R59, R22
  %".6105" = load float, ptr %"R59"
  %".6106" = load float, ptr %"R22"
  %"fmul.259" = fmul float %".6105", %".6106"
  %".6107" = bitcast ptr %"R59" to ptr
  store float %"fmul.259", ptr %".6107"
  ; FFMA R25, R59, R52, R25
  %".6110" = load float, ptr %"R59"
  %".6111" = load float, ptr %"R52"
  %".6112" = load float, ptr %"R25"
  %"fmul.260" = fmul float %".6110", %".6111"
  %"fadd.231" = fadd float %"fmul.260", %".6112"
  %".6113" = bitcast ptr %"R25" to ptr
  store float %"fadd.231", ptr %".6113"
  ; FMUL R57, R57, R22
  %".6116" = load float, ptr %"R57"
  %".6117" = load float, ptr %"R22"
  %"fmul.261" = fmul float %".6116", %".6117"
  %".6118" = bitcast ptr %"R57" to ptr
  store float %"fmul.261", ptr %".6118"
  ; FFMA R25, R57, R50, R25
  %".6121" = load float, ptr %"R57"
  %".6122" = load float, ptr %"R50"
  %".6123" = load float, ptr %"R25"
  %"fmul.262" = fmul float %".6121", %".6122"
  %"fadd.232" = fadd float %"fmul.262", %".6123"
  %".6124" = bitcast ptr %"R25" to ptr
  store float %"fadd.232", ptr %".6124"
  ; FMUL R55, R55, R22.reuse
  %".6127" = load float, ptr %"R55"
  %".6128" = load float, ptr %"R22"
  %"fmul.263" = fmul float %".6127", %".6128"
  %".6129" = bitcast ptr %"R55" to ptr
  store float %"fmul.263", ptr %".6129"
  ; FMUL R61, R61, R22
  %".6132" = load float, ptr %"R61"
  %".6133" = load float, ptr %"R22"
  %"fmul.264" = fmul float %".6132", %".6133"
  %".6134" = bitcast ptr %"R61" to ptr
  store float %"fmul.264", ptr %".6134"
  ; FFMA R25, R55, R56, R25
  %".6137" = load float, ptr %"R55"
  %".6138" = load float, ptr %"R56"
  %".6139" = load float, ptr %"R25"
  %"fmul.265" = fmul float %".6137", %".6138"
  %"fadd.233" = fadd float %"fmul.265", %".6139"
  %".6140" = bitcast ptr %"R25" to ptr
  store float %"fadd.233", ptr %".6140"
  ; FFMA R25, R61, R58, R25
  %".6143" = load float, ptr %"R61"
  %".6144" = load float, ptr %"R58"
  %".6145" = load float, ptr %"R25"
  %"fmul.266" = fmul float %".6143", %".6144"
  %"fadd.234" = fadd float %"fmul.266", %".6145"
  %".6146" = bitcast ptr %"R25" to ptr
  store float %"fadd.234", ptr %".6146"
  ; FMUL R6, R6, R22.reuse
  %".6149" = load float, ptr %"R6"
  %".6150" = load float, ptr %"R22"
  %"fmul.267" = fmul float %".6149", %".6150"
  %".6151" = bitcast ptr %"R6" to ptr
  store float %"fmul.267", ptr %".6151"
  ; FMUL R41, R41, R22
  %".6154" = load float, ptr %"R41"
  %".6155" = load float, ptr %"R22"
  %"fmul.268" = fmul float %".6154", %".6155"
  %".6156" = bitcast ptr %"R41" to ptr
  store float %"fmul.268", ptr %".6156"
  ; FFMA R6, R6, R10, R25
  %".6159" = load float, ptr %"R6"
  %".6160" = load float, ptr %"R10"
  %".6161" = load float, ptr %"R25"
  %"fmul.269" = fmul float %".6159", %".6160"
  %"fadd.235" = fadd float %"fmul.269", %".6161"
  %".6162" = bitcast ptr %"R6" to ptr
  store float %"fadd.235", ptr %".6162"
  ; FMUL R7, R7, R22
  %".6165" = load float, ptr %"R7"
  %".6166" = load float, ptr %"R22"
  %"fmul.270" = fmul float %".6165", %".6166"
  %".6167" = bitcast ptr %"R7" to ptr
  store float %"fmul.270", ptr %".6167"
  ; FFMA R9, R41, R9, R6
  %".6170" = load float, ptr %"R41"
  %".6171" = load float, ptr %"R9"
  %".6172" = load float, ptr %"R6"
  %"fmul.271" = fmul float %".6170", %".6171"
  %"fadd.236" = fadd float %"fmul.271", %".6172"
  %".6173" = bitcast ptr %"R9" to ptr
  store float %"fadd.236", ptr %".6173"
  ; FMUL R60, R60, R22
  %".6176" = load float, ptr %"R60"
  %".6177" = load float, ptr %"R22"
  %"fmul.272" = fmul float %".6176", %".6177"
  %".6178" = bitcast ptr %"R60" to ptr
  store float %"fmul.272", ptr %".6178"
  ; FFMA R8, R7, R8, R9
  %".6181" = load float, ptr %"R7"
  %".6182" = load float, ptr %"R8"
  %".6183" = load float, ptr %"R9"
  %"fmul.273" = fmul float %".6181", %".6182"
  %"fadd.237" = fadd float %"fmul.273", %".6183"
  %".6184" = bitcast ptr %"R8" to ptr
  store float %"fadd.237", ptr %".6184"
  ; FFMA R21, R60, R11, R8
  %".6187" = load float, ptr %"R60"
  %".6188" = load float, ptr %"R11"
  %".6189" = load float, ptr %"R8"
  %"fmul.274" = fmul float %".6187", %".6188"
  %"fadd.238" = fadd float %"fmul.274", %".6189"
  %".6190" = bitcast ptr %"R21" to ptr
  store float %"fadd.238", ptr %".6190"
  ; @P1 BRA `(.L_x_39)
  %".6193" = load i1, ptr %"P1"
  %".6194" = icmp ne i1 %".6193", 1
  br i1 %".6194", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".6197" = load i32, ptr %"R35"
  %".6198" = load i1, ptr %"PT"
  %"cmp.49" = icmp sgt i32 %".6197", 4
  %".6199" = and i1 %"cmp.49", %".6198"
  store i1 %".6199", ptr %"P1"
  ; @!P1 BRA `(.L_x_40)
  %".6202" = load i1, ptr %"P1"
  %".6203" = icmp eq i1 %".6202", 1
  br i1 %".6203", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R6, R3, R34, RZ
  %".6208" = load i32, ptr %"R3"
  %".6209" = load i32, ptr %"R34"
  %"add.284" = add i32 %".6208", %".6209"
  %"add.285" = add i32 %"add.284", 0
  store i32 %"add.285", ptr %"R6"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".6212" = load i32, ptr %"R34"
  %".6213" = load i32, ptr %"R11"
  %"mul.98" = mul i32 %".6212", %".6213"
  %"add.286" = add i32 %"mul.98", %"Arg_3"
  store i32 %"add.286", ptr %"R8"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".6216" = load i32, ptr %"R6"
  %".6217" = load i32, ptr %"R11"
  %"mul.99" = mul i32 %".6216", %".6217"
  %"add.287" = add i32 %"mul.99", %"Arg_4"
  store i32 %"add.287", ptr %"R6"
  ; IADD3 R4, R34, 0x4, RZ
  %".6220" = load i32, ptr %"R34"
  %"add.288" = add i32 %".6220", 4
  %"add.289" = add i32 %"add.288", 0
  store i32 %"add.289", ptr %"R4"
  ; LDG.E.SYS R13, [R8]
  %".6223" = load i32, ptr %"R8"
  %"zext.648" = zext i32 %".6223" to i64
  %".6224" = load i32, ptr %"R9"
  %"zext.649" = zext i32 %".6224" to i64
  %"shl.341" = shl i64 %"zext.649", 32
  %"or.321" = or i64 %"shl.341", %"zext.648"
  %".6225" = inttoptr i64 %"or.321" to ptr
  %".6226" = ptrtoint ptr %".6225" to i64
  %".6227" = add i64 %".6226", 0
  %"for_LDG.314" = inttoptr i64 %".6227" to ptr
  %".6228" = load float, ptr %"for_LDG.314"
  %".6229" = bitcast ptr %"R13" to ptr
  store float %".6228", ptr %".6229"
  ; IADD3 R10, R3, R4, RZ
  %".6232" = load i32, ptr %"R3"
  %".6233" = load i32, ptr %"R4"
  %"add.290" = add i32 %".6232", %".6233"
  %"add.291" = add i32 %"add.290", 0
  store i32 %"add.291", ptr %"R10"
  ; LDG.E.SYS R12, [R6]
  %".6236" = load i32, ptr %"R6"
  %"zext.650" = zext i32 %".6236" to i64
  %".6237" = load i32, ptr %"R7"
  %"zext.651" = zext i32 %".6237" to i64
  %"shl.342" = shl i64 %"zext.651", 32
  %"or.322" = or i64 %"shl.342", %"zext.650"
  %".6238" = inttoptr i64 %"or.322" to ptr
  %".6239" = ptrtoint ptr %".6238" to i64
  %".6240" = add i64 %".6239", 0
  %"for_LDG.315" = inttoptr i64 %".6240" to ptr
  %".6241" = load float, ptr %"for_LDG.315"
  %".6242" = bitcast ptr %"R12" to ptr
  store float %".6241", ptr %".6242"
  ; LDG.E.SYS R25, [R8+0x4]
  %".6245" = load i32, ptr %"R8"
  %"zext.652" = zext i32 %".6245" to i64
  %".6246" = load i32, ptr %"R9"
  %"zext.653" = zext i32 %".6246" to i64
  %"shl.343" = shl i64 %"zext.653", 32
  %"or.323" = or i64 %"shl.343", %"zext.652"
  %".6247" = inttoptr i64 %"or.323" to ptr
  %".6248" = ptrtoint ptr %".6247" to i64
  %".6249" = add i64 %".6248", 4
  %"for_LDG.316" = inttoptr i64 %".6249" to ptr
  %".6250" = load float, ptr %"for_LDG.316"
  %".6251" = bitcast ptr %"R25" to ptr
  store float %".6250", ptr %".6251"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".6254" = load i32, ptr %"R4"
  %".6255" = load i32, ptr %"R11"
  %"mul.100" = mul i32 %".6254", %".6255"
  %"add.292" = add i32 %"mul.100", %"Arg_3"
  store i32 %"add.292", ptr %"R4"
  ; LDG.E.SYS R24, [R6+0x4]
  %".6258" = load i32, ptr %"R6"
  %"zext.654" = zext i32 %".6258" to i64
  %".6259" = load i32, ptr %"R7"
  %"zext.655" = zext i32 %".6259" to i64
  %"shl.344" = shl i64 %"zext.655", 32
  %"or.324" = or i64 %"shl.344", %"zext.654"
  %".6260" = inttoptr i64 %"or.324" to ptr
  %".6261" = ptrtoint ptr %".6260" to i64
  %".6262" = add i64 %".6261", 4
  %"for_LDG.317" = inttoptr i64 %".6262" to ptr
  %".6263" = load float, ptr %"for_LDG.317"
  %".6264" = bitcast ptr %"R24" to ptr
  store float %".6263", ptr %".6264"
  ; LDG.E.SYS R37, [R8+0x8]
  %".6267" = load i32, ptr %"R8"
  %"zext.656" = zext i32 %".6267" to i64
  %".6268" = load i32, ptr %"R9"
  %"zext.657" = zext i32 %".6268" to i64
  %"shl.345" = shl i64 %"zext.657", 32
  %"or.325" = or i64 %"shl.345", %"zext.656"
  %".6269" = inttoptr i64 %"or.325" to ptr
  %".6270" = ptrtoint ptr %".6269" to i64
  %".6271" = add i64 %".6270", 8
  %"for_LDG.318" = inttoptr i64 %".6271" to ptr
  %".6272" = load float, ptr %"for_LDG.318"
  %".6273" = bitcast ptr %"R37" to ptr
  store float %".6272", ptr %".6273"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".6276" = load i32, ptr %"R10"
  %".6277" = load i32, ptr %"R11"
  %"mul.101" = mul i32 %".6276", %".6277"
  %"add.293" = add i32 %"mul.101", %"Arg_4"
  store i32 %"add.293", ptr %"R10"
  ; LDG.E.SYS R36, [R6+0x8]
  %".6280" = load i32, ptr %"R6"
  %"zext.658" = zext i32 %".6280" to i64
  %".6281" = load i32, ptr %"R7"
  %"zext.659" = zext i32 %".6281" to i64
  %"shl.346" = shl i64 %"zext.659", 32
  %"or.326" = or i64 %"shl.346", %"zext.658"
  %".6282" = inttoptr i64 %"or.326" to ptr
  %".6283" = ptrtoint ptr %".6282" to i64
  %".6284" = add i64 %".6283", 8
  %"for_LDG.319" = inttoptr i64 %".6284" to ptr
  %".6285" = load float, ptr %"for_LDG.319"
  %".6286" = bitcast ptr %"R36" to ptr
  store float %".6285", ptr %".6286"
  ; LDG.E.SYS R39, [R8+0xc]
  %".6289" = load i32, ptr %"R8"
  %"zext.660" = zext i32 %".6289" to i64
  %".6290" = load i32, ptr %"R9"
  %"zext.661" = zext i32 %".6290" to i64
  %"shl.347" = shl i64 %"zext.661", 32
  %"or.327" = or i64 %"shl.347", %"zext.660"
  %".6291" = inttoptr i64 %"or.327" to ptr
  %".6292" = ptrtoint ptr %".6291" to i64
  %".6293" = add i64 %".6292", 12
  %"for_LDG.320" = inttoptr i64 %".6293" to ptr
  %".6294" = load float, ptr %"for_LDG.320"
  %".6295" = bitcast ptr %"R39" to ptr
  store float %".6294", ptr %".6295"
  ; LDG.E.SYS R38, [R6+0xc]
  %".6298" = load i32, ptr %"R6"
  %"zext.662" = zext i32 %".6298" to i64
  %".6299" = load i32, ptr %"R7"
  %"zext.663" = zext i32 %".6299" to i64
  %"shl.348" = shl i64 %"zext.663", 32
  %"or.328" = or i64 %"shl.348", %"zext.662"
  %".6300" = inttoptr i64 %"or.328" to ptr
  %".6301" = ptrtoint ptr %".6300" to i64
  %".6302" = add i64 %".6301", 12
  %"for_LDG.321" = inttoptr i64 %".6302" to ptr
  %".6303" = load float, ptr %"for_LDG.321"
  %".6304" = bitcast ptr %"R38" to ptr
  store float %".6303", ptr %".6304"
  ; LDG.E.SYS R41, [R4]
  %".6307" = load i32, ptr %"R4"
  %"zext.664" = zext i32 %".6307" to i64
  %".6308" = load i32, ptr %"R5"
  %"zext.665" = zext i32 %".6308" to i64
  %"shl.349" = shl i64 %"zext.665", 32
  %"or.329" = or i64 %"shl.349", %"zext.664"
  %".6309" = inttoptr i64 %"or.329" to ptr
  %".6310" = ptrtoint ptr %".6309" to i64
  %".6311" = add i64 %".6310", 0
  %"for_LDG.322" = inttoptr i64 %".6311" to ptr
  %".6312" = load float, ptr %"for_LDG.322"
  %".6313" = bitcast ptr %"R41" to ptr
  store float %".6312", ptr %".6313"
  ; LDG.E.SYS R40, [R10]
  %".6316" = load i32, ptr %"R10"
  %"zext.666" = zext i32 %".6316" to i64
  %".6317" = load i32, ptr %"R11"
  %"zext.667" = zext i32 %".6317" to i64
  %"shl.350" = shl i64 %"zext.667", 32
  %"or.330" = or i64 %"shl.350", %"zext.666"
  %".6318" = inttoptr i64 %"or.330" to ptr
  %".6319" = ptrtoint ptr %".6318" to i64
  %".6320" = add i64 %".6319", 0
  %"for_LDG.323" = inttoptr i64 %".6320" to ptr
  %".6321" = load float, ptr %"for_LDG.323"
  %".6322" = bitcast ptr %"R40" to ptr
  store float %".6321", ptr %".6322"
  ; LDG.E.SYS R43, [R4+0x4]
  %".6325" = load i32, ptr %"R4"
  %"zext.668" = zext i32 %".6325" to i64
  %".6326" = load i32, ptr %"R5"
  %"zext.669" = zext i32 %".6326" to i64
  %"shl.351" = shl i64 %"zext.669", 32
  %"or.331" = or i64 %"shl.351", %"zext.668"
  %".6327" = inttoptr i64 %"or.331" to ptr
  %".6328" = ptrtoint ptr %".6327" to i64
  %".6329" = add i64 %".6328", 4
  %"for_LDG.324" = inttoptr i64 %".6329" to ptr
  %".6330" = load float, ptr %"for_LDG.324"
  %".6331" = bitcast ptr %"R43" to ptr
  store float %".6330", ptr %".6331"
  ; LDG.E.SYS R42, [R10+0x4]
  %".6334" = load i32, ptr %"R10"
  %"zext.670" = zext i32 %".6334" to i64
  %".6335" = load i32, ptr %"R11"
  %"zext.671" = zext i32 %".6335" to i64
  %"shl.352" = shl i64 %"zext.671", 32
  %"or.332" = or i64 %"shl.352", %"zext.670"
  %".6336" = inttoptr i64 %"or.332" to ptr
  %".6337" = ptrtoint ptr %".6336" to i64
  %".6338" = add i64 %".6337", 4
  %"for_LDG.325" = inttoptr i64 %".6338" to ptr
  %".6339" = load float, ptr %"for_LDG.325"
  %".6340" = bitcast ptr %"R42" to ptr
  store float %".6339", ptr %".6340"
  ; LDG.E.SYS R45, [R4+0x8]
  %".6343" = load i32, ptr %"R4"
  %"zext.672" = zext i32 %".6343" to i64
  %".6344" = load i32, ptr %"R5"
  %"zext.673" = zext i32 %".6344" to i64
  %"shl.353" = shl i64 %"zext.673", 32
  %"or.333" = or i64 %"shl.353", %"zext.672"
  %".6345" = inttoptr i64 %"or.333" to ptr
  %".6346" = ptrtoint ptr %".6345" to i64
  %".6347" = add i64 %".6346", 8
  %"for_LDG.326" = inttoptr i64 %".6347" to ptr
  %".6348" = load float, ptr %"for_LDG.326"
  %".6349" = bitcast ptr %"R45" to ptr
  store float %".6348", ptr %".6349"
  ; LDG.E.SYS R47, [R4+0xc]
  %".6352" = load i32, ptr %"R4"
  %"zext.674" = zext i32 %".6352" to i64
  %".6353" = load i32, ptr %"R5"
  %"zext.675" = zext i32 %".6353" to i64
  %"shl.354" = shl i64 %"zext.675", 32
  %"or.334" = or i64 %"shl.354", %"zext.674"
  %".6354" = inttoptr i64 %"or.334" to ptr
  %".6355" = ptrtoint ptr %".6354" to i64
  %".6356" = add i64 %".6355", 12
  %"for_LDG.327" = inttoptr i64 %".6356" to ptr
  %".6357" = load float, ptr %"for_LDG.327"
  %".6358" = bitcast ptr %"R47" to ptr
  store float %".6357", ptr %".6358"
  ; LDG.E.SYS R44, [R10+0x8]
  %".6361" = load i32, ptr %"R10"
  %"zext.676" = zext i32 %".6361" to i64
  %".6362" = load i32, ptr %"R11"
  %"zext.677" = zext i32 %".6362" to i64
  %"shl.355" = shl i64 %"zext.677", 32
  %"or.335" = or i64 %"shl.355", %"zext.676"
  %".6363" = inttoptr i64 %"or.335" to ptr
  %".6364" = ptrtoint ptr %".6363" to i64
  %".6365" = add i64 %".6364", 8
  %"for_LDG.328" = inttoptr i64 %".6365" to ptr
  %".6366" = load float, ptr %"for_LDG.328"
  %".6367" = bitcast ptr %"R44" to ptr
  store float %".6366", ptr %".6367"
  ; LDG.E.SYS R46, [R10+0xc]
  %".6370" = load i32, ptr %"R10"
  %"zext.678" = zext i32 %".6370" to i64
  %".6371" = load i32, ptr %"R11"
  %"zext.679" = zext i32 %".6371" to i64
  %"shl.356" = shl i64 %"zext.679", 32
  %"or.336" = or i64 %"shl.356", %"zext.678"
  %".6372" = inttoptr i64 %"or.336" to ptr
  %".6373" = ptrtoint ptr %".6372" to i64
  %".6374" = add i64 %".6373", 12
  %"for_LDG.329" = inttoptr i64 %".6374" to ptr
  %".6375" = load float, ptr %"for_LDG.329"
  %".6376" = bitcast ptr %"R46" to ptr
  store float %".6375", ptr %".6376"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".6379" = xor i1 1, 1
  %".6380" = and i1 %".6379", 1
  %".6381" = and i1 %".6380", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".6383" = load i32, ptr %"R35"
  %"add.294" = add i32 %".6383", -8
  %"add.295" = add i32 %"add.294", 0
  store i32 %"add.295", ptr %"R35"
  ; IADD3 R34, R34, 0x8, RZ
  %".6386" = load i32, ptr %"R34"
  %"add.296" = add i32 %".6386", 8
  %"add.297" = add i32 %"add.296", 0
  store i32 %"add.297", ptr %"R34"
  ; FMUL R8, R13, R22
  %".6389" = load float, ptr %"R13"
  %".6390" = load float, ptr %"R22"
  %"fmul.275" = fmul float %".6389", %".6390"
  %".6391" = bitcast ptr %"R8" to ptr
  store float %"fmul.275", ptr %".6391"
  ; FFMA R8, R8, R12, R21
  %".6394" = load float, ptr %"R8"
  %".6395" = load float, ptr %"R12"
  %".6396" = load float, ptr %"R21"
  %"fmul.276" = fmul float %".6394", %".6395"
  %"fadd.239" = fadd float %"fmul.276", %".6396"
  %".6397" = bitcast ptr %"R8" to ptr
  store float %"fadd.239", ptr %".6397"
  ; FMUL R25, R25, R22
  %".6400" = load float, ptr %"R25"
  %".6401" = load float, ptr %"R22"
  %"fmul.277" = fmul float %".6400", %".6401"
  %".6402" = bitcast ptr %"R25" to ptr
  store float %"fmul.277", ptr %".6402"
  ; FFMA R8, R25, R24, R8
  %".6405" = load float, ptr %"R25"
  %".6406" = load float, ptr %"R24"
  %".6407" = load float, ptr %"R8"
  %"fmul.278" = fmul float %".6405", %".6406"
  %"fadd.240" = fadd float %"fmul.278", %".6407"
  %".6408" = bitcast ptr %"R8" to ptr
  store float %"fadd.240", ptr %".6408"
  ; FMUL R37, R37, R22
  %".6411" = load float, ptr %"R37"
  %".6412" = load float, ptr %"R22"
  %"fmul.279" = fmul float %".6411", %".6412"
  %".6413" = bitcast ptr %"R37" to ptr
  store float %"fmul.279", ptr %".6413"
  ; FFMA R8, R37, R36, R8
  %".6416" = load float, ptr %"R37"
  %".6417" = load float, ptr %"R36"
  %".6418" = load float, ptr %"R8"
  %"fmul.280" = fmul float %".6416", %".6417"
  %"fadd.241" = fadd float %"fmul.280", %".6418"
  %".6419" = bitcast ptr %"R8" to ptr
  store float %"fadd.241", ptr %".6419"
  ; FMUL R39, R39, R22
  %".6422" = load float, ptr %"R39"
  %".6423" = load float, ptr %"R22"
  %"fmul.281" = fmul float %".6422", %".6423"
  %".6424" = bitcast ptr %"R39" to ptr
  store float %"fmul.281", ptr %".6424"
  ; FFMA R8, R39, R38, R8
  %".6427" = load float, ptr %"R39"
  %".6428" = load float, ptr %"R38"
  %".6429" = load float, ptr %"R8"
  %"fmul.282" = fmul float %".6427", %".6428"
  %"fadd.242" = fadd float %"fmul.282", %".6429"
  %".6430" = bitcast ptr %"R8" to ptr
  store float %"fadd.242", ptr %".6430"
  ; FMUL R41, R41, R22
  %".6433" = load float, ptr %"R41"
  %".6434" = load float, ptr %"R22"
  %"fmul.283" = fmul float %".6433", %".6434"
  %".6435" = bitcast ptr %"R41" to ptr
  store float %"fmul.283", ptr %".6435"
  ; FFMA R8, R41, R40, R8
  %".6438" = load float, ptr %"R41"
  %".6439" = load float, ptr %"R40"
  %".6440" = load float, ptr %"R8"
  %"fmul.284" = fmul float %".6438", %".6439"
  %"fadd.243" = fadd float %"fmul.284", %".6440"
  %".6441" = bitcast ptr %"R8" to ptr
  store float %"fadd.243", ptr %".6441"
  ; FMUL R43, R43, R22
  %".6444" = load float, ptr %"R43"
  %".6445" = load float, ptr %"R22"
  %"fmul.285" = fmul float %".6444", %".6445"
  %".6446" = bitcast ptr %"R43" to ptr
  store float %"fmul.285", ptr %".6446"
  ; FFMA R8, R43, R42, R8
  %".6449" = load float, ptr %"R43"
  %".6450" = load float, ptr %"R42"
  %".6451" = load float, ptr %"R8"
  %"fmul.286" = fmul float %".6449", %".6450"
  %"fadd.244" = fadd float %"fmul.286", %".6451"
  %".6452" = bitcast ptr %"R8" to ptr
  store float %"fadd.244", ptr %".6452"
  ; FMUL R45, R45, R22.reuse
  %".6455" = load float, ptr %"R45"
  %".6456" = load float, ptr %"R22"
  %"fmul.287" = fmul float %".6455", %".6456"
  %".6457" = bitcast ptr %"R45" to ptr
  store float %"fmul.287", ptr %".6457"
  ; FMUL R47, R47, R22
  %".6460" = load float, ptr %"R47"
  %".6461" = load float, ptr %"R22"
  %"fmul.288" = fmul float %".6460", %".6461"
  %".6462" = bitcast ptr %"R47" to ptr
  store float %"fmul.288", ptr %".6462"
  ; FFMA R8, R45, R44, R8
  %".6465" = load float, ptr %"R45"
  %".6466" = load float, ptr %"R44"
  %".6467" = load float, ptr %"R8"
  %"fmul.289" = fmul float %".6465", %".6466"
  %"fadd.245" = fadd float %"fmul.289", %".6467"
  %".6468" = bitcast ptr %"R8" to ptr
  store float %"fadd.245", ptr %".6468"
  ; FFMA R21, R47, R46, R8
  %".6471" = load float, ptr %"R47"
  %".6472" = load float, ptr %"R46"
  %".6473" = load float, ptr %"R8"
  %"fmul.290" = fmul float %".6471", %".6472"
  %"fadd.246" = fadd float %"fmul.290", %".6473"
  %".6474" = bitcast ptr %"R21" to ptr
  store float %"fadd.246", ptr %".6474"
  br label %".L_x_40"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".6478" = load i32, ptr %"R35"
  %".6479" = load i1, ptr %"PT"
  %"cmp.50" = icmp ne i32 %".6478", 0
  %".6480" = or i1 %"cmp.50", %".6479"
  store i1 %".6480", ptr %"P0"
  ; @!P0 BRA `(.L_x_36)
  %".6483" = load i1, ptr %"P0"
  %".6484" = icmp eq i1 %".6483", 1
  br i1 %".6484", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IADD3 R6, R3, R34, RZ
  %".6489" = load i32, ptr %"R3"
  %".6490" = load i32, ptr %"R34"
  %"add.298" = add i32 %".6489", %".6490"
  %"add.299" = add i32 %"add.298", 0
  store i32 %"add.299", ptr %"R6"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".6493" = load i32, ptr %"R34"
  %".6494" = load i32, ptr %"R7"
  %"mul.102" = mul i32 %".6493", %".6494"
  %"add.300" = add i32 %"mul.102", %"Arg_3"
  store i32 %"add.300", ptr %"R4"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".6497" = load i32, ptr %"R6"
  %".6498" = load i32, ptr %"R7"
  %"mul.103" = mul i32 %".6497", %".6498"
  %"add.301" = add i32 %"mul.103", %"Arg_4"
  store i32 %"add.301", ptr %"R6"
  ; LDG.E.SYS R9, [R4]
  %".6501" = load i32, ptr %"R4"
  %"zext.680" = zext i32 %".6501" to i64
  %".6502" = load i32, ptr %"R5"
  %"zext.681" = zext i32 %".6502" to i64
  %"shl.357" = shl i64 %"zext.681", 32
  %"or.337" = or i64 %"shl.357", %"zext.680"
  %".6503" = inttoptr i64 %"or.337" to ptr
  %".6504" = ptrtoint ptr %".6503" to i64
  %".6505" = add i64 %".6504", 0
  %"for_LDG.330" = inttoptr i64 %".6505" to ptr
  %".6506" = load float, ptr %"for_LDG.330"
  %".6507" = bitcast ptr %"R9" to ptr
  store float %".6506", ptr %".6507"
  ; LDG.E.SYS R10, [R6]
  %".6510" = load i32, ptr %"R6"
  %"zext.682" = zext i32 %".6510" to i64
  %".6511" = load i32, ptr %"R7"
  %"zext.683" = zext i32 %".6511" to i64
  %"shl.358" = shl i64 %"zext.683", 32
  %"or.338" = or i64 %"shl.358", %"zext.682"
  %".6512" = inttoptr i64 %"or.338" to ptr
  %".6513" = ptrtoint ptr %".6512" to i64
  %".6514" = add i64 %".6513", 0
  %"for_LDG.331" = inttoptr i64 %".6514" to ptr
  %".6515" = load float, ptr %"for_LDG.331"
  %".6516" = bitcast ptr %"R10" to ptr
  store float %".6515", ptr %".6516"
  ; LDG.E.SYS R11, [R4+0x4]
  %".6519" = load i32, ptr %"R4"
  %"zext.684" = zext i32 %".6519" to i64
  %".6520" = load i32, ptr %"R5"
  %"zext.685" = zext i32 %".6520" to i64
  %"shl.359" = shl i64 %"zext.685", 32
  %"or.339" = or i64 %"shl.359", %"zext.684"
  %".6521" = inttoptr i64 %"or.339" to ptr
  %".6522" = ptrtoint ptr %".6521" to i64
  %".6523" = add i64 %".6522", 4
  %"for_LDG.332" = inttoptr i64 %".6523" to ptr
  %".6524" = load float, ptr %"for_LDG.332"
  %".6525" = bitcast ptr %"R11" to ptr
  store float %".6524", ptr %".6525"
  ; LDG.E.SYS R12, [R6+0x4]
  %".6528" = load i32, ptr %"R6"
  %"zext.686" = zext i32 %".6528" to i64
  %".6529" = load i32, ptr %"R7"
  %"zext.687" = zext i32 %".6529" to i64
  %"shl.360" = shl i64 %"zext.687", 32
  %"or.340" = or i64 %"shl.360", %"zext.686"
  %".6530" = inttoptr i64 %"or.340" to ptr
  %".6531" = ptrtoint ptr %".6530" to i64
  %".6532" = add i64 %".6531", 4
  %"for_LDG.333" = inttoptr i64 %".6532" to ptr
  %".6533" = load float, ptr %"for_LDG.333"
  %".6534" = bitcast ptr %"R12" to ptr
  store float %".6533", ptr %".6534"
  ; LDG.E.SYS R13, [R4+0x8]
  %".6537" = load i32, ptr %"R4"
  %"zext.688" = zext i32 %".6537" to i64
  %".6538" = load i32, ptr %"R5"
  %"zext.689" = zext i32 %".6538" to i64
  %"shl.361" = shl i64 %"zext.689", 32
  %"or.341" = or i64 %"shl.361", %"zext.688"
  %".6539" = inttoptr i64 %"or.341" to ptr
  %".6540" = ptrtoint ptr %".6539" to i64
  %".6541" = add i64 %".6540", 8
  %"for_LDG.334" = inttoptr i64 %".6541" to ptr
  %".6542" = load float, ptr %"for_LDG.334"
  %".6543" = bitcast ptr %"R13" to ptr
  store float %".6542", ptr %".6543"
  ; LDG.E.SYS R24, [R6+0x8]
  %".6546" = load i32, ptr %"R6"
  %"zext.690" = zext i32 %".6546" to i64
  %".6547" = load i32, ptr %"R7"
  %"zext.691" = zext i32 %".6547" to i64
  %"shl.362" = shl i64 %"zext.691", 32
  %"or.342" = or i64 %"shl.362", %"zext.690"
  %".6548" = inttoptr i64 %"or.342" to ptr
  %".6549" = ptrtoint ptr %".6548" to i64
  %".6550" = add i64 %".6549", 8
  %"for_LDG.335" = inttoptr i64 %".6550" to ptr
  %".6551" = load float, ptr %"for_LDG.335"
  %".6552" = bitcast ptr %"R24" to ptr
  store float %".6551", ptr %".6552"
  ; LDG.E.SYS R25, [R4+0xc]
  %".6555" = load i32, ptr %"R4"
  %"zext.692" = zext i32 %".6555" to i64
  %".6556" = load i32, ptr %"R5"
  %"zext.693" = zext i32 %".6556" to i64
  %"shl.363" = shl i64 %"zext.693", 32
  %"or.343" = or i64 %"shl.363", %"zext.692"
  %".6557" = inttoptr i64 %"or.343" to ptr
  %".6558" = ptrtoint ptr %".6557" to i64
  %".6559" = add i64 %".6558", 12
  %"for_LDG.336" = inttoptr i64 %".6559" to ptr
  %".6560" = load float, ptr %"for_LDG.336"
  %".6561" = bitcast ptr %"R25" to ptr
  store float %".6560", ptr %".6561"
  ; LDG.E.SYS R36, [R6+0xc]
  %".6564" = load i32, ptr %"R6"
  %"zext.694" = zext i32 %".6564" to i64
  %".6565" = load i32, ptr %"R7"
  %"zext.695" = zext i32 %".6565" to i64
  %"shl.364" = shl i64 %"zext.695", 32
  %"or.344" = or i64 %"shl.364", %"zext.694"
  %".6566" = inttoptr i64 %"or.344" to ptr
  %".6567" = ptrtoint ptr %".6566" to i64
  %".6568" = add i64 %".6567", 12
  %"for_LDG.337" = inttoptr i64 %".6568" to ptr
  %".6569" = load float, ptr %"for_LDG.337"
  %".6570" = bitcast ptr %"R36" to ptr
  store float %".6569", ptr %".6570"
  ; IADD3 R35, R35, -0x4, RZ
  %".6573" = load i32, ptr %"R35"
  %"add.302" = add i32 %".6573", -4
  %"add.303" = add i32 %"add.302", 0
  store i32 %"add.303", ptr %"R35"
  ; IADD3 R34, R34, 0x4, RZ
  %".6576" = load i32, ptr %"R34"
  %"add.304" = add i32 %".6576", 4
  %"add.305" = add i32 %"add.304", 0
  store i32 %"add.305", ptr %"R34"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".6579" = load i32, ptr %"R35"
  %".6580" = load i1, ptr %"PT"
  %"cmp.51" = icmp ne i32 %".6579", 0
  %".6581" = and i1 %"cmp.51", %".6580"
  store i1 %".6581", ptr %"P0"
  ; FMUL R8, R9, R22
  %".6584" = load float, ptr %"R9"
  %".6585" = load float, ptr %"R22"
  %"fmul.291" = fmul float %".6584", %".6585"
  %".6586" = bitcast ptr %"R8" to ptr
  store float %"fmul.291", ptr %".6586"
  ; FFMA R8, R8, R10, R21
  %".6589" = load float, ptr %"R8"
  %".6590" = load float, ptr %"R10"
  %".6591" = load float, ptr %"R21"
  %"fmul.292" = fmul float %".6589", %".6590"
  %"fadd.247" = fadd float %"fmul.292", %".6591"
  %".6592" = bitcast ptr %"R8" to ptr
  store float %"fadd.247", ptr %".6592"
  ; FMUL R11, R11, R22
  %".6595" = load float, ptr %"R11"
  %".6596" = load float, ptr %"R22"
  %"fmul.293" = fmul float %".6595", %".6596"
  %".6597" = bitcast ptr %"R11" to ptr
  store float %"fmul.293", ptr %".6597"
  ; FFMA R8, R11, R12, R8
  %".6600" = load float, ptr %"R11"
  %".6601" = load float, ptr %"R12"
  %".6602" = load float, ptr %"R8"
  %"fmul.294" = fmul float %".6600", %".6601"
  %"fadd.248" = fadd float %"fmul.294", %".6602"
  %".6603" = bitcast ptr %"R8" to ptr
  store float %"fadd.248", ptr %".6603"
  ; FMUL R13, R13, R22
  %".6606" = load float, ptr %"R13"
  %".6607" = load float, ptr %"R22"
  %"fmul.295" = fmul float %".6606", %".6607"
  %".6608" = bitcast ptr %"R13" to ptr
  store float %"fmul.295", ptr %".6608"
  ; FFMA R8, R13, R24, R8
  %".6611" = load float, ptr %"R13"
  %".6612" = load float, ptr %"R24"
  %".6613" = load float, ptr %"R8"
  %"fmul.296" = fmul float %".6611", %".6612"
  %"fadd.249" = fadd float %"fmul.296", %".6613"
  %".6614" = bitcast ptr %"R8" to ptr
  store float %"fadd.249", ptr %".6614"
  ; FMUL R25, R25, R22
  %".6617" = load float, ptr %"R25"
  %".6618" = load float, ptr %"R22"
  %"fmul.297" = fmul float %".6617", %".6618"
  %".6619" = bitcast ptr %"R25" to ptr
  store float %"fmul.297", ptr %".6619"
  ; FFMA R21, R25, R36, R8
  %".6622" = load float, ptr %"R25"
  %".6623" = load float, ptr %"R36"
  %".6624" = load float, ptr %"R8"
  %"fmul.298" = fmul float %".6622", %".6623"
  %"fadd.250" = fadd float %"fmul.298", %".6624"
  %".6625" = bitcast ptr %"R21" to ptr
  store float %"fadd.250", ptr %".6625"
  ; @P0 BRA `(.L_x_37)
  %".6628" = load i1, ptr %"P0"
  %".6629" = icmp ne i1 %".6628", 1
  br i1 %".6629", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".6632" = load i32, ptr %"R48"
  %".6633" = load i1, ptr %"PT"
  %"cmp.52" = icmp ne i32 %".6632", 0
  %".6634" = and i1 %"cmp.52", %".6633"
  store i1 %".6634", ptr %"P0"
  ; @!P0 BRA `(.L_x_35)
  %".6637" = load i1, ptr %"P0"
  %".6638" = icmp eq i1 %".6637", 1
  br i1 %".6638", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IADD3 R4, R3, R34, RZ
  %".6643" = load i32, ptr %"R3"
  %".6644" = load i32, ptr %"R34"
  %"add.306" = add i32 %".6643", %".6644"
  %"add.307" = add i32 %"add.306", 0
  store i32 %"add.307", ptr %"R4"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".6647" = load i32, ptr %"R34"
  %".6648" = load i32, ptr %"R5"
  %"mul.104" = mul i32 %".6647", %".6648"
  %"add.308" = add i32 %"mul.104", %"Arg_3"
  store i32 %"add.308", ptr %"R34"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".6651" = load i32, ptr %"R4"
  %".6652" = load i32, ptr %"R5"
  %"mul.105" = mul i32 %".6651", %".6652"
  %"add.309" = add i32 %"mul.105", %"Arg_4"
  store i32 %"add.309", ptr %"R4"
  ; LDG.E.SYS R7, [R34]
  %".6655" = load i32, ptr %"R34"
  %"zext.696" = zext i32 %".6655" to i64
  %".6656" = load i32, ptr %"R35"
  %"zext.697" = zext i32 %".6656" to i64
  %"shl.365" = shl i64 %"zext.697", 32
  %"or.345" = or i64 %"shl.365", %"zext.696"
  %".6657" = inttoptr i64 %"or.345" to ptr
  %".6658" = ptrtoint ptr %".6657" to i64
  %".6659" = add i64 %".6658", 0
  %"for_LDG.338" = inttoptr i64 %".6659" to ptr
  %".6660" = load float, ptr %"for_LDG.338"
  %".6661" = bitcast ptr %"R7" to ptr
  store float %".6660", ptr %".6661"
  ; LDG.E.SYS R8, [R4]
  %".6664" = load i32, ptr %"R4"
  %"zext.698" = zext i32 %".6664" to i64
  %".6665" = load i32, ptr %"R5"
  %"zext.699" = zext i32 %".6665" to i64
  %"shl.366" = shl i64 %"zext.699", 32
  %"or.346" = or i64 %"shl.366", %"zext.698"
  %".6666" = inttoptr i64 %"or.346" to ptr
  %".6667" = ptrtoint ptr %".6666" to i64
  %".6668" = add i64 %".6667", 0
  %"for_LDG.339" = inttoptr i64 %".6668" to ptr
  %".6669" = load float, ptr %"for_LDG.339"
  %".6670" = bitcast ptr %"R8" to ptr
  store float %".6669", ptr %".6670"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".6673" = load i32, ptr %"R48"
  %".6674" = load i1, ptr %"PT"
  %"cmp.53" = icmp ne i32 %".6673", 1
  %".6675" = and i1 %"cmp.53", %".6674"
  store i1 %".6675", ptr %"P0"
  ; FMUL R6, R7, R22
  %".6678" = load float, ptr %"R7"
  %".6679" = load float, ptr %"R22"
  %"fmul.299" = fmul float %".6678", %".6679"
  %".6680" = bitcast ptr %"R6" to ptr
  store float %"fmul.299", ptr %".6680"
  ; FFMA R21, R6, R8, R21
  %".6683" = load float, ptr %"R6"
  %".6684" = load float, ptr %"R8"
  %".6685" = load float, ptr %"R21"
  %"fmul.300" = fmul float %".6683", %".6684"
  %"fadd.251" = fadd float %"fmul.300", %".6685"
  %".6686" = bitcast ptr %"R21" to ptr
  store float %"fadd.251", ptr %".6686"
  ; @!P0 BRA `(.L_x_35)
  %".6689" = load i1, ptr %"P0"
  %".6690" = icmp eq i1 %".6689", 1
  br i1 %".6690", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".6693" = load i32, ptr %"R48"
  %".6694" = load i1, ptr %"PT"
  %"cmp.54" = icmp ne i32 %".6693", 2
  %".6695" = and i1 %"cmp.54", %".6694"
  store i1 %".6695", ptr %"P0"
  ; LDG.E.SYS R7, [R34+0x4]
  %".6698" = load i32, ptr %"R34"
  %"zext.700" = zext i32 %".6698" to i64
  %".6699" = load i32, ptr %"R35"
  %"zext.701" = zext i32 %".6699" to i64
  %"shl.367" = shl i64 %"zext.701", 32
  %"or.347" = or i64 %"shl.367", %"zext.700"
  %".6700" = inttoptr i64 %"or.347" to ptr
  %".6701" = ptrtoint ptr %".6700" to i64
  %".6702" = add i64 %".6701", 4
  %"for_LDG.340" = inttoptr i64 %".6702" to ptr
  %".6703" = load float, ptr %"for_LDG.340"
  %".6704" = bitcast ptr %"R7" to ptr
  store float %".6703", ptr %".6704"
  ; LDG.E.SYS R8, [R4+0x4]
  %".6707" = load i32, ptr %"R4"
  %"zext.702" = zext i32 %".6707" to i64
  %".6708" = load i32, ptr %"R5"
  %"zext.703" = zext i32 %".6708" to i64
  %"shl.368" = shl i64 %"zext.703", 32
  %"or.348" = or i64 %"shl.368", %"zext.702"
  %".6709" = inttoptr i64 %"or.348" to ptr
  %".6710" = ptrtoint ptr %".6709" to i64
  %".6711" = add i64 %".6710", 4
  %"for_LDG.341" = inttoptr i64 %".6711" to ptr
  %".6712" = load float, ptr %"for_LDG.341"
  %".6713" = bitcast ptr %"R8" to ptr
  store float %".6712", ptr %".6713"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".6716" = load i1, ptr %"P0"
  %".6717" = icmp ne i1 %".6716", 1
  br i1 %".6717", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  %".6720" = load i32, ptr %"R34"
  %"zext.704" = zext i32 %".6720" to i64
  %".6721" = load i32, ptr %"R35"
  %"zext.705" = zext i32 %".6721" to i64
  %"shl.369" = shl i64 %"zext.705", 32
  %"or.349" = or i64 %"shl.369", %"zext.704"
  %".6722" = inttoptr i64 %"or.349" to ptr
  %".6723" = ptrtoint ptr %".6722" to i64
  %".6724" = add i64 %".6723", 8
  %"for_LDG.342" = inttoptr i64 %".6724" to ptr
  %".6725" = load float, ptr %"for_LDG.342"
  %".6726" = bitcast ptr %"R9" to ptr
  store float %".6725", ptr %".6726"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".6731" = load i1, ptr %"P0"
  %".6732" = icmp ne i1 %".6731", 1
  br i1 %".6732", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  %".6735" = load i32, ptr %"R4"
  %"zext.706" = zext i32 %".6735" to i64
  %".6736" = load i32, ptr %"R5"
  %"zext.707" = zext i32 %".6736" to i64
  %"shl.370" = shl i64 %"zext.707", 32
  %"or.350" = or i64 %"shl.370", %"zext.706"
  %".6737" = inttoptr i64 %"or.350" to ptr
  %".6738" = ptrtoint ptr %".6737" to i64
  %".6739" = add i64 %".6738", 8
  %"for_LDG.343" = inttoptr i64 %".6739" to ptr
  %".6740" = load float, ptr %"for_LDG.343"
  %".6741" = bitcast ptr %"R10" to ptr
  store float %".6740", ptr %".6741"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".6746" = load float, ptr %"R7"
  %".6747" = load float, ptr %"R22"
  %"fmul.301" = fmul float %".6746", %".6747"
  %".6748" = bitcast ptr %"R6" to ptr
  store float %"fmul.301", ptr %".6748"
  ; FFMA R21, R6, R8, R21
  %".6751" = load float, ptr %"R6"
  %".6752" = load float, ptr %"R8"
  %".6753" = load float, ptr %"R21"
  %"fmul.302" = fmul float %".6751", %".6752"
  %"fadd.252" = fadd float %"fmul.302", %".6753"
  %".6754" = bitcast ptr %"R21" to ptr
  store float %"fadd.252", ptr %".6754"
  ; @P0 FMUL R22, R9, R22
  %".6757" = load i1, ptr %"P0"
  %".6758" = icmp ne i1 %".6757", 1
  br i1 %".6758", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".6761" = load float, ptr %"R9"
  %".6762" = load float, ptr %"R22"
  %"fmul.303" = fmul float %".6761", %".6762"
  %".6763" = bitcast ptr %"R22" to ptr
  store float %"fmul.303", ptr %".6763"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".6768" = load i1, ptr %"P0"
  %".6769" = icmp ne i1 %".6768", 1
  br i1 %".6769", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".6772" = load float, ptr %"R22"
  %".6773" = load float, ptr %"R10"
  %".6774" = load float, ptr %"R21"
  %"fmul.304" = fmul float %".6772", %".6773"
  %"fadd.253" = fadd float %"fmul.304", %".6774"
  %".6775" = bitcast ptr %"R21" to ptr
  store float %"fadd.253", ptr %".6775"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  %".6780" = load i32, ptr %"R30"
  %"zext.708" = zext i32 %".6780" to i64
  %"zext.709" = zext i32 0 to i64
  %"shl.371" = shl i64 %"zext.709", 32
  %"or.351" = or i64 %"shl.371", %"zext.708"
  %".6781" = inttoptr i64 %"or.351" to ptr
  %".6782" = ptrtoint ptr %".6781" to i64
  %".6783" = add i64 %".6782", 0
  %"for_LDG.344" = inttoptr i64 %".6783" to ptr
  %".6784" = load float, ptr %"for_LDG.344"
  %".6785" = bitcast ptr %"R4" to ptr
  store float %".6784", ptr %".6785"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".6790" = load float, ptr %"R4"
  %".6791" = load float, ptr %"R21"
  %"fadd.254" = fadd float %".6790", %".6791"
  %".6792" = bitcast ptr %"R21" to ptr
  store float %"fadd.254", ptr %".6792"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".6795" = load float, ptr %"R21"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".6795")
  %".6796" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".6797" = and i1 %"fcmp_unordered.2", %".6796"
  store i1 %".6797", ptr %"P0"
  ; @!P0 BRA `(.L_x_42)
  %".6800" = load i1, ptr %"P0"
  %".6801" = icmp eq i1 %".6800", 1
  br i1 %".6801", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".6804" = load float, ptr %"R21"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".6804")
  %"fmul.305" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".6805" = bitcast ptr %"R5" to ptr
  store float %"fmul.305", ptr %".6805"
  ; MOV R7, 0x3f800000
  %".6808" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".6808"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".6811" = load float, ptr %"R21"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".6811")
  %".6812" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".6813" = and i1 %"fcmp_unordered.3", %".6812"
  store i1 %".6813", ptr %"P0"
  ; MUFU.EX2 R5, R5
  %".6816" = load float, ptr %"R5"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".6816")
  %".6817" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.5", ptr %".6817"
  ; FADD R6, R5, 1
  %".6820" = load float, ptr %"R5"
  %"fadd.255" = fadd float %".6820", 0x3ff0000000000000
  %".6821" = bitcast ptr %"R6" to ptr
  store float %"fadd.255", ptr %".6821"
  ; MUFU.RCP R6, R6
  %".6824" = load float, ptr %"R6"
  %".6825" = fdiv float 0x3ff0000000000000, %".6824"
  %".6826" = bitcast ptr %"R6" to ptr
  store float %".6825", ptr %".6826"
  ; FFMA R4, R6, -2, R7
  %".6829" = load float, ptr %"R6"
  %".6830" = load float, ptr %"R7"
  %"fmul.306" = fmul float %".6829", 0xc000000000000000
  %"fadd.256" = fadd float %"fmul.306", %".6830"
  %".6831" = bitcast ptr %"R4" to ptr
  store float %"fadd.256", ptr %".6831"
  ; FSEL R4, R4, 1, !P0
  %".6834" = load float, ptr %"R4"
  %".6835" = load i1, ptr %"P0"
  %".6836" = icmp eq i1 %".6835", 1
  %"fsel.1" = select  i1 %".6836", float %".6834", float 0x3ff0000000000000
  %".6837" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".6837"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".6840" = load float, ptr %"R4"
  %".6841" = load float, ptr %"R21"
  %".6842" = bitcast float %".6840" to i32
  %".6843" = bitcast float 0x41e0000000000000 to i32
  %".6844" = bitcast float %".6841" to i32
  %".6845" = or i32 %".6842", %".6843"
  %".6846" = or i32 %".6842", %".6844"
  %".6847" = and i32 %".6845", %".6846"
  store i32 %".6847", ptr %"R4"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  %".6852" = bitcast ptr %"R5" to ptr
  store float 0x41ce407840000000, ptr %".6852"
  ; FMUL R4, R21, R21
  %".6855" = load float, ptr %"R21"
  %".6856" = load float, ptr %"R21"
  %"fmul.307" = fmul float %".6855", %".6856"
  %".6857" = bitcast ptr %"R4" to ptr
  store float %"fmul.307", ptr %".6857"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".6860" = load float, ptr %"R4"
  %".6861" = load float, ptr %"R5"
  %"fmul.308" = fmul float %".6860", %".6861"
  %"fadd.257" = fadd float %"fmul.308", 0xbfaac795c0000000
  %".6862" = bitcast ptr %"R5" to ptr
  store float %"fadd.257", ptr %".6862"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".6865" = load float, ptr %"R4"
  %".6866" = load float, ptr %"R5"
  %"fmul.309" = fmul float %".6865", %".6866"
  %"fadd.258" = fadd float %"fmul.309", 0x3fc10b2820000000
  %".6867" = bitcast ptr %"R5" to ptr
  store float %"fadd.258", ptr %".6867"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".6870" = load float, ptr %"R4"
  %".6871" = load float, ptr %"R5"
  %"fmul.310" = fmul float %".6870", %".6871"
  %"fadd.259" = fadd float %"fmul.310", 0xbfd5553da0000000
  %".6872" = bitcast ptr %"R5" to ptr
  store float %"fadd.259", ptr %".6872"
  ; FFMA R4, R4, R5, RZ
  %".6875" = load float, ptr %"R4"
  %".6876" = load float, ptr %"R5"
  %"fmul.311" = fmul float %".6875", %".6876"
  %"fadd.260" = fadd float %"fmul.311",              0x0
  %".6877" = bitcast ptr %"R4" to ptr
  store float %"fadd.260", ptr %".6877"
  ; FFMA R4, R21, R4, R21
  %".6880" = load float, ptr %"R21"
  %".6881" = load float, ptr %"R4"
  %".6882" = load float, ptr %"R21"
  %"fmul.312" = fmul float %".6880", %".6881"
  %"fadd.261" = fadd float %"fmul.312", %".6882"
  %".6883" = bitcast ptr %"R4" to ptr
  store float %"fadd.261", ptr %".6883"
  br label %".L_x_43"
.L_x_43:
  ; BSYNC B0
  br label %".L_x_41"
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  %".6889" = load i32, ptr %"R23"
  %"add.310" = add i32 %".6889", 25165824
  %"add.311" = add i32 %"add.310", 0
  store i32 %"add.311", ptr %"R5"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".6894" = load i32, ptr %"R5"
  %".6895" = and i32 %".6894", 2139095040
  store i32 %".6895", ptr %"R5"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".6898" = load i32, ptr %"R5"
  %".6899" = load i1, ptr %"PT"
  %"cmp.55" = icmp sgt i32 %".6898", 33554431
  %".6900" = and i1 %"cmp.55", %".6899"
  store i1 %".6900", ptr %"P0"
  ; @P0 BRA `(.L_x_45)
  %".6903" = load i1, ptr %"P0"
  %".6904" = icmp ne i1 %".6903", 1
  br i1 %".6904", label %".L_x_45", label %".L_x_41_split_0x47f0"
.L_x_41_split_0x47f0:
  ; MOV R24, R23
  %".6907" = load float, ptr %"R23"
  %".6908" = bitcast ptr %"R24" to ptr
  store float %".6907", ptr %".6908"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  call void @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R5, R22
  %".6914" = load i32, ptr %"R22"
  store i32 %".6914", ptr %"R5"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".6919" = load float, ptr %"R23"
  %".6920" = fdiv float 0x3ff0000000000000, %".6919"
  %".6921" = bitcast ptr %"R6" to ptr
  store float %".6920", ptr %".6921"
  ; FFMA R5, R23, R6, -1
  %".6924" = load float, ptr %"R23"
  %".6925" = load float, ptr %"R6"
  %"fmul.313" = fmul float %".6924", %".6925"
  %"fadd.262" = fadd float %"fmul.313", 0xbff0000000000000
  %".6926" = bitcast ptr %"R5" to ptr
  store float %"fadd.262", ptr %".6926"
  ; FADD.FTZ R5, -R5, -RZ
  %".6929" = load float, ptr %"R5"
  %".6930" = fneg float %".6929"
  %"fadd.263" = fadd float %".6930",              0x0
  %".6931" = bitcast ptr %"R5" to ptr
  store float %"fadd.263", ptr %".6931"
  ; FFMA R5, R6, R5, R6
  %".6934" = load float, ptr %"R6"
  %".6935" = load float, ptr %"R5"
  %".6936" = load float, ptr %"R6"
  %"fmul.314" = fmul float %".6934", %".6935"
  %"fadd.264" = fadd float %"fmul.314", %".6936"
  %".6937" = bitcast ptr %"R5" to ptr
  store float %"fadd.264", ptr %".6937"
  br label %".L_x_46"
.L_x_46:
  ; BSYNC B0
  br label %".L_x_44"
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  %".6943" = load i32, ptr %"R28"
  %"zext.710" = zext i32 %".6943" to i64
  %"zext.711" = zext i32 0 to i64
  %"shl.372" = shl i64 %"zext.711", 32
  %"or.352" = or i64 %"shl.372", %"zext.710"
  %".6944" = inttoptr i64 %"or.352" to ptr
  %".6945" = ptrtoint ptr %".6944" to i64
  %".6946" = add i64 %".6945", 0
  %"for_LDG.345" = inttoptr i64 %".6946" to ptr
  %".6947" = load float, ptr %"for_LDG.345"
  %".6948" = bitcast ptr %"R6" to ptr
  store float %".6947", ptr %".6948"
  ; FADD R7, -R5, 1
  %".6951" = load float, ptr %"R5"
  %".6952" = fneg float %".6951"
  %"fadd.265" = fadd float %".6952", 0x3ff0000000000000
  %".6953" = bitcast ptr %"R7" to ptr
  store float %"fadd.265", ptr %".6953"
  ; FMUL R6, R6, R5
  %".6956" = load float, ptr %"R6"
  %".6957" = load float, ptr %"R5"
  %"fmul.315" = fmul float %".6956", %".6957"
  %".6958" = bitcast ptr %"R6" to ptr
  store float %"fmul.315", ptr %".6958"
  ; FFMA R7, R7, R4, R6
  %".6961" = load float, ptr %"R7"
  %".6962" = load float, ptr %"R4"
  %".6963" = load float, ptr %"R6"
  %"fmul.316" = fmul float %".6961", %".6962"
  %"fadd.266" = fadd float %"fmul.316", %".6963"
  %".6964" = bitcast ptr %"R7" to ptr
  store float %"fadd.266", ptr %".6964"
  ; STG.E.SYS [R28], R7
  %".6967" = load float, ptr %"R7"
  %".6968" = load i32, ptr %"R28"
  %"zext.712" = zext i32 %".6968" to i64
  %"zext.713" = zext i32 0 to i64
  %"shl.373" = shl i64 %"zext.713", 32
  %"or.353" = or i64 %"shl.373", %"zext.712"
  %".6969" = inttoptr i64 %"or.353" to ptr
  %".6970" = ptrtoint ptr %".6969" to i64
  %".6971" = add i64 %".6970", 0
  %"for_STG.1" = inttoptr i64 %".6971" to ptr
  store float %".6967", ptr %"for_STG.1"
  ; @!P3 BRA `(.L_x_47)
  %".6974" = load i1, ptr %"P3"
  %".6975" = icmp eq i1 %".6974", 1
  br i1 %".6975", label %".L_x_47", label %".L_x_44_split_0x48f0"
.L_x_44_split_0x48f0:
  ; EXIT
  br label %"ExitFunction"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

declare float @"llvm.exp2.f32"(float %".1")

define void @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
{
Entry_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath:
  %"P2" = alloca i1, i32 1
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".4" = icmp ult i32 1, 32
  %"SHF_min" = select  i1 %".4", i32 1, i32 32
  %".5" = load i32, ptr %"R24"
  %"zext" = zext i32 0 to i64
  %"zext.1" = zext i32 %".5" to i64
  %"zext.2" = zext i32 1 to i64
  %"shl" = shl i64 %"zext", 32
  %"or" = or i64 %"shl", %"zext.1"
  %"shl.1" = shl i64 %"or", %"zext.2"
  %"and" = and i64 %"shl.1", 4294967295
  %"trunc32" = trunc i64 %"and" to i32
  store i32 %"trunc32", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".10" = icmp ult i32 24, 32
  %"SHF_min.1" = select  i1 %".10", i32 24, i32 32
  %".11" = load i32, ptr %"R11"
  %"zext.3" = zext i32 %".11" to i64
  %"zext.4" = zext i32 0 to i64
  %"zext.5" = zext i32 24 to i64
  %"shl.2" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.2", %"zext.4"
  %"lshr" = lshr i64 %"or.1", %"zext.5"
  %"lshr.1" = lshr i64 %"lshr", 32
  %"trunc32.1" = trunc i64 %"lshr.1" to i32
  store i32 %"trunc32.1", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".14" = load i32, ptr %"R25"
  %".15" = load i1, ptr %"PT"
  %"cmp" = icmp ne i32 %".14", 0
  %".16" = and i1 %"cmp", %".15"
  store i1 %".16", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".19" = load i1, ptr %"P0"
  %".20" = icmp ne i1 %".19", 1
  br i1 %".20", label %".L_x_49", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".23" = icmp ult i32 1, 32
  %"SHF_min.2" = select  i1 %".23", i32 1, i32 32
  %".24" = load i32, ptr %"R24"
  %"zext.6" = zext i32 0 to i64
  %"zext.7" = zext i32 %".24" to i64
  %"zext.8" = zext i32 1 to i64
  %"shl.3" = shl i64 %"zext.6", 32
  %"or.2" = or i64 %"shl.3", %"zext.7"
  %"shl.4" = shl i64 %"or.2", %"zext.8"
  %"and.1" = and i64 %"shl.4", 4294967295
  %"trunc32.2" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.2", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".27" = load i32, ptr %"R11"
  %".28" = load i1, ptr %"PT"
  %"cmp.1" = icmp ne i32 %".27", 0
  %".29" = and i1 %"cmp.1", %".28"
  store i1 %".29", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".32" = load i1, ptr %"P0"
  %".33" = icmp ne i1 %".32", 1
  br i1 %".33", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".36" = load float, ptr %"R24"
  %"fmul" = fmul float %".36", 0x43f0000000000000
  %"fadd" = fadd float %"fmul",              0x0
  %".37" = bitcast ptr %"R12" to ptr
  store float %"fadd", ptr %".37"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990:
  ; @!P0 MUFU.RCP R11, R24
  %".42" = load i1, ptr %"P0"
  %".43" = icmp eq i1 %".42", 1
  br i1 %".43", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".46" = load i32, ptr %"R24"
  %"sint_to_f32" = sitofp i32 %".46" to float
  %".47" = fdiv float 0x3ff0000000000000, %"sint_to_f32"
  %".48" = fptosi float %".47" to i32
  store i32 %".48", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0:
  ; @P0 MUFU.RCP R13, R12
  %".53" = load i1, ptr %"P0"
  %".54" = icmp ne i1 %".53", 1
  br i1 %".54", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".57" = load float, ptr %"R12"
  %".58" = fdiv float 0x3ff0000000000000, %".57"
  %".59" = bitcast ptr %"R13" to ptr
  store float %".58", ptr %".59"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0:
  ; @P0 FFMA R22, R12, R13, -1
  %".64" = load i1, ptr %"P0"
  %".65" = icmp ne i1 %".64", 1
  br i1 %".65", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".68" = load float, ptr %"R12"
  %".69" = load float, ptr %"R13"
  %"fmul.1" = fmul float %".68", %".69"
  %"fadd.1" = fadd float %"fmul.1", 0xbff0000000000000
  %".70" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".70"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".75" = load i1, ptr %"P0"
  %".76" = icmp ne i1 %".75", 1
  br i1 %".76", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".79" = load float, ptr %"R22"
  %".80" = fneg float %".79"
  %"fadd.2" = fadd float %".80",              0x0
  %".81" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".81"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0:
  ; @P0 FFMA R22, R13, R22, R13
  %".86" = load i1, ptr %"P0"
  %".87" = icmp ne i1 %".86", 1
  br i1 %".87", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".90" = load float, ptr %"R13"
  %".91" = load float, ptr %"R22"
  %".92" = load float, ptr %"R13"
  %"fmul.2" = fmul float %".90", %".91"
  %"fadd.3" = fadd float %"fmul.2", %".92"
  %".93" = bitcast ptr %"R22" to ptr
  store float %"fadd.3", ptr %".93"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".98" = load i1, ptr %"P0"
  %".99" = icmp ne i1 %".98", 1
  br i1 %".99", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".102" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".102", 0x43f0000000000000
  %"fadd.4" = fadd float %"fmul.3",              0x0
  %".103" = bitcast ptr %"R11" to ptr
  store float %"fadd.4", ptr %".103"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0:
  ; BRA `(.L_x_50)
  br label %".L_x_50"
.L_x_49:
  ; IADD3 R34, R25, -0xfd, RZ
  %".110" = load i32, ptr %"R25"
  %"add" = add i32 %".110", -253
  %"add.1" = add i32 %"add", 0
  store i32 %"add.1", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".113" = load i32, ptr %"R34"
  %".114" = load i1, ptr %"PT"
  %"cmp.2" = icmp sgt i32 %".113", 1
  %".115" = and i1 %"cmp.2", %".114"
  store i1 %".115", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".118" = load i1, ptr %"P0"
  %".119" = icmp ne i1 %".118", 1
  br i1 %".119", label %".L_x_51", label %".L_x_49_split_0x4a30"
.L_x_49_split_0x4a30:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".122" = load i32, ptr %"R24"
  %".123" = and i32 %".122", 8388607
  store i32 %".123", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".128" = load i32, ptr %"R11"
  %".129" = or i32 %".128", 1065353216
  store i32 %".129", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".132" = load i32, ptr %"R34"
  %".133" = icmp ult i32 %".132", 32
  %"SHF_min.3" = select  i1 %".133", i32 %".132", i32 32
  %".134" = load i32, ptr %"R23"
  %".135" = load i32, ptr %"R34"
  %"zext.9" = zext i32 0 to i64
  %"zext.10" = zext i32 %".134" to i64
  %"zext.11" = zext i32 %".135" to i64
  %"shl.5" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.5", %"zext.10"
  %"shl.6" = shl i64 %"or.3", %"zext.11"
  %"and.2" = and i64 %"shl.6", 4294967295
  %"trunc32.3" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.3", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".138" = load float, ptr %"R11"
  %".139" = fdiv float 0x3ff0000000000000, %".138"
  %".140" = bitcast ptr %"R12" to ptr
  store float %".139", ptr %".140"
  ; FFMA R13, R11, R12, -1
  %".143" = load float, ptr %"R11"
  %".144" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".143", %".144"
  %"fadd.5" = fadd float %"fmul.4", 0xbff0000000000000
  %".145" = bitcast ptr %"R13" to ptr
  store float %"fadd.5", ptr %".145"
  ; FADD.FTZ R13, -R13, -RZ
  %".148" = load float, ptr %"R13"
  %".149" = fneg float %".148"
  %"fadd.6" = fadd float %".149",              0x0
  %".150" = bitcast ptr %"R13" to ptr
  store float %"fadd.6", ptr %".150"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".153" = load float, ptr %"R12"
  %".154" = load float, ptr %"R13"
  %".155" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".153", %".154"
  %"fadd.7" = fadd float %"fmul.5", %".155"
  %".156" = bitcast ptr %"R22" to ptr
  store float %"fadd.7", ptr %".156"
  ; FFMA.RP R13, R12, R13, R12
  %".159" = load float, ptr %"R12"
  %".160" = load float, ptr %"R13"
  %".161" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".159", %".160"
  %"fadd.8" = fadd float %"fmul.6", %".161"
  %".162" = bitcast ptr %"R13" to ptr
  store float %"fadd.8", ptr %".162"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".165" = load float, ptr %"R22"
  %".166" = bitcast float %".165" to i32
  %".167" = and i32 %".166", 8388607
  store i32 %".167", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".170" = load float, ptr %"R22"
  %".171" = load float, ptr %"R13"
  %".172" = load i1, ptr %"PT"
  %"fcmp_ordered" = fcmp une float %".170", %".171"
  %".173" = and i1 %"fcmp_ordered", %".172"
  store i1 %".173", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".176" = load i32, ptr %"R12"
  %".177" = or i32 %".176", 8388608
  store i32 %".177", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".180" = load i1, ptr %"P0"
  %".181" = icmp eq i1 %".180", 1
  %"sel" = select  i1 %".181", i32 0, i32 4294967295
  store i32 %"sel", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".184" = load i32, ptr %"R23"
  %".185" = load i32, ptr %"R12"
  %".186" = and i32 %".184", %".185"
  store i32 %".186", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".189" = load i32, ptr %"R13"
  %".190" = sub i32 0, %".189"
  %"add.2" = add i32 %".190", 0
  %"add.3" = add i32 %"add.2", 0
  store i32 %"add.3", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".193" = load i32, ptr %"R34"
  %".194" = icmp ult i32 %".193", 32
  %"SHF_min.4" = select  i1 %".194", i32 %".193", i32 32
  %".195" = load i32, ptr %"R23"
  %".196" = load i32, ptr %"R34"
  %"zext.12" = zext i32 %".195" to i64
  %"zext.13" = zext i32 0 to i64
  %"zext.14" = zext i32 %".196" to i64
  %"shl.7" = shl i64 %"zext.12", 32
  %"or.4" = or i64 %"shl.7", %"zext.13"
  %"lshr.2" = lshr i64 %"or.4", %"zext.14"
  %"lshr.3" = lshr i64 %"lshr.2", 32
  %"trunc32.4" = trunc i64 %"lshr.3" to i32
  store i32 %"trunc32.4", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".199" = load i32, ptr %"R13"
  %".200" = load i32, ptr %"R34"
  %".201" = load i32, ptr %"R12"
  %"LOP3_result" = call i32 @"custom_lop3"(i32 %".201", i32 0, i32 %".199", i32 %".200")
  %".202" = trunc i32 %"LOP3_result" to i1
  store i1 %".202", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".205" = load i32, ptr %"R23"
  %"LOP3_result.1" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".205", i32 1)
  %".206" = trunc i32 %"LOP3_result.1" to i1
  store i1 %".206", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".209" = load i32, ptr %"R23"
  %"LOP3_result.2" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".209", i32 2)
  %".210" = trunc i32 %"LOP3_result.2" to i1
  store i1 %".210", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".213" = load i1, ptr %"P0"
  %".214" = sub i1 0, %".213"
  %".215" = load i1, ptr %"P1"
  %".216" = sub i1 0, %".215"
  %".217" = or i1 %".214", %".216"
  %".218" = and i1 %".217", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".220" = load i32, ptr %"R24"
  %"LOP3_result.3" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".220", i32 8388607)
  %".221" = trunc i32 %"LOP3_result.3" to i1
  store i1 %".221", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".224" = load i1, ptr %"P0"
  %".225" = icmp eq i1 %".224", 1
  %"sel.1" = select  i1 %".225", i32 0, i32 1
  store i32 %"sel.1", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".228" = load i32, ptr %"R11"
  %".229" = sub i32 0, %".228"
  %"add.4" = add i32 %".229", 0
  %"add.5" = add i32 %"add.4", 0
  store i32 %"add.5", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".232" = load i32, ptr %"R11"
  %".233" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".232", 0
  %".234" = and i1 %"cmp.3", %".233"
  store i1 %".234", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".237" = load i32, ptr %"R25"
  %"add.6" = add i32 %".237", -252
  %"add.7" = add i32 %"add.6", 0
  store i32 %"add.7", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".240" = load i32, ptr %"R11"
  %".241" = icmp ult i32 %".240", 32
  %"SHF_min.5" = select  i1 %".241", i32 %".240", i32 32
  %".242" = load i32, ptr %"R12"
  %".243" = load i32, ptr %"R11"
  %"zext.15" = zext i32 %".242" to i64
  %"zext.16" = zext i32 0 to i64
  %"zext.17" = zext i32 %".243" to i64
  %"shl.8" = shl i64 %"zext.15", 32
  %"or.5" = or i64 %"shl.8", %"zext.16"
  %"lshr.4" = lshr i64 %"or.5", %"zext.17"
  %"lshr.5" = lshr i64 %"lshr.4", 32
  %"trunc32.5" = trunc i64 %"lshr.5" to i32
  store i32 %"trunc32.5", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".246" = load i1, ptr %"P0"
  %".247" = icmp eq i1 %".246", 1
  br i1 %".247", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4be0"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".250" = load i32, ptr %"R11"
  %"add.8" = add i32 %".250", 1
  %"add.9" = add i32 %"add.8", 0
  store i32 %"add.9", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0"
.L_x_49_split_0x4be0:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".255" = load i1, ptr %"P1"
  %".256" = icmp eq i1 %".255", 1
  br i1 %".256", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0", label %".L_x_49_split_0x4bf0"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".259" = icmp ult i32 1, 32
  %"SHF_min.6" = select  i1 %".259", i32 1, i32 32
  %".260" = load i32, ptr %"R11"
  %"zext.18" = zext i32 0 to i64
  %"zext.19" = zext i32 %".260" to i64
  %"zext.20" = zext i32 1 to i64
  %"shl.9" = shl i64 %"zext.18", 32
  %"or.6" = or i64 %"shl.9", %"zext.19"
  %"shl.10" = shl i64 %"or.6", %"zext.20"
  %"and.3" = and i64 %"shl.10", 4294967295
  %"trunc32.6" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.6", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0"
.L_x_49_split_0x4bf0:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".265" = load i32, ptr %"R11"
  %".266" = load i32, ptr %"R24"
  %".267" = or i32 %".265", 2147483648
  %".268" = or i32 %".265", %".266"
  %".269" = and i32 %".267", %".268"
  store i32 %".269", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50"
.L_x_51:
  ; MUFU.RCP R11, R24
  %".274" = load i32, ptr %"R24"
  %"sint_to_f32.1" = sitofp i32 %".274" to float
  %".275" = fdiv float 0x3ff0000000000000, %"sint_to_f32.1"
  %".276" = fptosi float %".275" to i32
  store i32 %".276", ptr %"R11"
  br label %".L_x_50"
.L_x_50:
  ; BSYNC B1
  br label %".L_x_48"
.L_x_48:
  ; MOV R22, R11
  %".282" = load i32, ptr %"R11"
  store i32 %".282", ptr %"R22"
  ; MOV R11, 0x0
  store i32 0, ptr %"R11"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
  br label %".L_x_52"
.L_x_52:
  ; BRA `(.L_x_52)
  br label %".L_x_52"
ExitFunction:
  ret void
}

declare float @"llvm.fabs"(float %".1")

