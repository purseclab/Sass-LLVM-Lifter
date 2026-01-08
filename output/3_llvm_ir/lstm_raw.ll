; ModuleID = "PerSecModule"
target triple = "unknown-unknown-unknown"
target datalayout = ""

declare i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()

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
  %".8" = and i32 %".7", %".4"
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
  %".8" = and i32 %".7", %".4"
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
  %".8" = and i32 %".7", %".4"
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

define ptx_kernel void @"_Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii"(ptr %"Arg_0", ptr %"Arg_1", ptr %"Arg_2", ptr %"Arg_3", ptr %"Arg_4", ptr %"Arg_5", ptr %"Arg_6", ptr %"Arg_7", ptr %"Arg_8", i32 %"Arg_9", i32 %"Arg_10", i32 %"Arg_11")
{
Entry_.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii:
  %"R1" = alloca i32, i32 1
  %"RZ" = alloca i32, i32 1
  %"R4" = alloca i32, i32 1
  %"R5" = alloca i32, i32 1
  %"R7" = alloca i32, i32 1
  %"R0" = alloca i32, i32 1
  %"R6" = alloca i32, i32 1
  %"P0" = alloca i1, i32 1
  %"PT" = alloca i1, i32 1
  %"R3" = alloca i32, i32 1
  %"R9" = alloca i32, i32 1
  %"R18" = alloca i32, i32 1
  %"R12" = alloca i32, i32 1
  %"R24" = alloca i32, i32 1
  %"R10" = alloca i32, i32 1
  %"R20" = alloca i32, i32 1
  %"R22" = alloca i32, i32 1
  %"R16" = alloca i32, i32 1
  %"R14" = alloca i32, i32 1
  %"R23" = alloca i32, i32 1
  %"R15" = alloca i32, i32 1
  %"R19" = alloca i32, i32 1
  %"R26" = alloca i32, i32 1
  %"R2" = alloca i32, i32 1
  %"R8" = alloca i32, i32 1
  %"UR7" = alloca i32, i32 1
  %"UR6" = alloca i32, i32 1
  %"URZ" = alloca i32, i32 1
  %"P1" = alloca i1, i32 1
  %"R28" = alloca i32, i32 1
  %"R42" = alloca i32, i32 1
  %"UR5" = alloca i32, i32 1
  %"UR4" = alloca i32, i32 1
  %"R11" = alloca i32, i32 1
  %"R30" = alloca i32, i32 1
  %"R36" = alloca i32, i32 1
  %"R35" = alloca i32, i32 1
  %"R32" = alloca i32, i32 1
  %"R29" = alloca i32, i32 1
  %"R33" = alloca i32, i32 1
  %"R37" = alloca i32, i32 1
  %"R38" = alloca i32, i32 1
  %"R21" = alloca i32, i32 1
  %"R39" = alloca i32, i32 1
  %"R34" = alloca i32, i32 1
  %"R40" = alloca i32, i32 1
  %"R13" = alloca i32, i32 1
  %"R41" = alloca i32, i32 1
  %"R43" = alloca i32, i32 1
  %"R17" = alloca i32, i32 1
  %"R25" = alloca i32, i32 1
  %"R27" = alloca i32, i32 1
  %"R31" = alloca i32, i32 1
  %"UR8" = alloca i32, i32 1
  %"UP0" = alloca i1, i32 1
  %"UPT" = alloca i1, i32 1
  %"UP1" = alloca i1, i32 1
  %"UR9" = alloca i32, i32 1
  %"P2" = alloca i1, i32 1
  %"R44" = alloca i32, i32 1
  %"R45" = alloca i32, i32 1
  %"R46" = alloca i32, i32 1
  %"R47" = alloca i32, i32 1
  %"R48" = alloca i32, i32 1
  %"R49" = alloca i32, i32 1
  %"R50" = alloca i32, i32 1
  %"R51" = alloca i32, i32 1
  %"R52" = alloca i32, i32 1
  %"R53" = alloca i32, i32 1
  %"R54" = alloca i32, i32 1
  %"R55" = alloca i32, i32 1
  %"R56" = alloca i32, i32 1
  %"R57" = alloca i32, i32 1
  %"R58" = alloca i32, i32 1
  %"R59" = alloca i32, i32 1
  %"R60" = alloca i32, i32 1
  %"R61" = alloca i32, i32 1
  %"R62" = alloca i32, i32 1
  %"R63" = alloca i32, i32 1
  %"R64" = alloca i32, i32 1
  %"R65" = alloca i32, i32 1
  %"R66" = alloca i32, i32 1
  %"R67" = alloca i32, i32 1
  %"R68" = alloca i32, i32 1
  %"R69" = alloca i32, i32 1
  %"R70" = alloca i32, i32 1
  %"R71" = alloca i32, i32 1
  %"R72" = alloca i32, i32 1
  %"R73" = alloca i32, i32 1
  %"R74" = alloca i32, i32 1
  %"R75" = alloca i32, i32 1
  %"R76" = alloca i32, i32 1
  %"R77" = alloca i32, i32 1
  %"R78" = alloca i32, i32 1
  %"R79" = alloca i32, i32 1
  %"R80" = alloca i32, i32 1
  %"R81" = alloca i32, i32 1
  %"R82" = alloca i32, i32 1
  %"R83" = alloca i32, i32 1
  %"R84" = alloca i32, i32 1
  %"R85" = alloca i32, i32 1
  %"R86" = alloca i32, i32 1
  %"R87" = alloca i32, i32 1
  %"R88" = alloca i32, i32 1
  %"R89" = alloca i32, i32 1
  %"R90" = alloca i32, i32 1
  %"R91" = alloca i32, i32 1
  %"R92" = alloca i32, i32 1
  %"R93" = alloca i32, i32 1
  %"R94" = alloca i32, i32 1
  %"R95" = alloca i32, i32 1
  %"R96" = alloca i32, i32 1
  %"R97" = alloca i32, i32 1
  %"R98" = alloca i32, i32 1
  %"R99" = alloca i32, i32 1
  %"R100" = alloca i32, i32 1
  %"R101" = alloca i32, i32 1
  %"R102" = alloca i32, i32 1
  %"R103" = alloca i32, i32 1
  %"R104" = alloca i32, i32 1
  %"R105" = alloca i32, i32 1
  %"R106" = alloca i32, i32 1
  %"R107" = alloca i32, i32 1
  %"R108" = alloca i32, i32 1
  %"R109" = alloca i32, i32 1
  %"R110" = alloca i32, i32 1
  %"R111" = alloca i32, i32 1
  %"R112" = alloca i32, i32 1
  %"R113" = alloca i32, i32 1
  %"R114" = alloca i32, i32 1
  %"R115" = alloca i32, i32 1
  %"R116" = alloca i32, i32 1
  %"R117" = alloca i32, i32 1
  %"R118" = alloca i32, i32 1
  %"R119" = alloca i32, i32 1
  %"R120" = alloca i32, i32 1
  %"R121" = alloca i32, i32 1
  %"R122" = alloca i32, i32 1
  %"R123" = alloca i32, i32 1
  %"R124" = alloca i32, i32 1
  %"R125" = alloca i32, i32 1
  %"R126" = alloca i32, i32 1
  %"R127" = alloca i32, i32 1
  %"R128" = alloca i32, i32 1
  %"R129" = alloca i32, i32 1
  %"R130" = alloca i32, i32 1
  %"R131" = alloca i32, i32 1
  %"R132" = alloca i32, i32 1
  %"R133" = alloca i32, i32 1
  %"R134" = alloca i32, i32 1
  %"R135" = alloca i32, i32 1
  %"R136" = alloca i32, i32 1
  %"R137" = alloca i32, i32 1
  %"R138" = alloca i32, i32 1
  %"R139" = alloca i32, i32 1
  %"R140" = alloca i32, i32 1
  %"R141" = alloca i32, i32 1
  %"R142" = alloca i32, i32 1
  %"R143" = alloca i32, i32 1
  %"R144" = alloca i32, i32 1
  %"R145" = alloca i32, i32 1
  %"R146" = alloca i32, i32 1
  %"R147" = alloca i32, i32 1
  %"R148" = alloca i32, i32 1
  %"R149" = alloca i32, i32 1
  %"R150" = alloca i32, i32 1
  %"R151" = alloca i32, i32 1
  %"R152" = alloca i32, i32 1
  %"R153" = alloca i32, i32 1
  %"R154" = alloca i32, i32 1
  %"R155" = alloca i32, i32 1
  %"R156" = alloca i32, i32 1
  %"R157" = alloca i32, i32 1
  %"R158" = alloca i32, i32 1
  %"R159" = alloca i32, i32 1
  %"R160" = alloca i32, i32 1
  %"R161" = alloca i32, i32 1
  %"R162" = alloca i32, i32 1
  %"R163" = alloca i32, i32 1
  %"R164" = alloca i32, i32 1
  %"R165" = alloca i32, i32 1
  %"R166" = alloca i32, i32 1
  %"R167" = alloca i32, i32 1
  %"R168" = alloca i32, i32 1
  %"R169" = alloca i32, i32 1
  %"R170" = alloca i32, i32 1
  %"R171" = alloca i32, i32 1
  %"R172" = alloca i32, i32 1
  %"R173" = alloca i32, i32 1
  %"R174" = alloca i32, i32 1
  %"R175" = alloca i32, i32 1
  %"R176" = alloca i32, i32 1
  %"R177" = alloca i32, i32 1
  %"R178" = alloca i32, i32 1
  %"R179" = alloca i32, i32 1
  %"R180" = alloca i32, i32 1
  %"R181" = alloca i32, i32 1
  %"R182" = alloca i32, i32 1
  %"R183" = alloca i32, i32 1
  %"R184" = alloca i32, i32 1
  %"R185" = alloca i32, i32 1
  %"R186" = alloca i32, i32 1
  %"R187" = alloca i32, i32 1
  %"R188" = alloca i32, i32 1
  %"R189" = alloca i32, i32 1
  %"R190" = alloca i32, i32 1
  %"R191" = alloca i32, i32 1
  %"R192" = alloca i32, i32 1
  %"R193" = alloca i32, i32 1
  %"R194" = alloca i32, i32 1
  %"R195" = alloca i32, i32 1
  %"R196" = alloca i32, i32 1
  %"R197" = alloca i32, i32 1
  %"R198" = alloca i32, i32 1
  %"R199" = alloca i32, i32 1
  %"R200" = alloca i32, i32 1
  %"R201" = alloca i32, i32 1
  %"R202" = alloca i32, i32 1
  %"R203" = alloca i32, i32 1
  %"R204" = alloca i32, i32 1
  %"R205" = alloca i32, i32 1
  %"R206" = alloca i32, i32 1
  %"R207" = alloca i32, i32 1
  %"R208" = alloca i32, i32 1
  %"R209" = alloca i32, i32 1
  %"R210" = alloca i32, i32 1
  %"R211" = alloca i32, i32 1
  %"R212" = alloca i32, i32 1
  %"R213" = alloca i32, i32 1
  %"R214" = alloca i32, i32 1
  %"R215" = alloca i32, i32 1
  %"R216" = alloca i32, i32 1
  %"R217" = alloca i32, i32 1
  %"R218" = alloca i32, i32 1
  %"R219" = alloca i32, i32 1
  %"R220" = alloca i32, i32 1
  %"R221" = alloca i32, i32 1
  %"R222" = alloca i32, i32 1
  %"R223" = alloca i32, i32 1
  %"R224" = alloca i32, i32 1
  %"R225" = alloca i32, i32 1
  %"R226" = alloca i32, i32 1
  %"R227" = alloca i32, i32 1
  %"R228" = alloca i32, i32 1
  %"R229" = alloca i32, i32 1
  %"R230" = alloca i32, i32 1
  %"R231" = alloca i32, i32 1
  %"R232" = alloca i32, i32 1
  %"R233" = alloca i32, i32 1
  %"R234" = alloca i32, i32 1
  %"R235" = alloca i32, i32 1
  %"R236" = alloca i32, i32 1
  %"R237" = alloca i32, i32 1
  %"R238" = alloca i32, i32 1
  %"R239" = alloca i32, i32 1
  %"R240" = alloca i32, i32 1
  %"R241" = alloca i32, i32 1
  %"R242" = alloca i32, i32 1
  %"R243" = alloca i32, i32 1
  %"R244" = alloca i32, i32 1
  %"R245" = alloca i32, i32 1
  %"R246" = alloca i32, i32 1
  %"R247" = alloca i32, i32 1
  %"R248" = alloca i32, i32 1
  %"R249" = alloca i32, i32 1
  %"R250" = alloca i32, i32 1
  %"R251" = alloca i32, i32 1
  %"R252" = alloca i32, i32 1
  %"R253" = alloca i32, i32 1
  %"R254" = alloca i32, i32 1
  %"R255" = alloca i32, i32 1
  %"UR0" = alloca i32, i32 1
  %"UR1" = alloca i32, i32 1
  %"UR2" = alloca i32, i32 1
  %"UR3" = alloca i32, i32 1
  %"UR10" = alloca i32, i32 1
  %"UR11" = alloca i32, i32 1
  %"UR12" = alloca i32, i32 1
  %"UR13" = alloca i32, i32 1
  %"UR14" = alloca i32, i32 1
  %"UR15" = alloca i32, i32 1
  %"UR16" = alloca i32, i32 1
  %"UR17" = alloca i32, i32 1
  %"UR18" = alloca i32, i32 1
  %"UR19" = alloca i32, i32 1
  %"UR20" = alloca i32, i32 1
  %"UR21" = alloca i32, i32 1
  %"UR22" = alloca i32, i32 1
  %"UR23" = alloca i32, i32 1
  %"UR24" = alloca i32, i32 1
  %"UR25" = alloca i32, i32 1
  %"UR26" = alloca i32, i32 1
  %"UR27" = alloca i32, i32 1
  %"UR28" = alloca i32, i32 1
  %"UR29" = alloca i32, i32 1
  %"UR30" = alloca i32, i32 1
  %"UR31" = alloca i32, i32 1
  %"UR32" = alloca i32, i32 1
  %"UR33" = alloca i32, i32 1
  %"UR34" = alloca i32, i32 1
  %"UR35" = alloca i32, i32 1
  %"UR36" = alloca i32, i32 1
  %"UR37" = alloca i32, i32 1
  %"UR38" = alloca i32, i32 1
  %"UR39" = alloca i32, i32 1
  %"UR40" = alloca i32, i32 1
  %"UR41" = alloca i32, i32 1
  %"UR42" = alloca i32, i32 1
  %"UR43" = alloca i32, i32 1
  %"UR44" = alloca i32, i32 1
  %"UR45" = alloca i32, i32 1
  %"UR46" = alloca i32, i32 1
  %"UR47" = alloca i32, i32 1
  %"UR48" = alloca i32, i32 1
  %"UR49" = alloca i32, i32 1
  %"UR50" = alloca i32, i32 1
  %"UR51" = alloca i32, i32 1
  %"UR52" = alloca i32, i32 1
  %"UR53" = alloca i32, i32 1
  %"UR54" = alloca i32, i32 1
  %"UR55" = alloca i32, i32 1
  %"UR56" = alloca i32, i32 1
  %"UR57" = alloca i32, i32 1
  %"UR58" = alloca i32, i32 1
  %"UR59" = alloca i32, i32 1
  %"UR60" = alloca i32, i32 1
  %"UR61" = alloca i32, i32 1
  %"UR62" = alloca i32, i32 1
  %"UR63" = alloca i32, i32 1
  %"UR64" = alloca i32, i32 1
  %"UR65" = alloca i32, i32 1
  %"UR66" = alloca i32, i32 1
  %"UR67" = alloca i32, i32 1
  %"UR68" = alloca i32, i32 1
  %"UR69" = alloca i32, i32 1
  %"UR70" = alloca i32, i32 1
  %"UR71" = alloca i32, i32 1
  %"UR72" = alloca i32, i32 1
  %"UR73" = alloca i32, i32 1
  %"UR74" = alloca i32, i32 1
  %"UR75" = alloca i32, i32 1
  %"UR76" = alloca i32, i32 1
  %"UR77" = alloca i32, i32 1
  %"UR78" = alloca i32, i32 1
  %"UR79" = alloca i32, i32 1
  %"UR80" = alloca i32, i32 1
  %"UR81" = alloca i32, i32 1
  %"UR82" = alloca i32, i32 1
  %"UR83" = alloca i32, i32 1
  %"UR84" = alloca i32, i32 1
  %"UR85" = alloca i32, i32 1
  %"UR86" = alloca i32, i32 1
  %"UR87" = alloca i32, i32 1
  %"UR88" = alloca i32, i32 1
  %"UR89" = alloca i32, i32 1
  %"UR90" = alloca i32, i32 1
  %"UR91" = alloca i32, i32 1
  %"UR92" = alloca i32, i32 1
  %"UR93" = alloca i32, i32 1
  %"UR94" = alloca i32, i32 1
  %"UR95" = alloca i32, i32 1
  %"UR96" = alloca i32, i32 1
  %"UR97" = alloca i32, i32 1
  %"UR98" = alloca i32, i32 1
  %"UR99" = alloca i32, i32 1
  %"UR100" = alloca i32, i32 1
  %"UR101" = alloca i32, i32 1
  %"UR102" = alloca i32, i32 1
  %"UR103" = alloca i32, i32 1
  %"UR104" = alloca i32, i32 1
  %"UR105" = alloca i32, i32 1
  %"UR106" = alloca i32, i32 1
  %"UR107" = alloca i32, i32 1
  %"UR108" = alloca i32, i32 1
  %"UR109" = alloca i32, i32 1
  %"UR110" = alloca i32, i32 1
  %"UR111" = alloca i32, i32 1
  %"UR112" = alloca i32, i32 1
  %"UR113" = alloca i32, i32 1
  %"UR114" = alloca i32, i32 1
  %"UR115" = alloca i32, i32 1
  %"UR116" = alloca i32, i32 1
  %"UR117" = alloca i32, i32 1
  %"UR118" = alloca i32, i32 1
  %"UR119" = alloca i32, i32 1
  %"UR120" = alloca i32, i32 1
  %"UR121" = alloca i32, i32 1
  %"UR122" = alloca i32, i32 1
  %"UR123" = alloca i32, i32 1
  %"UR124" = alloca i32, i32 1
  %"UR125" = alloca i32, i32 1
  %"UR126" = alloca i32, i32 1
  %"UR127" = alloca i32, i32 1
  store i1 1, ptr %"PT"
  store i1 1, ptr %"UPT"
  store i32 0, ptr %"RZ"
  store i32 0, ptr %"URZ"
  ; IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28]
  %"imad_mul" = mul i32 0, 0
  %"imad_add" = add i32 %"imad_mul", 0
  store i32 %"imad_add", ptr %"R1"
  ; S2R R4, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R4"
  ; S2R R5, SR_TID.X
  %"nvvm_threadidx_x" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"nvvm_threadidx_x", ptr %"R5"
  ; S2R R7, SR_CTAID.Y
  %"nvvm_ctaid_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()
  store i32 %"nvvm_ctaid_y", ptr %"R7"
  ; S2R R0, SR_TID.Y
  %"nvvm_threadidx_y" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.y"()
  store i32 %"nvvm_threadidx_y", ptr %"R0"
  ; IMAD R6, R4, c[0x0][0x0], R5
  %".30" = load i32, ptr %"R4"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".31" = load i32, ptr %"R5"
  %"imad_mul.1" = mul i32 %".30", %"nvvm_blockdim_x"
  %"imad_add.1" = add i32 %"imad_mul.1", %".31"
  store i32 %"imad_add.1", ptr %"R6"
  ; ISETP.GE.AND P0, PT, R6, c[0x0][0x1b0], PT
  %".34" = load i32, ptr %"R6"
  %".35" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".34", %"Arg_11"
  %".36" = xor i1 %"cmp", -1
  %".37" = and i1 %"cmp", %".35"
  %".38" = and i1 %".36", %".35"
  store i1 %".37", ptr %"P0"
  ; IMAD R7, R7, c[0x0][0x4], R0
  %".41" = load i32, ptr %"R7"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".42" = load i32, ptr %"R0"
  %"imad_mul.2" = mul i32 %".41", %"nvvm_blockdim_y"
  %"imad_add.2" = add i32 %"imad_mul.2", %".42"
  store i32 %"imad_add.2", ptr %"R7"
  ; ISETP.GE.OR P0, PT, R7, c[0x0][0x1a8], P0
  %".45" = load i32, ptr %"R7"
  %".46" = load i1, ptr %"P0"
  %"cmp.1" = icmp sge i32 %".45", %"Arg_9"
  %".47" = xor i1 %"cmp.1", -1
  %".48" = or i1 %"cmp.1", %".46"
  %".49" = or i1 %".47", %".46"
  store i1 %".48", ptr %"P0"
  ; @P0 EXIT
  %".52" = load i1, ptr %"P0"
  %".53" = icmp eq i1 %".52", 1
  br i1 %".53", label %".text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_conditionalExpr_0x0090", label %".text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0"
.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_conditionalExpr_0x0090:
  ; EXIT
  br label %"ExitFunction"
.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0:
  ; IMAD.MOV.U32 R3, RZ, RZ, c[0x0][0x1b0]
  %"imad_mul.3" = mul i32 0, 0
  %"imad_add.3" = add i32 %"imad_mul.3", %"Arg_11"
  store i32 %"imad_add.3", ptr %"R3"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9"
  ; LEA R18, R3, R6, 0x1
  %".62" = load i32, ptr %"R3"
  %".63" = load i32, ptr %"R6"
  %"shl" = shl i32 %".62", 1
  %"add" = add i32 %"shl", %".63"
  store i32 %"add", ptr %"R18"
  ; IMAD.WIDE R12, R6, R9, c[0x0][0x190]
  %".66" = load i32, ptr %"R6"
  %".67" = load i32, ptr %"R9"
  %"imad_ext1" = zext i32 %".66" to i64
  %"imad_ext2" = zext i32 %".67" to i64
  %"imad_mul.4" = mul i64 %"imad_ext1", %"imad_ext2"
  %".68" = ptrtoint ptr %"Arg_6" to i64
  %"imad_add.4" = add i64 %"imad_mul.4", %".68"
  %".69" = and i64 %"imad_add.4", 18446744069414584320
  %".70" = lshr i64 %".69", 32
  %"trunc32" = trunc i64 %".70" to i32
  %"trunc32.1" = trunc i64 %"imad_add.4" to i32
  store i32 %"trunc32.1", ptr %"R12"
  store i32 %"trunc32", ptr %"R13"
  ; IADD3 R24, R18, c[0x0][0x1b0], RZ
  %".74" = load i32, ptr %"R18"
  %".75" = add i32 %".74", %"Arg_11"
  %".76" = add i32 %".75", 0
  store i32 %".76", ptr %"R24"
  ; IMAD.WIDE R10, R6, R9, c[0x0][0x188]
  %".79" = load i32, ptr %"R6"
  %".80" = load i32, ptr %"R9"
  %"imad_ext1.1" = zext i32 %".79" to i64
  %"imad_ext2.1" = zext i32 %".80" to i64
  %"imad_mul.5" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".81" = ptrtoint ptr %"Arg_5" to i64
  %"imad_add.5" = add i64 %"imad_mul.5", %".81"
  %".82" = and i64 %"imad_add.5", 18446744069414584320
  %".83" = lshr i64 %".82", 32
  %"trunc32.2" = trunc i64 %".83" to i32
  %"trunc32.3" = trunc i64 %"imad_add.5" to i32
  store i32 %"trunc32.3", ptr %"R10"
  store i32 %"trunc32.2", ptr %"R11"
  ; IMAD.WIDE R20, R18, R9.reuse, c[0x0][0x190]
  %".87" = load i32, ptr %"R18"
  %".88" = load i32, ptr %"R9"
  %"imad_ext1.2" = zext i32 %".87" to i64
  %"imad_ext2.2" = zext i32 %".88" to i64
  %"imad_mul.6" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %".89" = ptrtoint ptr %"Arg_6" to i64
  %"imad_add.6" = add i64 %"imad_mul.6", %".89"
  %".90" = and i64 %"imad_add.6", 18446744069414584320
  %".91" = lshr i64 %".90", 32
  %"trunc32.4" = trunc i64 %".91" to i32
  %"trunc32.5" = trunc i64 %"imad_add.6" to i32
  store i32 %"trunc32.5", ptr %"R20"
  store i32 %"trunc32.4", ptr %"R21"
  ; LDG.E.CONSTANT.SYS R3, [R12]
  %".95" = load i32, ptr %"R12"
  %"zext" = zext i32 %".95" to i64
  %".96" = load i32, ptr %"R13"
  %"zext.1" = zext i32 %".96" to i64
  %"shl.1" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl.1", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".97" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".98" = bitcast ptr %"R3" to ptr
  store float %".97", ptr %".98"
  ; IMAD.WIDE R22, R24, R9, c[0x0][0x188]
  %".101" = load i32, ptr %"R24"
  %".102" = load i32, ptr %"R9"
  %"imad_ext1.3" = zext i32 %".101" to i64
  %"imad_ext2.3" = zext i32 %".102" to i64
  %"imad_mul.7" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %".103" = ptrtoint ptr %"Arg_5" to i64
  %"imad_add.7" = add i64 %"imad_mul.7", %".103"
  %".104" = and i64 %"imad_add.7", 18446744069414584320
  %".105" = lshr i64 %".104", 32
  %"trunc32.6" = trunc i64 %".105" to i32
  %"trunc32.7" = trunc i64 %"imad_add.7" to i32
  store i32 %"trunc32.7", ptr %"R22"
  store i32 %"trunc32.6", ptr %"R23"
  ; IMAD.WIDE R16, R9.reuse, c[0x0][0x1b0], R12
  %".109" = load i32, ptr %"R9"
  %".110" = load i32, ptr %"R12"
  %"imad_ext1.4" = zext i32 %".109" to i64
  %"imad_ext2.4" = zext i32 %"Arg_11" to i64
  %"imad_mul.8" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %"imad_ext3" = zext i32 %".110" to i64
  %"imad_add.8" = add i64 %"imad_mul.8", %"imad_ext3"
  %".111" = and i64 %"imad_add.8", 18446744069414584320
  %".112" = lshr i64 %".111", 32
  %"trunc32.8" = trunc i64 %".112" to i32
  %"trunc32.9" = trunc i64 %"imad_add.8" to i32
  store i32 %"trunc32.9", ptr %"R16"
  store i32 %"trunc32.8", ptr %"R17"
  ; LDG.E.CONSTANT.SYS R20, [R20]
  %".116" = load i32, ptr %"R20"
  %"zext.2" = zext i32 %".116" to i64
  %".117" = load i32, ptr %"R21"
  %"zext.3" = zext i32 %".117" to i64
  %"shl.2" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.2", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".118" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".119" = bitcast ptr %"R20" to ptr
  store float %".118", ptr %".119"
  ; IMAD.WIDE R14, R9, c[0x0][0x1b0], R10
  %".122" = load i32, ptr %"R9"
  %".123" = load i32, ptr %"R10"
  %"imad_ext1.5" = zext i32 %".122" to i64
  %"imad_ext2.5" = zext i32 %"Arg_11" to i64
  %"imad_mul.9" = mul i64 %"imad_ext1.5", %"imad_ext2.5"
  %"imad_ext3.1" = zext i32 %".123" to i64
  %"imad_add.9" = add i64 %"imad_mul.9", %"imad_ext3.1"
  %".124" = and i64 %"imad_add.9", 18446744069414584320
  %".125" = lshr i64 %".124", 32
  %"trunc32.10" = trunc i64 %".125" to i32
  %"trunc32.11" = trunc i64 %"imad_add.9" to i32
  store i32 %"trunc32.11", ptr %"R14"
  store i32 %"trunc32.10", ptr %"R15"
  ; LDG.E.CONSTANT.SYS R23, [R22]
  %".129" = load i32, ptr %"R22"
  %"zext.4" = zext i32 %".129" to i64
  %".130" = load i32, ptr %"R23"
  %"zext.5" = zext i32 %".130" to i64
  %"shl.3" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.3", %"zext.4"
  %"inttoptr_bytes.2" = inttoptr i64 %"or.2" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".131" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".132" = bitcast ptr %"R23" to ptr
  store float %".131", ptr %".132"
  ; IMAD.WIDE R18, R18, R9.reuse, c[0x0][0x188]
  %".135" = load i32, ptr %"R18"
  %".136" = load i32, ptr %"R9"
  %"imad_ext1.6" = zext i32 %".135" to i64
  %"imad_ext2.6" = zext i32 %".136" to i64
  %"imad_mul.10" = mul i64 %"imad_ext1.6", %"imad_ext2.6"
  %".137" = ptrtoint ptr %"Arg_5" to i64
  %"imad_add.10" = add i64 %"imad_mul.10", %".137"
  %".138" = and i64 %"imad_add.10", 18446744069414584320
  %".139" = lshr i64 %".138", 32
  %"trunc32.12" = trunc i64 %".139" to i32
  %"trunc32.13" = trunc i64 %"imad_add.10" to i32
  store i32 %"trunc32.13", ptr %"R18"
  store i32 %"trunc32.12", ptr %"R19"
  ; LDG.E.CONSTANT.SYS R10, [R10]
  %".143" = load i32, ptr %"R10"
  %"zext.6" = zext i32 %".143" to i64
  %".144" = load i32, ptr %"R11"
  %"zext.7" = zext i32 %".144" to i64
  %"shl.4" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.4", %"zext.6"
  %"inttoptr_bytes.3" = inttoptr i64 %"or.3" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".145" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".146" = bitcast ptr %"R10" to ptr
  store float %".145", ptr %".146"
  ; IMAD.WIDE R24, R24, R9, c[0x0][0x190]
  %".149" = load i32, ptr %"R24"
  %".150" = load i32, ptr %"R9"
  %"imad_ext1.7" = zext i32 %".149" to i64
  %"imad_ext2.7" = zext i32 %".150" to i64
  %"imad_mul.11" = mul i64 %"imad_ext1.7", %"imad_ext2.7"
  %".151" = ptrtoint ptr %"Arg_6" to i64
  %"imad_add.11" = add i64 %"imad_mul.11", %".151"
  %".152" = and i64 %"imad_add.11", 18446744069414584320
  %".153" = lshr i64 %".152", 32
  %"trunc32.14" = trunc i64 %".153" to i32
  %"trunc32.15" = trunc i64 %"imad_add.11" to i32
  store i32 %"trunc32.15", ptr %"R24"
  store i32 %"trunc32.14", ptr %"R25"
  ; LDG.E.CONSTANT.SYS R16, [R16]
  %".157" = load i32, ptr %"R16"
  %"zext.8" = zext i32 %".157" to i64
  %".158" = load i32, ptr %"R17"
  %"zext.9" = zext i32 %".158" to i64
  %"shl.5" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.5", %"zext.8"
  %"inttoptr_bytes.4" = inttoptr i64 %"or.4" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".159" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".160" = bitcast ptr %"R16" to ptr
  store float %".159", ptr %".160"
  ; LDG.E.CONSTANT.SYS R15, [R14]
  %".163" = load i32, ptr %"R14"
  %"zext.10" = zext i32 %".163" to i64
  %".164" = load i32, ptr %"R15"
  %"zext.11" = zext i32 %".164" to i64
  %"shl.6" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.6", %"zext.10"
  %"inttoptr_bytes.5" = inttoptr i64 %"or.5" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".165" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".166" = bitcast ptr %"R15" to ptr
  store float %".165", ptr %".166"
  ; LDG.E.CONSTANT.SYS R19, [R18]
  %".169" = load i32, ptr %"R18"
  %"zext.12" = zext i32 %".169" to i64
  %".170" = load i32, ptr %"R19"
  %"zext.13" = zext i32 %".170" to i64
  %"shl.7" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.7", %"zext.12"
  %"inttoptr_bytes.6" = inttoptr i64 %"or.6" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".171" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".172" = bitcast ptr %"R19" to ptr
  store float %".171", ptr %".172"
  ; LDG.E.CONSTANT.SYS R24, [R24]
  %".175" = load i32, ptr %"R24"
  %"zext.14" = zext i32 %".175" to i64
  %".176" = load i32, ptr %"R25"
  %"zext.15" = zext i32 %".176" to i64
  %"shl.8" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.8", %"zext.14"
  %"inttoptr_bytes.7" = inttoptr i64 %"or.7" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".177" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".178" = bitcast ptr %"R24" to ptr
  store float %".177", ptr %".178"
  ; IMAD.MOV.U32 R26, RZ, RZ, c[0x0][0x1ac]
  %"imad_mul.12" = mul i32 0, 0
  %"imad_add.12" = add i32 %"imad_mul.12", %"Arg_10"
  store i32 %"imad_add.12", ptr %"R26"
  ; ISETP.GE.AND P0, PT, R26, 0x1, PT
  %".183" = load i32, ptr %"R26"
  %".184" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".183", 1
  %".185" = xor i1 %"cmp.2", -1
  %".186" = and i1 %"cmp.2", %".184"
  %".187" = and i1 %".185", %".184"
  store i1 %".186", ptr %"P0"
  ; FADD R3, R3, R10
  %".190" = load float, ptr %"R3"
  %".191" = load float, ptr %"R10"
  %"fadd" = fadd float %".190", %".191"
  %".192" = bitcast ptr %"R3" to ptr
  store float %"fadd", ptr %".192"
  ; FADD R2, R16, R15
  %".195" = load float, ptr %"R16"
  %".196" = load float, ptr %"R15"
  %"fadd.1" = fadd float %".195", %".196"
  %".197" = bitcast ptr %"R2" to ptr
  store float %"fadd.1", ptr %".197"
  ; FADD R0, R20, R19
  %".200" = load float, ptr %"R20"
  %".201" = load float, ptr %"R19"
  %"fadd.2" = fadd float %".200", %".201"
  %".202" = bitcast ptr %"R0" to ptr
  store float %"fadd.2", ptr %".202"
  ; FADD R8, R24, R23
  %".205" = load float, ptr %"R24"
  %".206" = load float, ptr %"R23"
  %"fadd.3" = fadd float %".205", %".206"
  %".207" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".207"
  ; @!P0 BRA `(.L_x_0)
  %".210" = load i1, ptr %"P0"
  %".211" = icmp ne i1 %".210", 1
  br i1 %".211", label %".L_x_0", label %".text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250"
.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250:
  ; IADD3 R10, R26.reuse, -0x1, RZ
  %".214" = load i32, ptr %"R26"
  %".215" = add i32 %".214", -1
  %".216" = add i32 %".215", 0
  store i32 %".216", ptr %"R10"
  ; ULDC UR7, c[0x0][0x1b0]
  store i32 %"Arg_11", ptr %"UR7"
  ; LOP3.LUT P0, RZ, R26, 0x3, RZ, 0xc0, !PT
  %".221" = load i32, ptr %"R26"
  %".222" = xor i1 1, -1
  %".223" = and i32 %".221", 3
  store i32 %".223", ptr %"RZ"
  %".225" = icmp ne i32 %".223", 0
  store i1 %".225", ptr %"P0"
  ; USHF.R.S32.HI UR6, URZ, 0x1f, UR7
  %".228" = icmp ult i32 31, 32
  %"SHF_min" = select  i1 %".228", i32 31, i32 32
  %".229" = load i32, ptr %"UR7"
  %"zext.16" = zext i32 %".229" to i64
  %"zext.17" = zext i32 0 to i64
  %"zext.18" = zext i32 31 to i64
  %"shl.9" = shl i64 %"zext.16", 32
  %"or.8" = or i64 %"shl.9", %"zext.17"
  %"ashr" = ashr i64 %"or.8", %"zext.18"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.16" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.16", ptr %"UR6"
  ; ISETP.GE.U32.AND P1, PT, R10, 0x3, PT
  %".232" = load i32, ptr %"R10"
  %".233" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".232", 3
  %".234" = xor i1 %"cmp.3", -1
  %".235" = and i1 %"cmp.3", %".233"
  %".236" = and i1 %".234", %".233"
  store i1 %".235", ptr %"P1"
  ; LOP3.LUT R20, R26, 0x3, RZ, 0xc0, !PT
  %".239" = load i32, ptr %"R26"
  %".240" = xor i1 1, -1
  %".241" = and i32 %".239", 3
  store i32 %".241", ptr %"R20"
  ; MOV R28, RZ
  %".244" = load i32, ptr %"RZ"
  store i32 %".244", ptr %"R28"
  ; @!P1 BRA `(.L_x_1)
  %".247" = load i1, ptr %"P1"
  %".248" = icmp ne i1 %".247", 1
  br i1 %".248", label %".L_x_1", label %".text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0"
