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
  %".3084" = bitcast float %".3082" to i32
  %".3085" = bitcast float 0x41e0000000000000 to i32
  %".3086" = bitcast float %".3083" to i32
  %".3087" = or i32 %".3084", %".3085"
  %".3088" = or i32 %".3084", %".3086"
  %".3089" = and i32 %".3087", %".3088"
  store i32 %".3089", ptr %"R9"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  %".3094" = bitcast ptr %"R9" to ptr
  store float 0x41ce407840000000, ptr %".3094"
  ; FMUL R8, R12, R12
  %".3097" = load float, ptr %"R12"
  %".3098" = load float, ptr %"R12"
  %"fmul.138" = fmul float %".3097", %".3098"
  %".3099" = bitcast ptr %"R8" to ptr
  store float %"fmul.138", ptr %".3099"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".3102" = load float, ptr %"R8"
  %".3103" = load float, ptr %"R9"
  %"fmul.139" = fmul float %".3102", %".3103"
  %"fadd.113" = fadd float %"fmul.139", 0xbfaac795c0000000
  %".3104" = bitcast ptr %"R9" to ptr
  store float %"fadd.113", ptr %".3104"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".3107" = load float, ptr %"R8"
  %".3108" = load float, ptr %"R9"
  %"fmul.140" = fmul float %".3107", %".3108"
  %"fadd.114" = fadd float %"fmul.140", 0x3fc10b2820000000
  %".3109" = bitcast ptr %"R9" to ptr
  store float %"fadd.114", ptr %".3109"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".3112" = load float, ptr %"R8"
  %".3113" = load float, ptr %"R9"
  %"fmul.141" = fmul float %".3112", %".3113"
  %"fadd.115" = fadd float %"fmul.141", 0xbfd5553da0000000
  %".3114" = bitcast ptr %"R9" to ptr
  store float %"fadd.115", ptr %".3114"
  ; FFMA R9, R8, R9, RZ
  %".3117" = load float, ptr %"R8"
  %".3118" = load float, ptr %"R9"
  %"fmul.142" = fmul float %".3117", %".3118"
  %"fadd.116" = fadd float %"fmul.142",              0x0
  %".3119" = bitcast ptr %"R9" to ptr
  store float %"fadd.116", ptr %".3119"
  ; FFMA R9, R12, R9, R12
  %".3122" = load float, ptr %"R12"
  %".3123" = load float, ptr %"R9"
  %".3124" = load float, ptr %"R12"
  %"fmul.143" = fmul float %".3122", %".3123"
  %"fadd.117" = fadd float %"fmul.143", %".3124"
  %".3125" = bitcast ptr %"R9" to ptr
  store float %"fadd.117", ptr %".3125"
  br label %".L_x_18"
