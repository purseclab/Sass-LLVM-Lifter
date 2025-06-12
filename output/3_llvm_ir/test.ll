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
  %".26" = load i1, i1* %"P0_Bool"
  %".27" = icmp ne i1 %".26", 1
  br i1 %".27", label %".text._Z8fc_layerPfS_S_S_ii_conditionalExpr_0x0050", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0060"
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
  %".36" = load i32, i32* %"R4_NOTYPE"
  %".37" = load i1, i1* %"PT_Bool"
  %"cmp.1" = icmp sge i32 %".36", 1
  %".38" = and i1 %"cmp.1", %".37"
  store i1 %".38", i1* %"P0_Bool"
  %".40" = load i1, i1* %"P0_Bool"
  %".41" = icmp eq i1 %".40", 1
  br i1 %".41", label %".L_x_0", label %".text._Z8fc_layerPfS_S_S_ii_split_0x00a0"
.text._Z8fc_layerPfS_S_S_ii_split_0x00a0:
  ; IADD3 R2, R4.reuse, -0x1, RZ
  %".44" = load i32, i32* %"R4_NOTYPE"
  %"add.2" = add i32 %".44", -1
  %"add.3" = add i32 %"add.2", 0
  store i32 %"add.3", i32* %"R2_NOTYPE"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".47" = load i32, i32* %"R4_NOTYPE"
  %".48" = and i32 %".47", 3
  store i32 %".48", i32* %"R4_NOTYPE"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".51" = load i32, i32* %"R2_NOTYPE"
  %".52" = load i1, i1* %"PT_Bool"
  %"cmp.2" = icmp sge i32 %".51", 3
  %".53" = and i1 %"cmp.2", %".52"
  store i1 %".53", i1* %"P0_Bool"
  ; MOV R7, RZ
  %".56" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".56", i32* %"R7_NOTYPE"
  ; MOV R5, RZ
  %".59" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".59", i32* %"R5_NOTYPE"
  %".61" = load i1, i1* %"P0_Bool"
  %".62" = icmp eq i1 %".61", 1
  br i1 %".62", label %".L_x_1", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
.text._Z8fc_layerPfS_S_S_ii_split_0x0100:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".65" = load i32, i32* %"R4_NOTYPE"
  %".66" = sub i32 0, %".65"
  %"add.4" = add i32 %".66", %"Arg_6"
  %"add.5" = add i32 %"add.4", 0
  store i32 %"add.5", i32* %"R6_NOTYPE"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".69" = load i32, i32* %"R0_NOTYPE"
  %"mul.2" = mul i32 %".69", %"Arg_6"
  %"add.6" = add i32 %"mul.2", 0
  store i32 %"add.6", i32* %"R2_NOTYPE"
  ; ULDC.64 UR4, c[0x0][0x160]
  store i32 %"Arg_2", i32* %"UR4_NOTYPE"
  ; IMAD.MOV.U32 R3, RZ, RZ, 0x4
  %"mul.3" = mul i32 0, 0
  %"add.7" = add i32 %"mul.3", 4
  store i32 %"add.7", i32* %"R3_NOTYPE"
  ; ISETP.GT.AND P0, PT, R6, RZ, PT
  %".76" = load i32, i32* %"R6_NOTYPE"
  %".77" = load i1, i1* %"PT_Bool"
  %"cmp.3" = icmp sgt i32 %".76", 0
  %".78" = and i1 %"cmp.3", %".77"
  store i1 %".78", i1* %"P0_Bool"
  ; MOV R7, RZ
  %".81" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".81", i32* %"R7_NOTYPE"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".84" = load i32, i32* %"R2_NOTYPE"
  %".85" = load i32, i32* %"R3_NOTYPE"
  %"mul.4" = mul i32 %".84", %".85"
  %"add.8" = add i32 %"mul.4", %"Arg_3"
  store i32 %"add.8", i32* %"R2_NOTYPE"
  ; MOV R5, RZ
  %".88" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".88", i32* %"R5_NOTYPE"
  %".90" = load i1, i1* %"P0_Bool"
  %".91" = icmp eq i1 %".90", 1
  br i1 %".91", label %".L_x_2", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".94" = load i32, i32* %"R6_NOTYPE"
  %".95" = load i1, i1* %"PT_Bool"
  %"cmp.4" = icmp sgt i32 %".94", 12
  %".96" = and i1 %"cmp.4", %".95"
  store i1 %".96", i1* %"P1_Bool"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".99" = and i1 1, 1
  %".100" = or i1 %".99", 1
  %".101" = load i1, i1* %"P1_Bool"
  %".102" = icmp eq i1 %".101", 1
  br i1 %".102", label %".L_x_3", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".105" = xor i1 1, 1
  %".106" = and i1 %".105", 1
  %".107" = and i1 %".106", 1
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".109" = load i32, i32* %"R2_NOTYPE"
  %".110" = add i32 %".109", 0
  %"for_LDG" = inttoptr i32 %".110" to i32*
  %".111" = load i32, i32* %"for_LDG"
  store i32 %".111", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R9, [UR4]
  %".114" = load i32, i32* %"UR4_NOTYPE"
  %".115" = add i32 %".114", 0
  %"for_LDG.1" = inttoptr i32 %".115" to i32*
  %".116" = load i32, i32* %"for_LDG.1"
  store i32 %".116", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R11, [R2+0x4]
  %".119" = load i32, i32* %"R2_NOTYPE"
  %".120" = add i32 %".119", 4
  %"for_LDG.2" = inttoptr i32 %".120" to i32*
  %".121" = load i32, i32* %"for_LDG.2"
  store i32 %".121", i32* %"R11_NOTYPE"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".124" = load i32, i32* %"UR4_NOTYPE"
  %".125" = add i32 %".124", 4
  %"for_LDG.3" = inttoptr i32 %".125" to i32*
  %".126" = load i32, i32* %"for_LDG.3"
  store i32 %".126", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R13, [R2+0x8]
  %".129" = load i32, i32* %"R2_NOTYPE"
  %".130" = add i32 %".129", 8
  %"for_LDG.4" = inttoptr i32 %".130" to i32*
  %".131" = load i32, i32* %"for_LDG.4"
  store i32 %".131", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".134" = load i32, i32* %"UR4_NOTYPE"
  %".135" = add i32 %".134", 8
  %"for_LDG.5" = inttoptr i32 %".135" to i32*
  %".136" = load i32, i32* %"for_LDG.5"
  store i32 %".136", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R15, [R2+0xc]
  %".139" = load i32, i32* %"R2_NOTYPE"
  %".140" = add i32 %".139", 12
  %"for_LDG.6" = inttoptr i32 %".140" to i32*
  %".141" = load i32, i32* %"for_LDG.6"
  store i32 %".141", i32* %"R15_NOTYPE"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".144" = load i32, i32* %"UR4_NOTYPE"
  %".145" = add i32 %".144", 12
  %"for_LDG.7" = inttoptr i32 %".145" to i32*
  %".146" = load i32, i32* %"for_LDG.7"
  store i32 %".146", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R17, [R2+0x10]
  %".149" = load i32, i32* %"R2_NOTYPE"
  %".150" = add i32 %".149", 16
  %"for_LDG.8" = inttoptr i32 %".150" to i32*
  %".151" = load i32, i32* %"for_LDG.8"
  store i32 %".151", i32* %"R17_NOTYPE"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".154" = load i32, i32* %"UR4_NOTYPE"
  %".155" = add i32 %".154", 16
  %"for_LDG.9" = inttoptr i32 %".155" to i32*
  %".156" = load i32, i32* %"for_LDG.9"
  store i32 %".156", i32* %"R16_NOTYPE"
  ; LDG.E.SYS R19, [R2+0x14]
  %".159" = load i32, i32* %"R2_NOTYPE"
  %".160" = add i32 %".159", 20
  %"for_LDG.10" = inttoptr i32 %".160" to i32*
  %".161" = load i32, i32* %"for_LDG.10"
  store i32 %".161", i32* %"R19_NOTYPE"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".164" = load i32, i32* %"UR4_NOTYPE"
  %".165" = add i32 %".164", 20
  %"for_LDG.11" = inttoptr i32 %".165" to i32*
  %".166" = load i32, i32* %"for_LDG.11"
  store i32 %".166", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R21, [R2+0x18]
  %".169" = load i32, i32* %"R2_NOTYPE"
  %".170" = add i32 %".169", 24
  %"for_LDG.12" = inttoptr i32 %".170" to i32*
  %".171" = load i32, i32* %"for_LDG.12"
  store i32 %".171", i32* %"R21_NOTYPE"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".174" = load i32, i32* %"UR4_NOTYPE"
  %".175" = add i32 %".174", 24
  %"for_LDG.13" = inttoptr i32 %".175" to i32*
  %".176" = load i32, i32* %"for_LDG.13"
  store i32 %".176", i32* %"R20_NOTYPE"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".179" = load i32, i32* %"R2_NOTYPE"
  %".180" = add i32 %".179", 28
  %"for_LDG.14" = inttoptr i32 %".180" to i32*
  %".181" = load i32, i32* %"for_LDG.14"
  store i32 %".181", i32* %"R23_NOTYPE"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".184" = load i32, i32* %"UR4_NOTYPE"
  %".185" = add i32 %".184", 28
  %"for_LDG.15" = inttoptr i32 %".185" to i32*
  %".186" = load i32, i32* %"for_LDG.15"
  store i32 %".186", i32* %"R22_NOTYPE"
  ; LDG.E.SYS R25, [R2+0x20]
  %".189" = load i32, i32* %"R2_NOTYPE"
  %".190" = add i32 %".189", 32
  %"for_LDG.16" = inttoptr i32 %".190" to i32*
  %".191" = load i32, i32* %"for_LDG.16"
  store i32 %".191", i32* %"R25_NOTYPE"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".194" = load i32, i32* %"UR4_NOTYPE"
  %".195" = add i32 %".194", 32
  %"for_LDG.17" = inttoptr i32 %".195" to i32*
  %".196" = load i32, i32* %"for_LDG.17"
  store i32 %".196", i32* %"R24_NOTYPE"
  ; LDG.E.SYS R27, [R2+0x24]
  %".199" = load i32, i32* %"R2_NOTYPE"
  %".200" = add i32 %".199", 36
  %"for_LDG.18" = inttoptr i32 %".200" to i32*
  %".201" = load i32, i32* %"for_LDG.18"
  store i32 %".201", i32* %"R27_NOTYPE"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".204" = load i32, i32* %"UR4_NOTYPE"
  %".205" = add i32 %".204", 36
  %"for_LDG.19" = inttoptr i32 %".205" to i32*
  %".206" = load i32, i32* %"for_LDG.19"
  store i32 %".206", i32* %"R26_NOTYPE"
  ; LDG.E.SYS R29, [R2+0x28]
  %".209" = load i32, i32* %"R2_NOTYPE"
  %".210" = add i32 %".209", 40
  %"for_LDG.20" = inttoptr i32 %".210" to i32*
  %".211" = load i32, i32* %"for_LDG.20"
  store i32 %".211", i32* %"R29_NOTYPE"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".214" = load i32, i32* %"UR4_NOTYPE"
  %".215" = add i32 %".214", 40
  %"for_LDG.21" = inttoptr i32 %".215" to i32*
  %".216" = load i32, i32* %"for_LDG.21"
  store i32 %".216", i32* %"R28_NOTYPE"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".219" = load i32, i32* %"R2_NOTYPE"
  %".220" = add i32 %".219", 44
  %"for_LDG.22" = inttoptr i32 %".220" to i32*
  %".221" = load i32, i32* %"for_LDG.22"
  store i32 %".221", i32* %"R31_NOTYPE"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".224" = load i32, i32* %"UR4_NOTYPE"
  %".225" = add i32 %".224", 44
  %"for_LDG.23" = inttoptr i32 %".225" to i32*
  %".226" = load i32, i32* %"for_LDG.23"
  store i32 %".226", i32* %"R30_NOTYPE"
  ; LDG.E.SYS R33, [R2+0x30]
  %".229" = load i32, i32* %"R2_NOTYPE"
  %".230" = add i32 %".229", 48
  %"for_LDG.24" = inttoptr i32 %".230" to i32*
  %".231" = load i32, i32* %"for_LDG.24"
  store i32 %".231", i32* %"R33_NOTYPE"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".234" = load i32, i32* %"UR4_NOTYPE"
  %".235" = add i32 %".234", 48
  %"for_LDG.25" = inttoptr i32 %".235" to i32*
  %".236" = load i32, i32* %"for_LDG.25"
  store i32 %".236", i32* %"R32_NOTYPE"
  ; LDG.E.SYS R35, [R2+0x34]
  %".239" = load i32, i32* %"R2_NOTYPE"
  %".240" = add i32 %".239", 52
  %"for_LDG.26" = inttoptr i32 %".240" to i32*
  %".241" = load i32, i32* %"for_LDG.26"
  store i32 %".241", i32* %"R35_NOTYPE"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".244" = load i32, i32* %"UR4_NOTYPE"
  %".245" = add i32 %".244", 52
  %"for_LDG.27" = inttoptr i32 %".245" to i32*
  %".246" = load i32, i32* %"for_LDG.27"
  store i32 %".246", i32* %"R34_NOTYPE"
  ; LDG.E.SYS R37, [R2+0x38]
  %".249" = load i32, i32* %"R2_NOTYPE"
  %".250" = add i32 %".249", 56
  %"for_LDG.28" = inttoptr i32 %".250" to i32*
  %".251" = load i32, i32* %"for_LDG.28"
  store i32 %".251", i32* %"R37_NOTYPE"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".254" = load i32, i32* %"UR4_NOTYPE"
  %".255" = add i32 %".254", 56
  %"for_LDG.29" = inttoptr i32 %".255" to i32*
  %".256" = load i32, i32* %"for_LDG.29"
  store i32 %".256", i32* %"R36_NOTYPE"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".259" = load i32, i32* %"R2_NOTYPE"
  %".260" = add i32 %".259", 60
  %"for_LDG.30" = inttoptr i32 %".260" to i32*
  %".261" = load i32, i32* %"for_LDG.30"
  store i32 %".261", i32* %"R39_NOTYPE"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".264" = load i32, i32* %"UR4_NOTYPE"
  %".265" = add i32 %".264", 60
  %"for_LDG.31" = inttoptr i32 %".265" to i32*
  %".266" = load i32, i32* %"for_LDG.31"
  store i32 %".266", i32* %"R38_NOTYPE"
  ; IADD3 R6, R6, -0x10, RZ
  %".269" = load i32, i32* %"R6_NOTYPE"
  %"add.9" = add i32 %".269", -16
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", i32* %"R6_NOTYPE"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".272" = load i32, i32* %"UR4_NOTYPE"
  %"add.11" = add i32 %".272", 64
  %"add.12" = add i32 %"add.11", 0
  store i32 %"add.12", i32* %"UR4_NOTYPE"
  %"carry" = icmp ult i32 %"add.12", %".272"
  store i1 %"carry", i1* %"UP0_Bool"
  ; IADD3 R5, R5, 0x10, RZ
  %".276" = load i32, i32* %"R5_NOTYPE"
  %"add.13" = add i32 %".276", 16
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", i32* %"R5_NOTYPE"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".279" = load i32, i32* %"R6_NOTYPE"
  %".280" = load i1, i1* %"PT_Bool"
  %"cmp.5" = icmp sgt i32 %".279", 12
  %".281" = and i1 %"cmp.5", %".280"
  store i1 %".281", i1* %"P1_Bool"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".284" = load i32, i32* %"UR5_NOTYPE"
  %".285" = load i1, i1* %"UP0_Bool"
  %".286" = sub i1 0, %".285"
  %".287" = zext i1 %".286" to i32
  %"add.15" = add i32 0, %".284"
  %"add.16" = add i32 %"add.15", 0
  %"add.17" = add i32 %"add.16", %".287"
  store i32 %"add.17", i32* %"UR5_NOTYPE"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".290" = load i32, i32* %"R2_NOTYPE"
  %"add.18" = add i32 %".290", 64
  %"add.19" = add i32 %"add.18", 0
  store i32 %"add.19", i32* %"R2_NOTYPE"
  %"carry.1" = icmp ult i32 %"add.19", %".290"
  store i1 %"carry.1", i1* %"P2_Bool"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".294" = load i32, i32* %"R3_NOTYPE"
  %"mul.5" = mul i32 0, 0
  %"add.20" = add i32 %"mul.5", %".294"
  store i32 %"add.20", i32* %"R3_NOTYPE"
  ; FFMA R8, R8, R9, R7
  %".297" = load i32, i32* %"R8_NOTYPE"
  %".298" = load i32, i32* %"R9_NOTYPE"
  %".299" = load i32, i32* %"R7_NOTYPE"
  %"fmul" = fmul i32 %".297", %".298"
  %"fadd" = fadd i32 %"fmul", %".299"
  store i32 %"fadd", i32* %"R8_NOTYPE"
  ; FFMA R8, R11, R10, R8
  %".302" = load i32, i32* %"R11_NOTYPE"
  %".303" = load i32, i32* %"R10_NOTYPE"
  %".304" = load i32, i32* %"R8_NOTYPE"
  %"fmul.1" = fmul i32 %".302", %".303"
  %"fadd.1" = fadd i32 %"fmul.1", %".304"
  store i32 %"fadd.1", i32* %"R8_NOTYPE"
  ; FFMA R8, R13, R12, R8
  %".307" = load i32, i32* %"R13_NOTYPE"
  %".308" = load i32, i32* %"R12_NOTYPE"
  %".309" = load i32, i32* %"R8_NOTYPE"
  %"fmul.2" = fmul i32 %".307", %".308"
  %"fadd.2" = fadd i32 %"fmul.2", %".309"
  store i32 %"fadd.2", i32* %"R8_NOTYPE"
  ; FFMA R8, R15, R14, R8
  %".312" = load i32, i32* %"R15_NOTYPE"
  %".313" = load i32, i32* %"R14_NOTYPE"
  %".314" = load i32, i32* %"R8_NOTYPE"
  %"fmul.3" = fmul i32 %".312", %".313"
  %"fadd.3" = fadd i32 %"fmul.3", %".314"
  store i32 %"fadd.3", i32* %"R8_NOTYPE"
  ; FFMA R8, R17, R16, R8
  %".317" = load i32, i32* %"R17_NOTYPE"
  %".318" = load i32, i32* %"R16_NOTYPE"
  %".319" = load i32, i32* %"R8_NOTYPE"
  %"fmul.4" = fmul i32 %".317", %".318"
  %"fadd.4" = fadd i32 %"fmul.4", %".319"
  store i32 %"fadd.4", i32* %"R8_NOTYPE"
  ; FFMA R8, R19, R18, R8
  %".322" = load i32, i32* %"R19_NOTYPE"
  %".323" = load i32, i32* %"R18_NOTYPE"
  %".324" = load i32, i32* %"R8_NOTYPE"
  %"fmul.5" = fmul i32 %".322", %".323"
  %"fadd.5" = fadd i32 %"fmul.5", %".324"
  store i32 %"fadd.5", i32* %"R8_NOTYPE"
  ; FFMA R8, R21, R20, R8
  %".327" = load i32, i32* %"R21_NOTYPE"
  %".328" = load i32, i32* %"R20_NOTYPE"
  %".329" = load i32, i32* %"R8_NOTYPE"
  %"fmul.6" = fmul i32 %".327", %".328"
  %"fadd.6" = fadd i32 %"fmul.6", %".329"
  store i32 %"fadd.6", i32* %"R8_NOTYPE"
  ; FFMA R8, R23, R22, R8
  %".332" = load i32, i32* %"R23_NOTYPE"
  %".333" = load i32, i32* %"R22_NOTYPE"
  %".334" = load i32, i32* %"R8_NOTYPE"
  %"fmul.7" = fmul i32 %".332", %".333"
  %"fadd.7" = fadd i32 %"fmul.7", %".334"
  store i32 %"fadd.7", i32* %"R8_NOTYPE"
  ; FFMA R8, R25, R24, R8
  %".337" = load i32, i32* %"R25_NOTYPE"
  %".338" = load i32, i32* %"R24_NOTYPE"
  %".339" = load i32, i32* %"R8_NOTYPE"
  %"fmul.8" = fmul i32 %".337", %".338"
  %"fadd.8" = fadd i32 %"fmul.8", %".339"
  store i32 %"fadd.8", i32* %"R8_NOTYPE"
  ; FFMA R8, R27, R26, R8
  %".342" = load i32, i32* %"R27_NOTYPE"
  %".343" = load i32, i32* %"R26_NOTYPE"
  %".344" = load i32, i32* %"R8_NOTYPE"
  %"fmul.9" = fmul i32 %".342", %".343"
  %"fadd.9" = fadd i32 %"fmul.9", %".344"
  store i32 %"fadd.9", i32* %"R8_NOTYPE"
  ; FFMA R8, R29, R28, R8
  %".347" = load i32, i32* %"R29_NOTYPE"
  %".348" = load i32, i32* %"R28_NOTYPE"
  %".349" = load i32, i32* %"R8_NOTYPE"
  %"fmul.10" = fmul i32 %".347", %".348"
  %"fadd.10" = fadd i32 %"fmul.10", %".349"
  store i32 %"fadd.10", i32* %"R8_NOTYPE"
  ; FFMA R8, R31, R30, R8
  %".352" = load i32, i32* %"R31_NOTYPE"
  %".353" = load i32, i32* %"R30_NOTYPE"
  %".354" = load i32, i32* %"R8_NOTYPE"
  %"fmul.11" = fmul i32 %".352", %".353"
  %"fadd.11" = fadd i32 %"fmul.11", %".354"
  store i32 %"fadd.11", i32* %"R8_NOTYPE"
  ; FFMA R8, R33, R32, R8
  %".357" = load i32, i32* %"R33_NOTYPE"
  %".358" = load i32, i32* %"R32_NOTYPE"
  %".359" = load i32, i32* %"R8_NOTYPE"
  %"fmul.12" = fmul i32 %".357", %".358"
  %"fadd.12" = fadd i32 %"fmul.12", %".359"
  store i32 %"fadd.12", i32* %"R8_NOTYPE"
  ; FFMA R8, R35, R34, R8
  %".362" = load i32, i32* %"R35_NOTYPE"
  %".363" = load i32, i32* %"R34_NOTYPE"
  %".364" = load i32, i32* %"R8_NOTYPE"
  %"fmul.13" = fmul i32 %".362", %".363"
  %"fadd.13" = fadd i32 %"fmul.13", %".364"
  store i32 %"fadd.13", i32* %"R8_NOTYPE"
  ; FFMA R8, R37, R36, R8
  %".367" = load i32, i32* %"R37_NOTYPE"
  %".368" = load i32, i32* %"R36_NOTYPE"
  %".369" = load i32, i32* %"R8_NOTYPE"
  %"fmul.14" = fmul i32 %".367", %".368"
  %"fadd.14" = fadd i32 %"fmul.14", %".369"
  store i32 %"fadd.14", i32* %"R8_NOTYPE"
  ; FFMA R7, R39, R38, R8
  %".372" = load i32, i32* %"R39_NOTYPE"
  %".373" = load i32, i32* %"R38_NOTYPE"
  %".374" = load i32, i32* %"R8_NOTYPE"
  %"fmul.15" = fmul i32 %".372", %".373"
  %"fadd.15" = fadd i32 %"fmul.15", %".374"
  store i32 %"fadd.15", i32* %"R7_NOTYPE"
  %".376" = load i1, i1* %"P1_Bool"
  %".377" = icmp ne i1 %".376", 1
  br i1 %".377", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".380" = load i32, i32* %"R6_NOTYPE"
  %".381" = load i1, i1* %"PT_Bool"
  %"cmp.6" = icmp sgt i32 %".380", 4
  %".382" = and i1 %"cmp.6", %".381"
  store i1 %".382", i1* %"P1_Bool"
  %".384" = load i1, i1* %"P1_Bool"
  %".385" = icmp eq i1 %".384", 1
  br i1 %".385", label %".L_x_5", label %".L_x_3_split_0x0570"