.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0:
  ; IADD3 R42, -R20, c[0x0][0x1ac], RZ
  %".251" = load i32, ptr %"R20"
  %".252" = sub i32 0, %".251"
  %".253" = add i32 %".252", %"Arg_10"
  %".254" = add i32 %".253", 0
  store i32 %".254", ptr %"R42"
  ; IMAD.MOV.U32 R28, RZ, RZ, RZ
  %"imad_mul.13" = mul i32 0, 0
  %"imad_add.13" = add i32 %"imad_mul.13", 0
  store i32 %"imad_add.13", ptr %"R28"
  ; USHF.L.U64.HI UR5, UR7, 0x2, UR6
  %".259" = icmp ult i32 2, 64
  %"SHF_min.1" = select  i1 %".259", i32 2, i32 64
  %".260" = load i32, ptr %"UR6"
  %".261" = load i32, ptr %"UR7"
  %"zext.19" = zext i32 %".260" to i64
  %"zext.20" = zext i32 %".261" to i64
  %"zext.21" = zext i32 2 to i64
  %"shl.10" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.10", %"zext.20"
  %"shl.11" = shl i64 %"or.9", %"zext.21"
  %"lshr" = lshr i64 %"shl.11", 32
  %"trunc32.17" = trunc i64 %"lshr" to i32
  store i32 %"trunc32.17", ptr %"UR5"
  ; USHF.L.U32 UR4, UR7, 0x2, URZ
  %".264" = icmp ult i32 2, 32
  %"SHF_min.2" = select  i1 %".264", i32 2, i32 32
  %".265" = load i32, ptr %"UR7"
  %"zext.22" = zext i32 0 to i64
  %"zext.23" = zext i32 %".265" to i64
  %"zext.24" = zext i32 2 to i64
  %"shl.12" = shl i64 %"zext.22", 32
  %"or.10" = or i64 %"shl.12", %"zext.23"
  %"shl.13" = shl i64 %"or.10", %"zext.24"
  %"and" = and i64 %"shl.13", 4294967295
  %"trunc32.18" = trunc i64 %"and" to i32
  store i32 %"trunc32.18", ptr %"UR4"
  br label %".L_x_2"
.L_x_2:
  ; SHF.L.U32 R11, R28, 0x2, RZ
  %".269" = icmp ult i32 2, 32
  %"SHF_min.3" = select  i1 %".269", i32 2, i32 32
  %".270" = load i32, ptr %"R28"
  %"zext.25" = zext i32 0 to i64
  %"zext.26" = zext i32 %".270" to i64
  %"zext.27" = zext i32 2 to i64
  %"shl.14" = shl i64 %"zext.25", 32
  %"or.11" = or i64 %"shl.14", %"zext.26"
  %"shl.15" = shl i64 %"or.11", %"zext.27"
  %"and.1" = and i64 %"shl.15", 4294967295
  %"trunc32.19" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.19", ptr %"R11"
  ; IMAD R30, R7, c[0x0][0x1ac], R28
  %".273" = load i32, ptr %"R7"
  %".274" = load i32, ptr %"R28"
  %"imad_mul.14" = mul i32 %".273", %"Arg_10"
  %"imad_add.14" = add i32 %"imad_mul.14", %".274"
  store i32 %"imad_add.14", ptr %"R30"
  ; IMAD R36, R11, c[0x0][0x1b0], R6
  %".277" = load i32, ptr %"R11"
  %".278" = load i32, ptr %"R6"
  %"imad_mul.15" = mul i32 %".277", %"Arg_11"
  %"imad_add.15" = add i32 %"imad_mul.15", %".278"
  store i32 %"imad_add.15", ptr %"R36"
  ; IMAD.WIDE R30, R30, R9, c[0x0][0x160]
  %".281" = load i32, ptr %"R30"
  %".282" = load i32, ptr %"R9"
  %"imad_ext1.8" = zext i32 %".281" to i64
  %"imad_ext2.8" = zext i32 %".282" to i64
  %"imad_mul.16" = mul i64 %"imad_ext1.8", %"imad_ext2.8"
  %".283" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.16" = add i64 %"imad_mul.16", %".283"
  %".284" = and i64 %"imad_add.16", 18446744069414584320
  %".285" = lshr i64 %".284", 32
  %"trunc32.20" = trunc i64 %".285" to i32
  %"trunc32.21" = trunc i64 %"imad_add.16" to i32
  store i32 %"trunc32.21", ptr %"R30"
  store i32 %"trunc32.20", ptr %"R31"
  ; IMAD.WIDE R36, R36, R9, c[0x0][0x178]
  %".289" = load i32, ptr %"R36"
  %".290" = load i32, ptr %"R9"
  %"imad_ext1.9" = zext i32 %".289" to i64
  %"imad_ext2.9" = zext i32 %".290" to i64
  %"imad_mul.17" = mul i64 %"imad_ext1.9", %"imad_ext2.9"
  %".291" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.17" = add i64 %"imad_mul.17", %".291"
  %".292" = and i64 %"imad_add.17", 18446744069414584320
  %".293" = lshr i64 %".292", 32
  %"trunc32.22" = trunc i64 %".293" to i32
  %"trunc32.23" = trunc i64 %"imad_add.17" to i32
  store i32 %"trunc32.23", ptr %"R36"
  store i32 %"trunc32.22", ptr %"R37"
  ; LDG.E.CONSTANT.SYS R35, [R30]
  %".297" = load i32, ptr %"R30"
  %"zext.28" = zext i32 %".297" to i64
  %".298" = load i32, ptr %"R31"
  %"zext.29" = zext i32 %".298" to i64
  %"shl.16" = shl i64 %"zext.29", 32
  %"or.12" = or i64 %"shl.16", %"zext.28"
  %"inttoptr_bytes.8" = inttoptr i64 %"or.12" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".299" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".300" = bitcast ptr %"R35" to ptr
  store float %".299", ptr %".300"
  ; IADD3 R32, P1, R36, UR4, RZ
  %".303" = load i32, ptr %"R36"
  %".304" = load i32, ptr %"UR4"
  %".305" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".303", i32 %".304")
  %".306" = extractvalue {i32, i1} %".305", 0
  %".307" = extractvalue {i32, i1} %".305", 1
  %".308" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".306", i32 0)
  %".309" = extractvalue {i32, i1} %".308", 0
  %".310" = extractvalue {i32, i1} %".308", 1
  %".311" = or i1 %".307", %".310"
  store i32 %".309", ptr %"R32"
  store i1 %".311", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R29, [R30+0x4]
  %".315" = load i32, ptr %"R30"
  %"zext.30" = zext i32 %".315" to i64
  %".316" = load i32, ptr %"R31"
  %"zext.31" = zext i32 %".316" to i64
  %"shl.17" = shl i64 %"zext.31", 32
  %"or.13" = or i64 %"shl.17", %"zext.30"
  %"ptr_plus_imm" = add i64 %"or.13", 4
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".317" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".318" = bitcast ptr %"R29" to ptr
  store float %".317", ptr %".318"
  ; IADD3.X R33, R37, UR5, RZ, P1, !PT
  %".321" = load i32, ptr %"R37"
  %".322" = load i32, ptr %"UR5"
  %".323" = load i1, ptr %"P1"
  %".324" = xor i1 1, -1
  %".325" = zext i1 %".323" to i32
  %".326" = zext i1 %".324" to i32
  %"add.1" = add i32 %".321", %".322"
  %"add.2" = add i32 %"add.1", 0
  %"add.3" = add i32 %"add.2", %".325"
  %"add.4" = add i32 %"add.3", %".326"
  store i32 %"add.4", ptr %"R33"
  ; IADD3 R38, P1, R32, UR4, RZ
  %".329" = load i32, ptr %"R32"
  %".330" = load i32, ptr %"UR4"
  %".331" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".329", i32 %".330")
  %".332" = extractvalue {i32, i1} %".331", 0
  %".333" = extractvalue {i32, i1} %".331", 1
  %".334" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".332", i32 0)
  %".335" = extractvalue {i32, i1} %".334", 0
  %".336" = extractvalue {i32, i1} %".334", 1
  %".337" = or i1 %".333", %".336"
  store i32 %".335", ptr %"R38"
  store i1 %".337", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R21, [R30+0x8]
  %".341" = load i32, ptr %"R30"
  %"zext.32" = zext i32 %".341" to i64
  %".342" = load i32, ptr %"R31"
  %"zext.33" = zext i32 %".342" to i64
  %"shl.18" = shl i64 %"zext.33", 32
  %"or.14" = or i64 %"shl.18", %"zext.32"
  %"ptr_plus_imm.1" = add i64 %"or.14", 8
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".343" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".344" = bitcast ptr %"R21" to ptr
  store float %".343", ptr %".344"
  ; IADD3.X R39, R33, UR5, RZ, P1, !PT
  %".347" = load i32, ptr %"R33"
  %".348" = load i32, ptr %"UR5"
  %".349" = load i1, ptr %"P1"
  %".350" = xor i1 1, -1
  %".351" = zext i1 %".349" to i32
  %".352" = zext i1 %".350" to i32
  %"add.5" = add i32 %".347", %".348"
  %"add.6" = add i32 %"add.5", 0
  %"add.7" = add i32 %"add.6", %".351"
  %"add.8" = add i32 %"add.7", %".352"
  store i32 %"add.8", ptr %"R39"
  ; LDG.E.CONSTANT.SYS R34, [R30+0xc]
  %".355" = load i32, ptr %"R30"
  %"zext.34" = zext i32 %".355" to i64
  %".356" = load i32, ptr %"R31"
  %"zext.35" = zext i32 %".356" to i64
  %"shl.19" = shl i64 %"zext.35", 32
  %"or.15" = or i64 %"shl.19", %"zext.34"
  %"ptr_plus_imm.2" = add i64 %"or.15", 12
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".357" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".358" = bitcast ptr %"R34" to ptr
  store float %".357", ptr %".358"
  ; IADD3 R22, P1, R38, UR4, RZ
  %".361" = load i32, ptr %"R38"
  %".362" = load i32, ptr %"UR4"
  %".363" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".361", i32 %".362")
  %".364" = extractvalue {i32, i1} %".363", 0
  %".365" = extractvalue {i32, i1} %".363", 1
  %".366" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".364", i32 0)
  %".367" = extractvalue {i32, i1} %".366", 0
  %".368" = extractvalue {i32, i1} %".366", 1
  %".369" = or i1 %".365", %".368"
  store i32 %".367", ptr %"R22"
  store i1 %".369", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R40, [R32]
  %".373" = load i32, ptr %"R32"
  %"zext.36" = zext i32 %".373" to i64
  %".374" = load i32, ptr %"R33"
  %"zext.37" = zext i32 %".374" to i64
  %"shl.20" = shl i64 %"zext.37", 32
  %"or.16" = or i64 %"shl.20", %"zext.36"
  %"inttoptr_bytes.12" = inttoptr i64 %"or.16" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".375" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".376" = bitcast ptr %"R40" to ptr
  store float %".375", ptr %".376"
  ; IADD3.X R23, R39, UR5, RZ, P1, !PT
  %".379" = load i32, ptr %"R39"
  %".380" = load i32, ptr %"UR5"
  %".381" = load i1, ptr %"P1"
  %".382" = xor i1 1, -1
  %".383" = zext i1 %".381" to i32
  %".384" = zext i1 %".382" to i32
  %"add.9" = add i32 %".379", %".380"
  %"add.10" = add i32 %"add.9", 0
  %"add.11" = add i32 %"add.10", %".383"
  %"add.12" = add i32 %"add.11", %".384"
  store i32 %"add.12", ptr %"R23"
  ; IADD3 R12, P1, R22, UR4, RZ
  %".387" = load i32, ptr %"R22"
  %".388" = load i32, ptr %"UR4"
  %".389" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".387", i32 %".388")
  %".390" = extractvalue {i32, i1} %".389", 0
  %".391" = extractvalue {i32, i1} %".389", 1
  %".392" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".390", i32 0)
  %".393" = extractvalue {i32, i1} %".392", 0
  %".394" = extractvalue {i32, i1} %".392", 1
  %".395" = or i1 %".391", %".394"
  store i32 %".393", ptr %"R12"
  store i1 %".395", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R36, [R36]
  %".399" = load i32, ptr %"R36"
  %"zext.38" = zext i32 %".399" to i64
  %".400" = load i32, ptr %"R37"
  %"zext.39" = zext i32 %".400" to i64
  %"shl.21" = shl i64 %"zext.39", 32
  %"or.17" = or i64 %"shl.21", %"zext.38"
  %"inttoptr_bytes.13" = inttoptr i64 %"or.17" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".401" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".402" = bitcast ptr %"R36" to ptr
  store float %".401", ptr %".402"
  ; IADD3.X R13, R23, UR5, RZ, P1, !PT
  %".405" = load i32, ptr %"R23"
  %".406" = load i32, ptr %"UR5"
  %".407" = load i1, ptr %"P1"
  %".408" = xor i1 1, -1
  %".409" = zext i1 %".407" to i32
  %".410" = zext i1 %".408" to i32
  %"add.13" = add i32 %".405", %".406"
  %"add.14" = add i32 %"add.13", 0
  %"add.15" = add i32 %"add.14", %".409"
  %"add.16" = add i32 %"add.15", %".410"
  store i32 %"add.16", ptr %"R13"
  ; LDG.E.CONSTANT.SYS R38, [R38]
  %".413" = load i32, ptr %"R38"
  %"zext.40" = zext i32 %".413" to i64
  %".414" = load i32, ptr %"R39"
  %"zext.41" = zext i32 %".414" to i64
  %"shl.22" = shl i64 %"zext.41", 32
  %"or.18" = or i64 %"shl.22", %"zext.40"
  %"inttoptr_bytes.14" = inttoptr i64 %"or.18" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".415" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".416" = bitcast ptr %"R38" to ptr
  store float %".415", ptr %".416"
  ; IADD3 R18, P1, R12, UR4, RZ
  %".419" = load i32, ptr %"R12"
  %".420" = load i32, ptr %"UR4"
  %".421" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".419", i32 %".420")
  %".422" = extractvalue {i32, i1} %".421", 0
  %".423" = extractvalue {i32, i1} %".421", 1
  %".424" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".422", i32 0)
  %".425" = extractvalue {i32, i1} %".424", 0
  %".426" = extractvalue {i32, i1} %".424", 1
  %".427" = or i1 %".423", %".426"
  store i32 %".425", ptr %"R18"
  store i1 %".427", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R41, [R22]
  %".431" = load i32, ptr %"R22"
  %"zext.42" = zext i32 %".431" to i64
  %".432" = load i32, ptr %"R23"
  %"zext.43" = zext i32 %".432" to i64
  %"shl.23" = shl i64 %"zext.43", 32
  %"or.19" = or i64 %"shl.23", %"zext.42"
  %"inttoptr_bytes.15" = inttoptr i64 %"or.19" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".433" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".434" = bitcast ptr %"R41" to ptr
  store float %".433", ptr %".434"
  ; IADD3.X R19, R13, UR5, RZ, P1, !PT
  %".437" = load i32, ptr %"R13"
  %".438" = load i32, ptr %"UR5"
  %".439" = load i1, ptr %"P1"
  %".440" = xor i1 1, -1
  %".441" = zext i1 %".439" to i32
  %".442" = zext i1 %".440" to i32
  %"add.17" = add i32 %".437", %".438"
  %"add.18" = add i32 %"add.17", 0
  %"add.19" = add i32 %"add.18", %".441"
  %"add.20" = add i32 %"add.19", %".442"
  store i32 %"add.20", ptr %"R19"
  ; IADD3 R14, P1, R18, UR4, RZ
  %".445" = load i32, ptr %"R18"
  %".446" = load i32, ptr %"UR4"
  %".447" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".445", i32 %".446")
  %".448" = extractvalue {i32, i1} %".447", 0
  %".449" = extractvalue {i32, i1} %".447", 1
  %".450" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".448", i32 0)
  %".451" = extractvalue {i32, i1} %".450", 0
  %".452" = extractvalue {i32, i1} %".450", 1
  %".453" = or i1 %".449", %".452"
  store i32 %".451", ptr %"R14"
  store i1 %".453", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R43, [R12]
  %".457" = load i32, ptr %"R12"
  %"zext.44" = zext i32 %".457" to i64
  %".458" = load i32, ptr %"R13"
  %"zext.45" = zext i32 %".458" to i64
  %"shl.24" = shl i64 %"zext.45", 32
  %"or.20" = or i64 %"shl.24", %"zext.44"
  %"inttoptr_bytes.16" = inttoptr i64 %"or.20" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".459" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".460" = bitcast ptr %"R43" to ptr
  store float %".459", ptr %".460"
  ; IADD3.X R15, R19, UR5, RZ, P1, !PT
  %".463" = load i32, ptr %"R19"
  %".464" = load i32, ptr %"UR5"
  %".465" = load i1, ptr %"P1"
  %".466" = xor i1 1, -1
  %".467" = zext i1 %".465" to i32
  %".468" = zext i1 %".466" to i32
  %"add.21" = add i32 %".463", %".464"
  %"add.22" = add i32 %"add.21", 0
  %"add.23" = add i32 %"add.22", %".467"
  %"add.24" = add i32 %"add.23", %".468"
  store i32 %"add.24", ptr %"R15"
  ; IADD3 R10, P1, R14, UR4, RZ
  %".471" = load i32, ptr %"R14"
  %".472" = load i32, ptr %"UR4"
  %".473" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".471", i32 %".472")
  %".474" = extractvalue {i32, i1} %".473", 0
  %".475" = extractvalue {i32, i1} %".473", 1
  %".476" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".474", i32 0)
  %".477" = extractvalue {i32, i1} %".476", 0
  %".478" = extractvalue {i32, i1} %".476", 1
  %".479" = or i1 %".475", %".478"
  store i32 %".477", ptr %"R10"
  store i1 %".479", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R18, [R18]
  %".483" = load i32, ptr %"R18"
  %"zext.46" = zext i32 %".483" to i64
  %".484" = load i32, ptr %"R19"
  %"zext.47" = zext i32 %".484" to i64
  %"shl.25" = shl i64 %"zext.47", 32
  %"or.21" = or i64 %"shl.25", %"zext.46"
  %"inttoptr_bytes.17" = inttoptr i64 %"or.21" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".485" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".486" = bitcast ptr %"R18" to ptr
  store float %".485", ptr %".486"
  ; IADD3.X R11, R15, UR5, RZ, P1, !PT
  %".489" = load i32, ptr %"R15"
  %".490" = load i32, ptr %"UR5"
  %".491" = load i1, ptr %"P1"
  %".492" = xor i1 1, -1
  %".493" = zext i1 %".491" to i32
  %".494" = zext i1 %".492" to i32
  %"add.25" = add i32 %".489", %".490"
  %"add.26" = add i32 %"add.25", 0
  %"add.27" = add i32 %"add.26", %".493"
  %"add.28" = add i32 %"add.27", %".494"
  store i32 %"add.28", ptr %"R11"
  ; IADD3 R16, P1, R10, UR4, RZ
  %".497" = load i32, ptr %"R10"
  %".498" = load i32, ptr %"UR4"
  %".499" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".497", i32 %".498")
  %".500" = extractvalue {i32, i1} %".499", 0
  %".501" = extractvalue {i32, i1} %".499", 1
  %".502" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".500", i32 0)
  %".503" = extractvalue {i32, i1} %".502", 0
  %".504" = extractvalue {i32, i1} %".502", 1
  %".505" = or i1 %".501", %".504"
  store i32 %".503", ptr %"R16"
  store i1 %".505", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R14, [R14]
  %".509" = load i32, ptr %"R14"
  %"zext.48" = zext i32 %".509" to i64
  %".510" = load i32, ptr %"R15"
  %"zext.49" = zext i32 %".510" to i64
  %"shl.26" = shl i64 %"zext.49", 32
  %"or.22" = or i64 %"shl.26", %"zext.48"
  %"inttoptr_bytes.18" = inttoptr i64 %"or.22" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".511" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".512" = bitcast ptr %"R14" to ptr
  store float %".511", ptr %".512"
  ; IADD3.X R17, R11, UR5, RZ, P1, !PT
  %".515" = load i32, ptr %"R11"
  %".516" = load i32, ptr %"UR5"
  %".517" = load i1, ptr %"P1"
  %".518" = xor i1 1, -1
  %".519" = zext i1 %".517" to i32
  %".520" = zext i1 %".518" to i32
  %"add.29" = add i32 %".515", %".516"
  %"add.30" = add i32 %"add.29", 0
  %"add.31" = add i32 %"add.30", %".519"
  %"add.32" = add i32 %"add.31", %".520"
  store i32 %"add.32", ptr %"R17"
  ; IADD3 R24, P1, R16, UR4, RZ
  %".523" = load i32, ptr %"R16"
  %".524" = load i32, ptr %"UR4"
  %".525" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".523", i32 %".524")
  %".526" = extractvalue {i32, i1} %".525", 0
  %".527" = extractvalue {i32, i1} %".525", 1
  %".528" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".526", i32 0)
  %".529" = extractvalue {i32, i1} %".528", 0
  %".530" = extractvalue {i32, i1} %".528", 1
  %".531" = or i1 %".527", %".530"
  store i32 %".529", ptr %"R24"
  store i1 %".531", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R10, [R10]
  %".535" = load i32, ptr %"R10"
  %"zext.50" = zext i32 %".535" to i64
  %".536" = load i32, ptr %"R11"
  %"zext.51" = zext i32 %".536" to i64
  %"shl.27" = shl i64 %"zext.51", 32
  %"or.23" = or i64 %"shl.27", %"zext.50"
  %"inttoptr_bytes.19" = inttoptr i64 %"or.23" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".537" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".538" = bitcast ptr %"R10" to ptr
  store float %".537", ptr %".538"
  ; IADD3.X R25, R17, UR5, RZ, P1, !PT
  %".541" = load i32, ptr %"R17"
  %".542" = load i32, ptr %"UR5"
  %".543" = load i1, ptr %"P1"
  %".544" = xor i1 1, -1
  %".545" = zext i1 %".543" to i32
  %".546" = zext i1 %".544" to i32
  %"add.33" = add i32 %".541", %".542"
  %"add.34" = add i32 %"add.33", 0
  %"add.35" = add i32 %"add.34", %".545"
  %"add.36" = add i32 %"add.35", %".546"
  store i32 %"add.36", ptr %"R25"
  ; IADD3 R26, P1, R24, UR4, RZ
  %".549" = load i32, ptr %"R24"
  %".550" = load i32, ptr %"UR4"
  %".551" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".549", i32 %".550")
  %".552" = extractvalue {i32, i1} %".551", 0
  %".553" = extractvalue {i32, i1} %".551", 1
  %".554" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".552", i32 0)
  %".555" = extractvalue {i32, i1} %".554", 0
  %".556" = extractvalue {i32, i1} %".554", 1
  %".557" = or i1 %".553", %".556"
  store i32 %".555", ptr %"R26"
  store i1 %".557", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R16, [R16]
  %".561" = load i32, ptr %"R16"
  %"zext.52" = zext i32 %".561" to i64
  %".562" = load i32, ptr %"R17"
  %"zext.53" = zext i32 %".562" to i64
  %"shl.28" = shl i64 %"zext.53", 32
  %"or.24" = or i64 %"shl.28", %"zext.52"
  %"inttoptr_bytes.20" = inttoptr i64 %"or.24" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".563" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".564" = bitcast ptr %"R16" to ptr
  store float %".563", ptr %".564"
  ; IADD3.X R27, R25, UR5, RZ, P1, !PT
  %".567" = load i32, ptr %"R25"
  %".568" = load i32, ptr %"UR5"
  %".569" = load i1, ptr %"P1"
  %".570" = xor i1 1, -1
  %".571" = zext i1 %".569" to i32
  %".572" = zext i1 %".570" to i32
  %"add.37" = add i32 %".567", %".568"
  %"add.38" = add i32 %"add.37", 0
  %"add.39" = add i32 %"add.38", %".571"
  %"add.40" = add i32 %"add.39", %".572"
  store i32 %"add.40", ptr %"R27"
  ; IADD3 R30, P1, R26, UR4, RZ
  %".575" = load i32, ptr %"R26"
  %".576" = load i32, ptr %"UR4"
  %".577" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".575", i32 %".576")
  %".578" = extractvalue {i32, i1} %".577", 0
  %".579" = extractvalue {i32, i1} %".577", 1
  %".580" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".578", i32 0)
  %".581" = extractvalue {i32, i1} %".580", 0
  %".582" = extractvalue {i32, i1} %".580", 1
  %".583" = or i1 %".579", %".582"
  store i32 %".581", ptr %"R30"
  store i1 %".583", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R24, [R24]
  %".587" = load i32, ptr %"R24"
  %"zext.54" = zext i32 %".587" to i64
  %".588" = load i32, ptr %"R25"
  %"zext.55" = zext i32 %".588" to i64
  %"shl.29" = shl i64 %"zext.55", 32
  %"or.25" = or i64 %"shl.29", %"zext.54"
  %"inttoptr_bytes.21" = inttoptr i64 %"or.25" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".589" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".590" = bitcast ptr %"R24" to ptr
  store float %".589", ptr %".590"
  ; IADD3.X R31, R27, UR5, RZ, P1, !PT
  %".593" = load i32, ptr %"R27"
  %".594" = load i32, ptr %"UR5"
  %".595" = load i1, ptr %"P1"
  %".596" = xor i1 1, -1
  %".597" = zext i1 %".595" to i32
  %".598" = zext i1 %".596" to i32
  %"add.41" = add i32 %".593", %".594"
  %"add.42" = add i32 %"add.41", 0
  %"add.43" = add i32 %"add.42", %".597"
  %"add.44" = add i32 %"add.43", %".598"
  store i32 %"add.44", ptr %"R31"
  ; IADD3 R32, P1, R30, UR4, RZ
  %".601" = load i32, ptr %"R30"
  %".602" = load i32, ptr %"UR4"
  %".603" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".601", i32 %".602")
  %".604" = extractvalue {i32, i1} %".603", 0
  %".605" = extractvalue {i32, i1} %".603", 1
  %".606" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".604", i32 0)
  %".607" = extractvalue {i32, i1} %".606", 0
  %".608" = extractvalue {i32, i1} %".606", 1
  %".609" = or i1 %".605", %".608"
  store i32 %".607", ptr %"R32"
  store i1 %".609", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R26, [R26]
  %".613" = load i32, ptr %"R26"
  %"zext.56" = zext i32 %".613" to i64
  %".614" = load i32, ptr %"R27"
  %"zext.57" = zext i32 %".614" to i64
  %"shl.30" = shl i64 %"zext.57", 32
  %"or.26" = or i64 %"shl.30", %"zext.56"
  %"inttoptr_bytes.22" = inttoptr i64 %"or.26" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".615" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".616" = bitcast ptr %"R26" to ptr
  store float %".615", ptr %".616"
  ; IADD3.X R33, R31, UR5, RZ, P1, !PT
  %".619" = load i32, ptr %"R31"
  %".620" = load i32, ptr %"UR5"
  %".621" = load i1, ptr %"P1"
  %".622" = xor i1 1, -1
  %".623" = zext i1 %".621" to i32
  %".624" = zext i1 %".622" to i32
  %"add.45" = add i32 %".619", %".620"
  %"add.46" = add i32 %"add.45", 0
  %"add.47" = add i32 %"add.46", %".623"
  %"add.48" = add i32 %"add.47", %".624"
  store i32 %"add.48", ptr %"R33"
  ; IADD3 R22, P1, R32, UR4, RZ
  %".627" = load i32, ptr %"R32"
  %".628" = load i32, ptr %"UR4"
  %".629" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".627", i32 %".628")
  %".630" = extractvalue {i32, i1} %".629", 0
  %".631" = extractvalue {i32, i1} %".629", 1
  %".632" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".630", i32 0)
  %".633" = extractvalue {i32, i1} %".632", 0
  %".634" = extractvalue {i32, i1} %".632", 1
  %".635" = or i1 %".631", %".634"
  store i32 %".633", ptr %"R22"
  store i1 %".635", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R30, [R30]
  %".639" = load i32, ptr %"R30"
  %"zext.58" = zext i32 %".639" to i64
  %".640" = load i32, ptr %"R31"
  %"zext.59" = zext i32 %".640" to i64
  %"shl.31" = shl i64 %"zext.59", 32
  %"or.27" = or i64 %"shl.31", %"zext.58"
  %"inttoptr_bytes.23" = inttoptr i64 %"or.27" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".641" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".642" = bitcast ptr %"R30" to ptr
  store float %".641", ptr %".642"
  ; IADD3.X R23, R33, UR5, RZ, P1, !PT
  %".645" = load i32, ptr %"R33"
  %".646" = load i32, ptr %"UR5"
  %".647" = load i1, ptr %"P1"
  %".648" = xor i1 1, -1
  %".649" = zext i1 %".647" to i32
  %".650" = zext i1 %".648" to i32
  %"add.49" = add i32 %".645", %".646"
  %"add.50" = add i32 %"add.49", 0
  %"add.51" = add i32 %"add.50", %".649"
  %"add.52" = add i32 %"add.51", %".650"
  store i32 %"add.52", ptr %"R23"
  ; IADD3 R12, P1, R22, UR4, RZ
  %".653" = load i32, ptr %"R22"
  %".654" = load i32, ptr %"UR4"
  %".655" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".653", i32 %".654")
  %".656" = extractvalue {i32, i1} %".655", 0
  %".657" = extractvalue {i32, i1} %".655", 1
  %".658" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".656", i32 0)
  %".659" = extractvalue {i32, i1} %".658", 0
  %".660" = extractvalue {i32, i1} %".658", 1
  %".661" = or i1 %".657", %".660"
  store i32 %".659", ptr %"R12"
  store i1 %".661", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R32, [R32]
  %".665" = load i32, ptr %"R32"
  %"zext.60" = zext i32 %".665" to i64
  %".666" = load i32, ptr %"R33"
  %"zext.61" = zext i32 %".666" to i64
  %"shl.32" = shl i64 %"zext.61", 32
  %"or.28" = or i64 %"shl.32", %"zext.60"
  %"inttoptr_bytes.24" = inttoptr i64 %"or.28" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".667" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".668" = bitcast ptr %"R32" to ptr
  store float %".667", ptr %".668"
  ; IADD3.X R13, R23, UR5, RZ, P1, !PT
  %".671" = load i32, ptr %"R23"
  %".672" = load i32, ptr %"UR5"
  %".673" = load i1, ptr %"P1"
  %".674" = xor i1 1, -1
  %".675" = zext i1 %".673" to i32
  %".676" = zext i1 %".674" to i32
  %"add.53" = add i32 %".671", %".672"
  %"add.54" = add i32 %"add.53", 0
  %"add.55" = add i32 %"add.54", %".675"
  %"add.56" = add i32 %"add.55", %".676"
  store i32 %"add.56", ptr %"R13"
  ; LDG.E.CONSTANT.SYS R22, [R22]
  %".679" = load i32, ptr %"R22"
  %"zext.62" = zext i32 %".679" to i64
  %".680" = load i32, ptr %"R23"
  %"zext.63" = zext i32 %".680" to i64
  %"shl.33" = shl i64 %"zext.63", 32
  %"or.29" = or i64 %"shl.33", %"zext.62"
  %"inttoptr_bytes.25" = inttoptr i64 %"or.29" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".681" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".682" = bitcast ptr %"R22" to ptr
  store float %".681", ptr %".682"
  ; LDG.E.CONSTANT.SYS R15, [R12]
  %".685" = load i32, ptr %"R12"
  %"zext.64" = zext i32 %".685" to i64
  %".686" = load i32, ptr %"R13"
  %"zext.65" = zext i32 %".686" to i64
  %"shl.34" = shl i64 %"zext.65", 32
  %"or.30" = or i64 %"shl.34", %"zext.64"
  %"inttoptr_bytes.26" = inttoptr i64 %"or.30" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".687" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".688" = bitcast ptr %"R15" to ptr
  store float %".687", ptr %".688"
  ; LDG.E.CONSTANT.SYS R17, [R12.64+UR4]
  %".691" = load i32, ptr %"R12"
  %"zext.66" = zext i32 %".691" to i64
  %".692" = load i32, ptr %"R13"
  %"zext.67" = zext i32 %".692" to i64
  %"shl.35" = shl i64 %"zext.67", 32
  %"or.31" = or i64 %"shl.35", %"zext.66"
  %"val_UR4" = load i32, ptr %"UR4"
  %"sext_UR4" = sext i32 %"val_UR4" to i64
  %"base_plus_reg_offset" = add i64 %"or.31", %"sext_UR4"
  %"inttoptr_bytes.27" = inttoptr i64 %"base_plus_reg_offset" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".693" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".694" = bitcast ptr %"R17" to ptr
  store float %".693", ptr %".694"
  ; IADD3 R42, R42, -0x4, RZ
  %".697" = load i32, ptr %"R42"
  %".698" = add i32 %".697", -4
  %".699" = add i32 %".698", 0
  store i32 %".699", ptr %"R42"
  ; ISETP.NE.AND P1, PT, R42, RZ, PT
  %".702" = load i32, ptr %"R42"
  %".703" = load i1, ptr %"PT"
  %"cmp.4" = icmp ne i32 %".702", 0
  %".704" = xor i1 %"cmp.4", -1
  %".705" = and i1 %"cmp.4", %".703"
  %".706" = and i1 %".704", %".703"
  store i1 %".705", ptr %"P1"
  ; IADD3 R28, R28, 0x4, RZ
  %".709" = load i32, ptr %"R28"
  %".710" = add i32 %".709", 4
  %".711" = add i32 %".710", 0
  store i32 %".711", ptr %"R28"
  ; FFMA R40, R35.reuse, R40, R2
  %".714" = load float, ptr %"R35"
  %".715" = load float, ptr %"R40"
  %".716" = load float, ptr %"R2"
  %"fmul" = fmul float %".714", %".715"
  %"fadd.4" = fadd float %"fmul", %".716"
  %".717" = bitcast ptr %"R40" to ptr
  store float %"fadd.4", ptr %".717"
  ; FFMA R36, R36, R35, R3
  %".720" = load float, ptr %"R36"
  %".721" = load float, ptr %"R35"
  %".722" = load float, ptr %"R3"
  %"fmul.1" = fmul float %".720", %".721"
  %"fadd.5" = fadd float %"fmul.1", %".722"
  %".723" = bitcast ptr %"R36" to ptr
  store float %"fadd.5", ptr %".723"
  ; FFMA R38, R35.reuse, R38, R0
  %".726" = load float, ptr %"R35"
  %".727" = load float, ptr %"R38"
  %".728" = load float, ptr %"R0"
  %"fmul.2" = fmul float %".726", %".727"
  %"fadd.6" = fadd float %"fmul.2", %".728"
  %".729" = bitcast ptr %"R38" to ptr
  store float %"fadd.6", ptr %".729"
  ; FFMA R8, R35, R41, R8
  %".732" = load float, ptr %"R35"
  %".733" = load float, ptr %"R41"
  %".734" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".732", %".733"
  %"fadd.7" = fadd float %"fmul.3", %".734"
  %".735" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".735"
  ; FFMA R36, R43, R29, R36
  %".738" = load float, ptr %"R43"
  %".739" = load float, ptr %"R29"
  %".740" = load float, ptr %"R36"
  %"fmul.4" = fmul float %".738", %".739"
  %"fadd.8" = fadd float %"fmul.4", %".740"
  %".741" = bitcast ptr %"R36" to ptr
  store float %"fadd.8", ptr %".741"
  ; FFMA R18, R29.reuse, R18, R40
  %".744" = load float, ptr %"R29"
  %".745" = load float, ptr %"R18"
  %".746" = load float, ptr %"R40"
  %"fmul.5" = fmul float %".744", %".745"
  %"fadd.9" = fadd float %"fmul.5", %".746"
  %".747" = bitcast ptr %"R18" to ptr
  store float %"fadd.9", ptr %".747"
  ; FFMA R14, R29.reuse, R14, R38
  %".750" = load float, ptr %"R29"
  %".751" = load float, ptr %"R14"
  %".752" = load float, ptr %"R38"
  %"fmul.6" = fmul float %".750", %".751"
  %"fadd.10" = fadd float %"fmul.6", %".752"
  %".753" = bitcast ptr %"R14" to ptr
  store float %"fadd.10", ptr %".753"
  ; FFMA R8, R29, R10, R8
  %".756" = load float, ptr %"R29"
  %".757" = load float, ptr %"R10"
  %".758" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".756", %".757"
  %"fadd.11" = fadd float %"fmul.7", %".758"
  %".759" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".759"
  ; FFMA R3, R16, R21, R36
  %".762" = load float, ptr %"R16"
  %".763" = load float, ptr %"R21"
  %".764" = load float, ptr %"R36"
  %"fmul.8" = fmul float %".762", %".763"
  %"fadd.12" = fadd float %"fmul.8", %".764"
  %".765" = bitcast ptr %"R3" to ptr
  store float %"fadd.12", ptr %".765"
  ; FFMA R11, R21.reuse, R24, R18
  %".768" = load float, ptr %"R21"
  %".769" = load float, ptr %"R24"
  %".770" = load float, ptr %"R18"
  %"fmul.9" = fmul float %".768", %".769"
  %"fadd.13" = fadd float %"fmul.9", %".770"
  %".771" = bitcast ptr %"R11" to ptr
  store float %"fadd.13", ptr %".771"
  ; FFMA R13, R21, R26, R14
  %".774" = load float, ptr %"R21"
  %".775" = load float, ptr %"R26"
  %".776" = load float, ptr %"R14"
  %"fmul.10" = fmul float %".774", %".775"
  %"fadd.14" = fadd float %"fmul.10", %".776"
  %".777" = bitcast ptr %"R13" to ptr
  store float %"fadd.14", ptr %".777"
  ; FFMA R21, R21, R30, R8
  %".780" = load float, ptr %"R21"
  %".781" = load float, ptr %"R30"
  %".782" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".780", %".781"
  %"fadd.15" = fadd float %"fmul.11", %".782"
  %".783" = bitcast ptr %"R21" to ptr
  store float %"fadd.15", ptr %".783"
  ; FFMA R3, R32, R34, R3
  %".786" = load float, ptr %"R32"
  %".787" = load float, ptr %"R34"
  %".788" = load float, ptr %"R3"
  %"fmul.12" = fmul float %".786", %".787"
  %"fadd.16" = fadd float %"fmul.12", %".788"
  %".789" = bitcast ptr %"R3" to ptr
  store float %"fadd.16", ptr %".789"
  ; FFMA R2, R34.reuse, R22, R11
  %".792" = load float, ptr %"R34"
  %".793" = load float, ptr %"R22"
  %".794" = load float, ptr %"R11"
  %"fmul.13" = fmul float %".792", %".793"
  %"fadd.17" = fadd float %"fmul.13", %".794"
  %".795" = bitcast ptr %"R2" to ptr
  store float %"fadd.17", ptr %".795"
  ; FFMA R0, R34.reuse, R15, R13
  %".798" = load float, ptr %"R34"
  %".799" = load float, ptr %"R15"
  %".800" = load float, ptr %"R13"
  %"fmul.14" = fmul float %".798", %".799"
  %"fadd.18" = fadd float %"fmul.14", %".800"
  %".801" = bitcast ptr %"R0" to ptr
  store float %"fadd.18", ptr %".801"
  ; FFMA R8, R34, R17, R21
  %".804" = load float, ptr %"R34"
  %".805" = load float, ptr %"R17"
  %".806" = load float, ptr %"R21"
  %"fmul.15" = fmul float %".804", %".805"
  %"fadd.19" = fadd float %"fmul.15", %".806"
  %".807" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".807"
  ; @P1 BRA `(.L_x_2)
  %".810" = load i1, ptr %"P1"
  %".811" = icmp eq i1 %".810", 1
  br i1 %".811", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; @!P0 BRA `(.L_x_0)
  %".814" = load i1, ptr %"P0"
  %".815" = icmp ne i1 %".814", 1
  br i1 %".815", label %".L_x_0", label %".L_x_1_split_0x07b0"
