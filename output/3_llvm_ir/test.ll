; ModuleID = "PerSecModule"
target triple = "unknown-unknown-unknown"
target datalayout = ""

declare i32 @"thread_idx"()

define void @"_Z8fc_layerPfS_S_S_ii"(i32 %"Arg_0", i32 %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6", i32 %"Arg_7")
{
Entry_.text._Z8fc_layerPfS_S_S_ii:
  %"R1_NOTYPE" = alloca i32, i32 8
  %"R0_NOTYPE" = alloca i32, i32 8
  %"R3_NOTYPE" = alloca i32, i32 8
  %"P0_Bool" = alloca i1, i32 8
  %"PT_Bool" = alloca i1, i32 8
  %"R4_NOTYPE" = alloca i32, i32 8
  %"R7_NOTYPE" = alloca i32, i32 8
  %"RZ_NOTYPE" = alloca i32, i32 8
  %"R2_NOTYPE" = alloca i32, i32 8
  %"R5_NOTYPE" = alloca i32, i32 8
  %"R6_NOTYPE" = alloca i32, i32 8
  %"UR4_NOTYPE" = alloca i32, i32 8
  %"P1_Bool" = alloca i1, i32 8
  %"R8_NOTYPE" = alloca i32, i32 8
  %"R9_NOTYPE" = alloca i32, i32 8
  %"R11_NOTYPE" = alloca i32, i32 8
  %"R10_NOTYPE" = alloca i32, i32 8
  %"R13_NOTYPE" = alloca i32, i32 8
  %"R12_NOTYPE" = alloca i32, i32 8
  %"R15_NOTYPE" = alloca i32, i32 8
  %"R14_NOTYPE" = alloca i32, i32 8
  %"R17_NOTYPE" = alloca i32, i32 8
  %"R16_NOTYPE" = alloca i32, i32 8
  %"R19_NOTYPE" = alloca i32, i32 8
  %"R18_NOTYPE" = alloca i32, i32 8
  %"R21_NOTYPE" = alloca i32, i32 8
  %"R20_NOTYPE" = alloca i32, i32 8
  %"R23_NOTYPE" = alloca i32, i32 8
  %"R22_NOTYPE" = alloca i32, i32 8
  %"R25_NOTYPE" = alloca i32, i32 8
  %"R24_NOTYPE" = alloca i32, i32 8
  %"R27_NOTYPE" = alloca i32, i32 8
  %"R26_NOTYPE" = alloca i32, i32 8
  %"R29_NOTYPE" = alloca i32, i32 8
  %"R28_NOTYPE" = alloca i32, i32 8
  %"R31_NOTYPE" = alloca i32, i32 8
  %"R30_NOTYPE" = alloca i32, i32 8
  %"R33_NOTYPE" = alloca i32, i32 8
  %"R32_NOTYPE" = alloca i32, i32 8
  %"R35_NOTYPE" = alloca i32, i32 8
  %"R34_NOTYPE" = alloca i32, i32 8
  %"R37_NOTYPE" = alloca i32, i32 8
  %"R36_NOTYPE" = alloca i32, i32 8
  %"R39_NOTYPE" = alloca i32, i32 8
  %"R38_NOTYPE" = alloca i32, i32 8
  %"UP0_Bool" = alloca i1, i32 8
  %"URZ_NOTYPE" = alloca i32, i32 8
  %"UR5_NOTYPE" = alloca i32, i32 8
  %"UPT_Bool" = alloca i1, i32 8
  %"P2_Bool" = alloca i1, i32 8
  ; MOV R1, c[0x0][0x28]
  store i32 %"Arg_1", i32* %"R1_NOTYPE"
  ; S2R R0, SR_CTAID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", i32* %"R0_NOTYPE"
  ; S2R R3, SR_TID.X
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", i32* %"R3_NOTYPE"
  ; IMAD R0, R0, c[0x0][0x0], R3
  %".18" = load i32, i32* %"R0_NOTYPE"
  %".19" = load i32, i32* %"R3_NOTYPE"
  %"mul" = mul i32 %".18", %"Arg_0"
  %"add" = add i32 %"mul", %".19"
  store i32 %"add", i32* %"R0_NOTYPE"
  ; ISETP.GE.AND P0, PT, R0, c[0x0][0x184], PT
  %".22" = load i32, i32* %"R0_NOTYPE"
  %".23" = load i1, i1* %"PT_Bool"
  %"cmp" = icmp sge i32 %".22", %"Arg_7"
  %".24" = and i1 %"cmp", %".23"
  store i1 %".24", i1* %"P0_Bool"
  ; @P0 EXIT P0
  %".27" = load i1, i1* %"P0_Bool"
  %".28" = icmp ne i1 %".27", 1
  br i1 %".28", label %".text._Z8fc_layerPfS_S_S_ii_conditionalExpr_0x0050", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0060"
.text._Z8fc_layerPfS_S_S_ii_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z8fc_layerPfS_S_S_ii_split_0x0060:
  ; MOV R4, c[0x0][0x180]
  store i32 %"Arg_6", i32* %"R4_NOTYPE"
  ; IMAD.MOV.U32 R7, RZ, RZ, RZ
  %"mul.1" = mul i32 0, 0
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", i32* %"R7_NOTYPE"
  ; ISETP.GE.AND P0, PT, R4, 0x1, PT
  %".37" = load i32, i32* %"R4_NOTYPE"
  %".38" = load i1, i1* %"PT_Bool"
  %"cmp.1" = icmp sge i32 %".37", 1
  %".39" = and i1 %"cmp.1", %".38"
  store i1 %".39", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_0), !P0
  %".42" = load i1, i1* %"P0_Bool"
  %".43" = icmp eq i1 %".42", 1
  br i1 %".43", label %".L_x_0", label %".text._Z8fc_layerPfS_S_S_ii_split_0x00a0"
.text._Z8fc_layerPfS_S_S_ii_split_0x00a0:
  ; IADD3 R2, R4.reuse, -0x1, RZ
  %".46" = load i32, i32* %"R4_NOTYPE"
  %"add.2" = add i32 %".46", -1
  %"add.3" = add i32 %"add.2", 0
  store i32 %"add.3", i32* %"R2_NOTYPE"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".49" = load i32, i32* %"R4_NOTYPE"
  %".50" = and i32 %".49", 3
  store i32 %".50", i32* %"R4_NOTYPE"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".53" = load i32, i32* %"R2_NOTYPE"
  %".54" = load i1, i1* %"PT_Bool"
  %"cmp.2" = icmp sge i32 %".53", 3
  %".55" = and i1 %"cmp.2", %".54"
  store i1 %".55", i1* %"P0_Bool"
  ; MOV R7, RZ
  %".58" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".58", i32* %"R7_NOTYPE"
  ; MOV R5, RZ
  %".61" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".61", i32* %"R5_NOTYPE"
  ; @!P0 BRA `(.L_x_1), !P0
  %".64" = load i1, i1* %"P0_Bool"
  %".65" = icmp eq i1 %".64", 1
  br i1 %".65", label %".L_x_1", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
.text._Z8fc_layerPfS_S_S_ii_split_0x0100:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".68" = load i32, i32* %"R4_NOTYPE"
  %".69" = sub i32 0, %".68"
  %"add.4" = add i32 %".69", %"Arg_6"
  %"add.5" = add i32 %"add.4", 0
  store i32 %"add.5", i32* %"R6_NOTYPE"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".72" = load i32, i32* %"R0_NOTYPE"
  %"mul.2" = mul i32 %".72", %"Arg_6"
  %"add.6" = add i32 %"mul.2", 0
  store i32 %"add.6", i32* %"R2_NOTYPE"
  ; ULDC.64 UR4, c[0x0][0x160]
  store i32 %"Arg_2", i32* %"UR4_NOTYPE"
  ; IMAD.MOV.U32 R3, RZ, RZ, 0x4
  %"mul.3" = mul i32 0, 0
  %"add.7" = add i32 %"mul.3", 4
  store i32 %"add.7", i32* %"R3_NOTYPE"
  ; ISETP.GT.AND P0, PT, R6, RZ, PT
  %".79" = load i32, i32* %"R6_NOTYPE"
  %".80" = load i1, i1* %"PT_Bool"
  %"cmp.3" = icmp sgt i32 %".79", 0
  %".81" = and i1 %"cmp.3", %".80"
  store i1 %".81", i1* %"P0_Bool"
  ; MOV R7, RZ
  %".84" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".84", i32* %"R7_NOTYPE"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".87" = load i32, i32* %"R2_NOTYPE"
  %".88" = load i32, i32* %"R3_NOTYPE"
  %"mul.4" = mul i32 %".87", %".88"
  %"add.8" = add i32 %"mul.4", %"Arg_3"
  store i32 %"add.8", i32* %"R2_NOTYPE"
  ; MOV R5, RZ
  %".91" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".91", i32* %"R5_NOTYPE"
  ; @!P0 BRA `(.L_x_2), !P0
  %".94" = load i1, i1* %"P0_Bool"
  %".95" = icmp eq i1 %".94", 1
  br i1 %".95", label %".L_x_2", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".98" = load i32, i32* %"R6_NOTYPE"
  %".99" = load i1, i1* %"PT_Bool"
  %"cmp.4" = icmp sgt i32 %".98", 12
  %".100" = and i1 %"cmp.4", %".99"
  store i1 %".100", i1* %"P1_Bool"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".103" = and i1 1, 1
  %".104" = or i1 %".103", 1
  ; @!P1 BRA `(.L_x_3), !P1
  %".106" = load i1, i1* %"P1_Bool"
  %".107" = icmp eq i1 %".106", 1
  br i1 %".107", label %".L_x_3", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".110" = xor i1 1, 1
  %".111" = and i1 %".110", 1
  %".112" = and i1 %".111", 1
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".114" = load i32, i32* %"R2_NOTYPE"
  %".115" = add i32 %".114", 0
  %"for_LDG" = inttoptr i32 %".115" to i32*
  %".116" = load i32, i32* %"for_LDG"
  store i32 %".116", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R9, [UR4]
  %".119" = load i32, i32* %"UR4_NOTYPE"
  %".120" = add i32 %".119", 0
  %"for_LDG.1" = inttoptr i32 %".120" to i32*
  %".121" = load i32, i32* %"for_LDG.1"
  store i32 %".121", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R11, [R2+0x4]
  %".124" = load i32, i32* %"R2_NOTYPE"
  %".125" = add i32 %".124", 4
  %"for_LDG.2" = inttoptr i32 %".125" to i32*
  %".126" = load i32, i32* %"for_LDG.2"
  store i32 %".126", i32* %"R11_NOTYPE"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".129" = load i32, i32* %"UR4_NOTYPE"
  %".130" = add i32 %".129", 4
  %"for_LDG.3" = inttoptr i32 %".130" to i32*
  %".131" = load i32, i32* %"for_LDG.3"
  store i32 %".131", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R13, [R2+0x8]
  %".134" = load i32, i32* %"R2_NOTYPE"
  %".135" = add i32 %".134", 8
  %"for_LDG.4" = inttoptr i32 %".135" to i32*
  %".136" = load i32, i32* %"for_LDG.4"
  store i32 %".136", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".139" = load i32, i32* %"UR4_NOTYPE"
  %".140" = add i32 %".139", 8
  %"for_LDG.5" = inttoptr i32 %".140" to i32*
  %".141" = load i32, i32* %"for_LDG.5"
  store i32 %".141", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R15, [R2+0xc]
  %".144" = load i32, i32* %"R2_NOTYPE"
  %".145" = add i32 %".144", 12
  %"for_LDG.6" = inttoptr i32 %".145" to i32*
  %".146" = load i32, i32* %"for_LDG.6"
  store i32 %".146", i32* %"R15_NOTYPE"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".149" = load i32, i32* %"UR4_NOTYPE"
  %".150" = add i32 %".149", 12
  %"for_LDG.7" = inttoptr i32 %".150" to i32*
  %".151" = load i32, i32* %"for_LDG.7"
  store i32 %".151", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R17, [R2+0x10]
  %".154" = load i32, i32* %"R2_NOTYPE"
  %".155" = add i32 %".154", 16
  %"for_LDG.8" = inttoptr i32 %".155" to i32*
  %".156" = load i32, i32* %"for_LDG.8"
  store i32 %".156", i32* %"R17_NOTYPE"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".159" = load i32, i32* %"UR4_NOTYPE"
  %".160" = add i32 %".159", 16
  %"for_LDG.9" = inttoptr i32 %".160" to i32*
  %".161" = load i32, i32* %"for_LDG.9"
  store i32 %".161", i32* %"R16_NOTYPE"
  ; LDG.E.SYS R19, [R2+0x14]
  %".164" = load i32, i32* %"R2_NOTYPE"
  %".165" = add i32 %".164", 20
  %"for_LDG.10" = inttoptr i32 %".165" to i32*
  %".166" = load i32, i32* %"for_LDG.10"
  store i32 %".166", i32* %"R19_NOTYPE"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".169" = load i32, i32* %"UR4_NOTYPE"
  %".170" = add i32 %".169", 20
  %"for_LDG.11" = inttoptr i32 %".170" to i32*
  %".171" = load i32, i32* %"for_LDG.11"
  store i32 %".171", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R21, [R2+0x18]
  %".174" = load i32, i32* %"R2_NOTYPE"
  %".175" = add i32 %".174", 24
  %"for_LDG.12" = inttoptr i32 %".175" to i32*
  %".176" = load i32, i32* %"for_LDG.12"
  store i32 %".176", i32* %"R21_NOTYPE"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".179" = load i32, i32* %"UR4_NOTYPE"
  %".180" = add i32 %".179", 24
  %"for_LDG.13" = inttoptr i32 %".180" to i32*
  %".181" = load i32, i32* %"for_LDG.13"
  store i32 %".181", i32* %"R20_NOTYPE"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".184" = load i32, i32* %"R2_NOTYPE"
  %".185" = add i32 %".184", 28
  %"for_LDG.14" = inttoptr i32 %".185" to i32*
  %".186" = load i32, i32* %"for_LDG.14"
  store i32 %".186", i32* %"R23_NOTYPE"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".189" = load i32, i32* %"UR4_NOTYPE"
  %".190" = add i32 %".189", 28
  %"for_LDG.15" = inttoptr i32 %".190" to i32*
  %".191" = load i32, i32* %"for_LDG.15"
  store i32 %".191", i32* %"R22_NOTYPE"
  ; LDG.E.SYS R25, [R2+0x20]
  %".194" = load i32, i32* %"R2_NOTYPE"
  %".195" = add i32 %".194", 32
  %"for_LDG.16" = inttoptr i32 %".195" to i32*
  %".196" = load i32, i32* %"for_LDG.16"
  store i32 %".196", i32* %"R25_NOTYPE"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".199" = load i32, i32* %"UR4_NOTYPE"
  %".200" = add i32 %".199", 32
  %"for_LDG.17" = inttoptr i32 %".200" to i32*
  %".201" = load i32, i32* %"for_LDG.17"
  store i32 %".201", i32* %"R24_NOTYPE"
  ; LDG.E.SYS R27, [R2+0x24]
  %".204" = load i32, i32* %"R2_NOTYPE"
  %".205" = add i32 %".204", 36
  %"for_LDG.18" = inttoptr i32 %".205" to i32*
  %".206" = load i32, i32* %"for_LDG.18"
  store i32 %".206", i32* %"R27_NOTYPE"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".209" = load i32, i32* %"UR4_NOTYPE"
  %".210" = add i32 %".209", 36
  %"for_LDG.19" = inttoptr i32 %".210" to i32*
  %".211" = load i32, i32* %"for_LDG.19"
  store i32 %".211", i32* %"R26_NOTYPE"
  ; LDG.E.SYS R29, [R2+0x28]
  %".214" = load i32, i32* %"R2_NOTYPE"
  %".215" = add i32 %".214", 40
  %"for_LDG.20" = inttoptr i32 %".215" to i32*
  %".216" = load i32, i32* %"for_LDG.20"
  store i32 %".216", i32* %"R29_NOTYPE"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".219" = load i32, i32* %"UR4_NOTYPE"
  %".220" = add i32 %".219", 40
  %"for_LDG.21" = inttoptr i32 %".220" to i32*
  %".221" = load i32, i32* %"for_LDG.21"
  store i32 %".221", i32* %"R28_NOTYPE"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".224" = load i32, i32* %"R2_NOTYPE"
  %".225" = add i32 %".224", 44
  %"for_LDG.22" = inttoptr i32 %".225" to i32*
  %".226" = load i32, i32* %"for_LDG.22"
  store i32 %".226", i32* %"R31_NOTYPE"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".229" = load i32, i32* %"UR4_NOTYPE"
  %".230" = add i32 %".229", 44
  %"for_LDG.23" = inttoptr i32 %".230" to i32*
  %".231" = load i32, i32* %"for_LDG.23"
  store i32 %".231", i32* %"R30_NOTYPE"
  ; LDG.E.SYS R33, [R2+0x30]
  %".234" = load i32, i32* %"R2_NOTYPE"
  %".235" = add i32 %".234", 48
  %"for_LDG.24" = inttoptr i32 %".235" to i32*
  %".236" = load i32, i32* %"for_LDG.24"
  store i32 %".236", i32* %"R33_NOTYPE"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".239" = load i32, i32* %"UR4_NOTYPE"
  %".240" = add i32 %".239", 48
  %"for_LDG.25" = inttoptr i32 %".240" to i32*
  %".241" = load i32, i32* %"for_LDG.25"
  store i32 %".241", i32* %"R32_NOTYPE"
  ; LDG.E.SYS R35, [R2+0x34]
  %".244" = load i32, i32* %"R2_NOTYPE"
  %".245" = add i32 %".244", 52
  %"for_LDG.26" = inttoptr i32 %".245" to i32*
  %".246" = load i32, i32* %"for_LDG.26"
  store i32 %".246", i32* %"R35_NOTYPE"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".249" = load i32, i32* %"UR4_NOTYPE"
  %".250" = add i32 %".249", 52
  %"for_LDG.27" = inttoptr i32 %".250" to i32*
  %".251" = load i32, i32* %"for_LDG.27"
  store i32 %".251", i32* %"R34_NOTYPE"
  ; LDG.E.SYS R37, [R2+0x38]
  %".254" = load i32, i32* %"R2_NOTYPE"
  %".255" = add i32 %".254", 56
  %"for_LDG.28" = inttoptr i32 %".255" to i32*
  %".256" = load i32, i32* %"for_LDG.28"
  store i32 %".256", i32* %"R37_NOTYPE"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".259" = load i32, i32* %"UR4_NOTYPE"
  %".260" = add i32 %".259", 56
  %"for_LDG.29" = inttoptr i32 %".260" to i32*
  %".261" = load i32, i32* %"for_LDG.29"
  store i32 %".261", i32* %"R36_NOTYPE"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".264" = load i32, i32* %"R2_NOTYPE"
  %".265" = add i32 %".264", 60
  %"for_LDG.30" = inttoptr i32 %".265" to i32*
  %".266" = load i32, i32* %"for_LDG.30"
  store i32 %".266", i32* %"R39_NOTYPE"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".269" = load i32, i32* %"UR4_NOTYPE"
  %".270" = add i32 %".269", 60
  %"for_LDG.31" = inttoptr i32 %".270" to i32*
  %".271" = load i32, i32* %"for_LDG.31"
  store i32 %".271", i32* %"R38_NOTYPE"
  ; IADD3 R6, R6, -0x10, RZ
  %".274" = load i32, i32* %"R6_NOTYPE"
  %"add.9" = add i32 %".274", -16
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", i32* %"R6_NOTYPE"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".277" = load i32, i32* %"UR4_NOTYPE"
  %"add.11" = add i32 %".277", 64
  %"add.12" = add i32 %"add.11", 0
  store i32 %"add.12", i32* %"UR4_NOTYPE"
  %"carry" = icmp ult i32 %"add.12", %".277"
  store i1 %"carry", i1* %"UP0_Bool"
  ; IADD3 R5, R5, 0x10, RZ
  %".281" = load i32, i32* %"R5_NOTYPE"
  %"add.13" = add i32 %".281", 16
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", i32* %"R5_NOTYPE"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".284" = load i32, i32* %"R6_NOTYPE"
  %".285" = load i1, i1* %"PT_Bool"
  %"cmp.5" = icmp sgt i32 %".284", 12
  %".286" = and i1 %"cmp.5", %".285"
  store i1 %".286", i1* %"P1_Bool"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".289" = load i32, i32* %"UR5_NOTYPE"
  %".290" = load i1, i1* %"UP0_Bool"
  %".291" = sub i1 0, %".290"
  %".292" = zext i1 %".291" to i32
  %"add.15" = add i32 0, %".289"
  %"add.16" = add i32 %"add.15", 0
  %"add.17" = add i32 %"add.16", %".292"
  store i32 %"add.17", i32* %"UR5_NOTYPE"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".295" = load i32, i32* %"R2_NOTYPE"
  %"add.18" = add i32 %".295", 64
  %"add.19" = add i32 %"add.18", 0
  store i32 %"add.19", i32* %"R2_NOTYPE"
  %"carry.1" = icmp ult i32 %"add.19", %".295"
  store i1 %"carry.1", i1* %"P2_Bool"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".299" = load i32, i32* %"R3_NOTYPE"
  %"mul.5" = mul i32 0, 0
  %"add.20" = add i32 %"mul.5", %".299"
  store i32 %"add.20", i32* %"R3_NOTYPE"
  ; FFMA R8, R8, R9, R7
  %".302" = load i32, i32* %"R8_NOTYPE"
  %".303" = load i32, i32* %"R9_NOTYPE"
  %".304" = load i32, i32* %"R7_NOTYPE"
  %"fmul" = fmul i32 %".302", %".303"
  %"fadd" = fadd i32 %"fmul", %".304"
  store i32 %"fadd", i32* %"R8_NOTYPE"
  ; FFMA R8, R11, R10, R8
  %".307" = load i32, i32* %"R11_NOTYPE"
  %".308" = load i32, i32* %"R10_NOTYPE"
  %".309" = load i32, i32* %"R8_NOTYPE"
  %"fmul.1" = fmul i32 %".307", %".308"
  %"fadd.1" = fadd i32 %"fmul.1", %".309"
  store i32 %"fadd.1", i32* %"R8_NOTYPE"
  ; FFMA R8, R13, R12, R8
  %".312" = load i32, i32* %"R13_NOTYPE"
  %".313" = load i32, i32* %"R12_NOTYPE"
  %".314" = load i32, i32* %"R8_NOTYPE"
  %"fmul.2" = fmul i32 %".312", %".313"
  %"fadd.2" = fadd i32 %"fmul.2", %".314"
  store i32 %"fadd.2", i32* %"R8_NOTYPE"
  ; FFMA R8, R15, R14, R8
  %".317" = load i32, i32* %"R15_NOTYPE"
  %".318" = load i32, i32* %"R14_NOTYPE"
  %".319" = load i32, i32* %"R8_NOTYPE"
  %"fmul.3" = fmul i32 %".317", %".318"
  %"fadd.3" = fadd i32 %"fmul.3", %".319"
  store i32 %"fadd.3", i32* %"R8_NOTYPE"
  ; FFMA R8, R17, R16, R8
  %".322" = load i32, i32* %"R17_NOTYPE"
  %".323" = load i32, i32* %"R16_NOTYPE"
  %".324" = load i32, i32* %"R8_NOTYPE"
  %"fmul.4" = fmul i32 %".322", %".323"
  %"fadd.4" = fadd i32 %"fmul.4", %".324"
  store i32 %"fadd.4", i32* %"R8_NOTYPE"
  ; FFMA R8, R19, R18, R8
  %".327" = load i32, i32* %"R19_NOTYPE"
  %".328" = load i32, i32* %"R18_NOTYPE"
  %".329" = load i32, i32* %"R8_NOTYPE"
  %"fmul.5" = fmul i32 %".327", %".328"
  %"fadd.5" = fadd i32 %"fmul.5", %".329"
  store i32 %"fadd.5", i32* %"R8_NOTYPE"
  ; FFMA R8, R21, R20, R8
  %".332" = load i32, i32* %"R21_NOTYPE"
  %".333" = load i32, i32* %"R20_NOTYPE"
  %".334" = load i32, i32* %"R8_NOTYPE"
  %"fmul.6" = fmul i32 %".332", %".333"
  %"fadd.6" = fadd i32 %"fmul.6", %".334"
  store i32 %"fadd.6", i32* %"R8_NOTYPE"
  ; FFMA R8, R23, R22, R8
  %".337" = load i32, i32* %"R23_NOTYPE"
  %".338" = load i32, i32* %"R22_NOTYPE"
  %".339" = load i32, i32* %"R8_NOTYPE"
  %"fmul.7" = fmul i32 %".337", %".338"
  %"fadd.7" = fadd i32 %"fmul.7", %".339"
  store i32 %"fadd.7", i32* %"R8_NOTYPE"
  ; FFMA R8, R25, R24, R8
  %".342" = load i32, i32* %"R25_NOTYPE"
  %".343" = load i32, i32* %"R24_NOTYPE"
  %".344" = load i32, i32* %"R8_NOTYPE"
  %"fmul.8" = fmul i32 %".342", %".343"
  %"fadd.8" = fadd i32 %"fmul.8", %".344"
  store i32 %"fadd.8", i32* %"R8_NOTYPE"
  ; FFMA R8, R27, R26, R8
  %".347" = load i32, i32* %"R27_NOTYPE"
  %".348" = load i32, i32* %"R26_NOTYPE"
  %".349" = load i32, i32* %"R8_NOTYPE"
  %"fmul.9" = fmul i32 %".347", %".348"
  %"fadd.9" = fadd i32 %"fmul.9", %".349"
  store i32 %"fadd.9", i32* %"R8_NOTYPE"
  ; FFMA R8, R29, R28, R8
  %".352" = load i32, i32* %"R29_NOTYPE"
  %".353" = load i32, i32* %"R28_NOTYPE"
  %".354" = load i32, i32* %"R8_NOTYPE"
  %"fmul.10" = fmul i32 %".352", %".353"
  %"fadd.10" = fadd i32 %"fmul.10", %".354"
  store i32 %"fadd.10", i32* %"R8_NOTYPE"
  ; FFMA R8, R31, R30, R8
  %".357" = load i32, i32* %"R31_NOTYPE"
  %".358" = load i32, i32* %"R30_NOTYPE"
  %".359" = load i32, i32* %"R8_NOTYPE"
  %"fmul.11" = fmul i32 %".357", %".358"
  %"fadd.11" = fadd i32 %"fmul.11", %".359"
  store i32 %"fadd.11", i32* %"R8_NOTYPE"
  ; FFMA R8, R33, R32, R8
  %".362" = load i32, i32* %"R33_NOTYPE"
  %".363" = load i32, i32* %"R32_NOTYPE"
  %".364" = load i32, i32* %"R8_NOTYPE"
  %"fmul.12" = fmul i32 %".362", %".363"
  %"fadd.12" = fadd i32 %"fmul.12", %".364"
  store i32 %"fadd.12", i32* %"R8_NOTYPE"
  ; FFMA R8, R35, R34, R8
  %".367" = load i32, i32* %"R35_NOTYPE"
  %".368" = load i32, i32* %"R34_NOTYPE"
  %".369" = load i32, i32* %"R8_NOTYPE"
  %"fmul.13" = fmul i32 %".367", %".368"
  %"fadd.13" = fadd i32 %"fmul.13", %".369"
  store i32 %"fadd.13", i32* %"R8_NOTYPE"
  ; FFMA R8, R37, R36, R8
  %".372" = load i32, i32* %"R37_NOTYPE"
  %".373" = load i32, i32* %"R36_NOTYPE"
  %".374" = load i32, i32* %"R8_NOTYPE"
  %"fmul.14" = fmul i32 %".372", %".373"
  %"fadd.14" = fadd i32 %"fmul.14", %".374"
  store i32 %"fadd.14", i32* %"R8_NOTYPE"
  ; FFMA R7, R39, R38, R8
  %".377" = load i32, i32* %"R39_NOTYPE"
  %".378" = load i32, i32* %"R38_NOTYPE"
  %".379" = load i32, i32* %"R8_NOTYPE"
  %"fmul.15" = fmul i32 %".377", %".378"
  %"fadd.15" = fadd i32 %"fmul.15", %".379"
  store i32 %"fadd.15", i32* %"R7_NOTYPE"
  ; @P1 BRA `(.L_x_4), P1
  %".382" = load i1, i1* %"P1_Bool"
  %".383" = icmp ne i1 %".382", 1
  br i1 %".383", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".386" = load i32, i32* %"R6_NOTYPE"
  %".387" = load i1, i1* %"PT_Bool"
  %"cmp.6" = icmp sgt i32 %".386", 4
  %".388" = and i1 %"cmp.6", %".387"
  store i1 %".388", i1* %"P1_Bool"
  ; @!P1 BRA `(.L_x_5), !P1
  %".391" = load i1, i1* %"P1_Bool"
  %".392" = icmp eq i1 %".391", 1
  br i1 %".392", label %".L_x_5", label %".L_x_3_split_0x0570"
.L_x_3_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".395" = load i32, i32* %"R2_NOTYPE"
  %".396" = add i32 %".395", 0
  %"for_LDG.32" = inttoptr i32 %".396" to i32*
  %".397" = load i32, i32* %"for_LDG.32"
  store i32 %".397", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R9, [UR4]
  %".400" = load i32, i32* %"UR4_NOTYPE"
  %".401" = add i32 %".400", 0
  %"for_LDG.33" = inttoptr i32 %".401" to i32*
  %".402" = load i32, i32* %"for_LDG.33"
  store i32 %".402", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R11, [R2+0x4]
  %".405" = load i32, i32* %"R2_NOTYPE"
  %".406" = add i32 %".405", 4
  %"for_LDG.34" = inttoptr i32 %".406" to i32*
  %".407" = load i32, i32* %"for_LDG.34"
  store i32 %".407", i32* %"R11_NOTYPE"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".410" = load i32, i32* %"UR4_NOTYPE"
  %".411" = add i32 %".410", 4
  %"for_LDG.35" = inttoptr i32 %".411" to i32*
  %".412" = load i32, i32* %"for_LDG.35"
  store i32 %".412", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R13, [R2+0x8]
  %".415" = load i32, i32* %"R2_NOTYPE"
  %".416" = add i32 %".415", 8
  %"for_LDG.36" = inttoptr i32 %".416" to i32*
  %".417" = load i32, i32* %"for_LDG.36"
  store i32 %".417", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".420" = load i32, i32* %"UR4_NOTYPE"
  %".421" = add i32 %".420", 8
  %"for_LDG.37" = inttoptr i32 %".421" to i32*
  %".422" = load i32, i32* %"for_LDG.37"
  store i32 %".422", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R15, [R2+0xc]
  %".425" = load i32, i32* %"R2_NOTYPE"
  %".426" = add i32 %".425", 12
  %"for_LDG.38" = inttoptr i32 %".426" to i32*
  %".427" = load i32, i32* %"for_LDG.38"
  store i32 %".427", i32* %"R15_NOTYPE"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".430" = load i32, i32* %"UR4_NOTYPE"
  %".431" = add i32 %".430", 12
  %"for_LDG.39" = inttoptr i32 %".431" to i32*
  %".432" = load i32, i32* %"for_LDG.39"
  store i32 %".432", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R17, [R2+0x10]
  %".435" = load i32, i32* %"R2_NOTYPE"
  %".436" = add i32 %".435", 16
  %"for_LDG.40" = inttoptr i32 %".436" to i32*
  %".437" = load i32, i32* %"for_LDG.40"
  store i32 %".437", i32* %"R17_NOTYPE"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".440" = load i32, i32* %"UR4_NOTYPE"
  %".441" = add i32 %".440", 16
  %"for_LDG.41" = inttoptr i32 %".441" to i32*
  %".442" = load i32, i32* %"for_LDG.41"
  store i32 %".442", i32* %"R16_NOTYPE"
  ; LDG.E.SYS R19, [R2+0x14]
  %".445" = load i32, i32* %"R2_NOTYPE"
  %".446" = add i32 %".445", 20
  %"for_LDG.42" = inttoptr i32 %".446" to i32*
  %".447" = load i32, i32* %"for_LDG.42"
  store i32 %".447", i32* %"R19_NOTYPE"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".450" = load i32, i32* %"UR4_NOTYPE"
  %".451" = add i32 %".450", 20
  %"for_LDG.43" = inttoptr i32 %".451" to i32*
  %".452" = load i32, i32* %"for_LDG.43"
  store i32 %".452", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R21, [R2+0x18]
  %".455" = load i32, i32* %"R2_NOTYPE"
  %".456" = add i32 %".455", 24
  %"for_LDG.44" = inttoptr i32 %".456" to i32*
  %".457" = load i32, i32* %"for_LDG.44"
  store i32 %".457", i32* %"R21_NOTYPE"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".460" = load i32, i32* %"UR4_NOTYPE"
  %".461" = add i32 %".460", 24
  %"for_LDG.45" = inttoptr i32 %".461" to i32*
  %".462" = load i32, i32* %"for_LDG.45"
  store i32 %".462", i32* %"R20_NOTYPE"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".465" = load i32, i32* %"R2_NOTYPE"
  %".466" = add i32 %".465", 28
  %"for_LDG.46" = inttoptr i32 %".466" to i32*
  %".467" = load i32, i32* %"for_LDG.46"
  store i32 %".467", i32* %"R23_NOTYPE"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".470" = load i32, i32* %"UR4_NOTYPE"
  %".471" = add i32 %".470", 28
  %"for_LDG.47" = inttoptr i32 %".471" to i32*
  %".472" = load i32, i32* %"for_LDG.47"
  store i32 %".472", i32* %"R22_NOTYPE"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".475" = load i32, i32* %"UR4_NOTYPE"
  %"add.21" = add i32 %".475", 32
  %"add.22" = add i32 %"add.21", 0
  store i32 %"add.22", i32* %"UR4_NOTYPE"
  %"carry.2" = icmp ult i32 %"add.22", %".475"
  store i1 %"carry.2", i1* %"UP0_Bool"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".479" = xor i1 1, 1
  %".480" = and i1 %".479", 1
  %".481" = and i1 %".480", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".483" = load i32, i32* %"R5_NOTYPE"
  %"add.23" = add i32 %".483", 8
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", i32* %"R5_NOTYPE"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".486" = load i32, i32* %"UR5_NOTYPE"
  %".487" = load i1, i1* %"UP0_Bool"
  %".488" = sub i1 0, %".487"
  %".489" = zext i1 %".488" to i32
  %"add.25" = add i32 0, %".486"
  %"add.26" = add i32 %"add.25", 0
  %"add.27" = add i32 %"add.26", %".489"
  store i32 %"add.27", i32* %"UR5_NOTYPE"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".492" = load i32, i32* %"R2_NOTYPE"
  %"add.28" = add i32 %".492", 32
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", i32* %"R2_NOTYPE"
  %"carry.3" = icmp ult i32 %"add.29", %".492"
  store i1 %"carry.3", i1* %"P1_Bool"
  ; IADD3 R6, R6, -0x8, RZ
  %".496" = load i32, i32* %"R6_NOTYPE"
  %"add.30" = add i32 %".496", -8
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", i32* %"R6_NOTYPE"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".499" = load i32, i32* %"R3_NOTYPE"
  %".500" = load i1, i1* %"P1_Bool"
  %".501" = sub i1 0, %".500"
  %".502" = zext i1 %".501" to i32
  %"add.32" = add i32 0, %".499"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".502"
  store i32 %"add.34", i32* %"R3_NOTYPE"
  ; FFMA R8, R8, R9, R7
  %".505" = load i32, i32* %"R8_NOTYPE"
  %".506" = load i32, i32* %"R9_NOTYPE"
  %".507" = load i32, i32* %"R7_NOTYPE"
  %"fmul.16" = fmul i32 %".505", %".506"
  %"fadd.16" = fadd i32 %"fmul.16", %".507"
  store i32 %"fadd.16", i32* %"R8_NOTYPE"
  ; FFMA R8, R11, R10, R8
  %".510" = load i32, i32* %"R11_NOTYPE"
  %".511" = load i32, i32* %"R10_NOTYPE"
  %".512" = load i32, i32* %"R8_NOTYPE"
  %"fmul.17" = fmul i32 %".510", %".511"
  %"fadd.17" = fadd i32 %"fmul.17", %".512"
  store i32 %"fadd.17", i32* %"R8_NOTYPE"
  ; FFMA R8, R13, R12, R8
  %".515" = load i32, i32* %"R13_NOTYPE"
  %".516" = load i32, i32* %"R12_NOTYPE"
  %".517" = load i32, i32* %"R8_NOTYPE"
  %"fmul.18" = fmul i32 %".515", %".516"
  %"fadd.18" = fadd i32 %"fmul.18", %".517"
  store i32 %"fadd.18", i32* %"R8_NOTYPE"
  ; FFMA R8, R15, R14, R8
  %".520" = load i32, i32* %"R15_NOTYPE"
  %".521" = load i32, i32* %"R14_NOTYPE"
  %".522" = load i32, i32* %"R8_NOTYPE"
  %"fmul.19" = fmul i32 %".520", %".521"
  %"fadd.19" = fadd i32 %"fmul.19", %".522"
  store i32 %"fadd.19", i32* %"R8_NOTYPE"
  ; FFMA R8, R17, R16, R8
  %".525" = load i32, i32* %"R17_NOTYPE"
  %".526" = load i32, i32* %"R16_NOTYPE"
  %".527" = load i32, i32* %"R8_NOTYPE"
  %"fmul.20" = fmul i32 %".525", %".526"
  %"fadd.20" = fadd i32 %"fmul.20", %".527"
  store i32 %"fadd.20", i32* %"R8_NOTYPE"
  ; FFMA R8, R19, R18, R8
  %".530" = load i32, i32* %"R19_NOTYPE"
  %".531" = load i32, i32* %"R18_NOTYPE"
  %".532" = load i32, i32* %"R8_NOTYPE"
  %"fmul.21" = fmul i32 %".530", %".531"
  %"fadd.21" = fadd i32 %"fmul.21", %".532"
  store i32 %"fadd.21", i32* %"R8_NOTYPE"
  ; FFMA R8, R21, R20, R8
  %".535" = load i32, i32* %"R21_NOTYPE"
  %".536" = load i32, i32* %"R20_NOTYPE"
  %".537" = load i32, i32* %"R8_NOTYPE"
  %"fmul.22" = fmul i32 %".535", %".536"
  %"fadd.22" = fadd i32 %"fmul.22", %".537"
  store i32 %"fadd.22", i32* %"R8_NOTYPE"
  ; FFMA R7, R23, R22, R8
  %".540" = load i32, i32* %"R23_NOTYPE"
  %".541" = load i32, i32* %"R22_NOTYPE"
  %".542" = load i32, i32* %"R8_NOTYPE"
  %"fmul.23" = fmul i32 %".540", %".541"
  %"fadd.23" = fadd i32 %"fmul.23", %".542"
  store i32 %"fadd.23", i32* %"R7_NOTYPE"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".545" = load i32, i32* %"R6_NOTYPE"
  %".546" = load i1, i1* %"PT_Bool"
  %"cmp.7" = icmp ne i32 %".545", 0
  %".547" = or i1 %"cmp.7", %".546"
  store i1 %".547", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_1), !P0
  %".550" = load i1, i1* %"P0_Bool"
  %".551" = icmp eq i1 %".550", 1
  br i1 %".551", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".554" = load i32, i32* %"R2_NOTYPE"
  %".555" = add i32 %".554", 0
  %"for_LDG.48" = inttoptr i32 %".555" to i32*
  %".556" = load i32, i32* %"for_LDG.48"
  store i32 %".556", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R9, [UR4]
  %".559" = load i32, i32* %"UR4_NOTYPE"
  %".560" = add i32 %".559", 0
  %"for_LDG.49" = inttoptr i32 %".560" to i32*
  %".561" = load i32, i32* %"for_LDG.49"
  store i32 %".561", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R11, [R2+0x4]
  %".564" = load i32, i32* %"R2_NOTYPE"
  %".565" = add i32 %".564", 4
  %"for_LDG.50" = inttoptr i32 %".565" to i32*
  %".566" = load i32, i32* %"for_LDG.50"
  store i32 %".566", i32* %"R11_NOTYPE"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".569" = load i32, i32* %"UR4_NOTYPE"
  %".570" = add i32 %".569", 4
  %"for_LDG.51" = inttoptr i32 %".570" to i32*
  %".571" = load i32, i32* %"for_LDG.51"
  store i32 %".571", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R13, [R2+0x8]
  %".574" = load i32, i32* %"R2_NOTYPE"
  %".575" = add i32 %".574", 8
  %"for_LDG.52" = inttoptr i32 %".575" to i32*
  %".576" = load i32, i32* %"for_LDG.52"
  store i32 %".576", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".579" = load i32, i32* %"UR4_NOTYPE"
  %".580" = add i32 %".579", 8
  %"for_LDG.53" = inttoptr i32 %".580" to i32*
  %".581" = load i32, i32* %"for_LDG.53"
  store i32 %".581", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R15, [R2+0xc]
  %".584" = load i32, i32* %"R2_NOTYPE"
  %".585" = add i32 %".584", 12
  %"for_LDG.54" = inttoptr i32 %".585" to i32*
  %".586" = load i32, i32* %"for_LDG.54"
  store i32 %".586", i32* %"R15_NOTYPE"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".589" = load i32, i32* %"UR4_NOTYPE"
  %".590" = add i32 %".589", 12
  %"for_LDG.55" = inttoptr i32 %".590" to i32*
  %".591" = load i32, i32* %"for_LDG.55"
  store i32 %".591", i32* %"R14_NOTYPE"
  ; IADD3 R6, R6, -0x4, RZ
  %".594" = load i32, i32* %"R6_NOTYPE"
  %"add.35" = add i32 %".594", -4
  %"add.36" = add i32 %"add.35", 0
  store i32 %"add.36", i32* %"R6_NOTYPE"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".597" = load i32, i32* %"UR4_NOTYPE"
  %"add.37" = add i32 %".597", 16
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", i32* %"UR4_NOTYPE"
  %"carry.4" = icmp ult i32 %"add.38", %".597"
  store i1 %"carry.4", i1* %"UP0_Bool"
  ; IADD3 R5, R5, 0x4, RZ
  %".601" = load i32, i32* %"R5_NOTYPE"
  %"add.39" = add i32 %".601", 4
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", i32* %"R5_NOTYPE"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".604" = load i32, i32* %"R6_NOTYPE"
  %".605" = load i1, i1* %"PT_Bool"
  %"cmp.8" = icmp ne i32 %".604", 0
  %".606" = and i1 %"cmp.8", %".605"
  store i1 %".606", i1* %"P0_Bool"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".609" = load i32, i32* %"UR5_NOTYPE"
  %".610" = load i1, i1* %"UP0_Bool"
  %".611" = sub i1 0, %".610"
  %".612" = zext i1 %".611" to i32
  %"add.41" = add i32 0, %".609"
  %"add.42" = add i32 %"add.41", 0
  %"add.43" = add i32 %"add.42", %".612"
  store i32 %"add.43", i32* %"UR5_NOTYPE"
  ; FFMA R8, R8, R9, R7
  %".615" = load i32, i32* %"R8_NOTYPE"
  %".616" = load i32, i32* %"R9_NOTYPE"
  %".617" = load i32, i32* %"R7_NOTYPE"
  %"fmul.24" = fmul i32 %".615", %".616"
  %"fadd.24" = fadd i32 %"fmul.24", %".617"
  store i32 %"fadd.24", i32* %"R8_NOTYPE"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".620" = load i32, i32* %"R2_NOTYPE"
  %"add.44" = add i32 %".620", 16
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", i32* %"R9_NOTYPE"
  %"carry.5" = icmp ult i32 %"add.45", %".620"
  store i1 %"carry.5", i1* %"P1_Bool"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".624" = load i32, i32* %"R9_NOTYPE"
  %"mul.6" = mul i32 0, 0
  %"add.46" = add i32 %"mul.6", %".624"
  store i32 %"add.46", i32* %"R2_NOTYPE"
  ; FFMA R8, R11, R10, R8
  %".627" = load i32, i32* %"R11_NOTYPE"
  %".628" = load i32, i32* %"R10_NOTYPE"
  %".629" = load i32, i32* %"R8_NOTYPE"
  %"fmul.25" = fmul i32 %".627", %".628"
  %"fadd.25" = fadd i32 %"fmul.25", %".629"
  store i32 %"fadd.25", i32* %"R8_NOTYPE"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".632" = load i32, i32* %"R3_NOTYPE"
  %".633" = load i1, i1* %"P1_Bool"
  %".634" = sub i1 0, %".633"
  %".635" = zext i1 %".634" to i32
  %"add.47" = add i32 0, %".632"
  %"add.48" = add i32 %"add.47", 0
  %"add.49" = add i32 %"add.48", %".635"
  store i32 %"add.49", i32* %"R10_NOTYPE"
  ; MOV R3, R10
  %".638" = load i32, i32* %"R10_NOTYPE"
  store i32 %".638", i32* %"R3_NOTYPE"
  ; FFMA R8, R13, R12, R8
  %".641" = load i32, i32* %"R13_NOTYPE"
  %".642" = load i32, i32* %"R12_NOTYPE"
  %".643" = load i32, i32* %"R8_NOTYPE"
  %"fmul.26" = fmul i32 %".641", %".642"
  %"fadd.26" = fadd i32 %"fmul.26", %".643"
  store i32 %"fadd.26", i32* %"R8_NOTYPE"
  ; FFMA R7, R15, R14, R8
  %".646" = load i32, i32* %"R15_NOTYPE"
  %".647" = load i32, i32* %"R14_NOTYPE"
  %".648" = load i32, i32* %"R8_NOTYPE"
  %"fmul.27" = fmul i32 %".646", %".647"
  %"fadd.27" = fadd i32 %"fmul.27", %".648"
  store i32 %"fadd.27", i32* %"R7_NOTYPE"
  ; @P0 BRA `(.L_x_2), P0
  %".651" = load i1, i1* %"P0_Bool"
  %".652" = icmp ne i1 %".651", 1
  br i1 %".652", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".655" = load i32, i32* %"R4_NOTYPE"
  %".656" = load i1, i1* %"PT_Bool"
  %"cmp.9" = icmp ne i32 %".655", 0
  %".657" = and i1 %"cmp.9", %".656"
  store i1 %".657", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_0), !P0
  %".660" = load i1, i1* %"P0_Bool"
  %".661" = icmp eq i1 %".660", 1
  br i1 %".661", label %".L_x_0", label %".L_x_1_split_0x0900"
