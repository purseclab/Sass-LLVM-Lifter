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

define void @"_Z8fc_layerPfS_S_S_ii"(i32 %"Arg_0", i32 %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6", i32 %"Arg_7")
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
  store i32 %"Arg_1", ptr %"R1"
  ; S2R R0, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R0"
  ; S2R R3, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R3"
  ; IMAD R0, R0, c[0x0][0x0], R3
  %".18" = load i32, ptr %"R0"
  %".19" = load i32, ptr %"R3"
  %"mul" = mul i32 %".18", %"Arg_0"
  %"add" = add i32 %"mul", %".19"
  store i32 %"add", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, c[0x0][0x184], PT
  %".22" = load i32, ptr %"R0"
  %".23" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".22", %"Arg_7"
  %".24" = and i1 %"cmp", %".23"
  store i1 %".24", ptr %"P0"
  ; @P0 EXIT
  %".27" = load i1, ptr %"P0"
  %".28" = icmp ne i1 %".27", 1
  br i1 %".28", label %".text._Z8fc_layerPfS_S_S_ii_conditionalExpr_0x0050", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0060"
.text._Z8fc_layerPfS_S_S_ii_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z8fc_layerPfS_S_S_ii_split_0x0060:
  ; MOV R4, c[0x0][0x180]
  store i32 %"Arg_6", ptr %"R4"
  ; IMAD.MOV.U32 R7, RZ, RZ, RZ
  %"mul.1" = mul i32 0, 0
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", ptr %"R7"
  ; ISETP.GE.AND P0, PT, R4, 0x1, PT
  %".37" = load i32, ptr %"R4"
  %".38" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".37", 1
  %".39" = and i1 %"cmp.1", %".38"
  store i1 %".39", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".42" = load i1, ptr %"P0"
  %".43" = icmp eq i1 %".42", 1
  br i1 %".43", label %".L_x_0", label %".text._Z8fc_layerPfS_S_S_ii_split_0x00a0"
.text._Z8fc_layerPfS_S_S_ii_split_0x00a0:
  ; IADD3 R2, R4.reuse, -0x1, RZ
  %".46" = load i32, ptr %"R4"
  %"add.2" = add i32 %".46", -1
  %"add.3" = add i32 %"add.2", 0
  store i32 %"add.3", ptr %"R2"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".49" = load i32, ptr %"R4"
  %".50" = and i32 %".49", 3
  store i32 %".50", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".53" = load i32, ptr %"R2"
  %".54" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".53", 3
  %".55" = and i1 %"cmp.2", %".54"
  store i1 %".55", ptr %"P0"
  ; MOV R7, RZ
  %".58" = load float, ptr %"RZ"
  %".59" = bitcast ptr %"R7" to ptr
  store float %".58", ptr %".59"
  ; MOV R5, RZ
  %".62" = load i32, ptr %"RZ"
  store i32 %".62", ptr %"R5"
  ; @!P0 BRA `(.L_x_1)
  %".65" = load i1, ptr %"P0"
  %".66" = icmp eq i1 %".65", 1
  br i1 %".66", label %".L_x_1", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
.text._Z8fc_layerPfS_S_S_ii_split_0x0100:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".69" = load i32, ptr %"R4"
  %".70" = sub i32 0, %".69"
  %"add.4" = add i32 %".70", %"Arg_6"
  %"add.5" = add i32 %"add.4", 0
  store i32 %"add.5", ptr %"R6"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".73" = load i32, ptr %"R0"
  %"mul.2" = mul i32 %".73", %"Arg_6"
  %"add.6" = add i32 %"mul.2", 0
  store i32 %"add.6", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x160]
  store i32 %"Arg_2", ptr %"UR4"
  ; IMAD.MOV.U32 R3, RZ, RZ, 0x4
  %"mul.3" = mul i32 0, 0
  %"add.7" = add i32 %"mul.3", 4
  store i32 %"add.7", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R6, RZ, PT
  %".80" = load i32, ptr %"R6"
  %".81" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".80", 0
  %".82" = and i1 %"cmp.3", %".81"
  store i1 %".82", ptr %"P0"
  ; MOV R7, RZ
  %".85" = load float, ptr %"RZ"
  %".86" = bitcast ptr %"R7" to ptr
  store float %".85", ptr %".86"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".89" = load i32, ptr %"R2"
  %".90" = load i32, ptr %"R3"
  %"mul.4" = mul i32 %".89", %".90"
  %"add.8" = add i32 %"mul.4", %"Arg_3"
  store i32 %"add.8", ptr %"R2"
  ; MOV R5, RZ
  %".93" = load i32, ptr %"RZ"
  store i32 %".93", ptr %"R5"
  ; @!P0 BRA `(.L_x_2)
  %".96" = load i1, ptr %"P0"
  %".97" = icmp eq i1 %".96", 1
  br i1 %".97", label %".L_x_2", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".100" = load i32, ptr %"R6"
  %".101" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".100", 12
  %".102" = and i1 %"cmp.4", %".101"
  store i1 %".102", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".105" = and i1 1, 1
  %".106" = or i1 %".105", 1
  ; @!P1 BRA `(.L_x_3)
  %".108" = load i1, ptr %"P1"
  %".109" = icmp eq i1 %".108", 1
  br i1 %".109", label %".L_x_3", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".112" = xor i1 1, 1
  %".113" = and i1 %".112", 1
  %".114" = and i1 %".113", 1
  br label %".L_x_4"
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".117" = load i32, ptr %"R2"
  %"zext" = zext i32 %".117" to i64
  %".118" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".118" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %".119" = inttoptr i64 %"or" to ptr
  %".120" = ptrtoint ptr %".119" to i64
  %".121" = add i64 %".120", 0
  %"for_LDG" = inttoptr i64 %".121" to ptr
  %".122" = load float, ptr %"for_LDG"
  %".123" = bitcast ptr %"R8" to ptr
  store float %".122", ptr %".123"
  ; LDG.E.SYS R9, [UR4]
  %".126" = load i32, ptr %"UR4"
  %"zext.2" = zext i32 %".126" to i64
  %".127" = load i32, ptr %"UR5"
  %"zext.3" = zext i32 %".127" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %".128" = inttoptr i64 %"or.1" to ptr
  %".129" = ptrtoint ptr %".128" to i64
  %".130" = add i64 %".129", 0
  %"for_LDG.1" = inttoptr i64 %".130" to ptr
  %".131" = load float, ptr %"for_LDG.1"
  %".132" = bitcast ptr %"R9" to ptr
  store float %".131", ptr %".132"
  ; LDG.E.SYS R11, [R2+0x4]
  %".135" = load i32, ptr %"R2"
  %"zext.4" = zext i32 %".135" to i64
  %".136" = load i32, ptr %"R3"
  %"zext.5" = zext i32 %".136" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %".137" = inttoptr i64 %"or.2" to ptr
  %".138" = ptrtoint ptr %".137" to i64
  %".139" = add i64 %".138", 4
  %"for_LDG.2" = inttoptr i64 %".139" to ptr
  %".140" = load float, ptr %"for_LDG.2"
  %".141" = bitcast ptr %"R11" to ptr
  store float %".140", ptr %".141"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".144" = load i32, ptr %"UR4"
  %"zext.6" = zext i32 %".144" to i64
  %".145" = load i32, ptr %"UR5"
  %"zext.7" = zext i32 %".145" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %".146" = inttoptr i64 %"or.3" to ptr
  %".147" = ptrtoint ptr %".146" to i64
  %".148" = add i64 %".147", 4
  %"for_LDG.3" = inttoptr i64 %".148" to ptr
  %".149" = load float, ptr %"for_LDG.3"
  %".150" = bitcast ptr %"R10" to ptr
  store float %".149", ptr %".150"
  ; LDG.E.SYS R13, [R2+0x8]
  %".153" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".153" to i64
  %".154" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".154" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %".155" = inttoptr i64 %"or.4" to ptr
  %".156" = ptrtoint ptr %".155" to i64
  %".157" = add i64 %".156", 8
  %"for_LDG.4" = inttoptr i64 %".157" to ptr
  %".158" = load float, ptr %"for_LDG.4"
  %".159" = bitcast ptr %"R13" to ptr
  store float %".158", ptr %".159"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".162" = load i32, ptr %"UR4"
  %"zext.10" = zext i32 %".162" to i64
  %".163" = load i32, ptr %"UR5"
  %"zext.11" = zext i32 %".163" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %".164" = inttoptr i64 %"or.5" to ptr
  %".165" = ptrtoint ptr %".164" to i64
  %".166" = add i64 %".165", 8
  %"for_LDG.5" = inttoptr i64 %".166" to ptr
  %".167" = load float, ptr %"for_LDG.5"
  %".168" = bitcast ptr %"R12" to ptr
  store float %".167", ptr %".168"
  ; LDG.E.SYS R15, [R2+0xc]
  %".171" = load i32, ptr %"R2"
  %"zext.12" = zext i32 %".171" to i64
  %".172" = load i32, ptr %"R3"
  %"zext.13" = zext i32 %".172" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %".173" = inttoptr i64 %"or.6" to ptr
  %".174" = ptrtoint ptr %".173" to i64
  %".175" = add i64 %".174", 12
  %"for_LDG.6" = inttoptr i64 %".175" to ptr
  %".176" = load float, ptr %"for_LDG.6"
  %".177" = bitcast ptr %"R15" to ptr
  store float %".176", ptr %".177"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".180" = load i32, ptr %"UR4"
  %"zext.14" = zext i32 %".180" to i64
  %".181" = load i32, ptr %"UR5"
  %"zext.15" = zext i32 %".181" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %".182" = inttoptr i64 %"or.7" to ptr
  %".183" = ptrtoint ptr %".182" to i64
  %".184" = add i64 %".183", 12
  %"for_LDG.7" = inttoptr i64 %".184" to ptr
  %".185" = load float, ptr %"for_LDG.7"
  %".186" = bitcast ptr %"R14" to ptr
  store float %".185", ptr %".186"
  ; LDG.E.SYS R17, [R2+0x10]
  %".189" = load i32, ptr %"R2"
  %"zext.16" = zext i32 %".189" to i64
  %".190" = load i32, ptr %"R3"
  %"zext.17" = zext i32 %".190" to i64
  %"shl.8" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.8", %"zext.16"
  %".191" = inttoptr i64 %"or.8" to ptr
  %".192" = ptrtoint ptr %".191" to i64
  %".193" = add i64 %".192", 16
  %"for_LDG.8" = inttoptr i64 %".193" to ptr
  %".194" = load float, ptr %"for_LDG.8"
  %".195" = bitcast ptr %"R17" to ptr
  store float %".194", ptr %".195"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".198" = load i32, ptr %"UR4"
  %"zext.18" = zext i32 %".198" to i64
  %".199" = load i32, ptr %"UR5"
  %"zext.19" = zext i32 %".199" to i64
  %"shl.9" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.9", %"zext.18"
  %".200" = inttoptr i64 %"or.9" to ptr
  %".201" = ptrtoint ptr %".200" to i64
  %".202" = add i64 %".201", 16
  %"for_LDG.9" = inttoptr i64 %".202" to ptr
  %".203" = load float, ptr %"for_LDG.9"
  %".204" = bitcast ptr %"R16" to ptr
  store float %".203", ptr %".204"
  ; LDG.E.SYS R19, [R2+0x14]
  %".207" = load i32, ptr %"R2"
  %"zext.20" = zext i32 %".207" to i64
  %".208" = load i32, ptr %"R3"
  %"zext.21" = zext i32 %".208" to i64
  %"shl.10" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.10", %"zext.20"
  %".209" = inttoptr i64 %"or.10" to ptr
  %".210" = ptrtoint ptr %".209" to i64
  %".211" = add i64 %".210", 20
  %"for_LDG.10" = inttoptr i64 %".211" to ptr
  %".212" = load float, ptr %"for_LDG.10"
  %".213" = bitcast ptr %"R19" to ptr
  store float %".212", ptr %".213"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".216" = load i32, ptr %"UR4"
  %"zext.22" = zext i32 %".216" to i64
  %".217" = load i32, ptr %"UR5"
  %"zext.23" = zext i32 %".217" to i64
  %"shl.11" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.11", %"zext.22"
  %".218" = inttoptr i64 %"or.11" to ptr
  %".219" = ptrtoint ptr %".218" to i64
  %".220" = add i64 %".219", 20
  %"for_LDG.11" = inttoptr i64 %".220" to ptr
  %".221" = load float, ptr %"for_LDG.11"
  %".222" = bitcast ptr %"R18" to ptr
  store float %".221", ptr %".222"
  ; LDG.E.SYS R21, [R2+0x18]
  %".225" = load i32, ptr %"R2"
  %"zext.24" = zext i32 %".225" to i64
  %".226" = load i32, ptr %"R3"
  %"zext.25" = zext i32 %".226" to i64
  %"shl.12" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.12", %"zext.24"
  %".227" = inttoptr i64 %"or.12" to ptr
  %".228" = ptrtoint ptr %".227" to i64
  %".229" = add i64 %".228", 24
  %"for_LDG.12" = inttoptr i64 %".229" to ptr
  %".230" = load float, ptr %"for_LDG.12"
  %".231" = bitcast ptr %"R21" to ptr
  store float %".230", ptr %".231"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".234" = load i32, ptr %"UR4"
  %"zext.26" = zext i32 %".234" to i64
  %".235" = load i32, ptr %"UR5"
  %"zext.27" = zext i32 %".235" to i64
  %"shl.13" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.13", %"zext.26"
  %".236" = inttoptr i64 %"or.13" to ptr
  %".237" = ptrtoint ptr %".236" to i64
  %".238" = add i64 %".237", 24
  %"for_LDG.13" = inttoptr i64 %".238" to ptr
  %".239" = load float, ptr %"for_LDG.13"
  %".240" = bitcast ptr %"R20" to ptr
  store float %".239", ptr %".240"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".243" = load i32, ptr %"R2"
  %"zext.28" = zext i32 %".243" to i64
  %".244" = load i32, ptr %"R3"
  %"zext.29" = zext i32 %".244" to i64
  %"shl.14" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.14", %"zext.28"
  %".245" = inttoptr i64 %"or.14" to ptr
  %".246" = ptrtoint ptr %".245" to i64
  %".247" = add i64 %".246", 28
  %"for_LDG.14" = inttoptr i64 %".247" to ptr
  %".248" = load float, ptr %"for_LDG.14"
  %".249" = bitcast ptr %"R23" to ptr
  store float %".248", ptr %".249"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".252" = load i32, ptr %"UR4"
  %"zext.30" = zext i32 %".252" to i64
  %".253" = load i32, ptr %"UR5"
  %"zext.31" = zext i32 %".253" to i64
  %"shl.15" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.15", %"zext.30"
  %".254" = inttoptr i64 %"or.15" to ptr
  %".255" = ptrtoint ptr %".254" to i64
  %".256" = add i64 %".255", 28
  %"for_LDG.15" = inttoptr i64 %".256" to ptr
  %".257" = load float, ptr %"for_LDG.15"
  %".258" = bitcast ptr %"R22" to ptr
  store float %".257", ptr %".258"
  ; LDG.E.SYS R25, [R2+0x20]
  %".261" = load i32, ptr %"R2"
  %"zext.32" = zext i32 %".261" to i64
  %".262" = load i32, ptr %"R3"
  %"zext.33" = zext i32 %".262" to i64
  %"shl.16" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.16", %"zext.32"
  %".263" = inttoptr i64 %"or.16" to ptr
  %".264" = ptrtoint ptr %".263" to i64
  %".265" = add i64 %".264", 32
  %"for_LDG.16" = inttoptr i64 %".265" to ptr
  %".266" = load float, ptr %"for_LDG.16"
  %".267" = bitcast ptr %"R25" to ptr
  store float %".266", ptr %".267"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".270" = load i32, ptr %"UR4"
  %"zext.34" = zext i32 %".270" to i64
  %".271" = load i32, ptr %"UR5"
  %"zext.35" = zext i32 %".271" to i64
  %"shl.17" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.17", %"zext.34"
  %".272" = inttoptr i64 %"or.17" to ptr
  %".273" = ptrtoint ptr %".272" to i64
  %".274" = add i64 %".273", 32
  %"for_LDG.17" = inttoptr i64 %".274" to ptr
  %".275" = load float, ptr %"for_LDG.17"
  %".276" = bitcast ptr %"R24" to ptr
  store float %".275", ptr %".276"
  ; LDG.E.SYS R27, [R2+0x24]
  %".279" = load i32, ptr %"R2"
  %"zext.36" = zext i32 %".279" to i64
  %".280" = load i32, ptr %"R3"
  %"zext.37" = zext i32 %".280" to i64
  %"shl.18" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.18", %"zext.36"
  %".281" = inttoptr i64 %"or.18" to ptr
  %".282" = ptrtoint ptr %".281" to i64
  %".283" = add i64 %".282", 36
  %"for_LDG.18" = inttoptr i64 %".283" to ptr
  %".284" = load float, ptr %"for_LDG.18"
  %".285" = bitcast ptr %"R27" to ptr
  store float %".284", ptr %".285"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".288" = load i32, ptr %"UR4"
  %"zext.38" = zext i32 %".288" to i64
  %".289" = load i32, ptr %"UR5"
  %"zext.39" = zext i32 %".289" to i64
  %"shl.19" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.19", %"zext.38"
  %".290" = inttoptr i64 %"or.19" to ptr
  %".291" = ptrtoint ptr %".290" to i64
  %".292" = add i64 %".291", 36
  %"for_LDG.19" = inttoptr i64 %".292" to ptr
  %".293" = load float, ptr %"for_LDG.19"
  %".294" = bitcast ptr %"R26" to ptr
  store float %".293", ptr %".294"
  ; LDG.E.SYS R29, [R2+0x28]
  %".297" = load i32, ptr %"R2"
  %"zext.40" = zext i32 %".297" to i64
  %".298" = load i32, ptr %"R3"
  %"zext.41" = zext i32 %".298" to i64
  %"shl.20" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.20", %"zext.40"
  %".299" = inttoptr i64 %"or.20" to ptr
  %".300" = ptrtoint ptr %".299" to i64
  %".301" = add i64 %".300", 40
  %"for_LDG.20" = inttoptr i64 %".301" to ptr
  %".302" = load float, ptr %"for_LDG.20"
  %".303" = bitcast ptr %"R29" to ptr
  store float %".302", ptr %".303"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".306" = load i32, ptr %"UR4"
  %"zext.42" = zext i32 %".306" to i64
  %".307" = load i32, ptr %"UR5"
  %"zext.43" = zext i32 %".307" to i64
  %"shl.21" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.21", %"zext.42"
  %".308" = inttoptr i64 %"or.21" to ptr
  %".309" = ptrtoint ptr %".308" to i64
  %".310" = add i64 %".309", 40
  %"for_LDG.21" = inttoptr i64 %".310" to ptr
  %".311" = load float, ptr %"for_LDG.21"
  %".312" = bitcast ptr %"R28" to ptr
  store float %".311", ptr %".312"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".315" = load i32, ptr %"R2"
  %"zext.44" = zext i32 %".315" to i64
  %".316" = load i32, ptr %"R3"
  %"zext.45" = zext i32 %".316" to i64
  %"shl.22" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.22", %"zext.44"
  %".317" = inttoptr i64 %"or.22" to ptr
  %".318" = ptrtoint ptr %".317" to i64
  %".319" = add i64 %".318", 44
  %"for_LDG.22" = inttoptr i64 %".319" to ptr
  %".320" = load float, ptr %"for_LDG.22"
  %".321" = bitcast ptr %"R31" to ptr
  store float %".320", ptr %".321"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".324" = load i32, ptr %"UR4"
  %"zext.46" = zext i32 %".324" to i64
  %".325" = load i32, ptr %"UR5"
  %"zext.47" = zext i32 %".325" to i64
  %"shl.23" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.23", %"zext.46"
  %".326" = inttoptr i64 %"or.23" to ptr
  %".327" = ptrtoint ptr %".326" to i64
  %".328" = add i64 %".327", 44
  %"for_LDG.23" = inttoptr i64 %".328" to ptr
  %".329" = load float, ptr %"for_LDG.23"
  %".330" = bitcast ptr %"R30" to ptr
  store float %".329", ptr %".330"
  ; LDG.E.SYS R33, [R2+0x30]
  %".333" = load i32, ptr %"R2"
  %"zext.48" = zext i32 %".333" to i64
  %".334" = load i32, ptr %"R3"
  %"zext.49" = zext i32 %".334" to i64
  %"shl.24" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.24", %"zext.48"
  %".335" = inttoptr i64 %"or.24" to ptr
  %".336" = ptrtoint ptr %".335" to i64
  %".337" = add i64 %".336", 48
  %"for_LDG.24" = inttoptr i64 %".337" to ptr
  %".338" = load float, ptr %"for_LDG.24"
  %".339" = bitcast ptr %"R33" to ptr
  store float %".338", ptr %".339"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".342" = load i32, ptr %"UR4"
  %"zext.50" = zext i32 %".342" to i64
  %".343" = load i32, ptr %"UR5"
  %"zext.51" = zext i32 %".343" to i64
  %"shl.25" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.25", %"zext.50"
  %".344" = inttoptr i64 %"or.25" to ptr
  %".345" = ptrtoint ptr %".344" to i64
  %".346" = add i64 %".345", 48
  %"for_LDG.25" = inttoptr i64 %".346" to ptr
  %".347" = load float, ptr %"for_LDG.25"
  %".348" = bitcast ptr %"R32" to ptr
  store float %".347", ptr %".348"
  ; LDG.E.SYS R35, [R2+0x34]
  %".351" = load i32, ptr %"R2"
  %"zext.52" = zext i32 %".351" to i64
  %".352" = load i32, ptr %"R3"
  %"zext.53" = zext i32 %".352" to i64
  %"shl.26" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.26", %"zext.52"
  %".353" = inttoptr i64 %"or.26" to ptr
  %".354" = ptrtoint ptr %".353" to i64
  %".355" = add i64 %".354", 52
  %"for_LDG.26" = inttoptr i64 %".355" to ptr
  %".356" = load float, ptr %"for_LDG.26"
  %".357" = bitcast ptr %"R35" to ptr
  store float %".356", ptr %".357"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".360" = load i32, ptr %"UR4"
  %"zext.54" = zext i32 %".360" to i64
  %".361" = load i32, ptr %"UR5"
  %"zext.55" = zext i32 %".361" to i64
  %"shl.27" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.27", %"zext.54"
  %".362" = inttoptr i64 %"or.27" to ptr
  %".363" = ptrtoint ptr %".362" to i64
  %".364" = add i64 %".363", 52
  %"for_LDG.27" = inttoptr i64 %".364" to ptr
  %".365" = load float, ptr %"for_LDG.27"
  %".366" = bitcast ptr %"R34" to ptr
  store float %".365", ptr %".366"
  ; LDG.E.SYS R37, [R2+0x38]
  %".369" = load i32, ptr %"R2"
  %"zext.56" = zext i32 %".369" to i64
  %".370" = load i32, ptr %"R3"
  %"zext.57" = zext i32 %".370" to i64
  %"shl.28" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.28", %"zext.56"
  %".371" = inttoptr i64 %"or.28" to ptr
  %".372" = ptrtoint ptr %".371" to i64
  %".373" = add i64 %".372", 56
  %"for_LDG.28" = inttoptr i64 %".373" to ptr
  %".374" = load float, ptr %"for_LDG.28"
  %".375" = bitcast ptr %"R37" to ptr
  store float %".374", ptr %".375"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".378" = load i32, ptr %"UR4"
  %"zext.58" = zext i32 %".378" to i64
  %".379" = load i32, ptr %"UR5"
  %"zext.59" = zext i32 %".379" to i64
  %"shl.29" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.29", %"zext.58"
  %".380" = inttoptr i64 %"or.29" to ptr
  %".381" = ptrtoint ptr %".380" to i64
  %".382" = add i64 %".381", 56
  %"for_LDG.29" = inttoptr i64 %".382" to ptr
  %".383" = load float, ptr %"for_LDG.29"
  %".384" = bitcast ptr %"R36" to ptr
  store float %".383", ptr %".384"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".387" = load i32, ptr %"R2"
  %"zext.60" = zext i32 %".387" to i64
  %".388" = load i32, ptr %"R3"
  %"zext.61" = zext i32 %".388" to i64
  %"shl.30" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.30", %"zext.60"
  %".389" = inttoptr i64 %"or.30" to ptr
  %".390" = ptrtoint ptr %".389" to i64
  %".391" = add i64 %".390", 60
  %"for_LDG.30" = inttoptr i64 %".391" to ptr
  %".392" = load float, ptr %"for_LDG.30"
  %".393" = bitcast ptr %"R39" to ptr
  store float %".392", ptr %".393"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".396" = load i32, ptr %"UR4"
  %"zext.62" = zext i32 %".396" to i64
  %".397" = load i32, ptr %"UR5"
  %"zext.63" = zext i32 %".397" to i64
  %"shl.31" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.31", %"zext.62"
  %".398" = inttoptr i64 %"or.31" to ptr
  %".399" = ptrtoint ptr %".398" to i64
  %".400" = add i64 %".399", 60
  %"for_LDG.31" = inttoptr i64 %".400" to ptr
  %".401" = load float, ptr %"for_LDG.31"
  %".402" = bitcast ptr %"R38" to ptr
  store float %".401", ptr %".402"
  ; IADD3 R6, R6, -0x10, RZ
  %".405" = load i32, ptr %"R6"
  %"add.9" = add i32 %".405", -16
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".408" = load i32, ptr %"UR4"
  %"add.11" = add i32 %".408", 64
  %"add.12" = add i32 %"add.11", 0
  store i32 %"add.12", ptr %"UR4"
  %"carry" = icmp ult i32 %"add.12", %".408"
  store i1 %"carry", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".412" = load i32, ptr %"R5"
  %"add.13" = add i32 %".412", 16
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".415" = load i32, ptr %"R6"
  %".416" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".415", 12
  %".417" = and i1 %"cmp.5", %".416"
  store i1 %".417", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".420" = load i32, ptr %"UR5"
  %".421" = load i1, ptr %"UP0"
  %".422" = sub i1 0, %".421"
  %".423" = zext i1 %".422" to i32
  %"add.15" = add i32 0, %".420"
  %"add.16" = add i32 %"add.15", 0
  %"add.17" = add i32 %"add.16", %".423"
  store i32 %"add.17", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".426" = load i32, ptr %"R2"
  %"add.18" = add i32 %".426", 64
  %"add.19" = add i32 %"add.18", 0
  store i32 %"add.19", ptr %"R2"
  %"carry.1" = icmp ult i32 %"add.19", %".426"
  store i1 %"carry.1", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".430" = load i32, ptr %"R3"
  %"mul.5" = mul i32 0, 0
  %"add.20" = add i32 %"mul.5", %".430"
  store i32 %"add.20", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".433" = load float, ptr %"R8"
  %".434" = load float, ptr %"R9"
  %".435" = load float, ptr %"R7"
  %"fmul" = fmul float %".433", %".434"
  %"fadd" = fadd float %"fmul", %".435"
  %".436" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".436"
  ; FFMA R8, R11, R10, R8
  %".439" = load float, ptr %"R11"
  %".440" = load float, ptr %"R10"
  %".441" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".439", %".440"
  %"fadd.1" = fadd float %"fmul.1", %".441"
  %".442" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".442"
  ; FFMA R8, R13, R12, R8
  %".445" = load float, ptr %"R13"
  %".446" = load float, ptr %"R12"
  %".447" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".445", %".446"
  %"fadd.2" = fadd float %"fmul.2", %".447"
  %".448" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".448"
  ; FFMA R8, R15, R14, R8
  %".451" = load float, ptr %"R15"
  %".452" = load float, ptr %"R14"
  %".453" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".451", %".452"
  %"fadd.3" = fadd float %"fmul.3", %".453"
  %".454" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".454"
  ; FFMA R8, R17, R16, R8
  %".457" = load float, ptr %"R17"
  %".458" = load float, ptr %"R16"
  %".459" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".457", %".458"
  %"fadd.4" = fadd float %"fmul.4", %".459"
  %".460" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".460"
  ; FFMA R8, R19, R18, R8
  %".463" = load float, ptr %"R19"
  %".464" = load float, ptr %"R18"
  %".465" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".463", %".464"
  %"fadd.5" = fadd float %"fmul.5", %".465"
  %".466" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".466"
  ; FFMA R8, R21, R20, R8
  %".469" = load float, ptr %"R21"
  %".470" = load float, ptr %"R20"
  %".471" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".469", %".470"
  %"fadd.6" = fadd float %"fmul.6", %".471"
  %".472" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".472"
  ; FFMA R8, R23, R22, R8
  %".475" = load float, ptr %"R23"
  %".476" = load float, ptr %"R22"
  %".477" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".475", %".476"
  %"fadd.7" = fadd float %"fmul.7", %".477"
  %".478" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".478"
  ; FFMA R8, R25, R24, R8
  %".481" = load float, ptr %"R25"
  %".482" = load float, ptr %"R24"
  %".483" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".481", %".482"
  %"fadd.8" = fadd float %"fmul.8", %".483"
  %".484" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".484"
  ; FFMA R8, R27, R26, R8
  %".487" = load float, ptr %"R27"
  %".488" = load float, ptr %"R26"
  %".489" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".487", %".488"
  %"fadd.9" = fadd float %"fmul.9", %".489"
  %".490" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".490"
  ; FFMA R8, R29, R28, R8
  %".493" = load float, ptr %"R29"
  %".494" = load float, ptr %"R28"
  %".495" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".493", %".494"
  %"fadd.10" = fadd float %"fmul.10", %".495"
  %".496" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".496"
  ; FFMA R8, R31, R30, R8
  %".499" = load float, ptr %"R31"
  %".500" = load float, ptr %"R30"
  %".501" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".499", %".500"
  %"fadd.11" = fadd float %"fmul.11", %".501"
  %".502" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".502"
  ; FFMA R8, R33, R32, R8
  %".505" = load float, ptr %"R33"
  %".506" = load float, ptr %"R32"
  %".507" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".505", %".506"
  %"fadd.12" = fadd float %"fmul.12", %".507"
  %".508" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".508"
  ; FFMA R8, R35, R34, R8
  %".511" = load float, ptr %"R35"
  %".512" = load float, ptr %"R34"
  %".513" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".511", %".512"
  %"fadd.13" = fadd float %"fmul.13", %".513"
  %".514" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".514"
  ; FFMA R8, R37, R36, R8
  %".517" = load float, ptr %"R37"
  %".518" = load float, ptr %"R36"
  %".519" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".517", %".518"
  %"fadd.14" = fadd float %"fmul.14", %".519"
  %".520" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".520"
  ; FFMA R7, R39, R38, R8
  %".523" = load float, ptr %"R39"
  %".524" = load float, ptr %"R38"
  %".525" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".523", %".524"
  %"fadd.15" = fadd float %"fmul.15", %".525"
  %".526" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".526"
  ; @P1 BRA `(.L_x_4)
  %".529" = load i1, ptr %"P1"
  %".530" = icmp ne i1 %".529", 1
  br i1 %".530", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".533" = load i32, ptr %"R6"
  %".534" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".533", 4
  %".535" = and i1 %"cmp.6", %".534"
  store i1 %".535", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".538" = load i1, ptr %"P1"
  %".539" = icmp eq i1 %".538", 1
  br i1 %".539", label %".L_x_5", label %".L_x_3_split_0x0570"
.L_x_3_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".542" = load i32, ptr %"R2"
  %"zext.64" = zext i32 %".542" to i64
  %".543" = load i32, ptr %"R3"
  %"zext.65" = zext i32 %".543" to i64
  %"shl.32" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.32", %"zext.64"
  %".544" = inttoptr i64 %"or.32" to ptr
  %".545" = ptrtoint ptr %".544" to i64
  %".546" = add i64 %".545", 0
  %"for_LDG.32" = inttoptr i64 %".546" to ptr
  %".547" = load float, ptr %"for_LDG.32"
  %".548" = bitcast ptr %"R8" to ptr
  store float %".547", ptr %".548"
  ; LDG.E.SYS R9, [UR4]
  %".551" = load i32, ptr %"UR4"
  %"zext.66" = zext i32 %".551" to i64
  %".552" = load i32, ptr %"UR5"
  %"zext.67" = zext i32 %".552" to i64
  %"shl.33" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.33", %"zext.66"
  %".553" = inttoptr i64 %"or.33" to ptr
  %".554" = ptrtoint ptr %".553" to i64
  %".555" = add i64 %".554", 0
  %"for_LDG.33" = inttoptr i64 %".555" to ptr
  %".556" = load float, ptr %"for_LDG.33"
  %".557" = bitcast ptr %"R9" to ptr
  store float %".556", ptr %".557"
  ; LDG.E.SYS R11, [R2+0x4]
  %".560" = load i32, ptr %"R2"
  %"zext.68" = zext i32 %".560" to i64
  %".561" = load i32, ptr %"R3"
  %"zext.69" = zext i32 %".561" to i64
  %"shl.34" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.34", %"zext.68"
  %".562" = inttoptr i64 %"or.34" to ptr
  %".563" = ptrtoint ptr %".562" to i64
  %".564" = add i64 %".563", 4
  %"for_LDG.34" = inttoptr i64 %".564" to ptr
  %".565" = load float, ptr %"for_LDG.34"
  %".566" = bitcast ptr %"R11" to ptr
  store float %".565", ptr %".566"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".569" = load i32, ptr %"UR4"
  %"zext.70" = zext i32 %".569" to i64
  %".570" = load i32, ptr %"UR5"
  %"zext.71" = zext i32 %".570" to i64
  %"shl.35" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.35", %"zext.70"
  %".571" = inttoptr i64 %"or.35" to ptr
  %".572" = ptrtoint ptr %".571" to i64
  %".573" = add i64 %".572", 4
  %"for_LDG.35" = inttoptr i64 %".573" to ptr
  %".574" = load float, ptr %"for_LDG.35"
  %".575" = bitcast ptr %"R10" to ptr
  store float %".574", ptr %".575"
  ; LDG.E.SYS R13, [R2+0x8]
  %".578" = load i32, ptr %"R2"
  %"zext.72" = zext i32 %".578" to i64
  %".579" = load i32, ptr %"R3"
  %"zext.73" = zext i32 %".579" to i64
  %"shl.36" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.36", %"zext.72"
  %".580" = inttoptr i64 %"or.36" to ptr
  %".581" = ptrtoint ptr %".580" to i64
  %".582" = add i64 %".581", 8
  %"for_LDG.36" = inttoptr i64 %".582" to ptr
  %".583" = load float, ptr %"for_LDG.36"
  %".584" = bitcast ptr %"R13" to ptr
  store float %".583", ptr %".584"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".587" = load i32, ptr %"UR4"
  %"zext.74" = zext i32 %".587" to i64
  %".588" = load i32, ptr %"UR5"
  %"zext.75" = zext i32 %".588" to i64
  %"shl.37" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.37", %"zext.74"
  %".589" = inttoptr i64 %"or.37" to ptr
  %".590" = ptrtoint ptr %".589" to i64
  %".591" = add i64 %".590", 8
  %"for_LDG.37" = inttoptr i64 %".591" to ptr
  %".592" = load float, ptr %"for_LDG.37"
  %".593" = bitcast ptr %"R12" to ptr
  store float %".592", ptr %".593"
  ; LDG.E.SYS R15, [R2+0xc]
  %".596" = load i32, ptr %"R2"
  %"zext.76" = zext i32 %".596" to i64
  %".597" = load i32, ptr %"R3"
  %"zext.77" = zext i32 %".597" to i64
  %"shl.38" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.38", %"zext.76"
  %".598" = inttoptr i64 %"or.38" to ptr
  %".599" = ptrtoint ptr %".598" to i64
  %".600" = add i64 %".599", 12
  %"for_LDG.38" = inttoptr i64 %".600" to ptr
  %".601" = load float, ptr %"for_LDG.38"
  %".602" = bitcast ptr %"R15" to ptr
  store float %".601", ptr %".602"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".605" = load i32, ptr %"UR4"
  %"zext.78" = zext i32 %".605" to i64
  %".606" = load i32, ptr %"UR5"
  %"zext.79" = zext i32 %".606" to i64
  %"shl.39" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.39", %"zext.78"
  %".607" = inttoptr i64 %"or.39" to ptr
  %".608" = ptrtoint ptr %".607" to i64
  %".609" = add i64 %".608", 12
  %"for_LDG.39" = inttoptr i64 %".609" to ptr
  %".610" = load float, ptr %"for_LDG.39"
  %".611" = bitcast ptr %"R14" to ptr
  store float %".610", ptr %".611"
  ; LDG.E.SYS R17, [R2+0x10]
  %".614" = load i32, ptr %"R2"
  %"zext.80" = zext i32 %".614" to i64
  %".615" = load i32, ptr %"R3"
  %"zext.81" = zext i32 %".615" to i64
  %"shl.40" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.40", %"zext.80"
  %".616" = inttoptr i64 %"or.40" to ptr
  %".617" = ptrtoint ptr %".616" to i64
  %".618" = add i64 %".617", 16
  %"for_LDG.40" = inttoptr i64 %".618" to ptr
  %".619" = load float, ptr %"for_LDG.40"
  %".620" = bitcast ptr %"R17" to ptr
  store float %".619", ptr %".620"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".623" = load i32, ptr %"UR4"
  %"zext.82" = zext i32 %".623" to i64
  %".624" = load i32, ptr %"UR5"
  %"zext.83" = zext i32 %".624" to i64
  %"shl.41" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.41", %"zext.82"
  %".625" = inttoptr i64 %"or.41" to ptr
  %".626" = ptrtoint ptr %".625" to i64
  %".627" = add i64 %".626", 16
  %"for_LDG.41" = inttoptr i64 %".627" to ptr
  %".628" = load float, ptr %"for_LDG.41"
  %".629" = bitcast ptr %"R16" to ptr
  store float %".628", ptr %".629"
  ; LDG.E.SYS R19, [R2+0x14]
  %".632" = load i32, ptr %"R2"
  %"zext.84" = zext i32 %".632" to i64
  %".633" = load i32, ptr %"R3"
  %"zext.85" = zext i32 %".633" to i64
  %"shl.42" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.42", %"zext.84"
  %".634" = inttoptr i64 %"or.42" to ptr
  %".635" = ptrtoint ptr %".634" to i64
  %".636" = add i64 %".635", 20
  %"for_LDG.42" = inttoptr i64 %".636" to ptr
  %".637" = load float, ptr %"for_LDG.42"
  %".638" = bitcast ptr %"R19" to ptr
  store float %".637", ptr %".638"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".641" = load i32, ptr %"UR4"
  %"zext.86" = zext i32 %".641" to i64
  %".642" = load i32, ptr %"UR5"
  %"zext.87" = zext i32 %".642" to i64
  %"shl.43" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.43", %"zext.86"
  %".643" = inttoptr i64 %"or.43" to ptr
  %".644" = ptrtoint ptr %".643" to i64
  %".645" = add i64 %".644", 20
  %"for_LDG.43" = inttoptr i64 %".645" to ptr
  %".646" = load float, ptr %"for_LDG.43"
  %".647" = bitcast ptr %"R18" to ptr
  store float %".646", ptr %".647"
  ; LDG.E.SYS R21, [R2+0x18]
  %".650" = load i32, ptr %"R2"
  %"zext.88" = zext i32 %".650" to i64
  %".651" = load i32, ptr %"R3"
  %"zext.89" = zext i32 %".651" to i64
  %"shl.44" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.44", %"zext.88"
  %".652" = inttoptr i64 %"or.44" to ptr
  %".653" = ptrtoint ptr %".652" to i64
  %".654" = add i64 %".653", 24
  %"for_LDG.44" = inttoptr i64 %".654" to ptr
  %".655" = load float, ptr %"for_LDG.44"
  %".656" = bitcast ptr %"R21" to ptr
  store float %".655", ptr %".656"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".659" = load i32, ptr %"UR4"
  %"zext.90" = zext i32 %".659" to i64
  %".660" = load i32, ptr %"UR5"
  %"zext.91" = zext i32 %".660" to i64
  %"shl.45" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.45", %"zext.90"
  %".661" = inttoptr i64 %"or.45" to ptr
  %".662" = ptrtoint ptr %".661" to i64
  %".663" = add i64 %".662", 24
  %"for_LDG.45" = inttoptr i64 %".663" to ptr
  %".664" = load float, ptr %"for_LDG.45"
  %".665" = bitcast ptr %"R20" to ptr
  store float %".664", ptr %".665"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".668" = load i32, ptr %"R2"
  %"zext.92" = zext i32 %".668" to i64
  %".669" = load i32, ptr %"R3"
  %"zext.93" = zext i32 %".669" to i64
  %"shl.46" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.46", %"zext.92"
  %".670" = inttoptr i64 %"or.46" to ptr
  %".671" = ptrtoint ptr %".670" to i64
  %".672" = add i64 %".671", 28
  %"for_LDG.46" = inttoptr i64 %".672" to ptr
  %".673" = load float, ptr %"for_LDG.46"
  %".674" = bitcast ptr %"R23" to ptr
  store float %".673", ptr %".674"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".677" = load i32, ptr %"UR4"
  %"zext.94" = zext i32 %".677" to i64
  %".678" = load i32, ptr %"UR5"
  %"zext.95" = zext i32 %".678" to i64
  %"shl.47" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.47", %"zext.94"
  %".679" = inttoptr i64 %"or.47" to ptr
  %".680" = ptrtoint ptr %".679" to i64
  %".681" = add i64 %".680", 28
  %"for_LDG.47" = inttoptr i64 %".681" to ptr
  %".682" = load float, ptr %"for_LDG.47"
  %".683" = bitcast ptr %"R22" to ptr
  store float %".682", ptr %".683"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".686" = load i32, ptr %"UR4"
  %"add.21" = add i32 %".686", 32
  %"add.22" = add i32 %"add.21", 0
  store i32 %"add.22", ptr %"UR4"
  %"carry.2" = icmp ult i32 %"add.22", %".686"
  store i1 %"carry.2", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".690" = xor i1 1, 1
  %".691" = and i1 %".690", 1
  %".692" = and i1 %".691", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".694" = load i32, ptr %"R5"
  %"add.23" = add i32 %".694", 8
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".697" = load i32, ptr %"UR5"
  %".698" = load i1, ptr %"UP0"
  %".699" = sub i1 0, %".698"
  %".700" = zext i1 %".699" to i32
  %"add.25" = add i32 0, %".697"
  %"add.26" = add i32 %"add.25", 0
  %"add.27" = add i32 %"add.26", %".700"
  store i32 %"add.27", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".703" = load i32, ptr %"R2"
  %"add.28" = add i32 %".703", 32
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", ptr %"R2"
  %"carry.3" = icmp ult i32 %"add.29", %".703"
  store i1 %"carry.3", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".707" = load i32, ptr %"R6"
  %"add.30" = add i32 %".707", -8
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".710" = load i32, ptr %"R3"
  %".711" = load i1, ptr %"P1"
  %".712" = sub i1 0, %".711"
  %".713" = zext i1 %".712" to i32
  %"add.32" = add i32 0, %".710"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".713"
  store i32 %"add.34", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".716" = load float, ptr %"R8"
  %".717" = load float, ptr %"R9"
  %".718" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".716", %".717"
  %"fadd.16" = fadd float %"fmul.16", %".718"
  %".719" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".719"
  ; FFMA R8, R11, R10, R8
  %".722" = load float, ptr %"R11"
  %".723" = load float, ptr %"R10"
  %".724" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".722", %".723"
  %"fadd.17" = fadd float %"fmul.17", %".724"
  %".725" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".725"
  ; FFMA R8, R13, R12, R8
  %".728" = load float, ptr %"R13"
  %".729" = load float, ptr %"R12"
  %".730" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".728", %".729"
  %"fadd.18" = fadd float %"fmul.18", %".730"
  %".731" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".731"
  ; FFMA R8, R15, R14, R8
  %".734" = load float, ptr %"R15"
  %".735" = load float, ptr %"R14"
  %".736" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".734", %".735"
  %"fadd.19" = fadd float %"fmul.19", %".736"
  %".737" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".737"
  ; FFMA R8, R17, R16, R8
  %".740" = load float, ptr %"R17"
  %".741" = load float, ptr %"R16"
  %".742" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".740", %".741"
  %"fadd.20" = fadd float %"fmul.20", %".742"
  %".743" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".743"
  ; FFMA R8, R19, R18, R8
  %".746" = load float, ptr %"R19"
  %".747" = load float, ptr %"R18"
  %".748" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".746", %".747"
  %"fadd.21" = fadd float %"fmul.21", %".748"
  %".749" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".749"
  ; FFMA R8, R21, R20, R8
  %".752" = load float, ptr %"R21"
  %".753" = load float, ptr %"R20"
  %".754" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".752", %".753"
  %"fadd.22" = fadd float %"fmul.22", %".754"
  %".755" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".755"
  ; FFMA R7, R23, R22, R8
  %".758" = load float, ptr %"R23"
  %".759" = load float, ptr %"R22"
  %".760" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".758", %".759"
  %"fadd.23" = fadd float %"fmul.23", %".760"
  %".761" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".761"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".765" = load i32, ptr %"R6"
  %".766" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".765", 0
  %".767" = or i1 %"cmp.7", %".766"
  store i1 %".767", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".770" = load i1, ptr %"P0"
  %".771" = icmp eq i1 %".770", 1
  br i1 %".771", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".774" = load i32, ptr %"R2"
  %"zext.96" = zext i32 %".774" to i64
  %".775" = load i32, ptr %"R3"
  %"zext.97" = zext i32 %".775" to i64
  %"shl.48" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.48", %"zext.96"
  %".776" = inttoptr i64 %"or.48" to ptr
  %".777" = ptrtoint ptr %".776" to i64
  %".778" = add i64 %".777", 0
  %"for_LDG.48" = inttoptr i64 %".778" to ptr
  %".779" = load float, ptr %"for_LDG.48"
  %".780" = bitcast ptr %"R8" to ptr
  store float %".779", ptr %".780"
  ; LDG.E.SYS R9, [UR4]
  %".783" = load i32, ptr %"UR4"
  %"zext.98" = zext i32 %".783" to i64
  %".784" = load i32, ptr %"UR5"
  %"zext.99" = zext i32 %".784" to i64
  %"shl.49" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.49", %"zext.98"
  %".785" = inttoptr i64 %"or.49" to ptr
  %".786" = ptrtoint ptr %".785" to i64
  %".787" = add i64 %".786", 0
  %"for_LDG.49" = inttoptr i64 %".787" to ptr
  %".788" = load float, ptr %"for_LDG.49"
  %".789" = bitcast ptr %"R9" to ptr
  store float %".788", ptr %".789"
  ; LDG.E.SYS R11, [R2+0x4]
  %".792" = load i32, ptr %"R2"
  %"zext.100" = zext i32 %".792" to i64
  %".793" = load i32, ptr %"R3"
  %"zext.101" = zext i32 %".793" to i64
  %"shl.50" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.50", %"zext.100"
  %".794" = inttoptr i64 %"or.50" to ptr
  %".795" = ptrtoint ptr %".794" to i64
  %".796" = add i64 %".795", 4
  %"for_LDG.50" = inttoptr i64 %".796" to ptr
  %".797" = load float, ptr %"for_LDG.50"
  %".798" = bitcast ptr %"R11" to ptr
  store float %".797", ptr %".798"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".801" = load i32, ptr %"UR4"
  %"zext.102" = zext i32 %".801" to i64
  %".802" = load i32, ptr %"UR5"
  %"zext.103" = zext i32 %".802" to i64
  %"shl.51" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.51", %"zext.102"
  %".803" = inttoptr i64 %"or.51" to ptr
  %".804" = ptrtoint ptr %".803" to i64
  %".805" = add i64 %".804", 4
  %"for_LDG.51" = inttoptr i64 %".805" to ptr
  %".806" = load float, ptr %"for_LDG.51"
  %".807" = bitcast ptr %"R10" to ptr
  store float %".806", ptr %".807"
  ; LDG.E.SYS R13, [R2+0x8]
  %".810" = load i32, ptr %"R2"
  %"zext.104" = zext i32 %".810" to i64
  %".811" = load i32, ptr %"R3"
  %"zext.105" = zext i32 %".811" to i64
  %"shl.52" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.52", %"zext.104"
  %".812" = inttoptr i64 %"or.52" to ptr
  %".813" = ptrtoint ptr %".812" to i64
  %".814" = add i64 %".813", 8
  %"for_LDG.52" = inttoptr i64 %".814" to ptr
  %".815" = load float, ptr %"for_LDG.52"
  %".816" = bitcast ptr %"R13" to ptr
  store float %".815", ptr %".816"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".819" = load i32, ptr %"UR4"
  %"zext.106" = zext i32 %".819" to i64
  %".820" = load i32, ptr %"UR5"
  %"zext.107" = zext i32 %".820" to i64
  %"shl.53" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.53", %"zext.106"
  %".821" = inttoptr i64 %"or.53" to ptr
  %".822" = ptrtoint ptr %".821" to i64
  %".823" = add i64 %".822", 8
  %"for_LDG.53" = inttoptr i64 %".823" to ptr
  %".824" = load float, ptr %"for_LDG.53"
  %".825" = bitcast ptr %"R12" to ptr
  store float %".824", ptr %".825"
  ; LDG.E.SYS R15, [R2+0xc]
  %".828" = load i32, ptr %"R2"
  %"zext.108" = zext i32 %".828" to i64
  %".829" = load i32, ptr %"R3"
  %"zext.109" = zext i32 %".829" to i64
  %"shl.54" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.54", %"zext.108"
  %".830" = inttoptr i64 %"or.54" to ptr
  %".831" = ptrtoint ptr %".830" to i64
  %".832" = add i64 %".831", 12
  %"for_LDG.54" = inttoptr i64 %".832" to ptr
  %".833" = load float, ptr %"for_LDG.54"
  %".834" = bitcast ptr %"R15" to ptr
  store float %".833", ptr %".834"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".837" = load i32, ptr %"UR4"
  %"zext.110" = zext i32 %".837" to i64
  %".838" = load i32, ptr %"UR5"
  %"zext.111" = zext i32 %".838" to i64
  %"shl.55" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.55", %"zext.110"
  %".839" = inttoptr i64 %"or.55" to ptr
  %".840" = ptrtoint ptr %".839" to i64
  %".841" = add i64 %".840", 12
  %"for_LDG.55" = inttoptr i64 %".841" to ptr
  %".842" = load float, ptr %"for_LDG.55"
  %".843" = bitcast ptr %"R14" to ptr
  store float %".842", ptr %".843"
  ; IADD3 R6, R6, -0x4, RZ
  %".846" = load i32, ptr %"R6"
  %"add.35" = add i32 %".846", -4
  %"add.36" = add i32 %"add.35", 0
  store i32 %"add.36", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".849" = load i32, ptr %"UR4"
  %"add.37" = add i32 %".849", 16
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", ptr %"UR4"
  %"carry.4" = icmp ult i32 %"add.38", %".849"
  store i1 %"carry.4", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".853" = load i32, ptr %"R5"
  %"add.39" = add i32 %".853", 4
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".856" = load i32, ptr %"R6"
  %".857" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".856", 0
  %".858" = and i1 %"cmp.8", %".857"
  store i1 %".858", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".861" = load i32, ptr %"UR5"
  %".862" = load i1, ptr %"UP0"
  %".863" = sub i1 0, %".862"
  %".864" = zext i1 %".863" to i32
  %"add.41" = add i32 0, %".861"
  %"add.42" = add i32 %"add.41", 0
  %"add.43" = add i32 %"add.42", %".864"
  store i32 %"add.43", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %".867" = load float, ptr %"R8"
  %".868" = load float, ptr %"R9"
  %".869" = load float, ptr %"R7"
  %"fmul.24" = fmul float %".867", %".868"
  %"fadd.24" = fadd float %"fmul.24", %".869"
  %".870" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".870"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".873" = load i32, ptr %"R2"
  %"add.44" = add i32 %".873", 16
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R9"
  %"carry.5" = icmp ult i32 %"add.45", %".873"
  store i1 %"carry.5", ptr %"P1"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".877" = load i32, ptr %"R9"
  %"mul.6" = mul i32 0, 0
  %"add.46" = add i32 %"mul.6", %".877"
  store i32 %"add.46", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %".880" = load float, ptr %"R11"
  %".881" = load float, ptr %"R10"
  %".882" = load float, ptr %"R8"
  %"fmul.25" = fmul float %".880", %".881"
  %"fadd.25" = fadd float %"fmul.25", %".882"
  %".883" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".883"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".886" = load i32, ptr %"R3"
  %".887" = load i1, ptr %"P1"
  %".888" = sub i1 0, %".887"
  %".889" = zext i1 %".888" to i32
  %"add.47" = add i32 0, %".886"
  %"add.48" = add i32 %"add.47", 0
  %"add.49" = add i32 %"add.48", %".889"
  store i32 %"add.49", ptr %"R10"
  ; MOV R3, R10
  %".892" = load i32, ptr %"R10"
  store i32 %".892", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %".895" = load float, ptr %"R13"
  %".896" = load float, ptr %"R12"
  %".897" = load float, ptr %"R8"
  %"fmul.26" = fmul float %".895", %".896"
  %"fadd.26" = fadd float %"fmul.26", %".897"
  %".898" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".898"
  ; FFMA R7, R15, R14, R8
  %".901" = load float, ptr %"R15"
  %".902" = load float, ptr %"R14"
  %".903" = load float, ptr %"R8"
  %"fmul.27" = fmul float %".901", %".902"
  %"fadd.27" = fadd float %"fmul.27", %".903"
  %".904" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".904"
  ; @P0 BRA `(.L_x_2)
  %".907" = load i1, ptr %"P0"
  %".908" = icmp ne i1 %".907", 1
  br i1 %".908", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".911" = load i32, ptr %"R4"
  %".912" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".911", 0
  %".913" = and i1 %"cmp.9", %".912"
  store i1 %".913", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".916" = load i1, ptr %"P0"
  %".917" = icmp eq i1 %".916", 1
  br i1 %".917", label %".L_x_0", label %".L_x_1_split_0x0900"
.L_x_1_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".922" = load i32, ptr %"R0"
  %".923" = load i32, ptr %"R5"
  %"mul.7" = mul i32 %".922", %"Arg_6"
  %"add.50" = add i32 %"mul.7", %".923"
  store i32 %"add.50", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".926" = load i32, ptr %"R2"
  %".927" = load i32, ptr %"R8"
  %"mul.8" = mul i32 %".926", %".927"
  %"add.51" = add i32 %"mul.8", %"Arg_3"
  store i32 %"add.51", ptr %"R2"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".930" = load i32, ptr %"R5"
  %".931" = load i32, ptr %"R8"
  %"mul.9" = mul i32 %".930", %".931"
  %"add.52" = add i32 %"mul.9", %"Arg_2"
  store i32 %"add.52", ptr %"R8"
  ; MOV R6, R2
  %".934" = load i32, ptr %"R2"
  store i32 %".934", ptr %"R6"
  br label %".L_x_6"
.L_x_6:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".938" = load i32, ptr %"R6"
  %"mul.10" = mul i32 0, 0
  %"add.53" = add i32 %"mul.10", %".938"
  store i32 %"add.53", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".941" = load i32, ptr %"R8"
  %"zext.112" = zext i32 %".941" to i64
  %".942" = load i32, ptr %"R9"
  %"zext.113" = zext i32 %".942" to i64
  %"shl.56" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.56", %"zext.112"
  %".943" = inttoptr i64 %"or.56" to ptr
  %".944" = ptrtoint ptr %".943" to i64
  %".945" = add i64 %".944", 0
  %"for_LDG.56" = inttoptr i64 %".945" to ptr
  %".946" = load float, ptr %"for_LDG.56"
  %".947" = bitcast ptr %"R5" to ptr
  store float %".946", ptr %".947"
  ; LDG.E.SYS R2, [R2]
  %".950" = load i32, ptr %"R2"
  %"zext.114" = zext i32 %".950" to i64
  %".951" = load i32, ptr %"R3"
  %"zext.115" = zext i32 %".951" to i64
  %"shl.57" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.57", %"zext.114"
  %".952" = inttoptr i64 %"or.57" to ptr
  %".953" = ptrtoint ptr %".952" to i64
  %".954" = add i64 %".953", 0
  %"for_LDG.57" = inttoptr i64 %".954" to ptr
  %".955" = load float, ptr %"for_LDG.57"
  %".956" = bitcast ptr %"R2" to ptr
  store float %".955", ptr %".956"
  ; IADD3 R4, R4, -0x1, RZ
  %".959" = load i32, ptr %"R4"
  %"add.54" = add i32 %".959", -1
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".962" = load i32, ptr %"R4"
  %".963" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".962", 0
  %".964" = and i1 %"cmp.10", %".963"
  store i1 %".964", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".967" = load i32, ptr %"R6"
  %"add.56" = add i32 %".967", 4
  %"add.57" = add i32 %"add.56", 0
  store i32 %"add.57", ptr %"R6"
  %"carry.6" = icmp ult i32 %"add.57", %".967"
  store i1 %"carry.6", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".971" = load i32, ptr %"R8"
  %"add.58" = add i32 %".971", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R8"
  %"carry.7" = icmp ult i32 %"add.59", %".971"
  store i1 %"carry.7", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".975" = load i32, ptr %"R3"
  %".976" = load i1, ptr %"P1"
  %".977" = sub i1 0, %".976"
  %".978" = zext i1 %".977" to i32
  %"add.60" = add i32 0, %".975"
  %"add.61" = add i32 %"add.60", 0
  %"add.62" = add i32 %"add.61", %".978"
  store i32 %"add.62", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".981" = load i32, ptr %"R9"
  %".982" = load i1, ptr %"P2"
  %".983" = sub i1 0, %".982"
  %".984" = zext i1 %".983" to i32
  %"add.63" = add i32 0, %".981"
  %"add.64" = add i32 %"add.63", 0
  %"add.65" = add i32 %"add.64", %".984"
  store i32 %"add.65", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".987" = load float, ptr %"R2"
  %".988" = load float, ptr %"R5"
  %".989" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".987", %".988"
  %"fadd.28" = fadd float %"fmul.28", %".989"
  %".990" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".990"
  ; @P0 BRA `(.L_x_6)
  %".993" = load i1, ptr %"P0"
  %".994" = icmp ne i1 %".993", 1
  br i1 %".994", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".999" = load i32, ptr %"R0"
  %".1000" = load i32, ptr %"R5"
  %"mul.11" = mul i32 %".999", %".1000"
  %"add.66" = add i32 %"mul.11", %"Arg_4"
  store i32 %"add.66", ptr %"R2"
  ; LDG.E.SYS R2, [R2]
  %".1003" = load i32, ptr %"R2"
  %"zext.116" = zext i32 %".1003" to i64
  %".1004" = load i32, ptr %"R3"
  %"zext.117" = zext i32 %".1004" to i64
  %"shl.58" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.58", %"zext.116"
  %".1005" = inttoptr i64 %"or.58" to ptr
  %".1006" = ptrtoint ptr %".1005" to i64
  %".1007" = add i64 %".1006", 0
  %"for_LDG.58" = inttoptr i64 %".1007" to ptr
  %".1008" = load float, ptr %"for_LDG.58"
  %".1009" = bitcast ptr %"R2" to ptr
  store float %".1008", ptr %".1009"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".1012" = load i32, ptr %"R0"
  %".1013" = load i32, ptr %"R5"
  %"mul.12" = mul i32 %".1012", %".1013"
  %"add.67" = add i32 %"mul.12", %"Arg_5"
  store i32 %"add.67", ptr %"R4"
  ; FADD R7, R2, R7
  %".1016" = load float, ptr %"R2"
  %".1017" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".1016", %".1017"
  %".1018" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".1018"
  ; STG.E.SYS [R4], R7
  %".1021" = load float, ptr %"R7"
  %".1022" = load i32, ptr %"R4"
  %"zext.118" = zext i32 %".1022" to i64
  %".1023" = load i32, ptr %"R5"
  %"zext.119" = zext i32 %".1023" to i64
  %"shl.59" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.59", %"zext.118"
  %".1024" = inttoptr i64 %"or.59" to ptr
  %".1025" = ptrtoint ptr %".1024" to i64
  %".1026" = add i64 %".1025", 0
  %"for_STG" = inttoptr i64 %".1026" to ptr
  store float %".1021", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_7:
  ; BRA `(.L_x_7)
  br label %".L_x_7"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

define void @"_Z10max_pool2dPfS_iii"(i32 %"Arg_0", i32 %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6", i32 %"Arg_7")
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
  %"add" = add i32 %"mul", %"Arg_2"
  store i32 %"add", ptr %"R1"
  ; IABS R7, c[0x0][0x174]
  %".14" = icmp sge i32 %"Arg_6", 0
  %".15" = sub i32 0, %"Arg_6"
  %"iabs" = select  i1 %".14", i32 %"Arg_6", i32 %".15"
  store i32 %"iabs", ptr %"R7"
  ; ULDC.64 UR4, c[0x0][0x170]
  store i32 %"Arg_5", ptr %"UR4"
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
  %".59" = icmp sge i32 %"Arg_5", 0
  %".60" = sub i32 0, %"Arg_5"
  %"iabs.1" = select  i1 %".59", i32 %"Arg_5", i32 %".60"
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
  %"mul.8" = mul i32 %".117", %"Arg_0"
  %"add.14" = add i32 %"mul.8", %".118"
  store i32 %"add.14", ptr %"R0"
  ; S2R R7, SR_TID.Y
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", ptr %"R7"
  ; ISETP.NE.AND P2, PT, RZ, c[0x0][0x174], PT
  %".123" = load i1, ptr %"PT"
  %"cmp.3" = icmp ne i32 0, %"Arg_6"
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
  %".153" = xor i32 %"Arg_6", -1
  store i32 %".153", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0200)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x0200:
  ; IMAD R10, R10, c[0x0][0x4], R7
  %".158" = load i32, ptr %"R10"
  %".159" = load i32, ptr %"R7"
  %"mul.11" = mul i32 %".158", %"Arg_1"
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
  %"cmp.6" = icmp sge i32 %".174", %"Arg_7"
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
  %"add.20" = add i32 %"mul.12", %"Arg_6"
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
  %"mul.13" = mul i32 %".198", %"Arg_5"
  %"add.21" = add i32 %"mul.13", 0
  store i32 %"add.21", ptr %"R3"
  ; IADD3 R2, R15.reuse, -0x1, RZ
  %".201" = load i32, ptr %"R15"
  %"add.22" = add i32 %".201", -1
  %"add.23" = add i32 %"add.22", 0
  store i32 %"add.23", ptr %"R2"
  ; IMAD R13, R0, c[0x0][0x174], RZ
  %".204" = load i32, ptr %"R0"
  %"mul.14" = mul i32 %".204", %"Arg_6"
  %"add.24" = add i32 %"mul.14", 0
  store i32 %"add.24", ptr %"R13"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".207" = load i32, ptr %"R15"
  %".208" = and i32 %".207", 3
  store i32 %".208", ptr %"R15"
  ; IMAD R12, R10, c[0x0][0x174], R3
  %".211" = load i32, ptr %"R10"
  %".212" = load i32, ptr %"R3"
  %"mul.15" = mul i32 %".211", %"Arg_6"
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
  %".223" = sub i32 0, %"Arg_6"
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
  %"mul.18" = mul i32 %".228", %"Arg_5"
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
  %"add.32" = add i32 %"mul.20", %"Arg_5"
  store i32 %"add.32", ptr %"R23"
  ; IMAD.WIDE R2, R17, R2, c[0x0][0x160]
  %".257" = load i32, ptr %"R17"
  %".258" = load i32, ptr %"R2"
  %"mul.21" = mul i32 %".257", %".258"
  %"add.33" = add i32 %"mul.21", %"Arg_3"
  store i32 %"add.33", ptr %"R2"
  ; IMAD.WIDE R4, R23.reuse, 0x4, R2
  %".261" = load i32, ptr %"R23"
  %".262" = load i32, ptr %"R2"
  %"mul.22" = mul i32 %".261", 4
  %"add.34" = add i32 %"mul.22", %".262"
  store i32 %"add.34", ptr %"R4"
  ; LDG.E.SYS R2, [R2]
  %".265" = load i32, ptr %"R2"
  %"zext" = zext i32 %".265" to i64
  %".266" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".266" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %".267" = inttoptr i64 %"or" to ptr
  %".268" = ptrtoint ptr %".267" to i64
  %".269" = add i64 %".268", 0
  %"for_LDG" = inttoptr i64 %".269" to ptr
  %".270" = load float, ptr %"for_LDG"
  %".271" = bitcast ptr %"R2" to ptr
  store float %".270", ptr %".271"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".274" = load i32, ptr %"R23"
  %".275" = load i32, ptr %"R4"
  %"mul.23" = mul i32 %".274", 4
  %"add.35" = add i32 %"mul.23", %".275"
  store i32 %"add.35", ptr %"R6"
  ; LDG.E.SYS R4, [R4]
  %".278" = load i32, ptr %"R4"
  %"zext.2" = zext i32 %".278" to i64
  %".279" = load i32, ptr %"R5"
  %"zext.3" = zext i32 %".279" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %".280" = inttoptr i64 %"or.1" to ptr
  %".281" = ptrtoint ptr %".280" to i64
  %".282" = add i64 %".281", 0
  %"for_LDG.1" = inttoptr i64 %".282" to ptr
  %".283" = load float, ptr %"for_LDG.1"
  %".284" = bitcast ptr %"R4" to ptr
  store float %".283", ptr %".284"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".287" = load i32, ptr %"R23"
  %".288" = load i32, ptr %"R6"
  %"mul.24" = mul i32 %".287", 4
  %"add.36" = add i32 %"mul.24", %".288"
  store i32 %"add.36", ptr %"R8"
  ; LDG.E.SYS R6, [R6]
  %".291" = load i32, ptr %"R6"
  %"zext.4" = zext i32 %".291" to i64
  %".292" = load i32, ptr %"R7"
  %"zext.5" = zext i32 %".292" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %".293" = inttoptr i64 %"or.2" to ptr
  %".294" = ptrtoint ptr %".293" to i64
  %".295" = add i64 %".294", 0
  %"for_LDG.2" = inttoptr i64 %".295" to ptr
  %".296" = load float, ptr %"for_LDG.2"
  %".297" = bitcast ptr %"R6" to ptr
  store float %".296", ptr %".297"
  ; LDG.E.SYS R8, [R8]
  %".300" = load i32, ptr %"R8"
  %"zext.6" = zext i32 %".300" to i64
  %"zext.7" = zext i32 0 to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %".301" = inttoptr i64 %"or.3" to ptr
  %".302" = ptrtoint ptr %".301" to i64
  %".303" = add i64 %".302", 0
  %"for_LDG.3" = inttoptr i64 %".303" to ptr
  %".304" = load float, ptr %"for_LDG.3"
  %".305" = bitcast ptr %"R8" to ptr
  store float %".304", ptr %".305"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".308" = load i32, ptr %"UR4"
  %"add.37" = add i32 %".308", 4
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", ptr %"UR4"
  ; IADD3 R18, R20, UR4, RZ
  %".311" = load i32, ptr %"R20"
  %".312" = load i32, ptr %"UR4"
  %"add.39" = add i32 %".311", %".312"
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", ptr %"R18"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".315" = load i32, ptr %"R18"
  %".316" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".315", 0
  %".317" = and i1 %"cmp.10", %".316"
  store i1 %".317", ptr %"P1"
  ; IMAD R17, R23, 0x4, R17
  %".320" = load i32, ptr %"R23"
  %".321" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".320", 4
  %"add.41" = add i32 %"mul.25", %".321"
  store i32 %"add.41", ptr %"R17"
  ; FMNMX R11, R2, R11, !PT
  %".324" = load float, ptr %"R2"
  %".325" = load float, ptr %"R11"
  %".326" = fcmp olt float %".324", %".325"
  %"fmnmx_min" = select  i1 %".326", float %".324", float %".325"
  %".327" = fcmp ogt float %".324", %".325"
  %"fmnmx_max" = select  i1 %".327", float %".324", float %".325"
  %"fmnmx_final" = select  i1 1, float %"fmnmx_min", float %"fmnmx_max"
  %".328" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final", ptr %".328"
  ; FMNMX R11, R11, R4, !PT
  %".331" = load float, ptr %"R11"
  %".332" = load float, ptr %"R4"
  %".333" = fcmp olt float %".331", %".332"
  %"fmnmx_min.1" = select  i1 %".333", float %".331", float %".332"
  %".334" = fcmp ogt float %".331", %".332"
  %"fmnmx_max.1" = select  i1 %".334", float %".331", float %".332"
  %"fmnmx_final.1" = select  i1 1, float %"fmnmx_min.1", float %"fmnmx_max.1"
  %".335" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.1", ptr %".335"
  ; FMNMX R11, R11, R6, !PT
  %".338" = load float, ptr %"R11"
  %".339" = load float, ptr %"R6"
  %".340" = fcmp olt float %".338", %".339"
  %"fmnmx_min.2" = select  i1 %".340", float %".338", float %".339"
  %".341" = fcmp ogt float %".338", %".339"
  %"fmnmx_max.2" = select  i1 %".341", float %".338", float %".339"
  %"fmnmx_final.2" = select  i1 1, float %"fmnmx_min.2", float %"fmnmx_max.2"
  %".342" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.2", ptr %".342"
  ; FMNMX R11, R11, R8, !PT
  %".345" = load float, ptr %"R11"
  %".346" = load float, ptr %"R8"
  %".347" = fcmp olt float %".345", %".346"
  %"fmnmx_min.3" = select  i1 %".347", float %".345", float %".346"
  %".348" = fcmp ogt float %".345", %".346"
  %"fmnmx_max.3" = select  i1 %".348", float %".345", float %".346"
  %"fmnmx_final.3" = select  i1 1, float %"fmnmx_min.3", float %"fmnmx_max.3"
  %".349" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.3", ptr %".349"
  ; @P1 BRA `(.L_x_10)
  %".352" = load i1, ptr %"P1"
  %".353" = icmp ne i1 %".352", 1
  br i1 %".353", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".356" = load i32, ptr %"R13"
  %".357" = load i32, ptr %"R16"
  %"mul.26" = mul i32 %".356", 1
  %"add.42" = add i32 %"mul.26", %".357"
  store i32 %"add.42", ptr %"R4"
  ; @!P2 BRA `(.L_x_11)
  %".360" = load i1, ptr %"P2"
  %".361" = icmp eq i1 %".360", 1
  br i1 %".361", label %".L_x_11", label %".L_x_9_split_0x04d0"
.L_x_9_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".364" = load i32, ptr %"R12"
  %".365" = load i32, ptr %"UR4"
  %"add.43" = add i32 %".364", %".365"
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", ptr %"R5"
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".370" = load i32, ptr %"R5"
  %".371" = load i32, ptr %"R4"
  %"mul.27" = mul i32 %".370", %"Arg_5"
  %"add.45" = add i32 %"mul.27", %".371"
  store i32 %"add.45", ptr %"R2"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".374" = load i32, ptr %"R2"
  %".375" = load i32, ptr %"R7"
  %"mul.28" = mul i32 %".374", %".375"
  %"add.46" = add i32 %"mul.28", %"Arg_3"
  store i32 %"add.46", ptr %"R2"
  ; LDG.E.SYS R2, [R2]
  %".378" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".378" to i64
  %".379" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".379" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %".380" = inttoptr i64 %"or.4" to ptr
  %".381" = ptrtoint ptr %".380" to i64
  %".382" = add i64 %".381", 0
  %"for_LDG.4" = inttoptr i64 %".382" to ptr
  %".383" = load float, ptr %"for_LDG.4"
  %".384" = bitcast ptr %"R2" to ptr
  store float %".383", ptr %".384"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".387" = load i32, ptr %"R15"
  %".388" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".387", 1
  %".389" = and i1 %"cmp.11", %".388"
  store i1 %".389", ptr %"P1"
  ; FMNMX R11, R11, R2, !PT
  %".392" = load float, ptr %"R11"
  %".393" = load float, ptr %"R2"
  %".394" = fcmp olt float %".392", %".393"
  %"fmnmx_min.4" = select  i1 %".394", float %".392", float %".393"
  %".395" = fcmp ogt float %".392", %".393"
  %"fmnmx_max.4" = select  i1 %".395", float %".392", float %".393"
  %"fmnmx_final.4" = select  i1 1, float %"fmnmx_min.4", float %"fmnmx_max.4"
  %".396" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.4", ptr %".396"
  ; @!P1 BRA `(.L_x_11)
  %".399" = load i1, ptr %"P1"
  %".400" = icmp eq i1 %".399", 1
  br i1 %".400", label %".L_x_11", label %".L_x_9_split_0x0550"
.L_x_9_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".403" = load i32, ptr %"R15"
  %".404" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".403", 2
  %".405" = and i1 %"cmp.12", %".404"
  store i1 %".405", ptr %"P1"
  ; IADD3 R2, R5, 0x1, RZ
  %".408" = load i32, ptr %"R5"
  %"add.47" = add i32 %".408", 1
  %"add.48" = add i32 %"add.47", 0
  store i32 %"add.48", ptr %"R2"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".411" = load i32, ptr %"R2"
  %".412" = load i32, ptr %"R4"
  %"mul.29" = mul i32 %".411", %"Arg_5"
  %"add.49" = add i32 %"mul.29", %".412"
  store i32 %"add.49", ptr %"R2"
  ; @P1 IADD3 R3, R5, 0x2, RZ
  %".415" = load i1, ptr %"P1"
  %".416" = icmp ne i1 %".415", 1
  br i1 %".416", label %".L_x_9_split_0x0550_conditionalExpr_0x0580", label %".L_x_9_split_0x0590"
.L_x_9_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".419" = load i32, ptr %"R5"
  %"add.50" = add i32 %".419", 2
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R3"
  ; BRA `(.L_x_9_split_0x0590)
  br label %".L_x_9_split_0x0590"
.L_x_9_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4
  %".424" = load i1, ptr %"P1"
  %".425" = icmp ne i1 %".424", 1
  br i1 %".425", label %".L_x_9_split_0x0590_conditionalExpr_0x0590", label %".L_x_9_split_0x05a0"
.L_x_9_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".428" = load i32, ptr %"R3"
  %".429" = load i32, ptr %"R4"
  %"mul.30" = mul i32 %".428", %"Arg_5"
  %"add.52" = add i32 %"mul.30", %".429"
  store i32 %"add.52", ptr %"R4"
  ; BRA `(.L_x_9_split_0x05a0)
  br label %".L_x_9_split_0x05a0"
.L_x_9_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".434" = load i32, ptr %"R2"
  %".435" = load i32, ptr %"R7"
  %"mul.31" = mul i32 %".434", %".435"
  %"add.53" = add i32 %"mul.31", %"Arg_3"
  store i32 %"add.53", ptr %"R2"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".438" = load i1, ptr %"P1"
  %".439" = icmp ne i1 %".438", 1
  br i1 %".439", label %".L_x_9_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".442" = load i32, ptr %"R4"
  %".443" = load i32, ptr %"R7"
  %"mul.32" = mul i32 %".442", %".443"
  %"add.54" = add i32 %"mul.32", %"Arg_3"
  store i32 %"add.54", ptr %"R4"
  ; BRA `(.L_x_9_split_0x05c0)
  br label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".448" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".448" to i64
  %".449" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".449" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %".450" = inttoptr i64 %"or.5" to ptr
  %".451" = ptrtoint ptr %".450" to i64
  %".452" = add i64 %".451", 0
  %"for_LDG.5" = inttoptr i64 %".452" to ptr
  %".453" = load float, ptr %"for_LDG.5"
  %".454" = bitcast ptr %"R2" to ptr
  store float %".453", ptr %".454"
  ; @P1 LDG.E.SYS R4, [R4]
  %".457" = load i1, ptr %"P1"
  %".458" = icmp ne i1 %".457", 1
  br i1 %".458", label %".L_x_9_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".461" = load i32, ptr %"R4"
  %"zext.12" = zext i32 %".461" to i64
  %".462" = load i32, ptr %"R5"
  %"zext.13" = zext i32 %".462" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %".463" = inttoptr i64 %"or.6" to ptr
  %".464" = ptrtoint ptr %".463" to i64
  %".465" = add i64 %".464", 0
  %"for_LDG.6" = inttoptr i64 %".465" to ptr
  %".466" = load float, ptr %"for_LDG.6"
  %".467" = bitcast ptr %"R4" to ptr
  store float %".466", ptr %".467"
  ; BRA `(.L_x_9_split_0x05e0)
  br label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".472" = load float, ptr %"R11"
  %".473" = load float, ptr %"R2"
  %".474" = fcmp olt float %".472", %".473"
  %"fmnmx_min.5" = select  i1 %".474", float %".472", float %".473"
  %".475" = fcmp ogt float %".472", %".473"
  %"fmnmx_max.5" = select  i1 %".475", float %".472", float %".473"
  %"fmnmx_final.5" = select  i1 1, float %"fmnmx_min.5", float %"fmnmx_max.5"
  %".476" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.5", ptr %".476"
  ; @P1 FMNMX R11, R11, R4, !PT
  %".479" = load i1, ptr %"P1"
  %".480" = icmp ne i1 %".479", 1
  br i1 %".480", label %".L_x_9_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_11"
.L_x_9_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".483" = load float, ptr %"R11"
  %".484" = load float, ptr %"R4"
  %".485" = fcmp olt float %".483", %".484"
  %"fmnmx_min.6" = select  i1 %".485", float %".483", float %".484"
  %".486" = fcmp ogt float %".483", %".484"
  %"fmnmx_max.6" = select  i1 %".486", float %".483", float %".484"
  %"fmnmx_final.6" = select  i1 1, float %"fmnmx_min.6", float %"fmnmx_max.6"
  %".487" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.6", ptr %".487"
  ; BRA `(.L_x_11)
  br label %".L_x_11"
.L_x_11:
  ; IADD3 R16, R16, 0x1, RZ
  %".492" = load i32, ptr %"R16"
  %"add.55" = add i32 %".492", 1
  %"add.56" = add i32 %"add.55", 0
  store i32 %"add.56", ptr %"R16"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".495" = load i32, ptr %"R16"
  %".496" = load i1, ptr %"PT"
  %"cmp.13" = icmp sge i32 %".495", %"Arg_6"
  %".497" = and i1 %"cmp.13", %".496"
  store i1 %".497", ptr %"P1"
  ; @!P1 BRA `(.L_x_12)
  %".500" = load i1, ptr %"P1"
  %".501" = icmp eq i1 %".500", 1
  br i1 %".501", label %".L_x_12", label %".L_x_8"
.L_x_8:
  ; IMAD R3, R21.reuse, R19, R10
  %".504" = load i32, ptr %"R21"
  %".505" = load i32, ptr %"R19"
  %".506" = load i32, ptr %"R10"
  %"mul.33" = mul i32 %".504", %".505"
  %"add.57" = add i32 %"mul.33", %".506"
  store i32 %"add.57", ptr %"R3"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"mul.34" = mul i32 0, 0
  %"add.58" = add i32 %"mul.34", 4
  store i32 %"add.58", ptr %"R2"
  ; IMAD R3, R21, R3, R0
  %".511" = load i32, ptr %"R21"
  %".512" = load i32, ptr %"R3"
  %".513" = load i32, ptr %"R0"
  %"mul.35" = mul i32 %".511", %".512"
  %"add.59" = add i32 %"mul.35", %".513"
  store i32 %"add.59", ptr %"R3"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".516" = load i32, ptr %"R3"
  %".517" = load i32, ptr %"R2"
  %"mul.36" = mul i32 %".516", %".517"
  %"add.60" = add i32 %"mul.36", %"Arg_4"
  store i32 %"add.60", ptr %"R2"
  ; STG.E.SYS [R2], R11
  %".520" = load i32, ptr %"R11"
  %".521" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".521" to i64
  %".522" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".522" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %".523" = inttoptr i64 %"or.7" to ptr
  %".524" = ptrtoint ptr %".523" to i64
  %".525" = add i64 %".524", 0
  %"for_STG" = inttoptr i64 %".525" to ptr
  store i32 %".520", ptr %"for_STG"
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

define void @"_Z4reluPfS_i"(i32 %"Arg_0", i32 %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4")
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
  store i32 %"Arg_1", ptr %"R1"
  ; S2R R4, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R4"
  ; S2R R3, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R3"
  ; IMAD R4, R4, c[0x0][0x0], R3
  %".15" = load i32, ptr %"R4"
  %".16" = load i32, ptr %"R3"
  %"mul" = mul i32 %".15", %"Arg_0"
  %"add" = add i32 %"mul", %".16"
  store i32 %"add", ptr %"R4"
  ; ISETP.GE.AND P0, PT, R4, c[0x0][0x170], PT
  %".19" = load i32, ptr %"R4"
  %".20" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".19", %"Arg_4"
  %".21" = and i1 %"cmp", %".20"
  store i1 %".21", ptr %"P0"
  ; @P0 EXIT
  %".24" = load i1, ptr %"P0"
  %".25" = icmp ne i1 %".24", 1
  br i1 %".25", label %".text._Z4reluPfS_i_conditionalExpr_0x0050", label %".text._Z4reluPfS_i_split_0x0060"
.text._Z4reluPfS_i_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z4reluPfS_i_split_0x0060:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R4, R5, c[0x0][0x160]
  %".32" = load i32, ptr %"R4"
  %".33" = load i32, ptr %"R5"
  %"mul.1" = mul i32 %".32", %".33"
  %"add.1" = add i32 %"mul.1", %"Arg_2"
  store i32 %"add.1", ptr %"R2"
  ; LDG.E.SYS R2, [R2]
  %".36" = load i32, ptr %"R2"
  %"zext" = zext i32 %".36" to i64
  %".37" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".37" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %".38" = inttoptr i64 %"or" to ptr
  %".39" = ptrtoint ptr %".38" to i64
  %".40" = add i64 %".39", 0
  %"for_LDG" = inttoptr i64 %".40" to ptr
  %".41" = load float, ptr %"for_LDG"
  %".42" = bitcast ptr %"R2" to ptr
  store float %".41", ptr %".42"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x168]
  %".45" = load i32, ptr %"R4"
  %".46" = load i32, ptr %"R5"
  %"mul.2" = mul i32 %".45", %".46"
  %"add.2" = add i32 %"mul.2", %"Arg_3"
  store i32 %"add.2", ptr %"R4"
  ; FMNMX R7, RZ, R2, !PT
  %".49" = load float, ptr %"R2"
  %".50" = fcmp olt float              0x0, %".49"
  %"fmnmx_min" = select  i1 %".50", float              0x0, float %".49"
  %".51" = fcmp ogt float              0x0, %".49"
  %"fmnmx_max" = select  i1 %".51", float              0x0, float %".49"
  %"fmnmx_final" = select  i1 1, float %"fmnmx_min", float %"fmnmx_max"
  %".52" = bitcast ptr %"R7" to ptr
  store float %"fmnmx_final", ptr %".52"
  ; STG.E.SYS [R4], R7
  %".55" = load float, ptr %"R7"
  %".56" = load i32, ptr %"R4"
  %"zext.2" = zext i32 %".56" to i64
  %".57" = load i32, ptr %"R5"
  %"zext.3" = zext i32 %".57" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %".58" = inttoptr i64 %"or.1" to ptr
  %".59" = ptrtoint ptr %".58" to i64
  %".60" = add i64 %".59", 0
  %"for_STG" = inttoptr i64 %".60" to ptr
  store float %".55", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_14:
  ; BRA `(.L_x_14)
  br label %".L_x_14"
ExitFunction:
  ret void
}

define void @"_Z6conv2dPfS_S_iiii"(i32 %"Arg_0", i32 %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6", i32 %"Arg_7", i32 %"Arg_8", i32 %"Arg_9")
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
  store i32 %"Arg_2", ptr %"R1"
  ; S2R R3, SR_CTAID.Y
  %"nvvm_ctaid_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()
  store i32 %"nvvm_ctaid_y", ptr %"R3"
  ; ULDC.64 UR4, c[0x0][0x178]
  store i32 %"Arg_6", ptr %"UR4"
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
  %"mul" = mul i32 %".33", %"Arg_1"
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
  %"mul.1" = mul i32 %".43", %"Arg_0"
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
  %"cmp.2" = icmp sge i32 %".53", %"Arg_9"
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
  %"cmp.3" = icmp sle i32 %".68", %"Arg_7"
  %".70" = and i1 %"cmp.3", %".69"
  store i1 %".70", ptr %"P0"
  ; ISETP.GT.OR P0, PT, R4, c[0x0][0x180], !P0
  %".73" = load i32, ptr %"R4"
  %".74" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".73", %"Arg_8"
  %".75" = or i1 %"cmp.4", %".74"
  store i1 %".75", ptr %"P0"
  ; @P0 BRA `(.L_x_15)
  %".78" = load i1, ptr %"P0"
  %".79" = icmp ne i1 %".78", 1
  br i1 %".79", label %".L_x_15", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
.text._Z6conv2dPfS_S_iiii_split_0x0130:
  ; IMAD.MOV.U32 R4, RZ, RZ, c[0x0][0x17c]
  %"mul.3" = mul i32 0, 0
  %"add.5" = add i32 %"mul.3", %"Arg_7"
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
  %"add.7" = add i32 %".93", %"Arg_7"
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
  %".106" = sub i32 0, %"Arg_7"
  %"add.9" = add i32 %".105", %".106"
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", ptr %"R26"
  br label %".L_x_20"
.L_x_20:
  ; IMAD R11, R10, c[0x0][0x178], R3
  %".110" = load i32, ptr %"R10"
  %".111" = load i32, ptr %"R3"
  %"mul.5" = mul i32 %".110", %"Arg_6"
  %"add.11" = add i32 %"mul.5", %".111"
  store i32 %"add.11", ptr %"R11"
  ; MOV R8, RZ
  %".114" = load i32, ptr %"RZ"
  store i32 %".114", ptr %"R8"
  ; IMAD R9, R0, c[0x0][0x180], R10
  %".117" = load i32, ptr %"R0"
  %".118" = load i32, ptr %"R10"
  %"mul.6" = mul i32 %".117", %"Arg_8"
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
  %"mul.7" = mul i32 %".124", %"Arg_6"
  %"add.15" = add i32 %"mul.7", %".125"
  store i32 %"add.15", ptr %"R5"
  ; ISETP.GE.AND P1, PT, R10, c[0x0][0x180], PT
  %".128" = load i32, ptr %"R10"
  %".129" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".128", %"Arg_8"
  %".130" = and i1 %"cmp.6", %".129"
  store i1 %".130", ptr %"P1"
  br label %".L_x_19"
.L_x_19:
  ; IMAD R6, R9, c[0x0][0x17c], R8
  %".134" = load i32, ptr %"R9"
  %".135" = load i32, ptr %"R8"
  %"mul.8" = mul i32 %".134", %"Arg_7"
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
  %"mul.9" = mul i32 %".146", %"Arg_7"
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
  %"mul.11" = mul i32 %".162", %".163"
  %"add.19" = add i32 %"mul.11", %"Arg_4"
  store i32 %"add.19", ptr %"R6"
  ; MOV R23, R6
  %".166" = load i32, ptr %"R6"
  store i32 %".166", ptr %"R23"
  br label %".L_x_17"
.L_x_17:
  ; IMAD.WIDE R14, R13, R24, c[0x0][0x160]
  %".170" = load i32, ptr %"R13"
  %".171" = load i32, ptr %"R24"
  %"mul.12" = mul i32 %".170", %".171"
  %"add.20" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.20", ptr %"R14"
  ; MOV R31, c[0x0][0x178]
  store i32 %"Arg_6", ptr %"R31"
  ; IMAD.MOV.U32 R6, RZ, RZ, R23
  %".176" = load i32, ptr %"R23"
  %"mul.13" = mul i32 0, 0
  %"add.21" = add i32 %"mul.13", %".176"
  store i32 %"add.21", ptr %"R6"
  ; IMAD.WIDE R16, R31.reuse, 0x4, R14
  %".179" = load i32, ptr %"R31"
  %".180" = load i32, ptr %"R14"
  %"mul.14" = mul i32 %".179", 4
  %"add.22" = add i32 %"mul.14", %".180"
  store i32 %"add.22", ptr %"R16"
  ; LDG.E.SYS R14, [R14]
  %".183" = load i32, ptr %"R14"
  %"zext" = zext i32 %".183" to i64
  %".184" = load i32, ptr %"R15"
  %"zext.1" = zext i32 %".184" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %".185" = inttoptr i64 %"or" to ptr
  %".186" = ptrtoint ptr %".185" to i64
  %".187" = add i64 %".186", 0
  %"for_LDG" = inttoptr i64 %".187" to ptr
  %".188" = load float, ptr %"for_LDG"
  %".189" = bitcast ptr %"R14" to ptr
  store float %".188", ptr %".189"
  ; LDG.E.SYS R23, [R6]
  %".192" = load i32, ptr %"R6"
  %"zext.2" = zext i32 %".192" to i64
  %".193" = load i32, ptr %"R7"
  %"zext.3" = zext i32 %".193" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %".194" = inttoptr i64 %"or.1" to ptr
  %".195" = ptrtoint ptr %".194" to i64
  %".196" = add i64 %".195", 0
  %"for_LDG.1" = inttoptr i64 %".196" to ptr
  %".197" = load float, ptr %"for_LDG.1"
  %".198" = bitcast ptr %"R23" to ptr
  store float %".197", ptr %".198"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".201" = load i32, ptr %"R31"
  %".202" = load i32, ptr %"R16"
  %"mul.15" = mul i32 %".201", 4
  %"add.23" = add i32 %"mul.15", %".202"
  store i32 %"add.23", ptr %"R18"
  ; LDG.E.SYS R16, [R16]
  %".205" = load i32, ptr %"R16"
  %"zext.4" = zext i32 %".205" to i64
  %"zext.5" = zext i32 0 to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %".206" = inttoptr i64 %"or.2" to ptr
  %".207" = ptrtoint ptr %".206" to i64
  %".208" = add i64 %".207", 0
  %"for_LDG.2" = inttoptr i64 %".208" to ptr
  %".209" = load float, ptr %"for_LDG.2"
  %".210" = bitcast ptr %"R16" to ptr
  store float %".209", ptr %".210"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".213" = load i32, ptr %"R31"
  %".214" = load i32, ptr %"R18"
  %"mul.16" = mul i32 %".213", 4
  %"add.24" = add i32 %"mul.16", %".214"
  store i32 %"add.24", ptr %"R20"
  ; LDG.E.SYS R22, [R6+0x4]
  %".217" = load i32, ptr %"R6"
  %"zext.6" = zext i32 %".217" to i64
  %".218" = load i32, ptr %"R7"
  %"zext.7" = zext i32 %".218" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %".219" = inttoptr i64 %"or.3" to ptr
  %".220" = ptrtoint ptr %".219" to i64
  %".221" = add i64 %".220", 4
  %"for_LDG.3" = inttoptr i64 %".221" to ptr
  %".222" = load float, ptr %"for_LDG.3"
  %".223" = bitcast ptr %"R22" to ptr
  store float %".222", ptr %".223"
  ; LDG.E.SYS R18, [R18]
  %".226" = load i32, ptr %"R18"
  %"zext.8" = zext i32 %".226" to i64
  %".227" = load i32, ptr %"R19"
  %"zext.9" = zext i32 %".227" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %".228" = inttoptr i64 %"or.4" to ptr
  %".229" = ptrtoint ptr %".228" to i64
  %".230" = add i64 %".229", 0
  %"for_LDG.4" = inttoptr i64 %".230" to ptr
  %".231" = load float, ptr %"for_LDG.4"
  %".232" = bitcast ptr %"R18" to ptr
  store float %".231", ptr %".232"
  ; LDG.E.SYS R25, [R6+0x8]
  %".235" = load i32, ptr %"R6"
  %"zext.10" = zext i32 %".235" to i64
  %".236" = load i32, ptr %"R7"
  %"zext.11" = zext i32 %".236" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %".237" = inttoptr i64 %"or.5" to ptr
  %".238" = ptrtoint ptr %".237" to i64
  %".239" = add i64 %".238", 8
  %"for_LDG.5" = inttoptr i64 %".239" to ptr
  %".240" = load float, ptr %"for_LDG.5"
  %".241" = bitcast ptr %"R25" to ptr
  store float %".240", ptr %".241"
  ; LDG.E.SYS R20, [R20]
  %".244" = load i32, ptr %"R20"
  %"zext.12" = zext i32 %".244" to i64
  %"zext.13" = zext i32 0 to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %".245" = inttoptr i64 %"or.6" to ptr
  %".246" = ptrtoint ptr %".245" to i64
  %".247" = add i64 %".246", 0
  %"for_LDG.6" = inttoptr i64 %".247" to ptr
  %".248" = load float, ptr %"for_LDG.6"
  %".249" = bitcast ptr %"R20" to ptr
  store float %".248", ptr %".249"
  ; LDG.E.SYS R27, [R6+0xc]
  %".252" = load i32, ptr %"R6"
  %"zext.14" = zext i32 %".252" to i64
  %".253" = load i32, ptr %"R7"
  %"zext.15" = zext i32 %".253" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %".254" = inttoptr i64 %"or.7" to ptr
  %".255" = ptrtoint ptr %".254" to i64
  %".256" = add i64 %".255", 12
  %"for_LDG.7" = inttoptr i64 %".256" to ptr
  %".257" = load float, ptr %"for_LDG.7"
  %".258" = bitcast ptr %"R27" to ptr
  store float %".257", ptr %".258"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".261" = load i32, ptr %"UR4"
  %"add.25" = add i32 %".261", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"UR4"
  ; LEA R13, R31, R13, 0x2
  %".264" = load i32, ptr %"R31"
  %".265" = load i32, ptr %"R13"
  %"shl.8" = shl i32 %".264", 2
  %"add.27" = add i32 %"shl.8", %".265"
  store i32 %"add.27", ptr %"R13"
  ; FFMA R23, R23, R14, R12
  %".268" = load float, ptr %"R23"
  %".269" = load float, ptr %"R14"
  %".270" = load float, ptr %"R12"
  %"fmul" = fmul float %".268", %".269"
  %"fadd" = fadd float %"fmul", %".270"
  %".271" = bitcast ptr %"R23" to ptr
  store float %"fadd", ptr %".271"
  ; IADD3 R12, R26, UR4, RZ
  %".274" = load i32, ptr %"R26"
  %".275" = load i32, ptr %"UR4"
  %"add.28" = add i32 %".274", %".275"
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", ptr %"R12"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".278" = load i32, ptr %"R12"
  %".279" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".278", 0
  %".280" = and i1 %"cmp.8", %".279"
  store i1 %".280", ptr %"P2"
  ; FFMA R22, R22, R16, R23
  %".283" = load float, ptr %"R22"
  %".284" = load float, ptr %"R16"
  %".285" = load float, ptr %"R23"
  %"fmul.1" = fmul float %".283", %".284"
  %"fadd.1" = fadd float %"fmul.1", %".285"
  %".286" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".286"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".289" = load i32, ptr %"R6"
  %"add.30" = add i32 %".289", 16
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R23"
  %"carry" = icmp ult i32 %"add.31", %".289"
  store i1 %"carry", ptr %"P4"
  ; FFMA R22, R25, R18, R22
  %".293" = load float, ptr %"R25"
  %".294" = load float, ptr %"R18"
  %".295" = load float, ptr %"R22"
  %"fmul.2" = fmul float %".293", %".294"
  %"fadd.2" = fadd float %"fmul.2", %".295"
  %".296" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".296"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".299" = load i32, ptr %"R7"
  %".300" = load i1, ptr %"P4"
  %".301" = sub i1 0, %".300"
  %".302" = zext i1 %".301" to i32
  %"add.32" = add i32 0, %".299"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".302"
  store i32 %"add.34", ptr %"R7"
  ; FFMA R12, R27, R20, R22
  %".305" = load float, ptr %"R27"
  %".306" = load float, ptr %"R20"
  %".307" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".305", %".306"
  %"fadd.3" = fadd float %"fmul.3", %".307"
  %".308" = bitcast ptr %"R12" to ptr
  store float %"fadd.3", ptr %".308"
  ; @P2 BRA `(.L_x_17)
  %".311" = load i1, ptr %"P2"
  %".312" = icmp ne i1 %".311", 1
  br i1 %".312", label %".L_x_17", label %".L_x_16"
.L_x_16:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".315" = load i32, ptr %"R2"
  %".316" = load i32, ptr %"R8"
  %"mul.17" = mul i32 %".315", 1
  %"add.35" = add i32 %"mul.17", %".316"
  store i32 %"add.35", ptr %"R14"
  ; @!P3 BRA `(.L_x_18)
  %".319" = load i1, ptr %"P3"
  %".320" = icmp eq i1 %".319", 1
  br i1 %".320", label %".L_x_18", label %".L_x_16_split_0x0460"
.L_x_16_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".323" = load i32, ptr %"R11"
  %".324" = load i32, ptr %"UR4"
  %"add.36" = add i32 %".323", %".324"
  %"add.37" = add i32 %"add.36", 0
  store i32 %"add.37", ptr %"R15"
  ; IADD3 R16, R29, UR4, RZ
  %".327" = load i32, ptr %"R29"
  %".328" = load i32, ptr %"UR4"
  %"add.38" = add i32 %".327", %".328"
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R16"
  ; MOV R19, 0x4
  store i32 4, ptr %"R19"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".333" = load i32, ptr %"R15"
  %".334" = load i32, ptr %"R14"
  %"mul.18" = mul i32 %".333", %"Arg_6"
  %"add.40" = add i32 %"mul.18", %".334"
  store i32 %"add.40", ptr %"R6"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".337" = load i32, ptr %"R16"
  %".338" = load i32, ptr %"R19"
  %"mul.19" = mul i32 %".337", %".338"
  %"add.41" = add i32 %"mul.19", %"Arg_4"
  store i32 %"add.41", ptr %"R16"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".341" = load i32, ptr %"R6"
  %".342" = load i32, ptr %"R19"
  %"mul.20" = mul i32 %".341", %".342"
  %"add.42" = add i32 %"mul.20", %"Arg_3"
  store i32 %"add.42", ptr %"R6"
  ; LDG.E.SYS R13, [R16]
  %".345" = load i32, ptr %"R16"
  %"zext.16" = zext i32 %".345" to i64
  %"zext.17" = zext i32 0 to i64
  %"shl.9" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.9", %"zext.16"
  %".346" = inttoptr i64 %"or.8" to ptr
  %".347" = ptrtoint ptr %".346" to i64
  %".348" = add i64 %".347", 0
  %"for_LDG.8" = inttoptr i64 %".348" to ptr
  %".349" = load float, ptr %"for_LDG.8"
  %".350" = bitcast ptr %"R13" to ptr
  store float %".349", ptr %".350"
  ; LDG.E.SYS R6, [R6]
  %".353" = load i32, ptr %"R6"
  %"zext.18" = zext i32 %".353" to i64
  %".354" = load i32, ptr %"R7"
  %"zext.19" = zext i32 %".354" to i64
  %"shl.10" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.10", %"zext.18"
  %".355" = inttoptr i64 %"or.9" to ptr
  %".356" = ptrtoint ptr %".355" to i64
  %".357" = add i64 %".356", 0
  %"for_LDG.9" = inttoptr i64 %".357" to ptr
  %".358" = load float, ptr %"for_LDG.9"
  %".359" = bitcast ptr %"R6" to ptr
  store float %".358", ptr %".359"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".362" = load i32, ptr %"R4"
  %".363" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".362", 1
  %".364" = and i1 %"cmp.9", %".363"
  store i1 %".364", ptr %"P2"
  ; FFMA R12, R13, R6, R12
  %".367" = load float, ptr %"R13"
  %".368" = load float, ptr %"R6"
  %".369" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".367", %".368"
  %"fadd.4" = fadd float %"fmul.4", %".369"
  %".370" = bitcast ptr %"R12" to ptr
  store float %"fadd.4", ptr %".370"
  ; @!P2 BRA `(.L_x_18)
  %".373" = load i1, ptr %"P2"
  %".374" = icmp eq i1 %".373", 1
  br i1 %".374", label %".L_x_18", label %".L_x_16_split_0x0510"
.L_x_16_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".377" = load i32, ptr %"R4"
  %".378" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".377", 2
  %".379" = and i1 %"cmp.10", %".378"
  store i1 %".379", ptr %"P2"
  ; LDG.E.SYS R13, [R16+0x4]
  %".382" = load i32, ptr %"R16"
  %"zext.20" = zext i32 %".382" to i64
  %"zext.21" = zext i32 0 to i64
  %"shl.11" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.11", %"zext.20"
  %".383" = inttoptr i64 %"or.10" to ptr
  %".384" = ptrtoint ptr %".383" to i64
  %".385" = add i64 %".384", 4
  %"for_LDG.10" = inttoptr i64 %".385" to ptr
  %".386" = load float, ptr %"for_LDG.10"
  %".387" = bitcast ptr %"R13" to ptr
  store float %".386", ptr %".387"
  ; IADD3 R6, R15, 0x1, RZ
  %".390" = load i32, ptr %"R15"
  %"add.43" = add i32 %".390", 1
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", ptr %"R6"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".393" = load i32, ptr %"R6"
  %".394" = load i32, ptr %"R14"
  %"mul.21" = mul i32 %".393", %"Arg_6"
  %"add.45" = add i32 %"mul.21", %".394"
  store i32 %"add.45", ptr %"R6"
  ; @P2 IADD3 R7, R15, 0x2, RZ
  %".397" = load i1, ptr %"P2"
  %".398" = icmp ne i1 %".397", 1
  br i1 %".398", label %".L_x_16_split_0x0510_conditionalExpr_0x0550", label %".L_x_16_split_0x0560"
.L_x_16_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".401" = load i32, ptr %"R15"
  %"add.46" = add i32 %".401", 2
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R7"
  ; BRA `(.L_x_16_split_0x0560)
  br label %".L_x_16_split_0x0560"
.L_x_16_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14
  %".406" = load i1, ptr %"P2"
  %".407" = icmp ne i1 %".406", 1
  br i1 %".407", label %".L_x_16_split_0x0560_conditionalExpr_0x0560", label %".L_x_16_split_0x0570"
.L_x_16_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".410" = load i32, ptr %"R7"
  %".411" = load i32, ptr %"R14"
  %"mul.22" = mul i32 %".410", %"Arg_6"
  %"add.48" = add i32 %"mul.22", %".411"
  store i32 %"add.48", ptr %"R14"
  ; BRA `(.L_x_16_split_0x0570)
  br label %".L_x_16_split_0x0570"
.L_x_16_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".416" = load i32, ptr %"R6"
  %".417" = load i32, ptr %"R19"
  %"mul.23" = mul i32 %".416", %".417"
  %"add.49" = add i32 %"mul.23", %"Arg_3"
  store i32 %"add.49", ptr %"R6"
  ; @P2 IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".420" = load i1, ptr %"P2"
  %".421" = icmp ne i1 %".420", 1
  br i1 %".421", label %".L_x_16_split_0x0570_conditionalExpr_0x0580", label %".L_x_16_split_0x0590"
.L_x_16_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".424" = load i32, ptr %"R14"
  %".425" = load i32, ptr %"R19"
  %"mul.24" = mul i32 %".424", %".425"
  %"add.50" = add i32 %"mul.24", %"Arg_3"
  store i32 %"add.50", ptr %"R14"
  ; BRA `(.L_x_16_split_0x0590)
  br label %".L_x_16_split_0x0590"
.L_x_16_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8]
  %".430" = load i1, ptr %"P2"
  %".431" = icmp ne i1 %".430", 1
  br i1 %".431", label %".L_x_16_split_0x0590_conditionalExpr_0x0590", label %".L_x_16_split_0x05a0"
