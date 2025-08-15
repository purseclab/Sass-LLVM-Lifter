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

define void @"_Z8fc_layerPfS_S_S_ii"(ptr %"Arg_0", ptr %"Arg_1", ptr %"Arg_2", ptr %"Arg_3", i32 %"Arg_4", i32 %"Arg_5")
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
  %".74" = ptrtoint ptr %"Arg_0" to i64
  %".75" = add i64 %".74", 0
  %"for_LDG" = inttoptr i64 %".75" to ptr
  %".76" = load i32, ptr %"for_LDG"
  store i32 %".76", ptr %"UR4"
  ; IMAD.MOV.U32 R3, RZ, RZ, 0x4
  %"mul.3" = mul i32 0, 0
  %"add.7" = add i32 %"mul.3", 4
  store i32 %"add.7", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R6, RZ, PT
  %".81" = load i32, ptr %"R6"
  %".82" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".81", 0
  %".83" = and i1 %"cmp.3", %".82"
  store i1 %".83", ptr %"P0"
  ; MOV R7, RZ
  %".86" = load float, ptr %"RZ"
  %".87" = bitcast ptr %"R7" to ptr
  store float %".86", ptr %".87"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".90" = load i32, ptr %"R2"
  %".91" = load i32, ptr %"R3"
  %"zext" = zext i32 %".90" to i64
  %"zext.1" = zext i32 %".91" to i64
  %"mul.4" = mul i64 %"zext", %"zext.1"
  %".92" = ptrtoint ptr %"Arg_1" to i64
  %"add.8" = add i64 %"mul.4", %".92"
  %".93" = and i64 %"add.8", 18446744069414584320
  %".94" = lshr i64 %".93", 32
  %"trunc32" = trunc i64 %".94" to i32
  %"trunc32.1" = trunc i64 %"add.8" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; MOV R5, RZ
  %".98" = load i32, ptr %"RZ"
  store i32 %".98", ptr %"R5"
  ; @!P0 BRA `(.L_x_2)
  %".101" = load i1, ptr %"P0"
  %".102" = icmp eq i1 %".101", 1
  br i1 %".102", label %".L_x_2", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".105" = load i32, ptr %"R6"
  %".106" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".105", 12
  %".107" = and i1 %"cmp.4", %".106"
  store i1 %".107", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".110" = and i1 1, 1
  %".111" = or i1 %".110", 1
  ; @!P1 BRA `(.L_x_3)
  %".113" = load i1, ptr %"P1"
  %".114" = icmp eq i1 %".113", 1
  br i1 %".114", label %".L_x_3", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".117" = xor i1 1, 1
  %".118" = and i1 %".117", 1
  %".119" = and i1 %".118", 1
  br label %".L_x_4"
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".122" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".122" to i64
  %".123" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".123" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %".124" = inttoptr i64 %"or" to ptr
  %".125" = ptrtoint ptr %".124" to i64
  %".126" = add i64 %".125", 0
  %"for_LDG.1" = inttoptr i64 %".126" to ptr
  %".127" = load float, ptr %"for_LDG.1"
  %".128" = bitcast ptr %"R8" to ptr
  store float %".127", ptr %".128"
  ; LDG.E.SYS R9, [UR4]
  %".131" = load i32, ptr %"UR4"
  %"zext.4" = zext i32 %".131" to i64
  %".132" = load i32, ptr %"UR5"
  %"zext.5" = zext i32 %".132" to i64
  %"shl.1" = shl i64 %"zext.5", 32
  %"or.1" = or i64 %"shl.1", %"zext.4"
  %".133" = inttoptr i64 %"or.1" to ptr
  %".134" = ptrtoint ptr %".133" to i64
  %".135" = add i64 %".134", 0
  %"for_LDG.2" = inttoptr i64 %".135" to ptr
  %".136" = load float, ptr %"for_LDG.2"
  %".137" = bitcast ptr %"R9" to ptr
  store float %".136", ptr %".137"
  ; LDG.E.SYS R11, [R2+0x4]
  %".140" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".140" to i64
  %".141" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".141" to i64
  %"shl.2" = shl i64 %"zext.7", 32
  %"or.2" = or i64 %"shl.2", %"zext.6"
  %".142" = inttoptr i64 %"or.2" to ptr
  %".143" = ptrtoint ptr %".142" to i64
  %".144" = add i64 %".143", 4
  %"for_LDG.3" = inttoptr i64 %".144" to ptr
  %".145" = load float, ptr %"for_LDG.3"
  %".146" = bitcast ptr %"R11" to ptr
  store float %".145", ptr %".146"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".149" = load i32, ptr %"UR4"
  %"zext.8" = zext i32 %".149" to i64
  %".150" = load i32, ptr %"UR5"
  %"zext.9" = zext i32 %".150" to i64
  %"shl.3" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.3", %"zext.8"
  %".151" = inttoptr i64 %"or.3" to ptr
  %".152" = ptrtoint ptr %".151" to i64
  %".153" = add i64 %".152", 4
  %"for_LDG.4" = inttoptr i64 %".153" to ptr
  %".154" = load float, ptr %"for_LDG.4"
  %".155" = bitcast ptr %"R10" to ptr
  store float %".154", ptr %".155"
  ; LDG.E.SYS R13, [R2+0x8]
  %".158" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".158" to i64
  %".159" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".159" to i64
  %"shl.4" = shl i64 %"zext.11", 32
  %"or.4" = or i64 %"shl.4", %"zext.10"
  %".160" = inttoptr i64 %"or.4" to ptr
  %".161" = ptrtoint ptr %".160" to i64
  %".162" = add i64 %".161", 8
  %"for_LDG.5" = inttoptr i64 %".162" to ptr
  %".163" = load float, ptr %"for_LDG.5"
  %".164" = bitcast ptr %"R13" to ptr
  store float %".163", ptr %".164"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".167" = load i32, ptr %"UR4"
  %"zext.12" = zext i32 %".167" to i64
  %".168" = load i32, ptr %"UR5"
  %"zext.13" = zext i32 %".168" to i64
  %"shl.5" = shl i64 %"zext.13", 32
  %"or.5" = or i64 %"shl.5", %"zext.12"
  %".169" = inttoptr i64 %"or.5" to ptr
  %".170" = ptrtoint ptr %".169" to i64
  %".171" = add i64 %".170", 8
  %"for_LDG.6" = inttoptr i64 %".171" to ptr
  %".172" = load float, ptr %"for_LDG.6"
  %".173" = bitcast ptr %"R12" to ptr
  store float %".172", ptr %".173"
  ; LDG.E.SYS R15, [R2+0xc]
  %".176" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".176" to i64
  %".177" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".177" to i64
  %"shl.6" = shl i64 %"zext.15", 32
  %"or.6" = or i64 %"shl.6", %"zext.14"
  %".178" = inttoptr i64 %"or.6" to ptr
  %".179" = ptrtoint ptr %".178" to i64
  %".180" = add i64 %".179", 12
  %"for_LDG.7" = inttoptr i64 %".180" to ptr
  %".181" = load float, ptr %"for_LDG.7"
  %".182" = bitcast ptr %"R15" to ptr
  store float %".181", ptr %".182"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".185" = load i32, ptr %"UR4"
  %"zext.16" = zext i32 %".185" to i64
  %".186" = load i32, ptr %"UR5"
  %"zext.17" = zext i32 %".186" to i64
  %"shl.7" = shl i64 %"zext.17", 32
  %"or.7" = or i64 %"shl.7", %"zext.16"
  %".187" = inttoptr i64 %"or.7" to ptr
  %".188" = ptrtoint ptr %".187" to i64
  %".189" = add i64 %".188", 12
  %"for_LDG.8" = inttoptr i64 %".189" to ptr
  %".190" = load float, ptr %"for_LDG.8"
  %".191" = bitcast ptr %"R14" to ptr
  store float %".190", ptr %".191"
  ; LDG.E.SYS R17, [R2+0x10]
  %".194" = load i32, ptr %"R2"
  %"zext.18" = zext i32 %".194" to i64
  %".195" = load i32, ptr %"R3"
  %"zext.19" = zext i32 %".195" to i64
  %"shl.8" = shl i64 %"zext.19", 32
  %"or.8" = or i64 %"shl.8", %"zext.18"
  %".196" = inttoptr i64 %"or.8" to ptr
  %".197" = ptrtoint ptr %".196" to i64
  %".198" = add i64 %".197", 16
  %"for_LDG.9" = inttoptr i64 %".198" to ptr
  %".199" = load float, ptr %"for_LDG.9"
  %".200" = bitcast ptr %"R17" to ptr
  store float %".199", ptr %".200"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".203" = load i32, ptr %"UR4"
  %"zext.20" = zext i32 %".203" to i64
  %".204" = load i32, ptr %"UR5"
  %"zext.21" = zext i32 %".204" to i64
  %"shl.9" = shl i64 %"zext.21", 32
  %"or.9" = or i64 %"shl.9", %"zext.20"
  %".205" = inttoptr i64 %"or.9" to ptr
  %".206" = ptrtoint ptr %".205" to i64
  %".207" = add i64 %".206", 16
  %"for_LDG.10" = inttoptr i64 %".207" to ptr
  %".208" = load float, ptr %"for_LDG.10"
  %".209" = bitcast ptr %"R16" to ptr
  store float %".208", ptr %".209"
  ; LDG.E.SYS R19, [R2+0x14]
  %".212" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".212" to i64
  %".213" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".213" to i64
  %"shl.10" = shl i64 %"zext.23", 32
  %"or.10" = or i64 %"shl.10", %"zext.22"
  %".214" = inttoptr i64 %"or.10" to ptr
  %".215" = ptrtoint ptr %".214" to i64
  %".216" = add i64 %".215", 20
  %"for_LDG.11" = inttoptr i64 %".216" to ptr
  %".217" = load float, ptr %"for_LDG.11"
  %".218" = bitcast ptr %"R19" to ptr
  store float %".217", ptr %".218"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".221" = load i32, ptr %"UR4"
  %"zext.24" = zext i32 %".221" to i64
  %".222" = load i32, ptr %"UR5"
  %"zext.25" = zext i32 %".222" to i64
  %"shl.11" = shl i64 %"zext.25", 32
  %"or.11" = or i64 %"shl.11", %"zext.24"
  %".223" = inttoptr i64 %"or.11" to ptr
  %".224" = ptrtoint ptr %".223" to i64
  %".225" = add i64 %".224", 20
  %"for_LDG.12" = inttoptr i64 %".225" to ptr
  %".226" = load float, ptr %"for_LDG.12"
  %".227" = bitcast ptr %"R18" to ptr
  store float %".226", ptr %".227"
  ; LDG.E.SYS R21, [R2+0x18]
  %".230" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".230" to i64
  %".231" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".231" to i64
  %"shl.12" = shl i64 %"zext.27", 32
  %"or.12" = or i64 %"shl.12", %"zext.26"
  %".232" = inttoptr i64 %"or.12" to ptr
  %".233" = ptrtoint ptr %".232" to i64
  %".234" = add i64 %".233", 24
  %"for_LDG.13" = inttoptr i64 %".234" to ptr
  %".235" = load float, ptr %"for_LDG.13"
  %".236" = bitcast ptr %"R21" to ptr
  store float %".235", ptr %".236"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".239" = load i32, ptr %"UR4"
  %"zext.28" = zext i32 %".239" to i64
  %".240" = load i32, ptr %"UR5"
  %"zext.29" = zext i32 %".240" to i64
  %"shl.13" = shl i64 %"zext.29", 32
  %"or.13" = or i64 %"shl.13", %"zext.28"
  %".241" = inttoptr i64 %"or.13" to ptr
  %".242" = ptrtoint ptr %".241" to i64
  %".243" = add i64 %".242", 24
  %"for_LDG.14" = inttoptr i64 %".243" to ptr
  %".244" = load float, ptr %"for_LDG.14"
  %".245" = bitcast ptr %"R20" to ptr
  store float %".244", ptr %".245"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".248" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".248" to i64
  %".249" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".249" to i64
  %"shl.14" = shl i64 %"zext.31", 32
  %"or.14" = or i64 %"shl.14", %"zext.30"
  %".250" = inttoptr i64 %"or.14" to ptr
  %".251" = ptrtoint ptr %".250" to i64
  %".252" = add i64 %".251", 28
  %"for_LDG.15" = inttoptr i64 %".252" to ptr
  %".253" = load float, ptr %"for_LDG.15"
  %".254" = bitcast ptr %"R23" to ptr
  store float %".253", ptr %".254"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".257" = load i32, ptr %"UR4"
  %"zext.32" = zext i32 %".257" to i64
  %".258" = load i32, ptr %"UR5"
  %"zext.33" = zext i32 %".258" to i64
  %"shl.15" = shl i64 %"zext.33", 32
  %"or.15" = or i64 %"shl.15", %"zext.32"
  %".259" = inttoptr i64 %"or.15" to ptr
  %".260" = ptrtoint ptr %".259" to i64
  %".261" = add i64 %".260", 28
  %"for_LDG.16" = inttoptr i64 %".261" to ptr
  %".262" = load float, ptr %"for_LDG.16"
  %".263" = bitcast ptr %"R22" to ptr
  store float %".262", ptr %".263"
  ; LDG.E.SYS R25, [R2+0x20]
  %".266" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".266" to i64
  %".267" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".267" to i64
  %"shl.16" = shl i64 %"zext.35", 32
  %"or.16" = or i64 %"shl.16", %"zext.34"
  %".268" = inttoptr i64 %"or.16" to ptr
  %".269" = ptrtoint ptr %".268" to i64
  %".270" = add i64 %".269", 32
  %"for_LDG.17" = inttoptr i64 %".270" to ptr
  %".271" = load float, ptr %"for_LDG.17"
  %".272" = bitcast ptr %"R25" to ptr
  store float %".271", ptr %".272"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".275" = load i32, ptr %"UR4"
  %"zext.36" = zext i32 %".275" to i64
  %".276" = load i32, ptr %"UR5"
  %"zext.37" = zext i32 %".276" to i64
  %"shl.17" = shl i64 %"zext.37", 32
  %"or.17" = or i64 %"shl.17", %"zext.36"
  %".277" = inttoptr i64 %"or.17" to ptr
  %".278" = ptrtoint ptr %".277" to i64
  %".279" = add i64 %".278", 32
  %"for_LDG.18" = inttoptr i64 %".279" to ptr
  %".280" = load float, ptr %"for_LDG.18"
  %".281" = bitcast ptr %"R24" to ptr
  store float %".280", ptr %".281"
  ; LDG.E.SYS R27, [R2+0x24]
  %".284" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".284" to i64
  %".285" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".285" to i64
  %"shl.18" = shl i64 %"zext.39", 32
  %"or.18" = or i64 %"shl.18", %"zext.38"
  %".286" = inttoptr i64 %"or.18" to ptr
  %".287" = ptrtoint ptr %".286" to i64
  %".288" = add i64 %".287", 36
  %"for_LDG.19" = inttoptr i64 %".288" to ptr
  %".289" = load float, ptr %"for_LDG.19"
  %".290" = bitcast ptr %"R27" to ptr
  store float %".289", ptr %".290"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".293" = load i32, ptr %"UR4"
  %"zext.40" = zext i32 %".293" to i64
  %".294" = load i32, ptr %"UR5"
  %"zext.41" = zext i32 %".294" to i64
  %"shl.19" = shl i64 %"zext.41", 32
  %"or.19" = or i64 %"shl.19", %"zext.40"
  %".295" = inttoptr i64 %"or.19" to ptr
  %".296" = ptrtoint ptr %".295" to i64
  %".297" = add i64 %".296", 36
  %"for_LDG.20" = inttoptr i64 %".297" to ptr
  %".298" = load float, ptr %"for_LDG.20"
  %".299" = bitcast ptr %"R26" to ptr
  store float %".298", ptr %".299"
  ; LDG.E.SYS R29, [R2+0x28]
  %".302" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".302" to i64
  %".303" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".303" to i64
  %"shl.20" = shl i64 %"zext.43", 32
  %"or.20" = or i64 %"shl.20", %"zext.42"
  %".304" = inttoptr i64 %"or.20" to ptr
  %".305" = ptrtoint ptr %".304" to i64
  %".306" = add i64 %".305", 40
  %"for_LDG.21" = inttoptr i64 %".306" to ptr
  %".307" = load float, ptr %"for_LDG.21"
  %".308" = bitcast ptr %"R29" to ptr
  store float %".307", ptr %".308"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".311" = load i32, ptr %"UR4"
  %"zext.44" = zext i32 %".311" to i64
  %".312" = load i32, ptr %"UR5"
  %"zext.45" = zext i32 %".312" to i64
  %"shl.21" = shl i64 %"zext.45", 32
  %"or.21" = or i64 %"shl.21", %"zext.44"
  %".313" = inttoptr i64 %"or.21" to ptr
  %".314" = ptrtoint ptr %".313" to i64
  %".315" = add i64 %".314", 40
  %"for_LDG.22" = inttoptr i64 %".315" to ptr
  %".316" = load float, ptr %"for_LDG.22"
  %".317" = bitcast ptr %"R28" to ptr
  store float %".316", ptr %".317"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".320" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".320" to i64
  %".321" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".321" to i64
  %"shl.22" = shl i64 %"zext.47", 32
  %"or.22" = or i64 %"shl.22", %"zext.46"
  %".322" = inttoptr i64 %"or.22" to ptr
  %".323" = ptrtoint ptr %".322" to i64
  %".324" = add i64 %".323", 44
  %"for_LDG.23" = inttoptr i64 %".324" to ptr
  %".325" = load float, ptr %"for_LDG.23"
  %".326" = bitcast ptr %"R31" to ptr
  store float %".325", ptr %".326"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".329" = load i32, ptr %"UR4"
  %"zext.48" = zext i32 %".329" to i64
  %".330" = load i32, ptr %"UR5"
  %"zext.49" = zext i32 %".330" to i64
  %"shl.23" = shl i64 %"zext.49", 32
  %"or.23" = or i64 %"shl.23", %"zext.48"
  %".331" = inttoptr i64 %"or.23" to ptr
  %".332" = ptrtoint ptr %".331" to i64
  %".333" = add i64 %".332", 44
  %"for_LDG.24" = inttoptr i64 %".333" to ptr
  %".334" = load float, ptr %"for_LDG.24"
  %".335" = bitcast ptr %"R30" to ptr
  store float %".334", ptr %".335"
  ; LDG.E.SYS R33, [R2+0x30]
  %".338" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".338" to i64
  %".339" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".339" to i64
  %"shl.24" = shl i64 %"zext.51", 32
  %"or.24" = or i64 %"shl.24", %"zext.50"
  %".340" = inttoptr i64 %"or.24" to ptr
  %".341" = ptrtoint ptr %".340" to i64
  %".342" = add i64 %".341", 48
  %"for_LDG.25" = inttoptr i64 %".342" to ptr
  %".343" = load float, ptr %"for_LDG.25"
  %".344" = bitcast ptr %"R33" to ptr
  store float %".343", ptr %".344"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".347" = load i32, ptr %"UR4"
  %"zext.52" = zext i32 %".347" to i64
  %".348" = load i32, ptr %"UR5"
  %"zext.53" = zext i32 %".348" to i64
  %"shl.25" = shl i64 %"zext.53", 32
  %"or.25" = or i64 %"shl.25", %"zext.52"
  %".349" = inttoptr i64 %"or.25" to ptr
  %".350" = ptrtoint ptr %".349" to i64
  %".351" = add i64 %".350", 48
  %"for_LDG.26" = inttoptr i64 %".351" to ptr
  %".352" = load float, ptr %"for_LDG.26"
  %".353" = bitcast ptr %"R32" to ptr
  store float %".352", ptr %".353"
  ; LDG.E.SYS R35, [R2+0x34]
  %".356" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".356" to i64
  %".357" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".357" to i64
  %"shl.26" = shl i64 %"zext.55", 32
  %"or.26" = or i64 %"shl.26", %"zext.54"
  %".358" = inttoptr i64 %"or.26" to ptr
  %".359" = ptrtoint ptr %".358" to i64
  %".360" = add i64 %".359", 52
  %"for_LDG.27" = inttoptr i64 %".360" to ptr
  %".361" = load float, ptr %"for_LDG.27"
  %".362" = bitcast ptr %"R35" to ptr
  store float %".361", ptr %".362"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".365" = load i32, ptr %"UR4"
  %"zext.56" = zext i32 %".365" to i64
  %".366" = load i32, ptr %"UR5"
  %"zext.57" = zext i32 %".366" to i64
  %"shl.27" = shl i64 %"zext.57", 32
  %"or.27" = or i64 %"shl.27", %"zext.56"
  %".367" = inttoptr i64 %"or.27" to ptr
  %".368" = ptrtoint ptr %".367" to i64
  %".369" = add i64 %".368", 52
  %"for_LDG.28" = inttoptr i64 %".369" to ptr
  %".370" = load float, ptr %"for_LDG.28"
  %".371" = bitcast ptr %"R34" to ptr
  store float %".370", ptr %".371"
  ; LDG.E.SYS R37, [R2+0x38]
  %".374" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".374" to i64
  %".375" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".375" to i64
  %"shl.28" = shl i64 %"zext.59", 32
  %"or.28" = or i64 %"shl.28", %"zext.58"
  %".376" = inttoptr i64 %"or.28" to ptr
  %".377" = ptrtoint ptr %".376" to i64
  %".378" = add i64 %".377", 56
  %"for_LDG.29" = inttoptr i64 %".378" to ptr
  %".379" = load float, ptr %"for_LDG.29"
  %".380" = bitcast ptr %"R37" to ptr
  store float %".379", ptr %".380"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".383" = load i32, ptr %"UR4"
  %"zext.60" = zext i32 %".383" to i64
  %".384" = load i32, ptr %"UR5"
  %"zext.61" = zext i32 %".384" to i64
  %"shl.29" = shl i64 %"zext.61", 32
  %"or.29" = or i64 %"shl.29", %"zext.60"
  %".385" = inttoptr i64 %"or.29" to ptr
  %".386" = ptrtoint ptr %".385" to i64
  %".387" = add i64 %".386", 56
  %"for_LDG.30" = inttoptr i64 %".387" to ptr
  %".388" = load float, ptr %"for_LDG.30"
  %".389" = bitcast ptr %"R36" to ptr
  store float %".388", ptr %".389"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".392" = load i32, ptr %"R2"
  %"zext.62" = zext i32 %".392" to i64
  %".393" = load i32, ptr %"R3"
  %"zext.63" = zext i32 %".393" to i64
  %"shl.30" = shl i64 %"zext.63", 32
  %"or.30" = or i64 %"shl.30", %"zext.62"
  %".394" = inttoptr i64 %"or.30" to ptr
  %".395" = ptrtoint ptr %".394" to i64
  %".396" = add i64 %".395", 60
  %"for_LDG.31" = inttoptr i64 %".396" to ptr
  %".397" = load float, ptr %"for_LDG.31"
  %".398" = bitcast ptr %"R39" to ptr
  store float %".397", ptr %".398"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".401" = load i32, ptr %"UR4"
  %"zext.64" = zext i32 %".401" to i64
  %".402" = load i32, ptr %"UR5"
  %"zext.65" = zext i32 %".402" to i64
  %"shl.31" = shl i64 %"zext.65", 32
  %"or.31" = or i64 %"shl.31", %"zext.64"
  %".403" = inttoptr i64 %"or.31" to ptr
  %".404" = ptrtoint ptr %".403" to i64
  %".405" = add i64 %".404", 60
  %"for_LDG.32" = inttoptr i64 %".405" to ptr
  %".406" = load float, ptr %"for_LDG.32"
  %".407" = bitcast ptr %"R38" to ptr
  store float %".406", ptr %".407"
  ; IADD3 R6, R6, -0x10, RZ
  %".410" = load i32, ptr %"R6"
  %"add.9" = add i32 %".410", -16
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".413" = load i32, ptr %"UR4"
  %"add.11" = add i32 %".413", 64
  %"add.12" = add i32 %"add.11", 0
  store i32 %"add.12", ptr %"UR4"
  %"carry" = icmp ult i32 %"add.12", %".413"
  store i1 %"carry", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".417" = load i32, ptr %"R5"
  %"add.13" = add i32 %".417", 16
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".420" = load i32, ptr %"R6"
  %".421" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".420", 12
  %".422" = and i1 %"cmp.5", %".421"
  store i1 %".422", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".425" = load i32, ptr %"UR5"
  %".426" = load i1, ptr %"UP0"
  %".427" = sub i1 0, %".426"
  %".428" = zext i1 %".427" to i32
  %"add.15" = add i32 0, %".425"
  %"add.16" = add i32 %"add.15", 0
  %"add.17" = add i32 %"add.16", %".428"
  store i32 %"add.17", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".431" = load i32, ptr %"R2"
  %"add.18" = add i32 %".431", 64
  %"add.19" = add i32 %"add.18", 0
  store i32 %"add.19", ptr %"R2"
  %"carry.1" = icmp ult i32 %"add.19", %".431"
  store i1 %"carry.1", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".435" = load i32, ptr %"R3"
  %"mul.5" = mul i32 0, 0
  %"add.20" = add i32 %"mul.5", %".435"
  store i32 %"add.20", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".438" = load float, ptr %"R8"
  %".439" = load float, ptr %"R9"
  %".440" = load float, ptr %"R7"
  %"fmul" = fmul float %".438", %".439"
  %"fadd" = fadd float %"fmul", %".440"
  %".441" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".441"
  ; FFMA R8, R11, R10, R8
  %".444" = load float, ptr %"R11"
  %".445" = load float, ptr %"R10"
  %".446" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".444", %".445"
  %"fadd.1" = fadd float %"fmul.1", %".446"
  %".447" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".447"
  ; FFMA R8, R13, R12, R8
  %".450" = load float, ptr %"R13"
  %".451" = load float, ptr %"R12"
  %".452" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".450", %".451"
  %"fadd.2" = fadd float %"fmul.2", %".452"
  %".453" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".453"
  ; FFMA R8, R15, R14, R8
  %".456" = load float, ptr %"R15"
  %".457" = load float, ptr %"R14"
  %".458" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".456", %".457"
  %"fadd.3" = fadd float %"fmul.3", %".458"
  %".459" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".459"
  ; FFMA R8, R17, R16, R8
  %".462" = load float, ptr %"R17"
  %".463" = load float, ptr %"R16"
  %".464" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".462", %".463"
  %"fadd.4" = fadd float %"fmul.4", %".464"
  %".465" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".465"
  ; FFMA R8, R19, R18, R8
  %".468" = load float, ptr %"R19"
  %".469" = load float, ptr %"R18"
  %".470" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".468", %".469"
  %"fadd.5" = fadd float %"fmul.5", %".470"
  %".471" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".471"
  ; FFMA R8, R21, R20, R8
  %".474" = load float, ptr %"R21"
  %".475" = load float, ptr %"R20"
  %".476" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".474", %".475"
  %"fadd.6" = fadd float %"fmul.6", %".476"
  %".477" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".477"
  ; FFMA R8, R23, R22, R8
  %".480" = load float, ptr %"R23"
  %".481" = load float, ptr %"R22"
  %".482" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".480", %".481"
  %"fadd.7" = fadd float %"fmul.7", %".482"
  %".483" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".483"
  ; FFMA R8, R25, R24, R8
  %".486" = load float, ptr %"R25"
  %".487" = load float, ptr %"R24"
  %".488" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".486", %".487"
  %"fadd.8" = fadd float %"fmul.8", %".488"
  %".489" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".489"
  ; FFMA R8, R27, R26, R8
  %".492" = load float, ptr %"R27"
  %".493" = load float, ptr %"R26"
  %".494" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".492", %".493"
  %"fadd.9" = fadd float %"fmul.9", %".494"
  %".495" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".495"
  ; FFMA R8, R29, R28, R8
  %".498" = load float, ptr %"R29"
  %".499" = load float, ptr %"R28"
  %".500" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".498", %".499"
  %"fadd.10" = fadd float %"fmul.10", %".500"
  %".501" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".501"
  ; FFMA R8, R31, R30, R8
  %".504" = load float, ptr %"R31"
  %".505" = load float, ptr %"R30"
  %".506" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".504", %".505"
  %"fadd.11" = fadd float %"fmul.11", %".506"
  %".507" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".507"
  ; FFMA R8, R33, R32, R8
  %".510" = load float, ptr %"R33"
  %".511" = load float, ptr %"R32"
  %".512" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".510", %".511"
  %"fadd.12" = fadd float %"fmul.12", %".512"
  %".513" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".513"
  ; FFMA R8, R35, R34, R8
  %".516" = load float, ptr %"R35"
  %".517" = load float, ptr %"R34"
  %".518" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".516", %".517"
  %"fadd.13" = fadd float %"fmul.13", %".518"
  %".519" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".519"
  ; FFMA R8, R37, R36, R8
  %".522" = load float, ptr %"R37"
  %".523" = load float, ptr %"R36"
  %".524" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".522", %".523"
  %"fadd.14" = fadd float %"fmul.14", %".524"
  %".525" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".525"
  ; FFMA R7, R39, R38, R8
  %".528" = load float, ptr %"R39"
  %".529" = load float, ptr %"R38"
  %".530" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".528", %".529"
  %"fadd.15" = fadd float %"fmul.15", %".530"
  %".531" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".531"
  ; @P1 BRA `(.L_x_4)
  %".534" = load i1, ptr %"P1"
  %".535" = icmp ne i1 %".534", 1
  br i1 %".535", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".538" = load i32, ptr %"R6"
  %".539" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".538", 4
  %".540" = and i1 %"cmp.6", %".539"
  store i1 %".540", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".543" = load i1, ptr %"P1"
  %".544" = icmp eq i1 %".543", 1
  br i1 %".544", label %".L_x_5", label %".L_x_3_split_0x0570"
.L_x_3_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".547" = load i32, ptr %"R2"
  %"zext.66" = zext i32 %".547" to i64
  %".548" = load i32, ptr %"R3"
  %"zext.67" = zext i32 %".548" to i64
  %"shl.32" = shl i64 %"zext.67", 32
  %"or.32" = or i64 %"shl.32", %"zext.66"
  %".549" = inttoptr i64 %"or.32" to ptr
  %".550" = ptrtoint ptr %".549" to i64
  %".551" = add i64 %".550", 0
  %"for_LDG.33" = inttoptr i64 %".551" to ptr
  %".552" = load float, ptr %"for_LDG.33"
  %".553" = bitcast ptr %"R8" to ptr
  store float %".552", ptr %".553"
  ; LDG.E.SYS R9, [UR4]
  %".556" = load i32, ptr %"UR4"
  %"zext.68" = zext i32 %".556" to i64
  %".557" = load i32, ptr %"UR5"
  %"zext.69" = zext i32 %".557" to i64
  %"shl.33" = shl i64 %"zext.69", 32
  %"or.33" = or i64 %"shl.33", %"zext.68"
  %".558" = inttoptr i64 %"or.33" to ptr
  %".559" = ptrtoint ptr %".558" to i64
  %".560" = add i64 %".559", 0
  %"for_LDG.34" = inttoptr i64 %".560" to ptr
  %".561" = load float, ptr %"for_LDG.34"
  %".562" = bitcast ptr %"R9" to ptr
  store float %".561", ptr %".562"
  ; LDG.E.SYS R11, [R2+0x4]
  %".565" = load i32, ptr %"R2"
  %"zext.70" = zext i32 %".565" to i64
  %".566" = load i32, ptr %"R3"
  %"zext.71" = zext i32 %".566" to i64
  %"shl.34" = shl i64 %"zext.71", 32
  %"or.34" = or i64 %"shl.34", %"zext.70"
  %".567" = inttoptr i64 %"or.34" to ptr
  %".568" = ptrtoint ptr %".567" to i64
  %".569" = add i64 %".568", 4
  %"for_LDG.35" = inttoptr i64 %".569" to ptr
  %".570" = load float, ptr %"for_LDG.35"
  %".571" = bitcast ptr %"R11" to ptr
  store float %".570", ptr %".571"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".574" = load i32, ptr %"UR4"
  %"zext.72" = zext i32 %".574" to i64
  %".575" = load i32, ptr %"UR5"
  %"zext.73" = zext i32 %".575" to i64
  %"shl.35" = shl i64 %"zext.73", 32
  %"or.35" = or i64 %"shl.35", %"zext.72"
  %".576" = inttoptr i64 %"or.35" to ptr
  %".577" = ptrtoint ptr %".576" to i64
  %".578" = add i64 %".577", 4
  %"for_LDG.36" = inttoptr i64 %".578" to ptr
  %".579" = load float, ptr %"for_LDG.36"
  %".580" = bitcast ptr %"R10" to ptr
  store float %".579", ptr %".580"
  ; LDG.E.SYS R13, [R2+0x8]
  %".583" = load i32, ptr %"R2"
  %"zext.74" = zext i32 %".583" to i64
  %".584" = load i32, ptr %"R3"
  %"zext.75" = zext i32 %".584" to i64
  %"shl.36" = shl i64 %"zext.75", 32
  %"or.36" = or i64 %"shl.36", %"zext.74"
  %".585" = inttoptr i64 %"or.36" to ptr
  %".586" = ptrtoint ptr %".585" to i64
  %".587" = add i64 %".586", 8
  %"for_LDG.37" = inttoptr i64 %".587" to ptr
  %".588" = load float, ptr %"for_LDG.37"
  %".589" = bitcast ptr %"R13" to ptr
  store float %".588", ptr %".589"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".592" = load i32, ptr %"UR4"
  %"zext.76" = zext i32 %".592" to i64
  %".593" = load i32, ptr %"UR5"
  %"zext.77" = zext i32 %".593" to i64
  %"shl.37" = shl i64 %"zext.77", 32
  %"or.37" = or i64 %"shl.37", %"zext.76"
  %".594" = inttoptr i64 %"or.37" to ptr
  %".595" = ptrtoint ptr %".594" to i64
  %".596" = add i64 %".595", 8
  %"for_LDG.38" = inttoptr i64 %".596" to ptr
  %".597" = load float, ptr %"for_LDG.38"
  %".598" = bitcast ptr %"R12" to ptr
  store float %".597", ptr %".598"
  ; LDG.E.SYS R15, [R2+0xc]
  %".601" = load i32, ptr %"R2"
  %"zext.78" = zext i32 %".601" to i64
  %".602" = load i32, ptr %"R3"
  %"zext.79" = zext i32 %".602" to i64
  %"shl.38" = shl i64 %"zext.79", 32
  %"or.38" = or i64 %"shl.38", %"zext.78"
  %".603" = inttoptr i64 %"or.38" to ptr
  %".604" = ptrtoint ptr %".603" to i64
  %".605" = add i64 %".604", 12
  %"for_LDG.39" = inttoptr i64 %".605" to ptr
  %".606" = load float, ptr %"for_LDG.39"
  %".607" = bitcast ptr %"R15" to ptr
  store float %".606", ptr %".607"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".610" = load i32, ptr %"UR4"
  %"zext.80" = zext i32 %".610" to i64
  %".611" = load i32, ptr %"UR5"
  %"zext.81" = zext i32 %".611" to i64
  %"shl.39" = shl i64 %"zext.81", 32
  %"or.39" = or i64 %"shl.39", %"zext.80"
  %".612" = inttoptr i64 %"or.39" to ptr
  %".613" = ptrtoint ptr %".612" to i64
  %".614" = add i64 %".613", 12
  %"for_LDG.40" = inttoptr i64 %".614" to ptr
  %".615" = load float, ptr %"for_LDG.40"
  %".616" = bitcast ptr %"R14" to ptr
  store float %".615", ptr %".616"
  ; LDG.E.SYS R17, [R2+0x10]
  %".619" = load i32, ptr %"R2"
  %"zext.82" = zext i32 %".619" to i64
  %".620" = load i32, ptr %"R3"
  %"zext.83" = zext i32 %".620" to i64
  %"shl.40" = shl i64 %"zext.83", 32
  %"or.40" = or i64 %"shl.40", %"zext.82"
  %".621" = inttoptr i64 %"or.40" to ptr
  %".622" = ptrtoint ptr %".621" to i64
  %".623" = add i64 %".622", 16
  %"for_LDG.41" = inttoptr i64 %".623" to ptr
  %".624" = load float, ptr %"for_LDG.41"
  %".625" = bitcast ptr %"R17" to ptr
  store float %".624", ptr %".625"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".628" = load i32, ptr %"UR4"
  %"zext.84" = zext i32 %".628" to i64
  %".629" = load i32, ptr %"UR5"
  %"zext.85" = zext i32 %".629" to i64
  %"shl.41" = shl i64 %"zext.85", 32
  %"or.41" = or i64 %"shl.41", %"zext.84"
  %".630" = inttoptr i64 %"or.41" to ptr
  %".631" = ptrtoint ptr %".630" to i64
  %".632" = add i64 %".631", 16
  %"for_LDG.42" = inttoptr i64 %".632" to ptr
  %".633" = load float, ptr %"for_LDG.42"
  %".634" = bitcast ptr %"R16" to ptr
  store float %".633", ptr %".634"
  ; LDG.E.SYS R19, [R2+0x14]
  %".637" = load i32, ptr %"R2"
  %"zext.86" = zext i32 %".637" to i64
  %".638" = load i32, ptr %"R3"
  %"zext.87" = zext i32 %".638" to i64
  %"shl.42" = shl i64 %"zext.87", 32
  %"or.42" = or i64 %"shl.42", %"zext.86"
  %".639" = inttoptr i64 %"or.42" to ptr
  %".640" = ptrtoint ptr %".639" to i64
  %".641" = add i64 %".640", 20
  %"for_LDG.43" = inttoptr i64 %".641" to ptr
  %".642" = load float, ptr %"for_LDG.43"
  %".643" = bitcast ptr %"R19" to ptr
  store float %".642", ptr %".643"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".646" = load i32, ptr %"UR4"
  %"zext.88" = zext i32 %".646" to i64
  %".647" = load i32, ptr %"UR5"
  %"zext.89" = zext i32 %".647" to i64
  %"shl.43" = shl i64 %"zext.89", 32
  %"or.43" = or i64 %"shl.43", %"zext.88"
  %".648" = inttoptr i64 %"or.43" to ptr
  %".649" = ptrtoint ptr %".648" to i64
  %".650" = add i64 %".649", 20
  %"for_LDG.44" = inttoptr i64 %".650" to ptr
  %".651" = load float, ptr %"for_LDG.44"
  %".652" = bitcast ptr %"R18" to ptr
  store float %".651", ptr %".652"
  ; LDG.E.SYS R21, [R2+0x18]
  %".655" = load i32, ptr %"R2"
  %"zext.90" = zext i32 %".655" to i64
  %".656" = load i32, ptr %"R3"
  %"zext.91" = zext i32 %".656" to i64
  %"shl.44" = shl i64 %"zext.91", 32
  %"or.44" = or i64 %"shl.44", %"zext.90"
  %".657" = inttoptr i64 %"or.44" to ptr
  %".658" = ptrtoint ptr %".657" to i64
  %".659" = add i64 %".658", 24
  %"for_LDG.45" = inttoptr i64 %".659" to ptr
  %".660" = load float, ptr %"for_LDG.45"
  %".661" = bitcast ptr %"R21" to ptr
  store float %".660", ptr %".661"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".664" = load i32, ptr %"UR4"
  %"zext.92" = zext i32 %".664" to i64
  %".665" = load i32, ptr %"UR5"
  %"zext.93" = zext i32 %".665" to i64
  %"shl.45" = shl i64 %"zext.93", 32
  %"or.45" = or i64 %"shl.45", %"zext.92"
  %".666" = inttoptr i64 %"or.45" to ptr
  %".667" = ptrtoint ptr %".666" to i64
  %".668" = add i64 %".667", 24
  %"for_LDG.46" = inttoptr i64 %".668" to ptr
  %".669" = load float, ptr %"for_LDG.46"
  %".670" = bitcast ptr %"R20" to ptr
  store float %".669", ptr %".670"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".673" = load i32, ptr %"R2"
  %"zext.94" = zext i32 %".673" to i64
  %".674" = load i32, ptr %"R3"
  %"zext.95" = zext i32 %".674" to i64
  %"shl.46" = shl i64 %"zext.95", 32
  %"or.46" = or i64 %"shl.46", %"zext.94"
  %".675" = inttoptr i64 %"or.46" to ptr
  %".676" = ptrtoint ptr %".675" to i64
  %".677" = add i64 %".676", 28
  %"for_LDG.47" = inttoptr i64 %".677" to ptr
  %".678" = load float, ptr %"for_LDG.47"
  %".679" = bitcast ptr %"R23" to ptr
  store float %".678", ptr %".679"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".682" = load i32, ptr %"UR4"
  %"zext.96" = zext i32 %".682" to i64
  %".683" = load i32, ptr %"UR5"
  %"zext.97" = zext i32 %".683" to i64
  %"shl.47" = shl i64 %"zext.97", 32
  %"or.47" = or i64 %"shl.47", %"zext.96"
  %".684" = inttoptr i64 %"or.47" to ptr
  %".685" = ptrtoint ptr %".684" to i64
  %".686" = add i64 %".685", 28
  %"for_LDG.48" = inttoptr i64 %".686" to ptr
  %".687" = load float, ptr %"for_LDG.48"
  %".688" = bitcast ptr %"R22" to ptr
  store float %".687", ptr %".688"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".691" = load i32, ptr %"UR4"
  %"add.21" = add i32 %".691", 32
  %"add.22" = add i32 %"add.21", 0
  store i32 %"add.22", ptr %"UR4"
  %"carry.2" = icmp ult i32 %"add.22", %".691"
  store i1 %"carry.2", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".695" = xor i1 1, 1
  %".696" = and i1 %".695", 1
  %".697" = and i1 %".696", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".699" = load i32, ptr %"R5"
  %"add.23" = add i32 %".699", 8
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".702" = load i32, ptr %"UR5"
  %".703" = load i1, ptr %"UP0"
  %".704" = sub i1 0, %".703"
  %".705" = zext i1 %".704" to i32
  %"add.25" = add i32 0, %".702"
  %"add.26" = add i32 %"add.25", 0
  %"add.27" = add i32 %"add.26", %".705"
  store i32 %"add.27", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".708" = load i32, ptr %"R2"
  %"add.28" = add i32 %".708", 32
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", ptr %"R2"
  %"carry.3" = icmp ult i32 %"add.29", %".708"
  store i1 %"carry.3", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".712" = load i32, ptr %"R6"
  %"add.30" = add i32 %".712", -8
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".715" = load i32, ptr %"R3"
  %".716" = load i1, ptr %"P1"
  %".717" = sub i1 0, %".716"
  %".718" = zext i1 %".717" to i32
  %"add.32" = add i32 0, %".715"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".718"
  store i32 %"add.34", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".721" = load float, ptr %"R8"
  %".722" = load float, ptr %"R9"
  %".723" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".721", %".722"
  %"fadd.16" = fadd float %"fmul.16", %".723"
  %".724" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".724"
  ; FFMA R8, R11, R10, R8
  %".727" = load float, ptr %"R11"
  %".728" = load float, ptr %"R10"
  %".729" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".727", %".728"
  %"fadd.17" = fadd float %"fmul.17", %".729"
  %".730" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".730"
  ; FFMA R8, R13, R12, R8
  %".733" = load float, ptr %"R13"
  %".734" = load float, ptr %"R12"
  %".735" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".733", %".734"
  %"fadd.18" = fadd float %"fmul.18", %".735"
  %".736" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".736"
  ; FFMA R8, R15, R14, R8
  %".739" = load float, ptr %"R15"
  %".740" = load float, ptr %"R14"
  %".741" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".739", %".740"
  %"fadd.19" = fadd float %"fmul.19", %".741"
  %".742" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".742"
  ; FFMA R8, R17, R16, R8
  %".745" = load float, ptr %"R17"
  %".746" = load float, ptr %"R16"
  %".747" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".745", %".746"
  %"fadd.20" = fadd float %"fmul.20", %".747"
  %".748" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".748"
  ; FFMA R8, R19, R18, R8
  %".751" = load float, ptr %"R19"
  %".752" = load float, ptr %"R18"
  %".753" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".751", %".752"
  %"fadd.21" = fadd float %"fmul.21", %".753"
  %".754" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".754"
  ; FFMA R8, R21, R20, R8
  %".757" = load float, ptr %"R21"
  %".758" = load float, ptr %"R20"
  %".759" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".757", %".758"
  %"fadd.22" = fadd float %"fmul.22", %".759"
  %".760" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".760"
  ; FFMA R7, R23, R22, R8
  %".763" = load float, ptr %"R23"
  %".764" = load float, ptr %"R22"
  %".765" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".763", %".764"
  %"fadd.23" = fadd float %"fmul.23", %".765"
  %".766" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".766"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".770" = load i32, ptr %"R6"
  %".771" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".770", 0
  %".772" = or i1 %"cmp.7", %".771"
  store i1 %".772", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".775" = load i1, ptr %"P0"
  %".776" = icmp eq i1 %".775", 1
  br i1 %".776", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".779" = load i32, ptr %"R2"
  %"zext.98" = zext i32 %".779" to i64
  %".780" = load i32, ptr %"R3"
  %"zext.99" = zext i32 %".780" to i64
  %"shl.48" = shl i64 %"zext.99", 32
  %"or.48" = or i64 %"shl.48", %"zext.98"
  %".781" = inttoptr i64 %"or.48" to ptr
  %".782" = ptrtoint ptr %".781" to i64
  %".783" = add i64 %".782", 0
  %"for_LDG.49" = inttoptr i64 %".783" to ptr
  %".784" = load float, ptr %"for_LDG.49"
  %".785" = bitcast ptr %"R8" to ptr
  store float %".784", ptr %".785"
  ; LDG.E.SYS R9, [UR4]
  %".788" = load i32, ptr %"UR4"
  %"zext.100" = zext i32 %".788" to i64
  %".789" = load i32, ptr %"UR5"
  %"zext.101" = zext i32 %".789" to i64
  %"shl.49" = shl i64 %"zext.101", 32
  %"or.49" = or i64 %"shl.49", %"zext.100"
  %".790" = inttoptr i64 %"or.49" to ptr
  %".791" = ptrtoint ptr %".790" to i64
  %".792" = add i64 %".791", 0
  %"for_LDG.50" = inttoptr i64 %".792" to ptr
  %".793" = load float, ptr %"for_LDG.50"
  %".794" = bitcast ptr %"R9" to ptr
  store float %".793", ptr %".794"
  ; LDG.E.SYS R11, [R2+0x4]
  %".797" = load i32, ptr %"R2"
  %"zext.102" = zext i32 %".797" to i64
  %".798" = load i32, ptr %"R3"
  %"zext.103" = zext i32 %".798" to i64
  %"shl.50" = shl i64 %"zext.103", 32
  %"or.50" = or i64 %"shl.50", %"zext.102"
  %".799" = inttoptr i64 %"or.50" to ptr
  %".800" = ptrtoint ptr %".799" to i64
  %".801" = add i64 %".800", 4
  %"for_LDG.51" = inttoptr i64 %".801" to ptr
  %".802" = load float, ptr %"for_LDG.51"
  %".803" = bitcast ptr %"R11" to ptr
  store float %".802", ptr %".803"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".806" = load i32, ptr %"UR4"
  %"zext.104" = zext i32 %".806" to i64
  %".807" = load i32, ptr %"UR5"
  %"zext.105" = zext i32 %".807" to i64
  %"shl.51" = shl i64 %"zext.105", 32
  %"or.51" = or i64 %"shl.51", %"zext.104"
  %".808" = inttoptr i64 %"or.51" to ptr
  %".809" = ptrtoint ptr %".808" to i64
  %".810" = add i64 %".809", 4
  %"for_LDG.52" = inttoptr i64 %".810" to ptr
  %".811" = load float, ptr %"for_LDG.52"
  %".812" = bitcast ptr %"R10" to ptr
  store float %".811", ptr %".812"
  ; LDG.E.SYS R13, [R2+0x8]
  %".815" = load i32, ptr %"R2"
  %"zext.106" = zext i32 %".815" to i64
  %".816" = load i32, ptr %"R3"
  %"zext.107" = zext i32 %".816" to i64
  %"shl.52" = shl i64 %"zext.107", 32
  %"or.52" = or i64 %"shl.52", %"zext.106"
  %".817" = inttoptr i64 %"or.52" to ptr
  %".818" = ptrtoint ptr %".817" to i64
  %".819" = add i64 %".818", 8
  %"for_LDG.53" = inttoptr i64 %".819" to ptr
  %".820" = load float, ptr %"for_LDG.53"
  %".821" = bitcast ptr %"R13" to ptr
  store float %".820", ptr %".821"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".824" = load i32, ptr %"UR4"
  %"zext.108" = zext i32 %".824" to i64
  %".825" = load i32, ptr %"UR5"
  %"zext.109" = zext i32 %".825" to i64
  %"shl.53" = shl i64 %"zext.109", 32
  %"or.53" = or i64 %"shl.53", %"zext.108"
  %".826" = inttoptr i64 %"or.53" to ptr
  %".827" = ptrtoint ptr %".826" to i64
  %".828" = add i64 %".827", 8
  %"for_LDG.54" = inttoptr i64 %".828" to ptr
  %".829" = load float, ptr %"for_LDG.54"
  %".830" = bitcast ptr %"R12" to ptr
  store float %".829", ptr %".830"
  ; LDG.E.SYS R15, [R2+0xc]
  %".833" = load i32, ptr %"R2"
  %"zext.110" = zext i32 %".833" to i64
  %".834" = load i32, ptr %"R3"
  %"zext.111" = zext i32 %".834" to i64
  %"shl.54" = shl i64 %"zext.111", 32
  %"or.54" = or i64 %"shl.54", %"zext.110"
  %".835" = inttoptr i64 %"or.54" to ptr
  %".836" = ptrtoint ptr %".835" to i64
  %".837" = add i64 %".836", 12
  %"for_LDG.55" = inttoptr i64 %".837" to ptr
  %".838" = load float, ptr %"for_LDG.55"
  %".839" = bitcast ptr %"R15" to ptr
  store float %".838", ptr %".839"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".842" = load i32, ptr %"UR4"
  %"zext.112" = zext i32 %".842" to i64
  %".843" = load i32, ptr %"UR5"
  %"zext.113" = zext i32 %".843" to i64
  %"shl.55" = shl i64 %"zext.113", 32
  %"or.55" = or i64 %"shl.55", %"zext.112"
  %".844" = inttoptr i64 %"or.55" to ptr
  %".845" = ptrtoint ptr %".844" to i64
  %".846" = add i64 %".845", 12
  %"for_LDG.56" = inttoptr i64 %".846" to ptr
  %".847" = load float, ptr %"for_LDG.56"
  %".848" = bitcast ptr %"R14" to ptr
  store float %".847", ptr %".848"
  ; IADD3 R6, R6, -0x4, RZ
  %".851" = load i32, ptr %"R6"
  %"add.35" = add i32 %".851", -4
  %"add.36" = add i32 %"add.35", 0
  store i32 %"add.36", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".854" = load i32, ptr %"UR4"
  %"add.37" = add i32 %".854", 16
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", ptr %"UR4"
  %"carry.4" = icmp ult i32 %"add.38", %".854"
  store i1 %"carry.4", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".858" = load i32, ptr %"R5"
  %"add.39" = add i32 %".858", 4
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".861" = load i32, ptr %"R6"
  %".862" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".861", 0
  %".863" = and i1 %"cmp.8", %".862"
  store i1 %".863", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".866" = load i32, ptr %"UR5"
  %".867" = load i1, ptr %"UP0"
  %".868" = sub i1 0, %".867"
  %".869" = zext i1 %".868" to i32
  %"add.41" = add i32 0, %".866"
  %"add.42" = add i32 %"add.41", 0
  %"add.43" = add i32 %"add.42", %".869"
  store i32 %"add.43", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %".872" = load float, ptr %"R8"
  %".873" = load float, ptr %"R9"
  %".874" = load float, ptr %"R7"
  %"fmul.24" = fmul float %".872", %".873"
  %"fadd.24" = fadd float %"fmul.24", %".874"
  %".875" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".875"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".878" = load i32, ptr %"R2"
  %"add.44" = add i32 %".878", 16
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R9"
  %"carry.5" = icmp ult i32 %"add.45", %".878"
  store i1 %"carry.5", ptr %"P1"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".882" = load i32, ptr %"R9"
  %"mul.6" = mul i32 0, 0
  %"add.46" = add i32 %"mul.6", %".882"
  store i32 %"add.46", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %".885" = load float, ptr %"R11"
  %".886" = load float, ptr %"R10"
  %".887" = load float, ptr %"R8"
  %"fmul.25" = fmul float %".885", %".886"
  %"fadd.25" = fadd float %"fmul.25", %".887"
  %".888" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".888"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".891" = load i32, ptr %"R3"
  %".892" = load i1, ptr %"P1"
  %".893" = sub i1 0, %".892"
  %".894" = zext i1 %".893" to i32
  %"add.47" = add i32 0, %".891"
  %"add.48" = add i32 %"add.47", 0
  %"add.49" = add i32 %"add.48", %".894"
  store i32 %"add.49", ptr %"R10"
  ; MOV R3, R10
  %".897" = load i32, ptr %"R10"
  store i32 %".897", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %".900" = load float, ptr %"R13"
  %".901" = load float, ptr %"R12"
  %".902" = load float, ptr %"R8"
  %"fmul.26" = fmul float %".900", %".901"
  %"fadd.26" = fadd float %"fmul.26", %".902"
  %".903" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".903"
  ; FFMA R7, R15, R14, R8
  %".906" = load float, ptr %"R15"
  %".907" = load float, ptr %"R14"
  %".908" = load float, ptr %"R8"
  %"fmul.27" = fmul float %".906", %".907"
  %"fadd.27" = fadd float %"fmul.27", %".908"
  %".909" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".909"
  ; @P0 BRA `(.L_x_2)
  %".912" = load i1, ptr %"P0"
  %".913" = icmp ne i1 %".912", 1
  br i1 %".913", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".916" = load i32, ptr %"R4"
  %".917" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".916", 0
  %".918" = and i1 %"cmp.9", %".917"
  store i1 %".918", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".921" = load i1, ptr %"P0"
  %".922" = icmp eq i1 %".921", 1
  br i1 %".922", label %".L_x_0", label %".L_x_1_split_0x0900"