.L_x_1_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, i32* %"R8_NOTYPE"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".666" = load i32, i32* %"R0_NOTYPE"
  %".667" = load i32, i32* %"R5_NOTYPE"
  %"mul.7" = mul i32 %".666", %"Arg_6"
  %"add.50" = add i32 %"mul.7", %".667"
  store i32 %"add.50", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".670" = load i32, i32* %"R2_NOTYPE"
  %".671" = load i32, i32* %"R8_NOTYPE"
  %"mul.8" = mul i32 %".670", %".671"
  %"add.51" = add i32 %"mul.8", %"Arg_3"
  store i32 %"add.51", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".674" = load i32, i32* %"R5_NOTYPE"
  %".675" = load i32, i32* %"R8_NOTYPE"
  %"mul.9" = mul i32 %".674", %".675"
  %"add.52" = add i32 %"mul.9", %"Arg_2"
  store i32 %"add.52", i32* %"R8_NOTYPE"
  ; MOV R6, R2
  %".678" = load i32, i32* %"R2_NOTYPE"
  store i32 %".678", i32* %"R6_NOTYPE"
.L_x_6:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".681" = load i32, i32* %"R6_NOTYPE"
  %"mul.10" = mul i32 0, 0
  %"add.53" = add i32 %"mul.10", %".681"
  store i32 %"add.53", i32* %"R2_NOTYPE"
  ; LDG.E.SYS R5, [R8]
  %".684" = load i32, i32* %"R8_NOTYPE"
  %".685" = add i32 %".684", 0
  %"for_LDG.56" = inttoptr i32 %".685" to i32*
  %".686" = load i32, i32* %"for_LDG.56"
  store i32 %".686", i32* %"R5_NOTYPE"
  ; LDG.E.SYS R2, [R2]
  %".689" = load i32, i32* %"R2_NOTYPE"
  %".690" = add i32 %".689", 0
  %"for_LDG.57" = inttoptr i32 %".690" to i32*
  %".691" = load i32, i32* %"for_LDG.57"
  store i32 %".691", i32* %"R2_NOTYPE"
  ; IADD3 R4, R4, -0x1, RZ
  %".694" = load i32, i32* %"R4_NOTYPE"
  %"add.54" = add i32 %".694", -1
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", i32* %"R4_NOTYPE"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".697" = load i32, i32* %"R4_NOTYPE"
  %".698" = load i1, i1* %"PT_Bool"
  %"cmp.10" = icmp ne i32 %".697", 0
  %".699" = and i1 %"cmp.10", %".698"
  store i1 %".699", i1* %"P0_Bool"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".702" = load i32, i32* %"R6_NOTYPE"
  %"add.56" = add i32 %".702", 4
  %"add.57" = add i32 %"add.56", 0
  store i32 %"add.57", i32* %"R6_NOTYPE"
  %"carry.6" = icmp ult i32 %"add.57", %".702"
  store i1 %"carry.6", i1* %"P1_Bool"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".706" = load i32, i32* %"R8_NOTYPE"
  %"add.58" = add i32 %".706", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", i32* %"R8_NOTYPE"
  %"carry.7" = icmp ult i32 %"add.59", %".706"
  store i1 %"carry.7", i1* %"P2_Bool"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".710" = load i32, i32* %"R3_NOTYPE"
  %".711" = load i1, i1* %"P1_Bool"
  %".712" = sub i1 0, %".711"
  %".713" = zext i1 %".712" to i32
  %"add.60" = add i32 0, %".710"
  %"add.61" = add i32 %"add.60", 0
  %"add.62" = add i32 %"add.61", %".713"
  store i32 %"add.62", i32* %"R3_NOTYPE"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".716" = load i32, i32* %"R9_NOTYPE"
  %".717" = load i1, i1* %"P2_Bool"
  %".718" = sub i1 0, %".717"
  %".719" = zext i1 %".718" to i32
  %"add.63" = add i32 0, %".716"
  %"add.64" = add i32 %"add.63", 0
  %"add.65" = add i32 %"add.64", %".719"
  store i32 %"add.65", i32* %"R9_NOTYPE"
  ; FFMA R7, R2, R5, R7
  %".722" = load i32, i32* %"R2_NOTYPE"
  %".723" = load i32, i32* %"R5_NOTYPE"
  %".724" = load i32, i32* %"R7_NOTYPE"
  %"fmul.28" = fmul i32 %".722", %".723"
  %"fadd.28" = fadd i32 %"fmul.28", %".724"
  store i32 %"fadd.28", i32* %"R7_NOTYPE"
  ; @P0 BRA `(.L_x_6), P0
  %".727" = load i1, i1* %"P0_Bool"
  %".728" = icmp ne i1 %".727", 1
  br i1 %".728", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, i32* %"R5_NOTYPE"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".733" = load i32, i32* %"R0_NOTYPE"
  %".734" = load i32, i32* %"R5_NOTYPE"
  %"mul.11" = mul i32 %".733", %".734"
  %"add.66" = add i32 %"mul.11", %"Arg_4"
  store i32 %"add.66", i32* %"R2_NOTYPE"
  ; LDG.E.SYS R2, [R2]
  %".737" = load i32, i32* %"R2_NOTYPE"
  %".738" = add i32 %".737", 0
  %"for_LDG.58" = inttoptr i32 %".738" to i32*
  %".739" = load i32, i32* %"for_LDG.58"
  store i32 %".739", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".742" = load i32, i32* %"R0_NOTYPE"
  %".743" = load i32, i32* %"R5_NOTYPE"
  %"mul.12" = mul i32 %".742", %".743"
  %"add.67" = add i32 %"mul.12", %"Arg_5"
  store i32 %"add.67", i32* %"R4_NOTYPE"
  ; FADD R7, R2, R7
  %".746" = load i32, i32* %"R2_NOTYPE"
  %".747" = load i32, i32* %"R7_NOTYPE"
  %"fadd.29" = fadd i32 %".746", %".747"
  store i32 %"fadd.29", i32* %"R7_NOTYPE"
  ; STG.E.SYS [R4], R7
  %".750" = load i32, i32* %"R7_NOTYPE"
  %".751" = load i32, i32* %"R4_NOTYPE"
  %".752" = add i32 %".751", 0
  %"for_STG" = inttoptr i32 %".752" to i32*
  store i32 %".750", i32* %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_7:
  ; BRA `(.L_x_7)
  br label %".L_x_7"