.L_x_18:
  ; BSYNC B0
  br label %".L_x_16"
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  %".3131" = load i32, ptr %"R20"
  %"add.146" = add i32 %".3131", 25165824
  %"add.147" = add i32 %"add.146", 0
  store i32 %"add.147", ptr %"R8"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".3136" = load i32, ptr %"R8"
  %".3137" = and i32 %".3136", 2139095040
  store i32 %".3137", ptr %"R8"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".3140" = load i32, ptr %"R8"
  %".3141" = load i1, ptr %"PT"
  %"cmp.26" = icmp sgt i32 %".3140", 33554431
  %".3142" = and i1 %"cmp.26", %".3141"
  ; @P0 BRA `(.L_x_20)
  %".3144" = load i1, ptr %"P0"
  %".3145" = icmp ne i1 %".3144", 1
  br i1 %".3145", label %".L_x_20", label %".L_x_16_split_0x2170"
.L_x_16_split_0x2170:
  ; MOV R24, R20
  %".3148" = load float, ptr %"R20"
  %".3149" = bitcast ptr %"R24" to ptr
  store float %".3148", ptr %".3149"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.1" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R8, R22
  %".3155" = load i32, ptr %"R22"
  store i32 %".3155", ptr %"R8"
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".3160" = load float, ptr %"R20"
  %".3161" = fdiv float 0x3ff0000000000000, %".3160"
  %".3162" = bitcast ptr %"R11" to ptr
  store float %".3161", ptr %".3162"
  ; FFMA R8, R20, R11, -1
  %".3165" = load float, ptr %"R20"
  %".3166" = load float, ptr %"R11"
  %"fmul.144" = fmul float %".3165", %".3166"
  %"fadd.118" = fadd float %"fmul.144", 0xbff0000000000000
  %".3167" = bitcast ptr %"R8" to ptr
  store float %"fadd.118", ptr %".3167"
  ; FADD.FTZ R8, -R8, -RZ
  %".3170" = load float, ptr %"R8"
  %".3171" = fneg float %".3170"
  %"fadd.119" = fadd float %".3171",              0x0
  %".3172" = bitcast ptr %"R8" to ptr
  store float %"fadd.119", ptr %".3172"
  ; FFMA R8, R11, R8, R11
  %".3175" = load float, ptr %"R11"
  %".3176" = load float, ptr %"R8"
  %".3177" = load float, ptr %"R11"
  %"fmul.145" = fmul float %".3175", %".3176"
  %"fadd.120" = fadd float %"fmul.145", %".3177"
  %".3178" = bitcast ptr %"R8" to ptr
  store float %"fadd.120", ptr %".3178"
  br label %".L_x_21"
.L_x_21:
  ; BSYNC B0
  br label %".L_x_19"
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  %".3184" = load i32, ptr %"R28"
  %"zext.322" = zext i32 %".3184" to i64
  %"zext.323" = zext i32 0 to i64
  %"shl.168" = shl i64 %"zext.323", 32
  %"or.160" = or i64 %"shl.168", %"zext.322"
  %".3185" = inttoptr i64 %"or.160" to ptr
  %".3186" = ptrtoint ptr %".3185" to i64
  %".3187" = add i64 %".3186", 0
  %"for_LDG.158" = inttoptr i64 %".3187" to ptr
  %".3188" = load float, ptr %"for_LDG.158"
  %".3189" = bitcast ptr %"R11" to ptr
  store float %".3188", ptr %".3189"
  ; FADD R10, -R8, 1
  %".3192" = load float, ptr %"R8"
  %".3193" = fneg float %".3192"
  %"fadd.121" = fadd float %".3193", 0x3ff0000000000000
  %".3194" = bitcast ptr %"R10" to ptr
  store float %"fadd.121", ptr %".3194"
  ; FMUL R11, R11, R8
  %".3197" = load float, ptr %"R11"
  %".3198" = load float, ptr %"R8"
  %"fmul.146" = fmul float %".3197", %".3198"
  %".3199" = bitcast ptr %"R11" to ptr
  store float %"fmul.146", ptr %".3199"
  ; FFMA R9, R10, R9, R11
  %".3202" = load float, ptr %"R10"
  %".3203" = load float, ptr %"R9"
  %".3204" = load float, ptr %"R11"
  %"fmul.147" = fmul float %".3202", %".3203"
  %"fadd.122" = fadd float %"fmul.147", %".3204"
  %".3205" = bitcast ptr %"R9" to ptr
  store float %"fadd.122", ptr %".3205"
  ; STG.E.SYS [R28], R9
  %".3208" = load float, ptr %"R9"
  %".3209" = load i32, ptr %"R28"
  %"zext.324" = zext i32 %".3209" to i64
  %"zext.325" = zext i32 0 to i64
  %"shl.169" = shl i64 %"zext.325", 32
  %"or.161" = or i64 %"shl.169", %"zext.324"
  %".3210" = inttoptr i64 %"or.161" to ptr
  %".3211" = ptrtoint ptr %".3210" to i64
  %".3212" = add i64 %".3211", 0
  %"for_STG" = inttoptr i64 %".3212" to ptr
  store float %".3208", ptr %"for_STG"
  ; @!P3 BRA `(.L_x_22)
  %".3215" = load i1, ptr %"P3"
  %".3216" = icmp eq i1 %".3215", 1
  br i1 %".3216", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".3223" = load i32, ptr %"R15"
  %".3224" = and i32 %".3223", 3
  store i32 %".3224", ptr %"R15"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".3227" = load i32, ptr %"R5"
  %".3228" = and i32 %".3227", 3
  store i32 %".3228", ptr %"R48"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".3231" = load i32, ptr %"R18"
  %".3232" = sub i32 0, %".3231"
  %"add.148" = add i32 %".3232", %"Arg_6"
  %"add.149" = add i32 %"add.148", 0
  store i32 %"add.149", ptr %"R49"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".3235" = icmp ult i32 31, 32
  %"SHF_min.2" = select  i1 %".3235", i32 31, i32 32
  %".3236" = load i32, ptr %"R5"
  %"zext.326" = zext i32 %".3236" to i64
  %"zext.327" = zext i32 0 to i64
  %"zext.328" = zext i32 31 to i64
  %"shl.170" = shl i64 %"zext.326", 32
  %"or.162" = or i64 %"shl.170", %"zext.327"
  %"ashr" = ashr i64 %"or.162", %"zext.328"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.2" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.2", ptr %"R16"
  ; MOV R17, RZ
  %".3239" = load i32, ptr %"RZ"
  store i32 %".3239", ptr %"R17"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".3242" = load i32, ptr %"R18"
  %".3243" = sub i32 0, %".3242"
  %"add.150" = add i32 %".3243", %"Arg_7"
  %"add.151" = add i32 %"add.150", 0
  store i32 %"add.151", ptr %"R18"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".3246" = load i32, ptr %"R15"
  %".3247" = sub i32 0, %".3246"
  %"add.152" = add i32 %".3247", %"Arg_6"
  %"add.153" = add i32 %"add.152", 0
  store i32 %"add.153", ptr %"R19"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".3250" = load i32, ptr %"R48"
  %".3251" = sub i32 0, %".3250"
  %"add.154" = add i32 %".3251", %"Arg_7"
  %"add.155" = add i32 %"add.154", 0
  store i32 %"add.155", ptr %"R20"
  br label %".L_x_47"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".3255" = load i32, ptr %"R49"
  %".3256" = load i1, ptr %"PT"
  %"cmp.27" = icmp sge i32 %".3255", 3
  %".3257" = and i1 %"cmp.27", %".3256"
  ; MOV R13, R17
  %".3259" = load i32, ptr %"R17"
  store i32 %".3259", ptr %"R13"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R4"
  ; IADD3 R17, R17, 0x1, RZ
  %".3264" = load i32, ptr %"R17"
  %"add.156" = add i32 %".3264", 1
  %"add.157" = add i32 %"add.156", 0
  store i32 %"add.157", ptr %"R17"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".3267" = load i32, ptr %"R4"
  %".3268" = load i1, ptr %"PT"
  %"cmp.28" = icmp sge i32 %".3267", 1
  %".3269" = and i1 %"cmp.28", %".3268"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".3271" = load i32, ptr %"R15"
  %".3272" = load i1, ptr %"PT"
  %"cmp.29" = icmp ne i32 %".3271", 0
  %".3273" = and i1 %"cmp.29", %".3272"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".3275" = load i32, ptr %"R17"
  %".3276" = load i1, ptr %"PT"
  %"cmp.30" = icmp sge i32 %".3275", %"Arg_8"
  %".3277" = and i1 %"cmp.30", %".3276"
  ; MOV R21, RZ
  %".3279" = load float, ptr %"RZ"
  %".3280" = bitcast ptr %"R21" to ptr
  store float %".3279", ptr %".3280"
  ; MOV R22, RZ
  %".3283" = load i32, ptr %"RZ"
  store i32 %".3283", ptr %"R22"
  ; MOV R56, RZ
  %".3286" = load float, ptr %"RZ"
  %".3287" = bitcast ptr %"R56" to ptr
  store float %".3286", ptr %".3287"
  ; MOV R44, RZ
  %".3290" = load float, ptr %"RZ"
  %".3291" = bitcast ptr %"R44" to ptr
  store float %".3290", ptr %".3291"
  ; @!P0 BRA `(.L_x_23)
  %".3294" = load i1, ptr %"P0"
  %".3295" = icmp eq i1 %".3294", 1
  br i1 %".3295", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R25"
  ; MOV R21, RZ
  %".3300" = load float, ptr %"RZ"
  %".3301" = bitcast ptr %"R21" to ptr
  store float %".3300", ptr %".3301"
  ; MOV R22, RZ
  %".3304" = load i32, ptr %"RZ"
  store i32 %".3304", ptr %"R22"
  ; MOV R12, R19
  %".3307" = load i32, ptr %"R19"
  store i32 %".3307", ptr %"R12"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".3310" = icmp ult i32 2, 64
  %"SHF_min.3" = select  i1 %".3310", i32 2, i32 64
  %".3311" = load i32, ptr %"R16"
  %".3312" = load i32, ptr %"R25"
  %"zext.329" = zext i32 %".3311" to i64
  %"zext.330" = zext i32 %".3312" to i64
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
  %".3318" = load i32, ptr %"R14"
  %".3319" = load i32, ptr %"R22"
  %"mul.52" = mul i32 %".3318", %"Arg_6"
  %"add.158" = add i32 %"mul.52", %".3319"
  store i32 %"add.158", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".3324" = load i32, ptr %"R13"
  %".3325" = load i32, ptr %"R22"
  %"mul.53" = mul i32 %".3324", %"Arg_6"
  %"add.159" = add i32 %"mul.53", %".3325"
  store i32 %"add.159", ptr %"R10"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".3328" = load i32, ptr %"R6"
  %".3329" = load i32, ptr %"R7"
  %"mul.54" = mul i32 %".3328", %".3329"
  %"add.160" = add i32 %"mul.54", %"Arg_4"
  store i32 %"add.160", ptr %"R4"
  ; LEA R6, R9, R6, 0x1
  %".3332" = load i32, ptr %"R9"
  %".3333" = load i32, ptr %"R6"
  %"shl.173" = shl i32 %".3332", 1
  %"add.161" = add i32 %"shl.173", %".3333"
  store i32 %"add.161", ptr %"R6"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".3336" = load i32, ptr %"R10"
  %".3337" = load i32, ptr %"R7"
  %"mul.55" = mul i32 %".3336", %".3337"
  %"add.162" = add i32 %"mul.55", %"Arg_2"
  store i32 %"add.162", ptr %"R10"
  ; LEA R8, P0, R25, R4, 0x2
  %".3340" = load i1, ptr %"P0"
  %".3341" = sub i1 0, %".3340"
  %".3342" = load i32, ptr %"R25"
  %".3343" = load i32, ptr %"R4"
  %".3344" = sext i1 %".3341" to i32
  %"shl.174" = shl i32 %".3344", %".3343"
  %"add.163" = add i32 %"shl.174", %".3342"
  store i32 %"add.163", ptr %"R8"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".3347" = load i32, ptr %"R6"
  %".3348" = load i32, ptr %"R7"
  %"mul.56" = mul i32 %".3347", %".3348"
  %"add.164" = add i32 %"mul.56", %"Arg_4"
  store i32 %"add.164", ptr %"R6"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".3351" = load i32, ptr %"R5"
  %".3352" = load i32, ptr %"R23"
  %".3353" = load i1, ptr %"P0"
  %".3354" = sub i1 0, %".3353"
  %".3355" = zext i1 %".3354" to i32
  %"add.165" = add i32 %".3351", %".3352"
  %"add.166" = add i32 %"add.165", 0
  %"add.167" = add i32 %"add.166", %".3355"
  store i32 %"add.167", ptr %"R9"
  ; LDG.E.SYS R35, [R4]
  %".3358" = load i32, ptr %"R4"
  %"zext.332" = zext i32 %".3358" to i64
  %".3359" = load i32, ptr %"R5"
  %"zext.333" = zext i32 %".3359" to i64
  %"shl.175" = shl i64 %"zext.333", 32
  %"or.164" = or i64 %"shl.175", %"zext.332"
  %".3360" = inttoptr i64 %"or.164" to ptr
  %".3361" = ptrtoint ptr %".3360" to i64
  %".3362" = add i64 %".3361", 0
  %"for_LDG.159" = inttoptr i64 %".3362" to ptr
  %".3363" = load float, ptr %"for_LDG.159"
  %".3364" = bitcast ptr %"R35" to ptr
  store float %".3363", ptr %".3364"
  ; LDG.E.SYS R24, [R10]
  %".3367" = load i32, ptr %"R10"
  %"zext.334" = zext i32 %".3367" to i64
  %".3368" = load i32, ptr %"R11"
  %"zext.335" = zext i32 %".3368" to i64
  %"shl.176" = shl i64 %"zext.335", 32
  %"or.165" = or i64 %"shl.176", %"zext.334"
  %".3369" = inttoptr i64 %"or.165" to ptr
  %".3370" = ptrtoint ptr %".3369" to i64
  %".3371" = add i64 %".3370", 0
  %"for_LDG.160" = inttoptr i64 %".3371" to ptr
  %".3372" = load float, ptr %"for_LDG.160"
  %".3373" = bitcast ptr %"R24" to ptr
  store float %".3372", ptr %".3373"
  ; LDG.E.SYS R37, [R8]
  %".3376" = load i32, ptr %"R8"
  %"zext.336" = zext i32 %".3376" to i64
  %".3377" = load i32, ptr %"R9"
  %"zext.337" = zext i32 %".3377" to i64
  %"shl.177" = shl i64 %"zext.337", 32
  %"or.166" = or i64 %"shl.177", %"zext.336"
  %".3378" = inttoptr i64 %"or.166" to ptr
  %".3379" = ptrtoint ptr %".3378" to i64
  %".3380" = add i64 %".3379", 0
  %"for_LDG.161" = inttoptr i64 %".3380" to ptr
  %".3381" = load float, ptr %"for_LDG.161"
  %".3382" = bitcast ptr %"R37" to ptr
  store float %".3381", ptr %".3382"
  ; LDG.E.SYS R34, [R6]
  %".3385" = load i32, ptr %"R6"
  %"zext.338" = zext i32 %".3385" to i64
  %".3386" = load i32, ptr %"R7"
  %"zext.339" = zext i32 %".3386" to i64
  %"shl.178" = shl i64 %"zext.339", 32
  %"or.167" = or i64 %"shl.178", %"zext.338"
  %".3387" = inttoptr i64 %"or.167" to ptr
  %".3388" = ptrtoint ptr %".3387" to i64
  %".3389" = add i64 %".3388", 0
  %"for_LDG.162" = inttoptr i64 %".3389" to ptr
  %".3390" = load float, ptr %"for_LDG.162"
  %".3391" = bitcast ptr %"R34" to ptr
  store float %".3390", ptr %".3391"
  ; LDG.E.SYS R36, [R4+0x4]
  %".3394" = load i32, ptr %"R4"
  %"zext.340" = zext i32 %".3394" to i64
  %".3395" = load i32, ptr %"R5"
  %"zext.341" = zext i32 %".3395" to i64
  %"shl.179" = shl i64 %"zext.341", 32
  %"or.168" = or i64 %"shl.179", %"zext.340"
  %".3396" = inttoptr i64 %"or.168" to ptr
  %".3397" = ptrtoint ptr %".3396" to i64
  %".3398" = add i64 %".3397", 4
  %"for_LDG.163" = inttoptr i64 %".3398" to ptr
  %".3399" = load float, ptr %"for_LDG.163"
  %".3400" = bitcast ptr %"R36" to ptr
  store float %".3399", ptr %".3400"
  ; LDG.E.SYS R38, [R10+0x4]
  %".3403" = load i32, ptr %"R10"
  %"zext.342" = zext i32 %".3403" to i64
  %".3404" = load i32, ptr %"R11"
  %"zext.343" = zext i32 %".3404" to i64
  %"shl.180" = shl i64 %"zext.343", 32
  %"or.169" = or i64 %"shl.180", %"zext.342"
  %".3405" = inttoptr i64 %"or.169" to ptr
  %".3406" = ptrtoint ptr %".3405" to i64
  %".3407" = add i64 %".3406", 4
  %"for_LDG.164" = inttoptr i64 %".3407" to ptr
  %".3408" = load float, ptr %"for_LDG.164"
  %".3409" = bitcast ptr %"R38" to ptr
  store float %".3408", ptr %".3409"
  ; LDG.E.SYS R39, [R8+0x4]
  %".3412" = load i32, ptr %"R8"
  %"zext.344" = zext i32 %".3412" to i64
  %".3413" = load i32, ptr %"R9"
  %"zext.345" = zext i32 %".3413" to i64
  %"shl.181" = shl i64 %"zext.345", 32
  %"or.170" = or i64 %"shl.181", %"zext.344"
  %".3414" = inttoptr i64 %"or.170" to ptr
  %".3415" = ptrtoint ptr %".3414" to i64
  %".3416" = add i64 %".3415", 4
  %"for_LDG.165" = inttoptr i64 %".3416" to ptr
  %".3417" = load float, ptr %"for_LDG.165"
  %".3418" = bitcast ptr %"R39" to ptr
  store float %".3417", ptr %".3418"
  ; LDG.E.SYS R41, [R6+0x4]
  %".3421" = load i32, ptr %"R6"
  %"zext.346" = zext i32 %".3421" to i64
  %".3422" = load i32, ptr %"R7"
  %"zext.347" = zext i32 %".3422" to i64
  %"shl.182" = shl i64 %"zext.347", 32
  %"or.171" = or i64 %"shl.182", %"zext.346"
  %".3423" = inttoptr i64 %"or.171" to ptr
  %".3424" = ptrtoint ptr %".3423" to i64
  %".3425" = add i64 %".3424", 4
  %"for_LDG.166" = inttoptr i64 %".3425" to ptr
  %".3426" = load float, ptr %"for_LDG.166"
  %".3427" = bitcast ptr %"R41" to ptr
  store float %".3426", ptr %".3427"
  ; LDG.E.SYS R42, [R10+0x8]
  %".3430" = load i32, ptr %"R10"
  %"zext.348" = zext i32 %".3430" to i64
  %".3431" = load i32, ptr %"R11"
  %"zext.349" = zext i32 %".3431" to i64
  %"shl.183" = shl i64 %"zext.349", 32
  %"or.172" = or i64 %"shl.183", %"zext.348"
  %".3432" = inttoptr i64 %"or.172" to ptr
  %".3433" = ptrtoint ptr %".3432" to i64
  %".3434" = add i64 %".3433", 8
  %"for_LDG.167" = inttoptr i64 %".3434" to ptr
  %".3435" = load float, ptr %"for_LDG.167"
  %".3436" = bitcast ptr %"R42" to ptr
  store float %".3435", ptr %".3436"
  ; LDG.E.SYS R40, [R4+0x8]
  %".3439" = load i32, ptr %"R4"
  %"zext.350" = zext i32 %".3439" to i64
  %".3440" = load i32, ptr %"R5"
  %"zext.351" = zext i32 %".3440" to i64
  %"shl.184" = shl i64 %"zext.351", 32
  %"or.173" = or i64 %"shl.184", %"zext.350"
  %".3441" = inttoptr i64 %"or.173" to ptr
  %".3442" = ptrtoint ptr %".3441" to i64
  %".3443" = add i64 %".3442", 8
  %"for_LDG.168" = inttoptr i64 %".3443" to ptr
  %".3444" = load float, ptr %"for_LDG.168"
  %".3445" = bitcast ptr %"R40" to ptr
  store float %".3444", ptr %".3445"
  ; LDG.E.SYS R43, [R8+0x8]
  %".3448" = load i32, ptr %"R8"
  %"zext.352" = zext i32 %".3448" to i64
  %".3449" = load i32, ptr %"R9"
  %"zext.353" = zext i32 %".3449" to i64
  %"shl.185" = shl i64 %"zext.353", 32
  %"or.174" = or i64 %"shl.185", %"zext.352"
  %".3450" = inttoptr i64 %"or.174" to ptr
  %".3451" = ptrtoint ptr %".3450" to i64
  %".3452" = add i64 %".3451", 8
  %"for_LDG.169" = inttoptr i64 %".3452" to ptr
  %".3453" = load float, ptr %"for_LDG.169"
  %".3454" = bitcast ptr %"R43" to ptr
  store float %".3453", ptr %".3454"
  ; LDG.E.SYS R45, [R6+0x8]
  %".3457" = load i32, ptr %"R6"
  %"zext.354" = zext i32 %".3457" to i64
  %".3458" = load i32, ptr %"R7"
  %"zext.355" = zext i32 %".3458" to i64
  %"shl.186" = shl i64 %"zext.355", 32
  %"or.175" = or i64 %"shl.186", %"zext.354"
  %".3459" = inttoptr i64 %"or.175" to ptr
  %".3460" = ptrtoint ptr %".3459" to i64
  %".3461" = add i64 %".3460", 8
  %"for_LDG.170" = inttoptr i64 %".3461" to ptr
  %".3462" = load float, ptr %"for_LDG.170"
  %".3463" = bitcast ptr %"R45" to ptr
  store float %".3462", ptr %".3463"
  ; LDG.E.SYS R47, [R10+0xc]
  %".3466" = load i32, ptr %"R10"
  %"zext.356" = zext i32 %".3466" to i64
  %".3467" = load i32, ptr %"R11"
  %"zext.357" = zext i32 %".3467" to i64
  %"shl.187" = shl i64 %"zext.357", 32
  %"or.176" = or i64 %"shl.187", %"zext.356"
  %".3468" = inttoptr i64 %"or.176" to ptr
  %".3469" = ptrtoint ptr %".3468" to i64
  %".3470" = add i64 %".3469", 12
  %"for_LDG.171" = inttoptr i64 %".3470" to ptr
  %".3471" = load float, ptr %"for_LDG.171"
  %".3472" = bitcast ptr %"R47" to ptr
  store float %".3471", ptr %".3472"
  ; LDG.E.SYS R46, [R4+0xc]
  %".3475" = load i32, ptr %"R4"
  %"zext.358" = zext i32 %".3475" to i64
  %".3476" = load i32, ptr %"R5"
  %"zext.359" = zext i32 %".3476" to i64
  %"shl.188" = shl i64 %"zext.359", 32
  %"or.177" = or i64 %"shl.188", %"zext.358"
  %".3477" = inttoptr i64 %"or.177" to ptr
  %".3478" = ptrtoint ptr %".3477" to i64
  %".3479" = add i64 %".3478", 12
  %"for_LDG.172" = inttoptr i64 %".3479" to ptr
  %".3480" = load float, ptr %"for_LDG.172"
  %".3481" = bitcast ptr %"R46" to ptr
  store float %".3480", ptr %".3481"
  ; LDG.E.SYS R50, [R8+0xc]
  %".3484" = load i32, ptr %"R8"
  %"zext.360" = zext i32 %".3484" to i64
  %".3485" = load i32, ptr %"R9"
  %"zext.361" = zext i32 %".3485" to i64
  %"shl.189" = shl i64 %"zext.361", 32
  %"or.178" = or i64 %"shl.189", %"zext.360"
  %".3486" = inttoptr i64 %"or.178" to ptr
  %".3487" = ptrtoint ptr %".3486" to i64
  %".3488" = add i64 %".3487", 12
  %"for_LDG.173" = inttoptr i64 %".3488" to ptr
  %".3489" = load float, ptr %"for_LDG.173"
  %".3490" = bitcast ptr %"R50" to ptr
  store float %".3489", ptr %".3490"
  ; LDG.E.SYS R51, [R6+0xc]
  %".3493" = load i32, ptr %"R6"
  %"zext.362" = zext i32 %".3493" to i64
  %".3494" = load i32, ptr %"R7"
  %"zext.363" = zext i32 %".3494" to i64
  %"shl.190" = shl i64 %"zext.363", 32
  %"or.179" = or i64 %"shl.190", %"zext.362"
  %".3495" = inttoptr i64 %"or.179" to ptr
  %".3496" = ptrtoint ptr %".3495" to i64
  %".3497" = add i64 %".3496", 12
  %"for_LDG.174" = inttoptr i64 %".3497" to ptr
  %".3498" = load float, ptr %"for_LDG.174"
  %".3499" = bitcast ptr %"R51" to ptr
  store float %".3498", ptr %".3499"
  ; IADD3 R12, R12, -0x4, RZ
  %".3502" = load i32, ptr %"R12"
  %"add.168" = add i32 %".3502", -4
  %"add.169" = add i32 %"add.168", 0
  store i32 %"add.169", ptr %"R12"
  ; IADD3 R22, R22, 0x4, RZ
  %".3505" = load i32, ptr %"R22"
  %"add.170" = add i32 %".3505", 4
  %"add.171" = add i32 %"add.170", 0
  store i32 %"add.171", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".3508" = load i32, ptr %"R12"
  %".3509" = load i1, ptr %"PT"
  %"cmp.31" = icmp ne i32 %".3508", 0
  %".3510" = and i1 %"cmp.31", %".3509"
  ; FFMA R35, R35, R24, R44
  %".3512" = load float, ptr %"R35"
  %".3513" = load float, ptr %"R24"
  %".3514" = load float, ptr %"R44"
  %"fmul.148" = fmul float %".3512", %".3513"
  %"fadd.123" = fadd float %"fmul.148", %".3514"
  %".3515" = bitcast ptr %"R35" to ptr
  store float %"fadd.123", ptr %".3515"
  ; FFMA R37, R24.reuse, R37, R56
  %".3518" = load float, ptr %"R24"
  %".3519" = load float, ptr %"R37"
  %".3520" = load float, ptr %"R56"
  %"fmul.149" = fmul float %".3518", %".3519"
  %"fadd.124" = fadd float %"fmul.149", %".3520"
  %".3521" = bitcast ptr %"R37" to ptr
  store float %"fadd.124", ptr %".3521"
  ; FFMA R34, R24, R34, R21
  %".3524" = load float, ptr %"R24"
  %".3525" = load float, ptr %"R34"
  %".3526" = load float, ptr %"R21"
  %"fmul.150" = fmul float %".3524", %".3525"
  %"fadd.125" = fadd float %"fmul.150", %".3526"
  %".3527" = bitcast ptr %"R34" to ptr
  store float %"fadd.125", ptr %".3527"
  ; FFMA R35, R36, R38, R35
  %".3530" = load float, ptr %"R36"
  %".3531" = load float, ptr %"R38"
  %".3532" = load float, ptr %"R35"
  %"fmul.151" = fmul float %".3530", %".3531"
  %"fadd.126" = fadd float %"fmul.151", %".3532"
  %".3533" = bitcast ptr %"R35" to ptr
  store float %"fadd.126", ptr %".3533"
  ; FFMA R37, R38, R39, R37
  %".3536" = load float, ptr %"R38"
  %".3537" = load float, ptr %"R39"
  %".3538" = load float, ptr %"R37"
  %"fmul.152" = fmul float %".3536", %".3537"
  %"fadd.127" = fadd float %"fmul.152", %".3538"
  %".3539" = bitcast ptr %"R37" to ptr
  store float %"fadd.127", ptr %".3539"
  ; FFMA R34, R38, R41, R34
  %".3542" = load float, ptr %"R38"
  %".3543" = load float, ptr %"R41"
  %".3544" = load float, ptr %"R34"
  %"fmul.153" = fmul float %".3542", %".3543"
  %"fadd.128" = fadd float %"fmul.153", %".3544"
  %".3545" = bitcast ptr %"R34" to ptr
  store float %"fadd.128", ptr %".3545"
  ; FFMA R35, R40, R42, R35
  %".3548" = load float, ptr %"R40"
  %".3549" = load float, ptr %"R42"
  %".3550" = load float, ptr %"R35"
  %"fmul.154" = fmul float %".3548", %".3549"
  %"fadd.129" = fadd float %"fmul.154", %".3550"
  %".3551" = bitcast ptr %"R35" to ptr
  store float %"fadd.129", ptr %".3551"
  ; FFMA R37, R42.reuse, R43, R37
  %".3554" = load float, ptr %"R42"
  %".3555" = load float, ptr %"R43"
  %".3556" = load float, ptr %"R37"
  %"fmul.155" = fmul float %".3554", %".3555"
  %"fadd.130" = fadd float %"fmul.155", %".3556"
  %".3557" = bitcast ptr %"R37" to ptr
  store float %"fadd.130", ptr %".3557"
  ; FFMA R34, R42, R45, R34
  %".3560" = load float, ptr %"R42"
  %".3561" = load float, ptr %"R45"
  %".3562" = load float, ptr %"R34"
  %"fmul.156" = fmul float %".3560", %".3561"
  %"fadd.131" = fadd float %"fmul.156", %".3562"
  %".3563" = bitcast ptr %"R34" to ptr
  store float %"fadd.131", ptr %".3563"
  ; FFMA R44, R46, R47, R35
  %".3566" = load float, ptr %"R46"
  %".3567" = load float, ptr %"R47"
  %".3568" = load float, ptr %"R35"
  %"fmul.157" = fmul float %".3566", %".3567"
  %"fadd.132" = fadd float %"fmul.157", %".3568"
  %".3569" = bitcast ptr %"R44" to ptr
  store float %"fadd.132", ptr %".3569"
  ; FFMA R56, R47, R50, R37
  %".3572" = load float, ptr %"R47"
  %".3573" = load float, ptr %"R50"
  %".3574" = load float, ptr %"R37"
  %"fmul.158" = fmul float %".3572", %".3573"
  %"fadd.133" = fadd float %"fmul.158", %".3574"
  %".3575" = bitcast ptr %"R56" to ptr
  store float %"fadd.133", ptr %".3575"
  ; FFMA R21, R47, R51, R34
  %".3578" = load float, ptr %"R47"
  %".3579" = load float, ptr %"R51"
  %".3580" = load float, ptr %"R34"
  %"fmul.159" = fmul float %".3578", %".3579"
  %"fadd.134" = fadd float %"fmul.159", %".3580"
  %".3581" = bitcast ptr %"R21" to ptr
  store float %"fadd.134", ptr %".3581"
  ; @P0 BRA `(.L_x_24)
  %".3584" = load i1, ptr %"P0"
  %".3585" = icmp ne i1 %".3584", 1
  br i1 %".3585", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".3588" = load i1, ptr %"P1"
  %".3589" = icmp eq i1 %".3588", 1
  br i1 %".3589", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  %".3594" = load i32, ptr %"R14"
  %".3595" = load i32, ptr %"R22"
  %"mul.57" = mul i32 %".3594", %"Arg_6"
  %"add.172" = add i32 %"mul.57", %".3595"
  store i32 %"add.172", ptr %"R7"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R10"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".3600" = load i32, ptr %"R13"
  %".3601" = load i32, ptr %"R22"
  %"mul.58" = mul i32 %".3600", %"Arg_6"
  %"add.173" = add i32 %"mul.58", %".3601"
  store i32 %"add.173", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".3606" = load i32, ptr %"R7"
  %".3607" = load i32, ptr %"R11"
  %"mul.59" = mul i32 %".3606", %".3607"
  %"add.174" = add i32 %"mul.59", %"Arg_4"
  store i32 %"add.174", ptr %"R4"
  ; LEA R10, R10, R7, 0x1
  %".3610" = load i32, ptr %"R10"
  %".3611" = load i32, ptr %"R7"
  %"shl.191" = shl i32 %".3610", 1
  %"add.175" = add i32 %"shl.191", %".3611"
  store i32 %"add.175", ptr %"R10"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".3614" = load i32, ptr %"R6"
  %".3615" = load i32, ptr %"R11"
  %"mul.60" = mul i32 %".3614", %".3615"
  %"add.176" = add i32 %"mul.60", %"Arg_2"
  store i32 %"add.176", ptr %"R6"
  ; LEA R8, P0, R9, R4, 0x2
  %".3618" = load i1, ptr %"P0"
  %".3619" = sub i1 0, %".3618"
  %".3620" = load i32, ptr %"R9"
  %".3621" = load i32, ptr %"R4"
  %".3622" = sext i1 %".3619" to i32
  %"shl.192" = shl i32 %".3622", %".3621"
  %"add.177" = add i32 %"shl.192", %".3620"
  store i32 %"add.177", ptr %"R8"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".3625" = load i32, ptr %"R10"
  %".3626" = load i32, ptr %"R11"
  %"mul.61" = mul i32 %".3625", %".3626"
  %"add.178" = add i32 %"mul.61", %"Arg_4"
  store i32 %"add.178", ptr %"R10"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".3629" = load i32, ptr %"R9"
  %".3630" = load i32, ptr %"R5"
  %".3631" = load i32, ptr %"R16"
  %"shl.193" = shl i32 %".3629", %".3631"
  %"add.179" = add i32 %"shl.193", %".3630"
  store i32 %"add.179", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".3634" = load i32, ptr %"R4"
  %"zext.364" = zext i32 %".3634" to i64
  %".3635" = load i32, ptr %"R5"
  %"zext.365" = zext i32 %".3635" to i64
  %"shl.194" = shl i64 %"zext.365", 32
  %"or.180" = or i64 %"shl.194", %"zext.364"
  %".3636" = inttoptr i64 %"or.180" to ptr
  %".3637" = ptrtoint ptr %".3636" to i64
  %".3638" = add i64 %".3637", 0
  %"for_LDG.175" = inttoptr i64 %".3638" to ptr
  %".3639" = load float, ptr %"for_LDG.175"
  %".3640" = bitcast ptr %"R13" to ptr
  store float %".3639", ptr %".3640"
  ; LDG.E.SYS R12, [R6]
  %".3643" = load i32, ptr %"R6"
  %"zext.366" = zext i32 %".3643" to i64
  %".3644" = load i32, ptr %"R7"
  %"zext.367" = zext i32 %".3644" to i64
  %"shl.195" = shl i64 %"zext.367", 32
  %"or.181" = or i64 %"shl.195", %"zext.366"
  %".3645" = inttoptr i64 %"or.181" to ptr
  %".3646" = ptrtoint ptr %".3645" to i64
  %".3647" = add i64 %".3646", 0
  %"for_LDG.176" = inttoptr i64 %".3647" to ptr
  %".3648" = load float, ptr %"for_LDG.176"
  %".3649" = bitcast ptr %"R12" to ptr
  store float %".3648", ptr %".3649"
  ; LDG.E.SYS R23, [R8]
  %".3652" = load i32, ptr %"R8"
  %"zext.368" = zext i32 %".3652" to i64
  %".3653" = load i32, ptr %"R9"
  %"zext.369" = zext i32 %".3653" to i64
  %"shl.196" = shl i64 %"zext.369", 32
  %"or.182" = or i64 %"shl.196", %"zext.368"
  %".3654" = inttoptr i64 %"or.182" to ptr
  %".3655" = ptrtoint ptr %".3654" to i64
  %".3656" = add i64 %".3655", 0
  %"for_LDG.177" = inttoptr i64 %".3656" to ptr
  %".3657" = load float, ptr %"for_LDG.177"
  %".3658" = bitcast ptr %"R23" to ptr
  store float %".3657", ptr %".3658"
  ; LDG.E.SYS R22, [R10]
  %".3661" = load i32, ptr %"R10"
  %"zext.370" = zext i32 %".3661" to i64
  %".3662" = load i32, ptr %"R11"
  %"zext.371" = zext i32 %".3662" to i64
  %"shl.197" = shl i64 %"zext.371", 32
  %"or.183" = or i64 %"shl.197", %"zext.370"
  %".3663" = inttoptr i64 %"or.183" to ptr
  %".3664" = ptrtoint ptr %".3663" to i64
  %".3665" = add i64 %".3664", 0
  %"for_LDG.178" = inttoptr i64 %".3665" to ptr
  %".3666" = load float, ptr %"for_LDG.178"
  %".3667" = bitcast ptr %"R22" to ptr
  store float %".3666", ptr %".3667"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".3670" = load i32, ptr %"R15"
  %".3671" = load i1, ptr %"PT"
  %"cmp.32" = icmp ne i32 %".3670", 1
  %".3672" = and i1 %"cmp.32", %".3671"
  ; FFMA R44, R13, R12, R44
  %".3674" = load float, ptr %"R13"
  %".3675" = load float, ptr %"R12"
  %".3676" = load float, ptr %"R44"
  %"fmul.160" = fmul float %".3674", %".3675"
  %"fadd.135" = fadd float %"fmul.160", %".3676"
  %".3677" = bitcast ptr %"R44" to ptr
  store float %"fadd.135", ptr %".3677"
  ; FFMA R56, R12.reuse, R23, R56
  %".3680" = load float, ptr %"R12"
  %".3681" = load float, ptr %"R23"
  %".3682" = load float, ptr %"R56"
  %"fmul.161" = fmul float %".3680", %".3681"
  %"fadd.136" = fadd float %"fmul.161", %".3682"
  %".3683" = bitcast ptr %"R56" to ptr
  store float %"fadd.136", ptr %".3683"
  ; FFMA R21, R12, R22, R21
  %".3686" = load float, ptr %"R12"
  %".3687" = load float, ptr %"R22"
  %".3688" = load float, ptr %"R21"
  %"fmul.162" = fmul float %".3686", %".3687"
  %"fadd.137" = fadd float %"fmul.162", %".3688"
  %".3689" = bitcast ptr %"R21" to ptr
  store float %"fadd.137", ptr %".3689"
  ; @!P0 BRA `(.L_x_25)
  %".3692" = load i1, ptr %"P0"
  %".3693" = icmp eq i1 %".3692", 1
  br i1 %".3693", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".3696" = load i32, ptr %"R15"
  %".3697" = load i1, ptr %"PT"
  %"cmp.33" = icmp ne i32 %".3696", 2
  %".3698" = and i1 %"cmp.33", %".3697"
  ; LDG.E.SYS R13, [R4+0x4]
  %".3700" = load i32, ptr %"R4"
  %"zext.372" = zext i32 %".3700" to i64
  %".3701" = load i32, ptr %"R5"
  %"zext.373" = zext i32 %".3701" to i64
  %"shl.198" = shl i64 %"zext.373", 32
  %"or.184" = or i64 %"shl.198", %"zext.372"
  %".3702" = inttoptr i64 %"or.184" to ptr
  %".3703" = ptrtoint ptr %".3702" to i64
  %".3704" = add i64 %".3703", 4
  %"for_LDG.179" = inttoptr i64 %".3704" to ptr
  %".3705" = load float, ptr %"for_LDG.179"
  %".3706" = bitcast ptr %"R13" to ptr
  store float %".3705", ptr %".3706"
  ; LDG.E.SYS R12, [R6+0x4]
  %".3709" = load i32, ptr %"R6"
  %"zext.374" = zext i32 %".3709" to i64
  %".3710" = load i32, ptr %"R7"
  %"zext.375" = zext i32 %".3710" to i64
  %"shl.199" = shl i64 %"zext.375", 32
  %"or.185" = or i64 %"shl.199", %"zext.374"
  %".3711" = inttoptr i64 %"or.185" to ptr
  %".3712" = ptrtoint ptr %".3711" to i64
  %".3713" = add i64 %".3712", 4
  %"for_LDG.180" = inttoptr i64 %".3713" to ptr
  %".3714" = load float, ptr %"for_LDG.180"
  %".3715" = bitcast ptr %"R12" to ptr
  store float %".3714", ptr %".3715"
  ; LDG.E.SYS R23, [R8+0x4]
  %".3718" = load i32, ptr %"R8"
  %"zext.376" = zext i32 %".3718" to i64
  %".3719" = load i32, ptr %"R9"
  %"zext.377" = zext i32 %".3719" to i64
  %"shl.200" = shl i64 %"zext.377", 32
  %"or.186" = or i64 %"shl.200", %"zext.376"
  %".3720" = inttoptr i64 %"or.186" to ptr
  %".3721" = ptrtoint ptr %".3720" to i64
  %".3722" = add i64 %".3721", 4
  %"for_LDG.181" = inttoptr i64 %".3722" to ptr
  %".3723" = load float, ptr %"for_LDG.181"
  %".3724" = bitcast ptr %"R23" to ptr
  store float %".3723", ptr %".3724"
  ; LDG.E.SYS R22, [R10+0x4]
  %".3727" = load i32, ptr %"R10"
  %"zext.378" = zext i32 %".3727" to i64
  %".3728" = load i32, ptr %"R11"
  %"zext.379" = zext i32 %".3728" to i64
  %"shl.201" = shl i64 %"zext.379", 32
  %"or.187" = or i64 %"shl.201", %"zext.378"
  %".3729" = inttoptr i64 %"or.187" to ptr
  %".3730" = ptrtoint ptr %".3729" to i64
  %".3731" = add i64 %".3730", 4
  %"for_LDG.182" = inttoptr i64 %".3731" to ptr
  %".3732" = load float, ptr %"for_LDG.182"
  %".3733" = bitcast ptr %"R22" to ptr
  store float %".3732", ptr %".3733"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".3736" = load i1, ptr %"P0"
  %".3737" = icmp ne i1 %".3736", 1
  br i1 %".3737", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  %".3740" = load i32, ptr %"R4"
  %"zext.380" = zext i32 %".3740" to i64
  %".3741" = load i32, ptr %"R5"
  %"zext.381" = zext i32 %".3741" to i64
  %"shl.202" = shl i64 %"zext.381", 32
  %"or.188" = or i64 %"shl.202", %"zext.380"
  %".3742" = inttoptr i64 %"or.188" to ptr
  %".3743" = ptrtoint ptr %".3742" to i64
  %".3744" = add i64 %".3743", 8
  %"for_LDG.183" = inttoptr i64 %".3744" to ptr
  %".3745" = load float, ptr %"for_LDG.183"
  %".3746" = bitcast ptr %"R25" to ptr
  store float %".3745", ptr %".3746"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".3751" = load i1, ptr %"P0"
  %".3752" = icmp ne i1 %".3751", 1
  br i1 %".3752", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  %".3755" = load i32, ptr %"R6"
  %"zext.382" = zext i32 %".3755" to i64
  %".3756" = load i32, ptr %"R7"
  %"zext.383" = zext i32 %".3756" to i64
  %"shl.203" = shl i64 %"zext.383", 32
  %"or.189" = or i64 %"shl.203", %"zext.382"
  %".3757" = inttoptr i64 %"or.189" to ptr
  %".3758" = ptrtoint ptr %".3757" to i64
  %".3759" = add i64 %".3758", 8
  %"for_LDG.184" = inttoptr i64 %".3759" to ptr
  %".3760" = load float, ptr %"for_LDG.184"
  %".3761" = bitcast ptr %"R24" to ptr
  store float %".3760", ptr %".3761"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".3766" = load i1, ptr %"P0"
  %".3767" = icmp ne i1 %".3766", 1
  br i1 %".3767", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  %".3770" = load i32, ptr %"R8"
  %"zext.384" = zext i32 %".3770" to i64
  %".3771" = load i32, ptr %"R9"
  %"zext.385" = zext i32 %".3771" to i64
  %"shl.204" = shl i64 %"zext.385", 32
  %"or.190" = or i64 %"shl.204", %"zext.384"
  %".3772" = inttoptr i64 %"or.190" to ptr
  %".3773" = ptrtoint ptr %".3772" to i64
  %".3774" = add i64 %".3773", 8
  %"for_LDG.185" = inttoptr i64 %".3774" to ptr
  %".3775" = load float, ptr %"for_LDG.185"
  %".3776" = bitcast ptr %"R35" to ptr
  store float %".3775", ptr %".3776"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".3781" = load i1, ptr %"P0"
  %".3782" = icmp ne i1 %".3781", 1
  br i1 %".3782", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  %".3785" = load i32, ptr %"R10"
  %"zext.386" = zext i32 %".3785" to i64
  %".3786" = load i32, ptr %"R11"
  %"zext.387" = zext i32 %".3786" to i64
  %"shl.205" = shl i64 %"zext.387", 32
  %"or.191" = or i64 %"shl.205", %"zext.386"
  %".3787" = inttoptr i64 %"or.191" to ptr
  %".3788" = ptrtoint ptr %".3787" to i64
  %".3789" = add i64 %".3788", 8
  %"for_LDG.186" = inttoptr i64 %".3789" to ptr
  %".3790" = load float, ptr %"for_LDG.186"
  %".3791" = bitcast ptr %"R34" to ptr
  store float %".3790", ptr %".3791"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".3796" = load float, ptr %"R13"
  %".3797" = load float, ptr %"R12"
  %".3798" = load float, ptr %"R44"
  %"fmul.163" = fmul float %".3796", %".3797"
  %"fadd.138" = fadd float %"fmul.163", %".3798"
  %".3799" = bitcast ptr %"R44" to ptr
  store float %"fadd.138", ptr %".3799"
  ; FFMA R56, R12.reuse, R23, R56
  %".3802" = load float, ptr %"R12"
  %".3803" = load float, ptr %"R23"
  %".3804" = load float, ptr %"R56"
  %"fmul.164" = fmul float %".3802", %".3803"
  %"fadd.139" = fadd float %"fmul.164", %".3804"
  %".3805" = bitcast ptr %"R56" to ptr
  store float %"fadd.139", ptr %".3805"
  ; FFMA R21, R12, R22, R21
  %".3808" = load float, ptr %"R12"
  %".3809" = load float, ptr %"R22"
  %".3810" = load float, ptr %"R21"
  %"fmul.165" = fmul float %".3808", %".3809"
  %"fadd.140" = fadd float %"fmul.165", %".3810"
  %".3811" = bitcast ptr %"R21" to ptr
  store float %"fadd.140", ptr %".3811"
  ; @P0 FFMA R44, R25, R24, R44
  %".3814" = load i1, ptr %"P0"
  %".3815" = icmp ne i1 %".3814", 1
  br i1 %".3815", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".3818" = load float, ptr %"R25"
  %".3819" = load float, ptr %"R24"
  %".3820" = load float, ptr %"R44"
  %"fmul.166" = fmul float %".3818", %".3819"
  %"fadd.141" = fadd float %"fmul.166", %".3820"
  %".3821" = bitcast ptr %"R44" to ptr
  store float %"fadd.141", ptr %".3821"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".3826" = load i1, ptr %"P0"
  %".3827" = icmp ne i1 %".3826", 1
  br i1 %".3827", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".3830" = load float, ptr %"R24"
  %".3831" = load float, ptr %"R35"
  %".3832" = load float, ptr %"R56"
  %"fmul.167" = fmul float %".3830", %".3831"
  %"fadd.142" = fadd float %"fmul.167", %".3832"
  %".3833" = bitcast ptr %"R56" to ptr
  store float %"fadd.142", ptr %".3833"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".3838" = load i1, ptr %"P0"
  %".3839" = icmp ne i1 %".3838", 1
  br i1 %".3839", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".3842" = load float, ptr %"R24"
  %".3843" = load float, ptr %"R34"
  %".3844" = load float, ptr %"R21"
  %"fmul.168" = fmul float %".3842", %".3843"
  %"fadd.143" = fadd float %"fmul.168", %".3844"
  %".3845" = bitcast ptr %"R21" to ptr
  store float %"fadd.143", ptr %".3845"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".3850" = load i1, ptr %"P4"
  %".3851" = icmp eq i1 %".3850", 1
  br i1 %".3851", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".3854" = load i32, ptr %"R18"
  %".3855" = load i1, ptr %"PT"
  %"cmp.34" = icmp sge i32 %".3854", 3
  %".3856" = and i1 %"cmp.34", %".3855"
  ; MOV R23, RZ
  %".3858" = load i32, ptr %"RZ"
  store i32 %".3858", ptr %"R23"
  ; @!P0 BRA `(.L_x_27)
  %".3861" = load i1, ptr %"P0"
  %".3862" = icmp eq i1 %".3861", 1
  br i1 %".3862", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".3865" = load i32, ptr %"R20"
  %".3866" = load i1, ptr %"PT"
  %"cmp.35" = icmp sgt i32 %".3865", 0
  %".3867" = and i1 %"cmp.35", %".3866"
  ; MOV R23, RZ
  %".3869" = load i32, ptr %"RZ"
  store i32 %".3869", ptr %"R23"
  ; MOV R22, R20
  %".3872" = load i32, ptr %"R20"
  store i32 %".3872", ptr %"R22"
  ; @!P0 BRA `(.L_x_28)
  %".3875" = load i1, ptr %"P0"
  %".3876" = icmp eq i1 %".3875", 1
  br i1 %".3876", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".3879" = load i32, ptr %"R22"
  %".3880" = load i1, ptr %"PT"
  %"cmp.36" = icmp sgt i32 %".3879", 12
  %".3881" = and i1 %"cmp.36", %".3880"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".3883" = and i1 1, 1
  %".3884" = or i1 %".3883", 1
  ; @!P1 BRA `(.L_x_29)
  %".3886" = load i1, ptr %"P1"
  %".3887" = icmp eq i1 %".3886", 1
  br i1 %".3887", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3890" = xor i1 1, 1
  %".3891" = and i1 %".3890", 1
  %".3892" = and i1 %".3891", 1
  br label %".L_x_30"
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".3895" = load i32, ptr %"R0"
  %".3896" = load i32, ptr %"R23"
  %"add.180" = add i32 %".3895", %".3896"
  %"add.181" = add i32 %"add.180", 0
  store i32 %"add.181", ptr %"R25"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".3901" = load i32, ptr %"R2"
  %".3902" = load i32, ptr %"R25"
  %"mul.62" = mul i32 %".3901", 3
  %"add.182" = add i32 %"mul.62", %".3902"
  store i32 %"add.182", ptr %"R35"
  ; LEA R25, R2, R25, 0x2
  %".3905" = load i32, ptr %"R2"
  %".3906" = load i32, ptr %"R25"
  %"shl.206" = shl i32 %".3905", 2
  %"add.183" = add i32 %"shl.206", %".3906"
  store i32 %"add.183", ptr %"R25"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".3909" = load i32, ptr %"R23"
  %".3910" = load i32, ptr %"R24"
  %"mul.63" = mul i32 %".3909", %".3910"
  %"add.184" = add i32 %"mul.63", %"Arg_3"
  store i32 %"add.184", ptr %"R36"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".3913" = load i32, ptr %"R35"
  %".3914" = load i32, ptr %"R24"
  %"mul.64" = mul i32 %".3913", %".3914"
  %"add.185" = add i32 %"mul.64", %"Arg_4"
  store i32 %"add.185", ptr %"R8"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".3917" = load i32, ptr %"R25"
  %".3918" = load i32, ptr %"R24"
  %"mul.65" = mul i32 %".3917", %".3918"
  %"add.186" = add i32 %"mul.65", %"Arg_4"
  store i32 %"add.186", ptr %"R12"
  ; LDG.E.SYS R39, [R36]
  %".3921" = load i32, ptr %"R36"
  %"zext.388" = zext i32 %".3921" to i64
  %".3922" = load i32, ptr %"R37"
  %"zext.389" = zext i32 %".3922" to i64
  %"shl.207" = shl i64 %"zext.389", 32
  %"or.192" = or i64 %"shl.207", %"zext.388"
  %".3923" = inttoptr i64 %"or.192" to ptr
  %".3924" = ptrtoint ptr %".3923" to i64
  %".3925" = add i64 %".3924", 0
  %"for_LDG.187" = inttoptr i64 %".3925" to ptr
  %".3926" = load float, ptr %"for_LDG.187"
  %".3927" = bitcast ptr %"R39" to ptr
  store float %".3926", ptr %".3927"
  ; LDG.E.SYS R41, [R8]
  %".3930" = load i32, ptr %"R8"
  %"zext.390" = zext i32 %".3930" to i64
  %".3931" = load i32, ptr %"R9"
  %"zext.391" = zext i32 %".3931" to i64
  %"shl.208" = shl i64 %"zext.391", 32
  %"or.193" = or i64 %"shl.208", %"zext.390"
  %".3932" = inttoptr i64 %"or.193" to ptr
  %".3933" = ptrtoint ptr %".3932" to i64
  %".3934" = add i64 %".3933", 0
  %"for_LDG.188" = inttoptr i64 %".3934" to ptr
  %".3935" = load float, ptr %"for_LDG.188"
  %".3936" = bitcast ptr %"R41" to ptr
  store float %".3935", ptr %".3936"
  ; LDG.E.SYS R40, [R12]
  %".3939" = load i32, ptr %"R12"
  %"zext.392" = zext i32 %".3939" to i64
  %".3940" = load i32, ptr %"R13"
  %"zext.393" = zext i32 %".3940" to i64
  %"shl.209" = shl i64 %"zext.393", 32
  %"or.194" = or i64 %"shl.209", %"zext.392"
  %".3941" = inttoptr i64 %"or.194" to ptr
  %".3942" = ptrtoint ptr %".3941" to i64
  %".3943" = add i64 %".3942", 0
  %"for_LDG.189" = inttoptr i64 %".3943" to ptr
  %".3944" = load float, ptr %"for_LDG.189"
  %".3945" = bitcast ptr %"R40" to ptr
  store float %".3944", ptr %".3945"
  ; LDG.E.SYS R52, [R36+0x4]
  %".3948" = load i32, ptr %"R36"
  %"zext.394" = zext i32 %".3948" to i64
  %".3949" = load i32, ptr %"R37"
  %"zext.395" = zext i32 %".3949" to i64
  %"shl.210" = shl i64 %"zext.395", 32
  %"or.195" = or i64 %"shl.210", %"zext.394"
  %".3950" = inttoptr i64 %"or.195" to ptr
  %".3951" = ptrtoint ptr %".3950" to i64
  %".3952" = add i64 %".3951", 4
  %"for_LDG.190" = inttoptr i64 %".3952" to ptr
  %".3953" = load float, ptr %"for_LDG.190"
  %".3954" = bitcast ptr %"R52" to ptr
  store float %".3953", ptr %".3954"
  ; LDG.E.SYS R53, [R8+0x4]
  %".3957" = load i32, ptr %"R8"
  %"zext.396" = zext i32 %".3957" to i64
  %".3958" = load i32, ptr %"R9"
  %"zext.397" = zext i32 %".3958" to i64
  %"shl.211" = shl i64 %"zext.397", 32
  %"or.196" = or i64 %"shl.211", %"zext.396"
  %".3959" = inttoptr i64 %"or.196" to ptr
  %".3960" = ptrtoint ptr %".3959" to i64
  %".3961" = add i64 %".3960", 4
  %"for_LDG.191" = inttoptr i64 %".3961" to ptr
  %".3962" = load float, ptr %"for_LDG.191"
  %".3963" = bitcast ptr %"R53" to ptr
  store float %".3962", ptr %".3963"
  ; LDG.E.SYS R55, [R12+0x4]
  %".3966" = load i32, ptr %"R12"
  %"zext.398" = zext i32 %".3966" to i64
  %".3967" = load i32, ptr %"R13"
  %"zext.399" = zext i32 %".3967" to i64
  %"shl.212" = shl i64 %"zext.399", 32
  %"or.197" = or i64 %"shl.212", %"zext.398"
  %".3968" = inttoptr i64 %"or.197" to ptr
  %".3969" = ptrtoint ptr %".3968" to i64
  %".3970" = add i64 %".3969", 4
  %"for_LDG.192" = inttoptr i64 %".3970" to ptr
  %".3971" = load float, ptr %"for_LDG.192"
  %".3972" = bitcast ptr %"R55" to ptr
  store float %".3971", ptr %".3972"
  ; IADD3 R11, R23, 0x4, RZ
  %".3975" = load i32, ptr %"R23"
  %"add.187" = add i32 %".3975", 4
  %"add.188" = add i32 %"add.187", 0
  store i32 %"add.188", ptr %"R11"
  ; LDG.E.SYS R50, [R36+0x8]
  %".3978" = load i32, ptr %"R36"
  %"zext.400" = zext i32 %".3978" to i64
  %".3979" = load i32, ptr %"R37"
  %"zext.401" = zext i32 %".3979" to i64
  %"shl.213" = shl i64 %"zext.401", 32
  %"or.198" = or i64 %"shl.213", %"zext.400"
  %".3980" = inttoptr i64 %"or.198" to ptr
  %".3981" = ptrtoint ptr %".3980" to i64
  %".3982" = add i64 %".3981", 8
  %"for_LDG.193" = inttoptr i64 %".3982" to ptr
  %".3983" = load float, ptr %"for_LDG.193"
  %".3984" = bitcast ptr %"R50" to ptr
  store float %".3983", ptr %".3984"
  ; IADD3 R7, R35, 0x4, RZ
  %".3987" = load i32, ptr %"R35"
  %"add.189" = add i32 %".3987", 4
  %"add.190" = add i32 %"add.189", 0
  store i32 %"add.190", ptr %"R7"
  ; LDG.E.SYS R43, [R8+0x8]
  %".3990" = load i32, ptr %"R8"
  %"zext.402" = zext i32 %".3990" to i64
  %".3991" = load i32, ptr %"R9"
  %"zext.403" = zext i32 %".3991" to i64
  %"shl.214" = shl i64 %"zext.403", 32
  %"or.199" = or i64 %"shl.214", %"zext.402"
  %".3992" = inttoptr i64 %"or.199" to ptr
  %".3993" = ptrtoint ptr %".3992" to i64
  %".3994" = add i64 %".3993", 8
  %"for_LDG.194" = inttoptr i64 %".3994" to ptr
  %".3995" = load float, ptr %"for_LDG.194"
  %".3996" = bitcast ptr %"R43" to ptr
  store float %".3995", ptr %".3996"
  ; IADD3 R5, R25, 0x4, RZ
  %".3999" = load i32, ptr %"R25"
  %"add.191" = add i32 %".3999", 4
  %"add.192" = add i32 %"add.191", 0
  store i32 %"add.192", ptr %"R5"
  ; LDG.E.SYS R51, [R12+0x8]
  %".4002" = load i32, ptr %"R12"
  %"zext.404" = zext i32 %".4002" to i64
  %".4003" = load i32, ptr %"R13"
  %"zext.405" = zext i32 %".4003" to i64
  %"shl.215" = shl i64 %"zext.405", 32
  %"or.200" = or i64 %"shl.215", %"zext.404"
  %".4004" = inttoptr i64 %"or.200" to ptr
  %".4005" = ptrtoint ptr %".4004" to i64
  %".4006" = add i64 %".4005", 8
  %"for_LDG.195" = inttoptr i64 %".4006" to ptr
  %".4007" = load float, ptr %"for_LDG.195"
  %".4008" = bitcast ptr %"R51" to ptr
  store float %".4007", ptr %".4008"
  ; LDG.E.SYS R47, [R36+0xc]
  %".4011" = load i32, ptr %"R36"
  %"zext.406" = zext i32 %".4011" to i64
  %".4012" = load i32, ptr %"R37"
  %"zext.407" = zext i32 %".4012" to i64
  %"shl.216" = shl i64 %"zext.407", 32
  %"or.201" = or i64 %"shl.216", %"zext.406"
  %".4013" = inttoptr i64 %"or.201" to ptr
  %".4014" = ptrtoint ptr %".4013" to i64
  %".4015" = add i64 %".4014", 12
  %"for_LDG.196" = inttoptr i64 %".4015" to ptr
  %".4016" = load float, ptr %"for_LDG.196"
  %".4017" = bitcast ptr %"R47" to ptr
  store float %".4016", ptr %".4017"
  ; LDG.E.SYS R54, [R8+0xc]
  %".4020" = load i32, ptr %"R8"
  %"zext.408" = zext i32 %".4020" to i64
  %".4021" = load i32, ptr %"R9"
  %"zext.409" = zext i32 %".4021" to i64
  %"shl.217" = shl i64 %"zext.409", 32
  %"or.202" = or i64 %"shl.217", %"zext.408"
  %".4022" = inttoptr i64 %"or.202" to ptr
  %".4023" = ptrtoint ptr %".4022" to i64
  %".4024" = add i64 %".4023", 12
  %"for_LDG.197" = inttoptr i64 %".4024" to ptr
  %".4025" = load float, ptr %"for_LDG.197"
  %".4026" = bitcast ptr %"R54" to ptr
  store float %".4025", ptr %".4026"
  ; LDG.E.SYS R58, [R12+0xc]
  %".4029" = load i32, ptr %"R12"
  %"zext.410" = zext i32 %".4029" to i64
  %".4030" = load i32, ptr %"R13"
  %"zext.411" = zext i32 %".4030" to i64
  %"shl.218" = shl i64 %"zext.411", 32
  %"or.203" = or i64 %"shl.218", %"zext.410"
  %".4031" = inttoptr i64 %"or.203" to ptr
  %".4032" = ptrtoint ptr %".4031" to i64
  %".4033" = add i64 %".4032", 12
  %"for_LDG.198" = inttoptr i64 %".4033" to ptr
  %".4034" = load float, ptr %"for_LDG.198"
  %".4035" = bitcast ptr %"R58" to ptr
  store float %".4034", ptr %".4035"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".4038" = load i32, ptr %"R11"
  %".4039" = load i32, ptr %"R24"
  %"mul.66" = mul i32 %".4038", %".4039"
  %"add.193" = add i32 %"mul.66", %"Arg_3"
  store i32 %"add.193", ptr %"R10"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".4042" = load i32, ptr %"R7"
  %".4043" = load i32, ptr %"R24"
  %"mul.67" = mul i32 %".4042", %".4043"
  %"add.194" = add i32 %"mul.67", %"Arg_4"
  store i32 %"add.194", ptr %"R6"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".4046" = load i32, ptr %"R5"
  %".4047" = load i32, ptr %"R24"
  %"mul.68" = mul i32 %".4046", %".4047"
  %"add.195" = add i32 %"mul.68", %"Arg_4"
  store i32 %"add.195", ptr %"R4"
  ; LDG.E.SYS R46, [R10]
  %".4050" = load i32, ptr %"R10"
  %"zext.412" = zext i32 %".4050" to i64
  %".4051" = load i32, ptr %"R11"
  %"zext.413" = zext i32 %".4051" to i64
  %"shl.219" = shl i64 %"zext.413", 32
  %"or.204" = or i64 %"shl.219", %"zext.412"
  %".4052" = inttoptr i64 %"or.204" to ptr
  %".4053" = ptrtoint ptr %".4052" to i64
  %".4054" = add i64 %".4053", 0
  %"for_LDG.199" = inttoptr i64 %".4054" to ptr
  %".4055" = load float, ptr %"for_LDG.199"
  %".4056" = bitcast ptr %"R46" to ptr
  store float %".4055", ptr %".4056"
  ; LDG.E.SYS R42, [R6]
  %".4059" = load i32, ptr %"R6"
  %"zext.414" = zext i32 %".4059" to i64
  %".4060" = load i32, ptr %"R7"
  %"zext.415" = zext i32 %".4060" to i64
  %"shl.220" = shl i64 %"zext.415", 32
  %"or.205" = or i64 %"shl.220", %"zext.414"
  %".4061" = inttoptr i64 %"or.205" to ptr
  %".4062" = ptrtoint ptr %".4061" to i64
  %".4063" = add i64 %".4062", 0
  %"for_LDG.200" = inttoptr i64 %".4063" to ptr
  %".4064" = load float, ptr %"for_LDG.200"
  %".4065" = bitcast ptr %"R42" to ptr
  store float %".4064", ptr %".4065"
  ; LDG.E.SYS R45, [R4]
  %".4068" = load i32, ptr %"R4"
  %"zext.416" = zext i32 %".4068" to i64
  %".4069" = load i32, ptr %"R5"
  %"zext.417" = zext i32 %".4069" to i64
  %"shl.221" = shl i64 %"zext.417", 32
  %"or.206" = or i64 %"shl.221", %"zext.416"
  %".4070" = inttoptr i64 %"or.206" to ptr
  %".4071" = ptrtoint ptr %".4070" to i64
  %".4072" = add i64 %".4071", 0
  %"for_LDG.201" = inttoptr i64 %".4072" to ptr
  %".4073" = load float, ptr %"for_LDG.201"
  %".4074" = bitcast ptr %"R45" to ptr
  store float %".4073", ptr %".4074"
  ; LDG.E.SYS R34, [R10+0x4]
  %".4077" = load i32, ptr %"R10"
  %"zext.418" = zext i32 %".4077" to i64
  %".4078" = load i32, ptr %"R11"
  %"zext.419" = zext i32 %".4078" to i64
  %"shl.222" = shl i64 %"zext.419", 32
  %"or.207" = or i64 %"shl.222", %"zext.418"
  %".4079" = inttoptr i64 %"or.207" to ptr
  %".4080" = ptrtoint ptr %".4079" to i64
  %".4081" = add i64 %".4080", 4
  %"for_LDG.202" = inttoptr i64 %".4081" to ptr
  %".4082" = load float, ptr %"for_LDG.202"
  %".4083" = bitcast ptr %"R34" to ptr
  store float %".4082", ptr %".4083"
  ; LDG.E.SYS R37, [R6+0x4]
  %".4086" = load i32, ptr %"R6"
  %"zext.420" = zext i32 %".4086" to i64
  %".4087" = load i32, ptr %"R7"
  %"zext.421" = zext i32 %".4087" to i64
  %"shl.223" = shl i64 %"zext.421", 32
  %"or.208" = or i64 %"shl.223", %"zext.420"
  %".4088" = inttoptr i64 %"or.208" to ptr
  %".4089" = ptrtoint ptr %".4088" to i64
  %".4090" = add i64 %".4089", 4
  %"for_LDG.203" = inttoptr i64 %".4090" to ptr
  %".4091" = load float, ptr %"for_LDG.203"
  %".4092" = bitcast ptr %"R37" to ptr
  store float %".4091", ptr %".4092"
  ; IADD3 R9, R23, 0x8, RZ
  %".4095" = load i32, ptr %"R23"
  %"add.196" = add i32 %".4095", 8
  %"add.197" = add i32 %"add.196", 0
  store i32 %"add.197", ptr %"R9"
  ; LDG.E.SYS R36, [R10+0x8]
  %".4098" = load i32, ptr %"R10"
  %"zext.422" = zext i32 %".4098" to i64
  %".4099" = load i32, ptr %"R11"
  %"zext.423" = zext i32 %".4099" to i64
  %"shl.224" = shl i64 %"zext.423", 32
  %"or.209" = or i64 %"shl.224", %"zext.422"
  %".4100" = inttoptr i64 %"or.209" to ptr
  %".4101" = ptrtoint ptr %".4100" to i64
  %".4102" = add i64 %".4101", 8
  %"for_LDG.204" = inttoptr i64 %".4102" to ptr
  %".4103" = load float, ptr %"for_LDG.204"
  %".4104" = bitcast ptr %"R36" to ptr
  store float %".4103", ptr %".4104"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".4107" = load i32, ptr %"R9"
  %".4108" = load i32, ptr %"R24"
  %"mul.69" = mul i32 %".4107", %".4108"
  %"add.198" = add i32 %"mul.69", %"Arg_3"
  store i32 %"add.198", ptr %"R8"
  ; LDG.E.SYS R38, [R10+0xc]
  %".4111" = load i32, ptr %"R10"
  %"zext.424" = zext i32 %".4111" to i64
  %".4112" = load i32, ptr %"R11"
  %"zext.425" = zext i32 %".4112" to i64
  %"shl.225" = shl i64 %"zext.425", 32
  %"or.210" = or i64 %"shl.225", %"zext.424"
  %".4113" = inttoptr i64 %"or.210" to ptr
  %".4114" = ptrtoint ptr %".4113" to i64
  %".4115" = add i64 %".4114", 12
  %"for_LDG.205" = inttoptr i64 %".4115" to ptr
  %".4116" = load float, ptr %"for_LDG.205"
  %".4117" = bitcast ptr %"R38" to ptr
  store float %".4116", ptr %".4117"
  ; IADD3 R13, R23, 0xc, RZ
  %".4120" = load i32, ptr %"R23"
  %"add.199" = add i32 %".4120", 12
  %"add.200" = add i32 %"add.199", 0
  store i32 %"add.200", ptr %"R13"
  ; IADD3 R11, R35, 0x8, RZ
  %".4123" = load i32, ptr %"R35"
  %"add.201" = add i32 %".4123", 8
  %"add.202" = add i32 %"add.201", 0
  store i32 %"add.202", ptr %"R11"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".4126" = load i32, ptr %"R13"
  %".4127" = load i32, ptr %"R24"
  %"mul.70" = mul i32 %".4126", %".4127"
  %"add.203" = add i32 %"mul.70", %"Arg_3"
  store i32 %"add.203", ptr %"R12"
  ; FFMA R57, R41, R39, R44
  %".4130" = load float, ptr %"R41"
  %".4131" = load float, ptr %"R39"
  %".4132" = load float, ptr %"R44"
  %"fmul.169" = fmul float %".4130", %".4131"
  %"fadd.144" = fadd float %"fmul.169", %".4132"
  %".4133" = bitcast ptr %"R57" to ptr
  store float %"fadd.144", ptr %".4133"
  ; LDG.E.SYS R41, [R8]
  %".4136" = load i32, ptr %"R8"
  %"zext.426" = zext i32 %".4136" to i64
  %".4137" = load i32, ptr %"R9"
  %"zext.427" = zext i32 %".4137" to i64
  %"shl.226" = shl i64 %"zext.427", 32
  %"or.211" = or i64 %"shl.226", %"zext.426"
  %".4138" = inttoptr i64 %"or.211" to ptr
  %".4139" = ptrtoint ptr %".4138" to i64
  %".4140" = add i64 %".4139", 0
  %"for_LDG.206" = inttoptr i64 %".4140" to ptr
  %".4141" = load float, ptr %"for_LDG.206"
  %".4142" = bitcast ptr %"R41" to ptr
  store float %".4141", ptr %".4142"
  ; FFMA R56, R39, R40, R56
  %".4145" = load float, ptr %"R39"
  %".4146" = load float, ptr %"R40"
  %".4147" = load float, ptr %"R56"
  %"fmul.170" = fmul float %".4145", %".4146"
  %"fadd.145" = fadd float %"fmul.170", %".4147"
  %".4148" = bitcast ptr %"R56" to ptr
  store float %"fadd.145", ptr %".4148"
  ; LDG.E.SYS R40, [R8+0x4]
  %".4151" = load i32, ptr %"R8"
  %"zext.428" = zext i32 %".4151" to i64
  %".4152" = load i32, ptr %"R9"
  %"zext.429" = zext i32 %".4152" to i64
  %"shl.227" = shl i64 %"zext.429", 32
  %"or.212" = or i64 %"shl.227", %"zext.428"
  %".4153" = inttoptr i64 %"or.212" to ptr
  %".4154" = ptrtoint ptr %".4153" to i64
  %".4155" = add i64 %".4154", 4
  %"for_LDG.207" = inttoptr i64 %".4155" to ptr
  %".4156" = load float, ptr %"for_LDG.207"
  %".4157" = bitcast ptr %"R40" to ptr
  store float %".4156", ptr %".4157"
  ; LDG.E.SYS R39, [R8+0x8]
  %".4160" = load i32, ptr %"R8"
  %"zext.430" = zext i32 %".4160" to i64
  %".4161" = load i32, ptr %"R9"
  %"zext.431" = zext i32 %".4161" to i64
  %"shl.228" = shl i64 %"zext.431", 32
  %"or.213" = or i64 %"shl.228", %"zext.430"
  %".4162" = inttoptr i64 %"or.213" to ptr
  %".4163" = ptrtoint ptr %".4162" to i64
  %".4164" = add i64 %".4163", 8
  %"for_LDG.208" = inttoptr i64 %".4164" to ptr
  %".4165" = load float, ptr %"for_LDG.208"
  %".4166" = bitcast ptr %"R39" to ptr
  store float %".4165", ptr %".4166"
  ; FFMA R57, R53, R52, R57
  %".4169" = load float, ptr %"R53"
  %".4170" = load float, ptr %"R52"
  %".4171" = load float, ptr %"R57"
  %"fmul.171" = fmul float %".4169", %".4170"
  %"fadd.146" = fadd float %"fmul.171", %".4171"
  %".4172" = bitcast ptr %"R57" to ptr
  store float %"fadd.146", ptr %".4172"
  ; LDG.E.SYS R44, [R8+0xc]
  %".4175" = load i32, ptr %"R8"
  %"zext.432" = zext i32 %".4175" to i64
  %".4176" = load i32, ptr %"R9"
  %"zext.433" = zext i32 %".4176" to i64
  %"shl.229" = shl i64 %"zext.433", 32
  %"or.214" = or i64 %"shl.229", %"zext.432"
  %".4177" = inttoptr i64 %"or.214" to ptr
  %".4178" = ptrtoint ptr %".4177" to i64
  %".4179" = add i64 %".4178", 12
  %"for_LDG.209" = inttoptr i64 %".4179" to ptr
  %".4180" = load float, ptr %"for_LDG.209"
  %".4181" = bitcast ptr %"R44" to ptr
  store float %".4180", ptr %".4181"
  ; FFMA R59, R52, R55, R56
  %".4184" = load float, ptr %"R52"
  %".4185" = load float, ptr %"R55"
  %".4186" = load float, ptr %"R56"
  %"fmul.172" = fmul float %".4184", %".4185"
  %"fadd.147" = fadd float %"fmul.172", %".4186"
  %".4187" = bitcast ptr %"R59" to ptr
  store float %"fadd.147", ptr %".4187"
  ; LDG.E.SYS R55, [R12]
  %".4190" = load i32, ptr %"R12"
  %"zext.434" = zext i32 %".4190" to i64
  %".4191" = load i32, ptr %"R13"
  %"zext.435" = zext i32 %".4191" to i64
  %"shl.230" = shl i64 %"zext.435", 32
  %"or.215" = or i64 %"shl.230", %"zext.434"
  %".4192" = inttoptr i64 %"or.215" to ptr
  %".4193" = ptrtoint ptr %".4192" to i64
  %".4194" = add i64 %".4193", 0
  %"for_LDG.210" = inttoptr i64 %".4194" to ptr
  %".4195" = load float, ptr %"for_LDG.210"
  %".4196" = bitcast ptr %"R55" to ptr
  store float %".4195", ptr %".4196"
  ; LDG.E.SYS R53, [R12+0x4]
  %".4199" = load i32, ptr %"R12"
  %"zext.436" = zext i32 %".4199" to i64
  %".4200" = load i32, ptr %"R13"
  %"zext.437" = zext i32 %".4200" to i64
  %"shl.231" = shl i64 %"zext.437", 32
  %"or.216" = or i64 %"shl.231", %"zext.436"
  %".4201" = inttoptr i64 %"or.216" to ptr
  %".4202" = ptrtoint ptr %".4201" to i64
  %".4203" = add i64 %".4202", 4
  %"for_LDG.211" = inttoptr i64 %".4203" to ptr
  %".4204" = load float, ptr %"for_LDG.211"
  %".4205" = bitcast ptr %"R53" to ptr
  store float %".4204", ptr %".4205"
  ; FFMA R43, R43, R50, R57
  %".4208" = load float, ptr %"R43"
  %".4209" = load float, ptr %"R50"
  %".4210" = load float, ptr %"R57"
  %"fmul.173" = fmul float %".4208", %".4209"
  %"fadd.148" = fadd float %"fmul.173", %".4210"
  %".4211" = bitcast ptr %"R43" to ptr
  store float %"fadd.148", ptr %".4211"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".4214" = load i32, ptr %"R11"
  %".4215" = load i32, ptr %"R24"
  %"mul.71" = mul i32 %".4214", %".4215"
  %"add.204" = add i32 %"mul.71", %"Arg_4"
  store i32 %"add.204", ptr %"R8"
  ; LDG.E.SYS R52, [R12+0x8]
  %".4218" = load i32, ptr %"R12"
  %"zext.438" = zext i32 %".4218" to i64
  %".4219" = load i32, ptr %"R13"
  %"zext.439" = zext i32 %".4219" to i64
  %"shl.232" = shl i64 %"zext.439", 32
  %"or.217" = or i64 %"shl.232", %"zext.438"
  %".4220" = inttoptr i64 %"or.217" to ptr
  %".4221" = ptrtoint ptr %".4220" to i64
  %".4222" = add i64 %".4221", 8
  %"for_LDG.212" = inttoptr i64 %".4222" to ptr
  %".4223" = load float, ptr %"for_LDG.212"
  %".4224" = bitcast ptr %"R52" to ptr
  store float %".4223", ptr %".4224"
  ; FFMA R51, R50, R51, R59
  %".4227" = load float, ptr %"R50"
  %".4228" = load float, ptr %"R51"
  %".4229" = load float, ptr %"R59"
  %"fmul.174" = fmul float %".4227", %".4228"
  %"fadd.149" = fadd float %"fmul.174", %".4229"
  %".4230" = bitcast ptr %"R51" to ptr
  store float %"fadd.149", ptr %".4230"
  ; IADD3 R57, R25, 0x8, RZ
  %".4233" = load i32, ptr %"R25"
  %"add.205" = add i32 %".4233", 8
  %"add.206" = add i32 %"add.205", 0
  store i32 %"add.206", ptr %"R57"
  ; LDG.E.SYS R59, [R4+0xc]
  %".4236" = load i32, ptr %"R4"
  %"zext.440" = zext i32 %".4236" to i64
  %".4237" = load i32, ptr %"R5"
  %"zext.441" = zext i32 %".4237" to i64
  %"shl.233" = shl i64 %"zext.441", 32
  %"or.218" = or i64 %"shl.233", %"zext.440"
  %".4238" = inttoptr i64 %"or.218" to ptr
  %".4239" = ptrtoint ptr %".4238" to i64
  %".4240" = add i64 %".4239", 12
  %"for_LDG.213" = inttoptr i64 %".4240" to ptr
  %".4241" = load float, ptr %"for_LDG.213"
  %".4242" = bitcast ptr %"R59" to ptr
  store float %".4241", ptr %".4242"
  ; FFMA R61, R54, R47, R43
  %".4245" = load float, ptr %"R54"
  %".4246" = load float, ptr %"R47"
  %".4247" = load float, ptr %"R43"
  %"fmul.175" = fmul float %".4245", %".4246"
  %"fadd.150" = fadd float %"fmul.175", %".4247"
  %".4248" = bitcast ptr %"R61" to ptr
  store float %"fadd.150", ptr %".4248"
  ; LDG.E.SYS R50, [R8]
  %".4251" = load i32, ptr %"R8"
  %"zext.442" = zext i32 %".4251" to i64
  %".4252" = load i32, ptr %"R9"
  %"zext.443" = zext i32 %".4252" to i64
  %"shl.234" = shl i64 %"zext.443", 32
  %"or.219" = or i64 %"shl.234", %"zext.442"
  %".4253" = inttoptr i64 %"or.219" to ptr
  %".4254" = ptrtoint ptr %".4253" to i64
  %".4255" = add i64 %".4254", 0
  %"for_LDG.214" = inttoptr i64 %".4255" to ptr
  %".4256" = load float, ptr %"for_LDG.214"
  %".4257" = bitcast ptr %"R50" to ptr
  store float %".4256", ptr %".4257"
  ; FFMA R58, R47, R58, R51
  %".4260" = load float, ptr %"R47"
  %".4261" = load float, ptr %"R58"
  %".4262" = load float, ptr %"R51"
  %"fmul.176" = fmul float %".4260", %".4261"
  %"fadd.151" = fadd float %"fmul.176", %".4262"
  %".4263" = bitcast ptr %"R58" to ptr
  store float %"fadd.151", ptr %".4263"
  ; LDG.E.SYS R43, [R6+0x8]
  %".4266" = load i32, ptr %"R6"
  %"zext.444" = zext i32 %".4266" to i64
  %".4267" = load i32, ptr %"R7"
  %"zext.445" = zext i32 %".4267" to i64
  %"shl.235" = shl i64 %"zext.445", 32
  %"or.220" = or i64 %"shl.235", %"zext.444"
  %".4268" = inttoptr i64 %"or.220" to ptr
  %".4269" = ptrtoint ptr %".4268" to i64
  %".4270" = add i64 %".4269", 8
  %"for_LDG.215" = inttoptr i64 %".4270" to ptr
  %".4271" = load float, ptr %"for_LDG.215"
  %".4272" = bitcast ptr %"R43" to ptr
  store float %".4271", ptr %".4272"
  ; LDG.E.SYS R47, [R4+0x4]
  %".4275" = load i32, ptr %"R4"
  %"zext.446" = zext i32 %".4275" to i64
  %".4276" = load i32, ptr %"R5"
  %"zext.447" = zext i32 %".4276" to i64
  %"shl.236" = shl i64 %"zext.447", 32
  %"or.221" = or i64 %"shl.236", %"zext.446"
  %".4277" = inttoptr i64 %"or.221" to ptr
  %".4278" = ptrtoint ptr %".4277" to i64
  %".4279" = add i64 %".4278", 4
  %"for_LDG.216" = inttoptr i64 %".4279" to ptr
  %".4280" = load float, ptr %"for_LDG.216"
  %".4281" = bitcast ptr %"R47" to ptr
  store float %".4280", ptr %".4281"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".4284" = load i32, ptr %"R57"
  %".4285" = load i32, ptr %"R24"
  %"mul.72" = mul i32 %".4284", %".4285"
  %"add.207" = add i32 %"mul.72", %"Arg_4"
  store i32 %"add.207", ptr %"R10"
  ; LDG.E.SYS R51, [R4+0x8]
  %".4288" = load i32, ptr %"R4"
  %"zext.448" = zext i32 %".4288" to i64
  %".4289" = load i32, ptr %"R5"
  %"zext.449" = zext i32 %".4289" to i64
  %"shl.237" = shl i64 %"zext.449", 32
  %"or.222" = or i64 %"shl.237", %"zext.448"
  %".4290" = inttoptr i64 %"or.222" to ptr
  %".4291" = ptrtoint ptr %".4290" to i64
  %".4292" = add i64 %".4291", 8
  %"for_LDG.217" = inttoptr i64 %".4292" to ptr
  %".4293" = load float, ptr %"for_LDG.217"
  %".4294" = bitcast ptr %"R51" to ptr
  store float %".4293", ptr %".4294"
  ; LDG.E.SYS R57, [R6+0xc]
  %".4297" = load i32, ptr %"R6"
  %"zext.450" = zext i32 %".4297" to i64
  %".4298" = load i32, ptr %"R7"
  %"zext.451" = zext i32 %".4298" to i64
  %"shl.238" = shl i64 %"zext.451", 32
  %"or.223" = or i64 %"shl.238", %"zext.450"
  %".4299" = inttoptr i64 %"or.223" to ptr
  %".4300" = ptrtoint ptr %".4299" to i64
  %".4301" = add i64 %".4300", 12
  %"for_LDG.218" = inttoptr i64 %".4301" to ptr
  %".4302" = load float, ptr %"for_LDG.218"
  %".4303" = bitcast ptr %"R57" to ptr
  store float %".4302", ptr %".4303"
  ; FFMA R42, R42, R46, R61
  %".4306" = load float, ptr %"R42"
  %".4307" = load float, ptr %"R46"
  %".4308" = load float, ptr %"R61"
  %"fmul.177" = fmul float %".4306", %".4307"
  %"fadd.152" = fadd float %"fmul.177", %".4308"
  %".4309" = bitcast ptr %"R42" to ptr
  store float %"fadd.152", ptr %".4309"
  ; IADD3 R25, R25, 0xc, RZ
  %".4312" = load i32, ptr %"R25"
  %"add.208" = add i32 %".4312", 12
  %"add.209" = add i32 %"add.208", 0
  store i32 %"add.209", ptr %"R25"
  ; LDG.E.SYS R56, [R12+0xc]
  %".4315" = load i32, ptr %"R12"
  %"zext.452" = zext i32 %".4315" to i64
  %".4316" = load i32, ptr %"R13"
  %"zext.453" = zext i32 %".4316" to i64
  %"shl.239" = shl i64 %"zext.453", 32
  %"or.224" = or i64 %"shl.239", %"zext.452"
  %".4317" = inttoptr i64 %"or.224" to ptr
  %".4318" = ptrtoint ptr %".4317" to i64
  %".4319" = add i64 %".4318", 12
  %"for_LDG.219" = inttoptr i64 %".4319" to ptr
  %".4320" = load float, ptr %"for_LDG.219"
  %".4321" = bitcast ptr %"R56" to ptr
  store float %".4320", ptr %".4321"
  ; FFMA R45, R46, R45, R58
  %".4324" = load float, ptr %"R46"
  %".4325" = load float, ptr %"R45"
  %".4326" = load float, ptr %"R58"
  %"fmul.178" = fmul float %".4324", %".4325"
  %"fadd.153" = fadd float %"fmul.178", %".4326"
  %".4327" = bitcast ptr %"R45" to ptr
  store float %"fadd.153", ptr %".4327"
  ; LDG.E.SYS R46, [R10]
  %".4330" = load i32, ptr %"R10"
  %"zext.454" = zext i32 %".4330" to i64
  %".4331" = load i32, ptr %"R11"
  %"zext.455" = zext i32 %".4331" to i64
  %"shl.240" = shl i64 %"zext.455", 32
  %"or.225" = or i64 %"shl.240", %"zext.454"
  %".4332" = inttoptr i64 %"or.225" to ptr
  %".4333" = ptrtoint ptr %".4332" to i64
  %".4334" = add i64 %".4333", 0
  %"for_LDG.220" = inttoptr i64 %".4334" to ptr
  %".4335" = load float, ptr %"for_LDG.220"
  %".4336" = bitcast ptr %"R46" to ptr
  store float %".4335", ptr %".4336"
  ; LDG.E.SYS R61, [R8+0x4]
  %".4339" = load i32, ptr %"R8"
  %"zext.456" = zext i32 %".4339" to i64
  %".4340" = load i32, ptr %"R9"
  %"zext.457" = zext i32 %".4340" to i64
  %"shl.241" = shl i64 %"zext.457", 32
  %"or.226" = or i64 %"shl.241", %"zext.456"
  %".4341" = inttoptr i64 %"or.226" to ptr
  %".4342" = ptrtoint ptr %".4341" to i64
  %".4343" = add i64 %".4342", 4
  %"for_LDG.221" = inttoptr i64 %".4343" to ptr
  %".4344" = load float, ptr %"for_LDG.221"
  %".4345" = bitcast ptr %"R61" to ptr
  store float %".4344", ptr %".4345"
  ; IADD3 R13, R35, 0xc, RZ
  %".4348" = load i32, ptr %"R35"
  %"add.210" = add i32 %".4348", 12
  %"add.211" = add i32 %"add.210", 0
  store i32 %"add.211", ptr %"R13"
  ; LDG.E.SYS R35, [R10+0x4]
  %".4351" = load i32, ptr %"R10"
  %"zext.458" = zext i32 %".4351" to i64
  %".4352" = load i32, ptr %"R11"
  %"zext.459" = zext i32 %".4352" to i64
  %"shl.242" = shl i64 %"zext.459", 32
  %"or.227" = or i64 %"shl.242", %"zext.458"
  %".4353" = inttoptr i64 %"or.227" to ptr
  %".4354" = ptrtoint ptr %".4353" to i64
  %".4355" = add i64 %".4354", 4
  %"for_LDG.222" = inttoptr i64 %".4355" to ptr
  %".4356" = load float, ptr %"for_LDG.222"
  %".4357" = bitcast ptr %"R35" to ptr
  store float %".4356", ptr %".4357"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".4360" = load i32, ptr %"R13"
  %".4361" = load i32, ptr %"R24"
  %"mul.73" = mul i32 %".4360", %".4361"
  %"add.212" = add i32 %"mul.73", %"Arg_4"
  store i32 %"add.212", ptr %"R12"
  ; LDG.E.SYS R6, [R8+0x8]
  %".4364" = load i32, ptr %"R8"
  %"zext.460" = zext i32 %".4364" to i64
  %".4365" = load i32, ptr %"R9"
  %"zext.461" = zext i32 %".4365" to i64
  %"shl.243" = shl i64 %"zext.461", 32
  %"or.228" = or i64 %"shl.243", %"zext.460"
  %".4366" = inttoptr i64 %"or.228" to ptr
  %".4367" = ptrtoint ptr %".4366" to i64
  %".4368" = add i64 %".4367", 8
  %"for_LDG.223" = inttoptr i64 %".4368" to ptr
  %".4369" = load float, ptr %"for_LDG.223"
  %".4370" = bitcast ptr %"R6" to ptr
  store float %".4369", ptr %".4370"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".4373" = load i32, ptr %"R25"
  %".4374" = load i32, ptr %"R24"
  %"mul.74" = mul i32 %".4373", %".4374"
  %"add.213" = add i32 %"mul.74", %"Arg_4"
  store i32 %"add.213", ptr %"R24"
  ; LDG.E.SYS R4, [R10+0x8]
  %".4377" = load i32, ptr %"R10"
  %"zext.462" = zext i32 %".4377" to i64
  %".4378" = load i32, ptr %"R11"
  %"zext.463" = zext i32 %".4378" to i64
  %"shl.244" = shl i64 %"zext.463", 32
  %"or.229" = or i64 %"shl.244", %"zext.462"
  %".4379" = inttoptr i64 %"or.229" to ptr
  %".4380" = ptrtoint ptr %".4379" to i64
  %".4381" = add i64 %".4380", 8
  %"for_LDG.224" = inttoptr i64 %".4381" to ptr
  %".4382" = load float, ptr %"for_LDG.224"
  %".4383" = bitcast ptr %"R4" to ptr
  store float %".4382", ptr %".4383"
  ; LDG.E.SYS R5, [R8+0xc]
  %".4386" = load i32, ptr %"R8"
  %"zext.464" = zext i32 %".4386" to i64
  %".4387" = load i32, ptr %"R9"
  %"zext.465" = zext i32 %".4387" to i64
  %"shl.245" = shl i64 %"zext.465", 32
  %"or.230" = or i64 %"shl.245", %"zext.464"
  %".4388" = inttoptr i64 %"or.230" to ptr
  %".4389" = ptrtoint ptr %".4388" to i64
  %".4390" = add i64 %".4389", 12
  %"for_LDG.225" = inttoptr i64 %".4390" to ptr
  %".4391" = load float, ptr %"for_LDG.225"
  %".4392" = bitcast ptr %"R5" to ptr
  store float %".4391", ptr %".4392"
  ; LDG.E.SYS R60, [R10+0xc]
  %".4395" = load i32, ptr %"R10"
  %"zext.466" = zext i32 %".4395" to i64
  %".4396" = load i32, ptr %"R11"
  %"zext.467" = zext i32 %".4396" to i64
  %"shl.246" = shl i64 %"zext.467", 32
  %"or.231" = or i64 %"shl.246", %"zext.466"
  %".4397" = inttoptr i64 %"or.231" to ptr
  %".4398" = ptrtoint ptr %".4397" to i64
  %".4399" = add i64 %".4398", 12
  %"for_LDG.226" = inttoptr i64 %".4399" to ptr
  %".4400" = load float, ptr %"for_LDG.226"
  %".4401" = bitcast ptr %"R60" to ptr
  store float %".4400", ptr %".4401"
  ; LDG.E.SYS R58, [R12]
  %".4404" = load i32, ptr %"R12"
  %"zext.468" = zext i32 %".4404" to i64
  %".4405" = load i32, ptr %"R13"
  %"zext.469" = zext i32 %".4405" to i64
  %"shl.247" = shl i64 %"zext.469", 32
  %"or.232" = or i64 %"shl.247", %"zext.468"
  %".4406" = inttoptr i64 %"or.232" to ptr
  %".4407" = ptrtoint ptr %".4406" to i64
  %".4408" = add i64 %".4407", 0
  %"for_LDG.227" = inttoptr i64 %".4408" to ptr
  %".4409" = load float, ptr %"for_LDG.227"
  %".4410" = bitcast ptr %"R58" to ptr
  store float %".4409", ptr %".4410"
  ; LDG.E.SYS R54, [R12+0x4]
  %".4413" = load i32, ptr %"R12"
  %"zext.470" = zext i32 %".4413" to i64
  %".4414" = load i32, ptr %"R13"
  %"zext.471" = zext i32 %".4414" to i64
  %"shl.248" = shl i64 %"zext.471", 32
  %"or.233" = or i64 %"shl.248", %"zext.470"
  %".4415" = inttoptr i64 %"or.233" to ptr
  %".4416" = ptrtoint ptr %".4415" to i64
  %".4417" = add i64 %".4416", 4
  %"for_LDG.228" = inttoptr i64 %".4417" to ptr
  %".4418" = load float, ptr %"for_LDG.228"
  %".4419" = bitcast ptr %"R54" to ptr
  store float %".4418", ptr %".4419"
  ; FFMA R10, R37, R34, R42
  %".4422" = load float, ptr %"R37"
  %".4423" = load float, ptr %"R34"
  %".4424" = load float, ptr %"R42"
  %"fmul.179" = fmul float %".4422", %".4423"
  %"fadd.154" = fadd float %"fmul.179", %".4424"
  %".4425" = bitcast ptr %"R10" to ptr
  store float %"fadd.154", ptr %".4425"
  ; LDG.E.SYS R37, [R24]
  %".4428" = load i32, ptr %"R24"
  %"zext.472" = zext i32 %".4428" to i64
  %".4429" = load i32, ptr %"R25"
  %"zext.473" = zext i32 %".4429" to i64
  %"shl.249" = shl i64 %"zext.473", 32
  %"or.234" = or i64 %"shl.249", %"zext.472"
  %".4430" = inttoptr i64 %"or.234" to ptr
  %".4431" = ptrtoint ptr %".4430" to i64
  %".4432" = add i64 %".4431", 0
  %"for_LDG.229" = inttoptr i64 %".4432" to ptr
  %".4433" = load float, ptr %"for_LDG.229"
  %".4434" = bitcast ptr %"R37" to ptr
  store float %".4433", ptr %".4434"
  ; LDG.E.SYS R42, [R24+0x4]
  %".4437" = load i32, ptr %"R24"
  %"zext.474" = zext i32 %".4437" to i64
  %".4438" = load i32, ptr %"R25"
  %"zext.475" = zext i32 %".4438" to i64
  %"shl.250" = shl i64 %"zext.475", 32
  %"or.235" = or i64 %"shl.250", %"zext.474"
  %".4439" = inttoptr i64 %"or.235" to ptr
  %".4440" = ptrtoint ptr %".4439" to i64
  %".4441" = add i64 %".4440", 4
  %"for_LDG.230" = inttoptr i64 %".4441" to ptr
  %".4442" = load float, ptr %"for_LDG.230"
  %".4443" = bitcast ptr %"R42" to ptr
  store float %".4442", ptr %".4443"
  ; LDG.E.SYS R7, [R12+0x8]
  %".4446" = load i32, ptr %"R12"
  %"zext.476" = zext i32 %".4446" to i64
  %".4447" = load i32, ptr %"R13"
  %"zext.477" = zext i32 %".4447" to i64
  %"shl.251" = shl i64 %"zext.477", 32
  %"or.236" = or i64 %"shl.251", %"zext.476"
  %".4448" = inttoptr i64 %"or.236" to ptr
  %".4449" = ptrtoint ptr %".4448" to i64
  %".4450" = add i64 %".4449", 8
  %"for_LDG.231" = inttoptr i64 %".4450" to ptr
  %".4451" = load float, ptr %"for_LDG.231"
  %".4452" = bitcast ptr %"R7" to ptr
  store float %".4451", ptr %".4452"
  ; LDG.E.SYS R9, [R24+0x8]
  %".4455" = load i32, ptr %"R24"
  %"zext.478" = zext i32 %".4455" to i64
  %".4456" = load i32, ptr %"R25"
  %"zext.479" = zext i32 %".4456" to i64
  %"shl.252" = shl i64 %"zext.479", 32
  %"or.237" = or i64 %"shl.252", %"zext.478"
  %".4457" = inttoptr i64 %"or.237" to ptr
  %".4458" = ptrtoint ptr %".4457" to i64
  %".4459" = add i64 %".4458", 8
  %"for_LDG.232" = inttoptr i64 %".4459" to ptr
  %".4460" = load float, ptr %"for_LDG.232"
  %".4461" = bitcast ptr %"R9" to ptr
  store float %".4460", ptr %".4461"
  ; LDG.E.SYS R8, [R24+0xc]
  %".4464" = load i32, ptr %"R24"
  %"zext.480" = zext i32 %".4464" to i64
  %".4465" = load i32, ptr %"R25"
  %"zext.481" = zext i32 %".4465" to i64
  %"shl.253" = shl i64 %"zext.481", 32
  %"or.238" = or i64 %"shl.253", %"zext.480"
  %".4466" = inttoptr i64 %"or.238" to ptr
  %".4467" = ptrtoint ptr %".4466" to i64
  %".4468" = add i64 %".4467", 12
  %"for_LDG.233" = inttoptr i64 %".4468" to ptr
  %".4469" = load float, ptr %"for_LDG.233"
  %".4470" = bitcast ptr %"R8" to ptr
  store float %".4469", ptr %".4470"
  ; LDG.E.SYS R13, [R12+0xc]
  %".4473" = load i32, ptr %"R12"
  %"zext.482" = zext i32 %".4473" to i64
  %".4474" = load i32, ptr %"R13"
  %"zext.483" = zext i32 %".4474" to i64
  %"shl.254" = shl i64 %"zext.483", 32
  %"or.239" = or i64 %"shl.254", %"zext.482"
  %".4475" = inttoptr i64 %"or.239" to ptr
  %".4476" = ptrtoint ptr %".4475" to i64
  %".4477" = add i64 %".4476", 12
  %"for_LDG.234" = inttoptr i64 %".4477" to ptr
  %".4478" = load float, ptr %"for_LDG.234"
  %".4479" = bitcast ptr %"R13" to ptr
  store float %".4478", ptr %".4479"
  ; IADD3 R22, R22, -0x10, RZ
  %".4482" = load i32, ptr %"R22"
  %"add.214" = add i32 %".4482", -16
  %"add.215" = add i32 %"add.214", 0
  store i32 %"add.215", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".4485" = load i32, ptr %"R22"
  %".4486" = load i1, ptr %"PT"
  %"cmp.37" = icmp sgt i32 %".4485", 12
  %".4487" = and i1 %"cmp.37", %".4486"
  ; IADD3 R23, R23, 0x10, RZ
  %".4489" = load i32, ptr %"R23"
  %"add.216" = add i32 %".4489", 16
  %"add.217" = add i32 %"add.216", 0
  store i32 %"add.217", ptr %"R23"
  ; FFMA R10, R43, R36, R10
  %".4492" = load float, ptr %"R43"
  %".4493" = load float, ptr %"R36"
  %".4494" = load float, ptr %"R10"
  %"fmul.180" = fmul float %".4492", %".4493"
  %"fadd.155" = fadd float %"fmul.180", %".4494"
  %".4495" = bitcast ptr %"R10" to ptr
  store float %"fadd.155", ptr %".4495"
  ; FFMA R45, R34, R47, R45
  %".4498" = load float, ptr %"R34"
  %".4499" = load float, ptr %"R47"
  %".4500" = load float, ptr %"R45"
  %"fmul.181" = fmul float %".4498", %".4499"
  %"fadd.156" = fadd float %"fmul.181", %".4500"
  %".4501" = bitcast ptr %"R45" to ptr
  store float %"fadd.156", ptr %".4501"
  ; FFMA R45, R36, R51, R45
  %".4504" = load float, ptr %"R36"
  %".4505" = load float, ptr %"R51"
  %".4506" = load float, ptr %"R45"
  %"fmul.182" = fmul float %".4504", %".4505"
  %"fadd.157" = fadd float %"fmul.182", %".4506"
  %".4507" = bitcast ptr %"R45" to ptr
  store float %"fadd.157", ptr %".4507"
  ; FFMA R10, R57, R38, R10
  %".4510" = load float, ptr %"R57"
  %".4511" = load float, ptr %"R38"
  %".4512" = load float, ptr %"R10"
  %"fmul.183" = fmul float %".4510", %".4511"
  %"fadd.158" = fadd float %"fmul.183", %".4512"
  %".4513" = bitcast ptr %"R10" to ptr
  store float %"fadd.158", ptr %".4513"
  ; FFMA R45, R38, R59, R45
  %".4516" = load float, ptr %"R38"
  %".4517" = load float, ptr %"R59"
  %".4518" = load float, ptr %"R45"
  %"fmul.184" = fmul float %".4516", %".4517"
  %"fadd.159" = fadd float %"fmul.184", %".4518"
  %".4519" = bitcast ptr %"R45" to ptr
  store float %"fadd.159", ptr %".4519"
  ; FFMA R10, R50, R41, R10
  %".4522" = load float, ptr %"R50"
  %".4523" = load float, ptr %"R41"
  %".4524" = load float, ptr %"R10"
  %"fmul.185" = fmul float %".4522", %".4523"
  %"fadd.160" = fadd float %"fmul.185", %".4524"
  %".4525" = bitcast ptr %"R10" to ptr
  store float %"fadd.160", ptr %".4525"
  ; FFMA R45, R41, R46, R45
  %".4528" = load float, ptr %"R41"
  %".4529" = load float, ptr %"R46"
  %".4530" = load float, ptr %"R45"
  %"fmul.186" = fmul float %".4528", %".4529"
  %"fadd.161" = fadd float %"fmul.186", %".4530"
  %".4531" = bitcast ptr %"R45" to ptr
  store float %"fadd.161", ptr %".4531"
  ; FFMA R10, R61, R40, R10
  %".4534" = load float, ptr %"R61"
  %".4535" = load float, ptr %"R40"
  %".4536" = load float, ptr %"R10"
  %"fmul.187" = fmul float %".4534", %".4535"
  %"fadd.162" = fadd float %"fmul.187", %".4536"
  %".4537" = bitcast ptr %"R10" to ptr
  store float %"fadd.162", ptr %".4537"
  ; FFMA R35, R40, R35, R45
  %".4540" = load float, ptr %"R40"
  %".4541" = load float, ptr %"R35"
  %".4542" = load float, ptr %"R45"
  %"fmul.188" = fmul float %".4540", %".4541"
  %"fadd.163" = fadd float %"fmul.188", %".4542"
  %".4543" = bitcast ptr %"R35" to ptr
  store float %"fadd.163", ptr %".4543"
  ; FFMA R6, R6, R39, R10
  %".4546" = load float, ptr %"R6"
  %".4547" = load float, ptr %"R39"
  %".4548" = load float, ptr %"R10"
  %"fmul.189" = fmul float %".4546", %".4547"
  %"fadd.164" = fadd float %"fmul.189", %".4548"
  %".4549" = bitcast ptr %"R6" to ptr
  store float %"fadd.164", ptr %".4549"
  ; FFMA R35, R39, R4, R35
  %".4552" = load float, ptr %"R39"
  %".4553" = load float, ptr %"R4"
  %".4554" = load float, ptr %"R35"
  %"fmul.190" = fmul float %".4552", %".4553"
  %"fadd.165" = fadd float %"fmul.190", %".4554"
  %".4555" = bitcast ptr %"R35" to ptr
  store float %"fadd.165", ptr %".4555"
  ; FFMA R5, R5, R44, R6
  %".4558" = load float, ptr %"R5"
  %".4559" = load float, ptr %"R44"
  %".4560" = load float, ptr %"R6"
  %"fmul.191" = fmul float %".4558", %".4559"
  %"fadd.166" = fadd float %"fmul.191", %".4560"
  %".4561" = bitcast ptr %"R5" to ptr
  store float %"fadd.166", ptr %".4561"
  ; FFMA R60, R44, R60, R35
  %".4564" = load float, ptr %"R44"
  %".4565" = load float, ptr %"R60"
  %".4566" = load float, ptr %"R35"
  %"fmul.192" = fmul float %".4564", %".4565"
  %"fadd.167" = fadd float %"fmul.192", %".4566"
  %".4567" = bitcast ptr %"R60" to ptr
  store float %"fadd.167", ptr %".4567"
  ; FFMA R5, R58, R55, R5
  %".4570" = load float, ptr %"R58"
  %".4571" = load float, ptr %"R55"
  %".4572" = load float, ptr %"R5"
  %"fmul.193" = fmul float %".4570", %".4571"
  %"fadd.168" = fadd float %"fmul.193", %".4572"
  %".4573" = bitcast ptr %"R5" to ptr
  store float %"fadd.168", ptr %".4573"
  ; FFMA R5, R54, R53, R5
  %".4576" = load float, ptr %"R54"
  %".4577" = load float, ptr %"R53"
  %".4578" = load float, ptr %"R5"
  %"fmul.194" = fmul float %".4576", %".4577"
  %"fadd.169" = fadd float %"fmul.194", %".4578"
  %".4579" = bitcast ptr %"R5" to ptr
  store float %"fadd.169", ptr %".4579"
  ; FFMA R37, R55, R37, R60
  %".4582" = load float, ptr %"R55"
  %".4583" = load float, ptr %"R37"
  %".4584" = load float, ptr %"R60"
  %"fmul.195" = fmul float %".4582", %".4583"
  %"fadd.170" = fadd float %"fmul.195", %".4584"
  %".4585" = bitcast ptr %"R37" to ptr
  store float %"fadd.170", ptr %".4585"
  ; FFMA R37, R53, R42, R37
  %".4588" = load float, ptr %"R53"
  %".4589" = load float, ptr %"R42"
  %".4590" = load float, ptr %"R37"
  %"fmul.196" = fmul float %".4588", %".4589"
  %"fadd.171" = fadd float %"fmul.196", %".4590"
  %".4591" = bitcast ptr %"R37" to ptr
  store float %"fadd.171", ptr %".4591"
  ; FFMA R5, R7, R52, R5
  %".4594" = load float, ptr %"R7"
  %".4595" = load float, ptr %"R52"
  %".4596" = load float, ptr %"R5"
  %"fmul.197" = fmul float %".4594", %".4595"
  %"fadd.172" = fadd float %"fmul.197", %".4596"
  %".4597" = bitcast ptr %"R5" to ptr
  store float %"fadd.172", ptr %".4597"
  ; FFMA R9, R52, R9, R37
  %".4600" = load float, ptr %"R52"
  %".4601" = load float, ptr %"R9"
  %".4602" = load float, ptr %"R37"
  %"fmul.198" = fmul float %".4600", %".4601"
  %"fadd.173" = fadd float %"fmul.198", %".4602"
  %".4603" = bitcast ptr %"R9" to ptr
  store float %"fadd.173", ptr %".4603"
  ; FFMA R44, R13, R56, R5
  %".4606" = load float, ptr %"R13"
  %".4607" = load float, ptr %"R56"
  %".4608" = load float, ptr %"R5"
  %"fmul.199" = fmul float %".4606", %".4607"
  %"fadd.174" = fadd float %"fmul.199", %".4608"
  %".4609" = bitcast ptr %"R44" to ptr
  store float %"fadd.174", ptr %".4609"
  ; FFMA R56, R56, R8, R9
  %".4612" = load float, ptr %"R56"
  %".4613" = load float, ptr %"R8"
  %".4614" = load float, ptr %"R9"
  %"fmul.200" = fmul float %".4612", %".4613"
  %"fadd.175" = fadd float %"fmul.200", %".4614"
  %".4615" = bitcast ptr %"R56" to ptr
  store float %"fadd.175", ptr %".4615"
  ; @P1 BRA `(.L_x_30)
  %".4618" = load i1, ptr %"P1"
  %".4619" = icmp ne i1 %".4618", 1
  br i1 %".4619", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".4622" = load i32, ptr %"R22"
  %".4623" = load i1, ptr %"PT"
  %"cmp.38" = icmp sgt i32 %".4622", 4
  %".4624" = and i1 %"cmp.38", %".4623"
  ; @!P1 BRA `(.L_x_31)
  %".4626" = load i1, ptr %"P1"
  %".4627" = icmp eq i1 %".4626", 1
  br i1 %".4627", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".4630" = load i32, ptr %"R0"
  %".4631" = load i32, ptr %"R23"
  %"add.218" = add i32 %".4630", %".4631"
  %"add.219" = add i32 %"add.218", 0
  store i32 %"add.219", ptr %"R5"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25"
  ; LEA R13, R2.reuse, R5, 0x2
  %".4636" = load i32, ptr %"R2"
  %".4637" = load i32, ptr %"R5"
  %"shl.255" = shl i32 %".4636", 2
  %"add.220" = add i32 %"shl.255", %".4637"
  store i32 %"add.220", ptr %"R13"
  ; IMAD R12, R2, 0x3, R5
  %".4640" = load i32, ptr %"R2"
  %".4641" = load i32, ptr %"R5"
  %"mul.75" = mul i32 %".4640", 3
  %"add.221" = add i32 %"mul.75", %".4641"
  store i32 %"add.221", ptr %"R12"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".4644" = load i32, ptr %"R23"
  %"add.222" = add i32 %".4644", 4
  %"add.223" = add i32 %"add.222", 0
  store i32 %"add.223", ptr %"R6"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".4647" = load i32, ptr %"R23"
  %".4648" = load i32, ptr %"R25"
  %"mul.76" = mul i32 %".4647", %".4648"
  %"add.224" = add i32 %"mul.76", %"Arg_3"
  store i32 %"add.224", ptr %"R8"
  ; IADD3 R24, R13, 0x4, RZ
  %".4651" = load i32, ptr %"R13"
  %"add.225" = add i32 %".4651", 4
  %"add.226" = add i32 %"add.225", 0
  store i32 %"add.226", ptr %"R24"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".4654" = load i32, ptr %"R12"
  %".4655" = load i32, ptr %"R25"
  %"mul.77" = mul i32 %".4654", %".4655"
  %"add.227" = add i32 %"mul.77", %"Arg_4"
  store i32 %"add.227", ptr %"R4"
  ; IADD3 R12, R12, 0x4, RZ
  %".4658" = load i32, ptr %"R12"
  %"add.228" = add i32 %".4658", 4
  %"add.229" = add i32 %"add.228", 0
  store i32 %"add.229", ptr %"R12"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".4661" = load i32, ptr %"R13"
  %".4662" = load i32, ptr %"R25"
  %"mul.78" = mul i32 %".4661", %".4662"
  %"add.230" = add i32 %"mul.78", %"Arg_4"
  store i32 %"add.230", ptr %"R10"
  ; LDG.E.SYS R43, [R8]
  %".4665" = load i32, ptr %"R8"
  %"zext.484" = zext i32 %".4665" to i64
  %".4666" = load i32, ptr %"R9"
  %"zext.485" = zext i32 %".4666" to i64
  %"shl.256" = shl i64 %"zext.485", 32
  %"or.240" = or i64 %"shl.256", %"zext.484"
  %".4667" = inttoptr i64 %"or.240" to ptr
  %".4668" = ptrtoint ptr %".4667" to i64
  %".4669" = add i64 %".4668", 0
  %"for_LDG.235" = inttoptr i64 %".4669" to ptr
  %".4670" = load float, ptr %"for_LDG.235"
  %".4671" = bitcast ptr %"R43" to ptr
  store float %".4670", ptr %".4671"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".4674" = load i32, ptr %"R6"
  %".4675" = load i32, ptr %"R25"
  %"mul.79" = mul i32 %".4674", %".4675"
  %"add.231" = add i32 %"mul.79", %"Arg_3"
  store i32 %"add.231", ptr %"R6"
  ; LDG.E.SYS R52, [R4]
  %".4678" = load i32, ptr %"R4"
  %"zext.486" = zext i32 %".4678" to i64
  %".4679" = load i32, ptr %"R5"
  %"zext.487" = zext i32 %".4679" to i64
  %"shl.257" = shl i64 %"zext.487", 32
  %"or.241" = or i64 %"shl.257", %"zext.486"
  %".4680" = inttoptr i64 %"or.241" to ptr
  %".4681" = ptrtoint ptr %".4680" to i64
  %".4682" = add i64 %".4681", 0
  %"for_LDG.236" = inttoptr i64 %".4682" to ptr
  %".4683" = load float, ptr %"for_LDG.236"
  %".4684" = bitcast ptr %"R52" to ptr
  store float %".4683", ptr %".4684"
  ; LDG.E.SYS R38, [R10]
  %".4687" = load i32, ptr %"R10"
  %"zext.488" = zext i32 %".4687" to i64
  %".4688" = load i32, ptr %"R11"
  %"zext.489" = zext i32 %".4688" to i64
  %"shl.258" = shl i64 %"zext.489", 32
  %"or.242" = or i64 %"shl.258", %"zext.488"
  %".4689" = inttoptr i64 %"or.242" to ptr
  %".4690" = ptrtoint ptr %".4689" to i64
  %".4691" = add i64 %".4690", 0
  %"for_LDG.237" = inttoptr i64 %".4691" to ptr
  %".4692" = load float, ptr %"for_LDG.237"
  %".4693" = bitcast ptr %"R38" to ptr
  store float %".4692", ptr %".4693"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".4696" = load i32, ptr %"R12"
  %".4697" = load i32, ptr %"R25"
  %"mul.80" = mul i32 %".4696", %".4697"
  %"add.232" = add i32 %"mul.80", %"Arg_4"
  store i32 %"add.232", ptr %"R12"
  ; LDG.E.SYS R36, [R8+0x4]
  %".4700" = load i32, ptr %"R8"
  %"zext.490" = zext i32 %".4700" to i64
  %".4701" = load i32, ptr %"R9"
  %"zext.491" = zext i32 %".4701" to i64
  %"shl.259" = shl i64 %"zext.491", 32
  %"or.243" = or i64 %"shl.259", %"zext.490"
  %".4702" = inttoptr i64 %"or.243" to ptr
  %".4703" = ptrtoint ptr %".4702" to i64
  %".4704" = add i64 %".4703", 4
  %"for_LDG.238" = inttoptr i64 %".4704" to ptr
  %".4705" = load float, ptr %"for_LDG.238"
  %".4706" = bitcast ptr %"R36" to ptr
  store float %".4705", ptr %".4706"
  ; LDG.E.SYS R41, [R4+0x4]
  %".4709" = load i32, ptr %"R4"
  %"zext.492" = zext i32 %".4709" to i64
  %".4710" = load i32, ptr %"R5"
  %"zext.493" = zext i32 %".4710" to i64
  %"shl.260" = shl i64 %"zext.493", 32
  %"or.244" = or i64 %"shl.260", %"zext.492"
  %".4711" = inttoptr i64 %"or.244" to ptr
  %".4712" = ptrtoint ptr %".4711" to i64
  %".4713" = add i64 %".4712", 4
  %"for_LDG.239" = inttoptr i64 %".4713" to ptr
  %".4714" = load float, ptr %"for_LDG.239"
  %".4715" = bitcast ptr %"R41" to ptr
  store float %".4714", ptr %".4715"
  ; LDG.E.SYS R39, [R10+0x4]
  %".4718" = load i32, ptr %"R10"
  %"zext.494" = zext i32 %".4718" to i64
  %".4719" = load i32, ptr %"R11"
  %"zext.495" = zext i32 %".4719" to i64
  %"shl.261" = shl i64 %"zext.495", 32
  %"or.245" = or i64 %"shl.261", %"zext.494"
  %".4720" = inttoptr i64 %"or.245" to ptr
  %".4721" = ptrtoint ptr %".4720" to i64
  %".4722" = add i64 %".4721", 4
  %"for_LDG.240" = inttoptr i64 %".4722" to ptr
  %".4723" = load float, ptr %"for_LDG.240"
  %".4724" = bitcast ptr %"R39" to ptr
  store float %".4723", ptr %".4724"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".4727" = load i32, ptr %"R24"
  %".4728" = load i32, ptr %"R25"
  %"mul.81" = mul i32 %".4727", %".4728"
  %"add.233" = add i32 %"mul.81", %"Arg_4"
  store i32 %"add.233", ptr %"R24"
  ; LDG.E.SYS R34, [R8+0x8]
  %".4731" = load i32, ptr %"R8"
  %"zext.496" = zext i32 %".4731" to i64
  %".4732" = load i32, ptr %"R9"
  %"zext.497" = zext i32 %".4732" to i64
  %"shl.262" = shl i64 %"zext.497", 32
  %"or.246" = or i64 %"shl.262", %"zext.496"
  %".4733" = inttoptr i64 %"or.246" to ptr
  %".4734" = ptrtoint ptr %".4733" to i64
  %".4735" = add i64 %".4734", 8
  %"for_LDG.241" = inttoptr i64 %".4735" to ptr
  %".4736" = load float, ptr %"for_LDG.241"
  %".4737" = bitcast ptr %"R34" to ptr
  store float %".4736", ptr %".4737"
  ; LDG.E.SYS R37, [R4+0x8]
  %".4740" = load i32, ptr %"R4"
  %"zext.498" = zext i32 %".4740" to i64
  %".4741" = load i32, ptr %"R5"
  %"zext.499" = zext i32 %".4741" to i64
  %"shl.263" = shl i64 %"zext.499", 32
  %"or.247" = or i64 %"shl.263", %"zext.498"
  %".4742" = inttoptr i64 %"or.247" to ptr
  %".4743" = ptrtoint ptr %".4742" to i64
  %".4744" = add i64 %".4743", 8
  %"for_LDG.242" = inttoptr i64 %".4744" to ptr
  %".4745" = load float, ptr %"for_LDG.242"
  %".4746" = bitcast ptr %"R37" to ptr
  store float %".4745", ptr %".4746"
  ; LDG.E.SYS R35, [R10+0x8]
  %".4749" = load i32, ptr %"R10"
  %"zext.500" = zext i32 %".4749" to i64
  %".4750" = load i32, ptr %"R11"
  %"zext.501" = zext i32 %".4750" to i64
  %"shl.264" = shl i64 %"zext.501", 32
  %"or.248" = or i64 %"shl.264", %"zext.500"
  %".4751" = inttoptr i64 %"or.248" to ptr
  %".4752" = ptrtoint ptr %".4751" to i64
  %".4753" = add i64 %".4752", 8
  %"for_LDG.243" = inttoptr i64 %".4753" to ptr
  %".4754" = load float, ptr %"for_LDG.243"
  %".4755" = bitcast ptr %"R35" to ptr
  store float %".4754", ptr %".4755"
  ; LDG.E.SYS R40, [R8+0xc]
  %".4758" = load i32, ptr %"R8"
  %"zext.502" = zext i32 %".4758" to i64
  %".4759" = load i32, ptr %"R9"
  %"zext.503" = zext i32 %".4759" to i64
  %"shl.265" = shl i64 %"zext.503", 32
  %"or.249" = or i64 %"shl.265", %"zext.502"
  %".4760" = inttoptr i64 %"or.249" to ptr
  %".4761" = ptrtoint ptr %".4760" to i64
  %".4762" = add i64 %".4761", 12
  %"for_LDG.244" = inttoptr i64 %".4762" to ptr
  %".4763" = load float, ptr %"for_LDG.244"
  %".4764" = bitcast ptr %"R40" to ptr
  store float %".4763", ptr %".4764"
  ; LDG.E.SYS R45, [R4+0xc]
  %".4767" = load i32, ptr %"R4"
  %"zext.504" = zext i32 %".4767" to i64
  %".4768" = load i32, ptr %"R5"
  %"zext.505" = zext i32 %".4768" to i64
  %"shl.266" = shl i64 %"zext.505", 32
  %"or.250" = or i64 %"shl.266", %"zext.504"
  %".4769" = inttoptr i64 %"or.250" to ptr
  %".4770" = ptrtoint ptr %".4769" to i64
  %".4771" = add i64 %".4770", 12
  %"for_LDG.245" = inttoptr i64 %".4771" to ptr
  %".4772" = load float, ptr %"for_LDG.245"
  %".4773" = bitcast ptr %"R45" to ptr
  store float %".4772", ptr %".4773"
  ; LDG.E.SYS R59, [R10+0xc]
  %".4776" = load i32, ptr %"R10"
  %"zext.506" = zext i32 %".4776" to i64
  %".4777" = load i32, ptr %"R11"
  %"zext.507" = zext i32 %".4777" to i64
  %"shl.267" = shl i64 %"zext.507", 32
  %"or.251" = or i64 %"shl.267", %"zext.506"
  %".4778" = inttoptr i64 %"or.251" to ptr
  %".4779" = ptrtoint ptr %".4778" to i64
  %".4780" = add i64 %".4779", 12
  %"for_LDG.246" = inttoptr i64 %".4780" to ptr
  %".4781" = load float, ptr %"for_LDG.246"
  %".4782" = bitcast ptr %"R59" to ptr
  store float %".4781", ptr %".4782"
  ; LDG.E.SYS R50, [R6]
  %".4785" = load i32, ptr %"R6"
  %"zext.508" = zext i32 %".4785" to i64
  %".4786" = load i32, ptr %"R7"
  %"zext.509" = zext i32 %".4786" to i64
  %"shl.268" = shl i64 %"zext.509", 32
  %"or.252" = or i64 %"shl.268", %"zext.508"
  %".4787" = inttoptr i64 %"or.252" to ptr
  %".4788" = ptrtoint ptr %".4787" to i64
  %".4789" = add i64 %".4788", 0
  %"for_LDG.247" = inttoptr i64 %".4789" to ptr
  %".4790" = load float, ptr %"for_LDG.247"
  %".4791" = bitcast ptr %"R50" to ptr
  store float %".4790", ptr %".4791"
  ; LDG.E.SYS R57, [R12]
  %".4794" = load i32, ptr %"R12"
  %"zext.510" = zext i32 %".4794" to i64
  %".4795" = load i32, ptr %"R13"
  %"zext.511" = zext i32 %".4795" to i64
  %"shl.269" = shl i64 %"zext.511", 32
  %"or.253" = or i64 %"shl.269", %"zext.510"
  %".4796" = inttoptr i64 %"or.253" to ptr
  %".4797" = ptrtoint ptr %".4796" to i64
  %".4798" = add i64 %".4797", 0
  %"for_LDG.248" = inttoptr i64 %".4798" to ptr
  %".4799" = load float, ptr %"for_LDG.248"
  %".4800" = bitcast ptr %"R57" to ptr
  store float %".4799", ptr %".4800"
  ; LDG.E.SYS R55, [R24]
  %".4803" = load i32, ptr %"R24"
  %"zext.512" = zext i32 %".4803" to i64
  %".4804" = load i32, ptr %"R25"
  %"zext.513" = zext i32 %".4804" to i64
  %"shl.270" = shl i64 %"zext.513", 32
  %"or.254" = or i64 %"shl.270", %"zext.512"
  %".4805" = inttoptr i64 %"or.254" to ptr
  %".4806" = ptrtoint ptr %".4805" to i64
  %".4807" = add i64 %".4806", 0
  %"for_LDG.249" = inttoptr i64 %".4807" to ptr
  %".4808" = load float, ptr %"for_LDG.249"
  %".4809" = bitcast ptr %"R55" to ptr
  store float %".4808", ptr %".4809"
  ; LDG.E.SYS R46, [R6+0x4]
  %".4812" = load i32, ptr %"R6"
  %"zext.514" = zext i32 %".4812" to i64
  %".4813" = load i32, ptr %"R7"
  %"zext.515" = zext i32 %".4813" to i64
  %"shl.271" = shl i64 %"zext.515", 32
  %"or.255" = or i64 %"shl.271", %"zext.514"
  %".4814" = inttoptr i64 %"or.255" to ptr
  %".4815" = ptrtoint ptr %".4814" to i64
  %".4816" = add i64 %".4815", 4
  %"for_LDG.250" = inttoptr i64 %".4816" to ptr
  %".4817" = load float, ptr %"for_LDG.250"
  %".4818" = bitcast ptr %"R46" to ptr
  store float %".4817", ptr %".4818"
  ; LDG.E.SYS R53, [R12+0x4]
  %".4821" = load i32, ptr %"R12"
  %"zext.516" = zext i32 %".4821" to i64
  %".4822" = load i32, ptr %"R13"
  %"zext.517" = zext i32 %".4822" to i64
  %"shl.272" = shl i64 %"zext.517", 32
  %"or.256" = or i64 %"shl.272", %"zext.516"
  %".4823" = inttoptr i64 %"or.256" to ptr
  %".4824" = ptrtoint ptr %".4823" to i64
  %".4825" = add i64 %".4824", 4
  %"for_LDG.251" = inttoptr i64 %".4825" to ptr
  %".4826" = load float, ptr %"for_LDG.251"
  %".4827" = bitcast ptr %"R53" to ptr
  store float %".4826", ptr %".4827"
  ; LDG.E.SYS R51, [R24+0x4]
  %".4830" = load i32, ptr %"R24"
  %"zext.518" = zext i32 %".4830" to i64
  %".4831" = load i32, ptr %"R25"
  %"zext.519" = zext i32 %".4831" to i64
  %"shl.273" = shl i64 %"zext.519", 32
  %"or.257" = or i64 %"shl.273", %"zext.518"
  %".4832" = inttoptr i64 %"or.257" to ptr
  %".4833" = ptrtoint ptr %".4832" to i64
  %".4834" = add i64 %".4833", 4
  %"for_LDG.252" = inttoptr i64 %".4834" to ptr
  %".4835" = load float, ptr %"for_LDG.252"
  %".4836" = bitcast ptr %"R51" to ptr
  store float %".4835", ptr %".4836"
  ; LDG.E.SYS R42, [R6+0x8]
  %".4839" = load i32, ptr %"R6"
  %"zext.520" = zext i32 %".4839" to i64
  %".4840" = load i32, ptr %"R7"
  %"zext.521" = zext i32 %".4840" to i64
  %"shl.274" = shl i64 %"zext.521", 32
  %"or.258" = or i64 %"shl.274", %"zext.520"
  %".4841" = inttoptr i64 %"or.258" to ptr
  %".4842" = ptrtoint ptr %".4841" to i64
  %".4843" = add i64 %".4842", 8
  %"for_LDG.253" = inttoptr i64 %".4843" to ptr
  %".4844" = load float, ptr %"for_LDG.253"
  %".4845" = bitcast ptr %"R42" to ptr
  store float %".4844", ptr %".4845"
  ; LDG.E.SYS R47, [R12+0x8]
  %".4848" = load i32, ptr %"R12"
  %"zext.522" = zext i32 %".4848" to i64
  %".4849" = load i32, ptr %"R13"
  %"zext.523" = zext i32 %".4849" to i64
  %"shl.275" = shl i64 %"zext.523", 32
  %"or.259" = or i64 %"shl.275", %"zext.522"
  %".4850" = inttoptr i64 %"or.259" to ptr
  %".4851" = ptrtoint ptr %".4850" to i64
  %".4852" = add i64 %".4851", 8
  %"for_LDG.254" = inttoptr i64 %".4852" to ptr
  %".4853" = load float, ptr %"for_LDG.254"
  %".4854" = bitcast ptr %"R47" to ptr
  store float %".4853", ptr %".4854"
  ; LDG.E.SYS R9, [R24+0x8]
  %".4857" = load i32, ptr %"R24"
  %"zext.524" = zext i32 %".4857" to i64
  %".4858" = load i32, ptr %"R25"
  %"zext.525" = zext i32 %".4858" to i64
  %"shl.276" = shl i64 %"zext.525", 32
  %"or.260" = or i64 %"shl.276", %"zext.524"
  %".4859" = inttoptr i64 %"or.260" to ptr
  %".4860" = ptrtoint ptr %".4859" to i64
  %".4861" = add i64 %".4860", 8
  %"for_LDG.255" = inttoptr i64 %".4861" to ptr
  %".4862" = load float, ptr %"for_LDG.255"
  %".4863" = bitcast ptr %"R9" to ptr
  store float %".4862", ptr %".4863"
  ; LDG.E.SYS R4, [R6+0xc]
  %".4866" = load i32, ptr %"R6"
  %"zext.526" = zext i32 %".4866" to i64
  %".4867" = load i32, ptr %"R7"
  %"zext.527" = zext i32 %".4867" to i64
  %"shl.277" = shl i64 %"zext.527", 32
  %"or.261" = or i64 %"shl.277", %"zext.526"
  %".4868" = inttoptr i64 %"or.261" to ptr
  %".4869" = ptrtoint ptr %".4868" to i64
  %".4870" = add i64 %".4869", 12
  %"for_LDG.256" = inttoptr i64 %".4870" to ptr
  %".4871" = load float, ptr %"for_LDG.256"
  %".4872" = bitcast ptr %"R4" to ptr
  store float %".4871", ptr %".4872"
  ; LDG.E.SYS R5, [R12+0xc]
  %".4875" = load i32, ptr %"R12"
  %"zext.528" = zext i32 %".4875" to i64
  %".4876" = load i32, ptr %"R13"
  %"zext.529" = zext i32 %".4876" to i64
  %"shl.278" = shl i64 %"zext.529", 32
  %"or.262" = or i64 %"shl.278", %"zext.528"
  %".4877" = inttoptr i64 %"or.262" to ptr
  %".4878" = ptrtoint ptr %".4877" to i64
  %".4879" = add i64 %".4878", 12
  %"for_LDG.257" = inttoptr i64 %".4879" to ptr
  %".4880" = load float, ptr %"for_LDG.257"
  %".4881" = bitcast ptr %"R5" to ptr
  store float %".4880", ptr %".4881"
  ; LDG.E.SYS R11, [R24+0xc]
  %".4884" = load i32, ptr %"R24"
  %"zext.530" = zext i32 %".4884" to i64
  %".4885" = load i32, ptr %"R25"
  %"zext.531" = zext i32 %".4885" to i64
  %"shl.279" = shl i64 %"zext.531", 32
  %"or.263" = or i64 %"shl.279", %"zext.530"
  %".4886" = inttoptr i64 %"or.263" to ptr
  %".4887" = ptrtoint ptr %".4886" to i64
  %".4888" = add i64 %".4887", 12
  %"for_LDG.258" = inttoptr i64 %".4888" to ptr
  %".4889" = load float, ptr %"for_LDG.258"
  %".4890" = bitcast ptr %"R11" to ptr
  store float %".4889", ptr %".4890"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4893" = xor i1 1, 1
  %".4894" = and i1 %".4893", 1
  %".4895" = and i1 %".4894", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".4897" = load i32, ptr %"R22"
  %"add.234" = add i32 %".4897", -8
  %"add.235" = add i32 %"add.234", 0
  store i32 %"add.235", ptr %"R22"
  ; IADD3 R23, R23, 0x8, RZ
  %".4900" = load i32, ptr %"R23"
  %"add.236" = add i32 %".4900", 8
  %"add.237" = add i32 %"add.236", 0
  store i32 %"add.237", ptr %"R23"
  ; FFMA R52, R52, R43, R44
  %".4903" = load float, ptr %"R52"
  %".4904" = load float, ptr %"R43"
  %".4905" = load float, ptr %"R44"
  %"fmul.201" = fmul float %".4903", %".4904"
  %"fadd.176" = fadd float %"fmul.201", %".4905"
  %".4906" = bitcast ptr %"R52" to ptr
  store float %"fadd.176", ptr %".4906"
  ; FFMA R38, R43, R38, R56
  %".4909" = load float, ptr %"R43"
  %".4910" = load float, ptr %"R38"
  %".4911" = load float, ptr %"R56"
  %"fmul.202" = fmul float %".4909", %".4910"
  %"fadd.177" = fadd float %"fmul.202", %".4911"
  %".4912" = bitcast ptr %"R38" to ptr
  store float %"fadd.177", ptr %".4912"
  ; FFMA R41, R41, R36, R52
  %".4915" = load float, ptr %"R41"
  %".4916" = load float, ptr %"R36"
  %".4917" = load float, ptr %"R52"
  %"fmul.203" = fmul float %".4915", %".4916"
  %"fadd.178" = fadd float %"fmul.203", %".4917"
  %".4918" = bitcast ptr %"R41" to ptr
  store float %"fadd.178", ptr %".4918"
  ; FFMA R38, R36, R39, R38
  %".4921" = load float, ptr %"R36"
  %".4922" = load float, ptr %"R39"
  %".4923" = load float, ptr %"R38"
  %"fmul.204" = fmul float %".4921", %".4922"
  %"fadd.179" = fadd float %"fmul.204", %".4923"
  %".4924" = bitcast ptr %"R38" to ptr
  store float %"fadd.179", ptr %".4924"
  ; FFMA R37, R37, R34, R41
  %".4927" = load float, ptr %"R37"
  %".4928" = load float, ptr %"R34"
  %".4929" = load float, ptr %"R41"
  %"fmul.205" = fmul float %".4927", %".4928"
  %"fadd.180" = fadd float %"fmul.205", %".4929"
  %".4930" = bitcast ptr %"R37" to ptr
  store float %"fadd.180", ptr %".4930"
  ; FFMA R35, R34, R35, R38
  %".4933" = load float, ptr %"R34"
  %".4934" = load float, ptr %"R35"
  %".4935" = load float, ptr %"R38"
  %"fmul.206" = fmul float %".4933", %".4934"
  %"fadd.181" = fadd float %"fmul.206", %".4935"
  %".4936" = bitcast ptr %"R35" to ptr
  store float %"fadd.181", ptr %".4936"
  ; FFMA R37, R45, R40, R37
  %".4939" = load float, ptr %"R45"
  %".4940" = load float, ptr %"R40"
  %".4941" = load float, ptr %"R37"
  %"fmul.207" = fmul float %".4939", %".4940"
  %"fadd.182" = fadd float %"fmul.207", %".4941"
  %".4942" = bitcast ptr %"R37" to ptr
  store float %"fadd.182", ptr %".4942"
  ; FFMA R35, R40, R59, R35
  %".4945" = load float, ptr %"R40"
  %".4946" = load float, ptr %"R59"
  %".4947" = load float, ptr %"R35"
  %"fmul.208" = fmul float %".4945", %".4946"
  %"fadd.183" = fadd float %"fmul.208", %".4947"
  %".4948" = bitcast ptr %"R35" to ptr
  store float %"fadd.183", ptr %".4948"
  ; FFMA R37, R57, R50, R37
  %".4951" = load float, ptr %"R57"
  %".4952" = load float, ptr %"R50"
  %".4953" = load float, ptr %"R37"
  %"fmul.209" = fmul float %".4951", %".4952"
  %"fadd.184" = fadd float %"fmul.209", %".4953"
  %".4954" = bitcast ptr %"R37" to ptr
  store float %"fadd.184", ptr %".4954"
  ; FFMA R35, R50, R55, R35
  %".4957" = load float, ptr %"R50"
  %".4958" = load float, ptr %"R55"
  %".4959" = load float, ptr %"R35"
  %"fmul.210" = fmul float %".4957", %".4958"
  %"fadd.185" = fadd float %"fmul.210", %".4959"
  %".4960" = bitcast ptr %"R35" to ptr
  store float %"fadd.185", ptr %".4960"
  ; FFMA R37, R53, R46, R37
  %".4963" = load float, ptr %"R53"
  %".4964" = load float, ptr %"R46"
  %".4965" = load float, ptr %"R37"
  %"fmul.211" = fmul float %".4963", %".4964"
  %"fadd.186" = fadd float %"fmul.211", %".4965"
  %".4966" = bitcast ptr %"R37" to ptr
  store float %"fadd.186", ptr %".4966"
  ; FFMA R35, R46, R51, R35
  %".4969" = load float, ptr %"R46"
  %".4970" = load float, ptr %"R51"
  %".4971" = load float, ptr %"R35"
  %"fmul.212" = fmul float %".4969", %".4970"
  %"fadd.187" = fadd float %"fmul.212", %".4971"
  %".4972" = bitcast ptr %"R35" to ptr
  store float %"fadd.187", ptr %".4972"
  ; FFMA R37, R47, R42, R37
  %".4975" = load float, ptr %"R47"
  %".4976" = load float, ptr %"R42"
  %".4977" = load float, ptr %"R37"
  %"fmul.213" = fmul float %".4975", %".4976"
  %"fadd.188" = fadd float %"fmul.213", %".4977"
  %".4978" = bitcast ptr %"R37" to ptr
  store float %"fadd.188", ptr %".4978"
  ; FFMA R9, R42, R9, R35
  %".4981" = load float, ptr %"R42"
  %".4982" = load float, ptr %"R9"
  %".4983" = load float, ptr %"R35"
  %"fmul.214" = fmul float %".4981", %".4982"
  %"fadd.189" = fadd float %"fmul.214", %".4983"
  %".4984" = bitcast ptr %"R9" to ptr
  store float %"fadd.189", ptr %".4984"
  ; FFMA R44, R5, R4, R37
  %".4987" = load float, ptr %"R5"
  %".4988" = load float, ptr %"R4"
  %".4989" = load float, ptr %"R37"
  %"fmul.215" = fmul float %".4987", %".4988"
  %"fadd.190" = fadd float %"fmul.215", %".4989"
  %".4990" = bitcast ptr %"R44" to ptr
  store float %"fadd.190", ptr %".4990"
  ; FFMA R56, R4, R11, R9
  %".4993" = load float, ptr %"R4"
  %".4994" = load float, ptr %"R11"
  %".4995" = load float, ptr %"R9"
  %"fmul.216" = fmul float %".4993", %".4994"
  %"fadd.191" = fadd float %"fmul.216", %".4995"
  %".4996" = bitcast ptr %"R56" to ptr
  store float %"fadd.191", ptr %".4996"
  br label %".L_x_31"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".5000" = load i32, ptr %"R22"
  %".5001" = load i1, ptr %"PT"
  %"cmp.39" = icmp ne i32 %".5000", 0
  %".5002" = or i1 %"cmp.39", %".5001"
  ; @!P0 BRA `(.L_x_27)
  %".5004" = load i1, ptr %"P0"
  %".5005" = icmp eq i1 %".5004", 1
  br i1 %".5005", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".5008" = load i32, ptr %"R0"
  %".5009" = load i32, ptr %"R23"
  %"add.238" = add i32 %".5008", %".5009"
  %"add.239" = add i32 %"add.238", 0
  store i32 %"add.239", ptr %"R5"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6"
  ; LEA R11, R2.reuse, R5, 0x2
  %".5014" = load i32, ptr %"R2"
  %".5015" = load i32, ptr %"R5"
  %"shl.280" = shl i32 %".5014", 2
  %"add.240" = add i32 %"shl.280", %".5015"
  store i32 %"add.240", ptr %"R11"
  ; IMAD R7, R2, 0x3, R5
  %".5018" = load i32, ptr %"R2"
  %".5019" = load i32, ptr %"R5"
  %"mul.82" = mul i32 %".5018", 3
  %"add.241" = add i32 %"mul.82", %".5019"
  store i32 %"add.241", ptr %"R7"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".5022" = load i32, ptr %"R23"
  %".5023" = load i32, ptr %"R6"
  %"mul.83" = mul i32 %".5022", %".5023"
  %"add.242" = add i32 %"mul.83", %"Arg_3"
  store i32 %"add.242", ptr %"R8"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".5026" = load i32, ptr %"R7"
  %".5027" = load i32, ptr %"R6"
  %"mul.84" = mul i32 %".5026", %".5027"
  %"add.243" = add i32 %"mul.84", %"Arg_4"
  store i32 %"add.243", ptr %"R4"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".5030" = load i32, ptr %"R11"
  %".5031" = load i32, ptr %"R6"
  %"mul.85" = mul i32 %".5030", %".5031"
  %"add.244" = add i32 %"mul.85", %"Arg_4"
  store i32 %"add.244", ptr %"R6"
  ; LDG.E.SYS R13, [R8]
  %".5034" = load i32, ptr %"R8"
  %"zext.532" = zext i32 %".5034" to i64
  %".5035" = load i32, ptr %"R9"
  %"zext.533" = zext i32 %".5035" to i64
  %"shl.281" = shl i64 %"zext.533", 32
  %"or.264" = or i64 %"shl.281", %"zext.532"
  %".5036" = inttoptr i64 %"or.264" to ptr
  %".5037" = ptrtoint ptr %".5036" to i64
  %".5038" = add i64 %".5037", 0
  %"for_LDG.259" = inttoptr i64 %".5038" to ptr
  %".5039" = load float, ptr %"for_LDG.259"
  %".5040" = bitcast ptr %"R13" to ptr
  store float %".5039", ptr %".5040"
  ; LDG.E.SYS R11, [R4]
  %".5043" = load i32, ptr %"R4"
  %"zext.534" = zext i32 %".5043" to i64
  %".5044" = load i32, ptr %"R5"
  %"zext.535" = zext i32 %".5044" to i64
  %"shl.282" = shl i64 %"zext.535", 32
  %"or.265" = or i64 %"shl.282", %"zext.534"
  %".5045" = inttoptr i64 %"or.265" to ptr
  %".5046" = ptrtoint ptr %".5045" to i64
  %".5047" = add i64 %".5046", 0
  %"for_LDG.260" = inttoptr i64 %".5047" to ptr
  %".5048" = load float, ptr %"for_LDG.260"
  %".5049" = bitcast ptr %"R11" to ptr
  store float %".5048", ptr %".5049"
  ; LDG.E.SYS R10, [R6]
  %".5052" = load i32, ptr %"R6"
  %"zext.536" = zext i32 %".5052" to i64
  %".5053" = load i32, ptr %"R7"
  %"zext.537" = zext i32 %".5053" to i64
  %"shl.283" = shl i64 %"zext.537", 32
  %"or.266" = or i64 %"shl.283", %"zext.536"
  %".5054" = inttoptr i64 %"or.266" to ptr
  %".5055" = ptrtoint ptr %".5054" to i64
  %".5056" = add i64 %".5055", 0
  %"for_LDG.261" = inttoptr i64 %".5056" to ptr
  %".5057" = load float, ptr %"for_LDG.261"
  %".5058" = bitcast ptr %"R10" to ptr
  store float %".5057", ptr %".5058"
  ; LDG.E.SYS R25, [R8+0x4]
  %".5061" = load i32, ptr %"R8"
  %"zext.538" = zext i32 %".5061" to i64
  %".5062" = load i32, ptr %"R9"
  %"zext.539" = zext i32 %".5062" to i64
  %"shl.284" = shl i64 %"zext.539", 32
  %"or.267" = or i64 %"shl.284", %"zext.538"
  %".5063" = inttoptr i64 %"or.267" to ptr
  %".5064" = ptrtoint ptr %".5063" to i64
  %".5065" = add i64 %".5064", 4
  %"for_LDG.262" = inttoptr i64 %".5065" to ptr
  %".5066" = load float, ptr %"for_LDG.262"
  %".5067" = bitcast ptr %"R25" to ptr
  store float %".5066", ptr %".5067"
  ; LDG.E.SYS R12, [R4+0x4]
  %".5070" = load i32, ptr %"R4"
  %"zext.540" = zext i32 %".5070" to i64
  %".5071" = load i32, ptr %"R5"
  %"zext.541" = zext i32 %".5071" to i64
  %"shl.285" = shl i64 %"zext.541", 32
  %"or.268" = or i64 %"shl.285", %"zext.540"
  %".5072" = inttoptr i64 %"or.268" to ptr
  %".5073" = ptrtoint ptr %".5072" to i64
  %".5074" = add i64 %".5073", 4
  %"for_LDG.263" = inttoptr i64 %".5074" to ptr
  %".5075" = load float, ptr %"for_LDG.263"
  %".5076" = bitcast ptr %"R12" to ptr
  store float %".5075", ptr %".5076"
  ; LDG.E.SYS R24, [R6+0x4]
  %".5079" = load i32, ptr %"R6"
  %"zext.542" = zext i32 %".5079" to i64
  %".5080" = load i32, ptr %"R7"
  %"zext.543" = zext i32 %".5080" to i64
  %"shl.286" = shl i64 %"zext.543", 32
  %"or.269" = or i64 %"shl.286", %"zext.542"
  %".5081" = inttoptr i64 %"or.269" to ptr
  %".5082" = ptrtoint ptr %".5081" to i64
  %".5083" = add i64 %".5082", 4
  %"for_LDG.264" = inttoptr i64 %".5083" to ptr
  %".5084" = load float, ptr %"for_LDG.264"
  %".5085" = bitcast ptr %"R24" to ptr
  store float %".5084", ptr %".5085"
  ; LDG.E.SYS R35, [R8+0x8]
  %".5088" = load i32, ptr %"R8"
  %"zext.544" = zext i32 %".5088" to i64
  %".5089" = load i32, ptr %"R9"
  %"zext.545" = zext i32 %".5089" to i64
  %"shl.287" = shl i64 %"zext.545", 32
  %"or.270" = or i64 %"shl.287", %"zext.544"
  %".5090" = inttoptr i64 %"or.270" to ptr
  %".5091" = ptrtoint ptr %".5090" to i64
  %".5092" = add i64 %".5091", 8
  %"for_LDG.265" = inttoptr i64 %".5092" to ptr
  %".5093" = load float, ptr %"for_LDG.265"
  %".5094" = bitcast ptr %"R35" to ptr
  store float %".5093", ptr %".5094"
  ; LDG.E.SYS R34, [R4+0x8]
  %".5097" = load i32, ptr %"R4"
  %"zext.546" = zext i32 %".5097" to i64
  %".5098" = load i32, ptr %"R5"
  %"zext.547" = zext i32 %".5098" to i64
  %"shl.288" = shl i64 %"zext.547", 32
  %"or.271" = or i64 %"shl.288", %"zext.546"
  %".5099" = inttoptr i64 %"or.271" to ptr
  %".5100" = ptrtoint ptr %".5099" to i64
  %".5101" = add i64 %".5100", 8
  %"for_LDG.266" = inttoptr i64 %".5101" to ptr
  %".5102" = load float, ptr %"for_LDG.266"
  %".5103" = bitcast ptr %"R34" to ptr
  store float %".5102", ptr %".5103"
  ; LDG.E.SYS R36, [R6+0x8]
  %".5106" = load i32, ptr %"R6"
  %"zext.548" = zext i32 %".5106" to i64
  %".5107" = load i32, ptr %"R7"
  %"zext.549" = zext i32 %".5107" to i64
  %"shl.289" = shl i64 %"zext.549", 32
  %"or.272" = or i64 %"shl.289", %"zext.548"
  %".5108" = inttoptr i64 %"or.272" to ptr
  %".5109" = ptrtoint ptr %".5108" to i64
  %".5110" = add i64 %".5109", 8
  %"for_LDG.267" = inttoptr i64 %".5110" to ptr
  %".5111" = load float, ptr %"for_LDG.267"
  %".5112" = bitcast ptr %"R36" to ptr
  store float %".5111", ptr %".5112"
  ; LDG.E.SYS R37, [R8+0xc]
  %".5115" = load i32, ptr %"R8"
  %"zext.550" = zext i32 %".5115" to i64
  %".5116" = load i32, ptr %"R9"
  %"zext.551" = zext i32 %".5116" to i64
  %"shl.290" = shl i64 %"zext.551", 32
  %"or.273" = or i64 %"shl.290", %"zext.550"
  %".5117" = inttoptr i64 %"or.273" to ptr
  %".5118" = ptrtoint ptr %".5117" to i64
  %".5119" = add i64 %".5118", 12
  %"for_LDG.268" = inttoptr i64 %".5119" to ptr
  %".5120" = load float, ptr %"for_LDG.268"
  %".5121" = bitcast ptr %"R37" to ptr
  store float %".5120", ptr %".5121"
  ; LDG.E.SYS R38, [R4+0xc]
  %".5124" = load i32, ptr %"R4"
  %"zext.552" = zext i32 %".5124" to i64
  %".5125" = load i32, ptr %"R5"
  %"zext.553" = zext i32 %".5125" to i64
  %"shl.291" = shl i64 %"zext.553", 32
  %"or.274" = or i64 %"shl.291", %"zext.552"
  %".5126" = inttoptr i64 %"or.274" to ptr
  %".5127" = ptrtoint ptr %".5126" to i64
  %".5128" = add i64 %".5127", 12
  %"for_LDG.269" = inttoptr i64 %".5128" to ptr
  %".5129" = load float, ptr %"for_LDG.269"
  %".5130" = bitcast ptr %"R38" to ptr
  store float %".5129", ptr %".5130"
  ; LDG.E.SYS R39, [R6+0xc]
  %".5133" = load i32, ptr %"R6"
  %"zext.554" = zext i32 %".5133" to i64
  %".5134" = load i32, ptr %"R7"
  %"zext.555" = zext i32 %".5134" to i64
  %"shl.292" = shl i64 %"zext.555", 32
  %"or.275" = or i64 %"shl.292", %"zext.554"
  %".5135" = inttoptr i64 %"or.275" to ptr
  %".5136" = ptrtoint ptr %".5135" to i64
  %".5137" = add i64 %".5136", 12
  %"for_LDG.270" = inttoptr i64 %".5137" to ptr
  %".5138" = load float, ptr %"for_LDG.270"
  %".5139" = bitcast ptr %"R39" to ptr
  store float %".5138", ptr %".5139"
  ; IADD3 R22, R22, -0x4, RZ
  %".5142" = load i32, ptr %"R22"
  %"add.245" = add i32 %".5142", -4
  %"add.246" = add i32 %"add.245", 0
  store i32 %"add.246", ptr %"R22"
  ; IADD3 R23, R23, 0x4, RZ
  %".5145" = load i32, ptr %"R23"
  %"add.247" = add i32 %".5145", 4
  %"add.248" = add i32 %"add.247", 0
  store i32 %"add.248", ptr %"R23"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".5148" = load i32, ptr %"R22"
  %".5149" = load i1, ptr %"PT"
  %"cmp.40" = icmp ne i32 %".5148", 0
  %".5150" = and i1 %"cmp.40", %".5149"
  ; FFMA R11, R11, R13, R44
  %".5152" = load float, ptr %"R11"
  %".5153" = load float, ptr %"R13"
  %".5154" = load float, ptr %"R44"
  %"fmul.217" = fmul float %".5152", %".5153"
  %"fadd.192" = fadd float %"fmul.217", %".5154"
  %".5155" = bitcast ptr %"R11" to ptr
  store float %"fadd.192", ptr %".5155"
  ; FFMA R10, R13, R10, R56
  %".5158" = load float, ptr %"R13"
  %".5159" = load float, ptr %"R10"
  %".5160" = load float, ptr %"R56"
  %"fmul.218" = fmul float %".5158", %".5159"
  %"fadd.193" = fadd float %"fmul.218", %".5160"
  %".5161" = bitcast ptr %"R10" to ptr
  store float %"fadd.193", ptr %".5161"
  ; FFMA R11, R12, R25, R11
  %".5164" = load float, ptr %"R12"
  %".5165" = load float, ptr %"R25"
  %".5166" = load float, ptr %"R11"
  %"fmul.219" = fmul float %".5164", %".5165"
  %"fadd.194" = fadd float %"fmul.219", %".5166"
  %".5167" = bitcast ptr %"R11" to ptr
  store float %"fadd.194", ptr %".5167"
  ; FFMA R10, R25, R24, R10
  %".5170" = load float, ptr %"R25"
  %".5171" = load float, ptr %"R24"
  %".5172" = load float, ptr %"R10"
  %"fmul.220" = fmul float %".5170", %".5171"
  %"fadd.195" = fadd float %"fmul.220", %".5172"
  %".5173" = bitcast ptr %"R10" to ptr
  store float %"fadd.195", ptr %".5173"
  ; FFMA R11, R34, R35, R11
  %".5176" = load float, ptr %"R34"
  %".5177" = load float, ptr %"R35"
  %".5178" = load float, ptr %"R11"
  %"fmul.221" = fmul float %".5176", %".5177"
  %"fadd.196" = fadd float %"fmul.221", %".5178"
  %".5179" = bitcast ptr %"R11" to ptr
  store float %"fadd.196", ptr %".5179"
  ; FFMA R10, R35, R36, R10
  %".5182" = load float, ptr %"R35"
  %".5183" = load float, ptr %"R36"
  %".5184" = load float, ptr %"R10"
  %"fmul.222" = fmul float %".5182", %".5183"
  %"fadd.197" = fadd float %"fmul.222", %".5184"
  %".5185" = bitcast ptr %"R10" to ptr
  store float %"fadd.197", ptr %".5185"
  ; FFMA R44, R38, R37, R11
  %".5188" = load float, ptr %"R38"
  %".5189" = load float, ptr %"R37"
  %".5190" = load float, ptr %"R11"
  %"fmul.223" = fmul float %".5188", %".5189"
  %"fadd.198" = fadd float %"fmul.223", %".5190"
  %".5191" = bitcast ptr %"R44" to ptr
  store float %"fadd.198", ptr %".5191"
  ; FFMA R56, R37, R39, R10
  %".5194" = load float, ptr %"R37"
  %".5195" = load float, ptr %"R39"
  %".5196" = load float, ptr %"R10"
  %"fmul.224" = fmul float %".5194", %".5195"
  %"fadd.199" = fadd float %"fmul.224", %".5196"
  %".5197" = bitcast ptr %"R56" to ptr
  store float %"fadd.199", ptr %".5197"
  ; @P0 BRA `(.L_x_28)
  %".5200" = load i1, ptr %"P0"
  %".5201" = icmp ne i1 %".5200", 1
  br i1 %".5201", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".5204" = load i32, ptr %"R48"
  %".5205" = load i1, ptr %"PT"
  %"cmp.41" = icmp ne i32 %".5204", 0
  %".5206" = and i1 %"cmp.41", %".5205"
  ; @!P0 BRA `(.L_x_26)
  %".5208" = load i1, ptr %"P0"
  %".5209" = icmp eq i1 %".5208", 1
  br i1 %".5209", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".5212" = load i32, ptr %"R0"
  %".5213" = load i32, ptr %"R23"
  %"add.249" = add i32 %".5212", %".5213"
  %"add.250" = add i32 %"add.249", 0
  store i32 %"add.250", ptr %"R5"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9"
  ; LEA R8, R2.reuse, R5, 0x2
  %".5218" = load i32, ptr %"R2"
  %".5219" = load i32, ptr %"R5"
  %"shl.293" = shl i32 %".5218", 2
  %"add.251" = add i32 %"shl.293", %".5219"
  store i32 %"add.251", ptr %"R8"
  ; IMAD R6, R2, 0x3, R5
  %".5222" = load i32, ptr %"R2"
  %".5223" = load i32, ptr %"R5"
  %"mul.86" = mul i32 %".5222", 3
  %"add.252" = add i32 %"mul.86", %".5223"
  store i32 %"add.252", ptr %"R6"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".5226" = load i32, ptr %"R23"
  %".5227" = load i32, ptr %"R9"
  %"mul.87" = mul i32 %".5226", %".5227"
  %"add.253" = add i32 %"mul.87", %"Arg_3"
  store i32 %"add.253", ptr %"R4"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".5230" = load i32, ptr %"R6"
  %".5231" = load i32, ptr %"R9"
  %"mul.88" = mul i32 %".5230", %".5231"
  %"add.254" = add i32 %"mul.88", %"Arg_4"
  store i32 %"add.254", ptr %"R6"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".5234" = load i32, ptr %"R8"
  %".5235" = load i32, ptr %"R9"
  %"mul.89" = mul i32 %".5234", %".5235"
  %"add.255" = add i32 %"mul.89", %"Arg_4"
  store i32 %"add.255", ptr %"R8"
  ; LDG.E.SYS R13, [R4]
  %".5238" = load i32, ptr %"R4"
  %"zext.556" = zext i32 %".5238" to i64
  %".5239" = load i32, ptr %"R5"
  %"zext.557" = zext i32 %".5239" to i64
  %"shl.294" = shl i64 %"zext.557", 32
  %"or.276" = or i64 %"shl.294", %"zext.556"
  %".5240" = inttoptr i64 %"or.276" to ptr
  %".5241" = ptrtoint ptr %".5240" to i64
  %".5242" = add i64 %".5241", 0
  %"for_LDG.271" = inttoptr i64 %".5242" to ptr
  %".5243" = load float, ptr %"for_LDG.271"
  %".5244" = bitcast ptr %"R13" to ptr
  store float %".5243", ptr %".5244"
  ; LDG.E.SYS R11, [R6]
  %".5247" = load i32, ptr %"R6"
  %"zext.558" = zext i32 %".5247" to i64
  %".5248" = load i32, ptr %"R7"
  %"zext.559" = zext i32 %".5248" to i64
  %"shl.295" = shl i64 %"zext.559", 32
  %"or.277" = or i64 %"shl.295", %"zext.558"
  %".5249" = inttoptr i64 %"or.277" to ptr
  %".5250" = ptrtoint ptr %".5249" to i64
  %".5251" = add i64 %".5250", 0
  %"for_LDG.272" = inttoptr i64 %".5251" to ptr
  %".5252" = load float, ptr %"for_LDG.272"
  %".5253" = bitcast ptr %"R11" to ptr
  store float %".5252", ptr %".5253"
  ; LDG.E.SYS R10, [R8]
  %".5256" = load i32, ptr %"R8"
  %"zext.560" = zext i32 %".5256" to i64
  %".5257" = load i32, ptr %"R9"
  %"zext.561" = zext i32 %".5257" to i64
  %"shl.296" = shl i64 %"zext.561", 32
  %"or.278" = or i64 %"shl.296", %"zext.560"
  %".5258" = inttoptr i64 %"or.278" to ptr
  %".5259" = ptrtoint ptr %".5258" to i64
  %".5260" = add i64 %".5259", 0
  %"for_LDG.273" = inttoptr i64 %".5260" to ptr
  %".5261" = load float, ptr %"for_LDG.273"
  %".5262" = bitcast ptr %"R10" to ptr
  store float %".5261", ptr %".5262"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".5265" = load i32, ptr %"R48"
  %".5266" = load i1, ptr %"PT"
  %"cmp.42" = icmp ne i32 %".5265", 1
  %".5267" = and i1 %"cmp.42", %".5266"
  ; FFMA R44, R11, R13, R44
  %".5269" = load float, ptr %"R11"
  %".5270" = load float, ptr %"R13"
  %".5271" = load float, ptr %"R44"
  %"fmul.225" = fmul float %".5269", %".5270"
  %"fadd.200" = fadd float %"fmul.225", %".5271"
  %".5272" = bitcast ptr %"R44" to ptr
  store float %"fadd.200", ptr %".5272"
  ; FFMA R56, R13, R10, R56
  %".5275" = load float, ptr %"R13"
  %".5276" = load float, ptr %"R10"
  %".5277" = load float, ptr %"R56"
  %"fmul.226" = fmul float %".5275", %".5276"
  %"fadd.201" = fadd float %"fmul.226", %".5277"
  %".5278" = bitcast ptr %"R56" to ptr
  store float %"fadd.201", ptr %".5278"
  ; @!P0 BRA `(.L_x_26)
  %".5281" = load i1, ptr %"P0"
  %".5282" = icmp eq i1 %".5281", 1
  br i1 %".5282", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".5285" = load i32, ptr %"R48"
  %".5286" = load i1, ptr %"PT"
  %"cmp.43" = icmp ne i32 %".5285", 2
  %".5287" = and i1 %"cmp.43", %".5286"
  ; LDG.E.SYS R11, [R6+0x4]
  %".5289" = load i32, ptr %"R6"
  %"zext.562" = zext i32 %".5289" to i64
  %".5290" = load i32, ptr %"R7"
  %"zext.563" = zext i32 %".5290" to i64
  %"shl.297" = shl i64 %"zext.563", 32
  %"or.279" = or i64 %"shl.297", %"zext.562"
  %".5291" = inttoptr i64 %"or.279" to ptr
  %".5292" = ptrtoint ptr %".5291" to i64
  %".5293" = add i64 %".5292", 4
  %"for_LDG.274" = inttoptr i64 %".5293" to ptr
  %".5294" = load float, ptr %"for_LDG.274"
  %".5295" = bitcast ptr %"R11" to ptr
  store float %".5294", ptr %".5295"
  ; LDG.E.SYS R13, [R4+0x4]
  %".5298" = load i32, ptr %"R4"
  %"zext.564" = zext i32 %".5298" to i64
  %".5299" = load i32, ptr %"R5"
  %"zext.565" = zext i32 %".5299" to i64
  %"shl.298" = shl i64 %"zext.565", 32
  %"or.280" = or i64 %"shl.298", %"zext.564"
  %".5300" = inttoptr i64 %"or.280" to ptr
  %".5301" = ptrtoint ptr %".5300" to i64
  %".5302" = add i64 %".5301", 4
  %"for_LDG.275" = inttoptr i64 %".5302" to ptr
  %".5303" = load float, ptr %"for_LDG.275"
  %".5304" = bitcast ptr %"R13" to ptr
  store float %".5303", ptr %".5304"
  ; LDG.E.SYS R10, [R8+0x4]
  %".5307" = load i32, ptr %"R8"
  %"zext.566" = zext i32 %".5307" to i64
  %".5308" = load i32, ptr %"R9"
  %"zext.567" = zext i32 %".5308" to i64
  %"shl.299" = shl i64 %"zext.567", 32
  %"or.281" = or i64 %"shl.299", %"zext.566"
  %".5309" = inttoptr i64 %"or.281" to ptr
  %".5310" = ptrtoint ptr %".5309" to i64
  %".5311" = add i64 %".5310", 4
  %"for_LDG.276" = inttoptr i64 %".5311" to ptr
  %".5312" = load float, ptr %"for_LDG.276"
  %".5313" = bitcast ptr %"R10" to ptr
  store float %".5312", ptr %".5313"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".5316" = load i1, ptr %"P0"
  %".5317" = icmp ne i1 %".5316", 1
  br i1 %".5317", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  %".5320" = load i32, ptr %"R6"
  %"zext.568" = zext i32 %".5320" to i64
  %".5321" = load i32, ptr %"R7"
  %"zext.569" = zext i32 %".5321" to i64
  %"shl.300" = shl i64 %"zext.569", 32
  %"or.282" = or i64 %"shl.300", %"zext.568"
  %".5322" = inttoptr i64 %"or.282" to ptr
  %".5323" = ptrtoint ptr %".5322" to i64
  %".5324" = add i64 %".5323", 8
  %"for_LDG.277" = inttoptr i64 %".5324" to ptr
  %".5325" = load float, ptr %"for_LDG.277"
  %".5326" = bitcast ptr %"R23" to ptr
  store float %".5325", ptr %".5326"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".5331" = load i1, ptr %"P0"
  %".5332" = icmp ne i1 %".5331", 1
  br i1 %".5332", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  %".5335" = load i32, ptr %"R4"
  %"zext.570" = zext i32 %".5335" to i64
  %".5336" = load i32, ptr %"R5"
  %"zext.571" = zext i32 %".5336" to i64
  %"shl.301" = shl i64 %"zext.571", 32
  %"or.283" = or i64 %"shl.301", %"zext.570"
  %".5337" = inttoptr i64 %"or.283" to ptr
  %".5338" = ptrtoint ptr %".5337" to i64
  %".5339" = add i64 %".5338", 8
  %"for_LDG.278" = inttoptr i64 %".5339" to ptr
  %".5340" = load float, ptr %"for_LDG.278"
  %".5341" = bitcast ptr %"R25" to ptr
  store float %".5340", ptr %".5341"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".5346" = load i1, ptr %"P0"
  %".5347" = icmp ne i1 %".5346", 1
  br i1 %".5347", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  %".5350" = load i32, ptr %"R8"
  %"zext.572" = zext i32 %".5350" to i64
  %".5351" = load i32, ptr %"R9"
  %"zext.573" = zext i32 %".5351" to i64
  %"shl.302" = shl i64 %"zext.573", 32
  %"or.284" = or i64 %"shl.302", %"zext.572"
  %".5352" = inttoptr i64 %"or.284" to ptr
  %".5353" = ptrtoint ptr %".5352" to i64
  %".5354" = add i64 %".5353", 8
  %"for_LDG.279" = inttoptr i64 %".5354" to ptr
  %".5355" = load float, ptr %"for_LDG.279"
  %".5356" = bitcast ptr %"R12" to ptr
  store float %".5355", ptr %".5356"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".5361" = load float, ptr %"R11"
  %".5362" = load float, ptr %"R13"
  %".5363" = load float, ptr %"R44"
  %"fmul.227" = fmul float %".5361", %".5362"
  %"fadd.202" = fadd float %"fmul.227", %".5363"
  %".5364" = bitcast ptr %"R44" to ptr
  store float %"fadd.202", ptr %".5364"
  ; FFMA R56, R13, R10, R56
  %".5367" = load float, ptr %"R13"
  %".5368" = load float, ptr %"R10"
  %".5369" = load float, ptr %"R56"
  %"fmul.228" = fmul float %".5367", %".5368"
  %"fadd.203" = fadd float %"fmul.228", %".5369"
  %".5370" = bitcast ptr %"R56" to ptr
  store float %"fadd.203", ptr %".5370"
  ; @P0 FFMA R44, R23, R25, R44
  %".5373" = load i1, ptr %"P0"
  %".5374" = icmp ne i1 %".5373", 1
  br i1 %".5374", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".5377" = load float, ptr %"R23"
  %".5378" = load float, ptr %"R25"
  %".5379" = load float, ptr %"R44"
  %"fmul.229" = fmul float %".5377", %".5378"
  %"fadd.204" = fadd float %"fmul.229", %".5379"
  %".5380" = bitcast ptr %"R44" to ptr
  store float %"fadd.204", ptr %".5380"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".5385" = load i1, ptr %"P0"
  %".5386" = icmp ne i1 %".5385", 1
  br i1 %".5386", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".5389" = load float, ptr %"R25"
  %".5390" = load float, ptr %"R12"
  %".5391" = load float, ptr %"R56"
  %"fmul.230" = fmul float %".5389", %".5390"
  %"fadd.205" = fadd float %"fmul.230", %".5391"
  %".5392" = bitcast ptr %"R56" to ptr
  store float %"fadd.205", ptr %".5392"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  %".5397" = load i32, ptr %"R26"
  %"zext.574" = zext i32 %".5397" to i64
  %"zext.575" = zext i32 0 to i64
  %"shl.303" = shl i64 %"zext.575", 32
  %"or.285" = or i64 %"shl.303", %"zext.574"
  %".5398" = inttoptr i64 %"or.285" to ptr
  %".5399" = ptrtoint ptr %".5398" to i64
  %".5400" = add i64 %".5399", 0
  %"for_LDG.280" = inttoptr i64 %".5400" to ptr
  %".5401" = load float, ptr %"for_LDG.280"
  %".5402" = bitcast ptr %"R5" to ptr
  store float %".5401", ptr %".5402"
  ; MOV R4, 0x3bbb989d
  %".5405" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".5405"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  %".5409" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".5409"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".5413" = load float, ptr %"R5"
  %".5414" = load float, ptr %"R44"
  %"fadd.206" = fadd float %".5413", %".5414"
  %".5415" = bitcast ptr %"R5" to ptr
  store float %"fadd.206", ptr %".5415"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".5418" = load float, ptr %"R5"
  %".5419" = fneg float %".5418"
  %".5420" = load float, ptr %"R4"
  %"fmul.231" = fmul float %".5419", %".5420"
  %"fadd.207" = fadd float %"fmul.231", 0x3fe0000000000000
  %".5421" = bitcast ptr %"R4" to ptr
  store float %"fadd.207", ptr %".5421"
  ; FFMA.RM R4, R4, R7, 12582913
  %".5424" = load float, ptr %"R4"
  %".5425" = load float, ptr %"R7"
  %"fmul.232" = fmul float %".5424", %".5425"
  %"fadd.208" = fadd float %"fmul.232", 0x4168000020000000
  %".5426" = bitcast ptr %"R4" to ptr
  store float %"fadd.208", ptr %".5426"
  ; FADD R6, R4.reuse, -12583039
  %".5429" = load float, ptr %"R4"
  %"fadd.209" = fadd float %".5429", 0xc168000fe0000000
  %".5430" = bitcast ptr %"R6" to ptr
  store float %"fadd.209", ptr %".5430"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".5433" = icmp ult i32 23, 32
  %"SHF_min.4" = select  i1 %".5433", i32 23, i32 32
  %".5434" = load i32, ptr %"R4"
  %"zext.576" = zext i32 0 to i64
  %"zext.577" = zext i32 %".5434" to i64
  %"zext.578" = zext i32 23 to i64
  %"shl.304" = shl i64 %"zext.576", 32
  %"or.286" = or i64 %"shl.304", %"zext.577"
  %"shl.305" = shl i64 %"or.286", %"zext.578"
  %"and.2" = and i64 %"shl.305", 4294967295
  %"trunc32.4" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.4", ptr %"R4"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".5437" = load float, ptr %"R5"
  %".5438" = fneg float %".5437"
  %".5439" = load float, ptr %"R6"
  %".5440" = fneg float %".5439"
  %"fmul.233" = fmul float %".5438", 0x3ff7154760000000
  %"fadd.210" = fadd float %"fmul.233", %".5440"
  %".5441" = bitcast ptr %"R6" to ptr
  store float %"fadd.210", ptr %".5441"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".5444" = load float, ptr %"R5"
  %".5445" = fneg float %".5444"
  %".5446" = load float, ptr %"R6"
  %"fmul.234" = fmul float %".5445", 0x3e54ae0c00000000
  %"fadd.211" = fadd float %"fmul.234", %".5446"
  %".5447" = bitcast ptr %"R6" to ptr
  store float %"fadd.211", ptr %".5447"
  ; MUFU.EX2 R5, R6
  %".5450" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".5450")
  %".5451" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".5451"
  ; FFMA R24, R4, R5, 1
  %".5454" = load float, ptr %"R4"
  %".5455" = load float, ptr %"R5"
  %"fmul.235" = fmul float %".5454", %".5455"
  %"fadd.212" = fadd float %"fmul.235", 0x3ff0000000000000
  %".5456" = bitcast ptr %"R24" to ptr
  store float %"fadd.212", ptr %".5456"
  ; IADD3 R4, R24, 0x1800000, RZ
  %".5459" = load i32, ptr %"R24"
  %"add.256" = add i32 %".5459", 25165824
  %"add.257" = add i32 %"add.256", 0
  store i32 %"add.257", ptr %"R4"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".5462" = load i32, ptr %"R4"
  %".5463" = and i32 %".5462", 2139095040
  store i32 %".5463", ptr %"R4"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".5466" = load i32, ptr %"R4"
  %".5467" = load i1, ptr %"PT"
  %"cmp.44" = icmp sgt i32 %".5466", 33554431
  %".5468" = and i1 %"cmp.44", %".5467"
  ; @P0 BRA `(.L_x_33)
  %".5470" = load i1, ptr %"P0"
  %".5471" = icmp ne i1 %".5470", 1
  br i1 %".5471", label %".L_x_33", label %".L_x_26_split_0x3910"
.L_x_26_split_0x3910:
  ; MOV R10, 0x3930
  store i32 14640, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.2" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; BRA `(.L_x_34)
  br label %".L_x_34"
