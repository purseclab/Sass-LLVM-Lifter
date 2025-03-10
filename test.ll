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
  store i32 %"Arg_1", i32* %"R1_NOTYPE"
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", i32* %"R0_NOTYPE"
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", i32* %"R3_NOTYPE"
  %".14" = load i32, i32* %"R0_NOTYPE"
  %".15" = load i32, i32* %"R3_NOTYPE"
  %"mul" = mul i32 %".14", %"Arg_0"
  %"add" = add i32 %"mul", %".15"
  store i32 %"add", i32* %"R0_NOTYPE"
  %".17" = load i32, i32* %"R0_NOTYPE"
  %".18" = load i1, i1* %"PT_Bool"
  %"cmp" = icmp sge i32 %".17", %"Arg_7"
  %".19" = and i1 %"cmp", %".18"
  store i1 %".19", i1* %"P0_Bool"
  %".21" = load i1, i1* %"P0_Bool"
  %".22" = icmp ne i1 %".21", 1
  br i1 %".22", label %".text._Z8fc_layerPfS_S_S_ii_conditionalExe_0x0050", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0060"
.text._Z8fc_layerPfS_S_S_ii_conditionalExe_0x0050:
  br label %"ExitFunction"
.text._Z8fc_layerPfS_S_S_ii_split_0x0060:
  store i32 %"Arg_6", i32* %"R4_NOTYPE"
  %"mul.1" = mul i32 0, 0
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", i32* %"R7_NOTYPE"
  %".27" = load i32, i32* %"R4_NOTYPE"
  %".28" = load i1, i1* %"PT_Bool"
  %"cmp.1" = icmp sge i32 %".27", 1
  %".29" = and i1 %"cmp.1", %".28"
  store i1 %".29", i1* %"P0_Bool"
  %".31" = load i1, i1* %"P0_Bool"
  %".32" = icmp eq i1 %".31", 1
  br i1 %".32", label %".L_x_0", label %".text._Z8fc_layerPfS_S_S_ii_split_0x00a0"
.text._Z8fc_layerPfS_S_S_ii_split_0x00a0:
  %".34" = load i32, i32* %"R4_NOTYPE"
  %"add.2" = add i32 %".34", -1
  %"add.3" = add i32 %"add.2", 0
  store i32 %"add.3", i32* %"R2_NOTYPE"
  %".36" = load i32, i32* %"R4_NOTYPE"
  %".37" = and i32 %".36", 3
  store i32 %".37", i32* %"R4_NOTYPE"
  %".39" = load i32, i32* %"R2_NOTYPE"
  %".40" = load i1, i1* %"PT_Bool"
  %"cmp.2" = icmp sge i32 %".39", 3
  %".41" = and i1 %"cmp.2", %".40"
  store i1 %".41", i1* %"P0_Bool"
  %".43" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".43", i32* %"R7_NOTYPE"
  %".45" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".45", i32* %"R5_NOTYPE"
  %".47" = load i1, i1* %"P0_Bool"
  %".48" = icmp eq i1 %".47", 1
  br i1 %".48", label %".L_x_1", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
.text._Z8fc_layerPfS_S_S_ii_split_0x0100:
  %".50" = load i32, i32* %"R4_NOTYPE"
  %".51" = sub i32 0, %".50"
  %"add.4" = add i32 %".51", %"Arg_6"
  %"add.5" = add i32 %"add.4", 0
  store i32 %"add.5", i32* %"R6_NOTYPE"
  %".53" = load i32, i32* %"R0_NOTYPE"
  %"mul.2" = mul i32 %".53", %"Arg_6"
  %"add.6" = add i32 %"mul.2", 0
  store i32 %"add.6", i32* %"R2_NOTYPE"
  store i32 %"Arg_2", i32* %"UR4_NOTYPE"
  %"mul.3" = mul i32 0, 0
  %"add.7" = add i32 %"mul.3", 4
  store i32 %"add.7", i32* %"R3_NOTYPE"
  %".57" = load i32, i32* %"R6_NOTYPE"
  %".58" = load i1, i1* %"PT_Bool"
  %"cmp.3" = icmp sgt i32 %".57", 0
  %".59" = and i1 %"cmp.3", %".58"
  store i1 %".59", i1* %"P0_Bool"
  %".61" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".61", i32* %"R7_NOTYPE"
  %".63" = load i32, i32* %"R2_NOTYPE"
  %".64" = load i32, i32* %"R3_NOTYPE"
  %"mul.4" = mul i32 %".63", %".64"
  %"add.8" = add i32 %"mul.4", %"Arg_3"
  store i32 %"add.8", i32* %"R2_NOTYPE"
  %".66" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".66", i32* %"R5_NOTYPE"
  %".68" = load i1, i1* %"P0_Bool"
  %".69" = icmp eq i1 %".68", 1
  br i1 %".69", label %".L_x_2", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  %".71" = load i32, i32* %"R6_NOTYPE"
  %".72" = load i1, i1* %"PT_Bool"
  %"cmp.4" = icmp sgt i32 %".71", 12
  %".73" = and i1 %"cmp.4", %".72"
  store i1 %".73", i1* %"P1_Bool"
  %".75" = and i1 1, 1
  %".76" = or i1 %".75", 1
  %".77" = load i1, i1* %"P1_Bool"
  %".78" = icmp eq i1 %".77", 1
  br i1 %".78", label %".L_x_3", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  %".80" = xor i1 1, 1
  %".81" = and i1 %".80", 1
  %".82" = and i1 %".81", 1