ExitFunction:
  ret void
}

define void @"_Z10max_pool2dPfS_iii"(i32 %"Arg_0", i32 %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6", i32 %"Arg_7")
{
Entry_.text._Z10max_pool2dPfS_iii:
  %"R1_NOTYPE" = alloca i32, i32 8
  %"RZ_NOTYPE" = alloca i32, i32 8
  %"R7_NOTYPE" = alloca i32, i32 8
  %"UR4_NOTYPE" = alloca i32, i32 8
  %"R10_NOTYPE" = alloca i32, i32 8
  %"UR5_NOTYPE" = alloca i32, i32 8
  %"URZ_NOTYPE" = alloca i32, i32 8
  %"UPT_Bool" = alloca i1, i32 8
  %"R0_NOTYPE" = alloca i32, i32 8
  %"R19_NOTYPE" = alloca i32, i32 8
  %"P1_Bool" = alloca i1, i32 8
  %"PT_Bool" = alloca i1, i32 8
  %"R2_NOTYPE" = alloca i32, i32 8
  %"R3_NOTYPE" = alloca i32, i32 8
  %"R4_NOTYPE" = alloca i32, i32 8
  %"R5_NOTYPE" = alloca i32, i32 8
  %"P2_Bool" = alloca i1, i32 8
  %"P0_Bool" = alloca i1, i32 8
  %"R21_NOTYPE" = alloca i32, i32 8
  %"PT_NOTYPE" = alloca i32, i32 8
  %"R15_NOTYPE" = alloca i32, i32 8
  %"R11_NOTYPE" = alloca i32, i32 8
  %"R13_NOTYPE" = alloca i32, i32 8
  %"R12_NOTYPE" = alloca i32, i32 8
  %"R20_NOTYPE" = alloca i32, i32 8
  %"R16_NOTYPE" = alloca i32, i32 8
  %"R14_NOTYPE" = alloca i32, i32 8
  %"R17_NOTYPE" = alloca i32, i32 8
  %"R23_NOTYPE" = alloca i32, i32 8
  %"R6_NOTYPE" = alloca i32, i32 8
  %"R8_NOTYPE" = alloca i32, i32 8
  %"R18_NOTYPE" = alloca i32, i32 8
  ; IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28]
  %"mul" = mul i32 0, 0
  %"add" = add i32 %"mul", %"Arg_2"
  store i32 %"add", i32* %"R1_NOTYPE"
  ; IABS R7, c[0x0][0x174]
  %".14" = icmp sge i32 %"Arg_6", 0
  %".15" = sub i32 0, %"Arg_6"
  %"iabs" = select  i1 %".14", i32 %"Arg_6", i32 %".15"
  store i32 %"iabs", i32* %"R7_NOTYPE"
  ; ULDC.64 UR4, c[0x0][0x170]
  store i32 %"Arg_5", i32* %"UR4_NOTYPE"
  ; S2R R10, SR_CTAID.Y
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", i32* %"R10_NOTYPE"
  ; ULOP3.LUT UR4, UR4, UR5, URZ, 0x3c, !UPT
  %".22" = load i32, i32* %"UR4_NOTYPE"
  %".23" = load i32, i32* %"UR5_NOTYPE"
  %".24" = xor i32 %".22", %".23"
  store i32 %".24", i32* %"UR4_NOTYPE"
  ; I2F.RP R0, R7
  %".27" = load i32, i32* %"R7_NOTYPE"
  store i32 %".27", i32* %"R0_NOTYPE"
  ; S2R R19, SR_CTAID.Z
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", i32* %"R19_NOTYPE"
  ; ISETP.LE.AND P1, PT, RZ, UR4, PT
  %".32" = load i32, i32* %"UR4_NOTYPE"
  %".33" = load i1, i1* %"PT_Bool"
  %"cmp" = icmp sle i32 0, %".32"
  %".34" = and i1 %"cmp", %".33"
  store i1 %".34", i1* %"P1_Bool"
  ; MUFU.RCP R0, R0
  %".37" = load i32, i32* %"R0_NOTYPE"
  %".38" = fdiv i32 1, %".37"
  store i32 %".38", i32* %"R0_NOTYPE"
  ; IADD3 R2, R0, 0xffffffe, RZ
  %".41" = load i32, i32* %"R0_NOTYPE"
  %"add.1" = add i32 %".41", 268435454
  %"add.2" = add i32 %"add.1", 0
  store i32 %"add.2", i32* %"R2_NOTYPE"
  ; F2I.FTZ.U32.TRUNC.NTZ R3, R2
  %".44" = load i32, i32* %"R2_NOTYPE"
  store i32 %".44", i32* %"R3_NOTYPE"
  ; IMAD.MOV.U32 R2, RZ, RZ, RZ
  %"mul.1" = mul i32 0, 0
  %"add.3" = add i32 %"mul.1", 0
  store i32 %"add.3", i32* %"R2_NOTYPE"
  ; IMAD.MOV R4, RZ, RZ, -R3
  %".49" = load i32, i32* %"R3_NOTYPE"
  %".50" = sub i32 0, %".49"
  %"mul.2" = mul i32 0, 0
  %"add.4" = add i32 %"mul.2", %".50"
  store i32 %"add.4", i32* %"R4_NOTYPE"
  ; IMAD R5, R4, R7, RZ
  %".53" = load i32, i32* %"R4_NOTYPE"
  %".54" = load i32, i32* %"R7_NOTYPE"
  %"mul.3" = mul i32 %".53", %".54"
  %"add.5" = add i32 %"mul.3", 0
  store i32 %"add.5", i32* %"R5_NOTYPE"
  ; IABS R4, c[0x0][0x170]
  %".57" = icmp sge i32 %"Arg_5", 0
  %".58" = sub i32 0, %"Arg_5"
  %"iabs.1" = select  i1 %".57", i32 %"Arg_5", i32 %".58"
  store i32 %"iabs.1", i32* %"R4_NOTYPE"
  ; IMAD.HI.U32 R3, R3, R5, R2
  %".61" = load i32, i32* %"R3_NOTYPE"
  %".62" = load i32, i32* %"R5_NOTYPE"
  %".63" = load i32, i32* %"R2_NOTYPE"
  %"mul.4" = mul i32 %".61", %".62"
  %"add.6" = add i32 %"mul.4", %".63"
  store i32 %"add.6", i32* %"R3_NOTYPE"
  ; S2R R2, SR_CTAID.X
  %"ThreadIdx.2" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.2", i32* %"R2_NOTYPE"
  ; IMAD.HI.U32 R3, R3, R4, RZ
  %".68" = load i32, i32* %"R3_NOTYPE"
  %".69" = load i32, i32* %"R4_NOTYPE"
  %"mul.5" = mul i32 %".68", %".69"
  %"add.7" = add i32 %"mul.5", 0
  store i32 %"add.7", i32* %"R3_NOTYPE"
  ; S2R R5, SR_TID.X
  %"ThreadIdx.3" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.3", i32* %"R5_NOTYPE"
  ; IMAD.MOV R0, RZ, RZ, -R3
  %".74" = load i32, i32* %"R3_NOTYPE"
  %".75" = sub i32 0, %".74"
  %"mul.6" = mul i32 0, 0
  %"add.8" = add i32 %"mul.6", %".75"
  store i32 %"add.8", i32* %"R0_NOTYPE"
  ; IMAD R0, R7, R0, R4
  %".78" = load i32, i32* %"R7_NOTYPE"
  %".79" = load i32, i32* %"R0_NOTYPE"
  %".80" = load i32, i32* %"R4_NOTYPE"
  %"mul.7" = mul i32 %".78", %".79"
  %"add.9" = add i32 %"mul.7", %".80"
  store i32 %"add.9", i32* %"R0_NOTYPE"
  ; ISETP.GT.U32.AND P2, PT, R7, R0, PT
  %".83" = load i32, i32* %"R7_NOTYPE"
  %".84" = load i32, i32* %"R0_NOTYPE"
  %".85" = load i1, i1* %"PT_Bool"
  %"cmp.1" = icmp sgt i32 %".83", %".84"
  %".86" = and i1 %"cmp.1", %".85"
  store i1 %".86", i1* %"P2_Bool"
  ; @!P2 IADD3 R0, R0, -R7.reuse, RZ, !P2
  %".89" = load i1, i1* %"P2_Bool"
  %".90" = icmp eq i1 %".89", 1
  br i1 %".90", label %".text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160", label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160:
  ; IADD3 R0, R0, -R7.reuse, RZ
  %".93" = load i32, i32* %"R0_NOTYPE"
  %".94" = load i32, i32* %"R7_NOTYPE"
  %".95" = sub i32 0, %".94"
  %"add.10" = add i32 %".93", %".95"
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", i32* %"R0_NOTYPE"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0170)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_split_0x0170:
  ; @!P2 IADD3 R3, R3, 0x1, RZ, !P2
  %".100" = load i1, i1* %"P2_Bool"
  %".101" = icmp eq i1 %".100", 1
  br i1 %".101", label %".text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170", label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170:
  ; IADD3 R3, R3, 0x1, RZ
  %".104" = load i32, i32* %"R3_NOTYPE"
  %"add.12" = add i32 %".104", 1
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", i32* %"R3_NOTYPE"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0180)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0180:
  ; ISETP.GE.U32.AND P0, PT, R0, R7, PT
  %".109" = load i32, i32* %"R0_NOTYPE"
  %".110" = load i32, i32* %"R7_NOTYPE"
  %".111" = load i1, i1* %"PT_Bool"
  %"cmp.2" = icmp sge i32 %".109", %".110"
  %".112" = and i1 %"cmp.2", %".111"
  store i1 %".112", i1* %"P0_Bool"
  ; IMAD R0, R2, c[0x0][0x0], R5
  %".115" = load i32, i32* %"R2_NOTYPE"
  %".116" = load i32, i32* %"R5_NOTYPE"
  %"mul.8" = mul i32 %".115", %"Arg_0"
  %"add.14" = add i32 %"mul.8", %".116"
  store i32 %"add.14", i32* %"R0_NOTYPE"
  ; S2R R7, SR_TID.Y
  %"ThreadIdx.4" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.4", i32* %"R7_NOTYPE"
  ; ISETP.NE.AND P2, PT, RZ, c[0x0][0x174], PT
  %".121" = load i1, i1* %"PT_Bool"
  %"cmp.3" = icmp ne i32 0, %"Arg_6"
  %".122" = and i1 %"cmp.3", %".121"
  store i1 %".122", i1* %"P2_Bool"
  ; @P0 IADD3 R3, R3, 0x1, RZ, P0
  %".125" = load i1, i1* %"P0_Bool"
  %".126" = icmp ne i1 %".125", 1
  br i1 %".126", label %".text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0", label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0:
  ; IADD3 R3, R3, 0x1, RZ
  %".129" = load i32, i32* %"R3_NOTYPE"
  %"add.15" = add i32 %".129", 1
  %"add.16" = add i32 %"add.15", 0
  store i32 %"add.16", i32* %"R3_NOTYPE"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01d0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x01d0:
  ; IMAD.MOV.U32 R21, RZ, RZ, R3
  %".134" = load i32, i32* %"R3_NOTYPE"
  %"mul.9" = mul i32 0, 0
  %"add.17" = add i32 %"mul.9", %".134"
  store i32 %"add.17", i32* %"R21_NOTYPE"
  ; @!P1 IMAD.MOV R21, RZ, RZ, -R21, !P1
  %".137" = load i1, i1* %"P1_Bool"
  %".138" = icmp eq i1 %".137", 1
  br i1 %".138", label %".text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0", label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0:
  ; IMAD.MOV R21, RZ, RZ, -R21
  %".141" = load i32, i32* %"R21_NOTYPE"
  %".142" = sub i32 0, %".141"
  %"mul.10" = mul i32 0, 0
  %"add.18" = add i32 %"mul.10", %".142"
  store i32 %"add.18", i32* %"R21_NOTYPE"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01f0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01f0:
  ; @!P2 LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT, !P2
  %".147" = load i1, i1* %"P2_Bool"
  %".148" = icmp eq i1 %".147", 1
  br i1 %".148", label %".text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0", label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0:
  ; LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".151" = xor i32 %"Arg_6", -1
  store i32 %".151", i32* %"R21_NOTYPE"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0200)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x0200:
  ; IMAD R10, R10, c[0x0][0x4], R7
  %".156" = load i32, i32* %"R10_NOTYPE"
  %".157" = load i32, i32* %"R7_NOTYPE"
  %"mul.11" = mul i32 %".156", %"Arg_1"
  %"add.19" = add i32 %"mul.11", %".157"
  store i32 %"add.19", i32* %"R10_NOTYPE"
  ; ISETP.GE.AND P0, PT, R0, R21, PT
  %".160" = load i32, i32* %"R0_NOTYPE"
  %".161" = load i32, i32* %"R21_NOTYPE"
  %".162" = load i1, i1* %"PT_Bool"
  %"cmp.4" = icmp sge i32 %".160", %".161"
  %".163" = and i1 %"cmp.4", %".162"
  store i1 %".163", i1* %"P0_Bool"
  ; ISETP.GE.OR P0, PT, R10, R21, P0
  %".166" = load i32, i32* %"R10_NOTYPE"
  %".167" = load i32, i32* %"R21_NOTYPE"
  %".168" = load i1, i1* %"PT_Bool"
  %"cmp.5" = icmp sge i32 %".166", %".167"
  %".169" = or i1 %"cmp.5", %".168"
  store i1 %".169", i1* %"P0_Bool"
  ; ISETP.GE.OR P0, PT, R19, c[0x0][0x178], P0
  %".172" = load i32, i32* %"R19_NOTYPE"
  %".173" = load i1, i1* %"PT_Bool"
  %"cmp.6" = icmp sge i32 %".172", %"Arg_7"
  %".174" = or i1 %"cmp.6", %".173"
  store i1 %".174", i1* %"P0_Bool"
  ; @P0 EXIT P0
  %".177" = load i1, i1* %"P0_Bool"
  %".178" = icmp ne i1 %".177", 1
  br i1 %".178", label %".text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240", label %".text._Z10max_pool2dPfS_iii_split_0x0250"