.L_x_33:
  ; MUFU.RCP R22, R24
  %".5479" = load float, ptr %"R24"
  %".5480" = fdiv float 0x3ff0000000000000, %".5479"
  %".5481" = bitcast ptr %"R22" to ptr
  store float %".5480", ptr %".5481"
  ; FFMA R4, R24, R22, -1
  %".5484" = load float, ptr %"R24"
  %".5485" = load float, ptr %"R22"
  %"fmul.236" = fmul float %".5484", %".5485"
  %"fadd.213" = fadd float %"fmul.236", 0xbff0000000000000
  %".5486" = bitcast ptr %"R4" to ptr
  store float %"fadd.213", ptr %".5486"
  ; FADD.FTZ R5, -R4, -RZ
  %".5489" = load float, ptr %"R4"
  %".5490" = fneg float %".5489"
  %"fadd.214" = fadd float %".5490",              0x0
  %".5491" = bitcast ptr %"R5" to ptr
  store float %"fadd.214", ptr %".5491"
  ; FFMA R22, R22, R5, R22
  %".5494" = load float, ptr %"R22"
  %".5495" = load float, ptr %"R5"
  %".5496" = load float, ptr %"R22"
  %"fmul.237" = fmul float %".5494", %".5495"
  %"fadd.215" = fadd float %"fmul.237", %".5496"
  %".5497" = bitcast ptr %"R22" to ptr
  store float %"fadd.215", ptr %".5497"
  br label %".L_x_34"