.L_x_1_split_0x07b0:
  ; IMAD R10, R7, c[0x0][0x1ac], R28
  %".818" = load i32, ptr %"R7"
  %".819" = load i32, ptr %"R28"
  %"imad_mul.18" = mul i32 %".818", %"Arg_10"
  %"imad_add.18" = add i32 %"imad_mul.18", %".819"
  store i32 %"imad_add.18", ptr %"R10"
  ; IADD3 R20, -R20, RZ, RZ
  %".822" = load i32, ptr %"R20"
  %".823" = sub i32 0, %".822"
  %".824" = add i32 %".823", 0
  %".825" = add i32 %".824", 0
  store i32 %".825", ptr %"R20"
  ; IMAD R28, R28, c[0x0][0x1b0], RZ
  %".828" = load i32, ptr %"R28"
  %"imad_mul.19" = mul i32 %".828", %"Arg_11"
  %"imad_add.19" = add i32 %"imad_mul.19", 0
  store i32 %"imad_add.19", ptr %"R28"
  ; USHF.L.U64.HI UR5, UR7, 0x2, UR6
  %".831" = icmp ult i32 2, 64
  %"SHF_min.4" = select  i1 %".831", i32 2, i32 64
  %".832" = load i32, ptr %"UR6"
  %".833" = load i32, ptr %"UR7"
  %"zext.68" = zext i32 %".832" to i64
  %"zext.69" = zext i32 %".833" to i64
  %"zext.70" = zext i32 2 to i64
  %"shl.36" = shl i64 %"zext.68", 32
  %"or.32" = or i64 %"shl.36", %"zext.69"
  %"shl.37" = shl i64 %"or.32", %"zext.70"
  %"lshr.1" = lshr i64 %"shl.37", 32
  %"trunc32.24" = trunc i64 %"lshr.1" to i32
  store i32 %"trunc32.24", ptr %"UR5"
  ; IMAD.WIDE R10, R10, R9, c[0x0][0x160]
  %".836" = load i32, ptr %"R10"
  %".837" = load i32, ptr %"R9"
  %"imad_ext1.10" = zext i32 %".836" to i64
  %"imad_ext2.10" = zext i32 %".837" to i64
  %"imad_mul.20" = mul i64 %"imad_ext1.10", %"imad_ext2.10"
  %".838" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.20" = add i64 %"imad_mul.20", %".838"
  %".839" = and i64 %"imad_add.20", 18446744069414584320
  %".840" = lshr i64 %".839", 32
  %"trunc32.25" = trunc i64 %".840" to i32
  %"trunc32.26" = trunc i64 %"imad_add.20" to i32
  store i32 %"trunc32.26", ptr %"R10"
  store i32 %"trunc32.25", ptr %"R11"
  ; USHF.L.U32 UR4, UR7, 0x2, URZ
  %".844" = icmp ult i32 2, 32
  %"SHF_min.5" = select  i1 %".844", i32 2, i32 32
  %".845" = load i32, ptr %"UR7"
  %"zext.71" = zext i32 0 to i64
  %"zext.72" = zext i32 %".845" to i64
  %"zext.73" = zext i32 2 to i64
  %"shl.38" = shl i64 %"zext.71", 32
  %"or.33" = or i64 %"shl.38", %"zext.72"
  %"shl.39" = shl i64 %"or.33", %"zext.73"
  %"and.2" = and i64 %"shl.39", 4294967295
  %"trunc32.27" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.27", ptr %"UR4"
  ; IMAD R13, R28, 0x4, R5
  %".848" = load i32, ptr %"R28"
  %".849" = load i32, ptr %"R5"
  %"imad_mul.21" = mul i32 %".848", 4
  %"imad_add.21" = add i32 %"imad_mul.21", %".849"
  store i32 %"imad_add.21", ptr %"R13"
  ; MOV R12, R10
  %".852" = load i32, ptr %"R10"
  store i32 %".852", ptr %"R12"
  ; IMAD.MOV.U32 R23, RZ, RZ, R11
  %".855" = load i32, ptr %"R11"
  %"imad_mul.22" = mul i32 0, 0
  %"imad_add.22" = add i32 %"imad_mul.22", %".855"
  store i32 %"imad_add.22", ptr %"R23"
  ; IMAD R18, R4, c[0x0][0x0], R13
  %".858" = load i32, ptr %"R4"
  %"nvvm_blockdim_x.1" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".859" = load i32, ptr %"R13"
  %"imad_mul.23" = mul i32 %".858", %"nvvm_blockdim_x.1"
  %"imad_add.23" = add i32 %"imad_mul.23", %".859"
  store i32 %"imad_add.23", ptr %"R18"
  br label %".L_x_3"
.L_x_3:
  ; IMAD.WIDE R10, R18, R9, c[0x0][0x178]
  %".863" = load i32, ptr %"R18"
  %".864" = load i32, ptr %"R9"
  %"imad_ext1.11" = zext i32 %".863" to i64
  %"imad_ext2.11" = zext i32 %".864" to i64
  %"imad_mul.24" = mul i64 %"imad_ext1.11", %"imad_ext2.11"
  %".865" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.24" = add i64 %"imad_mul.24", %".865"
  %".866" = and i64 %"imad_add.24", 18446744069414584320
  %".867" = lshr i64 %".866", 32
  %"trunc32.28" = trunc i64 %".867" to i32
  %"trunc32.29" = trunc i64 %"imad_add.24" to i32
  store i32 %"trunc32.29", ptr %"R10"
  store i32 %"trunc32.28", ptr %"R11"
  ; IMAD.MOV.U32 R13, RZ, RZ, R23
  %".871" = load i32, ptr %"R23"
  %"imad_mul.25" = mul i32 0, 0
  %"imad_add.25" = add i32 %"imad_mul.25", %".871"
  store i32 %"imad_add.25", ptr %"R13"
  ; IADD3 R14, P0, R10, UR4, RZ
  %".874" = load i32, ptr %"R10"
  %".875" = load i32, ptr %"UR4"
  %".876" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".874", i32 %".875")
  %".877" = extractvalue {i32, i1} %".876", 0
  %".878" = extractvalue {i32, i1} %".876", 1
  %".879" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".877", i32 0)
  %".880" = extractvalue {i32, i1} %".879", 0
  %".881" = extractvalue {i32, i1} %".879", 1
  %".882" = or i1 %".878", %".881"
  store i32 %".880", ptr %"R14"
  store i1 %".882", ptr %"P0"
  ; LDG.E.CONSTANT.SYS R10, [R10]
  %".886" = load i32, ptr %"R10"
  %"zext.74" = zext i32 %".886" to i64
  %".887" = load i32, ptr %"R11"
  %"zext.75" = zext i32 %".887" to i64
  %"shl.40" = shl i64 %"zext.75", 32
  %"or.34" = or i64 %"shl.40", %"zext.74"
  %"inttoptr_bytes.28" = inttoptr i64 %"or.34" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".888" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".889" = bitcast ptr %"R10" to ptr
  store float %".888", ptr %".889"
  ; IADD3.X R15, R11, UR5, RZ, P0, !PT
  %".892" = load i32, ptr %"R11"
  %".893" = load i32, ptr %"UR5"
  %".894" = load i1, ptr %"P0"
  %".895" = xor i1 1, -1
  %".896" = zext i1 %".894" to i32
  %".897" = zext i1 %".895" to i32
  %"add.57" = add i32 %".892", %".893"
  %"add.58" = add i32 %"add.57", 0
  %"add.59" = add i32 %"add.58", %".896"
  %"add.60" = add i32 %"add.59", %".897"
  store i32 %"add.60", ptr %"R15"
  ; IADD3 R16, P0, R14, UR4, RZ
  %".900" = load i32, ptr %"R14"
  %".901" = load i32, ptr %"UR4"
  %".902" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".900", i32 %".901")
  %".903" = extractvalue {i32, i1} %".902", 0
  %".904" = extractvalue {i32, i1} %".902", 1
  %".905" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".903", i32 0)
  %".906" = extractvalue {i32, i1} %".905", 0
  %".907" = extractvalue {i32, i1} %".905", 1
  %".908" = or i1 %".904", %".907"
  store i32 %".906", ptr %"R16"
  store i1 %".908", ptr %"P0"
  ; LDG.E.CONSTANT.SYS R13, [R12]
  %".912" = load i32, ptr %"R12"
  %"zext.76" = zext i32 %".912" to i64
  %".913" = load i32, ptr %"R13"
  %"zext.77" = zext i32 %".913" to i64
  %"shl.41" = shl i64 %"zext.77", 32
  %"or.35" = or i64 %"shl.41", %"zext.76"
  %"inttoptr_bytes.29" = inttoptr i64 %"or.35" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".914" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".915" = bitcast ptr %"R13" to ptr
  store float %".914", ptr %".915"
  ; IADD3.X R17, R15, UR5, RZ, P0, !PT
  %".918" = load i32, ptr %"R15"
  %".919" = load i32, ptr %"UR5"
  %".920" = load i1, ptr %"P0"
  %".921" = xor i1 1, -1
  %".922" = zext i1 %".920" to i32
  %".923" = zext i1 %".921" to i32
  %"add.61" = add i32 %".918", %".919"
  %"add.62" = add i32 %"add.61", 0
  %"add.63" = add i32 %"add.62", %".922"
  %"add.64" = add i32 %"add.63", %".923"
  store i32 %"add.64", ptr %"R17"
  ; LDG.E.CONSTANT.SYS R14, [R14]
  %".926" = load i32, ptr %"R14"
  %"zext.78" = zext i32 %".926" to i64
  %".927" = load i32, ptr %"R15"
  %"zext.79" = zext i32 %".927" to i64
  %"shl.42" = shl i64 %"zext.79", 32
  %"or.36" = or i64 %"shl.42", %"zext.78"
  %"inttoptr_bytes.30" = inttoptr i64 %"or.36" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".928" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".929" = bitcast ptr %"R14" to ptr
  store float %".928", ptr %".929"
  ; LDG.E.CONSTANT.SYS R19, [R16]
  %".932" = load i32, ptr %"R16"
  %"zext.80" = zext i32 %".932" to i64
  %".933" = load i32, ptr %"R17"
  %"zext.81" = zext i32 %".933" to i64
  %"shl.43" = shl i64 %"zext.81", 32
  %"or.37" = or i64 %"shl.43", %"zext.80"
  %"inttoptr_bytes.31" = inttoptr i64 %"or.37" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".934" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".935" = bitcast ptr %"R19" to ptr
  store float %".934", ptr %".935"
  ; LDG.E.CONSTANT.SYS R21, [R16.64+UR4]
  %".938" = load i32, ptr %"R16"
  %"zext.82" = zext i32 %".938" to i64
  %".939" = load i32, ptr %"R17"
  %"zext.83" = zext i32 %".939" to i64
  %"shl.44" = shl i64 %"zext.83", 32
  %"or.38" = or i64 %"shl.44", %"zext.82"
  %"val_UR4.1" = load i32, ptr %"UR4"
  %"sext_UR4.1" = sext i32 %"val_UR4.1" to i64
  %"base_plus_reg_offset.1" = add i64 %"or.38", %"sext_UR4.1"
  %"inttoptr_bytes.32" = inttoptr i64 %"base_plus_reg_offset.1" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".940" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".941" = bitcast ptr %"R21" to ptr
  store float %".940", ptr %".941"
  ; IADD3 R20, R20, 0x1, RZ
  %".944" = load i32, ptr %"R20"
  %".945" = add i32 %".944", 1
  %".946" = add i32 %".945", 0
  store i32 %".946", ptr %"R20"
  ; ISETP.NE.AND P0, PT, R20, RZ, PT
  %".949" = load i32, ptr %"R20"
  %".950" = load i1, ptr %"PT"
  %"cmp.5" = icmp ne i32 %".949", 0
  %".951" = xor i1 %"cmp.5", -1
  %".952" = and i1 %"cmp.5", %".950"
  %".953" = and i1 %".951", %".950"
  store i1 %".952", ptr %"P0"
  ; MOV R25, c[0x0][0x1b0]
  store i32 %"Arg_11", ptr %"R25"
  ; IADD3 R12, P1, R12, 0x4, RZ
  %".958" = load i32, ptr %"R12"
  %".959" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".958", i32 4)
  %".960" = extractvalue {i32, i1} %".959", 0
  %".961" = extractvalue {i32, i1} %".959", 1
  %".962" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".960", i32 0)
  %".963" = extractvalue {i32, i1} %".962", 0
  %".964" = extractvalue {i32, i1} %".962", 1
  %".965" = or i1 %".961", %".964"
  store i32 %".963", ptr %"R12"
  store i1 %".965", ptr %"P1"
  ; IMAD R18, R25, 0x4, R18
  %".969" = load i32, ptr %"R25"
  %".970" = load i32, ptr %"R18"
  %"imad_mul.26" = mul i32 %".969", 4
  %"imad_add.26" = add i32 %"imad_mul.26", %".970"
  store i32 %"imad_add.26", ptr %"R18"
  ; IADD3.X R23, RZ, R23, RZ, P1, !PT
  %".973" = load i32, ptr %"R23"
  %".974" = load i1, ptr %"P1"
  %".975" = xor i1 1, -1
  %".976" = zext i1 %".974" to i32
  %".977" = zext i1 %".975" to i32
  %"add.65" = add i32 0, %".973"
  %"add.66" = add i32 %"add.65", 0
  %"add.67" = add i32 %"add.66", %".976"
  %"add.68" = add i32 %"add.67", %".977"
  store i32 %"add.68", ptr %"R23"
  ; FFMA R3, R10, R13, R3
  %".980" = load float, ptr %"R10"
  %".981" = load float, ptr %"R13"
  %".982" = load float, ptr %"R3"
  %"fmul.16" = fmul float %".980", %".981"
  %"fadd.20" = fadd float %"fmul.16", %".982"
  %".983" = bitcast ptr %"R3" to ptr
  store float %"fadd.20", ptr %".983"
  ; FFMA R2, R13.reuse, R14, R2
  %".986" = load float, ptr %"R13"
  %".987" = load float, ptr %"R14"
  %".988" = load float, ptr %"R2"
  %"fmul.17" = fmul float %".986", %".987"
  %"fadd.21" = fadd float %"fmul.17", %".988"
  %".989" = bitcast ptr %"R2" to ptr
  store float %"fadd.21", ptr %".989"
  ; FFMA R0, R13.reuse, R19, R0
  %".992" = load float, ptr %"R13"
  %".993" = load float, ptr %"R19"
  %".994" = load float, ptr %"R0"
  %"fmul.18" = fmul float %".992", %".993"
  %"fadd.22" = fadd float %"fmul.18", %".994"
  %".995" = bitcast ptr %"R0" to ptr
  store float %"fadd.22", ptr %".995"
  ; FFMA R8, R13, R21, R8
  %".998" = load float, ptr %"R13"
  %".999" = load float, ptr %"R21"
  %".1000" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".998", %".999"
  %"fadd.23" = fadd float %"fmul.19", %".1000"
  %".1001" = bitcast ptr %"R8" to ptr
  store float %"fadd.23", ptr %".1001"
  ; @P0 BRA `(.L_x_3)
  %".1004" = load i1, ptr %"P0"
  %".1005" = icmp eq i1 %".1004", 1
  br i1 %".1005", label %".L_x_3", label %".L_x_0"
.L_x_0:
  ; ULDC UR8, c[0x0][0x1b0]
  store i32 %"Arg_11", ptr %"UR8"
  ; UISETP.GE.AND UP0, UPT, UR8, 0x1, UPT
  %".1010" = load i32, ptr %"UR8"
  %".1011" = load i1, ptr %"UPT"
  %"unsigned_cmp" = icmp uge i32 %".1010", 1
  %".1012" = xor i1 %"unsigned_cmp", -1
  %".1013" = and i1 %"unsigned_cmp", %".1011"
  %".1014" = and i1 %".1012", %".1011"
  store i1 %".1013", ptr %"UP0"
  store i1 %".1014", ptr %"UPT"
  ; PLOP3.LUT P0, PT, PT, PT, UP0, 0x80, 0x0
  %".1018" = and i1 1, 1
  %".1019" = and i1 %".1018", 1
  ; @!P0 BRA `(.L_x_4)
  %".1021" = load i1, ptr %"P0"
  %".1022" = icmp ne i1 %".1021", 1
  br i1 %".1022", label %".L_x_4", label %".L_x_0_split_0x09f0"