.text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240:
  ; EXIT
  br label %"ExitFunction"
.text._Z10max_pool2dPfS_iii_split_0x0250:
  ; IMAD.MOV.U32 R15, RZ, RZ, c[0x0][0x174]
  %"mul.12" = mul i32 0, 0
  %"add.20" = add i32 %"mul.12", %"Arg_6"
  store i32 %"add.20", i32* %"R15_NOTYPE"
  ; MOV R11, 0xff800000
  store i32 4286578688, i32* %"R11_NOTYPE"
  ; ISETP.GE.AND P0, PT, R15, 0x1, PT
  %".187" = load i32, i32* %"R15_NOTYPE"
  %".188" = load i1, i1* %"PT_Bool"
  %"cmp.7" = icmp sge i32 %".187", 1
  %".189" = and i1 %"cmp.7", %".188"
  store i1 %".189", i1* %"P0_Bool"
  ; @!P0 BRA `(.L_x_8), !P0
  %".192" = load i1, i1* %"P0_Bool"
  %".193" = icmp eq i1 %".192", 1
  br i1 %".193", label %".L_x_8", label %".text._Z10max_pool2dPfS_iii_split_0x0290"
.text._Z10max_pool2dPfS_iii_split_0x0290:
  ; IMAD R3, R19, c[0x0][0x170], RZ
  %".196" = load i32, i32* %"R19_NOTYPE"
  %"mul.13" = mul i32 %".196", %"Arg_5"
  %"add.21" = add i32 %"mul.13", 0
  store i32 %"add.21", i32* %"R3_NOTYPE"
  ; IADD3 R2, R15.reuse, -0x1, RZ
  %".199" = load i32, i32* %"R15_NOTYPE"
  %"add.22" = add i32 %".199", -1
  %"add.23" = add i32 %"add.22", 0
  store i32 %"add.23", i32* %"R2_NOTYPE"
  ; IMAD R13, R0, c[0x0][0x174], RZ
  %".202" = load i32, i32* %"R0_NOTYPE"
  %"mul.14" = mul i32 %".202", %"Arg_6"
  %"add.24" = add i32 %"mul.14", 0
  store i32 %"add.24", i32* %"R13_NOTYPE"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".205" = load i32, i32* %"R15_NOTYPE"
  %".206" = and i32 %".205", 3
  store i32 %".206", i32* %"R15_NOTYPE"
  ; IMAD R12, R10, c[0x0][0x174], R3
  %".209" = load i32, i32* %"R10_NOTYPE"
  %".210" = load i32, i32* %"R3_NOTYPE"
  %"mul.15" = mul i32 %".209", %"Arg_6"
  %"add.25" = add i32 %"mul.15", %".210"
  store i32 %"add.25", i32* %"R12_NOTYPE"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".213" = load i32, i32* %"R2_NOTYPE"
  %".214" = load i1, i1* %"PT_Bool"
  %"cmp.8" = icmp sge i32 %".213", 3
  %".215" = and i1 %"cmp.8", %".214"
  store i1 %".215", i1* %"P0_Bool"
  ; IMAD.MOV.U32 R11, RZ, RZ, -0x800000
  %"mul.16" = mul i32 0, 0
  %"add.26" = add i32 %"mul.16", -8388608
  store i32 %"add.26", i32* %"R11_NOTYPE"
  ; IADD3 R20, R15, -c[0x0][0x174], RZ
  %".220" = load i32, i32* %"R15_NOTYPE"
  %".221" = sub i32 0, %"Arg_6"
  %"add.27" = add i32 %".220", %".221"
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", i32* %"R20_NOTYPE"
  ; IMAD.MOV.U32 R16, RZ, RZ, RZ
  %"mul.17" = mul i32 0, 0
  %"add.29" = add i32 %"mul.17", 0
  store i32 %"add.29", i32* %"R16_NOTYPE"
  ; IMAD R14, R12, c[0x0][0x170], R13
  %".226" = load i32, i32* %"R12_NOTYPE"
  %".227" = load i32, i32* %"R13_NOTYPE"
  %"mul.18" = mul i32 %".226", %"Arg_5"
  %"add.30" = add i32 %"mul.18", %".227"
  store i32 %"add.30", i32* %"R14_NOTYPE"
.L_x_12:
  ; UMOV UR4, URZ
  %".230" = load i32, i32* %"URZ_NOTYPE"
  store i32 %".230", i32* %"UR4_NOTYPE"
  ; ISETP.NE.AND P2, PT, R15, RZ, PT
  %".233" = load i32, i32* %"R15_NOTYPE"
  %".234" = load i1, i1* %"PT_Bool"
  %"cmp.9" = icmp ne i32 %".233", 0
  %".235" = and i1 %"cmp.9", %".234"
  store i1 %".235", i1* %"P2_Bool"
  ; @!P0 BRA `(.L_x_9), !P0
  %".238" = load i1, i1* %"P0_Bool"
  %".239" = icmp eq i1 %".238", 1
  br i1 %".239", label %".L_x_9", label %".L_x_12_split_0x0360"