.L_x_3_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".388" = load i32, i32* %"R2_NOTYPE"
  %".389" = add i32 %".388", 0
  %"for_LDG.32" = inttoptr i32 %".389" to i32*
  %".390" = load i32, i32* %"for_LDG.32"
  store i32 %".390", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R9, [UR4]
  %".393" = load i32, i32* %"UR4_NOTYPE"
  %".394" = add i32 %".393", 0
  %"for_LDG.33" = inttoptr i32 %".394" to i32*
  %".395" = load i32, i32* %"for_LDG.33"
  store i32 %".395", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R11, [R2+0x4]
  %".398" = load i32, i32* %"R2_NOTYPE"
  %".399" = add i32 %".398", 4
  %"for_LDG.34" = inttoptr i32 %".399" to i32*
  %".400" = load i32, i32* %"for_LDG.34"
  store i32 %".400", i32* %"R11_NOTYPE"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".403" = load i32, i32* %"UR4_NOTYPE"
  %".404" = add i32 %".403", 4
  %"for_LDG.35" = inttoptr i32 %".404" to i32*
  %".405" = load i32, i32* %"for_LDG.35"
  store i32 %".405", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R13, [R2+0x8]
  %".408" = load i32, i32* %"R2_NOTYPE"
  %".409" = add i32 %".408", 8
  %"for_LDG.36" = inttoptr i32 %".409" to i32*
  %".410" = load i32, i32* %"for_LDG.36"
  store i32 %".410", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".413" = load i32, i32* %"UR4_NOTYPE"
  %".414" = add i32 %".413", 8
  %"for_LDG.37" = inttoptr i32 %".414" to i32*
  %".415" = load i32, i32* %"for_LDG.37"
  store i32 %".415", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R15, [R2+0xc]
  %".418" = load i32, i32* %"R2_NOTYPE"
  %".419" = add i32 %".418", 12
  %"for_LDG.38" = inttoptr i32 %".419" to i32*
  %".420" = load i32, i32* %"for_LDG.38"
  store i32 %".420", i32* %"R15_NOTYPE"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".423" = load i32, i32* %"UR4_NOTYPE"
  %".424" = add i32 %".423", 12
  %"for_LDG.39" = inttoptr i32 %".424" to i32*
  %".425" = load i32, i32* %"for_LDG.39"
  store i32 %".425", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R17, [R2+0x10]
  %".428" = load i32, i32* %"R2_NOTYPE"
  %".429" = add i32 %".428", 16
  %"for_LDG.40" = inttoptr i32 %".429" to i32*
  %".430" = load i32, i32* %"for_LDG.40"
  store i32 %".430", i32* %"R17_NOTYPE"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".433" = load i32, i32* %"UR4_NOTYPE"
  %".434" = add i32 %".433", 16
  %"for_LDG.41" = inttoptr i32 %".434" to i32*
  %".435" = load i32, i32* %"for_LDG.41"
  store i32 %".435", i32* %"R16_NOTYPE"
  ; LDG.E.SYS R19, [R2+0x14]
  %".438" = load i32, i32* %"R2_NOTYPE"
  %".439" = add i32 %".438", 20
  %"for_LDG.42" = inttoptr i32 %".439" to i32*
  %".440" = load i32, i32* %"for_LDG.42"
  store i32 %".440", i32* %"R19_NOTYPE"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".443" = load i32, i32* %"UR4_NOTYPE"
  %".444" = add i32 %".443", 20
  %"for_LDG.43" = inttoptr i32 %".444" to i32*
  %".445" = load i32, i32* %"for_LDG.43"
  store i32 %".445", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R21, [R2+0x18]
  %".448" = load i32, i32* %"R2_NOTYPE"
  %".449" = add i32 %".448", 24
  %"for_LDG.44" = inttoptr i32 %".449" to i32*
  %".450" = load i32, i32* %"for_LDG.44"
  store i32 %".450", i32* %"R21_NOTYPE"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".453" = load i32, i32* %"UR4_NOTYPE"
  %".454" = add i32 %".453", 24
  %"for_LDG.45" = inttoptr i32 %".454" to i32*
  %".455" = load i32, i32* %"for_LDG.45"
  store i32 %".455", i32* %"R20_NOTYPE"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".458" = load i32, i32* %"R2_NOTYPE"
  %".459" = add i32 %".458", 28
  %"for_LDG.46" = inttoptr i32 %".459" to i32*
  %".460" = load i32, i32* %"for_LDG.46"
  store i32 %".460", i32* %"R23_NOTYPE"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".463" = load i32, i32* %"UR4_NOTYPE"
  %".464" = add i32 %".463", 28
  %"for_LDG.47" = inttoptr i32 %".464" to i32*
  %".465" = load i32, i32* %"for_LDG.47"
  store i32 %".465", i32* %"R22_NOTYPE"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".468" = load i32, i32* %"UR4_NOTYPE"
  %"add.21" = add i32 %".468", 32
  %"add.22" = add i32 %"add.21", 0
  store i32 %"add.22", i32* %"UR4_NOTYPE"
  %"carry.2" = icmp ult i32 %"add.22", %".468"
  store i1 %"carry.2", i1* %"UP0_Bool"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".472" = xor i1 1, 1
  %".473" = and i1 %".472", 1
  %".474" = and i1 %".473", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".476" = load i32, i32* %"R5_NOTYPE"
  %"add.23" = add i32 %".476", 8
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", i32* %"R5_NOTYPE"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".479" = load i32, i32* %"UR5_NOTYPE"
  %".480" = load i1, i1* %"UP0_Bool"
  %".481" = sub i1 0, %".480"
  %".482" = zext i1 %".481" to i32
  %"add.25" = add i32 0, %".479"
  %"add.26" = add i32 %"add.25", 0
  %"add.27" = add i32 %"add.26", %".482"
  store i32 %"add.27", i32* %"UR5_NOTYPE"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".485" = load i32, i32* %"R2_NOTYPE"
  %"add.28" = add i32 %".485", 32
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", i32* %"R2_NOTYPE"
  %"carry.3" = icmp ult i32 %"add.29", %".485"
  store i1 %"carry.3", i1* %"P1_Bool"
  ; IADD3 R6, R6, -0x8, RZ
  %".489" = load i32, i32* %"R6_NOTYPE"
  %"add.30" = add i32 %".489", -8
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", i32* %"R6_NOTYPE"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".492" = load i32, i32* %"R3_NOTYPE"
  %".493" = load i1, i1* %"P1_Bool"
  %".494" = sub i1 0, %".493"
  %".495" = zext i1 %".494" to i32
  %"add.32" = add i32 0, %".492"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".495"
  store i32 %"add.34", i32* %"R3_NOTYPE"
  ; FFMA R8, R8, R9, R7
  %".498" = load i32, i32* %"R8_NOTYPE"
  %".499" = load i32, i32* %"R9_NOTYPE"
  %".500" = load i32, i32* %"R7_NOTYPE"
  %"fmul.16" = fmul i32 %".498", %".499"
  %"fadd.16" = fadd i32 %"fmul.16", %".500"
  store i32 %"fadd.16", i32* %"R8_NOTYPE"
  ; FFMA R8, R11, R10, R8
  %".503" = load i32, i32* %"R11_NOTYPE"
  %".504" = load i32, i32* %"R10_NOTYPE"
  %".505" = load i32, i32* %"R8_NOTYPE"
  %"fmul.17" = fmul i32 %".503", %".504"
  %"fadd.17" = fadd i32 %"fmul.17", %".505"
  store i32 %"fadd.17", i32* %"R8_NOTYPE"
  ; FFMA R8, R13, R12, R8
  %".508" = load i32, i32* %"R13_NOTYPE"
  %".509" = load i32, i32* %"R12_NOTYPE"
  %".510" = load i32, i32* %"R8_NOTYPE"
  %"fmul.18" = fmul i32 %".508", %".509"
  %"fadd.18" = fadd i32 %"fmul.18", %".510"
  store i32 %"fadd.18", i32* %"R8_NOTYPE"
  ; FFMA R8, R15, R14, R8
  %".513" = load i32, i32* %"R15_NOTYPE"
  %".514" = load i32, i32* %"R14_NOTYPE"
  %".515" = load i32, i32* %"R8_NOTYPE"
  %"fmul.19" = fmul i32 %".513", %".514"
  %"fadd.19" = fadd i32 %"fmul.19", %".515"
  store i32 %"fadd.19", i32* %"R8_NOTYPE"
  ; FFMA R8, R17, R16, R8
  %".518" = load i32, i32* %"R17_NOTYPE"
  %".519" = load i32, i32* %"R16_NOTYPE"
  %".520" = load i32, i32* %"R8_NOTYPE"
  %"fmul.20" = fmul i32 %".518", %".519"
  %"fadd.20" = fadd i32 %"fmul.20", %".520"
  store i32 %"fadd.20", i32* %"R8_NOTYPE"
  ; FFMA R8, R19, R18, R8
  %".523" = load i32, i32* %"R19_NOTYPE"
  %".524" = load i32, i32* %"R18_NOTYPE"
  %".525" = load i32, i32* %"R8_NOTYPE"
  %"fmul.21" = fmul i32 %".523", %".524"
  %"fadd.21" = fadd i32 %"fmul.21", %".525"
  store i32 %"fadd.21", i32* %"R8_NOTYPE"
  ; FFMA R8, R21, R20, R8
  %".528" = load i32, i32* %"R21_NOTYPE"
  %".529" = load i32, i32* %"R20_NOTYPE"
  %".530" = load i32, i32* %"R8_NOTYPE"
  %"fmul.22" = fmul i32 %".528", %".529"
  %"fadd.22" = fadd i32 %"fmul.22", %".530"
  store i32 %"fadd.22", i32* %"R8_NOTYPE"
  ; FFMA R7, R23, R22, R8
  %".533" = load i32, i32* %"R23_NOTYPE"
  %".534" = load i32, i32* %"R22_NOTYPE"
  %".535" = load i32, i32* %"R8_NOTYPE"
  %"fmul.23" = fmul i32 %".533", %".534"
  %"fadd.23" = fadd i32 %"fmul.23", %".535"
  store i32 %"fadd.23", i32* %"R7_NOTYPE"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".538" = load i32, i32* %"R6_NOTYPE"
  %".539" = load i1, i1* %"PT_Bool"
  %"cmp.7" = icmp ne i32 %".538", 0
  %".540" = or i1 %"cmp.7", %".539"
  store i1 %".540", i1* %"P0_Bool"
  %".542" = load i1, i1* %"P0_Bool"
  %".543" = icmp eq i1 %".542", 1
  br i1 %".543", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".546" = load i32, i32* %"R2_NOTYPE"
  %".547" = add i32 %".546", 0
  %"for_LDG.48" = inttoptr i32 %".547" to i32*
  %".548" = load i32, i32* %"for_LDG.48"
  store i32 %".548", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R9, [UR4]
  %".551" = load i32, i32* %"UR4_NOTYPE"
  %".552" = add i32 %".551", 0
  %"for_LDG.49" = inttoptr i32 %".552" to i32*
  %".553" = load i32, i32* %"for_LDG.49"
  store i32 %".553", i32* %"R9_NOTYPE"
  ; LDG.E.SYS R11, [R2+0x4]
  %".556" = load i32, i32* %"R2_NOTYPE"
  %".557" = add i32 %".556", 4
  %"for_LDG.50" = inttoptr i32 %".557" to i32*
  %".558" = load i32, i32* %"for_LDG.50"
  store i32 %".558", i32* %"R11_NOTYPE"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".561" = load i32, i32* %"UR4_NOTYPE"
  %".562" = add i32 %".561", 4
  %"for_LDG.51" = inttoptr i32 %".562" to i32*
  %".563" = load i32, i32* %"for_LDG.51"
  store i32 %".563", i32* %"R10_NOTYPE"
  ; LDG.E.SYS R13, [R2+0x8]
  %".566" = load i32, i32* %"R2_NOTYPE"
  %".567" = add i32 %".566", 8
  %"for_LDG.52" = inttoptr i32 %".567" to i32*
  %".568" = load i32, i32* %"for_LDG.52"
  store i32 %".568", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".571" = load i32, i32* %"UR4_NOTYPE"
  %".572" = add i32 %".571", 8
  %"for_LDG.53" = inttoptr i32 %".572" to i32*
  %".573" = load i32, i32* %"for_LDG.53"
  store i32 %".573", i32* %"R12_NOTYPE"
  ; LDG.E.SYS R15, [R2+0xc]
  %".576" = load i32, i32* %"R2_NOTYPE"
  %".577" = add i32 %".576", 12
  %"for_LDG.54" = inttoptr i32 %".577" to i32*
  %".578" = load i32, i32* %"for_LDG.54"
  store i32 %".578", i32* %"R15_NOTYPE"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".581" = load i32, i32* %"UR4_NOTYPE"
  %".582" = add i32 %".581", 12
  %"for_LDG.55" = inttoptr i32 %".582" to i32*
  %".583" = load i32, i32* %"for_LDG.55"
  store i32 %".583", i32* %"R14_NOTYPE"
  ; IADD3 R6, R6, -0x4, RZ
  %".586" = load i32, i32* %"R6_NOTYPE"
  %"add.35" = add i32 %".586", -4
  %"add.36" = add i32 %"add.35", 0
  store i32 %"add.36", i32* %"R6_NOTYPE"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".589" = load i32, i32* %"UR4_NOTYPE"
  %"add.37" = add i32 %".589", 16
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", i32* %"UR4_NOTYPE"
  %"carry.4" = icmp ult i32 %"add.38", %".589"
  store i1 %"carry.4", i1* %"UP0_Bool"
  ; IADD3 R5, R5, 0x4, RZ
  %".593" = load i32, i32* %"R5_NOTYPE"
  %"add.39" = add i32 %".593", 4
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", i32* %"R5_NOTYPE"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".596" = load i32, i32* %"R6_NOTYPE"
  %".597" = load i1, i1* %"PT_Bool"
  %"cmp.8" = icmp ne i32 %".596", 0
  %".598" = and i1 %"cmp.8", %".597"
  store i1 %".598", i1* %"P0_Bool"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".601" = load i32, i32* %"UR5_NOTYPE"
  %".602" = load i1, i1* %"UP0_Bool"
  %".603" = sub i1 0, %".602"
  %".604" = zext i1 %".603" to i32
  %"add.41" = add i32 0, %".601"
  %"add.42" = add i32 %"add.41", 0
  %"add.43" = add i32 %"add.42", %".604"
  store i32 %"add.43", i32* %"UR5_NOTYPE"
  ; FFMA R8, R8, R9, R7
  %".607" = load i32, i32* %"R8_NOTYPE"
  %".608" = load i32, i32* %"R9_NOTYPE"
  %".609" = load i32, i32* %"R7_NOTYPE"
  %"fmul.24" = fmul i32 %".607", %".608"
  %"fadd.24" = fadd i32 %"fmul.24", %".609"
  store i32 %"fadd.24", i32* %"R8_NOTYPE"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".612" = load i32, i32* %"R2_NOTYPE"
  %"add.44" = add i32 %".612", 16
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", i32* %"R9_NOTYPE"
  %"carry.5" = icmp ult i32 %"add.45", %".612"
  store i1 %"carry.5", i1* %"P1_Bool"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".616" = load i32, i32* %"R9_NOTYPE"
  %"mul.6" = mul i32 0, 0
  %"add.46" = add i32 %"mul.6", %".616"
  store i32 %"add.46", i32* %"R2_NOTYPE"
  ; FFMA R8, R11, R10, R8
  %".619" = load i32, i32* %"R11_NOTYPE"
  %".620" = load i32, i32* %"R10_NOTYPE"
  %".621" = load i32, i32* %"R8_NOTYPE"
  %"fmul.25" = fmul i32 %".619", %".620"
  %"fadd.25" = fadd i32 %"fmul.25", %".621"
  store i32 %"fadd.25", i32* %"R8_NOTYPE"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".624" = load i32, i32* %"R3_NOTYPE"
  %".625" = load i1, i1* %"P1_Bool"
  %".626" = sub i1 0, %".625"
  %".627" = zext i1 %".626" to i32
  %"add.47" = add i32 0, %".624"
  %"add.48" = add i32 %"add.47", 0
  %"add.49" = add i32 %"add.48", %".627"
  store i32 %"add.49", i32* %"R10_NOTYPE"
  ; MOV R3, R10
  %".630" = load i32, i32* %"R10_NOTYPE"
  store i32 %".630", i32* %"R3_NOTYPE"
  ; FFMA R8, R13, R12, R8
  %".633" = load i32, i32* %"R13_NOTYPE"
  %".634" = load i32, i32* %"R12_NOTYPE"
  %".635" = load i32, i32* %"R8_NOTYPE"
  %"fmul.26" = fmul i32 %".633", %".634"
  %"fadd.26" = fadd i32 %"fmul.26", %".635"
  store i32 %"fadd.26", i32* %"R8_NOTYPE"
  ; FFMA R7, R15, R14, R8
  %".638" = load i32, i32* %"R15_NOTYPE"
  %".639" = load i32, i32* %"R14_NOTYPE"
  %".640" = load i32, i32* %"R8_NOTYPE"
  %"fmul.27" = fmul i32 %".638", %".639"
  %"fadd.27" = fadd i32 %"fmul.27", %".640"
  store i32 %"fadd.27", i32* %"R7_NOTYPE"
  %".642" = load i1, i1* %"P0_Bool"
  %".643" = icmp ne i1 %".642", 1
  br i1 %".643", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".646" = load i32, i32* %"R4_NOTYPE"
  %".647" = load i1, i1* %"PT_Bool"
  %"cmp.9" = icmp ne i32 %".646", 0
  %".648" = and i1 %"cmp.9", %".647"
  store i1 %".648", i1* %"P0_Bool"
  %".650" = load i1, i1* %"P0_Bool"
  %".651" = icmp eq i1 %".650", 1
  br i1 %".651", label %".L_x_0", label %".L_x_1_split_0x0900"