.L_x_4:
  %".83" = load i32, i32* %"R2_NOTYPE"
  %".84" = add i32 %".83", 0
  %"for_LDG" = inttoptr i32 %".84" to i32*
  %".85" = load i32, i32* %"for_LDG"
  store i32 %".85", i32* %"R8_NOTYPE"
  %".87" = load i32, i32* %"UR4_NOTYPE"
  %".88" = add i32 %".87", 0
  %"for_LDG.1" = inttoptr i32 %".88" to i32*
  %".89" = load i32, i32* %"for_LDG.1"
  store i32 %".89", i32* %"R9_NOTYPE"
  %".91" = load i32, i32* %"R2_NOTYPE"
  %".92" = add i32 %".91", 4
  %"for_LDG.2" = inttoptr i32 %".92" to i32*
  %".93" = load i32, i32* %"for_LDG.2"
  store i32 %".93", i32* %"R11_NOTYPE"
  %".95" = load i32, i32* %"UR4_NOTYPE"
  %".96" = add i32 %".95", 4
  %"for_LDG.3" = inttoptr i32 %".96" to i32*
  %".97" = load i32, i32* %"for_LDG.3"
  store i32 %".97", i32* %"R10_NOTYPE"
  %".99" = load i32, i32* %"R2_NOTYPE"
  %".100" = add i32 %".99", 8
  %"for_LDG.4" = inttoptr i32 %".100" to i32*
  %".101" = load i32, i32* %"for_LDG.4"
  store i32 %".101", i32* %"R13_NOTYPE"
  %".103" = load i32, i32* %"UR4_NOTYPE"
  %".104" = add i32 %".103", 8
  %"for_LDG.5" = inttoptr i32 %".104" to i32*
  %".105" = load i32, i32* %"for_LDG.5"
  store i32 %".105", i32* %"R12_NOTYPE"
  %".107" = load i32, i32* %"R2_NOTYPE"
  %".108" = add i32 %".107", 12
  %"for_LDG.6" = inttoptr i32 %".108" to i32*
  %".109" = load i32, i32* %"for_LDG.6"
  store i32 %".109", i32* %"R15_NOTYPE"
  %".111" = load i32, i32* %"UR4_NOTYPE"
  %".112" = add i32 %".111", 12
  %"for_LDG.7" = inttoptr i32 %".112" to i32*
  %".113" = load i32, i32* %"for_LDG.7"
  store i32 %".113", i32* %"R14_NOTYPE"
  %".115" = load i32, i32* %"R2_NOTYPE"
  %".116" = add i32 %".115", 16
  %"for_LDG.8" = inttoptr i32 %".116" to i32*
  %".117" = load i32, i32* %"for_LDG.8"
  store i32 %".117", i32* %"R17_NOTYPE"
  %".119" = load i32, i32* %"UR4_NOTYPE"
  %".120" = add i32 %".119", 16
  %"for_LDG.9" = inttoptr i32 %".120" to i32*
  %".121" = load i32, i32* %"for_LDG.9"
  store i32 %".121", i32* %"R16_NOTYPE"
  %".123" = load i32, i32* %"R2_NOTYPE"
  %".124" = add i32 %".123", 20
  %"for_LDG.10" = inttoptr i32 %".124" to i32*
  %".125" = load i32, i32* %"for_LDG.10"
  store i32 %".125", i32* %"R19_NOTYPE"
  %".127" = load i32, i32* %"UR4_NOTYPE"
  %".128" = add i32 %".127", 20
  %"for_LDG.11" = inttoptr i32 %".128" to i32*
  %".129" = load i32, i32* %"for_LDG.11"
  store i32 %".129", i32* %"R18_NOTYPE"
  %".131" = load i32, i32* %"R2_NOTYPE"
  %".132" = add i32 %".131", 24
  %"for_LDG.12" = inttoptr i32 %".132" to i32*
  %".133" = load i32, i32* %"for_LDG.12"
  store i32 %".133", i32* %"R21_NOTYPE"
  %".135" = load i32, i32* %"UR4_NOTYPE"
  %".136" = add i32 %".135", 24
  %"for_LDG.13" = inttoptr i32 %".136" to i32*
  %".137" = load i32, i32* %"for_LDG.13"
  store i32 %".137", i32* %"R20_NOTYPE"
  %".139" = load i32, i32* %"R2_NOTYPE"
  %".140" = add i32 %".139", 28
  %"for_LDG.14" = inttoptr i32 %".140" to i32*
  %".141" = load i32, i32* %"for_LDG.14"
  store i32 %".141", i32* %"R23_NOTYPE"
  %".143" = load i32, i32* %"UR4_NOTYPE"
  %".144" = add i32 %".143", 28
  %"for_LDG.15" = inttoptr i32 %".144" to i32*
  %".145" = load i32, i32* %"for_LDG.15"
  store i32 %".145", i32* %"R22_NOTYPE"
  %".147" = load i32, i32* %"R2_NOTYPE"
  %".148" = add i32 %".147", 32
  %"for_LDG.16" = inttoptr i32 %".148" to i32*
  %".149" = load i32, i32* %"for_LDG.16"
  store i32 %".149", i32* %"R25_NOTYPE"
  %".151" = load i32, i32* %"UR4_NOTYPE"
  %".152" = add i32 %".151", 32
  %"for_LDG.17" = inttoptr i32 %".152" to i32*
  %".153" = load i32, i32* %"for_LDG.17"
  store i32 %".153", i32* %"R24_NOTYPE"
  %".155" = load i32, i32* %"R2_NOTYPE"
  %".156" = add i32 %".155", 36
  %"for_LDG.18" = inttoptr i32 %".156" to i32*
  %".157" = load i32, i32* %"for_LDG.18"
  store i32 %".157", i32* %"R27_NOTYPE"
  %".159" = load i32, i32* %"UR4_NOTYPE"
  %".160" = add i32 %".159", 36
  %"for_LDG.19" = inttoptr i32 %".160" to i32*
  %".161" = load i32, i32* %"for_LDG.19"
  store i32 %".161", i32* %"R26_NOTYPE"
  %".163" = load i32, i32* %"R2_NOTYPE"
  %".164" = add i32 %".163", 40
  %"for_LDG.20" = inttoptr i32 %".164" to i32*
  %".165" = load i32, i32* %"for_LDG.20"
  store i32 %".165", i32* %"R29_NOTYPE"
  %".167" = load i32, i32* %"UR4_NOTYPE"
  %".168" = add i32 %".167", 40
  %"for_LDG.21" = inttoptr i32 %".168" to i32*
  %".169" = load i32, i32* %"for_LDG.21"
  store i32 %".169", i32* %"R28_NOTYPE"
  %".171" = load i32, i32* %"R2_NOTYPE"
  %".172" = add i32 %".171", 44
  %"for_LDG.22" = inttoptr i32 %".172" to i32*
  %".173" = load i32, i32* %"for_LDG.22"
  store i32 %".173", i32* %"R31_NOTYPE"
  %".175" = load i32, i32* %"UR4_NOTYPE"
  %".176" = add i32 %".175", 44
  %"for_LDG.23" = inttoptr i32 %".176" to i32*
  %".177" = load i32, i32* %"for_LDG.23"
  store i32 %".177", i32* %"R30_NOTYPE"
  %".179" = load i32, i32* %"R2_NOTYPE"
  %".180" = add i32 %".179", 48
  %"for_LDG.24" = inttoptr i32 %".180" to i32*
  %".181" = load i32, i32* %"for_LDG.24"
  store i32 %".181", i32* %"R33_NOTYPE"
  %".183" = load i32, i32* %"UR4_NOTYPE"
  %".184" = add i32 %".183", 48
  %"for_LDG.25" = inttoptr i32 %".184" to i32*
  %".185" = load i32, i32* %"for_LDG.25"
  store i32 %".185", i32* %"R32_NOTYPE"
  %".187" = load i32, i32* %"R2_NOTYPE"
  %".188" = add i32 %".187", 52
  %"for_LDG.26" = inttoptr i32 %".188" to i32*
  %".189" = load i32, i32* %"for_LDG.26"
  store i32 %".189", i32* %"R35_NOTYPE"
  %".191" = load i32, i32* %"UR4_NOTYPE"
  %".192" = add i32 %".191", 52
  %"for_LDG.27" = inttoptr i32 %".192" to i32*
  %".193" = load i32, i32* %"for_LDG.27"
  store i32 %".193", i32* %"R34_NOTYPE"
  %".195" = load i32, i32* %"R2_NOTYPE"
  %".196" = add i32 %".195", 56
  %"for_LDG.28" = inttoptr i32 %".196" to i32*
  %".197" = load i32, i32* %"for_LDG.28"
  store i32 %".197", i32* %"R37_NOTYPE"
  %".199" = load i32, i32* %"UR4_NOTYPE"
  %".200" = add i32 %".199", 56
  %"for_LDG.29" = inttoptr i32 %".200" to i32*
  %".201" = load i32, i32* %"for_LDG.29"
  store i32 %".201", i32* %"R36_NOTYPE"
  %".203" = load i32, i32* %"R2_NOTYPE"
  %".204" = add i32 %".203", 60
  %"for_LDG.30" = inttoptr i32 %".204" to i32*
  %".205" = load i32, i32* %"for_LDG.30"
  store i32 %".205", i32* %"R39_NOTYPE"
  %".207" = load i32, i32* %"UR4_NOTYPE"
  %".208" = add i32 %".207", 60
  %"for_LDG.31" = inttoptr i32 %".208" to i32*
  %".209" = load i32, i32* %"for_LDG.31"
  store i32 %".209", i32* %"R38_NOTYPE"
  %".211" = load i32, i32* %"R6_NOTYPE"
  %"add.9" = add i32 %".211", -16
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", i32* %"R6_NOTYPE"
  %".213" = load i32, i32* %"UR4_NOTYPE"
  %"add.11" = add i32 %".213", 64
  %"add.12" = add i32 %"add.11", 0
  store i32 %"add.12", i32* %"UR4_NOTYPE"
  %".215" = load i32, i32* %"R5_NOTYPE"
  %"add.13" = add i32 %".215", 16
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", i32* %"R5_NOTYPE"
  %".217" = load i32, i32* %"R6_NOTYPE"
  %".218" = load i1, i1* %"PT_Bool"
  %"cmp.5" = icmp sgt i32 %".217", 12
  %".219" = and i1 %"cmp.5", %".218"
  store i1 %".219", i1* %"P1_Bool"
  %".221" = load i32, i32* %"UR5_NOTYPE"
  %"add.15" = add i32 0, %".221"
  %"add.16" = add i32 %"add.15", 0
  store i32 %"add.16", i32* %"UR5_NOTYPE"
  %".223" = load i32, i32* %"R2_NOTYPE"
  %"add.17" = add i32 %".223", 64
  %"add.18" = add i32 %"add.17", 0
  store i32 %"add.18", i32* %"R2_NOTYPE"
  %".225" = load i32, i32* %"R3_NOTYPE"
  %"mul.5" = mul i32 0, 0
  %"add.19" = add i32 %"mul.5", %".225"
  store i32 %"add.19", i32* %"R3_NOTYPE"
  %".227" = load i32, i32* %"R8_NOTYPE"
  %".228" = load i32, i32* %"R9_NOTYPE"
  %".229" = load i32, i32* %"R7_NOTYPE"
  %"fmul" = fmul i32 %".227", %".228"
  %"fadd" = fadd i32 %"fmul", %".229"
  store i32 %"fadd", i32* %"R8_NOTYPE"
  %".231" = load i32, i32* %"R11_NOTYPE"
  %".232" = load i32, i32* %"R10_NOTYPE"
  %".233" = load i32, i32* %"R8_NOTYPE"
  %"fmul.1" = fmul i32 %".231", %".232"
  %"fadd.1" = fadd i32 %"fmul.1", %".233"
  store i32 %"fadd.1", i32* %"R8_NOTYPE"
  %".235" = load i32, i32* %"R13_NOTYPE"
  %".236" = load i32, i32* %"R12_NOTYPE"
  %".237" = load i32, i32* %"R8_NOTYPE"
  %"fmul.2" = fmul i32 %".235", %".236"
  %"fadd.2" = fadd i32 %"fmul.2", %".237"
  store i32 %"fadd.2", i32* %"R8_NOTYPE"
  %".239" = load i32, i32* %"R15_NOTYPE"
  %".240" = load i32, i32* %"R14_NOTYPE"
  %".241" = load i32, i32* %"R8_NOTYPE"
  %"fmul.3" = fmul i32 %".239", %".240"
  %"fadd.3" = fadd i32 %"fmul.3", %".241"
  store i32 %"fadd.3", i32* %"R8_NOTYPE"
  %".243" = load i32, i32* %"R17_NOTYPE"
  %".244" = load i32, i32* %"R16_NOTYPE"
  %".245" = load i32, i32* %"R8_NOTYPE"
  %"fmul.4" = fmul i32 %".243", %".244"
  %"fadd.4" = fadd i32 %"fmul.4", %".245"
  store i32 %"fadd.4", i32* %"R8_NOTYPE"
  %".247" = load i32, i32* %"R19_NOTYPE"
  %".248" = load i32, i32* %"R18_NOTYPE"
  %".249" = load i32, i32* %"R8_NOTYPE"
  %"fmul.5" = fmul i32 %".247", %".248"
  %"fadd.5" = fadd i32 %"fmul.5", %".249"
  store i32 %"fadd.5", i32* %"R8_NOTYPE"
  %".251" = load i32, i32* %"R21_NOTYPE"
  %".252" = load i32, i32* %"R20_NOTYPE"
  %".253" = load i32, i32* %"R8_NOTYPE"
  %"fmul.6" = fmul i32 %".251", %".252"
  %"fadd.6" = fadd i32 %"fmul.6", %".253"
  store i32 %"fadd.6", i32* %"R8_NOTYPE"
  %".255" = load i32, i32* %"R23_NOTYPE"
  %".256" = load i32, i32* %"R22_NOTYPE"
  %".257" = load i32, i32* %"R8_NOTYPE"
  %"fmul.7" = fmul i32 %".255", %".256"
  %"fadd.7" = fadd i32 %"fmul.7", %".257"
  store i32 %"fadd.7", i32* %"R8_NOTYPE"
  %".259" = load i32, i32* %"R25_NOTYPE"
  %".260" = load i32, i32* %"R24_NOTYPE"
  %".261" = load i32, i32* %"R8_NOTYPE"
  %"fmul.8" = fmul i32 %".259", %".260"
  %"fadd.8" = fadd i32 %"fmul.8", %".261"
  store i32 %"fadd.8", i32* %"R8_NOTYPE"
  %".263" = load i32, i32* %"R27_NOTYPE"
  %".264" = load i32, i32* %"R26_NOTYPE"
  %".265" = load i32, i32* %"R8_NOTYPE"
  %"fmul.9" = fmul i32 %".263", %".264"
  %"fadd.9" = fadd i32 %"fmul.9", %".265"
  store i32 %"fadd.9", i32* %"R8_NOTYPE"
  %".267" = load i32, i32* %"R29_NOTYPE"
  %".268" = load i32, i32* %"R28_NOTYPE"
  %".269" = load i32, i32* %"R8_NOTYPE"
  %"fmul.10" = fmul i32 %".267", %".268"
  %"fadd.10" = fadd i32 %"fmul.10", %".269"
  store i32 %"fadd.10", i32* %"R8_NOTYPE"
  %".271" = load i32, i32* %"R31_NOTYPE"
  %".272" = load i32, i32* %"R30_NOTYPE"
  %".273" = load i32, i32* %"R8_NOTYPE"
  %"fmul.11" = fmul i32 %".271", %".272"
  %"fadd.11" = fadd i32 %"fmul.11", %".273"
  store i32 %"fadd.11", i32* %"R8_NOTYPE"
  %".275" = load i32, i32* %"R33_NOTYPE"
  %".276" = load i32, i32* %"R32_NOTYPE"
  %".277" = load i32, i32* %"R8_NOTYPE"
  %"fmul.12" = fmul i32 %".275", %".276"
  %"fadd.12" = fadd i32 %"fmul.12", %".277"
  store i32 %"fadd.12", i32* %"R8_NOTYPE"
  %".279" = load i32, i32* %"R35_NOTYPE"
  %".280" = load i32, i32* %"R34_NOTYPE"
  %".281" = load i32, i32* %"R8_NOTYPE"
  %"fmul.13" = fmul i32 %".279", %".280"
  %"fadd.13" = fadd i32 %"fmul.13", %".281"
  store i32 %"fadd.13", i32* %"R8_NOTYPE"
  %".283" = load i32, i32* %"R37_NOTYPE"
  %".284" = load i32, i32* %"R36_NOTYPE"
  %".285" = load i32, i32* %"R8_NOTYPE"
  %"fmul.14" = fmul i32 %".283", %".284"
  %"fadd.14" = fadd i32 %"fmul.14", %".285"
  store i32 %"fadd.14", i32* %"R8_NOTYPE"
  %".287" = load i32, i32* %"R39_NOTYPE"
  %".288" = load i32, i32* %"R38_NOTYPE"
  %".289" = load i32, i32* %"R8_NOTYPE"
  %"fmul.15" = fmul i32 %".287", %".288"
  %"fadd.15" = fadd i32 %"fmul.15", %".289"
  store i32 %"fadd.15", i32* %"R7_NOTYPE"
  %".291" = load i1, i1* %"P1_Bool"
  %".292" = icmp ne i1 %".291", 1
  br i1 %".292", label %".L_x_4", label %".L_x_3"
.L_x_3:
  %".294" = load i32, i32* %"R6_NOTYPE"
  %".295" = load i1, i1* %"PT_Bool"
  %"cmp.6" = icmp sgt i32 %".294", 4
  %".296" = and i1 %"cmp.6", %".295"
  store i1 %".296", i1* %"P1_Bool"
  %".298" = load i1, i1* %"P1_Bool"
  %".299" = icmp eq i1 %".298", 1
  br i1 %".299", label %".L_x_5", label %".L_x_3_split_0x0570"