.L_x_12_split_0x0360:
  ; IMAD.IADD R17, R14, 0x1, R16
  %".242" = load i32, i32* %"R14_NOTYPE"
  %".243" = load i32, i32* %"R16_NOTYPE"
  %"mul.19" = mul i32 %".242", 1
  %"add.31" = add i32 %"mul.19", %".243"
  store i32 %"add.31", i32* %"R17_NOTYPE"
  ; UMOV UR4, URZ
  %".246" = load i32, i32* %"URZ_NOTYPE"
  store i32 %".246", i32* %"UR4_NOTYPE"
.L_x_10:
  ; MOV R2, 0x4
  store i32 4, i32* %"R2_NOTYPE"
  ; IMAD.MOV.U32 R23, RZ, RZ, c[0x0][0x170]
  %"mul.20" = mul i32 0, 0
  %"add.32" = add i32 %"mul.20", %"Arg_5"
  store i32 %"add.32", i32* %"R23_NOTYPE"
  ; IMAD.WIDE R2, R17, R2, c[0x0][0x160]
  %".253" = load i32, i32* %"R17_NOTYPE"
  %".254" = load i32, i32* %"R2_NOTYPE"
  %"mul.21" = mul i32 %".253", %".254"
  %"add.33" = add i32 %"mul.21", %"Arg_3"
  store i32 %"add.33", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R4, R23.reuse, 0x4, R2
  %".257" = load i32, i32* %"R23_NOTYPE"
  %".258" = load i32, i32* %"R2_NOTYPE"
  %"mul.22" = mul i32 %".257", 4
  %"add.34" = add i32 %"mul.22", %".258"
  store i32 %"add.34", i32* %"R4_NOTYPE"
  ; LDG.E.SYS R2, [R2]
  %".261" = load i32, i32* %"R2_NOTYPE"
  %".262" = add i32 %".261", 0
  %"for_LDG" = inttoptr i32 %".262" to i32*
  %".263" = load i32, i32* %"for_LDG"
  store i32 %".263", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".266" = load i32, i32* %"R23_NOTYPE"
  %".267" = load i32, i32* %"R4_NOTYPE"
  %"mul.23" = mul i32 %".266", 4
  %"add.35" = add i32 %"mul.23", %".267"
  store i32 %"add.35", i32* %"R6_NOTYPE"
  ; LDG.E.SYS R4, [R4]
  %".270" = load i32, i32* %"R4_NOTYPE"
  %".271" = add i32 %".270", 0
  %"for_LDG.1" = inttoptr i32 %".271" to i32*
  %".272" = load i32, i32* %"for_LDG.1"
  store i32 %".272", i32* %"R4_NOTYPE"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".275" = load i32, i32* %"R23_NOTYPE"
  %".276" = load i32, i32* %"R6_NOTYPE"
  %"mul.24" = mul i32 %".275", 4
  %"add.36" = add i32 %"mul.24", %".276"
  store i32 %"add.36", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R6, [R6]
  %".279" = load i32, i32* %"R6_NOTYPE"
  %".280" = add i32 %".279", 0
  %"for_LDG.2" = inttoptr i32 %".280" to i32*
  %".281" = load i32, i32* %"for_LDG.2"
  store i32 %".281", i32* %"R6_NOTYPE"
  ; LDG.E.SYS R8, [R8]
  %".284" = load i32, i32* %"R8_NOTYPE"
  %".285" = add i32 %".284", 0
  %"for_LDG.3" = inttoptr i32 %".285" to i32*
  %".286" = load i32, i32* %"for_LDG.3"
  store i32 %".286", i32* %"R8_NOTYPE"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".289" = load i32, i32* %"UR4_NOTYPE"
  %"add.37" = add i32 %".289", 4
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", i32* %"UR4_NOTYPE"
  ; IADD3 R18, R20, UR4, RZ
  %".292" = load i32, i32* %"R20_NOTYPE"
  %".293" = load i32, i32* %"UR4_NOTYPE"
  %"add.39" = add i32 %".292", %".293"
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", i32* %"R18_NOTYPE"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".296" = load i32, i32* %"R18_NOTYPE"
  %".297" = load i1, i1* %"PT_Bool"
  %"cmp.10" = icmp ne i32 %".296", 0
  %".298" = and i1 %"cmp.10", %".297"
  store i1 %".298", i1* %"P1_Bool"
  ; IMAD R17, R23, 0x4, R17
  %".301" = load i32, i32* %"R23_NOTYPE"
  %".302" = load i32, i32* %"R17_NOTYPE"
  %"mul.25" = mul i32 %".301", 4
  %"add.41" = add i32 %"mul.25", %".302"
  store i32 %"add.41", i32* %"R17_NOTYPE"
  ; FMNMX R11, R2, R11, !PT
  %".305" = load i32, i32* %"R2_NOTYPE"
  %".306" = load i32, i32* %"R11_NOTYPE"
  %".307" = fcmp olt i32 %".305", %".306"
  %"fmnmx_min" = select  i1 %".307", i32 %".305", i32 %".306"
  %".308" = fcmp ogt i32 %".305", %".306"
  %"fmnmx_max" = select  i1 %".308", i32 %".305", i32 %".306"
  %"fmnmx_final" = select  i1 1, i32 %"fmnmx_min", i32 %"fmnmx_max"
  store i32 %"fmnmx_final", i32* %"R11_NOTYPE"
  ; FMNMX R11, R11, R4, !PT
  %".311" = load i32, i32* %"R11_NOTYPE"
  %".312" = load i32, i32* %"R4_NOTYPE"
  %".313" = fcmp olt i32 %".311", %".312"
  %"fmnmx_min.1" = select  i1 %".313", i32 %".311", i32 %".312"
  %".314" = fcmp ogt i32 %".311", %".312"
  %"fmnmx_max.1" = select  i1 %".314", i32 %".311", i32 %".312"
  %"fmnmx_final.1" = select  i1 1, i32 %"fmnmx_min.1", i32 %"fmnmx_max.1"
  store i32 %"fmnmx_final.1", i32* %"R11_NOTYPE"
  ; FMNMX R11, R11, R6, !PT
  %".317" = load i32, i32* %"R11_NOTYPE"
  %".318" = load i32, i32* %"R6_NOTYPE"
  %".319" = fcmp olt i32 %".317", %".318"
  %"fmnmx_min.2" = select  i1 %".319", i32 %".317", i32 %".318"
  %".320" = fcmp ogt i32 %".317", %".318"
  %"fmnmx_max.2" = select  i1 %".320", i32 %".317", i32 %".318"
  %"fmnmx_final.2" = select  i1 1, i32 %"fmnmx_min.2", i32 %"fmnmx_max.2"
  store i32 %"fmnmx_final.2", i32* %"R11_NOTYPE"
  ; FMNMX R11, R11, R8, !PT
  %".323" = load i32, i32* %"R11_NOTYPE"
  %".324" = load i32, i32* %"R8_NOTYPE"
  %".325" = fcmp olt i32 %".323", %".324"
  %"fmnmx_min.3" = select  i1 %".325", i32 %".323", i32 %".324"
  %".326" = fcmp ogt i32 %".323", %".324"
  %"fmnmx_max.3" = select  i1 %".326", i32 %".323", i32 %".324"
  %"fmnmx_final.3" = select  i1 1, i32 %"fmnmx_min.3", i32 %"fmnmx_max.3"
  store i32 %"fmnmx_final.3", i32* %"R11_NOTYPE"
  ; @P1 BRA `(.L_x_10), P1
  %".329" = load i1, i1* %"P1_Bool"
  %".330" = icmp ne i1 %".329", 1
  br i1 %".330", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".333" = load i32, i32* %"R13_NOTYPE"
  %".334" = load i32, i32* %"R16_NOTYPE"
  %"mul.26" = mul i32 %".333", 1
  %"add.42" = add i32 %"mul.26", %".334"
  store i32 %"add.42", i32* %"R4_NOTYPE"
  ; @!P2 BRA `(.L_x_11), !P2
  %".337" = load i1, i1* %"P2_Bool"
  %".338" = icmp eq i1 %".337", 1
  br i1 %".338", label %".L_x_11", label %".L_x_9_split_0x04d0"