.L_x_1_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, i32* %"R8_NOTYPE"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".656" = load i32, i32* %"R0_NOTYPE"
  %".657" = load i32, i32* %"R5_NOTYPE"
  %"mul.7" = mul i32 %".656", %"Arg_6"
  %"add.50" = add i32 %"mul.7", %".657"
  store i32 %"add.50", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".660" = load i32, i32* %"R2_NOTYPE"
  %".661" = load i32, i32* %"R8_NOTYPE"
  %"mul.8" = mul i32 %".660", %".661"
  %"add.51" = add i32 %"mul.8", %"Arg_3"
  store i32 %"add.51", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".664" = load i32, i32* %"R5_NOTYPE"
  %".665" = load i32, i32* %"R8_NOTYPE"
  %"mul.9" = mul i32 %".664", %".665"
  %"add.52" = add i32 %"mul.9", %"Arg_2"
  store i32 %"add.52", i32* %"R8_NOTYPE"
  ; MOV R6, R2
  %".668" = load i32, i32* %"R2_NOTYPE"
  store i32 %".668", i32* %"R6_NOTYPE"
.L_x_6:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".671" = load i32, i32* %"R6_NOTYPE"
  %"mul.10" = mul i32 0, 0
  %"add.53" = add i32 %"mul.10", %".671"
  store i32 %"add.53", i32* %"R2_NOTYPE"
  ; LDG.E.SYS R5, [R8]
  %".674" = load i32, i32* %"R8_NOTYPE"
  %".675" = add i32 %".674", 0
  %"for_LDG.56" = inttoptr i32 %".675" to i32*
  %".676" = load i32, i32* %"for_LDG.56"
  store i32 %".676", i32* %"R5_NOTYPE"
  ; LDG.E.SYS R2, [R2]
  %".679" = load i32, i32* %"R2_NOTYPE"
  %".680" = add i32 %".679", 0
  %"for_LDG.57" = inttoptr i32 %".680" to i32*
  %".681" = load i32, i32* %"for_LDG.57"
  store i32 %".681", i32* %"R2_NOTYPE"
  ; IADD3 R4, R4, -0x1, RZ
  %".684" = load i32, i32* %"R4_NOTYPE"
  %"add.54" = add i32 %".684", -1
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", i32* %"R4_NOTYPE"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".687" = load i32, i32* %"R4_NOTYPE"
  %".688" = load i1, i1* %"PT_Bool"
  %"cmp.10" = icmp ne i32 %".687", 0
  %".689" = and i1 %"cmp.10", %".688"
  store i1 %".689", i1* %"P0_Bool"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".692" = load i32, i32* %"R6_NOTYPE"
  %"add.56" = add i32 %".692", 4
  %"add.57" = add i32 %"add.56", 0
  store i32 %"add.57", i32* %"R6_NOTYPE"
  %"carry.6" = icmp ult i32 %"add.57", %".692"
  store i1 %"carry.6", i1* %"P1_Bool"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".696" = load i32, i32* %"R8_NOTYPE"
  %"add.58" = add i32 %".696", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", i32* %"R8_NOTYPE"
  %"carry.7" = icmp ult i32 %"add.59", %".696"
  store i1 %"carry.7", i1* %"P2_Bool"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".700" = load i32, i32* %"R3_NOTYPE"
  %".701" = load i1, i1* %"P1_Bool"
  %".702" = sub i1 0, %".701"
  %".703" = zext i1 %".702" to i32
  %"add.60" = add i32 0, %".700"
  %"add.61" = add i32 %"add.60", 0
  %"add.62" = add i32 %"add.61", %".703"
  store i32 %"add.62", i32* %"R3_NOTYPE"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".706" = load i32, i32* %"R9_NOTYPE"
  %".707" = load i1, i1* %"P2_Bool"
  %".708" = sub i1 0, %".707"
  %".709" = zext i1 %".708" to i32
  %"add.63" = add i32 0, %".706"
  %"add.64" = add i32 %"add.63", 0
  %"add.65" = add i32 %"add.64", %".709"
  store i32 %"add.65", i32* %"R9_NOTYPE"
  ; FFMA R7, R2, R5, R7
  %".712" = load i32, i32* %"R2_NOTYPE"
  %".713" = load i32, i32* %"R5_NOTYPE"
  %".714" = load i32, i32* %"R7_NOTYPE"
  %"fmul.28" = fmul i32 %".712", %".713"
  %"fadd.28" = fadd i32 %"fmul.28", %".714"
  store i32 %"fadd.28", i32* %"R7_NOTYPE"
  %".716" = load i1, i1* %"P0_Bool"
  %".717" = icmp ne i1 %".716", 1
  br i1 %".717", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, i32* %"R5_NOTYPE"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".722" = load i32, i32* %"R0_NOTYPE"
  %".723" = load i32, i32* %"R5_NOTYPE"
  %"mul.11" = mul i32 %".722", %".723"
  %"add.66" = add i32 %"mul.11", %"Arg_4"
  store i32 %"add.66", i32* %"R2_NOTYPE"
  ; LDG.E.SYS R2, [R2]
  %".726" = load i32, i32* %"R2_NOTYPE"
  %".727" = add i32 %".726", 0
  %"for_LDG.58" = inttoptr i32 %".727" to i32*
  %".728" = load i32, i32* %"for_LDG.58"
  store i32 %".728", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".731" = load i32, i32* %"R0_NOTYPE"
  %".732" = load i32, i32* %"R5_NOTYPE"
  %"mul.12" = mul i32 %".731", %".732"
  %"add.67" = add i32 %"mul.12", %"Arg_5"
  store i32 %"add.67", i32* %"R4_NOTYPE"
  ; FADD R7, R2, R7
  %".735" = load i32, i32* %"R2_NOTYPE"
  %".736" = load i32, i32* %"R7_NOTYPE"
  %"fadd.29" = fadd i32 %".735", %".736"
  store i32 %"fadd.29", i32* %"R7_NOTYPE"
  ; STG.E.SYS [R4], R7
  %".739" = load i32, i32* %"R7_NOTYPE"
  %".740" = load i32, i32* %"R4_NOTYPE"
  %".741" = add i32 %".740", 0
  %"for_STG" = inttoptr i32 %".741" to i32*
  store i32 %".739", i32* %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_7:
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
  %".88" = load i1, i1* %"P2_Bool"
  %".89" = icmp eq i1 %".88", 1
  br i1 %".89", label %".text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160", label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160:
  ; IADD3 R0, R0, -R7.reuse, RZ
  %".92" = load i32, i32* %"R0_NOTYPE"
  %".93" = load i32, i32* %"R7_NOTYPE"
  %".94" = sub i32 0, %".93"
  %"add.10" = add i32 %".92", %".94"
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", i32* %"R0_NOTYPE"
  br label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_split_0x0170:
  %".97" = load i1, i1* %"P2_Bool"
  %".98" = icmp eq i1 %".97", 1
  br i1 %".98", label %".text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170", label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170:
  ; IADD3 R3, R3, 0x1, RZ
  %".101" = load i32, i32* %"R3_NOTYPE"
  %"add.12" = add i32 %".101", 1
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", i32* %"R3_NOTYPE"
  br label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0180:
  ; ISETP.GE.U32.AND P0, PT, R0, R7, PT
  %".105" = load i32, i32* %"R0_NOTYPE"
  %".106" = load i32, i32* %"R7_NOTYPE"
  %".107" = load i1, i1* %"PT_Bool"
  %"cmp.2" = icmp sge i32 %".105", %".106"
  %".108" = and i1 %"cmp.2", %".107"
  store i1 %".108", i1* %"P0_Bool"
  ; IMAD R0, R2, c[0x0][0x0], R5
  %".111" = load i32, i32* %"R2_NOTYPE"
  %".112" = load i32, i32* %"R5_NOTYPE"
  %"mul.8" = mul i32 %".111", %"Arg_0"
  %"add.14" = add i32 %"mul.8", %".112"
  store i32 %"add.14", i32* %"R0_NOTYPE"
  ; S2R R7, SR_TID.Y
  %"ThreadIdx.4" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.4", i32* %"R7_NOTYPE"
  ; ISETP.NE.AND P2, PT, RZ, c[0x0][0x174], PT
  %".117" = load i1, i1* %"PT_Bool"
  %"cmp.3" = icmp ne i32 0, %"Arg_6"
  %".118" = and i1 %"cmp.3", %".117"
  store i1 %".118", i1* %"P2_Bool"
  %".120" = load i1, i1* %"P0_Bool"
  %".121" = icmp ne i1 %".120", 1
  br i1 %".121", label %".text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0", label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0:
  ; IADD3 R3, R3, 0x1, RZ
  %".124" = load i32, i32* %"R3_NOTYPE"
  %"add.15" = add i32 %".124", 1
  %"add.16" = add i32 %"add.15", 0
  store i32 %"add.16", i32* %"R3_NOTYPE"
  br label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x01d0:
  ; IMAD.MOV.U32 R21, RZ, RZ, R3
  %".128" = load i32, i32* %"R3_NOTYPE"
  %"mul.9" = mul i32 0, 0
  %"add.17" = add i32 %"mul.9", %".128"
  store i32 %"add.17", i32* %"R21_NOTYPE"
  %".130" = load i1, i1* %"P1_Bool"
  %".131" = icmp eq i1 %".130", 1
  br i1 %".131", label %".text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0", label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0:
  ; IMAD.MOV R21, RZ, RZ, -R21
  %".134" = load i32, i32* %"R21_NOTYPE"
  %".135" = sub i32 0, %".134"
  %"mul.10" = mul i32 0, 0
  %"add.18" = add i32 %"mul.10", %".135"
  store i32 %"add.18", i32* %"R21_NOTYPE"
  br label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01f0:
  %".138" = load i1, i1* %"P2_Bool"
  %".139" = icmp eq i1 %".138", 1
  br i1 %".139", label %".text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0", label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0:
  ; LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".142" = xor i32 %"Arg_6", -1
  store i32 %".142", i32* %"R21_NOTYPE"
  br label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x0200:
  ; IMAD R10, R10, c[0x0][0x4], R7
  %".146" = load i32, i32* %"R10_NOTYPE"
  %".147" = load i32, i32* %"R7_NOTYPE"
  %"mul.11" = mul i32 %".146", %"Arg_1"
  %"add.19" = add i32 %"mul.11", %".147"
  store i32 %"add.19", i32* %"R10_NOTYPE"
  ; ISETP.GE.AND P0, PT, R0, R21, PT
  %".150" = load i32, i32* %"R0_NOTYPE"
  %".151" = load i32, i32* %"R21_NOTYPE"
  %".152" = load i1, i1* %"PT_Bool"
  %"cmp.4" = icmp sge i32 %".150", %".151"
  %".153" = and i1 %"cmp.4", %".152"
  store i1 %".153", i1* %"P0_Bool"
  ; ISETP.GE.OR P0, PT, R10, R21, P0
  %".156" = load i32, i32* %"R10_NOTYPE"
  %".157" = load i32, i32* %"R21_NOTYPE"
  %".158" = load i1, i1* %"PT_Bool"
  %"cmp.5" = icmp sge i32 %".156", %".157"
  %".159" = or i1 %"cmp.5", %".158"
  store i1 %".159", i1* %"P0_Bool"
  ; ISETP.GE.OR P0, PT, R19, c[0x0][0x178], P0
  %".162" = load i32, i32* %"R19_NOTYPE"
  %".163" = load i1, i1* %"PT_Bool"
  %"cmp.6" = icmp sge i32 %".162", %"Arg_7"
  %".164" = or i1 %"cmp.6", %".163"
  store i1 %".164", i1* %"P0_Bool"
  %".166" = load i1, i1* %"P0_Bool"
  %".167" = icmp ne i1 %".166", 1
  br i1 %".167", label %".text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240", label %".text._Z10max_pool2dPfS_iii_split_0x0250"
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
  %".176" = load i32, i32* %"R15_NOTYPE"
  %".177" = load i1, i1* %"PT_Bool"
  %"cmp.7" = icmp sge i32 %".176", 1
  %".178" = and i1 %"cmp.7", %".177"
  store i1 %".178", i1* %"P0_Bool"
  %".180" = load i1, i1* %"P0_Bool"
  %".181" = icmp eq i1 %".180", 1
  br i1 %".181", label %".L_x_8", label %".text._Z10max_pool2dPfS_iii_split_0x0290"
