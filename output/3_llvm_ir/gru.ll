; ModuleID = "PerSecModule"
target triple = "unknown-unknown-unknown"
target datalayout = ""

declare i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()

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

define void @"_Z11gru_forwardPfS_S_S_iii"(ptr %"Arg_0", ptr %"Arg_1", ptr %"Arg_2", ptr %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6")
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
  store i32 0, ptr %"R1"
  ; S2R R14, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R14"
  ; MOV R0, c[0x0][0x188]
  store i32 %"Arg_6", ptr %"R0"
  ; S2R R3, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R3"
  ; ISETP.GE.AND P0, PT, R0, 0x1, PT
  %".19" = load i32, ptr %"R0"
  %".20" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".19", 1
  %".21" = and i1 %"cmp", %".20"
  store i1 %".21", ptr %"P0"
  ; IMAD R14, R14, c[0x0][0x0], R3
  %".24" = load i32, ptr %"R14"
  %".25" = load i32, ptr %"R3"
  %"mul" = mul i32 %".24", 0
  %"add" = add i32 %"mul", %".25"
  store i32 %"add", ptr %"R14"
  ; ISETP.GE.OR P0, PT, R14, c[0x0][0x184], !P0
  %".28" = load i32, ptr %"R14"
  %".29" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".28", %"Arg_5"
  %".30" = or i1 %"cmp.1", %".29"
  store i1 %".30", ptr %"P0"
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
  %"cmp.2" = icmp slt i32 0, %"Arg_4"
  %".40" = and i1 %"cmp.2", %".39"
  store i1 %".40", ptr %"P0"
  ; IMAD R0, R14.reuse, c[0x0][0x184], RZ
  %".43" = load i32, ptr %"R14"
  %"mul.1" = mul i32 %".43", %"Arg_5"
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", ptr %"R0"
  ; MOV R33, 0x4
  store i32 4, ptr %"R33"
  ; MOV R3, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R3"
  ; MOV R15, c[0x0][0x180]
  store i32 %"Arg_4", ptr %"R15"
  ; IMAD.WIDE R26, R14.reuse, R33.reuse, c[0x0][0x178]
  %".52" = load i32, ptr %"R14"
  %".53" = load i32, ptr %"R33"
  %"zext" = zext i32 %".52" to i64
  %"zext.1" = zext i32 %".53" to i64
  %"mul.2" = mul i64 %"zext", %"zext.1"
  %".54" = ptrtoint ptr %"Arg_3" to i64
  %"add.2" = add i64 %"mul.2", %".54"
  %".55" = and i64 %"add.2", 18446744069414584320
  %".56" = lshr i64 %".55", 32
  %"trunc32" = trunc i64 %".56" to i32
  %"trunc32.1" = trunc i64 %"add.2" to i32
  store i32 %"trunc32.1", ptr %"R26"
  %"R27" = alloca i32, i32 1
  store i32 %"trunc32", ptr %"R27"
  ; LEA R30, R3, R14, 0x1
  %".60" = load i32, ptr %"R3"
  %".61" = load i32, ptr %"R14"
  %"shl" = shl i32 %".60", 1
  %"add.3" = add i32 %"shl", %".61"
  store i32 %"add.3", ptr %"R30"
  ; MOV R5, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R5"
  ; IMAD.WIDE R28, R14, R33, c[0x0][0x168]
  %".66" = load i32, ptr %"R14"
  %".67" = load i32, ptr %"R33"
  %"zext.2" = zext i32 %".66" to i64
  %"zext.3" = zext i32 %".67" to i64
  %"mul.3" = mul i64 %"zext.2", %"zext.3"
  %".68" = ptrtoint ptr %"Arg_1" to i64
  %"add.4" = add i64 %"mul.3", %".68"
  %".69" = and i64 %"add.4", 18446744069414584320
  %".70" = lshr i64 %".69", 32
  %"trunc32.2" = trunc i64 %".70" to i32
  %"trunc32.3" = trunc i64 %"add.4" to i32
  store i32 %"trunc32.3", ptr %"R28"
  %"R29" = alloca i32, i32 1
  store i32 %"trunc32.2", ptr %"R29"
  ; LEA R3, R15, R15, 0x2
  %".74" = load i32, ptr %"R15"
  %".75" = load i32, ptr %"R15"
  %"shl.1" = shl i32 %".74", 2
  %"add.5" = add i32 %"shl.1", %".75"
  store i32 %"add.5", ptr %"R3"
  ; IMAD.WIDE R30, R30, R33, c[0x0][0x178]
  %".78" = load i32, ptr %"R30"
  %".79" = load i32, ptr %"R33"
  %"zext.4" = zext i32 %".78" to i64
  %"zext.5" = zext i32 %".79" to i64
  %"mul.4" = mul i64 %"zext.4", %"zext.5"
  %".80" = ptrtoint ptr %"Arg_3" to i64
  %"add.6" = add i64 %"mul.4", %".80"
  %".81" = and i64 %"add.6", 18446744069414584320
  %".82" = lshr i64 %".81", 32
  %"trunc32.4" = trunc i64 %".82" to i32
  %"trunc32.5" = trunc i64 %"add.6" to i32
  store i32 %"trunc32.5", ptr %"R30"
  %"R31" = alloca i32, i32 1
  store i32 %"trunc32.4", ptr %"R31"
  ; IMAD R2, R5, c[0x0][0x180], RZ
  %".86" = load i32, ptr %"R5"
  %"mul.5" = mul i32 %".86", %"Arg_4"
  %"add.7" = add i32 %"mul.5", 0
  store i32 %"add.7", ptr %"R2"
  ; IMAD R3, R3, c[0x0][0x184], R0
  %".89" = load i32, ptr %"R3"
  %".90" = load i32, ptr %"R0"
  %"mul.6" = mul i32 %".89", %"Arg_5"
  %"add.8" = add i32 %"mul.6", %".90"
  store i32 %"add.8", ptr %"R3"
  ; IMAD.WIDE R32, R33, c[0x0][0x184], R26
  %".93" = load i32, ptr %"R33"
  %".94" = load i32, ptr %"R26"
  %"zext.6" = zext i32 %".93" to i64
  %"zext.7" = zext i32 %"Arg_5" to i64
  %"mul.7" = mul i64 %"zext.6", %"zext.7"
  %"zext.8" = zext i32 %".94" to i64
  %"add.9" = add i64 %"mul.7", %"zext.8"
  %".95" = and i64 %"add.9", 18446744069414584320
  %".96" = lshr i64 %".95", 32
  %"trunc32.6" = trunc i64 %".96" to i32
  %"trunc32.7" = trunc i64 %"add.9" to i32
  store i32 %"trunc32.7", ptr %"R32"
  store i32 %"trunc32.6", ptr %"R33"
  ; @P0 BRA `(.L_x_0)
  %".100" = load i1, ptr %"P0"
  %".101" = icmp ne i1 %".100", 1
  br i1 %".101", label %".L_x_0", label %".text._Z11gru_forwardPfS_S_S_iii_split_0x0170"
.text._Z11gru_forwardPfS_S_S_iii_split_0x0170:
  ; LOP3.LUT R4, R5.reuse, 0x3, RZ, 0xc0, !PT
  %".104" = load i32, ptr %"R5"
  %".105" = and i32 %".104", 3
  store i32 %".105", ptr %"R4"
  ; IADD3 R5, R5, -0x1, RZ
  %".108" = load i32, ptr %"R5"
  %"add.10" = add i32 %".108", -1
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", ptr %"R5"
  ; MOV R6, RZ
  %".111" = load i32, ptr %"RZ"
  store i32 %".111", ptr %"R6"
  ; IADD3 R7, -R4, c[0x0][0x184], RZ
  %".114" = load i32, ptr %"R4"
  %".115" = sub i32 0, %".114"
  %"add.12" = add i32 %".115", %"Arg_5"
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", ptr %"R7"
  br label %".L_x_22"
.L_x_22:
  ; MOV R8, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R8"
  ; IADD3 R6, R6, 0x1, RZ
  %".121" = load i32, ptr %"R6"
  %"add.14" = add i32 %".121", 1
  %"add.15" = add i32 %"add.14", 0
  store i32 %"add.15", ptr %"R6"
  ; ISETP.GE.AND P4, PT, R8, 0x1, PT
  %".124" = load i32, ptr %"R8"
  %".125" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".124", 1
  %".126" = and i1 %"cmp.3", %".125"
  store i1 %".126", ptr %"P4"
  ; ISETP.GE.AND P3, PT, R6, c[0x0][0x188], PT
  %".129" = load i32, ptr %"R6"
  %".130" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".129", %"Arg_6"
  %".131" = and i1 %"cmp.4", %".130"
  store i1 %".131", ptr %"P3"
  ; MOV R8, RZ
  %".134" = load float, ptr %"RZ"
  %".135" = bitcast ptr %"R8" to ptr
  store float %".134", ptr %".135"
  ; MOV R52, RZ
  %".138" = load float, ptr %"RZ"
  %".139" = bitcast ptr %"R52" to ptr
  store float %".138", ptr %".139"
  ; MOV R54, RZ
  %".142" = load float, ptr %"RZ"
  %".143" = bitcast ptr %"R54" to ptr
  store float %".142", ptr %".143"
  ; @!P4 BRA `(.L_x_1)
  %".146" = load i1, ptr %"P4"
  %".147" = icmp eq i1 %".146", 1
  br i1 %".147", label %".L_x_1", label %".L_x_22_split_0x0230"
.L_x_22_split_0x0230:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".150" = load i32, ptr %"R5"
  %".151" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".150", 3
  %".152" = and i1 %"cmp.5", %".151"
  store i1 %".152", ptr %"P0"
  ; MOV R54, RZ
  %".155" = load float, ptr %"RZ"
  %".156" = bitcast ptr %"R54" to ptr
  store float %".155", ptr %".156"
  ; MOV R11, RZ
  %".159" = load i32, ptr %"RZ"
  store i32 %".159", ptr %"R11"
  ; MOV R52, RZ
  %".162" = load float, ptr %"RZ"
  %".163" = bitcast ptr %"R52" to ptr
  store float %".162", ptr %".163"
  ; @!P0 BRA `(.L_x_2)
  %".166" = load i1, ptr %"P0"
  %".167" = icmp eq i1 %".166", 1
  br i1 %".167", label %".L_x_2", label %".L_x_22_split_0x0280"
.L_x_22_split_0x0280:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".170" = load i32, ptr %"R7"
  %".171" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".170", 0
  %".172" = and i1 %"cmp.6", %".171"
  store i1 %".172", ptr %"P0"
  ; MOV R54, RZ
  %".175" = load float, ptr %"RZ"
  %".176" = bitcast ptr %"R54" to ptr
  store float %".175", ptr %".176"
  ; MOV R11, RZ
  %".179" = load i32, ptr %"RZ"
  store i32 %".179", ptr %"R11"
  ; MOV R9, R7
  %".182" = load i32, ptr %"R7"
  store i32 %".182", ptr %"R9"
  ; @!P0 BRA `(.L_x_3)
  %".185" = load i1, ptr %"P0"
  %".186" = icmp eq i1 %".185", 1
  br i1 %".186", label %".L_x_3", label %".L_x_22_split_0x02d0"
.L_x_22_split_0x02d0:
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".189" = load i32, ptr %"R9"
  %".190" = load i1, ptr %"PT"
  %"cmp.7" = icmp sgt i32 %".189", 12
  %".191" = and i1 %"cmp.7", %".190"
  store i1 %".191", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".194" = and i1 1, 1
  %".195" = or i1 %".194", 1
  ; @!P1 BRA `(.L_x_4)
  %".197" = load i1, ptr %"P1"
  %".198" = icmp eq i1 %".197", 1
  br i1 %".198", label %".L_x_4", label %".L_x_22_split_0x0300"
.L_x_22_split_0x0300:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".201" = xor i1 1, 1
  %".202" = and i1 %".201", 1
  %".203" = and i1 %".202", 1
  br label %".L_x_5"
.L_x_5:
  ; IADD3 R25, R0, R11, RZ
  %".206" = load i32, ptr %"R0"
  %".207" = load i32, ptr %"R11"
  %"add.16" = add i32 %".206", %".207"
  %"add.17" = add i32 %"add.16", 0
  store i32 %"add.17", ptr %"R25"
  ; MOV R18, 0x4
  store i32 4, ptr %"R18"
  ; IMAD R23, R2.reuse, 0x3, R25
  %".212" = load i32, ptr %"R2"
  %".213" = load i32, ptr %"R25"
  %"mul.8" = mul i32 %".212", 3
  %"add.18" = add i32 %"mul.8", %".213"
  store i32 %"add.18", ptr %"R23"
  ; LEA R25, R2, R25, 0x2
  %".216" = load i32, ptr %"R2"
  %".217" = load i32, ptr %"R25"
  %"shl.2" = shl i32 %".216", 2
  %"add.19" = add i32 %"shl.2", %".217"
  store i32 %"add.19", ptr %"R25"
  ; IMAD.WIDE R38, R11, R18, c[0x0][0x168]
  %".220" = load i32, ptr %"R11"
  %".221" = load i32, ptr %"R18"
  %"zext.9" = zext i32 %".220" to i64
  %"zext.10" = zext i32 %".221" to i64
  %"mul.9" = mul i64 %"zext.9", %"zext.10"
  %".222" = ptrtoint ptr %"Arg_1" to i64
  %"add.20" = add i64 %"mul.9", %".222"
  %".223" = and i64 %"add.20", 18446744069414584320
  %".224" = lshr i64 %".223", 32
  %"trunc32.8" = trunc i64 %".224" to i32
  %"trunc32.9" = trunc i64 %"add.20" to i32
  store i32 %"trunc32.9", ptr %"R38"
  store i32 %"trunc32.8", ptr %"R39"
  ; IMAD.WIDE R16, R23, R18, c[0x0][0x170]
  %".228" = load i32, ptr %"R23"
  %".229" = load i32, ptr %"R18"
  %"zext.11" = zext i32 %".228" to i64
  %"zext.12" = zext i32 %".229" to i64
  %"mul.10" = mul i64 %"zext.11", %"zext.12"
  %".230" = ptrtoint ptr %"Arg_2" to i64
  %"add.21" = add i64 %"mul.10", %".230"
  %".231" = and i64 %"add.21", 18446744069414584320
  %".232" = lshr i64 %".231", 32
  %"trunc32.10" = trunc i64 %".232" to i32
  %"trunc32.11" = trunc i64 %"add.21" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R20, R25, R18, c[0x0][0x170]
  %".236" = load i32, ptr %"R25"
  %".237" = load i32, ptr %"R18"
  %"zext.13" = zext i32 %".236" to i64
  %"zext.14" = zext i32 %".237" to i64
  %"mul.11" = mul i64 %"zext.13", %"zext.14"
  %".238" = ptrtoint ptr %"Arg_2" to i64
  %"add.22" = add i64 %"mul.11", %".238"
  %".239" = and i64 %"add.22", 18446744069414584320
  %".240" = lshr i64 %".239", 32
  %"trunc32.12" = trunc i64 %".240" to i32
  %"trunc32.13" = trunc i64 %"add.22" to i32
  store i32 %"trunc32.13", ptr %"R20"
  store i32 %"trunc32.12", ptr %"R21"
  ; LDG.E.SYS R57, [R38]
  %".244" = load i32, ptr %"R38"
  %"zext.15" = zext i32 %".244" to i64
  %".245" = load i32, ptr %"R39"
  %"zext.16" = zext i32 %".245" to i64
  %"shl.3" = shl i64 %"zext.16", 32
  %"or" = or i64 %"shl.3", %"zext.15"
  %".246" = inttoptr i64 %"or" to ptr
  %".247" = ptrtoint ptr %".246" to i64
  %".248" = add i64 %".247", 0
  %"for_LDG" = inttoptr i64 %".248" to ptr
  %".249" = load float, ptr %"for_LDG"
  %".250" = bitcast ptr %"R57" to ptr
  store float %".249", ptr %".250"
  ; LDG.E.SYS R56, [R16]
  %".253" = load i32, ptr %"R16"
  %"zext.17" = zext i32 %".253" to i64
  %".254" = load i32, ptr %"R17"
  %"zext.18" = zext i32 %".254" to i64
  %"shl.4" = shl i64 %"zext.18", 32
  %"or.1" = or i64 %"shl.4", %"zext.17"
  %".255" = inttoptr i64 %"or.1" to ptr
  %".256" = ptrtoint ptr %".255" to i64
  %".257" = add i64 %".256", 0
  %"for_LDG.1" = inttoptr i64 %".257" to ptr
  %".258" = load float, ptr %"for_LDG.1"
  %".259" = bitcast ptr %"R56" to ptr
  store float %".258", ptr %".259"
  ; LDG.E.SYS R58, [R20]
  %".262" = load i32, ptr %"R20"
  %"zext.19" = zext i32 %".262" to i64
  %".263" = load i32, ptr %"R21"
  %"zext.20" = zext i32 %".263" to i64
  %"shl.5" = shl i64 %"zext.20", 32
  %"or.2" = or i64 %"shl.5", %"zext.19"
  %".264" = inttoptr i64 %"or.2" to ptr
  %".265" = ptrtoint ptr %".264" to i64
  %".266" = add i64 %".265", 0
  %"for_LDG.2" = inttoptr i64 %".266" to ptr
  %".267" = load float, ptr %"for_LDG.2"
  %".268" = bitcast ptr %"R58" to ptr
  store float %".267", ptr %".268"
  ; LDG.E.SYS R24, [R38+0x4]
  %".271" = load i32, ptr %"R38"
  %"zext.21" = zext i32 %".271" to i64
  %".272" = load i32, ptr %"R39"
  %"zext.22" = zext i32 %".272" to i64
  %"shl.6" = shl i64 %"zext.22", 32
  %"or.3" = or i64 %"shl.6", %"zext.21"
  %".273" = inttoptr i64 %"or.3" to ptr
  %".274" = ptrtoint ptr %".273" to i64
  %".275" = add i64 %".274", 4
  %"for_LDG.3" = inttoptr i64 %".275" to ptr
  %".276" = load float, ptr %"for_LDG.3"
  %".277" = bitcast ptr %"R24" to ptr
  store float %".276", ptr %".277"
  ; LDG.E.SYS R47, [R16+0x4]
  %".280" = load i32, ptr %"R16"
  %"zext.23" = zext i32 %".280" to i64
  %".281" = load i32, ptr %"R17"
  %"zext.24" = zext i32 %".281" to i64
  %"shl.7" = shl i64 %"zext.24", 32
  %"or.4" = or i64 %"shl.7", %"zext.23"
  %".282" = inttoptr i64 %"or.4" to ptr
  %".283" = ptrtoint ptr %".282" to i64
  %".284" = add i64 %".283", 4
  %"for_LDG.4" = inttoptr i64 %".284" to ptr
  %".285" = load float, ptr %"for_LDG.4"
  %".286" = bitcast ptr %"R47" to ptr
  store float %".285", ptr %".286"
  ; LDG.E.SYS R49, [R20+0x4]
  %".289" = load i32, ptr %"R20"
  %"zext.25" = zext i32 %".289" to i64
  %".290" = load i32, ptr %"R21"
  %"zext.26" = zext i32 %".290" to i64
  %"shl.8" = shl i64 %"zext.26", 32
  %"or.5" = or i64 %"shl.8", %"zext.25"
  %".291" = inttoptr i64 %"or.5" to ptr
  %".292" = ptrtoint ptr %".291" to i64
  %".293" = add i64 %".292", 4
  %"for_LDG.5" = inttoptr i64 %".293" to ptr
  %".294" = load float, ptr %"for_LDG.5"
  %".295" = bitcast ptr %"R49" to ptr
  store float %".294", ptr %".295"
  ; LDG.E.SYS R22, [R38+0x8]
  %".298" = load i32, ptr %"R38"
  %"zext.27" = zext i32 %".298" to i64
  %".299" = load i32, ptr %"R39"
  %"zext.28" = zext i32 %".299" to i64
  %"shl.9" = shl i64 %"zext.28", 32
  %"or.6" = or i64 %"shl.9", %"zext.27"
  %".300" = inttoptr i64 %"or.6" to ptr
  %".301" = ptrtoint ptr %".300" to i64
  %".302" = add i64 %".301", 8
  %"for_LDG.6" = inttoptr i64 %".302" to ptr
  %".303" = load float, ptr %"for_LDG.6"
  %".304" = bitcast ptr %"R22" to ptr
  store float %".303", ptr %".304"
  ; LDG.E.SYS R43, [R16+0x8]
  %".307" = load i32, ptr %"R16"
  %"zext.29" = zext i32 %".307" to i64
  %".308" = load i32, ptr %"R17"
  %"zext.30" = zext i32 %".308" to i64
  %"shl.10" = shl i64 %"zext.30", 32
  %"or.7" = or i64 %"shl.10", %"zext.29"
  %".309" = inttoptr i64 %"or.7" to ptr
  %".310" = ptrtoint ptr %".309" to i64
  %".311" = add i64 %".310", 8
  %"for_LDG.7" = inttoptr i64 %".311" to ptr
  %".312" = load float, ptr %"for_LDG.7"
  %".313" = bitcast ptr %"R43" to ptr
  store float %".312", ptr %".313"
  ; LDG.E.SYS R45, [R20+0x8]
  %".316" = load i32, ptr %"R20"
  %"zext.31" = zext i32 %".316" to i64
  %".317" = load i32, ptr %"R21"
  %"zext.32" = zext i32 %".317" to i64
  %"shl.11" = shl i64 %"zext.32", 32
  %"or.8" = or i64 %"shl.11", %"zext.31"
  %".318" = inttoptr i64 %"or.8" to ptr
  %".319" = ptrtoint ptr %".318" to i64
  %".320" = add i64 %".319", 8
  %"for_LDG.8" = inttoptr i64 %".320" to ptr
  %".321" = load float, ptr %"for_LDG.8"
  %".322" = bitcast ptr %"R45" to ptr
  store float %".321", ptr %".322"
  ; LDG.E.SYS R15, [R38+0xc]
  %".325" = load i32, ptr %"R38"
  %"zext.33" = zext i32 %".325" to i64
  %".326" = load i32, ptr %"R39"
  %"zext.34" = zext i32 %".326" to i64
  %"shl.12" = shl i64 %"zext.34", 32
  %"or.9" = or i64 %"shl.12", %"zext.33"
  %".327" = inttoptr i64 %"or.9" to ptr
  %".328" = ptrtoint ptr %".327" to i64
  %".329" = add i64 %".328", 12
  %"for_LDG.9" = inttoptr i64 %".329" to ptr
  %".330" = load float, ptr %"for_LDG.9"
  %".331" = bitcast ptr %"R15" to ptr
  store float %".330", ptr %".331"
  ; LDG.E.SYS R14, [R16+0xc]
  %".334" = load i32, ptr %"R16"
  %"zext.35" = zext i32 %".334" to i64
  %".335" = load i32, ptr %"R17"
  %"zext.36" = zext i32 %".335" to i64
  %"shl.13" = shl i64 %"zext.36", 32
  %"or.10" = or i64 %"shl.13", %"zext.35"
  %".336" = inttoptr i64 %"or.10" to ptr
  %".337" = ptrtoint ptr %".336" to i64
  %".338" = add i64 %".337", 12
  %"for_LDG.10" = inttoptr i64 %".338" to ptr
  %".339" = load float, ptr %"for_LDG.10"
  %".340" = bitcast ptr %"R14" to ptr
  store float %".339", ptr %".340"
  ; LDG.E.SYS R13, [R20+0xc]
  %".343" = load i32, ptr %"R20"
  %"zext.37" = zext i32 %".343" to i64
  %".344" = load i32, ptr %"R21"
  %"zext.38" = zext i32 %".344" to i64
  %"shl.14" = shl i64 %"zext.38", 32
  %"or.11" = or i64 %"shl.14", %"zext.37"
  %".345" = inttoptr i64 %"or.11" to ptr
  %".346" = ptrtoint ptr %".345" to i64
  %".347" = add i64 %".346", 12
  %"for_LDG.11" = inttoptr i64 %".347" to ptr
  %".348" = load float, ptr %"for_LDG.11"
  %".349" = bitcast ptr %"R13" to ptr
  store float %".348", ptr %".349"
  ; IADD3 R41, R11, 0x4, RZ
  %".352" = load i32, ptr %"R11"
  %"add.23" = add i32 %".352", 4
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R41"
  ; IADD3 R51, R23, 0x4, RZ
  %".355" = load i32, ptr %"R23"
  %"add.25" = add i32 %".355", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"R51"
  ; IADD3 R35, R11, 0x8, RZ
  %".358" = load i32, ptr %"R11"
  %"add.27" = add i32 %".358", 8
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", ptr %"R35"
  ; IMAD.WIDE R40, R41, R18, c[0x0][0x168]
  %".361" = load i32, ptr %"R41"
  %".362" = load i32, ptr %"R18"
  %"zext.39" = zext i32 %".361" to i64
  %"zext.40" = zext i32 %".362" to i64
  %"mul.12" = mul i64 %"zext.39", %"zext.40"
  %".363" = ptrtoint ptr %"Arg_1" to i64
  %"add.29" = add i64 %"mul.12", %".363"
  %".364" = and i64 %"add.29", 18446744069414584320
  %".365" = lshr i64 %".364", 32
  %"trunc32.14" = trunc i64 %".365" to i32
  %"trunc32.15" = trunc i64 %"add.29" to i32
  store i32 %"trunc32.15", ptr %"R40"
  store i32 %"trunc32.14", ptr %"R41"
  ; IADD3 R37, R11, 0xc, RZ
  %".369" = load i32, ptr %"R11"
  %"add.30" = add i32 %".369", 12
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R37"
  ; IMAD.WIDE R38, R51, R18, c[0x0][0x170]
  %".372" = load i32, ptr %"R51"
  %".373" = load i32, ptr %"R18"
  %"zext.41" = zext i32 %".372" to i64
  %"zext.42" = zext i32 %".373" to i64
  %"mul.13" = mul i64 %"zext.41", %"zext.42"
  %".374" = ptrtoint ptr %"Arg_2" to i64
  %"add.32" = add i64 %"mul.13", %".374"
  %".375" = and i64 %"add.32", 18446744069414584320
  %".376" = lshr i64 %".375", 32
  %"trunc32.16" = trunc i64 %".376" to i32
  %"trunc32.17" = trunc i64 %"add.32" to i32
  store i32 %"trunc32.17", ptr %"R38"
  store i32 %"trunc32.16", ptr %"R39"
  ; IADD3 R51, R25, 0x4, RZ
  %".380" = load i32, ptr %"R25"
  %"add.33" = add i32 %".380", 4
  %"add.34" = add i32 %"add.33", 0
  store i32 %"add.34", ptr %"R51"
  ; LDG.E.SYS R12, [R40]
  %".383" = load i32, ptr %"R40"
  %"zext.43" = zext i32 %".383" to i64
  %".384" = load i32, ptr %"R41"
  %"zext.44" = zext i32 %".384" to i64
  %"shl.15" = shl i64 %"zext.44", 32
  %"or.12" = or i64 %"shl.15", %"zext.43"
  %".385" = inttoptr i64 %"or.12" to ptr
  %".386" = ptrtoint ptr %".385" to i64
  %".387" = add i64 %".386", 0
  %"for_LDG.12" = inttoptr i64 %".387" to ptr
  %".388" = load float, ptr %"for_LDG.12"
  %".389" = bitcast ptr %"R12" to ptr
  store float %".388", ptr %".389"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x168]
  %".392" = load i32, ptr %"R35"
  %".393" = load i32, ptr %"R18"
  %"zext.45" = zext i32 %".392" to i64
  %"zext.46" = zext i32 %".393" to i64
  %"mul.14" = mul i64 %"zext.45", %"zext.46"
  %".394" = ptrtoint ptr %"Arg_1" to i64
  %"add.35" = add i64 %"mul.14", %".394"
  %".395" = and i64 %"add.35", 18446744069414584320
  %".396" = lshr i64 %".395", 32
  %"trunc32.18" = trunc i64 %".396" to i32
  %"trunc32.19" = trunc i64 %"add.35" to i32
  store i32 %"trunc32.19", ptr %"R34"
  store i32 %"trunc32.18", ptr %"R35"
  ; LDG.E.SYS R10, [R40+0x4]
  %".400" = load i32, ptr %"R40"
  %"zext.47" = zext i32 %".400" to i64
  %".401" = load i32, ptr %"R41"
  %"zext.48" = zext i32 %".401" to i64
  %"shl.16" = shl i64 %"zext.48", 32
  %"or.13" = or i64 %"shl.16", %"zext.47"
  %".402" = inttoptr i64 %"or.13" to ptr
  %".403" = ptrtoint ptr %".402" to i64
  %".404" = add i64 %".403", 4
  %"for_LDG.13" = inttoptr i64 %".404" to ptr
  %".405" = load float, ptr %"for_LDG.13"
  %".406" = bitcast ptr %"R10" to ptr
  store float %".405", ptr %".406"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x168]
  %".409" = load i32, ptr %"R37"
  %".410" = load i32, ptr %"R18"
  %"zext.49" = zext i32 %".409" to i64
  %"zext.50" = zext i32 %".410" to i64
  %"mul.15" = mul i64 %"zext.49", %"zext.50"
  %".411" = ptrtoint ptr %"Arg_1" to i64
  %"add.36" = add i64 %"mul.15", %".411"
  %".412" = and i64 %"add.36", 18446744069414584320
  %".413" = lshr i64 %".412", 32
  %"trunc32.20" = trunc i64 %".413" to i32
  %"trunc32.21" = trunc i64 %"add.36" to i32
  store i32 %"trunc32.21", ptr %"R36"
  store i32 %"trunc32.20", ptr %"R37"
  ; LDG.E.SYS R16, [R40+0x8]
  %".417" = load i32, ptr %"R40"
  %"zext.51" = zext i32 %".417" to i64
  %".418" = load i32, ptr %"R41"
  %"zext.52" = zext i32 %".418" to i64
  %"shl.17" = shl i64 %"zext.52", 32
  %"or.14" = or i64 %"shl.17", %"zext.51"
  %".419" = inttoptr i64 %"or.14" to ptr
  %".420" = ptrtoint ptr %".419" to i64
  %".421" = add i64 %".420", 8
  %"for_LDG.14" = inttoptr i64 %".421" to ptr
  %".422" = load float, ptr %"for_LDG.14"
  %".423" = bitcast ptr %"R16" to ptr
  store float %".422", ptr %".423"
  ; LDG.E.SYS R17, [R40+0xc]
  %".426" = load i32, ptr %"R40"
  %"zext.53" = zext i32 %".426" to i64
  %".427" = load i32, ptr %"R41"
  %"zext.54" = zext i32 %".427" to i64
  %"shl.18" = shl i64 %"zext.54", 32
  %"or.15" = or i64 %"shl.18", %"zext.53"
  %".428" = inttoptr i64 %"or.15" to ptr
  %".429" = ptrtoint ptr %".428" to i64
  %".430" = add i64 %".429", 12
  %"for_LDG.15" = inttoptr i64 %".430" to ptr
  %".431" = load float, ptr %"for_LDG.15"
  %".432" = bitcast ptr %"R17" to ptr
  store float %".431", ptr %".432"
  ; LDG.E.SYS R19, [R34]
  %".435" = load i32, ptr %"R34"
  %"zext.55" = zext i32 %".435" to i64
  %".436" = load i32, ptr %"R35"
  %"zext.56" = zext i32 %".436" to i64
  %"shl.19" = shl i64 %"zext.56", 32
  %"or.16" = or i64 %"shl.19", %"zext.55"
  %".437" = inttoptr i64 %"or.16" to ptr
  %".438" = ptrtoint ptr %".437" to i64
  %".439" = add i64 %".438", 0
  %"for_LDG.16" = inttoptr i64 %".439" to ptr
  %".440" = load float, ptr %"for_LDG.16"
  %".441" = bitcast ptr %"R19" to ptr
  store float %".440", ptr %".441"
  ; LDG.E.SYS R20, [R34+0x4]
  %".444" = load i32, ptr %"R34"
  %"zext.57" = zext i32 %".444" to i64
  %".445" = load i32, ptr %"R35"
  %"zext.58" = zext i32 %".445" to i64
  %"shl.20" = shl i64 %"zext.58", 32
  %"or.17" = or i64 %"shl.20", %"zext.57"
  %".446" = inttoptr i64 %"or.17" to ptr
  %".447" = ptrtoint ptr %".446" to i64
  %".448" = add i64 %".447", 4
  %"for_LDG.17" = inttoptr i64 %".448" to ptr
  %".449" = load float, ptr %"for_LDG.17"
  %".450" = bitcast ptr %"R20" to ptr
  store float %".449", ptr %".450"
  ; IMAD.WIDE R40, R51, R18, c[0x0][0x170]
  %".453" = load i32, ptr %"R51"
  %".454" = load i32, ptr %"R18"
  %"zext.59" = zext i32 %".453" to i64
  %"zext.60" = zext i32 %".454" to i64
  %"mul.16" = mul i64 %"zext.59", %"zext.60"
  %".455" = ptrtoint ptr %"Arg_2" to i64
  %"add.37" = add i64 %"mul.16", %".455"
  %".456" = and i64 %"add.37", 18446744069414584320
  %".457" = lshr i64 %".456", 32
  %"trunc32.22" = trunc i64 %".457" to i32
  %"trunc32.23" = trunc i64 %"add.37" to i32
  store i32 %"trunc32.23", ptr %"R40"
  store i32 %"trunc32.22", ptr %"R41"
  ; LDG.E.SYS R51, [R38]
  %".461" = load i32, ptr %"R38"
  %"zext.61" = zext i32 %".461" to i64
  %".462" = load i32, ptr %"R39"
  %"zext.62" = zext i32 %".462" to i64
  %"shl.21" = shl i64 %"zext.62", 32
  %"or.18" = or i64 %"shl.21", %"zext.61"
  %".463" = inttoptr i64 %"or.18" to ptr
  %".464" = ptrtoint ptr %".463" to i64
  %".465" = add i64 %".464", 0
  %"for_LDG.18" = inttoptr i64 %".465" to ptr
  %".466" = load float, ptr %"for_LDG.18"
  %".467" = bitcast ptr %"R51" to ptr
  store float %".466", ptr %".467"
  ; LDG.E.SYS R21, [R34+0x8]
  %".470" = load i32, ptr %"R34"
  %"zext.63" = zext i32 %".470" to i64
  %".471" = load i32, ptr %"R35"
  %"zext.64" = zext i32 %".471" to i64
  %"shl.22" = shl i64 %"zext.64", 32
  %"or.19" = or i64 %"shl.22", %"zext.63"
  %".472" = inttoptr i64 %"or.19" to ptr
  %".473" = ptrtoint ptr %".472" to i64
  %".474" = add i64 %".473", 8
  %"for_LDG.19" = inttoptr i64 %".474" to ptr
  %".475" = load float, ptr %"for_LDG.19"
  %".476" = bitcast ptr %"R21" to ptr
  store float %".475", ptr %".476"
  ; LDG.E.SYS R42, [R34+0xc]
  %".479" = load i32, ptr %"R34"
  %"zext.65" = zext i32 %".479" to i64
  %".480" = load i32, ptr %"R35"
  %"zext.66" = zext i32 %".480" to i64
  %"shl.23" = shl i64 %"zext.66", 32
  %"or.20" = or i64 %"shl.23", %"zext.65"
  %".481" = inttoptr i64 %"or.20" to ptr
  %".482" = ptrtoint ptr %".481" to i64
  %".483" = add i64 %".482", 12
  %"for_LDG.20" = inttoptr i64 %".483" to ptr
  %".484" = load float, ptr %"for_LDG.20"
  %".485" = bitcast ptr %"R42" to ptr
  store float %".484", ptr %".485"
  ; LDG.E.SYS R44, [R36]
  %".488" = load i32, ptr %"R36"
  %"zext.67" = zext i32 %".488" to i64
  %".489" = load i32, ptr %"R37"
  %"zext.68" = zext i32 %".489" to i64
  %"shl.24" = shl i64 %"zext.68", 32
  %"or.21" = or i64 %"shl.24", %"zext.67"
  %".490" = inttoptr i64 %"or.21" to ptr
  %".491" = ptrtoint ptr %".490" to i64
  %".492" = add i64 %".491", 0
  %"for_LDG.21" = inttoptr i64 %".492" to ptr
  %".493" = load float, ptr %"for_LDG.21"
  %".494" = bitcast ptr %"R44" to ptr
  store float %".493", ptr %".494"
  ; LDG.E.SYS R46, [R36+0x4]
  %".497" = load i32, ptr %"R36"
  %"zext.69" = zext i32 %".497" to i64
  %".498" = load i32, ptr %"R37"
  %"zext.70" = zext i32 %".498" to i64
  %"shl.25" = shl i64 %"zext.70", 32
  %"or.22" = or i64 %"shl.25", %"zext.69"
  %".499" = inttoptr i64 %"or.22" to ptr
  %".500" = ptrtoint ptr %".499" to i64
  %".501" = add i64 %".500", 4
  %"for_LDG.22" = inttoptr i64 %".501" to ptr
  %".502" = load float, ptr %"for_LDG.22"
  %".503" = bitcast ptr %"R46" to ptr
  store float %".502", ptr %".503"
  ; IADD3 R35, R23, 0x8, RZ
  %".506" = load i32, ptr %"R23"
  %"add.38" = add i32 %".506", 8
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R35"
  ; LDG.E.SYS R48, [R36+0x8]
  %".509" = load i32, ptr %"R36"
  %"zext.71" = zext i32 %".509" to i64
  %".510" = load i32, ptr %"R37"
  %"zext.72" = zext i32 %".510" to i64
  %"shl.26" = shl i64 %"zext.72", 32
  %"or.23" = or i64 %"shl.26", %"zext.71"
  %".511" = inttoptr i64 %"or.23" to ptr
  %".512" = ptrtoint ptr %".511" to i64
  %".513" = add i64 %".512", 8
  %"for_LDG.23" = inttoptr i64 %".513" to ptr
  %".514" = load float, ptr %"for_LDG.23"
  %".515" = bitcast ptr %"R48" to ptr
  store float %".514", ptr %".515"
  ; LDG.E.SYS R50, [R36+0xc]
  %".518" = load i32, ptr %"R36"
  %"zext.73" = zext i32 %".518" to i64
  %".519" = load i32, ptr %"R37"
  %"zext.74" = zext i32 %".519" to i64
  %"shl.27" = shl i64 %"zext.74", 32
  %"or.24" = or i64 %"shl.27", %"zext.73"
  %".520" = inttoptr i64 %"or.24" to ptr
  %".521" = ptrtoint ptr %".520" to i64
  %".522" = add i64 %".521", 12
  %"for_LDG.24" = inttoptr i64 %".522" to ptr
  %".523" = load float, ptr %"for_LDG.24"
  %".524" = bitcast ptr %"R50" to ptr
  store float %".523", ptr %".524"
  ; LDG.E.SYS R53, [R38+0x4]
  %".527" = load i32, ptr %"R38"
  %"zext.75" = zext i32 %".527" to i64
  %".528" = load i32, ptr %"R39"
  %"zext.76" = zext i32 %".528" to i64
  %"shl.28" = shl i64 %"zext.76", 32
  %"or.25" = or i64 %"shl.28", %"zext.75"
  %".529" = inttoptr i64 %"or.25" to ptr
  %".530" = ptrtoint ptr %".529" to i64
  %".531" = add i64 %".530", 4
  %"for_LDG.25" = inttoptr i64 %".531" to ptr
  %".532" = load float, ptr %"for_LDG.25"
  %".533" = bitcast ptr %"R53" to ptr
  store float %".532", ptr %".533"
  ; LDG.E.SYS R59, [R40+0x4]
  %".536" = load i32, ptr %"R40"
  %"zext.77" = zext i32 %".536" to i64
  %".537" = load i32, ptr %"R41"
  %"zext.78" = zext i32 %".537" to i64
  %"shl.29" = shl i64 %"zext.78", 32
  %"or.26" = or i64 %"shl.29", %"zext.77"
  %".538" = inttoptr i64 %"or.26" to ptr
  %".539" = ptrtoint ptr %".538" to i64
  %".540" = add i64 %".539", 4
  %"for_LDG.26" = inttoptr i64 %".540" to ptr
  %".541" = load float, ptr %"for_LDG.26"
  %".542" = bitcast ptr %"R59" to ptr
  store float %".541", ptr %".542"
  ; IADD3 R37, R25, 0x8, RZ
  %".545" = load i32, ptr %"R25"
  %"add.40" = add i32 %".545", 8
  %"add.41" = add i32 %"add.40", 0
  store i32 %"add.41", ptr %"R37"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x170]
  %".548" = load i32, ptr %"R35"
  %".549" = load i32, ptr %"R18"
  %"zext.79" = zext i32 %".548" to i64
  %"zext.80" = zext i32 %".549" to i64
  %"mul.17" = mul i64 %"zext.79", %"zext.80"
  %".550" = ptrtoint ptr %"Arg_2" to i64
  %"add.42" = add i64 %"mul.17", %".550"
  %".551" = and i64 %"add.42", 18446744069414584320
  %".552" = lshr i64 %".551", 32
  %"trunc32.24" = trunc i64 %".552" to i32
  %"trunc32.25" = trunc i64 %"add.42" to i32
  store i32 %"trunc32.25", ptr %"R34"
  store i32 %"trunc32.24", ptr %"R35"
  ; LDG.E.SYS R55, [R38+0x8]
  %".556" = load i32, ptr %"R38"
  %"zext.81" = zext i32 %".556" to i64
  %".557" = load i32, ptr %"R39"
  %"zext.82" = zext i32 %".557" to i64
  %"shl.30" = shl i64 %"zext.82", 32
  %"or.27" = or i64 %"shl.30", %"zext.81"
  %".558" = inttoptr i64 %"or.27" to ptr
  %".559" = ptrtoint ptr %".558" to i64
  %".560" = add i64 %".559", 8
  %"for_LDG.27" = inttoptr i64 %".560" to ptr
  %".561" = load float, ptr %"for_LDG.27"
  %".562" = bitcast ptr %"R55" to ptr
  store float %".561", ptr %".562"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x170]
  %".565" = load i32, ptr %"R37"
  %".566" = load i32, ptr %"R18"
  %"zext.83" = zext i32 %".565" to i64
  %"zext.84" = zext i32 %".566" to i64
  %"mul.18" = mul i64 %"zext.83", %"zext.84"
  %".567" = ptrtoint ptr %"Arg_2" to i64
  %"add.43" = add i64 %"mul.18", %".567"
  %".568" = and i64 %"add.43", 18446744069414584320
  %".569" = lshr i64 %".568", 32
  %"trunc32.26" = trunc i64 %".569" to i32
  %"trunc32.27" = trunc i64 %"add.43" to i32
  store i32 %"trunc32.27", ptr %"R36"
  store i32 %"trunc32.26", ptr %"R37"
  ; LDG.E.SYS R61, [R40+0x8]
  %".573" = load i32, ptr %"R40"
  %"zext.85" = zext i32 %".573" to i64
  %".574" = load i32, ptr %"R41"
  %"zext.86" = zext i32 %".574" to i64
  %"shl.31" = shl i64 %"zext.86", 32
  %"or.28" = or i64 %"shl.31", %"zext.85"
  %".575" = inttoptr i64 %"or.28" to ptr
  %".576" = ptrtoint ptr %".575" to i64
  %".577" = add i64 %".576", 8
  %"for_LDG.28" = inttoptr i64 %".577" to ptr
  %".578" = load float, ptr %"for_LDG.28"
  %".579" = bitcast ptr %"R61" to ptr
  store float %".578", ptr %".579"
  ; LDG.E.SYS R60, [R38+0xc]
  %".582" = load i32, ptr %"R38"
  %"zext.87" = zext i32 %".582" to i64
  %".583" = load i32, ptr %"R39"
  %"zext.88" = zext i32 %".583" to i64
  %"shl.32" = shl i64 %"zext.88", 32
  %"or.29" = or i64 %"shl.32", %"zext.87"
  %".584" = inttoptr i64 %"or.29" to ptr
  %".585" = ptrtoint ptr %".584" to i64
  %".586" = add i64 %".585", 12
  %"for_LDG.29" = inttoptr i64 %".586" to ptr
  %".587" = load float, ptr %"for_LDG.29"
  %".588" = bitcast ptr %"R60" to ptr
  store float %".587", ptr %".588"
  ; IADD3 R23, R23, 0xc, RZ
  %".591" = load i32, ptr %"R23"
  %"add.44" = add i32 %".591", 12
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R23"
  ; IADD3 R25, R25, 0xc, RZ
  %".594" = load i32, ptr %"R25"
  %"add.46" = add i32 %".594", 12
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R25"
  ; LDG.E.SYS R39, [R34+0x4]
  %".597" = load i32, ptr %"R34"
  %"zext.89" = zext i32 %".597" to i64
  %".598" = load i32, ptr %"R35"
  %"zext.90" = zext i32 %".598" to i64
  %"shl.33" = shl i64 %"zext.90", 32
  %"or.30" = or i64 %"shl.33", %"zext.89"
  %".599" = inttoptr i64 %"or.30" to ptr
  %".600" = ptrtoint ptr %".599" to i64
  %".601" = add i64 %".600", 4
  %"for_LDG.30" = inttoptr i64 %".601" to ptr
  %".602" = load float, ptr %"for_LDG.30"
  %".603" = bitcast ptr %"R39" to ptr
  store float %".602", ptr %".603"
  ; LDG.E.SYS R38, [R34+0x8]
  %".606" = load i32, ptr %"R34"
  %"zext.91" = zext i32 %".606" to i64
  %".607" = load i32, ptr %"R35"
  %"zext.92" = zext i32 %".607" to i64
  %"shl.34" = shl i64 %"zext.92", 32
  %"or.31" = or i64 %"shl.34", %"zext.91"
  %".608" = inttoptr i64 %"or.31" to ptr
  %".609" = ptrtoint ptr %".608" to i64
  %".610" = add i64 %".609", 8
  %"for_LDG.31" = inttoptr i64 %".610" to ptr
  %".611" = load float, ptr %"for_LDG.31"
  %".612" = bitcast ptr %"R38" to ptr
  store float %".611", ptr %".612"
  ; FFMA R56, R56, R57, R52
  %".615" = load float, ptr %"R56"
  %".616" = load float, ptr %"R57"
  %".617" = load float, ptr %"R52"
  %"fmul" = fmul float %".615", %".616"
  %"fadd" = fadd float %"fmul", %".617"
  %".618" = bitcast ptr %"R56" to ptr
  store float %"fadd", ptr %".618"
  ; LDG.E.SYS R52, [R40+0xc]
  %".621" = load i32, ptr %"R40"
  %"zext.93" = zext i32 %".621" to i64
  %".622" = load i32, ptr %"R41"
  %"zext.94" = zext i32 %".622" to i64
  %"shl.35" = shl i64 %"zext.94", 32
  %"or.32" = or i64 %"shl.35", %"zext.93"
  %".623" = inttoptr i64 %"or.32" to ptr
  %".624" = ptrtoint ptr %".623" to i64
  %".625" = add i64 %".624", 12
  %"for_LDG.32" = inttoptr i64 %".625" to ptr
  %".626" = load float, ptr %"for_LDG.32"
  %".627" = bitcast ptr %"R52" to ptr
  store float %".626", ptr %".627"
  ; FFMA R58, R57, R58, R54
  %".630" = load float, ptr %"R57"
  %".631" = load float, ptr %"R58"
  %".632" = load float, ptr %"R54"
  %"fmul.1" = fmul float %".630", %".631"
  %"fadd.1" = fadd float %"fmul.1", %".632"
  %".633" = bitcast ptr %"R58" to ptr
  store float %"fadd.1", ptr %".633"
  ; LDG.E.SYS R57, [R40]
  %".636" = load i32, ptr %"R40"
  %"zext.95" = zext i32 %".636" to i64
  %".637" = load i32, ptr %"R41"
  %"zext.96" = zext i32 %".637" to i64
  %"shl.36" = shl i64 %"zext.96", 32
  %"or.33" = or i64 %"shl.36", %"zext.95"
  %".638" = inttoptr i64 %"or.33" to ptr
  %".639" = ptrtoint ptr %".638" to i64
  %".640" = add i64 %".639", 0
  %"for_LDG.33" = inttoptr i64 %".640" to ptr
  %".641" = load float, ptr %"for_LDG.33"
  %".642" = bitcast ptr %"R57" to ptr
  store float %".641", ptr %".642"
  ; LDG.E.SYS R54, [R34]
  %".645" = load i32, ptr %"R34"
  %"zext.97" = zext i32 %".645" to i64
  %".646" = load i32, ptr %"R35"
  %"zext.98" = zext i32 %".646" to i64
  %"shl.37" = shl i64 %"zext.98", 32
  %"or.34" = or i64 %"shl.37", %"zext.97"
  %".647" = inttoptr i64 %"or.34" to ptr
  %".648" = ptrtoint ptr %".647" to i64
  %".649" = add i64 %".648", 0
  %"for_LDG.34" = inttoptr i64 %".649" to ptr
  %".650" = load float, ptr %"for_LDG.34"
  %".651" = bitcast ptr %"R54" to ptr
  store float %".650", ptr %".651"
  ; FFMA R56, R47, R24, R56
  %".654" = load float, ptr %"R47"
  %".655" = load float, ptr %"R24"
  %".656" = load float, ptr %"R56"
  %"fmul.2" = fmul float %".654", %".655"
  %"fadd.2" = fadd float %"fmul.2", %".656"
  %".657" = bitcast ptr %"R56" to ptr
  store float %"fadd.2", ptr %".657"
  ; LDG.E.SYS R47, [R34+0xc]
  %".660" = load i32, ptr %"R34"
  %"zext.99" = zext i32 %".660" to i64
  %".661" = load i32, ptr %"R35"
  %"zext.100" = zext i32 %".661" to i64
  %"shl.38" = shl i64 %"zext.100", 32
  %"or.35" = or i64 %"shl.38", %"zext.99"
  %".662" = inttoptr i64 %"or.35" to ptr
  %".663" = ptrtoint ptr %".662" to i64
  %".664" = add i64 %".663", 12
  %"for_LDG.35" = inttoptr i64 %".664" to ptr
  %".665" = load float, ptr %"for_LDG.35"
  %".666" = bitcast ptr %"R47" to ptr
  store float %".665", ptr %".666"
  ; FFMA R58, R24, R49, R58
  %".669" = load float, ptr %"R24"
  %".670" = load float, ptr %"R49"
  %".671" = load float, ptr %"R58"
  %"fmul.3" = fmul float %".669", %".670"
  %"fadd.3" = fadd float %"fmul.3", %".671"
  %".672" = bitcast ptr %"R58" to ptr
  store float %"fadd.3", ptr %".672"
  ; LDG.E.SYS R41, [R36+0x4]
  %".675" = load i32, ptr %"R36"
  %"zext.101" = zext i32 %".675" to i64
  %".676" = load i32, ptr %"R37"
  %"zext.102" = zext i32 %".676" to i64
  %"shl.39" = shl i64 %"zext.102", 32
  %"or.36" = or i64 %"shl.39", %"zext.101"
  %".677" = inttoptr i64 %"or.36" to ptr
  %".678" = ptrtoint ptr %".677" to i64
  %".679" = add i64 %".678", 4
  %"for_LDG.36" = inttoptr i64 %".679" to ptr
  %".680" = load float, ptr %"for_LDG.36"
  %".681" = bitcast ptr %"R41" to ptr
  store float %".680", ptr %".681"
  ; LDG.E.SYS R40, [R36+0x8]
  %".684" = load i32, ptr %"R36"
  %"zext.103" = zext i32 %".684" to i64
  %".685" = load i32, ptr %"R37"
  %"zext.104" = zext i32 %".685" to i64
  %"shl.40" = shl i64 %"zext.104", 32
  %"or.37" = or i64 %"shl.40", %"zext.103"
  %".686" = inttoptr i64 %"or.37" to ptr
  %".687" = ptrtoint ptr %".686" to i64
  %".688" = add i64 %".687", 8
  %"for_LDG.37" = inttoptr i64 %".688" to ptr
  %".689" = load float, ptr %"for_LDG.37"
  %".690" = bitcast ptr %"R40" to ptr
  store float %".689", ptr %".690"
  ; FFMA R49, R43, R22, R56
  %".693" = load float, ptr %"R43"
  %".694" = load float, ptr %"R22"
  %".695" = load float, ptr %"R56"
  %"fmul.4" = fmul float %".693", %".694"
  %"fadd.4" = fadd float %"fmul.4", %".695"
  %".696" = bitcast ptr %"R49" to ptr
  store float %"fadd.4", ptr %".696"
  ; LDG.E.SYS R56, [R36]
  %".699" = load i32, ptr %"R36"
  %"zext.105" = zext i32 %".699" to i64
  %".700" = load i32, ptr %"R37"
  %"zext.106" = zext i32 %".700" to i64
  %"shl.41" = shl i64 %"zext.106", 32
  %"or.38" = or i64 %"shl.41", %"zext.105"
  %".701" = inttoptr i64 %"or.38" to ptr
  %".702" = ptrtoint ptr %".701" to i64
  %".703" = add i64 %".702", 0
  %"for_LDG.38" = inttoptr i64 %".703" to ptr
  %".704" = load float, ptr %"for_LDG.38"
  %".705" = bitcast ptr %"R56" to ptr
  store float %".704", ptr %".705"
  ; IMAD.WIDE R24, R25, R18, c[0x0][0x170]
  %".708" = load i32, ptr %"R25"
  %".709" = load i32, ptr %"R18"
  %"zext.107" = zext i32 %".708" to i64
  %"zext.108" = zext i32 %".709" to i64
  %"mul.19" = mul i64 %"zext.107", %"zext.108"
  %".710" = ptrtoint ptr %"Arg_2" to i64
  %"add.48" = add i64 %"mul.19", %".710"
  %".711" = and i64 %"add.48", 18446744069414584320
  %".712" = lshr i64 %".711", 32
  %"trunc32.28" = trunc i64 %".712" to i32
  %"trunc32.29" = trunc i64 %"add.48" to i32
  store i32 %"trunc32.29", ptr %"R24"
  store i32 %"trunc32.28", ptr %"R25"
  ; LDG.E.SYS R43, [R36+0xc]
  %".716" = load i32, ptr %"R36"
  %"zext.109" = zext i32 %".716" to i64
  %".717" = load i32, ptr %"R37"
  %"zext.110" = zext i32 %".717" to i64
  %"shl.42" = shl i64 %"zext.110", 32
  %"or.39" = or i64 %"shl.42", %"zext.109"
  %".718" = inttoptr i64 %"or.39" to ptr
  %".719" = ptrtoint ptr %".718" to i64
  %".720" = add i64 %".719", 12
  %"for_LDG.39" = inttoptr i64 %".720" to ptr
  %".721" = load float, ptr %"for_LDG.39"
  %".722" = bitcast ptr %"R43" to ptr
  store float %".721", ptr %".722"
  ; FFMA R58, R22, R45, R58
  %".725" = load float, ptr %"R22"
  %".726" = load float, ptr %"R45"
  %".727" = load float, ptr %"R58"
  %"fmul.5" = fmul float %".725", %".726"
  %"fadd.5" = fadd float %"fmul.5", %".727"
  %".728" = bitcast ptr %"R58" to ptr
  store float %"fadd.5", ptr %".728"
  ; IMAD.WIDE R22, R23, R18, c[0x0][0x170]
  %".731" = load i32, ptr %"R23"
  %".732" = load i32, ptr %"R18"
  %"zext.111" = zext i32 %".731" to i64
  %"zext.112" = zext i32 %".732" to i64
  %"mul.20" = mul i64 %"zext.111", %"zext.112"
  %".733" = ptrtoint ptr %"Arg_2" to i64
  %"add.49" = add i64 %"mul.20", %".733"
  %".734" = and i64 %"add.49", 18446744069414584320
  %".735" = lshr i64 %".734", 32
  %"trunc32.30" = trunc i64 %".735" to i32
  %"trunc32.31" = trunc i64 %"add.49" to i32
  store i32 %"trunc32.31", ptr %"R22"
  store i32 %"trunc32.30", ptr %"R23"
  ; LDG.E.SYS R18, [R24]
  %".739" = load i32, ptr %"R24"
  %"zext.113" = zext i32 %".739" to i64
  %".740" = load i32, ptr %"R25"
  %"zext.114" = zext i32 %".740" to i64
  %"shl.43" = shl i64 %"zext.114", 32
  %"or.40" = or i64 %"shl.43", %"zext.113"
  %".741" = inttoptr i64 %"or.40" to ptr
  %".742" = ptrtoint ptr %".741" to i64
  %".743" = add i64 %".742", 0
  %"for_LDG.40" = inttoptr i64 %".743" to ptr
  %".744" = load float, ptr %"for_LDG.40"
  %".745" = bitcast ptr %"R18" to ptr
  store float %".744", ptr %".745"
  ; FFMA R14, R14, R15, R49
  %".748" = load float, ptr %"R14"
  %".749" = load float, ptr %"R15"
  %".750" = load float, ptr %"R49"
  %"fmul.6" = fmul float %".748", %".749"
  %"fadd.6" = fadd float %"fmul.6", %".750"
  %".751" = bitcast ptr %"R14" to ptr
  store float %"fadd.6", ptr %".751"
  ; LDG.E.SYS R49, [R24+0x4]
  %".754" = load i32, ptr %"R24"
  %"zext.115" = zext i32 %".754" to i64
  %".755" = load i32, ptr %"R25"
  %"zext.116" = zext i32 %".755" to i64
  %"shl.44" = shl i64 %"zext.116", 32
  %"or.41" = or i64 %"shl.44", %"zext.115"
  %".756" = inttoptr i64 %"or.41" to ptr
  %".757" = ptrtoint ptr %".756" to i64
  %".758" = add i64 %".757", 4
  %"for_LDG.41" = inttoptr i64 %".758" to ptr
  %".759" = load float, ptr %"for_LDG.41"
  %".760" = bitcast ptr %"R49" to ptr
  store float %".759", ptr %".760"
  ; FFMA R58, R15, R13, R58
  %".763" = load float, ptr %"R15"
  %".764" = load float, ptr %"R13"
  %".765" = load float, ptr %"R58"
  %"fmul.7" = fmul float %".763", %".764"
  %"fadd.7" = fadd float %"fmul.7", %".765"
  %".766" = bitcast ptr %"R58" to ptr
  store float %"fadd.7", ptr %".766"
  ; LDG.E.SYS R35, [R22]
  %".769" = load i32, ptr %"R22"
  %"zext.117" = zext i32 %".769" to i64
  %".770" = load i32, ptr %"R23"
  %"zext.118" = zext i32 %".770" to i64
  %"shl.45" = shl i64 %"zext.118", 32
  %"or.42" = or i64 %"shl.45", %"zext.117"
  %".771" = inttoptr i64 %"or.42" to ptr
  %".772" = ptrtoint ptr %".771" to i64
  %".773" = add i64 %".772", 0
  %"for_LDG.42" = inttoptr i64 %".773" to ptr
  %".774" = load float, ptr %"for_LDG.42"
  %".775" = bitcast ptr %"R35" to ptr
  store float %".774", ptr %".775"
  ; LDG.E.SYS R15, [R22+0x4]
  %".778" = load i32, ptr %"R22"
  %"zext.119" = zext i32 %".778" to i64
  %".779" = load i32, ptr %"R23"
  %"zext.120" = zext i32 %".779" to i64
  %"shl.46" = shl i64 %"zext.120", 32
  %"or.43" = or i64 %"shl.46", %"zext.119"
  %".780" = inttoptr i64 %"or.43" to ptr
  %".781" = ptrtoint ptr %".780" to i64
  %".782" = add i64 %".781", 4
  %"for_LDG.43" = inttoptr i64 %".782" to ptr
  %".783" = load float, ptr %"for_LDG.43"
  %".784" = bitcast ptr %"R15" to ptr
  store float %".783", ptr %".784"
  ; LDG.E.SYS R13, [R22+0x8]
  %".787" = load i32, ptr %"R22"
  %"zext.121" = zext i32 %".787" to i64
  %".788" = load i32, ptr %"R23"
  %"zext.122" = zext i32 %".788" to i64
  %"shl.47" = shl i64 %"zext.122", 32
  %"or.44" = or i64 %"shl.47", %"zext.121"
  %".789" = inttoptr i64 %"or.44" to ptr
  %".790" = ptrtoint ptr %".789" to i64
  %".791" = add i64 %".790", 8
  %"for_LDG.44" = inttoptr i64 %".791" to ptr
  %".792" = load float, ptr %"for_LDG.44"
  %".793" = bitcast ptr %"R13" to ptr
  store float %".792", ptr %".793"
  ; LDG.E.SYS R37, [R24+0x8]
  %".796" = load i32, ptr %"R24"
  %"zext.123" = zext i32 %".796" to i64
  %".797" = load i32, ptr %"R25"
  %"zext.124" = zext i32 %".797" to i64
  %"shl.48" = shl i64 %"zext.124", 32
  %"or.45" = or i64 %"shl.48", %"zext.123"
  %".798" = inttoptr i64 %"or.45" to ptr
  %".799" = ptrtoint ptr %".798" to i64
  %".800" = add i64 %".799", 8
  %"for_LDG.45" = inttoptr i64 %".800" to ptr
  %".801" = load float, ptr %"for_LDG.45"
  %".802" = bitcast ptr %"R37" to ptr
  store float %".801", ptr %".802"
  ; LDG.E.SYS R45, [R22+0xc]
  %".805" = load i32, ptr %"R22"
  %"zext.125" = zext i32 %".805" to i64
  %".806" = load i32, ptr %"R23"
  %"zext.126" = zext i32 %".806" to i64
  %"shl.49" = shl i64 %"zext.126", 32
  %"or.46" = or i64 %"shl.49", %"zext.125"
  %".807" = inttoptr i64 %"or.46" to ptr
  %".808" = ptrtoint ptr %".807" to i64
  %".809" = add i64 %".808", 12
  %"for_LDG.46" = inttoptr i64 %".809" to ptr
  %".810" = load float, ptr %"for_LDG.46"
  %".811" = bitcast ptr %"R45" to ptr
  store float %".810", ptr %".811"
  ; LDG.E.SYS R34, [R24+0xc]
  %".814" = load i32, ptr %"R24"
  %"zext.127" = zext i32 %".814" to i64
  %".815" = load i32, ptr %"R25"
  %"zext.128" = zext i32 %".815" to i64
  %"shl.50" = shl i64 %"zext.128", 32
  %"or.47" = or i64 %"shl.50", %"zext.127"
  %".816" = inttoptr i64 %"or.47" to ptr
  %".817" = ptrtoint ptr %".816" to i64
  %".818" = add i64 %".817", 12
  %"for_LDG.47" = inttoptr i64 %".818" to ptr
  %".819" = load float, ptr %"for_LDG.47"
  %".820" = bitcast ptr %"R34" to ptr
  store float %".819", ptr %".820"
  ; FFMA R14, R51, R12, R14
  %".823" = load float, ptr %"R51"
  %".824" = load float, ptr %"R12"
  %".825" = load float, ptr %"R14"
  %"fmul.8" = fmul float %".823", %".824"
  %"fadd.8" = fadd float %"fmul.8", %".825"
  %".826" = bitcast ptr %"R14" to ptr
  store float %"fadd.8", ptr %".826"
  ; IADD3 R9, R9, -0x10, RZ
  %".829" = load i32, ptr %"R9"
  %"add.50" = add i32 %".829", -16
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R9"
  ; FFMA R14, R53, R10, R14
  %".832" = load float, ptr %"R53"
  %".833" = load float, ptr %"R10"
  %".834" = load float, ptr %"R14"
  %"fmul.9" = fmul float %".832", %".833"
  %"fadd.9" = fadd float %"fmul.9", %".834"
  %".835" = bitcast ptr %"R14" to ptr
  store float %"fadd.9", ptr %".835"
  ; FFMA R14, R55, R16, R14
  %".838" = load float, ptr %"R55"
  %".839" = load float, ptr %"R16"
  %".840" = load float, ptr %"R14"
  %"fmul.10" = fmul float %".838", %".839"
  %"fadd.10" = fadd float %"fmul.10", %".840"
  %".841" = bitcast ptr %"R14" to ptr
  store float %"fadd.10", ptr %".841"
  ; FFMA R14, R60, R17, R14
  %".844" = load float, ptr %"R60"
  %".845" = load float, ptr %"R17"
  %".846" = load float, ptr %"R14"
  %"fmul.11" = fmul float %".844", %".845"
  %"fadd.11" = fadd float %"fmul.11", %".846"
  %".847" = bitcast ptr %"R14" to ptr
  store float %"fadd.11", ptr %".847"
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".850" = load i32, ptr %"R9"
  %".851" = load i1, ptr %"PT"
  %"cmp.8" = icmp sgt i32 %".850", 12
  %".852" = and i1 %"cmp.8", %".851"
  store i1 %".852", ptr %"P1"
  ; IADD3 R11, R11, 0x10, RZ
  %".855" = load i32, ptr %"R11"
  %"add.52" = add i32 %".855", 16
  %"add.53" = add i32 %"add.52", 0
  store i32 %"add.53", ptr %"R11"
  ; FFMA R57, R12, R57, R58
  %".858" = load float, ptr %"R12"
  %".859" = load float, ptr %"R57"
  %".860" = load float, ptr %"R58"
  %"fmul.12" = fmul float %".858", %".859"
  %"fadd.12" = fadd float %"fmul.12", %".860"
  %".861" = bitcast ptr %"R57" to ptr
  store float %"fadd.12", ptr %".861"
  ; FFMA R57, R10, R59, R57
  %".864" = load float, ptr %"R10"
  %".865" = load float, ptr %"R59"
  %".866" = load float, ptr %"R57"
  %"fmul.13" = fmul float %".864", %".865"
  %"fadd.13" = fadd float %"fmul.13", %".866"
  %".867" = bitcast ptr %"R57" to ptr
  store float %"fadd.13", ptr %".867"
  ; FFMA R57, R16, R61, R57
  %".870" = load float, ptr %"R16"
  %".871" = load float, ptr %"R61"
  %".872" = load float, ptr %"R57"
  %"fmul.14" = fmul float %".870", %".871"
  %"fadd.14" = fadd float %"fmul.14", %".872"
  %".873" = bitcast ptr %"R57" to ptr
  store float %"fadd.14", ptr %".873"
  ; FFMA R52, R17, R52, R57
  %".876" = load float, ptr %"R17"
  %".877" = load float, ptr %"R52"
  %".878" = load float, ptr %"R57"
  %"fmul.15" = fmul float %".876", %".877"
  %"fadd.15" = fadd float %"fmul.15", %".878"
  %".879" = bitcast ptr %"R52" to ptr
  store float %"fadd.15", ptr %".879"
  ; FFMA R14, R54, R19, R14
  %".882" = load float, ptr %"R54"
  %".883" = load float, ptr %"R19"
  %".884" = load float, ptr %"R14"
  %"fmul.16" = fmul float %".882", %".883"
  %"fadd.16" = fadd float %"fmul.16", %".884"
  %".885" = bitcast ptr %"R14" to ptr
  store float %"fadd.16", ptr %".885"
  ; FFMA R52, R19, R56, R52
  %".888" = load float, ptr %"R19"
  %".889" = load float, ptr %"R56"
  %".890" = load float, ptr %"R52"
  %"fmul.17" = fmul float %".888", %".889"
  %"fadd.17" = fadd float %"fmul.17", %".890"
  %".891" = bitcast ptr %"R52" to ptr
  store float %"fadd.17", ptr %".891"
  ; FFMA R14, R39, R20, R14
  %".894" = load float, ptr %"R39"
  %".895" = load float, ptr %"R20"
  %".896" = load float, ptr %"R14"
  %"fmul.18" = fmul float %".894", %".895"
  %"fadd.18" = fadd float %"fmul.18", %".896"
  %".897" = bitcast ptr %"R14" to ptr
  store float %"fadd.18", ptr %".897"
  ; FFMA R41, R20, R41, R52
  %".900" = load float, ptr %"R20"
  %".901" = load float, ptr %"R41"
  %".902" = load float, ptr %"R52"
  %"fmul.19" = fmul float %".900", %".901"
  %"fadd.19" = fadd float %"fmul.19", %".902"
  %".903" = bitcast ptr %"R41" to ptr
  store float %"fadd.19", ptr %".903"
  ; FFMA R14, R38, R21, R14
  %".906" = load float, ptr %"R38"
  %".907" = load float, ptr %"R21"
  %".908" = load float, ptr %"R14"
  %"fmul.20" = fmul float %".906", %".907"
  %"fadd.20" = fadd float %"fmul.20", %".908"
  %".909" = bitcast ptr %"R14" to ptr
  store float %"fadd.20", ptr %".909"
  ; FFMA R40, R21, R40, R41
  %".912" = load float, ptr %"R21"
  %".913" = load float, ptr %"R40"
  %".914" = load float, ptr %"R41"
  %"fmul.21" = fmul float %".912", %".913"
  %"fadd.21" = fadd float %"fmul.21", %".914"
  %".915" = bitcast ptr %"R40" to ptr
  store float %"fadd.21", ptr %".915"
  ; FFMA R14, R47, R42, R14
  %".918" = load float, ptr %"R47"
  %".919" = load float, ptr %"R42"
  %".920" = load float, ptr %"R14"
  %"fmul.22" = fmul float %".918", %".919"
  %"fadd.22" = fadd float %"fmul.22", %".920"
  %".921" = bitcast ptr %"R14" to ptr
  store float %"fadd.22", ptr %".921"
  ; FFMA R43, R42, R43, R40
  %".924" = load float, ptr %"R42"
  %".925" = load float, ptr %"R43"
  %".926" = load float, ptr %"R40"
  %"fmul.23" = fmul float %".924", %".925"
  %"fadd.23" = fadd float %"fmul.23", %".926"
  %".927" = bitcast ptr %"R43" to ptr
  store float %"fadd.23", ptr %".927"
  ; FFMA R18, R44, R18, R43
  %".930" = load float, ptr %"R44"
  %".931" = load float, ptr %"R18"
  %".932" = load float, ptr %"R43"
  %"fmul.24" = fmul float %".930", %".931"
  %"fadd.24" = fadd float %"fmul.24", %".932"
  %".933" = bitcast ptr %"R18" to ptr
  store float %"fadd.24", ptr %".933"
  ; FFMA R14, R35, R44, R14
  %".936" = load float, ptr %"R35"
  %".937" = load float, ptr %"R44"
  %".938" = load float, ptr %"R14"
  %"fmul.25" = fmul float %".936", %".937"
  %"fadd.25" = fadd float %"fmul.25", %".938"
  %".939" = bitcast ptr %"R14" to ptr
  store float %"fadd.25", ptr %".939"
  ; FFMA R18, R46, R49, R18
  %".942" = load float, ptr %"R46"
  %".943" = load float, ptr %"R49"
  %".944" = load float, ptr %"R18"
  %"fmul.26" = fmul float %".942", %".943"
  %"fadd.26" = fadd float %"fmul.26", %".944"
  %".945" = bitcast ptr %"R18" to ptr
  store float %"fadd.26", ptr %".945"
  ; FFMA R14, R15, R46, R14
  %".948" = load float, ptr %"R15"
  %".949" = load float, ptr %"R46"
  %".950" = load float, ptr %"R14"
  %"fmul.27" = fmul float %".948", %".949"
  %"fadd.27" = fadd float %"fmul.27", %".950"
  %".951" = bitcast ptr %"R14" to ptr
  store float %"fadd.27", ptr %".951"
  ; FFMA R13, R13, R48, R14
  %".954" = load float, ptr %"R13"
  %".955" = load float, ptr %"R48"
  %".956" = load float, ptr %"R14"
  %"fmul.28" = fmul float %".954", %".955"
  %"fadd.28" = fadd float %"fmul.28", %".956"
  %".957" = bitcast ptr %"R13" to ptr
  store float %"fadd.28", ptr %".957"
  ; FFMA R37, R48, R37, R18
  %".960" = load float, ptr %"R48"
  %".961" = load float, ptr %"R37"
  %".962" = load float, ptr %"R18"
  %"fmul.29" = fmul float %".960", %".961"
  %"fadd.29" = fadd float %"fmul.29", %".962"
  %".963" = bitcast ptr %"R37" to ptr
  store float %"fadd.29", ptr %".963"
  ; FFMA R52, R45, R50, R13
  %".966" = load float, ptr %"R45"
  %".967" = load float, ptr %"R50"
  %".968" = load float, ptr %"R13"
  %"fmul.30" = fmul float %".966", %".967"
  %"fadd.30" = fadd float %"fmul.30", %".968"
  %".969" = bitcast ptr %"R52" to ptr
  store float %"fadd.30", ptr %".969"
  ; FFMA R54, R50, R34, R37
  %".972" = load float, ptr %"R50"
  %".973" = load float, ptr %"R34"
  %".974" = load float, ptr %"R37"
  %"fmul.31" = fmul float %".972", %".973"
  %"fadd.31" = fadd float %"fmul.31", %".974"
  %".975" = bitcast ptr %"R54" to ptr
  store float %"fadd.31", ptr %".975"
  ; @P1 BRA `(.L_x_5)
  %".978" = load i1, ptr %"P1"
  %".979" = icmp ne i1 %".978", 1
  br i1 %".979", label %".L_x_5", label %".L_x_4"
.L_x_4:
  ; ISETP.GT.AND P1, PT, R9, 0x4, PT
  %".982" = load i32, ptr %"R9"
  %".983" = load i1, ptr %"PT"
  %"cmp.9" = icmp sgt i32 %".982", 4
  %".984" = and i1 %"cmp.9", %".983"
  store i1 %".984", ptr %"P1"
  ; @!P1 BRA `(.L_x_6)
  %".987" = load i1, ptr %"P1"
  %".988" = icmp eq i1 %".987", 1
  br i1 %".988", label %".L_x_6", label %".L_x_4_split_0x0a00"
.L_x_4_split_0x0a00:
  ; IADD3 R13, R0, R11, RZ
  %".991" = load i32, ptr %"R0"
  %".992" = load i32, ptr %"R11"
  %"add.54" = add i32 %".991", %".992"
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R13"
  ; MOV R17, 0x4
  store i32 4, ptr %"R17"
  ; LEA R14, R2.reuse, R13, 0x2
  %".997" = load i32, ptr %"R2"
  %".998" = load i32, ptr %"R13"
  %"shl.51" = shl i32 %".997", 2
  %"add.56" = add i32 %"shl.51", %".998"
  store i32 %"add.56", ptr %"R14"
  ; IMAD R10, R2, 0x3, R13
  %".1001" = load i32, ptr %"R2"
  %".1002" = load i32, ptr %"R13"
  %"mul.21" = mul i32 %".1001", 3
  %"add.57" = add i32 %"mul.21", %".1002"
  store i32 %"add.57", ptr %"R10"
  ; IADD3 R12, R11.reuse, 0x4, RZ
  %".1005" = load i32, ptr %"R11"
  %"add.58" = add i32 %".1005", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R12"
  ; IMAD.WIDE R18, R11, R17.reuse, c[0x0][0x168]
  %".1008" = load i32, ptr %"R11"
  %".1009" = load i32, ptr %"R17"
  %"zext.129" = zext i32 %".1008" to i64
  %"zext.130" = zext i32 %".1009" to i64
  %"mul.22" = mul i64 %"zext.129", %"zext.130"
  %".1010" = ptrtoint ptr %"Arg_1" to i64
  %"add.60" = add i64 %"mul.22", %".1010"
  %".1011" = and i64 %"add.60", 18446744069414584320
  %".1012" = lshr i64 %".1011", 32
  %"trunc32.32" = trunc i64 %".1012" to i32
  %"trunc32.33" = trunc i64 %"add.60" to i32
  store i32 %"trunc32.33", ptr %"R18"
  store i32 %"trunc32.32", ptr %"R19"
  ; IADD3 R16, R14, 0x4, RZ
  %".1016" = load i32, ptr %"R14"
  %"add.61" = add i32 %".1016", 4
  %"add.62" = add i32 %"add.61", 0
  store i32 %"add.62", ptr %"R16"
  ; IADD3 R15, R10.reuse, 0x4, RZ
  %".1019" = load i32, ptr %"R10"
  %"add.63" = add i32 %".1019", 4
  %"add.64" = add i32 %"add.63", 0
  store i32 %"add.64", ptr %"R15"
  ; IMAD.WIDE R22, R10, R17, c[0x0][0x170]
  %".1022" = load i32, ptr %"R10"
  %".1023" = load i32, ptr %"R17"
  %"zext.131" = zext i32 %".1022" to i64
  %"zext.132" = zext i32 %".1023" to i64
  %"mul.23" = mul i64 %"zext.131", %"zext.132"
  %".1024" = ptrtoint ptr %"Arg_2" to i64
  %"add.65" = add i64 %"mul.23", %".1024"
  %".1025" = and i64 %"add.65", 18446744069414584320
  %".1026" = lshr i64 %".1025", 32
  %"trunc32.34" = trunc i64 %".1026" to i32
  %"trunc32.35" = trunc i64 %"add.65" to i32
  store i32 %"trunc32.35", ptr %"R22"
  store i32 %"trunc32.34", ptr %"R23"
  ; IMAD.WIDE R20, R14, R17.reuse, c[0x0][0x170]
  %".1030" = load i32, ptr %"R14"
  %".1031" = load i32, ptr %"R17"
  %"zext.133" = zext i32 %".1030" to i64
  %"zext.134" = zext i32 %".1031" to i64
  %"mul.24" = mul i64 %"zext.133", %"zext.134"
  %".1032" = ptrtoint ptr %"Arg_2" to i64
  %"add.66" = add i64 %"mul.24", %".1032"
  %".1033" = and i64 %"add.66", 18446744069414584320
  %".1034" = lshr i64 %".1033", 32
  %"trunc32.36" = trunc i64 %".1034" to i32
  %"trunc32.37" = trunc i64 %"add.66" to i32
  store i32 %"trunc32.37", ptr %"R20"
  store i32 %"trunc32.36", ptr %"R21"
  ; LDG.E.SYS R39, [R18]
  %".1038" = load i32, ptr %"R18"
  %"zext.135" = zext i32 %".1038" to i64
  %".1039" = load i32, ptr %"R19"
  %"zext.136" = zext i32 %".1039" to i64
  %"shl.52" = shl i64 %"zext.136", 32
  %"or.48" = or i64 %"shl.52", %"zext.135"
  %".1040" = inttoptr i64 %"or.48" to ptr
  %".1041" = ptrtoint ptr %".1040" to i64
  %".1042" = add i64 %".1041", 0
  %"for_LDG.48" = inttoptr i64 %".1042" to ptr
  %".1043" = load float, ptr %"for_LDG.48"
  %".1044" = bitcast ptr %"R39" to ptr
  store float %".1043", ptr %".1044"
  ; IMAD.WIDE R12, R12, R17.reuse, c[0x0][0x168]
  %".1047" = load i32, ptr %"R12"
  %".1048" = load i32, ptr %"R17"
  %"zext.137" = zext i32 %".1047" to i64
  %"zext.138" = zext i32 %".1048" to i64
  %"mul.25" = mul i64 %"zext.137", %"zext.138"
  %".1049" = ptrtoint ptr %"Arg_1" to i64
  %"add.67" = add i64 %"mul.25", %".1049"
  %".1050" = and i64 %"add.67", 18446744069414584320
  %".1051" = lshr i64 %".1050", 32
  %"trunc32.38" = trunc i64 %".1051" to i32
  %"trunc32.39" = trunc i64 %"add.67" to i32
  store i32 %"trunc32.39", ptr %"R12"
  store i32 %"trunc32.38", ptr %"R13"
  ; LDG.E.SYS R37, [R22]
  %".1055" = load i32, ptr %"R22"
  %"zext.139" = zext i32 %".1055" to i64
  %".1056" = load i32, ptr %"R23"
  %"zext.140" = zext i32 %".1056" to i64
  %"shl.53" = shl i64 %"zext.140", 32
  %"or.49" = or i64 %"shl.53", %"zext.139"
  %".1057" = inttoptr i64 %"or.49" to ptr
  %".1058" = ptrtoint ptr %".1057" to i64
  %".1059" = add i64 %".1058", 0
  %"for_LDG.49" = inttoptr i64 %".1059" to ptr
  %".1060" = load float, ptr %"for_LDG.49"
  %".1061" = bitcast ptr %"R37" to ptr
  store float %".1060", ptr %".1061"
  ; LDG.E.SYS R36, [R20]
  %".1064" = load i32, ptr %"R20"
  %"zext.141" = zext i32 %".1064" to i64
  %".1065" = load i32, ptr %"R21"
  %"zext.142" = zext i32 %".1065" to i64
  %"shl.54" = shl i64 %"zext.142", 32
  %"or.50" = or i64 %"shl.54", %"zext.141"
  %".1066" = inttoptr i64 %"or.50" to ptr
  %".1067" = ptrtoint ptr %".1066" to i64
  %".1068" = add i64 %".1067", 0
  %"for_LDG.50" = inttoptr i64 %".1068" to ptr
  %".1069" = load float, ptr %"for_LDG.50"
  %".1070" = bitcast ptr %"R36" to ptr
  store float %".1069", ptr %".1070"
  ; IMAD.WIDE R14, R15, R17, c[0x0][0x170]
  %".1073" = load i32, ptr %"R15"
  %".1074" = load i32, ptr %"R17"
  %"zext.143" = zext i32 %".1073" to i64
  %"zext.144" = zext i32 %".1074" to i64
  %"mul.26" = mul i64 %"zext.143", %"zext.144"
  %".1075" = ptrtoint ptr %"Arg_2" to i64
  %"add.68" = add i64 %"mul.26", %".1075"
  %".1076" = and i64 %"add.68", 18446744069414584320
  %".1077" = lshr i64 %".1076", 32
  %"trunc32.40" = trunc i64 %".1077" to i32
  %"trunc32.41" = trunc i64 %"add.68" to i32
  store i32 %"trunc32.41", ptr %"R14"
  store i32 %"trunc32.40", ptr %"R15"
  ; LDG.E.SYS R34, [R18+0x4]
  %".1081" = load i32, ptr %"R18"
  %"zext.145" = zext i32 %".1081" to i64
  %".1082" = load i32, ptr %"R19"
  %"zext.146" = zext i32 %".1082" to i64
  %"shl.55" = shl i64 %"zext.146", 32
  %"or.51" = or i64 %"shl.55", %"zext.145"
  %".1083" = inttoptr i64 %"or.51" to ptr
  %".1084" = ptrtoint ptr %".1083" to i64
  %".1085" = add i64 %".1084", 4
  %"for_LDG.51" = inttoptr i64 %".1085" to ptr
  %".1086" = load float, ptr %"for_LDG.51"
  %".1087" = bitcast ptr %"R34" to ptr
  store float %".1086", ptr %".1087"
  ; LDG.E.SYS R38, [R22+0x4]
  %".1090" = load i32, ptr %"R22"
  %"zext.147" = zext i32 %".1090" to i64
  %".1091" = load i32, ptr %"R23"
  %"zext.148" = zext i32 %".1091" to i64
  %"shl.56" = shl i64 %"zext.148", 32
  %"or.52" = or i64 %"shl.56", %"zext.147"
  %".1092" = inttoptr i64 %"or.52" to ptr
  %".1093" = ptrtoint ptr %".1092" to i64
  %".1094" = add i64 %".1093", 4
  %"for_LDG.52" = inttoptr i64 %".1094" to ptr
  %".1095" = load float, ptr %"for_LDG.52"
  %".1096" = bitcast ptr %"R38" to ptr
  store float %".1095", ptr %".1096"
  ; LDG.E.SYS R35, [R20+0x4]
  %".1099" = load i32, ptr %"R20"
  %"zext.149" = zext i32 %".1099" to i64
  %".1100" = load i32, ptr %"R21"
  %"zext.150" = zext i32 %".1100" to i64
  %"shl.57" = shl i64 %"zext.150", 32
  %"or.53" = or i64 %"shl.57", %"zext.149"
  %".1101" = inttoptr i64 %"or.53" to ptr
  %".1102" = ptrtoint ptr %".1101" to i64
  %".1103" = add i64 %".1102", 4
  %"for_LDG.53" = inttoptr i64 %".1103" to ptr
  %".1104" = load float, ptr %"for_LDG.53"
  %".1105" = bitcast ptr %"R35" to ptr
  store float %".1104", ptr %".1105"
  ; IMAD.WIDE R16, R16, R17, c[0x0][0x170]
  %".1108" = load i32, ptr %"R16"
  %".1109" = load i32, ptr %"R17"
  %"zext.151" = zext i32 %".1108" to i64
  %"zext.152" = zext i32 %".1109" to i64
  %"mul.27" = mul i64 %"zext.151", %"zext.152"
  %".1110" = ptrtoint ptr %"Arg_2" to i64
  %"add.69" = add i64 %"mul.27", %".1110"
  %".1111" = and i64 %"add.69", 18446744069414584320
  %".1112" = lshr i64 %".1111", 32
  %"trunc32.42" = trunc i64 %".1112" to i32
  %"trunc32.43" = trunc i64 %"add.69" to i32
  store i32 %"trunc32.43", ptr %"R16"
  store i32 %"trunc32.42", ptr %"R17"
  ; LDG.E.SYS R24, [R18+0x8]
  %".1116" = load i32, ptr %"R18"
  %"zext.153" = zext i32 %".1116" to i64
  %".1117" = load i32, ptr %"R19"
  %"zext.154" = zext i32 %".1117" to i64
  %"shl.58" = shl i64 %"zext.154", 32
  %"or.54" = or i64 %"shl.58", %"zext.153"
  %".1118" = inttoptr i64 %"or.54" to ptr
  %".1119" = ptrtoint ptr %".1118" to i64
  %".1120" = add i64 %".1119", 8
  %"for_LDG.54" = inttoptr i64 %".1120" to ptr
  %".1121" = load float, ptr %"for_LDG.54"
  %".1122" = bitcast ptr %"R24" to ptr
  store float %".1121", ptr %".1122"
  ; LDG.E.SYS R40, [R22+0x8]
  %".1125" = load i32, ptr %"R22"
  %"zext.155" = zext i32 %".1125" to i64
  %".1126" = load i32, ptr %"R23"
  %"zext.156" = zext i32 %".1126" to i64
  %"shl.59" = shl i64 %"zext.156", 32
  %"or.55" = or i64 %"shl.59", %"zext.155"
  %".1127" = inttoptr i64 %"or.55" to ptr
  %".1128" = ptrtoint ptr %".1127" to i64
  %".1129" = add i64 %".1128", 8
  %"for_LDG.55" = inttoptr i64 %".1129" to ptr
  %".1130" = load float, ptr %"for_LDG.55"
  %".1131" = bitcast ptr %"R40" to ptr
  store float %".1130", ptr %".1131"
  ; LDG.E.SYS R41, [R20+0x8]
  %".1134" = load i32, ptr %"R20"
  %"zext.157" = zext i32 %".1134" to i64
  %".1135" = load i32, ptr %"R21"
  %"zext.158" = zext i32 %".1135" to i64
  %"shl.60" = shl i64 %"zext.158", 32
  %"or.56" = or i64 %"shl.60", %"zext.157"
  %".1136" = inttoptr i64 %"or.56" to ptr
  %".1137" = ptrtoint ptr %".1136" to i64
  %".1138" = add i64 %".1137", 8
  %"for_LDG.56" = inttoptr i64 %".1138" to ptr
  %".1139" = load float, ptr %"for_LDG.56"
  %".1140" = bitcast ptr %"R41" to ptr
  store float %".1139", ptr %".1140"
  ; LDG.E.SYS R44, [R18+0xc]
  %".1143" = load i32, ptr %"R18"
  %"zext.159" = zext i32 %".1143" to i64
  %".1144" = load i32, ptr %"R19"
  %"zext.160" = zext i32 %".1144" to i64
  %"shl.61" = shl i64 %"zext.160", 32
  %"or.57" = or i64 %"shl.61", %"zext.159"
  %".1145" = inttoptr i64 %"or.57" to ptr
  %".1146" = ptrtoint ptr %".1145" to i64
  %".1147" = add i64 %".1146", 12
  %"for_LDG.57" = inttoptr i64 %".1147" to ptr
  %".1148" = load float, ptr %"for_LDG.57"
  %".1149" = bitcast ptr %"R44" to ptr
  store float %".1148", ptr %".1149"
  ; LDG.E.SYS R42, [R22+0xc]
  %".1152" = load i32, ptr %"R22"
  %"zext.161" = zext i32 %".1152" to i64
  %".1153" = load i32, ptr %"R23"
  %"zext.162" = zext i32 %".1153" to i64
  %"shl.62" = shl i64 %"zext.162", 32
  %"or.58" = or i64 %"shl.62", %"zext.161"
  %".1154" = inttoptr i64 %"or.58" to ptr
  %".1155" = ptrtoint ptr %".1154" to i64
  %".1156" = add i64 %".1155", 12
  %"for_LDG.58" = inttoptr i64 %".1156" to ptr
  %".1157" = load float, ptr %"for_LDG.58"
  %".1158" = bitcast ptr %"R42" to ptr
  store float %".1157", ptr %".1158"
  ; LDG.E.SYS R43, [R20+0xc]
  %".1161" = load i32, ptr %"R20"
  %"zext.163" = zext i32 %".1161" to i64
  %".1162" = load i32, ptr %"R21"
  %"zext.164" = zext i32 %".1162" to i64
  %"shl.63" = shl i64 %"zext.164", 32
  %"or.59" = or i64 %"shl.63", %"zext.163"
  %".1163" = inttoptr i64 %"or.59" to ptr
  %".1164" = ptrtoint ptr %".1163" to i64
  %".1165" = add i64 %".1164", 12
  %"for_LDG.59" = inttoptr i64 %".1165" to ptr
  %".1166" = load float, ptr %"for_LDG.59"
  %".1167" = bitcast ptr %"R43" to ptr
  store float %".1166", ptr %".1167"
  ; LDG.E.SYS R48, [R12]
  %".1170" = load i32, ptr %"R12"
  %"zext.165" = zext i32 %".1170" to i64
  %".1171" = load i32, ptr %"R13"
  %"zext.166" = zext i32 %".1171" to i64
  %"shl.64" = shl i64 %"zext.166", 32
  %"or.60" = or i64 %"shl.64", %"zext.165"
  %".1172" = inttoptr i64 %"or.60" to ptr
  %".1173" = ptrtoint ptr %".1172" to i64
  %".1174" = add i64 %".1173", 0
  %"for_LDG.60" = inttoptr i64 %".1174" to ptr
  %".1175" = load float, ptr %"for_LDG.60"
  %".1176" = bitcast ptr %"R48" to ptr
  store float %".1175", ptr %".1176"
  ; LDG.E.SYS R46, [R14]
  %".1179" = load i32, ptr %"R14"
  %"zext.167" = zext i32 %".1179" to i64
  %".1180" = load i32, ptr %"R15"
  %"zext.168" = zext i32 %".1180" to i64
  %"shl.65" = shl i64 %"zext.168", 32
  %"or.61" = or i64 %"shl.65", %"zext.167"
  %".1181" = inttoptr i64 %"or.61" to ptr
  %".1182" = ptrtoint ptr %".1181" to i64
  %".1183" = add i64 %".1182", 0
  %"for_LDG.61" = inttoptr i64 %".1183" to ptr
  %".1184" = load float, ptr %"for_LDG.61"
  %".1185" = bitcast ptr %"R46" to ptr
  store float %".1184", ptr %".1185"
  ; LDG.E.SYS R45, [R16]
  %".1188" = load i32, ptr %"R16"
  %"zext.169" = zext i32 %".1188" to i64
  %".1189" = load i32, ptr %"R17"
  %"zext.170" = zext i32 %".1189" to i64
  %"shl.66" = shl i64 %"zext.170", 32
  %"or.62" = or i64 %"shl.66", %"zext.169"
  %".1190" = inttoptr i64 %"or.62" to ptr
  %".1191" = ptrtoint ptr %".1190" to i64
  %".1192" = add i64 %".1191", 0
  %"for_LDG.62" = inttoptr i64 %".1192" to ptr
  %".1193" = load float, ptr %"for_LDG.62"
  %".1194" = bitcast ptr %"R45" to ptr
  store float %".1193", ptr %".1194"
  ; LDG.E.SYS R56, [R12+0x4]
  %".1197" = load i32, ptr %"R12"
  %"zext.171" = zext i32 %".1197" to i64
  %".1198" = load i32, ptr %"R13"
  %"zext.172" = zext i32 %".1198" to i64
  %"shl.67" = shl i64 %"zext.172", 32
  %"or.63" = or i64 %"shl.67", %"zext.171"
  %".1199" = inttoptr i64 %"or.63" to ptr
  %".1200" = ptrtoint ptr %".1199" to i64
  %".1201" = add i64 %".1200", 4
  %"for_LDG.63" = inttoptr i64 %".1201" to ptr
  %".1202" = load float, ptr %"for_LDG.63"
  %".1203" = bitcast ptr %"R56" to ptr
  store float %".1202", ptr %".1203"
  ; LDG.E.SYS R50, [R14+0x4]
  %".1206" = load i32, ptr %"R14"
  %"zext.173" = zext i32 %".1206" to i64
  %".1207" = load i32, ptr %"R15"
  %"zext.174" = zext i32 %".1207" to i64
  %"shl.68" = shl i64 %"zext.174", 32
  %"or.64" = or i64 %"shl.68", %"zext.173"
  %".1208" = inttoptr i64 %"or.64" to ptr
  %".1209" = ptrtoint ptr %".1208" to i64
  %".1210" = add i64 %".1209", 4
  %"for_LDG.64" = inttoptr i64 %".1210" to ptr
  %".1211" = load float, ptr %"for_LDG.64"
  %".1212" = bitcast ptr %"R50" to ptr
  store float %".1211", ptr %".1212"
  ; LDG.E.SYS R47, [R16+0x4]
  %".1215" = load i32, ptr %"R16"
  %"zext.175" = zext i32 %".1215" to i64
  %".1216" = load i32, ptr %"R17"
  %"zext.176" = zext i32 %".1216" to i64
  %"shl.69" = shl i64 %"zext.176", 32
  %"or.65" = or i64 %"shl.69", %"zext.175"
  %".1217" = inttoptr i64 %"or.65" to ptr
  %".1218" = ptrtoint ptr %".1217" to i64
  %".1219" = add i64 %".1218", 4
  %"for_LDG.65" = inttoptr i64 %".1219" to ptr
  %".1220" = load float, ptr %"for_LDG.65"
  %".1221" = bitcast ptr %"R47" to ptr
  store float %".1220", ptr %".1221"
  ; LDG.E.SYS R10, [R12+0x8]
  %".1224" = load i32, ptr %"R12"
  %"zext.177" = zext i32 %".1224" to i64
  %".1225" = load i32, ptr %"R13"
  %"zext.178" = zext i32 %".1225" to i64
  %"shl.70" = shl i64 %"zext.178", 32
  %"or.66" = or i64 %"shl.70", %"zext.177"
  %".1226" = inttoptr i64 %"or.66" to ptr
  %".1227" = ptrtoint ptr %".1226" to i64
  %".1228" = add i64 %".1227", 8
  %"for_LDG.66" = inttoptr i64 %".1228" to ptr
  %".1229" = load float, ptr %"for_LDG.66"
  %".1230" = bitcast ptr %"R10" to ptr
  store float %".1229", ptr %".1230"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1233" = load i32, ptr %"R14"
  %"zext.179" = zext i32 %".1233" to i64
  %".1234" = load i32, ptr %"R15"
  %"zext.180" = zext i32 %".1234" to i64
  %"shl.71" = shl i64 %"zext.180", 32
  %"or.67" = or i64 %"shl.71", %"zext.179"
  %".1235" = inttoptr i64 %"or.67" to ptr
  %".1236" = ptrtoint ptr %".1235" to i64
  %".1237" = add i64 %".1236", 8
  %"for_LDG.67" = inttoptr i64 %".1237" to ptr
  %".1238" = load float, ptr %"for_LDG.67"
  %".1239" = bitcast ptr %"R25" to ptr
  store float %".1238", ptr %".1239"
  ; LDG.E.SYS R19, [R16+0x8]
  %".1242" = load i32, ptr %"R16"
  %"zext.181" = zext i32 %".1242" to i64
  %".1243" = load i32, ptr %"R17"
  %"zext.182" = zext i32 %".1243" to i64
  %"shl.72" = shl i64 %"zext.182", 32
  %"or.68" = or i64 %"shl.72", %"zext.181"
  %".1244" = inttoptr i64 %"or.68" to ptr
  %".1245" = ptrtoint ptr %".1244" to i64
  %".1246" = add i64 %".1245", 8
  %"for_LDG.68" = inttoptr i64 %".1246" to ptr
  %".1247" = load float, ptr %"for_LDG.68"
  %".1248" = bitcast ptr %"R19" to ptr
  store float %".1247", ptr %".1248"
  ; LDG.E.SYS R18, [R12+0xc]
  %".1251" = load i32, ptr %"R12"
  %"zext.183" = zext i32 %".1251" to i64
  %".1252" = load i32, ptr %"R13"
  %"zext.184" = zext i32 %".1252" to i64
  %"shl.73" = shl i64 %"zext.184", 32
  %"or.69" = or i64 %"shl.73", %"zext.183"
  %".1253" = inttoptr i64 %"or.69" to ptr
  %".1254" = ptrtoint ptr %".1253" to i64
  %".1255" = add i64 %".1254", 12
  %"for_LDG.69" = inttoptr i64 %".1255" to ptr
  %".1256" = load float, ptr %"for_LDG.69"
  %".1257" = bitcast ptr %"R18" to ptr
  store float %".1256", ptr %".1257"
  ; LDG.E.SYS R20, [R14+0xc]
  %".1260" = load i32, ptr %"R14"
  %"zext.185" = zext i32 %".1260" to i64
  %".1261" = load i32, ptr %"R15"
  %"zext.186" = zext i32 %".1261" to i64
  %"shl.74" = shl i64 %"zext.186", 32
  %"or.70" = or i64 %"shl.74", %"zext.185"
  %".1262" = inttoptr i64 %"or.70" to ptr
  %".1263" = ptrtoint ptr %".1262" to i64
  %".1264" = add i64 %".1263", 12
  %"for_LDG.70" = inttoptr i64 %".1264" to ptr
  %".1265" = load float, ptr %"for_LDG.70"
  %".1266" = bitcast ptr %"R20" to ptr
  store float %".1265", ptr %".1266"
  ; LDG.E.SYS R21, [R16+0xc]
  %".1269" = load i32, ptr %"R16"
  %"zext.187" = zext i32 %".1269" to i64
  %".1270" = load i32, ptr %"R17"
  %"zext.188" = zext i32 %".1270" to i64
  %"shl.75" = shl i64 %"zext.188", 32
  %"or.71" = or i64 %"shl.75", %"zext.187"
  %".1271" = inttoptr i64 %"or.71" to ptr
  %".1272" = ptrtoint ptr %".1271" to i64
  %".1273" = add i64 %".1272", 12
  %"for_LDG.71" = inttoptr i64 %".1273" to ptr
  %".1274" = load float, ptr %"for_LDG.71"
  %".1275" = bitcast ptr %"R21" to ptr
  store float %".1274", ptr %".1275"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1278" = xor i1 1, 1
  %".1279" = and i1 %".1278", 1
  %".1280" = and i1 %".1279", 1
  ; IADD3 R9, R9, -0x8, RZ
  %".1282" = load i32, ptr %"R9"
  %"add.70" = add i32 %".1282", -8
  %"add.71" = add i32 %"add.70", 0
  store i32 %"add.71", ptr %"R9"
  ; IADD3 R11, R11, 0x8, RZ
  %".1285" = load i32, ptr %"R11"
  %"add.72" = add i32 %".1285", 8
  %"add.73" = add i32 %"add.72", 0
  store i32 %"add.73", ptr %"R11"
  ; FFMA R37, R37, R39, R52
  %".1288" = load float, ptr %"R37"
  %".1289" = load float, ptr %"R39"
  %".1290" = load float, ptr %"R52"
  %"fmul.32" = fmul float %".1288", %".1289"
  %"fadd.32" = fadd float %"fmul.32", %".1290"
  %".1291" = bitcast ptr %"R37" to ptr
  store float %"fadd.32", ptr %".1291"
  ; FFMA R36, R39, R36, R54
  %".1294" = load float, ptr %"R39"
  %".1295" = load float, ptr %"R36"
  %".1296" = load float, ptr %"R54"
  %"fmul.33" = fmul float %".1294", %".1295"
  %"fadd.33" = fadd float %"fmul.33", %".1296"
  %".1297" = bitcast ptr %"R36" to ptr
  store float %"fadd.33", ptr %".1297"
  ; FFMA R37, R38, R34, R37
  %".1300" = load float, ptr %"R38"
  %".1301" = load float, ptr %"R34"
  %".1302" = load float, ptr %"R37"
  %"fmul.34" = fmul float %".1300", %".1301"
  %"fadd.34" = fadd float %"fmul.34", %".1302"
  %".1303" = bitcast ptr %"R37" to ptr
  store float %"fadd.34", ptr %".1303"
  ; FFMA R35, R34, R35, R36
  %".1306" = load float, ptr %"R34"
  %".1307" = load float, ptr %"R35"
  %".1308" = load float, ptr %"R36"
  %"fmul.35" = fmul float %".1306", %".1307"
  %"fadd.35" = fadd float %"fmul.35", %".1308"
  %".1309" = bitcast ptr %"R35" to ptr
  store float %"fadd.35", ptr %".1309"
  ; FFMA R37, R40, R24, R37
  %".1312" = load float, ptr %"R40"
  %".1313" = load float, ptr %"R24"
  %".1314" = load float, ptr %"R37"
  %"fmul.36" = fmul float %".1312", %".1313"
  %"fadd.36" = fadd float %"fmul.36", %".1314"
  %".1315" = bitcast ptr %"R37" to ptr
  store float %"fadd.36", ptr %".1315"
  ; FFMA R35, R24, R41, R35
  %".1318" = load float, ptr %"R24"
  %".1319" = load float, ptr %"R41"
  %".1320" = load float, ptr %"R35"
  %"fmul.37" = fmul float %".1318", %".1319"
  %"fadd.37" = fadd float %"fmul.37", %".1320"
  %".1321" = bitcast ptr %"R35" to ptr
  store float %"fadd.37", ptr %".1321"
  ; FFMA R37, R42, R44, R37
  %".1324" = load float, ptr %"R42"
  %".1325" = load float, ptr %"R44"
  %".1326" = load float, ptr %"R37"
  %"fmul.38" = fmul float %".1324", %".1325"
  %"fadd.38" = fadd float %"fmul.38", %".1326"
  %".1327" = bitcast ptr %"R37" to ptr
  store float %"fadd.38", ptr %".1327"
  ; FFMA R35, R44, R43, R35
  %".1330" = load float, ptr %"R44"
  %".1331" = load float, ptr %"R43"
  %".1332" = load float, ptr %"R35"
  %"fmul.39" = fmul float %".1330", %".1331"
  %"fadd.39" = fadd float %"fmul.39", %".1332"
  %".1333" = bitcast ptr %"R35" to ptr
  store float %"fadd.39", ptr %".1333"
  ; FFMA R37, R46, R48, R37
  %".1336" = load float, ptr %"R46"
  %".1337" = load float, ptr %"R48"
  %".1338" = load float, ptr %"R37"
  %"fmul.40" = fmul float %".1336", %".1337"
  %"fadd.40" = fadd float %"fmul.40", %".1338"
  %".1339" = bitcast ptr %"R37" to ptr
  store float %"fadd.40", ptr %".1339"
  ; FFMA R35, R48, R45, R35
  %".1342" = load float, ptr %"R48"
  %".1343" = load float, ptr %"R45"
  %".1344" = load float, ptr %"R35"
  %"fmul.41" = fmul float %".1342", %".1343"
  %"fadd.41" = fadd float %"fmul.41", %".1344"
  %".1345" = bitcast ptr %"R35" to ptr
  store float %"fadd.41", ptr %".1345"
  ; FFMA R37, R50, R56, R37
  %".1348" = load float, ptr %"R50"
  %".1349" = load float, ptr %"R56"
  %".1350" = load float, ptr %"R37"
  %"fmul.42" = fmul float %".1348", %".1349"
  %"fadd.42" = fadd float %"fmul.42", %".1350"
  %".1351" = bitcast ptr %"R37" to ptr
  store float %"fadd.42", ptr %".1351"
  ; FFMA R35, R56, R47, R35
  %".1354" = load float, ptr %"R56"
  %".1355" = load float, ptr %"R47"
  %".1356" = load float, ptr %"R35"
  %"fmul.43" = fmul float %".1354", %".1355"
  %"fadd.43" = fadd float %"fmul.43", %".1356"
  %".1357" = bitcast ptr %"R35" to ptr
  store float %"fadd.43", ptr %".1357"
  ; FFMA R25, R25, R10, R37
  %".1360" = load float, ptr %"R25"
  %".1361" = load float, ptr %"R10"
  %".1362" = load float, ptr %"R37"
  %"fmul.44" = fmul float %".1360", %".1361"
  %"fadd.44" = fadd float %"fmul.44", %".1362"
  %".1363" = bitcast ptr %"R25" to ptr
  store float %"fadd.44", ptr %".1363"
  ; FFMA R19, R10, R19, R35
  %".1366" = load float, ptr %"R10"
  %".1367" = load float, ptr %"R19"
  %".1368" = load float, ptr %"R35"
  %"fmul.45" = fmul float %".1366", %".1367"
  %"fadd.45" = fadd float %"fmul.45", %".1368"
  %".1369" = bitcast ptr %"R19" to ptr
  store float %"fadd.45", ptr %".1369"
  ; FFMA R52, R20, R18, R25
  %".1372" = load float, ptr %"R20"
  %".1373" = load float, ptr %"R18"
  %".1374" = load float, ptr %"R25"
  %"fmul.46" = fmul float %".1372", %".1373"
  %"fadd.46" = fadd float %"fmul.46", %".1374"
  %".1375" = bitcast ptr %"R52" to ptr
  store float %"fadd.46", ptr %".1375"
  ; FFMA R54, R18, R21, R19
  %".1378" = load float, ptr %"R18"
  %".1379" = load float, ptr %"R21"
  %".1380" = load float, ptr %"R19"
  %"fmul.47" = fmul float %".1378", %".1379"
  %"fadd.47" = fadd float %"fmul.47", %".1380"
  %".1381" = bitcast ptr %"R54" to ptr
  store float %"fadd.47", ptr %".1381"
  br label %".L_x_6"
.L_x_6:
  ; ISETP.NE.OR P0, PT, R9, RZ, P0
  %".1385" = load i32, ptr %"R9"
  %".1386" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".1385", 0
  %".1387" = or i1 %"cmp.10", %".1386"
  store i1 %".1387", ptr %"P0"
  ; @!P0 BRA `(.L_x_2)
  %".1390" = load i1, ptr %"P0"
  %".1391" = icmp eq i1 %".1390", 1
  br i1 %".1391", label %".L_x_2", label %".L_x_3"
.L_x_3:
  ; IADD3 R13, R0, R11, RZ
  %".1394" = load i32, ptr %"R0"
  %".1395" = load i32, ptr %"R11"
  %"add.74" = add i32 %".1394", %".1395"
  %"add.75" = add i32 %"add.74", 0
  store i32 %"add.75", ptr %"R13"
  ; MOV R16, 0x4
  store i32 4, ptr %"R16"
  ; LEA R17, R2.reuse, R13, 0x2
  %".1400" = load i32, ptr %"R2"
  %".1401" = load i32, ptr %"R13"
  %"shl.76" = shl i32 %".1400", 2
  %"add.76" = add i32 %"shl.76", %".1401"
  store i32 %"add.76", ptr %"R17"
  ; IMAD R15, R2, 0x3, R13
  %".1404" = load i32, ptr %"R2"
  %".1405" = load i32, ptr %"R13"
  %"mul.28" = mul i32 %".1404", 3
  %"add.77" = add i32 %"mul.28", %".1405"
  store i32 %"add.77", ptr %"R15"
  ; IMAD.WIDE R12, R11, R16, c[0x0][0x168]
  %".1408" = load i32, ptr %"R11"
  %".1409" = load i32, ptr %"R16"
  %"zext.189" = zext i32 %".1408" to i64
  %"zext.190" = zext i32 %".1409" to i64
  %"mul.29" = mul i64 %"zext.189", %"zext.190"
  %".1410" = ptrtoint ptr %"Arg_1" to i64
  %"add.78" = add i64 %"mul.29", %".1410"
  %".1411" = and i64 %"add.78", 18446744069414584320
  %".1412" = lshr i64 %".1411", 32
  %"trunc32.44" = trunc i64 %".1412" to i32
  %"trunc32.45" = trunc i64 %"add.78" to i32
  store i32 %"trunc32.45", ptr %"R12"
  store i32 %"trunc32.44", ptr %"R13"
  ; IMAD.WIDE R14, R15, R16, c[0x0][0x170]
  %".1416" = load i32, ptr %"R15"
  %".1417" = load i32, ptr %"R16"
  %"zext.191" = zext i32 %".1416" to i64
  %"zext.192" = zext i32 %".1417" to i64
  %"mul.30" = mul i64 %"zext.191", %"zext.192"
  %".1418" = ptrtoint ptr %"Arg_2" to i64
  %"add.79" = add i64 %"mul.30", %".1418"
  %".1419" = and i64 %"add.79", 18446744069414584320
  %".1420" = lshr i64 %".1419", 32
  %"trunc32.46" = trunc i64 %".1420" to i32
  %"trunc32.47" = trunc i64 %"add.79" to i32
  store i32 %"trunc32.47", ptr %"R14"
  store i32 %"trunc32.46", ptr %"R15"
  ; IMAD.WIDE R16, R17, R16, c[0x0][0x170]
  %".1424" = load i32, ptr %"R17"
  %".1425" = load i32, ptr %"R16"
  %"zext.193" = zext i32 %".1424" to i64
  %"zext.194" = zext i32 %".1425" to i64
  %"mul.31" = mul i64 %"zext.193", %"zext.194"
  %".1426" = ptrtoint ptr %"Arg_2" to i64
  %"add.80" = add i64 %"mul.31", %".1426"
  %".1427" = and i64 %"add.80", 18446744069414584320
  %".1428" = lshr i64 %".1427", 32
  %"trunc32.48" = trunc i64 %".1428" to i32
  %"trunc32.49" = trunc i64 %"add.80" to i32
  store i32 %"trunc32.49", ptr %"R16"
  store i32 %"trunc32.48", ptr %"R17"
  ; LDG.E.SYS R21, [R12]
  %".1432" = load i32, ptr %"R12"
  %"zext.195" = zext i32 %".1432" to i64
  %".1433" = load i32, ptr %"R13"
  %"zext.196" = zext i32 %".1433" to i64
  %"shl.77" = shl i64 %"zext.196", 32
  %"or.72" = or i64 %"shl.77", %"zext.195"
  %".1434" = inttoptr i64 %"or.72" to ptr
  %".1435" = ptrtoint ptr %".1434" to i64
  %".1436" = add i64 %".1435", 0
  %"for_LDG.72" = inttoptr i64 %".1436" to ptr
  %".1437" = load float, ptr %"for_LDG.72"
  %".1438" = bitcast ptr %"R21" to ptr
  store float %".1437", ptr %".1438"
  ; LDG.E.SYS R19, [R14]
  %".1441" = load i32, ptr %"R14"
  %"zext.197" = zext i32 %".1441" to i64
  %".1442" = load i32, ptr %"R15"
  %"zext.198" = zext i32 %".1442" to i64
  %"shl.78" = shl i64 %"zext.198", 32
  %"or.73" = or i64 %"shl.78", %"zext.197"
  %".1443" = inttoptr i64 %"or.73" to ptr
  %".1444" = ptrtoint ptr %".1443" to i64
  %".1445" = add i64 %".1444", 0
  %"for_LDG.73" = inttoptr i64 %".1445" to ptr
  %".1446" = load float, ptr %"for_LDG.73"
  %".1447" = bitcast ptr %"R19" to ptr
  store float %".1446", ptr %".1447"
  ; LDG.E.SYS R10, [R16]
  %".1450" = load i32, ptr %"R16"
  %"zext.199" = zext i32 %".1450" to i64
  %".1451" = load i32, ptr %"R17"
  %"zext.200" = zext i32 %".1451" to i64
  %"shl.79" = shl i64 %"zext.200", 32
  %"or.74" = or i64 %"shl.79", %"zext.199"
  %".1452" = inttoptr i64 %"or.74" to ptr
  %".1453" = ptrtoint ptr %".1452" to i64
  %".1454" = add i64 %".1453", 0
  %"for_LDG.74" = inttoptr i64 %".1454" to ptr
  %".1455" = load float, ptr %"for_LDG.74"
  %".1456" = bitcast ptr %"R10" to ptr
  store float %".1455", ptr %".1456"
  ; LDG.E.SYS R23, [R12+0x4]
  %".1459" = load i32, ptr %"R12"
  %"zext.201" = zext i32 %".1459" to i64
  %".1460" = load i32, ptr %"R13"
  %"zext.202" = zext i32 %".1460" to i64
  %"shl.80" = shl i64 %"zext.202", 32
  %"or.75" = or i64 %"shl.80", %"zext.201"
  %".1461" = inttoptr i64 %"or.75" to ptr
  %".1462" = ptrtoint ptr %".1461" to i64
  %".1463" = add i64 %".1462", 4
  %"for_LDG.75" = inttoptr i64 %".1463" to ptr
  %".1464" = load float, ptr %"for_LDG.75"
  %".1465" = bitcast ptr %"R23" to ptr
  store float %".1464", ptr %".1465"
  ; LDG.E.SYS R18, [R14+0x4]
  %".1468" = load i32, ptr %"R14"
  %"zext.203" = zext i32 %".1468" to i64
  %".1469" = load i32, ptr %"R15"
  %"zext.204" = zext i32 %".1469" to i64
  %"shl.81" = shl i64 %"zext.204", 32
  %"or.76" = or i64 %"shl.81", %"zext.203"
  %".1470" = inttoptr i64 %"or.76" to ptr
  %".1471" = ptrtoint ptr %".1470" to i64
  %".1472" = add i64 %".1471", 4
  %"for_LDG.76" = inttoptr i64 %".1472" to ptr
  %".1473" = load float, ptr %"for_LDG.76"
  %".1474" = bitcast ptr %"R18" to ptr
  store float %".1473", ptr %".1474"
  ; LDG.E.SYS R20, [R16+0x4]
  %".1477" = load i32, ptr %"R16"
  %"zext.205" = zext i32 %".1477" to i64
  %".1478" = load i32, ptr %"R17"
  %"zext.206" = zext i32 %".1478" to i64
  %"shl.82" = shl i64 %"zext.206", 32
  %"or.77" = or i64 %"shl.82", %"zext.205"
  %".1479" = inttoptr i64 %"or.77" to ptr
  %".1480" = ptrtoint ptr %".1479" to i64
  %".1481" = add i64 %".1480", 4
  %"for_LDG.77" = inttoptr i64 %".1481" to ptr
  %".1482" = load float, ptr %"for_LDG.77"
  %".1483" = bitcast ptr %"R20" to ptr
  store float %".1482", ptr %".1483"
  ; LDG.E.SYS R35, [R12+0x8]
  %".1486" = load i32, ptr %"R12"
  %"zext.207" = zext i32 %".1486" to i64
  %".1487" = load i32, ptr %"R13"
  %"zext.208" = zext i32 %".1487" to i64
  %"shl.83" = shl i64 %"zext.208", 32
  %"or.78" = or i64 %"shl.83", %"zext.207"
  %".1488" = inttoptr i64 %"or.78" to ptr
  %".1489" = ptrtoint ptr %".1488" to i64
  %".1490" = add i64 %".1489", 8
  %"for_LDG.78" = inttoptr i64 %".1490" to ptr
  %".1491" = load float, ptr %"for_LDG.78"
  %".1492" = bitcast ptr %"R35" to ptr
  store float %".1491", ptr %".1492"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1495" = load i32, ptr %"R14"
  %"zext.209" = zext i32 %".1495" to i64
  %".1496" = load i32, ptr %"R15"
  %"zext.210" = zext i32 %".1496" to i64
  %"shl.84" = shl i64 %"zext.210", 32
  %"or.79" = or i64 %"shl.84", %"zext.209"
  %".1497" = inttoptr i64 %"or.79" to ptr
  %".1498" = ptrtoint ptr %".1497" to i64
  %".1499" = add i64 %".1498", 8
  %"for_LDG.79" = inttoptr i64 %".1499" to ptr
  %".1500" = load float, ptr %"for_LDG.79"
  %".1501" = bitcast ptr %"R25" to ptr
  store float %".1500", ptr %".1501"
  ; LDG.E.SYS R22, [R16+0x8]
  %".1504" = load i32, ptr %"R16"
  %"zext.211" = zext i32 %".1504" to i64
  %".1505" = load i32, ptr %"R17"
  %"zext.212" = zext i32 %".1505" to i64
  %"shl.85" = shl i64 %"zext.212", 32
  %"or.80" = or i64 %"shl.85", %"zext.211"
  %".1506" = inttoptr i64 %"or.80" to ptr
  %".1507" = ptrtoint ptr %".1506" to i64
  %".1508" = add i64 %".1507", 8
  %"for_LDG.80" = inttoptr i64 %".1508" to ptr
  %".1509" = load float, ptr %"for_LDG.80"
  %".1510" = bitcast ptr %"R22" to ptr
  store float %".1509", ptr %".1510"
  ; LDG.E.SYS R39, [R12+0xc]
  %".1513" = load i32, ptr %"R12"
  %"zext.213" = zext i32 %".1513" to i64
  %".1514" = load i32, ptr %"R13"
  %"zext.214" = zext i32 %".1514" to i64
  %"shl.86" = shl i64 %"zext.214", 32
  %"or.81" = or i64 %"shl.86", %"zext.213"
  %".1515" = inttoptr i64 %"or.81" to ptr
  %".1516" = ptrtoint ptr %".1515" to i64
  %".1517" = add i64 %".1516", 12
  %"for_LDG.81" = inttoptr i64 %".1517" to ptr
  %".1518" = load float, ptr %"for_LDG.81"
  %".1519" = bitcast ptr %"R39" to ptr
  store float %".1518", ptr %".1519"
  ; LDG.E.SYS R37, [R14+0xc]
  %".1522" = load i32, ptr %"R14"
  %"zext.215" = zext i32 %".1522" to i64
  %".1523" = load i32, ptr %"R15"
  %"zext.216" = zext i32 %".1523" to i64
  %"shl.87" = shl i64 %"zext.216", 32
  %"or.82" = or i64 %"shl.87", %"zext.215"
  %".1524" = inttoptr i64 %"or.82" to ptr
  %".1525" = ptrtoint ptr %".1524" to i64
  %".1526" = add i64 %".1525", 12
  %"for_LDG.82" = inttoptr i64 %".1526" to ptr
  %".1527" = load float, ptr %"for_LDG.82"
  %".1528" = bitcast ptr %"R37" to ptr
  store float %".1527", ptr %".1528"
  ; LDG.E.SYS R24, [R16+0xc]
  %".1531" = load i32, ptr %"R16"
  %"zext.217" = zext i32 %".1531" to i64
  %".1532" = load i32, ptr %"R17"
  %"zext.218" = zext i32 %".1532" to i64
  %"shl.88" = shl i64 %"zext.218", 32
  %"or.83" = or i64 %"shl.88", %"zext.217"
  %".1533" = inttoptr i64 %"or.83" to ptr
  %".1534" = ptrtoint ptr %".1533" to i64
  %".1535" = add i64 %".1534", 12
  %"for_LDG.83" = inttoptr i64 %".1535" to ptr
  %".1536" = load float, ptr %"for_LDG.83"
  %".1537" = bitcast ptr %"R24" to ptr
  store float %".1536", ptr %".1537"
  ; IADD3 R9, R9, -0x4, RZ
  %".1540" = load i32, ptr %"R9"
  %"add.81" = add i32 %".1540", -4
  %"add.82" = add i32 %"add.81", 0
  store i32 %"add.82", ptr %"R9"
  ; IADD3 R11, R11, 0x4, RZ
  %".1543" = load i32, ptr %"R11"
  %"add.83" = add i32 %".1543", 4
  %"add.84" = add i32 %"add.83", 0
  store i32 %"add.84", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R9, RZ, PT
  %".1546" = load i32, ptr %"R9"
  %".1547" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".1546", 0
  %".1548" = and i1 %"cmp.11", %".1547"
  store i1 %".1548", ptr %"P0"
  ; FFMA R19, R19, R21, R52
  %".1551" = load float, ptr %"R19"
  %".1552" = load float, ptr %"R21"
  %".1553" = load float, ptr %"R52"
  %"fmul.48" = fmul float %".1551", %".1552"
  %"fadd.48" = fadd float %"fmul.48", %".1553"
  %".1554" = bitcast ptr %"R19" to ptr
  store float %"fadd.48", ptr %".1554"
  ; FFMA R10, R21, R10, R54
  %".1557" = load float, ptr %"R21"
  %".1558" = load float, ptr %"R10"
  %".1559" = load float, ptr %"R54"
  %"fmul.49" = fmul float %".1557", %".1558"
  %"fadd.49" = fadd float %"fmul.49", %".1559"
  %".1560" = bitcast ptr %"R10" to ptr
  store float %"fadd.49", ptr %".1560"
  ; FFMA R18, R18, R23, R19
  %".1563" = load float, ptr %"R18"
  %".1564" = load float, ptr %"R23"
  %".1565" = load float, ptr %"R19"
  %"fmul.50" = fmul float %".1563", %".1564"
  %"fadd.50" = fadd float %"fmul.50", %".1565"
  %".1566" = bitcast ptr %"R18" to ptr
  store float %"fadd.50", ptr %".1566"
  ; FFMA R10, R23, R20, R10
  %".1569" = load float, ptr %"R23"
  %".1570" = load float, ptr %"R20"
  %".1571" = load float, ptr %"R10"
  %"fmul.51" = fmul float %".1569", %".1570"
  %"fadd.51" = fadd float %"fmul.51", %".1571"
  %".1572" = bitcast ptr %"R10" to ptr
  store float %"fadd.51", ptr %".1572"
  ; FFMA R18, R25, R35, R18
  %".1575" = load float, ptr %"R25"
  %".1576" = load float, ptr %"R35"
  %".1577" = load float, ptr %"R18"
  %"fmul.52" = fmul float %".1575", %".1576"
  %"fadd.52" = fadd float %"fmul.52", %".1577"
  %".1578" = bitcast ptr %"R18" to ptr
  store float %"fadd.52", ptr %".1578"
  ; FFMA R10, R35, R22, R10
  %".1581" = load float, ptr %"R35"
  %".1582" = load float, ptr %"R22"
  %".1583" = load float, ptr %"R10"
  %"fmul.53" = fmul float %".1581", %".1582"
  %"fadd.53" = fadd float %"fmul.53", %".1583"
  %".1584" = bitcast ptr %"R10" to ptr
  store float %"fadd.53", ptr %".1584"
  ; FFMA R52, R37, R39, R18
  %".1587" = load float, ptr %"R37"
  %".1588" = load float, ptr %"R39"
  %".1589" = load float, ptr %"R18"
  %"fmul.54" = fmul float %".1587", %".1588"
  %"fadd.54" = fadd float %"fmul.54", %".1589"
  %".1590" = bitcast ptr %"R52" to ptr
  store float %"fadd.54", ptr %".1590"
  ; FFMA R54, R39, R24, R10
  %".1593" = load float, ptr %"R39"
  %".1594" = load float, ptr %"R24"
  %".1595" = load float, ptr %"R10"
  %"fmul.55" = fmul float %".1593", %".1594"
  %"fadd.55" = fadd float %"fmul.55", %".1595"
  %".1596" = bitcast ptr %"R54" to ptr
  store float %"fadd.55", ptr %".1596"
  ; @P0 BRA `(.L_x_3)
  %".1599" = load i1, ptr %"P0"
  %".1600" = icmp ne i1 %".1599", 1
  br i1 %".1600", label %".L_x_3", label %".L_x_2"
.L_x_2:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1603" = load i32, ptr %"R4"
  %".1604" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".1603", 0
  %".1605" = and i1 %"cmp.12", %".1604"
  store i1 %".1605", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".1608" = load i1, ptr %"P0"
  %".1609" = icmp eq i1 %".1608", 1
  br i1 %".1609", label %".L_x_1", label %".L_x_2_split_0x0fb0"
.L_x_2_split_0x0fb0:
  ; IADD3 R9, R0, R11, RZ
  %".1612" = load i32, ptr %"R0"
  %".1613" = load i32, ptr %"R11"
  %"add.85" = add i32 %".1612", %".1613"
  %"add.86" = add i32 %"add.85", 0
  store i32 %"add.86", ptr %"R9"
  ; MOV R15, 0x4
  store i32 4, ptr %"R15"
  ; LEA R14, R2.reuse, R9, 0x2
  %".1618" = load i32, ptr %"R2"
  %".1619" = load i32, ptr %"R9"
  %"shl.89" = shl i32 %".1618", 2
  %"add.87" = add i32 %"shl.89", %".1619"
  store i32 %"add.87", ptr %"R14"
  ; IMAD R12, R2, 0x3, R9
  %".1622" = load i32, ptr %"R2"
  %".1623" = load i32, ptr %"R9"
  %"mul.32" = mul i32 %".1622", 3
  %"add.88" = add i32 %"mul.32", %".1623"
  store i32 %"add.88", ptr %"R12"
  ; IMAD.WIDE R10, R11, R15, c[0x0][0x168]
  %".1626" = load i32, ptr %"R11"
  %".1627" = load i32, ptr %"R15"
  %"zext.219" = zext i32 %".1626" to i64
  %"zext.220" = zext i32 %".1627" to i64
  %"mul.33" = mul i64 %"zext.219", %"zext.220"
  %".1628" = ptrtoint ptr %"Arg_1" to i64
  %"add.89" = add i64 %"mul.33", %".1628"
  %".1629" = and i64 %"add.89", 18446744069414584320
  %".1630" = lshr i64 %".1629", 32
  %"trunc32.50" = trunc i64 %".1630" to i32
  %"trunc32.51" = trunc i64 %"add.89" to i32
  store i32 %"trunc32.51", ptr %"R10"
  store i32 %"trunc32.50", ptr %"R11"
  ; IMAD.WIDE R12, R12, R15, c[0x0][0x170]
  %".1634" = load i32, ptr %"R12"
  %".1635" = load i32, ptr %"R15"
  %"zext.221" = zext i32 %".1634" to i64
  %"zext.222" = zext i32 %".1635" to i64
  %"mul.34" = mul i64 %"zext.221", %"zext.222"
  %".1636" = ptrtoint ptr %"Arg_2" to i64
  %"add.90" = add i64 %"mul.34", %".1636"
  %".1637" = and i64 %"add.90", 18446744069414584320
  %".1638" = lshr i64 %".1637", 32
  %"trunc32.52" = trunc i64 %".1638" to i32
  %"trunc32.53" = trunc i64 %"add.90" to i32
  store i32 %"trunc32.53", ptr %"R12"
  store i32 %"trunc32.52", ptr %"R13"
  ; IMAD.WIDE R14, R14, R15, c[0x0][0x170]
  %".1642" = load i32, ptr %"R14"
  %".1643" = load i32, ptr %"R15"
  %"zext.223" = zext i32 %".1642" to i64
  %"zext.224" = zext i32 %".1643" to i64
  %"mul.35" = mul i64 %"zext.223", %"zext.224"
  %".1644" = ptrtoint ptr %"Arg_2" to i64
  %"add.91" = add i64 %"mul.35", %".1644"
  %".1645" = and i64 %"add.91", 18446744069414584320
  %".1646" = lshr i64 %".1645", 32
  %"trunc32.54" = trunc i64 %".1646" to i32
  %"trunc32.55" = trunc i64 %"add.91" to i32
  store i32 %"trunc32.55", ptr %"R14"
  store i32 %"trunc32.54", ptr %"R15"
  ; LDG.E.SYS R17, [R10]
  %".1650" = load i32, ptr %"R10"
  %"zext.225" = zext i32 %".1650" to i64
  %".1651" = load i32, ptr %"R11"
  %"zext.226" = zext i32 %".1651" to i64
  %"shl.90" = shl i64 %"zext.226", 32
  %"or.84" = or i64 %"shl.90", %"zext.225"
  %".1652" = inttoptr i64 %"or.84" to ptr
  %".1653" = ptrtoint ptr %".1652" to i64
  %".1654" = add i64 %".1653", 0
  %"for_LDG.84" = inttoptr i64 %".1654" to ptr
  %".1655" = load float, ptr %"for_LDG.84"
  %".1656" = bitcast ptr %"R17" to ptr
  store float %".1655", ptr %".1656"
  ; LDG.E.SYS R9, [R12]
  %".1659" = load i32, ptr %"R12"
  %"zext.227" = zext i32 %".1659" to i64
  %".1660" = load i32, ptr %"R13"
  %"zext.228" = zext i32 %".1660" to i64
  %"shl.91" = shl i64 %"zext.228", 32
  %"or.85" = or i64 %"shl.91", %"zext.227"
  %".1661" = inttoptr i64 %"or.85" to ptr
  %".1662" = ptrtoint ptr %".1661" to i64
  %".1663" = add i64 %".1662", 0
  %"for_LDG.85" = inttoptr i64 %".1663" to ptr
  %".1664" = load float, ptr %"for_LDG.85"
  %".1665" = bitcast ptr %"R9" to ptr
  store float %".1664", ptr %".1665"
  ; LDG.E.SYS R16, [R14]
  %".1668" = load i32, ptr %"R14"
  %"zext.229" = zext i32 %".1668" to i64
  %".1669" = load i32, ptr %"R15"
  %"zext.230" = zext i32 %".1669" to i64
  %"shl.92" = shl i64 %"zext.230", 32
  %"or.86" = or i64 %"shl.92", %"zext.229"
  %".1670" = inttoptr i64 %"or.86" to ptr
  %".1671" = ptrtoint ptr %".1670" to i64
  %".1672" = add i64 %".1671", 0
  %"for_LDG.86" = inttoptr i64 %".1672" to ptr
  %".1673" = load float, ptr %"for_LDG.86"
  %".1674" = bitcast ptr %"R16" to ptr
  store float %".1673", ptr %".1674"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".1677" = load i32, ptr %"R4"
  %".1678" = load i1, ptr %"PT"
  %"cmp.13" = icmp ne i32 %".1677", 1
  %".1679" = and i1 %"cmp.13", %".1678"
  store i1 %".1679", ptr %"P0"
  ; FFMA R52, R9, R17, R52
  %".1682" = load float, ptr %"R9"
  %".1683" = load float, ptr %"R17"
  %".1684" = load float, ptr %"R52"
  %"fmul.56" = fmul float %".1682", %".1683"
  %"fadd.56" = fadd float %"fmul.56", %".1684"
  %".1685" = bitcast ptr %"R52" to ptr
  store float %"fadd.56", ptr %".1685"
  ; FFMA R54, R17, R16, R54
  %".1688" = load float, ptr %"R17"
  %".1689" = load float, ptr %"R16"
  %".1690" = load float, ptr %"R54"
  %"fmul.57" = fmul float %".1688", %".1689"
  %"fadd.57" = fadd float %"fmul.57", %".1690"
  %".1691" = bitcast ptr %"R54" to ptr
  store float %"fadd.57", ptr %".1691"
  ; @!P0 BRA `(.L_x_1)
  %".1694" = load i1, ptr %"P0"
  %".1695" = icmp eq i1 %".1694", 1
  br i1 %".1695", label %".L_x_1", label %".L_x_2_split_0x1090"
.L_x_2_split_0x1090:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".1698" = load i32, ptr %"R4"
  %".1699" = load i1, ptr %"PT"
  %"cmp.14" = icmp ne i32 %".1698", 2
  %".1700" = and i1 %"cmp.14", %".1699"
  store i1 %".1700", ptr %"P0"
  ; LDG.E.SYS R9, [R12+0x4]
  %".1703" = load i32, ptr %"R12"
  %"zext.231" = zext i32 %".1703" to i64
  %".1704" = load i32, ptr %"R13"
  %"zext.232" = zext i32 %".1704" to i64
  %"shl.93" = shl i64 %"zext.232", 32
  %"or.87" = or i64 %"shl.93", %"zext.231"
  %".1705" = inttoptr i64 %"or.87" to ptr
  %".1706" = ptrtoint ptr %".1705" to i64
  %".1707" = add i64 %".1706", 4
  %"for_LDG.87" = inttoptr i64 %".1707" to ptr
  %".1708" = load float, ptr %"for_LDG.87"
  %".1709" = bitcast ptr %"R9" to ptr
  store float %".1708", ptr %".1709"
  ; LDG.E.SYS R17, [R10+0x4]
  %".1712" = load i32, ptr %"R10"
  %"zext.233" = zext i32 %".1712" to i64
  %".1713" = load i32, ptr %"R11"
  %"zext.234" = zext i32 %".1713" to i64
  %"shl.94" = shl i64 %"zext.234", 32
  %"or.88" = or i64 %"shl.94", %"zext.233"
  %".1714" = inttoptr i64 %"or.88" to ptr
  %".1715" = ptrtoint ptr %".1714" to i64
  %".1716" = add i64 %".1715", 4
  %"for_LDG.88" = inttoptr i64 %".1716" to ptr
  %".1717" = load float, ptr %"for_LDG.88"
  %".1718" = bitcast ptr %"R17" to ptr
  store float %".1717", ptr %".1718"
  ; LDG.E.SYS R16, [R14+0x4]
  %".1721" = load i32, ptr %"R14"
  %"zext.235" = zext i32 %".1721" to i64
  %".1722" = load i32, ptr %"R15"
  %"zext.236" = zext i32 %".1722" to i64
  %"shl.95" = shl i64 %"zext.236", 32
  %"or.89" = or i64 %"shl.95", %"zext.235"
  %".1723" = inttoptr i64 %"or.89" to ptr
  %".1724" = ptrtoint ptr %".1723" to i64
  %".1725" = add i64 %".1724", 4
  %"for_LDG.89" = inttoptr i64 %".1725" to ptr
  %".1726" = load float, ptr %"for_LDG.89"
  %".1727" = bitcast ptr %"R16" to ptr
  store float %".1726", ptr %".1727"
  ; @P0 LDG.E.SYS R19, [R12+0x8]
  %".1730" = load i1, ptr %"P0"
  %".1731" = icmp ne i1 %".1730", 1
  br i1 %".1731", label %".L_x_2_split_0x1090_conditionalExpr_0x10d0", label %".L_x_2_split_0x10e0"
.L_x_2_split_0x1090_conditionalExpr_0x10d0:
  ; LDG.E.SYS R19, [R12+0x8]
  %".1734" = load i32, ptr %"R12"
  %"zext.237" = zext i32 %".1734" to i64
  %".1735" = load i32, ptr %"R13"
  %"zext.238" = zext i32 %".1735" to i64
  %"shl.96" = shl i64 %"zext.238", 32
  %"or.90" = or i64 %"shl.96", %"zext.237"
  %".1736" = inttoptr i64 %"or.90" to ptr
  %".1737" = ptrtoint ptr %".1736" to i64
  %".1738" = add i64 %".1737", 8
  %"for_LDG.90" = inttoptr i64 %".1738" to ptr
  %".1739" = load float, ptr %"for_LDG.90"
  %".1740" = bitcast ptr %"R19" to ptr
  store float %".1739", ptr %".1740"
  ; BRA `(.L_x_2_split_0x10e0)
  br label %".L_x_2_split_0x10e0"
.L_x_2_split_0x10e0:
  ; @P0 LDG.E.SYS R21, [R10+0x8]
  %".1745" = load i1, ptr %"P0"
  %".1746" = icmp ne i1 %".1745", 1
  br i1 %".1746", label %".L_x_2_split_0x10e0_conditionalExpr_0x10e0", label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10e0_conditionalExpr_0x10e0:
  ; LDG.E.SYS R21, [R10+0x8]
  %".1749" = load i32, ptr %"R10"
  %"zext.239" = zext i32 %".1749" to i64
  %".1750" = load i32, ptr %"R11"
  %"zext.240" = zext i32 %".1750" to i64
  %"shl.97" = shl i64 %"zext.240", 32
  %"or.91" = or i64 %"shl.97", %"zext.239"
  %".1751" = inttoptr i64 %"or.91" to ptr
  %".1752" = ptrtoint ptr %".1751" to i64
  %".1753" = add i64 %".1752", 8
  %"for_LDG.91" = inttoptr i64 %".1753" to ptr
  %".1754" = load float, ptr %"for_LDG.91"
  %".1755" = bitcast ptr %"R21" to ptr
  store float %".1754", ptr %".1755"
  ; BRA `(.L_x_2_split_0x10f0)
  br label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10f0:
  ; @P0 LDG.E.SYS R18, [R14+0x8]
  %".1760" = load i1, ptr %"P0"
  %".1761" = icmp ne i1 %".1760", 1
  br i1 %".1761", label %".L_x_2_split_0x10f0_conditionalExpr_0x10f0", label %".L_x_2_split_0x1100"
.L_x_2_split_0x10f0_conditionalExpr_0x10f0:
  ; LDG.E.SYS R18, [R14+0x8]
  %".1764" = load i32, ptr %"R14"
  %"zext.241" = zext i32 %".1764" to i64
  %".1765" = load i32, ptr %"R15"
  %"zext.242" = zext i32 %".1765" to i64
  %"shl.98" = shl i64 %"zext.242", 32
  %"or.92" = or i64 %"shl.98", %"zext.241"
  %".1766" = inttoptr i64 %"or.92" to ptr
  %".1767" = ptrtoint ptr %".1766" to i64
  %".1768" = add i64 %".1767", 8
  %"for_LDG.92" = inttoptr i64 %".1768" to ptr
  %".1769" = load float, ptr %"for_LDG.92"
  %".1770" = bitcast ptr %"R18" to ptr
  store float %".1769", ptr %".1770"
  ; BRA `(.L_x_2_split_0x1100)
  br label %".L_x_2_split_0x1100"
.L_x_2_split_0x1100:
  ; FFMA R52, R9, R17, R52
  %".1775" = load float, ptr %"R9"
  %".1776" = load float, ptr %"R17"
  %".1777" = load float, ptr %"R52"
  %"fmul.58" = fmul float %".1775", %".1776"
  %"fadd.58" = fadd float %"fmul.58", %".1777"
  %".1778" = bitcast ptr %"R52" to ptr
  store float %"fadd.58", ptr %".1778"
  ; FFMA R54, R17, R16, R54
  %".1781" = load float, ptr %"R17"
  %".1782" = load float, ptr %"R16"
  %".1783" = load float, ptr %"R54"
  %"fmul.59" = fmul float %".1781", %".1782"
  %"fadd.59" = fadd float %"fmul.59", %".1783"
  %".1784" = bitcast ptr %"R54" to ptr
  store float %"fadd.59", ptr %".1784"
  ; @P0 FFMA R52, R19, R21, R52
  %".1787" = load i1, ptr %"P0"
  %".1788" = icmp ne i1 %".1787", 1
  br i1 %".1788", label %".L_x_2_split_0x1100_conditionalExpr_0x1120", label %".L_x_2_split_0x1130"
.L_x_2_split_0x1100_conditionalExpr_0x1120:
  ; FFMA R52, R19, R21, R52
  %".1791" = load float, ptr %"R19"
  %".1792" = load float, ptr %"R21"
  %".1793" = load float, ptr %"R52"
  %"fmul.60" = fmul float %".1791", %".1792"
  %"fadd.60" = fadd float %"fmul.60", %".1793"
  %".1794" = bitcast ptr %"R52" to ptr
  store float %"fadd.60", ptr %".1794"
  ; BRA `(.L_x_2_split_0x1130)
  br label %".L_x_2_split_0x1130"
.L_x_2_split_0x1130:
  ; @P0 FFMA R54, R21, R18, R54
  %".1799" = load i1, ptr %"P0"
  %".1800" = icmp ne i1 %".1799", 1
  br i1 %".1800", label %".L_x_2_split_0x1130_conditionalExpr_0x1130", label %".L_x_1"
.L_x_2_split_0x1130_conditionalExpr_0x1130:
  ; FFMA R54, R21, R18, R54
  %".1803" = load float, ptr %"R21"
  %".1804" = load float, ptr %"R18"
  %".1805" = load float, ptr %"R54"
  %"fmul.61" = fmul float %".1803", %".1804"
  %"fadd.61" = fadd float %"fmul.61", %".1805"
  %".1806" = bitcast ptr %"R54" to ptr
  store float %"fadd.61", ptr %".1806"
  ; BRA `(.L_x_1)
  br label %".L_x_1"
.L_x_1:
  ; LDG.E.SYS R9, [R26]
  %".1811" = load i32, ptr %"R26"
  %"zext.243" = zext i32 %".1811" to i64
  %".1812" = load i32, ptr %"R27"
  %"zext.244" = zext i32 %".1812" to i64
  %"shl.99" = shl i64 %"zext.244", 32
  %"or.93" = or i64 %"shl.99", %"zext.243"
  %".1813" = inttoptr i64 %"or.93" to ptr
  %".1814" = ptrtoint ptr %".1813" to i64
  %".1815" = add i64 %".1814", 0
  %"for_LDG.93" = inttoptr i64 %".1815" to ptr
  %".1816" = load float, ptr %"for_LDG.93"
  %".1817" = bitcast ptr %"R9" to ptr
  store float %".1816", ptr %".1817"
  ; MOV R10, 0x3bbb989d
  %".1820" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".1820"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R11, 0x437c0000
  %".1824" = bitcast ptr %"R11" to ptr
  store float 0x41d0df0000000000, ptr %".1824"
  ; BSSY B0, `(.L_x_7)
  ; FADD R9, R9, R52
  %".1828" = load float, ptr %"R9"
  %".1829" = load float, ptr %"R52"
  %"fadd.62" = fadd float %".1828", %".1829"
  %".1830" = bitcast ptr %"R9" to ptr
  store float %"fadd.62", ptr %".1830"
  ; FFMA.SAT R10, -R9, R10, 0.5
  %".1833" = load float, ptr %"R9"
  %".1834" = fneg float %".1833"
  %".1835" = load float, ptr %"R10"
  %"fmul.62" = fmul float %".1834", %".1835"
  %"fadd.63" = fadd float %"fmul.62", 0x3fe0000000000000
  %".1836" = bitcast ptr %"R10" to ptr
  store float %"fadd.63", ptr %".1836"
  ; FFMA.RM R10, R10, R11, 12582913
  %".1839" = load float, ptr %"R10"
  %".1840" = load float, ptr %"R11"
  %"fmul.63" = fmul float %".1839", %".1840"
  %"fadd.64" = fadd float %"fmul.63", 0x4168000020000000
  %".1841" = bitcast ptr %"R10" to ptr
  store float %"fadd.64", ptr %".1841"
  ; FADD R12, R10.reuse, -12583039
  %".1844" = load float, ptr %"R10"
  %"fadd.65" = fadd float %".1844", 0xc168000fe0000000
  %".1845" = bitcast ptr %"R12" to ptr
  store float %"fadd.65", ptr %".1845"
  ; SHF.L.U32 R10, R10, 0x17, RZ
  %".1848" = icmp ult i32 23, 32
  %"SHF_min" = select  i1 %".1848", i32 23, i32 32
  %".1849" = load i32, ptr %"R10"
  %"zext.245" = zext i32 0 to i64
  %"zext.246" = zext i32 %".1849" to i64
  %"zext.247" = zext i32 23 to i64
  %"shl.100" = shl i64 %"zext.245", 32
  %"or.94" = or i64 %"shl.100", %"zext.246"
  %"shl.101" = shl i64 %"or.94", %"zext.247"
  %"and" = and i64 %"shl.101", 4294967295
  %"trunc32.56" = trunc i64 %"and" to i32
  store i32 %"trunc32.56", ptr %"R10"
  ; FFMA R12, -R9, 1.4426950216293334961, -R12
  %".1852" = load float, ptr %"R9"
  %".1853" = fneg float %".1852"
  %".1854" = load float, ptr %"R12"
  %".1855" = fneg float %".1854"
  %"fmul.64" = fmul float %".1853", 0x3ff7154760000000
  %"fadd.66" = fadd float %"fmul.64", %".1855"
  %".1856" = bitcast ptr %"R12" to ptr
  store float %"fadd.66", ptr %".1856"
  ; FFMA R12, -R9, 1.925963033500011079e-08, R12
  %".1859" = load float, ptr %"R9"
  %".1860" = fneg float %".1859"
  %".1861" = load float, ptr %"R12"
  %"fmul.65" = fmul float %".1860", 0x3e54ae0c00000000
  %"fadd.67" = fadd float %"fmul.65", %".1861"
  %".1862" = bitcast ptr %"R12" to ptr
  store float %"fadd.67", ptr %".1862"
  ; MUFU.EX2 R9, R12
  %".1865" = load float, ptr %"R12"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1865")
  %".1866" = bitcast ptr %"R9" to ptr
  store float %"llvm_exp2_f32_result", ptr %".1866"
  ; FFMA R24, R10, R9, 1
  %".1869" = load float, ptr %"R10"
  %".1870" = load float, ptr %"R9"
  %"fmul.66" = fmul float %".1869", %".1870"
  %"fadd.68" = fadd float %"fmul.66", 0x3ff0000000000000
  %".1871" = bitcast ptr %"R24" to ptr
  store float %"fadd.68", ptr %".1871"
  ; IADD3 R9, R24, 0x1800000, RZ
  %".1874" = load i32, ptr %"R24"
  %"add.92" = add i32 %".1874", 25165824
  %"add.93" = add i32 %"add.92", 0
  store i32 %"add.93", ptr %"R9"
  ; LOP3.LUT R9, R9, 0x7f800000, RZ, 0xc0, !PT
  %".1877" = load i32, ptr %"R9"
  %".1878" = and i32 %".1877", 2139095040
  store i32 %".1878", ptr %"R9"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".1881" = load i32, ptr %"R9"
  %".1882" = load i1, ptr %"PT"
  %"cmp.15" = icmp sgt i32 %".1881", 33554431
  %".1883" = and i1 %"cmp.15", %".1882"
  store i1 %".1883", ptr %"P0"
  ; @P0 BRA `(.L_x_8)
  %".1886" = load i1, ptr %"P0"
  %".1887" = icmp ne i1 %".1886", 1
  br i1 %".1887", label %".L_x_8", label %".L_x_1_split_0x1260_CALL_0x1290"
.L_x_1_split_0x1260_CALL_0x1290:
  ; MOV R10, 0x1280
  store i32 4736, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".1894" = icmp ult i32 1, 32
  %"SHF_min.1" = select  i1 %".1894", i32 1, i32 32
  %".1895" = load i32, ptr %"R24"
  %"zext.248" = zext i32 0 to i64
  %"zext.249" = zext i32 %".1895" to i64
  %"zext.250" = zext i32 1 to i64
  %"shl.102" = shl i64 %"zext.248", 32
  %"or.95" = or i64 %"shl.102", %"zext.249"
  %"shl.103" = shl i64 %"or.95", %"zext.250"
  %"and.1" = and i64 %"shl.103", 4294967295
  %"trunc32.57" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.57", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".1900" = icmp ult i32 24, 32
  %"SHF_min.2" = select  i1 %".1900", i32 24, i32 32
  %".1901" = load i32, ptr %"R11"
  %"zext.251" = zext i32 %".1901" to i64
  %"zext.252" = zext i32 0 to i64
  %"zext.253" = zext i32 24 to i64
  %"shl.104" = shl i64 %"zext.251", 32
  %"or.96" = or i64 %"shl.104", %"zext.252"
  %"lshr" = lshr i64 %"or.96", %"zext.253"
  %"lshr.1" = lshr i64 %"lshr", 32
  %"trunc32.58" = trunc i64 %"lshr.1" to i32
  store i32 %"trunc32.58", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".1904" = load i32, ptr %"R25"
  %".1905" = load i1, ptr %"PT"
  %"cmp.16" = icmp ne i32 %".1904", 0
  %".1906" = and i1 %"cmp.16", %".1905"
  store i1 %".1906", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".1909" = load i1, ptr %"P0"
  %".1910" = icmp ne i1 %".1909", 1
  br i1 %".1910", label %".L_x_49...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".1913" = icmp ult i32 1, 32
  %"SHF_min.3" = select  i1 %".1913", i32 1, i32 32
  %".1914" = load i32, ptr %"R24"
  %"zext.254" = zext i32 0 to i64
  %"zext.255" = zext i32 %".1914" to i64
  %"zext.256" = zext i32 1 to i64
  %"shl.105" = shl i64 %"zext.254", 32
  %"or.97" = or i64 %"shl.105", %"zext.255"
  %"shl.106" = shl i64 %"or.97", %"zext.256"
  %"and.2" = and i64 %"shl.106", 4294967295
  %"trunc32.59" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.59", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".1917" = load i32, ptr %"R11"
  %".1918" = load i1, ptr %"PT"
  %"cmp.17" = icmp ne i32 %".1917", 0
  %".1919" = and i1 %"cmp.17", %".1918"
  store i1 %".1919", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".1922" = load i1, ptr %"P0"
  %".1923" = icmp ne i1 %".1922", 1
  br i1 %".1923", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".1926" = load float, ptr %"R24"
  %"fmul.67" = fmul float %".1926", 0x43f0000000000000
  %"fadd.69" = fadd float %"fmul.67",              0x0
  %".1927" = bitcast ptr %"R12" to ptr
  store float %"fadd.69", ptr %".1927"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".1932" = load float, ptr %"R24"
  %"fmul.68" = fmul float %".1932", 0x43f0000000000000
  %"fadd.70" = fadd float %"fmul.68",              0x0
  %".1933" = bitcast ptr %"R12" to ptr
  store float %"fadd.70", ptr %".1933"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1:
  ; @!P0 MUFU.RCP R11, R24
  %".1938" = load i1, ptr %"P0"
  %".1939" = icmp eq i1 %".1938", 1
  br i1 %".1939", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".1942" = load float, ptr %"R24"
  %".1943" = fdiv float 0x3ff0000000000000, %".1942"
  %".1944" = bitcast ptr %"R11" to ptr
  store float %".1943", ptr %".1944"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1:
  ; MUFU.RCP R11, R24
  %".1949" = load float, ptr %"R24"
  %".1950" = fdiv float 0x3ff0000000000000, %".1949"
  %".1951" = bitcast ptr %"R11" to ptr
  store float %".1950", ptr %".1951"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1:
  ; @P0 MUFU.RCP R13, R12
  %".1956" = load i1, ptr %"P0"
  %".1957" = icmp ne i1 %".1956", 1
  br i1 %".1957", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".1960" = load float, ptr %"R12"
  %".1961" = fdiv float 0x3ff0000000000000, %".1960"
  %".1962" = bitcast ptr %"R13" to ptr
  store float %".1961", ptr %".1962"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1:
  ; MUFU.RCP R13, R12
  %".1967" = load float, ptr %"R12"
  %".1968" = fdiv float 0x3ff0000000000000, %".1967"
  %".1969" = bitcast ptr %"R13" to ptr
  store float %".1968", ptr %".1969"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1:
  ; @P0 FFMA R22, R12, R13, -1
  %".1974" = load i1, ptr %"P0"
  %".1975" = icmp ne i1 %".1974", 1
  br i1 %".1975", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".1978" = load float, ptr %"R12"
  %".1979" = load float, ptr %"R13"
  %"fmul.69" = fmul float %".1978", %".1979"
  %"fadd.71" = fadd float %"fmul.69", 0xbff0000000000000
  %".1980" = bitcast ptr %"R22" to ptr
  store float %"fadd.71", ptr %".1980"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1:
  ; FFMA R22, R12, R13, -1
  %".1985" = load float, ptr %"R12"
  %".1986" = load float, ptr %"R13"
  %"fmul.70" = fmul float %".1985", %".1986"
  %"fadd.72" = fadd float %"fmul.70", 0xbff0000000000000
  %".1987" = bitcast ptr %"R22" to ptr
  store float %"fadd.72", ptr %".1987"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".1992" = load i1, ptr %"P0"
  %".1993" = icmp ne i1 %".1992", 1
  br i1 %".1993", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".1996" = load float, ptr %"R22"
  %".1997" = fneg float %".1996"
  %"fadd.73" = fadd float %".1997",              0x0
  %".1998" = bitcast ptr %"R22" to ptr
  store float %"fadd.73", ptr %".1998"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1:
  ; FADD.FTZ R22, -R22, -RZ
  %".2003" = load float, ptr %"R22"
  %".2004" = fneg float %".2003"
  %"fadd.74" = fadd float %".2004",              0x0
  %".2005" = bitcast ptr %"R22" to ptr
  store float %"fadd.74", ptr %".2005"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1:
  ; @P0 FFMA R22, R13, R22, R13
  %".2010" = load i1, ptr %"P0"
  %".2011" = icmp ne i1 %".2010", 1
  br i1 %".2011", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".2014" = load float, ptr %"R13"
  %".2015" = load float, ptr %"R22"
  %".2016" = load float, ptr %"R13"
  %"fmul.71" = fmul float %".2014", %".2015"
  %"fadd.75" = fadd float %"fmul.71", %".2016"
  %".2017" = bitcast ptr %"R22" to ptr
  store float %"fadd.75", ptr %".2017"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1:
  ; FFMA R22, R13, R22, R13
  %".2022" = load float, ptr %"R13"
  %".2023" = load float, ptr %"R22"
  %".2024" = load float, ptr %"R13"
  %"fmul.72" = fmul float %".2022", %".2023"
  %"fadd.76" = fadd float %"fmul.72", %".2024"
  %".2025" = bitcast ptr %"R22" to ptr
  store float %"fadd.76", ptr %".2025"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".2030" = load i1, ptr %"P0"
  %".2031" = icmp ne i1 %".2030", 1
  br i1 %".2031", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".2034" = load float, ptr %"R22"
  %"fmul.73" = fmul float %".2034", 0x43f0000000000000
  %"fadd.77" = fadd float %"fmul.73",              0x0
  %".2035" = bitcast ptr %"R11" to ptr
  store float %"fadd.77", ptr %".2035"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".2040" = load float, ptr %"R22"
  %"fmul.74" = fmul float %".2040", 0x43f0000000000000
  %"fadd.78" = fadd float %"fmul.74",              0x0
  %".2041" = bitcast ptr %"R11" to ptr
  store float %"fadd.78", ptr %".2041"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...1:
  ; BRA `(.L_x_50)
  br label %".L_x_50...1"
.L_x_49...1:
  ; IADD3 R34, R25, -0xfd, RZ
  %".2048" = load i32, ptr %"R25"
  %"add.94" = add i32 %".2048", -253
  %"add.95" = add i32 %"add.94", 0
  store i32 %"add.95", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".2051" = load i32, ptr %"R34"
  %".2052" = load i1, ptr %"PT"
  %"cmp.18" = icmp sgt i32 %".2051", 1
  %".2053" = and i1 %"cmp.18", %".2052"
  store i1 %".2053", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".2056" = load i1, ptr %"P0"
  %".2057" = icmp ne i1 %".2056", 1
  br i1 %".2057", label %".L_x_51...1", label %".L_x_49_split_0x4a30...1"
.L_x_49_split_0x4a30...1:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".2060" = load float, ptr %"R24"
  %".2061" = bitcast float %".2060" to i32
  %".2062" = and i32 %".2061", 8388607
  store i32 %".2062", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".2067" = load i32, ptr %"R11"
  %".2068" = or i32 %".2067", 1065353216
  store i32 %".2068", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".2071" = load i32, ptr %"R34"
  %".2072" = icmp ult i32 %".2071", 32
  %"SHF_min.4" = select  i1 %".2072", i32 %".2071", i32 32
  %".2073" = load i32, ptr %"R23"
  %".2074" = load i32, ptr %"R34"
  %"zext.257" = zext i32 0 to i64
  %"zext.258" = zext i32 %".2073" to i64
  %"zext.259" = zext i32 %".2074" to i64
  %"shl.107" = shl i64 %"zext.257", 32
  %"or.98" = or i64 %"shl.107", %"zext.258"
  %"shl.108" = shl i64 %"or.98", %"zext.259"
  %"and.3" = and i64 %"shl.108", 4294967295
  %"trunc32.60" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.60", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".2077" = load float, ptr %"R11"
  %".2078" = fdiv float 0x3ff0000000000000, %".2077"
  %".2079" = bitcast ptr %"R12" to ptr
  store float %".2078", ptr %".2079"
  ; FFMA R13, R11, R12, -1
  %".2082" = load float, ptr %"R11"
  %".2083" = load float, ptr %"R12"
  %"fmul.75" = fmul float %".2082", %".2083"
  %"fadd.79" = fadd float %"fmul.75", 0xbff0000000000000
  %".2084" = bitcast ptr %"R13" to ptr
  store float %"fadd.79", ptr %".2084"
  ; FADD.FTZ R13, -R13, -RZ
  %".2087" = load float, ptr %"R13"
  %".2088" = fneg float %".2087"
  %"fadd.80" = fadd float %".2088",              0x0
  %".2089" = bitcast ptr %"R13" to ptr
  store float %"fadd.80", ptr %".2089"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".2092" = load float, ptr %"R12"
  %".2093" = load float, ptr %"R13"
  %".2094" = load float, ptr %"R12"
  %"fmul.76" = fmul float %".2092", %".2093"
  %"fadd.81" = fadd float %"fmul.76", %".2094"
  %".2095" = bitcast ptr %"R22" to ptr
  store float %"fadd.81", ptr %".2095"
  ; FFMA.RP R13, R12, R13, R12
  %".2098" = load float, ptr %"R12"
  %".2099" = load float, ptr %"R13"
  %".2100" = load float, ptr %"R12"
  %"fmul.77" = fmul float %".2098", %".2099"
  %"fadd.82" = fadd float %"fmul.77", %".2100"
  %".2101" = bitcast ptr %"R13" to ptr
  store float %"fadd.82", ptr %".2101"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".2104" = load float, ptr %"R22"
  %".2105" = bitcast float %".2104" to i32
  %".2106" = and i32 %".2105", 8388607
  store i32 %".2106", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".2109" = load float, ptr %"R22"
  %".2110" = load float, ptr %"R13"
  %".2111" = load i1, ptr %"PT"
  %"fcmp_ordered" = fcmp une float %".2109", %".2110"
  %".2112" = and i1 %"fcmp_ordered", %".2111"
  store i1 %".2112", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".2115" = load i32, ptr %"R12"
  %".2116" = or i32 %".2115", 8388608
  store i32 %".2116", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".2119" = load i1, ptr %"P0"
  %".2120" = icmp eq i1 %".2119", 1
  %"sel" = select  i1 %".2120", i32 0, i32 4294967295
  store i32 %"sel", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".2123" = load i32, ptr %"R23"
  %".2124" = load i32, ptr %"R12"
  %".2125" = and i32 %".2123", %".2124"
  store i32 %".2125", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".2128" = load i32, ptr %"R13"
  %".2129" = sub i32 0, %".2128"
  %"add.96" = add i32 %".2129", 0
  %"add.97" = add i32 %"add.96", 0
  store i32 %"add.97", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".2132" = load i32, ptr %"R34"
  %".2133" = icmp ult i32 %".2132", 32
  %"SHF_min.5" = select  i1 %".2133", i32 %".2132", i32 32
  %".2134" = load i32, ptr %"R23"
  %".2135" = load i32, ptr %"R34"
  %"zext.260" = zext i32 %".2134" to i64
  %"zext.261" = zext i32 0 to i64
  %"zext.262" = zext i32 %".2135" to i64
  %"shl.109" = shl i64 %"zext.260", 32
  %"or.99" = or i64 %"shl.109", %"zext.261"
  %"lshr.2" = lshr i64 %"or.99", %"zext.262"
  %"lshr.3" = lshr i64 %"lshr.2", 32
  %"trunc32.61" = trunc i64 %"lshr.3" to i32
  store i32 %"trunc32.61", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".2138" = load i32, ptr %"R13"
  %".2139" = load i32, ptr %"R34"
  %".2140" = load i32, ptr %"R12"
  %"LOP3_result" = call i32 @"custom_lop3"(i32 %".2140", i32 0, i32 %".2138", i32 %".2139")
  %".2141" = trunc i32 %"LOP3_result" to i1
  store i1 %".2141", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".2144" = load i32, ptr %"R23"
  %"LOP3_result.1" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".2144", i32 1)
  %".2145" = trunc i32 %"LOP3_result.1" to i1
  store i1 %".2145", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".2148" = load i32, ptr %"R23"
  %"LOP3_result.2" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".2148", i32 2)
  %".2149" = trunc i32 %"LOP3_result.2" to i1
  store i1 %".2149", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".2152" = load i1, ptr %"P0"
  %".2153" = sub i1 0, %".2152"
  %".2154" = load i1, ptr %"P1"
  %".2155" = sub i1 0, %".2154"
  %".2156" = or i1 %".2153", %".2155"
  %".2157" = and i1 %".2156", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".2159" = load float, ptr %"R24"
  %".2160" = bitcast float %".2159" to i32
  %"LOP3_result.3" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".2160", i32 8388607)
  %".2161" = trunc i32 %"LOP3_result.3" to i1
  store i1 %".2161", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".2164" = load i1, ptr %"P0"
  %".2165" = icmp eq i1 %".2164", 1
  %"sel.1" = select  i1 %".2165", i32 0, i32 1
  store i32 %"sel.1", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".2168" = load i32, ptr %"R11"
  %".2169" = sub i32 0, %".2168"
  %"add.98" = add i32 %".2169", 0
  %"add.99" = add i32 %"add.98", 0
  store i32 %"add.99", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".2172" = load i32, ptr %"R11"
  %".2173" = load i1, ptr %"PT"
  %"cmp.19" = icmp sge i32 %".2172", 0
  %".2174" = and i1 %"cmp.19", %".2173"
  store i1 %".2174", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".2177" = load i32, ptr %"R25"
  %"add.100" = add i32 %".2177", -252
  %"add.101" = add i32 %"add.100", 0
  store i32 %"add.101", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".2180" = load i32, ptr %"R11"
  %".2181" = icmp ult i32 %".2180", 32
  %"SHF_min.6" = select  i1 %".2181", i32 %".2180", i32 32
  %".2182" = load i32, ptr %"R12"
  %".2183" = load i32, ptr %"R11"
  %"zext.263" = zext i32 %".2182" to i64
  %"zext.264" = zext i32 0 to i64
  %"zext.265" = zext i32 %".2183" to i64
  %"shl.110" = shl i64 %"zext.263", 32
  %"or.100" = or i64 %"shl.110", %"zext.264"
  %"lshr.4" = lshr i64 %"or.100", %"zext.265"
  %"lshr.5" = lshr i64 %"lshr.4", 32
  %"trunc32.62" = trunc i64 %"lshr.5" to i32
  store i32 %"trunc32.62", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".2186" = load i1, ptr %"P0"
  %".2187" = icmp eq i1 %".2186", 1
  br i1 %".2187", label %".L_x_49_split_0x4a30...1_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1"
.L_x_49_split_0x4a30...1_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".2190" = load i32, ptr %"R11"
  %"add.102" = add i32 %".2190", 1
  %"add.103" = add i32 %"add.102", 0
  store i32 %"add.103", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1:
  ; IADD3 R11, R11, 0x1, RZ
  %".2195" = load i32, ptr %"R11"
  %"add.104" = add i32 %".2195", 1
  %"add.105" = add i32 %"add.104", 0
  store i32 %"add.105", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...1"
.L_x_49_split_0x4be0...1:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".2200" = load i1, ptr %"P1"
  %".2201" = icmp eq i1 %".2200", 1
  br i1 %".2201", label %".L_x_49_split_0x4be0...1_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...1"
.L_x_49_split_0x4be0...1_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".2204" = icmp ult i32 1, 32
  %"SHF_min.7" = select  i1 %".2204", i32 1, i32 32
  %".2205" = load i32, ptr %"R11"
  %"zext.266" = zext i32 0 to i64
  %"zext.267" = zext i32 %".2205" to i64
  %"zext.268" = zext i32 1 to i64
  %"shl.111" = shl i64 %"zext.266", 32
  %"or.101" = or i64 %"shl.111", %"zext.267"
  %"shl.112" = shl i64 %"or.101", %"zext.268"
  %"and.4" = and i64 %"shl.112", 4294967295
  %"trunc32.63" = trunc i64 %"and.4" to i32
  store i32 %"trunc32.63", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...1)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...1"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...1:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".2210" = icmp ult i32 1, 32
  %"SHF_min.8" = select  i1 %".2210", i32 1, i32 32
  %".2211" = load i32, ptr %"R11"
  %"zext.269" = zext i32 0 to i64
  %"zext.270" = zext i32 %".2211" to i64
  %"zext.271" = zext i32 1 to i64
  %"shl.113" = shl i64 %"zext.269", 32
  %"or.102" = or i64 %"shl.113", %"zext.270"
  %"shl.114" = shl i64 %"or.102", %"zext.271"
  %"and.5" = and i64 %"shl.114", 4294967295
  %"trunc32.64" = trunc i64 %"and.5" to i32
  store i32 %"trunc32.64", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...1"
.L_x_49_split_0x4bf0...1:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".2216" = load i32, ptr %"R11"
  %".2217" = load float, ptr %"R24"
  %".2218" = bitcast float %".2217" to i32
  %".2219" = or i32 %".2216", 2147483648
  %".2220" = or i32 %".2216", %".2218"
  %".2221" = and i32 %".2219", %".2220"
  store i32 %".2221", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...1"
.L_x_51...1:
  ; MUFU.RCP R11, R24
  %".2226" = load float, ptr %"R24"
  %".2227" = fdiv float 0x3ff0000000000000, %".2226"
  %".2228" = bitcast ptr %"R11" to ptr
  store float %".2227", ptr %".2228"
  br label %".L_x_50...1"
.L_x_50...1:
  ; BSYNC B1
  br label %".L_x_48...1"
.L_x_48...1:
  ; MOV R22, R11
  %".2234" = load float, ptr %"R11"
  %".2235" = bitcast ptr %"R22" to ptr
  store float %".2234", ptr %".2235"
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
  %".2245" = load float, ptr %"R22"
  %".2246" = bitcast ptr %"R9" to ptr
  store float %".2245", ptr %".2246"
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %".2251" = load float, ptr %"R24"
  %".2252" = fdiv float 0x3ff0000000000000, %".2251"
  %".2253" = bitcast ptr %"R9" to ptr
  store float %".2252", ptr %".2253"
  ; FFMA R10, R24, R9, -1
  %".2256" = load float, ptr %"R24"
  %".2257" = load float, ptr %"R9"
  %"fmul.78" = fmul float %".2256", %".2257"
  %"fadd.83" = fadd float %"fmul.78", 0xbff0000000000000
  %".2258" = bitcast ptr %"R10" to ptr
  store float %"fadd.83", ptr %".2258"
  ; FADD.FTZ R10, -R10, -RZ
  %".2261" = load float, ptr %"R10"
  %".2262" = fneg float %".2261"
  %"fadd.84" = fadd float %".2262",              0x0
  %".2263" = bitcast ptr %"R10" to ptr
  store float %"fadd.84", ptr %".2263"
  ; FFMA R9, R9, R10, R9
  %".2266" = load float, ptr %"R9"
  %".2267" = load float, ptr %"R10"
  %".2268" = load float, ptr %"R9"
  %"fmul.79" = fmul float %".2266", %".2267"
  %"fadd.85" = fadd float %"fmul.79", %".2268"
  %".2269" = bitcast ptr %"R9" to ptr
  store float %"fadd.85", ptr %".2269"
  br label %".L_x_9"
.L_x_9:
  ; BSYNC B0
  br label %".L_x_7"
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  %".2275" = load i32, ptr %"R32"
  %"zext.272" = zext i32 %".2275" to i64
  %".2276" = load i32, ptr %"R33"
  %"zext.273" = zext i32 %".2276" to i64
  %"shl.115" = shl i64 %"zext.273", 32
  %"or.103" = or i64 %"shl.115", %"zext.272"
  %".2277" = inttoptr i64 %"or.103" to ptr
  %".2278" = ptrtoint ptr %".2277" to i64
  %".2279" = add i64 %".2278", 0
  %"for_LDG.94" = inttoptr i64 %".2279" to ptr
  %".2280" = load float, ptr %"for_LDG.94"
  %".2281" = bitcast ptr %"R11" to ptr
  store float %".2280", ptr %".2281"
  ; MOV R10, 0x3bbb989d
  %".2284" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".2284"
  ; MOV R13, 0x437c0000
  %".2287" = bitcast ptr %"R13" to ptr
  store float 0x41d0df0000000000, ptr %".2287"
  ; FADD R11, R11, R54
  %".2290" = load float, ptr %"R11"
  %".2291" = load float, ptr %"R54"
  %"fadd.86" = fadd float %".2290", %".2291"
  %".2292" = bitcast ptr %"R11" to ptr
  store float %"fadd.86", ptr %".2292"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %".2295" = load float, ptr %"R11"
  %".2296" = fneg float %".2295"
  %".2297" = load float, ptr %"R10"
  %"fmul.80" = fmul float %".2296", %".2297"
  %"fadd.87" = fadd float %"fmul.80", 0x3fe0000000000000
  %".2298" = bitcast ptr %"R10" to ptr
  store float %"fadd.87", ptr %".2298"
  ; FFMA.RM R10, R10, R13, 12582913
  %".2301" = load float, ptr %"R10"
  %".2302" = load float, ptr %"R13"
  %"fmul.81" = fmul float %".2301", %".2302"
  %"fadd.88" = fadd float %"fmul.81", 0x4168000020000000
  %".2303" = bitcast ptr %"R10" to ptr
  store float %"fadd.88", ptr %".2303"
  ; FADD R12, R10.reuse, -12583039
  %".2306" = load float, ptr %"R10"
  %"fadd.89" = fadd float %".2306", 0xc168000fe0000000
  %".2307" = bitcast ptr %"R12" to ptr
  store float %"fadd.89", ptr %".2307"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".2310" = icmp ult i32 23, 32
  %"SHF_min.9" = select  i1 %".2310", i32 23, i32 32
  %".2311" = load i32, ptr %"R10"
  %"zext.274" = zext i32 0 to i64
  %"zext.275" = zext i32 %".2311" to i64
  %"zext.276" = zext i32 23 to i64
  %"shl.116" = shl i64 %"zext.274", 32
  %"or.104" = or i64 %"shl.116", %"zext.275"
  %"shl.117" = shl i64 %"or.104", %"zext.276"
  %"and.6" = and i64 %"shl.117", 4294967295
  %"trunc32.65" = trunc i64 %"and.6" to i32
  store i32 %"trunc32.65", ptr %"R20"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %".2314" = load float, ptr %"R11"
  %".2315" = fneg float %".2314"
  %".2316" = load float, ptr %"R12"
  %".2317" = fneg float %".2316"
  %"fmul.82" = fmul float %".2315", 0x3ff7154760000000
  %"fadd.90" = fadd float %"fmul.82", %".2317"
  %".2318" = bitcast ptr %"R12" to ptr
  store float %"fadd.90", ptr %".2318"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %".2321" = load float, ptr %"R11"
  %".2322" = fneg float %".2321"
  %".2323" = load float, ptr %"R12"
  %"fmul.83" = fmul float %".2322", 0x3e54ae0c00000000
  %"fadd.91" = fadd float %"fmul.83", %".2323"
  %".2324" = bitcast ptr %"R12" to ptr
  store float %"fadd.91", ptr %".2324"
  ; MUFU.EX2 R11, R12
  %".2327" = load float, ptr %"R12"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".2327")
  %".2328" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result.1", ptr %".2328"
  ; FFMA R20, R20, R11, 1
  %".2331" = load float, ptr %"R20"
  %".2332" = load float, ptr %"R11"
  %"fmul.84" = fmul float %".2331", %".2332"
  %"fadd.92" = fadd float %"fmul.84", 0x3ff0000000000000
  %".2333" = bitcast ptr %"R20" to ptr
  store float %"fadd.92", ptr %".2333"
  ; @!P4 BRA `(.L_x_10)
  %".2336" = load i1, ptr %"P4"
  %".2337" = icmp eq i1 %".2336", 1
  br i1 %".2337", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".2340" = load i32, ptr %"R5"
  %".2341" = load i1, ptr %"PT"
  %"cmp.20" = icmp sge i32 %".2340", 3
  %".2342" = and i1 %"cmp.20", %".2341"
  store i1 %".2342", ptr %"P0"
  ; MOV R8, RZ
  %".2345" = load float, ptr %"RZ"
  %".2346" = bitcast ptr %"R8" to ptr
  store float %".2345", ptr %".2346"
  ; MOV R22, RZ
  %".2349" = load i32, ptr %"RZ"
  store i32 %".2349", ptr %"R22"
  ; @!P0 BRA `(.L_x_11)
  %".2352" = load i1, ptr %"P0"
  %".2353" = icmp eq i1 %".2352", 1
  br i1 %".2353", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".2356" = load i32, ptr %"R7"
  %".2357" = load i1, ptr %"PT"
  %"cmp.21" = icmp sgt i32 %".2356", 0
  %".2358" = and i1 %"cmp.21", %".2357"
  store i1 %".2358", ptr %"P0"
  ; MOV R8, RZ
  %".2361" = load float, ptr %"RZ"
  %".2362" = bitcast ptr %"R8" to ptr
  store float %".2361", ptr %".2362"
  ; MOV R22, RZ
  %".2365" = load i32, ptr %"RZ"
  store i32 %".2365", ptr %"R22"
  ; MOV R23, R7
  %".2368" = load i32, ptr %"R7"
  store i32 %".2368", ptr %"R23"
  ; @!P0 BRA `(.L_x_12)
  %".2371" = load i1, ptr %"P0"
  %".2372" = icmp eq i1 %".2371", 1
  br i1 %".2372", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2375" = load i32, ptr %"R23"
  %".2376" = load i1, ptr %"PT"
  %"cmp.22" = icmp sgt i32 %".2375", 12
  %".2377" = and i1 %"cmp.22", %".2376"
  store i1 %".2377", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".2380" = and i1 1, 1
  %".2381" = or i1 %".2380", 1
  ; @!P1 BRA `(.L_x_13)
  %".2383" = load i1, ptr %"P1"
  %".2384" = icmp eq i1 %".2383", 1
  br i1 %".2384", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2387" = xor i1 1, 1
  %".2388" = and i1 %".2387", 1
  %".2389" = and i1 %".2388", 1
  br label %".L_x_14"
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, ptr %"R49"
  ; IADD3 R16, R3, R22, RZ
  %".2394" = load i32, ptr %"R3"
  %".2395" = load i32, ptr %"R22"
  %"add.106" = add i32 %".2394", %".2395"
  %"add.107" = add i32 %"add.106", 0
  store i32 %"add.107", ptr %"R16"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".2398" = load i32, ptr %"R22"
  %".2399" = load i32, ptr %"R49"
  %"zext.277" = zext i32 %".2398" to i64
  %"zext.278" = zext i32 %".2399" to i64
  %"mul.36" = mul i64 %"zext.277", %"zext.278"
  %".2400" = ptrtoint ptr %"Arg_1" to i64
  %"add.108" = add i64 %"mul.36", %".2400"
  %".2401" = and i64 %"add.108", 18446744069414584320
  %".2402" = lshr i64 %".2401", 32
  %"trunc32.66" = trunc i64 %".2402" to i32
  %"trunc32.67" = trunc i64 %"add.108" to i32
  store i32 %"trunc32.67", ptr %"R12"
  store i32 %"trunc32.66", ptr %"R13"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".2406" = load i32, ptr %"R16"
  %".2407" = load i32, ptr %"R49"
  %"zext.279" = zext i32 %".2406" to i64
  %"zext.280" = zext i32 %".2407" to i64
  %"mul.37" = mul i64 %"zext.279", %"zext.280"
  %".2408" = ptrtoint ptr %"Arg_2" to i64
  %"add.109" = add i64 %"mul.37", %".2408"
  %".2409" = and i64 %"add.109", 18446744069414584320
  %".2410" = lshr i64 %".2409", 32
  %"trunc32.68" = trunc i64 %".2410" to i32
  %"trunc32.69" = trunc i64 %"add.109" to i32
  store i32 %"trunc32.69", ptr %"R16"
  store i32 %"trunc32.68", ptr %"R17"
  ; IADD3 R18, R22, 0x4, RZ
  %".2414" = load i32, ptr %"R22"
  %"add.110" = add i32 %".2414", 4
  %"add.111" = add i32 %"add.110", 0
  store i32 %"add.111", ptr %"R18"
  ; LDG.E.SYS R24, [R12]
  %".2417" = load i32, ptr %"R12"
  %"zext.281" = zext i32 %".2417" to i64
  %".2418" = load i32, ptr %"R13"
  %"zext.282" = zext i32 %".2418" to i64
  %"shl.118" = shl i64 %"zext.282", 32
  %"or.105" = or i64 %"shl.118", %"zext.281"
  %".2419" = inttoptr i64 %"or.105" to ptr
  %".2420" = ptrtoint ptr %".2419" to i64
  %".2421" = add i64 %".2420", 0
  %"for_LDG.95" = inttoptr i64 %".2421" to ptr
  %".2422" = load float, ptr %"for_LDG.95"
  %".2423" = bitcast ptr %"R24" to ptr
  store float %".2422", ptr %".2423"
  ; IADD3 R14, R3, R18, RZ
  %".2426" = load i32, ptr %"R3"
  %".2427" = load i32, ptr %"R18"
  %"add.112" = add i32 %".2426", %".2427"
  %"add.113" = add i32 %"add.112", 0
  store i32 %"add.113", ptr %"R14"
  ; LDG.E.SYS R21, [R16]
  %".2430" = load i32, ptr %"R16"
  %"zext.283" = zext i32 %".2430" to i64
  %".2431" = load i32, ptr %"R17"
  %"zext.284" = zext i32 %".2431" to i64
  %"shl.119" = shl i64 %"zext.284", 32
  %"or.106" = or i64 %"shl.119", %"zext.283"
  %".2432" = inttoptr i64 %"or.106" to ptr
  %".2433" = ptrtoint ptr %".2432" to i64
  %".2434" = add i64 %".2433", 0
  %"for_LDG.96" = inttoptr i64 %".2434" to ptr
  %".2435" = load float, ptr %"for_LDG.96"
  %".2436" = bitcast ptr %"R21" to ptr
  store float %".2435", ptr %".2436"
  ; LDG.E.SYS R36, [R12+0x4]
  %".2439" = load i32, ptr %"R12"
  %"zext.285" = zext i32 %".2439" to i64
  %".2440" = load i32, ptr %"R13"
  %"zext.286" = zext i32 %".2440" to i64
  %"shl.120" = shl i64 %"zext.286", 32
  %"or.107" = or i64 %"shl.120", %"zext.285"
  %".2441" = inttoptr i64 %"or.107" to ptr
  %".2442" = ptrtoint ptr %".2441" to i64
  %".2443" = add i64 %".2442", 4
  %"for_LDG.97" = inttoptr i64 %".2443" to ptr
  %".2444" = load float, ptr %"for_LDG.97"
  %".2445" = bitcast ptr %"R36" to ptr
  store float %".2444", ptr %".2445"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".2448" = load i32, ptr %"R18"
  %".2449" = load i32, ptr %"R49"
  %"zext.287" = zext i32 %".2448" to i64
  %"zext.288" = zext i32 %".2449" to i64
  %"mul.38" = mul i64 %"zext.287", %"zext.288"
  %".2450" = ptrtoint ptr %"Arg_1" to i64
  %"add.114" = add i64 %"mul.38", %".2450"
  %".2451" = and i64 %"add.114", 18446744069414584320
  %".2452" = lshr i64 %".2451", 32
  %"trunc32.70" = trunc i64 %".2452" to i32
  %"trunc32.71" = trunc i64 %"add.114" to i32
  store i32 %"trunc32.71", ptr %"R18"
  store i32 %"trunc32.70", ptr %"R19"
  ; LDG.E.SYS R25, [R16+0x4]
  %".2456" = load i32, ptr %"R16"
  %"zext.289" = zext i32 %".2456" to i64
  %".2457" = load i32, ptr %"R17"
  %"zext.290" = zext i32 %".2457" to i64
  %"shl.121" = shl i64 %"zext.290", 32
  %"or.108" = or i64 %"shl.121", %"zext.289"
  %".2458" = inttoptr i64 %"or.108" to ptr
  %".2459" = ptrtoint ptr %".2458" to i64
  %".2460" = add i64 %".2459", 4
  %"for_LDG.98" = inttoptr i64 %".2460" to ptr
  %".2461" = load float, ptr %"for_LDG.98"
  %".2462" = bitcast ptr %"R25" to ptr
  store float %".2461", ptr %".2462"
  ; LDG.E.SYS R46, [R12+0x8]
  %".2465" = load i32, ptr %"R12"
  %"zext.291" = zext i32 %".2465" to i64
  %".2466" = load i32, ptr %"R13"
  %"zext.292" = zext i32 %".2466" to i64
  %"shl.122" = shl i64 %"zext.292", 32
  %"or.109" = or i64 %"shl.122", %"zext.291"
  %".2467" = inttoptr i64 %"or.109" to ptr
  %".2468" = ptrtoint ptr %".2467" to i64
  %".2469" = add i64 %".2468", 8
  %"for_LDG.99" = inttoptr i64 %".2469" to ptr
  %".2470" = load float, ptr %"for_LDG.99"
  %".2471" = bitcast ptr %"R46" to ptr
  store float %".2470", ptr %".2471"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".2474" = load i32, ptr %"R14"
  %".2475" = load i32, ptr %"R49"
  %"zext.293" = zext i32 %".2474" to i64
  %"zext.294" = zext i32 %".2475" to i64
  %"mul.39" = mul i64 %"zext.293", %"zext.294"
  %".2476" = ptrtoint ptr %"Arg_2" to i64
  %"add.115" = add i64 %"mul.39", %".2476"
  %".2477" = and i64 %"add.115", 18446744069414584320
  %".2478" = lshr i64 %".2477", 32
  %"trunc32.72" = trunc i64 %".2478" to i32
  %"trunc32.73" = trunc i64 %"add.115" to i32
  store i32 %"trunc32.73", ptr %"R14"
  store i32 %"trunc32.72", ptr %"R15"
  ; LDG.E.SYS R34, [R16+0x8]
  %".2482" = load i32, ptr %"R16"
  %"zext.295" = zext i32 %".2482" to i64
  %".2483" = load i32, ptr %"R17"
  %"zext.296" = zext i32 %".2483" to i64
  %"shl.123" = shl i64 %"zext.296", 32
  %"or.110" = or i64 %"shl.123", %"zext.295"
  %".2484" = inttoptr i64 %"or.110" to ptr
  %".2485" = ptrtoint ptr %".2484" to i64
  %".2486" = add i64 %".2485", 8
  %"for_LDG.100" = inttoptr i64 %".2486" to ptr
  %".2487" = load float, ptr %"for_LDG.100"
  %".2488" = bitcast ptr %"R34" to ptr
  store float %".2487", ptr %".2488"
  ; LDG.E.SYS R44, [R12+0xc]
  %".2491" = load i32, ptr %"R12"
  %"zext.297" = zext i32 %".2491" to i64
  %".2492" = load i32, ptr %"R13"
  %"zext.298" = zext i32 %".2492" to i64
  %"shl.124" = shl i64 %"zext.298", 32
  %"or.111" = or i64 %"shl.124", %"zext.297"
  %".2493" = inttoptr i64 %"or.111" to ptr
  %".2494" = ptrtoint ptr %".2493" to i64
  %".2495" = add i64 %".2494", 12
  %"for_LDG.101" = inttoptr i64 %".2495" to ptr
  %".2496" = load float, ptr %"for_LDG.101"
  %".2497" = bitcast ptr %"R44" to ptr
  store float %".2496", ptr %".2497"
  ; IADD3 R10, R22, 0x8, RZ
  %".2500" = load i32, ptr %"R22"
  %"add.116" = add i32 %".2500", 8
  %"add.117" = add i32 %"add.116", 0
  store i32 %"add.117", ptr %"R10"
  ; LDG.E.SYS R41, [R16+0xc]
  %".2503" = load i32, ptr %"R16"
  %"zext.299" = zext i32 %".2503" to i64
  %".2504" = load i32, ptr %"R17"
  %"zext.300" = zext i32 %".2504" to i64
  %"shl.125" = shl i64 %"zext.300", 32
  %"or.112" = or i64 %"shl.125", %"zext.299"
  %".2505" = inttoptr i64 %"or.112" to ptr
  %".2506" = ptrtoint ptr %".2505" to i64
  %".2507" = add i64 %".2506", 12
  %"for_LDG.102" = inttoptr i64 %".2507" to ptr
  %".2508" = load float, ptr %"for_LDG.102"
  %".2509" = bitcast ptr %"R41" to ptr
  store float %".2508", ptr %".2509"
  ; LDG.E.SYS R42, [R18]
  %".2512" = load i32, ptr %"R18"
  %"zext.301" = zext i32 %".2512" to i64
  %".2513" = load i32, ptr %"R19"
  %"zext.302" = zext i32 %".2513" to i64
  %"shl.126" = shl i64 %"zext.302", 32
  %"or.113" = or i64 %"shl.126", %"zext.301"
  %".2514" = inttoptr i64 %"or.113" to ptr
  %".2515" = ptrtoint ptr %".2514" to i64
  %".2516" = add i64 %".2515", 0
  %"for_LDG.103" = inttoptr i64 %".2516" to ptr
  %".2517" = load float, ptr %"for_LDG.103"
  %".2518" = bitcast ptr %"R42" to ptr
  store float %".2517", ptr %".2518"
  ; IADD3 R50, R3, R10, RZ
  %".2521" = load i32, ptr %"R3"
  %".2522" = load i32, ptr %"R10"
  %"add.118" = add i32 %".2521", %".2522"
  %"add.119" = add i32 %"add.118", 0
  store i32 %"add.119", ptr %"R50"
  ; LDG.E.SYS R39, [R14]
  %".2525" = load i32, ptr %"R14"
  %"zext.303" = zext i32 %".2525" to i64
  %".2526" = load i32, ptr %"R15"
  %"zext.304" = zext i32 %".2526" to i64
  %"shl.127" = shl i64 %"zext.304", 32
  %"or.114" = or i64 %"shl.127", %"zext.303"
  %".2527" = inttoptr i64 %"or.114" to ptr
  %".2528" = ptrtoint ptr %".2527" to i64
  %".2529" = add i64 %".2528", 0
  %"for_LDG.104" = inttoptr i64 %".2529" to ptr
  %".2530" = load float, ptr %"for_LDG.104"
  %".2531" = bitcast ptr %"R39" to ptr
  store float %".2530", ptr %".2531"
  ; LDG.E.SYS R40, [R18+0x4]
  %".2534" = load i32, ptr %"R18"
  %"zext.305" = zext i32 %".2534" to i64
  %".2535" = load i32, ptr %"R19"
  %"zext.306" = zext i32 %".2535" to i64
  %"shl.128" = shl i64 %"zext.306", 32
  %"or.115" = or i64 %"shl.128", %"zext.305"
  %".2536" = inttoptr i64 %"or.115" to ptr
  %".2537" = ptrtoint ptr %".2536" to i64
  %".2538" = add i64 %".2537", 4
  %"for_LDG.105" = inttoptr i64 %".2538" to ptr
  %".2539" = load float, ptr %"for_LDG.105"
  %".2540" = bitcast ptr %"R40" to ptr
  store float %".2539", ptr %".2540"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".2543" = load i32, ptr %"R10"
  %".2544" = load i32, ptr %"R49"
  %"zext.307" = zext i32 %".2543" to i64
  %"zext.308" = zext i32 %".2544" to i64
  %"mul.40" = mul i64 %"zext.307", %"zext.308"
  %".2545" = ptrtoint ptr %"Arg_1" to i64
  %"add.120" = add i64 %"mul.40", %".2545"
  %".2546" = and i64 %"add.120", 18446744069414584320
  %".2547" = lshr i64 %".2546", 32
  %"trunc32.74" = trunc i64 %".2547" to i32
  %"trunc32.75" = trunc i64 %"add.120" to i32
  store i32 %"trunc32.75", ptr %"R10"
  store i32 %"trunc32.74", ptr %"R11"
  ; LDG.E.SYS R37, [R14+0x4]
  %".2551" = load i32, ptr %"R14"
  %"zext.309" = zext i32 %".2551" to i64
  %".2552" = load i32, ptr %"R15"
  %"zext.310" = zext i32 %".2552" to i64
  %"shl.129" = shl i64 %"zext.310", 32
  %"or.116" = or i64 %"shl.129", %"zext.309"
  %".2553" = inttoptr i64 %"or.116" to ptr
  %".2554" = ptrtoint ptr %".2553" to i64
  %".2555" = add i64 %".2554", 4
  %"for_LDG.106" = inttoptr i64 %".2555" to ptr
  %".2556" = load float, ptr %"for_LDG.106"
  %".2557" = bitcast ptr %"R37" to ptr
  store float %".2556", ptr %".2557"
  ; LDG.E.SYS R38, [R18+0x8]
  %".2560" = load i32, ptr %"R18"
  %"zext.311" = zext i32 %".2560" to i64
  %".2561" = load i32, ptr %"R19"
  %"zext.312" = zext i32 %".2561" to i64
  %"shl.130" = shl i64 %"zext.312", 32
  %"or.117" = or i64 %"shl.130", %"zext.311"
  %".2562" = inttoptr i64 %"or.117" to ptr
  %".2563" = ptrtoint ptr %".2562" to i64
  %".2564" = add i64 %".2563", 8
  %"for_LDG.107" = inttoptr i64 %".2564" to ptr
  %".2565" = load float, ptr %"for_LDG.107"
  %".2566" = bitcast ptr %"R38" to ptr
  store float %".2565", ptr %".2566"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".2569" = load i32, ptr %"R50"
  %".2570" = load i32, ptr %"R49"
  %"zext.313" = zext i32 %".2569" to i64
  %"zext.314" = zext i32 %".2570" to i64
  %"mul.41" = mul i64 %"zext.313", %"zext.314"
  %".2571" = ptrtoint ptr %"Arg_2" to i64
  %"add.121" = add i64 %"mul.41", %".2571"
  %".2572" = and i64 %"add.121", 18446744069414584320
  %".2573" = lshr i64 %".2572", 32
  %"trunc32.76" = trunc i64 %".2573" to i32
  %"trunc32.77" = trunc i64 %"add.121" to i32
  store i32 %"trunc32.77", ptr %"R12"
  store i32 %"trunc32.76", ptr %"R13"
  ; LDG.E.SYS R35, [R14+0x8]
  %".2577" = load i32, ptr %"R14"
  %"zext.315" = zext i32 %".2577" to i64
  %".2578" = load i32, ptr %"R15"
  %"zext.316" = zext i32 %".2578" to i64
  %"shl.131" = shl i64 %"zext.316", 32
  %"or.118" = or i64 %"shl.131", %"zext.315"
  %".2579" = inttoptr i64 %"or.118" to ptr
  %".2580" = ptrtoint ptr %".2579" to i64
  %".2581" = add i64 %".2580", 8
  %"for_LDG.108" = inttoptr i64 %".2581" to ptr
  %".2582" = load float, ptr %"for_LDG.108"
  %".2583" = bitcast ptr %"R35" to ptr
  store float %".2582", ptr %".2583"
  ; LDG.E.SYS R48, [R18+0xc]
  %".2586" = load i32, ptr %"R18"
  %"zext.317" = zext i32 %".2586" to i64
  %".2587" = load i32, ptr %"R19"
  %"zext.318" = zext i32 %".2587" to i64
  %"shl.132" = shl i64 %"zext.318", 32
  %"or.119" = or i64 %"shl.132", %"zext.317"
  %".2588" = inttoptr i64 %"or.119" to ptr
  %".2589" = ptrtoint ptr %".2588" to i64
  %".2590" = add i64 %".2589", 12
  %"for_LDG.109" = inttoptr i64 %".2590" to ptr
  %".2591" = load float, ptr %"for_LDG.109"
  %".2592" = bitcast ptr %"R48" to ptr
  store float %".2591", ptr %".2592"
  ; IADD3 R16, R22, 0xc, RZ
  %".2595" = load i32, ptr %"R22"
  %"add.122" = add i32 %".2595", 12
  %"add.123" = add i32 %"add.122", 0
  store i32 %"add.123", ptr %"R16"
  ; LDG.E.SYS R47, [R14+0xc]
  %".2598" = load i32, ptr %"R14"
  %"zext.319" = zext i32 %".2598" to i64
  %".2599" = load i32, ptr %"R15"
  %"zext.320" = zext i32 %".2599" to i64
  %"shl.133" = shl i64 %"zext.320", 32
  %"or.120" = or i64 %"shl.133", %"zext.319"
  %".2600" = inttoptr i64 %"or.120" to ptr
  %".2601" = ptrtoint ptr %".2600" to i64
  %".2602" = add i64 %".2601", 12
  %"for_LDG.110" = inttoptr i64 %".2602" to ptr
  %".2603" = load float, ptr %"for_LDG.110"
  %".2604" = bitcast ptr %"R47" to ptr
  store float %".2603", ptr %".2604"
  ; LDG.E.SYS R54, [R10]
  %".2607" = load i32, ptr %"R10"
  %"zext.321" = zext i32 %".2607" to i64
  %".2608" = load i32, ptr %"R11"
  %"zext.322" = zext i32 %".2608" to i64
  %"shl.134" = shl i64 %"zext.322", 32
  %"or.121" = or i64 %"shl.134", %"zext.321"
  %".2609" = inttoptr i64 %"or.121" to ptr
  %".2610" = ptrtoint ptr %".2609" to i64
  %".2611" = add i64 %".2610", 0
  %"for_LDG.111" = inttoptr i64 %".2611" to ptr
  %".2612" = load float, ptr %"for_LDG.111"
  %".2613" = bitcast ptr %"R54" to ptr
  store float %".2612", ptr %".2613"
  ; IADD3 R58, R3, R16, RZ
  %".2616" = load i32, ptr %"R3"
  %".2617" = load i32, ptr %"R16"
  %"add.124" = add i32 %".2616", %".2617"
  %"add.125" = add i32 %"add.124", 0
  store i32 %"add.125", ptr %"R58"
  ; LDG.E.SYS R45, [R12]
  %".2620" = load i32, ptr %"R12"
  %"zext.323" = zext i32 %".2620" to i64
  %".2621" = load i32, ptr %"R13"
  %"zext.324" = zext i32 %".2621" to i64
  %"shl.135" = shl i64 %"zext.324", 32
  %"or.122" = or i64 %"shl.135", %"zext.323"
  %".2622" = inttoptr i64 %"or.122" to ptr
  %".2623" = ptrtoint ptr %".2622" to i64
  %".2624" = add i64 %".2623", 0
  %"for_LDG.112" = inttoptr i64 %".2624" to ptr
  %".2625" = load float, ptr %"for_LDG.112"
  %".2626" = bitcast ptr %"R45" to ptr
  store float %".2625", ptr %".2626"
  ; LDG.E.SYS R52, [R10+0x4]
  %".2629" = load i32, ptr %"R10"
  %"zext.325" = zext i32 %".2629" to i64
  %".2630" = load i32, ptr %"R11"
  %"zext.326" = zext i32 %".2630" to i64
  %"shl.136" = shl i64 %"zext.326", 32
  %"or.123" = or i64 %"shl.136", %"zext.325"
  %".2631" = inttoptr i64 %"or.123" to ptr
  %".2632" = ptrtoint ptr %".2631" to i64
  %".2633" = add i64 %".2632", 4
  %"for_LDG.113" = inttoptr i64 %".2633" to ptr
  %".2634" = load float, ptr %"for_LDG.113"
  %".2635" = bitcast ptr %"R52" to ptr
  store float %".2634", ptr %".2635"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".2638" = load i32, ptr %"R16"
  %".2639" = load i32, ptr %"R49"
  %"zext.327" = zext i32 %".2638" to i64
  %"zext.328" = zext i32 %".2639" to i64
  %"mul.42" = mul i64 %"zext.327", %"zext.328"
  %".2640" = ptrtoint ptr %"Arg_1" to i64
  %"add.126" = add i64 %"mul.42", %".2640"
  %".2641" = and i64 %"add.126", 18446744069414584320
  %".2642" = lshr i64 %".2641", 32
  %"trunc32.78" = trunc i64 %".2642" to i32
  %"trunc32.79" = trunc i64 %"add.126" to i32
  store i32 %"trunc32.79", ptr %"R16"
  store i32 %"trunc32.78", ptr %"R17"
  ; LDG.E.SYS R43, [R12+0x4]
  %".2646" = load i32, ptr %"R12"
  %"zext.329" = zext i32 %".2646" to i64
  %".2647" = load i32, ptr %"R13"
  %"zext.330" = zext i32 %".2647" to i64
  %"shl.137" = shl i64 %"zext.330", 32
  %"or.124" = or i64 %"shl.137", %"zext.329"
  %".2648" = inttoptr i64 %"or.124" to ptr
  %".2649" = ptrtoint ptr %".2648" to i64
  %".2650" = add i64 %".2649", 4
  %"for_LDG.114" = inttoptr i64 %".2650" to ptr
  %".2651" = load float, ptr %"for_LDG.114"
  %".2652" = bitcast ptr %"R43" to ptr
  store float %".2651", ptr %".2652"
  ; LDG.E.SYS R50, [R10+0x8]
  %".2655" = load i32, ptr %"R10"
  %"zext.331" = zext i32 %".2655" to i64
  %".2656" = load i32, ptr %"R11"
  %"zext.332" = zext i32 %".2656" to i64
  %"shl.138" = shl i64 %"zext.332", 32
  %"or.125" = or i64 %"shl.138", %"zext.331"
  %".2657" = inttoptr i64 %"or.125" to ptr
  %".2658" = ptrtoint ptr %".2657" to i64
  %".2659" = add i64 %".2658", 8
  %"for_LDG.115" = inttoptr i64 %".2659" to ptr
  %".2660" = load float, ptr %"for_LDG.115"
  %".2661" = bitcast ptr %"R50" to ptr
  store float %".2660", ptr %".2661"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".2664" = load i32, ptr %"R58"
  %".2665" = load i32, ptr %"R49"
  %"zext.333" = zext i32 %".2664" to i64
  %"zext.334" = zext i32 %".2665" to i64
  %"mul.43" = mul i64 %"zext.333", %"zext.334"
  %".2666" = ptrtoint ptr %"Arg_2" to i64
  %"add.127" = add i64 %"mul.43", %".2666"
  %".2667" = and i64 %"add.127", 18446744069414584320
  %".2668" = lshr i64 %".2667", 32
  %"trunc32.80" = trunc i64 %".2668" to i32
  %"trunc32.81" = trunc i64 %"add.127" to i32
  store i32 %"trunc32.81", ptr %"R14"
  store i32 %"trunc32.80", ptr %"R15"
  ; LDG.E.SYS R18, [R12+0x8]
  %".2672" = load i32, ptr %"R12"
  %"zext.335" = zext i32 %".2672" to i64
  %".2673" = load i32, ptr %"R13"
  %"zext.336" = zext i32 %".2673" to i64
  %"shl.139" = shl i64 %"zext.336", 32
  %"or.126" = or i64 %"shl.139", %"zext.335"
  %".2674" = inttoptr i64 %"or.126" to ptr
  %".2675" = ptrtoint ptr %".2674" to i64
  %".2676" = add i64 %".2675", 8
  %"for_LDG.116" = inttoptr i64 %".2676" to ptr
  %".2677" = load float, ptr %"for_LDG.116"
  %".2678" = bitcast ptr %"R18" to ptr
  store float %".2677", ptr %".2678"
  ; LDG.E.SYS R56, [R10+0xc]
  %".2681" = load i32, ptr %"R10"
  %"zext.337" = zext i32 %".2681" to i64
  %".2682" = load i32, ptr %"R11"
  %"zext.338" = zext i32 %".2682" to i64
  %"shl.140" = shl i64 %"zext.338", 32
  %"or.127" = or i64 %"shl.140", %"zext.337"
  %".2683" = inttoptr i64 %"or.127" to ptr
  %".2684" = ptrtoint ptr %".2683" to i64
  %".2685" = add i64 %".2684", 12
  %"for_LDG.117" = inttoptr i64 %".2685" to ptr
  %".2686" = load float, ptr %"for_LDG.117"
  %".2687" = bitcast ptr %"R56" to ptr
  store float %".2686", ptr %".2687"
  ; LDG.E.SYS R55, [R12+0xc]
  %".2690" = load i32, ptr %"R12"
  %"zext.339" = zext i32 %".2690" to i64
  %".2691" = load i32, ptr %"R13"
  %"zext.340" = zext i32 %".2691" to i64
  %"shl.141" = shl i64 %"zext.340", 32
  %"or.128" = or i64 %"shl.141", %"zext.339"
  %".2692" = inttoptr i64 %"or.128" to ptr
  %".2693" = ptrtoint ptr %".2692" to i64
  %".2694" = add i64 %".2693", 12
  %"for_LDG.118" = inttoptr i64 %".2694" to ptr
  %".2695" = load float, ptr %"for_LDG.118"
  %".2696" = bitcast ptr %"R55" to ptr
  store float %".2695", ptr %".2696"
  ; LDG.E.SYS R51, [R16]
  %".2699" = load i32, ptr %"R16"
  %"zext.341" = zext i32 %".2699" to i64
  %".2700" = load i32, ptr %"R17"
  %"zext.342" = zext i32 %".2700" to i64
  %"shl.142" = shl i64 %"zext.342", 32
  %"or.129" = or i64 %"shl.142", %"zext.341"
  %".2701" = inttoptr i64 %"or.129" to ptr
  %".2702" = ptrtoint ptr %".2701" to i64
  %".2703" = add i64 %".2702", 0
  %"for_LDG.119" = inttoptr i64 %".2703" to ptr
  %".2704" = load float, ptr %"for_LDG.119"
  %".2705" = bitcast ptr %"R51" to ptr
  store float %".2704", ptr %".2705"
  ; LDG.E.SYS R53, [R14]
  %".2708" = load i32, ptr %"R14"
  %"zext.343" = zext i32 %".2708" to i64
  %".2709" = load i32, ptr %"R15"
  %"zext.344" = zext i32 %".2709" to i64
  %"shl.143" = shl i64 %"zext.344", 32
  %"or.130" = or i64 %"shl.143", %"zext.343"
  %".2710" = inttoptr i64 %"or.130" to ptr
  %".2711" = ptrtoint ptr %".2710" to i64
  %".2712" = add i64 %".2711", 0
  %"for_LDG.120" = inttoptr i64 %".2712" to ptr
  %".2713" = load float, ptr %"for_LDG.120"
  %".2714" = bitcast ptr %"R53" to ptr
  store float %".2713", ptr %".2714"
  ; LDG.E.SYS R60, [R16+0x4]
  %".2717" = load i32, ptr %"R16"
  %"zext.345" = zext i32 %".2717" to i64
  %".2718" = load i32, ptr %"R17"
  %"zext.346" = zext i32 %".2718" to i64
  %"shl.144" = shl i64 %"zext.346", 32
  %"or.131" = or i64 %"shl.144", %"zext.345"
  %".2719" = inttoptr i64 %"or.131" to ptr
  %".2720" = ptrtoint ptr %".2719" to i64
  %".2721" = add i64 %".2720", 4
  %"for_LDG.121" = inttoptr i64 %".2721" to ptr
  %".2722" = load float, ptr %"for_LDG.121"
  %".2723" = bitcast ptr %"R60" to ptr
  store float %".2722", ptr %".2723"
  ; LDG.E.SYS R49, [R14+0x4]
  %".2726" = load i32, ptr %"R14"
  %"zext.347" = zext i32 %".2726" to i64
  %".2727" = load i32, ptr %"R15"
  %"zext.348" = zext i32 %".2727" to i64
  %"shl.145" = shl i64 %"zext.348", 32
  %"or.132" = or i64 %"shl.145", %"zext.347"
  %".2728" = inttoptr i64 %"or.132" to ptr
  %".2729" = ptrtoint ptr %".2728" to i64
  %".2730" = add i64 %".2729", 4
  %"for_LDG.122" = inttoptr i64 %".2730" to ptr
  %".2731" = load float, ptr %"for_LDG.122"
  %".2732" = bitcast ptr %"R49" to ptr
  store float %".2731", ptr %".2732"
  ; LDG.E.SYS R58, [R16+0x8]
  %".2735" = load i32, ptr %"R16"
  %"zext.349" = zext i32 %".2735" to i64
  %".2736" = load i32, ptr %"R17"
  %"zext.350" = zext i32 %".2736" to i64
  %"shl.146" = shl i64 %"zext.350", 32
  %"or.133" = or i64 %"shl.146", %"zext.349"
  %".2737" = inttoptr i64 %"or.133" to ptr
  %".2738" = ptrtoint ptr %".2737" to i64
  %".2739" = add i64 %".2738", 8
  %"for_LDG.123" = inttoptr i64 %".2739" to ptr
  %".2740" = load float, ptr %"for_LDG.123"
  %".2741" = bitcast ptr %"R58" to ptr
  store float %".2740", ptr %".2741"
  ; LDG.E.SYS R19, [R14+0x8]
  %".2744" = load i32, ptr %"R14"
  %"zext.351" = zext i32 %".2744" to i64
  %".2745" = load i32, ptr %"R15"
  %"zext.352" = zext i32 %".2745" to i64
  %"shl.147" = shl i64 %"zext.352", 32
  %"or.134" = or i64 %"shl.147", %"zext.351"
  %".2746" = inttoptr i64 %"or.134" to ptr
  %".2747" = ptrtoint ptr %".2746" to i64
  %".2748" = add i64 %".2747", 8
  %"for_LDG.124" = inttoptr i64 %".2748" to ptr
  %".2749" = load float, ptr %"for_LDG.124"
  %".2750" = bitcast ptr %"R19" to ptr
  store float %".2749", ptr %".2750"
  ; LDG.E.SYS R57, [R16+0xc]
  %".2753" = load i32, ptr %"R16"
  %"zext.353" = zext i32 %".2753" to i64
  %".2754" = load i32, ptr %"R17"
  %"zext.354" = zext i32 %".2754" to i64
  %"shl.148" = shl i64 %"zext.354", 32
  %"or.135" = or i64 %"shl.148", %"zext.353"
  %".2755" = inttoptr i64 %"or.135" to ptr
  %".2756" = ptrtoint ptr %".2755" to i64
  %".2757" = add i64 %".2756", 12
  %"for_LDG.125" = inttoptr i64 %".2757" to ptr
  %".2758" = load float, ptr %"for_LDG.125"
  %".2759" = bitcast ptr %"R57" to ptr
  store float %".2758", ptr %".2759"
  ; LDG.E.SYS R59, [R14+0xc]
  %".2762" = load i32, ptr %"R14"
  %"zext.355" = zext i32 %".2762" to i64
  %".2763" = load i32, ptr %"R15"
  %"zext.356" = zext i32 %".2763" to i64
  %"shl.149" = shl i64 %"zext.356", 32
  %"or.136" = or i64 %"shl.149", %"zext.355"
  %".2764" = inttoptr i64 %"or.136" to ptr
  %".2765" = ptrtoint ptr %".2764" to i64
  %".2766" = add i64 %".2765", 12
  %"for_LDG.126" = inttoptr i64 %".2766" to ptr
  %".2767" = load float, ptr %"for_LDG.126"
  %".2768" = bitcast ptr %"R59" to ptr
  store float %".2767", ptr %".2768"
  ; IADD3 R23, R23, -0x10, RZ
  %".2771" = load i32, ptr %"R23"
  %"add.128" = add i32 %".2771", -16
  %"add.129" = add i32 %"add.128", 0
  store i32 %"add.129", ptr %"R23"
  ; IADD3 R22, R22, 0x10, RZ
  %".2774" = load i32, ptr %"R22"
  %"add.130" = add i32 %".2774", 16
  %"add.131" = add i32 %"add.130", 0
  store i32 %"add.131", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2777" = load i32, ptr %"R23"
  %".2778" = load i1, ptr %"PT"
  %"cmp.23" = icmp sgt i32 %".2777", 12
  %".2779" = and i1 %"cmp.23", %".2778"
  store i1 %".2779", ptr %"P1"
  ; FMUL R24, R24, R9
  %".2782" = load float, ptr %"R24"
  %".2783" = load float, ptr %"R9"
  %"fmul.85" = fmul float %".2782", %".2783"
  %".2784" = bitcast ptr %"R24" to ptr
  store float %"fmul.85", ptr %".2784"
  ; FFMA R24, R24, R21, R8
  %".2787" = load float, ptr %"R24"
  %".2788" = load float, ptr %"R21"
  %".2789" = load float, ptr %"R8"
  %"fmul.86" = fmul float %".2787", %".2788"
  %"fadd.93" = fadd float %"fmul.86", %".2789"
  %".2790" = bitcast ptr %"R24" to ptr
  store float %"fadd.93", ptr %".2790"
  ; FMUL R36, R36, R9
  %".2793" = load float, ptr %"R36"
  %".2794" = load float, ptr %"R9"
  %"fmul.87" = fmul float %".2793", %".2794"
  %".2795" = bitcast ptr %"R36" to ptr
  store float %"fmul.87", ptr %".2795"
  ; FFMA R25, R36, R25, R24
  %".2798" = load float, ptr %"R36"
  %".2799" = load float, ptr %"R25"
  %".2800" = load float, ptr %"R24"
  %"fmul.88" = fmul float %".2798", %".2799"
  %"fadd.94" = fadd float %"fmul.88", %".2800"
  %".2801" = bitcast ptr %"R25" to ptr
  store float %"fadd.94", ptr %".2801"
  ; FMUL R46, R46, R9
  %".2804" = load float, ptr %"R46"
  %".2805" = load float, ptr %"R9"
  %"fmul.89" = fmul float %".2804", %".2805"
  %".2806" = bitcast ptr %"R46" to ptr
  store float %"fmul.89", ptr %".2806"
  ; FFMA R34, R46, R34, R25
  %".2809" = load float, ptr %"R46"
  %".2810" = load float, ptr %"R34"
  %".2811" = load float, ptr %"R25"
  %"fmul.90" = fmul float %".2809", %".2810"
  %"fadd.95" = fadd float %"fmul.90", %".2811"
  %".2812" = bitcast ptr %"R34" to ptr
  store float %"fadd.95", ptr %".2812"
  ; FMUL R44, R44, R9
  %".2815" = load float, ptr %"R44"
  %".2816" = load float, ptr %"R9"
  %"fmul.91" = fmul float %".2815", %".2816"
  %".2817" = bitcast ptr %"R44" to ptr
  store float %"fmul.91", ptr %".2817"
  ; FFMA R34, R44, R41, R34
  %".2820" = load float, ptr %"R44"
  %".2821" = load float, ptr %"R41"
  %".2822" = load float, ptr %"R34"
  %"fmul.92" = fmul float %".2820", %".2821"
  %"fadd.96" = fadd float %"fmul.92", %".2822"
  %".2823" = bitcast ptr %"R34" to ptr
  store float %"fadd.96", ptr %".2823"
  ; FMUL R42, R42, R9
  %".2826" = load float, ptr %"R42"
  %".2827" = load float, ptr %"R9"
  %"fmul.93" = fmul float %".2826", %".2827"
  %".2828" = bitcast ptr %"R42" to ptr
  store float %"fmul.93", ptr %".2828"
  ; FFMA R34, R42, R39, R34
  %".2831" = load float, ptr %"R42"
  %".2832" = load float, ptr %"R39"
  %".2833" = load float, ptr %"R34"
  %"fmul.94" = fmul float %".2831", %".2832"
  %"fadd.97" = fadd float %"fmul.94", %".2833"
  %".2834" = bitcast ptr %"R34" to ptr
  store float %"fadd.97", ptr %".2834"
  ; FMUL R40, R40, R9
  %".2837" = load float, ptr %"R40"
  %".2838" = load float, ptr %"R9"
  %"fmul.95" = fmul float %".2837", %".2838"
  %".2839" = bitcast ptr %"R40" to ptr
  store float %"fmul.95", ptr %".2839"
  ; FFMA R34, R40, R37, R34
  %".2842" = load float, ptr %"R40"
  %".2843" = load float, ptr %"R37"
  %".2844" = load float, ptr %"R34"
  %"fmul.96" = fmul float %".2842", %".2843"
  %"fadd.98" = fadd float %"fmul.96", %".2844"
  %".2845" = bitcast ptr %"R34" to ptr
  store float %"fadd.98", ptr %".2845"
  ; FMUL R38, R38, R9
  %".2848" = load float, ptr %"R38"
  %".2849" = load float, ptr %"R9"
  %"fmul.97" = fmul float %".2848", %".2849"
  %".2850" = bitcast ptr %"R38" to ptr
  store float %"fmul.97", ptr %".2850"
  ; FFMA R34, R38, R35, R34
  %".2853" = load float, ptr %"R38"
  %".2854" = load float, ptr %"R35"
  %".2855" = load float, ptr %"R34"
  %"fmul.98" = fmul float %".2853", %".2854"
  %"fadd.99" = fadd float %"fmul.98", %".2855"
  %".2856" = bitcast ptr %"R34" to ptr
  store float %"fadd.99", ptr %".2856"
  ; FMUL R48, R48, R9
  %".2859" = load float, ptr %"R48"
  %".2860" = load float, ptr %"R9"
  %"fmul.99" = fmul float %".2859", %".2860"
  %".2861" = bitcast ptr %"R48" to ptr
  store float %"fmul.99", ptr %".2861"
  ; FFMA R34, R48, R47, R34
  %".2864" = load float, ptr %"R48"
  %".2865" = load float, ptr %"R47"
  %".2866" = load float, ptr %"R34"
  %"fmul.100" = fmul float %".2864", %".2865"
  %"fadd.100" = fadd float %"fmul.100", %".2866"
  %".2867" = bitcast ptr %"R34" to ptr
  store float %"fadd.100", ptr %".2867"
  ; FMUL R54, R54, R9
  %".2870" = load float, ptr %"R54"
  %".2871" = load float, ptr %"R9"
  %"fmul.101" = fmul float %".2870", %".2871"
  %".2872" = bitcast ptr %"R54" to ptr
  store float %"fmul.101", ptr %".2872"
  ; FFMA R34, R54, R45, R34
  %".2875" = load float, ptr %"R54"
  %".2876" = load float, ptr %"R45"
  %".2877" = load float, ptr %"R34"
  %"fmul.102" = fmul float %".2875", %".2876"
  %"fadd.101" = fadd float %"fmul.102", %".2877"
  %".2878" = bitcast ptr %"R34" to ptr
  store float %"fadd.101", ptr %".2878"
  ; FMUL R52, R52, R9
  %".2881" = load float, ptr %"R52"
  %".2882" = load float, ptr %"R9"
  %"fmul.103" = fmul float %".2881", %".2882"
  %".2883" = bitcast ptr %"R52" to ptr
  store float %"fmul.103", ptr %".2883"
  ; FFMA R43, R52, R43, R34
  %".2886" = load float, ptr %"R52"
  %".2887" = load float, ptr %"R43"
  %".2888" = load float, ptr %"R34"
  %"fmul.104" = fmul float %".2886", %".2887"
  %"fadd.102" = fadd float %"fmul.104", %".2888"
  %".2889" = bitcast ptr %"R43" to ptr
  store float %"fadd.102", ptr %".2889"
  ; FMUL R50, R50, R9
  %".2892" = load float, ptr %"R50"
  %".2893" = load float, ptr %"R9"
  %"fmul.105" = fmul float %".2892", %".2893"
  %".2894" = bitcast ptr %"R50" to ptr
  store float %"fmul.105", ptr %".2894"
  ; FFMA R18, R50, R18, R43
  %".2897" = load float, ptr %"R50"
  %".2898" = load float, ptr %"R18"
  %".2899" = load float, ptr %"R43"
  %"fmul.106" = fmul float %".2897", %".2898"
  %"fadd.103" = fadd float %"fmul.106", %".2899"
  %".2900" = bitcast ptr %"R18" to ptr
  store float %"fadd.103", ptr %".2900"
  ; FMUL R56, R56, R9
  %".2903" = load float, ptr %"R56"
  %".2904" = load float, ptr %"R9"
  %"fmul.107" = fmul float %".2903", %".2904"
  %".2905" = bitcast ptr %"R56" to ptr
  store float %"fmul.107", ptr %".2905"
  ; FFMA R18, R56, R55, R18
  %".2908" = load float, ptr %"R56"
  %".2909" = load float, ptr %"R55"
  %".2910" = load float, ptr %"R18"
  %"fmul.108" = fmul float %".2908", %".2909"
  %"fadd.104" = fadd float %"fmul.108", %".2910"
  %".2911" = bitcast ptr %"R18" to ptr
  store float %"fadd.104", ptr %".2911"
  ; FMUL R51, R51, R9
  %".2914" = load float, ptr %"R51"
  %".2915" = load float, ptr %"R9"
  %"fmul.109" = fmul float %".2914", %".2915"
  %".2916" = bitcast ptr %"R51" to ptr
  store float %"fmul.109", ptr %".2916"
  ; FFMA R18, R51, R53, R18
  %".2919" = load float, ptr %"R51"
  %".2920" = load float, ptr %"R53"
  %".2921" = load float, ptr %"R18"
  %"fmul.110" = fmul float %".2919", %".2920"
  %"fadd.105" = fadd float %"fmul.110", %".2921"
  %".2922" = bitcast ptr %"R18" to ptr
  store float %"fadd.105", ptr %".2922"
  ; FMUL R60, R60, R9
  %".2925" = load float, ptr %"R60"
  %".2926" = load float, ptr %"R9"
  %"fmul.111" = fmul float %".2925", %".2926"
  %".2927" = bitcast ptr %"R60" to ptr
  store float %"fmul.111", ptr %".2927"
  ; FFMA R18, R60, R49, R18
  %".2930" = load float, ptr %"R60"
  %".2931" = load float, ptr %"R49"
  %".2932" = load float, ptr %"R18"
  %"fmul.112" = fmul float %".2930", %".2931"
  %"fadd.106" = fadd float %"fmul.112", %".2932"
  %".2933" = bitcast ptr %"R18" to ptr
  store float %"fadd.106", ptr %".2933"
  ; FMUL R58, R58, R9
  %".2936" = load float, ptr %"R58"
  %".2937" = load float, ptr %"R9"
  %"fmul.113" = fmul float %".2936", %".2937"
  %".2938" = bitcast ptr %"R58" to ptr
  store float %"fmul.113", ptr %".2938"
  ; FFMA R18, R58, R19, R18
  %".2941" = load float, ptr %"R58"
  %".2942" = load float, ptr %"R19"
  %".2943" = load float, ptr %"R18"
  %"fmul.114" = fmul float %".2941", %".2942"
  %"fadd.107" = fadd float %"fmul.114", %".2943"
  %".2944" = bitcast ptr %"R18" to ptr
  store float %"fadd.107", ptr %".2944"
  ; FMUL R57, R57, R9
  %".2947" = load float, ptr %"R57"
  %".2948" = load float, ptr %"R9"
  %"fmul.115" = fmul float %".2947", %".2948"
  %".2949" = bitcast ptr %"R57" to ptr
  store float %"fmul.115", ptr %".2949"
  ; FFMA R8, R57, R59, R18
  %".2952" = load float, ptr %"R57"
  %".2953" = load float, ptr %"R59"
  %".2954" = load float, ptr %"R18"
  %"fmul.116" = fmul float %".2952", %".2953"
  %"fadd.108" = fadd float %"fmul.116", %".2954"
  %".2955" = bitcast ptr %"R8" to ptr
  store float %"fadd.108", ptr %".2955"
  ; @P1 BRA `(.L_x_14)
  %".2958" = load i1, ptr %"P1"
  %".2959" = icmp ne i1 %".2958", 1
  br i1 %".2959", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".2962" = load i32, ptr %"R23"
  %".2963" = load i1, ptr %"PT"
  %"cmp.24" = icmp sgt i32 %".2962", 4
  %".2964" = and i1 %"cmp.24", %".2963"
  store i1 %".2964", ptr %"P1"
  ; @!P1 BRA `(.L_x_15)
  %".2967" = load i1, ptr %"P1"
  %".2968" = icmp eq i1 %".2967", 1
  br i1 %".2968", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R16, R3, R22, RZ
  %".2973" = load i32, ptr %"R3"
  %".2974" = load i32, ptr %"R22"
  %"add.132" = add i32 %".2973", %".2974"
  %"add.133" = add i32 %"add.132", 0
  store i32 %"add.133", ptr %"R16"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".2977" = load i32, ptr %"R22"
  %".2978" = load i32, ptr %"R13"
  %"zext.357" = zext i32 %".2977" to i64
  %"zext.358" = zext i32 %".2978" to i64
  %"mul.44" = mul i64 %"zext.357", %"zext.358"
  %".2979" = ptrtoint ptr %"Arg_1" to i64
  %"add.134" = add i64 %"mul.44", %".2979"
  %".2980" = and i64 %"add.134", 18446744069414584320
  %".2981" = lshr i64 %".2980", 32
  %"trunc32.82" = trunc i64 %".2981" to i32
  %"trunc32.83" = trunc i64 %"add.134" to i32
  store i32 %"trunc32.83", ptr %"R14"
  store i32 %"trunc32.82", ptr %"R15"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".2985" = load i32, ptr %"R16"
  %".2986" = load i32, ptr %"R13"
  %"zext.359" = zext i32 %".2985" to i64
  %"zext.360" = zext i32 %".2986" to i64
  %"mul.45" = mul i64 %"zext.359", %"zext.360"
  %".2987" = ptrtoint ptr %"Arg_2" to i64
  %"add.135" = add i64 %"mul.45", %".2987"
  %".2988" = and i64 %"add.135", 18446744069414584320
  %".2989" = lshr i64 %".2988", 32
  %"trunc32.84" = trunc i64 %".2989" to i32
  %"trunc32.85" = trunc i64 %"add.135" to i32
  store i32 %"trunc32.85", ptr %"R16"
  store i32 %"trunc32.84", ptr %"R17"
  ; IADD3 R10, R22, 0x4, RZ
  %".2993" = load i32, ptr %"R22"
  %"add.136" = add i32 %".2993", 4
  %"add.137" = add i32 %"add.136", 0
  store i32 %"add.137", ptr %"R10"
  ; LDG.E.SYS R18, [R14]
  %".2996" = load i32, ptr %"R14"
  %"zext.361" = zext i32 %".2996" to i64
  %".2997" = load i32, ptr %"R15"
  %"zext.362" = zext i32 %".2997" to i64
  %"shl.150" = shl i64 %"zext.362", 32
  %"or.137" = or i64 %"shl.150", %"zext.361"
  %".2998" = inttoptr i64 %"or.137" to ptr
  %".2999" = ptrtoint ptr %".2998" to i64
  %".3000" = add i64 %".2999", 0
  %"for_LDG.127" = inttoptr i64 %".3000" to ptr
  %".3001" = load float, ptr %"for_LDG.127"
  %".3002" = bitcast ptr %"R18" to ptr
  store float %".3001", ptr %".3002"
  ; IADD3 R12, R3, R10, RZ
  %".3005" = load i32, ptr %"R3"
  %".3006" = load i32, ptr %"R10"
  %"add.138" = add i32 %".3005", %".3006"
  %"add.139" = add i32 %"add.138", 0
  store i32 %"add.139", ptr %"R12"
  ; LDG.E.SYS R19, [R16]
  %".3009" = load i32, ptr %"R16"
  %"zext.363" = zext i32 %".3009" to i64
  %".3010" = load i32, ptr %"R17"
  %"zext.364" = zext i32 %".3010" to i64
  %"shl.151" = shl i64 %"zext.364", 32
  %"or.138" = or i64 %"shl.151", %"zext.363"
  %".3011" = inttoptr i64 %"or.138" to ptr
  %".3012" = ptrtoint ptr %".3011" to i64
  %".3013" = add i64 %".3012", 0
  %"for_LDG.128" = inttoptr i64 %".3013" to ptr
  %".3014" = load float, ptr %"for_LDG.128"
  %".3015" = bitcast ptr %"R19" to ptr
  store float %".3014", ptr %".3015"
  ; LDG.E.SYS R24, [R14+0x4]
  %".3018" = load i32, ptr %"R14"
  %"zext.365" = zext i32 %".3018" to i64
  %".3019" = load i32, ptr %"R15"
  %"zext.366" = zext i32 %".3019" to i64
  %"shl.152" = shl i64 %"zext.366", 32
  %"or.139" = or i64 %"shl.152", %"zext.365"
  %".3020" = inttoptr i64 %"or.139" to ptr
  %".3021" = ptrtoint ptr %".3020" to i64
  %".3022" = add i64 %".3021", 4
  %"for_LDG.129" = inttoptr i64 %".3022" to ptr
  %".3023" = load float, ptr %"for_LDG.129"
  %".3024" = bitcast ptr %"R24" to ptr
  store float %".3023", ptr %".3024"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".3027" = load i32, ptr %"R10"
  %".3028" = load i32, ptr %"R13"
  %"zext.367" = zext i32 %".3027" to i64
  %"zext.368" = zext i32 %".3028" to i64
  %"mul.46" = mul i64 %"zext.367", %"zext.368"
  %".3029" = ptrtoint ptr %"Arg_1" to i64
  %"add.140" = add i64 %"mul.46", %".3029"
  %".3030" = and i64 %"add.140", 18446744069414584320
  %".3031" = lshr i64 %".3030", 32
  %"trunc32.86" = trunc i64 %".3031" to i32
  %"trunc32.87" = trunc i64 %"add.140" to i32
  store i32 %"trunc32.87", ptr %"R10"
  store i32 %"trunc32.86", ptr %"R11"
  ; LDG.E.SYS R21, [R16+0x4]
  %".3035" = load i32, ptr %"R16"
  %"zext.369" = zext i32 %".3035" to i64
  %".3036" = load i32, ptr %"R17"
  %"zext.370" = zext i32 %".3036" to i64
  %"shl.153" = shl i64 %"zext.370", 32
  %"or.140" = or i64 %"shl.153", %"zext.369"
  %".3037" = inttoptr i64 %"or.140" to ptr
  %".3038" = ptrtoint ptr %".3037" to i64
  %".3039" = add i64 %".3038", 4
  %"for_LDG.130" = inttoptr i64 %".3039" to ptr
  %".3040" = load float, ptr %"for_LDG.130"
  %".3041" = bitcast ptr %"R21" to ptr
  store float %".3040", ptr %".3041"
  ; LDG.E.SYS R34, [R14+0x8]
  %".3044" = load i32, ptr %"R14"
  %"zext.371" = zext i32 %".3044" to i64
  %".3045" = load i32, ptr %"R15"
  %"zext.372" = zext i32 %".3045" to i64
  %"shl.154" = shl i64 %"zext.372", 32
  %"or.141" = or i64 %"shl.154", %"zext.371"
  %".3046" = inttoptr i64 %"or.141" to ptr
  %".3047" = ptrtoint ptr %".3046" to i64
  %".3048" = add i64 %".3047", 8
  %"for_LDG.131" = inttoptr i64 %".3048" to ptr
  %".3049" = load float, ptr %"for_LDG.131"
  %".3050" = bitcast ptr %"R34" to ptr
  store float %".3049", ptr %".3050"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".3053" = load i32, ptr %"R12"
  %".3054" = load i32, ptr %"R13"
  %"zext.373" = zext i32 %".3053" to i64
  %"zext.374" = zext i32 %".3054" to i64
  %"mul.47" = mul i64 %"zext.373", %"zext.374"
  %".3055" = ptrtoint ptr %"Arg_2" to i64
  %"add.141" = add i64 %"mul.47", %".3055"
  %".3056" = and i64 %"add.141", 18446744069414584320
  %".3057" = lshr i64 %".3056", 32
  %"trunc32.88" = trunc i64 %".3057" to i32
  %"trunc32.89" = trunc i64 %"add.141" to i32
  store i32 %"trunc32.89", ptr %"R12"
  store i32 %"trunc32.88", ptr %"R13"
  ; LDG.E.SYS R25, [R16+0x8]
  %".3061" = load i32, ptr %"R16"
  %"zext.375" = zext i32 %".3061" to i64
  %".3062" = load i32, ptr %"R17"
  %"zext.376" = zext i32 %".3062" to i64
  %"shl.155" = shl i64 %"zext.376", 32
  %"or.142" = or i64 %"shl.155", %"zext.375"
  %".3063" = inttoptr i64 %"or.142" to ptr
  %".3064" = ptrtoint ptr %".3063" to i64
  %".3065" = add i64 %".3064", 8
  %"for_LDG.132" = inttoptr i64 %".3065" to ptr
  %".3066" = load float, ptr %"for_LDG.132"
  %".3067" = bitcast ptr %"R25" to ptr
  store float %".3066", ptr %".3067"
  ; LDG.E.SYS R36, [R14+0xc]
  %".3070" = load i32, ptr %"R14"
  %"zext.377" = zext i32 %".3070" to i64
  %".3071" = load i32, ptr %"R15"
  %"zext.378" = zext i32 %".3071" to i64
  %"shl.156" = shl i64 %"zext.378", 32
  %"or.143" = or i64 %"shl.156", %"zext.377"
  %".3072" = inttoptr i64 %"or.143" to ptr
  %".3073" = ptrtoint ptr %".3072" to i64
  %".3074" = add i64 %".3073", 12
  %"for_LDG.133" = inttoptr i64 %".3074" to ptr
  %".3075" = load float, ptr %"for_LDG.133"
  %".3076" = bitcast ptr %"R36" to ptr
  store float %".3075", ptr %".3076"
  ; LDG.E.SYS R35, [R16+0xc]
  %".3079" = load i32, ptr %"R16"
  %"zext.379" = zext i32 %".3079" to i64
  %".3080" = load i32, ptr %"R17"
  %"zext.380" = zext i32 %".3080" to i64
  %"shl.157" = shl i64 %"zext.380", 32
  %"or.144" = or i64 %"shl.157", %"zext.379"
  %".3081" = inttoptr i64 %"or.144" to ptr
  %".3082" = ptrtoint ptr %".3081" to i64
  %".3083" = add i64 %".3082", 12
  %"for_LDG.134" = inttoptr i64 %".3083" to ptr
  %".3084" = load float, ptr %"for_LDG.134"
  %".3085" = bitcast ptr %"R35" to ptr
  store float %".3084", ptr %".3085"
  ; LDG.E.SYS R38, [R10]
  %".3088" = load i32, ptr %"R10"
  %"zext.381" = zext i32 %".3088" to i64
  %".3089" = load i32, ptr %"R11"
  %"zext.382" = zext i32 %".3089" to i64
  %"shl.158" = shl i64 %"zext.382", 32
  %"or.145" = or i64 %"shl.158", %"zext.381"
  %".3090" = inttoptr i64 %"or.145" to ptr
  %".3091" = ptrtoint ptr %".3090" to i64
  %".3092" = add i64 %".3091", 0
  %"for_LDG.135" = inttoptr i64 %".3092" to ptr
  %".3093" = load float, ptr %"for_LDG.135"
  %".3094" = bitcast ptr %"R38" to ptr
  store float %".3093", ptr %".3094"
  ; LDG.E.SYS R37, [R12]
  %".3097" = load i32, ptr %"R12"
  %"zext.383" = zext i32 %".3097" to i64
  %".3098" = load i32, ptr %"R13"
  %"zext.384" = zext i32 %".3098" to i64
  %"shl.159" = shl i64 %"zext.384", 32
  %"or.146" = or i64 %"shl.159", %"zext.383"
  %".3099" = inttoptr i64 %"or.146" to ptr
  %".3100" = ptrtoint ptr %".3099" to i64
  %".3101" = add i64 %".3100", 0
  %"for_LDG.136" = inttoptr i64 %".3101" to ptr
  %".3102" = load float, ptr %"for_LDG.136"
  %".3103" = bitcast ptr %"R37" to ptr
  store float %".3102", ptr %".3103"
  ; LDG.E.SYS R40, [R10+0x4]
  %".3106" = load i32, ptr %"R10"
  %"zext.385" = zext i32 %".3106" to i64
  %".3107" = load i32, ptr %"R11"
  %"zext.386" = zext i32 %".3107" to i64
  %"shl.160" = shl i64 %"zext.386", 32
  %"or.147" = or i64 %"shl.160", %"zext.385"
  %".3108" = inttoptr i64 %"or.147" to ptr
  %".3109" = ptrtoint ptr %".3108" to i64
  %".3110" = add i64 %".3109", 4
  %"for_LDG.137" = inttoptr i64 %".3110" to ptr
  %".3111" = load float, ptr %"for_LDG.137"
  %".3112" = bitcast ptr %"R40" to ptr
  store float %".3111", ptr %".3112"
  ; LDG.E.SYS R39, [R12+0x4]
  %".3115" = load i32, ptr %"R12"
  %"zext.387" = zext i32 %".3115" to i64
  %".3116" = load i32, ptr %"R13"
  %"zext.388" = zext i32 %".3116" to i64
  %"shl.161" = shl i64 %"zext.388", 32
  %"or.148" = or i64 %"shl.161", %"zext.387"
  %".3117" = inttoptr i64 %"or.148" to ptr
  %".3118" = ptrtoint ptr %".3117" to i64
  %".3119" = add i64 %".3118", 4
  %"for_LDG.138" = inttoptr i64 %".3119" to ptr
  %".3120" = load float, ptr %"for_LDG.138"
  %".3121" = bitcast ptr %"R39" to ptr
  store float %".3120", ptr %".3121"
  ; LDG.E.SYS R42, [R10+0x8]
  %".3124" = load i32, ptr %"R10"
  %"zext.389" = zext i32 %".3124" to i64
  %".3125" = load i32, ptr %"R11"
  %"zext.390" = zext i32 %".3125" to i64
  %"shl.162" = shl i64 %"zext.390", 32
  %"or.149" = or i64 %"shl.162", %"zext.389"
  %".3126" = inttoptr i64 %"or.149" to ptr
  %".3127" = ptrtoint ptr %".3126" to i64
  %".3128" = add i64 %".3127", 8
  %"for_LDG.139" = inttoptr i64 %".3128" to ptr
  %".3129" = load float, ptr %"for_LDG.139"
  %".3130" = bitcast ptr %"R42" to ptr
  store float %".3129", ptr %".3130"
  ; LDG.E.SYS R44, [R10+0xc]
  %".3133" = load i32, ptr %"R10"
  %"zext.391" = zext i32 %".3133" to i64
  %".3134" = load i32, ptr %"R11"
  %"zext.392" = zext i32 %".3134" to i64
  %"shl.163" = shl i64 %"zext.392", 32
  %"or.150" = or i64 %"shl.163", %"zext.391"
  %".3135" = inttoptr i64 %"or.150" to ptr
  %".3136" = ptrtoint ptr %".3135" to i64
  %".3137" = add i64 %".3136", 12
  %"for_LDG.140" = inttoptr i64 %".3137" to ptr
  %".3138" = load float, ptr %"for_LDG.140"
  %".3139" = bitcast ptr %"R44" to ptr
  store float %".3138", ptr %".3139"
  ; LDG.E.SYS R41, [R12+0x8]
  %".3142" = load i32, ptr %"R12"
  %"zext.393" = zext i32 %".3142" to i64
  %".3143" = load i32, ptr %"R13"
  %"zext.394" = zext i32 %".3143" to i64
  %"shl.164" = shl i64 %"zext.394", 32
  %"or.151" = or i64 %"shl.164", %"zext.393"
  %".3144" = inttoptr i64 %"or.151" to ptr
  %".3145" = ptrtoint ptr %".3144" to i64
  %".3146" = add i64 %".3145", 8
  %"for_LDG.141" = inttoptr i64 %".3146" to ptr
  %".3147" = load float, ptr %"for_LDG.141"
  %".3148" = bitcast ptr %"R41" to ptr
  store float %".3147", ptr %".3148"
  ; LDG.E.SYS R43, [R12+0xc]
  %".3151" = load i32, ptr %"R12"
  %"zext.395" = zext i32 %".3151" to i64
  %".3152" = load i32, ptr %"R13"
  %"zext.396" = zext i32 %".3152" to i64
  %"shl.165" = shl i64 %"zext.396", 32
  %"or.152" = or i64 %"shl.165", %"zext.395"
  %".3153" = inttoptr i64 %"or.152" to ptr
  %".3154" = ptrtoint ptr %".3153" to i64
  %".3155" = add i64 %".3154", 12
  %"for_LDG.142" = inttoptr i64 %".3155" to ptr
  %".3156" = load float, ptr %"for_LDG.142"
  %".3157" = bitcast ptr %"R43" to ptr
  store float %".3156", ptr %".3157"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3160" = xor i1 1, 1
  %".3161" = and i1 %".3160", 1
  %".3162" = and i1 %".3161", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".3164" = load i32, ptr %"R23"
  %"add.142" = add i32 %".3164", -8
  %"add.143" = add i32 %"add.142", 0
  store i32 %"add.143", ptr %"R23"
  ; IADD3 R22, R22, 0x8, RZ
  %".3167" = load i32, ptr %"R22"
  %"add.144" = add i32 %".3167", 8
  %"add.145" = add i32 %"add.144", 0
  store i32 %"add.145", ptr %"R22"
  ; FMUL R15, R18, R9
  %".3170" = load float, ptr %"R18"
  %".3171" = load float, ptr %"R9"
  %"fmul.117" = fmul float %".3170", %".3171"
  %".3172" = bitcast ptr %"R15" to ptr
  store float %"fmul.117", ptr %".3172"
  ; FFMA R15, R15, R19, R8
  %".3175" = load float, ptr %"R15"
  %".3176" = load float, ptr %"R19"
  %".3177" = load float, ptr %"R8"
  %"fmul.118" = fmul float %".3175", %".3176"
  %"fadd.109" = fadd float %"fmul.118", %".3177"
  %".3178" = bitcast ptr %"R15" to ptr
  store float %"fadd.109", ptr %".3178"
  ; FMUL R24, R24, R9
  %".3181" = load float, ptr %"R24"
  %".3182" = load float, ptr %"R9"
  %"fmul.119" = fmul float %".3181", %".3182"
  %".3183" = bitcast ptr %"R24" to ptr
  store float %"fmul.119", ptr %".3183"
  ; FFMA R15, R24, R21, R15
  %".3186" = load float, ptr %"R24"
  %".3187" = load float, ptr %"R21"
  %".3188" = load float, ptr %"R15"
  %"fmul.120" = fmul float %".3186", %".3187"
  %"fadd.110" = fadd float %"fmul.120", %".3188"
  %".3189" = bitcast ptr %"R15" to ptr
  store float %"fadd.110", ptr %".3189"
  ; FMUL R34, R34, R9
  %".3192" = load float, ptr %"R34"
  %".3193" = load float, ptr %"R9"
  %"fmul.121" = fmul float %".3192", %".3193"
  %".3194" = bitcast ptr %"R34" to ptr
  store float %"fmul.121", ptr %".3194"
  ; FFMA R15, R34, R25, R15
  %".3197" = load float, ptr %"R34"
  %".3198" = load float, ptr %"R25"
  %".3199" = load float, ptr %"R15"
  %"fmul.122" = fmul float %".3197", %".3198"
  %"fadd.111" = fadd float %"fmul.122", %".3199"
  %".3200" = bitcast ptr %"R15" to ptr
  store float %"fadd.111", ptr %".3200"
  ; FMUL R36, R36, R9
  %".3203" = load float, ptr %"R36"
  %".3204" = load float, ptr %"R9"
  %"fmul.123" = fmul float %".3203", %".3204"
  %".3205" = bitcast ptr %"R36" to ptr
  store float %"fmul.123", ptr %".3205"
  ; FFMA R15, R36, R35, R15
  %".3208" = load float, ptr %"R36"
  %".3209" = load float, ptr %"R35"
  %".3210" = load float, ptr %"R15"
  %"fmul.124" = fmul float %".3208", %".3209"
  %"fadd.112" = fadd float %"fmul.124", %".3210"
  %".3211" = bitcast ptr %"R15" to ptr
  store float %"fadd.112", ptr %".3211"
  ; FMUL R38, R38, R9
  %".3214" = load float, ptr %"R38"
  %".3215" = load float, ptr %"R9"
  %"fmul.125" = fmul float %".3214", %".3215"
  %".3216" = bitcast ptr %"R38" to ptr
  store float %"fmul.125", ptr %".3216"
  ; FFMA R15, R38, R37, R15
  %".3219" = load float, ptr %"R38"
  %".3220" = load float, ptr %"R37"
  %".3221" = load float, ptr %"R15"
  %"fmul.126" = fmul float %".3219", %".3220"
  %"fadd.113" = fadd float %"fmul.126", %".3221"
  %".3222" = bitcast ptr %"R15" to ptr
  store float %"fadd.113", ptr %".3222"
  ; FMUL R40, R40, R9
  %".3225" = load float, ptr %"R40"
  %".3226" = load float, ptr %"R9"
  %"fmul.127" = fmul float %".3225", %".3226"
  %".3227" = bitcast ptr %"R40" to ptr
  store float %"fmul.127", ptr %".3227"
  ; FFMA R15, R40, R39, R15
  %".3230" = load float, ptr %"R40"
  %".3231" = load float, ptr %"R39"
  %".3232" = load float, ptr %"R15"
  %"fmul.128" = fmul float %".3230", %".3231"
  %"fadd.114" = fadd float %"fmul.128", %".3232"
  %".3233" = bitcast ptr %"R15" to ptr
  store float %"fadd.114", ptr %".3233"
  ; FMUL R42, R42, R9.reuse
  %".3236" = load float, ptr %"R42"
  %".3237" = load float, ptr %"R9"
  %"fmul.129" = fmul float %".3236", %".3237"
  %".3238" = bitcast ptr %"R42" to ptr
  store float %"fmul.129", ptr %".3238"
  ; FMUL R44, R44, R9
  %".3241" = load float, ptr %"R44"
  %".3242" = load float, ptr %"R9"
  %"fmul.130" = fmul float %".3241", %".3242"
  %".3243" = bitcast ptr %"R44" to ptr
  store float %"fmul.130", ptr %".3243"
  ; FFMA R15, R42, R41, R15
  %".3246" = load float, ptr %"R42"
  %".3247" = load float, ptr %"R41"
  %".3248" = load float, ptr %"R15"
  %"fmul.131" = fmul float %".3246", %".3247"
  %"fadd.115" = fadd float %"fmul.131", %".3248"
  %".3249" = bitcast ptr %"R15" to ptr
  store float %"fadd.115", ptr %".3249"
  ; FFMA R8, R44, R43, R15
  %".3252" = load float, ptr %"R44"
  %".3253" = load float, ptr %"R43"
  %".3254" = load float, ptr %"R15"
  %"fmul.132" = fmul float %".3252", %".3253"
  %"fadd.116" = fadd float %"fmul.132", %".3254"
  %".3255" = bitcast ptr %"R8" to ptr
  store float %"fadd.116", ptr %".3255"
  br label %".L_x_15"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".3259" = load i32, ptr %"R23"
  %".3260" = load i1, ptr %"PT"
  %"cmp.25" = icmp ne i32 %".3259", 0
  %".3261" = or i1 %"cmp.25", %".3260"
  store i1 %".3261", ptr %"P0"
  ; @!P0 BRA `(.L_x_11)
  %".3264" = load i1, ptr %"P0"
  %".3265" = icmp eq i1 %".3264", 1
  br i1 %".3265", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R12, R3, R22, RZ
  %".3270" = load i32, ptr %"R3"
  %".3271" = load i32, ptr %"R22"
  %"add.146" = add i32 %".3270", %".3271"
  %"add.147" = add i32 %"add.146", 0
  store i32 %"add.147", ptr %"R12"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".3274" = load i32, ptr %"R22"
  %".3275" = load i32, ptr %"R13"
  %"zext.397" = zext i32 %".3274" to i64
  %"zext.398" = zext i32 %".3275" to i64
  %"mul.48" = mul i64 %"zext.397", %"zext.398"
  %".3276" = ptrtoint ptr %"Arg_1" to i64
  %"add.148" = add i64 %"mul.48", %".3276"
  %".3277" = and i64 %"add.148", 18446744069414584320
  %".3278" = lshr i64 %".3277", 32
  %"trunc32.90" = trunc i64 %".3278" to i32
  %"trunc32.91" = trunc i64 %"add.148" to i32
  store i32 %"trunc32.91", ptr %"R10"
  store i32 %"trunc32.90", ptr %"R11"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".3282" = load i32, ptr %"R12"
  %".3283" = load i32, ptr %"R13"
  %"zext.399" = zext i32 %".3282" to i64
  %"zext.400" = zext i32 %".3283" to i64
  %"mul.49" = mul i64 %"zext.399", %"zext.400"
  %".3284" = ptrtoint ptr %"Arg_2" to i64
  %"add.149" = add i64 %"mul.49", %".3284"
  %".3285" = and i64 %"add.149", 18446744069414584320
  %".3286" = lshr i64 %".3285", 32
  %"trunc32.92" = trunc i64 %".3286" to i32
  %"trunc32.93" = trunc i64 %"add.149" to i32
  store i32 %"trunc32.93", ptr %"R12"
  store i32 %"trunc32.92", ptr %"R13"
  ; LDG.E.SYS R14, [R10]
  %".3290" = load i32, ptr %"R10"
  %"zext.401" = zext i32 %".3290" to i64
  %".3291" = load i32, ptr %"R11"
  %"zext.402" = zext i32 %".3291" to i64
  %"shl.166" = shl i64 %"zext.402", 32
  %"or.153" = or i64 %"shl.166", %"zext.401"
  %".3292" = inttoptr i64 %"or.153" to ptr
  %".3293" = ptrtoint ptr %".3292" to i64
  %".3294" = add i64 %".3293", 0
  %"for_LDG.143" = inttoptr i64 %".3294" to ptr
  %".3295" = load float, ptr %"for_LDG.143"
  %".3296" = bitcast ptr %"R14" to ptr
  store float %".3295", ptr %".3296"
  ; LDG.E.SYS R16, [R12]
  %".3299" = load i32, ptr %"R12"
  %"zext.403" = zext i32 %".3299" to i64
  %".3300" = load i32, ptr %"R13"
  %"zext.404" = zext i32 %".3300" to i64
  %"shl.167" = shl i64 %"zext.404", 32
  %"or.154" = or i64 %"shl.167", %"zext.403"
  %".3301" = inttoptr i64 %"or.154" to ptr
  %".3302" = ptrtoint ptr %".3301" to i64
  %".3303" = add i64 %".3302", 0
  %"for_LDG.144" = inttoptr i64 %".3303" to ptr
  %".3304" = load float, ptr %"for_LDG.144"
  %".3305" = bitcast ptr %"R16" to ptr
  store float %".3304", ptr %".3305"
  ; LDG.E.SYS R18, [R10+0x4]
  %".3308" = load i32, ptr %"R10"
  %"zext.405" = zext i32 %".3308" to i64
  %".3309" = load i32, ptr %"R11"
  %"zext.406" = zext i32 %".3309" to i64
  %"shl.168" = shl i64 %"zext.406", 32
  %"or.155" = or i64 %"shl.168", %"zext.405"
  %".3310" = inttoptr i64 %"or.155" to ptr
  %".3311" = ptrtoint ptr %".3310" to i64
  %".3312" = add i64 %".3311", 4
  %"for_LDG.145" = inttoptr i64 %".3312" to ptr
  %".3313" = load float, ptr %"for_LDG.145"
  %".3314" = bitcast ptr %"R18" to ptr
  store float %".3313", ptr %".3314"
  ; LDG.E.SYS R17, [R12+0x4]
  %".3317" = load i32, ptr %"R12"
  %"zext.407" = zext i32 %".3317" to i64
  %".3318" = load i32, ptr %"R13"
  %"zext.408" = zext i32 %".3318" to i64
  %"shl.169" = shl i64 %"zext.408", 32
  %"or.156" = or i64 %"shl.169", %"zext.407"
  %".3319" = inttoptr i64 %"or.156" to ptr
  %".3320" = ptrtoint ptr %".3319" to i64
  %".3321" = add i64 %".3320", 4
  %"for_LDG.146" = inttoptr i64 %".3321" to ptr
  %".3322" = load float, ptr %"for_LDG.146"
  %".3323" = bitcast ptr %"R17" to ptr
  store float %".3322", ptr %".3323"
  ; LDG.E.SYS R24, [R10+0x8]
  %".3326" = load i32, ptr %"R10"
  %"zext.409" = zext i32 %".3326" to i64
  %".3327" = load i32, ptr %"R11"
  %"zext.410" = zext i32 %".3327" to i64
  %"shl.170" = shl i64 %"zext.410", 32
  %"or.157" = or i64 %"shl.170", %"zext.409"
  %".3328" = inttoptr i64 %"or.157" to ptr
  %".3329" = ptrtoint ptr %".3328" to i64
  %".3330" = add i64 %".3329", 8
  %"for_LDG.147" = inttoptr i64 %".3330" to ptr
  %".3331" = load float, ptr %"for_LDG.147"
  %".3332" = bitcast ptr %"R24" to ptr
  store float %".3331", ptr %".3332"
  ; LDG.E.SYS R19, [R12+0x8]
  %".3335" = load i32, ptr %"R12"
  %"zext.411" = zext i32 %".3335" to i64
  %".3336" = load i32, ptr %"R13"
  %"zext.412" = zext i32 %".3336" to i64
  %"shl.171" = shl i64 %"zext.412", 32
  %"or.158" = or i64 %"shl.171", %"zext.411"
  %".3337" = inttoptr i64 %"or.158" to ptr
  %".3338" = ptrtoint ptr %".3337" to i64
  %".3339" = add i64 %".3338", 8
  %"for_LDG.148" = inttoptr i64 %".3339" to ptr
  %".3340" = load float, ptr %"for_LDG.148"
  %".3341" = bitcast ptr %"R19" to ptr
  store float %".3340", ptr %".3341"
  ; LDG.E.SYS R34, [R10+0xc]
  %".3344" = load i32, ptr %"R10"
  %"zext.413" = zext i32 %".3344" to i64
  %".3345" = load i32, ptr %"R11"
  %"zext.414" = zext i32 %".3345" to i64
  %"shl.172" = shl i64 %"zext.414", 32
  %"or.159" = or i64 %"shl.172", %"zext.413"
  %".3346" = inttoptr i64 %"or.159" to ptr
  %".3347" = ptrtoint ptr %".3346" to i64
  %".3348" = add i64 %".3347", 12
  %"for_LDG.149" = inttoptr i64 %".3348" to ptr
  %".3349" = load float, ptr %"for_LDG.149"
  %".3350" = bitcast ptr %"R34" to ptr
  store float %".3349", ptr %".3350"
  ; LDG.E.SYS R21, [R12+0xc]
  %".3353" = load i32, ptr %"R12"
  %"zext.415" = zext i32 %".3353" to i64
  %".3354" = load i32, ptr %"R13"
  %"zext.416" = zext i32 %".3354" to i64
  %"shl.173" = shl i64 %"zext.416", 32
  %"or.160" = or i64 %"shl.173", %"zext.415"
  %".3355" = inttoptr i64 %"or.160" to ptr
  %".3356" = ptrtoint ptr %".3355" to i64
  %".3357" = add i64 %".3356", 12
  %"for_LDG.150" = inttoptr i64 %".3357" to ptr
  %".3358" = load float, ptr %"for_LDG.150"
  %".3359" = bitcast ptr %"R21" to ptr
  store float %".3358", ptr %".3359"
  ; IADD3 R23, R23, -0x4, RZ
  %".3362" = load i32, ptr %"R23"
  %"add.150" = add i32 %".3362", -4
  %"add.151" = add i32 %"add.150", 0
  store i32 %"add.151", ptr %"R23"
  ; IADD3 R22, R22, 0x4, RZ
  %".3365" = load i32, ptr %"R22"
  %"add.152" = add i32 %".3365", 4
  %"add.153" = add i32 %"add.152", 0
  store i32 %"add.153", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".3368" = load i32, ptr %"R23"
  %".3369" = load i1, ptr %"PT"
  %"cmp.26" = icmp ne i32 %".3368", 0
  %".3370" = and i1 %"cmp.26", %".3369"
  store i1 %".3370", ptr %"P0"
  ; FMUL R15, R14, R9
  %".3373" = load float, ptr %"R14"
  %".3374" = load float, ptr %"R9"
  %"fmul.133" = fmul float %".3373", %".3374"
  %".3375" = bitcast ptr %"R15" to ptr
  store float %"fmul.133", ptr %".3375"
  ; FFMA R15, R15, R16, R8
  %".3378" = load float, ptr %"R15"
  %".3379" = load float, ptr %"R16"
  %".3380" = load float, ptr %"R8"
  %"fmul.134" = fmul float %".3378", %".3379"
  %"fadd.117" = fadd float %"fmul.134", %".3380"
  %".3381" = bitcast ptr %"R15" to ptr
  store float %"fadd.117", ptr %".3381"
  ; FMUL R18, R18, R9
  %".3384" = load float, ptr %"R18"
  %".3385" = load float, ptr %"R9"
  %"fmul.135" = fmul float %".3384", %".3385"
  %".3386" = bitcast ptr %"R18" to ptr
  store float %"fmul.135", ptr %".3386"
  ; FFMA R15, R18, R17, R15
  %".3389" = load float, ptr %"R18"
  %".3390" = load float, ptr %"R17"
  %".3391" = load float, ptr %"R15"
  %"fmul.136" = fmul float %".3389", %".3390"
  %"fadd.118" = fadd float %"fmul.136", %".3391"
  %".3392" = bitcast ptr %"R15" to ptr
  store float %"fadd.118", ptr %".3392"
  ; FMUL R24, R24, R9
  %".3395" = load float, ptr %"R24"
  %".3396" = load float, ptr %"R9"
  %"fmul.137" = fmul float %".3395", %".3396"
  %".3397" = bitcast ptr %"R24" to ptr
  store float %"fmul.137", ptr %".3397"
  ; FFMA R15, R24, R19, R15
  %".3400" = load float, ptr %"R24"
  %".3401" = load float, ptr %"R19"
  %".3402" = load float, ptr %"R15"
  %"fmul.138" = fmul float %".3400", %".3401"
  %"fadd.119" = fadd float %"fmul.138", %".3402"
  %".3403" = bitcast ptr %"R15" to ptr
  store float %"fadd.119", ptr %".3403"
  ; FMUL R34, R34, R9
  %".3406" = load float, ptr %"R34"
  %".3407" = load float, ptr %"R9"
  %"fmul.139" = fmul float %".3406", %".3407"
  %".3408" = bitcast ptr %"R34" to ptr
  store float %"fmul.139", ptr %".3408"
  ; FFMA R8, R34, R21, R15
  %".3411" = load float, ptr %"R34"
  %".3412" = load float, ptr %"R21"
  %".3413" = load float, ptr %"R15"
  %"fmul.140" = fmul float %".3411", %".3412"
  %"fadd.120" = fadd float %"fmul.140", %".3413"
  %".3414" = bitcast ptr %"R8" to ptr
  store float %"fadd.120", ptr %".3414"
  ; @P0 BRA `(.L_x_12)
  %".3417" = load i1, ptr %"P0"
  %".3418" = icmp ne i1 %".3417", 1
  br i1 %".3418", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".3421" = load i32, ptr %"R4"
  %".3422" = load i1, ptr %"PT"
  %"cmp.27" = icmp ne i32 %".3421", 0
  %".3423" = and i1 %"cmp.27", %".3422"
  store i1 %".3423", ptr %"P0"
  ; @!P0 BRA `(.L_x_10)
  %".3426" = load i1, ptr %"P0"
  %".3427" = icmp eq i1 %".3426", 1
  br i1 %".3427", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R10, R3, R22, RZ
  %".3432" = load i32, ptr %"R3"
  %".3433" = load i32, ptr %"R22"
  %"add.154" = add i32 %".3432", %".3433"
  %"add.155" = add i32 %"add.154", 0
  store i32 %"add.155", ptr %"R10"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".3436" = load i32, ptr %"R22"
  %".3437" = load i32, ptr %"R11"
  %"zext.417" = zext i32 %".3436" to i64
  %"zext.418" = zext i32 %".3437" to i64
  %"mul.50" = mul i64 %"zext.417", %"zext.418"
  %".3438" = ptrtoint ptr %"Arg_1" to i64
  %"add.156" = add i64 %"mul.50", %".3438"
  %".3439" = and i64 %"add.156", 18446744069414584320
  %".3440" = lshr i64 %".3439", 32
  %"trunc32.94" = trunc i64 %".3440" to i32
  %"trunc32.95" = trunc i64 %"add.156" to i32
  store i32 %"trunc32.95", ptr %"R22"
  store i32 %"trunc32.94", ptr %"R23"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".3444" = load i32, ptr %"R10"
  %".3445" = load i32, ptr %"R11"
  %"zext.419" = zext i32 %".3444" to i64
  %"zext.420" = zext i32 %".3445" to i64
  %"mul.51" = mul i64 %"zext.419", %"zext.420"
  %".3446" = ptrtoint ptr %"Arg_2" to i64
  %"add.157" = add i64 %"mul.51", %".3446"
  %".3447" = and i64 %"add.157", 18446744069414584320
  %".3448" = lshr i64 %".3447", 32
  %"trunc32.96" = trunc i64 %".3448" to i32
  %"trunc32.97" = trunc i64 %"add.157" to i32
  store i32 %"trunc32.97", ptr %"R10"
  store i32 %"trunc32.96", ptr %"R11"
  ; LDG.E.SYS R12, [R22]
  %".3452" = load i32, ptr %"R22"
  %"zext.421" = zext i32 %".3452" to i64
  %".3453" = load i32, ptr %"R23"
  %"zext.422" = zext i32 %".3453" to i64
  %"shl.174" = shl i64 %"zext.422", 32
  %"or.161" = or i64 %"shl.174", %"zext.421"
  %".3454" = inttoptr i64 %"or.161" to ptr
  %".3455" = ptrtoint ptr %".3454" to i64
  %".3456" = add i64 %".3455", 0
  %"for_LDG.151" = inttoptr i64 %".3456" to ptr
  %".3457" = load float, ptr %"for_LDG.151"
  %".3458" = bitcast ptr %"R12" to ptr
  store float %".3457", ptr %".3458"
  ; LDG.E.SYS R14, [R10]
  %".3461" = load i32, ptr %"R10"
  %"zext.423" = zext i32 %".3461" to i64
  %".3462" = load i32, ptr %"R11"
  %"zext.424" = zext i32 %".3462" to i64
  %"shl.175" = shl i64 %"zext.424", 32
  %"or.162" = or i64 %"shl.175", %"zext.423"
  %".3463" = inttoptr i64 %"or.162" to ptr
  %".3464" = ptrtoint ptr %".3463" to i64
  %".3465" = add i64 %".3464", 0
  %"for_LDG.152" = inttoptr i64 %".3465" to ptr
  %".3466" = load float, ptr %"for_LDG.152"
  %".3467" = bitcast ptr %"R14" to ptr
  store float %".3466", ptr %".3467"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".3470" = load i32, ptr %"R4"
  %".3471" = load i1, ptr %"PT"
  %"cmp.28" = icmp ne i32 %".3470", 1
  %".3472" = and i1 %"cmp.28", %".3471"
  store i1 %".3472", ptr %"P0"
  ; FMUL R13, R12, R9
  %".3475" = load float, ptr %"R12"
  %".3476" = load float, ptr %"R9"
  %"fmul.141" = fmul float %".3475", %".3476"
  %".3477" = bitcast ptr %"R13" to ptr
  store float %"fmul.141", ptr %".3477"
  ; FFMA R8, R13, R14, R8
  %".3480" = load float, ptr %"R13"
  %".3481" = load float, ptr %"R14"
  %".3482" = load float, ptr %"R8"
  %"fmul.142" = fmul float %".3480", %".3481"
  %"fadd.121" = fadd float %"fmul.142", %".3482"
  %".3483" = bitcast ptr %"R8" to ptr
  store float %"fadd.121", ptr %".3483"
  ; @!P0 BRA `(.L_x_10)
  %".3486" = load i1, ptr %"P0"
  %".3487" = icmp eq i1 %".3486", 1
  br i1 %".3487", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".3490" = load i32, ptr %"R4"
  %".3491" = load i1, ptr %"PT"
  %"cmp.29" = icmp ne i32 %".3490", 2
  %".3492" = and i1 %"cmp.29", %".3491"
  store i1 %".3492", ptr %"P0"
  ; LDG.E.SYS R12, [R22+0x4]
  %".3495" = load i32, ptr %"R22"
  %"zext.425" = zext i32 %".3495" to i64
  %".3496" = load i32, ptr %"R23"
  %"zext.426" = zext i32 %".3496" to i64
  %"shl.176" = shl i64 %"zext.426", 32
  %"or.163" = or i64 %"shl.176", %"zext.425"
  %".3497" = inttoptr i64 %"or.163" to ptr
  %".3498" = ptrtoint ptr %".3497" to i64
  %".3499" = add i64 %".3498", 4
  %"for_LDG.153" = inttoptr i64 %".3499" to ptr
  %".3500" = load float, ptr %"for_LDG.153"
  %".3501" = bitcast ptr %"R12" to ptr
  store float %".3500", ptr %".3501"
  ; LDG.E.SYS R14, [R10+0x4]
  %".3504" = load i32, ptr %"R10"
  %"zext.427" = zext i32 %".3504" to i64
  %".3505" = load i32, ptr %"R11"
  %"zext.428" = zext i32 %".3505" to i64
  %"shl.177" = shl i64 %"zext.428", 32
  %"or.164" = or i64 %"shl.177", %"zext.427"
  %".3506" = inttoptr i64 %"or.164" to ptr
  %".3507" = ptrtoint ptr %".3506" to i64
  %".3508" = add i64 %".3507", 4
  %"for_LDG.154" = inttoptr i64 %".3508" to ptr
  %".3509" = load float, ptr %"for_LDG.154"
  %".3510" = bitcast ptr %"R14" to ptr
  store float %".3509", ptr %".3510"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".3513" = load i1, ptr %"P0"
  %".3514" = icmp ne i1 %".3513", 1
  br i1 %".3514", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  %".3517" = load i32, ptr %"R22"
  %"zext.429" = zext i32 %".3517" to i64
  %".3518" = load i32, ptr %"R23"
  %"zext.430" = zext i32 %".3518" to i64
  %"shl.178" = shl i64 %"zext.430", 32
  %"or.165" = or i64 %"shl.178", %"zext.429"
  %".3519" = inttoptr i64 %"or.165" to ptr
  %".3520" = ptrtoint ptr %".3519" to i64
  %".3521" = add i64 %".3520", 8
  %"for_LDG.155" = inttoptr i64 %".3521" to ptr
  %".3522" = load float, ptr %"for_LDG.155"
  %".3523" = bitcast ptr %"R16" to ptr
  store float %".3522", ptr %".3523"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".3528" = load i1, ptr %"P0"
  %".3529" = icmp ne i1 %".3528", 1
  br i1 %".3529", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  %".3532" = load i32, ptr %"R10"
  %"zext.431" = zext i32 %".3532" to i64
  %".3533" = load i32, ptr %"R11"
  %"zext.432" = zext i32 %".3533" to i64
  %"shl.179" = shl i64 %"zext.432", 32
  %"or.166" = or i64 %"shl.179", %"zext.431"
  %".3534" = inttoptr i64 %"or.166" to ptr
  %".3535" = ptrtoint ptr %".3534" to i64
  %".3536" = add i64 %".3535", 8
  %"for_LDG.156" = inttoptr i64 %".3536" to ptr
  %".3537" = load float, ptr %"for_LDG.156"
  %".3538" = bitcast ptr %"R15" to ptr
  store float %".3537", ptr %".3538"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %".3543" = load float, ptr %"R12"
  %".3544" = load float, ptr %"R9"
  %"fmul.143" = fmul float %".3543", %".3544"
  %".3545" = bitcast ptr %"R13" to ptr
  store float %"fmul.143", ptr %".3545"
  ; FFMA R8, R13, R14, R8
  %".3548" = load float, ptr %"R13"
  %".3549" = load float, ptr %"R14"
  %".3550" = load float, ptr %"R8"
  %"fmul.144" = fmul float %".3548", %".3549"
  %"fadd.122" = fadd float %"fmul.144", %".3550"
  %".3551" = bitcast ptr %"R8" to ptr
  store float %"fadd.122", ptr %".3551"
  ; @P0 FMUL R9, R16, R9
  %".3554" = load i1, ptr %"P0"
  %".3555" = icmp ne i1 %".3554", 1
  br i1 %".3555", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %".3558" = load float, ptr %"R16"
  %".3559" = load float, ptr %"R9"
  %"fmul.145" = fmul float %".3558", %".3559"
  %".3560" = bitcast ptr %"R9" to ptr
  store float %"fmul.145", ptr %".3560"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".3565" = load i1, ptr %"P0"
  %".3566" = icmp ne i1 %".3565", 1
  br i1 %".3566", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %".3569" = load float, ptr %"R9"
  %".3570" = load float, ptr %"R15"
  %".3571" = load float, ptr %"R8"
  %"fmul.146" = fmul float %".3569", %".3570"
  %"fadd.123" = fadd float %"fmul.146", %".3571"
  %".3572" = bitcast ptr %"R8" to ptr
  store float %"fadd.123", ptr %".3572"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  %".3577" = load i32, ptr %"R30"
  %"zext.433" = zext i32 %".3577" to i64
  %".3578" = load i32, ptr %"R31"
  %"zext.434" = zext i32 %".3578" to i64
  %"shl.180" = shl i64 %"zext.434", 32
  %"or.167" = or i64 %"shl.180", %"zext.433"
  %".3579" = inttoptr i64 %"or.167" to ptr
  %".3580" = ptrtoint ptr %".3579" to i64
  %".3581" = add i64 %".3580", 0
  %"for_LDG.157" = inttoptr i64 %".3581" to ptr
  %".3582" = load float, ptr %"for_LDG.157"
  %".3583" = bitcast ptr %"R9" to ptr
  store float %".3582", ptr %".3583"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %".3588" = load float, ptr %"R9"
  %".3589" = load float, ptr %"R8"
  %"fadd.124" = fadd float %".3588", %".3589"
  %".3590" = bitcast ptr %"R12" to ptr
  store float %"fadd.124", ptr %".3590"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %".3593" = load float, ptr %"R12"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".3593")
  %".3594" = load i1, ptr %"PT"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".3595" = and i1 %"fcmp_unordered", %".3594"
  store i1 %".3595", ptr %"P0"
  ; @!P0 BRA `(.L_x_17)
  %".3598" = load i1, ptr %"P0"
  %".3599" = icmp eq i1 %".3598", 1
  br i1 %".3599", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %".3602" = load float, ptr %"R12"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".3602")
  %"fmul.147" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  %".3603" = bitcast ptr %"R8" to ptr
  store float %"fmul.147", ptr %".3603"
  ; MOV R9, 0x3f800000
  %".3606" = bitcast ptr %"R9" to ptr
  store float 0x41cfc00000000000, ptr %".3606"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %".3609" = load float, ptr %"R12"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".3609")
  %".3610" = load i1, ptr %"PT"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".3611" = and i1 %"fcmp_unordered.1", %".3610"
  store i1 %".3611", ptr %"P0"
  ; MUFU.EX2 R8, R8
  %".3614" = load float, ptr %"R8"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".3614")
  %".3615" = bitcast ptr %"R8" to ptr
  store float %"llvm_exp2_f32_result.2", ptr %".3615"
  ; FADD R10, R8, 1
  %".3618" = load float, ptr %"R8"
  %"fadd.125" = fadd float %".3618", 0x3ff0000000000000
  %".3619" = bitcast ptr %"R10" to ptr
  store float %"fadd.125", ptr %".3619"
  ; MUFU.RCP R10, R10
  %".3622" = load float, ptr %"R10"
  %".3623" = fdiv float 0x3ff0000000000000, %".3622"
  %".3624" = bitcast ptr %"R10" to ptr
  store float %".3623", ptr %".3624"
  ; FFMA R9, R10, -2, R9
  %".3627" = load float, ptr %"R10"
  %".3628" = load float, ptr %"R9"
  %"fmul.148" = fmul float %".3627", 0xc000000000000000
  %"fadd.126" = fadd float %"fmul.148", %".3628"
  %".3629" = bitcast ptr %"R9" to ptr
  store float %"fadd.126", ptr %".3629"
  ; FSEL R9, R9, 1, !P0
  %".3632" = load float, ptr %"R9"
  %".3633" = load i1, ptr %"P0"
  %".3634" = icmp eq i1 %".3633", 1
  %"fsel" = select  i1 %".3634", float %".3632", float 0x3ff0000000000000
  %".3635" = bitcast ptr %"R9" to ptr
  store float %"fsel", ptr %".3635"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".3638" = load float, ptr %"R9"
  %".3639" = load float, ptr %"R12"
  %".3640" = bitcast float %".3638" to i32
  %".3641" = bitcast float 0x41e0000000000000 to i32
  %".3642" = bitcast float %".3639" to i32
  %".3643" = or i32 %".3640", %".3641"
  %".3644" = or i32 %".3640", %".3642"
  %".3645" = and i32 %".3643", %".3644"
  store i32 %".3645", ptr %"R9"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  %".3650" = bitcast ptr %"R9" to ptr
  store float 0x41ce407840000000, ptr %".3650"
  ; FMUL R8, R12, R12
  %".3653" = load float, ptr %"R12"
  %".3654" = load float, ptr %"R12"
  %"fmul.149" = fmul float %".3653", %".3654"
  %".3655" = bitcast ptr %"R8" to ptr
  store float %"fmul.149", ptr %".3655"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".3658" = load float, ptr %"R8"
  %".3659" = load float, ptr %"R9"
  %"fmul.150" = fmul float %".3658", %".3659"
  %"fadd.127" = fadd float %"fmul.150", 0xbfaac795c0000000
  %".3660" = bitcast ptr %"R9" to ptr
  store float %"fadd.127", ptr %".3660"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".3663" = load float, ptr %"R8"
  %".3664" = load float, ptr %"R9"
  %"fmul.151" = fmul float %".3663", %".3664"
  %"fadd.128" = fadd float %"fmul.151", 0x3fc10b2820000000
  %".3665" = bitcast ptr %"R9" to ptr
  store float %"fadd.128", ptr %".3665"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".3668" = load float, ptr %"R8"
  %".3669" = load float, ptr %"R9"
  %"fmul.152" = fmul float %".3668", %".3669"
  %"fadd.129" = fadd float %"fmul.152", 0xbfd5553da0000000
  %".3670" = bitcast ptr %"R9" to ptr
  store float %"fadd.129", ptr %".3670"
  ; FFMA R9, R8, R9, RZ
  %".3673" = load float, ptr %"R8"
  %".3674" = load float, ptr %"R9"
  %"fmul.153" = fmul float %".3673", %".3674"
  %"fadd.130" = fadd float %"fmul.153",              0x0
  %".3675" = bitcast ptr %"R9" to ptr
  store float %"fadd.130", ptr %".3675"
  ; FFMA R9, R12, R9, R12
  %".3678" = load float, ptr %"R12"
  %".3679" = load float, ptr %"R9"
  %".3680" = load float, ptr %"R12"
  %"fmul.154" = fmul float %".3678", %".3679"
  %"fadd.131" = fadd float %"fmul.154", %".3680"
  %".3681" = bitcast ptr %"R9" to ptr
  store float %"fadd.131", ptr %".3681"
  br label %".L_x_18"
.L_x_18:
  ; BSYNC B0
  br label %".L_x_16"
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  %".3687" = load i32, ptr %"R20"
  %"add.158" = add i32 %".3687", 25165824
  %"add.159" = add i32 %"add.158", 0
  store i32 %"add.159", ptr %"R8"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".3692" = load i32, ptr %"R8"
  %".3693" = and i32 %".3692", 2139095040
  store i32 %".3693", ptr %"R8"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".3696" = load i32, ptr %"R8"
  %".3697" = load i1, ptr %"PT"
  %"cmp.30" = icmp sgt i32 %".3696", 33554431
  %".3698" = and i1 %"cmp.30", %".3697"
  store i1 %".3698", ptr %"P0"
  ; @P0 BRA `(.L_x_20)
  %".3701" = load i1, ptr %"P0"
  %".3702" = icmp ne i1 %".3701", 1
  br i1 %".3702", label %".L_x_20", label %".L_x_16_split_0x2170_CALL_0x21b0"
.L_x_16_split_0x2170_CALL_0x21b0:
  ; MOV R24, R20
  %".3705" = load float, ptr %"R20"
  %".3706" = bitcast ptr %"R24" to ptr
  store float %".3705", ptr %".3706"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".3713" = icmp ult i32 1, 32
  %"SHF_min.10" = select  i1 %".3713", i32 1, i32 32
  %".3714" = load i32, ptr %"R24"
  %"zext.435" = zext i32 0 to i64
  %"zext.436" = zext i32 %".3714" to i64
  %"zext.437" = zext i32 1 to i64
  %"shl.181" = shl i64 %"zext.435", 32
  %"or.168" = or i64 %"shl.181", %"zext.436"
  %"shl.182" = shl i64 %"or.168", %"zext.437"
  %"and.7" = and i64 %"shl.182", 4294967295
  %"trunc32.98" = trunc i64 %"and.7" to i32
  store i32 %"trunc32.98", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".3719" = icmp ult i32 24, 32
  %"SHF_min.11" = select  i1 %".3719", i32 24, i32 32
  %".3720" = load i32, ptr %"R11"
  %"zext.438" = zext i32 %".3720" to i64
  %"zext.439" = zext i32 0 to i64
  %"zext.440" = zext i32 24 to i64
  %"shl.183" = shl i64 %"zext.438", 32
  %"or.169" = or i64 %"shl.183", %"zext.439"
  %"lshr.6" = lshr i64 %"or.169", %"zext.440"
  %"lshr.7" = lshr i64 %"lshr.6", 32
  %"trunc32.99" = trunc i64 %"lshr.7" to i32
  store i32 %"trunc32.99", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".3723" = load i32, ptr %"R25"
  %".3724" = load i1, ptr %"PT"
  %"cmp.31" = icmp ne i32 %".3723", 0
  %".3725" = and i1 %"cmp.31", %".3724"
  store i1 %".3725", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".3728" = load i1, ptr %"P0"
  %".3729" = icmp ne i1 %".3728", 1
  br i1 %".3729", label %".L_x_49...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".3732" = icmp ult i32 1, 32
  %"SHF_min.12" = select  i1 %".3732", i32 1, i32 32
  %".3733" = load i32, ptr %"R24"
  %"zext.441" = zext i32 0 to i64
  %"zext.442" = zext i32 %".3733" to i64
  %"zext.443" = zext i32 1 to i64
  %"shl.184" = shl i64 %"zext.441", 32
  %"or.170" = or i64 %"shl.184", %"zext.442"
  %"shl.185" = shl i64 %"or.170", %"zext.443"
  %"and.8" = and i64 %"shl.185", 4294967295
  %"trunc32.100" = trunc i64 %"and.8" to i32
  store i32 %"trunc32.100", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".3736" = load i32, ptr %"R11"
  %".3737" = load i1, ptr %"PT"
  %"cmp.32" = icmp ne i32 %".3736", 0
  %".3738" = and i1 %"cmp.32", %".3737"
  store i1 %".3738", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3741" = load i1, ptr %"P0"
  %".3742" = icmp ne i1 %".3741", 1
  br i1 %".3742", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3745" = load float, ptr %"R24"
  %"fmul.155" = fmul float %".3745", 0x43f0000000000000
  %"fadd.132" = fadd float %"fmul.155",              0x0
  %".3746" = bitcast ptr %"R12" to ptr
  store float %"fadd.132", ptr %".3746"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3751" = load float, ptr %"R24"
  %"fmul.156" = fmul float %".3751", 0x43f0000000000000
  %"fadd.133" = fadd float %"fmul.156",              0x0
  %".3752" = bitcast ptr %"R12" to ptr
  store float %"fadd.133", ptr %".3752"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2:
  ; @!P0 MUFU.RCP R11, R24
  %".3757" = load i1, ptr %"P0"
  %".3758" = icmp eq i1 %".3757", 1
  br i1 %".3758", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".3761" = load i32, ptr %"R24"
  %"sint_to_f32" = sitofp i32 %".3761" to float
  %".3762" = fdiv float 0x3ff0000000000000, %"sint_to_f32"
  %".3763" = fptosi float %".3762" to i32
  store i32 %".3763", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2:
  ; MUFU.RCP R11, R24
  %".3768" = load i32, ptr %"R24"
  %"sint_to_f32.1" = sitofp i32 %".3768" to float
  %".3769" = fdiv float 0x3ff0000000000000, %"sint_to_f32.1"
  %".3770" = fptosi float %".3769" to i32
  store i32 %".3770", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2:
  ; @P0 MUFU.RCP R13, R12
  %".3775" = load i1, ptr %"P0"
  %".3776" = icmp ne i1 %".3775", 1
  br i1 %".3776", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".3779" = load float, ptr %"R12"
  %".3780" = fdiv float 0x3ff0000000000000, %".3779"
  %".3781" = bitcast ptr %"R13" to ptr
  store float %".3780", ptr %".3781"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2:
  ; MUFU.RCP R13, R12
  %".3786" = load float, ptr %"R12"
  %".3787" = fdiv float 0x3ff0000000000000, %".3786"
  %".3788" = bitcast ptr %"R13" to ptr
  store float %".3787", ptr %".3788"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2:
  ; @P0 FFMA R22, R12, R13, -1
  %".3793" = load i1, ptr %"P0"
  %".3794" = icmp ne i1 %".3793", 1
  br i1 %".3794", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".3797" = load float, ptr %"R12"
  %".3798" = load float, ptr %"R13"
  %"fmul.157" = fmul float %".3797", %".3798"
  %"fadd.134" = fadd float %"fmul.157", 0xbff0000000000000
  %".3799" = bitcast ptr %"R22" to ptr
  store float %"fadd.134", ptr %".3799"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2:
  ; FFMA R22, R12, R13, -1
  %".3804" = load float, ptr %"R12"
  %".3805" = load float, ptr %"R13"
  %"fmul.158" = fmul float %".3804", %".3805"
  %"fadd.135" = fadd float %"fmul.158", 0xbff0000000000000
  %".3806" = bitcast ptr %"R22" to ptr
  store float %"fadd.135", ptr %".3806"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".3811" = load i1, ptr %"P0"
  %".3812" = icmp ne i1 %".3811", 1
  br i1 %".3812", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".3815" = load float, ptr %"R22"
  %".3816" = fneg float %".3815"
  %"fadd.136" = fadd float %".3816",              0x0
  %".3817" = bitcast ptr %"R22" to ptr
  store float %"fadd.136", ptr %".3817"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2:
  ; FADD.FTZ R22, -R22, -RZ
  %".3822" = load float, ptr %"R22"
  %".3823" = fneg float %".3822"
  %"fadd.137" = fadd float %".3823",              0x0
  %".3824" = bitcast ptr %"R22" to ptr
  store float %"fadd.137", ptr %".3824"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2:
  ; @P0 FFMA R22, R13, R22, R13
  %".3829" = load i1, ptr %"P0"
  %".3830" = icmp ne i1 %".3829", 1
  br i1 %".3830", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".3833" = load float, ptr %"R13"
  %".3834" = load float, ptr %"R22"
  %".3835" = load float, ptr %"R13"
  %"fmul.159" = fmul float %".3833", %".3834"
  %"fadd.138" = fadd float %"fmul.159", %".3835"
  %".3836" = bitcast ptr %"R22" to ptr
  store float %"fadd.138", ptr %".3836"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2:
  ; FFMA R22, R13, R22, R13
  %".3841" = load float, ptr %"R13"
  %".3842" = load float, ptr %"R22"
  %".3843" = load float, ptr %"R13"
  %"fmul.160" = fmul float %".3841", %".3842"
  %"fadd.139" = fadd float %"fmul.160", %".3843"
  %".3844" = bitcast ptr %"R22" to ptr
  store float %"fadd.139", ptr %".3844"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3849" = load i1, ptr %"P0"
  %".3850" = icmp ne i1 %".3849", 1
  br i1 %".3850", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3853" = load float, ptr %"R22"
  %"fmul.161" = fmul float %".3853", 0x43f0000000000000
  %"fadd.140" = fadd float %"fmul.161",              0x0
  %".3854" = bitcast ptr %"R11" to ptr
  store float %"fadd.140", ptr %".3854"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3859" = load float, ptr %"R22"
  %"fmul.162" = fmul float %".3859", 0x43f0000000000000
  %"fadd.141" = fadd float %"fmul.162",              0x0
  %".3860" = bitcast ptr %"R11" to ptr
  store float %"fadd.141", ptr %".3860"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...2:
  ; BRA `(.L_x_50)
  br label %".L_x_50...2"
.L_x_49...2:
  ; IADD3 R34, R25, -0xfd, RZ
  %".3867" = load i32, ptr %"R25"
  %"add.160" = add i32 %".3867", -253
  %"add.161" = add i32 %"add.160", 0
  store i32 %"add.161", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".3870" = load i32, ptr %"R34"
  %".3871" = load i1, ptr %"PT"
  %"cmp.33" = icmp sgt i32 %".3870", 1
  %".3872" = and i1 %"cmp.33", %".3871"
  store i1 %".3872", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".3875" = load i1, ptr %"P0"
  %".3876" = icmp ne i1 %".3875", 1
  br i1 %".3876", label %".L_x_51...2", label %".L_x_49_split_0x4a30...2"
.L_x_49_split_0x4a30...2:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".3879" = load i32, ptr %"R24"
  %".3880" = and i32 %".3879", 8388607
  store i32 %".3880", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".3885" = load i32, ptr %"R11"
  %".3886" = or i32 %".3885", 1065353216
  store i32 %".3886", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".3889" = load i32, ptr %"R34"
  %".3890" = icmp ult i32 %".3889", 32
  %"SHF_min.13" = select  i1 %".3890", i32 %".3889", i32 32
  %".3891" = load i32, ptr %"R23"
  %".3892" = load i32, ptr %"R34"
  %"zext.444" = zext i32 0 to i64
  %"zext.445" = zext i32 %".3891" to i64
  %"zext.446" = zext i32 %".3892" to i64
  %"shl.186" = shl i64 %"zext.444", 32
  %"or.171" = or i64 %"shl.186", %"zext.445"
  %"shl.187" = shl i64 %"or.171", %"zext.446"
  %"and.9" = and i64 %"shl.187", 4294967295
  %"trunc32.101" = trunc i64 %"and.9" to i32
  store i32 %"trunc32.101", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".3895" = load float, ptr %"R11"
  %".3896" = fdiv float 0x3ff0000000000000, %".3895"
  %".3897" = bitcast ptr %"R12" to ptr
  store float %".3896", ptr %".3897"
  ; FFMA R13, R11, R12, -1
  %".3900" = load float, ptr %"R11"
  %".3901" = load float, ptr %"R12"
  %"fmul.163" = fmul float %".3900", %".3901"
  %"fadd.142" = fadd float %"fmul.163", 0xbff0000000000000
  %".3902" = bitcast ptr %"R13" to ptr
  store float %"fadd.142", ptr %".3902"
  ; FADD.FTZ R13, -R13, -RZ
  %".3905" = load float, ptr %"R13"
  %".3906" = fneg float %".3905"
  %"fadd.143" = fadd float %".3906",              0x0
  %".3907" = bitcast ptr %"R13" to ptr
  store float %"fadd.143", ptr %".3907"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".3910" = load float, ptr %"R12"
  %".3911" = load float, ptr %"R13"
  %".3912" = load float, ptr %"R12"
  %"fmul.164" = fmul float %".3910", %".3911"
  %"fadd.144" = fadd float %"fmul.164", %".3912"
  %".3913" = bitcast ptr %"R22" to ptr
  store float %"fadd.144", ptr %".3913"
  ; FFMA.RP R13, R12, R13, R12
  %".3916" = load float, ptr %"R12"
  %".3917" = load float, ptr %"R13"
  %".3918" = load float, ptr %"R12"
  %"fmul.165" = fmul float %".3916", %".3917"
  %"fadd.145" = fadd float %"fmul.165", %".3918"
  %".3919" = bitcast ptr %"R13" to ptr
  store float %"fadd.145", ptr %".3919"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".3922" = load float, ptr %"R22"
  %".3923" = bitcast float %".3922" to i32
  %".3924" = and i32 %".3923", 8388607
  store i32 %".3924", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".3927" = load float, ptr %"R22"
  %".3928" = load float, ptr %"R13"
  %".3929" = load i1, ptr %"PT"
  %"fcmp_ordered.1" = fcmp une float %".3927", %".3928"
  %".3930" = and i1 %"fcmp_ordered.1", %".3929"
  store i1 %".3930", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".3933" = load i32, ptr %"R12"
  %".3934" = or i32 %".3933", 8388608
  store i32 %".3934", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".3937" = load i1, ptr %"P0"
  %".3938" = icmp eq i1 %".3937", 1
  %"sel.2" = select  i1 %".3938", i32 0, i32 4294967295
  store i32 %"sel.2", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".3941" = load i32, ptr %"R23"
  %".3942" = load i32, ptr %"R12"
  %".3943" = and i32 %".3941", %".3942"
  store i32 %".3943", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".3946" = load i32, ptr %"R13"
  %".3947" = sub i32 0, %".3946"
  %"add.162" = add i32 %".3947", 0
  %"add.163" = add i32 %"add.162", 0
  store i32 %"add.163", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".3950" = load i32, ptr %"R34"
  %".3951" = icmp ult i32 %".3950", 32
  %"SHF_min.14" = select  i1 %".3951", i32 %".3950", i32 32
  %".3952" = load i32, ptr %"R23"
  %".3953" = load i32, ptr %"R34"
  %"zext.447" = zext i32 %".3952" to i64
  %"zext.448" = zext i32 0 to i64
  %"zext.449" = zext i32 %".3953" to i64
  %"shl.188" = shl i64 %"zext.447", 32
  %"or.172" = or i64 %"shl.188", %"zext.448"
  %"lshr.8" = lshr i64 %"or.172", %"zext.449"
  %"lshr.9" = lshr i64 %"lshr.8", 32
  %"trunc32.102" = trunc i64 %"lshr.9" to i32
  store i32 %"trunc32.102", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".3956" = load i32, ptr %"R13"
  %".3957" = load i32, ptr %"R34"
  %".3958" = load i32, ptr %"R12"
  %"LOP3_result.4" = call i32 @"custom_lop3"(i32 %".3958", i32 0, i32 %".3956", i32 %".3957")
  %".3959" = trunc i32 %"LOP3_result.4" to i1
  store i1 %".3959", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".3962" = load i32, ptr %"R23"
  %"LOP3_result.5" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".3962", i32 1)
  %".3963" = trunc i32 %"LOP3_result.5" to i1
  store i1 %".3963", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".3966" = load i32, ptr %"R23"
  %"LOP3_result.6" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".3966", i32 2)
  %".3967" = trunc i32 %"LOP3_result.6" to i1
  store i1 %".3967", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".3970" = load i1, ptr %"P0"
  %".3971" = sub i1 0, %".3970"
  %".3972" = load i1, ptr %"P1"
  %".3973" = sub i1 0, %".3972"
  %".3974" = or i1 %".3971", %".3973"
  %".3975" = and i1 %".3974", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".3977" = load i32, ptr %"R24"
  %"LOP3_result.7" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".3977", i32 8388607)
  %".3978" = trunc i32 %"LOP3_result.7" to i1
  store i1 %".3978", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".3981" = load i1, ptr %"P0"
  %".3982" = icmp eq i1 %".3981", 1
  %"sel.3" = select  i1 %".3982", i32 0, i32 1
  store i32 %"sel.3", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".3985" = load i32, ptr %"R11"
  %".3986" = sub i32 0, %".3985"
  %"add.164" = add i32 %".3986", 0
  %"add.165" = add i32 %"add.164", 0
  store i32 %"add.165", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".3989" = load i32, ptr %"R11"
  %".3990" = load i1, ptr %"PT"
  %"cmp.34" = icmp sge i32 %".3989", 0
  %".3991" = and i1 %"cmp.34", %".3990"
  store i1 %".3991", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".3994" = load i32, ptr %"R25"
  %"add.166" = add i32 %".3994", -252
  %"add.167" = add i32 %"add.166", 0
  store i32 %"add.167", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".3997" = load i32, ptr %"R11"
  %".3998" = icmp ult i32 %".3997", 32
  %"SHF_min.15" = select  i1 %".3998", i32 %".3997", i32 32
  %".3999" = load i32, ptr %"R12"
  %".4000" = load i32, ptr %"R11"
  %"zext.450" = zext i32 %".3999" to i64
  %"zext.451" = zext i32 0 to i64
  %"zext.452" = zext i32 %".4000" to i64
  %"shl.189" = shl i64 %"zext.450", 32
  %"or.173" = or i64 %"shl.189", %"zext.451"
  %"lshr.10" = lshr i64 %"or.173", %"zext.452"
  %"lshr.11" = lshr i64 %"lshr.10", 32
  %"trunc32.103" = trunc i64 %"lshr.11" to i32
  store i32 %"trunc32.103", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".4003" = load i1, ptr %"P0"
  %".4004" = icmp eq i1 %".4003", 1
  br i1 %".4004", label %".L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2"
.L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".4007" = load i32, ptr %"R11"
  %"add.168" = add i32 %".4007", 1
  %"add.169" = add i32 %"add.168", 0
  store i32 %"add.169", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2:
  ; IADD3 R11, R11, 0x1, RZ
  %".4012" = load i32, ptr %"R11"
  %"add.170" = add i32 %".4012", 1
  %"add.171" = add i32 %"add.170", 0
  store i32 %"add.171", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...2"
.L_x_49_split_0x4be0...2:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".4017" = load i1, ptr %"P1"
  %".4018" = icmp eq i1 %".4017", 1
  br i1 %".4018", label %".L_x_49_split_0x4be0...2_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...2"
.L_x_49_split_0x4be0...2_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".4021" = icmp ult i32 1, 32
  %"SHF_min.16" = select  i1 %".4021", i32 1, i32 32
  %".4022" = load i32, ptr %"R11"
  %"zext.453" = zext i32 0 to i64
  %"zext.454" = zext i32 %".4022" to i64
  %"zext.455" = zext i32 1 to i64
  %"shl.190" = shl i64 %"zext.453", 32
  %"or.174" = or i64 %"shl.190", %"zext.454"
  %"shl.191" = shl i64 %"or.174", %"zext.455"
  %"and.10" = and i64 %"shl.191", 4294967295
  %"trunc32.104" = trunc i64 %"and.10" to i32
  store i32 %"trunc32.104", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...2)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...2"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...2:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".4027" = icmp ult i32 1, 32
  %"SHF_min.17" = select  i1 %".4027", i32 1, i32 32
  %".4028" = load i32, ptr %"R11"
  %"zext.456" = zext i32 0 to i64
  %"zext.457" = zext i32 %".4028" to i64
  %"zext.458" = zext i32 1 to i64
  %"shl.192" = shl i64 %"zext.456", 32
  %"or.175" = or i64 %"shl.192", %"zext.457"
  %"shl.193" = shl i64 %"or.175", %"zext.458"
  %"and.11" = and i64 %"shl.193", 4294967295
  %"trunc32.105" = trunc i64 %"and.11" to i32
  store i32 %"trunc32.105", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...2"
.L_x_49_split_0x4bf0...2:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".4033" = load i32, ptr %"R11"
  %".4034" = load i32, ptr %"R24"
  %".4035" = or i32 %".4033", 2147483648
  %".4036" = or i32 %".4033", %".4034"
  %".4037" = and i32 %".4035", %".4036"
  store i32 %".4037", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...2"
.L_x_51...2:
  ; MUFU.RCP R11, R24
  %".4042" = load i32, ptr %"R24"
  %"sint_to_f32.2" = sitofp i32 %".4042" to float
  %".4043" = fdiv float 0x3ff0000000000000, %"sint_to_f32.2"
  %".4044" = fptosi float %".4043" to i32
  store i32 %".4044", ptr %"R11"
  br label %".L_x_50...2"
.L_x_50...2:
  ; BSYNC B1
  br label %".L_x_48...2"
.L_x_48...2:
  ; MOV R22, R11
  %".4050" = load float, ptr %"R11"
  %".4051" = bitcast ptr %"R22" to ptr
  store float %".4050", ptr %".4051"
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
  %".4061" = load float, ptr %"R22"
  %".4062" = bitcast ptr %"R8" to ptr
  store float %".4061", ptr %".4062"
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".4067" = load float, ptr %"R20"
  %".4068" = fdiv float 0x3ff0000000000000, %".4067"
  %".4069" = bitcast ptr %"R11" to ptr
  store float %".4068", ptr %".4069"
  ; FFMA R8, R20, R11, -1
  %".4072" = load float, ptr %"R20"
  %".4073" = load float, ptr %"R11"
  %"fmul.166" = fmul float %".4072", %".4073"
  %"fadd.146" = fadd float %"fmul.166", 0xbff0000000000000
  %".4074" = bitcast ptr %"R8" to ptr
  store float %"fadd.146", ptr %".4074"
  ; FADD.FTZ R8, -R8, -RZ
  %".4077" = load float, ptr %"R8"
  %".4078" = fneg float %".4077"
  %"fadd.147" = fadd float %".4078",              0x0
  %".4079" = bitcast ptr %"R8" to ptr
  store float %"fadd.147", ptr %".4079"
  ; FFMA R8, R11, R8, R11
  %".4082" = load float, ptr %"R11"
  %".4083" = load float, ptr %"R8"
  %".4084" = load float, ptr %"R11"
  %"fmul.167" = fmul float %".4082", %".4083"
  %"fadd.148" = fadd float %"fmul.167", %".4084"
  %".4085" = bitcast ptr %"R8" to ptr
  store float %"fadd.148", ptr %".4085"
  br label %".L_x_21"
.L_x_21:
  ; BSYNC B0
  br label %".L_x_19"
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  %".4091" = load i32, ptr %"R28"
  %"zext.459" = zext i32 %".4091" to i64
  %".4092" = load i32, ptr %"R29"
  %"zext.460" = zext i32 %".4092" to i64
  %"shl.194" = shl i64 %"zext.460", 32
  %"or.176" = or i64 %"shl.194", %"zext.459"
  %".4093" = inttoptr i64 %"or.176" to ptr
  %".4094" = ptrtoint ptr %".4093" to i64
  %".4095" = add i64 %".4094", 0
  %"for_LDG.158" = inttoptr i64 %".4095" to ptr
  %".4096" = load float, ptr %"for_LDG.158"
  %".4097" = bitcast ptr %"R11" to ptr
  store float %".4096", ptr %".4097"
  ; FADD R10, -R8, 1
  %".4100" = load float, ptr %"R8"
  %".4101" = fneg float %".4100"
  %"fadd.149" = fadd float %".4101", 0x3ff0000000000000
  %".4102" = bitcast ptr %"R10" to ptr
  store float %"fadd.149", ptr %".4102"
  ; FMUL R11, R11, R8
  %".4105" = load float, ptr %"R11"
  %".4106" = load float, ptr %"R8"
  %"fmul.168" = fmul float %".4105", %".4106"
  %".4107" = bitcast ptr %"R11" to ptr
  store float %"fmul.168", ptr %".4107"
  ; FFMA R9, R10, R9, R11
  %".4110" = load float, ptr %"R10"
  %".4111" = load float, ptr %"R9"
  %".4112" = load float, ptr %"R11"
  %"fmul.169" = fmul float %".4110", %".4111"
  %"fadd.150" = fadd float %"fmul.169", %".4112"
  %".4113" = bitcast ptr %"R9" to ptr
  store float %"fadd.150", ptr %".4113"
  ; STG.E.SYS [R28], R9
  %".4116" = load float, ptr %"R9"
  %".4117" = load i32, ptr %"R28"
  %"zext.461" = zext i32 %".4117" to i64
  %".4118" = load i32, ptr %"R29"
  %"zext.462" = zext i32 %".4118" to i64
  %"shl.195" = shl i64 %"zext.462", 32
  %"or.177" = or i64 %"shl.195", %"zext.461"
  %".4119" = inttoptr i64 %"or.177" to ptr
  %".4120" = ptrtoint ptr %".4119" to i64
  %".4121" = add i64 %".4120", 0
  %"for_STG" = inttoptr i64 %".4121" to ptr
  store float %".4116", ptr %"for_STG"
  ; @!P3 BRA `(.L_x_22)
  %".4124" = load i1, ptr %"P3"
  %".4125" = icmp eq i1 %".4124", 1
  br i1 %".4125", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".4132" = load i32, ptr %"R15"
  %".4133" = and i32 %".4132", 3
  store i32 %".4133", ptr %"R15"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".4136" = load i32, ptr %"R5"
  %".4137" = and i32 %".4136", 3
  store i32 %".4137", ptr %"R48"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".4140" = load i32, ptr %"R18"
  %".4141" = sub i32 0, %".4140"
  %"add.172" = add i32 %".4141", %"Arg_4"
  %"add.173" = add i32 %"add.172", 0
  store i32 %"add.173", ptr %"R49"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".4144" = icmp ult i32 31, 32
  %"SHF_min.18" = select  i1 %".4144", i32 31, i32 32
  %".4145" = load i32, ptr %"R5"
  %"zext.463" = zext i32 %".4145" to i64
  %"zext.464" = zext i32 0 to i64
  %"zext.465" = zext i32 31 to i64
  %"shl.196" = shl i64 %"zext.463", 32
  %"or.178" = or i64 %"shl.196", %"zext.464"
  %"ashr" = ashr i64 %"or.178", %"zext.465"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.106" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.106", ptr %"R16"
  ; MOV R17, RZ
  %".4148" = load i32, ptr %"RZ"
  store i32 %".4148", ptr %"R17"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".4151" = load i32, ptr %"R18"
  %".4152" = sub i32 0, %".4151"
  %"add.174" = add i32 %".4152", %"Arg_5"
  %"add.175" = add i32 %"add.174", 0
  store i32 %"add.175", ptr %"R18"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".4155" = load i32, ptr %"R15"
  %".4156" = sub i32 0, %".4155"
  %"add.176" = add i32 %".4156", %"Arg_4"
  %"add.177" = add i32 %"add.176", 0
  store i32 %"add.177", ptr %"R19"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".4159" = load i32, ptr %"R48"
  %".4160" = sub i32 0, %".4159"
  %"add.178" = add i32 %".4160", %"Arg_5"
  %"add.179" = add i32 %"add.178", 0
  store i32 %"add.179", ptr %"R20"
  br label %".L_x_47"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".4164" = load i32, ptr %"R49"
  %".4165" = load i1, ptr %"PT"
  %"cmp.35" = icmp sge i32 %".4164", 3
  %".4166" = and i1 %"cmp.35", %".4165"
  store i1 %".4166", ptr %"P0"
  ; MOV R13, R17
  %".4169" = load i32, ptr %"R17"
  store i32 %".4169", ptr %"R13"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R4"
  ; IADD3 R17, R17, 0x1, RZ
  %".4174" = load i32, ptr %"R17"
  %"add.180" = add i32 %".4174", 1
  %"add.181" = add i32 %"add.180", 0
  store i32 %"add.181", ptr %"R17"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".4177" = load i32, ptr %"R4"
  %".4178" = load i1, ptr %"PT"
  %"cmp.36" = icmp sge i32 %".4177", 1
  %".4179" = and i1 %"cmp.36", %".4178"
  store i1 %".4179", ptr %"P4"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".4182" = load i32, ptr %"R15"
  %".4183" = load i1, ptr %"PT"
  %"cmp.37" = icmp ne i32 %".4182", 0
  %".4184" = and i1 %"cmp.37", %".4183"
  store i1 %".4184", ptr %"P1"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".4187" = load i32, ptr %"R17"
  %".4188" = load i1, ptr %"PT"
  %"cmp.38" = icmp sge i32 %".4187", %"Arg_6"
  %".4189" = and i1 %"cmp.38", %".4188"
  store i1 %".4189", ptr %"P3"
  ; MOV R21, RZ
  %".4192" = load float, ptr %"RZ"
  %".4193" = bitcast ptr %"R21" to ptr
  store float %".4192", ptr %".4193"
  ; MOV R22, RZ
  %".4196" = load i32, ptr %"RZ"
  store i32 %".4196", ptr %"R22"
  ; MOV R56, RZ
  %".4199" = load float, ptr %"RZ"
  %".4200" = bitcast ptr %"R56" to ptr
  store float %".4199", ptr %".4200"
  ; MOV R44, RZ
  %".4203" = load float, ptr %"RZ"
  %".4204" = bitcast ptr %"R44" to ptr
  store float %".4203", ptr %".4204"
  ; @!P0 BRA `(.L_x_23)
  %".4207" = load i1, ptr %"P0"
  %".4208" = icmp eq i1 %".4207", 1
  br i1 %".4208", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R25"
  ; MOV R21, RZ
  %".4213" = load float, ptr %"RZ"
  %".4214" = bitcast ptr %"R21" to ptr
  store float %".4213", ptr %".4214"
  ; MOV R22, RZ
  %".4217" = load i32, ptr %"RZ"
  store i32 %".4217", ptr %"R22"
  ; MOV R12, R19
  %".4220" = load i32, ptr %"R19"
  store i32 %".4220", ptr %"R12"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".4223" = icmp ult i32 2, 64
  %"SHF_min.19" = select  i1 %".4223", i32 2, i32 64
  %".4224" = load i32, ptr %"R16"
  %".4225" = load i32, ptr %"R25"
  %"zext.466" = zext i32 %".4224" to i64
  %"zext.467" = zext i32 %".4225" to i64
  %"zext.468" = zext i32 2 to i64
  %"shl.197" = shl i64 %"zext.466", 32
  %"or.179" = or i64 %"shl.197", %"zext.467"
  %"shl.198" = shl i64 %"or.179", %"zext.468"
  %"lshr.12" = lshr i64 %"shl.198", 32
  %"trunc32.107" = trunc i64 %"lshr.12" to i32
  store i32 %"trunc32.107", ptr %"R23"
  br label %".L_x_24"
.L_x_24:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R6, R14, c[0x0][0x180], R22.reuse
  %".4231" = load i32, ptr %"R14"
  %".4232" = load i32, ptr %"R22"
  %"mul.52" = mul i32 %".4231", %"Arg_4"
  %"add.182" = add i32 %"mul.52", %".4232"
  store i32 %"add.182", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R9"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".4237" = load i32, ptr %"R13"
  %".4238" = load i32, ptr %"R22"
  %"mul.53" = mul i32 %".4237", %"Arg_4"
  %"add.183" = add i32 %"mul.53", %".4238"
  store i32 %"add.183", ptr %"R10"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".4241" = load i32, ptr %"R6"
  %".4242" = load i32, ptr %"R7"
  %"zext.469" = zext i32 %".4241" to i64
  %"zext.470" = zext i32 %".4242" to i64
  %"mul.54" = mul i64 %"zext.469", %"zext.470"
  %".4243" = ptrtoint ptr %"Arg_2" to i64
  %"add.184" = add i64 %"mul.54", %".4243"
  %".4244" = and i64 %"add.184", 18446744069414584320
  %".4245" = lshr i64 %".4244", 32
  %"trunc32.108" = trunc i64 %".4245" to i32
  %"trunc32.109" = trunc i64 %"add.184" to i32
  store i32 %"trunc32.109", ptr %"R4"
  store i32 %"trunc32.108", ptr %"R5"
  ; LEA R6, R9, R6, 0x1
  %".4249" = load i32, ptr %"R9"
  %".4250" = load i32, ptr %"R6"
  %"shl.199" = shl i32 %".4249", 1
  %"add.185" = add i32 %"shl.199", %".4250"
  store i32 %"add.185", ptr %"R6"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".4253" = load i32, ptr %"R10"
  %".4254" = load i32, ptr %"R7"
  %"zext.471" = zext i32 %".4253" to i64
  %"zext.472" = zext i32 %".4254" to i64
  %"mul.55" = mul i64 %"zext.471", %"zext.472"
  %".4255" = ptrtoint ptr %"Arg_0" to i64
  %"add.186" = add i64 %"mul.55", %".4255"
  %".4256" = and i64 %"add.186", 18446744069414584320
  %".4257" = lshr i64 %".4256", 32
  %"trunc32.110" = trunc i64 %".4257" to i32
  %"trunc32.111" = trunc i64 %"add.186" to i32
  store i32 %"trunc32.111", ptr %"R10"
  store i32 %"trunc32.110", ptr %"R11"
  ; LEA R8, P0, R25, R4, 0x2
  %".4261" = load i1, ptr %"P0"
  %".4262" = sub i1 0, %".4261"
  %".4263" = load i32, ptr %"R25"
  %".4264" = load i32, ptr %"R4"
  %".4265" = sext i1 %".4262" to i32
  %"shl.200" = shl i32 %".4265", %".4264"
  %"add.187" = add i32 %"shl.200", %".4263"
  store i32 %"add.187", ptr %"R8"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".4268" = load i32, ptr %"R6"
  %".4269" = load i32, ptr %"R7"
  %"zext.473" = zext i32 %".4268" to i64
  %"zext.474" = zext i32 %".4269" to i64
  %"mul.56" = mul i64 %"zext.473", %"zext.474"
  %".4270" = ptrtoint ptr %"Arg_2" to i64
  %"add.188" = add i64 %"mul.56", %".4270"
  %".4271" = and i64 %"add.188", 18446744069414584320
  %".4272" = lshr i64 %".4271", 32
  %"trunc32.112" = trunc i64 %".4272" to i32
  %"trunc32.113" = trunc i64 %"add.188" to i32
  store i32 %"trunc32.113", ptr %"R6"
  store i32 %"trunc32.112", ptr %"R7"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".4276" = load i32, ptr %"R5"
  %".4277" = load i32, ptr %"R23"
  %".4278" = load i1, ptr %"P0"
  %".4279" = sub i1 0, %".4278"
  %".4280" = zext i1 %".4279" to i32
  %"add.189" = add i32 %".4276", %".4277"
  %"add.190" = add i32 %"add.189", 0
  %"add.191" = add i32 %"add.190", %".4280"
  store i32 %"add.191", ptr %"R9"
  ; LDG.E.SYS R35, [R4]
  %".4283" = load i32, ptr %"R4"
  %"zext.475" = zext i32 %".4283" to i64
  %".4284" = load i32, ptr %"R5"
  %"zext.476" = zext i32 %".4284" to i64
  %"shl.201" = shl i64 %"zext.476", 32
  %"or.180" = or i64 %"shl.201", %"zext.475"
  %".4285" = inttoptr i64 %"or.180" to ptr
  %".4286" = ptrtoint ptr %".4285" to i64
  %".4287" = add i64 %".4286", 0
  %"for_LDG.159" = inttoptr i64 %".4287" to ptr
  %".4288" = load float, ptr %"for_LDG.159"
  %".4289" = bitcast ptr %"R35" to ptr
  store float %".4288", ptr %".4289"
  ; LDG.E.SYS R24, [R10]
  %".4292" = load i32, ptr %"R10"
  %"zext.477" = zext i32 %".4292" to i64
  %".4293" = load i32, ptr %"R11"
  %"zext.478" = zext i32 %".4293" to i64
  %"shl.202" = shl i64 %"zext.478", 32
  %"or.181" = or i64 %"shl.202", %"zext.477"
  %".4294" = inttoptr i64 %"or.181" to ptr
  %".4295" = ptrtoint ptr %".4294" to i64
  %".4296" = add i64 %".4295", 0
  %"for_LDG.160" = inttoptr i64 %".4296" to ptr
  %".4297" = load float, ptr %"for_LDG.160"
  %".4298" = bitcast ptr %"R24" to ptr
  store float %".4297", ptr %".4298"
  ; LDG.E.SYS R37, [R8]
  %".4301" = load i32, ptr %"R8"
  %"zext.479" = zext i32 %".4301" to i64
  %".4302" = load i32, ptr %"R9"
  %"zext.480" = zext i32 %".4302" to i64
  %"shl.203" = shl i64 %"zext.480", 32
  %"or.182" = or i64 %"shl.203", %"zext.479"
  %".4303" = inttoptr i64 %"or.182" to ptr
  %".4304" = ptrtoint ptr %".4303" to i64
  %".4305" = add i64 %".4304", 0
  %"for_LDG.161" = inttoptr i64 %".4305" to ptr
  %".4306" = load float, ptr %"for_LDG.161"
  %".4307" = bitcast ptr %"R37" to ptr
  store float %".4306", ptr %".4307"
  ; LDG.E.SYS R34, [R6]
  %".4310" = load i32, ptr %"R6"
  %"zext.481" = zext i32 %".4310" to i64
  %".4311" = load i32, ptr %"R7"
  %"zext.482" = zext i32 %".4311" to i64
  %"shl.204" = shl i64 %"zext.482", 32
  %"or.183" = or i64 %"shl.204", %"zext.481"
  %".4312" = inttoptr i64 %"or.183" to ptr
  %".4313" = ptrtoint ptr %".4312" to i64
  %".4314" = add i64 %".4313", 0
  %"for_LDG.162" = inttoptr i64 %".4314" to ptr
  %".4315" = load float, ptr %"for_LDG.162"
  %".4316" = bitcast ptr %"R34" to ptr
  store float %".4315", ptr %".4316"
  ; LDG.E.SYS R36, [R4+0x4]
  %".4319" = load i32, ptr %"R4"
  %"zext.483" = zext i32 %".4319" to i64
  %".4320" = load i32, ptr %"R5"
  %"zext.484" = zext i32 %".4320" to i64
  %"shl.205" = shl i64 %"zext.484", 32
  %"or.184" = or i64 %"shl.205", %"zext.483"
  %".4321" = inttoptr i64 %"or.184" to ptr
  %".4322" = ptrtoint ptr %".4321" to i64
  %".4323" = add i64 %".4322", 4
  %"for_LDG.163" = inttoptr i64 %".4323" to ptr
  %".4324" = load float, ptr %"for_LDG.163"
  %".4325" = bitcast ptr %"R36" to ptr
  store float %".4324", ptr %".4325"
  ; LDG.E.SYS R38, [R10+0x4]
  %".4328" = load i32, ptr %"R10"
  %"zext.485" = zext i32 %".4328" to i64
  %".4329" = load i32, ptr %"R11"
  %"zext.486" = zext i32 %".4329" to i64
  %"shl.206" = shl i64 %"zext.486", 32
  %"or.185" = or i64 %"shl.206", %"zext.485"
  %".4330" = inttoptr i64 %"or.185" to ptr
  %".4331" = ptrtoint ptr %".4330" to i64
  %".4332" = add i64 %".4331", 4
  %"for_LDG.164" = inttoptr i64 %".4332" to ptr
  %".4333" = load float, ptr %"for_LDG.164"
  %".4334" = bitcast ptr %"R38" to ptr
  store float %".4333", ptr %".4334"
  ; LDG.E.SYS R39, [R8+0x4]
  %".4337" = load i32, ptr %"R8"
  %"zext.487" = zext i32 %".4337" to i64
  %".4338" = load i32, ptr %"R9"
  %"zext.488" = zext i32 %".4338" to i64
  %"shl.207" = shl i64 %"zext.488", 32
  %"or.186" = or i64 %"shl.207", %"zext.487"
  %".4339" = inttoptr i64 %"or.186" to ptr
  %".4340" = ptrtoint ptr %".4339" to i64
  %".4341" = add i64 %".4340", 4
  %"for_LDG.165" = inttoptr i64 %".4341" to ptr
  %".4342" = load float, ptr %"for_LDG.165"
  %".4343" = bitcast ptr %"R39" to ptr
  store float %".4342", ptr %".4343"
  ; LDG.E.SYS R41, [R6+0x4]
  %".4346" = load i32, ptr %"R6"
  %"zext.489" = zext i32 %".4346" to i64
  %".4347" = load i32, ptr %"R7"
  %"zext.490" = zext i32 %".4347" to i64
  %"shl.208" = shl i64 %"zext.490", 32
  %"or.187" = or i64 %"shl.208", %"zext.489"
  %".4348" = inttoptr i64 %"or.187" to ptr
  %".4349" = ptrtoint ptr %".4348" to i64
  %".4350" = add i64 %".4349", 4
  %"for_LDG.166" = inttoptr i64 %".4350" to ptr
  %".4351" = load float, ptr %"for_LDG.166"
  %".4352" = bitcast ptr %"R41" to ptr
  store float %".4351", ptr %".4352"
  ; LDG.E.SYS R42, [R10+0x8]
  %".4355" = load i32, ptr %"R10"
  %"zext.491" = zext i32 %".4355" to i64
  %".4356" = load i32, ptr %"R11"
  %"zext.492" = zext i32 %".4356" to i64
  %"shl.209" = shl i64 %"zext.492", 32
  %"or.188" = or i64 %"shl.209", %"zext.491"
  %".4357" = inttoptr i64 %"or.188" to ptr
  %".4358" = ptrtoint ptr %".4357" to i64
  %".4359" = add i64 %".4358", 8
  %"for_LDG.167" = inttoptr i64 %".4359" to ptr
  %".4360" = load float, ptr %"for_LDG.167"
  %".4361" = bitcast ptr %"R42" to ptr
  store float %".4360", ptr %".4361"
  ; LDG.E.SYS R40, [R4+0x8]
  %".4364" = load i32, ptr %"R4"
  %"zext.493" = zext i32 %".4364" to i64
  %".4365" = load i32, ptr %"R5"
  %"zext.494" = zext i32 %".4365" to i64
  %"shl.210" = shl i64 %"zext.494", 32
  %"or.189" = or i64 %"shl.210", %"zext.493"
  %".4366" = inttoptr i64 %"or.189" to ptr
  %".4367" = ptrtoint ptr %".4366" to i64
  %".4368" = add i64 %".4367", 8
  %"for_LDG.168" = inttoptr i64 %".4368" to ptr
  %".4369" = load float, ptr %"for_LDG.168"
  %".4370" = bitcast ptr %"R40" to ptr
  store float %".4369", ptr %".4370"
  ; LDG.E.SYS R43, [R8+0x8]
  %".4373" = load i32, ptr %"R8"
  %"zext.495" = zext i32 %".4373" to i64
  %".4374" = load i32, ptr %"R9"
  %"zext.496" = zext i32 %".4374" to i64
  %"shl.211" = shl i64 %"zext.496", 32
  %"or.190" = or i64 %"shl.211", %"zext.495"
  %".4375" = inttoptr i64 %"or.190" to ptr
  %".4376" = ptrtoint ptr %".4375" to i64
  %".4377" = add i64 %".4376", 8
  %"for_LDG.169" = inttoptr i64 %".4377" to ptr
  %".4378" = load float, ptr %"for_LDG.169"
  %".4379" = bitcast ptr %"R43" to ptr
  store float %".4378", ptr %".4379"
  ; LDG.E.SYS R45, [R6+0x8]
  %".4382" = load i32, ptr %"R6"
  %"zext.497" = zext i32 %".4382" to i64
  %".4383" = load i32, ptr %"R7"
  %"zext.498" = zext i32 %".4383" to i64
  %"shl.212" = shl i64 %"zext.498", 32
  %"or.191" = or i64 %"shl.212", %"zext.497"
  %".4384" = inttoptr i64 %"or.191" to ptr
  %".4385" = ptrtoint ptr %".4384" to i64
  %".4386" = add i64 %".4385", 8
  %"for_LDG.170" = inttoptr i64 %".4386" to ptr
  %".4387" = load float, ptr %"for_LDG.170"
  %".4388" = bitcast ptr %"R45" to ptr
  store float %".4387", ptr %".4388"
  ; LDG.E.SYS R47, [R10+0xc]
  %".4391" = load i32, ptr %"R10"
  %"zext.499" = zext i32 %".4391" to i64
  %".4392" = load i32, ptr %"R11"
  %"zext.500" = zext i32 %".4392" to i64
  %"shl.213" = shl i64 %"zext.500", 32
  %"or.192" = or i64 %"shl.213", %"zext.499"
  %".4393" = inttoptr i64 %"or.192" to ptr
  %".4394" = ptrtoint ptr %".4393" to i64
  %".4395" = add i64 %".4394", 12
  %"for_LDG.171" = inttoptr i64 %".4395" to ptr
  %".4396" = load float, ptr %"for_LDG.171"
  %".4397" = bitcast ptr %"R47" to ptr
  store float %".4396", ptr %".4397"
  ; LDG.E.SYS R46, [R4+0xc]
  %".4400" = load i32, ptr %"R4"
  %"zext.501" = zext i32 %".4400" to i64
  %".4401" = load i32, ptr %"R5"
  %"zext.502" = zext i32 %".4401" to i64
  %"shl.214" = shl i64 %"zext.502", 32
  %"or.193" = or i64 %"shl.214", %"zext.501"
  %".4402" = inttoptr i64 %"or.193" to ptr
  %".4403" = ptrtoint ptr %".4402" to i64
  %".4404" = add i64 %".4403", 12
  %"for_LDG.172" = inttoptr i64 %".4404" to ptr
  %".4405" = load float, ptr %"for_LDG.172"
  %".4406" = bitcast ptr %"R46" to ptr
  store float %".4405", ptr %".4406"
  ; LDG.E.SYS R50, [R8+0xc]
  %".4409" = load i32, ptr %"R8"
  %"zext.503" = zext i32 %".4409" to i64
  %".4410" = load i32, ptr %"R9"
  %"zext.504" = zext i32 %".4410" to i64
  %"shl.215" = shl i64 %"zext.504", 32
  %"or.194" = or i64 %"shl.215", %"zext.503"
  %".4411" = inttoptr i64 %"or.194" to ptr
  %".4412" = ptrtoint ptr %".4411" to i64
  %".4413" = add i64 %".4412", 12
  %"for_LDG.173" = inttoptr i64 %".4413" to ptr
  %".4414" = load float, ptr %"for_LDG.173"
  %".4415" = bitcast ptr %"R50" to ptr
  store float %".4414", ptr %".4415"
  ; LDG.E.SYS R51, [R6+0xc]
  %".4418" = load i32, ptr %"R6"
  %"zext.505" = zext i32 %".4418" to i64
  %".4419" = load i32, ptr %"R7"
  %"zext.506" = zext i32 %".4419" to i64
  %"shl.216" = shl i64 %"zext.506", 32
  %"or.195" = or i64 %"shl.216", %"zext.505"
  %".4420" = inttoptr i64 %"or.195" to ptr
  %".4421" = ptrtoint ptr %".4420" to i64
  %".4422" = add i64 %".4421", 12
  %"for_LDG.174" = inttoptr i64 %".4422" to ptr
  %".4423" = load float, ptr %"for_LDG.174"
  %".4424" = bitcast ptr %"R51" to ptr
  store float %".4423", ptr %".4424"
  ; IADD3 R12, R12, -0x4, RZ
  %".4427" = load i32, ptr %"R12"
  %"add.192" = add i32 %".4427", -4
  %"add.193" = add i32 %"add.192", 0
  store i32 %"add.193", ptr %"R12"
  ; IADD3 R22, R22, 0x4, RZ
  %".4430" = load i32, ptr %"R22"
  %"add.194" = add i32 %".4430", 4
  %"add.195" = add i32 %"add.194", 0
  store i32 %"add.195", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".4433" = load i32, ptr %"R12"
  %".4434" = load i1, ptr %"PT"
  %"cmp.39" = icmp ne i32 %".4433", 0
  %".4435" = and i1 %"cmp.39", %".4434"
  store i1 %".4435", ptr %"P0"
  ; FFMA R35, R35, R24, R44
  %".4438" = load float, ptr %"R35"
  %".4439" = load float, ptr %"R24"
  %".4440" = load float, ptr %"R44"
  %"fmul.170" = fmul float %".4438", %".4439"
  %"fadd.151" = fadd float %"fmul.170", %".4440"
  %".4441" = bitcast ptr %"R35" to ptr
  store float %"fadd.151", ptr %".4441"
  ; FFMA R37, R24.reuse, R37, R56
  %".4444" = load float, ptr %"R24"
  %".4445" = load float, ptr %"R37"
  %".4446" = load float, ptr %"R56"
  %"fmul.171" = fmul float %".4444", %".4445"
  %"fadd.152" = fadd float %"fmul.171", %".4446"
  %".4447" = bitcast ptr %"R37" to ptr
  store float %"fadd.152", ptr %".4447"
  ; FFMA R34, R24, R34, R21
  %".4450" = load float, ptr %"R24"
  %".4451" = load float, ptr %"R34"
  %".4452" = load float, ptr %"R21"
  %"fmul.172" = fmul float %".4450", %".4451"
  %"fadd.153" = fadd float %"fmul.172", %".4452"
  %".4453" = bitcast ptr %"R34" to ptr
  store float %"fadd.153", ptr %".4453"
  ; FFMA R35, R36, R38, R35
  %".4456" = load float, ptr %"R36"
  %".4457" = load float, ptr %"R38"
  %".4458" = load float, ptr %"R35"
  %"fmul.173" = fmul float %".4456", %".4457"
  %"fadd.154" = fadd float %"fmul.173", %".4458"
  %".4459" = bitcast ptr %"R35" to ptr
  store float %"fadd.154", ptr %".4459"
  ; FFMA R37, R38, R39, R37
  %".4462" = load float, ptr %"R38"
  %".4463" = load float, ptr %"R39"
  %".4464" = load float, ptr %"R37"
  %"fmul.174" = fmul float %".4462", %".4463"
  %"fadd.155" = fadd float %"fmul.174", %".4464"
  %".4465" = bitcast ptr %"R37" to ptr
  store float %"fadd.155", ptr %".4465"
  ; FFMA R34, R38, R41, R34
  %".4468" = load float, ptr %"R38"
  %".4469" = load float, ptr %"R41"
  %".4470" = load float, ptr %"R34"
  %"fmul.175" = fmul float %".4468", %".4469"
  %"fadd.156" = fadd float %"fmul.175", %".4470"
  %".4471" = bitcast ptr %"R34" to ptr
  store float %"fadd.156", ptr %".4471"
  ; FFMA R35, R40, R42, R35
  %".4474" = load float, ptr %"R40"
  %".4475" = load float, ptr %"R42"
  %".4476" = load float, ptr %"R35"
  %"fmul.176" = fmul float %".4474", %".4475"
  %"fadd.157" = fadd float %"fmul.176", %".4476"
  %".4477" = bitcast ptr %"R35" to ptr
  store float %"fadd.157", ptr %".4477"
  ; FFMA R37, R42.reuse, R43, R37
  %".4480" = load float, ptr %"R42"
  %".4481" = load float, ptr %"R43"
  %".4482" = load float, ptr %"R37"
  %"fmul.177" = fmul float %".4480", %".4481"
  %"fadd.158" = fadd float %"fmul.177", %".4482"
  %".4483" = bitcast ptr %"R37" to ptr
  store float %"fadd.158", ptr %".4483"
  ; FFMA R34, R42, R45, R34
  %".4486" = load float, ptr %"R42"
  %".4487" = load float, ptr %"R45"
  %".4488" = load float, ptr %"R34"
  %"fmul.178" = fmul float %".4486", %".4487"
  %"fadd.159" = fadd float %"fmul.178", %".4488"
  %".4489" = bitcast ptr %"R34" to ptr
  store float %"fadd.159", ptr %".4489"
  ; FFMA R44, R46, R47, R35
  %".4492" = load float, ptr %"R46"
  %".4493" = load float, ptr %"R47"
  %".4494" = load float, ptr %"R35"
  %"fmul.179" = fmul float %".4492", %".4493"
  %"fadd.160" = fadd float %"fmul.179", %".4494"
  %".4495" = bitcast ptr %"R44" to ptr
  store float %"fadd.160", ptr %".4495"
  ; FFMA R56, R47, R50, R37
  %".4498" = load float, ptr %"R47"
  %".4499" = load float, ptr %"R50"
  %".4500" = load float, ptr %"R37"
  %"fmul.180" = fmul float %".4498", %".4499"
  %"fadd.161" = fadd float %"fmul.180", %".4500"
  %".4501" = bitcast ptr %"R56" to ptr
  store float %"fadd.161", ptr %".4501"
  ; FFMA R21, R47, R51, R34
  %".4504" = load float, ptr %"R47"
  %".4505" = load float, ptr %"R51"
  %".4506" = load float, ptr %"R34"
  %"fmul.181" = fmul float %".4504", %".4505"
  %"fadd.162" = fadd float %"fmul.181", %".4506"
  %".4507" = bitcast ptr %"R21" to ptr
  store float %"fadd.162", ptr %".4507"
  ; @P0 BRA `(.L_x_24)
  %".4510" = load i1, ptr %"P0"
  %".4511" = icmp ne i1 %".4510", 1
  br i1 %".4511", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".4514" = load i1, ptr %"P1"
  %".4515" = icmp eq i1 %".4514", 1
  br i1 %".4515", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  %".4520" = load i32, ptr %"R14"
  %".4521" = load i32, ptr %"R22"
  %"mul.57" = mul i32 %".4520", %"Arg_4"
  %"add.196" = add i32 %"mul.57", %".4521"
  store i32 %"add.196", ptr %"R7"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R10"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".4526" = load i32, ptr %"R13"
  %".4527" = load i32, ptr %"R22"
  %"mul.58" = mul i32 %".4526", %"Arg_4"
  %"add.197" = add i32 %"mul.58", %".4527"
  store i32 %"add.197", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R9"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".4532" = load i32, ptr %"R7"
  %".4533" = load i32, ptr %"R11"
  %"zext.507" = zext i32 %".4532" to i64
  %"zext.508" = zext i32 %".4533" to i64
  %"mul.59" = mul i64 %"zext.507", %"zext.508"
  %".4534" = ptrtoint ptr %"Arg_2" to i64
  %"add.198" = add i64 %"mul.59", %".4534"
  %".4535" = and i64 %"add.198", 18446744069414584320
  %".4536" = lshr i64 %".4535", 32
  %"trunc32.114" = trunc i64 %".4536" to i32
  %"trunc32.115" = trunc i64 %"add.198" to i32
  store i32 %"trunc32.115", ptr %"R4"
  store i32 %"trunc32.114", ptr %"R5"
  ; LEA R10, R10, R7, 0x1
  %".4540" = load i32, ptr %"R10"
  %".4541" = load i32, ptr %"R7"
  %"shl.217" = shl i32 %".4540", 1
  %"add.199" = add i32 %"shl.217", %".4541"
  store i32 %"add.199", ptr %"R10"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".4544" = load i32, ptr %"R6"
  %".4545" = load i32, ptr %"R11"
  %"zext.509" = zext i32 %".4544" to i64
  %"zext.510" = zext i32 %".4545" to i64
  %"mul.60" = mul i64 %"zext.509", %"zext.510"
  %".4546" = ptrtoint ptr %"Arg_0" to i64
  %"add.200" = add i64 %"mul.60", %".4546"
  %".4547" = and i64 %"add.200", 18446744069414584320
  %".4548" = lshr i64 %".4547", 32
  %"trunc32.116" = trunc i64 %".4548" to i32
  %"trunc32.117" = trunc i64 %"add.200" to i32
  store i32 %"trunc32.117", ptr %"R6"
  store i32 %"trunc32.116", ptr %"R7"
  ; LEA R8, P0, R9, R4, 0x2
  %".4552" = load i1, ptr %"P0"
  %".4553" = sub i1 0, %".4552"
  %".4554" = load i32, ptr %"R9"
  %".4555" = load i32, ptr %"R4"
  %".4556" = sext i1 %".4553" to i32
  %"shl.218" = shl i32 %".4556", %".4555"
  %"add.201" = add i32 %"shl.218", %".4554"
  store i32 %"add.201", ptr %"R8"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".4559" = load i32, ptr %"R10"
  %".4560" = load i32, ptr %"R11"
  %"zext.511" = zext i32 %".4559" to i64
  %"zext.512" = zext i32 %".4560" to i64
  %"mul.61" = mul i64 %"zext.511", %"zext.512"
  %".4561" = ptrtoint ptr %"Arg_2" to i64
  %"add.202" = add i64 %"mul.61", %".4561"
  %".4562" = and i64 %"add.202", 18446744069414584320
  %".4563" = lshr i64 %".4562", 32
  %"trunc32.118" = trunc i64 %".4563" to i32
  %"trunc32.119" = trunc i64 %"add.202" to i32
  store i32 %"trunc32.119", ptr %"R10"
  store i32 %"trunc32.118", ptr %"R11"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".4567" = load i32, ptr %"R9"
  %".4568" = load i32, ptr %"R5"
  %".4569" = load i32, ptr %"R16"
  %"shl.219" = shl i32 %".4567", %".4569"
  %"add.203" = add i32 %"shl.219", %".4568"
  store i32 %"add.203", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".4572" = load i32, ptr %"R4"
  %"zext.513" = zext i32 %".4572" to i64
  %".4573" = load i32, ptr %"R5"
  %"zext.514" = zext i32 %".4573" to i64
  %"shl.220" = shl i64 %"zext.514", 32
  %"or.196" = or i64 %"shl.220", %"zext.513"
  %".4574" = inttoptr i64 %"or.196" to ptr
  %".4575" = ptrtoint ptr %".4574" to i64
  %".4576" = add i64 %".4575", 0
  %"for_LDG.175" = inttoptr i64 %".4576" to ptr
  %".4577" = load float, ptr %"for_LDG.175"
  %".4578" = bitcast ptr %"R13" to ptr
  store float %".4577", ptr %".4578"
  ; LDG.E.SYS R12, [R6]
  %".4581" = load i32, ptr %"R6"
  %"zext.515" = zext i32 %".4581" to i64
  %".4582" = load i32, ptr %"R7"
  %"zext.516" = zext i32 %".4582" to i64
  %"shl.221" = shl i64 %"zext.516", 32
  %"or.197" = or i64 %"shl.221", %"zext.515"
  %".4583" = inttoptr i64 %"or.197" to ptr
  %".4584" = ptrtoint ptr %".4583" to i64
  %".4585" = add i64 %".4584", 0
  %"for_LDG.176" = inttoptr i64 %".4585" to ptr
  %".4586" = load float, ptr %"for_LDG.176"
  %".4587" = bitcast ptr %"R12" to ptr
  store float %".4586", ptr %".4587"
  ; LDG.E.SYS R23, [R8]
  %".4590" = load i32, ptr %"R8"
  %"zext.517" = zext i32 %".4590" to i64
  %".4591" = load i32, ptr %"R9"
  %"zext.518" = zext i32 %".4591" to i64
  %"shl.222" = shl i64 %"zext.518", 32
  %"or.198" = or i64 %"shl.222", %"zext.517"
  %".4592" = inttoptr i64 %"or.198" to ptr
  %".4593" = ptrtoint ptr %".4592" to i64
  %".4594" = add i64 %".4593", 0
  %"for_LDG.177" = inttoptr i64 %".4594" to ptr
  %".4595" = load float, ptr %"for_LDG.177"
  %".4596" = bitcast ptr %"R23" to ptr
  store float %".4595", ptr %".4596"
  ; LDG.E.SYS R22, [R10]
  %".4599" = load i32, ptr %"R10"
  %"zext.519" = zext i32 %".4599" to i64
  %".4600" = load i32, ptr %"R11"
  %"zext.520" = zext i32 %".4600" to i64
  %"shl.223" = shl i64 %"zext.520", 32
  %"or.199" = or i64 %"shl.223", %"zext.519"
  %".4601" = inttoptr i64 %"or.199" to ptr
  %".4602" = ptrtoint ptr %".4601" to i64
  %".4603" = add i64 %".4602", 0
  %"for_LDG.178" = inttoptr i64 %".4603" to ptr
  %".4604" = load float, ptr %"for_LDG.178"
  %".4605" = bitcast ptr %"R22" to ptr
  store float %".4604", ptr %".4605"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".4608" = load i32, ptr %"R15"
  %".4609" = load i1, ptr %"PT"
  %"cmp.40" = icmp ne i32 %".4608", 1
  %".4610" = and i1 %"cmp.40", %".4609"
  store i1 %".4610", ptr %"P0"
  ; FFMA R44, R13, R12, R44
  %".4613" = load float, ptr %"R13"
  %".4614" = load float, ptr %"R12"
  %".4615" = load float, ptr %"R44"
  %"fmul.182" = fmul float %".4613", %".4614"
  %"fadd.163" = fadd float %"fmul.182", %".4615"
  %".4616" = bitcast ptr %"R44" to ptr
  store float %"fadd.163", ptr %".4616"
  ; FFMA R56, R12.reuse, R23, R56
  %".4619" = load float, ptr %"R12"
  %".4620" = load float, ptr %"R23"
  %".4621" = load float, ptr %"R56"
  %"fmul.183" = fmul float %".4619", %".4620"
  %"fadd.164" = fadd float %"fmul.183", %".4621"
  %".4622" = bitcast ptr %"R56" to ptr
  store float %"fadd.164", ptr %".4622"
  ; FFMA R21, R12, R22, R21
  %".4625" = load float, ptr %"R12"
  %".4626" = load float, ptr %"R22"
  %".4627" = load float, ptr %"R21"
  %"fmul.184" = fmul float %".4625", %".4626"
  %"fadd.165" = fadd float %"fmul.184", %".4627"
  %".4628" = bitcast ptr %"R21" to ptr
  store float %"fadd.165", ptr %".4628"
  ; @!P0 BRA `(.L_x_25)
  %".4631" = load i1, ptr %"P0"
  %".4632" = icmp eq i1 %".4631", 1
  br i1 %".4632", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".4635" = load i32, ptr %"R15"
  %".4636" = load i1, ptr %"PT"
  %"cmp.41" = icmp ne i32 %".4635", 2
  %".4637" = and i1 %"cmp.41", %".4636"
  store i1 %".4637", ptr %"P0"
  ; LDG.E.SYS R13, [R4+0x4]
  %".4640" = load i32, ptr %"R4"
  %"zext.521" = zext i32 %".4640" to i64
  %".4641" = load i32, ptr %"R5"
  %"zext.522" = zext i32 %".4641" to i64
  %"shl.224" = shl i64 %"zext.522", 32
  %"or.200" = or i64 %"shl.224", %"zext.521"
  %".4642" = inttoptr i64 %"or.200" to ptr
  %".4643" = ptrtoint ptr %".4642" to i64
  %".4644" = add i64 %".4643", 4
  %"for_LDG.179" = inttoptr i64 %".4644" to ptr
  %".4645" = load float, ptr %"for_LDG.179"
  %".4646" = bitcast ptr %"R13" to ptr
  store float %".4645", ptr %".4646"
  ; LDG.E.SYS R12, [R6+0x4]
  %".4649" = load i32, ptr %"R6"
  %"zext.523" = zext i32 %".4649" to i64
  %".4650" = load i32, ptr %"R7"
  %"zext.524" = zext i32 %".4650" to i64
  %"shl.225" = shl i64 %"zext.524", 32
  %"or.201" = or i64 %"shl.225", %"zext.523"
  %".4651" = inttoptr i64 %"or.201" to ptr
  %".4652" = ptrtoint ptr %".4651" to i64
  %".4653" = add i64 %".4652", 4
  %"for_LDG.180" = inttoptr i64 %".4653" to ptr
  %".4654" = load float, ptr %"for_LDG.180"
  %".4655" = bitcast ptr %"R12" to ptr
  store float %".4654", ptr %".4655"
  ; LDG.E.SYS R23, [R8+0x4]
  %".4658" = load i32, ptr %"R8"
  %"zext.525" = zext i32 %".4658" to i64
  %".4659" = load i32, ptr %"R9"
  %"zext.526" = zext i32 %".4659" to i64
  %"shl.226" = shl i64 %"zext.526", 32
  %"or.202" = or i64 %"shl.226", %"zext.525"
  %".4660" = inttoptr i64 %"or.202" to ptr
  %".4661" = ptrtoint ptr %".4660" to i64
  %".4662" = add i64 %".4661", 4
  %"for_LDG.181" = inttoptr i64 %".4662" to ptr
  %".4663" = load float, ptr %"for_LDG.181"
  %".4664" = bitcast ptr %"R23" to ptr
  store float %".4663", ptr %".4664"
  ; LDG.E.SYS R22, [R10+0x4]
  %".4667" = load i32, ptr %"R10"
  %"zext.527" = zext i32 %".4667" to i64
  %".4668" = load i32, ptr %"R11"
  %"zext.528" = zext i32 %".4668" to i64
  %"shl.227" = shl i64 %"zext.528", 32
  %"or.203" = or i64 %"shl.227", %"zext.527"
  %".4669" = inttoptr i64 %"or.203" to ptr
  %".4670" = ptrtoint ptr %".4669" to i64
  %".4671" = add i64 %".4670", 4
  %"for_LDG.182" = inttoptr i64 %".4671" to ptr
  %".4672" = load float, ptr %"for_LDG.182"
  %".4673" = bitcast ptr %"R22" to ptr
  store float %".4672", ptr %".4673"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".4676" = load i1, ptr %"P0"
  %".4677" = icmp ne i1 %".4676", 1
  br i1 %".4677", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  %".4680" = load i32, ptr %"R4"
  %"zext.529" = zext i32 %".4680" to i64
  %".4681" = load i32, ptr %"R5"
  %"zext.530" = zext i32 %".4681" to i64
  %"shl.228" = shl i64 %"zext.530", 32
  %"or.204" = or i64 %"shl.228", %"zext.529"
  %".4682" = inttoptr i64 %"or.204" to ptr
  %".4683" = ptrtoint ptr %".4682" to i64
  %".4684" = add i64 %".4683", 8
  %"for_LDG.183" = inttoptr i64 %".4684" to ptr
  %".4685" = load float, ptr %"for_LDG.183"
  %".4686" = bitcast ptr %"R25" to ptr
  store float %".4685", ptr %".4686"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".4691" = load i1, ptr %"P0"
  %".4692" = icmp ne i1 %".4691", 1
  br i1 %".4692", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  %".4695" = load i32, ptr %"R6"
  %"zext.531" = zext i32 %".4695" to i64
  %".4696" = load i32, ptr %"R7"
  %"zext.532" = zext i32 %".4696" to i64
  %"shl.229" = shl i64 %"zext.532", 32
  %"or.205" = or i64 %"shl.229", %"zext.531"
  %".4697" = inttoptr i64 %"or.205" to ptr
  %".4698" = ptrtoint ptr %".4697" to i64
  %".4699" = add i64 %".4698", 8
  %"for_LDG.184" = inttoptr i64 %".4699" to ptr
  %".4700" = load float, ptr %"for_LDG.184"
  %".4701" = bitcast ptr %"R24" to ptr
  store float %".4700", ptr %".4701"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".4706" = load i1, ptr %"P0"
  %".4707" = icmp ne i1 %".4706", 1
  br i1 %".4707", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  %".4710" = load i32, ptr %"R8"
  %"zext.533" = zext i32 %".4710" to i64
  %".4711" = load i32, ptr %"R9"
  %"zext.534" = zext i32 %".4711" to i64
  %"shl.230" = shl i64 %"zext.534", 32
  %"or.206" = or i64 %"shl.230", %"zext.533"
  %".4712" = inttoptr i64 %"or.206" to ptr
  %".4713" = ptrtoint ptr %".4712" to i64
  %".4714" = add i64 %".4713", 8
  %"for_LDG.185" = inttoptr i64 %".4714" to ptr
  %".4715" = load float, ptr %"for_LDG.185"
  %".4716" = bitcast ptr %"R35" to ptr
  store float %".4715", ptr %".4716"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".4721" = load i1, ptr %"P0"
  %".4722" = icmp ne i1 %".4721", 1
  br i1 %".4722", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  %".4725" = load i32, ptr %"R10"
  %"zext.535" = zext i32 %".4725" to i64
  %".4726" = load i32, ptr %"R11"
  %"zext.536" = zext i32 %".4726" to i64
  %"shl.231" = shl i64 %"zext.536", 32
  %"or.207" = or i64 %"shl.231", %"zext.535"
  %".4727" = inttoptr i64 %"or.207" to ptr
  %".4728" = ptrtoint ptr %".4727" to i64
  %".4729" = add i64 %".4728", 8
  %"for_LDG.186" = inttoptr i64 %".4729" to ptr
  %".4730" = load float, ptr %"for_LDG.186"
  %".4731" = bitcast ptr %"R34" to ptr
  store float %".4730", ptr %".4731"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".4736" = load float, ptr %"R13"
  %".4737" = load float, ptr %"R12"
  %".4738" = load float, ptr %"R44"
  %"fmul.185" = fmul float %".4736", %".4737"
  %"fadd.166" = fadd float %"fmul.185", %".4738"
  %".4739" = bitcast ptr %"R44" to ptr
  store float %"fadd.166", ptr %".4739"
  ; FFMA R56, R12.reuse, R23, R56
  %".4742" = load float, ptr %"R12"
  %".4743" = load float, ptr %"R23"
  %".4744" = load float, ptr %"R56"
  %"fmul.186" = fmul float %".4742", %".4743"
  %"fadd.167" = fadd float %"fmul.186", %".4744"
  %".4745" = bitcast ptr %"R56" to ptr
  store float %"fadd.167", ptr %".4745"
  ; FFMA R21, R12, R22, R21
  %".4748" = load float, ptr %"R12"
  %".4749" = load float, ptr %"R22"
  %".4750" = load float, ptr %"R21"
  %"fmul.187" = fmul float %".4748", %".4749"
  %"fadd.168" = fadd float %"fmul.187", %".4750"
  %".4751" = bitcast ptr %"R21" to ptr
  store float %"fadd.168", ptr %".4751"
  ; @P0 FFMA R44, R25, R24, R44
  %".4754" = load i1, ptr %"P0"
  %".4755" = icmp ne i1 %".4754", 1
  br i1 %".4755", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".4758" = load float, ptr %"R25"
  %".4759" = load float, ptr %"R24"
  %".4760" = load float, ptr %"R44"
  %"fmul.188" = fmul float %".4758", %".4759"
  %"fadd.169" = fadd float %"fmul.188", %".4760"
  %".4761" = bitcast ptr %"R44" to ptr
  store float %"fadd.169", ptr %".4761"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".4766" = load i1, ptr %"P0"
  %".4767" = icmp ne i1 %".4766", 1
  br i1 %".4767", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".4770" = load float, ptr %"R24"
  %".4771" = load float, ptr %"R35"
  %".4772" = load float, ptr %"R56"
  %"fmul.189" = fmul float %".4770", %".4771"
  %"fadd.170" = fadd float %"fmul.189", %".4772"
  %".4773" = bitcast ptr %"R56" to ptr
  store float %"fadd.170", ptr %".4773"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".4778" = load i1, ptr %"P0"
  %".4779" = icmp ne i1 %".4778", 1
  br i1 %".4779", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".4782" = load float, ptr %"R24"
  %".4783" = load float, ptr %"R34"
  %".4784" = load float, ptr %"R21"
  %"fmul.190" = fmul float %".4782", %".4783"
  %"fadd.171" = fadd float %"fmul.190", %".4784"
  %".4785" = bitcast ptr %"R21" to ptr
  store float %"fadd.171", ptr %".4785"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".4790" = load i1, ptr %"P4"
  %".4791" = icmp eq i1 %".4790", 1
  br i1 %".4791", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".4794" = load i32, ptr %"R18"
  %".4795" = load i1, ptr %"PT"
  %"cmp.42" = icmp sge i32 %".4794", 3
  %".4796" = and i1 %"cmp.42", %".4795"
  store i1 %".4796", ptr %"P0"
  ; MOV R23, RZ
  %".4799" = load i32, ptr %"RZ"
  store i32 %".4799", ptr %"R23"
  ; @!P0 BRA `(.L_x_27)
  %".4802" = load i1, ptr %"P0"
  %".4803" = icmp eq i1 %".4802", 1
  br i1 %".4803", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".4806" = load i32, ptr %"R20"
  %".4807" = load i1, ptr %"PT"
  %"cmp.43" = icmp sgt i32 %".4806", 0
  %".4808" = and i1 %"cmp.43", %".4807"
  store i1 %".4808", ptr %"P0"
  ; MOV R23, RZ
  %".4811" = load i32, ptr %"RZ"
  store i32 %".4811", ptr %"R23"
  ; MOV R22, R20
  %".4814" = load i32, ptr %"R20"
  store i32 %".4814", ptr %"R22"
  ; @!P0 BRA `(.L_x_28)
  %".4817" = load i1, ptr %"P0"
  %".4818" = icmp eq i1 %".4817", 1
  br i1 %".4818", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".4821" = load i32, ptr %"R22"
  %".4822" = load i1, ptr %"PT"
  %"cmp.44" = icmp sgt i32 %".4821", 12
  %".4823" = and i1 %"cmp.44", %".4822"
  store i1 %".4823", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".4826" = and i1 1, 1
  %".4827" = or i1 %".4826", 1
  ; @!P1 BRA `(.L_x_29)
  %".4829" = load i1, ptr %"P1"
  %".4830" = icmp eq i1 %".4829", 1
  br i1 %".4830", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4833" = xor i1 1, 1
  %".4834" = and i1 %".4833", 1
  %".4835" = and i1 %".4834", 1
  br label %".L_x_30"
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".4838" = load i32, ptr %"R0"
  %".4839" = load i32, ptr %"R23"
  %"add.204" = add i32 %".4838", %".4839"
  %"add.205" = add i32 %"add.204", 0
  store i32 %"add.205", ptr %"R25"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".4844" = load i32, ptr %"R2"
  %".4845" = load i32, ptr %"R25"
  %"mul.62" = mul i32 %".4844", 3
  %"add.206" = add i32 %"mul.62", %".4845"
  store i32 %"add.206", ptr %"R35"
  ; LEA R25, R2, R25, 0x2
  %".4848" = load i32, ptr %"R2"
  %".4849" = load i32, ptr %"R25"
  %"shl.232" = shl i32 %".4848", 2
  %"add.207" = add i32 %"shl.232", %".4849"
  store i32 %"add.207", ptr %"R25"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".4852" = load i32, ptr %"R23"
  %".4853" = load i32, ptr %"R24"
  %"zext.537" = zext i32 %".4852" to i64
  %"zext.538" = zext i32 %".4853" to i64
  %"mul.63" = mul i64 %"zext.537", %"zext.538"
  %".4854" = ptrtoint ptr %"Arg_1" to i64
  %"add.208" = add i64 %"mul.63", %".4854"
  %".4855" = and i64 %"add.208", 18446744069414584320
  %".4856" = lshr i64 %".4855", 32
  %"trunc32.120" = trunc i64 %".4856" to i32
  %"trunc32.121" = trunc i64 %"add.208" to i32
  store i32 %"trunc32.121", ptr %"R36"
  store i32 %"trunc32.120", ptr %"R37"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".4860" = load i32, ptr %"R35"
  %".4861" = load i32, ptr %"R24"
  %"zext.539" = zext i32 %".4860" to i64
  %"zext.540" = zext i32 %".4861" to i64
  %"mul.64" = mul i64 %"zext.539", %"zext.540"
  %".4862" = ptrtoint ptr %"Arg_2" to i64
  %"add.209" = add i64 %"mul.64", %".4862"
  %".4863" = and i64 %"add.209", 18446744069414584320
  %".4864" = lshr i64 %".4863", 32
  %"trunc32.122" = trunc i64 %".4864" to i32
  %"trunc32.123" = trunc i64 %"add.209" to i32
  store i32 %"trunc32.123", ptr %"R8"
  store i32 %"trunc32.122", ptr %"R9"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".4868" = load i32, ptr %"R25"
  %".4869" = load i32, ptr %"R24"
  %"zext.541" = zext i32 %".4868" to i64
  %"zext.542" = zext i32 %".4869" to i64
  %"mul.65" = mul i64 %"zext.541", %"zext.542"
  %".4870" = ptrtoint ptr %"Arg_2" to i64
  %"add.210" = add i64 %"mul.65", %".4870"
  %".4871" = and i64 %"add.210", 18446744069414584320
  %".4872" = lshr i64 %".4871", 32
  %"trunc32.124" = trunc i64 %".4872" to i32
  %"trunc32.125" = trunc i64 %"add.210" to i32
  store i32 %"trunc32.125", ptr %"R12"
  store i32 %"trunc32.124", ptr %"R13"
  ; LDG.E.SYS R39, [R36]
  %".4876" = load i32, ptr %"R36"
  %"zext.543" = zext i32 %".4876" to i64
  %".4877" = load i32, ptr %"R37"
  %"zext.544" = zext i32 %".4877" to i64
  %"shl.233" = shl i64 %"zext.544", 32
  %"or.208" = or i64 %"shl.233", %"zext.543"
  %".4878" = inttoptr i64 %"or.208" to ptr
  %".4879" = ptrtoint ptr %".4878" to i64
  %".4880" = add i64 %".4879", 0
  %"for_LDG.187" = inttoptr i64 %".4880" to ptr
  %".4881" = load float, ptr %"for_LDG.187"
  %".4882" = bitcast ptr %"R39" to ptr
  store float %".4881", ptr %".4882"
  ; LDG.E.SYS R41, [R8]
  %".4885" = load i32, ptr %"R8"
  %"zext.545" = zext i32 %".4885" to i64
  %".4886" = load i32, ptr %"R9"
  %"zext.546" = zext i32 %".4886" to i64
  %"shl.234" = shl i64 %"zext.546", 32
  %"or.209" = or i64 %"shl.234", %"zext.545"
  %".4887" = inttoptr i64 %"or.209" to ptr
  %".4888" = ptrtoint ptr %".4887" to i64
  %".4889" = add i64 %".4888", 0
  %"for_LDG.188" = inttoptr i64 %".4889" to ptr
  %".4890" = load float, ptr %"for_LDG.188"
  %".4891" = bitcast ptr %"R41" to ptr
  store float %".4890", ptr %".4891"
  ; LDG.E.SYS R40, [R12]
  %".4894" = load i32, ptr %"R12"
  %"zext.547" = zext i32 %".4894" to i64
  %".4895" = load i32, ptr %"R13"
  %"zext.548" = zext i32 %".4895" to i64
  %"shl.235" = shl i64 %"zext.548", 32
  %"or.210" = or i64 %"shl.235", %"zext.547"
  %".4896" = inttoptr i64 %"or.210" to ptr
  %".4897" = ptrtoint ptr %".4896" to i64
  %".4898" = add i64 %".4897", 0
  %"for_LDG.189" = inttoptr i64 %".4898" to ptr
  %".4899" = load float, ptr %"for_LDG.189"
  %".4900" = bitcast ptr %"R40" to ptr
  store float %".4899", ptr %".4900"
  ; LDG.E.SYS R52, [R36+0x4]
  %".4903" = load i32, ptr %"R36"
  %"zext.549" = zext i32 %".4903" to i64
  %".4904" = load i32, ptr %"R37"
  %"zext.550" = zext i32 %".4904" to i64
  %"shl.236" = shl i64 %"zext.550", 32
  %"or.211" = or i64 %"shl.236", %"zext.549"
  %".4905" = inttoptr i64 %"or.211" to ptr
  %".4906" = ptrtoint ptr %".4905" to i64
  %".4907" = add i64 %".4906", 4
  %"for_LDG.190" = inttoptr i64 %".4907" to ptr
  %".4908" = load float, ptr %"for_LDG.190"
  %".4909" = bitcast ptr %"R52" to ptr
  store float %".4908", ptr %".4909"
  ; LDG.E.SYS R53, [R8+0x4]
  %".4912" = load i32, ptr %"R8"
  %"zext.551" = zext i32 %".4912" to i64
  %".4913" = load i32, ptr %"R9"
  %"zext.552" = zext i32 %".4913" to i64
  %"shl.237" = shl i64 %"zext.552", 32
  %"or.212" = or i64 %"shl.237", %"zext.551"
  %".4914" = inttoptr i64 %"or.212" to ptr
  %".4915" = ptrtoint ptr %".4914" to i64
  %".4916" = add i64 %".4915", 4
  %"for_LDG.191" = inttoptr i64 %".4916" to ptr
  %".4917" = load float, ptr %"for_LDG.191"
  %".4918" = bitcast ptr %"R53" to ptr
  store float %".4917", ptr %".4918"
  ; LDG.E.SYS R55, [R12+0x4]
  %".4921" = load i32, ptr %"R12"
  %"zext.553" = zext i32 %".4921" to i64
  %".4922" = load i32, ptr %"R13"
  %"zext.554" = zext i32 %".4922" to i64
  %"shl.238" = shl i64 %"zext.554", 32
  %"or.213" = or i64 %"shl.238", %"zext.553"
  %".4923" = inttoptr i64 %"or.213" to ptr
  %".4924" = ptrtoint ptr %".4923" to i64
  %".4925" = add i64 %".4924", 4
  %"for_LDG.192" = inttoptr i64 %".4925" to ptr
  %".4926" = load float, ptr %"for_LDG.192"
  %".4927" = bitcast ptr %"R55" to ptr
  store float %".4926", ptr %".4927"
  ; IADD3 R11, R23, 0x4, RZ
  %".4930" = load i32, ptr %"R23"
  %"add.211" = add i32 %".4930", 4
  %"add.212" = add i32 %"add.211", 0
  store i32 %"add.212", ptr %"R11"
  ; LDG.E.SYS R50, [R36+0x8]
  %".4933" = load i32, ptr %"R36"
  %"zext.555" = zext i32 %".4933" to i64
  %".4934" = load i32, ptr %"R37"
  %"zext.556" = zext i32 %".4934" to i64
  %"shl.239" = shl i64 %"zext.556", 32
  %"or.214" = or i64 %"shl.239", %"zext.555"
  %".4935" = inttoptr i64 %"or.214" to ptr
  %".4936" = ptrtoint ptr %".4935" to i64
  %".4937" = add i64 %".4936", 8
  %"for_LDG.193" = inttoptr i64 %".4937" to ptr
  %".4938" = load float, ptr %"for_LDG.193"
  %".4939" = bitcast ptr %"R50" to ptr
  store float %".4938", ptr %".4939"
  ; IADD3 R7, R35, 0x4, RZ
  %".4942" = load i32, ptr %"R35"
  %"add.213" = add i32 %".4942", 4
  %"add.214" = add i32 %"add.213", 0
  store i32 %"add.214", ptr %"R7"
  ; LDG.E.SYS R43, [R8+0x8]
  %".4945" = load i32, ptr %"R8"
  %"zext.557" = zext i32 %".4945" to i64
  %".4946" = load i32, ptr %"R9"
  %"zext.558" = zext i32 %".4946" to i64
  %"shl.240" = shl i64 %"zext.558", 32
  %"or.215" = or i64 %"shl.240", %"zext.557"
  %".4947" = inttoptr i64 %"or.215" to ptr
  %".4948" = ptrtoint ptr %".4947" to i64
  %".4949" = add i64 %".4948", 8
  %"for_LDG.194" = inttoptr i64 %".4949" to ptr
  %".4950" = load float, ptr %"for_LDG.194"
  %".4951" = bitcast ptr %"R43" to ptr
  store float %".4950", ptr %".4951"
  ; IADD3 R5, R25, 0x4, RZ
  %".4954" = load i32, ptr %"R25"
  %"add.215" = add i32 %".4954", 4
  %"add.216" = add i32 %"add.215", 0
  store i32 %"add.216", ptr %"R5"
  ; LDG.E.SYS R51, [R12+0x8]
  %".4957" = load i32, ptr %"R12"
  %"zext.559" = zext i32 %".4957" to i64
  %".4958" = load i32, ptr %"R13"
  %"zext.560" = zext i32 %".4958" to i64
  %"shl.241" = shl i64 %"zext.560", 32
  %"or.216" = or i64 %"shl.241", %"zext.559"
  %".4959" = inttoptr i64 %"or.216" to ptr
  %".4960" = ptrtoint ptr %".4959" to i64
  %".4961" = add i64 %".4960", 8
  %"for_LDG.195" = inttoptr i64 %".4961" to ptr
  %".4962" = load float, ptr %"for_LDG.195"
  %".4963" = bitcast ptr %"R51" to ptr
  store float %".4962", ptr %".4963"
  ; LDG.E.SYS R47, [R36+0xc]
  %".4966" = load i32, ptr %"R36"
  %"zext.561" = zext i32 %".4966" to i64
  %".4967" = load i32, ptr %"R37"
  %"zext.562" = zext i32 %".4967" to i64
  %"shl.242" = shl i64 %"zext.562", 32
  %"or.217" = or i64 %"shl.242", %"zext.561"
  %".4968" = inttoptr i64 %"or.217" to ptr
  %".4969" = ptrtoint ptr %".4968" to i64
  %".4970" = add i64 %".4969", 12
  %"for_LDG.196" = inttoptr i64 %".4970" to ptr
  %".4971" = load float, ptr %"for_LDG.196"
  %".4972" = bitcast ptr %"R47" to ptr
  store float %".4971", ptr %".4972"
  ; LDG.E.SYS R54, [R8+0xc]
  %".4975" = load i32, ptr %"R8"
  %"zext.563" = zext i32 %".4975" to i64
  %".4976" = load i32, ptr %"R9"
  %"zext.564" = zext i32 %".4976" to i64
  %"shl.243" = shl i64 %"zext.564", 32
  %"or.218" = or i64 %"shl.243", %"zext.563"
  %".4977" = inttoptr i64 %"or.218" to ptr
  %".4978" = ptrtoint ptr %".4977" to i64
  %".4979" = add i64 %".4978", 12
  %"for_LDG.197" = inttoptr i64 %".4979" to ptr
  %".4980" = load float, ptr %"for_LDG.197"
  %".4981" = bitcast ptr %"R54" to ptr
  store float %".4980", ptr %".4981"
  ; LDG.E.SYS R58, [R12+0xc]
  %".4984" = load i32, ptr %"R12"
  %"zext.565" = zext i32 %".4984" to i64
  %".4985" = load i32, ptr %"R13"
  %"zext.566" = zext i32 %".4985" to i64
  %"shl.244" = shl i64 %"zext.566", 32
  %"or.219" = or i64 %"shl.244", %"zext.565"
  %".4986" = inttoptr i64 %"or.219" to ptr
  %".4987" = ptrtoint ptr %".4986" to i64
  %".4988" = add i64 %".4987", 12
  %"for_LDG.198" = inttoptr i64 %".4988" to ptr
  %".4989" = load float, ptr %"for_LDG.198"
  %".4990" = bitcast ptr %"R58" to ptr
  store float %".4989", ptr %".4990"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".4993" = load i32, ptr %"R11"
  %".4994" = load i32, ptr %"R24"
  %"zext.567" = zext i32 %".4993" to i64
  %"zext.568" = zext i32 %".4994" to i64
  %"mul.66" = mul i64 %"zext.567", %"zext.568"
  %".4995" = ptrtoint ptr %"Arg_1" to i64
  %"add.217" = add i64 %"mul.66", %".4995"
  %".4996" = and i64 %"add.217", 18446744069414584320
  %".4997" = lshr i64 %".4996", 32
  %"trunc32.126" = trunc i64 %".4997" to i32
  %"trunc32.127" = trunc i64 %"add.217" to i32
  store i32 %"trunc32.127", ptr %"R10"
  store i32 %"trunc32.126", ptr %"R11"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".5001" = load i32, ptr %"R7"
  %".5002" = load i32, ptr %"R24"
  %"zext.569" = zext i32 %".5001" to i64
  %"zext.570" = zext i32 %".5002" to i64
  %"mul.67" = mul i64 %"zext.569", %"zext.570"
  %".5003" = ptrtoint ptr %"Arg_2" to i64
  %"add.218" = add i64 %"mul.67", %".5003"
  %".5004" = and i64 %"add.218", 18446744069414584320
  %".5005" = lshr i64 %".5004", 32
  %"trunc32.128" = trunc i64 %".5005" to i32
  %"trunc32.129" = trunc i64 %"add.218" to i32
  store i32 %"trunc32.129", ptr %"R6"
  store i32 %"trunc32.128", ptr %"R7"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".5009" = load i32, ptr %"R5"
  %".5010" = load i32, ptr %"R24"
  %"zext.571" = zext i32 %".5009" to i64
  %"zext.572" = zext i32 %".5010" to i64
  %"mul.68" = mul i64 %"zext.571", %"zext.572"
  %".5011" = ptrtoint ptr %"Arg_2" to i64
  %"add.219" = add i64 %"mul.68", %".5011"
  %".5012" = and i64 %"add.219", 18446744069414584320
  %".5013" = lshr i64 %".5012", 32
  %"trunc32.130" = trunc i64 %".5013" to i32
  %"trunc32.131" = trunc i64 %"add.219" to i32
  store i32 %"trunc32.131", ptr %"R4"
  store i32 %"trunc32.130", ptr %"R5"
  ; LDG.E.SYS R46, [R10]
  %".5017" = load i32, ptr %"R10"
  %"zext.573" = zext i32 %".5017" to i64
  %".5018" = load i32, ptr %"R11"
  %"zext.574" = zext i32 %".5018" to i64
  %"shl.245" = shl i64 %"zext.574", 32
  %"or.220" = or i64 %"shl.245", %"zext.573"
  %".5019" = inttoptr i64 %"or.220" to ptr
  %".5020" = ptrtoint ptr %".5019" to i64
  %".5021" = add i64 %".5020", 0
  %"for_LDG.199" = inttoptr i64 %".5021" to ptr
  %".5022" = load float, ptr %"for_LDG.199"
  %".5023" = bitcast ptr %"R46" to ptr
  store float %".5022", ptr %".5023"
  ; LDG.E.SYS R42, [R6]
  %".5026" = load i32, ptr %"R6"
  %"zext.575" = zext i32 %".5026" to i64
  %".5027" = load i32, ptr %"R7"
  %"zext.576" = zext i32 %".5027" to i64
  %"shl.246" = shl i64 %"zext.576", 32
  %"or.221" = or i64 %"shl.246", %"zext.575"
  %".5028" = inttoptr i64 %"or.221" to ptr
  %".5029" = ptrtoint ptr %".5028" to i64
  %".5030" = add i64 %".5029", 0
  %"for_LDG.200" = inttoptr i64 %".5030" to ptr
  %".5031" = load float, ptr %"for_LDG.200"
  %".5032" = bitcast ptr %"R42" to ptr
  store float %".5031", ptr %".5032"
  ; LDG.E.SYS R45, [R4]
  %".5035" = load i32, ptr %"R4"
  %"zext.577" = zext i32 %".5035" to i64
  %".5036" = load i32, ptr %"R5"
  %"zext.578" = zext i32 %".5036" to i64
  %"shl.247" = shl i64 %"zext.578", 32
  %"or.222" = or i64 %"shl.247", %"zext.577"
  %".5037" = inttoptr i64 %"or.222" to ptr
  %".5038" = ptrtoint ptr %".5037" to i64
  %".5039" = add i64 %".5038", 0
  %"for_LDG.201" = inttoptr i64 %".5039" to ptr
  %".5040" = load float, ptr %"for_LDG.201"
  %".5041" = bitcast ptr %"R45" to ptr
  store float %".5040", ptr %".5041"
  ; LDG.E.SYS R34, [R10+0x4]
  %".5044" = load i32, ptr %"R10"
  %"zext.579" = zext i32 %".5044" to i64
  %".5045" = load i32, ptr %"R11"
  %"zext.580" = zext i32 %".5045" to i64
  %"shl.248" = shl i64 %"zext.580", 32
  %"or.223" = or i64 %"shl.248", %"zext.579"
  %".5046" = inttoptr i64 %"or.223" to ptr
  %".5047" = ptrtoint ptr %".5046" to i64
  %".5048" = add i64 %".5047", 4
  %"for_LDG.202" = inttoptr i64 %".5048" to ptr
  %".5049" = load float, ptr %"for_LDG.202"
  %".5050" = bitcast ptr %"R34" to ptr
  store float %".5049", ptr %".5050"
  ; LDG.E.SYS R37, [R6+0x4]
  %".5053" = load i32, ptr %"R6"
  %"zext.581" = zext i32 %".5053" to i64
  %".5054" = load i32, ptr %"R7"
  %"zext.582" = zext i32 %".5054" to i64
  %"shl.249" = shl i64 %"zext.582", 32
  %"or.224" = or i64 %"shl.249", %"zext.581"
  %".5055" = inttoptr i64 %"or.224" to ptr
  %".5056" = ptrtoint ptr %".5055" to i64
  %".5057" = add i64 %".5056", 4
  %"for_LDG.203" = inttoptr i64 %".5057" to ptr
  %".5058" = load float, ptr %"for_LDG.203"
  %".5059" = bitcast ptr %"R37" to ptr
  store float %".5058", ptr %".5059"
  ; IADD3 R9, R23, 0x8, RZ
  %".5062" = load i32, ptr %"R23"
  %"add.220" = add i32 %".5062", 8
  %"add.221" = add i32 %"add.220", 0
  store i32 %"add.221", ptr %"R9"
  ; LDG.E.SYS R36, [R10+0x8]
  %".5065" = load i32, ptr %"R10"
  %"zext.583" = zext i32 %".5065" to i64
  %".5066" = load i32, ptr %"R11"
  %"zext.584" = zext i32 %".5066" to i64
  %"shl.250" = shl i64 %"zext.584", 32
  %"or.225" = or i64 %"shl.250", %"zext.583"
  %".5067" = inttoptr i64 %"or.225" to ptr
  %".5068" = ptrtoint ptr %".5067" to i64
  %".5069" = add i64 %".5068", 8
  %"for_LDG.204" = inttoptr i64 %".5069" to ptr
  %".5070" = load float, ptr %"for_LDG.204"
  %".5071" = bitcast ptr %"R36" to ptr
  store float %".5070", ptr %".5071"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".5074" = load i32, ptr %"R9"
  %".5075" = load i32, ptr %"R24"
  %"zext.585" = zext i32 %".5074" to i64
  %"zext.586" = zext i32 %".5075" to i64
  %"mul.69" = mul i64 %"zext.585", %"zext.586"
  %".5076" = ptrtoint ptr %"Arg_1" to i64
  %"add.222" = add i64 %"mul.69", %".5076"
  %".5077" = and i64 %"add.222", 18446744069414584320
  %".5078" = lshr i64 %".5077", 32
  %"trunc32.132" = trunc i64 %".5078" to i32
  %"trunc32.133" = trunc i64 %"add.222" to i32
  store i32 %"trunc32.133", ptr %"R8"
  store i32 %"trunc32.132", ptr %"R9"
  ; LDG.E.SYS R38, [R10+0xc]
  %".5082" = load i32, ptr %"R10"
  %"zext.587" = zext i32 %".5082" to i64
  %".5083" = load i32, ptr %"R11"
  %"zext.588" = zext i32 %".5083" to i64
  %"shl.251" = shl i64 %"zext.588", 32
  %"or.226" = or i64 %"shl.251", %"zext.587"
  %".5084" = inttoptr i64 %"or.226" to ptr
  %".5085" = ptrtoint ptr %".5084" to i64
  %".5086" = add i64 %".5085", 12
  %"for_LDG.205" = inttoptr i64 %".5086" to ptr
  %".5087" = load float, ptr %"for_LDG.205"
  %".5088" = bitcast ptr %"R38" to ptr
  store float %".5087", ptr %".5088"
  ; IADD3 R13, R23, 0xc, RZ
  %".5091" = load i32, ptr %"R23"
  %"add.223" = add i32 %".5091", 12
  %"add.224" = add i32 %"add.223", 0
  store i32 %"add.224", ptr %"R13"
  ; IADD3 R11, R35, 0x8, RZ
  %".5094" = load i32, ptr %"R35"
  %"add.225" = add i32 %".5094", 8
  %"add.226" = add i32 %"add.225", 0
  store i32 %"add.226", ptr %"R11"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".5097" = load i32, ptr %"R13"
  %".5098" = load i32, ptr %"R24"
  %"zext.589" = zext i32 %".5097" to i64
  %"zext.590" = zext i32 %".5098" to i64
  %"mul.70" = mul i64 %"zext.589", %"zext.590"
  %".5099" = ptrtoint ptr %"Arg_1" to i64
  %"add.227" = add i64 %"mul.70", %".5099"
  %".5100" = and i64 %"add.227", 18446744069414584320
  %".5101" = lshr i64 %".5100", 32
  %"trunc32.134" = trunc i64 %".5101" to i32
  %"trunc32.135" = trunc i64 %"add.227" to i32
  store i32 %"trunc32.135", ptr %"R12"
  store i32 %"trunc32.134", ptr %"R13"
  ; FFMA R57, R41, R39, R44
  %".5105" = load float, ptr %"R41"
  %".5106" = load float, ptr %"R39"
  %".5107" = load float, ptr %"R44"
  %"fmul.191" = fmul float %".5105", %".5106"
  %"fadd.172" = fadd float %"fmul.191", %".5107"
  %".5108" = bitcast ptr %"R57" to ptr
  store float %"fadd.172", ptr %".5108"
  ; LDG.E.SYS R41, [R8]
  %".5111" = load i32, ptr %"R8"
  %"zext.591" = zext i32 %".5111" to i64
  %".5112" = load i32, ptr %"R9"
  %"zext.592" = zext i32 %".5112" to i64
  %"shl.252" = shl i64 %"zext.592", 32
  %"or.227" = or i64 %"shl.252", %"zext.591"
  %".5113" = inttoptr i64 %"or.227" to ptr
  %".5114" = ptrtoint ptr %".5113" to i64
  %".5115" = add i64 %".5114", 0
  %"for_LDG.206" = inttoptr i64 %".5115" to ptr
  %".5116" = load float, ptr %"for_LDG.206"
  %".5117" = bitcast ptr %"R41" to ptr
  store float %".5116", ptr %".5117"
  ; FFMA R56, R39, R40, R56
  %".5120" = load float, ptr %"R39"
  %".5121" = load float, ptr %"R40"
  %".5122" = load float, ptr %"R56"
  %"fmul.192" = fmul float %".5120", %".5121"
  %"fadd.173" = fadd float %"fmul.192", %".5122"
  %".5123" = bitcast ptr %"R56" to ptr
  store float %"fadd.173", ptr %".5123"
  ; LDG.E.SYS R40, [R8+0x4]
  %".5126" = load i32, ptr %"R8"
  %"zext.593" = zext i32 %".5126" to i64
  %".5127" = load i32, ptr %"R9"
  %"zext.594" = zext i32 %".5127" to i64
  %"shl.253" = shl i64 %"zext.594", 32
  %"or.228" = or i64 %"shl.253", %"zext.593"
  %".5128" = inttoptr i64 %"or.228" to ptr
  %".5129" = ptrtoint ptr %".5128" to i64
  %".5130" = add i64 %".5129", 4
  %"for_LDG.207" = inttoptr i64 %".5130" to ptr
  %".5131" = load float, ptr %"for_LDG.207"
  %".5132" = bitcast ptr %"R40" to ptr
  store float %".5131", ptr %".5132"
  ; LDG.E.SYS R39, [R8+0x8]
  %".5135" = load i32, ptr %"R8"
  %"zext.595" = zext i32 %".5135" to i64
  %".5136" = load i32, ptr %"R9"
  %"zext.596" = zext i32 %".5136" to i64
  %"shl.254" = shl i64 %"zext.596", 32
  %"or.229" = or i64 %"shl.254", %"zext.595"
  %".5137" = inttoptr i64 %"or.229" to ptr
  %".5138" = ptrtoint ptr %".5137" to i64
  %".5139" = add i64 %".5138", 8
  %"for_LDG.208" = inttoptr i64 %".5139" to ptr
  %".5140" = load float, ptr %"for_LDG.208"
  %".5141" = bitcast ptr %"R39" to ptr
  store float %".5140", ptr %".5141"
  ; FFMA R57, R53, R52, R57
  %".5144" = load float, ptr %"R53"
  %".5145" = load float, ptr %"R52"
  %".5146" = load float, ptr %"R57"
  %"fmul.193" = fmul float %".5144", %".5145"
  %"fadd.174" = fadd float %"fmul.193", %".5146"
  %".5147" = bitcast ptr %"R57" to ptr
  store float %"fadd.174", ptr %".5147"
  ; LDG.E.SYS R44, [R8+0xc]
  %".5150" = load i32, ptr %"R8"
  %"zext.597" = zext i32 %".5150" to i64
  %".5151" = load i32, ptr %"R9"
  %"zext.598" = zext i32 %".5151" to i64
  %"shl.255" = shl i64 %"zext.598", 32
  %"or.230" = or i64 %"shl.255", %"zext.597"
  %".5152" = inttoptr i64 %"or.230" to ptr
  %".5153" = ptrtoint ptr %".5152" to i64
  %".5154" = add i64 %".5153", 12
  %"for_LDG.209" = inttoptr i64 %".5154" to ptr
  %".5155" = load float, ptr %"for_LDG.209"
  %".5156" = bitcast ptr %"R44" to ptr
  store float %".5155", ptr %".5156"
  ; FFMA R59, R52, R55, R56
  %".5159" = load float, ptr %"R52"
  %".5160" = load float, ptr %"R55"
  %".5161" = load float, ptr %"R56"
  %"fmul.194" = fmul float %".5159", %".5160"
  %"fadd.175" = fadd float %"fmul.194", %".5161"
  %".5162" = bitcast ptr %"R59" to ptr
  store float %"fadd.175", ptr %".5162"
  ; LDG.E.SYS R55, [R12]
  %".5165" = load i32, ptr %"R12"
  %"zext.599" = zext i32 %".5165" to i64
  %".5166" = load i32, ptr %"R13"
  %"zext.600" = zext i32 %".5166" to i64
  %"shl.256" = shl i64 %"zext.600", 32
  %"or.231" = or i64 %"shl.256", %"zext.599"
  %".5167" = inttoptr i64 %"or.231" to ptr
  %".5168" = ptrtoint ptr %".5167" to i64
  %".5169" = add i64 %".5168", 0
  %"for_LDG.210" = inttoptr i64 %".5169" to ptr
  %".5170" = load float, ptr %"for_LDG.210"
  %".5171" = bitcast ptr %"R55" to ptr
  store float %".5170", ptr %".5171"
  ; LDG.E.SYS R53, [R12+0x4]
  %".5174" = load i32, ptr %"R12"
  %"zext.601" = zext i32 %".5174" to i64
  %".5175" = load i32, ptr %"R13"
  %"zext.602" = zext i32 %".5175" to i64
  %"shl.257" = shl i64 %"zext.602", 32
  %"or.232" = or i64 %"shl.257", %"zext.601"
  %".5176" = inttoptr i64 %"or.232" to ptr
  %".5177" = ptrtoint ptr %".5176" to i64
  %".5178" = add i64 %".5177", 4
  %"for_LDG.211" = inttoptr i64 %".5178" to ptr
  %".5179" = load float, ptr %"for_LDG.211"
  %".5180" = bitcast ptr %"R53" to ptr
  store float %".5179", ptr %".5180"
  ; FFMA R43, R43, R50, R57
  %".5183" = load float, ptr %"R43"
  %".5184" = load float, ptr %"R50"
  %".5185" = load float, ptr %"R57"
  %"fmul.195" = fmul float %".5183", %".5184"
  %"fadd.176" = fadd float %"fmul.195", %".5185"
  %".5186" = bitcast ptr %"R43" to ptr
  store float %"fadd.176", ptr %".5186"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".5189" = load i32, ptr %"R11"
  %".5190" = load i32, ptr %"R24"
  %"zext.603" = zext i32 %".5189" to i64
  %"zext.604" = zext i32 %".5190" to i64
  %"mul.71" = mul i64 %"zext.603", %"zext.604"
  %".5191" = ptrtoint ptr %"Arg_2" to i64
  %"add.228" = add i64 %"mul.71", %".5191"
  %".5192" = and i64 %"add.228", 18446744069414584320
  %".5193" = lshr i64 %".5192", 32
  %"trunc32.136" = trunc i64 %".5193" to i32
  %"trunc32.137" = trunc i64 %"add.228" to i32
  store i32 %"trunc32.137", ptr %"R8"
  store i32 %"trunc32.136", ptr %"R9"
  ; LDG.E.SYS R52, [R12+0x8]
  %".5197" = load i32, ptr %"R12"
  %"zext.605" = zext i32 %".5197" to i64
  %".5198" = load i32, ptr %"R13"
  %"zext.606" = zext i32 %".5198" to i64
  %"shl.258" = shl i64 %"zext.606", 32
  %"or.233" = or i64 %"shl.258", %"zext.605"
  %".5199" = inttoptr i64 %"or.233" to ptr
  %".5200" = ptrtoint ptr %".5199" to i64
  %".5201" = add i64 %".5200", 8
  %"for_LDG.212" = inttoptr i64 %".5201" to ptr
  %".5202" = load float, ptr %"for_LDG.212"
  %".5203" = bitcast ptr %"R52" to ptr
  store float %".5202", ptr %".5203"
  ; FFMA R51, R50, R51, R59
  %".5206" = load float, ptr %"R50"
  %".5207" = load float, ptr %"R51"
  %".5208" = load float, ptr %"R59"
  %"fmul.196" = fmul float %".5206", %".5207"
  %"fadd.177" = fadd float %"fmul.196", %".5208"
  %".5209" = bitcast ptr %"R51" to ptr
  store float %"fadd.177", ptr %".5209"
  ; IADD3 R57, R25, 0x8, RZ
  %".5212" = load i32, ptr %"R25"
  %"add.229" = add i32 %".5212", 8
  %"add.230" = add i32 %"add.229", 0
  store i32 %"add.230", ptr %"R57"
  ; LDG.E.SYS R59, [R4+0xc]
  %".5215" = load i32, ptr %"R4"
  %"zext.607" = zext i32 %".5215" to i64
  %".5216" = load i32, ptr %"R5"
  %"zext.608" = zext i32 %".5216" to i64
  %"shl.259" = shl i64 %"zext.608", 32
  %"or.234" = or i64 %"shl.259", %"zext.607"
  %".5217" = inttoptr i64 %"or.234" to ptr
  %".5218" = ptrtoint ptr %".5217" to i64
  %".5219" = add i64 %".5218", 12
  %"for_LDG.213" = inttoptr i64 %".5219" to ptr
  %".5220" = load float, ptr %"for_LDG.213"
  %".5221" = bitcast ptr %"R59" to ptr
  store float %".5220", ptr %".5221"
  ; FFMA R61, R54, R47, R43
  %".5224" = load float, ptr %"R54"
  %".5225" = load float, ptr %"R47"
  %".5226" = load float, ptr %"R43"
  %"fmul.197" = fmul float %".5224", %".5225"
  %"fadd.178" = fadd float %"fmul.197", %".5226"
  %".5227" = bitcast ptr %"R61" to ptr
  store float %"fadd.178", ptr %".5227"
  ; LDG.E.SYS R50, [R8]
  %".5230" = load i32, ptr %"R8"
  %"zext.609" = zext i32 %".5230" to i64
  %".5231" = load i32, ptr %"R9"
  %"zext.610" = zext i32 %".5231" to i64
  %"shl.260" = shl i64 %"zext.610", 32
  %"or.235" = or i64 %"shl.260", %"zext.609"
  %".5232" = inttoptr i64 %"or.235" to ptr
  %".5233" = ptrtoint ptr %".5232" to i64
  %".5234" = add i64 %".5233", 0
  %"for_LDG.214" = inttoptr i64 %".5234" to ptr
  %".5235" = load float, ptr %"for_LDG.214"
  %".5236" = bitcast ptr %"R50" to ptr
  store float %".5235", ptr %".5236"
  ; FFMA R58, R47, R58, R51
  %".5239" = load float, ptr %"R47"
  %".5240" = load float, ptr %"R58"
  %".5241" = load float, ptr %"R51"
  %"fmul.198" = fmul float %".5239", %".5240"
  %"fadd.179" = fadd float %"fmul.198", %".5241"
  %".5242" = bitcast ptr %"R58" to ptr
  store float %"fadd.179", ptr %".5242"
  ; LDG.E.SYS R43, [R6+0x8]
  %".5245" = load i32, ptr %"R6"
  %"zext.611" = zext i32 %".5245" to i64
  %".5246" = load i32, ptr %"R7"
  %"zext.612" = zext i32 %".5246" to i64
  %"shl.261" = shl i64 %"zext.612", 32
  %"or.236" = or i64 %"shl.261", %"zext.611"
  %".5247" = inttoptr i64 %"or.236" to ptr
  %".5248" = ptrtoint ptr %".5247" to i64
  %".5249" = add i64 %".5248", 8
  %"for_LDG.215" = inttoptr i64 %".5249" to ptr
  %".5250" = load float, ptr %"for_LDG.215"
  %".5251" = bitcast ptr %"R43" to ptr
  store float %".5250", ptr %".5251"
  ; LDG.E.SYS R47, [R4+0x4]
  %".5254" = load i32, ptr %"R4"
  %"zext.613" = zext i32 %".5254" to i64
  %".5255" = load i32, ptr %"R5"
  %"zext.614" = zext i32 %".5255" to i64
  %"shl.262" = shl i64 %"zext.614", 32
  %"or.237" = or i64 %"shl.262", %"zext.613"
  %".5256" = inttoptr i64 %"or.237" to ptr
  %".5257" = ptrtoint ptr %".5256" to i64
  %".5258" = add i64 %".5257", 4
  %"for_LDG.216" = inttoptr i64 %".5258" to ptr
  %".5259" = load float, ptr %"for_LDG.216"
  %".5260" = bitcast ptr %"R47" to ptr
  store float %".5259", ptr %".5260"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".5263" = load i32, ptr %"R57"
  %".5264" = load i32, ptr %"R24"
  %"zext.615" = zext i32 %".5263" to i64
  %"zext.616" = zext i32 %".5264" to i64
  %"mul.72" = mul i64 %"zext.615", %"zext.616"
  %".5265" = ptrtoint ptr %"Arg_2" to i64
  %"add.231" = add i64 %"mul.72", %".5265"
  %".5266" = and i64 %"add.231", 18446744069414584320
  %".5267" = lshr i64 %".5266", 32
  %"trunc32.138" = trunc i64 %".5267" to i32
  %"trunc32.139" = trunc i64 %"add.231" to i32
  store i32 %"trunc32.139", ptr %"R10"
  store i32 %"trunc32.138", ptr %"R11"
  ; LDG.E.SYS R51, [R4+0x8]
  %".5271" = load i32, ptr %"R4"
  %"zext.617" = zext i32 %".5271" to i64
  %".5272" = load i32, ptr %"R5"
  %"zext.618" = zext i32 %".5272" to i64
  %"shl.263" = shl i64 %"zext.618", 32
  %"or.238" = or i64 %"shl.263", %"zext.617"
  %".5273" = inttoptr i64 %"or.238" to ptr
  %".5274" = ptrtoint ptr %".5273" to i64
  %".5275" = add i64 %".5274", 8
  %"for_LDG.217" = inttoptr i64 %".5275" to ptr
  %".5276" = load float, ptr %"for_LDG.217"
  %".5277" = bitcast ptr %"R51" to ptr
  store float %".5276", ptr %".5277"
  ; LDG.E.SYS R57, [R6+0xc]
  %".5280" = load i32, ptr %"R6"
  %"zext.619" = zext i32 %".5280" to i64
  %".5281" = load i32, ptr %"R7"
  %"zext.620" = zext i32 %".5281" to i64
  %"shl.264" = shl i64 %"zext.620", 32
  %"or.239" = or i64 %"shl.264", %"zext.619"
  %".5282" = inttoptr i64 %"or.239" to ptr
  %".5283" = ptrtoint ptr %".5282" to i64
  %".5284" = add i64 %".5283", 12
  %"for_LDG.218" = inttoptr i64 %".5284" to ptr
  %".5285" = load float, ptr %"for_LDG.218"
  %".5286" = bitcast ptr %"R57" to ptr
  store float %".5285", ptr %".5286"
  ; FFMA R42, R42, R46, R61
  %".5289" = load float, ptr %"R42"
  %".5290" = load float, ptr %"R46"
  %".5291" = load float, ptr %"R61"
  %"fmul.199" = fmul float %".5289", %".5290"
  %"fadd.180" = fadd float %"fmul.199", %".5291"
  %".5292" = bitcast ptr %"R42" to ptr
  store float %"fadd.180", ptr %".5292"
  ; IADD3 R25, R25, 0xc, RZ
  %".5295" = load i32, ptr %"R25"
  %"add.232" = add i32 %".5295", 12
  %"add.233" = add i32 %"add.232", 0
  store i32 %"add.233", ptr %"R25"
  ; LDG.E.SYS R56, [R12+0xc]
  %".5298" = load i32, ptr %"R12"
  %"zext.621" = zext i32 %".5298" to i64
  %".5299" = load i32, ptr %"R13"
  %"zext.622" = zext i32 %".5299" to i64
  %"shl.265" = shl i64 %"zext.622", 32
  %"or.240" = or i64 %"shl.265", %"zext.621"
  %".5300" = inttoptr i64 %"or.240" to ptr
  %".5301" = ptrtoint ptr %".5300" to i64
  %".5302" = add i64 %".5301", 12
  %"for_LDG.219" = inttoptr i64 %".5302" to ptr
  %".5303" = load float, ptr %"for_LDG.219"
  %".5304" = bitcast ptr %"R56" to ptr
  store float %".5303", ptr %".5304"
  ; FFMA R45, R46, R45, R58
  %".5307" = load float, ptr %"R46"
  %".5308" = load float, ptr %"R45"
  %".5309" = load float, ptr %"R58"
  %"fmul.200" = fmul float %".5307", %".5308"
  %"fadd.181" = fadd float %"fmul.200", %".5309"
  %".5310" = bitcast ptr %"R45" to ptr
  store float %"fadd.181", ptr %".5310"
  ; LDG.E.SYS R46, [R10]
  %".5313" = load i32, ptr %"R10"
  %"zext.623" = zext i32 %".5313" to i64
  %".5314" = load i32, ptr %"R11"
  %"zext.624" = zext i32 %".5314" to i64
  %"shl.266" = shl i64 %"zext.624", 32
  %"or.241" = or i64 %"shl.266", %"zext.623"
  %".5315" = inttoptr i64 %"or.241" to ptr
  %".5316" = ptrtoint ptr %".5315" to i64
  %".5317" = add i64 %".5316", 0
  %"for_LDG.220" = inttoptr i64 %".5317" to ptr
  %".5318" = load float, ptr %"for_LDG.220"
  %".5319" = bitcast ptr %"R46" to ptr
  store float %".5318", ptr %".5319"
  ; LDG.E.SYS R61, [R8+0x4]
  %".5322" = load i32, ptr %"R8"
  %"zext.625" = zext i32 %".5322" to i64
  %".5323" = load i32, ptr %"R9"
  %"zext.626" = zext i32 %".5323" to i64
  %"shl.267" = shl i64 %"zext.626", 32
  %"or.242" = or i64 %"shl.267", %"zext.625"
  %".5324" = inttoptr i64 %"or.242" to ptr
  %".5325" = ptrtoint ptr %".5324" to i64
  %".5326" = add i64 %".5325", 4
  %"for_LDG.221" = inttoptr i64 %".5326" to ptr
  %".5327" = load float, ptr %"for_LDG.221"
  %".5328" = bitcast ptr %"R61" to ptr
  store float %".5327", ptr %".5328"
  ; IADD3 R13, R35, 0xc, RZ
  %".5331" = load i32, ptr %"R35"
  %"add.234" = add i32 %".5331", 12
  %"add.235" = add i32 %"add.234", 0
  store i32 %"add.235", ptr %"R13"
  ; LDG.E.SYS R35, [R10+0x4]
  %".5334" = load i32, ptr %"R10"
  %"zext.627" = zext i32 %".5334" to i64
  %".5335" = load i32, ptr %"R11"
  %"zext.628" = zext i32 %".5335" to i64
  %"shl.268" = shl i64 %"zext.628", 32
  %"or.243" = or i64 %"shl.268", %"zext.627"
  %".5336" = inttoptr i64 %"or.243" to ptr
  %".5337" = ptrtoint ptr %".5336" to i64
  %".5338" = add i64 %".5337", 4
  %"for_LDG.222" = inttoptr i64 %".5338" to ptr
  %".5339" = load float, ptr %"for_LDG.222"
  %".5340" = bitcast ptr %"R35" to ptr
  store float %".5339", ptr %".5340"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".5343" = load i32, ptr %"R13"
  %".5344" = load i32, ptr %"R24"
  %"zext.629" = zext i32 %".5343" to i64
  %"zext.630" = zext i32 %".5344" to i64
  %"mul.73" = mul i64 %"zext.629", %"zext.630"
  %".5345" = ptrtoint ptr %"Arg_2" to i64
  %"add.236" = add i64 %"mul.73", %".5345"
  %".5346" = and i64 %"add.236", 18446744069414584320
  %".5347" = lshr i64 %".5346", 32
  %"trunc32.140" = trunc i64 %".5347" to i32
  %"trunc32.141" = trunc i64 %"add.236" to i32
  store i32 %"trunc32.141", ptr %"R12"
  store i32 %"trunc32.140", ptr %"R13"
  ; LDG.E.SYS R6, [R8+0x8]
  %".5351" = load i32, ptr %"R8"
  %"zext.631" = zext i32 %".5351" to i64
  %".5352" = load i32, ptr %"R9"
  %"zext.632" = zext i32 %".5352" to i64
  %"shl.269" = shl i64 %"zext.632", 32
  %"or.244" = or i64 %"shl.269", %"zext.631"
  %".5353" = inttoptr i64 %"or.244" to ptr
  %".5354" = ptrtoint ptr %".5353" to i64
  %".5355" = add i64 %".5354", 8
  %"for_LDG.223" = inttoptr i64 %".5355" to ptr
  %".5356" = load float, ptr %"for_LDG.223"
  %".5357" = bitcast ptr %"R6" to ptr
  store float %".5356", ptr %".5357"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".5360" = load i32, ptr %"R25"
  %".5361" = load i32, ptr %"R24"
  %"zext.633" = zext i32 %".5360" to i64
  %"zext.634" = zext i32 %".5361" to i64
  %"mul.74" = mul i64 %"zext.633", %"zext.634"
  %".5362" = ptrtoint ptr %"Arg_2" to i64
  %"add.237" = add i64 %"mul.74", %".5362"
  %".5363" = and i64 %"add.237", 18446744069414584320
  %".5364" = lshr i64 %".5363", 32
  %"trunc32.142" = trunc i64 %".5364" to i32
  %"trunc32.143" = trunc i64 %"add.237" to i32
  store i32 %"trunc32.143", ptr %"R24"
  store i32 %"trunc32.142", ptr %"R25"
  ; LDG.E.SYS R4, [R10+0x8]
  %".5368" = load i32, ptr %"R10"
  %"zext.635" = zext i32 %".5368" to i64
  %".5369" = load i32, ptr %"R11"
  %"zext.636" = zext i32 %".5369" to i64
  %"shl.270" = shl i64 %"zext.636", 32
  %"or.245" = or i64 %"shl.270", %"zext.635"
  %".5370" = inttoptr i64 %"or.245" to ptr
  %".5371" = ptrtoint ptr %".5370" to i64
  %".5372" = add i64 %".5371", 8
  %"for_LDG.224" = inttoptr i64 %".5372" to ptr
  %".5373" = load float, ptr %"for_LDG.224"
  %".5374" = bitcast ptr %"R4" to ptr
  store float %".5373", ptr %".5374"
  ; LDG.E.SYS R5, [R8+0xc]
  %".5377" = load i32, ptr %"R8"
  %"zext.637" = zext i32 %".5377" to i64
  %".5378" = load i32, ptr %"R9"
  %"zext.638" = zext i32 %".5378" to i64
  %"shl.271" = shl i64 %"zext.638", 32
  %"or.246" = or i64 %"shl.271", %"zext.637"
  %".5379" = inttoptr i64 %"or.246" to ptr
  %".5380" = ptrtoint ptr %".5379" to i64
  %".5381" = add i64 %".5380", 12
  %"for_LDG.225" = inttoptr i64 %".5381" to ptr
  %".5382" = load float, ptr %"for_LDG.225"
  %".5383" = bitcast ptr %"R5" to ptr
  store float %".5382", ptr %".5383"
  ; LDG.E.SYS R60, [R10+0xc]
  %".5386" = load i32, ptr %"R10"
  %"zext.639" = zext i32 %".5386" to i64
  %".5387" = load i32, ptr %"R11"
  %"zext.640" = zext i32 %".5387" to i64
  %"shl.272" = shl i64 %"zext.640", 32
  %"or.247" = or i64 %"shl.272", %"zext.639"
  %".5388" = inttoptr i64 %"or.247" to ptr
  %".5389" = ptrtoint ptr %".5388" to i64
  %".5390" = add i64 %".5389", 12
  %"for_LDG.226" = inttoptr i64 %".5390" to ptr
  %".5391" = load float, ptr %"for_LDG.226"
  %".5392" = bitcast ptr %"R60" to ptr
  store float %".5391", ptr %".5392"
  ; LDG.E.SYS R58, [R12]
  %".5395" = load i32, ptr %"R12"
  %"zext.641" = zext i32 %".5395" to i64
  %".5396" = load i32, ptr %"R13"
  %"zext.642" = zext i32 %".5396" to i64
  %"shl.273" = shl i64 %"zext.642", 32
  %"or.248" = or i64 %"shl.273", %"zext.641"
  %".5397" = inttoptr i64 %"or.248" to ptr
  %".5398" = ptrtoint ptr %".5397" to i64
  %".5399" = add i64 %".5398", 0
  %"for_LDG.227" = inttoptr i64 %".5399" to ptr
  %".5400" = load float, ptr %"for_LDG.227"
  %".5401" = bitcast ptr %"R58" to ptr
  store float %".5400", ptr %".5401"
  ; LDG.E.SYS R54, [R12+0x4]
  %".5404" = load i32, ptr %"R12"
  %"zext.643" = zext i32 %".5404" to i64
  %".5405" = load i32, ptr %"R13"
  %"zext.644" = zext i32 %".5405" to i64
  %"shl.274" = shl i64 %"zext.644", 32
  %"or.249" = or i64 %"shl.274", %"zext.643"
  %".5406" = inttoptr i64 %"or.249" to ptr
  %".5407" = ptrtoint ptr %".5406" to i64
  %".5408" = add i64 %".5407", 4
  %"for_LDG.228" = inttoptr i64 %".5408" to ptr
  %".5409" = load float, ptr %"for_LDG.228"
  %".5410" = bitcast ptr %"R54" to ptr
  store float %".5409", ptr %".5410"
  ; FFMA R10, R37, R34, R42
  %".5413" = load float, ptr %"R37"
  %".5414" = load float, ptr %"R34"
  %".5415" = load float, ptr %"R42"
  %"fmul.201" = fmul float %".5413", %".5414"
  %"fadd.182" = fadd float %"fmul.201", %".5415"
  %".5416" = bitcast ptr %"R10" to ptr
  store float %"fadd.182", ptr %".5416"
  ; LDG.E.SYS R37, [R24]
  %".5419" = load i32, ptr %"R24"
  %"zext.645" = zext i32 %".5419" to i64
  %".5420" = load i32, ptr %"R25"
  %"zext.646" = zext i32 %".5420" to i64
  %"shl.275" = shl i64 %"zext.646", 32
  %"or.250" = or i64 %"shl.275", %"zext.645"
  %".5421" = inttoptr i64 %"or.250" to ptr
  %".5422" = ptrtoint ptr %".5421" to i64
  %".5423" = add i64 %".5422", 0
  %"for_LDG.229" = inttoptr i64 %".5423" to ptr
  %".5424" = load float, ptr %"for_LDG.229"
  %".5425" = bitcast ptr %"R37" to ptr
  store float %".5424", ptr %".5425"
  ; LDG.E.SYS R42, [R24+0x4]
  %".5428" = load i32, ptr %"R24"
  %"zext.647" = zext i32 %".5428" to i64
  %".5429" = load i32, ptr %"R25"
  %"zext.648" = zext i32 %".5429" to i64
  %"shl.276" = shl i64 %"zext.648", 32
  %"or.251" = or i64 %"shl.276", %"zext.647"
  %".5430" = inttoptr i64 %"or.251" to ptr
  %".5431" = ptrtoint ptr %".5430" to i64
  %".5432" = add i64 %".5431", 4
  %"for_LDG.230" = inttoptr i64 %".5432" to ptr
  %".5433" = load float, ptr %"for_LDG.230"
  %".5434" = bitcast ptr %"R42" to ptr
  store float %".5433", ptr %".5434"
  ; LDG.E.SYS R7, [R12+0x8]
  %".5437" = load i32, ptr %"R12"
  %"zext.649" = zext i32 %".5437" to i64
  %".5438" = load i32, ptr %"R13"
  %"zext.650" = zext i32 %".5438" to i64
  %"shl.277" = shl i64 %"zext.650", 32
  %"or.252" = or i64 %"shl.277", %"zext.649"
  %".5439" = inttoptr i64 %"or.252" to ptr
  %".5440" = ptrtoint ptr %".5439" to i64
  %".5441" = add i64 %".5440", 8
  %"for_LDG.231" = inttoptr i64 %".5441" to ptr
  %".5442" = load float, ptr %"for_LDG.231"
  %".5443" = bitcast ptr %"R7" to ptr
  store float %".5442", ptr %".5443"
  ; LDG.E.SYS R9, [R24+0x8]
  %".5446" = load i32, ptr %"R24"
  %"zext.651" = zext i32 %".5446" to i64
  %".5447" = load i32, ptr %"R25"
  %"zext.652" = zext i32 %".5447" to i64
  %"shl.278" = shl i64 %"zext.652", 32
  %"or.253" = or i64 %"shl.278", %"zext.651"
  %".5448" = inttoptr i64 %"or.253" to ptr
  %".5449" = ptrtoint ptr %".5448" to i64
  %".5450" = add i64 %".5449", 8
  %"for_LDG.232" = inttoptr i64 %".5450" to ptr
  %".5451" = load float, ptr %"for_LDG.232"
  %".5452" = bitcast ptr %"R9" to ptr
  store float %".5451", ptr %".5452"
  ; LDG.E.SYS R8, [R24+0xc]
  %".5455" = load i32, ptr %"R24"
  %"zext.653" = zext i32 %".5455" to i64
  %".5456" = load i32, ptr %"R25"
  %"zext.654" = zext i32 %".5456" to i64
  %"shl.279" = shl i64 %"zext.654", 32
  %"or.254" = or i64 %"shl.279", %"zext.653"
  %".5457" = inttoptr i64 %"or.254" to ptr
  %".5458" = ptrtoint ptr %".5457" to i64
  %".5459" = add i64 %".5458", 12
  %"for_LDG.233" = inttoptr i64 %".5459" to ptr
  %".5460" = load float, ptr %"for_LDG.233"
  %".5461" = bitcast ptr %"R8" to ptr
  store float %".5460", ptr %".5461"
  ; LDG.E.SYS R13, [R12+0xc]
  %".5464" = load i32, ptr %"R12"
  %"zext.655" = zext i32 %".5464" to i64
  %".5465" = load i32, ptr %"R13"
  %"zext.656" = zext i32 %".5465" to i64
  %"shl.280" = shl i64 %"zext.656", 32
  %"or.255" = or i64 %"shl.280", %"zext.655"
  %".5466" = inttoptr i64 %"or.255" to ptr
  %".5467" = ptrtoint ptr %".5466" to i64
  %".5468" = add i64 %".5467", 12
  %"for_LDG.234" = inttoptr i64 %".5468" to ptr
  %".5469" = load float, ptr %"for_LDG.234"
  %".5470" = bitcast ptr %"R13" to ptr
  store float %".5469", ptr %".5470"
  ; IADD3 R22, R22, -0x10, RZ
  %".5473" = load i32, ptr %"R22"
  %"add.238" = add i32 %".5473", -16
  %"add.239" = add i32 %"add.238", 0
  store i32 %"add.239", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".5476" = load i32, ptr %"R22"
  %".5477" = load i1, ptr %"PT"
  %"cmp.45" = icmp sgt i32 %".5476", 12
  %".5478" = and i1 %"cmp.45", %".5477"
  store i1 %".5478", ptr %"P1"
  ; IADD3 R23, R23, 0x10, RZ
  %".5481" = load i32, ptr %"R23"
  %"add.240" = add i32 %".5481", 16
  %"add.241" = add i32 %"add.240", 0
  store i32 %"add.241", ptr %"R23"
  ; FFMA R10, R43, R36, R10
  %".5484" = load float, ptr %"R43"
  %".5485" = load float, ptr %"R36"
  %".5486" = load float, ptr %"R10"
  %"fmul.202" = fmul float %".5484", %".5485"
  %"fadd.183" = fadd float %"fmul.202", %".5486"
  %".5487" = bitcast ptr %"R10" to ptr
  store float %"fadd.183", ptr %".5487"
  ; FFMA R45, R34, R47, R45
  %".5490" = load float, ptr %"R34"
  %".5491" = load float, ptr %"R47"
  %".5492" = load float, ptr %"R45"
  %"fmul.203" = fmul float %".5490", %".5491"
  %"fadd.184" = fadd float %"fmul.203", %".5492"
  %".5493" = bitcast ptr %"R45" to ptr
  store float %"fadd.184", ptr %".5493"
  ; FFMA R45, R36, R51, R45
  %".5496" = load float, ptr %"R36"
  %".5497" = load float, ptr %"R51"
  %".5498" = load float, ptr %"R45"
  %"fmul.204" = fmul float %".5496", %".5497"
  %"fadd.185" = fadd float %"fmul.204", %".5498"
  %".5499" = bitcast ptr %"R45" to ptr
  store float %"fadd.185", ptr %".5499"
  ; FFMA R10, R57, R38, R10
  %".5502" = load float, ptr %"R57"
  %".5503" = load float, ptr %"R38"
  %".5504" = load float, ptr %"R10"
  %"fmul.205" = fmul float %".5502", %".5503"
  %"fadd.186" = fadd float %"fmul.205", %".5504"
  %".5505" = bitcast ptr %"R10" to ptr
  store float %"fadd.186", ptr %".5505"
  ; FFMA R45, R38, R59, R45
  %".5508" = load float, ptr %"R38"
  %".5509" = load float, ptr %"R59"
  %".5510" = load float, ptr %"R45"
  %"fmul.206" = fmul float %".5508", %".5509"
  %"fadd.187" = fadd float %"fmul.206", %".5510"
  %".5511" = bitcast ptr %"R45" to ptr
  store float %"fadd.187", ptr %".5511"
  ; FFMA R10, R50, R41, R10
  %".5514" = load float, ptr %"R50"
  %".5515" = load float, ptr %"R41"
  %".5516" = load float, ptr %"R10"
  %"fmul.207" = fmul float %".5514", %".5515"
  %"fadd.188" = fadd float %"fmul.207", %".5516"
  %".5517" = bitcast ptr %"R10" to ptr
  store float %"fadd.188", ptr %".5517"
  ; FFMA R45, R41, R46, R45
  %".5520" = load float, ptr %"R41"
  %".5521" = load float, ptr %"R46"
  %".5522" = load float, ptr %"R45"
  %"fmul.208" = fmul float %".5520", %".5521"
  %"fadd.189" = fadd float %"fmul.208", %".5522"
  %".5523" = bitcast ptr %"R45" to ptr
  store float %"fadd.189", ptr %".5523"
  ; FFMA R10, R61, R40, R10
  %".5526" = load float, ptr %"R61"
  %".5527" = load float, ptr %"R40"
  %".5528" = load float, ptr %"R10"
  %"fmul.209" = fmul float %".5526", %".5527"
  %"fadd.190" = fadd float %"fmul.209", %".5528"
  %".5529" = bitcast ptr %"R10" to ptr
  store float %"fadd.190", ptr %".5529"
  ; FFMA R35, R40, R35, R45
  %".5532" = load float, ptr %"R40"
  %".5533" = load float, ptr %"R35"
  %".5534" = load float, ptr %"R45"
  %"fmul.210" = fmul float %".5532", %".5533"
  %"fadd.191" = fadd float %"fmul.210", %".5534"
  %".5535" = bitcast ptr %"R35" to ptr
  store float %"fadd.191", ptr %".5535"
  ; FFMA R6, R6, R39, R10
  %".5538" = load float, ptr %"R6"
  %".5539" = load float, ptr %"R39"
  %".5540" = load float, ptr %"R10"
  %"fmul.211" = fmul float %".5538", %".5539"
  %"fadd.192" = fadd float %"fmul.211", %".5540"
  %".5541" = bitcast ptr %"R6" to ptr
  store float %"fadd.192", ptr %".5541"
  ; FFMA R35, R39, R4, R35
  %".5544" = load float, ptr %"R39"
  %".5545" = load float, ptr %"R4"
  %".5546" = load float, ptr %"R35"
  %"fmul.212" = fmul float %".5544", %".5545"
  %"fadd.193" = fadd float %"fmul.212", %".5546"
  %".5547" = bitcast ptr %"R35" to ptr
  store float %"fadd.193", ptr %".5547"
  ; FFMA R5, R5, R44, R6
  %".5550" = load float, ptr %"R5"
  %".5551" = load float, ptr %"R44"
  %".5552" = load float, ptr %"R6"
  %"fmul.213" = fmul float %".5550", %".5551"
  %"fadd.194" = fadd float %"fmul.213", %".5552"
  %".5553" = bitcast ptr %"R5" to ptr
  store float %"fadd.194", ptr %".5553"
  ; FFMA R60, R44, R60, R35
  %".5556" = load float, ptr %"R44"
  %".5557" = load float, ptr %"R60"
  %".5558" = load float, ptr %"R35"
  %"fmul.214" = fmul float %".5556", %".5557"
  %"fadd.195" = fadd float %"fmul.214", %".5558"
  %".5559" = bitcast ptr %"R60" to ptr
  store float %"fadd.195", ptr %".5559"
  ; FFMA R5, R58, R55, R5
  %".5562" = load float, ptr %"R58"
  %".5563" = load float, ptr %"R55"
  %".5564" = load float, ptr %"R5"
  %"fmul.215" = fmul float %".5562", %".5563"
  %"fadd.196" = fadd float %"fmul.215", %".5564"
  %".5565" = bitcast ptr %"R5" to ptr
  store float %"fadd.196", ptr %".5565"
  ; FFMA R5, R54, R53, R5
  %".5568" = load float, ptr %"R54"
  %".5569" = load float, ptr %"R53"
  %".5570" = load float, ptr %"R5"
  %"fmul.216" = fmul float %".5568", %".5569"
  %"fadd.197" = fadd float %"fmul.216", %".5570"
  %".5571" = bitcast ptr %"R5" to ptr
  store float %"fadd.197", ptr %".5571"
  ; FFMA R37, R55, R37, R60
  %".5574" = load float, ptr %"R55"
  %".5575" = load float, ptr %"R37"
  %".5576" = load float, ptr %"R60"
  %"fmul.217" = fmul float %".5574", %".5575"
  %"fadd.198" = fadd float %"fmul.217", %".5576"
  %".5577" = bitcast ptr %"R37" to ptr
  store float %"fadd.198", ptr %".5577"
  ; FFMA R37, R53, R42, R37
  %".5580" = load float, ptr %"R53"
  %".5581" = load float, ptr %"R42"
  %".5582" = load float, ptr %"R37"
  %"fmul.218" = fmul float %".5580", %".5581"
  %"fadd.199" = fadd float %"fmul.218", %".5582"
  %".5583" = bitcast ptr %"R37" to ptr
  store float %"fadd.199", ptr %".5583"
  ; FFMA R5, R7, R52, R5
  %".5586" = load float, ptr %"R7"
  %".5587" = load float, ptr %"R52"
  %".5588" = load float, ptr %"R5"
  %"fmul.219" = fmul float %".5586", %".5587"
  %"fadd.200" = fadd float %"fmul.219", %".5588"
  %".5589" = bitcast ptr %"R5" to ptr
  store float %"fadd.200", ptr %".5589"
  ; FFMA R9, R52, R9, R37
  %".5592" = load float, ptr %"R52"
  %".5593" = load float, ptr %"R9"
  %".5594" = load float, ptr %"R37"
  %"fmul.220" = fmul float %".5592", %".5593"
  %"fadd.201" = fadd float %"fmul.220", %".5594"
  %".5595" = bitcast ptr %"R9" to ptr
  store float %"fadd.201", ptr %".5595"
  ; FFMA R44, R13, R56, R5
  %".5598" = load float, ptr %"R13"
  %".5599" = load float, ptr %"R56"
  %".5600" = load float, ptr %"R5"
  %"fmul.221" = fmul float %".5598", %".5599"
  %"fadd.202" = fadd float %"fmul.221", %".5600"
  %".5601" = bitcast ptr %"R44" to ptr
  store float %"fadd.202", ptr %".5601"
  ; FFMA R56, R56, R8, R9
  %".5604" = load float, ptr %"R56"
  %".5605" = load float, ptr %"R8"
  %".5606" = load float, ptr %"R9"
  %"fmul.222" = fmul float %".5604", %".5605"
  %"fadd.203" = fadd float %"fmul.222", %".5606"
  %".5607" = bitcast ptr %"R56" to ptr
  store float %"fadd.203", ptr %".5607"
  ; @P1 BRA `(.L_x_30)
  %".5610" = load i1, ptr %"P1"
  %".5611" = icmp ne i1 %".5610", 1
  br i1 %".5611", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".5614" = load i32, ptr %"R22"
  %".5615" = load i1, ptr %"PT"
  %"cmp.46" = icmp sgt i32 %".5614", 4
  %".5616" = and i1 %"cmp.46", %".5615"
  store i1 %".5616", ptr %"P1"
  ; @!P1 BRA `(.L_x_31)
  %".5619" = load i1, ptr %"P1"
  %".5620" = icmp eq i1 %".5619", 1
  br i1 %".5620", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".5623" = load i32, ptr %"R0"
  %".5624" = load i32, ptr %"R23"
  %"add.242" = add i32 %".5623", %".5624"
  %"add.243" = add i32 %"add.242", 0
  store i32 %"add.243", ptr %"R5"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25"
  ; LEA R13, R2.reuse, R5, 0x2
  %".5629" = load i32, ptr %"R2"
  %".5630" = load i32, ptr %"R5"
  %"shl.281" = shl i32 %".5629", 2
  %"add.244" = add i32 %"shl.281", %".5630"
  store i32 %"add.244", ptr %"R13"
  ; IMAD R12, R2, 0x3, R5
  %".5633" = load i32, ptr %"R2"
  %".5634" = load i32, ptr %"R5"
  %"mul.75" = mul i32 %".5633", 3
  %"add.245" = add i32 %"mul.75", %".5634"
  store i32 %"add.245", ptr %"R12"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".5637" = load i32, ptr %"R23"
  %"add.246" = add i32 %".5637", 4
  %"add.247" = add i32 %"add.246", 0
  store i32 %"add.247", ptr %"R6"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".5640" = load i32, ptr %"R23"
  %".5641" = load i32, ptr %"R25"
  %"zext.657" = zext i32 %".5640" to i64
  %"zext.658" = zext i32 %".5641" to i64
  %"mul.76" = mul i64 %"zext.657", %"zext.658"
  %".5642" = ptrtoint ptr %"Arg_1" to i64
  %"add.248" = add i64 %"mul.76", %".5642"
  %".5643" = and i64 %"add.248", 18446744069414584320
  %".5644" = lshr i64 %".5643", 32
  %"trunc32.144" = trunc i64 %".5644" to i32
  %"trunc32.145" = trunc i64 %"add.248" to i32
  store i32 %"trunc32.145", ptr %"R8"
  store i32 %"trunc32.144", ptr %"R9"
  ; IADD3 R24, R13, 0x4, RZ
  %".5648" = load i32, ptr %"R13"
  %"add.249" = add i32 %".5648", 4
  %"add.250" = add i32 %"add.249", 0
  store i32 %"add.250", ptr %"R24"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".5651" = load i32, ptr %"R12"
  %".5652" = load i32, ptr %"R25"
  %"zext.659" = zext i32 %".5651" to i64
  %"zext.660" = zext i32 %".5652" to i64
  %"mul.77" = mul i64 %"zext.659", %"zext.660"
  %".5653" = ptrtoint ptr %"Arg_2" to i64
  %"add.251" = add i64 %"mul.77", %".5653"
  %".5654" = and i64 %"add.251", 18446744069414584320
  %".5655" = lshr i64 %".5654", 32
  %"trunc32.146" = trunc i64 %".5655" to i32
  %"trunc32.147" = trunc i64 %"add.251" to i32
  store i32 %"trunc32.147", ptr %"R4"
  store i32 %"trunc32.146", ptr %"R5"
  ; IADD3 R12, R12, 0x4, RZ
  %".5659" = load i32, ptr %"R12"
  %"add.252" = add i32 %".5659", 4
  %"add.253" = add i32 %"add.252", 0
  store i32 %"add.253", ptr %"R12"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".5662" = load i32, ptr %"R13"
  %".5663" = load i32, ptr %"R25"
  %"zext.661" = zext i32 %".5662" to i64
  %"zext.662" = zext i32 %".5663" to i64
  %"mul.78" = mul i64 %"zext.661", %"zext.662"
  %".5664" = ptrtoint ptr %"Arg_2" to i64
  %"add.254" = add i64 %"mul.78", %".5664"
  %".5665" = and i64 %"add.254", 18446744069414584320
  %".5666" = lshr i64 %".5665", 32
  %"trunc32.148" = trunc i64 %".5666" to i32
  %"trunc32.149" = trunc i64 %"add.254" to i32
  store i32 %"trunc32.149", ptr %"R10"
  store i32 %"trunc32.148", ptr %"R11"
  ; LDG.E.SYS R43, [R8]
  %".5670" = load i32, ptr %"R8"
  %"zext.663" = zext i32 %".5670" to i64
  %".5671" = load i32, ptr %"R9"
  %"zext.664" = zext i32 %".5671" to i64
  %"shl.282" = shl i64 %"zext.664", 32
  %"or.256" = or i64 %"shl.282", %"zext.663"
  %".5672" = inttoptr i64 %"or.256" to ptr
  %".5673" = ptrtoint ptr %".5672" to i64
  %".5674" = add i64 %".5673", 0
  %"for_LDG.235" = inttoptr i64 %".5674" to ptr
  %".5675" = load float, ptr %"for_LDG.235"
  %".5676" = bitcast ptr %"R43" to ptr
  store float %".5675", ptr %".5676"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".5679" = load i32, ptr %"R6"
  %".5680" = load i32, ptr %"R25"
  %"zext.665" = zext i32 %".5679" to i64
  %"zext.666" = zext i32 %".5680" to i64
  %"mul.79" = mul i64 %"zext.665", %"zext.666"
  %".5681" = ptrtoint ptr %"Arg_1" to i64
  %"add.255" = add i64 %"mul.79", %".5681"
  %".5682" = and i64 %"add.255", 18446744069414584320
  %".5683" = lshr i64 %".5682", 32
  %"trunc32.150" = trunc i64 %".5683" to i32
  %"trunc32.151" = trunc i64 %"add.255" to i32
  store i32 %"trunc32.151", ptr %"R6"
  store i32 %"trunc32.150", ptr %"R7"
  ; LDG.E.SYS R52, [R4]
  %".5687" = load i32, ptr %"R4"
  %"zext.667" = zext i32 %".5687" to i64
  %".5688" = load i32, ptr %"R5"
  %"zext.668" = zext i32 %".5688" to i64
  %"shl.283" = shl i64 %"zext.668", 32
  %"or.257" = or i64 %"shl.283", %"zext.667"
  %".5689" = inttoptr i64 %"or.257" to ptr
  %".5690" = ptrtoint ptr %".5689" to i64
  %".5691" = add i64 %".5690", 0
  %"for_LDG.236" = inttoptr i64 %".5691" to ptr
  %".5692" = load float, ptr %"for_LDG.236"
  %".5693" = bitcast ptr %"R52" to ptr
  store float %".5692", ptr %".5693"
  ; LDG.E.SYS R38, [R10]
  %".5696" = load i32, ptr %"R10"
  %"zext.669" = zext i32 %".5696" to i64
  %".5697" = load i32, ptr %"R11"
  %"zext.670" = zext i32 %".5697" to i64
  %"shl.284" = shl i64 %"zext.670", 32
  %"or.258" = or i64 %"shl.284", %"zext.669"
  %".5698" = inttoptr i64 %"or.258" to ptr
  %".5699" = ptrtoint ptr %".5698" to i64
  %".5700" = add i64 %".5699", 0
  %"for_LDG.237" = inttoptr i64 %".5700" to ptr
  %".5701" = load float, ptr %"for_LDG.237"
  %".5702" = bitcast ptr %"R38" to ptr
  store float %".5701", ptr %".5702"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".5705" = load i32, ptr %"R12"
  %".5706" = load i32, ptr %"R25"
  %"zext.671" = zext i32 %".5705" to i64
  %"zext.672" = zext i32 %".5706" to i64
  %"mul.80" = mul i64 %"zext.671", %"zext.672"
  %".5707" = ptrtoint ptr %"Arg_2" to i64
  %"add.256" = add i64 %"mul.80", %".5707"
  %".5708" = and i64 %"add.256", 18446744069414584320
  %".5709" = lshr i64 %".5708", 32
  %"trunc32.152" = trunc i64 %".5709" to i32
  %"trunc32.153" = trunc i64 %"add.256" to i32
  store i32 %"trunc32.153", ptr %"R12"
  store i32 %"trunc32.152", ptr %"R13"
  ; LDG.E.SYS R36, [R8+0x4]
  %".5713" = load i32, ptr %"R8"
  %"zext.673" = zext i32 %".5713" to i64
  %".5714" = load i32, ptr %"R9"
  %"zext.674" = zext i32 %".5714" to i64
  %"shl.285" = shl i64 %"zext.674", 32
  %"or.259" = or i64 %"shl.285", %"zext.673"
  %".5715" = inttoptr i64 %"or.259" to ptr
  %".5716" = ptrtoint ptr %".5715" to i64
  %".5717" = add i64 %".5716", 4
  %"for_LDG.238" = inttoptr i64 %".5717" to ptr
  %".5718" = load float, ptr %"for_LDG.238"
  %".5719" = bitcast ptr %"R36" to ptr
  store float %".5718", ptr %".5719"
  ; LDG.E.SYS R41, [R4+0x4]
  %".5722" = load i32, ptr %"R4"
  %"zext.675" = zext i32 %".5722" to i64
  %".5723" = load i32, ptr %"R5"
  %"zext.676" = zext i32 %".5723" to i64
  %"shl.286" = shl i64 %"zext.676", 32
  %"or.260" = or i64 %"shl.286", %"zext.675"
  %".5724" = inttoptr i64 %"or.260" to ptr
  %".5725" = ptrtoint ptr %".5724" to i64
  %".5726" = add i64 %".5725", 4
  %"for_LDG.239" = inttoptr i64 %".5726" to ptr
  %".5727" = load float, ptr %"for_LDG.239"
  %".5728" = bitcast ptr %"R41" to ptr
  store float %".5727", ptr %".5728"
  ; LDG.E.SYS R39, [R10+0x4]
  %".5731" = load i32, ptr %"R10"
  %"zext.677" = zext i32 %".5731" to i64
  %".5732" = load i32, ptr %"R11"
  %"zext.678" = zext i32 %".5732" to i64
  %"shl.287" = shl i64 %"zext.678", 32
  %"or.261" = or i64 %"shl.287", %"zext.677"
  %".5733" = inttoptr i64 %"or.261" to ptr
  %".5734" = ptrtoint ptr %".5733" to i64
  %".5735" = add i64 %".5734", 4
  %"for_LDG.240" = inttoptr i64 %".5735" to ptr
  %".5736" = load float, ptr %"for_LDG.240"
  %".5737" = bitcast ptr %"R39" to ptr
  store float %".5736", ptr %".5737"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".5740" = load i32, ptr %"R24"
  %".5741" = load i32, ptr %"R25"
  %"zext.679" = zext i32 %".5740" to i64
  %"zext.680" = zext i32 %".5741" to i64
  %"mul.81" = mul i64 %"zext.679", %"zext.680"
  %".5742" = ptrtoint ptr %"Arg_2" to i64
  %"add.257" = add i64 %"mul.81", %".5742"
  %".5743" = and i64 %"add.257", 18446744069414584320
  %".5744" = lshr i64 %".5743", 32
  %"trunc32.154" = trunc i64 %".5744" to i32
  %"trunc32.155" = trunc i64 %"add.257" to i32
  store i32 %"trunc32.155", ptr %"R24"
  store i32 %"trunc32.154", ptr %"R25"
  ; LDG.E.SYS R34, [R8+0x8]
  %".5748" = load i32, ptr %"R8"
  %"zext.681" = zext i32 %".5748" to i64
  %".5749" = load i32, ptr %"R9"
  %"zext.682" = zext i32 %".5749" to i64
  %"shl.288" = shl i64 %"zext.682", 32
  %"or.262" = or i64 %"shl.288", %"zext.681"
  %".5750" = inttoptr i64 %"or.262" to ptr
  %".5751" = ptrtoint ptr %".5750" to i64
  %".5752" = add i64 %".5751", 8
  %"for_LDG.241" = inttoptr i64 %".5752" to ptr
  %".5753" = load float, ptr %"for_LDG.241"
  %".5754" = bitcast ptr %"R34" to ptr
  store float %".5753", ptr %".5754"
  ; LDG.E.SYS R37, [R4+0x8]
  %".5757" = load i32, ptr %"R4"
  %"zext.683" = zext i32 %".5757" to i64
  %".5758" = load i32, ptr %"R5"
  %"zext.684" = zext i32 %".5758" to i64
  %"shl.289" = shl i64 %"zext.684", 32
  %"or.263" = or i64 %"shl.289", %"zext.683"
  %".5759" = inttoptr i64 %"or.263" to ptr
  %".5760" = ptrtoint ptr %".5759" to i64
  %".5761" = add i64 %".5760", 8
  %"for_LDG.242" = inttoptr i64 %".5761" to ptr
  %".5762" = load float, ptr %"for_LDG.242"
  %".5763" = bitcast ptr %"R37" to ptr
  store float %".5762", ptr %".5763"
  ; LDG.E.SYS R35, [R10+0x8]
  %".5766" = load i32, ptr %"R10"
  %"zext.685" = zext i32 %".5766" to i64
  %".5767" = load i32, ptr %"R11"
  %"zext.686" = zext i32 %".5767" to i64
  %"shl.290" = shl i64 %"zext.686", 32
  %"or.264" = or i64 %"shl.290", %"zext.685"
  %".5768" = inttoptr i64 %"or.264" to ptr
  %".5769" = ptrtoint ptr %".5768" to i64
  %".5770" = add i64 %".5769", 8
  %"for_LDG.243" = inttoptr i64 %".5770" to ptr
  %".5771" = load float, ptr %"for_LDG.243"
  %".5772" = bitcast ptr %"R35" to ptr
  store float %".5771", ptr %".5772"
  ; LDG.E.SYS R40, [R8+0xc]
  %".5775" = load i32, ptr %"R8"
  %"zext.687" = zext i32 %".5775" to i64
  %".5776" = load i32, ptr %"R9"
  %"zext.688" = zext i32 %".5776" to i64
  %"shl.291" = shl i64 %"zext.688", 32
  %"or.265" = or i64 %"shl.291", %"zext.687"
  %".5777" = inttoptr i64 %"or.265" to ptr
  %".5778" = ptrtoint ptr %".5777" to i64
  %".5779" = add i64 %".5778", 12
  %"for_LDG.244" = inttoptr i64 %".5779" to ptr
  %".5780" = load float, ptr %"for_LDG.244"
  %".5781" = bitcast ptr %"R40" to ptr
  store float %".5780", ptr %".5781"
  ; LDG.E.SYS R45, [R4+0xc]
  %".5784" = load i32, ptr %"R4"
  %"zext.689" = zext i32 %".5784" to i64
  %".5785" = load i32, ptr %"R5"
  %"zext.690" = zext i32 %".5785" to i64
  %"shl.292" = shl i64 %"zext.690", 32
  %"or.266" = or i64 %"shl.292", %"zext.689"
  %".5786" = inttoptr i64 %"or.266" to ptr
  %".5787" = ptrtoint ptr %".5786" to i64
  %".5788" = add i64 %".5787", 12
  %"for_LDG.245" = inttoptr i64 %".5788" to ptr
  %".5789" = load float, ptr %"for_LDG.245"
  %".5790" = bitcast ptr %"R45" to ptr
  store float %".5789", ptr %".5790"
  ; LDG.E.SYS R59, [R10+0xc]
  %".5793" = load i32, ptr %"R10"
  %"zext.691" = zext i32 %".5793" to i64
  %".5794" = load i32, ptr %"R11"
  %"zext.692" = zext i32 %".5794" to i64
  %"shl.293" = shl i64 %"zext.692", 32
  %"or.267" = or i64 %"shl.293", %"zext.691"
  %".5795" = inttoptr i64 %"or.267" to ptr
  %".5796" = ptrtoint ptr %".5795" to i64
  %".5797" = add i64 %".5796", 12
  %"for_LDG.246" = inttoptr i64 %".5797" to ptr
  %".5798" = load float, ptr %"for_LDG.246"
  %".5799" = bitcast ptr %"R59" to ptr
  store float %".5798", ptr %".5799"
  ; LDG.E.SYS R50, [R6]
  %".5802" = load i32, ptr %"R6"
  %"zext.693" = zext i32 %".5802" to i64
  %".5803" = load i32, ptr %"R7"
  %"zext.694" = zext i32 %".5803" to i64
  %"shl.294" = shl i64 %"zext.694", 32
  %"or.268" = or i64 %"shl.294", %"zext.693"
  %".5804" = inttoptr i64 %"or.268" to ptr
  %".5805" = ptrtoint ptr %".5804" to i64
  %".5806" = add i64 %".5805", 0
  %"for_LDG.247" = inttoptr i64 %".5806" to ptr
  %".5807" = load float, ptr %"for_LDG.247"
  %".5808" = bitcast ptr %"R50" to ptr
  store float %".5807", ptr %".5808"
  ; LDG.E.SYS R57, [R12]
  %".5811" = load i32, ptr %"R12"
  %"zext.695" = zext i32 %".5811" to i64
  %".5812" = load i32, ptr %"R13"
  %"zext.696" = zext i32 %".5812" to i64
  %"shl.295" = shl i64 %"zext.696", 32
  %"or.269" = or i64 %"shl.295", %"zext.695"
  %".5813" = inttoptr i64 %"or.269" to ptr
  %".5814" = ptrtoint ptr %".5813" to i64
  %".5815" = add i64 %".5814", 0
  %"for_LDG.248" = inttoptr i64 %".5815" to ptr
  %".5816" = load float, ptr %"for_LDG.248"
  %".5817" = bitcast ptr %"R57" to ptr
  store float %".5816", ptr %".5817"
  ; LDG.E.SYS R55, [R24]
  %".5820" = load i32, ptr %"R24"
  %"zext.697" = zext i32 %".5820" to i64
  %".5821" = load i32, ptr %"R25"
  %"zext.698" = zext i32 %".5821" to i64
  %"shl.296" = shl i64 %"zext.698", 32
  %"or.270" = or i64 %"shl.296", %"zext.697"
  %".5822" = inttoptr i64 %"or.270" to ptr
  %".5823" = ptrtoint ptr %".5822" to i64
  %".5824" = add i64 %".5823", 0
  %"for_LDG.249" = inttoptr i64 %".5824" to ptr
  %".5825" = load float, ptr %"for_LDG.249"
  %".5826" = bitcast ptr %"R55" to ptr
  store float %".5825", ptr %".5826"
  ; LDG.E.SYS R46, [R6+0x4]
  %".5829" = load i32, ptr %"R6"
  %"zext.699" = zext i32 %".5829" to i64
  %".5830" = load i32, ptr %"R7"
  %"zext.700" = zext i32 %".5830" to i64
  %"shl.297" = shl i64 %"zext.700", 32
  %"or.271" = or i64 %"shl.297", %"zext.699"
  %".5831" = inttoptr i64 %"or.271" to ptr
  %".5832" = ptrtoint ptr %".5831" to i64
  %".5833" = add i64 %".5832", 4
  %"for_LDG.250" = inttoptr i64 %".5833" to ptr
  %".5834" = load float, ptr %"for_LDG.250"
  %".5835" = bitcast ptr %"R46" to ptr
  store float %".5834", ptr %".5835"
  ; LDG.E.SYS R53, [R12+0x4]
  %".5838" = load i32, ptr %"R12"
  %"zext.701" = zext i32 %".5838" to i64
  %".5839" = load i32, ptr %"R13"
  %"zext.702" = zext i32 %".5839" to i64
  %"shl.298" = shl i64 %"zext.702", 32
  %"or.272" = or i64 %"shl.298", %"zext.701"
  %".5840" = inttoptr i64 %"or.272" to ptr
  %".5841" = ptrtoint ptr %".5840" to i64
  %".5842" = add i64 %".5841", 4
  %"for_LDG.251" = inttoptr i64 %".5842" to ptr
  %".5843" = load float, ptr %"for_LDG.251"
  %".5844" = bitcast ptr %"R53" to ptr
  store float %".5843", ptr %".5844"
  ; LDG.E.SYS R51, [R24+0x4]
  %".5847" = load i32, ptr %"R24"
  %"zext.703" = zext i32 %".5847" to i64
  %".5848" = load i32, ptr %"R25"
  %"zext.704" = zext i32 %".5848" to i64
  %"shl.299" = shl i64 %"zext.704", 32
  %"or.273" = or i64 %"shl.299", %"zext.703"
  %".5849" = inttoptr i64 %"or.273" to ptr
  %".5850" = ptrtoint ptr %".5849" to i64
  %".5851" = add i64 %".5850", 4
  %"for_LDG.252" = inttoptr i64 %".5851" to ptr
  %".5852" = load float, ptr %"for_LDG.252"
  %".5853" = bitcast ptr %"R51" to ptr
  store float %".5852", ptr %".5853"
  ; LDG.E.SYS R42, [R6+0x8]
  %".5856" = load i32, ptr %"R6"
  %"zext.705" = zext i32 %".5856" to i64
  %".5857" = load i32, ptr %"R7"
  %"zext.706" = zext i32 %".5857" to i64
  %"shl.300" = shl i64 %"zext.706", 32
  %"or.274" = or i64 %"shl.300", %"zext.705"
  %".5858" = inttoptr i64 %"or.274" to ptr
  %".5859" = ptrtoint ptr %".5858" to i64
  %".5860" = add i64 %".5859", 8
  %"for_LDG.253" = inttoptr i64 %".5860" to ptr
  %".5861" = load float, ptr %"for_LDG.253"
  %".5862" = bitcast ptr %"R42" to ptr
  store float %".5861", ptr %".5862"
  ; LDG.E.SYS R47, [R12+0x8]
  %".5865" = load i32, ptr %"R12"
  %"zext.707" = zext i32 %".5865" to i64
  %".5866" = load i32, ptr %"R13"
  %"zext.708" = zext i32 %".5866" to i64
  %"shl.301" = shl i64 %"zext.708", 32
  %"or.275" = or i64 %"shl.301", %"zext.707"
  %".5867" = inttoptr i64 %"or.275" to ptr
  %".5868" = ptrtoint ptr %".5867" to i64
  %".5869" = add i64 %".5868", 8
  %"for_LDG.254" = inttoptr i64 %".5869" to ptr
  %".5870" = load float, ptr %"for_LDG.254"
  %".5871" = bitcast ptr %"R47" to ptr
  store float %".5870", ptr %".5871"
  ; LDG.E.SYS R9, [R24+0x8]
  %".5874" = load i32, ptr %"R24"
  %"zext.709" = zext i32 %".5874" to i64
  %".5875" = load i32, ptr %"R25"
  %"zext.710" = zext i32 %".5875" to i64
  %"shl.302" = shl i64 %"zext.710", 32
  %"or.276" = or i64 %"shl.302", %"zext.709"
  %".5876" = inttoptr i64 %"or.276" to ptr
  %".5877" = ptrtoint ptr %".5876" to i64
  %".5878" = add i64 %".5877", 8
  %"for_LDG.255" = inttoptr i64 %".5878" to ptr
  %".5879" = load float, ptr %"for_LDG.255"
  %".5880" = bitcast ptr %"R9" to ptr
  store float %".5879", ptr %".5880"
  ; LDG.E.SYS R4, [R6+0xc]
  %".5883" = load i32, ptr %"R6"
  %"zext.711" = zext i32 %".5883" to i64
  %".5884" = load i32, ptr %"R7"
  %"zext.712" = zext i32 %".5884" to i64
  %"shl.303" = shl i64 %"zext.712", 32
  %"or.277" = or i64 %"shl.303", %"zext.711"
  %".5885" = inttoptr i64 %"or.277" to ptr
  %".5886" = ptrtoint ptr %".5885" to i64
  %".5887" = add i64 %".5886", 12
  %"for_LDG.256" = inttoptr i64 %".5887" to ptr
  %".5888" = load float, ptr %"for_LDG.256"
  %".5889" = bitcast ptr %"R4" to ptr
  store float %".5888", ptr %".5889"
  ; LDG.E.SYS R5, [R12+0xc]
  %".5892" = load i32, ptr %"R12"
  %"zext.713" = zext i32 %".5892" to i64
  %".5893" = load i32, ptr %"R13"
  %"zext.714" = zext i32 %".5893" to i64
  %"shl.304" = shl i64 %"zext.714", 32
  %"or.278" = or i64 %"shl.304", %"zext.713"
  %".5894" = inttoptr i64 %"or.278" to ptr
  %".5895" = ptrtoint ptr %".5894" to i64
  %".5896" = add i64 %".5895", 12
  %"for_LDG.257" = inttoptr i64 %".5896" to ptr
  %".5897" = load float, ptr %"for_LDG.257"
  %".5898" = bitcast ptr %"R5" to ptr
  store float %".5897", ptr %".5898"
  ; LDG.E.SYS R11, [R24+0xc]
  %".5901" = load i32, ptr %"R24"
  %"zext.715" = zext i32 %".5901" to i64
  %".5902" = load i32, ptr %"R25"
  %"zext.716" = zext i32 %".5902" to i64
  %"shl.305" = shl i64 %"zext.716", 32
  %"or.279" = or i64 %"shl.305", %"zext.715"
  %".5903" = inttoptr i64 %"or.279" to ptr
  %".5904" = ptrtoint ptr %".5903" to i64
  %".5905" = add i64 %".5904", 12
  %"for_LDG.258" = inttoptr i64 %".5905" to ptr
  %".5906" = load float, ptr %"for_LDG.258"
  %".5907" = bitcast ptr %"R11" to ptr
  store float %".5906", ptr %".5907"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".5910" = xor i1 1, 1
  %".5911" = and i1 %".5910", 1
  %".5912" = and i1 %".5911", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".5914" = load i32, ptr %"R22"
  %"add.258" = add i32 %".5914", -8
  %"add.259" = add i32 %"add.258", 0
  store i32 %"add.259", ptr %"R22"
  ; IADD3 R23, R23, 0x8, RZ
  %".5917" = load i32, ptr %"R23"
  %"add.260" = add i32 %".5917", 8
  %"add.261" = add i32 %"add.260", 0
  store i32 %"add.261", ptr %"R23"
  ; FFMA R52, R52, R43, R44
  %".5920" = load float, ptr %"R52"
  %".5921" = load float, ptr %"R43"
  %".5922" = load float, ptr %"R44"
  %"fmul.223" = fmul float %".5920", %".5921"
  %"fadd.204" = fadd float %"fmul.223", %".5922"
  %".5923" = bitcast ptr %"R52" to ptr
  store float %"fadd.204", ptr %".5923"
  ; FFMA R38, R43, R38, R56
  %".5926" = load float, ptr %"R43"
  %".5927" = load float, ptr %"R38"
  %".5928" = load float, ptr %"R56"
  %"fmul.224" = fmul float %".5926", %".5927"
  %"fadd.205" = fadd float %"fmul.224", %".5928"
  %".5929" = bitcast ptr %"R38" to ptr
  store float %"fadd.205", ptr %".5929"
  ; FFMA R41, R41, R36, R52
  %".5932" = load float, ptr %"R41"
  %".5933" = load float, ptr %"R36"
  %".5934" = load float, ptr %"R52"
  %"fmul.225" = fmul float %".5932", %".5933"
  %"fadd.206" = fadd float %"fmul.225", %".5934"
  %".5935" = bitcast ptr %"R41" to ptr
  store float %"fadd.206", ptr %".5935"
  ; FFMA R38, R36, R39, R38
  %".5938" = load float, ptr %"R36"
  %".5939" = load float, ptr %"R39"
  %".5940" = load float, ptr %"R38"
  %"fmul.226" = fmul float %".5938", %".5939"
  %"fadd.207" = fadd float %"fmul.226", %".5940"
  %".5941" = bitcast ptr %"R38" to ptr
  store float %"fadd.207", ptr %".5941"
  ; FFMA R37, R37, R34, R41
  %".5944" = load float, ptr %"R37"
  %".5945" = load float, ptr %"R34"
  %".5946" = load float, ptr %"R41"
  %"fmul.227" = fmul float %".5944", %".5945"
  %"fadd.208" = fadd float %"fmul.227", %".5946"
  %".5947" = bitcast ptr %"R37" to ptr
  store float %"fadd.208", ptr %".5947"
  ; FFMA R35, R34, R35, R38
  %".5950" = load float, ptr %"R34"
  %".5951" = load float, ptr %"R35"
  %".5952" = load float, ptr %"R38"
  %"fmul.228" = fmul float %".5950", %".5951"
  %"fadd.209" = fadd float %"fmul.228", %".5952"
  %".5953" = bitcast ptr %"R35" to ptr
  store float %"fadd.209", ptr %".5953"
  ; FFMA R37, R45, R40, R37
  %".5956" = load float, ptr %"R45"
  %".5957" = load float, ptr %"R40"
  %".5958" = load float, ptr %"R37"
  %"fmul.229" = fmul float %".5956", %".5957"
  %"fadd.210" = fadd float %"fmul.229", %".5958"
  %".5959" = bitcast ptr %"R37" to ptr
  store float %"fadd.210", ptr %".5959"
  ; FFMA R35, R40, R59, R35
  %".5962" = load float, ptr %"R40"
  %".5963" = load float, ptr %"R59"
  %".5964" = load float, ptr %"R35"
  %"fmul.230" = fmul float %".5962", %".5963"
  %"fadd.211" = fadd float %"fmul.230", %".5964"
  %".5965" = bitcast ptr %"R35" to ptr
  store float %"fadd.211", ptr %".5965"
  ; FFMA R37, R57, R50, R37
  %".5968" = load float, ptr %"R57"
  %".5969" = load float, ptr %"R50"
  %".5970" = load float, ptr %"R37"
  %"fmul.231" = fmul float %".5968", %".5969"
  %"fadd.212" = fadd float %"fmul.231", %".5970"
  %".5971" = bitcast ptr %"R37" to ptr
  store float %"fadd.212", ptr %".5971"
  ; FFMA R35, R50, R55, R35
  %".5974" = load float, ptr %"R50"
  %".5975" = load float, ptr %"R55"
  %".5976" = load float, ptr %"R35"
  %"fmul.232" = fmul float %".5974", %".5975"
  %"fadd.213" = fadd float %"fmul.232", %".5976"
  %".5977" = bitcast ptr %"R35" to ptr
  store float %"fadd.213", ptr %".5977"
  ; FFMA R37, R53, R46, R37
  %".5980" = load float, ptr %"R53"
  %".5981" = load float, ptr %"R46"
  %".5982" = load float, ptr %"R37"
  %"fmul.233" = fmul float %".5980", %".5981"
  %"fadd.214" = fadd float %"fmul.233", %".5982"
  %".5983" = bitcast ptr %"R37" to ptr
  store float %"fadd.214", ptr %".5983"
  ; FFMA R35, R46, R51, R35
  %".5986" = load float, ptr %"R46"
  %".5987" = load float, ptr %"R51"
  %".5988" = load float, ptr %"R35"
  %"fmul.234" = fmul float %".5986", %".5987"
  %"fadd.215" = fadd float %"fmul.234", %".5988"
  %".5989" = bitcast ptr %"R35" to ptr
  store float %"fadd.215", ptr %".5989"
  ; FFMA R37, R47, R42, R37
  %".5992" = load float, ptr %"R47"
  %".5993" = load float, ptr %"R42"
  %".5994" = load float, ptr %"R37"
  %"fmul.235" = fmul float %".5992", %".5993"
  %"fadd.216" = fadd float %"fmul.235", %".5994"
  %".5995" = bitcast ptr %"R37" to ptr
  store float %"fadd.216", ptr %".5995"
  ; FFMA R9, R42, R9, R35
  %".5998" = load float, ptr %"R42"
  %".5999" = load float, ptr %"R9"
  %".6000" = load float, ptr %"R35"
  %"fmul.236" = fmul float %".5998", %".5999"
  %"fadd.217" = fadd float %"fmul.236", %".6000"
  %".6001" = bitcast ptr %"R9" to ptr
  store float %"fadd.217", ptr %".6001"
  ; FFMA R44, R5, R4, R37
  %".6004" = load float, ptr %"R5"
  %".6005" = load float, ptr %"R4"
  %".6006" = load float, ptr %"R37"
  %"fmul.237" = fmul float %".6004", %".6005"
  %"fadd.218" = fadd float %"fmul.237", %".6006"
  %".6007" = bitcast ptr %"R44" to ptr
  store float %"fadd.218", ptr %".6007"
  ; FFMA R56, R4, R11, R9
  %".6010" = load float, ptr %"R4"
  %".6011" = load float, ptr %"R11"
  %".6012" = load float, ptr %"R9"
  %"fmul.238" = fmul float %".6010", %".6011"
  %"fadd.219" = fadd float %"fmul.238", %".6012"
  %".6013" = bitcast ptr %"R56" to ptr
  store float %"fadd.219", ptr %".6013"
  br label %".L_x_31"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".6017" = load i32, ptr %"R22"
  %".6018" = load i1, ptr %"PT"
  %"cmp.47" = icmp ne i32 %".6017", 0
  %".6019" = or i1 %"cmp.47", %".6018"
  store i1 %".6019", ptr %"P0"
  ; @!P0 BRA `(.L_x_27)
  %".6022" = load i1, ptr %"P0"
  %".6023" = icmp eq i1 %".6022", 1
  br i1 %".6023", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".6026" = load i32, ptr %"R0"
  %".6027" = load i32, ptr %"R23"
  %"add.262" = add i32 %".6026", %".6027"
  %"add.263" = add i32 %"add.262", 0
  store i32 %"add.263", ptr %"R5"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6"
  ; LEA R11, R2.reuse, R5, 0x2
  %".6032" = load i32, ptr %"R2"
  %".6033" = load i32, ptr %"R5"
  %"shl.306" = shl i32 %".6032", 2
  %"add.264" = add i32 %"shl.306", %".6033"
  store i32 %"add.264", ptr %"R11"
  ; IMAD R7, R2, 0x3, R5
  %".6036" = load i32, ptr %"R2"
  %".6037" = load i32, ptr %"R5"
  %"mul.82" = mul i32 %".6036", 3
  %"add.265" = add i32 %"mul.82", %".6037"
  store i32 %"add.265", ptr %"R7"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".6040" = load i32, ptr %"R23"
  %".6041" = load i32, ptr %"R6"
  %"zext.717" = zext i32 %".6040" to i64
  %"zext.718" = zext i32 %".6041" to i64
  %"mul.83" = mul i64 %"zext.717", %"zext.718"
  %".6042" = ptrtoint ptr %"Arg_1" to i64
  %"add.266" = add i64 %"mul.83", %".6042"
  %".6043" = and i64 %"add.266", 18446744069414584320
  %".6044" = lshr i64 %".6043", 32
  %"trunc32.156" = trunc i64 %".6044" to i32
  %"trunc32.157" = trunc i64 %"add.266" to i32
  store i32 %"trunc32.157", ptr %"R8"
  store i32 %"trunc32.156", ptr %"R9"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".6048" = load i32, ptr %"R7"
  %".6049" = load i32, ptr %"R6"
  %"zext.719" = zext i32 %".6048" to i64
  %"zext.720" = zext i32 %".6049" to i64
  %"mul.84" = mul i64 %"zext.719", %"zext.720"
  %".6050" = ptrtoint ptr %"Arg_2" to i64
  %"add.267" = add i64 %"mul.84", %".6050"
  %".6051" = and i64 %"add.267", 18446744069414584320
  %".6052" = lshr i64 %".6051", 32
  %"trunc32.158" = trunc i64 %".6052" to i32
  %"trunc32.159" = trunc i64 %"add.267" to i32
  store i32 %"trunc32.159", ptr %"R4"
  store i32 %"trunc32.158", ptr %"R5"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".6056" = load i32, ptr %"R11"
  %".6057" = load i32, ptr %"R6"
  %"zext.721" = zext i32 %".6056" to i64
  %"zext.722" = zext i32 %".6057" to i64
  %"mul.85" = mul i64 %"zext.721", %"zext.722"
  %".6058" = ptrtoint ptr %"Arg_2" to i64
  %"add.268" = add i64 %"mul.85", %".6058"
  %".6059" = and i64 %"add.268", 18446744069414584320
  %".6060" = lshr i64 %".6059", 32
  %"trunc32.160" = trunc i64 %".6060" to i32
  %"trunc32.161" = trunc i64 %"add.268" to i32
  store i32 %"trunc32.161", ptr %"R6"
  store i32 %"trunc32.160", ptr %"R7"
  ; LDG.E.SYS R13, [R8]
  %".6064" = load i32, ptr %"R8"
  %"zext.723" = zext i32 %".6064" to i64
  %".6065" = load i32, ptr %"R9"
  %"zext.724" = zext i32 %".6065" to i64
  %"shl.307" = shl i64 %"zext.724", 32
  %"or.280" = or i64 %"shl.307", %"zext.723"
  %".6066" = inttoptr i64 %"or.280" to ptr
  %".6067" = ptrtoint ptr %".6066" to i64
  %".6068" = add i64 %".6067", 0
  %"for_LDG.259" = inttoptr i64 %".6068" to ptr
  %".6069" = load float, ptr %"for_LDG.259"
  %".6070" = bitcast ptr %"R13" to ptr
  store float %".6069", ptr %".6070"
  ; LDG.E.SYS R11, [R4]
  %".6073" = load i32, ptr %"R4"
  %"zext.725" = zext i32 %".6073" to i64
  %".6074" = load i32, ptr %"R5"
  %"zext.726" = zext i32 %".6074" to i64
  %"shl.308" = shl i64 %"zext.726", 32
  %"or.281" = or i64 %"shl.308", %"zext.725"
  %".6075" = inttoptr i64 %"or.281" to ptr
  %".6076" = ptrtoint ptr %".6075" to i64
  %".6077" = add i64 %".6076", 0
  %"for_LDG.260" = inttoptr i64 %".6077" to ptr
  %".6078" = load float, ptr %"for_LDG.260"
  %".6079" = bitcast ptr %"R11" to ptr
  store float %".6078", ptr %".6079"
  ; LDG.E.SYS R10, [R6]
  %".6082" = load i32, ptr %"R6"
  %"zext.727" = zext i32 %".6082" to i64
  %".6083" = load i32, ptr %"R7"
  %"zext.728" = zext i32 %".6083" to i64
  %"shl.309" = shl i64 %"zext.728", 32
  %"or.282" = or i64 %"shl.309", %"zext.727"
  %".6084" = inttoptr i64 %"or.282" to ptr
  %".6085" = ptrtoint ptr %".6084" to i64
  %".6086" = add i64 %".6085", 0
  %"for_LDG.261" = inttoptr i64 %".6086" to ptr
  %".6087" = load float, ptr %"for_LDG.261"
  %".6088" = bitcast ptr %"R10" to ptr
  store float %".6087", ptr %".6088"
  ; LDG.E.SYS R25, [R8+0x4]
  %".6091" = load i32, ptr %"R8"
  %"zext.729" = zext i32 %".6091" to i64
  %".6092" = load i32, ptr %"R9"
  %"zext.730" = zext i32 %".6092" to i64
  %"shl.310" = shl i64 %"zext.730", 32
  %"or.283" = or i64 %"shl.310", %"zext.729"
  %".6093" = inttoptr i64 %"or.283" to ptr
  %".6094" = ptrtoint ptr %".6093" to i64
  %".6095" = add i64 %".6094", 4
  %"for_LDG.262" = inttoptr i64 %".6095" to ptr
  %".6096" = load float, ptr %"for_LDG.262"
  %".6097" = bitcast ptr %"R25" to ptr
  store float %".6096", ptr %".6097"
  ; LDG.E.SYS R12, [R4+0x4]
  %".6100" = load i32, ptr %"R4"
  %"zext.731" = zext i32 %".6100" to i64
  %".6101" = load i32, ptr %"R5"
  %"zext.732" = zext i32 %".6101" to i64
  %"shl.311" = shl i64 %"zext.732", 32
  %"or.284" = or i64 %"shl.311", %"zext.731"
  %".6102" = inttoptr i64 %"or.284" to ptr
  %".6103" = ptrtoint ptr %".6102" to i64
  %".6104" = add i64 %".6103", 4
  %"for_LDG.263" = inttoptr i64 %".6104" to ptr
  %".6105" = load float, ptr %"for_LDG.263"
  %".6106" = bitcast ptr %"R12" to ptr
  store float %".6105", ptr %".6106"
  ; LDG.E.SYS R24, [R6+0x4]
  %".6109" = load i32, ptr %"R6"
  %"zext.733" = zext i32 %".6109" to i64
  %".6110" = load i32, ptr %"R7"
  %"zext.734" = zext i32 %".6110" to i64
  %"shl.312" = shl i64 %"zext.734", 32
  %"or.285" = or i64 %"shl.312", %"zext.733"
  %".6111" = inttoptr i64 %"or.285" to ptr
  %".6112" = ptrtoint ptr %".6111" to i64
  %".6113" = add i64 %".6112", 4
  %"for_LDG.264" = inttoptr i64 %".6113" to ptr
  %".6114" = load float, ptr %"for_LDG.264"
  %".6115" = bitcast ptr %"R24" to ptr
  store float %".6114", ptr %".6115"
  ; LDG.E.SYS R35, [R8+0x8]
  %".6118" = load i32, ptr %"R8"
  %"zext.735" = zext i32 %".6118" to i64
  %".6119" = load i32, ptr %"R9"
  %"zext.736" = zext i32 %".6119" to i64
  %"shl.313" = shl i64 %"zext.736", 32
  %"or.286" = or i64 %"shl.313", %"zext.735"
  %".6120" = inttoptr i64 %"or.286" to ptr
  %".6121" = ptrtoint ptr %".6120" to i64
  %".6122" = add i64 %".6121", 8
  %"for_LDG.265" = inttoptr i64 %".6122" to ptr
  %".6123" = load float, ptr %"for_LDG.265"
  %".6124" = bitcast ptr %"R35" to ptr
  store float %".6123", ptr %".6124"
  ; LDG.E.SYS R34, [R4+0x8]
  %".6127" = load i32, ptr %"R4"
  %"zext.737" = zext i32 %".6127" to i64
  %".6128" = load i32, ptr %"R5"
  %"zext.738" = zext i32 %".6128" to i64
  %"shl.314" = shl i64 %"zext.738", 32
  %"or.287" = or i64 %"shl.314", %"zext.737"
  %".6129" = inttoptr i64 %"or.287" to ptr
  %".6130" = ptrtoint ptr %".6129" to i64
  %".6131" = add i64 %".6130", 8
  %"for_LDG.266" = inttoptr i64 %".6131" to ptr
  %".6132" = load float, ptr %"for_LDG.266"
  %".6133" = bitcast ptr %"R34" to ptr
  store float %".6132", ptr %".6133"
  ; LDG.E.SYS R36, [R6+0x8]
  %".6136" = load i32, ptr %"R6"
  %"zext.739" = zext i32 %".6136" to i64
  %".6137" = load i32, ptr %"R7"
  %"zext.740" = zext i32 %".6137" to i64
  %"shl.315" = shl i64 %"zext.740", 32
  %"or.288" = or i64 %"shl.315", %"zext.739"
  %".6138" = inttoptr i64 %"or.288" to ptr
  %".6139" = ptrtoint ptr %".6138" to i64
  %".6140" = add i64 %".6139", 8
  %"for_LDG.267" = inttoptr i64 %".6140" to ptr
  %".6141" = load float, ptr %"for_LDG.267"
  %".6142" = bitcast ptr %"R36" to ptr
  store float %".6141", ptr %".6142"
  ; LDG.E.SYS R37, [R8+0xc]
  %".6145" = load i32, ptr %"R8"
  %"zext.741" = zext i32 %".6145" to i64
  %".6146" = load i32, ptr %"R9"
  %"zext.742" = zext i32 %".6146" to i64
  %"shl.316" = shl i64 %"zext.742", 32
  %"or.289" = or i64 %"shl.316", %"zext.741"
  %".6147" = inttoptr i64 %"or.289" to ptr
  %".6148" = ptrtoint ptr %".6147" to i64
  %".6149" = add i64 %".6148", 12
  %"for_LDG.268" = inttoptr i64 %".6149" to ptr
  %".6150" = load float, ptr %"for_LDG.268"
  %".6151" = bitcast ptr %"R37" to ptr
  store float %".6150", ptr %".6151"
  ; LDG.E.SYS R38, [R4+0xc]
  %".6154" = load i32, ptr %"R4"
  %"zext.743" = zext i32 %".6154" to i64
  %".6155" = load i32, ptr %"R5"
  %"zext.744" = zext i32 %".6155" to i64
  %"shl.317" = shl i64 %"zext.744", 32
  %"or.290" = or i64 %"shl.317", %"zext.743"
  %".6156" = inttoptr i64 %"or.290" to ptr
  %".6157" = ptrtoint ptr %".6156" to i64
  %".6158" = add i64 %".6157", 12
  %"for_LDG.269" = inttoptr i64 %".6158" to ptr
  %".6159" = load float, ptr %"for_LDG.269"
  %".6160" = bitcast ptr %"R38" to ptr
  store float %".6159", ptr %".6160"
  ; LDG.E.SYS R39, [R6+0xc]
  %".6163" = load i32, ptr %"R6"
  %"zext.745" = zext i32 %".6163" to i64
  %".6164" = load i32, ptr %"R7"
  %"zext.746" = zext i32 %".6164" to i64
  %"shl.318" = shl i64 %"zext.746", 32
  %"or.291" = or i64 %"shl.318", %"zext.745"
  %".6165" = inttoptr i64 %"or.291" to ptr
  %".6166" = ptrtoint ptr %".6165" to i64
  %".6167" = add i64 %".6166", 12
  %"for_LDG.270" = inttoptr i64 %".6167" to ptr
  %".6168" = load float, ptr %"for_LDG.270"
  %".6169" = bitcast ptr %"R39" to ptr
  store float %".6168", ptr %".6169"
  ; IADD3 R22, R22, -0x4, RZ
  %".6172" = load i32, ptr %"R22"
  %"add.269" = add i32 %".6172", -4
  %"add.270" = add i32 %"add.269", 0
  store i32 %"add.270", ptr %"R22"
  ; IADD3 R23, R23, 0x4, RZ
  %".6175" = load i32, ptr %"R23"
  %"add.271" = add i32 %".6175", 4
  %"add.272" = add i32 %"add.271", 0
  store i32 %"add.272", ptr %"R23"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".6178" = load i32, ptr %"R22"
  %".6179" = load i1, ptr %"PT"
  %"cmp.48" = icmp ne i32 %".6178", 0
  %".6180" = and i1 %"cmp.48", %".6179"
  store i1 %".6180", ptr %"P0"
  ; FFMA R11, R11, R13, R44
  %".6183" = load float, ptr %"R11"
  %".6184" = load float, ptr %"R13"
  %".6185" = load float, ptr %"R44"
  %"fmul.239" = fmul float %".6183", %".6184"
  %"fadd.220" = fadd float %"fmul.239", %".6185"
  %".6186" = bitcast ptr %"R11" to ptr
  store float %"fadd.220", ptr %".6186"
  ; FFMA R10, R13, R10, R56
  %".6189" = load float, ptr %"R13"
  %".6190" = load float, ptr %"R10"
  %".6191" = load float, ptr %"R56"
  %"fmul.240" = fmul float %".6189", %".6190"
  %"fadd.221" = fadd float %"fmul.240", %".6191"
  %".6192" = bitcast ptr %"R10" to ptr
  store float %"fadd.221", ptr %".6192"
  ; FFMA R11, R12, R25, R11
  %".6195" = load float, ptr %"R12"
  %".6196" = load float, ptr %"R25"
  %".6197" = load float, ptr %"R11"
  %"fmul.241" = fmul float %".6195", %".6196"
  %"fadd.222" = fadd float %"fmul.241", %".6197"
  %".6198" = bitcast ptr %"R11" to ptr
  store float %"fadd.222", ptr %".6198"
  ; FFMA R10, R25, R24, R10
  %".6201" = load float, ptr %"R25"
  %".6202" = load float, ptr %"R24"
  %".6203" = load float, ptr %"R10"
  %"fmul.242" = fmul float %".6201", %".6202"
  %"fadd.223" = fadd float %"fmul.242", %".6203"
  %".6204" = bitcast ptr %"R10" to ptr
  store float %"fadd.223", ptr %".6204"
  ; FFMA R11, R34, R35, R11
  %".6207" = load float, ptr %"R34"
  %".6208" = load float, ptr %"R35"
  %".6209" = load float, ptr %"R11"
  %"fmul.243" = fmul float %".6207", %".6208"
  %"fadd.224" = fadd float %"fmul.243", %".6209"
  %".6210" = bitcast ptr %"R11" to ptr
  store float %"fadd.224", ptr %".6210"
  ; FFMA R10, R35, R36, R10
  %".6213" = load float, ptr %"R35"
  %".6214" = load float, ptr %"R36"
  %".6215" = load float, ptr %"R10"
  %"fmul.244" = fmul float %".6213", %".6214"
  %"fadd.225" = fadd float %"fmul.244", %".6215"
  %".6216" = bitcast ptr %"R10" to ptr
  store float %"fadd.225", ptr %".6216"
  ; FFMA R44, R38, R37, R11
  %".6219" = load float, ptr %"R38"
  %".6220" = load float, ptr %"R37"
  %".6221" = load float, ptr %"R11"
  %"fmul.245" = fmul float %".6219", %".6220"
  %"fadd.226" = fadd float %"fmul.245", %".6221"
  %".6222" = bitcast ptr %"R44" to ptr
  store float %"fadd.226", ptr %".6222"
  ; FFMA R56, R37, R39, R10
  %".6225" = load float, ptr %"R37"
  %".6226" = load float, ptr %"R39"
  %".6227" = load float, ptr %"R10"
  %"fmul.246" = fmul float %".6225", %".6226"
  %"fadd.227" = fadd float %"fmul.246", %".6227"
  %".6228" = bitcast ptr %"R56" to ptr
  store float %"fadd.227", ptr %".6228"
  ; @P0 BRA `(.L_x_28)
  %".6231" = load i1, ptr %"P0"
  %".6232" = icmp ne i1 %".6231", 1
  br i1 %".6232", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".6235" = load i32, ptr %"R48"
  %".6236" = load i1, ptr %"PT"
  %"cmp.49" = icmp ne i32 %".6235", 0
  %".6237" = and i1 %"cmp.49", %".6236"
  store i1 %".6237", ptr %"P0"
  ; @!P0 BRA `(.L_x_26)
  %".6240" = load i1, ptr %"P0"
  %".6241" = icmp eq i1 %".6240", 1
  br i1 %".6241", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".6244" = load i32, ptr %"R0"
  %".6245" = load i32, ptr %"R23"
  %"add.273" = add i32 %".6244", %".6245"
  %"add.274" = add i32 %"add.273", 0
  store i32 %"add.274", ptr %"R5"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9"
  ; LEA R8, R2.reuse, R5, 0x2
  %".6250" = load i32, ptr %"R2"
  %".6251" = load i32, ptr %"R5"
  %"shl.319" = shl i32 %".6250", 2
  %"add.275" = add i32 %"shl.319", %".6251"
  store i32 %"add.275", ptr %"R8"
  ; IMAD R6, R2, 0x3, R5
  %".6254" = load i32, ptr %"R2"
  %".6255" = load i32, ptr %"R5"
  %"mul.86" = mul i32 %".6254", 3
  %"add.276" = add i32 %"mul.86", %".6255"
  store i32 %"add.276", ptr %"R6"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".6258" = load i32, ptr %"R23"
  %".6259" = load i32, ptr %"R9"
  %"zext.747" = zext i32 %".6258" to i64
  %"zext.748" = zext i32 %".6259" to i64
  %"mul.87" = mul i64 %"zext.747", %"zext.748"
  %".6260" = ptrtoint ptr %"Arg_1" to i64
  %"add.277" = add i64 %"mul.87", %".6260"
  %".6261" = and i64 %"add.277", 18446744069414584320
  %".6262" = lshr i64 %".6261", 32
  %"trunc32.162" = trunc i64 %".6262" to i32
  %"trunc32.163" = trunc i64 %"add.277" to i32
  store i32 %"trunc32.163", ptr %"R4"
  store i32 %"trunc32.162", ptr %"R5"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".6266" = load i32, ptr %"R6"
  %".6267" = load i32, ptr %"R9"
  %"zext.749" = zext i32 %".6266" to i64
  %"zext.750" = zext i32 %".6267" to i64
  %"mul.88" = mul i64 %"zext.749", %"zext.750"
  %".6268" = ptrtoint ptr %"Arg_2" to i64
  %"add.278" = add i64 %"mul.88", %".6268"
  %".6269" = and i64 %"add.278", 18446744069414584320
  %".6270" = lshr i64 %".6269", 32
  %"trunc32.164" = trunc i64 %".6270" to i32
  %"trunc32.165" = trunc i64 %"add.278" to i32
  store i32 %"trunc32.165", ptr %"R6"
  store i32 %"trunc32.164", ptr %"R7"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".6274" = load i32, ptr %"R8"
  %".6275" = load i32, ptr %"R9"
  %"zext.751" = zext i32 %".6274" to i64
  %"zext.752" = zext i32 %".6275" to i64
  %"mul.89" = mul i64 %"zext.751", %"zext.752"
  %".6276" = ptrtoint ptr %"Arg_2" to i64
  %"add.279" = add i64 %"mul.89", %".6276"
  %".6277" = and i64 %"add.279", 18446744069414584320
  %".6278" = lshr i64 %".6277", 32
  %"trunc32.166" = trunc i64 %".6278" to i32
  %"trunc32.167" = trunc i64 %"add.279" to i32
  store i32 %"trunc32.167", ptr %"R8"
  store i32 %"trunc32.166", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".6282" = load i32, ptr %"R4"
  %"zext.753" = zext i32 %".6282" to i64
  %".6283" = load i32, ptr %"R5"
  %"zext.754" = zext i32 %".6283" to i64
  %"shl.320" = shl i64 %"zext.754", 32
  %"or.292" = or i64 %"shl.320", %"zext.753"
  %".6284" = inttoptr i64 %"or.292" to ptr
  %".6285" = ptrtoint ptr %".6284" to i64
  %".6286" = add i64 %".6285", 0
  %"for_LDG.271" = inttoptr i64 %".6286" to ptr
  %".6287" = load float, ptr %"for_LDG.271"
  %".6288" = bitcast ptr %"R13" to ptr
  store float %".6287", ptr %".6288"
  ; LDG.E.SYS R11, [R6]
  %".6291" = load i32, ptr %"R6"
  %"zext.755" = zext i32 %".6291" to i64
  %".6292" = load i32, ptr %"R7"
  %"zext.756" = zext i32 %".6292" to i64
  %"shl.321" = shl i64 %"zext.756", 32
  %"or.293" = or i64 %"shl.321", %"zext.755"
  %".6293" = inttoptr i64 %"or.293" to ptr
  %".6294" = ptrtoint ptr %".6293" to i64
  %".6295" = add i64 %".6294", 0
  %"for_LDG.272" = inttoptr i64 %".6295" to ptr
  %".6296" = load float, ptr %"for_LDG.272"
  %".6297" = bitcast ptr %"R11" to ptr
  store float %".6296", ptr %".6297"
  ; LDG.E.SYS R10, [R8]
  %".6300" = load i32, ptr %"R8"
  %"zext.757" = zext i32 %".6300" to i64
  %".6301" = load i32, ptr %"R9"
  %"zext.758" = zext i32 %".6301" to i64
  %"shl.322" = shl i64 %"zext.758", 32
  %"or.294" = or i64 %"shl.322", %"zext.757"
  %".6302" = inttoptr i64 %"or.294" to ptr
  %".6303" = ptrtoint ptr %".6302" to i64
  %".6304" = add i64 %".6303", 0
  %"for_LDG.273" = inttoptr i64 %".6304" to ptr
  %".6305" = load float, ptr %"for_LDG.273"
  %".6306" = bitcast ptr %"R10" to ptr
  store float %".6305", ptr %".6306"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".6309" = load i32, ptr %"R48"
  %".6310" = load i1, ptr %"PT"
  %"cmp.50" = icmp ne i32 %".6309", 1
  %".6311" = and i1 %"cmp.50", %".6310"
  store i1 %".6311", ptr %"P0"
  ; FFMA R44, R11, R13, R44
  %".6314" = load float, ptr %"R11"
  %".6315" = load float, ptr %"R13"
  %".6316" = load float, ptr %"R44"
  %"fmul.247" = fmul float %".6314", %".6315"
  %"fadd.228" = fadd float %"fmul.247", %".6316"
  %".6317" = bitcast ptr %"R44" to ptr
  store float %"fadd.228", ptr %".6317"
  ; FFMA R56, R13, R10, R56
  %".6320" = load float, ptr %"R13"
  %".6321" = load float, ptr %"R10"
  %".6322" = load float, ptr %"R56"
  %"fmul.248" = fmul float %".6320", %".6321"
  %"fadd.229" = fadd float %"fmul.248", %".6322"
  %".6323" = bitcast ptr %"R56" to ptr
  store float %"fadd.229", ptr %".6323"
  ; @!P0 BRA `(.L_x_26)
  %".6326" = load i1, ptr %"P0"
  %".6327" = icmp eq i1 %".6326", 1
  br i1 %".6327", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".6330" = load i32, ptr %"R48"
  %".6331" = load i1, ptr %"PT"
  %"cmp.51" = icmp ne i32 %".6330", 2
  %".6332" = and i1 %"cmp.51", %".6331"
  store i1 %".6332", ptr %"P0"
  ; LDG.E.SYS R11, [R6+0x4]
  %".6335" = load i32, ptr %"R6"
  %"zext.759" = zext i32 %".6335" to i64
  %".6336" = load i32, ptr %"R7"
  %"zext.760" = zext i32 %".6336" to i64
  %"shl.323" = shl i64 %"zext.760", 32
  %"or.295" = or i64 %"shl.323", %"zext.759"
  %".6337" = inttoptr i64 %"or.295" to ptr
  %".6338" = ptrtoint ptr %".6337" to i64
  %".6339" = add i64 %".6338", 4
  %"for_LDG.274" = inttoptr i64 %".6339" to ptr
  %".6340" = load float, ptr %"for_LDG.274"
  %".6341" = bitcast ptr %"R11" to ptr
  store float %".6340", ptr %".6341"
  ; LDG.E.SYS R13, [R4+0x4]
  %".6344" = load i32, ptr %"R4"
  %"zext.761" = zext i32 %".6344" to i64
  %".6345" = load i32, ptr %"R5"
  %"zext.762" = zext i32 %".6345" to i64
  %"shl.324" = shl i64 %"zext.762", 32
  %"or.296" = or i64 %"shl.324", %"zext.761"
  %".6346" = inttoptr i64 %"or.296" to ptr
  %".6347" = ptrtoint ptr %".6346" to i64
  %".6348" = add i64 %".6347", 4
  %"for_LDG.275" = inttoptr i64 %".6348" to ptr
  %".6349" = load float, ptr %"for_LDG.275"
  %".6350" = bitcast ptr %"R13" to ptr
  store float %".6349", ptr %".6350"
  ; LDG.E.SYS R10, [R8+0x4]
  %".6353" = load i32, ptr %"R8"
  %"zext.763" = zext i32 %".6353" to i64
  %".6354" = load i32, ptr %"R9"
  %"zext.764" = zext i32 %".6354" to i64
  %"shl.325" = shl i64 %"zext.764", 32
  %"or.297" = or i64 %"shl.325", %"zext.763"
  %".6355" = inttoptr i64 %"or.297" to ptr
  %".6356" = ptrtoint ptr %".6355" to i64
  %".6357" = add i64 %".6356", 4
  %"for_LDG.276" = inttoptr i64 %".6357" to ptr
  %".6358" = load float, ptr %"for_LDG.276"
  %".6359" = bitcast ptr %"R10" to ptr
  store float %".6358", ptr %".6359"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".6362" = load i1, ptr %"P0"
  %".6363" = icmp ne i1 %".6362", 1
  br i1 %".6363", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  %".6366" = load i32, ptr %"R6"
  %"zext.765" = zext i32 %".6366" to i64
  %".6367" = load i32, ptr %"R7"
  %"zext.766" = zext i32 %".6367" to i64
  %"shl.326" = shl i64 %"zext.766", 32
  %"or.298" = or i64 %"shl.326", %"zext.765"
  %".6368" = inttoptr i64 %"or.298" to ptr
  %".6369" = ptrtoint ptr %".6368" to i64
  %".6370" = add i64 %".6369", 8
  %"for_LDG.277" = inttoptr i64 %".6370" to ptr
  %".6371" = load float, ptr %"for_LDG.277"
  %".6372" = bitcast ptr %"R23" to ptr
  store float %".6371", ptr %".6372"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".6377" = load i1, ptr %"P0"
  %".6378" = icmp ne i1 %".6377", 1
  br i1 %".6378", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  %".6381" = load i32, ptr %"R4"
  %"zext.767" = zext i32 %".6381" to i64
  %".6382" = load i32, ptr %"R5"
  %"zext.768" = zext i32 %".6382" to i64
  %"shl.327" = shl i64 %"zext.768", 32
  %"or.299" = or i64 %"shl.327", %"zext.767"
  %".6383" = inttoptr i64 %"or.299" to ptr
  %".6384" = ptrtoint ptr %".6383" to i64
  %".6385" = add i64 %".6384", 8
  %"for_LDG.278" = inttoptr i64 %".6385" to ptr
  %".6386" = load float, ptr %"for_LDG.278"
  %".6387" = bitcast ptr %"R25" to ptr
  store float %".6386", ptr %".6387"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".6392" = load i1, ptr %"P0"
  %".6393" = icmp ne i1 %".6392", 1
  br i1 %".6393", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  %".6396" = load i32, ptr %"R8"
  %"zext.769" = zext i32 %".6396" to i64
  %".6397" = load i32, ptr %"R9"
  %"zext.770" = zext i32 %".6397" to i64
  %"shl.328" = shl i64 %"zext.770", 32
  %"or.300" = or i64 %"shl.328", %"zext.769"
  %".6398" = inttoptr i64 %"or.300" to ptr
  %".6399" = ptrtoint ptr %".6398" to i64
  %".6400" = add i64 %".6399", 8
  %"for_LDG.279" = inttoptr i64 %".6400" to ptr
  %".6401" = load float, ptr %"for_LDG.279"
  %".6402" = bitcast ptr %"R12" to ptr
  store float %".6401", ptr %".6402"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".6407" = load float, ptr %"R11"
  %".6408" = load float, ptr %"R13"
  %".6409" = load float, ptr %"R44"
  %"fmul.249" = fmul float %".6407", %".6408"
  %"fadd.230" = fadd float %"fmul.249", %".6409"
  %".6410" = bitcast ptr %"R44" to ptr
  store float %"fadd.230", ptr %".6410"
  ; FFMA R56, R13, R10, R56
  %".6413" = load float, ptr %"R13"
  %".6414" = load float, ptr %"R10"
  %".6415" = load float, ptr %"R56"
  %"fmul.250" = fmul float %".6413", %".6414"
  %"fadd.231" = fadd float %"fmul.250", %".6415"
  %".6416" = bitcast ptr %"R56" to ptr
  store float %"fadd.231", ptr %".6416"
  ; @P0 FFMA R44, R23, R25, R44
  %".6419" = load i1, ptr %"P0"
  %".6420" = icmp ne i1 %".6419", 1
  br i1 %".6420", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".6423" = load float, ptr %"R23"
  %".6424" = load float, ptr %"R25"
  %".6425" = load float, ptr %"R44"
  %"fmul.251" = fmul float %".6423", %".6424"
  %"fadd.232" = fadd float %"fmul.251", %".6425"
  %".6426" = bitcast ptr %"R44" to ptr
  store float %"fadd.232", ptr %".6426"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".6431" = load i1, ptr %"P0"
  %".6432" = icmp ne i1 %".6431", 1
  br i1 %".6432", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".6435" = load float, ptr %"R25"
  %".6436" = load float, ptr %"R12"
  %".6437" = load float, ptr %"R56"
  %"fmul.252" = fmul float %".6435", %".6436"
  %"fadd.233" = fadd float %"fmul.252", %".6437"
  %".6438" = bitcast ptr %"R56" to ptr
  store float %"fadd.233", ptr %".6438"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  %".6443" = load i32, ptr %"R26"
  %"zext.771" = zext i32 %".6443" to i64
  %".6444" = load i32, ptr %"R27"
  %"zext.772" = zext i32 %".6444" to i64
  %"shl.329" = shl i64 %"zext.772", 32
  %"or.301" = or i64 %"shl.329", %"zext.771"
  %".6445" = inttoptr i64 %"or.301" to ptr
  %".6446" = ptrtoint ptr %".6445" to i64
  %".6447" = add i64 %".6446", 0
  %"for_LDG.280" = inttoptr i64 %".6447" to ptr
  %".6448" = load float, ptr %"for_LDG.280"
  %".6449" = bitcast ptr %"R5" to ptr
  store float %".6448", ptr %".6449"
  ; MOV R4, 0x3bbb989d
  %".6452" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".6452"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  %".6456" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".6456"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".6460" = load float, ptr %"R5"
  %".6461" = load float, ptr %"R44"
  %"fadd.234" = fadd float %".6460", %".6461"
  %".6462" = bitcast ptr %"R5" to ptr
  store float %"fadd.234", ptr %".6462"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".6465" = load float, ptr %"R5"
  %".6466" = fneg float %".6465"
  %".6467" = load float, ptr %"R4"
  %"fmul.253" = fmul float %".6466", %".6467"
  %"fadd.235" = fadd float %"fmul.253", 0x3fe0000000000000
  %".6468" = bitcast ptr %"R4" to ptr
  store float %"fadd.235", ptr %".6468"
  ; FFMA.RM R4, R4, R7, 12582913
  %".6471" = load float, ptr %"R4"
  %".6472" = load float, ptr %"R7"
  %"fmul.254" = fmul float %".6471", %".6472"
  %"fadd.236" = fadd float %"fmul.254", 0x4168000020000000
  %".6473" = bitcast ptr %"R4" to ptr
  store float %"fadd.236", ptr %".6473"
  ; FADD R6, R4.reuse, -12583039
  %".6476" = load float, ptr %"R4"
  %"fadd.237" = fadd float %".6476", 0xc168000fe0000000
  %".6477" = bitcast ptr %"R6" to ptr
  store float %"fadd.237", ptr %".6477"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".6480" = icmp ult i32 23, 32
  %"SHF_min.20" = select  i1 %".6480", i32 23, i32 32
  %".6481" = load i32, ptr %"R4"
  %"zext.773" = zext i32 0 to i64
  %"zext.774" = zext i32 %".6481" to i64
  %"zext.775" = zext i32 23 to i64
  %"shl.330" = shl i64 %"zext.773", 32
  %"or.302" = or i64 %"shl.330", %"zext.774"
  %"shl.331" = shl i64 %"or.302", %"zext.775"
  %"and.12" = and i64 %"shl.331", 4294967295
  %"trunc32.168" = trunc i64 %"and.12" to i32
  store i32 %"trunc32.168", ptr %"R4"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".6484" = load float, ptr %"R5"
  %".6485" = fneg float %".6484"
  %".6486" = load float, ptr %"R6"
  %".6487" = fneg float %".6486"
  %"fmul.255" = fmul float %".6485", 0x3ff7154760000000
  %"fadd.238" = fadd float %"fmul.255", %".6487"
  %".6488" = bitcast ptr %"R6" to ptr
  store float %"fadd.238", ptr %".6488"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".6491" = load float, ptr %"R5"
  %".6492" = fneg float %".6491"
  %".6493" = load float, ptr %"R6"
  %"fmul.256" = fmul float %".6492", 0x3e54ae0c00000000
  %"fadd.239" = fadd float %"fmul.256", %".6493"
  %".6494" = bitcast ptr %"R6" to ptr
  store float %"fadd.239", ptr %".6494"
  ; MUFU.EX2 R5, R6
  %".6497" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".6497")
  %".6498" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".6498"
  ; FFMA R24, R4, R5, 1
  %".6501" = load float, ptr %"R4"
  %".6502" = load float, ptr %"R5"
  %"fmul.257" = fmul float %".6501", %".6502"
  %"fadd.240" = fadd float %"fmul.257", 0x3ff0000000000000
  %".6503" = bitcast ptr %"R24" to ptr
  store float %"fadd.240", ptr %".6503"
  ; IADD3 R4, R24, 0x1800000, RZ
  %".6506" = load i32, ptr %"R24"
  %"add.280" = add i32 %".6506", 25165824
  %"add.281" = add i32 %"add.280", 0
  store i32 %"add.281", ptr %"R4"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".6509" = load i32, ptr %"R4"
  %".6510" = and i32 %".6509", 2139095040
  store i32 %".6510", ptr %"R4"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".6513" = load i32, ptr %"R4"
  %".6514" = load i1, ptr %"PT"
  %"cmp.52" = icmp sgt i32 %".6513", 33554431
  %".6515" = and i1 %"cmp.52", %".6514"
  store i1 %".6515", ptr %"P0"
  ; @P0 BRA `(.L_x_33)
  %".6518" = load i1, ptr %"P0"
  %".6519" = icmp ne i1 %".6518", 1
  br i1 %".6519", label %".L_x_33", label %".L_x_26_split_0x3910_CALL_0x3930"
.L_x_26_split_0x3910_CALL_0x3930:
  ; MOV R10, 0x3930
  store i32 14640, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".6526" = icmp ult i32 1, 32
  %"SHF_min.21" = select  i1 %".6526", i32 1, i32 32
  %".6527" = load i32, ptr %"R24"
  %"zext.776" = zext i32 0 to i64
  %"zext.777" = zext i32 %".6527" to i64
  %"zext.778" = zext i32 1 to i64
  %"shl.332" = shl i64 %"zext.776", 32
  %"or.303" = or i64 %"shl.332", %"zext.777"
  %"shl.333" = shl i64 %"or.303", %"zext.778"
  %"and.13" = and i64 %"shl.333", 4294967295
  %"trunc32.169" = trunc i64 %"and.13" to i32
  store i32 %"trunc32.169", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".6532" = icmp ult i32 24, 32
  %"SHF_min.22" = select  i1 %".6532", i32 24, i32 32
  %".6533" = load i32, ptr %"R11"
  %"zext.779" = zext i32 %".6533" to i64
  %"zext.780" = zext i32 0 to i64
  %"zext.781" = zext i32 24 to i64
  %"shl.334" = shl i64 %"zext.779", 32
  %"or.304" = or i64 %"shl.334", %"zext.780"
  %"lshr.13" = lshr i64 %"or.304", %"zext.781"
  %"lshr.14" = lshr i64 %"lshr.13", 32
  %"trunc32.170" = trunc i64 %"lshr.14" to i32
  store i32 %"trunc32.170", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".6536" = load i32, ptr %"R25"
  %".6537" = load i1, ptr %"PT"
  %"cmp.53" = icmp ne i32 %".6536", 0
  %".6538" = and i1 %"cmp.53", %".6537"
  store i1 %".6538", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".6541" = load i1, ptr %"P0"
  %".6542" = icmp ne i1 %".6541", 1
  br i1 %".6542", label %".L_x_49...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".6545" = icmp ult i32 1, 32
  %"SHF_min.23" = select  i1 %".6545", i32 1, i32 32
  %".6546" = load i32, ptr %"R24"
  %"zext.782" = zext i32 0 to i64
  %"zext.783" = zext i32 %".6546" to i64
  %"zext.784" = zext i32 1 to i64
  %"shl.335" = shl i64 %"zext.782", 32
  %"or.305" = or i64 %"shl.335", %"zext.783"
  %"shl.336" = shl i64 %"or.305", %"zext.784"
  %"and.14" = and i64 %"shl.336", 4294967295
  %"trunc32.171" = trunc i64 %"and.14" to i32
  store i32 %"trunc32.171", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".6549" = load i32, ptr %"R11"
  %".6550" = load i1, ptr %"PT"
  %"cmp.54" = icmp ne i32 %".6549", 0
  %".6551" = and i1 %"cmp.54", %".6550"
  store i1 %".6551", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6554" = load i1, ptr %"P0"
  %".6555" = icmp ne i1 %".6554", 1
  br i1 %".6555", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6558" = load float, ptr %"R24"
  %"fmul.258" = fmul float %".6558", 0x43f0000000000000
  %"fadd.241" = fadd float %"fmul.258",              0x0
  %".6559" = bitcast ptr %"R12" to ptr
  store float %"fadd.241", ptr %".6559"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6564" = load float, ptr %"R24"
  %"fmul.259" = fmul float %".6564", 0x43f0000000000000
  %"fadd.242" = fadd float %"fmul.259",              0x0
  %".6565" = bitcast ptr %"R12" to ptr
  store float %"fadd.242", ptr %".6565"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3:
  ; @!P0 MUFU.RCP R11, R24
  %".6570" = load i1, ptr %"P0"
  %".6571" = icmp eq i1 %".6570", 1
  br i1 %".6571", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".6574" = load float, ptr %"R24"
  %".6575" = fdiv float 0x3ff0000000000000, %".6574"
  %".6576" = bitcast ptr %"R11" to ptr
  store float %".6575", ptr %".6576"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3:
  ; MUFU.RCP R11, R24
  %".6581" = load float, ptr %"R24"
  %".6582" = fdiv float 0x3ff0000000000000, %".6581"
  %".6583" = bitcast ptr %"R11" to ptr
  store float %".6582", ptr %".6583"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3:
  ; @P0 MUFU.RCP R13, R12
  %".6588" = load i1, ptr %"P0"
  %".6589" = icmp ne i1 %".6588", 1
  br i1 %".6589", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".6592" = load float, ptr %"R12"
  %".6593" = fdiv float 0x3ff0000000000000, %".6592"
  %".6594" = bitcast ptr %"R13" to ptr
  store float %".6593", ptr %".6594"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3:
  ; MUFU.RCP R13, R12
  %".6599" = load float, ptr %"R12"
  %".6600" = fdiv float 0x3ff0000000000000, %".6599"
  %".6601" = bitcast ptr %"R13" to ptr
  store float %".6600", ptr %".6601"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3:
  ; @P0 FFMA R22, R12, R13, -1
  %".6606" = load i1, ptr %"P0"
  %".6607" = icmp ne i1 %".6606", 1
  br i1 %".6607", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".6610" = load float, ptr %"R12"
  %".6611" = load float, ptr %"R13"
  %"fmul.260" = fmul float %".6610", %".6611"
  %"fadd.243" = fadd float %"fmul.260", 0xbff0000000000000
  %".6612" = bitcast ptr %"R22" to ptr
  store float %"fadd.243", ptr %".6612"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3:
  ; FFMA R22, R12, R13, -1
  %".6617" = load float, ptr %"R12"
  %".6618" = load float, ptr %"R13"
  %"fmul.261" = fmul float %".6617", %".6618"
  %"fadd.244" = fadd float %"fmul.261", 0xbff0000000000000
  %".6619" = bitcast ptr %"R22" to ptr
  store float %"fadd.244", ptr %".6619"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".6624" = load i1, ptr %"P0"
  %".6625" = icmp ne i1 %".6624", 1
  br i1 %".6625", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".6628" = load float, ptr %"R22"
  %".6629" = fneg float %".6628"
  %"fadd.245" = fadd float %".6629",              0x0
  %".6630" = bitcast ptr %"R22" to ptr
  store float %"fadd.245", ptr %".6630"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3:
  ; FADD.FTZ R22, -R22, -RZ
  %".6635" = load float, ptr %"R22"
  %".6636" = fneg float %".6635"
  %"fadd.246" = fadd float %".6636",              0x0
  %".6637" = bitcast ptr %"R22" to ptr
  store float %"fadd.246", ptr %".6637"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3:
  ; @P0 FFMA R22, R13, R22, R13
  %".6642" = load i1, ptr %"P0"
  %".6643" = icmp ne i1 %".6642", 1
  br i1 %".6643", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".6646" = load float, ptr %"R13"
  %".6647" = load float, ptr %"R22"
  %".6648" = load float, ptr %"R13"
  %"fmul.262" = fmul float %".6646", %".6647"
  %"fadd.247" = fadd float %"fmul.262", %".6648"
  %".6649" = bitcast ptr %"R22" to ptr
  store float %"fadd.247", ptr %".6649"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3:
  ; FFMA R22, R13, R22, R13
  %".6654" = load float, ptr %"R13"
  %".6655" = load float, ptr %"R22"
  %".6656" = load float, ptr %"R13"
  %"fmul.263" = fmul float %".6654", %".6655"
  %"fadd.248" = fadd float %"fmul.263", %".6656"
  %".6657" = bitcast ptr %"R22" to ptr
  store float %"fadd.248", ptr %".6657"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6662" = load i1, ptr %"P0"
  %".6663" = icmp ne i1 %".6662", 1
  br i1 %".6663", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6666" = load float, ptr %"R22"
  %"fmul.264" = fmul float %".6666", 0x43f0000000000000
  %"fadd.249" = fadd float %"fmul.264",              0x0
  %".6667" = bitcast ptr %"R11" to ptr
  store float %"fadd.249", ptr %".6667"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6672" = load float, ptr %"R22"
  %"fmul.265" = fmul float %".6672", 0x43f0000000000000
  %"fadd.250" = fadd float %"fmul.265",              0x0
  %".6673" = bitcast ptr %"R11" to ptr
  store float %"fadd.250", ptr %".6673"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...3:
  ; BRA `(.L_x_50)
  br label %".L_x_50...3"
.L_x_49...3:
  ; IADD3 R34, R25, -0xfd, RZ
  %".6680" = load i32, ptr %"R25"
  %"add.282" = add i32 %".6680", -253
  %"add.283" = add i32 %"add.282", 0
  store i32 %"add.283", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".6683" = load i32, ptr %"R34"
  %".6684" = load i1, ptr %"PT"
  %"cmp.55" = icmp sgt i32 %".6683", 1
  %".6685" = and i1 %"cmp.55", %".6684"
  store i1 %".6685", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".6688" = load i1, ptr %"P0"
  %".6689" = icmp ne i1 %".6688", 1
  br i1 %".6689", label %".L_x_51...3", label %".L_x_49_split_0x4a30...3"
.L_x_49_split_0x4a30...3:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".6692" = load float, ptr %"R24"
  %".6693" = bitcast float %".6692" to i32
  %".6694" = and i32 %".6693", 8388607
  store i32 %".6694", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".6699" = load i32, ptr %"R11"
  %".6700" = or i32 %".6699", 1065353216
  store i32 %".6700", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".6703" = load i32, ptr %"R34"
  %".6704" = icmp ult i32 %".6703", 32
  %"SHF_min.24" = select  i1 %".6704", i32 %".6703", i32 32
  %".6705" = load i32, ptr %"R23"
  %".6706" = load i32, ptr %"R34"
  %"zext.785" = zext i32 0 to i64
  %"zext.786" = zext i32 %".6705" to i64
  %"zext.787" = zext i32 %".6706" to i64
  %"shl.337" = shl i64 %"zext.785", 32
  %"or.306" = or i64 %"shl.337", %"zext.786"
  %"shl.338" = shl i64 %"or.306", %"zext.787"
  %"and.15" = and i64 %"shl.338", 4294967295
  %"trunc32.172" = trunc i64 %"and.15" to i32
  store i32 %"trunc32.172", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".6709" = load float, ptr %"R11"
  %".6710" = fdiv float 0x3ff0000000000000, %".6709"
  %".6711" = bitcast ptr %"R12" to ptr
  store float %".6710", ptr %".6711"
  ; FFMA R13, R11, R12, -1
  %".6714" = load float, ptr %"R11"
  %".6715" = load float, ptr %"R12"
  %"fmul.266" = fmul float %".6714", %".6715"
  %"fadd.251" = fadd float %"fmul.266", 0xbff0000000000000
  %".6716" = bitcast ptr %"R13" to ptr
  store float %"fadd.251", ptr %".6716"
  ; FADD.FTZ R13, -R13, -RZ
  %".6719" = load float, ptr %"R13"
  %".6720" = fneg float %".6719"
  %"fadd.252" = fadd float %".6720",              0x0
  %".6721" = bitcast ptr %"R13" to ptr
  store float %"fadd.252", ptr %".6721"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".6724" = load float, ptr %"R12"
  %".6725" = load float, ptr %"R13"
  %".6726" = load float, ptr %"R12"
  %"fmul.267" = fmul float %".6724", %".6725"
  %"fadd.253" = fadd float %"fmul.267", %".6726"
  %".6727" = bitcast ptr %"R22" to ptr
  store float %"fadd.253", ptr %".6727"
  ; FFMA.RP R13, R12, R13, R12
  %".6730" = load float, ptr %"R12"
  %".6731" = load float, ptr %"R13"
  %".6732" = load float, ptr %"R12"
  %"fmul.268" = fmul float %".6730", %".6731"
  %"fadd.254" = fadd float %"fmul.268", %".6732"
  %".6733" = bitcast ptr %"R13" to ptr
  store float %"fadd.254", ptr %".6733"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".6736" = load float, ptr %"R22"
  %".6737" = bitcast float %".6736" to i32
  %".6738" = and i32 %".6737", 8388607
  store i32 %".6738", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".6741" = load float, ptr %"R22"
  %".6742" = load float, ptr %"R13"
  %".6743" = load i1, ptr %"PT"
  %"fcmp_ordered.2" = fcmp une float %".6741", %".6742"
  %".6744" = and i1 %"fcmp_ordered.2", %".6743"
  store i1 %".6744", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".6747" = load i32, ptr %"R12"
  %".6748" = or i32 %".6747", 8388608
  store i32 %".6748", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".6751" = load i1, ptr %"P0"
  %".6752" = icmp eq i1 %".6751", 1
  %"sel.4" = select  i1 %".6752", i32 0, i32 4294967295
  store i32 %"sel.4", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".6755" = load i32, ptr %"R23"
  %".6756" = load i32, ptr %"R12"
  %".6757" = and i32 %".6755", %".6756"
  store i32 %".6757", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".6760" = load i32, ptr %"R13"
  %".6761" = sub i32 0, %".6760"
  %"add.284" = add i32 %".6761", 0
  %"add.285" = add i32 %"add.284", 0
  store i32 %"add.285", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".6764" = load i32, ptr %"R34"
  %".6765" = icmp ult i32 %".6764", 32
  %"SHF_min.25" = select  i1 %".6765", i32 %".6764", i32 32
  %".6766" = load i32, ptr %"R23"
  %".6767" = load i32, ptr %"R34"
  %"zext.788" = zext i32 %".6766" to i64
  %"zext.789" = zext i32 0 to i64
  %"zext.790" = zext i32 %".6767" to i64
  %"shl.339" = shl i64 %"zext.788", 32
  %"or.307" = or i64 %"shl.339", %"zext.789"
  %"lshr.15" = lshr i64 %"or.307", %"zext.790"
  %"lshr.16" = lshr i64 %"lshr.15", 32
  %"trunc32.173" = trunc i64 %"lshr.16" to i32
  store i32 %"trunc32.173", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".6770" = load i32, ptr %"R13"
  %".6771" = load i32, ptr %"R34"
  %".6772" = load i32, ptr %"R12"
  %"LOP3_result.8" = call i32 @"custom_lop3"(i32 %".6772", i32 0, i32 %".6770", i32 %".6771")
  %".6773" = trunc i32 %"LOP3_result.8" to i1
  store i1 %".6773", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".6776" = load i32, ptr %"R23"
  %"LOP3_result.9" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".6776", i32 1)
  %".6777" = trunc i32 %"LOP3_result.9" to i1
  store i1 %".6777", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".6780" = load i32, ptr %"R23"
  %"LOP3_result.10" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".6780", i32 2)
  %".6781" = trunc i32 %"LOP3_result.10" to i1
  store i1 %".6781", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".6784" = load i1, ptr %"P0"
  %".6785" = sub i1 0, %".6784"
  %".6786" = load i1, ptr %"P1"
  %".6787" = sub i1 0, %".6786"
  %".6788" = or i1 %".6785", %".6787"
  %".6789" = and i1 %".6788", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".6791" = load float, ptr %"R24"
  %".6792" = bitcast float %".6791" to i32
  %"LOP3_result.11" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".6792", i32 8388607)
  %".6793" = trunc i32 %"LOP3_result.11" to i1
  store i1 %".6793", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".6796" = load i1, ptr %"P0"
  %".6797" = icmp eq i1 %".6796", 1
  %"sel.5" = select  i1 %".6797", i32 0, i32 1
  store i32 %"sel.5", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".6800" = load i32, ptr %"R11"
  %".6801" = sub i32 0, %".6800"
  %"add.286" = add i32 %".6801", 0
  %"add.287" = add i32 %"add.286", 0
  store i32 %"add.287", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".6804" = load i32, ptr %"R11"
  %".6805" = load i1, ptr %"PT"
  %"cmp.56" = icmp sge i32 %".6804", 0
  %".6806" = and i1 %"cmp.56", %".6805"
  store i1 %".6806", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".6809" = load i32, ptr %"R25"
  %"add.288" = add i32 %".6809", -252
  %"add.289" = add i32 %"add.288", 0
  store i32 %"add.289", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".6812" = load i32, ptr %"R11"
  %".6813" = icmp ult i32 %".6812", 32
  %"SHF_min.26" = select  i1 %".6813", i32 %".6812", i32 32
  %".6814" = load i32, ptr %"R12"
  %".6815" = load i32, ptr %"R11"
  %"zext.791" = zext i32 %".6814" to i64
  %"zext.792" = zext i32 0 to i64
  %"zext.793" = zext i32 %".6815" to i64
  %"shl.340" = shl i64 %"zext.791", 32
  %"or.308" = or i64 %"shl.340", %"zext.792"
  %"lshr.17" = lshr i64 %"or.308", %"zext.793"
  %"lshr.18" = lshr i64 %"lshr.17", 32
  %"trunc32.174" = trunc i64 %"lshr.18" to i32
  store i32 %"trunc32.174", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".6818" = load i1, ptr %"P0"
  %".6819" = icmp eq i1 %".6818", 1
  br i1 %".6819", label %".L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3"
.L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".6822" = load i32, ptr %"R11"
  %"add.290" = add i32 %".6822", 1
  %"add.291" = add i32 %"add.290", 0
  store i32 %"add.291", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3:
  ; IADD3 R11, R11, 0x1, RZ
  %".6827" = load i32, ptr %"R11"
  %"add.292" = add i32 %".6827", 1
  %"add.293" = add i32 %"add.292", 0
  store i32 %"add.293", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...3"
.L_x_49_split_0x4be0...3:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".6832" = load i1, ptr %"P1"
  %".6833" = icmp eq i1 %".6832", 1
  br i1 %".6833", label %".L_x_49_split_0x4be0...3_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...3"
.L_x_49_split_0x4be0...3_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".6836" = icmp ult i32 1, 32
  %"SHF_min.27" = select  i1 %".6836", i32 1, i32 32
  %".6837" = load i32, ptr %"R11"
  %"zext.794" = zext i32 0 to i64
  %"zext.795" = zext i32 %".6837" to i64
  %"zext.796" = zext i32 1 to i64
  %"shl.341" = shl i64 %"zext.794", 32
  %"or.309" = or i64 %"shl.341", %"zext.795"
  %"shl.342" = shl i64 %"or.309", %"zext.796"
  %"and.16" = and i64 %"shl.342", 4294967295
  %"trunc32.175" = trunc i64 %"and.16" to i32
  store i32 %"trunc32.175", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...3)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...3"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...3:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".6842" = icmp ult i32 1, 32
  %"SHF_min.28" = select  i1 %".6842", i32 1, i32 32
  %".6843" = load i32, ptr %"R11"
  %"zext.797" = zext i32 0 to i64
  %"zext.798" = zext i32 %".6843" to i64
  %"zext.799" = zext i32 1 to i64
  %"shl.343" = shl i64 %"zext.797", 32
  %"or.310" = or i64 %"shl.343", %"zext.798"
  %"shl.344" = shl i64 %"or.310", %"zext.799"
  %"and.17" = and i64 %"shl.344", 4294967295
  %"trunc32.176" = trunc i64 %"and.17" to i32
  store i32 %"trunc32.176", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...3"
.L_x_49_split_0x4bf0...3:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".6848" = load i32, ptr %"R11"
  %".6849" = load float, ptr %"R24"
  %".6850" = bitcast float %".6849" to i32
  %".6851" = or i32 %".6848", 2147483648
  %".6852" = or i32 %".6848", %".6850"
  %".6853" = and i32 %".6851", %".6852"
  store i32 %".6853", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...3"
.L_x_51...3:
  ; MUFU.RCP R11, R24
  %".6858" = load float, ptr %"R24"
  %".6859" = fdiv float 0x3ff0000000000000, %".6858"
  %".6860" = bitcast ptr %"R11" to ptr
  store float %".6859", ptr %".6860"
  br label %".L_x_50...3"
.L_x_50...3:
  ; BSYNC B1
  br label %".L_x_48...3"
.L_x_48...3:
  ; MOV R22, R11
  %".6866" = load float, ptr %"R11"
  %".6867" = bitcast ptr %"R22" to ptr
  store float %".6866", ptr %".6867"
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
  %".6879" = load float, ptr %"R24"
  %".6880" = fdiv float 0x3ff0000000000000, %".6879"
  %".6881" = bitcast ptr %"R22" to ptr
  store float %".6880", ptr %".6881"
  ; FFMA R4, R24, R22, -1
  %".6884" = load float, ptr %"R24"
  %".6885" = load float, ptr %"R22"
  %"fmul.269" = fmul float %".6884", %".6885"
  %"fadd.255" = fadd float %"fmul.269", 0xbff0000000000000
  %".6886" = bitcast ptr %"R4" to ptr
  store float %"fadd.255", ptr %".6886"
  ; FADD.FTZ R5, -R4, -RZ
  %".6889" = load float, ptr %"R4"
  %".6890" = fneg float %".6889"
  %"fadd.256" = fadd float %".6890",              0x0
  %".6891" = bitcast ptr %"R5" to ptr
  store float %"fadd.256", ptr %".6891"
  ; FFMA R22, R22, R5, R22
  %".6894" = load float, ptr %"R22"
  %".6895" = load float, ptr %"R5"
  %".6896" = load float, ptr %"R22"
  %"fmul.270" = fmul float %".6894", %".6895"
  %"fadd.257" = fadd float %"fmul.270", %".6896"
  %".6897" = bitcast ptr %"R22" to ptr
  store float %"fadd.257", ptr %".6897"
  br label %".L_x_34"
.L_x_34:
  ; BSYNC B0
  br label %".L_x_32"
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  %".6903" = load i32, ptr %"R32"
  %"zext.800" = zext i32 %".6903" to i64
  %".6904" = load i32, ptr %"R33"
  %"zext.801" = zext i32 %".6904" to i64
  %"shl.345" = shl i64 %"zext.801", 32
  %"or.311" = or i64 %"shl.345", %"zext.800"
  %".6905" = inttoptr i64 %"or.311" to ptr
  %".6906" = ptrtoint ptr %".6905" to i64
  %".6907" = add i64 %".6906", 0
  %"for_LDG.281" = inttoptr i64 %".6907" to ptr
  %".6908" = load float, ptr %"for_LDG.281"
  %".6909" = bitcast ptr %"R5" to ptr
  store float %".6908", ptr %".6909"
  ; MOV R4, 0x3bbb989d
  %".6912" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".6912"
  ; MOV R7, 0x437c0000
  %".6915" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".6915"
  ; FADD R5, R5, R56
  %".6918" = load float, ptr %"R5"
  %".6919" = load float, ptr %"R56"
  %"fadd.258" = fadd float %".6918", %".6919"
  %".6920" = bitcast ptr %"R5" to ptr
  store float %"fadd.258", ptr %".6920"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".6923" = load float, ptr %"R5"
  %".6924" = fneg float %".6923"
  %".6925" = load float, ptr %"R4"
  %"fmul.271" = fmul float %".6924", %".6925"
  %"fadd.259" = fadd float %"fmul.271", 0x3fe0000000000000
  %".6926" = bitcast ptr %"R4" to ptr
  store float %"fadd.259", ptr %".6926"
  ; FFMA.RM R4, R4, R7, 12582913
  %".6929" = load float, ptr %"R4"
  %".6930" = load float, ptr %"R7"
  %"fmul.272" = fmul float %".6929", %".6930"
  %"fadd.260" = fadd float %"fmul.272", 0x4168000020000000
  %".6931" = bitcast ptr %"R4" to ptr
  store float %"fadd.260", ptr %".6931"
  ; FADD R6, R4.reuse, -12583039
  %".6934" = load float, ptr %"R4"
  %"fadd.261" = fadd float %".6934", 0xc168000fe0000000
  %".6935" = bitcast ptr %"R6" to ptr
  store float %"fadd.261", ptr %".6935"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".6938" = icmp ult i32 23, 32
  %"SHF_min.29" = select  i1 %".6938", i32 23, i32 32
  %".6939" = load i32, ptr %"R4"
  %"zext.802" = zext i32 0 to i64
  %"zext.803" = zext i32 %".6939" to i64
  %"zext.804" = zext i32 23 to i64
  %"shl.346" = shl i64 %"zext.802", 32
  %"or.312" = or i64 %"shl.346", %"zext.803"
  %"shl.347" = shl i64 %"or.312", %"zext.804"
  %"and.18" = and i64 %"shl.347", 4294967295
  %"trunc32.177" = trunc i64 %"and.18" to i32
  store i32 %"trunc32.177", ptr %"R23"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".6942" = load float, ptr %"R5"
  %".6943" = fneg float %".6942"
  %".6944" = load float, ptr %"R6"
  %".6945" = fneg float %".6944"
  %"fmul.273" = fmul float %".6943", 0x3ff7154760000000
  %"fadd.262" = fadd float %"fmul.273", %".6945"
  %".6946" = bitcast ptr %"R6" to ptr
  store float %"fadd.262", ptr %".6946"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".6949" = load float, ptr %"R5"
  %".6950" = fneg float %".6949"
  %".6951" = load float, ptr %"R6"
  %"fmul.274" = fmul float %".6950", 0x3e54ae0c00000000
  %"fadd.263" = fadd float %"fmul.274", %".6951"
  %".6952" = bitcast ptr %"R6" to ptr
  store float %"fadd.263", ptr %".6952"
  ; MUFU.EX2 R6, R6
  %".6955" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".6955")
  %".6956" = bitcast ptr %"R6" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".6956"
  ; FFMA R23, R23, R6, 1
  %".6959" = load float, ptr %"R23"
  %".6960" = load float, ptr %"R6"
  %"fmul.275" = fmul float %".6959", %".6960"
  %"fadd.264" = fadd float %"fmul.275", 0x3ff0000000000000
  %".6961" = bitcast ptr %"R23" to ptr
  store float %"fadd.264", ptr %".6961"
  ; @!P4 BRA `(.L_x_35)
  %".6964" = load i1, ptr %"P4"
  %".6965" = icmp eq i1 %".6964", 1
  br i1 %".6965", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".6968" = load i32, ptr %"R18"
  %".6969" = load i1, ptr %"PT"
  %"cmp.57" = icmp sge i32 %".6968", 3
  %".6970" = and i1 %"cmp.57", %".6969"
  store i1 %".6970", ptr %"P0"
  ; MOV R34, RZ
  %".6973" = load i32, ptr %"RZ"
  store i32 %".6973", ptr %"R34"
  ; @!P0 BRA `(.L_x_36)
  %".6976" = load i1, ptr %"P0"
  %".6977" = icmp eq i1 %".6976", 1
  br i1 %".6977", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".6980" = load i32, ptr %"R20"
  %".6981" = load i1, ptr %"PT"
  %"cmp.58" = icmp sgt i32 %".6980", 0
  %".6982" = and i1 %"cmp.58", %".6981"
  store i1 %".6982", ptr %"P0"
  ; MOV R34, RZ
  %".6985" = load i32, ptr %"RZ"
  store i32 %".6985", ptr %"R34"
  ; MOV R35, R20
  %".6988" = load i32, ptr %"R20"
  store i32 %".6988", ptr %"R35"
  ; @!P0 BRA `(.L_x_37)
  %".6991" = load i1, ptr %"P0"
  %".6992" = icmp eq i1 %".6991", 1
  br i1 %".6992", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".6995" = load i32, ptr %"R35"
  %".6996" = load i1, ptr %"PT"
  %"cmp.59" = icmp sgt i32 %".6995", 12
  %".6997" = and i1 %"cmp.59", %".6996"
  store i1 %".6997", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".7000" = and i1 1, 1
  %".7001" = or i1 %".7000", 1
  ; @!P1 BRA `(.L_x_38)
  %".7003" = load i1, ptr %"P1"
  %".7004" = icmp eq i1 %".7003", 1
  br i1 %".7004", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".7007" = xor i1 1, 1
  %".7008" = and i1 %".7007", 1
  %".7009" = and i1 %".7008", 1
  br label %".L_x_39"
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41"
  ; IADD3 R10, R3, R34, RZ
  %".7014" = load i32, ptr %"R3"
  %".7015" = load i32, ptr %"R34"
  %"add.294" = add i32 %".7014", %".7015"
  %"add.295" = add i32 %"add.294", 0
  store i32 %"add.295", ptr %"R10"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".7018" = load i32, ptr %"R34"
  %".7019" = load i32, ptr %"R41"
  %"zext.805" = zext i32 %".7018" to i64
  %"zext.806" = zext i32 %".7019" to i64
  %"mul.90" = mul i64 %"zext.805", %"zext.806"
  %".7020" = ptrtoint ptr %"Arg_1" to i64
  %"add.296" = add i64 %"mul.90", %".7020"
  %".7021" = and i64 %"add.296", 18446744069414584320
  %".7022" = lshr i64 %".7021", 32
  %"trunc32.178" = trunc i64 %".7022" to i32
  %"trunc32.179" = trunc i64 %"add.296" to i32
  store i32 %"trunc32.179", ptr %"R12"
  store i32 %"trunc32.178", ptr %"R13"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".7026" = load i32, ptr %"R10"
  %".7027" = load i32, ptr %"R41"
  %"zext.807" = zext i32 %".7026" to i64
  %"zext.808" = zext i32 %".7027" to i64
  %"mul.91" = mul i64 %"zext.807", %"zext.808"
  %".7028" = ptrtoint ptr %"Arg_2" to i64
  %"add.297" = add i64 %"mul.91", %".7028"
  %".7029" = and i64 %"add.297", 18446744069414584320
  %".7030" = lshr i64 %".7029", 32
  %"trunc32.180" = trunc i64 %".7030" to i32
  %"trunc32.181" = trunc i64 %"add.297" to i32
  store i32 %"trunc32.181", ptr %"R10"
  store i32 %"trunc32.180", ptr %"R11"
  ; IADD3 R4, R34, 0x4, RZ
  %".7034" = load i32, ptr %"R34"
  %"add.298" = add i32 %".7034", 4
  %"add.299" = add i32 %"add.298", 0
  store i32 %"add.299", ptr %"R4"
  ; LDG.E.SYS R25, [R12]
  %".7037" = load i32, ptr %"R12"
  %"zext.809" = zext i32 %".7037" to i64
  %".7038" = load i32, ptr %"R13"
  %"zext.810" = zext i32 %".7038" to i64
  %"shl.348" = shl i64 %"zext.810", 32
  %"or.313" = or i64 %"shl.348", %"zext.809"
  %".7039" = inttoptr i64 %"or.313" to ptr
  %".7040" = ptrtoint ptr %".7039" to i64
  %".7041" = add i64 %".7040", 0
  %"for_LDG.282" = inttoptr i64 %".7041" to ptr
  %".7042" = load float, ptr %"for_LDG.282"
  %".7043" = bitcast ptr %"R25" to ptr
  store float %".7042", ptr %".7043"
  ; IADD3 R6, R3, R4, RZ
  %".7046" = load i32, ptr %"R3"
  %".7047" = load i32, ptr %"R4"
  %"add.300" = add i32 %".7046", %".7047"
  %"add.301" = add i32 %"add.300", 0
  store i32 %"add.301", ptr %"R6"
  ; LDG.E.SYS R36, [R10]
  %".7050" = load i32, ptr %"R10"
  %"zext.811" = zext i32 %".7050" to i64
  %".7051" = load i32, ptr %"R11"
  %"zext.812" = zext i32 %".7051" to i64
  %"shl.349" = shl i64 %"zext.812", 32
  %"or.314" = or i64 %"shl.349", %"zext.811"
  %".7052" = inttoptr i64 %"or.314" to ptr
  %".7053" = ptrtoint ptr %".7052" to i64
  %".7054" = add i64 %".7053", 0
  %"for_LDG.283" = inttoptr i64 %".7054" to ptr
  %".7055" = load float, ptr %"for_LDG.283"
  %".7056" = bitcast ptr %"R36" to ptr
  store float %".7055", ptr %".7056"
  ; LDG.E.SYS R37, [R12+0x4]
  %".7059" = load i32, ptr %"R12"
  %"zext.813" = zext i32 %".7059" to i64
  %".7060" = load i32, ptr %"R13"
  %"zext.814" = zext i32 %".7060" to i64
  %"shl.350" = shl i64 %"zext.814", 32
  %"or.315" = or i64 %"shl.350", %"zext.813"
  %".7061" = inttoptr i64 %"or.315" to ptr
  %".7062" = ptrtoint ptr %".7061" to i64
  %".7063" = add i64 %".7062", 4
  %"for_LDG.284" = inttoptr i64 %".7063" to ptr
  %".7064" = load float, ptr %"for_LDG.284"
  %".7065" = bitcast ptr %"R37" to ptr
  store float %".7064", ptr %".7065"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".7068" = load i32, ptr %"R4"
  %".7069" = load i32, ptr %"R41"
  %"zext.815" = zext i32 %".7068" to i64
  %"zext.816" = zext i32 %".7069" to i64
  %"mul.92" = mul i64 %"zext.815", %"zext.816"
  %".7070" = ptrtoint ptr %"Arg_1" to i64
  %"add.302" = add i64 %"mul.92", %".7070"
  %".7071" = and i64 %"add.302", 18446744069414584320
  %".7072" = lshr i64 %".7071", 32
  %"trunc32.182" = trunc i64 %".7072" to i32
  %"trunc32.183" = trunc i64 %"add.302" to i32
  store i32 %"trunc32.183", ptr %"R4"
  store i32 %"trunc32.182", ptr %"R5"
  ; LDG.E.SYS R24, [R10+0x4]
  %".7076" = load i32, ptr %"R10"
  %"zext.817" = zext i32 %".7076" to i64
  %".7077" = load i32, ptr %"R11"
  %"zext.818" = zext i32 %".7077" to i64
  %"shl.351" = shl i64 %"zext.818", 32
  %"or.316" = or i64 %"shl.351", %"zext.817"
  %".7078" = inttoptr i64 %"or.316" to ptr
  %".7079" = ptrtoint ptr %".7078" to i64
  %".7080" = add i64 %".7079", 4
  %"for_LDG.285" = inttoptr i64 %".7080" to ptr
  %".7081" = load float, ptr %"for_LDG.285"
  %".7082" = bitcast ptr %"R24" to ptr
  store float %".7081", ptr %".7082"
  ; LDG.E.SYS R39, [R12+0x8]
  %".7085" = load i32, ptr %"R12"
  %"zext.819" = zext i32 %".7085" to i64
  %".7086" = load i32, ptr %"R13"
  %"zext.820" = zext i32 %".7086" to i64
  %"shl.352" = shl i64 %"zext.820", 32
  %"or.317" = or i64 %"shl.352", %"zext.819"
  %".7087" = inttoptr i64 %"or.317" to ptr
  %".7088" = ptrtoint ptr %".7087" to i64
  %".7089" = add i64 %".7088", 8
  %"for_LDG.286" = inttoptr i64 %".7089" to ptr
  %".7090" = load float, ptr %"for_LDG.286"
  %".7091" = bitcast ptr %"R39" to ptr
  store float %".7090", ptr %".7091"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".7094" = load i32, ptr %"R6"
  %".7095" = load i32, ptr %"R41"
  %"zext.821" = zext i32 %".7094" to i64
  %"zext.822" = zext i32 %".7095" to i64
  %"mul.93" = mul i64 %"zext.821", %"zext.822"
  %".7096" = ptrtoint ptr %"Arg_2" to i64
  %"add.303" = add i64 %"mul.93", %".7096"
  %".7097" = and i64 %"add.303", 18446744069414584320
  %".7098" = lshr i64 %".7097", 32
  %"trunc32.184" = trunc i64 %".7098" to i32
  %"trunc32.185" = trunc i64 %"add.303" to i32
  store i32 %"trunc32.185", ptr %"R6"
  store i32 %"trunc32.184", ptr %"R7"
  ; LDG.E.SYS R38, [R10+0x8]
  %".7102" = load i32, ptr %"R10"
  %"zext.823" = zext i32 %".7102" to i64
  %".7103" = load i32, ptr %"R11"
  %"zext.824" = zext i32 %".7103" to i64
  %"shl.353" = shl i64 %"zext.824", 32
  %"or.318" = or i64 %"shl.353", %"zext.823"
  %".7104" = inttoptr i64 %"or.318" to ptr
  %".7105" = ptrtoint ptr %".7104" to i64
  %".7106" = add i64 %".7105", 8
  %"for_LDG.287" = inttoptr i64 %".7106" to ptr
  %".7107" = load float, ptr %"for_LDG.287"
  %".7108" = bitcast ptr %"R38" to ptr
  store float %".7107", ptr %".7108"
  ; LDG.E.SYS R43, [R12+0xc]
  %".7111" = load i32, ptr %"R12"
  %"zext.825" = zext i32 %".7111" to i64
  %".7112" = load i32, ptr %"R13"
  %"zext.826" = zext i32 %".7112" to i64
  %"shl.354" = shl i64 %"zext.826", 32
  %"or.319" = or i64 %"shl.354", %"zext.825"
  %".7113" = inttoptr i64 %"or.319" to ptr
  %".7114" = ptrtoint ptr %".7113" to i64
  %".7115" = add i64 %".7114", 12
  %"for_LDG.288" = inttoptr i64 %".7115" to ptr
  %".7116" = load float, ptr %"for_LDG.288"
  %".7117" = bitcast ptr %"R43" to ptr
  store float %".7116", ptr %".7117"
  ; IADD3 R8, R34, 0x8, RZ
  %".7120" = load i32, ptr %"R34"
  %"add.304" = add i32 %".7120", 8
  %"add.305" = add i32 %"add.304", 0
  store i32 %"add.305", ptr %"R8"
  ; LDG.E.SYS R46, [R10+0xc]
  %".7123" = load i32, ptr %"R10"
  %"zext.827" = zext i32 %".7123" to i64
  %".7124" = load i32, ptr %"R11"
  %"zext.828" = zext i32 %".7124" to i64
  %"shl.355" = shl i64 %"zext.828", 32
  %"or.320" = or i64 %"shl.355", %"zext.827"
  %".7125" = inttoptr i64 %"or.320" to ptr
  %".7126" = ptrtoint ptr %".7125" to i64
  %".7127" = add i64 %".7126", 12
  %"for_LDG.289" = inttoptr i64 %".7127" to ptr
  %".7128" = load float, ptr %"for_LDG.289"
  %".7129" = bitcast ptr %"R46" to ptr
  store float %".7128", ptr %".7129"
  ; LDG.E.SYS R51, [R4]
  %".7132" = load i32, ptr %"R4"
  %"zext.829" = zext i32 %".7132" to i64
  %".7133" = load i32, ptr %"R5"
  %"zext.830" = zext i32 %".7133" to i64
  %"shl.356" = shl i64 %"zext.830", 32
  %"or.321" = or i64 %"shl.356", %"zext.829"
  %".7134" = inttoptr i64 %"or.321" to ptr
  %".7135" = ptrtoint ptr %".7134" to i64
  %".7136" = add i64 %".7135", 0
  %"for_LDG.290" = inttoptr i64 %".7136" to ptr
  %".7137" = load float, ptr %"for_LDG.290"
  %".7138" = bitcast ptr %"R51" to ptr
  store float %".7137", ptr %".7138"
  ; IADD3 R50, R3, R8, RZ
  %".7141" = load i32, ptr %"R3"
  %".7142" = load i32, ptr %"R8"
  %"add.306" = add i32 %".7141", %".7142"
  %"add.307" = add i32 %"add.306", 0
  store i32 %"add.307", ptr %"R50"
  ; LDG.E.SYS R44, [R6]
  %".7145" = load i32, ptr %"R6"
  %"zext.831" = zext i32 %".7145" to i64
  %".7146" = load i32, ptr %"R7"
  %"zext.832" = zext i32 %".7146" to i64
  %"shl.357" = shl i64 %"zext.832", 32
  %"or.322" = or i64 %"shl.357", %"zext.831"
  %".7147" = inttoptr i64 %"or.322" to ptr
  %".7148" = ptrtoint ptr %".7147" to i64
  %".7149" = add i64 %".7148", 0
  %"for_LDG.291" = inttoptr i64 %".7149" to ptr
  %".7150" = load float, ptr %"for_LDG.291"
  %".7151" = bitcast ptr %"R44" to ptr
  store float %".7150", ptr %".7151"
  ; LDG.E.SYS R47, [R4+0x4]
  %".7154" = load i32, ptr %"R4"
  %"zext.833" = zext i32 %".7154" to i64
  %".7155" = load i32, ptr %"R5"
  %"zext.834" = zext i32 %".7155" to i64
  %"shl.358" = shl i64 %"zext.834", 32
  %"or.323" = or i64 %"shl.358", %"zext.833"
  %".7156" = inttoptr i64 %"or.323" to ptr
  %".7157" = ptrtoint ptr %".7156" to i64
  %".7158" = add i64 %".7157", 4
  %"for_LDG.292" = inttoptr i64 %".7158" to ptr
  %".7159" = load float, ptr %"for_LDG.292"
  %".7160" = bitcast ptr %"R47" to ptr
  store float %".7159", ptr %".7160"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".7163" = load i32, ptr %"R8"
  %".7164" = load i32, ptr %"R41"
  %"zext.835" = zext i32 %".7163" to i64
  %"zext.836" = zext i32 %".7164" to i64
  %"mul.94" = mul i64 %"zext.835", %"zext.836"
  %".7165" = ptrtoint ptr %"Arg_1" to i64
  %"add.308" = add i64 %"mul.94", %".7165"
  %".7166" = and i64 %"add.308", 18446744069414584320
  %".7167" = lshr i64 %".7166", 32
  %"trunc32.186" = trunc i64 %".7167" to i32
  %"trunc32.187" = trunc i64 %"add.308" to i32
  store i32 %"trunc32.187", ptr %"R8"
  store i32 %"trunc32.186", ptr %"R9"
  ; LDG.E.SYS R42, [R6+0x4]
  %".7171" = load i32, ptr %"R6"
  %"zext.837" = zext i32 %".7171" to i64
  %".7172" = load i32, ptr %"R7"
  %"zext.838" = zext i32 %".7172" to i64
  %"shl.359" = shl i64 %"zext.838", 32
  %"or.324" = or i64 %"shl.359", %"zext.837"
  %".7173" = inttoptr i64 %"or.324" to ptr
  %".7174" = ptrtoint ptr %".7173" to i64
  %".7175" = add i64 %".7174", 4
  %"for_LDG.293" = inttoptr i64 %".7175" to ptr
  %".7176" = load float, ptr %"for_LDG.293"
  %".7177" = bitcast ptr %"R42" to ptr
  store float %".7176", ptr %".7177"
  ; LDG.E.SYS R45, [R4+0x8]
  %".7180" = load i32, ptr %"R4"
  %"zext.839" = zext i32 %".7180" to i64
  %".7181" = load i32, ptr %"R5"
  %"zext.840" = zext i32 %".7181" to i64
  %"shl.360" = shl i64 %"zext.840", 32
  %"or.325" = or i64 %"shl.360", %"zext.839"
  %".7182" = inttoptr i64 %"or.325" to ptr
  %".7183" = ptrtoint ptr %".7182" to i64
  %".7184" = add i64 %".7183", 8
  %"for_LDG.294" = inttoptr i64 %".7184" to ptr
  %".7185" = load float, ptr %"for_LDG.294"
  %".7186" = bitcast ptr %"R45" to ptr
  store float %".7185", ptr %".7186"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".7189" = load i32, ptr %"R50"
  %".7190" = load i32, ptr %"R41"
  %"zext.841" = zext i32 %".7189" to i64
  %"zext.842" = zext i32 %".7190" to i64
  %"mul.95" = mul i64 %"zext.841", %"zext.842"
  %".7191" = ptrtoint ptr %"Arg_2" to i64
  %"add.309" = add i64 %"mul.95", %".7191"
  %".7192" = and i64 %"add.309", 18446744069414584320
  %".7193" = lshr i64 %".7192", 32
  %"trunc32.188" = trunc i64 %".7193" to i32
  %"trunc32.189" = trunc i64 %"add.309" to i32
  store i32 %"trunc32.189", ptr %"R10"
  store i32 %"trunc32.188", ptr %"R11"
  ; LDG.E.SYS R40, [R6+0x8]
  %".7197" = load i32, ptr %"R6"
  %"zext.843" = zext i32 %".7197" to i64
  %".7198" = load i32, ptr %"R7"
  %"zext.844" = zext i32 %".7198" to i64
  %"shl.361" = shl i64 %"zext.844", 32
  %"or.326" = or i64 %"shl.361", %"zext.843"
  %".7199" = inttoptr i64 %"or.326" to ptr
  %".7200" = ptrtoint ptr %".7199" to i64
  %".7201" = add i64 %".7200", 8
  %"for_LDG.295" = inttoptr i64 %".7201" to ptr
  %".7202" = load float, ptr %"for_LDG.295"
  %".7203" = bitcast ptr %"R40" to ptr
  store float %".7202", ptr %".7203"
  ; LDG.E.SYS R53, [R4+0xc]
  %".7206" = load i32, ptr %"R4"
  %"zext.845" = zext i32 %".7206" to i64
  %".7207" = load i32, ptr %"R5"
  %"zext.846" = zext i32 %".7207" to i64
  %"shl.362" = shl i64 %"zext.846", 32
  %"or.327" = or i64 %"shl.362", %"zext.845"
  %".7208" = inttoptr i64 %"or.327" to ptr
  %".7209" = ptrtoint ptr %".7208" to i64
  %".7210" = add i64 %".7209", 12
  %"for_LDG.296" = inttoptr i64 %".7210" to ptr
  %".7211" = load float, ptr %"for_LDG.296"
  %".7212" = bitcast ptr %"R53" to ptr
  store float %".7211", ptr %".7212"
  ; IADD3 R12, R34, 0xc, RZ
  %".7215" = load i32, ptr %"R34"
  %"add.310" = add i32 %".7215", 12
  %"add.311" = add i32 %"add.310", 0
  store i32 %"add.311", ptr %"R12"
  ; LDG.E.SYS R54, [R6+0xc]
  %".7218" = load i32, ptr %"R6"
  %"zext.847" = zext i32 %".7218" to i64
  %".7219" = load i32, ptr %"R7"
  %"zext.848" = zext i32 %".7219" to i64
  %"shl.363" = shl i64 %"zext.848", 32
  %"or.328" = or i64 %"shl.363", %"zext.847"
  %".7220" = inttoptr i64 %"or.328" to ptr
  %".7221" = ptrtoint ptr %".7220" to i64
  %".7222" = add i64 %".7221", 12
  %"for_LDG.297" = inttoptr i64 %".7222" to ptr
  %".7223" = load float, ptr %"for_LDG.297"
  %".7224" = bitcast ptr %"R54" to ptr
  store float %".7223", ptr %".7224"
  ; LDG.E.SYS R59, [R8]
  %".7227" = load i32, ptr %"R8"
  %"zext.849" = zext i32 %".7227" to i64
  %".7228" = load i32, ptr %"R9"
  %"zext.850" = zext i32 %".7228" to i64
  %"shl.364" = shl i64 %"zext.850", 32
  %"or.329" = or i64 %"shl.364", %"zext.849"
  %".7229" = inttoptr i64 %"or.329" to ptr
  %".7230" = ptrtoint ptr %".7229" to i64
  %".7231" = add i64 %".7230", 0
  %"for_LDG.298" = inttoptr i64 %".7231" to ptr
  %".7232" = load float, ptr %"for_LDG.298"
  %".7233" = bitcast ptr %"R59" to ptr
  store float %".7232", ptr %".7233"
  ; IADD3 R58, R3, R12, RZ
  %".7236" = load i32, ptr %"R3"
  %".7237" = load i32, ptr %"R12"
  %"add.312" = add i32 %".7236", %".7237"
  %"add.313" = add i32 %"add.312", 0
  store i32 %"add.313", ptr %"R58"
  ; LDG.E.SYS R52, [R10]
  %".7240" = load i32, ptr %"R10"
  %"zext.851" = zext i32 %".7240" to i64
  %".7241" = load i32, ptr %"R11"
  %"zext.852" = zext i32 %".7241" to i64
  %"shl.365" = shl i64 %"zext.852", 32
  %"or.330" = or i64 %"shl.365", %"zext.851"
  %".7242" = inttoptr i64 %"or.330" to ptr
  %".7243" = ptrtoint ptr %".7242" to i64
  %".7244" = add i64 %".7243", 0
  %"for_LDG.299" = inttoptr i64 %".7244" to ptr
  %".7245" = load float, ptr %"for_LDG.299"
  %".7246" = bitcast ptr %"R52" to ptr
  store float %".7245", ptr %".7246"
  ; LDG.E.SYS R57, [R8+0x4]
  %".7249" = load i32, ptr %"R8"
  %"zext.853" = zext i32 %".7249" to i64
  %".7250" = load i32, ptr %"R9"
  %"zext.854" = zext i32 %".7250" to i64
  %"shl.366" = shl i64 %"zext.854", 32
  %"or.331" = or i64 %"shl.366", %"zext.853"
  %".7251" = inttoptr i64 %"or.331" to ptr
  %".7252" = ptrtoint ptr %".7251" to i64
  %".7253" = add i64 %".7252", 4
  %"for_LDG.300" = inttoptr i64 %".7253" to ptr
  %".7254" = load float, ptr %"for_LDG.300"
  %".7255" = bitcast ptr %"R57" to ptr
  store float %".7254", ptr %".7255"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".7258" = load i32, ptr %"R12"
  %".7259" = load i32, ptr %"R41"
  %"zext.855" = zext i32 %".7258" to i64
  %"zext.856" = zext i32 %".7259" to i64
  %"mul.96" = mul i64 %"zext.855", %"zext.856"
  %".7260" = ptrtoint ptr %"Arg_1" to i64
  %"add.314" = add i64 %"mul.96", %".7260"
  %".7261" = and i64 %"add.314", 18446744069414584320
  %".7262" = lshr i64 %".7261", 32
  %"trunc32.190" = trunc i64 %".7262" to i32
  %"trunc32.191" = trunc i64 %"add.314" to i32
  store i32 %"trunc32.191", ptr %"R12"
  store i32 %"trunc32.190", ptr %"R13"
  ; LDG.E.SYS R50, [R10+0x4]
  %".7266" = load i32, ptr %"R10"
  %"zext.857" = zext i32 %".7266" to i64
  %".7267" = load i32, ptr %"R11"
  %"zext.858" = zext i32 %".7267" to i64
  %"shl.367" = shl i64 %"zext.858", 32
  %"or.332" = or i64 %"shl.367", %"zext.857"
  %".7268" = inttoptr i64 %"or.332" to ptr
  %".7269" = ptrtoint ptr %".7268" to i64
  %".7270" = add i64 %".7269", 4
  %"for_LDG.301" = inttoptr i64 %".7270" to ptr
  %".7271" = load float, ptr %"for_LDG.301"
  %".7272" = bitcast ptr %"R50" to ptr
  store float %".7271", ptr %".7272"
  ; LDG.E.SYS R55, [R8+0x8]
  %".7275" = load i32, ptr %"R8"
  %"zext.859" = zext i32 %".7275" to i64
  %".7276" = load i32, ptr %"R9"
  %"zext.860" = zext i32 %".7276" to i64
  %"shl.368" = shl i64 %"zext.860", 32
  %"or.333" = or i64 %"shl.368", %"zext.859"
  %".7277" = inttoptr i64 %"or.333" to ptr
  %".7278" = ptrtoint ptr %".7277" to i64
  %".7279" = add i64 %".7278", 8
  %"for_LDG.302" = inttoptr i64 %".7279" to ptr
  %".7280" = load float, ptr %"for_LDG.302"
  %".7281" = bitcast ptr %"R55" to ptr
  store float %".7280", ptr %".7281"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".7284" = load i32, ptr %"R58"
  %".7285" = load i32, ptr %"R41"
  %"zext.861" = zext i32 %".7284" to i64
  %"zext.862" = zext i32 %".7285" to i64
  %"mul.97" = mul i64 %"zext.861", %"zext.862"
  %".7286" = ptrtoint ptr %"Arg_2" to i64
  %"add.315" = add i64 %"mul.97", %".7286"
  %".7287" = and i64 %"add.315", 18446744069414584320
  %".7288" = lshr i64 %".7287", 32
  %"trunc32.192" = trunc i64 %".7288" to i32
  %"trunc32.193" = trunc i64 %"add.315" to i32
  store i32 %"trunc32.193", ptr %"R4"
  store i32 %"trunc32.192", ptr %"R5"
  ; LDG.E.SYS R61, [R8+0xc]
  %".7292" = load i32, ptr %"R8"
  %"zext.863" = zext i32 %".7292" to i64
  %".7293" = load i32, ptr %"R9"
  %"zext.864" = zext i32 %".7293" to i64
  %"shl.369" = shl i64 %"zext.864", 32
  %"or.334" = or i64 %"shl.369", %"zext.863"
  %".7294" = inttoptr i64 %"or.334" to ptr
  %".7295" = ptrtoint ptr %".7294" to i64
  %".7296" = add i64 %".7295", 12
  %"for_LDG.303" = inttoptr i64 %".7296" to ptr
  %".7297" = load float, ptr %"for_LDG.303"
  %".7298" = bitcast ptr %"R61" to ptr
  store float %".7297", ptr %".7298"
  ; LDG.E.SYS R56, [R10+0x8]
  %".7301" = load i32, ptr %"R10"
  %"zext.865" = zext i32 %".7301" to i64
  %".7302" = load i32, ptr %"R11"
  %"zext.866" = zext i32 %".7302" to i64
  %"shl.370" = shl i64 %"zext.866", 32
  %"or.335" = or i64 %"shl.370", %"zext.865"
  %".7303" = inttoptr i64 %"or.335" to ptr
  %".7304" = ptrtoint ptr %".7303" to i64
  %".7305" = add i64 %".7304", 8
  %"for_LDG.304" = inttoptr i64 %".7305" to ptr
  %".7306" = load float, ptr %"for_LDG.304"
  %".7307" = bitcast ptr %"R56" to ptr
  store float %".7306", ptr %".7307"
  ; LDG.E.SYS R58, [R10+0xc]
  %".7310" = load i32, ptr %"R10"
  %"zext.867" = zext i32 %".7310" to i64
  %".7311" = load i32, ptr %"R11"
  %"zext.868" = zext i32 %".7311" to i64
  %"shl.371" = shl i64 %"zext.868", 32
  %"or.336" = or i64 %"shl.371", %"zext.867"
  %".7312" = inttoptr i64 %"or.336" to ptr
  %".7313" = ptrtoint ptr %".7312" to i64
  %".7314" = add i64 %".7313", 12
  %"for_LDG.305" = inttoptr i64 %".7314" to ptr
  %".7315" = load float, ptr %"for_LDG.305"
  %".7316" = bitcast ptr %"R58" to ptr
  store float %".7315", ptr %".7316"
  ; LDG.E.SYS R6, [R12]
  %".7319" = load i32, ptr %"R12"
  %"zext.869" = zext i32 %".7319" to i64
  %".7320" = load i32, ptr %"R13"
  %"zext.870" = zext i32 %".7320" to i64
  %"shl.372" = shl i64 %"zext.870", 32
  %"or.337" = or i64 %"shl.372", %"zext.869"
  %".7321" = inttoptr i64 %"or.337" to ptr
  %".7322" = ptrtoint ptr %".7321" to i64
  %".7323" = add i64 %".7322", 0
  %"for_LDG.306" = inttoptr i64 %".7323" to ptr
  %".7324" = load float, ptr %"for_LDG.306"
  %".7325" = bitcast ptr %"R6" to ptr
  store float %".7324", ptr %".7325"
  ; LDG.E.SYS R41, [R12+0x4]
  %".7328" = load i32, ptr %"R12"
  %"zext.871" = zext i32 %".7328" to i64
  %".7329" = load i32, ptr %"R13"
  %"zext.872" = zext i32 %".7329" to i64
  %"shl.373" = shl i64 %"zext.872", 32
  %"or.338" = or i64 %"shl.373", %"zext.871"
  %".7330" = inttoptr i64 %"or.338" to ptr
  %".7331" = ptrtoint ptr %".7330" to i64
  %".7332" = add i64 %".7331", 4
  %"for_LDG.307" = inttoptr i64 %".7332" to ptr
  %".7333" = load float, ptr %"for_LDG.307"
  %".7334" = bitcast ptr %"R41" to ptr
  store float %".7333", ptr %".7334"
  ; LDG.E.SYS R10, [R4]
  %".7337" = load i32, ptr %"R4"
  %"zext.873" = zext i32 %".7337" to i64
  %".7338" = load i32, ptr %"R5"
  %"zext.874" = zext i32 %".7338" to i64
  %"shl.374" = shl i64 %"zext.874", 32
  %"or.339" = or i64 %"shl.374", %"zext.873"
  %".7339" = inttoptr i64 %"or.339" to ptr
  %".7340" = ptrtoint ptr %".7339" to i64
  %".7341" = add i64 %".7340", 0
  %"for_LDG.308" = inttoptr i64 %".7341" to ptr
  %".7342" = load float, ptr %"for_LDG.308"
  %".7343" = bitcast ptr %"R10" to ptr
  store float %".7342", ptr %".7343"
  ; LDG.E.SYS R7, [R12+0x8]
  %".7346" = load i32, ptr %"R12"
  %"zext.875" = zext i32 %".7346" to i64
  %".7347" = load i32, ptr %"R13"
  %"zext.876" = zext i32 %".7347" to i64
  %"shl.375" = shl i64 %"zext.876", 32
  %"or.340" = or i64 %"shl.375", %"zext.875"
  %".7348" = inttoptr i64 %"or.340" to ptr
  %".7349" = ptrtoint ptr %".7348" to i64
  %".7350" = add i64 %".7349", 8
  %"for_LDG.309" = inttoptr i64 %".7350" to ptr
  %".7351" = load float, ptr %"for_LDG.309"
  %".7352" = bitcast ptr %"R7" to ptr
  store float %".7351", ptr %".7352"
  ; LDG.E.SYS R9, [R4+0x4]
  %".7355" = load i32, ptr %"R4"
  %"zext.877" = zext i32 %".7355" to i64
  %".7356" = load i32, ptr %"R5"
  %"zext.878" = zext i32 %".7356" to i64
  %"shl.376" = shl i64 %"zext.878", 32
  %"or.341" = or i64 %"shl.376", %"zext.877"
  %".7357" = inttoptr i64 %"or.341" to ptr
  %".7358" = ptrtoint ptr %".7357" to i64
  %".7359" = add i64 %".7358", 4
  %"for_LDG.310" = inttoptr i64 %".7359" to ptr
  %".7360" = load float, ptr %"for_LDG.310"
  %".7361" = bitcast ptr %"R9" to ptr
  store float %".7360", ptr %".7361"
  ; LDG.E.SYS R60, [R12+0xc]
  %".7364" = load i32, ptr %"R12"
  %"zext.879" = zext i32 %".7364" to i64
  %".7365" = load i32, ptr %"R13"
  %"zext.880" = zext i32 %".7365" to i64
  %"shl.377" = shl i64 %"zext.880", 32
  %"or.342" = or i64 %"shl.377", %"zext.879"
  %".7366" = inttoptr i64 %"or.342" to ptr
  %".7367" = ptrtoint ptr %".7366" to i64
  %".7368" = add i64 %".7367", 12
  %"for_LDG.311" = inttoptr i64 %".7368" to ptr
  %".7369" = load float, ptr %"for_LDG.311"
  %".7370" = bitcast ptr %"R60" to ptr
  store float %".7369", ptr %".7370"
  ; LDG.E.SYS R8, [R4+0x8]
  %".7373" = load i32, ptr %"R4"
  %"zext.881" = zext i32 %".7373" to i64
  %".7374" = load i32, ptr %"R5"
  %"zext.882" = zext i32 %".7374" to i64
  %"shl.378" = shl i64 %"zext.882", 32
  %"or.343" = or i64 %"shl.378", %"zext.881"
  %".7375" = inttoptr i64 %"or.343" to ptr
  %".7376" = ptrtoint ptr %".7375" to i64
  %".7377" = add i64 %".7376", 8
  %"for_LDG.312" = inttoptr i64 %".7377" to ptr
  %".7378" = load float, ptr %"for_LDG.312"
  %".7379" = bitcast ptr %"R8" to ptr
  store float %".7378", ptr %".7379"
  ; LDG.E.SYS R11, [R4+0xc]
  %".7382" = load i32, ptr %"R4"
  %"zext.883" = zext i32 %".7382" to i64
  %".7383" = load i32, ptr %"R5"
  %"zext.884" = zext i32 %".7383" to i64
  %"shl.379" = shl i64 %"zext.884", 32
  %"or.344" = or i64 %"shl.379", %"zext.883"
  %".7384" = inttoptr i64 %"or.344" to ptr
  %".7385" = ptrtoint ptr %".7384" to i64
  %".7386" = add i64 %".7385", 12
  %"for_LDG.313" = inttoptr i64 %".7386" to ptr
  %".7387" = load float, ptr %"for_LDG.313"
  %".7388" = bitcast ptr %"R11" to ptr
  store float %".7387", ptr %".7388"
  ; IADD3 R35, R35, -0x10, RZ
  %".7391" = load i32, ptr %"R35"
  %"add.316" = add i32 %".7391", -16
  %"add.317" = add i32 %"add.316", 0
  store i32 %"add.317", ptr %"R35"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".7394" = load i32, ptr %"R35"
  %".7395" = load i1, ptr %"PT"
  %"cmp.60" = icmp sgt i32 %".7394", 12
  %".7396" = and i1 %"cmp.60", %".7395"
  store i1 %".7396", ptr %"P1"
  ; IADD3 R34, R34, 0x10, RZ
  %".7399" = load i32, ptr %"R34"
  %"add.318" = add i32 %".7399", 16
  %"add.319" = add i32 %"add.318", 0
  store i32 %"add.319", ptr %"R34"
  ; FMUL R25, R25, R22
  %".7402" = load float, ptr %"R25"
  %".7403" = load float, ptr %"R22"
  %"fmul.276" = fmul float %".7402", %".7403"
  %".7404" = bitcast ptr %"R25" to ptr
  store float %"fmul.276", ptr %".7404"
  ; FFMA R25, R25, R36, R21
  %".7407" = load float, ptr %"R25"
  %".7408" = load float, ptr %"R36"
  %".7409" = load float, ptr %"R21"
  %"fmul.277" = fmul float %".7407", %".7408"
  %"fadd.265" = fadd float %"fmul.277", %".7409"
  %".7410" = bitcast ptr %"R25" to ptr
  store float %"fadd.265", ptr %".7410"
  ; FMUL R37, R37, R22
  %".7413" = load float, ptr %"R37"
  %".7414" = load float, ptr %"R22"
  %"fmul.278" = fmul float %".7413", %".7414"
  %".7415" = bitcast ptr %"R37" to ptr
  store float %"fmul.278", ptr %".7415"
  ; FFMA R25, R37, R24, R25
  %".7418" = load float, ptr %"R37"
  %".7419" = load float, ptr %"R24"
  %".7420" = load float, ptr %"R25"
  %"fmul.279" = fmul float %".7418", %".7419"
  %"fadd.266" = fadd float %"fmul.279", %".7420"
  %".7421" = bitcast ptr %"R25" to ptr
  store float %"fadd.266", ptr %".7421"
  ; FMUL R39, R39, R22
  %".7424" = load float, ptr %"R39"
  %".7425" = load float, ptr %"R22"
  %"fmul.280" = fmul float %".7424", %".7425"
  %".7426" = bitcast ptr %"R39" to ptr
  store float %"fmul.280", ptr %".7426"
  ; FFMA R25, R39, R38, R25
  %".7429" = load float, ptr %"R39"
  %".7430" = load float, ptr %"R38"
  %".7431" = load float, ptr %"R25"
  %"fmul.281" = fmul float %".7429", %".7430"
  %"fadd.267" = fadd float %"fmul.281", %".7431"
  %".7432" = bitcast ptr %"R25" to ptr
  store float %"fadd.267", ptr %".7432"
  ; FMUL R43, R43, R22
  %".7435" = load float, ptr %"R43"
  %".7436" = load float, ptr %"R22"
  %"fmul.282" = fmul float %".7435", %".7436"
  %".7437" = bitcast ptr %"R43" to ptr
  store float %"fmul.282", ptr %".7437"
  ; FFMA R25, R43, R46, R25
  %".7440" = load float, ptr %"R43"
  %".7441" = load float, ptr %"R46"
  %".7442" = load float, ptr %"R25"
  %"fmul.283" = fmul float %".7440", %".7441"
  %"fadd.268" = fadd float %"fmul.283", %".7442"
  %".7443" = bitcast ptr %"R25" to ptr
  store float %"fadd.268", ptr %".7443"
  ; FMUL R51, R51, R22
  %".7446" = load float, ptr %"R51"
  %".7447" = load float, ptr %"R22"
  %"fmul.284" = fmul float %".7446", %".7447"
  %".7448" = bitcast ptr %"R51" to ptr
  store float %"fmul.284", ptr %".7448"
  ; FFMA R25, R51, R44, R25
  %".7451" = load float, ptr %"R51"
  %".7452" = load float, ptr %"R44"
  %".7453" = load float, ptr %"R25"
  %"fmul.285" = fmul float %".7451", %".7452"
  %"fadd.269" = fadd float %"fmul.285", %".7453"
  %".7454" = bitcast ptr %"R25" to ptr
  store float %"fadd.269", ptr %".7454"
  ; FMUL R47, R47, R22
  %".7457" = load float, ptr %"R47"
  %".7458" = load float, ptr %"R22"
  %"fmul.286" = fmul float %".7457", %".7458"
  %".7459" = bitcast ptr %"R47" to ptr
  store float %"fmul.286", ptr %".7459"
  ; FFMA R25, R47, R42, R25
  %".7462" = load float, ptr %"R47"
  %".7463" = load float, ptr %"R42"
  %".7464" = load float, ptr %"R25"
  %"fmul.287" = fmul float %".7462", %".7463"
  %"fadd.270" = fadd float %"fmul.287", %".7464"
  %".7465" = bitcast ptr %"R25" to ptr
  store float %"fadd.270", ptr %".7465"
  ; FMUL R45, R45, R22
  %".7468" = load float, ptr %"R45"
  %".7469" = load float, ptr %"R22"
  %"fmul.288" = fmul float %".7468", %".7469"
  %".7470" = bitcast ptr %"R45" to ptr
  store float %"fmul.288", ptr %".7470"
  ; FFMA R25, R45, R40, R25
  %".7473" = load float, ptr %"R45"
  %".7474" = load float, ptr %"R40"
  %".7475" = load float, ptr %"R25"
  %"fmul.289" = fmul float %".7473", %".7474"
  %"fadd.271" = fadd float %"fmul.289", %".7475"
  %".7476" = bitcast ptr %"R25" to ptr
  store float %"fadd.271", ptr %".7476"
  ; FMUL R53, R53, R22
  %".7479" = load float, ptr %"R53"
  %".7480" = load float, ptr %"R22"
  %"fmul.290" = fmul float %".7479", %".7480"
  %".7481" = bitcast ptr %"R53" to ptr
  store float %"fmul.290", ptr %".7481"
  ; FFMA R25, R53, R54, R25
  %".7484" = load float, ptr %"R53"
  %".7485" = load float, ptr %"R54"
  %".7486" = load float, ptr %"R25"
  %"fmul.291" = fmul float %".7484", %".7485"
  %"fadd.272" = fadd float %"fmul.291", %".7486"
  %".7487" = bitcast ptr %"R25" to ptr
  store float %"fadd.272", ptr %".7487"
  ; FMUL R59, R59, R22
  %".7490" = load float, ptr %"R59"
  %".7491" = load float, ptr %"R22"
  %"fmul.292" = fmul float %".7490", %".7491"
  %".7492" = bitcast ptr %"R59" to ptr
  store float %"fmul.292", ptr %".7492"
  ; FFMA R25, R59, R52, R25
  %".7495" = load float, ptr %"R59"
  %".7496" = load float, ptr %"R52"
  %".7497" = load float, ptr %"R25"
  %"fmul.293" = fmul float %".7495", %".7496"
  %"fadd.273" = fadd float %"fmul.293", %".7497"
  %".7498" = bitcast ptr %"R25" to ptr
  store float %"fadd.273", ptr %".7498"
  ; FMUL R57, R57, R22
  %".7501" = load float, ptr %"R57"
  %".7502" = load float, ptr %"R22"
  %"fmul.294" = fmul float %".7501", %".7502"
  %".7503" = bitcast ptr %"R57" to ptr
  store float %"fmul.294", ptr %".7503"
  ; FFMA R25, R57, R50, R25
  %".7506" = load float, ptr %"R57"
  %".7507" = load float, ptr %"R50"
  %".7508" = load float, ptr %"R25"
  %"fmul.295" = fmul float %".7506", %".7507"
  %"fadd.274" = fadd float %"fmul.295", %".7508"
  %".7509" = bitcast ptr %"R25" to ptr
  store float %"fadd.274", ptr %".7509"
  ; FMUL R55, R55, R22.reuse
  %".7512" = load float, ptr %"R55"
  %".7513" = load float, ptr %"R22"
  %"fmul.296" = fmul float %".7512", %".7513"
  %".7514" = bitcast ptr %"R55" to ptr
  store float %"fmul.296", ptr %".7514"
  ; FMUL R61, R61, R22
  %".7517" = load float, ptr %"R61"
  %".7518" = load float, ptr %"R22"
  %"fmul.297" = fmul float %".7517", %".7518"
  %".7519" = bitcast ptr %"R61" to ptr
  store float %"fmul.297", ptr %".7519"
  ; FFMA R25, R55, R56, R25
  %".7522" = load float, ptr %"R55"
  %".7523" = load float, ptr %"R56"
  %".7524" = load float, ptr %"R25"
  %"fmul.298" = fmul float %".7522", %".7523"
  %"fadd.275" = fadd float %"fmul.298", %".7524"
  %".7525" = bitcast ptr %"R25" to ptr
  store float %"fadd.275", ptr %".7525"
  ; FFMA R25, R61, R58, R25
  %".7528" = load float, ptr %"R61"
  %".7529" = load float, ptr %"R58"
  %".7530" = load float, ptr %"R25"
  %"fmul.299" = fmul float %".7528", %".7529"
  %"fadd.276" = fadd float %"fmul.299", %".7530"
  %".7531" = bitcast ptr %"R25" to ptr
  store float %"fadd.276", ptr %".7531"
  ; FMUL R6, R6, R22.reuse
  %".7534" = load float, ptr %"R6"
  %".7535" = load float, ptr %"R22"
  %"fmul.300" = fmul float %".7534", %".7535"
  %".7536" = bitcast ptr %"R6" to ptr
  store float %"fmul.300", ptr %".7536"
  ; FMUL R41, R41, R22
  %".7539" = load float, ptr %"R41"
  %".7540" = load float, ptr %"R22"
  %"fmul.301" = fmul float %".7539", %".7540"
  %".7541" = bitcast ptr %"R41" to ptr
  store float %"fmul.301", ptr %".7541"
  ; FFMA R6, R6, R10, R25
  %".7544" = load float, ptr %"R6"
  %".7545" = load float, ptr %"R10"
  %".7546" = load float, ptr %"R25"
  %"fmul.302" = fmul float %".7544", %".7545"
  %"fadd.277" = fadd float %"fmul.302", %".7546"
  %".7547" = bitcast ptr %"R6" to ptr
  store float %"fadd.277", ptr %".7547"
  ; FMUL R7, R7, R22
  %".7550" = load float, ptr %"R7"
  %".7551" = load float, ptr %"R22"
  %"fmul.303" = fmul float %".7550", %".7551"
  %".7552" = bitcast ptr %"R7" to ptr
  store float %"fmul.303", ptr %".7552"
  ; FFMA R9, R41, R9, R6
  %".7555" = load float, ptr %"R41"
  %".7556" = load float, ptr %"R9"
  %".7557" = load float, ptr %"R6"
  %"fmul.304" = fmul float %".7555", %".7556"
  %"fadd.278" = fadd float %"fmul.304", %".7557"
  %".7558" = bitcast ptr %"R9" to ptr
  store float %"fadd.278", ptr %".7558"
  ; FMUL R60, R60, R22
  %".7561" = load float, ptr %"R60"
  %".7562" = load float, ptr %"R22"
  %"fmul.305" = fmul float %".7561", %".7562"
  %".7563" = bitcast ptr %"R60" to ptr
  store float %"fmul.305", ptr %".7563"
  ; FFMA R8, R7, R8, R9
  %".7566" = load float, ptr %"R7"
  %".7567" = load float, ptr %"R8"
  %".7568" = load float, ptr %"R9"
  %"fmul.306" = fmul float %".7566", %".7567"
  %"fadd.279" = fadd float %"fmul.306", %".7568"
  %".7569" = bitcast ptr %"R8" to ptr
  store float %"fadd.279", ptr %".7569"
  ; FFMA R21, R60, R11, R8
  %".7572" = load float, ptr %"R60"
  %".7573" = load float, ptr %"R11"
  %".7574" = load float, ptr %"R8"
  %"fmul.307" = fmul float %".7572", %".7573"
  %"fadd.280" = fadd float %"fmul.307", %".7574"
  %".7575" = bitcast ptr %"R21" to ptr
  store float %"fadd.280", ptr %".7575"
  ; @P1 BRA `(.L_x_39)
  %".7578" = load i1, ptr %"P1"
  %".7579" = icmp ne i1 %".7578", 1
  br i1 %".7579", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".7582" = load i32, ptr %"R35"
  %".7583" = load i1, ptr %"PT"
  %"cmp.61" = icmp sgt i32 %".7582", 4
  %".7584" = and i1 %"cmp.61", %".7583"
  store i1 %".7584", ptr %"P1"
  ; @!P1 BRA `(.L_x_40)
  %".7587" = load i1, ptr %"P1"
  %".7588" = icmp eq i1 %".7587", 1
  br i1 %".7588", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R6, R3, R34, RZ
  %".7593" = load i32, ptr %"R3"
  %".7594" = load i32, ptr %"R34"
  %"add.320" = add i32 %".7593", %".7594"
  %"add.321" = add i32 %"add.320", 0
  store i32 %"add.321", ptr %"R6"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".7597" = load i32, ptr %"R34"
  %".7598" = load i32, ptr %"R11"
  %"zext.885" = zext i32 %".7597" to i64
  %"zext.886" = zext i32 %".7598" to i64
  %"mul.98" = mul i64 %"zext.885", %"zext.886"
  %".7599" = ptrtoint ptr %"Arg_1" to i64
  %"add.322" = add i64 %"mul.98", %".7599"
  %".7600" = and i64 %"add.322", 18446744069414584320
  %".7601" = lshr i64 %".7600", 32
  %"trunc32.194" = trunc i64 %".7601" to i32
  %"trunc32.195" = trunc i64 %"add.322" to i32
  store i32 %"trunc32.195", ptr %"R8"
  store i32 %"trunc32.194", ptr %"R9"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".7605" = load i32, ptr %"R6"
  %".7606" = load i32, ptr %"R11"
  %"zext.887" = zext i32 %".7605" to i64
  %"zext.888" = zext i32 %".7606" to i64
  %"mul.99" = mul i64 %"zext.887", %"zext.888"
  %".7607" = ptrtoint ptr %"Arg_2" to i64
  %"add.323" = add i64 %"mul.99", %".7607"
  %".7608" = and i64 %"add.323", 18446744069414584320
  %".7609" = lshr i64 %".7608", 32
  %"trunc32.196" = trunc i64 %".7609" to i32
  %"trunc32.197" = trunc i64 %"add.323" to i32
  store i32 %"trunc32.197", ptr %"R6"
  store i32 %"trunc32.196", ptr %"R7"
  ; IADD3 R4, R34, 0x4, RZ
  %".7613" = load i32, ptr %"R34"
  %"add.324" = add i32 %".7613", 4
  %"add.325" = add i32 %"add.324", 0
  store i32 %"add.325", ptr %"R4"
  ; LDG.E.SYS R13, [R8]
  %".7616" = load i32, ptr %"R8"
  %"zext.889" = zext i32 %".7616" to i64
  %".7617" = load i32, ptr %"R9"
  %"zext.890" = zext i32 %".7617" to i64
  %"shl.380" = shl i64 %"zext.890", 32
  %"or.345" = or i64 %"shl.380", %"zext.889"
  %".7618" = inttoptr i64 %"or.345" to ptr
  %".7619" = ptrtoint ptr %".7618" to i64
  %".7620" = add i64 %".7619", 0
  %"for_LDG.314" = inttoptr i64 %".7620" to ptr
  %".7621" = load float, ptr %"for_LDG.314"
  %".7622" = bitcast ptr %"R13" to ptr
  store float %".7621", ptr %".7622"
  ; IADD3 R10, R3, R4, RZ
  %".7625" = load i32, ptr %"R3"
  %".7626" = load i32, ptr %"R4"
  %"add.326" = add i32 %".7625", %".7626"
  %"add.327" = add i32 %"add.326", 0
  store i32 %"add.327", ptr %"R10"
  ; LDG.E.SYS R12, [R6]
  %".7629" = load i32, ptr %"R6"
  %"zext.891" = zext i32 %".7629" to i64
  %".7630" = load i32, ptr %"R7"
  %"zext.892" = zext i32 %".7630" to i64
  %"shl.381" = shl i64 %"zext.892", 32
  %"or.346" = or i64 %"shl.381", %"zext.891"
  %".7631" = inttoptr i64 %"or.346" to ptr
  %".7632" = ptrtoint ptr %".7631" to i64
  %".7633" = add i64 %".7632", 0
  %"for_LDG.315" = inttoptr i64 %".7633" to ptr
  %".7634" = load float, ptr %"for_LDG.315"
  %".7635" = bitcast ptr %"R12" to ptr
  store float %".7634", ptr %".7635"
  ; LDG.E.SYS R25, [R8+0x4]
  %".7638" = load i32, ptr %"R8"
  %"zext.893" = zext i32 %".7638" to i64
  %".7639" = load i32, ptr %"R9"
  %"zext.894" = zext i32 %".7639" to i64
  %"shl.382" = shl i64 %"zext.894", 32
  %"or.347" = or i64 %"shl.382", %"zext.893"
  %".7640" = inttoptr i64 %"or.347" to ptr
  %".7641" = ptrtoint ptr %".7640" to i64
  %".7642" = add i64 %".7641", 4
  %"for_LDG.316" = inttoptr i64 %".7642" to ptr
  %".7643" = load float, ptr %"for_LDG.316"
  %".7644" = bitcast ptr %"R25" to ptr
  store float %".7643", ptr %".7644"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".7647" = load i32, ptr %"R4"
  %".7648" = load i32, ptr %"R11"
  %"zext.895" = zext i32 %".7647" to i64
  %"zext.896" = zext i32 %".7648" to i64
  %"mul.100" = mul i64 %"zext.895", %"zext.896"
  %".7649" = ptrtoint ptr %"Arg_1" to i64
  %"add.328" = add i64 %"mul.100", %".7649"
  %".7650" = and i64 %"add.328", 18446744069414584320
  %".7651" = lshr i64 %".7650", 32
  %"trunc32.198" = trunc i64 %".7651" to i32
  %"trunc32.199" = trunc i64 %"add.328" to i32
  store i32 %"trunc32.199", ptr %"R4"
  store i32 %"trunc32.198", ptr %"R5"
  ; LDG.E.SYS R24, [R6+0x4]
  %".7655" = load i32, ptr %"R6"
  %"zext.897" = zext i32 %".7655" to i64
  %".7656" = load i32, ptr %"R7"
  %"zext.898" = zext i32 %".7656" to i64
  %"shl.383" = shl i64 %"zext.898", 32
  %"or.348" = or i64 %"shl.383", %"zext.897"
  %".7657" = inttoptr i64 %"or.348" to ptr
  %".7658" = ptrtoint ptr %".7657" to i64
  %".7659" = add i64 %".7658", 4
  %"for_LDG.317" = inttoptr i64 %".7659" to ptr
  %".7660" = load float, ptr %"for_LDG.317"
  %".7661" = bitcast ptr %"R24" to ptr
  store float %".7660", ptr %".7661"
  ; LDG.E.SYS R37, [R8+0x8]
  %".7664" = load i32, ptr %"R8"
  %"zext.899" = zext i32 %".7664" to i64
  %".7665" = load i32, ptr %"R9"
  %"zext.900" = zext i32 %".7665" to i64
  %"shl.384" = shl i64 %"zext.900", 32
  %"or.349" = or i64 %"shl.384", %"zext.899"
  %".7666" = inttoptr i64 %"or.349" to ptr
  %".7667" = ptrtoint ptr %".7666" to i64
  %".7668" = add i64 %".7667", 8
  %"for_LDG.318" = inttoptr i64 %".7668" to ptr
  %".7669" = load float, ptr %"for_LDG.318"
  %".7670" = bitcast ptr %"R37" to ptr
  store float %".7669", ptr %".7670"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".7673" = load i32, ptr %"R10"
  %".7674" = load i32, ptr %"R11"
  %"zext.901" = zext i32 %".7673" to i64
  %"zext.902" = zext i32 %".7674" to i64
  %"mul.101" = mul i64 %"zext.901", %"zext.902"
  %".7675" = ptrtoint ptr %"Arg_2" to i64
  %"add.329" = add i64 %"mul.101", %".7675"
  %".7676" = and i64 %"add.329", 18446744069414584320
  %".7677" = lshr i64 %".7676", 32
  %"trunc32.200" = trunc i64 %".7677" to i32
  %"trunc32.201" = trunc i64 %"add.329" to i32
  store i32 %"trunc32.201", ptr %"R10"
  store i32 %"trunc32.200", ptr %"R11"
  ; LDG.E.SYS R36, [R6+0x8]
  %".7681" = load i32, ptr %"R6"
  %"zext.903" = zext i32 %".7681" to i64
  %".7682" = load i32, ptr %"R7"
  %"zext.904" = zext i32 %".7682" to i64
  %"shl.385" = shl i64 %"zext.904", 32
  %"or.350" = or i64 %"shl.385", %"zext.903"
  %".7683" = inttoptr i64 %"or.350" to ptr
  %".7684" = ptrtoint ptr %".7683" to i64
  %".7685" = add i64 %".7684", 8
  %"for_LDG.319" = inttoptr i64 %".7685" to ptr
  %".7686" = load float, ptr %"for_LDG.319"
  %".7687" = bitcast ptr %"R36" to ptr
  store float %".7686", ptr %".7687"
  ; LDG.E.SYS R39, [R8+0xc]
  %".7690" = load i32, ptr %"R8"
  %"zext.905" = zext i32 %".7690" to i64
  %".7691" = load i32, ptr %"R9"
  %"zext.906" = zext i32 %".7691" to i64
  %"shl.386" = shl i64 %"zext.906", 32
  %"or.351" = or i64 %"shl.386", %"zext.905"
  %".7692" = inttoptr i64 %"or.351" to ptr
  %".7693" = ptrtoint ptr %".7692" to i64
  %".7694" = add i64 %".7693", 12
  %"for_LDG.320" = inttoptr i64 %".7694" to ptr
  %".7695" = load float, ptr %"for_LDG.320"
  %".7696" = bitcast ptr %"R39" to ptr
  store float %".7695", ptr %".7696"
  ; LDG.E.SYS R38, [R6+0xc]
  %".7699" = load i32, ptr %"R6"
  %"zext.907" = zext i32 %".7699" to i64
  %".7700" = load i32, ptr %"R7"
  %"zext.908" = zext i32 %".7700" to i64
  %"shl.387" = shl i64 %"zext.908", 32
  %"or.352" = or i64 %"shl.387", %"zext.907"
  %".7701" = inttoptr i64 %"or.352" to ptr
  %".7702" = ptrtoint ptr %".7701" to i64
  %".7703" = add i64 %".7702", 12
  %"for_LDG.321" = inttoptr i64 %".7703" to ptr
  %".7704" = load float, ptr %"for_LDG.321"
  %".7705" = bitcast ptr %"R38" to ptr
  store float %".7704", ptr %".7705"
  ; LDG.E.SYS R41, [R4]
  %".7708" = load i32, ptr %"R4"
  %"zext.909" = zext i32 %".7708" to i64
  %".7709" = load i32, ptr %"R5"
  %"zext.910" = zext i32 %".7709" to i64
  %"shl.388" = shl i64 %"zext.910", 32
  %"or.353" = or i64 %"shl.388", %"zext.909"
  %".7710" = inttoptr i64 %"or.353" to ptr
  %".7711" = ptrtoint ptr %".7710" to i64
  %".7712" = add i64 %".7711", 0
  %"for_LDG.322" = inttoptr i64 %".7712" to ptr
  %".7713" = load float, ptr %"for_LDG.322"
  %".7714" = bitcast ptr %"R41" to ptr
  store float %".7713", ptr %".7714"
  ; LDG.E.SYS R40, [R10]
  %".7717" = load i32, ptr %"R10"
  %"zext.911" = zext i32 %".7717" to i64
  %".7718" = load i32, ptr %"R11"
  %"zext.912" = zext i32 %".7718" to i64
  %"shl.389" = shl i64 %"zext.912", 32
  %"or.354" = or i64 %"shl.389", %"zext.911"
  %".7719" = inttoptr i64 %"or.354" to ptr
  %".7720" = ptrtoint ptr %".7719" to i64
  %".7721" = add i64 %".7720", 0
  %"for_LDG.323" = inttoptr i64 %".7721" to ptr
  %".7722" = load float, ptr %"for_LDG.323"
  %".7723" = bitcast ptr %"R40" to ptr
  store float %".7722", ptr %".7723"
  ; LDG.E.SYS R43, [R4+0x4]
  %".7726" = load i32, ptr %"R4"
  %"zext.913" = zext i32 %".7726" to i64
  %".7727" = load i32, ptr %"R5"
  %"zext.914" = zext i32 %".7727" to i64
  %"shl.390" = shl i64 %"zext.914", 32
  %"or.355" = or i64 %"shl.390", %"zext.913"
  %".7728" = inttoptr i64 %"or.355" to ptr
  %".7729" = ptrtoint ptr %".7728" to i64
  %".7730" = add i64 %".7729", 4
  %"for_LDG.324" = inttoptr i64 %".7730" to ptr
  %".7731" = load float, ptr %"for_LDG.324"
  %".7732" = bitcast ptr %"R43" to ptr
  store float %".7731", ptr %".7732"
  ; LDG.E.SYS R42, [R10+0x4]
  %".7735" = load i32, ptr %"R10"
  %"zext.915" = zext i32 %".7735" to i64
  %".7736" = load i32, ptr %"R11"
  %"zext.916" = zext i32 %".7736" to i64
  %"shl.391" = shl i64 %"zext.916", 32
  %"or.356" = or i64 %"shl.391", %"zext.915"
  %".7737" = inttoptr i64 %"or.356" to ptr
  %".7738" = ptrtoint ptr %".7737" to i64
  %".7739" = add i64 %".7738", 4
  %"for_LDG.325" = inttoptr i64 %".7739" to ptr
  %".7740" = load float, ptr %"for_LDG.325"
  %".7741" = bitcast ptr %"R42" to ptr
  store float %".7740", ptr %".7741"
  ; LDG.E.SYS R45, [R4+0x8]
  %".7744" = load i32, ptr %"R4"
  %"zext.917" = zext i32 %".7744" to i64
  %".7745" = load i32, ptr %"R5"
  %"zext.918" = zext i32 %".7745" to i64
  %"shl.392" = shl i64 %"zext.918", 32
  %"or.357" = or i64 %"shl.392", %"zext.917"
  %".7746" = inttoptr i64 %"or.357" to ptr
  %".7747" = ptrtoint ptr %".7746" to i64
  %".7748" = add i64 %".7747", 8
  %"for_LDG.326" = inttoptr i64 %".7748" to ptr
  %".7749" = load float, ptr %"for_LDG.326"
  %".7750" = bitcast ptr %"R45" to ptr
  store float %".7749", ptr %".7750"
  ; LDG.E.SYS R47, [R4+0xc]
  %".7753" = load i32, ptr %"R4"
  %"zext.919" = zext i32 %".7753" to i64
  %".7754" = load i32, ptr %"R5"
  %"zext.920" = zext i32 %".7754" to i64
  %"shl.393" = shl i64 %"zext.920", 32
  %"or.358" = or i64 %"shl.393", %"zext.919"
  %".7755" = inttoptr i64 %"or.358" to ptr
  %".7756" = ptrtoint ptr %".7755" to i64
  %".7757" = add i64 %".7756", 12
  %"for_LDG.327" = inttoptr i64 %".7757" to ptr
  %".7758" = load float, ptr %"for_LDG.327"
  %".7759" = bitcast ptr %"R47" to ptr
  store float %".7758", ptr %".7759"
  ; LDG.E.SYS R44, [R10+0x8]
  %".7762" = load i32, ptr %"R10"
  %"zext.921" = zext i32 %".7762" to i64
  %".7763" = load i32, ptr %"R11"
  %"zext.922" = zext i32 %".7763" to i64
  %"shl.394" = shl i64 %"zext.922", 32
  %"or.359" = or i64 %"shl.394", %"zext.921"
  %".7764" = inttoptr i64 %"or.359" to ptr
  %".7765" = ptrtoint ptr %".7764" to i64
  %".7766" = add i64 %".7765", 8
  %"for_LDG.328" = inttoptr i64 %".7766" to ptr
  %".7767" = load float, ptr %"for_LDG.328"
  %".7768" = bitcast ptr %"R44" to ptr
  store float %".7767", ptr %".7768"
  ; LDG.E.SYS R46, [R10+0xc]
  %".7771" = load i32, ptr %"R10"
  %"zext.923" = zext i32 %".7771" to i64
  %".7772" = load i32, ptr %"R11"
  %"zext.924" = zext i32 %".7772" to i64
  %"shl.395" = shl i64 %"zext.924", 32
  %"or.360" = or i64 %"shl.395", %"zext.923"
  %".7773" = inttoptr i64 %"or.360" to ptr
  %".7774" = ptrtoint ptr %".7773" to i64
  %".7775" = add i64 %".7774", 12
  %"for_LDG.329" = inttoptr i64 %".7775" to ptr
  %".7776" = load float, ptr %"for_LDG.329"
  %".7777" = bitcast ptr %"R46" to ptr
  store float %".7776", ptr %".7777"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".7780" = xor i1 1, 1
  %".7781" = and i1 %".7780", 1
  %".7782" = and i1 %".7781", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".7784" = load i32, ptr %"R35"
  %"add.330" = add i32 %".7784", -8
  %"add.331" = add i32 %"add.330", 0
  store i32 %"add.331", ptr %"R35"
  ; IADD3 R34, R34, 0x8, RZ
  %".7787" = load i32, ptr %"R34"
  %"add.332" = add i32 %".7787", 8
  %"add.333" = add i32 %"add.332", 0
  store i32 %"add.333", ptr %"R34"
  ; FMUL R8, R13, R22
  %".7790" = load float, ptr %"R13"
  %".7791" = load float, ptr %"R22"
  %"fmul.308" = fmul float %".7790", %".7791"
  %".7792" = bitcast ptr %"R8" to ptr
  store float %"fmul.308", ptr %".7792"
  ; FFMA R8, R8, R12, R21
  %".7795" = load float, ptr %"R8"
  %".7796" = load float, ptr %"R12"
  %".7797" = load float, ptr %"R21"
  %"fmul.309" = fmul float %".7795", %".7796"
  %"fadd.281" = fadd float %"fmul.309", %".7797"
  %".7798" = bitcast ptr %"R8" to ptr
  store float %"fadd.281", ptr %".7798"
  ; FMUL R25, R25, R22
  %".7801" = load float, ptr %"R25"
  %".7802" = load float, ptr %"R22"
  %"fmul.310" = fmul float %".7801", %".7802"
  %".7803" = bitcast ptr %"R25" to ptr
  store float %"fmul.310", ptr %".7803"
  ; FFMA R8, R25, R24, R8
  %".7806" = load float, ptr %"R25"
  %".7807" = load float, ptr %"R24"
  %".7808" = load float, ptr %"R8"
  %"fmul.311" = fmul float %".7806", %".7807"
  %"fadd.282" = fadd float %"fmul.311", %".7808"
  %".7809" = bitcast ptr %"R8" to ptr
  store float %"fadd.282", ptr %".7809"
  ; FMUL R37, R37, R22
  %".7812" = load float, ptr %"R37"
  %".7813" = load float, ptr %"R22"
  %"fmul.312" = fmul float %".7812", %".7813"
  %".7814" = bitcast ptr %"R37" to ptr
  store float %"fmul.312", ptr %".7814"
  ; FFMA R8, R37, R36, R8
  %".7817" = load float, ptr %"R37"
  %".7818" = load float, ptr %"R36"
  %".7819" = load float, ptr %"R8"
  %"fmul.313" = fmul float %".7817", %".7818"
  %"fadd.283" = fadd float %"fmul.313", %".7819"
  %".7820" = bitcast ptr %"R8" to ptr
  store float %"fadd.283", ptr %".7820"
  ; FMUL R39, R39, R22
  %".7823" = load float, ptr %"R39"
  %".7824" = load float, ptr %"R22"
  %"fmul.314" = fmul float %".7823", %".7824"
  %".7825" = bitcast ptr %"R39" to ptr
  store float %"fmul.314", ptr %".7825"
  ; FFMA R8, R39, R38, R8
  %".7828" = load float, ptr %"R39"
  %".7829" = load float, ptr %"R38"
  %".7830" = load float, ptr %"R8"
  %"fmul.315" = fmul float %".7828", %".7829"
  %"fadd.284" = fadd float %"fmul.315", %".7830"
  %".7831" = bitcast ptr %"R8" to ptr
  store float %"fadd.284", ptr %".7831"
  ; FMUL R41, R41, R22
  %".7834" = load float, ptr %"R41"
  %".7835" = load float, ptr %"R22"
  %"fmul.316" = fmul float %".7834", %".7835"
  %".7836" = bitcast ptr %"R41" to ptr
  store float %"fmul.316", ptr %".7836"
  ; FFMA R8, R41, R40, R8
  %".7839" = load float, ptr %"R41"
  %".7840" = load float, ptr %"R40"
  %".7841" = load float, ptr %"R8"
  %"fmul.317" = fmul float %".7839", %".7840"
  %"fadd.285" = fadd float %"fmul.317", %".7841"
  %".7842" = bitcast ptr %"R8" to ptr
  store float %"fadd.285", ptr %".7842"
  ; FMUL R43, R43, R22
  %".7845" = load float, ptr %"R43"
  %".7846" = load float, ptr %"R22"
  %"fmul.318" = fmul float %".7845", %".7846"
  %".7847" = bitcast ptr %"R43" to ptr
  store float %"fmul.318", ptr %".7847"
  ; FFMA R8, R43, R42, R8
  %".7850" = load float, ptr %"R43"
  %".7851" = load float, ptr %"R42"
  %".7852" = load float, ptr %"R8"
  %"fmul.319" = fmul float %".7850", %".7851"
  %"fadd.286" = fadd float %"fmul.319", %".7852"
  %".7853" = bitcast ptr %"R8" to ptr
  store float %"fadd.286", ptr %".7853"
  ; FMUL R45, R45, R22.reuse
  %".7856" = load float, ptr %"R45"
  %".7857" = load float, ptr %"R22"
  %"fmul.320" = fmul float %".7856", %".7857"
  %".7858" = bitcast ptr %"R45" to ptr
  store float %"fmul.320", ptr %".7858"
  ; FMUL R47, R47, R22
  %".7861" = load float, ptr %"R47"
  %".7862" = load float, ptr %"R22"
  %"fmul.321" = fmul float %".7861", %".7862"
  %".7863" = bitcast ptr %"R47" to ptr
  store float %"fmul.321", ptr %".7863"
  ; FFMA R8, R45, R44, R8
  %".7866" = load float, ptr %"R45"
  %".7867" = load float, ptr %"R44"
  %".7868" = load float, ptr %"R8"
  %"fmul.322" = fmul float %".7866", %".7867"
  %"fadd.287" = fadd float %"fmul.322", %".7868"
  %".7869" = bitcast ptr %"R8" to ptr
  store float %"fadd.287", ptr %".7869"
  ; FFMA R21, R47, R46, R8
  %".7872" = load float, ptr %"R47"
  %".7873" = load float, ptr %"R46"
  %".7874" = load float, ptr %"R8"
  %"fmul.323" = fmul float %".7872", %".7873"
  %"fadd.288" = fadd float %"fmul.323", %".7874"
  %".7875" = bitcast ptr %"R21" to ptr
  store float %"fadd.288", ptr %".7875"
  br label %".L_x_40"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".7879" = load i32, ptr %"R35"
  %".7880" = load i1, ptr %"PT"
  %"cmp.62" = icmp ne i32 %".7879", 0
  %".7881" = or i1 %"cmp.62", %".7880"
  store i1 %".7881", ptr %"P0"
  ; @!P0 BRA `(.L_x_36)
  %".7884" = load i1, ptr %"P0"
  %".7885" = icmp eq i1 %".7884", 1
  br i1 %".7885", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IADD3 R6, R3, R34, RZ
  %".7890" = load i32, ptr %"R3"
  %".7891" = load i32, ptr %"R34"
  %"add.334" = add i32 %".7890", %".7891"
  %"add.335" = add i32 %"add.334", 0
  store i32 %"add.335", ptr %"R6"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".7894" = load i32, ptr %"R34"
  %".7895" = load i32, ptr %"R7"
  %"zext.925" = zext i32 %".7894" to i64
  %"zext.926" = zext i32 %".7895" to i64
  %"mul.102" = mul i64 %"zext.925", %"zext.926"
  %".7896" = ptrtoint ptr %"Arg_1" to i64
  %"add.336" = add i64 %"mul.102", %".7896"
  %".7897" = and i64 %"add.336", 18446744069414584320
  %".7898" = lshr i64 %".7897", 32
  %"trunc32.202" = trunc i64 %".7898" to i32
  %"trunc32.203" = trunc i64 %"add.336" to i32
  store i32 %"trunc32.203", ptr %"R4"
  store i32 %"trunc32.202", ptr %"R5"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".7902" = load i32, ptr %"R6"
  %".7903" = load i32, ptr %"R7"
  %"zext.927" = zext i32 %".7902" to i64
  %"zext.928" = zext i32 %".7903" to i64
  %"mul.103" = mul i64 %"zext.927", %"zext.928"
  %".7904" = ptrtoint ptr %"Arg_2" to i64
  %"add.337" = add i64 %"mul.103", %".7904"
  %".7905" = and i64 %"add.337", 18446744069414584320
  %".7906" = lshr i64 %".7905", 32
  %"trunc32.204" = trunc i64 %".7906" to i32
  %"trunc32.205" = trunc i64 %"add.337" to i32
  store i32 %"trunc32.205", ptr %"R6"
  store i32 %"trunc32.204", ptr %"R7"
  ; LDG.E.SYS R9, [R4]
  %".7910" = load i32, ptr %"R4"
  %"zext.929" = zext i32 %".7910" to i64
  %".7911" = load i32, ptr %"R5"
  %"zext.930" = zext i32 %".7911" to i64
  %"shl.396" = shl i64 %"zext.930", 32
  %"or.361" = or i64 %"shl.396", %"zext.929"
  %".7912" = inttoptr i64 %"or.361" to ptr
  %".7913" = ptrtoint ptr %".7912" to i64
  %".7914" = add i64 %".7913", 0
  %"for_LDG.330" = inttoptr i64 %".7914" to ptr
  %".7915" = load float, ptr %"for_LDG.330"
  %".7916" = bitcast ptr %"R9" to ptr
  store float %".7915", ptr %".7916"
  ; LDG.E.SYS R10, [R6]
  %".7919" = load i32, ptr %"R6"
  %"zext.931" = zext i32 %".7919" to i64
  %".7920" = load i32, ptr %"R7"
  %"zext.932" = zext i32 %".7920" to i64
  %"shl.397" = shl i64 %"zext.932", 32
  %"or.362" = or i64 %"shl.397", %"zext.931"
  %".7921" = inttoptr i64 %"or.362" to ptr
  %".7922" = ptrtoint ptr %".7921" to i64
  %".7923" = add i64 %".7922", 0
  %"for_LDG.331" = inttoptr i64 %".7923" to ptr
  %".7924" = load float, ptr %"for_LDG.331"
  %".7925" = bitcast ptr %"R10" to ptr
  store float %".7924", ptr %".7925"
  ; LDG.E.SYS R11, [R4+0x4]
  %".7928" = load i32, ptr %"R4"
  %"zext.933" = zext i32 %".7928" to i64
  %".7929" = load i32, ptr %"R5"
  %"zext.934" = zext i32 %".7929" to i64
  %"shl.398" = shl i64 %"zext.934", 32
  %"or.363" = or i64 %"shl.398", %"zext.933"
  %".7930" = inttoptr i64 %"or.363" to ptr
  %".7931" = ptrtoint ptr %".7930" to i64
  %".7932" = add i64 %".7931", 4
  %"for_LDG.332" = inttoptr i64 %".7932" to ptr
  %".7933" = load float, ptr %"for_LDG.332"
  %".7934" = bitcast ptr %"R11" to ptr
  store float %".7933", ptr %".7934"
  ; LDG.E.SYS R12, [R6+0x4]
  %".7937" = load i32, ptr %"R6"
  %"zext.935" = zext i32 %".7937" to i64
  %".7938" = load i32, ptr %"R7"
  %"zext.936" = zext i32 %".7938" to i64
  %"shl.399" = shl i64 %"zext.936", 32
  %"or.364" = or i64 %"shl.399", %"zext.935"
  %".7939" = inttoptr i64 %"or.364" to ptr
  %".7940" = ptrtoint ptr %".7939" to i64
  %".7941" = add i64 %".7940", 4
  %"for_LDG.333" = inttoptr i64 %".7941" to ptr
  %".7942" = load float, ptr %"for_LDG.333"
  %".7943" = bitcast ptr %"R12" to ptr
  store float %".7942", ptr %".7943"
  ; LDG.E.SYS R13, [R4+0x8]
  %".7946" = load i32, ptr %"R4"
  %"zext.937" = zext i32 %".7946" to i64
  %".7947" = load i32, ptr %"R5"
  %"zext.938" = zext i32 %".7947" to i64
  %"shl.400" = shl i64 %"zext.938", 32
  %"or.365" = or i64 %"shl.400", %"zext.937"
  %".7948" = inttoptr i64 %"or.365" to ptr
  %".7949" = ptrtoint ptr %".7948" to i64
  %".7950" = add i64 %".7949", 8
  %"for_LDG.334" = inttoptr i64 %".7950" to ptr
  %".7951" = load float, ptr %"for_LDG.334"
  %".7952" = bitcast ptr %"R13" to ptr
  store float %".7951", ptr %".7952"
  ; LDG.E.SYS R24, [R6+0x8]
  %".7955" = load i32, ptr %"R6"
  %"zext.939" = zext i32 %".7955" to i64
  %".7956" = load i32, ptr %"R7"
  %"zext.940" = zext i32 %".7956" to i64
  %"shl.401" = shl i64 %"zext.940", 32
  %"or.366" = or i64 %"shl.401", %"zext.939"
  %".7957" = inttoptr i64 %"or.366" to ptr
  %".7958" = ptrtoint ptr %".7957" to i64
  %".7959" = add i64 %".7958", 8
  %"for_LDG.335" = inttoptr i64 %".7959" to ptr
  %".7960" = load float, ptr %"for_LDG.335"
  %".7961" = bitcast ptr %"R24" to ptr
  store float %".7960", ptr %".7961"
  ; LDG.E.SYS R25, [R4+0xc]
  %".7964" = load i32, ptr %"R4"
  %"zext.941" = zext i32 %".7964" to i64
  %".7965" = load i32, ptr %"R5"
  %"zext.942" = zext i32 %".7965" to i64
  %"shl.402" = shl i64 %"zext.942", 32
  %"or.367" = or i64 %"shl.402", %"zext.941"
  %".7966" = inttoptr i64 %"or.367" to ptr
  %".7967" = ptrtoint ptr %".7966" to i64
  %".7968" = add i64 %".7967", 12
  %"for_LDG.336" = inttoptr i64 %".7968" to ptr
  %".7969" = load float, ptr %"for_LDG.336"
  %".7970" = bitcast ptr %"R25" to ptr
  store float %".7969", ptr %".7970"
  ; LDG.E.SYS R36, [R6+0xc]
  %".7973" = load i32, ptr %"R6"
  %"zext.943" = zext i32 %".7973" to i64
  %".7974" = load i32, ptr %"R7"
  %"zext.944" = zext i32 %".7974" to i64
  %"shl.403" = shl i64 %"zext.944", 32
  %"or.368" = or i64 %"shl.403", %"zext.943"
  %".7975" = inttoptr i64 %"or.368" to ptr
  %".7976" = ptrtoint ptr %".7975" to i64
  %".7977" = add i64 %".7976", 12
  %"for_LDG.337" = inttoptr i64 %".7977" to ptr
  %".7978" = load float, ptr %"for_LDG.337"
  %".7979" = bitcast ptr %"R36" to ptr
  store float %".7978", ptr %".7979"
  ; IADD3 R35, R35, -0x4, RZ
  %".7982" = load i32, ptr %"R35"
  %"add.338" = add i32 %".7982", -4
  %"add.339" = add i32 %"add.338", 0
  store i32 %"add.339", ptr %"R35"
  ; IADD3 R34, R34, 0x4, RZ
  %".7985" = load i32, ptr %"R34"
  %"add.340" = add i32 %".7985", 4
  %"add.341" = add i32 %"add.340", 0
  store i32 %"add.341", ptr %"R34"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".7988" = load i32, ptr %"R35"
  %".7989" = load i1, ptr %"PT"
  %"cmp.63" = icmp ne i32 %".7988", 0
  %".7990" = and i1 %"cmp.63", %".7989"
  store i1 %".7990", ptr %"P0"
  ; FMUL R8, R9, R22
  %".7993" = load float, ptr %"R9"
  %".7994" = load float, ptr %"R22"
  %"fmul.324" = fmul float %".7993", %".7994"
  %".7995" = bitcast ptr %"R8" to ptr
  store float %"fmul.324", ptr %".7995"
  ; FFMA R8, R8, R10, R21
  %".7998" = load float, ptr %"R8"
  %".7999" = load float, ptr %"R10"
  %".8000" = load float, ptr %"R21"
  %"fmul.325" = fmul float %".7998", %".7999"
  %"fadd.289" = fadd float %"fmul.325", %".8000"
  %".8001" = bitcast ptr %"R8" to ptr
  store float %"fadd.289", ptr %".8001"
  ; FMUL R11, R11, R22
  %".8004" = load float, ptr %"R11"
  %".8005" = load float, ptr %"R22"
  %"fmul.326" = fmul float %".8004", %".8005"
  %".8006" = bitcast ptr %"R11" to ptr
  store float %"fmul.326", ptr %".8006"
  ; FFMA R8, R11, R12, R8
  %".8009" = load float, ptr %"R11"
  %".8010" = load float, ptr %"R12"
  %".8011" = load float, ptr %"R8"
  %"fmul.327" = fmul float %".8009", %".8010"
  %"fadd.290" = fadd float %"fmul.327", %".8011"
  %".8012" = bitcast ptr %"R8" to ptr
  store float %"fadd.290", ptr %".8012"
  ; FMUL R13, R13, R22
  %".8015" = load float, ptr %"R13"
  %".8016" = load float, ptr %"R22"
  %"fmul.328" = fmul float %".8015", %".8016"
  %".8017" = bitcast ptr %"R13" to ptr
  store float %"fmul.328", ptr %".8017"
  ; FFMA R8, R13, R24, R8
  %".8020" = load float, ptr %"R13"
  %".8021" = load float, ptr %"R24"
  %".8022" = load float, ptr %"R8"
  %"fmul.329" = fmul float %".8020", %".8021"
  %"fadd.291" = fadd float %"fmul.329", %".8022"
  %".8023" = bitcast ptr %"R8" to ptr
  store float %"fadd.291", ptr %".8023"
  ; FMUL R25, R25, R22
  %".8026" = load float, ptr %"R25"
  %".8027" = load float, ptr %"R22"
  %"fmul.330" = fmul float %".8026", %".8027"
  %".8028" = bitcast ptr %"R25" to ptr
  store float %"fmul.330", ptr %".8028"
  ; FFMA R21, R25, R36, R8
  %".8031" = load float, ptr %"R25"
  %".8032" = load float, ptr %"R36"
  %".8033" = load float, ptr %"R8"
  %"fmul.331" = fmul float %".8031", %".8032"
  %"fadd.292" = fadd float %"fmul.331", %".8033"
  %".8034" = bitcast ptr %"R21" to ptr
  store float %"fadd.292", ptr %".8034"
  ; @P0 BRA `(.L_x_37)
  %".8037" = load i1, ptr %"P0"
  %".8038" = icmp ne i1 %".8037", 1
  br i1 %".8038", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".8041" = load i32, ptr %"R48"
  %".8042" = load i1, ptr %"PT"
  %"cmp.64" = icmp ne i32 %".8041", 0
  %".8043" = and i1 %"cmp.64", %".8042"
  store i1 %".8043", ptr %"P0"
  ; @!P0 BRA `(.L_x_35)
  %".8046" = load i1, ptr %"P0"
  %".8047" = icmp eq i1 %".8046", 1
  br i1 %".8047", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IADD3 R4, R3, R34, RZ
  %".8052" = load i32, ptr %"R3"
  %".8053" = load i32, ptr %"R34"
  %"add.342" = add i32 %".8052", %".8053"
  %"add.343" = add i32 %"add.342", 0
  store i32 %"add.343", ptr %"R4"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".8056" = load i32, ptr %"R34"
  %".8057" = load i32, ptr %"R5"
  %"zext.945" = zext i32 %".8056" to i64
  %"zext.946" = zext i32 %".8057" to i64
  %"mul.104" = mul i64 %"zext.945", %"zext.946"
  %".8058" = ptrtoint ptr %"Arg_1" to i64
  %"add.344" = add i64 %"mul.104", %".8058"
  %".8059" = and i64 %"add.344", 18446744069414584320
  %".8060" = lshr i64 %".8059", 32
  %"trunc32.206" = trunc i64 %".8060" to i32
  %"trunc32.207" = trunc i64 %"add.344" to i32
  store i32 %"trunc32.207", ptr %"R34"
  store i32 %"trunc32.206", ptr %"R35"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".8064" = load i32, ptr %"R4"
  %".8065" = load i32, ptr %"R5"
  %"zext.947" = zext i32 %".8064" to i64
  %"zext.948" = zext i32 %".8065" to i64
  %"mul.105" = mul i64 %"zext.947", %"zext.948"
  %".8066" = ptrtoint ptr %"Arg_2" to i64
  %"add.345" = add i64 %"mul.105", %".8066"
  %".8067" = and i64 %"add.345", 18446744069414584320
  %".8068" = lshr i64 %".8067", 32
  %"trunc32.208" = trunc i64 %".8068" to i32
  %"trunc32.209" = trunc i64 %"add.345" to i32
  store i32 %"trunc32.209", ptr %"R4"
  store i32 %"trunc32.208", ptr %"R5"
  ; LDG.E.SYS R7, [R34]
  %".8072" = load i32, ptr %"R34"
  %"zext.949" = zext i32 %".8072" to i64
  %".8073" = load i32, ptr %"R35"
  %"zext.950" = zext i32 %".8073" to i64
  %"shl.404" = shl i64 %"zext.950", 32
  %"or.369" = or i64 %"shl.404", %"zext.949"
  %".8074" = inttoptr i64 %"or.369" to ptr
  %".8075" = ptrtoint ptr %".8074" to i64
  %".8076" = add i64 %".8075", 0
  %"for_LDG.338" = inttoptr i64 %".8076" to ptr
  %".8077" = load float, ptr %"for_LDG.338"
  %".8078" = bitcast ptr %"R7" to ptr
  store float %".8077", ptr %".8078"
  ; LDG.E.SYS R8, [R4]
  %".8081" = load i32, ptr %"R4"
  %"zext.951" = zext i32 %".8081" to i64
  %".8082" = load i32, ptr %"R5"
  %"zext.952" = zext i32 %".8082" to i64
  %"shl.405" = shl i64 %"zext.952", 32
  %"or.370" = or i64 %"shl.405", %"zext.951"
  %".8083" = inttoptr i64 %"or.370" to ptr
  %".8084" = ptrtoint ptr %".8083" to i64
  %".8085" = add i64 %".8084", 0
  %"for_LDG.339" = inttoptr i64 %".8085" to ptr
  %".8086" = load float, ptr %"for_LDG.339"
  %".8087" = bitcast ptr %"R8" to ptr
  store float %".8086", ptr %".8087"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".8090" = load i32, ptr %"R48"
  %".8091" = load i1, ptr %"PT"
  %"cmp.65" = icmp ne i32 %".8090", 1
  %".8092" = and i1 %"cmp.65", %".8091"
  store i1 %".8092", ptr %"P0"
  ; FMUL R6, R7, R22
  %".8095" = load float, ptr %"R7"
  %".8096" = load float, ptr %"R22"
  %"fmul.332" = fmul float %".8095", %".8096"
  %".8097" = bitcast ptr %"R6" to ptr
  store float %"fmul.332", ptr %".8097"
  ; FFMA R21, R6, R8, R21
  %".8100" = load float, ptr %"R6"
  %".8101" = load float, ptr %"R8"
  %".8102" = load float, ptr %"R21"
  %"fmul.333" = fmul float %".8100", %".8101"
  %"fadd.293" = fadd float %"fmul.333", %".8102"
  %".8103" = bitcast ptr %"R21" to ptr
  store float %"fadd.293", ptr %".8103"
  ; @!P0 BRA `(.L_x_35)
  %".8106" = load i1, ptr %"P0"
  %".8107" = icmp eq i1 %".8106", 1
  br i1 %".8107", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".8110" = load i32, ptr %"R48"
  %".8111" = load i1, ptr %"PT"
  %"cmp.66" = icmp ne i32 %".8110", 2
  %".8112" = and i1 %"cmp.66", %".8111"
  store i1 %".8112", ptr %"P0"
  ; LDG.E.SYS R7, [R34+0x4]
  %".8115" = load i32, ptr %"R34"
  %"zext.953" = zext i32 %".8115" to i64
  %".8116" = load i32, ptr %"R35"
  %"zext.954" = zext i32 %".8116" to i64
  %"shl.406" = shl i64 %"zext.954", 32
  %"or.371" = or i64 %"shl.406", %"zext.953"
  %".8117" = inttoptr i64 %"or.371" to ptr
  %".8118" = ptrtoint ptr %".8117" to i64
  %".8119" = add i64 %".8118", 4
  %"for_LDG.340" = inttoptr i64 %".8119" to ptr
  %".8120" = load float, ptr %"for_LDG.340"
  %".8121" = bitcast ptr %"R7" to ptr
  store float %".8120", ptr %".8121"
  ; LDG.E.SYS R8, [R4+0x4]
  %".8124" = load i32, ptr %"R4"
  %"zext.955" = zext i32 %".8124" to i64
  %".8125" = load i32, ptr %"R5"
  %"zext.956" = zext i32 %".8125" to i64
  %"shl.407" = shl i64 %"zext.956", 32
  %"or.372" = or i64 %"shl.407", %"zext.955"
  %".8126" = inttoptr i64 %"or.372" to ptr
  %".8127" = ptrtoint ptr %".8126" to i64
  %".8128" = add i64 %".8127", 4
  %"for_LDG.341" = inttoptr i64 %".8128" to ptr
  %".8129" = load float, ptr %"for_LDG.341"
  %".8130" = bitcast ptr %"R8" to ptr
  store float %".8129", ptr %".8130"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".8133" = load i1, ptr %"P0"
  %".8134" = icmp ne i1 %".8133", 1
  br i1 %".8134", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  %".8137" = load i32, ptr %"R34"
  %"zext.957" = zext i32 %".8137" to i64
  %".8138" = load i32, ptr %"R35"
  %"zext.958" = zext i32 %".8138" to i64
  %"shl.408" = shl i64 %"zext.958", 32
  %"or.373" = or i64 %"shl.408", %"zext.957"
  %".8139" = inttoptr i64 %"or.373" to ptr
  %".8140" = ptrtoint ptr %".8139" to i64
  %".8141" = add i64 %".8140", 8
  %"for_LDG.342" = inttoptr i64 %".8141" to ptr
  %".8142" = load float, ptr %"for_LDG.342"
  %".8143" = bitcast ptr %"R9" to ptr
  store float %".8142", ptr %".8143"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".8148" = load i1, ptr %"P0"
  %".8149" = icmp ne i1 %".8148", 1
  br i1 %".8149", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  %".8152" = load i32, ptr %"R4"
  %"zext.959" = zext i32 %".8152" to i64
  %".8153" = load i32, ptr %"R5"
  %"zext.960" = zext i32 %".8153" to i64
  %"shl.409" = shl i64 %"zext.960", 32
  %"or.374" = or i64 %"shl.409", %"zext.959"
  %".8154" = inttoptr i64 %"or.374" to ptr
  %".8155" = ptrtoint ptr %".8154" to i64
  %".8156" = add i64 %".8155", 8
  %"for_LDG.343" = inttoptr i64 %".8156" to ptr
  %".8157" = load float, ptr %"for_LDG.343"
  %".8158" = bitcast ptr %"R10" to ptr
  store float %".8157", ptr %".8158"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".8163" = load float, ptr %"R7"
  %".8164" = load float, ptr %"R22"
  %"fmul.334" = fmul float %".8163", %".8164"
  %".8165" = bitcast ptr %"R6" to ptr
  store float %"fmul.334", ptr %".8165"
  ; FFMA R21, R6, R8, R21
  %".8168" = load float, ptr %"R6"
  %".8169" = load float, ptr %"R8"
  %".8170" = load float, ptr %"R21"
  %"fmul.335" = fmul float %".8168", %".8169"
  %"fadd.294" = fadd float %"fmul.335", %".8170"
  %".8171" = bitcast ptr %"R21" to ptr
  store float %"fadd.294", ptr %".8171"
  ; @P0 FMUL R22, R9, R22
  %".8174" = load i1, ptr %"P0"
  %".8175" = icmp ne i1 %".8174", 1
  br i1 %".8175", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".8178" = load float, ptr %"R9"
  %".8179" = load float, ptr %"R22"
  %"fmul.336" = fmul float %".8178", %".8179"
  %".8180" = bitcast ptr %"R22" to ptr
  store float %"fmul.336", ptr %".8180"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".8185" = load i1, ptr %"P0"
  %".8186" = icmp ne i1 %".8185", 1
  br i1 %".8186", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".8189" = load float, ptr %"R22"
  %".8190" = load float, ptr %"R10"
  %".8191" = load float, ptr %"R21"
  %"fmul.337" = fmul float %".8189", %".8190"
  %"fadd.295" = fadd float %"fmul.337", %".8191"
  %".8192" = bitcast ptr %"R21" to ptr
  store float %"fadd.295", ptr %".8192"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  %".8197" = load i32, ptr %"R30"
  %"zext.961" = zext i32 %".8197" to i64
  %".8198" = load i32, ptr %"R31"
  %"zext.962" = zext i32 %".8198" to i64
  %"shl.410" = shl i64 %"zext.962", 32
  %"or.375" = or i64 %"shl.410", %"zext.961"
  %".8199" = inttoptr i64 %"or.375" to ptr
  %".8200" = ptrtoint ptr %".8199" to i64
  %".8201" = add i64 %".8200", 0
  %"for_LDG.344" = inttoptr i64 %".8201" to ptr
  %".8202" = load float, ptr %"for_LDG.344"
  %".8203" = bitcast ptr %"R4" to ptr
  store float %".8202", ptr %".8203"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".8208" = load float, ptr %"R4"
  %".8209" = load float, ptr %"R21"
  %"fadd.296" = fadd float %".8208", %".8209"
  %".8210" = bitcast ptr %"R21" to ptr
  store float %"fadd.296", ptr %".8210"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".8213" = load float, ptr %"R21"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".8213")
  %".8214" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".8215" = and i1 %"fcmp_unordered.2", %".8214"
  store i1 %".8215", ptr %"P0"
  ; @!P0 BRA `(.L_x_42)
  %".8218" = load i1, ptr %"P0"
  %".8219" = icmp eq i1 %".8218", 1
  br i1 %".8219", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".8222" = load float, ptr %"R21"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".8222")
  %"fmul.338" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".8223" = bitcast ptr %"R5" to ptr
  store float %"fmul.338", ptr %".8223"
  ; MOV R7, 0x3f800000
  %".8226" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".8226"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".8229" = load float, ptr %"R21"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".8229")
  %".8230" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".8231" = and i1 %"fcmp_unordered.3", %".8230"
  store i1 %".8231", ptr %"P0"
  ; MUFU.EX2 R5, R5
  %".8234" = load float, ptr %"R5"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".8234")
  %".8235" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.5", ptr %".8235"
  ; FADD R6, R5, 1
  %".8238" = load float, ptr %"R5"
  %"fadd.297" = fadd float %".8238", 0x3ff0000000000000
  %".8239" = bitcast ptr %"R6" to ptr
  store float %"fadd.297", ptr %".8239"
  ; MUFU.RCP R6, R6
  %".8242" = load float, ptr %"R6"
  %".8243" = fdiv float 0x3ff0000000000000, %".8242"
  %".8244" = bitcast ptr %"R6" to ptr
  store float %".8243", ptr %".8244"
  ; FFMA R4, R6, -2, R7
  %".8247" = load float, ptr %"R6"
  %".8248" = load float, ptr %"R7"
  %"fmul.339" = fmul float %".8247", 0xc000000000000000
  %"fadd.298" = fadd float %"fmul.339", %".8248"
  %".8249" = bitcast ptr %"R4" to ptr
  store float %"fadd.298", ptr %".8249"
  ; FSEL R4, R4, 1, !P0
  %".8252" = load float, ptr %"R4"
  %".8253" = load i1, ptr %"P0"
  %".8254" = icmp eq i1 %".8253", 1
  %"fsel.1" = select  i1 %".8254", float %".8252", float 0x3ff0000000000000
  %".8255" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".8255"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".8258" = load float, ptr %"R4"
  %".8259" = load float, ptr %"R21"
  %".8260" = bitcast float %".8258" to i32
  %".8261" = bitcast float 0x41e0000000000000 to i32
  %".8262" = bitcast float %".8259" to i32
  %".8263" = or i32 %".8260", %".8261"
  %".8264" = or i32 %".8260", %".8262"
  %".8265" = and i32 %".8263", %".8264"
  store i32 %".8265", ptr %"R4"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  %".8270" = bitcast ptr %"R5" to ptr
  store float 0x41ce407840000000, ptr %".8270"
  ; FMUL R4, R21, R21
  %".8273" = load float, ptr %"R21"
  %".8274" = load float, ptr %"R21"
  %"fmul.340" = fmul float %".8273", %".8274"
  %".8275" = bitcast ptr %"R4" to ptr
  store float %"fmul.340", ptr %".8275"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".8278" = load float, ptr %"R4"
  %".8279" = load float, ptr %"R5"
  %"fmul.341" = fmul float %".8278", %".8279"
  %"fadd.299" = fadd float %"fmul.341", 0xbfaac795c0000000
  %".8280" = bitcast ptr %"R5" to ptr
  store float %"fadd.299", ptr %".8280"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".8283" = load float, ptr %"R4"
  %".8284" = load float, ptr %"R5"
  %"fmul.342" = fmul float %".8283", %".8284"
  %"fadd.300" = fadd float %"fmul.342", 0x3fc10b2820000000
  %".8285" = bitcast ptr %"R5" to ptr
  store float %"fadd.300", ptr %".8285"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".8288" = load float, ptr %"R4"
  %".8289" = load float, ptr %"R5"
  %"fmul.343" = fmul float %".8288", %".8289"
  %"fadd.301" = fadd float %"fmul.343", 0xbfd5553da0000000
  %".8290" = bitcast ptr %"R5" to ptr
  store float %"fadd.301", ptr %".8290"
  ; FFMA R4, R4, R5, RZ
  %".8293" = load float, ptr %"R4"
  %".8294" = load float, ptr %"R5"
  %"fmul.344" = fmul float %".8293", %".8294"
  %"fadd.302" = fadd float %"fmul.344",              0x0
  %".8295" = bitcast ptr %"R4" to ptr
  store float %"fadd.302", ptr %".8295"
  ; FFMA R4, R21, R4, R21
  %".8298" = load float, ptr %"R21"
  %".8299" = load float, ptr %"R4"
  %".8300" = load float, ptr %"R21"
  %"fmul.345" = fmul float %".8298", %".8299"
  %"fadd.303" = fadd float %"fmul.345", %".8300"
  %".8301" = bitcast ptr %"R4" to ptr
  store float %"fadd.303", ptr %".8301"
  br label %".L_x_43"
.L_x_43:
  ; BSYNC B0
  br label %".L_x_41"
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  %".8307" = load i32, ptr %"R23"
  %"add.346" = add i32 %".8307", 25165824
  %"add.347" = add i32 %"add.346", 0
  store i32 %"add.347", ptr %"R5"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".8312" = load i32, ptr %"R5"
  %".8313" = and i32 %".8312", 2139095040
  store i32 %".8313", ptr %"R5"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".8316" = load i32, ptr %"R5"
  %".8317" = load i1, ptr %"PT"
  %"cmp.67" = icmp sgt i32 %".8316", 33554431
  %".8318" = and i1 %"cmp.67", %".8317"
  store i1 %".8318", ptr %"P0"
  ; @P0 BRA `(.L_x_45)
  %".8321" = load i1, ptr %"P0"
  %".8322" = icmp ne i1 %".8321", 1
  br i1 %".8322", label %".L_x_45", label %".L_x_41_split_0x47f0_CALL_0x4830"
.L_x_41_split_0x47f0_CALL_0x4830:
  ; MOV R24, R23
  %".8325" = load float, ptr %"R23"
  %".8326" = bitcast ptr %"R24" to ptr
  store float %".8325", ptr %".8326"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...4:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".8333" = icmp ult i32 1, 32
  %"SHF_min.30" = select  i1 %".8333", i32 1, i32 32
  %".8334" = load i32, ptr %"R24"
  %"zext.963" = zext i32 0 to i64
  %"zext.964" = zext i32 %".8334" to i64
  %"zext.965" = zext i32 1 to i64
  %"shl.411" = shl i64 %"zext.963", 32
  %"or.376" = or i64 %"shl.411", %"zext.964"
  %"shl.412" = shl i64 %"or.376", %"zext.965"
  %"and.19" = and i64 %"shl.412", 4294967295
  %"trunc32.210" = trunc i64 %"and.19" to i32
  store i32 %"trunc32.210", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".8339" = icmp ult i32 24, 32
  %"SHF_min.31" = select  i1 %".8339", i32 24, i32 32
  %".8340" = load i32, ptr %"R11"
  %"zext.966" = zext i32 %".8340" to i64
  %"zext.967" = zext i32 0 to i64
  %"zext.968" = zext i32 24 to i64
  %"shl.413" = shl i64 %"zext.966", 32
  %"or.377" = or i64 %"shl.413", %"zext.967"
  %"lshr.19" = lshr i64 %"or.377", %"zext.968"
  %"lshr.20" = lshr i64 %"lshr.19", 32
  %"trunc32.211" = trunc i64 %"lshr.20" to i32
  store i32 %"trunc32.211", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".8343" = load i32, ptr %"R25"
  %".8344" = load i1, ptr %"PT"
  %"cmp.68" = icmp ne i32 %".8343", 0
  %".8345" = and i1 %"cmp.68", %".8344"
  store i1 %".8345", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".8348" = load i1, ptr %"P0"
  %".8349" = icmp ne i1 %".8348", 1
  br i1 %".8349", label %".L_x_49...4", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".8352" = icmp ult i32 1, 32
  %"SHF_min.32" = select  i1 %".8352", i32 1, i32 32
  %".8353" = load i32, ptr %"R24"
  %"zext.969" = zext i32 0 to i64
  %"zext.970" = zext i32 %".8353" to i64
  %"zext.971" = zext i32 1 to i64
  %"shl.414" = shl i64 %"zext.969", 32
  %"or.378" = or i64 %"shl.414", %"zext.970"
  %"shl.415" = shl i64 %"or.378", %"zext.971"
  %"and.20" = and i64 %"shl.415", 4294967295
  %"trunc32.212" = trunc i64 %"and.20" to i32
  store i32 %"trunc32.212", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".8356" = load i32, ptr %"R11"
  %".8357" = load i1, ptr %"PT"
  %"cmp.69" = icmp ne i32 %".8356", 0
  %".8358" = and i1 %"cmp.69", %".8357"
  store i1 %".8358", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".8361" = load i1, ptr %"P0"
  %".8362" = icmp ne i1 %".8361", 1
  br i1 %".8362", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".8365" = load float, ptr %"R24"
  %"fmul.346" = fmul float %".8365", 0x43f0000000000000
  %"fadd.304" = fadd float %"fmul.346",              0x0
  %".8366" = bitcast ptr %"R12" to ptr
  store float %"fadd.304", ptr %".8366"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".8371" = load float, ptr %"R24"
  %"fmul.347" = fmul float %".8371", 0x43f0000000000000
  %"fadd.305" = fadd float %"fmul.347",              0x0
  %".8372" = bitcast ptr %"R12" to ptr
  store float %"fadd.305", ptr %".8372"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4:
  ; @!P0 MUFU.RCP R11, R24
  %".8377" = load i1, ptr %"P0"
  %".8378" = icmp eq i1 %".8377", 1
  br i1 %".8378", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".8381" = load i32, ptr %"R24"
  %"sint_to_f32.3" = sitofp i32 %".8381" to float
  %".8382" = fdiv float 0x3ff0000000000000, %"sint_to_f32.3"
  %".8383" = fptosi float %".8382" to i32
  store i32 %".8383", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4:
  ; MUFU.RCP R11, R24
  %".8388" = load i32, ptr %"R24"
  %"sint_to_f32.4" = sitofp i32 %".8388" to float
  %".8389" = fdiv float 0x3ff0000000000000, %"sint_to_f32.4"
  %".8390" = fptosi float %".8389" to i32
  store i32 %".8390", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4:
  ; @P0 MUFU.RCP R13, R12
  %".8395" = load i1, ptr %"P0"
  %".8396" = icmp ne i1 %".8395", 1
  br i1 %".8396", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".8399" = load float, ptr %"R12"
  %".8400" = fdiv float 0x3ff0000000000000, %".8399"
  %".8401" = bitcast ptr %"R13" to ptr
  store float %".8400", ptr %".8401"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4:
  ; MUFU.RCP R13, R12
  %".8406" = load float, ptr %"R12"
  %".8407" = fdiv float 0x3ff0000000000000, %".8406"
  %".8408" = bitcast ptr %"R13" to ptr
  store float %".8407", ptr %".8408"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4:
  ; @P0 FFMA R22, R12, R13, -1
  %".8413" = load i1, ptr %"P0"
  %".8414" = icmp ne i1 %".8413", 1
  br i1 %".8414", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".8417" = load float, ptr %"R12"
  %".8418" = load float, ptr %"R13"
  %"fmul.348" = fmul float %".8417", %".8418"
  %"fadd.306" = fadd float %"fmul.348", 0xbff0000000000000
  %".8419" = bitcast ptr %"R22" to ptr
  store float %"fadd.306", ptr %".8419"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4:
  ; FFMA R22, R12, R13, -1
  %".8424" = load float, ptr %"R12"
  %".8425" = load float, ptr %"R13"
  %"fmul.349" = fmul float %".8424", %".8425"
  %"fadd.307" = fadd float %"fmul.349", 0xbff0000000000000
  %".8426" = bitcast ptr %"R22" to ptr
  store float %"fadd.307", ptr %".8426"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".8431" = load i1, ptr %"P0"
  %".8432" = icmp ne i1 %".8431", 1
  br i1 %".8432", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".8435" = load float, ptr %"R22"
  %".8436" = fneg float %".8435"
  %"fadd.308" = fadd float %".8436",              0x0
  %".8437" = bitcast ptr %"R22" to ptr
  store float %"fadd.308", ptr %".8437"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4:
  ; FADD.FTZ R22, -R22, -RZ
  %".8442" = load float, ptr %"R22"
  %".8443" = fneg float %".8442"
  %"fadd.309" = fadd float %".8443",              0x0
  %".8444" = bitcast ptr %"R22" to ptr
  store float %"fadd.309", ptr %".8444"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4:
  ; @P0 FFMA R22, R13, R22, R13
  %".8449" = load i1, ptr %"P0"
  %".8450" = icmp ne i1 %".8449", 1
  br i1 %".8450", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".8453" = load float, ptr %"R13"
  %".8454" = load float, ptr %"R22"
  %".8455" = load float, ptr %"R13"
  %"fmul.350" = fmul float %".8453", %".8454"
  %"fadd.310" = fadd float %"fmul.350", %".8455"
  %".8456" = bitcast ptr %"R22" to ptr
  store float %"fadd.310", ptr %".8456"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4:
  ; FFMA R22, R13, R22, R13
  %".8461" = load float, ptr %"R13"
  %".8462" = load float, ptr %"R22"
  %".8463" = load float, ptr %"R13"
  %"fmul.351" = fmul float %".8461", %".8462"
  %"fadd.311" = fadd float %"fmul.351", %".8463"
  %".8464" = bitcast ptr %"R22" to ptr
  store float %"fadd.311", ptr %".8464"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8469" = load i1, ptr %"P0"
  %".8470" = icmp ne i1 %".8469", 1
  br i1 %".8470", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8473" = load float, ptr %"R22"
  %"fmul.352" = fmul float %".8473", 0x43f0000000000000
  %"fadd.312" = fadd float %"fmul.352",              0x0
  %".8474" = bitcast ptr %"R11" to ptr
  store float %"fadd.312", ptr %".8474"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8479" = load float, ptr %"R22"
  %"fmul.353" = fmul float %".8479", 0x43f0000000000000
  %"fadd.313" = fadd float %"fmul.353",              0x0
  %".8480" = bitcast ptr %"R11" to ptr
  store float %"fadd.313", ptr %".8480"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...4:
  ; BRA `(.L_x_50)
  br label %".L_x_50...4"
.L_x_49...4:
  ; IADD3 R34, R25, -0xfd, RZ
  %".8487" = load i32, ptr %"R25"
  %"add.348" = add i32 %".8487", -253
  %"add.349" = add i32 %"add.348", 0
  store i32 %"add.349", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".8490" = load i32, ptr %"R34"
  %".8491" = load i1, ptr %"PT"
  %"cmp.70" = icmp sgt i32 %".8490", 1
  %".8492" = and i1 %"cmp.70", %".8491"
  store i1 %".8492", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".8495" = load i1, ptr %"P0"
  %".8496" = icmp ne i1 %".8495", 1
  br i1 %".8496", label %".L_x_51...4", label %".L_x_49_split_0x4a30...4"
.L_x_49_split_0x4a30...4:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".8499" = load i32, ptr %"R24"
  %".8500" = and i32 %".8499", 8388607
  store i32 %".8500", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".8505" = load i32, ptr %"R11"
  %".8506" = or i32 %".8505", 1065353216
  store i32 %".8506", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".8509" = load i32, ptr %"R34"
  %".8510" = icmp ult i32 %".8509", 32
  %"SHF_min.33" = select  i1 %".8510", i32 %".8509", i32 32
  %".8511" = load i32, ptr %"R23"
  %".8512" = load i32, ptr %"R34"
  %"zext.972" = zext i32 0 to i64
  %"zext.973" = zext i32 %".8511" to i64
  %"zext.974" = zext i32 %".8512" to i64
  %"shl.416" = shl i64 %"zext.972", 32
  %"or.379" = or i64 %"shl.416", %"zext.973"
  %"shl.417" = shl i64 %"or.379", %"zext.974"
  %"and.21" = and i64 %"shl.417", 4294967295
  %"trunc32.213" = trunc i64 %"and.21" to i32
  store i32 %"trunc32.213", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".8515" = load float, ptr %"R11"
  %".8516" = fdiv float 0x3ff0000000000000, %".8515"
  %".8517" = bitcast ptr %"R12" to ptr
  store float %".8516", ptr %".8517"
  ; FFMA R13, R11, R12, -1
  %".8520" = load float, ptr %"R11"
  %".8521" = load float, ptr %"R12"
  %"fmul.354" = fmul float %".8520", %".8521"
  %"fadd.314" = fadd float %"fmul.354", 0xbff0000000000000
  %".8522" = bitcast ptr %"R13" to ptr
  store float %"fadd.314", ptr %".8522"
  ; FADD.FTZ R13, -R13, -RZ
  %".8525" = load float, ptr %"R13"
  %".8526" = fneg float %".8525"
  %"fadd.315" = fadd float %".8526",              0x0
  %".8527" = bitcast ptr %"R13" to ptr
  store float %"fadd.315", ptr %".8527"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".8530" = load float, ptr %"R12"
  %".8531" = load float, ptr %"R13"
  %".8532" = load float, ptr %"R12"
  %"fmul.355" = fmul float %".8530", %".8531"
  %"fadd.316" = fadd float %"fmul.355", %".8532"
  %".8533" = bitcast ptr %"R22" to ptr
  store float %"fadd.316", ptr %".8533"
  ; FFMA.RP R13, R12, R13, R12
  %".8536" = load float, ptr %"R12"
  %".8537" = load float, ptr %"R13"
  %".8538" = load float, ptr %"R12"
  %"fmul.356" = fmul float %".8536", %".8537"
  %"fadd.317" = fadd float %"fmul.356", %".8538"
  %".8539" = bitcast ptr %"R13" to ptr
  store float %"fadd.317", ptr %".8539"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".8542" = load float, ptr %"R22"
  %".8543" = bitcast float %".8542" to i32
  %".8544" = and i32 %".8543", 8388607
  store i32 %".8544", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".8547" = load float, ptr %"R22"
  %".8548" = load float, ptr %"R13"
  %".8549" = load i1, ptr %"PT"
  %"fcmp_ordered.3" = fcmp une float %".8547", %".8548"
  %".8550" = and i1 %"fcmp_ordered.3", %".8549"
  store i1 %".8550", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".8553" = load i32, ptr %"R12"
  %".8554" = or i32 %".8553", 8388608
  store i32 %".8554", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".8557" = load i1, ptr %"P0"
  %".8558" = icmp eq i1 %".8557", 1
  %"sel.6" = select  i1 %".8558", i32 0, i32 4294967295
  store i32 %"sel.6", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".8561" = load i32, ptr %"R23"
  %".8562" = load i32, ptr %"R12"
  %".8563" = and i32 %".8561", %".8562"
  store i32 %".8563", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".8566" = load i32, ptr %"R13"
  %".8567" = sub i32 0, %".8566"
  %"add.350" = add i32 %".8567", 0
  %"add.351" = add i32 %"add.350", 0
  store i32 %"add.351", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".8570" = load i32, ptr %"R34"
  %".8571" = icmp ult i32 %".8570", 32
  %"SHF_min.34" = select  i1 %".8571", i32 %".8570", i32 32
  %".8572" = load i32, ptr %"R23"
  %".8573" = load i32, ptr %"R34"
  %"zext.975" = zext i32 %".8572" to i64
  %"zext.976" = zext i32 0 to i64
  %"zext.977" = zext i32 %".8573" to i64
  %"shl.418" = shl i64 %"zext.975", 32
  %"or.380" = or i64 %"shl.418", %"zext.976"
  %"lshr.21" = lshr i64 %"or.380", %"zext.977"
  %"lshr.22" = lshr i64 %"lshr.21", 32
  %"trunc32.214" = trunc i64 %"lshr.22" to i32
  store i32 %"trunc32.214", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".8576" = load i32, ptr %"R13"
  %".8577" = load i32, ptr %"R34"
  %".8578" = load i32, ptr %"R12"
  %"LOP3_result.12" = call i32 @"custom_lop3"(i32 %".8578", i32 0, i32 %".8576", i32 %".8577")
  %".8579" = trunc i32 %"LOP3_result.12" to i1
  store i1 %".8579", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".8582" = load i32, ptr %"R23"
  %"LOP3_result.13" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".8582", i32 1)
  %".8583" = trunc i32 %"LOP3_result.13" to i1
  store i1 %".8583", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".8586" = load i32, ptr %"R23"
  %"LOP3_result.14" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".8586", i32 2)
  %".8587" = trunc i32 %"LOP3_result.14" to i1
  store i1 %".8587", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".8590" = load i1, ptr %"P0"
  %".8591" = sub i1 0, %".8590"
  %".8592" = load i1, ptr %"P1"
  %".8593" = sub i1 0, %".8592"
  %".8594" = or i1 %".8591", %".8593"
  %".8595" = and i1 %".8594", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".8597" = load i32, ptr %"R24"
  %"LOP3_result.15" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".8597", i32 8388607)
  %".8598" = trunc i32 %"LOP3_result.15" to i1
  store i1 %".8598", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".8601" = load i1, ptr %"P0"
  %".8602" = icmp eq i1 %".8601", 1
  %"sel.7" = select  i1 %".8602", i32 0, i32 1
  store i32 %"sel.7", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".8605" = load i32, ptr %"R11"
  %".8606" = sub i32 0, %".8605"
  %"add.352" = add i32 %".8606", 0
  %"add.353" = add i32 %"add.352", 0
  store i32 %"add.353", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".8609" = load i32, ptr %"R11"
  %".8610" = load i1, ptr %"PT"
  %"cmp.71" = icmp sge i32 %".8609", 0
  %".8611" = and i1 %"cmp.71", %".8610"
  store i1 %".8611", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".8614" = load i32, ptr %"R25"
  %"add.354" = add i32 %".8614", -252
  %"add.355" = add i32 %"add.354", 0
  store i32 %"add.355", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".8617" = load i32, ptr %"R11"
  %".8618" = icmp ult i32 %".8617", 32
  %"SHF_min.35" = select  i1 %".8618", i32 %".8617", i32 32
  %".8619" = load i32, ptr %"R12"
  %".8620" = load i32, ptr %"R11"
  %"zext.978" = zext i32 %".8619" to i64
  %"zext.979" = zext i32 0 to i64
  %"zext.980" = zext i32 %".8620" to i64
  %"shl.419" = shl i64 %"zext.978", 32
  %"or.381" = or i64 %"shl.419", %"zext.979"
  %"lshr.23" = lshr i64 %"or.381", %"zext.980"
  %"lshr.24" = lshr i64 %"lshr.23", 32
  %"trunc32.215" = trunc i64 %"lshr.24" to i32
  store i32 %"trunc32.215", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".8623" = load i1, ptr %"P0"
  %".8624" = icmp eq i1 %".8623", 1
  br i1 %".8624", label %".L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4"
.L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".8627" = load i32, ptr %"R11"
  %"add.356" = add i32 %".8627", 1
  %"add.357" = add i32 %"add.356", 0
  store i32 %"add.357", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4:
  ; IADD3 R11, R11, 0x1, RZ
  %".8632" = load i32, ptr %"R11"
  %"add.358" = add i32 %".8632", 1
  %"add.359" = add i32 %"add.358", 0
  store i32 %"add.359", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...4"
.L_x_49_split_0x4be0...4:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".8637" = load i1, ptr %"P1"
  %".8638" = icmp eq i1 %".8637", 1
  br i1 %".8638", label %".L_x_49_split_0x4be0...4_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...4"
.L_x_49_split_0x4be0...4_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".8641" = icmp ult i32 1, 32
  %"SHF_min.36" = select  i1 %".8641", i32 1, i32 32
  %".8642" = load i32, ptr %"R11"
  %"zext.981" = zext i32 0 to i64
  %"zext.982" = zext i32 %".8642" to i64
  %"zext.983" = zext i32 1 to i64
  %"shl.420" = shl i64 %"zext.981", 32
  %"or.382" = or i64 %"shl.420", %"zext.982"
  %"shl.421" = shl i64 %"or.382", %"zext.983"
  %"and.22" = and i64 %"shl.421", 4294967295
  %"trunc32.216" = trunc i64 %"and.22" to i32
  store i32 %"trunc32.216", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...4)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...4"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...4:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".8647" = icmp ult i32 1, 32
  %"SHF_min.37" = select  i1 %".8647", i32 1, i32 32
  %".8648" = load i32, ptr %"R11"
  %"zext.984" = zext i32 0 to i64
  %"zext.985" = zext i32 %".8648" to i64
  %"zext.986" = zext i32 1 to i64
  %"shl.422" = shl i64 %"zext.984", 32
  %"or.383" = or i64 %"shl.422", %"zext.985"
  %"shl.423" = shl i64 %"or.383", %"zext.986"
  %"and.23" = and i64 %"shl.423", 4294967295
  %"trunc32.217" = trunc i64 %"and.23" to i32
  store i32 %"trunc32.217", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...4"
.L_x_49_split_0x4bf0...4:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".8653" = load i32, ptr %"R11"
  %".8654" = load i32, ptr %"R24"
  %".8655" = or i32 %".8653", 2147483648
  %".8656" = or i32 %".8653", %".8654"
  %".8657" = and i32 %".8655", %".8656"
  store i32 %".8657", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...4"
.L_x_51...4:
  ; MUFU.RCP R11, R24
  %".8662" = load i32, ptr %"R24"
  %"sint_to_f32.5" = sitofp i32 %".8662" to float
  %".8663" = fdiv float 0x3ff0000000000000, %"sint_to_f32.5"
  %".8664" = fptosi float %".8663" to i32
  store i32 %".8664", ptr %"R11"
  br label %".L_x_50...4"
.L_x_50...4:
  ; BSYNC B1
  br label %".L_x_48...4"
.L_x_48...4:
  ; MOV R22, R11
  %".8670" = load i32, ptr %"R11"
  store i32 %".8670", ptr %"R22"
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
  %".8680" = load i32, ptr %"R22"
  store i32 %".8680", ptr %"R5"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".8685" = load float, ptr %"R23"
  %".8686" = fdiv float 0x3ff0000000000000, %".8685"
  %".8687" = bitcast ptr %"R6" to ptr
  store float %".8686", ptr %".8687"
  ; FFMA R5, R23, R6, -1
  %".8690" = load float, ptr %"R23"
  %".8691" = load float, ptr %"R6"
  %"fmul.357" = fmul float %".8690", %".8691"
  %"fadd.318" = fadd float %"fmul.357", 0xbff0000000000000
  %".8692" = bitcast ptr %"R5" to ptr
  store float %"fadd.318", ptr %".8692"
  ; FADD.FTZ R5, -R5, -RZ
  %".8695" = load float, ptr %"R5"
  %".8696" = fneg float %".8695"
  %"fadd.319" = fadd float %".8696",              0x0
  %".8697" = bitcast ptr %"R5" to ptr
  store float %"fadd.319", ptr %".8697"
  ; FFMA R5, R6, R5, R6
  %".8700" = load float, ptr %"R6"
  %".8701" = load float, ptr %"R5"
  %".8702" = load float, ptr %"R6"
  %"fmul.358" = fmul float %".8700", %".8701"
  %"fadd.320" = fadd float %"fmul.358", %".8702"
  %".8703" = bitcast ptr %"R5" to ptr
  store float %"fadd.320", ptr %".8703"
  br label %".L_x_46"
.L_x_46:
  ; BSYNC B0
  br label %".L_x_44"
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  %".8709" = load i32, ptr %"R28"
  %"zext.987" = zext i32 %".8709" to i64
  %".8710" = load i32, ptr %"R29"
  %"zext.988" = zext i32 %".8710" to i64
  %"shl.424" = shl i64 %"zext.988", 32
  %"or.384" = or i64 %"shl.424", %"zext.987"
  %".8711" = inttoptr i64 %"or.384" to ptr
  %".8712" = ptrtoint ptr %".8711" to i64
  %".8713" = add i64 %".8712", 0
  %"for_LDG.345" = inttoptr i64 %".8713" to ptr
  %".8714" = load float, ptr %"for_LDG.345"
  %".8715" = bitcast ptr %"R6" to ptr
  store float %".8714", ptr %".8715"
  ; FADD R7, -R5, 1
  %".8718" = load float, ptr %"R5"
  %".8719" = fneg float %".8718"
  %"fadd.321" = fadd float %".8719", 0x3ff0000000000000
  %".8720" = bitcast ptr %"R7" to ptr
  store float %"fadd.321", ptr %".8720"
  ; FMUL R6, R6, R5
  %".8723" = load float, ptr %"R6"
  %".8724" = load float, ptr %"R5"
  %"fmul.359" = fmul float %".8723", %".8724"
  %".8725" = bitcast ptr %"R6" to ptr
  store float %"fmul.359", ptr %".8725"
  ; FFMA R7, R7, R4, R6
  %".8728" = load float, ptr %"R7"
  %".8729" = load float, ptr %"R4"
  %".8730" = load float, ptr %"R6"
  %"fmul.360" = fmul float %".8728", %".8729"
  %"fadd.322" = fadd float %"fmul.360", %".8730"
  %".8731" = bitcast ptr %"R7" to ptr
  store float %"fadd.322", ptr %".8731"
  ; STG.E.SYS [R28], R7
  %".8734" = load float, ptr %"R7"
  %".8735" = load i32, ptr %"R28"
  %"zext.989" = zext i32 %".8735" to i64
  %".8736" = load i32, ptr %"R29"
  %"zext.990" = zext i32 %".8736" to i64
  %"shl.425" = shl i64 %"zext.990", 32
  %"or.385" = or i64 %"shl.425", %"zext.989"
  %".8737" = inttoptr i64 %"or.385" to ptr
  %".8738" = ptrtoint ptr %".8737" to i64
  %".8739" = add i64 %".8738", 0
  %"for_STG.1" = inttoptr i64 %".8739" to ptr
  store float %".8734", ptr %"for_STG.1"
  ; @!P3 BRA `(.L_x_47)
  %".8742" = load i1, ptr %"P3"
  %".8743" = icmp eq i1 %".8742", 1
  br i1 %".8743", label %".L_x_47", label %".L_x_44_split_0x48f0"
.L_x_44_split_0x48f0:
  ; EXIT
  br label %"ExitFunction"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

declare float @"llvm.exp2.f32"(float %".1")

declare float @"llvm.fabs"(float %".1")