.L_x_9_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".341" = load i32, i32* %"R12_NOTYPE"
  %".342" = load i32, i32* %"UR4_NOTYPE"
  %"add.43" = add i32 %".341", %".342"
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", i32* %"R5_NOTYPE"
  ; MOV R7, 0x4
  store i32 4, i32* %"R7_NOTYPE"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".347" = load i32, i32* %"R5_NOTYPE"
  %".348" = load i32, i32* %"R4_NOTYPE"
  %"mul.27" = mul i32 %".347", %"Arg_5"
  %"add.45" = add i32 %"mul.27", %".348"
  store i32 %"add.45", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".351" = load i32, i32* %"R2_NOTYPE"
  %".352" = load i32, i32* %"R7_NOTYPE"
  %"mul.28" = mul i32 %".351", %".352"
  %"add.46" = add i32 %"mul.28", %"Arg_3"
  store i32 %"add.46", i32* %"R2_NOTYPE"
  ; LDG.E.SYS R2, [R2]
  %".355" = load i32, i32* %"R2_NOTYPE"
  %".356" = add i32 %".355", 0
  %"for_LDG.4" = inttoptr i32 %".356" to i32*
  %".357" = load i32, i32* %"for_LDG.4"
  store i32 %".357", i32* %"R2_NOTYPE"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".360" = load i32, i32* %"R15_NOTYPE"
  %".361" = load i1, i1* %"PT_Bool"
  %"cmp.11" = icmp ne i32 %".360", 1
  %".362" = and i1 %"cmp.11", %".361"
  store i1 %".362", i1* %"P1_Bool"
  ; FMNMX R11, R11, R2, !PT
  %".365" = load i32, i32* %"R11_NOTYPE"
  %".366" = load i32, i32* %"R2_NOTYPE"
  %".367" = fcmp olt i32 %".365", %".366"
  %"fmnmx_min.4" = select  i1 %".367", i32 %".365", i32 %".366"
  %".368" = fcmp ogt i32 %".365", %".366"
  %"fmnmx_max.4" = select  i1 %".368", i32 %".365", i32 %".366"
  %"fmnmx_final.4" = select  i1 1, i32 %"fmnmx_min.4", i32 %"fmnmx_max.4"
  store i32 %"fmnmx_final.4", i32* %"R11_NOTYPE"
  ; @!P1 BRA `(.L_x_11), !P1
  %".371" = load i1, i1* %"P1_Bool"
  %".372" = icmp eq i1 %".371", 1
  br i1 %".372", label %".L_x_11", label %".L_x_9_split_0x0550"
.L_x_9_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".375" = load i32, i32* %"R15_NOTYPE"
  %".376" = load i1, i1* %"PT_Bool"
  %"cmp.12" = icmp ne i32 %".375", 2
  %".377" = and i1 %"cmp.12", %".376"
  store i1 %".377", i1* %"P1_Bool"
  ; IADD3 R2, R5, 0x1, RZ
  %".380" = load i32, i32* %"R5_NOTYPE"
  %"add.47" = add i32 %".380", 1
  %"add.48" = add i32 %"add.47", 0
  store i32 %"add.48", i32* %"R2_NOTYPE"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".383" = load i32, i32* %"R2_NOTYPE"
  %".384" = load i32, i32* %"R4_NOTYPE"
  %"mul.29" = mul i32 %".383", %"Arg_5"
  %"add.49" = add i32 %"mul.29", %".384"
  store i32 %"add.49", i32* %"R2_NOTYPE"
  ; @P1 IADD3 R3, R5, 0x2, RZ, P1
  %".387" = load i1, i1* %"P1_Bool"
  %".388" = icmp ne i1 %".387", 1
  br i1 %".388", label %".L_x_9_split_0x0550_conditionalExpr_0x0580", label %".L_x_9_split_0x0590"
.L_x_9_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".391" = load i32, i32* %"R5_NOTYPE"
  %"add.50" = add i32 %".391", 2
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", i32* %"R3_NOTYPE"
  ; BRA `(.L_x_9_split_0x0590)
  br label %".L_x_9_split_0x0590"
.L_x_9_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4, P1
  %".396" = load i1, i1* %"P1_Bool"
  %".397" = icmp ne i1 %".396", 1
  br i1 %".397", label %".L_x_9_split_0x0590_conditionalExpr_0x0590", label %".L_x_9_split_0x05a0"
.L_x_9_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".400" = load i32, i32* %"R3_NOTYPE"
  %".401" = load i32, i32* %"R4_NOTYPE"
  %"mul.30" = mul i32 %".400", %"Arg_5"
  %"add.52" = add i32 %"mul.30", %".401"
  store i32 %"add.52", i32* %"R4_NOTYPE"
  ; BRA `(.L_x_9_split_0x05a0)
  br label %".L_x_9_split_0x05a0"
.L_x_9_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".406" = load i32, i32* %"R2_NOTYPE"
  %".407" = load i32, i32* %"R7_NOTYPE"
  %"mul.31" = mul i32 %".406", %".407"
  %"add.53" = add i32 %"mul.31", %"Arg_3"
  store i32 %"add.53", i32* %"R2_NOTYPE"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160], P1
  %".410" = load i1, i1* %"P1_Bool"
  %".411" = icmp ne i1 %".410", 1
  br i1 %".411", label %".L_x_9_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".414" = load i32, i32* %"R4_NOTYPE"
  %".415" = load i32, i32* %"R7_NOTYPE"
  %"mul.32" = mul i32 %".414", %".415"
  %"add.54" = add i32 %"mul.32", %"Arg_3"
  store i32 %"add.54", i32* %"R4_NOTYPE"
  ; BRA `(.L_x_9_split_0x05c0)
  br label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".420" = load i32, i32* %"R2_NOTYPE"
  %".421" = add i32 %".420", 0
  %"for_LDG.5" = inttoptr i32 %".421" to i32*
  %".422" = load i32, i32* %"for_LDG.5"
  store i32 %".422", i32* %"R2_NOTYPE"
  ; @P1 LDG.E.SYS R4, [R4], P1
  %".425" = load i1, i1* %"P1_Bool"
  %".426" = icmp ne i1 %".425", 1
  br i1 %".426", label %".L_x_9_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".429" = load i32, i32* %"R4_NOTYPE"
  %".430" = add i32 %".429", 0
  %"for_LDG.6" = inttoptr i32 %".430" to i32*
  %".431" = load i32, i32* %"for_LDG.6"
  store i32 %".431", i32* %"R4_NOTYPE"
  ; BRA `(.L_x_9_split_0x05e0)
  br label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".436" = load i32, i32* %"R11_NOTYPE"
  %".437" = load i32, i32* %"R2_NOTYPE"
  %".438" = fcmp olt i32 %".436", %".437"
  %"fmnmx_min.5" = select  i1 %".438", i32 %".436", i32 %".437"
  %".439" = fcmp ogt i32 %".436", %".437"
  %"fmnmx_max.5" = select  i1 %".439", i32 %".436", i32 %".437"
  %"fmnmx_final.5" = select  i1 1, i32 %"fmnmx_min.5", i32 %"fmnmx_max.5"
  store i32 %"fmnmx_final.5", i32* %"R11_NOTYPE"
  ; @P1 FMNMX R11, R11, R4, !PT, P1
  %".442" = load i1, i1* %"P1_Bool"
  %".443" = icmp ne i1 %".442", 1
  br i1 %".443", label %".L_x_9_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_11"
.L_x_9_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".446" = load i32, i32* %"R11_NOTYPE"
  %".447" = load i32, i32* %"R4_NOTYPE"
  %".448" = fcmp olt i32 %".446", %".447"
  %"fmnmx_min.6" = select  i1 %".448", i32 %".446", i32 %".447"
  %".449" = fcmp ogt i32 %".446", %".447"
  %"fmnmx_max.6" = select  i1 %".449", i32 %".446", i32 %".447"
  %"fmnmx_final.6" = select  i1 1, i32 %"fmnmx_min.6", i32 %"fmnmx_max.6"
  store i32 %"fmnmx_final.6", i32* %"R11_NOTYPE"
  ; BRA `(.L_x_11)
  br label %".L_x_11"
.L_x_11:
  ; IADD3 R16, R16, 0x1, RZ
  %".454" = load i32, i32* %"R16_NOTYPE"
  %"add.55" = add i32 %".454", 1
  %"add.56" = add i32 %"add.55", 0
  store i32 %"add.56", i32* %"R16_NOTYPE"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".457" = load i32, i32* %"R16_NOTYPE"
  %".458" = load i1, i1* %"PT_Bool"
  %"cmp.13" = icmp sge i32 %".457", %"Arg_6"
  %".459" = and i1 %"cmp.13", %".458"
  store i1 %".459", i1* %"P1_Bool"
  ; @!P1 BRA `(.L_x_12), !P1
  %".462" = load i1, i1* %"P1_Bool"
  %".463" = icmp eq i1 %".462", 1
  br i1 %".463", label %".L_x_12", label %".L_x_8"
.L_x_8:
  ; IMAD R3, R21.reuse, R19, R10
  %".466" = load i32, i32* %"R21_NOTYPE"
  %".467" = load i32, i32* %"R19_NOTYPE"
  %".468" = load i32, i32* %"R10_NOTYPE"
  %"mul.33" = mul i32 %".466", %".467"
  %"add.57" = add i32 %"mul.33", %".468"
  store i32 %"add.57", i32* %"R3_NOTYPE"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"mul.34" = mul i32 0, 0
  %"add.58" = add i32 %"mul.34", 4
  store i32 %"add.58", i32* %"R2_NOTYPE"
  ; IMAD R3, R21, R3, R0
  %".473" = load i32, i32* %"R21_NOTYPE"
  %".474" = load i32, i32* %"R3_NOTYPE"
  %".475" = load i32, i32* %"R0_NOTYPE"
  %"mul.35" = mul i32 %".473", %".474"
  %"add.59" = add i32 %"mul.35", %".475"
  store i32 %"add.59", i32* %"R3_NOTYPE"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".478" = load i32, i32* %"R3_NOTYPE"
  %".479" = load i32, i32* %"R2_NOTYPE"
  %"mul.36" = mul i32 %".478", %".479"
  %"add.60" = add i32 %"mul.36", %"Arg_4"
  store i32 %"add.60", i32* %"R2_NOTYPE"
  ; STG.E.SYS [R2], R11
  %".482" = load i32, i32* %"R11_NOTYPE"
  %".483" = load i32, i32* %"R2_NOTYPE"
  %".484" = add i32 %".483", 0
  %"for_STG" = inttoptr i32 %".484" to i32*
  store i32 %".482", i32* %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_13:
  ; BRA `(.L_x_13)
  br label %".L_x_13"
ExitFunction:
  ret void
}