.L_x_16_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".434" = load i32, ptr %"R16"
  %"zext.22" = zext i32 %".434" to i64
  %"zext.23" = zext i32 0 to i64
  %"shl.12" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.12", %"zext.22"
  %".435" = inttoptr i64 %"or.11" to ptr
  %".436" = ptrtoint ptr %".435" to i64
  %".437" = add i64 %".436", 8
  %"for_LDG.11" = inttoptr i64 %".437" to ptr
  %".438" = load float, ptr %"for_LDG.11"
  %".439" = bitcast ptr %"R19" to ptr
  store float %".438", ptr %".439"
  ; BRA `(.L_x_16_split_0x05a0)
  br label %".L_x_16_split_0x05a0"
.L_x_16_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".444" = load i32, ptr %"R6"
  %"zext.24" = zext i32 %".444" to i64
  %".445" = load i32, ptr %"R7"
  %"zext.25" = zext i32 %".445" to i64
  %"shl.13" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.13", %"zext.24"
  %".446" = inttoptr i64 %"or.12" to ptr
  %".447" = ptrtoint ptr %".446" to i64
  %".448" = add i64 %".447", 0
  %"for_LDG.12" = inttoptr i64 %".448" to ptr
  %".449" = load float, ptr %"for_LDG.12"
  %".450" = bitcast ptr %"R6" to ptr
  store float %".449", ptr %".450"
  ; @P2 LDG.E.SYS R14, [R14]
  %".453" = load i1, ptr %"P2"
  %".454" = icmp ne i1 %".453", 1
  br i1 %".454", label %".L_x_16_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".457" = load i32, ptr %"R14"
  %"zext.26" = zext i32 %".457" to i64
  %".458" = load i32, ptr %"R15"
  %"zext.27" = zext i32 %".458" to i64
  %"shl.14" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.14", %"zext.26"
  %".459" = inttoptr i64 %"or.13" to ptr
  %".460" = ptrtoint ptr %".459" to i64
  %".461" = add i64 %".460", 0
  %"for_LDG.13" = inttoptr i64 %".461" to ptr
  %".462" = load float, ptr %"for_LDG.13"
  %".463" = bitcast ptr %"R14" to ptr
  store float %".462", ptr %".463"
  ; BRA `(.L_x_16_split_0x05c0)
  br label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".468" = load float, ptr %"R13"
  %".469" = load float, ptr %"R6"
  %".470" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".468", %".469"
  %"fadd.5" = fadd float %"fmul.5", %".470"
  %".471" = bitcast ptr %"R12" to ptr
  store float %"fadd.5", ptr %".471"
  ; @P2 FFMA R12, R19, R14, R12
  %".474" = load i1, ptr %"P2"
  %".475" = icmp ne i1 %".474", 1
  br i1 %".475", label %".L_x_16_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_18"