.L_x_3_split_0x0570:
  %".301" = load i32, i32* %"R2_NOTYPE"
  %".302" = add i32 %".301", 0
  %"for_LDG.32" = inttoptr i32 %".302" to i32*
  %".303" = load i32, i32* %"for_LDG.32"
  store i32 %".303", i32* %"R8_NOTYPE"
  %".305" = load i32, i32* %"UR4_NOTYPE"
  %".306" = add i32 %".305", 0
  %"for_LDG.33" = inttoptr i32 %".306" to i32*
  %".307" = load i32, i32* %"for_LDG.33"
  store i32 %".307", i32* %"R9_NOTYPE"
  %".309" = load i32, i32* %"R2_NOTYPE"
  %".310" = add i32 %".309", 4
  %"for_LDG.34" = inttoptr i32 %".310" to i32*
  %".311" = load i32, i32* %"for_LDG.34"
  store i32 %".311", i32* %"R11_NOTYPE"
  %".313" = load i32, i32* %"UR4_NOTYPE"
  %".314" = add i32 %".313", 4
  %"for_LDG.35" = inttoptr i32 %".314" to i32*
  %".315" = load i32, i32* %"for_LDG.35"
  store i32 %".315", i32* %"R10_NOTYPE"
  %".317" = load i32, i32* %"R2_NOTYPE"
  %".318" = add i32 %".317", 8
  %"for_LDG.36" = inttoptr i32 %".318" to i32*
  %".319" = load i32, i32* %"for_LDG.36"
  store i32 %".319", i32* %"R13_NOTYPE"
  %".321" = load i32, i32* %"UR4_NOTYPE"
  %".322" = add i32 %".321", 8
  %"for_LDG.37" = inttoptr i32 %".322" to i32*
  %".323" = load i32, i32* %"for_LDG.37"
  store i32 %".323", i32* %"R12_NOTYPE"
  %".325" = load i32, i32* %"R2_NOTYPE"
  %".326" = add i32 %".325", 12
  %"for_LDG.38" = inttoptr i32 %".326" to i32*
  %".327" = load i32, i32* %"for_LDG.38"
  store i32 %".327", i32* %"R15_NOTYPE"
  %".329" = load i32, i32* %"UR4_NOTYPE"
  %".330" = add i32 %".329", 12
  %"for_LDG.39" = inttoptr i32 %".330" to i32*
  %".331" = load i32, i32* %"for_LDG.39"
  store i32 %".331", i32* %"R14_NOTYPE"
  %".333" = load i32, i32* %"R2_NOTYPE"
  %".334" = add i32 %".333", 16
  %"for_LDG.40" = inttoptr i32 %".334" to i32*
  %".335" = load i32, i32* %"for_LDG.40"
  store i32 %".335", i32* %"R17_NOTYPE"
  %".337" = load i32, i32* %"UR4_NOTYPE"
  %".338" = add i32 %".337", 16
  %"for_LDG.41" = inttoptr i32 %".338" to i32*
  %".339" = load i32, i32* %"for_LDG.41"
  store i32 %".339", i32* %"R16_NOTYPE"
  %".341" = load i32, i32* %"R2_NOTYPE"
  %".342" = add i32 %".341", 20
  %"for_LDG.42" = inttoptr i32 %".342" to i32*
  %".343" = load i32, i32* %"for_LDG.42"
  store i32 %".343", i32* %"R19_NOTYPE"
  %".345" = load i32, i32* %"UR4_NOTYPE"
  %".346" = add i32 %".345", 20
  %"for_LDG.43" = inttoptr i32 %".346" to i32*
  %".347" = load i32, i32* %"for_LDG.43"
  store i32 %".347", i32* %"R18_NOTYPE"
  %".349" = load i32, i32* %"R2_NOTYPE"
  %".350" = add i32 %".349", 24
  %"for_LDG.44" = inttoptr i32 %".350" to i32*
  %".351" = load i32, i32* %"for_LDG.44"
  store i32 %".351", i32* %"R21_NOTYPE"
  %".353" = load i32, i32* %"UR4_NOTYPE"
  %".354" = add i32 %".353", 24
  %"for_LDG.45" = inttoptr i32 %".354" to i32*
  %".355" = load i32, i32* %"for_LDG.45"
  store i32 %".355", i32* %"R20_NOTYPE"
  %".357" = load i32, i32* %"R2_NOTYPE"
  %".358" = add i32 %".357", 28
  %"for_LDG.46" = inttoptr i32 %".358" to i32*
  %".359" = load i32, i32* %"for_LDG.46"
  store i32 %".359", i32* %"R23_NOTYPE"
  %".361" = load i32, i32* %"UR4_NOTYPE"
  %".362" = add i32 %".361", 28
  %"for_LDG.47" = inttoptr i32 %".362" to i32*
  %".363" = load i32, i32* %"for_LDG.47"
  store i32 %".363", i32* %"R22_NOTYPE"
  %".365" = load i32, i32* %"UR4_NOTYPE"
  %"add.20" = add i32 %".365", 32
  %"add.21" = add i32 %"add.20", 0
  store i32 %"add.21", i32* %"UR4_NOTYPE"
  %".367" = xor i1 1, 1
  %".368" = and i1 %".367", 1
  %".369" = and i1 %".368", 1
  %".370" = load i32, i32* %"R5_NOTYPE"
  %"add.22" = add i32 %".370", 8
  %"add.23" = add i32 %"add.22", 0
  store i32 %"add.23", i32* %"R5_NOTYPE"
  %".372" = load i32, i32* %"UR5_NOTYPE"
  %"add.24" = add i32 0, %".372"
  %"add.25" = add i32 %"add.24", 0
  store i32 %"add.25", i32* %"UR5_NOTYPE"
  %".374" = load i32, i32* %"R2_NOTYPE"
  %"add.26" = add i32 %".374", 32
  %"add.27" = add i32 %"add.26", 0
  store i32 %"add.27", i32* %"R2_NOTYPE"
  %".376" = load i32, i32* %"R6_NOTYPE"
  %"add.28" = add i32 %".376", -8
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", i32* %"R6_NOTYPE"
  %".378" = load i32, i32* %"R3_NOTYPE"
  %"add.30" = add i32 0, %".378"
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", i32* %"R3_NOTYPE"
  %".380" = load i32, i32* %"R8_NOTYPE"
  %".381" = load i32, i32* %"R9_NOTYPE"
  %".382" = load i32, i32* %"R7_NOTYPE"
  %"fmul.16" = fmul i32 %".380", %".381"
  %"fadd.16" = fadd i32 %"fmul.16", %".382"
  store i32 %"fadd.16", i32* %"R8_NOTYPE"
  %".384" = load i32, i32* %"R11_NOTYPE"
  %".385" = load i32, i32* %"R10_NOTYPE"
  %".386" = load i32, i32* %"R8_NOTYPE"
  %"fmul.17" = fmul i32 %".384", %".385"
  %"fadd.17" = fadd i32 %"fmul.17", %".386"
  store i32 %"fadd.17", i32* %"R8_NOTYPE"
  %".388" = load i32, i32* %"R13_NOTYPE"
  %".389" = load i32, i32* %"R12_NOTYPE"
  %".390" = load i32, i32* %"R8_NOTYPE"
  %"fmul.18" = fmul i32 %".388", %".389"
  %"fadd.18" = fadd i32 %"fmul.18", %".390"
  store i32 %"fadd.18", i32* %"R8_NOTYPE"
  %".392" = load i32, i32* %"R15_NOTYPE"
  %".393" = load i32, i32* %"R14_NOTYPE"
  %".394" = load i32, i32* %"R8_NOTYPE"
  %"fmul.19" = fmul i32 %".392", %".393"
  %"fadd.19" = fadd i32 %"fmul.19", %".394"
  store i32 %"fadd.19", i32* %"R8_NOTYPE"
  %".396" = load i32, i32* %"R17_NOTYPE"
  %".397" = load i32, i32* %"R16_NOTYPE"
  %".398" = load i32, i32* %"R8_NOTYPE"
  %"fmul.20" = fmul i32 %".396", %".397"
  %"fadd.20" = fadd i32 %"fmul.20", %".398"
  store i32 %"fadd.20", i32* %"R8_NOTYPE"
  %".400" = load i32, i32* %"R19_NOTYPE"
  %".401" = load i32, i32* %"R18_NOTYPE"
  %".402" = load i32, i32* %"R8_NOTYPE"
  %"fmul.21" = fmul i32 %".400", %".401"
  %"fadd.21" = fadd i32 %"fmul.21", %".402"
  store i32 %"fadd.21", i32* %"R8_NOTYPE"
  %".404" = load i32, i32* %"R21_NOTYPE"
  %".405" = load i32, i32* %"R20_NOTYPE"
  %".406" = load i32, i32* %"R8_NOTYPE"
  %"fmul.22" = fmul i32 %".404", %".405"
  %"fadd.22" = fadd i32 %"fmul.22", %".406"
  store i32 %"fadd.22", i32* %"R8_NOTYPE"
  %".408" = load i32, i32* %"R23_NOTYPE"
  %".409" = load i32, i32* %"R22_NOTYPE"
  %".410" = load i32, i32* %"R8_NOTYPE"
  %"fmul.23" = fmul i32 %".408", %".409"
  %"fadd.23" = fadd i32 %"fmul.23", %".410"
  store i32 %"fadd.23", i32* %"R7_NOTYPE"
.L_x_5:
  %".412" = load i32, i32* %"R6_NOTYPE"
  %".413" = load i1, i1* %"PT_Bool"
  %"cmp.7" = icmp ne i32 %".412", 0
  %".414" = or i1 %"cmp.7", %".413"
  store i1 %".414", i1* %"P0_Bool"
  %".416" = load i1, i1* %"P0_Bool"
  %".417" = icmp eq i1 %".416", 1
  br i1 %".417", label %".L_x_1", label %".L_x_2"
.L_x_2:
  %".419" = load i32, i32* %"R2_NOTYPE"
  %".420" = add i32 %".419", 0
  %"for_LDG.48" = inttoptr i32 %".420" to i32*
  %".421" = load i32, i32* %"for_LDG.48"
  store i32 %".421", i32* %"R8_NOTYPE"
  %".423" = load i32, i32* %"UR4_NOTYPE"
  %".424" = add i32 %".423", 0
  %"for_LDG.49" = inttoptr i32 %".424" to i32*
  %".425" = load i32, i32* %"for_LDG.49"
  store i32 %".425", i32* %"R9_NOTYPE"
  %".427" = load i32, i32* %"R2_NOTYPE"
  %".428" = add i32 %".427", 4
  %"for_LDG.50" = inttoptr i32 %".428" to i32*
  %".429" = load i32, i32* %"for_LDG.50"
  store i32 %".429", i32* %"R11_NOTYPE"
  %".431" = load i32, i32* %"UR4_NOTYPE"
  %".432" = add i32 %".431", 4
  %"for_LDG.51" = inttoptr i32 %".432" to i32*
  %".433" = load i32, i32* %"for_LDG.51"
  store i32 %".433", i32* %"R10_NOTYPE"
  %".435" = load i32, i32* %"R2_NOTYPE"
  %".436" = add i32 %".435", 8
  %"for_LDG.52" = inttoptr i32 %".436" to i32*
  %".437" = load i32, i32* %"for_LDG.52"
  store i32 %".437", i32* %"R13_NOTYPE"
  %".439" = load i32, i32* %"UR4_NOTYPE"
  %".440" = add i32 %".439", 8
  %"for_LDG.53" = inttoptr i32 %".440" to i32*
  %".441" = load i32, i32* %"for_LDG.53"
  store i32 %".441", i32* %"R12_NOTYPE"
  %".443" = load i32, i32* %"R2_NOTYPE"
  %".444" = add i32 %".443", 12
  %"for_LDG.54" = inttoptr i32 %".444" to i32*
  %".445" = load i32, i32* %"for_LDG.54"
  store i32 %".445", i32* %"R15_NOTYPE"
  %".447" = load i32, i32* %"UR4_NOTYPE"
  %".448" = add i32 %".447", 12
  %"for_LDG.55" = inttoptr i32 %".448" to i32*
  %".449" = load i32, i32* %"for_LDG.55"
  store i32 %".449", i32* %"R14_NOTYPE"
  %".451" = load i32, i32* %"R6_NOTYPE"
  %"add.32" = add i32 %".451", -4
  %"add.33" = add i32 %"add.32", 0
  store i32 %"add.33", i32* %"R6_NOTYPE"
  %".453" = load i32, i32* %"UR4_NOTYPE"
  %"add.34" = add i32 %".453", 16
  %"add.35" = add i32 %"add.34", 0
  store i32 %"add.35", i32* %"UR4_NOTYPE"
  %".455" = load i32, i32* %"R5_NOTYPE"
  %"add.36" = add i32 %".455", 4
  %"add.37" = add i32 %"add.36", 0
  store i32 %"add.37", i32* %"R5_NOTYPE"
  %".457" = load i32, i32* %"R6_NOTYPE"
  %".458" = load i1, i1* %"PT_Bool"
  %"cmp.8" = icmp ne i32 %".457", 0
  %".459" = and i1 %"cmp.8", %".458"
  store i1 %".459", i1* %"P0_Bool"
  %".461" = load i32, i32* %"UR5_NOTYPE"
  %"add.38" = add i32 0, %".461"
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", i32* %"UR5_NOTYPE"
  %".463" = load i32, i32* %"R8_NOTYPE"
  %".464" = load i32, i32* %"R9_NOTYPE"
  %".465" = load i32, i32* %"R7_NOTYPE"
  %"fmul.24" = fmul i32 %".463", %".464"
  %"fadd.24" = fadd i32 %"fmul.24", %".465"
  store i32 %"fadd.24", i32* %"R8_NOTYPE"
  %".467" = load i32, i32* %"R2_NOTYPE"
  %"add.40" = add i32 %".467", 16
  %"add.41" = add i32 %"add.40", 0
  store i32 %"add.41", i32* %"R9_NOTYPE"
  %".469" = load i32, i32* %"R9_NOTYPE"
  %"mul.6" = mul i32 0, 0
  %"add.42" = add i32 %"mul.6", %".469"
  store i32 %"add.42", i32* %"R2_NOTYPE"
  %".471" = load i32, i32* %"R11_NOTYPE"
  %".472" = load i32, i32* %"R10_NOTYPE"
  %".473" = load i32, i32* %"R8_NOTYPE"
  %"fmul.25" = fmul i32 %".471", %".472"
  %"fadd.25" = fadd i32 %"fmul.25", %".473"
  store i32 %"fadd.25", i32* %"R8_NOTYPE"
  %".475" = load i32, i32* %"R3_NOTYPE"
  %"add.43" = add i32 0, %".475"
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", i32* %"R10_NOTYPE"
  %".477" = load i32, i32* %"R10_NOTYPE"
  store i32 %".477", i32* %"R3_NOTYPE"
  %".479" = load i32, i32* %"R13_NOTYPE"
  %".480" = load i32, i32* %"R12_NOTYPE"
  %".481" = load i32, i32* %"R8_NOTYPE"
  %"fmul.26" = fmul i32 %".479", %".480"
  %"fadd.26" = fadd i32 %"fmul.26", %".481"
  store i32 %"fadd.26", i32* %"R8_NOTYPE"
  %".483" = load i32, i32* %"R15_NOTYPE"
  %".484" = load i32, i32* %"R14_NOTYPE"
  %".485" = load i32, i32* %"R8_NOTYPE"
  %"fmul.27" = fmul i32 %".483", %".484"
  %"fadd.27" = fadd i32 %"fmul.27", %".485"
  store i32 %"fadd.27", i32* %"R7_NOTYPE"
  %".487" = load i1, i1* %"P0_Bool"
  %".488" = icmp ne i1 %".487", 1
  br i1 %".488", label %".L_x_2", label %".L_x_1"
.L_x_1:
  %".490" = load i32, i32* %"R4_NOTYPE"
  %".491" = load i1, i1* %"PT_Bool"
  %"cmp.9" = icmp ne i32 %".490", 0
  %".492" = and i1 %"cmp.9", %".491"
  store i1 %".492", i1* %"P0_Bool"
  %".494" = load i1, i1* %"P0_Bool"
  %".495" = icmp eq i1 %".494", 1
  br i1 %".495", label %".L_x_0", label %".L_x_1_split_0x0900"
.L_x_1_split_0x0900:
  store i32 4, i32* %"R8_NOTYPE"
  %".498" = load i32, i32* %"R0_NOTYPE"
  %".499" = load i32, i32* %"R5_NOTYPE"
  %"mul.7" = mul i32 %".498", %"Arg_6"
  %"add.45" = add i32 %"mul.7", %".499"
  store i32 %"add.45", i32* %"R2_NOTYPE"
  %".501" = load i32, i32* %"R2_NOTYPE"
  %".502" = load i32, i32* %"R8_NOTYPE"
  %"mul.8" = mul i32 %".501", %".502"
  %"add.46" = add i32 %"mul.8", %"Arg_3"
  store i32 %"add.46", i32* %"R2_NOTYPE"
  %".504" = load i32, i32* %"R5_NOTYPE"
  %".505" = load i32, i32* %"R8_NOTYPE"
  %"mul.9" = mul i32 %".504", %".505"
  %"add.47" = add i32 %"mul.9", %"Arg_2"
  store i32 %"add.47", i32* %"R8_NOTYPE"
  %".507" = load i32, i32* %"R2_NOTYPE"
  store i32 %".507", i32* %"R6_NOTYPE"