.L_x_1_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".927" = load i32, ptr %"R0"
  %".928" = load i32, ptr %"R5"
  %"mul.7" = mul i32 %".927", %"Arg_4"
  %"add.50" = add i32 %"mul.7", %".928"
  store i32 %"add.50", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".931" = load i32, ptr %"R2"
  %".932" = load i32, ptr %"R8"
  %"zext.114" = zext i32 %".931" to i64
  %"zext.115" = zext i32 %".932" to i64
  %"mul.8" = mul i64 %"zext.114", %"zext.115"
  %".933" = ptrtoint ptr %"Arg_1" to i64
  %"add.51" = add i64 %"mul.8", %".933"
  %".934" = and i64 %"add.51", 18446744069414584320
  %".935" = lshr i64 %".934", 32
  %"trunc32.2" = trunc i64 %".935" to i32
  %"trunc32.3" = trunc i64 %"add.51" to i32
  store i32 %"trunc32.3", ptr %"R2"
  store i32 %"trunc32.2", ptr %"R3"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".939" = load i32, ptr %"R5"
  %".940" = load i32, ptr %"R8"
  %"zext.116" = zext i32 %".939" to i64
  %"zext.117" = zext i32 %".940" to i64
  %"mul.9" = mul i64 %"zext.116", %"zext.117"
  %".941" = ptrtoint ptr %"Arg_0" to i64
  %"add.52" = add i64 %"mul.9", %".941"
  %".942" = and i64 %"add.52", 18446744069414584320
  %".943" = lshr i64 %".942", 32
  %"trunc32.4" = trunc i64 %".943" to i32
  %"trunc32.5" = trunc i64 %"add.52" to i32
  store i32 %"trunc32.5", ptr %"R8"
  store i32 %"trunc32.4", ptr %"R9"
  ; MOV R6, R2
  %".947" = load i32, ptr %"R2"
  store i32 %".947", ptr %"R6"
  br label %".L_x_6"