.text._Z10max_pool2dPfS_iii_split_0x0290:
  ; IMAD R3, R19, c[0x0][0x170], RZ
  %".184" = load i32, i32* %"R19_NOTYPE"
  %"mul.13" = mul i32 %".184", %"Arg_5"
  %"add.21" = add i32 %"mul.13", 0
  store i32 %"add.21", i32* %"R3_NOTYPE"
  ; IADD3 R2, R15.reuse, -0x1, RZ
  %".187" = load i32, i32* %"R15_NOTYPE"
  %"add.22" = add i32 %".187", -1
  %"add.23" = add i32 %"add.22", 0
  store i32 %"add.23", i32* %"R2_NOTYPE"
  ; IMAD R13, R0, c[0x0][0x174], RZ
  %".190" = load i32, i32* %"R0_NOTYPE"
  %"mul.14" = mul i32 %".190", %"Arg_6"
  %"add.24" = add i32 %"mul.14", 0
  store i32 %"add.24", i32* %"R13_NOTYPE"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".193" = load i32, i32* %"R15_NOTYPE"
  %".194" = and i32 %".193", 3
  store i32 %".194", i32* %"R15_NOTYPE"
  ; IMAD R12, R10, c[0x0][0x174], R3
  %".197" = load i32, i32* %"R10_NOTYPE"
  %".198" = load i32, i32* %"R3_NOTYPE"
  %"mul.15" = mul i32 %".197", %"Arg_6"
  %"add.25" = add i32 %"mul.15", %".198"
  store i32 %"add.25", i32* %"R12_NOTYPE"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".201" = load i32, i32* %"R2_NOTYPE"
  %".202" = load i1, i1* %"PT_Bool"
  %"cmp.8" = icmp sge i32 %".201", 3
  %".203" = and i1 %"cmp.8", %".202"
  store i1 %".203", i1* %"P0_Bool"
  ; IMAD.MOV.U32 R11, RZ, RZ, -0x800000
  %"mul.16" = mul i32 0, 0
  %"add.26" = add i32 %"mul.16", -8388608
  store i32 %"add.26", i32* %"R11_NOTYPE"
  ; IADD3 R20, R15, -c[0x0][0x174], RZ
  %".208" = load i32, i32* %"R15_NOTYPE"
  %".209" = sub i32 0, %"Arg_6"
  %"add.27" = add i32 %".208", %".209"
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", i32* %"R20_NOTYPE"
  ; IMAD.MOV.U32 R16, RZ, RZ, RZ
  %"mul.17" = mul i32 0, 0
  %"add.29" = add i32 %"mul.17", 0
  store i32 %"add.29", i32* %"R16_NOTYPE"
  ; IMAD R14, R12, c[0x0][0x170], R13
  %".214" = load i32, i32* %"R12_NOTYPE"
  %".215" = load i32, i32* %"R13_NOTYPE"
  %"mul.18" = mul i32 %".214", %"Arg_5"
  %"add.30" = add i32 %"mul.18", %".215"
  store i32 %"add.30", i32* %"R14_NOTYPE"
