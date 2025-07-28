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
.L_x_22:
  ; MOV R8, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R8"
  ; IADD3 R6, R6, 0x1, RZ
  %".104" = load i32, ptr %"R6"
  %"add.14" = add i32 %".104", 1
  %"add.15" = add i32 %"add.14", 0
  store i32 %"add.15", ptr %"R6"
  ; ISETP.GE.AND P4, PT, R8, 0x1, PT
  %".107" = load i32, ptr %"R8"
  %".108" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".107", 1
  %".109" = and i1 %"cmp.3", %".108"
  ; ISETP.GE.AND P3, PT, R6, c[0x0][0x188], PT
  %".111" = load i32, ptr %"R6"
  %".112" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".111", %"Arg_8"
  %".113" = and i1 %"cmp.4", %".112"
  ; MOV R8, RZ
  %".115" = load float, ptr %"RZ"
  %".116" = bitcast ptr %"R8" to ptr
  store float %".115", ptr %".116"
  ; MOV R52, RZ
  %".119" = load float, ptr %"RZ"
  %".120" = bitcast ptr %"R52" to ptr
  store float %".119", ptr %".120"
  ; MOV R54, RZ
  %".123" = load float, ptr %"RZ"
  %".124" = bitcast ptr %"R54" to ptr
  store float %".123", ptr %".124"
  ; @!P4 BRA `(.L_x_1)
  %".127" = load i1, ptr %"P4"
  %".128" = icmp eq i1 %".127", 1
  br i1 %".128", label %".L_x_1", label %".L_x_22_split_0x0230"
.L_x_22_split_0x0230:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".131" = load i32, ptr %"R5"
  %".132" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".131", 3
  %".133" = and i1 %"cmp.5", %".132"
  ; MOV R54, RZ
  %".135" = load float, ptr %"RZ"
  %".136" = bitcast ptr %"R54" to ptr
  store float %".135", ptr %".136"
  ; MOV R11, RZ
  %".139" = load i32, ptr %"RZ"
  store i32 %".139", ptr %"R11"
  ; MOV R52, RZ
  %".142" = load float, ptr %"RZ"
  %".143" = bitcast ptr %"R52" to ptr
  store float %".142", ptr %".143"
  ; @!P0 BRA `(.L_x_2)
  %".146" = load i1, ptr %"P0"
  %".147" = icmp eq i1 %".146", 1
  br i1 %".147", label %".L_x_2", label %".L_x_22_split_0x0280"
.L_x_22_split_0x0280:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".150" = load i32, ptr %"R7"
  %".151" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".150", 0
  %".152" = and i1 %"cmp.6", %".151"
  ; MOV R54, RZ
  %".154" = load float, ptr %"RZ"
  %".155" = bitcast ptr %"R54" to ptr
  store float %".154", ptr %".155"
  ; MOV R11, RZ
  %".158" = load i32, ptr %"RZ"
  store i32 %".158", ptr %"R11"
  ; MOV R9, R7
  %".161" = load i32, ptr %"R7"
  store i32 %".161", ptr %"R9"
  ; @!P0 BRA `(.L_x_3)
  %".164" = load i1, ptr %"P0"
  %".165" = icmp eq i1 %".164", 1
  br i1 %".165", label %".L_x_3", label %".L_x_22_split_0x02d0"
.L_x_22_split_0x02d0:
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".168" = load i32, ptr %"R9"
  %".169" = load i1, ptr %"PT"
  %"cmp.7" = icmp sgt i32 %".168", 12
  %".170" = and i1 %"cmp.7", %".169"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".172" = and i1 1, 1
  %".173" = or i1 %".172", 1
  ; @!P1 BRA `(.L_x_4)
  %".175" = load i1, ptr %"P1"
  %".176" = icmp eq i1 %".175", 1
  br i1 %".176", label %".L_x_4", label %".L_x_22_split_0x0300"
.L_x_22_split_0x0300:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".179" = xor i1 1, 1
  %".180" = and i1 %".179", 1
  %".181" = and i1 %".180", 1
.L_x_5:
  ; IADD3 R25, R0, R11, RZ
  %".183" = load i32, ptr %"R0"
  %".184" = load i32, ptr %"R11"
  %"add.16" = add i32 %".183", %".184"
  %"add.17" = add i32 %"add.16", 0
  store i32 %"add.17", ptr %"R25"
  ; MOV R18, 0x4
  store i32 4, ptr %"R18"
  ; IMAD R23, R2.reuse, 0x3, R25
  %".189" = load i32, ptr %"R2"
  %".190" = load i32, ptr %"R25"
  %"mul.8" = mul i32 %".189", 3
  %"add.18" = add i32 %"mul.8", %".190"
  store i32 %"add.18", ptr %"R23"
  ; LEA R25, R2, R25, 0x2
  %".193" = load i32, ptr %"R2"
  %".194" = load i32, ptr %"R25"
  %"shl.2" = shl i32 %".193", 2
  %"add.19" = add i32 %"shl.2", %".194"
  store i32 %"add.19", ptr %"R25"
  ; IMAD.WIDE R38, R11, R18, c[0x0][0x168]
  %".197" = load i32, ptr %"R11"
  %".198" = load i32, ptr %"R18"
  %"mul.9" = mul i32 %".197", %".198"
  %"add.20" = add i32 %"mul.9", %"Arg_3"
  store i32 %"add.20", ptr %"R38"
  ; IMAD.WIDE R16, R23, R18, c[0x0][0x170]
  %".201" = load i32, ptr %"R23"
  %".202" = load i32, ptr %"R18"
  %"mul.10" = mul i32 %".201", %".202"
  %"add.21" = add i32 %"mul.10", %"Arg_4"
  store i32 %"add.21", ptr %"R16"
  ; IMAD.WIDE R20, R25, R18, c[0x0][0x170]
  %".205" = load i32, ptr %"R25"
  %".206" = load i32, ptr %"R18"
  %"mul.11" = mul i32 %".205", %".206"
  %"add.22" = add i32 %"mul.11", %"Arg_4"
  store i32 %"add.22", ptr %"R20"
  ; LDG.E.SYS R57, [R38]
  %".209" = load i32, ptr %"R38"
  %"zext" = zext i32 %".209" to i64
  %".210" = load i32, ptr %"R39"
  %"zext.1" = zext i32 %".210" to i64
  %"shl.3" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl.3", %"zext"
  %".211" = add i64 %"or", 0
  %"for_LDG" = inttoptr i64 %".211" to ptr
  %".212" = load float, ptr %"for_LDG"
  %".213" = bitcast ptr %"R57" to ptr
  store float %".212", ptr %".213"
  ; LDG.E.SYS R56, [R16]
  %".216" = load i32, ptr %"R16"
  %"zext.2" = zext i32 %".216" to i64
  %".217" = load i32, ptr %"R17"
  %"zext.3" = zext i32 %".217" to i64
  %"shl.4" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.4", %"zext.2"
  %".218" = add i64 %"or.1", 0
  %"for_LDG.1" = inttoptr i64 %".218" to ptr
  %".219" = load float, ptr %"for_LDG.1"
  %".220" = bitcast ptr %"R56" to ptr
  store float %".219", ptr %".220"
  ; LDG.E.SYS R58, [R20]
  %".223" = load i32, ptr %"R20"
  %"zext.4" = zext i32 %".223" to i64
  %".224" = load i32, ptr %"R21"
  %"zext.5" = zext i32 %".224" to i64
  %"shl.5" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.5", %"zext.4"
  %".225" = add i64 %"or.2", 0
  %"for_LDG.2" = inttoptr i64 %".225" to ptr
  %".226" = load float, ptr %"for_LDG.2"
  %".227" = bitcast ptr %"R58" to ptr
  store float %".226", ptr %".227"
  ; LDG.E.SYS R24, [R38+0x4]
  %".230" = load i32, ptr %"R38"
  %"zext.6" = zext i32 %".230" to i64
  %".231" = load i32, ptr %"R39"
  %"zext.7" = zext i32 %".231" to i64
  %"shl.6" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.6", %"zext.6"
  %".232" = add i64 %"or.3", 4
  %"for_LDG.3" = inttoptr i64 %".232" to ptr
  %".233" = load float, ptr %"for_LDG.3"
  %".234" = bitcast ptr %"R24" to ptr
  store float %".233", ptr %".234"
  ; LDG.E.SYS R47, [R16+0x4]
  %".237" = load i32, ptr %"R16"
  %"zext.8" = zext i32 %".237" to i64
  %".238" = load i32, ptr %"R17"
  %"zext.9" = zext i32 %".238" to i64
  %"shl.7" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.7", %"zext.8"
  %".239" = add i64 %"or.4", 4
  %"for_LDG.4" = inttoptr i64 %".239" to ptr
  %".240" = load float, ptr %"for_LDG.4"
  %".241" = bitcast ptr %"R47" to ptr
  store float %".240", ptr %".241"
  ; LDG.E.SYS R49, [R20+0x4]
  %".244" = load i32, ptr %"R20"
  %"zext.10" = zext i32 %".244" to i64
  %".245" = load i32, ptr %"R21"
  %"zext.11" = zext i32 %".245" to i64
  %"shl.8" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.8", %"zext.10"
  %".246" = add i64 %"or.5", 4
  %"for_LDG.5" = inttoptr i64 %".246" to ptr
  %".247" = load float, ptr %"for_LDG.5"
  %".248" = bitcast ptr %"R49" to ptr
  store float %".247", ptr %".248"
  ; LDG.E.SYS R22, [R38+0x8]
  %".251" = load i32, ptr %"R38"
  %"zext.12" = zext i32 %".251" to i64
  %".252" = load i32, ptr %"R39"
  %"zext.13" = zext i32 %".252" to i64
  %"shl.9" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.9", %"zext.12"
  %".253" = add i64 %"or.6", 8
  %"for_LDG.6" = inttoptr i64 %".253" to ptr
  %".254" = load float, ptr %"for_LDG.6"
  %".255" = bitcast ptr %"R22" to ptr
  store float %".254", ptr %".255"
  ; LDG.E.SYS R43, [R16+0x8]
  %".258" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".258" to i64
  %".259" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".259" to i64
  %"shl.10" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.10", %"zext.14"
  %".260" = add i64 %"or.7", 8
  %"for_LDG.7" = inttoptr i64 %".260" to ptr
  %".261" = load float, ptr %"for_LDG.7"
  %".262" = bitcast ptr %"R43" to ptr
  store float %".261", ptr %".262"
  ; LDG.E.SYS R45, [R20+0x8]
  %".265" = load i32, ptr %"R20"
  %"zext.16" = zext i32 %".265" to i64
  %".266" = load i32, ptr %"R21"
  %"zext.17" = zext i32 %".266" to i64
  %"shl.11" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.11", %"zext.16"
  %".267" = add i64 %"or.8", 8
  %"for_LDG.8" = inttoptr i64 %".267" to ptr
  %".268" = load float, ptr %"for_LDG.8"
  %".269" = bitcast ptr %"R45" to ptr
  store float %".268", ptr %".269"
  ; LDG.E.SYS R15, [R38+0xc]
  %".272" = load i32, ptr %"R38"
  %"zext.18" = zext i32 %".272" to i64
  %".273" = load i32, ptr %"R39"
  %"zext.19" = zext i32 %".273" to i64
  %"shl.12" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.12", %"zext.18"
  %".274" = add i64 %"or.9", 12
  %"for_LDG.9" = inttoptr i64 %".274" to ptr
  %".275" = load float, ptr %"for_LDG.9"
  %".276" = bitcast ptr %"R15" to ptr
  store float %".275", ptr %".276"
  ; LDG.E.SYS R14, [R16+0xc]
  %".279" = load i32, ptr %"R16"
  %"zext.20" = zext i32 %".279" to i64
  %".280" = load i32, ptr %"R17"
  %"zext.21" = zext i32 %".280" to i64
  %"shl.13" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.13", %"zext.20"
  %".281" = add i64 %"or.10", 12
  %"for_LDG.10" = inttoptr i64 %".281" to ptr
  %".282" = load float, ptr %"for_LDG.10"
  %".283" = bitcast ptr %"R14" to ptr
  store float %".282", ptr %".283"
  ; LDG.E.SYS R13, [R20+0xc]
  %".286" = load i32, ptr %"R20"
  %"zext.22" = zext i32 %".286" to i64
  %".287" = load i32, ptr %"R21"
  %"zext.23" = zext i32 %".287" to i64
  %"shl.14" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.14", %"zext.22"
  %".288" = add i64 %"or.11", 12
  %"for_LDG.11" = inttoptr i64 %".288" to ptr
  %".289" = load float, ptr %"for_LDG.11"
  %".290" = bitcast ptr %"R13" to ptr
  store float %".289", ptr %".290"
  ; IADD3 R41, R11, 0x4, RZ
  %".293" = load i32, ptr %"R11"
  %"add.23" = add i32 %".293", 4
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R41"
  ; IADD3 R51, R23, 0x4, RZ
  %".296" = load i32, ptr %"R23"
  %"add.25" = add i32 %".296", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"R51"
  ; IADD3 R35, R11, 0x8, RZ
  %".299" = load i32, ptr %"R11"
  %"add.27" = add i32 %".299", 8
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", ptr %"R35"
  ; IMAD.WIDE R40, R41, R18, c[0x0][0x168]
  %".302" = load i32, ptr %"R41"
  %".303" = load i32, ptr %"R18"
  %"mul.12" = mul i32 %".302", %".303"
  %"add.29" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.29", ptr %"R40"
  ; IADD3 R37, R11, 0xc, RZ
  %".306" = load i32, ptr %"R11"
  %"add.30" = add i32 %".306", 12
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R37"
  ; IMAD.WIDE R38, R51, R18, c[0x0][0x170]
  %".309" = load i32, ptr %"R51"
  %".310" = load i32, ptr %"R18"
  %"mul.13" = mul i32 %".309", %".310"
  %"add.32" = add i32 %"mul.13", %"Arg_4"
  store i32 %"add.32", ptr %"R38"
  ; IADD3 R51, R25, 0x4, RZ
  %".313" = load i32, ptr %"R25"
  %"add.33" = add i32 %".313", 4
  %"add.34" = add i32 %"add.33", 0
  store i32 %"add.34", ptr %"R51"
  ; LDG.E.SYS R12, [R40]
  %".316" = load i32, ptr %"R40"
  %"zext.24" = zext i32 %".316" to i64
  %".317" = load i32, ptr %"R41"
  %"zext.25" = zext i32 %".317" to i64
  %"shl.15" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.15", %"zext.24"
  %".318" = add i64 %"or.12", 0
  %"for_LDG.12" = inttoptr i64 %".318" to ptr
  %".319" = load float, ptr %"for_LDG.12"
  %".320" = bitcast ptr %"R12" to ptr
  store float %".319", ptr %".320"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x168]
  %".323" = load i32, ptr %"R35"
  %".324" = load i32, ptr %"R18"
  %"mul.14" = mul i32 %".323", %".324"
  %"add.35" = add i32 %"mul.14", %"Arg_3"
  store i32 %"add.35", ptr %"R34"
  ; LDG.E.SYS R10, [R40+0x4]
  %".327" = load i32, ptr %"R40"
  %"zext.26" = zext i32 %".327" to i64
  %".328" = load i32, ptr %"R41"
  %"zext.27" = zext i32 %".328" to i64
  %"shl.16" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.16", %"zext.26"
  %".329" = add i64 %"or.13", 4
  %"for_LDG.13" = inttoptr i64 %".329" to ptr
  %".330" = load float, ptr %"for_LDG.13"
  %".331" = bitcast ptr %"R10" to ptr
  store float %".330", ptr %".331"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x168]
  %".334" = load i32, ptr %"R37"
  %".335" = load i32, ptr %"R18"
  %"mul.15" = mul i32 %".334", %".335"
  %"add.36" = add i32 %"mul.15", %"Arg_3"
  store i32 %"add.36", ptr %"R36"
  ; LDG.E.SYS R16, [R40+0x8]
  %".338" = load i32, ptr %"R40"
  %"zext.28" = zext i32 %".338" to i64
  %".339" = load i32, ptr %"R41"
  %"zext.29" = zext i32 %".339" to i64
  %"shl.17" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.17", %"zext.28"
  %".340" = add i64 %"or.14", 8
  %"for_LDG.14" = inttoptr i64 %".340" to ptr
  %".341" = load float, ptr %"for_LDG.14"
  %".342" = bitcast ptr %"R16" to ptr
  store float %".341", ptr %".342"
  ; LDG.E.SYS R17, [R40+0xc]
  %".345" = load i32, ptr %"R40"
  %"zext.30" = zext i32 %".345" to i64
  %".346" = load i32, ptr %"R41"
  %"zext.31" = zext i32 %".346" to i64
  %"shl.18" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.18", %"zext.30"
  %".347" = add i64 %"or.15", 12
  %"for_LDG.15" = inttoptr i64 %".347" to ptr
  %".348" = load float, ptr %"for_LDG.15"
  %".349" = bitcast ptr %"R17" to ptr
  store float %".348", ptr %".349"
  ; LDG.E.SYS R19, [R34]
  %".352" = load i32, ptr %"R34"
  %"zext.32" = zext i32 %".352" to i64
  %".353" = load i32, ptr %"R35"
  %"zext.33" = zext i32 %".353" to i64
  %"shl.19" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.19", %"zext.32"
  %".354" = add i64 %"or.16", 0
  %"for_LDG.16" = inttoptr i64 %".354" to ptr
  %".355" = load float, ptr %"for_LDG.16"
  %".356" = bitcast ptr %"R19" to ptr
  store float %".355", ptr %".356"
  ; LDG.E.SYS R20, [R34+0x4]
  %".359" = load i32, ptr %"R34"
  %"zext.34" = zext i32 %".359" to i64
  %".360" = load i32, ptr %"R35"
  %"zext.35" = zext i32 %".360" to i64
  %"shl.20" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.20", %"zext.34"
  %".361" = add i64 %"or.17", 4
  %"for_LDG.17" = inttoptr i64 %".361" to ptr
  %".362" = load float, ptr %"for_LDG.17"
  %".363" = bitcast ptr %"R20" to ptr
  store float %".362", ptr %".363"
  ; IMAD.WIDE R40, R51, R18, c[0x0][0x170]
  %".366" = load i32, ptr %"R51"
  %".367" = load i32, ptr %"R18"
  %"mul.16" = mul i32 %".366", %".367"
  %"add.37" = add i32 %"mul.16", %"Arg_4"
  store i32 %"add.37", ptr %"R40"
  ; LDG.E.SYS R51, [R38]
  %".370" = load i32, ptr %"R38"
  %"zext.36" = zext i32 %".370" to i64
  %".371" = load i32, ptr %"R39"
  %"zext.37" = zext i32 %".371" to i64
  %"shl.21" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.21", %"zext.36"
  %".372" = add i64 %"or.18", 0
  %"for_LDG.18" = inttoptr i64 %".372" to ptr
  %".373" = load float, ptr %"for_LDG.18"
  %".374" = bitcast ptr %"R51" to ptr
  store float %".373", ptr %".374"
  ; LDG.E.SYS R21, [R34+0x8]
  %".377" = load i32, ptr %"R34"
  %"zext.38" = zext i32 %".377" to i64
  %".378" = load i32, ptr %"R35"
  %"zext.39" = zext i32 %".378" to i64
  %"shl.22" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.22", %"zext.38"
  %".379" = add i64 %"or.19", 8
  %"for_LDG.19" = inttoptr i64 %".379" to ptr
  %".380" = load float, ptr %"for_LDG.19"
  %".381" = bitcast ptr %"R21" to ptr
  store float %".380", ptr %".381"
  ; LDG.E.SYS R42, [R34+0xc]
  %".384" = load i32, ptr %"R34"
  %"zext.40" = zext i32 %".384" to i64
  %".385" = load i32, ptr %"R35"
  %"zext.41" = zext i32 %".385" to i64
  %"shl.23" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.23", %"zext.40"
  %".386" = add i64 %"or.20", 12
  %"for_LDG.20" = inttoptr i64 %".386" to ptr
  %".387" = load float, ptr %"for_LDG.20"
  %".388" = bitcast ptr %"R42" to ptr
  store float %".387", ptr %".388"
  ; LDG.E.SYS R44, [R36]
  %".391" = load i32, ptr %"R36"
  %"zext.42" = zext i32 %".391" to i64
  %".392" = load i32, ptr %"R37"
  %"zext.43" = zext i32 %".392" to i64
  %"shl.24" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.24", %"zext.42"
  %".393" = add i64 %"or.21", 0
  %"for_LDG.21" = inttoptr i64 %".393" to ptr
  %".394" = load float, ptr %"for_LDG.21"
  %".395" = bitcast ptr %"R44" to ptr
  store float %".394", ptr %".395"
  ; LDG.E.SYS R46, [R36+0x4]
  %".398" = load i32, ptr %"R36"
  %"zext.44" = zext i32 %".398" to i64
  %".399" = load i32, ptr %"R37"
  %"zext.45" = zext i32 %".399" to i64
  %"shl.25" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.25", %"zext.44"
  %".400" = add i64 %"or.22", 4
  %"for_LDG.22" = inttoptr i64 %".400" to ptr
  %".401" = load float, ptr %"for_LDG.22"
  %".402" = bitcast ptr %"R46" to ptr
  store float %".401", ptr %".402"
  ; IADD3 R35, R23, 0x8, RZ
  %".405" = load i32, ptr %"R23"
  %"add.38" = add i32 %".405", 8
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R35"
  ; LDG.E.SYS R48, [R36+0x8]
  %".408" = load i32, ptr %"R36"
  %"zext.46" = zext i32 %".408" to i64
  %".409" = load i32, ptr %"R37"
  %"zext.47" = zext i32 %".409" to i64
  %"shl.26" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.26", %"zext.46"
  %".410" = add i64 %"or.23", 8
  %"for_LDG.23" = inttoptr i64 %".410" to ptr
  %".411" = load float, ptr %"for_LDG.23"
  %".412" = bitcast ptr %"R48" to ptr
  store float %".411", ptr %".412"
  ; LDG.E.SYS R50, [R36+0xc]
  %".415" = load i32, ptr %"R36"
  %"zext.48" = zext i32 %".415" to i64
  %".416" = load i32, ptr %"R37"
  %"zext.49" = zext i32 %".416" to i64
  %"shl.27" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.27", %"zext.48"
  %".417" = add i64 %"or.24", 12
  %"for_LDG.24" = inttoptr i64 %".417" to ptr
  %".418" = load float, ptr %"for_LDG.24"
  %".419" = bitcast ptr %"R50" to ptr
  store float %".418", ptr %".419"
  ; LDG.E.SYS R53, [R38+0x4]
  %".422" = load i32, ptr %"R38"
  %"zext.50" = zext i32 %".422" to i64
  %".423" = load i32, ptr %"R39"
  %"zext.51" = zext i32 %".423" to i64
  %"shl.28" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.28", %"zext.50"
  %".424" = add i64 %"or.25", 4
  %"for_LDG.25" = inttoptr i64 %".424" to ptr
  %".425" = load float, ptr %"for_LDG.25"
  %".426" = bitcast ptr %"R53" to ptr
  store float %".425", ptr %".426"
  ; LDG.E.SYS R59, [R40+0x4]
  %".429" = load i32, ptr %"R40"
  %"zext.52" = zext i32 %".429" to i64
  %".430" = load i32, ptr %"R41"
  %"zext.53" = zext i32 %".430" to i64
  %"shl.29" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.29", %"zext.52"
  %".431" = add i64 %"or.26", 4
  %"for_LDG.26" = inttoptr i64 %".431" to ptr
  %".432" = load float, ptr %"for_LDG.26"
  %".433" = bitcast ptr %"R59" to ptr
  store float %".432", ptr %".433"
  ; IADD3 R37, R25, 0x8, RZ
  %".436" = load i32, ptr %"R25"
  %"add.40" = add i32 %".436", 8
  %"add.41" = add i32 %"add.40", 0
  store i32 %"add.41", ptr %"R37"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x170]
  %".439" = load i32, ptr %"R35"
  %".440" = load i32, ptr %"R18"
  %"mul.17" = mul i32 %".439", %".440"
  %"add.42" = add i32 %"mul.17", %"Arg_4"
  store i32 %"add.42", ptr %"R34"
  ; LDG.E.SYS R55, [R38+0x8]
  %".443" = load i32, ptr %"R38"
  %"zext.54" = zext i32 %".443" to i64
  %".444" = load i32, ptr %"R39"
  %"zext.55" = zext i32 %".444" to i64
  %"shl.30" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.30", %"zext.54"
  %".445" = add i64 %"or.27", 8
  %"for_LDG.27" = inttoptr i64 %".445" to ptr
  %".446" = load float, ptr %"for_LDG.27"
  %".447" = bitcast ptr %"R55" to ptr
  store float %".446", ptr %".447"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x170]
  %".450" = load i32, ptr %"R37"
  %".451" = load i32, ptr %"R18"
  %"mul.18" = mul i32 %".450", %".451"
  %"add.43" = add i32 %"mul.18", %"Arg_4"
  store i32 %"add.43", ptr %"R36"
  ; LDG.E.SYS R61, [R40+0x8]
  %".454" = load i32, ptr %"R40"
  %"zext.56" = zext i32 %".454" to i64
  %".455" = load i32, ptr %"R41"
  %"zext.57" = zext i32 %".455" to i64
  %"shl.31" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.31", %"zext.56"
  %".456" = add i64 %"or.28", 8
  %"for_LDG.28" = inttoptr i64 %".456" to ptr
  %".457" = load float, ptr %"for_LDG.28"
  %".458" = bitcast ptr %"R61" to ptr
  store float %".457", ptr %".458"
  ; LDG.E.SYS R60, [R38+0xc]
  %".461" = load i32, ptr %"R38"
  %"zext.58" = zext i32 %".461" to i64
  %".462" = load i32, ptr %"R39"
  %"zext.59" = zext i32 %".462" to i64
  %"shl.32" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.32", %"zext.58"
  %".463" = add i64 %"or.29", 12
  %"for_LDG.29" = inttoptr i64 %".463" to ptr
  %".464" = load float, ptr %"for_LDG.29"
  %".465" = bitcast ptr %"R60" to ptr
  store float %".464", ptr %".465"
  ; IADD3 R23, R23, 0xc, RZ
  %".468" = load i32, ptr %"R23"
  %"add.44" = add i32 %".468", 12
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R23"
  ; IADD3 R25, R25, 0xc, RZ
  %".471" = load i32, ptr %"R25"
  %"add.46" = add i32 %".471", 12
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R25"
  ; LDG.E.SYS R39, [R34+0x4]
  %".474" = load i32, ptr %"R34"
  %"zext.60" = zext i32 %".474" to i64
  %".475" = load i32, ptr %"R35"
  %"zext.61" = zext i32 %".475" to i64
  %"shl.33" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.33", %"zext.60"
  %".476" = add i64 %"or.30", 4
  %"for_LDG.30" = inttoptr i64 %".476" to ptr
  %".477" = load float, ptr %"for_LDG.30"
  %".478" = bitcast ptr %"R39" to ptr
  store float %".477", ptr %".478"
  ; LDG.E.SYS R38, [R34+0x8]
  %".481" = load i32, ptr %"R34"
  %"zext.62" = zext i32 %".481" to i64
  %".482" = load i32, ptr %"R35"
  %"zext.63" = zext i32 %".482" to i64
  %"shl.34" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.34", %"zext.62"
  %".483" = add i64 %"or.31", 8
  %"for_LDG.31" = inttoptr i64 %".483" to ptr
  %".484" = load float, ptr %"for_LDG.31"
  %".485" = bitcast ptr %"R38" to ptr
  store float %".484", ptr %".485"
  ; FFMA R56, R56, R57, R52
  %".488" = load float, ptr %"R56"
  %".489" = load float, ptr %"R57"
  %".490" = load float, ptr %"R52"
  %"fmul" = fmul float %".488", %".489"
  %"fadd" = fadd float %"fmul", %".490"
  %".491" = bitcast ptr %"R56" to ptr
  store float %"fadd", ptr %".491"
  ; LDG.E.SYS R52, [R40+0xc]
  %".494" = load i32, ptr %"R40"
  %"zext.64" = zext i32 %".494" to i64
  %".495" = load i32, ptr %"R41"
  %"zext.65" = zext i32 %".495" to i64
  %"shl.35" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.35", %"zext.64"
  %".496" = add i64 %"or.32", 12
  %"for_LDG.32" = inttoptr i64 %".496" to ptr
  %".497" = load float, ptr %"for_LDG.32"
  %".498" = bitcast ptr %"R52" to ptr
  store float %".497", ptr %".498"
  ; FFMA R58, R57, R58, R54
  %".501" = load float, ptr %"R57"
  %".502" = load float, ptr %"R58"
  %".503" = load float, ptr %"R54"
  %"fmul.1" = fmul float %".501", %".502"
  %"fadd.1" = fadd float %"fmul.1", %".503"
  %".504" = bitcast ptr %"R58" to ptr
  store float %"fadd.1", ptr %".504"
  ; LDG.E.SYS R57, [R40]
  %".507" = load i32, ptr %"R40"
  %"zext.66" = zext i32 %".507" to i64
  %".508" = load i32, ptr %"R41"
  %"zext.67" = zext i32 %".508" to i64
  %"shl.36" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.36", %"zext.66"
  %".509" = add i64 %"or.33", 0
  %"for_LDG.33" = inttoptr i64 %".509" to ptr
  %".510" = load float, ptr %"for_LDG.33"
  %".511" = bitcast ptr %"R57" to ptr
  store float %".510", ptr %".511"
  ; LDG.E.SYS R54, [R34]
  %".514" = load i32, ptr %"R34"
  %"zext.68" = zext i32 %".514" to i64
  %".515" = load i32, ptr %"R35"
  %"zext.69" = zext i32 %".515" to i64
  %"shl.37" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.37", %"zext.68"
  %".516" = add i64 %"or.34", 0
  %"for_LDG.34" = inttoptr i64 %".516" to ptr
  %".517" = load float, ptr %"for_LDG.34"
  %".518" = bitcast ptr %"R54" to ptr
  store float %".517", ptr %".518"
  ; FFMA R56, R47, R24, R56
  %".521" = load float, ptr %"R47"
  %".522" = load float, ptr %"R24"
  %".523" = load float, ptr %"R56"
  %"fmul.2" = fmul float %".521", %".522"
  %"fadd.2" = fadd float %"fmul.2", %".523"
  %".524" = bitcast ptr %"R56" to ptr
  store float %"fadd.2", ptr %".524"
  ; LDG.E.SYS R47, [R34+0xc]
  %".527" = load i32, ptr %"R34"
  %"zext.70" = zext i32 %".527" to i64
  %".528" = load i32, ptr %"R35"
  %"zext.71" = zext i32 %".528" to i64
  %"shl.38" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.38", %"zext.70"
  %".529" = add i64 %"or.35", 12
  %"for_LDG.35" = inttoptr i64 %".529" to ptr
  %".530" = load float, ptr %"for_LDG.35"
  %".531" = bitcast ptr %"R47" to ptr
  store float %".530", ptr %".531"
  ; FFMA R58, R24, R49, R58
  %".534" = load float, ptr %"R24"
  %".535" = load float, ptr %"R49"
  %".536" = load float, ptr %"R58"
  %"fmul.3" = fmul float %".534", %".535"
  %"fadd.3" = fadd float %"fmul.3", %".536"
  %".537" = bitcast ptr %"R58" to ptr
  store float %"fadd.3", ptr %".537"
  ; LDG.E.SYS R41, [R36+0x4]
  %".540" = load i32, ptr %"R36"
  %"zext.72" = zext i32 %".540" to i64
  %".541" = load i32, ptr %"R37"
  %"zext.73" = zext i32 %".541" to i64
  %"shl.39" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.39", %"zext.72"
  %".542" = add i64 %"or.36", 4
  %"for_LDG.36" = inttoptr i64 %".542" to ptr
  %".543" = load float, ptr %"for_LDG.36"
  %".544" = bitcast ptr %"R41" to ptr
  store float %".543", ptr %".544"
  ; LDG.E.SYS R40, [R36+0x8]
  %".547" = load i32, ptr %"R36"
  %"zext.74" = zext i32 %".547" to i64
  %".548" = load i32, ptr %"R37"
  %"zext.75" = zext i32 %".548" to i64
  %"shl.40" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.40", %"zext.74"
  %".549" = add i64 %"or.37", 8
  %"for_LDG.37" = inttoptr i64 %".549" to ptr
  %".550" = load float, ptr %"for_LDG.37"
  %".551" = bitcast ptr %"R40" to ptr
  store float %".550", ptr %".551"
  ; FFMA R49, R43, R22, R56
  %".554" = load float, ptr %"R43"
  %".555" = load float, ptr %"R22"
  %".556" = load float, ptr %"R56"
  %"fmul.4" = fmul float %".554", %".555"
  %"fadd.4" = fadd float %"fmul.4", %".556"
  %".557" = bitcast ptr %"R49" to ptr
  store float %"fadd.4", ptr %".557"
  ; LDG.E.SYS R56, [R36]
  %".560" = load i32, ptr %"R36"
  %"zext.76" = zext i32 %".560" to i64
  %".561" = load i32, ptr %"R37"
  %"zext.77" = zext i32 %".561" to i64
  %"shl.41" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.41", %"zext.76"
  %".562" = add i64 %"or.38", 0
  %"for_LDG.38" = inttoptr i64 %".562" to ptr
  %".563" = load float, ptr %"for_LDG.38"
  %".564" = bitcast ptr %"R56" to ptr
  store float %".563", ptr %".564"
  ; IMAD.WIDE R24, R25, R18, c[0x0][0x170]
  %".567" = load i32, ptr %"R25"
  %".568" = load i32, ptr %"R18"
  %"mul.19" = mul i32 %".567", %".568"
  %"add.48" = add i32 %"mul.19", %"Arg_4"
  store i32 %"add.48", ptr %"R24"
  ; LDG.E.SYS R43, [R36+0xc]
  %".571" = load i32, ptr %"R36"
  %"zext.78" = zext i32 %".571" to i64
  %".572" = load i32, ptr %"R37"
  %"zext.79" = zext i32 %".572" to i64
  %"shl.42" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.42", %"zext.78"
  %".573" = add i64 %"or.39", 12
  %"for_LDG.39" = inttoptr i64 %".573" to ptr
  %".574" = load float, ptr %"for_LDG.39"
  %".575" = bitcast ptr %"R43" to ptr
  store float %".574", ptr %".575"
  ; FFMA R58, R22, R45, R58
  %".578" = load float, ptr %"R22"
  %".579" = load float, ptr %"R45"
  %".580" = load float, ptr %"R58"
  %"fmul.5" = fmul float %".578", %".579"
  %"fadd.5" = fadd float %"fmul.5", %".580"
  %".581" = bitcast ptr %"R58" to ptr
  store float %"fadd.5", ptr %".581"
  ; IMAD.WIDE R22, R23, R18, c[0x0][0x170]
  %".584" = load i32, ptr %"R23"
  %".585" = load i32, ptr %"R18"
  %"mul.20" = mul i32 %".584", %".585"
  %"add.49" = add i32 %"mul.20", %"Arg_4"
  store i32 %"add.49", ptr %"R22"
  ; LDG.E.SYS R18, [R24]
  %".588" = load i32, ptr %"R24"
  %"zext.80" = zext i32 %".588" to i64
  %".589" = load i32, ptr %"R25"
  %"zext.81" = zext i32 %".589" to i64
  %"shl.43" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.43", %"zext.80"
  %".590" = add i64 %"or.40", 0
  %"for_LDG.40" = inttoptr i64 %".590" to ptr
  %".591" = load float, ptr %"for_LDG.40"
  %".592" = bitcast ptr %"R18" to ptr
  store float %".591", ptr %".592"
  ; FFMA R14, R14, R15, R49
  %".595" = load float, ptr %"R14"
  %".596" = load float, ptr %"R15"
  %".597" = load float, ptr %"R49"
  %"fmul.6" = fmul float %".595", %".596"
  %"fadd.6" = fadd float %"fmul.6", %".597"
  %".598" = bitcast ptr %"R14" to ptr
  store float %"fadd.6", ptr %".598"
  ; LDG.E.SYS R49, [R24+0x4]
  %".601" = load i32, ptr %"R24"
  %"zext.82" = zext i32 %".601" to i64
  %".602" = load i32, ptr %"R25"
  %"zext.83" = zext i32 %".602" to i64
  %"shl.44" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.44", %"zext.82"
  %".603" = add i64 %"or.41", 4
  %"for_LDG.41" = inttoptr i64 %".603" to ptr
  %".604" = load float, ptr %"for_LDG.41"
  %".605" = bitcast ptr %"R49" to ptr
  store float %".604", ptr %".605"
  ; FFMA R58, R15, R13, R58
  %".608" = load float, ptr %"R15"
  %".609" = load float, ptr %"R13"
  %".610" = load float, ptr %"R58"
  %"fmul.7" = fmul float %".608", %".609"
  %"fadd.7" = fadd float %"fmul.7", %".610"
  %".611" = bitcast ptr %"R58" to ptr
  store float %"fadd.7", ptr %".611"
  ; LDG.E.SYS R35, [R22]
  %".614" = load i32, ptr %"R22"
  %"zext.84" = zext i32 %".614" to i64
  %".615" = load i32, ptr %"R23"
  %"zext.85" = zext i32 %".615" to i64
  %"shl.45" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.45", %"zext.84"
  %".616" = add i64 %"or.42", 0
  %"for_LDG.42" = inttoptr i64 %".616" to ptr
  %".617" = load float, ptr %"for_LDG.42"
  %".618" = bitcast ptr %"R35" to ptr
  store float %".617", ptr %".618"
  ; LDG.E.SYS R15, [R22+0x4]
  %".621" = load i32, ptr %"R22"
  %"zext.86" = zext i32 %".621" to i64
  %".622" = load i32, ptr %"R23"
  %"zext.87" = zext i32 %".622" to i64
  %"shl.46" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.46", %"zext.86"
  %".623" = add i64 %"or.43", 4
  %"for_LDG.43" = inttoptr i64 %".623" to ptr
  %".624" = load float, ptr %"for_LDG.43"
  %".625" = bitcast ptr %"R15" to ptr
  store float %".624", ptr %".625"
  ; LDG.E.SYS R13, [R22+0x8]
  %".628" = load i32, ptr %"R22"
  %"zext.88" = zext i32 %".628" to i64
  %".629" = load i32, ptr %"R23"
  %"zext.89" = zext i32 %".629" to i64
  %"shl.47" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.47", %"zext.88"
  %".630" = add i64 %"or.44", 8
  %"for_LDG.44" = inttoptr i64 %".630" to ptr
  %".631" = load float, ptr %"for_LDG.44"
  %".632" = bitcast ptr %"R13" to ptr
  store float %".631", ptr %".632"
  ; LDG.E.SYS R37, [R24+0x8]
  %".635" = load i32, ptr %"R24"
  %"zext.90" = zext i32 %".635" to i64
  %".636" = load i32, ptr %"R25"
  %"zext.91" = zext i32 %".636" to i64
  %"shl.48" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.48", %"zext.90"
  %".637" = add i64 %"or.45", 8
  %"for_LDG.45" = inttoptr i64 %".637" to ptr
  %".638" = load float, ptr %"for_LDG.45"
  %".639" = bitcast ptr %"R37" to ptr
  store float %".638", ptr %".639"
  ; LDG.E.SYS R45, [R22+0xc]
  %".642" = load i32, ptr %"R22"
  %"zext.92" = zext i32 %".642" to i64
  %".643" = load i32, ptr %"R23"
  %"zext.93" = zext i32 %".643" to i64
  %"shl.49" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.49", %"zext.92"
  %".644" = add i64 %"or.46", 12
  %"for_LDG.46" = inttoptr i64 %".644" to ptr
  %".645" = load float, ptr %"for_LDG.46"
  %".646" = bitcast ptr %"R45" to ptr
  store float %".645", ptr %".646"
  ; LDG.E.SYS R34, [R24+0xc]
  %".649" = load i32, ptr %"R24"
  %"zext.94" = zext i32 %".649" to i64
  %".650" = load i32, ptr %"R25"
  %"zext.95" = zext i32 %".650" to i64
  %"shl.50" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.50", %"zext.94"
  %".651" = add i64 %"or.47", 12
  %"for_LDG.47" = inttoptr i64 %".651" to ptr
  %".652" = load float, ptr %"for_LDG.47"
  %".653" = bitcast ptr %"R34" to ptr
  store float %".652", ptr %".653"
  ; FFMA R14, R51, R12, R14
  %".656" = load float, ptr %"R51"
  %".657" = load float, ptr %"R12"
  %".658" = load float, ptr %"R14"
  %"fmul.8" = fmul float %".656", %".657"
  %"fadd.8" = fadd float %"fmul.8", %".658"
  %".659" = bitcast ptr %"R14" to ptr
  store float %"fadd.8", ptr %".659"
  ; IADD3 R9, R9, -0x10, RZ
  %".662" = load i32, ptr %"R9"
  %"add.50" = add i32 %".662", -16
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R9"
  ; FFMA R14, R53, R10, R14
  %".665" = load float, ptr %"R53"
  %".666" = load float, ptr %"R10"
  %".667" = load float, ptr %"R14"
  %"fmul.9" = fmul float %".665", %".666"
  %"fadd.9" = fadd float %"fmul.9", %".667"
  %".668" = bitcast ptr %"R14" to ptr
  store float %"fadd.9", ptr %".668"
  ; FFMA R14, R55, R16, R14
  %".671" = load float, ptr %"R55"
  %".672" = load float, ptr %"R16"
  %".673" = load float, ptr %"R14"
  %"fmul.10" = fmul float %".671", %".672"
  %"fadd.10" = fadd float %"fmul.10", %".673"
  %".674" = bitcast ptr %"R14" to ptr
  store float %"fadd.10", ptr %".674"
  ; FFMA R14, R60, R17, R14
  %".677" = load float, ptr %"R60"
  %".678" = load float, ptr %"R17"
  %".679" = load float, ptr %"R14"
  %"fmul.11" = fmul float %".677", %".678"
  %"fadd.11" = fadd float %"fmul.11", %".679"
  %".680" = bitcast ptr %"R14" to ptr
  store float %"fadd.11", ptr %".680"
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".683" = load i32, ptr %"R9"
  %".684" = load i1, ptr %"PT"
  %"cmp.8" = icmp sgt i32 %".683", 12
  %".685" = and i1 %"cmp.8", %".684"
  ; IADD3 R11, R11, 0x10, RZ
  %".687" = load i32, ptr %"R11"
  %"add.52" = add i32 %".687", 16
  %"add.53" = add i32 %"add.52", 0
  store i32 %"add.53", ptr %"R11"
  ; FFMA R57, R12, R57, R58
  %".690" = load float, ptr %"R12"
  %".691" = load float, ptr %"R57"
  %".692" = load float, ptr %"R58"
  %"fmul.12" = fmul float %".690", %".691"
  %"fadd.12" = fadd float %"fmul.12", %".692"
  %".693" = bitcast ptr %"R57" to ptr
  store float %"fadd.12", ptr %".693"
  ; FFMA R57, R10, R59, R57
  %".696" = load float, ptr %"R10"
  %".697" = load float, ptr %"R59"
  %".698" = load float, ptr %"R57"
  %"fmul.13" = fmul float %".696", %".697"
  %"fadd.13" = fadd float %"fmul.13", %".698"
  %".699" = bitcast ptr %"R57" to ptr
  store float %"fadd.13", ptr %".699"
  ; FFMA R57, R16, R61, R57
  %".702" = load float, ptr %"R16"
  %".703" = load float, ptr %"R61"
  %".704" = load float, ptr %"R57"
  %"fmul.14" = fmul float %".702", %".703"
  %"fadd.14" = fadd float %"fmul.14", %".704"
  %".705" = bitcast ptr %"R57" to ptr
  store float %"fadd.14", ptr %".705"
  ; FFMA R52, R17, R52, R57
  %".708" = load float, ptr %"R17"
  %".709" = load float, ptr %"R52"
  %".710" = load float, ptr %"R57"
  %"fmul.15" = fmul float %".708", %".709"
  %"fadd.15" = fadd float %"fmul.15", %".710"
  %".711" = bitcast ptr %"R52" to ptr
  store float %"fadd.15", ptr %".711"
  ; FFMA R14, R54, R19, R14
  %".714" = load float, ptr %"R54"
  %".715" = load float, ptr %"R19"
  %".716" = load float, ptr %"R14"
  %"fmul.16" = fmul float %".714", %".715"
  %"fadd.16" = fadd float %"fmul.16", %".716"
  %".717" = bitcast ptr %"R14" to ptr
  store float %"fadd.16", ptr %".717"
  ; FFMA R52, R19, R56, R52
  %".720" = load float, ptr %"R19"
  %".721" = load float, ptr %"R56"
  %".722" = load float, ptr %"R52"
  %"fmul.17" = fmul float %".720", %".721"
  %"fadd.17" = fadd float %"fmul.17", %".722"
  %".723" = bitcast ptr %"R52" to ptr
  store float %"fadd.17", ptr %".723"
  ; FFMA R14, R39, R20, R14
  %".726" = load float, ptr %"R39"
  %".727" = load float, ptr %"R20"
  %".728" = load float, ptr %"R14"
  %"fmul.18" = fmul float %".726", %".727"
  %"fadd.18" = fadd float %"fmul.18", %".728"
  %".729" = bitcast ptr %"R14" to ptr
  store float %"fadd.18", ptr %".729"
  ; FFMA R41, R20, R41, R52
  %".732" = load float, ptr %"R20"
  %".733" = load float, ptr %"R41"
  %".734" = load float, ptr %"R52"
  %"fmul.19" = fmul float %".732", %".733"
  %"fadd.19" = fadd float %"fmul.19", %".734"
  %".735" = bitcast ptr %"R41" to ptr
  store float %"fadd.19", ptr %".735"
  ; FFMA R14, R38, R21, R14
  %".738" = load float, ptr %"R38"
  %".739" = load float, ptr %"R21"
  %".740" = load float, ptr %"R14"
  %"fmul.20" = fmul float %".738", %".739"
  %"fadd.20" = fadd float %"fmul.20", %".740"
  %".741" = bitcast ptr %"R14" to ptr
  store float %"fadd.20", ptr %".741"
  ; FFMA R40, R21, R40, R41
  %".744" = load float, ptr %"R21"
  %".745" = load float, ptr %"R40"
  %".746" = load float, ptr %"R41"
  %"fmul.21" = fmul float %".744", %".745"
  %"fadd.21" = fadd float %"fmul.21", %".746"
  %".747" = bitcast ptr %"R40" to ptr
  store float %"fadd.21", ptr %".747"
  ; FFMA R14, R47, R42, R14
  %".750" = load float, ptr %"R47"
  %".751" = load float, ptr %"R42"
  %".752" = load float, ptr %"R14"
  %"fmul.22" = fmul float %".750", %".751"
  %"fadd.22" = fadd float %"fmul.22", %".752"
  %".753" = bitcast ptr %"R14" to ptr
  store float %"fadd.22", ptr %".753"
  ; FFMA R43, R42, R43, R40
  %".756" = load float, ptr %"R42"
  %".757" = load float, ptr %"R43"
  %".758" = load float, ptr %"R40"
  %"fmul.23" = fmul float %".756", %".757"
  %"fadd.23" = fadd float %"fmul.23", %".758"
  %".759" = bitcast ptr %"R43" to ptr
  store float %"fadd.23", ptr %".759"
  ; FFMA R18, R44, R18, R43
  %".762" = load float, ptr %"R44"
  %".763" = load float, ptr %"R18"
  %".764" = load float, ptr %"R43"
  %"fmul.24" = fmul float %".762", %".763"
  %"fadd.24" = fadd float %"fmul.24", %".764"
  %".765" = bitcast ptr %"R18" to ptr
  store float %"fadd.24", ptr %".765"
  ; FFMA R14, R35, R44, R14
  %".768" = load float, ptr %"R35"
  %".769" = load float, ptr %"R44"
  %".770" = load float, ptr %"R14"
  %"fmul.25" = fmul float %".768", %".769"
  %"fadd.25" = fadd float %"fmul.25", %".770"
  %".771" = bitcast ptr %"R14" to ptr
  store float %"fadd.25", ptr %".771"
  ; FFMA R18, R46, R49, R18
  %".774" = load float, ptr %"R46"
  %".775" = load float, ptr %"R49"
  %".776" = load float, ptr %"R18"
  %"fmul.26" = fmul float %".774", %".775"
  %"fadd.26" = fadd float %"fmul.26", %".776"
  %".777" = bitcast ptr %"R18" to ptr
  store float %"fadd.26", ptr %".777"
  ; FFMA R14, R15, R46, R14
  %".780" = load float, ptr %"R15"
  %".781" = load float, ptr %"R46"
  %".782" = load float, ptr %"R14"
  %"fmul.27" = fmul float %".780", %".781"
  %"fadd.27" = fadd float %"fmul.27", %".782"
  %".783" = bitcast ptr %"R14" to ptr
  store float %"fadd.27", ptr %".783"
  ; FFMA R13, R13, R48, R14
  %".786" = load float, ptr %"R13"
  %".787" = load float, ptr %"R48"
  %".788" = load float, ptr %"R14"
  %"fmul.28" = fmul float %".786", %".787"
  %"fadd.28" = fadd float %"fmul.28", %".788"
  %".789" = bitcast ptr %"R13" to ptr
  store float %"fadd.28", ptr %".789"
  ; FFMA R37, R48, R37, R18
  %".792" = load float, ptr %"R48"
  %".793" = load float, ptr %"R37"
  %".794" = load float, ptr %"R18"
  %"fmul.29" = fmul float %".792", %".793"
  %"fadd.29" = fadd float %"fmul.29", %".794"
  %".795" = bitcast ptr %"R37" to ptr
  store float %"fadd.29", ptr %".795"
  ; FFMA R52, R45, R50, R13
  %".798" = load float, ptr %"R45"
  %".799" = load float, ptr %"R50"
  %".800" = load float, ptr %"R13"
  %"fmul.30" = fmul float %".798", %".799"
  %"fadd.30" = fadd float %"fmul.30", %".800"
  %".801" = bitcast ptr %"R52" to ptr
  store float %"fadd.30", ptr %".801"
  ; FFMA R54, R50, R34, R37
  %".804" = load float, ptr %"R50"
  %".805" = load float, ptr %"R34"
  %".806" = load float, ptr %"R37"
  %"fmul.31" = fmul float %".804", %".805"
  %"fadd.31" = fadd float %"fmul.31", %".806"
  %".807" = bitcast ptr %"R54" to ptr
  store float %"fadd.31", ptr %".807"
  ; @P1 BRA `(.L_x_5)
  %".810" = load i1, ptr %"P1"
  %".811" = icmp ne i1 %".810", 1
  br i1 %".811", label %".L_x_5", label %".L_x_4"
.L_x_4:
  ; ISETP.GT.AND P1, PT, R9, 0x4, PT
  %".814" = load i32, ptr %"R9"
  %".815" = load i1, ptr %"PT"
  %"cmp.9" = icmp sgt i32 %".814", 4
  %".816" = and i1 %"cmp.9", %".815"
  ; @!P1 BRA `(.L_x_6)
  %".818" = load i1, ptr %"P1"
  %".819" = icmp eq i1 %".818", 1
  br i1 %".819", label %".L_x_6", label %".L_x_4_split_0x0a00"
.L_x_4_split_0x0a00:
  ; IADD3 R13, R0, R11, RZ
  %".822" = load i32, ptr %"R0"
  %".823" = load i32, ptr %"R11"
  %"add.54" = add i32 %".822", %".823"
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R13"
  ; MOV R17, 0x4
  store i32 4, ptr %"R17"
  ; LEA R14, R2.reuse, R13, 0x2
  %".828" = load i32, ptr %"R2"
  %".829" = load i32, ptr %"R13"
  %"shl.51" = shl i32 %".828", 2
  %"add.56" = add i32 %"shl.51", %".829"
  store i32 %"add.56", ptr %"R14"
  ; IMAD R10, R2, 0x3, R13
  %".832" = load i32, ptr %"R2"
  %".833" = load i32, ptr %"R13"
  %"mul.21" = mul i32 %".832", 3
  %"add.57" = add i32 %"mul.21", %".833"
  store i32 %"add.57", ptr %"R10"
  ; IADD3 R12, R11.reuse, 0x4, RZ
  %".836" = load i32, ptr %"R11"
  %"add.58" = add i32 %".836", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R12"
  ; IMAD.WIDE R18, R11, R17.reuse, c[0x0][0x168]
  %".839" = load i32, ptr %"R11"
  %".840" = load i32, ptr %"R17"
  %"mul.22" = mul i32 %".839", %".840"
  %"add.60" = add i32 %"mul.22", %"Arg_3"
  store i32 %"add.60", ptr %"R18"
  ; IADD3 R16, R14, 0x4, RZ
  %".843" = load i32, ptr %"R14"
  %"add.61" = add i32 %".843", 4
  %"add.62" = add i32 %"add.61", 0
  store i32 %"add.62", ptr %"R16"
  ; IADD3 R15, R10.reuse, 0x4, RZ
  %".846" = load i32, ptr %"R10"
  %"add.63" = add i32 %".846", 4
  %"add.64" = add i32 %"add.63", 0
  store i32 %"add.64", ptr %"R15"
  ; IMAD.WIDE R22, R10, R17, c[0x0][0x170]
  %".849" = load i32, ptr %"R10"
  %".850" = load i32, ptr %"R17"
  %"mul.23" = mul i32 %".849", %".850"
  %"add.65" = add i32 %"mul.23", %"Arg_4"
  store i32 %"add.65", ptr %"R22"
  ; IMAD.WIDE R20, R14, R17.reuse, c[0x0][0x170]
  %".853" = load i32, ptr %"R14"
  %".854" = load i32, ptr %"R17"
  %"mul.24" = mul i32 %".853", %".854"
  %"add.66" = add i32 %"mul.24", %"Arg_4"
  store i32 %"add.66", ptr %"R20"
  ; LDG.E.SYS R39, [R18]
  %".857" = load i32, ptr %"R18"
  %"zext.96" = zext i32 %".857" to i64
  %".858" = load i32, ptr %"R19"
  %"zext.97" = zext i32 %".858" to i64
  %"shl.52" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.52", %"zext.96"
  %".859" = add i64 %"or.48", 0
  %"for_LDG.48" = inttoptr i64 %".859" to ptr
  %".860" = load float, ptr %"for_LDG.48"
  %".861" = bitcast ptr %"R39" to ptr
  store float %".860", ptr %".861"
  ; IMAD.WIDE R12, R12, R17.reuse, c[0x0][0x168]
  %".864" = load i32, ptr %"R12"
  %".865" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".864", %".865"
  %"add.67" = add i32 %"mul.25", %"Arg_3"
  store i32 %"add.67", ptr %"R12"
  ; LDG.E.SYS R37, [R22]
  %".868" = load i32, ptr %"R22"
  %"zext.98" = zext i32 %".868" to i64
  %".869" = load i32, ptr %"R23"
  %"zext.99" = zext i32 %".869" to i64
  %"shl.53" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.53", %"zext.98"
  %".870" = add i64 %"or.49", 0
  %"for_LDG.49" = inttoptr i64 %".870" to ptr
  %".871" = load float, ptr %"for_LDG.49"
  %".872" = bitcast ptr %"R37" to ptr
  store float %".871", ptr %".872"
  ; LDG.E.SYS R36, [R20]
  %".875" = load i32, ptr %"R20"
  %"zext.100" = zext i32 %".875" to i64
  %".876" = load i32, ptr %"R21"
  %"zext.101" = zext i32 %".876" to i64
  %"shl.54" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.54", %"zext.100"
  %".877" = add i64 %"or.50", 0
  %"for_LDG.50" = inttoptr i64 %".877" to ptr
  %".878" = load float, ptr %"for_LDG.50"
  %".879" = bitcast ptr %"R36" to ptr
  store float %".878", ptr %".879"
  ; IMAD.WIDE R14, R15, R17, c[0x0][0x170]
  %".882" = load i32, ptr %"R15"
  %".883" = load i32, ptr %"R17"
  %"mul.26" = mul i32 %".882", %".883"
  %"add.68" = add i32 %"mul.26", %"Arg_4"
  store i32 %"add.68", ptr %"R14"
  ; LDG.E.SYS R34, [R18+0x4]
  %".886" = load i32, ptr %"R18"
  %"zext.102" = zext i32 %".886" to i64
  %".887" = load i32, ptr %"R19"
  %"zext.103" = zext i32 %".887" to i64
  %"shl.55" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.55", %"zext.102"
  %".888" = add i64 %"or.51", 4
  %"for_LDG.51" = inttoptr i64 %".888" to ptr
  %".889" = load float, ptr %"for_LDG.51"
  %".890" = bitcast ptr %"R34" to ptr
  store float %".889", ptr %".890"
  ; LDG.E.SYS R38, [R22+0x4]
  %".893" = load i32, ptr %"R22"
  %"zext.104" = zext i32 %".893" to i64
  %".894" = load i32, ptr %"R23"
  %"zext.105" = zext i32 %".894" to i64
  %"shl.56" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.56", %"zext.104"
  %".895" = add i64 %"or.52", 4
  %"for_LDG.52" = inttoptr i64 %".895" to ptr
  %".896" = load float, ptr %"for_LDG.52"
  %".897" = bitcast ptr %"R38" to ptr
  store float %".896", ptr %".897"
  ; LDG.E.SYS R35, [R20+0x4]
  %".900" = load i32, ptr %"R20"
  %"zext.106" = zext i32 %".900" to i64
  %".901" = load i32, ptr %"R21"
  %"zext.107" = zext i32 %".901" to i64
  %"shl.57" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.57", %"zext.106"
  %".902" = add i64 %"or.53", 4
  %"for_LDG.53" = inttoptr i64 %".902" to ptr
  %".903" = load float, ptr %"for_LDG.53"
  %".904" = bitcast ptr %"R35" to ptr
  store float %".903", ptr %".904"
  ; IMAD.WIDE R16, R16, R17, c[0x0][0x170]
  %".907" = load i32, ptr %"R16"
  %".908" = load i32, ptr %"R17"
  %"mul.27" = mul i32 %".907", %".908"
  %"add.69" = add i32 %"mul.27", %"Arg_4"
  store i32 %"add.69", ptr %"R16"
  ; LDG.E.SYS R24, [R18+0x8]
  %".911" = load i32, ptr %"R18"
  %"zext.108" = zext i32 %".911" to i64
  %".912" = load i32, ptr %"R19"
  %"zext.109" = zext i32 %".912" to i64
  %"shl.58" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.58", %"zext.108"
  %".913" = add i64 %"or.54", 8
  %"for_LDG.54" = inttoptr i64 %".913" to ptr
  %".914" = load float, ptr %"for_LDG.54"
  %".915" = bitcast ptr %"R24" to ptr
  store float %".914", ptr %".915"
  ; LDG.E.SYS R40, [R22+0x8]
  %".918" = load i32, ptr %"R22"
  %"zext.110" = zext i32 %".918" to i64
  %".919" = load i32, ptr %"R23"
  %"zext.111" = zext i32 %".919" to i64
  %"shl.59" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.59", %"zext.110"
  %".920" = add i64 %"or.55", 8
  %"for_LDG.55" = inttoptr i64 %".920" to ptr
  %".921" = load float, ptr %"for_LDG.55"
  %".922" = bitcast ptr %"R40" to ptr
  store float %".921", ptr %".922"
  ; LDG.E.SYS R41, [R20+0x8]
  %".925" = load i32, ptr %"R20"
  %"zext.112" = zext i32 %".925" to i64
  %".926" = load i32, ptr %"R21"
  %"zext.113" = zext i32 %".926" to i64
  %"shl.60" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.60", %"zext.112"
  %".927" = add i64 %"or.56", 8
  %"for_LDG.56" = inttoptr i64 %".927" to ptr
  %".928" = load float, ptr %"for_LDG.56"
  %".929" = bitcast ptr %"R41" to ptr
  store float %".928", ptr %".929"
  ; LDG.E.SYS R44, [R18+0xc]
  %".932" = load i32, ptr %"R18"
  %"zext.114" = zext i32 %".932" to i64
  %".933" = load i32, ptr %"R19"
  %"zext.115" = zext i32 %".933" to i64
  %"shl.61" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.61", %"zext.114"
  %".934" = add i64 %"or.57", 12
  %"for_LDG.57" = inttoptr i64 %".934" to ptr
  %".935" = load float, ptr %"for_LDG.57"
  %".936" = bitcast ptr %"R44" to ptr
  store float %".935", ptr %".936"
  ; LDG.E.SYS R42, [R22+0xc]
  %".939" = load i32, ptr %"R22"
  %"zext.116" = zext i32 %".939" to i64
  %".940" = load i32, ptr %"R23"
  %"zext.117" = zext i32 %".940" to i64
  %"shl.62" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.62", %"zext.116"
  %".941" = add i64 %"or.58", 12
  %"for_LDG.58" = inttoptr i64 %".941" to ptr
  %".942" = load float, ptr %"for_LDG.58"
  %".943" = bitcast ptr %"R42" to ptr
  store float %".942", ptr %".943"
  ; LDG.E.SYS R43, [R20+0xc]
  %".946" = load i32, ptr %"R20"
  %"zext.118" = zext i32 %".946" to i64
  %".947" = load i32, ptr %"R21"
  %"zext.119" = zext i32 %".947" to i64
  %"shl.63" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.63", %"zext.118"
  %".948" = add i64 %"or.59", 12
  %"for_LDG.59" = inttoptr i64 %".948" to ptr
  %".949" = load float, ptr %"for_LDG.59"
  %".950" = bitcast ptr %"R43" to ptr
  store float %".949", ptr %".950"
  ; LDG.E.SYS R48, [R12]
  %".953" = load i32, ptr %"R12"
  %"zext.120" = zext i32 %".953" to i64
  %".954" = load i32, ptr %"R13"
  %"zext.121" = zext i32 %".954" to i64
  %"shl.64" = shl i64 %"zext.121", 32
  %"or.60" = or i64 %"shl.64", %"zext.120"
  %".955" = add i64 %"or.60", 0
  %"for_LDG.60" = inttoptr i64 %".955" to ptr
  %".956" = load float, ptr %"for_LDG.60"
  %".957" = bitcast ptr %"R48" to ptr
  store float %".956", ptr %".957"
  ; LDG.E.SYS R46, [R14]
  %".960" = load i32, ptr %"R14"
  %"zext.122" = zext i32 %".960" to i64
  %".961" = load i32, ptr %"R15"
  %"zext.123" = zext i32 %".961" to i64
  %"shl.65" = shl i64 %"zext.123", 32
  %"or.61" = or i64 %"shl.65", %"zext.122"
  %".962" = add i64 %"or.61", 0
  %"for_LDG.61" = inttoptr i64 %".962" to ptr
  %".963" = load float, ptr %"for_LDG.61"
  %".964" = bitcast ptr %"R46" to ptr
  store float %".963", ptr %".964"
  ; LDG.E.SYS R45, [R16]
  %".967" = load i32, ptr %"R16"
  %"zext.124" = zext i32 %".967" to i64
  %".968" = load i32, ptr %"R17"
  %"zext.125" = zext i32 %".968" to i64
  %"shl.66" = shl i64 %"zext.125", 32
  %"or.62" = or i64 %"shl.66", %"zext.124"
  %".969" = add i64 %"or.62", 0
  %"for_LDG.62" = inttoptr i64 %".969" to ptr
  %".970" = load float, ptr %"for_LDG.62"
  %".971" = bitcast ptr %"R45" to ptr
  store float %".970", ptr %".971"
  ; LDG.E.SYS R56, [R12+0x4]
  %".974" = load i32, ptr %"R12"
  %"zext.126" = zext i32 %".974" to i64
  %".975" = load i32, ptr %"R13"
  %"zext.127" = zext i32 %".975" to i64
  %"shl.67" = shl i64 %"zext.127", 32
  %"or.63" = or i64 %"shl.67", %"zext.126"
  %".976" = add i64 %"or.63", 4
  %"for_LDG.63" = inttoptr i64 %".976" to ptr
  %".977" = load float, ptr %"for_LDG.63"
  %".978" = bitcast ptr %"R56" to ptr
  store float %".977", ptr %".978"
  ; LDG.E.SYS R50, [R14+0x4]
  %".981" = load i32, ptr %"R14"
  %"zext.128" = zext i32 %".981" to i64
  %".982" = load i32, ptr %"R15"
  %"zext.129" = zext i32 %".982" to i64
  %"shl.68" = shl i64 %"zext.129", 32
  %"or.64" = or i64 %"shl.68", %"zext.128"
  %".983" = add i64 %"or.64", 4
  %"for_LDG.64" = inttoptr i64 %".983" to ptr
  %".984" = load float, ptr %"for_LDG.64"
  %".985" = bitcast ptr %"R50" to ptr
  store float %".984", ptr %".985"
  ; LDG.E.SYS R47, [R16+0x4]
  %".988" = load i32, ptr %"R16"
  %"zext.130" = zext i32 %".988" to i64
  %".989" = load i32, ptr %"R17"
  %"zext.131" = zext i32 %".989" to i64
  %"shl.69" = shl i64 %"zext.131", 32
  %"or.65" = or i64 %"shl.69", %"zext.130"
  %".990" = add i64 %"or.65", 4
  %"for_LDG.65" = inttoptr i64 %".990" to ptr
  %".991" = load float, ptr %"for_LDG.65"
  %".992" = bitcast ptr %"R47" to ptr
  store float %".991", ptr %".992"
  ; LDG.E.SYS R10, [R12+0x8]
  %".995" = load i32, ptr %"R12"
  %"zext.132" = zext i32 %".995" to i64
  %".996" = load i32, ptr %"R13"
  %"zext.133" = zext i32 %".996" to i64
  %"shl.70" = shl i64 %"zext.133", 32
  %"or.66" = or i64 %"shl.70", %"zext.132"
  %".997" = add i64 %"or.66", 8
  %"for_LDG.66" = inttoptr i64 %".997" to ptr
  %".998" = load float, ptr %"for_LDG.66"
  %".999" = bitcast ptr %"R10" to ptr
  store float %".998", ptr %".999"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1002" = load i32, ptr %"R14"
  %"zext.134" = zext i32 %".1002" to i64
  %".1003" = load i32, ptr %"R15"
  %"zext.135" = zext i32 %".1003" to i64
  %"shl.71" = shl i64 %"zext.135", 32
  %"or.67" = or i64 %"shl.71", %"zext.134"
  %".1004" = add i64 %"or.67", 8
  %"for_LDG.67" = inttoptr i64 %".1004" to ptr
  %".1005" = load float, ptr %"for_LDG.67"
  %".1006" = bitcast ptr %"R25" to ptr
  store float %".1005", ptr %".1006"
  ; LDG.E.SYS R19, [R16+0x8]
  %".1009" = load i32, ptr %"R16"
  %"zext.136" = zext i32 %".1009" to i64
  %".1010" = load i32, ptr %"R17"
  %"zext.137" = zext i32 %".1010" to i64
  %"shl.72" = shl i64 %"zext.137", 32
  %"or.68" = or i64 %"shl.72", %"zext.136"
  %".1011" = add i64 %"or.68", 8
  %"for_LDG.68" = inttoptr i64 %".1011" to ptr
  %".1012" = load float, ptr %"for_LDG.68"
  %".1013" = bitcast ptr %"R19" to ptr
  store float %".1012", ptr %".1013"
  ; LDG.E.SYS R18, [R12+0xc]
  %".1016" = load i32, ptr %"R12"
  %"zext.138" = zext i32 %".1016" to i64
  %".1017" = load i32, ptr %"R13"
  %"zext.139" = zext i32 %".1017" to i64
  %"shl.73" = shl i64 %"zext.139", 32
  %"or.69" = or i64 %"shl.73", %"zext.138"
  %".1018" = add i64 %"or.69", 12
  %"for_LDG.69" = inttoptr i64 %".1018" to ptr
  %".1019" = load float, ptr %"for_LDG.69"
  %".1020" = bitcast ptr %"R18" to ptr
  store float %".1019", ptr %".1020"
  ; LDG.E.SYS R20, [R14+0xc]
  %".1023" = load i32, ptr %"R14"
  %"zext.140" = zext i32 %".1023" to i64
  %".1024" = load i32, ptr %"R15"
  %"zext.141" = zext i32 %".1024" to i64
  %"shl.74" = shl i64 %"zext.141", 32
  %"or.70" = or i64 %"shl.74", %"zext.140"
  %".1025" = add i64 %"or.70", 12
  %"for_LDG.70" = inttoptr i64 %".1025" to ptr
  %".1026" = load float, ptr %"for_LDG.70"
  %".1027" = bitcast ptr %"R20" to ptr
  store float %".1026", ptr %".1027"
  ; LDG.E.SYS R21, [R16+0xc]
  %".1030" = load i32, ptr %"R16"
  %"zext.142" = zext i32 %".1030" to i64
  %".1031" = load i32, ptr %"R17"
  %"zext.143" = zext i32 %".1031" to i64
  %"shl.75" = shl i64 %"zext.143", 32
  %"or.71" = or i64 %"shl.75", %"zext.142"
  %".1032" = add i64 %"or.71", 12
  %"for_LDG.71" = inttoptr i64 %".1032" to ptr
  %".1033" = load float, ptr %"for_LDG.71"
  %".1034" = bitcast ptr %"R21" to ptr
  store float %".1033", ptr %".1034"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1037" = xor i1 1, 1
  %".1038" = and i1 %".1037", 1
  %".1039" = and i1 %".1038", 1
  ; IADD3 R9, R9, -0x8, RZ
  %".1041" = load i32, ptr %"R9"
  %"add.70" = add i32 %".1041", -8
  %"add.71" = add i32 %"add.70", 0
  store i32 %"add.71", ptr %"R9"
  ; IADD3 R11, R11, 0x8, RZ
  %".1044" = load i32, ptr %"R11"
  %"add.72" = add i32 %".1044", 8
  %"add.73" = add i32 %"add.72", 0
  store i32 %"add.73", ptr %"R11"
  ; FFMA R37, R37, R39, R52
  %".1047" = load float, ptr %"R37"
  %".1048" = load float, ptr %"R39"
  %".1049" = load float, ptr %"R52"
  %"fmul.32" = fmul float %".1047", %".1048"
  %"fadd.32" = fadd float %"fmul.32", %".1049"
  %".1050" = bitcast ptr %"R37" to ptr
  store float %"fadd.32", ptr %".1050"
  ; FFMA R36, R39, R36, R54
  %".1053" = load float, ptr %"R39"
  %".1054" = load float, ptr %"R36"
  %".1055" = load float, ptr %"R54"
  %"fmul.33" = fmul float %".1053", %".1054"
  %"fadd.33" = fadd float %"fmul.33", %".1055"
  %".1056" = bitcast ptr %"R36" to ptr
  store float %"fadd.33", ptr %".1056"
  ; FFMA R37, R38, R34, R37
  %".1059" = load float, ptr %"R38"
  %".1060" = load float, ptr %"R34"
  %".1061" = load float, ptr %"R37"
  %"fmul.34" = fmul float %".1059", %".1060"
  %"fadd.34" = fadd float %"fmul.34", %".1061"
  %".1062" = bitcast ptr %"R37" to ptr
  store float %"fadd.34", ptr %".1062"
  ; FFMA R35, R34, R35, R36
  %".1065" = load float, ptr %"R34"
  %".1066" = load float, ptr %"R35"
  %".1067" = load float, ptr %"R36"
  %"fmul.35" = fmul float %".1065", %".1066"
  %"fadd.35" = fadd float %"fmul.35", %".1067"
  %".1068" = bitcast ptr %"R35" to ptr
  store float %"fadd.35", ptr %".1068"
  ; FFMA R37, R40, R24, R37
  %".1071" = load float, ptr %"R40"
  %".1072" = load float, ptr %"R24"
  %".1073" = load float, ptr %"R37"
  %"fmul.36" = fmul float %".1071", %".1072"
  %"fadd.36" = fadd float %"fmul.36", %".1073"
  %".1074" = bitcast ptr %"R37" to ptr
  store float %"fadd.36", ptr %".1074"
  ; FFMA R35, R24, R41, R35
  %".1077" = load float, ptr %"R24"
  %".1078" = load float, ptr %"R41"
  %".1079" = load float, ptr %"R35"
  %"fmul.37" = fmul float %".1077", %".1078"
  %"fadd.37" = fadd float %"fmul.37", %".1079"
  %".1080" = bitcast ptr %"R35" to ptr
  store float %"fadd.37", ptr %".1080"
  ; FFMA R37, R42, R44, R37
  %".1083" = load float, ptr %"R42"
  %".1084" = load float, ptr %"R44"
  %".1085" = load float, ptr %"R37"
  %"fmul.38" = fmul float %".1083", %".1084"
  %"fadd.38" = fadd float %"fmul.38", %".1085"
  %".1086" = bitcast ptr %"R37" to ptr
  store float %"fadd.38", ptr %".1086"
  ; FFMA R35, R44, R43, R35
  %".1089" = load float, ptr %"R44"
  %".1090" = load float, ptr %"R43"
  %".1091" = load float, ptr %"R35"
  %"fmul.39" = fmul float %".1089", %".1090"
  %"fadd.39" = fadd float %"fmul.39", %".1091"
  %".1092" = bitcast ptr %"R35" to ptr
  store float %"fadd.39", ptr %".1092"
  ; FFMA R37, R46, R48, R37
  %".1095" = load float, ptr %"R46"
  %".1096" = load float, ptr %"R48"
  %".1097" = load float, ptr %"R37"
  %"fmul.40" = fmul float %".1095", %".1096"
  %"fadd.40" = fadd float %"fmul.40", %".1097"
  %".1098" = bitcast ptr %"R37" to ptr
  store float %"fadd.40", ptr %".1098"
  ; FFMA R35, R48, R45, R35
  %".1101" = load float, ptr %"R48"
  %".1102" = load float, ptr %"R45"
  %".1103" = load float, ptr %"R35"
  %"fmul.41" = fmul float %".1101", %".1102"
  %"fadd.41" = fadd float %"fmul.41", %".1103"
  %".1104" = bitcast ptr %"R35" to ptr
  store float %"fadd.41", ptr %".1104"
  ; FFMA R37, R50, R56, R37
  %".1107" = load float, ptr %"R50"
  %".1108" = load float, ptr %"R56"
  %".1109" = load float, ptr %"R37"
  %"fmul.42" = fmul float %".1107", %".1108"
  %"fadd.42" = fadd float %"fmul.42", %".1109"
  %".1110" = bitcast ptr %"R37" to ptr
  store float %"fadd.42", ptr %".1110"
  ; FFMA R35, R56, R47, R35
  %".1113" = load float, ptr %"R56"
  %".1114" = load float, ptr %"R47"
  %".1115" = load float, ptr %"R35"
  %"fmul.43" = fmul float %".1113", %".1114"
  %"fadd.43" = fadd float %"fmul.43", %".1115"
  %".1116" = bitcast ptr %"R35" to ptr
  store float %"fadd.43", ptr %".1116"
  ; FFMA R25, R25, R10, R37
  %".1119" = load float, ptr %"R25"
  %".1120" = load float, ptr %"R10"
  %".1121" = load float, ptr %"R37"
  %"fmul.44" = fmul float %".1119", %".1120"
  %"fadd.44" = fadd float %"fmul.44", %".1121"
  %".1122" = bitcast ptr %"R25" to ptr
  store float %"fadd.44", ptr %".1122"
  ; FFMA R19, R10, R19, R35
  %".1125" = load float, ptr %"R10"
  %".1126" = load float, ptr %"R19"
  %".1127" = load float, ptr %"R35"
  %"fmul.45" = fmul float %".1125", %".1126"
  %"fadd.45" = fadd float %"fmul.45", %".1127"
  %".1128" = bitcast ptr %"R19" to ptr
  store float %"fadd.45", ptr %".1128"
  ; FFMA R52, R20, R18, R25
  %".1131" = load float, ptr %"R20"
  %".1132" = load float, ptr %"R18"
  %".1133" = load float, ptr %"R25"
  %"fmul.46" = fmul float %".1131", %".1132"
  %"fadd.46" = fadd float %"fmul.46", %".1133"
  %".1134" = bitcast ptr %"R52" to ptr
  store float %"fadd.46", ptr %".1134"
  ; FFMA R54, R18, R21, R19
  %".1137" = load float, ptr %"R18"
  %".1138" = load float, ptr %"R21"
  %".1139" = load float, ptr %"R19"
  %"fmul.47" = fmul float %".1137", %".1138"
  %"fadd.47" = fadd float %"fmul.47", %".1139"
  %".1140" = bitcast ptr %"R54" to ptr
  store float %"fadd.47", ptr %".1140"
.L_x_6:
  ; ISETP.NE.OR P0, PT, R9, RZ, P0
  %".1143" = load i32, ptr %"R9"
  %".1144" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".1143", 0
  %".1145" = or i1 %"cmp.10", %".1144"
  ; @!P0 BRA `(.L_x_2)
  %".1147" = load i1, ptr %"P0"
  %".1148" = icmp eq i1 %".1147", 1
  br i1 %".1148", label %".L_x_2", label %".L_x_3"
.L_x_3:
  ; IADD3 R13, R0, R11, RZ
  %".1151" = load i32, ptr %"R0"
  %".1152" = load i32, ptr %"R11"
  %"add.74" = add i32 %".1151", %".1152"
  %"add.75" = add i32 %"add.74", 0
  store i32 %"add.75", ptr %"R13"
  ; MOV R16, 0x4
  store i32 4, ptr %"R16"
  ; LEA R17, R2.reuse, R13, 0x2
  %".1157" = load i32, ptr %"R2"
  %".1158" = load i32, ptr %"R13"
  %"shl.76" = shl i32 %".1157", 2
  %"add.76" = add i32 %"shl.76", %".1158"
  store i32 %"add.76", ptr %"R17"
  ; IMAD R15, R2, 0x3, R13
  %".1161" = load i32, ptr %"R2"
  %".1162" = load i32, ptr %"R13"
  %"mul.28" = mul i32 %".1161", 3
  %"add.77" = add i32 %"mul.28", %".1162"
  store i32 %"add.77", ptr %"R15"
  ; IMAD.WIDE R12, R11, R16, c[0x0][0x168]
  %".1165" = load i32, ptr %"R11"
  %".1166" = load i32, ptr %"R16"
  %"mul.29" = mul i32 %".1165", %".1166"
  %"add.78" = add i32 %"mul.29", %"Arg_3"
  store i32 %"add.78", ptr %"R12"
  ; IMAD.WIDE R14, R15, R16, c[0x0][0x170]
  %".1169" = load i32, ptr %"R15"
  %".1170" = load i32, ptr %"R16"
  %"mul.30" = mul i32 %".1169", %".1170"
  %"add.79" = add i32 %"mul.30", %"Arg_4"
  store i32 %"add.79", ptr %"R14"
  ; IMAD.WIDE R16, R17, R16, c[0x0][0x170]
  %".1173" = load i32, ptr %"R17"
  %".1174" = load i32, ptr %"R16"
  %"mul.31" = mul i32 %".1173", %".1174"
  %"add.80" = add i32 %"mul.31", %"Arg_4"
  store i32 %"add.80", ptr %"R16"
  ; LDG.E.SYS R21, [R12]
  %".1177" = load i32, ptr %"R12"
  %"zext.144" = zext i32 %".1177" to i64
  %".1178" = load i32, ptr %"R13"
  %"zext.145" = zext i32 %".1178" to i64
  %"shl.77" = shl i64 %"zext.145", 32
  %"or.72" = or i64 %"shl.77", %"zext.144"
  %".1179" = add i64 %"or.72", 0
  %"for_LDG.72" = inttoptr i64 %".1179" to ptr
  %".1180" = load float, ptr %"for_LDG.72"
  %".1181" = bitcast ptr %"R21" to ptr
  store float %".1180", ptr %".1181"
  ; LDG.E.SYS R19, [R14]
  %".1184" = load i32, ptr %"R14"
  %"zext.146" = zext i32 %".1184" to i64
  %".1185" = load i32, ptr %"R15"
  %"zext.147" = zext i32 %".1185" to i64
  %"shl.78" = shl i64 %"zext.147", 32
  %"or.73" = or i64 %"shl.78", %"zext.146"
  %".1186" = add i64 %"or.73", 0
  %"for_LDG.73" = inttoptr i64 %".1186" to ptr
  %".1187" = load float, ptr %"for_LDG.73"
  %".1188" = bitcast ptr %"R19" to ptr
  store float %".1187", ptr %".1188"
  ; LDG.E.SYS R10, [R16]
  %".1191" = load i32, ptr %"R16"
  %"zext.148" = zext i32 %".1191" to i64
  %".1192" = load i32, ptr %"R17"
  %"zext.149" = zext i32 %".1192" to i64
  %"shl.79" = shl i64 %"zext.149", 32
  %"or.74" = or i64 %"shl.79", %"zext.148"
  %".1193" = add i64 %"or.74", 0
  %"for_LDG.74" = inttoptr i64 %".1193" to ptr
  %".1194" = load float, ptr %"for_LDG.74"
  %".1195" = bitcast ptr %"R10" to ptr
  store float %".1194", ptr %".1195"
  ; LDG.E.SYS R23, [R12+0x4]
  %".1198" = load i32, ptr %"R12"
  %"zext.150" = zext i32 %".1198" to i64
  %".1199" = load i32, ptr %"R13"
  %"zext.151" = zext i32 %".1199" to i64
  %"shl.80" = shl i64 %"zext.151", 32
  %"or.75" = or i64 %"shl.80", %"zext.150"
  %".1200" = add i64 %"or.75", 4
  %"for_LDG.75" = inttoptr i64 %".1200" to ptr
  %".1201" = load float, ptr %"for_LDG.75"
  %".1202" = bitcast ptr %"R23" to ptr
  store float %".1201", ptr %".1202"
  ; LDG.E.SYS R18, [R14+0x4]
  %".1205" = load i32, ptr %"R14"
  %"zext.152" = zext i32 %".1205" to i64
  %".1206" = load i32, ptr %"R15"
  %"zext.153" = zext i32 %".1206" to i64
  %"shl.81" = shl i64 %"zext.153", 32
  %"or.76" = or i64 %"shl.81", %"zext.152"
  %".1207" = add i64 %"or.76", 4
  %"for_LDG.76" = inttoptr i64 %".1207" to ptr
  %".1208" = load float, ptr %"for_LDG.76"
  %".1209" = bitcast ptr %"R18" to ptr
  store float %".1208", ptr %".1209"
  ; LDG.E.SYS R20, [R16+0x4]
  %".1212" = load i32, ptr %"R16"
  %"zext.154" = zext i32 %".1212" to i64
  %".1213" = load i32, ptr %"R17"
  %"zext.155" = zext i32 %".1213" to i64
  %"shl.82" = shl i64 %"zext.155", 32
  %"or.77" = or i64 %"shl.82", %"zext.154"
  %".1214" = add i64 %"or.77", 4
  %"for_LDG.77" = inttoptr i64 %".1214" to ptr
  %".1215" = load float, ptr %"for_LDG.77"
  %".1216" = bitcast ptr %"R20" to ptr
  store float %".1215", ptr %".1216"
  ; LDG.E.SYS R35, [R12+0x8]
  %".1219" = load i32, ptr %"R12"
  %"zext.156" = zext i32 %".1219" to i64
  %".1220" = load i32, ptr %"R13"
  %"zext.157" = zext i32 %".1220" to i64
  %"shl.83" = shl i64 %"zext.157", 32
  %"or.78" = or i64 %"shl.83", %"zext.156"
  %".1221" = add i64 %"or.78", 8
  %"for_LDG.78" = inttoptr i64 %".1221" to ptr
  %".1222" = load float, ptr %"for_LDG.78"
  %".1223" = bitcast ptr %"R35" to ptr
  store float %".1222", ptr %".1223"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1226" = load i32, ptr %"R14"
  %"zext.158" = zext i32 %".1226" to i64
  %".1227" = load i32, ptr %"R15"
  %"zext.159" = zext i32 %".1227" to i64
  %"shl.84" = shl i64 %"zext.159", 32
  %"or.79" = or i64 %"shl.84", %"zext.158"
  %".1228" = add i64 %"or.79", 8
  %"for_LDG.79" = inttoptr i64 %".1228" to ptr
  %".1229" = load float, ptr %"for_LDG.79"
  %".1230" = bitcast ptr %"R25" to ptr
  store float %".1229", ptr %".1230"
  ; LDG.E.SYS R22, [R16+0x8]
  %".1233" = load i32, ptr %"R16"
  %"zext.160" = zext i32 %".1233" to i64
  %".1234" = load i32, ptr %"R17"
  %"zext.161" = zext i32 %".1234" to i64
  %"shl.85" = shl i64 %"zext.161", 32
  %"or.80" = or i64 %"shl.85", %"zext.160"
  %".1235" = add i64 %"or.80", 8
  %"for_LDG.80" = inttoptr i64 %".1235" to ptr
  %".1236" = load float, ptr %"for_LDG.80"
  %".1237" = bitcast ptr %"R22" to ptr
  store float %".1236", ptr %".1237"
  ; LDG.E.SYS R39, [R12+0xc]
  %".1240" = load i32, ptr %"R12"
  %"zext.162" = zext i32 %".1240" to i64
  %".1241" = load i32, ptr %"R13"
  %"zext.163" = zext i32 %".1241" to i64
  %"shl.86" = shl i64 %"zext.163", 32
  %"or.81" = or i64 %"shl.86", %"zext.162"
  %".1242" = add i64 %"or.81", 12
  %"for_LDG.81" = inttoptr i64 %".1242" to ptr
  %".1243" = load float, ptr %"for_LDG.81"
  %".1244" = bitcast ptr %"R39" to ptr
  store float %".1243", ptr %".1244"
  ; LDG.E.SYS R37, [R14+0xc]
  %".1247" = load i32, ptr %"R14"
  %"zext.164" = zext i32 %".1247" to i64
  %".1248" = load i32, ptr %"R15"
  %"zext.165" = zext i32 %".1248" to i64
  %"shl.87" = shl i64 %"zext.165", 32
  %"or.82" = or i64 %"shl.87", %"zext.164"
  %".1249" = add i64 %"or.82", 12
  %"for_LDG.82" = inttoptr i64 %".1249" to ptr
  %".1250" = load float, ptr %"for_LDG.82"
  %".1251" = bitcast ptr %"R37" to ptr
  store float %".1250", ptr %".1251"
  ; LDG.E.SYS R24, [R16+0xc]
  %".1254" = load i32, ptr %"R16"
  %"zext.166" = zext i32 %".1254" to i64
  %".1255" = load i32, ptr %"R17"
  %"zext.167" = zext i32 %".1255" to i64
  %"shl.88" = shl i64 %"zext.167", 32
  %"or.83" = or i64 %"shl.88", %"zext.166"
  %".1256" = add i64 %"or.83", 12
  %"for_LDG.83" = inttoptr i64 %".1256" to ptr
  %".1257" = load float, ptr %"for_LDG.83"
  %".1258" = bitcast ptr %"R24" to ptr
  store float %".1257", ptr %".1258"
  ; IADD3 R9, R9, -0x4, RZ
  %".1261" = load i32, ptr %"R9"
  %"add.81" = add i32 %".1261", -4
  %"add.82" = add i32 %"add.81", 0
  store i32 %"add.82", ptr %"R9"
  ; IADD3 R11, R11, 0x4, RZ
  %".1264" = load i32, ptr %"R11"
  %"add.83" = add i32 %".1264", 4
  %"add.84" = add i32 %"add.83", 0
  store i32 %"add.84", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R9, RZ, PT
  %".1267" = load i32, ptr %"R9"
  %".1268" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".1267", 0
  %".1269" = and i1 %"cmp.11", %".1268"
  ; FFMA R19, R19, R21, R52
  %".1271" = load float, ptr %"R19"
  %".1272" = load float, ptr %"R21"
  %".1273" = load float, ptr %"R52"
  %"fmul.48" = fmul float %".1271", %".1272"
  %"fadd.48" = fadd float %"fmul.48", %".1273"
  %".1274" = bitcast ptr %"R19" to ptr
  store float %"fadd.48", ptr %".1274"
  ; FFMA R10, R21, R10, R54
  %".1277" = load float, ptr %"R21"
  %".1278" = load float, ptr %"R10"
  %".1279" = load float, ptr %"R54"
  %"fmul.49" = fmul float %".1277", %".1278"
  %"fadd.49" = fadd float %"fmul.49", %".1279"
  %".1280" = bitcast ptr %"R10" to ptr
  store float %"fadd.49", ptr %".1280"
  ; FFMA R18, R18, R23, R19
  %".1283" = load float, ptr %"R18"
  %".1284" = load float, ptr %"R23"
  %".1285" = load float, ptr %"R19"
  %"fmul.50" = fmul float %".1283", %".1284"
  %"fadd.50" = fadd float %"fmul.50", %".1285"
  %".1286" = bitcast ptr %"R18" to ptr
  store float %"fadd.50", ptr %".1286"
  ; FFMA R10, R23, R20, R10
  %".1289" = load float, ptr %"R23"
  %".1290" = load float, ptr %"R20"
  %".1291" = load float, ptr %"R10"
  %"fmul.51" = fmul float %".1289", %".1290"
  %"fadd.51" = fadd float %"fmul.51", %".1291"
  %".1292" = bitcast ptr %"R10" to ptr
  store float %"fadd.51", ptr %".1292"
  ; FFMA R18, R25, R35, R18
  %".1295" = load float, ptr %"R25"
  %".1296" = load float, ptr %"R35"
  %".1297" = load float, ptr %"R18"
  %"fmul.52" = fmul float %".1295", %".1296"
  %"fadd.52" = fadd float %"fmul.52", %".1297"
  %".1298" = bitcast ptr %"R18" to ptr
  store float %"fadd.52", ptr %".1298"
  ; FFMA R10, R35, R22, R10
  %".1301" = load float, ptr %"R35"
  %".1302" = load float, ptr %"R22"
  %".1303" = load float, ptr %"R10"
  %"fmul.53" = fmul float %".1301", %".1302"
  %"fadd.53" = fadd float %"fmul.53", %".1303"
  %".1304" = bitcast ptr %"R10" to ptr
  store float %"fadd.53", ptr %".1304"
  ; FFMA R52, R37, R39, R18
  %".1307" = load float, ptr %"R37"
  %".1308" = load float, ptr %"R39"
  %".1309" = load float, ptr %"R18"
  %"fmul.54" = fmul float %".1307", %".1308"
  %"fadd.54" = fadd float %"fmul.54", %".1309"
  %".1310" = bitcast ptr %"R52" to ptr
  store float %"fadd.54", ptr %".1310"
  ; FFMA R54, R39, R24, R10
  %".1313" = load float, ptr %"R39"
  %".1314" = load float, ptr %"R24"
  %".1315" = load float, ptr %"R10"
  %"fmul.55" = fmul float %".1313", %".1314"
  %"fadd.55" = fadd float %"fmul.55", %".1315"
  %".1316" = bitcast ptr %"R54" to ptr
  store float %"fadd.55", ptr %".1316"
  ; @P0 BRA `(.L_x_3)
  %".1319" = load i1, ptr %"P0"
  %".1320" = icmp ne i1 %".1319", 1
  br i1 %".1320", label %".L_x_3", label %".L_x_2"
.L_x_2:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1323" = load i32, ptr %"R4"
  %".1324" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".1323", 0
  %".1325" = and i1 %"cmp.12", %".1324"
  ; @!P0 BRA `(.L_x_1)
  %".1327" = load i1, ptr %"P0"
  %".1328" = icmp eq i1 %".1327", 1
  br i1 %".1328", label %".L_x_1", label %".L_x_2_split_0x0fb0"
.L_x_2_split_0x0fb0:
  ; IADD3 R9, R0, R11, RZ
  %".1331" = load i32, ptr %"R0"
  %".1332" = load i32, ptr %"R11"
  %"add.85" = add i32 %".1331", %".1332"
  %"add.86" = add i32 %"add.85", 0
  store i32 %"add.86", ptr %"R9"
  ; MOV R15, 0x4
  store i32 4, ptr %"R15"
  ; LEA R14, R2.reuse, R9, 0x2
  %".1337" = load i32, ptr %"R2"
  %".1338" = load i32, ptr %"R9"
  %"shl.89" = shl i32 %".1337", 2
  %"add.87" = add i32 %"shl.89", %".1338"
  store i32 %"add.87", ptr %"R14"
  ; IMAD R12, R2, 0x3, R9
  %".1341" = load i32, ptr %"R2"
  %".1342" = load i32, ptr %"R9"
  %"mul.32" = mul i32 %".1341", 3
  %"add.88" = add i32 %"mul.32", %".1342"
  store i32 %"add.88", ptr %"R12"
  ; IMAD.WIDE R10, R11, R15, c[0x0][0x168]
  %".1345" = load i32, ptr %"R11"
  %".1346" = load i32, ptr %"R15"
  %"mul.33" = mul i32 %".1345", %".1346"
  %"add.89" = add i32 %"mul.33", %"Arg_3"
  store i32 %"add.89", ptr %"R10"
  ; IMAD.WIDE R12, R12, R15, c[0x0][0x170]
  %".1349" = load i32, ptr %"R12"
  %".1350" = load i32, ptr %"R15"
  %"mul.34" = mul i32 %".1349", %".1350"
  %"add.90" = add i32 %"mul.34", %"Arg_4"
  store i32 %"add.90", ptr %"R12"
  ; IMAD.WIDE R14, R14, R15, c[0x0][0x170]
  %".1353" = load i32, ptr %"R14"
  %".1354" = load i32, ptr %"R15"
  %"mul.35" = mul i32 %".1353", %".1354"
  %"add.91" = add i32 %"mul.35", %"Arg_4"
  store i32 %"add.91", ptr %"R14"
  ; LDG.E.SYS R17, [R10]
  %".1357" = load i32, ptr %"R10"
  %"zext.168" = zext i32 %".1357" to i64
  %".1358" = load i32, ptr %"R11"
  %"zext.169" = zext i32 %".1358" to i64
  %"shl.90" = shl i64 %"zext.169", 32
  %"or.84" = or i64 %"shl.90", %"zext.168"
  %".1359" = add i64 %"or.84", 0
  %"for_LDG.84" = inttoptr i64 %".1359" to ptr
  %".1360" = load float, ptr %"for_LDG.84"
  %".1361" = bitcast ptr %"R17" to ptr
  store float %".1360", ptr %".1361"
  ; LDG.E.SYS R9, [R12]
  %".1364" = load i32, ptr %"R12"
  %"zext.170" = zext i32 %".1364" to i64
  %".1365" = load i32, ptr %"R13"
  %"zext.171" = zext i32 %".1365" to i64
  %"shl.91" = shl i64 %"zext.171", 32
  %"or.85" = or i64 %"shl.91", %"zext.170"
  %".1366" = add i64 %"or.85", 0
  %"for_LDG.85" = inttoptr i64 %".1366" to ptr
  %".1367" = load float, ptr %"for_LDG.85"
  %".1368" = bitcast ptr %"R9" to ptr
  store float %".1367", ptr %".1368"
  ; LDG.E.SYS R16, [R14]
  %".1371" = load i32, ptr %"R14"
  %"zext.172" = zext i32 %".1371" to i64
  %".1372" = load i32, ptr %"R15"
  %"zext.173" = zext i32 %".1372" to i64
  %"shl.92" = shl i64 %"zext.173", 32
  %"or.86" = or i64 %"shl.92", %"zext.172"
  %".1373" = add i64 %"or.86", 0
  %"for_LDG.86" = inttoptr i64 %".1373" to ptr
  %".1374" = load float, ptr %"for_LDG.86"
  %".1375" = bitcast ptr %"R16" to ptr
  store float %".1374", ptr %".1375"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".1378" = load i32, ptr %"R4"
  %".1379" = load i1, ptr %"PT"
  %"cmp.13" = icmp ne i32 %".1378", 1
  %".1380" = and i1 %"cmp.13", %".1379"
  ; FFMA R52, R9, R17, R52
  %".1382" = load float, ptr %"R9"
  %".1383" = load float, ptr %"R17"
  %".1384" = load float, ptr %"R52"
  %"fmul.56" = fmul float %".1382", %".1383"
  %"fadd.56" = fadd float %"fmul.56", %".1384"
  %".1385" = bitcast ptr %"R52" to ptr
  store float %"fadd.56", ptr %".1385"
  ; FFMA R54, R17, R16, R54
  %".1388" = load float, ptr %"R17"
  %".1389" = load float, ptr %"R16"
  %".1390" = load float, ptr %"R54"
  %"fmul.57" = fmul float %".1388", %".1389"
  %"fadd.57" = fadd float %"fmul.57", %".1390"
  %".1391" = bitcast ptr %"R54" to ptr
  store float %"fadd.57", ptr %".1391"
  ; @!P0 BRA `(.L_x_1)
  %".1394" = load i1, ptr %"P0"
  %".1395" = icmp eq i1 %".1394", 1
  br i1 %".1395", label %".L_x_1", label %".L_x_2_split_0x1090"
.L_x_2_split_0x1090:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".1398" = load i32, ptr %"R4"
  %".1399" = load i1, ptr %"PT"
  %"cmp.14" = icmp ne i32 %".1398", 2
  %".1400" = and i1 %"cmp.14", %".1399"
  ; LDG.E.SYS R9, [R12+0x4]
  %".1402" = load i32, ptr %"R12"
  %"zext.174" = zext i32 %".1402" to i64
  %".1403" = load i32, ptr %"R13"
  %"zext.175" = zext i32 %".1403" to i64
  %"shl.93" = shl i64 %"zext.175", 32
  %"or.87" = or i64 %"shl.93", %"zext.174"
  %".1404" = add i64 %"or.87", 4
  %"for_LDG.87" = inttoptr i64 %".1404" to ptr
  %".1405" = load float, ptr %"for_LDG.87"
  %".1406" = bitcast ptr %"R9" to ptr
  store float %".1405", ptr %".1406"
  ; LDG.E.SYS R17, [R10+0x4]
  %".1409" = load i32, ptr %"R10"
  %"zext.176" = zext i32 %".1409" to i64
  %".1410" = load i32, ptr %"R11"
  %"zext.177" = zext i32 %".1410" to i64
  %"shl.94" = shl i64 %"zext.177", 32
  %"or.88" = or i64 %"shl.94", %"zext.176"
  %".1411" = add i64 %"or.88", 4
  %"for_LDG.88" = inttoptr i64 %".1411" to ptr
  %".1412" = load float, ptr %"for_LDG.88"
  %".1413" = bitcast ptr %"R17" to ptr
  store float %".1412", ptr %".1413"
  ; LDG.E.SYS R16, [R14+0x4]
  %".1416" = load i32, ptr %"R14"
  %"zext.178" = zext i32 %".1416" to i64
  %".1417" = load i32, ptr %"R15"
  %"zext.179" = zext i32 %".1417" to i64
  %"shl.95" = shl i64 %"zext.179", 32
  %"or.89" = or i64 %"shl.95", %"zext.178"
  %".1418" = add i64 %"or.89", 4
  %"for_LDG.89" = inttoptr i64 %".1418" to ptr
  %".1419" = load float, ptr %"for_LDG.89"
  %".1420" = bitcast ptr %"R16" to ptr
  store float %".1419", ptr %".1420"
  ; @P0 LDG.E.SYS R19, [R12+0x8]
  %".1423" = load i1, ptr %"P0"
  %".1424" = icmp ne i1 %".1423", 1
  br i1 %".1424", label %".L_x_2_split_0x1090_conditionalExpr_0x10d0", label %".L_x_2_split_0x10e0"
.L_x_2_split_0x1090_conditionalExpr_0x10d0:
  ; LDG.E.SYS R19, [R12+0x8]
  %".1427" = load i32, ptr %"R12"
  %"zext.180" = zext i32 %".1427" to i64
  %".1428" = load i32, ptr %"R13"
  %"zext.181" = zext i32 %".1428" to i64
  %"shl.96" = shl i64 %"zext.181", 32
  %"or.90" = or i64 %"shl.96", %"zext.180"
  %".1429" = add i64 %"or.90", 8
  %"for_LDG.90" = inttoptr i64 %".1429" to ptr
  %".1430" = load float, ptr %"for_LDG.90"
  %".1431" = bitcast ptr %"R19" to ptr
  store float %".1430", ptr %".1431"
  ; BRA `(.L_x_2_split_0x10e0)
  br label %".L_x_2_split_0x10e0"
.L_x_2_split_0x10e0:
  ; @P0 LDG.E.SYS R21, [R10+0x8]
  %".1436" = load i1, ptr %"P0"
  %".1437" = icmp ne i1 %".1436", 1
  br i1 %".1437", label %".L_x_2_split_0x10e0_conditionalExpr_0x10e0", label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10e0_conditionalExpr_0x10e0:
  ; LDG.E.SYS R21, [R10+0x8]
  %".1440" = load i32, ptr %"R10"
  %"zext.182" = zext i32 %".1440" to i64
  %".1441" = load i32, ptr %"R11"
  %"zext.183" = zext i32 %".1441" to i64
  %"shl.97" = shl i64 %"zext.183", 32
  %"or.91" = or i64 %"shl.97", %"zext.182"
  %".1442" = add i64 %"or.91", 8
  %"for_LDG.91" = inttoptr i64 %".1442" to ptr
  %".1443" = load float, ptr %"for_LDG.91"
  %".1444" = bitcast ptr %"R21" to ptr
  store float %".1443", ptr %".1444"
  ; BRA `(.L_x_2_split_0x10f0)
  br label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10f0:
  ; @P0 LDG.E.SYS R18, [R14+0x8]
  %".1449" = load i1, ptr %"P0"
  %".1450" = icmp ne i1 %".1449", 1
  br i1 %".1450", label %".L_x_2_split_0x10f0_conditionalExpr_0x10f0", label %".L_x_2_split_0x1100"
.L_x_2_split_0x10f0_conditionalExpr_0x10f0:
  ; LDG.E.SYS R18, [R14+0x8]
  %".1453" = load i32, ptr %"R14"
  %"zext.184" = zext i32 %".1453" to i64
  %".1454" = load i32, ptr %"R15"
  %"zext.185" = zext i32 %".1454" to i64
  %"shl.98" = shl i64 %"zext.185", 32
  %"or.92" = or i64 %"shl.98", %"zext.184"
  %".1455" = add i64 %"or.92", 8
  %"for_LDG.92" = inttoptr i64 %".1455" to ptr
  %".1456" = load float, ptr %"for_LDG.92"
  %".1457" = bitcast ptr %"R18" to ptr
  store float %".1456", ptr %".1457"
  ; BRA `(.L_x_2_split_0x1100)
  br label %".L_x_2_split_0x1100"
.L_x_2_split_0x1100:
  ; FFMA R52, R9, R17, R52
  %".1462" = load float, ptr %"R9"
  %".1463" = load float, ptr %"R17"
  %".1464" = load float, ptr %"R52"
  %"fmul.58" = fmul float %".1462", %".1463"
  %"fadd.58" = fadd float %"fmul.58", %".1464"
  %".1465" = bitcast ptr %"R52" to ptr
  store float %"fadd.58", ptr %".1465"
  ; FFMA R54, R17, R16, R54
  %".1468" = load float, ptr %"R17"
  %".1469" = load float, ptr %"R16"
  %".1470" = load float, ptr %"R54"
  %"fmul.59" = fmul float %".1468", %".1469"
  %"fadd.59" = fadd float %"fmul.59", %".1470"
  %".1471" = bitcast ptr %"R54" to ptr
  store float %"fadd.59", ptr %".1471"
  ; @P0 FFMA R52, R19, R21, R52
  %".1474" = load i1, ptr %"P0"
  %".1475" = icmp ne i1 %".1474", 1
  br i1 %".1475", label %".L_x_2_split_0x1100_conditionalExpr_0x1120", label %".L_x_2_split_0x1130"
.L_x_2_split_0x1100_conditionalExpr_0x1120:
  ; FFMA R52, R19, R21, R52
  %".1478" = load float, ptr %"R19"
  %".1479" = load float, ptr %"R21"
  %".1480" = load float, ptr %"R52"
  %"fmul.60" = fmul float %".1478", %".1479"
  %"fadd.60" = fadd float %"fmul.60", %".1480"
  %".1481" = bitcast ptr %"R52" to ptr
  store float %"fadd.60", ptr %".1481"
  ; BRA `(.L_x_2_split_0x1130)
  br label %".L_x_2_split_0x1130"
.L_x_2_split_0x1130:
  ; @P0 FFMA R54, R21, R18, R54
  %".1486" = load i1, ptr %"P0"
  %".1487" = icmp ne i1 %".1486", 1
  br i1 %".1487", label %".L_x_2_split_0x1130_conditionalExpr_0x1130", label %".L_x_1"
.L_x_2_split_0x1130_conditionalExpr_0x1130:
  ; FFMA R54, R21, R18, R54
  %".1490" = load float, ptr %"R21"
  %".1491" = load float, ptr %"R18"
  %".1492" = load float, ptr %"R54"
  %"fmul.61" = fmul float %".1490", %".1491"
  %"fadd.61" = fadd float %"fmul.61", %".1492"
  %".1493" = bitcast ptr %"R54" to ptr
  store float %"fadd.61", ptr %".1493"
  ; BRA `(.L_x_1)
  br label %".L_x_1"
.L_x_1:
  ; LDG.E.SYS R9, [R26]
  %".1498" = load i32, ptr %"R26"
  %"zext.186" = zext i32 %".1498" to i64
  %"zext.187" = zext i32 0 to i64
  %"shl.99" = shl i64 %"zext.187", 32
  %"or.93" = or i64 %"shl.99", %"zext.186"
  %".1499" = add i64 %"or.93", 0
  %"for_LDG.93" = inttoptr i64 %".1499" to ptr
  %".1500" = load float, ptr %"for_LDG.93"
  %".1501" = bitcast ptr %"R9" to ptr
  store float %".1500", ptr %".1501"
  ; MOV R10, 0x3bbb989d
  %".1504" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".1504"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R11, 0x437c0000
  %".1508" = bitcast ptr %"R11" to ptr
  store float 0x41d0df0000000000, ptr %".1508"
  ; BSSY B0, `(.L_x_7)
  ; FADD R9, R9, R52
  %".1512" = load float, ptr %"R9"
  %".1513" = load float, ptr %"R52"
  %"fadd.62" = fadd float %".1512", %".1513"
  %".1514" = bitcast ptr %"R9" to ptr
  store float %"fadd.62", ptr %".1514"
  ; FFMA.SAT R10, -R9, R10, 0.5
  %".1517" = load float, ptr %"R9"
  %".1518" = sub float              0x0, %".1517"
  %".1519" = load float, ptr %"R10"
  %"fmul.62" = fmul float %".1518", %".1519"
  %"fadd.63" = fadd float %"fmul.62", 0x3fe0000000000000
  %".1520" = bitcast ptr %"R10" to ptr
  store float %"fadd.63", ptr %".1520"
  ; FFMA.RM R10, R10, R11, 12582913
  %".1523" = load float, ptr %"R10"
  %".1524" = load float, ptr %"R11"
  %"fmul.63" = fmul float %".1523", %".1524"
  %"fadd.64" = fadd float %"fmul.63", 0x4168000020000000
  %".1525" = bitcast ptr %"R10" to ptr
  store float %"fadd.64", ptr %".1525"
  ; FADD R12, R10.reuse, -12583039
  %".1528" = load float, ptr %"R10"
  %"fadd.65" = fadd float %".1528", 0xc168000fe0000000
  %".1529" = bitcast ptr %"R12" to ptr
  store float %"fadd.65", ptr %".1529"
  ; SHF.L.U32 R10, R10, 0x17, RZ
  %".1532" = icmp ult i32 23, 32
  %"SHF_min" = select  i1 %".1532", i32 23, i32 32
  %".1533" = load i32, ptr %"R10"
  %"zext.188" = zext i32 0 to i64
  %"zext.189" = zext i32 %".1533" to i64
  %"zext.190" = zext i32 23 to i64
  %"shl.100" = shl i64 %"zext.188", 32
  %"or.94" = or i64 %"shl.100", %"zext.189"
  %"shl.101" = shl i64 %"or.94", %"zext.190"
  %"and" = and i64 %"shl.101", 4294967295
  %"trunc32" = trunc i64 %"and" to i32
  store i32 %"trunc32", ptr %"R10"
  ; FFMA R12, -R9, 1.4426950216293334961, -R12
  %".1536" = load float, ptr %"R9"
  %".1537" = sub float              0x0, %".1536"
  %".1538" = load float, ptr %"R12"
  %".1539" = sub float              0x0, %".1538"
  %"fmul.64" = fmul float %".1537", 0x3ff7154760000000
  %"fadd.66" = fadd float %"fmul.64", %".1539"
  %".1540" = bitcast ptr %"R12" to ptr
  store float %"fadd.66", ptr %".1540"
  ; FFMA R12, -R9, 1.925963033500011079e-08, R12
  %".1543" = load float, ptr %"R9"
  %".1544" = sub float              0x0, %".1543"
  %".1545" = load float, ptr %"R12"
  %"fmul.65" = fmul float %".1544", 0x3e54ae0c00000000
  %"fadd.67" = fadd float %"fmul.65", %".1545"
  %".1546" = bitcast ptr %"R12" to ptr
  store float %"fadd.67", ptr %".1546"
  ; MUFU.EX2 R9, R12
  %".1549" = load float, ptr %"R12"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1549")
  %".1550" = bitcast ptr %"R9" to ptr
  store float %"llvm_exp2_f32_result", ptr %".1550"
  ; FFMA R24, R10, R9, 1
  %".1553" = load float, ptr %"R10"
  %".1554" = load float, ptr %"R9"
  %"fmul.66" = fmul float %".1553", %".1554"
  %"fadd.68" = fadd float %"fmul.66", 0x3ff0000000000000
  %".1555" = bitcast ptr %"R24" to ptr
  store float %"fadd.68", ptr %".1555"
  ; IADD3 R9, R24, 0x1800000, RZ
  %".1558" = load i32, ptr %"R24"
  %"add.92" = add i32 %".1558", 25165824
  %"add.93" = add i32 %"add.92", 0
  store i32 %"add.93", ptr %"R9"
  ; LOP3.LUT R9, R9, 0x7f800000, RZ, 0xc0, !PT
  %".1561" = load i32, ptr %"R9"
  %".1562" = and i32 %".1561", 2139095040
  store i32 %".1562", ptr %"R9"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".1565" = load i32, ptr %"R9"
  %".1566" = load i1, ptr %"PT"
  %"cmp.15" = icmp sgt i32 %".1565", 33554431
  %".1567" = and i1 %"cmp.15", %".1566"
  ; @P0 BRA `(.L_x_8)
  %".1569" = load i1, ptr %"P0"
  %".1570" = icmp ne i1 %".1569", 1
  br i1 %".1570", label %".L_x_8", label %".L_x_1_split_0x1260"
.L_x_1_split_0x1260:
  ; MOV R10, 0x1280
  store i32 4736, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R9, R22
  %".1576" = load i32, ptr %"R22"
  store i32 %".1576", ptr %"R9"
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %".1581" = load float, ptr %"R24"
  %".1582" = fdiv float 0x3ff0000000000000, %".1581"
  %".1583" = bitcast ptr %"R9" to ptr
  store float %".1582", ptr %".1583"
  ; FFMA R10, R24, R9, -1
  %".1586" = load float, ptr %"R24"
  %".1587" = load float, ptr %"R9"
  %"fmul.67" = fmul float %".1586", %".1587"
  %"fadd.69" = fadd float %"fmul.67", 0xbff0000000000000
  %".1588" = bitcast ptr %"R10" to ptr
  store float %"fadd.69", ptr %".1588"
  ; FADD.FTZ R10, -R10, -RZ
  %".1591" = load float, ptr %"R10"
  %".1592" = sub float              0x0, %".1591"
  %"fadd.70" = fadd float %".1592",              0x0
  %".1593" = bitcast ptr %"R10" to ptr
  store float %"fadd.70", ptr %".1593"
  ; FFMA R9, R9, R10, R9
  %".1596" = load float, ptr %"R9"
  %".1597" = load float, ptr %"R10"
  %".1598" = load float, ptr %"R9"
  %"fmul.68" = fmul float %".1596", %".1597"
  %"fadd.71" = fadd float %"fmul.68", %".1598"
  %".1599" = bitcast ptr %"R9" to ptr
  store float %"fadd.71", ptr %".1599"
.L_x_9:
  ; BSYNC B0
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  %".1603" = load i32, ptr %"R32"
  %"zext.191" = zext i32 %".1603" to i64
  %".1604" = load i32, ptr %"R33"
  %"zext.192" = zext i32 %".1604" to i64
  %"shl.102" = shl i64 %"zext.192", 32
  %"or.95" = or i64 %"shl.102", %"zext.191"
  %".1605" = add i64 %"or.95", 0
  %"for_LDG.94" = inttoptr i64 %".1605" to ptr
  %".1606" = load float, ptr %"for_LDG.94"
  %".1607" = bitcast ptr %"R11" to ptr
  store float %".1606", ptr %".1607"
  ; MOV R10, 0x3bbb989d
  %".1610" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".1610"
  ; MOV R13, 0x437c0000
  %".1613" = bitcast ptr %"R13" to ptr
  store float 0x41d0df0000000000, ptr %".1613"
  ; FADD R11, R11, R54
  %".1616" = load float, ptr %"R11"
  %".1617" = load float, ptr %"R54"
  %"fadd.72" = fadd float %".1616", %".1617"
  %".1618" = bitcast ptr %"R11" to ptr
  store float %"fadd.72", ptr %".1618"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %".1621" = load float, ptr %"R11"
  %".1622" = sub float              0x0, %".1621"
  %".1623" = load float, ptr %"R10"
  %"fmul.69" = fmul float %".1622", %".1623"
  %"fadd.73" = fadd float %"fmul.69", 0x3fe0000000000000
  %".1624" = bitcast ptr %"R10" to ptr
  store float %"fadd.73", ptr %".1624"
  ; FFMA.RM R10, R10, R13, 12582913
  %".1627" = load float, ptr %"R10"
  %".1628" = load float, ptr %"R13"
  %"fmul.70" = fmul float %".1627", %".1628"
  %"fadd.74" = fadd float %"fmul.70", 0x4168000020000000
  %".1629" = bitcast ptr %"R10" to ptr
  store float %"fadd.74", ptr %".1629"
  ; FADD R12, R10.reuse, -12583039
  %".1632" = load float, ptr %"R10"
  %"fadd.75" = fadd float %".1632", 0xc168000fe0000000
  %".1633" = bitcast ptr %"R12" to ptr
  store float %"fadd.75", ptr %".1633"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".1636" = icmp ult i32 23, 32
  %"SHF_min.1" = select  i1 %".1636", i32 23, i32 32
  %".1637" = load i32, ptr %"R10"
  %"zext.193" = zext i32 0 to i64
  %"zext.194" = zext i32 %".1637" to i64
  %"zext.195" = zext i32 23 to i64
  %"shl.103" = shl i64 %"zext.193", 32
  %"or.96" = or i64 %"shl.103", %"zext.194"
  %"shl.104" = shl i64 %"or.96", %"zext.195"
  %"and.1" = and i64 %"shl.104", 4294967295
  %"trunc32.1" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.1", ptr %"R20"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %".1640" = load float, ptr %"R11"
  %".1641" = sub float              0x0, %".1640"
  %".1642" = load float, ptr %"R12"
  %".1643" = sub float              0x0, %".1642"
  %"fmul.71" = fmul float %".1641", 0x3ff7154760000000
  %"fadd.76" = fadd float %"fmul.71", %".1643"
  %".1644" = bitcast ptr %"R12" to ptr
  store float %"fadd.76", ptr %".1644"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %".1647" = load float, ptr %"R11"
  %".1648" = sub float              0x0, %".1647"
  %".1649" = load float, ptr %"R12"
  %"fmul.72" = fmul float %".1648", 0x3e54ae0c00000000
  %"fadd.77" = fadd float %"fmul.72", %".1649"
  %".1650" = bitcast ptr %"R12" to ptr
  store float %"fadd.77", ptr %".1650"
  ; MUFU.EX2 R11, R12
  %".1653" = load float, ptr %"R12"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".1653")
  %".1654" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result.1", ptr %".1654"
  ; FFMA R20, R20, R11, 1
  %".1657" = load float, ptr %"R20"
  %".1658" = load float, ptr %"R11"
  %"fmul.73" = fmul float %".1657", %".1658"
  %"fadd.78" = fadd float %"fmul.73", 0x3ff0000000000000
  %".1659" = bitcast ptr %"R20" to ptr
  store float %"fadd.78", ptr %".1659"
  ; @!P4 BRA `(.L_x_10)
  %".1662" = load i1, ptr %"P4"
  %".1663" = icmp eq i1 %".1662", 1
  br i1 %".1663", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".1666" = load i32, ptr %"R5"
  %".1667" = load i1, ptr %"PT"
  %"cmp.16" = icmp sge i32 %".1666", 3
  %".1668" = and i1 %"cmp.16", %".1667"
  ; MOV R8, RZ
  %".1670" = load float, ptr %"RZ"
  %".1671" = bitcast ptr %"R8" to ptr
  store float %".1670", ptr %".1671"
  ; MOV R22, RZ
  %".1674" = load i32, ptr %"RZ"
  store i32 %".1674", ptr %"R22"
  ; @!P0 BRA `(.L_x_11)
  %".1677" = load i1, ptr %"P0"
  %".1678" = icmp eq i1 %".1677", 1
  br i1 %".1678", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".1681" = load i32, ptr %"R7"
  %".1682" = load i1, ptr %"PT"
  %"cmp.17" = icmp sgt i32 %".1681", 0
  %".1683" = and i1 %"cmp.17", %".1682"
  ; MOV R8, RZ
  %".1685" = load float, ptr %"RZ"
  %".1686" = bitcast ptr %"R8" to ptr
  store float %".1685", ptr %".1686"
  ; MOV R22, RZ
  %".1689" = load i32, ptr %"RZ"
  store i32 %".1689", ptr %"R22"
  ; MOV R23, R7
  %".1692" = load i32, ptr %"R7"
  store i32 %".1692", ptr %"R23"
  ; @!P0 BRA `(.L_x_12)
  %".1695" = load i1, ptr %"P0"
  %".1696" = icmp eq i1 %".1695", 1
  br i1 %".1696", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".1699" = load i32, ptr %"R23"
  %".1700" = load i1, ptr %"PT"
  %"cmp.18" = icmp sgt i32 %".1699", 12
  %".1701" = and i1 %"cmp.18", %".1700"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".1703" = and i1 1, 1
  %".1704" = or i1 %".1703", 1
  ; @!P1 BRA `(.L_x_13)
  %".1706" = load i1, ptr %"P1"
  %".1707" = icmp eq i1 %".1706", 1
  br i1 %".1707", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1710" = xor i1 1, 1
  %".1711" = and i1 %".1710", 1
  %".1712" = and i1 %".1711", 1
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, ptr %"R49"
  ; IADD3 R16, R3, R22, RZ
  %".1716" = load i32, ptr %"R3"
  %".1717" = load i32, ptr %"R22"
  %"add.94" = add i32 %".1716", %".1717"
  %"add.95" = add i32 %"add.94", 0
  store i32 %"add.95", ptr %"R16"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".1720" = load i32, ptr %"R22"
  %".1721" = load i32, ptr %"R49"
  %"mul.36" = mul i32 %".1720", %".1721"
  %"add.96" = add i32 %"mul.36", %"Arg_3"
  store i32 %"add.96", ptr %"R12"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".1724" = load i32, ptr %"R16"
  %".1725" = load i32, ptr %"R49"
  %"mul.37" = mul i32 %".1724", %".1725"
  %"add.97" = add i32 %"mul.37", %"Arg_4"
  store i32 %"add.97", ptr %"R16"
  ; IADD3 R18, R22, 0x4, RZ
  %".1728" = load i32, ptr %"R22"
  %"add.98" = add i32 %".1728", 4
  %"add.99" = add i32 %"add.98", 0
  store i32 %"add.99", ptr %"R18"
  ; LDG.E.SYS R24, [R12]
  %".1731" = load i32, ptr %"R12"
  %"zext.196" = zext i32 %".1731" to i64
  %".1732" = load i32, ptr %"R13"
  %"zext.197" = zext i32 %".1732" to i64
  %"shl.105" = shl i64 %"zext.197", 32
  %"or.97" = or i64 %"shl.105", %"zext.196"
  %".1733" = add i64 %"or.97", 0
  %"for_LDG.95" = inttoptr i64 %".1733" to ptr
  %".1734" = load float, ptr %"for_LDG.95"
  %".1735" = bitcast ptr %"R24" to ptr
  store float %".1734", ptr %".1735"
  ; IADD3 R14, R3, R18, RZ
  %".1738" = load i32, ptr %"R3"
  %".1739" = load i32, ptr %"R18"
  %"add.100" = add i32 %".1738", %".1739"
  %"add.101" = add i32 %"add.100", 0
  store i32 %"add.101", ptr %"R14"
  ; LDG.E.SYS R21, [R16]
  %".1742" = load i32, ptr %"R16"
  %"zext.198" = zext i32 %".1742" to i64
  %".1743" = load i32, ptr %"R17"
  %"zext.199" = zext i32 %".1743" to i64
  %"shl.106" = shl i64 %"zext.199", 32
  %"or.98" = or i64 %"shl.106", %"zext.198"
  %".1744" = add i64 %"or.98", 0
  %"for_LDG.96" = inttoptr i64 %".1744" to ptr
  %".1745" = load float, ptr %"for_LDG.96"
  %".1746" = bitcast ptr %"R21" to ptr
  store float %".1745", ptr %".1746"
  ; LDG.E.SYS R36, [R12+0x4]
  %".1749" = load i32, ptr %"R12"
  %"zext.200" = zext i32 %".1749" to i64
  %".1750" = load i32, ptr %"R13"
  %"zext.201" = zext i32 %".1750" to i64
  %"shl.107" = shl i64 %"zext.201", 32
  %"or.99" = or i64 %"shl.107", %"zext.200"
  %".1751" = add i64 %"or.99", 4
  %"for_LDG.97" = inttoptr i64 %".1751" to ptr
  %".1752" = load float, ptr %"for_LDG.97"
  %".1753" = bitcast ptr %"R36" to ptr
  store float %".1752", ptr %".1753"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".1756" = load i32, ptr %"R18"
  %".1757" = load i32, ptr %"R49"
  %"mul.38" = mul i32 %".1756", %".1757"
  %"add.102" = add i32 %"mul.38", %"Arg_3"
  store i32 %"add.102", ptr %"R18"
  ; LDG.E.SYS R25, [R16+0x4]
  %".1760" = load i32, ptr %"R16"
  %"zext.202" = zext i32 %".1760" to i64
  %".1761" = load i32, ptr %"R17"
  %"zext.203" = zext i32 %".1761" to i64
  %"shl.108" = shl i64 %"zext.203", 32
  %"or.100" = or i64 %"shl.108", %"zext.202"
  %".1762" = add i64 %"or.100", 4
  %"for_LDG.98" = inttoptr i64 %".1762" to ptr
  %".1763" = load float, ptr %"for_LDG.98"
  %".1764" = bitcast ptr %"R25" to ptr
  store float %".1763", ptr %".1764"
  ; LDG.E.SYS R46, [R12+0x8]
  %".1767" = load i32, ptr %"R12"
  %"zext.204" = zext i32 %".1767" to i64
  %".1768" = load i32, ptr %"R13"
  %"zext.205" = zext i32 %".1768" to i64
  %"shl.109" = shl i64 %"zext.205", 32
  %"or.101" = or i64 %"shl.109", %"zext.204"
  %".1769" = add i64 %"or.101", 8
  %"for_LDG.99" = inttoptr i64 %".1769" to ptr
  %".1770" = load float, ptr %"for_LDG.99"
  %".1771" = bitcast ptr %"R46" to ptr
  store float %".1770", ptr %".1771"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".1774" = load i32, ptr %"R14"
  %".1775" = load i32, ptr %"R49"
  %"mul.39" = mul i32 %".1774", %".1775"
  %"add.103" = add i32 %"mul.39", %"Arg_4"
  store i32 %"add.103", ptr %"R14"
  ; LDG.E.SYS R34, [R16+0x8]
  %".1778" = load i32, ptr %"R16"
  %"zext.206" = zext i32 %".1778" to i64
  %".1779" = load i32, ptr %"R17"
  %"zext.207" = zext i32 %".1779" to i64
  %"shl.110" = shl i64 %"zext.207", 32
  %"or.102" = or i64 %"shl.110", %"zext.206"
  %".1780" = add i64 %"or.102", 8
  %"for_LDG.100" = inttoptr i64 %".1780" to ptr
  %".1781" = load float, ptr %"for_LDG.100"
  %".1782" = bitcast ptr %"R34" to ptr
  store float %".1781", ptr %".1782"
  ; LDG.E.SYS R44, [R12+0xc]
  %".1785" = load i32, ptr %"R12"
  %"zext.208" = zext i32 %".1785" to i64
  %".1786" = load i32, ptr %"R13"
  %"zext.209" = zext i32 %".1786" to i64
  %"shl.111" = shl i64 %"zext.209", 32
  %"or.103" = or i64 %"shl.111", %"zext.208"
  %".1787" = add i64 %"or.103", 12
  %"for_LDG.101" = inttoptr i64 %".1787" to ptr
  %".1788" = load float, ptr %"for_LDG.101"
  %".1789" = bitcast ptr %"R44" to ptr
  store float %".1788", ptr %".1789"
  ; IADD3 R10, R22, 0x8, RZ
  %".1792" = load i32, ptr %"R22"
  %"add.104" = add i32 %".1792", 8
  %"add.105" = add i32 %"add.104", 0
  store i32 %"add.105", ptr %"R10"
  ; LDG.E.SYS R41, [R16+0xc]
  %".1795" = load i32, ptr %"R16"
  %"zext.210" = zext i32 %".1795" to i64
  %".1796" = load i32, ptr %"R17"
  %"zext.211" = zext i32 %".1796" to i64
  %"shl.112" = shl i64 %"zext.211", 32
  %"or.104" = or i64 %"shl.112", %"zext.210"
  %".1797" = add i64 %"or.104", 12
  %"for_LDG.102" = inttoptr i64 %".1797" to ptr
  %".1798" = load float, ptr %"for_LDG.102"
  %".1799" = bitcast ptr %"R41" to ptr
  store float %".1798", ptr %".1799"
  ; LDG.E.SYS R42, [R18]
  %".1802" = load i32, ptr %"R18"
  %"zext.212" = zext i32 %".1802" to i64
  %".1803" = load i32, ptr %"R19"
  %"zext.213" = zext i32 %".1803" to i64
  %"shl.113" = shl i64 %"zext.213", 32
  %"or.105" = or i64 %"shl.113", %"zext.212"
  %".1804" = add i64 %"or.105", 0
  %"for_LDG.103" = inttoptr i64 %".1804" to ptr
  %".1805" = load float, ptr %"for_LDG.103"
  %".1806" = bitcast ptr %"R42" to ptr
  store float %".1805", ptr %".1806"
  ; IADD3 R50, R3, R10, RZ
  %".1809" = load i32, ptr %"R3"
  %".1810" = load i32, ptr %"R10"
  %"add.106" = add i32 %".1809", %".1810"
  %"add.107" = add i32 %"add.106", 0
  store i32 %"add.107", ptr %"R50"
  ; LDG.E.SYS R39, [R14]
  %".1813" = load i32, ptr %"R14"
  %"zext.214" = zext i32 %".1813" to i64
  %".1814" = load i32, ptr %"R15"
  %"zext.215" = zext i32 %".1814" to i64
  %"shl.114" = shl i64 %"zext.215", 32
  %"or.106" = or i64 %"shl.114", %"zext.214"
  %".1815" = add i64 %"or.106", 0
  %"for_LDG.104" = inttoptr i64 %".1815" to ptr
  %".1816" = load float, ptr %"for_LDG.104"
  %".1817" = bitcast ptr %"R39" to ptr
  store float %".1816", ptr %".1817"
  ; LDG.E.SYS R40, [R18+0x4]
  %".1820" = load i32, ptr %"R18"
  %"zext.216" = zext i32 %".1820" to i64
  %".1821" = load i32, ptr %"R19"
  %"zext.217" = zext i32 %".1821" to i64
  %"shl.115" = shl i64 %"zext.217", 32
  %"or.107" = or i64 %"shl.115", %"zext.216"
  %".1822" = add i64 %"or.107", 4
  %"for_LDG.105" = inttoptr i64 %".1822" to ptr
  %".1823" = load float, ptr %"for_LDG.105"
  %".1824" = bitcast ptr %"R40" to ptr
  store float %".1823", ptr %".1824"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".1827" = load i32, ptr %"R10"
  %".1828" = load i32, ptr %"R49"
  %"mul.40" = mul i32 %".1827", %".1828"
  %"add.108" = add i32 %"mul.40", %"Arg_3"
  store i32 %"add.108", ptr %"R10"
  ; LDG.E.SYS R37, [R14+0x4]
  %".1831" = load i32, ptr %"R14"
  %"zext.218" = zext i32 %".1831" to i64
  %".1832" = load i32, ptr %"R15"
  %"zext.219" = zext i32 %".1832" to i64
  %"shl.116" = shl i64 %"zext.219", 32
  %"or.108" = or i64 %"shl.116", %"zext.218"
  %".1833" = add i64 %"or.108", 4
  %"for_LDG.106" = inttoptr i64 %".1833" to ptr
  %".1834" = load float, ptr %"for_LDG.106"
  %".1835" = bitcast ptr %"R37" to ptr
  store float %".1834", ptr %".1835"
  ; LDG.E.SYS R38, [R18+0x8]
  %".1838" = load i32, ptr %"R18"
  %"zext.220" = zext i32 %".1838" to i64
  %".1839" = load i32, ptr %"R19"
  %"zext.221" = zext i32 %".1839" to i64
  %"shl.117" = shl i64 %"zext.221", 32
  %"or.109" = or i64 %"shl.117", %"zext.220"
  %".1840" = add i64 %"or.109", 8
  %"for_LDG.107" = inttoptr i64 %".1840" to ptr
  %".1841" = load float, ptr %"for_LDG.107"
  %".1842" = bitcast ptr %"R38" to ptr
  store float %".1841", ptr %".1842"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".1845" = load i32, ptr %"R50"
  %".1846" = load i32, ptr %"R49"
  %"mul.41" = mul i32 %".1845", %".1846"
  %"add.109" = add i32 %"mul.41", %"Arg_4"
  store i32 %"add.109", ptr %"R12"
  ; LDG.E.SYS R35, [R14+0x8]
  %".1849" = load i32, ptr %"R14"
  %"zext.222" = zext i32 %".1849" to i64
  %".1850" = load i32, ptr %"R15"
  %"zext.223" = zext i32 %".1850" to i64
  %"shl.118" = shl i64 %"zext.223", 32
  %"or.110" = or i64 %"shl.118", %"zext.222"
  %".1851" = add i64 %"or.110", 8
  %"for_LDG.108" = inttoptr i64 %".1851" to ptr
  %".1852" = load float, ptr %"for_LDG.108"
  %".1853" = bitcast ptr %"R35" to ptr
  store float %".1852", ptr %".1853"
  ; LDG.E.SYS R48, [R18+0xc]
  %".1856" = load i32, ptr %"R18"
  %"zext.224" = zext i32 %".1856" to i64
  %".1857" = load i32, ptr %"R19"
  %"zext.225" = zext i32 %".1857" to i64
  %"shl.119" = shl i64 %"zext.225", 32
  %"or.111" = or i64 %"shl.119", %"zext.224"
  %".1858" = add i64 %"or.111", 12
  %"for_LDG.109" = inttoptr i64 %".1858" to ptr
  %".1859" = load float, ptr %"for_LDG.109"
  %".1860" = bitcast ptr %"R48" to ptr
  store float %".1859", ptr %".1860"
  ; IADD3 R16, R22, 0xc, RZ
  %".1863" = load i32, ptr %"R22"
  %"add.110" = add i32 %".1863", 12
  %"add.111" = add i32 %"add.110", 0
  store i32 %"add.111", ptr %"R16"
  ; LDG.E.SYS R47, [R14+0xc]
  %".1866" = load i32, ptr %"R14"
  %"zext.226" = zext i32 %".1866" to i64
  %".1867" = load i32, ptr %"R15"
  %"zext.227" = zext i32 %".1867" to i64
  %"shl.120" = shl i64 %"zext.227", 32
  %"or.112" = or i64 %"shl.120", %"zext.226"
  %".1868" = add i64 %"or.112", 12
  %"for_LDG.110" = inttoptr i64 %".1868" to ptr
  %".1869" = load float, ptr %"for_LDG.110"
  %".1870" = bitcast ptr %"R47" to ptr
  store float %".1869", ptr %".1870"
  ; LDG.E.SYS R54, [R10]
  %".1873" = load i32, ptr %"R10"
  %"zext.228" = zext i32 %".1873" to i64
  %".1874" = load i32, ptr %"R11"
  %"zext.229" = zext i32 %".1874" to i64
  %"shl.121" = shl i64 %"zext.229", 32
  %"or.113" = or i64 %"shl.121", %"zext.228"
  %".1875" = add i64 %"or.113", 0
  %"for_LDG.111" = inttoptr i64 %".1875" to ptr
  %".1876" = load float, ptr %"for_LDG.111"
  %".1877" = bitcast ptr %"R54" to ptr
  store float %".1876", ptr %".1877"
  ; IADD3 R58, R3, R16, RZ
  %".1880" = load i32, ptr %"R3"
  %".1881" = load i32, ptr %"R16"
  %"add.112" = add i32 %".1880", %".1881"
  %"add.113" = add i32 %"add.112", 0
  store i32 %"add.113", ptr %"R58"
  ; LDG.E.SYS R45, [R12]
  %".1884" = load i32, ptr %"R12"
  %"zext.230" = zext i32 %".1884" to i64
  %".1885" = load i32, ptr %"R13"
  %"zext.231" = zext i32 %".1885" to i64
  %"shl.122" = shl i64 %"zext.231", 32
  %"or.114" = or i64 %"shl.122", %"zext.230"
  %".1886" = add i64 %"or.114", 0
  %"for_LDG.112" = inttoptr i64 %".1886" to ptr
  %".1887" = load float, ptr %"for_LDG.112"
  %".1888" = bitcast ptr %"R45" to ptr
  store float %".1887", ptr %".1888"
  ; LDG.E.SYS R52, [R10+0x4]
  %".1891" = load i32, ptr %"R10"
  %"zext.232" = zext i32 %".1891" to i64
  %".1892" = load i32, ptr %"R11"
  %"zext.233" = zext i32 %".1892" to i64
  %"shl.123" = shl i64 %"zext.233", 32
  %"or.115" = or i64 %"shl.123", %"zext.232"
  %".1893" = add i64 %"or.115", 4
  %"for_LDG.113" = inttoptr i64 %".1893" to ptr
  %".1894" = load float, ptr %"for_LDG.113"
  %".1895" = bitcast ptr %"R52" to ptr
  store float %".1894", ptr %".1895"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".1898" = load i32, ptr %"R16"
  %".1899" = load i32, ptr %"R49"
  %"mul.42" = mul i32 %".1898", %".1899"
  %"add.114" = add i32 %"mul.42", %"Arg_3"
  store i32 %"add.114", ptr %"R16"
  ; LDG.E.SYS R43, [R12+0x4]
  %".1902" = load i32, ptr %"R12"
  %"zext.234" = zext i32 %".1902" to i64
  %".1903" = load i32, ptr %"R13"
  %"zext.235" = zext i32 %".1903" to i64
  %"shl.124" = shl i64 %"zext.235", 32
  %"or.116" = or i64 %"shl.124", %"zext.234"
  %".1904" = add i64 %"or.116", 4
  %"for_LDG.114" = inttoptr i64 %".1904" to ptr
  %".1905" = load float, ptr %"for_LDG.114"
  %".1906" = bitcast ptr %"R43" to ptr
  store float %".1905", ptr %".1906"
  ; LDG.E.SYS R50, [R10+0x8]
  %".1909" = load i32, ptr %"R10"
  %"zext.236" = zext i32 %".1909" to i64
  %".1910" = load i32, ptr %"R11"
  %"zext.237" = zext i32 %".1910" to i64
  %"shl.125" = shl i64 %"zext.237", 32
  %"or.117" = or i64 %"shl.125", %"zext.236"
  %".1911" = add i64 %"or.117", 8
  %"for_LDG.115" = inttoptr i64 %".1911" to ptr
  %".1912" = load float, ptr %"for_LDG.115"
  %".1913" = bitcast ptr %"R50" to ptr
  store float %".1912", ptr %".1913"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".1916" = load i32, ptr %"R58"
  %".1917" = load i32, ptr %"R49"
  %"mul.43" = mul i32 %".1916", %".1917"
  %"add.115" = add i32 %"mul.43", %"Arg_4"
  store i32 %"add.115", ptr %"R14"
  ; LDG.E.SYS R18, [R12+0x8]
  %".1920" = load i32, ptr %"R12"
  %"zext.238" = zext i32 %".1920" to i64
  %".1921" = load i32, ptr %"R13"
  %"zext.239" = zext i32 %".1921" to i64
  %"shl.126" = shl i64 %"zext.239", 32
  %"or.118" = or i64 %"shl.126", %"zext.238"
  %".1922" = add i64 %"or.118", 8
  %"for_LDG.116" = inttoptr i64 %".1922" to ptr
  %".1923" = load float, ptr %"for_LDG.116"
  %".1924" = bitcast ptr %"R18" to ptr
  store float %".1923", ptr %".1924"
  ; LDG.E.SYS R56, [R10+0xc]
  %".1927" = load i32, ptr %"R10"
  %"zext.240" = zext i32 %".1927" to i64
  %".1928" = load i32, ptr %"R11"
  %"zext.241" = zext i32 %".1928" to i64
  %"shl.127" = shl i64 %"zext.241", 32
  %"or.119" = or i64 %"shl.127", %"zext.240"
  %".1929" = add i64 %"or.119", 12
  %"for_LDG.117" = inttoptr i64 %".1929" to ptr
  %".1930" = load float, ptr %"for_LDG.117"
  %".1931" = bitcast ptr %"R56" to ptr
  store float %".1930", ptr %".1931"
  ; LDG.E.SYS R55, [R12+0xc]
  %".1934" = load i32, ptr %"R12"
  %"zext.242" = zext i32 %".1934" to i64
  %".1935" = load i32, ptr %"R13"
  %"zext.243" = zext i32 %".1935" to i64
  %"shl.128" = shl i64 %"zext.243", 32
  %"or.120" = or i64 %"shl.128", %"zext.242"
  %".1936" = add i64 %"or.120", 12
  %"for_LDG.118" = inttoptr i64 %".1936" to ptr
  %".1937" = load float, ptr %"for_LDG.118"
  %".1938" = bitcast ptr %"R55" to ptr
  store float %".1937", ptr %".1938"
  ; LDG.E.SYS R51, [R16]
  %".1941" = load i32, ptr %"R16"
  %"zext.244" = zext i32 %".1941" to i64
  %".1942" = load i32, ptr %"R17"
  %"zext.245" = zext i32 %".1942" to i64
  %"shl.129" = shl i64 %"zext.245", 32
  %"or.121" = or i64 %"shl.129", %"zext.244"
  %".1943" = add i64 %"or.121", 0
  %"for_LDG.119" = inttoptr i64 %".1943" to ptr
  %".1944" = load float, ptr %"for_LDG.119"
  %".1945" = bitcast ptr %"R51" to ptr
  store float %".1944", ptr %".1945"
  ; LDG.E.SYS R53, [R14]
  %".1948" = load i32, ptr %"R14"
  %"zext.246" = zext i32 %".1948" to i64
  %".1949" = load i32, ptr %"R15"
  %"zext.247" = zext i32 %".1949" to i64
  %"shl.130" = shl i64 %"zext.247", 32
  %"or.122" = or i64 %"shl.130", %"zext.246"
  %".1950" = add i64 %"or.122", 0
  %"for_LDG.120" = inttoptr i64 %".1950" to ptr
  %".1951" = load float, ptr %"for_LDG.120"
  %".1952" = bitcast ptr %"R53" to ptr
  store float %".1951", ptr %".1952"
  ; LDG.E.SYS R60, [R16+0x4]
  %".1955" = load i32, ptr %"R16"
  %"zext.248" = zext i32 %".1955" to i64
  %".1956" = load i32, ptr %"R17"
  %"zext.249" = zext i32 %".1956" to i64
  %"shl.131" = shl i64 %"zext.249", 32
  %"or.123" = or i64 %"shl.131", %"zext.248"
  %".1957" = add i64 %"or.123", 4
  %"for_LDG.121" = inttoptr i64 %".1957" to ptr
  %".1958" = load float, ptr %"for_LDG.121"
  %".1959" = bitcast ptr %"R60" to ptr
  store float %".1958", ptr %".1959"
  ; LDG.E.SYS R49, [R14+0x4]
  %".1962" = load i32, ptr %"R14"
  %"zext.250" = zext i32 %".1962" to i64
  %".1963" = load i32, ptr %"R15"
  %"zext.251" = zext i32 %".1963" to i64
  %"shl.132" = shl i64 %"zext.251", 32
  %"or.124" = or i64 %"shl.132", %"zext.250"
  %".1964" = add i64 %"or.124", 4
  %"for_LDG.122" = inttoptr i64 %".1964" to ptr
  %".1965" = load float, ptr %"for_LDG.122"
  %".1966" = bitcast ptr %"R49" to ptr
  store float %".1965", ptr %".1966"
  ; LDG.E.SYS R58, [R16+0x8]
  %".1969" = load i32, ptr %"R16"
  %"zext.252" = zext i32 %".1969" to i64
  %".1970" = load i32, ptr %"R17"
  %"zext.253" = zext i32 %".1970" to i64
  %"shl.133" = shl i64 %"zext.253", 32
  %"or.125" = or i64 %"shl.133", %"zext.252"
  %".1971" = add i64 %"or.125", 8
  %"for_LDG.123" = inttoptr i64 %".1971" to ptr
  %".1972" = load float, ptr %"for_LDG.123"
  %".1973" = bitcast ptr %"R58" to ptr
  store float %".1972", ptr %".1973"
  ; LDG.E.SYS R19, [R14+0x8]
  %".1976" = load i32, ptr %"R14"
  %"zext.254" = zext i32 %".1976" to i64
  %".1977" = load i32, ptr %"R15"
  %"zext.255" = zext i32 %".1977" to i64
  %"shl.134" = shl i64 %"zext.255", 32
  %"or.126" = or i64 %"shl.134", %"zext.254"
  %".1978" = add i64 %"or.126", 8
  %"for_LDG.124" = inttoptr i64 %".1978" to ptr
  %".1979" = load float, ptr %"for_LDG.124"
  %".1980" = bitcast ptr %"R19" to ptr
  store float %".1979", ptr %".1980"
  ; LDG.E.SYS R57, [R16+0xc]
  %".1983" = load i32, ptr %"R16"
  %"zext.256" = zext i32 %".1983" to i64
  %".1984" = load i32, ptr %"R17"
  %"zext.257" = zext i32 %".1984" to i64
  %"shl.135" = shl i64 %"zext.257", 32
  %"or.127" = or i64 %"shl.135", %"zext.256"
  %".1985" = add i64 %"or.127", 12
  %"for_LDG.125" = inttoptr i64 %".1985" to ptr
  %".1986" = load float, ptr %"for_LDG.125"
  %".1987" = bitcast ptr %"R57" to ptr
  store float %".1986", ptr %".1987"
  ; LDG.E.SYS R59, [R14+0xc]
  %".1990" = load i32, ptr %"R14"
  %"zext.258" = zext i32 %".1990" to i64
  %".1991" = load i32, ptr %"R15"
  %"zext.259" = zext i32 %".1991" to i64
  %"shl.136" = shl i64 %"zext.259", 32
  %"or.128" = or i64 %"shl.136", %"zext.258"
  %".1992" = add i64 %"or.128", 12
  %"for_LDG.126" = inttoptr i64 %".1992" to ptr
  %".1993" = load float, ptr %"for_LDG.126"
  %".1994" = bitcast ptr %"R59" to ptr
  store float %".1993", ptr %".1994"
  ; IADD3 R23, R23, -0x10, RZ
  %".1997" = load i32, ptr %"R23"
  %"add.116" = add i32 %".1997", -16
  %"add.117" = add i32 %"add.116", 0
  store i32 %"add.117", ptr %"R23"
  ; IADD3 R22, R22, 0x10, RZ
  %".2000" = load i32, ptr %"R22"
  %"add.118" = add i32 %".2000", 16
  %"add.119" = add i32 %"add.118", 0
  store i32 %"add.119", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2003" = load i32, ptr %"R23"
  %".2004" = load i1, ptr %"PT"
  %"cmp.19" = icmp sgt i32 %".2003", 12
  %".2005" = and i1 %"cmp.19", %".2004"
  ; FMUL R24, R24, R9
  %".2007" = load float, ptr %"R24"
  %".2008" = load float, ptr %"R9"
  %"fmul.74" = fmul float %".2007", %".2008"
  %".2009" = bitcast ptr %"R24" to ptr
  store float %"fmul.74", ptr %".2009"
  ; FFMA R24, R24, R21, R8
  %".2012" = load float, ptr %"R24"
  %".2013" = load float, ptr %"R21"
  %".2014" = load float, ptr %"R8"
  %"fmul.75" = fmul float %".2012", %".2013"
  %"fadd.79" = fadd float %"fmul.75", %".2014"
  %".2015" = bitcast ptr %"R24" to ptr
  store float %"fadd.79", ptr %".2015"
  ; FMUL R36, R36, R9
  %".2018" = load float, ptr %"R36"
  %".2019" = load float, ptr %"R9"
  %"fmul.76" = fmul float %".2018", %".2019"
  %".2020" = bitcast ptr %"R36" to ptr
  store float %"fmul.76", ptr %".2020"
  ; FFMA R25, R36, R25, R24
  %".2023" = load float, ptr %"R36"
  %".2024" = load float, ptr %"R25"
  %".2025" = load float, ptr %"R24"
  %"fmul.77" = fmul float %".2023", %".2024"
  %"fadd.80" = fadd float %"fmul.77", %".2025"
  %".2026" = bitcast ptr %"R25" to ptr
  store float %"fadd.80", ptr %".2026"
  ; FMUL R46, R46, R9
  %".2029" = load float, ptr %"R46"
  %".2030" = load float, ptr %"R9"
  %"fmul.78" = fmul float %".2029", %".2030"
  %".2031" = bitcast ptr %"R46" to ptr
  store float %"fmul.78", ptr %".2031"
  ; FFMA R34, R46, R34, R25
  %".2034" = load float, ptr %"R46"
  %".2035" = load float, ptr %"R34"
  %".2036" = load float, ptr %"R25"
  %"fmul.79" = fmul float %".2034", %".2035"
  %"fadd.81" = fadd float %"fmul.79", %".2036"
  %".2037" = bitcast ptr %"R34" to ptr
  store float %"fadd.81", ptr %".2037"
  ; FMUL R44, R44, R9
  %".2040" = load float, ptr %"R44"
  %".2041" = load float, ptr %"R9"
  %"fmul.80" = fmul float %".2040", %".2041"
  %".2042" = bitcast ptr %"R44" to ptr
  store float %"fmul.80", ptr %".2042"
  ; FFMA R34, R44, R41, R34
  %".2045" = load float, ptr %"R44"
  %".2046" = load float, ptr %"R41"
  %".2047" = load float, ptr %"R34"
  %"fmul.81" = fmul float %".2045", %".2046"
  %"fadd.82" = fadd float %"fmul.81", %".2047"
  %".2048" = bitcast ptr %"R34" to ptr
  store float %"fadd.82", ptr %".2048"
  ; FMUL R42, R42, R9
  %".2051" = load float, ptr %"R42"
  %".2052" = load float, ptr %"R9"
  %"fmul.82" = fmul float %".2051", %".2052"
  %".2053" = bitcast ptr %"R42" to ptr
  store float %"fmul.82", ptr %".2053"
  ; FFMA R34, R42, R39, R34
  %".2056" = load float, ptr %"R42"
  %".2057" = load float, ptr %"R39"
  %".2058" = load float, ptr %"R34"
  %"fmul.83" = fmul float %".2056", %".2057"
  %"fadd.83" = fadd float %"fmul.83", %".2058"
  %".2059" = bitcast ptr %"R34" to ptr
  store float %"fadd.83", ptr %".2059"
  ; FMUL R40, R40, R9
  %".2062" = load float, ptr %"R40"
  %".2063" = load float, ptr %"R9"
  %"fmul.84" = fmul float %".2062", %".2063"
  %".2064" = bitcast ptr %"R40" to ptr
  store float %"fmul.84", ptr %".2064"
  ; FFMA R34, R40, R37, R34
  %".2067" = load float, ptr %"R40"
  %".2068" = load float, ptr %"R37"
  %".2069" = load float, ptr %"R34"
  %"fmul.85" = fmul float %".2067", %".2068"
  %"fadd.84" = fadd float %"fmul.85", %".2069"
  %".2070" = bitcast ptr %"R34" to ptr
  store float %"fadd.84", ptr %".2070"
  ; FMUL R38, R38, R9
  %".2073" = load float, ptr %"R38"
  %".2074" = load float, ptr %"R9"
  %"fmul.86" = fmul float %".2073", %".2074"
  %".2075" = bitcast ptr %"R38" to ptr
  store float %"fmul.86", ptr %".2075"
  ; FFMA R34, R38, R35, R34
  %".2078" = load float, ptr %"R38"
  %".2079" = load float, ptr %"R35"
  %".2080" = load float, ptr %"R34"
  %"fmul.87" = fmul float %".2078", %".2079"
  %"fadd.85" = fadd float %"fmul.87", %".2080"
  %".2081" = bitcast ptr %"R34" to ptr
  store float %"fadd.85", ptr %".2081"
  ; FMUL R48, R48, R9
  %".2084" = load float, ptr %"R48"
  %".2085" = load float, ptr %"R9"
  %"fmul.88" = fmul float %".2084", %".2085"
  %".2086" = bitcast ptr %"R48" to ptr
  store float %"fmul.88", ptr %".2086"
  ; FFMA R34, R48, R47, R34
  %".2089" = load float, ptr %"R48"
  %".2090" = load float, ptr %"R47"
  %".2091" = load float, ptr %"R34"
  %"fmul.89" = fmul float %".2089", %".2090"
  %"fadd.86" = fadd float %"fmul.89", %".2091"
  %".2092" = bitcast ptr %"R34" to ptr
  store float %"fadd.86", ptr %".2092"
  ; FMUL R54, R54, R9
  %".2095" = load float, ptr %"R54"
  %".2096" = load float, ptr %"R9"
  %"fmul.90" = fmul float %".2095", %".2096"
  %".2097" = bitcast ptr %"R54" to ptr
  store float %"fmul.90", ptr %".2097"
  ; FFMA R34, R54, R45, R34
  %".2100" = load float, ptr %"R54"
  %".2101" = load float, ptr %"R45"
  %".2102" = load float, ptr %"R34"
  %"fmul.91" = fmul float %".2100", %".2101"
  %"fadd.87" = fadd float %"fmul.91", %".2102"
  %".2103" = bitcast ptr %"R34" to ptr
  store float %"fadd.87", ptr %".2103"
  ; FMUL R52, R52, R9
  %".2106" = load float, ptr %"R52"
  %".2107" = load float, ptr %"R9"
  %"fmul.92" = fmul float %".2106", %".2107"
  %".2108" = bitcast ptr %"R52" to ptr
  store float %"fmul.92", ptr %".2108"
  ; FFMA R43, R52, R43, R34
  %".2111" = load float, ptr %"R52"
  %".2112" = load float, ptr %"R43"
  %".2113" = load float, ptr %"R34"
  %"fmul.93" = fmul float %".2111", %".2112"
  %"fadd.88" = fadd float %"fmul.93", %".2113"
  %".2114" = bitcast ptr %"R43" to ptr
  store float %"fadd.88", ptr %".2114"
  ; FMUL R50, R50, R9
  %".2117" = load float, ptr %"R50"
  %".2118" = load float, ptr %"R9"
  %"fmul.94" = fmul float %".2117", %".2118"
  %".2119" = bitcast ptr %"R50" to ptr
  store float %"fmul.94", ptr %".2119"
  ; FFMA R18, R50, R18, R43
  %".2122" = load float, ptr %"R50"
  %".2123" = load float, ptr %"R18"
  %".2124" = load float, ptr %"R43"
  %"fmul.95" = fmul float %".2122", %".2123"
  %"fadd.89" = fadd float %"fmul.95", %".2124"
  %".2125" = bitcast ptr %"R18" to ptr
  store float %"fadd.89", ptr %".2125"
  ; FMUL R56, R56, R9
  %".2128" = load float, ptr %"R56"
  %".2129" = load float, ptr %"R9"
  %"fmul.96" = fmul float %".2128", %".2129"
  %".2130" = bitcast ptr %"R56" to ptr
  store float %"fmul.96", ptr %".2130"
  ; FFMA R18, R56, R55, R18
  %".2133" = load float, ptr %"R56"
  %".2134" = load float, ptr %"R55"
  %".2135" = load float, ptr %"R18"
  %"fmul.97" = fmul float %".2133", %".2134"
  %"fadd.90" = fadd float %"fmul.97", %".2135"
  %".2136" = bitcast ptr %"R18" to ptr
  store float %"fadd.90", ptr %".2136"
  ; FMUL R51, R51, R9
  %".2139" = load float, ptr %"R51"
  %".2140" = load float, ptr %"R9"
  %"fmul.98" = fmul float %".2139", %".2140"
  %".2141" = bitcast ptr %"R51" to ptr
  store float %"fmul.98", ptr %".2141"
  ; FFMA R18, R51, R53, R18
  %".2144" = load float, ptr %"R51"
  %".2145" = load float, ptr %"R53"
  %".2146" = load float, ptr %"R18"
  %"fmul.99" = fmul float %".2144", %".2145"
  %"fadd.91" = fadd float %"fmul.99", %".2146"
  %".2147" = bitcast ptr %"R18" to ptr
  store float %"fadd.91", ptr %".2147"
  ; FMUL R60, R60, R9
  %".2150" = load float, ptr %"R60"
  %".2151" = load float, ptr %"R9"
  %"fmul.100" = fmul float %".2150", %".2151"
  %".2152" = bitcast ptr %"R60" to ptr
  store float %"fmul.100", ptr %".2152"
  ; FFMA R18, R60, R49, R18
  %".2155" = load float, ptr %"R60"
  %".2156" = load float, ptr %"R49"
  %".2157" = load float, ptr %"R18"
  %"fmul.101" = fmul float %".2155", %".2156"
  %"fadd.92" = fadd float %"fmul.101", %".2157"
  %".2158" = bitcast ptr %"R18" to ptr
  store float %"fadd.92", ptr %".2158"
  ; FMUL R58, R58, R9
  %".2161" = load float, ptr %"R58"
  %".2162" = load float, ptr %"R9"
  %"fmul.102" = fmul float %".2161", %".2162"
  %".2163" = bitcast ptr %"R58" to ptr
  store float %"fmul.102", ptr %".2163"
  ; FFMA R18, R58, R19, R18
  %".2166" = load float, ptr %"R58"
  %".2167" = load float, ptr %"R19"
  %".2168" = load float, ptr %"R18"
  %"fmul.103" = fmul float %".2166", %".2167"
  %"fadd.93" = fadd float %"fmul.103", %".2168"
  %".2169" = bitcast ptr %"R18" to ptr
  store float %"fadd.93", ptr %".2169"
  ; FMUL R57, R57, R9
  %".2172" = load float, ptr %"R57"
  %".2173" = load float, ptr %"R9"
  %"fmul.104" = fmul float %".2172", %".2173"
  %".2174" = bitcast ptr %"R57" to ptr
  store float %"fmul.104", ptr %".2174"
  ; FFMA R8, R57, R59, R18
  %".2177" = load float, ptr %"R57"
  %".2178" = load float, ptr %"R59"
  %".2179" = load float, ptr %"R18"
  %"fmul.105" = fmul float %".2177", %".2178"
  %"fadd.94" = fadd float %"fmul.105", %".2179"
  %".2180" = bitcast ptr %"R8" to ptr
  store float %"fadd.94", ptr %".2180"
  ; @P1 BRA `(.L_x_14)
  %".2183" = load i1, ptr %"P1"
  %".2184" = icmp ne i1 %".2183", 1
  br i1 %".2184", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".2187" = load i32, ptr %"R23"
  %".2188" = load i1, ptr %"PT"
  %"cmp.20" = icmp sgt i32 %".2187", 4
  %".2189" = and i1 %"cmp.20", %".2188"
  ; @!P1 BRA `(.L_x_15)
  %".2191" = load i1, ptr %"P1"
  %".2192" = icmp eq i1 %".2191", 1
  br i1 %".2192", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R16, R3, R22, RZ
  %".2197" = load i32, ptr %"R3"
  %".2198" = load i32, ptr %"R22"
  %"add.120" = add i32 %".2197", %".2198"
  %"add.121" = add i32 %"add.120", 0
  store i32 %"add.121", ptr %"R16"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".2201" = load i32, ptr %"R22"
  %".2202" = load i32, ptr %"R13"
  %"mul.44" = mul i32 %".2201", %".2202"
  %"add.122" = add i32 %"mul.44", %"Arg_3"
  store i32 %"add.122", ptr %"R14"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".2205" = load i32, ptr %"R16"
  %".2206" = load i32, ptr %"R13"
  %"mul.45" = mul i32 %".2205", %".2206"
  %"add.123" = add i32 %"mul.45", %"Arg_4"
  store i32 %"add.123", ptr %"R16"
  ; IADD3 R10, R22, 0x4, RZ
  %".2209" = load i32, ptr %"R22"
  %"add.124" = add i32 %".2209", 4
  %"add.125" = add i32 %"add.124", 0
  store i32 %"add.125", ptr %"R10"
  ; LDG.E.SYS R18, [R14]
  %".2212" = load i32, ptr %"R14"
  %"zext.260" = zext i32 %".2212" to i64
  %".2213" = load i32, ptr %"R15"
  %"zext.261" = zext i32 %".2213" to i64
  %"shl.137" = shl i64 %"zext.261", 32
  %"or.129" = or i64 %"shl.137", %"zext.260"
  %".2214" = add i64 %"or.129", 0
  %"for_LDG.127" = inttoptr i64 %".2214" to ptr
  %".2215" = load float, ptr %"for_LDG.127"
  %".2216" = bitcast ptr %"R18" to ptr
  store float %".2215", ptr %".2216"
  ; IADD3 R12, R3, R10, RZ
  %".2219" = load i32, ptr %"R3"
  %".2220" = load i32, ptr %"R10"
  %"add.126" = add i32 %".2219", %".2220"
  %"add.127" = add i32 %"add.126", 0
  store i32 %"add.127", ptr %"R12"
  ; LDG.E.SYS R19, [R16]
  %".2223" = load i32, ptr %"R16"
  %"zext.262" = zext i32 %".2223" to i64
  %".2224" = load i32, ptr %"R17"
  %"zext.263" = zext i32 %".2224" to i64
  %"shl.138" = shl i64 %"zext.263", 32
  %"or.130" = or i64 %"shl.138", %"zext.262"
  %".2225" = add i64 %"or.130", 0
  %"for_LDG.128" = inttoptr i64 %".2225" to ptr
  %".2226" = load float, ptr %"for_LDG.128"
  %".2227" = bitcast ptr %"R19" to ptr
  store float %".2226", ptr %".2227"
  ; LDG.E.SYS R24, [R14+0x4]
  %".2230" = load i32, ptr %"R14"
  %"zext.264" = zext i32 %".2230" to i64
  %".2231" = load i32, ptr %"R15"
  %"zext.265" = zext i32 %".2231" to i64
  %"shl.139" = shl i64 %"zext.265", 32
  %"or.131" = or i64 %"shl.139", %"zext.264"
  %".2232" = add i64 %"or.131", 4
  %"for_LDG.129" = inttoptr i64 %".2232" to ptr
  %".2233" = load float, ptr %"for_LDG.129"
  %".2234" = bitcast ptr %"R24" to ptr
  store float %".2233", ptr %".2234"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".2237" = load i32, ptr %"R10"
  %".2238" = load i32, ptr %"R13"
  %"mul.46" = mul i32 %".2237", %".2238"
  %"add.128" = add i32 %"mul.46", %"Arg_3"
  store i32 %"add.128", ptr %"R10"
  ; LDG.E.SYS R21, [R16+0x4]
  %".2241" = load i32, ptr %"R16"
  %"zext.266" = zext i32 %".2241" to i64
  %".2242" = load i32, ptr %"R17"
  %"zext.267" = zext i32 %".2242" to i64
  %"shl.140" = shl i64 %"zext.267", 32
  %"or.132" = or i64 %"shl.140", %"zext.266"
  %".2243" = add i64 %"or.132", 4
  %"for_LDG.130" = inttoptr i64 %".2243" to ptr
  %".2244" = load float, ptr %"for_LDG.130"
  %".2245" = bitcast ptr %"R21" to ptr
  store float %".2244", ptr %".2245"
  ; LDG.E.SYS R34, [R14+0x8]
  %".2248" = load i32, ptr %"R14"
  %"zext.268" = zext i32 %".2248" to i64
  %".2249" = load i32, ptr %"R15"
  %"zext.269" = zext i32 %".2249" to i64
  %"shl.141" = shl i64 %"zext.269", 32
  %"or.133" = or i64 %"shl.141", %"zext.268"
  %".2250" = add i64 %"or.133", 8
  %"for_LDG.131" = inttoptr i64 %".2250" to ptr
  %".2251" = load float, ptr %"for_LDG.131"
  %".2252" = bitcast ptr %"R34" to ptr
  store float %".2251", ptr %".2252"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2255" = load i32, ptr %"R12"
  %".2256" = load i32, ptr %"R13"
  %"mul.47" = mul i32 %".2255", %".2256"
  %"add.129" = add i32 %"mul.47", %"Arg_4"
  store i32 %"add.129", ptr %"R12"
  ; LDG.E.SYS R25, [R16+0x8]
  %".2259" = load i32, ptr %"R16"
  %"zext.270" = zext i32 %".2259" to i64
  %".2260" = load i32, ptr %"R17"
  %"zext.271" = zext i32 %".2260" to i64
  %"shl.142" = shl i64 %"zext.271", 32
  %"or.134" = or i64 %"shl.142", %"zext.270"
  %".2261" = add i64 %"or.134", 8
  %"for_LDG.132" = inttoptr i64 %".2261" to ptr
  %".2262" = load float, ptr %"for_LDG.132"
  %".2263" = bitcast ptr %"R25" to ptr
  store float %".2262", ptr %".2263"
  ; LDG.E.SYS R36, [R14+0xc]
  %".2266" = load i32, ptr %"R14"
  %"zext.272" = zext i32 %".2266" to i64
  %".2267" = load i32, ptr %"R15"
  %"zext.273" = zext i32 %".2267" to i64
  %"shl.143" = shl i64 %"zext.273", 32
  %"or.135" = or i64 %"shl.143", %"zext.272"
  %".2268" = add i64 %"or.135", 12
  %"for_LDG.133" = inttoptr i64 %".2268" to ptr
  %".2269" = load float, ptr %"for_LDG.133"
  %".2270" = bitcast ptr %"R36" to ptr
  store float %".2269", ptr %".2270"
  ; LDG.E.SYS R35, [R16+0xc]
  %".2273" = load i32, ptr %"R16"
  %"zext.274" = zext i32 %".2273" to i64
  %".2274" = load i32, ptr %"R17"
  %"zext.275" = zext i32 %".2274" to i64
  %"shl.144" = shl i64 %"zext.275", 32
  %"or.136" = or i64 %"shl.144", %"zext.274"
  %".2275" = add i64 %"or.136", 12
  %"for_LDG.134" = inttoptr i64 %".2275" to ptr
  %".2276" = load float, ptr %"for_LDG.134"
  %".2277" = bitcast ptr %"R35" to ptr
  store float %".2276", ptr %".2277"
  ; LDG.E.SYS R38, [R10]
  %".2280" = load i32, ptr %"R10"
  %"zext.276" = zext i32 %".2280" to i64
  %".2281" = load i32, ptr %"R11"
  %"zext.277" = zext i32 %".2281" to i64
  %"shl.145" = shl i64 %"zext.277", 32
  %"or.137" = or i64 %"shl.145", %"zext.276"
  %".2282" = add i64 %"or.137", 0
  %"for_LDG.135" = inttoptr i64 %".2282" to ptr
  %".2283" = load float, ptr %"for_LDG.135"
  %".2284" = bitcast ptr %"R38" to ptr
  store float %".2283", ptr %".2284"
  ; LDG.E.SYS R37, [R12]
  %".2287" = load i32, ptr %"R12"
  %"zext.278" = zext i32 %".2287" to i64
  %".2288" = load i32, ptr %"R13"
  %"zext.279" = zext i32 %".2288" to i64
  %"shl.146" = shl i64 %"zext.279", 32
  %"or.138" = or i64 %"shl.146", %"zext.278"
  %".2289" = add i64 %"or.138", 0
  %"for_LDG.136" = inttoptr i64 %".2289" to ptr
  %".2290" = load float, ptr %"for_LDG.136"
  %".2291" = bitcast ptr %"R37" to ptr
  store float %".2290", ptr %".2291"
  ; LDG.E.SYS R40, [R10+0x4]
  %".2294" = load i32, ptr %"R10"
  %"zext.280" = zext i32 %".2294" to i64
  %".2295" = load i32, ptr %"R11"
  %"zext.281" = zext i32 %".2295" to i64
  %"shl.147" = shl i64 %"zext.281", 32
  %"or.139" = or i64 %"shl.147", %"zext.280"
  %".2296" = add i64 %"or.139", 4
  %"for_LDG.137" = inttoptr i64 %".2296" to ptr
  %".2297" = load float, ptr %"for_LDG.137"
  %".2298" = bitcast ptr %"R40" to ptr
  store float %".2297", ptr %".2298"
  ; LDG.E.SYS R39, [R12+0x4]
  %".2301" = load i32, ptr %"R12"
  %"zext.282" = zext i32 %".2301" to i64
  %".2302" = load i32, ptr %"R13"
  %"zext.283" = zext i32 %".2302" to i64
  %"shl.148" = shl i64 %"zext.283", 32
  %"or.140" = or i64 %"shl.148", %"zext.282"
  %".2303" = add i64 %"or.140", 4
  %"for_LDG.138" = inttoptr i64 %".2303" to ptr
  %".2304" = load float, ptr %"for_LDG.138"
  %".2305" = bitcast ptr %"R39" to ptr
  store float %".2304", ptr %".2305"
  ; LDG.E.SYS R42, [R10+0x8]
  %".2308" = load i32, ptr %"R10"
  %"zext.284" = zext i32 %".2308" to i64
  %".2309" = load i32, ptr %"R11"
  %"zext.285" = zext i32 %".2309" to i64
  %"shl.149" = shl i64 %"zext.285", 32
  %"or.141" = or i64 %"shl.149", %"zext.284"
  %".2310" = add i64 %"or.141", 8
  %"for_LDG.139" = inttoptr i64 %".2310" to ptr
  %".2311" = load float, ptr %"for_LDG.139"
  %".2312" = bitcast ptr %"R42" to ptr
  store float %".2311", ptr %".2312"
  ; LDG.E.SYS R44, [R10+0xc]
  %".2315" = load i32, ptr %"R10"
  %"zext.286" = zext i32 %".2315" to i64
  %".2316" = load i32, ptr %"R11"
  %"zext.287" = zext i32 %".2316" to i64
  %"shl.150" = shl i64 %"zext.287", 32
  %"or.142" = or i64 %"shl.150", %"zext.286"
  %".2317" = add i64 %"or.142", 12
  %"for_LDG.140" = inttoptr i64 %".2317" to ptr
  %".2318" = load float, ptr %"for_LDG.140"
  %".2319" = bitcast ptr %"R44" to ptr
  store float %".2318", ptr %".2319"
  ; LDG.E.SYS R41, [R12+0x8]
  %".2322" = load i32, ptr %"R12"
  %"zext.288" = zext i32 %".2322" to i64
  %".2323" = load i32, ptr %"R13"
  %"zext.289" = zext i32 %".2323" to i64
  %"shl.151" = shl i64 %"zext.289", 32
  %"or.143" = or i64 %"shl.151", %"zext.288"
  %".2324" = add i64 %"or.143", 8
  %"for_LDG.141" = inttoptr i64 %".2324" to ptr
  %".2325" = load float, ptr %"for_LDG.141"
  %".2326" = bitcast ptr %"R41" to ptr
  store float %".2325", ptr %".2326"
  ; LDG.E.SYS R43, [R12+0xc]
  %".2329" = load i32, ptr %"R12"
  %"zext.290" = zext i32 %".2329" to i64
  %".2330" = load i32, ptr %"R13"
  %"zext.291" = zext i32 %".2330" to i64
  %"shl.152" = shl i64 %"zext.291", 32
  %"or.144" = or i64 %"shl.152", %"zext.290"
  %".2331" = add i64 %"or.144", 12
  %"for_LDG.142" = inttoptr i64 %".2331" to ptr
  %".2332" = load float, ptr %"for_LDG.142"
  %".2333" = bitcast ptr %"R43" to ptr
  store float %".2332", ptr %".2333"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2336" = xor i1 1, 1
  %".2337" = and i1 %".2336", 1
  %".2338" = and i1 %".2337", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".2340" = load i32, ptr %"R23"
  %"add.130" = add i32 %".2340", -8
  %"add.131" = add i32 %"add.130", 0
  store i32 %"add.131", ptr %"R23"
  ; IADD3 R22, R22, 0x8, RZ
  %".2343" = load i32, ptr %"R22"
  %"add.132" = add i32 %".2343", 8
  %"add.133" = add i32 %"add.132", 0
  store i32 %"add.133", ptr %"R22"
  ; FMUL R15, R18, R9
  %".2346" = load float, ptr %"R18"
  %".2347" = load float, ptr %"R9"
  %"fmul.106" = fmul float %".2346", %".2347"
  %".2348" = bitcast ptr %"R15" to ptr
  store float %"fmul.106", ptr %".2348"
  ; FFMA R15, R15, R19, R8
  %".2351" = load float, ptr %"R15"
  %".2352" = load float, ptr %"R19"
  %".2353" = load float, ptr %"R8"
  %"fmul.107" = fmul float %".2351", %".2352"
  %"fadd.95" = fadd float %"fmul.107", %".2353"
  %".2354" = bitcast ptr %"R15" to ptr
  store float %"fadd.95", ptr %".2354"
  ; FMUL R24, R24, R9
  %".2357" = load float, ptr %"R24"
  %".2358" = load float, ptr %"R9"
  %"fmul.108" = fmul float %".2357", %".2358"
  %".2359" = bitcast ptr %"R24" to ptr
  store float %"fmul.108", ptr %".2359"
  ; FFMA R15, R24, R21, R15
  %".2362" = load float, ptr %"R24"
  %".2363" = load float, ptr %"R21"
  %".2364" = load float, ptr %"R15"
  %"fmul.109" = fmul float %".2362", %".2363"
  %"fadd.96" = fadd float %"fmul.109", %".2364"
  %".2365" = bitcast ptr %"R15" to ptr
  store float %"fadd.96", ptr %".2365"
  ; FMUL R34, R34, R9
  %".2368" = load float, ptr %"R34"
  %".2369" = load float, ptr %"R9"
  %"fmul.110" = fmul float %".2368", %".2369"
  %".2370" = bitcast ptr %"R34" to ptr
  store float %"fmul.110", ptr %".2370"
  ; FFMA R15, R34, R25, R15
  %".2373" = load float, ptr %"R34"
  %".2374" = load float, ptr %"R25"
  %".2375" = load float, ptr %"R15"
  %"fmul.111" = fmul float %".2373", %".2374"
  %"fadd.97" = fadd float %"fmul.111", %".2375"
  %".2376" = bitcast ptr %"R15" to ptr
  store float %"fadd.97", ptr %".2376"
  ; FMUL R36, R36, R9
  %".2379" = load float, ptr %"R36"
  %".2380" = load float, ptr %"R9"
  %"fmul.112" = fmul float %".2379", %".2380"
  %".2381" = bitcast ptr %"R36" to ptr
  store float %"fmul.112", ptr %".2381"
  ; FFMA R15, R36, R35, R15
  %".2384" = load float, ptr %"R36"
  %".2385" = load float, ptr %"R35"
  %".2386" = load float, ptr %"R15"
  %"fmul.113" = fmul float %".2384", %".2385"
  %"fadd.98" = fadd float %"fmul.113", %".2386"
  %".2387" = bitcast ptr %"R15" to ptr
  store float %"fadd.98", ptr %".2387"
  ; FMUL R38, R38, R9
  %".2390" = load float, ptr %"R38"
  %".2391" = load float, ptr %"R9"
  %"fmul.114" = fmul float %".2390", %".2391"
  %".2392" = bitcast ptr %"R38" to ptr
  store float %"fmul.114", ptr %".2392"
  ; FFMA R15, R38, R37, R15
  %".2395" = load float, ptr %"R38"
  %".2396" = load float, ptr %"R37"
  %".2397" = load float, ptr %"R15"
  %"fmul.115" = fmul float %".2395", %".2396"
  %"fadd.99" = fadd float %"fmul.115", %".2397"
  %".2398" = bitcast ptr %"R15" to ptr
  store float %"fadd.99", ptr %".2398"
  ; FMUL R40, R40, R9
  %".2401" = load float, ptr %"R40"
  %".2402" = load float, ptr %"R9"
  %"fmul.116" = fmul float %".2401", %".2402"
  %".2403" = bitcast ptr %"R40" to ptr
  store float %"fmul.116", ptr %".2403"
  ; FFMA R15, R40, R39, R15
  %".2406" = load float, ptr %"R40"
  %".2407" = load float, ptr %"R39"
  %".2408" = load float, ptr %"R15"
  %"fmul.117" = fmul float %".2406", %".2407"
  %"fadd.100" = fadd float %"fmul.117", %".2408"
  %".2409" = bitcast ptr %"R15" to ptr
  store float %"fadd.100", ptr %".2409"
  ; FMUL R42, R42, R9.reuse
  %".2412" = load float, ptr %"R42"
  %".2413" = load float, ptr %"R9"
  %"fmul.118" = fmul float %".2412", %".2413"
  %".2414" = bitcast ptr %"R42" to ptr
  store float %"fmul.118", ptr %".2414"
  ; FMUL R44, R44, R9
  %".2417" = load float, ptr %"R44"
  %".2418" = load float, ptr %"R9"
  %"fmul.119" = fmul float %".2417", %".2418"
  %".2419" = bitcast ptr %"R44" to ptr
  store float %"fmul.119", ptr %".2419"
  ; FFMA R15, R42, R41, R15
  %".2422" = load float, ptr %"R42"
  %".2423" = load float, ptr %"R41"
  %".2424" = load float, ptr %"R15"
  %"fmul.120" = fmul float %".2422", %".2423"
  %"fadd.101" = fadd float %"fmul.120", %".2424"
  %".2425" = bitcast ptr %"R15" to ptr
  store float %"fadd.101", ptr %".2425"
  ; FFMA R8, R44, R43, R15
  %".2428" = load float, ptr %"R44"
  %".2429" = load float, ptr %"R43"
  %".2430" = load float, ptr %"R15"
  %"fmul.121" = fmul float %".2428", %".2429"
  %"fadd.102" = fadd float %"fmul.121", %".2430"
  %".2431" = bitcast ptr %"R8" to ptr
  store float %"fadd.102", ptr %".2431"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".2434" = load i32, ptr %"R23"
  %".2435" = load i1, ptr %"PT"
  %"cmp.21" = icmp ne i32 %".2434", 0
  %".2436" = or i1 %"cmp.21", %".2435"
  ; @!P0 BRA `(.L_x_11)
  %".2438" = load i1, ptr %"P0"
  %".2439" = icmp eq i1 %".2438", 1
  br i1 %".2439", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R12, R3, R22, RZ
  %".2444" = load i32, ptr %"R3"
  %".2445" = load i32, ptr %"R22"
  %"add.134" = add i32 %".2444", %".2445"
  %"add.135" = add i32 %"add.134", 0
  store i32 %"add.135", ptr %"R12"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".2448" = load i32, ptr %"R22"
  %".2449" = load i32, ptr %"R13"
  %"mul.48" = mul i32 %".2448", %".2449"
  %"add.136" = add i32 %"mul.48", %"Arg_3"
  store i32 %"add.136", ptr %"R10"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2452" = load i32, ptr %"R12"
  %".2453" = load i32, ptr %"R13"
  %"mul.49" = mul i32 %".2452", %".2453"
  %"add.137" = add i32 %"mul.49", %"Arg_4"
  store i32 %"add.137", ptr %"R12"
  ; LDG.E.SYS R14, [R10]
  %".2456" = load i32, ptr %"R10"
  %"zext.292" = zext i32 %".2456" to i64
  %".2457" = load i32, ptr %"R11"
  %"zext.293" = zext i32 %".2457" to i64
  %"shl.153" = shl i64 %"zext.293", 32
  %"or.145" = or i64 %"shl.153", %"zext.292"
  %".2458" = add i64 %"or.145", 0
  %"for_LDG.143" = inttoptr i64 %".2458" to ptr
  %".2459" = load float, ptr %"for_LDG.143"
  %".2460" = bitcast ptr %"R14" to ptr
  store float %".2459", ptr %".2460"
  ; LDG.E.SYS R16, [R12]
  %".2463" = load i32, ptr %"R12"
  %"zext.294" = zext i32 %".2463" to i64
  %".2464" = load i32, ptr %"R13"
  %"zext.295" = zext i32 %".2464" to i64
  %"shl.154" = shl i64 %"zext.295", 32
  %"or.146" = or i64 %"shl.154", %"zext.294"
  %".2465" = add i64 %"or.146", 0
  %"for_LDG.144" = inttoptr i64 %".2465" to ptr
  %".2466" = load float, ptr %"for_LDG.144"
  %".2467" = bitcast ptr %"R16" to ptr
  store float %".2466", ptr %".2467"
  ; LDG.E.SYS R18, [R10+0x4]
  %".2470" = load i32, ptr %"R10"
  %"zext.296" = zext i32 %".2470" to i64
  %".2471" = load i32, ptr %"R11"
  %"zext.297" = zext i32 %".2471" to i64
  %"shl.155" = shl i64 %"zext.297", 32
  %"or.147" = or i64 %"shl.155", %"zext.296"
  %".2472" = add i64 %"or.147", 4
  %"for_LDG.145" = inttoptr i64 %".2472" to ptr
  %".2473" = load float, ptr %"for_LDG.145"
  %".2474" = bitcast ptr %"R18" to ptr
  store float %".2473", ptr %".2474"
  ; LDG.E.SYS R17, [R12+0x4]
  %".2477" = load i32, ptr %"R12"
  %"zext.298" = zext i32 %".2477" to i64
  %".2478" = load i32, ptr %"R13"
  %"zext.299" = zext i32 %".2478" to i64
  %"shl.156" = shl i64 %"zext.299", 32
  %"or.148" = or i64 %"shl.156", %"zext.298"
  %".2479" = add i64 %"or.148", 4
  %"for_LDG.146" = inttoptr i64 %".2479" to ptr
  %".2480" = load float, ptr %"for_LDG.146"
  %".2481" = bitcast ptr %"R17" to ptr
  store float %".2480", ptr %".2481"
  ; LDG.E.SYS R24, [R10+0x8]
  %".2484" = load i32, ptr %"R10"
  %"zext.300" = zext i32 %".2484" to i64
  %".2485" = load i32, ptr %"R11"
  %"zext.301" = zext i32 %".2485" to i64
  %"shl.157" = shl i64 %"zext.301", 32
  %"or.149" = or i64 %"shl.157", %"zext.300"
  %".2486" = add i64 %"or.149", 8
  %"for_LDG.147" = inttoptr i64 %".2486" to ptr
  %".2487" = load float, ptr %"for_LDG.147"
  %".2488" = bitcast ptr %"R24" to ptr
  store float %".2487", ptr %".2488"
  ; LDG.E.SYS R19, [R12+0x8]
  %".2491" = load i32, ptr %"R12"
  %"zext.302" = zext i32 %".2491" to i64
  %".2492" = load i32, ptr %"R13"
  %"zext.303" = zext i32 %".2492" to i64
  %"shl.158" = shl i64 %"zext.303", 32
  %"or.150" = or i64 %"shl.158", %"zext.302"
  %".2493" = add i64 %"or.150", 8
  %"for_LDG.148" = inttoptr i64 %".2493" to ptr
  %".2494" = load float, ptr %"for_LDG.148"
  %".2495" = bitcast ptr %"R19" to ptr
  store float %".2494", ptr %".2495"
  ; LDG.E.SYS R34, [R10+0xc]
  %".2498" = load i32, ptr %"R10"
  %"zext.304" = zext i32 %".2498" to i64
  %".2499" = load i32, ptr %"R11"
  %"zext.305" = zext i32 %".2499" to i64
  %"shl.159" = shl i64 %"zext.305", 32
  %"or.151" = or i64 %"shl.159", %"zext.304"
  %".2500" = add i64 %"or.151", 12
  %"for_LDG.149" = inttoptr i64 %".2500" to ptr
  %".2501" = load float, ptr %"for_LDG.149"
  %".2502" = bitcast ptr %"R34" to ptr
  store float %".2501", ptr %".2502"
  ; LDG.E.SYS R21, [R12+0xc]
  %".2505" = load i32, ptr %"R12"
  %"zext.306" = zext i32 %".2505" to i64
  %".2506" = load i32, ptr %"R13"
  %"zext.307" = zext i32 %".2506" to i64
  %"shl.160" = shl i64 %"zext.307", 32
  %"or.152" = or i64 %"shl.160", %"zext.306"
  %".2507" = add i64 %"or.152", 12
  %"for_LDG.150" = inttoptr i64 %".2507" to ptr
  %".2508" = load float, ptr %"for_LDG.150"
  %".2509" = bitcast ptr %"R21" to ptr
  store float %".2508", ptr %".2509"
  ; IADD3 R23, R23, -0x4, RZ
  %".2512" = load i32, ptr %"R23"
  %"add.138" = add i32 %".2512", -4
  %"add.139" = add i32 %"add.138", 0
  store i32 %"add.139", ptr %"R23"
  ; IADD3 R22, R22, 0x4, RZ
  %".2515" = load i32, ptr %"R22"
  %"add.140" = add i32 %".2515", 4
  %"add.141" = add i32 %"add.140", 0
  store i32 %"add.141", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".2518" = load i32, ptr %"R23"
  %".2519" = load i1, ptr %"PT"
  %"cmp.22" = icmp ne i32 %".2518", 0
  %".2520" = and i1 %"cmp.22", %".2519"
  ; FMUL R15, R14, R9
  %".2522" = load float, ptr %"R14"
  %".2523" = load float, ptr %"R9"
  %"fmul.122" = fmul float %".2522", %".2523"
  %".2524" = bitcast ptr %"R15" to ptr
  store float %"fmul.122", ptr %".2524"
  ; FFMA R15, R15, R16, R8
  %".2527" = load float, ptr %"R15"
  %".2528" = load float, ptr %"R16"
  %".2529" = load float, ptr %"R8"
  %"fmul.123" = fmul float %".2527", %".2528"
  %"fadd.103" = fadd float %"fmul.123", %".2529"
  %".2530" = bitcast ptr %"R15" to ptr
  store float %"fadd.103", ptr %".2530"
  ; FMUL R18, R18, R9
  %".2533" = load float, ptr %"R18"
  %".2534" = load float, ptr %"R9"
  %"fmul.124" = fmul float %".2533", %".2534"
  %".2535" = bitcast ptr %"R18" to ptr
  store float %"fmul.124", ptr %".2535"
  ; FFMA R15, R18, R17, R15
  %".2538" = load float, ptr %"R18"
  %".2539" = load float, ptr %"R17"
  %".2540" = load float, ptr %"R15"
  %"fmul.125" = fmul float %".2538", %".2539"
  %"fadd.104" = fadd float %"fmul.125", %".2540"
  %".2541" = bitcast ptr %"R15" to ptr
  store float %"fadd.104", ptr %".2541"
  ; FMUL R24, R24, R9
  %".2544" = load float, ptr %"R24"
  %".2545" = load float, ptr %"R9"
  %"fmul.126" = fmul float %".2544", %".2545"
  %".2546" = bitcast ptr %"R24" to ptr
  store float %"fmul.126", ptr %".2546"
  ; FFMA R15, R24, R19, R15
  %".2549" = load float, ptr %"R24"
  %".2550" = load float, ptr %"R19"
  %".2551" = load float, ptr %"R15"
  %"fmul.127" = fmul float %".2549", %".2550"
  %"fadd.105" = fadd float %"fmul.127", %".2551"
  %".2552" = bitcast ptr %"R15" to ptr
  store float %"fadd.105", ptr %".2552"
  ; FMUL R34, R34, R9
  %".2555" = load float, ptr %"R34"
  %".2556" = load float, ptr %"R9"
  %"fmul.128" = fmul float %".2555", %".2556"
  %".2557" = bitcast ptr %"R34" to ptr
  store float %"fmul.128", ptr %".2557"
  ; FFMA R8, R34, R21, R15
  %".2560" = load float, ptr %"R34"
  %".2561" = load float, ptr %"R21"
  %".2562" = load float, ptr %"R15"
  %"fmul.129" = fmul float %".2560", %".2561"
  %"fadd.106" = fadd float %"fmul.129", %".2562"
  %".2563" = bitcast ptr %"R8" to ptr
  store float %"fadd.106", ptr %".2563"
  ; @P0 BRA `(.L_x_12)
  %".2566" = load i1, ptr %"P0"
  %".2567" = icmp ne i1 %".2566", 1
  br i1 %".2567", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".2570" = load i32, ptr %"R4"
  %".2571" = load i1, ptr %"PT"
  %"cmp.23" = icmp ne i32 %".2570", 0
  %".2572" = and i1 %"cmp.23", %".2571"
  ; @!P0 BRA `(.L_x_10)
  %".2574" = load i1, ptr %"P0"
  %".2575" = icmp eq i1 %".2574", 1
  br i1 %".2575", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R10, R3, R22, RZ
  %".2580" = load i32, ptr %"R3"
  %".2581" = load i32, ptr %"R22"
  %"add.142" = add i32 %".2580", %".2581"
  %"add.143" = add i32 %"add.142", 0
  store i32 %"add.143", ptr %"R10"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".2584" = load i32, ptr %"R22"
  %".2585" = load i32, ptr %"R11"
  %"mul.50" = mul i32 %".2584", %".2585"
  %"add.144" = add i32 %"mul.50", %"Arg_3"
  store i32 %"add.144", ptr %"R22"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".2588" = load i32, ptr %"R10"
  %".2589" = load i32, ptr %"R11"
  %"mul.51" = mul i32 %".2588", %".2589"
  %"add.145" = add i32 %"mul.51", %"Arg_4"
  store i32 %"add.145", ptr %"R10"
  ; LDG.E.SYS R12, [R22]
  %".2592" = load i32, ptr %"R22"
  %"zext.308" = zext i32 %".2592" to i64
  %".2593" = load i32, ptr %"R23"
  %"zext.309" = zext i32 %".2593" to i64
  %"shl.161" = shl i64 %"zext.309", 32
  %"or.153" = or i64 %"shl.161", %"zext.308"
  %".2594" = add i64 %"or.153", 0
  %"for_LDG.151" = inttoptr i64 %".2594" to ptr
  %".2595" = load float, ptr %"for_LDG.151"
  %".2596" = bitcast ptr %"R12" to ptr
  store float %".2595", ptr %".2596"
  ; LDG.E.SYS R14, [R10]
  %".2599" = load i32, ptr %"R10"
  %"zext.310" = zext i32 %".2599" to i64
  %".2600" = load i32, ptr %"R11"
  %"zext.311" = zext i32 %".2600" to i64
  %"shl.162" = shl i64 %"zext.311", 32
  %"or.154" = or i64 %"shl.162", %"zext.310"
  %".2601" = add i64 %"or.154", 0
  %"for_LDG.152" = inttoptr i64 %".2601" to ptr
  %".2602" = load float, ptr %"for_LDG.152"
  %".2603" = bitcast ptr %"R14" to ptr
  store float %".2602", ptr %".2603"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".2606" = load i32, ptr %"R4"
  %".2607" = load i1, ptr %"PT"
  %"cmp.24" = icmp ne i32 %".2606", 1
  %".2608" = and i1 %"cmp.24", %".2607"
  ; FMUL R13, R12, R9
  %".2610" = load float, ptr %"R12"
  %".2611" = load float, ptr %"R9"
  %"fmul.130" = fmul float %".2610", %".2611"
  %".2612" = bitcast ptr %"R13" to ptr
  store float %"fmul.130", ptr %".2612"
  ; FFMA R8, R13, R14, R8
  %".2615" = load float, ptr %"R13"
  %".2616" = load float, ptr %"R14"
  %".2617" = load float, ptr %"R8"
  %"fmul.131" = fmul float %".2615", %".2616"
  %"fadd.107" = fadd float %"fmul.131", %".2617"
  %".2618" = bitcast ptr %"R8" to ptr
  store float %"fadd.107", ptr %".2618"
  ; @!P0 BRA `(.L_x_10)
  %".2621" = load i1, ptr %"P0"
  %".2622" = icmp eq i1 %".2621", 1
  br i1 %".2622", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".2625" = load i32, ptr %"R4"
  %".2626" = load i1, ptr %"PT"
  %"cmp.25" = icmp ne i32 %".2625", 2
  %".2627" = and i1 %"cmp.25", %".2626"
  ; LDG.E.SYS R12, [R22+0x4]
  %".2629" = load i32, ptr %"R22"
  %"zext.312" = zext i32 %".2629" to i64
  %".2630" = load i32, ptr %"R23"
  %"zext.313" = zext i32 %".2630" to i64
  %"shl.163" = shl i64 %"zext.313", 32
  %"or.155" = or i64 %"shl.163", %"zext.312"
  %".2631" = add i64 %"or.155", 4
  %"for_LDG.153" = inttoptr i64 %".2631" to ptr
  %".2632" = load float, ptr %"for_LDG.153"
  %".2633" = bitcast ptr %"R12" to ptr
  store float %".2632", ptr %".2633"
  ; LDG.E.SYS R14, [R10+0x4]
  %".2636" = load i32, ptr %"R10"
  %"zext.314" = zext i32 %".2636" to i64
  %".2637" = load i32, ptr %"R11"
  %"zext.315" = zext i32 %".2637" to i64
  %"shl.164" = shl i64 %"zext.315", 32
  %"or.156" = or i64 %"shl.164", %"zext.314"
  %".2638" = add i64 %"or.156", 4
  %"for_LDG.154" = inttoptr i64 %".2638" to ptr
  %".2639" = load float, ptr %"for_LDG.154"
  %".2640" = bitcast ptr %"R14" to ptr
  store float %".2639", ptr %".2640"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".2643" = load i1, ptr %"P0"
  %".2644" = icmp ne i1 %".2643", 1
  br i1 %".2644", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  %".2647" = load i32, ptr %"R22"
  %"zext.316" = zext i32 %".2647" to i64
  %".2648" = load i32, ptr %"R23"
  %"zext.317" = zext i32 %".2648" to i64
  %"shl.165" = shl i64 %"zext.317", 32
  %"or.157" = or i64 %"shl.165", %"zext.316"
  %".2649" = add i64 %"or.157", 8
  %"for_LDG.155" = inttoptr i64 %".2649" to ptr
  %".2650" = load float, ptr %"for_LDG.155"
  %".2651" = bitcast ptr %"R16" to ptr
  store float %".2650", ptr %".2651"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".2656" = load i1, ptr %"P0"
  %".2657" = icmp ne i1 %".2656", 1
  br i1 %".2657", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  %".2660" = load i32, ptr %"R10"
  %"zext.318" = zext i32 %".2660" to i64
  %".2661" = load i32, ptr %"R11"
  %"zext.319" = zext i32 %".2661" to i64
  %"shl.166" = shl i64 %"zext.319", 32
  %"or.158" = or i64 %"shl.166", %"zext.318"
  %".2662" = add i64 %"or.158", 8
  %"for_LDG.156" = inttoptr i64 %".2662" to ptr
  %".2663" = load float, ptr %"for_LDG.156"
  %".2664" = bitcast ptr %"R15" to ptr
  store float %".2663", ptr %".2664"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %".2669" = load float, ptr %"R12"
  %".2670" = load float, ptr %"R9"
  %"fmul.132" = fmul float %".2669", %".2670"
  %".2671" = bitcast ptr %"R13" to ptr
  store float %"fmul.132", ptr %".2671"
  ; FFMA R8, R13, R14, R8
  %".2674" = load float, ptr %"R13"
  %".2675" = load float, ptr %"R14"
  %".2676" = load float, ptr %"R8"
  %"fmul.133" = fmul float %".2674", %".2675"
  %"fadd.108" = fadd float %"fmul.133", %".2676"
  %".2677" = bitcast ptr %"R8" to ptr
  store float %"fadd.108", ptr %".2677"
  ; @P0 FMUL R9, R16, R9
  %".2680" = load i1, ptr %"P0"
  %".2681" = icmp ne i1 %".2680", 1
  br i1 %".2681", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %".2684" = load float, ptr %"R16"
  %".2685" = load float, ptr %"R9"
  %"fmul.134" = fmul float %".2684", %".2685"
  %".2686" = bitcast ptr %"R9" to ptr
  store float %"fmul.134", ptr %".2686"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".2691" = load i1, ptr %"P0"
  %".2692" = icmp ne i1 %".2691", 1
  br i1 %".2692", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %".2695" = load float, ptr %"R9"
  %".2696" = load float, ptr %"R15"
  %".2697" = load float, ptr %"R8"
  %"fmul.135" = fmul float %".2695", %".2696"
  %"fadd.109" = fadd float %"fmul.135", %".2697"
  %".2698" = bitcast ptr %"R8" to ptr
  store float %"fadd.109", ptr %".2698"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  %".2703" = load i32, ptr %"R30"
  %"zext.320" = zext i32 %".2703" to i64
  %"zext.321" = zext i32 0 to i64
  %"shl.167" = shl i64 %"zext.321", 32
  %"or.159" = or i64 %"shl.167", %"zext.320"
  %".2704" = add i64 %"or.159", 0
  %"for_LDG.157" = inttoptr i64 %".2704" to ptr
  %".2705" = load float, ptr %"for_LDG.157"
  %".2706" = bitcast ptr %"R9" to ptr
  store float %".2705", ptr %".2706"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %".2711" = load float, ptr %"R9"
  %".2712" = load float, ptr %"R8"
  %"fadd.110" = fadd float %".2711", %".2712"
  %".2713" = bitcast ptr %"R12" to ptr
  store float %"fadd.110", ptr %".2713"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %".2716" = load float, ptr %"R12"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".2716")
  %".2717" = load i1, ptr %"PT"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".2718" = and i1 %"fcmp_unordered", %".2717"
  ; @!P0 BRA `(.L_x_17)
  %".2720" = load i1, ptr %"P0"
  %".2721" = icmp eq i1 %".2720", 1
  br i1 %".2721", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %".2724" = load float, ptr %"R12"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".2724")
  %"fmul.136" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  %".2725" = bitcast ptr %"R8" to ptr
  store float %"fmul.136", ptr %".2725"
  ; MOV R9, 0x3f800000
  %".2728" = bitcast ptr %"R9" to ptr
  store float 0x41cfc00000000000, ptr %".2728"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %".2731" = load float, ptr %"R12"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".2731")
  %".2732" = load i1, ptr %"PT"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".2733" = and i1 %"fcmp_unordered.1", %".2732"
  ; MUFU.EX2 R8, R8
  %".2735" = load float, ptr %"R8"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".2735")
  %".2736" = bitcast ptr %"R8" to ptr
  store float %"llvm_exp2_f32_result.2", ptr %".2736"
  ; FADD R10, R8, 1
  %".2739" = load float, ptr %"R8"
  %"fadd.111" = fadd float %".2739", 0x3ff0000000000000
  %".2740" = bitcast ptr %"R10" to ptr
  store float %"fadd.111", ptr %".2740"
  ; MUFU.RCP R10, R10
  %".2743" = load float, ptr %"R10"
  %".2744" = fdiv float 0x3ff0000000000000, %".2743"
  %".2745" = bitcast ptr %"R10" to ptr
  store float %".2744", ptr %".2745"
  ; FFMA R9, R10, -2, R9
  %".2748" = load float, ptr %"R10"
  %".2749" = load float, ptr %"R9"
  %"fmul.137" = fmul float %".2748", 0xc000000000000000
  %"fadd.112" = fadd float %"fmul.137", %".2749"
  %".2750" = bitcast ptr %"R9" to ptr
  store float %"fadd.112", ptr %".2750"
  ; FSEL R9, R9, 1, !P0
  %".2753" = load float, ptr %"R9"
  %".2754" = load i1, ptr %"P0"
  %".2755" = icmp eq i1 %".2754", 1
  %"fsel" = select  i1 %".2755", float %".2753", float 0x3ff0000000000000
  %".2756" = bitcast ptr %"R9" to ptr
  store float %"fsel", ptr %".2756"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".2759" = load float, ptr %"R9"
  %".2760" = load float, ptr %"R12"
  %".2761" = or float %".2759", 0x41e0000000000000
  %".2762" = or float %".2759", %".2760"
  %".2763" = and float %".2761", %".2762"
  %".2764" = bitcast ptr %"R9" to ptr
  store float %".2763", ptr %".2764"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  %".2769" = bitcast ptr %"R9" to ptr
  store float 0x41ce407840000000, ptr %".2769"
  ; FMUL R8, R12, R12
  %".2772" = load float, ptr %"R12"
  %".2773" = load float, ptr %"R12"
  %"fmul.138" = fmul float %".2772", %".2773"
  %".2774" = bitcast ptr %"R8" to ptr
  store float %"fmul.138", ptr %".2774"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".2777" = load float, ptr %"R8"
  %".2778" = load float, ptr %"R9"
  %"fmul.139" = fmul float %".2777", %".2778"
  %"fadd.113" = fadd float %"fmul.139", 0xbfaac795c0000000
  %".2779" = bitcast ptr %"R9" to ptr
  store float %"fadd.113", ptr %".2779"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".2782" = load float, ptr %"R8"
  %".2783" = load float, ptr %"R9"
  %"fmul.140" = fmul float %".2782", %".2783"
  %"fadd.114" = fadd float %"fmul.140", 0x3fc10b2820000000
  %".2784" = bitcast ptr %"R9" to ptr
  store float %"fadd.114", ptr %".2784"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".2787" = load float, ptr %"R8"
  %".2788" = load float, ptr %"R9"
  %"fmul.141" = fmul float %".2787", %".2788"
  %"fadd.115" = fadd float %"fmul.141", 0xbfd5553da0000000
  %".2789" = bitcast ptr %"R9" to ptr
  store float %"fadd.115", ptr %".2789"
  ; FFMA R9, R8, R9, RZ
  %".2792" = load float, ptr %"R8"
  %".2793" = load float, ptr %"R9"
  %"fmul.142" = fmul float %".2792", %".2793"
  %"fadd.116" = fadd float %"fmul.142",              0x0
  %".2794" = bitcast ptr %"R9" to ptr
  store float %"fadd.116", ptr %".2794"
  ; FFMA R9, R12, R9, R12
  %".2797" = load float, ptr %"R12"
  %".2798" = load float, ptr %"R9"
  %".2799" = load float, ptr %"R12"
  %"fmul.143" = fmul float %".2797", %".2798"
  %"fadd.117" = fadd float %"fmul.143", %".2799"
  %".2800" = bitcast ptr %"R9" to ptr
  store float %"fadd.117", ptr %".2800"
.L_x_18:
  ; BSYNC B0
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  %".2804" = load i32, ptr %"R20"
  %"add.146" = add i32 %".2804", 25165824
  %"add.147" = add i32 %"add.146", 0
  store i32 %"add.147", ptr %"R8"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".2809" = load i32, ptr %"R8"
  %".2810" = and i32 %".2809", 2139095040
  store i32 %".2810", ptr %"R8"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".2813" = load i32, ptr %"R8"
  %".2814" = load i1, ptr %"PT"
  %"cmp.26" = icmp sgt i32 %".2813", 33554431
  %".2815" = and i1 %"cmp.26", %".2814"
  ; @P0 BRA `(.L_x_20)
  %".2817" = load i1, ptr %"P0"
  %".2818" = icmp ne i1 %".2817", 1
  br i1 %".2818", label %".L_x_20", label %".L_x_16_split_0x2170"
.L_x_16_split_0x2170:
  ; MOV R24, R20
  %".2821" = load float, ptr %"R20"
  %".2822" = bitcast ptr %"R24" to ptr
  store float %".2821", ptr %".2822"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.1" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R8, R22
  %".2828" = load i32, ptr %"R22"
  store i32 %".2828", ptr %"R8"
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".2833" = load float, ptr %"R20"
  %".2834" = fdiv float 0x3ff0000000000000, %".2833"
  %".2835" = bitcast ptr %"R11" to ptr
  store float %".2834", ptr %".2835"
  ; FFMA R8, R20, R11, -1
  %".2838" = load float, ptr %"R20"
  %".2839" = load float, ptr %"R11"
  %"fmul.144" = fmul float %".2838", %".2839"
  %"fadd.118" = fadd float %"fmul.144", 0xbff0000000000000
  %".2840" = bitcast ptr %"R8" to ptr
  store float %"fadd.118", ptr %".2840"
  ; FADD.FTZ R8, -R8, -RZ
  %".2843" = load float, ptr %"R8"
  %".2844" = sub float              0x0, %".2843"
  %"fadd.119" = fadd float %".2844",              0x0
  %".2845" = bitcast ptr %"R8" to ptr
  store float %"fadd.119", ptr %".2845"
  ; FFMA R8, R11, R8, R11
  %".2848" = load float, ptr %"R11"
  %".2849" = load float, ptr %"R8"
  %".2850" = load float, ptr %"R11"
  %"fmul.145" = fmul float %".2848", %".2849"
  %"fadd.120" = fadd float %"fmul.145", %".2850"
  %".2851" = bitcast ptr %"R8" to ptr
  store float %"fadd.120", ptr %".2851"
.L_x_21:
  ; BSYNC B0
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  %".2855" = load i32, ptr %"R28"
  %"zext.322" = zext i32 %".2855" to i64
  %"zext.323" = zext i32 0 to i64
  %"shl.168" = shl i64 %"zext.323", 32
  %"or.160" = or i64 %"shl.168", %"zext.322"
  %".2856" = add i64 %"or.160", 0
  %"for_LDG.158" = inttoptr i64 %".2856" to ptr
  %".2857" = load float, ptr %"for_LDG.158"
  %".2858" = bitcast ptr %"R11" to ptr
  store float %".2857", ptr %".2858"
  ; FADD R10, -R8, 1
  %".2861" = load float, ptr %"R8"
  %".2862" = sub float              0x0, %".2861"
  %"fadd.121" = fadd float %".2862", 0x3ff0000000000000
  %".2863" = bitcast ptr %"R10" to ptr
  store float %"fadd.121", ptr %".2863"
  ; FMUL R11, R11, R8
  %".2866" = load float, ptr %"R11"
  %".2867" = load float, ptr %"R8"
  %"fmul.146" = fmul float %".2866", %".2867"
  %".2868" = bitcast ptr %"R11" to ptr
  store float %"fmul.146", ptr %".2868"
  ; FFMA R9, R10, R9, R11
  %".2871" = load float, ptr %"R10"
  %".2872" = load float, ptr %"R9"
  %".2873" = load float, ptr %"R11"
  %"fmul.147" = fmul float %".2871", %".2872"
  %"fadd.122" = fadd float %"fmul.147", %".2873"
  %".2874" = bitcast ptr %"R9" to ptr
  store float %"fadd.122", ptr %".2874"
  ; STG.E.SYS [R28], R9
  %".2877" = load float, ptr %"R9"
  %".2878" = load i32, ptr %"R28"
  %"zext.324" = zext i32 %".2878" to i64
  %"zext.325" = zext i32 0 to i64
  %"shl.169" = shl i64 %"zext.325", 32
  %"or.161" = or i64 %"shl.169", %"zext.324"
  %".2879" = add i64 %"or.161", 0
  %"for_STG" = inttoptr i64 %".2879" to ptr
  store float %".2877", ptr %"for_STG"
  ; @!P3 BRA `(.L_x_22)
  %".2882" = load i1, ptr %"P3"
  %".2883" = icmp eq i1 %".2882", 1
  br i1 %".2883", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".2890" = load i32, ptr %"R15"
  %".2891" = and i32 %".2890", 3
  store i32 %".2891", ptr %"R15"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".2894" = load i32, ptr %"R5"
  %".2895" = and i32 %".2894", 3
  store i32 %".2895", ptr %"R48"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".2898" = load i32, ptr %"R18"
  %".2899" = sub i32 0, %".2898"
  %"add.148" = add i32 %".2899", %"Arg_6"
  %"add.149" = add i32 %"add.148", 0
  store i32 %"add.149", ptr %"R49"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".2902" = icmp ult i32 31, 32
  %"SHF_min.2" = select  i1 %".2902", i32 31, i32 32
  %".2903" = load i32, ptr %"R5"
  %"zext.326" = zext i32 %".2903" to i64
  %"zext.327" = zext i32 0 to i64
  %"zext.328" = zext i32 31 to i64
  %"shl.170" = shl i64 %"zext.326", 32
  %"or.162" = or i64 %"shl.170", %"zext.327"
  %"ashr" = ashr i64 %"or.162", %"zext.328"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.2" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.2", ptr %"R16"
  ; MOV R17, RZ
  %".2906" = load i32, ptr %"RZ"
  store i32 %".2906", ptr %"R17"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".2909" = load i32, ptr %"R18"
  %".2910" = sub i32 0, %".2909"
  %"add.150" = add i32 %".2910", %"Arg_7"
  %"add.151" = add i32 %"add.150", 0
  store i32 %"add.151", ptr %"R18"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".2913" = load i32, ptr %"R15"
  %".2914" = sub i32 0, %".2913"
  %"add.152" = add i32 %".2914", %"Arg_6"
  %"add.153" = add i32 %"add.152", 0
  store i32 %"add.153", ptr %"R19"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".2917" = load i32, ptr %"R48"
  %".2918" = sub i32 0, %".2917"
  %"add.154" = add i32 %".2918", %"Arg_7"
  %"add.155" = add i32 %"add.154", 0
  store i32 %"add.155", ptr %"R20"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".2921" = load i32, ptr %"R49"
  %".2922" = load i1, ptr %"PT"
  %"cmp.27" = icmp sge i32 %".2921", 3
  %".2923" = and i1 %"cmp.27", %".2922"
  ; MOV R13, R17
  %".2925" = load i32, ptr %"R17"
  store i32 %".2925", ptr %"R13"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R4"
  ; IADD3 R17, R17, 0x1, RZ
  %".2930" = load i32, ptr %"R17"
  %"add.156" = add i32 %".2930", 1
  %"add.157" = add i32 %"add.156", 0
  store i32 %"add.157", ptr %"R17"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".2933" = load i32, ptr %"R4"
  %".2934" = load i1, ptr %"PT"
  %"cmp.28" = icmp sge i32 %".2933", 1
  %".2935" = and i1 %"cmp.28", %".2934"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".2937" = load i32, ptr %"R15"
  %".2938" = load i1, ptr %"PT"
  %"cmp.29" = icmp ne i32 %".2937", 0
  %".2939" = and i1 %"cmp.29", %".2938"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".2941" = load i32, ptr %"R17"
  %".2942" = load i1, ptr %"PT"
  %"cmp.30" = icmp sge i32 %".2941", %"Arg_8"
  %".2943" = and i1 %"cmp.30", %".2942"
  ; MOV R21, RZ
  %".2945" = load float, ptr %"RZ"
  %".2946" = bitcast ptr %"R21" to ptr
  store float %".2945", ptr %".2946"
  ; MOV R22, RZ
  %".2949" = load i32, ptr %"RZ"
  store i32 %".2949", ptr %"R22"
  ; MOV R56, RZ
  %".2952" = load float, ptr %"RZ"
  %".2953" = bitcast ptr %"R56" to ptr
  store float %".2952", ptr %".2953"
  ; MOV R44, RZ
  %".2956" = load float, ptr %"RZ"
  %".2957" = bitcast ptr %"R44" to ptr
  store float %".2956", ptr %".2957"
  ; @!P0 BRA `(.L_x_23)
  %".2960" = load i1, ptr %"P0"
  %".2961" = icmp eq i1 %".2960", 1
  br i1 %".2961", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R25"
  ; MOV R21, RZ
  %".2966" = load float, ptr %"RZ"
  %".2967" = bitcast ptr %"R21" to ptr
  store float %".2966", ptr %".2967"
  ; MOV R22, RZ
  %".2970" = load i32, ptr %"RZ"
  store i32 %".2970", ptr %"R22"
  ; MOV R12, R19
  %".2973" = load i32, ptr %"R19"
  store i32 %".2973", ptr %"R12"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".2976" = icmp ult i32 2, 64
  %"SHF_min.3" = select  i1 %".2976", i32 2, i32 64
  %".2977" = load i32, ptr %"R16"
  %".2978" = load i32, ptr %"R25"
  %"zext.329" = zext i32 %".2977" to i64
  %"zext.330" = zext i32 %".2978" to i64
  %"zext.331" = zext i32 2 to i64
  %"shl.171" = shl i64 %"zext.329", 32
  %"or.163" = or i64 %"shl.171", %"zext.330"
  %"shl.172" = shl i64 %"or.163", %"zext.331"
  %"lshr" = lshr i64 %"shl.172", 32
  %"trunc32.3" = trunc i64 %"lshr" to i32
  store i32 %"trunc32.3", ptr %"R23"
.L_x_24:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R6, R14, c[0x0][0x180], R22.reuse
  %".2983" = load i32, ptr %"R14"
  %".2984" = load i32, ptr %"R22"
  %"mul.52" = mul i32 %".2983", %"Arg_6"
  %"add.158" = add i32 %"mul.52", %".2984"
  store i32 %"add.158", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".2989" = load i32, ptr %"R13"
  %".2990" = load i32, ptr %"R22"
  %"mul.53" = mul i32 %".2989", %"Arg_6"
  %"add.159" = add i32 %"mul.53", %".2990"
  store i32 %"add.159", ptr %"R10"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".2993" = load i32, ptr %"R6"
  %".2994" = load i32, ptr %"R7"
  %"mul.54" = mul i32 %".2993", %".2994"
  %"add.160" = add i32 %"mul.54", %"Arg_4"
  store i32 %"add.160", ptr %"R4"
  ; LEA R6, R9, R6, 0x1
  %".2997" = load i32, ptr %"R9"
  %".2998" = load i32, ptr %"R6"
  %"shl.173" = shl i32 %".2997", 1
  %"add.161" = add i32 %"shl.173", %".2998"
  store i32 %"add.161", ptr %"R6"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".3001" = load i32, ptr %"R10"
  %".3002" = load i32, ptr %"R7"
  %"mul.55" = mul i32 %".3001", %".3002"
  %"add.162" = add i32 %"mul.55", %"Arg_2"
  store i32 %"add.162", ptr %"R10"
  ; LEA R8, P0, R25, R4, 0x2
  %".3005" = load i1, ptr %"P0"
  %".3006" = sub i1 0, %".3005"
  %".3007" = load i32, ptr %"R25"
  %".3008" = load i32, ptr %"R4"
  %".3009" = sext i1 %".3006" to i32
  %"shl.174" = shl i32 %".3009", %".3008"
  %"add.163" = add i32 %"shl.174", %".3007"
  store i32 %"add.163", ptr %"R8"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".3012" = load i32, ptr %"R6"
  %".3013" = load i32, ptr %"R7"
  %"mul.56" = mul i32 %".3012", %".3013"
  %"add.164" = add i32 %"mul.56", %"Arg_4"
  store i32 %"add.164", ptr %"R6"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".3016" = load i32, ptr %"R5"
  %".3017" = load i32, ptr %"R23"
  %".3018" = load i1, ptr %"P0"
  %".3019" = sub i1 0, %".3018"
  %".3020" = zext i1 %".3019" to i32
  %"add.165" = add i32 %".3016", %".3017"
  %"add.166" = add i32 %"add.165", 0
  %"add.167" = add i32 %"add.166", %".3020"
  store i32 %"add.167", ptr %"R9"
  ; LDG.E.SYS R35, [R4]
  %".3023" = load i32, ptr %"R4"
  %"zext.332" = zext i32 %".3023" to i64
  %".3024" = load i32, ptr %"R5"
  %"zext.333" = zext i32 %".3024" to i64
  %"shl.175" = shl i64 %"zext.333", 32
  %"or.164" = or i64 %"shl.175", %"zext.332"
  %".3025" = add i64 %"or.164", 0
  %"for_LDG.159" = inttoptr i64 %".3025" to ptr
  %".3026" = load float, ptr %"for_LDG.159"
  %".3027" = bitcast ptr %"R35" to ptr
  store float %".3026", ptr %".3027"
  ; LDG.E.SYS R24, [R10]
  %".3030" = load i32, ptr %"R10"
  %"zext.334" = zext i32 %".3030" to i64
  %".3031" = load i32, ptr %"R11"
  %"zext.335" = zext i32 %".3031" to i64
  %"shl.176" = shl i64 %"zext.335", 32
  %"or.165" = or i64 %"shl.176", %"zext.334"
  %".3032" = add i64 %"or.165", 0
  %"for_LDG.160" = inttoptr i64 %".3032" to ptr
  %".3033" = load float, ptr %"for_LDG.160"
  %".3034" = bitcast ptr %"R24" to ptr
  store float %".3033", ptr %".3034"
  ; LDG.E.SYS R37, [R8]
  %".3037" = load i32, ptr %"R8"
  %"zext.336" = zext i32 %".3037" to i64
  %".3038" = load i32, ptr %"R9"
  %"zext.337" = zext i32 %".3038" to i64
  %"shl.177" = shl i64 %"zext.337", 32
  %"or.166" = or i64 %"shl.177", %"zext.336"
  %".3039" = add i64 %"or.166", 0
  %"for_LDG.161" = inttoptr i64 %".3039" to ptr
  %".3040" = load float, ptr %"for_LDG.161"
  %".3041" = bitcast ptr %"R37" to ptr
  store float %".3040", ptr %".3041"
  ; LDG.E.SYS R34, [R6]
  %".3044" = load i32, ptr %"R6"
  %"zext.338" = zext i32 %".3044" to i64
  %".3045" = load i32, ptr %"R7"
  %"zext.339" = zext i32 %".3045" to i64
  %"shl.178" = shl i64 %"zext.339", 32
  %"or.167" = or i64 %"shl.178", %"zext.338"
  %".3046" = add i64 %"or.167", 0
  %"for_LDG.162" = inttoptr i64 %".3046" to ptr
  %".3047" = load float, ptr %"for_LDG.162"
  %".3048" = bitcast ptr %"R34" to ptr
  store float %".3047", ptr %".3048"
  ; LDG.E.SYS R36, [R4+0x4]
  %".3051" = load i32, ptr %"R4"
  %"zext.340" = zext i32 %".3051" to i64
  %".3052" = load i32, ptr %"R5"
  %"zext.341" = zext i32 %".3052" to i64
  %"shl.179" = shl i64 %"zext.341", 32
  %"or.168" = or i64 %"shl.179", %"zext.340"
  %".3053" = add i64 %"or.168", 4
  %"for_LDG.163" = inttoptr i64 %".3053" to ptr
  %".3054" = load float, ptr %"for_LDG.163"
  %".3055" = bitcast ptr %"R36" to ptr
  store float %".3054", ptr %".3055"
  ; LDG.E.SYS R38, [R10+0x4]
  %".3058" = load i32, ptr %"R10"
  %"zext.342" = zext i32 %".3058" to i64
  %".3059" = load i32, ptr %"R11"
  %"zext.343" = zext i32 %".3059" to i64
  %"shl.180" = shl i64 %"zext.343", 32
  %"or.169" = or i64 %"shl.180", %"zext.342"
  %".3060" = add i64 %"or.169", 4
  %"for_LDG.164" = inttoptr i64 %".3060" to ptr
  %".3061" = load float, ptr %"for_LDG.164"
  %".3062" = bitcast ptr %"R38" to ptr
  store float %".3061", ptr %".3062"
  ; LDG.E.SYS R39, [R8+0x4]
  %".3065" = load i32, ptr %"R8"
  %"zext.344" = zext i32 %".3065" to i64
  %".3066" = load i32, ptr %"R9"
  %"zext.345" = zext i32 %".3066" to i64
  %"shl.181" = shl i64 %"zext.345", 32
  %"or.170" = or i64 %"shl.181", %"zext.344"
  %".3067" = add i64 %"or.170", 4
  %"for_LDG.165" = inttoptr i64 %".3067" to ptr
  %".3068" = load float, ptr %"for_LDG.165"
  %".3069" = bitcast ptr %"R39" to ptr
  store float %".3068", ptr %".3069"
  ; LDG.E.SYS R41, [R6+0x4]
  %".3072" = load i32, ptr %"R6"
  %"zext.346" = zext i32 %".3072" to i64
  %".3073" = load i32, ptr %"R7"
  %"zext.347" = zext i32 %".3073" to i64
  %"shl.182" = shl i64 %"zext.347", 32
  %"or.171" = or i64 %"shl.182", %"zext.346"
  %".3074" = add i64 %"or.171", 4
  %"for_LDG.166" = inttoptr i64 %".3074" to ptr
  %".3075" = load float, ptr %"for_LDG.166"
  %".3076" = bitcast ptr %"R41" to ptr
  store float %".3075", ptr %".3076"
  ; LDG.E.SYS R42, [R10+0x8]
  %".3079" = load i32, ptr %"R10"
  %"zext.348" = zext i32 %".3079" to i64
  %".3080" = load i32, ptr %"R11"
  %"zext.349" = zext i32 %".3080" to i64
  %"shl.183" = shl i64 %"zext.349", 32
  %"or.172" = or i64 %"shl.183", %"zext.348"
  %".3081" = add i64 %"or.172", 8
  %"for_LDG.167" = inttoptr i64 %".3081" to ptr
  %".3082" = load float, ptr %"for_LDG.167"
  %".3083" = bitcast ptr %"R42" to ptr
  store float %".3082", ptr %".3083"
  ; LDG.E.SYS R40, [R4+0x8]
  %".3086" = load i32, ptr %"R4"
  %"zext.350" = zext i32 %".3086" to i64
  %".3087" = load i32, ptr %"R5"
  %"zext.351" = zext i32 %".3087" to i64
  %"shl.184" = shl i64 %"zext.351", 32
  %"or.173" = or i64 %"shl.184", %"zext.350"
  %".3088" = add i64 %"or.173", 8
  %"for_LDG.168" = inttoptr i64 %".3088" to ptr
  %".3089" = load float, ptr %"for_LDG.168"
  %".3090" = bitcast ptr %"R40" to ptr
  store float %".3089", ptr %".3090"
  ; LDG.E.SYS R43, [R8+0x8]
  %".3093" = load i32, ptr %"R8"
  %"zext.352" = zext i32 %".3093" to i64
  %".3094" = load i32, ptr %"R9"
  %"zext.353" = zext i32 %".3094" to i64
  %"shl.185" = shl i64 %"zext.353", 32
  %"or.174" = or i64 %"shl.185", %"zext.352"
  %".3095" = add i64 %"or.174", 8
  %"for_LDG.169" = inttoptr i64 %".3095" to ptr
  %".3096" = load float, ptr %"for_LDG.169"
  %".3097" = bitcast ptr %"R43" to ptr
  store float %".3096", ptr %".3097"
  ; LDG.E.SYS R45, [R6+0x8]
  %".3100" = load i32, ptr %"R6"
  %"zext.354" = zext i32 %".3100" to i64
  %".3101" = load i32, ptr %"R7"
  %"zext.355" = zext i32 %".3101" to i64
  %"shl.186" = shl i64 %"zext.355", 32
  %"or.175" = or i64 %"shl.186", %"zext.354"
  %".3102" = add i64 %"or.175", 8
  %"for_LDG.170" = inttoptr i64 %".3102" to ptr
  %".3103" = load float, ptr %"for_LDG.170"
  %".3104" = bitcast ptr %"R45" to ptr
  store float %".3103", ptr %".3104"
  ; LDG.E.SYS R47, [R10+0xc]
  %".3107" = load i32, ptr %"R10"
  %"zext.356" = zext i32 %".3107" to i64
  %".3108" = load i32, ptr %"R11"
  %"zext.357" = zext i32 %".3108" to i64
  %"shl.187" = shl i64 %"zext.357", 32
  %"or.176" = or i64 %"shl.187", %"zext.356"
  %".3109" = add i64 %"or.176", 12
  %"for_LDG.171" = inttoptr i64 %".3109" to ptr
  %".3110" = load float, ptr %"for_LDG.171"
  %".3111" = bitcast ptr %"R47" to ptr
  store float %".3110", ptr %".3111"
  ; LDG.E.SYS R46, [R4+0xc]
  %".3114" = load i32, ptr %"R4"
  %"zext.358" = zext i32 %".3114" to i64
  %".3115" = load i32, ptr %"R5"
  %"zext.359" = zext i32 %".3115" to i64
  %"shl.188" = shl i64 %"zext.359", 32
  %"or.177" = or i64 %"shl.188", %"zext.358"
  %".3116" = add i64 %"or.177", 12
  %"for_LDG.172" = inttoptr i64 %".3116" to ptr
  %".3117" = load float, ptr %"for_LDG.172"
  %".3118" = bitcast ptr %"R46" to ptr
  store float %".3117", ptr %".3118"
  ; LDG.E.SYS R50, [R8+0xc]
  %".3121" = load i32, ptr %"R8"
  %"zext.360" = zext i32 %".3121" to i64
  %".3122" = load i32, ptr %"R9"
  %"zext.361" = zext i32 %".3122" to i64
  %"shl.189" = shl i64 %"zext.361", 32
  %"or.178" = or i64 %"shl.189", %"zext.360"
  %".3123" = add i64 %"or.178", 12
  %"for_LDG.173" = inttoptr i64 %".3123" to ptr
  %".3124" = load float, ptr %"for_LDG.173"
  %".3125" = bitcast ptr %"R50" to ptr
  store float %".3124", ptr %".3125"
  ; LDG.E.SYS R51, [R6+0xc]
  %".3128" = load i32, ptr %"R6"
  %"zext.362" = zext i32 %".3128" to i64
  %".3129" = load i32, ptr %"R7"
  %"zext.363" = zext i32 %".3129" to i64
  %"shl.190" = shl i64 %"zext.363", 32
  %"or.179" = or i64 %"shl.190", %"zext.362"
  %".3130" = add i64 %"or.179", 12
  %"for_LDG.174" = inttoptr i64 %".3130" to ptr
  %".3131" = load float, ptr %"for_LDG.174"
  %".3132" = bitcast ptr %"R51" to ptr
  store float %".3131", ptr %".3132"
  ; IADD3 R12, R12, -0x4, RZ
  %".3135" = load i32, ptr %"R12"
  %"add.168" = add i32 %".3135", -4
  %"add.169" = add i32 %"add.168", 0
  store i32 %"add.169", ptr %"R12"
  ; IADD3 R22, R22, 0x4, RZ
  %".3138" = load i32, ptr %"R22"
  %"add.170" = add i32 %".3138", 4
  %"add.171" = add i32 %"add.170", 0
  store i32 %"add.171", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".3141" = load i32, ptr %"R12"
  %".3142" = load i1, ptr %"PT"
  %"cmp.31" = icmp ne i32 %".3141", 0
  %".3143" = and i1 %"cmp.31", %".3142"
  ; FFMA R35, R35, R24, R44
  %".3145" = load float, ptr %"R35"
  %".3146" = load float, ptr %"R24"
  %".3147" = load float, ptr %"R44"
  %"fmul.148" = fmul float %".3145", %".3146"
  %"fadd.123" = fadd float %"fmul.148", %".3147"
  %".3148" = bitcast ptr %"R35" to ptr
  store float %"fadd.123", ptr %".3148"
  ; FFMA R37, R24.reuse, R37, R56
  %".3151" = load float, ptr %"R24"
  %".3152" = load float, ptr %"R37"
  %".3153" = load float, ptr %"R56"
  %"fmul.149" = fmul float %".3151", %".3152"
  %"fadd.124" = fadd float %"fmul.149", %".3153"
  %".3154" = bitcast ptr %"R37" to ptr
  store float %"fadd.124", ptr %".3154"
  ; FFMA R34, R24, R34, R21
  %".3157" = load float, ptr %"R24"
  %".3158" = load float, ptr %"R34"
  %".3159" = load float, ptr %"R21"
  %"fmul.150" = fmul float %".3157", %".3158"
  %"fadd.125" = fadd float %"fmul.150", %".3159"
  %".3160" = bitcast ptr %"R34" to ptr
  store float %"fadd.125", ptr %".3160"
  ; FFMA R35, R36, R38, R35
  %".3163" = load float, ptr %"R36"
  %".3164" = load float, ptr %"R38"
  %".3165" = load float, ptr %"R35"
  %"fmul.151" = fmul float %".3163", %".3164"
  %"fadd.126" = fadd float %"fmul.151", %".3165"
  %".3166" = bitcast ptr %"R35" to ptr
  store float %"fadd.126", ptr %".3166"
  ; FFMA R37, R38, R39, R37
  %".3169" = load float, ptr %"R38"
  %".3170" = load float, ptr %"R39"
  %".3171" = load float, ptr %"R37"
  %"fmul.152" = fmul float %".3169", %".3170"
  %"fadd.127" = fadd float %"fmul.152", %".3171"
  %".3172" = bitcast ptr %"R37" to ptr
  store float %"fadd.127", ptr %".3172"
  ; FFMA R34, R38, R41, R34
  %".3175" = load float, ptr %"R38"
  %".3176" = load float, ptr %"R41"
  %".3177" = load float, ptr %"R34"
  %"fmul.153" = fmul float %".3175", %".3176"
  %"fadd.128" = fadd float %"fmul.153", %".3177"
  %".3178" = bitcast ptr %"R34" to ptr
  store float %"fadd.128", ptr %".3178"
  ; FFMA R35, R40, R42, R35
  %".3181" = load float, ptr %"R40"
  %".3182" = load float, ptr %"R42"
  %".3183" = load float, ptr %"R35"
  %"fmul.154" = fmul float %".3181", %".3182"
  %"fadd.129" = fadd float %"fmul.154", %".3183"
  %".3184" = bitcast ptr %"R35" to ptr
  store float %"fadd.129", ptr %".3184"
  ; FFMA R37, R42.reuse, R43, R37
  %".3187" = load float, ptr %"R42"
  %".3188" = load float, ptr %"R43"
  %".3189" = load float, ptr %"R37"
  %"fmul.155" = fmul float %".3187", %".3188"
  %"fadd.130" = fadd float %"fmul.155", %".3189"
  %".3190" = bitcast ptr %"R37" to ptr
  store float %"fadd.130", ptr %".3190"
  ; FFMA R34, R42, R45, R34
  %".3193" = load float, ptr %"R42"
  %".3194" = load float, ptr %"R45"
  %".3195" = load float, ptr %"R34"
  %"fmul.156" = fmul float %".3193", %".3194"
  %"fadd.131" = fadd float %"fmul.156", %".3195"
  %".3196" = bitcast ptr %"R34" to ptr
  store float %"fadd.131", ptr %".3196"
  ; FFMA R44, R46, R47, R35
  %".3199" = load float, ptr %"R46"
  %".3200" = load float, ptr %"R47"
  %".3201" = load float, ptr %"R35"
  %"fmul.157" = fmul float %".3199", %".3200"
  %"fadd.132" = fadd float %"fmul.157", %".3201"
  %".3202" = bitcast ptr %"R44" to ptr
  store float %"fadd.132", ptr %".3202"
  ; FFMA R56, R47, R50, R37
  %".3205" = load float, ptr %"R47"
  %".3206" = load float, ptr %"R50"
  %".3207" = load float, ptr %"R37"
  %"fmul.158" = fmul float %".3205", %".3206"
  %"fadd.133" = fadd float %"fmul.158", %".3207"
  %".3208" = bitcast ptr %"R56" to ptr
  store float %"fadd.133", ptr %".3208"
  ; FFMA R21, R47, R51, R34
  %".3211" = load float, ptr %"R47"
  %".3212" = load float, ptr %"R51"
  %".3213" = load float, ptr %"R34"
  %"fmul.159" = fmul float %".3211", %".3212"
  %"fadd.134" = fadd float %"fmul.159", %".3213"
  %".3214" = bitcast ptr %"R21" to ptr
  store float %"fadd.134", ptr %".3214"
  ; @P0 BRA `(.L_x_24)
  %".3217" = load i1, ptr %"P0"
  %".3218" = icmp ne i1 %".3217", 1
  br i1 %".3218", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".3221" = load i1, ptr %"P1"
  %".3222" = icmp eq i1 %".3221", 1
  br i1 %".3222", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  %".3227" = load i32, ptr %"R14"
  %".3228" = load i32, ptr %"R22"
  %"mul.57" = mul i32 %".3227", %"Arg_6"
  %"add.172" = add i32 %"mul.57", %".3228"
  store i32 %"add.172", ptr %"R7"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R10"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".3233" = load i32, ptr %"R13"
  %".3234" = load i32, ptr %"R22"
  %"mul.58" = mul i32 %".3233", %"Arg_6"
  %"add.173" = add i32 %"mul.58", %".3234"
  store i32 %"add.173", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".3239" = load i32, ptr %"R7"
  %".3240" = load i32, ptr %"R11"
  %"mul.59" = mul i32 %".3239", %".3240"
  %"add.174" = add i32 %"mul.59", %"Arg_4"
  store i32 %"add.174", ptr %"R4"
  ; LEA R10, R10, R7, 0x1
  %".3243" = load i32, ptr %"R10"
  %".3244" = load i32, ptr %"R7"
  %"shl.191" = shl i32 %".3243", 1
  %"add.175" = add i32 %"shl.191", %".3244"
  store i32 %"add.175", ptr %"R10"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".3247" = load i32, ptr %"R6"
  %".3248" = load i32, ptr %"R11"
  %"mul.60" = mul i32 %".3247", %".3248"
  %"add.176" = add i32 %"mul.60", %"Arg_2"
  store i32 %"add.176", ptr %"R6"
  ; LEA R8, P0, R9, R4, 0x2
  %".3251" = load i1, ptr %"P0"
  %".3252" = sub i1 0, %".3251"
  %".3253" = load i32, ptr %"R9"
  %".3254" = load i32, ptr %"R4"
  %".3255" = sext i1 %".3252" to i32
  %"shl.192" = shl i32 %".3255", %".3254"
  %"add.177" = add i32 %"shl.192", %".3253"
  store i32 %"add.177", ptr %"R8"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".3258" = load i32, ptr %"R10"
  %".3259" = load i32, ptr %"R11"
  %"mul.61" = mul i32 %".3258", %".3259"
  %"add.178" = add i32 %"mul.61", %"Arg_4"
  store i32 %"add.178", ptr %"R10"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".3262" = load i32, ptr %"R9"
  %".3263" = load i32, ptr %"R5"
  %".3264" = load i32, ptr %"R16"
  %"shl.193" = shl i32 %".3262", %".3264"
  %"add.179" = add i32 %"shl.193", %".3263"
  store i32 %"add.179", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".3267" = load i32, ptr %"R4"
  %"zext.364" = zext i32 %".3267" to i64
  %".3268" = load i32, ptr %"R5"
  %"zext.365" = zext i32 %".3268" to i64
  %"shl.194" = shl i64 %"zext.365", 32
  %"or.180" = or i64 %"shl.194", %"zext.364"
  %".3269" = add i64 %"or.180", 0
  %"for_LDG.175" = inttoptr i64 %".3269" to ptr
  %".3270" = load float, ptr %"for_LDG.175"
  %".3271" = bitcast ptr %"R13" to ptr
  store float %".3270", ptr %".3271"
  ; LDG.E.SYS R12, [R6]
  %".3274" = load i32, ptr %"R6"
  %"zext.366" = zext i32 %".3274" to i64
  %".3275" = load i32, ptr %"R7"
  %"zext.367" = zext i32 %".3275" to i64
  %"shl.195" = shl i64 %"zext.367", 32
  %"or.181" = or i64 %"shl.195", %"zext.366"
  %".3276" = add i64 %"or.181", 0
  %"for_LDG.176" = inttoptr i64 %".3276" to ptr
  %".3277" = load float, ptr %"for_LDG.176"
  %".3278" = bitcast ptr %"R12" to ptr
  store float %".3277", ptr %".3278"
  ; LDG.E.SYS R23, [R8]
  %".3281" = load i32, ptr %"R8"
  %"zext.368" = zext i32 %".3281" to i64
  %".3282" = load i32, ptr %"R9"
  %"zext.369" = zext i32 %".3282" to i64
  %"shl.196" = shl i64 %"zext.369", 32
  %"or.182" = or i64 %"shl.196", %"zext.368"
  %".3283" = add i64 %"or.182", 0
  %"for_LDG.177" = inttoptr i64 %".3283" to ptr
  %".3284" = load float, ptr %"for_LDG.177"
  %".3285" = bitcast ptr %"R23" to ptr
  store float %".3284", ptr %".3285"
  ; LDG.E.SYS R22, [R10]
  %".3288" = load i32, ptr %"R10"
  %"zext.370" = zext i32 %".3288" to i64
  %".3289" = load i32, ptr %"R11"
  %"zext.371" = zext i32 %".3289" to i64
  %"shl.197" = shl i64 %"zext.371", 32
  %"or.183" = or i64 %"shl.197", %"zext.370"
  %".3290" = add i64 %"or.183", 0
  %"for_LDG.178" = inttoptr i64 %".3290" to ptr
  %".3291" = load float, ptr %"for_LDG.178"
  %".3292" = bitcast ptr %"R22" to ptr
  store float %".3291", ptr %".3292"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".3295" = load i32, ptr %"R15"
  %".3296" = load i1, ptr %"PT"
  %"cmp.32" = icmp ne i32 %".3295", 1
  %".3297" = and i1 %"cmp.32", %".3296"
  ; FFMA R44, R13, R12, R44
  %".3299" = load float, ptr %"R13"
  %".3300" = load float, ptr %"R12"
  %".3301" = load float, ptr %"R44"
  %"fmul.160" = fmul float %".3299", %".3300"
  %"fadd.135" = fadd float %"fmul.160", %".3301"
  %".3302" = bitcast ptr %"R44" to ptr
  store float %"fadd.135", ptr %".3302"
  ; FFMA R56, R12.reuse, R23, R56
  %".3305" = load float, ptr %"R12"
  %".3306" = load float, ptr %"R23"
  %".3307" = load float, ptr %"R56"
  %"fmul.161" = fmul float %".3305", %".3306"
  %"fadd.136" = fadd float %"fmul.161", %".3307"
  %".3308" = bitcast ptr %"R56" to ptr
  store float %"fadd.136", ptr %".3308"
  ; FFMA R21, R12, R22, R21
  %".3311" = load float, ptr %"R12"
  %".3312" = load float, ptr %"R22"
  %".3313" = load float, ptr %"R21"
  %"fmul.162" = fmul float %".3311", %".3312"
  %"fadd.137" = fadd float %"fmul.162", %".3313"
  %".3314" = bitcast ptr %"R21" to ptr
  store float %"fadd.137", ptr %".3314"
  ; @!P0 BRA `(.L_x_25)
  %".3317" = load i1, ptr %"P0"
  %".3318" = icmp eq i1 %".3317", 1
  br i1 %".3318", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".3321" = load i32, ptr %"R15"
  %".3322" = load i1, ptr %"PT"
  %"cmp.33" = icmp ne i32 %".3321", 2
  %".3323" = and i1 %"cmp.33", %".3322"
  ; LDG.E.SYS R13, [R4+0x4]
  %".3325" = load i32, ptr %"R4"
  %"zext.372" = zext i32 %".3325" to i64
  %".3326" = load i32, ptr %"R5"
  %"zext.373" = zext i32 %".3326" to i64
  %"shl.198" = shl i64 %"zext.373", 32
  %"or.184" = or i64 %"shl.198", %"zext.372"
  %".3327" = add i64 %"or.184", 4
  %"for_LDG.179" = inttoptr i64 %".3327" to ptr
  %".3328" = load float, ptr %"for_LDG.179"
  %".3329" = bitcast ptr %"R13" to ptr
  store float %".3328", ptr %".3329"
  ; LDG.E.SYS R12, [R6+0x4]
  %".3332" = load i32, ptr %"R6"
  %"zext.374" = zext i32 %".3332" to i64
  %".3333" = load i32, ptr %"R7"
  %"zext.375" = zext i32 %".3333" to i64
  %"shl.199" = shl i64 %"zext.375", 32
  %"or.185" = or i64 %"shl.199", %"zext.374"
  %".3334" = add i64 %"or.185", 4
  %"for_LDG.180" = inttoptr i64 %".3334" to ptr
  %".3335" = load float, ptr %"for_LDG.180"
  %".3336" = bitcast ptr %"R12" to ptr
  store float %".3335", ptr %".3336"
  ; LDG.E.SYS R23, [R8+0x4]
  %".3339" = load i32, ptr %"R8"
  %"zext.376" = zext i32 %".3339" to i64
  %".3340" = load i32, ptr %"R9"
  %"zext.377" = zext i32 %".3340" to i64
  %"shl.200" = shl i64 %"zext.377", 32
  %"or.186" = or i64 %"shl.200", %"zext.376"
  %".3341" = add i64 %"or.186", 4
  %"for_LDG.181" = inttoptr i64 %".3341" to ptr
  %".3342" = load float, ptr %"for_LDG.181"
  %".3343" = bitcast ptr %"R23" to ptr
  store float %".3342", ptr %".3343"
  ; LDG.E.SYS R22, [R10+0x4]
  %".3346" = load i32, ptr %"R10"
  %"zext.378" = zext i32 %".3346" to i64
  %".3347" = load i32, ptr %"R11"
  %"zext.379" = zext i32 %".3347" to i64
  %"shl.201" = shl i64 %"zext.379", 32
  %"or.187" = or i64 %"shl.201", %"zext.378"
  %".3348" = add i64 %"or.187", 4
  %"for_LDG.182" = inttoptr i64 %".3348" to ptr
  %".3349" = load float, ptr %"for_LDG.182"
  %".3350" = bitcast ptr %"R22" to ptr
  store float %".3349", ptr %".3350"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".3353" = load i1, ptr %"P0"
  %".3354" = icmp ne i1 %".3353", 1
  br i1 %".3354", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  %".3357" = load i32, ptr %"R4"
  %"zext.380" = zext i32 %".3357" to i64
  %".3358" = load i32, ptr %"R5"
  %"zext.381" = zext i32 %".3358" to i64
  %"shl.202" = shl i64 %"zext.381", 32
  %"or.188" = or i64 %"shl.202", %"zext.380"
  %".3359" = add i64 %"or.188", 8
  %"for_LDG.183" = inttoptr i64 %".3359" to ptr
  %".3360" = load float, ptr %"for_LDG.183"
  %".3361" = bitcast ptr %"R25" to ptr
  store float %".3360", ptr %".3361"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".3366" = load i1, ptr %"P0"
  %".3367" = icmp ne i1 %".3366", 1
  br i1 %".3367", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  %".3370" = load i32, ptr %"R6"
  %"zext.382" = zext i32 %".3370" to i64
  %".3371" = load i32, ptr %"R7"
  %"zext.383" = zext i32 %".3371" to i64
  %"shl.203" = shl i64 %"zext.383", 32
  %"or.189" = or i64 %"shl.203", %"zext.382"
  %".3372" = add i64 %"or.189", 8
  %"for_LDG.184" = inttoptr i64 %".3372" to ptr
  %".3373" = load float, ptr %"for_LDG.184"
  %".3374" = bitcast ptr %"R24" to ptr
  store float %".3373", ptr %".3374"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".3379" = load i1, ptr %"P0"
  %".3380" = icmp ne i1 %".3379", 1
  br i1 %".3380", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  %".3383" = load i32, ptr %"R8"
  %"zext.384" = zext i32 %".3383" to i64
  %".3384" = load i32, ptr %"R9"
  %"zext.385" = zext i32 %".3384" to i64
  %"shl.204" = shl i64 %"zext.385", 32
  %"or.190" = or i64 %"shl.204", %"zext.384"
  %".3385" = add i64 %"or.190", 8
  %"for_LDG.185" = inttoptr i64 %".3385" to ptr
  %".3386" = load float, ptr %"for_LDG.185"
  %".3387" = bitcast ptr %"R35" to ptr
  store float %".3386", ptr %".3387"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".3392" = load i1, ptr %"P0"
  %".3393" = icmp ne i1 %".3392", 1
  br i1 %".3393", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  %".3396" = load i32, ptr %"R10"
  %"zext.386" = zext i32 %".3396" to i64
  %".3397" = load i32, ptr %"R11"
  %"zext.387" = zext i32 %".3397" to i64
  %"shl.205" = shl i64 %"zext.387", 32
  %"or.191" = or i64 %"shl.205", %"zext.386"
  %".3398" = add i64 %"or.191", 8
  %"for_LDG.186" = inttoptr i64 %".3398" to ptr
  %".3399" = load float, ptr %"for_LDG.186"
  %".3400" = bitcast ptr %"R34" to ptr
  store float %".3399", ptr %".3400"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".3405" = load float, ptr %"R13"
  %".3406" = load float, ptr %"R12"
  %".3407" = load float, ptr %"R44"
  %"fmul.163" = fmul float %".3405", %".3406"
  %"fadd.138" = fadd float %"fmul.163", %".3407"
  %".3408" = bitcast ptr %"R44" to ptr
  store float %"fadd.138", ptr %".3408"
  ; FFMA R56, R12.reuse, R23, R56
  %".3411" = load float, ptr %"R12"
  %".3412" = load float, ptr %"R23"
  %".3413" = load float, ptr %"R56"
  %"fmul.164" = fmul float %".3411", %".3412"
  %"fadd.139" = fadd float %"fmul.164", %".3413"
  %".3414" = bitcast ptr %"R56" to ptr
  store float %"fadd.139", ptr %".3414"
  ; FFMA R21, R12, R22, R21
  %".3417" = load float, ptr %"R12"
  %".3418" = load float, ptr %"R22"
  %".3419" = load float, ptr %"R21"
  %"fmul.165" = fmul float %".3417", %".3418"
  %"fadd.140" = fadd float %"fmul.165", %".3419"
  %".3420" = bitcast ptr %"R21" to ptr
  store float %"fadd.140", ptr %".3420"
  ; @P0 FFMA R44, R25, R24, R44
  %".3423" = load i1, ptr %"P0"
  %".3424" = icmp ne i1 %".3423", 1
  br i1 %".3424", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".3427" = load float, ptr %"R25"
  %".3428" = load float, ptr %"R24"
  %".3429" = load float, ptr %"R44"
  %"fmul.166" = fmul float %".3427", %".3428"
  %"fadd.141" = fadd float %"fmul.166", %".3429"
  %".3430" = bitcast ptr %"R44" to ptr
  store float %"fadd.141", ptr %".3430"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".3435" = load i1, ptr %"P0"
  %".3436" = icmp ne i1 %".3435", 1
  br i1 %".3436", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".3439" = load float, ptr %"R24"
  %".3440" = load float, ptr %"R35"
  %".3441" = load float, ptr %"R56"
  %"fmul.167" = fmul float %".3439", %".3440"
  %"fadd.142" = fadd float %"fmul.167", %".3441"
  %".3442" = bitcast ptr %"R56" to ptr
  store float %"fadd.142", ptr %".3442"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".3447" = load i1, ptr %"P0"
  %".3448" = icmp ne i1 %".3447", 1
  br i1 %".3448", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".3451" = load float, ptr %"R24"
  %".3452" = load float, ptr %"R34"
  %".3453" = load float, ptr %"R21"
  %"fmul.168" = fmul float %".3451", %".3452"
  %"fadd.143" = fadd float %"fmul.168", %".3453"
  %".3454" = bitcast ptr %"R21" to ptr
  store float %"fadd.143", ptr %".3454"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".3459" = load i1, ptr %"P4"
  %".3460" = icmp eq i1 %".3459", 1
  br i1 %".3460", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".3463" = load i32, ptr %"R18"
  %".3464" = load i1, ptr %"PT"
  %"cmp.34" = icmp sge i32 %".3463", 3
  %".3465" = and i1 %"cmp.34", %".3464"
  ; MOV R23, RZ
  %".3467" = load i32, ptr %"RZ"
  store i32 %".3467", ptr %"R23"
  ; @!P0 BRA `(.L_x_27)
  %".3470" = load i1, ptr %"P0"
  %".3471" = icmp eq i1 %".3470", 1
  br i1 %".3471", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".3474" = load i32, ptr %"R20"
  %".3475" = load i1, ptr %"PT"
  %"cmp.35" = icmp sgt i32 %".3474", 0
  %".3476" = and i1 %"cmp.35", %".3475"
  ; MOV R23, RZ
  %".3478" = load i32, ptr %"RZ"
  store i32 %".3478", ptr %"R23"
  ; MOV R22, R20
  %".3481" = load i32, ptr %"R20"
  store i32 %".3481", ptr %"R22"
  ; @!P0 BRA `(.L_x_28)
  %".3484" = load i1, ptr %"P0"
  %".3485" = icmp eq i1 %".3484", 1
  br i1 %".3485", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".3488" = load i32, ptr %"R22"
  %".3489" = load i1, ptr %"PT"
  %"cmp.36" = icmp sgt i32 %".3488", 12
  %".3490" = and i1 %"cmp.36", %".3489"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".3492" = and i1 1, 1
  %".3493" = or i1 %".3492", 1
  ; @!P1 BRA `(.L_x_29)
  %".3495" = load i1, ptr %"P1"
  %".3496" = icmp eq i1 %".3495", 1
  br i1 %".3496", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3499" = xor i1 1, 1
  %".3500" = and i1 %".3499", 1
  %".3501" = and i1 %".3500", 1
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".3503" = load i32, ptr %"R0"
  %".3504" = load i32, ptr %"R23"
  %"add.180" = add i32 %".3503", %".3504"
  %"add.181" = add i32 %"add.180", 0
  store i32 %"add.181", ptr %"R25"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".3509" = load i32, ptr %"R2"
  %".3510" = load i32, ptr %"R25"
  %"mul.62" = mul i32 %".3509", 3
  %"add.182" = add i32 %"mul.62", %".3510"
  store i32 %"add.182", ptr %"R35"
  ; LEA R25, R2, R25, 0x2
  %".3513" = load i32, ptr %"R2"
  %".3514" = load i32, ptr %"R25"
  %"shl.206" = shl i32 %".3513", 2
  %"add.183" = add i32 %"shl.206", %".3514"
  store i32 %"add.183", ptr %"R25"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".3517" = load i32, ptr %"R23"
  %".3518" = load i32, ptr %"R24"
  %"mul.63" = mul i32 %".3517", %".3518"
  %"add.184" = add i32 %"mul.63", %"Arg_3"
  store i32 %"add.184", ptr %"R36"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".3521" = load i32, ptr %"R35"
  %".3522" = load i32, ptr %"R24"
  %"mul.64" = mul i32 %".3521", %".3522"
  %"add.185" = add i32 %"mul.64", %"Arg_4"
  store i32 %"add.185", ptr %"R8"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".3525" = load i32, ptr %"R25"
  %".3526" = load i32, ptr %"R24"
  %"mul.65" = mul i32 %".3525", %".3526"
  %"add.186" = add i32 %"mul.65", %"Arg_4"
  store i32 %"add.186", ptr %"R12"
  ; LDG.E.SYS R39, [R36]
  %".3529" = load i32, ptr %"R36"
  %"zext.388" = zext i32 %".3529" to i64
  %".3530" = load i32, ptr %"R37"
  %"zext.389" = zext i32 %".3530" to i64
  %"shl.207" = shl i64 %"zext.389", 32
  %"or.192" = or i64 %"shl.207", %"zext.388"
  %".3531" = add i64 %"or.192", 0
  %"for_LDG.187" = inttoptr i64 %".3531" to ptr
  %".3532" = load float, ptr %"for_LDG.187"
  %".3533" = bitcast ptr %"R39" to ptr
  store float %".3532", ptr %".3533"
  ; LDG.E.SYS R41, [R8]
  %".3536" = load i32, ptr %"R8"
  %"zext.390" = zext i32 %".3536" to i64
  %".3537" = load i32, ptr %"R9"
  %"zext.391" = zext i32 %".3537" to i64
  %"shl.208" = shl i64 %"zext.391", 32
  %"or.193" = or i64 %"shl.208", %"zext.390"
  %".3538" = add i64 %"or.193", 0
  %"for_LDG.188" = inttoptr i64 %".3538" to ptr
  %".3539" = load float, ptr %"for_LDG.188"
  %".3540" = bitcast ptr %"R41" to ptr
  store float %".3539", ptr %".3540"
  ; LDG.E.SYS R40, [R12]
  %".3543" = load i32, ptr %"R12"
  %"zext.392" = zext i32 %".3543" to i64
  %".3544" = load i32, ptr %"R13"
  %"zext.393" = zext i32 %".3544" to i64
  %"shl.209" = shl i64 %"zext.393", 32
  %"or.194" = or i64 %"shl.209", %"zext.392"
  %".3545" = add i64 %"or.194", 0
  %"for_LDG.189" = inttoptr i64 %".3545" to ptr
  %".3546" = load float, ptr %"for_LDG.189"
  %".3547" = bitcast ptr %"R40" to ptr
  store float %".3546", ptr %".3547"
  ; LDG.E.SYS R52, [R36+0x4]
  %".3550" = load i32, ptr %"R36"
  %"zext.394" = zext i32 %".3550" to i64
  %".3551" = load i32, ptr %"R37"
  %"zext.395" = zext i32 %".3551" to i64
  %"shl.210" = shl i64 %"zext.395", 32
  %"or.195" = or i64 %"shl.210", %"zext.394"
  %".3552" = add i64 %"or.195", 4
  %"for_LDG.190" = inttoptr i64 %".3552" to ptr
  %".3553" = load float, ptr %"for_LDG.190"
  %".3554" = bitcast ptr %"R52" to ptr
  store float %".3553", ptr %".3554"
  ; LDG.E.SYS R53, [R8+0x4]
  %".3557" = load i32, ptr %"R8"
  %"zext.396" = zext i32 %".3557" to i64
  %".3558" = load i32, ptr %"R9"
  %"zext.397" = zext i32 %".3558" to i64
  %"shl.211" = shl i64 %"zext.397", 32
  %"or.196" = or i64 %"shl.211", %"zext.396"
  %".3559" = add i64 %"or.196", 4
  %"for_LDG.191" = inttoptr i64 %".3559" to ptr
  %".3560" = load float, ptr %"for_LDG.191"
  %".3561" = bitcast ptr %"R53" to ptr
  store float %".3560", ptr %".3561"
  ; LDG.E.SYS R55, [R12+0x4]
  %".3564" = load i32, ptr %"R12"
  %"zext.398" = zext i32 %".3564" to i64
  %".3565" = load i32, ptr %"R13"
  %"zext.399" = zext i32 %".3565" to i64
  %"shl.212" = shl i64 %"zext.399", 32
  %"or.197" = or i64 %"shl.212", %"zext.398"
  %".3566" = add i64 %"or.197", 4
  %"for_LDG.192" = inttoptr i64 %".3566" to ptr
  %".3567" = load float, ptr %"for_LDG.192"
  %".3568" = bitcast ptr %"R55" to ptr
  store float %".3567", ptr %".3568"
  ; IADD3 R11, R23, 0x4, RZ
  %".3571" = load i32, ptr %"R23"
  %"add.187" = add i32 %".3571", 4
  %"add.188" = add i32 %"add.187", 0
  store i32 %"add.188", ptr %"R11"
  ; LDG.E.SYS R50, [R36+0x8]
  %".3574" = load i32, ptr %"R36"
  %"zext.400" = zext i32 %".3574" to i64
  %".3575" = load i32, ptr %"R37"
  %"zext.401" = zext i32 %".3575" to i64
  %"shl.213" = shl i64 %"zext.401", 32
  %"or.198" = or i64 %"shl.213", %"zext.400"
  %".3576" = add i64 %"or.198", 8
  %"for_LDG.193" = inttoptr i64 %".3576" to ptr
  %".3577" = load float, ptr %"for_LDG.193"
  %".3578" = bitcast ptr %"R50" to ptr
  store float %".3577", ptr %".3578"
  ; IADD3 R7, R35, 0x4, RZ
  %".3581" = load i32, ptr %"R35"
  %"add.189" = add i32 %".3581", 4
  %"add.190" = add i32 %"add.189", 0
  store i32 %"add.190", ptr %"R7"
  ; LDG.E.SYS R43, [R8+0x8]
  %".3584" = load i32, ptr %"R8"
  %"zext.402" = zext i32 %".3584" to i64
  %".3585" = load i32, ptr %"R9"
  %"zext.403" = zext i32 %".3585" to i64
  %"shl.214" = shl i64 %"zext.403", 32
  %"or.199" = or i64 %"shl.214", %"zext.402"
  %".3586" = add i64 %"or.199", 8
  %"for_LDG.194" = inttoptr i64 %".3586" to ptr
  %".3587" = load float, ptr %"for_LDG.194"
  %".3588" = bitcast ptr %"R43" to ptr
  store float %".3587", ptr %".3588"
  ; IADD3 R5, R25, 0x4, RZ
  %".3591" = load i32, ptr %"R25"
  %"add.191" = add i32 %".3591", 4
  %"add.192" = add i32 %"add.191", 0
  store i32 %"add.192", ptr %"R5"
  ; LDG.E.SYS R51, [R12+0x8]
  %".3594" = load i32, ptr %"R12"
  %"zext.404" = zext i32 %".3594" to i64
  %".3595" = load i32, ptr %"R13"
  %"zext.405" = zext i32 %".3595" to i64
  %"shl.215" = shl i64 %"zext.405", 32
  %"or.200" = or i64 %"shl.215", %"zext.404"
  %".3596" = add i64 %"or.200", 8
  %"for_LDG.195" = inttoptr i64 %".3596" to ptr
  %".3597" = load float, ptr %"for_LDG.195"
  %".3598" = bitcast ptr %"R51" to ptr
  store float %".3597", ptr %".3598"
  ; LDG.E.SYS R47, [R36+0xc]
  %".3601" = load i32, ptr %"R36"
  %"zext.406" = zext i32 %".3601" to i64
  %".3602" = load i32, ptr %"R37"
  %"zext.407" = zext i32 %".3602" to i64
  %"shl.216" = shl i64 %"zext.407", 32
  %"or.201" = or i64 %"shl.216", %"zext.406"
  %".3603" = add i64 %"or.201", 12
  %"for_LDG.196" = inttoptr i64 %".3603" to ptr
  %".3604" = load float, ptr %"for_LDG.196"
  %".3605" = bitcast ptr %"R47" to ptr
  store float %".3604", ptr %".3605"
  ; LDG.E.SYS R54, [R8+0xc]
  %".3608" = load i32, ptr %"R8"
  %"zext.408" = zext i32 %".3608" to i64
  %".3609" = load i32, ptr %"R9"
  %"zext.409" = zext i32 %".3609" to i64
  %"shl.217" = shl i64 %"zext.409", 32
  %"or.202" = or i64 %"shl.217", %"zext.408"
  %".3610" = add i64 %"or.202", 12
  %"for_LDG.197" = inttoptr i64 %".3610" to ptr
  %".3611" = load float, ptr %"for_LDG.197"
  %".3612" = bitcast ptr %"R54" to ptr
  store float %".3611", ptr %".3612"
  ; LDG.E.SYS R58, [R12+0xc]
  %".3615" = load i32, ptr %"R12"
  %"zext.410" = zext i32 %".3615" to i64
  %".3616" = load i32, ptr %"R13"
  %"zext.411" = zext i32 %".3616" to i64
  %"shl.218" = shl i64 %"zext.411", 32
  %"or.203" = or i64 %"shl.218", %"zext.410"
  %".3617" = add i64 %"or.203", 12
  %"for_LDG.198" = inttoptr i64 %".3617" to ptr
  %".3618" = load float, ptr %"for_LDG.198"
  %".3619" = bitcast ptr %"R58" to ptr
  store float %".3618", ptr %".3619"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".3622" = load i32, ptr %"R11"
  %".3623" = load i32, ptr %"R24"
  %"mul.66" = mul i32 %".3622", %".3623"
  %"add.193" = add i32 %"mul.66", %"Arg_3"
  store i32 %"add.193", ptr %"R10"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".3626" = load i32, ptr %"R7"
  %".3627" = load i32, ptr %"R24"
  %"mul.67" = mul i32 %".3626", %".3627"
  %"add.194" = add i32 %"mul.67", %"Arg_4"
  store i32 %"add.194", ptr %"R6"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".3630" = load i32, ptr %"R5"
  %".3631" = load i32, ptr %"R24"
  %"mul.68" = mul i32 %".3630", %".3631"
  %"add.195" = add i32 %"mul.68", %"Arg_4"
  store i32 %"add.195", ptr %"R4"
  ; LDG.E.SYS R46, [R10]
  %".3634" = load i32, ptr %"R10"
  %"zext.412" = zext i32 %".3634" to i64
  %".3635" = load i32, ptr %"R11"
  %"zext.413" = zext i32 %".3635" to i64
  %"shl.219" = shl i64 %"zext.413", 32
  %"or.204" = or i64 %"shl.219", %"zext.412"
  %".3636" = add i64 %"or.204", 0
  %"for_LDG.199" = inttoptr i64 %".3636" to ptr
  %".3637" = load float, ptr %"for_LDG.199"
  %".3638" = bitcast ptr %"R46" to ptr
  store float %".3637", ptr %".3638"
  ; LDG.E.SYS R42, [R6]
  %".3641" = load i32, ptr %"R6"
  %"zext.414" = zext i32 %".3641" to i64
  %".3642" = load i32, ptr %"R7"
  %"zext.415" = zext i32 %".3642" to i64
  %"shl.220" = shl i64 %"zext.415", 32
  %"or.205" = or i64 %"shl.220", %"zext.414"
  %".3643" = add i64 %"or.205", 0
  %"for_LDG.200" = inttoptr i64 %".3643" to ptr
  %".3644" = load float, ptr %"for_LDG.200"
  %".3645" = bitcast ptr %"R42" to ptr
  store float %".3644", ptr %".3645"
  ; LDG.E.SYS R45, [R4]
  %".3648" = load i32, ptr %"R4"
  %"zext.416" = zext i32 %".3648" to i64
  %".3649" = load i32, ptr %"R5"
  %"zext.417" = zext i32 %".3649" to i64
  %"shl.221" = shl i64 %"zext.417", 32
  %"or.206" = or i64 %"shl.221", %"zext.416"
  %".3650" = add i64 %"or.206", 0
  %"for_LDG.201" = inttoptr i64 %".3650" to ptr
  %".3651" = load float, ptr %"for_LDG.201"
  %".3652" = bitcast ptr %"R45" to ptr
  store float %".3651", ptr %".3652"
  ; LDG.E.SYS R34, [R10+0x4]
  %".3655" = load i32, ptr %"R10"
  %"zext.418" = zext i32 %".3655" to i64
  %".3656" = load i32, ptr %"R11"
  %"zext.419" = zext i32 %".3656" to i64
  %"shl.222" = shl i64 %"zext.419", 32
  %"or.207" = or i64 %"shl.222", %"zext.418"
  %".3657" = add i64 %"or.207", 4
  %"for_LDG.202" = inttoptr i64 %".3657" to ptr
  %".3658" = load float, ptr %"for_LDG.202"
  %".3659" = bitcast ptr %"R34" to ptr
  store float %".3658", ptr %".3659"
  ; LDG.E.SYS R37, [R6+0x4]
  %".3662" = load i32, ptr %"R6"
  %"zext.420" = zext i32 %".3662" to i64
  %".3663" = load i32, ptr %"R7"
  %"zext.421" = zext i32 %".3663" to i64
  %"shl.223" = shl i64 %"zext.421", 32
  %"or.208" = or i64 %"shl.223", %"zext.420"
  %".3664" = add i64 %"or.208", 4
  %"for_LDG.203" = inttoptr i64 %".3664" to ptr
  %".3665" = load float, ptr %"for_LDG.203"
  %".3666" = bitcast ptr %"R37" to ptr
  store float %".3665", ptr %".3666"
  ; IADD3 R9, R23, 0x8, RZ
  %".3669" = load i32, ptr %"R23"
  %"add.196" = add i32 %".3669", 8
  %"add.197" = add i32 %"add.196", 0
  store i32 %"add.197", ptr %"R9"
  ; LDG.E.SYS R36, [R10+0x8]
  %".3672" = load i32, ptr %"R10"
  %"zext.422" = zext i32 %".3672" to i64
  %".3673" = load i32, ptr %"R11"
  %"zext.423" = zext i32 %".3673" to i64
  %"shl.224" = shl i64 %"zext.423", 32
  %"or.209" = or i64 %"shl.224", %"zext.422"
  %".3674" = add i64 %"or.209", 8
  %"for_LDG.204" = inttoptr i64 %".3674" to ptr
  %".3675" = load float, ptr %"for_LDG.204"
  %".3676" = bitcast ptr %"R36" to ptr
  store float %".3675", ptr %".3676"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".3679" = load i32, ptr %"R9"
  %".3680" = load i32, ptr %"R24"
  %"mul.69" = mul i32 %".3679", %".3680"
  %"add.198" = add i32 %"mul.69", %"Arg_3"
  store i32 %"add.198", ptr %"R8"
  ; LDG.E.SYS R38, [R10+0xc]
  %".3683" = load i32, ptr %"R10"
  %"zext.424" = zext i32 %".3683" to i64
  %".3684" = load i32, ptr %"R11"
  %"zext.425" = zext i32 %".3684" to i64
  %"shl.225" = shl i64 %"zext.425", 32
  %"or.210" = or i64 %"shl.225", %"zext.424"
  %".3685" = add i64 %"or.210", 12
  %"for_LDG.205" = inttoptr i64 %".3685" to ptr
  %".3686" = load float, ptr %"for_LDG.205"
  %".3687" = bitcast ptr %"R38" to ptr
  store float %".3686", ptr %".3687"
  ; IADD3 R13, R23, 0xc, RZ
  %".3690" = load i32, ptr %"R23"
  %"add.199" = add i32 %".3690", 12
  %"add.200" = add i32 %"add.199", 0
  store i32 %"add.200", ptr %"R13"
  ; IADD3 R11, R35, 0x8, RZ
  %".3693" = load i32, ptr %"R35"
  %"add.201" = add i32 %".3693", 8
  %"add.202" = add i32 %"add.201", 0
  store i32 %"add.202", ptr %"R11"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".3696" = load i32, ptr %"R13"
  %".3697" = load i32, ptr %"R24"
  %"mul.70" = mul i32 %".3696", %".3697"
  %"add.203" = add i32 %"mul.70", %"Arg_3"
  store i32 %"add.203", ptr %"R12"
  ; FFMA R57, R41, R39, R44
  %".3700" = load float, ptr %"R41"
  %".3701" = load float, ptr %"R39"
  %".3702" = load float, ptr %"R44"
  %"fmul.169" = fmul float %".3700", %".3701"
  %"fadd.144" = fadd float %"fmul.169", %".3702"
  %".3703" = bitcast ptr %"R57" to ptr
  store float %"fadd.144", ptr %".3703"
  ; LDG.E.SYS R41, [R8]
  %".3706" = load i32, ptr %"R8"
  %"zext.426" = zext i32 %".3706" to i64
  %".3707" = load i32, ptr %"R9"
  %"zext.427" = zext i32 %".3707" to i64
  %"shl.226" = shl i64 %"zext.427", 32
  %"or.211" = or i64 %"shl.226", %"zext.426"
  %".3708" = add i64 %"or.211", 0
  %"for_LDG.206" = inttoptr i64 %".3708" to ptr
  %".3709" = load float, ptr %"for_LDG.206"
  %".3710" = bitcast ptr %"R41" to ptr
  store float %".3709", ptr %".3710"
  ; FFMA R56, R39, R40, R56
  %".3713" = load float, ptr %"R39"
  %".3714" = load float, ptr %"R40"
  %".3715" = load float, ptr %"R56"
  %"fmul.170" = fmul float %".3713", %".3714"
  %"fadd.145" = fadd float %"fmul.170", %".3715"
  %".3716" = bitcast ptr %"R56" to ptr
  store float %"fadd.145", ptr %".3716"
  ; LDG.E.SYS R40, [R8+0x4]
  %".3719" = load i32, ptr %"R8"
  %"zext.428" = zext i32 %".3719" to i64
  %".3720" = load i32, ptr %"R9"
  %"zext.429" = zext i32 %".3720" to i64
  %"shl.227" = shl i64 %"zext.429", 32
  %"or.212" = or i64 %"shl.227", %"zext.428"
  %".3721" = add i64 %"or.212", 4
  %"for_LDG.207" = inttoptr i64 %".3721" to ptr
  %".3722" = load float, ptr %"for_LDG.207"
  %".3723" = bitcast ptr %"R40" to ptr
  store float %".3722", ptr %".3723"
  ; LDG.E.SYS R39, [R8+0x8]
  %".3726" = load i32, ptr %"R8"
  %"zext.430" = zext i32 %".3726" to i64
  %".3727" = load i32, ptr %"R9"
  %"zext.431" = zext i32 %".3727" to i64
  %"shl.228" = shl i64 %"zext.431", 32
  %"or.213" = or i64 %"shl.228", %"zext.430"
  %".3728" = add i64 %"or.213", 8
  %"for_LDG.208" = inttoptr i64 %".3728" to ptr
  %".3729" = load float, ptr %"for_LDG.208"
  %".3730" = bitcast ptr %"R39" to ptr
  store float %".3729", ptr %".3730"
  ; FFMA R57, R53, R52, R57
  %".3733" = load float, ptr %"R53"
  %".3734" = load float, ptr %"R52"
  %".3735" = load float, ptr %"R57"
  %"fmul.171" = fmul float %".3733", %".3734"
  %"fadd.146" = fadd float %"fmul.171", %".3735"
  %".3736" = bitcast ptr %"R57" to ptr
  store float %"fadd.146", ptr %".3736"
  ; LDG.E.SYS R44, [R8+0xc]
  %".3739" = load i32, ptr %"R8"
  %"zext.432" = zext i32 %".3739" to i64
  %".3740" = load i32, ptr %"R9"
  %"zext.433" = zext i32 %".3740" to i64
  %"shl.229" = shl i64 %"zext.433", 32
  %"or.214" = or i64 %"shl.229", %"zext.432"
  %".3741" = add i64 %"or.214", 12
  %"for_LDG.209" = inttoptr i64 %".3741" to ptr
  %".3742" = load float, ptr %"for_LDG.209"
  %".3743" = bitcast ptr %"R44" to ptr
  store float %".3742", ptr %".3743"
  ; FFMA R59, R52, R55, R56
  %".3746" = load float, ptr %"R52"
  %".3747" = load float, ptr %"R55"
  %".3748" = load float, ptr %"R56"
  %"fmul.172" = fmul float %".3746", %".3747"
  %"fadd.147" = fadd float %"fmul.172", %".3748"
  %".3749" = bitcast ptr %"R59" to ptr
  store float %"fadd.147", ptr %".3749"
  ; LDG.E.SYS R55, [R12]
  %".3752" = load i32, ptr %"R12"
  %"zext.434" = zext i32 %".3752" to i64
  %".3753" = load i32, ptr %"R13"
  %"zext.435" = zext i32 %".3753" to i64
  %"shl.230" = shl i64 %"zext.435", 32
  %"or.215" = or i64 %"shl.230", %"zext.434"
  %".3754" = add i64 %"or.215", 0
  %"for_LDG.210" = inttoptr i64 %".3754" to ptr
  %".3755" = load float, ptr %"for_LDG.210"
  %".3756" = bitcast ptr %"R55" to ptr
  store float %".3755", ptr %".3756"
  ; LDG.E.SYS R53, [R12+0x4]
  %".3759" = load i32, ptr %"R12"
  %"zext.436" = zext i32 %".3759" to i64
  %".3760" = load i32, ptr %"R13"
  %"zext.437" = zext i32 %".3760" to i64
  %"shl.231" = shl i64 %"zext.437", 32
  %"or.216" = or i64 %"shl.231", %"zext.436"
  %".3761" = add i64 %"or.216", 4
  %"for_LDG.211" = inttoptr i64 %".3761" to ptr
  %".3762" = load float, ptr %"for_LDG.211"
  %".3763" = bitcast ptr %"R53" to ptr
  store float %".3762", ptr %".3763"
  ; FFMA R43, R43, R50, R57
  %".3766" = load float, ptr %"R43"
  %".3767" = load float, ptr %"R50"
  %".3768" = load float, ptr %"R57"
  %"fmul.173" = fmul float %".3766", %".3767"
  %"fadd.148" = fadd float %"fmul.173", %".3768"
  %".3769" = bitcast ptr %"R43" to ptr
  store float %"fadd.148", ptr %".3769"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".3772" = load i32, ptr %"R11"
  %".3773" = load i32, ptr %"R24"
  %"mul.71" = mul i32 %".3772", %".3773"
  %"add.204" = add i32 %"mul.71", %"Arg_4"
  store i32 %"add.204", ptr %"R8"
  ; LDG.E.SYS R52, [R12+0x8]
  %".3776" = load i32, ptr %"R12"
  %"zext.438" = zext i32 %".3776" to i64
  %".3777" = load i32, ptr %"R13"
  %"zext.439" = zext i32 %".3777" to i64
  %"shl.232" = shl i64 %"zext.439", 32
  %"or.217" = or i64 %"shl.232", %"zext.438"
  %".3778" = add i64 %"or.217", 8
  %"for_LDG.212" = inttoptr i64 %".3778" to ptr
  %".3779" = load float, ptr %"for_LDG.212"
  %".3780" = bitcast ptr %"R52" to ptr
  store float %".3779", ptr %".3780"
  ; FFMA R51, R50, R51, R59
  %".3783" = load float, ptr %"R50"
  %".3784" = load float, ptr %"R51"
  %".3785" = load float, ptr %"R59"
  %"fmul.174" = fmul float %".3783", %".3784"
  %"fadd.149" = fadd float %"fmul.174", %".3785"
  %".3786" = bitcast ptr %"R51" to ptr
  store float %"fadd.149", ptr %".3786"
  ; IADD3 R57, R25, 0x8, RZ
  %".3789" = load i32, ptr %"R25"
  %"add.205" = add i32 %".3789", 8
  %"add.206" = add i32 %"add.205", 0
  store i32 %"add.206", ptr %"R57"
  ; LDG.E.SYS R59, [R4+0xc]
  %".3792" = load i32, ptr %"R4"
  %"zext.440" = zext i32 %".3792" to i64
  %".3793" = load i32, ptr %"R5"
  %"zext.441" = zext i32 %".3793" to i64
  %"shl.233" = shl i64 %"zext.441", 32
  %"or.218" = or i64 %"shl.233", %"zext.440"
  %".3794" = add i64 %"or.218", 12
  %"for_LDG.213" = inttoptr i64 %".3794" to ptr
  %".3795" = load float, ptr %"for_LDG.213"
  %".3796" = bitcast ptr %"R59" to ptr
  store float %".3795", ptr %".3796"
  ; FFMA R61, R54, R47, R43
  %".3799" = load float, ptr %"R54"
  %".3800" = load float, ptr %"R47"
  %".3801" = load float, ptr %"R43"
  %"fmul.175" = fmul float %".3799", %".3800"
  %"fadd.150" = fadd float %"fmul.175", %".3801"
  %".3802" = bitcast ptr %"R61" to ptr
  store float %"fadd.150", ptr %".3802"
  ; LDG.E.SYS R50, [R8]
  %".3805" = load i32, ptr %"R8"
  %"zext.442" = zext i32 %".3805" to i64
  %".3806" = load i32, ptr %"R9"
  %"zext.443" = zext i32 %".3806" to i64
  %"shl.234" = shl i64 %"zext.443", 32
  %"or.219" = or i64 %"shl.234", %"zext.442"
  %".3807" = add i64 %"or.219", 0
  %"for_LDG.214" = inttoptr i64 %".3807" to ptr
  %".3808" = load float, ptr %"for_LDG.214"
  %".3809" = bitcast ptr %"R50" to ptr
  store float %".3808", ptr %".3809"
  ; FFMA R58, R47, R58, R51
  %".3812" = load float, ptr %"R47"
  %".3813" = load float, ptr %"R58"
  %".3814" = load float, ptr %"R51"
  %"fmul.176" = fmul float %".3812", %".3813"
  %"fadd.151" = fadd float %"fmul.176", %".3814"
  %".3815" = bitcast ptr %"R58" to ptr
  store float %"fadd.151", ptr %".3815"
  ; LDG.E.SYS R43, [R6+0x8]
  %".3818" = load i32, ptr %"R6"
  %"zext.444" = zext i32 %".3818" to i64
  %".3819" = load i32, ptr %"R7"
  %"zext.445" = zext i32 %".3819" to i64
  %"shl.235" = shl i64 %"zext.445", 32
  %"or.220" = or i64 %"shl.235", %"zext.444"
  %".3820" = add i64 %"or.220", 8
  %"for_LDG.215" = inttoptr i64 %".3820" to ptr
  %".3821" = load float, ptr %"for_LDG.215"
  %".3822" = bitcast ptr %"R43" to ptr
  store float %".3821", ptr %".3822"
  ; LDG.E.SYS R47, [R4+0x4]
  %".3825" = load i32, ptr %"R4"
  %"zext.446" = zext i32 %".3825" to i64
  %".3826" = load i32, ptr %"R5"
  %"zext.447" = zext i32 %".3826" to i64
  %"shl.236" = shl i64 %"zext.447", 32
  %"or.221" = or i64 %"shl.236", %"zext.446"
  %".3827" = add i64 %"or.221", 4
  %"for_LDG.216" = inttoptr i64 %".3827" to ptr
  %".3828" = load float, ptr %"for_LDG.216"
  %".3829" = bitcast ptr %"R47" to ptr
  store float %".3828", ptr %".3829"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".3832" = load i32, ptr %"R57"
  %".3833" = load i32, ptr %"R24"
  %"mul.72" = mul i32 %".3832", %".3833"
  %"add.207" = add i32 %"mul.72", %"Arg_4"
  store i32 %"add.207", ptr %"R10"
  ; LDG.E.SYS R51, [R4+0x8]
  %".3836" = load i32, ptr %"R4"
  %"zext.448" = zext i32 %".3836" to i64
  %".3837" = load i32, ptr %"R5"
  %"zext.449" = zext i32 %".3837" to i64
  %"shl.237" = shl i64 %"zext.449", 32
  %"or.222" = or i64 %"shl.237", %"zext.448"
  %".3838" = add i64 %"or.222", 8
  %"for_LDG.217" = inttoptr i64 %".3838" to ptr
  %".3839" = load float, ptr %"for_LDG.217"
  %".3840" = bitcast ptr %"R51" to ptr
  store float %".3839", ptr %".3840"
  ; LDG.E.SYS R57, [R6+0xc]
  %".3843" = load i32, ptr %"R6"
  %"zext.450" = zext i32 %".3843" to i64
  %".3844" = load i32, ptr %"R7"
  %"zext.451" = zext i32 %".3844" to i64
  %"shl.238" = shl i64 %"zext.451", 32
  %"or.223" = or i64 %"shl.238", %"zext.450"
  %".3845" = add i64 %"or.223", 12
  %"for_LDG.218" = inttoptr i64 %".3845" to ptr
  %".3846" = load float, ptr %"for_LDG.218"
  %".3847" = bitcast ptr %"R57" to ptr
  store float %".3846", ptr %".3847"
  ; FFMA R42, R42, R46, R61
  %".3850" = load float, ptr %"R42"
  %".3851" = load float, ptr %"R46"
  %".3852" = load float, ptr %"R61"
  %"fmul.177" = fmul float %".3850", %".3851"
  %"fadd.152" = fadd float %"fmul.177", %".3852"
  %".3853" = bitcast ptr %"R42" to ptr
  store float %"fadd.152", ptr %".3853"
  ; IADD3 R25, R25, 0xc, RZ
  %".3856" = load i32, ptr %"R25"
  %"add.208" = add i32 %".3856", 12
  %"add.209" = add i32 %"add.208", 0
  store i32 %"add.209", ptr %"R25"
  ; LDG.E.SYS R56, [R12+0xc]
  %".3859" = load i32, ptr %"R12"
  %"zext.452" = zext i32 %".3859" to i64
  %".3860" = load i32, ptr %"R13"
  %"zext.453" = zext i32 %".3860" to i64
  %"shl.239" = shl i64 %"zext.453", 32
  %"or.224" = or i64 %"shl.239", %"zext.452"
  %".3861" = add i64 %"or.224", 12
  %"for_LDG.219" = inttoptr i64 %".3861" to ptr
  %".3862" = load float, ptr %"for_LDG.219"
  %".3863" = bitcast ptr %"R56" to ptr
  store float %".3862", ptr %".3863"
  ; FFMA R45, R46, R45, R58
  %".3866" = load float, ptr %"R46"
  %".3867" = load float, ptr %"R45"
  %".3868" = load float, ptr %"R58"
  %"fmul.178" = fmul float %".3866", %".3867"
  %"fadd.153" = fadd float %"fmul.178", %".3868"
  %".3869" = bitcast ptr %"R45" to ptr
  store float %"fadd.153", ptr %".3869"
  ; LDG.E.SYS R46, [R10]
  %".3872" = load i32, ptr %"R10"
  %"zext.454" = zext i32 %".3872" to i64
  %".3873" = load i32, ptr %"R11"
  %"zext.455" = zext i32 %".3873" to i64
  %"shl.240" = shl i64 %"zext.455", 32
  %"or.225" = or i64 %"shl.240", %"zext.454"
  %".3874" = add i64 %"or.225", 0
  %"for_LDG.220" = inttoptr i64 %".3874" to ptr
  %".3875" = load float, ptr %"for_LDG.220"
  %".3876" = bitcast ptr %"R46" to ptr
  store float %".3875", ptr %".3876"
  ; LDG.E.SYS R61, [R8+0x4]
  %".3879" = load i32, ptr %"R8"
  %"zext.456" = zext i32 %".3879" to i64
  %".3880" = load i32, ptr %"R9"
  %"zext.457" = zext i32 %".3880" to i64
  %"shl.241" = shl i64 %"zext.457", 32
  %"or.226" = or i64 %"shl.241", %"zext.456"
  %".3881" = add i64 %"or.226", 4
  %"for_LDG.221" = inttoptr i64 %".3881" to ptr
  %".3882" = load float, ptr %"for_LDG.221"
  %".3883" = bitcast ptr %"R61" to ptr
  store float %".3882", ptr %".3883"
  ; IADD3 R13, R35, 0xc, RZ
  %".3886" = load i32, ptr %"R35"
  %"add.210" = add i32 %".3886", 12
  %"add.211" = add i32 %"add.210", 0
  store i32 %"add.211", ptr %"R13"
  ; LDG.E.SYS R35, [R10+0x4]
  %".3889" = load i32, ptr %"R10"
  %"zext.458" = zext i32 %".3889" to i64
  %".3890" = load i32, ptr %"R11"
  %"zext.459" = zext i32 %".3890" to i64
  %"shl.242" = shl i64 %"zext.459", 32
  %"or.227" = or i64 %"shl.242", %"zext.458"
  %".3891" = add i64 %"or.227", 4
  %"for_LDG.222" = inttoptr i64 %".3891" to ptr
  %".3892" = load float, ptr %"for_LDG.222"
  %".3893" = bitcast ptr %"R35" to ptr
  store float %".3892", ptr %".3893"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".3896" = load i32, ptr %"R13"
  %".3897" = load i32, ptr %"R24"
  %"mul.73" = mul i32 %".3896", %".3897"
  %"add.212" = add i32 %"mul.73", %"Arg_4"
  store i32 %"add.212", ptr %"R12"
  ; LDG.E.SYS R6, [R8+0x8]
  %".3900" = load i32, ptr %"R8"
  %"zext.460" = zext i32 %".3900" to i64
  %".3901" = load i32, ptr %"R9"
  %"zext.461" = zext i32 %".3901" to i64
  %"shl.243" = shl i64 %"zext.461", 32
  %"or.228" = or i64 %"shl.243", %"zext.460"
  %".3902" = add i64 %"or.228", 8
  %"for_LDG.223" = inttoptr i64 %".3902" to ptr
  %".3903" = load float, ptr %"for_LDG.223"
  %".3904" = bitcast ptr %"R6" to ptr
  store float %".3903", ptr %".3904"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".3907" = load i32, ptr %"R25"
  %".3908" = load i32, ptr %"R24"
  %"mul.74" = mul i32 %".3907", %".3908"
  %"add.213" = add i32 %"mul.74", %"Arg_4"
  store i32 %"add.213", ptr %"R24"
  ; LDG.E.SYS R4, [R10+0x8]
  %".3911" = load i32, ptr %"R10"
  %"zext.462" = zext i32 %".3911" to i64
  %".3912" = load i32, ptr %"R11"
  %"zext.463" = zext i32 %".3912" to i64
  %"shl.244" = shl i64 %"zext.463", 32
  %"or.229" = or i64 %"shl.244", %"zext.462"
  %".3913" = add i64 %"or.229", 8
  %"for_LDG.224" = inttoptr i64 %".3913" to ptr
  %".3914" = load float, ptr %"for_LDG.224"
  %".3915" = bitcast ptr %"R4" to ptr
  store float %".3914", ptr %".3915"
  ; LDG.E.SYS R5, [R8+0xc]
  %".3918" = load i32, ptr %"R8"
  %"zext.464" = zext i32 %".3918" to i64
  %".3919" = load i32, ptr %"R9"
  %"zext.465" = zext i32 %".3919" to i64
  %"shl.245" = shl i64 %"zext.465", 32
  %"or.230" = or i64 %"shl.245", %"zext.464"
  %".3920" = add i64 %"or.230", 12
  %"for_LDG.225" = inttoptr i64 %".3920" to ptr
  %".3921" = load float, ptr %"for_LDG.225"
  %".3922" = bitcast ptr %"R5" to ptr
  store float %".3921", ptr %".3922"
  ; LDG.E.SYS R60, [R10+0xc]
  %".3925" = load i32, ptr %"R10"
  %"zext.466" = zext i32 %".3925" to i64
  %".3926" = load i32, ptr %"R11"
  %"zext.467" = zext i32 %".3926" to i64
  %"shl.246" = shl i64 %"zext.467", 32
  %"or.231" = or i64 %"shl.246", %"zext.466"
  %".3927" = add i64 %"or.231", 12
  %"for_LDG.226" = inttoptr i64 %".3927" to ptr
  %".3928" = load float, ptr %"for_LDG.226"
  %".3929" = bitcast ptr %"R60" to ptr
  store float %".3928", ptr %".3929"
  ; LDG.E.SYS R58, [R12]
  %".3932" = load i32, ptr %"R12"
  %"zext.468" = zext i32 %".3932" to i64
  %".3933" = load i32, ptr %"R13"
  %"zext.469" = zext i32 %".3933" to i64
  %"shl.247" = shl i64 %"zext.469", 32
  %"or.232" = or i64 %"shl.247", %"zext.468"
  %".3934" = add i64 %"or.232", 0
  %"for_LDG.227" = inttoptr i64 %".3934" to ptr
  %".3935" = load float, ptr %"for_LDG.227"
  %".3936" = bitcast ptr %"R58" to ptr
  store float %".3935", ptr %".3936"
  ; LDG.E.SYS R54, [R12+0x4]
  %".3939" = load i32, ptr %"R12"
  %"zext.470" = zext i32 %".3939" to i64
  %".3940" = load i32, ptr %"R13"
  %"zext.471" = zext i32 %".3940" to i64
  %"shl.248" = shl i64 %"zext.471", 32
  %"or.233" = or i64 %"shl.248", %"zext.470"
  %".3941" = add i64 %"or.233", 4
  %"for_LDG.228" = inttoptr i64 %".3941" to ptr
  %".3942" = load float, ptr %"for_LDG.228"
  %".3943" = bitcast ptr %"R54" to ptr
  store float %".3942", ptr %".3943"
  ; FFMA R10, R37, R34, R42
  %".3946" = load float, ptr %"R37"
  %".3947" = load float, ptr %"R34"
  %".3948" = load float, ptr %"R42"
  %"fmul.179" = fmul float %".3946", %".3947"
  %"fadd.154" = fadd float %"fmul.179", %".3948"
  %".3949" = bitcast ptr %"R10" to ptr
  store float %"fadd.154", ptr %".3949"
  ; LDG.E.SYS R37, [R24]
  %".3952" = load i32, ptr %"R24"
  %"zext.472" = zext i32 %".3952" to i64
  %".3953" = load i32, ptr %"R25"
  %"zext.473" = zext i32 %".3953" to i64
  %"shl.249" = shl i64 %"zext.473", 32
  %"or.234" = or i64 %"shl.249", %"zext.472"
  %".3954" = add i64 %"or.234", 0
  %"for_LDG.229" = inttoptr i64 %".3954" to ptr
  %".3955" = load float, ptr %"for_LDG.229"
  %".3956" = bitcast ptr %"R37" to ptr
  store float %".3955", ptr %".3956"
  ; LDG.E.SYS R42, [R24+0x4]
  %".3959" = load i32, ptr %"R24"
  %"zext.474" = zext i32 %".3959" to i64
  %".3960" = load i32, ptr %"R25"
  %"zext.475" = zext i32 %".3960" to i64
  %"shl.250" = shl i64 %"zext.475", 32
  %"or.235" = or i64 %"shl.250", %"zext.474"
  %".3961" = add i64 %"or.235", 4
  %"for_LDG.230" = inttoptr i64 %".3961" to ptr
  %".3962" = load float, ptr %"for_LDG.230"
  %".3963" = bitcast ptr %"R42" to ptr
  store float %".3962", ptr %".3963"
  ; LDG.E.SYS R7, [R12+0x8]
  %".3966" = load i32, ptr %"R12"
  %"zext.476" = zext i32 %".3966" to i64
  %".3967" = load i32, ptr %"R13"
  %"zext.477" = zext i32 %".3967" to i64
  %"shl.251" = shl i64 %"zext.477", 32
  %"or.236" = or i64 %"shl.251", %"zext.476"
  %".3968" = add i64 %"or.236", 8
  %"for_LDG.231" = inttoptr i64 %".3968" to ptr
  %".3969" = load float, ptr %"for_LDG.231"
  %".3970" = bitcast ptr %"R7" to ptr
  store float %".3969", ptr %".3970"
  ; LDG.E.SYS R9, [R24+0x8]
  %".3973" = load i32, ptr %"R24"
  %"zext.478" = zext i32 %".3973" to i64
  %".3974" = load i32, ptr %"R25"
  %"zext.479" = zext i32 %".3974" to i64
  %"shl.252" = shl i64 %"zext.479", 32
  %"or.237" = or i64 %"shl.252", %"zext.478"
  %".3975" = add i64 %"or.237", 8
  %"for_LDG.232" = inttoptr i64 %".3975" to ptr
  %".3976" = load float, ptr %"for_LDG.232"
  %".3977" = bitcast ptr %"R9" to ptr
  store float %".3976", ptr %".3977"
  ; LDG.E.SYS R8, [R24+0xc]
  %".3980" = load i32, ptr %"R24"
  %"zext.480" = zext i32 %".3980" to i64
  %".3981" = load i32, ptr %"R25"
  %"zext.481" = zext i32 %".3981" to i64
  %"shl.253" = shl i64 %"zext.481", 32
  %"or.238" = or i64 %"shl.253", %"zext.480"
  %".3982" = add i64 %"or.238", 12
  %"for_LDG.233" = inttoptr i64 %".3982" to ptr
  %".3983" = load float, ptr %"for_LDG.233"
  %".3984" = bitcast ptr %"R8" to ptr
  store float %".3983", ptr %".3984"
  ; LDG.E.SYS R13, [R12+0xc]
  %".3987" = load i32, ptr %"R12"
  %"zext.482" = zext i32 %".3987" to i64
  %".3988" = load i32, ptr %"R13"
  %"zext.483" = zext i32 %".3988" to i64
  %"shl.254" = shl i64 %"zext.483", 32
  %"or.239" = or i64 %"shl.254", %"zext.482"
  %".3989" = add i64 %"or.239", 12
  %"for_LDG.234" = inttoptr i64 %".3989" to ptr
  %".3990" = load float, ptr %"for_LDG.234"
  %".3991" = bitcast ptr %"R13" to ptr
  store float %".3990", ptr %".3991"
  ; IADD3 R22, R22, -0x10, RZ
  %".3994" = load i32, ptr %"R22"
  %"add.214" = add i32 %".3994", -16
  %"add.215" = add i32 %"add.214", 0
  store i32 %"add.215", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".3997" = load i32, ptr %"R22"
  %".3998" = load i1, ptr %"PT"
  %"cmp.37" = icmp sgt i32 %".3997", 12
  %".3999" = and i1 %"cmp.37", %".3998"
  ; IADD3 R23, R23, 0x10, RZ
  %".4001" = load i32, ptr %"R23"
  %"add.216" = add i32 %".4001", 16
  %"add.217" = add i32 %"add.216", 0
  store i32 %"add.217", ptr %"R23"
  ; FFMA R10, R43, R36, R10
  %".4004" = load float, ptr %"R43"
  %".4005" = load float, ptr %"R36"
  %".4006" = load float, ptr %"R10"
  %"fmul.180" = fmul float %".4004", %".4005"
  %"fadd.155" = fadd float %"fmul.180", %".4006"
  %".4007" = bitcast ptr %"R10" to ptr
  store float %"fadd.155", ptr %".4007"
  ; FFMA R45, R34, R47, R45
  %".4010" = load float, ptr %"R34"
  %".4011" = load float, ptr %"R47"
  %".4012" = load float, ptr %"R45"
  %"fmul.181" = fmul float %".4010", %".4011"
  %"fadd.156" = fadd float %"fmul.181", %".4012"
  %".4013" = bitcast ptr %"R45" to ptr
  store float %"fadd.156", ptr %".4013"
  ; FFMA R45, R36, R51, R45
  %".4016" = load float, ptr %"R36"
  %".4017" = load float, ptr %"R51"
  %".4018" = load float, ptr %"R45"
  %"fmul.182" = fmul float %".4016", %".4017"
  %"fadd.157" = fadd float %"fmul.182", %".4018"
  %".4019" = bitcast ptr %"R45" to ptr
  store float %"fadd.157", ptr %".4019"
  ; FFMA R10, R57, R38, R10
  %".4022" = load float, ptr %"R57"
  %".4023" = load float, ptr %"R38"
  %".4024" = load float, ptr %"R10"
  %"fmul.183" = fmul float %".4022", %".4023"
  %"fadd.158" = fadd float %"fmul.183", %".4024"
  %".4025" = bitcast ptr %"R10" to ptr
  store float %"fadd.158", ptr %".4025"
  ; FFMA R45, R38, R59, R45
  %".4028" = load float, ptr %"R38"
  %".4029" = load float, ptr %"R59"
  %".4030" = load float, ptr %"R45"
  %"fmul.184" = fmul float %".4028", %".4029"
  %"fadd.159" = fadd float %"fmul.184", %".4030"
  %".4031" = bitcast ptr %"R45" to ptr
  store float %"fadd.159", ptr %".4031"
  ; FFMA R10, R50, R41, R10
  %".4034" = load float, ptr %"R50"
  %".4035" = load float, ptr %"R41"
  %".4036" = load float, ptr %"R10"
  %"fmul.185" = fmul float %".4034", %".4035"
  %"fadd.160" = fadd float %"fmul.185", %".4036"
  %".4037" = bitcast ptr %"R10" to ptr
  store float %"fadd.160", ptr %".4037"
  ; FFMA R45, R41, R46, R45
  %".4040" = load float, ptr %"R41"
  %".4041" = load float, ptr %"R46"
  %".4042" = load float, ptr %"R45"
  %"fmul.186" = fmul float %".4040", %".4041"
  %"fadd.161" = fadd float %"fmul.186", %".4042"
  %".4043" = bitcast ptr %"R45" to ptr
  store float %"fadd.161", ptr %".4043"
  ; FFMA R10, R61, R40, R10
  %".4046" = load float, ptr %"R61"
  %".4047" = load float, ptr %"R40"
  %".4048" = load float, ptr %"R10"
  %"fmul.187" = fmul float %".4046", %".4047"
  %"fadd.162" = fadd float %"fmul.187", %".4048"
  %".4049" = bitcast ptr %"R10" to ptr
  store float %"fadd.162", ptr %".4049"
  ; FFMA R35, R40, R35, R45
  %".4052" = load float, ptr %"R40"
  %".4053" = load float, ptr %"R35"
  %".4054" = load float, ptr %"R45"
  %"fmul.188" = fmul float %".4052", %".4053"
  %"fadd.163" = fadd float %"fmul.188", %".4054"
  %".4055" = bitcast ptr %"R35" to ptr
  store float %"fadd.163", ptr %".4055"
  ; FFMA R6, R6, R39, R10
  %".4058" = load float, ptr %"R6"
  %".4059" = load float, ptr %"R39"
  %".4060" = load float, ptr %"R10"
  %"fmul.189" = fmul float %".4058", %".4059"
  %"fadd.164" = fadd float %"fmul.189", %".4060"
  %".4061" = bitcast ptr %"R6" to ptr
  store float %"fadd.164", ptr %".4061"
  ; FFMA R35, R39, R4, R35
  %".4064" = load float, ptr %"R39"
  %".4065" = load float, ptr %"R4"
  %".4066" = load float, ptr %"R35"
  %"fmul.190" = fmul float %".4064", %".4065"
  %"fadd.165" = fadd float %"fmul.190", %".4066"
  %".4067" = bitcast ptr %"R35" to ptr
  store float %"fadd.165", ptr %".4067"
  ; FFMA R5, R5, R44, R6
  %".4070" = load float, ptr %"R5"
  %".4071" = load float, ptr %"R44"
  %".4072" = load float, ptr %"R6"
  %"fmul.191" = fmul float %".4070", %".4071"
  %"fadd.166" = fadd float %"fmul.191", %".4072"
  %".4073" = bitcast ptr %"R5" to ptr
  store float %"fadd.166", ptr %".4073"
  ; FFMA R60, R44, R60, R35
  %".4076" = load float, ptr %"R44"
  %".4077" = load float, ptr %"R60"
  %".4078" = load float, ptr %"R35"
  %"fmul.192" = fmul float %".4076", %".4077"
  %"fadd.167" = fadd float %"fmul.192", %".4078"
  %".4079" = bitcast ptr %"R60" to ptr
  store float %"fadd.167", ptr %".4079"
  ; FFMA R5, R58, R55, R5
  %".4082" = load float, ptr %"R58"
  %".4083" = load float, ptr %"R55"
  %".4084" = load float, ptr %"R5"
  %"fmul.193" = fmul float %".4082", %".4083"
  %"fadd.168" = fadd float %"fmul.193", %".4084"
  %".4085" = bitcast ptr %"R5" to ptr
  store float %"fadd.168", ptr %".4085"
  ; FFMA R5, R54, R53, R5
  %".4088" = load float, ptr %"R54"
  %".4089" = load float, ptr %"R53"
  %".4090" = load float, ptr %"R5"
  %"fmul.194" = fmul float %".4088", %".4089"
  %"fadd.169" = fadd float %"fmul.194", %".4090"
  %".4091" = bitcast ptr %"R5" to ptr
  store float %"fadd.169", ptr %".4091"
  ; FFMA R37, R55, R37, R60
  %".4094" = load float, ptr %"R55"
  %".4095" = load float, ptr %"R37"
  %".4096" = load float, ptr %"R60"
  %"fmul.195" = fmul float %".4094", %".4095"
  %"fadd.170" = fadd float %"fmul.195", %".4096"
  %".4097" = bitcast ptr %"R37" to ptr
  store float %"fadd.170", ptr %".4097"
  ; FFMA R37, R53, R42, R37
  %".4100" = load float, ptr %"R53"
  %".4101" = load float, ptr %"R42"
  %".4102" = load float, ptr %"R37"
  %"fmul.196" = fmul float %".4100", %".4101"
  %"fadd.171" = fadd float %"fmul.196", %".4102"
  %".4103" = bitcast ptr %"R37" to ptr
  store float %"fadd.171", ptr %".4103"
  ; FFMA R5, R7, R52, R5
  %".4106" = load float, ptr %"R7"
  %".4107" = load float, ptr %"R52"
  %".4108" = load float, ptr %"R5"
  %"fmul.197" = fmul float %".4106", %".4107"
  %"fadd.172" = fadd float %"fmul.197", %".4108"
  %".4109" = bitcast ptr %"R5" to ptr
  store float %"fadd.172", ptr %".4109"
  ; FFMA R9, R52, R9, R37
  %".4112" = load float, ptr %"R52"
  %".4113" = load float, ptr %"R9"
  %".4114" = load float, ptr %"R37"
  %"fmul.198" = fmul float %".4112", %".4113"
  %"fadd.173" = fadd float %"fmul.198", %".4114"
  %".4115" = bitcast ptr %"R9" to ptr
  store float %"fadd.173", ptr %".4115"
  ; FFMA R44, R13, R56, R5
  %".4118" = load float, ptr %"R13"
  %".4119" = load float, ptr %"R56"
  %".4120" = load float, ptr %"R5"
  %"fmul.199" = fmul float %".4118", %".4119"
  %"fadd.174" = fadd float %"fmul.199", %".4120"
  %".4121" = bitcast ptr %"R44" to ptr
  store float %"fadd.174", ptr %".4121"
  ; FFMA R56, R56, R8, R9
  %".4124" = load float, ptr %"R56"
  %".4125" = load float, ptr %"R8"
  %".4126" = load float, ptr %"R9"
  %"fmul.200" = fmul float %".4124", %".4125"
  %"fadd.175" = fadd float %"fmul.200", %".4126"
  %".4127" = bitcast ptr %"R56" to ptr
  store float %"fadd.175", ptr %".4127"
  ; @P1 BRA `(.L_x_30)
  %".4130" = load i1, ptr %"P1"
  %".4131" = icmp ne i1 %".4130", 1
  br i1 %".4131", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".4134" = load i32, ptr %"R22"
  %".4135" = load i1, ptr %"PT"
  %"cmp.38" = icmp sgt i32 %".4134", 4
  %".4136" = and i1 %"cmp.38", %".4135"
  ; @!P1 BRA `(.L_x_31)
  %".4138" = load i1, ptr %"P1"
  %".4139" = icmp eq i1 %".4138", 1
  br i1 %".4139", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".4142" = load i32, ptr %"R0"
  %".4143" = load i32, ptr %"R23"
  %"add.218" = add i32 %".4142", %".4143"
  %"add.219" = add i32 %"add.218", 0
  store i32 %"add.219", ptr %"R5"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25"
  ; LEA R13, R2.reuse, R5, 0x2
  %".4148" = load i32, ptr %"R2"
  %".4149" = load i32, ptr %"R5"
  %"shl.255" = shl i32 %".4148", 2
  %"add.220" = add i32 %"shl.255", %".4149"
  store i32 %"add.220", ptr %"R13"
  ; IMAD R12, R2, 0x3, R5
  %".4152" = load i32, ptr %"R2"
  %".4153" = load i32, ptr %"R5"
  %"mul.75" = mul i32 %".4152", 3
  %"add.221" = add i32 %"mul.75", %".4153"
  store i32 %"add.221", ptr %"R12"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".4156" = load i32, ptr %"R23"
  %"add.222" = add i32 %".4156", 4
  %"add.223" = add i32 %"add.222", 0
  store i32 %"add.223", ptr %"R6"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".4159" = load i32, ptr %"R23"
  %".4160" = load i32, ptr %"R25"
  %"mul.76" = mul i32 %".4159", %".4160"
  %"add.224" = add i32 %"mul.76", %"Arg_3"
  store i32 %"add.224", ptr %"R8"
  ; IADD3 R24, R13, 0x4, RZ
  %".4163" = load i32, ptr %"R13"
  %"add.225" = add i32 %".4163", 4
  %"add.226" = add i32 %"add.225", 0
  store i32 %"add.226", ptr %"R24"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".4166" = load i32, ptr %"R12"
  %".4167" = load i32, ptr %"R25"
  %"mul.77" = mul i32 %".4166", %".4167"
  %"add.227" = add i32 %"mul.77", %"Arg_4"
  store i32 %"add.227", ptr %"R4"
  ; IADD3 R12, R12, 0x4, RZ
  %".4170" = load i32, ptr %"R12"
  %"add.228" = add i32 %".4170", 4
  %"add.229" = add i32 %"add.228", 0
  store i32 %"add.229", ptr %"R12"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".4173" = load i32, ptr %"R13"
  %".4174" = load i32, ptr %"R25"
  %"mul.78" = mul i32 %".4173", %".4174"
  %"add.230" = add i32 %"mul.78", %"Arg_4"
  store i32 %"add.230", ptr %"R10"
  ; LDG.E.SYS R43, [R8]
  %".4177" = load i32, ptr %"R8"
  %"zext.484" = zext i32 %".4177" to i64
  %".4178" = load i32, ptr %"R9"
  %"zext.485" = zext i32 %".4178" to i64
  %"shl.256" = shl i64 %"zext.485", 32
  %"or.240" = or i64 %"shl.256", %"zext.484"
  %".4179" = add i64 %"or.240", 0
  %"for_LDG.235" = inttoptr i64 %".4179" to ptr
  %".4180" = load float, ptr %"for_LDG.235"
  %".4181" = bitcast ptr %"R43" to ptr
  store float %".4180", ptr %".4181"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".4184" = load i32, ptr %"R6"
  %".4185" = load i32, ptr %"R25"
  %"mul.79" = mul i32 %".4184", %".4185"
  %"add.231" = add i32 %"mul.79", %"Arg_3"
  store i32 %"add.231", ptr %"R6"
  ; LDG.E.SYS R52, [R4]
  %".4188" = load i32, ptr %"R4"
  %"zext.486" = zext i32 %".4188" to i64
  %".4189" = load i32, ptr %"R5"
  %"zext.487" = zext i32 %".4189" to i64
  %"shl.257" = shl i64 %"zext.487", 32
  %"or.241" = or i64 %"shl.257", %"zext.486"
  %".4190" = add i64 %"or.241", 0
  %"for_LDG.236" = inttoptr i64 %".4190" to ptr
  %".4191" = load float, ptr %"for_LDG.236"
  %".4192" = bitcast ptr %"R52" to ptr
  store float %".4191", ptr %".4192"
  ; LDG.E.SYS R38, [R10]
  %".4195" = load i32, ptr %"R10"
  %"zext.488" = zext i32 %".4195" to i64
  %".4196" = load i32, ptr %"R11"
  %"zext.489" = zext i32 %".4196" to i64
  %"shl.258" = shl i64 %"zext.489", 32
  %"or.242" = or i64 %"shl.258", %"zext.488"
  %".4197" = add i64 %"or.242", 0
  %"for_LDG.237" = inttoptr i64 %".4197" to ptr
  %".4198" = load float, ptr %"for_LDG.237"
  %".4199" = bitcast ptr %"R38" to ptr
  store float %".4198", ptr %".4199"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".4202" = load i32, ptr %"R12"
  %".4203" = load i32, ptr %"R25"
  %"mul.80" = mul i32 %".4202", %".4203"
  %"add.232" = add i32 %"mul.80", %"Arg_4"
  store i32 %"add.232", ptr %"R12"
  ; LDG.E.SYS R36, [R8+0x4]
  %".4206" = load i32, ptr %"R8"
  %"zext.490" = zext i32 %".4206" to i64
  %".4207" = load i32, ptr %"R9"
  %"zext.491" = zext i32 %".4207" to i64
  %"shl.259" = shl i64 %"zext.491", 32
  %"or.243" = or i64 %"shl.259", %"zext.490"
  %".4208" = add i64 %"or.243", 4
  %"for_LDG.238" = inttoptr i64 %".4208" to ptr
  %".4209" = load float, ptr %"for_LDG.238"
  %".4210" = bitcast ptr %"R36" to ptr
  store float %".4209", ptr %".4210"
  ; LDG.E.SYS R41, [R4+0x4]
  %".4213" = load i32, ptr %"R4"
  %"zext.492" = zext i32 %".4213" to i64
  %".4214" = load i32, ptr %"R5"
  %"zext.493" = zext i32 %".4214" to i64
  %"shl.260" = shl i64 %"zext.493", 32
  %"or.244" = or i64 %"shl.260", %"zext.492"
  %".4215" = add i64 %"or.244", 4
  %"for_LDG.239" = inttoptr i64 %".4215" to ptr
  %".4216" = load float, ptr %"for_LDG.239"
  %".4217" = bitcast ptr %"R41" to ptr
  store float %".4216", ptr %".4217"
  ; LDG.E.SYS R39, [R10+0x4]
  %".4220" = load i32, ptr %"R10"
  %"zext.494" = zext i32 %".4220" to i64
  %".4221" = load i32, ptr %"R11"
  %"zext.495" = zext i32 %".4221" to i64
  %"shl.261" = shl i64 %"zext.495", 32
  %"or.245" = or i64 %"shl.261", %"zext.494"
  %".4222" = add i64 %"or.245", 4
  %"for_LDG.240" = inttoptr i64 %".4222" to ptr
  %".4223" = load float, ptr %"for_LDG.240"
  %".4224" = bitcast ptr %"R39" to ptr
  store float %".4223", ptr %".4224"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".4227" = load i32, ptr %"R24"
  %".4228" = load i32, ptr %"R25"
  %"mul.81" = mul i32 %".4227", %".4228"
  %"add.233" = add i32 %"mul.81", %"Arg_4"
  store i32 %"add.233", ptr %"R24"
  ; LDG.E.SYS R34, [R8+0x8]
  %".4231" = load i32, ptr %"R8"
  %"zext.496" = zext i32 %".4231" to i64
  %".4232" = load i32, ptr %"R9"
  %"zext.497" = zext i32 %".4232" to i64
  %"shl.262" = shl i64 %"zext.497", 32
  %"or.246" = or i64 %"shl.262", %"zext.496"
  %".4233" = add i64 %"or.246", 8
  %"for_LDG.241" = inttoptr i64 %".4233" to ptr
  %".4234" = load float, ptr %"for_LDG.241"
  %".4235" = bitcast ptr %"R34" to ptr
  store float %".4234", ptr %".4235"
  ; LDG.E.SYS R37, [R4+0x8]
  %".4238" = load i32, ptr %"R4"
  %"zext.498" = zext i32 %".4238" to i64
  %".4239" = load i32, ptr %"R5"
  %"zext.499" = zext i32 %".4239" to i64
  %"shl.263" = shl i64 %"zext.499", 32
  %"or.247" = or i64 %"shl.263", %"zext.498"
  %".4240" = add i64 %"or.247", 8
  %"for_LDG.242" = inttoptr i64 %".4240" to ptr
  %".4241" = load float, ptr %"for_LDG.242"
  %".4242" = bitcast ptr %"R37" to ptr
  store float %".4241", ptr %".4242"
  ; LDG.E.SYS R35, [R10+0x8]
  %".4245" = load i32, ptr %"R10"
  %"zext.500" = zext i32 %".4245" to i64
  %".4246" = load i32, ptr %"R11"
  %"zext.501" = zext i32 %".4246" to i64
  %"shl.264" = shl i64 %"zext.501", 32
  %"or.248" = or i64 %"shl.264", %"zext.500"
  %".4247" = add i64 %"or.248", 8
  %"for_LDG.243" = inttoptr i64 %".4247" to ptr
  %".4248" = load float, ptr %"for_LDG.243"
  %".4249" = bitcast ptr %"R35" to ptr
  store float %".4248", ptr %".4249"
  ; LDG.E.SYS R40, [R8+0xc]
  %".4252" = load i32, ptr %"R8"
  %"zext.502" = zext i32 %".4252" to i64
  %".4253" = load i32, ptr %"R9"
  %"zext.503" = zext i32 %".4253" to i64
  %"shl.265" = shl i64 %"zext.503", 32
  %"or.249" = or i64 %"shl.265", %"zext.502"
  %".4254" = add i64 %"or.249", 12
  %"for_LDG.244" = inttoptr i64 %".4254" to ptr
  %".4255" = load float, ptr %"for_LDG.244"
  %".4256" = bitcast ptr %"R40" to ptr
  store float %".4255", ptr %".4256"
  ; LDG.E.SYS R45, [R4+0xc]
  %".4259" = load i32, ptr %"R4"
  %"zext.504" = zext i32 %".4259" to i64
  %".4260" = load i32, ptr %"R5"
  %"zext.505" = zext i32 %".4260" to i64
  %"shl.266" = shl i64 %"zext.505", 32
  %"or.250" = or i64 %"shl.266", %"zext.504"
  %".4261" = add i64 %"or.250", 12
  %"for_LDG.245" = inttoptr i64 %".4261" to ptr
  %".4262" = load float, ptr %"for_LDG.245"
  %".4263" = bitcast ptr %"R45" to ptr
  store float %".4262", ptr %".4263"
  ; LDG.E.SYS R59, [R10+0xc]
  %".4266" = load i32, ptr %"R10"
  %"zext.506" = zext i32 %".4266" to i64
  %".4267" = load i32, ptr %"R11"
  %"zext.507" = zext i32 %".4267" to i64
  %"shl.267" = shl i64 %"zext.507", 32
  %"or.251" = or i64 %"shl.267", %"zext.506"
  %".4268" = add i64 %"or.251", 12
  %"for_LDG.246" = inttoptr i64 %".4268" to ptr
  %".4269" = load float, ptr %"for_LDG.246"
  %".4270" = bitcast ptr %"R59" to ptr
  store float %".4269", ptr %".4270"
  ; LDG.E.SYS R50, [R6]
  %".4273" = load i32, ptr %"R6"
  %"zext.508" = zext i32 %".4273" to i64
  %".4274" = load i32, ptr %"R7"
  %"zext.509" = zext i32 %".4274" to i64
  %"shl.268" = shl i64 %"zext.509", 32
  %"or.252" = or i64 %"shl.268", %"zext.508"
  %".4275" = add i64 %"or.252", 0
  %"for_LDG.247" = inttoptr i64 %".4275" to ptr
  %".4276" = load float, ptr %"for_LDG.247"
  %".4277" = bitcast ptr %"R50" to ptr
  store float %".4276", ptr %".4277"
  ; LDG.E.SYS R57, [R12]
  %".4280" = load i32, ptr %"R12"
  %"zext.510" = zext i32 %".4280" to i64
  %".4281" = load i32, ptr %"R13"
  %"zext.511" = zext i32 %".4281" to i64
  %"shl.269" = shl i64 %"zext.511", 32
  %"or.253" = or i64 %"shl.269", %"zext.510"
  %".4282" = add i64 %"or.253", 0
  %"for_LDG.248" = inttoptr i64 %".4282" to ptr
  %".4283" = load float, ptr %"for_LDG.248"
  %".4284" = bitcast ptr %"R57" to ptr
  store float %".4283", ptr %".4284"
  ; LDG.E.SYS R55, [R24]
  %".4287" = load i32, ptr %"R24"
  %"zext.512" = zext i32 %".4287" to i64
  %".4288" = load i32, ptr %"R25"
  %"zext.513" = zext i32 %".4288" to i64
  %"shl.270" = shl i64 %"zext.513", 32
  %"or.254" = or i64 %"shl.270", %"zext.512"
  %".4289" = add i64 %"or.254", 0
  %"for_LDG.249" = inttoptr i64 %".4289" to ptr
  %".4290" = load float, ptr %"for_LDG.249"
  %".4291" = bitcast ptr %"R55" to ptr
  store float %".4290", ptr %".4291"
  ; LDG.E.SYS R46, [R6+0x4]
  %".4294" = load i32, ptr %"R6"
  %"zext.514" = zext i32 %".4294" to i64
  %".4295" = load i32, ptr %"R7"
  %"zext.515" = zext i32 %".4295" to i64
  %"shl.271" = shl i64 %"zext.515", 32
  %"or.255" = or i64 %"shl.271", %"zext.514"
  %".4296" = add i64 %"or.255", 4
  %"for_LDG.250" = inttoptr i64 %".4296" to ptr
  %".4297" = load float, ptr %"for_LDG.250"
  %".4298" = bitcast ptr %"R46" to ptr
  store float %".4297", ptr %".4298"
  ; LDG.E.SYS R53, [R12+0x4]
  %".4301" = load i32, ptr %"R12"
  %"zext.516" = zext i32 %".4301" to i64
  %".4302" = load i32, ptr %"R13"
  %"zext.517" = zext i32 %".4302" to i64
  %"shl.272" = shl i64 %"zext.517", 32
  %"or.256" = or i64 %"shl.272", %"zext.516"
  %".4303" = add i64 %"or.256", 4
  %"for_LDG.251" = inttoptr i64 %".4303" to ptr
  %".4304" = load float, ptr %"for_LDG.251"
  %".4305" = bitcast ptr %"R53" to ptr
  store float %".4304", ptr %".4305"
  ; LDG.E.SYS R51, [R24+0x4]
  %".4308" = load i32, ptr %"R24"
  %"zext.518" = zext i32 %".4308" to i64
  %".4309" = load i32, ptr %"R25"
  %"zext.519" = zext i32 %".4309" to i64
  %"shl.273" = shl i64 %"zext.519", 32
  %"or.257" = or i64 %"shl.273", %"zext.518"
  %".4310" = add i64 %"or.257", 4
  %"for_LDG.252" = inttoptr i64 %".4310" to ptr
  %".4311" = load float, ptr %"for_LDG.252"
  %".4312" = bitcast ptr %"R51" to ptr
  store float %".4311", ptr %".4312"
  ; LDG.E.SYS R42, [R6+0x8]
  %".4315" = load i32, ptr %"R6"
  %"zext.520" = zext i32 %".4315" to i64
  %".4316" = load i32, ptr %"R7"
  %"zext.521" = zext i32 %".4316" to i64
  %"shl.274" = shl i64 %"zext.521", 32
  %"or.258" = or i64 %"shl.274", %"zext.520"
  %".4317" = add i64 %"or.258", 8
  %"for_LDG.253" = inttoptr i64 %".4317" to ptr
  %".4318" = load float, ptr %"for_LDG.253"
  %".4319" = bitcast ptr %"R42" to ptr
  store float %".4318", ptr %".4319"
  ; LDG.E.SYS R47, [R12+0x8]
  %".4322" = load i32, ptr %"R12"
  %"zext.522" = zext i32 %".4322" to i64
  %".4323" = load i32, ptr %"R13"
  %"zext.523" = zext i32 %".4323" to i64
  %"shl.275" = shl i64 %"zext.523", 32
  %"or.259" = or i64 %"shl.275", %"zext.522"
  %".4324" = add i64 %"or.259", 8
  %"for_LDG.254" = inttoptr i64 %".4324" to ptr
  %".4325" = load float, ptr %"for_LDG.254"
  %".4326" = bitcast ptr %"R47" to ptr
  store float %".4325", ptr %".4326"
  ; LDG.E.SYS R9, [R24+0x8]
  %".4329" = load i32, ptr %"R24"
  %"zext.524" = zext i32 %".4329" to i64
  %".4330" = load i32, ptr %"R25"
  %"zext.525" = zext i32 %".4330" to i64
  %"shl.276" = shl i64 %"zext.525", 32
  %"or.260" = or i64 %"shl.276", %"zext.524"
  %".4331" = add i64 %"or.260", 8
  %"for_LDG.255" = inttoptr i64 %".4331" to ptr
  %".4332" = load float, ptr %"for_LDG.255"
  %".4333" = bitcast ptr %"R9" to ptr
  store float %".4332", ptr %".4333"
  ; LDG.E.SYS R4, [R6+0xc]
  %".4336" = load i32, ptr %"R6"
  %"zext.526" = zext i32 %".4336" to i64
  %".4337" = load i32, ptr %"R7"
  %"zext.527" = zext i32 %".4337" to i64
  %"shl.277" = shl i64 %"zext.527", 32
  %"or.261" = or i64 %"shl.277", %"zext.526"
  %".4338" = add i64 %"or.261", 12
  %"for_LDG.256" = inttoptr i64 %".4338" to ptr
  %".4339" = load float, ptr %"for_LDG.256"
  %".4340" = bitcast ptr %"R4" to ptr
  store float %".4339", ptr %".4340"
  ; LDG.E.SYS R5, [R12+0xc]
  %".4343" = load i32, ptr %"R12"
  %"zext.528" = zext i32 %".4343" to i64
  %".4344" = load i32, ptr %"R13"
  %"zext.529" = zext i32 %".4344" to i64
  %"shl.278" = shl i64 %"zext.529", 32
  %"or.262" = or i64 %"shl.278", %"zext.528"
  %".4345" = add i64 %"or.262", 12
  %"for_LDG.257" = inttoptr i64 %".4345" to ptr
  %".4346" = load float, ptr %"for_LDG.257"
  %".4347" = bitcast ptr %"R5" to ptr
  store float %".4346", ptr %".4347"
  ; LDG.E.SYS R11, [R24+0xc]
  %".4350" = load i32, ptr %"R24"
  %"zext.530" = zext i32 %".4350" to i64
  %".4351" = load i32, ptr %"R25"
  %"zext.531" = zext i32 %".4351" to i64
  %"shl.279" = shl i64 %"zext.531", 32
  %"or.263" = or i64 %"shl.279", %"zext.530"
  %".4352" = add i64 %"or.263", 12
  %"for_LDG.258" = inttoptr i64 %".4352" to ptr
  %".4353" = load float, ptr %"for_LDG.258"
  %".4354" = bitcast ptr %"R11" to ptr
  store float %".4353", ptr %".4354"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4357" = xor i1 1, 1
  %".4358" = and i1 %".4357", 1
  %".4359" = and i1 %".4358", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".4361" = load i32, ptr %"R22"
  %"add.234" = add i32 %".4361", -8
  %"add.235" = add i32 %"add.234", 0
  store i32 %"add.235", ptr %"R22"
  ; IADD3 R23, R23, 0x8, RZ
  %".4364" = load i32, ptr %"R23"
  %"add.236" = add i32 %".4364", 8
  %"add.237" = add i32 %"add.236", 0
  store i32 %"add.237", ptr %"R23"
  ; FFMA R52, R52, R43, R44
  %".4367" = load float, ptr %"R52"
  %".4368" = load float, ptr %"R43"
  %".4369" = load float, ptr %"R44"
  %"fmul.201" = fmul float %".4367", %".4368"
  %"fadd.176" = fadd float %"fmul.201", %".4369"
  %".4370" = bitcast ptr %"R52" to ptr
  store float %"fadd.176", ptr %".4370"
  ; FFMA R38, R43, R38, R56
  %".4373" = load float, ptr %"R43"
  %".4374" = load float, ptr %"R38"
  %".4375" = load float, ptr %"R56"
  %"fmul.202" = fmul float %".4373", %".4374"
  %"fadd.177" = fadd float %"fmul.202", %".4375"
  %".4376" = bitcast ptr %"R38" to ptr
  store float %"fadd.177", ptr %".4376"
  ; FFMA R41, R41, R36, R52
  %".4379" = load float, ptr %"R41"
  %".4380" = load float, ptr %"R36"
  %".4381" = load float, ptr %"R52"
  %"fmul.203" = fmul float %".4379", %".4380"
  %"fadd.178" = fadd float %"fmul.203", %".4381"
  %".4382" = bitcast ptr %"R41" to ptr
  store float %"fadd.178", ptr %".4382"
  ; FFMA R38, R36, R39, R38
  %".4385" = load float, ptr %"R36"
  %".4386" = load float, ptr %"R39"
  %".4387" = load float, ptr %"R38"
  %"fmul.204" = fmul float %".4385", %".4386"
  %"fadd.179" = fadd float %"fmul.204", %".4387"
  %".4388" = bitcast ptr %"R38" to ptr
  store float %"fadd.179", ptr %".4388"
  ; FFMA R37, R37, R34, R41
  %".4391" = load float, ptr %"R37"
  %".4392" = load float, ptr %"R34"
  %".4393" = load float, ptr %"R41"
  %"fmul.205" = fmul float %".4391", %".4392"
  %"fadd.180" = fadd float %"fmul.205", %".4393"
  %".4394" = bitcast ptr %"R37" to ptr
  store float %"fadd.180", ptr %".4394"
  ; FFMA R35, R34, R35, R38
  %".4397" = load float, ptr %"R34"
  %".4398" = load float, ptr %"R35"
  %".4399" = load float, ptr %"R38"
  %"fmul.206" = fmul float %".4397", %".4398"
  %"fadd.181" = fadd float %"fmul.206", %".4399"
  %".4400" = bitcast ptr %"R35" to ptr
  store float %"fadd.181", ptr %".4400"
  ; FFMA R37, R45, R40, R37
  %".4403" = load float, ptr %"R45"
  %".4404" = load float, ptr %"R40"
  %".4405" = load float, ptr %"R37"
  %"fmul.207" = fmul float %".4403", %".4404"
  %"fadd.182" = fadd float %"fmul.207", %".4405"
  %".4406" = bitcast ptr %"R37" to ptr
  store float %"fadd.182", ptr %".4406"
  ; FFMA R35, R40, R59, R35
  %".4409" = load float, ptr %"R40"
  %".4410" = load float, ptr %"R59"
  %".4411" = load float, ptr %"R35"
  %"fmul.208" = fmul float %".4409", %".4410"
  %"fadd.183" = fadd float %"fmul.208", %".4411"
  %".4412" = bitcast ptr %"R35" to ptr
  store float %"fadd.183", ptr %".4412"
  ; FFMA R37, R57, R50, R37
  %".4415" = load float, ptr %"R57"
  %".4416" = load float, ptr %"R50"
  %".4417" = load float, ptr %"R37"
  %"fmul.209" = fmul float %".4415", %".4416"
  %"fadd.184" = fadd float %"fmul.209", %".4417"
  %".4418" = bitcast ptr %"R37" to ptr
  store float %"fadd.184", ptr %".4418"
  ; FFMA R35, R50, R55, R35
  %".4421" = load float, ptr %"R50"
  %".4422" = load float, ptr %"R55"
  %".4423" = load float, ptr %"R35"
  %"fmul.210" = fmul float %".4421", %".4422"
  %"fadd.185" = fadd float %"fmul.210", %".4423"
  %".4424" = bitcast ptr %"R35" to ptr
  store float %"fadd.185", ptr %".4424"
  ; FFMA R37, R53, R46, R37
  %".4427" = load float, ptr %"R53"
  %".4428" = load float, ptr %"R46"
  %".4429" = load float, ptr %"R37"
  %"fmul.211" = fmul float %".4427", %".4428"
  %"fadd.186" = fadd float %"fmul.211", %".4429"
  %".4430" = bitcast ptr %"R37" to ptr
  store float %"fadd.186", ptr %".4430"
  ; FFMA R35, R46, R51, R35
  %".4433" = load float, ptr %"R46"
  %".4434" = load float, ptr %"R51"
  %".4435" = load float, ptr %"R35"
  %"fmul.212" = fmul float %".4433", %".4434"
  %"fadd.187" = fadd float %"fmul.212", %".4435"
  %".4436" = bitcast ptr %"R35" to ptr
  store float %"fadd.187", ptr %".4436"
  ; FFMA R37, R47, R42, R37
  %".4439" = load float, ptr %"R47"
  %".4440" = load float, ptr %"R42"
  %".4441" = load float, ptr %"R37"
  %"fmul.213" = fmul float %".4439", %".4440"
  %"fadd.188" = fadd float %"fmul.213", %".4441"
  %".4442" = bitcast ptr %"R37" to ptr
  store float %"fadd.188", ptr %".4442"
  ; FFMA R9, R42, R9, R35
  %".4445" = load float, ptr %"R42"
  %".4446" = load float, ptr %"R9"
  %".4447" = load float, ptr %"R35"
  %"fmul.214" = fmul float %".4445", %".4446"
  %"fadd.189" = fadd float %"fmul.214", %".4447"
  %".4448" = bitcast ptr %"R9" to ptr
  store float %"fadd.189", ptr %".4448"
  ; FFMA R44, R5, R4, R37
  %".4451" = load float, ptr %"R5"
  %".4452" = load float, ptr %"R4"
  %".4453" = load float, ptr %"R37"
  %"fmul.215" = fmul float %".4451", %".4452"
  %"fadd.190" = fadd float %"fmul.215", %".4453"
  %".4454" = bitcast ptr %"R44" to ptr
  store float %"fadd.190", ptr %".4454"
  ; FFMA R56, R4, R11, R9
  %".4457" = load float, ptr %"R4"
  %".4458" = load float, ptr %"R11"
  %".4459" = load float, ptr %"R9"
  %"fmul.216" = fmul float %".4457", %".4458"
  %"fadd.191" = fadd float %"fmul.216", %".4459"
  %".4460" = bitcast ptr %"R56" to ptr
  store float %"fadd.191", ptr %".4460"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".4463" = load i32, ptr %"R22"
  %".4464" = load i1, ptr %"PT"
  %"cmp.39" = icmp ne i32 %".4463", 0
  %".4465" = or i1 %"cmp.39", %".4464"
  ; @!P0 BRA `(.L_x_27)
  %".4467" = load i1, ptr %"P0"
  %".4468" = icmp eq i1 %".4467", 1
  br i1 %".4468", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".4471" = load i32, ptr %"R0"
  %".4472" = load i32, ptr %"R23"
  %"add.238" = add i32 %".4471", %".4472"
  %"add.239" = add i32 %"add.238", 0
  store i32 %"add.239", ptr %"R5"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6"
  ; LEA R11, R2.reuse, R5, 0x2
  %".4477" = load i32, ptr %"R2"
  %".4478" = load i32, ptr %"R5"
  %"shl.280" = shl i32 %".4477", 2
  %"add.240" = add i32 %"shl.280", %".4478"
  store i32 %"add.240", ptr %"R11"
  ; IMAD R7, R2, 0x3, R5
  %".4481" = load i32, ptr %"R2"
  %".4482" = load i32, ptr %"R5"
  %"mul.82" = mul i32 %".4481", 3
  %"add.241" = add i32 %"mul.82", %".4482"
  store i32 %"add.241", ptr %"R7"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".4485" = load i32, ptr %"R23"
  %".4486" = load i32, ptr %"R6"
  %"mul.83" = mul i32 %".4485", %".4486"
  %"add.242" = add i32 %"mul.83", %"Arg_3"
  store i32 %"add.242", ptr %"R8"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".4489" = load i32, ptr %"R7"
  %".4490" = load i32, ptr %"R6"
  %"mul.84" = mul i32 %".4489", %".4490"
  %"add.243" = add i32 %"mul.84", %"Arg_4"
  store i32 %"add.243", ptr %"R4"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".4493" = load i32, ptr %"R11"
  %".4494" = load i32, ptr %"R6"
  %"mul.85" = mul i32 %".4493", %".4494"
  %"add.244" = add i32 %"mul.85", %"Arg_4"
  store i32 %"add.244", ptr %"R6"
  ; LDG.E.SYS R13, [R8]
  %".4497" = load i32, ptr %"R8"
  %"zext.532" = zext i32 %".4497" to i64
  %".4498" = load i32, ptr %"R9"
  %"zext.533" = zext i32 %".4498" to i64
  %"shl.281" = shl i64 %"zext.533", 32
  %"or.264" = or i64 %"shl.281", %"zext.532"
  %".4499" = add i64 %"or.264", 0
  %"for_LDG.259" = inttoptr i64 %".4499" to ptr
  %".4500" = load float, ptr %"for_LDG.259"
  %".4501" = bitcast ptr %"R13" to ptr
  store float %".4500", ptr %".4501"
  ; LDG.E.SYS R11, [R4]
  %".4504" = load i32, ptr %"R4"
  %"zext.534" = zext i32 %".4504" to i64
  %".4505" = load i32, ptr %"R5"
  %"zext.535" = zext i32 %".4505" to i64
  %"shl.282" = shl i64 %"zext.535", 32
  %"or.265" = or i64 %"shl.282", %"zext.534"
  %".4506" = add i64 %"or.265", 0
  %"for_LDG.260" = inttoptr i64 %".4506" to ptr
  %".4507" = load float, ptr %"for_LDG.260"
  %".4508" = bitcast ptr %"R11" to ptr
  store float %".4507", ptr %".4508"
  ; LDG.E.SYS R10, [R6]
  %".4511" = load i32, ptr %"R6"
  %"zext.536" = zext i32 %".4511" to i64
  %".4512" = load i32, ptr %"R7"
  %"zext.537" = zext i32 %".4512" to i64
  %"shl.283" = shl i64 %"zext.537", 32
  %"or.266" = or i64 %"shl.283", %"zext.536"
  %".4513" = add i64 %"or.266", 0
  %"for_LDG.261" = inttoptr i64 %".4513" to ptr
  %".4514" = load float, ptr %"for_LDG.261"
  %".4515" = bitcast ptr %"R10" to ptr
  store float %".4514", ptr %".4515"
  ; LDG.E.SYS R25, [R8+0x4]
  %".4518" = load i32, ptr %"R8"
  %"zext.538" = zext i32 %".4518" to i64
  %".4519" = load i32, ptr %"R9"
  %"zext.539" = zext i32 %".4519" to i64
  %"shl.284" = shl i64 %"zext.539", 32
  %"or.267" = or i64 %"shl.284", %"zext.538"
  %".4520" = add i64 %"or.267", 4
  %"for_LDG.262" = inttoptr i64 %".4520" to ptr
  %".4521" = load float, ptr %"for_LDG.262"
  %".4522" = bitcast ptr %"R25" to ptr
  store float %".4521", ptr %".4522"
  ; LDG.E.SYS R12, [R4+0x4]
  %".4525" = load i32, ptr %"R4"
  %"zext.540" = zext i32 %".4525" to i64
  %".4526" = load i32, ptr %"R5"
  %"zext.541" = zext i32 %".4526" to i64
  %"shl.285" = shl i64 %"zext.541", 32
  %"or.268" = or i64 %"shl.285", %"zext.540"
  %".4527" = add i64 %"or.268", 4
  %"for_LDG.263" = inttoptr i64 %".4527" to ptr
  %".4528" = load float, ptr %"for_LDG.263"
  %".4529" = bitcast ptr %"R12" to ptr
  store float %".4528", ptr %".4529"
  ; LDG.E.SYS R24, [R6+0x4]
  %".4532" = load i32, ptr %"R6"
  %"zext.542" = zext i32 %".4532" to i64
  %".4533" = load i32, ptr %"R7"
  %"zext.543" = zext i32 %".4533" to i64
  %"shl.286" = shl i64 %"zext.543", 32
  %"or.269" = or i64 %"shl.286", %"zext.542"
  %".4534" = add i64 %"or.269", 4
  %"for_LDG.264" = inttoptr i64 %".4534" to ptr
  %".4535" = load float, ptr %"for_LDG.264"
  %".4536" = bitcast ptr %"R24" to ptr
  store float %".4535", ptr %".4536"
  ; LDG.E.SYS R35, [R8+0x8]
  %".4539" = load i32, ptr %"R8"
  %"zext.544" = zext i32 %".4539" to i64
  %".4540" = load i32, ptr %"R9"
  %"zext.545" = zext i32 %".4540" to i64
  %"shl.287" = shl i64 %"zext.545", 32
  %"or.270" = or i64 %"shl.287", %"zext.544"
  %".4541" = add i64 %"or.270", 8
  %"for_LDG.265" = inttoptr i64 %".4541" to ptr
  %".4542" = load float, ptr %"for_LDG.265"
  %".4543" = bitcast ptr %"R35" to ptr
  store float %".4542", ptr %".4543"
  ; LDG.E.SYS R34, [R4+0x8]
  %".4546" = load i32, ptr %"R4"
  %"zext.546" = zext i32 %".4546" to i64
  %".4547" = load i32, ptr %"R5"
  %"zext.547" = zext i32 %".4547" to i64
  %"shl.288" = shl i64 %"zext.547", 32
  %"or.271" = or i64 %"shl.288", %"zext.546"
  %".4548" = add i64 %"or.271", 8
  %"for_LDG.266" = inttoptr i64 %".4548" to ptr
  %".4549" = load float, ptr %"for_LDG.266"
  %".4550" = bitcast ptr %"R34" to ptr
  store float %".4549", ptr %".4550"
  ; LDG.E.SYS R36, [R6+0x8]
  %".4553" = load i32, ptr %"R6"
  %"zext.548" = zext i32 %".4553" to i64
  %".4554" = load i32, ptr %"R7"
  %"zext.549" = zext i32 %".4554" to i64
  %"shl.289" = shl i64 %"zext.549", 32
  %"or.272" = or i64 %"shl.289", %"zext.548"
  %".4555" = add i64 %"or.272", 8
  %"for_LDG.267" = inttoptr i64 %".4555" to ptr
  %".4556" = load float, ptr %"for_LDG.267"
  %".4557" = bitcast ptr %"R36" to ptr
  store float %".4556", ptr %".4557"
  ; LDG.E.SYS R37, [R8+0xc]
  %".4560" = load i32, ptr %"R8"
  %"zext.550" = zext i32 %".4560" to i64
  %".4561" = load i32, ptr %"R9"
  %"zext.551" = zext i32 %".4561" to i64
  %"shl.290" = shl i64 %"zext.551", 32
  %"or.273" = or i64 %"shl.290", %"zext.550"
  %".4562" = add i64 %"or.273", 12
  %"for_LDG.268" = inttoptr i64 %".4562" to ptr
  %".4563" = load float, ptr %"for_LDG.268"
  %".4564" = bitcast ptr %"R37" to ptr
  store float %".4563", ptr %".4564"
  ; LDG.E.SYS R38, [R4+0xc]
  %".4567" = load i32, ptr %"R4"
  %"zext.552" = zext i32 %".4567" to i64
  %".4568" = load i32, ptr %"R5"
  %"zext.553" = zext i32 %".4568" to i64
  %"shl.291" = shl i64 %"zext.553", 32
  %"or.274" = or i64 %"shl.291", %"zext.552"
  %".4569" = add i64 %"or.274", 12
  %"for_LDG.269" = inttoptr i64 %".4569" to ptr
  %".4570" = load float, ptr %"for_LDG.269"
  %".4571" = bitcast ptr %"R38" to ptr
  store float %".4570", ptr %".4571"
  ; LDG.E.SYS R39, [R6+0xc]
  %".4574" = load i32, ptr %"R6"
  %"zext.554" = zext i32 %".4574" to i64
  %".4575" = load i32, ptr %"R7"
  %"zext.555" = zext i32 %".4575" to i64
  %"shl.292" = shl i64 %"zext.555", 32
  %"or.275" = or i64 %"shl.292", %"zext.554"
  %".4576" = add i64 %"or.275", 12
  %"for_LDG.270" = inttoptr i64 %".4576" to ptr
  %".4577" = load float, ptr %"for_LDG.270"
  %".4578" = bitcast ptr %"R39" to ptr
  store float %".4577", ptr %".4578"
  ; IADD3 R22, R22, -0x4, RZ
  %".4581" = load i32, ptr %"R22"
  %"add.245" = add i32 %".4581", -4
  %"add.246" = add i32 %"add.245", 0
  store i32 %"add.246", ptr %"R22"
  ; IADD3 R23, R23, 0x4, RZ
  %".4584" = load i32, ptr %"R23"
  %"add.247" = add i32 %".4584", 4
  %"add.248" = add i32 %"add.247", 0
  store i32 %"add.248", ptr %"R23"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".4587" = load i32, ptr %"R22"
  %".4588" = load i1, ptr %"PT"
  %"cmp.40" = icmp ne i32 %".4587", 0
  %".4589" = and i1 %"cmp.40", %".4588"
  ; FFMA R11, R11, R13, R44
  %".4591" = load float, ptr %"R11"
  %".4592" = load float, ptr %"R13"
  %".4593" = load float, ptr %"R44"
  %"fmul.217" = fmul float %".4591", %".4592"
  %"fadd.192" = fadd float %"fmul.217", %".4593"
  %".4594" = bitcast ptr %"R11" to ptr
  store float %"fadd.192", ptr %".4594"
  ; FFMA R10, R13, R10, R56
  %".4597" = load float, ptr %"R13"
  %".4598" = load float, ptr %"R10"
  %".4599" = load float, ptr %"R56"
  %"fmul.218" = fmul float %".4597", %".4598"
  %"fadd.193" = fadd float %"fmul.218", %".4599"
  %".4600" = bitcast ptr %"R10" to ptr
  store float %"fadd.193", ptr %".4600"
  ; FFMA R11, R12, R25, R11
  %".4603" = load float, ptr %"R12"
  %".4604" = load float, ptr %"R25"
  %".4605" = load float, ptr %"R11"
  %"fmul.219" = fmul float %".4603", %".4604"
  %"fadd.194" = fadd float %"fmul.219", %".4605"
  %".4606" = bitcast ptr %"R11" to ptr
  store float %"fadd.194", ptr %".4606"
  ; FFMA R10, R25, R24, R10
  %".4609" = load float, ptr %"R25"
  %".4610" = load float, ptr %"R24"
  %".4611" = load float, ptr %"R10"
  %"fmul.220" = fmul float %".4609", %".4610"
  %"fadd.195" = fadd float %"fmul.220", %".4611"
  %".4612" = bitcast ptr %"R10" to ptr
  store float %"fadd.195", ptr %".4612"
  ; FFMA R11, R34, R35, R11
  %".4615" = load float, ptr %"R34"
  %".4616" = load float, ptr %"R35"
  %".4617" = load float, ptr %"R11"
  %"fmul.221" = fmul float %".4615", %".4616"
  %"fadd.196" = fadd float %"fmul.221", %".4617"
  %".4618" = bitcast ptr %"R11" to ptr
  store float %"fadd.196", ptr %".4618"
  ; FFMA R10, R35, R36, R10
  %".4621" = load float, ptr %"R35"
  %".4622" = load float, ptr %"R36"
  %".4623" = load float, ptr %"R10"
  %"fmul.222" = fmul float %".4621", %".4622"
  %"fadd.197" = fadd float %"fmul.222", %".4623"
  %".4624" = bitcast ptr %"R10" to ptr
  store float %"fadd.197", ptr %".4624"
  ; FFMA R44, R38, R37, R11
  %".4627" = load float, ptr %"R38"
  %".4628" = load float, ptr %"R37"
  %".4629" = load float, ptr %"R11"
  %"fmul.223" = fmul float %".4627", %".4628"
  %"fadd.198" = fadd float %"fmul.223", %".4629"
  %".4630" = bitcast ptr %"R44" to ptr
  store float %"fadd.198", ptr %".4630"
  ; FFMA R56, R37, R39, R10
  %".4633" = load float, ptr %"R37"
  %".4634" = load float, ptr %"R39"
  %".4635" = load float, ptr %"R10"
  %"fmul.224" = fmul float %".4633", %".4634"
  %"fadd.199" = fadd float %"fmul.224", %".4635"
  %".4636" = bitcast ptr %"R56" to ptr
  store float %"fadd.199", ptr %".4636"
  ; @P0 BRA `(.L_x_28)
  %".4639" = load i1, ptr %"P0"
  %".4640" = icmp ne i1 %".4639", 1
  br i1 %".4640", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".4643" = load i32, ptr %"R48"
  %".4644" = load i1, ptr %"PT"
  %"cmp.41" = icmp ne i32 %".4643", 0
  %".4645" = and i1 %"cmp.41", %".4644"
  ; @!P0 BRA `(.L_x_26)
  %".4647" = load i1, ptr %"P0"
  %".4648" = icmp eq i1 %".4647", 1
  br i1 %".4648", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".4651" = load i32, ptr %"R0"
  %".4652" = load i32, ptr %"R23"
  %"add.249" = add i32 %".4651", %".4652"
  %"add.250" = add i32 %"add.249", 0
  store i32 %"add.250", ptr %"R5"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9"
  ; LEA R8, R2.reuse, R5, 0x2
  %".4657" = load i32, ptr %"R2"
  %".4658" = load i32, ptr %"R5"
  %"shl.293" = shl i32 %".4657", 2
  %"add.251" = add i32 %"shl.293", %".4658"
  store i32 %"add.251", ptr %"R8"
  ; IMAD R6, R2, 0x3, R5
  %".4661" = load i32, ptr %"R2"
  %".4662" = load i32, ptr %"R5"
  %"mul.86" = mul i32 %".4661", 3
  %"add.252" = add i32 %"mul.86", %".4662"
  store i32 %"add.252", ptr %"R6"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".4665" = load i32, ptr %"R23"
  %".4666" = load i32, ptr %"R9"
  %"mul.87" = mul i32 %".4665", %".4666"
  %"add.253" = add i32 %"mul.87", %"Arg_3"
  store i32 %"add.253", ptr %"R4"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".4669" = load i32, ptr %"R6"
  %".4670" = load i32, ptr %"R9"
  %"mul.88" = mul i32 %".4669", %".4670"
  %"add.254" = add i32 %"mul.88", %"Arg_4"
  store i32 %"add.254", ptr %"R6"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".4673" = load i32, ptr %"R8"
  %".4674" = load i32, ptr %"R9"
  %"mul.89" = mul i32 %".4673", %".4674"
  %"add.255" = add i32 %"mul.89", %"Arg_4"
  store i32 %"add.255", ptr %"R8"
  ; LDG.E.SYS R13, [R4]
  %".4677" = load i32, ptr %"R4"
  %"zext.556" = zext i32 %".4677" to i64
  %".4678" = load i32, ptr %"R5"
  %"zext.557" = zext i32 %".4678" to i64
  %"shl.294" = shl i64 %"zext.557", 32
  %"or.276" = or i64 %"shl.294", %"zext.556"
  %".4679" = add i64 %"or.276", 0
  %"for_LDG.271" = inttoptr i64 %".4679" to ptr
  %".4680" = load float, ptr %"for_LDG.271"
  %".4681" = bitcast ptr %"R13" to ptr
  store float %".4680", ptr %".4681"
  ; LDG.E.SYS R11, [R6]
  %".4684" = load i32, ptr %"R6"
  %"zext.558" = zext i32 %".4684" to i64
  %".4685" = load i32, ptr %"R7"
  %"zext.559" = zext i32 %".4685" to i64
  %"shl.295" = shl i64 %"zext.559", 32
  %"or.277" = or i64 %"shl.295", %"zext.558"
  %".4686" = add i64 %"or.277", 0
  %"for_LDG.272" = inttoptr i64 %".4686" to ptr
  %".4687" = load float, ptr %"for_LDG.272"
  %".4688" = bitcast ptr %"R11" to ptr
  store float %".4687", ptr %".4688"
  ; LDG.E.SYS R10, [R8]
  %".4691" = load i32, ptr %"R8"
  %"zext.560" = zext i32 %".4691" to i64
  %".4692" = load i32, ptr %"R9"
  %"zext.561" = zext i32 %".4692" to i64
  %"shl.296" = shl i64 %"zext.561", 32
  %"or.278" = or i64 %"shl.296", %"zext.560"
  %".4693" = add i64 %"or.278", 0
  %"for_LDG.273" = inttoptr i64 %".4693" to ptr
  %".4694" = load float, ptr %"for_LDG.273"
  %".4695" = bitcast ptr %"R10" to ptr
  store float %".4694", ptr %".4695"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".4698" = load i32, ptr %"R48"
  %".4699" = load i1, ptr %"PT"
  %"cmp.42" = icmp ne i32 %".4698", 1
  %".4700" = and i1 %"cmp.42", %".4699"
  ; FFMA R44, R11, R13, R44
  %".4702" = load float, ptr %"R11"
  %".4703" = load float, ptr %"R13"
  %".4704" = load float, ptr %"R44"
  %"fmul.225" = fmul float %".4702", %".4703"
  %"fadd.200" = fadd float %"fmul.225", %".4704"
  %".4705" = bitcast ptr %"R44" to ptr
  store float %"fadd.200", ptr %".4705"
  ; FFMA R56, R13, R10, R56
  %".4708" = load float, ptr %"R13"
  %".4709" = load float, ptr %"R10"
  %".4710" = load float, ptr %"R56"
  %"fmul.226" = fmul float %".4708", %".4709"
  %"fadd.201" = fadd float %"fmul.226", %".4710"
  %".4711" = bitcast ptr %"R56" to ptr
  store float %"fadd.201", ptr %".4711"
  ; @!P0 BRA `(.L_x_26)
  %".4714" = load i1, ptr %"P0"
  %".4715" = icmp eq i1 %".4714", 1
  br i1 %".4715", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".4718" = load i32, ptr %"R48"
  %".4719" = load i1, ptr %"PT"
  %"cmp.43" = icmp ne i32 %".4718", 2
  %".4720" = and i1 %"cmp.43", %".4719"
  ; LDG.E.SYS R11, [R6+0x4]
  %".4722" = load i32, ptr %"R6"
  %"zext.562" = zext i32 %".4722" to i64
  %".4723" = load i32, ptr %"R7"
  %"zext.563" = zext i32 %".4723" to i64
  %"shl.297" = shl i64 %"zext.563", 32
  %"or.279" = or i64 %"shl.297", %"zext.562"
  %".4724" = add i64 %"or.279", 4
  %"for_LDG.274" = inttoptr i64 %".4724" to ptr
  %".4725" = load float, ptr %"for_LDG.274"
  %".4726" = bitcast ptr %"R11" to ptr
  store float %".4725", ptr %".4726"
  ; LDG.E.SYS R13, [R4+0x4]
  %".4729" = load i32, ptr %"R4"
  %"zext.564" = zext i32 %".4729" to i64
  %".4730" = load i32, ptr %"R5"
  %"zext.565" = zext i32 %".4730" to i64
  %"shl.298" = shl i64 %"zext.565", 32
  %"or.280" = or i64 %"shl.298", %"zext.564"
  %".4731" = add i64 %"or.280", 4
  %"for_LDG.275" = inttoptr i64 %".4731" to ptr
  %".4732" = load float, ptr %"for_LDG.275"
  %".4733" = bitcast ptr %"R13" to ptr
  store float %".4732", ptr %".4733"
  ; LDG.E.SYS R10, [R8+0x4]
  %".4736" = load i32, ptr %"R8"
  %"zext.566" = zext i32 %".4736" to i64
  %".4737" = load i32, ptr %"R9"
  %"zext.567" = zext i32 %".4737" to i64
  %"shl.299" = shl i64 %"zext.567", 32
  %"or.281" = or i64 %"shl.299", %"zext.566"
  %".4738" = add i64 %"or.281", 4
  %"for_LDG.276" = inttoptr i64 %".4738" to ptr
  %".4739" = load float, ptr %"for_LDG.276"
  %".4740" = bitcast ptr %"R10" to ptr
  store float %".4739", ptr %".4740"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".4743" = load i1, ptr %"P0"
  %".4744" = icmp ne i1 %".4743", 1
  br i1 %".4744", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  %".4747" = load i32, ptr %"R6"
  %"zext.568" = zext i32 %".4747" to i64
  %".4748" = load i32, ptr %"R7"
  %"zext.569" = zext i32 %".4748" to i64
  %"shl.300" = shl i64 %"zext.569", 32
  %"or.282" = or i64 %"shl.300", %"zext.568"
  %".4749" = add i64 %"or.282", 8
  %"for_LDG.277" = inttoptr i64 %".4749" to ptr
  %".4750" = load float, ptr %"for_LDG.277"
  %".4751" = bitcast ptr %"R23" to ptr
  store float %".4750", ptr %".4751"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".4756" = load i1, ptr %"P0"
  %".4757" = icmp ne i1 %".4756", 1
  br i1 %".4757", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  %".4760" = load i32, ptr %"R4"
  %"zext.570" = zext i32 %".4760" to i64
  %".4761" = load i32, ptr %"R5"
  %"zext.571" = zext i32 %".4761" to i64
  %"shl.301" = shl i64 %"zext.571", 32
  %"or.283" = or i64 %"shl.301", %"zext.570"
  %".4762" = add i64 %"or.283", 8
  %"for_LDG.278" = inttoptr i64 %".4762" to ptr
  %".4763" = load float, ptr %"for_LDG.278"
  %".4764" = bitcast ptr %"R25" to ptr
  store float %".4763", ptr %".4764"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".4769" = load i1, ptr %"P0"
  %".4770" = icmp ne i1 %".4769", 1
  br i1 %".4770", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  %".4773" = load i32, ptr %"R8"
  %"zext.572" = zext i32 %".4773" to i64
  %".4774" = load i32, ptr %"R9"
  %"zext.573" = zext i32 %".4774" to i64
  %"shl.302" = shl i64 %"zext.573", 32
  %"or.284" = or i64 %"shl.302", %"zext.572"
  %".4775" = add i64 %"or.284", 8
  %"for_LDG.279" = inttoptr i64 %".4775" to ptr
  %".4776" = load float, ptr %"for_LDG.279"
  %".4777" = bitcast ptr %"R12" to ptr
  store float %".4776", ptr %".4777"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".4782" = load float, ptr %"R11"
  %".4783" = load float, ptr %"R13"
  %".4784" = load float, ptr %"R44"
  %"fmul.227" = fmul float %".4782", %".4783"
  %"fadd.202" = fadd float %"fmul.227", %".4784"
  %".4785" = bitcast ptr %"R44" to ptr
  store float %"fadd.202", ptr %".4785"
  ; FFMA R56, R13, R10, R56
  %".4788" = load float, ptr %"R13"
  %".4789" = load float, ptr %"R10"
  %".4790" = load float, ptr %"R56"
  %"fmul.228" = fmul float %".4788", %".4789"
  %"fadd.203" = fadd float %"fmul.228", %".4790"
  %".4791" = bitcast ptr %"R56" to ptr
  store float %"fadd.203", ptr %".4791"
  ; @P0 FFMA R44, R23, R25, R44
  %".4794" = load i1, ptr %"P0"
  %".4795" = icmp ne i1 %".4794", 1
  br i1 %".4795", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".4798" = load float, ptr %"R23"
  %".4799" = load float, ptr %"R25"
  %".4800" = load float, ptr %"R44"
  %"fmul.229" = fmul float %".4798", %".4799"
  %"fadd.204" = fadd float %"fmul.229", %".4800"
  %".4801" = bitcast ptr %"R44" to ptr
  store float %"fadd.204", ptr %".4801"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".4806" = load i1, ptr %"P0"
  %".4807" = icmp ne i1 %".4806", 1
  br i1 %".4807", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".4810" = load float, ptr %"R25"
  %".4811" = load float, ptr %"R12"
  %".4812" = load float, ptr %"R56"
  %"fmul.230" = fmul float %".4810", %".4811"
  %"fadd.205" = fadd float %"fmul.230", %".4812"
  %".4813" = bitcast ptr %"R56" to ptr
  store float %"fadd.205", ptr %".4813"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  %".4818" = load i32, ptr %"R26"
  %"zext.574" = zext i32 %".4818" to i64
  %"zext.575" = zext i32 0 to i64
  %"shl.303" = shl i64 %"zext.575", 32
  %"or.285" = or i64 %"shl.303", %"zext.574"
  %".4819" = add i64 %"or.285", 0
  %"for_LDG.280" = inttoptr i64 %".4819" to ptr
  %".4820" = load float, ptr %"for_LDG.280"
  %".4821" = bitcast ptr %"R5" to ptr
  store float %".4820", ptr %".4821"
  ; MOV R4, 0x3bbb989d
  %".4824" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".4824"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  %".4828" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".4828"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".4832" = load float, ptr %"R5"
  %".4833" = load float, ptr %"R44"
  %"fadd.206" = fadd float %".4832", %".4833"
  %".4834" = bitcast ptr %"R5" to ptr
  store float %"fadd.206", ptr %".4834"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".4837" = load float, ptr %"R5"
  %".4838" = sub float              0x0, %".4837"
  %".4839" = load float, ptr %"R4"
  %"fmul.231" = fmul float %".4838", %".4839"
  %"fadd.207" = fadd float %"fmul.231", 0x3fe0000000000000
  %".4840" = bitcast ptr %"R4" to ptr
  store float %"fadd.207", ptr %".4840"
  ; FFMA.RM R4, R4, R7, 12582913
  %".4843" = load float, ptr %"R4"
  %".4844" = load float, ptr %"R7"
  %"fmul.232" = fmul float %".4843", %".4844"
  %"fadd.208" = fadd float %"fmul.232", 0x4168000020000000
  %".4845" = bitcast ptr %"R4" to ptr
  store float %"fadd.208", ptr %".4845"
  ; FADD R6, R4.reuse, -12583039
  %".4848" = load float, ptr %"R4"
  %"fadd.209" = fadd float %".4848", 0xc168000fe0000000
  %".4849" = bitcast ptr %"R6" to ptr
  store float %"fadd.209", ptr %".4849"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".4852" = icmp ult i32 23, 32
  %"SHF_min.4" = select  i1 %".4852", i32 23, i32 32
  %".4853" = load i32, ptr %"R4"
  %"zext.576" = zext i32 0 to i64
  %"zext.577" = zext i32 %".4853" to i64
  %"zext.578" = zext i32 23 to i64
  %"shl.304" = shl i64 %"zext.576", 32
  %"or.286" = or i64 %"shl.304", %"zext.577"
  %"shl.305" = shl i64 %"or.286", %"zext.578"
  %"and.2" = and i64 %"shl.305", 4294967295
  %"trunc32.4" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.4", ptr %"R4"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".4856" = load float, ptr %"R5"
  %".4857" = sub float              0x0, %".4856"
  %".4858" = load float, ptr %"R6"
  %".4859" = sub float              0x0, %".4858"
  %"fmul.233" = fmul float %".4857", 0x3ff7154760000000
  %"fadd.210" = fadd float %"fmul.233", %".4859"
  %".4860" = bitcast ptr %"R6" to ptr
  store float %"fadd.210", ptr %".4860"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".4863" = load float, ptr %"R5"
  %".4864" = sub float              0x0, %".4863"
  %".4865" = load float, ptr %"R6"
  %"fmul.234" = fmul float %".4864", 0x3e54ae0c00000000
  %"fadd.211" = fadd float %"fmul.234", %".4865"
  %".4866" = bitcast ptr %"R6" to ptr
  store float %"fadd.211", ptr %".4866"
  ; MUFU.EX2 R5, R6
  %".4869" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".4869")
  %".4870" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".4870"
  ; FFMA R24, R4, R5, 1
  %".4873" = load float, ptr %"R4"
  %".4874" = load float, ptr %"R5"
  %"fmul.235" = fmul float %".4873", %".4874"
  %"fadd.212" = fadd float %"fmul.235", 0x3ff0000000000000
  %".4875" = bitcast ptr %"R24" to ptr
  store float %"fadd.212", ptr %".4875"
  ; IADD3 R4, R24, 0x1800000, RZ
  %".4878" = load i32, ptr %"R24"
  %"add.256" = add i32 %".4878", 25165824
  %"add.257" = add i32 %"add.256", 0
  store i32 %"add.257", ptr %"R4"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".4881" = load i32, ptr %"R4"
  %".4882" = and i32 %".4881", 2139095040
  store i32 %".4882", ptr %"R4"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".4885" = load i32, ptr %"R4"
  %".4886" = load i1, ptr %"PT"
  %"cmp.44" = icmp sgt i32 %".4885", 33554431
  %".4887" = and i1 %"cmp.44", %".4886"
  ; @P0 BRA `(.L_x_33)
  %".4889" = load i1, ptr %"P0"
  %".4890" = icmp ne i1 %".4889", 1
  br i1 %".4890", label %".L_x_33", label %".L_x_26_split_0x3910"
.L_x_26_split_0x3910:
  ; MOV R10, 0x3930
  store i32 14640, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.2" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; BRA `(.L_x_34)
  br label %".L_x_34"
.L_x_33:
  ; MUFU.RCP R22, R24
  %".4898" = load float, ptr %"R24"
  %".4899" = fdiv float 0x3ff0000000000000, %".4898"
  %".4900" = bitcast ptr %"R22" to ptr
  store float %".4899", ptr %".4900"
  ; FFMA R4, R24, R22, -1
  %".4903" = load float, ptr %"R24"
  %".4904" = load float, ptr %"R22"
  %"fmul.236" = fmul float %".4903", %".4904"
  %"fadd.213" = fadd float %"fmul.236", 0xbff0000000000000
  %".4905" = bitcast ptr %"R4" to ptr
  store float %"fadd.213", ptr %".4905"
  ; FADD.FTZ R5, -R4, -RZ
  %".4908" = load float, ptr %"R4"
  %".4909" = sub float              0x0, %".4908"
  %"fadd.214" = fadd float %".4909",              0x0
  %".4910" = bitcast ptr %"R5" to ptr
  store float %"fadd.214", ptr %".4910"
  ; FFMA R22, R22, R5, R22
  %".4913" = load float, ptr %"R22"
  %".4914" = load float, ptr %"R5"
  %".4915" = load float, ptr %"R22"
  %"fmul.237" = fmul float %".4913", %".4914"
  %"fadd.215" = fadd float %"fmul.237", %".4915"
  %".4916" = bitcast ptr %"R22" to ptr
  store float %"fadd.215", ptr %".4916"
.L_x_34:
  ; BSYNC B0
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  %".4920" = load i32, ptr %"R32"
  %"zext.579" = zext i32 %".4920" to i64
  %".4921" = load i32, ptr %"R33"
  %"zext.580" = zext i32 %".4921" to i64
  %"shl.306" = shl i64 %"zext.580", 32
  %"or.287" = or i64 %"shl.306", %"zext.579"
  %".4922" = add i64 %"or.287", 0
  %"for_LDG.281" = inttoptr i64 %".4922" to ptr
  %".4923" = load float, ptr %"for_LDG.281"
  %".4924" = bitcast ptr %"R5" to ptr
  store float %".4923", ptr %".4924"
  ; MOV R4, 0x3bbb989d
  %".4927" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".4927"
  ; MOV R7, 0x437c0000
  %".4930" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".4930"
  ; FADD R5, R5, R56
  %".4933" = load float, ptr %"R5"
  %".4934" = load float, ptr %"R56"
  %"fadd.216" = fadd float %".4933", %".4934"
  %".4935" = bitcast ptr %"R5" to ptr
  store float %"fadd.216", ptr %".4935"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".4938" = load float, ptr %"R5"
  %".4939" = sub float              0x0, %".4938"
  %".4940" = load float, ptr %"R4"
  %"fmul.238" = fmul float %".4939", %".4940"
  %"fadd.217" = fadd float %"fmul.238", 0x3fe0000000000000
  %".4941" = bitcast ptr %"R4" to ptr
  store float %"fadd.217", ptr %".4941"
  ; FFMA.RM R4, R4, R7, 12582913
  %".4944" = load float, ptr %"R4"
  %".4945" = load float, ptr %"R7"
  %"fmul.239" = fmul float %".4944", %".4945"
  %"fadd.218" = fadd float %"fmul.239", 0x4168000020000000
  %".4946" = bitcast ptr %"R4" to ptr
  store float %"fadd.218", ptr %".4946"
  ; FADD R6, R4.reuse, -12583039
  %".4949" = load float, ptr %"R4"
  %"fadd.219" = fadd float %".4949", 0xc168000fe0000000
  %".4950" = bitcast ptr %"R6" to ptr
  store float %"fadd.219", ptr %".4950"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".4953" = icmp ult i32 23, 32
  %"SHF_min.5" = select  i1 %".4953", i32 23, i32 32
  %".4954" = load i32, ptr %"R4"
  %"zext.581" = zext i32 0 to i64
  %"zext.582" = zext i32 %".4954" to i64
  %"zext.583" = zext i32 23 to i64
  %"shl.307" = shl i64 %"zext.581", 32
  %"or.288" = or i64 %"shl.307", %"zext.582"
  %"shl.308" = shl i64 %"or.288", %"zext.583"
  %"and.3" = and i64 %"shl.308", 4294967295
  %"trunc32.5" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.5", ptr %"R23"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".4957" = load float, ptr %"R5"
  %".4958" = sub float              0x0, %".4957"
  %".4959" = load float, ptr %"R6"
  %".4960" = sub float              0x0, %".4959"
  %"fmul.240" = fmul float %".4958", 0x3ff7154760000000
  %"fadd.220" = fadd float %"fmul.240", %".4960"
  %".4961" = bitcast ptr %"R6" to ptr
  store float %"fadd.220", ptr %".4961"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".4964" = load float, ptr %"R5"
  %".4965" = sub float              0x0, %".4964"
  %".4966" = load float, ptr %"R6"
  %"fmul.241" = fmul float %".4965", 0x3e54ae0c00000000
  %"fadd.221" = fadd float %"fmul.241", %".4966"
  %".4967" = bitcast ptr %"R6" to ptr
  store float %"fadd.221", ptr %".4967"
  ; MUFU.EX2 R6, R6
  %".4970" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".4970")
  %".4971" = bitcast ptr %"R6" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".4971"
  ; FFMA R23, R23, R6, 1
  %".4974" = load float, ptr %"R23"
  %".4975" = load float, ptr %"R6"
  %"fmul.242" = fmul float %".4974", %".4975"
  %"fadd.222" = fadd float %"fmul.242", 0x3ff0000000000000
  %".4976" = bitcast ptr %"R23" to ptr
  store float %"fadd.222", ptr %".4976"
  ; @!P4 BRA `(.L_x_35)
  %".4979" = load i1, ptr %"P4"
  %".4980" = icmp eq i1 %".4979", 1
  br i1 %".4980", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".4983" = load i32, ptr %"R18"
  %".4984" = load i1, ptr %"PT"
  %"cmp.45" = icmp sge i32 %".4983", 3
  %".4985" = and i1 %"cmp.45", %".4984"
  ; MOV R34, RZ
  %".4987" = load i32, ptr %"RZ"
  store i32 %".4987", ptr %"R34"
  ; @!P0 BRA `(.L_x_36)
  %".4990" = load i1, ptr %"P0"
  %".4991" = icmp eq i1 %".4990", 1
  br i1 %".4991", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".4994" = load i32, ptr %"R20"
  %".4995" = load i1, ptr %"PT"
  %"cmp.46" = icmp sgt i32 %".4994", 0
  %".4996" = and i1 %"cmp.46", %".4995"
  ; MOV R34, RZ
  %".4998" = load i32, ptr %"RZ"
  store i32 %".4998", ptr %"R34"
  ; MOV R35, R20
  %".5001" = load i32, ptr %"R20"
  store i32 %".5001", ptr %"R35"
  ; @!P0 BRA `(.L_x_37)
  %".5004" = load i1, ptr %"P0"
  %".5005" = icmp eq i1 %".5004", 1
  br i1 %".5005", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".5008" = load i32, ptr %"R35"
  %".5009" = load i1, ptr %"PT"
  %"cmp.47" = icmp sgt i32 %".5008", 12
  %".5010" = and i1 %"cmp.47", %".5009"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".5012" = and i1 1, 1
  %".5013" = or i1 %".5012", 1
  ; @!P1 BRA `(.L_x_38)
  %".5015" = load i1, ptr %"P1"
  %".5016" = icmp eq i1 %".5015", 1
  br i1 %".5016", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".5019" = xor i1 1, 1
  %".5020" = and i1 %".5019", 1
  %".5021" = and i1 %".5020", 1
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41"
  ; IADD3 R10, R3, R34, RZ
  %".5025" = load i32, ptr %"R3"
  %".5026" = load i32, ptr %"R34"
  %"add.258" = add i32 %".5025", %".5026"
  %"add.259" = add i32 %"add.258", 0
  store i32 %"add.259", ptr %"R10"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".5029" = load i32, ptr %"R34"
  %".5030" = load i32, ptr %"R41"
  %"mul.90" = mul i32 %".5029", %".5030"
  %"add.260" = add i32 %"mul.90", %"Arg_3"
  store i32 %"add.260", ptr %"R12"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".5033" = load i32, ptr %"R10"
  %".5034" = load i32, ptr %"R41"
  %"mul.91" = mul i32 %".5033", %".5034"
  %"add.261" = add i32 %"mul.91", %"Arg_4"
  store i32 %"add.261", ptr %"R10"
  ; IADD3 R4, R34, 0x4, RZ
  %".5037" = load i32, ptr %"R34"
  %"add.262" = add i32 %".5037", 4
  %"add.263" = add i32 %"add.262", 0
  store i32 %"add.263", ptr %"R4"
  ; LDG.E.SYS R25, [R12]
  %".5040" = load i32, ptr %"R12"
  %"zext.584" = zext i32 %".5040" to i64
  %".5041" = load i32, ptr %"R13"
  %"zext.585" = zext i32 %".5041" to i64
  %"shl.309" = shl i64 %"zext.585", 32
  %"or.289" = or i64 %"shl.309", %"zext.584"
  %".5042" = add i64 %"or.289", 0
  %"for_LDG.282" = inttoptr i64 %".5042" to ptr
  %".5043" = load float, ptr %"for_LDG.282"
  %".5044" = bitcast ptr %"R25" to ptr
  store float %".5043", ptr %".5044"
  ; IADD3 R6, R3, R4, RZ
  %".5047" = load i32, ptr %"R3"
  %".5048" = load i32, ptr %"R4"
  %"add.264" = add i32 %".5047", %".5048"
  %"add.265" = add i32 %"add.264", 0
  store i32 %"add.265", ptr %"R6"
  ; LDG.E.SYS R36, [R10]
  %".5051" = load i32, ptr %"R10"
  %"zext.586" = zext i32 %".5051" to i64
  %".5052" = load i32, ptr %"R11"
  %"zext.587" = zext i32 %".5052" to i64
  %"shl.310" = shl i64 %"zext.587", 32
  %"or.290" = or i64 %"shl.310", %"zext.586"
  %".5053" = add i64 %"or.290", 0
  %"for_LDG.283" = inttoptr i64 %".5053" to ptr
  %".5054" = load float, ptr %"for_LDG.283"
  %".5055" = bitcast ptr %"R36" to ptr
  store float %".5054", ptr %".5055"
  ; LDG.E.SYS R37, [R12+0x4]
  %".5058" = load i32, ptr %"R12"
  %"zext.588" = zext i32 %".5058" to i64
  %".5059" = load i32, ptr %"R13"
  %"zext.589" = zext i32 %".5059" to i64
  %"shl.311" = shl i64 %"zext.589", 32
  %"or.291" = or i64 %"shl.311", %"zext.588"
  %".5060" = add i64 %"or.291", 4
  %"for_LDG.284" = inttoptr i64 %".5060" to ptr
  %".5061" = load float, ptr %"for_LDG.284"
  %".5062" = bitcast ptr %"R37" to ptr
  store float %".5061", ptr %".5062"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".5065" = load i32, ptr %"R4"
  %".5066" = load i32, ptr %"R41"
  %"mul.92" = mul i32 %".5065", %".5066"
  %"add.266" = add i32 %"mul.92", %"Arg_3"
  store i32 %"add.266", ptr %"R4"
  ; LDG.E.SYS R24, [R10+0x4]
  %".5069" = load i32, ptr %"R10"
  %"zext.590" = zext i32 %".5069" to i64
  %".5070" = load i32, ptr %"R11"
  %"zext.591" = zext i32 %".5070" to i64
  %"shl.312" = shl i64 %"zext.591", 32
  %"or.292" = or i64 %"shl.312", %"zext.590"
  %".5071" = add i64 %"or.292", 4
  %"for_LDG.285" = inttoptr i64 %".5071" to ptr
  %".5072" = load float, ptr %"for_LDG.285"
  %".5073" = bitcast ptr %"R24" to ptr
  store float %".5072", ptr %".5073"
  ; LDG.E.SYS R39, [R12+0x8]
  %".5076" = load i32, ptr %"R12"
  %"zext.592" = zext i32 %".5076" to i64
  %".5077" = load i32, ptr %"R13"
  %"zext.593" = zext i32 %".5077" to i64
  %"shl.313" = shl i64 %"zext.593", 32
  %"or.293" = or i64 %"shl.313", %"zext.592"
  %".5078" = add i64 %"or.293", 8
  %"for_LDG.286" = inttoptr i64 %".5078" to ptr
  %".5079" = load float, ptr %"for_LDG.286"
  %".5080" = bitcast ptr %"R39" to ptr
  store float %".5079", ptr %".5080"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".5083" = load i32, ptr %"R6"
  %".5084" = load i32, ptr %"R41"
  %"mul.93" = mul i32 %".5083", %".5084"
  %"add.267" = add i32 %"mul.93", %"Arg_4"
  store i32 %"add.267", ptr %"R6"
  ; LDG.E.SYS R38, [R10+0x8]
  %".5087" = load i32, ptr %"R10"
  %"zext.594" = zext i32 %".5087" to i64
  %".5088" = load i32, ptr %"R11"
  %"zext.595" = zext i32 %".5088" to i64
  %"shl.314" = shl i64 %"zext.595", 32
  %"or.294" = or i64 %"shl.314", %"zext.594"
  %".5089" = add i64 %"or.294", 8
  %"for_LDG.287" = inttoptr i64 %".5089" to ptr
  %".5090" = load float, ptr %"for_LDG.287"
  %".5091" = bitcast ptr %"R38" to ptr
  store float %".5090", ptr %".5091"
  ; LDG.E.SYS R43, [R12+0xc]
  %".5094" = load i32, ptr %"R12"
  %"zext.596" = zext i32 %".5094" to i64
  %".5095" = load i32, ptr %"R13"
  %"zext.597" = zext i32 %".5095" to i64
  %"shl.315" = shl i64 %"zext.597", 32
  %"or.295" = or i64 %"shl.315", %"zext.596"
  %".5096" = add i64 %"or.295", 12
  %"for_LDG.288" = inttoptr i64 %".5096" to ptr
  %".5097" = load float, ptr %"for_LDG.288"
  %".5098" = bitcast ptr %"R43" to ptr
  store float %".5097", ptr %".5098"
  ; IADD3 R8, R34, 0x8, RZ
  %".5101" = load i32, ptr %"R34"
  %"add.268" = add i32 %".5101", 8
  %"add.269" = add i32 %"add.268", 0
  store i32 %"add.269", ptr %"R8"
  ; LDG.E.SYS R46, [R10+0xc]
  %".5104" = load i32, ptr %"R10"
  %"zext.598" = zext i32 %".5104" to i64
  %".5105" = load i32, ptr %"R11"
  %"zext.599" = zext i32 %".5105" to i64
  %"shl.316" = shl i64 %"zext.599", 32
  %"or.296" = or i64 %"shl.316", %"zext.598"
  %".5106" = add i64 %"or.296", 12
  %"for_LDG.289" = inttoptr i64 %".5106" to ptr
  %".5107" = load float, ptr %"for_LDG.289"
  %".5108" = bitcast ptr %"R46" to ptr
  store float %".5107", ptr %".5108"
  ; LDG.E.SYS R51, [R4]
  %".5111" = load i32, ptr %"R4"
  %"zext.600" = zext i32 %".5111" to i64
  %".5112" = load i32, ptr %"R5"
  %"zext.601" = zext i32 %".5112" to i64
  %"shl.317" = shl i64 %"zext.601", 32
  %"or.297" = or i64 %"shl.317", %"zext.600"
  %".5113" = add i64 %"or.297", 0
  %"for_LDG.290" = inttoptr i64 %".5113" to ptr
  %".5114" = load float, ptr %"for_LDG.290"
  %".5115" = bitcast ptr %"R51" to ptr
  store float %".5114", ptr %".5115"
  ; IADD3 R50, R3, R8, RZ
  %".5118" = load i32, ptr %"R3"
  %".5119" = load i32, ptr %"R8"
  %"add.270" = add i32 %".5118", %".5119"
  %"add.271" = add i32 %"add.270", 0
  store i32 %"add.271", ptr %"R50"
  ; LDG.E.SYS R44, [R6]
  %".5122" = load i32, ptr %"R6"
  %"zext.602" = zext i32 %".5122" to i64
  %".5123" = load i32, ptr %"R7"
  %"zext.603" = zext i32 %".5123" to i64
  %"shl.318" = shl i64 %"zext.603", 32
  %"or.298" = or i64 %"shl.318", %"zext.602"
  %".5124" = add i64 %"or.298", 0
  %"for_LDG.291" = inttoptr i64 %".5124" to ptr
  %".5125" = load float, ptr %"for_LDG.291"
  %".5126" = bitcast ptr %"R44" to ptr
  store float %".5125", ptr %".5126"
  ; LDG.E.SYS R47, [R4+0x4]
  %".5129" = load i32, ptr %"R4"
  %"zext.604" = zext i32 %".5129" to i64
  %".5130" = load i32, ptr %"R5"
  %"zext.605" = zext i32 %".5130" to i64
  %"shl.319" = shl i64 %"zext.605", 32
  %"or.299" = or i64 %"shl.319", %"zext.604"
  %".5131" = add i64 %"or.299", 4
  %"for_LDG.292" = inttoptr i64 %".5131" to ptr
  %".5132" = load float, ptr %"for_LDG.292"
  %".5133" = bitcast ptr %"R47" to ptr
  store float %".5132", ptr %".5133"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".5136" = load i32, ptr %"R8"
  %".5137" = load i32, ptr %"R41"
  %"mul.94" = mul i32 %".5136", %".5137"
  %"add.272" = add i32 %"mul.94", %"Arg_3"
  store i32 %"add.272", ptr %"R8"
  ; LDG.E.SYS R42, [R6+0x4]
  %".5140" = load i32, ptr %"R6"
  %"zext.606" = zext i32 %".5140" to i64
  %".5141" = load i32, ptr %"R7"
  %"zext.607" = zext i32 %".5141" to i64
  %"shl.320" = shl i64 %"zext.607", 32
  %"or.300" = or i64 %"shl.320", %"zext.606"
  %".5142" = add i64 %"or.300", 4
  %"for_LDG.293" = inttoptr i64 %".5142" to ptr
  %".5143" = load float, ptr %"for_LDG.293"
  %".5144" = bitcast ptr %"R42" to ptr
  store float %".5143", ptr %".5144"
  ; LDG.E.SYS R45, [R4+0x8]
  %".5147" = load i32, ptr %"R4"
  %"zext.608" = zext i32 %".5147" to i64
  %".5148" = load i32, ptr %"R5"
  %"zext.609" = zext i32 %".5148" to i64
  %"shl.321" = shl i64 %"zext.609", 32
  %"or.301" = or i64 %"shl.321", %"zext.608"
  %".5149" = add i64 %"or.301", 8
  %"for_LDG.294" = inttoptr i64 %".5149" to ptr
  %".5150" = load float, ptr %"for_LDG.294"
  %".5151" = bitcast ptr %"R45" to ptr
  store float %".5150", ptr %".5151"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".5154" = load i32, ptr %"R50"
  %".5155" = load i32, ptr %"R41"
  %"mul.95" = mul i32 %".5154", %".5155"
  %"add.273" = add i32 %"mul.95", %"Arg_4"
  store i32 %"add.273", ptr %"R10"
  ; LDG.E.SYS R40, [R6+0x8]
  %".5158" = load i32, ptr %"R6"
  %"zext.610" = zext i32 %".5158" to i64
  %".5159" = load i32, ptr %"R7"
  %"zext.611" = zext i32 %".5159" to i64
  %"shl.322" = shl i64 %"zext.611", 32
  %"or.302" = or i64 %"shl.322", %"zext.610"
  %".5160" = add i64 %"or.302", 8
  %"for_LDG.295" = inttoptr i64 %".5160" to ptr
  %".5161" = load float, ptr %"for_LDG.295"
  %".5162" = bitcast ptr %"R40" to ptr
  store float %".5161", ptr %".5162"
  ; LDG.E.SYS R53, [R4+0xc]
  %".5165" = load i32, ptr %"R4"
  %"zext.612" = zext i32 %".5165" to i64
  %".5166" = load i32, ptr %"R5"
  %"zext.613" = zext i32 %".5166" to i64
  %"shl.323" = shl i64 %"zext.613", 32
  %"or.303" = or i64 %"shl.323", %"zext.612"
  %".5167" = add i64 %"or.303", 12
  %"for_LDG.296" = inttoptr i64 %".5167" to ptr
  %".5168" = load float, ptr %"for_LDG.296"
  %".5169" = bitcast ptr %"R53" to ptr
  store float %".5168", ptr %".5169"
  ; IADD3 R12, R34, 0xc, RZ
  %".5172" = load i32, ptr %"R34"
  %"add.274" = add i32 %".5172", 12
  %"add.275" = add i32 %"add.274", 0
  store i32 %"add.275", ptr %"R12"
  ; LDG.E.SYS R54, [R6+0xc]
  %".5175" = load i32, ptr %"R6"
  %"zext.614" = zext i32 %".5175" to i64
  %".5176" = load i32, ptr %"R7"
  %"zext.615" = zext i32 %".5176" to i64
  %"shl.324" = shl i64 %"zext.615", 32
  %"or.304" = or i64 %"shl.324", %"zext.614"
  %".5177" = add i64 %"or.304", 12
  %"for_LDG.297" = inttoptr i64 %".5177" to ptr
  %".5178" = load float, ptr %"for_LDG.297"
  %".5179" = bitcast ptr %"R54" to ptr
  store float %".5178", ptr %".5179"
  ; LDG.E.SYS R59, [R8]
  %".5182" = load i32, ptr %"R8"
  %"zext.616" = zext i32 %".5182" to i64
  %".5183" = load i32, ptr %"R9"
  %"zext.617" = zext i32 %".5183" to i64
  %"shl.325" = shl i64 %"zext.617", 32
  %"or.305" = or i64 %"shl.325", %"zext.616"
  %".5184" = add i64 %"or.305", 0
  %"for_LDG.298" = inttoptr i64 %".5184" to ptr
  %".5185" = load float, ptr %"for_LDG.298"
  %".5186" = bitcast ptr %"R59" to ptr
  store float %".5185", ptr %".5186"
  ; IADD3 R58, R3, R12, RZ
  %".5189" = load i32, ptr %"R3"
  %".5190" = load i32, ptr %"R12"
  %"add.276" = add i32 %".5189", %".5190"
  %"add.277" = add i32 %"add.276", 0
  store i32 %"add.277", ptr %"R58"
  ; LDG.E.SYS R52, [R10]
  %".5193" = load i32, ptr %"R10"
  %"zext.618" = zext i32 %".5193" to i64
  %".5194" = load i32, ptr %"R11"
  %"zext.619" = zext i32 %".5194" to i64
  %"shl.326" = shl i64 %"zext.619", 32
  %"or.306" = or i64 %"shl.326", %"zext.618"
  %".5195" = add i64 %"or.306", 0
  %"for_LDG.299" = inttoptr i64 %".5195" to ptr
  %".5196" = load float, ptr %"for_LDG.299"
  %".5197" = bitcast ptr %"R52" to ptr
  store float %".5196", ptr %".5197"
  ; LDG.E.SYS R57, [R8+0x4]
  %".5200" = load i32, ptr %"R8"
  %"zext.620" = zext i32 %".5200" to i64
  %".5201" = load i32, ptr %"R9"
  %"zext.621" = zext i32 %".5201" to i64
  %"shl.327" = shl i64 %"zext.621", 32
  %"or.307" = or i64 %"shl.327", %"zext.620"
  %".5202" = add i64 %"or.307", 4
  %"for_LDG.300" = inttoptr i64 %".5202" to ptr
  %".5203" = load float, ptr %"for_LDG.300"
  %".5204" = bitcast ptr %"R57" to ptr
  store float %".5203", ptr %".5204"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".5207" = load i32, ptr %"R12"
  %".5208" = load i32, ptr %"R41"
  %"mul.96" = mul i32 %".5207", %".5208"
  %"add.278" = add i32 %"mul.96", %"Arg_3"
  store i32 %"add.278", ptr %"R12"
  ; LDG.E.SYS R50, [R10+0x4]
  %".5211" = load i32, ptr %"R10"
  %"zext.622" = zext i32 %".5211" to i64
  %".5212" = load i32, ptr %"R11"
  %"zext.623" = zext i32 %".5212" to i64
  %"shl.328" = shl i64 %"zext.623", 32
  %"or.308" = or i64 %"shl.328", %"zext.622"
  %".5213" = add i64 %"or.308", 4
  %"for_LDG.301" = inttoptr i64 %".5213" to ptr
  %".5214" = load float, ptr %"for_LDG.301"
  %".5215" = bitcast ptr %"R50" to ptr
  store float %".5214", ptr %".5215"
  ; LDG.E.SYS R55, [R8+0x8]
  %".5218" = load i32, ptr %"R8"
  %"zext.624" = zext i32 %".5218" to i64
  %".5219" = load i32, ptr %"R9"
  %"zext.625" = zext i32 %".5219" to i64
  %"shl.329" = shl i64 %"zext.625", 32
  %"or.309" = or i64 %"shl.329", %"zext.624"
  %".5220" = add i64 %"or.309", 8
  %"for_LDG.302" = inttoptr i64 %".5220" to ptr
  %".5221" = load float, ptr %"for_LDG.302"
  %".5222" = bitcast ptr %"R55" to ptr
  store float %".5221", ptr %".5222"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".5225" = load i32, ptr %"R58"
  %".5226" = load i32, ptr %"R41"
  %"mul.97" = mul i32 %".5225", %".5226"
  %"add.279" = add i32 %"mul.97", %"Arg_4"
  store i32 %"add.279", ptr %"R4"
  ; LDG.E.SYS R61, [R8+0xc]
  %".5229" = load i32, ptr %"R8"
  %"zext.626" = zext i32 %".5229" to i64
  %".5230" = load i32, ptr %"R9"
  %"zext.627" = zext i32 %".5230" to i64
  %"shl.330" = shl i64 %"zext.627", 32
  %"or.310" = or i64 %"shl.330", %"zext.626"
  %".5231" = add i64 %"or.310", 12
  %"for_LDG.303" = inttoptr i64 %".5231" to ptr
  %".5232" = load float, ptr %"for_LDG.303"
  %".5233" = bitcast ptr %"R61" to ptr
  store float %".5232", ptr %".5233"
  ; LDG.E.SYS R56, [R10+0x8]
  %".5236" = load i32, ptr %"R10"
  %"zext.628" = zext i32 %".5236" to i64
  %".5237" = load i32, ptr %"R11"
  %"zext.629" = zext i32 %".5237" to i64
  %"shl.331" = shl i64 %"zext.629", 32
  %"or.311" = or i64 %"shl.331", %"zext.628"
  %".5238" = add i64 %"or.311", 8
  %"for_LDG.304" = inttoptr i64 %".5238" to ptr
  %".5239" = load float, ptr %"for_LDG.304"
  %".5240" = bitcast ptr %"R56" to ptr
  store float %".5239", ptr %".5240"
  ; LDG.E.SYS R58, [R10+0xc]
  %".5243" = load i32, ptr %"R10"
  %"zext.630" = zext i32 %".5243" to i64
  %".5244" = load i32, ptr %"R11"
  %"zext.631" = zext i32 %".5244" to i64
  %"shl.332" = shl i64 %"zext.631", 32
  %"or.312" = or i64 %"shl.332", %"zext.630"
  %".5245" = add i64 %"or.312", 12
  %"for_LDG.305" = inttoptr i64 %".5245" to ptr
  %".5246" = load float, ptr %"for_LDG.305"
  %".5247" = bitcast ptr %"R58" to ptr
  store float %".5246", ptr %".5247"
  ; LDG.E.SYS R6, [R12]
  %".5250" = load i32, ptr %"R12"
  %"zext.632" = zext i32 %".5250" to i64
  %".5251" = load i32, ptr %"R13"
  %"zext.633" = zext i32 %".5251" to i64
  %"shl.333" = shl i64 %"zext.633", 32
  %"or.313" = or i64 %"shl.333", %"zext.632"
  %".5252" = add i64 %"or.313", 0
  %"for_LDG.306" = inttoptr i64 %".5252" to ptr
  %".5253" = load float, ptr %"for_LDG.306"
  %".5254" = bitcast ptr %"R6" to ptr
  store float %".5253", ptr %".5254"
  ; LDG.E.SYS R41, [R12+0x4]
  %".5257" = load i32, ptr %"R12"
  %"zext.634" = zext i32 %".5257" to i64
  %".5258" = load i32, ptr %"R13"
  %"zext.635" = zext i32 %".5258" to i64
  %"shl.334" = shl i64 %"zext.635", 32
  %"or.314" = or i64 %"shl.334", %"zext.634"
  %".5259" = add i64 %"or.314", 4
  %"for_LDG.307" = inttoptr i64 %".5259" to ptr
  %".5260" = load float, ptr %"for_LDG.307"
  %".5261" = bitcast ptr %"R41" to ptr
  store float %".5260", ptr %".5261"
  ; LDG.E.SYS R10, [R4]
  %".5264" = load i32, ptr %"R4"
  %"zext.636" = zext i32 %".5264" to i64
  %".5265" = load i32, ptr %"R5"
  %"zext.637" = zext i32 %".5265" to i64
  %"shl.335" = shl i64 %"zext.637", 32
  %"or.315" = or i64 %"shl.335", %"zext.636"
  %".5266" = add i64 %"or.315", 0
  %"for_LDG.308" = inttoptr i64 %".5266" to ptr
  %".5267" = load float, ptr %"for_LDG.308"
  %".5268" = bitcast ptr %"R10" to ptr
  store float %".5267", ptr %".5268"
  ; LDG.E.SYS R7, [R12+0x8]
  %".5271" = load i32, ptr %"R12"
  %"zext.638" = zext i32 %".5271" to i64
  %".5272" = load i32, ptr %"R13"
  %"zext.639" = zext i32 %".5272" to i64
  %"shl.336" = shl i64 %"zext.639", 32
  %"or.316" = or i64 %"shl.336", %"zext.638"
  %".5273" = add i64 %"or.316", 8
  %"for_LDG.309" = inttoptr i64 %".5273" to ptr
  %".5274" = load float, ptr %"for_LDG.309"
  %".5275" = bitcast ptr %"R7" to ptr
  store float %".5274", ptr %".5275"
  ; LDG.E.SYS R9, [R4+0x4]
  %".5278" = load i32, ptr %"R4"
  %"zext.640" = zext i32 %".5278" to i64
  %".5279" = load i32, ptr %"R5"
  %"zext.641" = zext i32 %".5279" to i64
  %"shl.337" = shl i64 %"zext.641", 32
  %"or.317" = or i64 %"shl.337", %"zext.640"
  %".5280" = add i64 %"or.317", 4
  %"for_LDG.310" = inttoptr i64 %".5280" to ptr
  %".5281" = load float, ptr %"for_LDG.310"
  %".5282" = bitcast ptr %"R9" to ptr
  store float %".5281", ptr %".5282"
  ; LDG.E.SYS R60, [R12+0xc]
  %".5285" = load i32, ptr %"R12"
  %"zext.642" = zext i32 %".5285" to i64
  %".5286" = load i32, ptr %"R13"
  %"zext.643" = zext i32 %".5286" to i64
  %"shl.338" = shl i64 %"zext.643", 32
  %"or.318" = or i64 %"shl.338", %"zext.642"
  %".5287" = add i64 %"or.318", 12
  %"for_LDG.311" = inttoptr i64 %".5287" to ptr
  %".5288" = load float, ptr %"for_LDG.311"
  %".5289" = bitcast ptr %"R60" to ptr
  store float %".5288", ptr %".5289"
  ; LDG.E.SYS R8, [R4+0x8]
  %".5292" = load i32, ptr %"R4"
  %"zext.644" = zext i32 %".5292" to i64
  %".5293" = load i32, ptr %"R5"
  %"zext.645" = zext i32 %".5293" to i64
  %"shl.339" = shl i64 %"zext.645", 32
  %"or.319" = or i64 %"shl.339", %"zext.644"
  %".5294" = add i64 %"or.319", 8
  %"for_LDG.312" = inttoptr i64 %".5294" to ptr
  %".5295" = load float, ptr %"for_LDG.312"
  %".5296" = bitcast ptr %"R8" to ptr
  store float %".5295", ptr %".5296"
  ; LDG.E.SYS R11, [R4+0xc]
  %".5299" = load i32, ptr %"R4"
  %"zext.646" = zext i32 %".5299" to i64
  %".5300" = load i32, ptr %"R5"
  %"zext.647" = zext i32 %".5300" to i64
  %"shl.340" = shl i64 %"zext.647", 32
  %"or.320" = or i64 %"shl.340", %"zext.646"
  %".5301" = add i64 %"or.320", 12
  %"for_LDG.313" = inttoptr i64 %".5301" to ptr
  %".5302" = load float, ptr %"for_LDG.313"
  %".5303" = bitcast ptr %"R11" to ptr
  store float %".5302", ptr %".5303"
  ; IADD3 R35, R35, -0x10, RZ
  %".5306" = load i32, ptr %"R35"
  %"add.280" = add i32 %".5306", -16
  %"add.281" = add i32 %"add.280", 0
  store i32 %"add.281", ptr %"R35"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".5309" = load i32, ptr %"R35"
  %".5310" = load i1, ptr %"PT"
  %"cmp.48" = icmp sgt i32 %".5309", 12
  %".5311" = and i1 %"cmp.48", %".5310"
  ; IADD3 R34, R34, 0x10, RZ
  %".5313" = load i32, ptr %"R34"
  %"add.282" = add i32 %".5313", 16
  %"add.283" = add i32 %"add.282", 0
  store i32 %"add.283", ptr %"R34"
  ; FMUL R25, R25, R22
  %".5316" = load float, ptr %"R25"
  %".5317" = load float, ptr %"R22"
  %"fmul.243" = fmul float %".5316", %".5317"
  %".5318" = bitcast ptr %"R25" to ptr
  store float %"fmul.243", ptr %".5318"
  ; FFMA R25, R25, R36, R21
  %".5321" = load float, ptr %"R25"
  %".5322" = load float, ptr %"R36"
  %".5323" = load float, ptr %"R21"
  %"fmul.244" = fmul float %".5321", %".5322"
  %"fadd.223" = fadd float %"fmul.244", %".5323"
  %".5324" = bitcast ptr %"R25" to ptr
  store float %"fadd.223", ptr %".5324"
  ; FMUL R37, R37, R22
  %".5327" = load float, ptr %"R37"
  %".5328" = load float, ptr %"R22"
  %"fmul.245" = fmul float %".5327", %".5328"
  %".5329" = bitcast ptr %"R37" to ptr
  store float %"fmul.245", ptr %".5329"
  ; FFMA R25, R37, R24, R25
  %".5332" = load float, ptr %"R37"
  %".5333" = load float, ptr %"R24"
  %".5334" = load float, ptr %"R25"
  %"fmul.246" = fmul float %".5332", %".5333"
  %"fadd.224" = fadd float %"fmul.246", %".5334"
  %".5335" = bitcast ptr %"R25" to ptr
  store float %"fadd.224", ptr %".5335"
  ; FMUL R39, R39, R22
  %".5338" = load float, ptr %"R39"
  %".5339" = load float, ptr %"R22"
  %"fmul.247" = fmul float %".5338", %".5339"
  %".5340" = bitcast ptr %"R39" to ptr
  store float %"fmul.247", ptr %".5340"
  ; FFMA R25, R39, R38, R25
  %".5343" = load float, ptr %"R39"
  %".5344" = load float, ptr %"R38"
  %".5345" = load float, ptr %"R25"
  %"fmul.248" = fmul float %".5343", %".5344"
  %"fadd.225" = fadd float %"fmul.248", %".5345"
  %".5346" = bitcast ptr %"R25" to ptr
  store float %"fadd.225", ptr %".5346"
  ; FMUL R43, R43, R22
  %".5349" = load float, ptr %"R43"
  %".5350" = load float, ptr %"R22"
  %"fmul.249" = fmul float %".5349", %".5350"
  %".5351" = bitcast ptr %"R43" to ptr
  store float %"fmul.249", ptr %".5351"
  ; FFMA R25, R43, R46, R25
  %".5354" = load float, ptr %"R43"
  %".5355" = load float, ptr %"R46"
  %".5356" = load float, ptr %"R25"
  %"fmul.250" = fmul float %".5354", %".5355"
  %"fadd.226" = fadd float %"fmul.250", %".5356"
  %".5357" = bitcast ptr %"R25" to ptr
  store float %"fadd.226", ptr %".5357"
  ; FMUL R51, R51, R22
  %".5360" = load float, ptr %"R51"
  %".5361" = load float, ptr %"R22"
  %"fmul.251" = fmul float %".5360", %".5361"
  %".5362" = bitcast ptr %"R51" to ptr
  store float %"fmul.251", ptr %".5362"
  ; FFMA R25, R51, R44, R25
  %".5365" = load float, ptr %"R51"
  %".5366" = load float, ptr %"R44"
  %".5367" = load float, ptr %"R25"
  %"fmul.252" = fmul float %".5365", %".5366"
  %"fadd.227" = fadd float %"fmul.252", %".5367"
  %".5368" = bitcast ptr %"R25" to ptr
  store float %"fadd.227", ptr %".5368"
  ; FMUL R47, R47, R22
  %".5371" = load float, ptr %"R47"
  %".5372" = load float, ptr %"R22"
  %"fmul.253" = fmul float %".5371", %".5372"
  %".5373" = bitcast ptr %"R47" to ptr
  store float %"fmul.253", ptr %".5373"
  ; FFMA R25, R47, R42, R25
  %".5376" = load float, ptr %"R47"
  %".5377" = load float, ptr %"R42"
  %".5378" = load float, ptr %"R25"
  %"fmul.254" = fmul float %".5376", %".5377"
  %"fadd.228" = fadd float %"fmul.254", %".5378"
  %".5379" = bitcast ptr %"R25" to ptr
  store float %"fadd.228", ptr %".5379"
  ; FMUL R45, R45, R22
  %".5382" = load float, ptr %"R45"
  %".5383" = load float, ptr %"R22"
  %"fmul.255" = fmul float %".5382", %".5383"
  %".5384" = bitcast ptr %"R45" to ptr
  store float %"fmul.255", ptr %".5384"
  ; FFMA R25, R45, R40, R25
  %".5387" = load float, ptr %"R45"
  %".5388" = load float, ptr %"R40"
  %".5389" = load float, ptr %"R25"
  %"fmul.256" = fmul float %".5387", %".5388"
  %"fadd.229" = fadd float %"fmul.256", %".5389"
  %".5390" = bitcast ptr %"R25" to ptr
  store float %"fadd.229", ptr %".5390"
  ; FMUL R53, R53, R22
  %".5393" = load float, ptr %"R53"
  %".5394" = load float, ptr %"R22"
  %"fmul.257" = fmul float %".5393", %".5394"
  %".5395" = bitcast ptr %"R53" to ptr
  store float %"fmul.257", ptr %".5395"
  ; FFMA R25, R53, R54, R25
  %".5398" = load float, ptr %"R53"
  %".5399" = load float, ptr %"R54"
  %".5400" = load float, ptr %"R25"
  %"fmul.258" = fmul float %".5398", %".5399"
  %"fadd.230" = fadd float %"fmul.258", %".5400"
  %".5401" = bitcast ptr %"R25" to ptr
  store float %"fadd.230", ptr %".5401"
  ; FMUL R59, R59, R22
  %".5404" = load float, ptr %"R59"
  %".5405" = load float, ptr %"R22"
  %"fmul.259" = fmul float %".5404", %".5405"
  %".5406" = bitcast ptr %"R59" to ptr
  store float %"fmul.259", ptr %".5406"
  ; FFMA R25, R59, R52, R25
  %".5409" = load float, ptr %"R59"
  %".5410" = load float, ptr %"R52"
  %".5411" = load float, ptr %"R25"
  %"fmul.260" = fmul float %".5409", %".5410"
  %"fadd.231" = fadd float %"fmul.260", %".5411"
  %".5412" = bitcast ptr %"R25" to ptr
  store float %"fadd.231", ptr %".5412"
  ; FMUL R57, R57, R22
  %".5415" = load float, ptr %"R57"
  %".5416" = load float, ptr %"R22"
  %"fmul.261" = fmul float %".5415", %".5416"
  %".5417" = bitcast ptr %"R57" to ptr
  store float %"fmul.261", ptr %".5417"
  ; FFMA R25, R57, R50, R25
  %".5420" = load float, ptr %"R57"
  %".5421" = load float, ptr %"R50"
  %".5422" = load float, ptr %"R25"
  %"fmul.262" = fmul float %".5420", %".5421"
  %"fadd.232" = fadd float %"fmul.262", %".5422"
  %".5423" = bitcast ptr %"R25" to ptr
  store float %"fadd.232", ptr %".5423"
  ; FMUL R55, R55, R22.reuse
  %".5426" = load float, ptr %"R55"
  %".5427" = load float, ptr %"R22"
  %"fmul.263" = fmul float %".5426", %".5427"
  %".5428" = bitcast ptr %"R55" to ptr
  store float %"fmul.263", ptr %".5428"
  ; FMUL R61, R61, R22
  %".5431" = load float, ptr %"R61"
  %".5432" = load float, ptr %"R22"
  %"fmul.264" = fmul float %".5431", %".5432"
  %".5433" = bitcast ptr %"R61" to ptr
  store float %"fmul.264", ptr %".5433"
  ; FFMA R25, R55, R56, R25
  %".5436" = load float, ptr %"R55"
  %".5437" = load float, ptr %"R56"
  %".5438" = load float, ptr %"R25"
  %"fmul.265" = fmul float %".5436", %".5437"
  %"fadd.233" = fadd float %"fmul.265", %".5438"
  %".5439" = bitcast ptr %"R25" to ptr
  store float %"fadd.233", ptr %".5439"
  ; FFMA R25, R61, R58, R25
  %".5442" = load float, ptr %"R61"
  %".5443" = load float, ptr %"R58"
  %".5444" = load float, ptr %"R25"
  %"fmul.266" = fmul float %".5442", %".5443"
  %"fadd.234" = fadd float %"fmul.266", %".5444"
  %".5445" = bitcast ptr %"R25" to ptr
  store float %"fadd.234", ptr %".5445"
  ; FMUL R6, R6, R22.reuse
  %".5448" = load float, ptr %"R6"
  %".5449" = load float, ptr %"R22"
  %"fmul.267" = fmul float %".5448", %".5449"
  %".5450" = bitcast ptr %"R6" to ptr
  store float %"fmul.267", ptr %".5450"
  ; FMUL R41, R41, R22
  %".5453" = load float, ptr %"R41"
  %".5454" = load float, ptr %"R22"
  %"fmul.268" = fmul float %".5453", %".5454"
  %".5455" = bitcast ptr %"R41" to ptr
  store float %"fmul.268", ptr %".5455"
  ; FFMA R6, R6, R10, R25
  %".5458" = load float, ptr %"R6"
  %".5459" = load float, ptr %"R10"
  %".5460" = load float, ptr %"R25"
  %"fmul.269" = fmul float %".5458", %".5459"
  %"fadd.235" = fadd float %"fmul.269", %".5460"
  %".5461" = bitcast ptr %"R6" to ptr
  store float %"fadd.235", ptr %".5461"
  ; FMUL R7, R7, R22
  %".5464" = load float, ptr %"R7"
  %".5465" = load float, ptr %"R22"
  %"fmul.270" = fmul float %".5464", %".5465"
  %".5466" = bitcast ptr %"R7" to ptr
  store float %"fmul.270", ptr %".5466"
  ; FFMA R9, R41, R9, R6
  %".5469" = load float, ptr %"R41"
  %".5470" = load float, ptr %"R9"
  %".5471" = load float, ptr %"R6"
  %"fmul.271" = fmul float %".5469", %".5470"
  %"fadd.236" = fadd float %"fmul.271", %".5471"
  %".5472" = bitcast ptr %"R9" to ptr
  store float %"fadd.236", ptr %".5472"
  ; FMUL R60, R60, R22
  %".5475" = load float, ptr %"R60"
  %".5476" = load float, ptr %"R22"
  %"fmul.272" = fmul float %".5475", %".5476"
  %".5477" = bitcast ptr %"R60" to ptr
  store float %"fmul.272", ptr %".5477"
  ; FFMA R8, R7, R8, R9
  %".5480" = load float, ptr %"R7"
  %".5481" = load float, ptr %"R8"
  %".5482" = load float, ptr %"R9"
  %"fmul.273" = fmul float %".5480", %".5481"
  %"fadd.237" = fadd float %"fmul.273", %".5482"
  %".5483" = bitcast ptr %"R8" to ptr
  store float %"fadd.237", ptr %".5483"
  ; FFMA R21, R60, R11, R8
  %".5486" = load float, ptr %"R60"
  %".5487" = load float, ptr %"R11"
  %".5488" = load float, ptr %"R8"
  %"fmul.274" = fmul float %".5486", %".5487"
  %"fadd.238" = fadd float %"fmul.274", %".5488"
  %".5489" = bitcast ptr %"R21" to ptr
  store float %"fadd.238", ptr %".5489"
  ; @P1 BRA `(.L_x_39)
  %".5492" = load i1, ptr %"P1"
  %".5493" = icmp ne i1 %".5492", 1
  br i1 %".5493", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".5496" = load i32, ptr %"R35"
  %".5497" = load i1, ptr %"PT"
  %"cmp.49" = icmp sgt i32 %".5496", 4
  %".5498" = and i1 %"cmp.49", %".5497"
  ; @!P1 BRA `(.L_x_40)
  %".5500" = load i1, ptr %"P1"
  %".5501" = icmp eq i1 %".5500", 1
  br i1 %".5501", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R6, R3, R34, RZ
  %".5506" = load i32, ptr %"R3"
  %".5507" = load i32, ptr %"R34"
  %"add.284" = add i32 %".5506", %".5507"
  %"add.285" = add i32 %"add.284", 0
  store i32 %"add.285", ptr %"R6"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".5510" = load i32, ptr %"R34"
  %".5511" = load i32, ptr %"R11"
  %"mul.98" = mul i32 %".5510", %".5511"
  %"add.286" = add i32 %"mul.98", %"Arg_3"
  store i32 %"add.286", ptr %"R8"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".5514" = load i32, ptr %"R6"
  %".5515" = load i32, ptr %"R11"
  %"mul.99" = mul i32 %".5514", %".5515"
  %"add.287" = add i32 %"mul.99", %"Arg_4"
  store i32 %"add.287", ptr %"R6"
  ; IADD3 R4, R34, 0x4, RZ
  %".5518" = load i32, ptr %"R34"
  %"add.288" = add i32 %".5518", 4
  %"add.289" = add i32 %"add.288", 0
  store i32 %"add.289", ptr %"R4"
  ; LDG.E.SYS R13, [R8]
  %".5521" = load i32, ptr %"R8"
  %"zext.648" = zext i32 %".5521" to i64
  %".5522" = load i32, ptr %"R9"
  %"zext.649" = zext i32 %".5522" to i64
  %"shl.341" = shl i64 %"zext.649", 32
  %"or.321" = or i64 %"shl.341", %"zext.648"
  %".5523" = add i64 %"or.321", 0
  %"for_LDG.314" = inttoptr i64 %".5523" to ptr
  %".5524" = load float, ptr %"for_LDG.314"
  %".5525" = bitcast ptr %"R13" to ptr
  store float %".5524", ptr %".5525"
  ; IADD3 R10, R3, R4, RZ
  %".5528" = load i32, ptr %"R3"
  %".5529" = load i32, ptr %"R4"
  %"add.290" = add i32 %".5528", %".5529"
  %"add.291" = add i32 %"add.290", 0
  store i32 %"add.291", ptr %"R10"
  ; LDG.E.SYS R12, [R6]
  %".5532" = load i32, ptr %"R6"
  %"zext.650" = zext i32 %".5532" to i64
  %".5533" = load i32, ptr %"R7"
  %"zext.651" = zext i32 %".5533" to i64
  %"shl.342" = shl i64 %"zext.651", 32
  %"or.322" = or i64 %"shl.342", %"zext.650"
  %".5534" = add i64 %"or.322", 0
  %"for_LDG.315" = inttoptr i64 %".5534" to ptr
  %".5535" = load float, ptr %"for_LDG.315"
  %".5536" = bitcast ptr %"R12" to ptr
  store float %".5535", ptr %".5536"
  ; LDG.E.SYS R25, [R8+0x4]
  %".5539" = load i32, ptr %"R8"
  %"zext.652" = zext i32 %".5539" to i64
  %".5540" = load i32, ptr %"R9"
  %"zext.653" = zext i32 %".5540" to i64
  %"shl.343" = shl i64 %"zext.653", 32
  %"or.323" = or i64 %"shl.343", %"zext.652"
  %".5541" = add i64 %"or.323", 4
  %"for_LDG.316" = inttoptr i64 %".5541" to ptr
  %".5542" = load float, ptr %"for_LDG.316"
  %".5543" = bitcast ptr %"R25" to ptr
  store float %".5542", ptr %".5543"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".5546" = load i32, ptr %"R4"
  %".5547" = load i32, ptr %"R11"
  %"mul.100" = mul i32 %".5546", %".5547"
  %"add.292" = add i32 %"mul.100", %"Arg_3"
  store i32 %"add.292", ptr %"R4"
  ; LDG.E.SYS R24, [R6+0x4]
  %".5550" = load i32, ptr %"R6"
  %"zext.654" = zext i32 %".5550" to i64
  %".5551" = load i32, ptr %"R7"
  %"zext.655" = zext i32 %".5551" to i64
  %"shl.344" = shl i64 %"zext.655", 32
  %"or.324" = or i64 %"shl.344", %"zext.654"
  %".5552" = add i64 %"or.324", 4
  %"for_LDG.317" = inttoptr i64 %".5552" to ptr
  %".5553" = load float, ptr %"for_LDG.317"
  %".5554" = bitcast ptr %"R24" to ptr
  store float %".5553", ptr %".5554"
  ; LDG.E.SYS R37, [R8+0x8]
  %".5557" = load i32, ptr %"R8"
  %"zext.656" = zext i32 %".5557" to i64
  %".5558" = load i32, ptr %"R9"
  %"zext.657" = zext i32 %".5558" to i64
  %"shl.345" = shl i64 %"zext.657", 32
  %"or.325" = or i64 %"shl.345", %"zext.656"
  %".5559" = add i64 %"or.325", 8
  %"for_LDG.318" = inttoptr i64 %".5559" to ptr
  %".5560" = load float, ptr %"for_LDG.318"
  %".5561" = bitcast ptr %"R37" to ptr
  store float %".5560", ptr %".5561"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".5564" = load i32, ptr %"R10"
  %".5565" = load i32, ptr %"R11"
  %"mul.101" = mul i32 %".5564", %".5565"
  %"add.293" = add i32 %"mul.101", %"Arg_4"
  store i32 %"add.293", ptr %"R10"
  ; LDG.E.SYS R36, [R6+0x8]
  %".5568" = load i32, ptr %"R6"
  %"zext.658" = zext i32 %".5568" to i64
  %".5569" = load i32, ptr %"R7"
  %"zext.659" = zext i32 %".5569" to i64
  %"shl.346" = shl i64 %"zext.659", 32
  %"or.326" = or i64 %"shl.346", %"zext.658"
  %".5570" = add i64 %"or.326", 8
  %"for_LDG.319" = inttoptr i64 %".5570" to ptr
  %".5571" = load float, ptr %"for_LDG.319"
  %".5572" = bitcast ptr %"R36" to ptr
  store float %".5571", ptr %".5572"
  ; LDG.E.SYS R39, [R8+0xc]
  %".5575" = load i32, ptr %"R8"
  %"zext.660" = zext i32 %".5575" to i64
  %".5576" = load i32, ptr %"R9"
  %"zext.661" = zext i32 %".5576" to i64
  %"shl.347" = shl i64 %"zext.661", 32
  %"or.327" = or i64 %"shl.347", %"zext.660"
  %".5577" = add i64 %"or.327", 12
  %"for_LDG.320" = inttoptr i64 %".5577" to ptr
  %".5578" = load float, ptr %"for_LDG.320"
  %".5579" = bitcast ptr %"R39" to ptr
  store float %".5578", ptr %".5579"
  ; LDG.E.SYS R38, [R6+0xc]
  %".5582" = load i32, ptr %"R6"
  %"zext.662" = zext i32 %".5582" to i64
  %".5583" = load i32, ptr %"R7"
  %"zext.663" = zext i32 %".5583" to i64
  %"shl.348" = shl i64 %"zext.663", 32
  %"or.328" = or i64 %"shl.348", %"zext.662"
  %".5584" = add i64 %"or.328", 12
  %"for_LDG.321" = inttoptr i64 %".5584" to ptr
  %".5585" = load float, ptr %"for_LDG.321"
  %".5586" = bitcast ptr %"R38" to ptr
  store float %".5585", ptr %".5586"
  ; LDG.E.SYS R41, [R4]
  %".5589" = load i32, ptr %"R4"
  %"zext.664" = zext i32 %".5589" to i64
  %".5590" = load i32, ptr %"R5"
  %"zext.665" = zext i32 %".5590" to i64
  %"shl.349" = shl i64 %"zext.665", 32
  %"or.329" = or i64 %"shl.349", %"zext.664"
  %".5591" = add i64 %"or.329", 0
  %"for_LDG.322" = inttoptr i64 %".5591" to ptr
  %".5592" = load float, ptr %"for_LDG.322"
  %".5593" = bitcast ptr %"R41" to ptr
  store float %".5592", ptr %".5593"
  ; LDG.E.SYS R40, [R10]
  %".5596" = load i32, ptr %"R10"
  %"zext.666" = zext i32 %".5596" to i64
  %".5597" = load i32, ptr %"R11"
  %"zext.667" = zext i32 %".5597" to i64
  %"shl.350" = shl i64 %"zext.667", 32
  %"or.330" = or i64 %"shl.350", %"zext.666"
  %".5598" = add i64 %"or.330", 0
  %"for_LDG.323" = inttoptr i64 %".5598" to ptr
  %".5599" = load float, ptr %"for_LDG.323"
  %".5600" = bitcast ptr %"R40" to ptr
  store float %".5599", ptr %".5600"
  ; LDG.E.SYS R43, [R4+0x4]
  %".5603" = load i32, ptr %"R4"
  %"zext.668" = zext i32 %".5603" to i64
  %".5604" = load i32, ptr %"R5"
  %"zext.669" = zext i32 %".5604" to i64
  %"shl.351" = shl i64 %"zext.669", 32
  %"or.331" = or i64 %"shl.351", %"zext.668"
  %".5605" = add i64 %"or.331", 4
  %"for_LDG.324" = inttoptr i64 %".5605" to ptr
  %".5606" = load float, ptr %"for_LDG.324"
  %".5607" = bitcast ptr %"R43" to ptr
  store float %".5606", ptr %".5607"
  ; LDG.E.SYS R42, [R10+0x4]
  %".5610" = load i32, ptr %"R10"
  %"zext.670" = zext i32 %".5610" to i64
  %".5611" = load i32, ptr %"R11"
  %"zext.671" = zext i32 %".5611" to i64
  %"shl.352" = shl i64 %"zext.671", 32
  %"or.332" = or i64 %"shl.352", %"zext.670"
  %".5612" = add i64 %"or.332", 4
  %"for_LDG.325" = inttoptr i64 %".5612" to ptr
  %".5613" = load float, ptr %"for_LDG.325"
  %".5614" = bitcast ptr %"R42" to ptr
  store float %".5613", ptr %".5614"
  ; LDG.E.SYS R45, [R4+0x8]
  %".5617" = load i32, ptr %"R4"
  %"zext.672" = zext i32 %".5617" to i64
  %".5618" = load i32, ptr %"R5"
  %"zext.673" = zext i32 %".5618" to i64
  %"shl.353" = shl i64 %"zext.673", 32
  %"or.333" = or i64 %"shl.353", %"zext.672"
  %".5619" = add i64 %"or.333", 8
  %"for_LDG.326" = inttoptr i64 %".5619" to ptr
  %".5620" = load float, ptr %"for_LDG.326"
  %".5621" = bitcast ptr %"R45" to ptr
  store float %".5620", ptr %".5621"
  ; LDG.E.SYS R47, [R4+0xc]
  %".5624" = load i32, ptr %"R4"
  %"zext.674" = zext i32 %".5624" to i64
  %".5625" = load i32, ptr %"R5"
  %"zext.675" = zext i32 %".5625" to i64
  %"shl.354" = shl i64 %"zext.675", 32
  %"or.334" = or i64 %"shl.354", %"zext.674"
  %".5626" = add i64 %"or.334", 12
  %"for_LDG.327" = inttoptr i64 %".5626" to ptr
  %".5627" = load float, ptr %"for_LDG.327"
  %".5628" = bitcast ptr %"R47" to ptr
  store float %".5627", ptr %".5628"
  ; LDG.E.SYS R44, [R10+0x8]
  %".5631" = load i32, ptr %"R10"
  %"zext.676" = zext i32 %".5631" to i64
  %".5632" = load i32, ptr %"R11"
  %"zext.677" = zext i32 %".5632" to i64
  %"shl.355" = shl i64 %"zext.677", 32
  %"or.335" = or i64 %"shl.355", %"zext.676"
  %".5633" = add i64 %"or.335", 8
  %"for_LDG.328" = inttoptr i64 %".5633" to ptr
  %".5634" = load float, ptr %"for_LDG.328"
  %".5635" = bitcast ptr %"R44" to ptr
  store float %".5634", ptr %".5635"
  ; LDG.E.SYS R46, [R10+0xc]
  %".5638" = load i32, ptr %"R10"
  %"zext.678" = zext i32 %".5638" to i64
  %".5639" = load i32, ptr %"R11"
  %"zext.679" = zext i32 %".5639" to i64
  %"shl.356" = shl i64 %"zext.679", 32
  %"or.336" = or i64 %"shl.356", %"zext.678"
  %".5640" = add i64 %"or.336", 12
  %"for_LDG.329" = inttoptr i64 %".5640" to ptr
  %".5641" = load float, ptr %"for_LDG.329"
  %".5642" = bitcast ptr %"R46" to ptr
  store float %".5641", ptr %".5642"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".5645" = xor i1 1, 1
  %".5646" = and i1 %".5645", 1
  %".5647" = and i1 %".5646", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".5649" = load i32, ptr %"R35"
  %"add.294" = add i32 %".5649", -8
  %"add.295" = add i32 %"add.294", 0
  store i32 %"add.295", ptr %"R35"
  ; IADD3 R34, R34, 0x8, RZ
  %".5652" = load i32, ptr %"R34"
  %"add.296" = add i32 %".5652", 8
  %"add.297" = add i32 %"add.296", 0
  store i32 %"add.297", ptr %"R34"
  ; FMUL R8, R13, R22
  %".5655" = load float, ptr %"R13"
  %".5656" = load float, ptr %"R22"
  %"fmul.275" = fmul float %".5655", %".5656"
  %".5657" = bitcast ptr %"R8" to ptr
  store float %"fmul.275", ptr %".5657"
  ; FFMA R8, R8, R12, R21
  %".5660" = load float, ptr %"R8"
  %".5661" = load float, ptr %"R12"
  %".5662" = load float, ptr %"R21"
  %"fmul.276" = fmul float %".5660", %".5661"
  %"fadd.239" = fadd float %"fmul.276", %".5662"
  %".5663" = bitcast ptr %"R8" to ptr
  store float %"fadd.239", ptr %".5663"
  ; FMUL R25, R25, R22
  %".5666" = load float, ptr %"R25"
  %".5667" = load float, ptr %"R22"
  %"fmul.277" = fmul float %".5666", %".5667"
  %".5668" = bitcast ptr %"R25" to ptr
  store float %"fmul.277", ptr %".5668"
  ; FFMA R8, R25, R24, R8
  %".5671" = load float, ptr %"R25"
  %".5672" = load float, ptr %"R24"
  %".5673" = load float, ptr %"R8"
  %"fmul.278" = fmul float %".5671", %".5672"
  %"fadd.240" = fadd float %"fmul.278", %".5673"
  %".5674" = bitcast ptr %"R8" to ptr
  store float %"fadd.240", ptr %".5674"
  ; FMUL R37, R37, R22
  %".5677" = load float, ptr %"R37"
  %".5678" = load float, ptr %"R22"
  %"fmul.279" = fmul float %".5677", %".5678"
  %".5679" = bitcast ptr %"R37" to ptr
  store float %"fmul.279", ptr %".5679"
  ; FFMA R8, R37, R36, R8
  %".5682" = load float, ptr %"R37"
  %".5683" = load float, ptr %"R36"
  %".5684" = load float, ptr %"R8"
  %"fmul.280" = fmul float %".5682", %".5683"
  %"fadd.241" = fadd float %"fmul.280", %".5684"
  %".5685" = bitcast ptr %"R8" to ptr
  store float %"fadd.241", ptr %".5685"
  ; FMUL R39, R39, R22
  %".5688" = load float, ptr %"R39"
  %".5689" = load float, ptr %"R22"
  %"fmul.281" = fmul float %".5688", %".5689"
  %".5690" = bitcast ptr %"R39" to ptr
  store float %"fmul.281", ptr %".5690"
  ; FFMA R8, R39, R38, R8
  %".5693" = load float, ptr %"R39"
  %".5694" = load float, ptr %"R38"
  %".5695" = load float, ptr %"R8"
  %"fmul.282" = fmul float %".5693", %".5694"
  %"fadd.242" = fadd float %"fmul.282", %".5695"
  %".5696" = bitcast ptr %"R8" to ptr
  store float %"fadd.242", ptr %".5696"
  ; FMUL R41, R41, R22
  %".5699" = load float, ptr %"R41"
  %".5700" = load float, ptr %"R22"
  %"fmul.283" = fmul float %".5699", %".5700"
  %".5701" = bitcast ptr %"R41" to ptr
  store float %"fmul.283", ptr %".5701"
  ; FFMA R8, R41, R40, R8
  %".5704" = load float, ptr %"R41"
  %".5705" = load float, ptr %"R40"
  %".5706" = load float, ptr %"R8"
  %"fmul.284" = fmul float %".5704", %".5705"
  %"fadd.243" = fadd float %"fmul.284", %".5706"
  %".5707" = bitcast ptr %"R8" to ptr
  store float %"fadd.243", ptr %".5707"
  ; FMUL R43, R43, R22
  %".5710" = load float, ptr %"R43"
  %".5711" = load float, ptr %"R22"
  %"fmul.285" = fmul float %".5710", %".5711"
  %".5712" = bitcast ptr %"R43" to ptr
  store float %"fmul.285", ptr %".5712"
  ; FFMA R8, R43, R42, R8
  %".5715" = load float, ptr %"R43"
  %".5716" = load float, ptr %"R42"
  %".5717" = load float, ptr %"R8"
  %"fmul.286" = fmul float %".5715", %".5716"
  %"fadd.244" = fadd float %"fmul.286", %".5717"
  %".5718" = bitcast ptr %"R8" to ptr
  store float %"fadd.244", ptr %".5718"
  ; FMUL R45, R45, R22.reuse
  %".5721" = load float, ptr %"R45"
  %".5722" = load float, ptr %"R22"
  %"fmul.287" = fmul float %".5721", %".5722"
  %".5723" = bitcast ptr %"R45" to ptr
  store float %"fmul.287", ptr %".5723"
  ; FMUL R47, R47, R22
  %".5726" = load float, ptr %"R47"
  %".5727" = load float, ptr %"R22"
  %"fmul.288" = fmul float %".5726", %".5727"
  %".5728" = bitcast ptr %"R47" to ptr
  store float %"fmul.288", ptr %".5728"
  ; FFMA R8, R45, R44, R8
  %".5731" = load float, ptr %"R45"
  %".5732" = load float, ptr %"R44"
  %".5733" = load float, ptr %"R8"
  %"fmul.289" = fmul float %".5731", %".5732"
  %"fadd.245" = fadd float %"fmul.289", %".5733"
  %".5734" = bitcast ptr %"R8" to ptr
  store float %"fadd.245", ptr %".5734"
  ; FFMA R21, R47, R46, R8
  %".5737" = load float, ptr %"R47"
  %".5738" = load float, ptr %"R46"
  %".5739" = load float, ptr %"R8"
  %"fmul.290" = fmul float %".5737", %".5738"
  %"fadd.246" = fadd float %"fmul.290", %".5739"
  %".5740" = bitcast ptr %"R21" to ptr
  store float %"fadd.246", ptr %".5740"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".5743" = load i32, ptr %"R35"
  %".5744" = load i1, ptr %"PT"
  %"cmp.50" = icmp ne i32 %".5743", 0
  %".5745" = or i1 %"cmp.50", %".5744"
  ; @!P0 BRA `(.L_x_36)
  %".5747" = load i1, ptr %"P0"
  %".5748" = icmp eq i1 %".5747", 1
  br i1 %".5748", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IADD3 R6, R3, R34, RZ
  %".5753" = load i32, ptr %"R3"
  %".5754" = load i32, ptr %"R34"
  %"add.298" = add i32 %".5753", %".5754"
  %"add.299" = add i32 %"add.298", 0
  store i32 %"add.299", ptr %"R6"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".5757" = load i32, ptr %"R34"
  %".5758" = load i32, ptr %"R7"
  %"mul.102" = mul i32 %".5757", %".5758"
  %"add.300" = add i32 %"mul.102", %"Arg_3"
  store i32 %"add.300", ptr %"R4"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".5761" = load i32, ptr %"R6"
  %".5762" = load i32, ptr %"R7"
  %"mul.103" = mul i32 %".5761", %".5762"
  %"add.301" = add i32 %"mul.103", %"Arg_4"
  store i32 %"add.301", ptr %"R6"
  ; LDG.E.SYS R9, [R4]
  %".5765" = load i32, ptr %"R4"
  %"zext.680" = zext i32 %".5765" to i64
  %".5766" = load i32, ptr %"R5"
  %"zext.681" = zext i32 %".5766" to i64
  %"shl.357" = shl i64 %"zext.681", 32
  %"or.337" = or i64 %"shl.357", %"zext.680"
  %".5767" = add i64 %"or.337", 0
  %"for_LDG.330" = inttoptr i64 %".5767" to ptr
  %".5768" = load float, ptr %"for_LDG.330"
  %".5769" = bitcast ptr %"R9" to ptr
  store float %".5768", ptr %".5769"
  ; LDG.E.SYS R10, [R6]
  %".5772" = load i32, ptr %"R6"
  %"zext.682" = zext i32 %".5772" to i64
  %".5773" = load i32, ptr %"R7"
  %"zext.683" = zext i32 %".5773" to i64
  %"shl.358" = shl i64 %"zext.683", 32
  %"or.338" = or i64 %"shl.358", %"zext.682"
  %".5774" = add i64 %"or.338", 0
  %"for_LDG.331" = inttoptr i64 %".5774" to ptr
  %".5775" = load float, ptr %"for_LDG.331"
  %".5776" = bitcast ptr %"R10" to ptr
  store float %".5775", ptr %".5776"
  ; LDG.E.SYS R11, [R4+0x4]
  %".5779" = load i32, ptr %"R4"
  %"zext.684" = zext i32 %".5779" to i64
  %".5780" = load i32, ptr %"R5"
  %"zext.685" = zext i32 %".5780" to i64
  %"shl.359" = shl i64 %"zext.685", 32
  %"or.339" = or i64 %"shl.359", %"zext.684"
  %".5781" = add i64 %"or.339", 4
  %"for_LDG.332" = inttoptr i64 %".5781" to ptr
  %".5782" = load float, ptr %"for_LDG.332"
  %".5783" = bitcast ptr %"R11" to ptr
  store float %".5782", ptr %".5783"
  ; LDG.E.SYS R12, [R6+0x4]
  %".5786" = load i32, ptr %"R6"
  %"zext.686" = zext i32 %".5786" to i64
  %".5787" = load i32, ptr %"R7"
  %"zext.687" = zext i32 %".5787" to i64
  %"shl.360" = shl i64 %"zext.687", 32
  %"or.340" = or i64 %"shl.360", %"zext.686"
  %".5788" = add i64 %"or.340", 4
  %"for_LDG.333" = inttoptr i64 %".5788" to ptr
  %".5789" = load float, ptr %"for_LDG.333"
  %".5790" = bitcast ptr %"R12" to ptr
  store float %".5789", ptr %".5790"
  ; LDG.E.SYS R13, [R4+0x8]
  %".5793" = load i32, ptr %"R4"
  %"zext.688" = zext i32 %".5793" to i64
  %".5794" = load i32, ptr %"R5"
  %"zext.689" = zext i32 %".5794" to i64
  %"shl.361" = shl i64 %"zext.689", 32
  %"or.341" = or i64 %"shl.361", %"zext.688"
  %".5795" = add i64 %"or.341", 8
  %"for_LDG.334" = inttoptr i64 %".5795" to ptr
  %".5796" = load float, ptr %"for_LDG.334"
  %".5797" = bitcast ptr %"R13" to ptr
  store float %".5796", ptr %".5797"
  ; LDG.E.SYS R24, [R6+0x8]
  %".5800" = load i32, ptr %"R6"
  %"zext.690" = zext i32 %".5800" to i64
  %".5801" = load i32, ptr %"R7"
  %"zext.691" = zext i32 %".5801" to i64
  %"shl.362" = shl i64 %"zext.691", 32
  %"or.342" = or i64 %"shl.362", %"zext.690"
  %".5802" = add i64 %"or.342", 8
  %"for_LDG.335" = inttoptr i64 %".5802" to ptr
  %".5803" = load float, ptr %"for_LDG.335"
  %".5804" = bitcast ptr %"R24" to ptr
  store float %".5803", ptr %".5804"
  ; LDG.E.SYS R25, [R4+0xc]
  %".5807" = load i32, ptr %"R4"
  %"zext.692" = zext i32 %".5807" to i64
  %".5808" = load i32, ptr %"R5"
  %"zext.693" = zext i32 %".5808" to i64
  %"shl.363" = shl i64 %"zext.693", 32
  %"or.343" = or i64 %"shl.363", %"zext.692"
  %".5809" = add i64 %"or.343", 12
  %"for_LDG.336" = inttoptr i64 %".5809" to ptr
  %".5810" = load float, ptr %"for_LDG.336"
  %".5811" = bitcast ptr %"R25" to ptr
  store float %".5810", ptr %".5811"
  ; LDG.E.SYS R36, [R6+0xc]
  %".5814" = load i32, ptr %"R6"
  %"zext.694" = zext i32 %".5814" to i64
  %".5815" = load i32, ptr %"R7"
  %"zext.695" = zext i32 %".5815" to i64
  %"shl.364" = shl i64 %"zext.695", 32
  %"or.344" = or i64 %"shl.364", %"zext.694"
  %".5816" = add i64 %"or.344", 12
  %"for_LDG.337" = inttoptr i64 %".5816" to ptr
  %".5817" = load float, ptr %"for_LDG.337"
  %".5818" = bitcast ptr %"R36" to ptr
  store float %".5817", ptr %".5818"
  ; IADD3 R35, R35, -0x4, RZ
  %".5821" = load i32, ptr %"R35"
  %"add.302" = add i32 %".5821", -4
  %"add.303" = add i32 %"add.302", 0
  store i32 %"add.303", ptr %"R35"
  ; IADD3 R34, R34, 0x4, RZ
  %".5824" = load i32, ptr %"R34"
  %"add.304" = add i32 %".5824", 4
  %"add.305" = add i32 %"add.304", 0
  store i32 %"add.305", ptr %"R34"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".5827" = load i32, ptr %"R35"
  %".5828" = load i1, ptr %"PT"
  %"cmp.51" = icmp ne i32 %".5827", 0
  %".5829" = and i1 %"cmp.51", %".5828"
  ; FMUL R8, R9, R22
  %".5831" = load float, ptr %"R9"
  %".5832" = load float, ptr %"R22"
  %"fmul.291" = fmul float %".5831", %".5832"
  %".5833" = bitcast ptr %"R8" to ptr
  store float %"fmul.291", ptr %".5833"
  ; FFMA R8, R8, R10, R21
  %".5836" = load float, ptr %"R8"
  %".5837" = load float, ptr %"R10"
  %".5838" = load float, ptr %"R21"
  %"fmul.292" = fmul float %".5836", %".5837"
  %"fadd.247" = fadd float %"fmul.292", %".5838"
  %".5839" = bitcast ptr %"R8" to ptr
  store float %"fadd.247", ptr %".5839"
  ; FMUL R11, R11, R22
  %".5842" = load float, ptr %"R11"
  %".5843" = load float, ptr %"R22"
  %"fmul.293" = fmul float %".5842", %".5843"
  %".5844" = bitcast ptr %"R11" to ptr
  store float %"fmul.293", ptr %".5844"
  ; FFMA R8, R11, R12, R8
  %".5847" = load float, ptr %"R11"
  %".5848" = load float, ptr %"R12"
  %".5849" = load float, ptr %"R8"
  %"fmul.294" = fmul float %".5847", %".5848"
  %"fadd.248" = fadd float %"fmul.294", %".5849"
  %".5850" = bitcast ptr %"R8" to ptr
  store float %"fadd.248", ptr %".5850"
  ; FMUL R13, R13, R22
  %".5853" = load float, ptr %"R13"
  %".5854" = load float, ptr %"R22"
  %"fmul.295" = fmul float %".5853", %".5854"
  %".5855" = bitcast ptr %"R13" to ptr
  store float %"fmul.295", ptr %".5855"
  ; FFMA R8, R13, R24, R8
  %".5858" = load float, ptr %"R13"
  %".5859" = load float, ptr %"R24"
  %".5860" = load float, ptr %"R8"
  %"fmul.296" = fmul float %".5858", %".5859"
  %"fadd.249" = fadd float %"fmul.296", %".5860"
  %".5861" = bitcast ptr %"R8" to ptr
  store float %"fadd.249", ptr %".5861"
  ; FMUL R25, R25, R22
  %".5864" = load float, ptr %"R25"
  %".5865" = load float, ptr %"R22"
  %"fmul.297" = fmul float %".5864", %".5865"
  %".5866" = bitcast ptr %"R25" to ptr
  store float %"fmul.297", ptr %".5866"
  ; FFMA R21, R25, R36, R8
  %".5869" = load float, ptr %"R25"
  %".5870" = load float, ptr %"R36"
  %".5871" = load float, ptr %"R8"
  %"fmul.298" = fmul float %".5869", %".5870"
  %"fadd.250" = fadd float %"fmul.298", %".5871"
  %".5872" = bitcast ptr %"R21" to ptr
  store float %"fadd.250", ptr %".5872"
  ; @P0 BRA `(.L_x_37)
  %".5875" = load i1, ptr %"P0"
  %".5876" = icmp ne i1 %".5875", 1
  br i1 %".5876", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".5879" = load i32, ptr %"R48"
  %".5880" = load i1, ptr %"PT"
  %"cmp.52" = icmp ne i32 %".5879", 0
  %".5881" = and i1 %"cmp.52", %".5880"
  ; @!P0 BRA `(.L_x_35)
  %".5883" = load i1, ptr %"P0"
  %".5884" = icmp eq i1 %".5883", 1
  br i1 %".5884", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IADD3 R4, R3, R34, RZ
  %".5889" = load i32, ptr %"R3"
  %".5890" = load i32, ptr %"R34"
  %"add.306" = add i32 %".5889", %".5890"
  %"add.307" = add i32 %"add.306", 0
  store i32 %"add.307", ptr %"R4"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".5893" = load i32, ptr %"R34"
  %".5894" = load i32, ptr %"R5"
  %"mul.104" = mul i32 %".5893", %".5894"
  %"add.308" = add i32 %"mul.104", %"Arg_3"
  store i32 %"add.308", ptr %"R34"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".5897" = load i32, ptr %"R4"
  %".5898" = load i32, ptr %"R5"
  %"mul.105" = mul i32 %".5897", %".5898"
  %"add.309" = add i32 %"mul.105", %"Arg_4"
  store i32 %"add.309", ptr %"R4"
  ; LDG.E.SYS R7, [R34]
  %".5901" = load i32, ptr %"R34"
  %"zext.696" = zext i32 %".5901" to i64
  %".5902" = load i32, ptr %"R35"
  %"zext.697" = zext i32 %".5902" to i64
  %"shl.365" = shl i64 %"zext.697", 32
  %"or.345" = or i64 %"shl.365", %"zext.696"
  %".5903" = add i64 %"or.345", 0
  %"for_LDG.338" = inttoptr i64 %".5903" to ptr
  %".5904" = load float, ptr %"for_LDG.338"
  %".5905" = bitcast ptr %"R7" to ptr
  store float %".5904", ptr %".5905"
  ; LDG.E.SYS R8, [R4]
  %".5908" = load i32, ptr %"R4"
  %"zext.698" = zext i32 %".5908" to i64
  %".5909" = load i32, ptr %"R5"
  %"zext.699" = zext i32 %".5909" to i64
  %"shl.366" = shl i64 %"zext.699", 32
  %"or.346" = or i64 %"shl.366", %"zext.698"
  %".5910" = add i64 %"or.346", 0
  %"for_LDG.339" = inttoptr i64 %".5910" to ptr
  %".5911" = load float, ptr %"for_LDG.339"
  %".5912" = bitcast ptr %"R8" to ptr
  store float %".5911", ptr %".5912"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".5915" = load i32, ptr %"R48"
  %".5916" = load i1, ptr %"PT"
  %"cmp.53" = icmp ne i32 %".5915", 1
  %".5917" = and i1 %"cmp.53", %".5916"
  ; FMUL R6, R7, R22
  %".5919" = load float, ptr %"R7"
  %".5920" = load float, ptr %"R22"
  %"fmul.299" = fmul float %".5919", %".5920"
  %".5921" = bitcast ptr %"R6" to ptr
  store float %"fmul.299", ptr %".5921"
  ; FFMA R21, R6, R8, R21
  %".5924" = load float, ptr %"R6"
  %".5925" = load float, ptr %"R8"
  %".5926" = load float, ptr %"R21"
  %"fmul.300" = fmul float %".5924", %".5925"
  %"fadd.251" = fadd float %"fmul.300", %".5926"
  %".5927" = bitcast ptr %"R21" to ptr
  store float %"fadd.251", ptr %".5927"
  ; @!P0 BRA `(.L_x_35)
  %".5930" = load i1, ptr %"P0"
  %".5931" = icmp eq i1 %".5930", 1
  br i1 %".5931", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".5934" = load i32, ptr %"R48"
  %".5935" = load i1, ptr %"PT"
  %"cmp.54" = icmp ne i32 %".5934", 2
  %".5936" = and i1 %"cmp.54", %".5935"
  ; LDG.E.SYS R7, [R34+0x4]
  %".5938" = load i32, ptr %"R34"
  %"zext.700" = zext i32 %".5938" to i64
  %".5939" = load i32, ptr %"R35"
  %"zext.701" = zext i32 %".5939" to i64
  %"shl.367" = shl i64 %"zext.701", 32
  %"or.347" = or i64 %"shl.367", %"zext.700"
  %".5940" = add i64 %"or.347", 4
  %"for_LDG.340" = inttoptr i64 %".5940" to ptr
  %".5941" = load float, ptr %"for_LDG.340"
  %".5942" = bitcast ptr %"R7" to ptr
  store float %".5941", ptr %".5942"
  ; LDG.E.SYS R8, [R4+0x4]
  %".5945" = load i32, ptr %"R4"
  %"zext.702" = zext i32 %".5945" to i64
  %".5946" = load i32, ptr %"R5"
  %"zext.703" = zext i32 %".5946" to i64
  %"shl.368" = shl i64 %"zext.703", 32
  %"or.348" = or i64 %"shl.368", %"zext.702"
  %".5947" = add i64 %"or.348", 4
  %"for_LDG.341" = inttoptr i64 %".5947" to ptr
  %".5948" = load float, ptr %"for_LDG.341"
  %".5949" = bitcast ptr %"R8" to ptr
  store float %".5948", ptr %".5949"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".5952" = load i1, ptr %"P0"
  %".5953" = icmp ne i1 %".5952", 1
  br i1 %".5953", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  %".5956" = load i32, ptr %"R34"
  %"zext.704" = zext i32 %".5956" to i64
  %".5957" = load i32, ptr %"R35"
  %"zext.705" = zext i32 %".5957" to i64
  %"shl.369" = shl i64 %"zext.705", 32
  %"or.349" = or i64 %"shl.369", %"zext.704"
  %".5958" = add i64 %"or.349", 8
  %"for_LDG.342" = inttoptr i64 %".5958" to ptr
  %".5959" = load float, ptr %"for_LDG.342"
  %".5960" = bitcast ptr %"R9" to ptr
  store float %".5959", ptr %".5960"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".5965" = load i1, ptr %"P0"
  %".5966" = icmp ne i1 %".5965", 1
  br i1 %".5966", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  %".5969" = load i32, ptr %"R4"
  %"zext.706" = zext i32 %".5969" to i64
  %".5970" = load i32, ptr %"R5"
  %"zext.707" = zext i32 %".5970" to i64
  %"shl.370" = shl i64 %"zext.707", 32
  %"or.350" = or i64 %"shl.370", %"zext.706"
  %".5971" = add i64 %"or.350", 8
  %"for_LDG.343" = inttoptr i64 %".5971" to ptr
  %".5972" = load float, ptr %"for_LDG.343"
  %".5973" = bitcast ptr %"R10" to ptr
  store float %".5972", ptr %".5973"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".5978" = load float, ptr %"R7"
  %".5979" = load float, ptr %"R22"
  %"fmul.301" = fmul float %".5978", %".5979"
  %".5980" = bitcast ptr %"R6" to ptr
  store float %"fmul.301", ptr %".5980"
  ; FFMA R21, R6, R8, R21
  %".5983" = load float, ptr %"R6"
  %".5984" = load float, ptr %"R8"
  %".5985" = load float, ptr %"R21"
  %"fmul.302" = fmul float %".5983", %".5984"
  %"fadd.252" = fadd float %"fmul.302", %".5985"
  %".5986" = bitcast ptr %"R21" to ptr
  store float %"fadd.252", ptr %".5986"
  ; @P0 FMUL R22, R9, R22
  %".5989" = load i1, ptr %"P0"
  %".5990" = icmp ne i1 %".5989", 1
  br i1 %".5990", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".5993" = load float, ptr %"R9"
  %".5994" = load float, ptr %"R22"
  %"fmul.303" = fmul float %".5993", %".5994"
  %".5995" = bitcast ptr %"R22" to ptr
  store float %"fmul.303", ptr %".5995"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".6000" = load i1, ptr %"P0"
  %".6001" = icmp ne i1 %".6000", 1
  br i1 %".6001", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".6004" = load float, ptr %"R22"
  %".6005" = load float, ptr %"R10"
  %".6006" = load float, ptr %"R21"
  %"fmul.304" = fmul float %".6004", %".6005"
  %"fadd.253" = fadd float %"fmul.304", %".6006"
  %".6007" = bitcast ptr %"R21" to ptr
  store float %"fadd.253", ptr %".6007"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  %".6012" = load i32, ptr %"R30"
  %"zext.708" = zext i32 %".6012" to i64
  %"zext.709" = zext i32 0 to i64
  %"shl.371" = shl i64 %"zext.709", 32
  %"or.351" = or i64 %"shl.371", %"zext.708"
  %".6013" = add i64 %"or.351", 0
  %"for_LDG.344" = inttoptr i64 %".6013" to ptr
  %".6014" = load float, ptr %"for_LDG.344"
  %".6015" = bitcast ptr %"R4" to ptr
  store float %".6014", ptr %".6015"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".6020" = load float, ptr %"R4"
  %".6021" = load float, ptr %"R21"
  %"fadd.254" = fadd float %".6020", %".6021"
  %".6022" = bitcast ptr %"R21" to ptr
  store float %"fadd.254", ptr %".6022"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".6025" = load float, ptr %"R21"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".6025")
  %".6026" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".6027" = and i1 %"fcmp_unordered.2", %".6026"
  ; @!P0 BRA `(.L_x_42)
  %".6029" = load i1, ptr %"P0"
  %".6030" = icmp eq i1 %".6029", 1
  br i1 %".6030", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".6033" = load float, ptr %"R21"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".6033")
  %"fmul.305" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".6034" = bitcast ptr %"R5" to ptr
  store float %"fmul.305", ptr %".6034"
  ; MOV R7, 0x3f800000
  %".6037" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".6037"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".6040" = load float, ptr %"R21"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".6040")
  %".6041" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".6042" = and i1 %"fcmp_unordered.3", %".6041"
  ; MUFU.EX2 R5, R5
  %".6044" = load float, ptr %"R5"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".6044")
  %".6045" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.5", ptr %".6045"
  ; FADD R6, R5, 1
  %".6048" = load float, ptr %"R5"
  %"fadd.255" = fadd float %".6048", 0x3ff0000000000000
  %".6049" = bitcast ptr %"R6" to ptr
  store float %"fadd.255", ptr %".6049"
  ; MUFU.RCP R6, R6
  %".6052" = load float, ptr %"R6"
  %".6053" = fdiv float 0x3ff0000000000000, %".6052"
  %".6054" = bitcast ptr %"R6" to ptr
  store float %".6053", ptr %".6054"
  ; FFMA R4, R6, -2, R7
  %".6057" = load float, ptr %"R6"
  %".6058" = load float, ptr %"R7"
  %"fmul.306" = fmul float %".6057", 0xc000000000000000
  %"fadd.256" = fadd float %"fmul.306", %".6058"
  %".6059" = bitcast ptr %"R4" to ptr
  store float %"fadd.256", ptr %".6059"
  ; FSEL R4, R4, 1, !P0
  %".6062" = load float, ptr %"R4"
  %".6063" = load i1, ptr %"P0"
  %".6064" = icmp eq i1 %".6063", 1
  %"fsel.1" = select  i1 %".6064", float %".6062", float 0x3ff0000000000000
  %".6065" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".6065"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".6068" = load float, ptr %"R4"
  %".6069" = load float, ptr %"R21"
  %".6070" = or float %".6068", 0x41e0000000000000
  %".6071" = or float %".6068", %".6069"
  %".6072" = and float %".6070", %".6071"
  %".6073" = bitcast ptr %"R4" to ptr
  store float %".6072", ptr %".6073"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  %".6078" = bitcast ptr %"R5" to ptr
  store float 0x41ce407840000000, ptr %".6078"
  ; FMUL R4, R21, R21
  %".6081" = load float, ptr %"R21"
  %".6082" = load float, ptr %"R21"
  %"fmul.307" = fmul float %".6081", %".6082"
  %".6083" = bitcast ptr %"R4" to ptr
  store float %"fmul.307", ptr %".6083"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".6086" = load float, ptr %"R4"
  %".6087" = load float, ptr %"R5"
  %"fmul.308" = fmul float %".6086", %".6087"
  %"fadd.257" = fadd float %"fmul.308", 0xbfaac795c0000000
  %".6088" = bitcast ptr %"R5" to ptr
  store float %"fadd.257", ptr %".6088"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".6091" = load float, ptr %"R4"
  %".6092" = load float, ptr %"R5"
  %"fmul.309" = fmul float %".6091", %".6092"
  %"fadd.258" = fadd float %"fmul.309", 0x3fc10b2820000000
  %".6093" = bitcast ptr %"R5" to ptr
  store float %"fadd.258", ptr %".6093"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".6096" = load float, ptr %"R4"
  %".6097" = load float, ptr %"R5"
  %"fmul.310" = fmul float %".6096", %".6097"
  %"fadd.259" = fadd float %"fmul.310", 0xbfd5553da0000000
  %".6098" = bitcast ptr %"R5" to ptr
  store float %"fadd.259", ptr %".6098"
  ; FFMA R4, R4, R5, RZ
  %".6101" = load float, ptr %"R4"
  %".6102" = load float, ptr %"R5"
  %"fmul.311" = fmul float %".6101", %".6102"
  %"fadd.260" = fadd float %"fmul.311",              0x0
  %".6103" = bitcast ptr %"R4" to ptr
  store float %"fadd.260", ptr %".6103"
  ; FFMA R4, R21, R4, R21
  %".6106" = load float, ptr %"R21"
  %".6107" = load float, ptr %"R4"
  %".6108" = load float, ptr %"R21"
  %"fmul.312" = fmul float %".6106", %".6107"
  %"fadd.261" = fadd float %"fmul.312", %".6108"
  %".6109" = bitcast ptr %"R4" to ptr
  store float %"fadd.261", ptr %".6109"
.L_x_43:
  ; BSYNC B0
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  %".6113" = load i32, ptr %"R23"
  %"add.310" = add i32 %".6113", 25165824
  %"add.311" = add i32 %"add.310", 0
  store i32 %"add.311", ptr %"R5"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".6118" = load i32, ptr %"R5"
  %".6119" = and i32 %".6118", 2139095040
  store i32 %".6119", ptr %"R5"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".6122" = load i32, ptr %"R5"
  %".6123" = load i1, ptr %"PT"
  %"cmp.55" = icmp sgt i32 %".6122", 33554431
  %".6124" = and i1 %"cmp.55", %".6123"
  ; @P0 BRA `(.L_x_45)
  %".6126" = load i1, ptr %"P0"
  %".6127" = icmp ne i1 %".6126", 1
  br i1 %".6127", label %".L_x_45", label %".L_x_41_split_0x47f0"
.L_x_41_split_0x47f0:
  ; MOV R24, R23
  %".6130" = load float, ptr %"R23"
  %".6131" = bitcast ptr %"R24" to ptr
  store float %".6130", ptr %".6131"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.3" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R5, R22
  %".6137" = load i32, ptr %"R22"
  store i32 %".6137", ptr %"R5"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".6142" = load float, ptr %"R23"
  %".6143" = fdiv float 0x3ff0000000000000, %".6142"
  %".6144" = bitcast ptr %"R6" to ptr
  store float %".6143", ptr %".6144"
  ; FFMA R5, R23, R6, -1
  %".6147" = load float, ptr %"R23"
  %".6148" = load float, ptr %"R6"
  %"fmul.313" = fmul float %".6147", %".6148"
  %"fadd.262" = fadd float %"fmul.313", 0xbff0000000000000
  %".6149" = bitcast ptr %"R5" to ptr
  store float %"fadd.262", ptr %".6149"
  ; FADD.FTZ R5, -R5, -RZ
  %".6152" = load float, ptr %"R5"
  %".6153" = sub float              0x0, %".6152"
  %"fadd.263" = fadd float %".6153",              0x0
  %".6154" = bitcast ptr %"R5" to ptr
  store float %"fadd.263", ptr %".6154"
  ; FFMA R5, R6, R5, R6
  %".6157" = load float, ptr %"R6"
  %".6158" = load float, ptr %"R5"
  %".6159" = load float, ptr %"R6"
  %"fmul.314" = fmul float %".6157", %".6158"
  %"fadd.264" = fadd float %"fmul.314", %".6159"
  %".6160" = bitcast ptr %"R5" to ptr
  store float %"fadd.264", ptr %".6160"
.L_x_46:
  ; BSYNC B0
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  %".6164" = load i32, ptr %"R28"
  %"zext.710" = zext i32 %".6164" to i64
  %"zext.711" = zext i32 0 to i64
  %"shl.372" = shl i64 %"zext.711", 32
  %"or.352" = or i64 %"shl.372", %"zext.710"
  %".6165" = add i64 %"or.352", 0
  %"for_LDG.345" = inttoptr i64 %".6165" to ptr
  %".6166" = load float, ptr %"for_LDG.345"
  %".6167" = bitcast ptr %"R6" to ptr
  store float %".6166", ptr %".6167"
  ; FADD R7, -R5, 1
  %".6170" = load float, ptr %"R5"
  %".6171" = sub float              0x0, %".6170"
  %"fadd.265" = fadd float %".6171", 0x3ff0000000000000
  %".6172" = bitcast ptr %"R7" to ptr
  store float %"fadd.265", ptr %".6172"
  ; FMUL R6, R6, R5
  %".6175" = load float, ptr %"R6"
  %".6176" = load float, ptr %"R5"
  %"fmul.315" = fmul float %".6175", %".6176"
  %".6177" = bitcast ptr %"R6" to ptr
  store float %"fmul.315", ptr %".6177"
  ; FFMA R7, R7, R4, R6
  %".6180" = load float, ptr %"R7"
  %".6181" = load float, ptr %"R4"
  %".6182" = load float, ptr %"R6"
  %"fmul.316" = fmul float %".6180", %".6181"
  %"fadd.266" = fadd float %"fmul.316", %".6182"
  %".6183" = bitcast ptr %"R7" to ptr
  store float %"fadd.266", ptr %".6183"
  ; STG.E.SYS [R28], R7
  %".6186" = load float, ptr %"R7"
  %".6187" = load i32, ptr %"R28"
  %"zext.712" = zext i32 %".6187" to i64
  %"zext.713" = zext i32 0 to i64
  %"shl.373" = shl i64 %"zext.713", 32
  %"or.353" = or i64 %"shl.373", %"zext.712"
  %".6188" = add i64 %"or.353", 0
  %"for_STG.1" = inttoptr i64 %".6188" to ptr
  store float %".6186", ptr %"for_STG.1"
  ; @!P3 BRA `(.L_x_47)
  %".6191" = load i1, ptr %"P3"
  %".6192" = icmp eq i1 %".6191", 1
  br i1 %".6192", label %".L_x_47", label %".L_x_44_split_0x48f0"
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
  %"R11" = alloca i32, i32 1
  %"R24" = alloca i32, i32 1
  %"RZ" = alloca i32, i32 1
  %"R25" = alloca i32, i32 1
  %"P0" = alloca i1, i32 1
  %"PT" = alloca i1, i32 1
  %"R12" = alloca i32, i32 1
  %"R13" = alloca i32, i32 1
  %"R22" = alloca i32, i32 1
  %"R34" = alloca i32, i32 1
  %"R23" = alloca i32, i32 1
  %"P1" = alloca i1, i32 1
  %"P2" = alloca i1, i32 1
  %"R10" = alloca i32, i32 1
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
  %".77" = sub float              0x0, %".76"
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
  %".145" = sub float              0x0, %".144"
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
.L_x_50:
  ; BSYNC B1
.L_x_48:
  ; MOV R22, R11
  %".265" = load i32, ptr %"R11"
  store i32 %".265", ptr %"R22"
  ; MOV R11, 0x0
  store i32 0, ptr %"R11"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
.L_x_52:
  ; BRA `(.L_x_52)
  br label %".L_x_52"
ExitFunction:
  ret void
}

declare float @"llvm.fabs"(float %".1")