.L_x_6:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".951" = load i32, ptr %"R6"
  %"mul.10" = mul i32 0, 0
  %"add.53" = add i32 %"mul.10", %".951"
  store i32 %"add.53", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".954" = load i32, ptr %"R8"
  %"zext.118" = zext i32 %".954" to i64
  %".955" = load i32, ptr %"R9"
  %"zext.119" = zext i32 %".955" to i64
  %"shl.56" = shl i64 %"zext.119", 32
  %"or.56" = or i64 %"shl.56", %"zext.118"
  %".956" = inttoptr i64 %"or.56" to ptr
  %".957" = ptrtoint ptr %".956" to i64
  %".958" = add i64 %".957", 0
  %"for_LDG.57" = inttoptr i64 %".958" to ptr
  %".959" = load float, ptr %"for_LDG.57"
  %".960" = bitcast ptr %"R5" to ptr
  store float %".959", ptr %".960"
  ; LDG.E.SYS R2, [R2]
  %".963" = load i32, ptr %"R2"
  %"zext.120" = zext i32 %".963" to i64
  %".964" = load i32, ptr %"R3"
  %"zext.121" = zext i32 %".964" to i64
  %"shl.57" = shl i64 %"zext.121", 32
  %"or.57" = or i64 %"shl.57", %"zext.120"
  %".965" = inttoptr i64 %"or.57" to ptr
  %".966" = ptrtoint ptr %".965" to i64
  %".967" = add i64 %".966", 0
  %"for_LDG.58" = inttoptr i64 %".967" to ptr
  %".968" = load float, ptr %"for_LDG.58"
  %".969" = bitcast ptr %"R2" to ptr
  store float %".968", ptr %".969"
  ; IADD3 R4, R4, -0x1, RZ
  %".972" = load i32, ptr %"R4"
  %"add.54" = add i32 %".972", -1
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".975" = load i32, ptr %"R4"
  %".976" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".975", 0
  %".977" = and i1 %"cmp.10", %".976"
  store i1 %".977", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".980" = load i32, ptr %"R6"
  %"add.56" = add i32 %".980", 4
  %"add.57" = add i32 %"add.56", 0
  store i32 %"add.57", ptr %"R6"
  %"carry.6" = icmp ult i32 %"add.57", %".980"
  store i1 %"carry.6", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".984" = load i32, ptr %"R8"
  %"add.58" = add i32 %".984", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R8"
  %"carry.7" = icmp ult i32 %"add.59", %".984"
  store i1 %"carry.7", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".988" = load i32, ptr %"R3"
  %".989" = load i1, ptr %"P1"
  %".990" = sub i1 0, %".989"
  %".991" = zext i1 %".990" to i32
  %"add.60" = add i32 0, %".988"
  %"add.61" = add i32 %"add.60", 0
  %"add.62" = add i32 %"add.61", %".991"
  store i32 %"add.62", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".994" = load i32, ptr %"R9"
  %".995" = load i1, ptr %"P2"
  %".996" = sub i1 0, %".995"
  %".997" = zext i1 %".996" to i32
  %"add.63" = add i32 0, %".994"
  %"add.64" = add i32 %"add.63", 0
  %"add.65" = add i32 %"add.64", %".997"
  store i32 %"add.65", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".1000" = load float, ptr %"R2"
  %".1001" = load float, ptr %"R5"
  %".1002" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".1000", %".1001"
  %"fadd.28" = fadd float %"fmul.28", %".1002"
  %".1003" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".1003"
  ; @P0 BRA `(.L_x_6)
  %".1006" = load i1, ptr %"P0"
  %".1007" = icmp ne i1 %".1006", 1
  br i1 %".1007", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".1012" = load i32, ptr %"R0"
  %".1013" = load i32, ptr %"R5"
  %"zext.122" = zext i32 %".1012" to i64
  %"zext.123" = zext i32 %".1013" to i64
  %"mul.11" = mul i64 %"zext.122", %"zext.123"
  %".1014" = ptrtoint ptr %"Arg_2" to i64
  %"add.66" = add i64 %"mul.11", %".1014"
  %".1015" = and i64 %"add.66", 18446744069414584320
  %".1016" = lshr i64 %".1015", 32
  %"trunc32.6" = trunc i64 %".1016" to i32
  %"trunc32.7" = trunc i64 %"add.66" to i32
  store i32 %"trunc32.7", ptr %"R2"
  store i32 %"trunc32.6", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".1020" = load i32, ptr %"R2"
  %"zext.124" = zext i32 %".1020" to i64
  %".1021" = load i32, ptr %"R3"
  %"zext.125" = zext i32 %".1021" to i64
  %"shl.58" = shl i64 %"zext.125", 32
  %"or.58" = or i64 %"shl.58", %"zext.124"
  %".1022" = inttoptr i64 %"or.58" to ptr
  %".1023" = ptrtoint ptr %".1022" to i64
  %".1024" = add i64 %".1023", 0
  %"for_LDG.59" = inttoptr i64 %".1024" to ptr
  %".1025" = load float, ptr %"for_LDG.59"
  %".1026" = bitcast ptr %"R2" to ptr
  store float %".1025", ptr %".1026"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".1029" = load i32, ptr %"R0"
  %".1030" = load i32, ptr %"R5"
  %"zext.126" = zext i32 %".1029" to i64
  %"zext.127" = zext i32 %".1030" to i64
  %"mul.12" = mul i64 %"zext.126", %"zext.127"
  %".1031" = ptrtoint ptr %"Arg_3" to i64
  %"add.67" = add i64 %"mul.12", %".1031"
  %".1032" = and i64 %"add.67", 18446744069414584320
  %".1033" = lshr i64 %".1032", 32
  %"trunc32.8" = trunc i64 %".1033" to i32
  %"trunc32.9" = trunc i64 %"add.67" to i32
  store i32 %"trunc32.9", ptr %"R4"
  store i32 %"trunc32.8", ptr %"R5"
  ; FADD R7, R2, R7
  %".1037" = load float, ptr %"R2"
  %".1038" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".1037", %".1038"
  %".1039" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".1039"
  ; STG.E.SYS [R4], R7
  %".1042" = load float, ptr %"R7"
  %".1043" = load i32, ptr %"R4"
  %"zext.128" = zext i32 %".1043" to i64
  %".1044" = load i32, ptr %"R5"
  %"zext.129" = zext i32 %".1044" to i64
  %"shl.59" = shl i64 %"zext.129", 32
  %"or.59" = or i64 %"shl.59", %"zext.128"
  %".1045" = inttoptr i64 %"or.59" to ptr
  %".1046" = ptrtoint ptr %".1045" to i64
  %".1047" = add i64 %".1046", 0
  %"for_STG" = inttoptr i64 %".1047" to ptr
  store float %".1042", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_7:
  ; BRA `(.L_x_7)
  br label %".L_x_7"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