.L_x_16_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".478" = load float, ptr %"R19"
  %".479" = load float, ptr %"R14"
  %".480" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".478", %".479"
  %"fadd.6" = fadd float %"fmul.6", %".480"
  %".481" = bitcast ptr %"R12" to ptr
  store float %"fadd.6", ptr %".481"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_18:
  ; IADD3 R8, R8, 0x1, RZ
  %".486" = load i32, ptr %"R8"
  %"add.51" = add i32 %".486", 1
  %"add.52" = add i32 %"add.51", 0
  store i32 %"add.52", ptr %"R8"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".489" = load i32, ptr %"R8"
  %".490" = load i1, ptr %"PT"
  %"cmp.11" = icmp sge i32 %".489", %"Arg_7"
  %".491" = and i1 %"cmp.11", %".490"
  store i1 %".491", ptr %"P2"
  ; @!P2 BRA `(.L_x_19)
  %".494" = load i1, ptr %"P2"
  %".495" = icmp eq i1 %".494", 1
  br i1 %".495", label %".L_x_19", label %".L_x_18_split_0x0610"
.L_x_18_split_0x0610:
  ; @!P1 BRA `(.L_x_20)
  %".498" = load i1, ptr %"P1"
  %".499" = icmp eq i1 %".498", 1
  br i1 %".499", label %".L_x_20", label %".L_x_15"
