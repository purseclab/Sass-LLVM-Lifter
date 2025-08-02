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

define void @"_Z8fc_layerPfS_S_S_ii"(i32 %"Arg_0", i32 %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4", i32 %"Arg_5")
{
Entry_.text._Z8fc_layerPfS_S_S_ii:
  %"R1" = alloca i32, i32 1
  %"R0" = alloca i32, i32 1
  %"R3" = alloca i32, i32 1
  %"P0" = alloca i1, i32 1
  %"PT" = alloca i1, i32 1
  %"R4" = alloca i32, i32 1
  %"R7" = alloca i32, i32 1
  %"RZ" = alloca i32, i32 1
  %"R2" = alloca i32, i32 1
  %"R5" = alloca i32, i32 1
  %"R6" = alloca i32, i32 1
  %"UR4" = alloca i32, i32 1
  %"P1" = alloca i1, i32 1
  %"R8" = alloca i32, i32 1
  %"R9" = alloca i32, i32 1
  %"R11" = alloca i32, i32 1
  %"R10" = alloca i32, i32 1
  %"R13" = alloca i32, i32 1
  %"R12" = alloca i32, i32 1
  %"R15" = alloca i32, i32 1
  %"R14" = alloca i32, i32 1
  %"R17" = alloca i32, i32 1
  %"R16" = alloca i32, i32 1
  %"R19" = alloca i32, i32 1
  %"R18" = alloca i32, i32 1
  %"R21" = alloca i32, i32 1
  %"R20" = alloca i32, i32 1
  %"R23" = alloca i32, i32 1
  %"R22" = alloca i32, i32 1
  %"R25" = alloca i32, i32 1
  %"R24" = alloca i32, i32 1
  %"R27" = alloca i32, i32 1
  %"R26" = alloca i32, i32 1
  %"R29" = alloca i32, i32 1
  %"R28" = alloca i32, i32 1
  %"R31" = alloca i32, i32 1
  %"R30" = alloca i32, i32 1
  %"R33" = alloca i32, i32 1
  %"R32" = alloca i32, i32 1
  %"R35" = alloca i32, i32 1
  %"R34" = alloca i32, i32 1
  %"R37" = alloca i32, i32 1
  %"R36" = alloca i32, i32 1
  %"R39" = alloca i32, i32 1
  %"R38" = alloca i32, i32 1
  %"UP0" = alloca i1, i32 1
  %"URZ" = alloca i32, i32 1
  %"UR5" = alloca i32, i32 1
  %"UPT" = alloca i1, i32 1
  %"P2" = alloca i1, i32 1
  ; MOV R1, c[0x0][0x28]
  store i32 0, ptr %"R1"
  ; S2R R0, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R0"
  ; S2R R3, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R3"
  ; IMAD R0, R0, c[0x0][0x0], R3
  %".16" = load i32, ptr %"R0"
  %".17" = load i32, ptr %"R3"
  %"mul" = mul i32 %".16", 0
  %"add" = add i32 %"mul", %".17"
  store i32 %"add", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, c[0x0][0x184], PT
  %".20" = load i32, ptr %"R0"
  %".21" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".20", %"Arg_5"
  %".22" = and i1 %"cmp", %".21"
  store i1 %".22", ptr %"P0"
  ; @P0 EXIT
  %".25" = load i1, ptr %"P0"
  %".26" = icmp ne i1 %".25", 1
  br i1 %".26", label %".text._Z8fc_layerPfS_S_S_ii_conditionalExpr_0x0050", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0060"
.text._Z8fc_layerPfS_S_S_ii_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z8fc_layerPfS_S_S_ii_split_0x0060:
  ; MOV R4, c[0x0][0x180]
  store i32 %"Arg_4", ptr %"R4"
  ; IMAD.MOV.U32 R7, RZ, RZ, RZ
  %"mul.1" = mul i32 0, 0
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", ptr %"R7"
  ; ISETP.GE.AND P0, PT, R4, 0x1, PT
  %".35" = load i32, ptr %"R4"
  %".36" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".35", 1
  %".37" = and i1 %"cmp.1", %".36"
  store i1 %".37", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".40" = load i1, ptr %"P0"
  %".41" = icmp eq i1 %".40", 1
  br i1 %".41", label %".L_x_0", label %".text._Z8fc_layerPfS_S_S_ii_split_0x00a0"
.text._Z8fc_layerPfS_S_S_ii_split_0x00a0:
  ; IADD3 R2, R4.reuse, -0x1, RZ
  %".44" = load i32, ptr %"R4"
  %"add.2" = add i32 %".44", -1
  %"add.3" = add i32 %"add.2", 0
  store i32 %"add.3", ptr %"R2"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".47" = load i32, ptr %"R4"
  %".48" = and i32 %".47", 3
  store i32 %".48", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".51" = load i32, ptr %"R2"
  %".52" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".51", 3
  %".53" = and i1 %"cmp.2", %".52"
  store i1 %".53", ptr %"P0"
  ; MOV R7, RZ
  %".56" = load float, ptr %"RZ"
  %".57" = bitcast ptr %"R7" to ptr
  store float %".56", ptr %".57"
  ; MOV R5, RZ
  %".60" = load i32, ptr %"RZ"
  store i32 %".60", ptr %"R5"
  ; @!P0 BRA `(.L_x_1)
  %".63" = load i1, ptr %"P0"
  %".64" = icmp eq i1 %".63", 1
  br i1 %".64", label %".L_x_1", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
.text._Z8fc_layerPfS_S_S_ii_split_0x0100:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".67" = load i32, ptr %"R4"
  %".68" = sub i32 0, %".67"
  %"add.4" = add i32 %".68", %"Arg_4"
  %"add.5" = add i32 %"add.4", 0
  store i32 %"add.5", ptr %"R6"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".71" = load i32, ptr %"R0"
  %"mul.2" = mul i32 %".71", %"Arg_4"
  %"add.6" = add i32 %"mul.2", 0
  store i32 %"add.6", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x160]
  store i32 %"Arg_0", ptr %"UR4"
  ; IMAD.MOV.U32 R3, RZ, RZ, 0x4
  %"mul.3" = mul i32 0, 0
  %"add.7" = add i32 %"mul.3", 4
  store i32 %"add.7", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R6, RZ, PT
  %".78" = load i32, ptr %"R6"
  %".79" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".78", 0
  %".80" = and i1 %"cmp.3", %".79"
  store i1 %".80", ptr %"P0"
  ; MOV R7, RZ
  %".83" = load float, ptr %"RZ"
  %".84" = bitcast ptr %"R7" to ptr
  store float %".83", ptr %".84"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".87" = load i32, ptr %"R2"
  %".88" = load i32, ptr %"R3"
  %"mul.4" = mul i32 %".87", %".88"
  %"add.8" = add i32 %"mul.4", %"Arg_1"
  store i32 %"add.8", ptr %"R2"
  ; MOV R5, RZ
  %".91" = load i32, ptr %"RZ"
  store i32 %".91", ptr %"R5"
  ; @!P0 BRA `(.L_x_2)
  %".94" = load i1, ptr %"P0"
  %".95" = icmp eq i1 %".94", 1
  br i1 %".95", label %".L_x_2", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".98" = load i32, ptr %"R6"
  %".99" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".98", 12
  %".100" = and i1 %"cmp.4", %".99"
  store i1 %".100", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".103" = and i1 1, 1
  %".104" = or i1 %".103", 1
  ; @!P1 BRA `(.L_x_3)
  %".106" = load i1, ptr %"P1"
  %".107" = icmp eq i1 %".106", 1
  br i1 %".107", label %".L_x_3", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".110" = xor i1 1, 1
  %".111" = and i1 %".110", 1
  %".112" = and i1 %".111", 1
  br label %".L_x_4"
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".115" = load i32, ptr %"R2"
  %"zext" = zext i32 %".115" to i64
  %".116" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".116" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %".117" = inttoptr i64 %"or" to ptr
  %".118" = ptrtoint ptr %".117" to i64
  %".119" = add i64 %".118", 0
  %"for_LDG" = inttoptr i64 %".119" to ptr
  %".120" = load float, ptr %"for_LDG"
  %".121" = bitcast ptr %"R8" to ptr
  store float %".120", ptr %".121"
  ; LDG.E.SYS R9, [UR4]
  %".124" = load i32, ptr %"UR4"
  %"zext.2" = zext i32 %".124" to i64
  %".125" = load i32, ptr %"UR5"
  %"zext.3" = zext i32 %".125" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %".126" = inttoptr i64 %"or.1" to ptr
  %".127" = ptrtoint ptr %".126" to i64
  %".128" = add i64 %".127", 0
  %"for_LDG.1" = inttoptr i64 %".128" to ptr
  %".129" = load float, ptr %"for_LDG.1"
  %".130" = bitcast ptr %"R9" to ptr
  store float %".129", ptr %".130"
  ; LDG.E.SYS R11, [R2+0x4]
  %".133" = load i32, ptr %"R2"
  %"zext.4" = zext i32 %".133" to i64
  %".134" = load i32, ptr %"R3"
  %"zext.5" = zext i32 %".134" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %".135" = inttoptr i64 %"or.2" to ptr
  %".136" = ptrtoint ptr %".135" to i64
  %".137" = add i64 %".136", 4
  %"for_LDG.2" = inttoptr i64 %".137" to ptr
  %".138" = load float, ptr %"for_LDG.2"
  %".139" = bitcast ptr %"R11" to ptr
  store float %".138", ptr %".139"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".142" = load i32, ptr %"UR4"
  %"zext.6" = zext i32 %".142" to i64
  %".143" = load i32, ptr %"UR5"
  %"zext.7" = zext i32 %".143" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %".144" = inttoptr i64 %"or.3" to ptr
  %".145" = ptrtoint ptr %".144" to i64
  %".146" = add i64 %".145", 4
  %"for_LDG.3" = inttoptr i64 %".146" to ptr
  %".147" = load float, ptr %"for_LDG.3"
  %".148" = bitcast ptr %"R10" to ptr
  store float %".147", ptr %".148"
  ; LDG.E.SYS R13, [R2+0x8]
  %".151" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".151" to i64
  %".152" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".152" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %".153" = inttoptr i64 %"or.4" to ptr
  %".154" = ptrtoint ptr %".153" to i64
  %".155" = add i64 %".154", 8
  %"for_LDG.4" = inttoptr i64 %".155" to ptr
  %".156" = load float, ptr %"for_LDG.4"
  %".157" = bitcast ptr %"R13" to ptr
  store float %".156", ptr %".157"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".160" = load i32, ptr %"UR4"
  %"zext.10" = zext i32 %".160" to i64
  %".161" = load i32, ptr %"UR5"
  %"zext.11" = zext i32 %".161" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %".162" = inttoptr i64 %"or.5" to ptr
  %".163" = ptrtoint ptr %".162" to i64
  %".164" = add i64 %".163", 8
  %"for_LDG.5" = inttoptr i64 %".164" to ptr
  %".165" = load float, ptr %"for_LDG.5"
  %".166" = bitcast ptr %"R12" to ptr
  store float %".165", ptr %".166"
  ; LDG.E.SYS R15, [R2+0xc]
  %".169" = load i32, ptr %"R2"
  %"zext.12" = zext i32 %".169" to i64
  %".170" = load i32, ptr %"R3"
  %"zext.13" = zext i32 %".170" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %".171" = inttoptr i64 %"or.6" to ptr
  %".172" = ptrtoint ptr %".171" to i64
  %".173" = add i64 %".172", 12
  %"for_LDG.6" = inttoptr i64 %".173" to ptr
  %".174" = load float, ptr %"for_LDG.6"
  %".175" = bitcast ptr %"R15" to ptr
  store float %".174", ptr %".175"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".178" = load i32, ptr %"UR4"
  %"zext.14" = zext i32 %".178" to i64
  %".179" = load i32, ptr %"UR5"
  %"zext.15" = zext i32 %".179" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %".180" = inttoptr i64 %"or.7" to ptr
  %".181" = ptrtoint ptr %".180" to i64
  %".182" = add i64 %".181", 12
  %"for_LDG.7" = inttoptr i64 %".182" to ptr
  %".183" = load float, ptr %"for_LDG.7"
  %".184" = bitcast ptr %"R14" to ptr
  store float %".183", ptr %".184"
  ; LDG.E.SYS R17, [R2+0x10]
  %".187" = load i32, ptr %"R2"
  %"zext.16" = zext i32 %".187" to i64
  %".188" = load i32, ptr %"R3"
  %"zext.17" = zext i32 %".188" to i64
  %"shl.8" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.8", %"zext.16"
  %".189" = inttoptr i64 %"or.8" to ptr
  %".190" = ptrtoint ptr %".189" to i64
  %".191" = add i64 %".190", 16
  %"for_LDG.8" = inttoptr i64 %".191" to ptr
  %".192" = load float, ptr %"for_LDG.8"
  %".193" = bitcast ptr %"R17" to ptr
  store float %".192", ptr %".193"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".196" = load i32, ptr %"UR4"
  %"zext.18" = zext i32 %".196" to i64
  %".197" = load i32, ptr %"UR5"
  %"zext.19" = zext i32 %".197" to i64
  %"shl.9" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.9", %"zext.18"
  %".198" = inttoptr i64 %"or.9" to ptr
  %".199" = ptrtoint ptr %".198" to i64
  %".200" = add i64 %".199", 16
  %"for_LDG.9" = inttoptr i64 %".200" to ptr
  %".201" = load float, ptr %"for_LDG.9"
  %".202" = bitcast ptr %"R16" to ptr
  store float %".201", ptr %".202"
  ; LDG.E.SYS R19, [R2+0x14]
  %".205" = load i32, ptr %"R2"
  %"zext.20" = zext i32 %".205" to i64
  %".206" = load i32, ptr %"R3"
  %"zext.21" = zext i32 %".206" to i64
  %"shl.10" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.10", %"zext.20"
  %".207" = inttoptr i64 %"or.10" to ptr
  %".208" = ptrtoint ptr %".207" to i64
  %".209" = add i64 %".208", 20
  %"for_LDG.10" = inttoptr i64 %".209" to ptr
  %".210" = load float, ptr %"for_LDG.10"
  %".211" = bitcast ptr %"R19" to ptr
  store float %".210", ptr %".211"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".214" = load i32, ptr %"UR4"
  %"zext.22" = zext i32 %".214" to i64
  %".215" = load i32, ptr %"UR5"
  %"zext.23" = zext i32 %".215" to i64
  %"shl.11" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.11", %"zext.22"
  %".216" = inttoptr i64 %"or.11" to ptr
  %".217" = ptrtoint ptr %".216" to i64
  %".218" = add i64 %".217", 20
  %"for_LDG.11" = inttoptr i64 %".218" to ptr
  %".219" = load float, ptr %"for_LDG.11"
  %".220" = bitcast ptr %"R18" to ptr
  store float %".219", ptr %".220"
  ; LDG.E.SYS R21, [R2+0x18]
  %".223" = load i32, ptr %"R2"
  %"zext.24" = zext i32 %".223" to i64
  %".224" = load i32, ptr %"R3"
  %"zext.25" = zext i32 %".224" to i64
  %"shl.12" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.12", %"zext.24"
  %".225" = inttoptr i64 %"or.12" to ptr
  %".226" = ptrtoint ptr %".225" to i64
  %".227" = add i64 %".226", 24
  %"for_LDG.12" = inttoptr i64 %".227" to ptr
  %".228" = load float, ptr %"for_LDG.12"
  %".229" = bitcast ptr %"R21" to ptr
  store float %".228", ptr %".229"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".232" = load i32, ptr %"UR4"
  %"zext.26" = zext i32 %".232" to i64
  %".233" = load i32, ptr %"UR5"
  %"zext.27" = zext i32 %".233" to i64
  %"shl.13" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.13", %"zext.26"
  %".234" = inttoptr i64 %"or.13" to ptr
  %".235" = ptrtoint ptr %".234" to i64
  %".236" = add i64 %".235", 24
  %"for_LDG.13" = inttoptr i64 %".236" to ptr
  %".237" = load float, ptr %"for_LDG.13"
  %".238" = bitcast ptr %"R20" to ptr
  store float %".237", ptr %".238"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".241" = load i32, ptr %"R2"
  %"zext.28" = zext i32 %".241" to i64
  %".242" = load i32, ptr %"R3"
  %"zext.29" = zext i32 %".242" to i64
  %"shl.14" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.14", %"zext.28"
  %".243" = inttoptr i64 %"or.14" to ptr
  %".244" = ptrtoint ptr %".243" to i64
  %".245" = add i64 %".244", 28
  %"for_LDG.14" = inttoptr i64 %".245" to ptr
  %".246" = load float, ptr %"for_LDG.14"
  %".247" = bitcast ptr %"R23" to ptr
  store float %".246", ptr %".247"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".250" = load i32, ptr %"UR4"
  %"zext.30" = zext i32 %".250" to i64
  %".251" = load i32, ptr %"UR5"
  %"zext.31" = zext i32 %".251" to i64
  %"shl.15" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.15", %"zext.30"
  %".252" = inttoptr i64 %"or.15" to ptr
  %".253" = ptrtoint ptr %".252" to i64
  %".254" = add i64 %".253", 28
  %"for_LDG.15" = inttoptr i64 %".254" to ptr
  %".255" = load float, ptr %"for_LDG.15"
  %".256" = bitcast ptr %"R22" to ptr
  store float %".255", ptr %".256"
  ; LDG.E.SYS R25, [R2+0x20]
  %".259" = load i32, ptr %"R2"
  %"zext.32" = zext i32 %".259" to i64
  %".260" = load i32, ptr %"R3"
  %"zext.33" = zext i32 %".260" to i64
  %"shl.16" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.16", %"zext.32"
  %".261" = inttoptr i64 %"or.16" to ptr
  %".262" = ptrtoint ptr %".261" to i64
  %".263" = add i64 %".262", 32
  %"for_LDG.16" = inttoptr i64 %".263" to ptr
  %".264" = load float, ptr %"for_LDG.16"
  %".265" = bitcast ptr %"R25" to ptr
  store float %".264", ptr %".265"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".268" = load i32, ptr %"UR4"
  %"zext.34" = zext i32 %".268" to i64
  %".269" = load i32, ptr %"UR5"
  %"zext.35" = zext i32 %".269" to i64
  %"shl.17" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.17", %"zext.34"
  %".270" = inttoptr i64 %"or.17" to ptr
  %".271" = ptrtoint ptr %".270" to i64
  %".272" = add i64 %".271", 32
  %"for_LDG.17" = inttoptr i64 %".272" to ptr
  %".273" = load float, ptr %"for_LDG.17"
  %".274" = bitcast ptr %"R24" to ptr
  store float %".273", ptr %".274"
  ; LDG.E.SYS R27, [R2+0x24]
  %".277" = load i32, ptr %"R2"
  %"zext.36" = zext i32 %".277" to i64
  %".278" = load i32, ptr %"R3"
  %"zext.37" = zext i32 %".278" to i64
  %"shl.18" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.18", %"zext.36"
  %".279" = inttoptr i64 %"or.18" to ptr
  %".280" = ptrtoint ptr %".279" to i64
  %".281" = add i64 %".280", 36
  %"for_LDG.18" = inttoptr i64 %".281" to ptr
  %".282" = load float, ptr %"for_LDG.18"
  %".283" = bitcast ptr %"R27" to ptr
  store float %".282", ptr %".283"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".286" = load i32, ptr %"UR4"
  %"zext.38" = zext i32 %".286" to i64
  %".287" = load i32, ptr %"UR5"
  %"zext.39" = zext i32 %".287" to i64
  %"shl.19" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.19", %"zext.38"
  %".288" = inttoptr i64 %"or.19" to ptr
  %".289" = ptrtoint ptr %".288" to i64
  %".290" = add i64 %".289", 36
  %"for_LDG.19" = inttoptr i64 %".290" to ptr
  %".291" = load float, ptr %"for_LDG.19"
  %".292" = bitcast ptr %"R26" to ptr
  store float %".291", ptr %".292"
  ; LDG.E.SYS R29, [R2+0x28]
  %".295" = load i32, ptr %"R2"
  %"zext.40" = zext i32 %".295" to i64
  %".296" = load i32, ptr %"R3"
  %"zext.41" = zext i32 %".296" to i64
  %"shl.20" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.20", %"zext.40"
  %".297" = inttoptr i64 %"or.20" to ptr
  %".298" = ptrtoint ptr %".297" to i64
  %".299" = add i64 %".298", 40
  %"for_LDG.20" = inttoptr i64 %".299" to ptr
  %".300" = load float, ptr %"for_LDG.20"
  %".301" = bitcast ptr %"R29" to ptr
  store float %".300", ptr %".301"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".304" = load i32, ptr %"UR4"
  %"zext.42" = zext i32 %".304" to i64
  %".305" = load i32, ptr %"UR5"
  %"zext.43" = zext i32 %".305" to i64
  %"shl.21" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.21", %"zext.42"
  %".306" = inttoptr i64 %"or.21" to ptr
  %".307" = ptrtoint ptr %".306" to i64
  %".308" = add i64 %".307", 40
  %"for_LDG.21" = inttoptr i64 %".308" to ptr
  %".309" = load float, ptr %"for_LDG.21"
  %".310" = bitcast ptr %"R28" to ptr
  store float %".309", ptr %".310"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".313" = load i32, ptr %"R2"
  %"zext.44" = zext i32 %".313" to i64
  %".314" = load i32, ptr %"R3"
  %"zext.45" = zext i32 %".314" to i64
  %"shl.22" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.22", %"zext.44"
  %".315" = inttoptr i64 %"or.22" to ptr
  %".316" = ptrtoint ptr %".315" to i64
  %".317" = add i64 %".316", 44
  %"for_LDG.22" = inttoptr i64 %".317" to ptr
  %".318" = load float, ptr %"for_LDG.22"
  %".319" = bitcast ptr %"R31" to ptr
  store float %".318", ptr %".319"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".322" = load i32, ptr %"UR4"
  %"zext.46" = zext i32 %".322" to i64
  %".323" = load i32, ptr %"UR5"
  %"zext.47" = zext i32 %".323" to i64
  %"shl.23" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.23", %"zext.46"
  %".324" = inttoptr i64 %"or.23" to ptr
  %".325" = ptrtoint ptr %".324" to i64
  %".326" = add i64 %".325", 44
  %"for_LDG.23" = inttoptr i64 %".326" to ptr
  %".327" = load float, ptr %"for_LDG.23"
  %".328" = bitcast ptr %"R30" to ptr
  store float %".327", ptr %".328"
  ; LDG.E.SYS R33, [R2+0x30]
  %".331" = load i32, ptr %"R2"
  %"zext.48" = zext i32 %".331" to i64
  %".332" = load i32, ptr %"R3"
  %"zext.49" = zext i32 %".332" to i64
  %"shl.24" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.24", %"zext.48"
  %".333" = inttoptr i64 %"or.24" to ptr
  %".334" = ptrtoint ptr %".333" to i64
  %".335" = add i64 %".334", 48
  %"for_LDG.24" = inttoptr i64 %".335" to ptr
  %".336" = load float, ptr %"for_LDG.24"
  %".337" = bitcast ptr %"R33" to ptr
  store float %".336", ptr %".337"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".340" = load i32, ptr %"UR4"
  %"zext.50" = zext i32 %".340" to i64
  %".341" = load i32, ptr %"UR5"
  %"zext.51" = zext i32 %".341" to i64
  %"shl.25" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.25", %"zext.50"
  %".342" = inttoptr i64 %"or.25" to ptr
  %".343" = ptrtoint ptr %".342" to i64
  %".344" = add i64 %".343", 48
  %"for_LDG.25" = inttoptr i64 %".344" to ptr
  %".345" = load float, ptr %"for_LDG.25"
  %".346" = bitcast ptr %"R32" to ptr
  store float %".345", ptr %".346"
  ; LDG.E.SYS R35, [R2+0x34]
  %".349" = load i32, ptr %"R2"
  %"zext.52" = zext i32 %".349" to i64
  %".350" = load i32, ptr %"R3"
  %"zext.53" = zext i32 %".350" to i64
  %"shl.26" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.26", %"zext.52"
  %".351" = inttoptr i64 %"or.26" to ptr
  %".352" = ptrtoint ptr %".351" to i64
  %".353" = add i64 %".352", 52
  %"for_LDG.26" = inttoptr i64 %".353" to ptr
  %".354" = load float, ptr %"for_LDG.26"
  %".355" = bitcast ptr %"R35" to ptr
  store float %".354", ptr %".355"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".358" = load i32, ptr %"UR4"
  %"zext.54" = zext i32 %".358" to i64
  %".359" = load i32, ptr %"UR5"
  %"zext.55" = zext i32 %".359" to i64
  %"shl.27" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.27", %"zext.54"
  %".360" = inttoptr i64 %"or.27" to ptr
  %".361" = ptrtoint ptr %".360" to i64
  %".362" = add i64 %".361", 52
  %"for_LDG.27" = inttoptr i64 %".362" to ptr
  %".363" = load float, ptr %"for_LDG.27"
  %".364" = bitcast ptr %"R34" to ptr
  store float %".363", ptr %".364"
  ; LDG.E.SYS R37, [R2+0x38]
  %".367" = load i32, ptr %"R2"
  %"zext.56" = zext i32 %".367" to i64
  %".368" = load i32, ptr %"R3"
  %"zext.57" = zext i32 %".368" to i64
  %"shl.28" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.28", %"zext.56"
  %".369" = inttoptr i64 %"or.28" to ptr
  %".370" = ptrtoint ptr %".369" to i64
  %".371" = add i64 %".370", 56
  %"for_LDG.28" = inttoptr i64 %".371" to ptr
  %".372" = load float, ptr %"for_LDG.28"
  %".373" = bitcast ptr %"R37" to ptr
  store float %".372", ptr %".373"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".376" = load i32, ptr %"UR4"
  %"zext.58" = zext i32 %".376" to i64
  %".377" = load i32, ptr %"UR5"
  %"zext.59" = zext i32 %".377" to i64
  %"shl.29" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.29", %"zext.58"
  %".378" = inttoptr i64 %"or.29" to ptr
  %".379" = ptrtoint ptr %".378" to i64
  %".380" = add i64 %".379", 56
  %"for_LDG.29" = inttoptr i64 %".380" to ptr
  %".381" = load float, ptr %"for_LDG.29"
  %".382" = bitcast ptr %"R36" to ptr
  store float %".381", ptr %".382"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".385" = load i32, ptr %"R2"
  %"zext.60" = zext i32 %".385" to i64
  %".386" = load i32, ptr %"R3"
  %"zext.61" = zext i32 %".386" to i64
  %"shl.30" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.30", %"zext.60"
  %".387" = inttoptr i64 %"or.30" to ptr
  %".388" = ptrtoint ptr %".387" to i64
  %".389" = add i64 %".388", 60
  %"for_LDG.30" = inttoptr i64 %".389" to ptr
  %".390" = load float, ptr %"for_LDG.30"
  %".391" = bitcast ptr %"R39" to ptr
  store float %".390", ptr %".391"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".394" = load i32, ptr %"UR4"
  %"zext.62" = zext i32 %".394" to i64
  %".395" = load i32, ptr %"UR5"
  %"zext.63" = zext i32 %".395" to i64
  %"shl.31" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.31", %"zext.62"
  %".396" = inttoptr i64 %"or.31" to ptr
  %".397" = ptrtoint ptr %".396" to i64
  %".398" = add i64 %".397", 60
  %"for_LDG.31" = inttoptr i64 %".398" to ptr
  %".399" = load float, ptr %"for_LDG.31"
  %".400" = bitcast ptr %"R38" to ptr
  store float %".399", ptr %".400"
  ; IADD3 R6, R6, -0x10, RZ
  %".403" = load i32, ptr %"R6"
  %"add.9" = add i32 %".403", -16
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".406" = load i32, ptr %"UR4"
  %"add.11" = add i32 %".406", 64
  %"add.12" = add i32 %"add.11", 0
  store i32 %"add.12", ptr %"UR4"
  %"carry" = icmp ult i32 %"add.12", %".406"
  store i1 %"carry", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".410" = load i32, ptr %"R5"
  %"add.13" = add i32 %".410", 16
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".413" = load i32, ptr %"R6"
  %".414" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".413", 12
  %".415" = and i1 %"cmp.5", %".414"
  store i1 %".415", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".418" = load i32, ptr %"UR5"
  %".419" = load i1, ptr %"UP0"
  %".420" = sub i1 0, %".419"
  %".421" = zext i1 %".420" to i32
  %"add.15" = add i32 0, %".418"
  %"add.16" = add i32 %"add.15", 0
  %"add.17" = add i32 %"add.16", %".421"
  store i32 %"add.17", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".424" = load i32, ptr %"R2"
  %"add.18" = add i32 %".424", 64
  %"add.19" = add i32 %"add.18", 0
  store i32 %"add.19", ptr %"R2"
  %"carry.1" = icmp ult i32 %"add.19", %".424"
  store i1 %"carry.1", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".428" = load i32, ptr %"R3"
  %"mul.5" = mul i32 0, 0
  %"add.20" = add i32 %"mul.5", %".428"
  store i32 %"add.20", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".431" = load float, ptr %"R8"
  %".432" = load float, ptr %"R9"
  %".433" = load float, ptr %"R7"
  %"fmul" = fmul float %".431", %".432"
  %"fadd" = fadd float %"fmul", %".433"
  %".434" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".434"
  ; FFMA R8, R11, R10, R8
  %".437" = load float, ptr %"R11"
  %".438" = load float, ptr %"R10"
  %".439" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".437", %".438"
  %"fadd.1" = fadd float %"fmul.1", %".439"
  %".440" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".440"
  ; FFMA R8, R13, R12, R8
  %".443" = load float, ptr %"R13"
  %".444" = load float, ptr %"R12"
  %".445" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".443", %".444"
  %"fadd.2" = fadd float %"fmul.2", %".445"
  %".446" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".446"
  ; FFMA R8, R15, R14, R8
  %".449" = load float, ptr %"R15"
  %".450" = load float, ptr %"R14"
  %".451" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".449", %".450"
  %"fadd.3" = fadd float %"fmul.3", %".451"
  %".452" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".452"
  ; FFMA R8, R17, R16, R8
  %".455" = load float, ptr %"R17"
  %".456" = load float, ptr %"R16"
  %".457" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".455", %".456"
  %"fadd.4" = fadd float %"fmul.4", %".457"
  %".458" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".458"
  ; FFMA R8, R19, R18, R8
  %".461" = load float, ptr %"R19"
  %".462" = load float, ptr %"R18"
  %".463" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".461", %".462"
  %"fadd.5" = fadd float %"fmul.5", %".463"
  %".464" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".464"
  ; FFMA R8, R21, R20, R8
  %".467" = load float, ptr %"R21"
  %".468" = load float, ptr %"R20"
  %".469" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".467", %".468"
  %"fadd.6" = fadd float %"fmul.6", %".469"
  %".470" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".470"
  ; FFMA R8, R23, R22, R8
  %".473" = load float, ptr %"R23"
  %".474" = load float, ptr %"R22"
  %".475" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".473", %".474"
  %"fadd.7" = fadd float %"fmul.7", %".475"
  %".476" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".476"
  ; FFMA R8, R25, R24, R8
  %".479" = load float, ptr %"R25"
  %".480" = load float, ptr %"R24"
  %".481" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".479", %".480"
  %"fadd.8" = fadd float %"fmul.8", %".481"
  %".482" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".482"
  ; FFMA R8, R27, R26, R8
  %".485" = load float, ptr %"R27"
  %".486" = load float, ptr %"R26"
  %".487" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".485", %".486"
  %"fadd.9" = fadd float %"fmul.9", %".487"
  %".488" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".488"
  ; FFMA R8, R29, R28, R8
  %".491" = load float, ptr %"R29"
  %".492" = load float, ptr %"R28"
  %".493" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".491", %".492"
  %"fadd.10" = fadd float %"fmul.10", %".493"
  %".494" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".494"
  ; FFMA R8, R31, R30, R8
  %".497" = load float, ptr %"R31"
  %".498" = load float, ptr %"R30"
  %".499" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".497", %".498"
  %"fadd.11" = fadd float %"fmul.11", %".499"
  %".500" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".500"
  ; FFMA R8, R33, R32, R8
  %".503" = load float, ptr %"R33"
  %".504" = load float, ptr %"R32"
  %".505" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".503", %".504"
  %"fadd.12" = fadd float %"fmul.12", %".505"
  %".506" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".506"
  ; FFMA R8, R35, R34, R8
  %".509" = load float, ptr %"R35"
  %".510" = load float, ptr %"R34"
  %".511" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".509", %".510"
  %"fadd.13" = fadd float %"fmul.13", %".511"
  %".512" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".512"
  ; FFMA R8, R37, R36, R8
  %".515" = load float, ptr %"R37"
  %".516" = load float, ptr %"R36"
  %".517" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".515", %".516"
  %"fadd.14" = fadd float %"fmul.14", %".517"
  %".518" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".518"
  ; FFMA R7, R39, R38, R8
  %".521" = load float, ptr %"R39"
  %".522" = load float, ptr %"R38"
  %".523" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".521", %".522"
  %"fadd.15" = fadd float %"fmul.15", %".523"
  %".524" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".524"
  ; @P1 BRA `(.L_x_4)
  %".527" = load i1, ptr %"P1"
  %".528" = icmp ne i1 %".527", 1
  br i1 %".528", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".531" = load i32, ptr %"R6"
  %".532" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".531", 4
  %".533" = and i1 %"cmp.6", %".532"
  store i1 %".533", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".536" = load i1, ptr %"P1"
  %".537" = icmp eq i1 %".536", 1
  br i1 %".537", label %".L_x_5", label %".L_x_3_split_0x0570"
.L_x_3_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".540" = load i32, ptr %"R2"
  %"zext.64" = zext i32 %".540" to i64
  %".541" = load i32, ptr %"R3"
  %"zext.65" = zext i32 %".541" to i64
  %"shl.32" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.32", %"zext.64"
  %".542" = inttoptr i64 %"or.32" to ptr
  %".543" = ptrtoint ptr %".542" to i64
  %".544" = add i64 %".543", 0
  %"for_LDG.32" = inttoptr i64 %".544" to ptr
  %".545" = load float, ptr %"for_LDG.32"
  %".546" = bitcast ptr %"R8" to ptr
  store float %".545", ptr %".546"
  ; LDG.E.SYS R9, [UR4]
  %".549" = load i32, ptr %"UR4"
  %"zext.66" = zext i32 %".549" to i64
  %".550" = load i32, ptr %"UR5"
  %"zext.67" = zext i32 %".550" to i64
  %"shl.33" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.33", %"zext.66"
  %".551" = inttoptr i64 %"or.33" to ptr
  %".552" = ptrtoint ptr %".551" to i64
  %".553" = add i64 %".552", 0
  %"for_LDG.33" = inttoptr i64 %".553" to ptr
  %".554" = load float, ptr %"for_LDG.33"
  %".555" = bitcast ptr %"R9" to ptr
  store float %".554", ptr %".555"
  ; LDG.E.SYS R11, [R2+0x4]
  %".558" = load i32, ptr %"R2"
  %"zext.68" = zext i32 %".558" to i64
  %".559" = load i32, ptr %"R3"
  %"zext.69" = zext i32 %".559" to i64
  %"shl.34" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.34", %"zext.68"
  %".560" = inttoptr i64 %"or.34" to ptr
  %".561" = ptrtoint ptr %".560" to i64
  %".562" = add i64 %".561", 4
  %"for_LDG.34" = inttoptr i64 %".562" to ptr
  %".563" = load float, ptr %"for_LDG.34"
  %".564" = bitcast ptr %"R11" to ptr
  store float %".563", ptr %".564"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".567" = load i32, ptr %"UR4"
  %"zext.70" = zext i32 %".567" to i64
  %".568" = load i32, ptr %"UR5"
  %"zext.71" = zext i32 %".568" to i64
  %"shl.35" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.35", %"zext.70"
  %".569" = inttoptr i64 %"or.35" to ptr
  %".570" = ptrtoint ptr %".569" to i64
  %".571" = add i64 %".570", 4
  %"for_LDG.35" = inttoptr i64 %".571" to ptr
  %".572" = load float, ptr %"for_LDG.35"
  %".573" = bitcast ptr %"R10" to ptr
  store float %".572", ptr %".573"
  ; LDG.E.SYS R13, [R2+0x8]
  %".576" = load i32, ptr %"R2"
  %"zext.72" = zext i32 %".576" to i64
  %".577" = load i32, ptr %"R3"
  %"zext.73" = zext i32 %".577" to i64
  %"shl.36" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.36", %"zext.72"
  %".578" = inttoptr i64 %"or.36" to ptr
  %".579" = ptrtoint ptr %".578" to i64
  %".580" = add i64 %".579", 8
  %"for_LDG.36" = inttoptr i64 %".580" to ptr
  %".581" = load float, ptr %"for_LDG.36"
  %".582" = bitcast ptr %"R13" to ptr
  store float %".581", ptr %".582"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".585" = load i32, ptr %"UR4"
  %"zext.74" = zext i32 %".585" to i64
  %".586" = load i32, ptr %"UR5"
  %"zext.75" = zext i32 %".586" to i64
  %"shl.37" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.37", %"zext.74"
  %".587" = inttoptr i64 %"or.37" to ptr
  %".588" = ptrtoint ptr %".587" to i64
  %".589" = add i64 %".588", 8
  %"for_LDG.37" = inttoptr i64 %".589" to ptr
  %".590" = load float, ptr %"for_LDG.37"
  %".591" = bitcast ptr %"R12" to ptr
  store float %".590", ptr %".591"
  ; LDG.E.SYS R15, [R2+0xc]
  %".594" = load i32, ptr %"R2"
  %"zext.76" = zext i32 %".594" to i64
  %".595" = load i32, ptr %"R3"
  %"zext.77" = zext i32 %".595" to i64
  %"shl.38" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.38", %"zext.76"
  %".596" = inttoptr i64 %"or.38" to ptr
  %".597" = ptrtoint ptr %".596" to i64
  %".598" = add i64 %".597", 12
  %"for_LDG.38" = inttoptr i64 %".598" to ptr
  %".599" = load float, ptr %"for_LDG.38"
  %".600" = bitcast ptr %"R15" to ptr
  store float %".599", ptr %".600"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".603" = load i32, ptr %"UR4"
  %"zext.78" = zext i32 %".603" to i64
  %".604" = load i32, ptr %"UR5"
  %"zext.79" = zext i32 %".604" to i64
  %"shl.39" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.39", %"zext.78"
  %".605" = inttoptr i64 %"or.39" to ptr
  %".606" = ptrtoint ptr %".605" to i64
  %".607" = add i64 %".606", 12
  %"for_LDG.39" = inttoptr i64 %".607" to ptr
  %".608" = load float, ptr %"for_LDG.39"
  %".609" = bitcast ptr %"R14" to ptr
  store float %".608", ptr %".609"
  ; LDG.E.SYS R17, [R2+0x10]
  %".612" = load i32, ptr %"R2"
  %"zext.80" = zext i32 %".612" to i64
  %".613" = load i32, ptr %"R3"
  %"zext.81" = zext i32 %".613" to i64
  %"shl.40" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.40", %"zext.80"
  %".614" = inttoptr i64 %"or.40" to ptr
  %".615" = ptrtoint ptr %".614" to i64
  %".616" = add i64 %".615", 16
  %"for_LDG.40" = inttoptr i64 %".616" to ptr
  %".617" = load float, ptr %"for_LDG.40"
  %".618" = bitcast ptr %"R17" to ptr
  store float %".617", ptr %".618"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".621" = load i32, ptr %"UR4"
  %"zext.82" = zext i32 %".621" to i64
  %".622" = load i32, ptr %"UR5"
  %"zext.83" = zext i32 %".622" to i64
  %"shl.41" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.41", %"zext.82"
  %".623" = inttoptr i64 %"or.41" to ptr
  %".624" = ptrtoint ptr %".623" to i64
  %".625" = add i64 %".624", 16
  %"for_LDG.41" = inttoptr i64 %".625" to ptr
  %".626" = load float, ptr %"for_LDG.41"
  %".627" = bitcast ptr %"R16" to ptr
  store float %".626", ptr %".627"
  ; LDG.E.SYS R19, [R2+0x14]
  %".630" = load i32, ptr %"R2"
  %"zext.84" = zext i32 %".630" to i64
  %".631" = load i32, ptr %"R3"
  %"zext.85" = zext i32 %".631" to i64
  %"shl.42" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.42", %"zext.84"
  %".632" = inttoptr i64 %"or.42" to ptr
  %".633" = ptrtoint ptr %".632" to i64
  %".634" = add i64 %".633", 20
  %"for_LDG.42" = inttoptr i64 %".634" to ptr
  %".635" = load float, ptr %"for_LDG.42"
  %".636" = bitcast ptr %"R19" to ptr
  store float %".635", ptr %".636"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".639" = load i32, ptr %"UR4"
  %"zext.86" = zext i32 %".639" to i64
  %".640" = load i32, ptr %"UR5"
  %"zext.87" = zext i32 %".640" to i64
  %"shl.43" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.43", %"zext.86"
  %".641" = inttoptr i64 %"or.43" to ptr
  %".642" = ptrtoint ptr %".641" to i64
  %".643" = add i64 %".642", 20
  %"for_LDG.43" = inttoptr i64 %".643" to ptr
  %".644" = load float, ptr %"for_LDG.43"
  %".645" = bitcast ptr %"R18" to ptr
  store float %".644", ptr %".645"
  ; LDG.E.SYS R21, [R2+0x18]
  %".648" = load i32, ptr %"R2"
  %"zext.88" = zext i32 %".648" to i64
  %".649" = load i32, ptr %"R3"
  %"zext.89" = zext i32 %".649" to i64
  %"shl.44" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.44", %"zext.88"
  %".650" = inttoptr i64 %"or.44" to ptr
  %".651" = ptrtoint ptr %".650" to i64
  %".652" = add i64 %".651", 24
  %"for_LDG.44" = inttoptr i64 %".652" to ptr
  %".653" = load float, ptr %"for_LDG.44"
  %".654" = bitcast ptr %"R21" to ptr
  store float %".653", ptr %".654"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".657" = load i32, ptr %"UR4"
  %"zext.90" = zext i32 %".657" to i64
  %".658" = load i32, ptr %"UR5"
  %"zext.91" = zext i32 %".658" to i64
  %"shl.45" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.45", %"zext.90"
  %".659" = inttoptr i64 %"or.45" to ptr
  %".660" = ptrtoint ptr %".659" to i64
  %".661" = add i64 %".660", 24
  %"for_LDG.45" = inttoptr i64 %".661" to ptr
  %".662" = load float, ptr %"for_LDG.45"
  %".663" = bitcast ptr %"R20" to ptr
  store float %".662", ptr %".663"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".666" = load i32, ptr %"R2"
  %"zext.92" = zext i32 %".666" to i64
  %".667" = load i32, ptr %"R3"
  %"zext.93" = zext i32 %".667" to i64
  %"shl.46" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.46", %"zext.92"
  %".668" = inttoptr i64 %"or.46" to ptr
  %".669" = ptrtoint ptr %".668" to i64
  %".670" = add i64 %".669", 28
  %"for_LDG.46" = inttoptr i64 %".670" to ptr
  %".671" = load float, ptr %"for_LDG.46"
  %".672" = bitcast ptr %"R23" to ptr
  store float %".671", ptr %".672"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".675" = load i32, ptr %"UR4"
  %"zext.94" = zext i32 %".675" to i64
  %".676" = load i32, ptr %"UR5"
  %"zext.95" = zext i32 %".676" to i64
  %"shl.47" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.47", %"zext.94"
  %".677" = inttoptr i64 %"or.47" to ptr
  %".678" = ptrtoint ptr %".677" to i64
  %".679" = add i64 %".678", 28
  %"for_LDG.47" = inttoptr i64 %".679" to ptr
  %".680" = load float, ptr %"for_LDG.47"
  %".681" = bitcast ptr %"R22" to ptr
  store float %".680", ptr %".681"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".684" = load i32, ptr %"UR4"
  %"add.21" = add i32 %".684", 32
  %"add.22" = add i32 %"add.21", 0
  store i32 %"add.22", ptr %"UR4"
  %"carry.2" = icmp ult i32 %"add.22", %".684"
  store i1 %"carry.2", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".688" = xor i1 1, 1
  %".689" = and i1 %".688", 1
  %".690" = and i1 %".689", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".692" = load i32, ptr %"R5"
  %"add.23" = add i32 %".692", 8
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".695" = load i32, ptr %"UR5"
  %".696" = load i1, ptr %"UP0"
  %".697" = sub i1 0, %".696"
  %".698" = zext i1 %".697" to i32
  %"add.25" = add i32 0, %".695"
  %"add.26" = add i32 %"add.25", 0
  %"add.27" = add i32 %"add.26", %".698"
  store i32 %"add.27", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".701" = load i32, ptr %"R2"
  %"add.28" = add i32 %".701", 32
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", ptr %"R2"
  %"carry.3" = icmp ult i32 %"add.29", %".701"
  store i1 %"carry.3", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".705" = load i32, ptr %"R6"
  %"add.30" = add i32 %".705", -8
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".708" = load i32, ptr %"R3"
  %".709" = load i1, ptr %"P1"
  %".710" = sub i1 0, %".709"
  %".711" = zext i1 %".710" to i32
  %"add.32" = add i32 0, %".708"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".711"
  store i32 %"add.34", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".714" = load float, ptr %"R8"
  %".715" = load float, ptr %"R9"
  %".716" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".714", %".715"
  %"fadd.16" = fadd float %"fmul.16", %".716"
  %".717" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".717"
  ; FFMA R8, R11, R10, R8
  %".720" = load float, ptr %"R11"
  %".721" = load float, ptr %"R10"
  %".722" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".720", %".721"
  %"fadd.17" = fadd float %"fmul.17", %".722"
  %".723" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".723"
  ; FFMA R8, R13, R12, R8
  %".726" = load float, ptr %"R13"
  %".727" = load float, ptr %"R12"
  %".728" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".726", %".727"
  %"fadd.18" = fadd float %"fmul.18", %".728"
  %".729" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".729"
  ; FFMA R8, R15, R14, R8
  %".732" = load float, ptr %"R15"
  %".733" = load float, ptr %"R14"
  %".734" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".732", %".733"
  %"fadd.19" = fadd float %"fmul.19", %".734"
  %".735" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".735"
  ; FFMA R8, R17, R16, R8
  %".738" = load float, ptr %"R17"
  %".739" = load float, ptr %"R16"
  %".740" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".738", %".739"
  %"fadd.20" = fadd float %"fmul.20", %".740"
  %".741" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".741"
  ; FFMA R8, R19, R18, R8
  %".744" = load float, ptr %"R19"
  %".745" = load float, ptr %"R18"
  %".746" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".744", %".745"
  %"fadd.21" = fadd float %"fmul.21", %".746"
  %".747" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".747"
  ; FFMA R8, R21, R20, R8
  %".750" = load float, ptr %"R21"
  %".751" = load float, ptr %"R20"
  %".752" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".750", %".751"
  %"fadd.22" = fadd float %"fmul.22", %".752"
  %".753" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".753"
  ; FFMA R7, R23, R22, R8
  %".756" = load float, ptr %"R23"
  %".757" = load float, ptr %"R22"
  %".758" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".756", %".757"
  %"fadd.23" = fadd float %"fmul.23", %".758"
  %".759" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".759"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".763" = load i32, ptr %"R6"
  %".764" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".763", 0
  %".765" = or i1 %"cmp.7", %".764"
  store i1 %".765", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".768" = load i1, ptr %"P0"
  %".769" = icmp eq i1 %".768", 1
  br i1 %".769", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".772" = load i32, ptr %"R2"
  %"zext.96" = zext i32 %".772" to i64
  %".773" = load i32, ptr %"R3"
  %"zext.97" = zext i32 %".773" to i64
  %"shl.48" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.48", %"zext.96"
  %".774" = inttoptr i64 %"or.48" to ptr
  %".775" = ptrtoint ptr %".774" to i64
  %".776" = add i64 %".775", 0
  %"for_LDG.48" = inttoptr i64 %".776" to ptr
  %".777" = load float, ptr %"for_LDG.48"
  %".778" = bitcast ptr %"R8" to ptr
  store float %".777", ptr %".778"
  ; LDG.E.SYS R9, [UR4]
  %".781" = load i32, ptr %"UR4"
  %"zext.98" = zext i32 %".781" to i64
  %".782" = load i32, ptr %"UR5"
  %"zext.99" = zext i32 %".782" to i64
  %"shl.49" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.49", %"zext.98"
  %".783" = inttoptr i64 %"or.49" to ptr
  %".784" = ptrtoint ptr %".783" to i64
  %".785" = add i64 %".784", 0
  %"for_LDG.49" = inttoptr i64 %".785" to ptr
  %".786" = load float, ptr %"for_LDG.49"
  %".787" = bitcast ptr %"R9" to ptr
  store float %".786", ptr %".787"
  ; LDG.E.SYS R11, [R2+0x4]
  %".790" = load i32, ptr %"R2"
  %"zext.100" = zext i32 %".790" to i64
  %".791" = load i32, ptr %"R3"
  %"zext.101" = zext i32 %".791" to i64
  %"shl.50" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.50", %"zext.100"
  %".792" = inttoptr i64 %"or.50" to ptr
  %".793" = ptrtoint ptr %".792" to i64
  %".794" = add i64 %".793", 4
  %"for_LDG.50" = inttoptr i64 %".794" to ptr
  %".795" = load float, ptr %"for_LDG.50"
  %".796" = bitcast ptr %"R11" to ptr
  store float %".795", ptr %".796"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".799" = load i32, ptr %"UR4"
  %"zext.102" = zext i32 %".799" to i64
  %".800" = load i32, ptr %"UR5"
  %"zext.103" = zext i32 %".800" to i64
  %"shl.51" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.51", %"zext.102"
  %".801" = inttoptr i64 %"or.51" to ptr
  %".802" = ptrtoint ptr %".801" to i64
  %".803" = add i64 %".802", 4
  %"for_LDG.51" = inttoptr i64 %".803" to ptr
  %".804" = load float, ptr %"for_LDG.51"
  %".805" = bitcast ptr %"R10" to ptr
  store float %".804", ptr %".805"
  ; LDG.E.SYS R13, [R2+0x8]
  %".808" = load i32, ptr %"R2"
  %"zext.104" = zext i32 %".808" to i64
  %".809" = load i32, ptr %"R3"
  %"zext.105" = zext i32 %".809" to i64
  %"shl.52" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.52", %"zext.104"
  %".810" = inttoptr i64 %"or.52" to ptr
  %".811" = ptrtoint ptr %".810" to i64
  %".812" = add i64 %".811", 8
  %"for_LDG.52" = inttoptr i64 %".812" to ptr
  %".813" = load float, ptr %"for_LDG.52"
  %".814" = bitcast ptr %"R13" to ptr
  store float %".813", ptr %".814"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".817" = load i32, ptr %"UR4"
  %"zext.106" = zext i32 %".817" to i64
  %".818" = load i32, ptr %"UR5"
  %"zext.107" = zext i32 %".818" to i64
  %"shl.53" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.53", %"zext.106"
  %".819" = inttoptr i64 %"or.53" to ptr
  %".820" = ptrtoint ptr %".819" to i64
  %".821" = add i64 %".820", 8
  %"for_LDG.53" = inttoptr i64 %".821" to ptr
  %".822" = load float, ptr %"for_LDG.53"
  %".823" = bitcast ptr %"R12" to ptr
  store float %".822", ptr %".823"
  ; LDG.E.SYS R15, [R2+0xc]
  %".826" = load i32, ptr %"R2"
  %"zext.108" = zext i32 %".826" to i64
  %".827" = load i32, ptr %"R3"
  %"zext.109" = zext i32 %".827" to i64
  %"shl.54" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.54", %"zext.108"
  %".828" = inttoptr i64 %"or.54" to ptr
  %".829" = ptrtoint ptr %".828" to i64
  %".830" = add i64 %".829", 12
  %"for_LDG.54" = inttoptr i64 %".830" to ptr
  %".831" = load float, ptr %"for_LDG.54"
  %".832" = bitcast ptr %"R15" to ptr
  store float %".831", ptr %".832"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".835" = load i32, ptr %"UR4"
  %"zext.110" = zext i32 %".835" to i64
  %".836" = load i32, ptr %"UR5"
  %"zext.111" = zext i32 %".836" to i64
  %"shl.55" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.55", %"zext.110"
  %".837" = inttoptr i64 %"or.55" to ptr
  %".838" = ptrtoint ptr %".837" to i64
  %".839" = add i64 %".838", 12
  %"for_LDG.55" = inttoptr i64 %".839" to ptr
  %".840" = load float, ptr %"for_LDG.55"
  %".841" = bitcast ptr %"R14" to ptr
  store float %".840", ptr %".841"
  ; IADD3 R6, R6, -0x4, RZ
  %".844" = load i32, ptr %"R6"
  %"add.35" = add i32 %".844", -4
  %"add.36" = add i32 %"add.35", 0
  store i32 %"add.36", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".847" = load i32, ptr %"UR4"
  %"add.37" = add i32 %".847", 16
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", ptr %"UR4"
  %"carry.4" = icmp ult i32 %"add.38", %".847"
  store i1 %"carry.4", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".851" = load i32, ptr %"R5"
  %"add.39" = add i32 %".851", 4
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".854" = load i32, ptr %"R6"
  %".855" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".854", 0
  %".856" = and i1 %"cmp.8", %".855"
  store i1 %".856", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".859" = load i32, ptr %"UR5"
  %".860" = load i1, ptr %"UP0"
  %".861" = sub i1 0, %".860"
  %".862" = zext i1 %".861" to i32
  %"add.41" = add i32 0, %".859"
  %"add.42" = add i32 %"add.41", 0
  %"add.43" = add i32 %"add.42", %".862"
  store i32 %"add.43", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %".865" = load float, ptr %"R8"
  %".866" = load float, ptr %"R9"
  %".867" = load float, ptr %"R7"
  %"fmul.24" = fmul float %".865", %".866"
  %"fadd.24" = fadd float %"fmul.24", %".867"
  %".868" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".868"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".871" = load i32, ptr %"R2"
  %"add.44" = add i32 %".871", 16
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R9"
  %"carry.5" = icmp ult i32 %"add.45", %".871"
  store i1 %"carry.5", ptr %"P1"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".875" = load i32, ptr %"R9"
  %"mul.6" = mul i32 0, 0
  %"add.46" = add i32 %"mul.6", %".875"
  store i32 %"add.46", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %".878" = load float, ptr %"R11"
  %".879" = load float, ptr %"R10"
  %".880" = load float, ptr %"R8"
  %"fmul.25" = fmul float %".878", %".879"
  %"fadd.25" = fadd float %"fmul.25", %".880"
  %".881" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".881"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".884" = load i32, ptr %"R3"
  %".885" = load i1, ptr %"P1"
  %".886" = sub i1 0, %".885"
  %".887" = zext i1 %".886" to i32
  %"add.47" = add i32 0, %".884"
  %"add.48" = add i32 %"add.47", 0
  %"add.49" = add i32 %"add.48", %".887"
  store i32 %"add.49", ptr %"R10"
  ; MOV R3, R10
  %".890" = load i32, ptr %"R10"
  store i32 %".890", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %".893" = load float, ptr %"R13"
  %".894" = load float, ptr %"R12"
  %".895" = load float, ptr %"R8"
  %"fmul.26" = fmul float %".893", %".894"
  %"fadd.26" = fadd float %"fmul.26", %".895"
  %".896" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".896"
  ; FFMA R7, R15, R14, R8
  %".899" = load float, ptr %"R15"
  %".900" = load float, ptr %"R14"
  %".901" = load float, ptr %"R8"
  %"fmul.27" = fmul float %".899", %".900"
  %"fadd.27" = fadd float %"fmul.27", %".901"
  %".902" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".902"
  ; @P0 BRA `(.L_x_2)
  %".905" = load i1, ptr %"P0"
  %".906" = icmp ne i1 %".905", 1
  br i1 %".906", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".909" = load i32, ptr %"R4"
  %".910" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".909", 0
  %".911" = and i1 %"cmp.9", %".910"
  store i1 %".911", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".914" = load i1, ptr %"P0"
  %".915" = icmp eq i1 %".914", 1
  br i1 %".915", label %".L_x_0", label %".L_x_1_split_0x0900"
.L_x_1_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".920" = load i32, ptr %"R0"
  %".921" = load i32, ptr %"R5"
  %"mul.7" = mul i32 %".920", %"Arg_4"
  %"add.50" = add i32 %"mul.7", %".921"
  store i32 %"add.50", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".924" = load i32, ptr %"R2"
  %".925" = load i32, ptr %"R8"
  %"mul.8" = mul i32 %".924", %".925"
  %"add.51" = add i32 %"mul.8", %"Arg_1"
  store i32 %"add.51", ptr %"R2"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".928" = load i32, ptr %"R5"
  %".929" = load i32, ptr %"R8"
  %"mul.9" = mul i32 %".928", %".929"
  %"add.52" = add i32 %"mul.9", %"Arg_0"
  store i32 %"add.52", ptr %"R8"
  ; MOV R6, R2
  %".932" = load i32, ptr %"R2"
  store i32 %".932", ptr %"R6"
  br label %".L_x_6"
.L_x_6:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".936" = load i32, ptr %"R6"
  %"mul.10" = mul i32 0, 0
  %"add.53" = add i32 %"mul.10", %".936"
  store i32 %"add.53", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".939" = load i32, ptr %"R8"
  %"zext.112" = zext i32 %".939" to i64
  %".940" = load i32, ptr %"R9"
  %"zext.113" = zext i32 %".940" to i64
  %"shl.56" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.56", %"zext.112"
  %".941" = inttoptr i64 %"or.56" to ptr
  %".942" = ptrtoint ptr %".941" to i64
  %".943" = add i64 %".942", 0
  %"for_LDG.56" = inttoptr i64 %".943" to ptr
  %".944" = load float, ptr %"for_LDG.56"
  %".945" = bitcast ptr %"R5" to ptr
  store float %".944", ptr %".945"
  ; LDG.E.SYS R2, [R2]
  %".948" = load i32, ptr %"R2"
  %"zext.114" = zext i32 %".948" to i64
  %".949" = load i32, ptr %"R3"
  %"zext.115" = zext i32 %".949" to i64
  %"shl.57" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.57", %"zext.114"
  %".950" = inttoptr i64 %"or.57" to ptr
  %".951" = ptrtoint ptr %".950" to i64
  %".952" = add i64 %".951", 0
  %"for_LDG.57" = inttoptr i64 %".952" to ptr
  %".953" = load float, ptr %"for_LDG.57"
  %".954" = bitcast ptr %"R2" to ptr
  store float %".953", ptr %".954"
  ; IADD3 R4, R4, -0x1, RZ
  %".957" = load i32, ptr %"R4"
  %"add.54" = add i32 %".957", -1
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".960" = load i32, ptr %"R4"
  %".961" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".960", 0
  %".962" = and i1 %"cmp.10", %".961"
  store i1 %".962", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".965" = load i32, ptr %"R6"
  %"add.56" = add i32 %".965", 4
  %"add.57" = add i32 %"add.56", 0
  store i32 %"add.57", ptr %"R6"
  %"carry.6" = icmp ult i32 %"add.57", %".965"
  store i1 %"carry.6", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".969" = load i32, ptr %"R8"
  %"add.58" = add i32 %".969", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R8"
  %"carry.7" = icmp ult i32 %"add.59", %".969"
  store i1 %"carry.7", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".973" = load i32, ptr %"R3"
  %".974" = load i1, ptr %"P1"
  %".975" = sub i1 0, %".974"
  %".976" = zext i1 %".975" to i32
  %"add.60" = add i32 0, %".973"
  %"add.61" = add i32 %"add.60", 0
  %"add.62" = add i32 %"add.61", %".976"
  store i32 %"add.62", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".979" = load i32, ptr %"R9"
  %".980" = load i1, ptr %"P2"
  %".981" = sub i1 0, %".980"
  %".982" = zext i1 %".981" to i32
  %"add.63" = add i32 0, %".979"
  %"add.64" = add i32 %"add.63", 0
  %"add.65" = add i32 %"add.64", %".982"
  store i32 %"add.65", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".985" = load float, ptr %"R2"
  %".986" = load float, ptr %"R5"
  %".987" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".985", %".986"
  %"fadd.28" = fadd float %"fmul.28", %".987"
  %".988" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".988"
  ; @P0 BRA `(.L_x_6)
  %".991" = load i1, ptr %"P0"
  %".992" = icmp ne i1 %".991", 1
  br i1 %".992", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".997" = load i32, ptr %"R0"
  %".998" = load i32, ptr %"R5"
  %"mul.11" = mul i32 %".997", %".998"
  %"add.66" = add i32 %"mul.11", %"Arg_2"
  store i32 %"add.66", ptr %"R2"
  ; LDG.E.SYS R2, [R2]
  %".1001" = load i32, ptr %"R2"
  %"zext.116" = zext i32 %".1001" to i64
  %".1002" = load i32, ptr %"R3"
  %"zext.117" = zext i32 %".1002" to i64
  %"shl.58" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.58", %"zext.116"
  %".1003" = inttoptr i64 %"or.58" to ptr
  %".1004" = ptrtoint ptr %".1003" to i64
  %".1005" = add i64 %".1004", 0
  %"for_LDG.58" = inttoptr i64 %".1005" to ptr
  %".1006" = load float, ptr %"for_LDG.58"
  %".1007" = bitcast ptr %"R2" to ptr
  store float %".1006", ptr %".1007"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".1010" = load i32, ptr %"R0"
  %".1011" = load i32, ptr %"R5"
  %"mul.12" = mul i32 %".1010", %".1011"
  %"add.67" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.67", ptr %"R4"
  ; FADD R7, R2, R7
  %".1014" = load float, ptr %"R2"
  %".1015" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".1014", %".1015"
  %".1016" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".1016"
  ; STG.E.SYS [R4], R7
  %".1019" = load float, ptr %"R7"
  %".1020" = load i32, ptr %"R4"
  %"zext.118" = zext i32 %".1020" to i64
  %".1021" = load i32, ptr %"R5"
  %"zext.119" = zext i32 %".1021" to i64
  %"shl.59" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.59", %"zext.118"
  %".1022" = inttoptr i64 %"or.59" to ptr
  %".1023" = ptrtoint ptr %".1022" to i64
  %".1024" = add i64 %".1023", 0
  %"for_STG" = inttoptr i64 %".1024" to ptr
  store float %".1019", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_7:
  ; BRA `(.L_x_7)
  br label %".L_x_7"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

define void @"_Z10max_pool2dPfS_iii"(i32 %"Arg_0", i32 %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4")
{
Entry_.text._Z10max_pool2dPfS_iii:
  %"R1" = alloca i32, i32 1
  %"RZ" = alloca i32, i32 1
  %"R7" = alloca i32, i32 1
  %"UR4" = alloca i32, i32 1
  %"R10" = alloca i32, i32 1
  %"UR5" = alloca i32, i32 1
  %"URZ" = alloca i32, i32 1
  %"UPT" = alloca i1, i32 1
  %"R0" = alloca i32, i32 1
  %"R19" = alloca i32, i32 1
  %"P1" = alloca i1, i32 1
  %"PT" = alloca i1, i32 1
  %"R2" = alloca i32, i32 1
  %"R3" = alloca i32, i32 1
  %"R4" = alloca i32, i32 1
  %"R5" = alloca i32, i32 1
  %"P2" = alloca i1, i32 1
  %"P0" = alloca i1, i32 1
  %"R21" = alloca i32, i32 1
  %"R15" = alloca i32, i32 1
  %"R11" = alloca i32, i32 1
  %"R13" = alloca i32, i32 1
  %"R12" = alloca i32, i32 1
  %"R20" = alloca i32, i32 1
  %"R16" = alloca i32, i32 1
  %"R14" = alloca i32, i32 1
  %"R17" = alloca i32, i32 1
  %"R23" = alloca i32, i32 1
  %"R6" = alloca i32, i32 1
  %"R8" = alloca i32, i32 1
  %"R18" = alloca i32, i32 1
  ; IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28]
  %"mul" = mul i32 0, 0
  %"add" = add i32 %"mul", 0
  store i32 %"add", ptr %"R1"
  ; IABS R7, c[0x0][0x174]
  %".11" = icmp sge i32 %"Arg_3", 0
  %".12" = sub i32 0, %"Arg_3"
  %"iabs" = select  i1 %".11", i32 %"Arg_3", i32 %".12"
  store i32 %"iabs", ptr %"R7"
  ; ULDC.64 UR4, c[0x0][0x170]
  store i32 %"Arg_2", ptr %"UR4"
  ; S2R R10, SR_CTAID.Y
  %"nvvm_ctaid_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()
  store i32 %"nvvm_ctaid_y", ptr %"R10"
  ; ULOP3.LUT UR4, UR4, UR5, URZ, 0x3c, !UPT
  %".19" = load i32, ptr %"UR4"
  %".20" = load i32, ptr %"UR5"
  %".21" = xor i32 %".19", %".20"
  store i32 %".21", ptr %"UR4"
  ; I2F.RP R0, R7
  %".24" = load i32, ptr %"R7"
  store i32 %".24", ptr %"R0"
  ; S2R R19, SR_CTAID.Z
  %"nvvm_ctaid_z" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.z"()
  store i32 %"nvvm_ctaid_z", ptr %"R19"
  ; ISETP.LE.AND P1, PT, RZ, UR4, PT
  %".29" = load i32, ptr %"UR4"
  %".30" = load i1, ptr %"PT"
  %"cmp" = icmp sle i32 0, %".29"
  %".31" = and i1 %"cmp", %".30"
  store i1 %".31", ptr %"P1"
  ; MUFU.RCP R0, R0
  %".34" = load float, ptr %"R0"
  %".35" = fdiv float 0x3ff0000000000000, %".34"
  %".36" = bitcast ptr %"R0" to ptr
  store float %".35", ptr %".36"
  ; IADD3 R2, R0, 0xffffffe, RZ
  %".39" = load i32, ptr %"R0"
  %"add.1" = add i32 %".39", 268435454
  %"add.2" = add i32 %"add.1", 0
  store i32 %"add.2", ptr %"R2"
  ; F2I.FTZ.U32.TRUNC.NTZ R3, R2
  %".42" = load float, ptr %"R2"
  %".43" = bitcast ptr %"R3" to ptr
  store float %".42", ptr %".43"
  ; IMAD.MOV.U32 R2, RZ, RZ, RZ
  %"mul.1" = mul i32 0, 0
  %"add.3" = add i32 %"mul.1", 0
  store i32 %"add.3", ptr %"R2"
  ; IMAD.MOV R4, RZ, RZ, -R3
  %".48" = load i32, ptr %"R3"
  %".49" = sub i32 0, %".48"
  %"mul.2" = mul i32 0, 0
  %"add.4" = add i32 %"mul.2", %".49"
  store i32 %"add.4", ptr %"R4"
  ; IMAD R5, R4, R7, RZ
  %".52" = load i32, ptr %"R4"
  %".53" = load i32, ptr %"R7"
  %"mul.3" = mul i32 %".52", %".53"
  %"add.5" = add i32 %"mul.3", 0
  store i32 %"add.5", ptr %"R5"
  ; IABS R4, c[0x0][0x170]
  %".56" = icmp sge i32 %"Arg_2", 0
  %".57" = sub i32 0, %"Arg_2"
  %"iabs.1" = select  i1 %".56", i32 %"Arg_2", i32 %".57"
  store i32 %"iabs.1", ptr %"R4"
  ; IMAD.HI.U32 R3, R3, R5, R2
  %".60" = load i32, ptr %"R3"
  %".61" = load i32, ptr %"R5"
  %".62" = load i32, ptr %"R2"
  %"mul.4" = mul i32 %".60", %".61"
  %"add.6" = add i32 %"mul.4", %".62"
  store i32 %"add.6", ptr %"R3"
  ; S2R R2, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R2"
  ; IMAD.HI.U32 R3, R3, R4, RZ
  %".67" = load i32, ptr %"R3"
  %".68" = load i32, ptr %"R4"
  %"mul.5" = mul i32 %".67", %".68"
  %"add.7" = add i32 %"mul.5", 0
  store i32 %"add.7", ptr %"R3"
  ; S2R R5, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R5"
  ; IMAD.MOV R0, RZ, RZ, -R3
  %".73" = load i32, ptr %"R3"
  %".74" = sub i32 0, %".73"
  %"mul.6" = mul i32 0, 0
  %"add.8" = add i32 %"mul.6", %".74"
  store i32 %"add.8", ptr %"R0"
  ; IMAD R0, R7, R0, R4
  %".77" = load i32, ptr %"R7"
  %".78" = load i32, ptr %"R0"
  %".79" = load i32, ptr %"R4"
  %"mul.7" = mul i32 %".77", %".78"
  %"add.9" = add i32 %"mul.7", %".79"
  store i32 %"add.9", ptr %"R0"
  ; ISETP.GT.U32.AND P2, PT, R7, R0, PT
  %".82" = load i32, ptr %"R7"
  %".83" = load i32, ptr %"R0"
  %".84" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".82", %".83"
  %".85" = and i1 %"cmp.1", %".84"
  store i1 %".85", ptr %"P2"
  ; @!P2 IADD3 R0, R0, -R7.reuse, RZ
  %".88" = load i1, ptr %"P2"
  %".89" = icmp eq i1 %".88", 1
  br i1 %".89", label %".text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160", label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160:
  ; IADD3 R0, R0, -R7.reuse, RZ
  %".92" = load i32, ptr %"R0"
  %".93" = load i32, ptr %"R7"
  %".94" = sub i32 0, %".93"
  %"add.10" = add i32 %".92", %".94"
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", ptr %"R0"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0170)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_split_0x0170:
  ; @!P2 IADD3 R3, R3, 0x1, RZ
  %".99" = load i1, ptr %"P2"
  %".100" = icmp eq i1 %".99", 1
  br i1 %".100", label %".text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170", label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170:
  ; IADD3 R3, R3, 0x1, RZ
  %".103" = load i32, ptr %"R3"
  %"add.12" = add i32 %".103", 1
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0180)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0180:
  ; ISETP.GE.U32.AND P0, PT, R0, R7, PT
  %".108" = load i32, ptr %"R0"
  %".109" = load i32, ptr %"R7"
  %".110" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".108", %".109"
  %".111" = and i1 %"cmp.2", %".110"
  store i1 %".111", ptr %"P0"
  ; IMAD R0, R2, c[0x0][0x0], R5
  %".114" = load i32, ptr %"R2"
  %".115" = load i32, ptr %"R5"
  %"mul.8" = mul i32 %".114", 0
  %"add.14" = add i32 %"mul.8", %".115"
  store i32 %"add.14", ptr %"R0"
  ; S2R R7, SR_TID.Y
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", ptr %"R7"
  ; ISETP.NE.AND P2, PT, RZ, c[0x0][0x174], PT
  %".120" = load i1, ptr %"PT"
  %"cmp.3" = icmp ne i32 0, %"Arg_3"
  %".121" = and i1 %"cmp.3", %".120"
  store i1 %".121", ptr %"P2"
  ; @P0 IADD3 R3, R3, 0x1, RZ
  %".124" = load i1, ptr %"P0"
  %".125" = icmp ne i1 %".124", 1
  br i1 %".125", label %".text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0", label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0:
  ; IADD3 R3, R3, 0x1, RZ
  %".128" = load i32, ptr %"R3"
  %"add.15" = add i32 %".128", 1
  %"add.16" = add i32 %"add.15", 0
  store i32 %"add.16", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01d0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x01d0:
  ; IMAD.MOV.U32 R21, RZ, RZ, R3
  %".133" = load i32, ptr %"R3"
  %"mul.9" = mul i32 0, 0
  %"add.17" = add i32 %"mul.9", %".133"
  store i32 %"add.17", ptr %"R21"
  ; @!P1 IMAD.MOV R21, RZ, RZ, -R21
  %".136" = load i1, ptr %"P1"
  %".137" = icmp eq i1 %".136", 1
  br i1 %".137", label %".text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0", label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0:
  ; IMAD.MOV R21, RZ, RZ, -R21
  %".140" = load i32, ptr %"R21"
  %".141" = sub i32 0, %".140"
  %"mul.10" = mul i32 0, 0
  %"add.18" = add i32 %"mul.10", %".141"
  store i32 %"add.18", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01f0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01f0:
  ; @!P2 LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".146" = load i1, ptr %"P2"
  %".147" = icmp eq i1 %".146", 1
  br i1 %".147", label %".text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0", label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0:
  ; LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".150" = xor i32 %"Arg_3", -1
  store i32 %".150", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0200)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x0200:
  ; IMAD R10, R10, c[0x0][0x4], R7
  %".155" = load i32, ptr %"R10"
  %".156" = load i32, ptr %"R7"
  %"mul.11" = mul i32 %".155", 0
  %"add.19" = add i32 %"mul.11", %".156"
  store i32 %"add.19", ptr %"R10"
  ; ISETP.GE.AND P0, PT, R0, R21, PT
  %".159" = load i32, ptr %"R0"
  %".160" = load i32, ptr %"R21"
  %".161" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".159", %".160"
  %".162" = and i1 %"cmp.4", %".161"
  store i1 %".162", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R10, R21, P0
  %".165" = load i32, ptr %"R10"
  %".166" = load i32, ptr %"R21"
  %".167" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".165", %".166"
  %".168" = or i1 %"cmp.5", %".167"
  store i1 %".168", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R19, c[0x0][0x178], P0
  %".171" = load i32, ptr %"R19"
  %".172" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".171", %"Arg_4"
  %".173" = or i1 %"cmp.6", %".172"
  store i1 %".173", ptr %"P0"
  ; @P0 EXIT
  %".176" = load i1, ptr %"P0"
  %".177" = icmp ne i1 %".176", 1
  br i1 %".177", label %".text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240", label %".text._Z10max_pool2dPfS_iii_split_0x0250"
.text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240:
  ; EXIT
  br label %"ExitFunction"
.text._Z10max_pool2dPfS_iii_split_0x0250:
  ; IMAD.MOV.U32 R15, RZ, RZ, c[0x0][0x174]
  %"mul.12" = mul i32 0, 0
  %"add.20" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.20", ptr %"R15"
  ; MOV R11, 0xff800000
  store i32 4286578688, ptr %"R11"
  ; ISETP.GE.AND P0, PT, R15, 0x1, PT
  %".186" = load i32, ptr %"R15"
  %".187" = load i1, ptr %"PT"
  %"cmp.7" = icmp sge i32 %".186", 1
  %".188" = and i1 %"cmp.7", %".187"
  store i1 %".188", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".191" = load i1, ptr %"P0"
  %".192" = icmp eq i1 %".191", 1
  br i1 %".192", label %".L_x_8", label %".text._Z10max_pool2dPfS_iii_split_0x0290"
.text._Z10max_pool2dPfS_iii_split_0x0290:
  ; IMAD R3, R19, c[0x0][0x170], RZ
  %".195" = load i32, ptr %"R19"
  %"mul.13" = mul i32 %".195", %"Arg_2"
  %"add.21" = add i32 %"mul.13", 0
  store i32 %"add.21", ptr %"R3"
  ; IADD3 R2, R15.reuse, -0x1, RZ
  %".198" = load i32, ptr %"R15"
  %"add.22" = add i32 %".198", -1
  %"add.23" = add i32 %"add.22", 0
  store i32 %"add.23", ptr %"R2"
  ; IMAD R13, R0, c[0x0][0x174], RZ
  %".201" = load i32, ptr %"R0"
  %"mul.14" = mul i32 %".201", %"Arg_3"
  %"add.24" = add i32 %"mul.14", 0
  store i32 %"add.24", ptr %"R13"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".204" = load i32, ptr %"R15"
  %".205" = and i32 %".204", 3
  store i32 %".205", ptr %"R15"
  ; IMAD R12, R10, c[0x0][0x174], R3
  %".208" = load i32, ptr %"R10"
  %".209" = load i32, ptr %"R3"
  %"mul.15" = mul i32 %".208", %"Arg_3"
  %"add.25" = add i32 %"mul.15", %".209"
  store i32 %"add.25", ptr %"R12"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".212" = load i32, ptr %"R2"
  %".213" = load i1, ptr %"PT"
  %"cmp.8" = icmp sge i32 %".212", 3
  %".214" = and i1 %"cmp.8", %".213"
  store i1 %".214", ptr %"P0"
  ; IMAD.MOV.U32 R11, RZ, RZ, -0x800000
  %"mul.16" = mul i32 0, 0
  %"add.26" = add i32 %"mul.16", -8388608
  store i32 %"add.26", ptr %"R11"
  ; IADD3 R20, R15, -c[0x0][0x174], RZ
  %".219" = load i32, ptr %"R15"
  %".220" = sub i32 0, %"Arg_3"
  %"add.27" = add i32 %".219", %".220"
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", ptr %"R20"
  ; IMAD.MOV.U32 R16, RZ, RZ, RZ
  %"mul.17" = mul i32 0, 0
  %"add.29" = add i32 %"mul.17", 0
  store i32 %"add.29", ptr %"R16"
  ; IMAD R14, R12, c[0x0][0x170], R13
  %".225" = load i32, ptr %"R12"
  %".226" = load i32, ptr %"R13"
  %"mul.18" = mul i32 %".225", %"Arg_2"
  %"add.30" = add i32 %"mul.18", %".226"
  store i32 %"add.30", ptr %"R14"
  br label %".L_x_12"
.L_x_12:
  ; UMOV UR4, URZ
  %".230" = load i32, ptr %"URZ"
  store i32 %".230", ptr %"UR4"
  ; ISETP.NE.AND P2, PT, R15, RZ, PT
  %".233" = load i32, ptr %"R15"
  %".234" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".233", 0
  %".235" = and i1 %"cmp.9", %".234"
  store i1 %".235", ptr %"P2"
  ; @!P0 BRA `(.L_x_9)
  %".238" = load i1, ptr %"P0"
  %".239" = icmp eq i1 %".238", 1
  br i1 %".239", label %".L_x_9", label %".L_x_12_split_0x0360"
.L_x_12_split_0x0360:
  ; IMAD.IADD R17, R14, 0x1, R16
  %".242" = load i32, ptr %"R14"
  %".243" = load i32, ptr %"R16"
  %"mul.19" = mul i32 %".242", 1
  %"add.31" = add i32 %"mul.19", %".243"
  store i32 %"add.31", ptr %"R17"
  ; UMOV UR4, URZ
  %".246" = load i32, ptr %"URZ"
  store i32 %".246", ptr %"UR4"
  br label %".L_x_10"
.L_x_10:
  ; MOV R2, 0x4
  store i32 4, ptr %"R2"
  ; IMAD.MOV.U32 R23, RZ, RZ, c[0x0][0x170]
  %"mul.20" = mul i32 0, 0
  %"add.32" = add i32 %"mul.20", %"Arg_2"
  store i32 %"add.32", ptr %"R23"
  ; IMAD.WIDE R2, R17, R2, c[0x0][0x160]
  %".254" = load i32, ptr %"R17"
  %".255" = load i32, ptr %"R2"
  %"mul.21" = mul i32 %".254", %".255"
  %"add.33" = add i32 %"mul.21", %"Arg_0"
  store i32 %"add.33", ptr %"R2"
  ; IMAD.WIDE R4, R23.reuse, 0x4, R2
  %".258" = load i32, ptr %"R23"
  %".259" = load i32, ptr %"R2"
  %"mul.22" = mul i32 %".258", 4
  %"add.34" = add i32 %"mul.22", %".259"
  store i32 %"add.34", ptr %"R4"
  ; LDG.E.SYS R2, [R2]
  %".262" = load i32, ptr %"R2"
  %"zext" = zext i32 %".262" to i64
  %".263" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".263" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %".264" = inttoptr i64 %"or" to ptr
  %".265" = ptrtoint ptr %".264" to i64
  %".266" = add i64 %".265", 0
  %"for_LDG" = inttoptr i64 %".266" to ptr
  %".267" = load float, ptr %"for_LDG"
  %".268" = bitcast ptr %"R2" to ptr
  store float %".267", ptr %".268"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".271" = load i32, ptr %"R23"
  %".272" = load i32, ptr %"R4"
  %"mul.23" = mul i32 %".271", 4
  %"add.35" = add i32 %"mul.23", %".272"
  store i32 %"add.35", ptr %"R6"
  ; LDG.E.SYS R4, [R4]
  %".275" = load i32, ptr %"R4"
  %"zext.2" = zext i32 %".275" to i64
  %".276" = load i32, ptr %"R5"
  %"zext.3" = zext i32 %".276" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %".277" = inttoptr i64 %"or.1" to ptr
  %".278" = ptrtoint ptr %".277" to i64
  %".279" = add i64 %".278", 0
  %"for_LDG.1" = inttoptr i64 %".279" to ptr
  %".280" = load float, ptr %"for_LDG.1"
  %".281" = bitcast ptr %"R4" to ptr
  store float %".280", ptr %".281"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".284" = load i32, ptr %"R23"
  %".285" = load i32, ptr %"R6"
  %"mul.24" = mul i32 %".284", 4
  %"add.36" = add i32 %"mul.24", %".285"
  store i32 %"add.36", ptr %"R8"
  ; LDG.E.SYS R6, [R6]
  %".288" = load i32, ptr %"R6"
  %"zext.4" = zext i32 %".288" to i64
  %".289" = load i32, ptr %"R7"
  %"zext.5" = zext i32 %".289" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %".290" = inttoptr i64 %"or.2" to ptr
  %".291" = ptrtoint ptr %".290" to i64
  %".292" = add i64 %".291", 0
  %"for_LDG.2" = inttoptr i64 %".292" to ptr
  %".293" = load float, ptr %"for_LDG.2"
  %".294" = bitcast ptr %"R6" to ptr
  store float %".293", ptr %".294"
  ; LDG.E.SYS R8, [R8]
  %".297" = load i32, ptr %"R8"
  %"zext.6" = zext i32 %".297" to i64
  %"zext.7" = zext i32 0 to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %".298" = inttoptr i64 %"or.3" to ptr
  %".299" = ptrtoint ptr %".298" to i64
  %".300" = add i64 %".299", 0
  %"for_LDG.3" = inttoptr i64 %".300" to ptr
  %".301" = load float, ptr %"for_LDG.3"
  %".302" = bitcast ptr %"R8" to ptr
  store float %".301", ptr %".302"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".305" = load i32, ptr %"UR4"
  %"add.37" = add i32 %".305", 4
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", ptr %"UR4"
  ; IADD3 R18, R20, UR4, RZ
  %".308" = load i32, ptr %"R20"
  %".309" = load i32, ptr %"UR4"
  %"add.39" = add i32 %".308", %".309"
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", ptr %"R18"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".312" = load i32, ptr %"R18"
  %".313" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".312", 0
  %".314" = and i1 %"cmp.10", %".313"
  store i1 %".314", ptr %"P1"
  ; IMAD R17, R23, 0x4, R17
  %".317" = load i32, ptr %"R23"
  %".318" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".317", 4
  %"add.41" = add i32 %"mul.25", %".318"
  store i32 %"add.41", ptr %"R17"
  ; FMNMX R11, R2, R11, !PT
  %".321" = load float, ptr %"R2"
  %".322" = load float, ptr %"R11"
  %".323" = fcmp olt float %".321", %".322"
  %"fmnmx_min" = select  i1 %".323", float %".321", float %".322"
  %".324" = fcmp ogt float %".321", %".322"
  %"fmnmx_max" = select  i1 %".324", float %".321", float %".322"
  %"fmnmx_final" = select  i1 1, float %"fmnmx_min", float %"fmnmx_max"
  %".325" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final", ptr %".325"
  ; FMNMX R11, R11, R4, !PT
  %".328" = load float, ptr %"R11"
  %".329" = load float, ptr %"R4"
  %".330" = fcmp olt float %".328", %".329"
  %"fmnmx_min.1" = select  i1 %".330", float %".328", float %".329"
  %".331" = fcmp ogt float %".328", %".329"
  %"fmnmx_max.1" = select  i1 %".331", float %".328", float %".329"
  %"fmnmx_final.1" = select  i1 1, float %"fmnmx_min.1", float %"fmnmx_max.1"
  %".332" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.1", ptr %".332"
  ; FMNMX R11, R11, R6, !PT
  %".335" = load float, ptr %"R11"
  %".336" = load float, ptr %"R6"
  %".337" = fcmp olt float %".335", %".336"
  %"fmnmx_min.2" = select  i1 %".337", float %".335", float %".336"
  %".338" = fcmp ogt float %".335", %".336"
  %"fmnmx_max.2" = select  i1 %".338", float %".335", float %".336"
  %"fmnmx_final.2" = select  i1 1, float %"fmnmx_min.2", float %"fmnmx_max.2"
  %".339" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.2", ptr %".339"
  ; FMNMX R11, R11, R8, !PT
  %".342" = load float, ptr %"R11"
  %".343" = load float, ptr %"R8"
  %".344" = fcmp olt float %".342", %".343"
  %"fmnmx_min.3" = select  i1 %".344", float %".342", float %".343"
  %".345" = fcmp ogt float %".342", %".343"
  %"fmnmx_max.3" = select  i1 %".345", float %".342", float %".343"
  %"fmnmx_final.3" = select  i1 1, float %"fmnmx_min.3", float %"fmnmx_max.3"
  %".346" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.3", ptr %".346"
  ; @P1 BRA `(.L_x_10)
  %".349" = load i1, ptr %"P1"
  %".350" = icmp ne i1 %".349", 1
  br i1 %".350", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".353" = load i32, ptr %"R13"
  %".354" = load i32, ptr %"R16"
  %"mul.26" = mul i32 %".353", 1
  %"add.42" = add i32 %"mul.26", %".354"
  store i32 %"add.42", ptr %"R4"
  ; @!P2 BRA `(.L_x_11)
  %".357" = load i1, ptr %"P2"
  %".358" = icmp eq i1 %".357", 1
  br i1 %".358", label %".L_x_11", label %".L_x_9_split_0x04d0"
.L_x_9_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".361" = load i32, ptr %"R12"
  %".362" = load i32, ptr %"UR4"
  %"add.43" = add i32 %".361", %".362"
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", ptr %"R5"
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".367" = load i32, ptr %"R5"
  %".368" = load i32, ptr %"R4"
  %"mul.27" = mul i32 %".367", %"Arg_2"
  %"add.45" = add i32 %"mul.27", %".368"
  store i32 %"add.45", ptr %"R2"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".371" = load i32, ptr %"R2"
  %".372" = load i32, ptr %"R7"
  %"mul.28" = mul i32 %".371", %".372"
  %"add.46" = add i32 %"mul.28", %"Arg_0"
  store i32 %"add.46", ptr %"R2"
  ; LDG.E.SYS R2, [R2]
  %".375" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".375" to i64
  %".376" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".376" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %".377" = inttoptr i64 %"or.4" to ptr
  %".378" = ptrtoint ptr %".377" to i64
  %".379" = add i64 %".378", 0
  %"for_LDG.4" = inttoptr i64 %".379" to ptr
  %".380" = load float, ptr %"for_LDG.4"
  %".381" = bitcast ptr %"R2" to ptr
  store float %".380", ptr %".381"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".384" = load i32, ptr %"R15"
  %".385" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".384", 1
  %".386" = and i1 %"cmp.11", %".385"
  store i1 %".386", ptr %"P1"
  ; FMNMX R11, R11, R2, !PT
  %".389" = load float, ptr %"R11"
  %".390" = load float, ptr %"R2"
  %".391" = fcmp olt float %".389", %".390"
  %"fmnmx_min.4" = select  i1 %".391", float %".389", float %".390"
  %".392" = fcmp ogt float %".389", %".390"
  %"fmnmx_max.4" = select  i1 %".392", float %".389", float %".390"
  %"fmnmx_final.4" = select  i1 1, float %"fmnmx_min.4", float %"fmnmx_max.4"
  %".393" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.4", ptr %".393"
  ; @!P1 BRA `(.L_x_11)
  %".396" = load i1, ptr %"P1"
  %".397" = icmp eq i1 %".396", 1
  br i1 %".397", label %".L_x_11", label %".L_x_9_split_0x0550"
.L_x_9_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".400" = load i32, ptr %"R15"
  %".401" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".400", 2
  %".402" = and i1 %"cmp.12", %".401"
  store i1 %".402", ptr %"P1"
  ; IADD3 R2, R5, 0x1, RZ
  %".405" = load i32, ptr %"R5"
  %"add.47" = add i32 %".405", 1
  %"add.48" = add i32 %"add.47", 0
  store i32 %"add.48", ptr %"R2"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".408" = load i32, ptr %"R2"
  %".409" = load i32, ptr %"R4"
  %"mul.29" = mul i32 %".408", %"Arg_2"
  %"add.49" = add i32 %"mul.29", %".409"
  store i32 %"add.49", ptr %"R2"
  ; @P1 IADD3 R3, R5, 0x2, RZ
  %".412" = load i1, ptr %"P1"
  %".413" = icmp ne i1 %".412", 1
  br i1 %".413", label %".L_x_9_split_0x0550_conditionalExpr_0x0580", label %".L_x_9_split_0x0590"
.L_x_9_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".416" = load i32, ptr %"R5"
  %"add.50" = add i32 %".416", 2
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R3"
  ; BRA `(.L_x_9_split_0x0590)
  br label %".L_x_9_split_0x0590"
.L_x_9_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4
  %".421" = load i1, ptr %"P1"
  %".422" = icmp ne i1 %".421", 1
  br i1 %".422", label %".L_x_9_split_0x0590_conditionalExpr_0x0590", label %".L_x_9_split_0x05a0"
.L_x_9_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".425" = load i32, ptr %"R3"
  %".426" = load i32, ptr %"R4"
  %"mul.30" = mul i32 %".425", %"Arg_2"
  %"add.52" = add i32 %"mul.30", %".426"
  store i32 %"add.52", ptr %"R4"
  ; BRA `(.L_x_9_split_0x05a0)
  br label %".L_x_9_split_0x05a0"
.L_x_9_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".431" = load i32, ptr %"R2"
  %".432" = load i32, ptr %"R7"
  %"mul.31" = mul i32 %".431", %".432"
  %"add.53" = add i32 %"mul.31", %"Arg_0"
  store i32 %"add.53", ptr %"R2"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".435" = load i1, ptr %"P1"
  %".436" = icmp ne i1 %".435", 1
  br i1 %".436", label %".L_x_9_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".439" = load i32, ptr %"R4"
  %".440" = load i32, ptr %"R7"
  %"mul.32" = mul i32 %".439", %".440"
  %"add.54" = add i32 %"mul.32", %"Arg_0"
  store i32 %"add.54", ptr %"R4"
  ; BRA `(.L_x_9_split_0x05c0)
  br label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".445" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".445" to i64
  %".446" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".446" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %".447" = inttoptr i64 %"or.5" to ptr
  %".448" = ptrtoint ptr %".447" to i64
  %".449" = add i64 %".448", 0
  %"for_LDG.5" = inttoptr i64 %".449" to ptr
  %".450" = load float, ptr %"for_LDG.5"
  %".451" = bitcast ptr %"R2" to ptr
  store float %".450", ptr %".451"
  ; @P1 LDG.E.SYS R4, [R4]
  %".454" = load i1, ptr %"P1"
  %".455" = icmp ne i1 %".454", 1
  br i1 %".455", label %".L_x_9_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".458" = load i32, ptr %"R4"
  %"zext.12" = zext i32 %".458" to i64
  %".459" = load i32, ptr %"R5"
  %"zext.13" = zext i32 %".459" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %".460" = inttoptr i64 %"or.6" to ptr
  %".461" = ptrtoint ptr %".460" to i64
  %".462" = add i64 %".461", 0
  %"for_LDG.6" = inttoptr i64 %".462" to ptr
  %".463" = load float, ptr %"for_LDG.6"
  %".464" = bitcast ptr %"R4" to ptr
  store float %".463", ptr %".464"
  ; BRA `(.L_x_9_split_0x05e0)
  br label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".469" = load float, ptr %"R11"
  %".470" = load float, ptr %"R2"
  %".471" = fcmp olt float %".469", %".470"
  %"fmnmx_min.5" = select  i1 %".471", float %".469", float %".470"
  %".472" = fcmp ogt float %".469", %".470"
  %"fmnmx_max.5" = select  i1 %".472", float %".469", float %".470"
  %"fmnmx_final.5" = select  i1 1, float %"fmnmx_min.5", float %"fmnmx_max.5"
  %".473" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.5", ptr %".473"
  ; @P1 FMNMX R11, R11, R4, !PT
  %".476" = load i1, ptr %"P1"
  %".477" = icmp ne i1 %".476", 1
  br i1 %".477", label %".L_x_9_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_11"
.L_x_9_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".480" = load float, ptr %"R11"
  %".481" = load float, ptr %"R4"
  %".482" = fcmp olt float %".480", %".481"
  %"fmnmx_min.6" = select  i1 %".482", float %".480", float %".481"
  %".483" = fcmp ogt float %".480", %".481"
  %"fmnmx_max.6" = select  i1 %".483", float %".480", float %".481"
  %"fmnmx_final.6" = select  i1 1, float %"fmnmx_min.6", float %"fmnmx_max.6"
  %".484" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.6", ptr %".484"
  ; BRA `(.L_x_11)
  br label %".L_x_11"
.L_x_11:
  ; IADD3 R16, R16, 0x1, RZ
  %".489" = load i32, ptr %"R16"
  %"add.55" = add i32 %".489", 1
  %"add.56" = add i32 %"add.55", 0
  store i32 %"add.56", ptr %"R16"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".492" = load i32, ptr %"R16"
  %".493" = load i1, ptr %"PT"
  %"cmp.13" = icmp sge i32 %".492", %"Arg_3"
  %".494" = and i1 %"cmp.13", %".493"
  store i1 %".494", ptr %"P1"
  ; @!P1 BRA `(.L_x_12)
  %".497" = load i1, ptr %"P1"
  %".498" = icmp eq i1 %".497", 1
  br i1 %".498", label %".L_x_12", label %".L_x_8"
.L_x_8:
  ; IMAD R3, R21.reuse, R19, R10
  %".501" = load i32, ptr %"R21"
  %".502" = load i32, ptr %"R19"
  %".503" = load i32, ptr %"R10"
  %"mul.33" = mul i32 %".501", %".502"
  %"add.57" = add i32 %"mul.33", %".503"
  store i32 %"add.57", ptr %"R3"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"mul.34" = mul i32 0, 0
  %"add.58" = add i32 %"mul.34", 4
  store i32 %"add.58", ptr %"R2"
  ; IMAD R3, R21, R3, R0
  %".508" = load i32, ptr %"R21"
  %".509" = load i32, ptr %"R3"
  %".510" = load i32, ptr %"R0"
  %"mul.35" = mul i32 %".508", %".509"
  %"add.59" = add i32 %"mul.35", %".510"
  store i32 %"add.59", ptr %"R3"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".513" = load i32, ptr %"R3"
  %".514" = load i32, ptr %"R2"
  %"mul.36" = mul i32 %".513", %".514"
  %"add.60" = add i32 %"mul.36", %"Arg_1"
  store i32 %"add.60", ptr %"R2"
  ; STG.E.SYS [R2], R11
  %".517" = load i32, ptr %"R11"
  %".518" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".518" to i64
  %".519" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".519" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %".520" = inttoptr i64 %"or.7" to ptr
  %".521" = ptrtoint ptr %".520" to i64
  %".522" = add i64 %".521", 0
  %"for_STG" = inttoptr i64 %".522" to ptr
  store i32 %".517", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_13:
  ; BRA `(.L_x_13)
  br label %".L_x_13"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.z"()

define void @"_Z4reluPfS_i"(i32 %"Arg_0", i32 %"Arg_1", i32 %"Arg_2")
{
Entry_.text._Z4reluPfS_i:
  %"R1" = alloca i32, i32 1
  %"R4" = alloca i32, i32 1
  %"R3" = alloca i32, i32 1
  %"P0" = alloca i1, i32 1
  %"PT" = alloca i1, i32 1
  %"R5" = alloca i32, i32 1
  %"R2" = alloca i32, i32 1
  %"R7" = alloca i32, i32 1
  %"RZ" = alloca i32, i32 1
  ; MOV R1, c[0x0][0x28]
  store i32 0, ptr %"R1"
  ; S2R R4, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R4"
  ; S2R R3, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R3"
  ; IMAD R4, R4, c[0x0][0x0], R3
  %".13" = load i32, ptr %"R4"
  %".14" = load i32, ptr %"R3"
  %"mul" = mul i32 %".13", 0
  %"add" = add i32 %"mul", %".14"
  store i32 %"add", ptr %"R4"
  ; ISETP.GE.AND P0, PT, R4, c[0x0][0x170], PT
  %".17" = load i32, ptr %"R4"
  %".18" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".17", %"Arg_2"
  %".19" = and i1 %"cmp", %".18"
  store i1 %".19", ptr %"P0"
  ; @P0 EXIT
  %".22" = load i1, ptr %"P0"
  %".23" = icmp ne i1 %".22", 1
  br i1 %".23", label %".text._Z4reluPfS_i_conditionalExpr_0x0050", label %".text._Z4reluPfS_i_split_0x0060"
.text._Z4reluPfS_i_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z4reluPfS_i_split_0x0060:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R4, R5, c[0x0][0x160]
  %".30" = load i32, ptr %"R4"
  %".31" = load i32, ptr %"R5"
  %"mul.1" = mul i32 %".30", %".31"
  %"add.1" = add i32 %"mul.1", %"Arg_0"
  store i32 %"add.1", ptr %"R2"
  ; LDG.E.SYS R2, [R2]
  %".34" = load i32, ptr %"R2"
  %"zext" = zext i32 %".34" to i64
  %".35" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".35" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %".36" = inttoptr i64 %"or" to ptr
  %".37" = ptrtoint ptr %".36" to i64
  %".38" = add i64 %".37", 0
  %"for_LDG" = inttoptr i64 %".38" to ptr
  %".39" = load float, ptr %"for_LDG"
  %".40" = bitcast ptr %"R2" to ptr
  store float %".39", ptr %".40"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x168]
  %".43" = load i32, ptr %"R4"
  %".44" = load i32, ptr %"R5"
  %"mul.2" = mul i32 %".43", %".44"
  %"add.2" = add i32 %"mul.2", %"Arg_1"
  store i32 %"add.2", ptr %"R4"
  ; FMNMX R7, RZ, R2, !PT
  %".47" = load float, ptr %"R2"
  %".48" = fcmp olt float              0x0, %".47"
  %"fmnmx_min" = select  i1 %".48", float              0x0, float %".47"
  %".49" = fcmp ogt float              0x0, %".47"
  %"fmnmx_max" = select  i1 %".49", float              0x0, float %".47"
  %"fmnmx_final" = select  i1 1, float %"fmnmx_min", float %"fmnmx_max"
  %".50" = bitcast ptr %"R7" to ptr
  store float %"fmnmx_final", ptr %".50"
  ; STG.E.SYS [R4], R7
  %".53" = load float, ptr %"R7"
  %".54" = load i32, ptr %"R4"
  %"zext.2" = zext i32 %".54" to i64
  %".55" = load i32, ptr %"R5"
  %"zext.3" = zext i32 %".55" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %".56" = inttoptr i64 %"or.1" to ptr
  %".57" = ptrtoint ptr %".56" to i64
  %".58" = add i64 %".57", 0
  %"for_STG" = inttoptr i64 %".58" to ptr
  store float %".53", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_14:
  ; BRA `(.L_x_14)
  br label %".L_x_14"
ExitFunction:
  ret void
}

define void @"_Z6conv2dPfS_S_iiii"(i32 %"Arg_0", i32 %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6")
{
Entry_.text._Z6conv2dPfS_S_iiii:
  %"R1" = alloca i32, i32 1
  %"R3" = alloca i32, i32 1
  %"UR4" = alloca i32, i32 1
  %"UR5" = alloca i32, i32 1
  %"URZ" = alloca i32, i32 1
  %"R4" = alloca i32, i32 1
  %"R2" = alloca i32, i32 1
  %"R5" = alloca i32, i32 1
  %"R0" = alloca i32, i32 1
  %"P0" = alloca i1, i32 1
  %"PT" = alloca i1, i32 1
  %"R12" = alloca i32, i32 1
  %"RZ" = alloca i32, i32 1
  %"R10" = alloca i32, i32 1
  %"R26" = alloca i32, i32 1
  %"R11" = alloca i32, i32 1
  %"R8" = alloca i32, i32 1
  %"R9" = alloca i32, i32 1
  %"P1" = alloca i1, i32 1
  %"R6" = alloca i32, i32 1
  %"P3" = alloca i1, i32 1
  %"R29" = alloca i32, i32 1
  %"R24" = alloca i32, i32 1
  %"R13" = alloca i32, i32 1
  %"R23" = alloca i32, i32 1
  %"R14" = alloca i32, i32 1
  %"R31" = alloca i32, i32 1
  %"R16" = alloca i32, i32 1
  %"R18" = alloca i32, i32 1
  %"R20" = alloca i32, i32 1
  %"R22" = alloca i32, i32 1
  %"R25" = alloca i32, i32 1
  %"R27" = alloca i32, i32 1
  %"P2" = alloca i1, i32 1
  %"P4" = alloca i1, i32 1
  %"R7" = alloca i32, i32 1
  %"R15" = alloca i32, i32 1
  %"R19" = alloca i32, i32 1
  ; MOV R1, c[0x0][0x28]
  store i32 0, ptr %"R1"
  ; S2R R3, SR_CTAID.Y
  %"nvvm_ctaid_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()
  store i32 %"nvvm_ctaid_y", ptr %"R3"
  ; ULDC.64 UR4, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"UR4"
  ; UIADD3 UR5, UR4, -UR5, URZ
  %".17" = load i32, ptr %"UR4"
  %".18" = load i32, ptr %"UR5"
  %".19" = sub i32 0, %".18"
  %"add" = add i32 %".17", %".19"
  %"add.1" = add i32 %"add", 0
  store i32 %"add.1", ptr %"UR5"
  ; S2R R4, SR_TID.Y
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R4"
  ; S2R R2, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R2"
  ; S2R R5, SR_TID.X
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", ptr %"R5"
  ; S2R R0, SR_CTAID.Z
  %"nvvm_ctaid_z" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.z"()
  store i32 %"nvvm_ctaid_z", ptr %"R0"
  ; IMAD R3, R3, c[0x0][0x4], R4
  %".30" = load i32, ptr %"R3"
  %".31" = load i32, ptr %"R4"
  %"mul" = mul i32 %".30", 0
  %"add.2" = add i32 %"mul", %".31"
  store i32 %"add.2", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R3, UR5, PT
  %".34" = load i32, ptr %"R3"
  %".35" = load i32, ptr %"UR5"
  %".36" = load i1, ptr %"PT"
  %"cmp" = icmp sgt i32 %".34", %".35"
  %".37" = and i1 %"cmp", %".36"
  store i1 %".37", ptr %"P0"
  ; IMAD R2, R2, c[0x0][0x0], R5
  %".40" = load i32, ptr %"R2"
  %".41" = load i32, ptr %"R5"
  %"mul.1" = mul i32 %".40", 0
  %"add.3" = add i32 %"mul.1", %".41"
  store i32 %"add.3", ptr %"R2"
  ; ISETP.GT.OR P0, PT, R2, UR5, P0
  %".44" = load i32, ptr %"R2"
  %".45" = load i32, ptr %"UR5"
  %".46" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".44", %".45"
  %".47" = or i1 %"cmp.1", %".46"
  store i1 %".47", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R0, c[0x0][0x184], P0
  %".50" = load i32, ptr %"R0"
  %".51" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".50", %"Arg_6"
  %".52" = or i1 %"cmp.2", %".51"
  store i1 %".52", ptr %"P0"
  ; @P0 EXIT
  %".55" = load i1, ptr %"P0"
  %".56" = icmp ne i1 %".55", 1
  br i1 %".56", label %".text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0", label %".text._Z6conv2dPfS_S_iiii_split_0x00e0"
.text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0:
  ; EXIT
  br label %"ExitFunction"
.text._Z6conv2dPfS_S_iiii_split_0x00e0:
  ; MOV R4, 0x1
  store i32 1, ptr %"R4"
  ; IMAD.MOV.U32 R12, RZ, RZ, RZ
  %"mul.2" = mul i32 0, 0
  %"add.4" = add i32 %"mul.2", 0
  store i32 %"add.4", ptr %"R12"
  ; ISETP.LE.AND P0, PT, R4, c[0x0][0x17c], PT
  %".65" = load i32, ptr %"R4"
  %".66" = load i1, ptr %"PT"
  %"cmp.3" = icmp sle i32 %".65", %"Arg_4"
  %".67" = and i1 %"cmp.3", %".66"
  store i1 %".67", ptr %"P0"
  ; ISETP.GT.OR P0, PT, R4, c[0x0][0x180], !P0
  %".70" = load i32, ptr %"R4"
  %".71" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".70", %"Arg_5"
  %".72" = or i1 %"cmp.4", %".71"
  store i1 %".72", ptr %"P0"
  ; @P0 BRA `(.L_x_15)
  %".75" = load i1, ptr %"P0"
  %".76" = icmp ne i1 %".75", 1
  br i1 %".76", label %".L_x_15", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
.text._Z6conv2dPfS_S_iiii_split_0x0130:
  ; IMAD.MOV.U32 R4, RZ, RZ, c[0x0][0x17c]
  %"mul.3" = mul i32 0, 0
  %"add.5" = add i32 %"mul.3", %"Arg_4"
  store i32 %"add.5", ptr %"R4"
  ; MOV R5, 0x1
  store i32 1, ptr %"R5"
  ; IMAD.MOV.U32 R10, RZ, RZ, RZ
  %"mul.4" = mul i32 0, 0
  %"add.6" = add i32 %"mul.4", 0
  store i32 %"add.6", ptr %"R10"
  ; MOV R12, RZ
  %".85" = load float, ptr %"RZ"
  %".86" = bitcast ptr %"R12" to ptr
  store float %".85", ptr %".86"
  ; IADD3 R5, -R5, c[0x0][0x17c], RZ
  %".89" = load i32, ptr %"R5"
  %".90" = sub i32 0, %".89"
  %"add.7" = add i32 %".90", %"Arg_4"
  %"add.8" = add i32 %"add.7", 0
  store i32 %"add.8", ptr %"R5"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".93" = load i32, ptr %"R4"
  %".94" = and i32 %".93", 3
  store i32 %".94", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".97" = load i32, ptr %"R5"
  %".98" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".97", 3
  %".99" = and i1 %"cmp.5", %".98"
  store i1 %".99", ptr %"P0"
  ; IADD3 R26, R4, -c[0x0][0x17c], RZ
  %".102" = load i32, ptr %"R4"
  %".103" = sub i32 0, %"Arg_4"
  %"add.9" = add i32 %".102", %".103"
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", ptr %"R26"
  br label %".L_x_20"
.L_x_20:
  ; IMAD R11, R10, c[0x0][0x178], R3
  %".107" = load i32, ptr %"R10"
  %".108" = load i32, ptr %"R3"
  %"mul.5" = mul i32 %".107", %"Arg_3"
  %"add.11" = add i32 %"mul.5", %".108"
  store i32 %"add.11", ptr %"R11"
  ; MOV R8, RZ
  %".111" = load i32, ptr %"RZ"
  store i32 %".111", ptr %"R8"
  ; IMAD R9, R0, c[0x0][0x180], R10
  %".114" = load i32, ptr %"R0"
  %".115" = load i32, ptr %"R10"
  %"mul.6" = mul i32 %".114", %"Arg_5"
  %"add.12" = add i32 %"mul.6", %".115"
  store i32 %"add.12", ptr %"R9"
  ; IADD3 R10, R10, 0x1, RZ
  %".118" = load i32, ptr %"R10"
  %"add.13" = add i32 %".118", 1
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", ptr %"R10"
  ; IMAD R5, R11, c[0x0][0x178], R2
  %".121" = load i32, ptr %"R11"
  %".122" = load i32, ptr %"R2"
  %"mul.7" = mul i32 %".121", %"Arg_3"
  %"add.15" = add i32 %"mul.7", %".122"
  store i32 %"add.15", ptr %"R5"
  ; ISETP.GE.AND P1, PT, R10, c[0x0][0x180], PT
  %".125" = load i32, ptr %"R10"
  %".126" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".125", %"Arg_5"
  %".127" = and i1 %"cmp.6", %".126"
  store i1 %".127", ptr %"P1"
  br label %".L_x_19"
.L_x_19:
  ; IMAD R6, R9, c[0x0][0x17c], R8
  %".131" = load i32, ptr %"R9"
  %".132" = load i32, ptr %"R8"
  %"mul.8" = mul i32 %".131", %"Arg_4"
  %"add.16" = add i32 %"mul.8", %".132"
  store i32 %"add.16", ptr %"R6"
  ; UMOV UR4, URZ
  %".135" = load i32, ptr %"URZ"
  store i32 %".135", ptr %"UR4"
  ; ISETP.NE.AND P3, PT, R4, RZ, PT
  %".138" = load i32, ptr %"R4"
  %".139" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".138", 0
  %".140" = and i1 %"cmp.7", %".139"
  store i1 %".140", ptr %"P3"
  ; IMAD R29, R6, c[0x0][0x17c], RZ
  %".143" = load i32, ptr %"R6"
  %"mul.9" = mul i32 %".143", %"Arg_4"
  %"add.17" = add i32 %"mul.9", 0
  store i32 %"add.17", ptr %"R29"
  ; @!P0 BRA `(.L_x_16)
  %".146" = load i1, ptr %"P0"
  %".147" = icmp eq i1 %".146", 1
  br i1 %".147", label %".L_x_16", label %".L_x_19_split_0x0260"
.L_x_19_split_0x0260:
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD.IADD R13, R5, 0x1, R8
  %".152" = load i32, ptr %"R5"
  %".153" = load i32, ptr %"R8"
  %"mul.10" = mul i32 %".152", 1
  %"add.18" = add i32 %"mul.10", %".153"
  store i32 %"add.18", ptr %"R13"
  ; UMOV UR4, URZ
  %".156" = load i32, ptr %"URZ"
  store i32 %".156", ptr %"UR4"
  ; IMAD.WIDE R6, R29, R24, c[0x0][0x168]
  %".159" = load i32, ptr %"R29"
  %".160" = load i32, ptr %"R24"
  %"mul.11" = mul i32 %".159", %".160"
  %"add.19" = add i32 %"mul.11", %"Arg_1"
  store i32 %"add.19", ptr %"R6"
  ; MOV R23, R6
  %".163" = load i32, ptr %"R6"
  store i32 %".163", ptr %"R23"
  br label %".L_x_17"
.L_x_17:
  ; IMAD.WIDE R14, R13, R24, c[0x0][0x160]
  %".167" = load i32, ptr %"R13"
  %".168" = load i32, ptr %"R24"
  %"mul.12" = mul i32 %".167", %".168"
  %"add.20" = add i32 %"mul.12", %"Arg_0"
  store i32 %"add.20", ptr %"R14"
  ; MOV R31, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"R31"
  ; IMAD.MOV.U32 R6, RZ, RZ, R23
  %".173" = load i32, ptr %"R23"
  %"mul.13" = mul i32 0, 0
  %"add.21" = add i32 %"mul.13", %".173"
  store i32 %"add.21", ptr %"R6"
  ; IMAD.WIDE R16, R31.reuse, 0x4, R14
  %".176" = load i32, ptr %"R31"
  %".177" = load i32, ptr %"R14"
  %"mul.14" = mul i32 %".176", 4
  %"add.22" = add i32 %"mul.14", %".177"
  store i32 %"add.22", ptr %"R16"
  ; LDG.E.SYS R14, [R14]
  %".180" = load i32, ptr %"R14"
  %"zext" = zext i32 %".180" to i64
  %".181" = load i32, ptr %"R15"
  %"zext.1" = zext i32 %".181" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %".182" = inttoptr i64 %"or" to ptr
  %".183" = ptrtoint ptr %".182" to i64
  %".184" = add i64 %".183", 0
  %"for_LDG" = inttoptr i64 %".184" to ptr
  %".185" = load float, ptr %"for_LDG"
  %".186" = bitcast ptr %"R14" to ptr
  store float %".185", ptr %".186"
  ; LDG.E.SYS R23, [R6]
  %".189" = load i32, ptr %"R6"
  %"zext.2" = zext i32 %".189" to i64
  %".190" = load i32, ptr %"R7"
  %"zext.3" = zext i32 %".190" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %".191" = inttoptr i64 %"or.1" to ptr
  %".192" = ptrtoint ptr %".191" to i64
  %".193" = add i64 %".192", 0
  %"for_LDG.1" = inttoptr i64 %".193" to ptr
  %".194" = load float, ptr %"for_LDG.1"
  %".195" = bitcast ptr %"R23" to ptr
  store float %".194", ptr %".195"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".198" = load i32, ptr %"R31"
  %".199" = load i32, ptr %"R16"
  %"mul.15" = mul i32 %".198", 4
  %"add.23" = add i32 %"mul.15", %".199"
  store i32 %"add.23", ptr %"R18"
  ; LDG.E.SYS R16, [R16]
  %".202" = load i32, ptr %"R16"
  %"zext.4" = zext i32 %".202" to i64
  %"zext.5" = zext i32 0 to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %".203" = inttoptr i64 %"or.2" to ptr
  %".204" = ptrtoint ptr %".203" to i64
  %".205" = add i64 %".204", 0
  %"for_LDG.2" = inttoptr i64 %".205" to ptr
  %".206" = load float, ptr %"for_LDG.2"
  %".207" = bitcast ptr %"R16" to ptr
  store float %".206", ptr %".207"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".210" = load i32, ptr %"R31"
  %".211" = load i32, ptr %"R18"
  %"mul.16" = mul i32 %".210", 4
  %"add.24" = add i32 %"mul.16", %".211"
  store i32 %"add.24", ptr %"R20"
  ; LDG.E.SYS R22, [R6+0x4]
  %".214" = load i32, ptr %"R6"
  %"zext.6" = zext i32 %".214" to i64
  %".215" = load i32, ptr %"R7"
  %"zext.7" = zext i32 %".215" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %".216" = inttoptr i64 %"or.3" to ptr
  %".217" = ptrtoint ptr %".216" to i64
  %".218" = add i64 %".217", 4
  %"for_LDG.3" = inttoptr i64 %".218" to ptr
  %".219" = load float, ptr %"for_LDG.3"
  %".220" = bitcast ptr %"R22" to ptr
  store float %".219", ptr %".220"
  ; LDG.E.SYS R18, [R18]
  %".223" = load i32, ptr %"R18"
  %"zext.8" = zext i32 %".223" to i64
  %".224" = load i32, ptr %"R19"
  %"zext.9" = zext i32 %".224" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %".225" = inttoptr i64 %"or.4" to ptr
  %".226" = ptrtoint ptr %".225" to i64
  %".227" = add i64 %".226", 0
  %"for_LDG.4" = inttoptr i64 %".227" to ptr
  %".228" = load float, ptr %"for_LDG.4"
  %".229" = bitcast ptr %"R18" to ptr
  store float %".228", ptr %".229"
  ; LDG.E.SYS R25, [R6+0x8]
  %".232" = load i32, ptr %"R6"
  %"zext.10" = zext i32 %".232" to i64
  %".233" = load i32, ptr %"R7"
  %"zext.11" = zext i32 %".233" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %".234" = inttoptr i64 %"or.5" to ptr
  %".235" = ptrtoint ptr %".234" to i64
  %".236" = add i64 %".235", 8
  %"for_LDG.5" = inttoptr i64 %".236" to ptr
  %".237" = load float, ptr %"for_LDG.5"
  %".238" = bitcast ptr %"R25" to ptr
  store float %".237", ptr %".238"
  ; LDG.E.SYS R20, [R20]
  %".241" = load i32, ptr %"R20"
  %"zext.12" = zext i32 %".241" to i64
  %"zext.13" = zext i32 0 to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %".242" = inttoptr i64 %"or.6" to ptr
  %".243" = ptrtoint ptr %".242" to i64
  %".244" = add i64 %".243", 0
  %"for_LDG.6" = inttoptr i64 %".244" to ptr
  %".245" = load float, ptr %"for_LDG.6"
  %".246" = bitcast ptr %"R20" to ptr
  store float %".245", ptr %".246"
  ; LDG.E.SYS R27, [R6+0xc]
  %".249" = load i32, ptr %"R6"
  %"zext.14" = zext i32 %".249" to i64
  %".250" = load i32, ptr %"R7"
  %"zext.15" = zext i32 %".250" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %".251" = inttoptr i64 %"or.7" to ptr
  %".252" = ptrtoint ptr %".251" to i64
  %".253" = add i64 %".252", 12
  %"for_LDG.7" = inttoptr i64 %".253" to ptr
  %".254" = load float, ptr %"for_LDG.7"
  %".255" = bitcast ptr %"R27" to ptr
  store float %".254", ptr %".255"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".258" = load i32, ptr %"UR4"
  %"add.25" = add i32 %".258", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"UR4"
  ; LEA R13, R31, R13, 0x2
  %".261" = load i32, ptr %"R31"
  %".262" = load i32, ptr %"R13"
  %"shl.8" = shl i32 %".261", 2
  %"add.27" = add i32 %"shl.8", %".262"
  store i32 %"add.27", ptr %"R13"
  ; FFMA R23, R23, R14, R12
  %".265" = load float, ptr %"R23"
  %".266" = load float, ptr %"R14"
  %".267" = load float, ptr %"R12"
  %"fmul" = fmul float %".265", %".266"
  %"fadd" = fadd float %"fmul", %".267"
  %".268" = bitcast ptr %"R23" to ptr
  store float %"fadd", ptr %".268"
  ; IADD3 R12, R26, UR4, RZ
  %".271" = load i32, ptr %"R26"
  %".272" = load i32, ptr %"UR4"
  %"add.28" = add i32 %".271", %".272"
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", ptr %"R12"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".275" = load i32, ptr %"R12"
  %".276" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".275", 0
  %".277" = and i1 %"cmp.8", %".276"
  store i1 %".277", ptr %"P2"
  ; FFMA R22, R22, R16, R23
  %".280" = load float, ptr %"R22"
  %".281" = load float, ptr %"R16"
  %".282" = load float, ptr %"R23"
  %"fmul.1" = fmul float %".280", %".281"
  %"fadd.1" = fadd float %"fmul.1", %".282"
  %".283" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".283"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".286" = load i32, ptr %"R6"
  %"add.30" = add i32 %".286", 16
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R23"
  %"carry" = icmp ult i32 %"add.31", %".286"
  store i1 %"carry", ptr %"P4"
  ; FFMA R22, R25, R18, R22
  %".290" = load float, ptr %"R25"
  %".291" = load float, ptr %"R18"
  %".292" = load float, ptr %"R22"
  %"fmul.2" = fmul float %".290", %".291"
  %"fadd.2" = fadd float %"fmul.2", %".292"
  %".293" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".293"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".296" = load i32, ptr %"R7"
  %".297" = load i1, ptr %"P4"
  %".298" = sub i1 0, %".297"
  %".299" = zext i1 %".298" to i32
  %"add.32" = add i32 0, %".296"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".299"
  store i32 %"add.34", ptr %"R7"
  ; FFMA R12, R27, R20, R22
  %".302" = load float, ptr %"R27"
  %".303" = load float, ptr %"R20"
  %".304" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".302", %".303"
  %"fadd.3" = fadd float %"fmul.3", %".304"
  %".305" = bitcast ptr %"R12" to ptr
  store float %"fadd.3", ptr %".305"
  ; @P2 BRA `(.L_x_17)
  %".308" = load i1, ptr %"P2"
  %".309" = icmp ne i1 %".308", 1
  br i1 %".309", label %".L_x_17", label %".L_x_16"
.L_x_16:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".312" = load i32, ptr %"R2"
  %".313" = load i32, ptr %"R8"
  %"mul.17" = mul i32 %".312", 1
  %"add.35" = add i32 %"mul.17", %".313"
  store i32 %"add.35", ptr %"R14"
  ; @!P3 BRA `(.L_x_18)
  %".316" = load i1, ptr %"P3"
  %".317" = icmp eq i1 %".316", 1
  br i1 %".317", label %".L_x_18", label %".L_x_16_split_0x0460"
.L_x_16_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".320" = load i32, ptr %"R11"
  %".321" = load i32, ptr %"UR4"
  %"add.36" = add i32 %".320", %".321"
  %"add.37" = add i32 %"add.36", 0
  store i32 %"add.37", ptr %"R15"
  ; IADD3 R16, R29, UR4, RZ
  %".324" = load i32, ptr %"R29"
  %".325" = load i32, ptr %"UR4"
  %"add.38" = add i32 %".324", %".325"
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R16"
  ; MOV R19, 0x4
  store i32 4, ptr %"R19"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".330" = load i32, ptr %"R15"
  %".331" = load i32, ptr %"R14"
  %"mul.18" = mul i32 %".330", %"Arg_3"
  %"add.40" = add i32 %"mul.18", %".331"
  store i32 %"add.40", ptr %"R6"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".334" = load i32, ptr %"R16"
  %".335" = load i32, ptr %"R19"
  %"mul.19" = mul i32 %".334", %".335"
  %"add.41" = add i32 %"mul.19", %"Arg_1"
  store i32 %"add.41", ptr %"R16"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".338" = load i32, ptr %"R6"
  %".339" = load i32, ptr %"R19"
  %"mul.20" = mul i32 %".338", %".339"
  %"add.42" = add i32 %"mul.20", %"Arg_0"
  store i32 %"add.42", ptr %"R6"
  ; LDG.E.SYS R13, [R16]
  %".342" = load i32, ptr %"R16"
  %"zext.16" = zext i32 %".342" to i64
  %"zext.17" = zext i32 0 to i64
  %"shl.9" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.9", %"zext.16"
  %".343" = inttoptr i64 %"or.8" to ptr
  %".344" = ptrtoint ptr %".343" to i64
  %".345" = add i64 %".344", 0
  %"for_LDG.8" = inttoptr i64 %".345" to ptr
  %".346" = load float, ptr %"for_LDG.8"
  %".347" = bitcast ptr %"R13" to ptr
  store float %".346", ptr %".347"
  ; LDG.E.SYS R6, [R6]
  %".350" = load i32, ptr %"R6"
  %"zext.18" = zext i32 %".350" to i64
  %".351" = load i32, ptr %"R7"
  %"zext.19" = zext i32 %".351" to i64
  %"shl.10" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.10", %"zext.18"
  %".352" = inttoptr i64 %"or.9" to ptr
  %".353" = ptrtoint ptr %".352" to i64
  %".354" = add i64 %".353", 0
  %"for_LDG.9" = inttoptr i64 %".354" to ptr
  %".355" = load float, ptr %"for_LDG.9"
  %".356" = bitcast ptr %"R6" to ptr
  store float %".355", ptr %".356"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".359" = load i32, ptr %"R4"
  %".360" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".359", 1
  %".361" = and i1 %"cmp.9", %".360"
  store i1 %".361", ptr %"P2"
  ; FFMA R12, R13, R6, R12
  %".364" = load float, ptr %"R13"
  %".365" = load float, ptr %"R6"
  %".366" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".364", %".365"
  %"fadd.4" = fadd float %"fmul.4", %".366"
  %".367" = bitcast ptr %"R12" to ptr
  store float %"fadd.4", ptr %".367"
  ; @!P2 BRA `(.L_x_18)
  %".370" = load i1, ptr %"P2"
  %".371" = icmp eq i1 %".370", 1
  br i1 %".371", label %".L_x_18", label %".L_x_16_split_0x0510"
.L_x_16_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".374" = load i32, ptr %"R4"
  %".375" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".374", 2
  %".376" = and i1 %"cmp.10", %".375"
  store i1 %".376", ptr %"P2"
  ; LDG.E.SYS R13, [R16+0x4]
  %".379" = load i32, ptr %"R16"
  %"zext.20" = zext i32 %".379" to i64
  %"zext.21" = zext i32 0 to i64
  %"shl.11" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.11", %"zext.20"
  %".380" = inttoptr i64 %"or.10" to ptr
  %".381" = ptrtoint ptr %".380" to i64
  %".382" = add i64 %".381", 4
  %"for_LDG.10" = inttoptr i64 %".382" to ptr
  %".383" = load float, ptr %"for_LDG.10"
  %".384" = bitcast ptr %"R13" to ptr
  store float %".383", ptr %".384"
  ; IADD3 R6, R15, 0x1, RZ
  %".387" = load i32, ptr %"R15"
  %"add.43" = add i32 %".387", 1
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", ptr %"R6"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".390" = load i32, ptr %"R6"
  %".391" = load i32, ptr %"R14"
  %"mul.21" = mul i32 %".390", %"Arg_3"
  %"add.45" = add i32 %"mul.21", %".391"
  store i32 %"add.45", ptr %"R6"
  ; @P2 IADD3 R7, R15, 0x2, RZ
  %".394" = load i1, ptr %"P2"
  %".395" = icmp ne i1 %".394", 1
  br i1 %".395", label %".L_x_16_split_0x0510_conditionalExpr_0x0550", label %".L_x_16_split_0x0560"
.L_x_16_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".398" = load i32, ptr %"R15"
  %"add.46" = add i32 %".398", 2
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R7"
  ; BRA `(.L_x_16_split_0x0560)
  br label %".L_x_16_split_0x0560"
.L_x_16_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14
  %".403" = load i1, ptr %"P2"
  %".404" = icmp ne i1 %".403", 1
  br i1 %".404", label %".L_x_16_split_0x0560_conditionalExpr_0x0560", label %".L_x_16_split_0x0570"
.L_x_16_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".407" = load i32, ptr %"R7"
  %".408" = load i32, ptr %"R14"
  %"mul.22" = mul i32 %".407", %"Arg_3"
  %"add.48" = add i32 %"mul.22", %".408"
  store i32 %"add.48", ptr %"R14"
  ; BRA `(.L_x_16_split_0x0570)
  br label %".L_x_16_split_0x0570"
.L_x_16_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".413" = load i32, ptr %"R6"
  %".414" = load i32, ptr %"R19"
  %"mul.23" = mul i32 %".413", %".414"
  %"add.49" = add i32 %"mul.23", %"Arg_0"
  store i32 %"add.49", ptr %"R6"
  ; @P2 IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".417" = load i1, ptr %"P2"
  %".418" = icmp ne i1 %".417", 1
  br i1 %".418", label %".L_x_16_split_0x0570_conditionalExpr_0x0580", label %".L_x_16_split_0x0590"
.L_x_16_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".421" = load i32, ptr %"R14"
  %".422" = load i32, ptr %"R19"
  %"mul.24" = mul i32 %".421", %".422"
  %"add.50" = add i32 %"mul.24", %"Arg_0"
  store i32 %"add.50", ptr %"R14"
  ; BRA `(.L_x_16_split_0x0590)
  br label %".L_x_16_split_0x0590"
.L_x_16_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8]
  %".427" = load i1, ptr %"P2"
  %".428" = icmp ne i1 %".427", 1
  br i1 %".428", label %".L_x_16_split_0x0590_conditionalExpr_0x0590", label %".L_x_16_split_0x05a0"
.L_x_16_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".431" = load i32, ptr %"R16"
  %"zext.22" = zext i32 %".431" to i64
  %"zext.23" = zext i32 0 to i64
  %"shl.12" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.12", %"zext.22"
  %".432" = inttoptr i64 %"or.11" to ptr
  %".433" = ptrtoint ptr %".432" to i64
  %".434" = add i64 %".433", 8
  %"for_LDG.11" = inttoptr i64 %".434" to ptr
  %".435" = load float, ptr %"for_LDG.11"
  %".436" = bitcast ptr %"R19" to ptr
  store float %".435", ptr %".436"
  ; BRA `(.L_x_16_split_0x05a0)
  br label %".L_x_16_split_0x05a0"
.L_x_16_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".441" = load i32, ptr %"R6"
  %"zext.24" = zext i32 %".441" to i64
  %".442" = load i32, ptr %"R7"
  %"zext.25" = zext i32 %".442" to i64
  %"shl.13" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.13", %"zext.24"
  %".443" = inttoptr i64 %"or.12" to ptr
  %".444" = ptrtoint ptr %".443" to i64
  %".445" = add i64 %".444", 0
  %"for_LDG.12" = inttoptr i64 %".445" to ptr
  %".446" = load float, ptr %"for_LDG.12"
  %".447" = bitcast ptr %"R6" to ptr
  store float %".446", ptr %".447"
  ; @P2 LDG.E.SYS R14, [R14]
  %".450" = load i1, ptr %"P2"
  %".451" = icmp ne i1 %".450", 1
  br i1 %".451", label %".L_x_16_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".454" = load i32, ptr %"R14"
  %"zext.26" = zext i32 %".454" to i64
  %".455" = load i32, ptr %"R15"
  %"zext.27" = zext i32 %".455" to i64
  %"shl.14" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.14", %"zext.26"
  %".456" = inttoptr i64 %"or.13" to ptr
  %".457" = ptrtoint ptr %".456" to i64
  %".458" = add i64 %".457", 0
  %"for_LDG.13" = inttoptr i64 %".458" to ptr
  %".459" = load float, ptr %"for_LDG.13"
  %".460" = bitcast ptr %"R14" to ptr
  store float %".459", ptr %".460"
  ; BRA `(.L_x_16_split_0x05c0)
  br label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".465" = load float, ptr %"R13"
  %".466" = load float, ptr %"R6"
  %".467" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".465", %".466"
  %"fadd.5" = fadd float %"fmul.5", %".467"
  %".468" = bitcast ptr %"R12" to ptr
  store float %"fadd.5", ptr %".468"
  ; @P2 FFMA R12, R19, R14, R12
  %".471" = load i1, ptr %"P2"
  %".472" = icmp ne i1 %".471", 1
  br i1 %".472", label %".L_x_16_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_18"
.L_x_16_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".475" = load float, ptr %"R19"
  %".476" = load float, ptr %"R14"
  %".477" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".475", %".476"
  %"fadd.6" = fadd float %"fmul.6", %".477"
  %".478" = bitcast ptr %"R12" to ptr
  store float %"fadd.6", ptr %".478"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_18:
  ; IADD3 R8, R8, 0x1, RZ
  %".483" = load i32, ptr %"R8"
  %"add.51" = add i32 %".483", 1
  %"add.52" = add i32 %"add.51", 0
  store i32 %"add.52", ptr %"R8"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".486" = load i32, ptr %"R8"
  %".487" = load i1, ptr %"PT"
  %"cmp.11" = icmp sge i32 %".486", %"Arg_4"
  %".488" = and i1 %"cmp.11", %".487"
  store i1 %".488", ptr %"P2"
  ; @!P2 BRA `(.L_x_19)
  %".491" = load i1, ptr %"P2"
  %".492" = icmp eq i1 %".491", 1
  br i1 %".492", label %".L_x_19", label %".L_x_18_split_0x0610"
.L_x_18_split_0x0610:
  ; @!P1 BRA `(.L_x_20)
  %".495" = load i1, ptr %"P1"
  %".496" = icmp eq i1 %".495", 1
  br i1 %".496", label %".L_x_20", label %".L_x_15"
.L_x_15:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".499" = load i32, ptr %"UR5"
  %"add.53" = add i32 %".499", 1
  %"add.54" = add i32 %"add.53", 0
  store i32 %"add.54", ptr %"UR4"
  ; IMAD R3, R0, UR4, R3
  %".502" = load i32, ptr %"R0"
  %".503" = load i32, ptr %"UR4"
  %".504" = load i32, ptr %"R3"
  %"mul.25" = mul i32 %".502", %".503"
  %"add.55" = add i32 %"mul.25", %".504"
  store i32 %"add.55", ptr %"R3"
  ; MOV R0, 0x4
  store i32 4, ptr %"R0"
  ; IMAD R3, R3, UR4, R2
  %".509" = load i32, ptr %"R3"
  %".510" = load i32, ptr %"UR4"
  %".511" = load i32, ptr %"R2"
  %"mul.26" = mul i32 %".509", %".510"
  %"add.56" = add i32 %"mul.26", %".511"
  store i32 %"add.56", ptr %"R3"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".514" = load i32, ptr %"R3"
  %".515" = load i32, ptr %"R0"
  %"mul.27" = mul i32 %".514", %".515"
  %"add.57" = add i32 %"mul.27", %"Arg_2"
  store i32 %"add.57", ptr %"R2"
  ; STG.E.SYS [R2], R12
  %".518" = load i32, ptr %"R12"
  %".519" = load i32, ptr %"R2"
  %"zext.28" = zext i32 %".519" to i64
  %".520" = load i32, ptr %"R3"
  %"zext.29" = zext i32 %".520" to i64
  %"shl.15" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.15", %"zext.28"
  %".521" = inttoptr i64 %"or.14" to ptr
  %".522" = ptrtoint ptr %".521" to i64
  %".523" = add i64 %".522", 0
  %"for_STG" = inttoptr i64 %".523" to ptr
  store i32 %".518", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_21:
  ; BRA `(.L_x_21)
  br label %".L_x_21"
ExitFunction:
  ret void
}