define void @"_Z10max_pool2dPfS_iii"(ptr %"Arg_0", ptr %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4")
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
  %".15" = ptrtoint i32 %"Arg_2" to i64
  %".16" = add i64 %".15", 0
  %"for_LDG" = inttoptr i64 %".16" to ptr
  %".17" = load i32, ptr %"for_LDG"
  store i32 %".17", ptr %"UR4"
  ; S2R R10, SR_CTAID.Y
  %"nvvm_ctaid_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()
  store i32 %"nvvm_ctaid_y", ptr %"R10"
  ; ULOP3.LUT UR4, UR4, UR5, URZ, 0x3c, !UPT
  %".22" = load i32, ptr %"UR4"
  %".23" = load i32, ptr %"UR5"
  %".24" = xor i32 %".22", %".23"
  store i32 %".24", ptr %"UR4"
  ; I2F.RP R0, R7
  %".27" = load i32, ptr %"R7"
  store i32 %".27", ptr %"R0"
  ; S2R R19, SR_CTAID.Z
  %"nvvm_ctaid_z" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.z"()
  store i32 %"nvvm_ctaid_z", ptr %"R19"
  ; ISETP.LE.AND P1, PT, RZ, UR4, PT
  %".32" = load i32, ptr %"UR4"
  %".33" = load i1, ptr %"PT"
  %"cmp" = icmp sle i32 0, %".32"
  %".34" = and i1 %"cmp", %".33"
  store i1 %".34", ptr %"P1"
  ; MUFU.RCP R0, R0
  %".37" = load float, ptr %"R0"
  %".38" = fdiv float 0x3ff0000000000000, %".37"
  %".39" = bitcast ptr %"R0" to ptr
  store float %".38", ptr %".39"
  ; IADD3 R2, R0, 0xffffffe, RZ
  %".42" = load i32, ptr %"R0"
  %"add.1" = add i32 %".42", 268435454
  %"add.2" = add i32 %"add.1", 0
  store i32 %"add.2", ptr %"R2"
  ; F2I.FTZ.U32.TRUNC.NTZ R3, R2
  %".45" = load float, ptr %"R2"
  %".46" = bitcast ptr %"R3" to ptr
  store float %".45", ptr %".46"
  ; IMAD.MOV.U32 R2, RZ, RZ, RZ
  %"mul.1" = mul i32 0, 0
  %"add.3" = add i32 %"mul.1", 0
  store i32 %"add.3", ptr %"R2"
  ; IMAD.MOV R4, RZ, RZ, -R3
  %".51" = load i32, ptr %"R3"
  %".52" = sub i32 0, %".51"
  %"mul.2" = mul i32 0, 0
  %"add.4" = add i32 %"mul.2", %".52"
  store i32 %"add.4", ptr %"R4"
  ; IMAD R5, R4, R7, RZ
  %".55" = load i32, ptr %"R4"
  %".56" = load i32, ptr %"R7"
  %"mul.3" = mul i32 %".55", %".56"
  %"add.5" = add i32 %"mul.3", 0
  store i32 %"add.5", ptr %"R5"
  ; IABS R4, c[0x0][0x170]
  %".59" = icmp sge i32 %"Arg_2", 0
  %".60" = sub i32 0, %"Arg_2"
  %"iabs.1" = select  i1 %".59", i32 %"Arg_2", i32 %".60"
  store i32 %"iabs.1", ptr %"R4"
  ; IMAD.HI.U32 R3, R3, R5, R2
  %".63" = load i32, ptr %"R3"
  %".64" = load i32, ptr %"R5"
  %".65" = load i32, ptr %"R2"
  %"mul.4" = mul i32 %".63", %".64"
  %"add.6" = add i32 %"mul.4", %".65"
  store i32 %"add.6", ptr %"R3"
  ; S2R R2, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R2"
  ; IMAD.HI.U32 R3, R3, R4, RZ
  %".70" = load i32, ptr %"R3"
  %".71" = load i32, ptr %"R4"
  %"mul.5" = mul i32 %".70", %".71"
  %"add.7" = add i32 %"mul.5", 0
  store i32 %"add.7", ptr %"R3"
  ; S2R R5, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R5"
  ; IMAD.MOV R0, RZ, RZ, -R3
  %".76" = load i32, ptr %"R3"
  %".77" = sub i32 0, %".76"
  %"mul.6" = mul i32 0, 0
  %"add.8" = add i32 %"mul.6", %".77"
  store i32 %"add.8", ptr %"R0"
  ; IMAD R0, R7, R0, R4
  %".80" = load i32, ptr %"R7"
  %".81" = load i32, ptr %"R0"
  %".82" = load i32, ptr %"R4"
  %"mul.7" = mul i32 %".80", %".81"
  %"add.9" = add i32 %"mul.7", %".82"
  store i32 %"add.9", ptr %"R0"
  ; ISETP.GT.U32.AND P2, PT, R7, R0, PT
  %".85" = load i32, ptr %"R7"
  %".86" = load i32, ptr %"R0"
  %".87" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".85", %".86"
  %".88" = and i1 %"cmp.1", %".87"
  store i1 %".88", ptr %"P2"
  ; @!P2 IADD3 R0, R0, -R7.reuse, RZ
  %".91" = load i1, ptr %"P2"
  %".92" = icmp eq i1 %".91", 1
  br i1 %".92", label %".text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160", label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160:
  ; IADD3 R0, R0, -R7.reuse, RZ
  %".95" = load i32, ptr %"R0"
  %".96" = load i32, ptr %"R7"
  %".97" = sub i32 0, %".96"
  %"add.10" = add i32 %".95", %".97"
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", ptr %"R0"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0170)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_split_0x0170:
  ; @!P2 IADD3 R3, R3, 0x1, RZ
  %".102" = load i1, ptr %"P2"
  %".103" = icmp eq i1 %".102", 1
  br i1 %".103", label %".text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170", label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170:
  ; IADD3 R3, R3, 0x1, RZ
  %".106" = load i32, ptr %"R3"
  %"add.12" = add i32 %".106", 1
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0180)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0180:
  ; ISETP.GE.U32.AND P0, PT, R0, R7, PT
  %".111" = load i32, ptr %"R0"
  %".112" = load i32, ptr %"R7"
  %".113" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".111", %".112"
  %".114" = and i1 %"cmp.2", %".113"
  store i1 %".114", ptr %"P0"
  ; IMAD R0, R2, c[0x0][0x0], R5
  %".117" = load i32, ptr %"R2"
  %".118" = load i32, ptr %"R5"
  %"mul.8" = mul i32 %".117", 0
  %"add.14" = add i32 %"mul.8", %".118"
  store i32 %"add.14", ptr %"R0"
  ; S2R R7, SR_TID.Y
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", ptr %"R7"
  ; ISETP.NE.AND P2, PT, RZ, c[0x0][0x174], PT
  %".123" = load i1, ptr %"PT"
  %"cmp.3" = icmp ne i32 0, %"Arg_3"
  %".124" = and i1 %"cmp.3", %".123"
  store i1 %".124", ptr %"P2"
  ; @P0 IADD3 R3, R3, 0x1, RZ
  %".127" = load i1, ptr %"P0"
  %".128" = icmp ne i1 %".127", 1
  br i1 %".128", label %".text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0", label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0:
  ; IADD3 R3, R3, 0x1, RZ
  %".131" = load i32, ptr %"R3"
  %"add.15" = add i32 %".131", 1
  %"add.16" = add i32 %"add.15", 0
  store i32 %"add.16", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01d0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x01d0:
  ; IMAD.MOV.U32 R21, RZ, RZ, R3
  %".136" = load i32, ptr %"R3"
  %"mul.9" = mul i32 0, 0
  %"add.17" = add i32 %"mul.9", %".136"
  store i32 %"add.17", ptr %"R21"
  ; @!P1 IMAD.MOV R21, RZ, RZ, -R21
  %".139" = load i1, ptr %"P1"
  %".140" = icmp eq i1 %".139", 1
  br i1 %".140", label %".text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0", label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0:
  ; IMAD.MOV R21, RZ, RZ, -R21
  %".143" = load i32, ptr %"R21"
  %".144" = sub i32 0, %".143"
  %"mul.10" = mul i32 0, 0
  %"add.18" = add i32 %"mul.10", %".144"
  store i32 %"add.18", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01f0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01f0:
  ; @!P2 LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".149" = load i1, ptr %"P2"
  %".150" = icmp eq i1 %".149", 1
  br i1 %".150", label %".text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0", label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0:
  ; LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".153" = xor i32 %"Arg_3", -1
  store i32 %".153", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0200)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x0200:
  ; IMAD R10, R10, c[0x0][0x4], R7
  %".158" = load i32, ptr %"R10"
  %".159" = load i32, ptr %"R7"
  %"mul.11" = mul i32 %".158", 0
  %"add.19" = add i32 %"mul.11", %".159"
  store i32 %"add.19", ptr %"R10"
  ; ISETP.GE.AND P0, PT, R0, R21, PT
  %".162" = load i32, ptr %"R0"
  %".163" = load i32, ptr %"R21"
  %".164" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".162", %".163"
  %".165" = and i1 %"cmp.4", %".164"
  store i1 %".165", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R10, R21, P0
  %".168" = load i32, ptr %"R10"
  %".169" = load i32, ptr %"R21"
  %".170" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".168", %".169"
  %".171" = or i1 %"cmp.5", %".170"
  store i1 %".171", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R19, c[0x0][0x178], P0
  %".174" = load i32, ptr %"R19"
  %".175" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".174", %"Arg_4"
  %".176" = or i1 %"cmp.6", %".175"
  store i1 %".176", ptr %"P0"
  ; @P0 EXIT
  %".179" = load i1, ptr %"P0"
  %".180" = icmp ne i1 %".179", 1
  br i1 %".180", label %".text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240", label %".text._Z10max_pool2dPfS_iii_split_0x0250"
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
  %".189" = load i32, ptr %"R15"
  %".190" = load i1, ptr %"PT"
  %"cmp.7" = icmp sge i32 %".189", 1
  %".191" = and i1 %"cmp.7", %".190"
  store i1 %".191", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".194" = load i1, ptr %"P0"
  %".195" = icmp eq i1 %".194", 1
  br i1 %".195", label %".L_x_8", label %".text._Z10max_pool2dPfS_iii_split_0x0290"