.L_x_15:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".502" = load i32, ptr %"UR5"
  %"add.53" = add i32 %".502", 1
  %"add.54" = add i32 %"add.53", 0
  store i32 %"add.54", ptr %"UR4"
  ; IMAD R3, R0, UR4, R3
  %".505" = load i32, ptr %"R0"
  %".506" = load i32, ptr %"UR4"
  %".507" = load i32, ptr %"R3"
  %"mul.25" = mul i32 %".505", %".506"
  %"add.55" = add i32 %"mul.25", %".507"
  store i32 %"add.55", ptr %"R3"
  ; MOV R0, 0x4
  store i32 4, ptr %"R0"
  ; IMAD R3, R3, UR4, R2
  %".512" = load i32, ptr %"R3"
  %".513" = load i32, ptr %"UR4"
  %".514" = load i32, ptr %"R2"
  %"mul.26" = mul i32 %".512", %".513"
  %"add.56" = add i32 %"mul.26", %".514"
  store i32 %"add.56", ptr %"R3"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".517" = load i32, ptr %"R3"
  %".518" = load i32, ptr %"R0"
  %"mul.27" = mul i32 %".517", %".518"
  %"add.57" = add i32 %"mul.27", %"Arg_5"
  store i32 %"add.57", ptr %"R2"
  ; STG.E.SYS [R2], R12
  %".521" = load i32, ptr %"R12"
  %".522" = load i32, ptr %"R2"
  %"zext.28" = zext i32 %".522" to i64
  %".523" = load i32, ptr %"R3"
  %"zext.29" = zext i32 %".523" to i64
  %"shl.15" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.15", %"zext.28"
  %".524" = inttoptr i64 %"or.14" to ptr
  %".525" = ptrtoint ptr %".524" to i64
  %".526" = add i64 %".525", 0
  %"for_STG" = inttoptr i64 %".526" to ptr
  store i32 %".521", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_21:
  ; BRA `(.L_x_21)
  br label %".L_x_21"
ExitFunction:
  ret void
}