.L_x_6:
  %".509" = load i32, i32* %"R6_NOTYPE"
  %"mul.10" = mul i32 0, 0
  %"add.48" = add i32 %"mul.10", %".509"
  store i32 %"add.48", i32* %"R2_NOTYPE"
  %".511" = load i32, i32* %"R8_NOTYPE"
  %".512" = add i32 %".511", 0
  %"for_LDG.56" = inttoptr i32 %".512" to i32*
  %".513" = load i32, i32* %"for_LDG.56"
  store i32 %".513", i32* %"R5_NOTYPE"
  %".515" = load i32, i32* %"R2_NOTYPE"
  %".516" = add i32 %".515", 0
  %"for_LDG.57" = inttoptr i32 %".516" to i32*
  %".517" = load i32, i32* %"for_LDG.57"
  store i32 %".517", i32* %"R2_NOTYPE"
  %".519" = load i32, i32* %"R4_NOTYPE"
  %"add.49" = add i32 %".519", -1
  %"add.50" = add i32 %"add.49", 0
  store i32 %"add.50", i32* %"R4_NOTYPE"
  %".521" = load i32, i32* %"R4_NOTYPE"
  %".522" = load i1, i1* %"PT_Bool"
  %"cmp.10" = icmp ne i32 %".521", 0
  %".523" = and i1 %"cmp.10", %".522"
  store i1 %".523", i1* %"P0_Bool"
  %".525" = load i32, i32* %"R6_NOTYPE"
  %"add.51" = add i32 %".525", 4
  %"add.52" = add i32 %"add.51", 0
  store i32 %"add.52", i32* %"R6_NOTYPE"
  %".527" = load i32, i32* %"R8_NOTYPE"
  %"add.53" = add i32 %".527", 4
  %"add.54" = add i32 %"add.53", 0
  store i32 %"add.54", i32* %"R8_NOTYPE"
  %".529" = load i32, i32* %"R3_NOTYPE"
  %"add.55" = add i32 0, %".529"
  %"add.56" = add i32 %"add.55", 0
  store i32 %"add.56", i32* %"R3_NOTYPE"
  %".531" = load i32, i32* %"R9_NOTYPE"
  %"add.57" = add i32 0, %".531"
  %"add.58" = add i32 %"add.57", 0
  store i32 %"add.58", i32* %"R9_NOTYPE"
  %".533" = load i32, i32* %"R2_NOTYPE"
  %".534" = load i32, i32* %"R5_NOTYPE"
  %".535" = load i32, i32* %"R7_NOTYPE"
  %"fmul.28" = fmul i32 %".533", %".534"
  %"fadd.28" = fadd i32 %"fmul.28", %".535"
  store i32 %"fadd.28", i32* %"R7_NOTYPE"
  %".537" = load i1, i1* %"P0_Bool"
  %".538" = icmp ne i1 %".537", 1
  br i1 %".538", label %".L_x_6", label %".L_x_0"
.L_x_0:
  store i32 4, i32* %"R5_NOTYPE"
  %".541" = load i32, i32* %"R0_NOTYPE"
  %".542" = load i32, i32* %"R5_NOTYPE"
  %"mul.11" = mul i32 %".541", %".542"
  %"add.59" = add i32 %"mul.11", %"Arg_4"
  store i32 %"add.59", i32* %"R2_NOTYPE"
  %".544" = load i32, i32* %"R2_NOTYPE"
  %".545" = add i32 %".544", 0
  %"for_LDG.58" = inttoptr i32 %".545" to i32*
  %".546" = load i32, i32* %"for_LDG.58"
  store i32 %".546", i32* %"R2_NOTYPE"
  %".548" = load i32, i32* %"R0_NOTYPE"
  %".549" = load i32, i32* %"R5_NOTYPE"
  %"mul.12" = mul i32 %".548", %".549"
  %"add.60" = add i32 %"mul.12", %"Arg_5"
  store i32 %"add.60", i32* %"R4_NOTYPE"
  %".551" = load i32, i32* %"R2_NOTYPE"
  %".552" = load i32, i32* %"R7_NOTYPE"
  %"fadd.29" = fadd i32 %".551", %".552"
  store i32 %"fadd.29", i32* %"R7_NOTYPE"
  %".554" = load i32, i32* %"R7_NOTYPE"
  %".555" = load i32, i32* %"R4_NOTYPE"
  %".556" = add i32 %".555", 0
  %"for_STG" = inttoptr i32 %".556" to i32*
  store i32 %".554", i32* %"for_STG"
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
  %"mul" = mul i32 0, 0
  %"add" = add i32 %"mul", %"Arg_2"
  store i32 %"add", i32* %"R1_NOTYPE"
  %".12" = icmp sge i32 %"Arg_6", 0
  %".13" = sub i32 0, %"Arg_6"
  %"iabs" = select i1 %".12", i32 %"Arg_6", i32 %".13"
  store i32 %"iabs", i32* %"R7_NOTYPE"
  store i32 %"Arg_5", i32* %"UR4_NOTYPE"
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", i32* %"R10_NOTYPE"
  %".17" = load i32, i32* %"UR4_NOTYPE"
  %".18" = load i32, i32* %"UR5_NOTYPE"
  %".19" = xor i32 %".17", %".18"
  store i32 %".19", i32* %"UR4_NOTYPE"
  %".21" = load i32, i32* %"R7_NOTYPE"
  store i32 %".21", i32* %"R0_NOTYPE"
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", i32* %"R19_NOTYPE"
  %".24" = load i32, i32* %"UR4_NOTYPE"
  %".25" = load i1, i1* %"PT_Bool"
  %"cmp" = icmp sle i32 0, %".24"
  %".26" = and i1 %"cmp", %".25"
  store i1 %".26", i1* %"P1_Bool"
  %".28" = load i32, i32* %"R0_NOTYPE"
  %".29" = fdiv i32 1, %".28"
  store i32 %".29", i32* %"R0_NOTYPE"
  %".31" = load i32, i32* %"R0_NOTYPE"
  %"add.1" = add i32 %".31", 268435454
  %"add.2" = add i32 %"add.1", 0
  store i32 %"add.2", i32* %"R2_NOTYPE"
  %".33" = load i32, i32* %"R2_NOTYPE"
  store i32 %".33", i32* %"R3_NOTYPE"
  %"mul.1" = mul i32 0, 0
  %"add.3" = add i32 %"mul.1", 0
  store i32 %"add.3", i32* %"R2_NOTYPE"
  %".36" = load i32, i32* %"R3_NOTYPE"
  %".37" = sub i32 0, %".36"
  %"mul.2" = mul i32 0, 0
  %"add.4" = add i32 %"mul.2", %".37"
  store i32 %"add.4", i32* %"R4_NOTYPE"
  %".39" = load i32, i32* %"R4_NOTYPE"
  %".40" = load i32, i32* %"R7_NOTYPE"
  %"mul.3" = mul i32 %".39", %".40"
  %"add.5" = add i32 %"mul.3", 0
  store i32 %"add.5", i32* %"R5_NOTYPE"
  %".42" = icmp sge i32 %"Arg_5", 0
  %".43" = sub i32 0, %"Arg_5"
  %"iabs.1" = select i1 %".42", i32 %"Arg_5", i32 %".43"
  store i32 %"iabs.1", i32* %"R4_NOTYPE"
  %".45" = load i32, i32* %"R3_NOTYPE"
  %".46" = load i32, i32* %"R5_NOTYPE"
  %".47" = load i32, i32* %"R2_NOTYPE"
  %"mul.4" = mul i32 %".45", %".46"
  %"add.6" = add i32 %"mul.4", %".47"
  store i32 %"add.6", i32* %"R3_NOTYPE"
  %"ThreadIdx.2" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.2", i32* %"R2_NOTYPE"
  %".50" = load i32, i32* %"R3_NOTYPE"
  %".51" = load i32, i32* %"R4_NOTYPE"
  %"mul.5" = mul i32 %".50", %".51"
  %"add.7" = add i32 %"mul.5", 0
  store i32 %"add.7", i32* %"R3_NOTYPE"
  %"ThreadIdx.3" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.3", i32* %"R5_NOTYPE"
  %".54" = load i32, i32* %"R3_NOTYPE"
  %".55" = sub i32 0, %".54"
  %"mul.6" = mul i32 0, 0
  %"add.8" = add i32 %"mul.6", %".55"
  store i32 %"add.8", i32* %"R0_NOTYPE"
  %".57" = load i32, i32* %"R7_NOTYPE"
  %".58" = load i32, i32* %"R0_NOTYPE"
  %".59" = load i32, i32* %"R4_NOTYPE"
  %"mul.7" = mul i32 %".57", %".58"
  %"add.9" = add i32 %"mul.7", %".59"
  store i32 %"add.9", i32* %"R0_NOTYPE"
  %".61" = load i32, i32* %"R7_NOTYPE"
  %".62" = load i32, i32* %"R0_NOTYPE"
  %".63" = load i1, i1* %"PT_Bool"
  %"cmp.1" = icmp sgt i32 %".61", %".62"
  %".64" = and i1 %"cmp.1", %".63"
  store i1 %".64", i1* %"P2_Bool"
  %".66" = load i1, i1* %"P2_Bool"
  %".67" = icmp eq i1 %".66", 1
  br i1 %".67", label %".text._Z10max_pool2dPfS_iii_conditionalExe_0x0160", label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_conditionalExe_0x0160:
  %".69" = load i32, i32* %"R0_NOTYPE"
  %".70" = load i32, i32* %"R7_NOTYPE"
  %".71" = sub i32 0, %".70"
  %"add.10" = add i32 %".69", %".71"
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", i32* %"R0_NOTYPE"
  br label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_split_0x0170:
  %".74" = load i1, i1* %"P2_Bool"
  %".75" = icmp eq i1 %".74", 1
  br i1 %".75", label %".text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExe_0x0170", label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExe_0x0170:
  %".77" = load i32, i32* %"R3_NOTYPE"
  %"add.12" = add i32 %".77", 1
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", i32* %"R3_NOTYPE"
  br label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0180:
  %".80" = load i32, i32* %"R0_NOTYPE"
  %".81" = load i32, i32* %"R7_NOTYPE"
  %".82" = load i1, i1* %"PT_Bool"
  %"cmp.2" = icmp sge i32 %".80", %".81"
  %".83" = and i1 %"cmp.2", %".82"
  store i1 %".83", i1* %"P0_Bool"
  %".85" = load i32, i32* %"R2_NOTYPE"
  %".86" = load i32, i32* %"R5_NOTYPE"
  %"mul.8" = mul i32 %".85", %"Arg_0"
  %"add.14" = add i32 %"mul.8", %".86"
  store i32 %"add.14", i32* %"R0_NOTYPE"
  %"ThreadIdx.4" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.4", i32* %"R7_NOTYPE"
  %".89" = load i1, i1* %"PT_Bool"
  %"cmp.3" = icmp ne i32 0, %"Arg_6"
  %".90" = and i1 %"cmp.3", %".89"
  store i1 %".90", i1* %"P2_Bool"
  %".92" = load i1, i1* %"P0_Bool"
  %".93" = icmp ne i1 %".92", 1
  br i1 %".93", label %".text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExe_0x01c0", label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExe_0x01c0:
  %".95" = load i32, i32* %"R3_NOTYPE"
  %"add.15" = add i32 %".95", 1
  %"add.16" = add i32 %"add.15", 0
  store i32 %"add.16", i32* %"R3_NOTYPE"
  br label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x01d0:
  %".98" = load i32, i32* %"R3_NOTYPE"
  %"mul.9" = mul i32 0, 0
  %"add.17" = add i32 %"mul.9", %".98"
  store i32 %"add.17", i32* %"R21_NOTYPE"
  %".100" = load i1, i1* %"P1_Bool"
  %".101" = icmp eq i1 %".100", 1
  br i1 %".101", label %".text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExe_0x01e0", label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExe_0x01e0:
  %".103" = load i32, i32* %"R21_NOTYPE"
  %".104" = sub i32 0, %".103"
  %"mul.10" = mul i32 0, 0
  %"add.18" = add i32 %"mul.10", %".104"
  store i32 %"add.18", i32* %"R21_NOTYPE"
  br label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01f0:
  %".107" = load i1, i1* %"P2_Bool"
  %".108" = icmp eq i1 %".107", 1
  br i1 %".108", label %".text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExe_0x01f0", label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExe_0x01f0:
  %".110" = xor i32 %"Arg_6", -1
  store i32 %".110", i32* %"R21_NOTYPE"
  br label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x0200:
  %".113" = load i32, i32* %"R10_NOTYPE"
  %".114" = load i32, i32* %"R7_NOTYPE"
  %"mul.11" = mul i32 %".113", %"Arg_1"
  %"add.19" = add i32 %"mul.11", %".114"
  store i32 %"add.19", i32* %"R10_NOTYPE"
  %".116" = load i32, i32* %"R0_NOTYPE"
  %".117" = load i32, i32* %"R21_NOTYPE"
  %".118" = load i1, i1* %"PT_Bool"
  %"cmp.4" = icmp sge i32 %".116", %".117"
  %".119" = and i1 %"cmp.4", %".118"
  store i1 %".119", i1* %"P0_Bool"
  %".121" = load i32, i32* %"R10_NOTYPE"
  %".122" = load i32, i32* %"R21_NOTYPE"
  %".123" = load i1, i1* %"PT_Bool"
  %"cmp.5" = icmp sge i32 %".121", %".122"
  %".124" = or i1 %"cmp.5", %".123"
  store i1 %".124", i1* %"P0_Bool"
  %".126" = load i32, i32* %"R19_NOTYPE"
  %".127" = load i1, i1* %"PT_Bool"
  %"cmp.6" = icmp sge i32 %".126", %"Arg_7"
  %".128" = or i1 %"cmp.6", %".127"
  store i1 %".128", i1* %"P0_Bool"
  %".130" = load i1, i1* %"P0_Bool"
  %".131" = icmp ne i1 %".130", 1
  br i1 %".131", label %".text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExe_0x0240", label %".text._Z10max_pool2dPfS_iii_split_0x0250"