.text._Z10max_pool2dPfS_iii_split_0x0290:
  ; IMAD R3, R19, c[0x0][0x170], RZ
  %".198" = load i32, ptr %"R19"
  %"mul.13" = mul i32 %".198", %"Arg_2"
  %"add.21" = add i32 %"mul.13", 0
  store i32 %"add.21", ptr %"R3"
  ; IADD3 R2, R15.reuse, -0x1, RZ
  %".201" = load i32, ptr %"R15"
  %"add.22" = add i32 %".201", -1
  %"add.23" = add i32 %"add.22", 0
  store i32 %"add.23", ptr %"R2"
  ; IMAD R13, R0, c[0x0][0x174], RZ
  %".204" = load i32, ptr %"R0"
  %"mul.14" = mul i32 %".204", %"Arg_3"
  %"add.24" = add i32 %"mul.14", 0
  store i32 %"add.24", ptr %"R13"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".207" = load i32, ptr %"R15"
  %".208" = and i32 %".207", 3
  store i32 %".208", ptr %"R15"
  ; IMAD R12, R10, c[0x0][0x174], R3
  %".211" = load i32, ptr %"R10"
  %".212" = load i32, ptr %"R3"
  %"mul.15" = mul i32 %".211", %"Arg_3"
  %"add.25" = add i32 %"mul.15", %".212"
  store i32 %"add.25", ptr %"R12"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".215" = load i32, ptr %"R2"
  %".216" = load i1, ptr %"PT"
  %"cmp.8" = icmp sge i32 %".215", 3
  %".217" = and i1 %"cmp.8", %".216"
  store i1 %".217", ptr %"P0"
  ; IMAD.MOV.U32 R11, RZ, RZ, -0x800000
  %"mul.16" = mul i32 0, 0
  %"add.26" = add i32 %"mul.16", -8388608
  store i32 %"add.26", ptr %"R11"
  ; IADD3 R20, R15, -c[0x0][0x174], RZ
  %".222" = load i32, ptr %"R15"
  %".223" = sub i32 0, %"Arg_3"
  %"add.27" = add i32 %".222", %".223"
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", ptr %"R20"
  ; IMAD.MOV.U32 R16, RZ, RZ, RZ
  %"mul.17" = mul i32 0, 0
  %"add.29" = add i32 %"mul.17", 0
  store i32 %"add.29", ptr %"R16"
  ; IMAD R14, R12, c[0x0][0x170], R13
  %".228" = load i32, ptr %"R12"
  %".229" = load i32, ptr %"R13"
  %"mul.18" = mul i32 %".228", %"Arg_2"
  %"add.30" = add i32 %"mul.18", %".229"
  store i32 %"add.30", ptr %"R14"
  br label %".L_x_12"
.L_x_12:
  ; UMOV UR4, URZ
  %".233" = load i32, ptr %"URZ"
  store i32 %".233", ptr %"UR4"
  ; ISETP.NE.AND P2, PT, R15, RZ, PT
  %".236" = load i32, ptr %"R15"
  %".237" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".236", 0
  %".238" = and i1 %"cmp.9", %".237"
  store i1 %".238", ptr %"P2"
  ; @!P0 BRA `(.L_x_9)
  %".241" = load i1, ptr %"P0"
  %".242" = icmp eq i1 %".241", 1
  br i1 %".242", label %".L_x_9", label %".L_x_12_split_0x0360"
.L_x_12_split_0x0360:
  ; IMAD.IADD R17, R14, 0x1, R16
  %".245" = load i32, ptr %"R14"
  %".246" = load i32, ptr %"R16"
  %"mul.19" = mul i32 %".245", 1
  %"add.31" = add i32 %"mul.19", %".246"
  store i32 %"add.31", ptr %"R17"
  ; UMOV UR4, URZ
  %".249" = load i32, ptr %"URZ"
  store i32 %".249", ptr %"UR4"
  br label %".L_x_10"
.L_x_10:
  ; MOV R2, 0x4
  store i32 4, ptr %"R2"
  ; IMAD.MOV.U32 R23, RZ, RZ, c[0x0][0x170]
  %"mul.20" = mul i32 0, 0
  %"add.32" = add i32 %"mul.20", %"Arg_2"
  store i32 %"add.32", ptr %"R23"
  ; IMAD.WIDE R2, R17, R2, c[0x0][0x160]
  %".257" = load i32, ptr %"R17"
  %".258" = load i32, ptr %"R2"
  %"zext" = zext i32 %".257" to i64
  %"zext.1" = zext i32 %".258" to i64
  %"mul.21" = mul i64 %"zext", %"zext.1"
  %".259" = ptrtoint ptr %"Arg_0" to i64
  %"add.33" = add i64 %"mul.21", %".259"
  %".260" = and i64 %"add.33", 18446744069414584320
  %".261" = lshr i64 %".260", 32
  %"trunc32" = trunc i64 %".261" to i32
  %"trunc32.1" = trunc i64 %"add.33" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; IMAD.WIDE R4, R23.reuse, 0x4, R2
  %".265" = load i32, ptr %"R23"
  %".266" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".265" to i64
  %"zext.3" = zext i32 4 to i64
  %"mul.22" = mul i64 %"zext.2", %"zext.3"
  %"zext.4" = zext i32 %".266" to i64
  %"add.34" = add i64 %"mul.22", %"zext.4"
  %".267" = and i64 %"add.34", 18446744069414584320
  %".268" = lshr i64 %".267", 32
  %"trunc32.2" = trunc i64 %".268" to i32
  %"trunc32.3" = trunc i64 %"add.34" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; LDG.E.SYS R2, [R2]
  %".272" = load i32, ptr %"R2"
  %"zext.5" = zext i32 %".272" to i64
  %".273" = load i32, ptr %"R3"
  %"zext.6" = zext i32 %".273" to i64
  %"shl" = shl i64 %"zext.6", 32
  %"or" = or i64 %"shl", %"zext.5"
  %".274" = inttoptr i64 %"or" to ptr
  %".275" = ptrtoint ptr %".274" to i64
  %".276" = add i64 %".275", 0
  %"for_LDG.1" = inttoptr i64 %".276" to ptr
  %".277" = load float, ptr %"for_LDG.1"
  %".278" = bitcast ptr %"R2" to ptr
  store float %".277", ptr %".278"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".281" = load i32, ptr %"R23"
  %".282" = load i32, ptr %"R4"
  %"zext.7" = zext i32 %".281" to i64
  %"zext.8" = zext i32 4 to i64
  %"mul.23" = mul i64 %"zext.7", %"zext.8"
  %"zext.9" = zext i32 %".282" to i64
  %"add.35" = add i64 %"mul.23", %"zext.9"
  %".283" = and i64 %"add.35", 18446744069414584320
  %".284" = lshr i64 %".283", 32
  %"trunc32.4" = trunc i64 %".284" to i32
  %"trunc32.5" = trunc i64 %"add.35" to i32
  store i32 %"trunc32.5", ptr %"R6"
  store i32 %"trunc32.4", ptr %"R7"
  ; LDG.E.SYS R4, [R4]
  %".288" = load i32, ptr %"R4"
  %"zext.10" = zext i32 %".288" to i64
  %".289" = load i32, ptr %"R5"
  %"zext.11" = zext i32 %".289" to i64
  %"shl.1" = shl i64 %"zext.11", 32
  %"or.1" = or i64 %"shl.1", %"zext.10"
  %".290" = inttoptr i64 %"or.1" to ptr
  %".291" = ptrtoint ptr %".290" to i64
  %".292" = add i64 %".291", 0
  %"for_LDG.2" = inttoptr i64 %".292" to ptr
  %".293" = load float, ptr %"for_LDG.2"
  %".294" = bitcast ptr %"R4" to ptr
  store float %".293", ptr %".294"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".297" = load i32, ptr %"R23"
  %".298" = load i32, ptr %"R6"
  %"zext.12" = zext i32 %".297" to i64
  %"zext.13" = zext i32 4 to i64
  %"mul.24" = mul i64 %"zext.12", %"zext.13"
  %"zext.14" = zext i32 %".298" to i64
  %"add.36" = add i64 %"mul.24", %"zext.14"
  %".299" = and i64 %"add.36", 18446744069414584320
  %".300" = lshr i64 %".299", 32
  %"trunc32.6" = trunc i64 %".300" to i32
  %"trunc32.7" = trunc i64 %"add.36" to i32
  store i32 %"trunc32.7", ptr %"R8"
  %"R9" = alloca i32, i32 1
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.SYS R6, [R6]
  %".304" = load i32, ptr %"R6"
  %"zext.15" = zext i32 %".304" to i64
  %".305" = load i32, ptr %"R7"
  %"zext.16" = zext i32 %".305" to i64
  %"shl.2" = shl i64 %"zext.16", 32
  %"or.2" = or i64 %"shl.2", %"zext.15"
  %".306" = inttoptr i64 %"or.2" to ptr
  %".307" = ptrtoint ptr %".306" to i64
  %".308" = add i64 %".307", 0
  %"for_LDG.3" = inttoptr i64 %".308" to ptr
  %".309" = load float, ptr %"for_LDG.3"
  %".310" = bitcast ptr %"R6" to ptr
  store float %".309", ptr %".310"
  ; LDG.E.SYS R8, [R8]
  %".313" = load i32, ptr %"R8"
  %"zext.17" = zext i32 %".313" to i64
  %".314" = load i32, ptr %"R9"
  %"zext.18" = zext i32 %".314" to i64
  %"shl.3" = shl i64 %"zext.18", 32
  %"or.3" = or i64 %"shl.3", %"zext.17"
  %".315" = inttoptr i64 %"or.3" to ptr
  %".316" = ptrtoint ptr %".315" to i64
  %".317" = add i64 %".316", 0
  %"for_LDG.4" = inttoptr i64 %".317" to ptr
  %".318" = load float, ptr %"for_LDG.4"
  %".319" = bitcast ptr %"R8" to ptr
  store float %".318", ptr %".319"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".322" = load i32, ptr %"UR4"
  %"add.37" = add i32 %".322", 4
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", ptr %"UR4"
  ; IADD3 R18, R20, UR4, RZ
  %".325" = load i32, ptr %"R20"
  %".326" = load i32, ptr %"UR4"
  %"add.39" = add i32 %".325", %".326"
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", ptr %"R18"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".329" = load i32, ptr %"R18"
  %".330" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".329", 0
  %".331" = and i1 %"cmp.10", %".330"
  store i1 %".331", ptr %"P1"
  ; IMAD R17, R23, 0x4, R17
  %".334" = load i32, ptr %"R23"
  %".335" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".334", 4
  %"add.41" = add i32 %"mul.25", %".335"
  store i32 %"add.41", ptr %"R17"
  ; FMNMX R11, R2, R11, !PT
  %".338" = load float, ptr %"R2"
  %".339" = load float, ptr %"R11"
  %".340" = fcmp olt float %".338", %".339"
  %"fmnmx_min" = select  i1 %".340", float %".338", float %".339"
  %".341" = fcmp ogt float %".338", %".339"
  %"fmnmx_max" = select  i1 %".341", float %".338", float %".339"
  %"fmnmx_final" = select  i1 1, float %"fmnmx_min", float %"fmnmx_max"
  %".342" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final", ptr %".342"
  ; FMNMX R11, R11, R4, !PT
  %".345" = load float, ptr %"R11"
  %".346" = load float, ptr %"R4"
  %".347" = fcmp olt float %".345", %".346"
  %"fmnmx_min.1" = select  i1 %".347", float %".345", float %".346"
  %".348" = fcmp ogt float %".345", %".346"
  %"fmnmx_max.1" = select  i1 %".348", float %".345", float %".346"
  %"fmnmx_final.1" = select  i1 1, float %"fmnmx_min.1", float %"fmnmx_max.1"
  %".349" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.1", ptr %".349"
  ; FMNMX R11, R11, R6, !PT
  %".352" = load float, ptr %"R11"
  %".353" = load float, ptr %"R6"
  %".354" = fcmp olt float %".352", %".353"
  %"fmnmx_min.2" = select  i1 %".354", float %".352", float %".353"
  %".355" = fcmp ogt float %".352", %".353"
  %"fmnmx_max.2" = select  i1 %".355", float %".352", float %".353"
  %"fmnmx_final.2" = select  i1 1, float %"fmnmx_min.2", float %"fmnmx_max.2"
  %".356" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.2", ptr %".356"
  ; FMNMX R11, R11, R8, !PT
  %".359" = load float, ptr %"R11"
  %".360" = load float, ptr %"R8"
  %".361" = fcmp olt float %".359", %".360"
  %"fmnmx_min.3" = select  i1 %".361", float %".359", float %".360"
  %".362" = fcmp ogt float %".359", %".360"
  %"fmnmx_max.3" = select  i1 %".362", float %".359", float %".360"
  %"fmnmx_final.3" = select  i1 1, float %"fmnmx_min.3", float %"fmnmx_max.3"
  %".363" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.3", ptr %".363"
  ; @P1 BRA `(.L_x_10)
  %".366" = load i1, ptr %"P1"
  %".367" = icmp ne i1 %".366", 1
  br i1 %".367", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".370" = load i32, ptr %"R13"
  %".371" = load i32, ptr %"R16"
  %"mul.26" = mul i32 %".370", 1
  %"add.42" = add i32 %"mul.26", %".371"
  store i32 %"add.42", ptr %"R4"
  ; @!P2 BRA `(.L_x_11)
  %".374" = load i1, ptr %"P2"
  %".375" = icmp eq i1 %".374", 1
  br i1 %".375", label %".L_x_11", label %".L_x_9_split_0x04d0"
.L_x_9_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".378" = load i32, ptr %"R12"
  %".379" = load i32, ptr %"UR4"
  %"add.43" = add i32 %".378", %".379"
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", ptr %"R5"
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".384" = load i32, ptr %"R5"
  %".385" = load i32, ptr %"R4"
  %"mul.27" = mul i32 %".384", %"Arg_2"
  %"add.45" = add i32 %"mul.27", %".385"
  store i32 %"add.45", ptr %"R2"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".388" = load i32, ptr %"R2"
  %".389" = load i32, ptr %"R7"
  %"zext.19" = zext i32 %".388" to i64
  %"zext.20" = zext i32 %".389" to i64
  %"mul.28" = mul i64 %"zext.19", %"zext.20"
  %".390" = ptrtoint ptr %"Arg_0" to i64
  %"add.46" = add i64 %"mul.28", %".390"
  %".391" = and i64 %"add.46", 18446744069414584320
  %".392" = lshr i64 %".391", 32
  %"trunc32.8" = trunc i64 %".392" to i32
  %"trunc32.9" = trunc i64 %"add.46" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".396" = load i32, ptr %"R2"
  %"zext.21" = zext i32 %".396" to i64
  %".397" = load i32, ptr %"R3"
  %"zext.22" = zext i32 %".397" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".398" = inttoptr i64 %"or.4" to ptr
  %".399" = ptrtoint ptr %".398" to i64
  %".400" = add i64 %".399", 0
  %"for_LDG.5" = inttoptr i64 %".400" to ptr
  %".401" = load float, ptr %"for_LDG.5"
  %".402" = bitcast ptr %"R2" to ptr
  store float %".401", ptr %".402"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".405" = load i32, ptr %"R15"
  %".406" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".405", 1
  %".407" = and i1 %"cmp.11", %".406"
  store i1 %".407", ptr %"P1"
  ; FMNMX R11, R11, R2, !PT
  %".410" = load float, ptr %"R11"
  %".411" = load float, ptr %"R2"
  %".412" = fcmp olt float %".410", %".411"
  %"fmnmx_min.4" = select  i1 %".412", float %".410", float %".411"
  %".413" = fcmp ogt float %".410", %".411"
  %"fmnmx_max.4" = select  i1 %".413", float %".410", float %".411"
  %"fmnmx_final.4" = select  i1 1, float %"fmnmx_min.4", float %"fmnmx_max.4"
  %".414" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.4", ptr %".414"
  ; @!P1 BRA `(.L_x_11)
  %".417" = load i1, ptr %"P1"
  %".418" = icmp eq i1 %".417", 1
  br i1 %".418", label %".L_x_11", label %".L_x_9_split_0x0550"