.L_x_0_split_0x09f0:
  ; UIADD3 UR4, UR8, -0x1, URZ
  %".1025" = load i32, ptr %"UR8"
  %".1026" = add i32 %".1025", -1
  %".1027" = add i32 %".1026", 0
  store i32 %".1027", ptr %"UR4"
  ; IMAD.MOV.U32 R22, RZ, RZ, RZ
  %"imad_mul.27" = mul i32 0, 0
  %"imad_add.27" = add i32 %"imad_mul.27", 0
  store i32 %"imad_add.27", ptr %"R22"
  ; ULOP3.LUT UP1, URZ, UR8, 0x3, URZ, 0xc0, !UPT
  %".1032" = load i32, ptr %"UR8"
  %".1033" = xor i1 1, -1
  %".1034" = and i32 %".1032", 3
  store i32 %".1034", ptr %"URZ"
  %".1036" = icmp ne i32 %".1034", 0
  store i1 %".1036", ptr %"UP1"
  ; UISETP.GE.U32.AND UP0, UPT, UR4, 0x3, UPT
  %".1039" = load i32, ptr %"UR4"
  %".1040" = load i1, ptr %"UPT"
  %"unsigned_cmp.1" = icmp uge i32 %".1039", 3
  %".1041" = xor i1 %"unsigned_cmp.1", -1
  %".1042" = and i1 %"unsigned_cmp.1", %".1040"
  %".1043" = and i1 %".1041", %".1040"
  store i1 %".1042", ptr %"UP0"
  store i1 %".1043", ptr %"UPT"
  ; ULOP3.LUT UR6, UR8, 0x3, URZ, 0xc0, !UPT
  %".1047" = load i32, ptr %"UR8"
  %".1048" = xor i1 1, -1
  %".1049" = and i32 %".1047", 3
  store i32 %".1049", ptr %"UR6"
  ; PLOP3.LUT P0, PT, PT, PT, UP1, 0x80, 0x0
  %".1052" = and i1 1, 1
  %".1053" = and i1 %".1052", 1
  ; PLOP3.LUT P1, PT, PT, PT, UP0, 0x80, 0x0
  %".1055" = and i1 1, 1
  %".1056" = and i1 %".1055", 1
  ; @!P1 BRA `(.L_x_5)
  %".1058" = load i1, ptr %"P1"
  %".1059" = icmp ne i1 %".1058", 1
  br i1 %".1059", label %".L_x_5", label %".L_x_0_split_0x0a70"
.L_x_0_split_0x0a70:
  ; USHF.R.S32.HI UR4, URZ, 0x1f, UR8
  %".1062" = icmp ult i32 31, 32
  %"SHF_min.6" = select  i1 %".1062", i32 31, i32 32
  %".1063" = load i32, ptr %"UR8"
  %"zext.84" = zext i32 %".1063" to i64
  %"zext.85" = zext i32 0 to i64
  %"zext.86" = zext i32 31 to i64
  %"shl.45" = shl i64 %"zext.84", 32
  %"or.39" = or i64 %"shl.45", %"zext.85"
  %"ashr.2" = ashr i64 %"or.39", %"zext.86"
  %"ashr.3" = ashr i64 %"ashr.2", 32
  %"trunc32.30" = trunc i64 %"ashr.3" to i32
  store i32 %"trunc32.30", ptr %"UR4"
  ; MOV R22, RZ
  %".1066" = load i32, ptr %"RZ"
  store i32 %".1066", ptr %"R22"
  ; ULDC UR7, c[0x0][0x1b0]
  store i32 %"Arg_11", ptr %"UR7"
  ; USHF.L.U32 UR9, UR8, 0x2, URZ
  %".1071" = icmp ult i32 2, 32
  %"SHF_min.7" = select  i1 %".1071", i32 2, i32 32
  %".1072" = load i32, ptr %"UR8"
  %"zext.87" = zext i32 0 to i64
  %"zext.88" = zext i32 %".1072" to i64
  %"zext.89" = zext i32 2 to i64
  %"shl.46" = shl i64 %"zext.87", 32
  %"or.40" = or i64 %"shl.46", %"zext.88"
  %"shl.47" = shl i64 %"or.40", %"zext.89"
  %"and.3" = and i64 %"shl.47", 4294967295
  %"trunc32.31" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.31", ptr %"UR9"
  ; UIADD3 UR7, -UR6, UR7, URZ
  %".1075" = load i32, ptr %"UR6"
  %".1076" = sub i32 0, %".1075"
  %".1077" = load i32, ptr %"UR7"
  %".1078" = add i32 %".1076", %".1077"
  %".1079" = add i32 %".1078", 0
  store i32 %".1079", ptr %"UR7"
  ; USHF.L.U64.HI UR5, UR8, 0x2, UR4
  %".1082" = icmp ult i32 2, 64
  %"SHF_min.8" = select  i1 %".1082", i32 2, i32 64
  %".1083" = load i32, ptr %"UR4"
  %".1084" = load i32, ptr %"UR8"
  %"zext.90" = zext i32 %".1083" to i64
  %"zext.91" = zext i32 %".1084" to i64
  %"zext.92" = zext i32 2 to i64
  %"shl.48" = shl i64 %"zext.90", 32
  %"or.41" = or i64 %"shl.48", %"zext.91"
  %"shl.49" = shl i64 %"or.41", %"zext.92"
  %"lshr.2" = lshr i64 %"shl.49", 32
  %"trunc32.32" = trunc i64 %"lshr.2" to i32
  store i32 %"trunc32.32", ptr %"UR5"
  br label %".L_x_6"
.L_x_6:
  ; IMAD.SHL.U32 R11, R22, 0x4, RZ
  %".1088" = load i32, ptr %"R22"
  %"imad_shl" = shl i32 %".1088", 4
  %"imad_add.28" = add i32 %"imad_shl", 0
  store i32 %"imad_add.28", ptr %"R11"
  ; IMAD R28, R7, c[0x0][0x1b0], R22
  %".1091" = load i32, ptr %"R7"
  %".1092" = load i32, ptr %"R22"
  %"imad_mul.28" = mul i32 %".1091", %"Arg_11"
  %"imad_add.29" = add i32 %"imad_mul.28", %".1092"
  store i32 %"imad_add.29", ptr %"R28"
  ; IMAD R30, R11, c[0x0][0x1b0], R6
  %".1095" = load i32, ptr %"R11"
  %".1096" = load i32, ptr %"R6"
  %"imad_mul.29" = mul i32 %".1095", %"Arg_11"
  %"imad_add.30" = add i32 %"imad_mul.29", %".1096"
  store i32 %"imad_add.30", ptr %"R30"
  ; IMAD.WIDE R28, R28, R9, c[0x0][0x168]
  %".1099" = load i32, ptr %"R28"
  %".1100" = load i32, ptr %"R9"
  %"imad_ext1.12" = zext i32 %".1099" to i64
  %"imad_ext2.12" = zext i32 %".1100" to i64
  %"imad_mul.30" = mul i64 %"imad_ext1.12", %"imad_ext2.12"
  %".1101" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.31" = add i64 %"imad_mul.30", %".1101"
  %".1102" = and i64 %"imad_add.31", 18446744069414584320
  %".1103" = lshr i64 %".1102", 32
  %"trunc32.33" = trunc i64 %".1103" to i32
  %"trunc32.34" = trunc i64 %"imad_add.31" to i32
  store i32 %"trunc32.34", ptr %"R28"
  store i32 %"trunc32.33", ptr %"R29"
  ; IMAD.WIDE R30, R30, R9, c[0x0][0x180]
  %".1107" = load i32, ptr %"R30"
  %".1108" = load i32, ptr %"R9"
  %"imad_ext1.13" = zext i32 %".1107" to i64
  %"imad_ext2.13" = zext i32 %".1108" to i64
  %"imad_mul.31" = mul i64 %"imad_ext1.13", %"imad_ext2.13"
  %".1109" = ptrtoint ptr %"Arg_4" to i64
  %"imad_add.32" = add i64 %"imad_mul.31", %".1109"
  %".1110" = and i64 %"imad_add.32", 18446744069414584320
  %".1111" = lshr i64 %".1110", 32
  %"trunc32.35" = trunc i64 %".1111" to i32
  %"trunc32.36" = trunc i64 %"imad_add.32" to i32
  store i32 %"trunc32.36", ptr %"R30"
  store i32 %"trunc32.35", ptr %"R31"
  ; LDG.E.CONSTANT.SYS R35, [R28]
  %".1115" = load i32, ptr %"R28"
  %"zext.93" = zext i32 %".1115" to i64
  %".1116" = load i32, ptr %"R29"
  %"zext.94" = zext i32 %".1116" to i64
  %"shl.50" = shl i64 %"zext.94", 32
  %"or.42" = or i64 %"shl.50", %"zext.93"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.42" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".1117" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".1118" = bitcast ptr %"R35" to ptr
  store float %".1117", ptr %".1118"
  ; IADD3 R32, P1, R30, UR9, RZ
  %".1121" = load i32, ptr %"R30"
  %".1122" = load i32, ptr %"UR9"
  %".1123" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1121", i32 %".1122")
  %".1124" = extractvalue {i32, i1} %".1123", 0
  %".1125" = extractvalue {i32, i1} %".1123", 1
  %".1126" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1124", i32 0)
  %".1127" = extractvalue {i32, i1} %".1126", 0
  %".1128" = extractvalue {i32, i1} %".1126", 1
  %".1129" = or i1 %".1125", %".1128"
  store i32 %".1127", ptr %"R32"
  store i1 %".1129", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R26, [R28+0x4]
  %".1133" = load i32, ptr %"R28"
  %"zext.95" = zext i32 %".1133" to i64
  %".1134" = load i32, ptr %"R29"
  %"zext.96" = zext i32 %".1134" to i64
  %"shl.51" = shl i64 %"zext.96", 32
  %"or.43" = or i64 %"shl.51", %"zext.95"
  %"ptr_plus_imm.3" = add i64 %"or.43", 4
  %"inttoptr_bytes.34" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".1135" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".1136" = bitcast ptr %"R26" to ptr
  store float %".1135", ptr %".1136"
  ; IADD3.X R33, R31, UR5, RZ, P1, !PT
  %".1139" = load i32, ptr %"R31"
  %".1140" = load i32, ptr %"UR5"
  %".1141" = load i1, ptr %"P1"
  %".1142" = xor i1 1, -1
  %".1143" = zext i1 %".1141" to i32
  %".1144" = zext i1 %".1142" to i32
  %"add.69" = add i32 %".1139", %".1140"
  %"add.70" = add i32 %"add.69", 0
  %"add.71" = add i32 %"add.70", %".1143"
  %"add.72" = add i32 %"add.71", %".1144"
  store i32 %"add.72", ptr %"R33"
  ; IADD3 R36, P1, R32, UR9, RZ
  %".1147" = load i32, ptr %"R32"
  %".1148" = load i32, ptr %"UR9"
  %".1149" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1147", i32 %".1148")
  %".1150" = extractvalue {i32, i1} %".1149", 0
  %".1151" = extractvalue {i32, i1} %".1149", 1
  %".1152" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1150", i32 0)
  %".1153" = extractvalue {i32, i1} %".1152", 0
  %".1154" = extractvalue {i32, i1} %".1152", 1
  %".1155" = or i1 %".1151", %".1154"
  store i32 %".1153", ptr %"R36"
  store i1 %".1155", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R23, [R28+0x8]
  %".1159" = load i32, ptr %"R28"
  %"zext.97" = zext i32 %".1159" to i64
  %".1160" = load i32, ptr %"R29"
  %"zext.98" = zext i32 %".1160" to i64
  %"shl.52" = shl i64 %"zext.98", 32
  %"or.44" = or i64 %"shl.52", %"zext.97"
  %"ptr_plus_imm.4" = add i64 %"or.44", 8
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".1161" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".1162" = bitcast ptr %"R23" to ptr
  store float %".1161", ptr %".1162"
  ; IADD3.X R37, R33, UR5, RZ, P1, !PT
  %".1165" = load i32, ptr %"R33"
  %".1166" = load i32, ptr %"UR5"
  %".1167" = load i1, ptr %"P1"
  %".1168" = xor i1 1, -1
  %".1169" = zext i1 %".1167" to i32
  %".1170" = zext i1 %".1168" to i32
  %"add.73" = add i32 %".1165", %".1166"
  %"add.74" = add i32 %"add.73", 0
  %"add.75" = add i32 %"add.74", %".1169"
  %"add.76" = add i32 %"add.75", %".1170"
  store i32 %"add.76", ptr %"R37"
  ; LDG.E.CONSTANT.SYS R27, [R28+0xc]
  %".1173" = load i32, ptr %"R28"
  %"zext.99" = zext i32 %".1173" to i64
  %".1174" = load i32, ptr %"R29"
  %"zext.100" = zext i32 %".1174" to i64
  %"shl.53" = shl i64 %"zext.100", 32
  %"or.45" = or i64 %"shl.53", %"zext.99"
  %"ptr_plus_imm.5" = add i64 %"or.45", 12
  %"inttoptr_bytes.36" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".1175" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".1176" = bitcast ptr %"R27" to ptr
  store float %".1175", ptr %".1176"
  ; IADD3 R38, P1, R36, UR9, RZ
  %".1179" = load i32, ptr %"R36"
  %".1180" = load i32, ptr %"UR9"
  %".1181" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1179", i32 %".1180")
  %".1182" = extractvalue {i32, i1} %".1181", 0
  %".1183" = extractvalue {i32, i1} %".1181", 1
  %".1184" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1182", i32 0)
  %".1185" = extractvalue {i32, i1} %".1184", 0
  %".1186" = extractvalue {i32, i1} %".1184", 1
  %".1187" = or i1 %".1183", %".1186"
  store i32 %".1185", ptr %"R38"
  store i1 %".1187", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R34, [R30]
  %".1191" = load i32, ptr %"R30"
  %"zext.101" = zext i32 %".1191" to i64
  %".1192" = load i32, ptr %"R31"
  %"zext.102" = zext i32 %".1192" to i64
  %"shl.54" = shl i64 %"zext.102", 32
  %"or.46" = or i64 %"shl.54", %"zext.101"
  %"inttoptr_bytes.37" = inttoptr i64 %"or.46" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".1193" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".1194" = bitcast ptr %"R34" to ptr
  store float %".1193", ptr %".1194"
  ; IADD3.X R39, R37, UR5, RZ, P1, !PT
  %".1197" = load i32, ptr %"R37"
  %".1198" = load i32, ptr %"UR5"
  %".1199" = load i1, ptr %"P1"
  %".1200" = xor i1 1, -1
  %".1201" = zext i1 %".1199" to i32
  %".1202" = zext i1 %".1200" to i32
  %"add.77" = add i32 %".1197", %".1198"
  %"add.78" = add i32 %"add.77", 0
  %"add.79" = add i32 %"add.78", %".1201"
  %"add.80" = add i32 %"add.79", %".1202"
  store i32 %"add.80", ptr %"R39"
  ; IADD3 R12, P1, R38, UR9, RZ
  %".1205" = load i32, ptr %"R38"
  %".1206" = load i32, ptr %"UR9"
  %".1207" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1205", i32 %".1206")
  %".1208" = extractvalue {i32, i1} %".1207", 0
  %".1209" = extractvalue {i32, i1} %".1207", 1
  %".1210" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1208", i32 0)
  %".1211" = extractvalue {i32, i1} %".1210", 0
  %".1212" = extractvalue {i32, i1} %".1210", 1
  %".1213" = or i1 %".1209", %".1212"
  store i32 %".1211", ptr %"R12"
  store i1 %".1213", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R40, [R32]
  %".1217" = load i32, ptr %"R32"
  %"zext.103" = zext i32 %".1217" to i64
  %".1218" = load i32, ptr %"R33"
  %"zext.104" = zext i32 %".1218" to i64
  %"shl.55" = shl i64 %"zext.104", 32
  %"or.47" = or i64 %"shl.55", %"zext.103"
  %"inttoptr_bytes.38" = inttoptr i64 %"or.47" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".1219" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".1220" = bitcast ptr %"R40" to ptr
  store float %".1219", ptr %".1220"
  ; IADD3.X R13, R39, UR5, RZ, P1, !PT
  %".1223" = load i32, ptr %"R39"
  %".1224" = load i32, ptr %"UR5"
  %".1225" = load i1, ptr %"P1"
  %".1226" = xor i1 1, -1
  %".1227" = zext i1 %".1225" to i32
  %".1228" = zext i1 %".1226" to i32
  %"add.81" = add i32 %".1223", %".1224"
  %"add.82" = add i32 %"add.81", 0
  %"add.83" = add i32 %"add.82", %".1227"
  %"add.84" = add i32 %"add.83", %".1228"
  store i32 %"add.84", ptr %"R13"
  ; LDG.E.CONSTANT.SYS R36, [R36]
  %".1231" = load i32, ptr %"R36"
  %"zext.105" = zext i32 %".1231" to i64
  %".1232" = load i32, ptr %"R37"
  %"zext.106" = zext i32 %".1232" to i64
  %"shl.56" = shl i64 %"zext.106", 32
  %"or.48" = or i64 %"shl.56", %"zext.105"
  %"inttoptr_bytes.39" = inttoptr i64 %"or.48" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".1233" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".1234" = bitcast ptr %"R36" to ptr
  store float %".1233", ptr %".1234"
  ; IADD3 R18, P1, R12, UR9, RZ
  %".1237" = load i32, ptr %"R12"
  %".1238" = load i32, ptr %"UR9"
  %".1239" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1237", i32 %".1238")
  %".1240" = extractvalue {i32, i1} %".1239", 0
  %".1241" = extractvalue {i32, i1} %".1239", 1
  %".1242" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1240", i32 0)
  %".1243" = extractvalue {i32, i1} %".1242", 0
  %".1244" = extractvalue {i32, i1} %".1242", 1
  %".1245" = or i1 %".1241", %".1244"
  store i32 %".1243", ptr %"R18"
  store i1 %".1245", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R38, [R38]
  %".1249" = load i32, ptr %"R38"
  %"zext.107" = zext i32 %".1249" to i64
  %".1250" = load i32, ptr %"R39"
  %"zext.108" = zext i32 %".1250" to i64
  %"shl.57" = shl i64 %"zext.108", 32
  %"or.49" = or i64 %"shl.57", %"zext.107"
  %"inttoptr_bytes.40" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".1251" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".1252" = bitcast ptr %"R38" to ptr
  store float %".1251", ptr %".1252"
  ; IADD3.X R19, R13, UR5, RZ, P1, !PT
  %".1255" = load i32, ptr %"R13"
  %".1256" = load i32, ptr %"UR5"
  %".1257" = load i1, ptr %"P1"
  %".1258" = xor i1 1, -1
  %".1259" = zext i1 %".1257" to i32
  %".1260" = zext i1 %".1258" to i32
  %"add.85" = add i32 %".1255", %".1256"
  %"add.86" = add i32 %"add.85", 0
  %"add.87" = add i32 %"add.86", %".1259"
  %"add.88" = add i32 %"add.87", %".1260"
  store i32 %"add.88", ptr %"R19"
  ; IADD3 R14, P1, R18, UR9, RZ
  %".1263" = load i32, ptr %"R18"
  %".1264" = load i32, ptr %"UR9"
  %".1265" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1263", i32 %".1264")
  %".1266" = extractvalue {i32, i1} %".1265", 0
  %".1267" = extractvalue {i32, i1} %".1265", 1
  %".1268" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1266", i32 0)
  %".1269" = extractvalue {i32, i1} %".1268", 0
  %".1270" = extractvalue {i32, i1} %".1268", 1
  %".1271" = or i1 %".1267", %".1270"
  store i32 %".1269", ptr %"R14"
  store i1 %".1271", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R41, [R12]
  %".1275" = load i32, ptr %"R12"
  %"zext.109" = zext i32 %".1275" to i64
  %".1276" = load i32, ptr %"R13"
  %"zext.110" = zext i32 %".1276" to i64
  %"shl.58" = shl i64 %"zext.110", 32
  %"or.50" = or i64 %"shl.58", %"zext.109"
  %"inttoptr_bytes.41" = inttoptr i64 %"or.50" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".1277" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".1278" = bitcast ptr %"R41" to ptr
  store float %".1277", ptr %".1278"
  ; IADD3.X R15, R19, UR5, RZ, P1, !PT
  %".1281" = load i32, ptr %"R19"
  %".1282" = load i32, ptr %"UR5"
  %".1283" = load i1, ptr %"P1"
  %".1284" = xor i1 1, -1
  %".1285" = zext i1 %".1283" to i32
  %".1286" = zext i1 %".1284" to i32
  %"add.89" = add i32 %".1281", %".1282"
  %"add.90" = add i32 %"add.89", 0
  %"add.91" = add i32 %"add.90", %".1285"
  %"add.92" = add i32 %"add.91", %".1286"
  store i32 %"add.92", ptr %"R15"
  ; IADD3 R10, P1, R14, UR9, RZ
  %".1289" = load i32, ptr %"R14"
  %".1290" = load i32, ptr %"UR9"
  %".1291" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1289", i32 %".1290")
  %".1292" = extractvalue {i32, i1} %".1291", 0
  %".1293" = extractvalue {i32, i1} %".1291", 1
  %".1294" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1292", i32 0)
  %".1295" = extractvalue {i32, i1} %".1294", 0
  %".1296" = extractvalue {i32, i1} %".1294", 1
  %".1297" = or i1 %".1293", %".1296"
  store i32 %".1295", ptr %"R10"
  store i1 %".1297", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R18, [R18]
  %".1301" = load i32, ptr %"R18"
  %"zext.111" = zext i32 %".1301" to i64
  %".1302" = load i32, ptr %"R19"
  %"zext.112" = zext i32 %".1302" to i64
  %"shl.59" = shl i64 %"zext.112", 32
  %"or.51" = or i64 %"shl.59", %"zext.111"
  %"inttoptr_bytes.42" = inttoptr i64 %"or.51" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".1303" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".1304" = bitcast ptr %"R18" to ptr
  store float %".1303", ptr %".1304"
  ; IADD3.X R11, R15, UR5, RZ, P1, !PT
  %".1307" = load i32, ptr %"R15"
  %".1308" = load i32, ptr %"UR5"
  %".1309" = load i1, ptr %"P1"
  %".1310" = xor i1 1, -1
  %".1311" = zext i1 %".1309" to i32
  %".1312" = zext i1 %".1310" to i32
  %"add.93" = add i32 %".1307", %".1308"
  %"add.94" = add i32 %"add.93", 0
  %"add.95" = add i32 %"add.94", %".1311"
  %"add.96" = add i32 %"add.95", %".1312"
  store i32 %"add.96", ptr %"R11"
  ; IADD3 R16, P1, R10, UR9, RZ
  %".1315" = load i32, ptr %"R10"
  %".1316" = load i32, ptr %"UR9"
  %".1317" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1315", i32 %".1316")
  %".1318" = extractvalue {i32, i1} %".1317", 0
  %".1319" = extractvalue {i32, i1} %".1317", 1
  %".1320" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1318", i32 0)
  %".1321" = extractvalue {i32, i1} %".1320", 0
  %".1322" = extractvalue {i32, i1} %".1320", 1
  %".1323" = or i1 %".1319", %".1322"
  store i32 %".1321", ptr %"R16"
  store i1 %".1323", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R14, [R14]
  %".1327" = load i32, ptr %"R14"
  %"zext.113" = zext i32 %".1327" to i64
  %".1328" = load i32, ptr %"R15"
  %"zext.114" = zext i32 %".1328" to i64
  %"shl.60" = shl i64 %"zext.114", 32
  %"or.52" = or i64 %"shl.60", %"zext.113"
  %"inttoptr_bytes.43" = inttoptr i64 %"or.52" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".1329" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".1330" = bitcast ptr %"R14" to ptr
  store float %".1329", ptr %".1330"
  ; IADD3.X R17, R11, UR5, RZ, P1, !PT
  %".1333" = load i32, ptr %"R11"
  %".1334" = load i32, ptr %"UR5"
  %".1335" = load i1, ptr %"P1"
  %".1336" = xor i1 1, -1
  %".1337" = zext i1 %".1335" to i32
  %".1338" = zext i1 %".1336" to i32
  %"add.97" = add i32 %".1333", %".1334"
  %"add.98" = add i32 %"add.97", 0
  %"add.99" = add i32 %"add.98", %".1337"
  %"add.100" = add i32 %"add.99", %".1338"
  store i32 %"add.100", ptr %"R17"
  ; IADD3 R24, P1, R16, UR9, RZ
  %".1341" = load i32, ptr %"R16"
  %".1342" = load i32, ptr %"UR9"
  %".1343" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1341", i32 %".1342")
  %".1344" = extractvalue {i32, i1} %".1343", 0
  %".1345" = extractvalue {i32, i1} %".1343", 1
  %".1346" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1344", i32 0)
  %".1347" = extractvalue {i32, i1} %".1346", 0
  %".1348" = extractvalue {i32, i1} %".1346", 1
  %".1349" = or i1 %".1345", %".1348"
  store i32 %".1347", ptr %"R24"
  store i1 %".1349", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R10, [R10]
  %".1353" = load i32, ptr %"R10"
  %"zext.115" = zext i32 %".1353" to i64
  %".1354" = load i32, ptr %"R11"
  %"zext.116" = zext i32 %".1354" to i64
  %"shl.61" = shl i64 %"zext.116", 32
  %"or.53" = or i64 %"shl.61", %"zext.115"
  %"inttoptr_bytes.44" = inttoptr i64 %"or.53" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".1355" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".1356" = bitcast ptr %"R10" to ptr
  store float %".1355", ptr %".1356"
  ; IADD3.X R25, R17, UR5, RZ, P1, !PT
  %".1359" = load i32, ptr %"R17"
  %".1360" = load i32, ptr %"UR5"
  %".1361" = load i1, ptr %"P1"
  %".1362" = xor i1 1, -1
  %".1363" = zext i1 %".1361" to i32
  %".1364" = zext i1 %".1362" to i32
  %"add.101" = add i32 %".1359", %".1360"
  %"add.102" = add i32 %"add.101", 0
  %"add.103" = add i32 %"add.102", %".1363"
  %"add.104" = add i32 %"add.103", %".1364"
  store i32 %"add.104", ptr %"R25"
  ; IADD3 R20, P1, R24, UR9, RZ
  %".1367" = load i32, ptr %"R24"
  %".1368" = load i32, ptr %"UR9"
  %".1369" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1367", i32 %".1368")
  %".1370" = extractvalue {i32, i1} %".1369", 0
  %".1371" = extractvalue {i32, i1} %".1369", 1
  %".1372" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1370", i32 0)
  %".1373" = extractvalue {i32, i1} %".1372", 0
  %".1374" = extractvalue {i32, i1} %".1372", 1
  %".1375" = or i1 %".1371", %".1374"
  store i32 %".1373", ptr %"R20"
  store i1 %".1375", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R16, [R16]
  %".1379" = load i32, ptr %"R16"
  %"zext.117" = zext i32 %".1379" to i64
  %".1380" = load i32, ptr %"R17"
  %"zext.118" = zext i32 %".1380" to i64
  %"shl.62" = shl i64 %"zext.118", 32
  %"or.54" = or i64 %"shl.62", %"zext.117"
  %"inttoptr_bytes.45" = inttoptr i64 %"or.54" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".1381" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".1382" = bitcast ptr %"R16" to ptr
  store float %".1381", ptr %".1382"
  ; IADD3.X R21, R25, UR5, RZ, P1, !PT
  %".1385" = load i32, ptr %"R25"
  %".1386" = load i32, ptr %"UR5"
  %".1387" = load i1, ptr %"P1"
  %".1388" = xor i1 1, -1
  %".1389" = zext i1 %".1387" to i32
  %".1390" = zext i1 %".1388" to i32
  %"add.105" = add i32 %".1385", %".1386"
  %"add.106" = add i32 %"add.105", 0
  %"add.107" = add i32 %"add.106", %".1389"
  %"add.108" = add i32 %"add.107", %".1390"
  store i32 %"add.108", ptr %"R21"
  ; IADD3 R28, P1, R20, UR9, RZ
  %".1393" = load i32, ptr %"R20"
  %".1394" = load i32, ptr %"UR9"
  %".1395" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1393", i32 %".1394")
  %".1396" = extractvalue {i32, i1} %".1395", 0
  %".1397" = extractvalue {i32, i1} %".1395", 1
  %".1398" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1396", i32 0)
  %".1399" = extractvalue {i32, i1} %".1398", 0
  %".1400" = extractvalue {i32, i1} %".1398", 1
  %".1401" = or i1 %".1397", %".1400"
  store i32 %".1399", ptr %"R28"
  store i1 %".1401", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R24, [R24]
  %".1405" = load i32, ptr %"R24"
  %"zext.119" = zext i32 %".1405" to i64
  %".1406" = load i32, ptr %"R25"
  %"zext.120" = zext i32 %".1406" to i64
  %"shl.63" = shl i64 %"zext.120", 32
  %"or.55" = or i64 %"shl.63", %"zext.119"
  %"inttoptr_bytes.46" = inttoptr i64 %"or.55" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".1407" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".1408" = bitcast ptr %"R24" to ptr
  store float %".1407", ptr %".1408"
  ; IADD3.X R29, R21, UR5, RZ, P1, !PT
  %".1411" = load i32, ptr %"R21"
  %".1412" = load i32, ptr %"UR5"
  %".1413" = load i1, ptr %"P1"
  %".1414" = xor i1 1, -1
  %".1415" = zext i1 %".1413" to i32
  %".1416" = zext i1 %".1414" to i32
  %"add.109" = add i32 %".1411", %".1412"
  %"add.110" = add i32 %"add.109", 0
  %"add.111" = add i32 %"add.110", %".1415"
  %"add.112" = add i32 %"add.111", %".1416"
  store i32 %"add.112", ptr %"R29"
  ; IADD3 R30, P1, R28, UR9, RZ
  %".1419" = load i32, ptr %"R28"
  %".1420" = load i32, ptr %"UR9"
  %".1421" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1419", i32 %".1420")
  %".1422" = extractvalue {i32, i1} %".1421", 0
  %".1423" = extractvalue {i32, i1} %".1421", 1
  %".1424" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1422", i32 0)
  %".1425" = extractvalue {i32, i1} %".1424", 0
  %".1426" = extractvalue {i32, i1} %".1424", 1
  %".1427" = or i1 %".1423", %".1426"
  store i32 %".1425", ptr %"R30"
  store i1 %".1427", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R20, [R20]
  %".1431" = load i32, ptr %"R20"
  %"zext.121" = zext i32 %".1431" to i64
  %".1432" = load i32, ptr %"R21"
  %"zext.122" = zext i32 %".1432" to i64
  %"shl.64" = shl i64 %"zext.122", 32
  %"or.56" = or i64 %"shl.64", %"zext.121"
  %"inttoptr_bytes.47" = inttoptr i64 %"or.56" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".1433" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".1434" = bitcast ptr %"R20" to ptr
  store float %".1433", ptr %".1434"
  ; IADD3.X R31, R29, UR5, RZ, P1, !PT
  %".1437" = load i32, ptr %"R29"
  %".1438" = load i32, ptr %"UR5"
  %".1439" = load i1, ptr %"P1"
  %".1440" = xor i1 1, -1
  %".1441" = zext i1 %".1439" to i32
  %".1442" = zext i1 %".1440" to i32
  %"add.113" = add i32 %".1437", %".1438"
  %"add.114" = add i32 %"add.113", 0
  %"add.115" = add i32 %"add.114", %".1441"
  %"add.116" = add i32 %"add.115", %".1442"
  store i32 %"add.116", ptr %"R31"
  ; IADD3 R32, P1, R30, UR9, RZ
  %".1445" = load i32, ptr %"R30"
  %".1446" = load i32, ptr %"UR9"
  %".1447" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1445", i32 %".1446")
  %".1448" = extractvalue {i32, i1} %".1447", 0
  %".1449" = extractvalue {i32, i1} %".1447", 1
  %".1450" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1448", i32 0)
  %".1451" = extractvalue {i32, i1} %".1450", 0
  %".1452" = extractvalue {i32, i1} %".1450", 1
  %".1453" = or i1 %".1449", %".1452"
  store i32 %".1451", ptr %"R32"
  store i1 %".1453", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R28, [R28]
  %".1457" = load i32, ptr %"R28"
  %"zext.123" = zext i32 %".1457" to i64
  %".1458" = load i32, ptr %"R29"
  %"zext.124" = zext i32 %".1458" to i64
  %"shl.65" = shl i64 %"zext.124", 32
  %"or.57" = or i64 %"shl.65", %"zext.123"
  %"inttoptr_bytes.48" = inttoptr i64 %"or.57" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".1459" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".1460" = bitcast ptr %"R28" to ptr
  store float %".1459", ptr %".1460"
  ; IADD3.X R33, R31, UR5, RZ, P1, !PT
  %".1463" = load i32, ptr %"R31"
  %".1464" = load i32, ptr %"UR5"
  %".1465" = load i1, ptr %"P1"
  %".1466" = xor i1 1, -1
  %".1467" = zext i1 %".1465" to i32
  %".1468" = zext i1 %".1466" to i32
  %"add.117" = add i32 %".1463", %".1464"
  %"add.118" = add i32 %"add.117", 0
  %"add.119" = add i32 %"add.118", %".1467"
  %"add.120" = add i32 %"add.119", %".1468"
  store i32 %"add.120", ptr %"R33"
  ; IADD3 R12, P1, R32, UR9, RZ
  %".1471" = load i32, ptr %"R32"
  %".1472" = load i32, ptr %"UR9"
  %".1473" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1471", i32 %".1472")
  %".1474" = extractvalue {i32, i1} %".1473", 0
  %".1475" = extractvalue {i32, i1} %".1473", 1
  %".1476" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1474", i32 0)
  %".1477" = extractvalue {i32, i1} %".1476", 0
  %".1478" = extractvalue {i32, i1} %".1476", 1
  %".1479" = or i1 %".1475", %".1478"
  store i32 %".1477", ptr %"R12"
  store i1 %".1479", ptr %"P1"
  ; UMOV UR4, UR9
  %".1483" = load i32, ptr %"UR9"
  store i32 %".1483", ptr %"UR4"
  ; LDG.E.CONSTANT.SYS R30, [R30]
  %".1486" = load i32, ptr %"R30"
  %"zext.125" = zext i32 %".1486" to i64
  %".1487" = load i32, ptr %"R31"
  %"zext.126" = zext i32 %".1487" to i64
  %"shl.66" = shl i64 %"zext.126", 32
  %"or.58" = or i64 %"shl.66", %"zext.125"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.58" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".1488" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".1489" = bitcast ptr %"R30" to ptr
  store float %".1488", ptr %".1489"
  ; IADD3.X R13, R33, UR5, RZ, P1, !PT
  %".1492" = load i32, ptr %"R33"
  %".1493" = load i32, ptr %"UR5"
  %".1494" = load i1, ptr %"P1"
  %".1495" = xor i1 1, -1
  %".1496" = zext i1 %".1494" to i32
  %".1497" = zext i1 %".1495" to i32
  %"add.121" = add i32 %".1492", %".1493"
  %"add.122" = add i32 %"add.121", 0
  %"add.123" = add i32 %"add.122", %".1496"
  %"add.124" = add i32 %"add.123", %".1497"
  store i32 %"add.124", ptr %"R13"
  ; LDG.E.CONSTANT.SYS R32, [R32]
  %".1500" = load i32, ptr %"R32"
  %"zext.127" = zext i32 %".1500" to i64
  %".1501" = load i32, ptr %"R33"
  %"zext.128" = zext i32 %".1501" to i64
  %"shl.67" = shl i64 %"zext.128", 32
  %"or.59" = or i64 %"shl.67", %"zext.127"
  %"inttoptr_bytes.50" = inttoptr i64 %"or.59" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".1502" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".1503" = bitcast ptr %"R32" to ptr
  store float %".1502", ptr %".1503"
  ; LDG.E.CONSTANT.SYS R17, [R12]
  %".1506" = load i32, ptr %"R12"
  %"zext.129" = zext i32 %".1506" to i64
  %".1507" = load i32, ptr %"R13"
  %"zext.130" = zext i32 %".1507" to i64
  %"shl.68" = shl i64 %"zext.130", 32
  %"or.60" = or i64 %"shl.68", %"zext.129"
  %"inttoptr_bytes.51" = inttoptr i64 %"or.60" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".1508" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".1509" = bitcast ptr %"R17" to ptr
  store float %".1508", ptr %".1509"
  ; LDG.E.CONSTANT.SYS R19, [R12.64+UR4]
  %".1512" = load i32, ptr %"R12"
  %"zext.131" = zext i32 %".1512" to i64
  %".1513" = load i32, ptr %"R13"
  %"zext.132" = zext i32 %".1513" to i64
  %"shl.69" = shl i64 %"zext.132", 32
  %"or.61" = or i64 %"shl.69", %"zext.131"
  %"val_UR4.2" = load i32, ptr %"UR4"
  %"sext_UR4.2" = sext i32 %"val_UR4.2" to i64
  %"base_plus_reg_offset.2" = add i64 %"or.61", %"sext_UR4.2"
  %"inttoptr_bytes.52" = inttoptr i64 %"base_plus_reg_offset.2" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".1514" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".1515" = bitcast ptr %"R19" to ptr
  store float %".1514", ptr %".1515"
  ; UIADD3 UR7, UR7, -0x4, URZ
  %".1518" = load i32, ptr %"UR7"
  %".1519" = add i32 %".1518", -4
  %".1520" = add i32 %".1519", 0
  store i32 %".1520", ptr %"UR7"
  ; ISETP.NE.AND P1, PT, RZ, UR7, PT
  %".1523" = load i32, ptr %"UR7"
  %".1524" = load i1, ptr %"PT"
  %"cmp.6" = icmp ne i32 0, %".1523"
  %".1525" = xor i1 %"cmp.6", -1
  %".1526" = and i1 %"cmp.6", %".1524"
  %".1527" = and i1 %".1525", %".1524"
  store i1 %".1526", ptr %"P1"
  ; IADD3 R22, R22, 0x4, RZ
  %".1530" = load i32, ptr %"R22"
  %".1531" = add i32 %".1530", 4
  %".1532" = add i32 %".1531", 0
  store i32 %".1532", ptr %"R22"
  ; FFMA R3, R34, R35, R3
  %".1535" = load float, ptr %"R34"
  %".1536" = load float, ptr %"R35"
  %".1537" = load float, ptr %"R3"
  %"fmul.20" = fmul float %".1535", %".1536"
  %"fadd.24" = fadd float %"fmul.20", %".1537"
  %".1538" = bitcast ptr %"R3" to ptr
  store float %"fadd.24", ptr %".1538"
  ; FFMA R11, R35.reuse, R40, R2
  %".1541" = load float, ptr %"R35"
  %".1542" = load float, ptr %"R40"
  %".1543" = load float, ptr %"R2"
  %"fmul.21" = fmul float %".1541", %".1542"
  %"fadd.25" = fadd float %"fmul.21", %".1543"
  %".1544" = bitcast ptr %"R11" to ptr
  store float %"fadd.25", ptr %".1544"
  ; FFMA R15, R35.reuse, R36, R0
  %".1547" = load float, ptr %"R35"
  %".1548" = load float, ptr %"R36"
  %".1549" = load float, ptr %"R0"
  %"fmul.22" = fmul float %".1547", %".1548"
  %"fadd.26" = fadd float %"fmul.22", %".1549"
  %".1550" = bitcast ptr %"R15" to ptr
  store float %"fadd.26", ptr %".1550"
  ; FFMA R35, R35, R38, R8
  %".1553" = load float, ptr %"R35"
  %".1554" = load float, ptr %"R38"
  %".1555" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".1553", %".1554"
  %"fadd.27" = fadd float %"fmul.23", %".1555"
  %".1556" = bitcast ptr %"R35" to ptr
  store float %"fadd.27", ptr %".1556"
  ; FFMA R0, R41, R26, R3
  %".1559" = load float, ptr %"R41"
  %".1560" = load float, ptr %"R26"
  %".1561" = load float, ptr %"R3"
  %"fmul.24" = fmul float %".1559", %".1560"
  %"fadd.28" = fadd float %"fmul.24", %".1561"
  %".1562" = bitcast ptr %"R0" to ptr
  store float %"fadd.28", ptr %".1562"
  ; FFMA R18, R26.reuse, R18, R11
  %".1565" = load float, ptr %"R26"
  %".1566" = load float, ptr %"R18"
  %".1567" = load float, ptr %"R11"
  %"fmul.25" = fmul float %".1565", %".1566"
  %"fadd.29" = fadd float %"fmul.25", %".1567"
  %".1568" = bitcast ptr %"R18" to ptr
  store float %"fadd.29", ptr %".1568"
  ; FFMA R14, R26.reuse, R14, R15
  %".1571" = load float, ptr %"R26"
  %".1572" = load float, ptr %"R14"
  %".1573" = load float, ptr %"R15"
  %"fmul.26" = fmul float %".1571", %".1572"
  %"fadd.30" = fadd float %"fmul.26", %".1573"
  %".1574" = bitcast ptr %"R14" to ptr
  store float %"fadd.30", ptr %".1574"
  ; FFMA R10, R26, R10, R35
  %".1577" = load float, ptr %"R26"
  %".1578" = load float, ptr %"R10"
  %".1579" = load float, ptr %"R35"
  %"fmul.27" = fmul float %".1577", %".1578"
  %"fadd.31" = fadd float %"fmul.27", %".1579"
  %".1580" = bitcast ptr %"R10" to ptr
  store float %"fadd.31", ptr %".1580"
  ; FFMA R0, R16, R23, R0
  %".1583" = load float, ptr %"R16"
  %".1584" = load float, ptr %"R23"
  %".1585" = load float, ptr %"R0"
  %"fmul.28" = fmul float %".1583", %".1584"
  %"fadd.32" = fadd float %"fmul.28", %".1585"
  %".1586" = bitcast ptr %"R0" to ptr
  store float %"fadd.32", ptr %".1586"
  ; FFMA R18, R23.reuse, R24, R18
  %".1589" = load float, ptr %"R23"
  %".1590" = load float, ptr %"R24"
  %".1591" = load float, ptr %"R18"
  %"fmul.29" = fmul float %".1589", %".1590"
  %"fadd.33" = fadd float %"fmul.29", %".1591"
  %".1592" = bitcast ptr %"R18" to ptr
  store float %"fadd.33", ptr %".1592"
  ; FFMA R14, R23, R20, R14
  %".1595" = load float, ptr %"R23"
  %".1596" = load float, ptr %"R20"
  %".1597" = load float, ptr %"R14"
  %"fmul.30" = fmul float %".1595", %".1596"
  %"fadd.34" = fadd float %"fmul.30", %".1597"
  %".1598" = bitcast ptr %"R14" to ptr
  store float %"fadd.34", ptr %".1598"
  ; FFMA R10, R23, R28, R10
  %".1601" = load float, ptr %"R23"
  %".1602" = load float, ptr %"R28"
  %".1603" = load float, ptr %"R10"
  %"fmul.31" = fmul float %".1601", %".1602"
  %"fadd.35" = fadd float %"fmul.31", %".1603"
  %".1604" = bitcast ptr %"R10" to ptr
  store float %"fadd.35", ptr %".1604"
  ; FFMA R3, R30, R27, R0
  %".1607" = load float, ptr %"R30"
  %".1608" = load float, ptr %"R27"
  %".1609" = load float, ptr %"R0"
  %"fmul.32" = fmul float %".1607", %".1608"
  %"fadd.36" = fadd float %"fmul.32", %".1609"
  %".1610" = bitcast ptr %"R3" to ptr
  store float %"fadd.36", ptr %".1610"
  ; FFMA R2, R27.reuse, R32, R18
  %".1613" = load float, ptr %"R27"
  %".1614" = load float, ptr %"R32"
  %".1615" = load float, ptr %"R18"
  %"fmul.33" = fmul float %".1613", %".1614"
  %"fadd.37" = fadd float %"fmul.33", %".1615"
  %".1616" = bitcast ptr %"R2" to ptr
  store float %"fadd.37", ptr %".1616"
  ; FFMA R0, R27.reuse, R17, R14
  %".1619" = load float, ptr %"R27"
  %".1620" = load float, ptr %"R17"
  %".1621" = load float, ptr %"R14"
  %"fmul.34" = fmul float %".1619", %".1620"
  %"fadd.38" = fadd float %"fmul.34", %".1621"
  %".1622" = bitcast ptr %"R0" to ptr
  store float %"fadd.38", ptr %".1622"
  ; FFMA R8, R27, R19, R10
  %".1625" = load float, ptr %"R27"
  %".1626" = load float, ptr %"R19"
  %".1627" = load float, ptr %"R10"
  %"fmul.35" = fmul float %".1625", %".1626"
  %"fadd.39" = fadd float %"fmul.35", %".1627"
  %".1628" = bitcast ptr %"R8" to ptr
  store float %"fadd.39", ptr %".1628"
  ; @P1 BRA `(.L_x_6)
  %".1631" = load i1, ptr %"P1"
  %".1632" = icmp eq i1 %".1631", 1
  br i1 %".1632", label %".L_x_6", label %".L_x_5"