.text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExe_0x0240:
  br label %"ExitFunction"
.text._Z10max_pool2dPfS_iii_split_0x0250:
  %"mul.12" = mul i32 0, 0
  %"add.20" = add i32 %"mul.12", %"Arg_6"
  store i32 %"add.20", i32* %"R15_NOTYPE"
  store i32 4286578688, i32* %"R11_NOTYPE"
  %".136" = load i32, i32* %"R15_NOTYPE"
  %".137" = load i1, i1* %"PT_Bool"
  %"cmp.7" = icmp sge i32 %".136", 1
  %".138" = and i1 %"cmp.7", %".137"
  store i1 %".138", i1* %"P0_Bool"
  %".140" = load i1, i1* %"P0_Bool"
  %".141" = icmp eq i1 %".140", 1
  br i1 %".141", label %".L_x_8", label %".text._Z10max_pool2dPfS_iii_split_0x0290"
.text._Z10max_pool2dPfS_iii_split_0x0290:
  %".143" = load i32, i32* %"R19_NOTYPE"
  %"mul.13" = mul i32 %".143", %"Arg_5"
  %"add.21" = add i32 %"mul.13", 0
  store i32 %"add.21", i32* %"R3_NOTYPE"
  %".145" = load i32, i32* %"R15_NOTYPE"
  %"add.22" = add i32 %".145", -1
  %"add.23" = add i32 %"add.22", 0
  store i32 %"add.23", i32* %"R2_NOTYPE"
  %".147" = load i32, i32* %"R0_NOTYPE"
  %"mul.14" = mul i32 %".147", %"Arg_6"
  %"add.24" = add i32 %"mul.14", 0
  store i32 %"add.24", i32* %"R13_NOTYPE"
  %".149" = load i32, i32* %"R15_NOTYPE"
  %".150" = and i32 %".149", 3
  store i32 %".150", i32* %"R15_NOTYPE"
  %".152" = load i32, i32* %"R10_NOTYPE"
  %".153" = load i32, i32* %"R3_NOTYPE"
  %"mul.15" = mul i32 %".152", %"Arg_6"
  %"add.25" = add i32 %"mul.15", %".153"
  store i32 %"add.25", i32* %"R12_NOTYPE"
  %".155" = load i32, i32* %"R2_NOTYPE"
  %".156" = load i1, i1* %"PT_Bool"
  %"cmp.8" = icmp sge i32 %".155", 3
  %".157" = and i1 %"cmp.8", %".156"
  store i1 %".157", i1* %"P0_Bool"
  %"mul.16" = mul i32 0, 0
  %"add.26" = add i32 %"mul.16", -8388608
  store i32 %"add.26", i32* %"R11_NOTYPE"
  %".160" = load i32, i32* %"R15_NOTYPE"
  %".161" = sub i32 0, %"Arg_6"
  %"add.27" = add i32 %".160", %".161"
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", i32* %"R20_NOTYPE"
  %"mul.17" = mul i32 0, 0
  %"add.29" = add i32 %"mul.17", 0
  store i32 %"add.29", i32* %"R16_NOTYPE"
  %".164" = load i32, i32* %"R12_NOTYPE"
  %".165" = load i32, i32* %"R13_NOTYPE"
  %"mul.18" = mul i32 %".164", %"Arg_5"
  %"add.30" = add i32 %"mul.18", %".165"
  store i32 %"add.30", i32* %"R14_NOTYPE"
.L_x_12:
  %".167" = load i32, i32* %"URZ_NOTYPE"
  store i32 %".167", i32* %"UR4_NOTYPE"
  %".169" = load i32, i32* %"R15_NOTYPE"
  %".170" = load i1, i1* %"PT_Bool"
  %"cmp.9" = icmp ne i32 %".169", 0
  %".171" = and i1 %"cmp.9", %".170"
  store i1 %".171", i1* %"P2_Bool"
  %".173" = load i1, i1* %"P0_Bool"
  %".174" = icmp eq i1 %".173", 1
  br i1 %".174", label %".L_x_9", label %".L_x_12_split_0x0360"
.L_x_12_split_0x0360:
  %".176" = load i32, i32* %"R14_NOTYPE"
  %".177" = load i32, i32* %"R16_NOTYPE"
  %"mul.19" = mul i32 %".176", 1
  %"add.31" = add i32 %"mul.19", %".177"
  store i32 %"add.31", i32* %"R17_NOTYPE"
  %".179" = load i32, i32* %"URZ_NOTYPE"
  store i32 %".179", i32* %"UR4_NOTYPE"
.L_x_10:
  store i32 4, i32* %"R2_NOTYPE"
  %"mul.20" = mul i32 0, 0
  %"add.32" = add i32 %"mul.20", %"Arg_5"
  store i32 %"add.32", i32* %"R23_NOTYPE"
  %".183" = load i32, i32* %"R17_NOTYPE"
  %".184" = load i32, i32* %"R2_NOTYPE"
  %"mul.21" = mul i32 %".183", %".184"
  %"add.33" = add i32 %"mul.21", %"Arg_3"
  store i32 %"add.33", i32* %"R2_NOTYPE"
  %".186" = load i32, i32* %"R23_NOTYPE"
  %".187" = load i32, i32* %"R2_NOTYPE"
  %"mul.22" = mul i32 %".186", 4
  %"add.34" = add i32 %"mul.22", %".187"
  store i32 %"add.34", i32* %"R4_NOTYPE"
  %".189" = load i32, i32* %"R2_NOTYPE"
  %".190" = add i32 %".189", 0
  %"for_LDG" = inttoptr i32 %".190" to i32*
  %".191" = load i32, i32* %"for_LDG"
  store i32 %".191", i32* %"R2_NOTYPE"
  %".193" = load i32, i32* %"R23_NOTYPE"
  %".194" = load i32, i32* %"R4_NOTYPE"
  %"mul.23" = mul i32 %".193", 4
  %"add.35" = add i32 %"mul.23", %".194"
  store i32 %"add.35", i32* %"R6_NOTYPE"
  %".196" = load i32, i32* %"R4_NOTYPE"
  %".197" = add i32 %".196", 0
  %"for_LDG.1" = inttoptr i32 %".197" to i32*
  %".198" = load i32, i32* %"for_LDG.1"
  store i32 %".198", i32* %"R4_NOTYPE"
  %".200" = load i32, i32* %"R23_NOTYPE"
  %".201" = load i32, i32* %"R6_NOTYPE"
  %"mul.24" = mul i32 %".200", 4
  %"add.36" = add i32 %"mul.24", %".201"
  store i32 %"add.36", i32* %"R8_NOTYPE"
  %".203" = load i32, i32* %"R6_NOTYPE"
  %".204" = add i32 %".203", 0
  %"for_LDG.2" = inttoptr i32 %".204" to i32*
  %".205" = load i32, i32* %"for_LDG.2"
  store i32 %".205", i32* %"R6_NOTYPE"
  %".207" = load i32, i32* %"R8_NOTYPE"
  %".208" = add i32 %".207", 0
  %"for_LDG.3" = inttoptr i32 %".208" to i32*
  %".209" = load i32, i32* %"for_LDG.3"
  store i32 %".209", i32* %"R8_NOTYPE"
  %".211" = load i32, i32* %"UR4_NOTYPE"
  %"add.37" = add i32 %".211", 4
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", i32* %"UR4_NOTYPE"
  %".213" = load i32, i32* %"R20_NOTYPE"
  %".214" = load i32, i32* %"UR4_NOTYPE"
  %"add.39" = add i32 %".213", %".214"
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", i32* %"R18_NOTYPE"
  %".216" = load i32, i32* %"R18_NOTYPE"
  %".217" = load i1, i1* %"PT_Bool"
  %"cmp.10" = icmp ne i32 %".216", 0
  %".218" = and i1 %"cmp.10", %".217"
  store i1 %".218", i1* %"P1_Bool"
  %".220" = load i32, i32* %"R23_NOTYPE"
  %".221" = load i32, i32* %"R17_NOTYPE"
  %"mul.25" = mul i32 %".220", 4
  %"add.41" = add i32 %"mul.25", %".221"
  store i32 %"add.41", i32* %"R17_NOTYPE"
  %".223" = load i32, i32* %"R2_NOTYPE"
  %".224" = load i32, i32* %"R11_NOTYPE"
  %".225" = fcmp olt i32 %".223", %".224"
  %"fmnmx_min" = select i1 %".225", i32 %".223", i32 %".224"
  %".226" = fcmp ogt i32 %".223", %".224"
  %"fmnmx_max" = select i1 %".226", i32 %".223", i32 %".224"
  %"fmnmx_final" = select i1 1, i32 %"fmnmx_min", i32 %"fmnmx_max"
  store i32 %"fmnmx_final", i32* %"R11_NOTYPE"
  %".228" = load i32, i32* %"R11_NOTYPE"
  %".229" = load i32, i32* %"R4_NOTYPE"
  %".230" = fcmp olt i32 %".228", %".229"
  %"fmnmx_min.1" = select i1 %".230", i32 %".228", i32 %".229"
  %".231" = fcmp ogt i32 %".228", %".229"
  %"fmnmx_max.1" = select i1 %".231", i32 %".228", i32 %".229"
  %"fmnmx_final.1" = select i1 1, i32 %"fmnmx_min.1", i32 %"fmnmx_max.1"
  store i32 %"fmnmx_final.1", i32* %"R11_NOTYPE"
  %".233" = load i32, i32* %"R11_NOTYPE"
  %".234" = load i32, i32* %"R6_NOTYPE"
  %".235" = fcmp olt i32 %".233", %".234"
  %"fmnmx_min.2" = select i1 %".235", i32 %".233", i32 %".234"
  %".236" = fcmp ogt i32 %".233", %".234"
  %"fmnmx_max.2" = select i1 %".236", i32 %".233", i32 %".234"
  %"fmnmx_final.2" = select i1 1, i32 %"fmnmx_min.2", i32 %"fmnmx_max.2"
  store i32 %"fmnmx_final.2", i32* %"R11_NOTYPE"
  %".238" = load i32, i32* %"R11_NOTYPE"
  %".239" = load i32, i32* %"R8_NOTYPE"
  %".240" = fcmp olt i32 %".238", %".239"
  %"fmnmx_min.3" = select i1 %".240", i32 %".238", i32 %".239"
  %".241" = fcmp ogt i32 %".238", %".239"
  %"fmnmx_max.3" = select i1 %".241", i32 %".238", i32 %".239"
  %"fmnmx_final.3" = select i1 1, i32 %"fmnmx_min.3", i32 %"fmnmx_max.3"
  store i32 %"fmnmx_final.3", i32* %"R11_NOTYPE"
  %".243" = load i1, i1* %"P1_Bool"
  %".244" = icmp ne i1 %".243", 1
  br i1 %".244", label %".L_x_10", label %".L_x_9"
.L_x_9:
  %".246" = load i32, i32* %"R13_NOTYPE"
  %".247" = load i32, i32* %"R16_NOTYPE"
  %"mul.26" = mul i32 %".246", 1
  %"add.42" = add i32 %"mul.26", %".247"
  store i32 %"add.42", i32* %"R4_NOTYPE"
  %".249" = load i1, i1* %"P2_Bool"
  %".250" = icmp eq i1 %".249", 1
  br i1 %".250", label %".L_x_11", label %".L_x_9_split_0x04d0"