.L_x_9_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".421" = load i32, ptr %"R15"
  %".422" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".421", 2
  %".423" = and i1 %"cmp.12", %".422"
  store i1 %".423", ptr %"P1"
  ; IADD3 R2, R5, 0x1, RZ
  %".426" = load i32, ptr %"R5"
  %"add.47" = add i32 %".426", 1
  %"add.48" = add i32 %"add.47", 0
  store i32 %"add.48", ptr %"R2"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".429" = load i32, ptr %"R2"
  %".430" = load i32, ptr %"R4"
  %"mul.29" = mul i32 %".429", %"Arg_2"
  %"add.49" = add i32 %"mul.29", %".430"
  store i32 %"add.49", ptr %"R2"
  ; @P1 IADD3 R3, R5, 0x2, RZ
  %".433" = load i1, ptr %"P1"
  %".434" = icmp ne i1 %".433", 1
  br i1 %".434", label %".L_x_9_split_0x0550_conditionalExpr_0x0580", label %".L_x_9_split_0x0590"
.L_x_9_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".437" = load i32, ptr %"R5"
  %"add.50" = add i32 %".437", 2
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R3"
  ; BRA `(.L_x_9_split_0x0590)
  br label %".L_x_9_split_0x0590"
.L_x_9_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4
  %".442" = load i1, ptr %"P1"
  %".443" = icmp ne i1 %".442", 1
  br i1 %".443", label %".L_x_9_split_0x0590_conditionalExpr_0x0590", label %".L_x_9_split_0x05a0"
.L_x_9_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".446" = load i32, ptr %"R3"
  %".447" = load i32, ptr %"R4"
  %"mul.30" = mul i32 %".446", %"Arg_2"
  %"add.52" = add i32 %"mul.30", %".447"
  store i32 %"add.52", ptr %"R4"
  ; BRA `(.L_x_9_split_0x05a0)
  br label %".L_x_9_split_0x05a0"
.L_x_9_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".452" = load i32, ptr %"R2"
  %".453" = load i32, ptr %"R7"
  %"zext.23" = zext i32 %".452" to i64
  %"zext.24" = zext i32 %".453" to i64
  %"mul.31" = mul i64 %"zext.23", %"zext.24"
  %".454" = ptrtoint ptr %"Arg_0" to i64
  %"add.53" = add i64 %"mul.31", %".454"
  %".455" = and i64 %"add.53", 18446744069414584320
  %".456" = lshr i64 %".455", 32
  %"trunc32.10" = trunc i64 %".456" to i32
  %"trunc32.11" = trunc i64 %"add.53" to i32
  store i32 %"trunc32.11", ptr %"R2"
  store i32 %"trunc32.10", ptr %"R3"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".460" = load i1, ptr %"P1"
  %".461" = icmp ne i1 %".460", 1
  br i1 %".461", label %".L_x_9_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".464" = load i32, ptr %"R4"
  %".465" = load i32, ptr %"R7"
  %"zext.25" = zext i32 %".464" to i64
  %"zext.26" = zext i32 %".465" to i64
  %"mul.32" = mul i64 %"zext.25", %"zext.26"
  %".466" = ptrtoint ptr %"Arg_0" to i64
  %"add.54" = add i64 %"mul.32", %".466"
  %".467" = and i64 %"add.54", 18446744069414584320
  %".468" = lshr i64 %".467", 32
  %"trunc32.12" = trunc i64 %".468" to i32
  %"trunc32.13" = trunc i64 %"add.54" to i32
  store i32 %"trunc32.13", ptr %"R4"
  store i32 %"trunc32.12", ptr %"R5"
  ; BRA `(.L_x_9_split_0x05c0)
  br label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".474" = load i32, ptr %"R2"
  %"zext.27" = zext i32 %".474" to i64
  %".475" = load i32, ptr %"R3"
  %"zext.28" = zext i32 %".475" to i64
  %"shl.5" = shl i64 %"zext.28", 32
  %"or.5" = or i64 %"shl.5", %"zext.27"
  %".476" = inttoptr i64 %"or.5" to ptr
  %".477" = ptrtoint ptr %".476" to i64
  %".478" = add i64 %".477", 0
  %"for_LDG.6" = inttoptr i64 %".478" to ptr
  %".479" = load float, ptr %"for_LDG.6"
  %".480" = bitcast ptr %"R2" to ptr
  store float %".479", ptr %".480"
  ; @P1 LDG.E.SYS R4, [R4]
  %".483" = load i1, ptr %"P1"
  %".484" = icmp ne i1 %".483", 1
  br i1 %".484", label %".L_x_9_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".487" = load i32, ptr %"R4"
  %"zext.29" = zext i32 %".487" to i64
  %".488" = load i32, ptr %"R5"
  %"zext.30" = zext i32 %".488" to i64
  %"shl.6" = shl i64 %"zext.30", 32
  %"or.6" = or i64 %"shl.6", %"zext.29"
  %".489" = inttoptr i64 %"or.6" to ptr
  %".490" = ptrtoint ptr %".489" to i64
  %".491" = add i64 %".490", 0
  %"for_LDG.7" = inttoptr i64 %".491" to ptr
  %".492" = load float, ptr %"for_LDG.7"
  %".493" = bitcast ptr %"R4" to ptr
  store float %".492", ptr %".493"
  ; BRA `(.L_x_9_split_0x05e0)
  br label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".498" = load float, ptr %"R11"
  %".499" = load float, ptr %"R2"
  %".500" = fcmp olt float %".498", %".499"
  %"fmnmx_min.5" = select  i1 %".500", float %".498", float %".499"
  %".501" = fcmp ogt float %".498", %".499"
  %"fmnmx_max.5" = select  i1 %".501", float %".498", float %".499"
  %"fmnmx_final.5" = select  i1 1, float %"fmnmx_min.5", float %"fmnmx_max.5"
  %".502" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.5", ptr %".502"
  ; @P1 FMNMX R11, R11, R4, !PT
  %".505" = load i1, ptr %"P1"
  %".506" = icmp ne i1 %".505", 1
  br i1 %".506", label %".L_x_9_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_11"
.L_x_9_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".509" = load float, ptr %"R11"
  %".510" = load float, ptr %"R4"
  %".511" = fcmp olt float %".509", %".510"
  %"fmnmx_min.6" = select  i1 %".511", float %".509", float %".510"
  %".512" = fcmp ogt float %".509", %".510"
  %"fmnmx_max.6" = select  i1 %".512", float %".509", float %".510"
  %"fmnmx_final.6" = select  i1 1, float %"fmnmx_min.6", float %"fmnmx_max.6"
  %".513" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.6", ptr %".513"
  ; BRA `(.L_x_11)
  br label %".L_x_11"
.L_x_11:
  ; IADD3 R16, R16, 0x1, RZ
  %".518" = load i32, ptr %"R16"
  %"add.55" = add i32 %".518", 1
  %"add.56" = add i32 %"add.55", 0
  store i32 %"add.56", ptr %"R16"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".521" = load i32, ptr %"R16"
  %".522" = load i1, ptr %"PT"
  %"cmp.13" = icmp sge i32 %".521", %"Arg_3"
  %".523" = and i1 %"cmp.13", %".522"
  store i1 %".523", ptr %"P1"
  ; @!P1 BRA `(.L_x_12)
  %".526" = load i1, ptr %"P1"
  %".527" = icmp eq i1 %".526", 1
  br i1 %".527", label %".L_x_12", label %".L_x_8"
.L_x_8:
  ; IMAD R3, R21.reuse, R19, R10
  %".530" = load i32, ptr %"R21"
  %".531" = load i32, ptr %"R19"
  %".532" = load i32, ptr %"R10"
  %"mul.33" = mul i32 %".530", %".531"
  %"add.57" = add i32 %"mul.33", %".532"
  store i32 %"add.57", ptr %"R3"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"mul.34" = mul i32 0, 0
  %"add.58" = add i32 %"mul.34", 4
  store i32 %"add.58", ptr %"R2"
  ; IMAD R3, R21, R3, R0
  %".537" = load i32, ptr %"R21"
  %".538" = load i32, ptr %"R3"
  %".539" = load i32, ptr %"R0"
  %"mul.35" = mul i32 %".537", %".538"
  %"add.59" = add i32 %"mul.35", %".539"
  store i32 %"add.59", ptr %"R3"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".542" = load i32, ptr %"R3"
  %".543" = load i32, ptr %"R2"
  %"zext.31" = zext i32 %".542" to i64
  %"zext.32" = zext i32 %".543" to i64
  %"mul.36" = mul i64 %"zext.31", %"zext.32"
  %".544" = ptrtoint ptr %"Arg_1" to i64
  %"add.60" = add i64 %"mul.36", %".544"
  %".545" = and i64 %"add.60", 18446744069414584320
  %".546" = lshr i64 %".545", 32
  %"trunc32.14" = trunc i64 %".546" to i32
  %"trunc32.15" = trunc i64 %"add.60" to i32
  store i32 %"trunc32.15", ptr %"R2"
  store i32 %"trunc32.14", ptr %"R3"
  ; STG.E.SYS [R2], R11
  %".550" = load i32, ptr %"R11"
  %".551" = load i32, ptr %"R2"
  %"zext.33" = zext i32 %".551" to i64
  %".552" = load i32, ptr %"R3"
  %"zext.34" = zext i32 %".552" to i64
  %"shl.7" = shl i64 %"zext.34", 32
  %"or.7" = or i64 %"shl.7", %"zext.33"
  %".553" = inttoptr i64 %"or.7" to ptr
  %".554" = ptrtoint ptr %".553" to i64
  %".555" = add i64 %".554", 0
  %"for_STG" = inttoptr i64 %".555" to ptr
  store i32 %".550", ptr %"for_STG"
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

define void @"_Z4reluPfS_i"(ptr %"Arg_0", ptr %"Arg_1", i32 %"Arg_2")
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
  %"zext" = zext i32 %".30" to i64
  %"zext.1" = zext i32 %".31" to i64
  %"mul.1" = mul i64 %"zext", %"zext.1"
  %".32" = ptrtoint ptr %"Arg_0" to i64
  %"add.1" = add i64 %"mul.1", %".32"
  %".33" = and i64 %"add.1", 18446744069414584320
  %".34" = lshr i64 %".33", 32
  %"trunc32" = trunc i64 %".34" to i32
  %"trunc32.1" = trunc i64 %"add.1" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".38" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".38" to i64
  %".39" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".39" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %".40" = inttoptr i64 %"or" to ptr
  %".41" = ptrtoint ptr %".40" to i64
  %".42" = add i64 %".41", 0
  %"for_LDG" = inttoptr i64 %".42" to ptr
  %".43" = load float, ptr %"for_LDG"
  %".44" = bitcast ptr %"R2" to ptr
  store float %".43", ptr %".44"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x168]
  %".47" = load i32, ptr %"R4"
  %".48" = load i32, ptr %"R5"
  %"zext.4" = zext i32 %".47" to i64
  %"zext.5" = zext i32 %".48" to i64
  %"mul.2" = mul i64 %"zext.4", %"zext.5"
  %".49" = ptrtoint ptr %"Arg_1" to i64
  %"add.2" = add i64 %"mul.2", %".49"
  %".50" = and i64 %"add.2", 18446744069414584320
  %".51" = lshr i64 %".50", 32
  %"trunc32.2" = trunc i64 %".51" to i32
  %"trunc32.3" = trunc i64 %"add.2" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; FMNMX R7, RZ, R2, !PT
  %".55" = load float, ptr %"R2"
  %".56" = fcmp olt float              0x0, %".55"
  %"fmnmx_min" = select  i1 %".56", float              0x0, float %".55"
  %".57" = fcmp ogt float              0x0, %".55"
  %"fmnmx_max" = select  i1 %".57", float              0x0, float %".55"
  %"fmnmx_final" = select  i1 1, float %"fmnmx_min", float %"fmnmx_max"
  %".58" = bitcast ptr %"R7" to ptr
  store float %"fmnmx_final", ptr %".58"
  ; STG.E.SYS [R4], R7
  %".61" = load float, ptr %"R7"
  %".62" = load i32, ptr %"R4"
  %"zext.6" = zext i32 %".62" to i64
  %".63" = load i32, ptr %"R5"
  %"zext.7" = zext i32 %".63" to i64
  %"shl.1" = shl i64 %"zext.7", 32
  %"or.1" = or i64 %"shl.1", %"zext.6"
  %".64" = inttoptr i64 %"or.1" to ptr
  %".65" = ptrtoint ptr %".64" to i64
  %".66" = add i64 %".65", 0
  %"for_STG" = inttoptr i64 %".66" to ptr
  store float %".61", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_14:
  ; BRA `(.L_x_14)
  br label %".L_x_14"
ExitFunction:
  ret void
}

define void @"_Z6conv2dPfS_S_iiii"(ptr %"Arg_0", ptr %"Arg_1", ptr %"Arg_2", i32 %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6")
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
  %".15" = ptrtoint i32 %"Arg_3" to i64
  %".16" = add i64 %".15", 0
  %"for_LDG" = inttoptr i64 %".16" to ptr
  %".17" = load i32, ptr %"for_LDG"
  store i32 %".17", ptr %"UR4"
  ; UIADD3 UR5, UR4, -UR5, URZ
  %".20" = load i32, ptr %"UR4"
  %".21" = load i32, ptr %"UR5"
  %".22" = sub i32 0, %".21"
  %"add" = add i32 %".20", %".22"
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
  %".33" = load i32, ptr %"R3"
  %".34" = load i32, ptr %"R4"
  %"mul" = mul i32 %".33", 0
  %"add.2" = add i32 %"mul", %".34"
  store i32 %"add.2", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R3, UR5, PT
  %".37" = load i32, ptr %"R3"
  %".38" = load i32, ptr %"UR5"
  %".39" = load i1, ptr %"PT"
  %"cmp" = icmp sgt i32 %".37", %".38"
  %".40" = and i1 %"cmp", %".39"
  store i1 %".40", ptr %"P0"
  ; IMAD R2, R2, c[0x0][0x0], R5
  %".43" = load i32, ptr %"R2"
  %".44" = load i32, ptr %"R5"
  %"mul.1" = mul i32 %".43", 0
  %"add.3" = add i32 %"mul.1", %".44"
  store i32 %"add.3", ptr %"R2"
  ; ISETP.GT.OR P0, PT, R2, UR5, P0
  %".47" = load i32, ptr %"R2"
  %".48" = load i32, ptr %"UR5"
  %".49" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".47", %".48"
  %".50" = or i1 %"cmp.1", %".49"
  store i1 %".50", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R0, c[0x0][0x184], P0
  %".53" = load i32, ptr %"R0"
  %".54" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".53", %"Arg_6"
  %".55" = or i1 %"cmp.2", %".54"
  store i1 %".55", ptr %"P0"
  ; @P0 EXIT
  %".58" = load i1, ptr %"P0"
  %".59" = icmp ne i1 %".58", 1
  br i1 %".59", label %".text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0", label %".text._Z6conv2dPfS_S_iiii_split_0x00e0"
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
  %".68" = load i32, ptr %"R4"
  %".69" = load i1, ptr %"PT"
  %"cmp.3" = icmp sle i32 %".68", %"Arg_4"
  %".70" = and i1 %"cmp.3", %".69"
  store i1 %".70", ptr %"P0"
  ; ISETP.GT.OR P0, PT, R4, c[0x0][0x180], !P0
  %".73" = load i32, ptr %"R4"
  %".74" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".73", %"Arg_5"
  %".75" = or i1 %"cmp.4", %".74"
  store i1 %".75", ptr %"P0"
  ; @P0 BRA `(.L_x_15)
  %".78" = load i1, ptr %"P0"
  %".79" = icmp ne i1 %".78", 1
  br i1 %".79", label %".L_x_15", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
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
  %".88" = load float, ptr %"RZ"
  %".89" = bitcast ptr %"R12" to ptr
  store float %".88", ptr %".89"
  ; IADD3 R5, -R5, c[0x0][0x17c], RZ
  %".92" = load i32, ptr %"R5"
  %".93" = sub i32 0, %".92"
  %"add.7" = add i32 %".93", %"Arg_4"
  %"add.8" = add i32 %"add.7", 0
  store i32 %"add.8", ptr %"R5"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".96" = load i32, ptr %"R4"
  %".97" = and i32 %".96", 3
  store i32 %".97", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".100" = load i32, ptr %"R5"
  %".101" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".100", 3
  %".102" = and i1 %"cmp.5", %".101"
  store i1 %".102", ptr %"P0"
  ; IADD3 R26, R4, -c[0x0][0x17c], RZ
  %".105" = load i32, ptr %"R4"
  %".106" = sub i32 0, %"Arg_4"
  %"add.9" = add i32 %".105", %".106"
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", ptr %"R26"
  br label %".L_x_20"