define void @"_Z4reluPfS_i"(i32 %"Arg_0", i32 %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4")
{
Entry_.text._Z4reluPfS_i:
  %"R1_NOTYPE" = alloca i32, i32 8
  %"R4_NOTYPE" = alloca i32, i32 8
  %"R3_NOTYPE" = alloca i32, i32 8
  %"P0_Bool" = alloca i1, i32 8
  %"PT_Bool" = alloca i1, i32 8
  %"R5_NOTYPE" = alloca i32, i32 8
  %"R2_NOTYPE" = alloca i32, i32 8
  %"R7_NOTYPE" = alloca i32, i32 8
  %"RZ_NOTYPE" = alloca i32, i32 8
  ; MOV R1, c[0x0][0x28]
  store i32 %"Arg_1", i32* %"R1_NOTYPE"
  ; S2R R4, SR_CTAID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", i32* %"R4_NOTYPE"
  ; S2R R3, SR_TID.X
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", i32* %"R3_NOTYPE"
  ; IMAD R4, R4, c[0x0][0x0], R3
  %".15" = load i32, i32* %"R4_NOTYPE"
  %".16" = load i32, i32* %"R3_NOTYPE"
  %"mul" = mul i32 %".15", %"Arg_0"
  %"add" = add i32 %"mul", %".16"
  store i32 %"add", i32* %"R4_NOTYPE"
  ; ISETP.GE.AND P0, PT, R4, c[0x0][0x170], PT
  %".19" = load i32, i32* %"R4_NOTYPE"
  %".20" = load i1, i1* %"PT_Bool"
  %"cmp" = icmp sge i32 %".19", %"Arg_4"
  %".21" = and i1 %"cmp", %".20"
  store i1 %".21", i1* %"P0_Bool"
  ; @P0 EXIT P0
  %".24" = load i1, i1* %"P0_Bool"
  %".25" = icmp ne i1 %".24", 1
  br i1 %".25", label %".text._Z4reluPfS_i_conditionalExpr_0x0050", label %".text._Z4reluPfS_i_split_0x0060"
.text._Z4reluPfS_i_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z4reluPfS_i_split_0x0060:
  ; MOV R5, 0x4
  store i32 4, i32* %"R5_NOTYPE"
  ; IMAD.WIDE R2, R4, R5, c[0x0][0x160]
  %".32" = load i32, i32* %"R4_NOTYPE"
  %".33" = load i32, i32* %"R5_NOTYPE"
  %"mul.1" = mul i32 %".32", %".33"
  %"add.1" = add i32 %"mul.1", %"Arg_2"
  store i32 %"add.1", i32* %"R2_NOTYPE"
  ; LDG.E.SYS R2, [R2]
  %".36" = load i32, i32* %"R2_NOTYPE"
  %".37" = add i32 %".36", 0
  %"for_LDG" = inttoptr i32 %".37" to i32*
  %".38" = load i32, i32* %"for_LDG"
  store i32 %".38", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x168]
  %".41" = load i32, i32* %"R4_NOTYPE"
  %".42" = load i32, i32* %"R5_NOTYPE"
  %"mul.2" = mul i32 %".41", %".42"
  %"add.2" = add i32 %"mul.2", %"Arg_3"
  store i32 %"add.2", i32* %"R4_NOTYPE"
  ; FMNMX R7, RZ, R2, !PT
  %".45" = load i32, i32* %"R2_NOTYPE"
  %".46" = fcmp olt i32 0, %".45"
  %"fmnmx_min" = select  i1 %".46", i32 0, i32 %".45"
  %".47" = fcmp ogt i32 0, %".45"
  %"fmnmx_max" = select  i1 %".47", i32 0, i32 %".45"
  %"fmnmx_final" = select  i1 1, i32 %"fmnmx_min", i32 %"fmnmx_max"
  store i32 %"fmnmx_final", i32* %"R7_NOTYPE"
  ; STG.E.SYS [R4], R7
  %".50" = load i32, i32* %"R7_NOTYPE"
  %".51" = load i32, i32* %"R4_NOTYPE"
  %".52" = add i32 %".51", 0
  %"for_STG" = inttoptr i32 %".52" to i32*
  store i32 %".50", i32* %"for_STG"
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
  %"R1_NOTYPE" = alloca i32, i32 8
  %"R3_NOTYPE" = alloca i32, i32 8
  %"UR4_NOTYPE" = alloca i32, i32 8
  %"UR5_NOTYPE" = alloca i32, i32 8
  %"URZ_NOTYPE" = alloca i32, i32 8
  %"R4_NOTYPE" = alloca i32, i32 8
  %"R2_NOTYPE" = alloca i32, i32 8
  %"R5_NOTYPE" = alloca i32, i32 8
  %"R0_NOTYPE" = alloca i32, i32 8
  %"P0_Bool" = alloca i1, i32 8
  %"PT_Bool" = alloca i1, i32 8
  %"R12_NOTYPE" = alloca i32, i32 8
  %"RZ_NOTYPE" = alloca i32, i32 8
  %"R10_NOTYPE" = alloca i32, i32 8
  %"R26_NOTYPE" = alloca i32, i32 8
  %"R11_NOTYPE" = alloca i32, i32 8
  %"R8_NOTYPE" = alloca i32, i32 8
  %"R9_NOTYPE" = alloca i32, i32 8
  %"P1_Bool" = alloca i1, i32 8
  %"R6_NOTYPE" = alloca i32, i32 8
  %"P3_Bool" = alloca i1, i32 8
  %"R29_NOTYPE" = alloca i32, i32 8
  %"R24_NOTYPE" = alloca i32, i32 8
  %"R13_NOTYPE" = alloca i32, i32 8
  %"R23_NOTYPE" = alloca i32, i32 8
  %"R14_NOTYPE" = alloca i32, i32 8
  %"R31_NOTYPE" = alloca i32, i32 8
  %"R16_NOTYPE" = alloca i32, i32 8
  %"R18_NOTYPE" = alloca i32, i32 8
  %"R20_NOTYPE" = alloca i32, i32 8
  %"R22_NOTYPE" = alloca i32, i32 8
  %"R25_NOTYPE" = alloca i32, i32 8
  %"R27_NOTYPE" = alloca i32, i32 8
  %"P2_Bool" = alloca i1, i32 8
  %"P4_Bool" = alloca i1, i32 8
  %"R7_NOTYPE" = alloca i32, i32 8
  %"R15_NOTYPE" = alloca i32, i32 8
  %"R19_NOTYPE" = alloca i32, i32 8
  ; MOV R1, c[0x0][0x28]
  store i32 %"Arg_2", i32* %"R1_NOTYPE"
  ; S2R R3, SR_CTAID.Y
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", i32* %"R3_NOTYPE"
  ; ULDC.64 UR4, c[0x0][0x178]
  store i32 %"Arg_6", i32* %"UR4_NOTYPE"
  ; UIADD3 UR5, UR4, -UR5, URZ
  %".20" = load i32, i32* %"UR4_NOTYPE"
  %".21" = load i32, i32* %"UR5_NOTYPE"
  %".22" = sub i32 0, %".21"
  %"add" = add i32 %".20", %".22"
  %"add.1" = add i32 %"add", 0
  store i32 %"add.1", i32* %"UR5_NOTYPE"
  ; S2R R4, SR_TID.Y
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", i32* %"R4_NOTYPE"
  ; S2R R2, SR_CTAID.X
  %"ThreadIdx.2" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.2", i32* %"R2_NOTYPE"
  ; S2R R5, SR_TID.X
  %"ThreadIdx.3" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.3", i32* %"R5_NOTYPE"
  ; S2R R0, SR_CTAID.Z
  %"ThreadIdx.4" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.4", i32* %"R0_NOTYPE"
  ; IMAD R3, R3, c[0x0][0x4], R4
  %".33" = load i32, i32* %"R3_NOTYPE"
  %".34" = load i32, i32* %"R4_NOTYPE"
  %"mul" = mul i32 %".33", %"Arg_1"
  %"add.2" = add i32 %"mul", %".34"
  store i32 %"add.2", i32* %"R3_NOTYPE"
  ; ISETP.GT.AND P0, PT, R3, UR5, PT
  %".37" = load i32, i32* %"R3_NOTYPE"
  %".38" = load i32, i32* %"UR5_NOTYPE"
  %".39" = load i1, i1* %"PT_Bool"
  %"cmp" = icmp sgt i32 %".37", %".38"
  %".40" = and i1 %"cmp", %".39"
  store i1 %".40", i1* %"P0_Bool"
  ; IMAD R2, R2, c[0x0][0x0], R5
  %".43" = load i32, i32* %"R2_NOTYPE"
  %".44" = load i32, i32* %"R5_NOTYPE"
  %"mul.1" = mul i32 %".43", %"Arg_0"
  %"add.3" = add i32 %"mul.1", %".44"
  store i32 %"add.3", i32* %"R2_NOTYPE"
  ; ISETP.GT.OR P0, PT, R2, UR5, P0
  %".47" = load i32, i32* %"R2_NOTYPE"
  %".48" = load i32, i32* %"UR5_NOTYPE"
  %".49" = load i1, i1* %"PT_Bool"
  %"cmp.1" = icmp sgt i32 %".47", %".48"
  %".50" = or i1 %"cmp.1", %".49"
  store i1 %".50", i1* %"P0_Bool"
  ; ISETP.GE.OR P0, PT, R0, c[0x0][0x184], P0
  %".53" = load i32, i32* %"R0_NOTYPE"
  %".54" = load i1, i1* %"PT_Bool"
  %"cmp.2" = icmp sge i32 %".53", %"Arg_9"
  %".55" = or i1 %"cmp.2", %".54"
  store i1 %".55", i1* %"P0_Bool"
  ; @P0 EXIT P0
  %".58" = load i1, i1* %"P0_Bool"
  %".59" = icmp ne i1 %".58", 1
  br i1 %".59", label %".text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0", label %".text._Z6conv2dPfS_S_iiii_split_0x00e0"
.text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0:
  ; EXIT
  br label %"ExitFunction"
.text._Z6conv2dPfS_S_iiii_split_0x00e0:
  ; MOV R4, 0x1
  store i32 1, i32* %"R4_NOTYPE"
  ; IMAD.MOV.U32 R12, RZ, RZ, RZ
  %"mul.2" = mul i32 0, 0
  %"add.4" = add i32 %"mul.2", 0
  store i32 %"add.4", i32* %"R12_NOTYPE"
  ; ISETP.LE.AND P0, PT, R4, c[0x0][0x17c], PT
  %".68" = load i32, i32* %"R4_NOTYPE"
  %".69" = load i1, i1* %"PT_Bool"
  %"cmp.3" = icmp sle i32 %".68", %"Arg_7"
  %".70" = and i1 %"cmp.3", %".69"
  store i1 %".70", i1* %"P0_Bool"
  ; ISETP.GT.OR P0, PT, R4, c[0x0][0x180], !P0
  %".73" = load i32, i32* %"R4_NOTYPE"
  %".74" = load i1, i1* %"PT_Bool"
  %"cmp.4" = icmp sgt i32 %".73", %"Arg_8"
  %".75" = or i1 %"cmp.4", %".74"
  store i1 %".75", i1* %"P0_Bool"
  ; @P0 BRA `(.L_x_15), P0
  %".78" = load i1, i1* %"P0_Bool"
  %".79" = icmp ne i1 %".78", 1
  br i1 %".79", label %".L_x_15", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
.text._Z6conv2dPfS_S_iiii_split_0x0130:
  ; IMAD.MOV.U32 R4, RZ, RZ, c[0x0][0x17c]
  %"mul.3" = mul i32 0, 0
  %"add.5" = add i32 %"mul.3", %"Arg_7"
  store i32 %"add.5", i32* %"R4_NOTYPE"
  ; MOV R5, 0x1
  store i32 1, i32* %"R5_NOTYPE"
  ; IMAD.MOV.U32 R10, RZ, RZ, RZ
  %"mul.4" = mul i32 0, 0
  %"add.6" = add i32 %"mul.4", 0
  store i32 %"add.6", i32* %"R10_NOTYPE"
  ; MOV R12, RZ
  %".88" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".88", i32* %"R12_NOTYPE"
  ; IADD3 R5, -R5, c[0x0][0x17c], RZ
  %".91" = load i32, i32* %"R5_NOTYPE"
  %".92" = sub i32 0, %".91"
  %"add.7" = add i32 %".92", %"Arg_7"
  %"add.8" = add i32 %"add.7", 0
  store i32 %"add.8", i32* %"R5_NOTYPE"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".95" = load i32, i32* %"R4_NOTYPE"
  %".96" = and i32 %".95", 3
  store i32 %".96", i32* %"R4_NOTYPE"
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".99" = load i32, i32* %"R5_NOTYPE"
  %".100" = load i1, i1* %"PT_Bool"
  %"cmp.5" = icmp sge i32 %".99", 3
  %".101" = and i1 %"cmp.5", %".100"
  store i1 %".101", i1* %"P0_Bool"
  ; IADD3 R26, R4, -c[0x0][0x17c], RZ
  %".104" = load i32, i32* %"R4_NOTYPE"
  %".105" = sub i32 0, %"Arg_7"
  %"add.9" = add i32 %".104", %".105"
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", i32* %"R26_NOTYPE"
.L_x_20:
  ; IMAD R11, R10, c[0x0][0x178], R3
  %".108" = load i32, i32* %"R10_NOTYPE"
  %".109" = load i32, i32* %"R3_NOTYPE"
  %"mul.5" = mul i32 %".108", %"Arg_6"
  %"add.11" = add i32 %"mul.5", %".109"
  store i32 %"add.11", i32* %"R11_NOTYPE"
  ; MOV R8, RZ
  %".112" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".112", i32* %"R8_NOTYPE"
  ; IMAD R9, R0, c[0x0][0x180], R10
  %".115" = load i32, i32* %"R0_NOTYPE"
  %".116" = load i32, i32* %"R10_NOTYPE"
  %"mul.6" = mul i32 %".115", %"Arg_8"
  %"add.12" = add i32 %"mul.6", %".116"
  store i32 %"add.12", i32* %"R9_NOTYPE"
  ; IADD3 R10, R10, 0x1, RZ
  %".119" = load i32, i32* %"R10_NOTYPE"
  %"add.13" = add i32 %".119", 1
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", i32* %"R10_NOTYPE"
  ; IMAD R5, R11, c[0x0][0x178], R2
  %".122" = load i32, i32* %"R11_NOTYPE"
  %".123" = load i32, i32* %"R2_NOTYPE"
  %"mul.7" = mul i32 %".122", %"Arg_6"
  %"add.15" = add i32 %"mul.7", %".123"
  store i32 %"add.15", i32* %"R5_NOTYPE"
  ; ISETP.GE.AND P1, PT, R10, c[0x0][0x180], PT
  %".126" = load i32, i32* %"R10_NOTYPE"
  %".127" = load i1, i1* %"PT_Bool"
  %"cmp.6" = icmp sge i32 %".126", %"Arg_8"
  %".128" = and i1 %"cmp.6", %".127"
  store i1 %".128", i1* %"P1_Bool"
.L_x_19:
  ; IMAD R6, R9, c[0x0][0x17c], R8
  %".131" = load i32, i32* %"R9_NOTYPE"
  %".132" = load i32, i32* %"R8_NOTYPE"
  %"mul.8" = mul i32 %".131", %"Arg_7"
  %"add.16" = add i32 %"mul.8", %".132"
  store i32 %"add.16", i32* %"R6_NOTYPE"
  ; UMOV UR4, URZ
  %".135" = load i32, i32* %"URZ_NOTYPE"
  store i32 %".135", i32* %"UR4_NOTYPE"
  ; ISETP.NE.AND P3, PT, R4, RZ, PT
  %".138" = load i32, i32* %"R4_NOTYPE"
  %".139" = load i1, i1* %"PT_Bool"
  %"cmp.7" = icmp ne i32 %".138", 0
  %".140" = and i1 %"cmp.7", %".139"
  store i1 %".140", i1* %"P3_Bool"
  ; IMAD R29, R6, c[0x0][0x17c], RZ
  %".143" = load i32, i32* %"R6_NOTYPE"
  %"mul.9" = mul i32 %".143", %"Arg_7"
  %"add.17" = add i32 %"mul.9", 0
  store i32 %"add.17", i32* %"R29_NOTYPE"
  ; @!P0 BRA `(.L_x_16), !P0
  %".146" = load i1, i1* %"P0_Bool"
  %".147" = icmp eq i1 %".146", 1
  br i1 %".147", label %".L_x_16", label %".L_x_19_split_0x0260"
.L_x_19_split_0x0260:
  ; MOV R24, 0x4
  store i32 4, i32* %"R24_NOTYPE"
  ; IMAD.IADD R13, R5, 0x1, R8
  %".152" = load i32, i32* %"R5_NOTYPE"
  %".153" = load i32, i32* %"R8_NOTYPE"
  %"mul.10" = mul i32 %".152", 1
  %"add.18" = add i32 %"mul.10", %".153"
  store i32 %"add.18", i32* %"R13_NOTYPE"
  ; UMOV UR4, URZ
  %".156" = load i32, i32* %"URZ_NOTYPE"
  store i32 %".156", i32* %"UR4_NOTYPE"
  ; IMAD.WIDE R6, R29, R24, c[0x0][0x168]
  %".159" = load i32, i32* %"R29_NOTYPE"
  %".160" = load i32, i32* %"R24_NOTYPE"
  %"mul.11" = mul i32 %".159", %".160"
  %"add.19" = add i32 %"mul.11", %"Arg_4"
  store i32 %"add.19", i32* %"R6_NOTYPE"
  ; MOV R23, R6
  %".163" = load i32, i32* %"R6_NOTYPE"
  store i32 %".163", i32* %"R23_NOTYPE"
.L_x_17:
  ; IMAD.WIDE R14, R13, R24, c[0x0][0x160]
  %".166" = load i32, i32* %"R13_NOTYPE"
  %".167" = load i32, i32* %"R24_NOTYPE"
  %"mul.12" = mul i32 %".166", %".167"
  %"add.20" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.20", i32* %"R14_NOTYPE"
  ; MOV R31, c[0x0][0x178]
  store i32 %"Arg_6", i32* %"R31_NOTYPE"
  ; IMAD.MOV.U32 R6, RZ, RZ, R23
  %".172" = load i32, i32* %"R23_NOTYPE"
  %"mul.13" = mul i32 0, 0
  %"add.21" = add i32 %"mul.13", %".172"
  store i32 %"add.21", i32* %"R6_NOTYPE"
  ; IMAD.WIDE R16, R31.reuse, 0x4, R14
  %".175" = load i32, i32* %"R31_NOTYPE"
  %".176" = load i32, i32* %"R14_NOTYPE"
  %"mul.14" = mul i32 %".175", 4
  %"add.22" = add i32 %"mul.14", %".176"
  store i32 %"add.22", i32* %"R16_NOTYPE"
  ; LDG.E.SYS R14, [R14]
  %".179" = load i32, i32* %"R14_NOTYPE"
  %".180" = add i32 %".179", 0
  %"for_LDG" = inttoptr i32 %".180" to i32*
  %".181" = load i32, i32* %"for_LDG"
  store i32 %".181", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R23, [R6]
  %".184" = load i32, i32* %"R6_NOTYPE"
  %".185" = add i32 %".184", 0
  %"for_LDG.1" = inttoptr i32 %".185" to i32*
  %".186" = load i32, i32* %"for_LDG.1"
  store i32 %".186", i32* %"R23_NOTYPE"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".189" = load i32, i32* %"R31_NOTYPE"
  %".190" = load i32, i32* %"R16_NOTYPE"
  %"mul.15" = mul i32 %".189", 4
  %"add.23" = add i32 %"mul.15", %".190"
  store i32 %"add.23", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R16, [R16]
  %".193" = load i32, i32* %"R16_NOTYPE"
  %".194" = add i32 %".193", 0
  %"for_LDG.2" = inttoptr i32 %".194" to i32*
  %".195" = load i32, i32* %"for_LDG.2"
  store i32 %".195", i32* %"R16_NOTYPE"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".198" = load i32, i32* %"R31_NOTYPE"
  %".199" = load i32, i32* %"R18_NOTYPE"
  %"mul.16" = mul i32 %".198", 4
  %"add.24" = add i32 %"mul.16", %".199"
  store i32 %"add.24", i32* %"R20_NOTYPE"
  ; LDG.E.SYS R22, [R6+0x4]
  %".202" = load i32, i32* %"R6_NOTYPE"
  %".203" = add i32 %".202", 4
  %"for_LDG.3" = inttoptr i32 %".203" to i32*
  %".204" = load i32, i32* %"for_LDG.3"
  store i32 %".204", i32* %"R22_NOTYPE"
  ; LDG.E.SYS R18, [R18]
  %".207" = load i32, i32* %"R18_NOTYPE"
  %".208" = add i32 %".207", 0
  %"for_LDG.4" = inttoptr i32 %".208" to i32*
  %".209" = load i32, i32* %"for_LDG.4"
  store i32 %".209", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R25, [R6+0x8]
  %".212" = load i32, i32* %"R6_NOTYPE"
  %".213" = add i32 %".212", 8
  %"for_LDG.5" = inttoptr i32 %".213" to i32*
  %".214" = load i32, i32* %"for_LDG.5"
  store i32 %".214", i32* %"R25_NOTYPE"
  ; LDG.E.SYS R20, [R20]
  %".217" = load i32, i32* %"R20_NOTYPE"
  %".218" = add i32 %".217", 0
  %"for_LDG.6" = inttoptr i32 %".218" to i32*
  %".219" = load i32, i32* %"for_LDG.6"
  store i32 %".219", i32* %"R20_NOTYPE"
  ; LDG.E.SYS R27, [R6+0xc]
  %".222" = load i32, i32* %"R6_NOTYPE"
  %".223" = add i32 %".222", 12
  %"for_LDG.7" = inttoptr i32 %".223" to i32*
  %".224" = load i32, i32* %"for_LDG.7"
  store i32 %".224", i32* %"R27_NOTYPE"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".227" = load i32, i32* %"UR4_NOTYPE"
  %"add.25" = add i32 %".227", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", i32* %"UR4_NOTYPE"
  ; LEA R13, R31, R13, 0x2
  %".230" = load i32, i32* %"R31_NOTYPE"
  %".231" = load i32, i32* %"R13_NOTYPE"
  %"shl" = shl i32 %".230", 2
  %"add.27" = add i32 %"shl", %".231"
  store i32 %"add.27", i32* %"R13_NOTYPE"
  ; FFMA R23, R23, R14, R12
  %".234" = load i32, i32* %"R23_NOTYPE"
  %".235" = load i32, i32* %"R14_NOTYPE"
  %".236" = load i32, i32* %"R12_NOTYPE"
  %"fmul" = fmul i32 %".234", %".235"
  %"fadd" = fadd i32 %"fmul", %".236"
  store i32 %"fadd", i32* %"R23_NOTYPE"
  ; IADD3 R12, R26, UR4, RZ
  %".239" = load i32, i32* %"R26_NOTYPE"
  %".240" = load i32, i32* %"UR4_NOTYPE"
  %"add.28" = add i32 %".239", %".240"
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", i32* %"R12_NOTYPE"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".243" = load i32, i32* %"R12_NOTYPE"
  %".244" = load i1, i1* %"PT_Bool"
  %"cmp.8" = icmp ne i32 %".243", 0
  %".245" = and i1 %"cmp.8", %".244"
  store i1 %".245", i1* %"P2_Bool"
  ; FFMA R22, R22, R16, R23
  %".248" = load i32, i32* %"R22_NOTYPE"
  %".249" = load i32, i32* %"R16_NOTYPE"
  %".250" = load i32, i32* %"R23_NOTYPE"
  %"fmul.1" = fmul i32 %".248", %".249"
  %"fadd.1" = fadd i32 %"fmul.1", %".250"
  store i32 %"fadd.1", i32* %"R22_NOTYPE"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".253" = load i32, i32* %"R6_NOTYPE"
  %"add.30" = add i32 %".253", 16
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", i32* %"R23_NOTYPE"
  %"carry" = icmp ult i32 %"add.31", %".253"
  store i1 %"carry", i1* %"P4_Bool"
  ; FFMA R22, R25, R18, R22
  %".257" = load i32, i32* %"R25_NOTYPE"
  %".258" = load i32, i32* %"R18_NOTYPE"
  %".259" = load i32, i32* %"R22_NOTYPE"
  %"fmul.2" = fmul i32 %".257", %".258"
  %"fadd.2" = fadd i32 %"fmul.2", %".259"
  store i32 %"fadd.2", i32* %"R22_NOTYPE"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".262" = load i32, i32* %"R7_NOTYPE"
  %".263" = load i1, i1* %"P4_Bool"
  %".264" = sub i1 0, %".263"
  %".265" = zext i1 %".264" to i32
  %"add.32" = add i32 0, %".262"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".265"
  store i32 %"add.34", i32* %"R7_NOTYPE"
  ; FFMA R12, R27, R20, R22
  %".268" = load i32, i32* %"R27_NOTYPE"
  %".269" = load i32, i32* %"R20_NOTYPE"
  %".270" = load i32, i32* %"R22_NOTYPE"
  %"fmul.3" = fmul i32 %".268", %".269"
  %"fadd.3" = fadd i32 %"fmul.3", %".270"
  store i32 %"fadd.3", i32* %"R12_NOTYPE"
  ; @P2 BRA `(.L_x_17), P2
  %".273" = load i1, i1* %"P2_Bool"
  %".274" = icmp ne i1 %".273", 1
  br i1 %".274", label %".L_x_17", label %".L_x_16"
.L_x_16:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".277" = load i32, i32* %"R2_NOTYPE"
  %".278" = load i32, i32* %"R8_NOTYPE"
  %"mul.17" = mul i32 %".277", 1
  %"add.35" = add i32 %"mul.17", %".278"
  store i32 %"add.35", i32* %"R14_NOTYPE"
  ; @!P3 BRA `(.L_x_18), !P3
  %".281" = load i1, i1* %"P3_Bool"
  %".282" = icmp eq i1 %".281", 1
  br i1 %".282", label %".L_x_18", label %".L_x_16_split_0x0460"
.L_x_16_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".285" = load i32, i32* %"R11_NOTYPE"
  %".286" = load i32, i32* %"UR4_NOTYPE"
  %"add.36" = add i32 %".285", %".286"
  %"add.37" = add i32 %"add.36", 0
  store i32 %"add.37", i32* %"R15_NOTYPE"
  ; IADD3 R16, R29, UR4, RZ
  %".289" = load i32, i32* %"R29_NOTYPE"
  %".290" = load i32, i32* %"UR4_NOTYPE"
  %"add.38" = add i32 %".289", %".290"
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", i32* %"R16_NOTYPE"
  ; MOV R19, 0x4
  store i32 4, i32* %"R19_NOTYPE"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".295" = load i32, i32* %"R15_NOTYPE"
  %".296" = load i32, i32* %"R14_NOTYPE"
  %"mul.18" = mul i32 %".295", %"Arg_6"
  %"add.40" = add i32 %"mul.18", %".296"
  store i32 %"add.40", i32* %"R6_NOTYPE"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".299" = load i32, i32* %"R16_NOTYPE"
  %".300" = load i32, i32* %"R19_NOTYPE"
  %"mul.19" = mul i32 %".299", %".300"
  %"add.41" = add i32 %"mul.19", %"Arg_4"
  store i32 %"add.41", i32* %"R16_NOTYPE"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".303" = load i32, i32* %"R6_NOTYPE"
  %".304" = load i32, i32* %"R19_NOTYPE"
  %"mul.20" = mul i32 %".303", %".304"
  %"add.42" = add i32 %"mul.20", %"Arg_3"
  store i32 %"add.42", i32* %"R6_NOTYPE"
  ; LDG.E.SYS R13, [R16]
  %".307" = load i32, i32* %"R16_NOTYPE"
  %".308" = add i32 %".307", 0
  %"for_LDG.8" = inttoptr i32 %".308" to i32*
  %".309" = load i32, i32* %"for_LDG.8"
  store i32 %".309", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R6, [R6]
  %".312" = load i32, i32* %"R6_NOTYPE"
  %".313" = add i32 %".312", 0
  %"for_LDG.9" = inttoptr i32 %".313" to i32*
  %".314" = load i32, i32* %"for_LDG.9"
  store i32 %".314", i32* %"R6_NOTYPE"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".317" = load i32, i32* %"R4_NOTYPE"
  %".318" = load i1, i1* %"PT_Bool"
  %"cmp.9" = icmp ne i32 %".317", 1
  %".319" = and i1 %"cmp.9", %".318"
  store i1 %".319", i1* %"P2_Bool"
  ; FFMA R12, R13, R6, R12
  %".322" = load i32, i32* %"R13_NOTYPE"
  %".323" = load i32, i32* %"R6_NOTYPE"
  %".324" = load i32, i32* %"R12_NOTYPE"
  %"fmul.4" = fmul i32 %".322", %".323"
  %"fadd.4" = fadd i32 %"fmul.4", %".324"
  store i32 %"fadd.4", i32* %"R12_NOTYPE"
  ; @!P2 BRA `(.L_x_18), !P2
  %".327" = load i1, i1* %"P2_Bool"
  %".328" = icmp eq i1 %".327", 1
  br i1 %".328", label %".L_x_18", label %".L_x_16_split_0x0510"
.L_x_16_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".331" = load i32, i32* %"R4_NOTYPE"
  %".332" = load i1, i1* %"PT_Bool"
  %"cmp.10" = icmp ne i32 %".331", 2
  %".333" = and i1 %"cmp.10", %".332"
  store i1 %".333", i1* %"P2_Bool"
  ; LDG.E.SYS R13, [R16+0x4]
  %".336" = load i32, i32* %"R16_NOTYPE"
  %".337" = add i32 %".336", 4
  %"for_LDG.10" = inttoptr i32 %".337" to i32*
  %".338" = load i32, i32* %"for_LDG.10"
  store i32 %".338", i32* %"R13_NOTYPE"
  ; IADD3 R6, R15, 0x1, RZ
  %".341" = load i32, i32* %"R15_NOTYPE"
  %"add.43" = add i32 %".341", 1
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", i32* %"R6_NOTYPE"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".344" = load i32, i32* %"R6_NOTYPE"
  %".345" = load i32, i32* %"R14_NOTYPE"
  %"mul.21" = mul i32 %".344", %"Arg_6"
  %"add.45" = add i32 %"mul.21", %".345"
  store i32 %"add.45", i32* %"R6_NOTYPE"
  ; @P2 IADD3 R7, R15, 0x2, RZ, P2
  %".348" = load i1, i1* %"P2_Bool"
  %".349" = icmp ne i1 %".348", 1
  br i1 %".349", label %".L_x_16_split_0x0510_conditionalExpr_0x0550", label %".L_x_16_split_0x0560"
.L_x_16_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".352" = load i32, i32* %"R15_NOTYPE"
  %"add.46" = add i32 %".352", 2
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", i32* %"R7_NOTYPE"
  ; BRA `(.L_x_16_split_0x0560)
  br label %".L_x_16_split_0x0560"
.L_x_16_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14, P2
  %".357" = load i1, i1* %"P2_Bool"
  %".358" = icmp ne i1 %".357", 1
  br i1 %".358", label %".L_x_16_split_0x0560_conditionalExpr_0x0560", label %".L_x_16_split_0x0570"
.L_x_16_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".361" = load i32, i32* %"R7_NOTYPE"
  %".362" = load i32, i32* %"R14_NOTYPE"
  %"mul.22" = mul i32 %".361", %"Arg_6"
  %"add.48" = add i32 %"mul.22", %".362"
  store i32 %"add.48", i32* %"R14_NOTYPE"
  ; BRA `(.L_x_16_split_0x0570)
  br label %".L_x_16_split_0x0570"
.L_x_16_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".367" = load i32, i32* %"R6_NOTYPE"
  %".368" = load i32, i32* %"R19_NOTYPE"
  %"mul.23" = mul i32 %".367", %".368"
  %"add.49" = add i32 %"mul.23", %"Arg_3"
  store i32 %"add.49", i32* %"R6_NOTYPE"
  ; @P2 IMAD.WIDE R14, R14, R19, c[0x0][0x160], P2
  %".371" = load i1, i1* %"P2_Bool"
  %".372" = icmp ne i1 %".371", 1
  br i1 %".372", label %".L_x_16_split_0x0570_conditionalExpr_0x0580", label %".L_x_16_split_0x0590"
.L_x_16_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".375" = load i32, i32* %"R14_NOTYPE"
  %".376" = load i32, i32* %"R19_NOTYPE"
  %"mul.24" = mul i32 %".375", %".376"
  %"add.50" = add i32 %"mul.24", %"Arg_3"
  store i32 %"add.50", i32* %"R14_NOTYPE"
  ; BRA `(.L_x_16_split_0x0590)
  br label %".L_x_16_split_0x0590"
.L_x_16_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8], P2
  %".381" = load i1, i1* %"P2_Bool"
  %".382" = icmp ne i1 %".381", 1
  br i1 %".382", label %".L_x_16_split_0x0590_conditionalExpr_0x0590", label %".L_x_16_split_0x05a0"