.L_x_5:
  ; @!P0 BRA `(.L_x_4)
  %".1635" = load i1, ptr %"P0"
  %".1636" = icmp ne i1 %".1635", 1
  br i1 %".1636", label %".L_x_4", label %".L_x_5_split_0x0f80"
.L_x_5_split_0x0f80:
  ; IMAD R10, R22, c[0x0][0x1b0], RZ
  %".1639" = load i32, ptr %"R22"
  %"imad_mul.32" = mul i32 %".1639", %"Arg_11"
  %"imad_add.33" = add i32 %"imad_mul.32", 0
  store i32 %"imad_add.33", ptr %"R10"
  ; USHF.R.S32.HI UR4, URZ, 0x1f, UR8
  %".1642" = icmp ult i32 31, 32
  %"SHF_min.9" = select  i1 %".1642", i32 31, i32 32
  %".1643" = load i32, ptr %"UR8"
  %"zext.133" = zext i32 %".1643" to i64
  %"zext.134" = zext i32 0 to i64
  %"zext.135" = zext i32 31 to i64
  %"shl.70" = shl i64 %"zext.133", 32
  %"or.62" = or i64 %"shl.70", %"zext.134"
  %"ashr.4" = ashr i64 %"or.62", %"zext.135"
  %"ashr.5" = ashr i64 %"ashr.4", 32
  %"trunc32.37" = trunc i64 %"ashr.5" to i32
  store i32 %"trunc32.37", ptr %"UR4"
  ; IMAD R22, R7, c[0x0][0x1b0], R22
  %".1646" = load i32, ptr %"R7"
  %".1647" = load i32, ptr %"R22"
  %"imad_mul.33" = mul i32 %".1646", %"Arg_11"
  %"imad_add.34" = add i32 %"imad_mul.33", %".1647"
  store i32 %"imad_add.34", ptr %"R22"
  ; USHF.L.U32 UR7, UR8, 0x2, URZ
  %".1650" = icmp ult i32 2, 32
  %"SHF_min.10" = select  i1 %".1650", i32 2, i32 32
  %".1651" = load i32, ptr %"UR8"
  %"zext.136" = zext i32 0 to i64
  %"zext.137" = zext i32 %".1651" to i64
  %"zext.138" = zext i32 2 to i64
  %"shl.71" = shl i64 %"zext.136", 32
  %"or.63" = or i64 %"shl.71", %"zext.137"
  %"shl.72" = shl i64 %"or.63", %"zext.138"
  %"and.4" = and i64 %"shl.72", 4294967295
  %"trunc32.38" = trunc i64 %"and.4" to i32
  store i32 %"trunc32.38", ptr %"UR7"
  ; LEA R5, R10, R5, 0x2
  %".1654" = load i32, ptr %"R10"
  %".1655" = load i32, ptr %"R5"
  %"shl.73" = shl i32 %".1654", 2
  %"add.125" = add i32 %"shl.73", %".1655"
  store i32 %"add.125", ptr %"R5"
  ; IMAD.WIDE R10, R22, R9, c[0x0][0x168]
  %".1658" = load i32, ptr %"R22"
  %".1659" = load i32, ptr %"R9"
  %"imad_ext1.14" = zext i32 %".1658" to i64
  %"imad_ext2.14" = zext i32 %".1659" to i64
  %"imad_mul.34" = mul i64 %"imad_ext1.14", %"imad_ext2.14"
  %".1660" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.35" = add i64 %"imad_mul.34", %".1660"
  %".1661" = and i64 %"imad_add.35", 18446744069414584320
  %".1662" = lshr i64 %".1661", 32
  %"trunc32.39" = trunc i64 %".1662" to i32
  %"trunc32.40" = trunc i64 %"imad_add.35" to i32
  store i32 %"trunc32.40", ptr %"R10"
  store i32 %"trunc32.39", ptr %"R11"
  ; UIADD3 UR6, -UR6, URZ, URZ
  %".1666" = load i32, ptr %"UR6"
  %".1667" = sub i32 0, %".1666"
  %".1668" = add i32 %".1667", 0
  %".1669" = add i32 %".1668", 0
  store i32 %".1669", ptr %"UR6"
  ; USHF.L.U64.HI UR5, UR8, 0x2, UR4
  %".1672" = icmp ult i32 2, 64
  %"SHF_min.11" = select  i1 %".1672", i32 2, i32 64
  %".1673" = load i32, ptr %"UR4"
  %".1674" = load i32, ptr %"UR8"
  %"zext.139" = zext i32 %".1673" to i64
  %"zext.140" = zext i32 %".1674" to i64
  %"zext.141" = zext i32 2 to i64
  %"shl.74" = shl i64 %"zext.139", 32
  %"or.64" = or i64 %"shl.74", %"zext.140"
  %"shl.75" = shl i64 %"or.64", %"zext.141"
  %"lshr.3" = lshr i64 %"shl.75", 32
  %"trunc32.41" = trunc i64 %"lshr.3" to i32
  store i32 %"trunc32.41", ptr %"UR5"
  ; IMAD R16, R4, c[0x0][0x0], R5
  %".1677" = load i32, ptr %"R4"
  %"nvvm_blockdim_x.2" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".1678" = load i32, ptr %"R5"
  %"imad_mul.35" = mul i32 %".1677", %"nvvm_blockdim_x.2"
  %"imad_add.36" = add i32 %"imad_mul.35", %".1678"
  store i32 %"imad_add.36", ptr %"R16"
  ; IMAD.MOV.U32 R19, RZ, RZ, R11
  %".1681" = load i32, ptr %"R11"
  %"imad_mul.36" = mul i32 0, 0
  %"imad_add.37" = add i32 %"imad_mul.36", %".1681"
  store i32 %"imad_add.37", ptr %"R19"
  br label %".L_x_7"
.L_x_7:
  ; IMAD.WIDE R4, R16, R9, c[0x0][0x180]
  %".1685" = load i32, ptr %"R16"
  %".1686" = load i32, ptr %"R9"
  %"imad_ext1.15" = zext i32 %".1685" to i64
  %"imad_ext2.15" = zext i32 %".1686" to i64
  %"imad_mul.37" = mul i64 %"imad_ext1.15", %"imad_ext2.15"
  %".1687" = ptrtoint ptr %"Arg_4" to i64
  %"imad_add.38" = add i64 %"imad_mul.37", %".1687"
  %".1688" = and i64 %"imad_add.38", 18446744069414584320
  %".1689" = lshr i64 %".1688", 32
  %"trunc32.42" = trunc i64 %".1689" to i32
  %"trunc32.43" = trunc i64 %"imad_add.38" to i32
  store i32 %"trunc32.43", ptr %"R4"
  store i32 %"trunc32.42", ptr %"R5"
  ; MOV R11, R19
  %".1693" = load i32, ptr %"R19"
  store i32 %".1693", ptr %"R11"
  ; IADD3 R12, P0, R4, UR7, RZ
  %".1696" = load i32, ptr %"R4"
  %".1697" = load i32, ptr %"UR7"
  %".1698" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1696", i32 %".1697")
  %".1699" = extractvalue {i32, i1} %".1698", 0
  %".1700" = extractvalue {i32, i1} %".1698", 1
  %".1701" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1699", i32 0)
  %".1702" = extractvalue {i32, i1} %".1701", 0
  %".1703" = extractvalue {i32, i1} %".1701", 1
  %".1704" = or i1 %".1700", %".1703"
  store i32 %".1702", ptr %"R12"
  store i1 %".1704", ptr %"P0"
  ; UMOV UR4, UR7
  %".1708" = load i32, ptr %"UR7"
  store i32 %".1708", ptr %"UR4"
  ; LDG.E.CONSTANT.SYS R4, [R4]
  %".1711" = load i32, ptr %"R4"
  %"zext.142" = zext i32 %".1711" to i64
  %".1712" = load i32, ptr %"R5"
  %"zext.143" = zext i32 %".1712" to i64
  %"shl.76" = shl i64 %"zext.143", 32
  %"or.65" = or i64 %"shl.76", %"zext.142"
  %"inttoptr_bytes.53" = inttoptr i64 %"or.65" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".1713" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".1714" = bitcast ptr %"R4" to ptr
  store float %".1713", ptr %".1714"
  ; IADD3.X R13, R5, UR5, RZ, P0, !PT
  %".1717" = load i32, ptr %"R5"
  %".1718" = load i32, ptr %"UR5"
  %".1719" = load i1, ptr %"P0"
  %".1720" = xor i1 1, -1
  %".1721" = zext i1 %".1719" to i32
  %".1722" = zext i1 %".1720" to i32
  %"add.126" = add i32 %".1717", %".1718"
  %"add.127" = add i32 %"add.126", 0
  %"add.128" = add i32 %"add.127", %".1721"
  %"add.129" = add i32 %"add.128", %".1722"
  store i32 %"add.129", ptr %"R13"
  ; IADD3 R14, P0, R12, UR7, RZ
  %".1725" = load i32, ptr %"R12"
  %".1726" = load i32, ptr %"UR7"
  %".1727" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1725", i32 %".1726")
  %".1728" = extractvalue {i32, i1} %".1727", 0
  %".1729" = extractvalue {i32, i1} %".1727", 1
  %".1730" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1728", i32 0)
  %".1731" = extractvalue {i32, i1} %".1730", 0
  %".1732" = extractvalue {i32, i1} %".1730", 1
  %".1733" = or i1 %".1729", %".1732"
  store i32 %".1731", ptr %"R14"
  store i1 %".1733", ptr %"P0"
  ; LDG.E.CONSTANT.SYS R11, [R10]
  %".1737" = load i32, ptr %"R10"
  %"zext.144" = zext i32 %".1737" to i64
  %".1738" = load i32, ptr %"R11"
  %"zext.145" = zext i32 %".1738" to i64
  %"shl.77" = shl i64 %"zext.145", 32
  %"or.66" = or i64 %"shl.77", %"zext.144"
  %"inttoptr_bytes.54" = inttoptr i64 %"or.66" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".1739" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".1740" = bitcast ptr %"R11" to ptr
  store float %".1739", ptr %".1740"
  ; IADD3.X R15, R13, UR5, RZ, P0, !PT
  %".1743" = load i32, ptr %"R13"
  %".1744" = load i32, ptr %"UR5"
  %".1745" = load i1, ptr %"P0"
  %".1746" = xor i1 1, -1
  %".1747" = zext i1 %".1745" to i32
  %".1748" = zext i1 %".1746" to i32
  %"add.130" = add i32 %".1743", %".1744"
  %"add.131" = add i32 %"add.130", 0
  %"add.132" = add i32 %"add.131", %".1747"
  %"add.133" = add i32 %"add.132", %".1748"
  store i32 %"add.133", ptr %"R15"
  ; LDG.E.CONSTANT.SYS R12, [R12]
  %".1751" = load i32, ptr %"R12"
  %"zext.146" = zext i32 %".1751" to i64
  %".1752" = load i32, ptr %"R13"
  %"zext.147" = zext i32 %".1752" to i64
  %"shl.78" = shl i64 %"zext.147", 32
  %"or.67" = or i64 %"shl.78", %"zext.146"
  %"inttoptr_bytes.55" = inttoptr i64 %"or.67" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".1753" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".1754" = bitcast ptr %"R12" to ptr
  store float %".1753", ptr %".1754"
  ; LDG.E.CONSTANT.SYS R17, [R14]
  %".1757" = load i32, ptr %"R14"
  %"zext.148" = zext i32 %".1757" to i64
  %".1758" = load i32, ptr %"R15"
  %"zext.149" = zext i32 %".1758" to i64
  %"shl.79" = shl i64 %"zext.149", 32
  %"or.68" = or i64 %"shl.79", %"zext.148"
  %"inttoptr_bytes.56" = inttoptr i64 %"or.68" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".1759" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".1760" = bitcast ptr %"R17" to ptr
  store float %".1759", ptr %".1760"
  ; LDG.E.CONSTANT.SYS R18, [R14.64+UR4]
  %".1763" = load i32, ptr %"R14"
  %"zext.150" = zext i32 %".1763" to i64
  %".1764" = load i32, ptr %"R15"
  %"zext.151" = zext i32 %".1764" to i64
  %"shl.80" = shl i64 %"zext.151", 32
  %"or.69" = or i64 %"shl.80", %"zext.150"
  %"val_UR4.3" = load i32, ptr %"UR4"
  %"sext_UR4.3" = sext i32 %"val_UR4.3" to i64
  %"base_plus_reg_offset.3" = add i64 %"or.69", %"sext_UR4.3"
  %"inttoptr_bytes.57" = inttoptr i64 %"base_plus_reg_offset.3" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".1765" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".1766" = bitcast ptr %"R18" to ptr
  store float %".1765", ptr %".1766"
  ; UIADD3 UR6, UR6, 0x1, URZ
  %".1769" = load i32, ptr %"UR6"
  %".1770" = add i32 %".1769", 1
  %".1771" = add i32 %".1770", 0
  store i32 %".1771", ptr %"UR6"
  ; ISETP.NE.AND P0, PT, RZ, UR6, PT
  %".1774" = load i32, ptr %"UR6"
  %".1775" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 0, %".1774"
  %".1776" = xor i1 %"cmp.7", -1
  %".1777" = and i1 %"cmp.7", %".1775"
  %".1778" = and i1 %".1776", %".1775"
  store i1 %".1777", ptr %"P0"
  ; IMAD.MOV.U32 R21, RZ, RZ, c[0x0][0x1b0]
  %"imad_mul.38" = mul i32 0, 0
  %"imad_add.39" = add i32 %"imad_mul.38", %"Arg_11"
  store i32 %"imad_add.39", ptr %"R21"
  ; IADD3 R10, P1, R10, 0x4, RZ
  %".1783" = load i32, ptr %"R10"
  %".1784" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1783", i32 4)
  %".1785" = extractvalue {i32, i1} %".1784", 0
  %".1786" = extractvalue {i32, i1} %".1784", 1
  %".1787" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1785", i32 0)
  %".1788" = extractvalue {i32, i1} %".1787", 0
  %".1789" = extractvalue {i32, i1} %".1787", 1
  %".1790" = or i1 %".1786", %".1789"
  store i32 %".1788", ptr %"R10"
  store i1 %".1790", ptr %"P1"
  ; LEA R16, R21, R16, 0x2
  %".1794" = load i32, ptr %"R21"
  %".1795" = load i32, ptr %"R16"
  %"shl.81" = shl i32 %".1794", 2
  %"add.134" = add i32 %"shl.81", %".1795"
  store i32 %"add.134", ptr %"R16"
  ; IMAD.X R19, RZ, RZ, R19, P1
  %".1798" = load i32, ptr %"R19"
  %".1799" = load i1, ptr %"P1"
  %"imad_mul.39" = mul i32 0, 0
  %"imad_add.40" = add i32 %"imad_mul.39", %".1798"
  %"imad_ext4" = zext i1 %".1799" to i32
  %"imad_add_x" = add i32 %"imad_add.40", %"imad_ext4"
  store i32 %"imad_add_x", ptr %"R19"
  ; FFMA R3, R4, R11, R3
  %".1802" = load float, ptr %"R4"
  %".1803" = load float, ptr %"R11"
  %".1804" = load float, ptr %"R3"
  %"fmul.36" = fmul float %".1802", %".1803"
  %"fadd.40" = fadd float %"fmul.36", %".1804"
  %".1805" = bitcast ptr %"R3" to ptr
  store float %"fadd.40", ptr %".1805"
  ; FFMA R2, R11.reuse, R12, R2
  %".1808" = load float, ptr %"R11"
  %".1809" = load float, ptr %"R12"
  %".1810" = load float, ptr %"R2"
  %"fmul.37" = fmul float %".1808", %".1809"
  %"fadd.41" = fadd float %"fmul.37", %".1810"
  %".1811" = bitcast ptr %"R2" to ptr
  store float %"fadd.41", ptr %".1811"
  ; FFMA R0, R11.reuse, R17, R0
  %".1814" = load float, ptr %"R11"
  %".1815" = load float, ptr %"R17"
  %".1816" = load float, ptr %"R0"
  %"fmul.38" = fmul float %".1814", %".1815"
  %"fadd.42" = fadd float %"fmul.38", %".1816"
  %".1817" = bitcast ptr %"R0" to ptr
  store float %"fadd.42", ptr %".1817"
  ; FFMA R8, R11, R18, R8
  %".1820" = load float, ptr %"R11"
  %".1821" = load float, ptr %"R18"
  %".1822" = load float, ptr %"R8"
  %"fmul.39" = fmul float %".1820", %".1821"
  %"fadd.43" = fadd float %"fmul.39", %".1822"
  %".1823" = bitcast ptr %"R8" to ptr
  store float %"fadd.43", ptr %".1823"
  ; @P0 BRA `(.L_x_7)
  %".1826" = load i1, ptr %"P0"
  %".1827" = icmp eq i1 %".1826", 1
  br i1 %".1827", label %".L_x_7", label %".L_x_4"
.L_x_4:
  ; FSETP.GE.AND P1, PT, |R0|, 0.60000002384185791016, PT
  %".1830" = load float, ptr %"R0"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".1830")
  %".1831" = load i1, ptr %"PT"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".1832" = xor i1 %"fcmp_unordered", -1
  %".1833" = and i1 %"fcmp_unordered", %".1831"
  %".1834" = and i1 %".1832", %".1831"
  store i1 %".1833", ptr %"P1"
  ; IMAD R6, R7, c[0x0][0x1b0], R6
  %".1837" = load i32, ptr %"R7"
  %".1838" = load i32, ptr %"R6"
  %"imad_mul.40" = mul i32 %".1837", %"Arg_11"
  %"imad_add.41" = add i32 %"imad_mul.40", %".1838"
  store i32 %"imad_add.41", ptr %"R6"
  ; MOV R13, 0x3bbb989d
  %".1841" = bitcast ptr %"R13" to ptr
  store float 0x41cdddcc40000000, ptr %".1841"
  ; IMAD.MOV.U32 R14, RZ, RZ, 0x437c0000
  %"imad_mul.41" = mul i32 0, 0
  %"imad_add.42" = add i32 %"imad_mul.41", 1132199936
  store i32 %"imad_add.42", ptr %"R14"
  ; IMAD.WIDE R4, R6, R9, c[0x0][0x170]
  %".1846" = load i32, ptr %"R6"
  %".1847" = load i32, ptr %"R9"
  %"imad_ext1.16" = zext i32 %".1846" to i64
  %"imad_ext2.16" = zext i32 %".1847" to i64
  %"imad_mul.42" = mul i64 %"imad_ext1.16", %"imad_ext2.16"
  %".1848" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.43" = add i64 %"imad_mul.42", %".1848"
  %".1849" = and i64 %"imad_add.43", 18446744069414584320
  %".1850" = lshr i64 %".1849", 32
  %"trunc32.44" = trunc i64 %".1850" to i32
  %"trunc32.45" = trunc i64 %"imad_add.43" to i32
  store i32 %"trunc32.45", ptr %"R4"
  store i32 %"trunc32.44", ptr %"R5"
  ; FFMA.SAT R7, -R2, R13, 0.5
  %".1854" = load float, ptr %"R2"
  %".1855" = fneg float %".1854"
  %".1856" = load float, ptr %"R13"
  %"fmul.40" = fmul float %".1855", %".1856"
  %"fadd.44" = fadd float %"fmul.40", 0x3fe0000000000000
  %".1857" = bitcast ptr %"R7" to ptr
  store float %"fadd.44", ptr %".1857"
  ; @P1 FMUL R11, |R0|.reuse, 2.8853900432586669922
  %".1860" = load i1, ptr %"P1"
  %".1861" = icmp eq i1 %".1860", 1
  br i1 %".1861", label %".L_x_4_conditionalExpr_0x11f0", label %".L_x_4_split_0x1200"
.L_x_4_conditionalExpr_0x11f0:
  ; FMUL R11, |R0|.reuse, 2.8853900432586669922
  %".1864" = load float, ptr %"R0"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".1864")
  %"fmul.41" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  %".1865" = bitcast ptr %"R11" to ptr
  store float %"fmul.41", ptr %".1865"
  ; BRA `(.L_x_4_split_0x1200)
  br label %".L_x_4_split_0x1200"
.L_x_4_split_0x1200:
  ; LDG.E.CONSTANT.SYS R4, [R4]
  %".1870" = load i32, ptr %"R4"
  %"zext.152" = zext i32 %".1870" to i64
  %".1871" = load i32, ptr %"R5"
  %"zext.153" = zext i32 %".1871" to i64
  %"shl.82" = shl i64 %"zext.153", 32
  %"or.70" = or i64 %"shl.82", %"zext.152"
  %"inttoptr_bytes.58" = inttoptr i64 %"or.70" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".1872" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".1873" = bitcast ptr %"R4" to ptr
  store float %".1872", ptr %".1873"
  ; FFMA.RM R7, R7, R14, 12582913
  %".1876" = load float, ptr %"R7"
  %".1877" = load float, ptr %"R14"
  %"fmul.42" = fmul float %".1876", %".1877"
  %"fadd.45" = fadd float %"fmul.42", 0x4168000020000000
  %".1878" = bitcast ptr %"R7" to ptr
  store float %"fadd.45", ptr %".1878"
  ; @P1 FSETP.GE.AND P0, PT, |R0|, 9.010913848876953125, PT
  %".1881" = load i1, ptr %"P1"
  %".1882" = icmp eq i1 %".1881", 1
  br i1 %".1882", label %".L_x_4_split_0x1200_conditionalExpr_0x1220", label %".L_x_4_split_0x1230"
.L_x_4_split_0x1200_conditionalExpr_0x1220:
  ; FSETP.GE.AND P0, PT, |R0|, 9.010913848876953125, PT
  %".1885" = load float, ptr %"R0"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".1885")
  %".1886" = load i1, ptr %"PT"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".1887" = xor i1 %"fcmp_unordered.1", -1
  %".1888" = and i1 %"fcmp_unordered.1", %".1886"
  %".1889" = and i1 %".1887", %".1886"
  store i1 %".1888", ptr %"P0"
  ; BRA `(.L_x_4_split_0x1230)
  br label %".L_x_4_split_0x1230"
.L_x_4_split_0x1230:
  ; BMOV.32.CLEAR RZ, B0
  ; @P1 MOV R16, 0x3f800000
  %".1895" = load i1, ptr %"P1"
  %".1896" = icmp eq i1 %".1895", 1
  br i1 %".1896", label %".L_x_4_split_0x1230_conditionalExpr_0x1240", label %".L_x_4_split_0x1250"
.L_x_4_split_0x1230_conditionalExpr_0x1240:
  ; MOV R16, 0x3f800000
  %".1899" = bitcast ptr %"R16" to ptr
  store float 0x41cfc00000000000, ptr %".1899"
  ; BRA `(.L_x_4_split_0x1250)
  br label %".L_x_4_split_0x1250"
.L_x_4_split_0x1250:
  ; @P1 MUFU.EX2 R11, R11
  %".1904" = load i1, ptr %"P1"
  %".1905" = icmp eq i1 %".1904", 1
  br i1 %".1905", label %".L_x_4_split_0x1250_conditionalExpr_0x1250", label %".L_x_4_split_0x1260"
.L_x_4_split_0x1250_conditionalExpr_0x1250:
  ; MUFU.EX2 R11, R11
  %".1908" = load float, ptr %"R11"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1908")
  %".1909" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result", ptr %".1909"
  ; BRA `(.L_x_4_split_0x1260)
  br label %".L_x_4_split_0x1260"
.L_x_4_split_0x1260:
  ; FADD R9, R7.reuse, -12583039
  %".1914" = load float, ptr %"R7"
  %"fadd.46" = fadd float %".1914", 0xc168000fe0000000
  %".1915" = bitcast ptr %"R9" to ptr
  store float %"fadd.46", ptr %".1915"
  ; SHF.L.U32 R7, R7, 0x17, RZ
  %".1918" = icmp ult i32 23, 32
  %"SHF_min.12" = select  i1 %".1918", i32 23, i32 32
  %".1919" = load i32, ptr %"R7"
  %"zext.154" = zext i32 0 to i64
  %"zext.155" = zext i32 %".1919" to i64
  %"zext.156" = zext i32 23 to i64
  %"shl.83" = shl i64 %"zext.154", 32
  %"or.71" = or i64 %"shl.83", %"zext.155"
  %"shl.84" = shl i64 %"or.71", %"zext.156"
  %"and.5" = and i64 %"shl.84", 4294967295
  %"trunc32.46" = trunc i64 %"and.5" to i32
  store i32 %"trunc32.46", ptr %"R7"
  ; BSSY B0, `(.L_x_8)
  ; FFMA.SAT R5, -R8, R13, 0.5
  %".1923" = load float, ptr %"R8"
  %".1924" = fneg float %".1923"
  %".1925" = load float, ptr %"R13"
  %"fmul.43" = fmul float %".1924", %".1925"
  %"fadd.47" = fadd float %"fmul.43", 0x3fe0000000000000
  %".1926" = bitcast ptr %"R5" to ptr
  store float %"fadd.47", ptr %".1926"
  ; FFMA R9, -R2, 1.4426950216293334961, -R9
  %".1929" = load float, ptr %"R2"
  %".1930" = fneg float %".1929"
  %".1931" = load float, ptr %"R9"
  %".1932" = fneg float %".1931"
  %"fmul.44" = fmul float %".1930", 0x3ff7154760000000
  %"fadd.48" = fadd float %"fmul.44", %".1932"
  %".1933" = bitcast ptr %"R9" to ptr
  store float %"fadd.48", ptr %".1933"
  ; FFMA R9, -R2, 1.925963033500011079e-08, R9
  %".1936" = load float, ptr %"R2"
  %".1937" = fneg float %".1936"
  %".1938" = load float, ptr %"R9"
  %"fmul.45" = fmul float %".1937", 0x3e54ae0c00000000
  %"fadd.49" = fadd float %"fmul.45", %".1938"
  %".1939" = bitcast ptr %"R9" to ptr
  store float %"fadd.49", ptr %".1939"
  ; FFMA.SAT R2, -R3, R13, 0.5
  %".1942" = load float, ptr %"R3"
  %".1943" = fneg float %".1942"
  %".1944" = load float, ptr %"R13"
  %"fmul.46" = fmul float %".1943", %".1944"
  %"fadd.50" = fadd float %"fmul.46", 0x3fe0000000000000
  %".1945" = bitcast ptr %"R2" to ptr
  store float %"fadd.50", ptr %".1945"
  ; MUFU.EX2 R12, R9
  %".1948" = load float, ptr %"R9"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".1948")
  %".1949" = bitcast ptr %"R12" to ptr
  store float %"llvm_exp2_f32_result.1", ptr %".1949"
  ; @P1 FADD R13, R11, 1
  %".1952" = load i1, ptr %"P1"
  %".1953" = icmp eq i1 %".1952", 1
  br i1 %".1953", label %".L_x_4_split_0x1260_conditionalExpr_0x12e0", label %".L_x_4_split_0x12f0"
.L_x_4_split_0x1260_conditionalExpr_0x12e0:
  ; FADD R13, R11, 1
  %".1956" = load float, ptr %"R11"
  %"fadd.51" = fadd float %".1956", 0x3ff0000000000000
  %".1957" = bitcast ptr %"R13" to ptr
  store float %"fadd.51", ptr %".1957"
  ; BRA `(.L_x_4_split_0x12f0)
  br label %".L_x_4_split_0x12f0"
.L_x_4_split_0x12f0:
  ; FFMA.RM R2, R2, R14.reuse, 12582913
  %".1962" = load float, ptr %"R2"
  %".1963" = load float, ptr %"R14"
  %"fmul.47" = fmul float %".1962", %".1963"
  %"fadd.52" = fadd float %"fmul.47", 0x4168000020000000
  %".1964" = bitcast ptr %"R2" to ptr
  store float %"fadd.52", ptr %".1964"
  ; FFMA.RM R14, R5, R14, 12582913
  %".1967" = load float, ptr %"R5"
  %".1968" = load float, ptr %"R14"
  %"fmul.48" = fmul float %".1967", %".1968"
  %"fadd.53" = fadd float %"fmul.48", 0x4168000020000000
  %".1969" = bitcast ptr %"R14" to ptr
  store float %"fadd.53", ptr %".1969"
  ; FADD R10, R2, -12583039
  %".1972" = load float, ptr %"R2"
  %"fadd.54" = fadd float %".1972", 0xc168000fe0000000
  %".1973" = bitcast ptr %"R10" to ptr
  store float %"fadd.54", ptr %".1973"
  ; @P1 MUFU.RCP R13, R13
  %".1976" = load i1, ptr %"P1"
  %".1977" = icmp eq i1 %".1976", 1
  br i1 %".1977", label %".L_x_4_split_0x12f0_conditionalExpr_0x1320", label %".L_x_4_split_0x1330"
.L_x_4_split_0x12f0_conditionalExpr_0x1320:
  ; MUFU.RCP R13, R13
  %".1980" = load float, ptr %"R13"
  %".1981" = fdiv float 0x3ff0000000000000, %".1980"
  %".1982" = bitcast ptr %"R13" to ptr
  store float %".1981", ptr %".1982"
  ; BRA `(.L_x_4_split_0x1330)
  br label %".L_x_4_split_0x1330"
.L_x_4_split_0x1330:
  ; FADD R5, R14.reuse, -12583039
  %".1987" = load float, ptr %"R14"
  %"fadd.55" = fadd float %".1987", 0xc168000fe0000000
  %".1988" = bitcast ptr %"R5" to ptr
  store float %"fadd.55", ptr %".1988"
  ; SHF.L.U32 R14, R14, 0x17, RZ
  %".1991" = icmp ult i32 23, 32
  %"SHF_min.13" = select  i1 %".1991", i32 23, i32 32
  %".1992" = load i32, ptr %"R14"
  %"zext.157" = zext i32 0 to i64
  %"zext.158" = zext i32 %".1992" to i64
  %"zext.159" = zext i32 23 to i64
  %"shl.85" = shl i64 %"zext.157", 32
  %"or.72" = or i64 %"shl.85", %"zext.158"
  %"shl.86" = shl i64 %"or.72", %"zext.159"
  %"and.6" = and i64 %"shl.86", 4294967295
  %"trunc32.47" = trunc i64 %"and.6" to i32
  store i32 %"trunc32.47", ptr %"R14"
  ; FFMA R10, -R3, 1.4426950216293334961, -R10
  %".1995" = load float, ptr %"R3"
  %".1996" = fneg float %".1995"
  %".1997" = load float, ptr %"R10"
  %".1998" = fneg float %".1997"
  %"fmul.49" = fmul float %".1996", 0x3ff7154760000000
  %"fadd.56" = fadd float %"fmul.49", %".1998"
  %".1999" = bitcast ptr %"R10" to ptr
  store float %"fadd.56", ptr %".1999"
  ; FFMA R5, -R8.reuse, 1.4426950216293334961, -R5
  %".2002" = load float, ptr %"R8"
  %".2003" = fneg float %".2002"
  %".2004" = load float, ptr %"R5"
  %".2005" = fneg float %".2004"
  %"fmul.50" = fmul float %".2003", 0x3ff7154760000000
  %"fadd.57" = fadd float %"fmul.50", %".2005"
  %".2006" = bitcast ptr %"R5" to ptr
  store float %"fadd.57", ptr %".2006"
  ; FFMA R10, -R3, 1.925963033500011079e-08, R10
  %".2009" = load float, ptr %"R3"
  %".2010" = fneg float %".2009"
  %".2011" = load float, ptr %"R10"
  %"fmul.51" = fmul float %".2010", 0x3e54ae0c00000000
  %"fadd.58" = fadd float %"fmul.51", %".2011"
  %".2012" = bitcast ptr %"R10" to ptr
  store float %"fadd.58", ptr %".2012"
  ; FFMA R15, R7, R12, 1
  %".2015" = load float, ptr %"R7"
  %".2016" = load float, ptr %"R12"
  %"fmul.52" = fmul float %".2015", %".2016"
  %"fadd.59" = fadd float %"fmul.52", 0x3ff0000000000000
  %".2017" = bitcast ptr %"R15" to ptr
  store float %"fadd.59", ptr %".2017"
  ; FFMA R11, -R8, 1.925963033500011079e-08, R5
  %".2020" = load float, ptr %"R8"
  %".2021" = fneg float %".2020"
  %".2022" = load float, ptr %"R5"
  %"fmul.53" = fmul float %".2021", 0x3e54ae0c00000000
  %"fadd.60" = fadd float %"fmul.53", %".2022"
  %".2023" = bitcast ptr %"R11" to ptr
  store float %"fadd.60", ptr %".2023"
  ; @!P1 IMAD.MOV.U32 R8, RZ, RZ, 0x3c80f082
  %".2026" = load i1, ptr %"P1"
  %".2027" = icmp ne i1 %".2026", 1
  br i1 %".2027", label %".L_x_4_split_0x1330_conditionalExpr_0x13a0", label %".L_x_4_split_0x13b0"
.L_x_4_split_0x1330_conditionalExpr_0x13a0:
  ; IMAD.MOV.U32 R8, RZ, RZ, 0x3c80f082
  %"imad_mul.43" = mul i32 0, 0
  %"imad_add.44" = add i32 %"imad_mul.43", 1015083138
  store i32 %"imad_add.44", ptr %"R8"
  ; BRA `(.L_x_4_split_0x13b0)
  br label %".L_x_4_split_0x13b0"
.L_x_4_split_0x13b0:
  ; IADD3 R7, R15, 0x1800000, RZ
  %".2034" = load i32, ptr %"R15"
  %".2035" = add i32 %".2034", 25165824
  %".2036" = add i32 %".2035", 0
  store i32 %".2036", ptr %"R7"
  ; @!P1 FMUL R5, R0, R0
  %".2039" = load i1, ptr %"P1"
  %".2040" = icmp ne i1 %".2039", 1
  br i1 %".2040", label %".L_x_4_split_0x13b0_conditionalExpr_0x13c0", label %".L_x_4_split_0x13d0"
.L_x_4_split_0x13b0_conditionalExpr_0x13c0:
  ; FMUL R5, R0, R0
  %".2043" = load float, ptr %"R0"
  %".2044" = load float, ptr %"R0"
  %"fmul.54" = fmul float %".2043", %".2044"
  %".2045" = bitcast ptr %"R5" to ptr
  store float %"fmul.54", ptr %".2045"
  ; BRA `(.L_x_4_split_0x13d0)
  br label %".L_x_4_split_0x13d0"
.L_x_4_split_0x13d0:
  ; MUFU.EX2 R3, R10
  %".2050" = load float, ptr %"R10"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".2050")
  %".2051" = bitcast ptr %"R3" to ptr
  store float %"llvm_exp2_f32_result.2", ptr %".2051"
  ; @P1 FFMA R13, R13, -2, R16
  %".2054" = load i1, ptr %"P1"
  %".2055" = icmp eq i1 %".2054", 1
  br i1 %".2055", label %".L_x_4_split_0x13d0_conditionalExpr_0x13e0", label %".L_x_4_split_0x13f0"
.L_x_4_split_0x13d0_conditionalExpr_0x13e0:
  ; FFMA R13, R13, -2, R16
  %".2058" = load float, ptr %"R13"
  %".2059" = load float, ptr %"R16"
  %"fmul.55" = fmul float %".2058", 0xc000000000000000
  %"fadd.61" = fadd float %"fmul.55", %".2059"
  %".2060" = bitcast ptr %"R13" to ptr
  store float %"fadd.61", ptr %".2060"
  ; BRA `(.L_x_4_split_0x13f0)
  br label %".L_x_4_split_0x13f0"
.L_x_4_split_0x13f0:
  ; LOP3.LUT R9, R7, 0x7f800000, RZ, 0xc0, !PT
  %".2065" = load i32, ptr %"R7"
  %".2066" = xor i1 1, -1
  %".2067" = and i32 %".2065", 2139095040
  store i32 %".2067", ptr %"R9"
  ; @!P1 FFMA R8, R5, R8, -0.052303962409496307373
  %".2070" = load i1, ptr %"P1"
  %".2071" = icmp ne i1 %".2070", 1
  br i1 %".2071", label %".L_x_4_split_0x13f0_conditionalExpr_0x1400", label %".L_x_4_split_0x1410"
.L_x_4_split_0x13f0_conditionalExpr_0x1400:
  ; FFMA R8, R5, R8, -0.052303962409496307373
  %".2074" = load float, ptr %"R5"
  %".2075" = load float, ptr %"R8"
  %"fmul.56" = fmul float %".2074", %".2075"
  %"fadd.62" = fadd float %"fmul.56", 0xbfaac795c0000000
  %".2076" = bitcast ptr %"R8" to ptr
  store float %"fadd.62", ptr %".2076"
  ; BRA `(.L_x_4_split_0x1410)
  br label %".L_x_4_split_0x1410"
.L_x_4_split_0x1410:
  ; IMAD.SHL.U32 R2, R2, 0x800000, RZ
  %".2081" = load i32, ptr %"R2"
  %"imad_shl.1" = shl i32 %".2081", 8388608
  %"imad_add.45" = add i32 %"imad_shl.1", 0
  store i32 %"imad_add.45", ptr %"R2"
  ; @P1 FSEL R13, R13, 1, !P0
  %".2084" = load i1, ptr %"P1"
  %".2085" = icmp eq i1 %".2084", 1
  br i1 %".2085", label %".L_x_4_split_0x1410_conditionalExpr_0x1420", label %".L_x_4_split_0x1430"
.L_x_4_split_0x1410_conditionalExpr_0x1420:
  ; FSEL R13, R13, 1, !P0
  %".2088" = load float, ptr %"R13"
  %".2089" = load i1, ptr %"P0"
  %".2090" = xor i1 %".2089", -1
  %".2091" = icmp eq i1 %".2090", 1
  %"fsel" = select  i1 %".2091", float %".2088", float 0x3ff0000000000000
  %".2092" = bitcast ptr %"R13" to ptr
  store float %"fsel", ptr %".2092"
  ; BRA `(.L_x_4_split_0x1430)
  br label %".L_x_4_split_0x1430"
.L_x_4_split_0x1430:
  ; @!P1 FFMA R8, R5, R8, 0.1331529766321182251
  %".2097" = load i1, ptr %"P1"
  %".2098" = icmp ne i1 %".2097", 1
  br i1 %".2098", label %".L_x_4_split_0x1430_conditionalExpr_0x1430", label %".L_x_4_split_0x1440"
.L_x_4_split_0x1430_conditionalExpr_0x1430:
  ; FFMA R8, R5, R8, 0.1331529766321182251
  %".2101" = load float, ptr %"R5"
  %".2102" = load float, ptr %"R8"
  %"fmul.57" = fmul float %".2101", %".2102"
  %"fadd.63" = fadd float %"fmul.57", 0x3fc10b2820000000
  %".2103" = bitcast ptr %"R8" to ptr
  store float %"fadd.63", ptr %".2103"
  ; BRA `(.L_x_4_split_0x1440)
  br label %".L_x_4_split_0x1440"
.L_x_4_split_0x1440:
  ; MUFU.EX2 R11, R11
  %".2108" = load float, ptr %"R11"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".2108")
  %".2109" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".2109"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".2112" = load i32, ptr %"R9"
  %".2113" = load i1, ptr %"PT"
  %"cmp.8" = icmp sgt i32 %".2112", 33554431
  %".2114" = xor i1 %"cmp.8", -1
  %".2115" = and i1 %"cmp.8", %".2113"
  %".2116" = and i1 %".2114", %".2113"
  store i1 %".2115", ptr %"P0"
  ; @!P1 FFMA R8, R5, R8, -0.33332768082618713379
  %".2119" = load i1, ptr %"P1"
  %".2120" = icmp ne i1 %".2119", 1
  br i1 %".2120", label %".L_x_4_split_0x1440_conditionalExpr_0x1460", label %".L_x_4_split_0x1470"
.L_x_4_split_0x1440_conditionalExpr_0x1460:
  ; FFMA R8, R5, R8, -0.33332768082618713379
  %".2123" = load float, ptr %"R5"
  %".2124" = load float, ptr %"R8"
  %"fmul.58" = fmul float %".2123", %".2124"
  %"fadd.64" = fadd float %"fmul.58", 0xbfd5553da0000000
  %".2125" = bitcast ptr %"R8" to ptr
  store float %"fadd.64", ptr %".2125"
  ; BRA `(.L_x_4_split_0x1470)
  br label %".L_x_4_split_0x1470"
.L_x_4_split_0x1470:
  ; @P1 LOP3.LUT R10, R13, 0x80000000, R0, 0xf8, !PT
  %".2130" = load i1, ptr %"P1"
  %".2131" = icmp eq i1 %".2130", 1
  br i1 %".2131", label %".L_x_4_split_0x1470_conditionalExpr_0x1470", label %".L_x_4_split_0x1480"
.L_x_4_split_0x1470_conditionalExpr_0x1470:
  ; LOP3.LUT R10, R13, 0x80000000, R0, 0xf8, !PT
  %".2134" = load i32, ptr %"R13"
  %".2135" = load i32, ptr %"R0"
  %".2136" = xor i1 1, -1
  %".2137" = or i32 %".2134", 2147483648
  %".2138" = or i32 %".2134", %".2135"
  %".2139" = and i32 %".2137", %".2138"
  store i32 %".2139", ptr %"R10"
  ; BRA `(.L_x_4_split_0x1480)
  br label %".L_x_4_split_0x1480"
.L_x_4_split_0x1480:
  ; @!P1 FFMA R7, R5, R8, RZ
  %".2144" = load i1, ptr %"P1"
  %".2145" = icmp ne i1 %".2144", 1
  br i1 %".2145", label %".L_x_4_split_0x1480_conditionalExpr_0x1480", label %".L_x_4_split_0x1490"
.L_x_4_split_0x1480_conditionalExpr_0x1480:
  ; FFMA R7, R5, R8, RZ
  %".2148" = load float, ptr %"R5"
  %".2149" = load float, ptr %"R8"
  %"fmul.59" = fmul float %".2148", %".2149"
  %"fadd.65" = fadd float %"fmul.59",              0x0
  %".2150" = bitcast ptr %"R7" to ptr
  store float %"fadd.65", ptr %".2150"
  ; BRA `(.L_x_4_split_0x1490)
  br label %".L_x_4_split_0x1490"