.L_x_20:
  ; IMAD R11, R10, c[0x0][0x178], R3
  %".110" = load i32, ptr %"R10"
  %".111" = load i32, ptr %"R3"
  %"mul.5" = mul i32 %".110", %"Arg_3"
  %"add.11" = add i32 %"mul.5", %".111"
  store i32 %"add.11", ptr %"R11"
  ; MOV R8, RZ
  %".114" = load i32, ptr %"RZ"
  store i32 %".114", ptr %"R8"
  ; IMAD R9, R0, c[0x0][0x180], R10
  %".117" = load i32, ptr %"R0"
  %".118" = load i32, ptr %"R10"
  %"mul.6" = mul i32 %".117", %"Arg_5"
  %"add.12" = add i32 %"mul.6", %".118"
  store i32 %"add.12", ptr %"R9"
  ; IADD3 R10, R10, 0x1, RZ
  %".121" = load i32, ptr %"R10"
  %"add.13" = add i32 %".121", 1
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", ptr %"R10"
  ; IMAD R5, R11, c[0x0][0x178], R2
  %".124" = load i32, ptr %"R11"
  %".125" = load i32, ptr %"R2"
  %"mul.7" = mul i32 %".124", %"Arg_3"
  %"add.15" = add i32 %"mul.7", %".125"
  store i32 %"add.15", ptr %"R5"
  ; ISETP.GE.AND P1, PT, R10, c[0x0][0x180], PT
  %".128" = load i32, ptr %"R10"
  %".129" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".128", %"Arg_5"
  %".130" = and i1 %"cmp.6", %".129"
  store i1 %".130", ptr %"P1"
  br label %".L_x_19"
.L_x_19:
  ; IMAD R6, R9, c[0x0][0x17c], R8
  %".134" = load i32, ptr %"R9"
  %".135" = load i32, ptr %"R8"
  %"mul.8" = mul i32 %".134", %"Arg_4"
  %"add.16" = add i32 %"mul.8", %".135"
  store i32 %"add.16", ptr %"R6"
  ; UMOV UR4, URZ
  %".138" = load i32, ptr %"URZ"
  store i32 %".138", ptr %"UR4"
  ; ISETP.NE.AND P3, PT, R4, RZ, PT
  %".141" = load i32, ptr %"R4"
  %".142" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".141", 0
  %".143" = and i1 %"cmp.7", %".142"
  store i1 %".143", ptr %"P3"
  ; IMAD R29, R6, c[0x0][0x17c], RZ
  %".146" = load i32, ptr %"R6"
  %"mul.9" = mul i32 %".146", %"Arg_4"
  %"add.17" = add i32 %"mul.9", 0
  store i32 %"add.17", ptr %"R29"
  ; @!P0 BRA `(.L_x_16)
  %".149" = load i1, ptr %"P0"
  %".150" = icmp eq i1 %".149", 1
  br i1 %".150", label %".L_x_16", label %".L_x_19_split_0x0260"
.L_x_19_split_0x0260:
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD.IADD R13, R5, 0x1, R8
  %".155" = load i32, ptr %"R5"
  %".156" = load i32, ptr %"R8"
  %"mul.10" = mul i32 %".155", 1
  %"add.18" = add i32 %"mul.10", %".156"
  store i32 %"add.18", ptr %"R13"
  ; UMOV UR4, URZ
  %".159" = load i32, ptr %"URZ"
  store i32 %".159", ptr %"UR4"
  ; IMAD.WIDE R6, R29, R24, c[0x0][0x168]
  %".162" = load i32, ptr %"R29"
  %".163" = load i32, ptr %"R24"
  %"zext" = zext i32 %".162" to i64
  %"zext.1" = zext i32 %".163" to i64
  %"mul.11" = mul i64 %"zext", %"zext.1"
  %".164" = ptrtoint ptr %"Arg_1" to i64
  %"add.19" = add i64 %"mul.11", %".164"
  %".165" = and i64 %"add.19", 18446744069414584320
  %".166" = lshr i64 %".165", 32
  %"trunc32" = trunc i64 %".166" to i32
  %"trunc32.1" = trunc i64 %"add.19" to i32
  store i32 %"trunc32.1", ptr %"R6"
  store i32 %"trunc32", ptr %"R7"
  ; MOV R23, R6
  %".170" = load i32, ptr %"R6"
  store i32 %".170", ptr %"R23"
  br label %".L_x_17"
.L_x_17:
  ; IMAD.WIDE R14, R13, R24, c[0x0][0x160]
  %".174" = load i32, ptr %"R13"
  %".175" = load i32, ptr %"R24"
  %"zext.2" = zext i32 %".174" to i64
  %"zext.3" = zext i32 %".175" to i64
  %"mul.12" = mul i64 %"zext.2", %"zext.3"
  %".176" = ptrtoint ptr %"Arg_0" to i64
  %"add.20" = add i64 %"mul.12", %".176"
  %".177" = and i64 %"add.20", 18446744069414584320
  %".178" = lshr i64 %".177", 32
  %"trunc32.2" = trunc i64 %".178" to i32
  %"trunc32.3" = trunc i64 %"add.20" to i32
  store i32 %"trunc32.3", ptr %"R14"
  store i32 %"trunc32.2", ptr %"R15"
  ; MOV R31, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"R31"
  ; IMAD.MOV.U32 R6, RZ, RZ, R23
  %".184" = load i32, ptr %"R23"
  %"mul.13" = mul i32 0, 0
  %"add.21" = add i32 %"mul.13", %".184"
  store i32 %"add.21", ptr %"R6"
  ; IMAD.WIDE R16, R31.reuse, 0x4, R14
  %".187" = load i32, ptr %"R31"
  %".188" = load i32, ptr %"R14"
  %"zext.4" = zext i32 %".187" to i64
  %"zext.5" = zext i32 4 to i64
  %"mul.14" = mul i64 %"zext.4", %"zext.5"
  %"zext.6" = zext i32 %".188" to i64
  %"add.22" = add i64 %"mul.14", %"zext.6"
  %".189" = and i64 %"add.22", 18446744069414584320
  %".190" = lshr i64 %".189", 32
  %"trunc32.4" = trunc i64 %".190" to i32
  %"trunc32.5" = trunc i64 %"add.22" to i32
  store i32 %"trunc32.5", ptr %"R16"
  %"R17" = alloca i32, i32 1
  store i32 %"trunc32.4", ptr %"R17"
  ; LDG.E.SYS R14, [R14]
  %".194" = load i32, ptr %"R14"
  %"zext.7" = zext i32 %".194" to i64
  %".195" = load i32, ptr %"R15"
  %"zext.8" = zext i32 %".195" to i64
  %"shl" = shl i64 %"zext.8", 32
  %"or" = or i64 %"shl", %"zext.7"
  %".196" = inttoptr i64 %"or" to ptr
  %".197" = ptrtoint ptr %".196" to i64
  %".198" = add i64 %".197", 0
  %"for_LDG.1" = inttoptr i64 %".198" to ptr
  %".199" = load float, ptr %"for_LDG.1"
  %".200" = bitcast ptr %"R14" to ptr
  store float %".199", ptr %".200"
  ; LDG.E.SYS R23, [R6]
  %".203" = load i32, ptr %"R6"
  %"zext.9" = zext i32 %".203" to i64
  %".204" = load i32, ptr %"R7"
  %"zext.10" = zext i32 %".204" to i64
  %"shl.1" = shl i64 %"zext.10", 32
  %"or.1" = or i64 %"shl.1", %"zext.9"
  %".205" = inttoptr i64 %"or.1" to ptr
  %".206" = ptrtoint ptr %".205" to i64
  %".207" = add i64 %".206", 0
  %"for_LDG.2" = inttoptr i64 %".207" to ptr
  %".208" = load float, ptr %"for_LDG.2"
  %".209" = bitcast ptr %"R23" to ptr
  store float %".208", ptr %".209"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".212" = load i32, ptr %"R31"
  %".213" = load i32, ptr %"R16"
  %"zext.11" = zext i32 %".212" to i64
  %"zext.12" = zext i32 4 to i64
  %"mul.15" = mul i64 %"zext.11", %"zext.12"
  %"zext.13" = zext i32 %".213" to i64
  %"add.23" = add i64 %"mul.15", %"zext.13"
  %".214" = and i64 %"add.23", 18446744069414584320
  %".215" = lshr i64 %".214", 32
  %"trunc32.6" = trunc i64 %".215" to i32
  %"trunc32.7" = trunc i64 %"add.23" to i32
  store i32 %"trunc32.7", ptr %"R18"
  store i32 %"trunc32.6", ptr %"R19"
  ; LDG.E.SYS R16, [R16]
  %".219" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".219" to i64
  %".220" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".220" to i64
  %"shl.2" = shl i64 %"zext.15", 32
  %"or.2" = or i64 %"shl.2", %"zext.14"
  %".221" = inttoptr i64 %"or.2" to ptr
  %".222" = ptrtoint ptr %".221" to i64
  %".223" = add i64 %".222", 0
  %"for_LDG.3" = inttoptr i64 %".223" to ptr
  %".224" = load float, ptr %"for_LDG.3"
  %".225" = bitcast ptr %"R16" to ptr
  store float %".224", ptr %".225"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".228" = load i32, ptr %"R31"
  %".229" = load i32, ptr %"R18"
  %"zext.16" = zext i32 %".228" to i64
  %"zext.17" = zext i32 4 to i64
  %"mul.16" = mul i64 %"zext.16", %"zext.17"
  %"zext.18" = zext i32 %".229" to i64
  %"add.24" = add i64 %"mul.16", %"zext.18"
  %".230" = and i64 %"add.24", 18446744069414584320
  %".231" = lshr i64 %".230", 32
  %"trunc32.8" = trunc i64 %".231" to i32
  %"trunc32.9" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.9", ptr %"R20"
  %"R21" = alloca i32, i32 1
  store i32 %"trunc32.8", ptr %"R21"
  ; LDG.E.SYS R22, [R6+0x4]
  %".235" = load i32, ptr %"R6"
  %"zext.19" = zext i32 %".235" to i64
  %".236" = load i32, ptr %"R7"
  %"zext.20" = zext i32 %".236" to i64
  %"shl.3" = shl i64 %"zext.20", 32
  %"or.3" = or i64 %"shl.3", %"zext.19"
  %".237" = inttoptr i64 %"or.3" to ptr
  %".238" = ptrtoint ptr %".237" to i64
  %".239" = add i64 %".238", 4
  %"for_LDG.4" = inttoptr i64 %".239" to ptr
  %".240" = load float, ptr %"for_LDG.4"
  %".241" = bitcast ptr %"R22" to ptr
  store float %".240", ptr %".241"
  ; LDG.E.SYS R18, [R18]
  %".244" = load i32, ptr %"R18"
  %"zext.21" = zext i32 %".244" to i64
  %".245" = load i32, ptr %"R19"
  %"zext.22" = zext i32 %".245" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".246" = inttoptr i64 %"or.4" to ptr
  %".247" = ptrtoint ptr %".246" to i64
  %".248" = add i64 %".247", 0
  %"for_LDG.5" = inttoptr i64 %".248" to ptr
  %".249" = load float, ptr %"for_LDG.5"
  %".250" = bitcast ptr %"R18" to ptr
  store float %".249", ptr %".250"
  ; LDG.E.SYS R25, [R6+0x8]
  %".253" = load i32, ptr %"R6"
  %"zext.23" = zext i32 %".253" to i64
  %".254" = load i32, ptr %"R7"
  %"zext.24" = zext i32 %".254" to i64
  %"shl.5" = shl i64 %"zext.24", 32
  %"or.5" = or i64 %"shl.5", %"zext.23"
  %".255" = inttoptr i64 %"or.5" to ptr
  %".256" = ptrtoint ptr %".255" to i64
  %".257" = add i64 %".256", 8
  %"for_LDG.6" = inttoptr i64 %".257" to ptr
  %".258" = load float, ptr %"for_LDG.6"
  %".259" = bitcast ptr %"R25" to ptr
  store float %".258", ptr %".259"
  ; LDG.E.SYS R20, [R20]
  %".262" = load i32, ptr %"R20"
  %"zext.25" = zext i32 %".262" to i64
  %".263" = load i32, ptr %"R21"
  %"zext.26" = zext i32 %".263" to i64
  %"shl.6" = shl i64 %"zext.26", 32
  %"or.6" = or i64 %"shl.6", %"zext.25"
  %".264" = inttoptr i64 %"or.6" to ptr
  %".265" = ptrtoint ptr %".264" to i64
  %".266" = add i64 %".265", 0
  %"for_LDG.7" = inttoptr i64 %".266" to ptr
  %".267" = load float, ptr %"for_LDG.7"
  %".268" = bitcast ptr %"R20" to ptr
  store float %".267", ptr %".268"
  ; LDG.E.SYS R27, [R6+0xc]
  %".271" = load i32, ptr %"R6"
  %"zext.27" = zext i32 %".271" to i64
  %".272" = load i32, ptr %"R7"
  %"zext.28" = zext i32 %".272" to i64
  %"shl.7" = shl i64 %"zext.28", 32
  %"or.7" = or i64 %"shl.7", %"zext.27"
  %".273" = inttoptr i64 %"or.7" to ptr
  %".274" = ptrtoint ptr %".273" to i64
  %".275" = add i64 %".274", 12
  %"for_LDG.8" = inttoptr i64 %".275" to ptr
  %".276" = load float, ptr %"for_LDG.8"
  %".277" = bitcast ptr %"R27" to ptr
  store float %".276", ptr %".277"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".280" = load i32, ptr %"UR4"
  %"add.25" = add i32 %".280", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"UR4"
  ; LEA R13, R31, R13, 0x2
  %".283" = load i32, ptr %"R31"
  %".284" = load i32, ptr %"R13"
  %"shl.8" = shl i32 %".283", 2
  %"add.27" = add i32 %"shl.8", %".284"
  store i32 %"add.27", ptr %"R13"
  ; FFMA R23, R23, R14, R12
  %".287" = load float, ptr %"R23"
  %".288" = load float, ptr %"R14"
  %".289" = load float, ptr %"R12"
  %"fmul" = fmul float %".287", %".288"
  %"fadd" = fadd float %"fmul", %".289"
  %".290" = bitcast ptr %"R23" to ptr
  store float %"fadd", ptr %".290"
  ; IADD3 R12, R26, UR4, RZ
  %".293" = load i32, ptr %"R26"
  %".294" = load i32, ptr %"UR4"
  %"add.28" = add i32 %".293", %".294"
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", ptr %"R12"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".297" = load i32, ptr %"R12"
  %".298" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".297", 0
  %".299" = and i1 %"cmp.8", %".298"
  store i1 %".299", ptr %"P2"
  ; FFMA R22, R22, R16, R23
  %".302" = load float, ptr %"R22"
  %".303" = load float, ptr %"R16"
  %".304" = load float, ptr %"R23"
  %"fmul.1" = fmul float %".302", %".303"
  %"fadd.1" = fadd float %"fmul.1", %".304"
  %".305" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".305"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".308" = load i32, ptr %"R6"
  %"add.30" = add i32 %".308", 16
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R23"
  %"carry" = icmp ult i32 %"add.31", %".308"
  store i1 %"carry", ptr %"P4"
  ; FFMA R22, R25, R18, R22
  %".312" = load float, ptr %"R25"
  %".313" = load float, ptr %"R18"
  %".314" = load float, ptr %"R22"
  %"fmul.2" = fmul float %".312", %".313"
  %"fadd.2" = fadd float %"fmul.2", %".314"
  %".315" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".315"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".318" = load i32, ptr %"R7"
  %".319" = load i1, ptr %"P4"
  %".320" = sub i1 0, %".319"
  %".321" = zext i1 %".320" to i32
  %"add.32" = add i32 0, %".318"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".321"
  store i32 %"add.34", ptr %"R7"
  ; FFMA R12, R27, R20, R22
  %".324" = load float, ptr %"R27"
  %".325" = load float, ptr %"R20"
  %".326" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".324", %".325"
  %"fadd.3" = fadd float %"fmul.3", %".326"
  %".327" = bitcast ptr %"R12" to ptr
  store float %"fadd.3", ptr %".327"
  ; @P2 BRA `(.L_x_17)
  %".330" = load i1, ptr %"P2"
  %".331" = icmp ne i1 %".330", 1
  br i1 %".331", label %".L_x_17", label %".L_x_16"