.L_x_9_split_0x04d0:
  %".252" = load i32, i32* %"R12_NOTYPE"
  %".253" = load i32, i32* %"UR4_NOTYPE"
  %"add.43" = add i32 %".252", %".253"
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", i32* %"R5_NOTYPE"
  store i32 4, i32* %"R7_NOTYPE"
  %".256" = load i32, i32* %"R5_NOTYPE"
  %".257" = load i32, i32* %"R4_NOTYPE"
  %"mul.27" = mul i32 %".256", %"Arg_5"
  %"add.45" = add i32 %"mul.27", %".257"
  store i32 %"add.45", i32* %"R2_NOTYPE"
  %".259" = load i32, i32* %"R2_NOTYPE"
  %".260" = load i32, i32* %"R7_NOTYPE"
  %"mul.28" = mul i32 %".259", %".260"
  %"add.46" = add i32 %"mul.28", %"Arg_3"
  store i32 %"add.46", i32* %"R2_NOTYPE"
  %".262" = load i32, i32* %"R2_NOTYPE"
  %".263" = add i32 %".262", 0
  %"for_LDG.4" = inttoptr i32 %".263" to i32*
  %".264" = load i32, i32* %"for_LDG.4"
  store i32 %".264", i32* %"R2_NOTYPE"
  %".266" = load i32, i32* %"R15_NOTYPE"
  %".267" = load i1, i1* %"PT_Bool"
  %"cmp.11" = icmp ne i32 %".266", 1
  %".268" = and i1 %"cmp.11", %".267"
  store i1 %".268", i1* %"P1_Bool"
  %".270" = load i32, i32* %"R11_NOTYPE"
  %".271" = load i32, i32* %"R2_NOTYPE"
  %".272" = fcmp olt i32 %".270", %".271"
  %"fmnmx_min.4" = select i1 %".272", i32 %".270", i32 %".271"
  %".273" = fcmp ogt i32 %".270", %".271"
  %"fmnmx_max.4" = select i1 %".273", i32 %".270", i32 %".271"
  %"fmnmx_final.4" = select i1 1, i32 %"fmnmx_min.4", i32 %"fmnmx_max.4"
  store i32 %"fmnmx_final.4", i32* %"R11_NOTYPE"
  %".275" = load i1, i1* %"P1_Bool"
  %".276" = icmp eq i1 %".275", 1
  br i1 %".276", label %".L_x_11", label %".L_x_9_split_0x0550"
.L_x_9_split_0x0550:
  %".278" = load i32, i32* %"R15_NOTYPE"
  %".279" = load i1, i1* %"PT_Bool"
  %"cmp.12" = icmp ne i32 %".278", 2
  %".280" = and i1 %"cmp.12", %".279"
  store i1 %".280", i1* %"P1_Bool"
  %".282" = load i32, i32* %"R5_NOTYPE"
  %"add.47" = add i32 %".282", 1
  %"add.48" = add i32 %"add.47", 0
  store i32 %"add.48", i32* %"R2_NOTYPE"
  %".284" = load i32, i32* %"R2_NOTYPE"
  %".285" = load i32, i32* %"R4_NOTYPE"
  %"mul.29" = mul i32 %".284", %"Arg_5"
  %"add.49" = add i32 %"mul.29", %".285"
  store i32 %"add.49", i32* %"R2_NOTYPE"
  %".287" = load i1, i1* %"P1_Bool"
  %".288" = icmp ne i1 %".287", 1
  br i1 %".288", label %".L_x_9_split_0x0550_conditionalExe_0x0580", label %".L_x_9_split_0x0590"
.L_x_9_split_0x0550_conditionalExe_0x0580:
  %".290" = load i32, i32* %"R5_NOTYPE"
  %"add.50" = add i32 %".290", 2
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", i32* %"R3_NOTYPE"
  br label %".L_x_9_split_0x0590"
.L_x_9_split_0x0590:
  %".293" = load i1, i1* %"P1_Bool"
  %".294" = icmp ne i1 %".293", 1
  br i1 %".294", label %".L_x_9_split_0x0590_conditionalExe_0x0590", label %".L_x_9_split_0x05a0"
.L_x_9_split_0x0590_conditionalExe_0x0590:
  %".296" = load i32, i32* %"R3_NOTYPE"
  %".297" = load i32, i32* %"R4_NOTYPE"
  %"mul.30" = mul i32 %".296", %"Arg_5"
  %"add.52" = add i32 %"mul.30", %".297"
  store i32 %"add.52", i32* %"R4_NOTYPE"
  br label %".L_x_9_split_0x05a0"
.L_x_9_split_0x05a0:
  %".300" = load i32, i32* %"R2_NOTYPE"
  %".301" = load i32, i32* %"R7_NOTYPE"
  %"mul.31" = mul i32 %".300", %".301"
  %"add.53" = add i32 %"mul.31", %"Arg_3"
  store i32 %"add.53", i32* %"R2_NOTYPE"
  %".303" = load i1, i1* %"P1_Bool"
  %".304" = icmp ne i1 %".303", 1
  br i1 %".304", label %".L_x_9_split_0x05a0_conditionalExe_0x05b0", label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05a0_conditionalExe_0x05b0:
  %".306" = load i32, i32* %"R4_NOTYPE"
  %".307" = load i32, i32* %"R7_NOTYPE"
  %"mul.32" = mul i32 %".306", %".307"
  %"add.54" = add i32 %"mul.32", %"Arg_3"
  store i32 %"add.54", i32* %"R4_NOTYPE"
  br label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05c0:
  %".310" = load i32, i32* %"R2_NOTYPE"
  %".311" = add i32 %".310", 0
  %"for_LDG.5" = inttoptr i32 %".311" to i32*
  %".312" = load i32, i32* %"for_LDG.5"
  store i32 %".312", i32* %"R2_NOTYPE"
  %".314" = load i1, i1* %"P1_Bool"
  %".315" = icmp ne i1 %".314", 1
  br i1 %".315", label %".L_x_9_split_0x05c0_conditionalExe_0x05d0", label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05c0_conditionalExe_0x05d0:
  %".317" = load i32, i32* %"R4_NOTYPE"
  %".318" = add i32 %".317", 0
  %"for_LDG.6" = inttoptr i32 %".318" to i32*
  %".319" = load i32, i32* %"for_LDG.6"
  store i32 %".319", i32* %"R4_NOTYPE"
  br label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05e0:
  %".322" = load i32, i32* %"R11_NOTYPE"
  %".323" = load i32, i32* %"R2_NOTYPE"
  %".324" = fcmp olt i32 %".322", %".323"
  %"fmnmx_min.5" = select i1 %".324", i32 %".322", i32 %".323"
  %".325" = fcmp ogt i32 %".322", %".323"
  %"fmnmx_max.5" = select i1 %".325", i32 %".322", i32 %".323"
  %"fmnmx_final.5" = select i1 1, i32 %"fmnmx_min.5", i32 %"fmnmx_max.5"
  store i32 %"fmnmx_final.5", i32* %"R11_NOTYPE"
  %".327" = load i1, i1* %"P1_Bool"
  %".328" = icmp ne i1 %".327", 1
  br i1 %".328", label %".L_x_9_split_0x05e0_conditionalExe_0x05f0", label %".L_x_11"
.L_x_9_split_0x05e0_conditionalExe_0x05f0:
  %".330" = load i32, i32* %"R11_NOTYPE"
  %".331" = load i32, i32* %"R4_NOTYPE"
  %".332" = fcmp olt i32 %".330", %".331"
  %"fmnmx_min.6" = select i1 %".332", i32 %".330", i32 %".331"
  %".333" = fcmp ogt i32 %".330", %".331"
  %"fmnmx_max.6" = select i1 %".333", i32 %".330", i32 %".331"
  %"fmnmx_final.6" = select i1 1, i32 %"fmnmx_min.6", i32 %"fmnmx_max.6"
  store i32 %"fmnmx_final.6", i32* %"R11_NOTYPE"
  br label %".L_x_11"
.L_x_11:
  %".336" = load i32, i32* %"R16_NOTYPE"
  %"add.55" = add i32 %".336", 1
  %"add.56" = add i32 %"add.55", 0
  store i32 %"add.56", i32* %"R16_NOTYPE"
  %".338" = load i32, i32* %"R16_NOTYPE"
  %".339" = load i1, i1* %"PT_Bool"
  %"cmp.13" = icmp sge i32 %".338", %"Arg_6"
  %".340" = and i1 %"cmp.13", %".339"
  store i1 %".340", i1* %"P1_Bool"
  %".342" = load i1, i1* %"P1_Bool"
  %".343" = icmp eq i1 %".342", 1
  br i1 %".343", label %".L_x_12", label %".L_x_8"
.L_x_8:
  %".345" = load i32, i32* %"R21_NOTYPE"
  %".346" = load i32, i32* %"R19_NOTYPE"
  %".347" = load i32, i32* %"R10_NOTYPE"
  %"mul.33" = mul i32 %".345", %".346"
  %"add.57" = add i32 %"mul.33", %".347"
  store i32 %"add.57", i32* %"R3_NOTYPE"
  %"mul.34" = mul i32 0, 0
  %"add.58" = add i32 %"mul.34", 4
  store i32 %"add.58", i32* %"R2_NOTYPE"
  %".350" = load i32, i32* %"R21_NOTYPE"
  %".351" = load i32, i32* %"R3_NOTYPE"
  %".352" = load i32, i32* %"R0_NOTYPE"
  %"mul.35" = mul i32 %".350", %".351"
  %"add.59" = add i32 %"mul.35", %".352"
  store i32 %"add.59", i32* %"R3_NOTYPE"
  %".354" = load i32, i32* %"R3_NOTYPE"
  %".355" = load i32, i32* %"R2_NOTYPE"
  %"mul.36" = mul i32 %".354", %".355"
  %"add.60" = add i32 %"mul.36", %"Arg_4"
  store i32 %"add.60", i32* %"R2_NOTYPE"
  %".357" = load i32, i32* %"R11_NOTYPE"
  %".358" = load i32, i32* %"R2_NOTYPE"
  %".359" = add i32 %".358", 0
  %"for_STG" = inttoptr i32 %".359" to i32*
  store i32 %".357", i32* %"for_STG"
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
  store i32 %"Arg_1", i32* %"R1_NOTYPE"
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", i32* %"R4_NOTYPE"
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", i32* %"R3_NOTYPE"
  %".11" = load i32, i32* %"R4_NOTYPE"
  %".12" = load i32, i32* %"R3_NOTYPE"
  %"mul" = mul i32 %".11", %"Arg_0"
  %"add" = add i32 %"mul", %".12"
  store i32 %"add", i32* %"R4_NOTYPE"
  %".14" = load i32, i32* %"R4_NOTYPE"
  %".15" = load i1, i1* %"PT_Bool"
  %"cmp" = icmp sge i32 %".14", %"Arg_4"
  %".16" = and i1 %"cmp", %".15"
  store i1 %".16", i1* %"P0_Bool"
  %".18" = load i1, i1* %"P0_Bool"
  %".19" = icmp ne i1 %".18", 1
  br i1 %".19", label %".text._Z4reluPfS_i_conditionalExe_0x0050", label %".text._Z4reluPfS_i_split_0x0060"
.text._Z4reluPfS_i_conditionalExe_0x0050:
  br label %"ExitFunction"
.text._Z4reluPfS_i_split_0x0060:
  store i32 4, i32* %"R5_NOTYPE"
  %".23" = load i32, i32* %"R4_NOTYPE"
  %".24" = load i32, i32* %"R5_NOTYPE"
  %"mul.1" = mul i32 %".23", %".24"
  %"add.1" = add i32 %"mul.1", %"Arg_2"
  store i32 %"add.1", i32* %"R2_NOTYPE"
  %".26" = load i32, i32* %"R2_NOTYPE"
  %".27" = add i32 %".26", 0
  %"for_LDG" = inttoptr i32 %".27" to i32*
  %".28" = load i32, i32* %"for_LDG"
  store i32 %".28", i32* %"R2_NOTYPE"
  %".30" = load i32, i32* %"R4_NOTYPE"
  %".31" = load i32, i32* %"R5_NOTYPE"
  %"mul.2" = mul i32 %".30", %".31"
  %"add.2" = add i32 %"mul.2", %"Arg_3"
  store i32 %"add.2", i32* %"R4_NOTYPE"
  %".33" = load i32, i32* %"R2_NOTYPE"
  %".34" = fcmp olt i32 0, %".33"
  %"fmnmx_min" = select i1 %".34", i32 0, i32 %".33"
  %".35" = fcmp ogt i32 0, %".33"
  %"fmnmx_max" = select i1 %".35", i32 0, i32 %".33"
  %"fmnmx_final" = select i1 1, i32 %"fmnmx_min", i32 %"fmnmx_max"
  store i32 %"fmnmx_final", i32* %"R7_NOTYPE"
  %".37" = load i32, i32* %"R7_NOTYPE"
  %".38" = load i32, i32* %"R4_NOTYPE"
  %".39" = add i32 %".38", 0
  %"for_STG" = inttoptr i32 %".39" to i32*
  store i32 %".37", i32* %"for_STG"
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
  store i32 %"Arg_2", i32* %"R1_NOTYPE"
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", i32* %"R3_NOTYPE"
  store i32 %"Arg_6", i32* %"UR4_NOTYPE"
  %".16" = load i32, i32* %"UR4_NOTYPE"
  %".17" = load i32, i32* %"UR5_NOTYPE"
  %".18" = sub i32 0, %".17"
  %"add" = add i32 %".16", %".18"
  %"add.1" = add i32 %"add", 0
  store i32 %"add.1", i32* %"UR5_NOTYPE"
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", i32* %"R4_NOTYPE"
  %"ThreadIdx.2" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.2", i32* %"R2_NOTYPE"
  %"ThreadIdx.3" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.3", i32* %"R5_NOTYPE"
  %"ThreadIdx.4" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.4", i32* %"R0_NOTYPE"
  %".24" = load i32, i32* %"R3_NOTYPE"
  %".25" = load i32, i32* %"R4_NOTYPE"
  %"mul" = mul i32 %".24", %"Arg_1"
  %"add.2" = add i32 %"mul", %".25"
  store i32 %"add.2", i32* %"R3_NOTYPE"
  %".27" = load i32, i32* %"R3_NOTYPE"
  %".28" = load i32, i32* %"UR5_NOTYPE"
  %".29" = load i1, i1* %"PT_Bool"
  %"cmp" = icmp sgt i32 %".27", %".28"
  %".30" = and i1 %"cmp", %".29"
  store i1 %".30", i1* %"P0_Bool"
  %".32" = load i32, i32* %"R2_NOTYPE"
  %".33" = load i32, i32* %"R5_NOTYPE"
  %"mul.1" = mul i32 %".32", %"Arg_0"
  %"add.3" = add i32 %"mul.1", %".33"
  store i32 %"add.3", i32* %"R2_NOTYPE"
  %".35" = load i32, i32* %"R2_NOTYPE"
  %".36" = load i32, i32* %"UR5_NOTYPE"
  %".37" = load i1, i1* %"PT_Bool"
  %"cmp.1" = icmp sgt i32 %".35", %".36"
  %".38" = or i1 %"cmp.1", %".37"
  store i1 %".38", i1* %"P0_Bool"
  %".40" = load i32, i32* %"R0_NOTYPE"
  %".41" = load i1, i1* %"PT_Bool"
  %"cmp.2" = icmp sge i32 %".40", %"Arg_9"
  %".42" = or i1 %"cmp.2", %".41"
  store i1 %".42", i1* %"P0_Bool"
  %".44" = load i1, i1* %"P0_Bool"
  %".45" = icmp ne i1 %".44", 1
  br i1 %".45", label %".text._Z6conv2dPfS_S_iiii_conditionalExe_0x00d0", label %".text._Z6conv2dPfS_S_iiii_split_0x00e0"