.L_x_12:
  ; UMOV UR4, URZ
  %".218" = load i32, i32* %"URZ_NOTYPE"
  store i32 %".218", i32* %"UR4_NOTYPE"
  ; ISETP.NE.AND P2, PT, R15, RZ, PT
  %".221" = load i32, i32* %"R15_NOTYPE"
  %".222" = load i1, i1* %"PT_Bool"
  %"cmp.9" = icmp ne i32 %".221", 0
  %".223" = and i1 %"cmp.9", %".222"
  store i1 %".223", i1* %"P2_Bool"
  %".225" = load i1, i1* %"P0_Bool"
  %".226" = icmp eq i1 %".225", 1
  br i1 %".226", label %".L_x_9", label %".L_x_12_split_0x0360"
.L_x_12_split_0x0360:
  ; IMAD.IADD R17, R14, 0x1, R16
  %".229" = load i32, i32* %"R14_NOTYPE"
  %".230" = load i32, i32* %"R16_NOTYPE"
  %"mul.19" = mul i32 %".229", 1
  %"add.31" = add i32 %"mul.19", %".230"
  store i32 %"add.31", i32* %"R17_NOTYPE"
  ; UMOV UR4, URZ
  %".233" = load i32, i32* %"URZ_NOTYPE"
  store i32 %".233", i32* %"UR4_NOTYPE"
.L_x_10:
  ; MOV R2, 0x4
  store i32 4, i32* %"R2_NOTYPE"
  ; IMAD.MOV.U32 R23, RZ, RZ, c[0x0][0x170]
  %"mul.20" = mul i32 0, 0
  %"add.32" = add i32 %"mul.20", %"Arg_5"
  store i32 %"add.32", i32* %"R23_NOTYPE"
  ; IMAD.WIDE R2, R17, R2, c[0x0][0x160]
  %".240" = load i32, i32* %"R17_NOTYPE"
  %".241" = load i32, i32* %"R2_NOTYPE"
  %"mul.21" = mul i32 %".240", %".241"
  %"add.33" = add i32 %"mul.21", %"Arg_3"
  store i32 %"add.33", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R4, R23.reuse, 0x4, R2
  %".244" = load i32, i32* %"R23_NOTYPE"
  %".245" = load i32, i32* %"R2_NOTYPE"
  %"mul.22" = mul i32 %".244", 4
  %"add.34" = add i32 %"mul.22", %".245"
  store i32 %"add.34", i32* %"R4_NOTYPE"
  ; LDG.E.SYS R2, [R2]
  %".248" = load i32, i32* %"R2_NOTYPE"
  %".249" = add i32 %".248", 0
  %"for_LDG" = inttoptr i32 %".249" to i32*
  %".250" = load i32, i32* %"for_LDG"
  store i32 %".250", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".253" = load i32, i32* %"R23_NOTYPE"
  %".254" = load i32, i32* %"R4_NOTYPE"
  %"mul.23" = mul i32 %".253", 4
  %"add.35" = add i32 %"mul.23", %".254"
  store i32 %"add.35", i32* %"R6_NOTYPE"
  ; LDG.E.SYS R4, [R4]
  %".257" = load i32, i32* %"R4_NOTYPE"
  %".258" = add i32 %".257", 0
  %"for_LDG.1" = inttoptr i32 %".258" to i32*
  %".259" = load i32, i32* %"for_LDG.1"
  store i32 %".259", i32* %"R4_NOTYPE"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".262" = load i32, i32* %"R23_NOTYPE"
  %".263" = load i32, i32* %"R6_NOTYPE"
  %"mul.24" = mul i32 %".262", 4
  %"add.36" = add i32 %"mul.24", %".263"
  store i32 %"add.36", i32* %"R8_NOTYPE"
  ; LDG.E.SYS R6, [R6]
  %".266" = load i32, i32* %"R6_NOTYPE"
  %".267" = add i32 %".266", 0
  %"for_LDG.2" = inttoptr i32 %".267" to i32*
  %".268" = load i32, i32* %"for_LDG.2"
  store i32 %".268", i32* %"R6_NOTYPE"
  ; LDG.E.SYS R8, [R8]
  %".271" = load i32, i32* %"R8_NOTYPE"
  %".272" = add i32 %".271", 0
  %"for_LDG.3" = inttoptr i32 %".272" to i32*
  %".273" = load i32, i32* %"for_LDG.3"
  store i32 %".273", i32* %"R8_NOTYPE"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".276" = load i32, i32* %"UR4_NOTYPE"
  %"add.37" = add i32 %".276", 4
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", i32* %"UR4_NOTYPE"
  ; IADD3 R18, R20, UR4, RZ
  %".279" = load i32, i32* %"R20_NOTYPE"
  %".280" = load i32, i32* %"UR4_NOTYPE"
  %"add.39" = add i32 %".279", %".280"
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", i32* %"R18_NOTYPE"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".283" = load i32, i32* %"R18_NOTYPE"
  %".284" = load i1, i1* %"PT_Bool"
  %"cmp.10" = icmp ne i32 %".283", 0
  %".285" = and i1 %"cmp.10", %".284"
  store i1 %".285", i1* %"P1_Bool"
  ; IMAD R17, R23, 0x4, R17
  %".288" = load i32, i32* %"R23_NOTYPE"
  %".289" = load i32, i32* %"R17_NOTYPE"
  %"mul.25" = mul i32 %".288", 4
  %"add.41" = add i32 %"mul.25", %".289"
  store i32 %"add.41", i32* %"R17_NOTYPE"
  ; FMNMX R11, R2, R11, !PT
  %".292" = load i32, i32* %"R2_NOTYPE"
  %".293" = load i32, i32* %"R11_NOTYPE"
  %".294" = fcmp olt i32 %".292", %".293"
  %"fmnmx_min" = select  i1 %".294", i32 %".292", i32 %".293"
  %".295" = fcmp ogt i32 %".292", %".293"
  %"fmnmx_max" = select  i1 %".295", i32 %".292", i32 %".293"
  %"fmnmx_final" = select  i1 1, i32 %"fmnmx_min", i32 %"fmnmx_max"
  store i32 %"fmnmx_final", i32* %"R11_NOTYPE"
  ; FMNMX R11, R11, R4, !PT
  %".298" = load i32, i32* %"R11_NOTYPE"
  %".299" = load i32, i32* %"R4_NOTYPE"
  %".300" = fcmp olt i32 %".298", %".299"
  %"fmnmx_min.1" = select  i1 %".300", i32 %".298", i32 %".299"
  %".301" = fcmp ogt i32 %".298", %".299"
  %"fmnmx_max.1" = select  i1 %".301", i32 %".298", i32 %".299"
  %"fmnmx_final.1" = select  i1 1, i32 %"fmnmx_min.1", i32 %"fmnmx_max.1"
  store i32 %"fmnmx_final.1", i32* %"R11_NOTYPE"
  ; FMNMX R11, R11, R6, !PT
  %".304" = load i32, i32* %"R11_NOTYPE"
  %".305" = load i32, i32* %"R6_NOTYPE"
  %".306" = fcmp olt i32 %".304", %".305"
  %"fmnmx_min.2" = select  i1 %".306", i32 %".304", i32 %".305"
  %".307" = fcmp ogt i32 %".304", %".305"
  %"fmnmx_max.2" = select  i1 %".307", i32 %".304", i32 %".305"
  %"fmnmx_final.2" = select  i1 1, i32 %"fmnmx_min.2", i32 %"fmnmx_max.2"
  store i32 %"fmnmx_final.2", i32* %"R11_NOTYPE"
  ; FMNMX R11, R11, R8, !PT
  %".310" = load i32, i32* %"R11_NOTYPE"
  %".311" = load i32, i32* %"R8_NOTYPE"
  %".312" = fcmp olt i32 %".310", %".311"
  %"fmnmx_min.3" = select  i1 %".312", i32 %".310", i32 %".311"
  %".313" = fcmp ogt i32 %".310", %".311"
  %"fmnmx_max.3" = select  i1 %".313", i32 %".310", i32 %".311"
  %"fmnmx_final.3" = select  i1 1, i32 %"fmnmx_min.3", i32 %"fmnmx_max.3"
  store i32 %"fmnmx_final.3", i32* %"R11_NOTYPE"
  %".315" = load i1, i1* %"P1_Bool"
  %".316" = icmp ne i1 %".315", 1
  br i1 %".316", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".319" = load i32, i32* %"R13_NOTYPE"
  %".320" = load i32, i32* %"R16_NOTYPE"
  %"mul.26" = mul i32 %".319", 1
  %"add.42" = add i32 %"mul.26", %".320"
  store i32 %"add.42", i32* %"R4_NOTYPE"
  %".322" = load i1, i1* %"P2_Bool"
  %".323" = icmp eq i1 %".322", 1
  br i1 %".323", label %".L_x_11", label %".L_x_9_split_0x04d0"