.L_x_16:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".334" = load i32, ptr %"R2"
  %".335" = load i32, ptr %"R8"
  %"mul.17" = mul i32 %".334", 1
  %"add.35" = add i32 %"mul.17", %".335"
  store i32 %"add.35", ptr %"R14"
  ; @!P3 BRA `(.L_x_18)
  %".338" = load i1, ptr %"P3"
  %".339" = icmp eq i1 %".338", 1
  br i1 %".339", label %".L_x_18", label %".L_x_16_split_0x0460"
.L_x_16_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".342" = load i32, ptr %"R11"
  %".343" = load i32, ptr %"UR4"
  %"add.36" = add i32 %".342", %".343"
  %"add.37" = add i32 %"add.36", 0
  store i32 %"add.37", ptr %"R15"
  ; IADD3 R16, R29, UR4, RZ
  %".346" = load i32, ptr %"R29"
  %".347" = load i32, ptr %"UR4"
  %"add.38" = add i32 %".346", %".347"
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R16"
  ; MOV R19, 0x4
  store i32 4, ptr %"R19"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".352" = load i32, ptr %"R15"
  %".353" = load i32, ptr %"R14"
  %"mul.18" = mul i32 %".352", %"Arg_3"
  %"add.40" = add i32 %"mul.18", %".353"
  store i32 %"add.40", ptr %"R6"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".356" = load i32, ptr %"R16"
  %".357" = load i32, ptr %"R19"
  %"zext.29" = zext i32 %".356" to i64
  %"zext.30" = zext i32 %".357" to i64
  %"mul.19" = mul i64 %"zext.29", %"zext.30"
  %".358" = ptrtoint ptr %"Arg_1" to i64
  %"add.41" = add i64 %"mul.19", %".358"
  %".359" = and i64 %"add.41", 18446744069414584320
  %".360" = lshr i64 %".359", 32
  %"trunc32.10" = trunc i64 %".360" to i32
  %"trunc32.11" = trunc i64 %"add.41" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".364" = load i32, ptr %"R6"
  %".365" = load i32, ptr %"R19"
  %"zext.31" = zext i32 %".364" to i64
  %"zext.32" = zext i32 %".365" to i64
  %"mul.20" = mul i64 %"zext.31", %"zext.32"
  %".366" = ptrtoint ptr %"Arg_0" to i64
  %"add.42" = add i64 %"mul.20", %".366"
  %".367" = and i64 %"add.42", 18446744069414584320
  %".368" = lshr i64 %".367", 32
  %"trunc32.12" = trunc i64 %".368" to i32
  %"trunc32.13" = trunc i64 %"add.42" to i32
  store i32 %"trunc32.13", ptr %"R6"
  store i32 %"trunc32.12", ptr %"R7"
  ; LDG.E.SYS R13, [R16]
  %".372" = load i32, ptr %"R16"
  %"zext.33" = zext i32 %".372" to i64
  %".373" = load i32, ptr %"R17"
  %"zext.34" = zext i32 %".373" to i64
  %"shl.9" = shl i64 %"zext.34", 32
  %"or.8" = or i64 %"shl.9", %"zext.33"
  %".374" = inttoptr i64 %"or.8" to ptr
  %".375" = ptrtoint ptr %".374" to i64
  %".376" = add i64 %".375", 0
  %"for_LDG.9" = inttoptr i64 %".376" to ptr
  %".377" = load float, ptr %"for_LDG.9"
  %".378" = bitcast ptr %"R13" to ptr
  store float %".377", ptr %".378"
  ; LDG.E.SYS R6, [R6]
  %".381" = load i32, ptr %"R6"
  %"zext.35" = zext i32 %".381" to i64
  %".382" = load i32, ptr %"R7"
  %"zext.36" = zext i32 %".382" to i64
  %"shl.10" = shl i64 %"zext.36", 32
  %"or.9" = or i64 %"shl.10", %"zext.35"
  %".383" = inttoptr i64 %"or.9" to ptr
  %".384" = ptrtoint ptr %".383" to i64
  %".385" = add i64 %".384", 0
  %"for_LDG.10" = inttoptr i64 %".385" to ptr
  %".386" = load float, ptr %"for_LDG.10"
  %".387" = bitcast ptr %"R6" to ptr
  store float %".386", ptr %".387"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".390" = load i32, ptr %"R4"
  %".391" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".390", 1
  %".392" = and i1 %"cmp.9", %".391"
  store i1 %".392", ptr %"P2"
  ; FFMA R12, R13, R6, R12
  %".395" = load float, ptr %"R13"
  %".396" = load float, ptr %"R6"
  %".397" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".395", %".396"
  %"fadd.4" = fadd float %"fmul.4", %".397"
  %".398" = bitcast ptr %"R12" to ptr
  store float %"fadd.4", ptr %".398"
  ; @!P2 BRA `(.L_x_18)
  %".401" = load i1, ptr %"P2"
  %".402" = icmp eq i1 %".401", 1
  br i1 %".402", label %".L_x_18", label %".L_x_16_split_0x0510"
.L_x_16_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".405" = load i32, ptr %"R4"
  %".406" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".405", 2
  %".407" = and i1 %"cmp.10", %".406"
  store i1 %".407", ptr %"P2"
  ; LDG.E.SYS R13, [R16+0x4]
  %".410" = load i32, ptr %"R16"
  %"zext.37" = zext i32 %".410" to i64
  %".411" = load i32, ptr %"R17"
  %"zext.38" = zext i32 %".411" to i64
  %"shl.11" = shl i64 %"zext.38", 32
  %"or.10" = or i64 %"shl.11", %"zext.37"
  %".412" = inttoptr i64 %"or.10" to ptr
  %".413" = ptrtoint ptr %".412" to i64
  %".414" = add i64 %".413", 4
  %"for_LDG.11" = inttoptr i64 %".414" to ptr
  %".415" = load float, ptr %"for_LDG.11"
  %".416" = bitcast ptr %"R13" to ptr
  store float %".415", ptr %".416"
  ; IADD3 R6, R15, 0x1, RZ
  %".419" = load i32, ptr %"R15"
  %"add.43" = add i32 %".419", 1
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", ptr %"R6"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".422" = load i32, ptr %"R6"
  %".423" = load i32, ptr %"R14"
  %"mul.21" = mul i32 %".422", %"Arg_3"
  %"add.45" = add i32 %"mul.21", %".423"
  store i32 %"add.45", ptr %"R6"
  ; @P2 IADD3 R7, R15, 0x2, RZ
  %".426" = load i1, ptr %"P2"
  %".427" = icmp ne i1 %".426", 1
  br i1 %".427", label %".L_x_16_split_0x0510_conditionalExpr_0x0550", label %".L_x_16_split_0x0560"
.L_x_16_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".430" = load i32, ptr %"R15"
  %"add.46" = add i32 %".430", 2
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R7"
  ; BRA `(.L_x_16_split_0x0560)
  br label %".L_x_16_split_0x0560"
.L_x_16_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14
  %".435" = load i1, ptr %"P2"
  %".436" = icmp ne i1 %".435", 1
  br i1 %".436", label %".L_x_16_split_0x0560_conditionalExpr_0x0560", label %".L_x_16_split_0x0570"
.L_x_16_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".439" = load i32, ptr %"R7"
  %".440" = load i32, ptr %"R14"
  %"mul.22" = mul i32 %".439", %"Arg_3"
  %"add.48" = add i32 %"mul.22", %".440"
  store i32 %"add.48", ptr %"R14"
  ; BRA `(.L_x_16_split_0x0570)
  br label %".L_x_16_split_0x0570"
.L_x_16_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".445" = load i32, ptr %"R6"
  %".446" = load i32, ptr %"R19"
  %"zext.39" = zext i32 %".445" to i64
  %"zext.40" = zext i32 %".446" to i64
  %"mul.23" = mul i64 %"zext.39", %"zext.40"
  %".447" = ptrtoint ptr %"Arg_0" to i64
  %"add.49" = add i64 %"mul.23", %".447"
  %".448" = and i64 %"add.49", 18446744069414584320
  %".449" = lshr i64 %".448", 32
  %"trunc32.14" = trunc i64 %".449" to i32
  %"trunc32.15" = trunc i64 %"add.49" to i32
  store i32 %"trunc32.15", ptr %"R6"
  store i32 %"trunc32.14", ptr %"R7"
  ; @P2 IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".453" = load i1, ptr %"P2"
  %".454" = icmp ne i1 %".453", 1
  br i1 %".454", label %".L_x_16_split_0x0570_conditionalExpr_0x0580", label %".L_x_16_split_0x0590"
.L_x_16_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".457" = load i32, ptr %"R14"
  %".458" = load i32, ptr %"R19"
  %"zext.41" = zext i32 %".457" to i64
  %"zext.42" = zext i32 %".458" to i64
  %"mul.24" = mul i64 %"zext.41", %"zext.42"
  %".459" = ptrtoint ptr %"Arg_0" to i64
  %"add.50" = add i64 %"mul.24", %".459"
  %".460" = and i64 %"add.50", 18446744069414584320
  %".461" = lshr i64 %".460", 32
  %"trunc32.16" = trunc i64 %".461" to i32
  %"trunc32.17" = trunc i64 %"add.50" to i32
  store i32 %"trunc32.17", ptr %"R14"
  store i32 %"trunc32.16", ptr %"R15"
  ; BRA `(.L_x_16_split_0x0590)
  br label %".L_x_16_split_0x0590"
.L_x_16_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8]
  %".467" = load i1, ptr %"P2"
  %".468" = icmp ne i1 %".467", 1
  br i1 %".468", label %".L_x_16_split_0x0590_conditionalExpr_0x0590", label %".L_x_16_split_0x05a0"
.L_x_16_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".471" = load i32, ptr %"R16"
  %"zext.43" = zext i32 %".471" to i64
  %".472" = load i32, ptr %"R17"
  %"zext.44" = zext i32 %".472" to i64
  %"shl.12" = shl i64 %"zext.44", 32
  %"or.11" = or i64 %"shl.12", %"zext.43"
  %".473" = inttoptr i64 %"or.11" to ptr
  %".474" = ptrtoint ptr %".473" to i64
  %".475" = add i64 %".474", 8
  %"for_LDG.12" = inttoptr i64 %".475" to ptr
  %".476" = load float, ptr %"for_LDG.12"
  %".477" = bitcast ptr %"R19" to ptr
  store float %".476", ptr %".477"
  ; BRA `(.L_x_16_split_0x05a0)
  br label %".L_x_16_split_0x05a0"
.L_x_16_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".482" = load i32, ptr %"R6"
  %"zext.45" = zext i32 %".482" to i64
  %".483" = load i32, ptr %"R7"
  %"zext.46" = zext i32 %".483" to i64
  %"shl.13" = shl i64 %"zext.46", 32
  %"or.12" = or i64 %"shl.13", %"zext.45"
  %".484" = inttoptr i64 %"or.12" to ptr
  %".485" = ptrtoint ptr %".484" to i64
  %".486" = add i64 %".485", 0
  %"for_LDG.13" = inttoptr i64 %".486" to ptr
  %".487" = load float, ptr %"for_LDG.13"
  %".488" = bitcast ptr %"R6" to ptr
  store float %".487", ptr %".488"
  ; @P2 LDG.E.SYS R14, [R14]
  %".491" = load i1, ptr %"P2"
  %".492" = icmp ne i1 %".491", 1
  br i1 %".492", label %".L_x_16_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".495" = load i32, ptr %"R14"
  %"zext.47" = zext i32 %".495" to i64
  %".496" = load i32, ptr %"R15"
  %"zext.48" = zext i32 %".496" to i64
  %"shl.14" = shl i64 %"zext.48", 32
  %"or.13" = or i64 %"shl.14", %"zext.47"
  %".497" = inttoptr i64 %"or.13" to ptr
  %".498" = ptrtoint ptr %".497" to i64
  %".499" = add i64 %".498", 0
  %"for_LDG.14" = inttoptr i64 %".499" to ptr
  %".500" = load float, ptr %"for_LDG.14"
  %".501" = bitcast ptr %"R14" to ptr
  store float %".500", ptr %".501"
  ; BRA `(.L_x_16_split_0x05c0)
  br label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".506" = load float, ptr %"R13"
  %".507" = load float, ptr %"R6"
  %".508" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".506", %".507"
  %"fadd.5" = fadd float %"fmul.5", %".508"
  %".509" = bitcast ptr %"R12" to ptr
  store float %"fadd.5", ptr %".509"
  ; @P2 FFMA R12, R19, R14, R12
  %".512" = load i1, ptr %"P2"
  %".513" = icmp ne i1 %".512", 1
  br i1 %".513", label %".L_x_16_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_18"
.L_x_16_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".516" = load float, ptr %"R19"
  %".517" = load float, ptr %"R14"
  %".518" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".516", %".517"
  %"fadd.6" = fadd float %"fmul.6", %".518"
  %".519" = bitcast ptr %"R12" to ptr
  store float %"fadd.6", ptr %".519"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_18:
  ; IADD3 R8, R8, 0x1, RZ
  %".524" = load i32, ptr %"R8"
  %"add.51" = add i32 %".524", 1
  %"add.52" = add i32 %"add.51", 0
  store i32 %"add.52", ptr %"R8"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".527" = load i32, ptr %"R8"
  %".528" = load i1, ptr %"PT"
  %"cmp.11" = icmp sge i32 %".527", %"Arg_4"
  %".529" = and i1 %"cmp.11", %".528"
  store i1 %".529", ptr %"P2"
  ; @!P2 BRA `(.L_x_19)
  %".532" = load i1, ptr %"P2"
  %".533" = icmp eq i1 %".532", 1
  br i1 %".533", label %".L_x_19", label %".L_x_18_split_0x0610"
.L_x_18_split_0x0610:
  ; @!P1 BRA `(.L_x_20)
  %".536" = load i1, ptr %"P1"
  %".537" = icmp eq i1 %".536", 1
  br i1 %".537", label %".L_x_20", label %".L_x_15"
.L_x_15:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".540" = load i32, ptr %"UR5"
  %"add.53" = add i32 %".540", 1
  %"add.54" = add i32 %"add.53", 0
  store i32 %"add.54", ptr %"UR4"
  ; IMAD R3, R0, UR4, R3
  %".543" = load i32, ptr %"R0"
  %".544" = load i32, ptr %"UR4"
  %".545" = load i32, ptr %"R3"
  %"mul.25" = mul i32 %".543", %".544"
  %"add.55" = add i32 %"mul.25", %".545"
  store i32 %"add.55", ptr %"R3"
  ; MOV R0, 0x4
  store i32 4, ptr %"R0"
  ; IMAD R3, R3, UR4, R2
  %".550" = load i32, ptr %"R3"
  %".551" = load i32, ptr %"UR4"
  %".552" = load i32, ptr %"R2"
  %"mul.26" = mul i32 %".550", %".551"
  %"add.56" = add i32 %"mul.26", %".552"
  store i32 %"add.56", ptr %"R3"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".555" = load i32, ptr %"R3"
  %".556" = load i32, ptr %"R0"
  %"zext.49" = zext i32 %".555" to i64
  %"zext.50" = zext i32 %".556" to i64
  %"mul.27" = mul i64 %"zext.49", %"zext.50"
  %".557" = ptrtoint ptr %"Arg_2" to i64
  %"add.57" = add i64 %"mul.27", %".557"
  %".558" = and i64 %"add.57", 18446744069414584320
  %".559" = lshr i64 %".558", 32
  %"trunc32.18" = trunc i64 %".559" to i32
  %"trunc32.19" = trunc i64 %"add.57" to i32
  store i32 %"trunc32.19", ptr %"R2"
  store i32 %"trunc32.18", ptr %"R3"
  ; STG.E.SYS [R2], R12
  %".563" = load i32, ptr %"R12"
  %".564" = load i32, ptr %"R2"
  %"zext.51" = zext i32 %".564" to i64
  %".565" = load i32, ptr %"R3"
  %"zext.52" = zext i32 %".565" to i64
  %"shl.15" = shl i64 %"zext.52", 32
  %"or.14" = or i64 %"shl.15", %"zext.51"
  %".566" = inttoptr i64 %"or.14" to ptr
  %".567" = ptrtoint ptr %".566" to i64
  %".568" = add i64 %".567", 0
  %"for_STG" = inttoptr i64 %".568" to ptr
  store i32 %".563", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_21:
  ; BRA `(.L_x_21)
  br label %".L_x_21"
ExitFunction:
  ret void
}