.text._Z6conv2dPfS_S_iiii_conditionalExe_0x00d0:
  br label %"ExitFunction"
.text._Z6conv2dPfS_S_iiii_split_0x00e0:
  store i32 1, i32* %"R4_NOTYPE"
  %"mul.2" = mul i32 0, 0
  %"add.4" = add i32 %"mul.2", 0
  store i32 %"add.4", i32* %"R12_NOTYPE"
  %".50" = load i32, i32* %"R4_NOTYPE"
  %".51" = load i1, i1* %"PT_Bool"
  %"cmp.3" = icmp sle i32 %".50", %"Arg_7"
  %".52" = and i1 %"cmp.3", %".51"
  store i1 %".52", i1* %"P0_Bool"
  %".54" = load i32, i32* %"R4_NOTYPE"
  %".55" = load i1, i1* %"PT_Bool"
  %"cmp.4" = icmp sgt i32 %".54", %"Arg_8"
  %".56" = or i1 %"cmp.4", %".55"
  store i1 %".56", i1* %"P0_Bool"
  %".58" = load i1, i1* %"P0_Bool"
  %".59" = icmp ne i1 %".58", 1
  br i1 %".59", label %".L_x_15", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
.text._Z6conv2dPfS_S_iiii_split_0x0130:
  %"mul.3" = mul i32 0, 0
  %"add.5" = add i32 %"mul.3", %"Arg_7"
  store i32 %"add.5", i32* %"R4_NOTYPE"
  store i32 1, i32* %"R5_NOTYPE"
  %"mul.4" = mul i32 0, 0
  %"add.6" = add i32 %"mul.4", 0
  store i32 %"add.6", i32* %"R10_NOTYPE"
  %".64" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".64", i32* %"R12_NOTYPE"
  %".66" = load i32, i32* %"R5_NOTYPE"
  %".67" = sub i32 0, %".66"
  %"add.7" = add i32 %".67", %"Arg_7"
  %"add.8" = add i32 %"add.7", 0
  store i32 %"add.8", i32* %"R5_NOTYPE"
  %".69" = load i32, i32* %"R4_NOTYPE"
  %".70" = and i32 %".69", 3
  store i32 %".70", i32* %"R4_NOTYPE"
  %".72" = load i32, i32* %"R5_NOTYPE"
  %".73" = load i1, i1* %"PT_Bool"
  %"cmp.5" = icmp sge i32 %".72", 3
  %".74" = and i1 %"cmp.5", %".73"
  store i1 %".74", i1* %"P0_Bool"
  %".76" = load i32, i32* %"R4_NOTYPE"
  %".77" = sub i32 0, %"Arg_7"
  %"add.9" = add i32 %".76", %".77"
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", i32* %"R26_NOTYPE"
.L_x_20:
  %".79" = load i32, i32* %"R10_NOTYPE"
  %".80" = load i32, i32* %"R3_NOTYPE"
  %"mul.5" = mul i32 %".79", %"Arg_6"
  %"add.11" = add i32 %"mul.5", %".80"
  store i32 %"add.11", i32* %"R11_NOTYPE"
  %".82" = load i32, i32* %"RZ_NOTYPE"
  store i32 %".82", i32* %"R8_NOTYPE"
  %".84" = load i32, i32* %"R0_NOTYPE"
  %".85" = load i32, i32* %"R10_NOTYPE"
  %"mul.6" = mul i32 %".84", %"Arg_8"
  %"add.12" = add i32 %"mul.6", %".85"
  store i32 %"add.12", i32* %"R9_NOTYPE"
  %".87" = load i32, i32* %"R10_NOTYPE"
  %"add.13" = add i32 %".87", 1
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", i32* %"R10_NOTYPE"
  %".89" = load i32, i32* %"R11_NOTYPE"
  %".90" = load i32, i32* %"R2_NOTYPE"
  %"mul.7" = mul i32 %".89", %"Arg_6"
  %"add.15" = add i32 %"mul.7", %".90"
  store i32 %"add.15", i32* %"R5_NOTYPE"
  %".92" = load i32, i32* %"R10_NOTYPE"
  %".93" = load i1, i1* %"PT_Bool"
  %"cmp.6" = icmp sge i32 %".92", %"Arg_8"
  %".94" = and i1 %"cmp.6", %".93"
  store i1 %".94", i1* %"P1_Bool"
.L_x_19:
  %".96" = load i32, i32* %"R9_NOTYPE"
  %".97" = load i32, i32* %"R8_NOTYPE"
  %"mul.8" = mul i32 %".96", %"Arg_7"
  %"add.16" = add i32 %"mul.8", %".97"
  store i32 %"add.16", i32* %"R6_NOTYPE"
  %".99" = load i32, i32* %"URZ_NOTYPE"
  store i32 %".99", i32* %"UR4_NOTYPE"
  %".101" = load i32, i32* %"R4_NOTYPE"
  %".102" = load i1, i1* %"PT_Bool"
  %"cmp.7" = icmp ne i32 %".101", 0
  %".103" = and i1 %"cmp.7", %".102"
  store i1 %".103", i1* %"P3_Bool"
  %".105" = load i32, i32* %"R6_NOTYPE"
  %"mul.9" = mul i32 %".105", %"Arg_7"
  %"add.17" = add i32 %"mul.9", 0
  store i32 %"add.17", i32* %"R29_NOTYPE"
  %".107" = load i1, i1* %"P0_Bool"
  %".108" = icmp eq i1 %".107", 1
  br i1 %".108", label %".L_x_16", label %".L_x_19_split_0x0260"
.L_x_19_split_0x0260:
  store i32 4, i32* %"R24_NOTYPE"
  %".111" = load i32, i32* %"R5_NOTYPE"
  %".112" = load i32, i32* %"R8_NOTYPE"
  %"mul.10" = mul i32 %".111", 1
  %"add.18" = add i32 %"mul.10", %".112"
  store i32 %"add.18", i32* %"R13_NOTYPE"
  %".114" = load i32, i32* %"URZ_NOTYPE"
  store i32 %".114", i32* %"UR4_NOTYPE"
  %".116" = load i32, i32* %"R29_NOTYPE"
  %".117" = load i32, i32* %"R24_NOTYPE"
  %"mul.11" = mul i32 %".116", %".117"
  %"add.19" = add i32 %"mul.11", %"Arg_4"
  store i32 %"add.19", i32* %"R6_NOTYPE"
  %".119" = load i32, i32* %"R6_NOTYPE"
  store i32 %".119", i32* %"R23_NOTYPE"
.L_x_17:
  %".121" = load i32, i32* %"R13_NOTYPE"
  %".122" = load i32, i32* %"R24_NOTYPE"
  %"mul.12" = mul i32 %".121", %".122"
  %"add.20" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.20", i32* %"R14_NOTYPE"
  store i32 %"Arg_6", i32* %"R31_NOTYPE"
  %".125" = load i32, i32* %"R23_NOTYPE"
  %"mul.13" = mul i32 0, 0
  %"add.21" = add i32 %"mul.13", %".125"
  store i32 %"add.21", i32* %"R6_NOTYPE"
  %".127" = load i32, i32* %"R31_NOTYPE"
  %".128" = load i32, i32* %"R14_NOTYPE"
  %"mul.14" = mul i32 %".127", 4
  %"add.22" = add i32 %"mul.14", %".128"
  store i32 %"add.22", i32* %"R16_NOTYPE"
  %".130" = load i32, i32* %"R14_NOTYPE"
  %".131" = add i32 %".130", 0
  %"for_LDG" = inttoptr i32 %".131" to i32*
  %".132" = load i32, i32* %"for_LDG"
  store i32 %".132", i32* %"R14_NOTYPE"
  %".134" = load i32, i32* %"R6_NOTYPE"
  %".135" = add i32 %".134", 0
  %"for_LDG.1" = inttoptr i32 %".135" to i32*
  %".136" = load i32, i32* %"for_LDG.1"
  store i32 %".136", i32* %"R23_NOTYPE"
  %".138" = load i32, i32* %"R31_NOTYPE"
  %".139" = load i32, i32* %"R16_NOTYPE"
  %"mul.15" = mul i32 %".138", 4
  %"add.23" = add i32 %"mul.15", %".139"
  store i32 %"add.23", i32* %"R18_NOTYPE"
  %".141" = load i32, i32* %"R16_NOTYPE"
  %".142" = add i32 %".141", 0
  %"for_LDG.2" = inttoptr i32 %".142" to i32*
  %".143" = load i32, i32* %"for_LDG.2"
  store i32 %".143", i32* %"R16_NOTYPE"
  %".145" = load i32, i32* %"R31_NOTYPE"
  %".146" = load i32, i32* %"R18_NOTYPE"
  %"mul.16" = mul i32 %".145", 4
  %"add.24" = add i32 %"mul.16", %".146"
  store i32 %"add.24", i32* %"R20_NOTYPE"
  %".148" = load i32, i32* %"R6_NOTYPE"
  %".149" = add i32 %".148", 4
  %"for_LDG.3" = inttoptr i32 %".149" to i32*
  %".150" = load i32, i32* %"for_LDG.3"
  store i32 %".150", i32* %"R22_NOTYPE"
  %".152" = load i32, i32* %"R18_NOTYPE"
  %".153" = add i32 %".152", 0
  %"for_LDG.4" = inttoptr i32 %".153" to i32*
  %".154" = load i32, i32* %"for_LDG.4"
  store i32 %".154", i32* %"R18_NOTYPE"
  %".156" = load i32, i32* %"R6_NOTYPE"
  %".157" = add i32 %".156", 8
  %"for_LDG.5" = inttoptr i32 %".157" to i32*
  %".158" = load i32, i32* %"for_LDG.5"
  store i32 %".158", i32* %"R25_NOTYPE"
  %".160" = load i32, i32* %"R20_NOTYPE"
  %".161" = add i32 %".160", 0
  %"for_LDG.6" = inttoptr i32 %".161" to i32*
  %".162" = load i32, i32* %"for_LDG.6"
  store i32 %".162", i32* %"R20_NOTYPE"
  %".164" = load i32, i32* %"R6_NOTYPE"
  %".165" = add i32 %".164", 12
  %"for_LDG.7" = inttoptr i32 %".165" to i32*
  %".166" = load i32, i32* %"for_LDG.7"
  store i32 %".166", i32* %"R27_NOTYPE"
  %".168" = load i32, i32* %"UR4_NOTYPE"
  %"add.25" = add i32 %".168", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", i32* %"UR4_NOTYPE"
  %".170" = load i32, i32* %"R31_NOTYPE"
  %".171" = load i32, i32* %"R13_NOTYPE"
  %"shl" = shl i32 %".170", 2
  %"add.27" = add i32 %"shl", %".171"
  store i32 %"add.27", i32* %"R13_NOTYPE"
  %".173" = load i32, i32* %"R23_NOTYPE"
  %".174" = load i32, i32* %"R14_NOTYPE"
  %".175" = load i32, i32* %"R12_NOTYPE"
  %"fmul" = fmul i32 %".173", %".174"
  %"fadd" = fadd i32 %"fmul", %".175"
  store i32 %"fadd", i32* %"R23_NOTYPE"
  %".177" = load i32, i32* %"R26_NOTYPE"
  %".178" = load i32, i32* %"UR4_NOTYPE"
  %"add.28" = add i32 %".177", %".178"
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", i32* %"R12_NOTYPE"
  %".180" = load i32, i32* %"R12_NOTYPE"
  %".181" = load i1, i1* %"PT_Bool"
  %"cmp.8" = icmp ne i32 %".180", 0
  %".182" = and i1 %"cmp.8", %".181"
  store i1 %".182", i1* %"P2_Bool"
  %".184" = load i32, i32* %"R22_NOTYPE"
  %".185" = load i32, i32* %"R16_NOTYPE"
  %".186" = load i32, i32* %"R23_NOTYPE"
  %"fmul.1" = fmul i32 %".184", %".185"
  %"fadd.1" = fadd i32 %"fmul.1", %".186"
  store i32 %"fadd.1", i32* %"R22_NOTYPE"
  %".188" = load i32, i32* %"R6_NOTYPE"
  %"add.30" = add i32 %".188", 16
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", i32* %"R23_NOTYPE"
  %".190" = load i32, i32* %"R25_NOTYPE"
  %".191" = load i32, i32* %"R18_NOTYPE"
  %".192" = load i32, i32* %"R22_NOTYPE"
  %"fmul.2" = fmul i32 %".190", %".191"
  %"fadd.2" = fadd i32 %"fmul.2", %".192"
  store i32 %"fadd.2", i32* %"R22_NOTYPE"
  %".194" = load i32, i32* %"R7_NOTYPE"
  %"add.32" = add i32 0, %".194"
  %"add.33" = add i32 %"add.32", 0
  store i32 %"add.33", i32* %"R7_NOTYPE"
  %".196" = load i32, i32* %"R27_NOTYPE"
  %".197" = load i32, i32* %"R20_NOTYPE"
  %".198" = load i32, i32* %"R22_NOTYPE"
  %"fmul.3" = fmul i32 %".196", %".197"
  %"fadd.3" = fadd i32 %"fmul.3", %".198"
  store i32 %"fadd.3", i32* %"R12_NOTYPE"
  %".200" = load i1, i1* %"P2_Bool"
  %".201" = icmp ne i1 %".200", 1
  br i1 %".201", label %".L_x_17", label %".L_x_16"