.L_x_34:
  ; BSYNC B0
  br label %".L_x_32"
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  %".5503" = load i32, ptr %"R32"
  %"zext.579" = zext i32 %".5503" to i64
  %".5504" = load i32, ptr %"R33"
  %"zext.580" = zext i32 %".5504" to i64
  %"shl.306" = shl i64 %"zext.580", 32
  %"or.287" = or i64 %"shl.306", %"zext.579"
  %".5505" = inttoptr i64 %"or.287" to ptr
  %".5506" = ptrtoint ptr %".5505" to i64
  %".5507" = add i64 %".5506", 0
  %"for_LDG.281" = inttoptr i64 %".5507" to ptr
  %".5508" = load float, ptr %"for_LDG.281"
  %".5509" = bitcast ptr %"R5" to ptr
  store float %".5508", ptr %".5509"
  ; MOV R4, 0x3bbb989d
  %".5512" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".5512"
  ; MOV R7, 0x437c0000
  %".5515" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".5515"
  ; FADD R5, R5, R56
  %".5518" = load float, ptr %"R5"
  %".5519" = load float, ptr %"R56"
  %"fadd.216" = fadd float %".5518", %".5519"
  %".5520" = bitcast ptr %"R5" to ptr
  store float %"fadd.216", ptr %".5520"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".5523" = load float, ptr %"R5"
  %".5524" = fneg float %".5523"
  %".5525" = load float, ptr %"R4"
  %"fmul.238" = fmul float %".5524", %".5525"
  %"fadd.217" = fadd float %"fmul.238", 0x3fe0000000000000
  %".5526" = bitcast ptr %"R4" to ptr
  store float %"fadd.217", ptr %".5526"
  ; FFMA.RM R4, R4, R7, 12582913
  %".5529" = load float, ptr %"R4"
  %".5530" = load float, ptr %"R7"
  %"fmul.239" = fmul float %".5529", %".5530"
  %"fadd.218" = fadd float %"fmul.239", 0x4168000020000000
  %".5531" = bitcast ptr %"R4" to ptr
  store float %"fadd.218", ptr %".5531"
  ; FADD R6, R4.reuse, -12583039
  %".5534" = load float, ptr %"R4"
  %"fadd.219" = fadd float %".5534", 0xc168000fe0000000
  %".5535" = bitcast ptr %"R6" to ptr
  store float %"fadd.219", ptr %".5535"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".5538" = icmp ult i32 23, 32
  %"SHF_min.5" = select  i1 %".5538", i32 23, i32 32
  %".5539" = load i32, ptr %"R4"
  %"zext.581" = zext i32 0 to i64
  %"zext.582" = zext i32 %".5539" to i64
  %"zext.583" = zext i32 23 to i64
  %"shl.307" = shl i64 %"zext.581", 32
  %"or.288" = or i64 %"shl.307", %"zext.582"
  %"shl.308" = shl i64 %"or.288", %"zext.583"
  %"and.3" = and i64 %"shl.308", 4294967295
  %"trunc32.5" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.5", ptr %"R23"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".5542" = load float, ptr %"R5"
  %".5543" = fneg float %".5542"
  %".5544" = load float, ptr %"R6"
  %".5545" = fneg float %".5544"
  %"fmul.240" = fmul float %".5543", 0x3ff7154760000000
  %"fadd.220" = fadd float %"fmul.240", %".5545"
  %".5546" = bitcast ptr %"R6" to ptr
  store float %"fadd.220", ptr %".5546"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".5549" = load float, ptr %"R5"
  %".5550" = fneg float %".5549"
  %".5551" = load float, ptr %"R6"
  %"fmul.241" = fmul float %".5550", 0x3e54ae0c00000000
  %"fadd.221" = fadd float %"fmul.241", %".5551"
  %".5552" = bitcast ptr %"R6" to ptr
  store float %"fadd.221", ptr %".5552"
  ; MUFU.EX2 R6, R6
  %".5555" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".5555")
  %".5556" = bitcast ptr %"R6" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".5556"
  ; FFMA R23, R23, R6, 1
  %".5559" = load float, ptr %"R23"
  %".5560" = load float, ptr %"R6"
  %"fmul.242" = fmul float %".5559", %".5560"
  %"fadd.222" = fadd float %"fmul.242", 0x3ff0000000000000
  %".5561" = bitcast ptr %"R23" to ptr
  store float %"fadd.222", ptr %".5561"
  ; @!P4 BRA `(.L_x_35)
  %".5564" = load i1, ptr %"P4"
  %".5565" = icmp eq i1 %".5564", 1
  br i1 %".5565", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".5568" = load i32, ptr %"R18"
  %".5569" = load i1, ptr %"PT"
  %"cmp.45" = icmp sge i32 %".5568", 3
  %".5570" = and i1 %"cmp.45", %".5569"
  ; MOV R34, RZ
  %".5572" = load i32, ptr %"RZ"
  store i32 %".5572", ptr %"R34"
  ; @!P0 BRA `(.L_x_36)
  %".5575" = load i1, ptr %"P0"
  %".5576" = icmp eq i1 %".5575", 1
  br i1 %".5576", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".5579" = load i32, ptr %"R20"
  %".5580" = load i1, ptr %"PT"
  %"cmp.46" = icmp sgt i32 %".5579", 0
  %".5581" = and i1 %"cmp.46", %".5580"
  ; MOV R34, RZ
  %".5583" = load i32, ptr %"RZ"
  store i32 %".5583", ptr %"R34"
  ; MOV R35, R20
  %".5586" = load i32, ptr %"R20"
  store i32 %".5586", ptr %"R35"
  ; @!P0 BRA `(.L_x_37)
  %".5589" = load i1, ptr %"P0"
  %".5590" = icmp eq i1 %".5589", 1
  br i1 %".5590", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".5593" = load i32, ptr %"R35"
  %".5594" = load i1, ptr %"PT"
  %"cmp.47" = icmp sgt i32 %".5593", 12
  %".5595" = and i1 %"cmp.47", %".5594"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".5597" = and i1 1, 1
  %".5598" = or i1 %".5597", 1
  ; @!P1 BRA `(.L_x_38)
  %".5600" = load i1, ptr %"P1"
  %".5601" = icmp eq i1 %".5600", 1
  br i1 %".5601", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".5604" = xor i1 1, 1
  %".5605" = and i1 %".5604", 1
  %".5606" = and i1 %".5605", 1
  br label %".L_x_39"
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41"
  ; IADD3 R10, R3, R34, RZ
  %".5611" = load i32, ptr %"R3"
  %".5612" = load i32, ptr %"R34"
  %"add.258" = add i32 %".5611", %".5612"
  %"add.259" = add i32 %"add.258", 0
  store i32 %"add.259", ptr %"R10"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".5615" = load i32, ptr %"R34"
  %".5616" = load i32, ptr %"R41"
  %"mul.90" = mul i32 %".5615", %".5616"
  %"add.260" = add i32 %"mul.90", %"Arg_3"
  store i32 %"add.260", ptr %"R12"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".5619" = load i32, ptr %"R10"
  %".5620" = load i32, ptr %"R41"
  %"mul.91" = mul i32 %".5619", %".5620"
  %"add.261" = add i32 %"mul.91", %"Arg_4"
  store i32 %"add.261", ptr %"R10"
  ; IADD3 R4, R34, 0x4, RZ
  %".5623" = load i32, ptr %"R34"
  %"add.262" = add i32 %".5623", 4
  %"add.263" = add i32 %"add.262", 0
  store i32 %"add.263", ptr %"R4"
  ; LDG.E.SYS R25, [R12]
  %".5626" = load i32, ptr %"R12"
  %"zext.584" = zext i32 %".5626" to i64
  %".5627" = load i32, ptr %"R13"
  %"zext.585" = zext i32 %".5627" to i64
  %"shl.309" = shl i64 %"zext.585", 32
  %"or.289" = or i64 %"shl.309", %"zext.584"
  %".5628" = inttoptr i64 %"or.289" to ptr
  %".5629" = ptrtoint ptr %".5628" to i64
  %".5630" = add i64 %".5629", 0
  %"for_LDG.282" = inttoptr i64 %".5630" to ptr
  %".5631" = load float, ptr %"for_LDG.282"
  %".5632" = bitcast ptr %"R25" to ptr
  store float %".5631", ptr %".5632"
  ; IADD3 R6, R3, R4, RZ
  %".5635" = load i32, ptr %"R3"
  %".5636" = load i32, ptr %"R4"
  %"add.264" = add i32 %".5635", %".5636"
  %"add.265" = add i32 %"add.264", 0
  store i32 %"add.265", ptr %"R6"
  ; LDG.E.SYS R36, [R10]
  %".5639" = load i32, ptr %"R10"
  %"zext.586" = zext i32 %".5639" to i64
  %".5640" = load i32, ptr %"R11"
  %"zext.587" = zext i32 %".5640" to i64
  %"shl.310" = shl i64 %"zext.587", 32
  %"or.290" = or i64 %"shl.310", %"zext.586"
  %".5641" = inttoptr i64 %"or.290" to ptr
  %".5642" = ptrtoint ptr %".5641" to i64
  %".5643" = add i64 %".5642", 0
  %"for_LDG.283" = inttoptr i64 %".5643" to ptr
  %".5644" = load float, ptr %"for_LDG.283"
  %".5645" = bitcast ptr %"R36" to ptr
  store float %".5644", ptr %".5645"
  ; LDG.E.SYS R37, [R12+0x4]
  %".5648" = load i32, ptr %"R12"
  %"zext.588" = zext i32 %".5648" to i64
  %".5649" = load i32, ptr %"R13"
  %"zext.589" = zext i32 %".5649" to i64
  %"shl.311" = shl i64 %"zext.589", 32
  %"or.291" = or i64 %"shl.311", %"zext.588"
  %".5650" = inttoptr i64 %"or.291" to ptr
  %".5651" = ptrtoint ptr %".5650" to i64
  %".5652" = add i64 %".5651", 4
  %"for_LDG.284" = inttoptr i64 %".5652" to ptr
  %".5653" = load float, ptr %"for_LDG.284"
  %".5654" = bitcast ptr %"R37" to ptr
  store float %".5653", ptr %".5654"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".5657" = load i32, ptr %"R4"
  %".5658" = load i32, ptr %"R41"
  %"mul.92" = mul i32 %".5657", %".5658"
  %"add.266" = add i32 %"mul.92", %"Arg_3"
  store i32 %"add.266", ptr %"R4"
  ; LDG.E.SYS R24, [R10+0x4]
  %".5661" = load i32, ptr %"R10"
  %"zext.590" = zext i32 %".5661" to i64
  %".5662" = load i32, ptr %"R11"
  %"zext.591" = zext i32 %".5662" to i64
  %"shl.312" = shl i64 %"zext.591", 32
  %"or.292" = or i64 %"shl.312", %"zext.590"
  %".5663" = inttoptr i64 %"or.292" to ptr
  %".5664" = ptrtoint ptr %".5663" to i64
  %".5665" = add i64 %".5664", 4
  %"for_LDG.285" = inttoptr i64 %".5665" to ptr
  %".5666" = load float, ptr %"for_LDG.285"
  %".5667" = bitcast ptr %"R24" to ptr
  store float %".5666", ptr %".5667"
  ; LDG.E.SYS R39, [R12+0x8]
  %".5670" = load i32, ptr %"R12"
  %"zext.592" = zext i32 %".5670" to i64
  %".5671" = load i32, ptr %"R13"
  %"zext.593" = zext i32 %".5671" to i64
  %"shl.313" = shl i64 %"zext.593", 32
  %"or.293" = or i64 %"shl.313", %"zext.592"
  %".5672" = inttoptr i64 %"or.293" to ptr
  %".5673" = ptrtoint ptr %".5672" to i64
  %".5674" = add i64 %".5673", 8
  %"for_LDG.286" = inttoptr i64 %".5674" to ptr
  %".5675" = load float, ptr %"for_LDG.286"
  %".5676" = bitcast ptr %"R39" to ptr
  store float %".5675", ptr %".5676"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".5679" = load i32, ptr %"R6"
  %".5680" = load i32, ptr %"R41"
  %"mul.93" = mul i32 %".5679", %".5680"
  %"add.267" = add i32 %"mul.93", %"Arg_4"
  store i32 %"add.267", ptr %"R6"
  ; LDG.E.SYS R38, [R10+0x8]
  %".5683" = load i32, ptr %"R10"
  %"zext.594" = zext i32 %".5683" to i64
  %".5684" = load i32, ptr %"R11"
  %"zext.595" = zext i32 %".5684" to i64
  %"shl.314" = shl i64 %"zext.595", 32
  %"or.294" = or i64 %"shl.314", %"zext.594"
  %".5685" = inttoptr i64 %"or.294" to ptr
  %".5686" = ptrtoint ptr %".5685" to i64
  %".5687" = add i64 %".5686", 8
  %"for_LDG.287" = inttoptr i64 %".5687" to ptr
  %".5688" = load float, ptr %"for_LDG.287"
  %".5689" = bitcast ptr %"R38" to ptr
  store float %".5688", ptr %".5689"
  ; LDG.E.SYS R43, [R12+0xc]
  %".5692" = load i32, ptr %"R12"
  %"zext.596" = zext i32 %".5692" to i64
  %".5693" = load i32, ptr %"R13"
  %"zext.597" = zext i32 %".5693" to i64
  %"shl.315" = shl i64 %"zext.597", 32
  %"or.295" = or i64 %"shl.315", %"zext.596"
  %".5694" = inttoptr i64 %"or.295" to ptr
  %".5695" = ptrtoint ptr %".5694" to i64
  %".5696" = add i64 %".5695", 12
  %"for_LDG.288" = inttoptr i64 %".5696" to ptr
  %".5697" = load float, ptr %"for_LDG.288"
  %".5698" = bitcast ptr %"R43" to ptr
  store float %".5697", ptr %".5698"
  ; IADD3 R8, R34, 0x8, RZ
  %".5701" = load i32, ptr %"R34"
  %"add.268" = add i32 %".5701", 8
  %"add.269" = add i32 %"add.268", 0
  store i32 %"add.269", ptr %"R8"
  ; LDG.E.SYS R46, [R10+0xc]
  %".5704" = load i32, ptr %"R10"
  %"zext.598" = zext i32 %".5704" to i64
  %".5705" = load i32, ptr %"R11"
  %"zext.599" = zext i32 %".5705" to i64
  %"shl.316" = shl i64 %"zext.599", 32
  %"or.296" = or i64 %"shl.316", %"zext.598"
  %".5706" = inttoptr i64 %"or.296" to ptr
  %".5707" = ptrtoint ptr %".5706" to i64
  %".5708" = add i64 %".5707", 12
  %"for_LDG.289" = inttoptr i64 %".5708" to ptr
  %".5709" = load float, ptr %"for_LDG.289"
  %".5710" = bitcast ptr %"R46" to ptr
  store float %".5709", ptr %".5710"
  ; LDG.E.SYS R51, [R4]
  %".5713" = load i32, ptr %"R4"
  %"zext.600" = zext i32 %".5713" to i64
  %".5714" = load i32, ptr %"R5"
  %"zext.601" = zext i32 %".5714" to i64
  %"shl.317" = shl i64 %"zext.601", 32
  %"or.297" = or i64 %"shl.317", %"zext.600"
  %".5715" = inttoptr i64 %"or.297" to ptr
  %".5716" = ptrtoint ptr %".5715" to i64
  %".5717" = add i64 %".5716", 0
  %"for_LDG.290" = inttoptr i64 %".5717" to ptr
  %".5718" = load float, ptr %"for_LDG.290"
  %".5719" = bitcast ptr %"R51" to ptr
  store float %".5718", ptr %".5719"
  ; IADD3 R50, R3, R8, RZ
  %".5722" = load i32, ptr %"R3"
  %".5723" = load i32, ptr %"R8"
  %"add.270" = add i32 %".5722", %".5723"
  %"add.271" = add i32 %"add.270", 0
  store i32 %"add.271", ptr %"R50"
  ; LDG.E.SYS R44, [R6]
  %".5726" = load i32, ptr %"R6"
  %"zext.602" = zext i32 %".5726" to i64
  %".5727" = load i32, ptr %"R7"
  %"zext.603" = zext i32 %".5727" to i64
  %"shl.318" = shl i64 %"zext.603", 32
  %"or.298" = or i64 %"shl.318", %"zext.602"
  %".5728" = inttoptr i64 %"or.298" to ptr
  %".5729" = ptrtoint ptr %".5728" to i64
  %".5730" = add i64 %".5729", 0
  %"for_LDG.291" = inttoptr i64 %".5730" to ptr
  %".5731" = load float, ptr %"for_LDG.291"
  %".5732" = bitcast ptr %"R44" to ptr
  store float %".5731", ptr %".5732"
  ; LDG.E.SYS R47, [R4+0x4]
  %".5735" = load i32, ptr %"R4"
  %"zext.604" = zext i32 %".5735" to i64
  %".5736" = load i32, ptr %"R5"
  %"zext.605" = zext i32 %".5736" to i64
  %"shl.319" = shl i64 %"zext.605", 32
  %"or.299" = or i64 %"shl.319", %"zext.604"
  %".5737" = inttoptr i64 %"or.299" to ptr
  %".5738" = ptrtoint ptr %".5737" to i64
  %".5739" = add i64 %".5738", 4
  %"for_LDG.292" = inttoptr i64 %".5739" to ptr
  %".5740" = load float, ptr %"for_LDG.292"
  %".5741" = bitcast ptr %"R47" to ptr
  store float %".5740", ptr %".5741"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".5744" = load i32, ptr %"R8"
  %".5745" = load i32, ptr %"R41"
  %"mul.94" = mul i32 %".5744", %".5745"
  %"add.272" = add i32 %"mul.94", %"Arg_3"
  store i32 %"add.272", ptr %"R8"
  ; LDG.E.SYS R42, [R6+0x4]
  %".5748" = load i32, ptr %"R6"
  %"zext.606" = zext i32 %".5748" to i64
  %".5749" = load i32, ptr %"R7"
  %"zext.607" = zext i32 %".5749" to i64
  %"shl.320" = shl i64 %"zext.607", 32
  %"or.300" = or i64 %"shl.320", %"zext.606"
  %".5750" = inttoptr i64 %"or.300" to ptr
  %".5751" = ptrtoint ptr %".5750" to i64
  %".5752" = add i64 %".5751", 4
  %"for_LDG.293" = inttoptr i64 %".5752" to ptr
  %".5753" = load float, ptr %"for_LDG.293"
  %".5754" = bitcast ptr %"R42" to ptr
  store float %".5753", ptr %".5754"
  ; LDG.E.SYS R45, [R4+0x8]
  %".5757" = load i32, ptr %"R4"
  %"zext.608" = zext i32 %".5757" to i64
  %".5758" = load i32, ptr %"R5"
  %"zext.609" = zext i32 %".5758" to i64
  %"shl.321" = shl i64 %"zext.609", 32
  %"or.301" = or i64 %"shl.321", %"zext.608"
  %".5759" = inttoptr i64 %"or.301" to ptr
  %".5760" = ptrtoint ptr %".5759" to i64
  %".5761" = add i64 %".5760", 8
  %"for_LDG.294" = inttoptr i64 %".5761" to ptr
  %".5762" = load float, ptr %"for_LDG.294"
  %".5763" = bitcast ptr %"R45" to ptr
  store float %".5762", ptr %".5763"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".5766" = load i32, ptr %"R50"
  %".5767" = load i32, ptr %"R41"
  %"mul.95" = mul i32 %".5766", %".5767"
  %"add.273" = add i32 %"mul.95", %"Arg_4"
  store i32 %"add.273", ptr %"R10"
  ; LDG.E.SYS R40, [R6+0x8]
  %".5770" = load i32, ptr %"R6"
  %"zext.610" = zext i32 %".5770" to i64
  %".5771" = load i32, ptr %"R7"
  %"zext.611" = zext i32 %".5771" to i64
  %"shl.322" = shl i64 %"zext.611", 32
  %"or.302" = or i64 %"shl.322", %"zext.610"
  %".5772" = inttoptr i64 %"or.302" to ptr
  %".5773" = ptrtoint ptr %".5772" to i64
  %".5774" = add i64 %".5773", 8
  %"for_LDG.295" = inttoptr i64 %".5774" to ptr
  %".5775" = load float, ptr %"for_LDG.295"
  %".5776" = bitcast ptr %"R40" to ptr
  store float %".5775", ptr %".5776"
  ; LDG.E.SYS R53, [R4+0xc]
  %".5779" = load i32, ptr %"R4"
  %"zext.612" = zext i32 %".5779" to i64
  %".5780" = load i32, ptr %"R5"
  %"zext.613" = zext i32 %".5780" to i64
  %"shl.323" = shl i64 %"zext.613", 32
  %"or.303" = or i64 %"shl.323", %"zext.612"
  %".5781" = inttoptr i64 %"or.303" to ptr
  %".5782" = ptrtoint ptr %".5781" to i64
  %".5783" = add i64 %".5782", 12
  %"for_LDG.296" = inttoptr i64 %".5783" to ptr
  %".5784" = load float, ptr %"for_LDG.296"
  %".5785" = bitcast ptr %"R53" to ptr
  store float %".5784", ptr %".5785"
  ; IADD3 R12, R34, 0xc, RZ
  %".5788" = load i32, ptr %"R34"
  %"add.274" = add i32 %".5788", 12
  %"add.275" = add i32 %"add.274", 0
  store i32 %"add.275", ptr %"R12"
  ; LDG.E.SYS R54, [R6+0xc]
  %".5791" = load i32, ptr %"R6"
  %"zext.614" = zext i32 %".5791" to i64
  %".5792" = load i32, ptr %"R7"
  %"zext.615" = zext i32 %".5792" to i64
  %"shl.324" = shl i64 %"zext.615", 32
  %"or.304" = or i64 %"shl.324", %"zext.614"
  %".5793" = inttoptr i64 %"or.304" to ptr
  %".5794" = ptrtoint ptr %".5793" to i64
  %".5795" = add i64 %".5794", 12
  %"for_LDG.297" = inttoptr i64 %".5795" to ptr
  %".5796" = load float, ptr %"for_LDG.297"
  %".5797" = bitcast ptr %"R54" to ptr
  store float %".5796", ptr %".5797"
  ; LDG.E.SYS R59, [R8]
  %".5800" = load i32, ptr %"R8"
  %"zext.616" = zext i32 %".5800" to i64
  %".5801" = load i32, ptr %"R9"
  %"zext.617" = zext i32 %".5801" to i64
  %"shl.325" = shl i64 %"zext.617", 32
  %"or.305" = or i64 %"shl.325", %"zext.616"
  %".5802" = inttoptr i64 %"or.305" to ptr
  %".5803" = ptrtoint ptr %".5802" to i64
  %".5804" = add i64 %".5803", 0
  %"for_LDG.298" = inttoptr i64 %".5804" to ptr
  %".5805" = load float, ptr %"for_LDG.298"
  %".5806" = bitcast ptr %"R59" to ptr
  store float %".5805", ptr %".5806"
  ; IADD3 R58, R3, R12, RZ
  %".5809" = load i32, ptr %"R3"
  %".5810" = load i32, ptr %"R12"
  %"add.276" = add i32 %".5809", %".5810"
  %"add.277" = add i32 %"add.276", 0
  store i32 %"add.277", ptr %"R58"
  ; LDG.E.SYS R52, [R10]
  %".5813" = load i32, ptr %"R10"
  %"zext.618" = zext i32 %".5813" to i64
  %".5814" = load i32, ptr %"R11"
  %"zext.619" = zext i32 %".5814" to i64
  %"shl.326" = shl i64 %"zext.619", 32
  %"or.306" = or i64 %"shl.326", %"zext.618"
  %".5815" = inttoptr i64 %"or.306" to ptr
  %".5816" = ptrtoint ptr %".5815" to i64
  %".5817" = add i64 %".5816", 0
  %"for_LDG.299" = inttoptr i64 %".5817" to ptr
  %".5818" = load float, ptr %"for_LDG.299"
  %".5819" = bitcast ptr %"R52" to ptr
  store float %".5818", ptr %".5819"
  ; LDG.E.SYS R57, [R8+0x4]
  %".5822" = load i32, ptr %"R8"
  %"zext.620" = zext i32 %".5822" to i64
  %".5823" = load i32, ptr %"R9"
  %"zext.621" = zext i32 %".5823" to i64
  %"shl.327" = shl i64 %"zext.621", 32
  %"or.307" = or i64 %"shl.327", %"zext.620"
  %".5824" = inttoptr i64 %"or.307" to ptr
  %".5825" = ptrtoint ptr %".5824" to i64
  %".5826" = add i64 %".5825", 4
  %"for_LDG.300" = inttoptr i64 %".5826" to ptr
  %".5827" = load float, ptr %"for_LDG.300"
  %".5828" = bitcast ptr %"R57" to ptr
  store float %".5827", ptr %".5828"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".5831" = load i32, ptr %"R12"
  %".5832" = load i32, ptr %"R41"
  %"mul.96" = mul i32 %".5831", %".5832"
  %"add.278" = add i32 %"mul.96", %"Arg_3"
  store i32 %"add.278", ptr %"R12"
  ; LDG.E.SYS R50, [R10+0x4]
  %".5835" = load i32, ptr %"R10"
  %"zext.622" = zext i32 %".5835" to i64
  %".5836" = load i32, ptr %"R11"
  %"zext.623" = zext i32 %".5836" to i64
  %"shl.328" = shl i64 %"zext.623", 32
  %"or.308" = or i64 %"shl.328", %"zext.622"
  %".5837" = inttoptr i64 %"or.308" to ptr
  %".5838" = ptrtoint ptr %".5837" to i64
  %".5839" = add i64 %".5838", 4
  %"for_LDG.301" = inttoptr i64 %".5839" to ptr
  %".5840" = load float, ptr %"for_LDG.301"
  %".5841" = bitcast ptr %"R50" to ptr
  store float %".5840", ptr %".5841"
  ; LDG.E.SYS R55, [R8+0x8]
  %".5844" = load i32, ptr %"R8"
  %"zext.624" = zext i32 %".5844" to i64
  %".5845" = load i32, ptr %"R9"
  %"zext.625" = zext i32 %".5845" to i64
  %"shl.329" = shl i64 %"zext.625", 32
  %"or.309" = or i64 %"shl.329", %"zext.624"
  %".5846" = inttoptr i64 %"or.309" to ptr
  %".5847" = ptrtoint ptr %".5846" to i64
  %".5848" = add i64 %".5847", 8
  %"for_LDG.302" = inttoptr i64 %".5848" to ptr
  %".5849" = load float, ptr %"for_LDG.302"
  %".5850" = bitcast ptr %"R55" to ptr
  store float %".5849", ptr %".5850"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".5853" = load i32, ptr %"R58"
  %".5854" = load i32, ptr %"R41"
  %"mul.97" = mul i32 %".5853", %".5854"
  %"add.279" = add i32 %"mul.97", %"Arg_4"
  store i32 %"add.279", ptr %"R4"
  ; LDG.E.SYS R61, [R8+0xc]
  %".5857" = load i32, ptr %"R8"
  %"zext.626" = zext i32 %".5857" to i64
  %".5858" = load i32, ptr %"R9"
  %"zext.627" = zext i32 %".5858" to i64
  %"shl.330" = shl i64 %"zext.627", 32
  %"or.310" = or i64 %"shl.330", %"zext.626"
  %".5859" = inttoptr i64 %"or.310" to ptr
  %".5860" = ptrtoint ptr %".5859" to i64
  %".5861" = add i64 %".5860", 12
  %"for_LDG.303" = inttoptr i64 %".5861" to ptr
  %".5862" = load float, ptr %"for_LDG.303"
  %".5863" = bitcast ptr %"R61" to ptr
  store float %".5862", ptr %".5863"
  ; LDG.E.SYS R56, [R10+0x8]
  %".5866" = load i32, ptr %"R10"
  %"zext.628" = zext i32 %".5866" to i64
  %".5867" = load i32, ptr %"R11"
  %"zext.629" = zext i32 %".5867" to i64
  %"shl.331" = shl i64 %"zext.629", 32
  %"or.311" = or i64 %"shl.331", %"zext.628"
  %".5868" = inttoptr i64 %"or.311" to ptr
  %".5869" = ptrtoint ptr %".5868" to i64
  %".5870" = add i64 %".5869", 8
  %"for_LDG.304" = inttoptr i64 %".5870" to ptr
  %".5871" = load float, ptr %"for_LDG.304"
  %".5872" = bitcast ptr %"R56" to ptr
  store float %".5871", ptr %".5872"
  ; LDG.E.SYS R58, [R10+0xc]
  %".5875" = load i32, ptr %"R10"
  %"zext.630" = zext i32 %".5875" to i64
  %".5876" = load i32, ptr %"R11"
  %"zext.631" = zext i32 %".5876" to i64
  %"shl.332" = shl i64 %"zext.631", 32
  %"or.312" = or i64 %"shl.332", %"zext.630"
  %".5877" = inttoptr i64 %"or.312" to ptr
  %".5878" = ptrtoint ptr %".5877" to i64
  %".5879" = add i64 %".5878", 12
  %"for_LDG.305" = inttoptr i64 %".5879" to ptr
  %".5880" = load float, ptr %"for_LDG.305"
  %".5881" = bitcast ptr %"R58" to ptr
  store float %".5880", ptr %".5881"
  ; LDG.E.SYS R6, [R12]
  %".5884" = load i32, ptr %"R12"
  %"zext.632" = zext i32 %".5884" to i64
  %".5885" = load i32, ptr %"R13"
  %"zext.633" = zext i32 %".5885" to i64
  %"shl.333" = shl i64 %"zext.633", 32
  %"or.313" = or i64 %"shl.333", %"zext.632"
  %".5886" = inttoptr i64 %"or.313" to ptr
  %".5887" = ptrtoint ptr %".5886" to i64
  %".5888" = add i64 %".5887", 0
  %"for_LDG.306" = inttoptr i64 %".5888" to ptr
  %".5889" = load float, ptr %"for_LDG.306"
  %".5890" = bitcast ptr %"R6" to ptr
  store float %".5889", ptr %".5890"
  ; LDG.E.SYS R41, [R12+0x4]
  %".5893" = load i32, ptr %"R12"
  %"zext.634" = zext i32 %".5893" to i64
  %".5894" = load i32, ptr %"R13"
  %"zext.635" = zext i32 %".5894" to i64
  %"shl.334" = shl i64 %"zext.635", 32
  %"or.314" = or i64 %"shl.334", %"zext.634"
  %".5895" = inttoptr i64 %"or.314" to ptr
  %".5896" = ptrtoint ptr %".5895" to i64
  %".5897" = add i64 %".5896", 4
  %"for_LDG.307" = inttoptr i64 %".5897" to ptr
  %".5898" = load float, ptr %"for_LDG.307"
  %".5899" = bitcast ptr %"R41" to ptr
  store float %".5898", ptr %".5899"
  ; LDG.E.SYS R10, [R4]
  %".5902" = load i32, ptr %"R4"
  %"zext.636" = zext i32 %".5902" to i64
  %".5903" = load i32, ptr %"R5"
  %"zext.637" = zext i32 %".5903" to i64
  %"shl.335" = shl i64 %"zext.637", 32
  %"or.315" = or i64 %"shl.335", %"zext.636"
  %".5904" = inttoptr i64 %"or.315" to ptr
  %".5905" = ptrtoint ptr %".5904" to i64
  %".5906" = add i64 %".5905", 0
  %"for_LDG.308" = inttoptr i64 %".5906" to ptr
  %".5907" = load float, ptr %"for_LDG.308"
  %".5908" = bitcast ptr %"R10" to ptr
  store float %".5907", ptr %".5908"
  ; LDG.E.SYS R7, [R12+0x8]
  %".5911" = load i32, ptr %"R12"
  %"zext.638" = zext i32 %".5911" to i64
  %".5912" = load i32, ptr %"R13"
  %"zext.639" = zext i32 %".5912" to i64
  %"shl.336" = shl i64 %"zext.639", 32
  %"or.316" = or i64 %"shl.336", %"zext.638"
  %".5913" = inttoptr i64 %"or.316" to ptr
  %".5914" = ptrtoint ptr %".5913" to i64
  %".5915" = add i64 %".5914", 8
  %"for_LDG.309" = inttoptr i64 %".5915" to ptr
  %".5916" = load float, ptr %"for_LDG.309"
  %".5917" = bitcast ptr %"R7" to ptr
  store float %".5916", ptr %".5917"
  ; LDG.E.SYS R9, [R4+0x4]
  %".5920" = load i32, ptr %"R4"
  %"zext.640" = zext i32 %".5920" to i64
  %".5921" = load i32, ptr %"R5"
  %"zext.641" = zext i32 %".5921" to i64
  %"shl.337" = shl i64 %"zext.641", 32
  %"or.317" = or i64 %"shl.337", %"zext.640"
  %".5922" = inttoptr i64 %"or.317" to ptr
  %".5923" = ptrtoint ptr %".5922" to i64
  %".5924" = add i64 %".5923", 4
  %"for_LDG.310" = inttoptr i64 %".5924" to ptr
  %".5925" = load float, ptr %"for_LDG.310"
  %".5926" = bitcast ptr %"R9" to ptr
  store float %".5925", ptr %".5926"
  ; LDG.E.SYS R60, [R12+0xc]
  %".5929" = load i32, ptr %"R12"
  %"zext.642" = zext i32 %".5929" to i64
  %".5930" = load i32, ptr %"R13"
  %"zext.643" = zext i32 %".5930" to i64
  %"shl.338" = shl i64 %"zext.643", 32
  %"or.318" = or i64 %"shl.338", %"zext.642"
  %".5931" = inttoptr i64 %"or.318" to ptr
  %".5932" = ptrtoint ptr %".5931" to i64
  %".5933" = add i64 %".5932", 12
  %"for_LDG.311" = inttoptr i64 %".5933" to ptr
  %".5934" = load float, ptr %"for_LDG.311"
  %".5935" = bitcast ptr %"R60" to ptr
  store float %".5934", ptr %".5935"
  ; LDG.E.SYS R8, [R4+0x8]
  %".5938" = load i32, ptr %"R4"
  %"zext.644" = zext i32 %".5938" to i64
  %".5939" = load i32, ptr %"R5"
  %"zext.645" = zext i32 %".5939" to i64
  %"shl.339" = shl i64 %"zext.645", 32
  %"or.319" = or i64 %"shl.339", %"zext.644"
  %".5940" = inttoptr i64 %"or.319" to ptr
  %".5941" = ptrtoint ptr %".5940" to i64
  %".5942" = add i64 %".5941", 8
  %"for_LDG.312" = inttoptr i64 %".5942" to ptr
  %".5943" = load float, ptr %"for_LDG.312"
  %".5944" = bitcast ptr %"R8" to ptr
  store float %".5943", ptr %".5944"
  ; LDG.E.SYS R11, [R4+0xc]
  %".5947" = load i32, ptr %"R4"
  %"zext.646" = zext i32 %".5947" to i64
  %".5948" = load i32, ptr %"R5"
  %"zext.647" = zext i32 %".5948" to i64
  %"shl.340" = shl i64 %"zext.647", 32
  %"or.320" = or i64 %"shl.340", %"zext.646"
  %".5949" = inttoptr i64 %"or.320" to ptr
  %".5950" = ptrtoint ptr %".5949" to i64
  %".5951" = add i64 %".5950", 12
  %"for_LDG.313" = inttoptr i64 %".5951" to ptr
  %".5952" = load float, ptr %"for_LDG.313"
  %".5953" = bitcast ptr %"R11" to ptr
  store float %".5952", ptr %".5953"
  ; IADD3 R35, R35, -0x10, RZ
  %".5956" = load i32, ptr %"R35"
  %"add.280" = add i32 %".5956", -16
  %"add.281" = add i32 %"add.280", 0
  store i32 %"add.281", ptr %"R35"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".5959" = load i32, ptr %"R35"
  %".5960" = load i1, ptr %"PT"
  %"cmp.48" = icmp sgt i32 %".5959", 12
  %".5961" = and i1 %"cmp.48", %".5960"
  ; IADD3 R34, R34, 0x10, RZ
  %".5963" = load i32, ptr %"R34"
  %"add.282" = add i32 %".5963", 16
  %"add.283" = add i32 %"add.282", 0
  store i32 %"add.283", ptr %"R34"
  ; FMUL R25, R25, R22
  %".5966" = load float, ptr %"R25"
  %".5967" = load float, ptr %"R22"
  %"fmul.243" = fmul float %".5966", %".5967"
  %".5968" = bitcast ptr %"R25" to ptr
  store float %"fmul.243", ptr %".5968"
  ; FFMA R25, R25, R36, R21
  %".5971" = load float, ptr %"R25"
  %".5972" = load float, ptr %"R36"
  %".5973" = load float, ptr %"R21"
  %"fmul.244" = fmul float %".5971", %".5972"
  %"fadd.223" = fadd float %"fmul.244", %".5973"
  %".5974" = bitcast ptr %"R25" to ptr
  store float %"fadd.223", ptr %".5974"
  ; FMUL R37, R37, R22
  %".5977" = load float, ptr %"R37"
  %".5978" = load float, ptr %"R22"
  %"fmul.245" = fmul float %".5977", %".5978"
  %".5979" = bitcast ptr %"R37" to ptr
  store float %"fmul.245", ptr %".5979"
  ; FFMA R25, R37, R24, R25
  %".5982" = load float, ptr %"R37"
  %".5983" = load float, ptr %"R24"
  %".5984" = load float, ptr %"R25"
  %"fmul.246" = fmul float %".5982", %".5983"
  %"fadd.224" = fadd float %"fmul.246", %".5984"
  %".5985" = bitcast ptr %"R25" to ptr
  store float %"fadd.224", ptr %".5985"
  ; FMUL R39, R39, R22
  %".5988" = load float, ptr %"R39"
  %".5989" = load float, ptr %"R22"
  %"fmul.247" = fmul float %".5988", %".5989"
  %".5990" = bitcast ptr %"R39" to ptr
  store float %"fmul.247", ptr %".5990"
  ; FFMA R25, R39, R38, R25
  %".5993" = load float, ptr %"R39"
  %".5994" = load float, ptr %"R38"
  %".5995" = load float, ptr %"R25"
  %"fmul.248" = fmul float %".5993", %".5994"
  %"fadd.225" = fadd float %"fmul.248", %".5995"
  %".5996" = bitcast ptr %"R25" to ptr
  store float %"fadd.225", ptr %".5996"
  ; FMUL R43, R43, R22
  %".5999" = load float, ptr %"R43"
  %".6000" = load float, ptr %"R22"
  %"fmul.249" = fmul float %".5999", %".6000"
  %".6001" = bitcast ptr %"R43" to ptr
  store float %"fmul.249", ptr %".6001"
  ; FFMA R25, R43, R46, R25
  %".6004" = load float, ptr %"R43"
  %".6005" = load float, ptr %"R46"
  %".6006" = load float, ptr %"R25"
  %"fmul.250" = fmul float %".6004", %".6005"
  %"fadd.226" = fadd float %"fmul.250", %".6006"
  %".6007" = bitcast ptr %"R25" to ptr
  store float %"fadd.226", ptr %".6007"
  ; FMUL R51, R51, R22
  %".6010" = load float, ptr %"R51"
  %".6011" = load float, ptr %"R22"
  %"fmul.251" = fmul float %".6010", %".6011"
  %".6012" = bitcast ptr %"R51" to ptr
  store float %"fmul.251", ptr %".6012"
  ; FFMA R25, R51, R44, R25
  %".6015" = load float, ptr %"R51"
  %".6016" = load float, ptr %"R44"
  %".6017" = load float, ptr %"R25"
  %"fmul.252" = fmul float %".6015", %".6016"
  %"fadd.227" = fadd float %"fmul.252", %".6017"
  %".6018" = bitcast ptr %"R25" to ptr
  store float %"fadd.227", ptr %".6018"
  ; FMUL R47, R47, R22
  %".6021" = load float, ptr %"R47"
  %".6022" = load float, ptr %"R22"
  %"fmul.253" = fmul float %".6021", %".6022"
  %".6023" = bitcast ptr %"R47" to ptr
  store float %"fmul.253", ptr %".6023"
  ; FFMA R25, R47, R42, R25
  %".6026" = load float, ptr %"R47"
  %".6027" = load float, ptr %"R42"
  %".6028" = load float, ptr %"R25"
  %"fmul.254" = fmul float %".6026", %".6027"
  %"fadd.228" = fadd float %"fmul.254", %".6028"
  %".6029" = bitcast ptr %"R25" to ptr
  store float %"fadd.228", ptr %".6029"
  ; FMUL R45, R45, R22
  %".6032" = load float, ptr %"R45"
  %".6033" = load float, ptr %"R22"
  %"fmul.255" = fmul float %".6032", %".6033"
  %".6034" = bitcast ptr %"R45" to ptr
  store float %"fmul.255", ptr %".6034"
  ; FFMA R25, R45, R40, R25
  %".6037" = load float, ptr %"R45"
  %".6038" = load float, ptr %"R40"
  %".6039" = load float, ptr %"R25"
  %"fmul.256" = fmul float %".6037", %".6038"
  %"fadd.229" = fadd float %"fmul.256", %".6039"
  %".6040" = bitcast ptr %"R25" to ptr
  store float %"fadd.229", ptr %".6040"
  ; FMUL R53, R53, R22
  %".6043" = load float, ptr %"R53"
  %".6044" = load float, ptr %"R22"
  %"fmul.257" = fmul float %".6043", %".6044"
  %".6045" = bitcast ptr %"R53" to ptr
  store float %"fmul.257", ptr %".6045"
  ; FFMA R25, R53, R54, R25
  %".6048" = load float, ptr %"R53"
  %".6049" = load float, ptr %"R54"
  %".6050" = load float, ptr %"R25"
  %"fmul.258" = fmul float %".6048", %".6049"
  %"fadd.230" = fadd float %"fmul.258", %".6050"
  %".6051" = bitcast ptr %"R25" to ptr
  store float %"fadd.230", ptr %".6051"
  ; FMUL R59, R59, R22
  %".6054" = load float, ptr %"R59"
  %".6055" = load float, ptr %"R22"
  %"fmul.259" = fmul float %".6054", %".6055"
  %".6056" = bitcast ptr %"R59" to ptr
  store float %"fmul.259", ptr %".6056"
  ; FFMA R25, R59, R52, R25
  %".6059" = load float, ptr %"R59"
  %".6060" = load float, ptr %"R52"
  %".6061" = load float, ptr %"R25"
  %"fmul.260" = fmul float %".6059", %".6060"
  %"fadd.231" = fadd float %"fmul.260", %".6061"
  %".6062" = bitcast ptr %"R25" to ptr
  store float %"fadd.231", ptr %".6062"
  ; FMUL R57, R57, R22
  %".6065" = load float, ptr %"R57"
  %".6066" = load float, ptr %"R22"
  %"fmul.261" = fmul float %".6065", %".6066"
  %".6067" = bitcast ptr %"R57" to ptr
  store float %"fmul.261", ptr %".6067"
  ; FFMA R25, R57, R50, R25
  %".6070" = load float, ptr %"R57"
  %".6071" = load float, ptr %"R50"
  %".6072" = load float, ptr %"R25"
  %"fmul.262" = fmul float %".6070", %".6071"
  %"fadd.232" = fadd float %"fmul.262", %".6072"
  %".6073" = bitcast ptr %"R25" to ptr
  store float %"fadd.232", ptr %".6073"
  ; FMUL R55, R55, R22.reuse
  %".6076" = load float, ptr %"R55"
  %".6077" = load float, ptr %"R22"
  %"fmul.263" = fmul float %".6076", %".6077"
  %".6078" = bitcast ptr %"R55" to ptr
  store float %"fmul.263", ptr %".6078"
  ; FMUL R61, R61, R22
  %".6081" = load float, ptr %"R61"
  %".6082" = load float, ptr %"R22"
  %"fmul.264" = fmul float %".6081", %".6082"
  %".6083" = bitcast ptr %"R61" to ptr
  store float %"fmul.264", ptr %".6083"
  ; FFMA R25, R55, R56, R25
  %".6086" = load float, ptr %"R55"
  %".6087" = load float, ptr %"R56"
  %".6088" = load float, ptr %"R25"
  %"fmul.265" = fmul float %".6086", %".6087"
  %"fadd.233" = fadd float %"fmul.265", %".6088"
  %".6089" = bitcast ptr %"R25" to ptr
  store float %"fadd.233", ptr %".6089"
  ; FFMA R25, R61, R58, R25
  %".6092" = load float, ptr %"R61"
  %".6093" = load float, ptr %"R58"
  %".6094" = load float, ptr %"R25"
  %"fmul.266" = fmul float %".6092", %".6093"
  %"fadd.234" = fadd float %"fmul.266", %".6094"
  %".6095" = bitcast ptr %"R25" to ptr
  store float %"fadd.234", ptr %".6095"
  ; FMUL R6, R6, R22.reuse
  %".6098" = load float, ptr %"R6"
  %".6099" = load float, ptr %"R22"
  %"fmul.267" = fmul float %".6098", %".6099"
  %".6100" = bitcast ptr %"R6" to ptr
  store float %"fmul.267", ptr %".6100"
  ; FMUL R41, R41, R22
  %".6103" = load float, ptr %"R41"
  %".6104" = load float, ptr %"R22"
  %"fmul.268" = fmul float %".6103", %".6104"
  %".6105" = bitcast ptr %"R41" to ptr
  store float %"fmul.268", ptr %".6105"
  ; FFMA R6, R6, R10, R25
  %".6108" = load float, ptr %"R6"
  %".6109" = load float, ptr %"R10"
  %".6110" = load float, ptr %"R25"
  %"fmul.269" = fmul float %".6108", %".6109"
  %"fadd.235" = fadd float %"fmul.269", %".6110"
  %".6111" = bitcast ptr %"R6" to ptr
  store float %"fadd.235", ptr %".6111"
  ; FMUL R7, R7, R22
  %".6114" = load float, ptr %"R7"
  %".6115" = load float, ptr %"R22"
  %"fmul.270" = fmul float %".6114", %".6115"
  %".6116" = bitcast ptr %"R7" to ptr
  store float %"fmul.270", ptr %".6116"
  ; FFMA R9, R41, R9, R6
  %".6119" = load float, ptr %"R41"
  %".6120" = load float, ptr %"R9"
  %".6121" = load float, ptr %"R6"
  %"fmul.271" = fmul float %".6119", %".6120"
  %"fadd.236" = fadd float %"fmul.271", %".6121"
  %".6122" = bitcast ptr %"R9" to ptr
  store float %"fadd.236", ptr %".6122"
  ; FMUL R60, R60, R22
  %".6125" = load float, ptr %"R60"
  %".6126" = load float, ptr %"R22"
  %"fmul.272" = fmul float %".6125", %".6126"
  %".6127" = bitcast ptr %"R60" to ptr
  store float %"fmul.272", ptr %".6127"
  ; FFMA R8, R7, R8, R9
  %".6130" = load float, ptr %"R7"
  %".6131" = load float, ptr %"R8"
  %".6132" = load float, ptr %"R9"
  %"fmul.273" = fmul float %".6130", %".6131"
  %"fadd.237" = fadd float %"fmul.273", %".6132"
  %".6133" = bitcast ptr %"R8" to ptr
  store float %"fadd.237", ptr %".6133"
  ; FFMA R21, R60, R11, R8
  %".6136" = load float, ptr %"R60"
  %".6137" = load float, ptr %"R11"
  %".6138" = load float, ptr %"R8"
  %"fmul.274" = fmul float %".6136", %".6137"
  %"fadd.238" = fadd float %"fmul.274", %".6138"
  %".6139" = bitcast ptr %"R21" to ptr
  store float %"fadd.238", ptr %".6139"
  ; @P1 BRA `(.L_x_39)
  %".6142" = load i1, ptr %"P1"
  %".6143" = icmp ne i1 %".6142", 1
  br i1 %".6143", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".6146" = load i32, ptr %"R35"
  %".6147" = load i1, ptr %"PT"
  %"cmp.49" = icmp sgt i32 %".6146", 4
  %".6148" = and i1 %"cmp.49", %".6147"
  ; @!P1 BRA `(.L_x_40)
  %".6150" = load i1, ptr %"P1"
  %".6151" = icmp eq i1 %".6150", 1
  br i1 %".6151", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R6, R3, R34, RZ
  %".6156" = load i32, ptr %"R3"
  %".6157" = load i32, ptr %"R34"
  %"add.284" = add i32 %".6156", %".6157"
  %"add.285" = add i32 %"add.284", 0
  store i32 %"add.285", ptr %"R6"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".6160" = load i32, ptr %"R34"
  %".6161" = load i32, ptr %"R11"
  %"mul.98" = mul i32 %".6160", %".6161"
  %"add.286" = add i32 %"mul.98", %"Arg_3"
  store i32 %"add.286", ptr %"R8"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".6164" = load i32, ptr %"R6"
  %".6165" = load i32, ptr %"R11"
  %"mul.99" = mul i32 %".6164", %".6165"
  %"add.287" = add i32 %"mul.99", %"Arg_4"
  store i32 %"add.287", ptr %"R6"
  ; IADD3 R4, R34, 0x4, RZ
  %".6168" = load i32, ptr %"R34"
  %"add.288" = add i32 %".6168", 4
  %"add.289" = add i32 %"add.288", 0
  store i32 %"add.289", ptr %"R4"
  ; LDG.E.SYS R13, [R8]
  %".6171" = load i32, ptr %"R8"
  %"zext.648" = zext i32 %".6171" to i64
  %".6172" = load i32, ptr %"R9"
  %"zext.649" = zext i32 %".6172" to i64
  %"shl.341" = shl i64 %"zext.649", 32
  %"or.321" = or i64 %"shl.341", %"zext.648"
  %".6173" = inttoptr i64 %"or.321" to ptr
  %".6174" = ptrtoint ptr %".6173" to i64
  %".6175" = add i64 %".6174", 0
  %"for_LDG.314" = inttoptr i64 %".6175" to ptr
  %".6176" = load float, ptr %"for_LDG.314"
  %".6177" = bitcast ptr %"R13" to ptr
  store float %".6176", ptr %".6177"
  ; IADD3 R10, R3, R4, RZ
  %".6180" = load i32, ptr %"R3"
  %".6181" = load i32, ptr %"R4"
  %"add.290" = add i32 %".6180", %".6181"
  %"add.291" = add i32 %"add.290", 0
  store i32 %"add.291", ptr %"R10"
  ; LDG.E.SYS R12, [R6]
  %".6184" = load i32, ptr %"R6"
  %"zext.650" = zext i32 %".6184" to i64
  %".6185" = load i32, ptr %"R7"
  %"zext.651" = zext i32 %".6185" to i64
  %"shl.342" = shl i64 %"zext.651", 32
  %"or.322" = or i64 %"shl.342", %"zext.650"
  %".6186" = inttoptr i64 %"or.322" to ptr
  %".6187" = ptrtoint ptr %".6186" to i64
  %".6188" = add i64 %".6187", 0
  %"for_LDG.315" = inttoptr i64 %".6188" to ptr
  %".6189" = load float, ptr %"for_LDG.315"
  %".6190" = bitcast ptr %"R12" to ptr
  store float %".6189", ptr %".6190"
  ; LDG.E.SYS R25, [R8+0x4]
  %".6193" = load i32, ptr %"R8"
  %"zext.652" = zext i32 %".6193" to i64
  %".6194" = load i32, ptr %"R9"
  %"zext.653" = zext i32 %".6194" to i64
  %"shl.343" = shl i64 %"zext.653", 32
  %"or.323" = or i64 %"shl.343", %"zext.652"
  %".6195" = inttoptr i64 %"or.323" to ptr
  %".6196" = ptrtoint ptr %".6195" to i64
  %".6197" = add i64 %".6196", 4
  %"for_LDG.316" = inttoptr i64 %".6197" to ptr
  %".6198" = load float, ptr %"for_LDG.316"
  %".6199" = bitcast ptr %"R25" to ptr
  store float %".6198", ptr %".6199"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".6202" = load i32, ptr %"R4"
  %".6203" = load i32, ptr %"R11"
  %"mul.100" = mul i32 %".6202", %".6203"
  %"add.292" = add i32 %"mul.100", %"Arg_3"
  store i32 %"add.292", ptr %"R4"
  ; LDG.E.SYS R24, [R6+0x4]
  %".6206" = load i32, ptr %"R6"
  %"zext.654" = zext i32 %".6206" to i64
  %".6207" = load i32, ptr %"R7"
  %"zext.655" = zext i32 %".6207" to i64
  %"shl.344" = shl i64 %"zext.655", 32
  %"or.324" = or i64 %"shl.344", %"zext.654"
  %".6208" = inttoptr i64 %"or.324" to ptr
  %".6209" = ptrtoint ptr %".6208" to i64
  %".6210" = add i64 %".6209", 4
  %"for_LDG.317" = inttoptr i64 %".6210" to ptr
  %".6211" = load float, ptr %"for_LDG.317"
  %".6212" = bitcast ptr %"R24" to ptr
  store float %".6211", ptr %".6212"
  ; LDG.E.SYS R37, [R8+0x8]
  %".6215" = load i32, ptr %"R8"
  %"zext.656" = zext i32 %".6215" to i64
  %".6216" = load i32, ptr %"R9"
  %"zext.657" = zext i32 %".6216" to i64
  %"shl.345" = shl i64 %"zext.657", 32
  %"or.325" = or i64 %"shl.345", %"zext.656"
  %".6217" = inttoptr i64 %"or.325" to ptr
  %".6218" = ptrtoint ptr %".6217" to i64
  %".6219" = add i64 %".6218", 8
  %"for_LDG.318" = inttoptr i64 %".6219" to ptr
  %".6220" = load float, ptr %"for_LDG.318"
  %".6221" = bitcast ptr %"R37" to ptr
  store float %".6220", ptr %".6221"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".6224" = load i32, ptr %"R10"
  %".6225" = load i32, ptr %"R11"
  %"mul.101" = mul i32 %".6224", %".6225"
  %"add.293" = add i32 %"mul.101", %"Arg_4"
  store i32 %"add.293", ptr %"R10"
  ; LDG.E.SYS R36, [R6+0x8]
  %".6228" = load i32, ptr %"R6"
  %"zext.658" = zext i32 %".6228" to i64
  %".6229" = load i32, ptr %"R7"
  %"zext.659" = zext i32 %".6229" to i64
  %"shl.346" = shl i64 %"zext.659", 32
  %"or.326" = or i64 %"shl.346", %"zext.658"
  %".6230" = inttoptr i64 %"or.326" to ptr
  %".6231" = ptrtoint ptr %".6230" to i64
  %".6232" = add i64 %".6231", 8
  %"for_LDG.319" = inttoptr i64 %".6232" to ptr
  %".6233" = load float, ptr %"for_LDG.319"
  %".6234" = bitcast ptr %"R36" to ptr
  store float %".6233", ptr %".6234"
  ; LDG.E.SYS R39, [R8+0xc]
  %".6237" = load i32, ptr %"R8"
  %"zext.660" = zext i32 %".6237" to i64
  %".6238" = load i32, ptr %"R9"
  %"zext.661" = zext i32 %".6238" to i64
  %"shl.347" = shl i64 %"zext.661", 32
  %"or.327" = or i64 %"shl.347", %"zext.660"
  %".6239" = inttoptr i64 %"or.327" to ptr
  %".6240" = ptrtoint ptr %".6239" to i64
  %".6241" = add i64 %".6240", 12
  %"for_LDG.320" = inttoptr i64 %".6241" to ptr
  %".6242" = load float, ptr %"for_LDG.320"
  %".6243" = bitcast ptr %"R39" to ptr
  store float %".6242", ptr %".6243"
  ; LDG.E.SYS R38, [R6+0xc]
  %".6246" = load i32, ptr %"R6"
  %"zext.662" = zext i32 %".6246" to i64
  %".6247" = load i32, ptr %"R7"
  %"zext.663" = zext i32 %".6247" to i64
  %"shl.348" = shl i64 %"zext.663", 32
  %"or.328" = or i64 %"shl.348", %"zext.662"
  %".6248" = inttoptr i64 %"or.328" to ptr
  %".6249" = ptrtoint ptr %".6248" to i64
  %".6250" = add i64 %".6249", 12
  %"for_LDG.321" = inttoptr i64 %".6250" to ptr
  %".6251" = load float, ptr %"for_LDG.321"
  %".6252" = bitcast ptr %"R38" to ptr
  store float %".6251", ptr %".6252"
  ; LDG.E.SYS R41, [R4]
  %".6255" = load i32, ptr %"R4"
  %"zext.664" = zext i32 %".6255" to i64
  %".6256" = load i32, ptr %"R5"
  %"zext.665" = zext i32 %".6256" to i64
  %"shl.349" = shl i64 %"zext.665", 32
  %"or.329" = or i64 %"shl.349", %"zext.664"
  %".6257" = inttoptr i64 %"or.329" to ptr
  %".6258" = ptrtoint ptr %".6257" to i64
  %".6259" = add i64 %".6258", 0
  %"for_LDG.322" = inttoptr i64 %".6259" to ptr
  %".6260" = load float, ptr %"for_LDG.322"
  %".6261" = bitcast ptr %"R41" to ptr
  store float %".6260", ptr %".6261"
  ; LDG.E.SYS R40, [R10]
  %".6264" = load i32, ptr %"R10"
  %"zext.666" = zext i32 %".6264" to i64
  %".6265" = load i32, ptr %"R11"
  %"zext.667" = zext i32 %".6265" to i64
  %"shl.350" = shl i64 %"zext.667", 32
  %"or.330" = or i64 %"shl.350", %"zext.666"
  %".6266" = inttoptr i64 %"or.330" to ptr
  %".6267" = ptrtoint ptr %".6266" to i64
  %".6268" = add i64 %".6267", 0
  %"for_LDG.323" = inttoptr i64 %".6268" to ptr
  %".6269" = load float, ptr %"for_LDG.323"
  %".6270" = bitcast ptr %"R40" to ptr
  store float %".6269", ptr %".6270"
  ; LDG.E.SYS R43, [R4+0x4]
  %".6273" = load i32, ptr %"R4"
  %"zext.668" = zext i32 %".6273" to i64
  %".6274" = load i32, ptr %"R5"
  %"zext.669" = zext i32 %".6274" to i64
  %"shl.351" = shl i64 %"zext.669", 32
  %"or.331" = or i64 %"shl.351", %"zext.668"
  %".6275" = inttoptr i64 %"or.331" to ptr
  %".6276" = ptrtoint ptr %".6275" to i64
  %".6277" = add i64 %".6276", 4
  %"for_LDG.324" = inttoptr i64 %".6277" to ptr
  %".6278" = load float, ptr %"for_LDG.324"
  %".6279" = bitcast ptr %"R43" to ptr
  store float %".6278", ptr %".6279"
  ; LDG.E.SYS R42, [R10+0x4]
  %".6282" = load i32, ptr %"R10"
  %"zext.670" = zext i32 %".6282" to i64
  %".6283" = load i32, ptr %"R11"
  %"zext.671" = zext i32 %".6283" to i64
  %"shl.352" = shl i64 %"zext.671", 32
  %"or.332" = or i64 %"shl.352", %"zext.670"
  %".6284" = inttoptr i64 %"or.332" to ptr
  %".6285" = ptrtoint ptr %".6284" to i64
  %".6286" = add i64 %".6285", 4
  %"for_LDG.325" = inttoptr i64 %".6286" to ptr
  %".6287" = load float, ptr %"for_LDG.325"
  %".6288" = bitcast ptr %"R42" to ptr
  store float %".6287", ptr %".6288"
  ; LDG.E.SYS R45, [R4+0x8]
  %".6291" = load i32, ptr %"R4"
  %"zext.672" = zext i32 %".6291" to i64
  %".6292" = load i32, ptr %"R5"
  %"zext.673" = zext i32 %".6292" to i64
  %"shl.353" = shl i64 %"zext.673", 32
  %"or.333" = or i64 %"shl.353", %"zext.672"
  %".6293" = inttoptr i64 %"or.333" to ptr
  %".6294" = ptrtoint ptr %".6293" to i64
  %".6295" = add i64 %".6294", 8
  %"for_LDG.326" = inttoptr i64 %".6295" to ptr
  %".6296" = load float, ptr %"for_LDG.326"
  %".6297" = bitcast ptr %"R45" to ptr
  store float %".6296", ptr %".6297"
  ; LDG.E.SYS R47, [R4+0xc]
  %".6300" = load i32, ptr %"R4"
  %"zext.674" = zext i32 %".6300" to i64
  %".6301" = load i32, ptr %"R5"
  %"zext.675" = zext i32 %".6301" to i64
  %"shl.354" = shl i64 %"zext.675", 32
  %"or.334" = or i64 %"shl.354", %"zext.674"
  %".6302" = inttoptr i64 %"or.334" to ptr
  %".6303" = ptrtoint ptr %".6302" to i64
  %".6304" = add i64 %".6303", 12
  %"for_LDG.327" = inttoptr i64 %".6304" to ptr
  %".6305" = load float, ptr %"for_LDG.327"
  %".6306" = bitcast ptr %"R47" to ptr
  store float %".6305", ptr %".6306"
  ; LDG.E.SYS R44, [R10+0x8]
  %".6309" = load i32, ptr %"R10"
  %"zext.676" = zext i32 %".6309" to i64
  %".6310" = load i32, ptr %"R11"
  %"zext.677" = zext i32 %".6310" to i64
  %"shl.355" = shl i64 %"zext.677", 32
  %"or.335" = or i64 %"shl.355", %"zext.676"
  %".6311" = inttoptr i64 %"or.335" to ptr
  %".6312" = ptrtoint ptr %".6311" to i64
  %".6313" = add i64 %".6312", 8
  %"for_LDG.328" = inttoptr i64 %".6313" to ptr
  %".6314" = load float, ptr %"for_LDG.328"
  %".6315" = bitcast ptr %"R44" to ptr
  store float %".6314", ptr %".6315"
  ; LDG.E.SYS R46, [R10+0xc]
  %".6318" = load i32, ptr %"R10"
  %"zext.678" = zext i32 %".6318" to i64
  %".6319" = load i32, ptr %"R11"
  %"zext.679" = zext i32 %".6319" to i64
  %"shl.356" = shl i64 %"zext.679", 32
  %"or.336" = or i64 %"shl.356", %"zext.678"
  %".6320" = inttoptr i64 %"or.336" to ptr
  %".6321" = ptrtoint ptr %".6320" to i64
  %".6322" = add i64 %".6321", 12
  %"for_LDG.329" = inttoptr i64 %".6322" to ptr
  %".6323" = load float, ptr %"for_LDG.329"
  %".6324" = bitcast ptr %"R46" to ptr
  store float %".6323", ptr %".6324"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".6327" = xor i1 1, 1
  %".6328" = and i1 %".6327", 1
  %".6329" = and i1 %".6328", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".6331" = load i32, ptr %"R35"
  %"add.294" = add i32 %".6331", -8
  %"add.295" = add i32 %"add.294", 0
  store i32 %"add.295", ptr %"R35"
  ; IADD3 R34, R34, 0x8, RZ
  %".6334" = load i32, ptr %"R34"
  %"add.296" = add i32 %".6334", 8
  %"add.297" = add i32 %"add.296", 0
  store i32 %"add.297", ptr %"R34"
  ; FMUL R8, R13, R22
  %".6337" = load float, ptr %"R13"
  %".6338" = load float, ptr %"R22"
  %"fmul.275" = fmul float %".6337", %".6338"
  %".6339" = bitcast ptr %"R8" to ptr
  store float %"fmul.275", ptr %".6339"
  ; FFMA R8, R8, R12, R21
  %".6342" = load float, ptr %"R8"
  %".6343" = load float, ptr %"R12"
  %".6344" = load float, ptr %"R21"
  %"fmul.276" = fmul float %".6342", %".6343"
  %"fadd.239" = fadd float %"fmul.276", %".6344"
  %".6345" = bitcast ptr %"R8" to ptr
  store float %"fadd.239", ptr %".6345"
  ; FMUL R25, R25, R22
  %".6348" = load float, ptr %"R25"
  %".6349" = load float, ptr %"R22"
  %"fmul.277" = fmul float %".6348", %".6349"
  %".6350" = bitcast ptr %"R25" to ptr
  store float %"fmul.277", ptr %".6350"
  ; FFMA R8, R25, R24, R8
  %".6353" = load float, ptr %"R25"
  %".6354" = load float, ptr %"R24"
  %".6355" = load float, ptr %"R8"
  %"fmul.278" = fmul float %".6353", %".6354"
  %"fadd.240" = fadd float %"fmul.278", %".6355"
  %".6356" = bitcast ptr %"R8" to ptr
  store float %"fadd.240", ptr %".6356"
  ; FMUL R37, R37, R22
  %".6359" = load float, ptr %"R37"
  %".6360" = load float, ptr %"R22"
  %"fmul.279" = fmul float %".6359", %".6360"
  %".6361" = bitcast ptr %"R37" to ptr
  store float %"fmul.279", ptr %".6361"
  ; FFMA R8, R37, R36, R8
  %".6364" = load float, ptr %"R37"
  %".6365" = load float, ptr %"R36"
  %".6366" = load float, ptr %"R8"
  %"fmul.280" = fmul float %".6364", %".6365"
  %"fadd.241" = fadd float %"fmul.280", %".6366"
  %".6367" = bitcast ptr %"R8" to ptr
  store float %"fadd.241", ptr %".6367"
  ; FMUL R39, R39, R22
  %".6370" = load float, ptr %"R39"
  %".6371" = load float, ptr %"R22"
  %"fmul.281" = fmul float %".6370", %".6371"
  %".6372" = bitcast ptr %"R39" to ptr
  store float %"fmul.281", ptr %".6372"
  ; FFMA R8, R39, R38, R8
  %".6375" = load float, ptr %"R39"
  %".6376" = load float, ptr %"R38"
  %".6377" = load float, ptr %"R8"
  %"fmul.282" = fmul float %".6375", %".6376"
  %"fadd.242" = fadd float %"fmul.282", %".6377"
  %".6378" = bitcast ptr %"R8" to ptr
  store float %"fadd.242", ptr %".6378"
  ; FMUL R41, R41, R22
  %".6381" = load float, ptr %"R41"
  %".6382" = load float, ptr %"R22"
  %"fmul.283" = fmul float %".6381", %".6382"
  %".6383" = bitcast ptr %"R41" to ptr
  store float %"fmul.283", ptr %".6383"
  ; FFMA R8, R41, R40, R8
  %".6386" = load float, ptr %"R41"
  %".6387" = load float, ptr %"R40"
  %".6388" = load float, ptr %"R8"
  %"fmul.284" = fmul float %".6386", %".6387"
  %"fadd.243" = fadd float %"fmul.284", %".6388"
  %".6389" = bitcast ptr %"R8" to ptr
  store float %"fadd.243", ptr %".6389"
  ; FMUL R43, R43, R22
  %".6392" = load float, ptr %"R43"
  %".6393" = load float, ptr %"R22"
  %"fmul.285" = fmul float %".6392", %".6393"
  %".6394" = bitcast ptr %"R43" to ptr
  store float %"fmul.285", ptr %".6394"
  ; FFMA R8, R43, R42, R8
  %".6397" = load float, ptr %"R43"
  %".6398" = load float, ptr %"R42"
  %".6399" = load float, ptr %"R8"
  %"fmul.286" = fmul float %".6397", %".6398"
  %"fadd.244" = fadd float %"fmul.286", %".6399"
  %".6400" = bitcast ptr %"R8" to ptr
  store float %"fadd.244", ptr %".6400"
  ; FMUL R45, R45, R22.reuse
  %".6403" = load float, ptr %"R45"
  %".6404" = load float, ptr %"R22"
  %"fmul.287" = fmul float %".6403", %".6404"
  %".6405" = bitcast ptr %"R45" to ptr
  store float %"fmul.287", ptr %".6405"
  ; FMUL R47, R47, R22
  %".6408" = load float, ptr %"R47"
  %".6409" = load float, ptr %"R22"
  %"fmul.288" = fmul float %".6408", %".6409"
  %".6410" = bitcast ptr %"R47" to ptr
  store float %"fmul.288", ptr %".6410"
  ; FFMA R8, R45, R44, R8
  %".6413" = load float, ptr %"R45"
  %".6414" = load float, ptr %"R44"
  %".6415" = load float, ptr %"R8"
  %"fmul.289" = fmul float %".6413", %".6414"
  %"fadd.245" = fadd float %"fmul.289", %".6415"
  %".6416" = bitcast ptr %"R8" to ptr
  store float %"fadd.245", ptr %".6416"
  ; FFMA R21, R47, R46, R8
  %".6419" = load float, ptr %"R47"
  %".6420" = load float, ptr %"R46"
  %".6421" = load float, ptr %"R8"
  %"fmul.290" = fmul float %".6419", %".6420"
  %"fadd.246" = fadd float %"fmul.290", %".6421"
  %".6422" = bitcast ptr %"R21" to ptr
  store float %"fadd.246", ptr %".6422"
  br label %".L_x_40"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".6426" = load i32, ptr %"R35"
  %".6427" = load i1, ptr %"PT"
  %"cmp.50" = icmp ne i32 %".6426", 0
  %".6428" = or i1 %"cmp.50", %".6427"
  ; @!P0 BRA `(.L_x_36)
  %".6430" = load i1, ptr %"P0"
  %".6431" = icmp eq i1 %".6430", 1
  br i1 %".6431", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IADD3 R6, R3, R34, RZ
  %".6436" = load i32, ptr %"R3"
  %".6437" = load i32, ptr %"R34"
  %"add.298" = add i32 %".6436", %".6437"
  %"add.299" = add i32 %"add.298", 0
  store i32 %"add.299", ptr %"R6"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".6440" = load i32, ptr %"R34"
  %".6441" = load i32, ptr %"R7"
  %"mul.102" = mul i32 %".6440", %".6441"
  %"add.300" = add i32 %"mul.102", %"Arg_3"
  store i32 %"add.300", ptr %"R4"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".6444" = load i32, ptr %"R6"
  %".6445" = load i32, ptr %"R7"
  %"mul.103" = mul i32 %".6444", %".6445"
  %"add.301" = add i32 %"mul.103", %"Arg_4"
  store i32 %"add.301", ptr %"R6"
  ; LDG.E.SYS R9, [R4]
  %".6448" = load i32, ptr %"R4"
  %"zext.680" = zext i32 %".6448" to i64
  %".6449" = load i32, ptr %"R5"
  %"zext.681" = zext i32 %".6449" to i64
  %"shl.357" = shl i64 %"zext.681", 32
  %"or.337" = or i64 %"shl.357", %"zext.680"
  %".6450" = inttoptr i64 %"or.337" to ptr
  %".6451" = ptrtoint ptr %".6450" to i64
  %".6452" = add i64 %".6451", 0
  %"for_LDG.330" = inttoptr i64 %".6452" to ptr
  %".6453" = load float, ptr %"for_LDG.330"
  %".6454" = bitcast ptr %"R9" to ptr
  store float %".6453", ptr %".6454"
  ; LDG.E.SYS R10, [R6]
  %".6457" = load i32, ptr %"R6"
  %"zext.682" = zext i32 %".6457" to i64
  %".6458" = load i32, ptr %"R7"
  %"zext.683" = zext i32 %".6458" to i64
  %"shl.358" = shl i64 %"zext.683", 32
  %"or.338" = or i64 %"shl.358", %"zext.682"
  %".6459" = inttoptr i64 %"or.338" to ptr
  %".6460" = ptrtoint ptr %".6459" to i64
  %".6461" = add i64 %".6460", 0
  %"for_LDG.331" = inttoptr i64 %".6461" to ptr
  %".6462" = load float, ptr %"for_LDG.331"
  %".6463" = bitcast ptr %"R10" to ptr
  store float %".6462", ptr %".6463"
  ; LDG.E.SYS R11, [R4+0x4]
  %".6466" = load i32, ptr %"R4"
  %"zext.684" = zext i32 %".6466" to i64
  %".6467" = load i32, ptr %"R5"
  %"zext.685" = zext i32 %".6467" to i64
  %"shl.359" = shl i64 %"zext.685", 32
  %"or.339" = or i64 %"shl.359", %"zext.684"
  %".6468" = inttoptr i64 %"or.339" to ptr
  %".6469" = ptrtoint ptr %".6468" to i64
  %".6470" = add i64 %".6469", 4
  %"for_LDG.332" = inttoptr i64 %".6470" to ptr
  %".6471" = load float, ptr %"for_LDG.332"
  %".6472" = bitcast ptr %"R11" to ptr
  store float %".6471", ptr %".6472"
  ; LDG.E.SYS R12, [R6+0x4]
  %".6475" = load i32, ptr %"R6"
  %"zext.686" = zext i32 %".6475" to i64
  %".6476" = load i32, ptr %"R7"
  %"zext.687" = zext i32 %".6476" to i64
  %"shl.360" = shl i64 %"zext.687", 32
  %"or.340" = or i64 %"shl.360", %"zext.686"
  %".6477" = inttoptr i64 %"or.340" to ptr
  %".6478" = ptrtoint ptr %".6477" to i64
  %".6479" = add i64 %".6478", 4
  %"for_LDG.333" = inttoptr i64 %".6479" to ptr
  %".6480" = load float, ptr %"for_LDG.333"
  %".6481" = bitcast ptr %"R12" to ptr
  store float %".6480", ptr %".6481"
  ; LDG.E.SYS R13, [R4+0x8]
  %".6484" = load i32, ptr %"R4"
  %"zext.688" = zext i32 %".6484" to i64
  %".6485" = load i32, ptr %"R5"
  %"zext.689" = zext i32 %".6485" to i64
  %"shl.361" = shl i64 %"zext.689", 32
  %"or.341" = or i64 %"shl.361", %"zext.688"
  %".6486" = inttoptr i64 %"or.341" to ptr
  %".6487" = ptrtoint ptr %".6486" to i64
  %".6488" = add i64 %".6487", 8
  %"for_LDG.334" = inttoptr i64 %".6488" to ptr
  %".6489" = load float, ptr %"for_LDG.334"
  %".6490" = bitcast ptr %"R13" to ptr
  store float %".6489", ptr %".6490"
  ; LDG.E.SYS R24, [R6+0x8]
  %".6493" = load i32, ptr %"R6"
  %"zext.690" = zext i32 %".6493" to i64
  %".6494" = load i32, ptr %"R7"
  %"zext.691" = zext i32 %".6494" to i64
  %"shl.362" = shl i64 %"zext.691", 32
  %"or.342" = or i64 %"shl.362", %"zext.690"
  %".6495" = inttoptr i64 %"or.342" to ptr
  %".6496" = ptrtoint ptr %".6495" to i64
  %".6497" = add i64 %".6496", 8
  %"for_LDG.335" = inttoptr i64 %".6497" to ptr
  %".6498" = load float, ptr %"for_LDG.335"
  %".6499" = bitcast ptr %"R24" to ptr
  store float %".6498", ptr %".6499"
  ; LDG.E.SYS R25, [R4+0xc]
  %".6502" = load i32, ptr %"R4"
  %"zext.692" = zext i32 %".6502" to i64
  %".6503" = load i32, ptr %"R5"
  %"zext.693" = zext i32 %".6503" to i64
  %"shl.363" = shl i64 %"zext.693", 32
  %"or.343" = or i64 %"shl.363", %"zext.692"
  %".6504" = inttoptr i64 %"or.343" to ptr
  %".6505" = ptrtoint ptr %".6504" to i64
  %".6506" = add i64 %".6505", 12
  %"for_LDG.336" = inttoptr i64 %".6506" to ptr
  %".6507" = load float, ptr %"for_LDG.336"
  %".6508" = bitcast ptr %"R25" to ptr
  store float %".6507", ptr %".6508"
  ; LDG.E.SYS R36, [R6+0xc]
  %".6511" = load i32, ptr %"R6"
  %"zext.694" = zext i32 %".6511" to i64
  %".6512" = load i32, ptr %"R7"
  %"zext.695" = zext i32 %".6512" to i64
  %"shl.364" = shl i64 %"zext.695", 32
  %"or.344" = or i64 %"shl.364", %"zext.694"
  %".6513" = inttoptr i64 %"or.344" to ptr
  %".6514" = ptrtoint ptr %".6513" to i64
  %".6515" = add i64 %".6514", 12
  %"for_LDG.337" = inttoptr i64 %".6515" to ptr
  %".6516" = load float, ptr %"for_LDG.337"
  %".6517" = bitcast ptr %"R36" to ptr
  store float %".6516", ptr %".6517"
  ; IADD3 R35, R35, -0x4, RZ
  %".6520" = load i32, ptr %"R35"
  %"add.302" = add i32 %".6520", -4
  %"add.303" = add i32 %"add.302", 0
  store i32 %"add.303", ptr %"R35"
  ; IADD3 R34, R34, 0x4, RZ
  %".6523" = load i32, ptr %"R34"
  %"add.304" = add i32 %".6523", 4
  %"add.305" = add i32 %"add.304", 0
  store i32 %"add.305", ptr %"R34"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".6526" = load i32, ptr %"R35"
  %".6527" = load i1, ptr %"PT"
  %"cmp.51" = icmp ne i32 %".6526", 0
  %".6528" = and i1 %"cmp.51", %".6527"
  ; FMUL R8, R9, R22
  %".6530" = load float, ptr %"R9"
  %".6531" = load float, ptr %"R22"
  %"fmul.291" = fmul float %".6530", %".6531"
  %".6532" = bitcast ptr %"R8" to ptr
  store float %"fmul.291", ptr %".6532"
  ; FFMA R8, R8, R10, R21
  %".6535" = load float, ptr %"R8"
  %".6536" = load float, ptr %"R10"
  %".6537" = load float, ptr %"R21"
  %"fmul.292" = fmul float %".6535", %".6536"
  %"fadd.247" = fadd float %"fmul.292", %".6537"
  %".6538" = bitcast ptr %"R8" to ptr
  store float %"fadd.247", ptr %".6538"
  ; FMUL R11, R11, R22
  %".6541" = load float, ptr %"R11"
  %".6542" = load float, ptr %"R22"
  %"fmul.293" = fmul float %".6541", %".6542"
  %".6543" = bitcast ptr %"R11" to ptr
  store float %"fmul.293", ptr %".6543"
  ; FFMA R8, R11, R12, R8
  %".6546" = load float, ptr %"R11"
  %".6547" = load float, ptr %"R12"
  %".6548" = load float, ptr %"R8"
  %"fmul.294" = fmul float %".6546", %".6547"
  %"fadd.248" = fadd float %"fmul.294", %".6548"
  %".6549" = bitcast ptr %"R8" to ptr
  store float %"fadd.248", ptr %".6549"
  ; FMUL R13, R13, R22
  %".6552" = load float, ptr %"R13"
  %".6553" = load float, ptr %"R22"
  %"fmul.295" = fmul float %".6552", %".6553"
  %".6554" = bitcast ptr %"R13" to ptr
  store float %"fmul.295", ptr %".6554"
  ; FFMA R8, R13, R24, R8
  %".6557" = load float, ptr %"R13"
  %".6558" = load float, ptr %"R24"
  %".6559" = load float, ptr %"R8"
  %"fmul.296" = fmul float %".6557", %".6558"
  %"fadd.249" = fadd float %"fmul.296", %".6559"
  %".6560" = bitcast ptr %"R8" to ptr
  store float %"fadd.249", ptr %".6560"
  ; FMUL R25, R25, R22
  %".6563" = load float, ptr %"R25"
  %".6564" = load float, ptr %"R22"
  %"fmul.297" = fmul float %".6563", %".6564"
  %".6565" = bitcast ptr %"R25" to ptr
  store float %"fmul.297", ptr %".6565"
  ; FFMA R21, R25, R36, R8
  %".6568" = load float, ptr %"R25"
  %".6569" = load float, ptr %"R36"
  %".6570" = load float, ptr %"R8"
  %"fmul.298" = fmul float %".6568", %".6569"
  %"fadd.250" = fadd float %"fmul.298", %".6570"
  %".6571" = bitcast ptr %"R21" to ptr
  store float %"fadd.250", ptr %".6571"
  ; @P0 BRA `(.L_x_37)
  %".6574" = load i1, ptr %"P0"
  %".6575" = icmp ne i1 %".6574", 1
  br i1 %".6575", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".6578" = load i32, ptr %"R48"
  %".6579" = load i1, ptr %"PT"
  %"cmp.52" = icmp ne i32 %".6578", 0
  %".6580" = and i1 %"cmp.52", %".6579"
  ; @!P0 BRA `(.L_x_35)
  %".6582" = load i1, ptr %"P0"
  %".6583" = icmp eq i1 %".6582", 1
  br i1 %".6583", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IADD3 R4, R3, R34, RZ
  %".6588" = load i32, ptr %"R3"
  %".6589" = load i32, ptr %"R34"
  %"add.306" = add i32 %".6588", %".6589"
  %"add.307" = add i32 %"add.306", 0
  store i32 %"add.307", ptr %"R4"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".6592" = load i32, ptr %"R34"
  %".6593" = load i32, ptr %"R5"
  %"mul.104" = mul i32 %".6592", %".6593"
  %"add.308" = add i32 %"mul.104", %"Arg_3"
  store i32 %"add.308", ptr %"R34"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".6596" = load i32, ptr %"R4"
  %".6597" = load i32, ptr %"R5"
  %"mul.105" = mul i32 %".6596", %".6597"
  %"add.309" = add i32 %"mul.105", %"Arg_4"
  store i32 %"add.309", ptr %"R4"
  ; LDG.E.SYS R7, [R34]
  %".6600" = load i32, ptr %"R34"
  %"zext.696" = zext i32 %".6600" to i64
  %".6601" = load i32, ptr %"R35"
  %"zext.697" = zext i32 %".6601" to i64
  %"shl.365" = shl i64 %"zext.697", 32
  %"or.345" = or i64 %"shl.365", %"zext.696"
  %".6602" = inttoptr i64 %"or.345" to ptr
  %".6603" = ptrtoint ptr %".6602" to i64
  %".6604" = add i64 %".6603", 0
  %"for_LDG.338" = inttoptr i64 %".6604" to ptr
  %".6605" = load float, ptr %"for_LDG.338"
  %".6606" = bitcast ptr %"R7" to ptr
  store float %".6605", ptr %".6606"
  ; LDG.E.SYS R8, [R4]
  %".6609" = load i32, ptr %"R4"
  %"zext.698" = zext i32 %".6609" to i64
  %".6610" = load i32, ptr %"R5"
  %"zext.699" = zext i32 %".6610" to i64
  %"shl.366" = shl i64 %"zext.699", 32
  %"or.346" = or i64 %"shl.366", %"zext.698"
  %".6611" = inttoptr i64 %"or.346" to ptr
  %".6612" = ptrtoint ptr %".6611" to i64
  %".6613" = add i64 %".6612", 0
  %"for_LDG.339" = inttoptr i64 %".6613" to ptr
  %".6614" = load float, ptr %"for_LDG.339"
  %".6615" = bitcast ptr %"R8" to ptr
  store float %".6614", ptr %".6615"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".6618" = load i32, ptr %"R48"
  %".6619" = load i1, ptr %"PT"
  %"cmp.53" = icmp ne i32 %".6618", 1
  %".6620" = and i1 %"cmp.53", %".6619"
  ; FMUL R6, R7, R22
  %".6622" = load float, ptr %"R7"
  %".6623" = load float, ptr %"R22"
  %"fmul.299" = fmul float %".6622", %".6623"
  %".6624" = bitcast ptr %"R6" to ptr
  store float %"fmul.299", ptr %".6624"
  ; FFMA R21, R6, R8, R21
  %".6627" = load float, ptr %"R6"
  %".6628" = load float, ptr %"R8"
  %".6629" = load float, ptr %"R21"
  %"fmul.300" = fmul float %".6627", %".6628"
  %"fadd.251" = fadd float %"fmul.300", %".6629"
  %".6630" = bitcast ptr %"R21" to ptr
  store float %"fadd.251", ptr %".6630"
  ; @!P0 BRA `(.L_x_35)
  %".6633" = load i1, ptr %"P0"
  %".6634" = icmp eq i1 %".6633", 1
  br i1 %".6634", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".6637" = load i32, ptr %"R48"
  %".6638" = load i1, ptr %"PT"
  %"cmp.54" = icmp ne i32 %".6637", 2
  %".6639" = and i1 %"cmp.54", %".6638"
  ; LDG.E.SYS R7, [R34+0x4]
  %".6641" = load i32, ptr %"R34"
  %"zext.700" = zext i32 %".6641" to i64
  %".6642" = load i32, ptr %"R35"
  %"zext.701" = zext i32 %".6642" to i64
  %"shl.367" = shl i64 %"zext.701", 32
  %"or.347" = or i64 %"shl.367", %"zext.700"
  %".6643" = inttoptr i64 %"or.347" to ptr
  %".6644" = ptrtoint ptr %".6643" to i64
  %".6645" = add i64 %".6644", 4
  %"for_LDG.340" = inttoptr i64 %".6645" to ptr
  %".6646" = load float, ptr %"for_LDG.340"
  %".6647" = bitcast ptr %"R7" to ptr
  store float %".6646", ptr %".6647"
  ; LDG.E.SYS R8, [R4+0x4]
  %".6650" = load i32, ptr %"R4"
  %"zext.702" = zext i32 %".6650" to i64
  %".6651" = load i32, ptr %"R5"
  %"zext.703" = zext i32 %".6651" to i64
  %"shl.368" = shl i64 %"zext.703", 32
  %"or.348" = or i64 %"shl.368", %"zext.702"
  %".6652" = inttoptr i64 %"or.348" to ptr
  %".6653" = ptrtoint ptr %".6652" to i64
  %".6654" = add i64 %".6653", 4
  %"for_LDG.341" = inttoptr i64 %".6654" to ptr
  %".6655" = load float, ptr %"for_LDG.341"
  %".6656" = bitcast ptr %"R8" to ptr
  store float %".6655", ptr %".6656"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".6659" = load i1, ptr %"P0"
  %".6660" = icmp ne i1 %".6659", 1
  br i1 %".6660", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  %".6663" = load i32, ptr %"R34"
  %"zext.704" = zext i32 %".6663" to i64
  %".6664" = load i32, ptr %"R35"
  %"zext.705" = zext i32 %".6664" to i64
  %"shl.369" = shl i64 %"zext.705", 32
  %"or.349" = or i64 %"shl.369", %"zext.704"
  %".6665" = inttoptr i64 %"or.349" to ptr
  %".6666" = ptrtoint ptr %".6665" to i64
  %".6667" = add i64 %".6666", 8
  %"for_LDG.342" = inttoptr i64 %".6667" to ptr
  %".6668" = load float, ptr %"for_LDG.342"
  %".6669" = bitcast ptr %"R9" to ptr
  store float %".6668", ptr %".6669"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".6674" = load i1, ptr %"P0"
  %".6675" = icmp ne i1 %".6674", 1
  br i1 %".6675", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  %".6678" = load i32, ptr %"R4"
  %"zext.706" = zext i32 %".6678" to i64
  %".6679" = load i32, ptr %"R5"
  %"zext.707" = zext i32 %".6679" to i64
  %"shl.370" = shl i64 %"zext.707", 32
  %"or.350" = or i64 %"shl.370", %"zext.706"
  %".6680" = inttoptr i64 %"or.350" to ptr
  %".6681" = ptrtoint ptr %".6680" to i64
  %".6682" = add i64 %".6681", 8
  %"for_LDG.343" = inttoptr i64 %".6682" to ptr
  %".6683" = load float, ptr %"for_LDG.343"
  %".6684" = bitcast ptr %"R10" to ptr
  store float %".6683", ptr %".6684"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".6689" = load float, ptr %"R7"
  %".6690" = load float, ptr %"R22"
  %"fmul.301" = fmul float %".6689", %".6690"
  %".6691" = bitcast ptr %"R6" to ptr
  store float %"fmul.301", ptr %".6691"
  ; FFMA R21, R6, R8, R21
  %".6694" = load float, ptr %"R6"
  %".6695" = load float, ptr %"R8"
  %".6696" = load float, ptr %"R21"
  %"fmul.302" = fmul float %".6694", %".6695"
  %"fadd.252" = fadd float %"fmul.302", %".6696"
  %".6697" = bitcast ptr %"R21" to ptr
  store float %"fadd.252", ptr %".6697"
  ; @P0 FMUL R22, R9, R22
  %".6700" = load i1, ptr %"P0"
  %".6701" = icmp ne i1 %".6700", 1
  br i1 %".6701", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".6704" = load float, ptr %"R9"
  %".6705" = load float, ptr %"R22"
  %"fmul.303" = fmul float %".6704", %".6705"
  %".6706" = bitcast ptr %"R22" to ptr
  store float %"fmul.303", ptr %".6706"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".6711" = load i1, ptr %"P0"
  %".6712" = icmp ne i1 %".6711", 1
  br i1 %".6712", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".6715" = load float, ptr %"R22"
  %".6716" = load float, ptr %"R10"
  %".6717" = load float, ptr %"R21"
  %"fmul.304" = fmul float %".6715", %".6716"
  %"fadd.253" = fadd float %"fmul.304", %".6717"
  %".6718" = bitcast ptr %"R21" to ptr
  store float %"fadd.253", ptr %".6718"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  %".6723" = load i32, ptr %"R30"
  %"zext.708" = zext i32 %".6723" to i64
  %"zext.709" = zext i32 0 to i64
  %"shl.371" = shl i64 %"zext.709", 32
  %"or.351" = or i64 %"shl.371", %"zext.708"
  %".6724" = inttoptr i64 %"or.351" to ptr
  %".6725" = ptrtoint ptr %".6724" to i64
  %".6726" = add i64 %".6725", 0
  %"for_LDG.344" = inttoptr i64 %".6726" to ptr
  %".6727" = load float, ptr %"for_LDG.344"
  %".6728" = bitcast ptr %"R4" to ptr
  store float %".6727", ptr %".6728"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".6733" = load float, ptr %"R4"
  %".6734" = load float, ptr %"R21"
  %"fadd.254" = fadd float %".6733", %".6734"
  %".6735" = bitcast ptr %"R21" to ptr
  store float %"fadd.254", ptr %".6735"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".6738" = load float, ptr %"R21"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".6738")
  %".6739" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".6740" = and i1 %"fcmp_unordered.2", %".6739"
  ; @!P0 BRA `(.L_x_42)
  %".6742" = load i1, ptr %"P0"
  %".6743" = icmp eq i1 %".6742", 1
  br i1 %".6743", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".6746" = load float, ptr %"R21"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".6746")
  %"fmul.305" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".6747" = bitcast ptr %"R5" to ptr
  store float %"fmul.305", ptr %".6747"
  ; MOV R7, 0x3f800000
  %".6750" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".6750"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".6753" = load float, ptr %"R21"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".6753")
  %".6754" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".6755" = and i1 %"fcmp_unordered.3", %".6754"
  ; MUFU.EX2 R5, R5
  %".6757" = load float, ptr %"R5"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".6757")
  %".6758" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.5", ptr %".6758"
  ; FADD R6, R5, 1
  %".6761" = load float, ptr %"R5"
  %"fadd.255" = fadd float %".6761", 0x3ff0000000000000
  %".6762" = bitcast ptr %"R6" to ptr
  store float %"fadd.255", ptr %".6762"
  ; MUFU.RCP R6, R6
  %".6765" = load float, ptr %"R6"
  %".6766" = fdiv float 0x3ff0000000000000, %".6765"
  %".6767" = bitcast ptr %"R6" to ptr
  store float %".6766", ptr %".6767"
  ; FFMA R4, R6, -2, R7
  %".6770" = load float, ptr %"R6"
  %".6771" = load float, ptr %"R7"
  %"fmul.306" = fmul float %".6770", 0xc000000000000000
  %"fadd.256" = fadd float %"fmul.306", %".6771"
  %".6772" = bitcast ptr %"R4" to ptr
  store float %"fadd.256", ptr %".6772"
  ; FSEL R4, R4, 1, !P0
  %".6775" = load float, ptr %"R4"
  %".6776" = load i1, ptr %"P0"
  %".6777" = icmp eq i1 %".6776", 1
  %"fsel.1" = select  i1 %".6777", float %".6775", float 0x3ff0000000000000
  %".6778" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".6778"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".6781" = load float, ptr %"R4"
  %".6782" = load float, ptr %"R21"
  %".6783" = bitcast float %".6781" to i32
  %".6784" = bitcast float 0x41e0000000000000 to i32
  %".6785" = bitcast float %".6782" to i32
  %".6786" = or i32 %".6783", %".6784"
  %".6787" = or i32 %".6783", %".6785"
  %".6788" = and i32 %".6786", %".6787"
  store i32 %".6788", ptr %"R4"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  %".6793" = bitcast ptr %"R5" to ptr
  store float 0x41ce407840000000, ptr %".6793"
  ; FMUL R4, R21, R21
  %".6796" = load float, ptr %"R21"
  %".6797" = load float, ptr %"R21"
  %"fmul.307" = fmul float %".6796", %".6797"
  %".6798" = bitcast ptr %"R4" to ptr
  store float %"fmul.307", ptr %".6798"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".6801" = load float, ptr %"R4"
  %".6802" = load float, ptr %"R5"
  %"fmul.308" = fmul float %".6801", %".6802"
  %"fadd.257" = fadd float %"fmul.308", 0xbfaac795c0000000
  %".6803" = bitcast ptr %"R5" to ptr
  store float %"fadd.257", ptr %".6803"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".6806" = load float, ptr %"R4"
  %".6807" = load float, ptr %"R5"
  %"fmul.309" = fmul float %".6806", %".6807"
  %"fadd.258" = fadd float %"fmul.309", 0x3fc10b2820000000
  %".6808" = bitcast ptr %"R5" to ptr
  store float %"fadd.258", ptr %".6808"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".6811" = load float, ptr %"R4"
  %".6812" = load float, ptr %"R5"
  %"fmul.310" = fmul float %".6811", %".6812"
  %"fadd.259" = fadd float %"fmul.310", 0xbfd5553da0000000
  %".6813" = bitcast ptr %"R5" to ptr
  store float %"fadd.259", ptr %".6813"
  ; FFMA R4, R4, R5, RZ
  %".6816" = load float, ptr %"R4"
  %".6817" = load float, ptr %"R5"
  %"fmul.311" = fmul float %".6816", %".6817"
  %"fadd.260" = fadd float %"fmul.311",              0x0
  %".6818" = bitcast ptr %"R4" to ptr
  store float %"fadd.260", ptr %".6818"
  ; FFMA R4, R21, R4, R21
  %".6821" = load float, ptr %"R21"
  %".6822" = load float, ptr %"R4"
  %".6823" = load float, ptr %"R21"
  %"fmul.312" = fmul float %".6821", %".6822"
  %"fadd.261" = fadd float %"fmul.312", %".6823"
  %".6824" = bitcast ptr %"R4" to ptr
  store float %"fadd.261", ptr %".6824"
  br label %".L_x_43"
.L_x_43:
  ; BSYNC B0
  br label %".L_x_41"
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  %".6830" = load i32, ptr %"R23"
  %"add.310" = add i32 %".6830", 25165824
  %"add.311" = add i32 %"add.310", 0
  store i32 %"add.311", ptr %"R5"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".6835" = load i32, ptr %"R5"
  %".6836" = and i32 %".6835", 2139095040
  store i32 %".6836", ptr %"R5"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".6839" = load i32, ptr %"R5"
  %".6840" = load i1, ptr %"PT"
  %"cmp.55" = icmp sgt i32 %".6839", 33554431
  %".6841" = and i1 %"cmp.55", %".6840"
  ; @P0 BRA `(.L_x_45)
  %".6843" = load i1, ptr %"P0"
  %".6844" = icmp ne i1 %".6843", 1
  br i1 %".6844", label %".L_x_45", label %".L_x_41_split_0x47f0"