.L_x_16_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".385" = load i32, i32* %"R16_NOTYPE"
  %".386" = add i32 %".385", 8
  %"for_LDG.11" = inttoptr i32 %".386" to i32*
  %".387" = load i32, i32* %"for_LDG.11"
  store i32 %".387", i32* %"R19_NOTYPE"
  ; BRA `(.L_x_16_split_0x05a0)
  br label %".L_x_16_split_0x05a0"
.L_x_16_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".392" = load i32, i32* %"R6_NOTYPE"
  %".393" = add i32 %".392", 0
  %"for_LDG.12" = inttoptr i32 %".393" to i32*
  %".394" = load i32, i32* %"for_LDG.12"
  store i32 %".394", i32* %"R6_NOTYPE"
  ; @P2 LDG.E.SYS R14, [R14], P2
  %".397" = load i1, i1* %"P2_Bool"
  %".398" = icmp ne i1 %".397", 1
  br i1 %".398", label %".L_x_16_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".401" = load i32, i32* %"R14_NOTYPE"
  %".402" = add i32 %".401", 0
  %"for_LDG.13" = inttoptr i32 %".402" to i32*
  %".403" = load i32, i32* %"for_LDG.13"
  store i32 %".403", i32* %"R14_NOTYPE"
  ; BRA `(.L_x_16_split_0x05c0)
  br label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".408" = load i32, i32* %"R13_NOTYPE"
  %".409" = load i32, i32* %"R6_NOTYPE"
  %".410" = load i32, i32* %"R12_NOTYPE"
  %"fmul.5" = fmul i32 %".408", %".409"
  %"fadd.5" = fadd i32 %"fmul.5", %".410"
  store i32 %"fadd.5", i32* %"R12_NOTYPE"
  ; @P2 FFMA R12, R19, R14, R12, P2
  %".413" = load i1, i1* %"P2_Bool"
  %".414" = icmp ne i1 %".413", 1
  br i1 %".414", label %".L_x_16_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_18"
.L_x_16_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".417" = load i32, i32* %"R19_NOTYPE"
  %".418" = load i32, i32* %"R14_NOTYPE"
  %".419" = load i32, i32* %"R12_NOTYPE"
  %"fmul.6" = fmul i32 %".417", %".418"
  %"fadd.6" = fadd i32 %"fmul.6", %".419"
  store i32 %"fadd.6", i32* %"R12_NOTYPE"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_18:
  ; IADD3 R8, R8, 0x1, RZ
  %".424" = load i32, i32* %"R8_NOTYPE"
  %"add.51" = add i32 %".424", 1
  %"add.52" = add i32 %"add.51", 0
  store i32 %"add.52", i32* %"R8_NOTYPE"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".427" = load i32, i32* %"R8_NOTYPE"
  %".428" = load i1, i1* %"PT_Bool"
  %"cmp.11" = icmp sge i32 %".427", %"Arg_7"
  %".429" = and i1 %"cmp.11", %".428"
  store i1 %".429", i1* %"P2_Bool"
  ; @!P2 BRA `(.L_x_19), !P2
  %".432" = load i1, i1* %"P2_Bool"
  %".433" = icmp eq i1 %".432", 1
  br i1 %".433", label %".L_x_19", label %".L_x_18_split_0x0610"
.L_x_18_split_0x0610:
  ; @!P1 BRA `(.L_x_20), !P1
  %".436" = load i1, i1* %"P1_Bool"
  %".437" = icmp eq i1 %".436", 1
  br i1 %".437", label %".L_x_20", label %".L_x_15"
.L_x_15:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".440" = load i32, i32* %"UR5_NOTYPE"
  %"add.53" = add i32 %".440", 1
  %"add.54" = add i32 %"add.53", 0
  store i32 %"add.54", i32* %"UR4_NOTYPE"
  ; IMAD R3, R0, UR4, R3
  %".443" = load i32, i32* %"R0_NOTYPE"
  %".444" = load i32, i32* %"UR4_NOTYPE"
  %".445" = load i32, i32* %"R3_NOTYPE"
  %"mul.25" = mul i32 %".443", %".444"
  %"add.55" = add i32 %"mul.25", %".445"
  store i32 %"add.55", i32* %"R3_NOTYPE"
  ; MOV R0, 0x4
  store i32 4, i32* %"R0_NOTYPE"
  ; IMAD R3, R3, UR4, R2
  %".450" = load i32, i32* %"R3_NOTYPE"
  %".451" = load i32, i32* %"UR4_NOTYPE"
  %".452" = load i32, i32* %"R2_NOTYPE"
  %"mul.26" = mul i32 %".450", %".451"
  %"add.56" = add i32 %"mul.26", %".452"
  store i32 %"add.56", i32* %"R3_NOTYPE"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".455" = load i32, i32* %"R3_NOTYPE"
  %".456" = load i32, i32* %"R0_NOTYPE"
  %"mul.27" = mul i32 %".455", %".456"
  %"add.57" = add i32 %"mul.27", %"Arg_5"
  store i32 %"add.57", i32* %"R2_NOTYPE"
  ; STG.E.SYS [R2], R12
  %".459" = load i32, i32* %"R12_NOTYPE"
  %".460" = load i32, i32* %"R2_NOTYPE"
  %".461" = add i32 %".460", 0
  %"for_STG" = inttoptr i32 %".461" to i32*
  store i32 %".459", i32* %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_21:
  ; BRA `(.L_x_21)
  br label %".L_x_21"
ExitFunction:
  ret void
}