.L_x_9_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".326" = load i32, i32* %"R12_NOTYPE"
  %".327" = load i32, i32* %"UR4_NOTYPE"
  %"add.43" = add i32 %".326", %".327"
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", i32* %"R5_NOTYPE"
  ; MOV R7, 0x4
  store i32 4, i32* %"R7_NOTYPE"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".332" = load i32, i32* %"R5_NOTYPE"
  %".333" = load i32, i32* %"R4_NOTYPE"
  %"mul.27" = mul i32 %".332", %"Arg_5"
  %"add.45" = add i32 %"mul.27", %".333"
  store i32 %"add.45", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".336" = load i32, i32* %"R2_NOTYPE"
  %".337" = load i32, i32* %"R7_NOTYPE"
  %"mul.28" = mul i32 %".336", %".337"
  %"add.46" = add i32 %"mul.28", %"Arg_3"
  store i32 %"add.46", i32* %"R2_NOTYPE"
  ; LDG.E.SYS R2, [R2]
  %".340" = load i32, i32* %"R2_NOTYPE"
  %".341" = add i32 %".340", 0
  %"for_LDG.4" = inttoptr i32 %".341" to i32*
  %".342" = load i32, i32* %"for_LDG.4"
  store i32 %".342", i32* %"R2_NOTYPE"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".345" = load i32, i32* %"R15_NOTYPE"
  %".346" = load i1, i1* %"PT_Bool"
  %"cmp.11" = icmp ne i32 %".345", 1
  %".347" = and i1 %"cmp.11", %".346"
  store i1 %".347", i1* %"P1_Bool"
  ; FMNMX R11, R11, R2, !PT
  %".350" = load i32, i32* %"R11_NOTYPE"
  %".351" = load i32, i32* %"R2_NOTYPE"
  %".352" = fcmp olt i32 %".350", %".351"
  %"fmnmx_min.4" = select  i1 %".352", i32 %".350", i32 %".351"
  %".353" = fcmp ogt i32 %".350", %".351"
  %"fmnmx_max.4" = select  i1 %".353", i32 %".350", i32 %".351"
  %"fmnmx_final.4" = select  i1 1, i32 %"fmnmx_min.4", i32 %"fmnmx_max.4"
  store i32 %"fmnmx_final.4", i32* %"R11_NOTYPE"
  %".355" = load i1, i1* %"P1_Bool"
  %".356" = icmp eq i1 %".355", 1
  br i1 %".356", label %".L_x_11", label %".L_x_9_split_0x0550"
.L_x_9_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".359" = load i32, i32* %"R15_NOTYPE"
  %".360" = load i1, i1* %"PT_Bool"
  %"cmp.12" = icmp ne i32 %".359", 2
  %".361" = and i1 %"cmp.12", %".360"
  store i1 %".361", i1* %"P1_Bool"
  ; IADD3 R2, R5, 0x1, RZ
  %".364" = load i32, i32* %"R5_NOTYPE"
  %"add.47" = add i32 %".364", 1
  %"add.48" = add i32 %"add.47", 0
  store i32 %"add.48", i32* %"R2_NOTYPE"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".367" = load i32, i32* %"R2_NOTYPE"
  %".368" = load i32, i32* %"R4_NOTYPE"
  %"mul.29" = mul i32 %".367", %"Arg_5"
  %"add.49" = add i32 %"mul.29", %".368"
  store i32 %"add.49", i32* %"R2_NOTYPE"
  %".370" = load i1, i1* %"P1_Bool"
  %".371" = icmp ne i1 %".370", 1
  br i1 %".371", label %".L_x_9_split_0x0550_conditionalExpr_0x0580", label %".L_x_9_split_0x0590"
.L_x_9_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".374" = load i32, i32* %"R5_NOTYPE"
  %"add.50" = add i32 %".374", 2
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", i32* %"R3_NOTYPE"
  br label %".L_x_9_split_0x0590"
.L_x_9_split_0x0590:
  %".377" = load i1, i1* %"P1_Bool"
  %".378" = icmp ne i1 %".377", 1
  br i1 %".378", label %".L_x_9_split_0x0590_conditionalExpr_0x0590", label %".L_x_9_split_0x05a0"
.L_x_9_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".381" = load i32, i32* %"R3_NOTYPE"
  %".382" = load i32, i32* %"R4_NOTYPE"
  %"mul.30" = mul i32 %".381", %"Arg_5"
  %"add.52" = add i32 %"mul.30", %".382"
  store i32 %"add.52", i32* %"R4_NOTYPE"
  br label %".L_x_9_split_0x05a0"
.L_x_9_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".386" = load i32, i32* %"R2_NOTYPE"
  %".387" = load i32, i32* %"R7_NOTYPE"
  %"mul.31" = mul i32 %".386", %".387"
  %"add.53" = add i32 %"mul.31", %"Arg_3"
  store i32 %"add.53", i32* %"R2_NOTYPE"
  %".389" = load i1, i1* %"P1_Bool"
  %".390" = icmp ne i1 %".389", 1
  br i1 %".390", label %".L_x_9_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".393" = load i32, i32* %"R4_NOTYPE"
  %".394" = load i32, i32* %"R7_NOTYPE"
  %"mul.32" = mul i32 %".393", %".394"
  %"add.54" = add i32 %"mul.32", %"Arg_3"
  store i32 %"add.54", i32* %"R4_NOTYPE"
  br label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".398" = load i32, i32* %"R2_NOTYPE"
  %".399" = add i32 %".398", 0
  %"for_LDG.5" = inttoptr i32 %".399" to i32*
  %".400" = load i32, i32* %"for_LDG.5"
  store i32 %".400", i32* %"R2_NOTYPE"
  %".402" = load i1, i1* %"P1_Bool"
  %".403" = icmp ne i1 %".402", 1
  br i1 %".403", label %".L_x_9_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".406" = load i32, i32* %"R4_NOTYPE"
  %".407" = add i32 %".406", 0
  %"for_LDG.6" = inttoptr i32 %".407" to i32*
  %".408" = load i32, i32* %"for_LDG.6"
  store i32 %".408", i32* %"R4_NOTYPE"
  br label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".412" = load i32, i32* %"R11_NOTYPE"
  %".413" = load i32, i32* %"R2_NOTYPE"
  %".414" = fcmp olt i32 %".412", %".413"
  %"fmnmx_min.5" = select  i1 %".414", i32 %".412", i32 %".413"
  %".415" = fcmp ogt i32 %".412", %".413"
  %"fmnmx_max.5" = select  i1 %".415", i32 %".412", i32 %".413"
  %"fmnmx_final.5" = select  i1 1, i32 %"fmnmx_min.5", i32 %"fmnmx_max.5"
  store i32 %"fmnmx_final.5", i32* %"R11_NOTYPE"
  %".417" = load i1, i1* %"P1_Bool"
  %".418" = icmp ne i1 %".417", 1
  br i1 %".418", label %".L_x_9_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_11"
.L_x_9_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".421" = load i32, i32* %"R11_NOTYPE"
  %".422" = load i32, i32* %"R4_NOTYPE"
  %".423" = fcmp olt i32 %".421", %".422"
  %"fmnmx_min.6" = select  i1 %".423", i32 %".421", i32 %".422"
  %".424" = fcmp ogt i32 %".421", %".422"
  %"fmnmx_max.6" = select  i1 %".424", i32 %".421", i32 %".422"
  %"fmnmx_final.6" = select  i1 1, i32 %"fmnmx_min.6", i32 %"fmnmx_max.6"
  store i32 %"fmnmx_final.6", i32* %"R11_NOTYPE"
  br label %".L_x_11"
.L_x_11:
  ; IADD3 R16, R16, 0x1, RZ
  %".428" = load i32, i32* %"R16_NOTYPE"
  %"add.55" = add i32 %".428", 1
  %"add.56" = add i32 %"add.55", 0
  store i32 %"add.56", i32* %"R16_NOTYPE"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".431" = load i32, i32* %"R16_NOTYPE"
  %".432" = load i1, i1* %"PT_Bool"
  %"cmp.13" = icmp sge i32 %".431", %"Arg_6"
  %".433" = and i1 %"cmp.13", %".432"
  store i1 %".433", i1* %"P1_Bool"
  %".435" = load i1, i1* %"P1_Bool"
  %".436" = icmp eq i1 %".435", 1
  br i1 %".436", label %".L_x_12", label %".L_x_8"
.L_x_8:
  ; IMAD R3, R21.reuse, R19, R10
  %".439" = load i32, i32* %"R21_NOTYPE"
  %".440" = load i32, i32* %"R19_NOTYPE"
  %".441" = load i32, i32* %"R10_NOTYPE"
  %"mul.33" = mul i32 %".439", %".440"
  %"add.57" = add i32 %"mul.33", %".441"
  store i32 %"add.57", i32* %"R3_NOTYPE"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"mul.34" = mul i32 0, 0
  %"add.58" = add i32 %"mul.34", 4
  store i32 %"add.58", i32* %"R2_NOTYPE"
  ; IMAD R3, R21, R3, R0
  %".446" = load i32, i32* %"R21_NOTYPE"
  %".447" = load i32, i32* %"R3_NOTYPE"
  %".448" = load i32, i32* %"R0_NOTYPE"
  %"mul.35" = mul i32 %".446", %".447"
  %"add.59" = add i32 %"mul.35", %".448"
  store i32 %"add.59", i32* %"R3_NOTYPE"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".451" = load i32, i32* %"R3_NOTYPE"
  %".452" = load i32, i32* %"R2_NOTYPE"
  %"mul.36" = mul i32 %".451", %".452"
  %"add.60" = add i32 %"mul.36", %"Arg_4"
  store i32 %"add.60", i32* %"R2_NOTYPE"
  ; STG.E.SYS [R2], R11
  %".455" = load i32, i32* %"R11_NOTYPE"
  %".456" = load i32, i32* %"R2_NOTYPE"
  %".457" = add i32 %".456", 0
  %"for_STG" = inttoptr i32 %".457" to i32*
  store i32 %".455", i32* %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_13:
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
  %".23" = load i1, i1* %"P0_Bool"
  %".24" = icmp ne i1 %".23", 1
  br i1 %".24", label %".text._Z4reluPfS_i_conditionalExpr_0x0050", label %".text._Z4reluPfS_i_split_0x0060"