.L_x_16:
  %".203" = load i32, i32* %"R2_NOTYPE"
  %".204" = load i32, i32* %"R8_NOTYPE"
  %"mul.17" = mul i32 %".203", 1
  %"add.34" = add i32 %"mul.17", %".204"
  store i32 %"add.34", i32* %"R14_NOTYPE"
  %".206" = load i1, i1* %"P3_Bool"
  %".207" = icmp eq i1 %".206", 1
  br i1 %".207", label %".L_x_18", label %".L_x_16_split_0x0460"
.L_x_16_split_0x0460:
  %".209" = load i32, i32* %"R11_NOTYPE"
  %".210" = load i32, i32* %"UR4_NOTYPE"
  %"add.35" = add i32 %".209", %".210"
  %"add.36" = add i32 %"add.35", 0
  store i32 %"add.36", i32* %"R15_NOTYPE"
  %".212" = load i32, i32* %"R29_NOTYPE"
  %".213" = load i32, i32* %"UR4_NOTYPE"
  %"add.37" = add i32 %".212", %".213"
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", i32* %"R16_NOTYPE"
  store i32 4, i32* %"R19_NOTYPE"
  %".216" = load i32, i32* %"R15_NOTYPE"
  %".217" = load i32, i32* %"R14_NOTYPE"
  %"mul.18" = mul i32 %".216", %"Arg_6"
  %"add.39" = add i32 %"mul.18", %".217"
  store i32 %"add.39", i32* %"R6_NOTYPE"
  %".219" = load i32, i32* %"R16_NOTYPE"
  %".220" = load i32, i32* %"R19_NOTYPE"
  %"mul.19" = mul i32 %".219", %".220"
  %"add.40" = add i32 %"mul.19", %"Arg_4"
  store i32 %"add.40", i32* %"R16_NOTYPE"
  %".222" = load i32, i32* %"R6_NOTYPE"
  %".223" = load i32, i32* %"R19_NOTYPE"
  %"mul.20" = mul i32 %".222", %".223"
  %"add.41" = add i32 %"mul.20", %"Arg_3"
  store i32 %"add.41", i32* %"R6_NOTYPE"
  %".225" = load i32, i32* %"R16_NOTYPE"
  %".226" = add i32 %".225", 0
  %"for_LDG.8" = inttoptr i32 %".226" to i32*
  %".227" = load i32, i32* %"for_LDG.8"
  store i32 %".227", i32* %"R13_NOTYPE"
  %".229" = load i32, i32* %"R6_NOTYPE"
  %".230" = add i32 %".229", 0
  %"for_LDG.9" = inttoptr i32 %".230" to i32*
  %".231" = load i32, i32* %"for_LDG.9"
  store i32 %".231", i32* %"R6_NOTYPE"
  %".233" = load i32, i32* %"R4_NOTYPE"
  %".234" = load i1, i1* %"PT_Bool"
  %"cmp.9" = icmp ne i32 %".233", 1
  %".235" = and i1 %"cmp.9", %".234"
  store i1 %".235", i1* %"P2_Bool"
  %".237" = load i32, i32* %"R13_NOTYPE"
  %".238" = load i32, i32* %"R6_NOTYPE"
  %".239" = load i32, i32* %"R12_NOTYPE"
  %"fmul.4" = fmul i32 %".237", %".238"
  %"fadd.4" = fadd i32 %"fmul.4", %".239"
  store i32 %"fadd.4", i32* %"R12_NOTYPE"
  %".241" = load i1, i1* %"P2_Bool"
  %".242" = icmp eq i1 %".241", 1
  br i1 %".242", label %".L_x_18", label %".L_x_16_split_0x0510"
.L_x_16_split_0x0510:
  %".244" = load i32, i32* %"R4_NOTYPE"
  %".245" = load i1, i1* %"PT_Bool"
  %"cmp.10" = icmp ne i32 %".244", 2
  %".246" = and i1 %"cmp.10", %".245"
  store i1 %".246", i1* %"P2_Bool"
  %".248" = load i32, i32* %"R16_NOTYPE"
  %".249" = add i32 %".248", 4
  %"for_LDG.10" = inttoptr i32 %".249" to i32*
  %".250" = load i32, i32* %"for_LDG.10"
  store i32 %".250", i32* %"R13_NOTYPE"
  %".252" = load i32, i32* %"R15_NOTYPE"
  %"add.42" = add i32 %".252", 1
  %"add.43" = add i32 %"add.42", 0
  store i32 %"add.43", i32* %"R6_NOTYPE"
  %".254" = load i32, i32* %"R6_NOTYPE"
  %".255" = load i32, i32* %"R14_NOTYPE"
  %"mul.21" = mul i32 %".254", %"Arg_6"
  %"add.44" = add i32 %"mul.21", %".255"
  store i32 %"add.44", i32* %"R6_NOTYPE"
  %".257" = load i1, i1* %"P2_Bool"
  %".258" = icmp ne i1 %".257", 1
  br i1 %".258", label %".L_x_16_split_0x0510_conditionalExe_0x0550", label %".L_x_16_split_0x0560"
.L_x_16_split_0x0510_conditionalExe_0x0550:
  %".260" = load i32, i32* %"R15_NOTYPE"
  %"add.45" = add i32 %".260", 2
  %"add.46" = add i32 %"add.45", 0
  store i32 %"add.46", i32* %"R7_NOTYPE"
  br label %".L_x_16_split_0x0560"
.L_x_16_split_0x0560:
  %".263" = load i1, i1* %"P2_Bool"
  %".264" = icmp ne i1 %".263", 1
  br i1 %".264", label %".L_x_16_split_0x0560_conditionalExe_0x0560", label %".L_x_16_split_0x0570"
.L_x_16_split_0x0560_conditionalExe_0x0560:
  %".266" = load i32, i32* %"R7_NOTYPE"
  %".267" = load i32, i32* %"R14_NOTYPE"
  %"mul.22" = mul i32 %".266", %"Arg_6"
  %"add.47" = add i32 %"mul.22", %".267"
  store i32 %"add.47", i32* %"R14_NOTYPE"
  br label %".L_x_16_split_0x0570"
.L_x_16_split_0x0570:
  %".270" = load i32, i32* %"R6_NOTYPE"
  %".271" = load i32, i32* %"R19_NOTYPE"
  %"mul.23" = mul i32 %".270", %".271"
  %"add.48" = add i32 %"mul.23", %"Arg_3"
  store i32 %"add.48", i32* %"R6_NOTYPE"
  %".273" = load i1, i1* %"P2_Bool"
  %".274" = icmp ne i1 %".273", 1
  br i1 %".274", label %".L_x_16_split_0x0570_conditionalExe_0x0580", label %".L_x_16_split_0x0590"
.L_x_16_split_0x0570_conditionalExe_0x0580:
  %".276" = load i32, i32* %"R14_NOTYPE"
  %".277" = load i32, i32* %"R19_NOTYPE"
  %"mul.24" = mul i32 %".276", %".277"
  %"add.49" = add i32 %"mul.24", %"Arg_3"
  store i32 %"add.49", i32* %"R14_NOTYPE"
  br label %".L_x_16_split_0x0590"
.L_x_16_split_0x0590:
  %".280" = load i1, i1* %"P2_Bool"
  %".281" = icmp ne i1 %".280", 1
  br i1 %".281", label %".L_x_16_split_0x0590_conditionalExe_0x0590", label %".L_x_16_split_0x05a0"
.L_x_16_split_0x0590_conditionalExe_0x0590:
  %".283" = load i32, i32* %"R16_NOTYPE"
  %".284" = add i32 %".283", 8
  %"for_LDG.11" = inttoptr i32 %".284" to i32*
  %".285" = load i32, i32* %"for_LDG.11"
  store i32 %".285", i32* %"R19_NOTYPE"
  br label %".L_x_16_split_0x05a0"
.L_x_16_split_0x05a0:
  %".288" = load i32, i32* %"R6_NOTYPE"
  %".289" = add i32 %".288", 0
  %"for_LDG.12" = inttoptr i32 %".289" to i32*
  %".290" = load i32, i32* %"for_LDG.12"
  store i32 %".290", i32* %"R6_NOTYPE"
  %".292" = load i1, i1* %"P2_Bool"
  %".293" = icmp ne i1 %".292", 1
  br i1 %".293", label %".L_x_16_split_0x05a0_conditionalExe_0x05b0", label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05a0_conditionalExe_0x05b0:
  %".295" = load i32, i32* %"R14_NOTYPE"
  %".296" = add i32 %".295", 0
  %"for_LDG.13" = inttoptr i32 %".296" to i32*
  %".297" = load i32, i32* %"for_LDG.13"
  store i32 %".297", i32* %"R14_NOTYPE"
  br label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05c0:
  %".300" = load i32, i32* %"R13_NOTYPE"
  %".301" = load i32, i32* %"R6_NOTYPE"
  %".302" = load i32, i32* %"R12_NOTYPE"
  %"fmul.5" = fmul i32 %".300", %".301"
  %"fadd.5" = fadd i32 %"fmul.5", %".302"
  store i32 %"fadd.5", i32* %"R12_NOTYPE"
  %".304" = load i1, i1* %"P2_Bool"
  %".305" = icmp ne i1 %".304", 1
  br i1 %".305", label %".L_x_16_split_0x05c0_conditionalExe_0x05d0", label %".L_x_18"
.L_x_16_split_0x05c0_conditionalExe_0x05d0:
  %".307" = load i32, i32* %"R19_NOTYPE"
  %".308" = load i32, i32* %"R14_NOTYPE"
  %".309" = load i32, i32* %"R12_NOTYPE"
  %"fmul.6" = fmul i32 %".307", %".308"
  %"fadd.6" = fadd i32 %"fmul.6", %".309"
  store i32 %"fadd.6", i32* %"R12_NOTYPE"
  br label %".L_x_18"
.L_x_18:
  %".312" = load i32, i32* %"R8_NOTYPE"
  %"add.50" = add i32 %".312", 1
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", i32* %"R8_NOTYPE"
  %".314" = load i32, i32* %"R8_NOTYPE"
  %".315" = load i1, i1* %"PT_Bool"
  %"cmp.11" = icmp sge i32 %".314", %"Arg_7"
  %".316" = and i1 %"cmp.11", %".315"
  store i1 %".316", i1* %"P2_Bool"
  %".318" = load i1, i1* %"P2_Bool"
  %".319" = icmp eq i1 %".318", 1
  br i1 %".319", label %".L_x_19", label %".L_x_18_split_0x0610"
.L_x_18_split_0x0610:
  %".321" = load i1, i1* %"P1_Bool"
  %".322" = icmp eq i1 %".321", 1
  br i1 %".322", label %".L_x_20", label %".L_x_15"
.L_x_15:
  %".324" = load i32, i32* %"UR5_NOTYPE"
  %"add.52" = add i32 %".324", 1
  %"add.53" = add i32 %"add.52", 0
  store i32 %"add.53", i32* %"UR4_NOTYPE"
  %".326" = load i32, i32* %"R0_NOTYPE"
  %".327" = load i32, i32* %"UR4_NOTYPE"
  %".328" = load i32, i32* %"R3_NOTYPE"
  %"mul.25" = mul i32 %".326", %".327"
  %"add.54" = add i32 %"mul.25", %".328"
  store i32 %"add.54", i32* %"R3_NOTYPE"
  store i32 4, i32* %"R0_NOTYPE"
  %".331" = load i32, i32* %"R3_NOTYPE"
  %".332" = load i32, i32* %"UR4_NOTYPE"
  %".333" = load i32, i32* %"R2_NOTYPE"
  %"mul.26" = mul i32 %".331", %".332"
  %"add.55" = add i32 %"mul.26", %".333"
  store i32 %"add.55", i32* %"R3_NOTYPE"
  %".335" = load i32, i32* %"R3_NOTYPE"
  %".336" = load i32, i32* %"R0_NOTYPE"
  %"mul.27" = mul i32 %".335", %".336"
  %"add.56" = add i32 %"mul.27", %"Arg_5"
  store i32 %"add.56", i32* %"R2_NOTYPE"
  %".338" = load i32, i32* %"R12_NOTYPE"
  %".339" = load i32, i32* %"R2_NOTYPE"
  %".340" = add i32 %".339", 0
  %"for_STG" = inttoptr i32 %".340" to i32*
  store i32 %".338", i32* %"for_STG"
  br label %"ExitFunction"
.L_x_21:
  br label %".L_x_21"
ExitFunction:
  ret void
}