.L_x_41_split_0x47f0:
  ; MOV R24, R23
  %".6847" = load float, ptr %"R23"
  %".6848" = bitcast ptr %"R24" to ptr
  store float %".6847", ptr %".6848"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.3" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R5, R22
  %".6854" = load i32, ptr %"R22"
  store i32 %".6854", ptr %"R5"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".6859" = load float, ptr %"R23"
  %".6860" = fdiv float 0x3ff0000000000000, %".6859"
  %".6861" = bitcast ptr %"R6" to ptr
  store float %".6860", ptr %".6861"
  ; FFMA R5, R23, R6, -1
  %".6864" = load float, ptr %"R23"
  %".6865" = load float, ptr %"R6"
  %"fmul.313" = fmul float %".6864", %".6865"
  %"fadd.262" = fadd float %"fmul.313", 0xbff0000000000000
  %".6866" = bitcast ptr %"R5" to ptr
  store float %"fadd.262", ptr %".6866"
  ; FADD.FTZ R5, -R5, -RZ
  %".6869" = load float, ptr %"R5"
  %".6870" = fneg float %".6869"
  %"fadd.263" = fadd float %".6870",              0x0
  %".6871" = bitcast ptr %"R5" to ptr
  store float %"fadd.263", ptr %".6871"
  ; FFMA R5, R6, R5, R6
  %".6874" = load float, ptr %"R6"
  %".6875" = load float, ptr %"R5"
  %".6876" = load float, ptr %"R6"
  %"fmul.314" = fmul float %".6874", %".6875"
  %"fadd.264" = fadd float %"fmul.314", %".6876"
  %".6877" = bitcast ptr %"R5" to ptr
  store float %"fadd.264", ptr %".6877"
  br label %".L_x_46"