.text._Z4reluPfS_i_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z4reluPfS_i_split_0x0060:
  ; MOV R5, 0x4
  store i32 4, i32* %"R5_NOTYPE"
  ; IMAD.WIDE R2, R4, R5, c[0x0][0x160]
  %".31" = load i32, i32* %"R4_NOTYPE"
  %".32" = load i32, i32* %"R5_NOTYPE"
  %"mul.1" = mul i32 %".31", %".32"
  %"add.1" = add i32 %"mul.1", %"Arg_2"
  store i32 %"add.1", i32* %"R2_NOTYPE"
  ; LDG.E.SYS R2, [R2]
  %".35" = load i32, i32* %"R2_NOTYPE"
  %".36" = add i32 %".35", 0
  %"for_LDG" = inttoptr i32 %".36" to i32*
  %".37" = load i32, i32* %"for_LDG"
  store i32 %".37", i32* %"R2_NOTYPE"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x168]
  %".40" = load i32, i32* %"R4_NOTYPE"
  %".41" = load i32, i32* %"R5_NOTYPE"
  %"mul.2" = mul i32 %".40", %".41"
  %"add.2" = add i32 %"mul.2", %"Arg_3"
  store i32 %"add.2", i32* %"R4_NOTYPE"
  ; FMNMX R7, RZ, R2, !PT
  %".44" = load i32, i32* %"R2_NOTYPE"
  %".45" = fcmp olt i32 0, %".44"
  %"fmnmx_min" = select  i1 %".45", i32 0, i32 %".44"
  %".46" = fcmp ogt i32 0, %".44"
  %"fmnmx_max" = select  i1 %".46", i32 0, i32 %".44"
  %"fmnmx_final" = select  i1 1, i32 %"fmnmx_min", i32 %"fmnmx_max"
  store i32 %"fmnmx_final", i32* %"R7_NOTYPE"
  ; STG.E.SYS [R4], R7
  %".49" = load i32, i32* %"R7_NOTYPE"
  %".50" = load i32, i32* %"R4_NOTYPE"
  %".51" = add i32 %".50", 0
  %"for_STG" = inttoptr i32 %".51" to i32*
  store i32 %".49", i32* %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_14:
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
  %".57" = load i1, i1* %"P0_Bool"
  %".58" = icmp ne i1 %".57", 1
  br i1 %".58", label %".text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0", label %".text._Z6conv2dPfS_S_iiii_split_0x00e0"
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
  %".67" = load i32, i32* %"R4_NOTYPE"
  %".68" = load i1, i1* %"PT_Bool"
  %"cmp.3" = icmp sle i32 %".67", %"Arg_7"
  %".69" = and i1 %"cmp.3", %".68"
  store i1 %".69", i1* %"P0_Bool"
  ; ISETP.GT.OR P0, PT, R4, c[0x0][0x180], !P0
  %".72" = load i32, i32* %"R4_NOTYPE"
  %".73" = load i1, i1* %"PT_Bool"
  %"cmp.4" = icmp sgt i32 %".72", %"Arg_8"
  %".74" = or i1 %"cmp.4", %".73"
  store i1 %".74", i1* %"P0_Bool"
  %".76" = load i1, i1* %"P0_Bool"
  %".77" = icmp ne i1 %".76", 1
  br i1 %".77", label %".L_x_15", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
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
  %".86" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".86", i32* %"R12_NOTYPE"
  ; IADD3 R5, -R5, c[0x0][0x17c], RZ
  %".89" = load i32, i32* %"R5_NOTYPE"
  %".90" = sub i32 0, %".89"
  %"add.7" = add i32 %".90", %"Arg_7"
  %"add.8" = add i32 %"add.7", 0
  store i32 %"add.8", i32* %"R5_NOTYPE"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".93" = load i32, i32* %"R4_NOTYPE"
  %".94" = and i32 %".93", 3
  store i32 %".94", i32* %"R4_NOTYPE"
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".97" = load i32, i32* %"R5_NOTYPE"
  %".98" = load i1, i1* %"PT_Bool"
  %"cmp.5" = icmp sge i32 %".97", 3
  %".99" = and i1 %"cmp.5", %".98"
  store i1 %".99", i1* %"P0_Bool"
  ; IADD3 R26, R4, -c[0x0][0x17c], RZ
  %".102" = load i32, i32* %"R4_NOTYPE"
  %".103" = sub i32 0, %"Arg_7"
  %"add.9" = add i32 %".102", %".103"
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", i32* %"R26_NOTYPE"
.L_x_20:
  ; IMAD R11, R10, c[0x0][0x178], R3
  %".106" = load i32, i32* %"R10_NOTYPE"
  %".107" = load i32, i32* %"R3_NOTYPE"
  %"mul.5" = mul i32 %".106", %"Arg_6"
  %"add.11" = add i32 %"mul.5", %".107"
  store i32 %"add.11", i32* %"R11_NOTYPE"
  ; MOV R8, RZ
  %".110" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".110", i32* %"R8_NOTYPE"
  ; IMAD R9, R0, c[0x0][0x180], R10
  %".113" = load i32, i32* %"R0_NOTYPE"
  %".114" = load i32, i32* %"R10_NOTYPE"
  %"mul.6" = mul i32 %".113", %"Arg_8"
  %"add.12" = add i32 %"mul.6", %".114"
  store i32 %"add.12", i32* %"R9_NOTYPE"
  ; IADD3 R10, R10, 0x1, RZ
  %".117" = load i32, i32* %"R10_NOTYPE"
  %"add.13" = add i32 %".117", 1
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", i32* %"R10_NOTYPE"
  ; IMAD R5, R11, c[0x0][0x178], R2
  %".120" = load i32, i32* %"R11_NOTYPE"
  %".121" = load i32, i32* %"R2_NOTYPE"
  %"mul.7" = mul i32 %".120", %"Arg_6"
  %"add.15" = add i32 %"mul.7", %".121"
  store i32 %"add.15", i32* %"R5_NOTYPE"
  ; ISETP.GE.AND P1, PT, R10, c[0x0][0x180], PT
  %".124" = load i32, i32* %"R10_NOTYPE"
  %".125" = load i1, i1* %"PT_Bool"
  %"cmp.6" = icmp sge i32 %".124", %"Arg_8"
  %".126" = and i1 %"cmp.6", %".125"
  store i1 %".126", i1* %"P1_Bool"
.L_x_19:
  ; IMAD R6, R9, c[0x0][0x17c], R8
  %".129" = load i32, i32* %"R9_NOTYPE"
  %".130" = load i32, i32* %"R8_NOTYPE"
  %"mul.8" = mul i32 %".129", %"Arg_7"
  %"add.16" = add i32 %"mul.8", %".130"
  store i32 %"add.16", i32* %"R6_NOTYPE"
  ; UMOV UR4, URZ
  %".133" = load i32, i32* %"URZ_NOTYPE"
  store i32 %".133", i32* %"UR4_NOTYPE"
  ; ISETP.NE.AND P3, PT, R4, RZ, PT
  %".136" = load i32, i32* %"R4_NOTYPE"
  %".137" = load i1, i1* %"PT_Bool"
  %"cmp.7" = icmp ne i32 %".136", 0
  %".138" = and i1 %"cmp.7", %".137"
  store i1 %".138", i1* %"P3_Bool"
  ; IMAD R29, R6, c[0x0][0x17c], RZ
  %".141" = load i32, i32* %"R6_NOTYPE"
  %"mul.9" = mul i32 %".141", %"Arg_7"
  %"add.17" = add i32 %"mul.9", 0
  store i32 %"add.17", i32* %"R29_NOTYPE"
  %".143" = load i1, i1* %"P0_Bool"
  %".144" = icmp eq i1 %".143", 1
  br i1 %".144", label %".L_x_16", label %".L_x_19_split_0x0260"
.L_x_19_split_0x0260:
  ; MOV R24, 0x4
  store i32 4, i32* %"R24_NOTYPE"
  ; IMAD.IADD R13, R5, 0x1, R8
  %".149" = load i32, i32* %"R5_NOTYPE"
  %".150" = load i32, i32* %"R8_NOTYPE"
  %"mul.10" = mul i32 %".149", 1
  %"add.18" = add i32 %"mul.10", %".150"
  store i32 %"add.18", i32* %"R13_NOTYPE"
  ; UMOV UR4, URZ
  %".153" = load i32, i32* %"URZ_NOTYPE"
  store i32 %".153", i32* %"UR4_NOTYPE"
  ; IMAD.WIDE R6, R29, R24, c[0x0][0x168]
  %".156" = load i32, i32* %"R29_NOTYPE"
  %".157" = load i32, i32* %"R24_NOTYPE"
  %"mul.11" = mul i32 %".156", %".157"
  %"add.19" = add i32 %"mul.11", %"Arg_4"
  store i32 %"add.19", i32* %"R6_NOTYPE"
  ; MOV R23, R6
  %".160" = load i32, i32* %"R6_NOTYPE"
  store i32 %".160", i32* %"R23_NOTYPE"
.L_x_17:
  ; IMAD.WIDE R14, R13, R24, c[0x0][0x160]
  %".163" = load i32, i32* %"R13_NOTYPE"
  %".164" = load i32, i32* %"R24_NOTYPE"
  %"mul.12" = mul i32 %".163", %".164"
  %"add.20" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.20", i32* %"R14_NOTYPE"
  ; MOV R31, c[0x0][0x178]
  store i32 %"Arg_6", i32* %"R31_NOTYPE"
  ; IMAD.MOV.U32 R6, RZ, RZ, R23
  %".169" = load i32, i32* %"R23_NOTYPE"
  %"mul.13" = mul i32 0, 0
  %"add.21" = add i32 %"mul.13", %".169"
  store i32 %"add.21", i32* %"R6_NOTYPE"
  ; IMAD.WIDE R16, R31.reuse, 0x4, R14
  %".172" = load i32, i32* %"R31_NOTYPE"
  %".173" = load i32, i32* %"R14_NOTYPE"
  %"mul.14" = mul i32 %".172", 4
  %"add.22" = add i32 %"mul.14", %".173"
  store i32 %"add.22", i32* %"R16_NOTYPE"
  ; LDG.E.SYS R14, [R14]
  %".176" = load i32, i32* %"R14_NOTYPE"
  %".177" = add i32 %".176", 0
  %"for_LDG" = inttoptr i32 %".177" to i32*
  %".178" = load i32, i32* %"for_LDG"
  store i32 %".178", i32* %"R14_NOTYPE"
  ; LDG.E.SYS R23, [R6]
  %".181" = load i32, i32* %"R6_NOTYPE"
  %".182" = add i32 %".181", 0
  %"for_LDG.1" = inttoptr i32 %".182" to i32*
  %".183" = load i32, i32* %"for_LDG.1"
  store i32 %".183", i32* %"R23_NOTYPE"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".186" = load i32, i32* %"R31_NOTYPE"
  %".187" = load i32, i32* %"R16_NOTYPE"
  %"mul.15" = mul i32 %".186", 4
  %"add.23" = add i32 %"mul.15", %".187"
  store i32 %"add.23", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R16, [R16]
  %".190" = load i32, i32* %"R16_NOTYPE"
  %".191" = add i32 %".190", 0
  %"for_LDG.2" = inttoptr i32 %".191" to i32*
  %".192" = load i32, i32* %"for_LDG.2"
  store i32 %".192", i32* %"R16_NOTYPE"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".195" = load i32, i32* %"R31_NOTYPE"
  %".196" = load i32, i32* %"R18_NOTYPE"
  %"mul.16" = mul i32 %".195", 4
  %"add.24" = add i32 %"mul.16", %".196"
  store i32 %"add.24", i32* %"R20_NOTYPE"
  ; LDG.E.SYS R22, [R6+0x4]
  %".199" = load i32, i32* %"R6_NOTYPE"
  %".200" = add i32 %".199", 4
  %"for_LDG.3" = inttoptr i32 %".200" to i32*
  %".201" = load i32, i32* %"for_LDG.3"
  store i32 %".201", i32* %"R22_NOTYPE"
  ; LDG.E.SYS R18, [R18]
  %".204" = load i32, i32* %"R18_NOTYPE"
  %".205" = add i32 %".204", 0
  %"for_LDG.4" = inttoptr i32 %".205" to i32*
  %".206" = load i32, i32* %"for_LDG.4"
  store i32 %".206", i32* %"R18_NOTYPE"
  ; LDG.E.SYS R25, [R6+0x8]
  %".209" = load i32, i32* %"R6_NOTYPE"
  %".210" = add i32 %".209", 8
  %"for_LDG.5" = inttoptr i32 %".210" to i32*
  %".211" = load i32, i32* %"for_LDG.5"
  store i32 %".211", i32* %"R25_NOTYPE"
  ; LDG.E.SYS R20, [R20]
  %".214" = load i32, i32* %"R20_NOTYPE"
  %".215" = add i32 %".214", 0
  %"for_LDG.6" = inttoptr i32 %".215" to i32*
  %".216" = load i32, i32* %"for_LDG.6"
  store i32 %".216", i32* %"R20_NOTYPE"
  ; LDG.E.SYS R27, [R6+0xc]
  %".219" = load i32, i32* %"R6_NOTYPE"
  %".220" = add i32 %".219", 12
  %"for_LDG.7" = inttoptr i32 %".220" to i32*
  %".221" = load i32, i32* %"for_LDG.7"
  store i32 %".221", i32* %"R27_NOTYPE"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".224" = load i32, i32* %"UR4_NOTYPE"
  %"add.25" = add i32 %".224", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", i32* %"UR4_NOTYPE"
  ; LEA R13, R31, R13, 0x2
  %".227" = load i32, i32* %"R31_NOTYPE"
  %".228" = load i32, i32* %"R13_NOTYPE"
  %"shl" = shl i32 %".227", 2
  %"add.27" = add i32 %"shl", %".228"
  store i32 %"add.27", i32* %"R13_NOTYPE"
  ; FFMA R23, R23, R14, R12
  %".231" = load i32, i32* %"R23_NOTYPE"
  %".232" = load i32, i32* %"R14_NOTYPE"
  %".233" = load i32, i32* %"R12_NOTYPE"
  %"fmul" = fmul i32 %".231", %".232"
  %"fadd" = fadd i32 %"fmul", %".233"
  store i32 %"fadd", i32* %"R23_NOTYPE"
  ; IADD3 R12, R26, UR4, RZ
  %".236" = load i32, i32* %"R26_NOTYPE"
  %".237" = load i32, i32* %"UR4_NOTYPE"
  %"add.28" = add i32 %".236", %".237"
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", i32* %"R12_NOTYPE"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".240" = load i32, i32* %"R12_NOTYPE"
  %".241" = load i1, i1* %"PT_Bool"
  %"cmp.8" = icmp ne i32 %".240", 0
  %".242" = and i1 %"cmp.8", %".241"
  store i1 %".242", i1* %"P2_Bool"
  ; FFMA R22, R22, R16, R23
  %".245" = load i32, i32* %"R22_NOTYPE"
  %".246" = load i32, i32* %"R16_NOTYPE"
  %".247" = load i32, i32* %"R23_NOTYPE"
  %"fmul.1" = fmul i32 %".245", %".246"
  %"fadd.1" = fadd i32 %"fmul.1", %".247"
  store i32 %"fadd.1", i32* %"R22_NOTYPE"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".250" = load i32, i32* %"R6_NOTYPE"
  %"add.30" = add i32 %".250", 16
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", i32* %"R23_NOTYPE"
  %"carry" = icmp ult i32 %"add.31", %".250"
  store i1 %"carry", i1* %"P4_Bool"
  ; FFMA R22, R25, R18, R22
  %".254" = load i32, i32* %"R25_NOTYPE"
  %".255" = load i32, i32* %"R18_NOTYPE"
  %".256" = load i32, i32* %"R22_NOTYPE"
  %"fmul.2" = fmul i32 %".254", %".255"
  %"fadd.2" = fadd i32 %"fmul.2", %".256"
  store i32 %"fadd.2", i32* %"R22_NOTYPE"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".259" = load i32, i32* %"R7_NOTYPE"
  %".260" = load i1, i1* %"P4_Bool"
  %".261" = sub i1 0, %".260"
  %".262" = zext i1 %".261" to i32
  %"add.32" = add i32 0, %".259"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".262"
  store i32 %"add.34", i32* %"R7_NOTYPE"
  ; FFMA R12, R27, R20, R22
  %".265" = load i32, i32* %"R27_NOTYPE"
  %".266" = load i32, i32* %"R20_NOTYPE"
  %".267" = load i32, i32* %"R22_NOTYPE"
  %"fmul.3" = fmul i32 %".265", %".266"
  %"fadd.3" = fadd i32 %"fmul.3", %".267"
  store i32 %"fadd.3", i32* %"R12_NOTYPE"
  %".269" = load i1, i1* %"P2_Bool"
  %".270" = icmp ne i1 %".269", 1
  br i1 %".270", label %".L_x_17", label %".L_x_16"