.L_x_4_split_0x1490:
  ; FFMA R2, R2, R3, 1
  %".2155" = load float, ptr %"R2"
  %".2156" = load float, ptr %"R3"
  %"fmul.60" = fmul float %".2155", %".2156"
  %"fadd.66" = fadd float %"fmul.60", 0x3ff0000000000000
  %".2157" = bitcast ptr %"R2" to ptr
  store float %"fadd.66", ptr %".2157"
  ; SHF.R.S32.HI R3, RZ, 0x1f, R6
  %".2160" = icmp ult i32 31, 32
  %"SHF_min.14" = select  i1 %".2160", i32 31, i32 32
  %".2161" = load i32, ptr %"R6"
  %"zext.160" = zext i32 %".2161" to i64
  %"zext.161" = zext i32 0 to i64
  %"zext.162" = zext i32 31 to i64
  %"shl.87" = shl i64 %"zext.160", 32
  %"or.73" = or i64 %"shl.87", %"zext.161"
  %"ashr.6" = ashr i64 %"or.73", %"zext.162"
  %"ashr.7" = ashr i64 %"ashr.6", 32
  %"trunc32.48" = trunc i64 %"ashr.7" to i32
  store i32 %"trunc32.48", ptr %"R3"
  ; @!P1 FFMA R10, R7, R0, R0
  %".2164" = load i1, ptr %"P1"
  %".2165" = icmp ne i1 %".2164", 1
  br i1 %".2165", label %".L_x_4_split_0x1490_conditionalExpr_0x14b0", label %".L_x_4_split_0x14c0"
.L_x_4_split_0x1490_conditionalExpr_0x14b0:
  ; FFMA R10, R7, R0, R0
  %".2168" = load float, ptr %"R7"
  %".2169" = load float, ptr %"R0"
  %".2170" = load float, ptr %"R0"
  %"fmul.61" = fmul float %".2168", %".2169"
  %"fadd.67" = fadd float %"fmul.61", %".2170"
  %".2171" = bitcast ptr %"R10" to ptr
  store float %"fadd.67", ptr %".2171"
  ; BRA `(.L_x_4_split_0x14c0)
  br label %".L_x_4_split_0x14c0"
.L_x_4_split_0x14c0:
  ; FFMA R5, R14, R11, 1
  %".2176" = load float, ptr %"R14"
  %".2177" = load float, ptr %"R11"
  %"fmul.62" = fmul float %".2176", %".2177"
  %"fadd.68" = fadd float %"fmul.62", 0x3ff0000000000000
  %".2178" = bitcast ptr %"R5" to ptr
  store float %"fadd.68", ptr %".2178"
  ; @P0 BRA `(.L_x_9)
  %".2181" = load i1, ptr %"P0"
  %".2182" = icmp eq i1 %".2181", 1
  br i1 %".2182", label %".L_x_9", label %".L_x_4_split_0x14e0_CALL_0x1510"
.L_x_4_split_0x14e0_CALL_0x1510:
  ; MOV R14, 0x1500
  store i32 5376, ptr %"R14"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1:
  ; SHF.L.U32 R0, R15, 0x1, RZ
  %".2189" = icmp ult i32 1, 32
  %"SHF_min.15" = select  i1 %".2189", i32 1, i32 32
  %".2190" = load i32, ptr %"R15"
  %"zext.163" = zext i32 0 to i64
  %"zext.164" = zext i32 %".2190" to i64
  %"zext.165" = zext i32 1 to i64
  %"shl.88" = shl i64 %"zext.163", 32
  %"or.74" = or i64 %"shl.88", %"zext.164"
  %"shl.89" = shl i64 %"or.74", %"zext.165"
  %"and.7" = and i64 %"shl.89", 4294967295
  %"trunc32.49" = trunc i64 %"and.7" to i32
  store i32 %"trunc32.49", ptr %"R0"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_20)
  ; SHF.R.U32.HI R16, RZ, 0x18, R0
  %".2195" = icmp ult i32 24, 32
  %"SHF_min.16" = select  i1 %".2195", i32 24, i32 32
  %".2196" = load i32, ptr %"R0"
  %"zext.166" = zext i32 %".2196" to i64
  %"zext.167" = zext i32 0 to i64
  %"zext.168" = zext i32 24 to i64
  %"shl.90" = shl i64 %"zext.166", 32
  %"or.75" = or i64 %"shl.90", %"zext.167"
  %"lshr.4" = lshr i64 %"or.75", %"zext.168"
  %"lshr.5" = lshr i64 %"lshr.4", 32
  %"trunc32.50" = trunc i64 %"lshr.5" to i32
  store i32 %"trunc32.50", ptr %"R16"
  ; ISETP.NE.U32.AND P0, PT, R16, RZ, PT
  %".2199" = load i32, ptr %"R16"
  %".2200" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".2199", 0
  %".2201" = xor i1 %"cmp.9", -1
  %".2202" = and i1 %"cmp.9", %".2200"
  %".2203" = and i1 %".2201", %".2200"
  store i1 %".2202", ptr %"P0"
  ; @P0 BRA `(.L_x_21)
  %".2206" = load i1, ptr %"P0"
  %".2207" = icmp eq i1 %".2206", 1
  br i1 %".2207", label %".L_x_21...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1:
  ; IMAD.SHL.U32 R0, R15, 0x2, RZ
  %".2210" = load i32, ptr %"R15"
  %"imad_shl.2" = shl i32 %".2210", 2
  %"imad_add.46" = add i32 %"imad_shl.2", 0
  store i32 %"imad_add.46", ptr %"R0"
  ; ISETP.NE.AND P0, PT, R0, RZ, PT
  %".2213" = load i32, ptr %"R0"
  %".2214" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".2213", 0
  %".2215" = xor i1 %"cmp.10", -1
  %".2216" = and i1 %"cmp.10", %".2214"
  %".2217" = and i1 %".2215", %".2214"
  store i1 %".2216", ptr %"P0"
  ; @P0 FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2220" = load i1, ptr %"P0"
  %".2221" = icmp eq i1 %".2220", 1
  br i1 %".2221", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2224" = load float, ptr %"R15"
  %"fmul.63" = fmul float %".2224", 0x43f0000000000000
  %"fadd.69" = fadd float %"fmul.63",              0x0
  %".2225" = bitcast ptr %"R8" to ptr
  store float %"fadd.69", ptr %".2225"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2230" = load float, ptr %"R15"
  %"fmul.64" = fmul float %".2230", 0x43f0000000000000
  %"fadd.70" = fadd float %"fmul.64",              0x0
  %".2231" = bitcast ptr %"R8" to ptr
  store float %"fadd.70", ptr %".2231"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1:
  ; @!P0 MUFU.RCP R0, R15
  %".2236" = load i1, ptr %"P0"
  %".2237" = icmp ne i1 %".2236", 1
  br i1 %".2237", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0:
  ; MUFU.RCP R0, R15
  %".2240" = load float, ptr %"R15"
  %".2241" = fdiv float 0x3ff0000000000000, %".2240"
  %".2242" = bitcast ptr %"R0" to ptr
  store float %".2241", ptr %".2242"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1:
  ; MUFU.RCP R0, R15
  %".2247" = load float, ptr %"R15"
  %".2248" = fdiv float 0x3ff0000000000000, %".2247"
  %".2249" = bitcast ptr %"R0" to ptr
  store float %".2248", ptr %".2249"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1:
  ; @P0 MUFU.RCP R9, R8
  %".2254" = load i1, ptr %"P0"
  %".2255" = icmp eq i1 %".2254", 1
  br i1 %".2255", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00:
  ; MUFU.RCP R9, R8
  %".2258" = load float, ptr %"R8"
  %".2259" = fdiv float 0x3ff0000000000000, %".2258"
  %".2260" = bitcast ptr %"R9" to ptr
  store float %".2259", ptr %".2260"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1:
  ; MUFU.RCP R9, R8
  %".2265" = load float, ptr %"R8"
  %".2266" = fdiv float 0x3ff0000000000000, %".2265"
  %".2267" = bitcast ptr %"R9" to ptr
  store float %".2266", ptr %".2267"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1:
  ; @P0 FFMA R11, R8, R9, -1
  %".2272" = load i1, ptr %"P0"
  %".2273" = icmp eq i1 %".2272", 1
  br i1 %".2273", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10:
  ; FFMA R11, R8, R9, -1
  %".2276" = load float, ptr %"R8"
  %".2277" = load float, ptr %"R9"
  %"fmul.65" = fmul float %".2276", %".2277"
  %"fadd.71" = fadd float %"fmul.65", 0xbff0000000000000
  %".2278" = bitcast ptr %"R11" to ptr
  store float %"fadd.71", ptr %".2278"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1:
  ; FFMA R11, R8, R9, -1
  %".2283" = load float, ptr %"R8"
  %".2284" = load float, ptr %"R9"
  %"fmul.66" = fmul float %".2283", %".2284"
  %"fadd.72" = fadd float %"fmul.66", 0xbff0000000000000
  %".2285" = bitcast ptr %"R11" to ptr
  store float %"fadd.72", ptr %".2285"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1:
  ; @P0 FADD.FTZ R12, -R11, -RZ
  %".2290" = load i1, ptr %"P0"
  %".2291" = icmp eq i1 %".2290", 1
  br i1 %".2291", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20:
  ; FADD.FTZ R12, -R11, -RZ
  %".2294" = load float, ptr %"R11"
  %".2295" = fneg float %".2294"
  %".2296" = call float @"llvm.fabs"(float %".2295")
  %".2297" = fcmp ogt float %".2296",              0x0
  %".2298" = fcmp olt float %".2296", 0x3810000000000000
  %".2299" = and i1 %".2297", %".2298"
  %".2300" = select  i1 %".2299", float              0x0, float %".2295"
  %".2301" = call float @"llvm.fabs"(float              0x0)
  %".2302" = fcmp ogt float %".2301",              0x0
  %".2303" = fcmp olt float %".2301", 0x3810000000000000
  %".2304" = and i1 %".2302", %".2303"
  %".2305" = select  i1 %".2304", float              0x0, float              0x0
  %"fadd.73" = fadd float %".2300", %".2305"
  %".2306" = call float @"llvm.fabs"(float %"fadd.73")
  %".2307" = fcmp ogt float %".2306",              0x0
  %".2308" = fcmp olt float %".2306", 0x3810000000000000
  %".2309" = and i1 %".2307", %".2308"
  %".2310" = select  i1 %".2309", float              0x0, float %"fadd.73"
  %".2311" = bitcast ptr %"R12" to ptr
  store float %".2310", ptr %".2311"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1:
  ; FADD.FTZ R12, -R11, -RZ
  %".2316" = load float, ptr %"R11"
  %".2317" = fneg float %".2316"
  %".2318" = call float @"llvm.fabs"(float %".2317")
  %".2319" = fcmp ogt float %".2318",              0x0
  %".2320" = fcmp olt float %".2318", 0x3810000000000000
  %".2321" = and i1 %".2319", %".2320"
  %".2322" = select  i1 %".2321", float              0x0, float %".2317"
  %".2323" = call float @"llvm.fabs"(float              0x0)
  %".2324" = fcmp ogt float %".2323",              0x0
  %".2325" = fcmp olt float %".2323", 0x3810000000000000
  %".2326" = and i1 %".2324", %".2325"
  %".2327" = select  i1 %".2326", float              0x0, float              0x0
  %"fadd.74" = fadd float %".2322", %".2327"
  %".2328" = call float @"llvm.fabs"(float %"fadd.74")
  %".2329" = fcmp ogt float %".2328",              0x0
  %".2330" = fcmp olt float %".2328", 0x3810000000000000
  %".2331" = and i1 %".2329", %".2330"
  %".2332" = select  i1 %".2331", float              0x0, float %"fadd.74"
  %".2333" = bitcast ptr %"R12" to ptr
  store float %".2332", ptr %".2333"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1:
  ; @P0 FFMA R12, R9, R12, R9
  %".2338" = load i1, ptr %"P0"
  %".2339" = icmp eq i1 %".2338", 1
  br i1 %".2339", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30:
  ; FFMA R12, R9, R12, R9
  %".2342" = load float, ptr %"R9"
  %".2343" = load float, ptr %"R12"
  %".2344" = load float, ptr %"R9"
  %"fmul.67" = fmul float %".2342", %".2343"
  %"fadd.75" = fadd float %"fmul.67", %".2344"
  %".2345" = bitcast ptr %"R12" to ptr
  store float %"fadd.75", ptr %".2345"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1:
  ; FFMA R12, R9, R12, R9
  %".2350" = load float, ptr %"R9"
  %".2351" = load float, ptr %"R12"
  %".2352" = load float, ptr %"R9"
  %"fmul.68" = fmul float %".2350", %".2351"
  %"fadd.76" = fadd float %"fmul.68", %".2352"
  %".2353" = bitcast ptr %"R12" to ptr
  store float %"fadd.76", ptr %".2353"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1:
  ; @P0 FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2358" = load i1, ptr %"P0"
  %".2359" = icmp eq i1 %".2358", 1
  br i1 %".2359", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2362" = load float, ptr %"R12"
  %"fmul.69" = fmul float %".2362", 0x43f0000000000000
  %"fadd.77" = fadd float %"fmul.69",              0x0
  %".2363" = bitcast ptr %"R0" to ptr
  store float %"fadd.77", ptr %".2363"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2368" = load float, ptr %"R12"
  %"fmul.70" = fmul float %".2368", 0x43f0000000000000
  %"fadd.78" = fadd float %"fmul.70",              0x0
  %".2369" = bitcast ptr %"R0" to ptr
  store float %"fadd.78", ptr %".2369"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...1:
  ; BRA `(.L_x_22)
  br label %".L_x_22...1"
.L_x_21...1:
  ; IADD3 R18, R16, -0xfd, RZ
  %".2376" = load i32, ptr %"R16"
  %".2377" = add i32 %".2376", -253
  %".2378" = add i32 %".2377", 0
  store i32 %".2378", ptr %"R18"
  ; ISETP.GT.U32.AND P0, PT, R18, 0x1, PT
  %".2381" = load i32, ptr %"R18"
  %".2382" = load i1, ptr %"PT"
  %"cmp.11" = icmp sgt i32 %".2381", 1
  %".2383" = xor i1 %"cmp.11", -1
  %".2384" = and i1 %"cmp.11", %".2382"
  %".2385" = and i1 %".2383", %".2382"
  store i1 %".2384", ptr %"P0"
  ; @P0 BRA `(.L_x_23)
  %".2388" = load i1, ptr %"P0"
  %".2389" = icmp eq i1 %".2388", 1
  br i1 %".2389", label %".L_x_23...1", label %".L_x_21_split_0x1a90...1"
.L_x_21_split_0x1a90...1:
  ; LOP3.LUT R0, R15, 0x7fffff, RZ, 0xc0, !PT
  %".2392" = load i32, ptr %"R15"
  %".2393" = xor i1 1, -1
  %".2394" = and i32 %".2392", 8388607
  store i32 %".2394", ptr %"R0"
  ; MOV R13, 0x3
  store i32 3, ptr %"R13"
  ; LOP3.LUT R0, R0, 0x3f800000, RZ, 0xfc, !PT
  %".2399" = load i32, ptr %"R0"
  %".2400" = xor i1 1, -1
  %".2401" = or i32 %".2399", 1065353216
  store i32 %".2401", ptr %"R0"
  ; SHF.L.U32 R13, R13, R18, RZ
  %".2404" = load i32, ptr %"R18"
  %".2405" = icmp ult i32 %".2404", 32
  %"SHF_min.17" = select  i1 %".2405", i32 %".2404", i32 32
  %".2406" = load i32, ptr %"R13"
  %".2407" = load i32, ptr %"R18"
  %"zext.169" = zext i32 0 to i64
  %"zext.170" = zext i32 %".2406" to i64
  %"zext.171" = zext i32 %".2407" to i64
  %"shl.91" = shl i64 %"zext.169", 32
  %"or.76" = or i64 %"shl.91", %"zext.170"
  %"shl.92" = shl i64 %"or.76", %"zext.171"
  %"and.8" = and i64 %"shl.92", 4294967295
  %"trunc32.51" = trunc i64 %"and.8" to i32
  store i32 %"trunc32.51", ptr %"R13"
  ; MUFU.RCP R9, R0
  %".2410" = load i32, ptr %"R0"
  %"sint_to_f32" = sitofp i32 %".2410" to float
  %".2411" = fdiv float 0x3ff0000000000000, %"sint_to_f32"
  %".2412" = fptosi float %".2411" to i32
  store i32 %".2412", ptr %"R9"
  ; FFMA R8, R0, R9, -1
  %".2415" = load float, ptr %"R0"
  %".2416" = load float, ptr %"R9"
  %"fmul.71" = fmul float %".2415", %".2416"
  %"fadd.79" = fadd float %"fmul.71", 0xbff0000000000000
  %".2417" = bitcast ptr %"R8" to ptr
  store float %"fadd.79", ptr %".2417"
  ; FADD.FTZ R8, -R8, -RZ
  %".2420" = load float, ptr %"R8"
  %".2421" = fneg float %".2420"
  %".2422" = call float @"llvm.fabs"(float %".2421")
  %".2423" = fcmp ogt float %".2422",              0x0
  %".2424" = fcmp olt float %".2422", 0x3810000000000000
  %".2425" = and i1 %".2423", %".2424"
  %".2426" = select  i1 %".2425", float              0x0, float %".2421"
  %".2427" = call float @"llvm.fabs"(float              0x0)
  %".2428" = fcmp ogt float %".2427",              0x0
  %".2429" = fcmp olt float %".2427", 0x3810000000000000
  %".2430" = and i1 %".2428", %".2429"
  %".2431" = select  i1 %".2430", float              0x0, float              0x0
  %"fadd.80" = fadd float %".2426", %".2431"
  %".2432" = call float @"llvm.fabs"(float %"fadd.80")
  %".2433" = fcmp ogt float %".2432",              0x0
  %".2434" = fcmp olt float %".2432", 0x3810000000000000
  %".2435" = and i1 %".2433", %".2434"
  %".2436" = select  i1 %".2435", float              0x0, float %"fadd.80"
  %".2437" = bitcast ptr %"R8" to ptr
  store float %".2436", ptr %".2437"
  ; FFMA.RM R11, R9.reuse, R8.reuse, R9.reuse
  %".2440" = load float, ptr %"R9"
  %".2441" = load float, ptr %"R8"
  %".2442" = load float, ptr %"R9"
  %"fmul.72" = fmul float %".2440", %".2441"
  %"fadd.81" = fadd float %"fmul.72", %".2442"
  %".2443" = bitcast ptr %"R11" to ptr
  store float %"fadd.81", ptr %".2443"
  ; FFMA.RP R12, R9, R8, R9
  %".2446" = load float, ptr %"R9"
  %".2447" = load float, ptr %"R8"
  %".2448" = load float, ptr %"R9"
  %"fmul.73" = fmul float %".2446", %".2447"
  %"fadd.82" = fadd float %"fmul.73", %".2448"
  %".2449" = bitcast ptr %"R12" to ptr
  store float %"fadd.82", ptr %".2449"
  ; LOP3.LUT R8, R11.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".2452" = load i32, ptr %"R11"
  %".2453" = xor i1 1, -1
  %".2454" = and i32 %".2452", 8388607
  store i32 %".2454", ptr %"R8"
  ; FSETP.NEU.FTZ.AND P0, PT, R11, R12, PT
  %".2457" = load float, ptr %"R11"
  %".2458" = load float, ptr %"R12"
  %".2459" = load i1, ptr %"PT"
  %".2460" = call float @"llvm.fabs"(float %".2457")
  %".2461" = fcmp ogt float %".2460",              0x0
  %".2462" = fcmp olt float %".2460", 0x3810000000000000
  %".2463" = and i1 %".2461", %".2462"
  %".2464" = select  i1 %".2463", float              0x0, float %".2457"
  %".2465" = call float @"llvm.fabs"(float %".2458")
  %".2466" = fcmp ogt float %".2465",              0x0
  %".2467" = fcmp olt float %".2465", 0x3810000000000000
  %".2468" = and i1 %".2466", %".2467"
  %".2469" = select  i1 %".2468", float              0x0, float %".2458"
  %"fcmp_ordered" = fcmp une float %".2464", %".2469"
  %".2470" = xor i1 %"fcmp_ordered", -1
  %".2471" = and i1 %"fcmp_ordered", %".2459"
  %".2472" = and i1 %".2470", %".2459"
  store i1 %".2471", ptr %"P0"
  ; LOP3.LUT R8, R8, 0x800000, RZ, 0xfc, !PT
  %".2475" = load i32, ptr %"R8"
  %".2476" = xor i1 1, -1
  %".2477" = or i32 %".2475", 8388608
  store i32 %".2477", ptr %"R8"
  ; SEL R9, RZ, 0xffffffff, !P0
  %".2480" = load i1, ptr %"P0"
  %".2481" = xor i1 %".2480", -1
  %".2482" = icmp eq i1 %".2481", 1
  %"sel" = select  i1 %".2482", i32 0, i32 4294967295
  store i32 %"sel", ptr %"R9"
  ; LOP3.LUT R13, R13, R8, RZ, 0xc0, !PT
  %".2485" = load i32, ptr %"R13"
  %".2486" = load i32, ptr %"R8"
  %".2487" = xor i1 1, -1
  %".2488" = and i32 %".2485", %".2486"
  store i32 %".2488", ptr %"R13"
  ; IMAD.MOV R9, RZ, RZ, -R9
  %".2491" = load i32, ptr %"R9"
  %".2492" = sub i32 0, %".2491"
  %"imad_mul.44" = mul i32 0, 0
  %"imad_add.47" = add i32 %"imad_mul.44", %".2492"
  store i32 %"imad_add.47", ptr %"R9"
  ; SHF.R.U32.HI R13, RZ, R18, R13
  %".2495" = load i32, ptr %"R18"
  %".2496" = icmp ult i32 %".2495", 32
  %"SHF_min.18" = select  i1 %".2496", i32 %".2495", i32 32
  %".2497" = load i32, ptr %"R13"
  %".2498" = load i32, ptr %"R18"
  %"zext.172" = zext i32 %".2497" to i64
  %"zext.173" = zext i32 0 to i64
  %"zext.174" = zext i32 %".2498" to i64
  %"shl.93" = shl i64 %"zext.172", 32
  %"or.77" = or i64 %"shl.93", %"zext.173"
  %"lshr.6" = lshr i64 %"or.77", %"zext.174"
  %"lshr.7" = lshr i64 %"lshr.6", 32
  %"trunc32.52" = trunc i64 %"lshr.7" to i32
  store i32 %"trunc32.52", ptr %"R13"
  ; LOP3.LUT P1, RZ, R9, R18, R8, 0xf8, !PT
  %".2501" = load i32, ptr %"R9"
  %".2502" = load i32, ptr %"R18"
  %".2503" = load i32, ptr %"R8"
  %".2504" = xor i1 1, -1
  %".2505" = or i32 %".2501", %".2502"
  %".2506" = or i32 %".2501", %".2503"
  %".2507" = and i32 %".2505", %".2506"
  store i32 %".2507", ptr %"RZ"
  %".2509" = icmp ne i32 %".2507", 0
  store i1 %".2509", ptr %"P1"
  ; LOP3.LUT P0, RZ, R13.reuse, 0x1, RZ, 0xc0, !PT
  %".2512" = load i32, ptr %"R13"
  %".2513" = xor i1 1, -1
  %".2514" = and i32 %".2512", 1
  store i32 %".2514", ptr %"RZ"
  %".2516" = icmp ne i32 %".2514", 0
  store i1 %".2516", ptr %"P0"
  ; LOP3.LUT P2, RZ, R13, 0x2, RZ, 0xc0, !PT
  %".2519" = load i32, ptr %"R13"
  %".2520" = xor i1 1, -1
  %".2521" = and i32 %".2519", 2
  store i32 %".2521", ptr %"RZ"
  %".2523" = icmp ne i32 %".2521", 0
  store i1 %".2523", ptr %"P2"
  ; IADD3 R9, R16, -0xfc, RZ
  %".2526" = load i32, ptr %"R16"
  %".2527" = add i32 %".2526", -252
  %".2528" = add i32 %".2527", 0
  store i32 %".2528", ptr %"R9"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".2531" = load i1, ptr %"P0"
  %".2532" = load i1, ptr %"P1"
  %".2533" = or i1 %".2531", %".2532"
  %".2534" = and i1 %".2533", 1
  ; LOP3.LUT P1, RZ, R15, 0x7fffff, RZ, 0xc0, !PT
  %".2536" = load i32, ptr %"R15"
  %".2537" = xor i1 1, -1
  %".2538" = and i32 %".2536", 8388607
  store i32 %".2538", ptr %"RZ"
  %".2540" = icmp ne i32 %".2538", 0
  store i1 %".2540", ptr %"P1"
  ; SEL R0, RZ, 0x1, !P0
  %".2543" = load i1, ptr %"P0"
  %".2544" = xor i1 %".2543", -1
  %".2545" = icmp eq i1 %".2544", 1
  %"sel.1" = select  i1 %".2545", i32 0, i32 1
  store i32 %"sel.1", ptr %"R0"
  ; IADD3 R0, -R0, RZ, RZ
  %".2548" = load i32, ptr %"R0"
  %".2549" = sub i32 0, %".2548"
  %".2550" = add i32 %".2549", 0
  %".2551" = add i32 %".2550", 0
  store i32 %".2551", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, RZ, PT
  %".2554" = load i32, ptr %"R0"
  %".2555" = load i1, ptr %"PT"
  %"cmp.12" = icmp sge i32 %".2554", 0
  %".2556" = xor i1 %"cmp.12", -1
  %".2557" = and i1 %"cmp.12", %".2555"
  %".2558" = and i1 %".2556", %".2555"
  store i1 %".2557", ptr %"P0"
  ; SHF.R.U32.HI R0, RZ, R9, R8
  %".2561" = load i32, ptr %"R9"
  %".2562" = icmp ult i32 %".2561", 32
  %"SHF_min.19" = select  i1 %".2562", i32 %".2561", i32 32
  %".2563" = load i32, ptr %"R8"
  %".2564" = load i32, ptr %"R9"
  %"zext.175" = zext i32 %".2563" to i64
  %"zext.176" = zext i32 0 to i64
  %"zext.177" = zext i32 %".2564" to i64
  %"shl.94" = shl i64 %"zext.175", 32
  %"or.78" = or i64 %"shl.94", %"zext.176"
  %"lshr.8" = lshr i64 %"or.78", %"zext.177"
  %"lshr.9" = lshr i64 %"lshr.8", 32
  %"trunc32.53" = trunc i64 %"lshr.9" to i32
  store i32 %"trunc32.53", ptr %"R0"
  ; @!P0 IADD3 R0, R0, 0x1, RZ
  %".2567" = load i1, ptr %"P0"
  %".2568" = icmp ne i1 %".2567", 1
  br i1 %".2568", label %".L_x_21_split_0x1a90...1_conditionalExpr_0x1c30", label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...1"
.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30:
  ; IADD3 R0, R0, 0x1, RZ
  %".2571" = load i32, ptr %"R0"
  %".2572" = add i32 %".2571", 1
  %".2573" = add i32 %".2572", 0
  store i32 %".2573", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1)
  br label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...1"
.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1:
  ; IADD3 R0, R0, 0x1, RZ
  %".2578" = load i32, ptr %"R0"
  %".2579" = add i32 %".2578", 1
  %".2580" = add i32 %".2579", 0
  store i32 %".2580", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40)
  br label %".L_x_21_split_0x1c40...1"
.L_x_21_split_0x1c40...1:
  ; @!P1 IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".2585" = load i1, ptr %"P1"
  %".2586" = icmp ne i1 %".2585", 1
  br i1 %".2586", label %".L_x_21_split_0x1c40...1_conditionalExpr_0x1c40", label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...1"
.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".2589" = load i32, ptr %"R0"
  %"imad_shl.3" = shl i32 %".2589", 2
  %"imad_add.48" = add i32 %"imad_shl.3", 0
  store i32 %"imad_add.48", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1)
  br label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...1"
.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".2594" = load i32, ptr %"R0"
  %"imad_shl.4" = shl i32 %".2594", 2
  %"imad_add.49" = add i32 %"imad_shl.4", 0
  store i32 %"imad_add.49", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c50)
  br label %".L_x_21_split_0x1c50...1"
.L_x_21_split_0x1c50...1:
  ; LOP3.LUT R0, R0, 0x80000000, R15, 0xf8, !PT
  %".2599" = load i32, ptr %"R0"
  %".2600" = load i32, ptr %"R15"
  %".2601" = xor i1 1, -1
  %".2602" = or i32 %".2599", 2147483648
  %".2603" = or i32 %".2599", %".2600"
  %".2604" = and i32 %".2602", %".2603"
  store i32 %".2604", ptr %"R0"
  ; BRA `(.L_x_22)
  br label %".L_x_22...1"
.L_x_23...1:
  ; MUFU.RCP R0, R15
  %".2609" = load float, ptr %"R15"
  %".2610" = fdiv float 0x3ff0000000000000, %".2609"
  %".2611" = bitcast ptr %"R0" to ptr
  store float %".2610", ptr %".2611"
  br label %".L_x_22...1"
.L_x_22...1:
  ; BSYNC B1
  br label %".L_x_20...1"
.L_x_20...1:
  ; MOV R8, R14
  %".2617" = load i32, ptr %"R14"
  store i32 %".2617", ptr %"R8"
  ; IMAD.MOV.U32 R9, RZ, RZ, 0x0
  %"imad_mul.45" = mul i32 0, 0
  %"imad_add.50" = add i32 %"imad_mul.45", 0
  store i32 %"imad_add.50", ptr %"R9"
  ; RET.REL.NODEC R8, `(_Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"
.L_x_24...1:
  ; BRA `(.L_x_24)
  br label %".L_x_24...1"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath:
  br label %".L_x_4_split_0x14e0_postCALL_0x1510"
.L_x_4_split_0x14e0_postCALL_0x1510:
  ; IMAD.MOV.U32 R7, RZ, RZ, R0
  %".2627" = load i32, ptr %"R0"
  %"imad_mul.46" = mul i32 0, 0
  %"imad_add.51" = add i32 %"imad_mul.46", %".2627"
  store i32 %"imad_add.51", ptr %"R7"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_9:
  ; MUFU.RCP R7, R15
  %".2632" = load float, ptr %"R15"
  %".2633" = fdiv float 0x3ff0000000000000, %".2632"
  %".2634" = bitcast ptr %"R7" to ptr
  store float %".2633", ptr %".2634"
  ; FFMA R0, R15, R7, -1
  %".2637" = load float, ptr %"R15"
  %".2638" = load float, ptr %"R7"
  %"fmul.74" = fmul float %".2637", %".2638"
  %"fadd.83" = fadd float %"fmul.74", 0xbff0000000000000
  %".2639" = bitcast ptr %"R0" to ptr
  store float %"fadd.83", ptr %".2639"
  ; FADD.FTZ R0, -R0, -RZ
  %".2642" = load float, ptr %"R0"
  %".2643" = fneg float %".2642"
  %".2644" = call float @"llvm.fabs"(float %".2643")
  %".2645" = fcmp ogt float %".2644",              0x0
  %".2646" = fcmp olt float %".2644", 0x3810000000000000
  %".2647" = and i1 %".2645", %".2646"
  %".2648" = select  i1 %".2647", float              0x0, float %".2643"
  %".2649" = call float @"llvm.fabs"(float              0x0)
  %".2650" = fcmp ogt float %".2649",              0x0
  %".2651" = fcmp olt float %".2649", 0x3810000000000000
  %".2652" = and i1 %".2650", %".2651"
  %".2653" = select  i1 %".2652", float              0x0, float              0x0
  %"fadd.84" = fadd float %".2648", %".2653"
  %".2654" = call float @"llvm.fabs"(float %"fadd.84")
  %".2655" = fcmp ogt float %".2654",              0x0
  %".2656" = fcmp olt float %".2654", 0x3810000000000000
  %".2657" = and i1 %".2655", %".2656"
  %".2658" = select  i1 %".2657", float              0x0, float %"fadd.84"
  %".2659" = bitcast ptr %"R0" to ptr
  store float %".2658", ptr %".2659"
  ; FFMA R7, R7, R0, R7
  %".2662" = load float, ptr %"R7"
  %".2663" = load float, ptr %"R0"
  %".2664" = load float, ptr %"R7"
  %"fmul.75" = fmul float %".2662", %".2663"
  %"fadd.85" = fadd float %"fmul.75", %".2664"
  %".2665" = bitcast ptr %"R7" to ptr
  store float %"fadd.85", ptr %".2665"
  br label %".L_x_10"
.L_x_10:
  ; BSYNC B0
  br label %".L_x_8"
