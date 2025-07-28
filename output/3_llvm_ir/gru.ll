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
  %".211" = inttoptr i64 %"or" to ptr
  %".212" = ptrtoint ptr %".211" to i64
  %".213" = add i64 %".212", 0
  %"for_LDG" = inttoptr i64 %".213" to ptr
  %".214" = load float, ptr %"for_LDG"
  %".215" = bitcast ptr %"R57" to ptr
  store float %".214", ptr %".215"
  ; LDG.E.SYS R56, [R16]
  %".218" = load i32, ptr %"R16"
  %"zext.2" = zext i32 %".218" to i64
  %".219" = load i32, ptr %"R17"
  %"zext.3" = zext i32 %".219" to i64
  %"shl.4" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.4", %"zext.2"
  %".220" = inttoptr i64 %"or.1" to ptr
  %".221" = ptrtoint ptr %".220" to i64
  %".222" = add i64 %".221", 0
  %"for_LDG.1" = inttoptr i64 %".222" to ptr
  %".223" = load float, ptr %"for_LDG.1"
  %".224" = bitcast ptr %"R56" to ptr
  store float %".223", ptr %".224"
  ; LDG.E.SYS R58, [R20]
  %".227" = load i32, ptr %"R20"
  %"zext.4" = zext i32 %".227" to i64
  %".228" = load i32, ptr %"R21"
  %"zext.5" = zext i32 %".228" to i64
  %"shl.5" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.5", %"zext.4"
  %".229" = inttoptr i64 %"or.2" to ptr
  %".230" = ptrtoint ptr %".229" to i64
  %".231" = add i64 %".230", 0
  %"for_LDG.2" = inttoptr i64 %".231" to ptr
  %".232" = load float, ptr %"for_LDG.2"
  %".233" = bitcast ptr %"R58" to ptr
  store float %".232", ptr %".233"
  ; LDG.E.SYS R24, [R38+0x4]
  %".236" = load i32, ptr %"R38"
  %"zext.6" = zext i32 %".236" to i64
  %".237" = load i32, ptr %"R39"
  %"zext.7" = zext i32 %".237" to i64
  %"shl.6" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.6", %"zext.6"
  %".238" = inttoptr i64 %"or.3" to ptr
  %".239" = ptrtoint ptr %".238" to i64
  %".240" = add i64 %".239", 4
  %"for_LDG.3" = inttoptr i64 %".240" to ptr
  %".241" = load float, ptr %"for_LDG.3"
  %".242" = bitcast ptr %"R24" to ptr
  store float %".241", ptr %".242"
  ; LDG.E.SYS R47, [R16+0x4]
  %".245" = load i32, ptr %"R16"
  %"zext.8" = zext i32 %".245" to i64
  %".246" = load i32, ptr %"R17"
  %"zext.9" = zext i32 %".246" to i64
  %"shl.7" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.7", %"zext.8"
  %".247" = inttoptr i64 %"or.4" to ptr
  %".248" = ptrtoint ptr %".247" to i64
  %".249" = add i64 %".248", 4
  %"for_LDG.4" = inttoptr i64 %".249" to ptr
  %".250" = load float, ptr %"for_LDG.4"
  %".251" = bitcast ptr %"R47" to ptr
  store float %".250", ptr %".251"
  ; LDG.E.SYS R49, [R20+0x4]
  %".254" = load i32, ptr %"R20"
  %"zext.10" = zext i32 %".254" to i64
  %".255" = load i32, ptr %"R21"
  %"zext.11" = zext i32 %".255" to i64
  %"shl.8" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.8", %"zext.10"
  %".256" = inttoptr i64 %"or.5" to ptr
  %".257" = ptrtoint ptr %".256" to i64
  %".258" = add i64 %".257", 4
  %"for_LDG.5" = inttoptr i64 %".258" to ptr
  %".259" = load float, ptr %"for_LDG.5"
  %".260" = bitcast ptr %"R49" to ptr
  store float %".259", ptr %".260"
  ; LDG.E.SYS R22, [R38+0x8]
  %".263" = load i32, ptr %"R38"
  %"zext.12" = zext i32 %".263" to i64
  %".264" = load i32, ptr %"R39"
  %"zext.13" = zext i32 %".264" to i64
  %"shl.9" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.9", %"zext.12"
  %".265" = inttoptr i64 %"or.6" to ptr
  %".266" = ptrtoint ptr %".265" to i64
  %".267" = add i64 %".266", 8
  %"for_LDG.6" = inttoptr i64 %".267" to ptr
  %".268" = load float, ptr %"for_LDG.6"
  %".269" = bitcast ptr %"R22" to ptr
  store float %".268", ptr %".269"
  ; LDG.E.SYS R43, [R16+0x8]
  %".272" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".272" to i64
  %".273" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".273" to i64
  %"shl.10" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.10", %"zext.14"
  %".274" = inttoptr i64 %"or.7" to ptr
  %".275" = ptrtoint ptr %".274" to i64
  %".276" = add i64 %".275", 8
  %"for_LDG.7" = inttoptr i64 %".276" to ptr
  %".277" = load float, ptr %"for_LDG.7"
  %".278" = bitcast ptr %"R43" to ptr
  store float %".277", ptr %".278"
  ; LDG.E.SYS R45, [R20+0x8]
  %".281" = load i32, ptr %"R20"
  %"zext.16" = zext i32 %".281" to i64
  %".282" = load i32, ptr %"R21"
  %"zext.17" = zext i32 %".282" to i64
  %"shl.11" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.11", %"zext.16"
  %".283" = inttoptr i64 %"or.8" to ptr
  %".284" = ptrtoint ptr %".283" to i64
  %".285" = add i64 %".284", 8
  %"for_LDG.8" = inttoptr i64 %".285" to ptr
  %".286" = load float, ptr %"for_LDG.8"
  %".287" = bitcast ptr %"R45" to ptr
  store float %".286", ptr %".287"
  ; LDG.E.SYS R15, [R38+0xc]
  %".290" = load i32, ptr %"R38"
  %"zext.18" = zext i32 %".290" to i64
  %".291" = load i32, ptr %"R39"
  %"zext.19" = zext i32 %".291" to i64
  %"shl.12" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.12", %"zext.18"
  %".292" = inttoptr i64 %"or.9" to ptr
  %".293" = ptrtoint ptr %".292" to i64
  %".294" = add i64 %".293", 12
  %"for_LDG.9" = inttoptr i64 %".294" to ptr
  %".295" = load float, ptr %"for_LDG.9"
  %".296" = bitcast ptr %"R15" to ptr
  store float %".295", ptr %".296"
  ; LDG.E.SYS R14, [R16+0xc]
  %".299" = load i32, ptr %"R16"
  %"zext.20" = zext i32 %".299" to i64
  %".300" = load i32, ptr %"R17"
  %"zext.21" = zext i32 %".300" to i64
  %"shl.13" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.13", %"zext.20"
  %".301" = inttoptr i64 %"or.10" to ptr
  %".302" = ptrtoint ptr %".301" to i64
  %".303" = add i64 %".302", 12
  %"for_LDG.10" = inttoptr i64 %".303" to ptr
  %".304" = load float, ptr %"for_LDG.10"
  %".305" = bitcast ptr %"R14" to ptr
  store float %".304", ptr %".305"
  ; LDG.E.SYS R13, [R20+0xc]
  %".308" = load i32, ptr %"R20"
  %"zext.22" = zext i32 %".308" to i64
  %".309" = load i32, ptr %"R21"
  %"zext.23" = zext i32 %".309" to i64
  %"shl.14" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.14", %"zext.22"
  %".310" = inttoptr i64 %"or.11" to ptr
  %".311" = ptrtoint ptr %".310" to i64
  %".312" = add i64 %".311", 12
  %"for_LDG.11" = inttoptr i64 %".312" to ptr
  %".313" = load float, ptr %"for_LDG.11"
  %".314" = bitcast ptr %"R13" to ptr
  store float %".313", ptr %".314"
  ; IADD3 R41, R11, 0x4, RZ
  %".317" = load i32, ptr %"R11"
  %"add.23" = add i32 %".317", 4
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R41"
  ; IADD3 R51, R23, 0x4, RZ
  %".320" = load i32, ptr %"R23"
  %"add.25" = add i32 %".320", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"R51"
  ; IADD3 R35, R11, 0x8, RZ
  %".323" = load i32, ptr %"R11"
  %"add.27" = add i32 %".323", 8
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", ptr %"R35"
  ; IMAD.WIDE R40, R41, R18, c[0x0][0x168]
  %".326" = load i32, ptr %"R41"
  %".327" = load i32, ptr %"R18"
  %"mul.12" = mul i32 %".326", %".327"
  %"add.29" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.29", ptr %"R40"
  ; IADD3 R37, R11, 0xc, RZ
  %".330" = load i32, ptr %"R11"
  %"add.30" = add i32 %".330", 12
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R37"
  ; IMAD.WIDE R38, R51, R18, c[0x0][0x170]
  %".333" = load i32, ptr %"R51"
  %".334" = load i32, ptr %"R18"
  %"mul.13" = mul i32 %".333", %".334"
  %"add.32" = add i32 %"mul.13", %"Arg_4"
  store i32 %"add.32", ptr %"R38"
  ; IADD3 R51, R25, 0x4, RZ
  %".337" = load i32, ptr %"R25"
  %"add.33" = add i32 %".337", 4
  %"add.34" = add i32 %"add.33", 0
  store i32 %"add.34", ptr %"R51"
  ; LDG.E.SYS R12, [R40]
  %".340" = load i32, ptr %"R40"
  %"zext.24" = zext i32 %".340" to i64
  %".341" = load i32, ptr %"R41"
  %"zext.25" = zext i32 %".341" to i64
  %"shl.15" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.15", %"zext.24"
  %".342" = inttoptr i64 %"or.12" to ptr
  %".343" = ptrtoint ptr %".342" to i64
  %".344" = add i64 %".343", 0
  %"for_LDG.12" = inttoptr i64 %".344" to ptr
  %".345" = load float, ptr %"for_LDG.12"
  %".346" = bitcast ptr %"R12" to ptr
  store float %".345", ptr %".346"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x168]
  %".349" = load i32, ptr %"R35"
  %".350" = load i32, ptr %"R18"
  %"mul.14" = mul i32 %".349", %".350"
  %"add.35" = add i32 %"mul.14", %"Arg_3"
  store i32 %"add.35", ptr %"R34"
  ; LDG.E.SYS R10, [R40+0x4]
  %".353" = load i32, ptr %"R40"
  %"zext.26" = zext i32 %".353" to i64
  %".354" = load i32, ptr %"R41"
  %"zext.27" = zext i32 %".354" to i64
  %"shl.16" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.16", %"zext.26"
  %".355" = inttoptr i64 %"or.13" to ptr
  %".356" = ptrtoint ptr %".355" to i64
  %".357" = add i64 %".356", 4
  %"for_LDG.13" = inttoptr i64 %".357" to ptr
  %".358" = load float, ptr %"for_LDG.13"
  %".359" = bitcast ptr %"R10" to ptr
  store float %".358", ptr %".359"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x168]
  %".362" = load i32, ptr %"R37"
  %".363" = load i32, ptr %"R18"
  %"mul.15" = mul i32 %".362", %".363"
  %"add.36" = add i32 %"mul.15", %"Arg_3"
  store i32 %"add.36", ptr %"R36"
  ; LDG.E.SYS R16, [R40+0x8]
  %".366" = load i32, ptr %"R40"
  %"zext.28" = zext i32 %".366" to i64
  %".367" = load i32, ptr %"R41"
  %"zext.29" = zext i32 %".367" to i64
  %"shl.17" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.17", %"zext.28"
  %".368" = inttoptr i64 %"or.14" to ptr
  %".369" = ptrtoint ptr %".368" to i64
  %".370" = add i64 %".369", 8
  %"for_LDG.14" = inttoptr i64 %".370" to ptr
  %".371" = load float, ptr %"for_LDG.14"
  %".372" = bitcast ptr %"R16" to ptr
  store float %".371", ptr %".372"
  ; LDG.E.SYS R17, [R40+0xc]
  %".375" = load i32, ptr %"R40"
  %"zext.30" = zext i32 %".375" to i64
  %".376" = load i32, ptr %"R41"
  %"zext.31" = zext i32 %".376" to i64
  %"shl.18" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.18", %"zext.30"
  %".377" = inttoptr i64 %"or.15" to ptr
  %".378" = ptrtoint ptr %".377" to i64
  %".379" = add i64 %".378", 12
  %"for_LDG.15" = inttoptr i64 %".379" to ptr
  %".380" = load float, ptr %"for_LDG.15"
  %".381" = bitcast ptr %"R17" to ptr
  store float %".380", ptr %".381"
  ; LDG.E.SYS R19, [R34]
  %".384" = load i32, ptr %"R34"
  %"zext.32" = zext i32 %".384" to i64
  %".385" = load i32, ptr %"R35"
  %"zext.33" = zext i32 %".385" to i64
  %"shl.19" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.19", %"zext.32"
  %".386" = inttoptr i64 %"or.16" to ptr
  %".387" = ptrtoint ptr %".386" to i64
  %".388" = add i64 %".387", 0
  %"for_LDG.16" = inttoptr i64 %".388" to ptr
  %".389" = load float, ptr %"for_LDG.16"
  %".390" = bitcast ptr %"R19" to ptr
  store float %".389", ptr %".390"
  ; LDG.E.SYS R20, [R34+0x4]
  %".393" = load i32, ptr %"R34"
  %"zext.34" = zext i32 %".393" to i64
  %".394" = load i32, ptr %"R35"
  %"zext.35" = zext i32 %".394" to i64
  %"shl.20" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.20", %"zext.34"
  %".395" = inttoptr i64 %"or.17" to ptr
  %".396" = ptrtoint ptr %".395" to i64
  %".397" = add i64 %".396", 4
  %"for_LDG.17" = inttoptr i64 %".397" to ptr
  %".398" = load float, ptr %"for_LDG.17"
  %".399" = bitcast ptr %"R20" to ptr
  store float %".398", ptr %".399"
  ; IMAD.WIDE R40, R51, R18, c[0x0][0x170]
  %".402" = load i32, ptr %"R51"
  %".403" = load i32, ptr %"R18"
  %"mul.16" = mul i32 %".402", %".403"
  %"add.37" = add i32 %"mul.16", %"Arg_4"
  store i32 %"add.37", ptr %"R40"
  ; LDG.E.SYS R51, [R38]
  %".406" = load i32, ptr %"R38"
  %"zext.36" = zext i32 %".406" to i64
  %".407" = load i32, ptr %"R39"
  %"zext.37" = zext i32 %".407" to i64
  %"shl.21" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.21", %"zext.36"
  %".408" = inttoptr i64 %"or.18" to ptr
  %".409" = ptrtoint ptr %".408" to i64
  %".410" = add i64 %".409", 0
  %"for_LDG.18" = inttoptr i64 %".410" to ptr
  %".411" = load float, ptr %"for_LDG.18"
  %".412" = bitcast ptr %"R51" to ptr
  store float %".411", ptr %".412"
  ; LDG.E.SYS R21, [R34+0x8]
  %".415" = load i32, ptr %"R34"
  %"zext.38" = zext i32 %".415" to i64
  %".416" = load i32, ptr %"R35"
  %"zext.39" = zext i32 %".416" to i64
  %"shl.22" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.22", %"zext.38"
  %".417" = inttoptr i64 %"or.19" to ptr
  %".418" = ptrtoint ptr %".417" to i64
  %".419" = add i64 %".418", 8
  %"for_LDG.19" = inttoptr i64 %".419" to ptr
  %".420" = load float, ptr %"for_LDG.19"
  %".421" = bitcast ptr %"R21" to ptr
  store float %".420", ptr %".421"
  ; LDG.E.SYS R42, [R34+0xc]
  %".424" = load i32, ptr %"R34"
  %"zext.40" = zext i32 %".424" to i64
  %".425" = load i32, ptr %"R35"
  %"zext.41" = zext i32 %".425" to i64
  %"shl.23" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.23", %"zext.40"
  %".426" = inttoptr i64 %"or.20" to ptr
  %".427" = ptrtoint ptr %".426" to i64
  %".428" = add i64 %".427", 12
  %"for_LDG.20" = inttoptr i64 %".428" to ptr
  %".429" = load float, ptr %"for_LDG.20"
  %".430" = bitcast ptr %"R42" to ptr
  store float %".429", ptr %".430"
  ; LDG.E.SYS R44, [R36]
  %".433" = load i32, ptr %"R36"
  %"zext.42" = zext i32 %".433" to i64
  %".434" = load i32, ptr %"R37"
  %"zext.43" = zext i32 %".434" to i64
  %"shl.24" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.24", %"zext.42"
  %".435" = inttoptr i64 %"or.21" to ptr
  %".436" = ptrtoint ptr %".435" to i64
  %".437" = add i64 %".436", 0
  %"for_LDG.21" = inttoptr i64 %".437" to ptr
  %".438" = load float, ptr %"for_LDG.21"
  %".439" = bitcast ptr %"R44" to ptr
  store float %".438", ptr %".439"
  ; LDG.E.SYS R46, [R36+0x4]
  %".442" = load i32, ptr %"R36"
  %"zext.44" = zext i32 %".442" to i64
  %".443" = load i32, ptr %"R37"
  %"zext.45" = zext i32 %".443" to i64
  %"shl.25" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.25", %"zext.44"
  %".444" = inttoptr i64 %"or.22" to ptr
  %".445" = ptrtoint ptr %".444" to i64
  %".446" = add i64 %".445", 4
  %"for_LDG.22" = inttoptr i64 %".446" to ptr
  %".447" = load float, ptr %"for_LDG.22"
  %".448" = bitcast ptr %"R46" to ptr
  store float %".447", ptr %".448"
  ; IADD3 R35, R23, 0x8, RZ
  %".451" = load i32, ptr %"R23"
  %"add.38" = add i32 %".451", 8
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R35"
  ; LDG.E.SYS R48, [R36+0x8]
  %".454" = load i32, ptr %"R36"
  %"zext.46" = zext i32 %".454" to i64
  %".455" = load i32, ptr %"R37"
  %"zext.47" = zext i32 %".455" to i64
  %"shl.26" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.26", %"zext.46"
  %".456" = inttoptr i64 %"or.23" to ptr
  %".457" = ptrtoint ptr %".456" to i64
  %".458" = add i64 %".457", 8
  %"for_LDG.23" = inttoptr i64 %".458" to ptr
  %".459" = load float, ptr %"for_LDG.23"
  %".460" = bitcast ptr %"R48" to ptr
  store float %".459", ptr %".460"
  ; LDG.E.SYS R50, [R36+0xc]
  %".463" = load i32, ptr %"R36"
  %"zext.48" = zext i32 %".463" to i64
  %".464" = load i32, ptr %"R37"
  %"zext.49" = zext i32 %".464" to i64
  %"shl.27" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.27", %"zext.48"
  %".465" = inttoptr i64 %"or.24" to ptr
  %".466" = ptrtoint ptr %".465" to i64
  %".467" = add i64 %".466", 12
  %"for_LDG.24" = inttoptr i64 %".467" to ptr
  %".468" = load float, ptr %"for_LDG.24"
  %".469" = bitcast ptr %"R50" to ptr
  store float %".468", ptr %".469"
  ; LDG.E.SYS R53, [R38+0x4]
  %".472" = load i32, ptr %"R38"
  %"zext.50" = zext i32 %".472" to i64
  %".473" = load i32, ptr %"R39"
  %"zext.51" = zext i32 %".473" to i64
  %"shl.28" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.28", %"zext.50"
  %".474" = inttoptr i64 %"or.25" to ptr
  %".475" = ptrtoint ptr %".474" to i64
  %".476" = add i64 %".475", 4
  %"for_LDG.25" = inttoptr i64 %".476" to ptr
  %".477" = load float, ptr %"for_LDG.25"
  %".478" = bitcast ptr %"R53" to ptr
  store float %".477", ptr %".478"
  ; LDG.E.SYS R59, [R40+0x4]
  %".481" = load i32, ptr %"R40"
  %"zext.52" = zext i32 %".481" to i64
  %".482" = load i32, ptr %"R41"
  %"zext.53" = zext i32 %".482" to i64
  %"shl.29" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.29", %"zext.52"
  %".483" = inttoptr i64 %"or.26" to ptr
  %".484" = ptrtoint ptr %".483" to i64
  %".485" = add i64 %".484", 4
  %"for_LDG.26" = inttoptr i64 %".485" to ptr
  %".486" = load float, ptr %"for_LDG.26"
  %".487" = bitcast ptr %"R59" to ptr
  store float %".486", ptr %".487"
  ; IADD3 R37, R25, 0x8, RZ
  %".490" = load i32, ptr %"R25"
  %"add.40" = add i32 %".490", 8
  %"add.41" = add i32 %"add.40", 0
  store i32 %"add.41", ptr %"R37"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x170]
  %".493" = load i32, ptr %"R35"
  %".494" = load i32, ptr %"R18"
  %"mul.17" = mul i32 %".493", %".494"
  %"add.42" = add i32 %"mul.17", %"Arg_4"
  store i32 %"add.42", ptr %"R34"
  ; LDG.E.SYS R55, [R38+0x8]
  %".497" = load i32, ptr %"R38"
  %"zext.54" = zext i32 %".497" to i64
  %".498" = load i32, ptr %"R39"
  %"zext.55" = zext i32 %".498" to i64
  %"shl.30" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.30", %"zext.54"
  %".499" = inttoptr i64 %"or.27" to ptr
  %".500" = ptrtoint ptr %".499" to i64
  %".501" = add i64 %".500", 8
  %"for_LDG.27" = inttoptr i64 %".501" to ptr
  %".502" = load float, ptr %"for_LDG.27"
  %".503" = bitcast ptr %"R55" to ptr
  store float %".502", ptr %".503"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x170]
  %".506" = load i32, ptr %"R37"
  %".507" = load i32, ptr %"R18"
  %"mul.18" = mul i32 %".506", %".507"
  %"add.43" = add i32 %"mul.18", %"Arg_4"
  store i32 %"add.43", ptr %"R36"
  ; LDG.E.SYS R61, [R40+0x8]
  %".510" = load i32, ptr %"R40"
  %"zext.56" = zext i32 %".510" to i64
  %".511" = load i32, ptr %"R41"
  %"zext.57" = zext i32 %".511" to i64
  %"shl.31" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.31", %"zext.56"
  %".512" = inttoptr i64 %"or.28" to ptr
  %".513" = ptrtoint ptr %".512" to i64
  %".514" = add i64 %".513", 8
  %"for_LDG.28" = inttoptr i64 %".514" to ptr
  %".515" = load float, ptr %"for_LDG.28"
  %".516" = bitcast ptr %"R61" to ptr
  store float %".515", ptr %".516"
  ; LDG.E.SYS R60, [R38+0xc]
  %".519" = load i32, ptr %"R38"
  %"zext.58" = zext i32 %".519" to i64
  %".520" = load i32, ptr %"R39"
  %"zext.59" = zext i32 %".520" to i64
  %"shl.32" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.32", %"zext.58"
  %".521" = inttoptr i64 %"or.29" to ptr
  %".522" = ptrtoint ptr %".521" to i64
  %".523" = add i64 %".522", 12
  %"for_LDG.29" = inttoptr i64 %".523" to ptr
  %".524" = load float, ptr %"for_LDG.29"
  %".525" = bitcast ptr %"R60" to ptr
  store float %".524", ptr %".525"
  ; IADD3 R23, R23, 0xc, RZ
  %".528" = load i32, ptr %"R23"
  %"add.44" = add i32 %".528", 12
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R23"
  ; IADD3 R25, R25, 0xc, RZ
  %".531" = load i32, ptr %"R25"
  %"add.46" = add i32 %".531", 12
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R25"
  ; LDG.E.SYS R39, [R34+0x4]
  %".534" = load i32, ptr %"R34"
  %"zext.60" = zext i32 %".534" to i64
  %".535" = load i32, ptr %"R35"
  %"zext.61" = zext i32 %".535" to i64
  %"shl.33" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.33", %"zext.60"
  %".536" = inttoptr i64 %"or.30" to ptr
  %".537" = ptrtoint ptr %".536" to i64
  %".538" = add i64 %".537", 4
  %"for_LDG.30" = inttoptr i64 %".538" to ptr
  %".539" = load float, ptr %"for_LDG.30"
  %".540" = bitcast ptr %"R39" to ptr
  store float %".539", ptr %".540"
  ; LDG.E.SYS R38, [R34+0x8]
  %".543" = load i32, ptr %"R34"
  %"zext.62" = zext i32 %".543" to i64
  %".544" = load i32, ptr %"R35"
  %"zext.63" = zext i32 %".544" to i64
  %"shl.34" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.34", %"zext.62"
  %".545" = inttoptr i64 %"or.31" to ptr
  %".546" = ptrtoint ptr %".545" to i64
  %".547" = add i64 %".546", 8
  %"for_LDG.31" = inttoptr i64 %".547" to ptr
  %".548" = load float, ptr %"for_LDG.31"
  %".549" = bitcast ptr %"R38" to ptr
  store float %".548", ptr %".549"
  ; FFMA R56, R56, R57, R52
  %".552" = load float, ptr %"R56"
  %".553" = load float, ptr %"R57"
  %".554" = load float, ptr %"R52"
  %"fmul" = fmul float %".552", %".553"
  %"fadd" = fadd float %"fmul", %".554"
  %".555" = bitcast ptr %"R56" to ptr
  store float %"fadd", ptr %".555"
  ; LDG.E.SYS R52, [R40+0xc]
  %".558" = load i32, ptr %"R40"
  %"zext.64" = zext i32 %".558" to i64
  %".559" = load i32, ptr %"R41"
  %"zext.65" = zext i32 %".559" to i64
  %"shl.35" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.35", %"zext.64"
  %".560" = inttoptr i64 %"or.32" to ptr
  %".561" = ptrtoint ptr %".560" to i64
  %".562" = add i64 %".561", 12
  %"for_LDG.32" = inttoptr i64 %".562" to ptr
  %".563" = load float, ptr %"for_LDG.32"
  %".564" = bitcast ptr %"R52" to ptr
  store float %".563", ptr %".564"
  ; FFMA R58, R57, R58, R54
  %".567" = load float, ptr %"R57"
  %".568" = load float, ptr %"R58"
  %".569" = load float, ptr %"R54"
  %"fmul.1" = fmul float %".567", %".568"
  %"fadd.1" = fadd float %"fmul.1", %".569"
  %".570" = bitcast ptr %"R58" to ptr
  store float %"fadd.1", ptr %".570"
  ; LDG.E.SYS R57, [R40]
  %".573" = load i32, ptr %"R40"
  %"zext.66" = zext i32 %".573" to i64
  %".574" = load i32, ptr %"R41"
  %"zext.67" = zext i32 %".574" to i64
  %"shl.36" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.36", %"zext.66"
  %".575" = inttoptr i64 %"or.33" to ptr
  %".576" = ptrtoint ptr %".575" to i64
  %".577" = add i64 %".576", 0
  %"for_LDG.33" = inttoptr i64 %".577" to ptr
  %".578" = load float, ptr %"for_LDG.33"
  %".579" = bitcast ptr %"R57" to ptr
  store float %".578", ptr %".579"
  ; LDG.E.SYS R54, [R34]
  %".582" = load i32, ptr %"R34"
  %"zext.68" = zext i32 %".582" to i64
  %".583" = load i32, ptr %"R35"
  %"zext.69" = zext i32 %".583" to i64
  %"shl.37" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.37", %"zext.68"
  %".584" = inttoptr i64 %"or.34" to ptr
  %".585" = ptrtoint ptr %".584" to i64
  %".586" = add i64 %".585", 0
  %"for_LDG.34" = inttoptr i64 %".586" to ptr
  %".587" = load float, ptr %"for_LDG.34"
  %".588" = bitcast ptr %"R54" to ptr
  store float %".587", ptr %".588"
  ; FFMA R56, R47, R24, R56
  %".591" = load float, ptr %"R47"
  %".592" = load float, ptr %"R24"
  %".593" = load float, ptr %"R56"
  %"fmul.2" = fmul float %".591", %".592"
  %"fadd.2" = fadd float %"fmul.2", %".593"
  %".594" = bitcast ptr %"R56" to ptr
  store float %"fadd.2", ptr %".594"
  ; LDG.E.SYS R47, [R34+0xc]
  %".597" = load i32, ptr %"R34"
  %"zext.70" = zext i32 %".597" to i64
  %".598" = load i32, ptr %"R35"
  %"zext.71" = zext i32 %".598" to i64
  %"shl.38" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.38", %"zext.70"
  %".599" = inttoptr i64 %"or.35" to ptr
  %".600" = ptrtoint ptr %".599" to i64
  %".601" = add i64 %".600", 12
  %"for_LDG.35" = inttoptr i64 %".601" to ptr
  %".602" = load float, ptr %"for_LDG.35"
  %".603" = bitcast ptr %"R47" to ptr
  store float %".602", ptr %".603"
  ; FFMA R58, R24, R49, R58
  %".606" = load float, ptr %"R24"
  %".607" = load float, ptr %"R49"
  %".608" = load float, ptr %"R58"
  %"fmul.3" = fmul float %".606", %".607"
  %"fadd.3" = fadd float %"fmul.3", %".608"
  %".609" = bitcast ptr %"R58" to ptr
  store float %"fadd.3", ptr %".609"
  ; LDG.E.SYS R41, [R36+0x4]
  %".612" = load i32, ptr %"R36"
  %"zext.72" = zext i32 %".612" to i64
  %".613" = load i32, ptr %"R37"
  %"zext.73" = zext i32 %".613" to i64
  %"shl.39" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.39", %"zext.72"
  %".614" = inttoptr i64 %"or.36" to ptr
  %".615" = ptrtoint ptr %".614" to i64
  %".616" = add i64 %".615", 4
  %"for_LDG.36" = inttoptr i64 %".616" to ptr
  %".617" = load float, ptr %"for_LDG.36"
  %".618" = bitcast ptr %"R41" to ptr
  store float %".617", ptr %".618"
  ; LDG.E.SYS R40, [R36+0x8]
  %".621" = load i32, ptr %"R36"
  %"zext.74" = zext i32 %".621" to i64
  %".622" = load i32, ptr %"R37"
  %"zext.75" = zext i32 %".622" to i64
  %"shl.40" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.40", %"zext.74"
  %".623" = inttoptr i64 %"or.37" to ptr
  %".624" = ptrtoint ptr %".623" to i64
  %".625" = add i64 %".624", 8
  %"for_LDG.37" = inttoptr i64 %".625" to ptr
  %".626" = load float, ptr %"for_LDG.37"
  %".627" = bitcast ptr %"R40" to ptr
  store float %".626", ptr %".627"
  ; FFMA R49, R43, R22, R56
  %".630" = load float, ptr %"R43"
  %".631" = load float, ptr %"R22"
  %".632" = load float, ptr %"R56"
  %"fmul.4" = fmul float %".630", %".631"
  %"fadd.4" = fadd float %"fmul.4", %".632"
  %".633" = bitcast ptr %"R49" to ptr
  store float %"fadd.4", ptr %".633"
  ; LDG.E.SYS R56, [R36]
  %".636" = load i32, ptr %"R36"
  %"zext.76" = zext i32 %".636" to i64
  %".637" = load i32, ptr %"R37"
  %"zext.77" = zext i32 %".637" to i64
  %"shl.41" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.41", %"zext.76"
  %".638" = inttoptr i64 %"or.38" to ptr
  %".639" = ptrtoint ptr %".638" to i64
  %".640" = add i64 %".639", 0
  %"for_LDG.38" = inttoptr i64 %".640" to ptr
  %".641" = load float, ptr %"for_LDG.38"
  %".642" = bitcast ptr %"R56" to ptr
  store float %".641", ptr %".642"
  ; IMAD.WIDE R24, R25, R18, c[0x0][0x170]
  %".645" = load i32, ptr %"R25"
  %".646" = load i32, ptr %"R18"
  %"mul.19" = mul i32 %".645", %".646"
  %"add.48" = add i32 %"mul.19", %"Arg_4"
  store i32 %"add.48", ptr %"R24"
  ; LDG.E.SYS R43, [R36+0xc]
  %".649" = load i32, ptr %"R36"
  %"zext.78" = zext i32 %".649" to i64
  %".650" = load i32, ptr %"R37"
  %"zext.79" = zext i32 %".650" to i64
  %"shl.42" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.42", %"zext.78"
  %".651" = inttoptr i64 %"or.39" to ptr
  %".652" = ptrtoint ptr %".651" to i64
  %".653" = add i64 %".652", 12
  %"for_LDG.39" = inttoptr i64 %".653" to ptr
  %".654" = load float, ptr %"for_LDG.39"
  %".655" = bitcast ptr %"R43" to ptr
  store float %".654", ptr %".655"
  ; FFMA R58, R22, R45, R58
  %".658" = load float, ptr %"R22"
  %".659" = load float, ptr %"R45"
  %".660" = load float, ptr %"R58"
  %"fmul.5" = fmul float %".658", %".659"
  %"fadd.5" = fadd float %"fmul.5", %".660"
  %".661" = bitcast ptr %"R58" to ptr
  store float %"fadd.5", ptr %".661"
  ; IMAD.WIDE R22, R23, R18, c[0x0][0x170]
  %".664" = load i32, ptr %"R23"
  %".665" = load i32, ptr %"R18"
  %"mul.20" = mul i32 %".664", %".665"
  %"add.49" = add i32 %"mul.20", %"Arg_4"
  store i32 %"add.49", ptr %"R22"
  ; LDG.E.SYS R18, [R24]
  %".668" = load i32, ptr %"R24"
  %"zext.80" = zext i32 %".668" to i64
  %".669" = load i32, ptr %"R25"
  %"zext.81" = zext i32 %".669" to i64
  %"shl.43" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.43", %"zext.80"
  %".670" = inttoptr i64 %"or.40" to ptr
  %".671" = ptrtoint ptr %".670" to i64
  %".672" = add i64 %".671", 0
  %"for_LDG.40" = inttoptr i64 %".672" to ptr
  %".673" = load float, ptr %"for_LDG.40"
  %".674" = bitcast ptr %"R18" to ptr
  store float %".673", ptr %".674"
  ; FFMA R14, R14, R15, R49
  %".677" = load float, ptr %"R14"
  %".678" = load float, ptr %"R15"
  %".679" = load float, ptr %"R49"
  %"fmul.6" = fmul float %".677", %".678"
  %"fadd.6" = fadd float %"fmul.6", %".679"
  %".680" = bitcast ptr %"R14" to ptr
  store float %"fadd.6", ptr %".680"
  ; LDG.E.SYS R49, [R24+0x4]
  %".683" = load i32, ptr %"R24"
  %"zext.82" = zext i32 %".683" to i64
  %".684" = load i32, ptr %"R25"
  %"zext.83" = zext i32 %".684" to i64
  %"shl.44" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.44", %"zext.82"
  %".685" = inttoptr i64 %"or.41" to ptr
  %".686" = ptrtoint ptr %".685" to i64
  %".687" = add i64 %".686", 4
  %"for_LDG.41" = inttoptr i64 %".687" to ptr
  %".688" = load float, ptr %"for_LDG.41"
  %".689" = bitcast ptr %"R49" to ptr
  store float %".688", ptr %".689"
  ; FFMA R58, R15, R13, R58
  %".692" = load float, ptr %"R15"
  %".693" = load float, ptr %"R13"
  %".694" = load float, ptr %"R58"
  %"fmul.7" = fmul float %".692", %".693"
  %"fadd.7" = fadd float %"fmul.7", %".694"
  %".695" = bitcast ptr %"R58" to ptr
  store float %"fadd.7", ptr %".695"
  ; LDG.E.SYS R35, [R22]
  %".698" = load i32, ptr %"R22"
  %"zext.84" = zext i32 %".698" to i64
  %".699" = load i32, ptr %"R23"
  %"zext.85" = zext i32 %".699" to i64
  %"shl.45" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.45", %"zext.84"
  %".700" = inttoptr i64 %"or.42" to ptr
  %".701" = ptrtoint ptr %".700" to i64
  %".702" = add i64 %".701", 0
  %"for_LDG.42" = inttoptr i64 %".702" to ptr
  %".703" = load float, ptr %"for_LDG.42"
  %".704" = bitcast ptr %"R35" to ptr
  store float %".703", ptr %".704"
  ; LDG.E.SYS R15, [R22+0x4]
  %".707" = load i32, ptr %"R22"
  %"zext.86" = zext i32 %".707" to i64
  %".708" = load i32, ptr %"R23"
  %"zext.87" = zext i32 %".708" to i64
  %"shl.46" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.46", %"zext.86"
  %".709" = inttoptr i64 %"or.43" to ptr
  %".710" = ptrtoint ptr %".709" to i64
  %".711" = add i64 %".710", 4
  %"for_LDG.43" = inttoptr i64 %".711" to ptr
  %".712" = load float, ptr %"for_LDG.43"
  %".713" = bitcast ptr %"R15" to ptr
  store float %".712", ptr %".713"
  ; LDG.E.SYS R13, [R22+0x8]
  %".716" = load i32, ptr %"R22"
  %"zext.88" = zext i32 %".716" to i64
  %".717" = load i32, ptr %"R23"
  %"zext.89" = zext i32 %".717" to i64
  %"shl.47" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.47", %"zext.88"
  %".718" = inttoptr i64 %"or.44" to ptr
  %".719" = ptrtoint ptr %".718" to i64
  %".720" = add i64 %".719", 8
  %"for_LDG.44" = inttoptr i64 %".720" to ptr
  %".721" = load float, ptr %"for_LDG.44"
  %".722" = bitcast ptr %"R13" to ptr
  store float %".721", ptr %".722"
  ; LDG.E.SYS R37, [R24+0x8]
  %".725" = load i32, ptr %"R24"
  %"zext.90" = zext i32 %".725" to i64
  %".726" = load i32, ptr %"R25"
  %"zext.91" = zext i32 %".726" to i64
  %"shl.48" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.48", %"zext.90"
  %".727" = inttoptr i64 %"or.45" to ptr
  %".728" = ptrtoint ptr %".727" to i64
  %".729" = add i64 %".728", 8
  %"for_LDG.45" = inttoptr i64 %".729" to ptr
  %".730" = load float, ptr %"for_LDG.45"
  %".731" = bitcast ptr %"R37" to ptr
  store float %".730", ptr %".731"
  ; LDG.E.SYS R45, [R22+0xc]
  %".734" = load i32, ptr %"R22"
  %"zext.92" = zext i32 %".734" to i64
  %".735" = load i32, ptr %"R23"
  %"zext.93" = zext i32 %".735" to i64
  %"shl.49" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.49", %"zext.92"
  %".736" = inttoptr i64 %"or.46" to ptr
  %".737" = ptrtoint ptr %".736" to i64
  %".738" = add i64 %".737", 12
  %"for_LDG.46" = inttoptr i64 %".738" to ptr
  %".739" = load float, ptr %"for_LDG.46"
  %".740" = bitcast ptr %"R45" to ptr
  store float %".739", ptr %".740"
  ; LDG.E.SYS R34, [R24+0xc]
  %".743" = load i32, ptr %"R24"
  %"zext.94" = zext i32 %".743" to i64
  %".744" = load i32, ptr %"R25"
  %"zext.95" = zext i32 %".744" to i64
  %"shl.50" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.50", %"zext.94"
  %".745" = inttoptr i64 %"or.47" to ptr
  %".746" = ptrtoint ptr %".745" to i64
  %".747" = add i64 %".746", 12
  %"for_LDG.47" = inttoptr i64 %".747" to ptr
  %".748" = load float, ptr %"for_LDG.47"
  %".749" = bitcast ptr %"R34" to ptr
  store float %".748", ptr %".749"
  ; FFMA R14, R51, R12, R14
  %".752" = load float, ptr %"R51"
  %".753" = load float, ptr %"R12"
  %".754" = load float, ptr %"R14"
  %"fmul.8" = fmul float %".752", %".753"
  %"fadd.8" = fadd float %"fmul.8", %".754"
  %".755" = bitcast ptr %"R14" to ptr
  store float %"fadd.8", ptr %".755"
  ; IADD3 R9, R9, -0x10, RZ
  %".758" = load i32, ptr %"R9"
  %"add.50" = add i32 %".758", -16
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R9"
  ; FFMA R14, R53, R10, R14
  %".761" = load float, ptr %"R53"
  %".762" = load float, ptr %"R10"
  %".763" = load float, ptr %"R14"
  %"fmul.9" = fmul float %".761", %".762"
  %"fadd.9" = fadd float %"fmul.9", %".763"
  %".764" = bitcast ptr %"R14" to ptr
  store float %"fadd.9", ptr %".764"
  ; FFMA R14, R55, R16, R14
  %".767" = load float, ptr %"R55"
  %".768" = load float, ptr %"R16"
  %".769" = load float, ptr %"R14"
  %"fmul.10" = fmul float %".767", %".768"
  %"fadd.10" = fadd float %"fmul.10", %".769"
  %".770" = bitcast ptr %"R14" to ptr
  store float %"fadd.10", ptr %".770"
  ; FFMA R14, R60, R17, R14
  %".773" = load float, ptr %"R60"
  %".774" = load float, ptr %"R17"
  %".775" = load float, ptr %"R14"
  %"fmul.11" = fmul float %".773", %".774"
  %"fadd.11" = fadd float %"fmul.11", %".775"
  %".776" = bitcast ptr %"R14" to ptr
  store float %"fadd.11", ptr %".776"
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".779" = load i32, ptr %"R9"
  %".780" = load i1, ptr %"PT"
  %"cmp.8" = icmp sgt i32 %".779", 12
  %".781" = and i1 %"cmp.8", %".780"
  ; IADD3 R11, R11, 0x10, RZ
  %".783" = load i32, ptr %"R11"
  %"add.52" = add i32 %".783", 16
  %"add.53" = add i32 %"add.52", 0
  store i32 %"add.53", ptr %"R11"
  ; FFMA R57, R12, R57, R58
  %".786" = load float, ptr %"R12"
  %".787" = load float, ptr %"R57"
  %".788" = load float, ptr %"R58"
  %"fmul.12" = fmul float %".786", %".787"
  %"fadd.12" = fadd float %"fmul.12", %".788"
  %".789" = bitcast ptr %"R57" to ptr
  store float %"fadd.12", ptr %".789"
  ; FFMA R57, R10, R59, R57
  %".792" = load float, ptr %"R10"
  %".793" = load float, ptr %"R59"
  %".794" = load float, ptr %"R57"
  %"fmul.13" = fmul float %".792", %".793"
  %"fadd.13" = fadd float %"fmul.13", %".794"
  %".795" = bitcast ptr %"R57" to ptr
  store float %"fadd.13", ptr %".795"
  ; FFMA R57, R16, R61, R57
  %".798" = load float, ptr %"R16"
  %".799" = load float, ptr %"R61"
  %".800" = load float, ptr %"R57"
  %"fmul.14" = fmul float %".798", %".799"
  %"fadd.14" = fadd float %"fmul.14", %".800"
  %".801" = bitcast ptr %"R57" to ptr
  store float %"fadd.14", ptr %".801"
  ; FFMA R52, R17, R52, R57
  %".804" = load float, ptr %"R17"
  %".805" = load float, ptr %"R52"
  %".806" = load float, ptr %"R57"
  %"fmul.15" = fmul float %".804", %".805"
  %"fadd.15" = fadd float %"fmul.15", %".806"
  %".807" = bitcast ptr %"R52" to ptr
  store float %"fadd.15", ptr %".807"
  ; FFMA R14, R54, R19, R14
  %".810" = load float, ptr %"R54"
  %".811" = load float, ptr %"R19"
  %".812" = load float, ptr %"R14"
  %"fmul.16" = fmul float %".810", %".811"
  %"fadd.16" = fadd float %"fmul.16", %".812"
  %".813" = bitcast ptr %"R14" to ptr
  store float %"fadd.16", ptr %".813"
  ; FFMA R52, R19, R56, R52
  %".816" = load float, ptr %"R19"
  %".817" = load float, ptr %"R56"
  %".818" = load float, ptr %"R52"
  %"fmul.17" = fmul float %".816", %".817"
  %"fadd.17" = fadd float %"fmul.17", %".818"
  %".819" = bitcast ptr %"R52" to ptr
  store float %"fadd.17", ptr %".819"
  ; FFMA R14, R39, R20, R14
  %".822" = load float, ptr %"R39"
  %".823" = load float, ptr %"R20"
  %".824" = load float, ptr %"R14"
  %"fmul.18" = fmul float %".822", %".823"
  %"fadd.18" = fadd float %"fmul.18", %".824"
  %".825" = bitcast ptr %"R14" to ptr
  store float %"fadd.18", ptr %".825"
  ; FFMA R41, R20, R41, R52
  %".828" = load float, ptr %"R20"
  %".829" = load float, ptr %"R41"
  %".830" = load float, ptr %"R52"
  %"fmul.19" = fmul float %".828", %".829"
  %"fadd.19" = fadd float %"fmul.19", %".830"
  %".831" = bitcast ptr %"R41" to ptr
  store float %"fadd.19", ptr %".831"
  ; FFMA R14, R38, R21, R14
  %".834" = load float, ptr %"R38"
  %".835" = load float, ptr %"R21"
  %".836" = load float, ptr %"R14"
  %"fmul.20" = fmul float %".834", %".835"
  %"fadd.20" = fadd float %"fmul.20", %".836"
  %".837" = bitcast ptr %"R14" to ptr
  store float %"fadd.20", ptr %".837"
  ; FFMA R40, R21, R40, R41
  %".840" = load float, ptr %"R21"
  %".841" = load float, ptr %"R40"
  %".842" = load float, ptr %"R41"
  %"fmul.21" = fmul float %".840", %".841"
  %"fadd.21" = fadd float %"fmul.21", %".842"
  %".843" = bitcast ptr %"R40" to ptr
  store float %"fadd.21", ptr %".843"
  ; FFMA R14, R47, R42, R14
  %".846" = load float, ptr %"R47"
  %".847" = load float, ptr %"R42"
  %".848" = load float, ptr %"R14"
  %"fmul.22" = fmul float %".846", %".847"
  %"fadd.22" = fadd float %"fmul.22", %".848"
  %".849" = bitcast ptr %"R14" to ptr
  store float %"fadd.22", ptr %".849"
  ; FFMA R43, R42, R43, R40
  %".852" = load float, ptr %"R42"
  %".853" = load float, ptr %"R43"
  %".854" = load float, ptr %"R40"
  %"fmul.23" = fmul float %".852", %".853"
  %"fadd.23" = fadd float %"fmul.23", %".854"
  %".855" = bitcast ptr %"R43" to ptr
  store float %"fadd.23", ptr %".855"
  ; FFMA R18, R44, R18, R43
  %".858" = load float, ptr %"R44"
  %".859" = load float, ptr %"R18"
  %".860" = load float, ptr %"R43"
  %"fmul.24" = fmul float %".858", %".859"
  %"fadd.24" = fadd float %"fmul.24", %".860"
  %".861" = bitcast ptr %"R18" to ptr
  store float %"fadd.24", ptr %".861"
  ; FFMA R14, R35, R44, R14
  %".864" = load float, ptr %"R35"
  %".865" = load float, ptr %"R44"
  %".866" = load float, ptr %"R14"
  %"fmul.25" = fmul float %".864", %".865"
  %"fadd.25" = fadd float %"fmul.25", %".866"
  %".867" = bitcast ptr %"R14" to ptr
  store float %"fadd.25", ptr %".867"
  ; FFMA R18, R46, R49, R18
  %".870" = load float, ptr %"R46"
  %".871" = load float, ptr %"R49"
  %".872" = load float, ptr %"R18"
  %"fmul.26" = fmul float %".870", %".871"
  %"fadd.26" = fadd float %"fmul.26", %".872"
  %".873" = bitcast ptr %"R18" to ptr
  store float %"fadd.26", ptr %".873"
  ; FFMA R14, R15, R46, R14
  %".876" = load float, ptr %"R15"
  %".877" = load float, ptr %"R46"
  %".878" = load float, ptr %"R14"
  %"fmul.27" = fmul float %".876", %".877"
  %"fadd.27" = fadd float %"fmul.27", %".878"
  %".879" = bitcast ptr %"R14" to ptr
  store float %"fadd.27", ptr %".879"
  ; FFMA R13, R13, R48, R14
  %".882" = load float, ptr %"R13"
  %".883" = load float, ptr %"R48"
  %".884" = load float, ptr %"R14"
  %"fmul.28" = fmul float %".882", %".883"
  %"fadd.28" = fadd float %"fmul.28", %".884"
  %".885" = bitcast ptr %"R13" to ptr
  store float %"fadd.28", ptr %".885"
  ; FFMA R37, R48, R37, R18
  %".888" = load float, ptr %"R48"
  %".889" = load float, ptr %"R37"
  %".890" = load float, ptr %"R18"
  %"fmul.29" = fmul float %".888", %".889"
  %"fadd.29" = fadd float %"fmul.29", %".890"
  %".891" = bitcast ptr %"R37" to ptr
  store float %"fadd.29", ptr %".891"
  ; FFMA R52, R45, R50, R13
  %".894" = load float, ptr %"R45"
  %".895" = load float, ptr %"R50"
  %".896" = load float, ptr %"R13"
  %"fmul.30" = fmul float %".894", %".895"
  %"fadd.30" = fadd float %"fmul.30", %".896"
  %".897" = bitcast ptr %"R52" to ptr
  store float %"fadd.30", ptr %".897"
  ; FFMA R54, R50, R34, R37
  %".900" = load float, ptr %"R50"
  %".901" = load float, ptr %"R34"
  %".902" = load float, ptr %"R37"
  %"fmul.31" = fmul float %".900", %".901"
  %"fadd.31" = fadd float %"fmul.31", %".902"
  %".903" = bitcast ptr %"R54" to ptr
  store float %"fadd.31", ptr %".903"
  ; @P1 BRA `(.L_x_5)
  %".906" = load i1, ptr %"P1"
  %".907" = icmp ne i1 %".906", 1
  br i1 %".907", label %".L_x_5", label %".L_x_4"
.L_x_4:
  ; ISETP.GT.AND P1, PT, R9, 0x4, PT
  %".910" = load i32, ptr %"R9"
  %".911" = load i1, ptr %"PT"
  %"cmp.9" = icmp sgt i32 %".910", 4
  %".912" = and i1 %"cmp.9", %".911"
  ; @!P1 BRA `(.L_x_6)
  %".914" = load i1, ptr %"P1"
  %".915" = icmp eq i1 %".914", 1
  br i1 %".915", label %".L_x_6", label %".L_x_4_split_0x0a00"
.L_x_4_split_0x0a00:
  ; IADD3 R13, R0, R11, RZ
  %".918" = load i32, ptr %"R0"
  %".919" = load i32, ptr %"R11"
  %"add.54" = add i32 %".918", %".919"
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R13"
  ; MOV R17, 0x4
  store i32 4, ptr %"R17"
  ; LEA R14, R2.reuse, R13, 0x2
  %".924" = load i32, ptr %"R2"
  %".925" = load i32, ptr %"R13"
  %"shl.51" = shl i32 %".924", 2
  %"add.56" = add i32 %"shl.51", %".925"
  store i32 %"add.56", ptr %"R14"
  ; IMAD R10, R2, 0x3, R13
  %".928" = load i32, ptr %"R2"
  %".929" = load i32, ptr %"R13"
  %"mul.21" = mul i32 %".928", 3
  %"add.57" = add i32 %"mul.21", %".929"
  store i32 %"add.57", ptr %"R10"
  ; IADD3 R12, R11.reuse, 0x4, RZ
  %".932" = load i32, ptr %"R11"
  %"add.58" = add i32 %".932", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R12"
  ; IMAD.WIDE R18, R11, R17.reuse, c[0x0][0x168]
  %".935" = load i32, ptr %"R11"
  %".936" = load i32, ptr %"R17"
  %"mul.22" = mul i32 %".935", %".936"
  %"add.60" = add i32 %"mul.22", %"Arg_3"
  store i32 %"add.60", ptr %"R18"
  ; IADD3 R16, R14, 0x4, RZ
  %".939" = load i32, ptr %"R14"
  %"add.61" = add i32 %".939", 4
  %"add.62" = add i32 %"add.61", 0
  store i32 %"add.62", ptr %"R16"
  ; IADD3 R15, R10.reuse, 0x4, RZ
  %".942" = load i32, ptr %"R10"
  %"add.63" = add i32 %".942", 4
  %"add.64" = add i32 %"add.63", 0
  store i32 %"add.64", ptr %"R15"
  ; IMAD.WIDE R22, R10, R17, c[0x0][0x170]
  %".945" = load i32, ptr %"R10"
  %".946" = load i32, ptr %"R17"
  %"mul.23" = mul i32 %".945", %".946"
  %"add.65" = add i32 %"mul.23", %"Arg_4"
  store i32 %"add.65", ptr %"R22"
  ; IMAD.WIDE R20, R14, R17.reuse, c[0x0][0x170]
  %".949" = load i32, ptr %"R14"
  %".950" = load i32, ptr %"R17"
  %"mul.24" = mul i32 %".949", %".950"
  %"add.66" = add i32 %"mul.24", %"Arg_4"
  store i32 %"add.66", ptr %"R20"
  ; LDG.E.SYS R39, [R18]
  %".953" = load i32, ptr %"R18"
  %"zext.96" = zext i32 %".953" to i64
  %".954" = load i32, ptr %"R19"
  %"zext.97" = zext i32 %".954" to i64
  %"shl.52" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.52", %"zext.96"
  %".955" = inttoptr i64 %"or.48" to ptr
  %".956" = ptrtoint ptr %".955" to i64
  %".957" = add i64 %".956", 0
  %"for_LDG.48" = inttoptr i64 %".957" to ptr
  %".958" = load float, ptr %"for_LDG.48"
  %".959" = bitcast ptr %"R39" to ptr
  store float %".958", ptr %".959"
  ; IMAD.WIDE R12, R12, R17.reuse, c[0x0][0x168]
  %".962" = load i32, ptr %"R12"
  %".963" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".962", %".963"
  %"add.67" = add i32 %"mul.25", %"Arg_3"
  store i32 %"add.67", ptr %"R12"
  ; LDG.E.SYS R37, [R22]
  %".966" = load i32, ptr %"R22"
  %"zext.98" = zext i32 %".966" to i64
  %".967" = load i32, ptr %"R23"
  %"zext.99" = zext i32 %".967" to i64
  %"shl.53" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.53", %"zext.98"
  %".968" = inttoptr i64 %"or.49" to ptr
  %".969" = ptrtoint ptr %".968" to i64
  %".970" = add i64 %".969", 0
  %"for_LDG.49" = inttoptr i64 %".970" to ptr
  %".971" = load float, ptr %"for_LDG.49"
  %".972" = bitcast ptr %"R37" to ptr
  store float %".971", ptr %".972"
  ; LDG.E.SYS R36, [R20]
  %".975" = load i32, ptr %"R20"
  %"zext.100" = zext i32 %".975" to i64
  %".976" = load i32, ptr %"R21"
  %"zext.101" = zext i32 %".976" to i64
  %"shl.54" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.54", %"zext.100"
  %".977" = inttoptr i64 %"or.50" to ptr
  %".978" = ptrtoint ptr %".977" to i64
  %".979" = add i64 %".978", 0
  %"for_LDG.50" = inttoptr i64 %".979" to ptr
  %".980" = load float, ptr %"for_LDG.50"
  %".981" = bitcast ptr %"R36" to ptr
  store float %".980", ptr %".981"
  ; IMAD.WIDE R14, R15, R17, c[0x0][0x170]
  %".984" = load i32, ptr %"R15"
  %".985" = load i32, ptr %"R17"
  %"mul.26" = mul i32 %".984", %".985"
  %"add.68" = add i32 %"mul.26", %"Arg_4"
  store i32 %"add.68", ptr %"R14"
  ; LDG.E.SYS R34, [R18+0x4]
  %".988" = load i32, ptr %"R18"
  %"zext.102" = zext i32 %".988" to i64
  %".989" = load i32, ptr %"R19"
  %"zext.103" = zext i32 %".989" to i64
  %"shl.55" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.55", %"zext.102"
  %".990" = inttoptr i64 %"or.51" to ptr
  %".991" = ptrtoint ptr %".990" to i64
  %".992" = add i64 %".991", 4
  %"for_LDG.51" = inttoptr i64 %".992" to ptr
  %".993" = load float, ptr %"for_LDG.51"
  %".994" = bitcast ptr %"R34" to ptr
  store float %".993", ptr %".994"
  ; LDG.E.SYS R38, [R22+0x4]
  %".997" = load i32, ptr %"R22"
  %"zext.104" = zext i32 %".997" to i64
  %".998" = load i32, ptr %"R23"
  %"zext.105" = zext i32 %".998" to i64
  %"shl.56" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.56", %"zext.104"
  %".999" = inttoptr i64 %"or.52" to ptr
  %".1000" = ptrtoint ptr %".999" to i64
  %".1001" = add i64 %".1000", 4
  %"for_LDG.52" = inttoptr i64 %".1001" to ptr
  %".1002" = load float, ptr %"for_LDG.52"
  %".1003" = bitcast ptr %"R38" to ptr
  store float %".1002", ptr %".1003"
  ; LDG.E.SYS R35, [R20+0x4]
  %".1006" = load i32, ptr %"R20"
  %"zext.106" = zext i32 %".1006" to i64
  %".1007" = load i32, ptr %"R21"
  %"zext.107" = zext i32 %".1007" to i64
  %"shl.57" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.57", %"zext.106"
  %".1008" = inttoptr i64 %"or.53" to ptr
  %".1009" = ptrtoint ptr %".1008" to i64
  %".1010" = add i64 %".1009", 4
  %"for_LDG.53" = inttoptr i64 %".1010" to ptr
  %".1011" = load float, ptr %"for_LDG.53"
  %".1012" = bitcast ptr %"R35" to ptr
  store float %".1011", ptr %".1012"
  ; IMAD.WIDE R16, R16, R17, c[0x0][0x170]
  %".1015" = load i32, ptr %"R16"
  %".1016" = load i32, ptr %"R17"
  %"mul.27" = mul i32 %".1015", %".1016"
  %"add.69" = add i32 %"mul.27", %"Arg_4"
  store i32 %"add.69", ptr %"R16"
  ; LDG.E.SYS R24, [R18+0x8]
  %".1019" = load i32, ptr %"R18"
  %"zext.108" = zext i32 %".1019" to i64
  %".1020" = load i32, ptr %"R19"
  %"zext.109" = zext i32 %".1020" to i64
  %"shl.58" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.58", %"zext.108"
  %".1021" = inttoptr i64 %"or.54" to ptr
  %".1022" = ptrtoint ptr %".1021" to i64
  %".1023" = add i64 %".1022", 8
  %"for_LDG.54" = inttoptr i64 %".1023" to ptr
  %".1024" = load float, ptr %"for_LDG.54"
  %".1025" = bitcast ptr %"R24" to ptr
  store float %".1024", ptr %".1025"
  ; LDG.E.SYS R40, [R22+0x8]
  %".1028" = load i32, ptr %"R22"
  %"zext.110" = zext i32 %".1028" to i64
  %".1029" = load i32, ptr %"R23"
  %"zext.111" = zext i32 %".1029" to i64
  %"shl.59" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.59", %"zext.110"
  %".1030" = inttoptr i64 %"or.55" to ptr
  %".1031" = ptrtoint ptr %".1030" to i64
  %".1032" = add i64 %".1031", 8
  %"for_LDG.55" = inttoptr i64 %".1032" to ptr
  %".1033" = load float, ptr %"for_LDG.55"
  %".1034" = bitcast ptr %"R40" to ptr
  store float %".1033", ptr %".1034"
  ; LDG.E.SYS R41, [R20+0x8]
  %".1037" = load i32, ptr %"R20"
  %"zext.112" = zext i32 %".1037" to i64
  %".1038" = load i32, ptr %"R21"
  %"zext.113" = zext i32 %".1038" to i64
  %"shl.60" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.60", %"zext.112"
  %".1039" = inttoptr i64 %"or.56" to ptr
  %".1040" = ptrtoint ptr %".1039" to i64
  %".1041" = add i64 %".1040", 8
  %"for_LDG.56" = inttoptr i64 %".1041" to ptr
  %".1042" = load float, ptr %"for_LDG.56"
  %".1043" = bitcast ptr %"R41" to ptr
  store float %".1042", ptr %".1043"
  ; LDG.E.SYS R44, [R18+0xc]
  %".1046" = load i32, ptr %"R18"
  %"zext.114" = zext i32 %".1046" to i64
  %".1047" = load i32, ptr %"R19"
  %"zext.115" = zext i32 %".1047" to i64
  %"shl.61" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.61", %"zext.114"
  %".1048" = inttoptr i64 %"or.57" to ptr
  %".1049" = ptrtoint ptr %".1048" to i64
  %".1050" = add i64 %".1049", 12
  %"for_LDG.57" = inttoptr i64 %".1050" to ptr
  %".1051" = load float, ptr %"for_LDG.57"
  %".1052" = bitcast ptr %"R44" to ptr
  store float %".1051", ptr %".1052"
  ; LDG.E.SYS R42, [R22+0xc]
  %".1055" = load i32, ptr %"R22"
  %"zext.116" = zext i32 %".1055" to i64
  %".1056" = load i32, ptr %"R23"
  %"zext.117" = zext i32 %".1056" to i64
  %"shl.62" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.62", %"zext.116"
  %".1057" = inttoptr i64 %"or.58" to ptr
  %".1058" = ptrtoint ptr %".1057" to i64
  %".1059" = add i64 %".1058", 12
  %"for_LDG.58" = inttoptr i64 %".1059" to ptr
  %".1060" = load float, ptr %"for_LDG.58"
  %".1061" = bitcast ptr %"R42" to ptr
  store float %".1060", ptr %".1061"
  ; LDG.E.SYS R43, [R20+0xc]
  %".1064" = load i32, ptr %"R20"
  %"zext.118" = zext i32 %".1064" to i64
  %".1065" = load i32, ptr %"R21"
  %"zext.119" = zext i32 %".1065" to i64
  %"shl.63" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.63", %"zext.118"
  %".1066" = inttoptr i64 %"or.59" to ptr
  %".1067" = ptrtoint ptr %".1066" to i64
  %".1068" = add i64 %".1067", 12
  %"for_LDG.59" = inttoptr i64 %".1068" to ptr
  %".1069" = load float, ptr %"for_LDG.59"
  %".1070" = bitcast ptr %"R43" to ptr
  store float %".1069", ptr %".1070"
  ; LDG.E.SYS R48, [R12]
  %".1073" = load i32, ptr %"R12"
  %"zext.120" = zext i32 %".1073" to i64
  %".1074" = load i32, ptr %"R13"
  %"zext.121" = zext i32 %".1074" to i64
  %"shl.64" = shl i64 %"zext.121", 32
  %"or.60" = or i64 %"shl.64", %"zext.120"
  %".1075" = inttoptr i64 %"or.60" to ptr
  %".1076" = ptrtoint ptr %".1075" to i64
  %".1077" = add i64 %".1076", 0
  %"for_LDG.60" = inttoptr i64 %".1077" to ptr
  %".1078" = load float, ptr %"for_LDG.60"
  %".1079" = bitcast ptr %"R48" to ptr
  store float %".1078", ptr %".1079"
  ; LDG.E.SYS R46, [R14]
  %".1082" = load i32, ptr %"R14"
  %"zext.122" = zext i32 %".1082" to i64
  %".1083" = load i32, ptr %"R15"
  %"zext.123" = zext i32 %".1083" to i64
  %"shl.65" = shl i64 %"zext.123", 32
  %"or.61" = or i64 %"shl.65", %"zext.122"
  %".1084" = inttoptr i64 %"or.61" to ptr
  %".1085" = ptrtoint ptr %".1084" to i64
  %".1086" = add i64 %".1085", 0
  %"for_LDG.61" = inttoptr i64 %".1086" to ptr
  %".1087" = load float, ptr %"for_LDG.61"
  %".1088" = bitcast ptr %"R46" to ptr
  store float %".1087", ptr %".1088"
  ; LDG.E.SYS R45, [R16]
  %".1091" = load i32, ptr %"R16"
  %"zext.124" = zext i32 %".1091" to i64
  %".1092" = load i32, ptr %"R17"
  %"zext.125" = zext i32 %".1092" to i64
  %"shl.66" = shl i64 %"zext.125", 32
  %"or.62" = or i64 %"shl.66", %"zext.124"
  %".1093" = inttoptr i64 %"or.62" to ptr
  %".1094" = ptrtoint ptr %".1093" to i64
  %".1095" = add i64 %".1094", 0
  %"for_LDG.62" = inttoptr i64 %".1095" to ptr
  %".1096" = load float, ptr %"for_LDG.62"
  %".1097" = bitcast ptr %"R45" to ptr
  store float %".1096", ptr %".1097"
  ; LDG.E.SYS R56, [R12+0x4]
  %".1100" = load i32, ptr %"R12"
  %"zext.126" = zext i32 %".1100" to i64
  %".1101" = load i32, ptr %"R13"
  %"zext.127" = zext i32 %".1101" to i64
  %"shl.67" = shl i64 %"zext.127", 32
  %"or.63" = or i64 %"shl.67", %"zext.126"
  %".1102" = inttoptr i64 %"or.63" to ptr
  %".1103" = ptrtoint ptr %".1102" to i64
  %".1104" = add i64 %".1103", 4
  %"for_LDG.63" = inttoptr i64 %".1104" to ptr
  %".1105" = load float, ptr %"for_LDG.63"
  %".1106" = bitcast ptr %"R56" to ptr
  store float %".1105", ptr %".1106"
  ; LDG.E.SYS R50, [R14+0x4]
  %".1109" = load i32, ptr %"R14"
  %"zext.128" = zext i32 %".1109" to i64
  %".1110" = load i32, ptr %"R15"
  %"zext.129" = zext i32 %".1110" to i64
  %"shl.68" = shl i64 %"zext.129", 32
  %"or.64" = or i64 %"shl.68", %"zext.128"
  %".1111" = inttoptr i64 %"or.64" to ptr
  %".1112" = ptrtoint ptr %".1111" to i64
  %".1113" = add i64 %".1112", 4
  %"for_LDG.64" = inttoptr i64 %".1113" to ptr
  %".1114" = load float, ptr %"for_LDG.64"
  %".1115" = bitcast ptr %"R50" to ptr
  store float %".1114", ptr %".1115"
  ; LDG.E.SYS R47, [R16+0x4]
  %".1118" = load i32, ptr %"R16"
  %"zext.130" = zext i32 %".1118" to i64
  %".1119" = load i32, ptr %"R17"
  %"zext.131" = zext i32 %".1119" to i64
  %"shl.69" = shl i64 %"zext.131", 32
  %"or.65" = or i64 %"shl.69", %"zext.130"
  %".1120" = inttoptr i64 %"or.65" to ptr
  %".1121" = ptrtoint ptr %".1120" to i64
  %".1122" = add i64 %".1121", 4
  %"for_LDG.65" = inttoptr i64 %".1122" to ptr
  %".1123" = load float, ptr %"for_LDG.65"
  %".1124" = bitcast ptr %"R47" to ptr
  store float %".1123", ptr %".1124"
  ; LDG.E.SYS R10, [R12+0x8]
  %".1127" = load i32, ptr %"R12"
  %"zext.132" = zext i32 %".1127" to i64
  %".1128" = load i32, ptr %"R13"
  %"zext.133" = zext i32 %".1128" to i64
  %"shl.70" = shl i64 %"zext.133", 32
  %"or.66" = or i64 %"shl.70", %"zext.132"
  %".1129" = inttoptr i64 %"or.66" to ptr
  %".1130" = ptrtoint ptr %".1129" to i64
  %".1131" = add i64 %".1130", 8
  %"for_LDG.66" = inttoptr i64 %".1131" to ptr
  %".1132" = load float, ptr %"for_LDG.66"
  %".1133" = bitcast ptr %"R10" to ptr
  store float %".1132", ptr %".1133"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1136" = load i32, ptr %"R14"
  %"zext.134" = zext i32 %".1136" to i64
  %".1137" = load i32, ptr %"R15"
  %"zext.135" = zext i32 %".1137" to i64
  %"shl.71" = shl i64 %"zext.135", 32
  %"or.67" = or i64 %"shl.71", %"zext.134"
  %".1138" = inttoptr i64 %"or.67" to ptr
  %".1139" = ptrtoint ptr %".1138" to i64
  %".1140" = add i64 %".1139", 8
  %"for_LDG.67" = inttoptr i64 %".1140" to ptr
  %".1141" = load float, ptr %"for_LDG.67"
  %".1142" = bitcast ptr %"R25" to ptr
  store float %".1141", ptr %".1142"
  ; LDG.E.SYS R19, [R16+0x8]
  %".1145" = load i32, ptr %"R16"
  %"zext.136" = zext i32 %".1145" to i64
  %".1146" = load i32, ptr %"R17"
  %"zext.137" = zext i32 %".1146" to i64
  %"shl.72" = shl i64 %"zext.137", 32
  %"or.68" = or i64 %"shl.72", %"zext.136"
  %".1147" = inttoptr i64 %"or.68" to ptr
  %".1148" = ptrtoint ptr %".1147" to i64
  %".1149" = add i64 %".1148", 8
  %"for_LDG.68" = inttoptr i64 %".1149" to ptr
  %".1150" = load float, ptr %"for_LDG.68"
  %".1151" = bitcast ptr %"R19" to ptr
  store float %".1150", ptr %".1151"
  ; LDG.E.SYS R18, [R12+0xc]
  %".1154" = load i32, ptr %"R12"
  %"zext.138" = zext i32 %".1154" to i64
  %".1155" = load i32, ptr %"R13"
  %"zext.139" = zext i32 %".1155" to i64
  %"shl.73" = shl i64 %"zext.139", 32
  %"or.69" = or i64 %"shl.73", %"zext.138"
  %".1156" = inttoptr i64 %"or.69" to ptr
  %".1157" = ptrtoint ptr %".1156" to i64
  %".1158" = add i64 %".1157", 12
  %"for_LDG.69" = inttoptr i64 %".1158" to ptr
  %".1159" = load float, ptr %"for_LDG.69"
  %".1160" = bitcast ptr %"R18" to ptr
  store float %".1159", ptr %".1160"
  ; LDG.E.SYS R20, [R14+0xc]
  %".1163" = load i32, ptr %"R14"
  %"zext.140" = zext i32 %".1163" to i64
  %".1164" = load i32, ptr %"R15"
  %"zext.141" = zext i32 %".1164" to i64
  %"shl.74" = shl i64 %"zext.141", 32
  %"or.70" = or i64 %"shl.74", %"zext.140"
  %".1165" = inttoptr i64 %"or.70" to ptr
  %".1166" = ptrtoint ptr %".1165" to i64
  %".1167" = add i64 %".1166", 12
  %"for_LDG.70" = inttoptr i64 %".1167" to ptr
  %".1168" = load float, ptr %"for_LDG.70"
  %".1169" = bitcast ptr %"R20" to ptr
  store float %".1168", ptr %".1169"
  ; LDG.E.SYS R21, [R16+0xc]
  %".1172" = load i32, ptr %"R16"
  %"zext.142" = zext i32 %".1172" to i64
  %".1173" = load i32, ptr %"R17"
  %"zext.143" = zext i32 %".1173" to i64
  %"shl.75" = shl i64 %"zext.143", 32
  %"or.71" = or i64 %"shl.75", %"zext.142"
  %".1174" = inttoptr i64 %"or.71" to ptr
  %".1175" = ptrtoint ptr %".1174" to i64
  %".1176" = add i64 %".1175", 12
  %"for_LDG.71" = inttoptr i64 %".1176" to ptr
  %".1177" = load float, ptr %"for_LDG.71"
  %".1178" = bitcast ptr %"R21" to ptr
  store float %".1177", ptr %".1178"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1181" = xor i1 1, 1
  %".1182" = and i1 %".1181", 1
  %".1183" = and i1 %".1182", 1
  ; IADD3 R9, R9, -0x8, RZ
  %".1185" = load i32, ptr %"R9"
  %"add.70" = add i32 %".1185", -8
  %"add.71" = add i32 %"add.70", 0
  store i32 %"add.71", ptr %"R9"
  ; IADD3 R11, R11, 0x8, RZ
  %".1188" = load i32, ptr %"R11"
  %"add.72" = add i32 %".1188", 8
  %"add.73" = add i32 %"add.72", 0
  store i32 %"add.73", ptr %"R11"
  ; FFMA R37, R37, R39, R52
  %".1191" = load float, ptr %"R37"
  %".1192" = load float, ptr %"R39"
  %".1193" = load float, ptr %"R52"
  %"fmul.32" = fmul float %".1191", %".1192"
  %"fadd.32" = fadd float %"fmul.32", %".1193"
  %".1194" = bitcast ptr %"R37" to ptr
  store float %"fadd.32", ptr %".1194"
  ; FFMA R36, R39, R36, R54
  %".1197" = load float, ptr %"R39"
  %".1198" = load float, ptr %"R36"
  %".1199" = load float, ptr %"R54"
  %"fmul.33" = fmul float %".1197", %".1198"
  %"fadd.33" = fadd float %"fmul.33", %".1199"
  %".1200" = bitcast ptr %"R36" to ptr
  store float %"fadd.33", ptr %".1200"
  ; FFMA R37, R38, R34, R37
  %".1203" = load float, ptr %"R38"
  %".1204" = load float, ptr %"R34"
  %".1205" = load float, ptr %"R37"
  %"fmul.34" = fmul float %".1203", %".1204"
  %"fadd.34" = fadd float %"fmul.34", %".1205"
  %".1206" = bitcast ptr %"R37" to ptr
  store float %"fadd.34", ptr %".1206"
  ; FFMA R35, R34, R35, R36
  %".1209" = load float, ptr %"R34"
  %".1210" = load float, ptr %"R35"
  %".1211" = load float, ptr %"R36"
  %"fmul.35" = fmul float %".1209", %".1210"
  %"fadd.35" = fadd float %"fmul.35", %".1211"
  %".1212" = bitcast ptr %"R35" to ptr
  store float %"fadd.35", ptr %".1212"
  ; FFMA R37, R40, R24, R37
  %".1215" = load float, ptr %"R40"
  %".1216" = load float, ptr %"R24"
  %".1217" = load float, ptr %"R37"
  %"fmul.36" = fmul float %".1215", %".1216"
  %"fadd.36" = fadd float %"fmul.36", %".1217"
  %".1218" = bitcast ptr %"R37" to ptr
  store float %"fadd.36", ptr %".1218"
  ; FFMA R35, R24, R41, R35
  %".1221" = load float, ptr %"R24"
  %".1222" = load float, ptr %"R41"
  %".1223" = load float, ptr %"R35"
  %"fmul.37" = fmul float %".1221", %".1222"
  %"fadd.37" = fadd float %"fmul.37", %".1223"
  %".1224" = bitcast ptr %"R35" to ptr
  store float %"fadd.37", ptr %".1224"
  ; FFMA R37, R42, R44, R37
  %".1227" = load float, ptr %"R42"
  %".1228" = load float, ptr %"R44"
  %".1229" = load float, ptr %"R37"
  %"fmul.38" = fmul float %".1227", %".1228"
  %"fadd.38" = fadd float %"fmul.38", %".1229"
  %".1230" = bitcast ptr %"R37" to ptr
  store float %"fadd.38", ptr %".1230"
  ; FFMA R35, R44, R43, R35
  %".1233" = load float, ptr %"R44"
  %".1234" = load float, ptr %"R43"
  %".1235" = load float, ptr %"R35"
  %"fmul.39" = fmul float %".1233", %".1234"
  %"fadd.39" = fadd float %"fmul.39", %".1235"
  %".1236" = bitcast ptr %"R35" to ptr
  store float %"fadd.39", ptr %".1236"
  ; FFMA R37, R46, R48, R37
  %".1239" = load float, ptr %"R46"
  %".1240" = load float, ptr %"R48"
  %".1241" = load float, ptr %"R37"
  %"fmul.40" = fmul float %".1239", %".1240"
  %"fadd.40" = fadd float %"fmul.40", %".1241"
  %".1242" = bitcast ptr %"R37" to ptr
  store float %"fadd.40", ptr %".1242"
  ; FFMA R35, R48, R45, R35
  %".1245" = load float, ptr %"R48"
  %".1246" = load float, ptr %"R45"
  %".1247" = load float, ptr %"R35"
  %"fmul.41" = fmul float %".1245", %".1246"
  %"fadd.41" = fadd float %"fmul.41", %".1247"
  %".1248" = bitcast ptr %"R35" to ptr
  store float %"fadd.41", ptr %".1248"
  ; FFMA R37, R50, R56, R37
  %".1251" = load float, ptr %"R50"
  %".1252" = load float, ptr %"R56"
  %".1253" = load float, ptr %"R37"
  %"fmul.42" = fmul float %".1251", %".1252"
  %"fadd.42" = fadd float %"fmul.42", %".1253"
  %".1254" = bitcast ptr %"R37" to ptr
  store float %"fadd.42", ptr %".1254"
  ; FFMA R35, R56, R47, R35
  %".1257" = load float, ptr %"R56"
  %".1258" = load float, ptr %"R47"
  %".1259" = load float, ptr %"R35"
  %"fmul.43" = fmul float %".1257", %".1258"
  %"fadd.43" = fadd float %"fmul.43", %".1259"
  %".1260" = bitcast ptr %"R35" to ptr
  store float %"fadd.43", ptr %".1260"
  ; FFMA R25, R25, R10, R37
  %".1263" = load float, ptr %"R25"
  %".1264" = load float, ptr %"R10"
  %".1265" = load float, ptr %"R37"
  %"fmul.44" = fmul float %".1263", %".1264"
  %"fadd.44" = fadd float %"fmul.44", %".1265"
  %".1266" = bitcast ptr %"R25" to ptr
  store float %"fadd.44", ptr %".1266"
  ; FFMA R19, R10, R19, R35
  %".1269" = load float, ptr %"R10"
  %".1270" = load float, ptr %"R19"
  %".1271" = load float, ptr %"R35"
  %"fmul.45" = fmul float %".1269", %".1270"
  %"fadd.45" = fadd float %"fmul.45", %".1271"
  %".1272" = bitcast ptr %"R19" to ptr
  store float %"fadd.45", ptr %".1272"
  ; FFMA R52, R20, R18, R25
  %".1275" = load float, ptr %"R20"
  %".1276" = load float, ptr %"R18"
  %".1277" = load float, ptr %"R25"
  %"fmul.46" = fmul float %".1275", %".1276"
  %"fadd.46" = fadd float %"fmul.46", %".1277"
  %".1278" = bitcast ptr %"R52" to ptr
  store float %"fadd.46", ptr %".1278"
  ; FFMA R54, R18, R21, R19
  %".1281" = load float, ptr %"R18"
  %".1282" = load float, ptr %"R21"
  %".1283" = load float, ptr %"R19"
  %"fmul.47" = fmul float %".1281", %".1282"
  %"fadd.47" = fadd float %"fmul.47", %".1283"
  %".1284" = bitcast ptr %"R54" to ptr
  store float %"fadd.47", ptr %".1284"
.L_x_6:
  ; ISETP.NE.OR P0, PT, R9, RZ, P0
  %".1287" = load i32, ptr %"R9"
  %".1288" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".1287", 0
  %".1289" = or i1 %"cmp.10", %".1288"
  ; @!P0 BRA `(.L_x_2)
  %".1291" = load i1, ptr %"P0"
  %".1292" = icmp eq i1 %".1291", 1
  br i1 %".1292", label %".L_x_2", label %".L_x_3"
.L_x_3:
  ; IADD3 R13, R0, R11, RZ
  %".1295" = load i32, ptr %"R0"
  %".1296" = load i32, ptr %"R11"
  %"add.74" = add i32 %".1295", %".1296"
  %"add.75" = add i32 %"add.74", 0
  store i32 %"add.75", ptr %"R13"
  ; MOV R16, 0x4
  store i32 4, ptr %"R16"
  ; LEA R17, R2.reuse, R13, 0x2
  %".1301" = load i32, ptr %"R2"
  %".1302" = load i32, ptr %"R13"
  %"shl.76" = shl i32 %".1301", 2
  %"add.76" = add i32 %"shl.76", %".1302"
  store i32 %"add.76", ptr %"R17"
  ; IMAD R15, R2, 0x3, R13
  %".1305" = load i32, ptr %"R2"
  %".1306" = load i32, ptr %"R13"
  %"mul.28" = mul i32 %".1305", 3
  %"add.77" = add i32 %"mul.28", %".1306"
  store i32 %"add.77", ptr %"R15"
  ; IMAD.WIDE R12, R11, R16, c[0x0][0x168]
  %".1309" = load i32, ptr %"R11"
  %".1310" = load i32, ptr %"R16"
  %"mul.29" = mul i32 %".1309", %".1310"
  %"add.78" = add i32 %"mul.29", %"Arg_3"
  store i32 %"add.78", ptr %"R12"
  ; IMAD.WIDE R14, R15, R16, c[0x0][0x170]
  %".1313" = load i32, ptr %"R15"
  %".1314" = load i32, ptr %"R16"
  %"mul.30" = mul i32 %".1313", %".1314"
  %"add.79" = add i32 %"mul.30", %"Arg_4"
  store i32 %"add.79", ptr %"R14"
  ; IMAD.WIDE R16, R17, R16, c[0x0][0x170]
  %".1317" = load i32, ptr %"R17"
  %".1318" = load i32, ptr %"R16"
  %"mul.31" = mul i32 %".1317", %".1318"
  %"add.80" = add i32 %"mul.31", %"Arg_4"
  store i32 %"add.80", ptr %"R16"
  ; LDG.E.SYS R21, [R12]
  %".1321" = load i32, ptr %"R12"
  %"zext.144" = zext i32 %".1321" to i64
  %".1322" = load i32, ptr %"R13"
  %"zext.145" = zext i32 %".1322" to i64
  %"shl.77" = shl i64 %"zext.145", 32
  %"or.72" = or i64 %"shl.77", %"zext.144"
  %".1323" = inttoptr i64 %"or.72" to ptr
  %".1324" = ptrtoint ptr %".1323" to i64
  %".1325" = add i64 %".1324", 0
  %"for_LDG.72" = inttoptr i64 %".1325" to ptr
  %".1326" = load float, ptr %"for_LDG.72"
  %".1327" = bitcast ptr %"R21" to ptr
  store float %".1326", ptr %".1327"
  ; LDG.E.SYS R19, [R14]
  %".1330" = load i32, ptr %"R14"
  %"zext.146" = zext i32 %".1330" to i64
  %".1331" = load i32, ptr %"R15"
  %"zext.147" = zext i32 %".1331" to i64
  %"shl.78" = shl i64 %"zext.147", 32
  %"or.73" = or i64 %"shl.78", %"zext.146"
  %".1332" = inttoptr i64 %"or.73" to ptr
  %".1333" = ptrtoint ptr %".1332" to i64
  %".1334" = add i64 %".1333", 0
  %"for_LDG.73" = inttoptr i64 %".1334" to ptr
  %".1335" = load float, ptr %"for_LDG.73"
  %".1336" = bitcast ptr %"R19" to ptr
  store float %".1335", ptr %".1336"
  ; LDG.E.SYS R10, [R16]
  %".1339" = load i32, ptr %"R16"
  %"zext.148" = zext i32 %".1339" to i64
  %".1340" = load i32, ptr %"R17"
  %"zext.149" = zext i32 %".1340" to i64
  %"shl.79" = shl i64 %"zext.149", 32
  %"or.74" = or i64 %"shl.79", %"zext.148"
  %".1341" = inttoptr i64 %"or.74" to ptr
  %".1342" = ptrtoint ptr %".1341" to i64
  %".1343" = add i64 %".1342", 0
  %"for_LDG.74" = inttoptr i64 %".1343" to ptr
  %".1344" = load float, ptr %"for_LDG.74"
  %".1345" = bitcast ptr %"R10" to ptr
  store float %".1344", ptr %".1345"
  ; LDG.E.SYS R23, [R12+0x4]
  %".1348" = load i32, ptr %"R12"
  %"zext.150" = zext i32 %".1348" to i64
  %".1349" = load i32, ptr %"R13"
  %"zext.151" = zext i32 %".1349" to i64
  %"shl.80" = shl i64 %"zext.151", 32
  %"or.75" = or i64 %"shl.80", %"zext.150"
  %".1350" = inttoptr i64 %"or.75" to ptr
  %".1351" = ptrtoint ptr %".1350" to i64
  %".1352" = add i64 %".1351", 4
  %"for_LDG.75" = inttoptr i64 %".1352" to ptr
  %".1353" = load float, ptr %"for_LDG.75"
  %".1354" = bitcast ptr %"R23" to ptr
  store float %".1353", ptr %".1354"
  ; LDG.E.SYS R18, [R14+0x4]
  %".1357" = load i32, ptr %"R14"
  %"zext.152" = zext i32 %".1357" to i64
  %".1358" = load i32, ptr %"R15"
  %"zext.153" = zext i32 %".1358" to i64
  %"shl.81" = shl i64 %"zext.153", 32
  %"or.76" = or i64 %"shl.81", %"zext.152"
  %".1359" = inttoptr i64 %"or.76" to ptr
  %".1360" = ptrtoint ptr %".1359" to i64
  %".1361" = add i64 %".1360", 4
  %"for_LDG.76" = inttoptr i64 %".1361" to ptr
  %".1362" = load float, ptr %"for_LDG.76"
  %".1363" = bitcast ptr %"R18" to ptr
  store float %".1362", ptr %".1363"
  ; LDG.E.SYS R20, [R16+0x4]
  %".1366" = load i32, ptr %"R16"
  %"zext.154" = zext i32 %".1366" to i64
  %".1367" = load i32, ptr %"R17"
  %"zext.155" = zext i32 %".1367" to i64
  %"shl.82" = shl i64 %"zext.155", 32
  %"or.77" = or i64 %"shl.82", %"zext.154"
  %".1368" = inttoptr i64 %"or.77" to ptr
  %".1369" = ptrtoint ptr %".1368" to i64
  %".1370" = add i64 %".1369", 4
  %"for_LDG.77" = inttoptr i64 %".1370" to ptr
  %".1371" = load float, ptr %"for_LDG.77"
  %".1372" = bitcast ptr %"R20" to ptr
  store float %".1371", ptr %".1372"
  ; LDG.E.SYS R35, [R12+0x8]
  %".1375" = load i32, ptr %"R12"
  %"zext.156" = zext i32 %".1375" to i64
  %".1376" = load i32, ptr %"R13"
  %"zext.157" = zext i32 %".1376" to i64
  %"shl.83" = shl i64 %"zext.157", 32
  %"or.78" = or i64 %"shl.83", %"zext.156"
  %".1377" = inttoptr i64 %"or.78" to ptr
  %".1378" = ptrtoint ptr %".1377" to i64
  %".1379" = add i64 %".1378", 8
  %"for_LDG.78" = inttoptr i64 %".1379" to ptr
  %".1380" = load float, ptr %"for_LDG.78"
  %".1381" = bitcast ptr %"R35" to ptr
  store float %".1380", ptr %".1381"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1384" = load i32, ptr %"R14"
  %"zext.158" = zext i32 %".1384" to i64
  %".1385" = load i32, ptr %"R15"
  %"zext.159" = zext i32 %".1385" to i64
  %"shl.84" = shl i64 %"zext.159", 32
  %"or.79" = or i64 %"shl.84", %"zext.158"
  %".1386" = inttoptr i64 %"or.79" to ptr
  %".1387" = ptrtoint ptr %".1386" to i64
  %".1388" = add i64 %".1387", 8
  %"for_LDG.79" = inttoptr i64 %".1388" to ptr
  %".1389" = load float, ptr %"for_LDG.79"
  %".1390" = bitcast ptr %"R25" to ptr
  store float %".1389", ptr %".1390"
  ; LDG.E.SYS R22, [R16+0x8]
  %".1393" = load i32, ptr %"R16"
  %"zext.160" = zext i32 %".1393" to i64
  %".1394" = load i32, ptr %"R17"
  %"zext.161" = zext i32 %".1394" to i64
  %"shl.85" = shl i64 %"zext.161", 32
  %"or.80" = or i64 %"shl.85", %"zext.160"
  %".1395" = inttoptr i64 %"or.80" to ptr
  %".1396" = ptrtoint ptr %".1395" to i64
  %".1397" = add i64 %".1396", 8
  %"for_LDG.80" = inttoptr i64 %".1397" to ptr
  %".1398" = load float, ptr %"for_LDG.80"
  %".1399" = bitcast ptr %"R22" to ptr
  store float %".1398", ptr %".1399"
  ; LDG.E.SYS R39, [R12+0xc]
  %".1402" = load i32, ptr %"R12"
  %"zext.162" = zext i32 %".1402" to i64
  %".1403" = load i32, ptr %"R13"
  %"zext.163" = zext i32 %".1403" to i64
  %"shl.86" = shl i64 %"zext.163", 32
  %"or.81" = or i64 %"shl.86", %"zext.162"
  %".1404" = inttoptr i64 %"or.81" to ptr
  %".1405" = ptrtoint ptr %".1404" to i64
  %".1406" = add i64 %".1405", 12
  %"for_LDG.81" = inttoptr i64 %".1406" to ptr
  %".1407" = load float, ptr %"for_LDG.81"
  %".1408" = bitcast ptr %"R39" to ptr
  store float %".1407", ptr %".1408"
  ; LDG.E.SYS R37, [R14+0xc]
  %".1411" = load i32, ptr %"R14"
  %"zext.164" = zext i32 %".1411" to i64
  %".1412" = load i32, ptr %"R15"
  %"zext.165" = zext i32 %".1412" to i64
  %"shl.87" = shl i64 %"zext.165", 32
  %"or.82" = or i64 %"shl.87", %"zext.164"
  %".1413" = inttoptr i64 %"or.82" to ptr
  %".1414" = ptrtoint ptr %".1413" to i64
  %".1415" = add i64 %".1414", 12
  %"for_LDG.82" = inttoptr i64 %".1415" to ptr
  %".1416" = load float, ptr %"for_LDG.82"
  %".1417" = bitcast ptr %"R37" to ptr
  store float %".1416", ptr %".1417"
  ; LDG.E.SYS R24, [R16+0xc]
  %".1420" = load i32, ptr %"R16"
  %"zext.166" = zext i32 %".1420" to i64
  %".1421" = load i32, ptr %"R17"
  %"zext.167" = zext i32 %".1421" to i64
  %"shl.88" = shl i64 %"zext.167", 32
  %"or.83" = or i64 %"shl.88", %"zext.166"
  %".1422" = inttoptr i64 %"or.83" to ptr
  %".1423" = ptrtoint ptr %".1422" to i64
  %".1424" = add i64 %".1423", 12
  %"for_LDG.83" = inttoptr i64 %".1424" to ptr
  %".1425" = load float, ptr %"for_LDG.83"
  %".1426" = bitcast ptr %"R24" to ptr
  store float %".1425", ptr %".1426"
  ; IADD3 R9, R9, -0x4, RZ
  %".1429" = load i32, ptr %"R9"
  %"add.81" = add i32 %".1429", -4
  %"add.82" = add i32 %"add.81", 0
  store i32 %"add.82", ptr %"R9"
  ; IADD3 R11, R11, 0x4, RZ
  %".1432" = load i32, ptr %"R11"
  %"add.83" = add i32 %".1432", 4
  %"add.84" = add i32 %"add.83", 0
  store i32 %"add.84", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R9, RZ, PT
  %".1435" = load i32, ptr %"R9"
  %".1436" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".1435", 0
  %".1437" = and i1 %"cmp.11", %".1436"
  ; FFMA R19, R19, R21, R52
  %".1439" = load float, ptr %"R19"
  %".1440" = load float, ptr %"R21"
  %".1441" = load float, ptr %"R52"
  %"fmul.48" = fmul float %".1439", %".1440"
  %"fadd.48" = fadd float %"fmul.48", %".1441"
  %".1442" = bitcast ptr %"R19" to ptr
  store float %"fadd.48", ptr %".1442"
  ; FFMA R10, R21, R10, R54
  %".1445" = load float, ptr %"R21"
  %".1446" = load float, ptr %"R10"
  %".1447" = load float, ptr %"R54"
  %"fmul.49" = fmul float %".1445", %".1446"
  %"fadd.49" = fadd float %"fmul.49", %".1447"
  %".1448" = bitcast ptr %"R10" to ptr
  store float %"fadd.49", ptr %".1448"
  ; FFMA R18, R18, R23, R19
  %".1451" = load float, ptr %"R18"
  %".1452" = load float, ptr %"R23"
  %".1453" = load float, ptr %"R19"
  %"fmul.50" = fmul float %".1451", %".1452"
  %"fadd.50" = fadd float %"fmul.50", %".1453"
  %".1454" = bitcast ptr %"R18" to ptr
  store float %"fadd.50", ptr %".1454"
  ; FFMA R10, R23, R20, R10
  %".1457" = load float, ptr %"R23"
  %".1458" = load float, ptr %"R20"
  %".1459" = load float, ptr %"R10"
  %"fmul.51" = fmul float %".1457", %".1458"
  %"fadd.51" = fadd float %"fmul.51", %".1459"
  %".1460" = bitcast ptr %"R10" to ptr
  store float %"fadd.51", ptr %".1460"
  ; FFMA R18, R25, R35, R18
  %".1463" = load float, ptr %"R25"
  %".1464" = load float, ptr %"R35"
  %".1465" = load float, ptr %"R18"
  %"fmul.52" = fmul float %".1463", %".1464"
  %"fadd.52" = fadd float %"fmul.52", %".1465"
  %".1466" = bitcast ptr %"R18" to ptr
  store float %"fadd.52", ptr %".1466"
  ; FFMA R10, R35, R22, R10
  %".1469" = load float, ptr %"R35"
  %".1470" = load float, ptr %"R22"
  %".1471" = load float, ptr %"R10"
  %"fmul.53" = fmul float %".1469", %".1470"
  %"fadd.53" = fadd float %"fmul.53", %".1471"
  %".1472" = bitcast ptr %"R10" to ptr
  store float %"fadd.53", ptr %".1472"
  ; FFMA R52, R37, R39, R18
  %".1475" = load float, ptr %"R37"
  %".1476" = load float, ptr %"R39"
  %".1477" = load float, ptr %"R18"
  %"fmul.54" = fmul float %".1475", %".1476"
  %"fadd.54" = fadd float %"fmul.54", %".1477"
  %".1478" = bitcast ptr %"R52" to ptr
  store float %"fadd.54", ptr %".1478"
  ; FFMA R54, R39, R24, R10
  %".1481" = load float, ptr %"R39"
  %".1482" = load float, ptr %"R24"
  %".1483" = load float, ptr %"R10"
  %"fmul.55" = fmul float %".1481", %".1482"
  %"fadd.55" = fadd float %"fmul.55", %".1483"
  %".1484" = bitcast ptr %"R54" to ptr
  store float %"fadd.55", ptr %".1484"
  ; @P0 BRA `(.L_x_3)
  %".1487" = load i1, ptr %"P0"
  %".1488" = icmp ne i1 %".1487", 1
  br i1 %".1488", label %".L_x_3", label %".L_x_2"
.L_x_2:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1491" = load i32, ptr %"R4"
  %".1492" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".1491", 0
  %".1493" = and i1 %"cmp.12", %".1492"
  ; @!P0 BRA `(.L_x_1)
  %".1495" = load i1, ptr %"P0"
  %".1496" = icmp eq i1 %".1495", 1
  br i1 %".1496", label %".L_x_1", label %".L_x_2_split_0x0fb0"
.L_x_2_split_0x0fb0:
  ; IADD3 R9, R0, R11, RZ
  %".1499" = load i32, ptr %"R0"
  %".1500" = load i32, ptr %"R11"
  %"add.85" = add i32 %".1499", %".1500"
  %"add.86" = add i32 %"add.85", 0
  store i32 %"add.86", ptr %"R9"
  ; MOV R15, 0x4
  store i32 4, ptr %"R15"
  ; LEA R14, R2.reuse, R9, 0x2
  %".1505" = load i32, ptr %"R2"
  %".1506" = load i32, ptr %"R9"
  %"shl.89" = shl i32 %".1505", 2
  %"add.87" = add i32 %"shl.89", %".1506"
  store i32 %"add.87", ptr %"R14"
  ; IMAD R12, R2, 0x3, R9
  %".1509" = load i32, ptr %"R2"
  %".1510" = load i32, ptr %"R9"
  %"mul.32" = mul i32 %".1509", 3
  %"add.88" = add i32 %"mul.32", %".1510"
  store i32 %"add.88", ptr %"R12"
  ; IMAD.WIDE R10, R11, R15, c[0x0][0x168]
  %".1513" = load i32, ptr %"R11"
  %".1514" = load i32, ptr %"R15"
  %"mul.33" = mul i32 %".1513", %".1514"
  %"add.89" = add i32 %"mul.33", %"Arg_3"
  store i32 %"add.89", ptr %"R10"
  ; IMAD.WIDE R12, R12, R15, c[0x0][0x170]
  %".1517" = load i32, ptr %"R12"
  %".1518" = load i32, ptr %"R15"
  %"mul.34" = mul i32 %".1517", %".1518"
  %"add.90" = add i32 %"mul.34", %"Arg_4"
  store i32 %"add.90", ptr %"R12"
  ; IMAD.WIDE R14, R14, R15, c[0x0][0x170]
  %".1521" = load i32, ptr %"R14"
  %".1522" = load i32, ptr %"R15"
  %"mul.35" = mul i32 %".1521", %".1522"
  %"add.91" = add i32 %"mul.35", %"Arg_4"
  store i32 %"add.91", ptr %"R14"
  ; LDG.E.SYS R17, [R10]
  %".1525" = load i32, ptr %"R10"
  %"zext.168" = zext i32 %".1525" to i64
  %".1526" = load i32, ptr %"R11"
  %"zext.169" = zext i32 %".1526" to i64
  %"shl.90" = shl i64 %"zext.169", 32
  %"or.84" = or i64 %"shl.90", %"zext.168"
  %".1527" = inttoptr i64 %"or.84" to ptr
  %".1528" = ptrtoint ptr %".1527" to i64
  %".1529" = add i64 %".1528", 0
  %"for_LDG.84" = inttoptr i64 %".1529" to ptr
  %".1530" = load float, ptr %"for_LDG.84"
  %".1531" = bitcast ptr %"R17" to ptr
  store float %".1530", ptr %".1531"
  ; LDG.E.SYS R9, [R12]
  %".1534" = load i32, ptr %"R12"
  %"zext.170" = zext i32 %".1534" to i64
  %".1535" = load i32, ptr %"R13"
  %"zext.171" = zext i32 %".1535" to i64
  %"shl.91" = shl i64 %"zext.171", 32
  %"or.85" = or i64 %"shl.91", %"zext.170"
  %".1536" = inttoptr i64 %"or.85" to ptr
  %".1537" = ptrtoint ptr %".1536" to i64
  %".1538" = add i64 %".1537", 0
  %"for_LDG.85" = inttoptr i64 %".1538" to ptr
  %".1539" = load float, ptr %"for_LDG.85"
  %".1540" = bitcast ptr %"R9" to ptr
  store float %".1539", ptr %".1540"
  ; LDG.E.SYS R16, [R14]
  %".1543" = load i32, ptr %"R14"
  %"zext.172" = zext i32 %".1543" to i64
  %".1544" = load i32, ptr %"R15"
  %"zext.173" = zext i32 %".1544" to i64
  %"shl.92" = shl i64 %"zext.173", 32
  %"or.86" = or i64 %"shl.92", %"zext.172"
  %".1545" = inttoptr i64 %"or.86" to ptr
  %".1546" = ptrtoint ptr %".1545" to i64
  %".1547" = add i64 %".1546", 0
  %"for_LDG.86" = inttoptr i64 %".1547" to ptr
  %".1548" = load float, ptr %"for_LDG.86"
  %".1549" = bitcast ptr %"R16" to ptr
  store float %".1548", ptr %".1549"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".1552" = load i32, ptr %"R4"
  %".1553" = load i1, ptr %"PT"
  %"cmp.13" = icmp ne i32 %".1552", 1
  %".1554" = and i1 %"cmp.13", %".1553"
  ; FFMA R52, R9, R17, R52
  %".1556" = load float, ptr %"R9"
  %".1557" = load float, ptr %"R17"
  %".1558" = load float, ptr %"R52"
  %"fmul.56" = fmul float %".1556", %".1557"
  %"fadd.56" = fadd float %"fmul.56", %".1558"
  %".1559" = bitcast ptr %"R52" to ptr
  store float %"fadd.56", ptr %".1559"
  ; FFMA R54, R17, R16, R54
  %".1562" = load float, ptr %"R17"
  %".1563" = load float, ptr %"R16"
  %".1564" = load float, ptr %"R54"
  %"fmul.57" = fmul float %".1562", %".1563"
  %"fadd.57" = fadd float %"fmul.57", %".1564"
  %".1565" = bitcast ptr %"R54" to ptr
  store float %"fadd.57", ptr %".1565"
  ; @!P0 BRA `(.L_x_1)
  %".1568" = load i1, ptr %"P0"
  %".1569" = icmp eq i1 %".1568", 1
  br i1 %".1569", label %".L_x_1", label %".L_x_2_split_0x1090"
.L_x_2_split_0x1090:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".1572" = load i32, ptr %"R4"
  %".1573" = load i1, ptr %"PT"
  %"cmp.14" = icmp ne i32 %".1572", 2
  %".1574" = and i1 %"cmp.14", %".1573"
  ; LDG.E.SYS R9, [R12+0x4]
  %".1576" = load i32, ptr %"R12"
  %"zext.174" = zext i32 %".1576" to i64
  %".1577" = load i32, ptr %"R13"
  %"zext.175" = zext i32 %".1577" to i64
  %"shl.93" = shl i64 %"zext.175", 32
  %"or.87" = or i64 %"shl.93", %"zext.174"
  %".1578" = inttoptr i64 %"or.87" to ptr
  %".1579" = ptrtoint ptr %".1578" to i64
  %".1580" = add i64 %".1579", 4
  %"for_LDG.87" = inttoptr i64 %".1580" to ptr
  %".1581" = load float, ptr %"for_LDG.87"
  %".1582" = bitcast ptr %"R9" to ptr
  store float %".1581", ptr %".1582"
  ; LDG.E.SYS R17, [R10+0x4]
  %".1585" = load i32, ptr %"R10"
  %"zext.176" = zext i32 %".1585" to i64
  %".1586" = load i32, ptr %"R11"
  %"zext.177" = zext i32 %".1586" to i64
  %"shl.94" = shl i64 %"zext.177", 32
  %"or.88" = or i64 %"shl.94", %"zext.176"
  %".1587" = inttoptr i64 %"or.88" to ptr
  %".1588" = ptrtoint ptr %".1587" to i64
  %".1589" = add i64 %".1588", 4
  %"for_LDG.88" = inttoptr i64 %".1589" to ptr
  %".1590" = load float, ptr %"for_LDG.88"
  %".1591" = bitcast ptr %"R17" to ptr
  store float %".1590", ptr %".1591"
  ; LDG.E.SYS R16, [R14+0x4]
  %".1594" = load i32, ptr %"R14"
  %"zext.178" = zext i32 %".1594" to i64
  %".1595" = load i32, ptr %"R15"
  %"zext.179" = zext i32 %".1595" to i64
  %"shl.95" = shl i64 %"zext.179", 32
  %"or.89" = or i64 %"shl.95", %"zext.178"
  %".1596" = inttoptr i64 %"or.89" to ptr
  %".1597" = ptrtoint ptr %".1596" to i64
  %".1598" = add i64 %".1597", 4
  %"for_LDG.89" = inttoptr i64 %".1598" to ptr
  %".1599" = load float, ptr %"for_LDG.89"
  %".1600" = bitcast ptr %"R16" to ptr
  store float %".1599", ptr %".1600"
  ; @P0 LDG.E.SYS R19, [R12+0x8]
  %".1603" = load i1, ptr %"P0"
  %".1604" = icmp ne i1 %".1603", 1
  br i1 %".1604", label %".L_x_2_split_0x1090_conditionalExpr_0x10d0", label %".L_x_2_split_0x10e0"
.L_x_2_split_0x1090_conditionalExpr_0x10d0:
  ; LDG.E.SYS R19, [R12+0x8]
  %".1607" = load i32, ptr %"R12"
  %"zext.180" = zext i32 %".1607" to i64
  %".1608" = load i32, ptr %"R13"
  %"zext.181" = zext i32 %".1608" to i64
  %"shl.96" = shl i64 %"zext.181", 32
  %"or.90" = or i64 %"shl.96", %"zext.180"
  %".1609" = inttoptr i64 %"or.90" to ptr
  %".1610" = ptrtoint ptr %".1609" to i64
  %".1611" = add i64 %".1610", 8
  %"for_LDG.90" = inttoptr i64 %".1611" to ptr
  %".1612" = load float, ptr %"for_LDG.90"
  %".1613" = bitcast ptr %"R19" to ptr
  store float %".1612", ptr %".1613"
  ; BRA `(.L_x_2_split_0x10e0)
  br label %".L_x_2_split_0x10e0"
.L_x_2_split_0x10e0:
  ; @P0 LDG.E.SYS R21, [R10+0x8]
  %".1618" = load i1, ptr %"P0"
  %".1619" = icmp ne i1 %".1618", 1
  br i1 %".1619", label %".L_x_2_split_0x10e0_conditionalExpr_0x10e0", label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10e0_conditionalExpr_0x10e0:
  ; LDG.E.SYS R21, [R10+0x8]
  %".1622" = load i32, ptr %"R10"
  %"zext.182" = zext i32 %".1622" to i64
  %".1623" = load i32, ptr %"R11"
  %"zext.183" = zext i32 %".1623" to i64
  %"shl.97" = shl i64 %"zext.183", 32
  %"or.91" = or i64 %"shl.97", %"zext.182"
  %".1624" = inttoptr i64 %"or.91" to ptr
  %".1625" = ptrtoint ptr %".1624" to i64
  %".1626" = add i64 %".1625", 8
  %"for_LDG.91" = inttoptr i64 %".1626" to ptr
  %".1627" = load float, ptr %"for_LDG.91"
  %".1628" = bitcast ptr %"R21" to ptr
  store float %".1627", ptr %".1628"
  ; BRA `(.L_x_2_split_0x10f0)
  br label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10f0:
  ; @P0 LDG.E.SYS R18, [R14+0x8]
  %".1633" = load i1, ptr %"P0"
  %".1634" = icmp ne i1 %".1633", 1
  br i1 %".1634", label %".L_x_2_split_0x10f0_conditionalExpr_0x10f0", label %".L_x_2_split_0x1100"
.L_x_2_split_0x10f0_conditionalExpr_0x10f0:
  ; LDG.E.SYS R18, [R14+0x8]
  %".1637" = load i32, ptr %"R14"
  %"zext.184" = zext i32 %".1637" to i64
  %".1638" = load i32, ptr %"R15"
  %"zext.185" = zext i32 %".1638" to i64
  %"shl.98" = shl i64 %"zext.185", 32
  %"or.92" = or i64 %"shl.98", %"zext.184"
  %".1639" = inttoptr i64 %"or.92" to ptr
  %".1640" = ptrtoint ptr %".1639" to i64
  %".1641" = add i64 %".1640", 8
  %"for_LDG.92" = inttoptr i64 %".1641" to ptr
  %".1642" = load float, ptr %"for_LDG.92"
  %".1643" = bitcast ptr %"R18" to ptr
  store float %".1642", ptr %".1643"
  ; BRA `(.L_x_2_split_0x1100)
  br label %".L_x_2_split_0x1100"
.L_x_2_split_0x1100:
  ; FFMA R52, R9, R17, R52
  %".1648" = load float, ptr %"R9"
  %".1649" = load float, ptr %"R17"
  %".1650" = load float, ptr %"R52"
  %"fmul.58" = fmul float %".1648", %".1649"
  %"fadd.58" = fadd float %"fmul.58", %".1650"
  %".1651" = bitcast ptr %"R52" to ptr
  store float %"fadd.58", ptr %".1651"
  ; FFMA R54, R17, R16, R54
  %".1654" = load float, ptr %"R17"
  %".1655" = load float, ptr %"R16"
  %".1656" = load float, ptr %"R54"
  %"fmul.59" = fmul float %".1654", %".1655"
  %"fadd.59" = fadd float %"fmul.59", %".1656"
  %".1657" = bitcast ptr %"R54" to ptr
  store float %"fadd.59", ptr %".1657"
  ; @P0 FFMA R52, R19, R21, R52
  %".1660" = load i1, ptr %"P0"
  %".1661" = icmp ne i1 %".1660", 1
  br i1 %".1661", label %".L_x_2_split_0x1100_conditionalExpr_0x1120", label %".L_x_2_split_0x1130"
.L_x_2_split_0x1100_conditionalExpr_0x1120:
  ; FFMA R52, R19, R21, R52
  %".1664" = load float, ptr %"R19"
  %".1665" = load float, ptr %"R21"
  %".1666" = load float, ptr %"R52"
  %"fmul.60" = fmul float %".1664", %".1665"
  %"fadd.60" = fadd float %"fmul.60", %".1666"
  %".1667" = bitcast ptr %"R52" to ptr
  store float %"fadd.60", ptr %".1667"
  ; BRA `(.L_x_2_split_0x1130)
  br label %".L_x_2_split_0x1130"
.L_x_2_split_0x1130:
  ; @P0 FFMA R54, R21, R18, R54
  %".1672" = load i1, ptr %"P0"
  %".1673" = icmp ne i1 %".1672", 1
  br i1 %".1673", label %".L_x_2_split_0x1130_conditionalExpr_0x1130", label %".L_x_1"
.L_x_2_split_0x1130_conditionalExpr_0x1130:
  ; FFMA R54, R21, R18, R54
  %".1676" = load float, ptr %"R21"
  %".1677" = load float, ptr %"R18"
  %".1678" = load float, ptr %"R54"
  %"fmul.61" = fmul float %".1676", %".1677"
  %"fadd.61" = fadd float %"fmul.61", %".1678"
  %".1679" = bitcast ptr %"R54" to ptr
  store float %"fadd.61", ptr %".1679"
  ; BRA `(.L_x_1)
  br label %".L_x_1"
.L_x_1:
  ; LDG.E.SYS R9, [R26]
  %".1684" = load i32, ptr %"R26"
  %"zext.186" = zext i32 %".1684" to i64
  %"zext.187" = zext i32 0 to i64
  %"shl.99" = shl i64 %"zext.187", 32
  %"or.93" = or i64 %"shl.99", %"zext.186"
  %".1685" = inttoptr i64 %"or.93" to ptr
  %".1686" = ptrtoint ptr %".1685" to i64
  %".1687" = add i64 %".1686", 0
  %"for_LDG.93" = inttoptr i64 %".1687" to ptr
  %".1688" = load float, ptr %"for_LDG.93"
  %".1689" = bitcast ptr %"R9" to ptr
  store float %".1688", ptr %".1689"
  ; MOV R10, 0x3bbb989d
  %".1692" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".1692"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R11, 0x437c0000
  %".1696" = bitcast ptr %"R11" to ptr
  store float 0x41d0df0000000000, ptr %".1696"
  ; BSSY B0, `(.L_x_7)
  ; FADD R9, R9, R52
  %".1700" = load float, ptr %"R9"
  %".1701" = load float, ptr %"R52"
  %"fadd.62" = fadd float %".1700", %".1701"
  %".1702" = bitcast ptr %"R9" to ptr
  store float %"fadd.62", ptr %".1702"
  ; FFMA.SAT R10, -R9, R10, 0.5
  %".1705" = load float, ptr %"R9"
  %".1706" = sub float              0x0, %".1705"
  %".1707" = load float, ptr %"R10"
  %"fmul.62" = fmul float %".1706", %".1707"
  %"fadd.63" = fadd float %"fmul.62", 0x3fe0000000000000
  %".1708" = bitcast ptr %"R10" to ptr
  store float %"fadd.63", ptr %".1708"
  ; FFMA.RM R10, R10, R11, 12582913
  %".1711" = load float, ptr %"R10"
  %".1712" = load float, ptr %"R11"
  %"fmul.63" = fmul float %".1711", %".1712"
  %"fadd.64" = fadd float %"fmul.63", 0x4168000020000000
  %".1713" = bitcast ptr %"R10" to ptr
  store float %"fadd.64", ptr %".1713"
  ; FADD R12, R10.reuse, -12583039
  %".1716" = load float, ptr %"R10"
  %"fadd.65" = fadd float %".1716", 0xc168000fe0000000
  %".1717" = bitcast ptr %"R12" to ptr
  store float %"fadd.65", ptr %".1717"
  ; SHF.L.U32 R10, R10, 0x17, RZ
  %".1720" = icmp ult i32 23, 32
  %"SHF_min" = select  i1 %".1720", i32 23, i32 32
  %".1721" = load i32, ptr %"R10"
  %"zext.188" = zext i32 0 to i64
  %"zext.189" = zext i32 %".1721" to i64
  %"zext.190" = zext i32 23 to i64
  %"shl.100" = shl i64 %"zext.188", 32
  %"or.94" = or i64 %"shl.100", %"zext.189"
  %"shl.101" = shl i64 %"or.94", %"zext.190"
  %"and" = and i64 %"shl.101", 4294967295
  %"trunc32" = trunc i64 %"and" to i32
  store i32 %"trunc32", ptr %"R10"
  ; FFMA R12, -R9, 1.4426950216293334961, -R12
  %".1724" = load float, ptr %"R9"
  %".1725" = sub float              0x0, %".1724"
  %".1726" = load float, ptr %"R12"
  %".1727" = sub float              0x0, %".1726"
  %"fmul.64" = fmul float %".1725", 0x3ff7154760000000
  %"fadd.66" = fadd float %"fmul.64", %".1727"
  %".1728" = bitcast ptr %"R12" to ptr
  store float %"fadd.66", ptr %".1728"
  ; FFMA R12, -R9, 1.925963033500011079e-08, R12
  %".1731" = load float, ptr %"R9"
  %".1732" = sub float              0x0, %".1731"
  %".1733" = load float, ptr %"R12"
  %"fmul.65" = fmul float %".1732", 0x3e54ae0c00000000
  %"fadd.67" = fadd float %"fmul.65", %".1733"
  %".1734" = bitcast ptr %"R12" to ptr
  store float %"fadd.67", ptr %".1734"
  ; MUFU.EX2 R9, R12
  %".1737" = load float, ptr %"R12"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1737")
  %".1738" = bitcast ptr %"R9" to ptr
  store float %"llvm_exp2_f32_result", ptr %".1738"
  ; FFMA R24, R10, R9, 1
  %".1741" = load float, ptr %"R10"
  %".1742" = load float, ptr %"R9"
  %"fmul.66" = fmul float %".1741", %".1742"
  %"fadd.68" = fadd float %"fmul.66", 0x3ff0000000000000
  %".1743" = bitcast ptr %"R24" to ptr
  store float %"fadd.68", ptr %".1743"
  ; IADD3 R9, R24, 0x1800000, RZ
  %".1746" = load i32, ptr %"R24"
  %"add.92" = add i32 %".1746", 25165824
  %"add.93" = add i32 %"add.92", 0
  store i32 %"add.93", ptr %"R9"
  ; LOP3.LUT R9, R9, 0x7f800000, RZ, 0xc0, !PT
  %".1749" = load i32, ptr %"R9"
  %".1750" = and i32 %".1749", 2139095040
  store i32 %".1750", ptr %"R9"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".1753" = load i32, ptr %"R9"
  %".1754" = load i1, ptr %"PT"
  %"cmp.15" = icmp sgt i32 %".1753", 33554431
  %".1755" = and i1 %"cmp.15", %".1754"
  ; @P0 BRA `(.L_x_8)
  %".1757" = load i1, ptr %"P0"
  %".1758" = icmp ne i1 %".1757", 1
  br i1 %".1758", label %".L_x_8", label %".L_x_1_split_0x1260"
.L_x_1_split_0x1260:
  ; MOV R10, 0x1280
  store i32 4736, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R9, R22
  %".1764" = load i32, ptr %"R22"
  store i32 %".1764", ptr %"R9"
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %".1769" = load float, ptr %"R24"
  %".1770" = fdiv float 0x3ff0000000000000, %".1769"
  %".1771" = bitcast ptr %"R9" to ptr
  store float %".1770", ptr %".1771"
  ; FFMA R10, R24, R9, -1
  %".1774" = load float, ptr %"R24"
  %".1775" = load float, ptr %"R9"
  %"fmul.67" = fmul float %".1774", %".1775"
  %"fadd.69" = fadd float %"fmul.67", 0xbff0000000000000
  %".1776" = bitcast ptr %"R10" to ptr
  store float %"fadd.69", ptr %".1776"
  ; FADD.FTZ R10, -R10, -RZ
  %".1779" = load float, ptr %"R10"
  %".1780" = sub float              0x0, %".1779"
  %"fadd.70" = fadd float %".1780",              0x0
  %".1781" = bitcast ptr %"R10" to ptr
  store float %"fadd.70", ptr %".1781"
  ; FFMA R9, R9, R10, R9
  %".1784" = load float, ptr %"R9"
  %".1785" = load float, ptr %"R10"
  %".1786" = load float, ptr %"R9"
  %"fmul.68" = fmul float %".1784", %".1785"
  %"fadd.71" = fadd float %"fmul.68", %".1786"
  %".1787" = bitcast ptr %"R9" to ptr
  store float %"fadd.71", ptr %".1787"
.L_x_9:
  ; BSYNC B0
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  %".1791" = load i32, ptr %"R32"
  %"zext.191" = zext i32 %".1791" to i64
  %".1792" = load i32, ptr %"R33"
  %"zext.192" = zext i32 %".1792" to i64
  %"shl.102" = shl i64 %"zext.192", 32
  %"or.95" = or i64 %"shl.102", %"zext.191"
  %".1793" = inttoptr i64 %"or.95" to ptr
  %".1794" = ptrtoint ptr %".1793" to i64
  %".1795" = add i64 %".1794", 0
  %"for_LDG.94" = inttoptr i64 %".1795" to ptr
  %".1796" = load float, ptr %"for_LDG.94"
  %".1797" = bitcast ptr %"R11" to ptr
  store float %".1796", ptr %".1797"
  ; MOV R10, 0x3bbb989d
  %".1800" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".1800"
  ; MOV R13, 0x437c0000
  %".1803" = bitcast ptr %"R13" to ptr
  store float 0x41d0df0000000000, ptr %".1803"
  ; FADD R11, R11, R54
  %".1806" = load float, ptr %"R11"
  %".1807" = load float, ptr %"R54"
  %"fadd.72" = fadd float %".1806", %".1807"
  %".1808" = bitcast ptr %"R11" to ptr
  store float %"fadd.72", ptr %".1808"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %".1811" = load float, ptr %"R11"
  %".1812" = sub float              0x0, %".1811"
  %".1813" = load float, ptr %"R10"
  %"fmul.69" = fmul float %".1812", %".1813"
  %"fadd.73" = fadd float %"fmul.69", 0x3fe0000000000000
  %".1814" = bitcast ptr %"R10" to ptr
  store float %"fadd.73", ptr %".1814"
  ; FFMA.RM R10, R10, R13, 12582913
  %".1817" = load float, ptr %"R10"
  %".1818" = load float, ptr %"R13"
  %"fmul.70" = fmul float %".1817", %".1818"
  %"fadd.74" = fadd float %"fmul.70", 0x4168000020000000
  %".1819" = bitcast ptr %"R10" to ptr
  store float %"fadd.74", ptr %".1819"
  ; FADD R12, R10.reuse, -12583039
  %".1822" = load float, ptr %"R10"
  %"fadd.75" = fadd float %".1822", 0xc168000fe0000000
  %".1823" = bitcast ptr %"R12" to ptr
  store float %"fadd.75", ptr %".1823"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".1826" = icmp ult i32 23, 32
  %"SHF_min.1" = select  i1 %".1826", i32 23, i32 32
  %".1827" = load i32, ptr %"R10"
  %"zext.193" = zext i32 0 to i64
  %"zext.194" = zext i32 %".1827" to i64
  %"zext.195" = zext i32 23 to i64
  %"shl.103" = shl i64 %"zext.193", 32
  %"or.96" = or i64 %"shl.103", %"zext.194"
  %"shl.104" = shl i64 %"or.96", %"zext.195"
  %"and.1" = and i64 %"shl.104", 4294967295
  %"trunc32.1" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.1", ptr %"R20"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %".1830" = load float, ptr %"R11"
  %".1831" = sub float              0x0, %".1830"
  %".1832" = load float, ptr %"R12"
  %".1833" = sub float              0x0, %".1832"
  %"fmul.71" = fmul float %".1831", 0x3ff7154760000000
  %"fadd.76" = fadd float %"fmul.71", %".1833"
  %".1834" = bitcast ptr %"R12" to ptr
  store float %"fadd.76", ptr %".1834"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %".1837" = load float, ptr %"R11"
  %".1838" = sub float              0x0, %".1837"
  %".1839" = load float, ptr %"R12"
  %"fmul.72" = fmul float %".1838", 0x3e54ae0c00000000
  %"fadd.77" = fadd float %"fmul.72", %".1839"
  %".1840" = bitcast ptr %"R12" to ptr
  store float %"fadd.77", ptr %".1840"
  ; MUFU.EX2 R11, R12
  %".1843" = load float, ptr %"R12"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".1843")
  %".1844" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result.1", ptr %".1844"
  ; FFMA R20, R20, R11, 1
  %".1847" = load float, ptr %"R20"
  %".1848" = load float, ptr %"R11"
  %"fmul.73" = fmul float %".1847", %".1848"
  %"fadd.78" = fadd float %"fmul.73", 0x3ff0000000000000
  %".1849" = bitcast ptr %"R20" to ptr
  store float %"fadd.78", ptr %".1849"
  ; @!P4 BRA `(.L_x_10)
  %".1852" = load i1, ptr %"P4"
  %".1853" = icmp eq i1 %".1852", 1
  br i1 %".1853", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".1856" = load i32, ptr %"R5"
  %".1857" = load i1, ptr %"PT"
  %"cmp.16" = icmp sge i32 %".1856", 3
  %".1858" = and i1 %"cmp.16", %".1857"
  ; MOV R8, RZ
  %".1860" = load float, ptr %"RZ"
  %".1861" = bitcast ptr %"R8" to ptr
  store float %".1860", ptr %".1861"
  ; MOV R22, RZ
  %".1864" = load i32, ptr %"RZ"
  store i32 %".1864", ptr %"R22"
  ; @!P0 BRA `(.L_x_11)
  %".1867" = load i1, ptr %"P0"
  %".1868" = icmp eq i1 %".1867", 1
  br i1 %".1868", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".1871" = load i32, ptr %"R7"
  %".1872" = load i1, ptr %"PT"
  %"cmp.17" = icmp sgt i32 %".1871", 0
  %".1873" = and i1 %"cmp.17", %".1872"
  ; MOV R8, RZ
  %".1875" = load float, ptr %"RZ"
  %".1876" = bitcast ptr %"R8" to ptr
  store float %".1875", ptr %".1876"
  ; MOV R22, RZ
  %".1879" = load i32, ptr %"RZ"
  store i32 %".1879", ptr %"R22"
  ; MOV R23, R7
  %".1882" = load i32, ptr %"R7"
  store i32 %".1882", ptr %"R23"
  ; @!P0 BRA `(.L_x_12)
  %".1885" = load i1, ptr %"P0"
  %".1886" = icmp eq i1 %".1885", 1
  br i1 %".1886", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".1889" = load i32, ptr %"R23"
  %".1890" = load i1, ptr %"PT"
  %"cmp.18" = icmp sgt i32 %".1889", 12
  %".1891" = and i1 %"cmp.18", %".1890"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".1893" = and i1 1, 1
  %".1894" = or i1 %".1893", 1
  ; @!P1 BRA `(.L_x_13)
  %".1896" = load i1, ptr %"P1"
  %".1897" = icmp eq i1 %".1896", 1
  br i1 %".1897", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1900" = xor i1 1, 1
  %".1901" = and i1 %".1900", 1
  %".1902" = and i1 %".1901", 1
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, ptr %"R49"
  ; IADD3 R16, R3, R22, RZ
  %".1906" = load i32, ptr %"R3"
  %".1907" = load i32, ptr %"R22"
  %"add.94" = add i32 %".1906", %".1907"
  %"add.95" = add i32 %"add.94", 0
  store i32 %"add.95", ptr %"R16"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".1910" = load i32, ptr %"R22"
  %".1911" = load i32, ptr %"R49"
  %"mul.36" = mul i32 %".1910", %".1911"
  %"add.96" = add i32 %"mul.36", %"Arg_3"
  store i32 %"add.96", ptr %"R12"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".1914" = load i32, ptr %"R16"
  %".1915" = load i32, ptr %"R49"
  %"mul.37" = mul i32 %".1914", %".1915"
  %"add.97" = add i32 %"mul.37", %"Arg_4"
  store i32 %"add.97", ptr %"R16"
  ; IADD3 R18, R22, 0x4, RZ
  %".1918" = load i32, ptr %"R22"
  %"add.98" = add i32 %".1918", 4
  %"add.99" = add i32 %"add.98", 0
  store i32 %"add.99", ptr %"R18"
  ; LDG.E.SYS R24, [R12]
  %".1921" = load i32, ptr %"R12"
  %"zext.196" = zext i32 %".1921" to i64
  %".1922" = load i32, ptr %"R13"
  %"zext.197" = zext i32 %".1922" to i64
  %"shl.105" = shl i64 %"zext.197", 32
  %"or.97" = or i64 %"shl.105", %"zext.196"
  %".1923" = inttoptr i64 %"or.97" to ptr
  %".1924" = ptrtoint ptr %".1923" to i64
  %".1925" = add i64 %".1924", 0
  %"for_LDG.95" = inttoptr i64 %".1925" to ptr
  %".1926" = load float, ptr %"for_LDG.95"
  %".1927" = bitcast ptr %"R24" to ptr
  store float %".1926", ptr %".1927"
  ; IADD3 R14, R3, R18, RZ
  %".1930" = load i32, ptr %"R3"
  %".1931" = load i32, ptr %"R18"
  %"add.100" = add i32 %".1930", %".1931"
  %"add.101" = add i32 %"add.100", 0
  store i32 %"add.101", ptr %"R14"
  ; LDG.E.SYS R21, [R16]
  %".1934" = load i32, ptr %"R16"
  %"zext.198" = zext i32 %".1934" to i64
  %".1935" = load i32, ptr %"R17"
  %"zext.199" = zext i32 %".1935" to i64
  %"shl.106" = shl i64 %"zext.199", 32
  %"or.98" = or i64 %"shl.106", %"zext.198"
  %".1936" = inttoptr i64 %"or.98" to ptr
  %".1937" = ptrtoint ptr %".1936" to i64
  %".1938" = add i64 %".1937", 0
  %"for_LDG.96" = inttoptr i64 %".1938" to ptr
  %".1939" = load float, ptr %"for_LDG.96"
  %".1940" = bitcast ptr %"R21" to ptr
  store float %".1939", ptr %".1940"
  ; LDG.E.SYS R36, [R12+0x4]
  %".1943" = load i32, ptr %"R12"
  %"zext.200" = zext i32 %".1943" to i64
  %".1944" = load i32, ptr %"R13"
  %"zext.201" = zext i32 %".1944" to i64
  %"shl.107" = shl i64 %"zext.201", 32
  %"or.99" = or i64 %"shl.107", %"zext.200"
  %".1945" = inttoptr i64 %"or.99" to ptr
  %".1946" = ptrtoint ptr %".1945" to i64
  %".1947" = add i64 %".1946", 4
  %"for_LDG.97" = inttoptr i64 %".1947" to ptr
  %".1948" = load float, ptr %"for_LDG.97"
  %".1949" = bitcast ptr %"R36" to ptr
  store float %".1948", ptr %".1949"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".1952" = load i32, ptr %"R18"
  %".1953" = load i32, ptr %"R49"
  %"mul.38" = mul i32 %".1952", %".1953"
  %"add.102" = add i32 %"mul.38", %"Arg_3"
  store i32 %"add.102", ptr %"R18"
  ; LDG.E.SYS R25, [R16+0x4]
  %".1956" = load i32, ptr %"R16"
  %"zext.202" = zext i32 %".1956" to i64
  %".1957" = load i32, ptr %"R17"
  %"zext.203" = zext i32 %".1957" to i64
  %"shl.108" = shl i64 %"zext.203", 32
  %"or.100" = or i64 %"shl.108", %"zext.202"
  %".1958" = inttoptr i64 %"or.100" to ptr
  %".1959" = ptrtoint ptr %".1958" to i64
  %".1960" = add i64 %".1959", 4
  %"for_LDG.98" = inttoptr i64 %".1960" to ptr
  %".1961" = load float, ptr %"for_LDG.98"
  %".1962" = bitcast ptr %"R25" to ptr
  store float %".1961", ptr %".1962"
  ; LDG.E.SYS R46, [R12+0x8]
  %".1965" = load i32, ptr %"R12"
  %"zext.204" = zext i32 %".1965" to i64
  %".1966" = load i32, ptr %"R13"
  %"zext.205" = zext i32 %".1966" to i64
  %"shl.109" = shl i64 %"zext.205", 32
  %"or.101" = or i64 %"shl.109", %"zext.204"
  %".1967" = inttoptr i64 %"or.101" to ptr
  %".1968" = ptrtoint ptr %".1967" to i64
  %".1969" = add i64 %".1968", 8
  %"for_LDG.99" = inttoptr i64 %".1969" to ptr
  %".1970" = load float, ptr %"for_LDG.99"
  %".1971" = bitcast ptr %"R46" to ptr
  store float %".1970", ptr %".1971"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".1974" = load i32, ptr %"R14"
  %".1975" = load i32, ptr %"R49"
  %"mul.39" = mul i32 %".1974", %".1975"
  %"add.103" = add i32 %"mul.39", %"Arg_4"
  store i32 %"add.103", ptr %"R14"
  ; LDG.E.SYS R34, [R16+0x8]
  %".1978" = load i32, ptr %"R16"
  %"zext.206" = zext i32 %".1978" to i64
  %".1979" = load i32, ptr %"R17"
  %"zext.207" = zext i32 %".1979" to i64
  %"shl.110" = shl i64 %"zext.207", 32
  %"or.102" = or i64 %"shl.110", %"zext.206"
  %".1980" = inttoptr i64 %"or.102" to ptr
  %".1981" = ptrtoint ptr %".1980" to i64
  %".1982" = add i64 %".1981", 8
  %"for_LDG.100" = inttoptr i64 %".1982" to ptr
  %".1983" = load float, ptr %"for_LDG.100"
  %".1984" = bitcast ptr %"R34" to ptr
  store float %".1983", ptr %".1984"
  ; LDG.E.SYS R44, [R12+0xc]
  %".1987" = load i32, ptr %"R12"
  %"zext.208" = zext i32 %".1987" to i64
  %".1988" = load i32, ptr %"R13"
  %"zext.209" = zext i32 %".1988" to i64
  %"shl.111" = shl i64 %"zext.209", 32
  %"or.103" = or i64 %"shl.111", %"zext.208"
  %".1989" = inttoptr i64 %"or.103" to ptr
  %".1990" = ptrtoint ptr %".1989" to i64
  %".1991" = add i64 %".1990", 12
  %"for_LDG.101" = inttoptr i64 %".1991" to ptr
  %".1992" = load float, ptr %"for_LDG.101"
  %".1993" = bitcast ptr %"R44" to ptr
  store float %".1992", ptr %".1993"
  ; IADD3 R10, R22, 0x8, RZ
  %".1996" = load i32, ptr %"R22"
  %"add.104" = add i32 %".1996", 8
  %"add.105" = add i32 %"add.104", 0
  store i32 %"add.105", ptr %"R10"
  ; LDG.E.SYS R41, [R16+0xc]
  %".1999" = load i32, ptr %"R16"
  %"zext.210" = zext i32 %".1999" to i64
  %".2000" = load i32, ptr %"R17"
  %"zext.211" = zext i32 %".2000" to i64
  %"shl.112" = shl i64 %"zext.211", 32
  %"or.104" = or i64 %"shl.112", %"zext.210"
  %".2001" = inttoptr i64 %"or.104" to ptr
  %".2002" = ptrtoint ptr %".2001" to i64
  %".2003" = add i64 %".2002", 12
  %"for_LDG.102" = inttoptr i64 %".2003" to ptr
  %".2004" = load float, ptr %"for_LDG.102"
  %".2005" = bitcast ptr %"R41" to ptr
  store float %".2004", ptr %".2005"
  ; LDG.E.SYS R42, [R18]
  %".2008" = load i32, ptr %"R18"
  %"zext.212" = zext i32 %".2008" to i64
  %".2009" = load i32, ptr %"R19"
  %"zext.213" = zext i32 %".2009" to i64
  %"shl.113" = shl i64 %"zext.213", 32
  %"or.105" = or i64 %"shl.113", %"zext.212"
  %".2010" = inttoptr i64 %"or.105" to ptr
  %".2011" = ptrtoint ptr %".2010" to i64
  %".2012" = add i64 %".2011", 0
  %"for_LDG.103" = inttoptr i64 %".2012" to ptr
  %".2013" = load float, ptr %"for_LDG.103"
  %".2014" = bitcast ptr %"R42" to ptr
  store float %".2013", ptr %".2014"
  ; IADD3 R50, R3, R10, RZ
  %".2017" = load i32, ptr %"R3"
  %".2018" = load i32, ptr %"R10"
  %"add.106" = add i32 %".2017", %".2018"
  %"add.107" = add i32 %"add.106", 0
  store i32 %"add.107", ptr %"R50"
  ; LDG.E.SYS R39, [R14]
  %".2021" = load i32, ptr %"R14"
  %"zext.214" = zext i32 %".2021" to i64
  %".2022" = load i32, ptr %"R15"
  %"zext.215" = zext i32 %".2022" to i64
  %"shl.114" = shl i64 %"zext.215", 32
  %"or.106" = or i64 %"shl.114", %"zext.214"
  %".2023" = inttoptr i64 %"or.106" to ptr
  %".2024" = ptrtoint ptr %".2023" to i64
  %".2025" = add i64 %".2024", 0
  %"for_LDG.104" = inttoptr i64 %".2025" to ptr
  %".2026" = load float, ptr %"for_LDG.104"
  %".2027" = bitcast ptr %"R39" to ptr
  store float %".2026", ptr %".2027"
  ; LDG.E.SYS R40, [R18+0x4]
  %".2030" = load i32, ptr %"R18"
  %"zext.216" = zext i32 %".2030" to i64
  %".2031" = load i32, ptr %"R19"
  %"zext.217" = zext i32 %".2031" to i64
  %"shl.115" = shl i64 %"zext.217", 32
  %"or.107" = or i64 %"shl.115", %"zext.216"
  %".2032" = inttoptr i64 %"or.107" to ptr
  %".2033" = ptrtoint ptr %".2032" to i64
  %".2034" = add i64 %".2033", 4
  %"for_LDG.105" = inttoptr i64 %".2034" to ptr
  %".2035" = load float, ptr %"for_LDG.105"
  %".2036" = bitcast ptr %"R40" to ptr
  store float %".2035", ptr %".2036"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".2039" = load i32, ptr %"R10"
  %".2040" = load i32, ptr %"R49"
  %"mul.40" = mul i32 %".2039", %".2040"
  %"add.108" = add i32 %"mul.40", %"Arg_3"
  store i32 %"add.108", ptr %"R10"
  ; LDG.E.SYS R37, [R14+0x4]
  %".2043" = load i32, ptr %"R14"
  %"zext.218" = zext i32 %".2043" to i64
  %".2044" = load i32, ptr %"R15"
  %"zext.219" = zext i32 %".2044" to i64
  %"shl.116" = shl i64 %"zext.219", 32
  %"or.108" = or i64 %"shl.116", %"zext.218"
  %".2045" = inttoptr i64 %"or.108" to ptr
  %".2046" = ptrtoint ptr %".2045" to i64
  %".2047" = add i64 %".2046", 4
  %"for_LDG.106" = inttoptr i64 %".2047" to ptr
  %".2048" = load float, ptr %"for_LDG.106"
  %".2049" = bitcast ptr %"R37" to ptr
  store float %".2048", ptr %".2049"
  ; LDG.E.SYS R38, [R18+0x8]
  %".2052" = load i32, ptr %"R18"
  %"zext.220" = zext i32 %".2052" to i64
  %".2053" = load i32, ptr %"R19"
  %"zext.221" = zext i32 %".2053" to i64
  %"shl.117" = shl i64 %"zext.221", 32
  %"or.109" = or i64 %"shl.117", %"zext.220"
  %".2054" = inttoptr i64 %"or.109" to ptr
  %".2055" = ptrtoint ptr %".2054" to i64
  %".2056" = add i64 %".2055", 8
  %"for_LDG.107" = inttoptr i64 %".2056" to ptr
  %".2057" = load float, ptr %"for_LDG.107"
  %".2058" = bitcast ptr %"R38" to ptr
  store float %".2057", ptr %".2058"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".2061" = load i32, ptr %"R50"
  %".2062" = load i32, ptr %"R49"
  %"mul.41" = mul i32 %".2061", %".2062"
  %"add.109" = add i32 %"mul.41", %"Arg_4"
  store i32 %"add.109", ptr %"R12"
  ; LDG.E.SYS R35, [R14+0x8]
  %".2065" = load i32, ptr %"R14"
  %"zext.222" = zext i32 %".2065" to i64
  %".2066" = load i32, ptr %"R15"
  %"zext.223" = zext i32 %".2066" to i64
  %"shl.118" = shl i64 %"zext.223", 32
  %"or.110" = or i64 %"shl.118", %"zext.222"
  %".2067" = inttoptr i64 %"or.110" to ptr
  %".2068" = ptrtoint ptr %".2067" to i64
  %".2069" = add i64 %".2068", 8
  %"for_LDG.108" = inttoptr i64 %".2069" to ptr
  %".2070" = load float, ptr %"for_LDG.108"
  %".2071" = bitcast ptr %"R35" to ptr
  store float %".2070", ptr %".2071"
  ; LDG.E.SYS R48, [R18+0xc]
  %".2074" = load i32, ptr %"R18"
  %"zext.224" = zext i32 %".2074" to i64
  %".2075" = load i32, ptr %"R19"
  %"zext.225" = zext i32 %".2075" to i64
  %"shl.119" = shl i64 %"zext.225", 32
  %"or.111" = or i64 %"shl.119", %"zext.224"
  %".2076" = inttoptr i64 %"or.111" to ptr
  %".2077" = ptrtoint ptr %".2076" to i64
  %".2078" = add i64 %".2077", 12
  %"for_LDG.109" = inttoptr i64 %".2078" to ptr
  %".2079" = load float, ptr %"for_LDG.109"
  %".2080" = bitcast ptr %"R48" to ptr
  store float %".2079", ptr %".2080"
  ; IADD3 R16, R22, 0xc, RZ
  %".2083" = load i32, ptr %"R22"
  %"add.110" = add i32 %".2083", 12
  %"add.111" = add i32 %"add.110", 0
  store i32 %"add.111", ptr %"R16"
  ; LDG.E.SYS R47, [R14+0xc]
  %".2086" = load i32, ptr %"R14"
  %"zext.226" = zext i32 %".2086" to i64
  %".2087" = load i32, ptr %"R15"
  %"zext.227" = zext i32 %".2087" to i64
  %"shl.120" = shl i64 %"zext.227", 32
  %"or.112" = or i64 %"shl.120", %"zext.226"
  %".2088" = inttoptr i64 %"or.112" to ptr
  %".2089" = ptrtoint ptr %".2088" to i64
  %".2090" = add i64 %".2089", 12
  %"for_LDG.110" = inttoptr i64 %".2090" to ptr
  %".2091" = load float, ptr %"for_LDG.110"
  %".2092" = bitcast ptr %"R47" to ptr
  store float %".2091", ptr %".2092"
  ; LDG.E.SYS R54, [R10]
  %".2095" = load i32, ptr %"R10"
  %"zext.228" = zext i32 %".2095" to i64
  %".2096" = load i32, ptr %"R11"
  %"zext.229" = zext i32 %".2096" to i64
  %"shl.121" = shl i64 %"zext.229", 32
  %"or.113" = or i64 %"shl.121", %"zext.228"
  %".2097" = inttoptr i64 %"or.113" to ptr
  %".2098" = ptrtoint ptr %".2097" to i64
  %".2099" = add i64 %".2098", 0
  %"for_LDG.111" = inttoptr i64 %".2099" to ptr
  %".2100" = load float, ptr %"for_LDG.111"
  %".2101" = bitcast ptr %"R54" to ptr
  store float %".2100", ptr %".2101"
  ; IADD3 R58, R3, R16, RZ
  %".2104" = load i32, ptr %"R3"
  %".2105" = load i32, ptr %"R16"
  %"add.112" = add i32 %".2104", %".2105"
  %"add.113" = add i32 %"add.112", 0
  store i32 %"add.113", ptr %"R58"
  ; LDG.E.SYS R45, [R12]
  %".2108" = load i32, ptr %"R12"
  %"zext.230" = zext i32 %".2108" to i64
  %".2109" = load i32, ptr %"R13"
  %"zext.231" = zext i32 %".2109" to i64
  %"shl.122" = shl i64 %"zext.231", 32
  %"or.114" = or i64 %"shl.122", %"zext.230"
  %".2110" = inttoptr i64 %"or.114" to ptr
  %".2111" = ptrtoint ptr %".2110" to i64
  %".2112" = add i64 %".2111", 0
  %"for_LDG.112" = inttoptr i64 %".2112" to ptr
  %".2113" = load float, ptr %"for_LDG.112"
  %".2114" = bitcast ptr %"R45" to ptr
  store float %".2113", ptr %".2114"
  ; LDG.E.SYS R52, [R10+0x4]
  %".2117" = load i32, ptr %"R10"
  %"zext.232" = zext i32 %".2117" to i64
  %".2118" = load i32, ptr %"R11"
  %"zext.233" = zext i32 %".2118" to i64
  %"shl.123" = shl i64 %"zext.233", 32
  %"or.115" = or i64 %"shl.123", %"zext.232"
  %".2119" = inttoptr i64 %"or.115" to ptr
  %".2120" = ptrtoint ptr %".2119" to i64
  %".2121" = add i64 %".2120", 4
  %"for_LDG.113" = inttoptr i64 %".2121" to ptr
  %".2122" = load float, ptr %"for_LDG.113"
  %".2123" = bitcast ptr %"R52" to ptr
  store float %".2122", ptr %".2123"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".2126" = load i32, ptr %"R16"
  %".2127" = load i32, ptr %"R49"
  %"mul.42" = mul i32 %".2126", %".2127"
  %"add.114" = add i32 %"mul.42", %"Arg_3"
  store i32 %"add.114", ptr %"R16"
  ; LDG.E.SYS R43, [R12+0x4]
  %".2130" = load i32, ptr %"R12"
  %"zext.234" = zext i32 %".2130" to i64
  %".2131" = load i32, ptr %"R13"
  %"zext.235" = zext i32 %".2131" to i64
  %"shl.124" = shl i64 %"zext.235", 32
  %"or.116" = or i64 %"shl.124", %"zext.234"
  %".2132" = inttoptr i64 %"or.116" to ptr
  %".2133" = ptrtoint ptr %".2132" to i64
  %".2134" = add i64 %".2133", 4
  %"for_LDG.114" = inttoptr i64 %".2134" to ptr
  %".2135" = load float, ptr %"for_LDG.114"
  %".2136" = bitcast ptr %"R43" to ptr
  store float %".2135", ptr %".2136"
  ; LDG.E.SYS R50, [R10+0x8]
  %".2139" = load i32, ptr %"R10"
  %"zext.236" = zext i32 %".2139" to i64
  %".2140" = load i32, ptr %"R11"
  %"zext.237" = zext i32 %".2140" to i64
  %"shl.125" = shl i64 %"zext.237", 32
  %"or.117" = or i64 %"shl.125", %"zext.236"
  %".2141" = inttoptr i64 %"or.117" to ptr
  %".2142" = ptrtoint ptr %".2141" to i64
  %".2143" = add i64 %".2142", 8
  %"for_LDG.115" = inttoptr i64 %".2143" to ptr
  %".2144" = load float, ptr %"for_LDG.115"
  %".2145" = bitcast ptr %"R50" to ptr
  store float %".2144", ptr %".2145"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".2148" = load i32, ptr %"R58"
  %".2149" = load i32, ptr %"R49"
  %"mul.43" = mul i32 %".2148", %".2149"
  %"add.115" = add i32 %"mul.43", %"Arg_4"
  store i32 %"add.115", ptr %"R14"
  ; LDG.E.SYS R18, [R12+0x8]
  %".2152" = load i32, ptr %"R12"
  %"zext.238" = zext i32 %".2152" to i64
  %".2153" = load i32, ptr %"R13"
  %"zext.239" = zext i32 %".2153" to i64
  %"shl.126" = shl i64 %"zext.239", 32
  %"or.118" = or i64 %"shl.126", %"zext.238"
  %".2154" = inttoptr i64 %"or.118" to ptr
  %".2155" = ptrtoint ptr %".2154" to i64
  %".2156" = add i64 %".2155", 8
  %"for_LDG.116" = inttoptr i64 %".2156" to ptr
  %".2157" = load float, ptr %"for_LDG.116"
  %".2158" = bitcast ptr %"R18" to ptr
  store float %".2157", ptr %".2158"
  ; LDG.E.SYS R56, [R10+0xc]
  %".2161" = load i32, ptr %"R10"
  %"zext.240" = zext i32 %".2161" to i64
  %".2162" = load i32, ptr %"R11"
  %"zext.241" = zext i32 %".2162" to i64
  %"shl.127" = shl i64 %"zext.241", 32
  %"or.119" = or i64 %"shl.127", %"zext.240"
  %".2163" = inttoptr i64 %"or.119" to ptr
  %".2164" = ptrtoint ptr %".2163" to i64
  %".2165" = add i64 %".2164", 12
  %"for_LDG.117" = inttoptr i64 %".2165" to ptr
  %".2166" = load float, ptr %"for_LDG.117"
  %".2167" = bitcast ptr %"R56" to ptr
  store float %".2166", ptr %".2167"
  ; LDG.E.SYS R55, [R12+0xc]
  %".2170" = load i32, ptr %"R12"
  %"zext.242" = zext i32 %".2170" to i64
  %".2171" = load i32, ptr %"R13"
  %"zext.243" = zext i32 %".2171" to i64
  %"shl.128" = shl i64 %"zext.243", 32
  %"or.120" = or i64 %"shl.128", %"zext.242"
  %".2172" = inttoptr i64 %"or.120" to ptr
  %".2173" = ptrtoint ptr %".2172" to i64
  %".2174" = add i64 %".2173", 12
  %"for_LDG.118" = inttoptr i64 %".2174" to ptr
  %".2175" = load float, ptr %"for_LDG.118"
  %".2176" = bitcast ptr %"R55" to ptr
  store float %".2175", ptr %".2176"
  ; LDG.E.SYS R51, [R16]
  %".2179" = load i32, ptr %"R16"
  %"zext.244" = zext i32 %".2179" to i64
  %".2180" = load i32, ptr %"R17"
  %"zext.245" = zext i32 %".2180" to i64
  %"shl.129" = shl i64 %"zext.245", 32
  %"or.121" = or i64 %"shl.129", %"zext.244"
  %".2181" = inttoptr i64 %"or.121" to ptr
  %".2182" = ptrtoint ptr %".2181" to i64
  %".2183" = add i64 %".2182", 0
  %"for_LDG.119" = inttoptr i64 %".2183" to ptr
  %".2184" = load float, ptr %"for_LDG.119"
  %".2185" = bitcast ptr %"R51" to ptr
  store float %".2184", ptr %".2185"
  ; LDG.E.SYS R53, [R14]
  %".2188" = load i32, ptr %"R14"
  %"zext.246" = zext i32 %".2188" to i64
  %".2189" = load i32, ptr %"R15"
  %"zext.247" = zext i32 %".2189" to i64
  %"shl.130" = shl i64 %"zext.247", 32
  %"or.122" = or i64 %"shl.130", %"zext.246"
  %".2190" = inttoptr i64 %"or.122" to ptr
  %".2191" = ptrtoint ptr %".2190" to i64
  %".2192" = add i64 %".2191", 0
  %"for_LDG.120" = inttoptr i64 %".2192" to ptr
  %".2193" = load float, ptr %"for_LDG.120"
  %".2194" = bitcast ptr %"R53" to ptr
  store float %".2193", ptr %".2194"
  ; LDG.E.SYS R60, [R16+0x4]
  %".2197" = load i32, ptr %"R16"
  %"zext.248" = zext i32 %".2197" to i64
  %".2198" = load i32, ptr %"R17"
  %"zext.249" = zext i32 %".2198" to i64
  %"shl.131" = shl i64 %"zext.249", 32
  %"or.123" = or i64 %"shl.131", %"zext.248"
  %".2199" = inttoptr i64 %"or.123" to ptr
  %".2200" = ptrtoint ptr %".2199" to i64
  %".2201" = add i64 %".2200", 4
  %"for_LDG.121" = inttoptr i64 %".2201" to ptr
  %".2202" = load float, ptr %"for_LDG.121"
  %".2203" = bitcast ptr %"R60" to ptr
  store float %".2202", ptr %".2203"
  ; LDG.E.SYS R49, [R14+0x4]
  %".2206" = load i32, ptr %"R14"
  %"zext.250" = zext i32 %".2206" to i64
  %".2207" = load i32, ptr %"R15"
  %"zext.251" = zext i32 %".2207" to i64
  %"shl.132" = shl i64 %"zext.251", 32
  %"or.124" = or i64 %"shl.132", %"zext.250"
  %".2208" = inttoptr i64 %"or.124" to ptr
  %".2209" = ptrtoint ptr %".2208" to i64
  %".2210" = add i64 %".2209", 4
  %"for_LDG.122" = inttoptr i64 %".2210" to ptr
  %".2211" = load float, ptr %"for_LDG.122"
  %".2212" = bitcast ptr %"R49" to ptr
  store float %".2211", ptr %".2212"
  ; LDG.E.SYS R58, [R16+0x8]
  %".2215" = load i32, ptr %"R16"
  %"zext.252" = zext i32 %".2215" to i64
  %".2216" = load i32, ptr %"R17"
  %"zext.253" = zext i32 %".2216" to i64
  %"shl.133" = shl i64 %"zext.253", 32
  %"or.125" = or i64 %"shl.133", %"zext.252"
  %".2217" = inttoptr i64 %"or.125" to ptr
  %".2218" = ptrtoint ptr %".2217" to i64
  %".2219" = add i64 %".2218", 8
  %"for_LDG.123" = inttoptr i64 %".2219" to ptr
  %".2220" = load float, ptr %"for_LDG.123"
  %".2221" = bitcast ptr %"R58" to ptr
  store float %".2220", ptr %".2221"
  ; LDG.E.SYS R19, [R14+0x8]
  %".2224" = load i32, ptr %"R14"
  %"zext.254" = zext i32 %".2224" to i64
  %".2225" = load i32, ptr %"R15"
  %"zext.255" = zext i32 %".2225" to i64
  %"shl.134" = shl i64 %"zext.255", 32
  %"or.126" = or i64 %"shl.134", %"zext.254"
  %".2226" = inttoptr i64 %"or.126" to ptr
  %".2227" = ptrtoint ptr %".2226" to i64
  %".2228" = add i64 %".2227", 8
  %"for_LDG.124" = inttoptr i64 %".2228" to ptr
  %".2229" = load float, ptr %"for_LDG.124"
  %".2230" = bitcast ptr %"R19" to ptr
  store float %".2229", ptr %".2230"
  ; LDG.E.SYS R57, [R16+0xc]
  %".2233" = load i32, ptr %"R16"
  %"zext.256" = zext i32 %".2233" to i64
  %".2234" = load i32, ptr %"R17"
  %"zext.257" = zext i32 %".2234" to i64
  %"shl.135" = shl i64 %"zext.257", 32
  %"or.127" = or i64 %"shl.135", %"zext.256"
  %".2235" = inttoptr i64 %"or.127" to ptr
  %".2236" = ptrtoint ptr %".2235" to i64
  %".2237" = add i64 %".2236", 12
  %"for_LDG.125" = inttoptr i64 %".2237" to ptr
  %".2238" = load float, ptr %"for_LDG.125"
  %".2239" = bitcast ptr %"R57" to ptr
  store float %".2238", ptr %".2239"
  ; LDG.E.SYS R59, [R14+0xc]
  %".2242" = load i32, ptr %"R14"
  %"zext.258" = zext i32 %".2242" to i64
  %".2243" = load i32, ptr %"R15"
  %"zext.259" = zext i32 %".2243" to i64
  %"shl.136" = shl i64 %"zext.259", 32
  %"or.128" = or i64 %"shl.136", %"zext.258"
  %".2244" = inttoptr i64 %"or.128" to ptr
  %".2245" = ptrtoint ptr %".2244" to i64
  %".2246" = add i64 %".2245", 12
  %"for_LDG.126" = inttoptr i64 %".2246" to ptr
  %".2247" = load float, ptr %"for_LDG.126"
  %".2248" = bitcast ptr %"R59" to ptr
  store float %".2247", ptr %".2248"
  ; IADD3 R23, R23, -0x10, RZ
  %".2251" = load i32, ptr %"R23"
  %"add.116" = add i32 %".2251", -16
  %"add.117" = add i32 %"add.116", 0
  store i32 %"add.117", ptr %"R23"
  ; IADD3 R22, R22, 0x10, RZ
  %".2254" = load i32, ptr %"R22"
  %"add.118" = add i32 %".2254", 16
  %"add.119" = add i32 %"add.118", 0
  store i32 %"add.119", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2257" = load i32, ptr %"R23"
  %".2258" = load i1, ptr %"PT"
  %"cmp.19" = icmp sgt i32 %".2257", 12
  %".2259" = and i1 %"cmp.19", %".2258"
  ; FMUL R24, R24, R9
  %".2261" = load float, ptr %"R24"
  %".2262" = load float, ptr %"R9"
  %"fmul.74" = fmul float %".2261", %".2262"
  %".2263" = bitcast ptr %"R24" to ptr
  store float %"fmul.74", ptr %".2263"
  ; FFMA R24, R24, R21, R8
  %".2266" = load float, ptr %"R24"
  %".2267" = load float, ptr %"R21"
  %".2268" = load float, ptr %"R8"
  %"fmul.75" = fmul float %".2266", %".2267"
  %"fadd.79" = fadd float %"fmul.75", %".2268"
  %".2269" = bitcast ptr %"R24" to ptr
  store float %"fadd.79", ptr %".2269"
  ; FMUL R36, R36, R9
  %".2272" = load float, ptr %"R36"
  %".2273" = load float, ptr %"R9"
  %"fmul.76" = fmul float %".2272", %".2273"
  %".2274" = bitcast ptr %"R36" to ptr
  store float %"fmul.76", ptr %".2274"
  ; FFMA R25, R36, R25, R24
  %".2277" = load float, ptr %"R36"
  %".2278" = load float, ptr %"R25"
  %".2279" = load float, ptr %"R24"
  %"fmul.77" = fmul float %".2277", %".2278"
  %"fadd.80" = fadd float %"fmul.77", %".2279"
  %".2280" = bitcast ptr %"R25" to ptr
  store float %"fadd.80", ptr %".2280"
  ; FMUL R46, R46, R9
  %".2283" = load float, ptr %"R46"
  %".2284" = load float, ptr %"R9"
  %"fmul.78" = fmul float %".2283", %".2284"
  %".2285" = bitcast ptr %"R46" to ptr
  store float %"fmul.78", ptr %".2285"
  ; FFMA R34, R46, R34, R25
  %".2288" = load float, ptr %"R46"
  %".2289" = load float, ptr %"R34"
  %".2290" = load float, ptr %"R25"
  %"fmul.79" = fmul float %".2288", %".2289"
  %"fadd.81" = fadd float %"fmul.79", %".2290"
  %".2291" = bitcast ptr %"R34" to ptr
  store float %"fadd.81", ptr %".2291"
  ; FMUL R44, R44, R9
  %".2294" = load float, ptr %"R44"
  %".2295" = load float, ptr %"R9"
  %"fmul.80" = fmul float %".2294", %".2295"
  %".2296" = bitcast ptr %"R44" to ptr
  store float %"fmul.80", ptr %".2296"
  ; FFMA R34, R44, R41, R34
  %".2299" = load float, ptr %"R44"
  %".2300" = load float, ptr %"R41"
  %".2301" = load float, ptr %"R34"
  %"fmul.81" = fmul float %".2299", %".2300"
  %"fadd.82" = fadd float %"fmul.81", %".2301"
  %".2302" = bitcast ptr %"R34" to ptr
  store float %"fadd.82", ptr %".2302"
  ; FMUL R42, R42, R9
  %".2305" = load float, ptr %"R42"
  %".2306" = load float, ptr %"R9"
  %"fmul.82" = fmul float %".2305", %".2306"
  %".2307" = bitcast ptr %"R42" to ptr
  store float %"fmul.82", ptr %".2307"
  ; FFMA R34, R42, R39, R34
  %".2310" = load float, ptr %"R42"
  %".2311" = load float, ptr %"R39"
  %".2312" = load float, ptr %"R34"
  %"fmul.83" = fmul float %".2310", %".2311"
  %"fadd.83" = fadd float %"fmul.83", %".2312"
  %".2313" = bitcast ptr %"R34" to ptr
  store float %"fadd.83", ptr %".2313"
  ; FMUL R40, R40, R9
  %".2316" = load float, ptr %"R40"
  %".2317" = load float, ptr %"R9"
  %"fmul.84" = fmul float %".2316", %".2317"
  %".2318" = bitcast ptr %"R40" to ptr
  store float %"fmul.84", ptr %".2318"
  ; FFMA R34, R40, R37, R34
  %".2321" = load float, ptr %"R40"
  %".2322" = load float, ptr %"R37"
  %".2323" = load float, ptr %"R34"
  %"fmul.85" = fmul float %".2321", %".2322"
  %"fadd.84" = fadd float %"fmul.85", %".2323"
  %".2324" = bitcast ptr %"R34" to ptr
  store float %"fadd.84", ptr %".2324"
  ; FMUL R38, R38, R9
  %".2327" = load float, ptr %"R38"
  %".2328" = load float, ptr %"R9"
  %"fmul.86" = fmul float %".2327", %".2328"
  %".2329" = bitcast ptr %"R38" to ptr
  store float %"fmul.86", ptr %".2329"
  ; FFMA R34, R38, R35, R34
  %".2332" = load float, ptr %"R38"
  %".2333" = load float, ptr %"R35"
  %".2334" = load float, ptr %"R34"
  %"fmul.87" = fmul float %".2332", %".2333"
  %"fadd.85" = fadd float %"fmul.87", %".2334"
  %".2335" = bitcast ptr %"R34" to ptr
  store float %"fadd.85", ptr %".2335"
  ; FMUL R48, R48, R9
  %".2338" = load float, ptr %"R48"
  %".2339" = load float, ptr %"R9"
  %"fmul.88" = fmul float %".2338", %".2339"
  %".2340" = bitcast ptr %"R48" to ptr
  store float %"fmul.88", ptr %".2340"
  ; FFMA R34, R48, R47, R34
  %".2343" = load float, ptr %"R48"
  %".2344" = load float, ptr %"R47"
  %".2345" = load float, ptr %"R34"
  %"fmul.89" = fmul float %".2343", %".2344"
  %"fadd.86" = fadd float %"fmul.89", %".2345"
  %".2346" = bitcast ptr %"R34" to ptr
  store float %"fadd.86", ptr %".2346"
  ; FMUL R54, R54, R9
  %".2349" = load float, ptr %"R54"
  %".2350" = load float, ptr %"R9"
  %"fmul.90" = fmul float %".2349", %".2350"
  %".2351" = bitcast ptr %"R54" to ptr
  store float %"fmul.90", ptr %".2351"
  ; FFMA R34, R54, R45, R34
  %".2354" = load float, ptr %"R54"
  %".2355" = load float, ptr %"R45"
  %".2356" = load float, ptr %"R34"
  %"fmul.91" = fmul float %".2354", %".2355"
  %"fadd.87" = fadd float %"fmul.91", %".2356"
  %".2357" = bitcast ptr %"R34" to ptr
  store float %"fadd.87", ptr %".2357"
  ; FMUL R52, R52, R9
  %".2360" = load float, ptr %"R52"
  %".2361" = load float, ptr %"R9"
  %"fmul.92" = fmul float %".2360", %".2361"
  %".2362" = bitcast ptr %"R52" to ptr
  store float %"fmul.92", ptr %".2362"
  ; FFMA R43, R52, R43, R34
  %".2365" = load float, ptr %"R52"
  %".2366" = load float, ptr %"R43"
  %".2367" = load float, ptr %"R34"
  %"fmul.93" = fmul float %".2365", %".2366"
  %"fadd.88" = fadd float %"fmul.93", %".2367"
  %".2368" = bitcast ptr %"R43" to ptr
  store float %"fadd.88", ptr %".2368"
  ; FMUL R50, R50, R9
  %".2371" = load float, ptr %"R50"
  %".2372" = load float, ptr %"R9"
  %"fmul.94" = fmul float %".2371", %".2372"
  %".2373" = bitcast ptr %"R50" to ptr
  store float %"fmul.94", ptr %".2373"
  ; FFMA R18, R50, R18, R43
  %".2376" = load float, ptr %"R50"
  %".2377" = load float, ptr %"R18"
  %".2378" = load float, ptr %"R43"
  %"fmul.95" = fmul float %".2376", %".2377"
  %"fadd.89" = fadd float %"fmul.95", %".2378"
  %".2379" = bitcast ptr %"R18" to ptr
  store float %"fadd.89", ptr %".2379"
  ; FMUL R56, R56, R9
  %".2382" = load float, ptr %"R56"
  %".2383" = load float, ptr %"R9"
  %"fmul.96" = fmul float %".2382", %".2383"
  %".2384" = bitcast ptr %"R56" to ptr
  store float %"fmul.96", ptr %".2384"
  ; FFMA R18, R56, R55, R18
  %".2387" = load float, ptr %"R56"
  %".2388" = load float, ptr %"R55"
  %".2389" = load float, ptr %"R18"
  %"fmul.97" = fmul float %".2387", %".2388"
  %"fadd.90" = fadd float %"fmul.97", %".2389"
  %".2390" = bitcast ptr %"R18" to ptr
  store float %"fadd.90", ptr %".2390"
  ; FMUL R51, R51, R9
  %".2393" = load float, ptr %"R51"
  %".2394" = load float, ptr %"R9"
  %"fmul.98" = fmul float %".2393", %".2394"
  %".2395" = bitcast ptr %"R51" to ptr
  store float %"fmul.98", ptr %".2395"
  ; FFMA R18, R51, R53, R18
  %".2398" = load float, ptr %"R51"
  %".2399" = load float, ptr %"R53"
  %".2400" = load float, ptr %"R18"
  %"fmul.99" = fmul float %".2398", %".2399"
  %"fadd.91" = fadd float %"fmul.99", %".2400"
  %".2401" = bitcast ptr %"R18" to ptr
  store float %"fadd.91", ptr %".2401"
  ; FMUL R60, R60, R9
  %".2404" = load float, ptr %"R60"
  %".2405" = load float, ptr %"R9"
  %"fmul.100" = fmul float %".2404", %".2405"
  %".2406" = bitcast ptr %"R60" to ptr
  store float %"fmul.100", ptr %".2406"
  ; FFMA R18, R60, R49, R18
  %".2409" = load float, ptr %"R60"
  %".2410" = load float, ptr %"R49"
  %".2411" = load float, ptr %"R18"
  %"fmul.101" = fmul float %".2409", %".2410"
  %"fadd.92" = fadd float %"fmul.101", %".2411"
  %".2412" = bitcast ptr %"R18" to ptr
  store float %"fadd.92", ptr %".2412"
  ; FMUL R58, R58, R9
  %".2415" = load float, ptr %"R58"
  %".2416" = load float, ptr %"R9"
  %"fmul.102" = fmul float %".2415", %".2416"
  %".2417" = bitcast ptr %"R58" to ptr
  store float %"fmul.102", ptr %".2417"
  ; FFMA R18, R58, R19, R18
  %".2420" = load float, ptr %"R58"
  %".2421" = load float, ptr %"R19"
  %".2422" = load float, ptr %"R18"
  %"fmul.103" = fmul float %".2420", %".2421"
  %"fadd.93" = fadd float %"fmul.103", %".2422"
  %".2423" = bitcast ptr %"R18" to ptr
  store float %"fadd.93", ptr %".2423"
  ; FMUL R57, R57, R9
  %".2426" = load float, ptr %"R57"
  %".2427" = load float, ptr %"R9"
  %"fmul.104" = fmul float %".2426", %".2427"
  %".2428" = bitcast ptr %"R57" to ptr
  store float %"fmul.104", ptr %".2428"
  ; FFMA R8, R57, R59, R18
  %".2431" = load float, ptr %"R57"
  %".2432" = load float, ptr %"R59"
  %".2433" = load float, ptr %"R18"
  %"fmul.105" = fmul float %".2431", %".2432"
  %"fadd.94" = fadd float %"fmul.105", %".2433"
  %".2434" = bitcast ptr %"R8" to ptr
  store float %"fadd.94", ptr %".2434"
  ; @P1 BRA `(.L_x_14)
  %".2437" = load i1, ptr %"P1"
  %".2438" = icmp ne i1 %".2437", 1
  br i1 %".2438", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".2441" = load i32, ptr %"R23"
  %".2442" = load i1, ptr %"PT"
  %"cmp.20" = icmp sgt i32 %".2441", 4
  %".2443" = and i1 %"cmp.20", %".2442"
  ; @!P1 BRA `(.L_x_15)
  %".2445" = load i1, ptr %"P1"
  %".2446" = icmp eq i1 %".2445", 1
  br i1 %".2446", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R16, R3, R22, RZ
  %".2451" = load i32, ptr %"R3"
  %".2452" = load i32, ptr %"R22"
  %"add.120" = add i32 %".2451", %".2452"
  %"add.121" = add i32 %"add.120", 0
  store i32 %"add.121", ptr %"R16"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".2455" = load i32, ptr %"R22"
  %".2456" = load i32, ptr %"R13"
  %"mul.44" = mul i32 %".2455", %".2456"
  %"add.122" = add i32 %"mul.44", %"Arg_3"
  store i32 %"add.122", ptr %"R14"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".2459" = load i32, ptr %"R16"
  %".2460" = load i32, ptr %"R13"
  %"mul.45" = mul i32 %".2459", %".2460"
  %"add.123" = add i32 %"mul.45", %"Arg_4"
  store i32 %"add.123", ptr %"R16"
  ; IADD3 R10, R22, 0x4, RZ
  %".2463" = load i32, ptr %"R22"
  %"add.124" = add i32 %".2463", 4
  %"add.125" = add i32 %"add.124", 0
  store i32 %"add.125", ptr %"R10"
  ; LDG.E.SYS R18, [R14]
  %".2466" = load i32, ptr %"R14"
  %"zext.260" = zext i32 %".2466" to i64
  %".2467" = load i32, ptr %"R15"
  %"zext.261" = zext i32 %".2467" to i64
  %"shl.137" = shl i64 %"zext.261", 32
  %"or.129" = or i64 %"shl.137", %"zext.260"
  %".2468" = inttoptr i64 %"or.129" to ptr
  %".2469" = ptrtoint ptr %".2468" to i64
  %".2470" = add i64 %".2469", 0
  %"for_LDG.127" = inttoptr i64 %".2470" to ptr
  %".2471" = load float, ptr %"for_LDG.127"
  %".2472" = bitcast ptr %"R18" to ptr
  store float %".2471", ptr %".2472"
  ; IADD3 R12, R3, R10, RZ
  %".2475" = load i32, ptr %"R3"
  %".2476" = load i32, ptr %"R10"
  %"add.126" = add i32 %".2475", %".2476"
  %"add.127" = add i32 %"add.126", 0
  store i32 %"add.127", ptr %"R12"
  ; LDG.E.SYS R19, [R16]
  %".2479" = load i32, ptr %"R16"
  %"zext.262" = zext i32 %".2479" to i64
  %".2480" = load i32, ptr %"R17"
  %"zext.263" = zext i32 %".2480" to i64
  %"shl.138" = shl i64 %"zext.263", 32
  %"or.130" = or i64 %"shl.138", %"zext.262"
  %".2481" = inttoptr i64 %"or.130" to ptr
  %".2482" = ptrtoint ptr %".2481" to i64
  %".2483" = add i64 %".2482", 0
  %"for_LDG.128" = inttoptr i64 %".2483" to ptr
  %".2484" = load float, ptr %"for_LDG.128"
  %".2485" = bitcast ptr %"R19" to ptr
  store float %".2484", ptr %".2485"
  ; LDG.E.SYS R24, [R14+0x4]
  %".2488" = load i32, ptr %"R14"
  %"zext.264" = zext i32 %".2488" to i64
  %".2489" = load i32, ptr %"R15"
  %"zext.265" = zext i32 %".2489" to i64
  %"shl.139" = shl i64 %"zext.265", 32
  %"or.131" = or i64 %"shl.139", %"zext.264"
  %".2490" = inttoptr i64 %"or.131" to ptr
  %".2491" = ptrtoint ptr %".2490" to i64
  %".2492" = add i64 %".2491", 4
  %"for_LDG.129" = inttoptr i64 %".2492" to ptr
  %".2493" = load float, ptr %"for_LDG.129"
  %".2494" = bitcast ptr %"R24" to ptr
  store float %".2493", ptr %".2494"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".2497" = load i32, ptr %"R10"
  %".2498" = load i32, ptr %"R13"
  %"mul.46" = mul i32 %".2497", %".2498"
  %"add.128" = add i32 %"mul.46", %"Arg_3"
  store i32 %"add.128", ptr %"R10"
  ; LDG.E.SYS R21, [R16+0x4]
  %".2501" = load i32, ptr %"R16"
  %"zext.266" = zext i32 %".2501" to i64
  %".2502" = load i32, ptr %"R17"
  %"zext.267" = zext i32 %".2502" to i64
  %"shl.140" = shl i64 %"zext.267", 32
  %"or.132" = or i64 %"shl.140", %"zext.266"
  %".2503" = inttoptr i64 %"or.132" to ptr
  %".2504" = ptrtoint ptr %".2503" to i64
  %".2505" = add i64 %".2504", 4
  %"for_LDG.130" = inttoptr i64 %".2505" to ptr
  %".2506" = load float, ptr %"for_LDG.130"
  %".2507" = bitcast ptr %"R21" to ptr
  store float %".2506", ptr %".2507"
  ; LDG.E.SYS R34, [R14+0x8]
  %".2510" = load i32, ptr %"R14"
  %"zext.268" = zext i32 %".2510" to i64
  %".2511" = load i32, ptr %"R15"
  %"zext.269" = zext i32 %".2511" to i64
  %"shl.141" = shl i64 %"zext.269", 32
  %"or.133" = or i64 %"shl.141", %"zext.268"
  %".2512" = inttoptr i64 %"or.133" to ptr
  %".2513" = ptrtoint ptr %".2512" to i64
  %".2514" = add i64 %".2513", 8
  %"for_LDG.131" = inttoptr i64 %".2514" to ptr
  %".2515" = load float, ptr %"for_LDG.131"
  %".2516" = bitcast ptr %"R34" to ptr
  store float %".2515", ptr %".2516"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2519" = load i32, ptr %"R12"
  %".2520" = load i32, ptr %"R13"
  %"mul.47" = mul i32 %".2519", %".2520"
  %"add.129" = add i32 %"mul.47", %"Arg_4"
  store i32 %"add.129", ptr %"R12"
  ; LDG.E.SYS R25, [R16+0x8]
  %".2523" = load i32, ptr %"R16"
  %"zext.270" = zext i32 %".2523" to i64
  %".2524" = load i32, ptr %"R17"
  %"zext.271" = zext i32 %".2524" to i64
  %"shl.142" = shl i64 %"zext.271", 32
  %"or.134" = or i64 %"shl.142", %"zext.270"
  %".2525" = inttoptr i64 %"or.134" to ptr
  %".2526" = ptrtoint ptr %".2525" to i64
  %".2527" = add i64 %".2526", 8
  %"for_LDG.132" = inttoptr i64 %".2527" to ptr
  %".2528" = load float, ptr %"for_LDG.132"
  %".2529" = bitcast ptr %"R25" to ptr
  store float %".2528", ptr %".2529"
  ; LDG.E.SYS R36, [R14+0xc]
  %".2532" = load i32, ptr %"R14"
  %"zext.272" = zext i32 %".2532" to i64
  %".2533" = load i32, ptr %"R15"
  %"zext.273" = zext i32 %".2533" to i64
  %"shl.143" = shl i64 %"zext.273", 32
  %"or.135" = or i64 %"shl.143", %"zext.272"
  %".2534" = inttoptr i64 %"or.135" to ptr
  %".2535" = ptrtoint ptr %".2534" to i64
  %".2536" = add i64 %".2535", 12
  %"for_LDG.133" = inttoptr i64 %".2536" to ptr
  %".2537" = load float, ptr %"for_LDG.133"
  %".2538" = bitcast ptr %"R36" to ptr
  store float %".2537", ptr %".2538"
  ; LDG.E.SYS R35, [R16+0xc]
  %".2541" = load i32, ptr %"R16"
  %"zext.274" = zext i32 %".2541" to i64
  %".2542" = load i32, ptr %"R17"
  %"zext.275" = zext i32 %".2542" to i64
  %"shl.144" = shl i64 %"zext.275", 32
  %"or.136" = or i64 %"shl.144", %"zext.274"
  %".2543" = inttoptr i64 %"or.136" to ptr
  %".2544" = ptrtoint ptr %".2543" to i64
  %".2545" = add i64 %".2544", 12
  %"for_LDG.134" = inttoptr i64 %".2545" to ptr
  %".2546" = load float, ptr %"for_LDG.134"
  %".2547" = bitcast ptr %"R35" to ptr
  store float %".2546", ptr %".2547"
  ; LDG.E.SYS R38, [R10]
  %".2550" = load i32, ptr %"R10"
  %"zext.276" = zext i32 %".2550" to i64
  %".2551" = load i32, ptr %"R11"
  %"zext.277" = zext i32 %".2551" to i64
  %"shl.145" = shl i64 %"zext.277", 32
  %"or.137" = or i64 %"shl.145", %"zext.276"
  %".2552" = inttoptr i64 %"or.137" to ptr
  %".2553" = ptrtoint ptr %".2552" to i64
  %".2554" = add i64 %".2553", 0
  %"for_LDG.135" = inttoptr i64 %".2554" to ptr
  %".2555" = load float, ptr %"for_LDG.135"
  %".2556" = bitcast ptr %"R38" to ptr
  store float %".2555", ptr %".2556"
  ; LDG.E.SYS R37, [R12]
  %".2559" = load i32, ptr %"R12"
  %"zext.278" = zext i32 %".2559" to i64
  %".2560" = load i32, ptr %"R13"
  %"zext.279" = zext i32 %".2560" to i64
  %"shl.146" = shl i64 %"zext.279", 32
  %"or.138" = or i64 %"shl.146", %"zext.278"
  %".2561" = inttoptr i64 %"or.138" to ptr
  %".2562" = ptrtoint ptr %".2561" to i64
  %".2563" = add i64 %".2562", 0
  %"for_LDG.136" = inttoptr i64 %".2563" to ptr
  %".2564" = load float, ptr %"for_LDG.136"
  %".2565" = bitcast ptr %"R37" to ptr
  store float %".2564", ptr %".2565"
  ; LDG.E.SYS R40, [R10+0x4]
  %".2568" = load i32, ptr %"R10"
  %"zext.280" = zext i32 %".2568" to i64
  %".2569" = load i32, ptr %"R11"
  %"zext.281" = zext i32 %".2569" to i64
  %"shl.147" = shl i64 %"zext.281", 32
  %"or.139" = or i64 %"shl.147", %"zext.280"
  %".2570" = inttoptr i64 %"or.139" to ptr
  %".2571" = ptrtoint ptr %".2570" to i64
  %".2572" = add i64 %".2571", 4
  %"for_LDG.137" = inttoptr i64 %".2572" to ptr
  %".2573" = load float, ptr %"for_LDG.137"
  %".2574" = bitcast ptr %"R40" to ptr
  store float %".2573", ptr %".2574"
  ; LDG.E.SYS R39, [R12+0x4]
  %".2577" = load i32, ptr %"R12"
  %"zext.282" = zext i32 %".2577" to i64
  %".2578" = load i32, ptr %"R13"
  %"zext.283" = zext i32 %".2578" to i64
  %"shl.148" = shl i64 %"zext.283", 32
  %"or.140" = or i64 %"shl.148", %"zext.282"
  %".2579" = inttoptr i64 %"or.140" to ptr
  %".2580" = ptrtoint ptr %".2579" to i64
  %".2581" = add i64 %".2580", 4
  %"for_LDG.138" = inttoptr i64 %".2581" to ptr
  %".2582" = load float, ptr %"for_LDG.138"
  %".2583" = bitcast ptr %"R39" to ptr
  store float %".2582", ptr %".2583"
  ; LDG.E.SYS R42, [R10+0x8]
  %".2586" = load i32, ptr %"R10"
  %"zext.284" = zext i32 %".2586" to i64
  %".2587" = load i32, ptr %"R11"
  %"zext.285" = zext i32 %".2587" to i64
  %"shl.149" = shl i64 %"zext.285", 32
  %"or.141" = or i64 %"shl.149", %"zext.284"
  %".2588" = inttoptr i64 %"or.141" to ptr
  %".2589" = ptrtoint ptr %".2588" to i64
  %".2590" = add i64 %".2589", 8
  %"for_LDG.139" = inttoptr i64 %".2590" to ptr
  %".2591" = load float, ptr %"for_LDG.139"
  %".2592" = bitcast ptr %"R42" to ptr
  store float %".2591", ptr %".2592"
  ; LDG.E.SYS R44, [R10+0xc]
  %".2595" = load i32, ptr %"R10"
  %"zext.286" = zext i32 %".2595" to i64
  %".2596" = load i32, ptr %"R11"
  %"zext.287" = zext i32 %".2596" to i64
  %"shl.150" = shl i64 %"zext.287", 32
  %"or.142" = or i64 %"shl.150", %"zext.286"
  %".2597" = inttoptr i64 %"or.142" to ptr
  %".2598" = ptrtoint ptr %".2597" to i64
  %".2599" = add i64 %".2598", 12
  %"for_LDG.140" = inttoptr i64 %".2599" to ptr
  %".2600" = load float, ptr %"for_LDG.140"
  %".2601" = bitcast ptr %"R44" to ptr
  store float %".2600", ptr %".2601"
  ; LDG.E.SYS R41, [R12+0x8]
  %".2604" = load i32, ptr %"R12"
  %"zext.288" = zext i32 %".2604" to i64
  %".2605" = load i32, ptr %"R13"
  %"zext.289" = zext i32 %".2605" to i64
  %"shl.151" = shl i64 %"zext.289", 32
  %"or.143" = or i64 %"shl.151", %"zext.288"
  %".2606" = inttoptr i64 %"or.143" to ptr
  %".2607" = ptrtoint ptr %".2606" to i64
  %".2608" = add i64 %".2607", 8
  %"for_LDG.141" = inttoptr i64 %".2608" to ptr
  %".2609" = load float, ptr %"for_LDG.141"
  %".2610" = bitcast ptr %"R41" to ptr
  store float %".2609", ptr %".2610"
  ; LDG.E.SYS R43, [R12+0xc]
  %".2613" = load i32, ptr %"R12"
  %"zext.290" = zext i32 %".2613" to i64
  %".2614" = load i32, ptr %"R13"
  %"zext.291" = zext i32 %".2614" to i64
  %"shl.152" = shl i64 %"zext.291", 32
  %"or.144" = or i64 %"shl.152", %"zext.290"
  %".2615" = inttoptr i64 %"or.144" to ptr
  %".2616" = ptrtoint ptr %".2615" to i64
  %".2617" = add i64 %".2616", 12
  %"for_LDG.142" = inttoptr i64 %".2617" to ptr
  %".2618" = load float, ptr %"for_LDG.142"
  %".2619" = bitcast ptr %"R43" to ptr
  store float %".2618", ptr %".2619"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2622" = xor i1 1, 1
  %".2623" = and i1 %".2622", 1
  %".2624" = and i1 %".2623", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".2626" = load i32, ptr %"R23"
  %"add.130" = add i32 %".2626", -8
  %"add.131" = add i32 %"add.130", 0
  store i32 %"add.131", ptr %"R23"
  ; IADD3 R22, R22, 0x8, RZ
  %".2629" = load i32, ptr %"R22"
  %"add.132" = add i32 %".2629", 8
  %"add.133" = add i32 %"add.132", 0
  store i32 %"add.133", ptr %"R22"
  ; FMUL R15, R18, R9
  %".2632" = load float, ptr %"R18"
  %".2633" = load float, ptr %"R9"
  %"fmul.106" = fmul float %".2632", %".2633"
  %".2634" = bitcast ptr %"R15" to ptr
  store float %"fmul.106", ptr %".2634"
  ; FFMA R15, R15, R19, R8
  %".2637" = load float, ptr %"R15"
  %".2638" = load float, ptr %"R19"
  %".2639" = load float, ptr %"R8"
  %"fmul.107" = fmul float %".2637", %".2638"
  %"fadd.95" = fadd float %"fmul.107", %".2639"
  %".2640" = bitcast ptr %"R15" to ptr
  store float %"fadd.95", ptr %".2640"
  ; FMUL R24, R24, R9
  %".2643" = load float, ptr %"R24"
  %".2644" = load float, ptr %"R9"
  %"fmul.108" = fmul float %".2643", %".2644"
  %".2645" = bitcast ptr %"R24" to ptr
  store float %"fmul.108", ptr %".2645"
  ; FFMA R15, R24, R21, R15
  %".2648" = load float, ptr %"R24"
  %".2649" = load float, ptr %"R21"
  %".2650" = load float, ptr %"R15"
  %"fmul.109" = fmul float %".2648", %".2649"
  %"fadd.96" = fadd float %"fmul.109", %".2650"
  %".2651" = bitcast ptr %"R15" to ptr
  store float %"fadd.96", ptr %".2651"
  ; FMUL R34, R34, R9
  %".2654" = load float, ptr %"R34"
  %".2655" = load float, ptr %"R9"
  %"fmul.110" = fmul float %".2654", %".2655"
  %".2656" = bitcast ptr %"R34" to ptr
  store float %"fmul.110", ptr %".2656"
  ; FFMA R15, R34, R25, R15
  %".2659" = load float, ptr %"R34"
  %".2660" = load float, ptr %"R25"
  %".2661" = load float, ptr %"R15"
  %"fmul.111" = fmul float %".2659", %".2660"
  %"fadd.97" = fadd float %"fmul.111", %".2661"
  %".2662" = bitcast ptr %"R15" to ptr
  store float %"fadd.97", ptr %".2662"
  ; FMUL R36, R36, R9
  %".2665" = load float, ptr %"R36"
  %".2666" = load float, ptr %"R9"
  %"fmul.112" = fmul float %".2665", %".2666"
  %".2667" = bitcast ptr %"R36" to ptr
  store float %"fmul.112", ptr %".2667"
  ; FFMA R15, R36, R35, R15
  %".2670" = load float, ptr %"R36"
  %".2671" = load float, ptr %"R35"
  %".2672" = load float, ptr %"R15"
  %"fmul.113" = fmul float %".2670", %".2671"
  %"fadd.98" = fadd float %"fmul.113", %".2672"
  %".2673" = bitcast ptr %"R15" to ptr
  store float %"fadd.98", ptr %".2673"
  ; FMUL R38, R38, R9
  %".2676" = load float, ptr %"R38"
  %".2677" = load float, ptr %"R9"
  %"fmul.114" = fmul float %".2676", %".2677"
  %".2678" = bitcast ptr %"R38" to ptr
  store float %"fmul.114", ptr %".2678"
  ; FFMA R15, R38, R37, R15
  %".2681" = load float, ptr %"R38"
  %".2682" = load float, ptr %"R37"
  %".2683" = load float, ptr %"R15"
  %"fmul.115" = fmul float %".2681", %".2682"
  %"fadd.99" = fadd float %"fmul.115", %".2683"
  %".2684" = bitcast ptr %"R15" to ptr
  store float %"fadd.99", ptr %".2684"
  ; FMUL R40, R40, R9
  %".2687" = load float, ptr %"R40"
  %".2688" = load float, ptr %"R9"
  %"fmul.116" = fmul float %".2687", %".2688"
  %".2689" = bitcast ptr %"R40" to ptr
  store float %"fmul.116", ptr %".2689"
  ; FFMA R15, R40, R39, R15
  %".2692" = load float, ptr %"R40"
  %".2693" = load float, ptr %"R39"
  %".2694" = load float, ptr %"R15"
  %"fmul.117" = fmul float %".2692", %".2693"
  %"fadd.100" = fadd float %"fmul.117", %".2694"
  %".2695" = bitcast ptr %"R15" to ptr
  store float %"fadd.100", ptr %".2695"
  ; FMUL R42, R42, R9.reuse
  %".2698" = load float, ptr %"R42"
  %".2699" = load float, ptr %"R9"
  %"fmul.118" = fmul float %".2698", %".2699"
  %".2700" = bitcast ptr %"R42" to ptr
  store float %"fmul.118", ptr %".2700"
  ; FMUL R44, R44, R9
  %".2703" = load float, ptr %"R44"
  %".2704" = load float, ptr %"R9"
  %"fmul.119" = fmul float %".2703", %".2704"
  %".2705" = bitcast ptr %"R44" to ptr
  store float %"fmul.119", ptr %".2705"
  ; FFMA R15, R42, R41, R15
  %".2708" = load float, ptr %"R42"
  %".2709" = load float, ptr %"R41"
  %".2710" = load float, ptr %"R15"
  %"fmul.120" = fmul float %".2708", %".2709"
  %"fadd.101" = fadd float %"fmul.120", %".2710"
  %".2711" = bitcast ptr %"R15" to ptr
  store float %"fadd.101", ptr %".2711"
  ; FFMA R8, R44, R43, R15
  %".2714" = load float, ptr %"R44"
  %".2715" = load float, ptr %"R43"
  %".2716" = load float, ptr %"R15"
  %"fmul.121" = fmul float %".2714", %".2715"
  %"fadd.102" = fadd float %"fmul.121", %".2716"
  %".2717" = bitcast ptr %"R8" to ptr
  store float %"fadd.102", ptr %".2717"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".2720" = load i32, ptr %"R23"
  %".2721" = load i1, ptr %"PT"
  %"cmp.21" = icmp ne i32 %".2720", 0
  %".2722" = or i1 %"cmp.21", %".2721"
  ; @!P0 BRA `(.L_x_11)
  %".2724" = load i1, ptr %"P0"
  %".2725" = icmp eq i1 %".2724", 1
  br i1 %".2725", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R12, R3, R22, RZ
  %".2730" = load i32, ptr %"R3"
  %".2731" = load i32, ptr %"R22"
  %"add.134" = add i32 %".2730", %".2731"
  %"add.135" = add i32 %"add.134", 0
  store i32 %"add.135", ptr %"R12"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".2734" = load i32, ptr %"R22"
  %".2735" = load i32, ptr %"R13"
  %"mul.48" = mul i32 %".2734", %".2735"
  %"add.136" = add i32 %"mul.48", %"Arg_3"
  store i32 %"add.136", ptr %"R10"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2738" = load i32, ptr %"R12"
  %".2739" = load i32, ptr %"R13"
  %"mul.49" = mul i32 %".2738", %".2739"
  %"add.137" = add i32 %"mul.49", %"Arg_4"
  store i32 %"add.137", ptr %"R12"
  ; LDG.E.SYS R14, [R10]
  %".2742" = load i32, ptr %"R10"
  %"zext.292" = zext i32 %".2742" to i64
  %".2743" = load i32, ptr %"R11"
  %"zext.293" = zext i32 %".2743" to i64
  %"shl.153" = shl i64 %"zext.293", 32
  %"or.145" = or i64 %"shl.153", %"zext.292"
  %".2744" = inttoptr i64 %"or.145" to ptr
  %".2745" = ptrtoint ptr %".2744" to i64
  %".2746" = add i64 %".2745", 0
  %"for_LDG.143" = inttoptr i64 %".2746" to ptr
  %".2747" = load float, ptr %"for_LDG.143"
  %".2748" = bitcast ptr %"R14" to ptr
  store float %".2747", ptr %".2748"
  ; LDG.E.SYS R16, [R12]
  %".2751" = load i32, ptr %"R12"
  %"zext.294" = zext i32 %".2751" to i64
  %".2752" = load i32, ptr %"R13"
  %"zext.295" = zext i32 %".2752" to i64
  %"shl.154" = shl i64 %"zext.295", 32
  %"or.146" = or i64 %"shl.154", %"zext.294"
  %".2753" = inttoptr i64 %"or.146" to ptr
  %".2754" = ptrtoint ptr %".2753" to i64
  %".2755" = add i64 %".2754", 0
  %"for_LDG.144" = inttoptr i64 %".2755" to ptr
  %".2756" = load float, ptr %"for_LDG.144"
  %".2757" = bitcast ptr %"R16" to ptr
  store float %".2756", ptr %".2757"
  ; LDG.E.SYS R18, [R10+0x4]
  %".2760" = load i32, ptr %"R10"
  %"zext.296" = zext i32 %".2760" to i64
  %".2761" = load i32, ptr %"R11"
  %"zext.297" = zext i32 %".2761" to i64
  %"shl.155" = shl i64 %"zext.297", 32
  %"or.147" = or i64 %"shl.155", %"zext.296"
  %".2762" = inttoptr i64 %"or.147" to ptr
  %".2763" = ptrtoint ptr %".2762" to i64
  %".2764" = add i64 %".2763", 4
  %"for_LDG.145" = inttoptr i64 %".2764" to ptr
  %".2765" = load float, ptr %"for_LDG.145"
  %".2766" = bitcast ptr %"R18" to ptr
  store float %".2765", ptr %".2766"
  ; LDG.E.SYS R17, [R12+0x4]
  %".2769" = load i32, ptr %"R12"
  %"zext.298" = zext i32 %".2769" to i64
  %".2770" = load i32, ptr %"R13"
  %"zext.299" = zext i32 %".2770" to i64
  %"shl.156" = shl i64 %"zext.299", 32
  %"or.148" = or i64 %"shl.156", %"zext.298"
  %".2771" = inttoptr i64 %"or.148" to ptr
  %".2772" = ptrtoint ptr %".2771" to i64
  %".2773" = add i64 %".2772", 4
  %"for_LDG.146" = inttoptr i64 %".2773" to ptr
  %".2774" = load float, ptr %"for_LDG.146"
  %".2775" = bitcast ptr %"R17" to ptr
  store float %".2774", ptr %".2775"
  ; LDG.E.SYS R24, [R10+0x8]
  %".2778" = load i32, ptr %"R10"
  %"zext.300" = zext i32 %".2778" to i64
  %".2779" = load i32, ptr %"R11"
  %"zext.301" = zext i32 %".2779" to i64
  %"shl.157" = shl i64 %"zext.301", 32
  %"or.149" = or i64 %"shl.157", %"zext.300"
  %".2780" = inttoptr i64 %"or.149" to ptr
  %".2781" = ptrtoint ptr %".2780" to i64
  %".2782" = add i64 %".2781", 8
  %"for_LDG.147" = inttoptr i64 %".2782" to ptr
  %".2783" = load float, ptr %"for_LDG.147"
  %".2784" = bitcast ptr %"R24" to ptr
  store float %".2783", ptr %".2784"
  ; LDG.E.SYS R19, [R12+0x8]
  %".2787" = load i32, ptr %"R12"
  %"zext.302" = zext i32 %".2787" to i64
  %".2788" = load i32, ptr %"R13"
  %"zext.303" = zext i32 %".2788" to i64
  %"shl.158" = shl i64 %"zext.303", 32
  %"or.150" = or i64 %"shl.158", %"zext.302"
  %".2789" = inttoptr i64 %"or.150" to ptr
  %".2790" = ptrtoint ptr %".2789" to i64
  %".2791" = add i64 %".2790", 8
  %"for_LDG.148" = inttoptr i64 %".2791" to ptr
  %".2792" = load float, ptr %"for_LDG.148"
  %".2793" = bitcast ptr %"R19" to ptr
  store float %".2792", ptr %".2793"
  ; LDG.E.SYS R34, [R10+0xc]
  %".2796" = load i32, ptr %"R10"
  %"zext.304" = zext i32 %".2796" to i64
  %".2797" = load i32, ptr %"R11"
  %"zext.305" = zext i32 %".2797" to i64
  %"shl.159" = shl i64 %"zext.305", 32
  %"or.151" = or i64 %"shl.159", %"zext.304"
  %".2798" = inttoptr i64 %"or.151" to ptr
  %".2799" = ptrtoint ptr %".2798" to i64
  %".2800" = add i64 %".2799", 12
  %"for_LDG.149" = inttoptr i64 %".2800" to ptr
  %".2801" = load float, ptr %"for_LDG.149"
  %".2802" = bitcast ptr %"R34" to ptr
  store float %".2801", ptr %".2802"
  ; LDG.E.SYS R21, [R12+0xc]
  %".2805" = load i32, ptr %"R12"
  %"zext.306" = zext i32 %".2805" to i64
  %".2806" = load i32, ptr %"R13"
  %"zext.307" = zext i32 %".2806" to i64
  %"shl.160" = shl i64 %"zext.307", 32
  %"or.152" = or i64 %"shl.160", %"zext.306"
  %".2807" = inttoptr i64 %"or.152" to ptr
  %".2808" = ptrtoint ptr %".2807" to i64
  %".2809" = add i64 %".2808", 12
  %"for_LDG.150" = inttoptr i64 %".2809" to ptr
  %".2810" = load float, ptr %"for_LDG.150"
  %".2811" = bitcast ptr %"R21" to ptr
  store float %".2810", ptr %".2811"
  ; IADD3 R23, R23, -0x4, RZ
  %".2814" = load i32, ptr %"R23"
  %"add.138" = add i32 %".2814", -4
  %"add.139" = add i32 %"add.138", 0
  store i32 %"add.139", ptr %"R23"
  ; IADD3 R22, R22, 0x4, RZ
  %".2817" = load i32, ptr %"R22"
  %"add.140" = add i32 %".2817", 4
  %"add.141" = add i32 %"add.140", 0
  store i32 %"add.141", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".2820" = load i32, ptr %"R23"
  %".2821" = load i1, ptr %"PT"
  %"cmp.22" = icmp ne i32 %".2820", 0
  %".2822" = and i1 %"cmp.22", %".2821"
  ; FMUL R15, R14, R9
  %".2824" = load float, ptr %"R14"
  %".2825" = load float, ptr %"R9"
  %"fmul.122" = fmul float %".2824", %".2825"
  %".2826" = bitcast ptr %"R15" to ptr
  store float %"fmul.122", ptr %".2826"
  ; FFMA R15, R15, R16, R8
  %".2829" = load float, ptr %"R15"
  %".2830" = load float, ptr %"R16"
  %".2831" = load float, ptr %"R8"
  %"fmul.123" = fmul float %".2829", %".2830"
  %"fadd.103" = fadd float %"fmul.123", %".2831"
  %".2832" = bitcast ptr %"R15" to ptr
  store float %"fadd.103", ptr %".2832"
  ; FMUL R18, R18, R9
  %".2835" = load float, ptr %"R18"
  %".2836" = load float, ptr %"R9"
  %"fmul.124" = fmul float %".2835", %".2836"
  %".2837" = bitcast ptr %"R18" to ptr
  store float %"fmul.124", ptr %".2837"
  ; FFMA R15, R18, R17, R15
  %".2840" = load float, ptr %"R18"
  %".2841" = load float, ptr %"R17"
  %".2842" = load float, ptr %"R15"
  %"fmul.125" = fmul float %".2840", %".2841"
  %"fadd.104" = fadd float %"fmul.125", %".2842"
  %".2843" = bitcast ptr %"R15" to ptr
  store float %"fadd.104", ptr %".2843"
  ; FMUL R24, R24, R9
  %".2846" = load float, ptr %"R24"
  %".2847" = load float, ptr %"R9"
  %"fmul.126" = fmul float %".2846", %".2847"
  %".2848" = bitcast ptr %"R24" to ptr
  store float %"fmul.126", ptr %".2848"
  ; FFMA R15, R24, R19, R15
  %".2851" = load float, ptr %"R24"
  %".2852" = load float, ptr %"R19"
  %".2853" = load float, ptr %"R15"
  %"fmul.127" = fmul float %".2851", %".2852"
  %"fadd.105" = fadd float %"fmul.127", %".2853"
  %".2854" = bitcast ptr %"R15" to ptr
  store float %"fadd.105", ptr %".2854"
  ; FMUL R34, R34, R9
  %".2857" = load float, ptr %"R34"
  %".2858" = load float, ptr %"R9"
  %"fmul.128" = fmul float %".2857", %".2858"
  %".2859" = bitcast ptr %"R34" to ptr
  store float %"fmul.128", ptr %".2859"
  ; FFMA R8, R34, R21, R15
  %".2862" = load float, ptr %"R34"
  %".2863" = load float, ptr %"R21"
  %".2864" = load float, ptr %"R15"
  %"fmul.129" = fmul float %".2862", %".2863"
  %"fadd.106" = fadd float %"fmul.129", %".2864"
  %".2865" = bitcast ptr %"R8" to ptr
  store float %"fadd.106", ptr %".2865"
  ; @P0 BRA `(.L_x_12)
  %".2868" = load i1, ptr %"P0"
  %".2869" = icmp ne i1 %".2868", 1
  br i1 %".2869", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".2872" = load i32, ptr %"R4"
  %".2873" = load i1, ptr %"PT"
  %"cmp.23" = icmp ne i32 %".2872", 0
  %".2874" = and i1 %"cmp.23", %".2873"
  ; @!P0 BRA `(.L_x_10)
  %".2876" = load i1, ptr %"P0"
  %".2877" = icmp eq i1 %".2876", 1
  br i1 %".2877", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R10, R3, R22, RZ
  %".2882" = load i32, ptr %"R3"
  %".2883" = load i32, ptr %"R22"
  %"add.142" = add i32 %".2882", %".2883"
  %"add.143" = add i32 %"add.142", 0
  store i32 %"add.143", ptr %"R10"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".2886" = load i32, ptr %"R22"
  %".2887" = load i32, ptr %"R11"
  %"mul.50" = mul i32 %".2886", %".2887"
  %"add.144" = add i32 %"mul.50", %"Arg_3"
  store i32 %"add.144", ptr %"R22"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".2890" = load i32, ptr %"R10"
  %".2891" = load i32, ptr %"R11"
  %"mul.51" = mul i32 %".2890", %".2891"
  %"add.145" = add i32 %"mul.51", %"Arg_4"
  store i32 %"add.145", ptr %"R10"
  ; LDG.E.SYS R12, [R22]
  %".2894" = load i32, ptr %"R22"
  %"zext.308" = zext i32 %".2894" to i64
  %".2895" = load i32, ptr %"R23"
  %"zext.309" = zext i32 %".2895" to i64
  %"shl.161" = shl i64 %"zext.309", 32
  %"or.153" = or i64 %"shl.161", %"zext.308"
  %".2896" = inttoptr i64 %"or.153" to ptr
  %".2897" = ptrtoint ptr %".2896" to i64
  %".2898" = add i64 %".2897", 0
  %"for_LDG.151" = inttoptr i64 %".2898" to ptr
  %".2899" = load float, ptr %"for_LDG.151"
  %".2900" = bitcast ptr %"R12" to ptr
  store float %".2899", ptr %".2900"
  ; LDG.E.SYS R14, [R10]
  %".2903" = load i32, ptr %"R10"
  %"zext.310" = zext i32 %".2903" to i64
  %".2904" = load i32, ptr %"R11"
  %"zext.311" = zext i32 %".2904" to i64
  %"shl.162" = shl i64 %"zext.311", 32
  %"or.154" = or i64 %"shl.162", %"zext.310"
  %".2905" = inttoptr i64 %"or.154" to ptr
  %".2906" = ptrtoint ptr %".2905" to i64
  %".2907" = add i64 %".2906", 0
  %"for_LDG.152" = inttoptr i64 %".2907" to ptr
  %".2908" = load float, ptr %"for_LDG.152"
  %".2909" = bitcast ptr %"R14" to ptr
  store float %".2908", ptr %".2909"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".2912" = load i32, ptr %"R4"
  %".2913" = load i1, ptr %"PT"
  %"cmp.24" = icmp ne i32 %".2912", 1
  %".2914" = and i1 %"cmp.24", %".2913"
  ; FMUL R13, R12, R9
  %".2916" = load float, ptr %"R12"
  %".2917" = load float, ptr %"R9"
  %"fmul.130" = fmul float %".2916", %".2917"
  %".2918" = bitcast ptr %"R13" to ptr
  store float %"fmul.130", ptr %".2918"
  ; FFMA R8, R13, R14, R8
  %".2921" = load float, ptr %"R13"
  %".2922" = load float, ptr %"R14"
  %".2923" = load float, ptr %"R8"
  %"fmul.131" = fmul float %".2921", %".2922"
  %"fadd.107" = fadd float %"fmul.131", %".2923"
  %".2924" = bitcast ptr %"R8" to ptr
  store float %"fadd.107", ptr %".2924"
  ; @!P0 BRA `(.L_x_10)
  %".2927" = load i1, ptr %"P0"
  %".2928" = icmp eq i1 %".2927", 1
  br i1 %".2928", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".2931" = load i32, ptr %"R4"
  %".2932" = load i1, ptr %"PT"
  %"cmp.25" = icmp ne i32 %".2931", 2
  %".2933" = and i1 %"cmp.25", %".2932"
  ; LDG.E.SYS R12, [R22+0x4]
  %".2935" = load i32, ptr %"R22"
  %"zext.312" = zext i32 %".2935" to i64
  %".2936" = load i32, ptr %"R23"
  %"zext.313" = zext i32 %".2936" to i64
  %"shl.163" = shl i64 %"zext.313", 32
  %"or.155" = or i64 %"shl.163", %"zext.312"
  %".2937" = inttoptr i64 %"or.155" to ptr
  %".2938" = ptrtoint ptr %".2937" to i64
  %".2939" = add i64 %".2938", 4
  %"for_LDG.153" = inttoptr i64 %".2939" to ptr
  %".2940" = load float, ptr %"for_LDG.153"
  %".2941" = bitcast ptr %"R12" to ptr
  store float %".2940", ptr %".2941"
  ; LDG.E.SYS R14, [R10+0x4]
  %".2944" = load i32, ptr %"R10"
  %"zext.314" = zext i32 %".2944" to i64
  %".2945" = load i32, ptr %"R11"
  %"zext.315" = zext i32 %".2945" to i64
  %"shl.164" = shl i64 %"zext.315", 32
  %"or.156" = or i64 %"shl.164", %"zext.314"
  %".2946" = inttoptr i64 %"or.156" to ptr
  %".2947" = ptrtoint ptr %".2946" to i64
  %".2948" = add i64 %".2947", 4
  %"for_LDG.154" = inttoptr i64 %".2948" to ptr
  %".2949" = load float, ptr %"for_LDG.154"
  %".2950" = bitcast ptr %"R14" to ptr
  store float %".2949", ptr %".2950"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".2953" = load i1, ptr %"P0"
  %".2954" = icmp ne i1 %".2953", 1
  br i1 %".2954", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  %".2957" = load i32, ptr %"R22"
  %"zext.316" = zext i32 %".2957" to i64
  %".2958" = load i32, ptr %"R23"
  %"zext.317" = zext i32 %".2958" to i64
  %"shl.165" = shl i64 %"zext.317", 32
  %"or.157" = or i64 %"shl.165", %"zext.316"
  %".2959" = inttoptr i64 %"or.157" to ptr
  %".2960" = ptrtoint ptr %".2959" to i64
  %".2961" = add i64 %".2960", 8
  %"for_LDG.155" = inttoptr i64 %".2961" to ptr
  %".2962" = load float, ptr %"for_LDG.155"
  %".2963" = bitcast ptr %"R16" to ptr
  store float %".2962", ptr %".2963"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".2968" = load i1, ptr %"P0"
  %".2969" = icmp ne i1 %".2968", 1
  br i1 %".2969", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  %".2972" = load i32, ptr %"R10"
  %"zext.318" = zext i32 %".2972" to i64
  %".2973" = load i32, ptr %"R11"
  %"zext.319" = zext i32 %".2973" to i64
  %"shl.166" = shl i64 %"zext.319", 32
  %"or.158" = or i64 %"shl.166", %"zext.318"
  %".2974" = inttoptr i64 %"or.158" to ptr
  %".2975" = ptrtoint ptr %".2974" to i64
  %".2976" = add i64 %".2975", 8
  %"for_LDG.156" = inttoptr i64 %".2976" to ptr
  %".2977" = load float, ptr %"for_LDG.156"
  %".2978" = bitcast ptr %"R15" to ptr
  store float %".2977", ptr %".2978"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %".2983" = load float, ptr %"R12"
  %".2984" = load float, ptr %"R9"
  %"fmul.132" = fmul float %".2983", %".2984"
  %".2985" = bitcast ptr %"R13" to ptr
  store float %"fmul.132", ptr %".2985"
  ; FFMA R8, R13, R14, R8
  %".2988" = load float, ptr %"R13"
  %".2989" = load float, ptr %"R14"
  %".2990" = load float, ptr %"R8"
  %"fmul.133" = fmul float %".2988", %".2989"
  %"fadd.108" = fadd float %"fmul.133", %".2990"
  %".2991" = bitcast ptr %"R8" to ptr
  store float %"fadd.108", ptr %".2991"
  ; @P0 FMUL R9, R16, R9
  %".2994" = load i1, ptr %"P0"
  %".2995" = icmp ne i1 %".2994", 1
  br i1 %".2995", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %".2998" = load float, ptr %"R16"
  %".2999" = load float, ptr %"R9"
  %"fmul.134" = fmul float %".2998", %".2999"
  %".3000" = bitcast ptr %"R9" to ptr
  store float %"fmul.134", ptr %".3000"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".3005" = load i1, ptr %"P0"
  %".3006" = icmp ne i1 %".3005", 1
  br i1 %".3006", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %".3009" = load float, ptr %"R9"
  %".3010" = load float, ptr %"R15"
  %".3011" = load float, ptr %"R8"
  %"fmul.135" = fmul float %".3009", %".3010"
  %"fadd.109" = fadd float %"fmul.135", %".3011"
  %".3012" = bitcast ptr %"R8" to ptr
  store float %"fadd.109", ptr %".3012"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  %".3017" = load i32, ptr %"R30"
  %"zext.320" = zext i32 %".3017" to i64
  %"zext.321" = zext i32 0 to i64
  %"shl.167" = shl i64 %"zext.321", 32
  %"or.159" = or i64 %"shl.167", %"zext.320"
  %".3018" = inttoptr i64 %"or.159" to ptr
  %".3019" = ptrtoint ptr %".3018" to i64
  %".3020" = add i64 %".3019", 0
  %"for_LDG.157" = inttoptr i64 %".3020" to ptr
  %".3021" = load float, ptr %"for_LDG.157"
  %".3022" = bitcast ptr %"R9" to ptr
  store float %".3021", ptr %".3022"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %".3027" = load float, ptr %"R9"
  %".3028" = load float, ptr %"R8"
  %"fadd.110" = fadd float %".3027", %".3028"
  %".3029" = bitcast ptr %"R12" to ptr
  store float %"fadd.110", ptr %".3029"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %".3032" = load float, ptr %"R12"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".3032")
  %".3033" = load i1, ptr %"PT"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".3034" = and i1 %"fcmp_unordered", %".3033"
  ; @!P0 BRA `(.L_x_17)
  %".3036" = load i1, ptr %"P0"
  %".3037" = icmp eq i1 %".3036", 1
  br i1 %".3037", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %".3040" = load float, ptr %"R12"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".3040")
  %"fmul.136" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  %".3041" = bitcast ptr %"R8" to ptr
  store float %"fmul.136", ptr %".3041"
  ; MOV R9, 0x3f800000
  %".3044" = bitcast ptr %"R9" to ptr
  store float 0x41cfc00000000000, ptr %".3044"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %".3047" = load float, ptr %"R12"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".3047")
  %".3048" = load i1, ptr %"PT"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".3049" = and i1 %"fcmp_unordered.1", %".3048"
  ; MUFU.EX2 R8, R8
  %".3051" = load float, ptr %"R8"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".3051")
  %".3052" = bitcast ptr %"R8" to ptr
  store float %"llvm_exp2_f32_result.2", ptr %".3052"
  ; FADD R10, R8, 1
  %".3055" = load float, ptr %"R8"
  %"fadd.111" = fadd float %".3055", 0x3ff0000000000000
  %".3056" = bitcast ptr %"R10" to ptr
  store float %"fadd.111", ptr %".3056"
  ; MUFU.RCP R10, R10
  %".3059" = load float, ptr %"R10"
  %".3060" = fdiv float 0x3ff0000000000000, %".3059"
  %".3061" = bitcast ptr %"R10" to ptr
  store float %".3060", ptr %".3061"
  ; FFMA R9, R10, -2, R9
  %".3064" = load float, ptr %"R10"
  %".3065" = load float, ptr %"R9"
  %"fmul.137" = fmul float %".3064", 0xc000000000000000
  %"fadd.112" = fadd float %"fmul.137", %".3065"
  %".3066" = bitcast ptr %"R9" to ptr
  store float %"fadd.112", ptr %".3066"
  ; FSEL R9, R9, 1, !P0
  %".3069" = load float, ptr %"R9"
  %".3070" = load i1, ptr %"P0"
  %".3071" = icmp eq i1 %".3070", 1
  %"fsel" = select  i1 %".3071", float %".3069", float 0x3ff0000000000000
  %".3072" = bitcast ptr %"R9" to ptr
  store float %"fsel", ptr %".3072"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".3075" = load float, ptr %"R9"
  %".3076" = load float, ptr %"R12"
  %".3077" = or float %".3075", 0x41e0000000000000
  %".3078" = or float %".3075", %".3076"
  %".3079" = and float %".3077", %".3078"
  %".3080" = bitcast ptr %"R9" to ptr
  store float %".3079", ptr %".3080"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  %".3085" = bitcast ptr %"R9" to ptr
  store float 0x41ce407840000000, ptr %".3085"
  ; FMUL R8, R12, R12
  %".3088" = load float, ptr %"R12"
  %".3089" = load float, ptr %"R12"
  %"fmul.138" = fmul float %".3088", %".3089"
  %".3090" = bitcast ptr %"R8" to ptr
  store float %"fmul.138", ptr %".3090"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".3093" = load float, ptr %"R8"
  %".3094" = load float, ptr %"R9"
  %"fmul.139" = fmul float %".3093", %".3094"
  %"fadd.113" = fadd float %"fmul.139", 0xbfaac795c0000000
  %".3095" = bitcast ptr %"R9" to ptr
  store float %"fadd.113", ptr %".3095"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".3098" = load float, ptr %"R8"
  %".3099" = load float, ptr %"R9"
  %"fmul.140" = fmul float %".3098", %".3099"
  %"fadd.114" = fadd float %"fmul.140", 0x3fc10b2820000000
  %".3100" = bitcast ptr %"R9" to ptr
  store float %"fadd.114", ptr %".3100"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".3103" = load float, ptr %"R8"
  %".3104" = load float, ptr %"R9"
  %"fmul.141" = fmul float %".3103", %".3104"
  %"fadd.115" = fadd float %"fmul.141", 0xbfd5553da0000000
  %".3105" = bitcast ptr %"R9" to ptr
  store float %"fadd.115", ptr %".3105"
  ; FFMA R9, R8, R9, RZ
  %".3108" = load float, ptr %"R8"
  %".3109" = load float, ptr %"R9"
  %"fmul.142" = fmul float %".3108", %".3109"
  %"fadd.116" = fadd float %"fmul.142",              0x0
  %".3110" = bitcast ptr %"R9" to ptr
  store float %"fadd.116", ptr %".3110"
  ; FFMA R9, R12, R9, R12
  %".3113" = load float, ptr %"R12"
  %".3114" = load float, ptr %"R9"
  %".3115" = load float, ptr %"R12"
  %"fmul.143" = fmul float %".3113", %".3114"
  %"fadd.117" = fadd float %"fmul.143", %".3115"
  %".3116" = bitcast ptr %"R9" to ptr
  store float %"fadd.117", ptr %".3116"
.L_x_18:
  ; BSYNC B0
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  %".3120" = load i32, ptr %"R20"
  %"add.146" = add i32 %".3120", 25165824
  %"add.147" = add i32 %"add.146", 0
  store i32 %"add.147", ptr %"R8"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".3125" = load i32, ptr %"R8"
  %".3126" = and i32 %".3125", 2139095040
  store i32 %".3126", ptr %"R8"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".3129" = load i32, ptr %"R8"
  %".3130" = load i1, ptr %"PT"
  %"cmp.26" = icmp sgt i32 %".3129", 33554431
  %".3131" = and i1 %"cmp.26", %".3130"
  ; @P0 BRA `(.L_x_20)
  %".3133" = load i1, ptr %"P0"
  %".3134" = icmp ne i1 %".3133", 1
  br i1 %".3134", label %".L_x_20", label %".L_x_16_split_0x2170"
.L_x_16_split_0x2170:
  ; MOV R24, R20
  %".3137" = load float, ptr %"R20"
  %".3138" = bitcast ptr %"R24" to ptr
  store float %".3137", ptr %".3138"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.1" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R8, R22
  %".3144" = load i32, ptr %"R22"
  store i32 %".3144", ptr %"R8"
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".3149" = load float, ptr %"R20"
  %".3150" = fdiv float 0x3ff0000000000000, %".3149"
  %".3151" = bitcast ptr %"R11" to ptr
  store float %".3150", ptr %".3151"
  ; FFMA R8, R20, R11, -1
  %".3154" = load float, ptr %"R20"
  %".3155" = load float, ptr %"R11"
  %"fmul.144" = fmul float %".3154", %".3155"
  %"fadd.118" = fadd float %"fmul.144", 0xbff0000000000000
  %".3156" = bitcast ptr %"R8" to ptr
  store float %"fadd.118", ptr %".3156"
  ; FADD.FTZ R8, -R8, -RZ
  %".3159" = load float, ptr %"R8"
  %".3160" = sub float              0x0, %".3159"
  %"fadd.119" = fadd float %".3160",              0x0
  %".3161" = bitcast ptr %"R8" to ptr
  store float %"fadd.119", ptr %".3161"
  ; FFMA R8, R11, R8, R11
  %".3164" = load float, ptr %"R11"
  %".3165" = load float, ptr %"R8"
  %".3166" = load float, ptr %"R11"
  %"fmul.145" = fmul float %".3164", %".3165"
  %"fadd.120" = fadd float %"fmul.145", %".3166"
  %".3167" = bitcast ptr %"R8" to ptr
  store float %"fadd.120", ptr %".3167"
.L_x_21:
  ; BSYNC B0
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  %".3171" = load i32, ptr %"R28"
  %"zext.322" = zext i32 %".3171" to i64
  %"zext.323" = zext i32 0 to i64
  %"shl.168" = shl i64 %"zext.323", 32
  %"or.160" = or i64 %"shl.168", %"zext.322"
  %".3172" = inttoptr i64 %"or.160" to ptr
  %".3173" = ptrtoint ptr %".3172" to i64
  %".3174" = add i64 %".3173", 0
  %"for_LDG.158" = inttoptr i64 %".3174" to ptr
  %".3175" = load float, ptr %"for_LDG.158"
  %".3176" = bitcast ptr %"R11" to ptr
  store float %".3175", ptr %".3176"
  ; FADD R10, -R8, 1
  %".3179" = load float, ptr %"R8"
  %".3180" = sub float              0x0, %".3179"
  %"fadd.121" = fadd float %".3180", 0x3ff0000000000000
  %".3181" = bitcast ptr %"R10" to ptr
  store float %"fadd.121", ptr %".3181"
  ; FMUL R11, R11, R8
  %".3184" = load float, ptr %"R11"
  %".3185" = load float, ptr %"R8"
  %"fmul.146" = fmul float %".3184", %".3185"
  %".3186" = bitcast ptr %"R11" to ptr
  store float %"fmul.146", ptr %".3186"
  ; FFMA R9, R10, R9, R11
  %".3189" = load float, ptr %"R10"
  %".3190" = load float, ptr %"R9"
  %".3191" = load float, ptr %"R11"
  %"fmul.147" = fmul float %".3189", %".3190"
  %"fadd.122" = fadd float %"fmul.147", %".3191"
  %".3192" = bitcast ptr %"R9" to ptr
  store float %"fadd.122", ptr %".3192"
  ; STG.E.SYS [R28], R9
  %".3195" = load float, ptr %"R9"
  %".3196" = load i32, ptr %"R28"
  %"zext.324" = zext i32 %".3196" to i64
  %"zext.325" = zext i32 0 to i64
  %"shl.169" = shl i64 %"zext.325", 32
  %"or.161" = or i64 %"shl.169", %"zext.324"
  %".3197" = inttoptr i64 %"or.161" to ptr
  %".3198" = ptrtoint ptr %".3197" to i64
  %".3199" = add i64 %".3198", 0
  %"for_STG" = inttoptr i64 %".3199" to ptr
  store float %".3195", ptr %"for_STG"
  ; @!P3 BRA `(.L_x_22)
  %".3202" = load i1, ptr %"P3"
  %".3203" = icmp eq i1 %".3202", 1
  br i1 %".3203", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".3210" = load i32, ptr %"R15"
  %".3211" = and i32 %".3210", 3
  store i32 %".3211", ptr %"R15"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".3214" = load i32, ptr %"R5"
  %".3215" = and i32 %".3214", 3
  store i32 %".3215", ptr %"R48"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".3218" = load i32, ptr %"R18"
  %".3219" = sub i32 0, %".3218"
  %"add.148" = add i32 %".3219", %"Arg_6"
  %"add.149" = add i32 %"add.148", 0
  store i32 %"add.149", ptr %"R49"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".3222" = icmp ult i32 31, 32
  %"SHF_min.2" = select  i1 %".3222", i32 31, i32 32
  %".3223" = load i32, ptr %"R5"
  %"zext.326" = zext i32 %".3223" to i64
  %"zext.327" = zext i32 0 to i64
  %"zext.328" = zext i32 31 to i64
  %"shl.170" = shl i64 %"zext.326", 32
  %"or.162" = or i64 %"shl.170", %"zext.327"
  %"ashr" = ashr i64 %"or.162", %"zext.328"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.2" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.2", ptr %"R16"
  ; MOV R17, RZ
  %".3226" = load i32, ptr %"RZ"
  store i32 %".3226", ptr %"R17"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".3229" = load i32, ptr %"R18"
  %".3230" = sub i32 0, %".3229"
  %"add.150" = add i32 %".3230", %"Arg_7"
  %"add.151" = add i32 %"add.150", 0
  store i32 %"add.151", ptr %"R18"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".3233" = load i32, ptr %"R15"
  %".3234" = sub i32 0, %".3233"
  %"add.152" = add i32 %".3234", %"Arg_6"
  %"add.153" = add i32 %"add.152", 0
  store i32 %"add.153", ptr %"R19"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".3237" = load i32, ptr %"R48"
  %".3238" = sub i32 0, %".3237"
  %"add.154" = add i32 %".3238", %"Arg_7"
  %"add.155" = add i32 %"add.154", 0
  store i32 %"add.155", ptr %"R20"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".3241" = load i32, ptr %"R49"
  %".3242" = load i1, ptr %"PT"
  %"cmp.27" = icmp sge i32 %".3241", 3
  %".3243" = and i1 %"cmp.27", %".3242"
  ; MOV R13, R17
  %".3245" = load i32, ptr %"R17"
  store i32 %".3245", ptr %"R13"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R4"
  ; IADD3 R17, R17, 0x1, RZ
  %".3250" = load i32, ptr %"R17"
  %"add.156" = add i32 %".3250", 1
  %"add.157" = add i32 %"add.156", 0
  store i32 %"add.157", ptr %"R17"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".3253" = load i32, ptr %"R4"
  %".3254" = load i1, ptr %"PT"
  %"cmp.28" = icmp sge i32 %".3253", 1
  %".3255" = and i1 %"cmp.28", %".3254"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".3257" = load i32, ptr %"R15"
  %".3258" = load i1, ptr %"PT"
  %"cmp.29" = icmp ne i32 %".3257", 0
  %".3259" = and i1 %"cmp.29", %".3258"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".3261" = load i32, ptr %"R17"
  %".3262" = load i1, ptr %"PT"
  %"cmp.30" = icmp sge i32 %".3261", %"Arg_8"
  %".3263" = and i1 %"cmp.30", %".3262"
  ; MOV R21, RZ
  %".3265" = load float, ptr %"RZ"
  %".3266" = bitcast ptr %"R21" to ptr
  store float %".3265", ptr %".3266"
  ; MOV R22, RZ
  %".3269" = load i32, ptr %"RZ"
  store i32 %".3269", ptr %"R22"
  ; MOV R56, RZ
  %".3272" = load float, ptr %"RZ"
  %".3273" = bitcast ptr %"R56" to ptr
  store float %".3272", ptr %".3273"
  ; MOV R44, RZ
  %".3276" = load float, ptr %"RZ"
  %".3277" = bitcast ptr %"R44" to ptr
  store float %".3276", ptr %".3277"
  ; @!P0 BRA `(.L_x_23)
  %".3280" = load i1, ptr %"P0"
  %".3281" = icmp eq i1 %".3280", 1
  br i1 %".3281", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R25"
  ; MOV R21, RZ
  %".3286" = load float, ptr %"RZ"
  %".3287" = bitcast ptr %"R21" to ptr
  store float %".3286", ptr %".3287"
  ; MOV R22, RZ
  %".3290" = load i32, ptr %"RZ"
  store i32 %".3290", ptr %"R22"
  ; MOV R12, R19
  %".3293" = load i32, ptr %"R19"
  store i32 %".3293", ptr %"R12"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".3296" = icmp ult i32 2, 64
  %"SHF_min.3" = select  i1 %".3296", i32 2, i32 64
  %".3297" = load i32, ptr %"R16"
  %".3298" = load i32, ptr %"R25"
  %"zext.329" = zext i32 %".3297" to i64
  %"zext.330" = zext i32 %".3298" to i64
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
  %".3303" = load i32, ptr %"R14"
  %".3304" = load i32, ptr %"R22"
  %"mul.52" = mul i32 %".3303", %"Arg_6"
  %"add.158" = add i32 %"mul.52", %".3304"
  store i32 %"add.158", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".3309" = load i32, ptr %"R13"
  %".3310" = load i32, ptr %"R22"
  %"mul.53" = mul i32 %".3309", %"Arg_6"
  %"add.159" = add i32 %"mul.53", %".3310"
  store i32 %"add.159", ptr %"R10"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".3313" = load i32, ptr %"R6"
  %".3314" = load i32, ptr %"R7"
  %"mul.54" = mul i32 %".3313", %".3314"
  %"add.160" = add i32 %"mul.54", %"Arg_4"
  store i32 %"add.160", ptr %"R4"
  ; LEA R6, R9, R6, 0x1
  %".3317" = load i32, ptr %"R9"
  %".3318" = load i32, ptr %"R6"
  %"shl.173" = shl i32 %".3317", 1
  %"add.161" = add i32 %"shl.173", %".3318"
  store i32 %"add.161", ptr %"R6"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".3321" = load i32, ptr %"R10"
  %".3322" = load i32, ptr %"R7"
  %"mul.55" = mul i32 %".3321", %".3322"
  %"add.162" = add i32 %"mul.55", %"Arg_2"
  store i32 %"add.162", ptr %"R10"
  ; LEA R8, P0, R25, R4, 0x2
  %".3325" = load i1, ptr %"P0"
  %".3326" = sub i1 0, %".3325"
  %".3327" = load i32, ptr %"R25"
  %".3328" = load i32, ptr %"R4"
  %".3329" = sext i1 %".3326" to i32
  %"shl.174" = shl i32 %".3329", %".3328"
  %"add.163" = add i32 %"shl.174", %".3327"
  store i32 %"add.163", ptr %"R8"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".3332" = load i32, ptr %"R6"
  %".3333" = load i32, ptr %"R7"
  %"mul.56" = mul i32 %".3332", %".3333"
  %"add.164" = add i32 %"mul.56", %"Arg_4"
  store i32 %"add.164", ptr %"R6"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".3336" = load i32, ptr %"R5"
  %".3337" = load i32, ptr %"R23"
  %".3338" = load i1, ptr %"P0"
  %".3339" = sub i1 0, %".3338"
  %".3340" = zext i1 %".3339" to i32
  %"add.165" = add i32 %".3336", %".3337"
  %"add.166" = add i32 %"add.165", 0
  %"add.167" = add i32 %"add.166", %".3340"
  store i32 %"add.167", ptr %"R9"
  ; LDG.E.SYS R35, [R4]
  %".3343" = load i32, ptr %"R4"
  %"zext.332" = zext i32 %".3343" to i64
  %".3344" = load i32, ptr %"R5"
  %"zext.333" = zext i32 %".3344" to i64
  %"shl.175" = shl i64 %"zext.333", 32
  %"or.164" = or i64 %"shl.175", %"zext.332"
  %".3345" = inttoptr i64 %"or.164" to ptr
  %".3346" = ptrtoint ptr %".3345" to i64
  %".3347" = add i64 %".3346", 0
  %"for_LDG.159" = inttoptr i64 %".3347" to ptr
  %".3348" = load float, ptr %"for_LDG.159"
  %".3349" = bitcast ptr %"R35" to ptr
  store float %".3348", ptr %".3349"
  ; LDG.E.SYS R24, [R10]
  %".3352" = load i32, ptr %"R10"
  %"zext.334" = zext i32 %".3352" to i64
  %".3353" = load i32, ptr %"R11"
  %"zext.335" = zext i32 %".3353" to i64
  %"shl.176" = shl i64 %"zext.335", 32
  %"or.165" = or i64 %"shl.176", %"zext.334"
  %".3354" = inttoptr i64 %"or.165" to ptr
  %".3355" = ptrtoint ptr %".3354" to i64
  %".3356" = add i64 %".3355", 0
  %"for_LDG.160" = inttoptr i64 %".3356" to ptr
  %".3357" = load float, ptr %"for_LDG.160"
  %".3358" = bitcast ptr %"R24" to ptr
  store float %".3357", ptr %".3358"
  ; LDG.E.SYS R37, [R8]
  %".3361" = load i32, ptr %"R8"
  %"zext.336" = zext i32 %".3361" to i64
  %".3362" = load i32, ptr %"R9"
  %"zext.337" = zext i32 %".3362" to i64
  %"shl.177" = shl i64 %"zext.337", 32
  %"or.166" = or i64 %"shl.177", %"zext.336"
  %".3363" = inttoptr i64 %"or.166" to ptr
  %".3364" = ptrtoint ptr %".3363" to i64
  %".3365" = add i64 %".3364", 0
  %"for_LDG.161" = inttoptr i64 %".3365" to ptr
  %".3366" = load float, ptr %"for_LDG.161"
  %".3367" = bitcast ptr %"R37" to ptr
  store float %".3366", ptr %".3367"
  ; LDG.E.SYS R34, [R6]
  %".3370" = load i32, ptr %"R6"
  %"zext.338" = zext i32 %".3370" to i64
  %".3371" = load i32, ptr %"R7"
  %"zext.339" = zext i32 %".3371" to i64
  %"shl.178" = shl i64 %"zext.339", 32
  %"or.167" = or i64 %"shl.178", %"zext.338"
  %".3372" = inttoptr i64 %"or.167" to ptr
  %".3373" = ptrtoint ptr %".3372" to i64
  %".3374" = add i64 %".3373", 0
  %"for_LDG.162" = inttoptr i64 %".3374" to ptr
  %".3375" = load float, ptr %"for_LDG.162"
  %".3376" = bitcast ptr %"R34" to ptr
  store float %".3375", ptr %".3376"
  ; LDG.E.SYS R36, [R4+0x4]
  %".3379" = load i32, ptr %"R4"
  %"zext.340" = zext i32 %".3379" to i64
  %".3380" = load i32, ptr %"R5"
  %"zext.341" = zext i32 %".3380" to i64
  %"shl.179" = shl i64 %"zext.341", 32
  %"or.168" = or i64 %"shl.179", %"zext.340"
  %".3381" = inttoptr i64 %"or.168" to ptr
  %".3382" = ptrtoint ptr %".3381" to i64
  %".3383" = add i64 %".3382", 4
  %"for_LDG.163" = inttoptr i64 %".3383" to ptr
  %".3384" = load float, ptr %"for_LDG.163"
  %".3385" = bitcast ptr %"R36" to ptr
  store float %".3384", ptr %".3385"
  ; LDG.E.SYS R38, [R10+0x4]
  %".3388" = load i32, ptr %"R10"
  %"zext.342" = zext i32 %".3388" to i64
  %".3389" = load i32, ptr %"R11"
  %"zext.343" = zext i32 %".3389" to i64
  %"shl.180" = shl i64 %"zext.343", 32
  %"or.169" = or i64 %"shl.180", %"zext.342"
  %".3390" = inttoptr i64 %"or.169" to ptr
  %".3391" = ptrtoint ptr %".3390" to i64
  %".3392" = add i64 %".3391", 4
  %"for_LDG.164" = inttoptr i64 %".3392" to ptr
  %".3393" = load float, ptr %"for_LDG.164"
  %".3394" = bitcast ptr %"R38" to ptr
  store float %".3393", ptr %".3394"
  ; LDG.E.SYS R39, [R8+0x4]
  %".3397" = load i32, ptr %"R8"
  %"zext.344" = zext i32 %".3397" to i64
  %".3398" = load i32, ptr %"R9"
  %"zext.345" = zext i32 %".3398" to i64
  %"shl.181" = shl i64 %"zext.345", 32
  %"or.170" = or i64 %"shl.181", %"zext.344"
  %".3399" = inttoptr i64 %"or.170" to ptr
  %".3400" = ptrtoint ptr %".3399" to i64
  %".3401" = add i64 %".3400", 4
  %"for_LDG.165" = inttoptr i64 %".3401" to ptr
  %".3402" = load float, ptr %"for_LDG.165"
  %".3403" = bitcast ptr %"R39" to ptr
  store float %".3402", ptr %".3403"
  ; LDG.E.SYS R41, [R6+0x4]
  %".3406" = load i32, ptr %"R6"
  %"zext.346" = zext i32 %".3406" to i64
  %".3407" = load i32, ptr %"R7"
  %"zext.347" = zext i32 %".3407" to i64
  %"shl.182" = shl i64 %"zext.347", 32
  %"or.171" = or i64 %"shl.182", %"zext.346"
  %".3408" = inttoptr i64 %"or.171" to ptr
  %".3409" = ptrtoint ptr %".3408" to i64
  %".3410" = add i64 %".3409", 4
  %"for_LDG.166" = inttoptr i64 %".3410" to ptr
  %".3411" = load float, ptr %"for_LDG.166"
  %".3412" = bitcast ptr %"R41" to ptr
  store float %".3411", ptr %".3412"
  ; LDG.E.SYS R42, [R10+0x8]
  %".3415" = load i32, ptr %"R10"
  %"zext.348" = zext i32 %".3415" to i64
  %".3416" = load i32, ptr %"R11"
  %"zext.349" = zext i32 %".3416" to i64
  %"shl.183" = shl i64 %"zext.349", 32
  %"or.172" = or i64 %"shl.183", %"zext.348"
  %".3417" = inttoptr i64 %"or.172" to ptr
  %".3418" = ptrtoint ptr %".3417" to i64
  %".3419" = add i64 %".3418", 8
  %"for_LDG.167" = inttoptr i64 %".3419" to ptr
  %".3420" = load float, ptr %"for_LDG.167"
  %".3421" = bitcast ptr %"R42" to ptr
  store float %".3420", ptr %".3421"
  ; LDG.E.SYS R40, [R4+0x8]
  %".3424" = load i32, ptr %"R4"
  %"zext.350" = zext i32 %".3424" to i64
  %".3425" = load i32, ptr %"R5"
  %"zext.351" = zext i32 %".3425" to i64
  %"shl.184" = shl i64 %"zext.351", 32
  %"or.173" = or i64 %"shl.184", %"zext.350"
  %".3426" = inttoptr i64 %"or.173" to ptr
  %".3427" = ptrtoint ptr %".3426" to i64
  %".3428" = add i64 %".3427", 8
  %"for_LDG.168" = inttoptr i64 %".3428" to ptr
  %".3429" = load float, ptr %"for_LDG.168"
  %".3430" = bitcast ptr %"R40" to ptr
  store float %".3429", ptr %".3430"
  ; LDG.E.SYS R43, [R8+0x8]
  %".3433" = load i32, ptr %"R8"
  %"zext.352" = zext i32 %".3433" to i64
  %".3434" = load i32, ptr %"R9"
  %"zext.353" = zext i32 %".3434" to i64
  %"shl.185" = shl i64 %"zext.353", 32
  %"or.174" = or i64 %"shl.185", %"zext.352"
  %".3435" = inttoptr i64 %"or.174" to ptr
  %".3436" = ptrtoint ptr %".3435" to i64
  %".3437" = add i64 %".3436", 8
  %"for_LDG.169" = inttoptr i64 %".3437" to ptr
  %".3438" = load float, ptr %"for_LDG.169"
  %".3439" = bitcast ptr %"R43" to ptr
  store float %".3438", ptr %".3439"
  ; LDG.E.SYS R45, [R6+0x8]
  %".3442" = load i32, ptr %"R6"
  %"zext.354" = zext i32 %".3442" to i64
  %".3443" = load i32, ptr %"R7"
  %"zext.355" = zext i32 %".3443" to i64
  %"shl.186" = shl i64 %"zext.355", 32
  %"or.175" = or i64 %"shl.186", %"zext.354"
  %".3444" = inttoptr i64 %"or.175" to ptr
  %".3445" = ptrtoint ptr %".3444" to i64
  %".3446" = add i64 %".3445", 8
  %"for_LDG.170" = inttoptr i64 %".3446" to ptr
  %".3447" = load float, ptr %"for_LDG.170"
  %".3448" = bitcast ptr %"R45" to ptr
  store float %".3447", ptr %".3448"
  ; LDG.E.SYS R47, [R10+0xc]
  %".3451" = load i32, ptr %"R10"
  %"zext.356" = zext i32 %".3451" to i64
  %".3452" = load i32, ptr %"R11"
  %"zext.357" = zext i32 %".3452" to i64
  %"shl.187" = shl i64 %"zext.357", 32
  %"or.176" = or i64 %"shl.187", %"zext.356"
  %".3453" = inttoptr i64 %"or.176" to ptr
  %".3454" = ptrtoint ptr %".3453" to i64
  %".3455" = add i64 %".3454", 12
  %"for_LDG.171" = inttoptr i64 %".3455" to ptr
  %".3456" = load float, ptr %"for_LDG.171"
  %".3457" = bitcast ptr %"R47" to ptr
  store float %".3456", ptr %".3457"
  ; LDG.E.SYS R46, [R4+0xc]
  %".3460" = load i32, ptr %"R4"
  %"zext.358" = zext i32 %".3460" to i64
  %".3461" = load i32, ptr %"R5"
  %"zext.359" = zext i32 %".3461" to i64
  %"shl.188" = shl i64 %"zext.359", 32
  %"or.177" = or i64 %"shl.188", %"zext.358"
  %".3462" = inttoptr i64 %"or.177" to ptr
  %".3463" = ptrtoint ptr %".3462" to i64
  %".3464" = add i64 %".3463", 12
  %"for_LDG.172" = inttoptr i64 %".3464" to ptr
  %".3465" = load float, ptr %"for_LDG.172"
  %".3466" = bitcast ptr %"R46" to ptr
  store float %".3465", ptr %".3466"
  ; LDG.E.SYS R50, [R8+0xc]
  %".3469" = load i32, ptr %"R8"
  %"zext.360" = zext i32 %".3469" to i64
  %".3470" = load i32, ptr %"R9"
  %"zext.361" = zext i32 %".3470" to i64
  %"shl.189" = shl i64 %"zext.361", 32
  %"or.178" = or i64 %"shl.189", %"zext.360"
  %".3471" = inttoptr i64 %"or.178" to ptr
  %".3472" = ptrtoint ptr %".3471" to i64
  %".3473" = add i64 %".3472", 12
  %"for_LDG.173" = inttoptr i64 %".3473" to ptr
  %".3474" = load float, ptr %"for_LDG.173"
  %".3475" = bitcast ptr %"R50" to ptr
  store float %".3474", ptr %".3475"
  ; LDG.E.SYS R51, [R6+0xc]
  %".3478" = load i32, ptr %"R6"
  %"zext.362" = zext i32 %".3478" to i64
  %".3479" = load i32, ptr %"R7"
  %"zext.363" = zext i32 %".3479" to i64
  %"shl.190" = shl i64 %"zext.363", 32
  %"or.179" = or i64 %"shl.190", %"zext.362"
  %".3480" = inttoptr i64 %"or.179" to ptr
  %".3481" = ptrtoint ptr %".3480" to i64
  %".3482" = add i64 %".3481", 12
  %"for_LDG.174" = inttoptr i64 %".3482" to ptr
  %".3483" = load float, ptr %"for_LDG.174"
  %".3484" = bitcast ptr %"R51" to ptr
  store float %".3483", ptr %".3484"
  ; IADD3 R12, R12, -0x4, RZ
  %".3487" = load i32, ptr %"R12"
  %"add.168" = add i32 %".3487", -4
  %"add.169" = add i32 %"add.168", 0
  store i32 %"add.169", ptr %"R12"
  ; IADD3 R22, R22, 0x4, RZ
  %".3490" = load i32, ptr %"R22"
  %"add.170" = add i32 %".3490", 4
  %"add.171" = add i32 %"add.170", 0
  store i32 %"add.171", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".3493" = load i32, ptr %"R12"
  %".3494" = load i1, ptr %"PT"
  %"cmp.31" = icmp ne i32 %".3493", 0
  %".3495" = and i1 %"cmp.31", %".3494"
  ; FFMA R35, R35, R24, R44
  %".3497" = load float, ptr %"R35"
  %".3498" = load float, ptr %"R24"
  %".3499" = load float, ptr %"R44"
  %"fmul.148" = fmul float %".3497", %".3498"
  %"fadd.123" = fadd float %"fmul.148", %".3499"
  %".3500" = bitcast ptr %"R35" to ptr
  store float %"fadd.123", ptr %".3500"
  ; FFMA R37, R24.reuse, R37, R56
  %".3503" = load float, ptr %"R24"
  %".3504" = load float, ptr %"R37"
  %".3505" = load float, ptr %"R56"
  %"fmul.149" = fmul float %".3503", %".3504"
  %"fadd.124" = fadd float %"fmul.149", %".3505"
  %".3506" = bitcast ptr %"R37" to ptr
  store float %"fadd.124", ptr %".3506"
  ; FFMA R34, R24, R34, R21
  %".3509" = load float, ptr %"R24"
  %".3510" = load float, ptr %"R34"
  %".3511" = load float, ptr %"R21"
  %"fmul.150" = fmul float %".3509", %".3510"
  %"fadd.125" = fadd float %"fmul.150", %".3511"
  %".3512" = bitcast ptr %"R34" to ptr
  store float %"fadd.125", ptr %".3512"
  ; FFMA R35, R36, R38, R35
  %".3515" = load float, ptr %"R36"
  %".3516" = load float, ptr %"R38"
  %".3517" = load float, ptr %"R35"
  %"fmul.151" = fmul float %".3515", %".3516"
  %"fadd.126" = fadd float %"fmul.151", %".3517"
  %".3518" = bitcast ptr %"R35" to ptr
  store float %"fadd.126", ptr %".3518"
  ; FFMA R37, R38, R39, R37
  %".3521" = load float, ptr %"R38"
  %".3522" = load float, ptr %"R39"
  %".3523" = load float, ptr %"R37"
  %"fmul.152" = fmul float %".3521", %".3522"
  %"fadd.127" = fadd float %"fmul.152", %".3523"
  %".3524" = bitcast ptr %"R37" to ptr
  store float %"fadd.127", ptr %".3524"
  ; FFMA R34, R38, R41, R34
  %".3527" = load float, ptr %"R38"
  %".3528" = load float, ptr %"R41"
  %".3529" = load float, ptr %"R34"
  %"fmul.153" = fmul float %".3527", %".3528"
  %"fadd.128" = fadd float %"fmul.153", %".3529"
  %".3530" = bitcast ptr %"R34" to ptr
  store float %"fadd.128", ptr %".3530"
  ; FFMA R35, R40, R42, R35
  %".3533" = load float, ptr %"R40"
  %".3534" = load float, ptr %"R42"
  %".3535" = load float, ptr %"R35"
  %"fmul.154" = fmul float %".3533", %".3534"
  %"fadd.129" = fadd float %"fmul.154", %".3535"
  %".3536" = bitcast ptr %"R35" to ptr
  store float %"fadd.129", ptr %".3536"
  ; FFMA R37, R42.reuse, R43, R37
  %".3539" = load float, ptr %"R42"
  %".3540" = load float, ptr %"R43"
  %".3541" = load float, ptr %"R37"
  %"fmul.155" = fmul float %".3539", %".3540"
  %"fadd.130" = fadd float %"fmul.155", %".3541"
  %".3542" = bitcast ptr %"R37" to ptr
  store float %"fadd.130", ptr %".3542"
  ; FFMA R34, R42, R45, R34
  %".3545" = load float, ptr %"R42"
  %".3546" = load float, ptr %"R45"
  %".3547" = load float, ptr %"R34"
  %"fmul.156" = fmul float %".3545", %".3546"
  %"fadd.131" = fadd float %"fmul.156", %".3547"
  %".3548" = bitcast ptr %"R34" to ptr
  store float %"fadd.131", ptr %".3548"
  ; FFMA R44, R46, R47, R35
  %".3551" = load float, ptr %"R46"
  %".3552" = load float, ptr %"R47"
  %".3553" = load float, ptr %"R35"
  %"fmul.157" = fmul float %".3551", %".3552"
  %"fadd.132" = fadd float %"fmul.157", %".3553"
  %".3554" = bitcast ptr %"R44" to ptr
  store float %"fadd.132", ptr %".3554"
  ; FFMA R56, R47, R50, R37
  %".3557" = load float, ptr %"R47"
  %".3558" = load float, ptr %"R50"
  %".3559" = load float, ptr %"R37"
  %"fmul.158" = fmul float %".3557", %".3558"
  %"fadd.133" = fadd float %"fmul.158", %".3559"
  %".3560" = bitcast ptr %"R56" to ptr
  store float %"fadd.133", ptr %".3560"
  ; FFMA R21, R47, R51, R34
  %".3563" = load float, ptr %"R47"
  %".3564" = load float, ptr %"R51"
  %".3565" = load float, ptr %"R34"
  %"fmul.159" = fmul float %".3563", %".3564"
  %"fadd.134" = fadd float %"fmul.159", %".3565"
  %".3566" = bitcast ptr %"R21" to ptr
  store float %"fadd.134", ptr %".3566"
  ; @P0 BRA `(.L_x_24)
  %".3569" = load i1, ptr %"P0"
  %".3570" = icmp ne i1 %".3569", 1
  br i1 %".3570", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".3573" = load i1, ptr %"P1"
  %".3574" = icmp eq i1 %".3573", 1
  br i1 %".3574", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  %".3579" = load i32, ptr %"R14"
  %".3580" = load i32, ptr %"R22"
  %"mul.57" = mul i32 %".3579", %"Arg_6"
  %"add.172" = add i32 %"mul.57", %".3580"
  store i32 %"add.172", ptr %"R7"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R10"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".3585" = load i32, ptr %"R13"
  %".3586" = load i32, ptr %"R22"
  %"mul.58" = mul i32 %".3585", %"Arg_6"
  %"add.173" = add i32 %"mul.58", %".3586"
  store i32 %"add.173", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_7", ptr %"R9"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".3591" = load i32, ptr %"R7"
  %".3592" = load i32, ptr %"R11"
  %"mul.59" = mul i32 %".3591", %".3592"
  %"add.174" = add i32 %"mul.59", %"Arg_4"
  store i32 %"add.174", ptr %"R4"
  ; LEA R10, R10, R7, 0x1
  %".3595" = load i32, ptr %"R10"
  %".3596" = load i32, ptr %"R7"
  %"shl.191" = shl i32 %".3595", 1
  %"add.175" = add i32 %"shl.191", %".3596"
  store i32 %"add.175", ptr %"R10"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".3599" = load i32, ptr %"R6"
  %".3600" = load i32, ptr %"R11"
  %"mul.60" = mul i32 %".3599", %".3600"
  %"add.176" = add i32 %"mul.60", %"Arg_2"
  store i32 %"add.176", ptr %"R6"
  ; LEA R8, P0, R9, R4, 0x2
  %".3603" = load i1, ptr %"P0"
  %".3604" = sub i1 0, %".3603"
  %".3605" = load i32, ptr %"R9"
  %".3606" = load i32, ptr %"R4"
  %".3607" = sext i1 %".3604" to i32
  %"shl.192" = shl i32 %".3607", %".3606"
  %"add.177" = add i32 %"shl.192", %".3605"
  store i32 %"add.177", ptr %"R8"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".3610" = load i32, ptr %"R10"
  %".3611" = load i32, ptr %"R11"
  %"mul.61" = mul i32 %".3610", %".3611"
  %"add.178" = add i32 %"mul.61", %"Arg_4"
  store i32 %"add.178", ptr %"R10"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".3614" = load i32, ptr %"R9"
  %".3615" = load i32, ptr %"R5"
  %".3616" = load i32, ptr %"R16"
  %"shl.193" = shl i32 %".3614", %".3616"
  %"add.179" = add i32 %"shl.193", %".3615"
  store i32 %"add.179", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".3619" = load i32, ptr %"R4"
  %"zext.364" = zext i32 %".3619" to i64
  %".3620" = load i32, ptr %"R5"
  %"zext.365" = zext i32 %".3620" to i64
  %"shl.194" = shl i64 %"zext.365", 32
  %"or.180" = or i64 %"shl.194", %"zext.364"
  %".3621" = inttoptr i64 %"or.180" to ptr
  %".3622" = ptrtoint ptr %".3621" to i64
  %".3623" = add i64 %".3622", 0
  %"for_LDG.175" = inttoptr i64 %".3623" to ptr
  %".3624" = load float, ptr %"for_LDG.175"
  %".3625" = bitcast ptr %"R13" to ptr
  store float %".3624", ptr %".3625"
  ; LDG.E.SYS R12, [R6]
  %".3628" = load i32, ptr %"R6"
  %"zext.366" = zext i32 %".3628" to i64
  %".3629" = load i32, ptr %"R7"
  %"zext.367" = zext i32 %".3629" to i64
  %"shl.195" = shl i64 %"zext.367", 32
  %"or.181" = or i64 %"shl.195", %"zext.366"
  %".3630" = inttoptr i64 %"or.181" to ptr
  %".3631" = ptrtoint ptr %".3630" to i64
  %".3632" = add i64 %".3631", 0
  %"for_LDG.176" = inttoptr i64 %".3632" to ptr
  %".3633" = load float, ptr %"for_LDG.176"
  %".3634" = bitcast ptr %"R12" to ptr
  store float %".3633", ptr %".3634"
  ; LDG.E.SYS R23, [R8]
  %".3637" = load i32, ptr %"R8"
  %"zext.368" = zext i32 %".3637" to i64
  %".3638" = load i32, ptr %"R9"
  %"zext.369" = zext i32 %".3638" to i64
  %"shl.196" = shl i64 %"zext.369", 32
  %"or.182" = or i64 %"shl.196", %"zext.368"
  %".3639" = inttoptr i64 %"or.182" to ptr
  %".3640" = ptrtoint ptr %".3639" to i64
  %".3641" = add i64 %".3640", 0
  %"for_LDG.177" = inttoptr i64 %".3641" to ptr
  %".3642" = load float, ptr %"for_LDG.177"
  %".3643" = bitcast ptr %"R23" to ptr
  store float %".3642", ptr %".3643"
  ; LDG.E.SYS R22, [R10]
  %".3646" = load i32, ptr %"R10"
  %"zext.370" = zext i32 %".3646" to i64
  %".3647" = load i32, ptr %"R11"
  %"zext.371" = zext i32 %".3647" to i64
  %"shl.197" = shl i64 %"zext.371", 32
  %"or.183" = or i64 %"shl.197", %"zext.370"
  %".3648" = inttoptr i64 %"or.183" to ptr
  %".3649" = ptrtoint ptr %".3648" to i64
  %".3650" = add i64 %".3649", 0
  %"for_LDG.178" = inttoptr i64 %".3650" to ptr
  %".3651" = load float, ptr %"for_LDG.178"
  %".3652" = bitcast ptr %"R22" to ptr
  store float %".3651", ptr %".3652"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".3655" = load i32, ptr %"R15"
  %".3656" = load i1, ptr %"PT"
  %"cmp.32" = icmp ne i32 %".3655", 1
  %".3657" = and i1 %"cmp.32", %".3656"
  ; FFMA R44, R13, R12, R44
  %".3659" = load float, ptr %"R13"
  %".3660" = load float, ptr %"R12"
  %".3661" = load float, ptr %"R44"
  %"fmul.160" = fmul float %".3659", %".3660"
  %"fadd.135" = fadd float %"fmul.160", %".3661"
  %".3662" = bitcast ptr %"R44" to ptr
  store float %"fadd.135", ptr %".3662"
  ; FFMA R56, R12.reuse, R23, R56
  %".3665" = load float, ptr %"R12"
  %".3666" = load float, ptr %"R23"
  %".3667" = load float, ptr %"R56"
  %"fmul.161" = fmul float %".3665", %".3666"
  %"fadd.136" = fadd float %"fmul.161", %".3667"
  %".3668" = bitcast ptr %"R56" to ptr
  store float %"fadd.136", ptr %".3668"
  ; FFMA R21, R12, R22, R21
  %".3671" = load float, ptr %"R12"
  %".3672" = load float, ptr %"R22"
  %".3673" = load float, ptr %"R21"
  %"fmul.162" = fmul float %".3671", %".3672"
  %"fadd.137" = fadd float %"fmul.162", %".3673"
  %".3674" = bitcast ptr %"R21" to ptr
  store float %"fadd.137", ptr %".3674"
  ; @!P0 BRA `(.L_x_25)
  %".3677" = load i1, ptr %"P0"
  %".3678" = icmp eq i1 %".3677", 1
  br i1 %".3678", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".3681" = load i32, ptr %"R15"
  %".3682" = load i1, ptr %"PT"
  %"cmp.33" = icmp ne i32 %".3681", 2
  %".3683" = and i1 %"cmp.33", %".3682"
  ; LDG.E.SYS R13, [R4+0x4]
  %".3685" = load i32, ptr %"R4"
  %"zext.372" = zext i32 %".3685" to i64
  %".3686" = load i32, ptr %"R5"
  %"zext.373" = zext i32 %".3686" to i64
  %"shl.198" = shl i64 %"zext.373", 32
  %"or.184" = or i64 %"shl.198", %"zext.372"
  %".3687" = inttoptr i64 %"or.184" to ptr
  %".3688" = ptrtoint ptr %".3687" to i64
  %".3689" = add i64 %".3688", 4
  %"for_LDG.179" = inttoptr i64 %".3689" to ptr
  %".3690" = load float, ptr %"for_LDG.179"
  %".3691" = bitcast ptr %"R13" to ptr
  store float %".3690", ptr %".3691"
  ; LDG.E.SYS R12, [R6+0x4]
  %".3694" = load i32, ptr %"R6"
  %"zext.374" = zext i32 %".3694" to i64
  %".3695" = load i32, ptr %"R7"
  %"zext.375" = zext i32 %".3695" to i64
  %"shl.199" = shl i64 %"zext.375", 32
  %"or.185" = or i64 %"shl.199", %"zext.374"
  %".3696" = inttoptr i64 %"or.185" to ptr
  %".3697" = ptrtoint ptr %".3696" to i64
  %".3698" = add i64 %".3697", 4
  %"for_LDG.180" = inttoptr i64 %".3698" to ptr
  %".3699" = load float, ptr %"for_LDG.180"
  %".3700" = bitcast ptr %"R12" to ptr
  store float %".3699", ptr %".3700"
  ; LDG.E.SYS R23, [R8+0x4]
  %".3703" = load i32, ptr %"R8"
  %"zext.376" = zext i32 %".3703" to i64
  %".3704" = load i32, ptr %"R9"
  %"zext.377" = zext i32 %".3704" to i64
  %"shl.200" = shl i64 %"zext.377", 32
  %"or.186" = or i64 %"shl.200", %"zext.376"
  %".3705" = inttoptr i64 %"or.186" to ptr
  %".3706" = ptrtoint ptr %".3705" to i64
  %".3707" = add i64 %".3706", 4
  %"for_LDG.181" = inttoptr i64 %".3707" to ptr
  %".3708" = load float, ptr %"for_LDG.181"
  %".3709" = bitcast ptr %"R23" to ptr
  store float %".3708", ptr %".3709"
  ; LDG.E.SYS R22, [R10+0x4]
  %".3712" = load i32, ptr %"R10"
  %"zext.378" = zext i32 %".3712" to i64
  %".3713" = load i32, ptr %"R11"
  %"zext.379" = zext i32 %".3713" to i64
  %"shl.201" = shl i64 %"zext.379", 32
  %"or.187" = or i64 %"shl.201", %"zext.378"
  %".3714" = inttoptr i64 %"or.187" to ptr
  %".3715" = ptrtoint ptr %".3714" to i64
  %".3716" = add i64 %".3715", 4
  %"for_LDG.182" = inttoptr i64 %".3716" to ptr
  %".3717" = load float, ptr %"for_LDG.182"
  %".3718" = bitcast ptr %"R22" to ptr
  store float %".3717", ptr %".3718"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".3721" = load i1, ptr %"P0"
  %".3722" = icmp ne i1 %".3721", 1
  br i1 %".3722", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  %".3725" = load i32, ptr %"R4"
  %"zext.380" = zext i32 %".3725" to i64
  %".3726" = load i32, ptr %"R5"
  %"zext.381" = zext i32 %".3726" to i64
  %"shl.202" = shl i64 %"zext.381", 32
  %"or.188" = or i64 %"shl.202", %"zext.380"
  %".3727" = inttoptr i64 %"or.188" to ptr
  %".3728" = ptrtoint ptr %".3727" to i64
  %".3729" = add i64 %".3728", 8
  %"for_LDG.183" = inttoptr i64 %".3729" to ptr
  %".3730" = load float, ptr %"for_LDG.183"
  %".3731" = bitcast ptr %"R25" to ptr
  store float %".3730", ptr %".3731"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".3736" = load i1, ptr %"P0"
  %".3737" = icmp ne i1 %".3736", 1
  br i1 %".3737", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  %".3740" = load i32, ptr %"R6"
  %"zext.382" = zext i32 %".3740" to i64
  %".3741" = load i32, ptr %"R7"
  %"zext.383" = zext i32 %".3741" to i64
  %"shl.203" = shl i64 %"zext.383", 32
  %"or.189" = or i64 %"shl.203", %"zext.382"
  %".3742" = inttoptr i64 %"or.189" to ptr
  %".3743" = ptrtoint ptr %".3742" to i64
  %".3744" = add i64 %".3743", 8
  %"for_LDG.184" = inttoptr i64 %".3744" to ptr
  %".3745" = load float, ptr %"for_LDG.184"
  %".3746" = bitcast ptr %"R24" to ptr
  store float %".3745", ptr %".3746"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".3751" = load i1, ptr %"P0"
  %".3752" = icmp ne i1 %".3751", 1
  br i1 %".3752", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  %".3755" = load i32, ptr %"R8"
  %"zext.384" = zext i32 %".3755" to i64
  %".3756" = load i32, ptr %"R9"
  %"zext.385" = zext i32 %".3756" to i64
  %"shl.204" = shl i64 %"zext.385", 32
  %"or.190" = or i64 %"shl.204", %"zext.384"
  %".3757" = inttoptr i64 %"or.190" to ptr
  %".3758" = ptrtoint ptr %".3757" to i64
  %".3759" = add i64 %".3758", 8
  %"for_LDG.185" = inttoptr i64 %".3759" to ptr
  %".3760" = load float, ptr %"for_LDG.185"
  %".3761" = bitcast ptr %"R35" to ptr
  store float %".3760", ptr %".3761"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".3766" = load i1, ptr %"P0"
  %".3767" = icmp ne i1 %".3766", 1
  br i1 %".3767", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  %".3770" = load i32, ptr %"R10"
  %"zext.386" = zext i32 %".3770" to i64
  %".3771" = load i32, ptr %"R11"
  %"zext.387" = zext i32 %".3771" to i64
  %"shl.205" = shl i64 %"zext.387", 32
  %"or.191" = or i64 %"shl.205", %"zext.386"
  %".3772" = inttoptr i64 %"or.191" to ptr
  %".3773" = ptrtoint ptr %".3772" to i64
  %".3774" = add i64 %".3773", 8
  %"for_LDG.186" = inttoptr i64 %".3774" to ptr
  %".3775" = load float, ptr %"for_LDG.186"
  %".3776" = bitcast ptr %"R34" to ptr
  store float %".3775", ptr %".3776"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".3781" = load float, ptr %"R13"
  %".3782" = load float, ptr %"R12"
  %".3783" = load float, ptr %"R44"
  %"fmul.163" = fmul float %".3781", %".3782"
  %"fadd.138" = fadd float %"fmul.163", %".3783"
  %".3784" = bitcast ptr %"R44" to ptr
  store float %"fadd.138", ptr %".3784"
  ; FFMA R56, R12.reuse, R23, R56
  %".3787" = load float, ptr %"R12"
  %".3788" = load float, ptr %"R23"
  %".3789" = load float, ptr %"R56"
  %"fmul.164" = fmul float %".3787", %".3788"
  %"fadd.139" = fadd float %"fmul.164", %".3789"
  %".3790" = bitcast ptr %"R56" to ptr
  store float %"fadd.139", ptr %".3790"
  ; FFMA R21, R12, R22, R21
  %".3793" = load float, ptr %"R12"
  %".3794" = load float, ptr %"R22"
  %".3795" = load float, ptr %"R21"
  %"fmul.165" = fmul float %".3793", %".3794"
  %"fadd.140" = fadd float %"fmul.165", %".3795"
  %".3796" = bitcast ptr %"R21" to ptr
  store float %"fadd.140", ptr %".3796"
  ; @P0 FFMA R44, R25, R24, R44
  %".3799" = load i1, ptr %"P0"
  %".3800" = icmp ne i1 %".3799", 1
  br i1 %".3800", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".3803" = load float, ptr %"R25"
  %".3804" = load float, ptr %"R24"
  %".3805" = load float, ptr %"R44"
  %"fmul.166" = fmul float %".3803", %".3804"
  %"fadd.141" = fadd float %"fmul.166", %".3805"
  %".3806" = bitcast ptr %"R44" to ptr
  store float %"fadd.141", ptr %".3806"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".3811" = load i1, ptr %"P0"
  %".3812" = icmp ne i1 %".3811", 1
  br i1 %".3812", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".3815" = load float, ptr %"R24"
  %".3816" = load float, ptr %"R35"
  %".3817" = load float, ptr %"R56"
  %"fmul.167" = fmul float %".3815", %".3816"
  %"fadd.142" = fadd float %"fmul.167", %".3817"
  %".3818" = bitcast ptr %"R56" to ptr
  store float %"fadd.142", ptr %".3818"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".3823" = load i1, ptr %"P0"
  %".3824" = icmp ne i1 %".3823", 1
  br i1 %".3824", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".3827" = load float, ptr %"R24"
  %".3828" = load float, ptr %"R34"
  %".3829" = load float, ptr %"R21"
  %"fmul.168" = fmul float %".3827", %".3828"
  %"fadd.143" = fadd float %"fmul.168", %".3829"
  %".3830" = bitcast ptr %"R21" to ptr
  store float %"fadd.143", ptr %".3830"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".3835" = load i1, ptr %"P4"
  %".3836" = icmp eq i1 %".3835", 1
  br i1 %".3836", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".3839" = load i32, ptr %"R18"
  %".3840" = load i1, ptr %"PT"
  %"cmp.34" = icmp sge i32 %".3839", 3
  %".3841" = and i1 %"cmp.34", %".3840"
  ; MOV R23, RZ
  %".3843" = load i32, ptr %"RZ"
  store i32 %".3843", ptr %"R23"
  ; @!P0 BRA `(.L_x_27)
  %".3846" = load i1, ptr %"P0"
  %".3847" = icmp eq i1 %".3846", 1
  br i1 %".3847", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".3850" = load i32, ptr %"R20"
  %".3851" = load i1, ptr %"PT"
  %"cmp.35" = icmp sgt i32 %".3850", 0
  %".3852" = and i1 %"cmp.35", %".3851"
  ; MOV R23, RZ
  %".3854" = load i32, ptr %"RZ"
  store i32 %".3854", ptr %"R23"
  ; MOV R22, R20
  %".3857" = load i32, ptr %"R20"
  store i32 %".3857", ptr %"R22"
  ; @!P0 BRA `(.L_x_28)
  %".3860" = load i1, ptr %"P0"
  %".3861" = icmp eq i1 %".3860", 1
  br i1 %".3861", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".3864" = load i32, ptr %"R22"
  %".3865" = load i1, ptr %"PT"
  %"cmp.36" = icmp sgt i32 %".3864", 12
  %".3866" = and i1 %"cmp.36", %".3865"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".3868" = and i1 1, 1
  %".3869" = or i1 %".3868", 1
  ; @!P1 BRA `(.L_x_29)
  %".3871" = load i1, ptr %"P1"
  %".3872" = icmp eq i1 %".3871", 1
  br i1 %".3872", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3875" = xor i1 1, 1
  %".3876" = and i1 %".3875", 1
  %".3877" = and i1 %".3876", 1
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".3879" = load i32, ptr %"R0"
  %".3880" = load i32, ptr %"R23"
  %"add.180" = add i32 %".3879", %".3880"
  %"add.181" = add i32 %"add.180", 0
  store i32 %"add.181", ptr %"R25"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".3885" = load i32, ptr %"R2"
  %".3886" = load i32, ptr %"R25"
  %"mul.62" = mul i32 %".3885", 3
  %"add.182" = add i32 %"mul.62", %".3886"
  store i32 %"add.182", ptr %"R35"
  ; LEA R25, R2, R25, 0x2
  %".3889" = load i32, ptr %"R2"
  %".3890" = load i32, ptr %"R25"
  %"shl.206" = shl i32 %".3889", 2
  %"add.183" = add i32 %"shl.206", %".3890"
  store i32 %"add.183", ptr %"R25"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".3893" = load i32, ptr %"R23"
  %".3894" = load i32, ptr %"R24"
  %"mul.63" = mul i32 %".3893", %".3894"
  %"add.184" = add i32 %"mul.63", %"Arg_3"
  store i32 %"add.184", ptr %"R36"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".3897" = load i32, ptr %"R35"
  %".3898" = load i32, ptr %"R24"
  %"mul.64" = mul i32 %".3897", %".3898"
  %"add.185" = add i32 %"mul.64", %"Arg_4"
  store i32 %"add.185", ptr %"R8"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".3901" = load i32, ptr %"R25"
  %".3902" = load i32, ptr %"R24"
  %"mul.65" = mul i32 %".3901", %".3902"
  %"add.186" = add i32 %"mul.65", %"Arg_4"
  store i32 %"add.186", ptr %"R12"
  ; LDG.E.SYS R39, [R36]
  %".3905" = load i32, ptr %"R36"
  %"zext.388" = zext i32 %".3905" to i64
  %".3906" = load i32, ptr %"R37"
  %"zext.389" = zext i32 %".3906" to i64
  %"shl.207" = shl i64 %"zext.389", 32
  %"or.192" = or i64 %"shl.207", %"zext.388"
  %".3907" = inttoptr i64 %"or.192" to ptr
  %".3908" = ptrtoint ptr %".3907" to i64
  %".3909" = add i64 %".3908", 0
  %"for_LDG.187" = inttoptr i64 %".3909" to ptr
  %".3910" = load float, ptr %"for_LDG.187"
  %".3911" = bitcast ptr %"R39" to ptr
  store float %".3910", ptr %".3911"
  ; LDG.E.SYS R41, [R8]
  %".3914" = load i32, ptr %"R8"
  %"zext.390" = zext i32 %".3914" to i64
  %".3915" = load i32, ptr %"R9"
  %"zext.391" = zext i32 %".3915" to i64
  %"shl.208" = shl i64 %"zext.391", 32
  %"or.193" = or i64 %"shl.208", %"zext.390"
  %".3916" = inttoptr i64 %"or.193" to ptr
  %".3917" = ptrtoint ptr %".3916" to i64
  %".3918" = add i64 %".3917", 0
  %"for_LDG.188" = inttoptr i64 %".3918" to ptr
  %".3919" = load float, ptr %"for_LDG.188"
  %".3920" = bitcast ptr %"R41" to ptr
  store float %".3919", ptr %".3920"
  ; LDG.E.SYS R40, [R12]
  %".3923" = load i32, ptr %"R12"
  %"zext.392" = zext i32 %".3923" to i64
  %".3924" = load i32, ptr %"R13"
  %"zext.393" = zext i32 %".3924" to i64
  %"shl.209" = shl i64 %"zext.393", 32
  %"or.194" = or i64 %"shl.209", %"zext.392"
  %".3925" = inttoptr i64 %"or.194" to ptr
  %".3926" = ptrtoint ptr %".3925" to i64
  %".3927" = add i64 %".3926", 0
  %"for_LDG.189" = inttoptr i64 %".3927" to ptr
  %".3928" = load float, ptr %"for_LDG.189"
  %".3929" = bitcast ptr %"R40" to ptr
  store float %".3928", ptr %".3929"
  ; LDG.E.SYS R52, [R36+0x4]
  %".3932" = load i32, ptr %"R36"
  %"zext.394" = zext i32 %".3932" to i64
  %".3933" = load i32, ptr %"R37"
  %"zext.395" = zext i32 %".3933" to i64
  %"shl.210" = shl i64 %"zext.395", 32
  %"or.195" = or i64 %"shl.210", %"zext.394"
  %".3934" = inttoptr i64 %"or.195" to ptr
  %".3935" = ptrtoint ptr %".3934" to i64
  %".3936" = add i64 %".3935", 4
  %"for_LDG.190" = inttoptr i64 %".3936" to ptr
  %".3937" = load float, ptr %"for_LDG.190"
  %".3938" = bitcast ptr %"R52" to ptr
  store float %".3937", ptr %".3938"
  ; LDG.E.SYS R53, [R8+0x4]
  %".3941" = load i32, ptr %"R8"
  %"zext.396" = zext i32 %".3941" to i64
  %".3942" = load i32, ptr %"R9"
  %"zext.397" = zext i32 %".3942" to i64
  %"shl.211" = shl i64 %"zext.397", 32
  %"or.196" = or i64 %"shl.211", %"zext.396"
  %".3943" = inttoptr i64 %"or.196" to ptr
  %".3944" = ptrtoint ptr %".3943" to i64
  %".3945" = add i64 %".3944", 4
  %"for_LDG.191" = inttoptr i64 %".3945" to ptr
  %".3946" = load float, ptr %"for_LDG.191"
  %".3947" = bitcast ptr %"R53" to ptr
  store float %".3946", ptr %".3947"
  ; LDG.E.SYS R55, [R12+0x4]
  %".3950" = load i32, ptr %"R12"
  %"zext.398" = zext i32 %".3950" to i64
  %".3951" = load i32, ptr %"R13"
  %"zext.399" = zext i32 %".3951" to i64
  %"shl.212" = shl i64 %"zext.399", 32
  %"or.197" = or i64 %"shl.212", %"zext.398"
  %".3952" = inttoptr i64 %"or.197" to ptr
  %".3953" = ptrtoint ptr %".3952" to i64
  %".3954" = add i64 %".3953", 4
  %"for_LDG.192" = inttoptr i64 %".3954" to ptr
  %".3955" = load float, ptr %"for_LDG.192"
  %".3956" = bitcast ptr %"R55" to ptr
  store float %".3955", ptr %".3956"
  ; IADD3 R11, R23, 0x4, RZ
  %".3959" = load i32, ptr %"R23"
  %"add.187" = add i32 %".3959", 4
  %"add.188" = add i32 %"add.187", 0
  store i32 %"add.188", ptr %"R11"
  ; LDG.E.SYS R50, [R36+0x8]
  %".3962" = load i32, ptr %"R36"
  %"zext.400" = zext i32 %".3962" to i64
  %".3963" = load i32, ptr %"R37"
  %"zext.401" = zext i32 %".3963" to i64
  %"shl.213" = shl i64 %"zext.401", 32
  %"or.198" = or i64 %"shl.213", %"zext.400"
  %".3964" = inttoptr i64 %"or.198" to ptr
  %".3965" = ptrtoint ptr %".3964" to i64
  %".3966" = add i64 %".3965", 8
  %"for_LDG.193" = inttoptr i64 %".3966" to ptr
  %".3967" = load float, ptr %"for_LDG.193"
  %".3968" = bitcast ptr %"R50" to ptr
  store float %".3967", ptr %".3968"
  ; IADD3 R7, R35, 0x4, RZ
  %".3971" = load i32, ptr %"R35"
  %"add.189" = add i32 %".3971", 4
  %"add.190" = add i32 %"add.189", 0
  store i32 %"add.190", ptr %"R7"
  ; LDG.E.SYS R43, [R8+0x8]
  %".3974" = load i32, ptr %"R8"
  %"zext.402" = zext i32 %".3974" to i64
  %".3975" = load i32, ptr %"R9"
  %"zext.403" = zext i32 %".3975" to i64
  %"shl.214" = shl i64 %"zext.403", 32
  %"or.199" = or i64 %"shl.214", %"zext.402"
  %".3976" = inttoptr i64 %"or.199" to ptr
  %".3977" = ptrtoint ptr %".3976" to i64
  %".3978" = add i64 %".3977", 8
  %"for_LDG.194" = inttoptr i64 %".3978" to ptr
  %".3979" = load float, ptr %"for_LDG.194"
  %".3980" = bitcast ptr %"R43" to ptr
  store float %".3979", ptr %".3980"
  ; IADD3 R5, R25, 0x4, RZ
  %".3983" = load i32, ptr %"R25"
  %"add.191" = add i32 %".3983", 4
  %"add.192" = add i32 %"add.191", 0
  store i32 %"add.192", ptr %"R5"
  ; LDG.E.SYS R51, [R12+0x8]
  %".3986" = load i32, ptr %"R12"
  %"zext.404" = zext i32 %".3986" to i64
  %".3987" = load i32, ptr %"R13"
  %"zext.405" = zext i32 %".3987" to i64
  %"shl.215" = shl i64 %"zext.405", 32
  %"or.200" = or i64 %"shl.215", %"zext.404"
  %".3988" = inttoptr i64 %"or.200" to ptr
  %".3989" = ptrtoint ptr %".3988" to i64
  %".3990" = add i64 %".3989", 8
  %"for_LDG.195" = inttoptr i64 %".3990" to ptr
  %".3991" = load float, ptr %"for_LDG.195"
  %".3992" = bitcast ptr %"R51" to ptr
  store float %".3991", ptr %".3992"
  ; LDG.E.SYS R47, [R36+0xc]
  %".3995" = load i32, ptr %"R36"
  %"zext.406" = zext i32 %".3995" to i64
  %".3996" = load i32, ptr %"R37"
  %"zext.407" = zext i32 %".3996" to i64
  %"shl.216" = shl i64 %"zext.407", 32
  %"or.201" = or i64 %"shl.216", %"zext.406"
  %".3997" = inttoptr i64 %"or.201" to ptr
  %".3998" = ptrtoint ptr %".3997" to i64
  %".3999" = add i64 %".3998", 12
  %"for_LDG.196" = inttoptr i64 %".3999" to ptr
  %".4000" = load float, ptr %"for_LDG.196"
  %".4001" = bitcast ptr %"R47" to ptr
  store float %".4000", ptr %".4001"
  ; LDG.E.SYS R54, [R8+0xc]
  %".4004" = load i32, ptr %"R8"
  %"zext.408" = zext i32 %".4004" to i64
  %".4005" = load i32, ptr %"R9"
  %"zext.409" = zext i32 %".4005" to i64
  %"shl.217" = shl i64 %"zext.409", 32
  %"or.202" = or i64 %"shl.217", %"zext.408"
  %".4006" = inttoptr i64 %"or.202" to ptr
  %".4007" = ptrtoint ptr %".4006" to i64
  %".4008" = add i64 %".4007", 12
  %"for_LDG.197" = inttoptr i64 %".4008" to ptr
  %".4009" = load float, ptr %"for_LDG.197"
  %".4010" = bitcast ptr %"R54" to ptr
  store float %".4009", ptr %".4010"
  ; LDG.E.SYS R58, [R12+0xc]
  %".4013" = load i32, ptr %"R12"
  %"zext.410" = zext i32 %".4013" to i64
  %".4014" = load i32, ptr %"R13"
  %"zext.411" = zext i32 %".4014" to i64
  %"shl.218" = shl i64 %"zext.411", 32
  %"or.203" = or i64 %"shl.218", %"zext.410"
  %".4015" = inttoptr i64 %"or.203" to ptr
  %".4016" = ptrtoint ptr %".4015" to i64
  %".4017" = add i64 %".4016", 12
  %"for_LDG.198" = inttoptr i64 %".4017" to ptr
  %".4018" = load float, ptr %"for_LDG.198"
  %".4019" = bitcast ptr %"R58" to ptr
  store float %".4018", ptr %".4019"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".4022" = load i32, ptr %"R11"
  %".4023" = load i32, ptr %"R24"
  %"mul.66" = mul i32 %".4022", %".4023"
  %"add.193" = add i32 %"mul.66", %"Arg_3"
  store i32 %"add.193", ptr %"R10"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".4026" = load i32, ptr %"R7"
  %".4027" = load i32, ptr %"R24"
  %"mul.67" = mul i32 %".4026", %".4027"
  %"add.194" = add i32 %"mul.67", %"Arg_4"
  store i32 %"add.194", ptr %"R6"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".4030" = load i32, ptr %"R5"
  %".4031" = load i32, ptr %"R24"
  %"mul.68" = mul i32 %".4030", %".4031"
  %"add.195" = add i32 %"mul.68", %"Arg_4"
  store i32 %"add.195", ptr %"R4"
  ; LDG.E.SYS R46, [R10]
  %".4034" = load i32, ptr %"R10"
  %"zext.412" = zext i32 %".4034" to i64
  %".4035" = load i32, ptr %"R11"
  %"zext.413" = zext i32 %".4035" to i64
  %"shl.219" = shl i64 %"zext.413", 32
  %"or.204" = or i64 %"shl.219", %"zext.412"
  %".4036" = inttoptr i64 %"or.204" to ptr
  %".4037" = ptrtoint ptr %".4036" to i64
  %".4038" = add i64 %".4037", 0
  %"for_LDG.199" = inttoptr i64 %".4038" to ptr
  %".4039" = load float, ptr %"for_LDG.199"
  %".4040" = bitcast ptr %"R46" to ptr
  store float %".4039", ptr %".4040"
  ; LDG.E.SYS R42, [R6]
  %".4043" = load i32, ptr %"R6"
  %"zext.414" = zext i32 %".4043" to i64
  %".4044" = load i32, ptr %"R7"
  %"zext.415" = zext i32 %".4044" to i64
  %"shl.220" = shl i64 %"zext.415", 32
  %"or.205" = or i64 %"shl.220", %"zext.414"
  %".4045" = inttoptr i64 %"or.205" to ptr
  %".4046" = ptrtoint ptr %".4045" to i64
  %".4047" = add i64 %".4046", 0
  %"for_LDG.200" = inttoptr i64 %".4047" to ptr
  %".4048" = load float, ptr %"for_LDG.200"
  %".4049" = bitcast ptr %"R42" to ptr
  store float %".4048", ptr %".4049"
  ; LDG.E.SYS R45, [R4]
  %".4052" = load i32, ptr %"R4"
  %"zext.416" = zext i32 %".4052" to i64
  %".4053" = load i32, ptr %"R5"
  %"zext.417" = zext i32 %".4053" to i64
  %"shl.221" = shl i64 %"zext.417", 32
  %"or.206" = or i64 %"shl.221", %"zext.416"
  %".4054" = inttoptr i64 %"or.206" to ptr
  %".4055" = ptrtoint ptr %".4054" to i64
  %".4056" = add i64 %".4055", 0
  %"for_LDG.201" = inttoptr i64 %".4056" to ptr
  %".4057" = load float, ptr %"for_LDG.201"
  %".4058" = bitcast ptr %"R45" to ptr
  store float %".4057", ptr %".4058"
  ; LDG.E.SYS R34, [R10+0x4]
  %".4061" = load i32, ptr %"R10"
  %"zext.418" = zext i32 %".4061" to i64
  %".4062" = load i32, ptr %"R11"
  %"zext.419" = zext i32 %".4062" to i64
  %"shl.222" = shl i64 %"zext.419", 32
  %"or.207" = or i64 %"shl.222", %"zext.418"
  %".4063" = inttoptr i64 %"or.207" to ptr
  %".4064" = ptrtoint ptr %".4063" to i64
  %".4065" = add i64 %".4064", 4
  %"for_LDG.202" = inttoptr i64 %".4065" to ptr
  %".4066" = load float, ptr %"for_LDG.202"
  %".4067" = bitcast ptr %"R34" to ptr
  store float %".4066", ptr %".4067"
  ; LDG.E.SYS R37, [R6+0x4]
  %".4070" = load i32, ptr %"R6"
  %"zext.420" = zext i32 %".4070" to i64
  %".4071" = load i32, ptr %"R7"
  %"zext.421" = zext i32 %".4071" to i64
  %"shl.223" = shl i64 %"zext.421", 32
  %"or.208" = or i64 %"shl.223", %"zext.420"
  %".4072" = inttoptr i64 %"or.208" to ptr
  %".4073" = ptrtoint ptr %".4072" to i64
  %".4074" = add i64 %".4073", 4
  %"for_LDG.203" = inttoptr i64 %".4074" to ptr
  %".4075" = load float, ptr %"for_LDG.203"
  %".4076" = bitcast ptr %"R37" to ptr
  store float %".4075", ptr %".4076"
  ; IADD3 R9, R23, 0x8, RZ
  %".4079" = load i32, ptr %"R23"
  %"add.196" = add i32 %".4079", 8
  %"add.197" = add i32 %"add.196", 0
  store i32 %"add.197", ptr %"R9"
  ; LDG.E.SYS R36, [R10+0x8]
  %".4082" = load i32, ptr %"R10"
  %"zext.422" = zext i32 %".4082" to i64
  %".4083" = load i32, ptr %"R11"
  %"zext.423" = zext i32 %".4083" to i64
  %"shl.224" = shl i64 %"zext.423", 32
  %"or.209" = or i64 %"shl.224", %"zext.422"
  %".4084" = inttoptr i64 %"or.209" to ptr
  %".4085" = ptrtoint ptr %".4084" to i64
  %".4086" = add i64 %".4085", 8
  %"for_LDG.204" = inttoptr i64 %".4086" to ptr
  %".4087" = load float, ptr %"for_LDG.204"
  %".4088" = bitcast ptr %"R36" to ptr
  store float %".4087", ptr %".4088"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".4091" = load i32, ptr %"R9"
  %".4092" = load i32, ptr %"R24"
  %"mul.69" = mul i32 %".4091", %".4092"
  %"add.198" = add i32 %"mul.69", %"Arg_3"
  store i32 %"add.198", ptr %"R8"
  ; LDG.E.SYS R38, [R10+0xc]
  %".4095" = load i32, ptr %"R10"
  %"zext.424" = zext i32 %".4095" to i64
  %".4096" = load i32, ptr %"R11"
  %"zext.425" = zext i32 %".4096" to i64
  %"shl.225" = shl i64 %"zext.425", 32
  %"or.210" = or i64 %"shl.225", %"zext.424"
  %".4097" = inttoptr i64 %"or.210" to ptr
  %".4098" = ptrtoint ptr %".4097" to i64
  %".4099" = add i64 %".4098", 12
  %"for_LDG.205" = inttoptr i64 %".4099" to ptr
  %".4100" = load float, ptr %"for_LDG.205"
  %".4101" = bitcast ptr %"R38" to ptr
  store float %".4100", ptr %".4101"
  ; IADD3 R13, R23, 0xc, RZ
  %".4104" = load i32, ptr %"R23"
  %"add.199" = add i32 %".4104", 12
  %"add.200" = add i32 %"add.199", 0
  store i32 %"add.200", ptr %"R13"
  ; IADD3 R11, R35, 0x8, RZ
  %".4107" = load i32, ptr %"R35"
  %"add.201" = add i32 %".4107", 8
  %"add.202" = add i32 %"add.201", 0
  store i32 %"add.202", ptr %"R11"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".4110" = load i32, ptr %"R13"
  %".4111" = load i32, ptr %"R24"
  %"mul.70" = mul i32 %".4110", %".4111"
  %"add.203" = add i32 %"mul.70", %"Arg_3"
  store i32 %"add.203", ptr %"R12"
  ; FFMA R57, R41, R39, R44
  %".4114" = load float, ptr %"R41"
  %".4115" = load float, ptr %"R39"
  %".4116" = load float, ptr %"R44"
  %"fmul.169" = fmul float %".4114", %".4115"
  %"fadd.144" = fadd float %"fmul.169", %".4116"
  %".4117" = bitcast ptr %"R57" to ptr
  store float %"fadd.144", ptr %".4117"
  ; LDG.E.SYS R41, [R8]
  %".4120" = load i32, ptr %"R8"
  %"zext.426" = zext i32 %".4120" to i64
  %".4121" = load i32, ptr %"R9"
  %"zext.427" = zext i32 %".4121" to i64
  %"shl.226" = shl i64 %"zext.427", 32
  %"or.211" = or i64 %"shl.226", %"zext.426"
  %".4122" = inttoptr i64 %"or.211" to ptr
  %".4123" = ptrtoint ptr %".4122" to i64
  %".4124" = add i64 %".4123", 0
  %"for_LDG.206" = inttoptr i64 %".4124" to ptr
  %".4125" = load float, ptr %"for_LDG.206"
  %".4126" = bitcast ptr %"R41" to ptr
  store float %".4125", ptr %".4126"
  ; FFMA R56, R39, R40, R56
  %".4129" = load float, ptr %"R39"
  %".4130" = load float, ptr %"R40"
  %".4131" = load float, ptr %"R56"
  %"fmul.170" = fmul float %".4129", %".4130"
  %"fadd.145" = fadd float %"fmul.170", %".4131"
  %".4132" = bitcast ptr %"R56" to ptr
  store float %"fadd.145", ptr %".4132"
  ; LDG.E.SYS R40, [R8+0x4]
  %".4135" = load i32, ptr %"R8"
  %"zext.428" = zext i32 %".4135" to i64
  %".4136" = load i32, ptr %"R9"
  %"zext.429" = zext i32 %".4136" to i64
  %"shl.227" = shl i64 %"zext.429", 32
  %"or.212" = or i64 %"shl.227", %"zext.428"
  %".4137" = inttoptr i64 %"or.212" to ptr
  %".4138" = ptrtoint ptr %".4137" to i64
  %".4139" = add i64 %".4138", 4
  %"for_LDG.207" = inttoptr i64 %".4139" to ptr
  %".4140" = load float, ptr %"for_LDG.207"
  %".4141" = bitcast ptr %"R40" to ptr
  store float %".4140", ptr %".4141"
  ; LDG.E.SYS R39, [R8+0x8]
  %".4144" = load i32, ptr %"R8"
  %"zext.430" = zext i32 %".4144" to i64
  %".4145" = load i32, ptr %"R9"
  %"zext.431" = zext i32 %".4145" to i64
  %"shl.228" = shl i64 %"zext.431", 32
  %"or.213" = or i64 %"shl.228", %"zext.430"
  %".4146" = inttoptr i64 %"or.213" to ptr
  %".4147" = ptrtoint ptr %".4146" to i64
  %".4148" = add i64 %".4147", 8
  %"for_LDG.208" = inttoptr i64 %".4148" to ptr
  %".4149" = load float, ptr %"for_LDG.208"
  %".4150" = bitcast ptr %"R39" to ptr
  store float %".4149", ptr %".4150"
  ; FFMA R57, R53, R52, R57
  %".4153" = load float, ptr %"R53"
  %".4154" = load float, ptr %"R52"
  %".4155" = load float, ptr %"R57"
  %"fmul.171" = fmul float %".4153", %".4154"
  %"fadd.146" = fadd float %"fmul.171", %".4155"
  %".4156" = bitcast ptr %"R57" to ptr
  store float %"fadd.146", ptr %".4156"
  ; LDG.E.SYS R44, [R8+0xc]
  %".4159" = load i32, ptr %"R8"
  %"zext.432" = zext i32 %".4159" to i64
  %".4160" = load i32, ptr %"R9"
  %"zext.433" = zext i32 %".4160" to i64
  %"shl.229" = shl i64 %"zext.433", 32
  %"or.214" = or i64 %"shl.229", %"zext.432"
  %".4161" = inttoptr i64 %"or.214" to ptr
  %".4162" = ptrtoint ptr %".4161" to i64
  %".4163" = add i64 %".4162", 12
  %"for_LDG.209" = inttoptr i64 %".4163" to ptr
  %".4164" = load float, ptr %"for_LDG.209"
  %".4165" = bitcast ptr %"R44" to ptr
  store float %".4164", ptr %".4165"
  ; FFMA R59, R52, R55, R56
  %".4168" = load float, ptr %"R52"
  %".4169" = load float, ptr %"R55"
  %".4170" = load float, ptr %"R56"
  %"fmul.172" = fmul float %".4168", %".4169"
  %"fadd.147" = fadd float %"fmul.172", %".4170"
  %".4171" = bitcast ptr %"R59" to ptr
  store float %"fadd.147", ptr %".4171"
  ; LDG.E.SYS R55, [R12]
  %".4174" = load i32, ptr %"R12"
  %"zext.434" = zext i32 %".4174" to i64
  %".4175" = load i32, ptr %"R13"
  %"zext.435" = zext i32 %".4175" to i64
  %"shl.230" = shl i64 %"zext.435", 32
  %"or.215" = or i64 %"shl.230", %"zext.434"
  %".4176" = inttoptr i64 %"or.215" to ptr
  %".4177" = ptrtoint ptr %".4176" to i64
  %".4178" = add i64 %".4177", 0
  %"for_LDG.210" = inttoptr i64 %".4178" to ptr
  %".4179" = load float, ptr %"for_LDG.210"
  %".4180" = bitcast ptr %"R55" to ptr
  store float %".4179", ptr %".4180"
  ; LDG.E.SYS R53, [R12+0x4]
  %".4183" = load i32, ptr %"R12"
  %"zext.436" = zext i32 %".4183" to i64
  %".4184" = load i32, ptr %"R13"
  %"zext.437" = zext i32 %".4184" to i64
  %"shl.231" = shl i64 %"zext.437", 32
  %"or.216" = or i64 %"shl.231", %"zext.436"
  %".4185" = inttoptr i64 %"or.216" to ptr
  %".4186" = ptrtoint ptr %".4185" to i64
  %".4187" = add i64 %".4186", 4
  %"for_LDG.211" = inttoptr i64 %".4187" to ptr
  %".4188" = load float, ptr %"for_LDG.211"
  %".4189" = bitcast ptr %"R53" to ptr
  store float %".4188", ptr %".4189"
  ; FFMA R43, R43, R50, R57
  %".4192" = load float, ptr %"R43"
  %".4193" = load float, ptr %"R50"
  %".4194" = load float, ptr %"R57"
  %"fmul.173" = fmul float %".4192", %".4193"
  %"fadd.148" = fadd float %"fmul.173", %".4194"
  %".4195" = bitcast ptr %"R43" to ptr
  store float %"fadd.148", ptr %".4195"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".4198" = load i32, ptr %"R11"
  %".4199" = load i32, ptr %"R24"
  %"mul.71" = mul i32 %".4198", %".4199"
  %"add.204" = add i32 %"mul.71", %"Arg_4"
  store i32 %"add.204", ptr %"R8"
  ; LDG.E.SYS R52, [R12+0x8]
  %".4202" = load i32, ptr %"R12"
  %"zext.438" = zext i32 %".4202" to i64
  %".4203" = load i32, ptr %"R13"
  %"zext.439" = zext i32 %".4203" to i64
  %"shl.232" = shl i64 %"zext.439", 32
  %"or.217" = or i64 %"shl.232", %"zext.438"
  %".4204" = inttoptr i64 %"or.217" to ptr
  %".4205" = ptrtoint ptr %".4204" to i64
  %".4206" = add i64 %".4205", 8
  %"for_LDG.212" = inttoptr i64 %".4206" to ptr
  %".4207" = load float, ptr %"for_LDG.212"
  %".4208" = bitcast ptr %"R52" to ptr
  store float %".4207", ptr %".4208"
  ; FFMA R51, R50, R51, R59
  %".4211" = load float, ptr %"R50"
  %".4212" = load float, ptr %"R51"
  %".4213" = load float, ptr %"R59"
  %"fmul.174" = fmul float %".4211", %".4212"
  %"fadd.149" = fadd float %"fmul.174", %".4213"
  %".4214" = bitcast ptr %"R51" to ptr
  store float %"fadd.149", ptr %".4214"
  ; IADD3 R57, R25, 0x8, RZ
  %".4217" = load i32, ptr %"R25"
  %"add.205" = add i32 %".4217", 8
  %"add.206" = add i32 %"add.205", 0
  store i32 %"add.206", ptr %"R57"
  ; LDG.E.SYS R59, [R4+0xc]
  %".4220" = load i32, ptr %"R4"
  %"zext.440" = zext i32 %".4220" to i64
  %".4221" = load i32, ptr %"R5"
  %"zext.441" = zext i32 %".4221" to i64
  %"shl.233" = shl i64 %"zext.441", 32
  %"or.218" = or i64 %"shl.233", %"zext.440"
  %".4222" = inttoptr i64 %"or.218" to ptr
  %".4223" = ptrtoint ptr %".4222" to i64
  %".4224" = add i64 %".4223", 12
  %"for_LDG.213" = inttoptr i64 %".4224" to ptr
  %".4225" = load float, ptr %"for_LDG.213"
  %".4226" = bitcast ptr %"R59" to ptr
  store float %".4225", ptr %".4226"
  ; FFMA R61, R54, R47, R43
  %".4229" = load float, ptr %"R54"
  %".4230" = load float, ptr %"R47"
  %".4231" = load float, ptr %"R43"
  %"fmul.175" = fmul float %".4229", %".4230"
  %"fadd.150" = fadd float %"fmul.175", %".4231"
  %".4232" = bitcast ptr %"R61" to ptr
  store float %"fadd.150", ptr %".4232"
  ; LDG.E.SYS R50, [R8]
  %".4235" = load i32, ptr %"R8"
  %"zext.442" = zext i32 %".4235" to i64
  %".4236" = load i32, ptr %"R9"
  %"zext.443" = zext i32 %".4236" to i64
  %"shl.234" = shl i64 %"zext.443", 32
  %"or.219" = or i64 %"shl.234", %"zext.442"
  %".4237" = inttoptr i64 %"or.219" to ptr
  %".4238" = ptrtoint ptr %".4237" to i64
  %".4239" = add i64 %".4238", 0
  %"for_LDG.214" = inttoptr i64 %".4239" to ptr
  %".4240" = load float, ptr %"for_LDG.214"
  %".4241" = bitcast ptr %"R50" to ptr
  store float %".4240", ptr %".4241"
  ; FFMA R58, R47, R58, R51
  %".4244" = load float, ptr %"R47"
  %".4245" = load float, ptr %"R58"
  %".4246" = load float, ptr %"R51"
  %"fmul.176" = fmul float %".4244", %".4245"
  %"fadd.151" = fadd float %"fmul.176", %".4246"
  %".4247" = bitcast ptr %"R58" to ptr
  store float %"fadd.151", ptr %".4247"
  ; LDG.E.SYS R43, [R6+0x8]
  %".4250" = load i32, ptr %"R6"
  %"zext.444" = zext i32 %".4250" to i64
  %".4251" = load i32, ptr %"R7"
  %"zext.445" = zext i32 %".4251" to i64
  %"shl.235" = shl i64 %"zext.445", 32
  %"or.220" = or i64 %"shl.235", %"zext.444"
  %".4252" = inttoptr i64 %"or.220" to ptr
  %".4253" = ptrtoint ptr %".4252" to i64
  %".4254" = add i64 %".4253", 8
  %"for_LDG.215" = inttoptr i64 %".4254" to ptr
  %".4255" = load float, ptr %"for_LDG.215"
  %".4256" = bitcast ptr %"R43" to ptr
  store float %".4255", ptr %".4256"
  ; LDG.E.SYS R47, [R4+0x4]
  %".4259" = load i32, ptr %"R4"
  %"zext.446" = zext i32 %".4259" to i64
  %".4260" = load i32, ptr %"R5"
  %"zext.447" = zext i32 %".4260" to i64
  %"shl.236" = shl i64 %"zext.447", 32
  %"or.221" = or i64 %"shl.236", %"zext.446"
  %".4261" = inttoptr i64 %"or.221" to ptr
  %".4262" = ptrtoint ptr %".4261" to i64
  %".4263" = add i64 %".4262", 4
  %"for_LDG.216" = inttoptr i64 %".4263" to ptr
  %".4264" = load float, ptr %"for_LDG.216"
  %".4265" = bitcast ptr %"R47" to ptr
  store float %".4264", ptr %".4265"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".4268" = load i32, ptr %"R57"
  %".4269" = load i32, ptr %"R24"
  %"mul.72" = mul i32 %".4268", %".4269"
  %"add.207" = add i32 %"mul.72", %"Arg_4"
  store i32 %"add.207", ptr %"R10"
  ; LDG.E.SYS R51, [R4+0x8]
  %".4272" = load i32, ptr %"R4"
  %"zext.448" = zext i32 %".4272" to i64
  %".4273" = load i32, ptr %"R5"
  %"zext.449" = zext i32 %".4273" to i64
  %"shl.237" = shl i64 %"zext.449", 32
  %"or.222" = or i64 %"shl.237", %"zext.448"
  %".4274" = inttoptr i64 %"or.222" to ptr
  %".4275" = ptrtoint ptr %".4274" to i64
  %".4276" = add i64 %".4275", 8
  %"for_LDG.217" = inttoptr i64 %".4276" to ptr
  %".4277" = load float, ptr %"for_LDG.217"
  %".4278" = bitcast ptr %"R51" to ptr
  store float %".4277", ptr %".4278"
  ; LDG.E.SYS R57, [R6+0xc]
  %".4281" = load i32, ptr %"R6"
  %"zext.450" = zext i32 %".4281" to i64
  %".4282" = load i32, ptr %"R7"
  %"zext.451" = zext i32 %".4282" to i64
  %"shl.238" = shl i64 %"zext.451", 32
  %"or.223" = or i64 %"shl.238", %"zext.450"
  %".4283" = inttoptr i64 %"or.223" to ptr
  %".4284" = ptrtoint ptr %".4283" to i64
  %".4285" = add i64 %".4284", 12
  %"for_LDG.218" = inttoptr i64 %".4285" to ptr
  %".4286" = load float, ptr %"for_LDG.218"
  %".4287" = bitcast ptr %"R57" to ptr
  store float %".4286", ptr %".4287"
  ; FFMA R42, R42, R46, R61
  %".4290" = load float, ptr %"R42"
  %".4291" = load float, ptr %"R46"
  %".4292" = load float, ptr %"R61"
  %"fmul.177" = fmul float %".4290", %".4291"
  %"fadd.152" = fadd float %"fmul.177", %".4292"
  %".4293" = bitcast ptr %"R42" to ptr
  store float %"fadd.152", ptr %".4293"
  ; IADD3 R25, R25, 0xc, RZ
  %".4296" = load i32, ptr %"R25"
  %"add.208" = add i32 %".4296", 12
  %"add.209" = add i32 %"add.208", 0
  store i32 %"add.209", ptr %"R25"
  ; LDG.E.SYS R56, [R12+0xc]
  %".4299" = load i32, ptr %"R12"
  %"zext.452" = zext i32 %".4299" to i64
  %".4300" = load i32, ptr %"R13"
  %"zext.453" = zext i32 %".4300" to i64
  %"shl.239" = shl i64 %"zext.453", 32
  %"or.224" = or i64 %"shl.239", %"zext.452"
  %".4301" = inttoptr i64 %"or.224" to ptr
  %".4302" = ptrtoint ptr %".4301" to i64
  %".4303" = add i64 %".4302", 12
  %"for_LDG.219" = inttoptr i64 %".4303" to ptr
  %".4304" = load float, ptr %"for_LDG.219"
  %".4305" = bitcast ptr %"R56" to ptr
  store float %".4304", ptr %".4305"
  ; FFMA R45, R46, R45, R58
  %".4308" = load float, ptr %"R46"
  %".4309" = load float, ptr %"R45"
  %".4310" = load float, ptr %"R58"
  %"fmul.178" = fmul float %".4308", %".4309"
  %"fadd.153" = fadd float %"fmul.178", %".4310"
  %".4311" = bitcast ptr %"R45" to ptr
  store float %"fadd.153", ptr %".4311"
  ; LDG.E.SYS R46, [R10]
  %".4314" = load i32, ptr %"R10"
  %"zext.454" = zext i32 %".4314" to i64
  %".4315" = load i32, ptr %"R11"
  %"zext.455" = zext i32 %".4315" to i64
  %"shl.240" = shl i64 %"zext.455", 32
  %"or.225" = or i64 %"shl.240", %"zext.454"
  %".4316" = inttoptr i64 %"or.225" to ptr
  %".4317" = ptrtoint ptr %".4316" to i64
  %".4318" = add i64 %".4317", 0
  %"for_LDG.220" = inttoptr i64 %".4318" to ptr
  %".4319" = load float, ptr %"for_LDG.220"
  %".4320" = bitcast ptr %"R46" to ptr
  store float %".4319", ptr %".4320"
  ; LDG.E.SYS R61, [R8+0x4]
  %".4323" = load i32, ptr %"R8"
  %"zext.456" = zext i32 %".4323" to i64
  %".4324" = load i32, ptr %"R9"
  %"zext.457" = zext i32 %".4324" to i64
  %"shl.241" = shl i64 %"zext.457", 32
  %"or.226" = or i64 %"shl.241", %"zext.456"
  %".4325" = inttoptr i64 %"or.226" to ptr
  %".4326" = ptrtoint ptr %".4325" to i64
  %".4327" = add i64 %".4326", 4
  %"for_LDG.221" = inttoptr i64 %".4327" to ptr
  %".4328" = load float, ptr %"for_LDG.221"
  %".4329" = bitcast ptr %"R61" to ptr
  store float %".4328", ptr %".4329"
  ; IADD3 R13, R35, 0xc, RZ
  %".4332" = load i32, ptr %"R35"
  %"add.210" = add i32 %".4332", 12
  %"add.211" = add i32 %"add.210", 0
  store i32 %"add.211", ptr %"R13"
  ; LDG.E.SYS R35, [R10+0x4]
  %".4335" = load i32, ptr %"R10"
  %"zext.458" = zext i32 %".4335" to i64
  %".4336" = load i32, ptr %"R11"
  %"zext.459" = zext i32 %".4336" to i64
  %"shl.242" = shl i64 %"zext.459", 32
  %"or.227" = or i64 %"shl.242", %"zext.458"
  %".4337" = inttoptr i64 %"or.227" to ptr
  %".4338" = ptrtoint ptr %".4337" to i64
  %".4339" = add i64 %".4338", 4
  %"for_LDG.222" = inttoptr i64 %".4339" to ptr
  %".4340" = load float, ptr %"for_LDG.222"
  %".4341" = bitcast ptr %"R35" to ptr
  store float %".4340", ptr %".4341"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".4344" = load i32, ptr %"R13"
  %".4345" = load i32, ptr %"R24"
  %"mul.73" = mul i32 %".4344", %".4345"
  %"add.212" = add i32 %"mul.73", %"Arg_4"
  store i32 %"add.212", ptr %"R12"
  ; LDG.E.SYS R6, [R8+0x8]
  %".4348" = load i32, ptr %"R8"
  %"zext.460" = zext i32 %".4348" to i64
  %".4349" = load i32, ptr %"R9"
  %"zext.461" = zext i32 %".4349" to i64
  %"shl.243" = shl i64 %"zext.461", 32
  %"or.228" = or i64 %"shl.243", %"zext.460"
  %".4350" = inttoptr i64 %"or.228" to ptr
  %".4351" = ptrtoint ptr %".4350" to i64
  %".4352" = add i64 %".4351", 8
  %"for_LDG.223" = inttoptr i64 %".4352" to ptr
  %".4353" = load float, ptr %"for_LDG.223"
  %".4354" = bitcast ptr %"R6" to ptr
  store float %".4353", ptr %".4354"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".4357" = load i32, ptr %"R25"
  %".4358" = load i32, ptr %"R24"
  %"mul.74" = mul i32 %".4357", %".4358"
  %"add.213" = add i32 %"mul.74", %"Arg_4"
  store i32 %"add.213", ptr %"R24"
  ; LDG.E.SYS R4, [R10+0x8]
  %".4361" = load i32, ptr %"R10"
  %"zext.462" = zext i32 %".4361" to i64
  %".4362" = load i32, ptr %"R11"
  %"zext.463" = zext i32 %".4362" to i64
  %"shl.244" = shl i64 %"zext.463", 32
  %"or.229" = or i64 %"shl.244", %"zext.462"
  %".4363" = inttoptr i64 %"or.229" to ptr
  %".4364" = ptrtoint ptr %".4363" to i64
  %".4365" = add i64 %".4364", 8
  %"for_LDG.224" = inttoptr i64 %".4365" to ptr
  %".4366" = load float, ptr %"for_LDG.224"
  %".4367" = bitcast ptr %"R4" to ptr
  store float %".4366", ptr %".4367"
  ; LDG.E.SYS R5, [R8+0xc]
  %".4370" = load i32, ptr %"R8"
  %"zext.464" = zext i32 %".4370" to i64
  %".4371" = load i32, ptr %"R9"
  %"zext.465" = zext i32 %".4371" to i64
  %"shl.245" = shl i64 %"zext.465", 32
  %"or.230" = or i64 %"shl.245", %"zext.464"
  %".4372" = inttoptr i64 %"or.230" to ptr
  %".4373" = ptrtoint ptr %".4372" to i64
  %".4374" = add i64 %".4373", 12
  %"for_LDG.225" = inttoptr i64 %".4374" to ptr
  %".4375" = load float, ptr %"for_LDG.225"
  %".4376" = bitcast ptr %"R5" to ptr
  store float %".4375", ptr %".4376"
  ; LDG.E.SYS R60, [R10+0xc]
  %".4379" = load i32, ptr %"R10"
  %"zext.466" = zext i32 %".4379" to i64
  %".4380" = load i32, ptr %"R11"
  %"zext.467" = zext i32 %".4380" to i64
  %"shl.246" = shl i64 %"zext.467", 32
  %"or.231" = or i64 %"shl.246", %"zext.466"
  %".4381" = inttoptr i64 %"or.231" to ptr
  %".4382" = ptrtoint ptr %".4381" to i64
  %".4383" = add i64 %".4382", 12
  %"for_LDG.226" = inttoptr i64 %".4383" to ptr
  %".4384" = load float, ptr %"for_LDG.226"
  %".4385" = bitcast ptr %"R60" to ptr
  store float %".4384", ptr %".4385"
  ; LDG.E.SYS R58, [R12]
  %".4388" = load i32, ptr %"R12"
  %"zext.468" = zext i32 %".4388" to i64
  %".4389" = load i32, ptr %"R13"
  %"zext.469" = zext i32 %".4389" to i64
  %"shl.247" = shl i64 %"zext.469", 32
  %"or.232" = or i64 %"shl.247", %"zext.468"
  %".4390" = inttoptr i64 %"or.232" to ptr
  %".4391" = ptrtoint ptr %".4390" to i64
  %".4392" = add i64 %".4391", 0
  %"for_LDG.227" = inttoptr i64 %".4392" to ptr
  %".4393" = load float, ptr %"for_LDG.227"
  %".4394" = bitcast ptr %"R58" to ptr
  store float %".4393", ptr %".4394"
  ; LDG.E.SYS R54, [R12+0x4]
  %".4397" = load i32, ptr %"R12"
  %"zext.470" = zext i32 %".4397" to i64
  %".4398" = load i32, ptr %"R13"
  %"zext.471" = zext i32 %".4398" to i64
  %"shl.248" = shl i64 %"zext.471", 32
  %"or.233" = or i64 %"shl.248", %"zext.470"
  %".4399" = inttoptr i64 %"or.233" to ptr
  %".4400" = ptrtoint ptr %".4399" to i64
  %".4401" = add i64 %".4400", 4
  %"for_LDG.228" = inttoptr i64 %".4401" to ptr
  %".4402" = load float, ptr %"for_LDG.228"
  %".4403" = bitcast ptr %"R54" to ptr
  store float %".4402", ptr %".4403"
  ; FFMA R10, R37, R34, R42
  %".4406" = load float, ptr %"R37"
  %".4407" = load float, ptr %"R34"
  %".4408" = load float, ptr %"R42"
  %"fmul.179" = fmul float %".4406", %".4407"
  %"fadd.154" = fadd float %"fmul.179", %".4408"
  %".4409" = bitcast ptr %"R10" to ptr
  store float %"fadd.154", ptr %".4409"
  ; LDG.E.SYS R37, [R24]
  %".4412" = load i32, ptr %"R24"
  %"zext.472" = zext i32 %".4412" to i64
  %".4413" = load i32, ptr %"R25"
  %"zext.473" = zext i32 %".4413" to i64
  %"shl.249" = shl i64 %"zext.473", 32
  %"or.234" = or i64 %"shl.249", %"zext.472"
  %".4414" = inttoptr i64 %"or.234" to ptr
  %".4415" = ptrtoint ptr %".4414" to i64
  %".4416" = add i64 %".4415", 0
  %"for_LDG.229" = inttoptr i64 %".4416" to ptr
  %".4417" = load float, ptr %"for_LDG.229"
  %".4418" = bitcast ptr %"R37" to ptr
  store float %".4417", ptr %".4418"
  ; LDG.E.SYS R42, [R24+0x4]
  %".4421" = load i32, ptr %"R24"
  %"zext.474" = zext i32 %".4421" to i64
  %".4422" = load i32, ptr %"R25"
  %"zext.475" = zext i32 %".4422" to i64
  %"shl.250" = shl i64 %"zext.475", 32
  %"or.235" = or i64 %"shl.250", %"zext.474"
  %".4423" = inttoptr i64 %"or.235" to ptr
  %".4424" = ptrtoint ptr %".4423" to i64
  %".4425" = add i64 %".4424", 4
  %"for_LDG.230" = inttoptr i64 %".4425" to ptr
  %".4426" = load float, ptr %"for_LDG.230"
  %".4427" = bitcast ptr %"R42" to ptr
  store float %".4426", ptr %".4427"
  ; LDG.E.SYS R7, [R12+0x8]
  %".4430" = load i32, ptr %"R12"
  %"zext.476" = zext i32 %".4430" to i64
  %".4431" = load i32, ptr %"R13"
  %"zext.477" = zext i32 %".4431" to i64
  %"shl.251" = shl i64 %"zext.477", 32
  %"or.236" = or i64 %"shl.251", %"zext.476"
  %".4432" = inttoptr i64 %"or.236" to ptr
  %".4433" = ptrtoint ptr %".4432" to i64
  %".4434" = add i64 %".4433", 8
  %"for_LDG.231" = inttoptr i64 %".4434" to ptr
  %".4435" = load float, ptr %"for_LDG.231"
  %".4436" = bitcast ptr %"R7" to ptr
  store float %".4435", ptr %".4436"
  ; LDG.E.SYS R9, [R24+0x8]
  %".4439" = load i32, ptr %"R24"
  %"zext.478" = zext i32 %".4439" to i64
  %".4440" = load i32, ptr %"R25"
  %"zext.479" = zext i32 %".4440" to i64
  %"shl.252" = shl i64 %"zext.479", 32
  %"or.237" = or i64 %"shl.252", %"zext.478"
  %".4441" = inttoptr i64 %"or.237" to ptr
  %".4442" = ptrtoint ptr %".4441" to i64
  %".4443" = add i64 %".4442", 8
  %"for_LDG.232" = inttoptr i64 %".4443" to ptr
  %".4444" = load float, ptr %"for_LDG.232"
  %".4445" = bitcast ptr %"R9" to ptr
  store float %".4444", ptr %".4445"
  ; LDG.E.SYS R8, [R24+0xc]
  %".4448" = load i32, ptr %"R24"
  %"zext.480" = zext i32 %".4448" to i64
  %".4449" = load i32, ptr %"R25"
  %"zext.481" = zext i32 %".4449" to i64
  %"shl.253" = shl i64 %"zext.481", 32
  %"or.238" = or i64 %"shl.253", %"zext.480"
  %".4450" = inttoptr i64 %"or.238" to ptr
  %".4451" = ptrtoint ptr %".4450" to i64
  %".4452" = add i64 %".4451", 12
  %"for_LDG.233" = inttoptr i64 %".4452" to ptr
  %".4453" = load float, ptr %"for_LDG.233"
  %".4454" = bitcast ptr %"R8" to ptr
  store float %".4453", ptr %".4454"
  ; LDG.E.SYS R13, [R12+0xc]
  %".4457" = load i32, ptr %"R12"
  %"zext.482" = zext i32 %".4457" to i64
  %".4458" = load i32, ptr %"R13"
  %"zext.483" = zext i32 %".4458" to i64
  %"shl.254" = shl i64 %"zext.483", 32
  %"or.239" = or i64 %"shl.254", %"zext.482"
  %".4459" = inttoptr i64 %"or.239" to ptr
  %".4460" = ptrtoint ptr %".4459" to i64
  %".4461" = add i64 %".4460", 12
  %"for_LDG.234" = inttoptr i64 %".4461" to ptr
  %".4462" = load float, ptr %"for_LDG.234"
  %".4463" = bitcast ptr %"R13" to ptr
  store float %".4462", ptr %".4463"
  ; IADD3 R22, R22, -0x10, RZ
  %".4466" = load i32, ptr %"R22"
  %"add.214" = add i32 %".4466", -16
  %"add.215" = add i32 %"add.214", 0
  store i32 %"add.215", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".4469" = load i32, ptr %"R22"
  %".4470" = load i1, ptr %"PT"
  %"cmp.37" = icmp sgt i32 %".4469", 12
  %".4471" = and i1 %"cmp.37", %".4470"
  ; IADD3 R23, R23, 0x10, RZ
  %".4473" = load i32, ptr %"R23"
  %"add.216" = add i32 %".4473", 16
  %"add.217" = add i32 %"add.216", 0
  store i32 %"add.217", ptr %"R23"
  ; FFMA R10, R43, R36, R10
  %".4476" = load float, ptr %"R43"
  %".4477" = load float, ptr %"R36"
  %".4478" = load float, ptr %"R10"
  %"fmul.180" = fmul float %".4476", %".4477"
  %"fadd.155" = fadd float %"fmul.180", %".4478"
  %".4479" = bitcast ptr %"R10" to ptr
  store float %"fadd.155", ptr %".4479"
  ; FFMA R45, R34, R47, R45
  %".4482" = load float, ptr %"R34"
  %".4483" = load float, ptr %"R47"
  %".4484" = load float, ptr %"R45"
  %"fmul.181" = fmul float %".4482", %".4483"
  %"fadd.156" = fadd float %"fmul.181", %".4484"
  %".4485" = bitcast ptr %"R45" to ptr
  store float %"fadd.156", ptr %".4485"
  ; FFMA R45, R36, R51, R45
  %".4488" = load float, ptr %"R36"
  %".4489" = load float, ptr %"R51"
  %".4490" = load float, ptr %"R45"
  %"fmul.182" = fmul float %".4488", %".4489"
  %"fadd.157" = fadd float %"fmul.182", %".4490"
  %".4491" = bitcast ptr %"R45" to ptr
  store float %"fadd.157", ptr %".4491"
  ; FFMA R10, R57, R38, R10
  %".4494" = load float, ptr %"R57"
  %".4495" = load float, ptr %"R38"
  %".4496" = load float, ptr %"R10"
  %"fmul.183" = fmul float %".4494", %".4495"
  %"fadd.158" = fadd float %"fmul.183", %".4496"
  %".4497" = bitcast ptr %"R10" to ptr
  store float %"fadd.158", ptr %".4497"
  ; FFMA R45, R38, R59, R45
  %".4500" = load float, ptr %"R38"
  %".4501" = load float, ptr %"R59"
  %".4502" = load float, ptr %"R45"
  %"fmul.184" = fmul float %".4500", %".4501"
  %"fadd.159" = fadd float %"fmul.184", %".4502"
  %".4503" = bitcast ptr %"R45" to ptr
  store float %"fadd.159", ptr %".4503"
  ; FFMA R10, R50, R41, R10
  %".4506" = load float, ptr %"R50"
  %".4507" = load float, ptr %"R41"
  %".4508" = load float, ptr %"R10"
  %"fmul.185" = fmul float %".4506", %".4507"
  %"fadd.160" = fadd float %"fmul.185", %".4508"
  %".4509" = bitcast ptr %"R10" to ptr
  store float %"fadd.160", ptr %".4509"
  ; FFMA R45, R41, R46, R45
  %".4512" = load float, ptr %"R41"
  %".4513" = load float, ptr %"R46"
  %".4514" = load float, ptr %"R45"
  %"fmul.186" = fmul float %".4512", %".4513"
  %"fadd.161" = fadd float %"fmul.186", %".4514"
  %".4515" = bitcast ptr %"R45" to ptr
  store float %"fadd.161", ptr %".4515"
  ; FFMA R10, R61, R40, R10
  %".4518" = load float, ptr %"R61"
  %".4519" = load float, ptr %"R40"
  %".4520" = load float, ptr %"R10"
  %"fmul.187" = fmul float %".4518", %".4519"
  %"fadd.162" = fadd float %"fmul.187", %".4520"
  %".4521" = bitcast ptr %"R10" to ptr
  store float %"fadd.162", ptr %".4521"
  ; FFMA R35, R40, R35, R45
  %".4524" = load float, ptr %"R40"
  %".4525" = load float, ptr %"R35"
  %".4526" = load float, ptr %"R45"
  %"fmul.188" = fmul float %".4524", %".4525"
  %"fadd.163" = fadd float %"fmul.188", %".4526"
  %".4527" = bitcast ptr %"R35" to ptr
  store float %"fadd.163", ptr %".4527"
  ; FFMA R6, R6, R39, R10
  %".4530" = load float, ptr %"R6"
  %".4531" = load float, ptr %"R39"
  %".4532" = load float, ptr %"R10"
  %"fmul.189" = fmul float %".4530", %".4531"
  %"fadd.164" = fadd float %"fmul.189", %".4532"
  %".4533" = bitcast ptr %"R6" to ptr
  store float %"fadd.164", ptr %".4533"
  ; FFMA R35, R39, R4, R35
  %".4536" = load float, ptr %"R39"
  %".4537" = load float, ptr %"R4"
  %".4538" = load float, ptr %"R35"
  %"fmul.190" = fmul float %".4536", %".4537"
  %"fadd.165" = fadd float %"fmul.190", %".4538"
  %".4539" = bitcast ptr %"R35" to ptr
  store float %"fadd.165", ptr %".4539"
  ; FFMA R5, R5, R44, R6
  %".4542" = load float, ptr %"R5"
  %".4543" = load float, ptr %"R44"
  %".4544" = load float, ptr %"R6"
  %"fmul.191" = fmul float %".4542", %".4543"
  %"fadd.166" = fadd float %"fmul.191", %".4544"
  %".4545" = bitcast ptr %"R5" to ptr
  store float %"fadd.166", ptr %".4545"
  ; FFMA R60, R44, R60, R35
  %".4548" = load float, ptr %"R44"
  %".4549" = load float, ptr %"R60"
  %".4550" = load float, ptr %"R35"
  %"fmul.192" = fmul float %".4548", %".4549"
  %"fadd.167" = fadd float %"fmul.192", %".4550"
  %".4551" = bitcast ptr %"R60" to ptr
  store float %"fadd.167", ptr %".4551"
  ; FFMA R5, R58, R55, R5
  %".4554" = load float, ptr %"R58"
  %".4555" = load float, ptr %"R55"
  %".4556" = load float, ptr %"R5"
  %"fmul.193" = fmul float %".4554", %".4555"
  %"fadd.168" = fadd float %"fmul.193", %".4556"
  %".4557" = bitcast ptr %"R5" to ptr
  store float %"fadd.168", ptr %".4557"
  ; FFMA R5, R54, R53, R5
  %".4560" = load float, ptr %"R54"
  %".4561" = load float, ptr %"R53"
  %".4562" = load float, ptr %"R5"
  %"fmul.194" = fmul float %".4560", %".4561"
  %"fadd.169" = fadd float %"fmul.194", %".4562"
  %".4563" = bitcast ptr %"R5" to ptr
  store float %"fadd.169", ptr %".4563"
  ; FFMA R37, R55, R37, R60
  %".4566" = load float, ptr %"R55"
  %".4567" = load float, ptr %"R37"
  %".4568" = load float, ptr %"R60"
  %"fmul.195" = fmul float %".4566", %".4567"
  %"fadd.170" = fadd float %"fmul.195", %".4568"
  %".4569" = bitcast ptr %"R37" to ptr
  store float %"fadd.170", ptr %".4569"
  ; FFMA R37, R53, R42, R37
  %".4572" = load float, ptr %"R53"
  %".4573" = load float, ptr %"R42"
  %".4574" = load float, ptr %"R37"
  %"fmul.196" = fmul float %".4572", %".4573"
  %"fadd.171" = fadd float %"fmul.196", %".4574"
  %".4575" = bitcast ptr %"R37" to ptr
  store float %"fadd.171", ptr %".4575"
  ; FFMA R5, R7, R52, R5
  %".4578" = load float, ptr %"R7"
  %".4579" = load float, ptr %"R52"
  %".4580" = load float, ptr %"R5"
  %"fmul.197" = fmul float %".4578", %".4579"
  %"fadd.172" = fadd float %"fmul.197", %".4580"
  %".4581" = bitcast ptr %"R5" to ptr
  store float %"fadd.172", ptr %".4581"
  ; FFMA R9, R52, R9, R37
  %".4584" = load float, ptr %"R52"
  %".4585" = load float, ptr %"R9"
  %".4586" = load float, ptr %"R37"
  %"fmul.198" = fmul float %".4584", %".4585"
  %"fadd.173" = fadd float %"fmul.198", %".4586"
  %".4587" = bitcast ptr %"R9" to ptr
  store float %"fadd.173", ptr %".4587"
  ; FFMA R44, R13, R56, R5
  %".4590" = load float, ptr %"R13"
  %".4591" = load float, ptr %"R56"
  %".4592" = load float, ptr %"R5"
  %"fmul.199" = fmul float %".4590", %".4591"
  %"fadd.174" = fadd float %"fmul.199", %".4592"
  %".4593" = bitcast ptr %"R44" to ptr
  store float %"fadd.174", ptr %".4593"
  ; FFMA R56, R56, R8, R9
  %".4596" = load float, ptr %"R56"
  %".4597" = load float, ptr %"R8"
  %".4598" = load float, ptr %"R9"
  %"fmul.200" = fmul float %".4596", %".4597"
  %"fadd.175" = fadd float %"fmul.200", %".4598"
  %".4599" = bitcast ptr %"R56" to ptr
  store float %"fadd.175", ptr %".4599"
  ; @P1 BRA `(.L_x_30)
  %".4602" = load i1, ptr %"P1"
  %".4603" = icmp ne i1 %".4602", 1
  br i1 %".4603", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".4606" = load i32, ptr %"R22"
  %".4607" = load i1, ptr %"PT"
  %"cmp.38" = icmp sgt i32 %".4606", 4
  %".4608" = and i1 %"cmp.38", %".4607"
  ; @!P1 BRA `(.L_x_31)
  %".4610" = load i1, ptr %"P1"
  %".4611" = icmp eq i1 %".4610", 1
  br i1 %".4611", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".4614" = load i32, ptr %"R0"
  %".4615" = load i32, ptr %"R23"
  %"add.218" = add i32 %".4614", %".4615"
  %"add.219" = add i32 %"add.218", 0
  store i32 %"add.219", ptr %"R5"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25"
  ; LEA R13, R2.reuse, R5, 0x2
  %".4620" = load i32, ptr %"R2"
  %".4621" = load i32, ptr %"R5"
  %"shl.255" = shl i32 %".4620", 2
  %"add.220" = add i32 %"shl.255", %".4621"
  store i32 %"add.220", ptr %"R13"
  ; IMAD R12, R2, 0x3, R5
  %".4624" = load i32, ptr %"R2"
  %".4625" = load i32, ptr %"R5"
  %"mul.75" = mul i32 %".4624", 3
  %"add.221" = add i32 %"mul.75", %".4625"
  store i32 %"add.221", ptr %"R12"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".4628" = load i32, ptr %"R23"
  %"add.222" = add i32 %".4628", 4
  %"add.223" = add i32 %"add.222", 0
  store i32 %"add.223", ptr %"R6"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".4631" = load i32, ptr %"R23"
  %".4632" = load i32, ptr %"R25"
  %"mul.76" = mul i32 %".4631", %".4632"
  %"add.224" = add i32 %"mul.76", %"Arg_3"
  store i32 %"add.224", ptr %"R8"
  ; IADD3 R24, R13, 0x4, RZ
  %".4635" = load i32, ptr %"R13"
  %"add.225" = add i32 %".4635", 4
  %"add.226" = add i32 %"add.225", 0
  store i32 %"add.226", ptr %"R24"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".4638" = load i32, ptr %"R12"
  %".4639" = load i32, ptr %"R25"
  %"mul.77" = mul i32 %".4638", %".4639"
  %"add.227" = add i32 %"mul.77", %"Arg_4"
  store i32 %"add.227", ptr %"R4"
  ; IADD3 R12, R12, 0x4, RZ
  %".4642" = load i32, ptr %"R12"
  %"add.228" = add i32 %".4642", 4
  %"add.229" = add i32 %"add.228", 0
  store i32 %"add.229", ptr %"R12"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".4645" = load i32, ptr %"R13"
  %".4646" = load i32, ptr %"R25"
  %"mul.78" = mul i32 %".4645", %".4646"
  %"add.230" = add i32 %"mul.78", %"Arg_4"
  store i32 %"add.230", ptr %"R10"
  ; LDG.E.SYS R43, [R8]
  %".4649" = load i32, ptr %"R8"
  %"zext.484" = zext i32 %".4649" to i64
  %".4650" = load i32, ptr %"R9"
  %"zext.485" = zext i32 %".4650" to i64
  %"shl.256" = shl i64 %"zext.485", 32
  %"or.240" = or i64 %"shl.256", %"zext.484"
  %".4651" = inttoptr i64 %"or.240" to ptr
  %".4652" = ptrtoint ptr %".4651" to i64
  %".4653" = add i64 %".4652", 0
  %"for_LDG.235" = inttoptr i64 %".4653" to ptr
  %".4654" = load float, ptr %"for_LDG.235"
  %".4655" = bitcast ptr %"R43" to ptr
  store float %".4654", ptr %".4655"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".4658" = load i32, ptr %"R6"
  %".4659" = load i32, ptr %"R25"
  %"mul.79" = mul i32 %".4658", %".4659"
  %"add.231" = add i32 %"mul.79", %"Arg_3"
  store i32 %"add.231", ptr %"R6"
  ; LDG.E.SYS R52, [R4]
  %".4662" = load i32, ptr %"R4"
  %"zext.486" = zext i32 %".4662" to i64
  %".4663" = load i32, ptr %"R5"
  %"zext.487" = zext i32 %".4663" to i64
  %"shl.257" = shl i64 %"zext.487", 32
  %"or.241" = or i64 %"shl.257", %"zext.486"
  %".4664" = inttoptr i64 %"or.241" to ptr
  %".4665" = ptrtoint ptr %".4664" to i64
  %".4666" = add i64 %".4665", 0
  %"for_LDG.236" = inttoptr i64 %".4666" to ptr
  %".4667" = load float, ptr %"for_LDG.236"
  %".4668" = bitcast ptr %"R52" to ptr
  store float %".4667", ptr %".4668"
  ; LDG.E.SYS R38, [R10]
  %".4671" = load i32, ptr %"R10"
  %"zext.488" = zext i32 %".4671" to i64
  %".4672" = load i32, ptr %"R11"
  %"zext.489" = zext i32 %".4672" to i64
  %"shl.258" = shl i64 %"zext.489", 32
  %"or.242" = or i64 %"shl.258", %"zext.488"
  %".4673" = inttoptr i64 %"or.242" to ptr
  %".4674" = ptrtoint ptr %".4673" to i64
  %".4675" = add i64 %".4674", 0
  %"for_LDG.237" = inttoptr i64 %".4675" to ptr
  %".4676" = load float, ptr %"for_LDG.237"
  %".4677" = bitcast ptr %"R38" to ptr
  store float %".4676", ptr %".4677"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".4680" = load i32, ptr %"R12"
  %".4681" = load i32, ptr %"R25"
  %"mul.80" = mul i32 %".4680", %".4681"
  %"add.232" = add i32 %"mul.80", %"Arg_4"
  store i32 %"add.232", ptr %"R12"
  ; LDG.E.SYS R36, [R8+0x4]
  %".4684" = load i32, ptr %"R8"
  %"zext.490" = zext i32 %".4684" to i64
  %".4685" = load i32, ptr %"R9"
  %"zext.491" = zext i32 %".4685" to i64
  %"shl.259" = shl i64 %"zext.491", 32
  %"or.243" = or i64 %"shl.259", %"zext.490"
  %".4686" = inttoptr i64 %"or.243" to ptr
  %".4687" = ptrtoint ptr %".4686" to i64
  %".4688" = add i64 %".4687", 4
  %"for_LDG.238" = inttoptr i64 %".4688" to ptr
  %".4689" = load float, ptr %"for_LDG.238"
  %".4690" = bitcast ptr %"R36" to ptr
  store float %".4689", ptr %".4690"
  ; LDG.E.SYS R41, [R4+0x4]
  %".4693" = load i32, ptr %"R4"
  %"zext.492" = zext i32 %".4693" to i64
  %".4694" = load i32, ptr %"R5"
  %"zext.493" = zext i32 %".4694" to i64
  %"shl.260" = shl i64 %"zext.493", 32
  %"or.244" = or i64 %"shl.260", %"zext.492"
  %".4695" = inttoptr i64 %"or.244" to ptr
  %".4696" = ptrtoint ptr %".4695" to i64
  %".4697" = add i64 %".4696", 4
  %"for_LDG.239" = inttoptr i64 %".4697" to ptr
  %".4698" = load float, ptr %"for_LDG.239"
  %".4699" = bitcast ptr %"R41" to ptr
  store float %".4698", ptr %".4699"
  ; LDG.E.SYS R39, [R10+0x4]
  %".4702" = load i32, ptr %"R10"
  %"zext.494" = zext i32 %".4702" to i64
  %".4703" = load i32, ptr %"R11"
  %"zext.495" = zext i32 %".4703" to i64
  %"shl.261" = shl i64 %"zext.495", 32
  %"or.245" = or i64 %"shl.261", %"zext.494"
  %".4704" = inttoptr i64 %"or.245" to ptr
  %".4705" = ptrtoint ptr %".4704" to i64
  %".4706" = add i64 %".4705", 4
  %"for_LDG.240" = inttoptr i64 %".4706" to ptr
  %".4707" = load float, ptr %"for_LDG.240"
  %".4708" = bitcast ptr %"R39" to ptr
  store float %".4707", ptr %".4708"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".4711" = load i32, ptr %"R24"
  %".4712" = load i32, ptr %"R25"
  %"mul.81" = mul i32 %".4711", %".4712"
  %"add.233" = add i32 %"mul.81", %"Arg_4"
  store i32 %"add.233", ptr %"R24"
  ; LDG.E.SYS R34, [R8+0x8]
  %".4715" = load i32, ptr %"R8"
  %"zext.496" = zext i32 %".4715" to i64
  %".4716" = load i32, ptr %"R9"
  %"zext.497" = zext i32 %".4716" to i64
  %"shl.262" = shl i64 %"zext.497", 32
  %"or.246" = or i64 %"shl.262", %"zext.496"
  %".4717" = inttoptr i64 %"or.246" to ptr
  %".4718" = ptrtoint ptr %".4717" to i64
  %".4719" = add i64 %".4718", 8
  %"for_LDG.241" = inttoptr i64 %".4719" to ptr
  %".4720" = load float, ptr %"for_LDG.241"
  %".4721" = bitcast ptr %"R34" to ptr
  store float %".4720", ptr %".4721"
  ; LDG.E.SYS R37, [R4+0x8]
  %".4724" = load i32, ptr %"R4"
  %"zext.498" = zext i32 %".4724" to i64
  %".4725" = load i32, ptr %"R5"
  %"zext.499" = zext i32 %".4725" to i64
  %"shl.263" = shl i64 %"zext.499", 32
  %"or.247" = or i64 %"shl.263", %"zext.498"
  %".4726" = inttoptr i64 %"or.247" to ptr
  %".4727" = ptrtoint ptr %".4726" to i64
  %".4728" = add i64 %".4727", 8
  %"for_LDG.242" = inttoptr i64 %".4728" to ptr
  %".4729" = load float, ptr %"for_LDG.242"
  %".4730" = bitcast ptr %"R37" to ptr
  store float %".4729", ptr %".4730"
  ; LDG.E.SYS R35, [R10+0x8]
  %".4733" = load i32, ptr %"R10"
  %"zext.500" = zext i32 %".4733" to i64
  %".4734" = load i32, ptr %"R11"
  %"zext.501" = zext i32 %".4734" to i64
  %"shl.264" = shl i64 %"zext.501", 32
  %"or.248" = or i64 %"shl.264", %"zext.500"
  %".4735" = inttoptr i64 %"or.248" to ptr
  %".4736" = ptrtoint ptr %".4735" to i64
  %".4737" = add i64 %".4736", 8
  %"for_LDG.243" = inttoptr i64 %".4737" to ptr
  %".4738" = load float, ptr %"for_LDG.243"
  %".4739" = bitcast ptr %"R35" to ptr
  store float %".4738", ptr %".4739"
  ; LDG.E.SYS R40, [R8+0xc]
  %".4742" = load i32, ptr %"R8"
  %"zext.502" = zext i32 %".4742" to i64
  %".4743" = load i32, ptr %"R9"
  %"zext.503" = zext i32 %".4743" to i64
  %"shl.265" = shl i64 %"zext.503", 32
  %"or.249" = or i64 %"shl.265", %"zext.502"
  %".4744" = inttoptr i64 %"or.249" to ptr
  %".4745" = ptrtoint ptr %".4744" to i64
  %".4746" = add i64 %".4745", 12
  %"for_LDG.244" = inttoptr i64 %".4746" to ptr
  %".4747" = load float, ptr %"for_LDG.244"
  %".4748" = bitcast ptr %"R40" to ptr
  store float %".4747", ptr %".4748"
  ; LDG.E.SYS R45, [R4+0xc]
  %".4751" = load i32, ptr %"R4"
  %"zext.504" = zext i32 %".4751" to i64
  %".4752" = load i32, ptr %"R5"
  %"zext.505" = zext i32 %".4752" to i64
  %"shl.266" = shl i64 %"zext.505", 32
  %"or.250" = or i64 %"shl.266", %"zext.504"
  %".4753" = inttoptr i64 %"or.250" to ptr
  %".4754" = ptrtoint ptr %".4753" to i64
  %".4755" = add i64 %".4754", 12
  %"for_LDG.245" = inttoptr i64 %".4755" to ptr
  %".4756" = load float, ptr %"for_LDG.245"
  %".4757" = bitcast ptr %"R45" to ptr
  store float %".4756", ptr %".4757"
  ; LDG.E.SYS R59, [R10+0xc]
  %".4760" = load i32, ptr %"R10"
  %"zext.506" = zext i32 %".4760" to i64
  %".4761" = load i32, ptr %"R11"
  %"zext.507" = zext i32 %".4761" to i64
  %"shl.267" = shl i64 %"zext.507", 32
  %"or.251" = or i64 %"shl.267", %"zext.506"
  %".4762" = inttoptr i64 %"or.251" to ptr
  %".4763" = ptrtoint ptr %".4762" to i64
  %".4764" = add i64 %".4763", 12
  %"for_LDG.246" = inttoptr i64 %".4764" to ptr
  %".4765" = load float, ptr %"for_LDG.246"
  %".4766" = bitcast ptr %"R59" to ptr
  store float %".4765", ptr %".4766"
  ; LDG.E.SYS R50, [R6]
  %".4769" = load i32, ptr %"R6"
  %"zext.508" = zext i32 %".4769" to i64
  %".4770" = load i32, ptr %"R7"
  %"zext.509" = zext i32 %".4770" to i64
  %"shl.268" = shl i64 %"zext.509", 32
  %"or.252" = or i64 %"shl.268", %"zext.508"
  %".4771" = inttoptr i64 %"or.252" to ptr
  %".4772" = ptrtoint ptr %".4771" to i64
  %".4773" = add i64 %".4772", 0
  %"for_LDG.247" = inttoptr i64 %".4773" to ptr
  %".4774" = load float, ptr %"for_LDG.247"
  %".4775" = bitcast ptr %"R50" to ptr
  store float %".4774", ptr %".4775"
  ; LDG.E.SYS R57, [R12]
  %".4778" = load i32, ptr %"R12"
  %"zext.510" = zext i32 %".4778" to i64
  %".4779" = load i32, ptr %"R13"
  %"zext.511" = zext i32 %".4779" to i64
  %"shl.269" = shl i64 %"zext.511", 32
  %"or.253" = or i64 %"shl.269", %"zext.510"
  %".4780" = inttoptr i64 %"or.253" to ptr
  %".4781" = ptrtoint ptr %".4780" to i64
  %".4782" = add i64 %".4781", 0
  %"for_LDG.248" = inttoptr i64 %".4782" to ptr
  %".4783" = load float, ptr %"for_LDG.248"
  %".4784" = bitcast ptr %"R57" to ptr
  store float %".4783", ptr %".4784"
  ; LDG.E.SYS R55, [R24]
  %".4787" = load i32, ptr %"R24"
  %"zext.512" = zext i32 %".4787" to i64
  %".4788" = load i32, ptr %"R25"
  %"zext.513" = zext i32 %".4788" to i64
  %"shl.270" = shl i64 %"zext.513", 32
  %"or.254" = or i64 %"shl.270", %"zext.512"
  %".4789" = inttoptr i64 %"or.254" to ptr
  %".4790" = ptrtoint ptr %".4789" to i64
  %".4791" = add i64 %".4790", 0
  %"for_LDG.249" = inttoptr i64 %".4791" to ptr
  %".4792" = load float, ptr %"for_LDG.249"
  %".4793" = bitcast ptr %"R55" to ptr
  store float %".4792", ptr %".4793"
  ; LDG.E.SYS R46, [R6+0x4]
  %".4796" = load i32, ptr %"R6"
  %"zext.514" = zext i32 %".4796" to i64
  %".4797" = load i32, ptr %"R7"
  %"zext.515" = zext i32 %".4797" to i64
  %"shl.271" = shl i64 %"zext.515", 32
  %"or.255" = or i64 %"shl.271", %"zext.514"
  %".4798" = inttoptr i64 %"or.255" to ptr
  %".4799" = ptrtoint ptr %".4798" to i64
  %".4800" = add i64 %".4799", 4
  %"for_LDG.250" = inttoptr i64 %".4800" to ptr
  %".4801" = load float, ptr %"for_LDG.250"
  %".4802" = bitcast ptr %"R46" to ptr
  store float %".4801", ptr %".4802"
  ; LDG.E.SYS R53, [R12+0x4]
  %".4805" = load i32, ptr %"R12"
  %"zext.516" = zext i32 %".4805" to i64
  %".4806" = load i32, ptr %"R13"
  %"zext.517" = zext i32 %".4806" to i64
  %"shl.272" = shl i64 %"zext.517", 32
  %"or.256" = or i64 %"shl.272", %"zext.516"
  %".4807" = inttoptr i64 %"or.256" to ptr
  %".4808" = ptrtoint ptr %".4807" to i64
  %".4809" = add i64 %".4808", 4
  %"for_LDG.251" = inttoptr i64 %".4809" to ptr
  %".4810" = load float, ptr %"for_LDG.251"
  %".4811" = bitcast ptr %"R53" to ptr
  store float %".4810", ptr %".4811"
  ; LDG.E.SYS R51, [R24+0x4]
  %".4814" = load i32, ptr %"R24"
  %"zext.518" = zext i32 %".4814" to i64
  %".4815" = load i32, ptr %"R25"
  %"zext.519" = zext i32 %".4815" to i64
  %"shl.273" = shl i64 %"zext.519", 32
  %"or.257" = or i64 %"shl.273", %"zext.518"
  %".4816" = inttoptr i64 %"or.257" to ptr
  %".4817" = ptrtoint ptr %".4816" to i64
  %".4818" = add i64 %".4817", 4
  %"for_LDG.252" = inttoptr i64 %".4818" to ptr
  %".4819" = load float, ptr %"for_LDG.252"
  %".4820" = bitcast ptr %"R51" to ptr
  store float %".4819", ptr %".4820"
  ; LDG.E.SYS R42, [R6+0x8]
  %".4823" = load i32, ptr %"R6"
  %"zext.520" = zext i32 %".4823" to i64
  %".4824" = load i32, ptr %"R7"
  %"zext.521" = zext i32 %".4824" to i64
  %"shl.274" = shl i64 %"zext.521", 32
  %"or.258" = or i64 %"shl.274", %"zext.520"
  %".4825" = inttoptr i64 %"or.258" to ptr
  %".4826" = ptrtoint ptr %".4825" to i64
  %".4827" = add i64 %".4826", 8
  %"for_LDG.253" = inttoptr i64 %".4827" to ptr
  %".4828" = load float, ptr %"for_LDG.253"
  %".4829" = bitcast ptr %"R42" to ptr
  store float %".4828", ptr %".4829"
  ; LDG.E.SYS R47, [R12+0x8]
  %".4832" = load i32, ptr %"R12"
  %"zext.522" = zext i32 %".4832" to i64
  %".4833" = load i32, ptr %"R13"
  %"zext.523" = zext i32 %".4833" to i64
  %"shl.275" = shl i64 %"zext.523", 32
  %"or.259" = or i64 %"shl.275", %"zext.522"
  %".4834" = inttoptr i64 %"or.259" to ptr
  %".4835" = ptrtoint ptr %".4834" to i64
  %".4836" = add i64 %".4835", 8
  %"for_LDG.254" = inttoptr i64 %".4836" to ptr
  %".4837" = load float, ptr %"for_LDG.254"
  %".4838" = bitcast ptr %"R47" to ptr
  store float %".4837", ptr %".4838"
  ; LDG.E.SYS R9, [R24+0x8]
  %".4841" = load i32, ptr %"R24"
  %"zext.524" = zext i32 %".4841" to i64
  %".4842" = load i32, ptr %"R25"
  %"zext.525" = zext i32 %".4842" to i64
  %"shl.276" = shl i64 %"zext.525", 32
  %"or.260" = or i64 %"shl.276", %"zext.524"
  %".4843" = inttoptr i64 %"or.260" to ptr
  %".4844" = ptrtoint ptr %".4843" to i64
  %".4845" = add i64 %".4844", 8
  %"for_LDG.255" = inttoptr i64 %".4845" to ptr
  %".4846" = load float, ptr %"for_LDG.255"
  %".4847" = bitcast ptr %"R9" to ptr
  store float %".4846", ptr %".4847"
  ; LDG.E.SYS R4, [R6+0xc]
  %".4850" = load i32, ptr %"R6"
  %"zext.526" = zext i32 %".4850" to i64
  %".4851" = load i32, ptr %"R7"
  %"zext.527" = zext i32 %".4851" to i64
  %"shl.277" = shl i64 %"zext.527", 32
  %"or.261" = or i64 %"shl.277", %"zext.526"
  %".4852" = inttoptr i64 %"or.261" to ptr
  %".4853" = ptrtoint ptr %".4852" to i64
  %".4854" = add i64 %".4853", 12
  %"for_LDG.256" = inttoptr i64 %".4854" to ptr
  %".4855" = load float, ptr %"for_LDG.256"
  %".4856" = bitcast ptr %"R4" to ptr
  store float %".4855", ptr %".4856"
  ; LDG.E.SYS R5, [R12+0xc]
  %".4859" = load i32, ptr %"R12"
  %"zext.528" = zext i32 %".4859" to i64
  %".4860" = load i32, ptr %"R13"
  %"zext.529" = zext i32 %".4860" to i64
  %"shl.278" = shl i64 %"zext.529", 32
  %"or.262" = or i64 %"shl.278", %"zext.528"
  %".4861" = inttoptr i64 %"or.262" to ptr
  %".4862" = ptrtoint ptr %".4861" to i64
  %".4863" = add i64 %".4862", 12
  %"for_LDG.257" = inttoptr i64 %".4863" to ptr
  %".4864" = load float, ptr %"for_LDG.257"
  %".4865" = bitcast ptr %"R5" to ptr
  store float %".4864", ptr %".4865"
  ; LDG.E.SYS R11, [R24+0xc]
  %".4868" = load i32, ptr %"R24"
  %"zext.530" = zext i32 %".4868" to i64
  %".4869" = load i32, ptr %"R25"
  %"zext.531" = zext i32 %".4869" to i64
  %"shl.279" = shl i64 %"zext.531", 32
  %"or.263" = or i64 %"shl.279", %"zext.530"
  %".4870" = inttoptr i64 %"or.263" to ptr
  %".4871" = ptrtoint ptr %".4870" to i64
  %".4872" = add i64 %".4871", 12
  %"for_LDG.258" = inttoptr i64 %".4872" to ptr
  %".4873" = load float, ptr %"for_LDG.258"
  %".4874" = bitcast ptr %"R11" to ptr
  store float %".4873", ptr %".4874"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4877" = xor i1 1, 1
  %".4878" = and i1 %".4877", 1
  %".4879" = and i1 %".4878", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".4881" = load i32, ptr %"R22"
  %"add.234" = add i32 %".4881", -8
  %"add.235" = add i32 %"add.234", 0
  store i32 %"add.235", ptr %"R22"
  ; IADD3 R23, R23, 0x8, RZ
  %".4884" = load i32, ptr %"R23"
  %"add.236" = add i32 %".4884", 8
  %"add.237" = add i32 %"add.236", 0
  store i32 %"add.237", ptr %"R23"
  ; FFMA R52, R52, R43, R44
  %".4887" = load float, ptr %"R52"
  %".4888" = load float, ptr %"R43"
  %".4889" = load float, ptr %"R44"
  %"fmul.201" = fmul float %".4887", %".4888"
  %"fadd.176" = fadd float %"fmul.201", %".4889"
  %".4890" = bitcast ptr %"R52" to ptr
  store float %"fadd.176", ptr %".4890"
  ; FFMA R38, R43, R38, R56
  %".4893" = load float, ptr %"R43"
  %".4894" = load float, ptr %"R38"
  %".4895" = load float, ptr %"R56"
  %"fmul.202" = fmul float %".4893", %".4894"
  %"fadd.177" = fadd float %"fmul.202", %".4895"
  %".4896" = bitcast ptr %"R38" to ptr
  store float %"fadd.177", ptr %".4896"
  ; FFMA R41, R41, R36, R52
  %".4899" = load float, ptr %"R41"
  %".4900" = load float, ptr %"R36"
  %".4901" = load float, ptr %"R52"
  %"fmul.203" = fmul float %".4899", %".4900"
  %"fadd.178" = fadd float %"fmul.203", %".4901"
  %".4902" = bitcast ptr %"R41" to ptr
  store float %"fadd.178", ptr %".4902"
  ; FFMA R38, R36, R39, R38
  %".4905" = load float, ptr %"R36"
  %".4906" = load float, ptr %"R39"
  %".4907" = load float, ptr %"R38"
  %"fmul.204" = fmul float %".4905", %".4906"
  %"fadd.179" = fadd float %"fmul.204", %".4907"
  %".4908" = bitcast ptr %"R38" to ptr
  store float %"fadd.179", ptr %".4908"
  ; FFMA R37, R37, R34, R41
  %".4911" = load float, ptr %"R37"
  %".4912" = load float, ptr %"R34"
  %".4913" = load float, ptr %"R41"
  %"fmul.205" = fmul float %".4911", %".4912"
  %"fadd.180" = fadd float %"fmul.205", %".4913"
  %".4914" = bitcast ptr %"R37" to ptr
  store float %"fadd.180", ptr %".4914"
  ; FFMA R35, R34, R35, R38
  %".4917" = load float, ptr %"R34"
  %".4918" = load float, ptr %"R35"
  %".4919" = load float, ptr %"R38"
  %"fmul.206" = fmul float %".4917", %".4918"
  %"fadd.181" = fadd float %"fmul.206", %".4919"
  %".4920" = bitcast ptr %"R35" to ptr
  store float %"fadd.181", ptr %".4920"
  ; FFMA R37, R45, R40, R37
  %".4923" = load float, ptr %"R45"
  %".4924" = load float, ptr %"R40"
  %".4925" = load float, ptr %"R37"
  %"fmul.207" = fmul float %".4923", %".4924"
  %"fadd.182" = fadd float %"fmul.207", %".4925"
  %".4926" = bitcast ptr %"R37" to ptr
  store float %"fadd.182", ptr %".4926"
  ; FFMA R35, R40, R59, R35
  %".4929" = load float, ptr %"R40"
  %".4930" = load float, ptr %"R59"
  %".4931" = load float, ptr %"R35"
  %"fmul.208" = fmul float %".4929", %".4930"
  %"fadd.183" = fadd float %"fmul.208", %".4931"
  %".4932" = bitcast ptr %"R35" to ptr
  store float %"fadd.183", ptr %".4932"
  ; FFMA R37, R57, R50, R37
  %".4935" = load float, ptr %"R57"
  %".4936" = load float, ptr %"R50"
  %".4937" = load float, ptr %"R37"
  %"fmul.209" = fmul float %".4935", %".4936"
  %"fadd.184" = fadd float %"fmul.209", %".4937"
  %".4938" = bitcast ptr %"R37" to ptr
  store float %"fadd.184", ptr %".4938"
  ; FFMA R35, R50, R55, R35
  %".4941" = load float, ptr %"R50"
  %".4942" = load float, ptr %"R55"
  %".4943" = load float, ptr %"R35"
  %"fmul.210" = fmul float %".4941", %".4942"
  %"fadd.185" = fadd float %"fmul.210", %".4943"
  %".4944" = bitcast ptr %"R35" to ptr
  store float %"fadd.185", ptr %".4944"
  ; FFMA R37, R53, R46, R37
  %".4947" = load float, ptr %"R53"
  %".4948" = load float, ptr %"R46"
  %".4949" = load float, ptr %"R37"
  %"fmul.211" = fmul float %".4947", %".4948"
  %"fadd.186" = fadd float %"fmul.211", %".4949"
  %".4950" = bitcast ptr %"R37" to ptr
  store float %"fadd.186", ptr %".4950"
  ; FFMA R35, R46, R51, R35
  %".4953" = load float, ptr %"R46"
  %".4954" = load float, ptr %"R51"
  %".4955" = load float, ptr %"R35"
  %"fmul.212" = fmul float %".4953", %".4954"
  %"fadd.187" = fadd float %"fmul.212", %".4955"
  %".4956" = bitcast ptr %"R35" to ptr
  store float %"fadd.187", ptr %".4956"
  ; FFMA R37, R47, R42, R37
  %".4959" = load float, ptr %"R47"
  %".4960" = load float, ptr %"R42"
  %".4961" = load float, ptr %"R37"
  %"fmul.213" = fmul float %".4959", %".4960"
  %"fadd.188" = fadd float %"fmul.213", %".4961"
  %".4962" = bitcast ptr %"R37" to ptr
  store float %"fadd.188", ptr %".4962"
  ; FFMA R9, R42, R9, R35
  %".4965" = load float, ptr %"R42"
  %".4966" = load float, ptr %"R9"
  %".4967" = load float, ptr %"R35"
  %"fmul.214" = fmul float %".4965", %".4966"
  %"fadd.189" = fadd float %"fmul.214", %".4967"
  %".4968" = bitcast ptr %"R9" to ptr
  store float %"fadd.189", ptr %".4968"
  ; FFMA R44, R5, R4, R37
  %".4971" = load float, ptr %"R5"
  %".4972" = load float, ptr %"R4"
  %".4973" = load float, ptr %"R37"
  %"fmul.215" = fmul float %".4971", %".4972"
  %"fadd.190" = fadd float %"fmul.215", %".4973"
  %".4974" = bitcast ptr %"R44" to ptr
  store float %"fadd.190", ptr %".4974"
  ; FFMA R56, R4, R11, R9
  %".4977" = load float, ptr %"R4"
  %".4978" = load float, ptr %"R11"
  %".4979" = load float, ptr %"R9"
  %"fmul.216" = fmul float %".4977", %".4978"
  %"fadd.191" = fadd float %"fmul.216", %".4979"
  %".4980" = bitcast ptr %"R56" to ptr
  store float %"fadd.191", ptr %".4980"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".4983" = load i32, ptr %"R22"
  %".4984" = load i1, ptr %"PT"
  %"cmp.39" = icmp ne i32 %".4983", 0
  %".4985" = or i1 %"cmp.39", %".4984"
  ; @!P0 BRA `(.L_x_27)
  %".4987" = load i1, ptr %"P0"
  %".4988" = icmp eq i1 %".4987", 1
  br i1 %".4988", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".4991" = load i32, ptr %"R0"
  %".4992" = load i32, ptr %"R23"
  %"add.238" = add i32 %".4991", %".4992"
  %"add.239" = add i32 %"add.238", 0
  store i32 %"add.239", ptr %"R5"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6"
  ; LEA R11, R2.reuse, R5, 0x2
  %".4997" = load i32, ptr %"R2"
  %".4998" = load i32, ptr %"R5"
  %"shl.280" = shl i32 %".4997", 2
  %"add.240" = add i32 %"shl.280", %".4998"
  store i32 %"add.240", ptr %"R11"
  ; IMAD R7, R2, 0x3, R5
  %".5001" = load i32, ptr %"R2"
  %".5002" = load i32, ptr %"R5"
  %"mul.82" = mul i32 %".5001", 3
  %"add.241" = add i32 %"mul.82", %".5002"
  store i32 %"add.241", ptr %"R7"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".5005" = load i32, ptr %"R23"
  %".5006" = load i32, ptr %"R6"
  %"mul.83" = mul i32 %".5005", %".5006"
  %"add.242" = add i32 %"mul.83", %"Arg_3"
  store i32 %"add.242", ptr %"R8"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".5009" = load i32, ptr %"R7"
  %".5010" = load i32, ptr %"R6"
  %"mul.84" = mul i32 %".5009", %".5010"
  %"add.243" = add i32 %"mul.84", %"Arg_4"
  store i32 %"add.243", ptr %"R4"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".5013" = load i32, ptr %"R11"
  %".5014" = load i32, ptr %"R6"
  %"mul.85" = mul i32 %".5013", %".5014"
  %"add.244" = add i32 %"mul.85", %"Arg_4"
  store i32 %"add.244", ptr %"R6"
  ; LDG.E.SYS R13, [R8]
  %".5017" = load i32, ptr %"R8"
  %"zext.532" = zext i32 %".5017" to i64
  %".5018" = load i32, ptr %"R9"
  %"zext.533" = zext i32 %".5018" to i64
  %"shl.281" = shl i64 %"zext.533", 32
  %"or.264" = or i64 %"shl.281", %"zext.532"
  %".5019" = inttoptr i64 %"or.264" to ptr
  %".5020" = ptrtoint ptr %".5019" to i64
  %".5021" = add i64 %".5020", 0
  %"for_LDG.259" = inttoptr i64 %".5021" to ptr
  %".5022" = load float, ptr %"for_LDG.259"
  %".5023" = bitcast ptr %"R13" to ptr
  store float %".5022", ptr %".5023"
  ; LDG.E.SYS R11, [R4]
  %".5026" = load i32, ptr %"R4"
  %"zext.534" = zext i32 %".5026" to i64
  %".5027" = load i32, ptr %"R5"
  %"zext.535" = zext i32 %".5027" to i64
  %"shl.282" = shl i64 %"zext.535", 32
  %"or.265" = or i64 %"shl.282", %"zext.534"
  %".5028" = inttoptr i64 %"or.265" to ptr
  %".5029" = ptrtoint ptr %".5028" to i64
  %".5030" = add i64 %".5029", 0
  %"for_LDG.260" = inttoptr i64 %".5030" to ptr
  %".5031" = load float, ptr %"for_LDG.260"
  %".5032" = bitcast ptr %"R11" to ptr
  store float %".5031", ptr %".5032"
  ; LDG.E.SYS R10, [R6]
  %".5035" = load i32, ptr %"R6"
  %"zext.536" = zext i32 %".5035" to i64
  %".5036" = load i32, ptr %"R7"
  %"zext.537" = zext i32 %".5036" to i64
  %"shl.283" = shl i64 %"zext.537", 32
  %"or.266" = or i64 %"shl.283", %"zext.536"
  %".5037" = inttoptr i64 %"or.266" to ptr
  %".5038" = ptrtoint ptr %".5037" to i64
  %".5039" = add i64 %".5038", 0
  %"for_LDG.261" = inttoptr i64 %".5039" to ptr
  %".5040" = load float, ptr %"for_LDG.261"
  %".5041" = bitcast ptr %"R10" to ptr
  store float %".5040", ptr %".5041"
  ; LDG.E.SYS R25, [R8+0x4]
  %".5044" = load i32, ptr %"R8"
  %"zext.538" = zext i32 %".5044" to i64
  %".5045" = load i32, ptr %"R9"
  %"zext.539" = zext i32 %".5045" to i64
  %"shl.284" = shl i64 %"zext.539", 32
  %"or.267" = or i64 %"shl.284", %"zext.538"
  %".5046" = inttoptr i64 %"or.267" to ptr
  %".5047" = ptrtoint ptr %".5046" to i64
  %".5048" = add i64 %".5047", 4
  %"for_LDG.262" = inttoptr i64 %".5048" to ptr
  %".5049" = load float, ptr %"for_LDG.262"
  %".5050" = bitcast ptr %"R25" to ptr
  store float %".5049", ptr %".5050"
  ; LDG.E.SYS R12, [R4+0x4]
  %".5053" = load i32, ptr %"R4"
  %"zext.540" = zext i32 %".5053" to i64
  %".5054" = load i32, ptr %"R5"
  %"zext.541" = zext i32 %".5054" to i64
  %"shl.285" = shl i64 %"zext.541", 32
  %"or.268" = or i64 %"shl.285", %"zext.540"
  %".5055" = inttoptr i64 %"or.268" to ptr
  %".5056" = ptrtoint ptr %".5055" to i64
  %".5057" = add i64 %".5056", 4
  %"for_LDG.263" = inttoptr i64 %".5057" to ptr
  %".5058" = load float, ptr %"for_LDG.263"
  %".5059" = bitcast ptr %"R12" to ptr
  store float %".5058", ptr %".5059"
  ; LDG.E.SYS R24, [R6+0x4]
  %".5062" = load i32, ptr %"R6"
  %"zext.542" = zext i32 %".5062" to i64
  %".5063" = load i32, ptr %"R7"
  %"zext.543" = zext i32 %".5063" to i64
  %"shl.286" = shl i64 %"zext.543", 32
  %"or.269" = or i64 %"shl.286", %"zext.542"
  %".5064" = inttoptr i64 %"or.269" to ptr
  %".5065" = ptrtoint ptr %".5064" to i64
  %".5066" = add i64 %".5065", 4
  %"for_LDG.264" = inttoptr i64 %".5066" to ptr
  %".5067" = load float, ptr %"for_LDG.264"
  %".5068" = bitcast ptr %"R24" to ptr
  store float %".5067", ptr %".5068"
  ; LDG.E.SYS R35, [R8+0x8]
  %".5071" = load i32, ptr %"R8"
  %"zext.544" = zext i32 %".5071" to i64
  %".5072" = load i32, ptr %"R9"
  %"zext.545" = zext i32 %".5072" to i64
  %"shl.287" = shl i64 %"zext.545", 32
  %"or.270" = or i64 %"shl.287", %"zext.544"
  %".5073" = inttoptr i64 %"or.270" to ptr
  %".5074" = ptrtoint ptr %".5073" to i64
  %".5075" = add i64 %".5074", 8
  %"for_LDG.265" = inttoptr i64 %".5075" to ptr
  %".5076" = load float, ptr %"for_LDG.265"
  %".5077" = bitcast ptr %"R35" to ptr
  store float %".5076", ptr %".5077"
  ; LDG.E.SYS R34, [R4+0x8]
  %".5080" = load i32, ptr %"R4"
  %"zext.546" = zext i32 %".5080" to i64
  %".5081" = load i32, ptr %"R5"
  %"zext.547" = zext i32 %".5081" to i64
  %"shl.288" = shl i64 %"zext.547", 32
  %"or.271" = or i64 %"shl.288", %"zext.546"
  %".5082" = inttoptr i64 %"or.271" to ptr
  %".5083" = ptrtoint ptr %".5082" to i64
  %".5084" = add i64 %".5083", 8
  %"for_LDG.266" = inttoptr i64 %".5084" to ptr
  %".5085" = load float, ptr %"for_LDG.266"
  %".5086" = bitcast ptr %"R34" to ptr
  store float %".5085", ptr %".5086"
  ; LDG.E.SYS R36, [R6+0x8]
  %".5089" = load i32, ptr %"R6"
  %"zext.548" = zext i32 %".5089" to i64
  %".5090" = load i32, ptr %"R7"
  %"zext.549" = zext i32 %".5090" to i64
  %"shl.289" = shl i64 %"zext.549", 32
  %"or.272" = or i64 %"shl.289", %"zext.548"
  %".5091" = inttoptr i64 %"or.272" to ptr
  %".5092" = ptrtoint ptr %".5091" to i64
  %".5093" = add i64 %".5092", 8
  %"for_LDG.267" = inttoptr i64 %".5093" to ptr
  %".5094" = load float, ptr %"for_LDG.267"
  %".5095" = bitcast ptr %"R36" to ptr
  store float %".5094", ptr %".5095"
  ; LDG.E.SYS R37, [R8+0xc]
  %".5098" = load i32, ptr %"R8"
  %"zext.550" = zext i32 %".5098" to i64
  %".5099" = load i32, ptr %"R9"
  %"zext.551" = zext i32 %".5099" to i64
  %"shl.290" = shl i64 %"zext.551", 32
  %"or.273" = or i64 %"shl.290", %"zext.550"
  %".5100" = inttoptr i64 %"or.273" to ptr
  %".5101" = ptrtoint ptr %".5100" to i64
  %".5102" = add i64 %".5101", 12
  %"for_LDG.268" = inttoptr i64 %".5102" to ptr
  %".5103" = load float, ptr %"for_LDG.268"
  %".5104" = bitcast ptr %"R37" to ptr
  store float %".5103", ptr %".5104"
  ; LDG.E.SYS R38, [R4+0xc]
  %".5107" = load i32, ptr %"R4"
  %"zext.552" = zext i32 %".5107" to i64
  %".5108" = load i32, ptr %"R5"
  %"zext.553" = zext i32 %".5108" to i64
  %"shl.291" = shl i64 %"zext.553", 32
  %"or.274" = or i64 %"shl.291", %"zext.552"
  %".5109" = inttoptr i64 %"or.274" to ptr
  %".5110" = ptrtoint ptr %".5109" to i64
  %".5111" = add i64 %".5110", 12
  %"for_LDG.269" = inttoptr i64 %".5111" to ptr
  %".5112" = load float, ptr %"for_LDG.269"
  %".5113" = bitcast ptr %"R38" to ptr
  store float %".5112", ptr %".5113"
  ; LDG.E.SYS R39, [R6+0xc]
  %".5116" = load i32, ptr %"R6"
  %"zext.554" = zext i32 %".5116" to i64
  %".5117" = load i32, ptr %"R7"
  %"zext.555" = zext i32 %".5117" to i64
  %"shl.292" = shl i64 %"zext.555", 32
  %"or.275" = or i64 %"shl.292", %"zext.554"
  %".5118" = inttoptr i64 %"or.275" to ptr
  %".5119" = ptrtoint ptr %".5118" to i64
  %".5120" = add i64 %".5119", 12
  %"for_LDG.270" = inttoptr i64 %".5120" to ptr
  %".5121" = load float, ptr %"for_LDG.270"
  %".5122" = bitcast ptr %"R39" to ptr
  store float %".5121", ptr %".5122"
  ; IADD3 R22, R22, -0x4, RZ
  %".5125" = load i32, ptr %"R22"
  %"add.245" = add i32 %".5125", -4
  %"add.246" = add i32 %"add.245", 0
  store i32 %"add.246", ptr %"R22"
  ; IADD3 R23, R23, 0x4, RZ
  %".5128" = load i32, ptr %"R23"
  %"add.247" = add i32 %".5128", 4
  %"add.248" = add i32 %"add.247", 0
  store i32 %"add.248", ptr %"R23"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".5131" = load i32, ptr %"R22"
  %".5132" = load i1, ptr %"PT"
  %"cmp.40" = icmp ne i32 %".5131", 0
  %".5133" = and i1 %"cmp.40", %".5132"
  ; FFMA R11, R11, R13, R44
  %".5135" = load float, ptr %"R11"
  %".5136" = load float, ptr %"R13"
  %".5137" = load float, ptr %"R44"
  %"fmul.217" = fmul float %".5135", %".5136"
  %"fadd.192" = fadd float %"fmul.217", %".5137"
  %".5138" = bitcast ptr %"R11" to ptr
  store float %"fadd.192", ptr %".5138"
  ; FFMA R10, R13, R10, R56
  %".5141" = load float, ptr %"R13"
  %".5142" = load float, ptr %"R10"
  %".5143" = load float, ptr %"R56"
  %"fmul.218" = fmul float %".5141", %".5142"
  %"fadd.193" = fadd float %"fmul.218", %".5143"
  %".5144" = bitcast ptr %"R10" to ptr
  store float %"fadd.193", ptr %".5144"
  ; FFMA R11, R12, R25, R11
  %".5147" = load float, ptr %"R12"
  %".5148" = load float, ptr %"R25"
  %".5149" = load float, ptr %"R11"
  %"fmul.219" = fmul float %".5147", %".5148"
  %"fadd.194" = fadd float %"fmul.219", %".5149"
  %".5150" = bitcast ptr %"R11" to ptr
  store float %"fadd.194", ptr %".5150"
  ; FFMA R10, R25, R24, R10
  %".5153" = load float, ptr %"R25"
  %".5154" = load float, ptr %"R24"
  %".5155" = load float, ptr %"R10"
  %"fmul.220" = fmul float %".5153", %".5154"
  %"fadd.195" = fadd float %"fmul.220", %".5155"
  %".5156" = bitcast ptr %"R10" to ptr
  store float %"fadd.195", ptr %".5156"
  ; FFMA R11, R34, R35, R11
  %".5159" = load float, ptr %"R34"
  %".5160" = load float, ptr %"R35"
  %".5161" = load float, ptr %"R11"
  %"fmul.221" = fmul float %".5159", %".5160"
  %"fadd.196" = fadd float %"fmul.221", %".5161"
  %".5162" = bitcast ptr %"R11" to ptr
  store float %"fadd.196", ptr %".5162"
  ; FFMA R10, R35, R36, R10
  %".5165" = load float, ptr %"R35"
  %".5166" = load float, ptr %"R36"
  %".5167" = load float, ptr %"R10"
  %"fmul.222" = fmul float %".5165", %".5166"
  %"fadd.197" = fadd float %"fmul.222", %".5167"
  %".5168" = bitcast ptr %"R10" to ptr
  store float %"fadd.197", ptr %".5168"
  ; FFMA R44, R38, R37, R11
  %".5171" = load float, ptr %"R38"
  %".5172" = load float, ptr %"R37"
  %".5173" = load float, ptr %"R11"
  %"fmul.223" = fmul float %".5171", %".5172"
  %"fadd.198" = fadd float %"fmul.223", %".5173"
  %".5174" = bitcast ptr %"R44" to ptr
  store float %"fadd.198", ptr %".5174"
  ; FFMA R56, R37, R39, R10
  %".5177" = load float, ptr %"R37"
  %".5178" = load float, ptr %"R39"
  %".5179" = load float, ptr %"R10"
  %"fmul.224" = fmul float %".5177", %".5178"
  %"fadd.199" = fadd float %"fmul.224", %".5179"
  %".5180" = bitcast ptr %"R56" to ptr
  store float %"fadd.199", ptr %".5180"
  ; @P0 BRA `(.L_x_28)
  %".5183" = load i1, ptr %"P0"
  %".5184" = icmp ne i1 %".5183", 1
  br i1 %".5184", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".5187" = load i32, ptr %"R48"
  %".5188" = load i1, ptr %"PT"
  %"cmp.41" = icmp ne i32 %".5187", 0
  %".5189" = and i1 %"cmp.41", %".5188"
  ; @!P0 BRA `(.L_x_26)
  %".5191" = load i1, ptr %"P0"
  %".5192" = icmp eq i1 %".5191", 1
  br i1 %".5192", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".5195" = load i32, ptr %"R0"
  %".5196" = load i32, ptr %"R23"
  %"add.249" = add i32 %".5195", %".5196"
  %"add.250" = add i32 %"add.249", 0
  store i32 %"add.250", ptr %"R5"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9"
  ; LEA R8, R2.reuse, R5, 0x2
  %".5201" = load i32, ptr %"R2"
  %".5202" = load i32, ptr %"R5"
  %"shl.293" = shl i32 %".5201", 2
  %"add.251" = add i32 %"shl.293", %".5202"
  store i32 %"add.251", ptr %"R8"
  ; IMAD R6, R2, 0x3, R5
  %".5205" = load i32, ptr %"R2"
  %".5206" = load i32, ptr %"R5"
  %"mul.86" = mul i32 %".5205", 3
  %"add.252" = add i32 %"mul.86", %".5206"
  store i32 %"add.252", ptr %"R6"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".5209" = load i32, ptr %"R23"
  %".5210" = load i32, ptr %"R9"
  %"mul.87" = mul i32 %".5209", %".5210"
  %"add.253" = add i32 %"mul.87", %"Arg_3"
  store i32 %"add.253", ptr %"R4"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".5213" = load i32, ptr %"R6"
  %".5214" = load i32, ptr %"R9"
  %"mul.88" = mul i32 %".5213", %".5214"
  %"add.254" = add i32 %"mul.88", %"Arg_4"
  store i32 %"add.254", ptr %"R6"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".5217" = load i32, ptr %"R8"
  %".5218" = load i32, ptr %"R9"
  %"mul.89" = mul i32 %".5217", %".5218"
  %"add.255" = add i32 %"mul.89", %"Arg_4"
  store i32 %"add.255", ptr %"R8"
  ; LDG.E.SYS R13, [R4]
  %".5221" = load i32, ptr %"R4"
  %"zext.556" = zext i32 %".5221" to i64
  %".5222" = load i32, ptr %"R5"
  %"zext.557" = zext i32 %".5222" to i64
  %"shl.294" = shl i64 %"zext.557", 32
  %"or.276" = or i64 %"shl.294", %"zext.556"
  %".5223" = inttoptr i64 %"or.276" to ptr
  %".5224" = ptrtoint ptr %".5223" to i64
  %".5225" = add i64 %".5224", 0
  %"for_LDG.271" = inttoptr i64 %".5225" to ptr
  %".5226" = load float, ptr %"for_LDG.271"
  %".5227" = bitcast ptr %"R13" to ptr
  store float %".5226", ptr %".5227"
  ; LDG.E.SYS R11, [R6]
  %".5230" = load i32, ptr %"R6"
  %"zext.558" = zext i32 %".5230" to i64
  %".5231" = load i32, ptr %"R7"
  %"zext.559" = zext i32 %".5231" to i64
  %"shl.295" = shl i64 %"zext.559", 32
  %"or.277" = or i64 %"shl.295", %"zext.558"
  %".5232" = inttoptr i64 %"or.277" to ptr
  %".5233" = ptrtoint ptr %".5232" to i64
  %".5234" = add i64 %".5233", 0
  %"for_LDG.272" = inttoptr i64 %".5234" to ptr
  %".5235" = load float, ptr %"for_LDG.272"
  %".5236" = bitcast ptr %"R11" to ptr
  store float %".5235", ptr %".5236"
  ; LDG.E.SYS R10, [R8]
  %".5239" = load i32, ptr %"R8"
  %"zext.560" = zext i32 %".5239" to i64
  %".5240" = load i32, ptr %"R9"
  %"zext.561" = zext i32 %".5240" to i64
  %"shl.296" = shl i64 %"zext.561", 32
  %"or.278" = or i64 %"shl.296", %"zext.560"
  %".5241" = inttoptr i64 %"or.278" to ptr
  %".5242" = ptrtoint ptr %".5241" to i64
  %".5243" = add i64 %".5242", 0
  %"for_LDG.273" = inttoptr i64 %".5243" to ptr
  %".5244" = load float, ptr %"for_LDG.273"
  %".5245" = bitcast ptr %"R10" to ptr
  store float %".5244", ptr %".5245"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".5248" = load i32, ptr %"R48"
  %".5249" = load i1, ptr %"PT"
  %"cmp.42" = icmp ne i32 %".5248", 1
  %".5250" = and i1 %"cmp.42", %".5249"
  ; FFMA R44, R11, R13, R44
  %".5252" = load float, ptr %"R11"
  %".5253" = load float, ptr %"R13"
  %".5254" = load float, ptr %"R44"
  %"fmul.225" = fmul float %".5252", %".5253"
  %"fadd.200" = fadd float %"fmul.225", %".5254"
  %".5255" = bitcast ptr %"R44" to ptr
  store float %"fadd.200", ptr %".5255"
  ; FFMA R56, R13, R10, R56
  %".5258" = load float, ptr %"R13"
  %".5259" = load float, ptr %"R10"
  %".5260" = load float, ptr %"R56"
  %"fmul.226" = fmul float %".5258", %".5259"
  %"fadd.201" = fadd float %"fmul.226", %".5260"
  %".5261" = bitcast ptr %"R56" to ptr
  store float %"fadd.201", ptr %".5261"
  ; @!P0 BRA `(.L_x_26)
  %".5264" = load i1, ptr %"P0"
  %".5265" = icmp eq i1 %".5264", 1
  br i1 %".5265", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".5268" = load i32, ptr %"R48"
  %".5269" = load i1, ptr %"PT"
  %"cmp.43" = icmp ne i32 %".5268", 2
  %".5270" = and i1 %"cmp.43", %".5269"
  ; LDG.E.SYS R11, [R6+0x4]
  %".5272" = load i32, ptr %"R6"
  %"zext.562" = zext i32 %".5272" to i64
  %".5273" = load i32, ptr %"R7"
  %"zext.563" = zext i32 %".5273" to i64
  %"shl.297" = shl i64 %"zext.563", 32
  %"or.279" = or i64 %"shl.297", %"zext.562"
  %".5274" = inttoptr i64 %"or.279" to ptr
  %".5275" = ptrtoint ptr %".5274" to i64
  %".5276" = add i64 %".5275", 4
  %"for_LDG.274" = inttoptr i64 %".5276" to ptr
  %".5277" = load float, ptr %"for_LDG.274"
  %".5278" = bitcast ptr %"R11" to ptr
  store float %".5277", ptr %".5278"
  ; LDG.E.SYS R13, [R4+0x4]
  %".5281" = load i32, ptr %"R4"
  %"zext.564" = zext i32 %".5281" to i64
  %".5282" = load i32, ptr %"R5"
  %"zext.565" = zext i32 %".5282" to i64
  %"shl.298" = shl i64 %"zext.565", 32
  %"or.280" = or i64 %"shl.298", %"zext.564"
  %".5283" = inttoptr i64 %"or.280" to ptr
  %".5284" = ptrtoint ptr %".5283" to i64
  %".5285" = add i64 %".5284", 4
  %"for_LDG.275" = inttoptr i64 %".5285" to ptr
  %".5286" = load float, ptr %"for_LDG.275"
  %".5287" = bitcast ptr %"R13" to ptr
  store float %".5286", ptr %".5287"
  ; LDG.E.SYS R10, [R8+0x4]
  %".5290" = load i32, ptr %"R8"
  %"zext.566" = zext i32 %".5290" to i64
  %".5291" = load i32, ptr %"R9"
  %"zext.567" = zext i32 %".5291" to i64
  %"shl.299" = shl i64 %"zext.567", 32
  %"or.281" = or i64 %"shl.299", %"zext.566"
  %".5292" = inttoptr i64 %"or.281" to ptr
  %".5293" = ptrtoint ptr %".5292" to i64
  %".5294" = add i64 %".5293", 4
  %"for_LDG.276" = inttoptr i64 %".5294" to ptr
  %".5295" = load float, ptr %"for_LDG.276"
  %".5296" = bitcast ptr %"R10" to ptr
  store float %".5295", ptr %".5296"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".5299" = load i1, ptr %"P0"
  %".5300" = icmp ne i1 %".5299", 1
  br i1 %".5300", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  %".5303" = load i32, ptr %"R6"
  %"zext.568" = zext i32 %".5303" to i64
  %".5304" = load i32, ptr %"R7"
  %"zext.569" = zext i32 %".5304" to i64
  %"shl.300" = shl i64 %"zext.569", 32
  %"or.282" = or i64 %"shl.300", %"zext.568"
  %".5305" = inttoptr i64 %"or.282" to ptr
  %".5306" = ptrtoint ptr %".5305" to i64
  %".5307" = add i64 %".5306", 8
  %"for_LDG.277" = inttoptr i64 %".5307" to ptr
  %".5308" = load float, ptr %"for_LDG.277"
  %".5309" = bitcast ptr %"R23" to ptr
  store float %".5308", ptr %".5309"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".5314" = load i1, ptr %"P0"
  %".5315" = icmp ne i1 %".5314", 1
  br i1 %".5315", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  %".5318" = load i32, ptr %"R4"
  %"zext.570" = zext i32 %".5318" to i64
  %".5319" = load i32, ptr %"R5"
  %"zext.571" = zext i32 %".5319" to i64
  %"shl.301" = shl i64 %"zext.571", 32
  %"or.283" = or i64 %"shl.301", %"zext.570"
  %".5320" = inttoptr i64 %"or.283" to ptr
  %".5321" = ptrtoint ptr %".5320" to i64
  %".5322" = add i64 %".5321", 8
  %"for_LDG.278" = inttoptr i64 %".5322" to ptr
  %".5323" = load float, ptr %"for_LDG.278"
  %".5324" = bitcast ptr %"R25" to ptr
  store float %".5323", ptr %".5324"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".5329" = load i1, ptr %"P0"
  %".5330" = icmp ne i1 %".5329", 1
  br i1 %".5330", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  %".5333" = load i32, ptr %"R8"
  %"zext.572" = zext i32 %".5333" to i64
  %".5334" = load i32, ptr %"R9"
  %"zext.573" = zext i32 %".5334" to i64
  %"shl.302" = shl i64 %"zext.573", 32
  %"or.284" = or i64 %"shl.302", %"zext.572"
  %".5335" = inttoptr i64 %"or.284" to ptr
  %".5336" = ptrtoint ptr %".5335" to i64
  %".5337" = add i64 %".5336", 8
  %"for_LDG.279" = inttoptr i64 %".5337" to ptr
  %".5338" = load float, ptr %"for_LDG.279"
  %".5339" = bitcast ptr %"R12" to ptr
  store float %".5338", ptr %".5339"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".5344" = load float, ptr %"R11"
  %".5345" = load float, ptr %"R13"
  %".5346" = load float, ptr %"R44"
  %"fmul.227" = fmul float %".5344", %".5345"
  %"fadd.202" = fadd float %"fmul.227", %".5346"
  %".5347" = bitcast ptr %"R44" to ptr
  store float %"fadd.202", ptr %".5347"
  ; FFMA R56, R13, R10, R56
  %".5350" = load float, ptr %"R13"
  %".5351" = load float, ptr %"R10"
  %".5352" = load float, ptr %"R56"
  %"fmul.228" = fmul float %".5350", %".5351"
  %"fadd.203" = fadd float %"fmul.228", %".5352"
  %".5353" = bitcast ptr %"R56" to ptr
  store float %"fadd.203", ptr %".5353"
  ; @P0 FFMA R44, R23, R25, R44
  %".5356" = load i1, ptr %"P0"
  %".5357" = icmp ne i1 %".5356", 1
  br i1 %".5357", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".5360" = load float, ptr %"R23"
  %".5361" = load float, ptr %"R25"
  %".5362" = load float, ptr %"R44"
  %"fmul.229" = fmul float %".5360", %".5361"
  %"fadd.204" = fadd float %"fmul.229", %".5362"
  %".5363" = bitcast ptr %"R44" to ptr
  store float %"fadd.204", ptr %".5363"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".5368" = load i1, ptr %"P0"
  %".5369" = icmp ne i1 %".5368", 1
  br i1 %".5369", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".5372" = load float, ptr %"R25"
  %".5373" = load float, ptr %"R12"
  %".5374" = load float, ptr %"R56"
  %"fmul.230" = fmul float %".5372", %".5373"
  %"fadd.205" = fadd float %"fmul.230", %".5374"
  %".5375" = bitcast ptr %"R56" to ptr
  store float %"fadd.205", ptr %".5375"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  %".5380" = load i32, ptr %"R26"
  %"zext.574" = zext i32 %".5380" to i64
  %"zext.575" = zext i32 0 to i64
  %"shl.303" = shl i64 %"zext.575", 32
  %"or.285" = or i64 %"shl.303", %"zext.574"
  %".5381" = inttoptr i64 %"or.285" to ptr
  %".5382" = ptrtoint ptr %".5381" to i64
  %".5383" = add i64 %".5382", 0
  %"for_LDG.280" = inttoptr i64 %".5383" to ptr
  %".5384" = load float, ptr %"for_LDG.280"
  %".5385" = bitcast ptr %"R5" to ptr
  store float %".5384", ptr %".5385"
  ; MOV R4, 0x3bbb989d
  %".5388" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".5388"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  %".5392" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".5392"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".5396" = load float, ptr %"R5"
  %".5397" = load float, ptr %"R44"
  %"fadd.206" = fadd float %".5396", %".5397"
  %".5398" = bitcast ptr %"R5" to ptr
  store float %"fadd.206", ptr %".5398"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".5401" = load float, ptr %"R5"
  %".5402" = sub float              0x0, %".5401"
  %".5403" = load float, ptr %"R4"
  %"fmul.231" = fmul float %".5402", %".5403"
  %"fadd.207" = fadd float %"fmul.231", 0x3fe0000000000000
  %".5404" = bitcast ptr %"R4" to ptr
  store float %"fadd.207", ptr %".5404"
  ; FFMA.RM R4, R4, R7, 12582913
  %".5407" = load float, ptr %"R4"
  %".5408" = load float, ptr %"R7"
  %"fmul.232" = fmul float %".5407", %".5408"
  %"fadd.208" = fadd float %"fmul.232", 0x4168000020000000
  %".5409" = bitcast ptr %"R4" to ptr
  store float %"fadd.208", ptr %".5409"
  ; FADD R6, R4.reuse, -12583039
  %".5412" = load float, ptr %"R4"
  %"fadd.209" = fadd float %".5412", 0xc168000fe0000000
  %".5413" = bitcast ptr %"R6" to ptr
  store float %"fadd.209", ptr %".5413"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".5416" = icmp ult i32 23, 32
  %"SHF_min.4" = select  i1 %".5416", i32 23, i32 32
  %".5417" = load i32, ptr %"R4"
  %"zext.576" = zext i32 0 to i64
  %"zext.577" = zext i32 %".5417" to i64
  %"zext.578" = zext i32 23 to i64
  %"shl.304" = shl i64 %"zext.576", 32
  %"or.286" = or i64 %"shl.304", %"zext.577"
  %"shl.305" = shl i64 %"or.286", %"zext.578"
  %"and.2" = and i64 %"shl.305", 4294967295
  %"trunc32.4" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.4", ptr %"R4"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".5420" = load float, ptr %"R5"
  %".5421" = sub float              0x0, %".5420"
  %".5422" = load float, ptr %"R6"
  %".5423" = sub float              0x0, %".5422"
  %"fmul.233" = fmul float %".5421", 0x3ff7154760000000
  %"fadd.210" = fadd float %"fmul.233", %".5423"
  %".5424" = bitcast ptr %"R6" to ptr
  store float %"fadd.210", ptr %".5424"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".5427" = load float, ptr %"R5"
  %".5428" = sub float              0x0, %".5427"
  %".5429" = load float, ptr %"R6"
  %"fmul.234" = fmul float %".5428", 0x3e54ae0c00000000
  %"fadd.211" = fadd float %"fmul.234", %".5429"
  %".5430" = bitcast ptr %"R6" to ptr
  store float %"fadd.211", ptr %".5430"
  ; MUFU.EX2 R5, R6
  %".5433" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".5433")
  %".5434" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".5434"
  ; FFMA R24, R4, R5, 1
  %".5437" = load float, ptr %"R4"
  %".5438" = load float, ptr %"R5"
  %"fmul.235" = fmul float %".5437", %".5438"
  %"fadd.212" = fadd float %"fmul.235", 0x3ff0000000000000
  %".5439" = bitcast ptr %"R24" to ptr
  store float %"fadd.212", ptr %".5439"
  ; IADD3 R4, R24, 0x1800000, RZ
  %".5442" = load i32, ptr %"R24"
  %"add.256" = add i32 %".5442", 25165824
  %"add.257" = add i32 %"add.256", 0
  store i32 %"add.257", ptr %"R4"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".5445" = load i32, ptr %"R4"
  %".5446" = and i32 %".5445", 2139095040
  store i32 %".5446", ptr %"R4"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".5449" = load i32, ptr %"R4"
  %".5450" = load i1, ptr %"PT"
  %"cmp.44" = icmp sgt i32 %".5449", 33554431
  %".5451" = and i1 %"cmp.44", %".5450"
  ; @P0 BRA `(.L_x_33)
  %".5453" = load i1, ptr %"P0"
  %".5454" = icmp ne i1 %".5453", 1
  br i1 %".5454", label %".L_x_33", label %".L_x_26_split_0x3910"
.L_x_26_split_0x3910:
  ; MOV R10, 0x3930
  store i32 14640, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.2" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; BRA `(.L_x_34)
  br label %".L_x_34"
.L_x_33:
  ; MUFU.RCP R22, R24
  %".5462" = load float, ptr %"R24"
  %".5463" = fdiv float 0x3ff0000000000000, %".5462"
  %".5464" = bitcast ptr %"R22" to ptr
  store float %".5463", ptr %".5464"
  ; FFMA R4, R24, R22, -1
  %".5467" = load float, ptr %"R24"
  %".5468" = load float, ptr %"R22"
  %"fmul.236" = fmul float %".5467", %".5468"
  %"fadd.213" = fadd float %"fmul.236", 0xbff0000000000000
  %".5469" = bitcast ptr %"R4" to ptr
  store float %"fadd.213", ptr %".5469"
  ; FADD.FTZ R5, -R4, -RZ
  %".5472" = load float, ptr %"R4"
  %".5473" = sub float              0x0, %".5472"
  %"fadd.214" = fadd float %".5473",              0x0
  %".5474" = bitcast ptr %"R5" to ptr
  store float %"fadd.214", ptr %".5474"
  ; FFMA R22, R22, R5, R22
  %".5477" = load float, ptr %"R22"
  %".5478" = load float, ptr %"R5"
  %".5479" = load float, ptr %"R22"
  %"fmul.237" = fmul float %".5477", %".5478"
  %"fadd.215" = fadd float %"fmul.237", %".5479"
  %".5480" = bitcast ptr %"R22" to ptr
  store float %"fadd.215", ptr %".5480"
.L_x_34:
  ; BSYNC B0
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  %".5484" = load i32, ptr %"R32"
  %"zext.579" = zext i32 %".5484" to i64
  %".5485" = load i32, ptr %"R33"
  %"zext.580" = zext i32 %".5485" to i64
  %"shl.306" = shl i64 %"zext.580", 32
  %"or.287" = or i64 %"shl.306", %"zext.579"
  %".5486" = inttoptr i64 %"or.287" to ptr
  %".5487" = ptrtoint ptr %".5486" to i64
  %".5488" = add i64 %".5487", 0
  %"for_LDG.281" = inttoptr i64 %".5488" to ptr
  %".5489" = load float, ptr %"for_LDG.281"
  %".5490" = bitcast ptr %"R5" to ptr
  store float %".5489", ptr %".5490"
  ; MOV R4, 0x3bbb989d
  %".5493" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".5493"
  ; MOV R7, 0x437c0000
  %".5496" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".5496"
  ; FADD R5, R5, R56
  %".5499" = load float, ptr %"R5"
  %".5500" = load float, ptr %"R56"
  %"fadd.216" = fadd float %".5499", %".5500"
  %".5501" = bitcast ptr %"R5" to ptr
  store float %"fadd.216", ptr %".5501"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".5504" = load float, ptr %"R5"
  %".5505" = sub float              0x0, %".5504"
  %".5506" = load float, ptr %"R4"
  %"fmul.238" = fmul float %".5505", %".5506"
  %"fadd.217" = fadd float %"fmul.238", 0x3fe0000000000000
  %".5507" = bitcast ptr %"R4" to ptr
  store float %"fadd.217", ptr %".5507"
  ; FFMA.RM R4, R4, R7, 12582913
  %".5510" = load float, ptr %"R4"
  %".5511" = load float, ptr %"R7"
  %"fmul.239" = fmul float %".5510", %".5511"
  %"fadd.218" = fadd float %"fmul.239", 0x4168000020000000
  %".5512" = bitcast ptr %"R4" to ptr
  store float %"fadd.218", ptr %".5512"
  ; FADD R6, R4.reuse, -12583039
  %".5515" = load float, ptr %"R4"
  %"fadd.219" = fadd float %".5515", 0xc168000fe0000000
  %".5516" = bitcast ptr %"R6" to ptr
  store float %"fadd.219", ptr %".5516"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".5519" = icmp ult i32 23, 32
  %"SHF_min.5" = select  i1 %".5519", i32 23, i32 32
  %".5520" = load i32, ptr %"R4"
  %"zext.581" = zext i32 0 to i64
  %"zext.582" = zext i32 %".5520" to i64
  %"zext.583" = zext i32 23 to i64
  %"shl.307" = shl i64 %"zext.581", 32
  %"or.288" = or i64 %"shl.307", %"zext.582"
  %"shl.308" = shl i64 %"or.288", %"zext.583"
  %"and.3" = and i64 %"shl.308", 4294967295
  %"trunc32.5" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.5", ptr %"R23"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".5523" = load float, ptr %"R5"
  %".5524" = sub float              0x0, %".5523"
  %".5525" = load float, ptr %"R6"
  %".5526" = sub float              0x0, %".5525"
  %"fmul.240" = fmul float %".5524", 0x3ff7154760000000
  %"fadd.220" = fadd float %"fmul.240", %".5526"
  %".5527" = bitcast ptr %"R6" to ptr
  store float %"fadd.220", ptr %".5527"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".5530" = load float, ptr %"R5"
  %".5531" = sub float              0x0, %".5530"
  %".5532" = load float, ptr %"R6"
  %"fmul.241" = fmul float %".5531", 0x3e54ae0c00000000
  %"fadd.221" = fadd float %"fmul.241", %".5532"
  %".5533" = bitcast ptr %"R6" to ptr
  store float %"fadd.221", ptr %".5533"
  ; MUFU.EX2 R6, R6
  %".5536" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".5536")
  %".5537" = bitcast ptr %"R6" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".5537"
  ; FFMA R23, R23, R6, 1
  %".5540" = load float, ptr %"R23"
  %".5541" = load float, ptr %"R6"
  %"fmul.242" = fmul float %".5540", %".5541"
  %"fadd.222" = fadd float %"fmul.242", 0x3ff0000000000000
  %".5542" = bitcast ptr %"R23" to ptr
  store float %"fadd.222", ptr %".5542"
  ; @!P4 BRA `(.L_x_35)
  %".5545" = load i1, ptr %"P4"
  %".5546" = icmp eq i1 %".5545", 1
  br i1 %".5546", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".5549" = load i32, ptr %"R18"
  %".5550" = load i1, ptr %"PT"
  %"cmp.45" = icmp sge i32 %".5549", 3
  %".5551" = and i1 %"cmp.45", %".5550"
  ; MOV R34, RZ
  %".5553" = load i32, ptr %"RZ"
  store i32 %".5553", ptr %"R34"
  ; @!P0 BRA `(.L_x_36)
  %".5556" = load i1, ptr %"P0"
  %".5557" = icmp eq i1 %".5556", 1
  br i1 %".5557", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".5560" = load i32, ptr %"R20"
  %".5561" = load i1, ptr %"PT"
  %"cmp.46" = icmp sgt i32 %".5560", 0
  %".5562" = and i1 %"cmp.46", %".5561"
  ; MOV R34, RZ
  %".5564" = load i32, ptr %"RZ"
  store i32 %".5564", ptr %"R34"
  ; MOV R35, R20
  %".5567" = load i32, ptr %"R20"
  store i32 %".5567", ptr %"R35"
  ; @!P0 BRA `(.L_x_37)
  %".5570" = load i1, ptr %"P0"
  %".5571" = icmp eq i1 %".5570", 1
  br i1 %".5571", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".5574" = load i32, ptr %"R35"
  %".5575" = load i1, ptr %"PT"
  %"cmp.47" = icmp sgt i32 %".5574", 12
  %".5576" = and i1 %"cmp.47", %".5575"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".5578" = and i1 1, 1
  %".5579" = or i1 %".5578", 1
  ; @!P1 BRA `(.L_x_38)
  %".5581" = load i1, ptr %"P1"
  %".5582" = icmp eq i1 %".5581", 1
  br i1 %".5582", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".5585" = xor i1 1, 1
  %".5586" = and i1 %".5585", 1
  %".5587" = and i1 %".5586", 1
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41"
  ; IADD3 R10, R3, R34, RZ
  %".5591" = load i32, ptr %"R3"
  %".5592" = load i32, ptr %"R34"
  %"add.258" = add i32 %".5591", %".5592"
  %"add.259" = add i32 %"add.258", 0
  store i32 %"add.259", ptr %"R10"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".5595" = load i32, ptr %"R34"
  %".5596" = load i32, ptr %"R41"
  %"mul.90" = mul i32 %".5595", %".5596"
  %"add.260" = add i32 %"mul.90", %"Arg_3"
  store i32 %"add.260", ptr %"R12"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".5599" = load i32, ptr %"R10"
  %".5600" = load i32, ptr %"R41"
  %"mul.91" = mul i32 %".5599", %".5600"
  %"add.261" = add i32 %"mul.91", %"Arg_4"
  store i32 %"add.261", ptr %"R10"
  ; IADD3 R4, R34, 0x4, RZ
  %".5603" = load i32, ptr %"R34"
  %"add.262" = add i32 %".5603", 4
  %"add.263" = add i32 %"add.262", 0
  store i32 %"add.263", ptr %"R4"
  ; LDG.E.SYS R25, [R12]
  %".5606" = load i32, ptr %"R12"
  %"zext.584" = zext i32 %".5606" to i64
  %".5607" = load i32, ptr %"R13"
  %"zext.585" = zext i32 %".5607" to i64
  %"shl.309" = shl i64 %"zext.585", 32
  %"or.289" = or i64 %"shl.309", %"zext.584"
  %".5608" = inttoptr i64 %"or.289" to ptr
  %".5609" = ptrtoint ptr %".5608" to i64
  %".5610" = add i64 %".5609", 0
  %"for_LDG.282" = inttoptr i64 %".5610" to ptr
  %".5611" = load float, ptr %"for_LDG.282"
  %".5612" = bitcast ptr %"R25" to ptr
  store float %".5611", ptr %".5612"
  ; IADD3 R6, R3, R4, RZ
  %".5615" = load i32, ptr %"R3"
  %".5616" = load i32, ptr %"R4"
  %"add.264" = add i32 %".5615", %".5616"
  %"add.265" = add i32 %"add.264", 0
  store i32 %"add.265", ptr %"R6"
  ; LDG.E.SYS R36, [R10]
  %".5619" = load i32, ptr %"R10"
  %"zext.586" = zext i32 %".5619" to i64
  %".5620" = load i32, ptr %"R11"
  %"zext.587" = zext i32 %".5620" to i64
  %"shl.310" = shl i64 %"zext.587", 32
  %"or.290" = or i64 %"shl.310", %"zext.586"
  %".5621" = inttoptr i64 %"or.290" to ptr
  %".5622" = ptrtoint ptr %".5621" to i64
  %".5623" = add i64 %".5622", 0
  %"for_LDG.283" = inttoptr i64 %".5623" to ptr
  %".5624" = load float, ptr %"for_LDG.283"
  %".5625" = bitcast ptr %"R36" to ptr
  store float %".5624", ptr %".5625"
  ; LDG.E.SYS R37, [R12+0x4]
  %".5628" = load i32, ptr %"R12"
  %"zext.588" = zext i32 %".5628" to i64
  %".5629" = load i32, ptr %"R13"
  %"zext.589" = zext i32 %".5629" to i64
  %"shl.311" = shl i64 %"zext.589", 32
  %"or.291" = or i64 %"shl.311", %"zext.588"
  %".5630" = inttoptr i64 %"or.291" to ptr
  %".5631" = ptrtoint ptr %".5630" to i64
  %".5632" = add i64 %".5631", 4
  %"for_LDG.284" = inttoptr i64 %".5632" to ptr
  %".5633" = load float, ptr %"for_LDG.284"
  %".5634" = bitcast ptr %"R37" to ptr
  store float %".5633", ptr %".5634"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".5637" = load i32, ptr %"R4"
  %".5638" = load i32, ptr %"R41"
  %"mul.92" = mul i32 %".5637", %".5638"
  %"add.266" = add i32 %"mul.92", %"Arg_3"
  store i32 %"add.266", ptr %"R4"
  ; LDG.E.SYS R24, [R10+0x4]
  %".5641" = load i32, ptr %"R10"
  %"zext.590" = zext i32 %".5641" to i64
  %".5642" = load i32, ptr %"R11"
  %"zext.591" = zext i32 %".5642" to i64
  %"shl.312" = shl i64 %"zext.591", 32
  %"or.292" = or i64 %"shl.312", %"zext.590"
  %".5643" = inttoptr i64 %"or.292" to ptr
  %".5644" = ptrtoint ptr %".5643" to i64
  %".5645" = add i64 %".5644", 4
  %"for_LDG.285" = inttoptr i64 %".5645" to ptr
  %".5646" = load float, ptr %"for_LDG.285"
  %".5647" = bitcast ptr %"R24" to ptr
  store float %".5646", ptr %".5647"
  ; LDG.E.SYS R39, [R12+0x8]
  %".5650" = load i32, ptr %"R12"
  %"zext.592" = zext i32 %".5650" to i64
  %".5651" = load i32, ptr %"R13"
  %"zext.593" = zext i32 %".5651" to i64
  %"shl.313" = shl i64 %"zext.593", 32
  %"or.293" = or i64 %"shl.313", %"zext.592"
  %".5652" = inttoptr i64 %"or.293" to ptr
  %".5653" = ptrtoint ptr %".5652" to i64
  %".5654" = add i64 %".5653", 8
  %"for_LDG.286" = inttoptr i64 %".5654" to ptr
  %".5655" = load float, ptr %"for_LDG.286"
  %".5656" = bitcast ptr %"R39" to ptr
  store float %".5655", ptr %".5656"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".5659" = load i32, ptr %"R6"
  %".5660" = load i32, ptr %"R41"
  %"mul.93" = mul i32 %".5659", %".5660"
  %"add.267" = add i32 %"mul.93", %"Arg_4"
  store i32 %"add.267", ptr %"R6"
  ; LDG.E.SYS R38, [R10+0x8]
  %".5663" = load i32, ptr %"R10"
  %"zext.594" = zext i32 %".5663" to i64
  %".5664" = load i32, ptr %"R11"
  %"zext.595" = zext i32 %".5664" to i64
  %"shl.314" = shl i64 %"zext.595", 32
  %"or.294" = or i64 %"shl.314", %"zext.594"
  %".5665" = inttoptr i64 %"or.294" to ptr
  %".5666" = ptrtoint ptr %".5665" to i64
  %".5667" = add i64 %".5666", 8
  %"for_LDG.287" = inttoptr i64 %".5667" to ptr
  %".5668" = load float, ptr %"for_LDG.287"
  %".5669" = bitcast ptr %"R38" to ptr
  store float %".5668", ptr %".5669"
  ; LDG.E.SYS R43, [R12+0xc]
  %".5672" = load i32, ptr %"R12"
  %"zext.596" = zext i32 %".5672" to i64
  %".5673" = load i32, ptr %"R13"
  %"zext.597" = zext i32 %".5673" to i64
  %"shl.315" = shl i64 %"zext.597", 32
  %"or.295" = or i64 %"shl.315", %"zext.596"
  %".5674" = inttoptr i64 %"or.295" to ptr
  %".5675" = ptrtoint ptr %".5674" to i64
  %".5676" = add i64 %".5675", 12
  %"for_LDG.288" = inttoptr i64 %".5676" to ptr
  %".5677" = load float, ptr %"for_LDG.288"
  %".5678" = bitcast ptr %"R43" to ptr
  store float %".5677", ptr %".5678"
  ; IADD3 R8, R34, 0x8, RZ
  %".5681" = load i32, ptr %"R34"
  %"add.268" = add i32 %".5681", 8
  %"add.269" = add i32 %"add.268", 0
  store i32 %"add.269", ptr %"R8"
  ; LDG.E.SYS R46, [R10+0xc]
  %".5684" = load i32, ptr %"R10"
  %"zext.598" = zext i32 %".5684" to i64
  %".5685" = load i32, ptr %"R11"
  %"zext.599" = zext i32 %".5685" to i64
  %"shl.316" = shl i64 %"zext.599", 32
  %"or.296" = or i64 %"shl.316", %"zext.598"
  %".5686" = inttoptr i64 %"or.296" to ptr
  %".5687" = ptrtoint ptr %".5686" to i64
  %".5688" = add i64 %".5687", 12
  %"for_LDG.289" = inttoptr i64 %".5688" to ptr
  %".5689" = load float, ptr %"for_LDG.289"
  %".5690" = bitcast ptr %"R46" to ptr
  store float %".5689", ptr %".5690"
  ; LDG.E.SYS R51, [R4]
  %".5693" = load i32, ptr %"R4"
  %"zext.600" = zext i32 %".5693" to i64
  %".5694" = load i32, ptr %"R5"
  %"zext.601" = zext i32 %".5694" to i64
  %"shl.317" = shl i64 %"zext.601", 32
  %"or.297" = or i64 %"shl.317", %"zext.600"
  %".5695" = inttoptr i64 %"or.297" to ptr
  %".5696" = ptrtoint ptr %".5695" to i64
  %".5697" = add i64 %".5696", 0
  %"for_LDG.290" = inttoptr i64 %".5697" to ptr
  %".5698" = load float, ptr %"for_LDG.290"
  %".5699" = bitcast ptr %"R51" to ptr
  store float %".5698", ptr %".5699"
  ; IADD3 R50, R3, R8, RZ
  %".5702" = load i32, ptr %"R3"
  %".5703" = load i32, ptr %"R8"
  %"add.270" = add i32 %".5702", %".5703"
  %"add.271" = add i32 %"add.270", 0
  store i32 %"add.271", ptr %"R50"
  ; LDG.E.SYS R44, [R6]
  %".5706" = load i32, ptr %"R6"
  %"zext.602" = zext i32 %".5706" to i64
  %".5707" = load i32, ptr %"R7"
  %"zext.603" = zext i32 %".5707" to i64
  %"shl.318" = shl i64 %"zext.603", 32
  %"or.298" = or i64 %"shl.318", %"zext.602"
  %".5708" = inttoptr i64 %"or.298" to ptr
  %".5709" = ptrtoint ptr %".5708" to i64
  %".5710" = add i64 %".5709", 0
  %"for_LDG.291" = inttoptr i64 %".5710" to ptr
  %".5711" = load float, ptr %"for_LDG.291"
  %".5712" = bitcast ptr %"R44" to ptr
  store float %".5711", ptr %".5712"
  ; LDG.E.SYS R47, [R4+0x4]
  %".5715" = load i32, ptr %"R4"
  %"zext.604" = zext i32 %".5715" to i64
  %".5716" = load i32, ptr %"R5"
  %"zext.605" = zext i32 %".5716" to i64
  %"shl.319" = shl i64 %"zext.605", 32
  %"or.299" = or i64 %"shl.319", %"zext.604"
  %".5717" = inttoptr i64 %"or.299" to ptr
  %".5718" = ptrtoint ptr %".5717" to i64
  %".5719" = add i64 %".5718", 4
  %"for_LDG.292" = inttoptr i64 %".5719" to ptr
  %".5720" = load float, ptr %"for_LDG.292"
  %".5721" = bitcast ptr %"R47" to ptr
  store float %".5720", ptr %".5721"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".5724" = load i32, ptr %"R8"
  %".5725" = load i32, ptr %"R41"
  %"mul.94" = mul i32 %".5724", %".5725"
  %"add.272" = add i32 %"mul.94", %"Arg_3"
  store i32 %"add.272", ptr %"R8"
  ; LDG.E.SYS R42, [R6+0x4]
  %".5728" = load i32, ptr %"R6"
  %"zext.606" = zext i32 %".5728" to i64
  %".5729" = load i32, ptr %"R7"
  %"zext.607" = zext i32 %".5729" to i64
  %"shl.320" = shl i64 %"zext.607", 32
  %"or.300" = or i64 %"shl.320", %"zext.606"
  %".5730" = inttoptr i64 %"or.300" to ptr
  %".5731" = ptrtoint ptr %".5730" to i64
  %".5732" = add i64 %".5731", 4
  %"for_LDG.293" = inttoptr i64 %".5732" to ptr
  %".5733" = load float, ptr %"for_LDG.293"
  %".5734" = bitcast ptr %"R42" to ptr
  store float %".5733", ptr %".5734"
  ; LDG.E.SYS R45, [R4+0x8]
  %".5737" = load i32, ptr %"R4"
  %"zext.608" = zext i32 %".5737" to i64
  %".5738" = load i32, ptr %"R5"
  %"zext.609" = zext i32 %".5738" to i64
  %"shl.321" = shl i64 %"zext.609", 32
  %"or.301" = or i64 %"shl.321", %"zext.608"
  %".5739" = inttoptr i64 %"or.301" to ptr
  %".5740" = ptrtoint ptr %".5739" to i64
  %".5741" = add i64 %".5740", 8
  %"for_LDG.294" = inttoptr i64 %".5741" to ptr
  %".5742" = load float, ptr %"for_LDG.294"
  %".5743" = bitcast ptr %"R45" to ptr
  store float %".5742", ptr %".5743"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".5746" = load i32, ptr %"R50"
  %".5747" = load i32, ptr %"R41"
  %"mul.95" = mul i32 %".5746", %".5747"
  %"add.273" = add i32 %"mul.95", %"Arg_4"
  store i32 %"add.273", ptr %"R10"
  ; LDG.E.SYS R40, [R6+0x8]
  %".5750" = load i32, ptr %"R6"
  %"zext.610" = zext i32 %".5750" to i64
  %".5751" = load i32, ptr %"R7"
  %"zext.611" = zext i32 %".5751" to i64
  %"shl.322" = shl i64 %"zext.611", 32
  %"or.302" = or i64 %"shl.322", %"zext.610"
  %".5752" = inttoptr i64 %"or.302" to ptr
  %".5753" = ptrtoint ptr %".5752" to i64
  %".5754" = add i64 %".5753", 8
  %"for_LDG.295" = inttoptr i64 %".5754" to ptr
  %".5755" = load float, ptr %"for_LDG.295"
  %".5756" = bitcast ptr %"R40" to ptr
  store float %".5755", ptr %".5756"
  ; LDG.E.SYS R53, [R4+0xc]
  %".5759" = load i32, ptr %"R4"
  %"zext.612" = zext i32 %".5759" to i64
  %".5760" = load i32, ptr %"R5"
  %"zext.613" = zext i32 %".5760" to i64
  %"shl.323" = shl i64 %"zext.613", 32
  %"or.303" = or i64 %"shl.323", %"zext.612"
  %".5761" = inttoptr i64 %"or.303" to ptr
  %".5762" = ptrtoint ptr %".5761" to i64
  %".5763" = add i64 %".5762", 12
  %"for_LDG.296" = inttoptr i64 %".5763" to ptr
  %".5764" = load float, ptr %"for_LDG.296"
  %".5765" = bitcast ptr %"R53" to ptr
  store float %".5764", ptr %".5765"
  ; IADD3 R12, R34, 0xc, RZ
  %".5768" = load i32, ptr %"R34"
  %"add.274" = add i32 %".5768", 12
  %"add.275" = add i32 %"add.274", 0
  store i32 %"add.275", ptr %"R12"
  ; LDG.E.SYS R54, [R6+0xc]
  %".5771" = load i32, ptr %"R6"
  %"zext.614" = zext i32 %".5771" to i64
  %".5772" = load i32, ptr %"R7"
  %"zext.615" = zext i32 %".5772" to i64
  %"shl.324" = shl i64 %"zext.615", 32
  %"or.304" = or i64 %"shl.324", %"zext.614"
  %".5773" = inttoptr i64 %"or.304" to ptr
  %".5774" = ptrtoint ptr %".5773" to i64
  %".5775" = add i64 %".5774", 12
  %"for_LDG.297" = inttoptr i64 %".5775" to ptr
  %".5776" = load float, ptr %"for_LDG.297"
  %".5777" = bitcast ptr %"R54" to ptr
  store float %".5776", ptr %".5777"
  ; LDG.E.SYS R59, [R8]
  %".5780" = load i32, ptr %"R8"
  %"zext.616" = zext i32 %".5780" to i64
  %".5781" = load i32, ptr %"R9"
  %"zext.617" = zext i32 %".5781" to i64
  %"shl.325" = shl i64 %"zext.617", 32
  %"or.305" = or i64 %"shl.325", %"zext.616"
  %".5782" = inttoptr i64 %"or.305" to ptr
  %".5783" = ptrtoint ptr %".5782" to i64
  %".5784" = add i64 %".5783", 0
  %"for_LDG.298" = inttoptr i64 %".5784" to ptr
  %".5785" = load float, ptr %"for_LDG.298"
  %".5786" = bitcast ptr %"R59" to ptr
  store float %".5785", ptr %".5786"
  ; IADD3 R58, R3, R12, RZ
  %".5789" = load i32, ptr %"R3"
  %".5790" = load i32, ptr %"R12"
  %"add.276" = add i32 %".5789", %".5790"
  %"add.277" = add i32 %"add.276", 0
  store i32 %"add.277", ptr %"R58"
  ; LDG.E.SYS R52, [R10]
  %".5793" = load i32, ptr %"R10"
  %"zext.618" = zext i32 %".5793" to i64
  %".5794" = load i32, ptr %"R11"
  %"zext.619" = zext i32 %".5794" to i64
  %"shl.326" = shl i64 %"zext.619", 32
  %"or.306" = or i64 %"shl.326", %"zext.618"
  %".5795" = inttoptr i64 %"or.306" to ptr
  %".5796" = ptrtoint ptr %".5795" to i64
  %".5797" = add i64 %".5796", 0
  %"for_LDG.299" = inttoptr i64 %".5797" to ptr
  %".5798" = load float, ptr %"for_LDG.299"
  %".5799" = bitcast ptr %"R52" to ptr
  store float %".5798", ptr %".5799"
  ; LDG.E.SYS R57, [R8+0x4]
  %".5802" = load i32, ptr %"R8"
  %"zext.620" = zext i32 %".5802" to i64
  %".5803" = load i32, ptr %"R9"
  %"zext.621" = zext i32 %".5803" to i64
  %"shl.327" = shl i64 %"zext.621", 32
  %"or.307" = or i64 %"shl.327", %"zext.620"
  %".5804" = inttoptr i64 %"or.307" to ptr
  %".5805" = ptrtoint ptr %".5804" to i64
  %".5806" = add i64 %".5805", 4
  %"for_LDG.300" = inttoptr i64 %".5806" to ptr
  %".5807" = load float, ptr %"for_LDG.300"
  %".5808" = bitcast ptr %"R57" to ptr
  store float %".5807", ptr %".5808"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".5811" = load i32, ptr %"R12"
  %".5812" = load i32, ptr %"R41"
  %"mul.96" = mul i32 %".5811", %".5812"
  %"add.278" = add i32 %"mul.96", %"Arg_3"
  store i32 %"add.278", ptr %"R12"
  ; LDG.E.SYS R50, [R10+0x4]
  %".5815" = load i32, ptr %"R10"
  %"zext.622" = zext i32 %".5815" to i64
  %".5816" = load i32, ptr %"R11"
  %"zext.623" = zext i32 %".5816" to i64
  %"shl.328" = shl i64 %"zext.623", 32
  %"or.308" = or i64 %"shl.328", %"zext.622"
  %".5817" = inttoptr i64 %"or.308" to ptr
  %".5818" = ptrtoint ptr %".5817" to i64
  %".5819" = add i64 %".5818", 4
  %"for_LDG.301" = inttoptr i64 %".5819" to ptr
  %".5820" = load float, ptr %"for_LDG.301"
  %".5821" = bitcast ptr %"R50" to ptr
  store float %".5820", ptr %".5821"
  ; LDG.E.SYS R55, [R8+0x8]
  %".5824" = load i32, ptr %"R8"
  %"zext.624" = zext i32 %".5824" to i64
  %".5825" = load i32, ptr %"R9"
  %"zext.625" = zext i32 %".5825" to i64
  %"shl.329" = shl i64 %"zext.625", 32
  %"or.309" = or i64 %"shl.329", %"zext.624"
  %".5826" = inttoptr i64 %"or.309" to ptr
  %".5827" = ptrtoint ptr %".5826" to i64
  %".5828" = add i64 %".5827", 8
  %"for_LDG.302" = inttoptr i64 %".5828" to ptr
  %".5829" = load float, ptr %"for_LDG.302"
  %".5830" = bitcast ptr %"R55" to ptr
  store float %".5829", ptr %".5830"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".5833" = load i32, ptr %"R58"
  %".5834" = load i32, ptr %"R41"
  %"mul.97" = mul i32 %".5833", %".5834"
  %"add.279" = add i32 %"mul.97", %"Arg_4"
  store i32 %"add.279", ptr %"R4"
  ; LDG.E.SYS R61, [R8+0xc]
  %".5837" = load i32, ptr %"R8"
  %"zext.626" = zext i32 %".5837" to i64
  %".5838" = load i32, ptr %"R9"
  %"zext.627" = zext i32 %".5838" to i64
  %"shl.330" = shl i64 %"zext.627", 32
  %"or.310" = or i64 %"shl.330", %"zext.626"
  %".5839" = inttoptr i64 %"or.310" to ptr
  %".5840" = ptrtoint ptr %".5839" to i64
  %".5841" = add i64 %".5840", 12
  %"for_LDG.303" = inttoptr i64 %".5841" to ptr
  %".5842" = load float, ptr %"for_LDG.303"
  %".5843" = bitcast ptr %"R61" to ptr
  store float %".5842", ptr %".5843"
  ; LDG.E.SYS R56, [R10+0x8]
  %".5846" = load i32, ptr %"R10"
  %"zext.628" = zext i32 %".5846" to i64
  %".5847" = load i32, ptr %"R11"
  %"zext.629" = zext i32 %".5847" to i64
  %"shl.331" = shl i64 %"zext.629", 32
  %"or.311" = or i64 %"shl.331", %"zext.628"
  %".5848" = inttoptr i64 %"or.311" to ptr
  %".5849" = ptrtoint ptr %".5848" to i64
  %".5850" = add i64 %".5849", 8
  %"for_LDG.304" = inttoptr i64 %".5850" to ptr
  %".5851" = load float, ptr %"for_LDG.304"
  %".5852" = bitcast ptr %"R56" to ptr
  store float %".5851", ptr %".5852"
  ; LDG.E.SYS R58, [R10+0xc]
  %".5855" = load i32, ptr %"R10"
  %"zext.630" = zext i32 %".5855" to i64
  %".5856" = load i32, ptr %"R11"
  %"zext.631" = zext i32 %".5856" to i64
  %"shl.332" = shl i64 %"zext.631", 32
  %"or.312" = or i64 %"shl.332", %"zext.630"
  %".5857" = inttoptr i64 %"or.312" to ptr
  %".5858" = ptrtoint ptr %".5857" to i64
  %".5859" = add i64 %".5858", 12
  %"for_LDG.305" = inttoptr i64 %".5859" to ptr
  %".5860" = load float, ptr %"for_LDG.305"
  %".5861" = bitcast ptr %"R58" to ptr
  store float %".5860", ptr %".5861"
  ; LDG.E.SYS R6, [R12]
  %".5864" = load i32, ptr %"R12"
  %"zext.632" = zext i32 %".5864" to i64
  %".5865" = load i32, ptr %"R13"
  %"zext.633" = zext i32 %".5865" to i64
  %"shl.333" = shl i64 %"zext.633", 32
  %"or.313" = or i64 %"shl.333", %"zext.632"
  %".5866" = inttoptr i64 %"or.313" to ptr
  %".5867" = ptrtoint ptr %".5866" to i64
  %".5868" = add i64 %".5867", 0
  %"for_LDG.306" = inttoptr i64 %".5868" to ptr
  %".5869" = load float, ptr %"for_LDG.306"
  %".5870" = bitcast ptr %"R6" to ptr
  store float %".5869", ptr %".5870"
  ; LDG.E.SYS R41, [R12+0x4]
  %".5873" = load i32, ptr %"R12"
  %"zext.634" = zext i32 %".5873" to i64
  %".5874" = load i32, ptr %"R13"
  %"zext.635" = zext i32 %".5874" to i64
  %"shl.334" = shl i64 %"zext.635", 32
  %"or.314" = or i64 %"shl.334", %"zext.634"
  %".5875" = inttoptr i64 %"or.314" to ptr
  %".5876" = ptrtoint ptr %".5875" to i64
  %".5877" = add i64 %".5876", 4
  %"for_LDG.307" = inttoptr i64 %".5877" to ptr
  %".5878" = load float, ptr %"for_LDG.307"
  %".5879" = bitcast ptr %"R41" to ptr
  store float %".5878", ptr %".5879"
  ; LDG.E.SYS R10, [R4]
  %".5882" = load i32, ptr %"R4"
  %"zext.636" = zext i32 %".5882" to i64
  %".5883" = load i32, ptr %"R5"
  %"zext.637" = zext i32 %".5883" to i64
  %"shl.335" = shl i64 %"zext.637", 32
  %"or.315" = or i64 %"shl.335", %"zext.636"
  %".5884" = inttoptr i64 %"or.315" to ptr
  %".5885" = ptrtoint ptr %".5884" to i64
  %".5886" = add i64 %".5885", 0
  %"for_LDG.308" = inttoptr i64 %".5886" to ptr
  %".5887" = load float, ptr %"for_LDG.308"
  %".5888" = bitcast ptr %"R10" to ptr
  store float %".5887", ptr %".5888"
  ; LDG.E.SYS R7, [R12+0x8]
  %".5891" = load i32, ptr %"R12"
  %"zext.638" = zext i32 %".5891" to i64
  %".5892" = load i32, ptr %"R13"
  %"zext.639" = zext i32 %".5892" to i64
  %"shl.336" = shl i64 %"zext.639", 32
  %"or.316" = or i64 %"shl.336", %"zext.638"
  %".5893" = inttoptr i64 %"or.316" to ptr
  %".5894" = ptrtoint ptr %".5893" to i64
  %".5895" = add i64 %".5894", 8
  %"for_LDG.309" = inttoptr i64 %".5895" to ptr
  %".5896" = load float, ptr %"for_LDG.309"
  %".5897" = bitcast ptr %"R7" to ptr
  store float %".5896", ptr %".5897"
  ; LDG.E.SYS R9, [R4+0x4]
  %".5900" = load i32, ptr %"R4"
  %"zext.640" = zext i32 %".5900" to i64
  %".5901" = load i32, ptr %"R5"
  %"zext.641" = zext i32 %".5901" to i64
  %"shl.337" = shl i64 %"zext.641", 32
  %"or.317" = or i64 %"shl.337", %"zext.640"
  %".5902" = inttoptr i64 %"or.317" to ptr
  %".5903" = ptrtoint ptr %".5902" to i64
  %".5904" = add i64 %".5903", 4
  %"for_LDG.310" = inttoptr i64 %".5904" to ptr
  %".5905" = load float, ptr %"for_LDG.310"
  %".5906" = bitcast ptr %"R9" to ptr
  store float %".5905", ptr %".5906"
  ; LDG.E.SYS R60, [R12+0xc]
  %".5909" = load i32, ptr %"R12"
  %"zext.642" = zext i32 %".5909" to i64
  %".5910" = load i32, ptr %"R13"
  %"zext.643" = zext i32 %".5910" to i64
  %"shl.338" = shl i64 %"zext.643", 32
  %"or.318" = or i64 %"shl.338", %"zext.642"
  %".5911" = inttoptr i64 %"or.318" to ptr
  %".5912" = ptrtoint ptr %".5911" to i64
  %".5913" = add i64 %".5912", 12
  %"for_LDG.311" = inttoptr i64 %".5913" to ptr
  %".5914" = load float, ptr %"for_LDG.311"
  %".5915" = bitcast ptr %"R60" to ptr
  store float %".5914", ptr %".5915"
  ; LDG.E.SYS R8, [R4+0x8]
  %".5918" = load i32, ptr %"R4"
  %"zext.644" = zext i32 %".5918" to i64
  %".5919" = load i32, ptr %"R5"
  %"zext.645" = zext i32 %".5919" to i64
  %"shl.339" = shl i64 %"zext.645", 32
  %"or.319" = or i64 %"shl.339", %"zext.644"
  %".5920" = inttoptr i64 %"or.319" to ptr
  %".5921" = ptrtoint ptr %".5920" to i64
  %".5922" = add i64 %".5921", 8
  %"for_LDG.312" = inttoptr i64 %".5922" to ptr
  %".5923" = load float, ptr %"for_LDG.312"
  %".5924" = bitcast ptr %"R8" to ptr
  store float %".5923", ptr %".5924"
  ; LDG.E.SYS R11, [R4+0xc]
  %".5927" = load i32, ptr %"R4"
  %"zext.646" = zext i32 %".5927" to i64
  %".5928" = load i32, ptr %"R5"
  %"zext.647" = zext i32 %".5928" to i64
  %"shl.340" = shl i64 %"zext.647", 32
  %"or.320" = or i64 %"shl.340", %"zext.646"
  %".5929" = inttoptr i64 %"or.320" to ptr
  %".5930" = ptrtoint ptr %".5929" to i64
  %".5931" = add i64 %".5930", 12
  %"for_LDG.313" = inttoptr i64 %".5931" to ptr
  %".5932" = load float, ptr %"for_LDG.313"
  %".5933" = bitcast ptr %"R11" to ptr
  store float %".5932", ptr %".5933"
  ; IADD3 R35, R35, -0x10, RZ
  %".5936" = load i32, ptr %"R35"
  %"add.280" = add i32 %".5936", -16
  %"add.281" = add i32 %"add.280", 0
  store i32 %"add.281", ptr %"R35"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".5939" = load i32, ptr %"R35"
  %".5940" = load i1, ptr %"PT"
  %"cmp.48" = icmp sgt i32 %".5939", 12
  %".5941" = and i1 %"cmp.48", %".5940"
  ; IADD3 R34, R34, 0x10, RZ
  %".5943" = load i32, ptr %"R34"
  %"add.282" = add i32 %".5943", 16
  %"add.283" = add i32 %"add.282", 0
  store i32 %"add.283", ptr %"R34"
  ; FMUL R25, R25, R22
  %".5946" = load float, ptr %"R25"
  %".5947" = load float, ptr %"R22"
  %"fmul.243" = fmul float %".5946", %".5947"
  %".5948" = bitcast ptr %"R25" to ptr
  store float %"fmul.243", ptr %".5948"
  ; FFMA R25, R25, R36, R21
  %".5951" = load float, ptr %"R25"
  %".5952" = load float, ptr %"R36"
  %".5953" = load float, ptr %"R21"
  %"fmul.244" = fmul float %".5951", %".5952"
  %"fadd.223" = fadd float %"fmul.244", %".5953"
  %".5954" = bitcast ptr %"R25" to ptr
  store float %"fadd.223", ptr %".5954"
  ; FMUL R37, R37, R22
  %".5957" = load float, ptr %"R37"
  %".5958" = load float, ptr %"R22"
  %"fmul.245" = fmul float %".5957", %".5958"
  %".5959" = bitcast ptr %"R37" to ptr
  store float %"fmul.245", ptr %".5959"
  ; FFMA R25, R37, R24, R25
  %".5962" = load float, ptr %"R37"
  %".5963" = load float, ptr %"R24"
  %".5964" = load float, ptr %"R25"
  %"fmul.246" = fmul float %".5962", %".5963"
  %"fadd.224" = fadd float %"fmul.246", %".5964"
  %".5965" = bitcast ptr %"R25" to ptr
  store float %"fadd.224", ptr %".5965"
  ; FMUL R39, R39, R22
  %".5968" = load float, ptr %"R39"
  %".5969" = load float, ptr %"R22"
  %"fmul.247" = fmul float %".5968", %".5969"
  %".5970" = bitcast ptr %"R39" to ptr
  store float %"fmul.247", ptr %".5970"
  ; FFMA R25, R39, R38, R25
  %".5973" = load float, ptr %"R39"
  %".5974" = load float, ptr %"R38"
  %".5975" = load float, ptr %"R25"
  %"fmul.248" = fmul float %".5973", %".5974"
  %"fadd.225" = fadd float %"fmul.248", %".5975"
  %".5976" = bitcast ptr %"R25" to ptr
  store float %"fadd.225", ptr %".5976"
  ; FMUL R43, R43, R22
  %".5979" = load float, ptr %"R43"
  %".5980" = load float, ptr %"R22"
  %"fmul.249" = fmul float %".5979", %".5980"
  %".5981" = bitcast ptr %"R43" to ptr
  store float %"fmul.249", ptr %".5981"
  ; FFMA R25, R43, R46, R25
  %".5984" = load float, ptr %"R43"
  %".5985" = load float, ptr %"R46"
  %".5986" = load float, ptr %"R25"
  %"fmul.250" = fmul float %".5984", %".5985"
  %"fadd.226" = fadd float %"fmul.250", %".5986"
  %".5987" = bitcast ptr %"R25" to ptr
  store float %"fadd.226", ptr %".5987"
  ; FMUL R51, R51, R22
  %".5990" = load float, ptr %"R51"
  %".5991" = load float, ptr %"R22"
  %"fmul.251" = fmul float %".5990", %".5991"
  %".5992" = bitcast ptr %"R51" to ptr
  store float %"fmul.251", ptr %".5992"
  ; FFMA R25, R51, R44, R25
  %".5995" = load float, ptr %"R51"
  %".5996" = load float, ptr %"R44"
  %".5997" = load float, ptr %"R25"
  %"fmul.252" = fmul float %".5995", %".5996"
  %"fadd.227" = fadd float %"fmul.252", %".5997"
  %".5998" = bitcast ptr %"R25" to ptr
  store float %"fadd.227", ptr %".5998"
  ; FMUL R47, R47, R22
  %".6001" = load float, ptr %"R47"
  %".6002" = load float, ptr %"R22"
  %"fmul.253" = fmul float %".6001", %".6002"
  %".6003" = bitcast ptr %"R47" to ptr
  store float %"fmul.253", ptr %".6003"
  ; FFMA R25, R47, R42, R25
  %".6006" = load float, ptr %"R47"
  %".6007" = load float, ptr %"R42"
  %".6008" = load float, ptr %"R25"
  %"fmul.254" = fmul float %".6006", %".6007"
  %"fadd.228" = fadd float %"fmul.254", %".6008"
  %".6009" = bitcast ptr %"R25" to ptr
  store float %"fadd.228", ptr %".6009"
  ; FMUL R45, R45, R22
  %".6012" = load float, ptr %"R45"
  %".6013" = load float, ptr %"R22"
  %"fmul.255" = fmul float %".6012", %".6013"
  %".6014" = bitcast ptr %"R45" to ptr
  store float %"fmul.255", ptr %".6014"
  ; FFMA R25, R45, R40, R25
  %".6017" = load float, ptr %"R45"
  %".6018" = load float, ptr %"R40"
  %".6019" = load float, ptr %"R25"
  %"fmul.256" = fmul float %".6017", %".6018"
  %"fadd.229" = fadd float %"fmul.256", %".6019"
  %".6020" = bitcast ptr %"R25" to ptr
  store float %"fadd.229", ptr %".6020"
  ; FMUL R53, R53, R22
  %".6023" = load float, ptr %"R53"
  %".6024" = load float, ptr %"R22"
  %"fmul.257" = fmul float %".6023", %".6024"
  %".6025" = bitcast ptr %"R53" to ptr
  store float %"fmul.257", ptr %".6025"
  ; FFMA R25, R53, R54, R25
  %".6028" = load float, ptr %"R53"
  %".6029" = load float, ptr %"R54"
  %".6030" = load float, ptr %"R25"
  %"fmul.258" = fmul float %".6028", %".6029"
  %"fadd.230" = fadd float %"fmul.258", %".6030"
  %".6031" = bitcast ptr %"R25" to ptr
  store float %"fadd.230", ptr %".6031"
  ; FMUL R59, R59, R22
  %".6034" = load float, ptr %"R59"
  %".6035" = load float, ptr %"R22"
  %"fmul.259" = fmul float %".6034", %".6035"
  %".6036" = bitcast ptr %"R59" to ptr
  store float %"fmul.259", ptr %".6036"
  ; FFMA R25, R59, R52, R25
  %".6039" = load float, ptr %"R59"
  %".6040" = load float, ptr %"R52"
  %".6041" = load float, ptr %"R25"
  %"fmul.260" = fmul float %".6039", %".6040"
  %"fadd.231" = fadd float %"fmul.260", %".6041"
  %".6042" = bitcast ptr %"R25" to ptr
  store float %"fadd.231", ptr %".6042"
  ; FMUL R57, R57, R22
  %".6045" = load float, ptr %"R57"
  %".6046" = load float, ptr %"R22"
  %"fmul.261" = fmul float %".6045", %".6046"
  %".6047" = bitcast ptr %"R57" to ptr
  store float %"fmul.261", ptr %".6047"
  ; FFMA R25, R57, R50, R25
  %".6050" = load float, ptr %"R57"
  %".6051" = load float, ptr %"R50"
  %".6052" = load float, ptr %"R25"
  %"fmul.262" = fmul float %".6050", %".6051"
  %"fadd.232" = fadd float %"fmul.262", %".6052"
  %".6053" = bitcast ptr %"R25" to ptr
  store float %"fadd.232", ptr %".6053"
  ; FMUL R55, R55, R22.reuse
  %".6056" = load float, ptr %"R55"
  %".6057" = load float, ptr %"R22"
  %"fmul.263" = fmul float %".6056", %".6057"
  %".6058" = bitcast ptr %"R55" to ptr
  store float %"fmul.263", ptr %".6058"
  ; FMUL R61, R61, R22
  %".6061" = load float, ptr %"R61"
  %".6062" = load float, ptr %"R22"
  %"fmul.264" = fmul float %".6061", %".6062"
  %".6063" = bitcast ptr %"R61" to ptr
  store float %"fmul.264", ptr %".6063"
  ; FFMA R25, R55, R56, R25
  %".6066" = load float, ptr %"R55"
  %".6067" = load float, ptr %"R56"
  %".6068" = load float, ptr %"R25"
  %"fmul.265" = fmul float %".6066", %".6067"
  %"fadd.233" = fadd float %"fmul.265", %".6068"
  %".6069" = bitcast ptr %"R25" to ptr
  store float %"fadd.233", ptr %".6069"
  ; FFMA R25, R61, R58, R25
  %".6072" = load float, ptr %"R61"
  %".6073" = load float, ptr %"R58"
  %".6074" = load float, ptr %"R25"
  %"fmul.266" = fmul float %".6072", %".6073"
  %"fadd.234" = fadd float %"fmul.266", %".6074"
  %".6075" = bitcast ptr %"R25" to ptr
  store float %"fadd.234", ptr %".6075"
  ; FMUL R6, R6, R22.reuse
  %".6078" = load float, ptr %"R6"
  %".6079" = load float, ptr %"R22"
  %"fmul.267" = fmul float %".6078", %".6079"
  %".6080" = bitcast ptr %"R6" to ptr
  store float %"fmul.267", ptr %".6080"
  ; FMUL R41, R41, R22
  %".6083" = load float, ptr %"R41"
  %".6084" = load float, ptr %"R22"
  %"fmul.268" = fmul float %".6083", %".6084"
  %".6085" = bitcast ptr %"R41" to ptr
  store float %"fmul.268", ptr %".6085"
  ; FFMA R6, R6, R10, R25
  %".6088" = load float, ptr %"R6"
  %".6089" = load float, ptr %"R10"
  %".6090" = load float, ptr %"R25"
  %"fmul.269" = fmul float %".6088", %".6089"
  %"fadd.235" = fadd float %"fmul.269", %".6090"
  %".6091" = bitcast ptr %"R6" to ptr
  store float %"fadd.235", ptr %".6091"
  ; FMUL R7, R7, R22
  %".6094" = load float, ptr %"R7"
  %".6095" = load float, ptr %"R22"
  %"fmul.270" = fmul float %".6094", %".6095"
  %".6096" = bitcast ptr %"R7" to ptr
  store float %"fmul.270", ptr %".6096"
  ; FFMA R9, R41, R9, R6
  %".6099" = load float, ptr %"R41"
  %".6100" = load float, ptr %"R9"
  %".6101" = load float, ptr %"R6"
  %"fmul.271" = fmul float %".6099", %".6100"
  %"fadd.236" = fadd float %"fmul.271", %".6101"
  %".6102" = bitcast ptr %"R9" to ptr
  store float %"fadd.236", ptr %".6102"
  ; FMUL R60, R60, R22
  %".6105" = load float, ptr %"R60"
  %".6106" = load float, ptr %"R22"
  %"fmul.272" = fmul float %".6105", %".6106"
  %".6107" = bitcast ptr %"R60" to ptr
  store float %"fmul.272", ptr %".6107"
  ; FFMA R8, R7, R8, R9
  %".6110" = load float, ptr %"R7"
  %".6111" = load float, ptr %"R8"
  %".6112" = load float, ptr %"R9"
  %"fmul.273" = fmul float %".6110", %".6111"
  %"fadd.237" = fadd float %"fmul.273", %".6112"
  %".6113" = bitcast ptr %"R8" to ptr
  store float %"fadd.237", ptr %".6113"
  ; FFMA R21, R60, R11, R8
  %".6116" = load float, ptr %"R60"
  %".6117" = load float, ptr %"R11"
  %".6118" = load float, ptr %"R8"
  %"fmul.274" = fmul float %".6116", %".6117"
  %"fadd.238" = fadd float %"fmul.274", %".6118"
  %".6119" = bitcast ptr %"R21" to ptr
  store float %"fadd.238", ptr %".6119"
  ; @P1 BRA `(.L_x_39)
  %".6122" = load i1, ptr %"P1"
  %".6123" = icmp ne i1 %".6122", 1
  br i1 %".6123", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".6126" = load i32, ptr %"R35"
  %".6127" = load i1, ptr %"PT"
  %"cmp.49" = icmp sgt i32 %".6126", 4
  %".6128" = and i1 %"cmp.49", %".6127"
  ; @!P1 BRA `(.L_x_40)
  %".6130" = load i1, ptr %"P1"
  %".6131" = icmp eq i1 %".6130", 1
  br i1 %".6131", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R6, R3, R34, RZ
  %".6136" = load i32, ptr %"R3"
  %".6137" = load i32, ptr %"R34"
  %"add.284" = add i32 %".6136", %".6137"
  %"add.285" = add i32 %"add.284", 0
  store i32 %"add.285", ptr %"R6"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".6140" = load i32, ptr %"R34"
  %".6141" = load i32, ptr %"R11"
  %"mul.98" = mul i32 %".6140", %".6141"
  %"add.286" = add i32 %"mul.98", %"Arg_3"
  store i32 %"add.286", ptr %"R8"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".6144" = load i32, ptr %"R6"
  %".6145" = load i32, ptr %"R11"
  %"mul.99" = mul i32 %".6144", %".6145"
  %"add.287" = add i32 %"mul.99", %"Arg_4"
  store i32 %"add.287", ptr %"R6"
  ; IADD3 R4, R34, 0x4, RZ
  %".6148" = load i32, ptr %"R34"
  %"add.288" = add i32 %".6148", 4
  %"add.289" = add i32 %"add.288", 0
  store i32 %"add.289", ptr %"R4"
  ; LDG.E.SYS R13, [R8]
  %".6151" = load i32, ptr %"R8"
  %"zext.648" = zext i32 %".6151" to i64
  %".6152" = load i32, ptr %"R9"
  %"zext.649" = zext i32 %".6152" to i64
  %"shl.341" = shl i64 %"zext.649", 32
  %"or.321" = or i64 %"shl.341", %"zext.648"
  %".6153" = inttoptr i64 %"or.321" to ptr
  %".6154" = ptrtoint ptr %".6153" to i64
  %".6155" = add i64 %".6154", 0
  %"for_LDG.314" = inttoptr i64 %".6155" to ptr
  %".6156" = load float, ptr %"for_LDG.314"
  %".6157" = bitcast ptr %"R13" to ptr
  store float %".6156", ptr %".6157"
  ; IADD3 R10, R3, R4, RZ
  %".6160" = load i32, ptr %"R3"
  %".6161" = load i32, ptr %"R4"
  %"add.290" = add i32 %".6160", %".6161"
  %"add.291" = add i32 %"add.290", 0
  store i32 %"add.291", ptr %"R10"
  ; LDG.E.SYS R12, [R6]
  %".6164" = load i32, ptr %"R6"
  %"zext.650" = zext i32 %".6164" to i64
  %".6165" = load i32, ptr %"R7"
  %"zext.651" = zext i32 %".6165" to i64
  %"shl.342" = shl i64 %"zext.651", 32
  %"or.322" = or i64 %"shl.342", %"zext.650"
  %".6166" = inttoptr i64 %"or.322" to ptr
  %".6167" = ptrtoint ptr %".6166" to i64
  %".6168" = add i64 %".6167", 0
  %"for_LDG.315" = inttoptr i64 %".6168" to ptr
  %".6169" = load float, ptr %"for_LDG.315"
  %".6170" = bitcast ptr %"R12" to ptr
  store float %".6169", ptr %".6170"
  ; LDG.E.SYS R25, [R8+0x4]
  %".6173" = load i32, ptr %"R8"
  %"zext.652" = zext i32 %".6173" to i64
  %".6174" = load i32, ptr %"R9"
  %"zext.653" = zext i32 %".6174" to i64
  %"shl.343" = shl i64 %"zext.653", 32
  %"or.323" = or i64 %"shl.343", %"zext.652"
  %".6175" = inttoptr i64 %"or.323" to ptr
  %".6176" = ptrtoint ptr %".6175" to i64
  %".6177" = add i64 %".6176", 4
  %"for_LDG.316" = inttoptr i64 %".6177" to ptr
  %".6178" = load float, ptr %"for_LDG.316"
  %".6179" = bitcast ptr %"R25" to ptr
  store float %".6178", ptr %".6179"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".6182" = load i32, ptr %"R4"
  %".6183" = load i32, ptr %"R11"
  %"mul.100" = mul i32 %".6182", %".6183"
  %"add.292" = add i32 %"mul.100", %"Arg_3"
  store i32 %"add.292", ptr %"R4"
  ; LDG.E.SYS R24, [R6+0x4]
  %".6186" = load i32, ptr %"R6"
  %"zext.654" = zext i32 %".6186" to i64
  %".6187" = load i32, ptr %"R7"
  %"zext.655" = zext i32 %".6187" to i64
  %"shl.344" = shl i64 %"zext.655", 32
  %"or.324" = or i64 %"shl.344", %"zext.654"
  %".6188" = inttoptr i64 %"or.324" to ptr
  %".6189" = ptrtoint ptr %".6188" to i64
  %".6190" = add i64 %".6189", 4
  %"for_LDG.317" = inttoptr i64 %".6190" to ptr
  %".6191" = load float, ptr %"for_LDG.317"
  %".6192" = bitcast ptr %"R24" to ptr
  store float %".6191", ptr %".6192"
  ; LDG.E.SYS R37, [R8+0x8]
  %".6195" = load i32, ptr %"R8"
  %"zext.656" = zext i32 %".6195" to i64
  %".6196" = load i32, ptr %"R9"
  %"zext.657" = zext i32 %".6196" to i64
  %"shl.345" = shl i64 %"zext.657", 32
  %"or.325" = or i64 %"shl.345", %"zext.656"
  %".6197" = inttoptr i64 %"or.325" to ptr
  %".6198" = ptrtoint ptr %".6197" to i64
  %".6199" = add i64 %".6198", 8
  %"for_LDG.318" = inttoptr i64 %".6199" to ptr
  %".6200" = load float, ptr %"for_LDG.318"
  %".6201" = bitcast ptr %"R37" to ptr
  store float %".6200", ptr %".6201"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".6204" = load i32, ptr %"R10"
  %".6205" = load i32, ptr %"R11"
  %"mul.101" = mul i32 %".6204", %".6205"
  %"add.293" = add i32 %"mul.101", %"Arg_4"
  store i32 %"add.293", ptr %"R10"
  ; LDG.E.SYS R36, [R6+0x8]
  %".6208" = load i32, ptr %"R6"
  %"zext.658" = zext i32 %".6208" to i64
  %".6209" = load i32, ptr %"R7"
  %"zext.659" = zext i32 %".6209" to i64
  %"shl.346" = shl i64 %"zext.659", 32
  %"or.326" = or i64 %"shl.346", %"zext.658"
  %".6210" = inttoptr i64 %"or.326" to ptr
  %".6211" = ptrtoint ptr %".6210" to i64
  %".6212" = add i64 %".6211", 8
  %"for_LDG.319" = inttoptr i64 %".6212" to ptr
  %".6213" = load float, ptr %"for_LDG.319"
  %".6214" = bitcast ptr %"R36" to ptr
  store float %".6213", ptr %".6214"
  ; LDG.E.SYS R39, [R8+0xc]
  %".6217" = load i32, ptr %"R8"
  %"zext.660" = zext i32 %".6217" to i64
  %".6218" = load i32, ptr %"R9"
  %"zext.661" = zext i32 %".6218" to i64
  %"shl.347" = shl i64 %"zext.661", 32
  %"or.327" = or i64 %"shl.347", %"zext.660"
  %".6219" = inttoptr i64 %"or.327" to ptr
  %".6220" = ptrtoint ptr %".6219" to i64
  %".6221" = add i64 %".6220", 12
  %"for_LDG.320" = inttoptr i64 %".6221" to ptr
  %".6222" = load float, ptr %"for_LDG.320"
  %".6223" = bitcast ptr %"R39" to ptr
  store float %".6222", ptr %".6223"
  ; LDG.E.SYS R38, [R6+0xc]
  %".6226" = load i32, ptr %"R6"
  %"zext.662" = zext i32 %".6226" to i64
  %".6227" = load i32, ptr %"R7"
  %"zext.663" = zext i32 %".6227" to i64
  %"shl.348" = shl i64 %"zext.663", 32
  %"or.328" = or i64 %"shl.348", %"zext.662"
  %".6228" = inttoptr i64 %"or.328" to ptr
  %".6229" = ptrtoint ptr %".6228" to i64
  %".6230" = add i64 %".6229", 12
  %"for_LDG.321" = inttoptr i64 %".6230" to ptr
  %".6231" = load float, ptr %"for_LDG.321"
  %".6232" = bitcast ptr %"R38" to ptr
  store float %".6231", ptr %".6232"
  ; LDG.E.SYS R41, [R4]
  %".6235" = load i32, ptr %"R4"
  %"zext.664" = zext i32 %".6235" to i64
  %".6236" = load i32, ptr %"R5"
  %"zext.665" = zext i32 %".6236" to i64
  %"shl.349" = shl i64 %"zext.665", 32
  %"or.329" = or i64 %"shl.349", %"zext.664"
  %".6237" = inttoptr i64 %"or.329" to ptr
  %".6238" = ptrtoint ptr %".6237" to i64
  %".6239" = add i64 %".6238", 0
  %"for_LDG.322" = inttoptr i64 %".6239" to ptr
  %".6240" = load float, ptr %"for_LDG.322"
  %".6241" = bitcast ptr %"R41" to ptr
  store float %".6240", ptr %".6241"
  ; LDG.E.SYS R40, [R10]
  %".6244" = load i32, ptr %"R10"
  %"zext.666" = zext i32 %".6244" to i64
  %".6245" = load i32, ptr %"R11"
  %"zext.667" = zext i32 %".6245" to i64
  %"shl.350" = shl i64 %"zext.667", 32
  %"or.330" = or i64 %"shl.350", %"zext.666"
  %".6246" = inttoptr i64 %"or.330" to ptr
  %".6247" = ptrtoint ptr %".6246" to i64
  %".6248" = add i64 %".6247", 0
  %"for_LDG.323" = inttoptr i64 %".6248" to ptr
  %".6249" = load float, ptr %"for_LDG.323"
  %".6250" = bitcast ptr %"R40" to ptr
  store float %".6249", ptr %".6250"
  ; LDG.E.SYS R43, [R4+0x4]
  %".6253" = load i32, ptr %"R4"
  %"zext.668" = zext i32 %".6253" to i64
  %".6254" = load i32, ptr %"R5"
  %"zext.669" = zext i32 %".6254" to i64
  %"shl.351" = shl i64 %"zext.669", 32
  %"or.331" = or i64 %"shl.351", %"zext.668"
  %".6255" = inttoptr i64 %"or.331" to ptr
  %".6256" = ptrtoint ptr %".6255" to i64
  %".6257" = add i64 %".6256", 4
  %"for_LDG.324" = inttoptr i64 %".6257" to ptr
  %".6258" = load float, ptr %"for_LDG.324"
  %".6259" = bitcast ptr %"R43" to ptr
  store float %".6258", ptr %".6259"
  ; LDG.E.SYS R42, [R10+0x4]
  %".6262" = load i32, ptr %"R10"
  %"zext.670" = zext i32 %".6262" to i64
  %".6263" = load i32, ptr %"R11"
  %"zext.671" = zext i32 %".6263" to i64
  %"shl.352" = shl i64 %"zext.671", 32
  %"or.332" = or i64 %"shl.352", %"zext.670"
  %".6264" = inttoptr i64 %"or.332" to ptr
  %".6265" = ptrtoint ptr %".6264" to i64
  %".6266" = add i64 %".6265", 4
  %"for_LDG.325" = inttoptr i64 %".6266" to ptr
  %".6267" = load float, ptr %"for_LDG.325"
  %".6268" = bitcast ptr %"R42" to ptr
  store float %".6267", ptr %".6268"
  ; LDG.E.SYS R45, [R4+0x8]
  %".6271" = load i32, ptr %"R4"
  %"zext.672" = zext i32 %".6271" to i64
  %".6272" = load i32, ptr %"R5"
  %"zext.673" = zext i32 %".6272" to i64
  %"shl.353" = shl i64 %"zext.673", 32
  %"or.333" = or i64 %"shl.353", %"zext.672"
  %".6273" = inttoptr i64 %"or.333" to ptr
  %".6274" = ptrtoint ptr %".6273" to i64
  %".6275" = add i64 %".6274", 8
  %"for_LDG.326" = inttoptr i64 %".6275" to ptr
  %".6276" = load float, ptr %"for_LDG.326"
  %".6277" = bitcast ptr %"R45" to ptr
  store float %".6276", ptr %".6277"
  ; LDG.E.SYS R47, [R4+0xc]
  %".6280" = load i32, ptr %"R4"
  %"zext.674" = zext i32 %".6280" to i64
  %".6281" = load i32, ptr %"R5"
  %"zext.675" = zext i32 %".6281" to i64
  %"shl.354" = shl i64 %"zext.675", 32
  %"or.334" = or i64 %"shl.354", %"zext.674"
  %".6282" = inttoptr i64 %"or.334" to ptr
  %".6283" = ptrtoint ptr %".6282" to i64
  %".6284" = add i64 %".6283", 12
  %"for_LDG.327" = inttoptr i64 %".6284" to ptr
  %".6285" = load float, ptr %"for_LDG.327"
  %".6286" = bitcast ptr %"R47" to ptr
  store float %".6285", ptr %".6286"
  ; LDG.E.SYS R44, [R10+0x8]
  %".6289" = load i32, ptr %"R10"
  %"zext.676" = zext i32 %".6289" to i64
  %".6290" = load i32, ptr %"R11"
  %"zext.677" = zext i32 %".6290" to i64
  %"shl.355" = shl i64 %"zext.677", 32
  %"or.335" = or i64 %"shl.355", %"zext.676"
  %".6291" = inttoptr i64 %"or.335" to ptr
  %".6292" = ptrtoint ptr %".6291" to i64
  %".6293" = add i64 %".6292", 8
  %"for_LDG.328" = inttoptr i64 %".6293" to ptr
  %".6294" = load float, ptr %"for_LDG.328"
  %".6295" = bitcast ptr %"R44" to ptr
  store float %".6294", ptr %".6295"
  ; LDG.E.SYS R46, [R10+0xc]
  %".6298" = load i32, ptr %"R10"
  %"zext.678" = zext i32 %".6298" to i64
  %".6299" = load i32, ptr %"R11"
  %"zext.679" = zext i32 %".6299" to i64
  %"shl.356" = shl i64 %"zext.679", 32
  %"or.336" = or i64 %"shl.356", %"zext.678"
  %".6300" = inttoptr i64 %"or.336" to ptr
  %".6301" = ptrtoint ptr %".6300" to i64
  %".6302" = add i64 %".6301", 12
  %"for_LDG.329" = inttoptr i64 %".6302" to ptr
  %".6303" = load float, ptr %"for_LDG.329"
  %".6304" = bitcast ptr %"R46" to ptr
  store float %".6303", ptr %".6304"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".6307" = xor i1 1, 1
  %".6308" = and i1 %".6307", 1
  %".6309" = and i1 %".6308", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".6311" = load i32, ptr %"R35"
  %"add.294" = add i32 %".6311", -8
  %"add.295" = add i32 %"add.294", 0
  store i32 %"add.295", ptr %"R35"
  ; IADD3 R34, R34, 0x8, RZ
  %".6314" = load i32, ptr %"R34"
  %"add.296" = add i32 %".6314", 8
  %"add.297" = add i32 %"add.296", 0
  store i32 %"add.297", ptr %"R34"
  ; FMUL R8, R13, R22
  %".6317" = load float, ptr %"R13"
  %".6318" = load float, ptr %"R22"
  %"fmul.275" = fmul float %".6317", %".6318"
  %".6319" = bitcast ptr %"R8" to ptr
  store float %"fmul.275", ptr %".6319"
  ; FFMA R8, R8, R12, R21
  %".6322" = load float, ptr %"R8"
  %".6323" = load float, ptr %"R12"
  %".6324" = load float, ptr %"R21"
  %"fmul.276" = fmul float %".6322", %".6323"
  %"fadd.239" = fadd float %"fmul.276", %".6324"
  %".6325" = bitcast ptr %"R8" to ptr
  store float %"fadd.239", ptr %".6325"
  ; FMUL R25, R25, R22
  %".6328" = load float, ptr %"R25"
  %".6329" = load float, ptr %"R22"
  %"fmul.277" = fmul float %".6328", %".6329"
  %".6330" = bitcast ptr %"R25" to ptr
  store float %"fmul.277", ptr %".6330"
  ; FFMA R8, R25, R24, R8
  %".6333" = load float, ptr %"R25"
  %".6334" = load float, ptr %"R24"
  %".6335" = load float, ptr %"R8"
  %"fmul.278" = fmul float %".6333", %".6334"
  %"fadd.240" = fadd float %"fmul.278", %".6335"
  %".6336" = bitcast ptr %"R8" to ptr
  store float %"fadd.240", ptr %".6336"
  ; FMUL R37, R37, R22
  %".6339" = load float, ptr %"R37"
  %".6340" = load float, ptr %"R22"
  %"fmul.279" = fmul float %".6339", %".6340"
  %".6341" = bitcast ptr %"R37" to ptr
  store float %"fmul.279", ptr %".6341"
  ; FFMA R8, R37, R36, R8
  %".6344" = load float, ptr %"R37"
  %".6345" = load float, ptr %"R36"
  %".6346" = load float, ptr %"R8"
  %"fmul.280" = fmul float %".6344", %".6345"
  %"fadd.241" = fadd float %"fmul.280", %".6346"
  %".6347" = bitcast ptr %"R8" to ptr
  store float %"fadd.241", ptr %".6347"
  ; FMUL R39, R39, R22
  %".6350" = load float, ptr %"R39"
  %".6351" = load float, ptr %"R22"
  %"fmul.281" = fmul float %".6350", %".6351"
  %".6352" = bitcast ptr %"R39" to ptr
  store float %"fmul.281", ptr %".6352"
  ; FFMA R8, R39, R38, R8
  %".6355" = load float, ptr %"R39"
  %".6356" = load float, ptr %"R38"
  %".6357" = load float, ptr %"R8"
  %"fmul.282" = fmul float %".6355", %".6356"
  %"fadd.242" = fadd float %"fmul.282", %".6357"
  %".6358" = bitcast ptr %"R8" to ptr
  store float %"fadd.242", ptr %".6358"
  ; FMUL R41, R41, R22
  %".6361" = load float, ptr %"R41"
  %".6362" = load float, ptr %"R22"
  %"fmul.283" = fmul float %".6361", %".6362"
  %".6363" = bitcast ptr %"R41" to ptr
  store float %"fmul.283", ptr %".6363"
  ; FFMA R8, R41, R40, R8
  %".6366" = load float, ptr %"R41"
  %".6367" = load float, ptr %"R40"
  %".6368" = load float, ptr %"R8"
  %"fmul.284" = fmul float %".6366", %".6367"
  %"fadd.243" = fadd float %"fmul.284", %".6368"
  %".6369" = bitcast ptr %"R8" to ptr
  store float %"fadd.243", ptr %".6369"
  ; FMUL R43, R43, R22
  %".6372" = load float, ptr %"R43"
  %".6373" = load float, ptr %"R22"
  %"fmul.285" = fmul float %".6372", %".6373"
  %".6374" = bitcast ptr %"R43" to ptr
  store float %"fmul.285", ptr %".6374"
  ; FFMA R8, R43, R42, R8
  %".6377" = load float, ptr %"R43"
  %".6378" = load float, ptr %"R42"
  %".6379" = load float, ptr %"R8"
  %"fmul.286" = fmul float %".6377", %".6378"
  %"fadd.244" = fadd float %"fmul.286", %".6379"
  %".6380" = bitcast ptr %"R8" to ptr
  store float %"fadd.244", ptr %".6380"
  ; FMUL R45, R45, R22.reuse
  %".6383" = load float, ptr %"R45"
  %".6384" = load float, ptr %"R22"
  %"fmul.287" = fmul float %".6383", %".6384"
  %".6385" = bitcast ptr %"R45" to ptr
  store float %"fmul.287", ptr %".6385"
  ; FMUL R47, R47, R22
  %".6388" = load float, ptr %"R47"
  %".6389" = load float, ptr %"R22"
  %"fmul.288" = fmul float %".6388", %".6389"
  %".6390" = bitcast ptr %"R47" to ptr
  store float %"fmul.288", ptr %".6390"
  ; FFMA R8, R45, R44, R8
  %".6393" = load float, ptr %"R45"
  %".6394" = load float, ptr %"R44"
  %".6395" = load float, ptr %"R8"
  %"fmul.289" = fmul float %".6393", %".6394"
  %"fadd.245" = fadd float %"fmul.289", %".6395"
  %".6396" = bitcast ptr %"R8" to ptr
  store float %"fadd.245", ptr %".6396"
  ; FFMA R21, R47, R46, R8
  %".6399" = load float, ptr %"R47"
  %".6400" = load float, ptr %"R46"
  %".6401" = load float, ptr %"R8"
  %"fmul.290" = fmul float %".6399", %".6400"
  %"fadd.246" = fadd float %"fmul.290", %".6401"
  %".6402" = bitcast ptr %"R21" to ptr
  store float %"fadd.246", ptr %".6402"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".6405" = load i32, ptr %"R35"
  %".6406" = load i1, ptr %"PT"
  %"cmp.50" = icmp ne i32 %".6405", 0
  %".6407" = or i1 %"cmp.50", %".6406"
  ; @!P0 BRA `(.L_x_36)
  %".6409" = load i1, ptr %"P0"
  %".6410" = icmp eq i1 %".6409", 1
  br i1 %".6410", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IADD3 R6, R3, R34, RZ
  %".6415" = load i32, ptr %"R3"
  %".6416" = load i32, ptr %"R34"
  %"add.298" = add i32 %".6415", %".6416"
  %"add.299" = add i32 %"add.298", 0
  store i32 %"add.299", ptr %"R6"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".6419" = load i32, ptr %"R34"
  %".6420" = load i32, ptr %"R7"
  %"mul.102" = mul i32 %".6419", %".6420"
  %"add.300" = add i32 %"mul.102", %"Arg_3"
  store i32 %"add.300", ptr %"R4"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".6423" = load i32, ptr %"R6"
  %".6424" = load i32, ptr %"R7"
  %"mul.103" = mul i32 %".6423", %".6424"
  %"add.301" = add i32 %"mul.103", %"Arg_4"
  store i32 %"add.301", ptr %"R6"
  ; LDG.E.SYS R9, [R4]
  %".6427" = load i32, ptr %"R4"
  %"zext.680" = zext i32 %".6427" to i64
  %".6428" = load i32, ptr %"R5"
  %"zext.681" = zext i32 %".6428" to i64
  %"shl.357" = shl i64 %"zext.681", 32
  %"or.337" = or i64 %"shl.357", %"zext.680"
  %".6429" = inttoptr i64 %"or.337" to ptr
  %".6430" = ptrtoint ptr %".6429" to i64
  %".6431" = add i64 %".6430", 0
  %"for_LDG.330" = inttoptr i64 %".6431" to ptr
  %".6432" = load float, ptr %"for_LDG.330"
  %".6433" = bitcast ptr %"R9" to ptr
  store float %".6432", ptr %".6433"
  ; LDG.E.SYS R10, [R6]
  %".6436" = load i32, ptr %"R6"
  %"zext.682" = zext i32 %".6436" to i64
  %".6437" = load i32, ptr %"R7"
  %"zext.683" = zext i32 %".6437" to i64
  %"shl.358" = shl i64 %"zext.683", 32
  %"or.338" = or i64 %"shl.358", %"zext.682"
  %".6438" = inttoptr i64 %"or.338" to ptr
  %".6439" = ptrtoint ptr %".6438" to i64
  %".6440" = add i64 %".6439", 0
  %"for_LDG.331" = inttoptr i64 %".6440" to ptr
  %".6441" = load float, ptr %"for_LDG.331"
  %".6442" = bitcast ptr %"R10" to ptr
  store float %".6441", ptr %".6442"
  ; LDG.E.SYS R11, [R4+0x4]
  %".6445" = load i32, ptr %"R4"
  %"zext.684" = zext i32 %".6445" to i64
  %".6446" = load i32, ptr %"R5"
  %"zext.685" = zext i32 %".6446" to i64
  %"shl.359" = shl i64 %"zext.685", 32
  %"or.339" = or i64 %"shl.359", %"zext.684"
  %".6447" = inttoptr i64 %"or.339" to ptr
  %".6448" = ptrtoint ptr %".6447" to i64
  %".6449" = add i64 %".6448", 4
  %"for_LDG.332" = inttoptr i64 %".6449" to ptr
  %".6450" = load float, ptr %"for_LDG.332"
  %".6451" = bitcast ptr %"R11" to ptr
  store float %".6450", ptr %".6451"
  ; LDG.E.SYS R12, [R6+0x4]
  %".6454" = load i32, ptr %"R6"
  %"zext.686" = zext i32 %".6454" to i64
  %".6455" = load i32, ptr %"R7"
  %"zext.687" = zext i32 %".6455" to i64
  %"shl.360" = shl i64 %"zext.687", 32
  %"or.340" = or i64 %"shl.360", %"zext.686"
  %".6456" = inttoptr i64 %"or.340" to ptr
  %".6457" = ptrtoint ptr %".6456" to i64
  %".6458" = add i64 %".6457", 4
  %"for_LDG.333" = inttoptr i64 %".6458" to ptr
  %".6459" = load float, ptr %"for_LDG.333"
  %".6460" = bitcast ptr %"R12" to ptr
  store float %".6459", ptr %".6460"
  ; LDG.E.SYS R13, [R4+0x8]
  %".6463" = load i32, ptr %"R4"
  %"zext.688" = zext i32 %".6463" to i64
  %".6464" = load i32, ptr %"R5"
  %"zext.689" = zext i32 %".6464" to i64
  %"shl.361" = shl i64 %"zext.689", 32
  %"or.341" = or i64 %"shl.361", %"zext.688"
  %".6465" = inttoptr i64 %"or.341" to ptr
  %".6466" = ptrtoint ptr %".6465" to i64
  %".6467" = add i64 %".6466", 8
  %"for_LDG.334" = inttoptr i64 %".6467" to ptr
  %".6468" = load float, ptr %"for_LDG.334"
  %".6469" = bitcast ptr %"R13" to ptr
  store float %".6468", ptr %".6469"
  ; LDG.E.SYS R24, [R6+0x8]
  %".6472" = load i32, ptr %"R6"
  %"zext.690" = zext i32 %".6472" to i64
  %".6473" = load i32, ptr %"R7"
  %"zext.691" = zext i32 %".6473" to i64
  %"shl.362" = shl i64 %"zext.691", 32
  %"or.342" = or i64 %"shl.362", %"zext.690"
  %".6474" = inttoptr i64 %"or.342" to ptr
  %".6475" = ptrtoint ptr %".6474" to i64
  %".6476" = add i64 %".6475", 8
  %"for_LDG.335" = inttoptr i64 %".6476" to ptr
  %".6477" = load float, ptr %"for_LDG.335"
  %".6478" = bitcast ptr %"R24" to ptr
  store float %".6477", ptr %".6478"
  ; LDG.E.SYS R25, [R4+0xc]
  %".6481" = load i32, ptr %"R4"
  %"zext.692" = zext i32 %".6481" to i64
  %".6482" = load i32, ptr %"R5"
  %"zext.693" = zext i32 %".6482" to i64
  %"shl.363" = shl i64 %"zext.693", 32
  %"or.343" = or i64 %"shl.363", %"zext.692"
  %".6483" = inttoptr i64 %"or.343" to ptr
  %".6484" = ptrtoint ptr %".6483" to i64
  %".6485" = add i64 %".6484", 12
  %"for_LDG.336" = inttoptr i64 %".6485" to ptr
  %".6486" = load float, ptr %"for_LDG.336"
  %".6487" = bitcast ptr %"R25" to ptr
  store float %".6486", ptr %".6487"
  ; LDG.E.SYS R36, [R6+0xc]
  %".6490" = load i32, ptr %"R6"
  %"zext.694" = zext i32 %".6490" to i64
  %".6491" = load i32, ptr %"R7"
  %"zext.695" = zext i32 %".6491" to i64
  %"shl.364" = shl i64 %"zext.695", 32
  %"or.344" = or i64 %"shl.364", %"zext.694"
  %".6492" = inttoptr i64 %"or.344" to ptr
  %".6493" = ptrtoint ptr %".6492" to i64
  %".6494" = add i64 %".6493", 12
  %"for_LDG.337" = inttoptr i64 %".6494" to ptr
  %".6495" = load float, ptr %"for_LDG.337"
  %".6496" = bitcast ptr %"R36" to ptr
  store float %".6495", ptr %".6496"
  ; IADD3 R35, R35, -0x4, RZ
  %".6499" = load i32, ptr %"R35"
  %"add.302" = add i32 %".6499", -4
  %"add.303" = add i32 %"add.302", 0
  store i32 %"add.303", ptr %"R35"
  ; IADD3 R34, R34, 0x4, RZ
  %".6502" = load i32, ptr %"R34"
  %"add.304" = add i32 %".6502", 4
  %"add.305" = add i32 %"add.304", 0
  store i32 %"add.305", ptr %"R34"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".6505" = load i32, ptr %"R35"
  %".6506" = load i1, ptr %"PT"
  %"cmp.51" = icmp ne i32 %".6505", 0
  %".6507" = and i1 %"cmp.51", %".6506"
  ; FMUL R8, R9, R22
  %".6509" = load float, ptr %"R9"
  %".6510" = load float, ptr %"R22"
  %"fmul.291" = fmul float %".6509", %".6510"
  %".6511" = bitcast ptr %"R8" to ptr
  store float %"fmul.291", ptr %".6511"
  ; FFMA R8, R8, R10, R21
  %".6514" = load float, ptr %"R8"
  %".6515" = load float, ptr %"R10"
  %".6516" = load float, ptr %"R21"
  %"fmul.292" = fmul float %".6514", %".6515"
  %"fadd.247" = fadd float %"fmul.292", %".6516"
  %".6517" = bitcast ptr %"R8" to ptr
  store float %"fadd.247", ptr %".6517"
  ; FMUL R11, R11, R22
  %".6520" = load float, ptr %"R11"
  %".6521" = load float, ptr %"R22"
  %"fmul.293" = fmul float %".6520", %".6521"
  %".6522" = bitcast ptr %"R11" to ptr
  store float %"fmul.293", ptr %".6522"
  ; FFMA R8, R11, R12, R8
  %".6525" = load float, ptr %"R11"
  %".6526" = load float, ptr %"R12"
  %".6527" = load float, ptr %"R8"
  %"fmul.294" = fmul float %".6525", %".6526"
  %"fadd.248" = fadd float %"fmul.294", %".6527"
  %".6528" = bitcast ptr %"R8" to ptr
  store float %"fadd.248", ptr %".6528"
  ; FMUL R13, R13, R22
  %".6531" = load float, ptr %"R13"
  %".6532" = load float, ptr %"R22"
  %"fmul.295" = fmul float %".6531", %".6532"
  %".6533" = bitcast ptr %"R13" to ptr
  store float %"fmul.295", ptr %".6533"
  ; FFMA R8, R13, R24, R8
  %".6536" = load float, ptr %"R13"
  %".6537" = load float, ptr %"R24"
  %".6538" = load float, ptr %"R8"
  %"fmul.296" = fmul float %".6536", %".6537"
  %"fadd.249" = fadd float %"fmul.296", %".6538"
  %".6539" = bitcast ptr %"R8" to ptr
  store float %"fadd.249", ptr %".6539"
  ; FMUL R25, R25, R22
  %".6542" = load float, ptr %"R25"
  %".6543" = load float, ptr %"R22"
  %"fmul.297" = fmul float %".6542", %".6543"
  %".6544" = bitcast ptr %"R25" to ptr
  store float %"fmul.297", ptr %".6544"
  ; FFMA R21, R25, R36, R8
  %".6547" = load float, ptr %"R25"
  %".6548" = load float, ptr %"R36"
  %".6549" = load float, ptr %"R8"
  %"fmul.298" = fmul float %".6547", %".6548"
  %"fadd.250" = fadd float %"fmul.298", %".6549"
  %".6550" = bitcast ptr %"R21" to ptr
  store float %"fadd.250", ptr %".6550"
  ; @P0 BRA `(.L_x_37)
  %".6553" = load i1, ptr %"P0"
  %".6554" = icmp ne i1 %".6553", 1
  br i1 %".6554", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".6557" = load i32, ptr %"R48"
  %".6558" = load i1, ptr %"PT"
  %"cmp.52" = icmp ne i32 %".6557", 0
  %".6559" = and i1 %"cmp.52", %".6558"
  ; @!P0 BRA `(.L_x_35)
  %".6561" = load i1, ptr %"P0"
  %".6562" = icmp eq i1 %".6561", 1
  br i1 %".6562", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IADD3 R4, R3, R34, RZ
  %".6567" = load i32, ptr %"R3"
  %".6568" = load i32, ptr %"R34"
  %"add.306" = add i32 %".6567", %".6568"
  %"add.307" = add i32 %"add.306", 0
  store i32 %"add.307", ptr %"R4"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".6571" = load i32, ptr %"R34"
  %".6572" = load i32, ptr %"R5"
  %"mul.104" = mul i32 %".6571", %".6572"
  %"add.308" = add i32 %"mul.104", %"Arg_3"
  store i32 %"add.308", ptr %"R34"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".6575" = load i32, ptr %"R4"
  %".6576" = load i32, ptr %"R5"
  %"mul.105" = mul i32 %".6575", %".6576"
  %"add.309" = add i32 %"mul.105", %"Arg_4"
  store i32 %"add.309", ptr %"R4"
  ; LDG.E.SYS R7, [R34]
  %".6579" = load i32, ptr %"R34"
  %"zext.696" = zext i32 %".6579" to i64
  %".6580" = load i32, ptr %"R35"
  %"zext.697" = zext i32 %".6580" to i64
  %"shl.365" = shl i64 %"zext.697", 32
  %"or.345" = or i64 %"shl.365", %"zext.696"
  %".6581" = inttoptr i64 %"or.345" to ptr
  %".6582" = ptrtoint ptr %".6581" to i64
  %".6583" = add i64 %".6582", 0
  %"for_LDG.338" = inttoptr i64 %".6583" to ptr
  %".6584" = load float, ptr %"for_LDG.338"
  %".6585" = bitcast ptr %"R7" to ptr
  store float %".6584", ptr %".6585"
  ; LDG.E.SYS R8, [R4]
  %".6588" = load i32, ptr %"R4"
  %"zext.698" = zext i32 %".6588" to i64
  %".6589" = load i32, ptr %"R5"
  %"zext.699" = zext i32 %".6589" to i64
  %"shl.366" = shl i64 %"zext.699", 32
  %"or.346" = or i64 %"shl.366", %"zext.698"
  %".6590" = inttoptr i64 %"or.346" to ptr
  %".6591" = ptrtoint ptr %".6590" to i64
  %".6592" = add i64 %".6591", 0
  %"for_LDG.339" = inttoptr i64 %".6592" to ptr
  %".6593" = load float, ptr %"for_LDG.339"
  %".6594" = bitcast ptr %"R8" to ptr
  store float %".6593", ptr %".6594"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".6597" = load i32, ptr %"R48"
  %".6598" = load i1, ptr %"PT"
  %"cmp.53" = icmp ne i32 %".6597", 1
  %".6599" = and i1 %"cmp.53", %".6598"
  ; FMUL R6, R7, R22
  %".6601" = load float, ptr %"R7"
  %".6602" = load float, ptr %"R22"
  %"fmul.299" = fmul float %".6601", %".6602"
  %".6603" = bitcast ptr %"R6" to ptr
  store float %"fmul.299", ptr %".6603"
  ; FFMA R21, R6, R8, R21
  %".6606" = load float, ptr %"R6"
  %".6607" = load float, ptr %"R8"
  %".6608" = load float, ptr %"R21"
  %"fmul.300" = fmul float %".6606", %".6607"
  %"fadd.251" = fadd float %"fmul.300", %".6608"
  %".6609" = bitcast ptr %"R21" to ptr
  store float %"fadd.251", ptr %".6609"
  ; @!P0 BRA `(.L_x_35)
  %".6612" = load i1, ptr %"P0"
  %".6613" = icmp eq i1 %".6612", 1
  br i1 %".6613", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".6616" = load i32, ptr %"R48"
  %".6617" = load i1, ptr %"PT"
  %"cmp.54" = icmp ne i32 %".6616", 2
  %".6618" = and i1 %"cmp.54", %".6617"
  ; LDG.E.SYS R7, [R34+0x4]
  %".6620" = load i32, ptr %"R34"
  %"zext.700" = zext i32 %".6620" to i64
  %".6621" = load i32, ptr %"R35"
  %"zext.701" = zext i32 %".6621" to i64
  %"shl.367" = shl i64 %"zext.701", 32
  %"or.347" = or i64 %"shl.367", %"zext.700"
  %".6622" = inttoptr i64 %"or.347" to ptr
  %".6623" = ptrtoint ptr %".6622" to i64
  %".6624" = add i64 %".6623", 4
  %"for_LDG.340" = inttoptr i64 %".6624" to ptr
  %".6625" = load float, ptr %"for_LDG.340"
  %".6626" = bitcast ptr %"R7" to ptr
  store float %".6625", ptr %".6626"
  ; LDG.E.SYS R8, [R4+0x4]
  %".6629" = load i32, ptr %"R4"
  %"zext.702" = zext i32 %".6629" to i64
  %".6630" = load i32, ptr %"R5"
  %"zext.703" = zext i32 %".6630" to i64
  %"shl.368" = shl i64 %"zext.703", 32
  %"or.348" = or i64 %"shl.368", %"zext.702"
  %".6631" = inttoptr i64 %"or.348" to ptr
  %".6632" = ptrtoint ptr %".6631" to i64
  %".6633" = add i64 %".6632", 4
  %"for_LDG.341" = inttoptr i64 %".6633" to ptr
  %".6634" = load float, ptr %"for_LDG.341"
  %".6635" = bitcast ptr %"R8" to ptr
  store float %".6634", ptr %".6635"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".6638" = load i1, ptr %"P0"
  %".6639" = icmp ne i1 %".6638", 1
  br i1 %".6639", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  %".6642" = load i32, ptr %"R34"
  %"zext.704" = zext i32 %".6642" to i64
  %".6643" = load i32, ptr %"R35"
  %"zext.705" = zext i32 %".6643" to i64
  %"shl.369" = shl i64 %"zext.705", 32
  %"or.349" = or i64 %"shl.369", %"zext.704"
  %".6644" = inttoptr i64 %"or.349" to ptr
  %".6645" = ptrtoint ptr %".6644" to i64
  %".6646" = add i64 %".6645", 8
  %"for_LDG.342" = inttoptr i64 %".6646" to ptr
  %".6647" = load float, ptr %"for_LDG.342"
  %".6648" = bitcast ptr %"R9" to ptr
  store float %".6647", ptr %".6648"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".6653" = load i1, ptr %"P0"
  %".6654" = icmp ne i1 %".6653", 1
  br i1 %".6654", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  %".6657" = load i32, ptr %"R4"
  %"zext.706" = zext i32 %".6657" to i64
  %".6658" = load i32, ptr %"R5"
  %"zext.707" = zext i32 %".6658" to i64
  %"shl.370" = shl i64 %"zext.707", 32
  %"or.350" = or i64 %"shl.370", %"zext.706"
  %".6659" = inttoptr i64 %"or.350" to ptr
  %".6660" = ptrtoint ptr %".6659" to i64
  %".6661" = add i64 %".6660", 8
  %"for_LDG.343" = inttoptr i64 %".6661" to ptr
  %".6662" = load float, ptr %"for_LDG.343"
  %".6663" = bitcast ptr %"R10" to ptr
  store float %".6662", ptr %".6663"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".6668" = load float, ptr %"R7"
  %".6669" = load float, ptr %"R22"
  %"fmul.301" = fmul float %".6668", %".6669"
  %".6670" = bitcast ptr %"R6" to ptr
  store float %"fmul.301", ptr %".6670"
  ; FFMA R21, R6, R8, R21
  %".6673" = load float, ptr %"R6"
  %".6674" = load float, ptr %"R8"
  %".6675" = load float, ptr %"R21"
  %"fmul.302" = fmul float %".6673", %".6674"
  %"fadd.252" = fadd float %"fmul.302", %".6675"
  %".6676" = bitcast ptr %"R21" to ptr
  store float %"fadd.252", ptr %".6676"
  ; @P0 FMUL R22, R9, R22
  %".6679" = load i1, ptr %"P0"
  %".6680" = icmp ne i1 %".6679", 1
  br i1 %".6680", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".6683" = load float, ptr %"R9"
  %".6684" = load float, ptr %"R22"
  %"fmul.303" = fmul float %".6683", %".6684"
  %".6685" = bitcast ptr %"R22" to ptr
  store float %"fmul.303", ptr %".6685"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".6690" = load i1, ptr %"P0"
  %".6691" = icmp ne i1 %".6690", 1
  br i1 %".6691", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".6694" = load float, ptr %"R22"
  %".6695" = load float, ptr %"R10"
  %".6696" = load float, ptr %"R21"
  %"fmul.304" = fmul float %".6694", %".6695"
  %"fadd.253" = fadd float %"fmul.304", %".6696"
  %".6697" = bitcast ptr %"R21" to ptr
  store float %"fadd.253", ptr %".6697"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  %".6702" = load i32, ptr %"R30"
  %"zext.708" = zext i32 %".6702" to i64
  %"zext.709" = zext i32 0 to i64
  %"shl.371" = shl i64 %"zext.709", 32
  %"or.351" = or i64 %"shl.371", %"zext.708"
  %".6703" = inttoptr i64 %"or.351" to ptr
  %".6704" = ptrtoint ptr %".6703" to i64
  %".6705" = add i64 %".6704", 0
  %"for_LDG.344" = inttoptr i64 %".6705" to ptr
  %".6706" = load float, ptr %"for_LDG.344"
  %".6707" = bitcast ptr %"R4" to ptr
  store float %".6706", ptr %".6707"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".6712" = load float, ptr %"R4"
  %".6713" = load float, ptr %"R21"
  %"fadd.254" = fadd float %".6712", %".6713"
  %".6714" = bitcast ptr %"R21" to ptr
  store float %"fadd.254", ptr %".6714"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".6717" = load float, ptr %"R21"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".6717")
  %".6718" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".6719" = and i1 %"fcmp_unordered.2", %".6718"
  ; @!P0 BRA `(.L_x_42)
  %".6721" = load i1, ptr %"P0"
  %".6722" = icmp eq i1 %".6721", 1
  br i1 %".6722", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".6725" = load float, ptr %"R21"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".6725")
  %"fmul.305" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".6726" = bitcast ptr %"R5" to ptr
  store float %"fmul.305", ptr %".6726"
  ; MOV R7, 0x3f800000
  %".6729" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".6729"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".6732" = load float, ptr %"R21"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".6732")
  %".6733" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".6734" = and i1 %"fcmp_unordered.3", %".6733"
  ; MUFU.EX2 R5, R5
  %".6736" = load float, ptr %"R5"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".6736")
  %".6737" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.5", ptr %".6737"
  ; FADD R6, R5, 1
  %".6740" = load float, ptr %"R5"
  %"fadd.255" = fadd float %".6740", 0x3ff0000000000000
  %".6741" = bitcast ptr %"R6" to ptr
  store float %"fadd.255", ptr %".6741"
  ; MUFU.RCP R6, R6
  %".6744" = load float, ptr %"R6"
  %".6745" = fdiv float 0x3ff0000000000000, %".6744"
  %".6746" = bitcast ptr %"R6" to ptr
  store float %".6745", ptr %".6746"
  ; FFMA R4, R6, -2, R7
  %".6749" = load float, ptr %"R6"
  %".6750" = load float, ptr %"R7"
  %"fmul.306" = fmul float %".6749", 0xc000000000000000
  %"fadd.256" = fadd float %"fmul.306", %".6750"
  %".6751" = bitcast ptr %"R4" to ptr
  store float %"fadd.256", ptr %".6751"
  ; FSEL R4, R4, 1, !P0
  %".6754" = load float, ptr %"R4"
  %".6755" = load i1, ptr %"P0"
  %".6756" = icmp eq i1 %".6755", 1
  %"fsel.1" = select  i1 %".6756", float %".6754", float 0x3ff0000000000000
  %".6757" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".6757"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".6760" = load float, ptr %"R4"
  %".6761" = load float, ptr %"R21"
  %".6762" = or float %".6760", 0x41e0000000000000
  %".6763" = or float %".6760", %".6761"
  %".6764" = and float %".6762", %".6763"
  %".6765" = bitcast ptr %"R4" to ptr
  store float %".6764", ptr %".6765"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  %".6770" = bitcast ptr %"R5" to ptr
  store float 0x41ce407840000000, ptr %".6770"
  ; FMUL R4, R21, R21
  %".6773" = load float, ptr %"R21"
  %".6774" = load float, ptr %"R21"
  %"fmul.307" = fmul float %".6773", %".6774"
  %".6775" = bitcast ptr %"R4" to ptr
  store float %"fmul.307", ptr %".6775"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".6778" = load float, ptr %"R4"
  %".6779" = load float, ptr %"R5"
  %"fmul.308" = fmul float %".6778", %".6779"
  %"fadd.257" = fadd float %"fmul.308", 0xbfaac795c0000000
  %".6780" = bitcast ptr %"R5" to ptr
  store float %"fadd.257", ptr %".6780"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".6783" = load float, ptr %"R4"
  %".6784" = load float, ptr %"R5"
  %"fmul.309" = fmul float %".6783", %".6784"
  %"fadd.258" = fadd float %"fmul.309", 0x3fc10b2820000000
  %".6785" = bitcast ptr %"R5" to ptr
  store float %"fadd.258", ptr %".6785"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".6788" = load float, ptr %"R4"
  %".6789" = load float, ptr %"R5"
  %"fmul.310" = fmul float %".6788", %".6789"
  %"fadd.259" = fadd float %"fmul.310", 0xbfd5553da0000000
  %".6790" = bitcast ptr %"R5" to ptr
  store float %"fadd.259", ptr %".6790"
  ; FFMA R4, R4, R5, RZ
  %".6793" = load float, ptr %"R4"
  %".6794" = load float, ptr %"R5"
  %"fmul.311" = fmul float %".6793", %".6794"
  %"fadd.260" = fadd float %"fmul.311",              0x0
  %".6795" = bitcast ptr %"R4" to ptr
  store float %"fadd.260", ptr %".6795"
  ; FFMA R4, R21, R4, R21
  %".6798" = load float, ptr %"R21"
  %".6799" = load float, ptr %"R4"
  %".6800" = load float, ptr %"R21"
  %"fmul.312" = fmul float %".6798", %".6799"
  %"fadd.261" = fadd float %"fmul.312", %".6800"
  %".6801" = bitcast ptr %"R4" to ptr
  store float %"fadd.261", ptr %".6801"
.L_x_43:
  ; BSYNC B0
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  %".6805" = load i32, ptr %"R23"
  %"add.310" = add i32 %".6805", 25165824
  %"add.311" = add i32 %"add.310", 0
  store i32 %"add.311", ptr %"R5"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".6810" = load i32, ptr %"R5"
  %".6811" = and i32 %".6810", 2139095040
  store i32 %".6811", ptr %"R5"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".6814" = load i32, ptr %"R5"
  %".6815" = load i1, ptr %"PT"
  %"cmp.55" = icmp sgt i32 %".6814", 33554431
  %".6816" = and i1 %"cmp.55", %".6815"
  ; @P0 BRA `(.L_x_45)
  %".6818" = load i1, ptr %"P0"
  %".6819" = icmp ne i1 %".6818", 1
  br i1 %".6819", label %".L_x_45", label %".L_x_41_split_0x47f0"
.L_x_41_split_0x47f0:
  ; MOV R24, R23
  %".6822" = load float, ptr %"R23"
  %".6823" = bitcast ptr %"R24" to ptr
  store float %".6822", ptr %".6823"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  %"call_rel.3" = call float @"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"()
  ; MOV R5, R22
  %".6829" = load i32, ptr %"R22"
  store i32 %".6829", ptr %"R5"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".6834" = load float, ptr %"R23"
  %".6835" = fdiv float 0x3ff0000000000000, %".6834"
  %".6836" = bitcast ptr %"R6" to ptr
  store float %".6835", ptr %".6836"
  ; FFMA R5, R23, R6, -1
  %".6839" = load float, ptr %"R23"
  %".6840" = load float, ptr %"R6"
  %"fmul.313" = fmul float %".6839", %".6840"
  %"fadd.262" = fadd float %"fmul.313", 0xbff0000000000000
  %".6841" = bitcast ptr %"R5" to ptr
  store float %"fadd.262", ptr %".6841"
  ; FADD.FTZ R5, -R5, -RZ
  %".6844" = load float, ptr %"R5"
  %".6845" = sub float              0x0, %".6844"
  %"fadd.263" = fadd float %".6845",              0x0
  %".6846" = bitcast ptr %"R5" to ptr
  store float %"fadd.263", ptr %".6846"
  ; FFMA R5, R6, R5, R6
  %".6849" = load float, ptr %"R6"
  %".6850" = load float, ptr %"R5"
  %".6851" = load float, ptr %"R6"
  %"fmul.314" = fmul float %".6849", %".6850"
  %"fadd.264" = fadd float %"fmul.314", %".6851"
  %".6852" = bitcast ptr %"R5" to ptr
  store float %"fadd.264", ptr %".6852"
.L_x_46:
  ; BSYNC B0
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  %".6856" = load i32, ptr %"R28"
  %"zext.710" = zext i32 %".6856" to i64
  %"zext.711" = zext i32 0 to i64
  %"shl.372" = shl i64 %"zext.711", 32
  %"or.352" = or i64 %"shl.372", %"zext.710"
  %".6857" = inttoptr i64 %"or.352" to ptr
  %".6858" = ptrtoint ptr %".6857" to i64
  %".6859" = add i64 %".6858", 0
  %"for_LDG.345" = inttoptr i64 %".6859" to ptr
  %".6860" = load float, ptr %"for_LDG.345"
  %".6861" = bitcast ptr %"R6" to ptr
  store float %".6860", ptr %".6861"
  ; FADD R7, -R5, 1
  %".6864" = load float, ptr %"R5"
  %".6865" = sub float              0x0, %".6864"
  %"fadd.265" = fadd float %".6865", 0x3ff0000000000000
  %".6866" = bitcast ptr %"R7" to ptr
  store float %"fadd.265", ptr %".6866"
  ; FMUL R6, R6, R5
  %".6869" = load float, ptr %"R6"
  %".6870" = load float, ptr %"R5"
  %"fmul.315" = fmul float %".6869", %".6870"
  %".6871" = bitcast ptr %"R6" to ptr
  store float %"fmul.315", ptr %".6871"
  ; FFMA R7, R7, R4, R6
  %".6874" = load float, ptr %"R7"
  %".6875" = load float, ptr %"R4"
  %".6876" = load float, ptr %"R6"
  %"fmul.316" = fmul float %".6874", %".6875"
  %"fadd.266" = fadd float %"fmul.316", %".6876"
  %".6877" = bitcast ptr %"R7" to ptr
  store float %"fadd.266", ptr %".6877"
  ; STG.E.SYS [R28], R7
  %".6880" = load float, ptr %"R7"
  %".6881" = load i32, ptr %"R28"
  %"zext.712" = zext i32 %".6881" to i64
  %"zext.713" = zext i32 0 to i64
  %"shl.373" = shl i64 %"zext.713", 32
  %"or.353" = or i64 %"shl.373", %"zext.712"
  %".6882" = inttoptr i64 %"or.353" to ptr
  %".6883" = ptrtoint ptr %".6882" to i64
  %".6884" = add i64 %".6883", 0
  %"for_STG.1" = inttoptr i64 %".6884" to ptr
  store float %".6880", ptr %"for_STG.1"
  ; @!P3 BRA `(.L_x_47)
  %".6887" = load i1, ptr %"P3"
  %".6888" = icmp eq i1 %".6887", 1
  br i1 %".6888", label %".L_x_47", label %".L_x_44_split_0x48f0"
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