.L_x_46:
  ; BSYNC B0
  br label %".L_x_44"
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  %".6883" = load i32, ptr %"R28"
  %"zext.710" = zext i32 %".6883" to i64
  %"zext.711" = zext i32 0 to i64
  %"shl.372" = shl i64 %"zext.711", 32
  %"or.352" = or i64 %"shl.372", %"zext.710"
  %".6884" = inttoptr i64 %"or.352" to ptr
  %".6885" = ptrtoint ptr %".6884" to i64
  %".6886" = add i64 %".6885", 0
  %"for_LDG.345" = inttoptr i64 %".6886" to ptr
  %".6887" = load float, ptr %"for_LDG.345"
  %".6888" = bitcast ptr %"R6" to ptr
  store float %".6887", ptr %".6888"
  ; FADD R7, -R5, 1
  %".6891" = load float, ptr %"R5"
  %".6892" = fneg float %".6891"
  %"fadd.265" = fadd float %".6892", 0x3ff0000000000000
  %".6893" = bitcast ptr %"R7" to ptr
  store float %"fadd.265", ptr %".6893"
  ; FMUL R6, R6, R5
  %".6896" = load float, ptr %"R6"
  %".6897" = load float, ptr %"R5"
  %"fmul.315" = fmul float %".6896", %".6897"
  %".6898" = bitcast ptr %"R6" to ptr
  store float %"fmul.315", ptr %".6898"
  ; FFMA R7, R7, R4, R6
  %".6901" = load float, ptr %"R7"
  %".6902" = load float, ptr %"R4"
  %".6903" = load float, ptr %"R6"
  %"fmul.316" = fmul float %".6901", %".6902"
  %"fadd.266" = fadd float %"fmul.316", %".6903"
  %".6904" = bitcast ptr %"R7" to ptr
  store float %"fadd.266", ptr %".6904"
  ; STG.E.SYS [R28], R7
  %".6907" = load float, ptr %"R7"
  %".6908" = load i32, ptr %"R28"
  %"zext.712" = zext i32 %".6908" to i64
  %"zext.713" = zext i32 0 to i64
  %"shl.373" = shl i64 %"zext.713", 32
  %"or.353" = or i64 %"shl.373", %"zext.712"
  %".6909" = inttoptr i64 %"or.353" to ptr
  %".6910" = ptrtoint ptr %".6909" to i64
  %".6911" = add i64 %".6910", 0
  %"for_STG.1" = inttoptr i64 %".6911" to ptr
  store float %".6907", ptr %"for_STG.1"
  ; @!P3 BRA `(.L_x_47)
  %".6914" = load i1, ptr %"P3"
  %".6915" = icmp eq i1 %".6914", 1
  br i1 %".6915", label %".L_x_47", label %".L_x_44_split_0x48f0"
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