.L_x_8:
  ; IADD3 R0, R2, 0x1800000, RZ
  %".2671" = load i32, ptr %"R2"
  %".2672" = add i32 %".2671", 25165824
  %".2673" = add i32 %".2672", 0
  store i32 %".2673", ptr %"R0"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_11)
  ; FMUL R4, R4, R7
  %".2678" = load float, ptr %"R4"
  %".2679" = load float, ptr %"R7"
  %"fmul.76" = fmul float %".2678", %".2679"
  %".2680" = bitcast ptr %"R4" to ptr
  store float %"fmul.76", ptr %".2680"
  ; LOP3.LUT R0, R0, 0x7f800000, RZ, 0xc0, !PT
  %".2683" = load i32, ptr %"R0"
  %".2684" = xor i1 1, -1
  %".2685" = and i32 %".2683", 2139095040
  store i32 %".2685", ptr %"R0"
  ; ISETP.GT.U32.AND P0, PT, R0, 0x1ffffff, PT
  %".2688" = load i32, ptr %"R0"
  %".2689" = load i1, ptr %"PT"
  %"cmp.13" = icmp sgt i32 %".2688", 33554431
  %".2690" = xor i1 %"cmp.13", -1
  %".2691" = and i1 %"cmp.13", %".2689"
  %".2692" = and i1 %".2690", %".2689"
  store i1 %".2691", ptr %"P0"
  ; @P0 BRA `(.L_x_12)
  %".2695" = load i1, ptr %"P0"
  %".2696" = icmp eq i1 %".2695", 1
  br i1 %".2696", label %".L_x_12", label %".L_x_8_split_0x15e0_CALL_0x1620"
.L_x_8_split_0x15e0_CALL_0x1620:
  ; MOV R15, R2
  %".2699" = load float, ptr %"R2"
  %".2700" = bitcast ptr %"R15" to ptr
  store float %".2699", ptr %".2700"
  ; MOV R14, 0x1610
  store i32 5648, ptr %"R14"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2:
  ; SHF.L.U32 R0, R15, 0x1, RZ
  %".2707" = icmp ult i32 1, 32
  %"SHF_min.20" = select  i1 %".2707", i32 1, i32 32
  %".2708" = load i32, ptr %"R15"
  %"zext.178" = zext i32 0 to i64
  %"zext.179" = zext i32 %".2708" to i64
  %"zext.180" = zext i32 1 to i64
  %"shl.95" = shl i64 %"zext.178", 32
  %"or.79" = or i64 %"shl.95", %"zext.179"
  %"shl.96" = shl i64 %"or.79", %"zext.180"
  %"and.9" = and i64 %"shl.96", 4294967295
  %"trunc32.54" = trunc i64 %"and.9" to i32
  store i32 %"trunc32.54", ptr %"R0"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_20)
  ; SHF.R.U32.HI R16, RZ, 0x18, R0
  %".2713" = icmp ult i32 24, 32
  %"SHF_min.21" = select  i1 %".2713", i32 24, i32 32
  %".2714" = load i32, ptr %"R0"
  %"zext.181" = zext i32 %".2714" to i64
  %"zext.182" = zext i32 0 to i64
  %"zext.183" = zext i32 24 to i64
  %"shl.97" = shl i64 %"zext.181", 32
  %"or.80" = or i64 %"shl.97", %"zext.182"
  %"lshr.10" = lshr i64 %"or.80", %"zext.183"
  %"lshr.11" = lshr i64 %"lshr.10", 32
  %"trunc32.55" = trunc i64 %"lshr.11" to i32
  store i32 %"trunc32.55", ptr %"R16"
  ; ISETP.NE.U32.AND P0, PT, R16, RZ, PT
  %".2717" = load i32, ptr %"R16"
  %".2718" = load i1, ptr %"PT"
  %"cmp.14" = icmp ne i32 %".2717", 0
  %".2719" = xor i1 %"cmp.14", -1
  %".2720" = and i1 %"cmp.14", %".2718"
  %".2721" = and i1 %".2719", %".2718"
  store i1 %".2720", ptr %"P0"
  ; @P0 BRA `(.L_x_21)
  %".2724" = load i1, ptr %"P0"
  %".2725" = icmp eq i1 %".2724", 1
  br i1 %".2725", label %".L_x_21...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2:
  ; IMAD.SHL.U32 R0, R15, 0x2, RZ
  %".2728" = load i32, ptr %"R15"
  %"imad_shl.5" = shl i32 %".2728", 2
  %"imad_add.52" = add i32 %"imad_shl.5", 0
  store i32 %"imad_add.52", ptr %"R0"
  ; ISETP.NE.AND P0, PT, R0, RZ, PT
  %".2731" = load i32, ptr %"R0"
  %".2732" = load i1, ptr %"PT"
  %"cmp.15" = icmp ne i32 %".2731", 0
  %".2733" = xor i1 %"cmp.15", -1
  %".2734" = and i1 %"cmp.15", %".2732"
  %".2735" = and i1 %".2733", %".2732"
  store i1 %".2734", ptr %"P0"
  ; @P0 FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2738" = load i1, ptr %"P0"
  %".2739" = icmp eq i1 %".2738", 1
  br i1 %".2739", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2742" = load float, ptr %"R15"
  %"fmul.77" = fmul float %".2742", 0x43f0000000000000
  %"fadd.86" = fadd float %"fmul.77",              0x0
  %".2743" = bitcast ptr %"R8" to ptr
  store float %"fadd.86", ptr %".2743"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2748" = load float, ptr %"R15"
  %"fmul.78" = fmul float %".2748", 0x43f0000000000000
  %"fadd.87" = fadd float %"fmul.78",              0x0
  %".2749" = bitcast ptr %"R8" to ptr
  store float %"fadd.87", ptr %".2749"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2:
  ; @!P0 MUFU.RCP R0, R15
  %".2754" = load i1, ptr %"P0"
  %".2755" = icmp ne i1 %".2754", 1
  br i1 %".2755", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0:
  ; MUFU.RCP R0, R15
  %".2758" = load i32, ptr %"R15"
  %"sint_to_f32.1" = sitofp i32 %".2758" to float
  %".2759" = fdiv float 0x3ff0000000000000, %"sint_to_f32.1"
  %".2760" = fptosi float %".2759" to i32
  store i32 %".2760", ptr %"R0"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2:
  ; MUFU.RCP R0, R15
  %".2765" = load i32, ptr %"R15"
  %"sint_to_f32.2" = sitofp i32 %".2765" to float
  %".2766" = fdiv float 0x3ff0000000000000, %"sint_to_f32.2"
  %".2767" = fptosi float %".2766" to i32
  store i32 %".2767", ptr %"R0"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2:
  ; @P0 MUFU.RCP R9, R8
  %".2772" = load i1, ptr %"P0"
  %".2773" = icmp eq i1 %".2772", 1
  br i1 %".2773", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00:
  ; MUFU.RCP R9, R8
  %".2776" = load float, ptr %"R8"
  %".2777" = fdiv float 0x3ff0000000000000, %".2776"
  %".2778" = bitcast ptr %"R9" to ptr
  store float %".2777", ptr %".2778"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2:
  ; MUFU.RCP R9, R8
  %".2783" = load float, ptr %"R8"
  %".2784" = fdiv float 0x3ff0000000000000, %".2783"
  %".2785" = bitcast ptr %"R9" to ptr
  store float %".2784", ptr %".2785"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2:
  ; @P0 FFMA R11, R8, R9, -1
  %".2790" = load i1, ptr %"P0"
  %".2791" = icmp eq i1 %".2790", 1
  br i1 %".2791", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10:
  ; FFMA R11, R8, R9, -1
  %".2794" = load float, ptr %"R8"
  %".2795" = load float, ptr %"R9"
  %"fmul.79" = fmul float %".2794", %".2795"
  %"fadd.88" = fadd float %"fmul.79", 0xbff0000000000000
  %".2796" = bitcast ptr %"R11" to ptr
  store float %"fadd.88", ptr %".2796"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2:
  ; FFMA R11, R8, R9, -1
  %".2801" = load float, ptr %"R8"
  %".2802" = load float, ptr %"R9"
  %"fmul.80" = fmul float %".2801", %".2802"
  %"fadd.89" = fadd float %"fmul.80", 0xbff0000000000000
  %".2803" = bitcast ptr %"R11" to ptr
  store float %"fadd.89", ptr %".2803"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2:
  ; @P0 FADD.FTZ R12, -R11, -RZ
  %".2808" = load i1, ptr %"P0"
  %".2809" = icmp eq i1 %".2808", 1
  br i1 %".2809", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20:
  ; FADD.FTZ R12, -R11, -RZ
  %".2812" = load float, ptr %"R11"
  %".2813" = fneg float %".2812"
  %".2814" = call float @"llvm.fabs"(float %".2813")
  %".2815" = fcmp ogt float %".2814",              0x0
  %".2816" = fcmp olt float %".2814", 0x3810000000000000
  %".2817" = and i1 %".2815", %".2816"
  %".2818" = select  i1 %".2817", float              0x0, float %".2813"
  %".2819" = call float @"llvm.fabs"(float              0x0)
  %".2820" = fcmp ogt float %".2819",              0x0
  %".2821" = fcmp olt float %".2819", 0x3810000000000000
  %".2822" = and i1 %".2820", %".2821"
  %".2823" = select  i1 %".2822", float              0x0, float              0x0
  %"fadd.90" = fadd float %".2818", %".2823"
  %".2824" = call float @"llvm.fabs"(float %"fadd.90")
  %".2825" = fcmp ogt float %".2824",              0x0
  %".2826" = fcmp olt float %".2824", 0x3810000000000000
  %".2827" = and i1 %".2825", %".2826"
  %".2828" = select  i1 %".2827", float              0x0, float %"fadd.90"
  %".2829" = bitcast ptr %"R12" to ptr
  store float %".2828", ptr %".2829"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2:
  ; FADD.FTZ R12, -R11, -RZ
  %".2834" = load float, ptr %"R11"
  %".2835" = fneg float %".2834"
  %".2836" = call float @"llvm.fabs"(float %".2835")
  %".2837" = fcmp ogt float %".2836",              0x0
  %".2838" = fcmp olt float %".2836", 0x3810000000000000
  %".2839" = and i1 %".2837", %".2838"
  %".2840" = select  i1 %".2839", float              0x0, float %".2835"
  %".2841" = call float @"llvm.fabs"(float              0x0)
  %".2842" = fcmp ogt float %".2841",              0x0
  %".2843" = fcmp olt float %".2841", 0x3810000000000000
  %".2844" = and i1 %".2842", %".2843"
  %".2845" = select  i1 %".2844", float              0x0, float              0x0
  %"fadd.91" = fadd float %".2840", %".2845"
  %".2846" = call float @"llvm.fabs"(float %"fadd.91")
  %".2847" = fcmp ogt float %".2846",              0x0
  %".2848" = fcmp olt float %".2846", 0x3810000000000000
  %".2849" = and i1 %".2847", %".2848"
  %".2850" = select  i1 %".2849", float              0x0, float %"fadd.91"
  %".2851" = bitcast ptr %"R12" to ptr
  store float %".2850", ptr %".2851"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2:
  ; @P0 FFMA R12, R9, R12, R9
  %".2856" = load i1, ptr %"P0"
  %".2857" = icmp eq i1 %".2856", 1
  br i1 %".2857", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30:
  ; FFMA R12, R9, R12, R9
  %".2860" = load float, ptr %"R9"
  %".2861" = load float, ptr %"R12"
  %".2862" = load float, ptr %"R9"
  %"fmul.81" = fmul float %".2860", %".2861"
  %"fadd.92" = fadd float %"fmul.81", %".2862"
  %".2863" = bitcast ptr %"R12" to ptr
  store float %"fadd.92", ptr %".2863"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2:
  ; FFMA R12, R9, R12, R9
  %".2868" = load float, ptr %"R9"
  %".2869" = load float, ptr %"R12"
  %".2870" = load float, ptr %"R9"
  %"fmul.82" = fmul float %".2868", %".2869"
  %"fadd.93" = fadd float %"fmul.82", %".2870"
  %".2871" = bitcast ptr %"R12" to ptr
  store float %"fadd.93", ptr %".2871"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2:
  ; @P0 FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2876" = load i1, ptr %"P0"
  %".2877" = icmp eq i1 %".2876", 1
  br i1 %".2877", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2880" = load float, ptr %"R12"
  %"fmul.83" = fmul float %".2880", 0x43f0000000000000
  %"fadd.94" = fadd float %"fmul.83",              0x0
  %".2881" = bitcast ptr %"R0" to ptr
  store float %"fadd.94", ptr %".2881"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2886" = load float, ptr %"R12"
  %"fmul.84" = fmul float %".2886", 0x43f0000000000000
  %"fadd.95" = fadd float %"fmul.84",              0x0
  %".2887" = bitcast ptr %"R0" to ptr
  store float %"fadd.95", ptr %".2887"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...2:
  ; BRA `(.L_x_22)
  br label %".L_x_22...2"
.L_x_21...2:
  ; IADD3 R18, R16, -0xfd, RZ
  %".2894" = load i32, ptr %"R16"
  %".2895" = add i32 %".2894", -253
  %".2896" = add i32 %".2895", 0
  store i32 %".2896", ptr %"R18"
  ; ISETP.GT.U32.AND P0, PT, R18, 0x1, PT
  %".2899" = load i32, ptr %"R18"
  %".2900" = load i1, ptr %"PT"
  %"cmp.16" = icmp sgt i32 %".2899", 1
  %".2901" = xor i1 %"cmp.16", -1
  %".2902" = and i1 %"cmp.16", %".2900"
  %".2903" = and i1 %".2901", %".2900"
  store i1 %".2902", ptr %"P0"
  ; @P0 BRA `(.L_x_23)
  %".2906" = load i1, ptr %"P0"
  %".2907" = icmp eq i1 %".2906", 1
  br i1 %".2907", label %".L_x_23...2", label %".L_x_21_split_0x1a90...2"
.L_x_21_split_0x1a90...2:
  ; LOP3.LUT R0, R15, 0x7fffff, RZ, 0xc0, !PT
  %".2910" = load i32, ptr %"R15"
  %".2911" = xor i1 1, -1
  %".2912" = and i32 %".2910", 8388607
  store i32 %".2912", ptr %"R0"
  ; MOV R13, 0x3
  store i32 3, ptr %"R13"
  ; LOP3.LUT R0, R0, 0x3f800000, RZ, 0xfc, !PT
  %".2917" = load i32, ptr %"R0"
  %".2918" = xor i1 1, -1
  %".2919" = or i32 %".2917", 1065353216
  store i32 %".2919", ptr %"R0"
  ; SHF.L.U32 R13, R13, R18, RZ
  %".2922" = load i32, ptr %"R18"
  %".2923" = icmp ult i32 %".2922", 32
  %"SHF_min.22" = select  i1 %".2923", i32 %".2922", i32 32
  %".2924" = load i32, ptr %"R13"
  %".2925" = load i32, ptr %"R18"
  %"zext.184" = zext i32 0 to i64
  %"zext.185" = zext i32 %".2924" to i64
  %"zext.186" = zext i32 %".2925" to i64
  %"shl.98" = shl i64 %"zext.184", 32
  %"or.81" = or i64 %"shl.98", %"zext.185"
  %"shl.99" = shl i64 %"or.81", %"zext.186"
  %"and.10" = and i64 %"shl.99", 4294967295
  %"trunc32.56" = trunc i64 %"and.10" to i32
  store i32 %"trunc32.56", ptr %"R13"
  ; MUFU.RCP R9, R0
  %".2928" = load i32, ptr %"R0"
  %"sint_to_f32.3" = sitofp i32 %".2928" to float
  %".2929" = fdiv float 0x3ff0000000000000, %"sint_to_f32.3"
  %".2930" = fptosi float %".2929" to i32
  store i32 %".2930", ptr %"R9"
  ; FFMA R8, R0, R9, -1
  %".2933" = load float, ptr %"R0"
  %".2934" = load float, ptr %"R9"
  %"fmul.85" = fmul float %".2933", %".2934"
  %"fadd.96" = fadd float %"fmul.85", 0xbff0000000000000
  %".2935" = bitcast ptr %"R8" to ptr
  store float %"fadd.96", ptr %".2935"
  ; FADD.FTZ R8, -R8, -RZ
  %".2938" = load float, ptr %"R8"
  %".2939" = fneg float %".2938"
  %".2940" = call float @"llvm.fabs"(float %".2939")
  %".2941" = fcmp ogt float %".2940",              0x0
  %".2942" = fcmp olt float %".2940", 0x3810000000000000
  %".2943" = and i1 %".2941", %".2942"
  %".2944" = select  i1 %".2943", float              0x0, float %".2939"
  %".2945" = call float @"llvm.fabs"(float              0x0)
  %".2946" = fcmp ogt float %".2945",              0x0
  %".2947" = fcmp olt float %".2945", 0x3810000000000000
  %".2948" = and i1 %".2946", %".2947"
  %".2949" = select  i1 %".2948", float              0x0, float              0x0
  %"fadd.97" = fadd float %".2944", %".2949"
  %".2950" = call float @"llvm.fabs"(float %"fadd.97")
  %".2951" = fcmp ogt float %".2950",              0x0
  %".2952" = fcmp olt float %".2950", 0x3810000000000000
  %".2953" = and i1 %".2951", %".2952"
  %".2954" = select  i1 %".2953", float              0x0, float %"fadd.97"
  %".2955" = bitcast ptr %"R8" to ptr
  store float %".2954", ptr %".2955"
  ; FFMA.RM R11, R9.reuse, R8.reuse, R9.reuse
  %".2958" = load float, ptr %"R9"
  %".2959" = load float, ptr %"R8"
  %".2960" = load float, ptr %"R9"
  %"fmul.86" = fmul float %".2958", %".2959"
  %"fadd.98" = fadd float %"fmul.86", %".2960"
  %".2961" = bitcast ptr %"R11" to ptr
  store float %"fadd.98", ptr %".2961"
  ; FFMA.RP R12, R9, R8, R9
  %".2964" = load float, ptr %"R9"
  %".2965" = load float, ptr %"R8"
  %".2966" = load float, ptr %"R9"
  %"fmul.87" = fmul float %".2964", %".2965"
  %"fadd.99" = fadd float %"fmul.87", %".2966"
  %".2967" = bitcast ptr %"R12" to ptr
  store float %"fadd.99", ptr %".2967"
  ; LOP3.LUT R8, R11.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".2970" = load i32, ptr %"R11"
  %".2971" = xor i1 1, -1
  %".2972" = and i32 %".2970", 8388607
  store i32 %".2972", ptr %"R8"
  ; FSETP.NEU.FTZ.AND P0, PT, R11, R12, PT
  %".2975" = load float, ptr %"R11"
  %".2976" = load float, ptr %"R12"
  %".2977" = load i1, ptr %"PT"
  %".2978" = call float @"llvm.fabs"(float %".2975")
  %".2979" = fcmp ogt float %".2978",              0x0
  %".2980" = fcmp olt float %".2978", 0x3810000000000000
  %".2981" = and i1 %".2979", %".2980"
  %".2982" = select  i1 %".2981", float              0x0, float %".2975"
  %".2983" = call float @"llvm.fabs"(float %".2976")
  %".2984" = fcmp ogt float %".2983",              0x0
  %".2985" = fcmp olt float %".2983", 0x3810000000000000
  %".2986" = and i1 %".2984", %".2985"
  %".2987" = select  i1 %".2986", float              0x0, float %".2976"
  %"fcmp_ordered.1" = fcmp une float %".2982", %".2987"
  %".2988" = xor i1 %"fcmp_ordered.1", -1
  %".2989" = and i1 %"fcmp_ordered.1", %".2977"
  %".2990" = and i1 %".2988", %".2977"
  store i1 %".2989", ptr %"P0"
  ; LOP3.LUT R8, R8, 0x800000, RZ, 0xfc, !PT
  %".2993" = load i32, ptr %"R8"
  %".2994" = xor i1 1, -1
  %".2995" = or i32 %".2993", 8388608
  store i32 %".2995", ptr %"R8"
  ; SEL R9, RZ, 0xffffffff, !P0
  %".2998" = load i1, ptr %"P0"
  %".2999" = xor i1 %".2998", -1
  %".3000" = icmp eq i1 %".2999", 1
  %"sel.2" = select  i1 %".3000", i32 0, i32 4294967295
  store i32 %"sel.2", ptr %"R9"
  ; LOP3.LUT R13, R13, R8, RZ, 0xc0, !PT
  %".3003" = load i32, ptr %"R13"
  %".3004" = load i32, ptr %"R8"
  %".3005" = xor i1 1, -1
  %".3006" = and i32 %".3003", %".3004"
  store i32 %".3006", ptr %"R13"
  ; IMAD.MOV R9, RZ, RZ, -R9
  %".3009" = load i32, ptr %"R9"
  %".3010" = sub i32 0, %".3009"
  %"imad_mul.47" = mul i32 0, 0
  %"imad_add.53" = add i32 %"imad_mul.47", %".3010"
  store i32 %"imad_add.53", ptr %"R9"
  ; SHF.R.U32.HI R13, RZ, R18, R13
  %".3013" = load i32, ptr %"R18"
  %".3014" = icmp ult i32 %".3013", 32
  %"SHF_min.23" = select  i1 %".3014", i32 %".3013", i32 32
  %".3015" = load i32, ptr %"R13"
  %".3016" = load i32, ptr %"R18"
  %"zext.187" = zext i32 %".3015" to i64
  %"zext.188" = zext i32 0 to i64
  %"zext.189" = zext i32 %".3016" to i64
  %"shl.100" = shl i64 %"zext.187", 32
  %"or.82" = or i64 %"shl.100", %"zext.188"
  %"lshr.12" = lshr i64 %"or.82", %"zext.189"
  %"lshr.13" = lshr i64 %"lshr.12", 32
  %"trunc32.57" = trunc i64 %"lshr.13" to i32
  store i32 %"trunc32.57", ptr %"R13"
  ; LOP3.LUT P1, RZ, R9, R18, R8, 0xf8, !PT
  %".3019" = load i32, ptr %"R9"
  %".3020" = load i32, ptr %"R18"
  %".3021" = load i32, ptr %"R8"
  %".3022" = xor i1 1, -1
  %".3023" = or i32 %".3019", %".3020"
  %".3024" = or i32 %".3019", %".3021"
  %".3025" = and i32 %".3023", %".3024"
  store i32 %".3025", ptr %"RZ"
  %".3027" = icmp ne i32 %".3025", 0
  store i1 %".3027", ptr %"P1"
  ; LOP3.LUT P0, RZ, R13.reuse, 0x1, RZ, 0xc0, !PT
  %".3030" = load i32, ptr %"R13"
  %".3031" = xor i1 1, -1
  %".3032" = and i32 %".3030", 1
  store i32 %".3032", ptr %"RZ"
  %".3034" = icmp ne i32 %".3032", 0
  store i1 %".3034", ptr %"P0"
  ; LOP3.LUT P2, RZ, R13, 0x2, RZ, 0xc0, !PT
  %".3037" = load i32, ptr %"R13"
  %".3038" = xor i1 1, -1
  %".3039" = and i32 %".3037", 2
  store i32 %".3039", ptr %"RZ"
  %".3041" = icmp ne i32 %".3039", 0
  store i1 %".3041", ptr %"P2"
  ; IADD3 R9, R16, -0xfc, RZ
  %".3044" = load i32, ptr %"R16"
  %".3045" = add i32 %".3044", -252
  %".3046" = add i32 %".3045", 0
  store i32 %".3046", ptr %"R9"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".3049" = load i1, ptr %"P0"
  %".3050" = load i1, ptr %"P1"
  %".3051" = or i1 %".3049", %".3050"
  %".3052" = and i1 %".3051", 1
  ; LOP3.LUT P1, RZ, R15, 0x7fffff, RZ, 0xc0, !PT
  %".3054" = load i32, ptr %"R15"
  %".3055" = xor i1 1, -1
  %".3056" = and i32 %".3054", 8388607
  store i32 %".3056", ptr %"RZ"
  %".3058" = icmp ne i32 %".3056", 0
  store i1 %".3058", ptr %"P1"
  ; SEL R0, RZ, 0x1, !P0
  %".3061" = load i1, ptr %"P0"
  %".3062" = xor i1 %".3061", -1
  %".3063" = icmp eq i1 %".3062", 1
  %"sel.3" = select  i1 %".3063", i32 0, i32 1
  store i32 %"sel.3", ptr %"R0"
  ; IADD3 R0, -R0, RZ, RZ
  %".3066" = load i32, ptr %"R0"
  %".3067" = sub i32 0, %".3066"
  %".3068" = add i32 %".3067", 0
  %".3069" = add i32 %".3068", 0
  store i32 %".3069", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, RZ, PT
  %".3072" = load i32, ptr %"R0"
  %".3073" = load i1, ptr %"PT"
  %"cmp.17" = icmp sge i32 %".3072", 0
  %".3074" = xor i1 %"cmp.17", -1
  %".3075" = and i1 %"cmp.17", %".3073"
  %".3076" = and i1 %".3074", %".3073"
  store i1 %".3075", ptr %"P0"
  ; SHF.R.U32.HI R0, RZ, R9, R8
  %".3079" = load i32, ptr %"R9"
  %".3080" = icmp ult i32 %".3079", 32
  %"SHF_min.24" = select  i1 %".3080", i32 %".3079", i32 32
  %".3081" = load i32, ptr %"R8"
  %".3082" = load i32, ptr %"R9"
  %"zext.190" = zext i32 %".3081" to i64
  %"zext.191" = zext i32 0 to i64
  %"zext.192" = zext i32 %".3082" to i64
  %"shl.101" = shl i64 %"zext.190", 32
  %"or.83" = or i64 %"shl.101", %"zext.191"
  %"lshr.14" = lshr i64 %"or.83", %"zext.192"
  %"lshr.15" = lshr i64 %"lshr.14", 32
  %"trunc32.58" = trunc i64 %"lshr.15" to i32
  store i32 %"trunc32.58", ptr %"R0"
  ; @!P0 IADD3 R0, R0, 0x1, RZ
  %".3085" = load i1, ptr %"P0"
  %".3086" = icmp ne i1 %".3085", 1
  br i1 %".3086", label %".L_x_21_split_0x1a90...2_conditionalExpr_0x1c30", label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...2"
.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30:
  ; IADD3 R0, R0, 0x1, RZ
  %".3089" = load i32, ptr %"R0"
  %".3090" = add i32 %".3089", 1
  %".3091" = add i32 %".3090", 0
  store i32 %".3091", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2)
  br label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...2"
.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2:
  ; IADD3 R0, R0, 0x1, RZ
  %".3096" = load i32, ptr %"R0"
  %".3097" = add i32 %".3096", 1
  %".3098" = add i32 %".3097", 0
  store i32 %".3098", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40)
  br label %".L_x_21_split_0x1c40...2"
.L_x_21_split_0x1c40...2:
  ; @!P1 IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3103" = load i1, ptr %"P1"
  %".3104" = icmp ne i1 %".3103", 1
  br i1 %".3104", label %".L_x_21_split_0x1c40...2_conditionalExpr_0x1c40", label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...2"
.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3107" = load i32, ptr %"R0"
  %"imad_shl.6" = shl i32 %".3107", 2
  %"imad_add.54" = add i32 %"imad_shl.6", 0
  store i32 %"imad_add.54", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2)
  br label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...2"
.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3112" = load i32, ptr %"R0"
  %"imad_shl.7" = shl i32 %".3112", 2
  %"imad_add.55" = add i32 %"imad_shl.7", 0
  store i32 %"imad_add.55", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c50)
  br label %".L_x_21_split_0x1c50...2"
.L_x_21_split_0x1c50...2:
  ; LOP3.LUT R0, R0, 0x80000000, R15, 0xf8, !PT
  %".3117" = load i32, ptr %"R0"
  %".3118" = load i32, ptr %"R15"
  %".3119" = xor i1 1, -1
  %".3120" = or i32 %".3117", 2147483648
  %".3121" = or i32 %".3117", %".3118"
  %".3122" = and i32 %".3120", %".3121"
  store i32 %".3122", ptr %"R0"
  ; BRA `(.L_x_22)
  br label %".L_x_22...2"
.L_x_23...2:
  ; MUFU.RCP R0, R15
  %".3127" = load i32, ptr %"R15"
  %"sint_to_f32.4" = sitofp i32 %".3127" to float
  %".3128" = fdiv float 0x3ff0000000000000, %"sint_to_f32.4"
  %".3129" = fptosi float %".3128" to i32
  store i32 %".3129", ptr %"R0"
  br label %".L_x_22...2"
.L_x_22...2:
  ; BSYNC B1
  br label %".L_x_20...2"
.L_x_20...2:
  ; MOV R8, R14
  %".3135" = load i32, ptr %"R14"
  store i32 %".3135", ptr %"R8"
  ; IMAD.MOV.U32 R9, RZ, RZ, 0x0
  %"imad_mul.48" = mul i32 0, 0
  %"imad_add.56" = add i32 %"imad_mul.48", 0
  store i32 %"imad_add.56", ptr %"R9"
  ; RET.REL.NODEC R8, `(_Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.1"
.L_x_24...2:
  ; BRA `(.L_x_24)
  br label %".L_x_24...2"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.1:
  br label %".L_x_8_split_0x15e0_postCALL_0x1620"
.L_x_8_split_0x15e0_postCALL_0x1620:
  ; IMAD.MOV.U32 R7, RZ, RZ, R0
  %".3145" = load i32, ptr %"R0"
  %"imad_mul.49" = mul i32 0, 0
  %"imad_add.57" = add i32 %"imad_mul.49", %".3145"
  store i32 %"imad_add.57", ptr %"R7"
  ; BRA `(.L_x_13)
  br label %".L_x_13"
.L_x_12:
  ; MUFU.RCP R7, R2
  %".3150" = load float, ptr %"R2"
  %".3151" = fdiv float 0x3ff0000000000000, %".3150"
  %".3152" = bitcast ptr %"R7" to ptr
  store float %".3151", ptr %".3152"
  ; FFMA R0, R2, R7, -1
  %".3155" = load float, ptr %"R2"
  %".3156" = load float, ptr %"R7"
  %"fmul.88" = fmul float %".3155", %".3156"
  %"fadd.100" = fadd float %"fmul.88", 0xbff0000000000000
  %".3157" = bitcast ptr %"R0" to ptr
  store float %"fadd.100", ptr %".3157"
  ; FADD.FTZ R0, -R0, -RZ
  %".3160" = load float, ptr %"R0"
  %".3161" = fneg float %".3160"
  %".3162" = call float @"llvm.fabs"(float %".3161")
  %".3163" = fcmp ogt float %".3162",              0x0
  %".3164" = fcmp olt float %".3162", 0x3810000000000000
  %".3165" = and i1 %".3163", %".3164"
  %".3166" = select  i1 %".3165", float              0x0, float %".3161"
  %".3167" = call float @"llvm.fabs"(float              0x0)
  %".3168" = fcmp ogt float %".3167",              0x0
  %".3169" = fcmp olt float %".3167", 0x3810000000000000
  %".3170" = and i1 %".3168", %".3169"
  %".3171" = select  i1 %".3170", float              0x0, float              0x0
  %"fadd.101" = fadd float %".3166", %".3171"
  %".3172" = call float @"llvm.fabs"(float %"fadd.101")
  %".3173" = fcmp ogt float %".3172",              0x0
  %".3174" = fcmp olt float %".3172", 0x3810000000000000
  %".3175" = and i1 %".3173", %".3174"
  %".3176" = select  i1 %".3175", float              0x0, float %"fadd.101"
  %".3177" = bitcast ptr %"R0" to ptr
  store float %".3176", ptr %".3177"
  ; FFMA R7, R7, R0, R7
  %".3180" = load float, ptr %"R7"
  %".3181" = load float, ptr %"R0"
  %".3182" = load float, ptr %"R7"
  %"fmul.89" = fmul float %".3180", %".3181"
  %"fadd.102" = fadd float %"fmul.89", %".3182"
  %".3183" = bitcast ptr %"R7" to ptr
  store float %"fadd.102", ptr %".3183"
  br label %".L_x_13"
.L_x_13:
  ; BSYNC B0
  br label %".L_x_11"
.L_x_11:
  ; FFMA R9, R7, R10, R4
  %".3189" = load float, ptr %"R7"
  %".3190" = load float, ptr %"R10"
  %".3191" = load float, ptr %"R4"
  %"fmul.90" = fmul float %".3189", %".3190"
  %"fadd.103" = fadd float %"fmul.90", %".3191"
  %".3192" = bitcast ptr %"R9" to ptr
  store float %"fadd.103", ptr %".3192"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_14)
  ; FSETP.GE.AND P0, PT, |R9|, 0.60000002384185791016, PT
  %".3197" = load float, ptr %"R9"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".3197")
  %".3198" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".3199" = xor i1 %"fcmp_unordered.2", -1
  %".3200" = and i1 %"fcmp_unordered.2", %".3198"
  %".3201" = and i1 %".3199", %".3198"
  store i1 %".3200", ptr %"P0"
  ; @!P0 BRA `(.L_x_15)
  %".3204" = load i1, ptr %"P0"
  %".3205" = icmp ne i1 %".3204", 1
  br i1 %".3205", label %".L_x_15", label %".L_x_11_split_0x16d0"
.L_x_11_split_0x16d0:
  ; FMUL R0, |R9|.reuse, 2.8853900432586669922
  %".3208" = load float, ptr %"R9"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".3208")
  %"fmul.91" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".3209" = bitcast ptr %"R0" to ptr
  store float %"fmul.91", ptr %".3209"
  ; MOV R7, 0x3f800000
  %".3212" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".3212"
  ; FSETP.GE.AND P0, PT, |R9|, 9.010913848876953125, PT
  %".3215" = load float, ptr %"R9"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".3215")
  %".3216" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".3217" = xor i1 %"fcmp_unordered.3", -1
  %".3218" = and i1 %"fcmp_unordered.3", %".3216"
  %".3219" = and i1 %".3217", %".3216"
  store i1 %".3218", ptr %"P0"
  ; MUFU.EX2 R0, R0
  %".3222" = load float, ptr %"R0"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".3222")
  %".3223" = bitcast ptr %"R0" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".3223"
  ; FADD R2, R0, 1
  %".3226" = load float, ptr %"R0"
  %"fadd.104" = fadd float %".3226", 0x3ff0000000000000
  %".3227" = bitcast ptr %"R2" to ptr
  store float %"fadd.104", ptr %".3227"
  ; MUFU.RCP R2, R2
  %".3230" = load float, ptr %"R2"
  %".3231" = fdiv float 0x3ff0000000000000, %".3230"
  %".3232" = bitcast ptr %"R2" to ptr
  store float %".3231", ptr %".3232"
  ; FFMA R4, R2, -2, R7
  %".3235" = load float, ptr %"R2"
  %".3236" = load float, ptr %"R7"
  %"fmul.92" = fmul float %".3235", 0xc000000000000000
  %"fadd.105" = fadd float %"fmul.92", %".3236"
  %".3237" = bitcast ptr %"R4" to ptr
  store float %"fadd.105", ptr %".3237"
  ; FSEL R4, R4, 1, !P0
  %".3240" = load float, ptr %"R4"
  %".3241" = load i1, ptr %"P0"
  %".3242" = xor i1 %".3241", -1
  %".3243" = icmp eq i1 %".3242", 1
  %"fsel.1" = select  i1 %".3243", float %".3240", float 0x3ff0000000000000
  %".3244" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".3244"
  ; LOP3.LUT R7, R4, 0x80000000, R9, 0xf8, !PT
  %".3247" = load i32, ptr %"R4"
  %".3248" = load i32, ptr %"R9"
  %".3249" = xor i1 1, -1
  %".3250" = or i32 %".3247", 2147483648
  %".3251" = or i32 %".3247", %".3248"
  %".3252" = and i32 %".3250", %".3251"
  store i32 %".3252", ptr %"R7"
  ; BRA `(.L_x_16)
  br label %".L_x_16"
.L_x_15:
  ; IMAD.MOV.U32 R7, RZ, RZ, 0x3c80f082
  %"imad_mul.50" = mul i32 0, 0
  %"imad_add.58" = add i32 %"imad_mul.50", 1015083138
  store i32 %"imad_add.58", ptr %"R7"
  ; FMUL R0, R9, R9
  %".3259" = load float, ptr %"R9"
  %".3260" = load float, ptr %"R9"
  %"fmul.93" = fmul float %".3259", %".3260"
  %".3261" = bitcast ptr %"R0" to ptr
  store float %"fmul.93", ptr %".3261"
  ; FFMA R7, R0, R7, -0.052303962409496307373
  %".3264" = load float, ptr %"R0"
  %".3265" = load float, ptr %"R7"
  %"fmul.94" = fmul float %".3264", %".3265"
  %"fadd.106" = fadd float %"fmul.94", 0xbfaac795c0000000
  %".3266" = bitcast ptr %"R7" to ptr
  store float %"fadd.106", ptr %".3266"
  ; FFMA R7, R0, R7, 0.1331529766321182251
  %".3269" = load float, ptr %"R0"
  %".3270" = load float, ptr %"R7"
  %"fmul.95" = fmul float %".3269", %".3270"
  %"fadd.107" = fadd float %"fmul.95", 0x3fc10b2820000000
  %".3271" = bitcast ptr %"R7" to ptr
  store float %"fadd.107", ptr %".3271"
  ; FFMA R7, R0, R7, -0.33332768082618713379
  %".3274" = load float, ptr %"R0"
  %".3275" = load float, ptr %"R7"
  %"fmul.96" = fmul float %".3274", %".3275"
  %"fadd.108" = fadd float %"fmul.96", 0xbfd5553da0000000
  %".3276" = bitcast ptr %"R7" to ptr
  store float %"fadd.108", ptr %".3276"
  ; FFMA R7, R0, R7, RZ
  %".3279" = load float, ptr %"R0"
  %".3280" = load float, ptr %"R7"
  %"fmul.97" = fmul float %".3279", %".3280"
  %"fadd.109" = fadd float %"fmul.97",              0x0
  %".3281" = bitcast ptr %"R7" to ptr
  store float %"fadd.109", ptr %".3281"
  ; FFMA R7, R9, R7, R9
  %".3284" = load float, ptr %"R9"
  %".3285" = load float, ptr %"R7"
  %".3286" = load float, ptr %"R9"
  %"fmul.98" = fmul float %".3284", %".3285"
  %"fadd.110" = fadd float %"fmul.98", %".3286"
  %".3287" = bitcast ptr %"R7" to ptr
  store float %"fadd.110", ptr %".3287"
  br label %".L_x_16"
.L_x_16:
  ; BSYNC B0
  br label %".L_x_14"