.L_x_16:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".273" = load i32, i32* %"R2_NOTYPE"
  %".274" = load i32, i32* %"R8_NOTYPE"
  %"mul.17" = mul i32 %".273", 1
  %"add.35" = add i32 %"mul.17", %".274"
  store i32 %"add.35", i32* %"R14_NOTYPE"
  %".276" = load i1, i1* %"P3_Bool"
  %".277" = icmp eq i1 %".276", 1
  br i1 %".277", label %".L_x_18", label %".L_x_16_split_0x0460"
.L_x_16_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".280" = load i32, i32* %"R11_NOTYPE"
  %".281" = load i32, i32* %"UR4_NOTYPE"
  %"add.36" = add i32 %".280", %".281"
  %"add.37" = add i32 %"add.36", 0
  store i32 %"add.37", i32* %"R15_NOTYPE"
  ; IADD3 R16, R29, UR4, RZ
  %".284" = load i32, i32* %"R29_NOTYPE"
  %".285" = load i32, i32* %"UR4_NOTYPE"
  %"add.38" = add i32 %".284", %".285"
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", i32* %"R16_NOTYPE"
  ; MOV R19, 0x4
  store i32 4, i32* %"R19_NOTYPE"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".290" = load i32, i32* %"R15_NOTYPE"
  %".291" = load i32, i32* %"R14_NOTYPE"
  %"mul.18" = mul i32 %".290", %"Arg_6"
  %"add.40" = add i32 %"mul.18", %".291"
  store i32 %"add.40", i32* %"R6_NOTYPE"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".294" = load i32, i32* %"R16_NOTYPE"
  %".295" = load i32, i32* %"R19_NOTYPE"
  %"mul.19" = mul i32 %".294", %".295"
  %"add.41" = add i32 %"mul.19", %"Arg_4"
  store i32 %"add.41", i32* %"R16_NOTYPE"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".298" = load i32, i32* %"R6_NOTYPE"
  %".299" = load i32, i32* %"R19_NOTYPE"
  %"mul.20" = mul i32 %".298", %".299"
  %"add.42" = add i32 %"mul.20", %"Arg_3"
  store i32 %"add.42", i32* %"R6_NOTYPE"
  ; LDG.E.SYS R13, [R16]
  %".302" = load i32, i32* %"R16_NOTYPE"
  %".303" = add i32 %".302", 0
  %"for_LDG.8" = inttoptr i32 %".303" to i32*
  %".304" = load i32, i32* %"for_LDG.8"
  store i32 %".304", i32* %"R13_NOTYPE"
  ; LDG.E.SYS R6, [R6]
  %".307" = load i32, i32* %"R6_NOTYPE"
  %".308" = add i32 %".307", 0
  %"for_LDG.9" = inttoptr i32 %".308" to i32*
  %".309" = load i32, i32* %"for_LDG.9"
  store i32 %".309", i32* %"R6_NOTYPE"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".312" = load i32, i32* %"R4_NOTYPE"
  %".313" = load i1, i1* %"PT_Bool"
  %"cmp.9" = icmp ne i32 %".312", 1
  %".314" = and i1 %"cmp.9", %".313"
  store i1 %".314", i1* %"P2_Bool"
  ; FFMA R12, R13, R6, R12
  %".317" = load i32, i32* %"R13_NOTYPE"
  %".318" = load i32, i32* %"R6_NOTYPE"
  %".319" = load i32, i32* %"R12_NOTYPE"
  %"fmul.4" = fmul i32 %".317", %".318"
  %"fadd.4" = fadd i32 %"fmul.4", %".319"
  store i32 %"fadd.4", i32* %"R12_NOTYPE"
  %".321" = load i1, i1* %"P2_Bool"
  %".322" = icmp eq i1 %".321", 1
  br i1 %".322", label %".L_x_18", label %".L_x_16_split_0x0510"
.L_x_16_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".325" = load i32, i32* %"R4_NOTYPE"
  %".326" = load i1, i1* %"PT_Bool"
  %"cmp.10" = icmp ne i32 %".325", 2
  %".327" = and i1 %"cmp.10", %".326"
  store i1 %".327", i1* %"P2_Bool"
  ; LDG.E.SYS R13, [R16+0x4]
  %".330" = load i32, i32* %"R16_NOTYPE"
  %".331" = add i32 %".330", 4
  %"for_LDG.10" = inttoptr i32 %".331" to i32*
  %".332" = load i32, i32* %"for_LDG.10"
  store i32 %".332", i32* %"R13_NOTYPE"
  ; IADD3 R6, R15, 0x1, RZ
  %".335" = load i32, i32* %"R15_NOTYPE"
  %"add.43" = add i32 %".335", 1
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", i32* %"R6_NOTYPE"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".338" = load i32, i32* %"R6_NOTYPE"
  %".339" = load i32, i32* %"R14_NOTYPE"
  %"mul.21" = mul i32 %".338", %"Arg_6"
  %"add.45" = add i32 %"mul.21", %".339"
  store i32 %"add.45", i32* %"R6_NOTYPE"
  %".341" = load i1, i1* %"P2_Bool"
  %".342" = icmp ne i1 %".341", 1
  br i1 %".342", label %".L_x_16_split_0x0510_conditionalExpr_0x0550", label %".L_x_16_split_0x0560"
.L_x_16_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".345" = load i32, i32* %"R15_NOTYPE"
  %"add.46" = add i32 %".345", 2
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", i32* %"R7_NOTYPE"
  br label %".L_x_16_split_0x0560"
.L_x_16_split_0x0560:
  %".348" = load i1, i1* %"P2_Bool"
  %".349" = icmp ne i1 %".348", 1
  br i1 %".349", label %".L_x_16_split_0x0560_conditionalExpr_0x0560", label %".L_x_16_split_0x0570"
.L_x_16_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".352" = load i32, i32* %"R7_NOTYPE"
  %".353" = load i32, i32* %"R14_NOTYPE"
  %"mul.22" = mul i32 %".352", %"Arg_6"
  %"add.48" = add i32 %"mul.22", %".353"
  store i32 %"add.48", i32* %"R14_NOTYPE"
  br label %".L_x_16_split_0x0570"
.L_x_16_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".357" = load i32, i32* %"R6_NOTYPE"
  %".358" = load i32, i32* %"R19_NOTYPE"
  %"mul.23" = mul i32 %".357", %".358"
  %"add.49" = add i32 %"mul.23", %"Arg_3"
  store i32 %"add.49", i32* %"R6_NOTYPE"
  %".360" = load i1, i1* %"P2_Bool"
  %".361" = icmp ne i1 %".360", 1
  br i1 %".361", label %".L_x_16_split_0x0570_conditionalExpr_0x0580", label %".L_x_16_split_0x0590"
.L_x_16_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".364" = load i32, i32* %"R14_NOTYPE"
  %".365" = load i32, i32* %"R19_NOTYPE"
  %"mul.24" = mul i32 %".364", %".365"
  %"add.50" = add i32 %"mul.24", %"Arg_3"
  store i32 %"add.50", i32* %"R14_NOTYPE"
  br label %".L_x_16_split_0x0590"
.L_x_16_split_0x0590:
  %".368" = load i1, i1* %"P2_Bool"
  %".369" = icmp ne i1 %".368", 1
  br i1 %".369", label %".L_x_16_split_0x0590_conditionalExpr_0x0590", label %".L_x_16_split_0x05a0"
.L_x_16_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".372" = load i32, i32* %"R16_NOTYPE"
  %".373" = add i32 %".372", 8
  %"for_LDG.11" = inttoptr i32 %".373" to i32*
  %".374" = load i32, i32* %"for_LDG.11"
  store i32 %".374", i32* %"R19_NOTYPE"
  br label %".L_x_16_split_0x05a0"
.L_x_16_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".378" = load i32, i32* %"R6_NOTYPE"
  %".379" = add i32 %".378", 0
  %"for_LDG.12" = inttoptr i32 %".379" to i32*
  %".380" = load i32, i32* %"for_LDG.12"
  store i32 %".380", i32* %"R6_NOTYPE"
  %".382" = load i1, i1* %"P2_Bool"
  %".383" = icmp ne i1 %".382", 1
  br i1 %".383", label %".L_x_16_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".386" = load i32, i32* %"R14_NOTYPE"
  %".387" = add i32 %".386", 0
  %"for_LDG.13" = inttoptr i32 %".387" to i32*
  %".388" = load i32, i32* %"for_LDG.13"
  store i32 %".388", i32* %"R14_NOTYPE"
  br label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".392" = load i32, i32* %"R13_NOTYPE"
  %".393" = load i32, i32* %"R6_NOTYPE"
  %".394" = load i32, i32* %"R12_NOTYPE"
  %"fmul.5" = fmul i32 %".392", %".393"
  %"fadd.5" = fadd i32 %"fmul.5", %".394"
  store i32 %"fadd.5", i32* %"R12_NOTYPE"
  %".396" = load i1, i1* %"P2_Bool"
  %".397" = icmp ne i1 %".396", 1
  br i1 %".397", label %".L_x_16_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_18"
.L_x_16_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".400" = load i32, i32* %"R19_NOTYPE"
  %".401" = load i32, i32* %"R14_NOTYPE"
  %".402" = load i32, i32* %"R12_NOTYPE"
  %"fmul.6" = fmul i32 %".400", %".401"
  %"fadd.6" = fadd i32 %"fmul.6", %".402"
  store i32 %"fadd.6", i32* %"R12_NOTYPE"
  br label %".L_x_18"
.L_x_18:
  ; IADD3 R8, R8, 0x1, RZ
  %".406" = load i32, i32* %"R8_NOTYPE"
  %"add.51" = add i32 %".406", 1
  %"add.52" = add i32 %"add.51", 0
  store i32 %"add.52", i32* %"R8_NOTYPE"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".409" = load i32, i32* %"R8_NOTYPE"
  %".410" = load i1, i1* %"PT_Bool"
  %"cmp.11" = icmp sge i32 %".409", %"Arg_7"
  %".411" = and i1 %"cmp.11", %".410"
  store i1 %".411", i1* %"P2_Bool"
  %".413" = load i1, i1* %"P2_Bool"
  %".414" = icmp eq i1 %".413", 1
  br i1 %".414", label %".L_x_19", label %".L_x_18_split_0x0610"
.L_x_18_split_0x0610:
  %".416" = load i1, i1* %"P1_Bool"
  %".417" = icmp eq i1 %".416", 1
  br i1 %".417", label %".L_x_20", label %".L_x_15"
.L_x_15:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".420" = load i32, i32* %"UR5_NOTYPE"
  %"add.53" = add i32 %".420", 1
  %"add.54" = add i32 %"add.53", 0
  store i32 %"add.54", i32* %"UR4_NOTYPE"
  ; IMAD R3, R0, UR4, R3
  %".423" = load i32, i32* %"R0_NOTYPE"
  %".424" = load i32, i32* %"UR4_NOTYPE"
  %".425" = load i32, i32* %"R3_NOTYPE"
  %"mul.25" = mul i32 %".423", %".424"
  %"add.55" = add i32 %"mul.25", %".425"
  store i32 %"add.55", i32* %"R3_NOTYPE"
  ; MOV R0, 0x4
  store i32 4, i32* %"R0_NOTYPE"
  ; IMAD R3, R3, UR4, R2
  %".430" = load i32, i32* %"R3_NOTYPE"
  %".431" = load i32, i32* %"UR4_NOTYPE"
  %".432" = load i32, i32* %"R2_NOTYPE"
  %"mul.26" = mul i32 %".430", %".431"
  %"add.56" = add i32 %"mul.26", %".432"
  store i32 %"add.56", i32* %"R3_NOTYPE"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".435" = load i32, i32* %"R3_NOTYPE"
  %".436" = load i32, i32* %"R0_NOTYPE"
  %"mul.27" = mul i32 %".435", %".436"
  %"add.57" = add i32 %"mul.27", %"Arg_5"
  store i32 %"add.57", i32* %"R2_NOTYPE"
  ; STG.E.SYS [R2], R12
  %".439" = load i32, i32* %"R12_NOTYPE"
  %".440" = load i32, i32* %"R2_NOTYPE"
  %".441" = add i32 %".440", 0
  %"for_STG" = inttoptr i32 %".441" to i32*
  store i32 %".439", i32* %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_21:
  br label %".L_x_21"
ExitFunction:
  ret void
}

