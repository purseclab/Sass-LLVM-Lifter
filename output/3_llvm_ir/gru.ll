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
  ; IMAD R14, R14, c[0x0][0x0], R3
  %".25" = load i32, ptr %"R14"
  %".26" = load i32, ptr %"R3"
  %"mul" = mul i32 %".25", %"Arg_0"
  %"add" = add i32 %"mul", %".26"
  store i32 %"add", ptr %"R14"
  ; ISETP.GE.OR P0, PT, R14, c[0x0][0x184], !P0
  %".29" = load i32, ptr %"R14"
  %".30" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".29", %"Arg_7"
  %".31" = or i1 %"cmp.1", %".30"
  ; @P0 EXIT
  %".33" = load i1, ptr %"P0"
  %".34" = icmp ne i1 %".33", 1
  br i1 %".34", label %".text._Z11gru_forwardPfS_S_S_iii_conditionalExpr_0x0070", label %".text._Z11gru_forwardPfS_S_S_iii_split_0x0080"
.text._Z11gru_forwardPfS_S_S_iii_conditionalExpr_0x0070:
  ; EXIT
  br label %"ExitFunction"
.text._Z11gru_forwardPfS_S_S_iii_split_0x0080:
  ; ISETP.LT.AND P0, PT, RZ, c[0x0][0x180], PT
  %".39" = load i1, ptr %"PT"
  %"cmp.2" = icmp slt i32 0, %"Arg_6"
  %".40" = and i1 %"cmp.2", %".39"
  ; IMAD R0, R14.reuse, c[0x0][0x184], RZ
  %".42" = load i32, ptr %"R14"
  %"mul.1" = mul i32 %".42", %"Arg_7"
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", ptr %"R0"
  ; MOV R33, 0x4
  store i32 4, ptr %"R33"
  ; MOV R3, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R3"
  ; MOV R15, c[0x0][0x180]
  store i32 %"Arg_6", ptr %"R15"
  ; IMAD.WIDE R26, R14.reuse, R33.reuse, c[0x0][0x178]
  %".51" = load i32, ptr %"R14"
  %".52" = load i32, ptr %"R33"
  %"mul.2" = mul i32 %".51", %".52"
  %"add.2" = add i32 %"mul.2", %"Arg_5"
  store i32 %"add.2", ptr %"R26"
  ; LEA R30, R3, R14, 0x1
  %".55" = load i32, ptr %"R3"
  %".56" = load i32, ptr %"R14"
  %"shl" = shl i32 %".55", 1
  %"add.3" = add i32 %"shl", %".56"
  store i32 %"add.3", ptr %"R30"
  ; MOV R5, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R5"
  ; IMAD.WIDE R28, R14, R33, c[0x0][0x168]
  %".61" = load i32, ptr %"R14"
  %".62" = load i32, ptr %"R33"
  %"mul.3" = mul i32 %".61", %".62"
  %"add.4" = add i32 %"mul.3", %"Arg_3"
  store i32 %"add.4", ptr %"R28"
  ; LEA R3, R15, R15, 0x2
  %".65" = load i32, ptr %"R15"
  %".66" = load i32, ptr %"R15"
  %"shl.1" = shl i32 %".65", 2
  %"add.5" = add i32 %"shl.1", %".66"
  store i32 %"add.5", ptr %"R3"
  ; IMAD.WIDE R30, R30, R33, c[0x0][0x178]
  %".69" = load i32, ptr %"R30"
  %".70" = load i32, ptr %"R33"
  %"mul.4" = mul i32 %".69", %".70"
  %"add.6" = add i32 %"mul.4", %"Arg_5"
  store i32 %"add.6", ptr %"R30"
  ; IMAD R2, R5, c[0x0][0x180], RZ
  %".73" = load i32, ptr %"R5"
  %"mul.5" = mul i32 %".73", %"Arg_6"
  %"add.7" = add i32 %"mul.5", 0
  store i32 %"add.7", ptr %"R2"
  ; IMAD R3, R3, c[0x0][0x184], R0
  %".76" = load i32, ptr %"R3"
  %".77" = load i32, ptr %"R0"
  %"mul.6" = mul i32 %".76", %"Arg_7"
  %"add.8" = add i32 %"mul.6", %".77"
  store i32 %"add.8", ptr %"R3"
  ; IMAD.WIDE R32, R33, c[0x0][0x184], R26
  %".80" = load i32, ptr %"R33"
  %".81" = load i32, ptr %"R26"
  %"mul.7" = mul i32 %".80", %"Arg_7"
  %"add.9" = add i32 %"mul.7", %".81"
  store i32 %"add.9", ptr %"R32"
  ; @P0 BRA `(.L_x_0)
  %".84" = load i1, ptr %"P0"
  %".85" = icmp ne i1 %".84", 1
  br i1 %".85", label %".L_x_0", label %".text._Z11gru_forwardPfS_S_S_iii_split_0x0170"
.text._Z11gru_forwardPfS_S_S_iii_split_0x0170:
  ; LOP3.LUT R4, R5.reuse, 0x3, RZ, 0xc0, !PT
  %".88" = load i32, ptr %"R5"
  %".89" = and i32 %".88", 3
  store i32 %".89", ptr %"R4"
  ; IADD3 R5, R5, -0x1, RZ
  %".92" = load i32, ptr %"R5"
  %"add.10" = add i32 %".92", -1
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", ptr %"R5"
  ; MOV R6, RZ
  %".95" = load i32, ptr %"RZ"
  store i32 %".95", ptr %"R6"
  ; IADD3 R7, -R4, c[0x0][0x184], RZ
  %".98" = load i32, ptr %"R4"
  %".99" = sub i32 0, %".98"
  %"add.12" = add i32 %".99", %"Arg_7"
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", ptr %"R7"
  br label %".L_x_22"
.L_x_22:
  ; MOV R8, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R8"
  ; IADD3 R6, R6, 0x1, RZ
  %".105" = load i32, ptr %"R6"
  %"add.14" = add i32 %".105", 1
  %"add.15" = add i32 %"add.14", 0
  store i32 %"add.15", ptr %"R6"
  ; ISETP.GE.AND P4, PT, R8, 0x1, PT
  %".108" = load i32, ptr %"R8"
  %".109" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".108", 1
  %".110" = and i1 %"cmp.3", %".109"
  ; ISETP.GE.AND P3, PT, R6, c[0x0][0x188], PT
  %".112" = load i32, ptr %"R6"
  %".113" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".112", %"Arg_8"
  %".114" = and i1 %"cmp.4", %".113"
  ; MOV R8, RZ
  %".116" = load float, ptr %"RZ"
  %".117" = bitcast ptr %"R8" to ptr
  store float %".116", ptr %".117"
  ; MOV R52, RZ
  %".120" = load float, ptr %"RZ"
  %".121" = bitcast ptr %"R52" to ptr
  store float %".120", ptr %".121"
  ; MOV R54, RZ
  %".124" = load float, ptr %"RZ"
  %".125" = bitcast ptr %"R54" to ptr
  store float %".124", ptr %".125"
  ; @!P4 BRA `(.L_x_1)
  %".128" = load i1, ptr %"P4"
  %".129" = icmp eq i1 %".128", 1
  br i1 %".129", label %".L_x_1", label %".L_x_22_split_0x0230"
.L_x_22_split_0x0230:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".132" = load i32, ptr %"R5"
  %".133" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".132", 3
  %".134" = and i1 %"cmp.5", %".133"
  ; MOV R54, RZ
  %".136" = load float, ptr %"RZ"
  %".137" = bitcast ptr %"R54" to ptr
  store float %".136", ptr %".137"
  ; MOV R11, RZ
  %".140" = load i32, ptr %"RZ"
  store i32 %".140", ptr %"R11"
  ; MOV R52, RZ
  %".143" = load float, ptr %"RZ"
  %".144" = bitcast ptr %"R52" to ptr
  store float %".143", ptr %".144"
  ; @!P0 BRA `(.L_x_2)
  %".147" = load i1, ptr %"P0"
  %".148" = icmp eq i1 %".147", 1
  br i1 %".148", label %".L_x_2", label %".L_x_22_split_0x0280"
.L_x_22_split_0x0280:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".151" = load i32, ptr %"R7"
  %".152" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".151", 0
  %".153" = and i1 %"cmp.6", %".152"
  ; MOV R54, RZ
  %".155" = load float, ptr %"RZ"
  %".156" = bitcast ptr %"R54" to ptr
  store float %".155", ptr %".156"
  ; MOV R11, RZ
  %".159" = load i32, ptr %"RZ"
  store i32 %".159", ptr %"R11"
  ; MOV R9, R7
  %".162" = load i32, ptr %"R7"
  store i32 %".162", ptr %"R9"
  ; @!P0 BRA `(.L_x_3)
  %".165" = load i1, ptr %"P0"
  %".166" = icmp eq i1 %".165", 1
  br i1 %".166", label %".L_x_3", label %".L_x_22_split_0x02d0"
.L_x_22_split_0x02d0:
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".169" = load i32, ptr %"R9"
  %".170" = load i1, ptr %"PT"
  %"cmp.7" = icmp sgt i32 %".169", 12
  %".171" = and i1 %"cmp.7", %".170"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".173" = and i1 1, 1
  %".174" = or i1 %".173", 1
  ; @!P1 BRA `(.L_x_4)
  %".176" = load i1, ptr %"P1"
  %".177" = icmp eq i1 %".176", 1
  br i1 %".177", label %".L_x_4", label %".L_x_22_split_0x0300"
.L_x_22_split_0x0300:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".180" = xor i1 1, 1
  %".181" = and i1 %".180", 1
  %".182" = and i1 %".181", 1
  br label %".L_x_5"
.L_x_5:
  ; IADD3 R25, R0, R11, RZ
  %".185" = load i32, ptr %"R0"
  %".186" = load i32, ptr %"R11"
  %"add.16" = add i32 %".185", %".186"
  %"add.17" = add i32 %"add.16", 0
  store i32 %"add.17", ptr %"R25"
  ; MOV R18, 0x4
  store i32 4, ptr %"R18"
  ; IMAD R23, R2.reuse, 0x3, R25
  %".191" = load i32, ptr %"R2"
  %".192" = load i32, ptr %"R25"
  %"mul.8" = mul i32 %".191", 3
  %"add.18" = add i32 %"mul.8", %".192"
  store i32 %"add.18", ptr %"R23"
  ; LEA R25, R2, R25, 0x2
  %".195" = load i32, ptr %"R2"
  %".196" = load i32, ptr %"R25"
  %"shl.2" = shl i32 %".195", 2
  %"add.19" = add i32 %"shl.2", %".196"
  store i32 %"add.19", ptr %"R25"
  ; IMAD.WIDE R38, R11, R18, c[0x0][0x168]
  %".199" = load i32, ptr %"R11"
  %".200" = load i32, ptr %"R18"
  %"mul.9" = mul i32 %".199", %".200"
  %"add.20" = add i32 %"mul.9", %"Arg_3"
  store i32 %"add.20", ptr %"R38"
  ; IMAD.WIDE R16, R23, R18, c[0x0][0x170]
  %".203" = load i32, ptr %"R23"
  %".204" = load i32, ptr %"R18"
  %"mul.10" = mul i32 %".203", %".204"
  %"add.21" = add i32 %"mul.10", %"Arg_4"
  store i32 %"add.21", ptr %"R16"
  ; IMAD.WIDE R20, R25, R18, c[0x0][0x170]
  %".207" = load i32, ptr %"R25"
  %".208" = load i32, ptr %"R18"
  %"mul.11" = mul i32 %".207", %".208"
  %"add.22" = add i32 %"mul.11", %"Arg_4"
  store i32 %"add.22", ptr %"R20"
  ; LDG.E.SYS R57, [R38]
  %".211" = load i32, ptr %"R38"
  %"zext" = zext i32 %".211" to i64
  %".212" = load i32, ptr %"R39"
  %"zext.1" = zext i32 %".212" to i64
  %"shl.3" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl.3", %"zext"
  %".213" = inttoptr i64 %"or" to ptr
  %".214" = ptrtoint ptr %".213" to i64
  %".215" = add i64 %".214", 0
  %"for_LDG" = inttoptr i64 %".215" to ptr
  %".216" = load float, ptr %"for_LDG"
  %".217" = bitcast ptr %"R57" to ptr
  store float %".216", ptr %".217"
  ; LDG.E.SYS R56, [R16]
  %".220" = load i32, ptr %"R16"
  %"zext.2" = zext i32 %".220" to i64
  %".221" = load i32, ptr %"R17"
  %"zext.3" = zext i32 %".221" to i64
  %"shl.4" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.4", %"zext.2"
  %".222" = inttoptr i64 %"or.1" to ptr
  %".223" = ptrtoint ptr %".222" to i64
  %".224" = add i64 %".223", 0
  %"for_LDG.1" = inttoptr i64 %".224" to ptr
  %".225" = load float, ptr %"for_LDG.1"
  %".226" = bitcast ptr %"R56" to ptr
  store float %".225", ptr %".226"
  ; LDG.E.SYS R58, [R20]
  %".229" = load i32, ptr %"R20"
  %"zext.4" = zext i32 %".229" to i64
  %".230" = load i32, ptr %"R21"
  %"zext.5" = zext i32 %".230" to i64
  %"shl.5" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.5", %"zext.4"
  %".231" = inttoptr i64 %"or.2" to ptr
  %".232" = ptrtoint ptr %".231" to i64
  %".233" = add i64 %".232", 0
  %"for_LDG.2" = inttoptr i64 %".233" to ptr
  %".234" = load float, ptr %"for_LDG.2"
  %".235" = bitcast ptr %"R58" to ptr
  store float %".234", ptr %".235"
  ; LDG.E.SYS R24, [R38+0x4]
  %".238" = load i32, ptr %"R38"
  %"zext.6" = zext i32 %".238" to i64
  %".239" = load i32, ptr %"R39"
  %"zext.7" = zext i32 %".239" to i64
  %"shl.6" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.6", %"zext.6"
  %".240" = inttoptr i64 %"or.3" to ptr
  %".241" = ptrtoint ptr %".240" to i64
  %".242" = add i64 %".241", 4
  %"for_LDG.3" = inttoptr i64 %".242" to ptr
  %".243" = load float, ptr %"for_LDG.3"
  %".244" = bitcast ptr %"R24" to ptr
  store float %".243", ptr %".244"
  ; LDG.E.SYS R47, [R16+0x4]
  %".247" = load i32, ptr %"R16"
  %"zext.8" = zext i32 %".247" to i64
  %".248" = load i32, ptr %"R17"
  %"zext.9" = zext i32 %".248" to i64
  %"shl.7" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.7", %"zext.8"
  %".249" = inttoptr i64 %"or.4" to ptr
  %".250" = ptrtoint ptr %".249" to i64
  %".251" = add i64 %".250", 4
  %"for_LDG.4" = inttoptr i64 %".251" to ptr
  %".252" = load float, ptr %"for_LDG.4"
  %".253" = bitcast ptr %"R47" to ptr
  store float %".252", ptr %".253"
  ; LDG.E.SYS R49, [R20+0x4]
  %".256" = load i32, ptr %"R20"
  %"zext.10" = zext i32 %".256" to i64
  %".257" = load i32, ptr %"R21"
  %"zext.11" = zext i32 %".257" to i64
  %"shl.8" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.8", %"zext.10"
  %".258" = inttoptr i64 %"or.5" to ptr
  %".259" = ptrtoint ptr %".258" to i64
  %".260" = add i64 %".259", 4
  %"for_LDG.5" = inttoptr i64 %".260" to ptr
  %".261" = load float, ptr %"for_LDG.5"
  %".262" = bitcast ptr %"R49" to ptr
  store float %".261", ptr %".262"
  ; LDG.E.SYS R22, [R38+0x8]
  %".265" = load i32, ptr %"R38"
  %"zext.12" = zext i32 %".265" to i64
  %".266" = load i32, ptr %"R39"
  %"zext.13" = zext i32 %".266" to i64
  %"shl.9" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.9", %"zext.12"
  %".267" = inttoptr i64 %"or.6" to ptr
  %".268" = ptrtoint ptr %".267" to i64
  %".269" = add i64 %".268", 8
  %"for_LDG.6" = inttoptr i64 %".269" to ptr
  %".270" = load float, ptr %"for_LDG.6"
  %".271" = bitcast ptr %"R22" to ptr
  store float %".270", ptr %".271"
  ; LDG.E.SYS R43, [R16+0x8]
  %".274" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".274" to i64
  %".275" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".275" to i64
  %"shl.10" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.10", %"zext.14"
  %".276" = inttoptr i64 %"or.7" to ptr
  %".277" = ptrtoint ptr %".276" to i64
  %".278" = add i64 %".277", 8
  %"for_LDG.7" = inttoptr i64 %".278" to ptr
  %".279" = load float, ptr %"for_LDG.7"
  %".280" = bitcast ptr %"R43" to ptr
  store float %".279", ptr %".280"
  ; LDG.E.SYS R45, [R20+0x8]
  %".283" = load i32, ptr %"R20"
  %"zext.16" = zext i32 %".283" to i64
  %".284" = load i32, ptr %"R21"
  %"zext.17" = zext i32 %".284" to i64
  %"shl.11" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.11", %"zext.16"
  %".285" = inttoptr i64 %"or.8" to ptr
  %".286" = ptrtoint ptr %".285" to i64
  %".287" = add i64 %".286", 8
  %"for_LDG.8" = inttoptr i64 %".287" to ptr
  %".288" = load float, ptr %"for_LDG.8"
  %".289" = bitcast ptr %"R45" to ptr
  store float %".288", ptr %".289"
  ; LDG.E.SYS R15, [R38+0xc]
  %".292" = load i32, ptr %"R38"
  %"zext.18" = zext i32 %".292" to i64
  %".293" = load i32, ptr %"R39"
  %"zext.19" = zext i32 %".293" to i64
  %"shl.12" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.12", %"zext.18"
  %".294" = inttoptr i64 %"or.9" to ptr
  %".295" = ptrtoint ptr %".294" to i64
  %".296" = add i64 %".295", 12
  %"for_LDG.9" = inttoptr i64 %".296" to ptr
  %".297" = load float, ptr %"for_LDG.9"
  %".298" = bitcast ptr %"R15" to ptr
  store float %".297", ptr %".298"
  ; LDG.E.SYS R14, [R16+0xc]
  %".301" = load i32, ptr %"R16"
  %"zext.20" = zext i32 %".301" to i64
  %".302" = load i32, ptr %"R17"
  %"zext.21" = zext i32 %".302" to i64
  %"shl.13" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.13", %"zext.20"
  %".303" = inttoptr i64 %"or.10" to ptr
  %".304" = ptrtoint ptr %".303" to i64
  %".305" = add i64 %".304", 12
  %"for_LDG.10" = inttoptr i64 %".305" to ptr
  %".306" = load float, ptr %"for_LDG.10"
  %".307" = bitcast ptr %"R14" to ptr
  store float %".306", ptr %".307"
  ; LDG.E.SYS R13, [R20+0xc]
  %".310" = load i32, ptr %"R20"
  %"zext.22" = zext i32 %".310" to i64
  %".311" = load i32, ptr %"R21"
  %"zext.23" = zext i32 %".311" to i64
  %"shl.14" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.14", %"zext.22"
  %".312" = inttoptr i64 %"or.11" to ptr
  %".313" = ptrtoint ptr %".312" to i64
  %".314" = add i64 %".313", 12
  %"for_LDG.11" = inttoptr i64 %".314" to ptr
  %".315" = load float, ptr %"for_LDG.11"
  %".316" = bitcast ptr %"R13" to ptr
  store float %".315", ptr %".316"
  ; IADD3 R41, R11, 0x4, RZ
  %".319" = load i32, ptr %"R11"
  %"add.23" = add i32 %".319", 4
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R41"
  ; IADD3 R51, R23, 0x4, RZ
  %".322" = load i32, ptr %"R23"
  %"add.25" = add i32 %".322", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"R51"
  ; IADD3 R35, R11, 0x8, RZ
  %".325" = load i32, ptr %"R11"
  %"add.27" = add i32 %".325", 8
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", ptr %"R35"
  ; IMAD.WIDE R40, R41, R18, c[0x0][0x168]
  %".328" = load i32, ptr %"R41"
  %".329" = load i32, ptr %"R18"
  %"mul.12" = mul i32 %".328", %".329"
  %"add.29" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.29", ptr %"R40"
  ; IADD3 R37, R11, 0xc, RZ
  %".332" = load i32, ptr %"R11"
  %"add.30" = add i32 %".332", 12
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R37"
  ; IMAD.WIDE R38, R51, R18, c[0x0][0x170]
  %".335" = load i32, ptr %"R51"
  %".336" = load i32, ptr %"R18"
  %"mul.13" = mul i32 %".335", %".336"
  %"add.32" = add i32 %"mul.13", %"Arg_4"
  store i32 %"add.32", ptr %"R38"
  ; IADD3 R51, R25, 0x4, RZ
  %".339" = load i32, ptr %"R25"
  %"add.33" = add i32 %".339", 4
  %"add.34" = add i32 %"add.33", 0
  store i32 %"add.34", ptr %"R51"
  ; LDG.E.SYS R12, [R40]
  %".342" = load i32, ptr %"R40"
  %"zext.24" = zext i32 %".342" to i64
  %".343" = load i32, ptr %"R41"
  %"zext.25" = zext i32 %".343" to i64
  %"shl.15" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.15", %"zext.24"
  %".344" = inttoptr i64 %"or.12" to ptr
  %".345" = ptrtoint ptr %".344" to i64
  %".346" = add i64 %".345", 0
  %"for_LDG.12" = inttoptr i64 %".346" to ptr
  %".347" = load float, ptr %"for_LDG.12"
  %".348" = bitcast ptr %"R12" to ptr
  store float %".347", ptr %".348"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x168]
  %".351" = load i32, ptr %"R35"
  %".352" = load i32, ptr %"R18"
  %"mul.14" = mul i32 %".351", %".352"
  %"add.35" = add i32 %"mul.14", %"Arg_3"
  store i32 %"add.35", ptr %"R34"
  ; LDG.E.SYS R10, [R40+0x4]
  %".355" = load i32, ptr %"R40"
  %"zext.26" = zext i32 %".355" to i64
  %".356" = load i32, ptr %"R41"
  %"zext.27" = zext i32 %".356" to i64
  %"shl.16" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.16", %"zext.26"
  %".357" = inttoptr i64 %"or.13" to ptr
  %".358" = ptrtoint ptr %".357" to i64
  %".359" = add i64 %".358", 4
  %"for_LDG.13" = inttoptr i64 %".359" to ptr
  %".360" = load float, ptr %"for_LDG.13"
  %".361" = bitcast ptr %"R10" to ptr
  store float %".360", ptr %".361"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x168]
  %".364" = load i32, ptr %"R37"
  %".365" = load i32, ptr %"R18"
  %"mul.15" = mul i32 %".364", %".365"
  %"add.36" = add i32 %"mul.15", %"Arg_3"
  store i32 %"add.36", ptr %"R36"
  ; LDG.E.SYS R16, [R40+0x8]
  %".368" = load i32, ptr %"R40"
  %"zext.28" = zext i32 %".368" to i64
  %".369" = load i32, ptr %"R41"
  %"zext.29" = zext i32 %".369" to i64
  %"shl.17" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.17", %"zext.28"
  %".370" = inttoptr i64 %"or.14" to ptr
  %".371" = ptrtoint ptr %".370" to i64
  %".372" = add i64 %".371", 8
  %"for_LDG.14" = inttoptr i64 %".372" to ptr
  %".373" = load float, ptr %"for_LDG.14"
  %".374" = bitcast ptr %"R16" to ptr
  store float %".373", ptr %".374"
  ; LDG.E.SYS R17, [R40+0xc]
  %".377" = load i32, ptr %"R40"
  %"zext.30" = zext i32 %".377" to i64
  %".378" = load i32, ptr %"R41"
  %"zext.31" = zext i32 %".378" to i64
  %"shl.18" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.18", %"zext.30"
  %".379" = inttoptr i64 %"or.15" to ptr
  %".380" = ptrtoint ptr %".379" to i64
  %".381" = add i64 %".380", 12
  %"for_LDG.15" = inttoptr i64 %".381" to ptr
  %".382" = load float, ptr %"for_LDG.15"
  %".383" = bitcast ptr %"R17" to ptr
  store float %".382", ptr %".383"
  ; LDG.E.SYS R19, [R34]
  %".386" = load i32, ptr %"R34"
  %"zext.32" = zext i32 %".386" to i64
  %".387" = load i32, ptr %"R35"
  %"zext.33" = zext i32 %".387" to i64
  %"shl.19" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.19", %"zext.32"
  %".388" = inttoptr i64 %"or.16" to ptr
  %".389" = ptrtoint ptr %".388" to i64
  %".390" = add i64 %".389", 0
  %"for_LDG.16" = inttoptr i64 %".390" to ptr
  %".391" = load float, ptr %"for_LDG.16"
  %".392" = bitcast ptr %"R19" to ptr
  store float %".391", ptr %".392"
  ; LDG.E.SYS R20, [R34+0x4]
  %".395" = load i32, ptr %"R34"
  %"zext.34" = zext i32 %".395" to i64
  %".396" = load i32, ptr %"R35"
  %"zext.35" = zext i32 %".396" to i64
  %"shl.20" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.20", %"zext.34"
  %".397" = inttoptr i64 %"or.17" to ptr
  %".398" = ptrtoint ptr %".397" to i64
  %".399" = add i64 %".398", 4
  %"for_LDG.17" = inttoptr i64 %".399" to ptr
  %".400" = load float, ptr %"for_LDG.17"
  %".401" = bitcast ptr %"R20" to ptr
  store float %".400", ptr %".401"
  ; IMAD.WIDE R40, R51, R18, c[0x0][0x170]
  %".404" = load i32, ptr %"R51"
  %".405" = load i32, ptr %"R18"
  %"mul.16" = mul i32 %".404", %".405"
  %"add.37" = add i32 %"mul.16", %"Arg_4"
  store i32 %"add.37", ptr %"R40"
  ; LDG.E.SYS R51, [R38]
  %".408" = load i32, ptr %"R38"
  %"zext.36" = zext i32 %".408" to i64
  %".409" = load i32, ptr %"R39"
  %"zext.37" = zext i32 %".409" to i64
  %"shl.21" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.21", %"zext.36"
  %".410" = inttoptr i64 %"or.18" to ptr
  %".411" = ptrtoint ptr %".410" to i64
  %".412" = add i64 %".411", 0
  %"for_LDG.18" = inttoptr i64 %".412" to ptr
  %".413" = load float, ptr %"for_LDG.18"
  %".414" = bitcast ptr %"R51" to ptr
  store float %".413", ptr %".414"
  ; LDG.E.SYS R21, [R34+0x8]
  %".417" = load i32, ptr %"R34"
  %"zext.38" = zext i32 %".417" to i64
  %".418" = load i32, ptr %"R35"
  %"zext.39" = zext i32 %".418" to i64
  %"shl.22" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.22", %"zext.38"
  %".419" = inttoptr i64 %"or.19" to ptr
  %".420" = ptrtoint ptr %".419" to i64
  %".421" = add i64 %".420", 8
  %"for_LDG.19" = inttoptr i64 %".421" to ptr
  %".422" = load float, ptr %"for_LDG.19"
  %".423" = bitcast ptr %"R21" to ptr
  store float %".422", ptr %".423"
  ; LDG.E.SYS R42, [R34+0xc]
  %".426" = load i32, ptr %"R34"
  %"zext.40" = zext i32 %".426" to i64
  %".427" = load i32, ptr %"R35"
  %"zext.41" = zext i32 %".427" to i64
  %"shl.23" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.23", %"zext.40"
  %".428" = inttoptr i64 %"or.20" to ptr
  %".429" = ptrtoint ptr %".428" to i64
  %".430" = add i64 %".429", 12
  %"for_LDG.20" = inttoptr i64 %".430" to ptr
  %".431" = load float, ptr %"for_LDG.20"
  %".432" = bitcast ptr %"R42" to ptr
  store float %".431", ptr %".432"
  ; LDG.E.SYS R44, [R36]
  %".435" = load i32, ptr %"R36"
  %"zext.42" = zext i32 %".435" to i64
  %".436" = load i32, ptr %"R37"
  %"zext.43" = zext i32 %".436" to i64
  %"shl.24" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.24", %"zext.42"
  %".437" = inttoptr i64 %"or.21" to ptr
  %".438" = ptrtoint ptr %".437" to i64
  %".439" = add i64 %".438", 0
  %"for_LDG.21" = inttoptr i64 %".439" to ptr
  %".440" = load float, ptr %"for_LDG.21"
  %".441" = bitcast ptr %"R44" to ptr
  store float %".440", ptr %".441"
  ; LDG.E.SYS R46, [R36+0x4]
  %".444" = load i32, ptr %"R36"
  %"zext.44" = zext i32 %".444" to i64
  %".445" = load i32, ptr %"R37"
  %"zext.45" = zext i32 %".445" to i64
  %"shl.25" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.25", %"zext.44"
  %".446" = inttoptr i64 %"or.22" to ptr
  %".447" = ptrtoint ptr %".446" to i64
  %".448" = add i64 %".447", 4
  %"for_LDG.22" = inttoptr i64 %".448" to ptr
  %".449" = load float, ptr %"for_LDG.22"
  %".450" = bitcast ptr %"R46" to ptr
  store float %".449", ptr %".450"
  ; IADD3 R35, R23, 0x8, RZ
  %".453" = load i32, ptr %"R23"
  %"add.38" = add i32 %".453", 8
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R35"
  ; LDG.E.SYS R48, [R36+0x8]
  %".456" = load i32, ptr %"R36"
  %"zext.46" = zext i32 %".456" to i64
  %".457" = load i32, ptr %"R37"
  %"zext.47" = zext i32 %".457" to i64
  %"shl.26" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.26", %"zext.46"
  %".458" = inttoptr i64 %"or.23" to ptr
  %".459" = ptrtoint ptr %".458" to i64
  %".460" = add i64 %".459", 8
  %"for_LDG.23" = inttoptr i64 %".460" to ptr
  %".461" = load float, ptr %"for_LDG.23"
  %".462" = bitcast ptr %"R48" to ptr
  store float %".461", ptr %".462"
  ; LDG.E.SYS R50, [R36+0xc]
  %".465" = load i32, ptr %"R36"
  %"zext.48" = zext i32 %".465" to i64
  %".466" = load i32, ptr %"R37"
  %"zext.49" = zext i32 %".466" to i64
  %"shl.27" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.27", %"zext.48"
  %".467" = inttoptr i64 %"or.24" to ptr
  %".468" = ptrtoint ptr %".467" to i64
  %".469" = add i64 %".468", 12
  %"for_LDG.24" = inttoptr i64 %".469" to ptr
  %".470" = load float, ptr %"for_LDG.24"
  %".471" = bitcast ptr %"R50" to ptr
  store float %".470", ptr %".471"
  ; LDG.E.SYS R53, [R38+0x4]
  %".474" = load i32, ptr %"R38"
  %"zext.50" = zext i32 %".474" to i64
  %".475" = load i32, ptr %"R39"
  %"zext.51" = zext i32 %".475" to i64
  %"shl.28" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.28", %"zext.50"
  %".476" = inttoptr i64 %"or.25" to ptr
  %".477" = ptrtoint ptr %".476" to i64
  %".478" = add i64 %".477", 4
  %"for_LDG.25" = inttoptr i64 %".478" to ptr
  %".479" = load float, ptr %"for_LDG.25"
  %".480" = bitcast ptr %"R53" to ptr
  store float %".479", ptr %".480"
  ; LDG.E.SYS R59, [R40+0x4]
  %".483" = load i32, ptr %"R40"
  %"zext.52" = zext i32 %".483" to i64
  %".484" = load i32, ptr %"R41"
  %"zext.53" = zext i32 %".484" to i64
  %"shl.29" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.29", %"zext.52"
  %".485" = inttoptr i64 %"or.26" to ptr
  %".486" = ptrtoint ptr %".485" to i64
  %".487" = add i64 %".486", 4
  %"for_LDG.26" = inttoptr i64 %".487" to ptr
  %".488" = load float, ptr %"for_LDG.26"
  %".489" = bitcast ptr %"R59" to ptr
  store float %".488", ptr %".489"
  ; IADD3 R37, R25, 0x8, RZ
  %".492" = load i32, ptr %"R25"
  %"add.40" = add i32 %".492", 8
  %"add.41" = add i32 %"add.40", 0
  store i32 %"add.41", ptr %"R37"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x170]
  %".495" = load i32, ptr %"R35"
  %".496" = load i32, ptr %"R18"
  %"mul.17" = mul i32 %".495", %".496"
  %"add.42" = add i32 %"mul.17", %"Arg_4"
  store i32 %"add.42", ptr %"R34"
  ; LDG.E.SYS R55, [R38+0x8]
  %".499" = load i32, ptr %"R38"
  %"zext.54" = zext i32 %".499" to i64
  %".500" = load i32, ptr %"R39"
  %"zext.55" = zext i32 %".500" to i64
  %"shl.30" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.30", %"zext.54"
  %".501" = inttoptr i64 %"or.27" to ptr
  %".502" = ptrtoint ptr %".501" to i64
  %".503" = add i64 %".502", 8
  %"for_LDG.27" = inttoptr i64 %".503" to ptr
  %".504" = load float, ptr %"for_LDG.27"
  %".505" = bitcast ptr %"R55" to ptr
  store float %".504", ptr %".505"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x170]
  %".508" = load i32, ptr %"R37"
  %".509" = load i32, ptr %"R18"
  %"mul.18" = mul i32 %".508", %".509"
  %"add.43" = add i32 %"mul.18", %"Arg_4"
  store i32 %"add.43", ptr %"R36"
  ; LDG.E.SYS R61, [R40+0x8]
  %".512" = load i32, ptr %"R40"
  %"zext.56" = zext i32 %".512" to i64
  %".513" = load i32, ptr %"R41"
  %"zext.57" = zext i32 %".513" to i64
  %"shl.31" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.31", %"zext.56"
  %".514" = inttoptr i64 %"or.28" to ptr
  %".515" = ptrtoint ptr %".514" to i64
  %".516" = add i64 %".515", 8
  %"for_LDG.28" = inttoptr i64 %".516" to ptr
  %".517" = load float, ptr %"for_LDG.28"
  %".518" = bitcast ptr %"R61" to ptr
  store float %".517", ptr %".518"
  ; LDG.E.SYS R60, [R38+0xc]
  %".521" = load i32, ptr %"R38"
  %"zext.58" = zext i32 %".521" to i64
  %".522" = load i32, ptr %"R39"
  %"zext.59" = zext i32 %".522" to i64
  %"shl.32" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.32", %"zext.58"
  %".523" = inttoptr i64 %"or.29" to ptr
  %".524" = ptrtoint ptr %".523" to i64
  %".525" = add i64 %".524", 12
  %"for_LDG.29" = inttoptr i64 %".525" to ptr
  %".526" = load float, ptr %"for_LDG.29"
  %".527" = bitcast ptr %"R60" to ptr
  store float %".526", ptr %".527"
  ; IADD3 R23, R23, 0xc, RZ
  %".530" = load i32, ptr %"R23"
  %"add.44" = add i32 %".530", 12
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R23"
  ; IADD3 R25, R25, 0xc, RZ
  %".533" = load i32, ptr %"R25"
  %"add.46" = add i32 %".533", 12
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R25"
  ; LDG.E.SYS R39, [R34+0x4]
  %".536" = load i32, ptr %"R34"
  %"zext.60" = zext i32 %".536" to i64
  %".537" = load i32, ptr %"R35"
  %"zext.61" = zext i32 %".537" to i64
  %"shl.33" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.33", %"zext.60"
  %".538" = inttoptr i64 %"or.30" to ptr
  %".539" = ptrtoint ptr %".538" to i64
  %".540" = add i64 %".539", 4
  %"for_LDG.30" = inttoptr i64 %".540" to ptr
  %".541" = load float, ptr %"for_LDG.30"
  %".542" = bitcast ptr %"R39" to ptr
  store float %".541", ptr %".542"
  ; LDG.E.SYS R38, [R34+0x8]
  %".545" = load i32, ptr %"R34"
  %"zext.62" = zext i32 %".545" to i64
  %".546" = load i32, ptr %"R35"
  %"zext.63" = zext i32 %".546" to i64
  %"shl.34" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.34", %"zext.62"
  %".547" = inttoptr i64 %"or.31" to ptr
  %".548" = ptrtoint ptr %".547" to i64
  %".549" = add i64 %".548", 8
  %"for_LDG.31" = inttoptr i64 %".549" to ptr
  %".550" = load float, ptr %"for_LDG.31"
  %".551" = bitcast ptr %"R38" to ptr
  store float %".550", ptr %".551"
  ; FFMA R56, R56, R57, R52
  %".554" = load float, ptr %"R56"
  %".555" = load float, ptr %"R57"
  %".556" = load float, ptr %"R52"
  %"fmul" = fmul float %".554", %".555"
  %"fadd" = fadd float %"fmul", %".556"
  %".557" = bitcast ptr %"R56" to ptr
  store float %"fadd", ptr %".557"
  ; LDG.E.SYS R52, [R40+0xc]
  %".560" = load i32, ptr %"R40"
  %"zext.64" = zext i32 %".560" to i64
  %".561" = load i32, ptr %"R41"
  %"zext.65" = zext i32 %".561" to i64
  %"shl.35" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.35", %"zext.64"
  %".562" = inttoptr i64 %"or.32" to ptr
  %".563" = ptrtoint ptr %".562" to i64
  %".564" = add i64 %".563", 12
  %"for_LDG.32" = inttoptr i64 %".564" to ptr
  %".565" = load float, ptr %"for_LDG.32"
  %".566" = bitcast ptr %"R52" to ptr
  store float %".565", ptr %".566"
  ; FFMA R58, R57, R58, R54
  %".569" = load float, ptr %"R57"
  %".570" = load float, ptr %"R58"
  %".571" = load float, ptr %"R54"
  %"fmul.1" = fmul float %".569", %".570"
  %"fadd.1" = fadd float %"fmul.1", %".571"
  %".572" = bitcast ptr %"R58" to ptr
  store float %"fadd.1", ptr %".572"
  ; LDG.E.SYS R57, [R40]
  %".575" = load i32, ptr %"R40"
  %"zext.66" = zext i32 %".575" to i64
  %".576" = load i32, ptr %"R41"
  %"zext.67" = zext i32 %".576" to i64
  %"shl.36" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.36", %"zext.66"
  %".577" = inttoptr i64 %"or.33" to ptr
  %".578" = ptrtoint ptr %".577" to i64
  %".579" = add i64 %".578", 0
  %"for_LDG.33" = inttoptr i64 %".579" to ptr
  %".580" = load float, ptr %"for_LDG.33"
  %".581" = bitcast ptr %"R57" to ptr
  store float %".580", ptr %".581"
  ; LDG.E.SYS R54, [R34]
  %".584" = load i32, ptr %"R34"
  %"zext.68" = zext i32 %".584" to i64
  %".585" = load i32, ptr %"R35"
  %"zext.69" = zext i32 %".585" to i64
  %"shl.37" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.37", %"zext.68"
  %".586" = inttoptr i64 %"or.34" to ptr
  %".587" = ptrtoint ptr %".586" to i64
  %".588" = add i64 %".587", 0
  %"for_LDG.34" = inttoptr i64 %".588" to ptr
  %".589" = load float, ptr %"for_LDG.34"
  %".590" = bitcast ptr %"R54" to ptr
  store float %".589", ptr %".590"
  ; FFMA R56, R47, R24, R56
  %".593" = load float, ptr %"R47"
  %".594" = load float, ptr %"R24"
  %".595" = load float, ptr %"R56"
  %"fmul.2" = fmul float %".593", %".594"
  %"fadd.2" = fadd float %"fmul.2", %".595"
  %".596" = bitcast ptr %"R56" to ptr
  store float %"fadd.2", ptr %".596"
  ; LDG.E.SYS R47, [R34+0xc]
  %".599" = load i32, ptr %"R34"
  %"zext.70" = zext i32 %".599" to i64
  %".600" = load i32, ptr %"R35"
  %"zext.71" = zext i32 %".600" to i64
  %"shl.38" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.38", %"zext.70"
  %".601" = inttoptr i64 %"or.35" to ptr
  %".602" = ptrtoint ptr %".601" to i64
  %".603" = add i64 %".602", 12
  %"for_LDG.35" = inttoptr i64 %".603" to ptr
  %".604" = load float, ptr %"for_LDG.35"
  %".605" = bitcast ptr %"R47" to ptr
  store float %".604", ptr %".605"
  ; FFMA R58, R24, R49, R58
  %".608" = load float, ptr %"R24"
  %".609" = load float, ptr %"R49"
  %".610" = load float, ptr %"R58"
  %"fmul.3" = fmul float %".608", %".609"
  %"fadd.3" = fadd float %"fmul.3", %".610"
  %".611" = bitcast ptr %"R58" to ptr
  store float %"fadd.3", ptr %".611"
  ; LDG.E.SYS R41, [R36+0x4]
  %".614" = load i32, ptr %"R36"
  %"zext.72" = zext i32 %".614" to i64
  %".615" = load i32, ptr %"R37"
  %"zext.73" = zext i32 %".615" to i64
  %"shl.39" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.39", %"zext.72"
  %".616" = inttoptr i64 %"or.36" to ptr
  %".617" = ptrtoint ptr %".616" to i64
  %".618" = add i64 %".617", 4
  %"for_LDG.36" = inttoptr i64 %".618" to ptr
  %".619" = load float, ptr %"for_LDG.36"
  %".620" = bitcast ptr %"R41" to ptr
  store float %".619", ptr %".620"
  ; LDG.E.SYS R40, [R36+0x8]
  %".623" = load i32, ptr %"R36"
  %"zext.74" = zext i32 %".623" to i64
  %".624" = load i32, ptr %"R37"
  %"zext.75" = zext i32 %".624" to i64
  %"shl.40" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.40", %"zext.74"
  %".625" = inttoptr i64 %"or.37" to ptr
  %".626" = ptrtoint ptr %".625" to i64
  %".627" = add i64 %".626", 8
  %"for_LDG.37" = inttoptr i64 %".627" to ptr
  %".628" = load float, ptr %"for_LDG.37"
  %".629" = bitcast ptr %"R40" to ptr
  store float %".628", ptr %".629"
  ; FFMA R49, R43, R22, R56
  %".632" = load float, ptr %"R43"
  %".633" = load float, ptr %"R22"
  %".634" = load float, ptr %"R56"
  %"fmul.4" = fmul float %".632", %".633"
  %"fadd.4" = fadd float %"fmul.4", %".634"
  %".635" = bitcast ptr %"R49" to ptr
  store float %"fadd.4", ptr %".635"
  ; LDG.E.SYS R56, [R36]
  %".638" = load i32, ptr %"R36"
  %"zext.76" = zext i32 %".638" to i64
  %".639" = load i32, ptr %"R37"
  %"zext.77" = zext i32 %".639" to i64
  %"shl.41" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.41", %"zext.76"
  %".640" = inttoptr i64 %"or.38" to ptr
  %".641" = ptrtoint ptr %".640" to i64
  %".642" = add i64 %".641", 0
  %"for_LDG.38" = inttoptr i64 %".642" to ptr
  %".643" = load float, ptr %"for_LDG.38"
  %".644" = bitcast ptr %"R56" to ptr
  store float %".643", ptr %".644"
  ; IMAD.WIDE R24, R25, R18, c[0x0][0x170]
  %".647" = load i32, ptr %"R25"
  %".648" = load i32, ptr %"R18"
  %"mul.19" = mul i32 %".647", %".648"
  %"add.48" = add i32 %"mul.19", %"Arg_4"
  store i32 %"add.48", ptr %"R24"
  ; LDG.E.SYS R43, [R36+0xc]
  %".651" = load i32, ptr %"R36"
  %"zext.78" = zext i32 %".651" to i64
  %".652" = load i32, ptr %"R37"
  %"zext.79" = zext i32 %".652" to i64
  %"shl.42" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.42", %"zext.78"
  %".653" = inttoptr i64 %"or.39" to ptr
  %".654" = ptrtoint ptr %".653" to i64
  %".655" = add i64 %".654", 12
  %"for_LDG.39" = inttoptr i64 %".655" to ptr
  %".656" = load float, ptr %"for_LDG.39"
  %".657" = bitcast ptr %"R43" to ptr
  store float %".656", ptr %".657"
  ; FFMA R58, R22, R45, R58
  %".660" = load float, ptr %"R22"
  %".661" = load float, ptr %"R45"
  %".662" = load float, ptr %"R58"
  %"fmul.5" = fmul float %".660", %".661"
  %"fadd.5" = fadd float %"fmul.5", %".662"
  %".663" = bitcast ptr %"R58" to ptr
  store float %"fadd.5", ptr %".663"
  ; IMAD.WIDE R22, R23, R18, c[0x0][0x170]
  %".666" = load i32, ptr %"R23"
  %".667" = load i32, ptr %"R18"
  %"mul.20" = mul i32 %".666", %".667"
  %"add.49" = add i32 %"mul.20", %"Arg_4"
  store i32 %"add.49", ptr %"R22"
  ; LDG.E.SYS R18, [R24]
  %".670" = load i32, ptr %"R24"
  %"zext.80" = zext i32 %".670" to i64
  %".671" = load i32, ptr %"R25"
  %"zext.81" = zext i32 %".671" to i64
  %"shl.43" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.43", %"zext.80"
  %".672" = inttoptr i64 %"or.40" to ptr
  %".673" = ptrtoint ptr %".672" to i64
  %".674" = add i64 %".673", 0
  %"for_LDG.40" = inttoptr i64 %".674" to ptr
  %".675" = load float, ptr %"for_LDG.40"
  %".676" = bitcast ptr %"R18" to ptr
  store float %".675", ptr %".676"
  ; FFMA R14, R14, R15, R49
  %".679" = load float, ptr %"R14"
  %".680" = load float, ptr %"R15"
  %".681" = load float, ptr %"R49"
  %"fmul.6" = fmul float %".679", %".680"
  %"fadd.6" = fadd float %"fmul.6", %".681"
  %".682" = bitcast ptr %"R14" to ptr
  store float %"fadd.6", ptr %".682"
  ; LDG.E.SYS R49, [R24+0x4]
  %".685" = load i32, ptr %"R24"
  %"zext.82" = zext i32 %".685" to i64
  %".686" = load i32, ptr %"R25"
  %"zext.83" = zext i32 %".686" to i64
  %"shl.44" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.44", %"zext.82"
  %".687" = inttoptr i64 %"or.41" to ptr
  %".688" = ptrtoint ptr %".687" to i64
  %".689" = add i64 %".688", 4
  %"for_LDG.41" = inttoptr i64 %".689" to ptr
  %".690" = load float, ptr %"for_LDG.41"
  %".691" = bitcast ptr %"R49" to ptr
  store float %".690", ptr %".691"
  ; FFMA R58, R15, R13, R58
  %".694" = load float, ptr %"R15"
  %".695" = load float, ptr %"R13"
  %".696" = load float, ptr %"R58"
  %"fmul.7" = fmul float %".694", %".695"
  %"fadd.7" = fadd float %"fmul.7", %".696"
  %".697" = bitcast ptr %"R58" to ptr
  store float %"fadd.7", ptr %".697"
  ; LDG.E.SYS R35, [R22]
  %".700" = load i32, ptr %"R22"
  %"zext.84" = zext i32 %".700" to i64
  %".701" = load i32, ptr %"R23"
  %"zext.85" = zext i32 %".701" to i64
  %"shl.45" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.45", %"zext.84"
  %".702" = inttoptr i64 %"or.42" to ptr
  %".703" = ptrtoint ptr %".702" to i64
  %".704" = add i64 %".703", 0
  %"for_LDG.42" = inttoptr i64 %".704" to ptr
  %".705" = load float, ptr %"for_LDG.42"
  %".706" = bitcast ptr %"R35" to ptr
  store float %".705", ptr %".706"
  ; LDG.E.SYS R15, [R22+0x4]
  %".709" = load i32, ptr %"R22"
  %"zext.86" = zext i32 %".709" to i64
  %".710" = load i32, ptr %"R23"
  %"zext.87" = zext i32 %".710" to i64
  %"shl.46" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.46", %"zext.86"
  %".711" = inttoptr i64 %"or.43" to ptr
  %".712" = ptrtoint ptr %".711" to i64
  %".713" = add i64 %".712", 4
  %"for_LDG.43" = inttoptr i64 %".713" to ptr
  %".714" = load float, ptr %"for_LDG.43"
  %".715" = bitcast ptr %"R15" to ptr
  store float %".714", ptr %".715"
  ; LDG.E.SYS R13, [R22+0x8]
  %".718" = load i32, ptr %"R22"
  %"zext.88" = zext i32 %".718" to i64
  %".719" = load i32, ptr %"R23"
  %"zext.89" = zext i32 %".719" to i64
  %"shl.47" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.47", %"zext.88"
  %".720" = inttoptr i64 %"or.44" to ptr
  %".721" = ptrtoint ptr %".720" to i64
  %".722" = add i64 %".721", 8
  %"for_LDG.44" = inttoptr i64 %".722" to ptr
  %".723" = load float, ptr %"for_LDG.44"
  %".724" = bitcast ptr %"R13" to ptr
  store float %".723", ptr %".724"
  ; LDG.E.SYS R37, [R24+0x8]
  %".727" = load i32, ptr %"R24"
  %"zext.90" = zext i32 %".727" to i64
  %".728" = load i32, ptr %"R25"
  %"zext.91" = zext i32 %".728" to i64
  %"shl.48" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.48", %"zext.90"
  %".729" = inttoptr i64 %"or.45" to ptr
  %".730" = ptrtoint ptr %".729" to i64
  %".731" = add i64 %".730", 8
  %"for_LDG.45" = inttoptr i64 %".731" to ptr
  %".732" = load float, ptr %"for_LDG.45"
  %".733" = bitcast ptr %"R37" to ptr
  store float %".732", ptr %".733"
  ; LDG.E.SYS R45, [R22+0xc]
  %".736" = load i32, ptr %"R22"
  %"zext.92" = zext i32 %".736" to i64
  %".737" = load i32, ptr %"R23"
  %"zext.93" = zext i32 %".737" to i64
  %"shl.49" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.49", %"zext.92"
  %".738" = inttoptr i64 %"or.46" to ptr
  %".739" = ptrtoint ptr %".738" to i64
  %".740" = add i64 %".739", 12
  %"for_LDG.46" = inttoptr i64 %".740" to ptr
  %".741" = load float, ptr %"for_LDG.46"
  %".742" = bitcast ptr %"R45" to ptr
  store float %".741", ptr %".742"
  ; LDG.E.SYS R34, [R24+0xc]
  %".745" = load i32, ptr %"R24"
  %"zext.94" = zext i32 %".745" to i64
  %".746" = load i32, ptr %"R25"
  %"zext.95" = zext i32 %".746" to i64
  %"shl.50" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.50", %"zext.94"
  %".747" = inttoptr i64 %"or.47" to ptr
  %".748" = ptrtoint ptr %".747" to i64
  %".749" = add i64 %".748", 12
  %"for_LDG.47" = inttoptr i64 %".749" to ptr
  %".750" = load float, ptr %"for_LDG.47"
  %".751" = bitcast ptr %"R34" to ptr
  store float %".750", ptr %".751"
  ; FFMA R14, R51, R12, R14
  %".754" = load float, ptr %"R51"
  %".755" = load float, ptr %"R12"
  %".756" = load float, ptr %"R14"
  %"fmul.8" = fmul float %".754", %".755"
  %"fadd.8" = fadd float %"fmul.8", %".756"
  %".757" = bitcast ptr %"R14" to ptr
  store float %"fadd.8", ptr %".757"
  ; IADD3 R9, R9, -0x10, RZ
  %".760" = load i32, ptr %"R9"
  %"add.50" = add i32 %".760", -16
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R9"
  ; FFMA R14, R53, R10, R14
  %".763" = load float, ptr %"R53"
  %".764" = load float, ptr %"R10"
  %".765" = load float, ptr %"R14"
  %"fmul.9" = fmul float %".763", %".764"
  %"fadd.9" = fadd float %"fmul.9", %".765"
  %".766" = bitcast ptr %"R14" to ptr
  store float %"fadd.9", ptr %".766"
  ; FFMA R14, R55, R16, R14
  %".769" = load float, ptr %"R55"
  %".770" = load float, ptr %"R16"
  %".771" = load float, ptr %"R14"
  %"fmul.10" = fmul float %".769", %".770"
  %"fadd.10" = fadd float %"fmul.10", %".771"
  %".772" = bitcast ptr %"R14" to ptr
  store float %"fadd.10", ptr %".772"
  ; FFMA R14, R60, R17, R14
  %".775" = load float, ptr %"R60"
  %".776" = load float, ptr %"R17"
  %".777" = load float, ptr %"R14"
  %"fmul.11" = fmul float %".775", %".776"
  %"fadd.11" = fadd float %"fmul.11", %".777"
  %".778" = bitcast ptr %"R14" to ptr
  store float %"fadd.11", ptr %".778"
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".781" = load i32, ptr %"R9"
  %".782" = load i1, ptr %"PT"
  %"cmp.8" = icmp sgt i32 %".781", 12
  %".783" = and i1 %"cmp.8", %".782"
  ; IADD3 R11, R11, 0x10, RZ
  %".785" = load i32, ptr %"R11"
  %"add.52" = add i32 %".785", 16
  %"add.53" = add i32 %"add.52", 0
  store i32 %"add.53", ptr %"R11"
  ; FFMA R57, R12, R57, R58
  %".788" = load float, ptr %"R12"
  %".789" = load float, ptr %"R57"
  %".790" = load float, ptr %"R58"
  %"fmul.12" = fmul float %".788", %".789"
  %"fadd.12" = fadd float %"fmul.12", %".790"
  %".791" = bitcast ptr %"R57" to ptr
  store float %"fadd.12", ptr %".791"
  ; FFMA R57, R10, R59, R57
  %".794" = load float, ptr %"R10"
  %".795" = load float, ptr %"R59"
  %".796" = load float, ptr %"R57"
  %"fmul.13" = fmul float %".794", %".795"
  %"fadd.13" = fadd float %"fmul.13", %".796"
  %".797" = bitcast ptr %"R57" to ptr
  store float %"fadd.13", ptr %".797"
  ; FFMA R57, R16, R61, R57
  %".800" = load float, ptr %"R16"
  %".801" = load float, ptr %"R61"
  %".802" = load float, ptr %"R57"
  %"fmul.14" = fmul float %".800", %".801"
  %"fadd.14" = fadd float %"fmul.14", %".802"
  %".803" = bitcast ptr %"R57" to ptr
  store float %"fadd.14", ptr %".803"
  ; FFMA R52, R17, R52, R57
  %".806" = load float, ptr %"R17"
  %".807" = load float, ptr %"R52"
  %".808" = load float, ptr %"R57"
  %"fmul.15" = fmul float %".806", %".807"
  %"fadd.15" = fadd float %"fmul.15", %".808"
  %".809" = bitcast ptr %"R52" to ptr
  store float %"fadd.15", ptr %".809"
  ; FFMA R14, R54, R19, R14
  %".812" = load float, ptr %"R54"
  %".813" = load float, ptr %"R19"
  %".814" = load float, ptr %"R14"
  %"fmul.16" = fmul float %".812", %".813"
  %"fadd.16" = fadd float %"fmul.16", %".814"
  %".815" = bitcast ptr %"R14" to ptr
  store float %"fadd.16", ptr %".815"
  ; FFMA R52, R19, R56, R52
  %".818" = load float, ptr %"R19"
  %".819" = load float, ptr %"R56"
  %".820" = load float, ptr %"R52"
  %"fmul.17" = fmul float %".818", %".819"
  %"fadd.17" = fadd float %"fmul.17", %".820"
  %".821" = bitcast ptr %"R52" to ptr
  store float %"fadd.17", ptr %".821"
  ; FFMA R14, R39, R20, R14
  %".824" = load float, ptr %"R39"
  %".825" = load float, ptr %"R20"
  %".826" = load float, ptr %"R14"
  %"fmul.18" = fmul float %".824", %".825"
  %"fadd.18" = fadd float %"fmul.18", %".826"
  %".827" = bitcast ptr %"R14" to ptr
  store float %"fadd.18", ptr %".827"
  ; FFMA R41, R20, R41, R52
  %".830" = load float, ptr %"R20"
  %".831" = load float, ptr %"R41"
  %".832" = load float, ptr %"R52"
  %"fmul.19" = fmul float %".830", %".831"
  %"fadd.19" = fadd float %"fmul.19", %".832"
  %".833" = bitcast ptr %"R41" to ptr
  store float %"fadd.19", ptr %".833"
  ; FFMA R14, R38, R21, R14
  %".836" = load float, ptr %"R38"
  %".837" = load float, ptr %"R21"
  %".838" = load float, ptr %"R14"
  %"fmul.20" = fmul float %".836", %".837"
  %"fadd.20" = fadd float %"fmul.20", %".838"
  %".839" = bitcast ptr %"R14" to ptr
  store float %"fadd.20", ptr %".839"
  ; FFMA R40, R21, R40, R41
  %".842" = load float, ptr %"R21"
  %".843" = load float, ptr %"R40"
  %".844" = load float, ptr %"R41"
  %"fmul.21" = fmul float %".842", %".843"
  %"fadd.21" = fadd float %"fmul.21", %".844"
  %".845" = bitcast ptr %"R40" to ptr
  store float %"fadd.21", ptr %".845"
  ; FFMA R14, R47, R42, R14
  %".848" = load float, ptr %"R47"
  %".849" = load float, ptr %"R42"
  %".850" = load float, ptr %"R14"
  %"fmul.22" = fmul float %".848", %".849"
  %"fadd.22" = fadd float %"fmul.22", %".850"
  %".851" = bitcast ptr %"R14" to ptr
  store float %"fadd.22", ptr %".851"
  ; FFMA R43, R42, R43, R40
  %".854" = load float, ptr %"R42"
  %".855" = load float, ptr %"R43"
  %".856" = load float, ptr %"R40"
  %"fmul.23" = fmul float %".854", %".855"
  %"fadd.23" = fadd float %"fmul.23", %".856"
  %".857" = bitcast ptr %"R43" to ptr
  store float %"fadd.23", ptr %".857"
  ; FFMA R18, R44, R18, R43
  %".860" = load float, ptr %"R44"
  %".861" = load float, ptr %"R18"
  %".862" = load float, ptr %"R43"
  %"fmul.24" = fmul float %".860", %".861"
  %"fadd.24" = fadd float %"fmul.24", %".862"
  %".863" = bitcast ptr %"R18" to ptr
  store float %"fadd.24", ptr %".863"
  ; FFMA R14, R35, R44, R14
  %".866" = load float, ptr %"R35"
  %".867" = load float, ptr %"R44"
  %".868" = load float, ptr %"R14"
  %"fmul.25" = fmul float %".866", %".867"
  %"fadd.25" = fadd float %"fmul.25", %".868"
  %".869" = bitcast ptr %"R14" to ptr
  store float %"fadd.25", ptr %".869"
  ; FFMA R18, R46, R49, R18
  %".872" = load float, ptr %"R46"
  %".873" = load float, ptr %"R49"
  %".874" = load float, ptr %"R18"
  %"fmul.26" = fmul float %".872", %".873"
  %"fadd.26" = fadd float %"fmul.26", %".874"
  %".875" = bitcast ptr %"R18" to ptr
  store float %"fadd.26", ptr %".875"
  ; FFMA R14, R15, R46, R14
  %".878" = load float, ptr %"R15"
  %".879" = load float, ptr %"R46"
  %".880" = load float, ptr %"R14"
  %"fmul.27" = fmul float %".878", %".879"
  %"fadd.27" = fadd float %"fmul.27", %".880"
  %".881" = bitcast ptr %"R14" to ptr
  store float %"fadd.27", ptr %".881"
  ; FFMA R13, R13, R48, R14
  %".884" = load float, ptr %"R13"
  %".885" = load float, ptr %"R48"
  %".886" = load float, ptr %"R14"
  %"fmul.28" = fmul float %".884", %".885"
  %"fadd.28" = fadd float %"fmul.28", %".886"
  %".887" = bitcast ptr %"R13" to ptr
  store float %"fadd.28", ptr %".887"
  ; FFMA R37, R48, R37, R18
  %".890" = load float, ptr %"R48"
  %".891" = load float, ptr %"R37"
  %".892" = load float, ptr %"R18"
  %"fmul.29" = fmul float %".890", %".891"
  %"fadd.29" = fadd float %"fmul.29", %".892"
  %".893" = bitcast ptr %"R37" to ptr
  store float %"fadd.29", ptr %".893"
  ; FFMA R52, R45, R50, R13
  %".896" = load float, ptr %"R45"
  %".897" = load float, ptr %"R50"
  %".898" = load float, ptr %"R13"
  %"fmul.30" = fmul float %".896", %".897"
  %"fadd.30" = fadd float %"fmul.30", %".898"
  %".899" = bitcast ptr %"R52" to ptr
  store float %"fadd.30", ptr %".899"
  ; FFMA R54, R50, R34, R37
  %".902" = load float, ptr %"R50"
  %".903" = load float, ptr %"R34"
  %".904" = load float, ptr %"R37"
  %"fmul.31" = fmul float %".902", %".903"
  %"fadd.31" = fadd float %"fmul.31", %".904"
  %".905" = bitcast ptr %"R54" to ptr
  store float %"fadd.31", ptr %".905"
  ; @P1 BRA `(.L_x_5)
  %".908" = load i1, ptr %"P1"
  %".909" = icmp ne i1 %".908", 1
  br i1 %".909", label %".L_x_5", label %".L_x_4"
.L_x_4:
  ; ISETP.GT.AND P1, PT, R9, 0x4, PT
  %".912" = load i32, ptr %"R9"
  %".913" = load i1, ptr %"PT"
  %"cmp.9" = icmp sgt i32 %".912", 4
  %".914" = and i1 %"cmp.9", %".913"
  ; @!P1 BRA `(.L_x_6)
  %".916" = load i1, ptr %"P1"
  %".917" = icmp eq i1 %".916", 1
  br i1 %".917", label %".L_x_6", label %".L_x_4_split_0x0a00"
.L_x_4_split_0x0a00:
  ; IADD3 R13, R0, R11, RZ
  %".920" = load i32, ptr %"R0"
  %".921" = load i32, ptr %"R11"
  %"add.54" = add i32 %".920", %".921"
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R13"
  ; MOV R17, 0x4
  store i32 4, ptr %"R17"
  ; LEA R14, R2.reuse, R13, 0x2
  %".926" = load i32, ptr %"R2"
  %".927" = load i32, ptr %"R13"
  %"shl.51" = shl i32 %".926", 2
  %"add.56" = add i32 %"shl.51", %".927"
  store i32 %"add.56", ptr %"R14"
  ; IMAD R10, R2, 0x3, R13
  %".930" = load i32, ptr %"R2"
  %".931" = load i32, ptr %"R13"
  %"mul.21" = mul i32 %".930", 3
  %"add.57" = add i32 %"mul.21", %".931"
  store i32 %"add.57", ptr %"R10"
  ; IADD3 R12, R11.reuse, 0x4, RZ
  %".934" = load i32, ptr %"R11"
  %"add.58" = add i32 %".934", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R12"
  ; IMAD.WIDE R18, R11, R17.reuse, c[0x0][0x168]
  %".937" = load i32, ptr %"R11"
  %".938" = load i32, ptr %"R17"
  %"mul.22" = mul i32 %".937", %".938"
  %"add.60" = add i32 %"mul.22", %"Arg_3"
  store i32 %"add.60", ptr %"R18"
  ; IADD3 R16, R14, 0x4, RZ
  %".941" = load i32, ptr %"R14"
  %"add.61" = add i32 %".941", 4
  %"add.62" = add i32 %"add.61", 0
  store i32 %"add.62", ptr %"R16"
  ; IADD3 R15, R10.reuse, 0x4, RZ
  %".944" = load i32, ptr %"R10"
  %"add.63" = add i32 %".944", 4
  %"add.64" = add i32 %"add.63", 0
  store i32 %"add.64", ptr %"R15"
  ; IMAD.WIDE R22, R10, R17, c[0x0][0x170]
  %".947" = load i32, ptr %"R10"
  %".948" = load i32, ptr %"R17"
  %"mul.23" = mul i32 %".947", %".948"
  %"add.65" = add i32 %"mul.23", %"Arg_4"
  store i32 %"add.65", ptr %"R22"
  ; IMAD.WIDE R20, R14, R17.reuse, c[0x0][0x170]
  %".951" = load i32, ptr %"R14"
  %".952" = load i32, ptr %"R17"
  %"mul.24" = mul i32 %".951", %".952"
  %"add.66" = add i32 %"mul.24", %"Arg_4"
  store i32 %"add.66", ptr %"R20"
  ; LDG.E.SYS R39, [R18]
  %".955" = load i32, ptr %"R18"
  %"zext.96" = zext i32 %".955" to i64
  %".956" = load i32, ptr %"R19"
  %"zext.97" = zext i32 %".956" to i64
  %"shl.52" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.52", %"zext.96"
  %".957" = inttoptr i64 %"or.48" to ptr
  %".958" = ptrtoint ptr %".957" to i64
  %".959" = add i64 %".958", 0
  %"for_LDG.48" = inttoptr i64 %".959" to ptr
  %".960" = load float, ptr %"for_LDG.48"
  %".961" = bitcast ptr %"R39" to ptr
  store float %".960", ptr %".961"
  ; IMAD.WIDE R12, R12, R17.reuse, c[0x0][0x168]
  %".964" = load i32, ptr %"R12"
  %".965" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".964", %".965"
  %"add.67" = add i32 %"mul.25", %"Arg_3"
  store i32 %"add.67", ptr %"R12"
  ; LDG.E.SYS R37, [R22]
  %".968" = load i32, ptr %"R22"
  %"zext.98" = zext i32 %".968" to i64
  %".969" = load i32, ptr %"R23"
  %"zext.99" = zext i32 %".969" to i64
  %"shl.53" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.53", %"zext.98"
  %".970" = inttoptr i64 %"or.49" to ptr
  %".971" = ptrtoint ptr %".970" to i64
  %".972" = add i64 %".971", 0
  %"for_LDG.49" = inttoptr i64 %".972" to ptr
  %".973" = load float, ptr %"for_LDG.49"
  %".974" = bitcast ptr %"R37" to ptr
  store float %".973", ptr %".974"
  ; LDG.E.SYS R36, [R20]
  %".977" = load i32, ptr %"R20"
  %"zext.100" = zext i32 %".977" to i64
  %".978" = load i32, ptr %"R21"
  %"zext.101" = zext i32 %".978" to i64
  %"shl.54" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.54", %"zext.100"
  %".979" = inttoptr i64 %"or.50" to ptr
  %".980" = ptrtoint ptr %".979" to i64
  %".981" = add i64 %".980", 0
  %"for_LDG.50" = inttoptr i64 %".981" to ptr
  %".982" = load float, ptr %"for_LDG.50"
  %".983" = bitcast ptr %"R36" to ptr
  store float %".982", ptr %".983"
  ; IMAD.WIDE R14, R15, R17, c[0x0][0x170]
  %".986" = load i32, ptr %"R15"
  %".987" = load i32, ptr %"R17"
  %"mul.26" = mul i32 %".986", %".987"
  %"add.68" = add i32 %"mul.26", %"Arg_4"
  store i32 %"add.68", ptr %"R14"
  ; LDG.E.SYS R34, [R18+0x4]
  %".990" = load i32, ptr %"R18"
  %"zext.102" = zext i32 %".990" to i64
  %".991" = load i32, ptr %"R19"
  %"zext.103" = zext i32 %".991" to i64
  %"shl.55" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.55", %"zext.102"
  %".992" = inttoptr i64 %"or.51" to ptr
  %".993" = ptrtoint ptr %".992" to i64
  %".994" = add i64 %".993", 4
  %"for_LDG.51" = inttoptr i64 %".994" to ptr
  %".995" = load float, ptr %"for_LDG.51"
  %".996" = bitcast ptr %"R34" to ptr
  store float %".995", ptr %".996"
  ; LDG.E.SYS R38, [R22+0x4]
  %".999" = load i32, ptr %"R22"
  %"zext.104" = zext i32 %".999" to i64
  %".1000" = load i32, ptr %"R23"
  %"zext.105" = zext i32 %".1000" to i64
  %"shl.56" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.56", %"zext.104"
  %".1001" = inttoptr i64 %"or.52" to ptr
  %".1002" = ptrtoint ptr %".1001" to i64
  %".1003" = add i64 %".1002", 4
  %"for_LDG.52" = inttoptr i64 %".1003" to ptr
  %".1004" = load float, ptr %"for_LDG.52"
  %".1005" = bitcast ptr %"R38" to ptr
  store float %".1004", ptr %".1005"
  ; LDG.E.SYS R35, [R20+0x4]
  %".1008" = load i32, ptr %"R20"
  %"zext.106" = zext i32 %".1008" to i64
  %".1009" = load i32, ptr %"R21"
  %"zext.107" = zext i32 %".1009" to i64
  %"shl.57" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.57", %"zext.106"
  %".1010" = inttoptr i64 %"or.53" to ptr
  %".1011" = ptrtoint ptr %".1010" to i64
  %".1012" = add i64 %".1011", 4
  %"for_LDG.53" = inttoptr i64 %".1012" to ptr
  %".1013" = load float, ptr %"for_LDG.53"
  %".1014" = bitcast ptr %"R35" to ptr
  store float %".1013", ptr %".1014"
  ; IMAD.WIDE R16, R16, R17, c[0x0][0x170]
  %".1017" = load i32, ptr %"R16"
  %".1018" = load i32, ptr %"R17"
  %"mul.27" = mul i32 %".1017", %".1018"
  %"add.69" = add i32 %"mul.27", %"Arg_4"
  store i32 %"add.69", ptr %"R16"
  ; LDG.E.SYS R24, [R18+0x8]
  %".1021" = load i32, ptr %"R18"
  %"zext.108" = zext i32 %".1021" to i64
  %".1022" = load i32, ptr %"R19"
  %"zext.109" = zext i32 %".1022" to i64
  %"shl.58" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.58", %"zext.108"
  %".1023" = inttoptr i64 %"or.54" to ptr
  %".1024" = ptrtoint ptr %".1023" to i64
  %".1025" = add i64 %".1024", 8
  %"for_LDG.54" = inttoptr i64 %".1025" to ptr
  %".1026" = load float, ptr %"for_LDG.54"
  %".1027" = bitcast ptr %"R24" to ptr
  store float %".1026", ptr %".1027"
  ; LDG.E.SYS R40, [R22+0x8]
  %".1030" = load i32, ptr %"R22"
  %"zext.110" = zext i32 %".1030" to i64
  %".1031" = load i32, ptr %"R23"
  %"zext.111" = zext i32 %".1031" to i64
  %"shl.59" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.59", %"zext.110"
  %".1032" = inttoptr i64 %"or.55" to ptr
  %".1033" = ptrtoint ptr %".1032" to i64
  %".1034" = add i64 %".1033", 8
  %"for_LDG.55" = inttoptr i64 %".1034" to ptr
  %".1035" = load float, ptr %"for_LDG.55"
  %".1036" = bitcast ptr %"R40" to ptr
  store float %".1035", ptr %".1036"
  ; LDG.E.SYS R41, [R20+0x8]
  %".1039" = load i32, ptr %"R20"
  %"zext.112" = zext i32 %".1039" to i64
  %".1040" = load i32, ptr %"R21"
  %"zext.113" = zext i32 %".1040" to i64
  %"shl.60" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.60", %"zext.112"
  %".1041" = inttoptr i64 %"or.56" to ptr
  %".1042" = ptrtoint ptr %".1041" to i64
  %".1043" = add i64 %".1042", 8
  %"for_LDG.56" = inttoptr i64 %".1043" to ptr
  %".1044" = load float, ptr %"for_LDG.56"
  %".1045" = bitcast ptr %"R41" to ptr
  store float %".1044", ptr %".1045"
  ; LDG.E.SYS R44, [R18+0xc]
  %".1048" = load i32, ptr %"R18"
  %"zext.114" = zext i32 %".1048" to i64
  %".1049" = load i32, ptr %"R19"
  %"zext.115" = zext i32 %".1049" to i64
  %"shl.61" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.61", %"zext.114"
  %".1050" = inttoptr i64 %"or.57" to ptr
  %".1051" = ptrtoint ptr %".1050" to i64
  %".1052" = add i64 %".1051", 12
  %"for_LDG.57" = inttoptr i64 %".1052" to ptr
  %".1053" = load float, ptr %"for_LDG.57"
  %".1054" = bitcast ptr %"R44" to ptr
  store float %".1053", ptr %".1054"
  ; LDG.E.SYS R42, [R22+0xc]
  %".1057" = load i32, ptr %"R22"
  %"zext.116" = zext i32 %".1057" to i64
  %".1058" = load i32, ptr %"R23"
  %"zext.117" = zext i32 %".1058" to i64
  %"shl.62" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.62", %"zext.116"
  %".1059" = inttoptr i64 %"or.58" to ptr
  %".1060" = ptrtoint ptr %".1059" to i64
  %".1061" = add i64 %".1060", 12
  %"for_LDG.58" = inttoptr i64 %".1061" to ptr
  %".1062" = load float, ptr %"for_LDG.58"
  %".1063" = bitcast ptr %"R42" to ptr
  store float %".1062", ptr %".1063"
  ; LDG.E.SYS R43, [R20+0xc]
  %".1066" = load i32, ptr %"R20"
  %"zext.118" = zext i32 %".1066" to i64
  %".1067" = load i32, ptr %"R21"
  %"zext.119" = zext i32 %".1067" to i64
  %"shl.63" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.63", %"zext.118"
  %".1068" = inttoptr i64 %"or.59" to ptr
  %".1069" = ptrtoint ptr %".1068" to i64
  %".1070" = add i64 %".1069", 12
  %"for_LDG.59" = inttoptr i64 %".1070" to ptr
  %".1071" = load float, ptr %"for_LDG.59"
  %".1072" = bitcast ptr %"R43" to ptr
  store float %".1071", ptr %".1072"
  ; LDG.E.SYS R48, [R12]
  %".1075" = load i32, ptr %"R12"
  %"zext.120" = zext i32 %".1075" to i64
  %".1076" = load i32, ptr %"R13"
  %"zext.121" = zext i32 %".1076" to i64
  %"shl.64" = shl i64 %"zext.121", 32
  %"or.60" = or i64 %"shl.64", %"zext.120"
  %".1077" = inttoptr i64 %"or.60" to ptr
  %".1078" = ptrtoint ptr %".1077" to i64
  %".1079" = add i64 %".1078", 0
  %"for_LDG.60" = inttoptr i64 %".1079" to ptr
  %".1080" = load float, ptr %"for_LDG.60"
  %".1081" = bitcast ptr %"R48" to ptr
  store float %".1080", ptr %".1081"
  ; LDG.E.SYS R46, [R14]
  %".1084" = load i32, ptr %"R14"
  %"zext.122" = zext i32 %".1084" to i64
  %".1085" = load i32, ptr %"R15"
  %"zext.123" = zext i32 %".1085" to i64
  %"shl.65" = shl i64 %"zext.123", 32
  %"or.61" = or i64 %"shl.65", %"zext.122"
  %".1086" = inttoptr i64 %"or.61" to ptr
  %".1087" = ptrtoint ptr %".1086" to i64
  %".1088" = add i64 %".1087", 0
  %"for_LDG.61" = inttoptr i64 %".1088" to ptr
  %".1089" = load float, ptr %"for_LDG.61"
  %".1090" = bitcast ptr %"R46" to ptr
  store float %".1089", ptr %".1090"
  ; LDG.E.SYS R45, [R16]
  %".1093" = load i32, ptr %"R16"
  %"zext.124" = zext i32 %".1093" to i64
  %".1094" = load i32, ptr %"R17"
  %"zext.125" = zext i32 %".1094" to i64
  %"shl.66" = shl i64 %"zext.125", 32
  %"or.62" = or i64 %"shl.66", %"zext.124"
  %".1095" = inttoptr i64 %"or.62" to ptr
  %".1096" = ptrtoint ptr %".1095" to i64
  %".1097" = add i64 %".1096", 0
  %"for_LDG.62" = inttoptr i64 %".1097" to ptr
  %".1098" = load float, ptr %"for_LDG.62"
  %".1099" = bitcast ptr %"R45" to ptr
  store float %".1098", ptr %".1099"
  ; LDG.E.SYS R56, [R12+0x4]
  %".1102" = load i32, ptr %"R12"
  %"zext.126" = zext i32 %".1102" to i64
  %".1103" = load i32, ptr %"R13"
  %"zext.127" = zext i32 %".1103" to i64
  %"shl.67" = shl i64 %"zext.127", 32
  %"or.63" = or i64 %"shl.67", %"zext.126"
  %".1104" = inttoptr i64 %"or.63" to ptr
  %".1105" = ptrtoint ptr %".1104" to i64
  %".1106" = add i64 %".1105", 4
  %"for_LDG.63" = inttoptr i64 %".1106" to ptr
  %".1107" = load float, ptr %"for_LDG.63"
  %".1108" = bitcast ptr %"R56" to ptr
  store float %".1107", ptr %".1108"
  ; LDG.E.SYS R50, [R14+0x4]
  %".1111" = load i32, ptr %"R14"
  %"zext.128" = zext i32 %".1111" to i64
  %".1112" = load i32, ptr %"R15"
  %"zext.129" = zext i32 %".1112" to i64
  %"shl.68" = shl i64 %"zext.129", 32
  %"or.64" = or i64 %"shl.68", %"zext.128"
  %".1113" = inttoptr i64 %"or.64" to ptr
  %".1114" = ptrtoint ptr %".1113" to i64
  %".1115" = add i64 %".1114", 4
  %"for_LDG.64" = inttoptr i64 %".1115" to ptr
  %".1116" = load float, ptr %"for_LDG.64"
  %".1117" = bitcast ptr %"R50" to ptr
  store float %".1116", ptr %".1117"
  ; LDG.E.SYS R47, [R16+0x4]
  %".1120" = load i32, ptr %"R16"
  %"zext.130" = zext i32 %".1120" to i64
  %".1121" = load i32, ptr %"R17"
  %"zext.131" = zext i32 %".1121" to i64
  %"shl.69" = shl i64 %"zext.131", 32
  %"or.65" = or i64 %"shl.69", %"zext.130"
  %".1122" = inttoptr i64 %"or.65" to ptr
  %".1123" = ptrtoint ptr %".1122" to i64
  %".1124" = add i64 %".1123", 4
  %"for_LDG.65" = inttoptr i64 %".1124" to ptr
  %".1125" = load float, ptr %"for_LDG.65"
  %".1126" = bitcast ptr %"R47" to ptr
  store float %".1125", ptr %".1126"
  ; LDG.E.SYS R10, [R12+0x8]
  %".1129" = load i32, ptr %"R12"
  %"zext.132" = zext i32 %".1129" to i64
  %".1130" = load i32, ptr %"R13"
  %"zext.133" = zext i32 %".1130" to i64
  %"shl.70" = shl i64 %"zext.133", 32
  %"or.66" = or i64 %"shl.70", %"zext.132"
  %".1131" = inttoptr i64 %"or.66" to ptr
  %".1132" = ptrtoint ptr %".1131" to i64
  %".1133" = add i64 %".1132", 8
  %"for_LDG.66" = inttoptr i64 %".1133" to ptr
  %".1134" = load float, ptr %"for_LDG.66"
  %".1135" = bitcast ptr %"R10" to ptr
  store float %".1134", ptr %".1135"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1138" = load i32, ptr %"R14"
  %"zext.134" = zext i32 %".1138" to i64
  %".1139" = load i32, ptr %"R15"
  %"zext.135" = zext i32 %".1139" to i64
  %"shl.71" = shl i64 %"zext.135", 32
  %"or.67" = or i64 %"shl.71", %"zext.134"
  %".1140" = inttoptr i64 %"or.67" to ptr
  %".1141" = ptrtoint ptr %".1140" to i64
  %".1142" = add i64 %".1141", 8
  %"for_LDG.67" = inttoptr i64 %".1142" to ptr
  %".1143" = load float, ptr %"for_LDG.67"
  %".1144" = bitcast ptr %"R25" to ptr
  store float %".1143", ptr %".1144"
  ; LDG.E.SYS R19, [R16+0x8]
  %".1147" = load i32, ptr %"R16"
  %"zext.136" = zext i32 %".1147" to i64
  %".1148" = load i32, ptr %"R17"
  %"zext.137" = zext i32 %".1148" to i64
  %"shl.72" = shl i64 %"zext.137", 32
  %"or.68" = or i64 %"shl.72", %"zext.136"
  %".1149" = inttoptr i64 %"or.68" to ptr
  %".1150" = ptrtoint ptr %".1149" to i64
  %".1151" = add i64 %".1150", 8
  %"for_LDG.68" = inttoptr i64 %".1151" to ptr
  %".1152" = load float, ptr %"for_LDG.68"
  %".1153" = bitcast ptr %"R19" to ptr
  store float %".1152", ptr %".1153"
  ; LDG.E.SYS R18, [R12+0xc]
  %".1156" = load i32, ptr %"R12"
  %"zext.138" = zext i32 %".1156" to i64
  %".1157" = load i32, ptr %"R13"
  %"zext.139" = zext i32 %".1157" to i64
  %"shl.73" = shl i64 %"zext.139", 32
  %"or.69" = or i64 %"shl.73", %"zext.138"
  %".1158" = inttoptr i64 %"or.69" to ptr
  %".1159" = ptrtoint ptr %".1158" to i64
  %".1160" = add i64 %".1159", 12
  %"for_LDG.69" = inttoptr i64 %".1160" to ptr
  %".1161" = load float, ptr %"for_LDG.69"
  %".1162" = bitcast ptr %"R18" to ptr
  store float %".1161", ptr %".1162"
  ; LDG.E.SYS R20, [R14+0xc]
  %".1165" = load i32, ptr %"R14"
  %"zext.140" = zext i32 %".1165" to i64
  %".1166" = load i32, ptr %"R15"
  %"zext.141" = zext i32 %".1166" to i64
  %"shl.74" = shl i64 %"zext.141", 32
  %"or.70" = or i64 %"shl.74", %"zext.140"
  %".1167" = inttoptr i64 %"or.70" to ptr
  %".1168" = ptrtoint ptr %".1167" to i64
  %".1169" = add i64 %".1168", 12
  %"for_LDG.70" = inttoptr i64 %".1169" to ptr
  %".1170" = load float, ptr %"for_LDG.70"
  %".1171" = bitcast ptr %"R20" to ptr
  store float %".1170", ptr %".1171"
  ; LDG.E.SYS R21, [R16+0xc]
  %".1174" = load i32, ptr %"R16"
  %"zext.142" = zext i32 %".1174" to i64
  %".1175" = load i32, ptr %"R17"
  %"zext.143" = zext i32 %".1175" to i64
  %"shl.75" = shl i64 %"zext.143", 32
  %"or.71" = or i64 %"shl.75", %"zext.142"
  %".1176" = inttoptr i64 %"or.71" to ptr
  %".1177" = ptrtoint ptr %".1176" to i64
  %".1178" = add i64 %".1177", 12
  %"for_LDG.71" = inttoptr i64 %".1178" to ptr
  %".1179" = load float, ptr %"for_LDG.71"
  %".1180" = bitcast ptr %"R21" to ptr
  store float %".1179", ptr %".1180"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1183" = xor i1 1, 1
  %".1184" = and i1 %".1183", 1
  %".1185" = and i1 %".1184", 1
  ; IADD3 R9, R9, -0x8, RZ
  %".1187" = load i32, ptr %"R9"
  %"add.70" = add i32 %".1187", -8
  %"add.71" = add i32 %"add.70", 0
  store i32 %"add.71", ptr %"R9"
  ; IADD3 R11, R11, 0x8, RZ
  %".1190" = load i32, ptr %"R11"
  %"add.72" = add i32 %".1190", 8
  %"add.73" = add i32 %"add.72", 0
  store i32 %"add.73", ptr %"R11"
  ; FFMA R37, R37, R39, R52
  %".1193" = load float, ptr %"R37"
  %".1194" = load float, ptr %"R39"
  %".1195" = load float, ptr %"R52"
  %"fmul.32" = fmul float %".1193", %".1194"
  %"fadd.32" = fadd float %"fmul.32", %".1195"
  %".1196" = bitcast ptr %"R37" to ptr
  store float %"fadd.32", ptr %".1196"
  ; FFMA R36, R39, R36, R54
  %".1199" = load float, ptr %"R39"
  %".1200" = load float, ptr %"R36"
  %".1201" = load float, ptr %"R54"
  %"fmul.33" = fmul float %".1199", %".1200"
  %"fadd.33" = fadd float %"fmul.33", %".1201"
  %".1202" = bitcast ptr %"R36" to ptr
  store float %"fadd.33", ptr %".1202"
  ; FFMA R37, R38, R34, R37
  %".1205" = load float, ptr %"R38"
  %".1206" = load float, ptr %"R34"
  %".1207" = load float, ptr %"R37"
  %"fmul.34" = fmul float %".1205", %".1206"
  %"fadd.34" = fadd float %"fmul.34", %".1207"
  %".1208" = bitcast ptr %"R37" to ptr
  store float %"fadd.34", ptr %".1208"
  ; FFMA R35, R34, R35, R36
  %".1211" = load float, ptr %"R34"
  %".1212" = load float, ptr %"R35"
  %".1213" = load float, ptr %"R36"
  %"fmul.35" = fmul float %".1211", %".1212"
  %"fadd.35" = fadd float %"fmul.35", %".1213"
  %".1214" = bitcast ptr %"R35" to ptr
  store float %"fadd.35", ptr %".1214"
  ; FFMA R37, R40, R24, R37
  %".1217" = load float, ptr %"R40"
  %".1218" = load float, ptr %"R24"
  %".1219" = load float, ptr %"R37"
  %"fmul.36" = fmul float %".1217", %".1218"
  %"fadd.36" = fadd float %"fmul.36", %".1219"
  %".1220" = bitcast ptr %"R37" to ptr
  store float %"fadd.36", ptr %".1220"
  ; FFMA R35, R24, R41, R35
  %".1223" = load float, ptr %"R24"
  %".1224" = load float, ptr %"R41"
  %".1225" = load float, ptr %"R35"
  %"fmul.37" = fmul float %".1223", %".1224"
  %"fadd.37" = fadd float %"fmul.37", %".1225"
  %".1226" = bitcast ptr %"R35" to ptr
  store float %"fadd.37", ptr %".1226"
  ; FFMA R37, R42, R44, R37
  %".1229" = load float, ptr %"R42"
  %".1230" = load float, ptr %"R44"
  %".1231" = load float, ptr %"R37"
  %"fmul.38" = fmul float %".1229", %".1230"
  %"fadd.38" = fadd float %"fmul.38", %".1231"
  %".1232" = bitcast ptr %"R37" to ptr
  store float %"fadd.38", ptr %".1232"
  ; FFMA R35, R44, R43, R35
  %".1235" = load float, ptr %"R44"
  %".1236" = load float, ptr %"R43"
  %".1237" = load float, ptr %"R35"
  %"fmul.39" = fmul float %".1235", %".1236"
  %"fadd.39" = fadd float %"fmul.39", %".1237"
  %".1238" = bitcast ptr %"R35" to ptr
  store float %"fadd.39", ptr %".1238"
  ; FFMA R37, R46, R48, R37
  %".1241" = load float, ptr %"R46"
  %".1242" = load float, ptr %"R48"
  %".1243" = load float, ptr %"R37"
  %"fmul.40" = fmul float %".1241", %".1242"
  %"fadd.40" = fadd float %"fmul.40", %".1243"
  %".1244" = bitcast ptr %"R37" to ptr
  store float %"fadd.40", ptr %".1244"
  ; FFMA R35, R48, R45, R35
  %".1247" = load float, ptr %"R48"
  %".1248" = load float, ptr %"R45"
  %".1249" = load float, ptr %"R35"
  %"fmul.41" = fmul float %".1247", %".1248"
  %"fadd.41" = fadd float %"fmul.41", %".1249"
  %".1250" = bitcast ptr %"R35" to ptr
  store float %"fadd.41", ptr %".1250"
  ; FFMA R37, R50, R56, R37
  %".1253" = load float, ptr %"R50"
  %".1254" = load float, ptr %"R56"
  %".1255" = load float, ptr %"R37"
  %"fmul.42" = fmul float %".1253", %".1254"
  %"fadd.42" = fadd float %"fmul.42", %".1255"
  %".1256" = bitcast ptr %"R37" to ptr
  store float %"fadd.42", ptr %".1256"
  ; FFMA R35, R56, R47, R35
  %".1259" = load float, ptr %"R56"
  %".1260" = load float, ptr %"R47"
  %".1261" = load float, ptr %"R35"
  %"fmul.43" = fmul float %".1259", %".1260"
  %"fadd.43" = fadd float %"fmul.43", %".1261"
  %".1262" = bitcast ptr %"R35" to ptr
  store float %"fadd.43", ptr %".1262"
  ; FFMA R25, R25, R10, R37
  %".1265" = load float, ptr %"R25"
  %".1266" = load float, ptr %"R10"
  %".1267" = load float, ptr %"R37"
  %"fmul.44" = fmul float %".1265", %".1266"
  %"fadd.44" = fadd float %"fmul.44", %".1267"
  %".1268" = bitcast ptr %"R25" to ptr
  store float %"fadd.44", ptr %".1268"
  ; FFMA R19, R10, R19, R35
  %".1271" = load float, ptr %"R10"
  %".1272" = load float, ptr %"R19"
  %".1273" = load float, ptr %"R35"
  %"fmul.45" = fmul float %".1271", %".1272"
  %"fadd.45" = fadd float %"fmul.45", %".1273"
  %".1274" = bitcast ptr %"R19" to ptr
  store float %"fadd.45", ptr %".1274"
  ; FFMA R52, R20, R18, R25
  %".1277" = load float, ptr %"R20"
  %".1278" = load float, ptr %"R18"
  %".1279" = load float, ptr %"R25"
  %"fmul.46" = fmul float %".1277", %".1278"
  %"fadd.46" = fadd float %"fmul.46", %".1279"
  %".1280" = bitcast ptr %"R52" to ptr
  store float %"fadd.46", ptr %".1280"
  ; FFMA R54, R18, R21, R19
  %".1283" = load float, ptr %"R18"
  %".1284" = load float, ptr %"R21"
  %".1285" = load float, ptr %"R19"
  %"fmul.47" = fmul float %".1283", %".1284"
  %"fadd.47" = fadd float %"fmul.47", %".1285"
  %".1286" = bitcast ptr %"R54" to ptr
  store float %"fadd.47", ptr %".1286"
  br label %".L_x_6"
.L_x_6:
  ; ISETP.NE.OR P0, PT, R9, RZ, P0
  %".1290" = load i32, ptr %"R9"
  %".1291" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".1290", 0
  %".1292" = or i1 %"cmp.10", %".1291"
  ; @!P0 BRA `(.L_x_2)
  %".1294" = load i1, ptr %"P0"
  %".1295" = icmp eq i1 %".1294", 1
  br i1 %".1295", label %".L_x_2", label %".L_x_3"
.L_x_3:
  ; IADD3 R13, R0, R11, RZ
  %".1298" = load i32, ptr %"R0"
  %".1299" = load i32, ptr %"R11"
  %"add.74" = add i32 %".1298", %".1299"
  %"add.75" = add i32 %"add.74", 0
  store i32 %"add.75", ptr %"R13"
  ; MOV R16, 0x4
  store i32 4, ptr %"R16"
  ; LEA R17, R2.reuse, R13, 0x2
  %".1304" = load i32, ptr %"R2"
  %".1305" = load i32, ptr %"R13"
  %"shl.76" = shl i32 %".1304", 2
  %"add.76" = add i32 %"shl.76", %".1305"
  store i32 %"add.76", ptr %"R17"
  ; IMAD R15, R2, 0x3, R13
  %".1308" = load i32, ptr %"R2"
  %".1309" = load i32, ptr %"R13"
  %"mul.28" = mul i32 %".1308", 3
  %"add.77" = add i32 %"mul.28", %".1309"
  store i32 %"add.77", ptr %"R15"
  ; IMAD.WIDE R12, R11, R16, c[0x0][0x168]
  %".1312" = load i32, ptr %"R11"
  %".1313" = load i32, ptr %"R16"
  %"mul.29" = mul i32 %".1312", %".1313"
  %"add.78" = add i32 %"mul.29", %"Arg_3"
  store i32 %"add.78", ptr %"R12"
  ; IMAD.WIDE R14, R15, R16, c[0x0][0x170]
  %".1316" = load i32, ptr %"R15"
  %".1317" = load i32, ptr %"R16"
  %"mul.30" = mul i32 %".1316", %".1317"
  %"add.79" = add i32 %"mul.30", %"Arg_4"
  store i32 %"add.79", ptr %"R14"
  ; IMAD.WIDE R16, R17, R16, c[0x0][0x170]
  %".1320" = load i32, ptr %"R17"
  %".1321" = load i32, ptr %"R16"
  %"mul.31" = mul i32 %".1320", %".1321"
  %"add.80" = add i32 %"mul.31", %"Arg_4"
  store i32 %"add.80", ptr %"R16"
  ; LDG.E.SYS R21, [R12]
  %".1324" = load i32, ptr %"R12"
  %"zext.144" = zext i32 %".1324" to i64
  %".1325" = load i32, ptr %"R13"
  %"zext.145" = zext i32 %".1325" to i64
  %"shl.77" = shl i64 %"zext.145", 32
  %"or.72" = or i64 %"shl.77", %"zext.144"
  %".1326" = inttoptr i64 %"or.72" to ptr
  %".1327" = ptrtoint ptr %".1326" to i64
  %".1328" = add i64 %".1327", 0
  %"for_LDG.72" = inttoptr i64 %".1328" to ptr
  %".1329" = load float, ptr %"for_LDG.72"
  %".1330" = bitcast ptr %"R21" to ptr
  store float %".1329", ptr %".1330"
  ; LDG.E.SYS R19, [R14]
  %".1333" = load i32, ptr %"R14"
  %"zext.146" = zext i32 %".1333" to i64
  %".1334" = load i32, ptr %"R15"
  %"zext.147" = zext i32 %".1334" to i64
  %"shl.78" = shl i64 %"zext.147", 32
  %"or.73" = or i64 %"shl.78", %"zext.146"
  %".1335" = inttoptr i64 %"or.73" to ptr
  %".1336" = ptrtoint ptr %".1335" to i64
  %".1337" = add i64 %".1336", 0
  %"for_LDG.73" = inttoptr i64 %".1337" to ptr
  %".1338" = load float, ptr %"for_LDG.73"
  %".1339" = bitcast ptr %"R19" to ptr
  store float %".1338", ptr %".1339"
  ; LDG.E.SYS R10, [R16]
  %".1342" = load i32, ptr %"R16"
  %"zext.148" = zext i32 %".1342" to i64
  %".1343" = load i32, ptr %"R17"
  %"zext.149" = zext i32 %".1343" to i64
  %"shl.79" = shl i64 %"zext.149", 32
  %"or.74" = or i64 %"shl.79", %"zext.148"
  %".1344" = inttoptr i64 %"or.74" to ptr
  %".1345" = ptrtoint ptr %".1344" to i64
  %".1346" = add i64 %".1345", 0
  %"for_LDG.74" = inttoptr i64 %".1346" to ptr
  %".1347" = load float, ptr %"for_LDG.74"
  %".1348" = bitcast ptr %"R10" to ptr
  store float %".1347", ptr %".1348"
  ; LDG.E.SYS R23, [R12+0x4]
  %".1351" = load i32, ptr %"R12"
  %"zext.150" = zext i32 %".1351" to i64
  %".1352" = load i32, ptr %"R13"
  %"zext.151" = zext i32 %".1352" to i64
  %"shl.80" = shl i64 %"zext.151", 32
  %"or.75" = or i64 %"shl.80", %"zext.150"
  %".1353" = inttoptr i64 %"or.75" to ptr
  %".1354" = ptrtoint ptr %".1353" to i64
  %".1355" = add i64 %".1354", 4
  %"for_LDG.75" = inttoptr i64 %".1355" to ptr
  %".1356" = load float, ptr %"for_LDG.75"
  %".1357" = bitcast ptr %"R23" to ptr
  store float %".1356", ptr %".1357"
  ; LDG.E.SYS R18, [R14+0x4]
  %".1360" = load i32, ptr %"R14"
  %"zext.152" = zext i32 %".1360" to i64
  %".1361" = load i32, ptr %"R15"
  %"zext.153" = zext i32 %".1361" to i64
  %"shl.81" = shl i64 %"zext.153", 32
  %"or.76" = or i64 %"shl.81", %"zext.152"
  %".1362" = inttoptr i64 %"or.76" to ptr
  %".1363" = ptrtoint ptr %".1362" to i64
  %".1364" = add i64 %".1363", 4
  %"for_LDG.76" = inttoptr i64 %".1364" to ptr
  %".1365" = load float, ptr %"for_LDG.76"
  %".1366" = bitcast ptr %"R18" to ptr
  store float %".1365", ptr %".1366"
  ; LDG.E.SYS R20, [R16+0x4]
  %".1369" = load i32, ptr %"R16"
  %"zext.154" = zext i32 %".1369" to i64
  %".1370" = load i32, ptr %"R17"
  %"zext.155" = zext i32 %".1370" to i64
  %"shl.82" = shl i64 %"zext.155", 32
  %"or.77" = or i64 %"shl.82", %"zext.154"
  %".1371" = inttoptr i64 %"or.77" to ptr
  %".1372" = ptrtoint ptr %".1371" to i64
  %".1373" = add i64 %".1372", 4
  %"for_LDG.77" = inttoptr i64 %".1373" to ptr
  %".1374" = load float, ptr %"for_LDG.77"
  %".1375" = bitcast ptr %"R20" to ptr
  store float %".1374", ptr %".1375"
  ; LDG.E.SYS R35, [R12+0x8]
  %".1378" = load i32, ptr %"R12"
  %"zext.156" = zext i32 %".1378" to i64
  %".1379" = load i32, ptr %"R13"
  %"zext.157" = zext i32 %".1379" to i64
  %"shl.83" = shl i64 %"zext.157", 32
  %"or.78" = or i64 %"shl.83", %"zext.156"
  %".1380" = inttoptr i64 %"or.78" to ptr
  %".1381" = ptrtoint ptr %".1380" to i64
  %".1382" = add i64 %".1381", 8
  %"for_LDG.78" = inttoptr i64 %".1382" to ptr
  %".1383" = load float, ptr %"for_LDG.78"
  %".1384" = bitcast ptr %"R35" to ptr
  store float %".1383", ptr %".1384"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1387" = load i32, ptr %"R14"
  %"zext.158" = zext i32 %".1387" to i64
  %".1388" = load i32, ptr %"R15"
  %"zext.159" = zext i32 %".1388" to i64
  %"shl.84" = shl i64 %"zext.159", 32
  %"or.79" = or i64 %"shl.84", %"zext.158"
  %".1389" = inttoptr i64 %"or.79" to ptr
  %".1390" = ptrtoint ptr %".1389" to i64
  %".1391" = add i64 %".1390", 8
  %"for_LDG.79" = inttoptr i64 %".1391" to ptr
  %".1392" = load float, ptr %"for_LDG.79"
  %".1393" = bitcast ptr %"R25" to ptr
  store float %".1392", ptr %".1393"
  ; LDG.E.SYS R22, [R16+0x8]
  %".1396" = load i32, ptr %"R16"
  %"zext.160" = zext i32 %".1396" to i64
  %".1397" = load i32, ptr %"R17"
  %"zext.161" = zext i32 %".1397" to i64
  %"shl.85" = shl i64 %"zext.161", 32
  %"or.80" = or i64 %"shl.85", %"zext.160"
  %".1398" = inttoptr i64 %"or.80" to ptr
  %".1399" = ptrtoint ptr %".1398" to i64
  %".1400" = add i64 %".1399", 8
  %"for_LDG.80" = inttoptr i64 %".1400" to ptr
  %".1401" = load float, ptr %"for_LDG.80"
  %".1402" = bitcast ptr %"R22" to ptr
  store float %".1401", ptr %".1402"
  ; LDG.E.SYS R39, [R12+0xc]
  %".1405" = load i32, ptr %"R12"
  %"zext.162" = zext i32 %".1405" to i64
  %".1406" = load i32, ptr %"R13"
  %"zext.163" = zext i32 %".1406" to i64
  %"shl.86" = shl i64 %"zext.163", 32
  %"or.81" = or i64 %"shl.86", %"zext.162"
  %".1407" = inttoptr i64 %"or.81" to ptr
  %".1408" = ptrtoint ptr %".1407" to i64
  %".1409" = add i64 %".1408", 12
  %"for_LDG.81" = inttoptr i64 %".1409" to ptr
  %".1410" = load float, ptr %"for_LDG.81"
  %".1411" = bitcast ptr %"R39" to ptr
  store float %".1410", ptr %".1411"
  ; LDG.E.SYS R37, [R14+0xc]
  %".1414" = load i32, ptr %"R14"
  %"zext.164" = zext i32 %".1414" to i64
  %".1415" = load i32, ptr %"R15"
  %"zext.165" = zext i32 %".1415" to i64
  %"shl.87" = shl i64 %"zext.165", 32
  %"or.82" = or i64 %"shl.87", %"zext.164"
  %".1416" = inttoptr i64 %"or.82" to ptr
  %".1417" = ptrtoint ptr %".1416" to i64
  %".1418" = add i64 %".1417", 12
  %"for_LDG.82" = inttoptr i64 %".1418" to ptr
  %".1419" = load float, ptr %"for_LDG.82"
  %".1420" = bitcast ptr %"R37" to ptr
  store float %".1419", ptr %".1420"
  ; LDG.E.SYS R24, [R16+0xc]
  %".1423" = load i32, ptr %"R16"
  %"zext.166" = zext i32 %".1423" to i64
  %".1424" = load i32, ptr %"R17"
  %"zext.167" = zext i32 %".1424" to i64
  %"shl.88" = shl i64 %"zext.167", 32
  %"or.83" = or i64 %"shl.88", %"zext.166"
  %".1425" = inttoptr i64 %"or.83" to ptr
  %".1426" = ptrtoint ptr %".1425" to i64
  %".1427" = add i64 %".1426", 12
  %"for_LDG.83" = inttoptr i64 %".1427" to ptr
  %".1428" = load float, ptr %"for_LDG.83"
  %".1429" = bitcast ptr %"R24" to ptr
  store float %".1428", ptr %".1429"
  ; IADD3 R9, R9, -0x4, RZ
  %".1432" = load i32, ptr %"R9"
  %"add.81" = add i32 %".1432", -4
  %"add.82" = add i32 %"add.81", 0
  store i32 %"add.82", ptr %"R9"
  ; IADD3 R11, R11, 0x4, RZ
  %".1435" = load i32, ptr %"R11"
  %"add.83" = add i32 %".1435", 4
  %"add.84" = add i32 %"add.83", 0
  store i32 %"add.84", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R9, RZ, PT
  %".1438" = load i32, ptr %"R9"
  %".1439" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".1438", 0
  %".1440" = and i1 %"cmp.11", %".1439"
  ; FFMA R19, R19, R21, R52
  %".1442" = load float, ptr %"R19"
  %".1443" = load float, ptr %"R21"
  %".1444" = load float, ptr %"R52"
  %"fmul.48" = fmul float %".1442", %".1443"
  %"fadd.48" = fadd float %"fmul.48", %".1444"
  %".1445" = bitcast ptr %"R19" to ptr
  store float %"fadd.48", ptr %".1445"
  ; FFMA R10, R21, R10, R54
  %".1448" = load float, ptr %"R21"
  %".1449" = load float, ptr %"R10"
  %".1450" = load float, ptr %"R54"
  %"fmul.49" = fmul float %".1448", %".1449"
  %"fadd.49" = fadd float %"fmul.49", %".1450"
  %".1451" = bitcast ptr %"R10" to ptr
  store float %"fadd.49", ptr %".1451"
  ; FFMA R18, R18, R23, R19
  %".1454" = load float, ptr %"R18"
  %".1455" = load float, ptr %"R23"
  %".1456" = load float, ptr %"R19"
  %"fmul.50" = fmul float %".1454", %".1455"
  %"fadd.50" = fadd float %"fmul.50", %".1456"
  %".1457" = bitcast ptr %"R18" to ptr
  store float %"fadd.50", ptr %".1457"
  ; FFMA R10, R23, R20, R10
  %".1460" = load float, ptr %"R23"
  %".1461" = load float, ptr %"R20"
  %".1462" = load float, ptr %"R10"
  %"fmul.51" = fmul float %".1460", %".1461"
  %"fadd.51" = fadd float %"fmul.51", %".1462"
  %".1463" = bitcast ptr %"R10" to ptr
  store float %"fadd.51", ptr %".1463"
  ; FFMA R18, R25, R35, R18
  %".1466" = load float, ptr %"R25"
  %".1467" = load float, ptr %"R35"
  %".1468" = load float, ptr %"R18"
  %"fmul.52" = fmul float %".1466", %".1467"
  %"fadd.52" = fadd float %"fmul.52", %".1468"
  %".1469" = bitcast ptr %"R18" to ptr
  store float %"fadd.52", ptr %".1469"
  ; FFMA R10, R35, R22, R10
  %".1472" = load float, ptr %"R35"
  %".1473" = load float, ptr %"R22"
  %".1474" = load float, ptr %"R10"
  %"fmul.53" = fmul float %".1472", %".1473"
  %"fadd.53" = fadd float %"fmul.53", %".1474"
  %".1475" = bitcast ptr %"R10" to ptr
  store float %"fadd.53", ptr %".1475"
  ; FFMA R52, R37, R39, R18
  %".1478" = load float, ptr %"R37"
  %".1479" = load float, ptr %"R39"
  %".1480" = load float, ptr %"R18"
  %"fmul.54" = fmul float %".1478", %".1479"
  %"fadd.54" = fadd float %"fmul.54", %".1480"
  %".1481" = bitcast ptr %"R52" to ptr
  store float %"fadd.54", ptr %".1481"
  ; FFMA R54, R39, R24, R10
  %".1484" = load float, ptr %"R39"
  %".1485" = load float, ptr %"R24"
  %".1486" = load float, ptr %"R10"
  %"fmul.55" = fmul float %".1484", %".1485"
  %"fadd.55" = fadd float %"fmul.55", %".1486"
  %".1487" = bitcast ptr %"R54" to ptr
  store float %"fadd.55", ptr %".1487"
  ; @P0 BRA `(.L_x_3)
  %".1490" = load i1, ptr %"P0"
  %".1491" = icmp ne i1 %".1490", 1
  br i1 %".1491", label %".L_x_3", label %".L_x_2"
.L_x_2:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1494" = load i32, ptr %"R4"
  %".1495" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".1494", 0
  %".1496" = and i1 %"cmp.12", %".1495"
  ; @!P0 BRA `(.L_x_1)
  %".1498" = load i1, ptr %"P0"
  %".1499" = icmp eq i1 %".1498", 1
  br i1 %".1499", label %".L_x_1", label %".L_x_2_split_0x0fb0"
.L_x_2_split_0x0fb0:
  ; IADD3 R9, R0, R11, RZ
  %".1502" = load i32, ptr %"R0"
  %".1503" = load i32, ptr %"R11"
  %"add.85" = add i32 %".1502", %".1503"
  %"add.86" = add i32 %"add.85", 0
  store i32 %"add.86", ptr %"R9"
  ; MOV R15, 0x4
  store i32 4, ptr %"R15"
  ; LEA R14, R2.reuse, R9, 0x2
  %".1508" = load i32, ptr %"R2"
  %".1509" = load i32, ptr %"R9"
  %"shl.89" = shl i32 %".1508", 2
  %"add.87" = add i32 %"shl.89", %".1509"
  store i32 %"add.87", ptr %"R14"
  ; IMAD R12, R2, 0x3, R9
  %".1512" = load i32, ptr %"R2"
  %".1513" = load i32, ptr %"R9"
  %"mul.32" = mul i32 %".1512", 3
  %"add.88" = add i32 %"mul.32", %".1513"
  store i32 %"add.88", ptr %"R12"
  ; IMAD.WIDE R10, R11, R15, c[0x0][0x168]
  %".1516" = load i32, ptr %"R11"
  %".1517" = load i32, ptr %"R15"
  %"mul.33" = mul i32 %".1516", %".1517"
  %"add.89" = add i32 %"mul.33", %"Arg_3"
  store i32 %"add.89", ptr %"R10"
  ; IMAD.WIDE R12, R12, R15, c[0x0][0x170]
  %".1520" = load i32, ptr %"R12"
  %".1521" = load i32, ptr %"R15"
  %"mul.34" = mul i32 %".1520", %".1521"
  %"add.90" = add i32 %"mul.34", %"Arg_4"
  store i32 %"add.90", ptr %"R12"
  ; IMAD.WIDE R14, R14, R15, c[0x0][0x170]
  %".1524" = load i32, ptr %"R14"
  %".1525" = load i32, ptr %"R15"
  %"mul.35" = mul i32 %".1524", %".1525"
  %"add.91" = add i32 %"mul.35", %"Arg_4"
  store i32 %"add.91", ptr %"R14"
  ; LDG.E.SYS R17, [R10]
  %".1528" = load i32, ptr %"R10"
  %"zext.168" = zext i32 %".1528" to i64
  %".1529" = load i32, ptr %"R11"
  %"zext.169" = zext i32 %".1529" to i64
  %"shl.90" = shl i64 %"zext.169", 32
  %"or.84" = or i64 %"shl.90", %"zext.168"
  %".1530" = inttoptr i64 %"or.84" to ptr
  %".1531" = ptrtoint ptr %".1530" to i64
  %".1532" = add i64 %".1531", 0
  %"for_LDG.84" = inttoptr i64 %".1532" to ptr
  %".1533" = load float, ptr %"for_LDG.84"
  %".1534" = bitcast ptr %"R17" to ptr
  store float %".1533", ptr %".1534"
  ; LDG.E.SYS R9, [R12]
  %".1537" = load i32, ptr %"R12"
  %"zext.170" = zext i32 %".1537" to i64
  %".1538" = load i32, ptr %"R13"
  %"zext.171" = zext i32 %".1538" to i64
  %"shl.91" = shl i64 %"zext.171", 32
  %"or.85" = or i64 %"shl.91", %"zext.170"
  %".1539" = inttoptr i64 %"or.85" to ptr
  %".1540" = ptrtoint ptr %".1539" to i64
  %".1541" = add i64 %".1540", 0
  %"for_LDG.85" = inttoptr i64 %".1541" to ptr
  %".1542" = load float, ptr %"for_LDG.85"
  %".1543" = bitcast ptr %"R9" to ptr
  store float %".1542", ptr %".1543"
  ; LDG.E.SYS R16, [R14]
  %".1546" = load i32, ptr %"R14"
  %"zext.172" = zext i32 %".1546" to i64
  %".1547" = load i32, ptr %"R15"
  %"zext.173" = zext i32 %".1547" to i64
  %"shl.92" = shl i64 %"zext.173", 32
  %"or.86" = or i64 %"shl.92", %"zext.172"
  %".1548" = inttoptr i64 %"or.86" to ptr
  %".1549" = ptrtoint ptr %".1548" to i64
  %".1550" = add i64 %".1549", 0
  %"for_LDG.86" = inttoptr i64 %".1550" to ptr
  %".1551" = load float, ptr %"for_LDG.86"
  %".1552" = bitcast ptr %"R16" to ptr
  store float %".1551", ptr %".1552"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".1555" = load i32, ptr %"R4"
  %".1556" = load i1, ptr %"PT"
  %"cmp.13" = icmp ne i32 %".1555", 1
  %".1557" = and i1 %"cmp.13", %".1556"
  ; FFMA R52, R9, R17, R52
  %".1559" = load float, ptr %"R9"
  %".1560" = load float, ptr %"R17"
  %".1561" = load float, ptr %"R52"
  %"fmul.56" = fmul float %".1559", %".1560"
  %"fadd.56" = fadd float %"fmul.56", %".1561"
  %".1562" = bitcast ptr %"R52" to ptr
  store float %"fadd.56", ptr %".1562"
  ; FFMA R54, R17, R16, R54
  %".1565" = load float, ptr %"R17"
  %".1566" = load float, ptr %"R16"
  %".1567" = load float, ptr %"R54"
  %"fmul.57" = fmul float %".1565", %".1566"
  %"fadd.57" = fadd float %"fmul.57", %".1567"
  %".1568" = bitcast ptr %"R54" to ptr
  store float %"fadd.57", ptr %".1568"
  ; @!P0 BRA `(.L_x_1)
  %".1571" = load i1, ptr %"P0"
  %".1572" = icmp eq i1 %".1571", 1
  br i1 %".1572", label %".L_x_1", label %".L_x_2_split_0x1090"
.L_x_2_split_0x1090:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".1575" = load i32, ptr %"R4"
  %".1576" = load i1, ptr %"PT"
  %"cmp.14" = icmp ne i32 %".1575", 2
  %".1577" = and i1 %"cmp.14", %".1576"
  ; LDG.E.SYS R9, [R12+0x4]
  %".1579" = load i32, ptr %"R12"
  %"zext.174" = zext i32 %".1579" to i64
  %".1580" = load i32, ptr %"R13"
  %"zext.175" = zext i32 %".1580" to i64
  %"shl.93" = shl i64 %"zext.175", 32
  %"or.87" = or i64 %"shl.93", %"zext.174"
  %".1581" = inttoptr i64 %"or.87" to ptr
  %".1582" = ptrtoint ptr %".1581" to i64
  %".1583" = add i64 %".1582", 4
  %"for_LDG.87" = inttoptr i64 %".1583" to ptr
  %".1584" = load float, ptr %"for_LDG.87"
  %".1585" = bitcast ptr %"R9" to ptr
  store float %".1584", ptr %".1585"
  ; LDG.E.SYS R17, [R10+0x4]
  %".1588" = load i32, ptr %"R10"
  %"zext.176" = zext i32 %".1588" to i64
  %".1589" = load i32, ptr %"R11"
  %"zext.177" = zext i32 %".1589" to i64
  %"shl.94" = shl i64 %"zext.177", 32
  %"or.88" = or i64 %"shl.94", %"zext.176"
  %".1590" = inttoptr i64 %"or.88" to ptr
  %".1591" = ptrtoint ptr %".1590" to i64
  %".1592" = add i64 %".1591", 4
  %"for_LDG.88" = inttoptr i64 %".1592" to ptr
  %".1593" = load float, ptr %"for_LDG.88"
  %".1594" = bitcast ptr %"R17" to ptr
  store float %".1593", ptr %".1594"
  ; LDG.E.SYS R16, [R14+0x4]
  %".1597" = load i32, ptr %"R14"
  %"zext.178" = zext i32 %".1597" to i64
  %".1598" = load i32, ptr %"R15"
  %"zext.179" = zext i32 %".1598" to i64
  %"shl.95" = shl i64 %"zext.179", 32
  %"or.89" = or i64 %"shl.95", %"zext.178"
  %".1599" = inttoptr i64 %"or.89" to ptr
  %".1600" = ptrtoint ptr %".1599" to i64
  %".1601" = add i64 %".1600", 4
  %"for_LDG.89" = inttoptr i64 %".1601" to ptr
  %".1602" = load float, ptr %"for_LDG.89"
  %".1603" = bitcast ptr %"R16" to ptr
  store float %".1602", ptr %".1603"
  ; @P0 LDG.E.SYS R19, [R12+0x8]
  %".1606" = load i1, ptr %"P0"
  %".1607" = icmp ne i1 %".1606", 1
  br i1 %".1607", label %".L_x_2_split_0x1090_conditionalExpr_0x10d0", label %".L_x_2_split_0x10e0"
.L_x_2_split_0x1090_conditionalExpr_0x10d0:
  ; LDG.E.SYS R19, [R12+0x8]
  %".1610" = load i32, ptr %"R12"
  %"zext.180" = zext i32 %".1610" to i64
  %".1611" = load i32, ptr %"R13"
  %"zext.181" = zext i32 %".1611" to i64
  %"shl.96" = shl i64 %"zext.181", 32
  %"or.90" = or i64 %"shl.96", %"zext.180"
  %".1612" = inttoptr i64 %"or.90" to ptr
  %".1613" = ptrtoint ptr %".1612" to i64
  %".1614" = add i64 %".1613", 8
  %"for_LDG.90" = inttoptr i64 %".1614" to ptr
  %".1615" = load float, ptr %"for_LDG.90"
  %".1616" = bitcast ptr %"R19" to ptr
  store float %".1615", ptr %".1616"
  ; BRA `(.L_x_2_split_0x10e0)
  br label %".L_x_2_split_0x10e0"
.L_x_2_split_0x10e0:
  ; @P0 LDG.E.SYS R21, [R10+0x8]
  %".1621" = load i1, ptr %"P0"
  %".1622" = icmp ne i1 %".1621", 1
  br i1 %".1622", label %".L_x_2_split_0x10e0_conditionalExpr_0x10e0", label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10e0_conditionalExpr_0x10e0:
  ; LDG.E.SYS R21, [R10+0x8]
  %".1625" = load i32, ptr %"R10"
  %"zext.182" = zext i32 %".1625" to i64
  %".1626" = load i32, ptr %"R11"
  %"zext.183" = zext i32 %".1626" to i64
  %"shl.97" = shl i64 %"zext.183", 32
  %"or.91" = or i64 %"shl.97", %"zext.182"
  %".1627" = inttoptr i64 %"or.91" to ptr
  %".1628" = ptrtoint ptr %".1627" to i64
  %".1629" = add i64 %".1628", 8
  %"for_LDG.91" = inttoptr i64 %".1629" to ptr
  %".1630" = load float, ptr %"for_LDG.91"
  %".1631" = bitcast ptr %"R21" to ptr
  store float %".1630", ptr %".1631"
  ; BRA `(.L_x_2_split_0x10f0)
  br label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10f0:
  ; @P0 LDG.E.SYS R18, [R14+0x8]
  %".1636" = load i1, ptr %"P0"
  %".1637" = icmp ne i1 %".1636", 1
  br i1 %".1637", label %".L_x_2_split_0x10f0_conditionalExpr_0x10f0", label %".L_x_2_split_0x1100"
.L_x_2_split_0x10f0_conditionalExpr_0x10f0:
  ; LDG.E.SYS R18, [R14+0x8]
  %".1640" = load i32, ptr %"R14"
  %"zext.184" = zext i32 %".1640" to i64
  %".1641" = load i32, ptr %"R15"
  %"zext.185" = zext i32 %".1641" to i64
  %"shl.98" = shl i64 %"zext.185", 32
  %"or.92" = or i64 %"shl.98", %"zext.184"
  %".1642" = inttoptr i64 %"or.92" to ptr
  %".1643" = ptrtoint ptr %".1642" to i64
  %".1644" = add i64 %".1643", 8
  %"for_LDG.92" = inttoptr i64 %".1644" to ptr
  %".1645" = load float, ptr %"for_LDG.92"
  %".1646" = bitcast ptr %"R18" to ptr
  store float %".1645", ptr %".1646"
  ; BRA `(.L_x_2_split_0x1100)
  br label %".L_x_2_split_0x1100"
.L_x_2_split_0x1100:
  ; FFMA R52, R9, R17, R52
  %".1651" = load float, ptr %"R9"
  %".1652" = load float, ptr %"R17"
  %".1653" = load float, ptr %"R52"
  %"fmul.58" = fmul float %".1651", %".1652"
  %"fadd.58" = fadd float %"fmul.58", %".1653"
  %".1654" = bitcast ptr %"R52" to ptr
  store float %"fadd.58", ptr %".1654"
  ; FFMA R54, R17, R16, R54
  %".1657" = load float, ptr %"R17"
  %".1658" = load float, ptr %"R16"
  %".1659" = load float, ptr %"R54"
  %"fmul.59" = fmul float %".1657", %".1658"
  %"fadd.59" = fadd float %"fmul.59", %".1659"
  %".1660" = bitcast ptr %"R54" to ptr
  store float %"fadd.59", ptr %".1660"
  ; @P0 FFMA R52, R19, R21, R52
  %".1663" = load i1, ptr %"P0"
  %".1664" = icmp ne i1 %".1663", 1
  br i1 %".1664", label %".L_x_2_split_0x1100_conditionalExpr_0x1120", label %".L_x_2_split_0x1130"
.L_x_2_split_0x1100_conditionalExpr_0x1120:
  ; FFMA R52, R19, R21, R52
  %".1667" = load float, ptr %"R19"
  %".1668" = load float, ptr %"R21"
  %".1669" = load float, ptr %"R52"
  %"fmul.60" = fmul float %".1667", %".1668"
  %"fadd.60" = fadd float %"fmul.60", %".1669"
  %".1670" = bitcast ptr %"R52" to ptr
  store float %"fadd.60", ptr %".1670"
  ; BRA `(.L_x_2_split_0x1130)
  br label %".L_x_2_split_0x1130"
.L_x_2_split_0x1130:
  ; @P0 FFMA R54, R21, R18, R54
  %".1675" = load i1, ptr %"P0"
  %".1676" = icmp ne i1 %".1675", 1
  br i1 %".1676", label %".L_x_2_split_0x1130_conditionalExpr_0x1130", label %".L_x_1"
.L_x_2_split_0x1130_conditionalExpr_0x1130:
  ; FFMA R54, R21, R18, R54
  %".1679" = load float, ptr %"R21"
  %".1680" = load float, ptr %"R18"
  %".1681" = load float, ptr %"R54"
  %"fmul.61" = fmul float %".1679", %".1680"
  %"fadd.61" = fadd float %"fmul.61", %".1681"
  %".1682" = bitcast ptr %"R54" to ptr
  store float %"fadd.61", ptr %".1682"
  ; BRA `(.L_x_1)
  br label %".L_x_1"
.L_x_1:
  ; LDG.E.SYS R9, [R26]
  %".1687" = load i32, ptr %"R26"
  %"zext.186" = zext i32 %".1687" to i64
  %"zext.187" = zext i32 0 to i64
  %"shl.99" = shl i64 %"zext.187", 32
  %"or.93" = or i64 %"shl.99", %"zext.186"
  %".1688" = inttoptr i64 %"or.93" to ptr
  %".1689" = ptrtoint ptr %".1688" to i64
  %".1690" = add i64 %".1689", 0
  %"for_LDG.93" = inttoptr i64 %".1690" to ptr
  %".1691" = load float, ptr %"for_LDG.93"
  %".1692" = bitcast ptr %"R9" to ptr
  store float %".1691", ptr %".1692"
  ; MOV R10, 0x3bbb989d
  %".1695" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".1695"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R11, 0x437c0000
  %".1699" = bitcast ptr %"R11" to ptr
  store float 0x41d0df0000000000, ptr %".1699"
  ; BSSY B0, `(.L_x_7)
  ; FADD R9, R9, R52
  %".1703" = load float, ptr %"R9"
  %".1704" = load float, ptr %"R52"
  %"fadd.62" = fadd float %".1703", %".1704"
  %".1705" = bitcast ptr %"R9" to ptr
  store float %"fadd.62", ptr %".1705"
  ; FFMA.SAT R10, -R9, R10, 0.5
  %".1708" = load float, ptr %"R9"
  %".1709" = fneg float %".1708"
  %".1710" = load float, ptr %"R10"
  %"fmul.62" = fmul float %".1709", %".1710"
  %"fadd.63" = fadd float %"fmul.62", 0x3fe0000000000000
  %".1711" = bitcast ptr %"R10" to ptr
  store float %"fadd.63", ptr %".1711"
  ; FFMA.RM R10, R10, R11, 12582913
  %".1714" = load float, ptr %"R10"
  %".1715" = load float, ptr %"R11"
  %"fmul.63" = fmul float %".1714", %".1715"
  %"fadd.64" = fadd float %"fmul.63", 0x4168000020000000
  %".1716" = bitcast ptr %"R10" to ptr
  store float %"fadd.64", ptr %".1716"
  ; FADD R12, R10.reuse, -12583039
  %".1719" = load float, ptr %"R10"
  %"fadd.65" = fadd float %".1719", 0xc168000fe0000000
  %".1720" = bitcast ptr %"R12" to ptr
  store float %"fadd.65", ptr %".1720"
  ; SHF.L.U32 R10, R10, 0x17, RZ
  %".1723" = icmp ult i32 23, 32
  %"SHF_min" = select  i1 %".1723", i32 23, i32 32
  %".1724" = load i32, ptr %"R10"
  %"zext.188" = zext i32 0 to i64
  %"zext.189" = zext i32 %".1724" to i64
  %"zext.190" = zext i32 23 to i64
  %"shl.100" = shl i64 %"zext.188", 32
  %"or.94" = or i64 %"shl.100", %"zext.189"
  %"shl.101" = shl i64 %"or.94", %"zext.190"
  %"and" = and i64 %"shl.101", 4294967295
  %"trunc32" = trunc i64 %"and" to i32
  store i32 %"trunc32", ptr %"R10"
  ; FFMA R12, -R9, 1.4426950216293334961, -R12
  %".1727" = load float, ptr %"R9"
  %".1728" = fneg float %".1727"
  %".1729" = load float, ptr %"R12"
  %".1730" = fneg float %".1729"
  %"fmul.64" = fmul float %".1728", 0x3ff7154760000000
  %"fadd.66" = fadd float %"fmul.64", %".1730"
  %".1731" = bitcast ptr %"R12" to ptr
  store float %"fadd.66", ptr %".1731"
  ; FFMA R12, -R9, 1.925963033500011079e-08, R12
  %".1734" = load float, ptr %"R9"
  %".1735" = fneg float %".1734"
  %".1736" = load float, ptr %"R12"
  %"fmul.65" = fmul float %".1735", 0x3e54ae0c00000000
  %"fadd.67" = fadd float %"fmul.65", %".1736"
  %".1737" = bitcast ptr %"R12" to ptr
  store float %"fadd.67", ptr %".1737"
  ; MUFU.EX2 R9, R12
  %".1740" = load float, ptr %"R12"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1740")
  %".1741" = bitcast ptr %"R9" to ptr
  store float %"llvm_exp2_f32_result", ptr %".1741"
  ; FFMA R24, R10, R9, 1
  %".1744" = load float, ptr %"R10"
  %".1745" = load float, ptr %"R9"
  %"fmul.66" = fmul float %".1744", %".1745"
  %"fadd.68" = fadd float %"fmul.66", 0x3ff0000000000000
  %".1746" = bitcast ptr %"R24" to ptr
  store float %"fadd.68", ptr %".1746"
  ; IADD3 R9, R24, 0x1800000, RZ
  %".1749" = load i32, ptr %"R24"
  %"add.92" = add i32 %".1749", 25165824
  %"add.93" = add i32 %"add.92", 0
  store i32 %"add.93", ptr %"R9"
  ; LOP3.LUT R9, R9, 0x7f800000, RZ, 0xc0, !PT
  %".1752" = load i32, ptr %"R9"
  %".1753" = and i32 %".1752", 2139095040
  store i32 %".1753", ptr %"R9"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".1756" = load i32, ptr %"R9"
  %".1757" = load i1, ptr %"PT"
  %"cmp.15" = icmp sgt i32 %".1756", 33554431
  %".1758" = and i1 %"cmp.15", %".1757"
  ; @P0 BRA `(.L_x_8)
  %".1760" = load i1, ptr %"P0"
  %".1761" = icmp ne i1 %".1760", 1
  br i1 %".1761", label %".L_x_8", label %".L_x_1_split_0x1260"
.L_x_1_split_0x1260:
  ; MOV R10, 0x1280
  store i32 4736, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R9, R22
  %".1767" = load i32, ptr %"R22"
  store i32 %".1767", ptr %"R9"
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %".1772" = load float, ptr %"R24"
  %".1773" = fdiv float 0x3ff0000000000000, %".1772"
  %".1774" = bitcast ptr %"R9" to ptr
  store float %".1773", ptr %".1774"
  ; FFMA R10, R24, R9, -1
  %".1777" = load float, ptr %"R24"
  %".1778" = load float, ptr %"R9"
  %"fmul.67" = fmul float %".1777", %".1778"
  %"fadd.69" = fadd float %"fmul.67", 0xbff0000000000000
  %".1779" = bitcast ptr %"R10" to ptr
  store float %"fadd.69", ptr %".1779"
  ; FADD.FTZ R10, -R10, -RZ
  %".1782" = load float, ptr %"R10"
  %".1783" = fneg float %".1782"
  %"fadd.70" = fadd float %".1783",              0x0
  %".1784" = bitcast ptr %"R10" to ptr
  store float %"fadd.70", ptr %".1784"
  ; FFMA R9, R9, R10, R9
  %".1787" = load float, ptr %"R9"
  %".1788" = load float, ptr %"R10"
  %".1789" = load float, ptr %"R9"
  %"fmul.68" = fmul float %".1787", %".1788"
  %"fadd.71" = fadd float %"fmul.68", %".1789"
  %".1790" = bitcast ptr %"R9" to ptr
  store float %"fadd.71", ptr %".1790"
  br label %".L_x_9"
.L_x_9:
  ; BSYNC B0
  br label %".L_x_7"
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  %".1796" = load i32, ptr %"R32"
  %"zext.191" = zext i32 %".1796" to i64
  %".1797" = load i32, ptr %"R33"
  %"zext.192" = zext i32 %".1797" to i64
  %"shl.102" = shl i64 %"zext.192", 32
  %"or.95" = or i64 %"shl.102", %"zext.191"
  %".1798" = inttoptr i64 %"or.95" to ptr
  %".1799" = ptrtoint ptr %".1798" to i64
  %".1800" = add i64 %".1799", 0
  %"for_LDG.94" = inttoptr i64 %".1800" to ptr
  %".1801" = load float, ptr %"for_LDG.94"
  %".1802" = bitcast ptr %"R11" to ptr
  store float %".1801", ptr %".1802"
  ; MOV R10, 0x3bbb989d
  %".1805" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".1805"
  ; MOV R13, 0x437c0000
  %".1808" = bitcast ptr %"R13" to ptr
  store float 0x41d0df0000000000, ptr %".1808"
  ; FADD R11, R11, R54
  %".1811" = load float, ptr %"R11"
  %".1812" = load float, ptr %"R54"
  %"fadd.72" = fadd float %".1811", %".1812"
  %".1813" = bitcast ptr %"R11" to ptr
  store float %"fadd.72", ptr %".1813"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %".1816" = load float, ptr %"R11"
  %".1817" = fneg float %".1816"
  %".1818" = load float, ptr %"R10"
  %"fmul.69" = fmul float %".1817", %".1818"
  %"fadd.73" = fadd float %"fmul.69", 0x3fe0000000000000
  %".1819" = bitcast ptr %"R10" to ptr
  store float %"fadd.73", ptr %".1819"
  ; FFMA.RM R10, R10, R13, 12582913
  %".1822" = load float, ptr %"R10"
  %".1823" = load float, ptr %"R13"
  %"fmul.70" = fmul float %".1822", %".1823"
  %"fadd.74" = fadd float %"fmul.70", 0x4168000020000000
  %".1824" = bitcast ptr %"R10" to ptr
  store float %"fadd.74", ptr %".1824"
  ; FADD R12, R10.reuse, -12583039
  %".1827" = load float, ptr %"R10"
  %"fadd.75" = fadd float %".1827", 0xc168000fe0000000
  %".1828" = bitcast ptr %"R12" to ptr
  store float %"fadd.75", ptr %".1828"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".1831" = icmp ult i32 23, 32
  %"SHF_min.1" = select  i1 %".1831", i32 23, i32 32
  %".1832" = load i32, ptr %"R10"
  %"zext.193" = zext i32 0 to i64
  %"zext.194" = zext i32 %".1832" to i64
  %"zext.195" = zext i32 23 to i64
  %"shl.103" = shl i64 %"zext.193", 32
  %"or.96" = or i64 %"shl.103", %"zext.194"
  %"shl.104" = shl i64 %"or.96", %"zext.195"
  %"and.1" = and i64 %"shl.104", 4294967295
  %"trunc32.1" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.1", ptr %"R20"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %".1835" = load float, ptr %"R11"
  %".1836" = fneg float %".1835"
  %".1837" = load float, ptr %"R12"
  %".1838" = fneg float %".1837"
  %"fmul.71" = fmul float %".1836", 0x3ff7154760000000
  %"fadd.76" = fadd float %"fmul.71", %".1838"
  %".1839" = bitcast ptr %"R12" to ptr
  store float %"fadd.76", ptr %".1839"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %".1842" = load float, ptr %"R11"
  %".1843" = fneg float %".1842"
  %".1844" = load float, ptr %"R12"
  %"fmul.72" = fmul float %".1843", 0x3e54ae0c00000000
  %"fadd.77" = fadd float %"fmul.72", %".1844"
  %".1845" = bitcast ptr %"R12" to ptr
  store float %"fadd.77", ptr %".1845"
  ; MUFU.EX2 R11, R12
  %".1848" = load float, ptr %"R12"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".1848")
  %".1849" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result.1", ptr %".1849"
  ; FFMA R20, R20, R11, 1
  %".1852" = load float, ptr %"R20"
  %".1853" = load float, ptr %"R11"
  %"fmul.73" = fmul float %".1852", %".1853"
  %"fadd.78" = fadd float %"fmul.73", 0x3ff0000000000000
  %".1854" = bitcast ptr %"R20" to ptr
  store float %"fadd.78", ptr %".1854"
  ; @!P4 BRA `(.L_x_10)
  %".1857" = load i1, ptr %"P4"
  %".1858" = icmp eq i1 %".1857", 1
  br i1 %".1858", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".1861" = load i32, ptr %"R5"
  %".1862" = load i1, ptr %"PT"
  %"cmp.16" = icmp sge i32 %".1861", 3
  %".1863" = and i1 %"cmp.16", %".1862"
  ; MOV R8, RZ
  %".1865" = load float, ptr %"RZ"
  %".1866" = bitcast ptr %"R8" to ptr
  store float %".1865", ptr %".1866"
  ; MOV R22, RZ
  %".1869" = load i32, ptr %"RZ"
  store i32 %".1869", ptr %"R22"
  ; @!P0 BRA `(.L_x_11)
  %".1872" = load i1, ptr %"P0"
  %".1873" = icmp eq i1 %".1872", 1
  br i1 %".1873", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".1876" = load i32, ptr %"R7"
  %".1877" = load i1, ptr %"PT"
  %"cmp.17" = icmp sgt i32 %".1876", 0
  %".1878" = and i1 %"cmp.17", %".1877"
  ; MOV R8, RZ
  %".1880" = load float, ptr %"RZ"
  %".1881" = bitcast ptr %"R8" to ptr
  store float %".1880", ptr %".1881"
  ; MOV R22, RZ
  %".1884" = load i32, ptr %"RZ"
  store i32 %".1884", ptr %"R22"
  ; MOV R23, R7
  %".1887" = load i32, ptr %"R7"
  store i32 %".1887", ptr %"R23"
  ; @!P0 BRA `(.L_x_12)
  %".1890" = load i1, ptr %"P0"
  %".1891" = icmp eq i1 %".1890", 1
  br i1 %".1891", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".1894" = load i32, ptr %"R23"
  %".1895" = load i1, ptr %"PT"
  %"cmp.18" = icmp sgt i32 %".1894", 12
  %".1896" = and i1 %"cmp.18", %".1895"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".1898" = and i1 1, 1
  %".1899" = or i1 %".1898", 1
  ; @!P1 BRA `(.L_x_13)
  %".1901" = load i1, ptr %"P1"
  %".1902" = icmp eq i1 %".1901", 1
  br i1 %".1902", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1905" = xor i1 1, 1
  %".1906" = and i1 %".1905", 1
  %".1907" = and i1 %".1906", 1
  br label %".L_x_14"
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, ptr %"R49"
  ; IADD3 R16, R3, R22, RZ
  %".1912" = load i32, ptr %"R3"
  %".1913" = load i32, ptr %"R22"
  %"add.94" = add i32 %".1912", %".1913"
  %"add.95" = add i32 %"add.94", 0
  store i32 %"add.95", ptr %"R16"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".1916" = load i32, ptr %"R22"
  %".1917" = load i32, ptr %"R49"
  %"mul.36" = mul i32 %".1916", %".1917"
  %"add.96" = add i32 %"mul.36", %"Arg_3"
  store i32 %"add.96", ptr %"R12"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".1920" = load i32, ptr %"R16"
  %".1921" = load i32, ptr %"R49"
  %"mul.37" = mul i32 %".1920", %".1921"
  %"add.97" = add i32 %"mul.37", %"Arg_4"
  store i32 %"add.97", ptr %"R16"
  ; IADD3 R18, R22, 0x4, RZ
  %".1924" = load i32, ptr %"R22"
  %"add.98" = add i32 %".1924", 4
  %"add.99" = add i32 %"add.98", 0
  store i32 %"add.99", ptr %"R18"
  ; LDG.E.SYS R24, [R12]
  %".1927" = load i32, ptr %"R12"
  %"zext.196" = zext i32 %".1927" to i64
  %".1928" = load i32, ptr %"R13"
  %"zext.197" = zext i32 %".1928" to i64
  %"shl.105" = shl i64 %"zext.197", 32
  %"or.97" = or i64 %"shl.105", %"zext.196"
  %".1929" = inttoptr i64 %"or.97" to ptr
  %".1930" = ptrtoint ptr %".1929" to i64
  %".1931" = add i64 %".1930", 0
  %"for_LDG.95" = inttoptr i64 %".1931" to ptr
  %".1932" = load float, ptr %"for_LDG.95"
  %".1933" = bitcast ptr %"R24" to ptr
  store float %".1932", ptr %".1933"
  ; IADD3 R14, R3, R18, RZ
  %".1936" = load i32, ptr %"R3"
  %".1937" = load i32, ptr %"R18"
  %"add.100" = add i32 %".1936", %".1937"
  %"add.101" = add i32 %"add.100", 0
  store i32 %"add.101", ptr %"R14"
  ; LDG.E.SYS R21, [R16]
  %".1940" = load i32, ptr %"R16"
  %"zext.198" = zext i32 %".1940" to i64
  %".1941" = load i32, ptr %"R17"
  %"zext.199" = zext i32 %".1941" to i64
  %"shl.106" = shl i64 %"zext.199", 32
  %"or.98" = or i64 %"shl.106", %"zext.198"
  %".1942" = inttoptr i64 %"or.98" to ptr
  %".1943" = ptrtoint ptr %".1942" to i64
  %".1944" = add i64 %".1943", 0
  %"for_LDG.96" = inttoptr i64 %".1944" to ptr
  %".1945" = load float, ptr %"for_LDG.96"
  %".1946" = bitcast ptr %"R21" to ptr
  store float %".1945", ptr %".1946"
  ; LDG.E.SYS R36, [R12+0x4]
  %".1949" = load i32, ptr %"R12"
  %"zext.200" = zext i32 %".1949" to i64
  %".1950" = load i32, ptr %"R13"
  %"zext.201" = zext i32 %".1950" to i64
  %"shl.107" = shl i64 %"zext.201", 32
  %"or.99" = or i64 %"shl.107", %"zext.200"
  %".1951" = inttoptr i64 %"or.99" to ptr
  %".1952" = ptrtoint ptr %".1951" to i64
  %".1953" = add i64 %".1952", 4
  %"for_LDG.97" = inttoptr i64 %".1953" to ptr
  %".1954" = load float, ptr %"for_LDG.97"
  %".1955" = bitcast ptr %"R36" to ptr
  store float %".1954", ptr %".1955"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".1958" = load i32, ptr %"R18"
  %".1959" = load i32, ptr %"R49"
  %"mul.38" = mul i32 %".1958", %".1959"
  %"add.102" = add i32 %"mul.38", %"Arg_3"
  store i32 %"add.102", ptr %"R18"
  ; LDG.E.SYS R25, [R16+0x4]
  %".1962" = load i32, ptr %"R16"
  %"zext.202" = zext i32 %".1962" to i64
  %".1963" = load i32, ptr %"R17"
  %"zext.203" = zext i32 %".1963" to i64
  %"shl.108" = shl i64 %"zext.203", 32
  %"or.100" = or i64 %"shl.108", %"zext.202"
  %".1964" = inttoptr i64 %"or.100" to ptr
  %".1965" = ptrtoint ptr %".1964" to i64
  %".1966" = add i64 %".1965", 4
  %"for_LDG.98" = inttoptr i64 %".1966" to ptr
  %".1967" = load float, ptr %"for_LDG.98"
  %".1968" = bitcast ptr %"R25" to ptr
  store float %".1967", ptr %".1968"
  ; LDG.E.SYS R46, [R12+0x8]
  %".1971" = load i32, ptr %"R12"
  %"zext.204" = zext i32 %".1971" to i64
  %".1972" = load i32, ptr %"R13"
  %"zext.205" = zext i32 %".1972" to i64
  %"shl.109" = shl i64 %"zext.205", 32
  %"or.101" = or i64 %"shl.109", %"zext.204"
  %".1973" = inttoptr i64 %"or.101" to ptr
  %".1974" = ptrtoint ptr %".1973" to i64
  %".1975" = add i64 %".1974", 8
  %"for_LDG.99" = inttoptr i64 %".1975" to ptr
  %".1976" = load float, ptr %"for_LDG.99"
  %".1977" = bitcast ptr %"R46" to ptr
  store float %".1976", ptr %".1977"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".1980" = load i32, ptr %"R14"
  %".1981" = load i32, ptr %"R49"
  %"mul.39" = mul i32 %".1980", %".1981"
  %"add.103" = add i32 %"mul.39", %"Arg_4"
  store i32 %"add.103", ptr %"R14"
  ; LDG.E.SYS R34, [R16+0x8]
  %".1984" = load i32, ptr %"R16"
  %"zext.206" = zext i32 %".1984" to i64
  %".1985" = load i32, ptr %"R17"
  %"zext.207" = zext i32 %".1985" to i64
  %"shl.110" = shl i64 %"zext.207", 32
  %"or.102" = or i64 %"shl.110", %"zext.206"
  %".1986" = inttoptr i64 %"or.102" to ptr
  %".1987" = ptrtoint ptr %".1986" to i64
  %".1988" = add i64 %".1987", 8
  %"for_LDG.100" = inttoptr i64 %".1988" to ptr
  %".1989" = load float, ptr %"for_LDG.100"
  %".1990" = bitcast ptr %"R34" to ptr
  store float %".1989", ptr %".1990"
  ; LDG.E.SYS R44, [R12+0xc]
  %".1993" = load i32, ptr %"R12"
  %"zext.208" = zext i32 %".1993" to i64
  %".1994" = load i32, ptr %"R13"
  %"zext.209" = zext i32 %".1994" to i64
  %"shl.111" = shl i64 %"zext.209", 32
  %"or.103" = or i64 %"shl.111", %"zext.208"
  %".1995" = inttoptr i64 %"or.103" to ptr
  %".1996" = ptrtoint ptr %".1995" to i64
  %".1997" = add i64 %".1996", 12
  %"for_LDG.101" = inttoptr i64 %".1997" to ptr
  %".1998" = load float, ptr %"for_LDG.101"
  %".1999" = bitcast ptr %"R44" to ptr
  store float %".1998", ptr %".1999"
  ; IADD3 R10, R22, 0x8, RZ
  %".2002" = load i32, ptr %"R22"
  %"add.104" = add i32 %".2002", 8
  %"add.105" = add i32 %"add.104", 0
  store i32 %"add.105", ptr %"R10"
  ; LDG.E.SYS R41, [R16+0xc]
  %".2005" = load i32, ptr %"R16"
  %"zext.210" = zext i32 %".2005" to i64
  %".2006" = load i32, ptr %"R17"
  %"zext.211" = zext i32 %".2006" to i64
  %"shl.112" = shl i64 %"zext.211", 32
  %"or.104" = or i64 %"shl.112", %"zext.210"
  %".2007" = inttoptr i64 %"or.104" to ptr
  %".2008" = ptrtoint ptr %".2007" to i64
  %".2009" = add i64 %".2008", 12
  %"for_LDG.102" = inttoptr i64 %".2009" to ptr
  %".2010" = load float, ptr %"for_LDG.102"
  %".2011" = bitcast ptr %"R41" to ptr
  store float %".2010", ptr %".2011"
  ; LDG.E.SYS R42, [R18]
  %".2014" = load i32, ptr %"R18"
  %"zext.212" = zext i32 %".2014" to i64
  %".2015" = load i32, ptr %"R19"
  %"zext.213" = zext i32 %".2015" to i64
  %"shl.113" = shl i64 %"zext.213", 32
  %"or.105" = or i64 %"shl.113", %"zext.212"
  %".2016" = inttoptr i64 %"or.105" to ptr
  %".2017" = ptrtoint ptr %".2016" to i64
  %".2018" = add i64 %".2017", 0
  %"for_LDG.103" = inttoptr i64 %".2018" to ptr
  %".2019" = load float, ptr %"for_LDG.103"
  %".2020" = bitcast ptr %"R42" to ptr
  store float %".2019", ptr %".2020"
  ; IADD3 R50, R3, R10, RZ
  %".2023" = load i32, ptr %"R3"
  %".2024" = load i32, ptr %"R10"
  %"add.106" = add i32 %".2023", %".2024"
  %"add.107" = add i32 %"add.106", 0
  store i32 %"add.107", ptr %"R50"
  ; LDG.E.SYS R39, [R14]
  %".2027" = load i32, ptr %"R14"
  %"zext.214" = zext i32 %".2027" to i64
  %".2028" = load i32, ptr %"R15"
  %"zext.215" = zext i32 %".2028" to i64
  %"shl.114" = shl i64 %"zext.215", 32
  %"or.106" = or i64 %"shl.114", %"zext.214"
  %".2029" = inttoptr i64 %"or.106" to ptr
  %".2030" = ptrtoint ptr %".2029" to i64
  %".2031" = add i64 %".2030", 0
  %"for_LDG.104" = inttoptr i64 %".2031" to ptr
  %".2032" = load float, ptr %"for_LDG.104"
  %".2033" = bitcast ptr %"R39" to ptr
  store float %".2032", ptr %".2033"
  ; LDG.E.SYS R40, [R18+0x4]
  %".2036" = load i32, ptr %"R18"
  %"zext.216" = zext i32 %".2036" to i64
  %".2037" = load i32, ptr %"R19"
  %"zext.217" = zext i32 %".2037" to i64
  %"shl.115" = shl i64 %"zext.217", 32
  %"or.107" = or i64 %"shl.115", %"zext.216"
  %".2038" = inttoptr i64 %"or.107" to ptr
  %".2039" = ptrtoint ptr %".2038" to i64
  %".2040" = add i64 %".2039", 4
  %"for_LDG.105" = inttoptr i64 %".2040" to ptr
  %".2041" = load float, ptr %"for_LDG.105"
  %".2042" = bitcast ptr %"R40" to ptr
  store float %".2041", ptr %".2042"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".2045" = load i32, ptr %"R10"
  %".2046" = load i32, ptr %"R49"
  %"mul.40" = mul i32 %".2045", %".2046"
  %"add.108" = add i32 %"mul.40", %"Arg_3"
  store i32 %"add.108", ptr %"R10"
  ; LDG.E.SYS R37, [R14+0x4]
  %".2049" = load i32, ptr %"R14"
  %"zext.218" = zext i32 %".2049" to i64
  %".2050" = load i32, ptr %"R15"
  %"zext.219" = zext i32 %".2050" to i64
  %"shl.116" = shl i64 %"zext.219", 32
  %"or.108" = or i64 %"shl.116", %"zext.218"
  %".2051" = inttoptr i64 %"or.108" to ptr
  %".2052" = ptrtoint ptr %".2051" to i64
  %".2053" = add i64 %".2052", 4
  %"for_LDG.106" = inttoptr i64 %".2053" to ptr
  %".2054" = load float, ptr %"for_LDG.106"
  %".2055" = bitcast ptr %"R37" to ptr
  store float %".2054", ptr %".2055"
  ; LDG.E.SYS R38, [R18+0x8]
  %".2058" = load i32, ptr %"R18"
  %"zext.220" = zext i32 %".2058" to i64
  %".2059" = load i32, ptr %"R19"
  %"zext.221" = zext i32 %".2059" to i64
  %"shl.117" = shl i64 %"zext.221", 32
  %"or.109" = or i64 %"shl.117", %"zext.220"
  %".2060" = inttoptr i64 %"or.109" to ptr
  %".2061" = ptrtoint ptr %".2060" to i64
  %".2062" = add i64 %".2061", 8
  %"for_LDG.107" = inttoptr i64 %".2062" to ptr
  %".2063" = load float, ptr %"for_LDG.107"
  %".2064" = bitcast ptr %"R38" to ptr
  store float %".2063", ptr %".2064"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".2067" = load i32, ptr %"R50"
  %".2068" = load i32, ptr %"R49"
  %"mul.41" = mul i32 %".2067", %".2068"
  %"add.109" = add i32 %"mul.41", %"Arg_4"
  store i32 %"add.109", ptr %"R12"
  ; LDG.E.SYS R35, [R14+0x8]
  %".2071" = load i32, ptr %"R14"
  %"zext.222" = zext i32 %".2071" to i64
  %".2072" = load i32, ptr %"R15"
  %"zext.223" = zext i32 %".2072" to i64
  %"shl.118" = shl i64 %"zext.223", 32
  %"or.110" = or i64 %"shl.118", %"zext.222"
  %".2073" = inttoptr i64 %"or.110" to ptr
  %".2074" = ptrtoint ptr %".2073" to i64
  %".2075" = add i64 %".2074", 8
  %"for_LDG.108" = inttoptr i64 %".2075" to ptr
  %".2076" = load float, ptr %"for_LDG.108"
  %".2077" = bitcast ptr %"R35" to ptr
  store float %".2076", ptr %".2077"
  ; LDG.E.SYS R48, [R18+0xc]
  %".2080" = load i32, ptr %"R18"
  %"zext.224" = zext i32 %".2080" to i64
  %".2081" = load i32, ptr %"R19"
  %"zext.225" = zext i32 %".2081" to i64
  %"shl.119" = shl i64 %"zext.225", 32
  %"or.111" = or i64 %"shl.119", %"zext.224"
  %".2082" = inttoptr i64 %"or.111" to ptr
  %".2083" = ptrtoint ptr %".2082" to i64
  %".2084" = add i64 %".2083", 12
  %"for_LDG.109" = inttoptr i64 %".2084" to ptr
  %".2085" = load float, ptr %"for_LDG.109"
  %".2086" = bitcast ptr %"R48" to ptr
  store float %".2085", ptr %".2086"
  ; IADD3 R16, R22, 0xc, RZ
  %".2089" = load i32, ptr %"R22"
  %"add.110" = add i32 %".2089", 12
  %"add.111" = add i32 %"add.110", 0
  store i32 %"add.111", ptr %"R16"
  ; LDG.E.SYS R47, [R14+0xc]
  %".2092" = load i32, ptr %"R14"
  %"zext.226" = zext i32 %".2092" to i64
  %".2093" = load i32, ptr %"R15"
  %"zext.227" = zext i32 %".2093" to i64
  %"shl.120" = shl i64 %"zext.227", 32
  %"or.112" = or i64 %"shl.120", %"zext.226"
  %".2094" = inttoptr i64 %"or.112" to ptr
  %".2095" = ptrtoint ptr %".2094" to i64
  %".2096" = add i64 %".2095", 12
  %"for_LDG.110" = inttoptr i64 %".2096" to ptr
  %".2097" = load float, ptr %"for_LDG.110"
  %".2098" = bitcast ptr %"R47" to ptr
  store float %".2097", ptr %".2098"
  ; LDG.E.SYS R54, [R10]
  %".2101" = load i32, ptr %"R10"
  %"zext.228" = zext i32 %".2101" to i64
  %".2102" = load i32, ptr %"R11"
  %"zext.229" = zext i32 %".2102" to i64
  %"shl.121" = shl i64 %"zext.229", 32
  %"or.113" = or i64 %"shl.121", %"zext.228"
  %".2103" = inttoptr i64 %"or.113" to ptr
  %".2104" = ptrtoint ptr %".2103" to i64
  %".2105" = add i64 %".2104", 0
  %"for_LDG.111" = inttoptr i64 %".2105" to ptr
  %".2106" = load float, ptr %"for_LDG.111"
  %".2107" = bitcast ptr %"R54" to ptr
  store float %".2106", ptr %".2107"
  ; IADD3 R58, R3, R16, RZ
  %".2110" = load i32, ptr %"R3"
  %".2111" = load i32, ptr %"R16"
  %"add.112" = add i32 %".2110", %".2111"
  %"add.113" = add i32 %"add.112", 0
  store i32 %"add.113", ptr %"R58"
  ; LDG.E.SYS R45, [R12]
  %".2114" = load i32, ptr %"R12"
  %"zext.230" = zext i32 %".2114" to i64
  %".2115" = load i32, ptr %"R13"
  %"zext.231" = zext i32 %".2115" to i64
  %"shl.122" = shl i64 %"zext.231", 32
  %"or.114" = or i64 %"shl.122", %"zext.230"
  %".2116" = inttoptr i64 %"or.114" to ptr
  %".2117" = ptrtoint ptr %".2116" to i64
  %".2118" = add i64 %".2117", 0
  %"for_LDG.112" = inttoptr i64 %".2118" to ptr
  %".2119" = load float, ptr %"for_LDG.112"
  %".2120" = bitcast ptr %"R45" to ptr
  store float %".2119", ptr %".2120"
  ; LDG.E.SYS R52, [R10+0x4]
  %".2123" = load i32, ptr %"R10"
  %"zext.232" = zext i32 %".2123" to i64
  %".2124" = load i32, ptr %"R11"
  %"zext.233" = zext i32 %".2124" to i64
  %"shl.123" = shl i64 %"zext.233", 32
  %"or.115" = or i64 %"shl.123", %"zext.232"
  %".2125" = inttoptr i64 %"or.115" to ptr
  %".2126" = ptrtoint ptr %".2125" to i64
  %".2127" = add i64 %".2126", 4
  %"for_LDG.113" = inttoptr i64 %".2127" to ptr
  %".2128" = load float, ptr %"for_LDG.113"
  %".2129" = bitcast ptr %"R52" to ptr
  store float %".2128", ptr %".2129"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".2132" = load i32, ptr %"R16"
  %".2133" = load i32, ptr %"R49"
  %"mul.42" = mul i32 %".2132", %".2133"
  %"add.114" = add i32 %"mul.42", %"Arg_3"
  store i32 %"add.114", ptr %"R16"
  ; LDG.E.SYS R43, [R12+0x4]
  %".2136" = load i32, ptr %"R12"
  %"zext.234" = zext i32 %".2136" to i64
  %".2137" = load i32, ptr %"R13"
  %"zext.235" = zext i32 %".2137" to i64
  %"shl.124" = shl i64 %"zext.235", 32
  %"or.116" = or i64 %"shl.124", %"zext.234"
  %".2138" = inttoptr i64 %"or.116" to ptr
  %".2139" = ptrtoint ptr %".2138" to i64
  %".2140" = add i64 %".2139", 4
  %"for_LDG.114" = inttoptr i64 %".2140" to ptr
  %".2141" = load float, ptr %"for_LDG.114"
  %".2142" = bitcast ptr %"R43" to ptr
  store float %".2141", ptr %".2142"
  ; LDG.E.SYS R50, [R10+0x8]
  %".2145" = load i32, ptr %"R10"
  %"zext.236" = zext i32 %".2145" to i64
  %".2146" = load i32, ptr %"R11"
  %"zext.237" = zext i32 %".2146" to i64
  %"shl.125" = shl i64 %"zext.237", 32
  %"or.117" = or i64 %"shl.125", %"zext.236"
  %".2147" = inttoptr i64 %"or.117" to ptr
  %".2148" = ptrtoint ptr %".2147" to i64
  %".2149" = add i64 %".2148", 8
  %"for_LDG.115" = inttoptr i64 %".2149" to ptr
  %".2150" = load float, ptr %"for_LDG.115"
  %".2151" = bitcast ptr %"R50" to ptr
  store float %".2150", ptr %".2151"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".2154" = load i32, ptr %"R58"
  %".2155" = load i32, ptr %"R49"
  %"mul.43" = mul i32 %".2154", %".2155"
  %"add.115" = add i32 %"mul.43", %"Arg_4"
  store i32 %"add.115", ptr %"R14"
  ; LDG.E.SYS R18, [R12+0x8]
  %".2158" = load i32, ptr %"R12"
  %"zext.238" = zext i32 %".2158" to i64
  %".2159" = load i32, ptr %"R13"
  %"zext.239" = zext i32 %".2159" to i64
  %"shl.126" = shl i64 %"zext.239", 32
  %"or.118" = or i64 %"shl.126", %"zext.238"
  %".2160" = inttoptr i64 %"or.118" to ptr
  %".2161" = ptrtoint ptr %".2160" to i64
  %".2162" = add i64 %".2161", 8
  %"for_LDG.116" = inttoptr i64 %".2162" to ptr
  %".2163" = load float, ptr %"for_LDG.116"
  %".2164" = bitcast ptr %"R18" to ptr
  store float %".2163", ptr %".2164"
  ; LDG.E.SYS R56, [R10+0xc]
  %".2167" = load i32, ptr %"R10"
  %"zext.240" = zext i32 %".2167" to i64
  %".2168" = load i32, ptr %"R11"
  %"zext.241" = zext i32 %".2168" to i64
  %"shl.127" = shl i64 %"zext.241", 32
  %"or.119" = or i64 %"shl.127", %"zext.240"
  %".2169" = inttoptr i64 %"or.119" to ptr
  %".2170" = ptrtoint ptr %".2169" to i64
  %".2171" = add i64 %".2170", 12
  %"for_LDG.117" = inttoptr i64 %".2171" to ptr
  %".2172" = load float, ptr %"for_LDG.117"
  %".2173" = bitcast ptr %"R56" to ptr
  store float %".2172", ptr %".2173"
  ; LDG.E.SYS R55, [R12+0xc]
  %".2176" = load i32, ptr %"R12"
  %"zext.242" = zext i32 %".2176" to i64
  %".2177" = load i32, ptr %"R13"
  %"zext.243" = zext i32 %".2177" to i64
  %"shl.128" = shl i64 %"zext.243", 32
  %"or.120" = or i64 %"shl.128", %"zext.242"
  %".2178" = inttoptr i64 %"or.120" to ptr
  %".2179" = ptrtoint ptr %".2178" to i64
  %".2180" = add i64 %".2179", 12
  %"for_LDG.118" = inttoptr i64 %".2180" to ptr
  %".2181" = load float, ptr %"for_LDG.118"
  %".2182" = bitcast ptr %"R55" to ptr
  store float %".2181", ptr %".2182"
  ; LDG.E.SYS R51, [R16]
  %".2185" = load i32, ptr %"R16"
  %"zext.244" = zext i32 %".2185" to i64
  %".2186" = load i32, ptr %"R17"
  %"zext.245" = zext i32 %".2186" to i64
  %"shl.129" = shl i64 %"zext.245", 32
  %"or.121" = or i64 %"shl.129", %"zext.244"
  %".2187" = inttoptr i64 %"or.121" to ptr
  %".2188" = ptrtoint ptr %".2187" to i64
  %".2189" = add i64 %".2188", 0
  %"for_LDG.119" = inttoptr i64 %".2189" to ptr
  %".2190" = load float, ptr %"for_LDG.119"
  %".2191" = bitcast ptr %"R51" to ptr
  store float %".2190", ptr %".2191"
  ; LDG.E.SYS R53, [R14]
  %".2194" = load i32, ptr %"R14"
  %"zext.246" = zext i32 %".2194" to i64
  %".2195" = load i32, ptr %"R15"
  %"zext.247" = zext i32 %".2195" to i64
  %"shl.130" = shl i64 %"zext.247", 32
  %"or.122" = or i64 %"shl.130", %"zext.246"
  %".2196" = inttoptr i64 %"or.122" to ptr
  %".2197" = ptrtoint ptr %".2196" to i64
  %".2198" = add i64 %".2197", 0
  %"for_LDG.120" = inttoptr i64 %".2198" to ptr
  %".2199" = load float, ptr %"for_LDG.120"
  %".2200" = bitcast ptr %"R53" to ptr
  store float %".2199", ptr %".2200"
  ; LDG.E.SYS R60, [R16+0x4]
  %".2203" = load i32, ptr %"R16"
  %"zext.248" = zext i32 %".2203" to i64
  %".2204" = load i32, ptr %"R17"
  %"zext.249" = zext i32 %".2204" to i64
  %"shl.131" = shl i64 %"zext.249", 32
  %"or.123" = or i64 %"shl.131", %"zext.248"
  %".2205" = inttoptr i64 %"or.123" to ptr
  %".2206" = ptrtoint ptr %".2205" to i64
  %".2207" = add i64 %".2206", 4
  %"for_LDG.121" = inttoptr i64 %".2207" to ptr
  %".2208" = load float, ptr %"for_LDG.121"
  %".2209" = bitcast ptr %"R60" to ptr
  store float %".2208", ptr %".2209"
  ; LDG.E.SYS R49, [R14+0x4]
  %".2212" = load i32, ptr %"R14"
  %"zext.250" = zext i32 %".2212" to i64
  %".2213" = load i32, ptr %"R15"
  %"zext.251" = zext i32 %".2213" to i64
  %"shl.132" = shl i64 %"zext.251", 32
  %"or.124" = or i64 %"shl.132", %"zext.250"
  %".2214" = inttoptr i64 %"or.124" to ptr
  %".2215" = ptrtoint ptr %".2214" to i64
  %".2216" = add i64 %".2215", 4
  %"for_LDG.122" = inttoptr i64 %".2216" to ptr
  %".2217" = load float, ptr %"for_LDG.122"
  %".2218" = bitcast ptr %"R49" to ptr
  store float %".2217", ptr %".2218"
  ; LDG.E.SYS R58, [R16+0x8]
  %".2221" = load i32, ptr %"R16"
  %"zext.252" = zext i32 %".2221" to i64
  %".2222" = load i32, ptr %"R17"
  %"zext.253" = zext i32 %".2222" to i64
  %"shl.133" = shl i64 %"zext.253", 32
  %"or.125" = or i64 %"shl.133", %"zext.252"
  %".2223" = inttoptr i64 %"or.125" to ptr
  %".2224" = ptrtoint ptr %".2223" to i64
  %".2225" = add i64 %".2224", 8
  %"for_LDG.123" = inttoptr i64 %".2225" to ptr
  %".2226" = load float, ptr %"for_LDG.123"
  %".2227" = bitcast ptr %"R58" to ptr
  store float %".2226", ptr %".2227"
  ; LDG.E.SYS R19, [R14+0x8]
  %".2230" = load i32, ptr %"R14"
  %"zext.254" = zext i32 %".2230" to i64
  %".2231" = load i32, ptr %"R15"
  %"zext.255" = zext i32 %".2231" to i64
  %"shl.134" = shl i64 %"zext.255", 32
  %"or.126" = or i64 %"shl.134", %"zext.254"
  %".2232" = inttoptr i64 %"or.126" to ptr
  %".2233" = ptrtoint ptr %".2232" to i64
  %".2234" = add i64 %".2233", 8
  %"for_LDG.124" = inttoptr i64 %".2234" to ptr
  %".2235" = load float, ptr %"for_LDG.124"
  %".2236" = bitcast ptr %"R19" to ptr
  store float %".2235", ptr %".2236"
  ; LDG.E.SYS R57, [R16+0xc]
  %".2239" = load i32, ptr %"R16"
  %"zext.256" = zext i32 %".2239" to i64
  %".2240" = load i32, ptr %"R17"
  %"zext.257" = zext i32 %".2240" to i64
  %"shl.135" = shl i64 %"zext.257", 32
  %"or.127" = or i64 %"shl.135", %"zext.256"
  %".2241" = inttoptr i64 %"or.127" to ptr
  %".2242" = ptrtoint ptr %".2241" to i64
  %".2243" = add i64 %".2242", 12
  %"for_LDG.125" = inttoptr i64 %".2243" to ptr
  %".2244" = load float, ptr %"for_LDG.125"
  %".2245" = bitcast ptr %"R57" to ptr
  store float %".2244", ptr %".2245"
  ; LDG.E.SYS R59, [R14+0xc]
  %".2248" = load i32, ptr %"R14"
  %"zext.258" = zext i32 %".2248" to i64
  %".2249" = load i32, ptr %"R15"
  %"zext.259" = zext i32 %".2249" to i64
  %"shl.136" = shl i64 %"zext.259", 32
  %"or.128" = or i64 %"shl.136", %"zext.258"
  %".2250" = inttoptr i64 %"or.128" to ptr
  %".2251" = ptrtoint ptr %".2250" to i64
  %".2252" = add i64 %".2251", 12
  %"for_LDG.126" = inttoptr i64 %".2252" to ptr
  %".2253" = load float, ptr %"for_LDG.126"
  %".2254" = bitcast ptr %"R59" to ptr
  store float %".2253", ptr %".2254"
  ; IADD3 R23, R23, -0x10, RZ
  %".2257" = load i32, ptr %"R23"
  %"add.116" = add i32 %".2257", -16
  %"add.117" = add i32 %"add.116", 0
  store i32 %"add.117", ptr %"R23"
  ; IADD3 R22, R22, 0x10, RZ
  %".2260" = load i32, ptr %"R22"
  %"add.118" = add i32 %".2260", 16
  %"add.119" = add i32 %"add.118", 0
  store i32 %"add.119", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2263" = load i32, ptr %"R23"
  %".2264" = load i1, ptr %"PT"
  %"cmp.19" = icmp sgt i32 %".2263", 12
  %".2265" = and i1 %"cmp.19", %".2264"
  ; FMUL R24, R24, R9
  %".2267" = load float, ptr %"R24"
  %".2268" = load float, ptr %"R9"
  %"fmul.74" = fmul float %".2267", %".2268"
  %".2269" = bitcast ptr %"R24" to ptr
  store float %"fmul.74", ptr %".2269"
  ; FFMA R24, R24, R21, R8
  %".2272" = load float, ptr %"R24"
  %".2273" = load float, ptr %"R21"
  %".2274" = load float, ptr %"R8"
  %"fmul.75" = fmul float %".2272", %".2273"
  %"fadd.79" = fadd float %"fmul.75", %".2274"
  %".2275" = bitcast ptr %"R24" to ptr
  store float %"fadd.79", ptr %".2275"
  ; FMUL R36, R36, R9
  %".2278" = load float, ptr %"R36"
  %".2279" = load float, ptr %"R9"
  %"fmul.76" = fmul float %".2278", %".2279"
  %".2280" = bitcast ptr %"R36" to ptr
  store float %"fmul.76", ptr %".2280"
  ; FFMA R25, R36, R25, R24
  %".2283" = load float, ptr %"R36"
  %".2284" = load float, ptr %"R25"
  %".2285" = load float, ptr %"R24"
  %"fmul.77" = fmul float %".2283", %".2284"
  %"fadd.80" = fadd float %"fmul.77", %".2285"
  %".2286" = bitcast ptr %"R25" to ptr
  store float %"fadd.80", ptr %".2286"
  ; FMUL R46, R46, R9
  %".2289" = load float, ptr %"R46"
  %".2290" = load float, ptr %"R9"
  %"fmul.78" = fmul float %".2289", %".2290"
  %".2291" = bitcast ptr %"R46" to ptr
  store float %"fmul.78", ptr %".2291"
  ; FFMA R34, R46, R34, R25
  %".2294" = load float, ptr %"R46"
  %".2295" = load float, ptr %"R34"
  %".2296" = load float, ptr %"R25"
  %"fmul.79" = fmul float %".2294", %".2295"
  %"fadd.81" = fadd float %"fmul.79", %".2296"
  %".2297" = bitcast ptr %"R34" to ptr
  store float %"fadd.81", ptr %".2297"
  ; FMUL R44, R44, R9
  %".2300" = load float, ptr %"R44"
  %".2301" = load float, ptr %"R9"
  %"fmul.80" = fmul float %".2300", %".2301"
  %".2302" = bitcast ptr %"R44" to ptr
  store float %"fmul.80", ptr %".2302"
  ; FFMA R34, R44, R41, R34
  %".2305" = load float, ptr %"R44"
  %".2306" = load float, ptr %"R41"
  %".2307" = load float, ptr %"R34"
  %"fmul.81" = fmul float %".2305", %".2306"
  %"fadd.82" = fadd float %"fmul.81", %".2307"
  %".2308" = bitcast ptr %"R34" to ptr
  store float %"fadd.82", ptr %".2308"
  ; FMUL R42, R42, R9
  %".2311" = load float, ptr %"R42"
  %".2312" = load float, ptr %"R9"
  %"fmul.82" = fmul float %".2311", %".2312"
  %".2313" = bitcast ptr %"R42" to ptr
  store float %"fmul.82", ptr %".2313"
  ; FFMA R34, R42, R39, R34
  %".2316" = load float, ptr %"R42"
  %".2317" = load float, ptr %"R39"
  %".2318" = load float, ptr %"R34"
  %"fmul.83" = fmul float %".2316", %".2317"
  %"fadd.83" = fadd float %"fmul.83", %".2318"
  %".2319" = bitcast ptr %"R34" to ptr
  store float %"fadd.83", ptr %".2319"
  ; FMUL R40, R40, R9
  %".2322" = load float, ptr %"R40"
  %".2323" = load float, ptr %"R9"
  %"fmul.84" = fmul float %".2322", %".2323"
  %".2324" = bitcast ptr %"R40" to ptr
  store float %"fmul.84", ptr %".2324"
  ; FFMA R34, R40, R37, R34
  %".2327" = load float, ptr %"R40"
  %".2328" = load float, ptr %"R37"
  %".2329" = load float, ptr %"R34"
  %"fmul.85" = fmul float %".2327", %".2328"
  %"fadd.84" = fadd float %"fmul.85", %".2329"
  %".2330" = bitcast ptr %"R34" to ptr
  store float %"fadd.84", ptr %".2330"
  ; FMUL R38, R38, R9
  %".2333" = load float, ptr %"R38"
  %".2334" = load float, ptr %"R9"
  %"fmul.86" = fmul float %".2333", %".2334"
  %".2335" = bitcast ptr %"R38" to ptr
  store float %"fmul.86", ptr %".2335"
  ; FFMA R34, R38, R35, R34
  %".2338" = load float, ptr %"R38"
  %".2339" = load float, ptr %"R35"
  %".2340" = load float, ptr %"R34"
  %"fmul.87" = fmul float %".2338", %".2339"
  %"fadd.85" = fadd float %"fmul.87", %".2340"
  %".2341" = bitcast ptr %"R34" to ptr
  store float %"fadd.85", ptr %".2341"
  ; FMUL R48, R48, R9
  %".2344" = load float, ptr %"R48"
  %".2345" = load float, ptr %"R9"
  %"fmul.88" = fmul float %".2344", %".2345"
  %".2346" = bitcast ptr %"R48" to ptr
  store float %"fmul.88", ptr %".2346"
  ; FFMA R34, R48, R47, R34
  %".2349" = load float, ptr %"R48"
  %".2350" = load float, ptr %"R47"
  %".2351" = load float, ptr %"R34"
  %"fmul.89" = fmul float %".2349", %".2350"
  %"fadd.86" = fadd float %"fmul.89", %".2351"
  %".2352" = bitcast ptr %"R34" to ptr
  store float %"fadd.86", ptr %".2352"
  ; FMUL R54, R54, R9
  %".2355" = load float, ptr %"R54"
  %".2356" = load float, ptr %"R9"
  %"fmul.90" = fmul float %".2355", %".2356"
  %".2357" = bitcast ptr %"R54" to ptr
  store float %"fmul.90", ptr %".2357"
  ; FFMA R34, R54, R45, R34
  %".2360" = load float, ptr %"R54"
  %".2361" = load float, ptr %"R45"
  %".2362" = load float, ptr %"R34"
  %"fmul.91" = fmul float %".2360", %".2361"
  %"fadd.87" = fadd float %"fmul.91", %".2362"
  %".2363" = bitcast ptr %"R34" to ptr
  store float %"fadd.87", ptr %".2363"
  ; FMUL R52, R52, R9
  %".2366" = load float, ptr %"R52"
  %".2367" = load float, ptr %"R9"
  %"fmul.92" = fmul float %".2366", %".2367"
  %".2368" = bitcast ptr %"R52" to ptr
  store float %"fmul.92", ptr %".2368"
  ; FFMA R43, R52, R43, R34
  %".2371" = load float, ptr %"R52"
  %".2372" = load float, ptr %"R43"
  %".2373" = load float, ptr %"R34"
  %"fmul.93" = fmul float %".2371", %".2372"
  %"fadd.88" = fadd float %"fmul.93", %".2373"
  %".2374" = bitcast ptr %"R43" to ptr
  store float %"fadd.88", ptr %".2374"
  ; FMUL R50, R50, R9
  %".2377" = load float, ptr %"R50"
  %".2378" = load float, ptr %"R9"
  %"fmul.94" = fmul float %".2377", %".2378"
  %".2379" = bitcast ptr %"R50" to ptr
  store float %"fmul.94", ptr %".2379"
  ; FFMA R18, R50, R18, R43
  %".2382" = load float, ptr %"R50"
  %".2383" = load float, ptr %"R18"
  %".2384" = load float, ptr %"R43"
  %"fmul.95" = fmul float %".2382", %".2383"
  %"fadd.89" = fadd float %"fmul.95", %".2384"
  %".2385" = bitcast ptr %"R18" to ptr
  store float %"fadd.89", ptr %".2385"
  ; FMUL R56, R56, R9
  %".2388" = load float, ptr %"R56"
  %".2389" = load float, ptr %"R9"
  %"fmul.96" = fmul float %".2388", %".2389"
  %".2390" = bitcast ptr %"R56" to ptr
  store float %"fmul.96", ptr %".2390"
  ; FFMA R18, R56, R55, R18
  %".2393" = load float, ptr %"R56"
  %".2394" = load float, ptr %"R55"
  %".2395" = load float, ptr %"R18"
  %"fmul.97" = fmul float %".2393", %".2394"
  %"fadd.90" = fadd float %"fmul.97", %".2395"
  %".2396" = bitcast ptr %"R18" to ptr
  store float %"fadd.90", ptr %".2396"
  ; FMUL R51, R51, R9
  %".2399" = load float, ptr %"R51"
  %".2400" = load float, ptr %"R9"
  %"fmul.98" = fmul float %".2399", %".2400"
  %".2401" = bitcast ptr %"R51" to ptr
  store float %"fmul.98", ptr %".2401"
  ; FFMA R18, R51, R53, R18
  %".2404" = load float, ptr %"R51"
  %".2405" = load float, ptr %"R53"
  %".2406" = load float, ptr %"R18"
  %"fmul.99" = fmul float %".2404", %".2405"
  %"fadd.91" = fadd float %"fmul.99", %".2406"
  %".2407" = bitcast ptr %"R18" to ptr
  store float %"fadd.91", ptr %".2407"
  ; FMUL R60, R60, R9
  %".2410" = load float, ptr %"R60"
  %".2411" = load float, ptr %"R9"
  %"fmul.100" = fmul float %".2410", %".2411"
  %".2412" = bitcast ptr %"R60" to ptr
  store float %"fmul.100", ptr %".2412"
  ; FFMA R18, R60, R49, R18
  %".2415" = load float, ptr %"R60"
  %".2416" = load float, ptr %"R49"
  %".2417" = load float, ptr %"R18"
  %"fmul.101" = fmul float %".2415", %".2416"
  %"fadd.92" = fadd float %"fmul.101", %".2417"
  %".2418" = bitcast ptr %"R18" to ptr
  store float %"fadd.92", ptr %".2418"
  ; FMUL R58, R58, R9
  %".2421" = load float, ptr %"R58"
  %".2422" = load float, ptr %"R9"
  %"fmul.102" = fmul float %".2421", %".2422"
  %".2423" = bitcast ptr %"R58" to ptr
  store float %"fmul.102", ptr %".2423"
  ; FFMA R18, R58, R19, R18
  %".2426" = load float, ptr %"R58"
  %".2427" = load float, ptr %"R19"
  %".2428" = load float, ptr %"R18"
  %"fmul.103" = fmul float %".2426", %".2427"
  %"fadd.93" = fadd float %"fmul.103", %".2428"
  %".2429" = bitcast ptr %"R18" to ptr
  store float %"fadd.93", ptr %".2429"
  ; FMUL R57, R57, R9
  %".2432" = load float, ptr %"R57"
  %".2433" = load float, ptr %"R9"
  %"fmul.104" = fmul float %".2432", %".2433"
  %".2434" = bitcast ptr %"R57" to ptr
  store float %"fmul.104", ptr %".2434"
  ; FFMA R8, R57, R59, R18
  %".2437" = load float, ptr %"R57"
  %".2438" = load float, ptr %"R59"
  %".2439" = load float, ptr %"R18"
  %"fmul.105" = fmul float %".2437", %".2438"
  %"fadd.94" = fadd float %"fmul.105", %".2439"
  %".2440" = bitcast ptr %"R8" to ptr
  store float %"fadd.94", ptr %".2440"
  ; @P1 BRA `(.L_x_14)
  %".2443" = load i1, ptr %"P1"
  %".2444" = icmp ne i1 %".2443", 1
  br i1 %".2444", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".2447" = load i32, ptr %"R23"
  %".2448" = load i1, ptr %"PT"
  %"cmp.20" = icmp sgt i32 %".2447", 4
  %".2449" = and i1 %"cmp.20", %".2448"
  ; @!P1 BRA `(.L_x_15)
  %".2451" = load i1, ptr %"P1"
  %".2452" = icmp eq i1 %".2451", 1
  br i1 %".2452", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R16, R3, R22, RZ
  %".2457" = load i32, ptr %"R3"
  %".2458" = load i32, ptr %"R22"
  %"add.120" = add i32 %".2457", %".2458"
  %"add.121" = add i32 %"add.120", 0
  store i32 %"add.121", ptr %"R16"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".2461" = load i32, ptr %"R22"
  %".2462" = load i32, ptr %"R13"
  %"mul.44" = mul i32 %".2461", %".2462"
  %"add.122" = add i32 %"mul.44", %"Arg_3"
  store i32 %"add.122", ptr %"R14"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".2465" = load i32, ptr %"R16"
  %".2466" = load i32, ptr %"R13"
  %"mul.45" = mul i32 %".2465", %".2466"
  %"add.123" = add i32 %"mul.45", %"Arg_4"
  store i32 %"add.123", ptr %"R16"
  ; IADD3 R10, R22, 0x4, RZ
  %".2469" = load i32, ptr %"R22"
  %"add.124" = add i32 %".2469", 4
  %"add.125" = add i32 %"add.124", 0
  store i32 %"add.125", ptr %"R10"
  ; LDG.E.SYS R18, [R14]
  %".2472" = load i32, ptr %"R14"
  %"zext.260" = zext i32 %".2472" to i64
  %".2473" = load i32, ptr %"R15"
  %"zext.261" = zext i32 %".2473" to i64
  %"shl.137" = shl i64 %"zext.261", 32
  %"or.129" = or i64 %"shl.137", %"zext.260"
  %".2474" = inttoptr i64 %"or.129" to ptr
  %".2475" = ptrtoint ptr %".2474" to i64
  %".2476" = add i64 %".2475", 0
  %"for_LDG.127" = inttoptr i64 %".2476" to ptr
  %".2477" = load float, ptr %"for_LDG.127"
  %".2478" = bitcast ptr %"R18" to ptr
  store float %".2477", ptr %".2478"
  ; IADD3 R12, R3, R10, RZ
  %".2481" = load i32, ptr %"R3"
  %".2482" = load i32, ptr %"R10"
  %"add.126" = add i32 %".2481", %".2482"
  %"add.127" = add i32 %"add.126", 0
  store i32 %"add.127", ptr %"R12"
  ; LDG.E.SYS R19, [R16]
  %".2485" = load i32, ptr %"R16"
  %"zext.262" = zext i32 %".2485" to i64
  %".2486" = load i32, ptr %"R17"
  %"zext.263" = zext i32 %".2486" to i64
  %"shl.138" = shl i64 %"zext.263", 32
  %"or.130" = or i64 %"shl.138", %"zext.262"
  %".2487" = inttoptr i64 %"or.130" to ptr
  %".2488" = ptrtoint ptr %".2487" to i64
  %".2489" = add i64 %".2488", 0
  %"for_LDG.128" = inttoptr i64 %".2489" to ptr
  %".2490" = load float, ptr %"for_LDG.128"
  %".2491" = bitcast ptr %"R19" to ptr
  store float %".2490", ptr %".2491"
  ; LDG.E.SYS R24, [R14+0x4]
  %".2494" = load i32, ptr %"R14"
  %"zext.264" = zext i32 %".2494" to i64
  %".2495" = load i32, ptr %"R15"
  %"zext.265" = zext i32 %".2495" to i64
  %"shl.139" = shl i64 %"zext.265", 32
  %"or.131" = or i64 %"shl.139", %"zext.264"
  %".2496" = inttoptr i64 %"or.131" to ptr
  %".2497" = ptrtoint ptr %".2496" to i64
  %".2498" = add i64 %".2497", 4
  %"for_LDG.129" = inttoptr i64 %".2498" to ptr
  %".2499" = load float, ptr %"for_LDG.129"
  %".2500" = bitcast ptr %"R24" to ptr
  store float %".2499", ptr %".2500"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".2503" = load i32, ptr %"R10"
  %".2504" = load i32, ptr %"R13"
  %"mul.46" = mul i32 %".2503", %".2504"
  %"add.128" = add i32 %"mul.46", %"Arg_3"
  store i32 %"add.128", ptr %"R10"
  ; LDG.E.SYS R21, [R16+0x4]
  %".2507" = load i32, ptr %"R16"
  %"zext.266" = zext i32 %".2507" to i64
  %".2508" = load i32, ptr %"R17"
  %"zext.267" = zext i32 %".2508" to i64
  %"shl.140" = shl i64 %"zext.267", 32
  %"or.132" = or i64 %"shl.140", %"zext.266"
  %".2509" = inttoptr i64 %"or.132" to ptr
  %".2510" = ptrtoint ptr %".2509" to i64
  %".2511" = add i64 %".2510", 4
  %"for_LDG.130" = inttoptr i64 %".2511" to ptr
  %".2512" = load float, ptr %"for_LDG.130"
  %".2513" = bitcast ptr %"R21" to ptr
  store float %".2512", ptr %".2513"
  ; LDG.E.SYS R34, [R14+0x8]
  %".2516" = load i32, ptr %"R14"
  %"zext.268" = zext i32 %".2516" to i64
  %".2517" = load i32, ptr %"R15"
  %"zext.269" = zext i32 %".2517" to i64
  %"shl.141" = shl i64 %"zext.269", 32
  %"or.133" = or i64 %"shl.141", %"zext.268"
  %".2518" = inttoptr i64 %"or.133" to ptr
  %".2519" = ptrtoint ptr %".2518" to i64
  %".2520" = add i64 %".2519", 8
  %"for_LDG.131" = inttoptr i64 %".2520" to ptr
  %".2521" = load float, ptr %"for_LDG.131"
  %".2522" = bitcast ptr %"R34" to ptr
  store float %".2521", ptr %".2522"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2525" = load i32, ptr %"R12"
  %".2526" = load i32, ptr %"R13"
  %"mul.47" = mul i32 %".2525", %".2526"
  %"add.129" = add i32 %"mul.47", %"Arg_4"
  store i32 %"add.129", ptr %"R12"
  ; LDG.E.SYS R25, [R16+0x8]
  %".2529" = load i32, ptr %"R16"
  %"zext.270" = zext i32 %".2529" to i64
  %".2530" = load i32, ptr %"R17"
  %"zext.271" = zext i32 %".2530" to i64
  %"shl.142" = shl i64 %"zext.271", 32
  %"or.134" = or i64 %"shl.142", %"zext.270"
  %".2531" = inttoptr i64 %"or.134" to ptr
  %".2532" = ptrtoint ptr %".2531" to i64
  %".2533" = add i64 %".2532", 8
  %"for_LDG.132" = inttoptr i64 %".2533" to ptr
  %".2534" = load float, ptr %"for_LDG.132"
  %".2535" = bitcast ptr %"R25" to ptr
  store float %".2534", ptr %".2535"
  ; LDG.E.SYS R36, [R14+0xc]
  %".2538" = load i32, ptr %"R14"
  %"zext.272" = zext i32 %".2538" to i64
  %".2539" = load i32, ptr %"R15"
  %"zext.273" = zext i32 %".2539" to i64
  %"shl.143" = shl i64 %"zext.273", 32
  %"or.135" = or i64 %"shl.143", %"zext.272"
  %".2540" = inttoptr i64 %"or.135" to ptr
  %".2541" = ptrtoint ptr %".2540" to i64
  %".2542" = add i64 %".2541", 12
  %"for_LDG.133" = inttoptr i64 %".2542" to ptr
  %".2543" = load float, ptr %"for_LDG.133"
  %".2544" = bitcast ptr %"R36" to ptr
  store float %".2543", ptr %".2544"
  ; LDG.E.SYS R35, [R16+0xc]
  %".2547" = load i32, ptr %"R16"
  %"zext.274" = zext i32 %".2547" to i64
  %".2548" = load i32, ptr %"R17"
  %"zext.275" = zext i32 %".2548" to i64
  %"shl.144" = shl i64 %"zext.275", 32
  %"or.136" = or i64 %"shl.144", %"zext.274"
  %".2549" = inttoptr i64 %"or.136" to ptr
  %".2550" = ptrtoint ptr %".2549" to i64
  %".2551" = add i64 %".2550", 12
  %"for_LDG.134" = inttoptr i64 %".2551" to ptr
  %".2552" = load float, ptr %"for_LDG.134"
  %".2553" = bitcast ptr %"R35" to ptr
  store float %".2552", ptr %".2553"
  ; LDG.E.SYS R38, [R10]
  %".2556" = load i32, ptr %"R10"
  %"zext.276" = zext i32 %".2556" to i64
  %".2557" = load i32, ptr %"R11"
  %"zext.277" = zext i32 %".2557" to i64
  %"shl.145" = shl i64 %"zext.277", 32
  %"or.137" = or i64 %"shl.145", %"zext.276"
  %".2558" = inttoptr i64 %"or.137" to ptr
  %".2559" = ptrtoint ptr %".2558" to i64
  %".2560" = add i64 %".2559", 0
  %"for_LDG.135" = inttoptr i64 %".2560" to ptr
  %".2561" = load float, ptr %"for_LDG.135"
  %".2562" = bitcast ptr %"R38" to ptr
  store float %".2561", ptr %".2562"
  ; LDG.E.SYS R37, [R12]
  %".2565" = load i32, ptr %"R12"
  %"zext.278" = zext i32 %".2565" to i64
  %".2566" = load i32, ptr %"R13"
  %"zext.279" = zext i32 %".2566" to i64
  %"shl.146" = shl i64 %"zext.279", 32
  %"or.138" = or i64 %"shl.146", %"zext.278"
  %".2567" = inttoptr i64 %"or.138" to ptr
  %".2568" = ptrtoint ptr %".2567" to i64
  %".2569" = add i64 %".2568", 0
  %"for_LDG.136" = inttoptr i64 %".2569" to ptr
  %".2570" = load float, ptr %"for_LDG.136"
  %".2571" = bitcast ptr %"R37" to ptr
  store float %".2570", ptr %".2571"
  ; LDG.E.SYS R40, [R10+0x4]
  %".2574" = load i32, ptr %"R10"
  %"zext.280" = zext i32 %".2574" to i64
  %".2575" = load i32, ptr %"R11"
  %"zext.281" = zext i32 %".2575" to i64
  %"shl.147" = shl i64 %"zext.281", 32
  %"or.139" = or i64 %"shl.147", %"zext.280"
  %".2576" = inttoptr i64 %"or.139" to ptr
  %".2577" = ptrtoint ptr %".2576" to i64
  %".2578" = add i64 %".2577", 4
  %"for_LDG.137" = inttoptr i64 %".2578" to ptr
  %".2579" = load float, ptr %"for_LDG.137"
  %".2580" = bitcast ptr %"R40" to ptr
  store float %".2579", ptr %".2580"
  ; LDG.E.SYS R39, [R12+0x4]
  %".2583" = load i32, ptr %"R12"
  %"zext.282" = zext i32 %".2583" to i64
  %".2584" = load i32, ptr %"R13"
  %"zext.283" = zext i32 %".2584" to i64
  %"shl.148" = shl i64 %"zext.283", 32
  %"or.140" = or i64 %"shl.148", %"zext.282"
  %".2585" = inttoptr i64 %"or.140" to ptr
  %".2586" = ptrtoint ptr %".2585" to i64
  %".2587" = add i64 %".2586", 4
  %"for_LDG.138" = inttoptr i64 %".2587" to ptr
  %".2588" = load float, ptr %"for_LDG.138"
  %".2589" = bitcast ptr %"R39" to ptr
  store float %".2588", ptr %".2589"
  ; LDG.E.SYS R42, [R10+0x8]
  %".2592" = load i32, ptr %"R10"
  %"zext.284" = zext i32 %".2592" to i64
  %".2593" = load i32, ptr %"R11"
  %"zext.285" = zext i32 %".2593" to i64
  %"shl.149" = shl i64 %"zext.285", 32
  %"or.141" = or i64 %"shl.149", %"zext.284"
  %".2594" = inttoptr i64 %"or.141" to ptr
  %".2595" = ptrtoint ptr %".2594" to i64
  %".2596" = add i64 %".2595", 8
  %"for_LDG.139" = inttoptr i64 %".2596" to ptr
  %".2597" = load float, ptr %"for_LDG.139"
  %".2598" = bitcast ptr %"R42" to ptr
  store float %".2597", ptr %".2598"
  ; LDG.E.SYS R44, [R10+0xc]
  %".2601" = load i32, ptr %"R10"
  %"zext.286" = zext i32 %".2601" to i64
  %".2602" = load i32, ptr %"R11"
  %"zext.287" = zext i32 %".2602" to i64
  %"shl.150" = shl i64 %"zext.287", 32
  %"or.142" = or i64 %"shl.150", %"zext.286"
  %".2603" = inttoptr i64 %"or.142" to ptr
  %".2604" = ptrtoint ptr %".2603" to i64
  %".2605" = add i64 %".2604", 12
  %"for_LDG.140" = inttoptr i64 %".2605" to ptr
  %".2606" = load float, ptr %"for_LDG.140"
  %".2607" = bitcast ptr %"R44" to ptr
  store float %".2606", ptr %".2607"
  ; LDG.E.SYS R41, [R12+0x8]
  %".2610" = load i32, ptr %"R12"
  %"zext.288" = zext i32 %".2610" to i64
  %".2611" = load i32, ptr %"R13"
  %"zext.289" = zext i32 %".2611" to i64
  %"shl.151" = shl i64 %"zext.289", 32
  %"or.143" = or i64 %"shl.151", %"zext.288"
  %".2612" = inttoptr i64 %"or.143" to ptr
  %".2613" = ptrtoint ptr %".2612" to i64
  %".2614" = add i64 %".2613", 8
  %"for_LDG.141" = inttoptr i64 %".2614" to ptr
  %".2615" = load float, ptr %"for_LDG.141"
  %".2616" = bitcast ptr %"R41" to ptr
  store float %".2615", ptr %".2616"
  ; LDG.E.SYS R43, [R12+0xc]
  %".2619" = load i32, ptr %"R12"
  %"zext.290" = zext i32 %".2619" to i64
  %".2620" = load i32, ptr %"R13"
  %"zext.291" = zext i32 %".2620" to i64
  %"shl.152" = shl i64 %"zext.291", 32
  %"or.144" = or i64 %"shl.152", %"zext.290"
  %".2621" = inttoptr i64 %"or.144" to ptr
  %".2622" = ptrtoint ptr %".2621" to i64
  %".2623" = add i64 %".2622", 12
  %"for_LDG.142" = inttoptr i64 %".2623" to ptr
  %".2624" = load float, ptr %"for_LDG.142"
  %".2625" = bitcast ptr %"R43" to ptr
  store float %".2624", ptr %".2625"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2628" = xor i1 1, 1
  %".2629" = and i1 %".2628", 1
  %".2630" = and i1 %".2629", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".2632" = load i32, ptr %"R23"
  %"add.130" = add i32 %".2632", -8
  %"add.131" = add i32 %"add.130", 0
  store i32 %"add.131", ptr %"R23"
  ; IADD3 R22, R22, 0x8, RZ
  %".2635" = load i32, ptr %"R22"
  %"add.132" = add i32 %".2635", 8
  %"add.133" = add i32 %"add.132", 0
  store i32 %"add.133", ptr %"R22"
  ; FMUL R15, R18, R9
  %".2638" = load float, ptr %"R18"
  %".2639" = load float, ptr %"R9"
  %"fmul.106" = fmul float %".2638", %".2639"
  %".2640" = bitcast ptr %"R15" to ptr
  store float %"fmul.106", ptr %".2640"
  ; FFMA R15, R15, R19, R8
  %".2643" = load float, ptr %"R15"
  %".2644" = load float, ptr %"R19"
  %".2645" = load float, ptr %"R8"
  %"fmul.107" = fmul float %".2643", %".2644"
  %"fadd.95" = fadd float %"fmul.107", %".2645"
  %".2646" = bitcast ptr %"R15" to ptr
  store float %"fadd.95", ptr %".2646"
  ; FMUL R24, R24, R9
  %".2649" = load float, ptr %"R24"
  %".2650" = load float, ptr %"R9"
  %"fmul.108" = fmul float %".2649", %".2650"
  %".2651" = bitcast ptr %"R24" to ptr
  store float %"fmul.108", ptr %".2651"
  ; FFMA R15, R24, R21, R15
  %".2654" = load float, ptr %"R24"
  %".2655" = load float, ptr %"R21"
  %".2656" = load float, ptr %"R15"
  %"fmul.109" = fmul float %".2654", %".2655"
  %"fadd.96" = fadd float %"fmul.109", %".2656"
  %".2657" = bitcast ptr %"R15" to ptr
  store float %"fadd.96", ptr %".2657"
  ; FMUL R34, R34, R9
  %".2660" = load float, ptr %"R34"
  %".2661" = load float, ptr %"R9"
  %"fmul.110" = fmul float %".2660", %".2661"
  %".2662" = bitcast ptr %"R34" to ptr
  store float %"fmul.110", ptr %".2662"
  ; FFMA R15, R34, R25, R15
  %".2665" = load float, ptr %"R34"
  %".2666" = load float, ptr %"R25"
  %".2667" = load float, ptr %"R15"
  %"fmul.111" = fmul float %".2665", %".2666"
  %"fadd.97" = fadd float %"fmul.111", %".2667"
  %".2668" = bitcast ptr %"R15" to ptr
  store float %"fadd.97", ptr %".2668"
  ; FMUL R36, R36, R9
  %".2671" = load float, ptr %"R36"
  %".2672" = load float, ptr %"R9"
  %"fmul.112" = fmul float %".2671", %".2672"
  %".2673" = bitcast ptr %"R36" to ptr
  store float %"fmul.112", ptr %".2673"
  ; FFMA R15, R36, R35, R15
  %".2676" = load float, ptr %"R36"
  %".2677" = load float, ptr %"R35"
  %".2678" = load float, ptr %"R15"
  %"fmul.113" = fmul float %".2676", %".2677"
  %"fadd.98" = fadd float %"fmul.113", %".2678"
  %".2679" = bitcast ptr %"R15" to ptr
  store float %"fadd.98", ptr %".2679"
  ; FMUL R38, R38, R9
  %".2682" = load float, ptr %"R38"
  %".2683" = load float, ptr %"R9"
  %"fmul.114" = fmul float %".2682", %".2683"
  %".2684" = bitcast ptr %"R38" to ptr
  store float %"fmul.114", ptr %".2684"
  ; FFMA R15, R38, R37, R15
  %".2687" = load float, ptr %"R38"
  %".2688" = load float, ptr %"R37"
  %".2689" = load float, ptr %"R15"
  %"fmul.115" = fmul float %".2687", %".2688"
  %"fadd.99" = fadd float %"fmul.115", %".2689"
  %".2690" = bitcast ptr %"R15" to ptr
  store float %"fadd.99", ptr %".2690"
  ; FMUL R40, R40, R9
  %".2693" = load float, ptr %"R40"
  %".2694" = load float, ptr %"R9"
  %"fmul.116" = fmul float %".2693", %".2694"
  %".2695" = bitcast ptr %"R40" to ptr
  store float %"fmul.116", ptr %".2695"
  ; FFMA R15, R40, R39, R15
  %".2698" = load float, ptr %"R40"
  %".2699" = load float, ptr %"R39"
  %".2700" = load float, ptr %"R15"
  %"fmul.117" = fmul float %".2698", %".2699"
  %"fadd.100" = fadd float %"fmul.117", %".2700"
  %".2701" = bitcast ptr %"R15" to ptr
  store float %"fadd.100", ptr %".2701"
  ; FMUL R42, R42, R9.reuse
  %".2704" = load float, ptr %"R42"
  %".2705" = load float, ptr %"R9"
  %"fmul.118" = fmul float %".2704", %".2705"
  %".2706" = bitcast ptr %"R42" to ptr
  store float %"fmul.118", ptr %".2706"
  ; FMUL R44, R44, R9
  %".2709" = load float, ptr %"R44"
  %".2710" = load float, ptr %"R9"
  %"fmul.119" = fmul float %".2709", %".2710"
  %".2711" = bitcast ptr %"R44" to ptr
  store float %"fmul.119", ptr %".2711"
  ; FFMA R15, R42, R41, R15
  %".2714" = load float, ptr %"R42"
  %".2715" = load float, ptr %"R41"
  %".2716" = load float, ptr %"R15"
  %"fmul.120" = fmul float %".2714", %".2715"
  %"fadd.101" = fadd float %"fmul.120", %".2716"
  %".2717" = bitcast ptr %"R15" to ptr
  store float %"fadd.101", ptr %".2717"
  ; FFMA R8, R44, R43, R15
  %".2720" = load float, ptr %"R44"
  %".2721" = load float, ptr %"R43"
  %".2722" = load float, ptr %"R15"
  %"fmul.121" = fmul float %".2720", %".2721"
  %"fadd.102" = fadd float %"fmul.121", %".2722"
  %".2723" = bitcast ptr %"R8" to ptr
  store float %"fadd.102", ptr %".2723"
  br label %".L_x_15"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".2727" = load i32, ptr %"R23"
  %".2728" = load i1, ptr %"PT"
  %"cmp.21" = icmp ne i32 %".2727", 0
  %".2729" = or i1 %"cmp.21", %".2728"
  ; @!P0 BRA `(.L_x_11)
  %".2731" = load i1, ptr %"P0"
  %".2732" = icmp eq i1 %".2731", 1
  br i1 %".2732", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R12, R3, R22, RZ
  %".2737" = load i32, ptr %"R3"
  %".2738" = load i32, ptr %"R22"
  %"add.134" = add i32 %".2737", %".2738"
  %"add.135" = add i32 %"add.134", 0
  store i32 %"add.135", ptr %"R12"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".2741" = load i32, ptr %"R22"
  %".2742" = load i32, ptr %"R13"
  %"mul.48" = mul i32 %".2741", %".2742"
  %"add.136" = add i32 %"mul.48", %"Arg_3"
  store i32 %"add.136", ptr %"R10"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2745" = load i32, ptr %"R12"
  %".2746" = load i32, ptr %"R13"
  %"mul.49" = mul i32 %".2745", %".2746"
  %"add.137" = add i32 %"mul.49", %"Arg_4"
  store i32 %"add.137", ptr %"R12"
  ; LDG.E.SYS R14, [R10]
  %".2749" = load i32, ptr %"R10"
  %"zext.292" = zext i32 %".2749" to i64
  %".2750" = load i32, ptr %"R11"
  %"zext.293" = zext i32 %".2750" to i64
  %"shl.153" = shl i64 %"zext.293", 32
  %"or.145" = or i64 %"shl.153", %"zext.292"
  %".2751" = inttoptr i64 %"or.145" to ptr
  %".2752" = ptrtoint ptr %".2751" to i64
  %".2753" = add i64 %".2752", 0
  %"for_LDG.143" = inttoptr i64 %".2753" to ptr
  %".2754" = load float, ptr %"for_LDG.143"
  %".2755" = bitcast ptr %"R14" to ptr
  store float %".2754", ptr %".2755"
  ; LDG.E.SYS R16, [R12]
  %".2758" = load i32, ptr %"R12"
  %"zext.294" = zext i32 %".2758" to i64
  %".2759" = load i32, ptr %"R13"
  %"zext.295" = zext i32 %".2759" to i64
  %"shl.154" = shl i64 %"zext.295", 32
  %"or.146" = or i64 %"shl.154", %"zext.294"
  %".2760" = inttoptr i64 %"or.146" to ptr
  %".2761" = ptrtoint ptr %".2760" to i64
  %".2762" = add i64 %".2761", 0
  %"for_LDG.144" = inttoptr i64 %".2762" to ptr
  %".2763" = load float, ptr %"for_LDG.144"
  %".2764" = bitcast ptr %"R16" to ptr
  store float %".2763", ptr %".2764"
  ; LDG.E.SYS R18, [R10+0x4]
  %".2767" = load i32, ptr %"R10"
  %"zext.296" = zext i32 %".2767" to i64
  %".2768" = load i32, ptr %"R11"
  %"zext.297" = zext i32 %".2768" to i64
  %"shl.155" = shl i64 %"zext.297", 32
  %"or.147" = or i64 %"shl.155", %"zext.296"
  %".2769" = inttoptr i64 %"or.147" to ptr
  %".2770" = ptrtoint ptr %".2769" to i64
  %".2771" = add i64 %".2770", 4
  %"for_LDG.145" = inttoptr i64 %".2771" to ptr
  %".2772" = load float, ptr %"for_LDG.145"
  %".2773" = bitcast ptr %"R18" to ptr
  store float %".2772", ptr %".2773"
  ; LDG.E.SYS R17, [R12+0x4]
  %".2776" = load i32, ptr %"R12"
  %"zext.298" = zext i32 %".2776" to i64
  %".2777" = load i32, ptr %"R13"
  %"zext.299" = zext i32 %".2777" to i64
  %"shl.156" = shl i64 %"zext.299", 32
  %"or.148" = or i64 %"shl.156", %"zext.298"
  %".2778" = inttoptr i64 %"or.148" to ptr
  %".2779" = ptrtoint ptr %".2778" to i64
  %".2780" = add i64 %".2779", 4
  %"for_LDG.146" = inttoptr i64 %".2780" to ptr
  %".2781" = load float, ptr %"for_LDG.146"
  %".2782" = bitcast ptr %"R17" to ptr
  store float %".2781", ptr %".2782"
  ; LDG.E.SYS R24, [R10+0x8]
  %".2785" = load i32, ptr %"R10"
  %"zext.300" = zext i32 %".2785" to i64
  %".2786" = load i32, ptr %"R11"
  %"zext.301" = zext i32 %".2786" to i64
  %"shl.157" = shl i64 %"zext.301", 32
  %"or.149" = or i64 %"shl.157", %"zext.300"
  %".2787" = inttoptr i64 %"or.149" to ptr
  %".2788" = ptrtoint ptr %".2787" to i64
  %".2789" = add i64 %".2788", 8
  %"for_LDG.147" = inttoptr i64 %".2789" to ptr
  %".2790" = load float, ptr %"for_LDG.147"
  %".2791" = bitcast ptr %"R24" to ptr
  store float %".2790", ptr %".2791"
  ; LDG.E.SYS R19, [R12+0x8]
  %".2794" = load i32, ptr %"R12"
  %"zext.302" = zext i32 %".2794" to i64
  %".2795" = load i32, ptr %"R13"
  %"zext.303" = zext i32 %".2795" to i64
  %"shl.158" = shl i64 %"zext.303", 32
  %"or.150" = or i64 %"shl.158", %"zext.302"
  %".2796" = inttoptr i64 %"or.150" to ptr
  %".2797" = ptrtoint ptr %".2796" to i64
  %".2798" = add i64 %".2797", 8
  %"for_LDG.148" = inttoptr i64 %".2798" to ptr
  %".2799" = load float, ptr %"for_LDG.148"
  %".2800" = bitcast ptr %"R19" to ptr
  store float %".2799", ptr %".2800"
  ; LDG.E.SYS R34, [R10+0xc]
  %".2803" = load i32, ptr %"R10"
  %"zext.304" = zext i32 %".2803" to i64
  %".2804" = load i32, ptr %"R11"
  %"zext.305" = zext i32 %".2804" to i64
  %"shl.159" = shl i64 %"zext.305", 32
  %"or.151" = or i64 %"shl.159", %"zext.304"
  %".2805" = inttoptr i64 %"or.151" to ptr
  %".2806" = ptrtoint ptr %".2805" to i64
  %".2807" = add i64 %".2806", 12
  %"for_LDG.149" = inttoptr i64 %".2807" to ptr
  %".2808" = load float, ptr %"for_LDG.149"
  %".2809" = bitcast ptr %"R34" to ptr
  store float %".2808", ptr %".2809"
  ; LDG.E.SYS R21, [R12+0xc]
  %".2812" = load i32, ptr %"R12"
  %"zext.306" = zext i32 %".2812" to i64
  %".2813" = load i32, ptr %"R13"
  %"zext.307" = zext i32 %".2813" to i64
  %"shl.160" = shl i64 %"zext.307", 32
  %"or.152" = or i64 %"shl.160", %"zext.306"
  %".2814" = inttoptr i64 %"or.152" to ptr
  %".2815" = ptrtoint ptr %".2814" to i64
  %".2816" = add i64 %".2815", 12
  %"for_LDG.150" = inttoptr i64 %".2816" to ptr
  %".2817" = load float, ptr %"for_LDG.150"
  %".2818" = bitcast ptr %"R21" to ptr
  store float %".2817", ptr %".2818"
  ; IADD3 R23, R23, -0x4, RZ
  %".2821" = load i32, ptr %"R23"
  %"add.138" = add i32 %".2821", -4
  %"add.139" = add i32 %"add.138", 0
  store i32 %"add.139", ptr %"R23"
  ; IADD3 R22, R22, 0x4, RZ
  %".2824" = load i32, ptr %"R22"
  %"add.140" = add i32 %".2824", 4
  %"add.141" = add i32 %"add.140", 0
  store i32 %"add.141", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".2827" = load i32, ptr %"R23"
  %".2828" = load i1, ptr %"PT"
  %"cmp.22" = icmp ne i32 %".2827", 0
  %".2829" = and i1 %"cmp.22", %".2828"
  ; FMUL R15, R14, R9
  %".2831" = load float, ptr %"R14"
  %".2832" = load float, ptr %"R9"
  %"fmul.122" = fmul float %".2831", %".2832"
  %".2833" = bitcast ptr %"R15" to ptr
  store float %"fmul.122", ptr %".2833"
  ; FFMA R15, R15, R16, R8
  %".2836" = load float, ptr %"R15"
  %".2837" = load float, ptr %"R16"
  %".2838" = load float, ptr %"R8"
  %"fmul.123" = fmul float %".2836", %".2837"
  %"fadd.103" = fadd float %"fmul.123", %".2838"
  %".2839" = bitcast ptr %"R15" to ptr
  store float %"fadd.103", ptr %".2839"
  ; FMUL R18, R18, R9
  %".2842" = load float, ptr %"R18"
  %".2843" = load float, ptr %"R9"
  %"fmul.124" = fmul float %".2842", %".2843"
  %".2844" = bitcast ptr %"R18" to ptr
  store float %"fmul.124", ptr %".2844"
  ; FFMA R15, R18, R17, R15
  %".2847" = load float, ptr %"R18"
  %".2848" = load float, ptr %"R17"
  %".2849" = load float, ptr %"R15"
  %"fmul.125" = fmul float %".2847", %".2848"
  %"fadd.104" = fadd float %"fmul.125", %".2849"
  %".2850" = bitcast ptr %"R15" to ptr
  store float %"fadd.104", ptr %".2850"
  ; FMUL R24, R24, R9
  %".2853" = load float, ptr %"R24"
  %".2854" = load float, ptr %"R9"
  %"fmul.126" = fmul float %".2853", %".2854"
  %".2855" = bitcast ptr %"R24" to ptr
  store float %"fmul.126", ptr %".2855"
  ; FFMA R15, R24, R19, R15
  %".2858" = load float, ptr %"R24"
  %".2859" = load float, ptr %"R19"
  %".2860" = load float, ptr %"R15"
  %"fmul.127" = fmul float %".2858", %".2859"
  %"fadd.105" = fadd float %"fmul.127", %".2860"
  %".2861" = bitcast ptr %"R15" to ptr
  store float %"fadd.105", ptr %".2861"
  ; FMUL R34, R34, R9
  %".2864" = load float, ptr %"R34"
  %".2865" = load float, ptr %"R9"
  %"fmul.128" = fmul float %".2864", %".2865"
  %".2866" = bitcast ptr %"R34" to ptr
  store float %"fmul.128", ptr %".2866"
  ; FFMA R8, R34, R21, R15
  %".2869" = load float, ptr %"R34"
  %".2870" = load float, ptr %"R21"
  %".2871" = load float, ptr %"R15"
  %"fmul.129" = fmul float %".2869", %".2870"
  %"fadd.106" = fadd float %"fmul.129", %".2871"
  %".2872" = bitcast ptr %"R8" to ptr
  store float %"fadd.106", ptr %".2872"
  ; @P0 BRA `(.L_x_12)
  %".2875" = load i1, ptr %"P0"
  %".2876" = icmp ne i1 %".2875", 1
  br i1 %".2876", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".2879" = load i32, ptr %"R4"
  %".2880" = load i1, ptr %"PT"
  %"cmp.23" = icmp ne i32 %".2879", 0
  %".2881" = and i1 %"cmp.23", %".2880"
  ; @!P0 BRA `(.L_x_10)
  %".2883" = load i1, ptr %"P0"
  %".2884" = icmp eq i1 %".2883", 1
  br i1 %".2884", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R10, R3, R22, RZ
  %".2889" = load i32, ptr %"R3"
  %".2890" = load i32, ptr %"R22"
  %"add.142" = add i32 %".2889", %".2890"
  %"add.143" = add i32 %"add.142", 0
  store i32 %"add.143", ptr %"R10"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".2893" = load i32, ptr %"R22"
  %".2894" = load i32, ptr %"R11"
  %"mul.50" = mul i32 %".2893", %".2894"
  %"add.144" = add i32 %"mul.50", %"Arg_3"
  store i32 %"add.144", ptr %"R22"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".2897" = load i32, ptr %"R10"
  %".2898" = load i32, ptr %"R11"
  %"mul.51" = mul i32 %".2897", %".2898"
  %"add.145" = add i32 %"mul.51", %"Arg_4"
  store i32 %"add.145", ptr %"R10"
  ; LDG.E.SYS R12, [R22]
  %".2901" = load i32, ptr %"R22"
  %"zext.308" = zext i32 %".2901" to i64
  %".2902" = load i32, ptr %"R23"
  %"zext.309" = zext i32 %".2902" to i64
  %"shl.161" = shl i64 %"zext.309", 32
  %"or.153" = or i64 %"shl.161", %"zext.308"
  %".2903" = inttoptr i64 %"or.153" to ptr
  %".2904" = ptrtoint ptr %".2903" to i64
  %".2905" = add i64 %".2904", 0
  %"for_LDG.151" = inttoptr i64 %".2905" to ptr
  %".2906" = load float, ptr %"for_LDG.151"
  %".2907" = bitcast ptr %"R12" to ptr
  store float %".2906", ptr %".2907"
  ; LDG.E.SYS R14, [R10]
  %".2910" = load i32, ptr %"R10"
  %"zext.310" = zext i32 %".2910" to i64
  %".2911" = load i32, ptr %"R11"
  %"zext.311" = zext i32 %".2911" to i64
  %"shl.162" = shl i64 %"zext.311", 32
  %"or.154" = or i64 %"shl.162", %"zext.310"
  %".2912" = inttoptr i64 %"or.154" to ptr
  %".2913" = ptrtoint ptr %".2912" to i64
  %".2914" = add i64 %".2913", 0
  %"for_LDG.152" = inttoptr i64 %".2914" to ptr
  %".2915" = load float, ptr %"for_LDG.152"
  %".2916" = bitcast ptr %"R14" to ptr
  store float %".2915", ptr %".2916"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".2919" = load i32, ptr %"R4"
  %".2920" = load i1, ptr %"PT"
  %"cmp.24" = icmp ne i32 %".2919", 1
  %".2921" = and i1 %"cmp.24", %".2920"
  ; FMUL R13, R12, R9
  %".2923" = load float, ptr %"R12"
  %".2924" = load float, ptr %"R9"
  %"fmul.130" = fmul float %".2923", %".2924"
  %".2925" = bitcast ptr %"R13" to ptr
  store float %"fmul.130", ptr %".2925"
  ; FFMA R8, R13, R14, R8
  %".2928" = load float, ptr %"R13"
  %".2929" = load float, ptr %"R14"
  %".2930" = load float, ptr %"R8"
  %"fmul.131" = fmul float %".2928", %".2929"
  %"fadd.107" = fadd float %"fmul.131", %".2930"
  %".2931" = bitcast ptr %"R8" to ptr
  store float %"fadd.107", ptr %".2931"
  ; @!P0 BRA `(.L_x_10)
  %".2934" = load i1, ptr %"P0"
  %".2935" = icmp eq i1 %".2934", 1
  br i1 %".2935", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".2938" = load i32, ptr %"R4"
  %".2939" = load i1, ptr %"PT"
  %"cmp.25" = icmp ne i32 %".2938", 2
  %".2940" = and i1 %"cmp.25", %".2939"
  ; LDG.E.SYS R12, [R22+0x4]
  %".2942" = load i32, ptr %"R22"
  %"zext.312" = zext i32 %".2942" to i64
  %".2943" = load i32, ptr %"R23"
  %"zext.313" = zext i32 %".2943" to i64
  %"shl.163" = shl i64 %"zext.313", 32
  %"or.155" = or i64 %"shl.163", %"zext.312"
  %".2944" = inttoptr i64 %"or.155" to ptr
  %".2945" = ptrtoint ptr %".2944" to i64
  %".2946" = add i64 %".2945", 4
  %"for_LDG.153" = inttoptr i64 %".2946" to ptr
  %".2947" = load float, ptr %"for_LDG.153"
  %".2948" = bitcast ptr %"R12" to ptr
  store float %".2947", ptr %".2948"
  ; LDG.E.SYS R14, [R10+0x4]
  %".2951" = load i32, ptr %"R10"
  %"zext.314" = zext i32 %".2951" to i64
  %".2952" = load i32, ptr %"R11"
  %"zext.315" = zext i32 %".2952" to i64
  %"shl.164" = shl i64 %"zext.315", 32
  %"or.156" = or i64 %"shl.164", %"zext.314"
  %".2953" = inttoptr i64 %"or.156" to ptr
  %".2954" = ptrtoint ptr %".2953" to i64
  %".2955" = add i64 %".2954", 4
  %"for_LDG.154" = inttoptr i64 %".2955" to ptr
  %".2956" = load float, ptr %"for_LDG.154"
  %".2957" = bitcast ptr %"R14" to ptr
  store float %".2956", ptr %".2957"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".2960" = load i1, ptr %"P0"
  %".2961" = icmp ne i1 %".2960", 1
  br i1 %".2961", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  %".2964" = load i32, ptr %"R22"
  %"zext.316" = zext i32 %".2964" to i64
  %".2965" = load i32, ptr %"R23"
  %"zext.317" = zext i32 %".2965" to i64
  %"shl.165" = shl i64 %"zext.317", 32
  %"or.157" = or i64 %"shl.165", %"zext.316"
  %".2966" = inttoptr i64 %"or.157" to ptr
  %".2967" = ptrtoint ptr %".2966" to i64
  %".2968" = add i64 %".2967", 8
  %"for_LDG.155" = inttoptr i64 %".2968" to ptr
  %".2969" = load float, ptr %"for_LDG.155"
  %".2970" = bitcast ptr %"R16" to ptr
  store float %".2969", ptr %".2970"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".2975" = load i1, ptr %"P0"
  %".2976" = icmp ne i1 %".2975", 1
  br i1 %".2976", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  %".2979" = load i32, ptr %"R10"
  %"zext.318" = zext i32 %".2979" to i64
  %".2980" = load i32, ptr %"R11"
  %"zext.319" = zext i32 %".2980" to i64
  %"shl.166" = shl i64 %"zext.319", 32
  %"or.158" = or i64 %"shl.166", %"zext.318"
  %".2981" = inttoptr i64 %"or.158" to ptr
  %".2982" = ptrtoint ptr %".2981" to i64
  %".2983" = add i64 %".2982", 8
  %"for_LDG.156" = inttoptr i64 %".2983" to ptr
  %".2984" = load float, ptr %"for_LDG.156"
  %".2985" = bitcast ptr %"R15" to ptr
  store float %".2984", ptr %".2985"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %".2990" = load float, ptr %"R12"
  %".2991" = load float, ptr %"R9"
  %"fmul.132" = fmul float %".2990", %".2991"
  %".2992" = bitcast ptr %"R13" to ptr
  store float %"fmul.132", ptr %".2992"
  ; FFMA R8, R13, R14, R8
  %".2995" = load float, ptr %"R13"
  %".2996" = load float, ptr %"R14"
  %".2997" = load float, ptr %"R8"
  %"fmul.133" = fmul float %".2995", %".2996"
  %"fadd.108" = fadd float %"fmul.133", %".2997"
  %".2998" = bitcast ptr %"R8" to ptr
  store float %"fadd.108", ptr %".2998"
  ; @P0 FMUL R9, R16, R9
  %".3001" = load i1, ptr %"P0"
  %".3002" = icmp ne i1 %".3001", 1
  br i1 %".3002", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %".3005" = load float, ptr %"R16"
  %".3006" = load float, ptr %"R9"
  %"fmul.134" = fmul float %".3005", %".3006"
  %".3007" = bitcast ptr %"R9" to ptr
  store float %"fmul.134", ptr %".3007"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".3012" = load i1, ptr %"P0"
  %".3013" = icmp ne i1 %".3012", 1
  br i1 %".3013", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %".3016" = load float, ptr %"R9"
  %".3017" = load float, ptr %"R15"
  %".3018" = load float, ptr %"R8"
  %"fmul.135" = fmul float %".3016", %".3017"
  %"fadd.109" = fadd float %"fmul.135", %".3018"
  %".3019" = bitcast ptr %"R8" to ptr
  store float %"fadd.109", ptr %".3019"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  %".3024" = load i32, ptr %"R30"
  %"zext.320" = zext i32 %".3024" to i64
  %"zext.321" = zext i32 0 to i64
  %"shl.167" = shl i64 %"zext.321", 32
  %"or.159" = or i64 %"shl.167", %"zext.320"
  %".3025" = inttoptr i64 %"or.159" to ptr
  %".3026" = ptrtoint ptr %".3025" to i64
  %".3027" = add i64 %".3026", 0
  %"for_LDG.157" = inttoptr i64 %".3027" to ptr
  %".3028" = load float, ptr %"for_LDG.157"
  %".3029" = bitcast ptr %"R9" to ptr
  store float %".3028", ptr %".3029"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %".3034" = load float, ptr %"R9"
  %".3035" = load float, ptr %"R8"
  %"fadd.110" = fadd float %".3034", %".3035"
  %".3036" = bitcast ptr %"R12" to ptr
  store float %"fadd.110", ptr %".3036"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %".3039" = load float, ptr %"R12"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".3039")
  %".3040" = load i1, ptr %"PT"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".3041" = and i1 %"fcmp_unordered", %".3040"
  ; @!P0 BRA `(.L_x_17)
  %".3043" = load i1, ptr %"P0"
  %".3044" = icmp eq i1 %".3043", 1
  br i1 %".3044", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %".3047" = load float, ptr %"R12"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".3047")
  %"fmul.136" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  %".3048" = bitcast ptr %"R8" to ptr
  store float %"fmul.136", ptr %".3048"
  ; MOV R9, 0x3f800000
  %".3051" = bitcast ptr %"R9" to ptr
  store float 0x41cfc00000000000, ptr %".3051"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %".3054" = load float, ptr %"R12"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".3054")
  %".3055" = load i1, ptr %"PT"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".3056" = and i1 %"fcmp_unordered.1", %".3055"
  ; MUFU.EX2 R8, R8
  %".3058" = load float, ptr %"R8"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".3058")
  %".3059" = bitcast ptr %"R8" to ptr
  store float %"llvm_exp2_f32_result.2", ptr %".3059"
  ; FADD R10, R8, 1
  %".3062" = load float, ptr %"R8"
  %"fadd.111" = fadd float %".3062", 0x3ff0000000000000
  %".3063" = bitcast ptr %"R10" to ptr
  store float %"fadd.111", ptr %".3063"
  ; MUFU.RCP R10, R10
  %".3066" = load float, ptr %"R10"
  %".3067" = fdiv float 0x3ff0000000000000, %".3066"
  %".3068" = bitcast ptr %"R10" to ptr
  store float %".3067", ptr %".3068"
  ; FFMA R9, R10, -2, R9
  %".3071" = load float, ptr %"R10"
  %".3072" = load float, ptr %"R9"
  %"fmul.137" = fmul float %".3071", 0xc000000000000000
  %"fadd.112" = fadd float %"fmul.137", %".3072"
  %".3073" = bitcast ptr %"R9" to ptr
  store float %"fadd.112", ptr %".3073"
  ; FSEL R9, R9, 1, !P0
  %".3076" = load float, ptr %"R9"
  %".3077" = load i1, ptr %"P0"
  %".3078" = icmp eq i1 %".3077", 1
  %"fsel" = select  i1 %".3078", float %".3076", float 0x3ff0000000000000
  %".3079" = bitcast ptr %"R9" to ptr
  store float %"fsel", ptr %".3079"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".3082" = load float, ptr %"R9"
  %".3083" = load float, ptr %"R12"
  %".3084" = or float %".3082", 0x41e0000000000000
  %".3085" = or float %".3082", %".3083"
  %".3086" = and float %".3084", %".3085"
  %".3087" = bitcast ptr %"R9" to ptr
  store float %".3086", ptr %".3087"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  %".3092" = bitcast ptr %"R9" to ptr
  store float 0x41ce407840000000, ptr %".3092"
  ; FMUL R8, R12, R12
  %".3095" = load float, ptr %"R12"
  %".3096" = load float, ptr %"R12"
  %"fmul.138" = fmul float %".3095", %".3096"
  %".3097" = bitcast ptr %"R8" to ptr
  store float %"fmul.138", ptr %".3097"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".3100" = load float, ptr %"R8"
  %".3101" = load float, ptr %"R9"
  %"fmul.139" = fmul float %".3100", %".3101"
  %"fadd.113" = fadd float %"fmul.139", 0xbfaac795c0000000
  %".3102" = bitcast ptr %"R9" to ptr
  store float %"fadd.113", ptr %".3102"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".3105" = load float, ptr %"R8"
  %".3106" = load float, ptr %"R9"
  %"fmul.140" = fmul float %".3105", %".3106"
  %"fadd.114" = fadd float %"fmul.140", 0x3fc10b2820000000
  %".3107" = bitcast ptr %"R9" to ptr
  store float %"fadd.114", ptr %".3107"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".3110" = load float, ptr %"R8"
  %".3111" = load float, ptr %"R9"
  %"fmul.141" = fmul float %".3110", %".3111"
  %"fadd.115" = fadd float %"fmul.141", 0xbfd5553da0000000
  %".3112" = bitcast ptr %"R9" to ptr
  store float %"fadd.115", ptr %".3112"
  ; FFMA R9, R8, R9, RZ
  %".3115" = load float, ptr %"R8"
  %".3116" = load float, ptr %"R9"
  %"fmul.142" = fmul float %".3115", %".3116"
  %"fadd.116" = fadd float %"fmul.142",              0x0
  %".3117" = bitcast ptr %"R9" to ptr
  store float %"fadd.116", ptr %".3117"
  ; FFMA R9, R12, R9, R12
  %".3120" = load float, ptr %"R12"
  %".3121" = load float, ptr %"R9"
  %".3122" = load float, ptr %"R12"
  %"fmul.143" = fmul float %".3120", %".3121"
  %"fadd.117" = fadd float %"fmul.143", %".3122"
  %".3123" = bitcast ptr %"R9" to ptr
  store float %"fadd.117", ptr %".3123"
  br label %".L_x_18"
.L_x_18:
  ; BSYNC B0
  br label %".L_x_16"
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  %".3129" = load i32, ptr %"R20"
  %"add.146" = add i32 %".3129", 25165824
  %"add.147" = add i32 %"add.146", 0
  store i32 %"add.147", ptr %"R8"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".3134" = load i32, ptr %"R8"
  %".3135" = and i32 %".3134", 2139095040
  store i32 %".3135", ptr %"R8"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".3138" = load i32, ptr %"R8"
  %".3139" = load i1, ptr %"PT"
  %"cmp.26" = icmp sgt i32 %".3138", 33554431
  %".3140" = and i1 %"cmp.26", %".3139"
  ; @P0 BRA `(.L_x_20)
  %".3142" = load i1, ptr %"P0"
  %".3143" = icmp ne i1 %".3142", 1
  br i1 %".3143", label %".L_x_20", label %".L_x_16_split_0x2170"
.L_x_16_split_0x2170:
  ; MOV R24, R20
  %".3146" = load float, ptr %"R20"
  %".3147" = bitcast ptr %"R24" to ptr
  store float %".3146", ptr %".3147"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.1" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R8, R22
  %".3153" = load i32, ptr %"R22"
  store i32 %".3153", ptr %"R8"
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".3158" = load float, ptr %"R20"
  %".3159" = fdiv float 0x3ff0000000000000, %".3158"
  %".3160" = bitcast ptr %"R11" to ptr
  store float %".3159", ptr %".3160"
  ; FFMA R8, R20, R11, -1
  %".3163" = load float, ptr %"R20"
  %".3164" = load float, ptr %"R11"
  %"fmul.144" = fmul float %".3163", %".3164"
  %"fadd.118" = fadd float %"fmul.144", 0xbff0000000000000
  %".3165" = bitcast ptr %"R8" to ptr
  store float %"fadd.118", ptr %".3165"
  ; FADD.FTZ R8, -R8, -RZ
  %".3168" = load float, ptr %"R8"
  %".3169" = fneg float %".3168"
  %"fadd.119" = fadd float %".3169",              0x0
  %".3170" = bitcast ptr %"R8" to ptr
  store float %"fadd.119", ptr %".3170"
  ; FFMA R8, R11, R8, R11
  %".3173" = load float, ptr %"R11"
  %".3174" = load float, ptr %"R8"
  %".3175" = load float, ptr %"R11"
  %"fmul.145" = fmul float %".3173", %".3174"
  %"fadd.120" = fadd float %"fmul.145", %".3175"
  %".3176" = bitcast ptr %"R8" to ptr
  store float %"fadd.120", ptr %".3176"
  br label %".L_x_21"
.L_x_21:
  ; BSYNC B0
  br label %".L_x_19"
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  %".3182" = load i32, ptr %"R28"
  %"zext.322" = zext i32 %".3182" to i64
  %"zext.323" = zext i32 0 to i64
  %"shl.168" = shl i64 %"zext.323", 32
  %"or.160" = or i64 %"shl.168", %"zext.322"
  %".3183" = inttoptr i64 %"or.160" to ptr
  %".3184" = ptrtoint ptr %".3183" to i64
  %".3185" = add i64 %".3184", 0
  %"for_LDG.158" = inttoptr i64 %".3185" to ptr
  %".3186" = load float, ptr %"for_LDG.158"
  %".3187" = bitcast ptr %"R11" to ptr
  store float %".3186", ptr %".3187"
  ; FADD R10, -R8, 1
  %".3190" = load float, ptr %"R8"
  %".3191" = fneg float %".3190"
  %"fadd.121" = fadd float %".3191", 0x3ff0000000000000
  %".3192" = bitcast ptr %"R10" to ptr
  store float %"fadd.121", ptr %".3192"
  ; FMUL R11, R11, R8
  %".3195" = load float, ptr %"R11"
  %".3196" = load float, ptr %"R8"
  %"fmul.146" = fmul float %".3195", %".3196"
  %".3197" = bitcast ptr %"R11" to ptr
  store float %"fmul.146", ptr %".3197"
  ; FFMA R9, R10, R9, R11
  %".3200" = load float, ptr %"R10"
  %".3201" = load float, ptr %"R9"
  %".3202" = load float, ptr %"R11"
  %"fmul.147" = fmul float %".3200", %".3201"
  %"fadd.122" = fadd float %"fmul.147", %".3202"
  %".3203" = bitcast ptr %"R9" to ptr
  store float %"fadd.122", ptr %".3203"
  ; STG.E.SYS [R28], R9
  %".3206" = load float, ptr %"R9"
  %".3207" = load i32, ptr %"R28"
  %"zext.324" = zext i32 %".3207" to i64
  %"zext.325" = zext i32 0 to i64
  %"shl.169" = shl i64 %"zext.325", 32
  %"or.161" = or i64 %"shl.169", %"zext.324"
  %".3208" = inttoptr i64 %"or.161" to ptr
  %".3209" = ptrtoint ptr %".3208" to i64
  %".3210" = add i64 %".3209", 0
  %"for_STG" = inttoptr i64 %".3210" to ptr
  store float %".3206", ptr %"for_STG"
  ; @!P3 BRA `(.L_x_22)
  %".3213" = load i1, ptr %"P3"
  %".3214" = icmp eq i1 %".3213", 1
  br i1 %".3214", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".3221" = load i32, ptr %"R15"
  %".3222" = and i32 %".3221", 3
  store i32 %".3222", ptr %"R15"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".3225" = load i32, ptr %"R5"
  %".3226" = and i32 %".3225", 3
  store i32 %".3226", ptr %"R48"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".3229" = load i32, ptr %"R18"
  %".3230" = sub i32 0, %".3229"
  %"add.148" = add i32 %".3230", %"Arg_6"
  %"add.149" = add i32 %"add.148", 0
  store i32 %"add.149", ptr %"R49"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".3233" = icmp ult i32 31, 32
  %"SHF_min.2" = select  i1 %".3233", i32 31, i32 32
  %".3234" = load i32, ptr %"R5"
  %"zext.326" = zext i32 %".3234" to i64
  %"zext.327" = zext i32 0 to i64
  %"zext.328" = zext i32 31 to i64
  %"shl.170" = shl i64 %"zext.326", 32
  %"or.162" = or i64 %"shl.170", %"zext.327"
  %"ashr" = ashr i64 %"or.162", %"zext.328"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.2" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.2", ptr %"R16"
  ; MOV R17, RZ
  %".3237" = load i32, ptr %"RZ"
  store i32 %".3237", ptr %"R17"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".3240" = load i32, ptr %"R18"
  %".3241" = sub i32 0, %".3240"
  %"add.150" = add i32 %".3241", %"Arg_7"
  %"add.151" = add i32 %"add.150", 0
  store i32 %"add.151", ptr %"R18"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".3244" = load i32, ptr %"R15"
  %".3245" = sub i32 0, %".3244"
  %"add.152" = add i32 %".3245", %"Arg_6"
  %"add.153" = add i32 %"add.152", 0
  store i32 %"add.153", ptr %"R19"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".3248" = load i32, ptr %"R48"
  %".3249" = sub i32 0, %".3248"
  %"add.154" = add i32 %".3249", %"Arg_7"
  %"add.155" = add i32 %"add.154", 0
  store i32 %"add.155", ptr %"R20"
  br label %".L_x_47"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".3253" = load i32, ptr %"R49"
  %".3254" = load i1, ptr %"PT"
  %"cmp.27" = icmp sge i32 %".3253", 3
  %".3255" = and i1 %"cmp.27", %".3254"
  ; MOV R13, R17
  %".3257" = load i32, ptr %"R17"
  store i32 %".3257", ptr %"R13"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R4"
  ; IADD3 R17, R17, 0x1, RZ
  %".3262" = load i32, ptr %"R17"
  %"add.156" = add i32 %".3262", 1
  %"add.157" = add i32 %"add.156", 0
  store i32 %"add.157", ptr %"R17"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".3265" = load i32, ptr %"R4"
  %".3266" = load i1, ptr %"PT"
  %"cmp.28" = icmp sge i32 %".3265", 1
  %".3267" = and i1 %"cmp.28", %".3266"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".3269" = load i32, ptr %"R15"
  %".3270" = load i1, ptr %"PT"
  %"cmp.29" = icmp ne i32 %".3269", 0
  %".3271" = and i1 %"cmp.29", %".3270"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".3273" = load i32, ptr %"R17"
  %".3274" = load i1, ptr %"PT"
  %"cmp.30" = icmp sge i32 %".3273", %"Arg_8"
  %".3275" = and i1 %"cmp.30", %".3274"
  ; MOV R21, RZ
  %".3277" = load float, ptr %"RZ"
  %".3278" = bitcast ptr %"R21" to ptr
  store float %".3277", ptr %".3278"
  ; MOV R22, RZ
  %".3281" = load i32, ptr %"RZ"
  store i32 %".3281", ptr %"R22"
  ; MOV R56, RZ
  %".3284" = load float, ptr %"RZ"
  %".3285" = bitcast ptr %"R56" to ptr
  store float %".3284", ptr %".3285"
  ; MOV R44, RZ
  %".3288" = load float, ptr %"RZ"
  %".3289" = bitcast ptr %"R44" to ptr
  store float %".3288", ptr %".3289"
  ; @!P0 BRA `(.L_x_23)
  %".3292" = load i1, ptr %"P0"
  %".3293" = icmp eq i1 %".3292", 1
  br i1 %".3293", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R25"
  ; MOV R21, RZ
  %".3298" = load float, ptr %"RZ"
  %".3299" = bitcast ptr %"R21" to ptr
  store float %".3298", ptr %".3299"
  ; MOV R22, RZ
  %".3302" = load i32, ptr %"RZ"
  store i32 %".3302", ptr %"R22"
  ; MOV R12, R19
  %".3305" = load i32, ptr %"R19"
  store i32 %".3305", ptr %"R12"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".3308" = icmp ult i32 2, 64
  %"SHF_min.3" = select  i1 %".3308", i32 2, i32 64
  %".3309" = load i32, ptr %"R16"
  %".3310" = load i32, ptr %"R25"
  %"zext.329" = zext i32 %".3309" to i64
  %"zext.330" = zext i32 %".3310" to i64
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
  %".3316" = load i32, ptr %"R14"
  %".3317" = load i32, ptr %"R22"
  %"mul.52" = mul i32 %".3316", %"Arg_6"
  %"add.158" = add i32 %"mul.52", %".3317"
  store i32 %"add.158", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".3322" = load i32, ptr %"R13"
  %".3323" = load i32, ptr %"R22"
  %"mul.53" = mul i32 %".3322", %"Arg_6"
  %"add.159" = add i32 %"mul.53", %".3323"
  store i32 %"add.159", ptr %"R10"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".3326" = load i32, ptr %"R6"
  %".3327" = load i32, ptr %"R7"
  %"mul.54" = mul i32 %".3326", %".3327"
  %"add.160" = add i32 %"mul.54", %"Arg_4"
  store i32 %"add.160", ptr %"R4"
  ; LEA R6, R9, R6, 0x1
  %".3330" = load i32, ptr %"R9"
  %".3331" = load i32, ptr %"R6"
  %"shl.173" = shl i32 %".3330", 1
  %"add.161" = add i32 %"shl.173", %".3331"
  store i32 %"add.161", ptr %"R6"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".3334" = load i32, ptr %"R10"
  %".3335" = load i32, ptr %"R7"
  %"mul.55" = mul i32 %".3334", %".3335"
  %"add.162" = add i32 %"mul.55", %"Arg_2"
  store i32 %"add.162", ptr %"R10"
  ; LEA R8, P0, R25, R4, 0x2
  %".3338" = load i1, ptr %"P0"
  %".3339" = sub i1 0, %".3338"
  %".3340" = load i32, ptr %"R25"
  %".3341" = load i32, ptr %"R4"
  %".3342" = sext i1 %".3339" to i32
  %"shl.174" = shl i32 %".3342", %".3341"
  %"add.163" = add i32 %"shl.174", %".3340"
  store i32 %"add.163", ptr %"R8"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".3345" = load i32, ptr %"R6"
  %".3346" = load i32, ptr %"R7"
  %"mul.56" = mul i32 %".3345", %".3346"
  %"add.164" = add i32 %"mul.56", %"Arg_4"
  store i32 %"add.164", ptr %"R6"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".3349" = load i32, ptr %"R5"
  %".3350" = load i32, ptr %"R23"
  %".3351" = load i1, ptr %"P0"
  %".3352" = sub i1 0, %".3351"
  %".3353" = zext i1 %".3352" to i32
  %"add.165" = add i32 %".3349", %".3350"
  %"add.166" = add i32 %"add.165", 0
  %"add.167" = add i32 %"add.166", %".3353"
  store i32 %"add.167", ptr %"R9"
  ; LDG.E.SYS R35, [R4]
  %".3356" = load i32, ptr %"R4"
  %"zext.332" = zext i32 %".3356" to i64
  %".3357" = load i32, ptr %"R5"
  %"zext.333" = zext i32 %".3357" to i64
  %"shl.175" = shl i64 %"zext.333", 32
  %"or.164" = or i64 %"shl.175", %"zext.332"
  %".3358" = inttoptr i64 %"or.164" to ptr
  %".3359" = ptrtoint ptr %".3358" to i64
  %".3360" = add i64 %".3359", 0
  %"for_LDG.159" = inttoptr i64 %".3360" to ptr
  %".3361" = load float, ptr %"for_LDG.159"
  %".3362" = bitcast ptr %"R35" to ptr
  store float %".3361", ptr %".3362"
  ; LDG.E.SYS R24, [R10]
  %".3365" = load i32, ptr %"R10"
  %"zext.334" = zext i32 %".3365" to i64
  %".3366" = load i32, ptr %"R11"
  %"zext.335" = zext i32 %".3366" to i64
  %"shl.176" = shl i64 %"zext.335", 32
  %"or.165" = or i64 %"shl.176", %"zext.334"
  %".3367" = inttoptr i64 %"or.165" to ptr
  %".3368" = ptrtoint ptr %".3367" to i64
  %".3369" = add i64 %".3368", 0
  %"for_LDG.160" = inttoptr i64 %".3369" to ptr
  %".3370" = load float, ptr %"for_LDG.160"
  %".3371" = bitcast ptr %"R24" to ptr
  store float %".3370", ptr %".3371"
  ; LDG.E.SYS R37, [R8]
  %".3374" = load i32, ptr %"R8"
  %"zext.336" = zext i32 %".3374" to i64
  %".3375" = load i32, ptr %"R9"
  %"zext.337" = zext i32 %".3375" to i64
  %"shl.177" = shl i64 %"zext.337", 32
  %"or.166" = or i64 %"shl.177", %"zext.336"
  %".3376" = inttoptr i64 %"or.166" to ptr
  %".3377" = ptrtoint ptr %".3376" to i64
  %".3378" = add i64 %".3377", 0
  %"for_LDG.161" = inttoptr i64 %".3378" to ptr
  %".3379" = load float, ptr %"for_LDG.161"
  %".3380" = bitcast ptr %"R37" to ptr
  store float %".3379", ptr %".3380"
  ; LDG.E.SYS R34, [R6]
  %".3383" = load i32, ptr %"R6"
  %"zext.338" = zext i32 %".3383" to i64
  %".3384" = load i32, ptr %"R7"
  %"zext.339" = zext i32 %".3384" to i64
  %"shl.178" = shl i64 %"zext.339", 32
  %"or.167" = or i64 %"shl.178", %"zext.338"
  %".3385" = inttoptr i64 %"or.167" to ptr
  %".3386" = ptrtoint ptr %".3385" to i64
  %".3387" = add i64 %".3386", 0
  %"for_LDG.162" = inttoptr i64 %".3387" to ptr
  %".3388" = load float, ptr %"for_LDG.162"
  %".3389" = bitcast ptr %"R34" to ptr
  store float %".3388", ptr %".3389"
  ; LDG.E.SYS R36, [R4+0x4]
  %".3392" = load i32, ptr %"R4"
  %"zext.340" = zext i32 %".3392" to i64
  %".3393" = load i32, ptr %"R5"
  %"zext.341" = zext i32 %".3393" to i64
  %"shl.179" = shl i64 %"zext.341", 32
  %"or.168" = or i64 %"shl.179", %"zext.340"
  %".3394" = inttoptr i64 %"or.168" to ptr
  %".3395" = ptrtoint ptr %".3394" to i64
  %".3396" = add i64 %".3395", 4
  %"for_LDG.163" = inttoptr i64 %".3396" to ptr
  %".3397" = load float, ptr %"for_LDG.163"
  %".3398" = bitcast ptr %"R36" to ptr
  store float %".3397", ptr %".3398"
  ; LDG.E.SYS R38, [R10+0x4]
  %".3401" = load i32, ptr %"R10"
  %"zext.342" = zext i32 %".3401" to i64
  %".3402" = load i32, ptr %"R11"
  %"zext.343" = zext i32 %".3402" to i64
  %"shl.180" = shl i64 %"zext.343", 32
  %"or.169" = or i64 %"shl.180", %"zext.342"
  %".3403" = inttoptr i64 %"or.169" to ptr
  %".3404" = ptrtoint ptr %".3403" to i64
  %".3405" = add i64 %".3404", 4
  %"for_LDG.164" = inttoptr i64 %".3405" to ptr
  %".3406" = load float, ptr %"for_LDG.164"
  %".3407" = bitcast ptr %"R38" to ptr
  store float %".3406", ptr %".3407"
  ; LDG.E.SYS R39, [R8+0x4]
  %".3410" = load i32, ptr %"R8"
  %"zext.344" = zext i32 %".3410" to i64
  %".3411" = load i32, ptr %"R9"
  %"zext.345" = zext i32 %".3411" to i64
  %"shl.181" = shl i64 %"zext.345", 32
  %"or.170" = or i64 %"shl.181", %"zext.344"
  %".3412" = inttoptr i64 %"or.170" to ptr
  %".3413" = ptrtoint ptr %".3412" to i64
  %".3414" = add i64 %".3413", 4
  %"for_LDG.165" = inttoptr i64 %".3414" to ptr
  %".3415" = load float, ptr %"for_LDG.165"
  %".3416" = bitcast ptr %"R39" to ptr
  store float %".3415", ptr %".3416"
  ; LDG.E.SYS R41, [R6+0x4]
  %".3419" = load i32, ptr %"R6"
  %"zext.346" = zext i32 %".3419" to i64
  %".3420" = load i32, ptr %"R7"
  %"zext.347" = zext i32 %".3420" to i64
  %"shl.182" = shl i64 %"zext.347", 32
  %"or.171" = or i64 %"shl.182", %"zext.346"
  %".3421" = inttoptr i64 %"or.171" to ptr
  %".3422" = ptrtoint ptr %".3421" to i64
  %".3423" = add i64 %".3422", 4
  %"for_LDG.166" = inttoptr i64 %".3423" to ptr
  %".3424" = load float, ptr %"for_LDG.166"
  %".3425" = bitcast ptr %"R41" to ptr
  store float %".3424", ptr %".3425"
  ; LDG.E.SYS R42, [R10+0x8]
  %".3428" = load i32, ptr %"R10"
  %"zext.348" = zext i32 %".3428" to i64
  %".3429" = load i32, ptr %"R11"
  %"zext.349" = zext i32 %".3429" to i64
  %"shl.183" = shl i64 %"zext.349", 32
  %"or.172" = or i64 %"shl.183", %"zext.348"
  %".3430" = inttoptr i64 %"or.172" to ptr
  %".3431" = ptrtoint ptr %".3430" to i64
  %".3432" = add i64 %".3431", 8
  %"for_LDG.167" = inttoptr i64 %".3432" to ptr
  %".3433" = load float, ptr %"for_LDG.167"
  %".3434" = bitcast ptr %"R42" to ptr
  store float %".3433", ptr %".3434"
  ; LDG.E.SYS R40, [R4+0x8]
  %".3437" = load i32, ptr %"R4"
  %"zext.350" = zext i32 %".3437" to i64
  %".3438" = load i32, ptr %"R5"
  %"zext.351" = zext i32 %".3438" to i64
  %"shl.184" = shl i64 %"zext.351", 32
  %"or.173" = or i64 %"shl.184", %"zext.350"
  %".3439" = inttoptr i64 %"or.173" to ptr
  %".3440" = ptrtoint ptr %".3439" to i64
  %".3441" = add i64 %".3440", 8
  %"for_LDG.168" = inttoptr i64 %".3441" to ptr
  %".3442" = load float, ptr %"for_LDG.168"
  %".3443" = bitcast ptr %"R40" to ptr
  store float %".3442", ptr %".3443"
  ; LDG.E.SYS R43, [R8+0x8]
  %".3446" = load i32, ptr %"R8"
  %"zext.352" = zext i32 %".3446" to i64
  %".3447" = load i32, ptr %"R9"
  %"zext.353" = zext i32 %".3447" to i64
  %"shl.185" = shl i64 %"zext.353", 32
  %"or.174" = or i64 %"shl.185", %"zext.352"
  %".3448" = inttoptr i64 %"or.174" to ptr
  %".3449" = ptrtoint ptr %".3448" to i64
  %".3450" = add i64 %".3449", 8
  %"for_LDG.169" = inttoptr i64 %".3450" to ptr
  %".3451" = load float, ptr %"for_LDG.169"
  %".3452" = bitcast ptr %"R43" to ptr
  store float %".3451", ptr %".3452"
  ; LDG.E.SYS R45, [R6+0x8]
  %".3455" = load i32, ptr %"R6"
  %"zext.354" = zext i32 %".3455" to i64
  %".3456" = load i32, ptr %"R7"
  %"zext.355" = zext i32 %".3456" to i64
  %"shl.186" = shl i64 %"zext.355", 32
  %"or.175" = or i64 %"shl.186", %"zext.354"
  %".3457" = inttoptr i64 %"or.175" to ptr
  %".3458" = ptrtoint ptr %".3457" to i64
  %".3459" = add i64 %".3458", 8
  %"for_LDG.170" = inttoptr i64 %".3459" to ptr
  %".3460" = load float, ptr %"for_LDG.170"
  %".3461" = bitcast ptr %"R45" to ptr
  store float %".3460", ptr %".3461"
  ; LDG.E.SYS R47, [R10+0xc]
  %".3464" = load i32, ptr %"R10"
  %"zext.356" = zext i32 %".3464" to i64
  %".3465" = load i32, ptr %"R11"
  %"zext.357" = zext i32 %".3465" to i64
  %"shl.187" = shl i64 %"zext.357", 32
  %"or.176" = or i64 %"shl.187", %"zext.356"
  %".3466" = inttoptr i64 %"or.176" to ptr
  %".3467" = ptrtoint ptr %".3466" to i64
  %".3468" = add i64 %".3467", 12
  %"for_LDG.171" = inttoptr i64 %".3468" to ptr
  %".3469" = load float, ptr %"for_LDG.171"
  %".3470" = bitcast ptr %"R47" to ptr
  store float %".3469", ptr %".3470"
  ; LDG.E.SYS R46, [R4+0xc]
  %".3473" = load i32, ptr %"R4"
  %"zext.358" = zext i32 %".3473" to i64
  %".3474" = load i32, ptr %"R5"
  %"zext.359" = zext i32 %".3474" to i64
  %"shl.188" = shl i64 %"zext.359", 32
  %"or.177" = or i64 %"shl.188", %"zext.358"
  %".3475" = inttoptr i64 %"or.177" to ptr
  %".3476" = ptrtoint ptr %".3475" to i64
  %".3477" = add i64 %".3476", 12
  %"for_LDG.172" = inttoptr i64 %".3477" to ptr
  %".3478" = load float, ptr %"for_LDG.172"
  %".3479" = bitcast ptr %"R46" to ptr
  store float %".3478", ptr %".3479"
  ; LDG.E.SYS R50, [R8+0xc]
  %".3482" = load i32, ptr %"R8"
  %"zext.360" = zext i32 %".3482" to i64
  %".3483" = load i32, ptr %"R9"
  %"zext.361" = zext i32 %".3483" to i64
  %"shl.189" = shl i64 %"zext.361", 32
  %"or.178" = or i64 %"shl.189", %"zext.360"
  %".3484" = inttoptr i64 %"or.178" to ptr
  %".3485" = ptrtoint ptr %".3484" to i64
  %".3486" = add i64 %".3485", 12
  %"for_LDG.173" = inttoptr i64 %".3486" to ptr
  %".3487" = load float, ptr %"for_LDG.173"
  %".3488" = bitcast ptr %"R50" to ptr
  store float %".3487", ptr %".3488"
  ; LDG.E.SYS R51, [R6+0xc]
  %".3491" = load i32, ptr %"R6"
  %"zext.362" = zext i32 %".3491" to i64
  %".3492" = load i32, ptr %"R7"
  %"zext.363" = zext i32 %".3492" to i64
  %"shl.190" = shl i64 %"zext.363", 32
  %"or.179" = or i64 %"shl.190", %"zext.362"
  %".3493" = inttoptr i64 %"or.179" to ptr
  %".3494" = ptrtoint ptr %".3493" to i64
  %".3495" = add i64 %".3494", 12
  %"for_LDG.174" = inttoptr i64 %".3495" to ptr
  %".3496" = load float, ptr %"for_LDG.174"
  %".3497" = bitcast ptr %"R51" to ptr
  store float %".3496", ptr %".3497"
  ; IADD3 R12, R12, -0x4, RZ
  %".3500" = load i32, ptr %"R12"
  %"add.168" = add i32 %".3500", -4
  %"add.169" = add i32 %"add.168", 0
  store i32 %"add.169", ptr %"R12"
  ; IADD3 R22, R22, 0x4, RZ
  %".3503" = load i32, ptr %"R22"
  %"add.170" = add i32 %".3503", 4
  %"add.171" = add i32 %"add.170", 0
  store i32 %"add.171", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".3506" = load i32, ptr %"R12"
  %".3507" = load i1, ptr %"PT"
  %"cmp.31" = icmp ne i32 %".3506", 0
  %".3508" = and i1 %"cmp.31", %".3507"
  ; FFMA R35, R35, R24, R44
  %".3510" = load float, ptr %"R35"
  %".3511" = load float, ptr %"R24"
  %".3512" = load float, ptr %"R44"
  %"fmul.148" = fmul float %".3510", %".3511"
  %"fadd.123" = fadd float %"fmul.148", %".3512"
  %".3513" = bitcast ptr %"R35" to ptr
  store float %"fadd.123", ptr %".3513"
  ; FFMA R37, R24.reuse, R37, R56
  %".3516" = load float, ptr %"R24"
  %".3517" = load float, ptr %"R37"
  %".3518" = load float, ptr %"R56"
  %"fmul.149" = fmul float %".3516", %".3517"
  %"fadd.124" = fadd float %"fmul.149", %".3518"
  %".3519" = bitcast ptr %"R37" to ptr
  store float %"fadd.124", ptr %".3519"
  ; FFMA R34, R24, R34, R21
  %".3522" = load float, ptr %"R24"
  %".3523" = load float, ptr %"R34"
  %".3524" = load float, ptr %"R21"
  %"fmul.150" = fmul float %".3522", %".3523"
  %"fadd.125" = fadd float %"fmul.150", %".3524"
  %".3525" = bitcast ptr %"R34" to ptr
  store float %"fadd.125", ptr %".3525"
  ; FFMA R35, R36, R38, R35
  %".3528" = load float, ptr %"R36"
  %".3529" = load float, ptr %"R38"
  %".3530" = load float, ptr %"R35"
  %"fmul.151" = fmul float %".3528", %".3529"
  %"fadd.126" = fadd float %"fmul.151", %".3530"
  %".3531" = bitcast ptr %"R35" to ptr
  store float %"fadd.126", ptr %".3531"
  ; FFMA R37, R38, R39, R37
  %".3534" = load float, ptr %"R38"
  %".3535" = load float, ptr %"R39"
  %".3536" = load float, ptr %"R37"
  %"fmul.152" = fmul float %".3534", %".3535"
  %"fadd.127" = fadd float %"fmul.152", %".3536"
  %".3537" = bitcast ptr %"R37" to ptr
  store float %"fadd.127", ptr %".3537"
  ; FFMA R34, R38, R41, R34
  %".3540" = load float, ptr %"R38"
  %".3541" = load float, ptr %"R41"
  %".3542" = load float, ptr %"R34"
  %"fmul.153" = fmul float %".3540", %".3541"
  %"fadd.128" = fadd float %"fmul.153", %".3542"
  %".3543" = bitcast ptr %"R34" to ptr
  store float %"fadd.128", ptr %".3543"
  ; FFMA R35, R40, R42, R35
  %".3546" = load float, ptr %"R40"
  %".3547" = load float, ptr %"R42"
  %".3548" = load float, ptr %"R35"
  %"fmul.154" = fmul float %".3546", %".3547"
  %"fadd.129" = fadd float %"fmul.154", %".3548"
  %".3549" = bitcast ptr %"R35" to ptr
  store float %"fadd.129", ptr %".3549"
  ; FFMA R37, R42.reuse, R43, R37
  %".3552" = load float, ptr %"R42"
  %".3553" = load float, ptr %"R43"
  %".3554" = load float, ptr %"R37"
  %"fmul.155" = fmul float %".3552", %".3553"
  %"fadd.130" = fadd float %"fmul.155", %".3554"
  %".3555" = bitcast ptr %"R37" to ptr
  store float %"fadd.130", ptr %".3555"
  ; FFMA R34, R42, R45, R34
  %".3558" = load float, ptr %"R42"
  %".3559" = load float, ptr %"R45"
  %".3560" = load float, ptr %"R34"
  %"fmul.156" = fmul float %".3558", %".3559"
  %"fadd.131" = fadd float %"fmul.156", %".3560"
  %".3561" = bitcast ptr %"R34" to ptr
  store float %"fadd.131", ptr %".3561"
  ; FFMA R44, R46, R47, R35
  %".3564" = load float, ptr %"R46"
  %".3565" = load float, ptr %"R47"
  %".3566" = load float, ptr %"R35"
  %"fmul.157" = fmul float %".3564", %".3565"
  %"fadd.132" = fadd float %"fmul.157", %".3566"
  %".3567" = bitcast ptr %"R44" to ptr
  store float %"fadd.132", ptr %".3567"
  ; FFMA R56, R47, R50, R37
  %".3570" = load float, ptr %"R47"
  %".3571" = load float, ptr %"R50"
  %".3572" = load float, ptr %"R37"
  %"fmul.158" = fmul float %".3570", %".3571"
  %"fadd.133" = fadd float %"fmul.158", %".3572"
  %".3573" = bitcast ptr %"R56" to ptr
  store float %"fadd.133", ptr %".3573"
  ; FFMA R21, R47, R51, R34
  %".3576" = load float, ptr %"R47"
  %".3577" = load float, ptr %"R51"
  %".3578" = load float, ptr %"R34"
  %"fmul.159" = fmul float %".3576", %".3577"
  %"fadd.134" = fadd float %"fmul.159", %".3578"
  %".3579" = bitcast ptr %"R21" to ptr
  store float %"fadd.134", ptr %".3579"
  ; @P0 BRA `(.L_x_24)
  %".3582" = load i1, ptr %"P0"
  %".3583" = icmp ne i1 %".3582", 1
  br i1 %".3583", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".3586" = load i1, ptr %"P1"
  %".3587" = icmp eq i1 %".3586", 1
  br i1 %".3587", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  %".3592" = load i32, ptr %"R14"
  %".3593" = load i32, ptr %"R22"
  %"mul.57" = mul i32 %".3592", %"Arg_6"
  %"add.172" = add i32 %"mul.57", %".3593"
  store i32 %"add.172", ptr %"R7"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R10"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".3598" = load i32, ptr %"R13"
  %".3599" = load i32, ptr %"R22"
  %"mul.58" = mul i32 %".3598", %"Arg_6"
  %"add.173" = add i32 %"mul.58", %".3599"
  store i32 %"add.173", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".3604" = load i32, ptr %"R7"
  %".3605" = load i32, ptr %"R11"
  %"mul.59" = mul i32 %".3604", %".3605"
  %"add.174" = add i32 %"mul.59", %"Arg_4"
  store i32 %"add.174", ptr %"R4"
  ; LEA R10, R10, R7, 0x1
  %".3608" = load i32, ptr %"R10"
  %".3609" = load i32, ptr %"R7"
  %"shl.191" = shl i32 %".3608", 1
  %"add.175" = add i32 %"shl.191", %".3609"
  store i32 %"add.175", ptr %"R10"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".3612" = load i32, ptr %"R6"
  %".3613" = load i32, ptr %"R11"
  %"mul.60" = mul i32 %".3612", %".3613"
  %"add.176" = add i32 %"mul.60", %"Arg_2"
  store i32 %"add.176", ptr %"R6"
  ; LEA R8, P0, R9, R4, 0x2
  %".3616" = load i1, ptr %"P0"
  %".3617" = sub i1 0, %".3616"
  %".3618" = load i32, ptr %"R9"
  %".3619" = load i32, ptr %"R4"
  %".3620" = sext i1 %".3617" to i32
  %"shl.192" = shl i32 %".3620", %".3619"
  %"add.177" = add i32 %"shl.192", %".3618"
  store i32 %"add.177", ptr %"R8"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".3623" = load i32, ptr %"R10"
  %".3624" = load i32, ptr %"R11"
  %"mul.61" = mul i32 %".3623", %".3624"
  %"add.178" = add i32 %"mul.61", %"Arg_4"
  store i32 %"add.178", ptr %"R10"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".3627" = load i32, ptr %"R9"
  %".3628" = load i32, ptr %"R5"
  %".3629" = load i32, ptr %"R16"
  %"shl.193" = shl i32 %".3627", %".3629"
  %"add.179" = add i32 %"shl.193", %".3628"
  store i32 %"add.179", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".3632" = load i32, ptr %"R4"
  %"zext.364" = zext i32 %".3632" to i64
  %".3633" = load i32, ptr %"R5"
  %"zext.365" = zext i32 %".3633" to i64
  %"shl.194" = shl i64 %"zext.365", 32
  %"or.180" = or i64 %"shl.194", %"zext.364"
  %".3634" = inttoptr i64 %"or.180" to ptr
  %".3635" = ptrtoint ptr %".3634" to i64
  %".3636" = add i64 %".3635", 0
  %"for_LDG.175" = inttoptr i64 %".3636" to ptr
  %".3637" = load float, ptr %"for_LDG.175"
  %".3638" = bitcast ptr %"R13" to ptr
  store float %".3637", ptr %".3638"
  ; LDG.E.SYS R12, [R6]
  %".3641" = load i32, ptr %"R6"
  %"zext.366" = zext i32 %".3641" to i64
  %".3642" = load i32, ptr %"R7"
  %"zext.367" = zext i32 %".3642" to i64
  %"shl.195" = shl i64 %"zext.367", 32
  %"or.181" = or i64 %"shl.195", %"zext.366"
  %".3643" = inttoptr i64 %"or.181" to ptr
  %".3644" = ptrtoint ptr %".3643" to i64
  %".3645" = add i64 %".3644", 0
  %"for_LDG.176" = inttoptr i64 %".3645" to ptr
  %".3646" = load float, ptr %"for_LDG.176"
  %".3647" = bitcast ptr %"R12" to ptr
  store float %".3646", ptr %".3647"
  ; LDG.E.SYS R23, [R8]
  %".3650" = load i32, ptr %"R8"
  %"zext.368" = zext i32 %".3650" to i64
  %".3651" = load i32, ptr %"R9"
  %"zext.369" = zext i32 %".3651" to i64
  %"shl.196" = shl i64 %"zext.369", 32
  %"or.182" = or i64 %"shl.196", %"zext.368"
  %".3652" = inttoptr i64 %"or.182" to ptr
  %".3653" = ptrtoint ptr %".3652" to i64
  %".3654" = add i64 %".3653", 0
  %"for_LDG.177" = inttoptr i64 %".3654" to ptr
  %".3655" = load float, ptr %"for_LDG.177"
  %".3656" = bitcast ptr %"R23" to ptr
  store float %".3655", ptr %".3656"
  ; LDG.E.SYS R22, [R10]
  %".3659" = load i32, ptr %"R10"
  %"zext.370" = zext i32 %".3659" to i64
  %".3660" = load i32, ptr %"R11"
  %"zext.371" = zext i32 %".3660" to i64
  %"shl.197" = shl i64 %"zext.371", 32
  %"or.183" = or i64 %"shl.197", %"zext.370"
  %".3661" = inttoptr i64 %"or.183" to ptr
  %".3662" = ptrtoint ptr %".3661" to i64
  %".3663" = add i64 %".3662", 0
  %"for_LDG.178" = inttoptr i64 %".3663" to ptr
  %".3664" = load float, ptr %"for_LDG.178"
  %".3665" = bitcast ptr %"R22" to ptr
  store float %".3664", ptr %".3665"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".3668" = load i32, ptr %"R15"
  %".3669" = load i1, ptr %"PT"
  %"cmp.32" = icmp ne i32 %".3668", 1
  %".3670" = and i1 %"cmp.32", %".3669"
  ; FFMA R44, R13, R12, R44
  %".3672" = load float, ptr %"R13"
  %".3673" = load float, ptr %"R12"
  %".3674" = load float, ptr %"R44"
  %"fmul.160" = fmul float %".3672", %".3673"
  %"fadd.135" = fadd float %"fmul.160", %".3674"
  %".3675" = bitcast ptr %"R44" to ptr
  store float %"fadd.135", ptr %".3675"
  ; FFMA R56, R12.reuse, R23, R56
  %".3678" = load float, ptr %"R12"
  %".3679" = load float, ptr %"R23"
  %".3680" = load float, ptr %"R56"
  %"fmul.161" = fmul float %".3678", %".3679"
  %"fadd.136" = fadd float %"fmul.161", %".3680"
  %".3681" = bitcast ptr %"R56" to ptr
  store float %"fadd.136", ptr %".3681"
  ; FFMA R21, R12, R22, R21
  %".3684" = load float, ptr %"R12"
  %".3685" = load float, ptr %"R22"
  %".3686" = load float, ptr %"R21"
  %"fmul.162" = fmul float %".3684", %".3685"
  %"fadd.137" = fadd float %"fmul.162", %".3686"
  %".3687" = bitcast ptr %"R21" to ptr
  store float %"fadd.137", ptr %".3687"
  ; @!P0 BRA `(.L_x_25)
  %".3690" = load i1, ptr %"P0"
  %".3691" = icmp eq i1 %".3690", 1
  br i1 %".3691", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".3694" = load i32, ptr %"R15"
  %".3695" = load i1, ptr %"PT"
  %"cmp.33" = icmp ne i32 %".3694", 2
  %".3696" = and i1 %"cmp.33", %".3695"
  ; LDG.E.SYS R13, [R4+0x4]
  %".3698" = load i32, ptr %"R4"
  %"zext.372" = zext i32 %".3698" to i64
  %".3699" = load i32, ptr %"R5"
  %"zext.373" = zext i32 %".3699" to i64
  %"shl.198" = shl i64 %"zext.373", 32
  %"or.184" = or i64 %"shl.198", %"zext.372"
  %".3700" = inttoptr i64 %"or.184" to ptr
  %".3701" = ptrtoint ptr %".3700" to i64
  %".3702" = add i64 %".3701", 4
  %"for_LDG.179" = inttoptr i64 %".3702" to ptr
  %".3703" = load float, ptr %"for_LDG.179"
  %".3704" = bitcast ptr %"R13" to ptr
  store float %".3703", ptr %".3704"
  ; LDG.E.SYS R12, [R6+0x4]
  %".3707" = load i32, ptr %"R6"
  %"zext.374" = zext i32 %".3707" to i64
  %".3708" = load i32, ptr %"R7"
  %"zext.375" = zext i32 %".3708" to i64
  %"shl.199" = shl i64 %"zext.375", 32
  %"or.185" = or i64 %"shl.199", %"zext.374"
  %".3709" = inttoptr i64 %"or.185" to ptr
  %".3710" = ptrtoint ptr %".3709" to i64
  %".3711" = add i64 %".3710", 4
  %"for_LDG.180" = inttoptr i64 %".3711" to ptr
  %".3712" = load float, ptr %"for_LDG.180"
  %".3713" = bitcast ptr %"R12" to ptr
  store float %".3712", ptr %".3713"
  ; LDG.E.SYS R23, [R8+0x4]
  %".3716" = load i32, ptr %"R8"
  %"zext.376" = zext i32 %".3716" to i64
  %".3717" = load i32, ptr %"R9"
  %"zext.377" = zext i32 %".3717" to i64
  %"shl.200" = shl i64 %"zext.377", 32
  %"or.186" = or i64 %"shl.200", %"zext.376"
  %".3718" = inttoptr i64 %"or.186" to ptr
  %".3719" = ptrtoint ptr %".3718" to i64
  %".3720" = add i64 %".3719", 4
  %"for_LDG.181" = inttoptr i64 %".3720" to ptr
  %".3721" = load float, ptr %"for_LDG.181"
  %".3722" = bitcast ptr %"R23" to ptr
  store float %".3721", ptr %".3722"
  ; LDG.E.SYS R22, [R10+0x4]
  %".3725" = load i32, ptr %"R10"
  %"zext.378" = zext i32 %".3725" to i64
  %".3726" = load i32, ptr %"R11"
  %"zext.379" = zext i32 %".3726" to i64
  %"shl.201" = shl i64 %"zext.379", 32
  %"or.187" = or i64 %"shl.201", %"zext.378"
  %".3727" = inttoptr i64 %"or.187" to ptr
  %".3728" = ptrtoint ptr %".3727" to i64
  %".3729" = add i64 %".3728", 4
  %"for_LDG.182" = inttoptr i64 %".3729" to ptr
  %".3730" = load float, ptr %"for_LDG.182"
  %".3731" = bitcast ptr %"R22" to ptr
  store float %".3730", ptr %".3731"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".3734" = load i1, ptr %"P0"
  %".3735" = icmp ne i1 %".3734", 1
  br i1 %".3735", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  %".3738" = load i32, ptr %"R4"
  %"zext.380" = zext i32 %".3738" to i64
  %".3739" = load i32, ptr %"R5"
  %"zext.381" = zext i32 %".3739" to i64
  %"shl.202" = shl i64 %"zext.381", 32
  %"or.188" = or i64 %"shl.202", %"zext.380"
  %".3740" = inttoptr i64 %"or.188" to ptr
  %".3741" = ptrtoint ptr %".3740" to i64
  %".3742" = add i64 %".3741", 8
  %"for_LDG.183" = inttoptr i64 %".3742" to ptr
  %".3743" = load float, ptr %"for_LDG.183"
  %".3744" = bitcast ptr %"R25" to ptr
  store float %".3743", ptr %".3744"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".3749" = load i1, ptr %"P0"
  %".3750" = icmp ne i1 %".3749", 1
  br i1 %".3750", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  %".3753" = load i32, ptr %"R6"
  %"zext.382" = zext i32 %".3753" to i64
  %".3754" = load i32, ptr %"R7"
  %"zext.383" = zext i32 %".3754" to i64
  %"shl.203" = shl i64 %"zext.383", 32
  %"or.189" = or i64 %"shl.203", %"zext.382"
  %".3755" = inttoptr i64 %"or.189" to ptr
  %".3756" = ptrtoint ptr %".3755" to i64
  %".3757" = add i64 %".3756", 8
  %"for_LDG.184" = inttoptr i64 %".3757" to ptr
  %".3758" = load float, ptr %"for_LDG.184"
  %".3759" = bitcast ptr %"R24" to ptr
  store float %".3758", ptr %".3759"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".3764" = load i1, ptr %"P0"
  %".3765" = icmp ne i1 %".3764", 1
  br i1 %".3765", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  %".3768" = load i32, ptr %"R8"
  %"zext.384" = zext i32 %".3768" to i64
  %".3769" = load i32, ptr %"R9"
  %"zext.385" = zext i32 %".3769" to i64
  %"shl.204" = shl i64 %"zext.385", 32
  %"or.190" = or i64 %"shl.204", %"zext.384"
  %".3770" = inttoptr i64 %"or.190" to ptr
  %".3771" = ptrtoint ptr %".3770" to i64
  %".3772" = add i64 %".3771", 8
  %"for_LDG.185" = inttoptr i64 %".3772" to ptr
  %".3773" = load float, ptr %"for_LDG.185"
  %".3774" = bitcast ptr %"R35" to ptr
  store float %".3773", ptr %".3774"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".3779" = load i1, ptr %"P0"
  %".3780" = icmp ne i1 %".3779", 1
  br i1 %".3780", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  %".3783" = load i32, ptr %"R10"
  %"zext.386" = zext i32 %".3783" to i64
  %".3784" = load i32, ptr %"R11"
  %"zext.387" = zext i32 %".3784" to i64
  %"shl.205" = shl i64 %"zext.387", 32
  %"or.191" = or i64 %"shl.205", %"zext.386"
  %".3785" = inttoptr i64 %"or.191" to ptr
  %".3786" = ptrtoint ptr %".3785" to i64
  %".3787" = add i64 %".3786", 8
  %"for_LDG.186" = inttoptr i64 %".3787" to ptr
  %".3788" = load float, ptr %"for_LDG.186"
  %".3789" = bitcast ptr %"R34" to ptr
  store float %".3788", ptr %".3789"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".3794" = load float, ptr %"R13"
  %".3795" = load float, ptr %"R12"
  %".3796" = load float, ptr %"R44"
  %"fmul.163" = fmul float %".3794", %".3795"
  %"fadd.138" = fadd float %"fmul.163", %".3796"
  %".3797" = bitcast ptr %"R44" to ptr
  store float %"fadd.138", ptr %".3797"
  ; FFMA R56, R12.reuse, R23, R56
  %".3800" = load float, ptr %"R12"
  %".3801" = load float, ptr %"R23"
  %".3802" = load float, ptr %"R56"
  %"fmul.164" = fmul float %".3800", %".3801"
  %"fadd.139" = fadd float %"fmul.164", %".3802"
  %".3803" = bitcast ptr %"R56" to ptr
  store float %"fadd.139", ptr %".3803"
  ; FFMA R21, R12, R22, R21
  %".3806" = load float, ptr %"R12"
  %".3807" = load float, ptr %"R22"
  %".3808" = load float, ptr %"R21"
  %"fmul.165" = fmul float %".3806", %".3807"
  %"fadd.140" = fadd float %"fmul.165", %".3808"
  %".3809" = bitcast ptr %"R21" to ptr
  store float %"fadd.140", ptr %".3809"
  ; @P0 FFMA R44, R25, R24, R44
  %".3812" = load i1, ptr %"P0"
  %".3813" = icmp ne i1 %".3812", 1
  br i1 %".3813", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".3816" = load float, ptr %"R25"
  %".3817" = load float, ptr %"R24"
  %".3818" = load float, ptr %"R44"
  %"fmul.166" = fmul float %".3816", %".3817"
  %"fadd.141" = fadd float %"fmul.166", %".3818"
  %".3819" = bitcast ptr %"R44" to ptr
  store float %"fadd.141", ptr %".3819"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".3824" = load i1, ptr %"P0"
  %".3825" = icmp ne i1 %".3824", 1
  br i1 %".3825", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".3828" = load float, ptr %"R24"
  %".3829" = load float, ptr %"R35"
  %".3830" = load float, ptr %"R56"
  %"fmul.167" = fmul float %".3828", %".3829"
  %"fadd.142" = fadd float %"fmul.167", %".3830"
  %".3831" = bitcast ptr %"R56" to ptr
  store float %"fadd.142", ptr %".3831"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".3836" = load i1, ptr %"P0"
  %".3837" = icmp ne i1 %".3836", 1
  br i1 %".3837", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".3840" = load float, ptr %"R24"
  %".3841" = load float, ptr %"R34"
  %".3842" = load float, ptr %"R21"
  %"fmul.168" = fmul float %".3840", %".3841"
  %"fadd.143" = fadd float %"fmul.168", %".3842"
  %".3843" = bitcast ptr %"R21" to ptr
  store float %"fadd.143", ptr %".3843"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".3848" = load i1, ptr %"P4"
  %".3849" = icmp eq i1 %".3848", 1
  br i1 %".3849", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".3852" = load i32, ptr %"R18"
  %".3853" = load i1, ptr %"PT"
  %"cmp.34" = icmp sge i32 %".3852", 3
  %".3854" = and i1 %"cmp.34", %".3853"
  ; MOV R23, RZ
  %".3856" = load i32, ptr %"RZ"
  store i32 %".3856", ptr %"R23"
  ; @!P0 BRA `(.L_x_27)
  %".3859" = load i1, ptr %"P0"
  %".3860" = icmp eq i1 %".3859", 1
  br i1 %".3860", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".3863" = load i32, ptr %"R20"
  %".3864" = load i1, ptr %"PT"
  %"cmp.35" = icmp sgt i32 %".3863", 0
  %".3865" = and i1 %"cmp.35", %".3864"
  ; MOV R23, RZ
  %".3867" = load i32, ptr %"RZ"
  store i32 %".3867", ptr %"R23"
  ; MOV R22, R20
  %".3870" = load i32, ptr %"R20"
  store i32 %".3870", ptr %"R22"
  ; @!P0 BRA `(.L_x_28)
  %".3873" = load i1, ptr %"P0"
  %".3874" = icmp eq i1 %".3873", 1
  br i1 %".3874", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".3877" = load i32, ptr %"R22"
  %".3878" = load i1, ptr %"PT"
  %"cmp.36" = icmp sgt i32 %".3877", 12
  %".3879" = and i1 %"cmp.36", %".3878"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".3881" = and i1 1, 1
  %".3882" = or i1 %".3881", 1
  ; @!P1 BRA `(.L_x_29)
  %".3884" = load i1, ptr %"P1"
  %".3885" = icmp eq i1 %".3884", 1
  br i1 %".3885", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3888" = xor i1 1, 1
  %".3889" = and i1 %".3888", 1
  %".3890" = and i1 %".3889", 1
  br label %".L_x_30"
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".3893" = load i32, ptr %"R0"
  %".3894" = load i32, ptr %"R23"
  %"add.180" = add i32 %".3893", %".3894"
  %"add.181" = add i32 %"add.180", 0
  store i32 %"add.181", ptr %"R25"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".3899" = load i32, ptr %"R2"
  %".3900" = load i32, ptr %"R25"
  %"mul.62" = mul i32 %".3899", 3
  %"add.182" = add i32 %"mul.62", %".3900"
  store i32 %"add.182", ptr %"R35"
  ; LEA R25, R2, R25, 0x2
  %".3903" = load i32, ptr %"R2"
  %".3904" = load i32, ptr %"R25"
  %"shl.206" = shl i32 %".3903", 2
  %"add.183" = add i32 %"shl.206", %".3904"
  store i32 %"add.183", ptr %"R25"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".3907" = load i32, ptr %"R23"
  %".3908" = load i32, ptr %"R24"
  %"mul.63" = mul i32 %".3907", %".3908"
  %"add.184" = add i32 %"mul.63", %"Arg_3"
  store i32 %"add.184", ptr %"R36"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".3911" = load i32, ptr %"R35"
  %".3912" = load i32, ptr %"R24"
  %"mul.64" = mul i32 %".3911", %".3912"
  %"add.185" = add i32 %"mul.64", %"Arg_4"
  store i32 %"add.185", ptr %"R8"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".3915" = load i32, ptr %"R25"
  %".3916" = load i32, ptr %"R24"
  %"mul.65" = mul i32 %".3915", %".3916"
  %"add.186" = add i32 %"mul.65", %"Arg_4"
  store i32 %"add.186", ptr %"R12"
  ; LDG.E.SYS R39, [R36]
  %".3919" = load i32, ptr %"R36"
  %"zext.388" = zext i32 %".3919" to i64
  %".3920" = load i32, ptr %"R37"
  %"zext.389" = zext i32 %".3920" to i64
  %"shl.207" = shl i64 %"zext.389", 32
  %"or.192" = or i64 %"shl.207", %"zext.388"
  %".3921" = inttoptr i64 %"or.192" to ptr
  %".3922" = ptrtoint ptr %".3921" to i64
  %".3923" = add i64 %".3922", 0
  %"for_LDG.187" = inttoptr i64 %".3923" to ptr
  %".3924" = load float, ptr %"for_LDG.187"
  %".3925" = bitcast ptr %"R39" to ptr
  store float %".3924", ptr %".3925"
  ; LDG.E.SYS R41, [R8]
  %".3928" = load i32, ptr %"R8"
  %"zext.390" = zext i32 %".3928" to i64
  %".3929" = load i32, ptr %"R9"
  %"zext.391" = zext i32 %".3929" to i64
  %"shl.208" = shl i64 %"zext.391", 32
  %"or.193" = or i64 %"shl.208", %"zext.390"
  %".3930" = inttoptr i64 %"or.193" to ptr
  %".3931" = ptrtoint ptr %".3930" to i64
  %".3932" = add i64 %".3931", 0
  %"for_LDG.188" = inttoptr i64 %".3932" to ptr
  %".3933" = load float, ptr %"for_LDG.188"
  %".3934" = bitcast ptr %"R41" to ptr
  store float %".3933", ptr %".3934"
  ; LDG.E.SYS R40, [R12]
  %".3937" = load i32, ptr %"R12"
  %"zext.392" = zext i32 %".3937" to i64
  %".3938" = load i32, ptr %"R13"
  %"zext.393" = zext i32 %".3938" to i64
  %"shl.209" = shl i64 %"zext.393", 32
  %"or.194" = or i64 %"shl.209", %"zext.392"
  %".3939" = inttoptr i64 %"or.194" to ptr
  %".3940" = ptrtoint ptr %".3939" to i64
  %".3941" = add i64 %".3940", 0
  %"for_LDG.189" = inttoptr i64 %".3941" to ptr
  %".3942" = load float, ptr %"for_LDG.189"
  %".3943" = bitcast ptr %"R40" to ptr
  store float %".3942", ptr %".3943"
  ; LDG.E.SYS R52, [R36+0x4]
  %".3946" = load i32, ptr %"R36"
  %"zext.394" = zext i32 %".3946" to i64
  %".3947" = load i32, ptr %"R37"
  %"zext.395" = zext i32 %".3947" to i64
  %"shl.210" = shl i64 %"zext.395", 32
  %"or.195" = or i64 %"shl.210", %"zext.394"
  %".3948" = inttoptr i64 %"or.195" to ptr
  %".3949" = ptrtoint ptr %".3948" to i64
  %".3950" = add i64 %".3949", 4
  %"for_LDG.190" = inttoptr i64 %".3950" to ptr
  %".3951" = load float, ptr %"for_LDG.190"
  %".3952" = bitcast ptr %"R52" to ptr
  store float %".3951", ptr %".3952"
  ; LDG.E.SYS R53, [R8+0x4]
  %".3955" = load i32, ptr %"R8"
  %"zext.396" = zext i32 %".3955" to i64
  %".3956" = load i32, ptr %"R9"
  %"zext.397" = zext i32 %".3956" to i64
  %"shl.211" = shl i64 %"zext.397", 32
  %"or.196" = or i64 %"shl.211", %"zext.396"
  %".3957" = inttoptr i64 %"or.196" to ptr
  %".3958" = ptrtoint ptr %".3957" to i64
  %".3959" = add i64 %".3958", 4
  %"for_LDG.191" = inttoptr i64 %".3959" to ptr
  %".3960" = load float, ptr %"for_LDG.191"
  %".3961" = bitcast ptr %"R53" to ptr
  store float %".3960", ptr %".3961"
  ; LDG.E.SYS R55, [R12+0x4]
  %".3964" = load i32, ptr %"R12"
  %"zext.398" = zext i32 %".3964" to i64
  %".3965" = load i32, ptr %"R13"
  %"zext.399" = zext i32 %".3965" to i64
  %"shl.212" = shl i64 %"zext.399", 32
  %"or.197" = or i64 %"shl.212", %"zext.398"
  %".3966" = inttoptr i64 %"or.197" to ptr
  %".3967" = ptrtoint ptr %".3966" to i64
  %".3968" = add i64 %".3967", 4
  %"for_LDG.192" = inttoptr i64 %".3968" to ptr
  %".3969" = load float, ptr %"for_LDG.192"
  %".3970" = bitcast ptr %"R55" to ptr
  store float %".3969", ptr %".3970"
  ; IADD3 R11, R23, 0x4, RZ
  %".3973" = load i32, ptr %"R23"
  %"add.187" = add i32 %".3973", 4
  %"add.188" = add i32 %"add.187", 0
  store i32 %"add.188", ptr %"R11"
  ; LDG.E.SYS R50, [R36+0x8]
  %".3976" = load i32, ptr %"R36"
  %"zext.400" = zext i32 %".3976" to i64
  %".3977" = load i32, ptr %"R37"
  %"zext.401" = zext i32 %".3977" to i64
  %"shl.213" = shl i64 %"zext.401", 32
  %"or.198" = or i64 %"shl.213", %"zext.400"
  %".3978" = inttoptr i64 %"or.198" to ptr
  %".3979" = ptrtoint ptr %".3978" to i64
  %".3980" = add i64 %".3979", 8
  %"for_LDG.193" = inttoptr i64 %".3980" to ptr
  %".3981" = load float, ptr %"for_LDG.193"
  %".3982" = bitcast ptr %"R50" to ptr
  store float %".3981", ptr %".3982"
  ; IADD3 R7, R35, 0x4, RZ
  %".3985" = load i32, ptr %"R35"
  %"add.189" = add i32 %".3985", 4
  %"add.190" = add i32 %"add.189", 0
  store i32 %"add.190", ptr %"R7"
  ; LDG.E.SYS R43, [R8+0x8]
  %".3988" = load i32, ptr %"R8"
  %"zext.402" = zext i32 %".3988" to i64
  %".3989" = load i32, ptr %"R9"
  %"zext.403" = zext i32 %".3989" to i64
  %"shl.214" = shl i64 %"zext.403", 32
  %"or.199" = or i64 %"shl.214", %"zext.402"
  %".3990" = inttoptr i64 %"or.199" to ptr
  %".3991" = ptrtoint ptr %".3990" to i64
  %".3992" = add i64 %".3991", 8
  %"for_LDG.194" = inttoptr i64 %".3992" to ptr
  %".3993" = load float, ptr %"for_LDG.194"
  %".3994" = bitcast ptr %"R43" to ptr
  store float %".3993", ptr %".3994"
  ; IADD3 R5, R25, 0x4, RZ
  %".3997" = load i32, ptr %"R25"
  %"add.191" = add i32 %".3997", 4
  %"add.192" = add i32 %"add.191", 0
  store i32 %"add.192", ptr %"R5"
  ; LDG.E.SYS R51, [R12+0x8]
  %".4000" = load i32, ptr %"R12"
  %"zext.404" = zext i32 %".4000" to i64
  %".4001" = load i32, ptr %"R13"
  %"zext.405" = zext i32 %".4001" to i64
  %"shl.215" = shl i64 %"zext.405", 32
  %"or.200" = or i64 %"shl.215", %"zext.404"
  %".4002" = inttoptr i64 %"or.200" to ptr
  %".4003" = ptrtoint ptr %".4002" to i64
  %".4004" = add i64 %".4003", 8
  %"for_LDG.195" = inttoptr i64 %".4004" to ptr
  %".4005" = load float, ptr %"for_LDG.195"
  %".4006" = bitcast ptr %"R51" to ptr
  store float %".4005", ptr %".4006"
  ; LDG.E.SYS R47, [R36+0xc]
  %".4009" = load i32, ptr %"R36"
  %"zext.406" = zext i32 %".4009" to i64
  %".4010" = load i32, ptr %"R37"
  %"zext.407" = zext i32 %".4010" to i64
  %"shl.216" = shl i64 %"zext.407", 32
  %"or.201" = or i64 %"shl.216", %"zext.406"
  %".4011" = inttoptr i64 %"or.201" to ptr
  %".4012" = ptrtoint ptr %".4011" to i64
  %".4013" = add i64 %".4012", 12
  %"for_LDG.196" = inttoptr i64 %".4013" to ptr
  %".4014" = load float, ptr %"for_LDG.196"
  %".4015" = bitcast ptr %"R47" to ptr
  store float %".4014", ptr %".4015"
  ; LDG.E.SYS R54, [R8+0xc]
  %".4018" = load i32, ptr %"R8"
  %"zext.408" = zext i32 %".4018" to i64
  %".4019" = load i32, ptr %"R9"
  %"zext.409" = zext i32 %".4019" to i64
  %"shl.217" = shl i64 %"zext.409", 32
  %"or.202" = or i64 %"shl.217", %"zext.408"
  %".4020" = inttoptr i64 %"or.202" to ptr
  %".4021" = ptrtoint ptr %".4020" to i64
  %".4022" = add i64 %".4021", 12
  %"for_LDG.197" = inttoptr i64 %".4022" to ptr
  %".4023" = load float, ptr %"for_LDG.197"
  %".4024" = bitcast ptr %"R54" to ptr
  store float %".4023", ptr %".4024"
  ; LDG.E.SYS R58, [R12+0xc]
  %".4027" = load i32, ptr %"R12"
  %"zext.410" = zext i32 %".4027" to i64
  %".4028" = load i32, ptr %"R13"
  %"zext.411" = zext i32 %".4028" to i64
  %"shl.218" = shl i64 %"zext.411", 32
  %"or.203" = or i64 %"shl.218", %"zext.410"
  %".4029" = inttoptr i64 %"or.203" to ptr
  %".4030" = ptrtoint ptr %".4029" to i64
  %".4031" = add i64 %".4030", 12
  %"for_LDG.198" = inttoptr i64 %".4031" to ptr
  %".4032" = load float, ptr %"for_LDG.198"
  %".4033" = bitcast ptr %"R58" to ptr
  store float %".4032", ptr %".4033"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".4036" = load i32, ptr %"R11"
  %".4037" = load i32, ptr %"R24"
  %"mul.66" = mul i32 %".4036", %".4037"
  %"add.193" = add i32 %"mul.66", %"Arg_3"
  store i32 %"add.193", ptr %"R10"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".4040" = load i32, ptr %"R7"
  %".4041" = load i32, ptr %"R24"
  %"mul.67" = mul i32 %".4040", %".4041"
  %"add.194" = add i32 %"mul.67", %"Arg_4"
  store i32 %"add.194", ptr %"R6"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".4044" = load i32, ptr %"R5"
  %".4045" = load i32, ptr %"R24"
  %"mul.68" = mul i32 %".4044", %".4045"
  %"add.195" = add i32 %"mul.68", %"Arg_4"
  store i32 %"add.195", ptr %"R4"
  ; LDG.E.SYS R46, [R10]
  %".4048" = load i32, ptr %"R10"
  %"zext.412" = zext i32 %".4048" to i64
  %".4049" = load i32, ptr %"R11"
  %"zext.413" = zext i32 %".4049" to i64
  %"shl.219" = shl i64 %"zext.413", 32
  %"or.204" = or i64 %"shl.219", %"zext.412"
  %".4050" = inttoptr i64 %"or.204" to ptr
  %".4051" = ptrtoint ptr %".4050" to i64
  %".4052" = add i64 %".4051", 0
  %"for_LDG.199" = inttoptr i64 %".4052" to ptr
  %".4053" = load float, ptr %"for_LDG.199"
  %".4054" = bitcast ptr %"R46" to ptr
  store float %".4053", ptr %".4054"
  ; LDG.E.SYS R42, [R6]
  %".4057" = load i32, ptr %"R6"
  %"zext.414" = zext i32 %".4057" to i64
  %".4058" = load i32, ptr %"R7"
  %"zext.415" = zext i32 %".4058" to i64
  %"shl.220" = shl i64 %"zext.415", 32
  %"or.205" = or i64 %"shl.220", %"zext.414"
  %".4059" = inttoptr i64 %"or.205" to ptr
  %".4060" = ptrtoint ptr %".4059" to i64
  %".4061" = add i64 %".4060", 0
  %"for_LDG.200" = inttoptr i64 %".4061" to ptr
  %".4062" = load float, ptr %"for_LDG.200"
  %".4063" = bitcast ptr %"R42" to ptr
  store float %".4062", ptr %".4063"
  ; LDG.E.SYS R45, [R4]
  %".4066" = load i32, ptr %"R4"
  %"zext.416" = zext i32 %".4066" to i64
  %".4067" = load i32, ptr %"R5"
  %"zext.417" = zext i32 %".4067" to i64
  %"shl.221" = shl i64 %"zext.417", 32
  %"or.206" = or i64 %"shl.221", %"zext.416"
  %".4068" = inttoptr i64 %"or.206" to ptr
  %".4069" = ptrtoint ptr %".4068" to i64
  %".4070" = add i64 %".4069", 0
  %"for_LDG.201" = inttoptr i64 %".4070" to ptr
  %".4071" = load float, ptr %"for_LDG.201"
  %".4072" = bitcast ptr %"R45" to ptr
  store float %".4071", ptr %".4072"
  ; LDG.E.SYS R34, [R10+0x4]
  %".4075" = load i32, ptr %"R10"
  %"zext.418" = zext i32 %".4075" to i64
  %".4076" = load i32, ptr %"R11"
  %"zext.419" = zext i32 %".4076" to i64
  %"shl.222" = shl i64 %"zext.419", 32
  %"or.207" = or i64 %"shl.222", %"zext.418"
  %".4077" = inttoptr i64 %"or.207" to ptr
  %".4078" = ptrtoint ptr %".4077" to i64
  %".4079" = add i64 %".4078", 4
  %"for_LDG.202" = inttoptr i64 %".4079" to ptr
  %".4080" = load float, ptr %"for_LDG.202"
  %".4081" = bitcast ptr %"R34" to ptr
  store float %".4080", ptr %".4081"
  ; LDG.E.SYS R37, [R6+0x4]
  %".4084" = load i32, ptr %"R6"
  %"zext.420" = zext i32 %".4084" to i64
  %".4085" = load i32, ptr %"R7"
  %"zext.421" = zext i32 %".4085" to i64
  %"shl.223" = shl i64 %"zext.421", 32
  %"or.208" = or i64 %"shl.223", %"zext.420"
  %".4086" = inttoptr i64 %"or.208" to ptr
  %".4087" = ptrtoint ptr %".4086" to i64
  %".4088" = add i64 %".4087", 4
  %"for_LDG.203" = inttoptr i64 %".4088" to ptr
  %".4089" = load float, ptr %"for_LDG.203"
  %".4090" = bitcast ptr %"R37" to ptr
  store float %".4089", ptr %".4090"
  ; IADD3 R9, R23, 0x8, RZ
  %".4093" = load i32, ptr %"R23"
  %"add.196" = add i32 %".4093", 8
  %"add.197" = add i32 %"add.196", 0
  store i32 %"add.197", ptr %"R9"
  ; LDG.E.SYS R36, [R10+0x8]
  %".4096" = load i32, ptr %"R10"
  %"zext.422" = zext i32 %".4096" to i64
  %".4097" = load i32, ptr %"R11"
  %"zext.423" = zext i32 %".4097" to i64
  %"shl.224" = shl i64 %"zext.423", 32
  %"or.209" = or i64 %"shl.224", %"zext.422"
  %".4098" = inttoptr i64 %"or.209" to ptr
  %".4099" = ptrtoint ptr %".4098" to i64
  %".4100" = add i64 %".4099", 8
  %"for_LDG.204" = inttoptr i64 %".4100" to ptr
  %".4101" = load float, ptr %"for_LDG.204"
  %".4102" = bitcast ptr %"R36" to ptr
  store float %".4101", ptr %".4102"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".4105" = load i32, ptr %"R9"
  %".4106" = load i32, ptr %"R24"
  %"mul.69" = mul i32 %".4105", %".4106"
  %"add.198" = add i32 %"mul.69", %"Arg_3"
  store i32 %"add.198", ptr %"R8"
  ; LDG.E.SYS R38, [R10+0xc]
  %".4109" = load i32, ptr %"R10"
  %"zext.424" = zext i32 %".4109" to i64
  %".4110" = load i32, ptr %"R11"
  %"zext.425" = zext i32 %".4110" to i64
  %"shl.225" = shl i64 %"zext.425", 32
  %"or.210" = or i64 %"shl.225", %"zext.424"
  %".4111" = inttoptr i64 %"or.210" to ptr
  %".4112" = ptrtoint ptr %".4111" to i64
  %".4113" = add i64 %".4112", 12
  %"for_LDG.205" = inttoptr i64 %".4113" to ptr
  %".4114" = load float, ptr %"for_LDG.205"
  %".4115" = bitcast ptr %"R38" to ptr
  store float %".4114", ptr %".4115"
  ; IADD3 R13, R23, 0xc, RZ
  %".4118" = load i32, ptr %"R23"
  %"add.199" = add i32 %".4118", 12
  %"add.200" = add i32 %"add.199", 0
  store i32 %"add.200", ptr %"R13"
  ; IADD3 R11, R35, 0x8, RZ
  %".4121" = load i32, ptr %"R35"
  %"add.201" = add i32 %".4121", 8
  %"add.202" = add i32 %"add.201", 0
  store i32 %"add.202", ptr %"R11"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".4124" = load i32, ptr %"R13"
  %".4125" = load i32, ptr %"R24"
  %"mul.70" = mul i32 %".4124", %".4125"
  %"add.203" = add i32 %"mul.70", %"Arg_3"
  store i32 %"add.203", ptr %"R12"
  ; FFMA R57, R41, R39, R44
  %".4128" = load float, ptr %"R41"
  %".4129" = load float, ptr %"R39"
  %".4130" = load float, ptr %"R44"
  %"fmul.169" = fmul float %".4128", %".4129"
  %"fadd.144" = fadd float %"fmul.169", %".4130"
  %".4131" = bitcast ptr %"R57" to ptr
  store float %"fadd.144", ptr %".4131"
  ; LDG.E.SYS R41, [R8]
  %".4134" = load i32, ptr %"R8"
  %"zext.426" = zext i32 %".4134" to i64
  %".4135" = load i32, ptr %"R9"
  %"zext.427" = zext i32 %".4135" to i64
  %"shl.226" = shl i64 %"zext.427", 32
  %"or.211" = or i64 %"shl.226", %"zext.426"
  %".4136" = inttoptr i64 %"or.211" to ptr
  %".4137" = ptrtoint ptr %".4136" to i64
  %".4138" = add i64 %".4137", 0
  %"for_LDG.206" = inttoptr i64 %".4138" to ptr
  %".4139" = load float, ptr %"for_LDG.206"
  %".4140" = bitcast ptr %"R41" to ptr
  store float %".4139", ptr %".4140"
  ; FFMA R56, R39, R40, R56
  %".4143" = load float, ptr %"R39"
  %".4144" = load float, ptr %"R40"
  %".4145" = load float, ptr %"R56"
  %"fmul.170" = fmul float %".4143", %".4144"
  %"fadd.145" = fadd float %"fmul.170", %".4145"
  %".4146" = bitcast ptr %"R56" to ptr
  store float %"fadd.145", ptr %".4146"
  ; LDG.E.SYS R40, [R8+0x4]
  %".4149" = load i32, ptr %"R8"
  %"zext.428" = zext i32 %".4149" to i64
  %".4150" = load i32, ptr %"R9"
  %"zext.429" = zext i32 %".4150" to i64
  %"shl.227" = shl i64 %"zext.429", 32
  %"or.212" = or i64 %"shl.227", %"zext.428"
  %".4151" = inttoptr i64 %"or.212" to ptr
  %".4152" = ptrtoint ptr %".4151" to i64
  %".4153" = add i64 %".4152", 4
  %"for_LDG.207" = inttoptr i64 %".4153" to ptr
  %".4154" = load float, ptr %"for_LDG.207"
  %".4155" = bitcast ptr %"R40" to ptr
  store float %".4154", ptr %".4155"
  ; LDG.E.SYS R39, [R8+0x8]
  %".4158" = load i32, ptr %"R8"
  %"zext.430" = zext i32 %".4158" to i64
  %".4159" = load i32, ptr %"R9"
  %"zext.431" = zext i32 %".4159" to i64
  %"shl.228" = shl i64 %"zext.431", 32
  %"or.213" = or i64 %"shl.228", %"zext.430"
  %".4160" = inttoptr i64 %"or.213" to ptr
  %".4161" = ptrtoint ptr %".4160" to i64
  %".4162" = add i64 %".4161", 8
  %"for_LDG.208" = inttoptr i64 %".4162" to ptr
  %".4163" = load float, ptr %"for_LDG.208"
  %".4164" = bitcast ptr %"R39" to ptr
  store float %".4163", ptr %".4164"
  ; FFMA R57, R53, R52, R57
  %".4167" = load float, ptr %"R53"
  %".4168" = load float, ptr %"R52"
  %".4169" = load float, ptr %"R57"
  %"fmul.171" = fmul float %".4167", %".4168"
  %"fadd.146" = fadd float %"fmul.171", %".4169"
  %".4170" = bitcast ptr %"R57" to ptr
  store float %"fadd.146", ptr %".4170"
  ; LDG.E.SYS R44, [R8+0xc]
  %".4173" = load i32, ptr %"R8"
  %"zext.432" = zext i32 %".4173" to i64
  %".4174" = load i32, ptr %"R9"
  %"zext.433" = zext i32 %".4174" to i64
  %"shl.229" = shl i64 %"zext.433", 32
  %"or.214" = or i64 %"shl.229", %"zext.432"
  %".4175" = inttoptr i64 %"or.214" to ptr
  %".4176" = ptrtoint ptr %".4175" to i64
  %".4177" = add i64 %".4176", 12
  %"for_LDG.209" = inttoptr i64 %".4177" to ptr
  %".4178" = load float, ptr %"for_LDG.209"
  %".4179" = bitcast ptr %"R44" to ptr
  store float %".4178", ptr %".4179"
  ; FFMA R59, R52, R55, R56
  %".4182" = load float, ptr %"R52"
  %".4183" = load float, ptr %"R55"
  %".4184" = load float, ptr %"R56"
  %"fmul.172" = fmul float %".4182", %".4183"
  %"fadd.147" = fadd float %"fmul.172", %".4184"
  %".4185" = bitcast ptr %"R59" to ptr
  store float %"fadd.147", ptr %".4185"
  ; LDG.E.SYS R55, [R12]
  %".4188" = load i32, ptr %"R12"
  %"zext.434" = zext i32 %".4188" to i64
  %".4189" = load i32, ptr %"R13"
  %"zext.435" = zext i32 %".4189" to i64
  %"shl.230" = shl i64 %"zext.435", 32
  %"or.215" = or i64 %"shl.230", %"zext.434"
  %".4190" = inttoptr i64 %"or.215" to ptr
  %".4191" = ptrtoint ptr %".4190" to i64
  %".4192" = add i64 %".4191", 0
  %"for_LDG.210" = inttoptr i64 %".4192" to ptr
  %".4193" = load float, ptr %"for_LDG.210"
  %".4194" = bitcast ptr %"R55" to ptr
  store float %".4193", ptr %".4194"
  ; LDG.E.SYS R53, [R12+0x4]
  %".4197" = load i32, ptr %"R12"
  %"zext.436" = zext i32 %".4197" to i64
  %".4198" = load i32, ptr %"R13"
  %"zext.437" = zext i32 %".4198" to i64
  %"shl.231" = shl i64 %"zext.437", 32
  %"or.216" = or i64 %"shl.231", %"zext.436"
  %".4199" = inttoptr i64 %"or.216" to ptr
  %".4200" = ptrtoint ptr %".4199" to i64
  %".4201" = add i64 %".4200", 4
  %"for_LDG.211" = inttoptr i64 %".4201" to ptr
  %".4202" = load float, ptr %"for_LDG.211"
  %".4203" = bitcast ptr %"R53" to ptr
  store float %".4202", ptr %".4203"
  ; FFMA R43, R43, R50, R57
  %".4206" = load float, ptr %"R43"
  %".4207" = load float, ptr %"R50"
  %".4208" = load float, ptr %"R57"
  %"fmul.173" = fmul float %".4206", %".4207"
  %"fadd.148" = fadd float %"fmul.173", %".4208"
  %".4209" = bitcast ptr %"R43" to ptr
  store float %"fadd.148", ptr %".4209"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".4212" = load i32, ptr %"R11"
  %".4213" = load i32, ptr %"R24"
  %"mul.71" = mul i32 %".4212", %".4213"
  %"add.204" = add i32 %"mul.71", %"Arg_4"
  store i32 %"add.204", ptr %"R8"
  ; LDG.E.SYS R52, [R12+0x8]
  %".4216" = load i32, ptr %"R12"
  %"zext.438" = zext i32 %".4216" to i64
  %".4217" = load i32, ptr %"R13"
  %"zext.439" = zext i32 %".4217" to i64
  %"shl.232" = shl i64 %"zext.439", 32
  %"or.217" = or i64 %"shl.232", %"zext.438"
  %".4218" = inttoptr i64 %"or.217" to ptr
  %".4219" = ptrtoint ptr %".4218" to i64
  %".4220" = add i64 %".4219", 8
  %"for_LDG.212" = inttoptr i64 %".4220" to ptr
  %".4221" = load float, ptr %"for_LDG.212"
  %".4222" = bitcast ptr %"R52" to ptr
  store float %".4221", ptr %".4222"
  ; FFMA R51, R50, R51, R59
  %".4225" = load float, ptr %"R50"
  %".4226" = load float, ptr %"R51"
  %".4227" = load float, ptr %"R59"
  %"fmul.174" = fmul float %".4225", %".4226"
  %"fadd.149" = fadd float %"fmul.174", %".4227"
  %".4228" = bitcast ptr %"R51" to ptr
  store float %"fadd.149", ptr %".4228"
  ; IADD3 R57, R25, 0x8, RZ
  %".4231" = load i32, ptr %"R25"
  %"add.205" = add i32 %".4231", 8
  %"add.206" = add i32 %"add.205", 0
  store i32 %"add.206", ptr %"R57"
  ; LDG.E.SYS R59, [R4+0xc]
  %".4234" = load i32, ptr %"R4"
  %"zext.440" = zext i32 %".4234" to i64
  %".4235" = load i32, ptr %"R5"
  %"zext.441" = zext i32 %".4235" to i64
  %"shl.233" = shl i64 %"zext.441", 32
  %"or.218" = or i64 %"shl.233", %"zext.440"
  %".4236" = inttoptr i64 %"or.218" to ptr
  %".4237" = ptrtoint ptr %".4236" to i64
  %".4238" = add i64 %".4237", 12
  %"for_LDG.213" = inttoptr i64 %".4238" to ptr
  %".4239" = load float, ptr %"for_LDG.213"
  %".4240" = bitcast ptr %"R59" to ptr
  store float %".4239", ptr %".4240"
  ; FFMA R61, R54, R47, R43
  %".4243" = load float, ptr %"R54"
  %".4244" = load float, ptr %"R47"
  %".4245" = load float, ptr %"R43"
  %"fmul.175" = fmul float %".4243", %".4244"
  %"fadd.150" = fadd float %"fmul.175", %".4245"
  %".4246" = bitcast ptr %"R61" to ptr
  store float %"fadd.150", ptr %".4246"
  ; LDG.E.SYS R50, [R8]
  %".4249" = load i32, ptr %"R8"
  %"zext.442" = zext i32 %".4249" to i64
  %".4250" = load i32, ptr %"R9"
  %"zext.443" = zext i32 %".4250" to i64
  %"shl.234" = shl i64 %"zext.443", 32
  %"or.219" = or i64 %"shl.234", %"zext.442"
  %".4251" = inttoptr i64 %"or.219" to ptr
  %".4252" = ptrtoint ptr %".4251" to i64
  %".4253" = add i64 %".4252", 0
  %"for_LDG.214" = inttoptr i64 %".4253" to ptr
  %".4254" = load float, ptr %"for_LDG.214"
  %".4255" = bitcast ptr %"R50" to ptr
  store float %".4254", ptr %".4255"
  ; FFMA R58, R47, R58, R51
  %".4258" = load float, ptr %"R47"
  %".4259" = load float, ptr %"R58"
  %".4260" = load float, ptr %"R51"
  %"fmul.176" = fmul float %".4258", %".4259"
  %"fadd.151" = fadd float %"fmul.176", %".4260"
  %".4261" = bitcast ptr %"R58" to ptr
  store float %"fadd.151", ptr %".4261"
  ; LDG.E.SYS R43, [R6+0x8]
  %".4264" = load i32, ptr %"R6"
  %"zext.444" = zext i32 %".4264" to i64
  %".4265" = load i32, ptr %"R7"
  %"zext.445" = zext i32 %".4265" to i64
  %"shl.235" = shl i64 %"zext.445", 32
  %"or.220" = or i64 %"shl.235", %"zext.444"
  %".4266" = inttoptr i64 %"or.220" to ptr
  %".4267" = ptrtoint ptr %".4266" to i64
  %".4268" = add i64 %".4267", 8
  %"for_LDG.215" = inttoptr i64 %".4268" to ptr
  %".4269" = load float, ptr %"for_LDG.215"
  %".4270" = bitcast ptr %"R43" to ptr
  store float %".4269", ptr %".4270"
  ; LDG.E.SYS R47, [R4+0x4]
  %".4273" = load i32, ptr %"R4"
  %"zext.446" = zext i32 %".4273" to i64
  %".4274" = load i32, ptr %"R5"
  %"zext.447" = zext i32 %".4274" to i64
  %"shl.236" = shl i64 %"zext.447", 32
  %"or.221" = or i64 %"shl.236", %"zext.446"
  %".4275" = inttoptr i64 %"or.221" to ptr
  %".4276" = ptrtoint ptr %".4275" to i64
  %".4277" = add i64 %".4276", 4
  %"for_LDG.216" = inttoptr i64 %".4277" to ptr
  %".4278" = load float, ptr %"for_LDG.216"
  %".4279" = bitcast ptr %"R47" to ptr
  store float %".4278", ptr %".4279"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".4282" = load i32, ptr %"R57"
  %".4283" = load i32, ptr %"R24"
  %"mul.72" = mul i32 %".4282", %".4283"
  %"add.207" = add i32 %"mul.72", %"Arg_4"
  store i32 %"add.207", ptr %"R10"
  ; LDG.E.SYS R51, [R4+0x8]
  %".4286" = load i32, ptr %"R4"
  %"zext.448" = zext i32 %".4286" to i64
  %".4287" = load i32, ptr %"R5"
  %"zext.449" = zext i32 %".4287" to i64
  %"shl.237" = shl i64 %"zext.449", 32
  %"or.222" = or i64 %"shl.237", %"zext.448"
  %".4288" = inttoptr i64 %"or.222" to ptr
  %".4289" = ptrtoint ptr %".4288" to i64
  %".4290" = add i64 %".4289", 8
  %"for_LDG.217" = inttoptr i64 %".4290" to ptr
  %".4291" = load float, ptr %"for_LDG.217"
  %".4292" = bitcast ptr %"R51" to ptr
  store float %".4291", ptr %".4292"
  ; LDG.E.SYS R57, [R6+0xc]
  %".4295" = load i32, ptr %"R6"
  %"zext.450" = zext i32 %".4295" to i64
  %".4296" = load i32, ptr %"R7"
  %"zext.451" = zext i32 %".4296" to i64
  %"shl.238" = shl i64 %"zext.451", 32
  %"or.223" = or i64 %"shl.238", %"zext.450"
  %".4297" = inttoptr i64 %"or.223" to ptr
  %".4298" = ptrtoint ptr %".4297" to i64
  %".4299" = add i64 %".4298", 12
  %"for_LDG.218" = inttoptr i64 %".4299" to ptr
  %".4300" = load float, ptr %"for_LDG.218"
  %".4301" = bitcast ptr %"R57" to ptr
  store float %".4300", ptr %".4301"
  ; FFMA R42, R42, R46, R61
  %".4304" = load float, ptr %"R42"
  %".4305" = load float, ptr %"R46"
  %".4306" = load float, ptr %"R61"
  %"fmul.177" = fmul float %".4304", %".4305"
  %"fadd.152" = fadd float %"fmul.177", %".4306"
  %".4307" = bitcast ptr %"R42" to ptr
  store float %"fadd.152", ptr %".4307"
  ; IADD3 R25, R25, 0xc, RZ
  %".4310" = load i32, ptr %"R25"
  %"add.208" = add i32 %".4310", 12
  %"add.209" = add i32 %"add.208", 0
  store i32 %"add.209", ptr %"R25"
  ; LDG.E.SYS R56, [R12+0xc]
  %".4313" = load i32, ptr %"R12"
  %"zext.452" = zext i32 %".4313" to i64
  %".4314" = load i32, ptr %"R13"
  %"zext.453" = zext i32 %".4314" to i64
  %"shl.239" = shl i64 %"zext.453", 32
  %"or.224" = or i64 %"shl.239", %"zext.452"
  %".4315" = inttoptr i64 %"or.224" to ptr
  %".4316" = ptrtoint ptr %".4315" to i64
  %".4317" = add i64 %".4316", 12
  %"for_LDG.219" = inttoptr i64 %".4317" to ptr
  %".4318" = load float, ptr %"for_LDG.219"
  %".4319" = bitcast ptr %"R56" to ptr
  store float %".4318", ptr %".4319"
  ; FFMA R45, R46, R45, R58
  %".4322" = load float, ptr %"R46"
  %".4323" = load float, ptr %"R45"
  %".4324" = load float, ptr %"R58"
  %"fmul.178" = fmul float %".4322", %".4323"
  %"fadd.153" = fadd float %"fmul.178", %".4324"
  %".4325" = bitcast ptr %"R45" to ptr
  store float %"fadd.153", ptr %".4325"
  ; LDG.E.SYS R46, [R10]
  %".4328" = load i32, ptr %"R10"
  %"zext.454" = zext i32 %".4328" to i64
  %".4329" = load i32, ptr %"R11"
  %"zext.455" = zext i32 %".4329" to i64
  %"shl.240" = shl i64 %"zext.455", 32
  %"or.225" = or i64 %"shl.240", %"zext.454"
  %".4330" = inttoptr i64 %"or.225" to ptr
  %".4331" = ptrtoint ptr %".4330" to i64
  %".4332" = add i64 %".4331", 0
  %"for_LDG.220" = inttoptr i64 %".4332" to ptr
  %".4333" = load float, ptr %"for_LDG.220"
  %".4334" = bitcast ptr %"R46" to ptr
  store float %".4333", ptr %".4334"
  ; LDG.E.SYS R61, [R8+0x4]
  %".4337" = load i32, ptr %"R8"
  %"zext.456" = zext i32 %".4337" to i64
  %".4338" = load i32, ptr %"R9"
  %"zext.457" = zext i32 %".4338" to i64
  %"shl.241" = shl i64 %"zext.457", 32
  %"or.226" = or i64 %"shl.241", %"zext.456"
  %".4339" = inttoptr i64 %"or.226" to ptr
  %".4340" = ptrtoint ptr %".4339" to i64
  %".4341" = add i64 %".4340", 4
  %"for_LDG.221" = inttoptr i64 %".4341" to ptr
  %".4342" = load float, ptr %"for_LDG.221"
  %".4343" = bitcast ptr %"R61" to ptr
  store float %".4342", ptr %".4343"
  ; IADD3 R13, R35, 0xc, RZ
  %".4346" = load i32, ptr %"R35"
  %"add.210" = add i32 %".4346", 12
  %"add.211" = add i32 %"add.210", 0
  store i32 %"add.211", ptr %"R13"
  ; LDG.E.SYS R35, [R10+0x4]
  %".4349" = load i32, ptr %"R10"
  %"zext.458" = zext i32 %".4349" to i64
  %".4350" = load i32, ptr %"R11"
  %"zext.459" = zext i32 %".4350" to i64
  %"shl.242" = shl i64 %"zext.459", 32
  %"or.227" = or i64 %"shl.242", %"zext.458"
  %".4351" = inttoptr i64 %"or.227" to ptr
  %".4352" = ptrtoint ptr %".4351" to i64
  %".4353" = add i64 %".4352", 4
  %"for_LDG.222" = inttoptr i64 %".4353" to ptr
  %".4354" = load float, ptr %"for_LDG.222"
  %".4355" = bitcast ptr %"R35" to ptr
  store float %".4354", ptr %".4355"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".4358" = load i32, ptr %"R13"
  %".4359" = load i32, ptr %"R24"
  %"mul.73" = mul i32 %".4358", %".4359"
  %"add.212" = add i32 %"mul.73", %"Arg_4"
  store i32 %"add.212", ptr %"R12"
  ; LDG.E.SYS R6, [R8+0x8]
  %".4362" = load i32, ptr %"R8"
  %"zext.460" = zext i32 %".4362" to i64
  %".4363" = load i32, ptr %"R9"
  %"zext.461" = zext i32 %".4363" to i64
  %"shl.243" = shl i64 %"zext.461", 32
  %"or.228" = or i64 %"shl.243", %"zext.460"
  %".4364" = inttoptr i64 %"or.228" to ptr
  %".4365" = ptrtoint ptr %".4364" to i64
  %".4366" = add i64 %".4365", 8
  %"for_LDG.223" = inttoptr i64 %".4366" to ptr
  %".4367" = load float, ptr %"for_LDG.223"
  %".4368" = bitcast ptr %"R6" to ptr
  store float %".4367", ptr %".4368"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".4371" = load i32, ptr %"R25"
  %".4372" = load i32, ptr %"R24"
  %"mul.74" = mul i32 %".4371", %".4372"
  %"add.213" = add i32 %"mul.74", %"Arg_4"
  store i32 %"add.213", ptr %"R24"
  ; LDG.E.SYS R4, [R10+0x8]
  %".4375" = load i32, ptr %"R10"
  %"zext.462" = zext i32 %".4375" to i64
  %".4376" = load i32, ptr %"R11"
  %"zext.463" = zext i32 %".4376" to i64
  %"shl.244" = shl i64 %"zext.463", 32
  %"or.229" = or i64 %"shl.244", %"zext.462"
  %".4377" = inttoptr i64 %"or.229" to ptr
  %".4378" = ptrtoint ptr %".4377" to i64
  %".4379" = add i64 %".4378", 8
  %"for_LDG.224" = inttoptr i64 %".4379" to ptr
  %".4380" = load float, ptr %"for_LDG.224"
  %".4381" = bitcast ptr %"R4" to ptr
  store float %".4380", ptr %".4381"
  ; LDG.E.SYS R5, [R8+0xc]
  %".4384" = load i32, ptr %"R8"
  %"zext.464" = zext i32 %".4384" to i64
  %".4385" = load i32, ptr %"R9"
  %"zext.465" = zext i32 %".4385" to i64
  %"shl.245" = shl i64 %"zext.465", 32
  %"or.230" = or i64 %"shl.245", %"zext.464"
  %".4386" = inttoptr i64 %"or.230" to ptr
  %".4387" = ptrtoint ptr %".4386" to i64
  %".4388" = add i64 %".4387", 12
  %"for_LDG.225" = inttoptr i64 %".4388" to ptr
  %".4389" = load float, ptr %"for_LDG.225"
  %".4390" = bitcast ptr %"R5" to ptr
  store float %".4389", ptr %".4390"
  ; LDG.E.SYS R60, [R10+0xc]
  %".4393" = load i32, ptr %"R10"
  %"zext.466" = zext i32 %".4393" to i64
  %".4394" = load i32, ptr %"R11"
  %"zext.467" = zext i32 %".4394" to i64
  %"shl.246" = shl i64 %"zext.467", 32
  %"or.231" = or i64 %"shl.246", %"zext.466"
  %".4395" = inttoptr i64 %"or.231" to ptr
  %".4396" = ptrtoint ptr %".4395" to i64
  %".4397" = add i64 %".4396", 12
  %"for_LDG.226" = inttoptr i64 %".4397" to ptr
  %".4398" = load float, ptr %"for_LDG.226"
  %".4399" = bitcast ptr %"R60" to ptr
  store float %".4398", ptr %".4399"
  ; LDG.E.SYS R58, [R12]
  %".4402" = load i32, ptr %"R12"
  %"zext.468" = zext i32 %".4402" to i64
  %".4403" = load i32, ptr %"R13"
  %"zext.469" = zext i32 %".4403" to i64
  %"shl.247" = shl i64 %"zext.469", 32
  %"or.232" = or i64 %"shl.247", %"zext.468"
  %".4404" = inttoptr i64 %"or.232" to ptr
  %".4405" = ptrtoint ptr %".4404" to i64
  %".4406" = add i64 %".4405", 0
  %"for_LDG.227" = inttoptr i64 %".4406" to ptr
  %".4407" = load float, ptr %"for_LDG.227"
  %".4408" = bitcast ptr %"R58" to ptr
  store float %".4407", ptr %".4408"
  ; LDG.E.SYS R54, [R12+0x4]
  %".4411" = load i32, ptr %"R12"
  %"zext.470" = zext i32 %".4411" to i64
  %".4412" = load i32, ptr %"R13"
  %"zext.471" = zext i32 %".4412" to i64
  %"shl.248" = shl i64 %"zext.471", 32
  %"or.233" = or i64 %"shl.248", %"zext.470"
  %".4413" = inttoptr i64 %"or.233" to ptr
  %".4414" = ptrtoint ptr %".4413" to i64
  %".4415" = add i64 %".4414", 4
  %"for_LDG.228" = inttoptr i64 %".4415" to ptr
  %".4416" = load float, ptr %"for_LDG.228"
  %".4417" = bitcast ptr %"R54" to ptr
  store float %".4416", ptr %".4417"
  ; FFMA R10, R37, R34, R42
  %".4420" = load float, ptr %"R37"
  %".4421" = load float, ptr %"R34"
  %".4422" = load float, ptr %"R42"
  %"fmul.179" = fmul float %".4420", %".4421"
  %"fadd.154" = fadd float %"fmul.179", %".4422"
  %".4423" = bitcast ptr %"R10" to ptr
  store float %"fadd.154", ptr %".4423"
  ; LDG.E.SYS R37, [R24]
  %".4426" = load i32, ptr %"R24"
  %"zext.472" = zext i32 %".4426" to i64
  %".4427" = load i32, ptr %"R25"
  %"zext.473" = zext i32 %".4427" to i64
  %"shl.249" = shl i64 %"zext.473", 32
  %"or.234" = or i64 %"shl.249", %"zext.472"
  %".4428" = inttoptr i64 %"or.234" to ptr
  %".4429" = ptrtoint ptr %".4428" to i64
  %".4430" = add i64 %".4429", 0
  %"for_LDG.229" = inttoptr i64 %".4430" to ptr
  %".4431" = load float, ptr %"for_LDG.229"
  %".4432" = bitcast ptr %"R37" to ptr
  store float %".4431", ptr %".4432"
  ; LDG.E.SYS R42, [R24+0x4]
  %".4435" = load i32, ptr %"R24"
  %"zext.474" = zext i32 %".4435" to i64
  %".4436" = load i32, ptr %"R25"
  %"zext.475" = zext i32 %".4436" to i64
  %"shl.250" = shl i64 %"zext.475", 32
  %"or.235" = or i64 %"shl.250", %"zext.474"
  %".4437" = inttoptr i64 %"or.235" to ptr
  %".4438" = ptrtoint ptr %".4437" to i64
  %".4439" = add i64 %".4438", 4
  %"for_LDG.230" = inttoptr i64 %".4439" to ptr
  %".4440" = load float, ptr %"for_LDG.230"
  %".4441" = bitcast ptr %"R42" to ptr
  store float %".4440", ptr %".4441"
  ; LDG.E.SYS R7, [R12+0x8]
  %".4444" = load i32, ptr %"R12"
  %"zext.476" = zext i32 %".4444" to i64
  %".4445" = load i32, ptr %"R13"
  %"zext.477" = zext i32 %".4445" to i64
  %"shl.251" = shl i64 %"zext.477", 32
  %"or.236" = or i64 %"shl.251", %"zext.476"
  %".4446" = inttoptr i64 %"or.236" to ptr
  %".4447" = ptrtoint ptr %".4446" to i64
  %".4448" = add i64 %".4447", 8
  %"for_LDG.231" = inttoptr i64 %".4448" to ptr
  %".4449" = load float, ptr %"for_LDG.231"
  %".4450" = bitcast ptr %"R7" to ptr
  store float %".4449", ptr %".4450"
  ; LDG.E.SYS R9, [R24+0x8]
  %".4453" = load i32, ptr %"R24"
  %"zext.478" = zext i32 %".4453" to i64
  %".4454" = load i32, ptr %"R25"
  %"zext.479" = zext i32 %".4454" to i64
  %"shl.252" = shl i64 %"zext.479", 32
  %"or.237" = or i64 %"shl.252", %"zext.478"
  %".4455" = inttoptr i64 %"or.237" to ptr
  %".4456" = ptrtoint ptr %".4455" to i64
  %".4457" = add i64 %".4456", 8
  %"for_LDG.232" = inttoptr i64 %".4457" to ptr
  %".4458" = load float, ptr %"for_LDG.232"
  %".4459" = bitcast ptr %"R9" to ptr
  store float %".4458", ptr %".4459"
  ; LDG.E.SYS R8, [R24+0xc]
  %".4462" = load i32, ptr %"R24"
  %"zext.480" = zext i32 %".4462" to i64
  %".4463" = load i32, ptr %"R25"
  %"zext.481" = zext i32 %".4463" to i64
  %"shl.253" = shl i64 %"zext.481", 32
  %"or.238" = or i64 %"shl.253", %"zext.480"
  %".4464" = inttoptr i64 %"or.238" to ptr
  %".4465" = ptrtoint ptr %".4464" to i64
  %".4466" = add i64 %".4465", 12
  %"for_LDG.233" = inttoptr i64 %".4466" to ptr
  %".4467" = load float, ptr %"for_LDG.233"
  %".4468" = bitcast ptr %"R8" to ptr
  store float %".4467", ptr %".4468"
  ; LDG.E.SYS R13, [R12+0xc]
  %".4471" = load i32, ptr %"R12"
  %"zext.482" = zext i32 %".4471" to i64
  %".4472" = load i32, ptr %"R13"
  %"zext.483" = zext i32 %".4472" to i64
  %"shl.254" = shl i64 %"zext.483", 32
  %"or.239" = or i64 %"shl.254", %"zext.482"
  %".4473" = inttoptr i64 %"or.239" to ptr
  %".4474" = ptrtoint ptr %".4473" to i64
  %".4475" = add i64 %".4474", 12
  %"for_LDG.234" = inttoptr i64 %".4475" to ptr
  %".4476" = load float, ptr %"for_LDG.234"
  %".4477" = bitcast ptr %"R13" to ptr
  store float %".4476", ptr %".4477"
  ; IADD3 R22, R22, -0x10, RZ
  %".4480" = load i32, ptr %"R22"
  %"add.214" = add i32 %".4480", -16
  %"add.215" = add i32 %"add.214", 0
  store i32 %"add.215", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".4483" = load i32, ptr %"R22"
  %".4484" = load i1, ptr %"PT"
  %"cmp.37" = icmp sgt i32 %".4483", 12
  %".4485" = and i1 %"cmp.37", %".4484"
  ; IADD3 R23, R23, 0x10, RZ
  %".4487" = load i32, ptr %"R23"
  %"add.216" = add i32 %".4487", 16
  %"add.217" = add i32 %"add.216", 0
  store i32 %"add.217", ptr %"R23"
  ; FFMA R10, R43, R36, R10
  %".4490" = load float, ptr %"R43"
  %".4491" = load float, ptr %"R36"
  %".4492" = load float, ptr %"R10"
  %"fmul.180" = fmul float %".4490", %".4491"
  %"fadd.155" = fadd float %"fmul.180", %".4492"
  %".4493" = bitcast ptr %"R10" to ptr
  store float %"fadd.155", ptr %".4493"
  ; FFMA R45, R34, R47, R45
  %".4496" = load float, ptr %"R34"
  %".4497" = load float, ptr %"R47"
  %".4498" = load float, ptr %"R45"
  %"fmul.181" = fmul float %".4496", %".4497"
  %"fadd.156" = fadd float %"fmul.181", %".4498"
  %".4499" = bitcast ptr %"R45" to ptr
  store float %"fadd.156", ptr %".4499"
  ; FFMA R45, R36, R51, R45
  %".4502" = load float, ptr %"R36"
  %".4503" = load float, ptr %"R51"
  %".4504" = load float, ptr %"R45"
  %"fmul.182" = fmul float %".4502", %".4503"
  %"fadd.157" = fadd float %"fmul.182", %".4504"
  %".4505" = bitcast ptr %"R45" to ptr
  store float %"fadd.157", ptr %".4505"
  ; FFMA R10, R57, R38, R10
  %".4508" = load float, ptr %"R57"
  %".4509" = load float, ptr %"R38"
  %".4510" = load float, ptr %"R10"
  %"fmul.183" = fmul float %".4508", %".4509"
  %"fadd.158" = fadd float %"fmul.183", %".4510"
  %".4511" = bitcast ptr %"R10" to ptr
  store float %"fadd.158", ptr %".4511"
  ; FFMA R45, R38, R59, R45
  %".4514" = load float, ptr %"R38"
  %".4515" = load float, ptr %"R59"
  %".4516" = load float, ptr %"R45"
  %"fmul.184" = fmul float %".4514", %".4515"
  %"fadd.159" = fadd float %"fmul.184", %".4516"
  %".4517" = bitcast ptr %"R45" to ptr
  store float %"fadd.159", ptr %".4517"
  ; FFMA R10, R50, R41, R10
  %".4520" = load float, ptr %"R50"
  %".4521" = load float, ptr %"R41"
  %".4522" = load float, ptr %"R10"
  %"fmul.185" = fmul float %".4520", %".4521"
  %"fadd.160" = fadd float %"fmul.185", %".4522"
  %".4523" = bitcast ptr %"R10" to ptr
  store float %"fadd.160", ptr %".4523"
  ; FFMA R45, R41, R46, R45
  %".4526" = load float, ptr %"R41"
  %".4527" = load float, ptr %"R46"
  %".4528" = load float, ptr %"R45"
  %"fmul.186" = fmul float %".4526", %".4527"
  %"fadd.161" = fadd float %"fmul.186", %".4528"
  %".4529" = bitcast ptr %"R45" to ptr
  store float %"fadd.161", ptr %".4529"
  ; FFMA R10, R61, R40, R10
  %".4532" = load float, ptr %"R61"
  %".4533" = load float, ptr %"R40"
  %".4534" = load float, ptr %"R10"
  %"fmul.187" = fmul float %".4532", %".4533"
  %"fadd.162" = fadd float %"fmul.187", %".4534"
  %".4535" = bitcast ptr %"R10" to ptr
  store float %"fadd.162", ptr %".4535"
  ; FFMA R35, R40, R35, R45
  %".4538" = load float, ptr %"R40"
  %".4539" = load float, ptr %"R35"
  %".4540" = load float, ptr %"R45"
  %"fmul.188" = fmul float %".4538", %".4539"
  %"fadd.163" = fadd float %"fmul.188", %".4540"
  %".4541" = bitcast ptr %"R35" to ptr
  store float %"fadd.163", ptr %".4541"
  ; FFMA R6, R6, R39, R10
  %".4544" = load float, ptr %"R6"
  %".4545" = load float, ptr %"R39"
  %".4546" = load float, ptr %"R10"
  %"fmul.189" = fmul float %".4544", %".4545"
  %"fadd.164" = fadd float %"fmul.189", %".4546"
  %".4547" = bitcast ptr %"R6" to ptr
  store float %"fadd.164", ptr %".4547"
  ; FFMA R35, R39, R4, R35
  %".4550" = load float, ptr %"R39"
  %".4551" = load float, ptr %"R4"
  %".4552" = load float, ptr %"R35"
  %"fmul.190" = fmul float %".4550", %".4551"
  %"fadd.165" = fadd float %"fmul.190", %".4552"
  %".4553" = bitcast ptr %"R35" to ptr
  store float %"fadd.165", ptr %".4553"
  ; FFMA R5, R5, R44, R6
  %".4556" = load float, ptr %"R5"
  %".4557" = load float, ptr %"R44"
  %".4558" = load float, ptr %"R6"
  %"fmul.191" = fmul float %".4556", %".4557"
  %"fadd.166" = fadd float %"fmul.191", %".4558"
  %".4559" = bitcast ptr %"R5" to ptr
  store float %"fadd.166", ptr %".4559"
  ; FFMA R60, R44, R60, R35
  %".4562" = load float, ptr %"R44"
  %".4563" = load float, ptr %"R60"
  %".4564" = load float, ptr %"R35"
  %"fmul.192" = fmul float %".4562", %".4563"
  %"fadd.167" = fadd float %"fmul.192", %".4564"
  %".4565" = bitcast ptr %"R60" to ptr
  store float %"fadd.167", ptr %".4565"
  ; FFMA R5, R58, R55, R5
  %".4568" = load float, ptr %"R58"
  %".4569" = load float, ptr %"R55"
  %".4570" = load float, ptr %"R5"
  %"fmul.193" = fmul float %".4568", %".4569"
  %"fadd.168" = fadd float %"fmul.193", %".4570"
  %".4571" = bitcast ptr %"R5" to ptr
  store float %"fadd.168", ptr %".4571"
  ; FFMA R5, R54, R53, R5
  %".4574" = load float, ptr %"R54"
  %".4575" = load float, ptr %"R53"
  %".4576" = load float, ptr %"R5"
  %"fmul.194" = fmul float %".4574", %".4575"
  %"fadd.169" = fadd float %"fmul.194", %".4576"
  %".4577" = bitcast ptr %"R5" to ptr
  store float %"fadd.169", ptr %".4577"
  ; FFMA R37, R55, R37, R60
  %".4580" = load float, ptr %"R55"
  %".4581" = load float, ptr %"R37"
  %".4582" = load float, ptr %"R60"
  %"fmul.195" = fmul float %".4580", %".4581"
  %"fadd.170" = fadd float %"fmul.195", %".4582"
  %".4583" = bitcast ptr %"R37" to ptr
  store float %"fadd.170", ptr %".4583"
  ; FFMA R37, R53, R42, R37
  %".4586" = load float, ptr %"R53"
  %".4587" = load float, ptr %"R42"
  %".4588" = load float, ptr %"R37"
  %"fmul.196" = fmul float %".4586", %".4587"
  %"fadd.171" = fadd float %"fmul.196", %".4588"
  %".4589" = bitcast ptr %"R37" to ptr
  store float %"fadd.171", ptr %".4589"
  ; FFMA R5, R7, R52, R5
  %".4592" = load float, ptr %"R7"
  %".4593" = load float, ptr %"R52"
  %".4594" = load float, ptr %"R5"
  %"fmul.197" = fmul float %".4592", %".4593"
  %"fadd.172" = fadd float %"fmul.197", %".4594"
  %".4595" = bitcast ptr %"R5" to ptr
  store float %"fadd.172", ptr %".4595"
  ; FFMA R9, R52, R9, R37
  %".4598" = load float, ptr %"R52"
  %".4599" = load float, ptr %"R9"
  %".4600" = load float, ptr %"R37"
  %"fmul.198" = fmul float %".4598", %".4599"
  %"fadd.173" = fadd float %"fmul.198", %".4600"
  %".4601" = bitcast ptr %"R9" to ptr
  store float %"fadd.173", ptr %".4601"
  ; FFMA R44, R13, R56, R5
  %".4604" = load float, ptr %"R13"
  %".4605" = load float, ptr %"R56"
  %".4606" = load float, ptr %"R5"
  %"fmul.199" = fmul float %".4604", %".4605"
  %"fadd.174" = fadd float %"fmul.199", %".4606"
  %".4607" = bitcast ptr %"R44" to ptr
  store float %"fadd.174", ptr %".4607"
  ; FFMA R56, R56, R8, R9
  %".4610" = load float, ptr %"R56"
  %".4611" = load float, ptr %"R8"
  %".4612" = load float, ptr %"R9"
  %"fmul.200" = fmul float %".4610", %".4611"
  %"fadd.175" = fadd float %"fmul.200", %".4612"
  %".4613" = bitcast ptr %"R56" to ptr
  store float %"fadd.175", ptr %".4613"
  ; @P1 BRA `(.L_x_30)
  %".4616" = load i1, ptr %"P1"
  %".4617" = icmp ne i1 %".4616", 1
  br i1 %".4617", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".4620" = load i32, ptr %"R22"
  %".4621" = load i1, ptr %"PT"
  %"cmp.38" = icmp sgt i32 %".4620", 4
  %".4622" = and i1 %"cmp.38", %".4621"
  ; @!P1 BRA `(.L_x_31)
  %".4624" = load i1, ptr %"P1"
  %".4625" = icmp eq i1 %".4624", 1
  br i1 %".4625", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".4628" = load i32, ptr %"R0"
  %".4629" = load i32, ptr %"R23"
  %"add.218" = add i32 %".4628", %".4629"
  %"add.219" = add i32 %"add.218", 0
  store i32 %"add.219", ptr %"R5"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25"
  ; LEA R13, R2.reuse, R5, 0x2
  %".4634" = load i32, ptr %"R2"
  %".4635" = load i32, ptr %"R5"
  %"shl.255" = shl i32 %".4634", 2
  %"add.220" = add i32 %"shl.255", %".4635"
  store i32 %"add.220", ptr %"R13"
  ; IMAD R12, R2, 0x3, R5
  %".4638" = load i32, ptr %"R2"
  %".4639" = load i32, ptr %"R5"
  %"mul.75" = mul i32 %".4638", 3
  %"add.221" = add i32 %"mul.75", %".4639"
  store i32 %"add.221", ptr %"R12"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".4642" = load i32, ptr %"R23"
  %"add.222" = add i32 %".4642", 4
  %"add.223" = add i32 %"add.222", 0
  store i32 %"add.223", ptr %"R6"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".4645" = load i32, ptr %"R23"
  %".4646" = load i32, ptr %"R25"
  %"mul.76" = mul i32 %".4645", %".4646"
  %"add.224" = add i32 %"mul.76", %"Arg_3"
  store i32 %"add.224", ptr %"R8"
  ; IADD3 R24, R13, 0x4, RZ
  %".4649" = load i32, ptr %"R13"
  %"add.225" = add i32 %".4649", 4
  %"add.226" = add i32 %"add.225", 0
  store i32 %"add.226", ptr %"R24"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".4652" = load i32, ptr %"R12"
  %".4653" = load i32, ptr %"R25"
  %"mul.77" = mul i32 %".4652", %".4653"
  %"add.227" = add i32 %"mul.77", %"Arg_4"
  store i32 %"add.227", ptr %"R4"
  ; IADD3 R12, R12, 0x4, RZ
  %".4656" = load i32, ptr %"R12"
  %"add.228" = add i32 %".4656", 4
  %"add.229" = add i32 %"add.228", 0
  store i32 %"add.229", ptr %"R12"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".4659" = load i32, ptr %"R13"
  %".4660" = load i32, ptr %"R25"
  %"mul.78" = mul i32 %".4659", %".4660"
  %"add.230" = add i32 %"mul.78", %"Arg_4"
  store i32 %"add.230", ptr %"R10"
  ; LDG.E.SYS R43, [R8]
  %".4663" = load i32, ptr %"R8"
  %"zext.484" = zext i32 %".4663" to i64
  %".4664" = load i32, ptr %"R9"
  %"zext.485" = zext i32 %".4664" to i64
  %"shl.256" = shl i64 %"zext.485", 32
  %"or.240" = or i64 %"shl.256", %"zext.484"
  %".4665" = inttoptr i64 %"or.240" to ptr
  %".4666" = ptrtoint ptr %".4665" to i64
  %".4667" = add i64 %".4666", 0
  %"for_LDG.235" = inttoptr i64 %".4667" to ptr
  %".4668" = load float, ptr %"for_LDG.235"
  %".4669" = bitcast ptr %"R43" to ptr
  store float %".4668", ptr %".4669"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".4672" = load i32, ptr %"R6"
  %".4673" = load i32, ptr %"R25"
  %"mul.79" = mul i32 %".4672", %".4673"
  %"add.231" = add i32 %"mul.79", %"Arg_3"
  store i32 %"add.231", ptr %"R6"
  ; LDG.E.SYS R52, [R4]
  %".4676" = load i32, ptr %"R4"
  %"zext.486" = zext i32 %".4676" to i64
  %".4677" = load i32, ptr %"R5"
  %"zext.487" = zext i32 %".4677" to i64
  %"shl.257" = shl i64 %"zext.487", 32
  %"or.241" = or i64 %"shl.257", %"zext.486"
  %".4678" = inttoptr i64 %"or.241" to ptr
  %".4679" = ptrtoint ptr %".4678" to i64
  %".4680" = add i64 %".4679", 0
  %"for_LDG.236" = inttoptr i64 %".4680" to ptr
  %".4681" = load float, ptr %"for_LDG.236"
  %".4682" = bitcast ptr %"R52" to ptr
  store float %".4681", ptr %".4682"
  ; LDG.E.SYS R38, [R10]
  %".4685" = load i32, ptr %"R10"
  %"zext.488" = zext i32 %".4685" to i64
  %".4686" = load i32, ptr %"R11"
  %"zext.489" = zext i32 %".4686" to i64
  %"shl.258" = shl i64 %"zext.489", 32
  %"or.242" = or i64 %"shl.258", %"zext.488"
  %".4687" = inttoptr i64 %"or.242" to ptr
  %".4688" = ptrtoint ptr %".4687" to i64
  %".4689" = add i64 %".4688", 0
  %"for_LDG.237" = inttoptr i64 %".4689" to ptr
  %".4690" = load float, ptr %"for_LDG.237"
  %".4691" = bitcast ptr %"R38" to ptr
  store float %".4690", ptr %".4691"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".4694" = load i32, ptr %"R12"
  %".4695" = load i32, ptr %"R25"
  %"mul.80" = mul i32 %".4694", %".4695"
  %"add.232" = add i32 %"mul.80", %"Arg_4"
  store i32 %"add.232", ptr %"R12"
  ; LDG.E.SYS R36, [R8+0x4]
  %".4698" = load i32, ptr %"R8"
  %"zext.490" = zext i32 %".4698" to i64
  %".4699" = load i32, ptr %"R9"
  %"zext.491" = zext i32 %".4699" to i64
  %"shl.259" = shl i64 %"zext.491", 32
  %"or.243" = or i64 %"shl.259", %"zext.490"
  %".4700" = inttoptr i64 %"or.243" to ptr
  %".4701" = ptrtoint ptr %".4700" to i64
  %".4702" = add i64 %".4701", 4
  %"for_LDG.238" = inttoptr i64 %".4702" to ptr
  %".4703" = load float, ptr %"for_LDG.238"
  %".4704" = bitcast ptr %"R36" to ptr
  store float %".4703", ptr %".4704"
  ; LDG.E.SYS R41, [R4+0x4]
  %".4707" = load i32, ptr %"R4"
  %"zext.492" = zext i32 %".4707" to i64
  %".4708" = load i32, ptr %"R5"
  %"zext.493" = zext i32 %".4708" to i64
  %"shl.260" = shl i64 %"zext.493", 32
  %"or.244" = or i64 %"shl.260", %"zext.492"
  %".4709" = inttoptr i64 %"or.244" to ptr
  %".4710" = ptrtoint ptr %".4709" to i64
  %".4711" = add i64 %".4710", 4
  %"for_LDG.239" = inttoptr i64 %".4711" to ptr
  %".4712" = load float, ptr %"for_LDG.239"
  %".4713" = bitcast ptr %"R41" to ptr
  store float %".4712", ptr %".4713"
  ; LDG.E.SYS R39, [R10+0x4]
  %".4716" = load i32, ptr %"R10"
  %"zext.494" = zext i32 %".4716" to i64
  %".4717" = load i32, ptr %"R11"
  %"zext.495" = zext i32 %".4717" to i64
  %"shl.261" = shl i64 %"zext.495", 32
  %"or.245" = or i64 %"shl.261", %"zext.494"
  %".4718" = inttoptr i64 %"or.245" to ptr
  %".4719" = ptrtoint ptr %".4718" to i64
  %".4720" = add i64 %".4719", 4
  %"for_LDG.240" = inttoptr i64 %".4720" to ptr
  %".4721" = load float, ptr %"for_LDG.240"
  %".4722" = bitcast ptr %"R39" to ptr
  store float %".4721", ptr %".4722"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".4725" = load i32, ptr %"R24"
  %".4726" = load i32, ptr %"R25"
  %"mul.81" = mul i32 %".4725", %".4726"
  %"add.233" = add i32 %"mul.81", %"Arg_4"
  store i32 %"add.233", ptr %"R24"
  ; LDG.E.SYS R34, [R8+0x8]
  %".4729" = load i32, ptr %"R8"
  %"zext.496" = zext i32 %".4729" to i64
  %".4730" = load i32, ptr %"R9"
  %"zext.497" = zext i32 %".4730" to i64
  %"shl.262" = shl i64 %"zext.497", 32
  %"or.246" = or i64 %"shl.262", %"zext.496"
  %".4731" = inttoptr i64 %"or.246" to ptr
  %".4732" = ptrtoint ptr %".4731" to i64
  %".4733" = add i64 %".4732", 8
  %"for_LDG.241" = inttoptr i64 %".4733" to ptr
  %".4734" = load float, ptr %"for_LDG.241"
  %".4735" = bitcast ptr %"R34" to ptr
  store float %".4734", ptr %".4735"
  ; LDG.E.SYS R37, [R4+0x8]
  %".4738" = load i32, ptr %"R4"
  %"zext.498" = zext i32 %".4738" to i64
  %".4739" = load i32, ptr %"R5"
  %"zext.499" = zext i32 %".4739" to i64
  %"shl.263" = shl i64 %"zext.499", 32
  %"or.247" = or i64 %"shl.263", %"zext.498"
  %".4740" = inttoptr i64 %"or.247" to ptr
  %".4741" = ptrtoint ptr %".4740" to i64
  %".4742" = add i64 %".4741", 8
  %"for_LDG.242" = inttoptr i64 %".4742" to ptr
  %".4743" = load float, ptr %"for_LDG.242"
  %".4744" = bitcast ptr %"R37" to ptr
  store float %".4743", ptr %".4744"
  ; LDG.E.SYS R35, [R10+0x8]
  %".4747" = load i32, ptr %"R10"
  %"zext.500" = zext i32 %".4747" to i64
  %".4748" = load i32, ptr %"R11"
  %"zext.501" = zext i32 %".4748" to i64
  %"shl.264" = shl i64 %"zext.501", 32
  %"or.248" = or i64 %"shl.264", %"zext.500"
  %".4749" = inttoptr i64 %"or.248" to ptr
  %".4750" = ptrtoint ptr %".4749" to i64
  %".4751" = add i64 %".4750", 8
  %"for_LDG.243" = inttoptr i64 %".4751" to ptr
  %".4752" = load float, ptr %"for_LDG.243"
  %".4753" = bitcast ptr %"R35" to ptr
  store float %".4752", ptr %".4753"
  ; LDG.E.SYS R40, [R8+0xc]
  %".4756" = load i32, ptr %"R8"
  %"zext.502" = zext i32 %".4756" to i64
  %".4757" = load i32, ptr %"R9"
  %"zext.503" = zext i32 %".4757" to i64
  %"shl.265" = shl i64 %"zext.503", 32
  %"or.249" = or i64 %"shl.265", %"zext.502"
  %".4758" = inttoptr i64 %"or.249" to ptr
  %".4759" = ptrtoint ptr %".4758" to i64
  %".4760" = add i64 %".4759", 12
  %"for_LDG.244" = inttoptr i64 %".4760" to ptr
  %".4761" = load float, ptr %"for_LDG.244"
  %".4762" = bitcast ptr %"R40" to ptr
  store float %".4761", ptr %".4762"
  ; LDG.E.SYS R45, [R4+0xc]
  %".4765" = load i32, ptr %"R4"
  %"zext.504" = zext i32 %".4765" to i64
  %".4766" = load i32, ptr %"R5"
  %"zext.505" = zext i32 %".4766" to i64
  %"shl.266" = shl i64 %"zext.505", 32
  %"or.250" = or i64 %"shl.266", %"zext.504"
  %".4767" = inttoptr i64 %"or.250" to ptr
  %".4768" = ptrtoint ptr %".4767" to i64
  %".4769" = add i64 %".4768", 12
  %"for_LDG.245" = inttoptr i64 %".4769" to ptr
  %".4770" = load float, ptr %"for_LDG.245"
  %".4771" = bitcast ptr %"R45" to ptr
  store float %".4770", ptr %".4771"
  ; LDG.E.SYS R59, [R10+0xc]
  %".4774" = load i32, ptr %"R10"
  %"zext.506" = zext i32 %".4774" to i64
  %".4775" = load i32, ptr %"R11"
  %"zext.507" = zext i32 %".4775" to i64
  %"shl.267" = shl i64 %"zext.507", 32
  %"or.251" = or i64 %"shl.267", %"zext.506"
  %".4776" = inttoptr i64 %"or.251" to ptr
  %".4777" = ptrtoint ptr %".4776" to i64
  %".4778" = add i64 %".4777", 12
  %"for_LDG.246" = inttoptr i64 %".4778" to ptr
  %".4779" = load float, ptr %"for_LDG.246"
  %".4780" = bitcast ptr %"R59" to ptr
  store float %".4779", ptr %".4780"
  ; LDG.E.SYS R50, [R6]
  %".4783" = load i32, ptr %"R6"
  %"zext.508" = zext i32 %".4783" to i64
  %".4784" = load i32, ptr %"R7"
  %"zext.509" = zext i32 %".4784" to i64
  %"shl.268" = shl i64 %"zext.509", 32
  %"or.252" = or i64 %"shl.268", %"zext.508"
  %".4785" = inttoptr i64 %"or.252" to ptr
  %".4786" = ptrtoint ptr %".4785" to i64
  %".4787" = add i64 %".4786", 0
  %"for_LDG.247" = inttoptr i64 %".4787" to ptr
  %".4788" = load float, ptr %"for_LDG.247"
  %".4789" = bitcast ptr %"R50" to ptr
  store float %".4788", ptr %".4789"
  ; LDG.E.SYS R57, [R12]
  %".4792" = load i32, ptr %"R12"
  %"zext.510" = zext i32 %".4792" to i64
  %".4793" = load i32, ptr %"R13"
  %"zext.511" = zext i32 %".4793" to i64
  %"shl.269" = shl i64 %"zext.511", 32
  %"or.253" = or i64 %"shl.269", %"zext.510"
  %".4794" = inttoptr i64 %"or.253" to ptr
  %".4795" = ptrtoint ptr %".4794" to i64
  %".4796" = add i64 %".4795", 0
  %"for_LDG.248" = inttoptr i64 %".4796" to ptr
  %".4797" = load float, ptr %"for_LDG.248"
  %".4798" = bitcast ptr %"R57" to ptr
  store float %".4797", ptr %".4798"
  ; LDG.E.SYS R55, [R24]
  %".4801" = load i32, ptr %"R24"
  %"zext.512" = zext i32 %".4801" to i64
  %".4802" = load i32, ptr %"R25"
  %"zext.513" = zext i32 %".4802" to i64
  %"shl.270" = shl i64 %"zext.513", 32
  %"or.254" = or i64 %"shl.270", %"zext.512"
  %".4803" = inttoptr i64 %"or.254" to ptr
  %".4804" = ptrtoint ptr %".4803" to i64
  %".4805" = add i64 %".4804", 0
  %"for_LDG.249" = inttoptr i64 %".4805" to ptr
  %".4806" = load float, ptr %"for_LDG.249"
  %".4807" = bitcast ptr %"R55" to ptr
  store float %".4806", ptr %".4807"
  ; LDG.E.SYS R46, [R6+0x4]
  %".4810" = load i32, ptr %"R6"
  %"zext.514" = zext i32 %".4810" to i64
  %".4811" = load i32, ptr %"R7"
  %"zext.515" = zext i32 %".4811" to i64
  %"shl.271" = shl i64 %"zext.515", 32
  %"or.255" = or i64 %"shl.271", %"zext.514"
  %".4812" = inttoptr i64 %"or.255" to ptr
  %".4813" = ptrtoint ptr %".4812" to i64
  %".4814" = add i64 %".4813", 4
  %"for_LDG.250" = inttoptr i64 %".4814" to ptr
  %".4815" = load float, ptr %"for_LDG.250"
  %".4816" = bitcast ptr %"R46" to ptr
  store float %".4815", ptr %".4816"
  ; LDG.E.SYS R53, [R12+0x4]
  %".4819" = load i32, ptr %"R12"
  %"zext.516" = zext i32 %".4819" to i64
  %".4820" = load i32, ptr %"R13"
  %"zext.517" = zext i32 %".4820" to i64
  %"shl.272" = shl i64 %"zext.517", 32
  %"or.256" = or i64 %"shl.272", %"zext.516"
  %".4821" = inttoptr i64 %"or.256" to ptr
  %".4822" = ptrtoint ptr %".4821" to i64
  %".4823" = add i64 %".4822", 4
  %"for_LDG.251" = inttoptr i64 %".4823" to ptr
  %".4824" = load float, ptr %"for_LDG.251"
  %".4825" = bitcast ptr %"R53" to ptr
  store float %".4824", ptr %".4825"
  ; LDG.E.SYS R51, [R24+0x4]
  %".4828" = load i32, ptr %"R24"
  %"zext.518" = zext i32 %".4828" to i64
  %".4829" = load i32, ptr %"R25"
  %"zext.519" = zext i32 %".4829" to i64
  %"shl.273" = shl i64 %"zext.519", 32
  %"or.257" = or i64 %"shl.273", %"zext.518"
  %".4830" = inttoptr i64 %"or.257" to ptr
  %".4831" = ptrtoint ptr %".4830" to i64
  %".4832" = add i64 %".4831", 4
  %"for_LDG.252" = inttoptr i64 %".4832" to ptr
  %".4833" = load float, ptr %"for_LDG.252"
  %".4834" = bitcast ptr %"R51" to ptr
  store float %".4833", ptr %".4834"
  ; LDG.E.SYS R42, [R6+0x8]
  %".4837" = load i32, ptr %"R6"
  %"zext.520" = zext i32 %".4837" to i64
  %".4838" = load i32, ptr %"R7"
  %"zext.521" = zext i32 %".4838" to i64
  %"shl.274" = shl i64 %"zext.521", 32
  %"or.258" = or i64 %"shl.274", %"zext.520"
  %".4839" = inttoptr i64 %"or.258" to ptr
  %".4840" = ptrtoint ptr %".4839" to i64
  %".4841" = add i64 %".4840", 8
  %"for_LDG.253" = inttoptr i64 %".4841" to ptr
  %".4842" = load float, ptr %"for_LDG.253"
  %".4843" = bitcast ptr %"R42" to ptr
  store float %".4842", ptr %".4843"
  ; LDG.E.SYS R47, [R12+0x8]
  %".4846" = load i32, ptr %"R12"
  %"zext.522" = zext i32 %".4846" to i64
  %".4847" = load i32, ptr %"R13"
  %"zext.523" = zext i32 %".4847" to i64
  %"shl.275" = shl i64 %"zext.523", 32
  %"or.259" = or i64 %"shl.275", %"zext.522"
  %".4848" = inttoptr i64 %"or.259" to ptr
  %".4849" = ptrtoint ptr %".4848" to i64
  %".4850" = add i64 %".4849", 8
  %"for_LDG.254" = inttoptr i64 %".4850" to ptr
  %".4851" = load float, ptr %"for_LDG.254"
  %".4852" = bitcast ptr %"R47" to ptr
  store float %".4851", ptr %".4852"
  ; LDG.E.SYS R9, [R24+0x8]
  %".4855" = load i32, ptr %"R24"
  %"zext.524" = zext i32 %".4855" to i64
  %".4856" = load i32, ptr %"R25"
  %"zext.525" = zext i32 %".4856" to i64
  %"shl.276" = shl i64 %"zext.525", 32
  %"or.260" = or i64 %"shl.276", %"zext.524"
  %".4857" = inttoptr i64 %"or.260" to ptr
  %".4858" = ptrtoint ptr %".4857" to i64
  %".4859" = add i64 %".4858", 8
  %"for_LDG.255" = inttoptr i64 %".4859" to ptr
  %".4860" = load float, ptr %"for_LDG.255"
  %".4861" = bitcast ptr %"R9" to ptr
  store float %".4860", ptr %".4861"
  ; LDG.E.SYS R4, [R6+0xc]
  %".4864" = load i32, ptr %"R6"
  %"zext.526" = zext i32 %".4864" to i64
  %".4865" = load i32, ptr %"R7"
  %"zext.527" = zext i32 %".4865" to i64
  %"shl.277" = shl i64 %"zext.527", 32
  %"or.261" = or i64 %"shl.277", %"zext.526"
  %".4866" = inttoptr i64 %"or.261" to ptr
  %".4867" = ptrtoint ptr %".4866" to i64
  %".4868" = add i64 %".4867", 12
  %"for_LDG.256" = inttoptr i64 %".4868" to ptr
  %".4869" = load float, ptr %"for_LDG.256"
  %".4870" = bitcast ptr %"R4" to ptr
  store float %".4869", ptr %".4870"
  ; LDG.E.SYS R5, [R12+0xc]
  %".4873" = load i32, ptr %"R12"
  %"zext.528" = zext i32 %".4873" to i64
  %".4874" = load i32, ptr %"R13"
  %"zext.529" = zext i32 %".4874" to i64
  %"shl.278" = shl i64 %"zext.529", 32
  %"or.262" = or i64 %"shl.278", %"zext.528"
  %".4875" = inttoptr i64 %"or.262" to ptr
  %".4876" = ptrtoint ptr %".4875" to i64
  %".4877" = add i64 %".4876", 12
  %"for_LDG.257" = inttoptr i64 %".4877" to ptr
  %".4878" = load float, ptr %"for_LDG.257"
  %".4879" = bitcast ptr %"R5" to ptr
  store float %".4878", ptr %".4879"
  ; LDG.E.SYS R11, [R24+0xc]
  %".4882" = load i32, ptr %"R24"
  %"zext.530" = zext i32 %".4882" to i64
  %".4883" = load i32, ptr %"R25"
  %"zext.531" = zext i32 %".4883" to i64
  %"shl.279" = shl i64 %"zext.531", 32
  %"or.263" = or i64 %"shl.279", %"zext.530"
  %".4884" = inttoptr i64 %"or.263" to ptr
  %".4885" = ptrtoint ptr %".4884" to i64
  %".4886" = add i64 %".4885", 12
  %"for_LDG.258" = inttoptr i64 %".4886" to ptr
  %".4887" = load float, ptr %"for_LDG.258"
  %".4888" = bitcast ptr %"R11" to ptr
  store float %".4887", ptr %".4888"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4891" = xor i1 1, 1
  %".4892" = and i1 %".4891", 1
  %".4893" = and i1 %".4892", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".4895" = load i32, ptr %"R22"
  %"add.234" = add i32 %".4895", -8
  %"add.235" = add i32 %"add.234", 0
  store i32 %"add.235", ptr %"R22"
  ; IADD3 R23, R23, 0x8, RZ
  %".4898" = load i32, ptr %"R23"
  %"add.236" = add i32 %".4898", 8
  %"add.237" = add i32 %"add.236", 0
  store i32 %"add.237", ptr %"R23"
  ; FFMA R52, R52, R43, R44
  %".4901" = load float, ptr %"R52"
  %".4902" = load float, ptr %"R43"
  %".4903" = load float, ptr %"R44"
  %"fmul.201" = fmul float %".4901", %".4902"
  %"fadd.176" = fadd float %"fmul.201", %".4903"
  %".4904" = bitcast ptr %"R52" to ptr
  store float %"fadd.176", ptr %".4904"
  ; FFMA R38, R43, R38, R56
  %".4907" = load float, ptr %"R43"
  %".4908" = load float, ptr %"R38"
  %".4909" = load float, ptr %"R56"
  %"fmul.202" = fmul float %".4907", %".4908"
  %"fadd.177" = fadd float %"fmul.202", %".4909"
  %".4910" = bitcast ptr %"R38" to ptr
  store float %"fadd.177", ptr %".4910"
  ; FFMA R41, R41, R36, R52
  %".4913" = load float, ptr %"R41"
  %".4914" = load float, ptr %"R36"
  %".4915" = load float, ptr %"R52"
  %"fmul.203" = fmul float %".4913", %".4914"
  %"fadd.178" = fadd float %"fmul.203", %".4915"
  %".4916" = bitcast ptr %"R41" to ptr
  store float %"fadd.178", ptr %".4916"
  ; FFMA R38, R36, R39, R38
  %".4919" = load float, ptr %"R36"
  %".4920" = load float, ptr %"R39"
  %".4921" = load float, ptr %"R38"
  %"fmul.204" = fmul float %".4919", %".4920"
  %"fadd.179" = fadd float %"fmul.204", %".4921"
  %".4922" = bitcast ptr %"R38" to ptr
  store float %"fadd.179", ptr %".4922"
  ; FFMA R37, R37, R34, R41
  %".4925" = load float, ptr %"R37"
  %".4926" = load float, ptr %"R34"
  %".4927" = load float, ptr %"R41"
  %"fmul.205" = fmul float %".4925", %".4926"
  %"fadd.180" = fadd float %"fmul.205", %".4927"
  %".4928" = bitcast ptr %"R37" to ptr
  store float %"fadd.180", ptr %".4928"
  ; FFMA R35, R34, R35, R38
  %".4931" = load float, ptr %"R34"
  %".4932" = load float, ptr %"R35"
  %".4933" = load float, ptr %"R38"
  %"fmul.206" = fmul float %".4931", %".4932"
  %"fadd.181" = fadd float %"fmul.206", %".4933"
  %".4934" = bitcast ptr %"R35" to ptr
  store float %"fadd.181", ptr %".4934"
  ; FFMA R37, R45, R40, R37
  %".4937" = load float, ptr %"R45"
  %".4938" = load float, ptr %"R40"
  %".4939" = load float, ptr %"R37"
  %"fmul.207" = fmul float %".4937", %".4938"
  %"fadd.182" = fadd float %"fmul.207", %".4939"
  %".4940" = bitcast ptr %"R37" to ptr
  store float %"fadd.182", ptr %".4940"
  ; FFMA R35, R40, R59, R35
  %".4943" = load float, ptr %"R40"
  %".4944" = load float, ptr %"R59"
  %".4945" = load float, ptr %"R35"
  %"fmul.208" = fmul float %".4943", %".4944"
  %"fadd.183" = fadd float %"fmul.208", %".4945"
  %".4946" = bitcast ptr %"R35" to ptr
  store float %"fadd.183", ptr %".4946"
  ; FFMA R37, R57, R50, R37
  %".4949" = load float, ptr %"R57"
  %".4950" = load float, ptr %"R50"
  %".4951" = load float, ptr %"R37"
  %"fmul.209" = fmul float %".4949", %".4950"
  %"fadd.184" = fadd float %"fmul.209", %".4951"
  %".4952" = bitcast ptr %"R37" to ptr
  store float %"fadd.184", ptr %".4952"
  ; FFMA R35, R50, R55, R35
  %".4955" = load float, ptr %"R50"
  %".4956" = load float, ptr %"R55"
  %".4957" = load float, ptr %"R35"
  %"fmul.210" = fmul float %".4955", %".4956"
  %"fadd.185" = fadd float %"fmul.210", %".4957"
  %".4958" = bitcast ptr %"R35" to ptr
  store float %"fadd.185", ptr %".4958"
  ; FFMA R37, R53, R46, R37
  %".4961" = load float, ptr %"R53"
  %".4962" = load float, ptr %"R46"
  %".4963" = load float, ptr %"R37"
  %"fmul.211" = fmul float %".4961", %".4962"
  %"fadd.186" = fadd float %"fmul.211", %".4963"
  %".4964" = bitcast ptr %"R37" to ptr
  store float %"fadd.186", ptr %".4964"
  ; FFMA R35, R46, R51, R35
  %".4967" = load float, ptr %"R46"
  %".4968" = load float, ptr %"R51"
  %".4969" = load float, ptr %"R35"
  %"fmul.212" = fmul float %".4967", %".4968"
  %"fadd.187" = fadd float %"fmul.212", %".4969"
  %".4970" = bitcast ptr %"R35" to ptr
  store float %"fadd.187", ptr %".4970"
  ; FFMA R37, R47, R42, R37
  %".4973" = load float, ptr %"R47"
  %".4974" = load float, ptr %"R42"
  %".4975" = load float, ptr %"R37"
  %"fmul.213" = fmul float %".4973", %".4974"
  %"fadd.188" = fadd float %"fmul.213", %".4975"
  %".4976" = bitcast ptr %"R37" to ptr
  store float %"fadd.188", ptr %".4976"
  ; FFMA R9, R42, R9, R35
  %".4979" = load float, ptr %"R42"
  %".4980" = load float, ptr %"R9"
  %".4981" = load float, ptr %"R35"
  %"fmul.214" = fmul float %".4979", %".4980"
  %"fadd.189" = fadd float %"fmul.214", %".4981"
  %".4982" = bitcast ptr %"R9" to ptr
  store float %"fadd.189", ptr %".4982"
  ; FFMA R44, R5, R4, R37
  %".4985" = load float, ptr %"R5"
  %".4986" = load float, ptr %"R4"
  %".4987" = load float, ptr %"R37"
  %"fmul.215" = fmul float %".4985", %".4986"
  %"fadd.190" = fadd float %"fmul.215", %".4987"
  %".4988" = bitcast ptr %"R44" to ptr
  store float %"fadd.190", ptr %".4988"
  ; FFMA R56, R4, R11, R9
  %".4991" = load float, ptr %"R4"
  %".4992" = load float, ptr %"R11"
  %".4993" = load float, ptr %"R9"
  %"fmul.216" = fmul float %".4991", %".4992"
  %"fadd.191" = fadd float %"fmul.216", %".4993"
  %".4994" = bitcast ptr %"R56" to ptr
  store float %"fadd.191", ptr %".4994"
  br label %".L_x_31"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".4998" = load i32, ptr %"R22"
  %".4999" = load i1, ptr %"PT"
  %"cmp.39" = icmp ne i32 %".4998", 0
  %".5000" = or i1 %"cmp.39", %".4999"
  ; @!P0 BRA `(.L_x_27)
  %".5002" = load i1, ptr %"P0"
  %".5003" = icmp eq i1 %".5002", 1
  br i1 %".5003", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".5006" = load i32, ptr %"R0"
  %".5007" = load i32, ptr %"R23"
  %"add.238" = add i32 %".5006", %".5007"
  %"add.239" = add i32 %"add.238", 0
  store i32 %"add.239", ptr %"R5"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6"
  ; LEA R11, R2.reuse, R5, 0x2
  %".5012" = load i32, ptr %"R2"
  %".5013" = load i32, ptr %"R5"
  %"shl.280" = shl i32 %".5012", 2
  %"add.240" = add i32 %"shl.280", %".5013"
  store i32 %"add.240", ptr %"R11"
  ; IMAD R7, R2, 0x3, R5
  %".5016" = load i32, ptr %"R2"
  %".5017" = load i32, ptr %"R5"
  %"mul.82" = mul i32 %".5016", 3
  %"add.241" = add i32 %"mul.82", %".5017"
  store i32 %"add.241", ptr %"R7"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".5020" = load i32, ptr %"R23"
  %".5021" = load i32, ptr %"R6"
  %"mul.83" = mul i32 %".5020", %".5021"
  %"add.242" = add i32 %"mul.83", %"Arg_3"
  store i32 %"add.242", ptr %"R8"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".5024" = load i32, ptr %"R7"
  %".5025" = load i32, ptr %"R6"
  %"mul.84" = mul i32 %".5024", %".5025"
  %"add.243" = add i32 %"mul.84", %"Arg_4"
  store i32 %"add.243", ptr %"R4"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".5028" = load i32, ptr %"R11"
  %".5029" = load i32, ptr %"R6"
  %"mul.85" = mul i32 %".5028", %".5029"
  %"add.244" = add i32 %"mul.85", %"Arg_4"
  store i32 %"add.244", ptr %"R6"
  ; LDG.E.SYS R13, [R8]
  %".5032" = load i32, ptr %"R8"
  %"zext.532" = zext i32 %".5032" to i64
  %".5033" = load i32, ptr %"R9"
  %"zext.533" = zext i32 %".5033" to i64
  %"shl.281" = shl i64 %"zext.533", 32
  %"or.264" = or i64 %"shl.281", %"zext.532"
  %".5034" = inttoptr i64 %"or.264" to ptr
  %".5035" = ptrtoint ptr %".5034" to i64
  %".5036" = add i64 %".5035", 0
  %"for_LDG.259" = inttoptr i64 %".5036" to ptr
  %".5037" = load float, ptr %"for_LDG.259"
  %".5038" = bitcast ptr %"R13" to ptr
  store float %".5037", ptr %".5038"
  ; LDG.E.SYS R11, [R4]
  %".5041" = load i32, ptr %"R4"
  %"zext.534" = zext i32 %".5041" to i64
  %".5042" = load i32, ptr %"R5"
  %"zext.535" = zext i32 %".5042" to i64
  %"shl.282" = shl i64 %"zext.535", 32
  %"or.265" = or i64 %"shl.282", %"zext.534"
  %".5043" = inttoptr i64 %"or.265" to ptr
  %".5044" = ptrtoint ptr %".5043" to i64
  %".5045" = add i64 %".5044", 0
  %"for_LDG.260" = inttoptr i64 %".5045" to ptr
  %".5046" = load float, ptr %"for_LDG.260"
  %".5047" = bitcast ptr %"R11" to ptr
  store float %".5046", ptr %".5047"
  ; LDG.E.SYS R10, [R6]
  %".5050" = load i32, ptr %"R6"
  %"zext.536" = zext i32 %".5050" to i64
  %".5051" = load i32, ptr %"R7"
  %"zext.537" = zext i32 %".5051" to i64
  %"shl.283" = shl i64 %"zext.537", 32
  %"or.266" = or i64 %"shl.283", %"zext.536"
  %".5052" = inttoptr i64 %"or.266" to ptr
  %".5053" = ptrtoint ptr %".5052" to i64
  %".5054" = add i64 %".5053", 0
  %"for_LDG.261" = inttoptr i64 %".5054" to ptr
  %".5055" = load float, ptr %"for_LDG.261"
  %".5056" = bitcast ptr %"R10" to ptr
  store float %".5055", ptr %".5056"
  ; LDG.E.SYS R25, [R8+0x4]
  %".5059" = load i32, ptr %"R8"
  %"zext.538" = zext i32 %".5059" to i64
  %".5060" = load i32, ptr %"R9"
  %"zext.539" = zext i32 %".5060" to i64
  %"shl.284" = shl i64 %"zext.539", 32
  %"or.267" = or i64 %"shl.284", %"zext.538"
  %".5061" = inttoptr i64 %"or.267" to ptr
  %".5062" = ptrtoint ptr %".5061" to i64
  %".5063" = add i64 %".5062", 4
  %"for_LDG.262" = inttoptr i64 %".5063" to ptr
  %".5064" = load float, ptr %"for_LDG.262"
  %".5065" = bitcast ptr %"R25" to ptr
  store float %".5064", ptr %".5065"
  ; LDG.E.SYS R12, [R4+0x4]
  %".5068" = load i32, ptr %"R4"
  %"zext.540" = zext i32 %".5068" to i64
  %".5069" = load i32, ptr %"R5"
  %"zext.541" = zext i32 %".5069" to i64
  %"shl.285" = shl i64 %"zext.541", 32
  %"or.268" = or i64 %"shl.285", %"zext.540"
  %".5070" = inttoptr i64 %"or.268" to ptr
  %".5071" = ptrtoint ptr %".5070" to i64
  %".5072" = add i64 %".5071", 4
  %"for_LDG.263" = inttoptr i64 %".5072" to ptr
  %".5073" = load float, ptr %"for_LDG.263"
  %".5074" = bitcast ptr %"R12" to ptr
  store float %".5073", ptr %".5074"
  ; LDG.E.SYS R24, [R6+0x4]
  %".5077" = load i32, ptr %"R6"
  %"zext.542" = zext i32 %".5077" to i64
  %".5078" = load i32, ptr %"R7"
  %"zext.543" = zext i32 %".5078" to i64
  %"shl.286" = shl i64 %"zext.543", 32
  %"or.269" = or i64 %"shl.286", %"zext.542"
  %".5079" = inttoptr i64 %"or.269" to ptr
  %".5080" = ptrtoint ptr %".5079" to i64
  %".5081" = add i64 %".5080", 4
  %"for_LDG.264" = inttoptr i64 %".5081" to ptr
  %".5082" = load float, ptr %"for_LDG.264"
  %".5083" = bitcast ptr %"R24" to ptr
  store float %".5082", ptr %".5083"
  ; LDG.E.SYS R35, [R8+0x8]
  %".5086" = load i32, ptr %"R8"
  %"zext.544" = zext i32 %".5086" to i64
  %".5087" = load i32, ptr %"R9"
  %"zext.545" = zext i32 %".5087" to i64
  %"shl.287" = shl i64 %"zext.545", 32
  %"or.270" = or i64 %"shl.287", %"zext.544"
  %".5088" = inttoptr i64 %"or.270" to ptr
  %".5089" = ptrtoint ptr %".5088" to i64
  %".5090" = add i64 %".5089", 8
  %"for_LDG.265" = inttoptr i64 %".5090" to ptr
  %".5091" = load float, ptr %"for_LDG.265"
  %".5092" = bitcast ptr %"R35" to ptr
  store float %".5091", ptr %".5092"
  ; LDG.E.SYS R34, [R4+0x8]
  %".5095" = load i32, ptr %"R4"
  %"zext.546" = zext i32 %".5095" to i64
  %".5096" = load i32, ptr %"R5"
  %"zext.547" = zext i32 %".5096" to i64
  %"shl.288" = shl i64 %"zext.547", 32
  %"or.271" = or i64 %"shl.288", %"zext.546"
  %".5097" = inttoptr i64 %"or.271" to ptr
  %".5098" = ptrtoint ptr %".5097" to i64
  %".5099" = add i64 %".5098", 8
  %"for_LDG.266" = inttoptr i64 %".5099" to ptr
  %".5100" = load float, ptr %"for_LDG.266"
  %".5101" = bitcast ptr %"R34" to ptr
  store float %".5100", ptr %".5101"
  ; LDG.E.SYS R36, [R6+0x8]
  %".5104" = load i32, ptr %"R6"
  %"zext.548" = zext i32 %".5104" to i64
  %".5105" = load i32, ptr %"R7"
  %"zext.549" = zext i32 %".5105" to i64
  %"shl.289" = shl i64 %"zext.549", 32
  %"or.272" = or i64 %"shl.289", %"zext.548"
  %".5106" = inttoptr i64 %"or.272" to ptr
  %".5107" = ptrtoint ptr %".5106" to i64
  %".5108" = add i64 %".5107", 8
  %"for_LDG.267" = inttoptr i64 %".5108" to ptr
  %".5109" = load float, ptr %"for_LDG.267"
  %".5110" = bitcast ptr %"R36" to ptr
  store float %".5109", ptr %".5110"
  ; LDG.E.SYS R37, [R8+0xc]
  %".5113" = load i32, ptr %"R8"
  %"zext.550" = zext i32 %".5113" to i64
  %".5114" = load i32, ptr %"R9"
  %"zext.551" = zext i32 %".5114" to i64
  %"shl.290" = shl i64 %"zext.551", 32
  %"or.273" = or i64 %"shl.290", %"zext.550"
  %".5115" = inttoptr i64 %"or.273" to ptr
  %".5116" = ptrtoint ptr %".5115" to i64
  %".5117" = add i64 %".5116", 12
  %"for_LDG.268" = inttoptr i64 %".5117" to ptr
  %".5118" = load float, ptr %"for_LDG.268"
  %".5119" = bitcast ptr %"R37" to ptr
  store float %".5118", ptr %".5119"
  ; LDG.E.SYS R38, [R4+0xc]
  %".5122" = load i32, ptr %"R4"
  %"zext.552" = zext i32 %".5122" to i64
  %".5123" = load i32, ptr %"R5"
  %"zext.553" = zext i32 %".5123" to i64
  %"shl.291" = shl i64 %"zext.553", 32
  %"or.274" = or i64 %"shl.291", %"zext.552"
  %".5124" = inttoptr i64 %"or.274" to ptr
  %".5125" = ptrtoint ptr %".5124" to i64
  %".5126" = add i64 %".5125", 12
  %"for_LDG.269" = inttoptr i64 %".5126" to ptr
  %".5127" = load float, ptr %"for_LDG.269"
  %".5128" = bitcast ptr %"R38" to ptr
  store float %".5127", ptr %".5128"
  ; LDG.E.SYS R39, [R6+0xc]
  %".5131" = load i32, ptr %"R6"
  %"zext.554" = zext i32 %".5131" to i64
  %".5132" = load i32, ptr %"R7"
  %"zext.555" = zext i32 %".5132" to i64
  %"shl.292" = shl i64 %"zext.555", 32
  %"or.275" = or i64 %"shl.292", %"zext.554"
  %".5133" = inttoptr i64 %"or.275" to ptr
  %".5134" = ptrtoint ptr %".5133" to i64
  %".5135" = add i64 %".5134", 12
  %"for_LDG.270" = inttoptr i64 %".5135" to ptr
  %".5136" = load float, ptr %"for_LDG.270"
  %".5137" = bitcast ptr %"R39" to ptr
  store float %".5136", ptr %".5137"
  ; IADD3 R22, R22, -0x4, RZ
  %".5140" = load i32, ptr %"R22"
  %"add.245" = add i32 %".5140", -4
  %"add.246" = add i32 %"add.245", 0
  store i32 %"add.246", ptr %"R22"
  ; IADD3 R23, R23, 0x4, RZ
  %".5143" = load i32, ptr %"R23"
  %"add.247" = add i32 %".5143", 4
  %"add.248" = add i32 %"add.247", 0
  store i32 %"add.248", ptr %"R23"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".5146" = load i32, ptr %"R22"
  %".5147" = load i1, ptr %"PT"
  %"cmp.40" = icmp ne i32 %".5146", 0
  %".5148" = and i1 %"cmp.40", %".5147"
  ; FFMA R11, R11, R13, R44
  %".5150" = load float, ptr %"R11"
  %".5151" = load float, ptr %"R13"
  %".5152" = load float, ptr %"R44"
  %"fmul.217" = fmul float %".5150", %".5151"
  %"fadd.192" = fadd float %"fmul.217", %".5152"
  %".5153" = bitcast ptr %"R11" to ptr
  store float %"fadd.192", ptr %".5153"
  ; FFMA R10, R13, R10, R56
  %".5156" = load float, ptr %"R13"
  %".5157" = load float, ptr %"R10"
  %".5158" = load float, ptr %"R56"
  %"fmul.218" = fmul float %".5156", %".5157"
  %"fadd.193" = fadd float %"fmul.218", %".5158"
  %".5159" = bitcast ptr %"R10" to ptr
  store float %"fadd.193", ptr %".5159"
  ; FFMA R11, R12, R25, R11
  %".5162" = load float, ptr %"R12"
  %".5163" = load float, ptr %"R25"
  %".5164" = load float, ptr %"R11"
  %"fmul.219" = fmul float %".5162", %".5163"
  %"fadd.194" = fadd float %"fmul.219", %".5164"
  %".5165" = bitcast ptr %"R11" to ptr
  store float %"fadd.194", ptr %".5165"
  ; FFMA R10, R25, R24, R10
  %".5168" = load float, ptr %"R25"
  %".5169" = load float, ptr %"R24"
  %".5170" = load float, ptr %"R10"
  %"fmul.220" = fmul float %".5168", %".5169"
  %"fadd.195" = fadd float %"fmul.220", %".5170"
  %".5171" = bitcast ptr %"R10" to ptr
  store float %"fadd.195", ptr %".5171"
  ; FFMA R11, R34, R35, R11
  %".5174" = load float, ptr %"R34"
  %".5175" = load float, ptr %"R35"
  %".5176" = load float, ptr %"R11"
  %"fmul.221" = fmul float %".5174", %".5175"
  %"fadd.196" = fadd float %"fmul.221", %".5176"
  %".5177" = bitcast ptr %"R11" to ptr
  store float %"fadd.196", ptr %".5177"
  ; FFMA R10, R35, R36, R10
  %".5180" = load float, ptr %"R35"
  %".5181" = load float, ptr %"R36"
  %".5182" = load float, ptr %"R10"
  %"fmul.222" = fmul float %".5180", %".5181"
  %"fadd.197" = fadd float %"fmul.222", %".5182"
  %".5183" = bitcast ptr %"R10" to ptr
  store float %"fadd.197", ptr %".5183"
  ; FFMA R44, R38, R37, R11
  %".5186" = load float, ptr %"R38"
  %".5187" = load float, ptr %"R37"
  %".5188" = load float, ptr %"R11"
  %"fmul.223" = fmul float %".5186", %".5187"
  %"fadd.198" = fadd float %"fmul.223", %".5188"
  %".5189" = bitcast ptr %"R44" to ptr
  store float %"fadd.198", ptr %".5189"
  ; FFMA R56, R37, R39, R10
  %".5192" = load float, ptr %"R37"
  %".5193" = load float, ptr %"R39"
  %".5194" = load float, ptr %"R10"
  %"fmul.224" = fmul float %".5192", %".5193"
  %"fadd.199" = fadd float %"fmul.224", %".5194"
  %".5195" = bitcast ptr %"R56" to ptr
  store float %"fadd.199", ptr %".5195"
  ; @P0 BRA `(.L_x_28)
  %".5198" = load i1, ptr %"P0"
  %".5199" = icmp ne i1 %".5198", 1
  br i1 %".5199", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".5202" = load i32, ptr %"R48"
  %".5203" = load i1, ptr %"PT"
  %"cmp.41" = icmp ne i32 %".5202", 0
  %".5204" = and i1 %"cmp.41", %".5203"
  ; @!P0 BRA `(.L_x_26)
  %".5206" = load i1, ptr %"P0"
  %".5207" = icmp eq i1 %".5206", 1
  br i1 %".5207", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".5210" = load i32, ptr %"R0"
  %".5211" = load i32, ptr %"R23"
  %"add.249" = add i32 %".5210", %".5211"
  %"add.250" = add i32 %"add.249", 0
  store i32 %"add.250", ptr %"R5"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9"
  ; LEA R8, R2.reuse, R5, 0x2
  %".5216" = load i32, ptr %"R2"
  %".5217" = load i32, ptr %"R5"
  %"shl.293" = shl i32 %".5216", 2
  %"add.251" = add i32 %"shl.293", %".5217"
  store i32 %"add.251", ptr %"R8"
  ; IMAD R6, R2, 0x3, R5
  %".5220" = load i32, ptr %"R2"
  %".5221" = load i32, ptr %"R5"
  %"mul.86" = mul i32 %".5220", 3
  %"add.252" = add i32 %"mul.86", %".5221"
  store i32 %"add.252", ptr %"R6"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".5224" = load i32, ptr %"R23"
  %".5225" = load i32, ptr %"R9"
  %"mul.87" = mul i32 %".5224", %".5225"
  %"add.253" = add i32 %"mul.87", %"Arg_3"
  store i32 %"add.253", ptr %"R4"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".5228" = load i32, ptr %"R6"
  %".5229" = load i32, ptr %"R9"
  %"mul.88" = mul i32 %".5228", %".5229"
  %"add.254" = add i32 %"mul.88", %"Arg_4"
  store i32 %"add.254", ptr %"R6"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".5232" = load i32, ptr %"R8"
  %".5233" = load i32, ptr %"R9"
  %"mul.89" = mul i32 %".5232", %".5233"
  %"add.255" = add i32 %"mul.89", %"Arg_4"
  store i32 %"add.255", ptr %"R8"
  ; LDG.E.SYS R13, [R4]
  %".5236" = load i32, ptr %"R4"
  %"zext.556" = zext i32 %".5236" to i64
  %".5237" = load i32, ptr %"R5"
  %"zext.557" = zext i32 %".5237" to i64
  %"shl.294" = shl i64 %"zext.557", 32
  %"or.276" = or i64 %"shl.294", %"zext.556"
  %".5238" = inttoptr i64 %"or.276" to ptr
  %".5239" = ptrtoint ptr %".5238" to i64
  %".5240" = add i64 %".5239", 0
  %"for_LDG.271" = inttoptr i64 %".5240" to ptr
  %".5241" = load float, ptr %"for_LDG.271"
  %".5242" = bitcast ptr %"R13" to ptr
  store float %".5241", ptr %".5242"
  ; LDG.E.SYS R11, [R6]
  %".5245" = load i32, ptr %"R6"
  %"zext.558" = zext i32 %".5245" to i64
  %".5246" = load i32, ptr %"R7"
  %"zext.559" = zext i32 %".5246" to i64
  %"shl.295" = shl i64 %"zext.559", 32
  %"or.277" = or i64 %"shl.295", %"zext.558"
  %".5247" = inttoptr i64 %"or.277" to ptr
  %".5248" = ptrtoint ptr %".5247" to i64
  %".5249" = add i64 %".5248", 0
  %"for_LDG.272" = inttoptr i64 %".5249" to ptr
  %".5250" = load float, ptr %"for_LDG.272"
  %".5251" = bitcast ptr %"R11" to ptr
  store float %".5250", ptr %".5251"
  ; LDG.E.SYS R10, [R8]
  %".5254" = load i32, ptr %"R8"
  %"zext.560" = zext i32 %".5254" to i64
  %".5255" = load i32, ptr %"R9"
  %"zext.561" = zext i32 %".5255" to i64
  %"shl.296" = shl i64 %"zext.561", 32
  %"or.278" = or i64 %"shl.296", %"zext.560"
  %".5256" = inttoptr i64 %"or.278" to ptr
  %".5257" = ptrtoint ptr %".5256" to i64
  %".5258" = add i64 %".5257", 0
  %"for_LDG.273" = inttoptr i64 %".5258" to ptr
  %".5259" = load float, ptr %"for_LDG.273"
  %".5260" = bitcast ptr %"R10" to ptr
  store float %".5259", ptr %".5260"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".5263" = load i32, ptr %"R48"
  %".5264" = load i1, ptr %"PT"
  %"cmp.42" = icmp ne i32 %".5263", 1
  %".5265" = and i1 %"cmp.42", %".5264"
  ; FFMA R44, R11, R13, R44
  %".5267" = load float, ptr %"R11"
  %".5268" = load float, ptr %"R13"
  %".5269" = load float, ptr %"R44"
  %"fmul.225" = fmul float %".5267", %".5268"
  %"fadd.200" = fadd float %"fmul.225", %".5269"
  %".5270" = bitcast ptr %"R44" to ptr
  store float %"fadd.200", ptr %".5270"
  ; FFMA R56, R13, R10, R56
  %".5273" = load float, ptr %"R13"
  %".5274" = load float, ptr %"R10"
  %".5275" = load float, ptr %"R56"
  %"fmul.226" = fmul float %".5273", %".5274"
  %"fadd.201" = fadd float %"fmul.226", %".5275"
  %".5276" = bitcast ptr %"R56" to ptr
  store float %"fadd.201", ptr %".5276"
  ; @!P0 BRA `(.L_x_26)
  %".5279" = load i1, ptr %"P0"
  %".5280" = icmp eq i1 %".5279", 1
  br i1 %".5280", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".5283" = load i32, ptr %"R48"
  %".5284" = load i1, ptr %"PT"
  %"cmp.43" = icmp ne i32 %".5283", 2
  %".5285" = and i1 %"cmp.43", %".5284"
  ; LDG.E.SYS R11, [R6+0x4]
  %".5287" = load i32, ptr %"R6"
  %"zext.562" = zext i32 %".5287" to i64
  %".5288" = load i32, ptr %"R7"
  %"zext.563" = zext i32 %".5288" to i64
  %"shl.297" = shl i64 %"zext.563", 32
  %"or.279" = or i64 %"shl.297", %"zext.562"
  %".5289" = inttoptr i64 %"or.279" to ptr
  %".5290" = ptrtoint ptr %".5289" to i64
  %".5291" = add i64 %".5290", 4
  %"for_LDG.274" = inttoptr i64 %".5291" to ptr
  %".5292" = load float, ptr %"for_LDG.274"
  %".5293" = bitcast ptr %"R11" to ptr
  store float %".5292", ptr %".5293"
  ; LDG.E.SYS R13, [R4+0x4]
  %".5296" = load i32, ptr %"R4"
  %"zext.564" = zext i32 %".5296" to i64
  %".5297" = load i32, ptr %"R5"
  %"zext.565" = zext i32 %".5297" to i64
  %"shl.298" = shl i64 %"zext.565", 32
  %"or.280" = or i64 %"shl.298", %"zext.564"
  %".5298" = inttoptr i64 %"or.280" to ptr
  %".5299" = ptrtoint ptr %".5298" to i64
  %".5300" = add i64 %".5299", 4
  %"for_LDG.275" = inttoptr i64 %".5300" to ptr
  %".5301" = load float, ptr %"for_LDG.275"
  %".5302" = bitcast ptr %"R13" to ptr
  store float %".5301", ptr %".5302"
  ; LDG.E.SYS R10, [R8+0x4]
  %".5305" = load i32, ptr %"R8"
  %"zext.566" = zext i32 %".5305" to i64
  %".5306" = load i32, ptr %"R9"
  %"zext.567" = zext i32 %".5306" to i64
  %"shl.299" = shl i64 %"zext.567", 32
  %"or.281" = or i64 %"shl.299", %"zext.566"
  %".5307" = inttoptr i64 %"or.281" to ptr
  %".5308" = ptrtoint ptr %".5307" to i64
  %".5309" = add i64 %".5308", 4
  %"for_LDG.276" = inttoptr i64 %".5309" to ptr
  %".5310" = load float, ptr %"for_LDG.276"
  %".5311" = bitcast ptr %"R10" to ptr
  store float %".5310", ptr %".5311"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".5314" = load i1, ptr %"P0"
  %".5315" = icmp ne i1 %".5314", 1
  br i1 %".5315", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  %".5318" = load i32, ptr %"R6"
  %"zext.568" = zext i32 %".5318" to i64
  %".5319" = load i32, ptr %"R7"
  %"zext.569" = zext i32 %".5319" to i64
  %"shl.300" = shl i64 %"zext.569", 32
  %"or.282" = or i64 %"shl.300", %"zext.568"
  %".5320" = inttoptr i64 %"or.282" to ptr
  %".5321" = ptrtoint ptr %".5320" to i64
  %".5322" = add i64 %".5321", 8
  %"for_LDG.277" = inttoptr i64 %".5322" to ptr
  %".5323" = load float, ptr %"for_LDG.277"
  %".5324" = bitcast ptr %"R23" to ptr
  store float %".5323", ptr %".5324"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".5329" = load i1, ptr %"P0"
  %".5330" = icmp ne i1 %".5329", 1
  br i1 %".5330", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  %".5333" = load i32, ptr %"R4"
  %"zext.570" = zext i32 %".5333" to i64
  %".5334" = load i32, ptr %"R5"
  %"zext.571" = zext i32 %".5334" to i64
  %"shl.301" = shl i64 %"zext.571", 32
  %"or.283" = or i64 %"shl.301", %"zext.570"
  %".5335" = inttoptr i64 %"or.283" to ptr
  %".5336" = ptrtoint ptr %".5335" to i64
  %".5337" = add i64 %".5336", 8
  %"for_LDG.278" = inttoptr i64 %".5337" to ptr
  %".5338" = load float, ptr %"for_LDG.278"
  %".5339" = bitcast ptr %"R25" to ptr
  store float %".5338", ptr %".5339"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".5344" = load i1, ptr %"P0"
  %".5345" = icmp ne i1 %".5344", 1
  br i1 %".5345", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  %".5348" = load i32, ptr %"R8"
  %"zext.572" = zext i32 %".5348" to i64
  %".5349" = load i32, ptr %"R9"
  %"zext.573" = zext i32 %".5349" to i64
  %"shl.302" = shl i64 %"zext.573", 32
  %"or.284" = or i64 %"shl.302", %"zext.572"
  %".5350" = inttoptr i64 %"or.284" to ptr
  %".5351" = ptrtoint ptr %".5350" to i64
  %".5352" = add i64 %".5351", 8
  %"for_LDG.279" = inttoptr i64 %".5352" to ptr
  %".5353" = load float, ptr %"for_LDG.279"
  %".5354" = bitcast ptr %"R12" to ptr
  store float %".5353", ptr %".5354"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".5359" = load float, ptr %"R11"
  %".5360" = load float, ptr %"R13"
  %".5361" = load float, ptr %"R44"
  %"fmul.227" = fmul float %".5359", %".5360"
  %"fadd.202" = fadd float %"fmul.227", %".5361"
  %".5362" = bitcast ptr %"R44" to ptr
  store float %"fadd.202", ptr %".5362"
  ; FFMA R56, R13, R10, R56
  %".5365" = load float, ptr %"R13"
  %".5366" = load float, ptr %"R10"
  %".5367" = load float, ptr %"R56"
  %"fmul.228" = fmul float %".5365", %".5366"
  %"fadd.203" = fadd float %"fmul.228", %".5367"
  %".5368" = bitcast ptr %"R56" to ptr
  store float %"fadd.203", ptr %".5368"
  ; @P0 FFMA R44, R23, R25, R44
  %".5371" = load i1, ptr %"P0"
  %".5372" = icmp ne i1 %".5371", 1
  br i1 %".5372", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".5375" = load float, ptr %"R23"
  %".5376" = load float, ptr %"R25"
  %".5377" = load float, ptr %"R44"
  %"fmul.229" = fmul float %".5375", %".5376"
  %"fadd.204" = fadd float %"fmul.229", %".5377"
  %".5378" = bitcast ptr %"R44" to ptr
  store float %"fadd.204", ptr %".5378"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".5383" = load i1, ptr %"P0"
  %".5384" = icmp ne i1 %".5383", 1
  br i1 %".5384", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".5387" = load float, ptr %"R25"
  %".5388" = load float, ptr %"R12"
  %".5389" = load float, ptr %"R56"
  %"fmul.230" = fmul float %".5387", %".5388"
  %"fadd.205" = fadd float %"fmul.230", %".5389"
  %".5390" = bitcast ptr %"R56" to ptr
  store float %"fadd.205", ptr %".5390"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  %".5395" = load i32, ptr %"R26"
  %"zext.574" = zext i32 %".5395" to i64
  %"zext.575" = zext i32 0 to i64
  %"shl.303" = shl i64 %"zext.575", 32
  %"or.285" = or i64 %"shl.303", %"zext.574"
  %".5396" = inttoptr i64 %"or.285" to ptr
  %".5397" = ptrtoint ptr %".5396" to i64
  %".5398" = add i64 %".5397", 0
  %"for_LDG.280" = inttoptr i64 %".5398" to ptr
  %".5399" = load float, ptr %"for_LDG.280"
  %".5400" = bitcast ptr %"R5" to ptr
  store float %".5399", ptr %".5400"
  ; MOV R4, 0x3bbb989d
  %".5403" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".5403"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  %".5407" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".5407"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".5411" = load float, ptr %"R5"
  %".5412" = load float, ptr %"R44"
  %"fadd.206" = fadd float %".5411", %".5412"
  %".5413" = bitcast ptr %"R5" to ptr
  store float %"fadd.206", ptr %".5413"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".5416" = load float, ptr %"R5"
  %".5417" = fneg float %".5416"
  %".5418" = load float, ptr %"R4"
  %"fmul.231" = fmul float %".5417", %".5418"
  %"fadd.207" = fadd float %"fmul.231", 0x3fe0000000000000
  %".5419" = bitcast ptr %"R4" to ptr
  store float %"fadd.207", ptr %".5419"
  ; FFMA.RM R4, R4, R7, 12582913
  %".5422" = load float, ptr %"R4"
  %".5423" = load float, ptr %"R7"
  %"fmul.232" = fmul float %".5422", %".5423"
  %"fadd.208" = fadd float %"fmul.232", 0x4168000020000000
  %".5424" = bitcast ptr %"R4" to ptr
  store float %"fadd.208", ptr %".5424"
  ; FADD R6, R4.reuse, -12583039
  %".5427" = load float, ptr %"R4"
  %"fadd.209" = fadd float %".5427", 0xc168000fe0000000
  %".5428" = bitcast ptr %"R6" to ptr
  store float %"fadd.209", ptr %".5428"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".5431" = icmp ult i32 23, 32
  %"SHF_min.4" = select  i1 %".5431", i32 23, i32 32
  %".5432" = load i32, ptr %"R4"
  %"zext.576" = zext i32 0 to i64
  %"zext.577" = zext i32 %".5432" to i64
  %"zext.578" = zext i32 23 to i64
  %"shl.304" = shl i64 %"zext.576", 32
  %"or.286" = or i64 %"shl.304", %"zext.577"
  %"shl.305" = shl i64 %"or.286", %"zext.578"
  %"and.2" = and i64 %"shl.305", 4294967295
  %"trunc32.4" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.4", ptr %"R4"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".5435" = load float, ptr %"R5"
  %".5436" = fneg float %".5435"
  %".5437" = load float, ptr %"R6"
  %".5438" = fneg float %".5437"
  %"fmul.233" = fmul float %".5436", 0x3ff7154760000000
  %"fadd.210" = fadd float %"fmul.233", %".5438"
  %".5439" = bitcast ptr %"R6" to ptr
  store float %"fadd.210", ptr %".5439"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".5442" = load float, ptr %"R5"
  %".5443" = fneg float %".5442"
  %".5444" = load float, ptr %"R6"
  %"fmul.234" = fmul float %".5443", 0x3e54ae0c00000000
  %"fadd.211" = fadd float %"fmul.234", %".5444"
  %".5445" = bitcast ptr %"R6" to ptr
  store float %"fadd.211", ptr %".5445"
  ; MUFU.EX2 R5, R6
  %".5448" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".5448")
  %".5449" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".5449"
  ; FFMA R24, R4, R5, 1
  %".5452" = load float, ptr %"R4"
  %".5453" = load float, ptr %"R5"
  %"fmul.235" = fmul float %".5452", %".5453"
  %"fadd.212" = fadd float %"fmul.235", 0x3ff0000000000000
  %".5454" = bitcast ptr %"R24" to ptr
  store float %"fadd.212", ptr %".5454"
  ; IADD3 R4, R24, 0x1800000, RZ
  %".5457" = load i32, ptr %"R24"
  %"add.256" = add i32 %".5457", 25165824
  %"add.257" = add i32 %"add.256", 0
  store i32 %"add.257", ptr %"R4"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".5460" = load i32, ptr %"R4"
  %".5461" = and i32 %".5460", 2139095040
  store i32 %".5461", ptr %"R4"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".5464" = load i32, ptr %"R4"
  %".5465" = load i1, ptr %"PT"
  %"cmp.44" = icmp sgt i32 %".5464", 33554431
  %".5466" = and i1 %"cmp.44", %".5465"
  ; @P0 BRA `(.L_x_33)
  %".5468" = load i1, ptr %"P0"
  %".5469" = icmp ne i1 %".5468", 1
  br i1 %".5469", label %".L_x_33", label %".L_x_26_split_0x3910"
.L_x_26_split_0x3910:
  ; MOV R10, 0x3930
  store i32 14640, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.2" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; BRA `(.L_x_34)
  br label %".L_x_34"
.L_x_33:
  ; MUFU.RCP R22, R24
  %".5477" = load float, ptr %"R24"
  %".5478" = fdiv float 0x3ff0000000000000, %".5477"
  %".5479" = bitcast ptr %"R22" to ptr
  store float %".5478", ptr %".5479"
  ; FFMA R4, R24, R22, -1
  %".5482" = load float, ptr %"R24"
  %".5483" = load float, ptr %"R22"
  %"fmul.236" = fmul float %".5482", %".5483"
  %"fadd.213" = fadd float %"fmul.236", 0xbff0000000000000
  %".5484" = bitcast ptr %"R4" to ptr
  store float %"fadd.213", ptr %".5484"
  ; FADD.FTZ R5, -R4, -RZ
  %".5487" = load float, ptr %"R4"
  %".5488" = fneg float %".5487"
  %"fadd.214" = fadd float %".5488",              0x0
  %".5489" = bitcast ptr %"R5" to ptr
  store float %"fadd.214", ptr %".5489"
  ; FFMA R22, R22, R5, R22
  %".5492" = load float, ptr %"R22"
  %".5493" = load float, ptr %"R5"
  %".5494" = load float, ptr %"R22"
  %"fmul.237" = fmul float %".5492", %".5493"
  %"fadd.215" = fadd float %"fmul.237", %".5494"
  %".5495" = bitcast ptr %"R22" to ptr
  store float %"fadd.215", ptr %".5495"
  br label %".L_x_34"
.L_x_34:
  ; BSYNC B0
  br label %".L_x_32"
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  %".5501" = load i32, ptr %"R32"
  %"zext.579" = zext i32 %".5501" to i64
  %".5502" = load i32, ptr %"R33"
  %"zext.580" = zext i32 %".5502" to i64
  %"shl.306" = shl i64 %"zext.580", 32
  %"or.287" = or i64 %"shl.306", %"zext.579"
  %".5503" = inttoptr i64 %"or.287" to ptr
  %".5504" = ptrtoint ptr %".5503" to i64
  %".5505" = add i64 %".5504", 0
  %"for_LDG.281" = inttoptr i64 %".5505" to ptr
  %".5506" = load float, ptr %"for_LDG.281"
  %".5507" = bitcast ptr %"R5" to ptr
  store float %".5506", ptr %".5507"
  ; MOV R4, 0x3bbb989d
  %".5510" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".5510"
  ; MOV R7, 0x437c0000
  %".5513" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".5513"
  ; FADD R5, R5, R56
  %".5516" = load float, ptr %"R5"
  %".5517" = load float, ptr %"R56"
  %"fadd.216" = fadd float %".5516", %".5517"
  %".5518" = bitcast ptr %"R5" to ptr
  store float %"fadd.216", ptr %".5518"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".5521" = load float, ptr %"R5"
  %".5522" = fneg float %".5521"
  %".5523" = load float, ptr %"R4"
  %"fmul.238" = fmul float %".5522", %".5523"
  %"fadd.217" = fadd float %"fmul.238", 0x3fe0000000000000
  %".5524" = bitcast ptr %"R4" to ptr
  store float %"fadd.217", ptr %".5524"
  ; FFMA.RM R4, R4, R7, 12582913
  %".5527" = load float, ptr %"R4"
  %".5528" = load float, ptr %"R7"
  %"fmul.239" = fmul float %".5527", %".5528"
  %"fadd.218" = fadd float %"fmul.239", 0x4168000020000000
  %".5529" = bitcast ptr %"R4" to ptr
  store float %"fadd.218", ptr %".5529"
  ; FADD R6, R4.reuse, -12583039
  %".5532" = load float, ptr %"R4"
  %"fadd.219" = fadd float %".5532", 0xc168000fe0000000
  %".5533" = bitcast ptr %"R6" to ptr
  store float %"fadd.219", ptr %".5533"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".5536" = icmp ult i32 23, 32
  %"SHF_min.5" = select  i1 %".5536", i32 23, i32 32
  %".5537" = load i32, ptr %"R4"
  %"zext.581" = zext i32 0 to i64
  %"zext.582" = zext i32 %".5537" to i64
  %"zext.583" = zext i32 23 to i64
  %"shl.307" = shl i64 %"zext.581", 32
  %"or.288" = or i64 %"shl.307", %"zext.582"
  %"shl.308" = shl i64 %"or.288", %"zext.583"
  %"and.3" = and i64 %"shl.308", 4294967295
  %"trunc32.5" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.5", ptr %"R23"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".5540" = load float, ptr %"R5"
  %".5541" = fneg float %".5540"
  %".5542" = load float, ptr %"R6"
  %".5543" = fneg float %".5542"
  %"fmul.240" = fmul float %".5541", 0x3ff7154760000000
  %"fadd.220" = fadd float %"fmul.240", %".5543"
  %".5544" = bitcast ptr %"R6" to ptr
  store float %"fadd.220", ptr %".5544"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".5547" = load float, ptr %"R5"
  %".5548" = fneg float %".5547"
  %".5549" = load float, ptr %"R6"
  %"fmul.241" = fmul float %".5548", 0x3e54ae0c00000000
  %"fadd.221" = fadd float %"fmul.241", %".5549"
  %".5550" = bitcast ptr %"R6" to ptr
  store float %"fadd.221", ptr %".5550"
  ; MUFU.EX2 R6, R6
  %".5553" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".5553")
  %".5554" = bitcast ptr %"R6" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".5554"
  ; FFMA R23, R23, R6, 1
  %".5557" = load float, ptr %"R23"
  %".5558" = load float, ptr %"R6"
  %"fmul.242" = fmul float %".5557", %".5558"
  %"fadd.222" = fadd float %"fmul.242", 0x3ff0000000000000
  %".5559" = bitcast ptr %"R23" to ptr
  store float %"fadd.222", ptr %".5559"
  ; @!P4 BRA `(.L_x_35)
  %".5562" = load i1, ptr %"P4"
  %".5563" = icmp eq i1 %".5562", 1
  br i1 %".5563", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".5566" = load i32, ptr %"R18"
  %".5567" = load i1, ptr %"PT"
  %"cmp.45" = icmp sge i32 %".5566", 3
  %".5568" = and i1 %"cmp.45", %".5567"
  ; MOV R34, RZ
  %".5570" = load i32, ptr %"RZ"
  store i32 %".5570", ptr %"R34"
  ; @!P0 BRA `(.L_x_36)
  %".5573" = load i1, ptr %"P0"
  %".5574" = icmp eq i1 %".5573", 1
  br i1 %".5574", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".5577" = load i32, ptr %"R20"
  %".5578" = load i1, ptr %"PT"
  %"cmp.46" = icmp sgt i32 %".5577", 0
  %".5579" = and i1 %"cmp.46", %".5578"
  ; MOV R34, RZ
  %".5581" = load i32, ptr %"RZ"
  store i32 %".5581", ptr %"R34"
  ; MOV R35, R20
  %".5584" = load i32, ptr %"R20"
  store i32 %".5584", ptr %"R35"
  ; @!P0 BRA `(.L_x_37)
  %".5587" = load i1, ptr %"P0"
  %".5588" = icmp eq i1 %".5587", 1
  br i1 %".5588", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".5591" = load i32, ptr %"R35"
  %".5592" = load i1, ptr %"PT"
  %"cmp.47" = icmp sgt i32 %".5591", 12
  %".5593" = and i1 %"cmp.47", %".5592"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".5595" = and i1 1, 1
  %".5596" = or i1 %".5595", 1
  ; @!P1 BRA `(.L_x_38)
  %".5598" = load i1, ptr %"P1"
  %".5599" = icmp eq i1 %".5598", 1
  br i1 %".5599", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".5602" = xor i1 1, 1
  %".5603" = and i1 %".5602", 1
  %".5604" = and i1 %".5603", 1
  br label %".L_x_39"
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41"
  ; IADD3 R10, R3, R34, RZ
  %".5609" = load i32, ptr %"R3"
  %".5610" = load i32, ptr %"R34"
  %"add.258" = add i32 %".5609", %".5610"
  %"add.259" = add i32 %"add.258", 0
  store i32 %"add.259", ptr %"R10"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".5613" = load i32, ptr %"R34"
  %".5614" = load i32, ptr %"R41"
  %"mul.90" = mul i32 %".5613", %".5614"
  %"add.260" = add i32 %"mul.90", %"Arg_3"
  store i32 %"add.260", ptr %"R12"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".5617" = load i32, ptr %"R10"
  %".5618" = load i32, ptr %"R41"
  %"mul.91" = mul i32 %".5617", %".5618"
  %"add.261" = add i32 %"mul.91", %"Arg_4"
  store i32 %"add.261", ptr %"R10"
  ; IADD3 R4, R34, 0x4, RZ
  %".5621" = load i32, ptr %"R34"
  %"add.262" = add i32 %".5621", 4
  %"add.263" = add i32 %"add.262", 0
  store i32 %"add.263", ptr %"R4"
  ; LDG.E.SYS R25, [R12]
  %".5624" = load i32, ptr %"R12"
  %"zext.584" = zext i32 %".5624" to i64
  %".5625" = load i32, ptr %"R13"
  %"zext.585" = zext i32 %".5625" to i64
  %"shl.309" = shl i64 %"zext.585", 32
  %"or.289" = or i64 %"shl.309", %"zext.584"
  %".5626" = inttoptr i64 %"or.289" to ptr
  %".5627" = ptrtoint ptr %".5626" to i64
  %".5628" = add i64 %".5627", 0
  %"for_LDG.282" = inttoptr i64 %".5628" to ptr
  %".5629" = load float, ptr %"for_LDG.282"
  %".5630" = bitcast ptr %"R25" to ptr
  store float %".5629", ptr %".5630"
  ; IADD3 R6, R3, R4, RZ
  %".5633" = load i32, ptr %"R3"
  %".5634" = load i32, ptr %"R4"
  %"add.264" = add i32 %".5633", %".5634"
  %"add.265" = add i32 %"add.264", 0
  store i32 %"add.265", ptr %"R6"
  ; LDG.E.SYS R36, [R10]
  %".5637" = load i32, ptr %"R10"
  %"zext.586" = zext i32 %".5637" to i64
  %".5638" = load i32, ptr %"R11"
  %"zext.587" = zext i32 %".5638" to i64
  %"shl.310" = shl i64 %"zext.587", 32
  %"or.290" = or i64 %"shl.310", %"zext.586"
  %".5639" = inttoptr i64 %"or.290" to ptr
  %".5640" = ptrtoint ptr %".5639" to i64
  %".5641" = add i64 %".5640", 0
  %"for_LDG.283" = inttoptr i64 %".5641" to ptr
  %".5642" = load float, ptr %"for_LDG.283"
  %".5643" = bitcast ptr %"R36" to ptr
  store float %".5642", ptr %".5643"
  ; LDG.E.SYS R37, [R12+0x4]
  %".5646" = load i32, ptr %"R12"
  %"zext.588" = zext i32 %".5646" to i64
  %".5647" = load i32, ptr %"R13"
  %"zext.589" = zext i32 %".5647" to i64
  %"shl.311" = shl i64 %"zext.589", 32
  %"or.291" = or i64 %"shl.311", %"zext.588"
  %".5648" = inttoptr i64 %"or.291" to ptr
  %".5649" = ptrtoint ptr %".5648" to i64
  %".5650" = add i64 %".5649", 4
  %"for_LDG.284" = inttoptr i64 %".5650" to ptr
  %".5651" = load float, ptr %"for_LDG.284"
  %".5652" = bitcast ptr %"R37" to ptr
  store float %".5651", ptr %".5652"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".5655" = load i32, ptr %"R4"
  %".5656" = load i32, ptr %"R41"
  %"mul.92" = mul i32 %".5655", %".5656"
  %"add.266" = add i32 %"mul.92", %"Arg_3"
  store i32 %"add.266", ptr %"R4"
  ; LDG.E.SYS R24, [R10+0x4]
  %".5659" = load i32, ptr %"R10"
  %"zext.590" = zext i32 %".5659" to i64
  %".5660" = load i32, ptr %"R11"
  %"zext.591" = zext i32 %".5660" to i64
  %"shl.312" = shl i64 %"zext.591", 32
  %"or.292" = or i64 %"shl.312", %"zext.590"
  %".5661" = inttoptr i64 %"or.292" to ptr
  %".5662" = ptrtoint ptr %".5661" to i64
  %".5663" = add i64 %".5662", 4
  %"for_LDG.285" = inttoptr i64 %".5663" to ptr
  %".5664" = load float, ptr %"for_LDG.285"
  %".5665" = bitcast ptr %"R24" to ptr
  store float %".5664", ptr %".5665"
  ; LDG.E.SYS R39, [R12+0x8]
  %".5668" = load i32, ptr %"R12"
  %"zext.592" = zext i32 %".5668" to i64
  %".5669" = load i32, ptr %"R13"
  %"zext.593" = zext i32 %".5669" to i64
  %"shl.313" = shl i64 %"zext.593", 32
  %"or.293" = or i64 %"shl.313", %"zext.592"
  %".5670" = inttoptr i64 %"or.293" to ptr
  %".5671" = ptrtoint ptr %".5670" to i64
  %".5672" = add i64 %".5671", 8
  %"for_LDG.286" = inttoptr i64 %".5672" to ptr
  %".5673" = load float, ptr %"for_LDG.286"
  %".5674" = bitcast ptr %"R39" to ptr
  store float %".5673", ptr %".5674"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".5677" = load i32, ptr %"R6"
  %".5678" = load i32, ptr %"R41"
  %"mul.93" = mul i32 %".5677", %".5678"
  %"add.267" = add i32 %"mul.93", %"Arg_4"
  store i32 %"add.267", ptr %"R6"
  ; LDG.E.SYS R38, [R10+0x8]
  %".5681" = load i32, ptr %"R10"
  %"zext.594" = zext i32 %".5681" to i64
  %".5682" = load i32, ptr %"R11"
  %"zext.595" = zext i32 %".5682" to i64
  %"shl.314" = shl i64 %"zext.595", 32
  %"or.294" = or i64 %"shl.314", %"zext.594"
  %".5683" = inttoptr i64 %"or.294" to ptr
  %".5684" = ptrtoint ptr %".5683" to i64
  %".5685" = add i64 %".5684", 8
  %"for_LDG.287" = inttoptr i64 %".5685" to ptr
  %".5686" = load float, ptr %"for_LDG.287"
  %".5687" = bitcast ptr %"R38" to ptr
  store float %".5686", ptr %".5687"
  ; LDG.E.SYS R43, [R12+0xc]
  %".5690" = load i32, ptr %"R12"
  %"zext.596" = zext i32 %".5690" to i64
  %".5691" = load i32, ptr %"R13"
  %"zext.597" = zext i32 %".5691" to i64
  %"shl.315" = shl i64 %"zext.597", 32
  %"or.295" = or i64 %"shl.315", %"zext.596"
  %".5692" = inttoptr i64 %"or.295" to ptr
  %".5693" = ptrtoint ptr %".5692" to i64
  %".5694" = add i64 %".5693", 12
  %"for_LDG.288" = inttoptr i64 %".5694" to ptr
  %".5695" = load float, ptr %"for_LDG.288"
  %".5696" = bitcast ptr %"R43" to ptr
  store float %".5695", ptr %".5696"
  ; IADD3 R8, R34, 0x8, RZ
  %".5699" = load i32, ptr %"R34"
  %"add.268" = add i32 %".5699", 8
  %"add.269" = add i32 %"add.268", 0
  store i32 %"add.269", ptr %"R8"
  ; LDG.E.SYS R46, [R10+0xc]
  %".5702" = load i32, ptr %"R10"
  %"zext.598" = zext i32 %".5702" to i64
  %".5703" = load i32, ptr %"R11"
  %"zext.599" = zext i32 %".5703" to i64
  %"shl.316" = shl i64 %"zext.599", 32
  %"or.296" = or i64 %"shl.316", %"zext.598"
  %".5704" = inttoptr i64 %"or.296" to ptr
  %".5705" = ptrtoint ptr %".5704" to i64
  %".5706" = add i64 %".5705", 12
  %"for_LDG.289" = inttoptr i64 %".5706" to ptr
  %".5707" = load float, ptr %"for_LDG.289"
  %".5708" = bitcast ptr %"R46" to ptr
  store float %".5707", ptr %".5708"
  ; LDG.E.SYS R51, [R4]
  %".5711" = load i32, ptr %"R4"
  %"zext.600" = zext i32 %".5711" to i64
  %".5712" = load i32, ptr %"R5"
  %"zext.601" = zext i32 %".5712" to i64
  %"shl.317" = shl i64 %"zext.601", 32
  %"or.297" = or i64 %"shl.317", %"zext.600"
  %".5713" = inttoptr i64 %"or.297" to ptr
  %".5714" = ptrtoint ptr %".5713" to i64
  %".5715" = add i64 %".5714", 0
  %"for_LDG.290" = inttoptr i64 %".5715" to ptr
  %".5716" = load float, ptr %"for_LDG.290"
  %".5717" = bitcast ptr %"R51" to ptr
  store float %".5716", ptr %".5717"
  ; IADD3 R50, R3, R8, RZ
  %".5720" = load i32, ptr %"R3"
  %".5721" = load i32, ptr %"R8"
  %"add.270" = add i32 %".5720", %".5721"
  %"add.271" = add i32 %"add.270", 0
  store i32 %"add.271", ptr %"R50"
  ; LDG.E.SYS R44, [R6]
  %".5724" = load i32, ptr %"R6"
  %"zext.602" = zext i32 %".5724" to i64
  %".5725" = load i32, ptr %"R7"
  %"zext.603" = zext i32 %".5725" to i64
  %"shl.318" = shl i64 %"zext.603", 32
  %"or.298" = or i64 %"shl.318", %"zext.602"
  %".5726" = inttoptr i64 %"or.298" to ptr
  %".5727" = ptrtoint ptr %".5726" to i64
  %".5728" = add i64 %".5727", 0
  %"for_LDG.291" = inttoptr i64 %".5728" to ptr
  %".5729" = load float, ptr %"for_LDG.291"
  %".5730" = bitcast ptr %"R44" to ptr
  store float %".5729", ptr %".5730"
  ; LDG.E.SYS R47, [R4+0x4]
  %".5733" = load i32, ptr %"R4"
  %"zext.604" = zext i32 %".5733" to i64
  %".5734" = load i32, ptr %"R5"
  %"zext.605" = zext i32 %".5734" to i64
  %"shl.319" = shl i64 %"zext.605", 32
  %"or.299" = or i64 %"shl.319", %"zext.604"
  %".5735" = inttoptr i64 %"or.299" to ptr
  %".5736" = ptrtoint ptr %".5735" to i64
  %".5737" = add i64 %".5736", 4
  %"for_LDG.292" = inttoptr i64 %".5737" to ptr
  %".5738" = load float, ptr %"for_LDG.292"
  %".5739" = bitcast ptr %"R47" to ptr
  store float %".5738", ptr %".5739"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".5742" = load i32, ptr %"R8"
  %".5743" = load i32, ptr %"R41"
  %"mul.94" = mul i32 %".5742", %".5743"
  %"add.272" = add i32 %"mul.94", %"Arg_3"
  store i32 %"add.272", ptr %"R8"
  ; LDG.E.SYS R42, [R6+0x4]
  %".5746" = load i32, ptr %"R6"
  %"zext.606" = zext i32 %".5746" to i64
  %".5747" = load i32, ptr %"R7"
  %"zext.607" = zext i32 %".5747" to i64
  %"shl.320" = shl i64 %"zext.607", 32
  %"or.300" = or i64 %"shl.320", %"zext.606"
  %".5748" = inttoptr i64 %"or.300" to ptr
  %".5749" = ptrtoint ptr %".5748" to i64
  %".5750" = add i64 %".5749", 4
  %"for_LDG.293" = inttoptr i64 %".5750" to ptr
  %".5751" = load float, ptr %"for_LDG.293"
  %".5752" = bitcast ptr %"R42" to ptr
  store float %".5751", ptr %".5752"
  ; LDG.E.SYS R45, [R4+0x8]
  %".5755" = load i32, ptr %"R4"
  %"zext.608" = zext i32 %".5755" to i64
  %".5756" = load i32, ptr %"R5"
  %"zext.609" = zext i32 %".5756" to i64
  %"shl.321" = shl i64 %"zext.609", 32
  %"or.301" = or i64 %"shl.321", %"zext.608"
  %".5757" = inttoptr i64 %"or.301" to ptr
  %".5758" = ptrtoint ptr %".5757" to i64
  %".5759" = add i64 %".5758", 8
  %"for_LDG.294" = inttoptr i64 %".5759" to ptr
  %".5760" = load float, ptr %"for_LDG.294"
  %".5761" = bitcast ptr %"R45" to ptr
  store float %".5760", ptr %".5761"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".5764" = load i32, ptr %"R50"
  %".5765" = load i32, ptr %"R41"
  %"mul.95" = mul i32 %".5764", %".5765"
  %"add.273" = add i32 %"mul.95", %"Arg_4"
  store i32 %"add.273", ptr %"R10"
  ; LDG.E.SYS R40, [R6+0x8]
  %".5768" = load i32, ptr %"R6"
  %"zext.610" = zext i32 %".5768" to i64
  %".5769" = load i32, ptr %"R7"
  %"zext.611" = zext i32 %".5769" to i64
  %"shl.322" = shl i64 %"zext.611", 32
  %"or.302" = or i64 %"shl.322", %"zext.610"
  %".5770" = inttoptr i64 %"or.302" to ptr
  %".5771" = ptrtoint ptr %".5770" to i64
  %".5772" = add i64 %".5771", 8
  %"for_LDG.295" = inttoptr i64 %".5772" to ptr
  %".5773" = load float, ptr %"for_LDG.295"
  %".5774" = bitcast ptr %"R40" to ptr
  store float %".5773", ptr %".5774"
  ; LDG.E.SYS R53, [R4+0xc]
  %".5777" = load i32, ptr %"R4"
  %"zext.612" = zext i32 %".5777" to i64
  %".5778" = load i32, ptr %"R5"
  %"zext.613" = zext i32 %".5778" to i64
  %"shl.323" = shl i64 %"zext.613", 32
  %"or.303" = or i64 %"shl.323", %"zext.612"
  %".5779" = inttoptr i64 %"or.303" to ptr
  %".5780" = ptrtoint ptr %".5779" to i64
  %".5781" = add i64 %".5780", 12
  %"for_LDG.296" = inttoptr i64 %".5781" to ptr
  %".5782" = load float, ptr %"for_LDG.296"
  %".5783" = bitcast ptr %"R53" to ptr
  store float %".5782", ptr %".5783"
  ; IADD3 R12, R34, 0xc, RZ
  %".5786" = load i32, ptr %"R34"
  %"add.274" = add i32 %".5786", 12
  %"add.275" = add i32 %"add.274", 0
  store i32 %"add.275", ptr %"R12"
  ; LDG.E.SYS R54, [R6+0xc]
  %".5789" = load i32, ptr %"R6"
  %"zext.614" = zext i32 %".5789" to i64
  %".5790" = load i32, ptr %"R7"
  %"zext.615" = zext i32 %".5790" to i64
  %"shl.324" = shl i64 %"zext.615", 32
  %"or.304" = or i64 %"shl.324", %"zext.614"
  %".5791" = inttoptr i64 %"or.304" to ptr
  %".5792" = ptrtoint ptr %".5791" to i64
  %".5793" = add i64 %".5792", 12
  %"for_LDG.297" = inttoptr i64 %".5793" to ptr
  %".5794" = load float, ptr %"for_LDG.297"
  %".5795" = bitcast ptr %"R54" to ptr
  store float %".5794", ptr %".5795"
  ; LDG.E.SYS R59, [R8]
  %".5798" = load i32, ptr %"R8"
  %"zext.616" = zext i32 %".5798" to i64
  %".5799" = load i32, ptr %"R9"
  %"zext.617" = zext i32 %".5799" to i64
  %"shl.325" = shl i64 %"zext.617", 32
  %"or.305" = or i64 %"shl.325", %"zext.616"
  %".5800" = inttoptr i64 %"or.305" to ptr
  %".5801" = ptrtoint ptr %".5800" to i64
  %".5802" = add i64 %".5801", 0
  %"for_LDG.298" = inttoptr i64 %".5802" to ptr
  %".5803" = load float, ptr %"for_LDG.298"
  %".5804" = bitcast ptr %"R59" to ptr
  store float %".5803", ptr %".5804"
  ; IADD3 R58, R3, R12, RZ
  %".5807" = load i32, ptr %"R3"
  %".5808" = load i32, ptr %"R12"
  %"add.276" = add i32 %".5807", %".5808"
  %"add.277" = add i32 %"add.276", 0
  store i32 %"add.277", ptr %"R58"
  ; LDG.E.SYS R52, [R10]
  %".5811" = load i32, ptr %"R10"
  %"zext.618" = zext i32 %".5811" to i64
  %".5812" = load i32, ptr %"R11"
  %"zext.619" = zext i32 %".5812" to i64
  %"shl.326" = shl i64 %"zext.619", 32
  %"or.306" = or i64 %"shl.326", %"zext.618"
  %".5813" = inttoptr i64 %"or.306" to ptr
  %".5814" = ptrtoint ptr %".5813" to i64
  %".5815" = add i64 %".5814", 0
  %"for_LDG.299" = inttoptr i64 %".5815" to ptr
  %".5816" = load float, ptr %"for_LDG.299"
  %".5817" = bitcast ptr %"R52" to ptr
  store float %".5816", ptr %".5817"
  ; LDG.E.SYS R57, [R8+0x4]
  %".5820" = load i32, ptr %"R8"
  %"zext.620" = zext i32 %".5820" to i64
  %".5821" = load i32, ptr %"R9"
  %"zext.621" = zext i32 %".5821" to i64
  %"shl.327" = shl i64 %"zext.621", 32
  %"or.307" = or i64 %"shl.327", %"zext.620"
  %".5822" = inttoptr i64 %"or.307" to ptr
  %".5823" = ptrtoint ptr %".5822" to i64
  %".5824" = add i64 %".5823", 4
  %"for_LDG.300" = inttoptr i64 %".5824" to ptr
  %".5825" = load float, ptr %"for_LDG.300"
  %".5826" = bitcast ptr %"R57" to ptr
  store float %".5825", ptr %".5826"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".5829" = load i32, ptr %"R12"
  %".5830" = load i32, ptr %"R41"
  %"mul.96" = mul i32 %".5829", %".5830"
  %"add.278" = add i32 %"mul.96", %"Arg_3"
  store i32 %"add.278", ptr %"R12"
  ; LDG.E.SYS R50, [R10+0x4]
  %".5833" = load i32, ptr %"R10"
  %"zext.622" = zext i32 %".5833" to i64
  %".5834" = load i32, ptr %"R11"
  %"zext.623" = zext i32 %".5834" to i64
  %"shl.328" = shl i64 %"zext.623", 32
  %"or.308" = or i64 %"shl.328", %"zext.622"
  %".5835" = inttoptr i64 %"or.308" to ptr
  %".5836" = ptrtoint ptr %".5835" to i64
  %".5837" = add i64 %".5836", 4
  %"for_LDG.301" = inttoptr i64 %".5837" to ptr
  %".5838" = load float, ptr %"for_LDG.301"
  %".5839" = bitcast ptr %"R50" to ptr
  store float %".5838", ptr %".5839"
  ; LDG.E.SYS R55, [R8+0x8]
  %".5842" = load i32, ptr %"R8"
  %"zext.624" = zext i32 %".5842" to i64
  %".5843" = load i32, ptr %"R9"
  %"zext.625" = zext i32 %".5843" to i64
  %"shl.329" = shl i64 %"zext.625", 32
  %"or.309" = or i64 %"shl.329", %"zext.624"
  %".5844" = inttoptr i64 %"or.309" to ptr
  %".5845" = ptrtoint ptr %".5844" to i64
  %".5846" = add i64 %".5845", 8
  %"for_LDG.302" = inttoptr i64 %".5846" to ptr
  %".5847" = load float, ptr %"for_LDG.302"
  %".5848" = bitcast ptr %"R55" to ptr
  store float %".5847", ptr %".5848"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".5851" = load i32, ptr %"R58"
  %".5852" = load i32, ptr %"R41"
  %"mul.97" = mul i32 %".5851", %".5852"
  %"add.279" = add i32 %"mul.97", %"Arg_4"
  store i32 %"add.279", ptr %"R4"
  ; LDG.E.SYS R61, [R8+0xc]
  %".5855" = load i32, ptr %"R8"
  %"zext.626" = zext i32 %".5855" to i64
  %".5856" = load i32, ptr %"R9"
  %"zext.627" = zext i32 %".5856" to i64
  %"shl.330" = shl i64 %"zext.627", 32
  %"or.310" = or i64 %"shl.330", %"zext.626"
  %".5857" = inttoptr i64 %"or.310" to ptr
  %".5858" = ptrtoint ptr %".5857" to i64
  %".5859" = add i64 %".5858", 12
  %"for_LDG.303" = inttoptr i64 %".5859" to ptr
  %".5860" = load float, ptr %"for_LDG.303"
  %".5861" = bitcast ptr %"R61" to ptr
  store float %".5860", ptr %".5861"
  ; LDG.E.SYS R56, [R10+0x8]
  %".5864" = load i32, ptr %"R10"
  %"zext.628" = zext i32 %".5864" to i64
  %".5865" = load i32, ptr %"R11"
  %"zext.629" = zext i32 %".5865" to i64
  %"shl.331" = shl i64 %"zext.629", 32
  %"or.311" = or i64 %"shl.331", %"zext.628"
  %".5866" = inttoptr i64 %"or.311" to ptr
  %".5867" = ptrtoint ptr %".5866" to i64
  %".5868" = add i64 %".5867", 8
  %"for_LDG.304" = inttoptr i64 %".5868" to ptr
  %".5869" = load float, ptr %"for_LDG.304"
  %".5870" = bitcast ptr %"R56" to ptr
  store float %".5869", ptr %".5870"
  ; LDG.E.SYS R58, [R10+0xc]
  %".5873" = load i32, ptr %"R10"
  %"zext.630" = zext i32 %".5873" to i64
  %".5874" = load i32, ptr %"R11"
  %"zext.631" = zext i32 %".5874" to i64
  %"shl.332" = shl i64 %"zext.631", 32
  %"or.312" = or i64 %"shl.332", %"zext.630"
  %".5875" = inttoptr i64 %"or.312" to ptr
  %".5876" = ptrtoint ptr %".5875" to i64
  %".5877" = add i64 %".5876", 12
  %"for_LDG.305" = inttoptr i64 %".5877" to ptr
  %".5878" = load float, ptr %"for_LDG.305"
  %".5879" = bitcast ptr %"R58" to ptr
  store float %".5878", ptr %".5879"
  ; LDG.E.SYS R6, [R12]
  %".5882" = load i32, ptr %"R12"
  %"zext.632" = zext i32 %".5882" to i64
  %".5883" = load i32, ptr %"R13"
  %"zext.633" = zext i32 %".5883" to i64
  %"shl.333" = shl i64 %"zext.633", 32
  %"or.313" = or i64 %"shl.333", %"zext.632"
  %".5884" = inttoptr i64 %"or.313" to ptr
  %".5885" = ptrtoint ptr %".5884" to i64
  %".5886" = add i64 %".5885", 0
  %"for_LDG.306" = inttoptr i64 %".5886" to ptr
  %".5887" = load float, ptr %"for_LDG.306"
  %".5888" = bitcast ptr %"R6" to ptr
  store float %".5887", ptr %".5888"
  ; LDG.E.SYS R41, [R12+0x4]
  %".5891" = load i32, ptr %"R12"
  %"zext.634" = zext i32 %".5891" to i64
  %".5892" = load i32, ptr %"R13"
  %"zext.635" = zext i32 %".5892" to i64
  %"shl.334" = shl i64 %"zext.635", 32
  %"or.314" = or i64 %"shl.334", %"zext.634"
  %".5893" = inttoptr i64 %"or.314" to ptr
  %".5894" = ptrtoint ptr %".5893" to i64
  %".5895" = add i64 %".5894", 4
  %"for_LDG.307" = inttoptr i64 %".5895" to ptr
  %".5896" = load float, ptr %"for_LDG.307"
  %".5897" = bitcast ptr %"R41" to ptr
  store float %".5896", ptr %".5897"
  ; LDG.E.SYS R10, [R4]
  %".5900" = load i32, ptr %"R4"
  %"zext.636" = zext i32 %".5900" to i64
  %".5901" = load i32, ptr %"R5"
  %"zext.637" = zext i32 %".5901" to i64
  %"shl.335" = shl i64 %"zext.637", 32
  %"or.315" = or i64 %"shl.335", %"zext.636"
  %".5902" = inttoptr i64 %"or.315" to ptr
  %".5903" = ptrtoint ptr %".5902" to i64
  %".5904" = add i64 %".5903", 0
  %"for_LDG.308" = inttoptr i64 %".5904" to ptr
  %".5905" = load float, ptr %"for_LDG.308"
  %".5906" = bitcast ptr %"R10" to ptr
  store float %".5905", ptr %".5906"
  ; LDG.E.SYS R7, [R12+0x8]
  %".5909" = load i32, ptr %"R12"
  %"zext.638" = zext i32 %".5909" to i64
  %".5910" = load i32, ptr %"R13"
  %"zext.639" = zext i32 %".5910" to i64
  %"shl.336" = shl i64 %"zext.639", 32
  %"or.316" = or i64 %"shl.336", %"zext.638"
  %".5911" = inttoptr i64 %"or.316" to ptr
  %".5912" = ptrtoint ptr %".5911" to i64
  %".5913" = add i64 %".5912", 8
  %"for_LDG.309" = inttoptr i64 %".5913" to ptr
  %".5914" = load float, ptr %"for_LDG.309"
  %".5915" = bitcast ptr %"R7" to ptr
  store float %".5914", ptr %".5915"
  ; LDG.E.SYS R9, [R4+0x4]
  %".5918" = load i32, ptr %"R4"
  %"zext.640" = zext i32 %".5918" to i64
  %".5919" = load i32, ptr %"R5"
  %"zext.641" = zext i32 %".5919" to i64
  %"shl.337" = shl i64 %"zext.641", 32
  %"or.317" = or i64 %"shl.337", %"zext.640"
  %".5920" = inttoptr i64 %"or.317" to ptr
  %".5921" = ptrtoint ptr %".5920" to i64
  %".5922" = add i64 %".5921", 4
  %"for_LDG.310" = inttoptr i64 %".5922" to ptr
  %".5923" = load float, ptr %"for_LDG.310"
  %".5924" = bitcast ptr %"R9" to ptr
  store float %".5923", ptr %".5924"
  ; LDG.E.SYS R60, [R12+0xc]
  %".5927" = load i32, ptr %"R12"
  %"zext.642" = zext i32 %".5927" to i64
  %".5928" = load i32, ptr %"R13"
  %"zext.643" = zext i32 %".5928" to i64
  %"shl.338" = shl i64 %"zext.643", 32
  %"or.318" = or i64 %"shl.338", %"zext.642"
  %".5929" = inttoptr i64 %"or.318" to ptr
  %".5930" = ptrtoint ptr %".5929" to i64
  %".5931" = add i64 %".5930", 12
  %"for_LDG.311" = inttoptr i64 %".5931" to ptr
  %".5932" = load float, ptr %"for_LDG.311"
  %".5933" = bitcast ptr %"R60" to ptr
  store float %".5932", ptr %".5933"
  ; LDG.E.SYS R8, [R4+0x8]
  %".5936" = load i32, ptr %"R4"
  %"zext.644" = zext i32 %".5936" to i64
  %".5937" = load i32, ptr %"R5"
  %"zext.645" = zext i32 %".5937" to i64
  %"shl.339" = shl i64 %"zext.645", 32
  %"or.319" = or i64 %"shl.339", %"zext.644"
  %".5938" = inttoptr i64 %"or.319" to ptr
  %".5939" = ptrtoint ptr %".5938" to i64
  %".5940" = add i64 %".5939", 8
  %"for_LDG.312" = inttoptr i64 %".5940" to ptr
  %".5941" = load float, ptr %"for_LDG.312"
  %".5942" = bitcast ptr %"R8" to ptr
  store float %".5941", ptr %".5942"
  ; LDG.E.SYS R11, [R4+0xc]
  %".5945" = load i32, ptr %"R4"
  %"zext.646" = zext i32 %".5945" to i64
  %".5946" = load i32, ptr %"R5"
  %"zext.647" = zext i32 %".5946" to i64
  %"shl.340" = shl i64 %"zext.647", 32
  %"or.320" = or i64 %"shl.340", %"zext.646"
  %".5947" = inttoptr i64 %"or.320" to ptr
  %".5948" = ptrtoint ptr %".5947" to i64
  %".5949" = add i64 %".5948", 12
  %"for_LDG.313" = inttoptr i64 %".5949" to ptr
  %".5950" = load float, ptr %"for_LDG.313"
  %".5951" = bitcast ptr %"R11" to ptr
  store float %".5950", ptr %".5951"
  ; IADD3 R35, R35, -0x10, RZ
  %".5954" = load i32, ptr %"R35"
  %"add.280" = add i32 %".5954", -16
  %"add.281" = add i32 %"add.280", 0
  store i32 %"add.281", ptr %"R35"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".5957" = load i32, ptr %"R35"
  %".5958" = load i1, ptr %"PT"
  %"cmp.48" = icmp sgt i32 %".5957", 12
  %".5959" = and i1 %"cmp.48", %".5958"
  ; IADD3 R34, R34, 0x10, RZ
  %".5961" = load i32, ptr %"R34"
  %"add.282" = add i32 %".5961", 16
  %"add.283" = add i32 %"add.282", 0
  store i32 %"add.283", ptr %"R34"
  ; FMUL R25, R25, R22
  %".5964" = load float, ptr %"R25"
  %".5965" = load float, ptr %"R22"
  %"fmul.243" = fmul float %".5964", %".5965"
  %".5966" = bitcast ptr %"R25" to ptr
  store float %"fmul.243", ptr %".5966"
  ; FFMA R25, R25, R36, R21
  %".5969" = load float, ptr %"R25"
  %".5970" = load float, ptr %"R36"
  %".5971" = load float, ptr %"R21"
  %"fmul.244" = fmul float %".5969", %".5970"
  %"fadd.223" = fadd float %"fmul.244", %".5971"
  %".5972" = bitcast ptr %"R25" to ptr
  store float %"fadd.223", ptr %".5972"
  ; FMUL R37, R37, R22
  %".5975" = load float, ptr %"R37"
  %".5976" = load float, ptr %"R22"
  %"fmul.245" = fmul float %".5975", %".5976"
  %".5977" = bitcast ptr %"R37" to ptr
  store float %"fmul.245", ptr %".5977"
  ; FFMA R25, R37, R24, R25
  %".5980" = load float, ptr %"R37"
  %".5981" = load float, ptr %"R24"
  %".5982" = load float, ptr %"R25"
  %"fmul.246" = fmul float %".5980", %".5981"
  %"fadd.224" = fadd float %"fmul.246", %".5982"
  %".5983" = bitcast ptr %"R25" to ptr
  store float %"fadd.224", ptr %".5983"
  ; FMUL R39, R39, R22
  %".5986" = load float, ptr %"R39"
  %".5987" = load float, ptr %"R22"
  %"fmul.247" = fmul float %".5986", %".5987"
  %".5988" = bitcast ptr %"R39" to ptr
  store float %"fmul.247", ptr %".5988"
  ; FFMA R25, R39, R38, R25
  %".5991" = load float, ptr %"R39"
  %".5992" = load float, ptr %"R38"
  %".5993" = load float, ptr %"R25"
  %"fmul.248" = fmul float %".5991", %".5992"
  %"fadd.225" = fadd float %"fmul.248", %".5993"
  %".5994" = bitcast ptr %"R25" to ptr
  store float %"fadd.225", ptr %".5994"
  ; FMUL R43, R43, R22
  %".5997" = load float, ptr %"R43"
  %".5998" = load float, ptr %"R22"
  %"fmul.249" = fmul float %".5997", %".5998"
  %".5999" = bitcast ptr %"R43" to ptr
  store float %"fmul.249", ptr %".5999"
  ; FFMA R25, R43, R46, R25
  %".6002" = load float, ptr %"R43"
  %".6003" = load float, ptr %"R46"
  %".6004" = load float, ptr %"R25"
  %"fmul.250" = fmul float %".6002", %".6003"
  %"fadd.226" = fadd float %"fmul.250", %".6004"
  %".6005" = bitcast ptr %"R25" to ptr
  store float %"fadd.226", ptr %".6005"
  ; FMUL R51, R51, R22
  %".6008" = load float, ptr %"R51"
  %".6009" = load float, ptr %"R22"
  %"fmul.251" = fmul float %".6008", %".6009"
  %".6010" = bitcast ptr %"R51" to ptr
  store float %"fmul.251", ptr %".6010"
  ; FFMA R25, R51, R44, R25
  %".6013" = load float, ptr %"R51"
  %".6014" = load float, ptr %"R44"
  %".6015" = load float, ptr %"R25"
  %"fmul.252" = fmul float %".6013", %".6014"
  %"fadd.227" = fadd float %"fmul.252", %".6015"
  %".6016" = bitcast ptr %"R25" to ptr
  store float %"fadd.227", ptr %".6016"
  ; FMUL R47, R47, R22
  %".6019" = load float, ptr %"R47"
  %".6020" = load float, ptr %"R22"
  %"fmul.253" = fmul float %".6019", %".6020"
  %".6021" = bitcast ptr %"R47" to ptr
  store float %"fmul.253", ptr %".6021"
  ; FFMA R25, R47, R42, R25
  %".6024" = load float, ptr %"R47"
  %".6025" = load float, ptr %"R42"
  %".6026" = load float, ptr %"R25"
  %"fmul.254" = fmul float %".6024", %".6025"
  %"fadd.228" = fadd float %"fmul.254", %".6026"
  %".6027" = bitcast ptr %"R25" to ptr
  store float %"fadd.228", ptr %".6027"
  ; FMUL R45, R45, R22
  %".6030" = load float, ptr %"R45"
  %".6031" = load float, ptr %"R22"
  %"fmul.255" = fmul float %".6030", %".6031"
  %".6032" = bitcast ptr %"R45" to ptr
  store float %"fmul.255", ptr %".6032"
  ; FFMA R25, R45, R40, R25
  %".6035" = load float, ptr %"R45"
  %".6036" = load float, ptr %"R40"
  %".6037" = load float, ptr %"R25"
  %"fmul.256" = fmul float %".6035", %".6036"
  %"fadd.229" = fadd float %"fmul.256", %".6037"
  %".6038" = bitcast ptr %"R25" to ptr
  store float %"fadd.229", ptr %".6038"
  ; FMUL R53, R53, R22
  %".6041" = load float, ptr %"R53"
  %".6042" = load float, ptr %"R22"
  %"fmul.257" = fmul float %".6041", %".6042"
  %".6043" = bitcast ptr %"R53" to ptr
  store float %"fmul.257", ptr %".6043"
  ; FFMA R25, R53, R54, R25
  %".6046" = load float, ptr %"R53"
  %".6047" = load float, ptr %"R54"
  %".6048" = load float, ptr %"R25"
  %"fmul.258" = fmul float %".6046", %".6047"
  %"fadd.230" = fadd float %"fmul.258", %".6048"
  %".6049" = bitcast ptr %"R25" to ptr
  store float %"fadd.230", ptr %".6049"
  ; FMUL R59, R59, R22
  %".6052" = load float, ptr %"R59"
  %".6053" = load float, ptr %"R22"
  %"fmul.259" = fmul float %".6052", %".6053"
  %".6054" = bitcast ptr %"R59" to ptr
  store float %"fmul.259", ptr %".6054"
  ; FFMA R25, R59, R52, R25
  %".6057" = load float, ptr %"R59"
  %".6058" = load float, ptr %"R52"
  %".6059" = load float, ptr %"R25"
  %"fmul.260" = fmul float %".6057", %".6058"
  %"fadd.231" = fadd float %"fmul.260", %".6059"
  %".6060" = bitcast ptr %"R25" to ptr
  store float %"fadd.231", ptr %".6060"
  ; FMUL R57, R57, R22
  %".6063" = load float, ptr %"R57"
  %".6064" = load float, ptr %"R22"
  %"fmul.261" = fmul float %".6063", %".6064"
  %".6065" = bitcast ptr %"R57" to ptr
  store float %"fmul.261", ptr %".6065"
  ; FFMA R25, R57, R50, R25
  %".6068" = load float, ptr %"R57"
  %".6069" = load float, ptr %"R50"
  %".6070" = load float, ptr %"R25"
  %"fmul.262" = fmul float %".6068", %".6069"
  %"fadd.232" = fadd float %"fmul.262", %".6070"
  %".6071" = bitcast ptr %"R25" to ptr
  store float %"fadd.232", ptr %".6071"
  ; FMUL R55, R55, R22.reuse
  %".6074" = load float, ptr %"R55"
  %".6075" = load float, ptr %"R22"
  %"fmul.263" = fmul float %".6074", %".6075"
  %".6076" = bitcast ptr %"R55" to ptr
  store float %"fmul.263", ptr %".6076"
  ; FMUL R61, R61, R22
  %".6079" = load float, ptr %"R61"
  %".6080" = load float, ptr %"R22"
  %"fmul.264" = fmul float %".6079", %".6080"
  %".6081" = bitcast ptr %"R61" to ptr
  store float %"fmul.264", ptr %".6081"
  ; FFMA R25, R55, R56, R25
  %".6084" = load float, ptr %"R55"
  %".6085" = load float, ptr %"R56"
  %".6086" = load float, ptr %"R25"
  %"fmul.265" = fmul float %".6084", %".6085"
  %"fadd.233" = fadd float %"fmul.265", %".6086"
  %".6087" = bitcast ptr %"R25" to ptr
  store float %"fadd.233", ptr %".6087"
  ; FFMA R25, R61, R58, R25
  %".6090" = load float, ptr %"R61"
  %".6091" = load float, ptr %"R58"
  %".6092" = load float, ptr %"R25"
  %"fmul.266" = fmul float %".6090", %".6091"
  %"fadd.234" = fadd float %"fmul.266", %".6092"
  %".6093" = bitcast ptr %"R25" to ptr
  store float %"fadd.234", ptr %".6093"
  ; FMUL R6, R6, R22.reuse
  %".6096" = load float, ptr %"R6"
  %".6097" = load float, ptr %"R22"
  %"fmul.267" = fmul float %".6096", %".6097"
  %".6098" = bitcast ptr %"R6" to ptr
  store float %"fmul.267", ptr %".6098"
  ; FMUL R41, R41, R22
  %".6101" = load float, ptr %"R41"
  %".6102" = load float, ptr %"R22"
  %"fmul.268" = fmul float %".6101", %".6102"
  %".6103" = bitcast ptr %"R41" to ptr
  store float %"fmul.268", ptr %".6103"
  ; FFMA R6, R6, R10, R25
  %".6106" = load float, ptr %"R6"
  %".6107" = load float, ptr %"R10"
  %".6108" = load float, ptr %"R25"
  %"fmul.269" = fmul float %".6106", %".6107"
  %"fadd.235" = fadd float %"fmul.269", %".6108"
  %".6109" = bitcast ptr %"R6" to ptr
  store float %"fadd.235", ptr %".6109"
  ; FMUL R7, R7, R22
  %".6112" = load float, ptr %"R7"
  %".6113" = load float, ptr %"R22"
  %"fmul.270" = fmul float %".6112", %".6113"
  %".6114" = bitcast ptr %"R7" to ptr
  store float %"fmul.270", ptr %".6114"
  ; FFMA R9, R41, R9, R6
  %".6117" = load float, ptr %"R41"
  %".6118" = load float, ptr %"R9"
  %".6119" = load float, ptr %"R6"
  %"fmul.271" = fmul float %".6117", %".6118"
  %"fadd.236" = fadd float %"fmul.271", %".6119"
  %".6120" = bitcast ptr %"R9" to ptr
  store float %"fadd.236", ptr %".6120"
  ; FMUL R60, R60, R22
  %".6123" = load float, ptr %"R60"
  %".6124" = load float, ptr %"R22"
  %"fmul.272" = fmul float %".6123", %".6124"
  %".6125" = bitcast ptr %"R60" to ptr
  store float %"fmul.272", ptr %".6125"
  ; FFMA R8, R7, R8, R9
  %".6128" = load float, ptr %"R7"
  %".6129" = load float, ptr %"R8"
  %".6130" = load float, ptr %"R9"
  %"fmul.273" = fmul float %".6128", %".6129"
  %"fadd.237" = fadd float %"fmul.273", %".6130"
  %".6131" = bitcast ptr %"R8" to ptr
  store float %"fadd.237", ptr %".6131"
  ; FFMA R21, R60, R11, R8
  %".6134" = load float, ptr %"R60"
  %".6135" = load float, ptr %"R11"
  %".6136" = load float, ptr %"R8"
  %"fmul.274" = fmul float %".6134", %".6135"
  %"fadd.238" = fadd float %"fmul.274", %".6136"
  %".6137" = bitcast ptr %"R21" to ptr
  store float %"fadd.238", ptr %".6137"
  ; @P1 BRA `(.L_x_39)
  %".6140" = load i1, ptr %"P1"
  %".6141" = icmp ne i1 %".6140", 1
  br i1 %".6141", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".6144" = load i32, ptr %"R35"
  %".6145" = load i1, ptr %"PT"
  %"cmp.49" = icmp sgt i32 %".6144", 4
  %".6146" = and i1 %"cmp.49", %".6145"
  ; @!P1 BRA `(.L_x_40)
  %".6148" = load i1, ptr %"P1"
  %".6149" = icmp eq i1 %".6148", 1
  br i1 %".6149", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R6, R3, R34, RZ
  %".6154" = load i32, ptr %"R3"
  %".6155" = load i32, ptr %"R34"
  %"add.284" = add i32 %".6154", %".6155"
  %"add.285" = add i32 %"add.284", 0
  store i32 %"add.285", ptr %"R6"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".6158" = load i32, ptr %"R34"
  %".6159" = load i32, ptr %"R11"
  %"mul.98" = mul i32 %".6158", %".6159"
  %"add.286" = add i32 %"mul.98", %"Arg_3"
  store i32 %"add.286", ptr %"R8"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".6162" = load i32, ptr %"R6"
  %".6163" = load i32, ptr %"R11"
  %"mul.99" = mul i32 %".6162", %".6163"
  %"add.287" = add i32 %"mul.99", %"Arg_4"
  store i32 %"add.287", ptr %"R6"
  ; IADD3 R4, R34, 0x4, RZ
  %".6166" = load i32, ptr %"R34"
  %"add.288" = add i32 %".6166", 4
  %"add.289" = add i32 %"add.288", 0
  store i32 %"add.289", ptr %"R4"
  ; LDG.E.SYS R13, [R8]
  %".6169" = load i32, ptr %"R8"
  %"zext.648" = zext i32 %".6169" to i64
  %".6170" = load i32, ptr %"R9"
  %"zext.649" = zext i32 %".6170" to i64
  %"shl.341" = shl i64 %"zext.649", 32
  %"or.321" = or i64 %"shl.341", %"zext.648"
  %".6171" = inttoptr i64 %"or.321" to ptr
  %".6172" = ptrtoint ptr %".6171" to i64
  %".6173" = add i64 %".6172", 0
  %"for_LDG.314" = inttoptr i64 %".6173" to ptr
  %".6174" = load float, ptr %"for_LDG.314"
  %".6175" = bitcast ptr %"R13" to ptr
  store float %".6174", ptr %".6175"
  ; IADD3 R10, R3, R4, RZ
  %".6178" = load i32, ptr %"R3"
  %".6179" = load i32, ptr %"R4"
  %"add.290" = add i32 %".6178", %".6179"
  %"add.291" = add i32 %"add.290", 0
  store i32 %"add.291", ptr %"R10"
  ; LDG.E.SYS R12, [R6]
  %".6182" = load i32, ptr %"R6"
  %"zext.650" = zext i32 %".6182" to i64
  %".6183" = load i32, ptr %"R7"
  %"zext.651" = zext i32 %".6183" to i64
  %"shl.342" = shl i64 %"zext.651", 32
  %"or.322" = or i64 %"shl.342", %"zext.650"
  %".6184" = inttoptr i64 %"or.322" to ptr
  %".6185" = ptrtoint ptr %".6184" to i64
  %".6186" = add i64 %".6185", 0
  %"for_LDG.315" = inttoptr i64 %".6186" to ptr
  %".6187" = load float, ptr %"for_LDG.315"
  %".6188" = bitcast ptr %"R12" to ptr
  store float %".6187", ptr %".6188"
  ; LDG.E.SYS R25, [R8+0x4]
  %".6191" = load i32, ptr %"R8"
  %"zext.652" = zext i32 %".6191" to i64
  %".6192" = load i32, ptr %"R9"
  %"zext.653" = zext i32 %".6192" to i64
  %"shl.343" = shl i64 %"zext.653", 32
  %"or.323" = or i64 %"shl.343", %"zext.652"
  %".6193" = inttoptr i64 %"or.323" to ptr
  %".6194" = ptrtoint ptr %".6193" to i64
  %".6195" = add i64 %".6194", 4
  %"for_LDG.316" = inttoptr i64 %".6195" to ptr
  %".6196" = load float, ptr %"for_LDG.316"
  %".6197" = bitcast ptr %"R25" to ptr
  store float %".6196", ptr %".6197"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".6200" = load i32, ptr %"R4"
  %".6201" = load i32, ptr %"R11"
  %"mul.100" = mul i32 %".6200", %".6201"
  %"add.292" = add i32 %"mul.100", %"Arg_3"
  store i32 %"add.292", ptr %"R4"
  ; LDG.E.SYS R24, [R6+0x4]
  %".6204" = load i32, ptr %"R6"
  %"zext.654" = zext i32 %".6204" to i64
  %".6205" = load i32, ptr %"R7"
  %"zext.655" = zext i32 %".6205" to i64
  %"shl.344" = shl i64 %"zext.655", 32
  %"or.324" = or i64 %"shl.344", %"zext.654"
  %".6206" = inttoptr i64 %"or.324" to ptr
  %".6207" = ptrtoint ptr %".6206" to i64
  %".6208" = add i64 %".6207", 4
  %"for_LDG.317" = inttoptr i64 %".6208" to ptr
  %".6209" = load float, ptr %"for_LDG.317"
  %".6210" = bitcast ptr %"R24" to ptr
  store float %".6209", ptr %".6210"
  ; LDG.E.SYS R37, [R8+0x8]
  %".6213" = load i32, ptr %"R8"
  %"zext.656" = zext i32 %".6213" to i64
  %".6214" = load i32, ptr %"R9"
  %"zext.657" = zext i32 %".6214" to i64
  %"shl.345" = shl i64 %"zext.657", 32
  %"or.325" = or i64 %"shl.345", %"zext.656"
  %".6215" = inttoptr i64 %"or.325" to ptr
  %".6216" = ptrtoint ptr %".6215" to i64
  %".6217" = add i64 %".6216", 8
  %"for_LDG.318" = inttoptr i64 %".6217" to ptr
  %".6218" = load float, ptr %"for_LDG.318"
  %".6219" = bitcast ptr %"R37" to ptr
  store float %".6218", ptr %".6219"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".6222" = load i32, ptr %"R10"
  %".6223" = load i32, ptr %"R11"
  %"mul.101" = mul i32 %".6222", %".6223"
  %"add.293" = add i32 %"mul.101", %"Arg_4"
  store i32 %"add.293", ptr %"R10"
  ; LDG.E.SYS R36, [R6+0x8]
  %".6226" = load i32, ptr %"R6"
  %"zext.658" = zext i32 %".6226" to i64
  %".6227" = load i32, ptr %"R7"
  %"zext.659" = zext i32 %".6227" to i64
  %"shl.346" = shl i64 %"zext.659", 32
  %"or.326" = or i64 %"shl.346", %"zext.658"
  %".6228" = inttoptr i64 %"or.326" to ptr
  %".6229" = ptrtoint ptr %".6228" to i64
  %".6230" = add i64 %".6229", 8
  %"for_LDG.319" = inttoptr i64 %".6230" to ptr
  %".6231" = load float, ptr %"for_LDG.319"
  %".6232" = bitcast ptr %"R36" to ptr
  store float %".6231", ptr %".6232"
  ; LDG.E.SYS R39, [R8+0xc]
  %".6235" = load i32, ptr %"R8"
  %"zext.660" = zext i32 %".6235" to i64
  %".6236" = load i32, ptr %"R9"
  %"zext.661" = zext i32 %".6236" to i64
  %"shl.347" = shl i64 %"zext.661", 32
  %"or.327" = or i64 %"shl.347", %"zext.660"
  %".6237" = inttoptr i64 %"or.327" to ptr
  %".6238" = ptrtoint ptr %".6237" to i64
  %".6239" = add i64 %".6238", 12
  %"for_LDG.320" = inttoptr i64 %".6239" to ptr
  %".6240" = load float, ptr %"for_LDG.320"
  %".6241" = bitcast ptr %"R39" to ptr
  store float %".6240", ptr %".6241"
  ; LDG.E.SYS R38, [R6+0xc]
  %".6244" = load i32, ptr %"R6"
  %"zext.662" = zext i32 %".6244" to i64
  %".6245" = load i32, ptr %"R7"
  %"zext.663" = zext i32 %".6245" to i64
  %"shl.348" = shl i64 %"zext.663", 32
  %"or.328" = or i64 %"shl.348", %"zext.662"
  %".6246" = inttoptr i64 %"or.328" to ptr
  %".6247" = ptrtoint ptr %".6246" to i64
  %".6248" = add i64 %".6247", 12
  %"for_LDG.321" = inttoptr i64 %".6248" to ptr
  %".6249" = load float, ptr %"for_LDG.321"
  %".6250" = bitcast ptr %"R38" to ptr
  store float %".6249", ptr %".6250"
  ; LDG.E.SYS R41, [R4]
  %".6253" = load i32, ptr %"R4"
  %"zext.664" = zext i32 %".6253" to i64
  %".6254" = load i32, ptr %"R5"
  %"zext.665" = zext i32 %".6254" to i64
  %"shl.349" = shl i64 %"zext.665", 32
  %"or.329" = or i64 %"shl.349", %"zext.664"
  %".6255" = inttoptr i64 %"or.329" to ptr
  %".6256" = ptrtoint ptr %".6255" to i64
  %".6257" = add i64 %".6256", 0
  %"for_LDG.322" = inttoptr i64 %".6257" to ptr
  %".6258" = load float, ptr %"for_LDG.322"
  %".6259" = bitcast ptr %"R41" to ptr
  store float %".6258", ptr %".6259"
  ; LDG.E.SYS R40, [R10]
  %".6262" = load i32, ptr %"R10"
  %"zext.666" = zext i32 %".6262" to i64
  %".6263" = load i32, ptr %"R11"
  %"zext.667" = zext i32 %".6263" to i64
  %"shl.350" = shl i64 %"zext.667", 32
  %"or.330" = or i64 %"shl.350", %"zext.666"
  %".6264" = inttoptr i64 %"or.330" to ptr
  %".6265" = ptrtoint ptr %".6264" to i64
  %".6266" = add i64 %".6265", 0
  %"for_LDG.323" = inttoptr i64 %".6266" to ptr
  %".6267" = load float, ptr %"for_LDG.323"
  %".6268" = bitcast ptr %"R40" to ptr
  store float %".6267", ptr %".6268"
  ; LDG.E.SYS R43, [R4+0x4]
  %".6271" = load i32, ptr %"R4"
  %"zext.668" = zext i32 %".6271" to i64
  %".6272" = load i32, ptr %"R5"
  %"zext.669" = zext i32 %".6272" to i64
  %"shl.351" = shl i64 %"zext.669", 32
  %"or.331" = or i64 %"shl.351", %"zext.668"
  %".6273" = inttoptr i64 %"or.331" to ptr
  %".6274" = ptrtoint ptr %".6273" to i64
  %".6275" = add i64 %".6274", 4
  %"for_LDG.324" = inttoptr i64 %".6275" to ptr
  %".6276" = load float, ptr %"for_LDG.324"
  %".6277" = bitcast ptr %"R43" to ptr
  store float %".6276", ptr %".6277"
  ; LDG.E.SYS R42, [R10+0x4]
  %".6280" = load i32, ptr %"R10"
  %"zext.670" = zext i32 %".6280" to i64
  %".6281" = load i32, ptr %"R11"
  %"zext.671" = zext i32 %".6281" to i64
  %"shl.352" = shl i64 %"zext.671", 32
  %"or.332" = or i64 %"shl.352", %"zext.670"
  %".6282" = inttoptr i64 %"or.332" to ptr
  %".6283" = ptrtoint ptr %".6282" to i64
  %".6284" = add i64 %".6283", 4
  %"for_LDG.325" = inttoptr i64 %".6284" to ptr
  %".6285" = load float, ptr %"for_LDG.325"
  %".6286" = bitcast ptr %"R42" to ptr
  store float %".6285", ptr %".6286"
  ; LDG.E.SYS R45, [R4+0x8]
  %".6289" = load i32, ptr %"R4"
  %"zext.672" = zext i32 %".6289" to i64
  %".6290" = load i32, ptr %"R5"
  %"zext.673" = zext i32 %".6290" to i64
  %"shl.353" = shl i64 %"zext.673", 32
  %"or.333" = or i64 %"shl.353", %"zext.672"
  %".6291" = inttoptr i64 %"or.333" to ptr
  %".6292" = ptrtoint ptr %".6291" to i64
  %".6293" = add i64 %".6292", 8
  %"for_LDG.326" = inttoptr i64 %".6293" to ptr
  %".6294" = load float, ptr %"for_LDG.326"
  %".6295" = bitcast ptr %"R45" to ptr
  store float %".6294", ptr %".6295"
  ; LDG.E.SYS R47, [R4+0xc]
  %".6298" = load i32, ptr %"R4"
  %"zext.674" = zext i32 %".6298" to i64
  %".6299" = load i32, ptr %"R5"
  %"zext.675" = zext i32 %".6299" to i64
  %"shl.354" = shl i64 %"zext.675", 32
  %"or.334" = or i64 %"shl.354", %"zext.674"
  %".6300" = inttoptr i64 %"or.334" to ptr
  %".6301" = ptrtoint ptr %".6300" to i64
  %".6302" = add i64 %".6301", 12
  %"for_LDG.327" = inttoptr i64 %".6302" to ptr
  %".6303" = load float, ptr %"for_LDG.327"
  %".6304" = bitcast ptr %"R47" to ptr
  store float %".6303", ptr %".6304"
  ; LDG.E.SYS R44, [R10+0x8]
  %".6307" = load i32, ptr %"R10"
  %"zext.676" = zext i32 %".6307" to i64
  %".6308" = load i32, ptr %"R11"
  %"zext.677" = zext i32 %".6308" to i64
  %"shl.355" = shl i64 %"zext.677", 32
  %"or.335" = or i64 %"shl.355", %"zext.676"
  %".6309" = inttoptr i64 %"or.335" to ptr
  %".6310" = ptrtoint ptr %".6309" to i64
  %".6311" = add i64 %".6310", 8
  %"for_LDG.328" = inttoptr i64 %".6311" to ptr
  %".6312" = load float, ptr %"for_LDG.328"
  %".6313" = bitcast ptr %"R44" to ptr
  store float %".6312", ptr %".6313"
  ; LDG.E.SYS R46, [R10+0xc]
  %".6316" = load i32, ptr %"R10"
  %"zext.678" = zext i32 %".6316" to i64
  %".6317" = load i32, ptr %"R11"
  %"zext.679" = zext i32 %".6317" to i64
  %"shl.356" = shl i64 %"zext.679", 32
  %"or.336" = or i64 %"shl.356", %"zext.678"
  %".6318" = inttoptr i64 %"or.336" to ptr
  %".6319" = ptrtoint ptr %".6318" to i64
  %".6320" = add i64 %".6319", 12
  %"for_LDG.329" = inttoptr i64 %".6320" to ptr
  %".6321" = load float, ptr %"for_LDG.329"
  %".6322" = bitcast ptr %"R46" to ptr
  store float %".6321", ptr %".6322"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".6325" = xor i1 1, 1
  %".6326" = and i1 %".6325", 1
  %".6327" = and i1 %".6326", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".6329" = load i32, ptr %"R35"
  %"add.294" = add i32 %".6329", -8
  %"add.295" = add i32 %"add.294", 0
  store i32 %"add.295", ptr %"R35"
  ; IADD3 R34, R34, 0x8, RZ
  %".6332" = load i32, ptr %"R34"
  %"add.296" = add i32 %".6332", 8
  %"add.297" = add i32 %"add.296", 0
  store i32 %"add.297", ptr %"R34"
  ; FMUL R8, R13, R22
  %".6335" = load float, ptr %"R13"
  %".6336" = load float, ptr %"R22"
  %"fmul.275" = fmul float %".6335", %".6336"
  %".6337" = bitcast ptr %"R8" to ptr
  store float %"fmul.275", ptr %".6337"
  ; FFMA R8, R8, R12, R21
  %".6340" = load float, ptr %"R8"
  %".6341" = load float, ptr %"R12"
  %".6342" = load float, ptr %"R21"
  %"fmul.276" = fmul float %".6340", %".6341"
  %"fadd.239" = fadd float %"fmul.276", %".6342"
  %".6343" = bitcast ptr %"R8" to ptr
  store float %"fadd.239", ptr %".6343"
  ; FMUL R25, R25, R22
  %".6346" = load float, ptr %"R25"
  %".6347" = load float, ptr %"R22"
  %"fmul.277" = fmul float %".6346", %".6347"
  %".6348" = bitcast ptr %"R25" to ptr
  store float %"fmul.277", ptr %".6348"
  ; FFMA R8, R25, R24, R8
  %".6351" = load float, ptr %"R25"
  %".6352" = load float, ptr %"R24"
  %".6353" = load float, ptr %"R8"
  %"fmul.278" = fmul float %".6351", %".6352"
  %"fadd.240" = fadd float %"fmul.278", %".6353"
  %".6354" = bitcast ptr %"R8" to ptr
  store float %"fadd.240", ptr %".6354"
  ; FMUL R37, R37, R22
  %".6357" = load float, ptr %"R37"
  %".6358" = load float, ptr %"R22"
  %"fmul.279" = fmul float %".6357", %".6358"
  %".6359" = bitcast ptr %"R37" to ptr
  store float %"fmul.279", ptr %".6359"
  ; FFMA R8, R37, R36, R8
  %".6362" = load float, ptr %"R37"
  %".6363" = load float, ptr %"R36"
  %".6364" = load float, ptr %"R8"
  %"fmul.280" = fmul float %".6362", %".6363"
  %"fadd.241" = fadd float %"fmul.280", %".6364"
  %".6365" = bitcast ptr %"R8" to ptr
  store float %"fadd.241", ptr %".6365"
  ; FMUL R39, R39, R22
  %".6368" = load float, ptr %"R39"
  %".6369" = load float, ptr %"R22"
  %"fmul.281" = fmul float %".6368", %".6369"
  %".6370" = bitcast ptr %"R39" to ptr
  store float %"fmul.281", ptr %".6370"
  ; FFMA R8, R39, R38, R8
  %".6373" = load float, ptr %"R39"
  %".6374" = load float, ptr %"R38"
  %".6375" = load float, ptr %"R8"
  %"fmul.282" = fmul float %".6373", %".6374"
  %"fadd.242" = fadd float %"fmul.282", %".6375"
  %".6376" = bitcast ptr %"R8" to ptr
  store float %"fadd.242", ptr %".6376"
  ; FMUL R41, R41, R22
  %".6379" = load float, ptr %"R41"
  %".6380" = load float, ptr %"R22"
  %"fmul.283" = fmul float %".6379", %".6380"
  %".6381" = bitcast ptr %"R41" to ptr
  store float %"fmul.283", ptr %".6381"
  ; FFMA R8, R41, R40, R8
  %".6384" = load float, ptr %"R41"
  %".6385" = load float, ptr %"R40"
  %".6386" = load float, ptr %"R8"
  %"fmul.284" = fmul float %".6384", %".6385"
  %"fadd.243" = fadd float %"fmul.284", %".6386"
  %".6387" = bitcast ptr %"R8" to ptr
  store float %"fadd.243", ptr %".6387"
  ; FMUL R43, R43, R22
  %".6390" = load float, ptr %"R43"
  %".6391" = load float, ptr %"R22"
  %"fmul.285" = fmul float %".6390", %".6391"
  %".6392" = bitcast ptr %"R43" to ptr
  store float %"fmul.285", ptr %".6392"
  ; FFMA R8, R43, R42, R8
  %".6395" = load float, ptr %"R43"
  %".6396" = load float, ptr %"R42"
  %".6397" = load float, ptr %"R8"
  %"fmul.286" = fmul float %".6395", %".6396"
  %"fadd.244" = fadd float %"fmul.286", %".6397"
  %".6398" = bitcast ptr %"R8" to ptr
  store float %"fadd.244", ptr %".6398"
  ; FMUL R45, R45, R22.reuse
  %".6401" = load float, ptr %"R45"
  %".6402" = load float, ptr %"R22"
  %"fmul.287" = fmul float %".6401", %".6402"
  %".6403" = bitcast ptr %"R45" to ptr
  store float %"fmul.287", ptr %".6403"
  ; FMUL R47, R47, R22
  %".6406" = load float, ptr %"R47"
  %".6407" = load float, ptr %"R22"
  %"fmul.288" = fmul float %".6406", %".6407"
  %".6408" = bitcast ptr %"R47" to ptr
  store float %"fmul.288", ptr %".6408"
  ; FFMA R8, R45, R44, R8
  %".6411" = load float, ptr %"R45"
  %".6412" = load float, ptr %"R44"
  %".6413" = load float, ptr %"R8"
  %"fmul.289" = fmul float %".6411", %".6412"
  %"fadd.245" = fadd float %"fmul.289", %".6413"
  %".6414" = bitcast ptr %"R8" to ptr
  store float %"fadd.245", ptr %".6414"
  ; FFMA R21, R47, R46, R8
  %".6417" = load float, ptr %"R47"
  %".6418" = load float, ptr %"R46"
  %".6419" = load float, ptr %"R8"
  %"fmul.290" = fmul float %".6417", %".6418"
  %"fadd.246" = fadd float %"fmul.290", %".6419"
  %".6420" = bitcast ptr %"R21" to ptr
  store float %"fadd.246", ptr %".6420"
  br label %".L_x_40"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".6424" = load i32, ptr %"R35"
  %".6425" = load i1, ptr %"PT"
  %"cmp.50" = icmp ne i32 %".6424", 0
  %".6426" = or i1 %"cmp.50", %".6425"
  ; @!P0 BRA `(.L_x_36)
  %".6428" = load i1, ptr %"P0"
  %".6429" = icmp eq i1 %".6428", 1
  br i1 %".6429", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IADD3 R6, R3, R34, RZ
  %".6434" = load i32, ptr %"R3"
  %".6435" = load i32, ptr %"R34"
  %"add.298" = add i32 %".6434", %".6435"
  %"add.299" = add i32 %"add.298", 0
  store i32 %"add.299", ptr %"R6"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".6438" = load i32, ptr %"R34"
  %".6439" = load i32, ptr %"R7"
  %"mul.102" = mul i32 %".6438", %".6439"
  %"add.300" = add i32 %"mul.102", %"Arg_3"
  store i32 %"add.300", ptr %"R4"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".6442" = load i32, ptr %"R6"
  %".6443" = load i32, ptr %"R7"
  %"mul.103" = mul i32 %".6442", %".6443"
  %"add.301" = add i32 %"mul.103", %"Arg_4"
  store i32 %"add.301", ptr %"R6"
  ; LDG.E.SYS R9, [R4]
  %".6446" = load i32, ptr %"R4"
  %"zext.680" = zext i32 %".6446" to i64
  %".6447" = load i32, ptr %"R5"
  %"zext.681" = zext i32 %".6447" to i64
  %"shl.357" = shl i64 %"zext.681", 32
  %"or.337" = or i64 %"shl.357", %"zext.680"
  %".6448" = inttoptr i64 %"or.337" to ptr
  %".6449" = ptrtoint ptr %".6448" to i64
  %".6450" = add i64 %".6449", 0
  %"for_LDG.330" = inttoptr i64 %".6450" to ptr
  %".6451" = load float, ptr %"for_LDG.330"
  %".6452" = bitcast ptr %"R9" to ptr
  store float %".6451", ptr %".6452"
  ; LDG.E.SYS R10, [R6]
  %".6455" = load i32, ptr %"R6"
  %"zext.682" = zext i32 %".6455" to i64
  %".6456" = load i32, ptr %"R7"
  %"zext.683" = zext i32 %".6456" to i64
  %"shl.358" = shl i64 %"zext.683", 32
  %"or.338" = or i64 %"shl.358", %"zext.682"
  %".6457" = inttoptr i64 %"or.338" to ptr
  %".6458" = ptrtoint ptr %".6457" to i64
  %".6459" = add i64 %".6458", 0
  %"for_LDG.331" = inttoptr i64 %".6459" to ptr
  %".6460" = load float, ptr %"for_LDG.331"
  %".6461" = bitcast ptr %"R10" to ptr
  store float %".6460", ptr %".6461"
  ; LDG.E.SYS R11, [R4+0x4]
  %".6464" = load i32, ptr %"R4"
  %"zext.684" = zext i32 %".6464" to i64
  %".6465" = load i32, ptr %"R5"
  %"zext.685" = zext i32 %".6465" to i64
  %"shl.359" = shl i64 %"zext.685", 32
  %"or.339" = or i64 %"shl.359", %"zext.684"
  %".6466" = inttoptr i64 %"or.339" to ptr
  %".6467" = ptrtoint ptr %".6466" to i64
  %".6468" = add i64 %".6467", 4
  %"for_LDG.332" = inttoptr i64 %".6468" to ptr
  %".6469" = load float, ptr %"for_LDG.332"
  %".6470" = bitcast ptr %"R11" to ptr
  store float %".6469", ptr %".6470"
  ; LDG.E.SYS R12, [R6+0x4]
  %".6473" = load i32, ptr %"R6"
  %"zext.686" = zext i32 %".6473" to i64
  %".6474" = load i32, ptr %"R7"
  %"zext.687" = zext i32 %".6474" to i64
  %"shl.360" = shl i64 %"zext.687", 32
  %"or.340" = or i64 %"shl.360", %"zext.686"
  %".6475" = inttoptr i64 %"or.340" to ptr
  %".6476" = ptrtoint ptr %".6475" to i64
  %".6477" = add i64 %".6476", 4
  %"for_LDG.333" = inttoptr i64 %".6477" to ptr
  %".6478" = load float, ptr %"for_LDG.333"
  %".6479" = bitcast ptr %"R12" to ptr
  store float %".6478", ptr %".6479"
  ; LDG.E.SYS R13, [R4+0x8]
  %".6482" = load i32, ptr %"R4"
  %"zext.688" = zext i32 %".6482" to i64
  %".6483" = load i32, ptr %"R5"
  %"zext.689" = zext i32 %".6483" to i64
  %"shl.361" = shl i64 %"zext.689", 32
  %"or.341" = or i64 %"shl.361", %"zext.688"
  %".6484" = inttoptr i64 %"or.341" to ptr
  %".6485" = ptrtoint ptr %".6484" to i64
  %".6486" = add i64 %".6485", 8
  %"for_LDG.334" = inttoptr i64 %".6486" to ptr
  %".6487" = load float, ptr %"for_LDG.334"
  %".6488" = bitcast ptr %"R13" to ptr
  store float %".6487", ptr %".6488"
  ; LDG.E.SYS R24, [R6+0x8]
  %".6491" = load i32, ptr %"R6"
  %"zext.690" = zext i32 %".6491" to i64
  %".6492" = load i32, ptr %"R7"
  %"zext.691" = zext i32 %".6492" to i64
  %"shl.362" = shl i64 %"zext.691", 32
  %"or.342" = or i64 %"shl.362", %"zext.690"
  %".6493" = inttoptr i64 %"or.342" to ptr
  %".6494" = ptrtoint ptr %".6493" to i64
  %".6495" = add i64 %".6494", 8
  %"for_LDG.335" = inttoptr i64 %".6495" to ptr
  %".6496" = load float, ptr %"for_LDG.335"
  %".6497" = bitcast ptr %"R24" to ptr
  store float %".6496", ptr %".6497"
  ; LDG.E.SYS R25, [R4+0xc]
  %".6500" = load i32, ptr %"R4"
  %"zext.692" = zext i32 %".6500" to i64
  %".6501" = load i32, ptr %"R5"
  %"zext.693" = zext i32 %".6501" to i64
  %"shl.363" = shl i64 %"zext.693", 32
  %"or.343" = or i64 %"shl.363", %"zext.692"
  %".6502" = inttoptr i64 %"or.343" to ptr
  %".6503" = ptrtoint ptr %".6502" to i64
  %".6504" = add i64 %".6503", 12
  %"for_LDG.336" = inttoptr i64 %".6504" to ptr
  %".6505" = load float, ptr %"for_LDG.336"
  %".6506" = bitcast ptr %"R25" to ptr
  store float %".6505", ptr %".6506"
  ; LDG.E.SYS R36, [R6+0xc]
  %".6509" = load i32, ptr %"R6"
  %"zext.694" = zext i32 %".6509" to i64
  %".6510" = load i32, ptr %"R7"
  %"zext.695" = zext i32 %".6510" to i64
  %"shl.364" = shl i64 %"zext.695", 32
  %"or.344" = or i64 %"shl.364", %"zext.694"
  %".6511" = inttoptr i64 %"or.344" to ptr
  %".6512" = ptrtoint ptr %".6511" to i64
  %".6513" = add i64 %".6512", 12
  %"for_LDG.337" = inttoptr i64 %".6513" to ptr
  %".6514" = load float, ptr %"for_LDG.337"
  %".6515" = bitcast ptr %"R36" to ptr
  store float %".6514", ptr %".6515"
  ; IADD3 R35, R35, -0x4, RZ
  %".6518" = load i32, ptr %"R35"
  %"add.302" = add i32 %".6518", -4
  %"add.303" = add i32 %"add.302", 0
  store i32 %"add.303", ptr %"R35"
  ; IADD3 R34, R34, 0x4, RZ
  %".6521" = load i32, ptr %"R34"
  %"add.304" = add i32 %".6521", 4
  %"add.305" = add i32 %"add.304", 0
  store i32 %"add.305", ptr %"R34"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".6524" = load i32, ptr %"R35"
  %".6525" = load i1, ptr %"PT"
  %"cmp.51" = icmp ne i32 %".6524", 0
  %".6526" = and i1 %"cmp.51", %".6525"
  ; FMUL R8, R9, R22
  %".6528" = load float, ptr %"R9"
  %".6529" = load float, ptr %"R22"
  %"fmul.291" = fmul float %".6528", %".6529"
  %".6530" = bitcast ptr %"R8" to ptr
  store float %"fmul.291", ptr %".6530"
  ; FFMA R8, R8, R10, R21
  %".6533" = load float, ptr %"R8"
  %".6534" = load float, ptr %"R10"
  %".6535" = load float, ptr %"R21"
  %"fmul.292" = fmul float %".6533", %".6534"
  %"fadd.247" = fadd float %"fmul.292", %".6535"
  %".6536" = bitcast ptr %"R8" to ptr
  store float %"fadd.247", ptr %".6536"
  ; FMUL R11, R11, R22
  %".6539" = load float, ptr %"R11"
  %".6540" = load float, ptr %"R22"
  %"fmul.293" = fmul float %".6539", %".6540"
  %".6541" = bitcast ptr %"R11" to ptr
  store float %"fmul.293", ptr %".6541"
  ; FFMA R8, R11, R12, R8
  %".6544" = load float, ptr %"R11"
  %".6545" = load float, ptr %"R12"
  %".6546" = load float, ptr %"R8"
  %"fmul.294" = fmul float %".6544", %".6545"
  %"fadd.248" = fadd float %"fmul.294", %".6546"
  %".6547" = bitcast ptr %"R8" to ptr
  store float %"fadd.248", ptr %".6547"
  ; FMUL R13, R13, R22
  %".6550" = load float, ptr %"R13"
  %".6551" = load float, ptr %"R22"
  %"fmul.295" = fmul float %".6550", %".6551"
  %".6552" = bitcast ptr %"R13" to ptr
  store float %"fmul.295", ptr %".6552"
  ; FFMA R8, R13, R24, R8
  %".6555" = load float, ptr %"R13"
  %".6556" = load float, ptr %"R24"
  %".6557" = load float, ptr %"R8"
  %"fmul.296" = fmul float %".6555", %".6556"
  %"fadd.249" = fadd float %"fmul.296", %".6557"
  %".6558" = bitcast ptr %"R8" to ptr
  store float %"fadd.249", ptr %".6558"
  ; FMUL R25, R25, R22
  %".6561" = load float, ptr %"R25"
  %".6562" = load float, ptr %"R22"
  %"fmul.297" = fmul float %".6561", %".6562"
  %".6563" = bitcast ptr %"R25" to ptr
  store float %"fmul.297", ptr %".6563"
  ; FFMA R21, R25, R36, R8
  %".6566" = load float, ptr %"R25"
  %".6567" = load float, ptr %"R36"
  %".6568" = load float, ptr %"R8"
  %"fmul.298" = fmul float %".6566", %".6567"
  %"fadd.250" = fadd float %"fmul.298", %".6568"
  %".6569" = bitcast ptr %"R21" to ptr
  store float %"fadd.250", ptr %".6569"
  ; @P0 BRA `(.L_x_37)
  %".6572" = load i1, ptr %"P0"
  %".6573" = icmp ne i1 %".6572", 1
  br i1 %".6573", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".6576" = load i32, ptr %"R48"
  %".6577" = load i1, ptr %"PT"
  %"cmp.52" = icmp ne i32 %".6576", 0
  %".6578" = and i1 %"cmp.52", %".6577"
  ; @!P0 BRA `(.L_x_35)
  %".6580" = load i1, ptr %"P0"
  %".6581" = icmp eq i1 %".6580", 1
  br i1 %".6581", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IADD3 R4, R3, R34, RZ
  %".6586" = load i32, ptr %"R3"
  %".6587" = load i32, ptr %"R34"
  %"add.306" = add i32 %".6586", %".6587"
  %"add.307" = add i32 %"add.306", 0
  store i32 %"add.307", ptr %"R4"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".6590" = load i32, ptr %"R34"
  %".6591" = load i32, ptr %"R5"
  %"mul.104" = mul i32 %".6590", %".6591"
  %"add.308" = add i32 %"mul.104", %"Arg_3"
  store i32 %"add.308", ptr %"R34"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".6594" = load i32, ptr %"R4"
  %".6595" = load i32, ptr %"R5"
  %"mul.105" = mul i32 %".6594", %".6595"
  %"add.309" = add i32 %"mul.105", %"Arg_4"
  store i32 %"add.309", ptr %"R4"
  ; LDG.E.SYS R7, [R34]
  %".6598" = load i32, ptr %"R34"
  %"zext.696" = zext i32 %".6598" to i64
  %".6599" = load i32, ptr %"R35"
  %"zext.697" = zext i32 %".6599" to i64
  %"shl.365" = shl i64 %"zext.697", 32
  %"or.345" = or i64 %"shl.365", %"zext.696"
  %".6600" = inttoptr i64 %"or.345" to ptr
  %".6601" = ptrtoint ptr %".6600" to i64
  %".6602" = add i64 %".6601", 0
  %"for_LDG.338" = inttoptr i64 %".6602" to ptr
  %".6603" = load float, ptr %"for_LDG.338"
  %".6604" = bitcast ptr %"R7" to ptr
  store float %".6603", ptr %".6604"
  ; LDG.E.SYS R8, [R4]
  %".6607" = load i32, ptr %"R4"
  %"zext.698" = zext i32 %".6607" to i64
  %".6608" = load i32, ptr %"R5"
  %"zext.699" = zext i32 %".6608" to i64
  %"shl.366" = shl i64 %"zext.699", 32
  %"or.346" = or i64 %"shl.366", %"zext.698"
  %".6609" = inttoptr i64 %"or.346" to ptr
  %".6610" = ptrtoint ptr %".6609" to i64
  %".6611" = add i64 %".6610", 0
  %"for_LDG.339" = inttoptr i64 %".6611" to ptr
  %".6612" = load float, ptr %"for_LDG.339"
  %".6613" = bitcast ptr %"R8" to ptr
  store float %".6612", ptr %".6613"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".6616" = load i32, ptr %"R48"
  %".6617" = load i1, ptr %"PT"
  %"cmp.53" = icmp ne i32 %".6616", 1
  %".6618" = and i1 %"cmp.53", %".6617"
  ; FMUL R6, R7, R22
  %".6620" = load float, ptr %"R7"
  %".6621" = load float, ptr %"R22"
  %"fmul.299" = fmul float %".6620", %".6621"
  %".6622" = bitcast ptr %"R6" to ptr
  store float %"fmul.299", ptr %".6622"
  ; FFMA R21, R6, R8, R21
  %".6625" = load float, ptr %"R6"
  %".6626" = load float, ptr %"R8"
  %".6627" = load float, ptr %"R21"
  %"fmul.300" = fmul float %".6625", %".6626"
  %"fadd.251" = fadd float %"fmul.300", %".6627"
  %".6628" = bitcast ptr %"R21" to ptr
  store float %"fadd.251", ptr %".6628"
  ; @!P0 BRA `(.L_x_35)
  %".6631" = load i1, ptr %"P0"
  %".6632" = icmp eq i1 %".6631", 1
  br i1 %".6632", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".6635" = load i32, ptr %"R48"
  %".6636" = load i1, ptr %"PT"
  %"cmp.54" = icmp ne i32 %".6635", 2
  %".6637" = and i1 %"cmp.54", %".6636"
  ; LDG.E.SYS R7, [R34+0x4]
  %".6639" = load i32, ptr %"R34"
  %"zext.700" = zext i32 %".6639" to i64
  %".6640" = load i32, ptr %"R35"
  %"zext.701" = zext i32 %".6640" to i64
  %"shl.367" = shl i64 %"zext.701", 32
  %"or.347" = or i64 %"shl.367", %"zext.700"
  %".6641" = inttoptr i64 %"or.347" to ptr
  %".6642" = ptrtoint ptr %".6641" to i64
  %".6643" = add i64 %".6642", 4
  %"for_LDG.340" = inttoptr i64 %".6643" to ptr
  %".6644" = load float, ptr %"for_LDG.340"
  %".6645" = bitcast ptr %"R7" to ptr
  store float %".6644", ptr %".6645"
  ; LDG.E.SYS R8, [R4+0x4]
  %".6648" = load i32, ptr %"R4"
  %"zext.702" = zext i32 %".6648" to i64
  %".6649" = load i32, ptr %"R5"
  %"zext.703" = zext i32 %".6649" to i64
  %"shl.368" = shl i64 %"zext.703", 32
  %"or.348" = or i64 %"shl.368", %"zext.702"
  %".6650" = inttoptr i64 %"or.348" to ptr
  %".6651" = ptrtoint ptr %".6650" to i64
  %".6652" = add i64 %".6651", 4
  %"for_LDG.341" = inttoptr i64 %".6652" to ptr
  %".6653" = load float, ptr %"for_LDG.341"
  %".6654" = bitcast ptr %"R8" to ptr
  store float %".6653", ptr %".6654"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".6657" = load i1, ptr %"P0"
  %".6658" = icmp ne i1 %".6657", 1
  br i1 %".6658", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  %".6661" = load i32, ptr %"R34"
  %"zext.704" = zext i32 %".6661" to i64
  %".6662" = load i32, ptr %"R35"
  %"zext.705" = zext i32 %".6662" to i64
  %"shl.369" = shl i64 %"zext.705", 32
  %"or.349" = or i64 %"shl.369", %"zext.704"
  %".6663" = inttoptr i64 %"or.349" to ptr
  %".6664" = ptrtoint ptr %".6663" to i64
  %".6665" = add i64 %".6664", 8
  %"for_LDG.342" = inttoptr i64 %".6665" to ptr
  %".6666" = load float, ptr %"for_LDG.342"
  %".6667" = bitcast ptr %"R9" to ptr
  store float %".6666", ptr %".6667"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".6672" = load i1, ptr %"P0"
  %".6673" = icmp ne i1 %".6672", 1
  br i1 %".6673", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  %".6676" = load i32, ptr %"R4"
  %"zext.706" = zext i32 %".6676" to i64
  %".6677" = load i32, ptr %"R5"
  %"zext.707" = zext i32 %".6677" to i64
  %"shl.370" = shl i64 %"zext.707", 32
  %"or.350" = or i64 %"shl.370", %"zext.706"
  %".6678" = inttoptr i64 %"or.350" to ptr
  %".6679" = ptrtoint ptr %".6678" to i64
  %".6680" = add i64 %".6679", 8
  %"for_LDG.343" = inttoptr i64 %".6680" to ptr
  %".6681" = load float, ptr %"for_LDG.343"
  %".6682" = bitcast ptr %"R10" to ptr
  store float %".6681", ptr %".6682"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".6687" = load float, ptr %"R7"
  %".6688" = load float, ptr %"R22"
  %"fmul.301" = fmul float %".6687", %".6688"
  %".6689" = bitcast ptr %"R6" to ptr
  store float %"fmul.301", ptr %".6689"
  ; FFMA R21, R6, R8, R21
  %".6692" = load float, ptr %"R6"
  %".6693" = load float, ptr %"R8"
  %".6694" = load float, ptr %"R21"
  %"fmul.302" = fmul float %".6692", %".6693"
  %"fadd.252" = fadd float %"fmul.302", %".6694"
  %".6695" = bitcast ptr %"R21" to ptr
  store float %"fadd.252", ptr %".6695"
  ; @P0 FMUL R22, R9, R22
  %".6698" = load i1, ptr %"P0"
  %".6699" = icmp ne i1 %".6698", 1
  br i1 %".6699", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".6702" = load float, ptr %"R9"
  %".6703" = load float, ptr %"R22"
  %"fmul.303" = fmul float %".6702", %".6703"
  %".6704" = bitcast ptr %"R22" to ptr
  store float %"fmul.303", ptr %".6704"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".6709" = load i1, ptr %"P0"
  %".6710" = icmp ne i1 %".6709", 1
  br i1 %".6710", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".6713" = load float, ptr %"R22"
  %".6714" = load float, ptr %"R10"
  %".6715" = load float, ptr %"R21"
  %"fmul.304" = fmul float %".6713", %".6714"
  %"fadd.253" = fadd float %"fmul.304", %".6715"
  %".6716" = bitcast ptr %"R21" to ptr
  store float %"fadd.253", ptr %".6716"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  %".6721" = load i32, ptr %"R30"
  %"zext.708" = zext i32 %".6721" to i64
  %"zext.709" = zext i32 0 to i64
  %"shl.371" = shl i64 %"zext.709", 32
  %"or.351" = or i64 %"shl.371", %"zext.708"
  %".6722" = inttoptr i64 %"or.351" to ptr
  %".6723" = ptrtoint ptr %".6722" to i64
  %".6724" = add i64 %".6723", 0
  %"for_LDG.344" = inttoptr i64 %".6724" to ptr
  %".6725" = load float, ptr %"for_LDG.344"
  %".6726" = bitcast ptr %"R4" to ptr
  store float %".6725", ptr %".6726"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".6731" = load float, ptr %"R4"
  %".6732" = load float, ptr %"R21"
  %"fadd.254" = fadd float %".6731", %".6732"
  %".6733" = bitcast ptr %"R21" to ptr
  store float %"fadd.254", ptr %".6733"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".6736" = load float, ptr %"R21"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".6736")
  %".6737" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".6738" = and i1 %"fcmp_unordered.2", %".6737"
  ; @!P0 BRA `(.L_x_42)
  %".6740" = load i1, ptr %"P0"
  %".6741" = icmp eq i1 %".6740", 1
  br i1 %".6741", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".6744" = load float, ptr %"R21"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".6744")
  %"fmul.305" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".6745" = bitcast ptr %"R5" to ptr
  store float %"fmul.305", ptr %".6745"
  ; MOV R7, 0x3f800000
  %".6748" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".6748"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".6751" = load float, ptr %"R21"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".6751")
  %".6752" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".6753" = and i1 %"fcmp_unordered.3", %".6752"
  ; MUFU.EX2 R5, R5
  %".6755" = load float, ptr %"R5"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".6755")
  %".6756" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.5", ptr %".6756"
  ; FADD R6, R5, 1
  %".6759" = load float, ptr %"R5"
  %"fadd.255" = fadd float %".6759", 0x3ff0000000000000
  %".6760" = bitcast ptr %"R6" to ptr
  store float %"fadd.255", ptr %".6760"
  ; MUFU.RCP R6, R6
  %".6763" = load float, ptr %"R6"
  %".6764" = fdiv float 0x3ff0000000000000, %".6763"
  %".6765" = bitcast ptr %"R6" to ptr
  store float %".6764", ptr %".6765"
  ; FFMA R4, R6, -2, R7
  %".6768" = load float, ptr %"R6"
  %".6769" = load float, ptr %"R7"
  %"fmul.306" = fmul float %".6768", 0xc000000000000000
  %"fadd.256" = fadd float %"fmul.306", %".6769"
  %".6770" = bitcast ptr %"R4" to ptr
  store float %"fadd.256", ptr %".6770"
  ; FSEL R4, R4, 1, !P0
  %".6773" = load float, ptr %"R4"
  %".6774" = load i1, ptr %"P0"
  %".6775" = icmp eq i1 %".6774", 1
  %"fsel.1" = select  i1 %".6775", float %".6773", float 0x3ff0000000000000
  %".6776" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".6776"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".6779" = load float, ptr %"R4"
  %".6780" = load float, ptr %"R21"
  %".6781" = or float %".6779", 0x41e0000000000000
  %".6782" = or float %".6779", %".6780"
  %".6783" = and float %".6781", %".6782"
  %".6784" = bitcast ptr %"R4" to ptr
  store float %".6783", ptr %".6784"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  %".6789" = bitcast ptr %"R5" to ptr
  store float 0x41ce407840000000, ptr %".6789"
  ; FMUL R4, R21, R21
  %".6792" = load float, ptr %"R21"
  %".6793" = load float, ptr %"R21"
  %"fmul.307" = fmul float %".6792", %".6793"
  %".6794" = bitcast ptr %"R4" to ptr
  store float %"fmul.307", ptr %".6794"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".6797" = load float, ptr %"R4"
  %".6798" = load float, ptr %"R5"
  %"fmul.308" = fmul float %".6797", %".6798"
  %"fadd.257" = fadd float %"fmul.308", 0xbfaac795c0000000
  %".6799" = bitcast ptr %"R5" to ptr
  store float %"fadd.257", ptr %".6799"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".6802" = load float, ptr %"R4"
  %".6803" = load float, ptr %"R5"
  %"fmul.309" = fmul float %".6802", %".6803"
  %"fadd.258" = fadd float %"fmul.309", 0x3fc10b2820000000
  %".6804" = bitcast ptr %"R5" to ptr
  store float %"fadd.258", ptr %".6804"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".6807" = load float, ptr %"R4"
  %".6808" = load float, ptr %"R5"
  %"fmul.310" = fmul float %".6807", %".6808"
  %"fadd.259" = fadd float %"fmul.310", 0xbfd5553da0000000
  %".6809" = bitcast ptr %"R5" to ptr
  store float %"fadd.259", ptr %".6809"
  ; FFMA R4, R4, R5, RZ
  %".6812" = load float, ptr %"R4"
  %".6813" = load float, ptr %"R5"
  %"fmul.311" = fmul float %".6812", %".6813"
  %"fadd.260" = fadd float %"fmul.311",              0x0
  %".6814" = bitcast ptr %"R4" to ptr
  store float %"fadd.260", ptr %".6814"
  ; FFMA R4, R21, R4, R21
  %".6817" = load float, ptr %"R21"
  %".6818" = load float, ptr %"R4"
  %".6819" = load float, ptr %"R21"
  %"fmul.312" = fmul float %".6817", %".6818"
  %"fadd.261" = fadd float %"fmul.312", %".6819"
  %".6820" = bitcast ptr %"R4" to ptr
  store float %"fadd.261", ptr %".6820"
  br label %".L_x_43"
.L_x_43:
  ; BSYNC B0
  br label %".L_x_41"
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  %".6826" = load i32, ptr %"R23"
  %"add.310" = add i32 %".6826", 25165824
  %"add.311" = add i32 %"add.310", 0
  store i32 %"add.311", ptr %"R5"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".6831" = load i32, ptr %"R5"
  %".6832" = and i32 %".6831", 2139095040
  store i32 %".6832", ptr %"R5"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".6835" = load i32, ptr %"R5"
  %".6836" = load i1, ptr %"PT"
  %"cmp.55" = icmp sgt i32 %".6835", 33554431
  %".6837" = and i1 %"cmp.55", %".6836"
  ; @P0 BRA `(.L_x_45)
  %".6839" = load i1, ptr %"P0"
  %".6840" = icmp ne i1 %".6839", 1
  br i1 %".6840", label %".L_x_45", label %".L_x_41_split_0x47f0"
.L_x_41_split_0x47f0:
  ; MOV R24, R23
  %".6843" = load float, ptr %"R23"
  %".6844" = bitcast ptr %"R24" to ptr
  store float %".6843", ptr %".6844"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.3" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R5, R22
  %".6850" = load i32, ptr %"R22"
  store i32 %".6850", ptr %"R5"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".6855" = load float, ptr %"R23"
  %".6856" = fdiv float 0x3ff0000000000000, %".6855"
  %".6857" = bitcast ptr %"R6" to ptr
  store float %".6856", ptr %".6857"
  ; FFMA R5, R23, R6, -1
  %".6860" = load float, ptr %"R23"
  %".6861" = load float, ptr %"R6"
  %"fmul.313" = fmul float %".6860", %".6861"
  %"fadd.262" = fadd float %"fmul.313", 0xbff0000000000000
  %".6862" = bitcast ptr %"R5" to ptr
  store float %"fadd.262", ptr %".6862"
  ; FADD.FTZ R5, -R5, -RZ
  %".6865" = load float, ptr %"R5"
  %".6866" = fneg float %".6865"
  %"fadd.263" = fadd float %".6866",              0x0
  %".6867" = bitcast ptr %"R5" to ptr
  store float %"fadd.263", ptr %".6867"
  ; FFMA R5, R6, R5, R6
  %".6870" = load float, ptr %"R6"
  %".6871" = load float, ptr %"R5"
  %".6872" = load float, ptr %"R6"
  %"fmul.314" = fmul float %".6870", %".6871"
  %"fadd.264" = fadd float %"fmul.314", %".6872"
  %".6873" = bitcast ptr %"R5" to ptr
  store float %"fadd.264", ptr %".6873"
  br label %".L_x_46"
.L_x_46:
  ; BSYNC B0
  br label %".L_x_44"
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  %".6879" = load i32, ptr %"R28"
  %"zext.710" = zext i32 %".6879" to i64
  %"zext.711" = zext i32 0 to i64
  %"shl.372" = shl i64 %"zext.711", 32
  %"or.352" = or i64 %"shl.372", %"zext.710"
  %".6880" = inttoptr i64 %"or.352" to ptr
  %".6881" = ptrtoint ptr %".6880" to i64
  %".6882" = add i64 %".6881", 0
  %"for_LDG.345" = inttoptr i64 %".6882" to ptr
  %".6883" = load float, ptr %"for_LDG.345"
  %".6884" = bitcast ptr %"R6" to ptr
  store float %".6883", ptr %".6884"
  ; FADD R7, -R5, 1
  %".6887" = load float, ptr %"R5"
  %".6888" = fneg float %".6887"
  %"fadd.265" = fadd float %".6888", 0x3ff0000000000000
  %".6889" = bitcast ptr %"R7" to ptr
  store float %"fadd.265", ptr %".6889"
  ; FMUL R6, R6, R5
  %".6892" = load float, ptr %"R6"
  %".6893" = load float, ptr %"R5"
  %"fmul.315" = fmul float %".6892", %".6893"
  %".6894" = bitcast ptr %"R6" to ptr
  store float %"fmul.315", ptr %".6894"
  ; FFMA R7, R7, R4, R6
  %".6897" = load float, ptr %"R7"
  %".6898" = load float, ptr %"R4"
  %".6899" = load float, ptr %"R6"
  %"fmul.316" = fmul float %".6897", %".6898"
  %"fadd.266" = fadd float %"fmul.316", %".6899"
  %".6900" = bitcast ptr %"R7" to ptr
  store float %"fadd.266", ptr %".6900"
  ; STG.E.SYS [R28], R7
  %".6903" = load float, ptr %"R7"
  %".6904" = load i32, ptr %"R28"
  %"zext.712" = zext i32 %".6904" to i64
  %"zext.713" = zext i32 0 to i64
  %"shl.373" = shl i64 %"zext.713", 32
  %"or.353" = or i64 %"shl.373", %"zext.712"
  %".6905" = inttoptr i64 %"or.353" to ptr
  %".6906" = ptrtoint ptr %".6905" to i64
  %".6907" = add i64 %".6906", 0
  %"for_STG.1" = inttoptr i64 %".6907" to ptr
  store float %".6903", ptr %"for_STG.1"
  ; @!P3 BRA `(.L_x_47)
  %".6910" = load i1, ptr %"P3"
  %".6911" = icmp eq i1 %".6910", 1
  br i1 %".6911", label %".L_x_47", label %".L_x_44_split_0x48f0"
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
  ; @P0 BRA `(.L_x_49)
  %".18" = load i1, ptr %"P0"
  %".19" = icmp ne i1 %".18", 1
  br i1 %".19", label %".L_x_49", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".22" = icmp ult i32 1, 32
  %"SHF_min.2" = select  i1 %".22", i32 1, i32 32
  %".23" = load i32, ptr %"R24"
  %"zext.6" = zext i32 0 to i64
  %"zext.7" = zext i32 %".23" to i64
  %"zext.8" = zext i32 1 to i64
  %"shl.3" = shl i64 %"zext.6", 32
  %"or.2" = or i64 %"shl.3", %"zext.7"
  %"shl.4" = shl i64 %"or.2", %"zext.8"
  %"and.1" = and i64 %"shl.4", 4294967295
  %"trunc32.2" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.2", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".26" = load i32, ptr %"R11"
  %".27" = load i1, ptr %"PT"
  %"cmp.1" = icmp ne i32 %".26", 0
  %".28" = and i1 %"cmp.1", %".27"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".30" = load i1, ptr %"P0"
  %".31" = icmp ne i1 %".30", 1
  br i1 %".31", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".34" = load float, ptr %"R24"
  %"fmul" = fmul float %".34", 0x43f0000000000000
  %"fadd" = fadd float %"fmul",              0x0
  %".35" = bitcast ptr %"R12" to ptr
  store float %"fadd", ptr %".35"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990:
  ; @!P0 MUFU.RCP R11, R24
  %".40" = load i1, ptr %"P0"
  %".41" = icmp eq i1 %".40", 1
  br i1 %".41", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".44" = load i32, ptr %"R24"
  %".45" = fdiv i32 1, %".44"
  store i32 %".45", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0:
  ; @P0 MUFU.RCP R13, R12
  %".50" = load i1, ptr %"P0"
  %".51" = icmp ne i1 %".50", 1
  br i1 %".51", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".54" = load float, ptr %"R12"
  %".55" = fdiv float 0x3ff0000000000000, %".54"
  %".56" = bitcast ptr %"R13" to ptr
  store float %".55", ptr %".56"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0:
  ; @P0 FFMA R22, R12, R13, -1
  %".61" = load i1, ptr %"P0"
  %".62" = icmp ne i1 %".61", 1
  br i1 %".62", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".65" = load float, ptr %"R12"
  %".66" = load float, ptr %"R13"
  %"fmul.1" = fmul float %".65", %".66"
  %"fadd.1" = fadd float %"fmul.1", 0xbff0000000000000
  %".67" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".67"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".72" = load i1, ptr %"P0"
  %".73" = icmp ne i1 %".72", 1
  br i1 %".73", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".76" = load float, ptr %"R22"
  %".77" = fneg float %".76"
  %"fadd.2" = fadd float %".77",              0x0
  %".78" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".78"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0:
  ; @P0 FFMA R22, R13, R22, R13
  %".83" = load i1, ptr %"P0"
  %".84" = icmp ne i1 %".83", 1
  br i1 %".84", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".87" = load float, ptr %"R13"
  %".88" = load float, ptr %"R22"
  %".89" = load float, ptr %"R13"
  %"fmul.2" = fmul float %".87", %".88"
  %"fadd.3" = fadd float %"fmul.2", %".89"
  %".90" = bitcast ptr %"R22" to ptr
  store float %"fadd.3", ptr %".90"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".95" = load i1, ptr %"P0"
  %".96" = icmp ne i1 %".95", 1
  br i1 %".96", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".99" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".99", 0x43f0000000000000
  %"fadd.4" = fadd float %"fmul.3",              0x0
  %".100" = bitcast ptr %"R11" to ptr
  store float %"fadd.4", ptr %".100"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0:
  ; BRA `(.L_x_50)
  br label %".L_x_50"
.L_x_49:
  ; IADD3 R34, R25, -0xfd, RZ
  %".107" = load i32, ptr %"R25"
  %"add" = add i32 %".107", -253
  %"add.1" = add i32 %"add", 0
  store i32 %"add.1", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".110" = load i32, ptr %"R34"
  %".111" = load i1, ptr %"PT"
  %"cmp.2" = icmp sgt i32 %".110", 1
  %".112" = and i1 %"cmp.2", %".111"
  ; @P0 BRA `(.L_x_51)
  %".114" = load i1, ptr %"P0"
  %".115" = icmp ne i1 %".114", 1
  br i1 %".115", label %".L_x_51", label %".L_x_49_split_0x4a30"
.L_x_49_split_0x4a30:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".118" = load i32, ptr %"R24"
  %".119" = and i32 %".118", 8388607
  store i32 %".119", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".124" = load i32, ptr %"R11"
  %".125" = or i32 %".124", 1065353216
  store i32 %".125", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".128" = load i32, ptr %"R34"
  %".129" = icmp ult i32 %".128", 32
  %"SHF_min.3" = select  i1 %".129", i32 %".128", i32 32
  %".130" = load i32, ptr %"R23"
  %".131" = load i32, ptr %"R34"
  %"zext.9" = zext i32 0 to i64
  %"zext.10" = zext i32 %".130" to i64
  %"zext.11" = zext i32 %".131" to i64
  %"shl.5" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.5", %"zext.10"
  %"shl.6" = shl i64 %"or.3", %"zext.11"
  %"and.2" = and i64 %"shl.6", 4294967295
  %"trunc32.3" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.3", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".134" = load float, ptr %"R11"
  %".135" = fdiv float 0x3ff0000000000000, %".134"
  %".136" = bitcast ptr %"R12" to ptr
  store float %".135", ptr %".136"
  ; FFMA R13, R11, R12, -1
  %".139" = load float, ptr %"R11"
  %".140" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".139", %".140"
  %"fadd.5" = fadd float %"fmul.4", 0xbff0000000000000
  %".141" = bitcast ptr %"R13" to ptr
  store float %"fadd.5", ptr %".141"
  ; FADD.FTZ R13, -R13, -RZ
  %".144" = load float, ptr %"R13"
  %".145" = fneg float %".144"
  %"fadd.6" = fadd float %".145",              0x0
  %".146" = bitcast ptr %"R13" to ptr
  store float %"fadd.6", ptr %".146"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".149" = load float, ptr %"R12"
  %".150" = load float, ptr %"R13"
  %".151" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".149", %".150"
  %"fadd.7" = fadd float %"fmul.5", %".151"
  %".152" = bitcast ptr %"R22" to ptr
  store float %"fadd.7", ptr %".152"
  ; FFMA.RP R13, R12, R13, R12
  %".155" = load float, ptr %"R12"
  %".156" = load float, ptr %"R13"
  %".157" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".155", %".156"
  %"fadd.8" = fadd float %"fmul.6", %".157"
  %".158" = bitcast ptr %"R13" to ptr
  store float %"fadd.8", ptr %".158"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".161" = load float, ptr %"R22"
  %".162" = bitcast float %".161" to i32
  %".163" = and i32 %".162", 8388607
  store i32 %".163", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".166" = load float, ptr %"R22"
  %".167" = load float, ptr %"R13"
  %".168" = load i1, ptr %"PT"
  %"fcmp_ordered" = fcmp une float %".166", %".167"
  %".169" = and i1 %"fcmp_ordered", %".168"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".171" = load i32, ptr %"R12"
  %".172" = or i32 %".171", 8388608
  store i32 %".172", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".175" = load i1, ptr %"P0"
  %".176" = icmp eq i1 %".175", 1
  %"sel" = select  i1 %".176", i32 0, i32 4294967295
  store i32 %"sel", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".179" = load i32, ptr %"R23"
  %".180" = load i32, ptr %"R12"
  %".181" = and i32 %".179", %".180"
  store i32 %".181", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".184" = load i32, ptr %"R13"
  %".185" = sub i32 0, %".184"
  %"add.2" = add i32 %".185", 0
  %"add.3" = add i32 %"add.2", 0
  store i32 %"add.3", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".188" = load i32, ptr %"R34"
  %".189" = icmp ult i32 %".188", 32
  %"SHF_min.4" = select  i1 %".189", i32 %".188", i32 32
  %".190" = load i32, ptr %"R23"
  %".191" = load i32, ptr %"R34"
  %"zext.12" = zext i32 %".190" to i64
  %"zext.13" = zext i32 0 to i64
  %"zext.14" = zext i32 %".191" to i64
  %"shl.7" = shl i64 %"zext.12", 32
  %"or.4" = or i64 %"shl.7", %"zext.13"
  %"lshr.2" = lshr i64 %"or.4", %"zext.14"
  %"lshr.3" = lshr i64 %"lshr.2", 32
  %"trunc32.4" = trunc i64 %"lshr.3" to i32
  store i32 %"trunc32.4", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".194" = load i32, ptr %"R13"
  %".195" = load i32, ptr %"R34"
  %".196" = load i32, ptr %"R12"
  %"LOP3_result" = call i32 @"custom_lop3"(i32 %".196", i32 0, i32 %".194", i32 %".195")
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".198" = load i32, ptr %"R23"
  %"LOP3_result.1" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".198", i32 1)
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".200" = load i32, ptr %"R23"
  %"LOP3_result.2" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".200", i32 2)
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".202" = load i1, ptr %"P0"
  %".203" = sub i1 0, %".202"
  %".204" = load i1, ptr %"P1"
  %".205" = sub i1 0, %".204"
  %".206" = or i1 %".203", %".205"
  %".207" = and i1 %".206", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".209" = load i32, ptr %"R24"
  %"LOP3_result.3" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".209", i32 8388607)
  ; SEL R11, RZ, 0x1, !P0
  %".211" = load i1, ptr %"P0"
  %".212" = icmp eq i1 %".211", 1
  %"sel.1" = select  i1 %".212", i32 0, i32 1
  store i32 %"sel.1", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".215" = load i32, ptr %"R11"
  %".216" = sub i32 0, %".215"
  %"add.4" = add i32 %".216", 0
  %"add.5" = add i32 %"add.4", 0
  store i32 %"add.5", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".219" = load i32, ptr %"R11"
  %".220" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".219", 0
  %".221" = and i1 %"cmp.3", %".220"
  ; IADD3 R11, R25, -0xfc, RZ
  %".223" = load i32, ptr %"R25"
  %"add.6" = add i32 %".223", -252
  %"add.7" = add i32 %"add.6", 0
  store i32 %"add.7", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".226" = load i32, ptr %"R11"
  %".227" = icmp ult i32 %".226", 32
  %"SHF_min.5" = select  i1 %".227", i32 %".226", i32 32
  %".228" = load i32, ptr %"R12"
  %".229" = load i32, ptr %"R11"
  %"zext.15" = zext i32 %".228" to i64
  %"zext.16" = zext i32 0 to i64
  %"zext.17" = zext i32 %".229" to i64
  %"shl.8" = shl i64 %"zext.15", 32
  %"or.5" = or i64 %"shl.8", %"zext.16"
  %"lshr.4" = lshr i64 %"or.5", %"zext.17"
  %"lshr.5" = lshr i64 %"lshr.4", 32
  %"trunc32.5" = trunc i64 %"lshr.5" to i32
  store i32 %"trunc32.5", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".232" = load i1, ptr %"P0"
  %".233" = icmp eq i1 %".232", 1
  br i1 %".233", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4be0"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".236" = load i32, ptr %"R11"
  %"add.8" = add i32 %".236", 1
  %"add.9" = add i32 %"add.8", 0
  store i32 %"add.9", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0"
.L_x_49_split_0x4be0:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".241" = load i1, ptr %"P1"
  %".242" = icmp eq i1 %".241", 1
  br i1 %".242", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0", label %".L_x_49_split_0x4bf0"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".245" = icmp ult i32 1, 32
  %"SHF_min.6" = select  i1 %".245", i32 1, i32 32
  %".246" = load i32, ptr %"R11"
  %"zext.18" = zext i32 0 to i64
  %"zext.19" = zext i32 %".246" to i64
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
  %".251" = load i32, ptr %"R11"
  %".252" = load i32, ptr %"R24"
  %".253" = or i32 %".251", 2147483648
  %".254" = or i32 %".251", %".252"
  %".255" = and i32 %".253", %".254"
  store i32 %".255", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50"
.L_x_51:
  ; MUFU.RCP R11, R24
  %".260" = load i32, ptr %"R24"
  %".261" = fdiv i32 1, %".260"
  store i32 %".261", ptr %"R11"
  br label %".L_x_50"
.L_x_50:
  ; BSYNC B1
  br label %".L_x_48"
.L_x_48:
  ; MOV R22, R11
  %".267" = load i32, ptr %"R11"
  store i32 %".267", ptr %"R22"
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