.L_x_14:
  ; IADD3 R0, R5, 0x1800000, RZ
  %".3293" = load i32, ptr %"R5"
  %".3294" = add i32 %".3293", 25165824
  %".3295" = add i32 %".3294", 0
  store i32 %".3295", ptr %"R0"
  ; ULDC.64 UR4, c[0x0][0x1a0]
  %".3298" = ptrtoint ptr %"Arg_8" to i64
  %".3299" = and i64 %".3298", 18446744069414584320
  %".3300" = lshr i64 %".3299", 32
  %"trunc32.59" = trunc i64 %".3300" to i32
  %"trunc32.60" = trunc i64 %".3298" to i32
  store i32 %"trunc32.60", ptr %"UR4"
  store i32 %"trunc32.59", ptr %"UR5"
  ; SHF.L.U64.HI R3, R6, 0x2, R3
  %".3304" = icmp ult i32 2, 64
  %"SHF_min.25" = select  i1 %".3304", i32 2, i32 64
  %".3305" = load i32, ptr %"R3"
  %".3306" = load i32, ptr %"R6"
  %"zext.193" = zext i32 %".3305" to i64
  %"zext.194" = zext i32 %".3306" to i64
  %"zext.195" = zext i32 2 to i64
  %"shl.102" = shl i64 %"zext.193", 32
  %"or.84" = or i64 %"shl.102", %"zext.194"
  %"shl.103" = shl i64 %"or.84", %"zext.195"
  %"lshr.16" = lshr i64 %"shl.103", 32
  %"trunc32.61" = trunc i64 %"lshr.16" to i32
  store i32 %"trunc32.61", ptr %"R3"
  ; BMOV.32.CLEAR RZ, B0
  ; LOP3.LUT R0, R0, 0x7f800000, RZ, 0xc0, !PT
  %".3310" = load i32, ptr %"R0"
  %".3311" = xor i1 1, -1
  %".3312" = and i32 %".3310", 2139095040
  store i32 %".3312", ptr %"R0"
  ; BSSY B0, `(.L_x_17)
  ; SHF.L.U32 R2, R6, 0x2, RZ
  %".3316" = icmp ult i32 2, 32
  %"SHF_min.26" = select  i1 %".3316", i32 2, i32 32
  %".3317" = load i32, ptr %"R6"
  %"zext.196" = zext i32 0 to i64
  %"zext.197" = zext i32 %".3317" to i64
  %"zext.198" = zext i32 2 to i64
  %"shl.104" = shl i64 %"zext.196", 32
  %"or.85" = or i64 %"shl.104", %"zext.197"
  %"shl.105" = shl i64 %"or.85", %"zext.198"
  %"and.11" = and i64 %"shl.105", 4294967295
  %"trunc32.62" = trunc i64 %"and.11" to i32
  store i32 %"trunc32.62", ptr %"R2"
  ; ISETP.GT.U32.AND P0, PT, R0, 0x1ffffff, PT
  %".3320" = load i32, ptr %"R0"
  %".3321" = load i1, ptr %"PT"
  %"cmp.18" = icmp sgt i32 %".3320", 33554431
  %".3322" = xor i1 %"cmp.18", -1
  %".3323" = and i1 %"cmp.18", %".3321"
  %".3324" = and i1 %".3322", %".3321"
  store i1 %".3323", ptr %"P0"
  ; STG.E.SYS [R2.64+UR4], R9
  %".3327" = load float, ptr %"R9"
  %".3328" = load i32, ptr %"R2"
  %"zext.199" = zext i32 %".3328" to i64
  %".3329" = load i32, ptr %"R3"
  %"zext.200" = zext i32 %".3329" to i64
  %"shl.106" = shl i64 %"zext.200", 32
  %"or.86" = or i64 %"shl.106", %"zext.199"
  %"val_UR4.4" = load i32, ptr %"UR4"
  %"sext_UR4.4" = sext i32 %"val_UR4.4" to i64
  %"base_plus_reg_offset.4" = add i64 %"or.86", %"sext_UR4.4"
  %"inttoptr_bytes.59" = inttoptr i64 %"base_plus_reg_offset.4" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".3327", ptr addrspace(1) %"ptr_cast_for_access.59"
  ; @P0 BRA `(.L_x_18)
  %".3332" = load i1, ptr %"P0"
  %".3333" = icmp eq i1 %".3332", 1
  br i1 %".3333", label %".L_x_18", label %".L_x_14_split_0x1890_CALL_0x18c0"
.L_x_14_split_0x1890_CALL_0x18c0:
  ; IMAD.MOV.U32 R15, RZ, RZ, R5
  %".3336" = load i32, ptr %"R5"
  %"imad_mul.51" = mul i32 0, 0
  %"imad_add.59" = add i32 %"imad_mul.51", %".3336"
  store i32 %"imad_add.59", ptr %"R15"
  ; MOV R14, 0x18c0
  store i32 6336, ptr %"R14"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3:
  ; SHF.L.U32 R0, R15, 0x1, RZ
  %".3343" = icmp ult i32 1, 32
  %"SHF_min.27" = select  i1 %".3343", i32 1, i32 32
  %".3344" = load i32, ptr %"R15"
  %"zext.201" = zext i32 0 to i64
  %"zext.202" = zext i32 %".3344" to i64
  %"zext.203" = zext i32 1 to i64
  %"shl.107" = shl i64 %"zext.201", 32
  %"or.87" = or i64 %"shl.107", %"zext.202"
  %"shl.108" = shl i64 %"or.87", %"zext.203"
  %"and.12" = and i64 %"shl.108", 4294967295
  %"trunc32.63" = trunc i64 %"and.12" to i32
  store i32 %"trunc32.63", ptr %"R0"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_20)
  ; SHF.R.U32.HI R16, RZ, 0x18, R0
  %".3349" = icmp ult i32 24, 32
  %"SHF_min.28" = select  i1 %".3349", i32 24, i32 32
  %".3350" = load i32, ptr %"R0"
  %"zext.204" = zext i32 %".3350" to i64
  %"zext.205" = zext i32 0 to i64
  %"zext.206" = zext i32 24 to i64
  %"shl.109" = shl i64 %"zext.204", 32
  %"or.88" = or i64 %"shl.109", %"zext.205"
  %"lshr.17" = lshr i64 %"or.88", %"zext.206"
  %"lshr.18" = lshr i64 %"lshr.17", 32
  %"trunc32.64" = trunc i64 %"lshr.18" to i32
  store i32 %"trunc32.64", ptr %"R16"
  ; ISETP.NE.U32.AND P0, PT, R16, RZ, PT
  %".3353" = load i32, ptr %"R16"
  %".3354" = load i1, ptr %"PT"
  %"cmp.19" = icmp ne i32 %".3353", 0
  %".3355" = xor i1 %"cmp.19", -1
  %".3356" = and i1 %"cmp.19", %".3354"
  %".3357" = and i1 %".3355", %".3354"
  store i1 %".3356", ptr %"P0"
  ; @P0 BRA `(.L_x_21)
  %".3360" = load i1, ptr %"P0"
  %".3361" = icmp eq i1 %".3360", 1
  br i1 %".3361", label %".L_x_21...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3:
  ; IMAD.SHL.U32 R0, R15, 0x2, RZ
  %".3364" = load i32, ptr %"R15"
  %"imad_shl.8" = shl i32 %".3364", 2
  %"imad_add.60" = add i32 %"imad_shl.8", 0
  store i32 %"imad_add.60", ptr %"R0"
  ; ISETP.NE.AND P0, PT, R0, RZ, PT
  %".3367" = load i32, ptr %"R0"
  %".3368" = load i1, ptr %"PT"
  %"cmp.20" = icmp ne i32 %".3367", 0
  %".3369" = xor i1 %"cmp.20", -1
  %".3370" = and i1 %"cmp.20", %".3368"
  %".3371" = and i1 %".3369", %".3368"
  store i1 %".3370", ptr %"P0"
  ; @P0 FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".3374" = load i1, ptr %"P0"
  %".3375" = icmp eq i1 %".3374", 1
  br i1 %".3375", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".3378" = load float, ptr %"R15"
  %"fmul.99" = fmul float %".3378", 0x43f0000000000000
  %"fadd.111" = fadd float %"fmul.99",              0x0
  %".3379" = bitcast ptr %"R8" to ptr
  store float %"fadd.111", ptr %".3379"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".3384" = load float, ptr %"R15"
  %"fmul.100" = fmul float %".3384", 0x43f0000000000000
  %"fadd.112" = fadd float %"fmul.100",              0x0
  %".3385" = bitcast ptr %"R8" to ptr
  store float %"fadd.112", ptr %".3385"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3:
  ; @!P0 MUFU.RCP R0, R15
  %".3390" = load i1, ptr %"P0"
  %".3391" = icmp ne i1 %".3390", 1
  br i1 %".3391", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0:
  ; MUFU.RCP R0, R15
  %".3394" = load i32, ptr %"R15"
  %"sint_to_f32.5" = sitofp i32 %".3394" to float
  %".3395" = fdiv float 0x3ff0000000000000, %"sint_to_f32.5"
  %".3396" = fptosi float %".3395" to i32
  store i32 %".3396", ptr %"R0"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3:
  ; MUFU.RCP R0, R15
  %".3401" = load i32, ptr %"R15"
  %"sint_to_f32.6" = sitofp i32 %".3401" to float
  %".3402" = fdiv float 0x3ff0000000000000, %"sint_to_f32.6"
  %".3403" = fptosi float %".3402" to i32
  store i32 %".3403", ptr %"R0"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3:
  ; @P0 MUFU.RCP R9, R8
  %".3408" = load i1, ptr %"P0"
  %".3409" = icmp eq i1 %".3408", 1
  br i1 %".3409", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00:
  ; MUFU.RCP R9, R8
  %".3412" = load float, ptr %"R8"
  %".3413" = fdiv float 0x3ff0000000000000, %".3412"
  %".3414" = bitcast ptr %"R9" to ptr
  store float %".3413", ptr %".3414"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3:
  ; MUFU.RCP R9, R8
  %".3419" = load float, ptr %"R8"
  %".3420" = fdiv float 0x3ff0000000000000, %".3419"
  %".3421" = bitcast ptr %"R9" to ptr
  store float %".3420", ptr %".3421"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3:
  ; @P0 FFMA R11, R8, R9, -1
  %".3426" = load i1, ptr %"P0"
  %".3427" = icmp eq i1 %".3426", 1
  br i1 %".3427", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10:
  ; FFMA R11, R8, R9, -1
  %".3430" = load float, ptr %"R8"
  %".3431" = load float, ptr %"R9"
  %"fmul.101" = fmul float %".3430", %".3431"
  %"fadd.113" = fadd float %"fmul.101", 0xbff0000000000000
  %".3432" = bitcast ptr %"R11" to ptr
  store float %"fadd.113", ptr %".3432"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3:
  ; FFMA R11, R8, R9, -1
  %".3437" = load float, ptr %"R8"
  %".3438" = load float, ptr %"R9"
  %"fmul.102" = fmul float %".3437", %".3438"
  %"fadd.114" = fadd float %"fmul.102", 0xbff0000000000000
  %".3439" = bitcast ptr %"R11" to ptr
  store float %"fadd.114", ptr %".3439"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3:
  ; @P0 FADD.FTZ R12, -R11, -RZ
  %".3444" = load i1, ptr %"P0"
  %".3445" = icmp eq i1 %".3444", 1
  br i1 %".3445", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20:
  ; FADD.FTZ R12, -R11, -RZ
  %".3448" = load float, ptr %"R11"
  %".3449" = fneg float %".3448"
  %".3450" = call float @"llvm.fabs"(float %".3449")
  %".3451" = fcmp ogt float %".3450",              0x0
  %".3452" = fcmp olt float %".3450", 0x3810000000000000
  %".3453" = and i1 %".3451", %".3452"
  %".3454" = select  i1 %".3453", float              0x0, float %".3449"
  %".3455" = call float @"llvm.fabs"(float              0x0)
  %".3456" = fcmp ogt float %".3455",              0x0
  %".3457" = fcmp olt float %".3455", 0x3810000000000000
  %".3458" = and i1 %".3456", %".3457"
  %".3459" = select  i1 %".3458", float              0x0, float              0x0
  %"fadd.115" = fadd float %".3454", %".3459"
  %".3460" = call float @"llvm.fabs"(float %"fadd.115")
  %".3461" = fcmp ogt float %".3460",              0x0
  %".3462" = fcmp olt float %".3460", 0x3810000000000000
  %".3463" = and i1 %".3461", %".3462"
  %".3464" = select  i1 %".3463", float              0x0, float %"fadd.115"
  %".3465" = bitcast ptr %"R12" to ptr
  store float %".3464", ptr %".3465"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3:
  ; FADD.FTZ R12, -R11, -RZ
  %".3470" = load float, ptr %"R11"
  %".3471" = fneg float %".3470"
  %".3472" = call float @"llvm.fabs"(float %".3471")
  %".3473" = fcmp ogt float %".3472",              0x0
  %".3474" = fcmp olt float %".3472", 0x3810000000000000
  %".3475" = and i1 %".3473", %".3474"
  %".3476" = select  i1 %".3475", float              0x0, float %".3471"
  %".3477" = call float @"llvm.fabs"(float              0x0)
  %".3478" = fcmp ogt float %".3477",              0x0
  %".3479" = fcmp olt float %".3477", 0x3810000000000000
  %".3480" = and i1 %".3478", %".3479"
  %".3481" = select  i1 %".3480", float              0x0, float              0x0
  %"fadd.116" = fadd float %".3476", %".3481"
  %".3482" = call float @"llvm.fabs"(float %"fadd.116")
  %".3483" = fcmp ogt float %".3482",              0x0
  %".3484" = fcmp olt float %".3482", 0x3810000000000000
  %".3485" = and i1 %".3483", %".3484"
  %".3486" = select  i1 %".3485", float              0x0, float %"fadd.116"
  %".3487" = bitcast ptr %"R12" to ptr
  store float %".3486", ptr %".3487"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3:
  ; @P0 FFMA R12, R9, R12, R9
  %".3492" = load i1, ptr %"P0"
  %".3493" = icmp eq i1 %".3492", 1
  br i1 %".3493", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30:
  ; FFMA R12, R9, R12, R9
  %".3496" = load float, ptr %"R9"
  %".3497" = load float, ptr %"R12"
  %".3498" = load float, ptr %"R9"
  %"fmul.103" = fmul float %".3496", %".3497"
  %"fadd.117" = fadd float %"fmul.103", %".3498"
  %".3499" = bitcast ptr %"R12" to ptr
  store float %"fadd.117", ptr %".3499"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3:
  ; FFMA R12, R9, R12, R9
  %".3504" = load float, ptr %"R9"
  %".3505" = load float, ptr %"R12"
  %".3506" = load float, ptr %"R9"
  %"fmul.104" = fmul float %".3504", %".3505"
  %"fadd.118" = fadd float %"fmul.104", %".3506"
  %".3507" = bitcast ptr %"R12" to ptr
  store float %"fadd.118", ptr %".3507"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3:
  ; @P0 FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".3512" = load i1, ptr %"P0"
  %".3513" = icmp eq i1 %".3512", 1
  br i1 %".3513", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".3516" = load float, ptr %"R12"
  %"fmul.105" = fmul float %".3516", 0x43f0000000000000
  %"fadd.119" = fadd float %"fmul.105",              0x0
  %".3517" = bitcast ptr %"R0" to ptr
  store float %"fadd.119", ptr %".3517"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".3522" = load float, ptr %"R12"
  %"fmul.106" = fmul float %".3522", 0x43f0000000000000
  %"fadd.120" = fadd float %"fmul.106",              0x0
  %".3523" = bitcast ptr %"R0" to ptr
  store float %"fadd.120", ptr %".3523"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...3:
  ; BRA `(.L_x_22)
  br label %".L_x_22...3"
.L_x_21...3:
  ; IADD3 R18, R16, -0xfd, RZ
  %".3530" = load i32, ptr %"R16"
  %".3531" = add i32 %".3530", -253
  %".3532" = add i32 %".3531", 0
  store i32 %".3532", ptr %"R18"
  ; ISETP.GT.U32.AND P0, PT, R18, 0x1, PT
  %".3535" = load i32, ptr %"R18"
  %".3536" = load i1, ptr %"PT"
  %"cmp.21" = icmp sgt i32 %".3535", 1
  %".3537" = xor i1 %"cmp.21", -1
  %".3538" = and i1 %"cmp.21", %".3536"
  %".3539" = and i1 %".3537", %".3536"
  store i1 %".3538", ptr %"P0"
  ; @P0 BRA `(.L_x_23)
  %".3542" = load i1, ptr %"P0"
  %".3543" = icmp eq i1 %".3542", 1
  br i1 %".3543", label %".L_x_23...3", label %".L_x_21_split_0x1a90...3"
.L_x_21_split_0x1a90...3:
  ; LOP3.LUT R0, R15, 0x7fffff, RZ, 0xc0, !PT
  %".3546" = load i32, ptr %"R15"
  %".3547" = xor i1 1, -1
  %".3548" = and i32 %".3546", 8388607
  store i32 %".3548", ptr %"R0"
  ; MOV R13, 0x3
  store i32 3, ptr %"R13"
  ; LOP3.LUT R0, R0, 0x3f800000, RZ, 0xfc, !PT
  %".3553" = load i32, ptr %"R0"
  %".3554" = xor i1 1, -1
  %".3555" = or i32 %".3553", 1065353216
  store i32 %".3555", ptr %"R0"
  ; SHF.L.U32 R13, R13, R18, RZ
  %".3558" = load i32, ptr %"R18"
  %".3559" = icmp ult i32 %".3558", 32
  %"SHF_min.29" = select  i1 %".3559", i32 %".3558", i32 32
  %".3560" = load i32, ptr %"R13"
  %".3561" = load i32, ptr %"R18"
  %"zext.207" = zext i32 0 to i64
  %"zext.208" = zext i32 %".3560" to i64
  %"zext.209" = zext i32 %".3561" to i64
  %"shl.110" = shl i64 %"zext.207", 32
  %"or.89" = or i64 %"shl.110", %"zext.208"
  %"shl.111" = shl i64 %"or.89", %"zext.209"
  %"and.13" = and i64 %"shl.111", 4294967295
  %"trunc32.65" = trunc i64 %"and.13" to i32
  store i32 %"trunc32.65", ptr %"R13"
  ; MUFU.RCP R9, R0
  %".3564" = load i32, ptr %"R0"
  %"sint_to_f32.7" = sitofp i32 %".3564" to float
  %".3565" = fdiv float 0x3ff0000000000000, %"sint_to_f32.7"
  %".3566" = fptosi float %".3565" to i32
  store i32 %".3566", ptr %"R9"
  ; FFMA R8, R0, R9, -1
  %".3569" = load float, ptr %"R0"
  %".3570" = load float, ptr %"R9"
  %"fmul.107" = fmul float %".3569", %".3570"
  %"fadd.121" = fadd float %"fmul.107", 0xbff0000000000000
  %".3571" = bitcast ptr %"R8" to ptr
  store float %"fadd.121", ptr %".3571"
  ; FADD.FTZ R8, -R8, -RZ
  %".3574" = load float, ptr %"R8"
  %".3575" = fneg float %".3574"
  %".3576" = call float @"llvm.fabs"(float %".3575")
  %".3577" = fcmp ogt float %".3576",              0x0
  %".3578" = fcmp olt float %".3576", 0x3810000000000000
  %".3579" = and i1 %".3577", %".3578"
  %".3580" = select  i1 %".3579", float              0x0, float %".3575"
  %".3581" = call float @"llvm.fabs"(float              0x0)
  %".3582" = fcmp ogt float %".3581",              0x0
  %".3583" = fcmp olt float %".3581", 0x3810000000000000
  %".3584" = and i1 %".3582", %".3583"
  %".3585" = select  i1 %".3584", float              0x0, float              0x0
  %"fadd.122" = fadd float %".3580", %".3585"
  %".3586" = call float @"llvm.fabs"(float %"fadd.122")
  %".3587" = fcmp ogt float %".3586",              0x0
  %".3588" = fcmp olt float %".3586", 0x3810000000000000
  %".3589" = and i1 %".3587", %".3588"
  %".3590" = select  i1 %".3589", float              0x0, float %"fadd.122"
  %".3591" = bitcast ptr %"R8" to ptr
  store float %".3590", ptr %".3591"
  ; FFMA.RM R11, R9.reuse, R8.reuse, R9.reuse
  %".3594" = load float, ptr %"R9"
  %".3595" = load float, ptr %"R8"
  %".3596" = load float, ptr %"R9"
  %"fmul.108" = fmul float %".3594", %".3595"
  %"fadd.123" = fadd float %"fmul.108", %".3596"
  %".3597" = bitcast ptr %"R11" to ptr
  store float %"fadd.123", ptr %".3597"
  ; FFMA.RP R12, R9, R8, R9
  %".3600" = load float, ptr %"R9"
  %".3601" = load float, ptr %"R8"
  %".3602" = load float, ptr %"R9"
  %"fmul.109" = fmul float %".3600", %".3601"
  %"fadd.124" = fadd float %"fmul.109", %".3602"
  %".3603" = bitcast ptr %"R12" to ptr
  store float %"fadd.124", ptr %".3603"
  ; LOP3.LUT R8, R11.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".3606" = load i32, ptr %"R11"
  %".3607" = xor i1 1, -1
  %".3608" = and i32 %".3606", 8388607
  store i32 %".3608", ptr %"R8"
  ; FSETP.NEU.FTZ.AND P0, PT, R11, R12, PT
  %".3611" = load float, ptr %"R11"
  %".3612" = load float, ptr %"R12"
  %".3613" = load i1, ptr %"PT"
  %".3614" = call float @"llvm.fabs"(float %".3611")
  %".3615" = fcmp ogt float %".3614",              0x0
  %".3616" = fcmp olt float %".3614", 0x3810000000000000
  %".3617" = and i1 %".3615", %".3616"
  %".3618" = select  i1 %".3617", float              0x0, float %".3611"
  %".3619" = call float @"llvm.fabs"(float %".3612")
  %".3620" = fcmp ogt float %".3619",              0x0
  %".3621" = fcmp olt float %".3619", 0x3810000000000000
  %".3622" = and i1 %".3620", %".3621"
  %".3623" = select  i1 %".3622", float              0x0, float %".3612"
  %"fcmp_ordered.2" = fcmp une float %".3618", %".3623"
  %".3624" = xor i1 %"fcmp_ordered.2", -1
  %".3625" = and i1 %"fcmp_ordered.2", %".3613"
  %".3626" = and i1 %".3624", %".3613"
  store i1 %".3625", ptr %"P0"
  ; LOP3.LUT R8, R8, 0x800000, RZ, 0xfc, !PT
  %".3629" = load i32, ptr %"R8"
  %".3630" = xor i1 1, -1
  %".3631" = or i32 %".3629", 8388608
  store i32 %".3631", ptr %"R8"
  ; SEL R9, RZ, 0xffffffff, !P0
  %".3634" = load i1, ptr %"P0"
  %".3635" = xor i1 %".3634", -1
  %".3636" = icmp eq i1 %".3635", 1
  %"sel.4" = select  i1 %".3636", i32 0, i32 4294967295
  store i32 %"sel.4", ptr %"R9"
  ; LOP3.LUT R13, R13, R8, RZ, 0xc0, !PT
  %".3639" = load i32, ptr %"R13"
  %".3640" = load i32, ptr %"R8"
  %".3641" = xor i1 1, -1
  %".3642" = and i32 %".3639", %".3640"
  store i32 %".3642", ptr %"R13"
  ; IMAD.MOV R9, RZ, RZ, -R9
  %".3645" = load i32, ptr %"R9"
  %".3646" = sub i32 0, %".3645"
  %"imad_mul.52" = mul i32 0, 0
  %"imad_add.61" = add i32 %"imad_mul.52", %".3646"
  store i32 %"imad_add.61", ptr %"R9"
  ; SHF.R.U32.HI R13, RZ, R18, R13
  %".3649" = load i32, ptr %"R18"
  %".3650" = icmp ult i32 %".3649", 32
  %"SHF_min.30" = select  i1 %".3650", i32 %".3649", i32 32
  %".3651" = load i32, ptr %"R13"
  %".3652" = load i32, ptr %"R18"
  %"zext.210" = zext i32 %".3651" to i64
  %"zext.211" = zext i32 0 to i64
  %"zext.212" = zext i32 %".3652" to i64
  %"shl.112" = shl i64 %"zext.210", 32
  %"or.90" = or i64 %"shl.112", %"zext.211"
  %"lshr.19" = lshr i64 %"or.90", %"zext.212"
  %"lshr.20" = lshr i64 %"lshr.19", 32
  %"trunc32.66" = trunc i64 %"lshr.20" to i32
  store i32 %"trunc32.66", ptr %"R13"
  ; LOP3.LUT P1, RZ, R9, R18, R8, 0xf8, !PT
  %".3655" = load i32, ptr %"R9"
  %".3656" = load i32, ptr %"R18"
  %".3657" = load i32, ptr %"R8"
  %".3658" = xor i1 1, -1
  %".3659" = or i32 %".3655", %".3656"
  %".3660" = or i32 %".3655", %".3657"
  %".3661" = and i32 %".3659", %".3660"
  store i32 %".3661", ptr %"RZ"
  %".3663" = icmp ne i32 %".3661", 0
  store i1 %".3663", ptr %"P1"
  ; LOP3.LUT P0, RZ, R13.reuse, 0x1, RZ, 0xc0, !PT
  %".3666" = load i32, ptr %"R13"
  %".3667" = xor i1 1, -1
  %".3668" = and i32 %".3666", 1
  store i32 %".3668", ptr %"RZ"
  %".3670" = icmp ne i32 %".3668", 0
  store i1 %".3670", ptr %"P0"
  ; LOP3.LUT P2, RZ, R13, 0x2, RZ, 0xc0, !PT
  %".3673" = load i32, ptr %"R13"
  %".3674" = xor i1 1, -1
  %".3675" = and i32 %".3673", 2
  store i32 %".3675", ptr %"RZ"
  %".3677" = icmp ne i32 %".3675", 0
  store i1 %".3677", ptr %"P2"
  ; IADD3 R9, R16, -0xfc, RZ
  %".3680" = load i32, ptr %"R16"
  %".3681" = add i32 %".3680", -252
  %".3682" = add i32 %".3681", 0
  store i32 %".3682", ptr %"R9"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".3685" = load i1, ptr %"P0"
  %".3686" = load i1, ptr %"P1"
  %".3687" = or i1 %".3685", %".3686"
  %".3688" = and i1 %".3687", 1
  ; LOP3.LUT P1, RZ, R15, 0x7fffff, RZ, 0xc0, !PT
  %".3690" = load i32, ptr %"R15"
  %".3691" = xor i1 1, -1
  %".3692" = and i32 %".3690", 8388607
  store i32 %".3692", ptr %"RZ"
  %".3694" = icmp ne i32 %".3692", 0
  store i1 %".3694", ptr %"P1"
  ; SEL R0, RZ, 0x1, !P0
  %".3697" = load i1, ptr %"P0"
  %".3698" = xor i1 %".3697", -1
  %".3699" = icmp eq i1 %".3698", 1
  %"sel.5" = select  i1 %".3699", i32 0, i32 1
  store i32 %"sel.5", ptr %"R0"
  ; IADD3 R0, -R0, RZ, RZ
  %".3702" = load i32, ptr %"R0"
  %".3703" = sub i32 0, %".3702"
  %".3704" = add i32 %".3703", 0
  %".3705" = add i32 %".3704", 0
  store i32 %".3705", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, RZ, PT
  %".3708" = load i32, ptr %"R0"
  %".3709" = load i1, ptr %"PT"
  %"cmp.22" = icmp sge i32 %".3708", 0
  %".3710" = xor i1 %"cmp.22", -1
  %".3711" = and i1 %"cmp.22", %".3709"
  %".3712" = and i1 %".3710", %".3709"
  store i1 %".3711", ptr %"P0"
  ; SHF.R.U32.HI R0, RZ, R9, R8
  %".3715" = load i32, ptr %"R9"
  %".3716" = icmp ult i32 %".3715", 32
  %"SHF_min.31" = select  i1 %".3716", i32 %".3715", i32 32
  %".3717" = load i32, ptr %"R8"
  %".3718" = load i32, ptr %"R9"
  %"zext.213" = zext i32 %".3717" to i64
  %"zext.214" = zext i32 0 to i64
  %"zext.215" = zext i32 %".3718" to i64
  %"shl.113" = shl i64 %"zext.213", 32
  %"or.91" = or i64 %"shl.113", %"zext.214"
  %"lshr.21" = lshr i64 %"or.91", %"zext.215"
  %"lshr.22" = lshr i64 %"lshr.21", 32
  %"trunc32.67" = trunc i64 %"lshr.22" to i32
  store i32 %"trunc32.67", ptr %"R0"
  ; @!P0 IADD3 R0, R0, 0x1, RZ
  %".3721" = load i1, ptr %"P0"
  %".3722" = icmp ne i1 %".3721", 1
  br i1 %".3722", label %".L_x_21_split_0x1a90...3_conditionalExpr_0x1c30", label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...3"
.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30:
  ; IADD3 R0, R0, 0x1, RZ
  %".3725" = load i32, ptr %"R0"
  %".3726" = add i32 %".3725", 1
  %".3727" = add i32 %".3726", 0
  store i32 %".3727", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3)
  br label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...3"
.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3:
  ; IADD3 R0, R0, 0x1, RZ
  %".3732" = load i32, ptr %"R0"
  %".3733" = add i32 %".3732", 1
  %".3734" = add i32 %".3733", 0
  store i32 %".3734", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40)
  br label %".L_x_21_split_0x1c40...3"
.L_x_21_split_0x1c40...3:
  ; @!P1 IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3739" = load i1, ptr %"P1"
  %".3740" = icmp ne i1 %".3739", 1
  br i1 %".3740", label %".L_x_21_split_0x1c40...3_conditionalExpr_0x1c40", label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...3"
.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3743" = load i32, ptr %"R0"
  %"imad_shl.9" = shl i32 %".3743", 2
  %"imad_add.62" = add i32 %"imad_shl.9", 0
  store i32 %"imad_add.62", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3)
  br label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...3"
.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3748" = load i32, ptr %"R0"
  %"imad_shl.10" = shl i32 %".3748", 2
  %"imad_add.63" = add i32 %"imad_shl.10", 0
  store i32 %"imad_add.63", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c50)
  br label %".L_x_21_split_0x1c50...3"
.L_x_21_split_0x1c50...3:
  ; LOP3.LUT R0, R0, 0x80000000, R15, 0xf8, !PT
  %".3753" = load i32, ptr %"R0"
  %".3754" = load i32, ptr %"R15"
  %".3755" = xor i1 1, -1
  %".3756" = or i32 %".3753", 2147483648
  %".3757" = or i32 %".3753", %".3754"
  %".3758" = and i32 %".3756", %".3757"
  store i32 %".3758", ptr %"R0"
  ; BRA `(.L_x_22)
  br label %".L_x_22...3"
.L_x_23...3:
  ; MUFU.RCP R0, R15
  %".3763" = load i32, ptr %"R15"
  %"sint_to_f32.8" = sitofp i32 %".3763" to float
  %".3764" = fdiv float 0x3ff0000000000000, %"sint_to_f32.8"
  %".3765" = fptosi float %".3764" to i32
  store i32 %".3765", ptr %"R0"
  br label %".L_x_22...3"
.L_x_22...3:
  ; BSYNC B1
  br label %".L_x_20...3"
.L_x_20...3:
  ; MOV R8, R14
  %".3771" = load i32, ptr %"R14"
  store i32 %".3771", ptr %"R8"
  ; IMAD.MOV.U32 R9, RZ, RZ, 0x0
  %"imad_mul.53" = mul i32 0, 0
  %"imad_add.64" = add i32 %"imad_mul.53", 0
  store i32 %"imad_add.64", ptr %"R9"
  ; RET.REL.NODEC R8, `(_Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.2"
.L_x_24...3:
  ; BRA `(.L_x_24)
  br label %".L_x_24...3"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.2:
  br label %".L_x_14_split_0x1890_postCALL_0x18c0"
.L_x_14_split_0x1890_postCALL_0x18c0:
  ; BRA `(.L_x_19)
  br label %".L_x_19"
.L_x_18:
  ; MUFU.RCP R0, R5
  %".3783" = load float, ptr %"R5"
  %".3784" = fdiv float 0x3ff0000000000000, %".3783"
  %".3785" = bitcast ptr %"R0" to ptr
  store float %".3784", ptr %".3785"
  ; FFMA R4, R5, R0, -1
  %".3788" = load float, ptr %"R5"
  %".3789" = load float, ptr %"R0"
  %"fmul.110" = fmul float %".3788", %".3789"
  %"fadd.125" = fadd float %"fmul.110", 0xbff0000000000000
  %".3790" = bitcast ptr %"R4" to ptr
  store float %"fadd.125", ptr %".3790"
  ; FADD.FTZ R9, -R4, -RZ
  %".3793" = load float, ptr %"R4"
  %".3794" = fneg float %".3793"
  %".3795" = call float @"llvm.fabs"(float %".3794")
  %".3796" = fcmp ogt float %".3795",              0x0
  %".3797" = fcmp olt float %".3795", 0x3810000000000000
  %".3798" = and i1 %".3796", %".3797"
  %".3799" = select  i1 %".3798", float              0x0, float %".3794"
  %".3800" = call float @"llvm.fabs"(float              0x0)
  %".3801" = fcmp ogt float %".3800",              0x0
  %".3802" = fcmp olt float %".3800", 0x3810000000000000
  %".3803" = and i1 %".3801", %".3802"
  %".3804" = select  i1 %".3803", float              0x0, float              0x0
  %"fadd.126" = fadd float %".3799", %".3804"
  %".3805" = call float @"llvm.fabs"(float %"fadd.126")
  %".3806" = fcmp ogt float %".3805",              0x0
  %".3807" = fcmp olt float %".3805", 0x3810000000000000
  %".3808" = and i1 %".3806", %".3807"
  %".3809" = select  i1 %".3808", float              0x0, float %"fadd.126"
  %".3810" = bitcast ptr %"R9" to ptr
  store float %".3809", ptr %".3810"
  ; FFMA R0, R0, R9, R0
  %".3813" = load float, ptr %"R0"
  %".3814" = load float, ptr %"R9"
  %".3815" = load float, ptr %"R0"
  %"fmul.111" = fmul float %".3813", %".3814"
  %"fadd.127" = fadd float %"fmul.111", %".3815"
  %".3816" = bitcast ptr %"R0" to ptr
  store float %"fadd.127", ptr %".3816"
  br label %".L_x_19"
.L_x_19:
  ; BSYNC B0
  br label %".L_x_17"
.L_x_17:
  ; FMUL R7, R0, R7
  %".3822" = load float, ptr %"R0"
  %".3823" = load float, ptr %"R7"
  %"fmul.112" = fmul float %".3822", %".3823"
  %".3824" = bitcast ptr %"R7" to ptr
  store float %"fmul.112", ptr %".3824"
  ; ULDC.64 UR4, c[0x0][0x198]
  %".3827" = ptrtoint ptr %"Arg_7" to i64
  %".3828" = and i64 %".3827", 18446744069414584320
  %".3829" = lshr i64 %".3828", 32
  %"trunc32.68" = trunc i64 %".3829" to i32
  %"trunc32.69" = trunc i64 %".3827" to i32
  store i32 %"trunc32.69", ptr %"UR4"
  store i32 %"trunc32.68", ptr %"UR5"
  ; STG.E.SYS [R2.64+UR4], R7
  %".3833" = load float, ptr %"R7"
  %".3834" = load i32, ptr %"R2"
  %"zext.216" = zext i32 %".3834" to i64
  %".3835" = load i32, ptr %"R3"
  %"zext.217" = zext i32 %".3835" to i64
  %"shl.114" = shl i64 %"zext.217", 32
  %"or.92" = or i64 %"shl.114", %"zext.216"
  %"val_UR4.5" = load i32, ptr %"UR4"
  %"sext_UR4.5" = sext i32 %"val_UR4.5" to i64
  %"base_plus_reg_offset.5" = add i64 %"or.92", %"sext_UR4.5"
  %"inttoptr_bytes.60" = inttoptr i64 %"base_plus_reg_offset.5" to ptr addrspace(1)
  %"ptr_cast_for_access.60" = bitcast ptr addrspace(1) %"inttoptr_bytes.60" to ptr addrspace(1)
  store float %".3833", ptr addrspace(1) %"ptr_cast_for_access.60"
  ; EXIT
  br label %"ExitFunction"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()

declare i32 @"llvm.nvvm.read.ptx.sreg.tid.y"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()

declare {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1", i32 %".2")

declare float @"llvm.fabs"(float %".1")

declare float @"llvm.exp2.f32"(float %".1")

